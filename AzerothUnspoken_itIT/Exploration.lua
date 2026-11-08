-- Testi di base in italiano: zone e pensieri. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryExploration.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	["zone.gen.01"] = {
		"{zone}. Ogni nome su una mappa è una storia che qualcuno ha pagato col sangue.",
		"{zone}. Che le strade di qui imparino il suono dei nostri passi.",
	},
	["zone.gen.02"] = {
		"{zone}... Chissà chi ha camminato qui prima di me, e cosa cercava.",
		"{zone}. Un nome sulla mappa, finché non ci metti piede. Poi diventa fango, sassi e odori nuovi.",
	},
	["zone.gen.03"] = {
		"{zone}. Mi avevano detto che era più vicina.",
		"{zone}. Bene. Qualcuno si ricorda da che parte siamo entrati?",
	},

	-- foreste
	["zone.forest.01"] = {
		"Gli alberi qui sono vecchi. Più vecchi dei re, più vecchi delle guerre.",
		{ "Questi tronchi non li abbraccerebbero in tre. Chissà quanti inverni hanno visto passare.", depth = "natural" },
		{ "Muschio sulle radici, resina sulla corteccia: il bosco tiene il conto degli anni a modo suo.", depth = "literary" },
		{ "Prima che si posasse la pietra di un solo trono, queste radici già bevevano dalla terra profonda.", depth = "elevated" },
	},
	["zone.forest.02"] = {
		"Cammina piano. Il bosco ascolta, e ricorda.",
		{ "Piano coi piedi. Un ramo spezzato qui lo sentono fino alla valle dopo.", depth = "natural" },
		{ "Niente asce e fuochi bassi. Qui siamo ospiti, e il padrone di casa ha radici.", depth = "literary" },
		{ "Parlate sommesso: sotto queste volte di foglie ogni parola è un dono, o un'offesa.", depth = "elevated" },
	},
	["zone.forest.dawn"] = {
		"Gli uccelli cominciano tutti insieme, come se qualcuno avesse dato il segnale.",
		{ "Stivali fradici di rugiada e naso pieno di muschio. Ci sono modi peggiori di cominciare.", depth = "natural" },
		{ "L'alba entra nel bosco in punta di piedi, ramo dopo ramo, e indora le ragnatele tese tra i tronchi.", depth = "elevated" },
	},
	["zone.forest.dusk"] = {
		"resta un momento immobile mentre la luce si ritira tra i tronchi e il bosco si riempie di grilli.",
		"rallenta: un cervo attraversa il sentiero, si volta un istante e sparisce nel sottobosco.",
		{ "osserva le radici di un vecchio albero, larghe abbastanza da dare riparo per la notte.", depth = "elevated" },
	},
	["zone.forest.night"] = {
		{ "Sentite? I grilli hanno smesso. Qualcosa li ha zittiti.", depth = "natural" },
		"Occhi gialli tra i cespugli. Il fuoco resta acceso, stanotte.",
		{ "Di notte il bosco cambia legge. Camminateci come chi bussa a una porta che non è sua.", depth = "elevated" },
	},

	["zone.dark.01"] = {
		"Qui persino la luce sembra avere paura di entrare.",
		"Nessun canto d'uccelli. Solo rami morti che si sfregano l'uno contro l'altro.",
	},
	["zone.dark.02"] = {
		"Tenete le torce alte e le voci basse. Qualcosa ci osserva.",
		"Restiamo sul sentiero. Chi si allontana, qui, non lo ritrova nessuno.",
	},
	["zone.dark.03"] = {
		"La nebbia sale dalle tombe come un respiro trattenuto troppo a lungo.",
		"Un lume acceso, laggiù. Qualcuno veglia, o qualcosa vuole che io lo creda.",
	},
	["zone.plains.01"] = {
		"Tanto cielo, e così poca ombra. Qui il vento racconta tutto.",
		"L'orizzonte da ogni parte. Nessun posto dove nascondersi, e per una volta nessun motivo per farlo.",
	},
	["zone.plains.02"] = {
		"L'erba si piega e si rialza. Così ci ha insegnato la Madre Terra.",
		"Pestate leggeri. Sotto l'erba la Madre Terra riposa, e il suo sonno nutre tutti noi.",
	},
	["zone.mountain.01"] = {
		"Le montagne non hanno fretta. Sono qui da prima che il mondo avesse un nome.",
		"Su per quei crinali, allora. Da lassù vedremo dove porta la strada, e quanto ci costerà.",
	},
	["zone.snow.01"] = {
		"La neve copre tutto: le orme, le tombe, i ricordi. Forse è misericordia.",
		"Il fiato si fa nuvola e sparisce. Qui anche i suoni sembrano avere freddo.",
	},
	["zone.snow.02"] = {
		"Freddo. Molto freddo. Ricordatemi perché siamo venuti qui.",
		"Non sento più le dita. Se qualcuno le trova, sono mie.",
	},
	["zone.snow.03"] = {
		"Ah, aria di casa! Il freddo tiene sveglio il sangue.",
		"Senti come scricchiola la neve sotto gli stivali? Musica, ecco cos'è.",
	},
	["zone.jungle.01"] = {
		"Ogni foglia nasconde un dente. Ogni ombra, una lancia.",
		"Fiori grandi come scudi, e un profumo dolce che fa girare la testa. Qui anche la bellezza tende trappole.",
	},
	["zone.jungle.02"] = {
		"Senti i tamburi? La giungla si ricorda di noi.",
		"Terra bagnata e frutta troppo matura. Questo è l'odore di casa.",
	},
	["zone.swamp.01"] = {
		"L'acqua ferma tiene i segreti meglio di qualunque tomba.",
		"Bolle che salgono dal fondo, lente. Come se la palude stesse pensando a qualcosa.",
	},
	["zone.swamp.02"] = {
		"Fango fino alle ginocchia. E io che avevo appena lucidato gli stivali.",
		"Zanzare grosse come passeri. E più avide di un mercenario.",
	},
	["zone.desert.01"] = {
		"Sotto questa sabbia dormono imperi. Speriamo continuino a dormire.",
		"Sete e sabbia fino all'orizzonte. Bene: le storie migliori nascono dove nessuno vuole andare.",
	},
	["zone.fire.01"] = {
		"L'aria sa di cenere e di ferro. Qui il mondo è ancora ferito.",
		"Rocce nere e lucide come vetro rotto. Qui non cresce nulla, e nulla ha voglia di crescere.",
	},
	["zone.fire.02"] = {
		"Il fuoco sotto la montagna non si è mai spento. Aspetta soltanto.",
		"Acqua a portata di mano e occhi sulle crepe. Questa terra morde.",
	},
	["zone.plague.01"] = {
		"Qui c'erano campi di grano, e bambini che correvano. Ora c'è solo il vento.",
		"Un'altalena di corda appesa a un ramo secco. Nessuno tornerà a spingerla.",
	},
	["zone.plague.02"] = {
		"Non bevete l'acqua. Non toccate il grano. Non fidatevi dei morti.",
		"Coprite naso e bocca. E se qualcuno vi chiama per nome da un fienile, non rispondete.",
	},
	["zone.ruin.01"] = {
		"Pietre cadute, colonne spezzate. Anche i grandi dimenticano di essere stati grandi.",
		{ "Qualcuno ci viveva, qui. Tra le pietre si vede ancora dov'era il focolare.", depth = "natural" },
		{ "Un gradino consumato al centro da mille passi. Poi, più nessuno.", depth = "literary" },
		{ "Dove un tempo si apparecchiavano banchetti, ora l'edera tesse la sua lenta tappezzeria.", depth = "elevated" },
	},
	["zone.coast.01"] = {
		"Il mare porta sempre qualcosa a riva. Quasi mai ciò che speri.",
		"Odore di alghe e di legno fradicio. L'onda arriva, si ritira, e ogni volta si porta via un po' di sabbia.",
	},
	["zone.sacred.01"] = {
		"Abbassate le armi. Questo luogo è più antico della guerra.",
		"Qui si parla piano e si resta sui sentieri. Non serve sapere perché.",
	},
	["zone.deep.01"] = {
		"Le profondità hanno fame. Restate vicini.",
		"Contate le torce. Se una si spegne, ditelo subito.",
	},
	["zone.city.01"] = {
		"Città: mura alte, birra cara, e qualcuno che ti chiede sempre un favore.",
		"Tre passi oltre le porte: due venditori e un borseggiatore. Tenete stretta la borsa.",
	},
	["zone.city.02"] = {
		"Pietra su pietra, generazione su generazione. Ecco cosa difendiamo.",
		"Ascoltate: martelli, campane, bambini che gridano. È questo il rumore che vale la pena difendere.",
	},

	-- zone con nome: nei pacchetti regionali (AzerothUnspoken_Kalimdor_itIT, AzerothUnspoken_EasternKingdoms_itIT, #101)

	-- narratore esterno
	["zone.e.01"] = {
		"si ferma ai margini di {zone}, e guarda a lungo la strada davanti a sé.",
		"si sistema la cinghia della sacca e muove i primi passi dentro {zone}.",
	},
	["zone.e.02"] = {
		"respira l'aria di {zone}, come per impararne il sapore.",
		"solleva lo sguardo verso i confini di {zone}, e per un momento resta in ascolto.",
	},
	["zone.e.03"] = {
		"stringe l'arma un po' più forte, senza un motivo che saprebbe spiegare.",
		"si guarda alle spalle una volta, poi un'altra, prima di proseguire.",
	},
	["zone.e.forest"] = {
		"si ferma sotto i rami bassi; da qualche parte, un picchio batte sulla corteccia.",
		"passa una mano sul tronco ruvido di un albero, e le dita restano appiccicose di resina.",
		"avanza tra le felci, che si richiudono alle sue spalle senza un rumore.",
	},
	["zone.e.dark"] = {
		"cammina più piano, e il fango del sentiero risucchia gli stivali a ogni passo.",
		"sussulta appena quando un corvo si alza gracchiando da un ramo spoglio.",
		"tira su il bavero contro l'aria umida, che sa di foglie marce.",
	},
	["zone.e.plains"] = {
		"si ferma su una piccola altura, e l'erba ondeggia tutt'intorno fino all'orlo del cielo.",
		"si fa schermo agli occhi con una mano e scruta la pianura, dove una mandria lontana solleva polvere.",
	},
	["zone.e.mountain"] = {
		"alza la testa verso i crinali, dove un falco gira in tondo senza fretta.",
		"riprende fiato a metà salita, mentre i sassi smossi rotolano giù per il pendio.",
	},
	["zone.e.snow"] = {
		"si stringe nel mantello, e ogni passo affonda nella neve con uno scricchiolio secco.",
		"si soffia sulle mani; il fiato sale in nuvolette bianche che si sfilacciano subito.",
	},
	["zone.e.jungle"] = {
		"si asciuga il sudore dalla fronte e scosta una liana che gocciola.",
		"si immobilizza un istante: tra il fogliame, qualcosa di grosso ha smesso di muoversi.",
		"avanza nel ronzio degli insetti, tra le grida lontane di uccelli invisibili.",
	},
	["zone.e.swamp"] = {
		"affonda fino agli stinchi nell'acqua scura, e le rane tacciono tutte insieme.",
		"scaccia dal viso una nuvola di moscerini, con scarsa fortuna.",
	},
	["zone.e.desert"] = {
		"si copre naso e bocca con un lembo di stoffa e socchiude gli occhi contro il riverbero.",
		"lascia sulla sabbia un'impronta che il primo soffio d'aria comincia già a cancellare.",
		"scuote la borraccia accanto all'orecchio, per sentire quanta acqua resta.",
	},
	["zone.e.coast"] = {
		"scende fin dove la sabbia si fa scura e bagnata, e un'onda viene a lambire gli stivali.",
		"si volta verso lo scricchiolio di un relitto mezzo sepolto, con le costole sbiancate dal sale.",
	},
	["zone.e.ruin"] = {
		"sfiora con le dita un'iscrizione consumata, di cui restano poche lettere.",
		"scavalca una colonna caduta, e una lucertola schizza via tra le crepe.",
	},
	["zone.e.sacred"] = {
		"abbassa la voce e il capo, senza che nessuno l'abbia chiesto.",
		"rallenta sull'erba morbida, e il tintinnio dell'equipaggiamento sembra di colpo fuori posto.",
	},
	["zone.e.city"] = {
		"si fa largo tra un carretto di cavoli e due bambini che si rincorrono.",
		"schiva per un soffio un secchio d'acqua sporca rovesciato da una finestra.",
		"si ferma un attimo sotto l'insegna cigolante di una locanda: il profumo di stufato arriva fin sulla strada.",
	},
	["zone.e.dawn"] = {
		"si avvia nella luce grigia dell'alba, con l'orlo del mantello bagnato di rugiada.",
		"sgranchisce le spalle intorpidite e guarda il cielo schiarirsi sopra {zone}.",
	},
	["zone.e.night"] = {
		"procede a passo cauto nel buio; ogni rametto spezzato risuona come un richiamo.",
		"si fa immobile: un fruscio, lontano, poi di nuovo silenzio.",
	},

	-- pensieri
	["muse.01"] = {
		"A volte mi chiedo se le canzoni ricorderanno i nomi giusti.",
		"Chissà se qualcuno, tra cent'anni, saprà che sono {g:passato|passata} di qui.",
	},
	["muse.02"] = {
		"Nessuno sceglie la stagione in cui nasce. Il raccolto, quello sì.",
		"Il mondo non chiede il permesso prima di cambiare. Chiede solo che ci siamo.",
	},
	["muse.03"] = {
		"Ogni grande storia comincia con qualcuno che decide di non restare a casa.",
		"Un giorno qualcuno racconterà questo viaggio. Facciamo in modo che valga la pena ascoltarlo.",
	},
	["muse.04"] = {
		"Dicono che il viaggio conti più della meta. Non hanno mai visto i miei stivali.",
		"Ho camminato così tanto che i miei piedi vogliono rinegoziare il contratto.",
	},
	["muse.05"] = {
		"Ho conosciuto eroi più coraggiosi di me. Sono quasi tutti sotto terra.",
		"Ogni tanto conto i compagni che ho perso. Smetto sempre prima di finire.",
	},
	["muse.06"] = {
		"Il mondo è più vecchio di quanto crediamo, e ricorda più di quanto vorremmo.",
		"Ogni sasso che calpesto è stato montagna, sabbia, fondo di mare. Io sono solo di passaggio.",
	},
	["muse.07"] = {
		"Anche la notte più lunga finisce. Non perché la luce sia forte, ma perché è ostinata.",
		"Una candela non vince la notte. Ma basta a vedere dove mettere il piede.",
	},
	["muse.08"] = {
		"C'è qualcosa sotto il mondo che sogna. Spero che non si svegli mai.",
		"Certe notti la terra trema appena, e nessuno ne parla. Come se sapessimo tutti che è meglio non chiedere.",
	},
	["muse.09"] = {
		"Il destino mi ha scelto. Vorrei sapere chi gli ha dato il permesso.",
		"Mi hanno detto che sono {g:destinato|destinata} a grandi cose. Per ora, soprattutto a grandi vesciche.",
	},
	["muse.10"] = {
		"Le guerre finiscono, i re cadono, ma le strade restano. Qualcuno dovrà percorrerle.",
		"Ogni ponte che attraversiamo l'ha costruito qualcuno che non conosceremo mai. Il minimo è arrivare dall'altra parte.",
	},
	["muse.night.01"] = {
		"Le stelle stanotte sono fredde e vicine. Come vecchi amici che non parlano più.",
		"Di notte il mondo si restringe al cerchio dei miei passi. È quasi un sollievo.",
	},
	["muse.night.02"] = {
		"Di notte i ricordi camminano più svelti di noi.",
		"Di notte ogni scricchiolio ha la voce di qualcuno che conoscevo.",
	},
	["muse.dawn.01"] = {
		"Un'altra alba. Non me ne è mai stata promessa nessuna.",
		"Il freddo dell'alba nelle ossa, e il primo uccello che prova la voce. Si ricomincia.",
	},
	["muse.dusk.01"] = {
		"Il sole si stende sulle colline come un vecchio cane stanco.",
		"A quest'ora i colori se ne vanno uno alla volta. Il rosso resta sempre per ultimo, ostinato.",
	},
	["muse.rest.01"] = {
		"Un tetto, un fuoco, e nessuno che vuole uccidermi. Quasi sospetto.",
		"Stivali tolti, piedi al caldo. Se adesso arriva un drago, dovrà fare la fila.",
		"Qualcosa di caldo nella scodella e una sedia che non traballa. Lusso.",
	},
	["muse.rest.02"] = {
		"Le locande sono piene di storie. La metà sono vere, e quelle sono le più tristi.",
		"Per una notte nessuno mi chiede di essere {g:coraggioso|coraggiosa}. Strano quanto pesi, quando lo posi.",
	},
	["muse.orc.01"] = {
		"I nostri padri hanno bevuto il sangue sbagliato. Noi dobbiamo meritare il nostro.",
		"Le nostre catene sono state spezzate. Tocca a noi non forgiarne di nuove.",
	},
	["muse.scourge.01"] = {
		"Non sento più il freddo. Mi manca, a volte. Era una prova di essere vivi.",
		"Ho provato a ricordare il sapore del pane. Ricordo solo che mi piaceva.",
	},
	["muse.tauren.01"] = {
		"Ogni zoccolo lascia un'impronta, e la pioggia la cancella. La terra resta.",
		"Prendi dalla terra quanto ti serve, e restituisci quanto puoi. Il resto viene da sé.",
	},
	["muse.troll.01"] = {
		"I Loa sono capricciosi. Come il mare. Come il cuore. Come me.",
		"Una piuma, una perlina, una goccia di rum per gli spiriti. Così si viaggia tranquilli.",
	},
	["muse.human.01"] = {
		"Ricostruiamo sempre. Muri, case, regni. Prima o poi impareremo a non distruggerli.",
		"Ogni villaggio ha il suo campanile e la sua vecchia che sa tutto di tutti. Mi mancano entrambi.",
	},
	["muse.dwarf.01"] = {
		"Ogni pietra di Forgiardente ha un nome. Mio nonno li sapeva tutti.",
		"La pietra non mente mai. Se una vena si spezza, un motivo c'era.",
	},
	["muse.nelf.01"] = {
		"Ricordo quando questa terra era giovane. Era più bella, ed era più crudele.",
		"I secoli passano come stagioni, e a volte mi sorprendo a salutare alberi che non ci sono più.",
	},
	["muse.gnome.01"] = {
		"Ho una teoria su tutto. Purtroppo, nessuna sulla vita.",
		"Se potessi smontare la nostalgia, scommetto che dentro ci troverei un ingranaggio storto.",
	},
	["muse.warlock.01"] = {
		"Tutto ha un prezzo. Il trucco è far pagare qualcun altro.",
		"Il potere non chiede mai quanto si è disposti a dare. Lo scopre da solo.",
	},
	["muse.priest.01"] = {
		"La fede non è sapere che andrà bene. È camminare anche quando non lo sai.",
		"Una preghiera breve, detta bene, vale più di cento gridate al cielo.",
	},
	["muse.hunter.01"] = {
		"La foresta ti insegna una cosa sola: chi ha fretta, muore.",
		"Le tracce non mentono. Chi le legge male, sì.",
	},
	["muse.mage.01"] = {
		"La magia è come il vino: un po' illumina, troppa ti brucia la casa.",
		"Anni a studiare l'arcano, e ancora non so ripiegare una mappa come si deve.",
	},

	-- pensieri: narratore esterno
	["muse.e.01"] = {
		"guarda lontano, e per un momento sembra molto più {g:vecchio|vecchia} della sua età.",
		"si passa una mano sul viso, e per un attimo la stanchezza si vede tutta.",
	},
	["muse.e.02"] = {
		"canticchia a bassa voce una melodia antica, di cui ha dimenticato le parole.",
		"fischietta qualche nota stonata, si interrompe e ricomincia daccapo.",
	},
	["muse.e.03"] = {
		"controlla le cinghie dell'equipaggiamento una per una, con gesti abituali.",
		"raccoglie un sasso piatto dal sentiero, lo rigira tra le dita e poi se lo mette in tasca.",
	},
	["muse.e.night"] = {
		"alza gli occhi al cielo notturno e resta così, a lungo, con la testa all'indietro.",
		"si stringe nel mantello e ascolta i rumori della notte, uno per uno.",
	},
	["muse.e.rest"] = {
		"si siede sul bordo di un gradino e si scuote un sassolino dallo stivale.",
		"sbadiglia a lungo, coprendosi la bocca solo a metà.",
	},
	["muse.e.inn"] = {
		"allunga le gambe sotto il tavolo, mentre il chiacchiericcio della sala {g:gli|le} scivola addosso.",
		"si scalda le mani attorno a un boccale tiepido, seguendo con gli occhi il viavai della sala.",
		"appoggia la schiena al muro, e per la prima volta da ore le spalle si sciolgono.",
	},
	["muse.e.hearth"] = {
		"fissa le fiamme del camino mentre un ciocco crolla in uno sbuffo di scintille.",
		"tende le mani verso il fuoco, e il calore risale piano lungo le dita intirizzite.",
	},
	["faction.alliance.muse.01"] = {
		"Una sola bandiera, e sotto ci sta chi conta la vita in decenni e chi in secoli. Eppure sulla strada da prendere ci troviamo d'accordo.",
		"L'Alleanza è una lunga tavolata di ospiti strani sotto un'unica bandiera: lingue diverse, canti diversi, idee diverse su cosa sia un pasto come si deve. Chissà come, nessuno si alza da tavola.",
		"Estranei per nascita, fratelli per promessa, tutti sotto la stessa bandiera. Ecco l'Alleanza nei giorni buoni, e quasi tutti i giorni lo sono abbastanza.",
	},
	["faction.alliance.muse.02"] = {
		"L'Alleanza si è già spezzata, ed è stata ricucita. Dove l'hanno ricucita, tiene più forte.",
		"Ci hanno diviso e ci siamo rimessi insieme, più di una volta. Guarda bene: le cuciture reggono.",
		"Spezzata e poi riparata. Ogni volta l'Alleanza ne esce un po' più dura proprio nei punti di giuntura.",
	},
	["faction.alliance.muse.03"] = {
		"Là fuori c'è un esploratore dell'Orda che strizza gli occhi verso l'orizzonte e si chiede di me. Perdiamo il sonno in due, per degli sconosciuti.",
		"Ogni volta che controllo un crinale in cerca di stendardi rossi, immagino qualcuno dall'altra parte che cerca quelli blu. Un mondo intero di gente che si guarda alle spalle.",
		"L'Orda si preoccupa di noi, noi ci preoccupiamo dell'Orda. Fra tutti e due, la preoccupazione è in ottime mani.",
	},
	["faction.alliance.muse.04"] = {
		"Su ogni strada lontana c'è un piccolo avamposto con la nostra bandiera, tenuto da gente che non vede casa da anni. Ci penso quando mi fanno male i piedi.",
		"La nostra bandiera sventola in posti che a casa nessuno saprebbe trovare su una mappa. E sotto ognuna c'è qualcuno, ogni giorno.",
		"Ogni torre sperduta con la nostra bandiera vuol dire una manciata dei nostri che ha scelto di restare dove era dura. Gli devo più di un cenno.",
	},
	["faction.alliance.muse.05"] = {
		"canticchia qualche battuta di una canzone di marcia raccolta chissà dove sulle strade dell'Alleanza, stonando senza il minimo imbarazzo.",
		"fischietta a mezza voce una vecchia canzone di marcia dell'Alleanza, perde il motivo a metà e va avanti lo stesso.",
	},
	["faction.alliance.muse.06"] = {
		"Il nord è ancora perduto. Su ogni mappa dell'Alleanza c'è una macchia grigia dove una volta c'era un regno, e nessuno ha avuto cuore di ridisegnarla.",
		"Lordaeron era il cuore della vecchia Alleanza. Ora le mappe ne conservano il nome per abitudine; il resto appartiene ai morti.",
	},
	["faction.horde.muse.01"] = {
		"La vecchia Orda era un pugno chiuso da qualcun altro. Questa, nel bene e nel male, la mano se la chiude da sé.",
		"Nei regni umani si ricordano della vecchia Orda, e fanno bene. Questa cerca di essere un'altra cosa, ed è più difficile di qualunque guerra.",
		"Un tempo l'Orda era un'arma nella mano di qualcun altro. Adesso deve imparare a essere un popolo, e questo non lo insegna nessuno.",
	},
	["faction.horde.muse.02"] = {
		"L'Alleanza ha armature più lucide. Noi abbiamo tamburi più forti. So bene quale preferisco sentir arrivare.",
		"Che si lucidino pure le armature. Un tamburo dell'Orda arriva più lontano di qualunque riflesso.",
		"Le loro armature brillano, i nostri tamburi rimbombano. Solo una delle due cose funziona anche al buio.",
	},
	["faction.horde.muse.03"] = {
		"L'Orda non ti chiede dove sei {g:nato|nata}. Ti chiede se resterai in piedi quando conta.",
		"Nell'Orda a nessuno importa da dove vieni: importa se tieni quando la linea si piega.",
		"Per l'Orda. Non perché me l'hanno insegnato: perché ho visto chi mi sta accanto quando lo dico.",
	},
	["faction.horde.muse.04"] = {
		"Dovunque l'Orda abbia un accampamento, c'è un fuoco con posto per uno in più. Non sempre l'accoglienza è calda; il fuoco sì.",
		"Gli accampamenti dell'Orda non si somigliano tutti, ma in ognuno c'è un fuoco e qualcuno che ci gira il mestolo sopra. Ringrazio per l'uno e per l'altro.",
		"Non tutti i fuochi dell'Orda mi accolgono con calore. Tutti però mi lasciano sedere accanto.",
	},
	["faction.horde.muse.05"] = {
		"Non tutti nell'Orda vogliono bene a tutti gli altri dell'Orda. La pace la teniamo lo stesso: è questo il lavoro, e non finisce mai.",
		"Orchi e Reietti, troll e tauren: certe amicizie sono solo una tregua con le buone maniere. Anche le tregue contano.",
	},
	["faction.horde.muse.06"] = {
		"batte con due dita sulla coscia un ritmo di marcia dell'Orda, senza nemmeno farci caso.",
		"prende il passo di un tamburo di guerra dell'Orda che nessun altro sente.",
	},
	["faction.horde.muse.07"] = {
		"Il nostro Capoguerra è cresciuto in catene, in una fortezza umana. Forse per questo ha passato tanto tempo a spezzare quelle degli altri.",
		"Un Capoguerra che è stato schiavo. Qualunque altra cosa sia l'Orda, la guida qualcuno che sa quanto pesa una catena.",
	},
	["mood.city.muse.01"] = {
		"In città nessuno ti guarda due volte. Dopo le terre selvagge, non so se sia un riposo o un'offesa.",
		"Centinaia di persone, e a nessuna serve niente da me. Strano quanto riposi, e quanta solitudine si porti dietro.",
	},
	["mood.city.muse.02"] = {
		"Qui c'è gente che non ha mai lasciato la città. Tutto quello che sa delle terre selvagge l'ha sentito da quelli come me, e noi esageriamo.",
		"Metà di questa folla non ha mai dormito fuori da un letto. Un po' la invidio, e un po' di più la compatisco.",
	},
	["mood.city.muse.03"] = {
		"si scansa per lasciar passare un gruppetto di cittadini di fretta, e si ferma un attimo tra le voci di una città che bada ai fatti suoi.",
		"si ferma in mezzo alla folla e lascia scorrere cento voci, nessuna delle quali parla con {g:lui|lei}.",
	},
	["mood.city.subzone_enter.01"] = {
		"rallenta entrando in {subzone}, dove cambia la folla e cambia anche l'odore dell'aria.",
		"si inoltra in {subzone} e studia il posto come fa la gente di città: chi vende, chi osserva, chi ha fretta.",
		"svolta in {subzone}, un altro angolo della città con i suoi rumori e i suoi piccoli affari.",
	},
	["mood.dark.landmark.01"] = {
		"{landmark}. In una terra come questa, ogni nome sulla mappa è una piccola lanterna che qualcuno si è rifiutato di spegnere.",
		"{landmark}. Qualcuno ha tenuto duro in questo posto e gli ha dato un nome, cupezza o no. Vale pur qualcosa.",
	},
	["mood.dark.muse.01"] = {
		"Qui il silenzio non è vuoto. Ascolta.",
		"C'è qualcosa in questo posto che mi fa abbassare la voce, anche se nessuno me l'ha chiesto.",
		"Perfino l'aria sembra aspettare, qui, come se qualcosa non avesse ancora deciso cosa fare di me.",
	},
	["mood.dark.muse.02"] = {
		"Questo posto non mi piace, e ho idea che anche lui abbia le sue opinioni su di me.",
		"Fischiettare aiuta. Non molto, ma in un posto così mi accontento del poco.",
	},
	["mood.dark.muse.03"] = {
		"si guarda alle spalle per la terza volta, e ancora una volta non trova niente.",
		"si ferma, ascolta un silenzio troppo guardingo, e solo allora riprende a camminare.",
	},
	["mood.desert.muse.01"] = {
		"Qui ogni sorso d'acqua conta. Ho cominciato a sentirla sciabordare nell'otre come una canzone che non riesco a smettere di canticchiare.",
		"Da queste parti l'acqua smette di essere una cosa e diventa un pensiero. Ci penso spesso.",
		"Razziono l'acqua e conto i sorsi. La terra arida insegna l'aritmetica più in fretta di qualunque maestro.",
	},
	["mood.desert.muse.02"] = {
		"scuote la polvere da uno stivale, poi dall'altro, sapendo benissimo che se la ritroverà addosso entro una dozzina di passi.",
		"sputa un boccone di polvere e riprende a camminare, come se così la questione fosse chiusa.",
		"tira la sciarpa più su, sulla bocca, e lascia che l'aria secca e polverosa graffi la poca pelle rimasta scoperta.",
	},
	["mood.desert.subzone_enter.01"] = {
		"{subzone}. Polvere con un nome sopra.",
		"Ecco {subzone}: la solita polvere, con un altro nome.",
	},
	["mood.fire.muse.01"] = {
		"Caldo da ogni parte, come se la terra stessa mi respirasse addosso.",
		"Qui non c'è un riparo degno di questo nome. Il caldo respira da sotto quanto preme dall'alto.",
		"Ogni respiro sa di bruciato. La gola ha smesso di lamentarsi: ha capito che nessuno l'ascolta.",
	},
	["mood.fire.muse.02"] = {
		"Qui non cresce niente, non c'è niente di fresco e tutto vuole battersi. Incantevole.",
		"Se avessi voluto farmi arrostire, mi sarei {g:messo|messa} accanto a un cuoco.",
	},
	["mood.fire.muse.03"] = {
		"alza una mano davanti al viso contro il calore, come se bastasse a trattenerlo.",
		"strizza gli occhi nel tremolio dell'aria rovente e si tiene dal lato più fresco di ogni roccia.",
	},
	["mood.fire.subzone_enter.01"] = {
		"{subzone}. Ancora più caldo, ammesso che si possa, e un po' più rosso.",
		"Un altro nome sulla terra bruciata: {subzone}. Scotta come il precedente.",
	},
	["mood.jungle.muse.01"] = {
		"Qui tutto cresce, mangia o si nasconde, e quasi sempre fa due cose insieme.",
		"Tanto verde che gli occhi smettono di vederlo. Poi una foglia si muove nel verso sbagliato, e si svegliano di colpo.",
		"La giungla non si ferma mai. C'è sempre qualcosa che nasce, e qualcosa che viene inghiottito.",
	},
	["mood.jungle.muse.02"] = {
		"si dà una manata sul collo e si guarda il palmo. Niente. Eppure qualcosa c'era.",
		"scosta una cortina di liane e aspetta un respiro prima di passare, in ascolto del rumore umido e indaffarato della giungla.",
		"si asciuga l'umido dal viso per la decima volta, senza la minima speranza che sia l'ultima.",
	},
	["mood.jungle.subzone_enter.01"] = {
		"{subzone}. Sotto tutto questo verde dovrebbe esserci un sentiero.",
		"{subzone}, a quanto pare. Mi fido della giungla sulla parola.",
	},
	["mood.plague.muse.01"] = {
		"Questa terra apparteneva a un regno. Adesso appartiene alla peste, e la peste non tiene niente in ordine.",
		"In questo paese la gente viveva, seminava i campi, litigava sui confini. Il morbo si è preso tutto e ha lasciato solo i contorni.",
		"Un regno intero, e la peste l'ha attraversato come l'umidità attraversa la stoffa.",
	},
	["mood.plague.muse.02"] = {
		"aggira qualcosa a terra senza guardarlo troppo da vicino.",
		"gira largo attorno a una macchia scura sul terreno, e passa oltre senza voltarsi.",
	},
	["mood.plague.muse.03"] = {
		"Non toccate niente. Non mangiate niente. Non fidatevi di niente che stia fermo a terra.",
		"Regole del posto: si beve solo quello che ci si è portati, e si dà per scontato che i morti stiano solo riposando.",
	},
	["mood.plague.subzone_enter.01"] = {
		"{subzone}. Anche qui la peste ha lasciato le sue impronte.",
		"{subzone}. Il morbo è passato anche di qui: lo si sente nell'odore di ogni cosa.",
	},
	["mood.plains.landmark.01"] = {
		"{landmark}. Qualche tetto in mezzo a tutta questa terra aperta. Da queste parti, vale quanto una fortezza.",
		"{landmark}. Dopo tanta erba e tanto vento, un tetto qualunque sembra una gentilezza.",
	},
	["mood.plains.muse.01"] = {
		"Terra aperta. Vedo arrivare i guai da lontano, e i guai vedono me altrettanto bene.",
		"Qui non c'è dove nascondersi, e vale per tutti. Qualunque cosa mi osservi, la vedrò per prima, o per seconda.",
		"L'erba non nasconde niente di più alto di una lepre. È un conforto, finché non ricordo quanto sono {g:alto|alta} io.",
	},
	["mood.plains.muse.02"] = {
		"Erba fino alle ginocchia e strada fino all'orizzonte. Bel paese per camminare.",
		"Terra larga, cielo largo, e una strada che non sembra aver fretta di finire. Mi piace.",
		"Guardate quanto spazio. Si può camminare per giorni senza sbattere contro un muro.",
	},
	["mood.plains.muse.03"] = {
		"lascia che il vento {g:gli|le} spinga la schiena per un po', e cammina con lui invece che contro.",
		"si ferma a guardare il vento che corre sull'erba in lunghe onde d'argento, poi riprende il cammino.",
		"volta il viso verso il vento che spazza la terra aperta, e lascia che tiri capelli e mantello.",
	},
	["mood.plains.muse.04"] = {
		"Qui l'orizzonte è così lontano che un giorno intero di cammino sembra non spostarlo affatto.",
		"Tanto cielo sopra tanta terra. Quaggiù sento la mia misura, e non è granché.",
	},
	["mood.plains.subzone_enter.01"] = {
		"{subzone}. Altra erba, altro cielo, e un nome nuovo da appenderci sopra.",
		"Entro in {subzone}. Qui i confini sono solo nomi: l'erba non se ne accorge.",
		"{subzone}. Il vento è arrivato prima di me, come dappertutto in questa terra aperta.",
	},
	["race.dwarf.muse.001"] = {
		"Sotto Forgiardente, in questo preciso momento, la Grande Forgia sta ruggendo. Quasi ne sento il calore sulla nuca.",
		"Ovunque mi trovi, una parte di me sente ancora respirare la Grande Forgia, giù nel cuore della montagna.",
		"La Grande Forgia non si spegne mai. È un conforto saperlo, dovunque la strada mi abbia {g:portato|portata}.",
	},
	["race.dwarf.muse.002"] = {
		"Troppo cielo, lassù. Un bel soffitto di roccia non ha mai fatto male a nessuno.",
		"Il cielo aperto va bene per gli uccelli e per gli elfi. Io preferisco un tetto su cui poter bussare con le nocche.",
		"A Forgiardente nessuno ha mai dovuto alzare gli occhi per chiedersi che tempo avesse in mente il cielo.",
	},
	["race.dwarf.muse.003"] = {
		"La Lega degli Esploratori giura che il nostro principio è scolpito in qualche roccia dimenticata. Darei molto per leggerne la prima riga.",
		"Brann e i suoi scavatori cercano la storia di come sono nati i nani. Strano, essere un enigma per sé stessi.",
		"Chi ha plasmato i primi di noi ci ha messo pazienza. Si capisce dalla testardaggine che ci ha lasciato dentro.",
	},
	["race.dwarf.muse.004"] = {
		"Gli arieti. Bestie testarde, puzzolenti, scorbutiche. Mi mancano più di quanto ammetterei davanti a uno di loro.",
		"Una bestia che si arrampica su una parete e prova a morderti durante la salita: ecco una vera cavalcatura. Parlo degli arieti di Dun Morogh, si capisce.",
		"Si dica quel che si vuole degli arieti: nessuno di loro mi ha mai chiesto dove stessimo andando.",
	},
	["race.dwarf.muse.005"] = {
		"Barbabronzea, Granmartello, Ferroscuro: un solo popolo sotto una sola montagna, un tempo. Ogni nano si porta ancora dentro una scheggia di quella lite.",
		"Eravamo un'unica stirpe, prima che i martelli si voltassero gli uni contro gli altri. Certe crepe nessuna forgia le salda.",
		"Per gli eruditi la Guerra dei Tre Martelli è un capitolo. Per noi è una tavola di famiglia con sedie su cui non siede nessuno.",
	},
	["race.dwarf.muse.006"] = {
		"osserva le cuciture dei propri stivali con il cipiglio dell'artigiano, come a ogni nano insegnano a giudicare un lavoro.",
		"soppesa lo zaino con una mano, accigliandosi come un fabbro che valuta un lingotto.",
		"canticchia qualcosa di basso e stonato, il genere di motivo che si sente bene lungo un pozzo di miniera.",
	},
	["race.dwarf.muse.007"] = {
		"Re Magni siede sull'Alto Seggio come se il trono gli fosse stato scolpito attorno. Si dica quel che si vuole, con lui lì dentro la montagna sembra più salda.",
		"Magni Barbabronzea ride più forte di qualunque re di cui abbia sentito parlare, e beve come un minatore. Un re così lo si rispetta senza fingere.",
		"Un re che conosce il peso di un martello. Qualunque cosa dicano di Magni, nessuno gli dà del mollaccione.",
	},
	["race.dwarf.muse.008"] = {
		"Da quando Gnomeregan è caduta, Forgiardente fischia e sferraglia di marchingegni gnomeschi. Brontolo, ma ormai senza di loro mi sembrerebbe vuota.",
		"Tinker Town sferraglia senza sosta, di questi tempi. I nostri piccoli vicini hanno perso la loro casa: il minimo era prestargli un angolo della nostra.",
		"Gli gnomi hanno preso un angolo di Forgiardente e l'hanno riempito di fischi e scintille. Inquilini strani. Buoni, perlopiù.",
	},
	["race.dwarf.muse.009"] = {
		"Il rame sa di monete vecchie, lo stagno di poco o niente, il ferro di lavoro onesto. Qualunque nano te lo direbbe a occhi bendati.",
		"Mettimi in mano un pezzo di minerale al buio e ti dico cos'è. Non è un dono: è un'infanzia.",
		"I bambini nani imparano i nomi delle vene prima di quelli delle stelle. Mi pare l'ordine giusto.",
	},
	["race.dwarf.muse.010"] = {
		"Testardi? Io preferisco «fatti per durare». Come la montagna.",
		"Ci chiamano testardi. È che non vediamo il senso di cambiare idea quando avevamo ragione la prima volta.",
		"Piegarsi come una canna? No, grazie. Le canne non reggono i tetti.",
	},
	["race.dwarf.subzone_enter.001"] = {
		"{subzone}. Vediamo di che pasta è fatto il terreno, qui.",
		"{subzone}. Almeno si sta saldi sui piedi. Un nano certe cose le nota per prime.",
		"{subzone}. Scommetto che qua sotto c'è una vena di qualcosa che vale la pena.",
	},
	["race.gnome.muse.001"] = {
		"Gnomeregan è ancora laggiù, con tutte le sue luci e i suoi ingranaggi, piena di trogg e di veleno. Cerco di non immaginare le officine.",
		"La città più bella mai costruita, e abbiamo dovuto lasciarla ai trogg e alle radiazioni. Ogni gnomo ne porta ancora il progetto in testa.",
		"Sotto Dun Morogh i grandi ingranaggi girano ancora, per nessuno.",
	},
	["race.gnome.muse.002"] = {
		"Ogni grande invenzione comincia con una piccola esplosione. Alcune delle mie non hanno mai superato quella fase.",
		"Prima regola di chi armeggia con le macchine: tieni le sopracciglia in un posto sicuro.",
		"Sette idee geniali questa settimana. Solo quattro hanno preso fuoco: è il mio record personale.",
	},
	["race.gnome.muse.003"] = {
		"L'Alto Inventore Mekkatorque giura che ci riprenderemo Gnomeregan. Gli credo, soprattutto nelle giornate buone.",
		"Mekkatorque ha dei piani per riconquistare la città. Mekkatorque ha sempre dei piani: in fondo è per questo che lo seguiamo.",
		"Un giorno gli Esuli marceranno verso casa sotto lo stendardo di Mekkatorque. Io tengo gli attrezzi ben oliati, per quel giorno.",
	},
	["race.gnome.muse.004"] = {
		"Nuvole, maree, il modo in cui le foglie cambiano colore: tutto un meccanismo, se guardi abbastanza a lungo. Un meccanismo che non posso aprire, ed è esasperante.",
		"In questo mondo tutto funziona secondo qualche regola. Solo che non ho ancora trovato dove tengono gli schemi.",
		"Una cascata non è che un tubo molto grande e regolato malissimo. Bella, però. Questo glielo concedo.",
	},
	["race.gnome.muse.005"] = {
		"tira fuori un piccolo cacciavite da una tasca, lo rigira tra le dita con aria pensosa e lo rimette a posto senza usarlo.",
		"scarabocchia un rapido schema sul margine di qualcosa, poi lo fissa socchiudendo gli occhi, come se gli avesse risposto male.",
		"conta qualcosa sulle dita, perde il filo e ricomincia con evidente entusiasmo.",
	},
	["race.gnome.muse.006"] = {
		"I nani ci hanno dato Tinker Town quando non avevamo niente. Le loro sale sono troppo grandi e la loro birra troppo forte, e non smetterò mai di essergliene {g:grato|grata}.",
		"Forgiardente ci ha accolti con la fuliggine in faccia e le tasche vuote. Uno gnomo non scorda una gentilezza così.",
		"Ora siamo ospiti in una montagna di nani. Padroni di casa generosi, mobili enormi.",
	},
	["race.gnome.muse.007"] = {
		"Non tutti sono usciti da Gnomeregan. Alcuni sono ancora là dentro, cambiati dal veleno, e nessuno ama finire questa frase.",
		"Thermaplugg disse all'Alto Inventore che le radiazioni erano l'unica soluzione. Certi consigli si pagano con un'intera città.",
		"Quando sento uno gnomo ridere troppo forte, a volte mi chiedo chi abbia lasciato indietro, in quelle sale buie.",
	},
	["race.gnome.muse.008"] = {
		"Un destriero meccanico non si stanca, non morde e non ti mangia il pranzo. Prendete nota, arieti.",
		"Datemi due gambe d'acciaio buono e un giroscopio, al posto di qualunque bestia con delle opinioni.",
		"Un cavallo lo cavalcano tutti. Un destriero meccanico richiede calibrazione.",
	},
	["race.gnome.muse.009"] = {
		"Il mondo è stato costruito per gente più alta. Pazienza: le parti che mi servono le ricostruisco io.",
		"La gente grande risolve i problemi sollevandoli. Noi li risolviamo pensandoci sotto.",
		"Essere piccoli vuol dire che tutto il mondo è un po' in salita. Fa bene alle gambe, e ancora meglio alla testa.",
	},
	["race.gnome.muse.010"] = {
		"A Gnomeregan c'era sempre un ronzio: ventole, pompe, mille motori. Il silenzio mi fa ancora controllare se qualcosa si è rotto.",
		"Sono {g:cresciuto|cresciuta} con il ronzio dei motori nei muri. I posti silenziosi mi sembrano una macchina che si è fermata.",
		"Pochi posti ronzano come casa mia. Continuo a tendere l'orecchio verso le macchine della città, come altri fanno con gli uccelli.",
	},
	["race.gnome.subzone_enter.001"] = {
		"si guarda intorno, a {subzone}, con occhi vivaci che prendono le misure, come se stesse già disegnando migliorie.",
		"si ferma al limite di {subzone}, la testa inclinata, come un inventore che ascolta un motore.",
		"osserva {subzone} con occhiate rapide, archiviando ogni dettaglio per dopo.",
	},
	["race.human.muse.001"] = {
		"Re Varian partì per un incontro di pace e sparì lungo la via. Ogni voce su di lui è un po' peggiore della precedente.",
		"Un regno con il trono vuoto e un giovane principe ad aspettare lì accanto. Chissà se Anduin dorme bene.",
		"Il re è vivo, chissà dove, oppure no. In ogni caso Roccavento ha imparato a trattenere il fiato.",
	},
	["race.human.muse.002"] = {
		"Grano nel vento, un carro sulla strada, un cane che abbaia al nulla. È tutta qui una buona vita, ed è più rara dell'oro.",
		"Non avrei mai pensato che mi sarebbe mancato l'odore di un fienile. D'altra parte, non pensavo nemmeno di finirne così lontano.",
		"In Elwynn c'è sempre qualcuno che ara. È un conforto sapere che i solchi continuano ad arrivare, che io ci sia o no.",
	},
	["race.human.muse.003"] = {
		"Lordaeron era il più luminoso dei regni umani. Ora i suoi campi fanno crescere soltanto morti che non riposano.",
		"I vecchi soldati parlano della capitale di Lordaeron come di una città di pietra bianca e di campane. Io non la vedrò mai come la videro loro.",
		"Il nord è caduto sotto la piaga più in fretta di quanto si credesse possibile per un regno. La gente abbassa ancora la voce quando dice «Lordaeron».",
	},
	["race.human.muse.004"] = {
		"Le mura di Roccavento le hanno alzate muratori onesti che non sono mai stati pagati. E ora guardate Westfall. Pagate chi costruisce: ecco tutta la mia politica.",
		"Hanno ricostruito Roccavento in pietra bianca e si sono scordati del conto. I Defias se lo ricordano per loro.",
		"Una città di belle mura e paghe mai versate. Si direbbe che i nobili non abbiano mai sentito parlare di interessi.",
	},
	["race.human.muse.005"] = {
		"La Luce stava in ogni villaggio che ho conosciuto: una cappella, una candela a una finestra, la voce stanca di un vecchio sacerdote. Qualunque cosa io creda ora, questo me lo porto dietro.",
		"Certi giorni non so bene in cosa credo. Poi penso al silenzio dentro l'abbazia di Northshire, e qualcosa in me si raddrizza.",
		"Noi umani accendiamo candele contro tutto: il lutto, il freddo, la paura, il buio. Non è molto. Non è mai stato niente.",
	},
	["race.human.muse.006"] = {
		"guarda l'orizzonte come fanno i contadini, leggendo nel cielo il lavoro di domani.",
		"socchiude gli occhi verso le nuvole per una vecchia abitudine di Elwynn: terrà o non terrà?",
		"si massaggia la nuca e fissa lontano, come chi calcola quanti solchi mancano prima di cena.",
	},
	["race.human.muse.007"] = {
		"Gli elfi hanno i secoli, i nani la loro montagna. Noi umani abbiamo una sessantina di anni buoni, e infatti andiamo di fretta.",
		"Vite corte, progetti grandi. Ecco gli umani.",
		"Abbiamo poco tempo, e allora costruiamo cose che ci sopravvivano. Mura, strade, storie per i bambini.",
	},
	["race.human.muse.008"] = {
		"Bolvar Fordragon tiene insieme il regno con tutte e due le mani e senza corona. Non gli invidio un'ora sola.",
		"Un reggente fa il lavoro di un re senza ricevere i ringraziamenti di un re. Lord Fordragon sembra più stanco ogni anno.",
		"Roccavento è governata da un'autorità presa in prestito e da molta speranza. Finora regge.",
	},
	["race.human.muse.009"] = {
		"Gli anziani ricordano l'Orda che bruciava Roccavento la prima volta. Io conosco solo i racconti, ma bastano a tenermi all'erta.",
		"Due volte sono arrivati gli orchi, due volte abbiamo ricostruito. La gente discute ancora su che cosa dovrebbe insegnarci.",
		"C'è chi chiama i campi di internamento una misericordia, chi un errore. Tutti concordano che non hanno risolto niente.",
	},
	["race.human.muse.010"] = {
		"Cosa darei per una scodella di stufato al Lion's Pride e una lunga serata di pettegolezzi scadenti.",
		"Tutto quello che so della gente l'ho imparato nella sala comune di una locanda di villaggio.",
		"A Goldshire, adesso, qualche oste starà raccontando la solita vecchia barzelletta. Riderei anch'io.",
	},
	["race.human.subzone_enter.001"] = {
		"{subzone}. Qualcuno ci ha vissuto, un tempo, o ci vivrà. Gli umani lasciano un segno ovunque si fermino abbastanza a lungo.",
		"{subzone}. Mi chiedo chi gli abbia dato questo nome, e se lo riconoscerebbe ancora.",
		"{subzone}. A Roccavento c'è una mappa con questo nome sopra, e uno scrivano che il posto non l'ha mai visto.",
	},
	["race.nightelf.muse.001"] = {
		"Da quando Nordrassil ha dato la sua forza sull'Hyjal, anche per noi gli anni contano. Mi sorprendo ancora a fare piani per i secoli a venire.",
		"Abbiamo ceduto i nostri anni senza fine per fermare la Legione presso l'Albero del Mondo. Un prezzo giusto, credo. Sto ancora imparando a pagarlo.",
		"Mortale. La parola mi suona strana in bocca, come una lingua che non avevo mai pensato di imparare.",
	},
	["race.nightelf.muse.002"] = {
		"Teldrassil è bello, e giovane, e cresciuto senza la benedizione che ebbe il primo albero. Certi druidi non ti guardano negli occhi, se lo chiedi.",
		"Un albero piantato con speranza e con fretta. Amo Teldrassil, ma lo ascolto come si ascolta una tosse.",
		"La nostra nuova casa poggia sui rami di un albero che non ha mai conosciuto la benedizione degli Aspetti. A tavola non se ne parla.",
	},
	["race.nightelf.muse.003"] = {
		"Elune non alza la voce. La sento come si sente un'amica che legge in silenzio da sopra la spalla.",
		"Per me Elune vive in ogni cosa d'argento: un fiume, una vecchia moneta, l'occhio di un gufo.",
		"Quando sono {g:stanco|stanca} penso ai pozzi lunari di casa, immobili e argentei, e qualcosa in me si fa immobile a sua volta.",
	},
	["race.nightelf.muse.004"] = {
		"Voi razze giovani avete sempre fretta. Sedetevi un momento: il mondo sarà ancora qui.",
		"Tutto è urgente per chi conta la propria vita in decenni. Perdonatemi se cammino piano.",
		"La pazienza non è pigrizia. È aver visto come di solito vanno a finire le cose.",
	},
	["race.nightelf.muse.005"] = {
		"I nostri stessi antenati hanno attirato la Legione in questo mondo attraverso il Pozzo dell'Eternità. La memoria dei kaldorei è lunga, e non dimentica nemmeno quando vorrebbe.",
		"Gli Highborne erano i più splendenti di noi, e per poco non misero fine a tutto. Da allora diffido delle cose troppo splendenti.",
		"Quando gli anziani parlano del giorno in cui il mondo si spezzò, non alzano la voce. Certi ricordi sono troppo pesanti per sollevarli così in alto.",
	},
	["race.nightelf.muse.006"] = {
		"resta così immobile, per un istante, che un uccello di passaggio potrebbe {g:scambiarlo|scambiarla} per un alberello.",
		"ascolta con la pazienza delle foreste secolari, il capo inclinato verso un suono che solo {g:lui|lei} sembra cogliere.",
		"si muove senza far rumore, per un'abitudine più vecchia della maggior parte dei regni di questo mondo.",
	},
	["race.nightelf.muse.007"] = {
		"Darnassus: pietra bianca tra i rami, il Tempio della Luna, il lento discorrere dei gufi. Me la porto dietro come un seme in tasca.",
		"A Darnassus nessuno ha fretta, e perfino le fontane sembrano pensarci prima di parlare.",
		"Mi manca la quiete di Darnassus, dove persino una lite si fa a voce bassa.",
	},
	["race.nightelf.muse.008"] = {
		"Malfurion cammina nel Sogno di Smeraldo, mentre noi custodiamo il mondo desto. Chissà cosa ne penserebbe, se aprisse gli occhi.",
		"Il grande arcidruido dorme, e l'Alta Sacerdotessa veglia senza di lui. Certi pesi si dividono anche attraverso un sogno.",
		"I nostri druidi rispondono al Sogno, le nostre Sentinelle alla luna. Tra loro, la foresta ha due custodi e un cuore solo.",
	},
	["race.nightelf.muse.009"] = {
		"Secoli di pratica del mio popolo, e ancora nessuno è riuscito a insegnare a un umano a camminare in silenzio.",
		"I nani scavano, gli gnomi armeggiano, gli umani costruiscono mura. Noi piantiamo qualcosa e aspettiamo. Funziona meglio di quanto sembri.",
		"C'è chi ci trova distaccati. Aspettiamo solo di vedere se fra un secolo sarete ancora qui.",
	},
	["race.nightelf.muse.010"] = {
		"Gli orchi tagliano Ashenvale per i loro fuochi. Un albero che ha impiegato tre secoli a crescere cade in un pomeriggio, e la scure non saprà mai che cosa ha concluso.",
		"Ogni albero abbattuto ad Ashenvale è una pagina strappata da un libro che il mio popolo stava ancora leggendo.",
		"Alcuni dei miei contano gli accampamenti degli orchi ad Ashenvale come altri contano i debiti. Li capisco, anche quando vorrei non capirli.",
	},
	["race.nightelf.subzone_enter.001"] = {
		"{subzone}. Questa terra ricorda nomi più vecchi di questo. Mi chiedo quale preferisca.",
		"{subzone}. Prima ascolto, poi guardo: un luogo dice di più nel suo primo silenzio.",
		"{subzone}. Ogni nome è un mantello nuovo su un corpo vecchio. Cerco di vedere il corpo.",
	},
	["race.orc.muse.001"] = {
		"Nei campi il peggio non erano mai le mura. Era quella lunga stanchezza grigia, e i giorni che nessuno si prendeva la briga di contare.",
		"Ricordo orchi nei campi che fissavano il vuoto per ore. Quando sento quell'immobilità che mi sale addosso, mi rimetto in movimento.",
		"I campi hanno insegnato a un popolo intero a stare seduto ad aspettare. Io ho già aspettato abbastanza per una vita.",
	},
	["race.orc.muse.002"] = {
		"Gli orchi anziani parlano ancora del giorno in cui gli spiriti tornarono a rispondere a uno sciamano. Alcuni piangono, nel raccontarlo.",
		"Un tempo abbiamo dimenticato gli elementi e abbiamo parlato ai demoni. Gli spiriti ci hanno accolto lo stesso. Cerco di meritarlo.",
		"Terra, fuoco, acqua, aria, e sopra tutto gli antenati. Semplice, dicono i vecchi sciamani. Siamo stati stolti ad aver bisogno di sentircelo dire due volte.",
	},
	["race.orc.muse.003"] = {
		"Gli umani credono che gli orchi sappiano solo grugnire. Sappiamo anche gridare, cantare e lamentarci del cibo.",
		"Zug zug. Sì, è una parola. No, non te la spiego.",
	},
	["race.orc.muse.004"] = {
		"C'è una fame nel nostro sangue che ci è stata messa, non che ci è nata. Certi giorni la sento muoversi. Non la nutro.",
		"Gli occhi dei nostri nonni bruciavano rossi per un dono che era un guinzaglio. I miei sono limpidi, e intendo tenerli così.",
	},
	["race.orc.muse.005"] = {
		"Thrall è cresciuto schiavo tra gli umani, eppure è tornato da noi come capo. Se ci è riuscito lui, posso diventare qualcuno anch'io.",
		"Il Capoguerra avrebbe potuto odiare tutti. Ha scelto di costruire. Ci penso quando mi sale la collera.",
		"Durotar porta il nome del padre di Thrall. Un figlio che dà a una terra il nome di un padre mai conosciuto: c'è dentro la storia di un intero popolo.",
	},
	["race.orc.muse.006"] = {
		"L'onore non si vince. Si mantiene, ogni giorno, come il filo di una lama.",
		"La forza la trova chiunque. L'onore va portato, e pesa di più quando nessuno guarda.",
		"Vinci sporco e avrai solo vinto. Vinci pulito e avrai qualcosa da raccontare ai tuoi figli.",
	},
	["race.orc.muse.007"] = {
		"fa ruotare le spalle e schiocca le nocche una a una, un vecchio rito prima di pensare a qualcosa di difficile.",
		"si accovaccia accanto alla pietra più vicina e passa il pollice nella polvere, come per controllare se è rossa.",
		"canticchia a mezza voce un'aria bassa dei clan, quasi senza accorgersene.",
	},
	["race.orc.muse.008"] = {
		"I vecchi dei clan avevano mani come cuoio e risate come frane. Chiedilo a qualunque orco: è la risata che resta.",
		"Gli anziani dicono che un orco è tre cose: un clan, una parola e un fuoco a cui tornare. I clan oggi sono dispersi. Le altre due sta a me tenerle.",
	},
	["race.orc.muse.009"] = {
		"Lok'tar ogar. Vittoria o morte. Quasi sempre mi accontenterei della vittoria e di un pasto caldo.",
		"Vittoria o morte, dice il vecchio grido. Preferisco la prima, ma dalla seconda non scapperò.",
	},
	["race.orc.muse.010"] = {
		"Delle terre verdi non mi fido. Troppo morbide. Una terra così facile da abitare ha sempre sopra il nome di qualcun altro.",
		"Mi fido dei paesi secchi. Sai dov'è l'acqua, perché te la sei dovuta guadagnare.",
	},
	["race.orc.muse.011"] = {
		"La pace va benissimo. Tengo solo l'arma affilata, nel caso la pace cambi idea.",
		"Tutti si aspettano che un orco sfondi la porta. A volte busso, solo per vedere le loro facce.",
		"La pazienza di un orco è una miccia corta. Corta, ma alla fine brucia fino in fondo.",
	},
	["race.orc.muse.012"] = {
		"Grom Hellscream bevve per primo il sangue del demone, e alla fine fu lui a uccidere il demone. La vergogna e la sua risposta, in un solo orco.",
		"La morte di Hellscream ci ha liberato dalla maledizione del sangue. Ogni respiro libero di un orco gli deve qualcosa, qualunque cosa abbia fatto prima.",
	},
	["race.orc.subzone_enter.001"] = {
		"{subzone}. Prima di ogni altra cosa guardo le alture e la via d'uscita. Questo almeno i campi me l'hanno insegnato.",
		"{subzone}. La prima cosa che un orco cerca: dov'è l'acqua, e chi la sorveglia.",
		"{subzone}. Ci entro come se ne possedessi una parte. Vecchia abitudine di un popolo che un tempo non possedeva niente.",
	},
	["race.scourge.muse.001"] = {
		"Avevo una fattoria, una volta, vicino a Brill credo. Orzo, uno steccato storto, un cane che abbaiava ai corvi. Lo steccato lo vedo. I volti no.",
		"C'era una famiglia. Lo so come si sa che una parola è sulla punta della lingua. Ho deciso di non rincorrerla.",
		"Alcuni di noi vanno a cercare le case dove vivevano. Io ci sono {g:andato|andata} una volta. Panni di qualcun altro stesi ad asciugare. Non ho bussato.",
	},
	["race.scourge.muse.002"] = {
		"Per un certo tempo qualcun altro ha mosso le mie mani. Ora ogni passo che faccio è mio, anche quelli sbagliati. Soprattutto quelli sbagliati.",
		"La prima volta che ho scelto una cosa da niente, quale strada prendere, sono {g:rimasto|rimasta} al bivio a lungo. Scegliere era di nuovo una novità.",
		"La Dama Oscura ha spezzato il guinzaglio. Che cosa fare della corda che avanza, tocca a ciascuno di noi.",
	},
	["race.scourge.muse.003"] = {
		"Mi chiedono se fa male. Solo l'orgoglio, ed è stato il primo ad andarsene.",
		"Non dormo. Mi sdraio e ripenso a tutto quello che ho sbagliato. Come i vivi, ma con più tempo.",
		"I bambini dei vivi scappano quando mi vedono. Giusto. Alla loro età sarei {g:scappato|scappata} anch'io.",
	},
	["race.scourge.muse.004"] = {
		"I vivi mi guardano e vedono ciò che potrebbe capitare a loro. Non posso biasimarli. Io mi guardo e vedo ciò che è capitato.",
		"Paura nei loro occhi, ogni volta. Un tempo ero io ad avere paura. Non so quale delle due cose sia più solitaria.",
		"Una madre si tira il bambino dietro di sé quando passo. Non me la prendo. Una volta avrei fatto lo stesso.",
	},
	["race.scourge.muse.005"] = {
		"Il sole sulla faccia significava qualcosa: tepore, una giornata lunga, un motivo per sedersi. Ora è solo luce.",
		"Mi sorprendo a respirare per abitudine, come si continua a girare un anello che non si porta più.",
		"Le mie mani ricordano ancora un mestiere di cui non so il nome. A volte fanno i gesti da sole, e le lascio fare.",
	},
	["race.scourge.muse.006"] = {
		"piega le dita rigide finché le giunture scricchiolano, poi le fissa per un attimo come se fossero di qualcun altro.",
		"si volta verso un suono lontano e ascolta con un'immobilità senza battiti di ciglia che nessun corpo vivo saprebbe tenere, poi riprende il cammino.",
		"si stringe nel mantello, non per il freddo, ma per gli sguardi dei vivi.",
	},
	["race.scourge.muse.007"] = {
		"La Dama Oscura ci ha restituito la mente. Io spendo la mia come credo, e un po' anche per lei.",
		"Sylvanas ha perso quanto chiunque di noi. Forse è per questo che capisce cosa siamo.",
	},
	["race.scourge.muse.008"] = {
		"Ogni ghoul che si trascina per le Plaguelands avrebbe potuto essere me. Ognuno che abbatto è un debito pagato a ciò che stavo per diventare.",
		"Il Flagello tiene ancora quasi tutto ciò che era Lordaeron. Lo rivoglio. Non per abitarci: solo perché non appartenga a nessun padrone.",
	},
	["race.scourge.muse.009"] = {
		"Nessuno mi aspetta da nessuna parte. È uno strano tipo di libertà, e quasi sempre riesco a portarla.",
		"Niente lettere, nessun focolare che mi aspetti, nessuno che conti i giorni. Qualcuno lo chiamerebbe squallido. Io lo chiamo quieto.",
	},
	["race.scourge.muse.010"] = {
		"Un po' d'olio da imbalsamazione e sono come {g:nuovo|nuova}. Be'. Come {g:vecchio|vecchia}.",
		"Odoro di erbe e di terra di tomba. Ci si abitua. Gli altri no, ma io sì.",
	},
	["race.scourge.muse.011"] = {
		"Il mio vecchio nome non lo dico ad alta voce. Apparteneva a qualcuno che aveva un battito, e preferisco lasciarlo a quella persona.",
		"Chiunque io fossi a Lordaeron può restarci. Non sono {g:tornato|tornata} dalla morte per portarne i bagagli.",
	},
	["race.scourge.muse.012"] = {
		"Gli orchi mi guardano come se potessi andare in pezzi a tavola. Potrei. Fa parte del mio fascino.",
		"I tauren sono gentili con noi. Fin troppo, a volte. Continuano a offrirmi zuppa.",
	},
	["race.scourge.subzone_enter.001"] = {
		"{subzone}. Me la prendo con calma. Nessuno mette fretta a un viandante morto, e io non me ne metto.",
		"{subzone}. Imparo il nome e lo tengo. Di nomi ne ho già persi troppi.",
		"{subzone}. Un altro posto che non ha mai chiesto qualcuno come me. Se ne farà una ragione.",
	},
	["race.tauren.muse.001"] = {
		"Se chiudo gli occhi sento ancora l'erba di Mulgore che fruscia contro le zampe dei kodo. Certi suoni si portano dentro, come l'acqua in un otre.",
		"Ero ancora {g:un vitello|una vitella} quando vidi per la prima volta le pianure dall'alto delle rupi. Ho camminato tanto, da allora, e niente mi è sembrato altrettanto vasto.",
		"L'odore di una mandria: sterco caldo e salvia pestata. Un tempo non l'avrei chiamato un buon profumo. Adesso darei parecchio per sentirlo ancora.",
	},
	["race.tauren.muse.002"] = {
		"La gente più piccola mi chiede sempre se pesto forte. Solo sui loro piedi, e solo per sbaglio.",
		"Ogni sedia su cui mi siedo scricchiola un avvertimento. Io preferisco prenderlo per un saluto.",
	},
	["race.tauren.muse.003"] = {
		"An'she di giorno, Mu'sha di notte: i due occhi della Madre Terra, così mi hanno insegnato. Ovunque io vada, uno dei due è aperto.",
		"Il sole e la luna sono gli occhi della Madre Terra. Non ho mai camminato senza essere {g:guardato|guardata}, e per lo più è un conforto.",
		"Gli anziani dicono che il sole e la luna sono i suoi occhi. Allora non c'è strada tanto lontana dove lei non possa vedermi.",
	},
	["race.tauren.muse.004"] = {
		"Accanto al fuoco gli anziani intrecciano piume nelle criniere dei giovani e pronunciano il nome di ogni antenato. Metà dei nomi che mi sono stati affidati li ho dimenticati. Gli antenati, credo, sanno aspettare.",
		"Dentro di me le vecchie voci continuano a contare la mia stirpe, nome dopo nome. Se faccio abbastanza silenzio, quasi le sento al lavoro.",
	},
	["race.tauren.muse.005"] = {
		"Un cacciatore del mio popolo ringrazia la bestia prima del coltello, e poi di nuovo dopo. Non ho mai trovato un motivo per smettere.",
		"La caccia prende una vita, e a quella vita dobbiamo delle parole. Un uccello delle pianure, un kodo, un lupo della prateria: ognuno ha avuto il mio grazie.",
		"Uccidere netto, non sprecare nulla, ringraziare. Era tutta qui la lezione, e mi ci sono voluti anni per impararla.",
	},
	["race.tauren.muse.006"] = {
		"Il mio popolo misurava un viaggio in giorni di cammino e in sonni sotto il cielo aperto. Tutti gli altri, a quanto pare, lo misurano in lamentele.",
		"Un tauren non fugge mai da uno scontro. Se ne allontana camminando molto in fretta, che è tutta un'altra cosa.",
	},
	["race.tauren.muse.007"] = {
		"Ovunque mi porti la strada, una parte di me è ancora sulla mesa, a guardare l'erba che diventa d'argento quando il vento la rovescia.",
		"Sotto le rupi di Mulgore c'è un punto dove l'aria sa d'acqua e di pietra. Ci torno con la mente più spesso di quanto ammetta.",
	},
	["race.tauren.muse.008"] = {
		"posa per un attimo il largo palmo sulla terra, come per accertarsi che qualcuno, là sotto, ci sia ancora.",
		"china il grande capo e mormora qualche parola alla terra, come si saluta un anziano incontrato per strada.",
		"batte piano uno zoccolo, una volta sola, e attende un istante, come se aspettasse una risposta dal suolo.",
	},
	["race.tauren.muse.009"] = {
		"Quando i centauri ci tenevano stretti, furono gli orchi a schierarsi con noi. Un debito così non lo dimentico, e nemmeno Cairne.",
		"Cairne tese la mano a Thrall quando pochi l'avrebbero fatto. Più strade percorro, più saggezza vedo in quella mano.",
	},
	["race.tauren.muse.010"] = {
		"La pazienza viene dalle pianure. L'erba non ha fretta, e alla fine copre tutto.",
		"Il mio popolo ha imparato ad aspettare che passi la stagione secca. Quasi tutti i guai sono una stagione secca che grida più forte.",
		"I giovani vogliono sempre correre avanti. Il vecchio kodo in coda alla mandria arriva lo stesso.",
	},
	["race.tauren.muse.011"] = {
		"Quando tornerò alla terra, spero di tornarci {g:leggero|leggera}. Poco di dovuto, poco di preso, qualche buona orma lasciata alle spalle.",
		"Un giorno l'erba crescerà tra le mie ossa, ed è giusto così. Fino ad allora, ho intenzione di camminare.",
		"Il mio popolo non teme il ritorno alla terra. Chiediamo soltanto di arrivarci dopo aver vissuto come si deve.",
	},
	["race.tauren.muse.012"] = {
		"Le mie corna hanno abbattuto più lanterne che nemici. Ho smesso di scusarmi con i locandieri: ormai sospirano e basta.",
		"Chinarmi sotto gli architravi, badare alle corna sotto i rami bassi. Il mondo non è stato misurato su un tauren, ma io mi ci faccio stare.",
	},
	["race.tauren.subzone_enter.001"] = {
		"{subzone}. Leggo questo posto come il mio popolo legge ogni tratto di terra: prima l'acqua, poi il riparo, poi chi altro sta guardando.",
		"{subzone}. Alzo il muso nell'aria prima ancora che gli occhi abbiano finito di guardare. Vecchia abitudine delle pianure.",
		"{subzone}. Saggio il terreno con uno zoccolo, come se potesse dirmi il suo nome a modo suo.",
	},
	["race.troll.muse.001"] = {
		"Le Echo Isles sono lì, oltre l'acqua, a un passo da Sen'jin: abbastanza vicine da vederle. È questo il peggio: abbastanza vicine da vederle.",
		"So il nome di ogni insenatura delle isole che abbiamo perso. Ripeterli le tiene un poco nostre, finché non ce le riprenderemo.",
		"Le nostre isole sono ancora là in mezzo al mare, piene delle voci sbagliate. Vol'jin dice pazienza. Ci sto provando.",
	},
	["race.troll.muse.002"] = {
		"Noi troll ricresciamo quello che perdiamo. Quasi sempre. Non metterti a provarlo sulle mie orecchie.",
		"Ferisci un troll e la ferita si chiude. Offendilo, e quella resta aperta a lungo, molto a lungo.",
	},
	["race.troll.muse.003"] = {
		"Ai Loa non piacciono le preghiere dette di corsa. Meglio una piccola offerta fatta con calma che una grande lanciata alle spalle.",
		"I vecchi troll tengono una ciotolina per i Loa accanto a ogni fuoco. Quando mi accampo, mi sorprendo a cercare qualcosa da metterci dentro.",
		"Un Loa si ricorda chi lo ha nutrito e chi se n'è dimenticato. Io cerco di restare dalla parte giusta di quella memoria.",
	},
	["race.troll.muse.004"] = {
		"Gli stregoni me l'hanno insegnato presto: ogni amuleto ha un prezzo, e il prezzo non c'è mai scritto sopra.",
		"Il voodoo non è un gioco da bambini. È un patto, e dall'altra parte del patto c'è sempre qualcuno che ascolta.",
		"Ogni amuleto della mia gente è mezza promessa. I Loa mantengono la loro metà; a noi conviene mantenere la nostra.",
	},
	["race.troll.muse.005"] = {
		"Un tempo la nostra gente innalzava nella giungla città di pietra che facevano sembrare piccola ogni altra razza. Ricordatelo, quando ci guardano storto.",
		"Gli imperi dei troll sono più antichi dei regni degli uomini. A volte ce ne dimentichiamo noi. Gli altri, sempre.",
		"Prima che gli umani avessero un solo muro, i troll avevano già i templi. Non mi vanto. Tengo solo i conti in ordine.",
	},
	["race.troll.muse.006"] = {
		"Sen'jin vide per noi la via d'uscita dal buio, e non visse abbastanza per percorrerla. Abbiamo dato il suo nome al villaggio. Non basta, ma è qualcosa.",
		"Il nostro vecchio capo morì sulla via della terra nuova. Ogni fuoco del villaggio di Sen'jin brucia un poco nel suo nome.",
	},
	["race.troll.muse.007"] = {
		"Troppo freddo, troppo secco, troppi muri. Fuori dalla giungla c'è sempre qualcosa che non va.",
		"Sai cosa manca a questo mondo? Più amache. E meno gente che mi dice di alzarmi.",
		"Una volta ho provato a dormire in un letto. Troppo piatto. Datemi un'amaca e un filo d'aria.",
	},
	["race.troll.muse.008"] = {
		"fa rotolare tra le dita un piccolo osso intagliato, vecchia abitudine delle isole, e poi lo rimette via.",
		"tocca le perline al collo una per una, muovendo le labbra, come se contasse debiti dovuti in un altro mondo.",
		"si accovaccia sui talloni alla maniera dei troll e studia il terreno, le zanne sollevate, in ascolto di qualcosa.",
	},
	["race.troll.muse.009"] = {
		"Thrall ci ha tirato fuori dal mare quando non avevamo niente. Vol'jin onora quel debito, e io con lui.",
		"I Darkspear devono una vita all'Orda. La paghiamo volentieri, e intanto restiamo Darkspear.",
	},
	["race.troll.muse.010"] = {
		"Certe mattine mi sveglio cercando con l'orecchio i pappagalli e la risacca. Poi ricordo dove sono, e ascolto quello che c'è.",
		"La giungla aveva mille rumori, tutti insieme. I posti silenziosi mi fanno venire il prurito. Troppo spazio per pensare.",
	},
	["race.troll.muse.011"] = {
		"Noi troll stiamo dritti quando ci va. Quasi sempre non ci va.",
		"{g:Curvo|Curva}? Tengo da parte la mia altezza per le grandi occasioni.",
	},
	["race.troll.muse.012"] = {
		"Zalazane siede sulle nostre isole e gioca a fare il re con le menti della nostra gente. Un giorno voglio stare su quella sabbia e vederlo pagare.",
		"Uno stregone della nostra stessa tribù ha fatto della nostra gente dei burattini. È una ferita più profonda di qualunque lancia.",
	},
	["race.troll.subzone_enter.001"] = {
		"{subzone}. Mh. Non vale le isole, ma niente le vale.",
		"{subzone}. Vediamo cosa pensano di me gli spiriti di questo posto.",
		"{subzone}. Lascerò una perlina in qualche angolo, così il posto saprà che è passato un Darkspear.",
	},
	["band.b10_20.muse.01"] = {
		"Ho cominciato a disegnarmi una mappa sul retro di una lista di provviste. Le strade sono storte, le distanze sbagliate, e vado {g:fiero|fiera} di ogni riga.",
		"So quali incroci hanno un cartello onesto e quali mentono. Vale più di tutte le monete che ho guadagnato finora.",
		"Le strade cominciano ad avere un senso. Non tutte. Abbastanza da non dover più chiedere la via a ogni guardia.",
	},
	["band.b10_20.muse.02"] = {
		"Ormai so dare un voto a ogni letto di locanda in base a quante molle ti pungono la schiena. È una competenza.",
		"Mai fidarsi di uno stufato di cui non si vede il fondo. L'ho imparato a mie spese.",
		"Regola della strada: mangia quando c'è cibo, dormi quando c'è un tetto, e non chiedere mai cosa c'è dentro il pasticcio.",
	},
	["band.b10_20.muse.03"] = {
		"stringe le cinghie di uno zaino che si è fatto più pesante a ogni settimana di strada, e non sembra dispiacersene.",
		"controlla le suole degli stivali, aggrotta la fronte davanti a un buco nuovo scavato dalla strada, e riprende a camminare lo stesso.",
		"si ferma a guardare indietro lungo la strada, come {g:sorpreso|sorpresa} di quanta ne abbia già alle spalle.",
	},
	["band.b10_20.muse.04"] = {
		"Certe cose là fuori sono ancora troppo grosse per me. Ho imparato a vederle prima che vedano me, e a fare il giro largo.",
		"Ormai capisco a colpo d'occhio quali bestie sono alla mia portata e quali no. Alle seconde lascio molto spazio e tutto il mio rispetto.",
	},
	["band.b1_10.muse.01"] = {
		"Undici monete di rame, una sacca rattoppata e mezza pagnotta che si indurisce. Le ho contate due volte. Restano undici.",
		"Tengo i soldi in tre tasche diverse, così una giornata storta me ne porta via solo un terzo. Un terzo di poco, d'accordo.",
		"Ogni moneta di rame ha già il suo compito: il pane, una benda, un letto sotto un tetto. Nessuna resta in tasca a riposare.",
	},
	["band.b1_10.muse.02"] = {
		"Ogni ululato là fuori sembra sapere come mi chiamo. E dove dormo.",
		"Un lupo lo reggo. Due, se sono educati e fanno a turno.",
	},
	["band.b20_30.muse.01"] = {
		"I posti che erano solo nomi su una mappa diventano posti dove ho dormito. Il mondo si rimpicciolisce e intanto, chissà come, si allarga.",
		"Adesso cammino un giorno intero e mi resta ancora il fiato per un combattimento alla fine. Ricordo quando bastava una collina a svuotarmi.",
		"La strada non mi fa più paura. Tengo d'occhio piuttosto chi la percorre.",
	},
	["band.b20_30.muse.02"] = {
		"In ogni taverna c'è uno che giura di aver visto un drago. Ho smesso di offrirgli da bere, ma lo ascolto ancora.",
		"Metà delle voci che girano per strada sono bugie, e l'altra metà è peggio. Sto imparando da quale metà scappare.",
		"Ieri ho sentito la storia di una grotta piena d'oro. L'avevo già sentita sulla grotta precedente. Le grotte vanno di moda.",
	},
	["band.b20_30.muse.03"] = {
		"ricuce una cinghia strappata sul ciglio della strada con punti rapidi e sicuri, mani che non molto tempo fa erano goffe.",
		"pulisce, controlla e ripone l'equipaggiamento senza guardare, con le mani che si muovono come quelle di un cuoco nella sua cucina.",
		"legge il cielo, la polvere della strada e le tracce lì accanto, e sceglie un sentiero con la mano ferma sulla mappa.",
	},
	["band.b20_30.muse.04"] = {
		"La strada è piena di sconosciuti che dividono il fuoco per un'ora e spariscono alle prime luci. Ho smesso di aspettarmi di rivederli.",
		"Le facce nelle locande cambiano più in fretta di quanto riesca a impararle. Mi tengo quelle gentili e lascio sfumare le altre.",
		"Per strada incroci gente che va nella direzione opposta. A volte mi chiedo cosa si lascino alle spalle, e se sia proprio ciò verso cui sto andando.",
	},
	["band.b20_30.muse.05"] = {
		"Non sono più la persona che ha imboccato questa strada. Quella si sarebbe girata al primo fosso.",
		"Lungo la via ho smesso di essere alle prime armi. Nessuno me l'ha detto: me ne sono {g:accorto|accorta} e basta.",
		"Ci sono ancora tante cose che non so fare. Ma la lista di quelle che so fare è più lunga di prima.",
	},
	["band.b30_40.muse.01"] = {
		"Ho una cicatrice per quasi ogni lezione che ho imparato. Quelle senza cicatrice continuo a dimenticarle.",
		"Il mio corpo tiene il conto di questi anni meglio di qualsiasi diario. Ogni nodo, ogni cicatrice ha una data che quasi saprei dire.",
		"Le vecchie cicatrici fanno male prima di una giornata dura. Ho smesso di avercela con loro: sono i consiglieri più onesti che ho.",
	},
	["band.b30_40.muse.02"] = {
		"La mia mappa è stata piegata e ripiegata tante volte che le pieghe sono diventate strade anche loro.",
		"Ho dovuto comprare una mappa più grande. Quella vecchia non aveva più bordi da superare.",
		"Sulla mia mappa ci sono meno spazi bianchi di una volta, e non so se mi piace.",
	},
	["band.b30_40.muse.03"] = {
		"ruota una spalla rigida finché non dà uno schiocco sordo, un rumore che sembra conoscere bene.",
		"passa il pollice su una vecchia cicatrice sul dorso della mano, senza nemmeno accorgersene.",
		"si siede con la lentezza attenta di chi ha portato parecchia strada sulle ginocchia.",
	},
	["band.b30_40.muse.04"] = {
		"Ormai mi bastano poche parole per capire se un lavoro vale la pena. Il difficile è darmi retta.",
		"Quando qualcuno dice che un incarico è semplice, chiedo che fine ha fatto l'ultimo che ci ha provato. Si risparmia tempo.",
		"Ho imparato a leggere la pausa prima di una richiesta. Più è lunga, peggiore è il lavoro.",
	},
	["band.b30_40.muse.05"] = {
		"Il mondo è più vasto di quanto mi avessero detto, e più duro, e sono comunque {g:contento|contenta} di essermi {g:messo|messa} in cammino per vederlo.",
		"Ho camminato abbastanza da sapere che una fine non c'è. Non è un lamento.",
		"Ogni cresta che scalo me ne mostra altre tre. Certi giorni è un peso. Oggi è una promessa.",
	},
	["band.b30_40.muse.06"] = {
		"La paura non se n'è andata. Ha solo imparato ad aspettare il suo turno, come un cane vicino alla porta.",
		"Ho ancora paura. La differenza è che adesso so esattamente quanta, e di cosa.",
	},
	["band.b30_40.muse.07"] = {
		"Quelli alle prime armi si riconoscono da lontano. Stivali puliti, voce alta, nessuna idea.",
		"A volte vedo dei ragazzi caricare una bestia grossa il doppio di loro, e quasi li invidio. Quasi.",
	},
	["band.b40_50.muse.01"] = {
		"Più vado lontano, più vedo cosa non va nel mondo. Non più i piccoli torti. Quelli che chiedono anni ed eserciti.",
		"Una volta credevo che i pericoli finissero a un certo punto. Adesso so che invecchiano e si organizzano meglio.",
		"I guai che la gente mi porta sono cambiati. Meno 'lupi nel campo', più 'qualcosa si è svegliato sotto le colline'.",
	},
	["band.b40_50.muse.02"] = {
		"Non sobbalzo più ai rumori. Calcolo solo quanto sono lontani e quanto mi costeranno.",
		"Qui fuori tutto vuole mangiarmi, maledirmi o derubarmi. Chissà perché, lo trovo rassicurante. Almeno è onesto.",
	},
	["band.b40_50.muse.03"] = {
		"si ferma su un'altura e studia la terra davanti a sé come un mercante studia un registro, soppesando quanto costerà.",
		"controlla ogni fibbia e ogni cinghia con dita lente e scrupolose, un rito più vecchio della paura che per prima lo ha insegnato.",
		"resta a lungo sul bordo del sentiero, in ascolto, prima di fare anche un solo passo in più.",
	},
	["band.b40_50.muse.04"] = {
		"Ormai la gente si scansa quando passo. Non so se sia rispetto o la faccia che ho.",
		"C'è gente che non ho mai incontrato e che sa di me. Poco, e non sempre giusto, ma sa. È un mantello più pesante di quanto sembri.",
		"Gli sconosciuti mi chiedono aiuto come se fossi un muro a cui appoggiarsi. Spero di essere {g:solido|solida} quanto credono.",
	},
	["band.b40_50.muse.05"] = {
		"Più cammino, meno ho bisogno di dimostrare. È l'unica cosa che si è fatta più leggera.",
		"Adesso combatto meno per vincere e più per finire. C'è differenza, e mi ci sono voluti anni per trovarla.",
		"All'inizio della strada il coraggio costa poco. Qui fuori lo paghi ogni giorno, e continui a pagarlo.",
	},
	["band.b40_50.muse.06"] = {
		"Manco da così tanto che casa è diventata più una direzione che un luogo, una porta che indico senza vederla.",
		"Conoscevo ogni crepa della mia soglia. Adesso le soglie che conosco meglio sono quelle delle locande.",
		"Se qualcuno mi chiedesse da dove vengo, darei ancora la vecchia risposta e penserei alla vecchia porta. Solo che sono meno {g:sicuro|sicura} che sia vera.",
	},
	["band.b40_50.muse.07"] = {
		"Le mie giunture prevedono i guai meglio di qualunque veggente. Oggi dicono 'tutto', il che non aiuta.",
		"Sono a quel punto della carriera in cui controllo le uscite prima del menu.",
		"Ho messo insieme abbastanza scampati pericoli da riempire un libro. Nessuno ne crederebbe metà, e l'altra metà preferirei scordarla.",
	},
	["band.b50_60.muse.01"] = {
		"Sono sempre meno le persone che possono insegnarmi qualcosa. Il resto dovrà insegnarmelo il mondo, ed è un maestro severo.",
		"Gli istruttori adesso mi guardano in un altro modo. Meno come si guarda chi impara, più come un pari che deve loro ancora qualche moneta.",
		"Ho raggiunto il tratto di strada dove i consigli si fanno rari. Da qui in poi imparo soprattutto sopravvivendo.",
	},
	["band.b50_60.muse.02"] = {
		"La cima è abbastanza vicina da vederla. Sembra più piccola di come l'immaginavo, e più alta.",
		"Ci siamo quasi. E comincio a capire che 'arrivare' vuol dire solo vedere meglio il lavoro che resta.",
		"Manca poco alla fine della salita. Buffo: credevo che mi sarei {g:sentito|sentita} a posto. Mi sento solo {g:pronto|pronta}.",
	},
	["band.b50_60.muse.03"] = {
		"osserva la terra con l'attenzione tranquilla di chi ne ha percorsa gran parte, e ricorda quanto è costata ogni strada.",
		"saggia ogni cinghia e ogni cucitura per abitudine, come i vecchi marinai controllano i nodi fatti con le proprie mani.",
		"si appoggia a una pietra e lascia che il silenzio si allunghi, senza fretta, come chi se l'è guadagnato molte volte.",
	},
	["band.b50_60.muse.04"] = {
		"I guai di cui sento parlare adesso non sono guai da contadini. Hanno nomi che fanno abbassare la voce ai vecchi soldati.",
		"Ci sono cose in questo mondo che potrebbero porvi fine, e comincio a sentire che tocca anche a me sbarrare loro la strada.",
		"I discorsi attorno ai fuochi sono cambiati. Nessuno mi chiede più dei briganti. Chiedono delle vecchie cose terribili, e se si possono fermare.",
	},
	["band.b50_60.muse.05"] = {
		"Questa settimana mi hanno dato dell'eroe due volte. Tutte e due da qualcuno che voleva qualcosa. Anche l'eroismo ha il suo prezzo di mercato.",
		"Il mio equipaggiamento ha più toppe che cuciture originali, e non lo cambierei col guardaroba di un re.",
		"I giovani continuano a chiedermi come ho fatto ad arrivare fin qui. Rispondo: soprattutto evitando di morire, e un po' con la fortuna.",
	},
	["band.b50_60.muse.06"] = {
		"Ultimamente mi chiedo cosa farò quando non ci sarà più niente in cui crescere. Tenere la linea, probabilmente. Qualcuno deve farlo.",
		"La fine della salita è vicina, e continuo a pensare a chi è ancora in fondo. Bisognerebbe lasciare il sentiero migliore di come lo si è trovato.",
		"Non mi serve diventare molto più forte. Mi serve più saggezza su come usare la forza che ho.",
	},
	["band.b50_60.muse.07"] = {
		"I momenti tranquilli sono più rari, adesso, e più belli. Ho imparato a starci dentro senza allungare la mano verso la cosa successiva.",
		"Strano come più mi avvicino alla cima, più noto le piccole cose. Un uccello su uno steccato. Il pane ancora caldo.",
		"Ho visto abbastanza meraviglie da non fermarmi più per la maggior parte. Quelle che ancora ci riescono le tengo come monete in tasca.",
	},
	["band.b60.muse.01"] = {
		"Sopra di me non c'è più niente da raggiungere. Resta la domanda più difficile: a cosa tenersi, e per chi.",
		"Ho passato anni a diventare abbastanza forte. Ora passo le giornate a decidere cosa merita quella forza.",
		"La salita è finita. Resta da scegliere dove stare, e starci.",
	},
	["band.b60.muse.02"] = {
		"Ho guardato cose che, a descriverle, svuoterebbero una taverna. Non le descrivo. Certi ricordi è meglio custodirli che condividerli.",
		"Ho sentito da vicino il calore dei pericoli peggiori del mondo. Le paure ordinarie faticano a farsi notare, ormai.",
		"La maggior parte della gente non vede mai cosa c'è ai margini del mondo. Io sì, e per questo dormo meno e combatto meglio.",
	},
	["band.b60.muse.03"] = {
		"Un consiglio ai giovani: le battaglie sceglietele come si sceglie un cavallo. Con calma, e mai solo perché vi ha lanciato un'occhiata.",
		"Quando i ragazzi mi chiedono il segreto, rispondo che non c'è. C'è solo la prossima strada, e non mollarla.",
		"Tenete l'equipaggiamento in ordine e la pazienza lontana dal limite. È quasi tutto quello che so, e mi ci sono voluti anni.",
	},
	["band.b60.muse.04"] = {
		"osserva la strada con la pazienza di chi non ha più bisogno di affrettarsi da nessuna parte per dimostrare qualcosa.",
		"se ne sta immobile, e chi passa si tiene un po' più al largo di quanto il sentiero richieda.",
		"posa una mano su uno zaino consunto, il gesto di chi se l'è portato fino ai confini del mondo e poi indietro.",
	},
	["band.b60.muse.05"] = {
		"Quando aiuto qualcuno, adesso, non è per le monete né per fare pratica. È un favore al mondo, passato avanti da chi aiutò me agli inizi.",
		"Le ricompense non mi servono più. Accetto il lavoro perché un braccio forte lasciato fermo è una specie di furto.",
		"Ogni piccolo incarico che prendo adesso salda un debito con chi un tempo ha fatto lo stesso per chi cominciava e non poteva pagare.",
	},
	["band.b60.muse.06"] = {
		"Ormai i lupi attraversano la strada per evitarmi. C'è voluto il suo tempo.",
		"Continuano a chiamarmi leggenda. Le leggende non fanno la fila dal fabbro. Io sì, e i lupi mi guardano ancora gli stivali.",
		"Stare in cima vuol dire soprattutto che tutti si aspettano che tu conosca la strada. Io cammino con aria sicura e spero che i lupi siano d'accordo.",
	},
	["band.b60.muse.07"] = {
		"Sono forte quanto potrò mai esserlo. A quanto pare la forza non rende il mondo più leggero: ti permette solo di portarne di più.",
		"Dalla cima la vista è ampia, e mostra ogni posto che ha ancora bisogno d'aiuto. Un po' mi piaceva non saperlo.",
		"Quasi niente di quello che incontro mi sorprende, ormai. A volte mi manca: la meraviglia.",
	},
	["band.b60.muse.08"] = {
		"Venga pure il peggio che questo mondo sa sollevare. Ho passato una vita a prepararmi.",
		"Qualunque cosa si levi adesso, troverà qualcuno ad aspettarla. Ho avuto il tempo di prepararmi.",
		"Non ho scalato fin qui per starmene in cima ad ammirare il panorama. C'è lavoro a ogni bordo della mappa.",
	},
	["landmark.w02.01"] = {
		"{landmark}. Cime, catrame, pesce e una dozzina di lingue sul molo. I porti sono di chiunque sia di passaggio.",
		"{landmark}. Ogni nave ormeggiata qui è una strada che potrei prendere. Non lo farò, ma è bello sapere che c'è.",
		"{landmark}: gabbiani, casse e scaricatori che urlano. Qualunque cosa il mondo venda, prima o poi sbarca in un posto così.",
	},
	["landmark.w02.02"] = {
		"si ferma sul limitare di {landmark} il tempo di prenderne le misure, poi entra.",
		"legge il nome di {landmark} come fanno i viandanti, e lo aggiunge alla lunga lista che si porta in testa.",
		"rallenta arrivando a {landmark}, come si fa in ogni posto a cui qualcuno si è preso il disturbo di dare un nome.",
	},
	["mood.coast.landmark.w02.01"] = {
		"arriva a {landmark} con il vento che viene dall'acqua a {g:tirargli|tirarle} il mantello.",
		"raggiunge {landmark}, dove ogni asse e ogni cima sembrano odorare di salmastro.",
	},
	["mood.coast.muse.w02.01"] = {
		"La marea sale, la marea scende. Mantiene quell'appuntamento da più tempo di quanto chiunque abbia mai mantenuto una promessa.",
		"Sale sulle labbra e il lungo fruscio delle onde. Il mare parla di continuo e dice sempre la stessa cosa, e non mi annoia mai.",
		"Laggiù l'acqua corre fino al bordo del mondo. Certi giorni sembra libertà; altri, un muro.",
	},
	["mood.coast.muse.w02.02"] = {
		"alza la testa all'odore di salsedine portato dalla riva, e lo respira piano.",
		"ascolta il suono lontano della risacca, e per qualche passo ne segue il ritmo senza volerlo.",
	},
	["mood.coast.subzone_enter.w02.01"] = {
		"{subzone}. Da qui si sente il mare. Tutto quello che sta vicino all'acqua finisce per somigliargli un po'.",
		"{subzone}. Odore di sale e di legno bagnato. Non mi dispiace.",
		"{subzone}. Gabbiani in alto, a litigare come al solito. Certe cose sono uguali su ogni riva.",
	},
	["mood.deep.muse.w02.01"] = {
		"Niente cielo, quaggiù: solo il peso di tutto quello che sta sopra. Cerco di non pensare a quanto sia.",
		"Il buio, in questi posti, è così denso che ci si potrebbe appoggiare. Non lo faccio: qualcosa potrebbe appoggiarsi a me.",
	},
	["mood.desert.landmark.w02.01"] = {
		"{landmark}. Ombra, acqua, altra gente. In una terra arida un nome sulla mappa promette queste tre cose, o dovrebbe.",
		"{landmark}. Qualunque altra cosa sia, è un posto dove stare per un po' al riparo dalla polvere.",
	},
	["mood.desert.subzone_enter.w02.01"] = {
		"{subzone}. Ho già la polvere negli occhi prima di aver fatto dieci passi.",
		"{subzone}. Sabbia sotto i piedi, sabbia nel vento, e per sera sabbia negli stivali.",
	},
	["mood.fire.landmark.w02.01"] = {
		"{landmark}. Qualcuno tiene in vita un nome su questa terra bruciata. Una testardaggine così merita un cenno.",
		"{landmark}. Qui perfino un nome scotta al tatto.",
	},
	["mood.fire.subzone_enter.w02.01"] = {
		"entra in {subzone} con una mano alzata contro il calore che sale dalla roccia.",
		"socchiude gli occhi entrando in {subzone}, dove l'aria tremola e sa vagamente di cenere.",
	},
	["mood.forest.landmark.w02.01"] = {
		"arriva a {landmark} sotto i rami, dove gli alberi sembrano essersi scostati quel tanto che basta per fare spazio.",
		"raggiunge {landmark} e nota come il posto se ne stia all'ombra, quasi avesse chiesto al bosco il permesso di esserci.",
	},
	["mood.forest.muse.w02.01"] = {
		"Sotto gli alberi le ore passano in un altro modo. Ho smesso di contarle e ho cominciato a contare i richiami degli uccelli.",
		"Le foglie tengono su un sussurro continuo sopra la mia testa. Non parlano di me, ed è proprio questo che riposa.",
	},
	["mood.forest.muse.w02.02"] = {
		"Ogni albero somiglia a quello di prima. Se qualcuno vede un sentiero, lo gridi pure.",
		"Radici, felci, altre radici. Bellissimo, purché non si debba andare da nessuna parte in linea retta.",
	},
	["mood.forest.subzone_enter.w02.01"] = {
		"{subzone}. Abbassa la voce: il bosco la porta più lontano di quanto credi.",
		"{subzone}. Attenti alle radici. Erano qui prima di noi, e non si sposteranno per nessuno.",
	},
	["mood.jungle.landmark.w02.01"] = {
		"{landmark}. Qualcuno si è ritagliato un posto in tutto questo verde e continua a ritagliarlo. Basterebbe fermarsi una stagione e i rampicanti se lo riprenderebbero.",
		"{landmark}. Gente, tetti, voci: un'isoletta di ordine, con la giungla che preme ai bordi.",
	},
	["mood.mountain.landmark.w02.01"] = {
		"{landmark}. Chi si stabilisce in montagna lo fa per restare. Si vede da come si è piantato qui.",
		"{landmark}. Un tratto di terra in piano, conquistato e tenuto. Quassù non è poco.",
	},
	["mood.mountain.muse.w02.01"] = {
		"Quassù il terreno è tutto pendenza e discussione. Ogni passo va conquistato, e poi conquistato ancora.",
		"Le creste stanno lì intorno come vecchi soldati che hanno dimenticato la guerra, ma non il posto di guardia.",
	},
	["mood.mountain.muse.w02.02"] = {
		"aspetta che un rivolo di sassi finisca di rotolare giù dal pendio, poi sceglie un percorso più sicuro verso l'alto.",
		"si piega nella salita, una mano sulla roccia, e si concede un solo sguardo indietro su quanta strada ha fatto il sentiero.",
	},
	["mood.mountain.subzone_enter.w02.01"] = {
		"{subzone}. Attenti a dove mettete i piedi: qui i sassi smossi hanno le loro idee.",
		"{subzone}. In salita, ovviamente. È sempre in salita.",
	},
	["mood.plague.landmark.w02.01"] = {
		"{landmark}. Ogni nome in questo paese ha ormai due storie: quello che era, e quello che ne ha fatto il morbo.",
		"{landmark}. Cerco qui i segni dei vivi, e quando li trovo li conto con cura.",
	},
	["mood.plague.subzone_enter.w02.01"] = {
		"{subzone}. Respira attraverso la manica, e non toccare niente di ciò che cresce.",
		"{subzone}. Continuiamo a muoverci, e non beviamo niente di quello che c'è qui.",
	},
	["mood.plains.landmark.w02.01"] = {
		"raggiunge {landmark}, la prima cosa da un bel pezzo a stare più in alto dell'erba.",
		"arriva a {landmark} dopo un lungo tratto d'erba aperta, e rallenta per guardarsi intorno.",
	},
	["mood.plains.subzone_enter.w02.01"] = {
		"supera un lieve rialzo ed entra in {subzone}, fermandosi a guardare la lunga distesa aperta.",
		"entra in {subzone} col vento alle spalle, e l'erba si piega in avanti come a indicare la strada.",
	},
	["mood.ruin.muse.w02.01"] = {
		"Qualcuno ha tagliato queste pietre su misura, le ha messe a posto, ed era sicuro che sarebbero rimaste in piedi per sempre. Metà ci sono ancora.",
		"Una porta senza più una casa intorno: in un posto così se ne vedono parecchie. Mi viene sempre voglia di bussare.",
		"Ogni rovina è una discussione che qualcuno ha perso con il tempo. Il tempo non se ne vanta: va avanti e basta.",
	},
	["mood.ruin.subzone_enter.w02.01"] = {
		"{subzone}. Mi faccio strada fra pietre crollate, indovinando dove correvano un tempo i muri.",
		"{subzone}. Giro con cura intorno ai pezzi caduti, come se appartenessero ancora a qualcuno.",
	},
	["mood.snow.muse.w02.01"] = {
		"Il freddo entra dai polsini e dal colletto, paziente come un ladro. Continuo a muovermi: è l'unica moneta che non riesce a prendermi.",
		"Il fiato mi resta davanti, bianco e lento. Qui persino respirare lascia una traccia.",
		"Qui tutto è bianco e così immobile che perfino i miei passi sembrano maleducati.",
	},
	["mood.snow.subzone_enter.w02.01"] = {
		"arrivando a {subzone} batte i piedi per scacciare il freddo, il fiato che fuma nell'aria gelata.",
		"si tira su il bavero entrando in {subzone}, dove il vento arriva dal ghiaccio senza niente a frenarlo.",
	},
	["mood.swamp.muse.w02.01"] = {
		"Umido negli stivali, umido nel giaciglio, umido nel pane. La palude divide tutto quello che ha.",
		"Qualcosa gracida, qualcosa sciaborda, qualcosa mi ronza all'orecchio. La palude non sta mai zitta: cambia solo argomento.",
		"Ho smesso di cercare di restare {g:asciutto|asciutta}. Ora cerco solo di stare un passo avanti alle sanguisughe.",
	},
	["mood.swamp.subzone_enter.w02.01"] = {
		"{subzone}. Di terreno solido se ne vede poco. Prenderò quello che c'è, con gratitudine.",
		"{subzone}. Canne, fango e odore di acqua vecchia. La palude continua solo a cambiarsi nome.",
	},
	["muse.clear.w02.01"] = {
		"Nemmeno una nuvola. Il cielo non ha niente da nascondere, e per una volta neanch'io.",
		"Cielo sgombro. Le distanze sembrano più corte di quanto siano: le gambe scopriranno la verità.",
	},
	["muse.clear.w02.02"] = {
		"Tempo sereno. Oggi niente scuse.",
		"Aria limpida e fine. Perfino gli stivali sembrano più leggeri.",
	},
	["muse.clear.w02.03"] = {
		"alza lo sguardo al cielo aperto, non ci trova niente di cui preoccuparsi, e riprende il cammino con passo più leggero.",
		"respira a fondo l'aria limpida e pulita, come per metterne da parte un po' per i giorni peggiori.",
	},
	["muse.day.w02.01"] = {
		"Metà giornata, e già mezza spesa a camminare. L'altra metà avrà di sicuro i suoi piani.",
		"Buona luce per sbrigare le cose. Devo solo decidere quali, e in che ordine.",
		"Alla luce del giorno tutto sembra affrontabile. Me lo godo finché dura.",
	},
	["muse.day.w02.02"] = {
		"Pieno giorno. Qualunque cosa ci sia là fuori mi vede arrivare. Giusto così: anch'io la vedo.",
		"È giorno: ore di lavoro onesto. Guadagniamoci il pane.",
	},
	["muse.fog.w02.01"] = {
		"La nebbia inghiotte tutto oltre una dozzina di passi. Il mondo si è ridotto a una stanzetta grigia, e io ci sono dentro.",
		"Dalla nebbia emergono sagome che poi si rivelano rocce o alberi, quasi sempre. È quel «quasi» che mi tiene {g:sveglio|sveglia}.",
	},
	["muse.rain.w02.01"] = {
		"La pioggia tamburella sul cappuccio e trova il varco dietro il collo, come sempre.",
		"La pioggia trasforma ogni strada in un ruscello e ogni pensiero in un pensiero lento. Va bene: penserò piano.",
	},
	["muse.rain.w02.02"] = {
		"Pioggia. Magnifico. Lo zaino pesa il doppio e puzza di cane bagnato.",
		"Se va avanti così mi servirà una barca, altro che stivali.",
	},
	["muse.sand.w02.01"] = {
		"Sabbia fra i denti, sabbia negli stivali. Mi scuoterò questa tempesta dai vestiti per una settimana.",
		"Non si vede a dieci passi. Copriti la faccia e cammina: prima o poi il vento si stanca.",
	},
	["muse.snow.w02.01"] = {
		"si ferma a guardare la neve che scende, un fiocco lento dopo l'altro, e per un momento si scorda di avere freddo.",
		"si scrolla la neve dalle spalle, sapendo benissimo che il cielo ce la rimetterà.",
	},
	["race.dwarf.landmark.w02.01"] = {
		"{landmark}. Prima di tutto guardo su cosa poggia e di cosa è fatto. Il resto è decorazione.",
		"{landmark}. Qualcuno ha scelto questo terreno e ci si è insediato. Un nano lo rispetta prima di ogni altra cosa.",
	},
	["race.dwarf.subzone_enter.w02.01"] = {
		"batte un piede sul terreno di {subzone}, come chi bussa per sentire cosa c'è sotto.",
		"si accovaccia a sfregare tra pollice e indice un pizzico della terra di {subzone}, leggendola come un registro.",
	},
	["race.gnome.landmark.w02.01"] = {
		"{landmark}. Comincio a contare: pali, porte, comignoli, qualunque cosa ci sia. I numeri rendono meno estraneo qualsiasi posto.",
		"{landmark}. Nemmeno un ingranaggio in vista, eppure funziona. La gente è una macchina straordinaria.",
	},
	["race.gnome.subzone_enter.w02.01"] = {
		"{subzone}! Bene. Promemoria: farne una mappa dopo, come si deve, con le misure.",
		"{subzone}. Interessante. Tutto è interessante, ma questo lo è in un modo tutto suo.",
	},
	["race.human.landmark.w02.01"] = {
		"{landmark}. Qualcuno ha dato un nome a questo posto e voleva che durasse. Gli umani lo fanno ovunque si fermino: è metà della nostra storia.",
		"{landmark}. Provo a immaginare chi è passato di qui per primo, e chi gli ha dato il nome. Un vizio della mia gente: voler sapere di chi è un posto.",
	},
	["race.human.subzone_enter.w02.01"] = {
		"rallenta mettendo piede in {subzone}, e cerca con lo sguardo un cartello, una fattoria, qualunque cosa dica che qui qualcuno intende restare.",
		"entra in {subzone} e raddrizza le spalle, come fa un viandante prima di bussare alla porta di uno sconosciuto.",
	},
	["race.nightelf.landmark.w02.01"] = {
		"{landmark}. Cerco con l'orecchio la cosa più antica di questo posto; di rado sono i muri.",
		"{landmark}. I nomi cambiano più in fretta della terra che li porta. Saluto prima la terra, poi il nome.",
	},
	["race.nightelf.subzone_enter.w02.01"] = {
		"{subzone}. Piano, ora. Che mi veda prima di sentirmi.",
		"{subzone}. Ishnu-alah, a chiunque custodisca questo posto.",
	},
	["race.orc.landmark.w02.01"] = {
		"{landmark}. Prima di riposare da qualsiasi parte, ne trovo il lato debole. Le vecchie lezioni restano.",
		"{landmark}. Guardo chi lo tiene e quanto bene. Un posto tenuto male è solo un posto che aspetta il prossimo padrone.",
	},
	["race.orc.subzone_enter.w02.01"] = {
		"entrando in {subzone} fa schioccare il collo, e lo sguardo passa da un riparo all'altro, come gli orchi imparano presto a fare.",
		"annusa l'aria di {subzone} e sputa di lato, come a dire che il posto può andare.",
	},
	["race.scourge.landmark.w02.01"] = {
		"{landmark}. I vivi hanno eretto questo posto per tenere fuori qualcosa. Cerco di non prenderla come un fatto personale.",
		"{landmark}. Entro piano. Posti come questo ricordano cosa ero un tempo, anche se io non lo ricordo più.",
	},
	["race.scourge.subzone_enter.w02.01"] = {
		"{subzone}. Ancora nessuno ha urlato. Promettente.",
		"{subzone}. Silenzio. Mi piace il silenzio: non trasale.",
	},
	["race.tauren.landmark.w02.01"] = {
		"{landmark}. Entro piano, come si entra nell'accampamento di un'altra famiglia: occhi bassi, mani aperte.",
		"{landmark}. Ogni luogo con un nome ha un cuore. Lo cerco: un fuoco, un pozzo, un anziano che racconta storie.",
	},
	["race.tauren.subzone_enter.w02.01"] = {
		"si ferma ai margini di {subzone}, narici dilatate, lasciando che il vento dica ciò che sa prima di fare un altro passo.",
		"entrando in {subzone} posa ogni zoccolo con cura, come se al terreno si dovesse chiedere il permesso.",
	},
	["race.troll.landmark.w02.01"] = {
		"{landmark}. Lascio qualcosina all'ingresso per gli spiriti del posto. Non costa niente, e risparmia guai.",
		"{landmark}. Ogni posto con un nome ha uno spirito che risponde a quel nome. Lo saluto piano: una parola gentile non ha mai fatto male a nessuno.",
	},
	["race.troll.subzone_enter.w02.01"] = {
		"{subzone}. Orecchie aperte. Ogni posto ha i suoi spiriti, e tutti vogliono sapere chi sta entrando.",
		"{subzone}. Entrando canticchio un po'. Agli spiriti piace più una canzone di uno sconosciuto che si intrufola.",
	},
	["subzone_enter.clear.w02.01"] = {
		"{subzone}, e neanche una nuvola sopra. Da qui si vede ogni angolo.",
		"{subzone}. Aria limpida. Bene: qualunque cosa ci sia, la vedrò arrivare.",
	},
	["subzone_enter.day.w02.01"] = {
		"{subzone}, in piena luce. Mi prendo il tempo di guardare bene: la luce non sarà sempre così generosa.",
		"{subzone}. Giorno pieno e nessuna fretta. Per una volta le ore sembrano stare dalla mia parte.",
	},
	["muse.w04.001"] = {
		"Piede sinistro, piede destro. Le grandi imprese che ho sentito raccontare erano solo questo, con più tamburi.",
		"Togli le canzoni a una marcia eroica e resta qualcuno che mette uno stivale davanti all'altro.",
		"Ogni strada finita in una canzone è stata percorsa con passi qualunque, uno dietro l'altro.",
	},
	["muse.w04.002"] = {
		"La strada non mi chiede mai dove vado. È l'unica a non farlo.",
		"La strada non domanda il perché. Corre avanti per conto suo e mi lascia andarle dietro.",
	},
	["muse.w04.003"] = {
		"Le scorciatoie. Tutte quelle che ho preso erano giri lunghi con un nome migliore.",
		"Basta scorciatoie. Sono deviazioni che mentono sulla propria lunghezza.",
		"Una scorciatoia è una promessa fatta da qualcuno che non l'ha mai percorsa.",
	},
	["muse.w04.004"] = {
		"Certe strade di questo mondo sono più vecchie di qualsiasi regno che le rivendica. Sopravvivranno anche ai prossimi.",
		"I regni mettono il proprio nome sulle strade come i bambini incidono un tavolo. La strada nemmeno se ne accorge.",
		"Sotto ogni strada ce n'è una più vecchia, e sotto quella le prime orme di qualcuno.",
	},
	["muse.w04.005"] = {
		"Non mi serve sapere dove finisce. Mi basta il prossimo miglio, e quello di solito lo conosco.",
		"La meta può restare un mistero. Il tratto che ho davanti è tutto quello che ho mai dovuto gestire.",
	},
	["muse.w04.006"] = {
		"Camminare è facile. Fa male fermarsi, quando le gambe si ricordano cosa hanno fatto finora.",
		"Le gambe non protestano finché vanno. Si tengono tutto per quando mi fermo.",
		"Finché vai avanti il corpo si dimentica. Fermati e ti presenta il conto intero.",
	},
	["muse.w04.007"] = {
		"si volta a guardare il cammino fatto, come per misurarlo.",
		"lancia un'occhiata lunga alle proprie spalle, a soppesare la distanza percorsa.",
	},
	["muse.w04.008"] = {
		"Metà delle facce che incrocio per strada non le rivedrò mai più. Ho smesso di trovarlo triste. Quasi.",
		"La gente incontrata in viaggio è come le pagine di un libro altrui. Ne leggo una riga e lo restituisco.",
		"Tanti sconosciuti, ognuno diretto in un posto che non saprò mai. Ci si sfiora come barche senza lanterna.",
	},
	["muse.w04.009"] = {
		"Bene. Avanti, allora. Le strade non si percorrono da sole.",
		"Su. Niente si è mai avvicinato a forza di guardarlo.",
		"In piedi e via. La distanza non si accorcia per buona educazione.",
	},
	["muse.w04.010"] = {
		"Ogni mappa che ho avuto l'ha disegnata qualcuno che non ha mai dovuto percorrerla.",
		"Le mappe sono bellissime. Piatte, asciutte, e lì sopra niente ti morde.",
	},
	["muse.w04.011"] = {
		"Dopo l'ultima collina ce n'è sempre un'altra. Spero che resti vero per sempre.",
		"Il mondo tiene un orizzonte di riserva dietro ogni orizzonte. Meglio così: odierei finirli.",
	},
	["muse.w04.012"] = {
		"Trova un passo che potresti tenere tutto il giorno, e tienilo. È quasi tutto quello che so sul viaggiare.",
		"Mai il passo più svelto. Quello che reggi fino all'arrivo. Il resto sono dettagli.",
	},
	["muse.w04.017"] = {
		"si tira lo zaino più in alto sulla schiena e ascolta che cosa tintinna.",
		"sposta il peso dello zaino da una spalla all'altra, aggrottando la fronte per l'equilibrio.",
		"si tasta le tasche una dopo l'altra, come fa chi sa benissimo cosa c'è dentro.",
	},
	["muse.w04.022"] = {
		"Niente di quello che cucino in viaggio sa di altro che fumo e fretta.",
		"Il cibo di strada ha un solo sapore, qualunque cosa finisca in pentola: fumo, con un retrogusto di stanchezza.",
	},
	["muse.w04.025"] = {
		"Mangia quando puoi, bevi quando puoi, siediti quando puoi. Il resto conta meno di quanto si dica.",
		"Prima regola del viaggio: mai rinunciare all'acqua pulita. Seconda regola: vedi la prima.",
	},
	["muse.w04.026"] = {
		"spezza una crosta in due, valuta le metà e comincia dalla più grande.",
		"ripesca un tozzo di pane da una tasca, lo esamina a lungo e lo mangia lo stesso.",
		"mastica qualcosa di coriaceo con cupa ostinazione, la mascella che lavora come una macina.",
	},
	["muse.w04.030"] = {
		"soppesa la borsa in una mano, sospira e la rimette al suo posto.",
		"si versa qualche moneta nel palmo, le guarda come si guarda chi ha tradito la fiducia, e le rimette via.",
	},
	["muse.w04.044"] = {
		"si ferma a metà passo e ascolta, la testa piegata di lato, finché il momento non passa.",
		"si immobilizza per un respiro, gli occhi che frugano intorno, poi lascia andare piano il fiato.",
		"si ferma, ascolta qualcosa che sembra sentire solo {g:lui|lei}, e lascia perdere.",
	},
	["muse.w04.047"] = {
		"si sfiora il petto con due dita, un piccolo gesto privato che ha un senso solo per {g:lui|lei}.",
		"traccia un segno rapido e minuto all'altezza del cuore, troppo piccolo perché altri lo capiscano.",
	},
	["muse.w04.054"] = {
		"fa ruotare le spalle finché qualcosa dentro non scrocchia con soddisfazione.",
		"si stira con una smorfia, saggiando ogni articolazione come per contare cosa funziona ancora.",
		"fa girare piano un polso indolenzito, la mascella serrata.",
	},
	["muse.w04.057"] = {
		"Ogni sconosciuto porta una storia più pesante del suo zaino. Posso solo provare a indovinarla.",
		"Tutti quelli che incrocio hanno un posto dove andare e qualcuno a cui pensare. Fa sentire piccoli, a lasciarlo fare.",
	},
	["muse.w04.058"] = {
		"Per strada, un cenno a tutti. Metà ricambiano, e l'altra metà te la ricordi.",
		"Un cenno del capo non costa niente. Ne regalo a chiunque, e qualcuno me lo ricambia.",
	},
	["muse.w04.081"] = {
		"Non mi sono {g:perso|persa}. Sto esplorando a fondo la direzione sbagliata.",
		"Smarrimento? No. Sto facendo un rilievo accuratissimo del posto dove non dovrei essere.",
		"So benissimo dove sono. È tutto il resto che è sparito.",
	},
	["muse.w04.119"] = {
		"La buona compagnia vale una deviazione. La cattiva ne vale due.",
		"Per una buona compagnia allungo la strada di un miglio. Per evitarne una cattiva, di due.",
	},
	["muse.w04.126"] = {
		"tamburella le dita sulla cintura, tenendo il tempo di una musica che sente solo {g:lui|lei}.",
		"batte un ritmo sulla coscia, dietro a una canzone che non arriva mai fino alle labbra.",
	},
	["muse.w04.127"] = {
		"rigira tra le dita qualcosa di piccolo, senza guardarlo.",
		"fissa il vuoto per un po', il pollice che scorre piano lungo una cinghia.",
		"tormenta distrattamente un filo scucito, con lo sguardo lontanissimo.",
	},
	["muse.w04.128"] = {
		"inspira a lungo dal naso ed espira piano, come chi posa qualcosa a terra.",
		"butta fuori il fiato con forza, e le spalle scendono di un dito.",
		"prende un respiro profondo e lo trattiene un attimo prima di lasciarlo andare.",
	},
	["muse.w04.129"] = {
		"mormora un elenco a mezza voce, spuntando le voci sulle dita.",
		"conta qualcosa sulle dita, aggrotta la fronte e ricomincia da capo.",
	},
	["muse.w04.130"] = {
		"si raschia qualcosa di sgradevole dalla suola di uno stivale, senza guardare troppo da vicino cosa sia.",
		"esamina la suola di uno stivale, ci trova un buco nuovo e lo guarda con aria tradita.",
		"solleva uno stivale, ne valuta le condizioni e lo rimette giù con un grugnito rassegnato.",
	},
	["muse.w04.131"] = {
		"resta in silenzio a lungo, come se ascoltasse qualcosa di molto lontano.",
		"tace, e il silenzio sembra fatto apposta per {g:lui|lei}.",
		"lascia che le voci nella testa si spengano, e si tiene la quiete che resta.",
	},
	["muse.w04.132"] = {
		"borbotta qualcosa di irripetibile all'indirizzo di nessuno in particolare, e sembra stare meglio.",
		"rivolge al mondo intero una parolaccia breve, e pare dirla con affetto.",
	},
	["muse.w04.133"] = {
		"sfiora l'arma senza guardarla, solo per accertarsi che sia dove deve stare.",
		"posa un attimo la mano sull'arma, come certi toccano lo stipite di una porta per buona sorte.",
		"controlla a tentoni che tutto ciò che deve essere a portata di mano lo sia davvero.",
	},
	["muse.w04.134"] = {
		"tace a lungo, con l'aria di chi rilegge una vecchia lettera che vede solo {g:lui|lei}.",
		"si raccoglie in sé per un po', come se ripercorresse una strada che ricorda solo {g:lui|lei}.",
	},
	["muse.w04.135"] = {
		"si annusa una manica, fa una smorfia e abbassa visibilmente le proprie pretese.",
		"sente il proprio odore, trasale e mantiene un contegno di grande dignità.",
	},
	["muse.w04.136"] = {
		"si siede un momento, con il sospiro profondo di chi se l'è guadagnato.",
		"si cala giù per un breve riposo, con le articolazioni che protestano fino in fondo.",
		"si concede un po' di riposo, le gambe allungate e gli stivali incrociati alle caviglie.",
	},
	["muse.w04.137"] = {
		"armeggia con una fibbia testarda, canticchiando stonato, finché quella non si arrende.",
		"ingaggia una breve lotta con una cinghia attorcigliata, e la vince di misura.",
		"tira un nodo che non vuole saperne di sciogliersi, lo rimprovera e ci prova con i denti.",
	},
	["muse.w04.138"] = {
		"piega le dita una per una, come per verificare che rispondano ancora tutte.",
		"apre e chiude piano le mani, guardandole come fossero quelle di un amico.",
	},
	["muse.w04.139"] = {
		"gira lentamente su se {g:stesso|stessa}, prendendo le misure a tutto quello che ha intorno.",
		"si guarda attorno con l'attenzione senza fretta di chi è abituato ai posti sconosciuti.",
		"fa l'inventario di ciò che ha intorno con un'unica occhiata lunga e paziente.",
	},
	["muse.w04.144"] = {
		"si concede un momento senza alcuna fretta, come se il mondo avesse accettato di aspettare.",
		"lascia cadere le spalle e respira, e basta, senza nessuna urgenza di essere altrove.",
	},
	["muse.w04.148"] = {
		"Di strada ce n'è ancora tanta. Anche di me. Vediamo chi finisce prima.",
		"Ancora molta strada. Bene. Nemmeno io ho finito.",
		"La strada non ha chiuso i conti con me, e io non li ho chiusi con lei.",
	},
	["muse.w04.150"] = {
		"Buona fortuna a chiunque stia andando dove non vorrebbe. Conosco la sensazione.",
		"A tutti quelli che sono in viaggio in questo momento: stivali sani e borsa ben stretta.",
	},
	["muse.w04.151"] = {
		"Alla strada che mi aspetta, e a tutti quelli che l'hanno consumata prima di me.",
		"I miei omaggi alle miglia che ho alle spalle. Sono state oneste, se non gentili.",
		"A chi ha camminato per primo su questo mondo, lasciando il sentiero a tutti gli altri.",
	},
	["race.dwarf.landmark.w08.001"] = {
		"{landmark}. Qualcuno ha dato un nome a questo posto. Un nano l'avrebbe inciso sopra la porta, abbastanza a fondo da sopravvivere a chi l'ha scolpito.",
		"{landmark}. I nomi dipinti sulle assi sbiadiscono. Quelli incisi nella pietra restano. Chissà di che tipo è questo.",
		"{landmark}. Bene. Un posto con un nome di solito ha un tetto, e un tetto di solito ha una cantina.",
	},
	["race.dwarf.landmark.w08.002"] = {
		"si ferma davanti a {landmark} e ne studia ogni dettaglio come un nano studia il lavoro altrui: con calma, a fondo, tenendo per sé il giudizio.",
		"prende le misure di {landmark} con uno sguardo lungo e senza fretta, come se ne contasse ogni pietra.",
		"rivolge a {landmark} un cenno breve e rispettoso, il saluto che un nano riserva a ogni luogo che porta un nome.",
	},
	["race.dwarf.muse.w08.001"] = {
		"Ogni taverna fuori da Khaz Modan versa qualcosa che chiama birra. Io la bevo per cortesia e la giudico per abitudine.",
		"La birra fatta lontano dalla montagna sa d'acqua che non ha mai dovuto farsi strada attraverso la roccia. Educata, ma leggera.",
		"Devo ancora conoscere un birraio forestiero che abbia capito che la birra andrebbe un po' masticata.",
	},
	["race.dwarf.muse.w08.002"] = {
		"Non riesco a passare accanto a un muro senza controllare la malta. Mezzo mondo sta in piedi a forza di speranza e fango.",
		"Chi ha tirato su quasi tutti i muri di questo mondo non ha mai avuto un nano a guardargli le mani. Si vede dalle giunture.",
		"Uno stipite storto mi infastidisce più di un lupo affamato. Il lupo, almeno, fa sul serio.",
	},
	["race.dwarf.muse.w08.003"] = {
		"rimette in ordine una treccia allentata e la ferma con una torsione rapida ed esperta.",
		"passa il pollice lungo una treccia, trova un nodo allentato e lo rifà senza nemmeno guardare.",
		"disfa una treccia che si è allentata e la rintreccia, rapida e stretta, come i nani fanno da più tempo di quanto chiunque ricordi.",
	},
	["race.dwarf.muse.w08.004"] = {
		"Mettimi in una grotta con una lanterna e un po' di quiete, e sarò più {g:tranquillo|tranquilla} di qualunque re sul suo trono.",
		"Roccia sopra, roccia sotto, e il mio respiro che torna indietro dalle pareti. È quanto di più simile alla pace conosca un nano.",
		"Datemi un soffitto basso e muri spessi. Altri lo chiamerebbero angusto; un nano lo chiama un abbraccio.",
	},
	["race.dwarf.muse.w08.005"] = {
		"I Wildhammer si coprono di tatuaggi e dormono accanto ai grifoni ad Aerie Peak. Parenti, certo. Che abbiano giudizio è un altro discorso.",
		"Un Wildhammer ti dirà che la montagna è una gabbia. Un Bronzebeard ti dirà che il cielo è uno spiffero. Litighiamo su questo da secoli.",
		"I Wildhammer hanno lasciato le sale profonde per le rupi degli Hinterlands. Ogni volta che ne incontro uno non so se compatirlo o invidiarlo.",
	},
	["race.dwarf.muse.w08.006"] = {
		"Anche i Dark Iron sono nani. È questa la parte che va giù peggio. Stessa testardaggine, stessa abilità, puntate dalla parte sbagliata.",
		"Sotto Blackrock, nani del nostro stesso sangue tengono accese le forge per un signore del fuoco. Preferirei affrontare un drago: un drago, almeno, non è di famiglia.",
		"Prima o poi ogni bambino nano sente parlare dei Dark Iron, e chiede la stessa cosa: perché. Nessuno ha una buona risposta, solo risposte vecchie.",
	},
	["race.dwarf.muse.w08.007"] = {
		"Se uno gnomo mi dice che una cosa è perfettamente sicura, faccio due passi indietro. Se mi dice che è pericolosa, ne faccio dieci.",
		"Per quanto voglia bene agli gnomi, non mi metto mai sottovento ai loro banchi da lavoro. L'affetto ha dei limiti, e le sopracciglia ricrescono a fatica.",
		"Gli gnomi risolvono un problema aggiungendo un razzo. I nani lo risolvono aggiungendo un muro. Ognuno dei due dà dell'avventato all'altro.",
	},
	["race.dwarf.muse.w08.008"] = {
		"Gli umani costruiscono in fretta e muoiono giovani, eppure le loro città restano in piedi. Non ho mai capito del tutto il trucco.",
		"Un umano chiama vecchia una cosa che ha visto tre re. Un nano direbbe che si è appena fatta le ossa.",
		"Gli umani vanno sempre di corsa. Con vite così brevi non li biasimo, ma potrebbero almeno lasciar fare presa alla malta.",
	},
	["race.dwarf.muse.w08.009"] = {
		"Gli elfi della notte vivono sugli alberi e la chiamano architettura. Non ho detto niente. Quasi.",
		"Diecimila anni, dicono gli elfi, e nemmeno una cantina come si deve da mostrare.",
		"Un elfo ti dirà che gli alberi ricordano. Chiedigli se ricordano anche i taglialegna, e la conversazione finisce lì.",
	},
	["race.dwarf.muse.w08.010"] = {
		"I trogg risalgono dai luoghi profondi come il marcio da una trave guasta. Qualcuno deve continuare a ricacciarli giù, e di solito è un nano.",
		"Ogni nano impara ad ascoltare i graffi sotto il pavimento. I trogg non bussano mai prima di entrare.",
		"Sotto ogni miniera, con ogni probabilità, c'è un trogg che si chiede cosa ci sia sopra. Un nano tiene la lanterna accesa anche solo per questo.",
	},
	["race.dwarf.muse.w08.011"] = {
		"La Explorers' League parla di artefici, di titani che diedero forma al mondo. Può darsi. Io vorrei comunque vedere i segni degli attrezzi.",
		"Se la League ha ragione e mani più grandi ci hanno plasmati nella pietra, la testardaggine era nella ricetta. Nessuno può farcene una colpa.",
		"Titani, dicono gli eruditi. Sono {g:un nano|una nana}: ci crederò quando avrò tenuto la prova in mano e l'avrò pesata.",
	},
	["race.dwarf.muse.w08.012"] = {
		"Mostrami una montagna qualsiasi di questo mondo e ci troverò qualcosa che mi piace. Mostrami una palude e ne riparliamo.",
		"Le montagne sono oneste. Non fingono di essere altro che una gran quantità di roccia, e non si spostano per farti un favore.",
		"Le montagne non adulano nessuno. Scalane una e saprai esattamente quanto sono forti le tue gambe. Mi piace, in una cosa.",
	},
	["race.dwarf.muse.w08.013"] = {
		"L'aria cattiva in un pozzo ha un sapore: piatto, come una moneta lasciata nell'acqua. Ogni nano lo impara prima che serva.",
		"I minatori di lungo corso giudicano una galleria da come brucia la lanterna. Una fiamma che si piega è una galleria che ha qualcosa da dire.",
		"Prima lezione del minatore: mai fidarsi di una galleria silenziosa. Seconda: mai fidarsi nemmeno di una rumorosa.",
	},
	["race.dwarf.muse.w08.014"] = {
		"Il Thandol Span scavalca una gola così profonda che lasci cadere un sasso e fai in tempo a finire un boccale prima di sentirlo arrivare. L'hanno costruito i nani. Naturalmente.",
		"Chi attraversa il Thandol Span guarda giù una volta sola e poi tiene gli occhi sull'altra sponda. I nani che l'hanno costruito guardavano giù tutti i giorni.",
	},
	["race.dwarf.muse.w08.015"] = {
		"Gli anziani parlano di Grim Batol come si parla di un amico finito male: voce bassa, frasi brevi e un cambio di argomento.",
		"Grim Batol era una rocca dei nani, un tempo. I Wildhammer la lasciarono, raccontano le storie, perché qualcosa nella pietra si era guastato. Un nano non rinuncia alla pietra a cuor leggero.",
	},
	["race.dwarf.muse.w08.016"] = {
		"Lo Stonewrought Dam trattiene un lago intero, e regge da più tempo di quasi tutti i regni. Quando ho bisogno di fidarmi di qualcosa, penso a quella diga.",
		"Gli umani chiedono perché la diga di Loch Modan non crolli. Un nano chiede perché mai dovrebbe.",
		"L'acqua è paziente, ma la pietra lo è ancora di più. La diga ne è la prova, e ogni nano di Loch Modan lo sa.",
	},
	["race.dwarf.muse.w08.017"] = {
		"{g:Basso|Bassa}? Ho l'altezza giusta. Sono gli altri che hanno esagerato.",
		"La gente alta batte la testa contro ogni trave. A me non è mai successo, e non intendo cominciare.",
		"Accanto a uno gnomo sono {g:alto|alta}. Mi premuro di stare accanto agli gnomi.",
	},
	["race.dwarf.muse.w08.018"] = {
		"Noi nani sappiamo aspettare la fine di quasi tutto: un assedio, un inverno, un re cattivo. Siamo fatti come si fanno le cantine, per il lungo buio.",
		"La fretta è per chi crede che la montagna si sposterà, se non si sbriga. Non si sposterà. Prenditi il tempo di farlo bene.",
		"I nani non mettono fretta alla pietra. C'era prima e ci sarà dopo: si merita la cortesia.",
	},
	["race.dwarf.muse.w08.019"] = {
		"Perdonare, la mia gente ci riesce. Dimenticare è un altro mestiere, e a quello nessuno di noi è mai andato a bottega.",
		"Tengo una lista. Ogni nano ne tiene una. La mia è più corta di tante, il che è segno di buon carattere, oppure di poca memoria.",
		"Chiedi a un nano se un rancore sia un peso. Ti sentirai dire che è più un cimelio: pesante, e tenuto lucido.",
	},
	["race.dwarf.muse.w08.020"] = {
		"I minatori di Khaz Modan dicono che quando uno di noi muore lontano da casa, un amico dovrebbe riportare indietro una pietra al suo posto. Non ho mai chiesto chi controlli.",
		"Un nano che cade lontano dalla montagna dovrebbe avere una pietra riportata a casa al suo posto: così dicono i minatori di Khaz Modan. Io ne chiederei una pesante.",
	},
	["race.dwarf.muse.w08.021"] = {
		"Non tutti i nani si inginocchiano davanti alla Luce. Ma ogni nano sa cosa vuol dire badare a un fuoco che non deve spegnersi, e questo è già mezza fede.",
		"Alcuni della mia gente pregano, altri imprecano, e nei momenti stretti quasi tutti fanno le due cose nello stesso fiato.",
		"La mia gente si fida di ciò che può tenere in mano. La Luce è l'unica cosa di cui molti si fidano senza tenerla in mano, e guai a chi ci sorride sopra.",
	},
	["race.dwarf.muse.w08.022"] = {
		"Contrattare con i goblin è come scavare una vena che continua a spostarsi. Qualcosa porti a casa, ma mai quello che cercavi.",
		"Il sorriso di un goblin non costa niente. Tutto quello che viene dopo il sorriso costa il doppio.",
		"Goblin e nani amano entrambi un buon affare. La differenza è che un nano vuole che anche l'altra parte se ne vada contenta. Quasi sempre.",
	},
	["race.dwarf.muse.w08.023"] = {
		"I nani hanno inventato metà dei modi esistenti per fare un gran botto, e andiamo fieri di ognuno.",
		"La polvere nera: la cosa più bella che la mia gente abbia mai versato in un barile, birra a parte. Il fumo è un regalo in più.",
		"Chiedi a un nano quanta polvere usare e la risposta è sempre «un po' di più».",
	},
	["race.dwarf.muse.w08.024"] = {
		"resta immobile per un istante, la testa inclinata, come in ascolto dello scricchiolio di una trave nel profondo della terra.",
		"posa il palmo aperto sulla superficie solida più vicina e aspetta, come un minatore che sente la vibrazione di un piccone lontano.",
	},
	["race.dwarf.muse.w08.025"] = {
		"Kharanos e la Thunderbrew Distillery. Se un giorno sparisco, cercate lì prima di tutto, e portate un boccale.",
		"A Kharanos, in questo preciso momento, qualcuno sta spillando una botte nuova di Thunderbrew, e io non ci sono. Il mondo è ingiusto.",
		"La Thunderbrew di Kharanos, dicono i nani, è il secondo miglior motivo per tornare a casa. Sul primo nessuno è d'accordo.",
	},
	["race.dwarf.muse.w08.026"] = {
		"Dun Morogh ti insegna a portarti il freddo addosso come uno zaino: smetti di accorgertene, e te ne accorgi solo quando non c'è più.",
		"Chi è cresciuto a Dun Morogh conosce la differenza fra il freddo e il gelo che morde. Quasi tutto il resto del mondo si ferma al primo.",
		"La gente delle terre calde rabbrividisce al solo nome di Dun Morogh. Un nano sente soltanto «casa», e qualcosa di caldo nel petto.",
	},
	["race.dwarf.muse.w08.027"] = {
		"alza una mano vuota come per brindare a qualcuno che non c'è, poi la riabbassa con un grugnito.",
		"si pulisce la bocca con il dorso della mano per pura abitudine, anche se non ha bevuto niente.",
		"batte due dita sulla cintura, là dove potrebbe pendere un boccale, poi si ricorda che non c'è e sospira.",
	},
	["race.dwarf.muse.w08.028"] = {
		"Basta un suono regolare e le mani cominciano a tenere il tempo, come se un'incudine le aspettasse chissà dove. Passi, uno sgocciolio, un battito.",
		"In ogni nano c'è il ritmo della forgia, dicono i fabbri: colpo, respiro, colpo. Mi sorprendo a camminare seguendolo.",
	},
	["race.dwarf.muse.w08.029"] = {
		"Dai a un nano pane, formaggio e qualcosa di scuro per mandarlo giù, e avrai un amico finché il piatto non è vuoto. Poi ti servirà altro pane.",
		"Il cibo di viaggio è cibo. Solo a Khaz Modan ti resta attaccato alle costole e ci passa la stagione.",
		"Un nano giudica una locanda dal pane. Pane molle vuol dire fornaio frettoloso, e un fornaio frettoloso è un avvertimento.",
	},
	["race.dwarf.muse.w08.030"] = {
		"Vedo una crepa nella roccia e penso: ferro, forse, o stagno. La testa di un nano non smette mai del tutto di cercare filoni.",
		"Un luccichio nella roccia e mi prudono le dita. Rame, mica o una vena ricca: non lo sai finché non guardi meglio, e un nano guarda sempre meglio.",
	},
	["race.dwarf.muse.w08.031"] = {
		"Se resto {g:zitto|zitta} troppo a lungo, controllate che stia bene. I nani sono tante cose, ma di rado silenziosi.",
		"La mia gente parla a pieni polmoni perché ha imparato a farlo sopra il fragore di una forgia. È la nostra scusa, e ce la teniamo.",
		"Sussurrare è un'abilità di cui i nani hanno sentito parlare. Solo che non ne abbiamo mai visto l'utilità.",
	},
	["race.dwarf.muse.w08.032"] = {
		"I nani e l'acqua profonda vanno d'accordo come ci va la pietra: affondiamo, e non ci lamentiamo.",
		"Le barche. Un pavimento che si muove e un tetto fatto di cielo. Non riesco a immaginare casa peggiore.",
		"I nani hanno attraversato i mari quando hanno dovuto, raccontano gli anziani, e una volta a terra hanno baciato la pietra dell'altra sponda.",
	},
	["race.dwarf.muse.w08.033"] = {
		"Ironforge ha impegnato i suoi martelli con l'Alleanza quando sono arrivati gli orchi, e non li ha più ritirati. La parola di un nano pesa più dell'oro di molti re.",
		"Siamo stati al fianco degli umani nella Seconda Guerra perché gli orchi erano nelle nostre montagne. Restiamo perché una promessa non arrugginisce.",
	},
	["race.dwarf.muse.w08.034"] = {
		"Quando gli orchi tenevano Khaz Modan, raccontano gli anziani, sfruttavano le nostre miniere e bruciavano i nostri boschi per la loro guerra. Certi debiti la montagna non ha smesso di contarli.",
		"I veterani che combatterono l'Orda per tutta Khaz Modan ne parlano poco, e sempre a pugni chiusi.",
	},
	["race.dwarf.muse.w08.035"] = {
		"Ho le gambe corte e il mondo è largo. Si compensa: cammino semplicemente più a lungo degli altri.",
		"Ogni strada di questo mondo l'ha misurata qualcuno con le gambe più lunghe. Ho smesso di prenderla come un'offesa personale.",
		"La gente dalle gambe lunghe va a grandi passi; i nani arrancano. Chi arranca ci arriva comunque, e con più fiato da parte.",
	},
	["race.dwarf.muse.w08.036"] = {
		"Il fumo della legna sbagliata mi ricorda quanto sono {g:lontano|lontana} da un vero fuoco di carbone. Il pino sputa; il carbone canta.",
		"I fuochi di legna sono piacevoli, ma il calore non lo tengono. A un nano il carbone manca come ad altri manca una voce.",
	},
	["race.dwarf.muse.w08.037"] = {
		"Se vale la pena farla, vale la pena farla in modo che ti sopravviva. È tutta qui la saggezza dei nani; il resto sono chiacchiere da birra.",
		"Costruiscila una volta, costruiscila bene, e lascia che siano i nipoti a litigare su chi l'ha fatta.",
		"Tutto ciò che traballa l'ha fatto qualcuno che si è fermato troppo presto. Un nano salterebbe un pasto piuttosto che fermarsi troppo presto.",
	},
	["race.dwarf.muse.w08.038"] = {
		"Un letto è un letto, ma è su un giaciglio steso sulla pietra che un nano dorme davvero. Le cose morbide mettono in sospetto la mia schiena.",
		"I materassi di piume sono un'invenzione umana, e il segno di un popolo con troppo tempo e troppo poche rocce.",
	},
	["race.dwarf.muse.w08.039"] = {
		"I Wildhammer si legano a un grifone per tutta la vita, si racconta. Chiunque abbia visto un grifone rosicchiare una cinghia della sella sa quanta pazienza ci voglia.",
		"Un Wildhammer e un grifone: due creature che preferirebbero stare in cielo e litigare con te da lassù.",
	},
	["race.dwarf.muse.w08.040"] = {
		"annusa l'aria, accigliandosi, come se cercasse di distinguere il ferro dallo stagno solo dall'odore.",
		"raccoglie un sassolino, lo rigira e se lo infila in tasca con l'aria di chi ha visto promesse anche in cose peggiori.",
		"dà un calcio a un sasso smosso, guarda come rotola e prende mentalmente nota di com'è fatto il terreno.",
	},
	["race.dwarf.muse.w08.041"] = {
		"fa ruotare le spalle come un nano prima di sollevare qualcosa di pesante, anche se non c'è niente da sollevare.",
		"fa schioccare le nocche una per una, senza fretta, come un fabbro che conta i ribattini.",
	},
	["race.dwarf.muse.w08.042"] = {
		"dà un colpetto alla borsa alla cintura per sentire il tintinnio rassicurante delle monete, poi annuisce, {g:soddisfatto|soddisfatta} della musica.",
		"soppesa la borsa sul palmo e conta le monete che contiene solo dal peso, senza aprirla.",
	},
	["race.dwarf.muse.w08.043"] = {
		"Un boccale di birra scura non cura niente. Rende solo la cura meno urgente.",
		"Medicina nanica: riposo, carne rossa e una birra scura. Se non basta, una seconda birra scura.",
		"Ogni ferita sembra più piccola dopo una birra scura. La ferita non è d'accordo, ma è in minoranza.",
	},
	["race.dwarf.muse.w08.044"] = {
		"I nani custodiscono la loro storia come le loro sale: incisa a fondo, perché nessuno possa cancellarla. Anche le parti che vorremmo.",
		"Quasi ogni nano sa recitare le gesta di un trisavolo prima ancora dei nomi dei vicini. Questione di priorità.",
	},
	["race.dwarf.muse.w08.045"] = {
		"Dal modo in cui la gente tratta la pietra si capiscono molte cose. Chi la lavora con cura, di solito, tratta allo stesso modo gli amici.",
		"Il granito non perdona niente e ricorda ogni colpo. Ho conosciuto gente così. Brava gente, quasi sempre, purché non la colpisci mai.",
	},
	["race.dwarf.muse.w08.046"] = {
		"A Ironforge, a una lunga tavolata, c'è un posto che resta caldo per ogni nano in viaggio. È a questo che serve la montagna.",
		"Per quanto lontano io vada, il portone di Ironforge resta aperto per un nano. Saperlo rende la strada più leggera.",
		"Ovunque io finisca, c'è una montagna che mi conta tra i suoi. Non tutti i viaggiatori possono dirlo.",
	},
	["race.dwarf.muse.w08.047"] = {
		"Il legno. Tutto il mondo ama il legno. Brucia, marcisce, si deforma con l'umido. Dammi un architrave di granito e durerà dieci generazioni.",
		"Gli alberi vanno bene. Gli alberi sono belli. Ma nessuno ha mai cavato da un albero qualcosa che valga la pena di tenere.",
	},
	["race.dwarf.muse.w08.048"] = {
		"Un nano non scappa dai guai. Indietreggia piano, con passo dignitoso, mentre studia come colpirli.",
		"«Ritirata» è una parola che teniamo nel vocabolario per gli ospiti.",
		"I nani hanno un detto sulla fuga. È brevissimo, e nessuno lo metterebbe per iscritto.",
	},
	["race.dwarf.muse.w08.049"] = {
		"Il mondo oltre la montagna è più silenzioso di quanto un nano si aspetti. Niente martelli nei muri, niente voci che rimbombano lungo una sala. Ci vuole un po' ad abituarsi.",
		"Lontano dalle forge, il silenzio si fa così denso che ci si potrebbe appoggiare. Un nano ha bisogno di fischiettare ogni tanto, giusto per tenerlo a bada.",
	},
	["race.dwarf.muse.w08.050"] = {
		"L'oro è bello, ma è tenero. Un nano rispetta di più il ferro e ammira l'oro di nascosto, come un vizio.",
		"La gente crede che i nani amino l'oro. Noi amiamo quello che l'oro compra: buona birra, buon acciaio e un lungo silenzio dei creditori.",
	},
	["race.dwarf.muse.w08.051"] = {
		"A parità di peso, niente nell'Alleanza solleva più di un nano. Non un cavallo, non un carro, e di certo non un elfo.",
		"Dai a un nano un barile e una rampa di scale e vedrai due talenti insieme: trasportare, e lamentarsi per tutta la salita.",
	},
	["race.dwarf.muse.w08.052"] = {
		"La pietra porta il suono più lontano dell'aria. Appoggia l'orecchio alla roccia e il mondo ti dice cosa sta arrivando: passi, acqua, a volte di peggio.",
		"I minatori dicono che la roccia parla a chi ascolta abbastanza in basso. Io ho sentito solo scricchiolii, mai parole. Forse non ascolto abbastanza in basso.",
	},
	["race.dwarf.muse.w08.053"] = {
		"I nani ingrigiscono piano e se ne lamentano in fretta.",
		"Fra i nani una treccia grigia è una medaglia. Nessuno se la guadagna stando fermo.",
		"La mia gente conta l'età in capelli grigi e in belle storie. Il secondo conto vale di più.",
	},
	["race.dwarf.muse.w08.054"] = {
		"Ogni volta che passo accanto a una rovina mi chiedo se la Explorers' League ci sia già stata. Se no, mi viene quasi voglia di prendere appunti di persona.",
		"Un muro crollato, una pietra scolpita mezza sepolta nella terra: un nano non ci passa davanti senza una lunga occhiata. La League ci ha rovinati tutti, quanto a tirare dritto.",
	},
	["race.dwarf.muse.w08.055"] = {
		"Le macchine d'assedio della Seconda Guerra uscirono dalle forge dei nani con ingranaggi gnomeschi nella pancia. Nessuno dei due popoli ammette chi abbia fatto la parte difficile.",
		"Ferro nanico e ingegno gnomesco: insieme hanno costruito cose che hanno fatto pensare due volte l'Orda. Separati, litigano sui bulloni.",
	},
	["race.dwarf.muse.w08.056"] = {
		"I nani non piangono in pubblico. Vanno a colpire qualcosa di duro per un po', poi tornano e offrono il giro successivo.",
		"Fra la mia gente il lutto ha il suono di un martello che lavora fino a tardi. Nessuno chiede cosa si stia forgiando.",
	},
	["race.dwarf.muse.w08.057"] = {
		"Per quanto lontano vada, sotto ogni strada c'è roccia. Scava abbastanza a fondo, ovunque, e arrivi alla stessa pietra che regge Ironforge. È un conforto.",
		"Il mondo è solo una pelle sottile d'erba e terra sopra una gran quantità di roccia onesta. Un nano non dimentica mai cosa c'è sotto.",
	},
	["race.dwarf.muse.w08.058"] = {
		"Predoni Dark Iron tengono Dun Modr, all'estremo nord delle Wetlands, abbastanza vicino al Thandol Span da mettere in ansia ogni nano onesto.",
		"Dun Modr ora appartiene ai Dark Iron. Una rocca nanica, tenuta da nani, e comunque una perdita. È il nostro genere di enigma.",
	},
	["race.dwarf.muse.w08.059"] = {
		"Bah. Se non si aggiusta con un martello, non valeva la pena aggiustarlo.",
		"Hmpf. Il mondo girerebbe meglio se più cose fossero costruite dai nani e meno progetti li disegnassero gli elfi.",
		"Hmpf. Gli elfi lo chiamano pazienza quando aspettano un secolo. I nani lo chiamano un pomeriggio lento.",
	},
	["race.dwarf.muse.w08.060"] = {
		"Misura due volte, colpisci una. Funziona per la pietra, per il ferro e per gran parte dei guai che incontro.",
		"Ogni apprendista di Ironforge se lo sente dire per primo: guarda la venatura prima di colpire. Ho scoperto che vale anche per le persone.",
	},
	["race.dwarf.muse.w08.061"] = {
		"I montanari pattugliano i passi di Khaz Modan in ogni stagione che le montagne sappiano scagliargli contro. Alzo un boccale per loro ogni volta che me ne ricordo.",
		"I montanari di Ironforge tengono le strade sgombre da trogg e da peggio, così tutti noi possiamo lamentarci delle strade. Un lavoro ingrato. Qualcuno dovrebbe ringraziarli.",
	},
	["race.dwarf.muse.w08.062"] = {
		"Gli umani hanno imparato da noi a scavare e a bere. In una delle due cose sono più bravi che nell'altra.",
		"I muratori di Stormwind qualche trucco l'hanno imparato dai nani. Lo ammettono, dopo il terzo boccale.",
	},
	["race.dwarf.muse.w08.063"] = {
		"Un nano dice «niente male» e intende «magnifico». I forestieri non imparano mai il cambio.",
		"Se un nano dice che il tuo lavoro è «solido», incornicialo. Complimenti più grandi non ne facciamo.",
		"Le lodi di un nano arrivano a grugniti. Un grugnito è cortesia. Due sono un grande onore. Tre, e qualcuno ti offre da bere.",
	},
	["race.dwarf.muse.w08.064"] = {
		"Dun Algaz sorveglia la strada tra Loch Modan e le Wetlands. Ogni passo di Khaz Modan ha una porta, o le rovine di una. Da noi, di una porta aperta non ci si è mai fidati.",
		"Khaz Modan è una terra di porte: sui passi, sulle dighe, sulle miniere. A un nano piace sapere da che parte della porta stanno i guai.",
	},
	["race.dwarf.muse.w08.065"] = {
		"Le stelle. Graziose. I minatori di Dun Morogh dicono che ognuna è una lanterna che qualcuno ha dimenticato di spegnere.",
		"Un cielo intero di lucine, e nessuna che scaldi. Gli elfi se le tengano: io preferisco un braciere.",
	},
	["race.dwarf.muse.w08.066"] = {
		"Neve. Finalmente un tempo che sa quello che fa.",
		"Neve sotto i piedi e freddo nei polmoni. In qualunque angolo del mondo, la neve fa pensare a un nano che la valle accanto possa essere Dun Morogh.",
	},
	["race.dwarf.muse.w08.067"] = {
		"Pioggia. In una sala come si deve, l'acqua passa dal soffitto solo se qualcuno l'ha scavato male.",
		"Acqua che cade dal cielo, e nessun soffitto a fermarla. Il mondo di superficie non ha proprio pensato a tutto.",
	},
	["race.dwarf.muse.w08.068"] = {
		"Roccia sopra la testa, finalmente. Le spalle mi scendono di un dito, come agli altri quando vedono il cielo.",
		"Gallerie e pietra. Gli altri scrutano il buio; io leggo le pareti.",
	},
	["race.dwarf.muse.w08.069"] = {
		"Foresta tutt'intorno e nemmeno una pietra degna di questo nome. Mi sento come un pesce su un tavolo.",
		"Alberi, radici, altri alberi. Delizioso per gli elfi. Per un nano è come vivere dentro un'insalata enorme.",
	},
	["race.dwarf.muse.w08.070"] = {
		"Terreno ripido e roccia nuda. Ogni catena così è parente di Khaz Modan, e un nano saluta i parenti.",
		"Le gambe riconoscono una pendenza così prima di me. L'aria di montagna ha lo stesso sapore ovunque la respiri: di pietra e di casa.",
	},
	["race.dwarf.muse.w08.071"] = {
		"Sabbia. Pietra che si è arresa. Non riesco a rispettarla.",
		"Polvere, caldo e nemmeno una cantina fresca per leghe. Un nano nel deserto è un barile lasciato al sole.",
	},
	["race.dwarf.muse.w08.072"] = {
		"Fango fino alle ginocchia. Per un nano vuol dire fango fino alla cintura, e ringrazio in anticipo chi eviterà di farlo notare.",
		"Palude. Il terreno non regge un passo, figurarsi un muro. Non mi sono mai {g:fidato|fidata} di una terra che si muove quando ci stai sopra.",
	},
	["race.dwarf.muse.w08.073"] = {
		"Le rune dei nani sono tutte linee dritte, dicono gli scribi di Ironforge, perché erano pensate per essere incise, non dipinte. Persino le nostre lettere sono fatte per durare.",
		"La firma di un nano è un segno inciso in qualcosa di duro. L'inchiostro è per chi si aspetta di cambiare idea.",
	},
	["race.dwarf.muse.w08.074"] = {
		"Darnassus è a un lungo viaggio in nave e a una salita ancora più lunga da qualunque pietra onesta. Dicono che sia bellissima. Lo dicono anche delle nuvole.",
		"Gli elfi costruiscono la loro città su un albero, su un'isola ai margini del mondo. I nani la costruiscono dentro una montagna. Ognuno pensa che l'altro si stia nascondendo.",
	},
	["race.dwarf.muse.w08.075"] = {
		"Quando un nano si fa silenzioso davanti a un boccale, lascialo stare. Non tiene il broncio. Sta risolvendo qualcosa, piano, come noi lavoriamo la pietra.",
		"Certi pensieri vanno lavorati a freddo, colpo dopo colpo, senza un fuoco che li renda facili.",
	},
	["race.dwarf.muse.w08.076"] = {
		"I calzolai nani mettono la doppia suola a tutto. Altrove la chiamano pesantezza. Noi la chiamiamo lavoro finito.",
		"Un buon paio di stivali sopravvive a tre strade e a due litigi con il calzolaio. Qualunque nano te lo dirà.",
	},
	["race.dwarf.subzone_enter.w08.001"] = {
		"fa scorrere una mano sulla trave o sulla pietra più vicina ai margini di {subzone}, giudicando il lavoro solo al tatto.",
		"abbraccia {subzone} con uno sguardo e, prima di ogni altra cosa, guarda su cosa poggia.",
		"entra in {subzone} con l'occhio socchiuso dell'artigiano, come se stimasse l'intero posto a carrettate.",
	},
	["race.dwarf.subzone_enter.w08.002"] = {
		"{subzone}. Prima domanda: dove metterei una porta se dovessi tenere questo posto. Seconda: dov'è la birra.",
		"{subzone}. Pietra buona o cattiva, lo saprò entro una dozzina di passi.",
		"{subzone}. Se qualcuno qui fa la birra, lo troverò. Il naso di un nano per la birra è un'ottima guida.",
	},
	["race.dwarf.subzone_enter.w08.003"] = {
		"{subzone}. Mh. Visto di più solido. Visto di peggio.",
		"{subzone}. Può andare, purché non mi crolli niente in testa.",
		"{subzone}. Un paio di nani a raddrizzarlo non gli farebbero male.",
	},
	["race.dwarf.subzone_enter.w08.004"] = {
		"{subzone}. Sotto ogni nome sulla mappa c'è roccia a cui non è mai importato come la chiamassero.",
		"{subzone}. In superficie i nomi vanno e vengono. Giù nella pietra non è cambiato niente da un'era.",
		"{subzone}. Ogni luogo poggia su luoghi più antichi. Un nano ne sente il peso, di tutti quanti.",
	},
	["race.dwarf.subzone_enter.w08.005"] = {
		"si guarda intorno a lungo: lo sguardo va prima al terreno, poi a qualunque cosa possa fare da riparo, poi, con speranza, a qualunque cosa somigli a una taverna.",
		"valuta il posto nell'ordine dei nani: dove mettere i piedi, dove ripararsi, cosa bere.",
		"si ferma, pianta bene i talloni e ci si dondola sopra una volta, come per provare un'asse prima di fidarsene.",
	},
	["race.dwarf.subzone_enter.w08.006"] = {
		"{subzone}. Per abitudine controllo la pendenza del terreno. L'acqua scorre in discesa, e i guai pure.",
		"{subzone}. Da che parte cadrebbe un crollo, qui? Una domanda inutile quasi ovunque, e me la faccio lo stesso.",
		"{subzone}. Dov'è il terreno alto, dov'è quello asciutto. Poi posso cominciare a godermela.",
	},
	["race.dwarf.subzone_enter.w08.007"] = {
		"{subzone}. Un altro nome da raccontare, una volta a Ironforge.",
		"{subzone}. A Kharanos ci sarà di sicuro qualcuno che vorrà sentirne parlare.",
		"{subzone}. Vale una riga in una lettera a casa, se mai ne scriverò una.",
	},
	["race.dwarf.subzone_enter.w08.008"] = {
		"{subzone}. Se questa terra potesse parlare racconterebbe di alluvioni, terremoti e lente ere. La roccia è una pettegola scarsa, ma onesta.",
		"{subzone}. Gli strati sotto i miei stivali ci hanno messo più tempo a depositarsi di quanto sia durato qualunque regno.",
	},
	["race.dwarf.subzone_enter.w08.009"] = {
		"alza gli occhi verso qualunque cosa faccia da soffitto a {subzone}, e pare trovarla insufficiente.",
		"osserva {subzone} con un lento cenno del capo, quello che un muratore riserva a un lavoro appena accettabile.",
	},
	["race.dwarf.subzone_enter.w08.010"] = {
		"{subzone}. Qualcuno ci ha scavato, un tempo, o avrebbe dovuto.",
		"{subzone}. Terreno solido o no? I talloni di un nano vogliono sempre saperlo.",
		"{subzone}. Terreno discreto. Più discreto ancora se qualcuno ci posasse qualche lastra.",
	},
	["race.dwarf.subzone_enter.w08.011"] = {
		"{subzone}. Ha l'aria del posto dove un nano assennato scaverebbe un pozzo, una galleria e una birreria, in nessun ordine particolare.",
		"{subzone}. Qua sotto c'è una cantina che aspetta solo di essere scavata. Me lo sento.",
	},
	["race.human.landmark.w08.001"] = {
		"{landmark}. Prima domanda, come sempre: chi se ne prende cura? Un posto con un nome è un posto di cui qualcuno risponde.",
		"{landmark}. Mi sorprendo a controllare lo stato delle cose: steccati, sentieri, muri. Gli umani giudicano un posto da come è tenuto.",
		"{landmark}. Chiunque risponda di questo posto, mi piacerebbe conoscerlo. Chi bada a posti così sa di solito tutto quel che vale la pena sapere sulla strada.",
	},
	["race.human.landmark.w08.002"] = {
		"si ferma a {landmark} e guarda il posto con l'occhio pratico di un umano: chi l'ha costruito, quanto è costato, e chi paga adesso.",
		"squadra {landmark} come un umano squadra il granaio del vicino: con interesse, un po' d'invidia e una stima rapida della spesa.",
		"osserva a lungo {landmark}, come per sommare il lavoro e le monete che ci sono voluti per farlo, e le mani.",
	},
	["race.human.muse.w08.001"] = {
		"Lady Katrana Prestor ha l'orecchio di tutti i nobili di corte, e nessuno sa dire con precisione dove siano le terre della sua famiglia. A Stormwind questo vale come un piccolo mistero e una grande carriera.",
		"A corte dicono che Lady Prestor sia saggia oltre la sua età. Di una persona su cui tutta la corte è d'accordo, io non mi fido mai del tutto.",
		"Il reggente governa, Lady Prestor consiglia, i nobili annuiscono. Un contadino vorrebbe sapere chi tiene davvero l'aratro.",
	},
	["race.human.muse.w08.002"] = {
		"Stromgarde resiste ancora negli Arathi Highlands, con ogre e briganti accampati nelle sue stesse strade. Gli umani non sanno quando rinunciare a una città, e meno male.",
		"Mezza Stromgarde è macerie, l'altra metà la tengono soldati che si rifiutano di chiamarla perduta. È un'aritmetica molto umana.",
		"I soldati di Stromgarde pattugliano ancora mura che hanno più buchi che pietre. Chiamala follia, se vuoi; io lo chiamo mantenere una promessa ai morti.",
	},
	["race.human.muse.w08.003"] = {
		"Lady Proudmoore ha portato la sua gente oltre l'intero mare e ha costruito Theramore in una palude. Gli umani piantano una bandiera ovunque possa attraccare una barca.",
		"Theramore: una città umana dall'altra parte dell'oceano, in un acquitrino, a due passi dall'Orda. Eppure funziona. Jaina Proudmoore dev'essere molto testarda, o molto saggia.",
		"Quando il nord è caduto, c'è chi è fuggito a sud e chi a est. Jaina Proudmoore è andata a ovest, oltre un oceano, e si è portata dietro gente bastante per una città.",
	},
	["race.human.muse.w08.004"] = {
		"Gilneas ha alzato il suo grande muro e ci ha chiuso il portone in faccia. Qualunque cosa succeda là dietro, hanno deciso da tempo che non sono affari nostri.",
		"Oltre Silverpine c'è un intero regno umano chiuso dietro un muro, e da anni non ne esce una parola. Non so decidere se sia saggezza o paura.",
		"Gilneas non voleva saperne delle nostre guerre né dei nostri profughi, e ha costruito un muro. Gli umani sanno essere generosi con gli stranieri o chiudersi a riccio; Gilneas ha scelto la seconda.",
	},
	["race.human.muse.w08.005"] = {
		"Un tempo Westfall sfamava Stormwind: grano fino all'orizzonte, granai pieni per l'autunno. Ora i campi sono dei briganti, e i golem della mietitura lavorano per loro.",
		"Un campo lasciato senza aratro per una stagione è un peccato. Westfall è abbandonata da anni, e dalla strada si vedono le erbacce che vincono.",
		"I mulini di Westfall girano ancora, e nessuno macina niente. Nessun contadino riesce a guardarli senza fare una smorfia.",
	},
	["race.human.muse.w08.006"] = {
		"A Westfall i contadini hanno formato una milizia loro, quando la corona non è arrivata. Forconi e vecchie spade contro i Defias. Starei al loro fianco prima che con metà dei nobili.",
		"La People's Militia è la risposta di un contadino a un regno che ha smesso di ascoltare: se nessuno sorveglia i campi, li sorvegliamo noi.",
		"La Milizia si raduna a Sentinel Hill con le armi che è riuscita a racimolare. L'esercito più onesto del regno.",
	},
	["race.human.muse.w08.007"] = {
		"A Redridge pescano nel lago con un occhio all'acqua e uno alle colline. Ogni tanto dalle montagne scendono gli orchi, e Lakeshire ripara i tetti e aspetta.",
		"Lakeshire è un bel paese, con un lago, un ponte e un mucchio di guai nelle colline alle spalle. Quasi tutti i paesi umani sono così, se li guardi da vicino.",
		"Redridge ha la pietra rossa, un lago limpido e gli gnoll sulle colline. Un umano ci si stabilirebbe comunque: lo facciamo sempre.",
	},
	["race.human.muse.w08.008"] = {
		"Dicono che un tempo Duskwood si chiamasse Brightwood. Poi qualcosa l'ha oscurata, e ora Darkshire tiene una ronda di contadini con lanterne e vecchie spade.",
		"A Darkshire chiudono le porte presto e tengono le lanterne accese, e nessuno la chiama superstizione. Non ad alta voce.",
		"Una foresta umana diventata buia: ecco Duskwood. Di posti così non ne abbiamo molti, e di quelli che abbiamo non parliamo.",
	},
	["race.human.muse.w08.009"] = {
		"I canali di Stormwind portano di tutto: chiatte, lenze, pettegolezzi e qualunque cosa qualcuno abbia lasciato cadere da un ponte la settimana scorsa.",
		"Lungo i muri dei canali di Stormwind i bambini pescano con spilli piegati e una pazienza enorme. È la scena più piena di speranza della città.",
		"Una città di canali è una città di ponti, e su ogni ponte di Stormwind c'è qualcuno appoggiato al parapetto che guarda l'acqua e rimanda il lavoro.",
	},
	["race.human.muse.w08.010"] = {
		"Al Trade District un sorriso non costa niente e tutto il resto costa il doppio. Adoro quel posto.",
		"Mercanteggiare è un'arte umana. I nani trattano come se scavassero, gli gnomi come se facessero i conti. Noi trattiamo come a teatro, e ognuno ha la sua parte.",
		"Un mercante di Stormwind capisce quanto pagherai prima che tu abbia finito di salutare. Lo ammiro, da lontano, con la borsa chiusa.",
	},
	["race.human.muse.w08.011"] = {
		"Le campane della cattedrale di Stormwind battono le ore per mezza città. Lontano da lì il tempo lo misuro con la fame.",
		"Ogni paese umano scandisce la giornata con una campana. Lontano da una campana ci pensa il mio stomaco, ed è meno puntuale.",
	},
	["race.human.muse.w08.012"] = {
		"In Elwynn piantano peri che non daranno frutti prima di dieci anni. Un popolo che vive poco e semina per degli sconosciuti: credo sia la cosa migliore che abbiamo.",
		"Gli umani piantano alberi alla cui ombra non si siederanno mai. Gli elfi la chiamerebbero follia. Gli elfi hanno il tempo di aspettare i propri.",
		"Ogni frutteto di Elwynn è una lettera a gente non ancora nata. Gli umani ne scrivono parecchie.",
	},
	["race.human.muse.w08.013"] = {
		"Ogni bottegaio di Stormwind ti dà il resto con un «la Luce sia con te», che abbia messo piede o no nella cattedrale quest'anno. Più che una preghiera è un'abitudine, e le abitudini tengono insieme un popolo.",
		"«Che la Luce ti protegga.» Lo dicono i fornai, le guardie, i borseggiatori. Per gli umani la Luce è una parola per salutarsi, oltre che per le cose sante.",
		"Anche chi non prega mai, nel congedarsi, dice «la Luce ti protegga». Non costa niente, ed è più caldo di un semplice addio.",
	},
	["race.human.muse.w08.014"] = {
		"Non tutti gli umani si inginocchiano quando suonano le campane. Tanti di noi tengono la testa bassa, pagano quel che devono e si fidano delle proprie mani.",
		"I sacerdoti promettono che la Luce provvederà. Per quel che vedo, la Luce provvede meglio a chi si porta dietro anche una borsa.",
		"Certi umani trovano la Luce nella cattedrale, altri in una bottiglia, altri da nessuna parte. Stormwind fa posto a tutti e tre, più o meno.",
	},
	["race.human.muse.w08.015"] = {
		"Gli elfi della notte sono entrati nell'Alleanza da poco, e ci guardano come noi guardiamo una candela: graziosa, breve, un po' preoccupante da lasciare incustodita.",
		"Gli elfi della notte ricordano cose accadute prima che esistesse una sola città umana. È difficile vincere una discussione con chi c'era.",
		"Per un elfo della notte, l'amicizia di un umano dev'essere come un'estate: bellissima, e finita prima di aver disfatto i bagagli.",
	},
	["race.human.muse.w08.016"] = {
		"Gli gnomi hanno costruito un carro che corre sotto il mare da Stormwind a Ironforge. Ci salgo e penso intensamente a tutto tranne che all'acqua sopra la testa.",
		"Il Deeprun Tram è una meraviglia, lo dicono tutti. Le meraviglie se le gode meglio chi non sa quanto vanno a fondo.",
		"Sopra la galleria del tram nuotano i pesci. Preferisco non sapere di preciso a che altezza.",
	},
	["race.human.muse.w08.017"] = {
		"Ironforge è calda, rumorosa e sa di carbone. Ogni umano che ci va torna a casa con la tosse e qualche amico nano, e passa solo la tosse.",
		"Un nano brinda alla tua salute, poi alla sua, poi a quella del barile. Gli umani non sono fatti per una fedeltà del genere.",
		"Umani e nani hanno sanguinato fianco a fianco in più di una guerra. Per questo un nano versa ancora da bere a uno sconosciuto umano.",
	},
	["race.human.muse.w08.018"] = {
		"I veterani alzano ancora il boccale ad Anduin Lothar, il Leone di Azeroth. Quando la città bruciò guidò verso nord quel che restava di Stormwind, e non riuscì mai a riportarlo a casa.",
		"I vecchi soldati pronunciano il nome di Lothar come i sacerdoti una benedizione. Un uomo che ha salvato un regno lasciandolo.",
	},
	["race.human.muse.w08.019"] = {
		"Al nord la pestilenza arrivò col grano. È questo che un popolo di contadini non riesce a superare: il pane stesso gli si è rivoltato contro.",
		"Dicono che il grano di Stratholme portasse la pestilenza, sacco dopo sacco, in ogni cucina. Da quando l'ho sentito, guardo una pagnotta in un altro modo.",
		"Per un umano il pane è sacro nel senso più semplice: non lo sprechi, lo dividi. A Lordaeron la pestilenza ne fece un'arma, e quella ferita non si è chiusa.",
	},
	["race.human.muse.w08.020"] = {
		"Anche la Scarlet Crusade è fatta di umani: un lutto con una bandiera e nessuno rimasto a fermarlo. È questo che mi fa paura di loro.",
		"Hearthglen, Tyr's Hand, il monastero: tutto in mano a gente che ha perso ogni cosa con la pestilenza e ha deciso di bruciare il resto. Un poco li capisco, ed è la parte peggiore.",
		"Ogni umano che ha perso qualcuno per la pestilenza ha sentito per un attimo la tentazione scarlatta: bruciare tutto, non fidarsi di nessuno. Quasi tutti l'abbiamo rimessa giù.",
	},
	["race.human.muse.w08.021"] = {
		"Gran parte dei Reietti un tempo era gente di Lordaeron: fornai, guardie, contadini. Non so decidere se compatirli o temerli, così faccio un po' tutte e due le cose.",
		"A Undercity cammina qualcuno che un tempo teneva bottega a Lordaeron, e magari vendeva il pane a gente i cui nipoti oggi vivono a Stormwind.",
	},
	["race.human.muse.w08.022"] = {
		"Dammi pane, una fetta di formaggio e un boccale di qualcosa che costi poco, e ti seguo in qualunque segreta vuoi. Gli umani sono facili da rifornire.",
		"Gli elfi mangiano foglie, i nani gallette dure come la roccia, e gli umani quello che c'è nella pentola, e ne chiedono un altro piatto. Siamo semplici, e ci è andata bene così.",
		"Un umano può marciare tutto il giorno con un tozzo di pane e la promessa di una cena calda. Soprattutto con la promessa.",
	},
	["race.human.muse.w08.023"] = {
		"Lo stufato di Westfall: quello che ha dato il campo, quello che entra nella pentola, e un lungo bollore lento. Ogni cucina umana ha la sua versione, e ogni cuoco giura che la sua è quella giusta.",
		"Chiedi a dieci cuochi umani come si fa uno stufato come si deve, e avrai undici risposte e una scazzottata.",
	},
	["race.human.muse.w08.024"] = {
		"Stormwind ha costruito una prigione e i prigionieri se la sono presa. Scommetto che un impiegato sta ancora compilando il rapporto.",
		"Lo Stockade è così pieno di prigionieri in rivolta che le guardie chiedono agli avventurieri di passaggio di entrare a fare ordine. È Stormwind: perfino la galera è a corto di personale.",
		"Lo Stockade: la prova di Stormwind che i guai si possono chiudere a chiave, ma non in silenzio.",
	},
	["race.human.muse.w08.025"] = {
		"All'orfanotrofio di Stormwind i bambini non mancano mai. Due guerre e una pestilenza fanno questo a un regno, e la direttrice sembra non dormire mai.",
		"Ogni guerra lascia il suo conto, e a Stormwind buona parte lo pagano i bambini dell'orfanotrofio. Una moneta lasciata lì non basta. Ma non è nemmeno niente.",
	},
	["race.human.muse.w08.026"] = {
		"Gli umani non sono il popolo più forte dell'Alleanza, né il più antico, né il più ingegnoso. Siamo quelli che si presentano comunque.",
		"Chiedi in che cosa sono bravi gli umani e avrai un'alzata di spalle. Poi guardati intorno: metà delle strade che hai fatto per arrivare qui le abbiamo costruite noi.",
	},
	["race.human.muse.w08.027"] = {
		"Gli storici di Stormwind dicono che tutti i regni umani nacquero da uno solo: Arathor, fondato da Thoradin per tenere lontani i troll. Da allora non abbiamo fatto che spartirci l'eredità.",
		"Un tempo c'era un unico impero umano, Arathor, e sette regni ne sono cresciuti come rami da un solo tronco. Alcuni rami ormai sono secchi. Il tronco giace chissà dove sotto l'erba degli Arathi.",
	},
	["race.human.muse.w08.028"] = {
		"Gli alti elfi insegnarono la magia a cento umani, quando i troll minacciavano entrambi. Ogni mago di Stormwind discende, in un certo senso, da quell'unico patto.",
		"I nostri primi incantatori impararono da mani elfiche, in una guerra contro i troll. Gli umani ci presero la mano in fretta, dicono i racconti. Troppo in fretta, secondo alcuni elfi ancora oggi.",
	},
	["race.human.muse.w08.029"] = {
		"Dalaran si nasconde sotto una cupola viola tra le colline di Alterac. I maghi là dentro dicono che stanno ricostruendo. Tutti gli altri non dicono niente, e ci girano intorno.",
		"Dalla strada, Dalaran sembra una bolla di sapone grande come una città. Se tenga il pericolo fuori o dentro, nessuno di cui mi fidi sa dirlo.",
	},
	["race.human.muse.w08.030"] = {
		"A Kul Tiras pensano che chi non sa nuotare sia mezzo morto. Forse hanno ragione: il mondo è grande, e quasi tutto bagnato.",
		"I marinai di Menethil Harbor bevono come se il mare volesse rubar loro anche la sete.",
		"I marinai di Kul Tiras camminano sui moli di Menethil come se la terra ondeggiasse, e si lamentano che non lo fa.",
	},
	["race.human.muse.w08.031"] = {
		"Southshore e Tarren Mill stanno a poche colline di distanza: un villaggio umano vivo, e uno umano morto che porta i colori dei Reietti. La strada tra i due ha visto più sangue di quanto una strada dovrebbe.",
		"A Hillsbrad i vivi e i morti si contendono le stesse fattorie. Alle mele non importa chi le raccoglie.",
	},
	["race.human.muse.w08.032"] = {
		"Ogni bambino di Elwynn cresce sentendo parlare dei coboldi nelle miniere. Rubano candele. Nessuno sa perché, e nessuno ha il coraggio di chiederglielo.",
		"Coboldi: piccoli, puzzolenti e serissimi quando si parla di candele. La seccatura più vecchia di Elwynn, e ancora un mistero.",
	},
	["race.human.muse.w08.033"] = {
		"Gli umani ingrigiscono in fretta. Qualche anno duro sulla strada e lo specchio comincia a dire la verità. Ho deciso di non discuterci.",
		"Quando un elfo ha imparato il nome di una persona, quella persona ha già i capelli grigi. Siamo un popolo di corsa, e si vede prima di tutto in faccia.",
		"Gli elfi della notte non fanno rughe, e ai nani cresce solo la barba. Agli umani vengono i segni sul viso, uno per ogni brutto inverno.",
	},
	["race.human.muse.w08.034"] = {
		"Gli umani seppelliscono i morti vicino, dietro la cappella, sotto una pietra col nome. Vogliamo poterli andare a trovare. A Duskwood, a Raven Hill, sono i morti ad aver cominciato a far visita.",
		"Mettiamo i nostri morti in fila accanto alla cappella, perché i vivi possano trovarli. È un'usanza gentile. Duskwood l'ha resa molto meno gentile.",
	},
	["race.human.muse.w08.035"] = {
		"La Luce chiede pochissimo: gentilezza, coraggio, una mano dove serve. Gli umani continuano a non arrivarci e continuano a riprovarci. Per me è fede che basta.",
		"Non so se la Luce ascolti. So cosa fa la gente quando crede che lo faccia: apre le porte, divide il pane, fa la guardia per degli sconosciuti.",
	},
	["race.human.muse.w08.036"] = {
		"conta due volte le monete nella borsa, con la cura di un popolo che il proprio pane l'ha sempre pagato.",
		"soppesa la borsa in una mano e aggrotta la fronte, facendo una piccola somma umana di pasti, riparazioni e quel che avanza.",
		"conta qualcosa sulle dita, muovendo le labbra: debiti, distanze, giorni. Gli umani contano sempre.",
	},
	["race.human.muse.w08.037"] = {
		"canticchia sottovoce qualche battuta di una canzone da taverna, poi si interrompe, un po' {g:imbarazzato|imbarazzata}, e si guarda intorno per vedere chi ha sentito.",
		"fischietta l'attacco di una canzone che sembrano conoscere in tutte le sale comuni di villaggio, e perde il motivo a metà.",
	},
	["race.human.muse.w08.038"] = {
		"si spazzola la polvere dalle maniche e si raddrizza il colletto, come se da un momento all'altro potesse spuntare qualcuno di importante.",
		"si sistema i vestiti, per quell'abitudine tutta umana di essere presentabili per nessuno in particolare.",
	},
	["race.human.muse.w08.039"] = {
		"raddrizza le spalle e riparte col passo svelto di chi appartiene a un popolo che non ha mai abbastanza tempo.",
		"allunga il passo senza volerlo, come se la fretta di un popolo dalla vita breve {g:gli|le} scendesse nelle gambe.",
	},
	["race.human.muse.w08.040"] = {
		"si appoggia all'indietro e guarda il mondo passare, come un vecchio del villaggio sulla panca fuori dall'osteria, senza niente di urgente da fare.",
		"lascia scorrere per un momento il rumore del mondo, con la pazienza di chi siede sulla soglia di casa in paese dopo il raccolto.",
	},
	["race.human.muse.w08.041"] = {
		"si ferma a stringere una cinghia e a controllare due volte ogni fibbia, con lo scrupolo di un popolo che ha imparato a sue spese che le piccole cose cedono per prime.",
		"ripassa fibbie e lacci uno per uno, un'abitudine da soldato che metà degli umani sembra condividere.",
	},
	["race.human.muse.w08.042"] = {
		"guarda indietro da dove è {g:venuto|venuta}, poi avanti, e fa il piccolo sospiro di chi ha troppe commissioni e una vita sola, e breve.",
		"si stropiccia gli occhi e borbotta l'elenco delle cose ancora da fare, la più antica preghiera umana che esista.",
	},
	["race.human.muse.w08.043"] = {
		"Un umano si fida di un cavallo prima che di un grifone, e di un grifone prima che di una macchina gnomesca. Chiamatela saggezza da stalla.",
		"Dai a un umano un cavallo e una strada, e per la primavera sarà nel regno accanto. Dagli un mechanostrider e rivorrà il cavallo.",
	},
	["race.human.muse.w08.044"] = {
		"Gli umani scrivono tutto: debiti, trattati, ricette, rancori. Non viviamo abbastanza per ricordare, e allora lasciamo che sia l'inchiostro a farlo.",
		"Stormwind va avanti a carta. Nella fortezza c'è un registro per ogni sacco di grano da quando la città è stata ricostruita.",
	},
	["race.human.muse.w08.045"] = {
		"Un villaggio umano fa festa per qualsiasi cosa: un raccolto, un matrimonio, un vitello nato pezzato. Sappiamo quanto in fretta passano i giorni buoni.",
		"Gli umani non aspettano un motivo per festeggiare. Un granaio pieno, un tetto riparato, il bambino del vicino che muove i primi passi: e fuori le panche e il vino da poco.",
		"Sappiamo quanti pochi giorni buoni contiene una vita, e non ne lasciamo passare uno senza ballare.",
	},
	["race.human.muse.w08.046"] = {
		"In un paese umano le notizie corrono più di qualsiasi corriere, e arrivano migliorate.",
		"Racconta un segreto a un umano, e prima di cena tutta la strada ne avrà una versione migliore.",
		"In un villaggio umano ogni forestiero arriva due volte: una a piedi, e una, prima, nei pettegolezzi.",
	},
	["race.human.muse.w08.047"] = {
		"L'Alleanza è nata come un'idea umana: Terenas che chiama a raccolta i regni contro l'Orda. Ora Lordaeron non c'è più, e l'idea è ancora in piedi.",
		"I re la convocarono, nani ed elfi risposero, e l'Alleanza tenne. Ogni volta che si sfilaccia, qualcuno ricorda quanto è costato cucirla.",
	},
	["race.human.muse.w08.048"] = {
		"Abbiamo perso un regno per mano dei morti e smarrito un re, e a primavera c'è sempre chi mette i semi nella terra. Chiamatela testardaggine; io la chiamo umanità.",
		"La speranza, più che una virtù, è un'abitudine da contadini. Semini, aspetti, risemini dopo la grandinata.",
		"Gli umani hanno avuto ogni motivo per smettere di credere nel domani. Continuiamo comunque ad apparecchiargli la tavola.",
	},
	["race.human.muse.w08.049"] = {
		"Chiedi la strada a una guardia di Stormwind e avrai un saluto militare, un sorriso e le indicazioni per un posto lì vicino.",
		"La guardia cittadina di Stormwind morirebbe per te senza pensarci due volte. Dare indicazioni chiare è un altro discorso.",
		"Le guardie di Stormwind sono cortesi, ben armate e sempre un po' stanche. Come il regno, a pensarci.",
	},
	["race.human.muse.w08.050"] = {
		"Un elfo può permettersi di aspettare un secolo il momento giusto. Io preferisco una mossa sbagliata oggi a una perfetta quando sarò sotto terra.",
		"La pazienza va benissimo per chi vive mille anni. Noi altri dobbiamo avere coraggio con una scadenza.",
		"Una vita umana è troppo breve per i rancori lunghi e i musi lunghi. Quasi sempre.",
	},
	["race.human.muse.w08.051"] = {
		"A Stormwind il figlio di un nobile e la figlia di un muratore possono finire nello stesso reggimento. Al reggimento non importa; alla nobiltà sì.",
		"I titoli contano moltissimo nella fortezza e niente del tutto in un fosso con uno gnoll in arrivo. La trovo una cosa confortante.",
	},
	["race.human.muse.w08.052"] = {
		"Ogni strada umana sembra passare per una Goldshire: una locanda, una forgia, un pozzo, e gente che discute del prezzo di tutto.",
		"Un incrocio, per gli umani, non resta mai vuoto: ci piantiamo una locanda e una forgia accanto. Dacci un secolo, e ogni incrocio di Azeroth avrà la sua Goldshire.",
	},
	["race.human.muse.w08.053"] = {
		"Fu uno dei nostri, Medivh, ad aprire la via agli orchi. Ogni umano con un po' di potere dovrebbe ricordarselo.",
		"Il Guardiano di Tirisfal era uno di noi, e fu lui a far entrare l'Orda in questo mondo. Gli umani allungano la mano verso il potere più in fretta di ogni altro popolo, e a volte afferrano il lato sbagliato.",
	},
	["race.human.muse.w08.054"] = {
		"I bambini umani giocano ai soldati e ai cavalieri prima di saper scrivere l'una o l'altra parola.",
		"In ogni villaggio umano c'è un bambino con una spada di legno che difende una catasta da orchi immaginari.",
		"Scommetto che in questo momento, in qualche fattoria, un bambino sta nominando cavaliere una capra col manico di una scopa. Gli umani cominciano presto con le ambizioni.",
	},
	["race.human.muse.w08.055"] = {
		"Orchi nei campi, orchi negli eserciti, e ora orchi con una nazione tutta loro oltre il mare. Agli umani è toccato cambiare opinione su di loro ogni dieci anni.",
		"L'Orda di Thrall ha una terra sua oltre il mare, ormai. Stormwind non ha ancora deciso se sia una pace o una pausa, e io nemmeno.",
	},
	["race.human.muse.w08.056"] = {
		"Gli gnomi hanno perso Gnomeregan e si sono trasferiti dai nani senza una parola di lamento. Gli umani avrebbero scritto cento lettere al re.",
		"Gli gnomi hanno perso un'intera città e continuano ad armeggiare allegri a Ironforge. Gli umani, al posto loro, starebbero ancora facendo un'inchiesta.",
	},
	["race.human.muse.w08.057"] = {
		"Le querce e le betulle di Elwynn sono alberi gentili: abbastanza alti da fare ombra alla strada, non così fitti da fartela perdere.",
		"Quasi tutte le foreste di questo mondo vogliono qualcosa da te. Elwynn vuole solo che resti sul sentiero e saluti i boscaioli.",
		"Elwynn ha lupi, coboldi e qualche bandito, ed è comunque la foresta più gentile che io conosca. La dice lunga sul resto del mondo.",
	},
	["race.human.muse.w08.058"] = {
		"Gli umani, uno per uno, non sono mai stati i più forti. Spalla a spalla, uno scudo per ogni braccio, abbiamo fermato di peggio di qualsiasi cosa questa strada possa mandarci.",
		"Da solo, un umano è una piccola cosa con una vita breve. In fila con gli altri, a tenere la posizione, un umano è un muro.",
	},
	["race.human.muse.w08.059"] = {
		"Una taverna umana è un parlamento con la birra: ogni tavolo ha un piano per il regno, e non ce ne sono due d'accordo.",
		"Metti tre umani a un tavolo d'osteria e al secondo giro avrai quattro partiti politici.",
	},
	["race.human.muse.w08.060"] = {
		"Stormwind è casa: pietra bianca, tetti blu, l'odore del pane e dell'acqua dei canali. Ovunque io sia, è questo che significa la parola.",
		"Quando dico casa intendo tetti blu sopra muri bianchi e una folla che non tace mai del tutto. Stormwind, con tutti i suoi difetti.",
		"Stormwind: la porta, il ponte con i suoi grandi guardiani di pietra, e poi il rumore di una folla che non finisce mai. Casa, insomma.",
	},
	["race.human.muse.w08.061"] = {
		"In tutto il nord ci sono rovine umane: una cappella, una fattoria, un muro intorno al nulla. Abbiamo costruito molto per gente che non esiste più.",
		"Metà delle rovine degli Eastern Kingdoms erano umane, un tempo. Costruiamo in fretta, e il mondo ci smonta altrettanto in fretta.",
		"Gli umani costruiscono di fretta e il mondo li smonta con comodo. In mezzo, c'è sempre un muratore che ha da lavorare.",
	},
	["race.human.muse.w08.062"] = {
		"Gli umani vivono di stagioni: seminare, riparare, mietere, aspettare. Anche lontano da ogni campo, una parte di me sa che mese è da quello che starebbero facendo i contadini.",
		"In viaggio conto ancora l'anno coi lavori dei campi: adesso seminano, adesso aggiustano gli steccati, adesso pregano che il raccolto regga.",
	},
	["race.human.muse.w08.063"] = {
		"Ogni umano si crede a un'impresa di distanza da un titolo. È quello che fa alzare dal letto metà di noi.",
		"A Stormwind il figlio di un contadino può diventare cavaliere, con coraggio, fortuna e una gran pazienza per le scartoffie.",
	},
	["race.human.muse.w08.064"] = {
		"Tra le rovine della capitale di Lordaeron c'è la sala del trono dove re Terenas morì per mano di suo figlio. Gli umani non raccontano questa storia ai bambini.",
		"Un principe tornò a casa vittorioso, la città gli gettò fiori, e lui uccise il padre nella sala del trono. Ogni umano sa come finì Lordaeron, e a nessuno piace pronunciare il nome di quel principe.",
	},
	["race.human.muse.w08.065"] = {
		"Uther morì difendendo ciò che restava di Lordaeron dal suo stesso principe. Ogni umano conosce la storia, e nessuno la racconta mai allo stesso modo.",
		"La Silver Hand nacque a Lordaeron, l'orgoglio dei regni umani. I suoi cavalieri ora sono dispersi, e si portano dietro l'ordine come una brace in un vaso.",
	},
	["race.human.muse.w08.066"] = {
		"Ogni pescatore tra Westfall ed Elwynn ha una storia di murloc, e tutte finiscono con una rete persa.",
		"I murloc: le uniche creature di Azeroth capaci di far imprecare un pescatore umano in tre dialetti.",
		"Il verso di un murloc arriva lontano sull'acqua. Chiedi a chiunque di Westfall: te lo rifà, male.",
	},
	["race.human.muse.w08.067"] = {
		"Gli umani non stanno bene da soli. Anche in viaggio mi sorprendo a parlare col cielo, col sentiero, con l'albero più vicino.",
		"Siamo un popolo che si affolla: ci piace vedere il fumo di un vicino all'orizzonte. Troppo tempo senza, e comincio a raccontarmi la giornata a mezza voce.",
	},
	["race.human.muse.w08.068"] = {
		"Menethil Harbor è dove vanno gli umani quando vogliono lasciare il continente: un molo, una taverna e una rocca con i piedi nella palude.",
		"Ogni nave per l'ovest parte da Menethil, un porticciolo umido dove le assi sanno di catrame e ogni marinaio ha un'opinione sulla marea.",
	},
	["race.human.muse.w08.069"] = {
		"Stormwind tiene una cantina piena di spie, lo SI:7, e fa finta di niente. Ogni regno ha i suoi pugnali; il nostro ha solo maniere migliori.",
		"Per ogni paladino nelle parate di Stormwind c'è qualcuno con un cappotto scuro, a Old Town, che tiene la parata al sicuro. Agli umani piacciono gli eroi luminosi e i protettori silenziosi.",
	},
	["race.human.muse.w08.070"] = {
		"Sotto lo Slaughtered Lamb, nel Mage Quarter, c'è chi studia cose di cui la cattedrale preferirebbe non sentir parlare. Stormwind tiene aperte tutte e due le porte, e le sorveglia con attenzione.",
		"Una cattedrale da una parte della città e una cantina piena di cerchi d'evocazione dall'altra. Gli umani hanno sempre voluto ogni tipo di potere a portata di passeggiata.",
	},
	["race.human.muse.w08.071"] = {
		"Rame per il pane, argento per un letto, oro per una spada che valga qualcosa. Un umano impara tutta l'economia prima di imparare a leggere.",
		"Ogni umano ha in testa un listino approssimativo: pane, stivali, una stanza, un guaritore. Cambia in ogni città, ed è sempre un po' troppo alto.",
	},
	["race.human.muse.w08.072"] = {
		"Prima gli orchi, poi di nuovo gli orchi, poi la pestilenza e i morti. Tre guerre in una sola vita hanno insegnato agli umani a tenere le mura rattoppate e una sacca accanto alla porta.",
		"Chiedi a qualsiasi paese umano dove scapperebbero i bambini se le campane suonassero l'allarme. Lo sanno. Tre guerre ce l'hanno insegnato.",
	},
	["race.human.muse.w08.073"] = {
		"Una strada è una promessa tra due paesi. Gli umani fanno moltissime promesse.",
		"Dovunque si stabiliscano gli umani, entro un anno arriva una strada: prima un sentiero, poi una carrareccia, poi qualcuno che chiede il pedaggio.",
		"Gli umani misurano le distanze in locande più che in miglia: quante notti ci sono tra qui e là, e quanto è buono lo stufato a ogni tappa.",
	},
	["race.human.muse.w08.074"] = {
		"Gli umani sognano in piccolo: un tetto, un campo, un nome che duri una generazione o due dopo di loro. Non è chiedere molto. Il mondo continua a rifiutarlo lo stesso.",
		"Un tetto che non perde, un campo che rende, figli che sopravvivano alle guerre. È tutto qui il sogno umano, e continuiamo a doverlo difendere con le unghie.",
	},
	["race.human.muse.w08.075"] = {
		"Se la Luce voleva gli umani pazienti, avrebbe dovuto darci vite più lunghe.",
		"Vite brevi vogliono dire collere rapide e perdoni rapidi. Accetto il patto.",
	},
	["race.human.muse.w08.076"] = {
		"L'Argent Dawn tiene la Light's Hope Chapel nel mezzo delle Plaguelands. Umani, per lo più, che si rifiutano di lasciare il nord ai morti.",
		"Nelle Plaguelands l'Argent Dawn tiene accesa una cappella tra le rovine. È il meglio di noi: una luce lasciata accesa nel posto peggiore.",
	},
	["race.human.muse.w08.077"] = {
		"Stormwind tassa tutto ciò che riesce a contare. Mi stupisce solo che nessuno abbia ancora trovato il modo di tassare le avventure.",
		"Gli umani brontolano per le tasse come i nani per il freddo: di continuo, e con un certo affetto.",
	},
	["race.human.subzone_enter.w08.001"] = {
		"{subzone}. Prima di tutto giudico il terreno, la pendenza e dove scorre l'acqua. Un umano non può fare a meno di chiedersi cosa ci crescerebbe.",
		"{subzone}. Il contadino che ogni umano si porta dentro se lo sta già chiedendo: qui attecchirebbe il grano, o solo patate e pazienza?",
		"Osservo {subzone} come la mia gente osserva qualunque terra: cosa ci crescerebbe, e chi bisognerebbe pagare per averla?",
	},
	["race.human.subzone_enter.w08.002"] = {
		"{subzone}. Di chi sarà? C'è sempre qualcuno che possiede la terra, anche quando non ci vive nessuno.",
		"{subzone}. Chi la tiene, e a chi paga le tasse? Una domanda da umani, ma qualcuno le paga sempre.",
		"{subzone}. Scommetto che in qualche cassetto c'è un atto di proprietà per questo terreno.",
	},
	["race.human.subzone_enter.w08.003"] = {
		"{subzone}. Prima cosa: dov'è il tetto più vicino, e farebbero entrare uno sconosciuto?",
		"{subzone}. L'occhio mi va a qualsiasi cosa possa tenermi il cielo lontano dalla testa per un po'. Gli umani sono gente da riparo.",
		"{subzone}. Prima il riparo, poi le opinioni. È l'ordine umano delle cose.",
	},
	["race.human.subzone_enter.w08.004"] = {
		"{subzone}. Carino. Chissà quanto costa una stanza, e se una stanza c'è.",
		"{subzone}. Mi pare già di sentire qualcuno del posto spiegarmi che il pane qui costa di più per via della strada.",
		"{subzone}. Bello. Un umano vuole sempre sapere quanto costa il bello.",
	},
	["race.human.subzone_enter.w08.005"] = {
		"{subzone}. Cerco la strada per uscire prima ancora di aver finito di entrare. Agli umani piace sapere da che parte è casa.",
		"{subzone}. Dove portano le tracce? Segui i solchi delle ruote e trovi la gente: è la mappa umana più antica che ci sia.",
		"{subzone}. Una strada consumata dai carri vuol dire commercio; un sentiero consumato dai piedi vuol dire che qualcuno abita vicino. Li leggo tutti e due.",
	},
	["race.human.subzone_enter.w08.006"] = {
		"abbraccia {subzone} con lo sguardo rapido e pratico di chi stima una fattoria in un giorno di mercato.",
		"rallenta a {subzone} e tende l'orecchio, quasi aspettandosi una campana, un cane, una voce: i suoni che gli umani chiamano compagnia.",
		"socchiude gli occhi su {subzone}, come per calcolare quante famiglie potrebbe sfamare.",
	},
	["race.human.subzone_enter.w08.007"] = {
		"{subzone}. Ci si potrebbero crescere dei figli? Lo chiedo a ogni posto. Quasi tutti rispondono «non ancora».",
		"{subzone}. Misuro ogni posto con una domanda umana: ci potrebbe vivere una famiglia senza una spada accanto alla porta?",
		"{subzone}. Abbastanza sicuro per una fattoria? Per un mercato? Gli umani danno a ogni posto un voto su questa scala.",
	},
	["race.human.subzone_enter.w08.008"] = {
		"{subzone}. Se qui ci sono mai stati umani, ci sarà una cappella o un pozzo a dimostrarlo. Se no, scoprirò presto chi c'è stato.",
		"{subzone}. Cerco un segno umano: una pietra squadrata, un palo di steccato, un'edicola della Luce. A volte c'è. Spesso no, e anche questo mi dice qualcosa.",
		"{subzone}. Cerco i nostri segni come un viandante cerca una faccia nota tra la folla.",
	},
	["race.human.subzone_enter.w08.009"] = {
		"{subzone}! Qualcuno dovrebbe metterci una locanda. Prima o poi qualcuno lo fa sempre.",
		"{subzone}. Lasciatelo dieci anni agli umani, e qui ci sarà un mercato ogni primo del mese.",
		"{subzone}. Qualcuno mi trovi la taverna. Se non c'è, toccherà a qualcuno costruirla.",
	},
	["race.human.subzone_enter.w08.010"] = {
		"{subzone}. Qualcuno mi racconterà com'era prima delle guerre. In questo mondo c'è sempre un prima.",
		"{subzone}. Mi chiedo com'era quando qui non c'era niente da temere. Gli umani se lo chiedono dappertutto.",
		"{subzone}. Quasi ogni posto ha una storia che comincia con «prima della guerra». Sto in ascolto.",
	},
	["race.nightelf.landmark.w08.001"] = {
		"{landmark}. Chiunque l'abbia costruito, conto quanti alberi è costato, e se qualcuno ne ha ripiantati.",
		"{landmark}. Un posto con un nome e uno scopo. La mia gente gli chiederebbe una cosa in più: cosa cresceva qui prima.",
		"{landmark}. Muri giovani, con ogni probabilità. Eppure qualcuno ha scelto questo punto e ci è rimasto. I kaldorei rispettano chi resta.",
	},
	["race.nightelf.landmark.w08.002"] = {
		"osserva {landmark} con l'attenzione senza fretta della sua gente, come per indovinare quanti secoli potrebbe durare.",
		"abbraccia {landmark} con uno sguardo silenzioso, che indugia su ciò che vi è di antico e scivola leggero su ciò che è nuovo.",
	},
	["race.nightelf.landmark.w08.003"] = {
		"{landmark}. Solido. Per ora.",
		"{landmark}. Costruito per durare, ti diranno. La mia gente l'ha già sentito dire.",
	},
	["race.nightelf.muse.w08.001"] = {
		"Gli umani chiamano antica una foresta che sta in piedi da duecento anni. Non ho il cuore di correggerli.",
		"Una quercia di cent'anni, mi hanno detto con orgoglio. Ho annuito. Dalle mie parti è un alberello con delle ambizioni.",
		"Per le razze giovani, vecchio vuol dire la vita di una nonna. Per la mia gente voleva dire qualcosa di molto vicino a sempre.",
	},
	["race.nightelf.muse.w08.002"] = {
		"Da Hyjal, alcuni dei nostri anziani hanno trovato i primi capelli grigi. Li sfiorano come si sfiora una cicatrice fresca.",
		"Le tempie grigie: roba da umani, pensavamo. Adesso anche i più vecchi di noi le stanno imparando, filo dopo filo.",
		"I nostri anziani non hanno mai dovuto contare gli anni. Ora qualcuno conta i capelli bianchi, e fa finta di non contarli.",
	},
	["race.nightelf.muse.w08.003"] = {
		"I nani dimostrano amicizia con un arrosto grosso come un lupacchiotto. Io prendo il pane e li ringrazio di cuore per il resto.",
		"La foresta sfama la mia gente senza tante storie: frutta, noci, un pesce quando il fiume lo concede. La cucina dei nani è tutta un'altra discussione.",
		"Pane, frutta, acqua fresca di sorgente. La mia gente banchetta in silenzio, e nessuno deve essere riportato a casa a braccia.",
	},
	["race.nightelf.muse.w08.004"] = {
		"Gli orchi hanno ucciso Cenarius ad Ashenvale. Un semidio della foresta, abbattuto da mani che non avevano mai piantato niente. Mi ripeto che quest'Orda non è quella di allora. Ci credo di rado.",
		"Cenarius percorreva le foreste di Kalimdor prima che nascesse chiunque di noi, e la scure di un orco l'ha finito. Certi debiti sono troppo grandi perché qualcuno li riscuota.",
		"Adesso l'Orda parla di onore. Cenarius resta morto.",
	},
	["race.nightelf.muse.w08.005"] = {
		"si fa immobile contro la prima chiazza d'ombra e, per un respiro, semplicemente non c'è più.",
		"lascia che il proprio contorno si sciolga nella penombra, un vecchio trucco della sua gente, e aspetta.",
		"smette del tutto di muoversi e diventa, per un battito di cuore, un'ombra fra le altre.",
	},
	["race.nightelf.muse.w08.006"] = {
		"Quando uno di noi cade, lo spirito si leva come un fuoco fatuo e torna verso i vivi. Lo trovo più consolante di qualunque tomba.",
		"Noi non ci attardiamo in forma di spettri grigi. Ce ne andiamo come piccole luci, svelte e silenziose, in cerca della strada del ritorno.",
		"Perfino i nostri spiriti conservano le buone maniere di un tempo: un po' di luce, nessun rumore, e una lunga pazienza.",
	},
	["race.nightelf.muse.w08.007"] = {
		"Per secoli i nostri druidi hanno dormito nel Sogno mentre le Sentinelle tenevano sveglia la foresta. Quando mi chiedono perché le Sentinelle siano così difficili da impressionare, rispondo con questo.",
		"I druidi dormivano e sognavano; le Sentinelle vegliavano per loro, un anno dopo l'altro. Ogni turno di guardia di oggi ha un debito con loro.",
	},
	["race.nightelf.muse.w08.008"] = {
		"L'Arcidruido Staghelm è molto sicuro di sé. La sicurezza si addice a chi guida. Vorrei solo sapere dove ne trova così tanta.",
		"Fandral Staghelm guida i druidi mentre Malfurion dorme, e lo fa con mano ferma. A qualcuno dei nostri questo rassicura; altri restano molto zitti.",
		"L'arcidruido parla a nome della foresta con grande sicurezza. La foresta, per quanto ne so, nessuno l'ha interpellata.",
	},
	["race.nightelf.muse.w08.009"] = {
		"Tyrande Whisperwind guida le Sorelle di Elune da prima che il mondo si spezzasse. Nel suo silenzio, diecimila anni stanno tutti in una persona sola.",
		"L'Alta Sacerdotessa non sembra mai stanca. Più di qualunque miracolo, è questo che chiederei a Elune.",
		"Diecimila anni alla guida del suo popolo, e Tyrande attraversa ancora il tempio come se ogni passo le fosse nuovo.",
	},
	["race.nightelf.muse.w08.010"] = {
		"Gli alti elfi sono i nipoti degli Highborne che la mia gente mandò al di là del mare. Ora Quel'Thalas è caduta. Non so cosa dobbiamo loro, ammesso che dobbiamo qualcosa. Ci penso più di quanto ammetterei.",
		"Cugini, in un certo senso: gli alti elfi si sono tenuti la magia a cui noi abbiamo rinunciato e l'hanno portata a oriente, oltre il mare. Adesso il loro regno brucia, e noi ne sentiamo parlare come della malattia di un parente lontano.",
	},
	["race.nightelf.muse.w08.011"] = {
		"I maghi umani fanno giocoleria col fuoco per strada e lo chiamano studio. La mia gente, un tempo, lo chiamava l'inizio della fine.",
		"Gli gnomi mostrano i loro incantesimi come i bambini mostrano una rana. Io sorrido con garbo e faccio due passi indietro.",
		"La mia gente ha bandito la magia arcana e ha perso comunque mezzo mondo per colpa sua. Perdonatemi se trasalisco vicino al libro di un incantatore umano.",
	},
	["race.nightelf.muse.w08.012"] = {
		"I nani ridono con tutto il corpo, come se la battuta potesse scappare altrimenti. Mi sono {g:affezionato|affezionata} a quel baccano, contro ogni istinto della mia gente.",
		"Un nano ti dice esattamente cosa pensa di te, e poi ti offre da bere. Alla mia gente serve un secolo per riuscire nell'una o nell'altra cosa.",
		"L'amicizia dei nani arriva come una frana: tutta in una volta, rumorosissima, impossibile da rifiutare. Quella dei kaldorei cresce come il muschio. Tengono entrambe.",
	},
	["race.nightelf.muse.w08.013"] = {
		"Gli gnomi hanno perso la loro città e si sono tenuti l'allegria. La mia gente ha perso le sue foreste e si è tenuta il silenzio. Non so chi abbia scelto meglio.",
		"Chiedi a uno gnomo quando riprenderanno Gnomeregan e ti risponde con una stagione. Chiedi qualunque cosa alla mia gente e ti senti dire «col tempo». La stessa speranza, misurata in un altro modo.",
		"Gli gnomi parlano più in fretta di quanto pensi la mia gente. Ho imparato ad annuire e a recuperare dopo.",
	},
	["race.nightelf.muse.w08.014"] = {
		"Fare amicizia con un umano vuol dire accettare, prima o poi, un lutto. La mia gente un tempo lo evitava. Ultimamente scopro di non volerlo evitare.",
		"Gli umani ardono vivi e brevi, come rametti secchi. Si impara comunque a sedersi vicino al fuoco.",
		"Gli amici umani invecchiano mentre stai ancora imparando a pronunciare bene il loro nome. È una lezione: fare attenzione prima.",
	},
	["race.nightelf.muse.w08.015"] = {
		"I gufi tengono gli stessi orari della mia gente e fanno le stesse poche domande. Mi sono sempre piaciuti.",
		"Un gufo gira la testa e ti guarda come se gli dovessi una risposta. Per la mia gente sono buone maniere.",
		"I gufi cacciano senza un rumore e osservano senza battere ciglio. La mia gente è stata accusata delle stesse cose, e l'ha preso per un complimento.",
	},
	["race.nightelf.muse.w08.016"] = {
		"Le fusa dei grandi felini delle Sentinelle le senti nelle costole prima ancora che nelle orecchie. Non c'è niente al mondo di più rassicurante.",
		"I cavalli sono bestie a posto. Manca loro soltanto la dignità di un grande felino che ha deciso che puoi restare.",
		"Meglio un grande felino di qualunque cavallo. Il cavallo ti porta; il felino decide di farlo.",
	},
	["race.nightelf.muse.w08.017"] = {
		"Chiedi a una vecchia sentinella della Guerra degli Antichi e ti parlerà dell'odore degli accampamenti, del colore del cielo in quell'anno, di tutto tranne che delle battaglie.",
		"Diecimila anni dalla Guerra degli Antichi, e i veterani tra noi ancora non la raccontano in ordine. Il dolore tiene un calendario tutto suo.",
		"Per le razze giovani la Guerra degli Antichi è storia; per la mia gente è una faccenda di famiglia. Alcuni dei nostri anziani c'erano, e quando se ne parla abbassano gli occhi.",
	},
	["race.nightelf.muse.w08.018"] = {
		"Darkshore non è sempre stata una costa. La mia gente ricorda quando il mare stava tutt'altrove, e ne percorre le spiagge con garbo, da ospite.",
		"Auberdine sa esattamente cosa è: un molo, qualche lanterna, e il mare che ha inghiottito la riva di un tempo. Mi piace un paese che non finge.",
		"Darkshore è grigia, umida e bellissima, come diventa bello un vecchio dolore se ci vivi accanto abbastanza a lungo.",
	},
	["race.nightelf.muse.w08.019"] = {
		"Per la mia gente l'arco è meno un'arma che un modo di stare attenti. Non colpisci ciò che non hai osservato a lungo.",
		"Un buon tiro, si dice dalle mie parti, è fatto soprattutto di attesa. La freccia è solo la parte breve, alla fine.",
		"Guarda la foglia prima del bersaglio, dice la mia gente: il vento ti dice più dell'occhio.",
	},
	["race.nightelf.muse.w08.020"] = {
		"Quando la mia gente tace per un'ora, gli umani chiedono se siamo arrabbiati. Stiamo ascoltando. È diverso.",
		"Il silenzio non è un broncio. Tra i kaldorei è metà di ogni conversazione.",
		"Non ti sto ignorando. Sto dando alle tue parole il tempo di posarsi.",
	},
	["race.nightelf.muse.w08.021"] = {
		"Nordrassil è ancora in piedi sull'Hyjal, mi dicono, segnato ma in piedi. Vorrei vederlo una volta, e ho paura di farlo.",
		"Il nostro primo Albero del Mondo è ancora sulla sua montagna, dicono, con le bruciature della battaglia nella corteccia. Certi pellegrinaggi è meglio tenerli come intenzioni.",
	},
	["race.nightelf.muse.w08.022"] = {
		"Felwood un tempo era parte dello stesso verde di Ashenvale. Ora le foglie marciscono sul ramo e i furbolg impazziscono. Una foresta si può avvelenare come un pozzo.",
		"Ho sentito cosa è diventato Felwood. La corruzione non abbatte un albero: gli insegna a crescere storto. È peggio.",
		"Alcuni dei nostri vanno a Felwood per curarla, un boschetto malato dopo l'altro. Li ammiro. Non so se riuscirei a sopportare di guardare.",
	},
	["race.nightelf.muse.w08.023"] = {
		"I satiri erano Highborne, un tempo. Qualunque patto li abbia coperti di corna e zoccoli, spero almeno che ne abbiano letto le clausole.",
		"Ogni satiro è un Highborne che ha detto sì alla voce sbagliata. Quando uno sconosciuto mi offre potere, rispondo in poche parole.",
		"Corna, zoccoli e le maniere di un Highborne andate a male. Ogni satiro è un avvertimento travestito da scherzo.",
	},
	["race.nightelf.muse.w08.024"] = {
		"Certi mesi sento Elune vicina, certi lontana. La luna fa lo stesso, e nessuno la chiama infedele.",
		"Le sacerdotesse insegnano che anche la luna nuova è lì, solo voltata dall'altra parte. Nei giorni brutti mi ci aggrappo.",
		"La luna si assottiglia fino a un filo e ogni volta torna intera. Cerco di ricordarmelo quando a sentirmi sottile sono io.",
	},
	["race.nightelf.muse.w08.025"] = {
		"Elune-adore. Che ti trovi sulle strade buie, chiunque tu sia.",
		"Elune-adore. Augurare a qualcuno la sua luce non costa nulla.",
		"Elune-adore. Cammina piano, e che lei cammini con te.",
	},
	["race.nightelf.muse.w08.026"] = {
		"Prima o poi, la mia gente perdona. Il nostro «prima o poi» ha visto finire più di una dinastia umana.",
		"Mai insultare la nonna di un elfo della notte. Può darsi che sia ancora viva, e i volti se li ricorda.",
		"Il rancore di un kaldorei non è arrabbiato. È soltanto molto, molto paziente.",
	},
	["race.nightelf.muse.w08.027"] = {
		"Ogni stagione gli accampamenti di taglialegna dei Warsong si spingono un po' più dentro Ashenvale. Le Sentinelle rispondono con le frecce; la foresta risponde più piano, ma risponde.",
		"Ashenvale adesso è un confine. La mia gente non ha mai voluto confini in una foresta, eppure eccoci qui, a difenderla tronco per tronco.",
		"I Warsong tagliano per i loro fuochi e per le loro macchine da guerra. Ogni ceppo di Ashenvale è una piccola tomba, e la mia gente lo cura come tale.",
	},
	["race.nightelf.muse.w08.028"] = {
		"Sotto il Grande Mare giace la terra che la mia gente percorreva prima che il Pozzo si squarciasse. Non guardo mai l'acqua profonda senza pensare alle strade là sotto.",
		"Il Maelstrom gira ancora dove c'era il Pozzo dell'Eternità. Diecimila anni, e la ferita non ha smesso di vorticare.",
		"I marinai temono il Maelstrom come un pericolo del mare. La mia gente lo conosce come il posto dove un tempo sorgeva la nostra capitale.",
	},
	["race.nightelf.muse.w08.029"] = {
		"Dai moli di Rut'theran l'albero riempie mezzo cielo. Da Auberdine è una sagoma sull'acqua. Più lontano di così, te lo porti dentro.",
		"Da Teldrassil ad Auberdine, da Auberdine a Menethil. Tanti viaggi della mia gente cominciano con una barca e un lungo sguardo all'albero alle spalle.",
		"Ogni volta che la barca si stacca da Rut'theran, qualcuno sul ponte si fa silenzioso e guarda l'albero finché non scompare.",
	},
	["race.nightelf.muse.w08.030"] = {
		"Stormwind è una meraviglia di pietra, e tutta la città sembra stare in guardia contro l'erba.",
		"Gli umani lastricano tutto. Poi arriva il muschio, lento ed educato, a correggerli.",
		"Le città umane sono costruite per sopravvivere a chi le costruisce. Per la mia gente è la cosa più triste che abbiano.",
	},
	["race.nightelf.muse.w08.031"] = {
		"Ironforge è calda, rumorosa e gentile, e non ha cielo. Dopo un giorno o due la mia gente si sorprende ad alzare gli occhi in cerca di qualcosa che non c'è.",
		"Pietra sopra la testa, pietra sotto i piedi. I nani lo chiamano riparo. A un elfo della notte sembra di trattenere il fiato.",
		"A Ironforge la forgia non dorme mai e nessuno sa dirti che ora sia. Per la mia gente è più dura di qualunque battaglia.",
	},
	["race.nightelf.muse.w08.032"] = {
		"canticchia sottovoce qualche nota di qualcosa di molto antico, poi lascia che il motivo si spenga a metà.",
		"mormora un frammento di una melodia antica, così piano che è quasi un respiro, e si interrompe molto prima della fine.",
	},
	["race.nightelf.muse.w08.033"] = {
		"alza gli occhi per un istante, come fa la sua gente, quasi a controllare che il cielo non si sia allontanato.",
		"piega un attimo il capo all'indietro e guarda in alto, una vecchia abitudine dei kaldorei, come per sincerarsi di qualcosa che solo {g:lui|lei} saprebbe nominare.",
	},
	["race.nightelf.muse.w08.034"] = {
		"Kaldorei: figli delle stelle. Un nome solenne per un popolo che per lo più vuole solo starsene in pace sotto un buon albero.",
		"Ci siamo dati il nome delle stelle, e poi abbiamo passato diecimila anni tra le foglie. Forse in questa frase c'è tutta la mia gente.",
		"Figli delle stelle, ci chiamiamo. Alle stelle, sospetto, nessuno l'ha mai chiesto.",
	},
	["race.nightelf.muse.w08.035"] = {
		"La pazienza della mia gente era fatta per i secoli. Questa guerra chiede giorni. Sto imparando ad avere fretta senza diventare {g:sbadato|sbadata}.",
		"La pazienza ci ha servito per millenni. Ora il mondo va al passo degli umani, e un elfo della notte che aspetta troppo trova la porta già chiusa.",
		"Mille anni per decidere, una volta, erano prudenza. Adesso sono solo troppo tardi.",
	},
	["race.nightelf.muse.w08.036"] = {
		"La gente si lamenta che gli elfi della notte siano difficili da colpire. Siamo cresciuti in foreste piene di cose con gli artigli.",
		"Schivare non è un trucco. Sono diecimila anni passati a dividere i boschi con cose che mordono.",
		"Se vuoi colpire un elfo della notte, mira a dove saremo fra un istante. Quasi tutti mirano a dove eravamo.",
	},
	["race.nightelf.muse.w08.037"] = {
		"Gli ippogrifi sono fieri, vanitosi e molto pignoli con le loro piume. Forse è per questo che vanno così d'accordo con la mia gente.",
		"Metà gufo, metà cervo, e del tutto convinto della propria bellezza. L'ippogrifo è una creatura molto kaldorei.",
		"Un ippogrifo ti porta ovunque, e dopo si assicura che tu sappia che ti ha fatto un favore.",
	},
	["race.nightelf.muse.w08.038"] = {
		"Un tempo noi kaldorei piantavamo un albero e aspettavamo di sederci alla sua ombra. Adesso piantiamo per chi verrà dopo. È il modo degli umani, ed è più difficile di quanto sembri.",
		"Un tempo un elfo della notte poteva interrare una ghianda e aspettarsi di riposare sotto la quercia. Da Hyjal piantiamo per gli altri. Mi sto ancora abituando a questa generosità.",
	},
	["race.nightelf.muse.w08.039"] = {
		"Le razze giovani dormono quando è buio e si svegliano quando c'è luce. La mia gente segue orari più interessanti, ed è molto stanca di doverli spiegare.",
		"In una locanda umana tutti cominciano a sbadigliare proprio quando un elfo della notte è sveglio davvero. Abbiamo imparato a leggere in silenzio accanto al focolare.",
	},
	["race.nightelf.muse.w08.040"] = {
		"Metà delle rovine di Kalimdor un tempo erano nostre. Le altre razze le esplorano con lanterne e picconi. Cerco di non leggere le incisioni da sopra le loro spalle.",
		"Gli esploratori chiamano rovine le nostre antiche città e ne vendono i pezzi a Ironforge. Immagino che rovine lo siano. Erano anche la cucina di qualcuno.",
		"Ogni colonna spezzata di Ashenvale l'ha scolpita qualcuno che si aspettava di vederla in piedi per sempre. Per molto tempo, aveva ragione.",
	},
	["race.nightelf.muse.w08.041"] = {
		"Elune è gentile, e le sue sacerdotesse vanno in guerra. La mia gente non ci ha mai visto una contraddizione. La misericordia ha bisogno di qualcuno che le stia davanti.",
		"Il mio popolo adora una dea della luna e della misericordia, e il suo tempio addestra arcieri. Tra i kaldorei un cuore tenero e una mano ferma non sono mai stati nemici.",
	},
	["race.nightelf.muse.w08.042"] = {
		"La Legione è entrata una volta dalla nostra stessa porta. Ogni stregone che vedo in una città dell'Alleanza lo noto, e me lo ricordo.",
		"Gli umani lasciano che gli stregoni girino per le strade con i demoni al guinzaglio. Anche la mia gente, un tempo, aveva una regina convinta di poter tenere i demoni al guinzaglio.",
		"Di un potere che arriva quando lo chiami e poi si ferma a cena, la mia gente non si fida.",
	},
	["race.nightelf.muse.w08.043"] = {
		"Eccola. Qualunque cosa sia costato il giorno, la luna gli sorge sopra lo stesso, e mi sento meno {g:solo|sola}.",
		"La lampada di Elune è accesa. Le alzo il viso come ci si volta verso un'amica che entra nella stanza.",
		"La luna è alta, e con lei si sveglia la parte più antica di me.",
	},
	["race.nightelf.muse.w08.044"] = {
		"Le stelle sono uscite. La mia gente porta il loro nome: sarebbe scortese non alzare gli occhi.",
		"Stelle sopra di noi. Tra la mia gente, guardare in alto è una specie di saluto.",
		"Guardate in alto finché potete. Le stelle non aspettano nessuno, nemmeno noi.",
	},
	["race.nightelf.muse.w08.045"] = {
		"L'alba. L'ora in cui la mia gente tirava le tende della foresta e andava a dormire. Io vado avanti, per un'abitudine presa in prestito dagli umani.",
		"Spunta il giorno, e la foresta della mia gente a quest'ora si starebbe mettendo a dormire. Il mondo in cui vivo la pensa diversamente.",
	},
	["race.nightelf.muse.w08.046"] = {
		"A Moonglade, dicono, un tauren e un elfo della notte possono dividere un sentiero e un silenzio. Lo trovo più promettente di qualunque trattato.",
		"Moonglade risponde al Cenarion Circle e a nessuna bandiera. Certi giorni penso che il resto del mondo dovrebbe governarlo una foresta.",
	},
	["race.nightelf.muse.w08.047"] = {
		"I tauren onorano la Madre Terra e camminano leggeri sul mondo. Se non stessero in compagnia degli orchi, forse la mia gente li avrebbe chiamati amici.",
		"I druidi tauren, mi dicono, hanno imparato ai piedi dello stesso semidio dei nostri. Strani cugini: un solo maestro, due lati di una guerra.",
		"Tauren e kaldorei ascoltano entrambi la terra. Non siamo d'accordo soltanto su chi debba ascoltarla accanto a noi.",
	},
	["race.nightelf.muse.w08.048"] = {
		"I Reietti camminano senza respiro e senza fine. La mia gente ha rinunciato all'eternità per salvare il mondo; a loro è stata imposta. Nessuno dei due ha avuto ciò che avrebbe scelto.",
		"Non morire non è la stessa cosa che essere immortali. Guardando i Reietti capisco un po' meglio ciò che la mia gente ha perso, e ciò che le è stato risparmiato.",
	},
	["race.nightelf.muse.w08.049"] = {
		"Noi e i troll eravamo nemici prima che gli uni o gli altri avessero scritto alcunché. Certe faide sono più vecchie degli alfabeti che le raccontano.",
		"I troll si ricordano di noi. È questo il guaio delle memorie lunghe: vanno in entrambe le direzioni.",
		"I troll avevano imperi quando la mia gente era giovane, e anche noi. Solo i rancori sono sopravvissuti a entrambi.",
	},
	["race.nightelf.muse.w08.050"] = {
		"Pioggia. La mia gente non è mai corsa al riparo. C'era prima di noi, e ha cose da dire.",
		"Un po' di pioggia non ha mai tenuto un kaldorei sotto un tetto. Tutto ciò che è verde sta bevendo: sarebbe scortese lamentarsi.",
		"Pioggia sulle spalle e sulla strada. La mia gente la chiamerebbe una conversazione, non brutto tempo.",
	},
	["race.nightelf.muse.w08.051"] = {
		"La neve è un lungo sonno per la terra. La mia gente rispetta il sonno: ne ha fatto parecchio.",
		"Neve, e tutto ciò che c'è sotto che riposa. I druidi del mio popolo lo chiamerebbero un sogno della terra.",
	},
	["race.nightelf.muse.w08.052"] = {
		"La vostra lingua è efficiente. Nella mia ci vuole un respiro intero per dire buongiorno, ed è proprio questo il punto.",
		"In darnassiano un saluto richiede un respiro intero. Nella lingua comune basta un cenno. Sto ancora decidendo quale sia più scortese.",
	},
	["race.nightelf.muse.w08.053"] = {
		"Ogni lupo, orso e cervo di Kalimdor era qui prima che la mia gente imparasse a camminare in silenzio. Noi eravamo gli allievi; loro i primi maestri della foresta.",
		"Dai cervi abbiamo imparato l'immobilità, dai gufi la vigilanza. Il resto abbiamo dovuto capirlo da soli, e si vede.",
	},
	["race.nightelf.muse.w08.054"] = {
		"Non tutti gli elfi della notte parlano con gli alberi. Alcuni di noi semplicemente li preferiscono alle persone, che è un'altra cosa.",
		"La gente crede che quelli come me siano tutti in comunione con la foresta. La maggior parte di noi sa solo dove c'è l'ombra buona.",
		"No, non posso chiedere alla quercia cosa ne pensa. Però posso indovinarlo: pensa che le stai pestando le radici.",
	},
	["race.nightelf.muse.w08.055"] = {
		"Shandris Feathermoon tiene una fortezza al largo di Feralas, lontano da qualunque nostro albero. La mia gente va dove serve, e si porta dietro il suo silenzio.",
		"Feathermoon Stronghold, sull'acqua al largo di Feralas: kaldorei su un'isola, a guardare le foreste antiche oltre le onde. Sembra proprio noi.",
	},
	["race.nightelf.muse.w08.056"] = {
		"Sì, ho sentito. Le orecchie lunghe non sono un ornamento.",
		"Sussurrate quanto volete. Le orecchie della mia gente sono fatte per foreste dove un sussurro è la cosa più rumorosa nel raggio di un miglio.",
		"Le mie orecchie sentono tutto. Le mie buone maniere fingono il contrario. Vi prego di non mettere alla prova né le une né le altre.",
	},
	["race.nightelf.muse.w08.057"] = {
		"A Darnassus le case sono costruite attorno agli alberi vivi, mai attraverso. Una piccola cortesia, ripetuta mille volte, diventa una città.",
		"La mia gente non taglia un ramo per far posto a una porta. Sposta la porta. Ci vuole più tempo, e la casa ne è più contenta.",
		"Le altre razze prima costruiscono e poi piantano un giardino. Noi troviamo un albero e gli chiediamo, più o meno, dove mettere le stanze.",
	},
	["race.nightelf.muse.w08.058"] = {
		"Le sacerdotesse dicono che Elune raccoglie i suoi figli quando cadono. Spero che sia paziente con i ritardatari. Siamo nuovi, noi, al morire.",
		"Un tempo la mia gente pensava alla morte come a qualcosa che capitava agli altri. Ora dobbiamo affidare a Elune anche questa, e la fiducia è un mestiere lento.",
		"Siamo un popolo che impara a piangere i morti come si deve, con diecimila anni di ritardo. Elune, spero, dà lezioni.",
	},
	["race.nightelf.muse.w08.059"] = {
		"si guarda intorno in cerca di qualcosa di verde, come fa la sua gente in ogni posto, e si accontenta di ciò che trova.",
		"cerca con lo sguardo qualcosa di vivo e radicato, e le spalle si sciolgono un poco se lo trova, o si irrigidiscono un poco se non lo trova.",
	},
	["race.nightelf.muse.w08.060"] = {
		"trae un lungo respiro lento, di quelli che la sua gente prende prima di dire qualcosa d'importante, e poi non dice niente.",
		"sembra sul punto di parlare, soppesa a lungo le parole alla maniera dei kaldorei, e le lascia andare senza dirle.",
		"apre la bocca per parlare, ci ripensa, e lascia che a rispondere sia un lungo silenzio kaldorei.",
	},
	["race.nightelf.muse.w08.061"] = {
		"La magia è una sete. La mia gente una volta ha bevuto a fondo dal Pozzo e per poco non ha affogato il mondo. Io tengo piccola la mia tazza.",
		"Gli Highborne non riuscivano a smettere di allungare la mano. Ogni volta che desidero troppo qualcosa, sento il vecchio monito che li riguarda.",
		"Ognuno della mia gente impara, prima o poi, la storia di una regina che voleva di più. È la prima lezione, e l'ultima.",
	},
	["race.nightelf.muse.w08.062"] = {
		"La Luce degli umani è splendente, rumorosa e dappertutto nello stesso momento. Elune preferisce farsi cercare.",
		"I sacerdoti umani parlano della Luce come se fosse sempre mezzogiorno. La dea della mia gente preferisce le ore più miti.",
		"La Luce grida il suo conforto dai campanili. Elune lascia il suo sul davanzale e aspetta.",
	},
	["race.nightelf.muse.w08.063"] = {
		"Gli Antichi che custodiscono i nostri boschi erano alberi prima di essere guerrieri. Chiedi un consiglio a uno di loro, poi torna la stagione dopo per la risposta.",
		"Tra la mia gente, la voce più lenta di ogni consiglio appartiene a chi ha la corteccia. Nessuno la interrompe.",
		"Gli Antichi sono i soldati più pazienti del mondo. Devono esserlo: non possono correre.",
	},
	["race.nightelf.muse.w08.064"] = {
		"Abbiamo perso l'immortalità, non lo scopo. Le foreste hanno ancora bisogno di custodi, e a un custode non serve l'eternità: basta il domani.",
		"L'eternità se n'è andata. E sia. Un giorno solo basta ancora per piantare qualcosa, riparare qualcosa, difendere qualcosa.",
		"Mortali, adesso. Benissimo: allora oggi conta.",
	},
	["race.nightelf.muse.w08.065"] = {
		"Al di là del mare ogni collina sembra contata e rivendicata. Kalimdor nasconde ancora qualche segreto perfino alle sue mappe.",
		"Oltre l'acqua gli umani hanno recintato la terra a campi. La mia gente lo troverebbe triste, se quei campi non fossero amati con tanta cura.",
	},
	["race.nightelf.muse.w08.066"] = {
		"Abbiate pazienza. Non intendo aspettare: intendo osservare.",
		"Correte, se dovete. Vi raggiungerò evitando i vostri errori.",
		"Piano. Quasi tutti gli errori si fanno di corsa.",
	},
	["race.nightelf.muse.w08.067"] = {
		"Prima che ci fossero strade, la mia gente si orientava con le stelle e la pendenza del terreno. Mi fido ancora di entrambe più che di un cartello.",
		"Un cartello può mentire, o essere girato da un burlone. Alle stelle nessuno è mai riuscito a fare uno scherzo simile.",
	},
	["race.nightelf.muse.w08.068"] = {
		"Dolanaar è il tipo di villaggio che la mia gente costruisce quando nessuno guarda: qualche casa fra gli alberi, un pozzo lunare, e nessuna fretta.",
		"Una locanda, un pozzo lunare, qualche Sentinella e molti alberi: a Dolanaar non serve altro, e non finge il contrario.",
	},
	["race.nightelf.muse.w08.069"] = {
		"Ishnu-alah. Sì, vuol dire salve. No, il resto non te lo insegno.",
		"Ishnu-alah. È un saluto, non un incantesimo: puoi smettere di indietreggiare.",
	},
	["race.nightelf.muse.w08.070"] = {
		"Ai miei occhi le Barrens sembrano vuote, a quelli di un tauren piene. Sospetto che abbiamo ragione entrambi.",
		"Una terra senza alberi non è vuota, la mia gente lo sta imparando piano piano. Parla soltanto una lingua che non abbiamo mai studiato.",
	},
	["race.nightelf.subzone_enter.w08.001"] = {
		"{subzone}. Per prima cosa conto gli alberi, o mi accorgo che non ce n'è nessuno da contare. In un caso o nell'altro, mi dice chi è passato di qui.",
		"{subzone}. Cerco qualcosa di radicato e più vecchio del nome. A volte è un albero; a volte se lo ricordano solo le pietre.",
		"{subzone}. Quello che cresce qui, o che non riesce a crescere, è il cartello più sincero della strada.",
	},
	["race.nightelf.subzone_enter.w08.002"] = {
		"{subzone}. Il nome suona giovane. Quasi tutti suonano così, all'orecchio di un kaldorei.",
		"{subzone}. Per le razze giovani un nome è una rivendicazione. Per la mia gente è un'ipotesi che la terra non ha ancora confermato.",
	},
	["race.nightelf.subzone_enter.w08.003"] = {
		"entra in {subzone} senza un rumore, con lo sguardo che va prima al terreno, poi a ciò che cresce, poi a ciò che è stato costruito.",
		"varca il limite di {subzone} alla maniera dei kaldorei: senza fretta, in silenzio, leggendo il posto dalle radici in su.",
	},
	["race.nightelf.subzone_enter.w08.004"] = {
		"{subzone}. Mi chiedo cosa ci fosse qui diecimila anni fa. Forse qualcosa di nostro, e di quel qualcosa, con ogni probabilità, non resta niente.",
		"{subzone}. Prima che il mondo si spezzasse, forse questa terra apparteneva all'impero della mia gente. La terra non lo dice, e io non glielo chiedo.",
		"{subzone}. La mia gente è vissuta abbastanza da vedere luoghi battezzati, ribattezzati e dimenticati. Mi chiedo quale di queste sorti attenda questo.",
	},
	["race.nightelf.subzone_enter.w08.005"] = {
		"{subzone}. Vediamo chi ci vive, e se gradisce compagnia.",
		"{subzone}. Attenti a dove mettete i piedi. Chi ci vive ha avuto il posto per primo.",
	},
	["race.nightelf.subzone_enter.w08.006"] = {
		"{subzone}. Se le razze giovani si sono stabilite qui, i sentieri correranno dritti. Le foreste non tracciano mai una linea retta; la gente che ha fretta sempre.",
		"{subzone}. Cerco i segni di mani frettolose: ceppi tagliati, staccionate dritte, pietre messe in fila. Dove mancano, sembra un benvenuto.",
		"{subzone}. La pietra posata da mani di vita breve mi sembra sempre un po' in ansia, come se sapesse di dover essere finita in fretta.",
	},
	["race.nightelf.subzone_enter.w08.007"] = {
		"{subzone}. Il cielo di Elune arriva fin qui, come arriva dappertutto. Basta questo perché nessun posto sia del tutto straniero.",
		"{subzone}. Per quanto strana sia la terra, la stessa dea veglia su di essa. Entro con questo piccolo coraggio.",
		"{subzone}. Terra sconosciuta, forse, ma non una dea sconosciuta.",
	},
	["race.nightelf.subzone_enter.w08.008"] = {
		"{subzone}. Le orecchie trovano il posto prima degli occhi: acqua o niente, vento o niente, voci o nessuna.",
		"{subzone}. Resto {g:fermo|ferma} quanto basta per sentirlo respirare. Ogni posto lo fa, se hai pazienza.",
		"{subzone}. Prima di fidarmi di un posto, lo faccio percorrere una volta alle orecchie.",
	},
	["race.nightelf.subzone_enter.w08.009"] = {
		"{subzone}. Se un tempo qui c'era una foresta, ne sentirò la mancanza prima di vederne i ceppi.",
		"{subzone}. Certi luoghi conservano la forma degli alberi che hanno perso, come un cuscino serba la forma di chi ci ha dormito. È questo che cerco.",
	},
	["race.nightelf.subzone_enter.w08.010"] = {
		"{subzone}. Niente male. Dategli qualche migliaio d'anni.",
		"{subzone}. Promette bene. Ripassiamo fra un millennio.",
		"{subzone}. Giovane, a vederlo. Quasi tutto lo è.",
	},
	["race.nightelf.subzone_enter.w08.011"] = {
		"{subzone}. Dovunque io vada, la stessa luna ci sorgerà sopra, a suo tempo. Sotto di lei la mia gente non si è mai perduta del tutto.",
		"{subzone}. Un altro nome per la mappa. Alla luna le mappe non servono, e certi giorni nemmeno a me.",
	},
	["race.nightelf.subzone_enter.w08.012"] = {
		"si ferma al limite di {subzone}, la testa inclinata, separando i suoni uno a uno prima di fare un altro passo.",
		"avanza adagio in {subzone} e lo misura con lo sguardo lungo e paziente che la sua gente riserva a ciò che intende ricordare.",
	},
	["race.tauren.landmark.w08.001"] = {
		"{landmark}. Ogni nome su questa terra l'ha dato qualcuno, e quasi sempre era una testa più basso di me.",
		"{landmark}. Battezzato da gente più piccola, come quasi tutti i posti. La terra qui sotto, sospetto, tiene per sé un nome più antico.",
		"{landmark}. Il mio popolo avrebbe chiesto alla terra come voleva chiamarsi. Gli altri scelgono e basta, e la terra sopporta.",
	},
	["race.tauren.landmark.w08.002"] = {
		"si ferma al margine di {landmark} e lo osserva con calma, come il capo di una mandria esamina un pascolo prima di guidarci gli altri.",
		"rallenta arrivando a {landmark} e lo squadra con cura, valutando quanto spazio ci sia per qualcuno della sua stazza.",
		"entra a {landmark} con lo sguardo paziente e misurato della gente delle pianure, senza perdersi niente e senza correre da nessuna parte.",
	},
	["race.tauren.muse.w08.001"] = {
		"Ogni porta del mondo è una piccola lezione di umiltà. Mi inchino davanti a quasi tutte, e le altre le pago con un livido.",
		"Gli stipiti mi hanno insegnato più cortesia di qualsiasi anziano. Si impara presto a inchinarsi, quando altrimenti si offre di farlo l'architrave.",
	},
	["race.tauren.muse.w08.002"] = {
		"Le tazze degli altri spariscono nella mia mano. Ci bevo come si tiene un uovo d'uccello: due dita, e nessun pensiero brusco.",
		"Il boccale di un goblin, per un tauren, è un sorso. Io lo faccio durare tre, per educazione, e non inganno nessuno.",
		"Le tazzine. Cosine delicate con un manico in cui il mio dito non entra. Le tengo nel palmo come l'acqua che si porta a qualcuno.",
	},
	["race.tauren.muse.w08.003"] = {
		"Sì, è una coda. No, non vuole essere tenuta. Ha opinioni precise sulle mosche, e basta.",
		"La coda serve per le mosche, non per i commenti. Grazie.",
		"Ce l'ha ogni tauren. Scaccia le mosche e si fa gli affari suoi. Vi chiederei di fare altrettanto.",
	},
	["race.tauren.muse.w08.004"] = {
		"I nostri morti riposano alle Red Rocks, in alto e all'aperto, dove il vento può andare a trovarli. Altrove nessun cimitero mi è piaciuto nemmeno la metà.",
		"Gli altri popoli chiudono i loro morti dietro muri e cancelli. I nostri stanno alle Red Rocks, con il cielo per tetto. So bene quale sceglierei.",
		"Quando penso alle fini, penso alle Red Rocks: pietra nuda, aria aperta e l'erba di Mulgore che si stende laggiù. Un buon posto dove concludere.",
	},
	["race.tauren.muse.w08.005"] = {
		"Un kodo non dimentica niente di ciò che conta per un kodo: l'acqua, l'erba, la strada di casa. Come elenco per vivere, non è male.",
		"I kodo sono lenti, lo dicono tutti. Nessuno aggiunge che un kodo non si perde mai. Io lo scambio lo farei.",
		"Guarda un vecchio kodo attraversare le pianure e non vedrai un passo sprecato. Sa dov'è l'acqua. Quasi tutti noi tiriamo ancora a indovinare.",
	},
	["race.tauren.muse.w08.006"] = {
		"Gli anziani contano la nostra storia in strade: generazioni e generazioni di cammino, con i centauri alle calcagna. Ogni passo che faccio per motivi miei, a loro sarebbe sembrato un lusso.",
		"Il mio popolo ha vagato così a lungo che il vagare era diventato una specie di casa. Adesso ne abbiamo una vera, sulle rupi, e alcuni di noi non riescono ancora a restarci.",
	},
	["race.tauren.muse.w08.007"] = {
		"Uccelli delle pianure. Tutto zampe e opinioni. Se uno di loro non ti ha mai rincorso, Mulgore non l'hai vista davvero.",
		"Mai voltare le spalle a un uccello delle pianure. Non ti farà granché male, ma farà in modo che tu non lo dimentichi.",
		"Gli uccelli delle pianure corrono come se avessero le zampe in prestito, e fossero già in ritardo per restituirle.",
	},
	["race.tauren.muse.w08.008"] = {
		"Prima di mangiare, dedico una parola alla Madre Terra. Non lunga: ha un sacco di bocche da ascoltare.",
		"Un grazie alla Madre Terra prima del cibo. Lei ha fatto l'erba, l'erba ha fatto la bestia, la bestia ha fatto la cena. Mi pare giusto cominciare da lei.",
		"Il mio popolo non mangia in silenzio. Prima una parola breve per la Madre Terra, poi il pasto, poi le chiacchiere.",
	},
	["race.tauren.muse.w08.009"] = {
		"Nelle foreste fitte l'orizzonte mi manca come manca un amico. Gli alberi vanno bene. È che mi piace vedere ciò che arriva quando è ancora a un giorno di cammino.",
		"Tra alberi stretti gli occhi cercano lontananza e trovano corteccia. Chi viene dalle pianure non smette mai di cercare il bordo del mondo.",
	},
	["race.tauren.muse.w08.010"] = {
		"I paesi caldi sono duri per un corpo fatto per i venti delle pianure. Mi porto addosso una pelliccia intera e non posso togliermela.",
		"La pelliccia è una gran cosa finché il sole non ci si appoggia sopra. Allora un tauren impara ad amare l'ombra come altri amano l'oro.",
		"In ogni terra arida che attraverso invidio un po' le razze senza pelo. Solo un po', e solo finché il vento non si fa freddo.",
	},
	["race.tauren.muse.w08.011"] = {
		"Attraverso gli zoccoli sento arrivare un carro prima di udirlo. La terra parla di continuo. È che quasi tutti portano troppo cuoio ai piedi per sentirla.",
		"Gli zoccoli non servono solo a camminare. Basta restare immobili un po', e ti dicono chi altro si muove sulla terra.",
		"La terra porta le notizie più in fretta di qualsiasi messaggero. Qualcosa di pesante si muove a un miglio, e un tauren che sta in silenzio lo sente salire su per le ossa.",
	},
	["race.tauren.muse.w08.012"] = {
		"I goblin della Venture Company trivellano Mulgore come se la terra fosse una botte da spillare. Certe ferite la terra le perdona lentamente. Io ancora più lentamente.",
		"So cosa si lascia dietro la Venture Company: ceppi, scorie e buchi dove prima sgorgava l'acqua. Per queste cose ho una memoria lunga.",
		"Ogni trivella della Venture Company a Mulgore è un chiodo piantato in una cosa viva. Il mio popolo strappa i chiodi; i goblin ne piantano altri. È una lunga discussione.",
	},
	["race.tauren.muse.w08.013"] = {
		"I Darkspear ridono di cose che io piangerei, e piangono cose di cui io riderei. Andiamo più d'accordo di quanto sembri.",
		"I troll parlano svelti, si muovono sciolti e hanno sempre una battuta pronta. Accanto a loro mi sento una collina invitata a ballare.",
		"Un troll scherza sull'orlo di un precipizio; un tauren prima controlla l'orlo. Insieme, di solito, la discesa riesce, e la discussione continua.",
	},
	["race.tauren.muse.w08.014"] = {
		"Gli orchi portano la rabbia a fior di pelle, come una brace tenuta in mano. Il mio popolo la seppellisce in fondo e la lascia raffreddare. Insieme facciamo un discreto fuoco.",
		"Un orco decide in un respiro, un tauren in una stagione. Thrall sembra sapere quando chiedere all'uno e quando all'altro.",
		"Gli orchi bruciano in fretta, i tauren durano a lungo. Mettici sulla stessa strada e arriviamo tutti e due, solo non alla stessa ora.",
	},
	["race.tauren.muse.w08.015"] = {
		"I Reietti sanno di terra di tomba e di erbe amare, e il mio naso protesta ogni volta. I nostri anziani sperano che i morti possano guarire. Io cerco di sperarlo con loro, standomene un po' sopravvento.",
		"Si dice che siano state voci tauren a parlare per i Reietti davanti all'Orda, convinte che ciò che è rotto si possa aggiustare. Certi giorni, camminando accanto a uno di loro, ci credo anch'io.",
	},
	["race.tauren.muse.w08.016"] = {
		"Mi chiedono se un tauren è difficile da sfamare. Solo per chi sta ai fornelli.",
		"Sfamare un tauren è facile. Basta una seconda pentola, e una terza per dopo.",
		"Un tauren alla tua tavola è un onore. Un tauren nella tua dispensa è un assedio.",
	},
	["race.tauren.muse.w08.017"] = {
		"passa il pollice lungo un corno, in cerca di scheggiature, come altri controllano il filo di una lama.",
		"toglie una macchia di polvere da un corno con il palmo, senza fretta, come chi riordina un piccolo altare.",
		"volta la testa per far prendere la luce a un corno e studia un graffio recente con lieve disapprovazione.",
	},
	["race.tauren.muse.w08.018"] = {
		"I conciatori di Thunder Bluff dicono che un buon tamburo è la bestia che parla ancora all'accampamento che ha sfamato. Ci penso ogni volta che i tamburi attaccano.",
		"Una pelle tesa su un telaio, e l'animale che ha sfamato un accampamento ritrova la voce. Così i conciatori delle rupi spiegano i loro tamburi, e non l'ho mai sentito spiegare meglio.",
	},
	["race.tauren.muse.w08.019"] = {
		"Quando in campo aperto arriva una raffica dal nulla, gli anziani dicono che un antenato si è fermato a squadrarci. Io mi raddrizzo un poco, non si sa mai.",
		"Un vento improvviso sull'erba è un antenato che passa, o così raccontano gli anziani. Non ci ho mai giurato. Ma quando soffia, bado alle buone maniere.",
	},
	["race.tauren.muse.w08.020"] = {
		"Tutto ciò che vale una decisione vale una dormita sopra. Due, se ha le corna.",
		"Una scelta difficile merita due dormite. Se dopo ha ancora la stessa faccia, era quella giusta.",
		"Un tauren non decide mai a stomaco vuoto o dopo un sonno corto. Quasi tutti i rimpianti cominciano da lì.",
	},
	["race.tauren.muse.w08.021"] = {
		"Le Barrens sono Mulgore a cui hanno fatto bollire via la gentilezza. Stesso cielo, stesse distanze, ma l'erba ha smesso di discutere con il sole.",
		"Uscendo da Mulgore la terra cambia idea: oro dove c'era verde, polvere dove c'era acqua. Gli zoccoli sentono la differenza prima degli occhi.",
		"Mulgore è la Madre Terra che sorride. Le Barrens sono lo stesso volto, con gli occhi socchiusi contro il sole.",
	},
	["race.tauren.muse.w08.022"] = {
		"Gli ascensori di Thunder Bluff scricchiolano come ginocchia vecchie e hanno portato ogni tauren che conosco. Mi fido di loro più che di tanti ponti costruiti da mani più piccole.",
		"Salendo la rupe in ascensore si sente tutta la città appoggiarsi alle funi. Strano che sia proprio lo scricchiolio a farmi sentire a casa.",
		"La gente piccola guarda gli ascensori di Thunder Bluff come se stessero per precipitare. Potrebbero. Da che il mio popolo li usa, semplicemente non l'hanno mai fatto.",
	},
	["race.tauren.muse.w08.023"] = {
		"Cairne ha visto più inverni di quanti qualcuno si sia preso la briga di contare, e sta ancora più dritto dei totem. Quando la stanchezza mi prende ci penso, e mi raddrizzo anch'io.",
		"Cairne porta i suoi anni come un kodo porta il carico: senza lamentarsi, e senza fingere che non pesino.",
		"Vecchio come le rupi, dice qualcuno di Cairne, e altrettanto difficile da smuovere. Il mio popolo potrebbe fare di peggio che appoggiarsi a lui. Di peggio, molto tempo fa, l'abbiamo fatto.",
	},
	["race.tauren.muse.w08.024"] = {
		"Non tutti i tauren camminano con Cairne. I Grimtotem tengono per sé i propri consigli, e li tengono affilati. È dura sorvegliare l'orizzonte con un occhio e la propria gente con l'altro.",
		"Magatha Grimtotem siede sull'Elder Rise e sorride a Cairne. Ho visto sorrisi più caldi su un lupo della prateria chino su un vitello caduto.",
	},
	["race.tauren.muse.w08.025"] = {
		"Gli anziani non parlano dei centauri con rabbia. Ne parlano come si parla di una siccità: qualcosa che è venuto, ha preso, e tornerà se ce ne dimentichiamo.",
		"A Mulgore i guerrieri più vecchi parlano dei centauri a voce piana, senza maledizioni. Quella calma mi spaventa più di qualunque grido di guerra.",
	},
	["race.tauren.muse.w08.026"] = {
		"I quilboar si costruiscono la casa con le spine e sfidano il mondo a toccarli. Capisco l'impulso. Penso solo che un recinto di rovi tenga fuori anche gli amici.",
		"I quilboar si rintanano nei rovi e drizzano le setole davanti a chiunque passi. Il mio popolo ha scelto il contrario: un luogo alto e aperto, dove tutti possono vederci arrivare, e noi vedere loro.",
	},
	["race.tauren.muse.w08.027"] = {
		"Gli zoccoli sono fatti per l'erba. Su un pavimento di pietra ogni mio passo sembra una piccola parata in arrivo.",
		"I pavimenti di pietra trasformano il mio passo in un rullo di tamburo. Camminerei in punta di piedi, se gli zoccoli sapessero come si fa.",
	},
	["race.tauren.muse.w08.028"] = {
		"Per quasi tutti i viaggiatori l'erba è solo erba. A Mulgore anche i più giovani ti sanno dire quali fili vogliono i kodo, quali lasciano, e quali vogliono dire che l'acqua è vicina.",
		"Non riesco ad attraversare un prato senza leggerlo: brucato qui, intatto là, più verde nell'avvallamento dove ristagna l'acqua. È come leggere una lettera che nessun altro vede.",
		"Mostra un campo a un tauren e ci vedrà un registro dei conti: quante bestie potrebbe sfamare, per quanto tempo, e dove ha sete.",
	},
	["race.tauren.muse.w08.029"] = {
		"Le gambe di un tauren sono la strada più antica che ci sia. Kodo, viverne, zeppelin: tutto bene, ma il mio popolo ha attraversato Kalimdor a piedi, e una parte di me pensa ancora che sia il modo onesto.",
		"C'è un modo di conoscere una terra che solo il camminare dà. I miei zoccoli ce l'hanno. Una sella non ce l'avrà mai.",
	},
	["race.tauren.muse.w08.030"] = {
		"Uno zeppelin goblin è una meraviglia, costruita da qualcuno che non ha mai dovuto pensare alle corna. Passo ogni traversata {g:piegato|piegata} come un vecchio albero.",
		"Zeppelin: costruiti da goblin, misurati sui goblin, venduti a tutti. Ogni traversata la passo {g:ripiegato|ripiegata} come una tenda.",
	},
	["race.tauren.muse.w08.031"] = {
		"Sotto la Spirit Rise ci sono le Pools of Vision. Ho sentito dire che quell'acqua mostra ciò che è nascosto. Non ho mai avuto fretta di guardarci dentro.",
		"Si dice che l'acqua sotto la Spirit Rise mostri ciò che gli occhi non vedono. Certe cose, credo, è meglio lasciarle all'acqua.",
		"Alcuni dei miei scendono alle Pools of Vision in cerca di risposte. Ho sempre pensato che una domanda debba prima essere pronta per la sua risposta.",
	},
	["race.tauren.muse.w08.032"] = {
		"I tetti sono una gentilezza, ma dormo meglio dove, svegliandomi, vedo per prima cosa il cielo. Il mio popolo ci ha dormito sotto così a lungo che mi sembra ancora la coperta giusta.",
		"Dammi una pelle per terra e il cielo aperto sopra, e dormirò come un sasso. Sotto un tetto sogno il tetto.",
	},
	["race.tauren.muse.w08.033"] = {
		"Mai discutere con un kodo sulla strada da prendere. Vincerà lui, e se la prenderà comoda.",
		"Un kodo lo puoi portare quasi ovunque. Fargli fretta è tutta un'altra faccenda.",
		"Un kodo ha due andature: lenta, e più lenta per dispetto. Regolatevi.",
	},
	["race.tauren.muse.w08.034"] = {
		"Ogni giovane tauren passa da Camp Narache e dai suoi riti: forza, visione, saggezza. La forza è stata la più facile da capire. Sulle altre due sto ancora lavorando.",
		"Narache manda i suoi giovani a dimostrare la forza, poi la visione, poi la saggezza, in quest'ordine. A volte sospetto che l'ordine fosse uno scherzo degli anziani.",
	},
	["race.tauren.muse.w08.035"] = {
		"Mulgore non è mai silenziosa: ci pensa il vento. Nei posti immobili continuo ad alzare la testa, come se qualcuno avesse smesso di parlare a metà di una parola.",
		"Da dove vengo io il vento chiacchiera tutto il giorno sull'erba. Un luogo senza vento mi mette a disagio, come una stanza dove tutti si sono appena zittiti.",
	},
	["race.tauren.muse.w08.036"] = {
		"I piccoli goblin fissano le mie corna come se potessi prestargliele. Un giorno magari mi chinerò e lascerò che uno di loro le provi. Un giorno.",
		"La gente piccola alza gli occhi verso un tauren come verso una rupe: si muoverà? e da che parte?",
		"Quasi tutti parlano al mio petto. È lì che arrivano per primi i loro occhi, e salire il resto della strada sembra stancarli.",
	},
	["race.tauren.muse.w08.037"] = {
		"Ci sono terre dove la terra è malata, e tra queste Felwood e il nord appestato oltre il mare. Starci sopra è come tenere la mano di qualcuno che ha la febbre.",
		"Cammina su un terreno avvelenato e gli zoccoli lo sanno per primi: qualcosa di storto che sale su per le ossa. Preferirei non saperne più del necessario.",
	},
	["race.tauren.muse.w08.038"] = {
		"fa rotolare le grandi spalle e si stira finché le giunture non scricchiolano come rami secchi.",
		"sposta il peso da uno zoccolo all'altro, lento come un animale di mandria che si prepara a una lunga attesa.",
		"lascia ricadere la testa per un attimo, poi la rialza, come un kodo che si scrolla di dosso un miglio.",
	},
	["race.tauren.muse.w08.039"] = {
		"sbuffa a lungo dalle larghe narici, il verso che fa un kodo quando ha deciso di non lasciarsi impressionare.",
		"sbuffa piano, un brontolio basso che viene da qualche parte in fondo al petto, e torna ad aspettare.",
	},
	["race.tauren.muse.w08.040"] = {
		"Gli intagliatori delle rupi dicono che ogni grande totem custodisce una storia, un volto sopra l'altro. A volte mi chiedo quali volti ci saranno lassù fra cent'anni.",
		"Ogni volto su un totem è la storia di qualcuno, a dar retta agli intagliatori di Thunder Bluff. A me basterebbe un volto piccolo, in basso, a reggere tutti gli altri.",
	},
	["race.tauren.muse.w08.041"] = {
		"Il mio popolo è lento all'ira e ancora più lento a dimenticarne il motivo. Io ho tutte e due le abitudini, e solo una è una virtù.",
		"Un tauren lo puoi spingere molto lontano. È fermarsi, dopo, che ci richiede un po' di tempo.",
		"Noi non divampiamo. Ci scaldiamo, come una pietra al sole, e teniamo il calore molto dopo che il sole se n'è andato.",
	},
	["race.tauren.muse.w08.042"] = {
		"Gridare non smuove la terra. A malapena smuove me.",
		"Dillo più piano. I tauren sentono meglio quando le parole non hanno fretta.",
		"Non serve alzare la voce. Sono alto, mica lontano.",
	},
	["race.tauren.muse.w08.043"] = {
		"Freewind Post sta su un ago di roccia con nient'altro intorno che aria. Solo dei tauren potevano costruire un villaggio dove il vento deve arrampicarsi per fare visita.",
		"Una parte della mia gente vive a Freewind Post, lassù sugli aghi, tra ascensori e ponti di corda. Ci piacciono i luoghi alti. Sarà il desiderio di vedere i centauri da molto lontano.",
	},
	["race.tauren.muse.w08.044"] = {
		"Il pane speziato di Mulgore viaggia male e sa di casa lo stesso. Le briciole in fondo alla bisaccia le mangio per ultime, apposta.",
		"Nessun mercato vende qualcosa di meglio del pane speziato di Mulgore, caldo, con la crosta che ancora scricchiola. Forse lo penso solo io. Ma del mio palato mi fido.",
	},
	["race.tauren.muse.w08.045"] = {
		"Nelle pianure si impara ad accogliere l'acqua come un ospite d'onore. Perfino una pozza fangosa riceve una parola da me, prima che io beva.",
		"Ogni torrente che attraverso, lo ringrazio. Il mio popolo ha passato troppo tempo a cercare l'acqua per considerarla dovuta.",
		"Una sorgente è un dono che la Madre Terra lascia a chiunque passi. Non ci bevo mai senza dirlo ad alta voce.",
	},
	["race.tauren.muse.w08.046"] = {
		"Nell'Alleanza c'è chi chiama il mio popolo bestiame. Spero di incontrarne uno, prima o poi. Voglio vedere che faccia fa quando il bestiame risponde.",
		"Bestiame, ci chiamano certi soldati dell'Alleanza. Di solito il bestiame non ricorda il nome di chiunque l'abbia detto.",
	},
	["race.tauren.muse.w08.047"] = {
		"Metà dell'essere un tauren tra gli altri popoli sta nel ricordarsi quanto si è forti. Una pacca amichevole sulla schiena di un goblin non ha niente di amichevole, se te ne dimentichi.",
		"Dosare la forza è un lavoro che faccio tutto il giorno: una stretta di mano, una porta, una tazza. L'unica volta che me ne dimentico è quella in cui qualcuno si fa male.",
		"In un posto affollato la prima cosa che un tauren impara è la delicatezza. Il mondo è pieno di cose costruite per rompersi sotto di noi.",
	},
	["race.tauren.muse.w08.048"] = {
		"La Madre Terra non sta solo sotto Mulgore. Sta anche sotto questo terreno, ovunque io sia. È la prima cosa che mi ricordo, in un posto sconosciuto.",
		"Nessuna terra è straniera per la Madre Terra. Solo per me, e a questo si rimedia camminandoci sopra.",
		"Per quanto lontano io vada, da lei non scendo mai. La distanza è roba da mappe, non da Madre Terra.",
	},
	["race.tauren.muse.w08.049"] = {
		"In Desolace c'è un luogo dove i vecchi kodo vanno a morire, e le loro ossa formano colline. Il mio popolo non lo teme. È l'aspetto che ha una fine onesta, quando le fini sono tante.",
		"Il Kodo Graveyard di Desolace è fatto soprattutto di ossa e silenzio. Lo trovo meno triste di un campo di battaglia. I kodo, almeno, ci sono andati di loro volontà.",
	},
	["race.tauren.muse.w08.050"] = {
		"La mia criniera raccoglie ogni lappola e ogni seme da qui all'orizzonte. Da qualche parte dietro di me sto piantando un piccolo prato senza volerlo.",
		"A ogni sosta mi pettino via mezzo campo dalla pelliccia. Le pianure vanno ovunque con un tauren, che ci piaccia o no.",
	},
	["race.tauren.muse.w08.051"] = {
		"Gli orchi abbattono gli alberi di Ashenvale perché all'Orda serve legname, e gli elfi della notte fanno pagare loro ogni tronco. Capisco il bisogno. Ma sento anche gli alberi, e vorrei che le due cose si potessero conciliare.",
		"Tra le asce dei Warsong e le frecce delle Sentinelle, Ashenvale è un posto difficile per un tauren. Ai miei amici serve il legno. Alla foresta, credo, serve di più.",
	},
	["race.tauren.muse.w08.052"] = {
		"Due tauren possono dividere un fuoco per ore senza dirsi una parola, e separarsi più amici di prima.",
		"Tra la mia gente il silenzio non è una cosa vuota. Ci si può dire parecchio, là dentro, se l'altro ha la pazienza di ascoltare.",
	},
	["race.tauren.muse.w08.053"] = {
		"An'she guarda con insistenza le terre aride. Rispetto l'attenzione, ma cammino all'ombra di qualunque cosa sia più alta di me, che non è molto.",
		"Sotto lo sguardo di An'she, nei paesi secchi, cerco l'ombra di ogni roccia e mi ci porto dentro. Anche la devozione gradisce un po' d'ombra.",
	},
	["race.tauren.muse.w08.054"] = {
		"Le tende del mio popolo si ripiegano in un fagotto che un kodo può portare. Per generazioni è stata la forma delle nostre vite: tutto ciò che ami, pronto a partire al mattino.",
		"Guarda una tenda tauren e vedi tutta la lunga strada della mia gente: pelli e pali, leggera da smontare in un'ora, abbastanza forte da tenere a bada il vento.",
	},
	["race.tauren.muse.w08.055"] = {
		"Se serve sollevare qualcosa, chiedi a un tauren. Se serve sollevarla con delicatezza, chiedi per favore.",
		"Le cose pesanti sono la specialità dei tauren. Quelle fragili un po' meno. Date a me quelle pesanti.",
	},
	["race.tauren.muse.w08.056"] = {
		"A volte le pianure bruciano, e gli anziani non ci piangono sopra. Una stagione dopo l'erba torna più verde, come se il fuoco si fosse solo schiarito la voce.",
		"Dopo un incendio d'erba la terra sembra finita. Non lo è mai. Tengo da parte quell'immagine per i giorni in cui mi sento {g:finito|finita} anch'io.",
		"Terra nera dopo un incendio, e un mese più tardi le prime punte verdi che spuntano dalla cenere. Il mio popolo ha imparato la pazienza da spettacoli così.",
	},
	["race.tauren.muse.w08.057"] = {
		"Una barca è il posto peggiore del mondo per un tauren: niente da leggere attraverso gli zoccoli, e niente su cui stare che non si muova.",
		"Sul ponte di una nave i miei zoccoli continuano a chiedere alla terra dove sia finita. Il mare non risponde, e le assi scricchiolano soltanto.",
		"Le navi le ha costruite gente che pesa la metà di me. La passerella me lo ricorda ogni volta.",
	},
	["race.tauren.muse.w08.058"] = {
		"Bloodhoof Village non è granché: tende, fuochi, un pozzo, e le mandrie più in là. È esattamente quanto basta a un tauren, ed è esattamente il motivo per cui ci penso così spesso.",
		"Bloodhoof Village sa di fumo, di pelle conciata e di pane al forno. Se qualcuno mi chiede che odore abbia la casa, rispondo così.",
		"Bloodhoof Village non ha mura, solo fuochi e occhi attenti. Ovunque io vada, giudico un villaggio da quanto ha bisogno delle mura.",
	},
	["race.tauren.muse.w08.059"] = {
		"Quando un tauren decide di piantarsi da qualche parte, perfino il terreno sembra d'accordo. I nemici se ne accorgono, di solito troppo tardi.",
		"Siamo lenti a partire e difficilissimi da fermare. Quasi tutti i nostri nemici imparano solo la seconda metà.",
		"C'è un istante, prima che un tauren carichi, in cui la terra tace sotto gli zoccoli, come se trattenesse il fiato insieme a noi.",
	},
	["race.tauren.muse.w08.060"] = {
		"canticchia a bocca chiusa, basso nel petto, un motivo senza parole come quelli che usano i mandriani per tenere calmi i kodo nelle lunghe camminate.",
		"emette un ronzio profondo e lento, appena una canzone, più che altro il suono di una mandria che si quieta.",
	},
	["race.tauren.muse.w08.061"] = {
		"Le gallerie basse sono il castigo personale di un tauren. Le percorro {g:piegato|piegata} in due, con le corna che grattano, e prometto al cielo che lo rivedrò presto.",
		"Sottoterra è tutto troppo vicino: il soffitto, le pareti, l'aria. Il mio popolo non è fatto per le tane. Quelle le lasciamo ai quilboar.",
	},
	["race.tauren.muse.w08.062"] = {
		"Gli anziani di Mulgore rispondono a una domanda con una storia, e alla storia con un'altra domanda. Il trucco, credo, è che la risposta è proprio quella.",
		"Chiedi una cosa semplice a un anziano tauren e ti beccherai un lungo racconto su un kodo, un fiume e un cacciatore testardo. Lì dentro, se hai pazienza, c'è la tua risposta.",
	},
	["race.tauren.muse.w08.063"] = {
		"I nostri sciamani parlano agli spiriti della terra e del vento come si parla ai vicini da sopra lo steccato. Con o senza quel dono, io cerco di essere un buon vicino.",
		"Gli sciamani dicono che gli elementi non sono servi ma parenti, e parenti con un caratteraccio. Vivendo tra la mia gente, ci credo: ai parenti e al caratteraccio.",
		"I nostri sciamani ringraziano il vento dopo che ha risposto, come un cacciatore ringrazia la bestia. Le buone maniere valgono anche con gli spiriti.",
	},
	["race.tauren.muse.w08.064"] = {
		"Il mio popolo non scaccia mai un ospite dal fuoco, nemmeno uno che non ci va a genio. A quello diamo soltanto il posto nel fumo.",
		"Un accampamento tauren sfama chiunque arrivi affamato. Le domande aspettano la fine del pasto, e alcune non vengono fatte mai.",
	},
	["race.tauren.muse.w08.065"] = {
		"Essere grossi non vuol dire essere lenti. Vuol dire che quando arrivo, se ne accorgono tutti.",
		"Noi tauren non siamo lenti. Ci rifiutiamo di farci mettere fretta, che da fuori sembra la stessa cosa.",
	},
	["race.tauren.muse.w08.066"] = {
		"Dalle pianure, Thunder Bluff sembra un pugno di roccia alzato contro il cielo, con i fuochi sulle nocche. Non l'ho mai guardata dal basso senza rallentare il passo.",
		"Attraversando Mulgore verso le rupi, la città si alza un po' di più a ogni ora di cammino, come se si stesse mettendo in piedi per accoglierti.",
	},
	["race.tauren.muse.w08.067"] = {
		"Gli armaioli mi misurano la testa, poi le corna, poi sospirano. Ogni elmo del mondo l'ha disegnato qualcuno che non ha mai dovuto pensare alle corna.",
		"Mostra la testa di un tauren a un fabbro e guarda partire i conti. Le corna sono un problema a cui nessuna incudine era preparata.",
	},
	["race.tauren.muse.w08.068"] = {
		"C'è un odore che porterei con me in capo al mondo, se potessi: le pianure secche nell'istante in cui le tocca la pioggia. Tutto ciò che vi è mai cresciuto sembra respirare insieme.",
		"Quando le prime gocce colpiscono la polvere di Mulgore dopo la siccità, tutta la terra profuma come se si svegliasse. In nessuna città ho trovato niente di più bello.",
	},
	["race.tauren.muse.w08.069"] = {
		"Il mio popolo si muove come una mandria quando arriva il pericolo: i forti all'esterno, i giovani e i vecchi dentro. Lo faccio senza pensarci, anche tra estranei.",
		"Metti un tauren in una folla minacciata e guarda: scivoliamo verso il bordo, tra il guaio e i più piccoli. È più antico di qualunque giuramento.",
	},
	["race.tauren.muse.w08.070"] = {
		"I cani della prateria di Mulgore si alzano sulle zampe a guardare ogni viandante che passa, come piccole sentinelle. Io gli ho sempre fatto un cenno col capo. Non costa niente.",
		"Ogni buca delle pianure ha il suo cane della prateria, e ogni cane della prateria ha un'opinione su di te. Fa bene essere guardati da qualcosa che non può farti del male.",
	},
	["race.tauren.muse.w08.071"] = {
		"Che la terra sia salda sotto i piedi di tutti voi, e l'erba alta dove dormite.",
		"La Madre Terra tenga fermi sulla sua schiena i vostri passi, zoccoli o stivali che siano.",
	},
	["race.tauren.muse.w08.072"] = {
		"Alcuni dei più vecchi tra noi ricordano gli anni del vagare, prima che Mulgore fosse nostra. Quando ne parlano, anche il giovane guerriero più chiassoso si zittisce.",
		"Il lungo cammino non è una leggenda, per il mio popolo. A Bloodhoof ci sono nonne che sanno ancora dirti quanto pesavano i pali delle tende.",
	},
	["race.tauren.muse.w08.073"] = {
		"Se cadrò lontano da Mulgore, la terra mi prenderà lo stesso. È tutta una terra. Però vorrei che qualcuno ne portasse notizia a casa.",
		"Su qualunque terreno io finisca, la Madre Terra ci sarà sotto. Mi è sempre parsa una promessa migliore di qualsiasi tomba.",
	},
	["race.tauren.muse.w08.074"] = {
		"I Kolkar fanno ancora razzie per le Barrens come se le vecchie guerre non fossero mai finite. Per loro, forse, non lo sono. Nemmeno io ho fretta di dimenticare.",
		"I clan dei centauri vagano ancora: i Kolkar nelle Barrens, i Galak tra gli aghi, i Magram e i Gelkis in Desolace. Il mio popolo ha imparato quei nomi a caro prezzo.",
	},
	["race.tauren.muse.w08.075"] = {
		"Il grog degli orchi è roba forte, per un orco. Per un tauren è un inizio caldo. Gli orchi se la prendono sul personale.",
		"In un tauren c'è più spazio in cui una bevuta si perde. Gli orchi al tavolo accanto non lo perdonano mai del tutto.",
	},
	["race.tauren.muse.w08.076"] = {
		"Un temporale sull'erba aperta insegna in fretta una cosa: un tauren è la cosa più alta per un miglio intorno, e il cielo se n'è accorto.",
		"Nelle pianure, quando arriva il tuono, ai giovani si insegna a stare bassi e a restarci. Essere alti ha i suoi costi.",
		"Gli anziani hanno una regola breve per il tuono in pianura: stare più bassi dell'erba, se ci si riesce. A un tauren riesce di rado.",
	},
	["race.tauren.muse.w08.077"] = {
		"Orchi, troll, Reietti, tauren: una mandria strana, fra corna, zanne e ossa in vista. Eppure una mandria si muove unita o i predatori la sbranano, e ognuno di noi lo sa.",
		"L'Orda è una mandria mista. Non brucamo la stessa erba, ma sappiamo tutti da che parte arrivano i lupi.",
	},
	["race.tauren.muse.w08.078"] = {
		"si gratta piano alla base di un corno, come certa gente si liscia il mento quando un pensiero non vuole uscire.",
		"batte un grosso dito contro un corno, una volta, due, mentre un pensiero finisce di fare il suo giro.",
	},
	["race.tauren.muse.w08.079"] = {
		"Mi scappa di chiamare tutti «piccolo». Gli orchi se la prendono. I troll ci ridono sopra. I goblin, chissà perché, sono d'accordo.",
		"Per un tauren quasi tutti sono piccoli. Cerco di non dirlo ad alta voce. Non sempre ci riesco.",
	},
	["race.tauren.subzone_enter.w08.001"] = {
		"{subzone}. Un nome nuovo per la stessa terra. La Madre Terra non legge le mappe.",
		"{subzone}, dice la mappa. Il terreno sotto i miei zoccoli non ha mai chiesto di chiamarsi in nessun modo.",
		"{subzone}. I nomi cambiano ogni poche centinaia di passi; la terra sotto di loro è tutta d'un pezzo.",
	},
	["race.tauren.subzone_enter.w08.002"] = {
		"abbassa un poco le corna entrando in {subzone}, per abitudine, che ci sia o no qualcosa da urtare.",
		"entra in {subzone} con la testa leggermente inclinata, la prudenza abituale di chi è sempre più alto delle porte.",
		"entra in {subzone} con un occhio a ciò che ha davanti e l'altro a qualunque cosa penda abbastanza in basso da agganciare un corno.",
	},
	["race.tauren.subzone_enter.w08.003"] = {
		"{subzone}. Terreno più morbido o più duro? Me lo dicono gli zoccoli prima degli occhi.",
		"{subzone}. La terra cambia voce sotto i miei zoccoli. Un tauren sente un luogo prima di vederlo.",
		"{subzone}. Pietra, terra, assi o muschio: gli zoccoli prendono nota senza chiedermi niente.",
	},
	["race.tauren.subzone_enter.w08.004"] = {
		"{subzone}. Prima guardo in alto. Il cielo viene con me ovunque, e mi piace vedere come si posa su ogni posto.",
		"{subzone}. Più cielo o meno cielo rispetto a prima? Chiunque sia cresciuto a Mulgore lo controlla.",
		"{subzone}. Prima della terra, il cielo: quanto ce n'è mi dice quanto liberamente respirerò qui.",
	},
	["race.tauren.subzone_enter.w08.005"] = {
		"{subzone}. Un kodo pascolerebbe qui? È la prima domanda che il mio popolo fa a qualsiasi terreno, ed è ancora buona.",
		"{subzone}. Lo valuto come farebbe un mandriano: erba quanto basta, acqua quanto basta, spazio per far girare una mandria. Quasi tutti i posti cadono sull'ultima.",
		"{subzone}. Mandrie grasse o affamate? Gli occhi decidono quali crescerebbe questo posto prima che io abbia fatto dieci passi.",
	},
	["race.tauren.subzone_enter.w08.006"] = {
		"{subzone}. Attenti alla testa. Anzi, attenti alla mia.",
		"{subzone}. C'è posto per un tauren? Vedremo.",
		"{subzone}. Speriamo che sia spazioso.",
	},
	["race.tauren.subzone_enter.w08.007"] = {
		"{subzone}. Madre Terra, anche qui cammino su di te. Sopporta il mio peso ancora un poco.",
		"{subzone}. Poso gli zoccoli con garbo. Ovunque io vada, sono ospite sulla schiena della Madre Terra.",
		"{subzone}. Una parola al terreno prima di percorrerlo: perdona gli zoccoli, peso più di quasi tutti.",
	},
	["race.tauren.subzone_enter.w08.008"] = {
		"si ferma mentre {subzone} si apre intorno, le orecchie che si voltano verso ogni nuovo suono come quelle di un animale di mandria di guardia.",
		"entra in {subzone} con passo senza fretta, la testa larga che si volta piano da un lato all'altro.",
		"alza la testa entrando in {subzone} e resta un momento a osservare il posto con la lenta pazienza delle pianure.",
	},
	["race.tauren.subzone_enter.w08.009"] = {
		"{subzone}. Se qui c'è un ramo basso, una trave bassa o un soffitto basso, le mie corna lo troveranno. È un dono.",
		"{subzone}. Le mie corna faranno la mappa di questo posto molto prima di me, soprattutto andandoci a sbattere.",
	},
	["race.tauren.subzone_enter.w08.010"] = {
		"{subzone}. Ci sono mandrie qui, o ci sono mai state? Una terra ti dice parecchio con ciò che riesce a sfamare.",
		"{subzone}. Cerco escrementi, impronte di zoccoli, erba brucata: qualunque segno che qualcosa di grosso abbia vissuto bene qui.",
		"{subzone}. Una mandria non gli chiederebbe molto: un po' d'erba, un po' d'acqua, un po' di pace. Vediamo cosa offre.",
	},
	["race.tauren.subzone_enter.w08.011"] = {
		"{subzone}. Abbastanza largo da girarmi senza buttare giù niente? È tutta qui la mia misura di un posto.",
		"{subzone}. Conto quante cose potrei rompere qui girandomi troppo in fretta. Meno che nell'ultimo posto, spero.",
	},
	["race.gnome.landmark.w09.001"] = {
		"si ferma davanti a {landmark} e piega la testa all'indietro per vedere fin dove arriva, poi ancora di più, poi ancora un pochino.",
		"gira lentamente intorno a {landmark}, come in cerca del marchio del costruttore.",
		"squadra {landmark} a lungo, con occhio da perito, e le dita fremono come se volessero smontare qualcosa per capire com'è fatto.",
	},
	["race.gnome.landmark.w09.002"] = {
		"{landmark}. Un nome da conservare. Lo scrivo due volte, nel caso una pagina prenda fuoco.",
		"{landmark}. Ogni luogo celebre è la prova che qualcuno è passato di qui. Gnomeregan era la nostra. Spero che a questo vada meglio.",
		"{landmark}. Mi piacerebbe sapere chi ne ha fatto il progetto, e se ne ha conservato i disegni.",
	},
	["race.gnome.muse.w09.001"] = {
		"Sotto le montagne a ovest di Kharanos ci sono officine con nomi gnomeschi ancora dipinti sulle porte. Adesso sulle panche dormono i trogg.",
		"Ogni tanto percorro i corridoi di Gnomeregan con la testa: a sinistra, a destra, giù con l'ascensore, e mi fermo appena prima del punto in cui tutto è andato storto.",
		"Chiedi a uno gnomo la strada per un angolo qualsiasi di Gnomeregan e te la darà, fino all'ultimo gradino. Chiedigli perché non ci abita più, e la conversazione finisce lì.",
	},
	["race.gnome.muse.w09.002"] = {
		"Ho fatto i calcoli. Con abbastanza sgabelli arrivo a qualunque cosa in tutto Azeroth.",
		"Maniglie all'altezza degli occhi di un nano, banconi all'altezza del mento di un umano. Ho imparato ad arrampicarmi con dignità.",
		"Chi è alto vede lontano. Chi è piccolo vede cosa c'è per terra, ed è lì che stanno le monete cadute.",
	},
	["race.gnome.muse.w09.003"] = {
		"Un boccale nanico contiene più o meno il mio volume. Mi hanno detto che non è un buon motivo per fermarmi a metà.",
		"I nani versano la birra agli gnomi esattamente come la versano a sé stessi. È generosità pura, ed è così che uno gnomo impara a camminare di sbieco.",
		"A Kharanos fanno una birra scura che potrebbe alimentare un motore a vapore. Ho chiesto, molto sul serio, se qualcuno ci avesse provato.",
	},
	["race.gnome.muse.w09.004"] = {
		"Il Deeprun Tram corre sotto il mare fra Ironforge e Stormwind, scavato da gnomi e nani insieme. Chi ci sale dovrebbe appiccicare il naso al vetro e contare i pesci.",
		"Sotto il mare, in un tubo di pietra e vetro, un vagone va avanti e indietro tutto il giorno. Testa gnomesca, scavo nanico. Non è un cattivo matrimonio.",
		"La prova migliore che gnomi e nani sanno lavorare insieme è il Deeprun Tram. La seconda è che, finiti i lavori, si rivolgono ancora la parola.",
	},
	["race.gnome.muse.w09.005"] = {
		"Quelli rimasti dentro Gnomeregan non sono più del tutto gnomi, si dice. Il male li ha consumati, e non sanno più chi eravamo per loro.",
		"«Gnomi lebbrosi», li chiama la gente, come se fosse una razza. Un tempo erano inventori, scrivani, cuochi, e il veleno che abbiamo liberato si è preso il resto.",
		"Nel cuore della vecchia città vagano gnomi che non ricordano più il proprio nome. A Tinker Town nessuno lo dice ad alta voce.",
	},
	["race.gnome.muse.w09.006"] = {
		"Goblin e gnomi amano entrambi le macchine. La differenza è che le nostre devono funzionare, le loro devono vendersi.",
		"Un goblin la costruisce in fretta e a poco. Uno gnomo la costruisce bene e in ritardo. Esplodono tutte e due, ma le nostre esplodono puntuali.",
		"Mai prestare una chiave inglese a un goblin. Te la riporta con tanto di fattura.",
	},
	["race.gnome.muse.w09.007"] = {
		"Ci chiamiamo Gnomeregan Exiles: esuli, non «gli gnomi di Ironforge». Quel nome è una promessa che continuiamo a fare alla città.",
		"Un esule è qualcuno che sa ancora benissimo dov'è casa sua. Per questo abbiamo scelto la parola.",
		"Chiedi a uno gnomo da dove viene e la risposta è sempre Gnomeregan, mai Tinker Town. Siamo testardi sui nostri indirizzi.",
	},
	["race.gnome.muse.w09.008"] = {
		"batte due volte le nocche su una superficie vicina, ascoltando con attenzione, come se si aspettasse che dichiari la sua lega.",
		"si mette in punta di piedi per vedere oltre qualcosa, ci rinuncia, e si mette invece a calcolare gli angoli.",
		"borbotta sottovoce una fila di numeri, annuisce con profonda soddisfazione, e non spiega mai a cosa servissero.",
	},
	["race.gnome.muse.w09.009"] = {
		"A Stormwind gli umani dicono che gli gnomi stanno all'arcano come i pesci all'acqua. Secondo me è più semplice: la magia è solo ingegneria che si rifiuta di mostrare gli ingranaggi.",
		"Il potere arcano segue delle regole. Regole strane, documentate male, ma regole. Per questo tanti di noi non sanno resistergli.",
		"C'è chi armeggia con l'ottone, chi con l'arcano, qualcuno con cose più oscure. Sotto, è lo stesso prurito: capire come è cablato il mondo.",
	},
	["race.gnome.muse.w09.010"] = {
		"Thermaplugg siede ancora dentro Gnomeregan, si dice, e dà ordini ai trogg e a quel che resta dei nostri. Un traditore con un trono in una città avvelenata. Se lo goda, per ora.",
		"Ogni popolo ha un traditore nella sua storia. Il nostro ha un nome, un titolo e, a sentire le voci, un trono ricavato dalla nostra stessa città.",
		"Il guaio di un traditore intelligente è che il piano, sul momento, sembrava così ragionevole. Thermaplugg sapeva esattamente come ragioniamo.",
	},
	["race.gnome.muse.w09.011"] = {
		"Probabilità che oggi qualcosa vada storto: alta. Probabilità che ne impari qualcosa: più alta. Per me è una buona giornata.",
		"Ogni fallimento è solo un dato con pessime maniere. Ne ho raccolti parecchi.",
		"Uno gnomo non fallisce. Uno gnomo porta a termine una prova che rivela margini di miglioramento.",
	},
	["race.gnome.muse.w09.012"] = {
		"Al mondo ci sono meno gnomi di prima. Lo noti da piccole cose: una panca di Tinker Town con posto in avanzo, un nome a cui nessuno risponde.",
		"Non siamo mai stati tanti, e Gnomeregan ce ne è costati troppi. Ogni gnomo che incontri per strada è qualcuno che è riuscito a uscirne.",
		"Quando vedo un altro gnomo lontano da Ironforge, lo saluto agitando il braccio come {g:un matto|una matta}. Siamo rimasti troppo pochi per fare i distaccati.",
	},
	["race.gnome.muse.w09.013"] = {
		"In mezzo a una folla di umani mi oriento con le fibbie delle cinture. Funziona sorprendentemente bene.",
		"Per uno gnomo la folla è un percorso a ostacoli. Ormai sono {g:un esperto|un'esperta} di ginocchia.",
		"Farsi pestare i piedi è un rischio del mestiere, alla mia altezza. Ho cominciato a vestirmi di colori vivaci per legittima difesa.",
	},
	["race.gnome.muse.w09.014"] = {
		"Tinker Town sa di olio, di metallo caldo e del pane che qualcuno ha tostato troppo. Non è casa. È la migliore imitazione di casa che siamo riusciti a costruire in fretta.",
		"A Tinker Town c'è sempre qualcosa che ticchetta, sibila o su cui si discute. Per un angolo preso in prestito, ci somiglia in modo notevole.",
		"Il nostro quartiere a Ironforge è piccolo, ingombro e rumoroso. Se strizzi gli occhi e il vapore è quello giusto, sembra quasi una strada della vecchia città.",
	},
	["race.gnome.muse.w09.015"] = {
		"I trogg salirono dal basso, più di quanti avessimo numeri per contarli. È una frase rara in bocca a uno gnomo: più di quanti avessimo numeri.",
		"Avevamo costruito una città capace di resistere a qualunque cosa venisse dall'alto. Nessuno pensò a chiedersi cosa ci fosse sotto. Me lo tengo come lezione su dove guardare.",
		"I trogg non sono intelligenti. Non ne avevano bisogno. Erano semplicemente più di noi, e non si fermavano.",
	},
	["race.gnome.muse.w09.016"] = {
		"Corde, radici, reti, ragnatele appiccicose: devo ancora trovare un nodo da cui uno gnomo non sgusci fuori con un po' di pazienza e qualche contorsione.",
		"Lega uno gnomo e gli hai regalato un rompicapo. Non restiamo perplessi a lungo.",
		"Giunture piccole, dita svelte, una profonda antipatia per l'essere bloccati. Liberarsi è quasi un passatempo gnomesco.",
	},
	["race.gnome.muse.w09.017"] = {
		"Ogni mappa di Azeroth che ho visto è sbagliata da qualche parte. Non è una lamentela. È un invito.",
		"Qualcuno dovrebbe misurare per bene tutto questo mondo, da costa a costa, in unità coerenti. Propongo uno gnomo. Anzi, parecchi.",
		"Gli umani disegnano le mappe con mostri marini negli spazi vuoti. Gli gnomi li lasciano vuoti e ci scrivono «in sospeso».",
	},
	["race.gnome.muse.w09.018"] = {
		"si ferma per un attimo, gli occhi fissi sul nulla, con lo sguardo che hanno gli gnomi quando qualcuno nomina la vecchia città.",
		"smette di trafficare con quello che ha a portata di mano, e per una volta le mani indaffarate restano semplicemente ferme.",
		"canticchia qualche nota di qualcosa di allegro, si interrompe, e lascia andare il motivetto senza finirlo.",
	},
	["race.gnome.muse.w09.019"] = {
		"Gli umani pensano che l'altezza di uno gnomo valga il giudizio di un bambino. Poi ci vedono fare i conti. È una conversazione breve e molto soddisfacente.",
		"Gli umani di Stormwind sono adorabili. Si chinano anche verso di me e mi parlano piano. Io rispondo con parole lunghissime finché non smettono.",
		"Gli umani costruiscono in alto, pensano in fretta e vivono poco. Andiamo d'accordo; solo che teniamo orologi diversi.",
	},
	["race.gnome.muse.w09.020"] = {
		"Gli elfi della notte fanno crescere le cose invece di costruirle. In tutta Darnassus non c'è un solo bullone. Mi inquieta e mi colpisce più o meno in parti uguali.",
		"Chiedi a un kaldorei i calcoli dei carichi del loro grande albero e ottieni un silenzio lungo e paziente. Io quei numeri vorrei vederli lo stesso.",
		"Gli elfi della notte sono altissimi, vecchissimi e calmissimi. Accanto a uno di loro, uno gnomo si sente un orologio da taschino vicino all'orologio di una torre.",
	},
	["race.gnome.muse.w09.021"] = {
		"Le regole di sicurezza gnomesche stanno su un solo cartoncino. Il cartoncino è ignifugo. Questo ti dice quasi tutto quello che c'è da sapere.",
		"A Tinker Town, mi dicono, qualcuno tiene il conto dei piccoli incendi. Il numero sale ogni settimana, e tutti ne vanno stranamente fieri.",
		"Il fumo di un'officina gnomesca ha tre colori: normale, interessante e scappa.",
	},
	["race.gnome.muse.w09.022"] = {
		"Quando l'Alleanza ebbe bisogno di ali e di navi che nuotassero sott'acqua, a costruirle furono gli gnomi, dicono i vecchi inventori. Noi i debiti li paghiamo in ottone e ingegno.",
		"Le nostre macchine volanti hanno combattuto nella Seconda Guerra, amano ripetere i vecchi inventori. Amano anche raccontare quante di loro atterrarono di proposito.",
		"L'Alleanza ci ha tenuto un posto dopo Gnomeregan, quando non avevamo niente da offrire. Uno gnomo un debito così lo restituisce, con gli interessi.",
	},
	["race.gnome.muse.w09.023"] = {
		"Idea! No, aspetta. Idea migliore. Un momento, me ne stanno venendo diverse.",
		"Una soluzione c'è. C'è sempre. A volte è solo nascosta molto, molto bene.",
		"Dammi un minuto e un pezzo di carta e avrò migliorato qualcosa. Forse non la cosa giusta.",
	},
	["race.gnome.muse.w09.024"] = {
		"Abbiamo inondato i nostri stessi corridoi di veleno per fermare i trogg. Ha funzionato, come funziona un incendio su una casa piena di topi.",
		"Le radiazioni dovevano uccidere gli invasori e risparmiare tutti gli altri. Gli gnomi sono bravi con i piani. Meno con la parte in cui i piani incontrano il mondo.",
		"I trogg hanno sopportato le radiazioni meglio di noi. A Tinker Town nessuno lo trova divertente, e gli gnomi trovano divertente quasi tutto.",
	},
	["race.gnome.muse.w09.025"] = {
		"I nani sono gli amici alti della mia vita. Glielo dico. Non sanno mai se sentirsi lusingati.",
		"Per uno gnomo un nano è un vicino piacevolmente alto, con una barba in cui ci si potrebbe nascondere. Non ci ho ancora provato. Non ancora.",
		"I nani si lamentano che gli umani li sovrastano. Io annuisco con aria comprensiva, da qualche parte all'altezza della loro cintura.",
	},
	["race.gnome.muse.w09.026"] = {
		"Un uccello è un progetto meraviglioso: ossa cave, ali efficienti, documentazione pessima.",
		"Guarda un gatto che cammina su una staccionata e dimmi che la natura non capisce l'equilibrio. Mi piacerebbe vedere il suo giroscopio.",
		"Le bestie sono macchine che nessuno ha costruito. Non lo dico con freddezza. È il complimento più alto che uno gnomo conosca.",
	},
	["race.gnome.muse.w09.027"] = {
		"La gente crede che gli gnomi siano allegri perché non capiscono cosa hanno perso. Lo capiamo benissimo. Siamo allegri lo stesso, apposta.",
		"L'allegria è uno strumento. Gli gnomi l'hanno imparato quando non restava altro. Io la mia la tengo ben lucidata.",
		"Il lutto sta sotto tutto quello che facciamo, come delle fondamenta. Sopra delle fondamenta si può costruire qualcosa di luminoso. Noi lo facciamo.",
	},
	["race.gnome.muse.w09.028"] = {
		"Gli occhialoni non sono una scelta di moda. Sono uno stile di vita, e una precauzione.",
		"Ogni gnomo dovrebbe portare con sé tre cose: una matita, una matita di scorta e una scusa.",
		"Se è bloccato, pensa. Se è ancora bloccato, pensa di più. Se è ancora bloccato, dagli un calcetto gentile. Metodo gnomesco.",
	},
	["race.gnome.muse.w09.029"] = {
		"Dun Morogh ha insegnato il freddo a un intero popolo di inventori abituati a stare al chiuso. Ci abbiamo fatto l'abitudine. Soprattutto a forza di sciarpe.",
		"Gnomeregan era una città di gallerie e di lampade. A molti di noi il cielo aperto sopra Dun Morogh sembra ancora un soffitto che qualcuno ha dimenticato di finire.",
		"Sui pendii di Dun Morogh il vento trova ogni cucitura di un cappotto. I corpi piccoli si raffreddano in fretta; noi rimediamo con sciarpe enormi.",
	},
	["race.gnome.muse.w09.030"] = {
		"L'Alto Inventore Mekkatorque ha perso una città e ha tenuto insieme un popolo. Chissà se il secondo non fosse il trucco più difficile.",
		"Mekkatorque avrebbe potuto passare le giornate a darsi la colpa. Invece conta i sopravvissuti, prepara piani e ascolta. Questa è una guida vera, a misura di gnomo e a misura di chiunque.",
		"Un Alto Inventore senza una città in cui armeggiare tiene comunque il titolo. Credo che lo tenga per noi.",
	},
	["race.gnome.muse.w09.031"] = {
		"Uno gnomo che smette di fare domande è uno gnomo che ha preso una brutta botta in testa. Mi controllo regolarmente.",
		"La curiosità nello zaino non pesa niente. È l'unico carico che uno gnomo si trascina ovunque volentieri.",
		"Ogni domanda che trova risposta ne lascia dietro due nuove. Per qualcuno è sfiancante. Per uno gnomo è lavoro assicurato.",
	},
	["race.gnome.muse.w09.032"] = {
		"A Tinker Town si racconta che, quando Gnomeregan cadde, Magni Bronzebeard non chiese cosa potessimo pagare. Chiese quanti letti ci servissero. Uno gnomo non dimentica una domanda così.",
		"I nani discutono su tutto, tranne che sull'aiutare un vicino nei guai. Su questo, a Ironforge, non si è nemmeno votato.",
		"Arrivammo al portone dei nani con le ustioni, i polmoni malati e niente da scambiare. Lo aprirono lo stesso. Questa è tutta la storia, e basta.",
	},
	["race.gnome.muse.w09.033"] = {
		"Fuori da Tinker Town le porzioni a misura di gnomo non esistono. Altrove mi danno un pasto e una sfida.",
		"Il pane dei nani è così compatto che ci si potrebbe costruire. Ho smesso di scherzarci, perché a Tinker Town qualcuno ci starà provando.",
		"Una colazione nanica completa mi terrebbe in piedi per tre giorni. A quanto pare la colazione non funziona così.",
	},
	["race.gnome.muse.w09.034"] = {
		"Riprendersi Gnomeregan non sarà una carica eroica e basta. Saranno mille piccole riparazioni: un corridoio ripulito, una pompa rimessa in moto, una porta che si apre di nuovo. Nelle piccole riparazioni gli gnomi sono bravi.",
		"Quando ci riprenderemo la città, qualcuno dovrà strofinare via il veleno da ogni tubo. Nella mia testa mi sono già {g:offerto|offerta}.",
		"Quando sarà di nuovo nostra, la vecchia città avrà bisogno di tutto: mani, idee, pazienza. Mi sto allenando su tutte e tre.",
	},
	["race.gnome.muse.w09.035"] = {
		"raccoglie da terra un pezzetto di filo, lo attorciglia in una minuscola spirale senza guardare, e osserva il risultato con evidente piacere.",
		"socchiude gli occhi davanti al cardine, alla porta o alla fibbia più vicina, componendo di sicuro un elenco di migliorie che nessuno ha chiesto.",
		"disegna nell'aria con un dito un rapido marchingegno, aggrotta la fronte, e lo cancella con un gesto della mano.",
	},
	["race.gnome.muse.w09.036"] = {
		"Prendo appunti su tutto: distanze, prezzi, quali ponti scricchiolano. Nessuno li leggerà mai. Non è per questo che li scrivo.",
		"Le tasche mi si riempiono di foglietti pieni di numeri. Ogni tanto li riordino, e ogni volta ci trovo un'idea migliore che avevo dimenticato.",
		"Scrivere una cosa è il modo in cui uno gnomo la costringe a stare ferma abbastanza a lungo da capirla.",
	},
	["race.gnome.muse.w09.037"] = {
		"Negli Shimmering Flats gnomi e goblin fanno correre le loro macchine su un lago di sale secco, per l'onore dei rispettivi ingegneri. È la guerra più sensata di cui abbia mai sentito parlare.",
		"Al Mirage Raceway gnomi e goblin regolano la loro rivalità a colpi di velocità e di schianti spettacolari. Nessuno vince a lungo, e tutti imparano qualcosa.",
		"Se ogni lite di Azeroth si risolvesse come la gara di Thousand Needles, ci sarebbero più rottami e molte meno tombe.",
	},
	["race.gnome.muse.w09.038"] = {
		"Gli gnomi non parlano molto di morire. Parlano di manutenzione. Alla fine è la stessa cosa, con probabilità migliori.",
		"Tutto si consuma: ingranaggi, stivali, città, gnomi. Il trucco è rendersi utili finché i pezzi girano ancora.",
		"Mi piacerebbe una fine ordinata, con gli appunti al loro posto. Non andrà così. Agli gnomi l'ordine riesce di rado.",
	},
	["race.gnome.muse.w09.039"] = {
		"Gli avversari più grossi continuano a mirare dove si aspetterebbero una testa. La testa di uno gnomo è da tutt'altra parte. È l'unico vantaggio di cui non mi lamenterò mai.",
		"Essere piccoli non vuol dire essere poca cosa. Chiedilo a chi ha sottovalutato uno gnomo. Se lo trovi.",
		"Il coraggio non si misura in altezza. Per fortuna, altrimenti gli gnomi sarebbero vigliacchi per definizione.",
	},
	["race.gnome.muse.w09.040"] = {
		"In questo momento, a Tinker Town, qualcuno sta aggiustando qualcosa. Lo trovo molto confortante.",
		"Gnomeregan sarà anche perduta, ma gli gnomi no. C'è una differenza, e intendo mantenerla.",
		"Su con la vita, gente. Statisticamente, prima o poi le cose devono migliorare.",
	},
	["race.gnome.muse.w09.041"] = {
		"Nessuno sa davvero da dove siano venuti i trogg, solo che sono saliti dal profondo e non hanno smesso. Uno gnomo odia una domanda senza risposta quasi quanto odia un trogg.",
		"I trogg sono sgorgati dalla terra sotto Gnomeregan come acqua da un tubo incrinato. Darei molto per sapere cosa si è incrinato.",
		"Sotto la vecchia città c'è il posto dove stavano i trogg prima di trovarci. Mi piacerebbe vederlo, da molto lontano, con parecchi amici.",
	},
	["race.gnome.muse.w09.042"] = {
		"Le strade sono invenzioni meravigliose. Con chi ha progettato le colline lì intorno bisognerebbe fare due chiacchiere.",
		"Il passo di uno gnomo è corto, quindi per noi il mondo è più grande che per chiunque. Ho deciso di considerarlo un vantaggio.",
		"Ogni miglio è più lungo sulle gambe corte. Ogni panorama, però, è altrettanto ampio. Siamo pari.",
	},
	["race.gnome.muse.w09.043"] = {
		"I vecchi inventori di Tinker Town discutono ancora su come fossero bilanciati gli ascensori di Gnomeregan. Discuterne è un modo per tenerli in funzione.",
		"Ascolta dei vecchi inventori parlare di lavoro: una frase su due comincia con «a Gnomeregan». Nessuno fa notare come gli cambi la voce su quella parola.",
		"Ricordiamo la città attraverso le sue macchine: i grandi ascensori, le pompe, le lampade che non si spegnevano mai. È più facile che ricordarne le facce.",
	},
	["race.gnome.muse.w09.044"] = {
		"No, non faccio da apprendista a un nano. Sì, ne sono {g:sicuro|sicura}. No, non vado a prendere niente.",
		"Sono {g:cresciuto|cresciuta} benissimo, grazie. Gli gnomi esistono semplicemente nel formato efficiente.",
		"{g:Compatto|Compatta}. La parola che stai cercando è {g:compatto|compatta}.",
	},
	["race.gnome.muse.w09.045"] = {
		"Ogni gnomo sulle strade di Azeroth fa due lavori: quello che la giornata chiede, e mostrare al mondo che non siamo finiti.",
		"Ogni gnomo che si fa un nome là fuori rende le cose più facili al prossimo. Mi piacerebbe renderle ancora un po' più facili.",
		"Abbiamo perso una città, non la nostra utilità. Qui fuori posso dimostrarlo un pochino ogni giorno.",
	},
	["race.gnome.muse.w09.046"] = {
		"I nani hanno cento barzellette sugli gnomi. Noi ne abbiamo centouno sui nani. Solo che le nostre le raccontiamo più in fretta.",
		"I nani ridono delle nostre invenzioni finché una non funziona. Allora chiedono di prenderla in prestito. Poi ridono di nuovo quando si rompe. È una bella amicizia.",
		"Un nano e uno gnomo entrano in una taverna. Uno dei due riesce a vedere oltre il bancone. La barzelletta è tutta qui, e il nano non smette mai di trovarla divertente.",
	},
	["race.gnome.muse.w09.047"] = {
		"Ironforge è costruita su una scala che fa sentire uno gnomo come un bullone in un ponte: piccolo, ma regge qualcosa.",
		"Le sale di Ironforge rimbombano. Là dentro i passi di uno gnomo contano poco, ma i miei pensieri diventano rumorosissimi.",
		"A Ironforge tutto è grande, caldo e fatto per durare per sempre. Gli gnomi costruiscono per ingegno, i nani per l'eternità. Vivere in casa loro è una scuola.",
	},
	["race.gnome.muse.w09.048"] = {
		"Quando vedo qualcosa di rotto lungo la strada, un carro, uno steccato, una pompa, mi prudono le dita. Ci vuole vera disciplina per tirare dritto.",
		"Un carro rotto sul ciglio della strada è un po' una tragedia e un po' un invito. Di solito mi fermo almeno a guardare l'asse.",
		"Gli altri vedono rottami. Uno gnomo vede pezzi di ricambio.",
	},
	["race.gnome.muse.w09.049"] = {
		"Non sono {g:fatto|fatta} per l'odio; gli gnomi lo sono di rado. Ma quando vedo un trogg, qualcosa di freddo e preciso si sveglia in me e comincia a prendere le misure.",
		"Trogg nelle nostre officine, trogg nelle nostre case, trogg che dormono dove stavano i grandi motori. Sulla maggior parte delle cose riesco a restare {g:allegro|allegra}. Su questo no.",
		"Gli gnomi perdonano facilmente. Solo che tengono registri molto accurati.",
	},
	["race.gnome.muse.w09.050"] = {
		"Ovunque i nani montino una forgia, entro una settimana spunta uno gnomo che si offre di migliorare il mantice.",
		"Gli umani hanno le fattorie, i nani le miniere, i kaldorei le foreste. Gli gnomi hanno le domande. Ogni alleanza ha bisogno di qualcuno che le faccia.",
		"L'Alleanza è una gran macchina dai pezzi molto spaiati. Proprio per questo mi interessa.",
	},
	["race.gnome.muse.w09.051"] = {
		"Casa è una città in cui non posso entrare e un quartiere che non è mio. Nel mezzo, anche la strada è diventata un po' casa.",
		"Gli gnomi in esilio imparano a farsi una casa da un angolo: una lampada, una panca, una pila di carte. Dammi questo e me la caverò ovunque.",
		"Più che una casa ho un indirizzo conteso. I trogg l'hanno occupato abusivamente. Prima o poi la questione la risolveremo.",
	},
	["race.gnome.muse.w09.052"] = {
		"alza lo sguardo verso un passante alto con paziente cortesia, nel modo in cui gli gnomi imparano a guardare quasi tutto il mondo.",
		"sale sulla cassa o sul gradino più vicino per vedere meglio, come se fosse la cosa più naturale del mondo.",
		"si tasta una tasca dopo l'altra, trova quello che cercava proprio nell'ultima, e ha tutta l'aria di chi l'aveva previsto fin dall'inizio.",
	},
	["race.gnome.muse.w09.053"] = {
		"La magia è come il vapore: fa un lavoro meraviglioso e non ha alcun senso dell'umorismo verso chi è sbadato.",
		"Alcuni degli gnomi più brillanti di cui ho sentito parlare sono stati rovinati da un esperimento di troppo. La curiosità è un ottimo motore senza freni.",
		"L'arcano premia una mente attenta e punisce all'istante quella distratta. Gli gnomi apprezzano un riscontro così chiaro.",
	},
	["race.gnome.muse.w09.054"] = {
		"La nostra città era giovane, per essere una città. Le montagne e la terra stessa erano molto più vecchie. Prima o poi uno gnomo impara l'umiltà dalla roccia.",
		"Gnomeregan è durata a lungo per gli gnomi e quasi niente per la montagna. In quella differenza c'è una lezione che non ho ancora finito di risolvere.",
		"Le montagne di Dun Morogh sono sopravvissute a re e città. Sopravvivranno anche a Thermaplugg. Una montagna paziente mi consola.",
	},
	["race.gnome.muse.w09.055"] = {
		"Gnomeregan rivedrà accese le sue lampade. Segnati le mie parole, e le mie misure.",
		"Un giorno apriremo il portone di Gnomeregan dall'interno. Ci scommetto il mio ultimo rame.",
		"Perduto non vuol dire scomparso. Gnomeregan aspetta solo la squadra di riparazione giusta.",
	},
	["race.gnome.muse.w09.056"] = {
		"Oggi le mie gambe hanno fatto il lavoro di un nano e sono state pagate a tariffa gnomo. Più tardi presenterò reclamo a me {g:stesso|stessa}.",
		"La stanchezza è solo la lettura di un manometro. Mi dice quanta strada ho fatto, non se posso farne ancora.",
		"Anche l'ottimismo ha bisogno di riposo, ogni tanto. Il mio gira al minimo, non è spento.",
	},
	["race.gnome.muse.w09.057"] = {
		"Uno gnomo viaggia meglio in compagnia, se non altro perché qualcuno deve passargli le cose dagli scaffali alti.",
		"Gli amici sono l'unica macchina che nessuno può costruire da solo. Aggiungo sempre volentieri un pezzo.",
		"Mi piace chi chiede «come funziona?» invece di «a cosa serve?». La seconda domanda arriva dopo, e di solito si risponde da sola.",
	},
	["race.gnome.muse.w09.058"] = {
		"Sotto il cielo della notte le stelle sono sparse come lampade d'officina viste da lontano. So quale città mi ricordano.",
		"Il cielo della notte è l'unico soffitto che nessuno gnomo abbia provato a riparare. Dateci tempo.",
	},
	["race.gnome.muse.w09.059"] = {
		"Neve. L'esilio a Dun Morogh ha reso ogni gnomo un esperto in materia, e nessuno di noi un appassionato.",
		"I fiocchi di neve si posano sulla manica, ognuno un piccolo reticolo perfetto. Li ammirerei di più se non mi colassero giù per il colletto.",
	},
	["race.gnome.muse.w09.060"] = {
		"Pioggia. Acqua che cade senza tubature, ovunque, tutta insieme. Uno gnomo può ammirare il sistema e voler comunque sporgere reclamo.",
		"Ogni goccia di questa pioggia va da qualche parte senza il minimo progetto. Qualcuno dovrebbe montare le grondaie al cielo.",
	},
	["race.gnome.muse.w09.061"] = {
		"Ci sono bambini gnomi che hanno conosciuto solo Tinker Town. Disegnano Gnomeregan dai racconti dei grandi e ci mettono sempre troppe lampade. Nessuno li corregge.",
		"A Ironforge ci sono gnomi piccini convinti che una città sia qualcosa che si prende in prestito dai nani. Un giorno vorrei che vedessero quella vera.",
		"Chiedi a un bambino gnomo com'è una città gnomesca e sentirai parlare di ascensori, lampade e tantissima speranza. I dettagli sono presi in prestito. La speranza no.",
	},
	["race.gnome.muse.w09.062"] = {
		"In segreto ogni gnomo crede che il mondo vada un po' indietro e vada regolato. Io lo ammetto e basta.",
		"La pazienza è una virtù, dicono. Gli gnomi preferiscono l'efficienza, che è pazienza con una tabella di marcia.",
		"Farei di più se le giornate fossero più lunghe. Ho studiato la faccenda. A quanto pare il sole non si regola.",
	},
	["race.gnome.muse.w09.063"] = {
		"Prima del decollo un grifone squadra uno gnomo a lungo, con aria pensierosa. Preferisco non sapere cosa pensa.",
		"Grifoni e gnomi hanno un'intesa: io non faccio movimenti bruschi, e lui non si chiede se sono uno spuntino.",
		"I grifoni non sono stati progettati pensando agli gnomi. E nemmeno le selle, le staffe o chi le fabbrica.",
	},
	["race.gnome.subzone_enter.w09.001"] = {
		"entra in {subzone} e comincia subito a misurare le distanze a passi, muovendo le labbra mentre conta.",
		"entra in {subzone} con passi rapidi e leggeri, lanciando un'occhiata a ogni cardine, carrucola e palo che incontra.",
		"si ferma ai margini di {subzone} per tirare fuori di tasca un mozzicone di matita, come se il posto andasse annotato subito.",
	},
	["race.gnome.subzone_enter.w09.002"] = {
		"{subzone}. Prima impressione: costruito da qualcuno di alto, per qualcuno di alto. Seconda impressione: interessante lo stesso.",
		"{subzone}. Faccio una stima veloce di quanti gnomi ci starebbero. La risposta è sempre più di quanto si creda.",
		"{subzone}. Qui tutto è un po' fuori portata. Annotato, e perdonato.",
	},
	["race.gnome.subzone_enter.w09.003"] = {
		"{subzone}. Ogni posto in cui entro lo confronto, senza volerlo, con una città sotto le montagne. Non è una gara leale. Qui, per dirne una, niente è avvelenato.",
		"{subzone}. Qualcuno lo chiama casa. Gli auguro più fortuna nel tenerselo di quanta ne abbiamo avuta noi.",
		"{subzone}. Un nome su una mappa, e gente che lotterebbe per tenerselo. Gli gnomi lo capiscono meglio di molti altri.",
	},
	["race.gnome.subzone_enter.w09.004"] = {
		"{subzone}! Che bello. Chi si occupa della manutenzione?",
		"{subzone}. Bene, vediamo cosa fa girare questo posto.",
		"Oh, {subzone}. Ho già delle domande.",
	},
	["race.gnome.subzone_enter.w09.005"] = {
		"{subzone}. Per prima cosa conto le uscite. Gli gnomi, dopo aver perso una città in fretta e furia, non perdono più l'abitudine.",
		"{subzone}. Dove va l'acqua, dove va il fumo, dove andrei io se le cose si mettessero male? Le prime tre domande di uno gnomo, ovunque.",
		"{subzone}. Bel posto. Dov'è la porta sul retro? Vecchia abitudine di un popolo che ha dovuto scappare.",
	},
	["race.gnome.subzone_enter.w09.006"] = {
		"entra in {subzone} a mento alto e spalle indietro, sfruttando ogni centimetro.",
		"entra in {subzone} con un passo svelto da gnomo, due falcate per ognuna della gente più alta.",
		"arriva a {subzone} col fiato un po' corto per aver tenuto il passo del mondo, e con l'aria di chi è felicissimo di trovarsi lì.",
	},
	["race.gnome.subzone_enter.w09.007"] = {
		"{subzone}. Con una settimana qui mapperei ogni sentiero e darei un nome a ogni sasso. Ho pochi minuti. Darò un nome ai sassi importanti.",
		"{subzone}. Una pagina pulita sul taccuino. Gli gnomi non si stancano mai di una pagina pulita.",
		"{subzone}. Mi piace già, e non ho ancora scoperto come funziona niente qui.",
	},
	["race.gnome.subzone_enter.w09.008"] = {
		"{subzone}. Chi ha messo insieme questo posto aveva un martello e un sogno. Uno gnomo ci avrebbe aggiunto una livella.",
		"{subzone}. Qui niente è perfettamente in squadra. Scelgo di trovarlo grazioso.",
		"{subzone}. Resisto alla tentazione di aggiustare cose che non sono mie. È una lotta quotidiana.",
	},
	["race.gnome.subzone_enter.w09.009"] = {
		"{subzone}. Gnomo piccolo, posto grande. Come ogni posto, a dire il vero. Si entra.",
		"{subzone}. Il mondo non si rimpicciolisce per adattarsi a me. Così ci entro come se l'avesse fatto.",
		"{subzone}. Quello che mi aspetta qui è probabilmente più alto di me. Lo è quasi tutto. Finora non ha mai fermato uno gnomo.",
	},
	["race.gnome.subzone_enter.w09.010"] = {
		"{subzone}. Qualcuno mi ricordi di misurarlo per bene più tardi.",
		"{subzone}, eh? Prima di andarmene voglio dare un'occhiata seria a come è fatto questo posto.",
	},
	["race.orc.landmark.w09.001"] = {
		"{landmark}. Gli altri popoli innalzano pietre per essere ricordati. Gli orchi preferiscono le storie. Le pietre sono più silenziose al riguardo.",
		"{landmark}. Un nome su una mappa. Un orco ricorda un posto per quello che ci è successo, e io non ho ancora deciso cosa sarà.",
		"{landmark}. Mi guardo intorno e in testa gli do un nome tutto mio. Gli orchi non sono mai stati bravi a tenersi i nomi degli altri.",
	},
	["race.orc.landmark.w09.002"] = {
		"si ferma a {landmark} e pianta i piedi larghi, squadrando il posto come un lupo squadra una tana sconosciuta.",
		"si arresta arrivando a {landmark}, abbraccia il luogo con una lenta occhiata e lascia andare un breve grugnito che forse è approvazione.",
		"fa una pausa a {landmark}, una mano appoggiata alla cintura, e soppesa il posto con lo sguardo franco della sua gente.",
	},
	["race.orc.muse.w09.001"] = {
		"Polvere rossa nelle cuciture di tutto ciò che possiedo. La lavo via e Durotar trova il modo di rientrare. Ho smesso di provarci.",
		"Per quanto lontano io vada, a fine giornata scuoto polvere rossa dagli stivali. Durotar non lascia andare i suoi.",
		"In qualche angolo dello zaino c'è sempre un pizzico di Durotar. Non ce l'ho mai messo io. Viene con me lo stesso.",
	},
	["race.orc.muse.w09.002"] = {
		"I vecchi ricordano i campi non tanto per le sbarre quanto per il torpore: clan interi che avevano scordato perché alzarsi. Io mi alzo spesso. Forse è per questo.",
		"Gli anziani parlano del torpore dei campi come di una malattia dello spirito. La guerra di Thrall l'ha guarita, dicono. Io credo che dorma soltanto, e che ogni orco la tenga addormentata a modo suo.",
		"Nei campi, dicono i vecchi, la catena peggiore era quella che nessuno vedeva. Io non sto mai con le mani in mano a lungo. È l'unica chiave che conosco.",
	},
	["race.orc.muse.w09.003"] = {
		"Quando un orco ride, la gente si guarda intorno cercando la rissa. È solo una risata. Di solito.",
		"Una risata d'orco svuota una taverna più in fretta di una rissa. Ci stiamo lavorando. Piano.",
	},
	["race.orc.muse.w09.004"] = {
		"Gli elementi non sono gentili, dicono gli sciamani: sono onesti. Il fuoco brucia chiunque lo tocchi. In un certo senso la trovo una cosa riposante.",
		"La terra regge, l'acqua scorre, il fuoco prende, l'aria porta: così li nomina un vecchio sciamano. Abbastanza semplice perché un orco lo ricordi, abbastanza duro per viverci.",
		"Agli spiriti non importa quanto sono forte. Guardano come sto in piedi. Mi ci è voluto un po' per capire la differenza.",
	},
	["race.orc.muse.w09.005"] = {
		"I Warsong tagliano ancora legname ad Ashenvale con le frecce degli elfi della notte che fischiano intorno. Il clan di Hellscream non ha mai imparato a fare le cose nel modo facile.",
		"Ad Ashenvale Hellscream ha messo fine alla maledizione, e alla propria vita insieme a lei. I Warsong sono ancora lì, ad abbattere alberi nel suo nome. In quel clan la testardaggine scorre come la linfa.",
		"Ogni tronco che esce da Ashenvale si paga due volte, dicono i Warsong: una in sudore, una in frecce. Loro pagano lo stesso.",
	},
	["race.orc.muse.w09.006"] = {
		"si asciuga il sudore dalla fronte con il dorso di un pugno verde, poi osserva il pugno come se avesse fatto qualcosa di furbo.",
		"passa lentamente il pollice sul filo di una zanna, come certuni si lisciano la barba quando pensano.",
		"pianta il peso su entrambi i piedi come un palo conficcato nel terreno, e si fa immobile per pensare.",
	},
	["race.orc.muse.w09.007"] = {
		"Un lupo ti dice chiaro e tondo cosa pensa di te. Per forza orchi e lupi vanno d'accordo: nessuno dei due ha pazienza per le allusioni.",
		"I Frostwolf cavalcavano lupi prima di qualunque altra cosa, dicono i vecchi. Un lupo è un amico che non finge mai. Me ne servirebbero di più.",
		"Dai a un lupo carne e rispetto, in quest'ordine, e ti seguirà ovunque. Certi orchi non sono poi tanto diversi.",
	},
	["race.orc.muse.w09.008"] = {
		"I troll Darkspear ridono di cose di cui io non riderei, e combattono al nostro fianco senza farselo chiedere due volte. Ho smesso di cercare di capire la prima parte.",
		"La gente di Vol'jin mantiene la parola e si tiene i suoi segreti. Alleati strani, i troll. Buoni alleati.",
		"Troll nella Valley of Trials, troll a Sen'jin, troll alle nostre spalle in ogni scontro. Senza quelle braccia lunghe e quelle risate l'Orda sarebbe una cosa più piccola.",
	},
	["race.orc.muse.w09.009"] = {
		"I tauren ci hanno aiutato quando avevano poche ragioni per farlo. Cairne Bloodhoof non dimentica un amico, e un orco non dovrebbe dimenticare un tauren.",
		"Un tauren ascolta fino in fondo prima di rispondere. Sto cercando di impararlo. Ci vuole tempo.",
		"Quando gli orchi arrivarono su Kalimdor, raccontano gli anziani, furono i tauren a mostrarci dov'era l'acqua. Un debito così non si estingue, e io non voglio che si estingua.",
	},
	["race.orc.muse.w09.010"] = {
		"I Reietti stanno nell'Orda perché Thrall l'ha permesso. Io do loro quello che dà il Capoguerra: un'occasione, e un occhio attento.",
		"Cose morte che parlano, commerciano e rispettano un patto. Non devo per forza farmele piacere. Devo solo guardare se lo rispettano.",
		"I Reietti sanno di tomba e delle boccette dei loro speziali. Preferisco stare sopravvento. Ma odiano il Flagello quanto chiunque altro, e questo conta.",
	},
	["race.orc.muse.w09.011"] = {
		"Quelli del Burning Blade hanno le nostre facce e sussurrano di nuovo la vecchia fame alle orecchie degli orchi. Un nemico fuori dalle mura lo capisco. Questo lo odio.",
		"Nelle grotte sotto la stessa Orgrimmar il Burning Blade si riuniva in segreto. I demoni hanno perso la presa su di noi. Non hanno smesso di allungare le mani.",
		"Ogni orco che entra nel Burning Blade è una porta aperta dall'interno. Io le porte le tengo d'occhio.",
	},
	["race.orc.muse.w09.012"] = {
		"Coda di scorpione arrostita. Sa di cuoio di stivale con un rancore. Ne prendo ancora.",
		"Cucina di Durotar: lo prendi, lo cuoci, ci litighi sopra. In quest'ordine.",
	},
	["race.orc.muse.w09.013"] = {
		"Thrall ci ha dato l'angolo più duro di Kalimdor, e secondo me ha scelto bene. Pochi desiderano una terra di roccia e spine, perciò pochi vengono a prendersela.",
		"Roccia, spine e terra rossa: Durotar non regala niente. Proprio per questo ogni orco che ci vive sa quanto vale una cosa.",
		"Gli altri popoli si stabiliscono dove si vive bene. Gli orchi si sono stabiliti dove si vive male e l'hanno fatta loro. C'è un orgoglio in questo che a un umano non saprei mai spiegare.",
	},
	["race.orc.muse.w09.014"] = {
		"Draenor è una parola che gli anziani pronunciano piano, come se potesse rompersi. Qualunque cosa abbiano visto laggiù, ce l'hanno ancora in faccia.",
		"Pianure verdi e fiumi larghi, dicono i vecchi, prima che il fel bruciasse il mondo da cui veniamo. Lo raccontano come si sfiora una vecchia cicatrice.",
		"Chiedi a un anziano di Draenor e aspetta. La risposta arriva lenta, e non parla mai della terra. Parla di chi ci stava sopra.",
	},
	["race.orc.muse.w09.015"] = {
		"Di' quello che pensi. Io farò lo stesso. Torneremo a casa prima tutti e due.",
		"Parla chiaro o taci. Gli orchi non hanno orecchio per gli indovinelli.",
		"Se servono tre frasi per dirlo, ne basta una.",
	},
	["race.orc.muse.w09.016"] = {
		"Gli antenati guardano, dicono gli sciamani. Io non li immagino severi. Li immagino curiosi, in attesa di vedere cosa fa un orco con una vita libera.",
		"Mi piacerebbe che gli antenati mi vedessero fare bene una cosa al giorno. Non grandi imprese. Cose fatte bene.",
		"Qualunque cosa pensino di noi, gli antenati hanno conosciuto la maledizione e sanno che è spezzata. Devono guardare questa generazione con una specie di meraviglia.",
	},
	["race.orc.muse.w09.017"] = {
		"Orgrimmar porta il nome di Doomhammer, e Thrall porta il suo martello. La nostra città e il nostro Capoguerra custodiscono entrambi la fiducia di un orco morto. Una base pesante su cui costruire, e solida.",
		"Ogni volta che dico Orgrimmar dico anche il nome di Doomhammer. Una città che ricorda i suoi morti a ogni saluto. Mi piace.",
		"Una città che porta il nome di un capo caduto, governata da colui di cui si fidava. Gli orchi costruiscono sulla memoria più che sulla pietra.",
	},
	["race.orc.muse.w09.018"] = {
		"Gli umani trasalgono quando sorrido. Dicono che con le zanne sembra una minaccia. Ho deciso di sorridere di più.",
		"Un orco che sorride rende nervosi gli umani. Non è un problema mio, ma è il mio divertimento.",
	},
	["race.orc.muse.w09.019"] = {
		"La forza è facile da mostrare e difficile da puntare. La prima parte la impara chiunque in fretta. La seconda richiede una vita.",
		"Un braccio forte è un dono del corpo. Sapere quando tenerlo fermo è un dono dello spirito, dicono gli sciamani. Su quello ci sto ancora lavorando.",
		"Colpire forte è la prima lezione della forza. L'ultima è scegliere cosa non colpire.",
	},
	["race.orc.muse.w09.020"] = {
		"Gli anziani raccontano la traversata: navi prese agli umani, un mare che nessuno conosceva e la parola di un profeta, che oltre quel mare una terra aspettava. Aspettava davvero. Era quasi tutta roccia, ma aspettava.",
		"Gli orchi non sono marinai. Eppure i vecchi hanno attraversato un mare intero per arrivare qui, perché Thrall l'aveva detto. Quando dubito del Capoguerra, me ne ricordo.",
		"Ogni orco su Kalimdor sta all'altro capo di un viaggio per mare. Alcuni ce l'hanno fatta, raccontano gli anziani; altri se li è tenuti il mare. Non se ne parla molto.",
	},
	["race.orc.muse.w09.021"] = {
		"batte con due dita un ritmo pesante e regolare, il polso dei tamburi di guerra di Orgrimmar, senza sembrare accorgersene.",
		"si batte piano il pugno chiuso sul petto, una volta, due, come a tenere il tempo di una marcia che sente solo {g:lui|lei}.",
	},
	["race.orc.muse.w09.022"] = {
		"Orchi, troll, tauren, Reietti: l'Orda è fatta di popoli che nessun altro voleva. Non è una debolezza. È la malta.",
		"Nessuno ha scelto l'Orda perché la vita era facile. L'abbiamo scelta perché l'alternativa era la solitudine. Ne viene fuori una compagnia fedele.",
		"L'Orda è una casa strana. Tutti hanno cicatrici, e nessuno è il primo a chiederne.",
	},
	["race.orc.muse.w09.023"] = {
		"Gli orchi sono rumorosi, lo dicono tutti. Nessuno ci vede nei momenti quieti, quando ce ne stiamo con i nostri pensieri come con un sasso in mano.",
		"C'è un silenzio che gli orchi tengono per sé. Quasi nessuno lo sente. È proprio questo lo scopo.",
		"Mi piace il chiasso dell'Orda. A volte mi piace di più questa quiete. Non che lo ammetterei ad alta voce.",
	},
	["race.orc.muse.w09.024"] = {
		"Gli umani hanno costruito i campi e l'hanno chiamata clemenza. I vecchi non l'hanno perdonato, e non sarò io a dire che dovrebbero.",
		"Qualcuno dice che l'Alleanza e l'Orda potrebbero fare la pace. Forse. Prima chiedilo ai vecchi che sono stati dietro le mura dei campi, e ascolta quanto ci mettono a rispondere.",
		"Non odio gli umani. Ricordo soltanto, per conto di chi non può dimenticare, che cosa hanno fatto di noi quando eravamo deboli.",
	},
	["race.orc.muse.w09.025"] = {
		"Ogni panca di una città goblin scricchiola quando ci si siede un orco. Io la prendo come un applauso.",
		"I goblin costruiscono tutto per clienti della loro taglia e fanno prezzi della taglia di un orco. Mi va bene solo metà della faccenda.",
	},
	["race.orc.muse.w09.026"] = {
		"Le Barrens: erba gialla, spine improvvise, e niente che fermi lo sguardo. Lì non mi sento mai {g:osservato|osservata}. Solo {g:piccolo|piccola}.",
		"Nelle Barrens la terra continua e basta, piatta e secca, finché l'occhio si arrende prima della strada. Un buon posto per svuotare la testa.",
		"Durotar è stretta e rossa. Le Barrens sono larghe, gialle e non finiscono mai. Passare dall'una alle altre è come fare un respiro profondo.",
	},
	["race.orc.muse.w09.027"] = {
		"Crossroads sta in mezzo alle Barrens come un pugno piantato su un tavolo. Chi la tiene, tiene le strade. La teniamo noi.",
		"Prima o poi ogni carovana delle Barrens passa da Crossroads. Un forte piccolo con un compito grande. Rispetto le cose così.",
	},
	["race.orc.muse.w09.028"] = {
		"Alcuni orchi evocano ancora i demoni, e l'Orda lo permette, con un occhio aperto. Dopo quello che il fel ci ha fatto, capisco sia la paura sia la voglia di domarlo.",
		"Gli stregoni camminano di nuovo per Orgrimmar. Quando passano, i vecchi tacciono. Un popolo che un tempo apparteneva ai demoni ora prova a possederli. Spero che funzioni.",
		"Un tempo il fel teneva ogni orco al guinzaglio. Adesso alcuni di noi tengono il guinzaglio al posto suo. Agli anziani non piace, e non hanno torto a sorvegliare.",
	},
	["race.orc.muse.w09.029"] = {
		"Affrontami a viso aperto e ti rispetterò, comunque vada. Pugnalami alle spalle e farò un'eccezione.",
		"Combatti onestamente e farò lo stesso. Mentimi, e conoscerai l'altra faccia di un orco.",
	},
	["race.orc.muse.w09.030"] = {
		"Razor Hill è tutta spuntoni, fumo e grida. Se qualcuno mi chiedesse di disegnare l'Orda, disegnerei quella.",
		"Nessuno ha costruito Razor Hill per bellezza. È una collina con mura, spuntoni e una fucina, e ogni orco che ci passa sta un po' più dritto.",
	},
	["race.orc.muse.w09.031"] = {
		"La chiamano Valley of Trials, come se una sola valle potesse contenerle tutte. Le prove vere vengono dopo. La valle insegna soltanto ad aspettarsele.",
		"Valley of Trials è un nome gentile per un posto duro, e quel posto duro è un inizio gentile per la vita di un orco.",
	},
	["race.orc.muse.w09.032"] = {
		"Gli orchi non temono tanto la morte quanto una morte inutile. Una morte che non compra niente è l'unica che rifiuterei.",
		"Quando toccherà a me, voglio che sia per qualcosa. I vecchi guerrieri dicono che è tutto quello che un orco può chiedere, e più di quanto ottengano quasi tutti.",
		"Morire non è la vergogna. Morire per niente, quella sì. È una delle poche cose su cui ogni orco che conosco è d'accordo.",
	},
	["race.orc.muse.w09.033"] = {
		"I cinghiali di Durotar sono magri, cattivi e offesi da tutto. Li rispetto. E me li mangio.",
		"Un cinghiale di Durotar carica prima e non pensa mai. Certi orchi sono uguali. Quegli orchi danno belle storie, e brevi.",
	},
	["race.orc.muse.w09.034"] = {
		"Rend Blackhand tiene i Blackrock nella loro montagna, ancora inchinati a qualunque padrone li voglia. Hanno la nostra pelle verde e i nomi dei nostri clan. È questo che rende tutto peggiore.",
		"I Blackrock di Rend hanno scelto la vecchia strada: padroni e catene, solo con un drago al posto di un demone. Ogni orco dell'Orda è una risposta a loro.",
		"Certi orchi non si sono mai lasciati alle spalle la vecchia Orda. I Blackrock di Rend stanno ancora nella loro montagna a servire un drago. Orchi liberi e orchi in catene, e loro hanno scelto le catene.",
	},
	["race.orc.muse.w09.035"] = {
		"Lontano, nel freddo dei monti di Alterac, i Frostwolf custodiscono la loro valle e i loro lupi. Thrall è nato da quel clan. Ogni orco ne va un po' fiero.",
		"I Frostwolf resistettero sulle montagne mentre il resto di noi era in catene, dicono i vecchi. Esuli che non avevano mai dimenticato cosa fosse un orco. Gli dobbiamo più di quanto diciamo.",
		"Di tutti i clan, i Frostwolf sono quelli che hanno custodito meglio le vecchie usanze, lassù sui monti di Alterac. Quando voglio sapere cosa dovrebbe essere un orco, penso a loro.",
	},
	["race.orc.muse.w09.036"] = {
		"I goblin vendono sia all'Orda sia all'Alleanza. Almeno sono onesti nell'essere disonesti.",
		"Un goblin ti vende una corda e poi vende l'altro capo al tuo nemico. Comunque, la corda di solito è buona.",
	},
	["race.orc.muse.w09.037"] = {
		"Il mio popolo è passato da schiavo dei demoni a prigioniero degli umani a costruttore di una città, nell'arco di una vita sola. Qualunque cosa venga dopo, non scommetterei contro di noi.",
		"Non molto tempo fa gli orchi non avevano una casa loro. Ora c'è Orgrimmar, c'è Razor Hill, c'è Crossroads. Chiedi a un orco se le cose possono cambiare. Le prove siamo noi.",
		"Dalle catene a una città nostra, più in fretta di quanto chiunque credesse possibile. Certi giorni guardo Orgrimmar e penso: questa l'abbiamo fatta noi.",
	},
	["race.orc.muse.w09.038"] = {
		"stringe a pugno una mano verde e la riapre, piano, come per controllare che risponda ancora.",
		"si stira finché le spalle scrocchiano, poi grugnisce, {g:soddisfatto|soddisfatta}, a niente in particolare.",
		"socchiude gli occhi verso l'orizzonte con una pazienza da cacciatore, anche se laggiù non c'è niente che valga la caccia.",
	},
	["race.orc.muse.w09.039"] = {
		"A volte, in uno scontro duro, sento salire la rabbia e mi chiedo se sia mia. Gli sciamani dicono di sì. La maledizione non c'è più; il temperamento è nostro, e anche il freno.",
		"La macchia del demone se n'è andata da noi; ci ha pensato Hellscream. Quello che resta è la semplice collera degli orchi. Quella posso tenerla, e domarla.",
		"Quando mi si accende il carattere mi chiedo di chi sia. Mio, ogni volta, da Hellscream in poi. Quindi tenerlo a bada tocca a me.",
	},
	["race.orc.muse.w09.040"] = {
		"Più mi allontano da Durotar, più mi sento {g:orco|orchessa}. Strano come un popolo si veda meglio da lontano.",
		"Quaggiù nessuno conosce Razor Hill o la Valley of Trials. Li porto nel modo in cui sto in piedi, e quello lo vedono bene.",
		"Ogni strada che si allontana da Orgrimmar è anche una strada per tornarci. Non dimentico mai da che parte sia.",
	},
	["race.orc.muse.w09.041"] = {
		"Le forge di Orgrimmar risuonano a ogni ora. Se la città ha un battito, è quello: martello sul ferro, paziente e rumoroso.",
		"L'acciaio degli orchi è brutto e onesto. Nessuno l'ha mai comprato per l'aspetto, e nessuno l'ha mai riportato rotto.",
		"Il lavoro degli orchi non è bello. È pesante, semplice, e non si rompe. Gli anziani dicono lo stesso del popolo.",
	},
	["race.orc.muse.w09.042"] = {
		"Kalimdor era vecchio molto prima che arrivassimo. Ogni rovina delle Barrens apparteneva a qualcuno che anche lui credeva di restarci per sempre.",
		"Questa terra aveva padroni prima di noi: centauri, quilboar, elfi della notte, altri di cui non resta il nome. Dovremo essere più bravi a tenercela.",
	},
	["race.orc.muse.w09.043"] = {
		"Lok'tar. Non lo grido per fare scena. Lo dico per ricordarmi per che cosa sto in piedi.",
		"Lok'tar. Due sillabe, e dietro un popolo intero.",
	},
	["race.orc.muse.w09.044"] = {
		"Mi fanno male le spalle, gli stivali sono pieni di sabbia e ho una fame da mangiarmi un kodo intero. Una buona giornata da orco, allora.",
		"Dolori dappertutto, polvere tra i denti, pancia vuota. Niente che un orco non sistemi con della carne e un sonnellino.",
	},
	["race.orc.muse.w09.045"] = {
		"Thrall mantiene una pace incerta con gli umani di Theramore. Alcuni orchi brontolano. Io penso che ci voglia più forza per trattenere una guerra che per cominciarla.",
		"La pace con Theramore è un filo sottile. Il Capoguerra ne tiene un capo, e una donna umana l'altro. Spero che abbiano mani forti tutti e due.",
		"Metà dell'Orda vorrebbe marciare su Theramore, e il Capoguerra dice di no. Un capo che sa dire no alla rabbia del suo stesso popolo è cosa rara.",
	},
	["race.orc.muse.w09.046"] = {
		"Gli orchi provano paura come chiunque. Solo che non la lasciamo decidere. Può venire con noi e portare i bagagli.",
		"La paura è un'ottima esploratrice e una pessima capotribù. La lascio fare rapporto, poi decido io.",
	},
	["race.orc.muse.w09.047"] = {
		"Orgrimmar sa di fumo, di cuoio e di carne arrosto. Altre città sanno di profumo e di fogna. So bene in quale preferisco tornare a casa.",
		"Orgrimmar è rumorosa, stretta e calda, e ogni angolo è nostro. Quest'ultima parte compensa tutto il resto.",
		"Certe città sono costruite per impressionare chi le visita. Orgrimmar è costruita per difendersi, per viverci e per litigarci dentro, e riesce benissimo in tutte e tre le cose.",
	},
	["race.orc.muse.w09.048"] = {
		"La cosa migliore che possiede un anziano orco è una storia, e la seconda è qualcuno che l'ascolti. Quando posso, cerco di essere la seconda.",
		"I vecchi orchi raccontano le stesse storie tante volte. Ascolta bene e ogni volta salta fuori un dettaglio diverso, come se la storia stesse ancora decidendo com'è andata.",
	},
	["race.orc.muse.w09.049"] = {
		"Ogni orco crede di sussurrare. Nessun orco ha mai sussurrato. I troll lo trovano esilarante.",
		"Un orco che bisbiglia si sente dall'altra parte di un cortile. Lo sappiamo. Abbiamo smesso di scusarci.",
	},
	["race.orc.muse.w09.050"] = {
		"Durotar incontra il mare con scogliere rosse e dure. Perfino le onde sembrano perdere la pazienza contro di loro.",
		"Il mare lungo la costa di Durotar è l'unica cosa gentile della regione, e anche lui si getta sugli scogli come se facesse sul serio.",
	},
	["race.orc.muse.w09.051"] = {
		"Ci sono ancora soldati di Kul Tiras a Tiragarde Keep, sulla nostra stessa costa. Il loro ammiraglio venne a finirci e ci lasciò la pelle. I suoi uomini non hanno capito l'antifona.",
		"Tiragarde Keep: pietre umane sulla riva di Durotar. Ogni orco che ci passa accanto si ricorda che la guerra non è mai finita davvero. Ha solo cambiato indirizzo.",
	},
	["race.orc.muse.w09.052"] = {
		"Il nostro Capoguerra è uno sciamano prima che un guerriero. Un orco che parla agli elementi prima di sollevare il martello: è a quest'Orda che voglio appartenere.",
		"Thrall ascolta gli spiriti prima di dare ordini. La vecchia Orda ha provato tutti i modi peggiori di comandare.",
	},
	["race.orc.muse.w09.053"] = {
		"Imparo qualcosa da ogni popolo dell'Orda. I troll insegnano la pazienza con le cose strane, i tauren quella con le cose lente. I Reietti insegnano la pazienza e basta.",
		"Un orco da solo impara soltanto a essere orco. L'Orda ci ha dato maestri che non avevamo chiesto, e quasi tutti ne sono valsi la pena.",
	},
	["race.orc.muse.w09.054"] = {
		"Gli orchi portano le cicatrici come altri portano i gioielli: senza vergogna, e con una storia per ognuna. Spesso la storia è esagerata.",
		"Chiedi a un orco di una cicatrice e sentirai un racconto lungo il doppio della ferita. È tradizione, non bugia.",
	},
	["race.orc.muse.w09.055"] = {
		"Frutti del cactus: spine fuori, dolcezza dentro, e ti lasciano le dita doloranti per un giorno. Durotar in un frutto solo.",
		"Sbuccia con cura un frutto del cactus e ti ricompensa. Sbuccialo da orco e passi il resto della giornata a toglierti spine dal pollice.",
	},
	["race.orc.muse.w09.056"] = {
		"La vecchia Orda seguiva gli ordini fin dentro il fel. La nuova segue un Capoguerra che spiega le sue ragioni. Preferisco la seconda, e proprio per questo la seguo con più impegno.",
		"Seguirei Thrall molto lontano. Non perché devo, come si seguiva nella vecchia Orda. Perché mi ha lasciato la scelta.",
	},
	["race.orc.muse.w09.057"] = {
		"alza lo sguardo e si gira piano, come per prendere la direzione di Orgrimmar da qualunque posto sia questo, poi annuisce tra sé.",
		"si ferma e guarda lontano, verso casa a quanto pare, poi serra la mascella e torna alle sue faccende.",
	},
	["race.orc.muse.w09.058"] = {
		"Gli sciamani dicono che gli antenati parlano nei sogni. I miei di solito mi mostrano da mangiare. Forse è un consiglio anche quello.",
		"Se gli antenati visitano gli orchi nel sonno, come sostengono gli sciamani, i miei devono essere spiriti pazienti. Li faccio aspettare da parecchio.",
	},
	["race.orc.muse.w09.059"] = {
		"Quando Thrall aprì i campi, raccontano gli anziani, alcuni orchi non volevano uscire. Avevano dimenticato come si faceva. Lui li aspettò. È per quella pazienza che abbiamo un'Orda.",
		"Thrall liberò i campi uno dopo l'altro, dicono i vecchi, e la parte più difficile non furono mai le guardie. Fu insegnare agli orchi a volere di nuovo qualcosa.",
	},
	["race.orc.muse.w09.060"] = {
		"Bruto, dicono. Poi il carro si impantana e all'improvviso tutti vogliono un bruto.",
		"Tutti guardano dall'alto in basso i muscoli di un orco, finché non c'è qualcosa di pesante da spostare.",
	},
	["race.orc.muse.w09.061"] = {
		"Clan interi si sono perduti nel fel e nelle guerre che ha scatenato. Quando conto l'Orda, conto anche i vuoti.",
		"A volte gli anziani si fermano a metà di un racconto e tacciono per un po'. Manca qualcuno che dovrebbe esserci. Ho imparato ad aspettare con loro.",
		"Siamo meno di quanti dovremmo essere. I demoni hanno preso la loro parte, poi gli umani, poi i lunghi anni nei campi. Ogni bambino orco è una piccola vittoria.",
	},
	["race.orc.muse.w09.062"] = {
		"L'onore non paga il pranzo. Ma un mercante che sa che mantieni la parola ti fa credito, e ci siamo quasi.",
		"La mia parola vale più della mia borsa. Nei giorni magri non è un gran vanto, ma resta vero.",
	},
	["race.orc.muse.w09.063"] = {
		"La pelle è verde, le zanne sono vere e il caratteraccio è quasi sempre sotto controllo. Altre domande?",
		"Pelle verde, zanne vere, buone maniere. Due su tre sorprendono la gente.",
	},
	["race.orc.muse.w09.064"] = {
		"In una terra secca, dicono gli anziani, ogni sorgente è un dono degli spiriti dell'acqua. Gli orchi di Durotar non ne sprecano una goccia. Mi sorprendo a fare lo stesso ovunque.",
		"L'acqua è il primo spirito che un orco di Durotar impara a ringraziare. Tutto il resto può aspettare; la sete no.",
		"Non passo mai accanto ad acqua pulita senza dire grazie. Gli sciamani di Durotar insegnano l'abitudine a chiunque voglia ascoltare. È un'abitudine che si attacca.",
	},
	["race.orc.muse.w09.065"] = {
		"Se ti serve aiuto, chiedi. Se ti serve una rissa, chiedi con educazione. Vado bene per tutte e due.",
		"Ti servono una schiena forte o una testa dura? Le ho tutte e due, e le presto a poco.",
	},
	["race.orc.muse.w09.066"] = {
		"Gli orchi invecchiano duro, dicono gli anziani: alla fine il corpo paga ogni battaglia. Lo dicono ridendo, con metà dei denti che mancano.",
		"I vecchi guerrieri scricchiolano quando si alzano, e si vantano di ogni scricchiolio. Ognuno è uno scontro, dicono. Io conto di scricchiolare forte, quando toccherà a me.",
	},
	["race.orc.muse.w09.067"] = {
		"Il nome di Gul'dan si sputa, non si pronuncia. La fame di potere di un solo orco, dicono gli anziani, e un popolo intero ne ha pagato il prezzo.",
		"Gli anziani dicono che la vecchia Orda fu venduta dai suoi: un consiglio di orchi che amavano il potere più del loro popolo. Ogni capo venuto dopo ha dovuto dimostrare di non essere così.",
	},
	["race.orc.muse.w09.068"] = {
		"Il caldo di Durotar ti si posa sulle spalle come un giogo. Gli orchi lo portano senza lamentarsi, quasi sempre, e finiscono per rimpiangerlo dovunque faccia più fresco.",
		"Ogni posto più fresco di Durotar sembra una vacanza a un orco, per un giorno o giù di lì. Poi qualcosa dentro di noi comincia a rimpiangere il peso del caldo.",
	},
	["race.orc.muse.w09.069"] = {
		"I grunt alle porte di Orgrimmar stanno lì al caldo tutto il giorno perché il resto di noi possa lamentarsi del caldo al chiuso. Qualcuno dovrebbe ringraziarli. Io di solito faccio un cenno.",
		"Ogni grunt su un muro è un orco che ha scelto la noia perché gli altri avessero la pace. Merita più rispetto di quanto ne riceva.",
	},
	["race.orc.muse.w09.070"] = {
		"Le canzoni vanno bene. Ma il nome di un orco si fa con le piccole imprese che nessuno canta: una promessa mantenuta, un carico portato, un amico non lasciato indietro.",
		"La gloria è rumorosa e se ne va in fretta. Il rispetto è silenzioso e resta. Io prendo quello silenzioso, e anche l'altra se capita di passaggio.",
		"Gli anziani dicono che un nome si costruisce come un muro: una pietra al giorno, e nessuno se ne accorge finché non regge.",
	},
	["race.orc.muse.w09.071"] = {
		"tira fuori dalla bisaccia un pezzo di carne secca e lo mastica piano, con la serietà di chi sbriga un affare importante.",
		"mastica una striscia di carne essiccata con grande concentrazione, come se il pasto l'avesse {g:offeso|offesa} di persona.",
	},
	["race.orc.muse.w09.072"] = {
		"I bambini orchi oggi crescono senza aver mai visto il muro di un campo. Gli anziani li guardano giocare con un'espressione che non so bene come chiamare. Invidia, forse, o sollievo.",
		"In qualche villaggio di Durotar sta crescendo un bambino orco che non ha mai sentito la voce di un carceriere. Tutto quello che hanno patito i vecchi era per questo.",
	},
	["race.orc.muse.w09.073"] = {
		"Forza per chi sta con me, e una testa dura per chi non ci sta. È tutta la mia filosofia.",
		"La mia filosofia ci sta su una zanna: tenere duro, parlare chiaro, mangiare bene.",
	},
	["race.orc.muse.w09.074"] = {
		"I demoni se ne sono andati dal nostro sangue, ma non dal mondo. Gli sciamani dicono che sono pazienti. Anche noi, ora.",
		"La Burning Legion si ricorda di noi, chissà dove. Che si ricordi. Stavolta troverà orchi che sanno quanto costa la sua offerta.",
	},
	["race.orc.muse.w09.075"] = {
		"Gli orchi scrivono poco e ricordano molto. Gli anziani portano in testa storie intere, e si correggono a vicenda a pieni polmoni.",
		"La nostra storia vive nelle voci più che nei libri. Per questo è più rumorosa di quasi tutte, e più difficile da bruciare.",
	},
	["race.orc.muse.w09.076"] = {
		"Stonard, Kargath, Hammerfall: piccoli forti orchi sparsi per gli Eastern Kingdoms come spine testarde. Gli umani ci volevano fuori dalle loro terre. Alcuni di noi sono rimasti per puntiglio.",
		"I vecchi hanno combattuto in tutti gli Eastern Kingdoms, e lì sventolano ancora stendardi dell'Orda: Hammerfall, Kargath, Stonard. Posti piccoli, tenuti da orchi troppo orgogliosi per andarsene.",
	},
	["race.orc.subzone_enter.w09.001"] = {
		"{subzone}. Controllo prima il terreno: abbastanza duro per starci in piedi, abbastanza morbido da scavarci se serve.",
		"Il suolo di {subzone} sotto gli stivali. Un orco giudica un posto da come regge il passo prima che dall'aspetto.",
		"Entro in {subzone} saggiando la terra a ogni passo, come i vecchi guerrieri insegnano ai giovani.",
	},
	["race.orc.subzone_enter.w09.002"] = {
		"entra in {subzone} a spalle larghe, con il passo di chi si aspetta una sfida e non ha niente in contrario.",
		"avanza in {subzone} a mento alto, come a sfidare il posto a farne una questione.",
		"arriva in {subzone} con un passo regolare e pesante, senza fretta e senza nascondersi, come gli orchi vanno ovunque.",
	},
	["race.orc.subzone_enter.w09.003"] = {
		"{subzone}. Non c'è il rosso di Durotar, ma quello non c'è da nessuna parte. Andrà bene.",
		"{subzone}. Faccio il confronto con casa senza volerlo. Vince casa, ma con educazione.",
		"Ecco {subzone}. Per Durotar sarebbe un posto molle. Questo parere lo tengo per me, quasi sempre.",
	},
	["race.orc.subzone_enter.w09.004"] = {
		"{subzone}. Cerco prima i colori dell'Orda. Poi qualcosa che valga la pena di mangiare.",
		"{subzone}. Prima gli stendardi: di chi sono? Poi il fumo delle cucine: di chi è?",
	},
	["race.orc.subzone_enter.w09.005"] = {
		"{subzone}. Se c'è silenzio, mi fido di meno. Gli orchi diffidano della quiete: di solito vuol dire che qualcuno trattiene il fiato.",
		"{subzone}. Il rumore lo capisco. Il silenzio lo controllo due volte.",
		"{subzone}. I vecchi guerrieri dicono che un posto troppo calmo è un'imboscata che non si è ancora alzata. Tengo gli occhi in movimento.",
	},
	["race.orc.subzone_enter.w09.006"] = {
		"{subzone}. Bel posto. Chi devo ringraziare, e con chi devo battermi?",
		"{subzone}, eh? Imparerò bene il nome quando saprò se morde.",
	},
	["race.orc.subzone_enter.w09.007"] = {
		"{subzone}. Prima il naso. Fumo, acqua, bestie o sangue: un orco sa cosa contiene un posto prima ancora di vederlo.",
		"Entro in {subzone} annusando. Ogni terra ha il suo odore. Quello di Durotar è pietra calda; questo lo imparerò.",
		"{subzone}. Respiro a fondo e faccio l'inventario: cosa si mangia, cosa morde, cosa brucia.",
	},
	["race.orc.subzone_enter.w09.008"] = {
		"{subzone}. Molti posti ricordano gli orchi come predoni. Vorrei che questo mi ricordasse in un altro modo.",
		"{subzone}. La vecchia Orda ha lasciato il segno su mezzo mondo. Io cerco di lasciarne uno più leggero.",
		"{subzone}. Qualunque cosa abbiano fatto qui gli orchi in passato, se qualcosa hanno fatto, io entro come {g:un orco|un'orchessa} di Thrall. Dovrebbe voler dire qualcosa.",
	},
	["race.orc.subzone_enter.w09.009"] = {
		"si scrolla la polvere della strada dagli stivali al margine di {subzone}, una piccola cerimonia d'arrivo.",
		"raggiunge {subzone} e batte gli stivali contro una pietra, prima uno poi l'altro, come un ospite che si pulisce i piedi sulla soglia.",
	},
	["race.orc.subzone_enter.w09.010"] = {
		"{subzone}. Gli sciamani dicono che ogni luogo ha spiriti che c'erano da prima. Li saluto con un cenno, piano. L'educazione non costa niente.",
		"Ogni lembo di terra ha i suoi spiriti, dicono gli sciamani, e {subzone} non fa eccezione. Faccio sapere loro che sta passando un orco, e che non cerca guai se non gliene fanno.",
		"{subzone}. Una parolina agli spiriti che custodiscono questa terra. Gli sciamani lo vorrebbero, e male non fa.",
	},
	["race.orc.subzone_enter.w09.011"] = {
		"{subzone}. Le gambe mi dicono quanta strada ho fatto per arrivare. L'orgoglio dice loro di stare zitte.",
		"Finalmente {subzone}. La strada è stata lunga; un orco se ne lamenta solo dopo essersi seduto.",
		"{subzone}. Piedi doloranti, respiro regolare. Un orco arriva in orario, oppure arriva arrabbiato.",
	},
	["race.scourge.landmark.w09.001"] = {
		"{landmark}. Ogni luogo con un nome ha avuto i suoi vivi, gente che stava dove sto io e non immaginava qualcuno come me. Eppure eccomi.",
		"{landmark}. Mi chiedo chi l'abbia costruito e se riposi qui vicino. Se è così, spero che dorma meglio di come ho dormito io.",
		"{landmark}. La pietra e il legno invecchiano; io, non granché. Mi chiedo chi dei due resterà in piedi più a lungo.",
	},
	["race.scourge.landmark.w09.002"] = {
		"si ferma davanti a {landmark} e lo studia con lo sguardo lungo e fisso di chi non ha alcuna fretta.",
		"si ferma a {landmark}, la testa inclinata, come in ascolto di qualcosa sotto il rumore dei vivi.",
	},
	["race.scourge.landmark.w09.003"] = {
		"{landmark}. Delizioso. Qualcuno qui tiene delle torce a portata di mano? Giusto per sapere dove non mettermi.",
		"{landmark}. Mi comporterò benissimo. Chiedete a chiunque: per anni non ho fiatato.",
	},
	["race.scourge.muse.w09.001"] = {
		"Stringo un boccale caldo tra queste mani e il boccale si raffredda prima che le dita se ne accorgano. Ho smesso di chiedere scusa alla tisana.",
		"I vivi si scaldano le mani al fuoco. Io le allungo per abitudine e guardo le fiamme non fargli proprio niente.",
		"Mani fredde, cuore caldo, si diceva. La prima metà del proverbio mi riesce benissimo.",
	},
	["race.scourge.muse.w09.002"] = {
		"I vivi si sdraiano e lasciano il mondo per qualche ora. Io resto. Qualcuno deve pur tenerlo d'occhio, e nessuno me l'ha chiesto.",
		"Il sonno era una porta che attraversavo ogni giorno senza pensarci. Adesso è una porta dipinta sul muro. A volte mi ci siedo accanto, per cortesia.",
		"Mentre gli altri dormono rammendo cinghie, conto monete, ascolto i muri. Le ore sono lunghe, quando non si possono passare a dormire.",
	},
	["race.scourge.muse.w09.003"] = {
		"Mangio ancora. Non chiedetemi a che scopo. L'abitudine è sopravvissuta allo stomaco, e non ho fretta di darle la notizia.",
		"Il cibo ormai non sa quasi di niente, così cucinare per me è facilissimo. Chiedete a qualunque oste.",
		"Pane, formaggio, un po' di carne: mastico, ingoio, e aspetto il piacere che veniva dopo. Non arriva mai, ma masticare fa passare il tempo.",
	},
	["race.scourge.muse.w09.004"] = {
		"fa passare l'ago in una cucitura allentata al polso, con calma e precisione, come si rammenda una calza.",
		"controlla uno per uno i punti lungo l'avambraccio e stringe quello che ha cominciato a cedere.",
		"stacca coi denti un pezzo di filo e torna a ricucirsi, senza la minima smorfia.",
	},
	["race.scourge.muse.w09.005"] = {
		"Se la mascella scatta mentre parlo, fateci caso il meno possibile. Ha idee tutte sue.",
		"Perdonate la raucedine. La voce funziona ancora; le hanno solo tolto la lucidatura.",
		"Parlare più forte? Volentieri. Questa gola dà quel che dà, e oggi è soprattutto ghiaia.",
	},
	["race.scourge.muse.w09.006"] = {
		"Le mosche mi trovano prima di chiunque altro. Ho deciso di prenderlo come un complimento alla mia posizione nel mondo delle mosche.",
		"I corvi mi guardano con interesse professionale. Io ricambio con lo stesso. Nessuno dei due ha fretta.",
	},
	["race.scourge.muse.w09.007"] = {
		"Un taglio può restarmi sul braccio un'ora prima che me ne accorga. Il dolore ormai mi raggiunge tardi, come una lettera spedita a un vecchio indirizzo.",
		"Il dolore arriva ancora, ma debole e lento, un colpo a una porta tre stanze più in là. Rispondo quando ci arrivo.",
		"Con le ferite non ho coraggio, ho solo poca sensibilità. La gente confonde le due cose, e io la lascio fare.",
	},
	["race.scourge.muse.w09.008"] = {
		"Ogni volta che qualcosa mi entra in testa per piegarmi, da qualche parte dentro sbatte una porta. Quella porta non l'ho costruita io. Me la sono guadagnata.",
		"Paura, incanti, un sussurro per farmi inginocchiare: li sento provarci, e li sento scivolare via. Una mente che è stata posseduta una volta non si lascia possedere due.",
		"Provi pure qualunque voce a guidarmi. Ho sentito la peggiore che esista, e ne sono {g:uscito|uscita}.",
	},
	["race.scourge.muse.w09.009"] = {
		"Un lago è solo una strada col coperchio. Posso camminare sul fondo finché mi pare; i pesci continuano a fissarmi come se avessi infranto una regola.",
		"I vivi trattengono il fiato e scalciano verso la superficie. Io non ho fiato da trattenere, così prendo la strada panoramica, lungo il fango.",
	},
	["race.scourge.muse.w09.010"] = {
		"C'è una cosa che possiamo fare coi caduti, un modo di riprenderci le forze dalla carne. Gli orchi distolgono lo sguardo quando lo vedono. Certi giorni, anch'io.",
		"I vivi fanno fatica a guardare il modo in cui ci rimettiamo in sesto sul campo. Non li biasimo. Vorrei solo che guardassero il Flagello con lo stesso ribrezzo.",
	},
	["race.scourge.muse.w09.011"] = {
		"La Regina Banshee non si spiega, e noi non chiediamo. Quando hai preso ordini dal Re dei Lich, un sovrano che tace sembra una grazia.",
		"Lady Sylvanas un tempo era una ranger di Quel'Thalas, e guarda ancora il mondo come il margine di un bosco. Scopro di fidarmi di una regina che non smette mai di osservare.",
		"Qualunque cosa la Dama Oscura abbia in mente, l'ha pensata sveglia e libera. Basta questo a metterla sopra il padrone che avevamo prima.",
	},
	["race.scourge.muse.w09.012"] = {
		"Nessuno direbbe che Undercity è una bella città. Però è nostra, ogni gradino umido, e nessun altro la voleva abbastanza da portarcela via.",
		"Una casa sotto una rovina. I vivi la troverebbero lugubre. A me pare giustissimo: la terra ci ha già tenuto una volta, e abbiamo scelto di restare sotto.",
	},
	["race.scourge.muse.w09.013"] = {
		"Le tombe intorno a Deathknell sono piene di terra smossa e di smarrimento fresco. Chi ne esce ha bisogno di qualche giorno per imparare la forma della nuova vita. Alcuni di noi la stanno ancora imparando.",
		"Deathknell: una cappella, un cimitero e un via vai di appena risorti che chiedono in che anno siamo. Nessuno ride di loro. Ognuno di noi, un tempo, ha chiesto qualcosa del genere.",
		"A Deathknell, in questo momento, qualcuno appena risorto sta imparando di nuovo a stare in piedi. Qualcuno avrà pazienza con lui, come qualcuno l'ha avuta con ciascuno di noi.",
	},
	["race.scourge.muse.w09.014"] = {
		"La Royal Apothecary Society risponde a ogni domanda con un sorriso educato e una porta chiusa. Ho imparato ad ammirare la porta.",
		"Gli speziali lavorano in silenzio, e il silenzio ha un odore: aceto, radice amara, e sotto qualcos'altro che preferisco non nominare. Qualunque cosa stiano preparando, voglio stare dalla sua parte buona.",
		"Chiedi a uno speziale cosa c'è nel tino e avrai una lezione su tutto tranne che sul tino. In questo sono bravissimi.",
	},
	["race.scourge.muse.w09.015"] = {
		"La Scarlet Crusade mi brucerebbe cantando. La chiamano purezza. Io lo chiamo un falò col coro.",
		"A Hearthglen e al Monastero pregano per avere la forza di distruggere quelli come me. Giusto. Io non prego nessuno, e intanto mi esercito.",
		"I crociati non odiano il Flagello più di noi. Anzi, credo che odino di più noi: siamo i morti che sono scappati.",
	},
	["race.scourge.muse.w09.016"] = {
		"Il Re dei Lich siede sul suo ghiaccio in cima al mondo, lontano da qui. Alcuni di noi intendono fargli visita, un giorno. Non per inginocchiarsi.",
		"Il Re dei Lich è lontano. Per ora mi sta bene così. Un debito tanto grande va riscosso di persona, e non sono ancora {g:pronto|pronta}.",
	},
	["race.scourge.muse.w09.017"] = {
		"Gli orchi ci giudicano da come teniamo la linea. Giusto. È la prima prova da anni che non ha niente a che fare col mio odore.",
		"Tollerati è una bella parola. Eserciti migliori mi hanno chiamato in modi peggiori.",
		"Un orco una volta mi ha detto che i Reietti combattono come chi non ha niente da perdere. Voleva essere un avvertimento. Io l'ho preso per una recensione.",
	},
	["race.scourge.muse.w09.018"] = {
		"I troll tengono un po' di distanza e parecchi amuleti tra sé e me. I loro stregoni sui morti ne sanno più di quasi tutti. Forse è proprio questo il problema.",
		"Un troll ha fatto un segno con due dita mentre passavo. Non so cosa significhi. Sospetto che non voglia dire «benvenuto».",
	},
	["race.scourge.muse.w09.019"] = {
		"A volte riaffiora un motivo, tre note e niente parole, dalla vita di prima. Lo canticchio con una gola che lo raschia in qualcos'altro. È ancora mio.",
		"Una volta ero {g:vivo|viva}. Questo è certo. Il resto arriva a brandelli: odore di lana bagnata, una scala che scricchiolava, una risata a cui non so dare una faccia.",
		"La memoria è come una cantina dopo un'alluvione. Quasi tutto è rovinato; ogni tanto tiro fuori qualcosa d'intatto e non ho idea di chi fosse.",
	},
	["race.scourge.muse.w09.020"] = {
		"Il Flagello non mi chiedeva di essere gentile, né crudele. Non chiedeva niente: mi muoveva e basta. Adesso ogni scelta è mia, e quelle miti le faccio più spesso di quanto la gente si aspetti.",
		"Non tutti i Reietti sono crudeli. Alcuni di noi sono solo stanchi, e alcuni sono più buoni di quanto fossero da vivi, come se ci avessero dato una seconda occasione per provarci.",
	},
	["race.scourge.muse.w09.021"] = {
		"Quando Lordaeron cadde la Luce era ovunque, in ogni cappella e in ogni preghiera, e la peste non l'ha fermata. Non la maledico. Ho solo smesso di aspettarmi che venga quando la si chiama.",
		"C'era una cappella in ogni villaggio del vecchio regno. Quasi tutte sono macerie, ormai. Ci passo davanti senza rabbia e senza inginocchiarmi, ed è quanto di più vicino alla pace io abbia trovato.",
	},
	["race.scourge.muse.w09.022"] = {
		"Morire è stata la cosa peggiore che mi sia mai capitata, e mi sono {g:ripreso|ripresa} del tutto. Quasi.",
		"La morte? Sopravvalutata. L'ho provata una volta: il secondo atto è meglio.",
		"Ti direi di goderti la vita finché dura, ma detto da me suona strano.",
	},
	["race.scourge.muse.w09.023"] = {
		"I vivi corrono perché il tempo gli sta alle calcagna. Il mio si è fermato. Posso aspettare la fine di un rancore, di un assedio o di un mercante lento con la stessa calma.",
		"La pazienza ai morti viene facile. Non rischiamo di finire il tempo; solo di finire le ragioni.",
		"Mettetemi pure fretta. Alla fine ci sono già {g:arrivato|arrivata} una volta; nient'altro è urgente.",
	},
	["race.scourge.muse.w09.024"] = {
		"Un attimo, si è staccato qualcosa. No, non quello. Nemmeno quello. Ah. Va bene, proseguiamo.",
		"Se vedete un dito per strada, non è mio. Probabilmente. Fatemi contare.",
	},
	["race.scourge.muse.w09.025"] = {
		"Il fuoco mi fa più paura di un tempo. La carne vecchia e secca prende fuoco in fretta, e ho visto cosa fa una torcia ai morti. Da ogni focolare tengo una distanza rispettosa.",
		"I vivi vanno verso il fuoco per scaldarsi. Io ci giro intorno. A me non ha calore da offrire, solo una fine molto rapida.",
		"Ho visto Reietti fare un passo indietro da un fuoco da campo senza pensarci, come i vivi davanti a un precipizio. Il corpo sa cosa brucia.",
	},
	["race.scourge.muse.w09.026"] = {
		"Fra tutte le bestie che portano l'Orda, le nostre sono i pipistrelli. Non si ritraggono davanti a noi. Forse sono le sole creature che non l'abbiano mai fatto.",
		"I pipistrelli di Tirisfal sono coriacei, strillano e non giudicano affatto. È per l'ultima cosa che mi sono cari.",
	},
	["race.scourge.muse.w09.027"] = {
		"Il principe Arthas tornò a casa tra gli applausi e uccise il padre sul trono. Il trono è ancora lassù, sotto il cielo aperto. Nessuno di noi ci si siede. Non è più quel genere di regno.",
		"Le rovine sopra Undercity erano il cuore di Lordaeron. Ora sono un coperchio. Mi piace sapere esattamente cosa c'è tra me e il cielo: pietra rotta e un brutto ricordo.",
	},
	["race.scourge.muse.w09.028"] = {
		"Silverpine: pini, lupi, e le cripte del Sepulcher scavate in una collina. Il muro di Gilneas si alza alla sua estremità sud. Si sono chiusi dentro per restare vivi. Noi quella preoccupazione l'avevamo già superata.",
		"Il Sepulcher è qualche cripta e un sacco di Deathguard stanchi che tengono una foresta per la Dama Oscura. Ogni avamposto dei Reietti è così: poca cosa, tenuta con le unghie.",
	},
	["race.scourge.muse.w09.029"] = {
		"A Southshore suonerebbero la campana d'allarme a vedermi. Da {g:vivo|viva} stavo da qualche parte nel vecchio regno, probabilmente non lontano, e adesso la campana suona per me.",
		"Per la gente di Southshore sono il nemico alle porte. Per me sono i vicini che non ricordo. Nessuno ha torto, ed è questo il peggio.",
	},
	["race.scourge.muse.w09.030"] = {
		"I Deathguard non si appisolano al loro posto. Non possono. Le migliori sentinelle dell'Orda, e non chiedono mai un giorno di riposo.",
		"Un Deathguard sulle mura non sbadiglia, non trema, non si appisola. I vivi lo trovano inquietante. Io la chiamo una porta ben custodita.",
	},
	["race.scourge.muse.w09.031"] = {
		"Sotto il sole di Durotar gli orchi sudano, i troll sorridono, e io mi secco solo un po' di più, come un'erba sul davanzale.",
		"Il caldo di Durotar a un corpo come il mio non fa niente, se non accelerare l'imbalsamazione. Gli orchi mi credono {g:coraggioso|coraggiosa} a portare questo mantello. Io sto solo tenendo insieme i pezzi.",
	},
	["race.scourge.muse.w09.032"] = {
		"Quando una mano viva stringe la mia, la sento ritrarsi al freddo. Quasi tutti però tengono la presa, per educazione. Quelli li conto.",
		"Una stretta di mano coi vivi è una piccola prova. Loro sentono il gelo, io li sento decidere se mollare. Chi non molla, me lo ricordo.",
		"Offro la mano meno di un tempo. Non per orgoglio: per pietà della mano che deve stringerla.",
	},
	["race.scourge.muse.w09.033"] = {
		"Tranquilli, non sanguino granché. Trasudo, al massimo. È meno teatrale.",
		"Quello? Un graffio. Su di me i graffi restano graffi. Non c'è più molto da farci uscire.",
	},
	["race.scourge.muse.w09.034"] = {
		"si raddrizza con un rumore di giunture che tornano al loro posto, come una porta su un vecchio cardine.",
		"ruota piano il collo; dentro qualcosa schiocca, e sembra vagamente {g:soddisfatto|soddisfatta} del risultato.",
	},
	["race.scourge.muse.w09.035"] = {
		"I Reietti custodiscono i rancori come i vivi custodiscono i cimeli di famiglia: con cura, e molto a lungo. Io ne ho qualcuno. Li lucido.",
		"Perdonare costa fatica, e i morti devono fare economia. Le cose piccole le perdono. Quelle grandi le archivio.",
	},
	["race.scourge.muse.w09.036"] = {
		"Morire una volta non mi ha insegnato niente sul morire due volte. Forse dopo questo non c'è niente. Forse è quello che la prima morte cercava di dirmi, prima che il Flagello la interrompesse.",
		"I vivi temono la fine. Io l'ho vista da vicino, e poi mi hanno {g:trascinato|trascinata} indietro. Quello che mi spaventa non è il buio: è un'altra mano sulla leva, di nuovo.",
		"Temo la seconda morte meno di un secondo padrone. La polvere posso accettarla. I fili, mai più.",
	},
	["race.scourge.muse.w09.037"] = {
		"I goblin degli zeppelin mi trattano come qualunque altro passeggero: una tariffa, un peso, una cosa che non deve vomitare oltre il parapetto. Potrei abbracciarli.",
		"Ai goblin non importa se sei un cadavere, purché le tue monete siano vive. Gente onesta, a modo suo.",
	},
	["race.scourge.muse.w09.038"] = {
		"Ora leggo più di quanto abbia mai fatto, sospetto. Ai libri non importa quanto ci metti, né cosa resta delle mani che girano le pagine.",
		"Un libro lungo e un angolo tranquillo: i morti hanno tempo per entrambi. Alcuni di noi sono diventati tremendamente colti.",
		"I morti sono buoni lettori: non si addormentano mai a metà capitolo.",
	},
	["race.scourge.muse.w09.039"] = {
		"Tirisfal fa ancora crescere zucche, grasse e arancioni, in campi dove è passata la peste. C'è qualcosa di testardo in quella terra. Lo riconosco.",
		"I campi di Tirisfal continuano a far crescere quello che ci si mette, come se nessuno avesse detto alla terra che il regno è finito.",
	},
	["race.scourge.muse.w09.040"] = {
		"Brill tiene un'osteria per i viaggiatori vivi e un cimitero perché il resto di noi si senta a casa. Un paese premuroso.",
		"A Brill l'oste serve i vivi, il becchino serve i morti, e non hanno mai litigato per un cliente.",
	},
	["race.scourge.muse.w09.041"] = {
		"Ho ancora parecchi anni davanti. Non tutto io, d'accordo. Il ginocchio sinistro sta trattando.",
		"Invecchiare mi preoccupa meno, ormai. Marcire è più un progetto.",
	},
	["race.scourge.muse.w09.042"] = {
		"Le Plaguelands sono la casa da cui siamo scappati. Alcuni di noi ci rientrano, armati, per rivedere le stanze dove ci tenevano. Capisco la voglia. Non tutti i giorni la condivido.",
		"A est di Tirisfal la terra è ancora malata, gli alberi piegati, i fiumi guasti. Il Flagello non pulisce mai dopo di sé. Noi, almeno, spazziamo.",
	},
	["race.scourge.muse.w09.043"] = {
		"Ho perso qualche anno da qualche parte tra la tomba e le sale della Dama Oscura. Nessuno li restituisce. Ho smesso di chiedere la ricevuta.",
		"Quanto ho servito il Flagello? Mesi, un anno? Quel tempo c'è ed è vuoto, come una pagina che qualcuno ha strappato e si è tenuto.",
	},
	["race.scourge.muse.w09.044"] = {
		"Non ricordo granché di ciò che facevano le mie mani quando appartenevano al Flagello. Ho deciso che è una grazia, e non ci guardo sotto.",
		"Alcuni Reietti ricordano tutto quello che hanno fatto da burattini del Re dei Lich. Il mio ricordo è quasi tutto buchi. Non so decidere a chi sia andata meglio.",
	},
	["race.scourge.muse.w09.045"] = {
		"Chiamatemi abominio, se volete. Gli abomini sono più alti e hanno più cuciture. Io sono solo un po' in disordine.",
		"I vivi hanno una lista intera di nomi per noi. Li ho sentiti quasi tutti. «Cadavere» almeno è onesto: a quello rispondo.",
	},
	["race.scourge.muse.w09.046"] = {
		"La Dama Oscura è stata la prima a chiederci cosa volessimo. Quasi tutti abbiamo dovuto pensarci a lungo. Alcuni ci stanno ancora pensando.",
		"Seguo Sylvanas perché ha spezzato la catena prima e ha fatto domande dopo. Quasi tutti i sovrani fanno il contrario.",
	},
	["race.scourge.muse.w09.047"] = {
		"Un signore del terrore sta al fianco della Dama Oscura, nel Royal Quarter. Lei dice che serve. Ho visto abbastanza padroni da sapere come può girare quella parola.",
		"Varimathras sorride troppo per una creatura che risponde a qualcuno. Tengo le distanze e la mia opinione, tutte e due con cura.",
	},
	["race.scourge.muse.w09.048"] = {
		"I cani lo sanno. Ogni cane di ogni villaggio abbaia fino a perdere la voce quando salgo per la strada. I gatti si limitano a fissarmi, che è peggio.",
		"I cavalli scartano, i cani ululano, le galline si sparpagliano. Gli animali dei vivi non sono mai stati educati con me, nemmeno una volta.",
	},
	["race.scourge.muse.w09.049"] = {
		"I nostri cavalli sono come noi: ossa, un po' di cuoio e una testardaggine sopravvissuta alla carne. Non vogliono fieno. Non vogliono niente. Ci capiamo.",
		"Un cavallo scheletrico non si stanca mai e non si spaventa mai. I vivi lo trovano orribile. Per me è una compagnia riposante.",
	},
	["race.scourge.muse.w09.050"] = {
		"I vivi odorano di pane, sudore e fumo, tutto insieme, sempre. Avevo dimenticato quanto un corpo vivo sia rumoroso per il naso.",
		"A volte, tra la folla, sento l'odore caldo di qualcuno di vivo e qualcosa in me si volta verso di lui, come una pianta verso la finestra. Non lascio che vada oltre.",
		"Pane fresco, un cavallo sudato, fumo nei capelli di qualcuno: i vivi si portano addosso tutta la giornata. Io porto erbe e terra, e nessuno mi chiede com'è andata la mia.",
	},
	["race.scourge.muse.w09.051"] = {
		"ride, un suono secco come ghiaia scossa in una scatola, e non sembra curarsi di come arrivi.",
		"si lascia sfuggire una risata breve e roca che fa voltare qualche testa, e continua a camminare.",
	},
	["race.scourge.muse.w09.052"] = {
		"resta immobile così a lungo che un ragno comincia a prendere le misure dello stivale per una tela.",
		"aspetta senza spostare il peso nemmeno una volta, con la pazienza di qualcosa che non si stanca più di stare in piedi.",
	},
	["race.scourge.muse.w09.053"] = {
		"strofina un pizzico d'erbe amare in una cucitura del colletto, e l'odore di tomba arretra un poco.",
		"passa un po' d'olio da una fiaschetta lungo una giuntura rigida, massaggiandolo con dita lente ed esperte.",
	},
	["race.scourge.muse.w09.054"] = {
		"piega la testa all'indietro e osserva il cielo aperto con un vago sospetto, come se potesse lasciar cadere qualcosa.",
		"alza gli occhi verso il cielo ampio con il lieve disagio di chi è più {g:abituato|abituata} a un soffitto.",
	},
	["race.scourge.muse.w09.055"] = {
		"Eravamo il popolo di Arthas, quelli che doveva proteggere. È tornato con una peste, invece. Spero che un giorno qualcuno glielo ricordi, con una lama.",
		"Ogni Reietto era suddito della corona che Arthas ha gettato via. Abbiamo una lunga lista di lamentele, e un solo indirizzo.",
	},
	["race.scourge.muse.w09.056"] = {
		"Niente in questo corpo mi supplica di fermarmi: nessun fiato corto, nessun cuore che martella. Quello che mi fa andare avanti adesso è la volontà, nuda e testarda, e la tengo affilata.",
		"I vivi hanno il corpo a spingerli: la fame, la paura, il sangue nelle vene. Io ho solo la decisione di andare avanti. La prendo di nuovo ogni mattina.",
	},
	["race.scourge.muse.w09.057"] = {
		"La gente chiede se gli speziali troveranno una cura. Per cosa, di preciso? Non sono {g:malato|malata}. Sono solo {g:finito|finita}, e vado avanti lo stesso.",
		"Una cura vorrebbe dire tornare a essere quel che ero. Di quella persona non ricordo abbastanza da rivolerla.",
	},
	["race.scourge.muse.w09.058"] = {
		"scuote il mantello, e ne escono una nuvoletta di polvere e una falena molto confusa.",
		"si spazzola la terra di tomba dalla manica con l'aria di chi ha smesso di sperare che resti via.",
	},
	["race.scourge.muse.w09.059"] = {
		"Rilassati. Se volessi mangiarti, avrei fatto molto meno rumore.",
		"No, non mordo. Le buone maniere le ho conservate. Quasi tutte, almeno: qualcuna si è staccata insieme al resto.",
	},
	["race.scourge.muse.w09.060"] = {
		"Il regno in cui vivevo ha combattuto gli orchi per anni. Ora sto nella loro Orda, e gli orchi mi chiedono la strada per Undercity. La storia ha un umorismo nero.",
		"Lordaeron costruì i campi in cui furono rinchiusi gli orchi. Ora gli orchi dividono il pane con i morti di Lordaeron. Non so come chiamarlo, ma non è poco.",
	},
	["race.scourge.muse.w09.061"] = {
		"I canali di Undercity scorrono densi e verdi, e i vivi si tappano il naso sui ponti. Io mi appoggio al parapetto e guardo la melma passare. L'acqua non è mai stata così interessante.",
		"Melma verde nei canali, pipistrelli sulle travi, speziali negli angoli. Undercity ha un odore per ogni quartiere, e io non so più distinguere quelli cattivi.",
	},
	["race.scourge.muse.w09.062"] = {
		"Stratholme bruciò per ordine del principe prima che la peste se la prendesse. Si dice che alcuni dei suoi abitanti ora camminino con noi. Se è così, sono morti due volte nella stessa settimana.",
		"Stratholme brucia ancora, in un certo senso, tutta rovine e Flagello. Mi piacerebbe vederla ripulita. Non ricostruita: ripulita.",
	},
	["race.scourge.muse.w09.063"] = {
		"Alcuni di noi fanno cose terribili con la libertà che ci è stata data. Alcuni erano terribili anche da vivi. La morte cambia una persona meno di quanto i vivi sperino.",
		"I Reietti non sono una cosa sola. Ci sono speziali che avvelenerebbero un fiume e Deathguard che ci porterebbero un bambino dall'altra parte. Cerco di essere del secondo tipo.",
	},
	["race.scourge.muse.w09.064"] = {
		"Non so più piangere. A volte resto accanto a una cosa triste finché passa, come si fa con un amico.",
		"Le lacrime erano il modo in cui il corpo faceva uscire il dolore. Il mio adesso resta dentro, senza un posto dove andare. Lo porto a fare lunghe passeggiate.",
		"Succede qualcosa di triste e gli occhi mi restano asciutti. Non è freddezza. Il pozzo è stato semplicemente riempito di terra.",
	},
	["race.scourge.muse.w09.065"] = {
		"All'osteria vado per il chiasso, non per la birra. La birra per me sa di paglia bagnata. Il chiasso sa ancora di stare tra la gente.",
		"Un boccale solo, fatto durare per ore. Gli osti mi credono {g:parsimonioso|parsimoniosa}. In verità voglio solo sedere vicino a voci calde.",
	},
	["race.scourge.muse.w09.066"] = {
		"Certi giorni riemergo dal riposo con la certezza di aver appena sentito un ordine. È sempre solo una porta, o il vento.",
		"Un grido in una piazza d'armi mi fa ancora muovere i piedi prima che io abbia deciso qualcosa. Poi decido, e resto {g:fermo|ferma}, solo per dimostrare che posso.",
	},
	["race.scourge.muse.w09.067"] = {
		"«Qui giace», dicono le lapidi, come se la questione fosse chiusa. Alcuni di noi non sono rimasti dove li avevano messi.",
		"Tutti augurano ai morti un sonno tranquillo. Nessuno ci ha chiesto se eravamo stanchi.",
	},
	["race.scourge.muse.w09.068"] = {
		"Non siamo ciò che era Lordaeron, e non siamo ciò che il Flagello ha fatto di noi. Siamo qualcosa che non ha ancora un nome, e costruiamo strada facendo. Fa paura. È anche la prima cosa nuova da molto tempo.",
		"Un popolo fatto solo di sopravvissuti al peggio. Dovremmo essere a pezzi. Invece teniamo i registri, aggiustiamo i tetti e litighiamo sulle tasse. Lo trovo magnifico.",
		"Nessuno ha progettato i Reietti. Siamo capitati, e poi abbiamo deciso di continuare a capitare. Come racconto delle origini, non è niente male.",
	},
	["race.scourge.muse.w09.069"] = {
		"prende un pezzo di pane dallo zaino, lo rigira e lo rimette a posto, come una lettera scritta in una lingua che un tempo conosceva.",
		"annusa l'aria, la testa inclinata, come per riconoscere un vecchio odore che se n'è andato prima di avere un nome.",
	},
	["race.scourge.muse.w09.070"] = {
		"tira giù la manica sull'osso scoperto del polso, per una cortesia che i vivi ricambiano di rado.",
		"sistema il cappuccio in modo che il peggio del viso resti in ombra, una piccola gentilezza verso chi passa.",
	},
	["race.scourge.muse.w09.071"] = {
		"I Deathguard hanno un detto: una tomba è solo una stanza che non hai ancora lasciato. Quasi tutti lo dicono senza sorridere, ed è così che capisci che ne sono convinti.",
		"Un vecchio Deathguard una volta mi ha detto: la lotta peggiore l'hai già persa, quindi smettila di trasalire per quelle piccole. Ci penso più spesso di quanto ammetterei.",
	},
	["race.scourge.muse.w09.072"] = {
		"Sì, sono {g:morto|morta}. No, non è contagioso. Non più.",
		"Non badate a me. Sono un cadavere, non un villano.",
	},
	["race.scourge.muse.w09.073"] = {
		"I vivi che incontro invecchieranno e moriranno mentre io resto così, pezzo più pezzo meno. Farsi degli amici è diventata un'aritmetica strana.",
		"Ogni amico vivo è un amico in prestito. So come finisce il prestito: ci sono {g:stato|stata} dall'altra parte.",
		"Sopravviverò a quasi tutti i vivi a cui voglio bene. Cerco di non dirlo ad alta voce. Hanno già abbastanza pensieri.",
	},
	["race.scourge.muse.w09.074"] = {
		"Ho visto il mio riflesso in una vetrina e per un attimo ho provato pena per chiunque fosse. Poi ho riconosciuto il mantello.",
		"Nessuno mi dirà più che sono una bellezza. In compenso nessuno mi dirà più che ho una brutta cera: sono {g:andato|andata} ben oltre.",
	},
	["race.scourge.muse.w09.075"] = {
		"La luce di Tirisfal è fioca e verdastra, gli alberi spogli e storti. I vivi la chiamano desolata. A me pare un posto che ha smesso di fingere.",
		"Alberi storti, colline basse, un cielo che non si decide mai per l'azzurro. Tirisfal ci somiglia. Anche lei sembra sopravvissuta a qualcosa.",
	},
	["race.scourge.muse.w09.076"] = {
		"Gelo, caldo del deserto, umido di palude: il clima è soprattutto affare dei vivi. Io me ne accorgo solo quando mi entra nei cardini.",
		"Non tremo e non sudo. Il mantello, per me, è solo pudore e un posto dove tenere le cose.",
	},
	["race.scourge.muse.w09.077"] = {
		"Undercity è la città più bella mai costruita in una cantina. Nominatene una migliore. Avanti.",
		"Sotterranea, umida, e nostra. Non troverete una cantina più orgogliosa in tutto il mondo.",
	},
	["race.scourge.muse.w09.078"] = {
		"L'Alleanza chiamerebbe giustizia rimettermi nella tomba. Ci sono già {g:finito|finita} una volta senza la giustizia di nessuno. Non ci torno per la loro.",
		"I vecchi alleati di Lordaeron ci vorrebbero bruciati piuttosto che liberi. Hanno avuto la loro occasione di salvarci, e sono arrivati tardi. La salvezza ce la siamo presa da soli.",
	},
	["race.scourge.muse.w09.079"] = {
		"passa il pollice lungo la cucitura sulla mascella, un piccolo gesto distratto, come i vivi toccano una vecchia cicatrice.",
		"rimette a posto con due dita un lembo di pelle staccato e lo liscia, con la stessa calma con cui si raddrizza un colletto.",
	},
	["race.scourge.muse.w09.080"] = {
		"Gli orchi parlano delle pianure aperte di Kalimdor come di un dono. Io trovo tutto quel cielo un po' sconveniente. Datemi un soffitto e qualche cripta.",
		"Thunder Bluff, Orgrimmar, the Crossroads: luoghi dell'Orda costruiti nel sole e nel vento. Ci vado, e al ritorno le cantine mi sembrano una benedizione.",
	},
	["race.scourge.muse.w09.081"] = {
		"Se c'è qualcosa che aspetta dopo la seconda morte, mi ha già {g:respinto|respinta} una volta. Non so se busserei di nuovo.",
		"I sacerdoti dei vivi promettono una ricompensa dopo la morte. Ci sono {g:andato|andata}. Se esiste, qualcuno si è dimenticato di dire al Flagello di aspettare.",
	},
	["race.scourge.muse.w09.082"] = {
		"Quel che possedevo in vita è andato a qualcun altro, o al fuoco. Tutto ciò che porto adesso me lo sono guadagnato dopo la tomba. È una borsa più piccola, e onesta.",
		"Niente eredità, niente debiti, niente terre. La morte ha saldato tutti i miei conti in una volta. Raramente ho avuto così poche scartoffie.",
	},
	["race.scourge.subzone_enter.w09.001"] = {
		"{subzone}. Qualunque cosa viva qui mi noterà prima che io noti lei. I vivi sentono sempre per primi l'odore dei morti.",
		"{subzone}. Entro più in silenzio che posso, e posso parecchio. Niente in me respira abbastanza forte da tradirmi.",
	},
	["race.scourge.subzone_enter.w09.002"] = {
		"{subzone}. Vediamo chi scappa per primo.",
		"{subzone}. Attenzione all'odore, gente: sto passando.",
		"{subzone}. Niente panico. Sono solo di passaggio.",
	},
	["race.scourge.subzone_enter.w09.003"] = {
		"entra in {subzone} con un passo rigido e regolare, il mantello stretto addosso, gli occhi che scorrono su tutto senza battere ciglio.",
		"s'inoltra in {subzone} senza fretta, col passo lento e indifferente di chi la strada non può più stancare.",
	},
	["race.scourge.subzone_enter.w09.004"] = {
		"{subzone}. Conoscevo questo posto quand'ero {g:vivo|viva}? Il nome non smuove niente. Anche questa è una risposta.",
		"{subzone}. Ascolto il nome in cerca di un'eco di prima. Silenzio. Proseguo con una cosa in meno, o un peso in meno; non saprei dire quale.",
	},
	["race.scourge.subzone_enter.w09.005"] = {
		"{subzone}. Prima cerco le torce e chiunque abbia un rancore. Poi posso ammirare il panorama.",
		"{subzone}. Uscite, ripari, e qualunque traccia del rosso dei crociati. Dopo, il paesaggio.",
	},
	["race.scourge.subzone_enter.w09.006"] = {
		"{subzone}. Sono {g:venuto|venuta} qui perché l'ho scelto io. Nessuno me l'ha indicato. Non mi abituerò mai a quanto sia bello.",
		"{subzone}. Mi ci hanno portato i miei piedi, per una faccenda mia. Una piccolezza, per quasi tutti.",
	},
	["race.scourge.subzone_enter.w09.007"] = {
		"{subzone}. Un silenzio da cripta. Mi ci troverò benissimo.",
		"{subzone}. Odore di terra umida. Mi sento a casa.",
	},
	["race.scourge.subzone_enter.w09.008"] = {
		"{subzone}. Ho tutto il tempo del mondo per guardarmi intorno, e allora lo faccio, angolo per angolo.",
		"{subzone}. Nessuna fretta. I morti non sono più in ritardo per niente che conti.",
	},
	["race.scourge.subzone_enter.w09.009"] = {
		"si ferma al margine di {subzone} e inclina la testa, in ascolto di passi con la pazienza immobile dei morti.",
		"entra in {subzone} e per un momento resta tanto immobile che nulla lì intorno sembra accorgersi del nuovo arrivo.",
	},
	["race.scourge.subzone_enter.w09.010"] = {
		"{subzone}. Qualcuno ha vissuto qui, amato qui, sepolto qualcuno qui. Ogni nome ha un cimitero nascosto dentro di sé.",
		"{subzone}. Ogni posto è costruito sulla tomba di qualcuno, se scavi abbastanza. Ho smesso di trovarlo triste.",
	},
	["race.scourge.subzone_enter.w09.011"] = {
		"{subzone}. La mano della Dama Oscura arriva lontano. Vediamo se arriva fin qui.",
		"{subzone}. Un altro nome da riferire a Undercity.",
	},
	["race.scourge.subzone_enter.w09.012"] = {
		"{subzone}. Se qualcuno qui fa uno scongiuro vedendomi, lo saluterò con la mano.",
		"{subzone}. Cercherò di avere un'aria innocua. Non funziona mai, ma mi tengo in esercizio.",
		"{subzone}. Qui dentro c'è un cane che sta per mettersi ad abbaiarmi contro. Da un momento all'altro.",
	},
	["race.scourge.subzone_enter.w09.013"] = {
		"entra in {subzone} col cappuccio calato, come si entra in una casa dove forse non si è graditi.",
		"arriva in {subzone} con un lieve scricchiolio di vecchie giunture, e nient'altro ad {g:annunciarlo|annunciarla}.",
	},
	["race.scourge.subzone_enter.w09.014"] = {
		"{subzone}. La terra qui tiene i suoi morti come al solito, in silenzio. Passando faccio loro un cenno. Cortesia professionale.",
		"{subzone}. Sotto i miei piedi c'è chi è rimasto al suo posto. Un po' lo invidio, e un po' di più lo compatisco.",
	},
	["race.troll.landmark.w09.001"] = {
		"{landmark}. Cerco dove la gente di qui tiene il fuoco e i guai. Di solito è lo stesso posto.",
		"{landmark}. Ogni posto con un nome ha qualcuno che lo comanda e qualcuno che non lo sopporta. Un troll li trova tutti e due prima di disfare il bagaglio.",
		"{landmark}. Qui intorno il nome è sulla bocca di tutti. Io capirò cosa significa dall'odore del posto, come fanno i troll.",
	},
	["race.troll.landmark.w09.002"] = {
		"solleva il mento verso {landmark}, le narici dilatate, leggendo il posto con l'olfatto prima che con la vista.",
		"si ferma poco prima di {landmark} e si appoggia al nulla, con quella disinvoltura ingobbita dei troll, studiandolo da sotto le sopracciglia folte.",
		"si avvicina a {landmark} con un passo lento e dondolante, le zanne inclinate, prendendo le misure del posto senza dire una parola.",
	},
	["race.troll.muse.w09.001"] = {
		"A Sen'jin la risacca non smette mai di parlare. Altrove mi sorprendo a riempire il silenzio con quella che ricordo.",
		"Il villaggio di Sen'jin sta proprio sull'acqua, e le onde chiacchierano contro le capanne tutto il giorno. Nell'entroterra il mondo sembra lasciato a metà.",
		"Un Darkspear cresce con il mare in un orecchio. Lontano dalla costa, quell'orecchio continua a cercarlo lo stesso.",
	},
	["race.troll.muse.w09.002"] = {
		"Gli anziani dicono che tanto tempo fa i Gurubashi cacciarono i Darkspear da Stranglethorn. Ogni rovina troll che incontro laggiù, mi chiedo chi l'abbia costruita.",
		"Stranglethorn era nostra prima di essere di chiunque altro, raccontano gli anziani, finché le altre tribù non ci spinsero verso il mare. Nella giungla i rancori mettono radici lunghe.",
		"La nostra tribù lasciò la giungla con nient'altro che lance e un rancore, a sentire gli anziani. Le lance le portiamo ancora. Il rancore lo teniamo al sicuro.",
	},
	["race.troll.muse.w09.003"] = {
		"Attento alle zanne quando ti avvicini. Non sanno di essere maleducate.",
		"Le zanne sono più che altro scena. Più che altro. Stammi un passo indietro e non lo scopriremo mai.",
		"Sfioro una tenda e quella ne esce bucata. Le zanne non hanno la minima educazione.",
	},
	["race.troll.muse.w09.004"] = {
		"La carne dei troll non ha pazienza. Chiude un taglio prima che io abbia finito di arrabbiarmi.",
		"Gli altri si curano un graffio per giorni. Su un troll, prima di sera, è già una riga chiara, e poi più niente.",
		"I guaritori delle altre razze guardano la pelle dei troll con invidia sincera. Si ricuce da sola mentre loro infilano ancora l'ago.",
	},
	["race.troll.muse.w09.005"] = {
		"I loa non sono buoni e non sono crudeli. Sono orgogliosi e affamati, e ricordano chi ha portato loro rispetto.",
		"Nessun troll che conosca chiede amore ai loa. Si chiede di essere ascoltati, e ci si ritiene fortunati se succede.",
		"Gli spiriti che onora la mia gente non sono pastori gentili. Somigliano a grandi bestie nel cuore della giungla: se le tratti bene ti lasciano passare, a volte ti camminano accanto.",
	},
	["race.troll.muse.w09.006"] = {
		"passa il pollice lungo la curva di una zanna, accigliandosi per una scheggiatura nell'avorio.",
		"piega le lunghe dita una dopo l'altra, facendo schioccare ogni nocca con pigra cura.",
		"fa ruotare le spalle, poi le lascia ricadere nella comoda postura ingobbita dei troll.",
	},
	["race.troll.muse.w09.007"] = {
		"Pesce sul fuoco, un pizzico di sale, un filo di fumo. Ogni troll sa che è il miglior pasto del mondo, checché ne dicano i cuochi di città.",
		"Dammi un pesce appena uscito dall'acqua e un bastone per arrostirlo. Le città hanno cucine e salse; non ho mai capito a che servano.",
		"Il Durotar ti sfama con scorpidi e pane duro. Giù sulla costa, a Sen'jin, ti danno pesce, e un troll lo sente al palato quale terra ci vuole bene.",
	},
	["race.troll.muse.w09.008"] = {
		"Gli orchi non erano tenuti ad accoglierci. Avevano i loro guai e una terra nuova da conquistare. Ci hanno fatto posto lo stesso, e un Darkspear non dimentica chi gli fa posto.",
		"La gente di Thrall è cupa, rumorosa e testarda. E mantiene la parola. Un troll per questo perdona parecchio.",
		"Un orco ride più o meno una volta a stagione; un troll più o meno a ogni respiro. Da qualche via di mezzo tra i due, l'Orda manda avanti i suoi affari.",
	},
	["race.troll.muse.w09.009"] = {
		"Orgrimmar ha lasciato ai troll un angolo tutto loro, la Valley of Spirits. Fumo, tamburi e stregoni che mercanteggiano sulle ossa: il posto più simile a casa in tutta la città.",
		"Quando la città degli orchi diventa troppo rumorosa e troppo squadrata per me, scendo nella Valley of Spirits. L'odore del nostro fumo rimette a posto quasi tutto.",
		"Nella Valley of Spirits i troll di Orgrimmar tengono i loro fuochi e i loro amuleti. Entrarci è come tornare a parlare la mia lingua.",
	},
	["race.troll.muse.w09.010"] = {
		"Piano, amico. Nessuno è mai morto per aver rallentato un po'.",
		"Il mondo ha fretta, mon. Io no, non per forza.",
		"Respira, mon. Qualunque cosa sia, ci sarà ancora dopo.",
	},
	["race.troll.muse.w09.011"] = {
		"A Zul'Gurub i Gurubashi versano il loro sangue per Hakkar. Certi dèi troll avrebbero fatto meglio a restare sepolti, e ogni Darkspear lo sa.",
		"Il nome di Hakkar inacidisce l'aria appena lo si pronuncia. La mia gente non lo dice vicino al fuoco, e io non lo dico due volte.",
		"Hakkar beve vite e lo chiama culto. Qualunque cosa i Gurubashi credano di comprare a Zul'Gurub, Hakkar si prenderà più di quanto gli hanno offerto.",
	},
	["race.troll.muse.w09.012"] = {
		"Lassù negli Hinterlands gli Amani odiano gli elfi di un odio più vecchio di qualunque regno umano. Un rancore lo capisco. Non vorrei viverci dentro.",
		"I troll Amani intagliano la loro rabbia in ogni palo e in ogni maschera. Un Darkspear può ammirarne il lavoro e tenersi comunque ben lontano dall'intagliatore.",
		"Gli Amani hanno passato ere in guerra con gli elfi e non è rimasto loro molto altro. A guardarli imparo cosa diventa una tribù che ricorda soltanto le proprie ferite.",
	},
	["race.troll.muse.w09.013"] = {
		"I Sandfury tengono Zul'Farrak tra le dune di Tanaris. Troll che hanno scelto di amare la sabbia: non li ho mai capiti, e non ho intenzione di provarci.",
		"Laggiù a Tanaris i Sandfury abitano una città di pietra cotta e ossa vecchie. Hanno le mie stesse zanne. Idee molto diverse sull'ospitalità.",
	},
	["race.troll.muse.w09.014"] = {
		"Gli stregoni di Sen'jin dicono che il mojo si raccoglie dove serve, come l'acqua in una conca. Se provi ad afferrarlo ti scivola via tra le dita.",
		"Il mojo non è roba che si possiede, dicono gli stregoni. Lo si prende in prestito, e chi presta tiene il conto con cura.",
		"A sentire gli stregoni, il mojo è come la marea: arriva da chi aspetta sulla riva, e annega chi gli va incontro in acqua.",
	},
	["race.troll.muse.w09.015"] = {
		"Un cacciatore d'ombre cammina con un piede tra gli spiriti e uno nel fango insieme a noi altri. Non vorrei portare quell'equilibrio. Sono {g:contento|contenta} che qualcuno lo faccia.",
		"I cacciatori d'ombre della nostra tribù vedono il lato degli spiriti chiaro come io vedo una strada. Chissà che conversazioni strane, a cena.",
		"Alcuni troll vengono chiamati a stare tra i vivi e gli spiriti, e diventano cacciatori d'ombre. La tribù li rispetta, e lascia loro parecchio spazio intorno al fuoco.",
	},
	["race.troll.muse.w09.016"] = {
		"Vol'jin parla poco e intende ogni parola. Quando i Darkspear litigano, il suo silenzio chiude la questione prima di qualunque urlo.",
		"Il nostro capo porta la tribù come si porta l'acqua sulle rocce scivolose: con attenzione, a passo fermo, senza versarne una goccia se può evitarlo.",
		"Vol'jin sta al fianco di Thrall e non scorda mai per quale popolo parla. È un gioco difficile. Lui lo fa sembrare facile.",
	},
	["race.troll.muse.w09.017"] = {
		"I raptor sono come i cugini. Mordono, ti rubano da mangiare, e faresti comunque a botte con chiunque li toccasse.",
		"Mai fidarsi di un raptor che sta zitto. Sta pensando, e quello che pensa non ti piacerà.",
		"Un buon raptor vale tre cavalli con tutte le loro buone maniere. I cavalli non sanno sogghignare.",
	},
	["race.troll.muse.w09.018"] = {
		"Sulle Echo Isles, laggiù, troll che un tempo dividevano i nostri fuochi ora vanno dove un pazzo li manda. Per questo tengo da parte un po' di rabbia, come altri mettono da parte le monete.",
		"Gli esploratori dicono che gli stregati delle Echo Isles hanno ancora le facce dei nostri cugini. Preferirei incontrare cento raptor piuttosto che uno di loro.",
	},
	["race.troll.muse.w09.019"] = {
		"Il Durotar è tutto polvere rossa e spine. Va bene per gli orchi, immagino. A un troll serve il verde, l'umido, roba che cresce mentre la guardi.",
		"Gli orchi amano la loro terra rossa. La amo anch'io, come si ama un amico dalla stretta di mano troppo forte. La mia pelle però continua a chiedere dove sia finita l'acqua.",
		"Qui la terra si spacca come pane raffermo. Nella giungla suda, fuma e fa spuntare qualcosa di nuovo ogni ora. So bene quale delle due preferiscono le mie ossa.",
	},
	["race.troll.muse.w09.020"] = {
		"Ora i Reietti marciano con l'Orda. Li saluto, ci commercio, e non gli volto mai le spalle. Gli stregoni sanno troppe cose sui morti per fidarsene alla leggera.",
		"Morti che parlano e contrattano: la mia gente ha delle storie su roba del genere, e nessuna finisce bene. Eppure la gente della Dama Oscura rispetta la sua parte del patto. Per ora.",
		"Un troll sa che i morti stanno con gli spiriti. I Reietti non sono d'accordo, e non sembrano gradire consigli in proposito. Tengo gli amuleti a portata di mano e le opinioni ancora più vicine.",
	},
	["race.troll.muse.w09.021"] = {
		"I tauren sono lenti a parlare e lenti ad arrabbiarsi. Vicino a loro abbasso la voce senza volerlo, come si fa accanto a una bestia addormentata grande il doppio di te.",
		"I tauren si portano addosso una calma che pare un mantello. Accanto a uno di loro mi sento una scimmia vicino a una montagna, e chissà perché è una bella sensazione.",
		"I tauren mi piacciono. Ridono alle mie battute in ritardo, ma quando ci arrivano ridono come si deve, di pancia.",
	},
	["race.troll.muse.w09.022"] = {
		"I goblin vendono la stessa cosa a entrambe le parti e lo chiamano commercio. Un troll sa apprezzare un bel trucco, ma dopo una stretta di mano mi conto sempre le dita.",
		"I goblin di Booty Bay rivenderebbero il mare ai pesci, se i pesci avessero monete. Io rido, pago e ricontrollo il resto due volte.",
	},
	["race.troll.muse.w09.023"] = {
		"canticchia a mezza voce un motivo basso, di quelli che si cantano sulla costa rammendando le reti.",
		"tamburella lentamente sulla coscia con due dita, come se tenesse il tempo a un tamburo che nessun altro sente.",
		"si lascia sfuggire una risata breve e luminosa per niente in particolare, poi torna a tacere, ancora sorridente.",
	},
	["race.troll.muse.w09.024"] = {
		"La mia gente ride delle cose dure. Gli estranei credono che non le sentiamo. Vuol dire che le abbiamo sentite così a lungo che ridere è diventata la scelta meno cara.",
		"I troll ridono nei momenti brutti, e le altre razze concludono che siamo pazzi o senza cuore. Né l'una né l'altra. Ridendo la mia gente porta un peso che spezzerebbe una schiena più dritta.",
		"Quando un troll ride dei guai, guarda meglio: quella risata fa il lavoro di uno scudo. È il più vecchio che il mio popolo possieda.",
	},
	["race.troll.muse.w09.025"] = {
		"Il mare dà pesci e si prende barche. Un affare onesto, se il mare sei tu.",
		"Mai discutere con la marea. C'era prima di te e non ascolta.",
		"Impara a nuotare prima di imparare a vantarti. Il mare controlla la prima cosa molto prima della seconda.",
	},
	["race.troll.muse.w09.026"] = {
		"Certi giorni sento un loa che mi guarda come un gatto guarda uno scarabeo. Non arrabbiato. Solo curioso di vedere cosa farò.",
		"Ci sono giorni in cui gli spiriti sembrano così vicini da potermi battere sulla spalla. In quei giorni cammino con cautela e faccio promesse piccole.",
		"Un troll impara ad accorgersi quando qualcosa di invisibile si interessa a lui. Lo capisce prima la nuca; la testa ci arriva dopo.",
	},
	["race.troll.muse.w09.027"] = {
		"Una maschera voodoo non è un travestimento, dicono gli stregoni. È un volto prestato a qualunque cosa voglia passare. Io mi tengo la mia faccia, grazie, e la mia lista di ospiti.",
		"Gli stregoni intagliano le maschere perché gli spiriti sappiano chi sta parlando con loro, o almeno così raccontano. Un volto fatto per ascoltare, non per farsi guardare. Mi piace.",
		"Mettiti la maschera di uno stregone, avvertono gli anziani, e qualcos'altro potrebbe decidere di indossarla con te. Io ammiro l'intaglio da una distanza educata.",
	},
	["race.troll.muse.w09.028"] = {
		"Le terre fredde fanno sentire a un troll ogni osso di quelle gambe lunghe. Mi copro, continuo a muovermi e penso all'acqua calda.",
		"Il nord del mondo l'ha fatto qualcuno che non ha mai conosciuto un troll. Vento che morde, e niente di maturo sugli alberi.",
		"La pelle dei troll è fatta per il vapore e il caldo. Al freddo si arrende e prende un colore di cui preferirei non parlare.",
	},
	["race.troll.muse.w09.029"] = {
		"I troll Frostmane si sono fatti una casa nel ghiaccio di Dun Morogh. Troll al freddo per scelta. Ancora non ho deciso se sia coraggio o un errore molto lungo.",
		"Lassù a Dun Morogh, tra la neve, cugini troll si avvolgono nelle pellicce e cacciano tra le montagne dei nani. Ogni volta che me li immagino, mi si arricciano le dita dei piedi.",
	},
	["race.troll.muse.w09.030"] = {
		"L'Alleanza guarda un troll e vede un selvaggio delle vecchie guerre. Che guardino pure. I Darkspear in quelle guerre non c'erano, e non abbiamo intenzione di andarcene.",
		"Gli umani ricordano gli Amani che bruciavano i loro villaggi, e dipingono ogni troll con lo stesso pennello. Non sprecherò fiato a correggerli. Parleranno le mie azioni.",
		"Per un soldato dell'Alleanza ogni zanna è una minaccia uscita dai libri di storia. Non posso farci niente. Posso solo fare in modo di essere un capitolo diverso.",
	},
	["race.troll.muse.w09.031"] = {
		"I troll portano un calore in basso, come braci coperte nella pancia. In battaglia risale, e il mondo diventa veloce e luminoso. Dopo, mi stupisco sempre un po' di me.",
		"Quando in un troll sale la furia, le braccia scordano di essere mai state stanche. Gli anziani dicono: goditela, ma non chiederle mai consiglio.",
		"La mia gente si accende quando serve. Il trucco è far uscire il fuoco di proposito, e ricordarsi dove si è messo il coperchio.",
	},
	["race.troll.muse.w09.032"] = {
		"I piccoli Darkspear imparano ad appostarsi prima di imparare a contare, amano dire gli anziani: immobili come una radice, rapidi come un serpente. Quella pazienza non lascia mai del tutto un troll.",
		"La mia gente stima l'immobilità. Il troll che sa aspettare nella boscaglia senza un fremito mangia; quello che si agita viene mangiato. Lo insegna la giungla, e resta.",
		"Aspetta come una radice, colpisci come un serpente. Ogni troll lo sente dire da piccolo, e prima o poi scopre che vale per ben altro che la caccia.",
	},
	["race.troll.muse.w09.033"] = {
		"Gambe lunghe, braccia lunghe, pazienza lunga. Due su tre, nelle giornate buone.",
		"Fatti per arrivare ai rami alti. E per far cadere la roba dagli scaffali alti. Soprattutto questo.",
		"I troll non sono goffi. È il mondo che è costruito troppo stretto per i nostri gomiti.",
	},
	["race.troll.muse.w09.034"] = {
		"Di nuovo giungla. L'aria è così densa che la si potrebbe bere, e ogni foglia gocciola. Qualcosa dentro di me si scioglie, e non sapevo nemmeno che fosse contratto.",
		"Verde su verde su verde, e un odore di marcio e di fiori insieme. È così che il mondo dovrebbe profumare, per un troll.",
		"Liane, caldo, uccelli che si urlano addosso. La giungla è come una casa affollata dove tutti sanno già come mi chiamo.",
	},
	["race.troll.muse.w09.035"] = {
		"Sale nel vento. Le spalle mi scendono di un dito e il passo si scioglie. Comunque si chiami questa costa, parla la mia lingua.",
		"Le onde arrivano e si ritirano, arrivano e si ritirano. Un troll potrebbe restare seduto ad ascoltarle finché il fuoco non si spegne.",
		"Sabbia bagnata sotto i piedi, gabbiani che litigano sopra la testa. Ogni riva è un po' Darkspear, a guardarla con gli occhi socchiusi.",
	},
	["race.troll.muse.w09.036"] = {
		"Sabbia e ancora sabbia. La mia gente è uscita dall'acqua; questo posto è lo scheletro secco del mare.",
		"Secco come un osso vecchio, qui. Razziono l'acqua e la pazienza, e il caldo si prende un po' di tutte e due.",
		"Un troll nel deserto è un pesce su una pietra rovente. Continuo a camminare e continuo a lamentarmi, ed entrambe le cose aiutano.",
	},
	["race.troll.muse.w09.037"] = {
		"Acqua di palude, tiepida, puzzolente e piena di cose che mordono. Non è casa, ma un poco se la ricorda.",
		"Fango fino al ginocchio, insetti che cantano, un odore da fondo di barile del pesce. Abbastanza simile alla giungla da farmi sentire quasi {g:benvenuto|benvenuta}.",
	},
	["race.troll.muse.w09.038"] = {
		"È notte, e i pipistrelli sono fuori. Gli anziani dicono che portano sussurri da un loa all'altro. Ascolto lo stesso, nel caso qualcuno fosse per me.",
		"Sotto le stelle il mondo si fa abbastanza silenzioso da sentire gli spiriti che si schiariscono la voce. Un troll resta sveglio per questo.",
		"Buio, tepore e tanti piccoli rumori. La mia gente appartiene alle ore della notte quanto al giorno; mi sento {g:sveglio|sveglia} come la luce del giorno non riesce mai a farmi sentire.",
	},
	["race.troll.muse.w09.039"] = {
		"Finalmente pioggia. Gli altri corrano pure sotto un tetto. Un troll ci resta in mezzo e si fa lavare via la polvere.",
		"Calda o fredda, la pioggia per me sa di isole. Butto indietro la testa e ne bevo un po', come un bambino.",
		"La pioggia tamburella sulle foglie e la terra beve. La mia pelle beve con lei. Questo è tempo da troll.",
	},
	["race.troll.muse.w09.040"] = {
		"Le città sono piene di linee dritte e di facce serie. Io cammino un po' più sciolto, giusto per mantenere l'equilibrio.",
		"Tutti questi muri, tutta questa gente di fretta. Un troll in città è un pappagallo in una forgia: rumoroso, colorato e un tantino d'intralcio.",
	},
	["race.troll.muse.w09.041"] = {
		"Gli spiriti guardano, mon. Meglio comportarsi bene, o almeno essere divertenti.",
		"Ai loa piace un bello spettacolo. Diamogliene uno.",
		"Se oggi gli spiriti ridono di me, almeno qualcuno si diverte.",
	},
	["race.troll.muse.w09.042"] = {
		"Questa terra è malata fino alle radici. Gli stregoni brucerebbero ogni osso e affumicherebbero il suolo per un anno prima di lasciarci dormire qualcuno.",
		"Qui tutto è morto e cammina, oppure è morto e aspetta di farlo. Gli amuleti mi pesano al collo, come se sapessero benissimo dove siamo.",
	},
	["race.troll.muse.w09.043"] = {
		"Pietre crollate. Chiunque abbia costruito tutto questo, la mia gente un tempo costruì più in grande, e lo vide cadere allo stesso modo. Nelle rovine ogni razza è finalmente pari.",
		"I muri spezzati mi fanno sempre pensare agli imperi troll: enormi, superbi, e adesso quasi solo liane e lucertole sui gradini.",
	},
	["race.troll.muse.w09.044"] = {
		"Carne secca degli orchi, focacce dei tauren, qualunque cosa dei goblin: mangio tutto, e a ognuno di quei piatti servirebbero un po' di pepe e un pesce.",
		"Gli orchi cuociono la carne finché non si arrende. I tauren cuociono il grano finché non dà loro ragione. Un troll butta un pesce sul fuoco e mangia mentre quelli discutono ancora.",
		"Ogni razza dell'Orda ha la sua idea di cena. La mia prevede meno pentole, più fumo e molta meno attesa.",
	},
	["race.troll.muse.w09.045"] = {
		"Gli anziani di Sen'jin dicono che il nostro vecchio capo vide arrivare gli orchi in una visione, molto prima che le loro navi ci raggiungessero. Ci credette fino a giocarsi la vita, e la perse. La tribù ci ha creduto con lui.",
		"Al villaggio di Sen'jin raccontano che il vecchio capo sognò un grande guerriero che ci avrebbe portati via. Thrall arrivò. Il capo non visse abbastanza per seguirlo, e allora lo seguimmo noi al posto suo.",
		"Una visione, un naufragio, un sacrificio: gli anziani di Sen'jin raccontano la nostra libertà con queste tre parole, e sull'ultima rallentano sempre.",
	},
	["race.troll.muse.w09.046"] = {
		"I Darkspear attraversarono il mare fino a Kalimdor insieme agli orchi, stipati su navi mai costruite per tanta gente. Ogni troll del Durotar ha un antenato che stava aggrappato a un parapetto a guardarsi indietro.",
		"La mia tribù è arrivata in questa terra per mare, su navi orchesche, con quel poco che poteva portarsi addosso. Forse è per questo che i troll viaggiano leggeri e ridono forte.",
	},
	["race.troll.muse.w09.047"] = {
		"Una perlina, un dente appeso a un filo, un nodo di piume. Non perché sia {g:sicuro|sicura} che funzionino. Perché non sono {g:sicuro|sicura} che non funzionino.",
		"Gli estranei chiamano superstizione gli amuleti dei troll. Io la chiamo buona educazione verso forze che nessuno capisce fino in fondo.",
		"Un amuleto non costa niente da portare e moltissimo da non avere, dice la mia gente. Un troll ne porta qualcuno e non dà spiegazioni.",
	},
	["race.troll.muse.w09.048"] = {
		"lancia un'occhiata nella direzione in cui dovrebbe esserci il mare, come per controllare che ci sia ancora.",
		"annusa l'aria in cerca di sale, non lo trova e ci passa sopra con un sorriso storto.",
		"allunga le lunghe braccia sopra la testa finché le giunture non schioccano, le zanne puntate verso il cielo.",
	},
	["race.troll.muse.w09.049"] = {
		"Gli elfi della notte guardano un troll come un gatto guarda un cane bagnato. Il sentimento è reciproco, ma almeno io lo ammetto.",
		"Qualunque elfo, di Darnassus o di Quel'Thalas, ha la stessa faccia davanti a un troll, come se gli avessimo infangato la storia con le scarpe sporche.",
	},
	["race.troll.muse.w09.050"] = {
		"Hanno tutti fretta. Gli spiriti no, il mare no, e io nemmeno.",
		"A un troll puoi mettere fretta. Una volta sola.",
		"Spingimi e andrò più piano. Non è testardaggine, è equilibrio.",
	},
	["race.troll.muse.w09.051"] = {
		"I Darkspear sono stati cacciati da una terra dopo l'altra. Il Durotar è secco e duro, ma nessuno ci sta cacciando. Vale più di tutto il verde del mondo.",
		"Per una volta la mia gente sta su una terra che nessuno può portarci via a forza di urla. Polvere rossa compresa, è nostra, insieme agli orchi che la dividono con noi.",
		"Una tribù che è fuggita dalla giungla e poi dal mare può finalmente fermarsi da qualche parte. Non lo prendo alla leggera, nemmeno quando mi lamento del caldo.",
	},
	["race.troll.muse.w09.052"] = {
		"Ai pipistrelli piacciono il buio, l'umido e un bel frutto maturo. Troll e pipistrelli si capiscono meglio di quanto si creda.",
		"Un pipistrello appeso a testa in giù in una grotta è la creatura più rilassata del mondo. Lo rispetto profondamente.",
	},
	["race.troll.muse.w09.053"] = {
		"Una maledizione può restare anni dentro una perlina o una piuma, ad aspettare la mano sbagliata. Io gli amuleti trovati per strada non li raccolgo. Mai.",
		"Uno strano mazzetto di piume sul sentiero? Giraci intorno. Il troll che raccoglie il mojo di qualcun altro si prende tutto quello che ci viene dietro.",
		"Il mojo trovato per caso è come il cibo trovato nella capanna di uno stregone: probabilmente era per qualcun altro, e probabilmente non con buone intenzioni.",
	},
	["race.troll.muse.w09.054"] = {
		"Lassù negli Hinterlands i Revantusk difendono il loro villaggio sul mare dagli Amani e dai Vilebranch. Troll schierati con l'Orda, lontano dal Durotar: sapere che ci sono mi scalda.",
		"Non tutte le tribù troll sono nemiche. I Revantusk tengono un villaggio sulla costa degli Hinterlands e dividono il loro fuoco con l'Orda. Brava gente. Rumorosa, come noi.",
	},
	["race.troll.muse.w09.055"] = {
		"Darkspear. Un buon nome per una tribù: qualcosa di affilato, difficile da veder arrivare, qualcosa a cui tenersi stretti.",
		"Certe tribù prendono il nome da teschi o da sangue. La nostra da un'arma tenuta salda in una mano forte. Mi piace che abbiamo scelto quella utile.",
	},
	["race.troll.muse.w09.056"] = {
		"La polvere del Durotar va dappertutto: nelle orecchie, nel cibo, tra i denti e le zanne. Troverò granelli rossi addosso molto dopo essermene {g:andato|andata}.",
		"Gli orchi dicono che la polvere rossa fa bene allo spirito. Io dico che fa male ai denti. Forse abbiamo ragione tutti e due.",
	},
	["race.troll.muse.w09.057"] = {
		"Troll e orchi imparano le prime lezioni dure fianco a fianco nella Valley of Trials. Agli scorpidi di laggiù non importa di zanne o pelle verde, e così si diventa alleati in fretta.",
		"La Valley of Trials è dove i giovani Darkspear e i giovani orchi scoprono per la prima volta che l'Orda combatte spalla a spalla. Lo insegnano i quilboar e gli scorpidi, con grande pazienza.",
	},
	["race.troll.muse.w09.058"] = {
		"Roccia alta e vento sottile. Le gambe sono lunghe abbastanza per arrampicarsi, ma il resto di me è fatto per stare al livello del mare.",
		"Le montagne sono il contrario della giungla: niente verde, niente umido, niente rumore. Solo pietra, cielo e un troll che borbotta fra sé.",
	},
	["race.troll.muse.w09.059"] = {
		"Questi alberi sono più alti e più silenziosi di quelli della giungla, come anziani riuniti a consiglio. Per rispetto abbasso la voce.",
		"Una foresta senza liane mi sembra lasciata a metà. Dov'è il caldo? Dove sono gli uccelli che non stanno mai zitti?",
	},
	["race.troll.muse.w09.060"] = {
		"I Darkspear stanno con l'Orda. A voce alta, e con un tempismo eccellente.",
		"Darkspear prima di tutto, Orda sempre. Sono vere tutte e due, ogni santo giorno.",
		"Thrall ha le nostre lance e Vol'jin il nostro cuore. Mi pare una divisione giusta.",
	},
	["race.troll.muse.w09.061"] = {
		"Quando resto {g:solo|sola} abbastanza a lungo, comincio a parlare con gli spiriti ad alta voce. Non rispondono mai e non interrompono mai. Meglio di certa compagnia.",
		"Per conto mio, chiacchiero con qualunque spirito stia ascoltando. Se non ascolta nessuno, almeno la conversazione resta sincera.",
	},
	["race.troll.muse.w09.062"] = {
		"si accovaccia, preme una lunga mano aperta sul terreno per un istante, poi si rialza come se qualcosa fosse stato sistemato.",
		"si ferma a gettarsi alle spalle un pizzico di quel che ha a portata di mano, una rapida cortesia troll verso chiunque stia guardando.",
		"si porta due dita a una zanna, poi a terra, in un piccolo gesto più vecchio di qualunque strada di queste parti.",
	},
	["race.troll.muse.w09.063"] = {
		"Le altre razze scrivono le cose. La mia gente le dice ad alta voce, ancora e ancora, finché non vivono nella voce. Entrambi i modi perdono qualcosa. Il nostro, su una strada lunga, perde meno.",
		"I troll tengono il loro sapere nei canti, nei detti e nella testa degli anziani. Nessuna biblioteca da bruciare. Solo persone da tenere in vita.",
	},
	["race.troll.muse.w09.064"] = {
		"La frutta è più buona colta con le mani dai rami alti, dove nessun altro arriva. È una delle piccole gioie delle braccia di un troll.",
		"Un albero carico di frutta e braccia lunghe per arrivarci: certi giorni il mondo è molto semplice e molto gentile.",
	},
	["race.troll.muse.w09.065"] = {
		"Quando un troll muore, dice la mia gente, gli spiriti vengono a litigare per chi debba tenersi la sua compagnia. Spero che la mia valga una bella lite.",
		"La morte è una lunga camminata verso un fuoco chiassoso, raccontano gli anziani, pieno di tutti quelli partiti prima. Non ho fretta, ma la camminata non mi fa paura.",
	},
	["race.troll.muse.w09.066"] = {
		"Gli umani fissano i troll come se stessimo per mangiarli. Non è così. Di solito sono troppo salati.",
		"Ogni viandante dell'Alleanza che incrocio guarda le mie zanne, poi le mani, poi di nuovo le zanne. Io sorrido. Non serve mai.",
	},
	["race.troll.muse.w09.067"] = {
		"Un tempo gli imperi troll governavano mezzo mondo, quando elfi e umani non sapevano ancora impilare due pietre. Ora gli imperi sono macerie e noi siamo qui, a ridere ancora. So bene cosa preferisco essere.",
		"Gli imperi cadono; le tribù continuano. Gurubashi e Amani hanno costruito più in alto di chiunque, e guarda cosa ne resta. I Darkspear non hanno costruito niente che potesse cadere, e siamo ancora qui fuori, all'aria aperta, a ridere.",
	},
	["race.troll.muse.w09.068"] = {
		"La parola di un troll è un nodo: facile da fare, difficile da sciogliere. La mia gente promette di rado, ma quando lo fa promette a lungo.",
		"I troll sono rilassati su quasi tutto: postura, orari, buone maniere. Non sulle promesse. Quelle le leghiamo strette e le portiamo lontano.",
		"Ridi pure con un troll quanto vuoi, ma la sua parola prendila sul serio. Tra la mia gente una promessa infranta sopravvive a chi l'ha infranta.",
	},
	["race.troll.muse.w09.069"] = {
		"I capelli? Fanno così da soli. Io mi limito a trattare con loro.",
		"Nessuno pettina i capelli di un troll. Ci si mette d'accordo con loro e si spera che rispettino i patti.",
		"Sì, stanno dritti così. No, non so come. Erano già così quando li ho trovati.",
	},
	["race.troll.muse.w09.070"] = {
		"Quando a Sen'jin partono i tamburi, nessuno ha bisogno di sentirselo dire due volte. I troll scivolano verso il suono come falene verso una lanterna, e al terzo colpo parlano già tutti insieme.",
		"Un raduno dei Darkspear comincia con i tamburi e finisce con troppe risate. Nel mezzo si decidono davvero delle cose, e gli orchi se ne stupiscono ogni volta.",
	},
	["race.troll.muse.w09.071"] = {
		"traccia un piccolo segno nella polvere con un dito, lo studia un istante, poi lo cancella col tallone.",
		"raccoglie un sassolino, lo rigira due volte come se leggesse qualcosa sul fondo, e lo rimette esattamente dov'era.",
	},
	["race.troll.subzone_enter.w09.001"] = {
		"{subzone}. Prima di tutto annuso l'aria. Un troll si fida più del naso che di una mappa.",
		"{subzone}. Fumo, sterco, acqua o sangue: l'aria mi dice chi vive qui prima che qualcuno esca a dirmelo.",
		"{subzone}. Prima l'odore, poi i rumori, poi le facce. Quest'ordine ha tenuto in vita i troll per parecchio tempo.",
	},
	["race.troll.subzone_enter.w09.002"] = {
		"rallenta al margine di {subzone}, la testa inclinata, le zanne sollevate a saggiare l'aria.",
		"entra in {subzone} su piedi lunghi e silenziosi, le spalle sciolte e lo sguardo dappertutto.",
		"si ferma mentre {subzone} si apre davanti, dondolando sui talloni per abbracciare tutto con un'occhiata.",
	},
	["race.troll.subzone_enter.w09.003"] = {
		"{subzone}. Vediamo chi ci vive, e se divide il suo pesce.",
		"{subzone}, eh? Ha l'aria di un posto con delle storie. E, speriamo, un cuoco.",
		"{subzone}. Ancora nessuno mi ha tirato niente. Bell'inizio, mon.",
	},
	["race.troll.subzone_enter.w09.004"] = {
		"{subzone}. Da qualche parte qui c'è un albero da frutto, e ho intenzione di trovarlo.",
		"{subzone}. Le mie lunghe orecchie si girano in avanti da sole. Amano sentire i pettegolezzi per prime.",
		"{subzone}. Guardo in alto prima di guardare avanti. I troll controllano sempre i rami; metà dei guai del mondo abita lassù.",
	},
	["race.troll.subzone_enter.w09.005"] = {
		"{subzone}. Per prima cosa cerco ossa appese ai pali. I troll delle altre tribù amano decorare i loro confini.",
		"{subzone}. Piume legate a un ramo, un segno graffiato su una pietra: leggo i segnali prima di fidarmi della quiete.",
		"{subzone}. Se un'altra tribù rivendica questa terra, l'avrà scritto da qualche parte, con ossa o pittura. Tengo gli occhi aperti per leggere il messaggio.",
	},
	["race.troll.subzone_enter.w09.006"] = {
		"{subzone}. La volta degli alberi si chiude sopra di me come un tetto che conosco già.",
		"{subzone}. Le foglie bagnate mi danno pacche sulle spalle per darmi il benvenuto. La giungla non ha mai imparato a sussurrare.",
		"{subzone}. Caldo, verde e il ronzio di mille piccole vite. Il passo si fa leggero senza chiedermi il permesso.",
	},
	["race.troll.subzone_enter.w09.007"] = {
		"{subzone}. Sale e legno bagnato. Il mare è abbastanza vicino da sentirlo, e le mie spalle se ne accorgono per prime.",
		"{subzone}. Onde da qualche parte, appena fuori vista. Un troll trova l'acqua a occhi chiusi.",
		"{subzone}. Qui il vento sa di mare. Farei tanta strada per quel sapore.",
	},
	["race.troll.subzone_enter.w09.008"] = {
		"{subzone}. Ancora polvere. Mi lecco le labbra e prometto loro acqua più tardi.",
		"{subzone}. Così secco da spaccare la pelle di un troll come cuoio vecchio. Sto all'ombra e le mie opinioni le tengo per me.",
		"{subzone}. Neanche una goccia d'acqua in vista. Mi sembrano assetate perfino le zanne, e non sapevo che potessero esserlo.",
	},
	["race.troll.subzone_enter.w09.009"] = {
		"{subzone}. Salute a chiunque abiti qui, visibile o no. Sono solo di passaggio.",
		"{subzone}. Calma, spiriti. Un troll solo, amichevole, che sta soltanto passando.",
		"{subzone}. Vi dispiace se passa un Darkspear? Farò presto e piano.",
	},
	["race.troll.subzone_enter.w09.010"] = {
		"si china sotto un ramo basso entrando in {subzone}, scostandolo con le lunghe braccia come una tenda.",
		"entra in {subzone} con quel passo sciolto e ondeggiante dei troll, come se il terreno fosse il ponte di una nave.",
		"muove i primi passi in {subzone} con calma, una lunga mano che sfiora qualunque cosa abbia vicino.",
	},
	["band.b60.muse.w10.001"] = {
		"Ogni strada che esce da un primo villaggio ora mi sembra corta. Non è la strada ad essersi accorciata.",
		"C'è stato un tempo in cui una sola collina valeva una giornata di marcia. Le colline sono rimaste quelle. Le gambe no.",
		"Le prime strade della mia vita sembravano infinite. A ripensarci, erano lunghe quanto una buona litigata.",
	},
	["band.b60.muse.w10.002"] = {
		"cammina senza fretta, l'equipaggiamento consumato su ogni spigolo, con l'aria di chi la strada ha smesso di mettere alla prova.",
		"sistema una cinghia già sistemata mille volte, senza bisogno di guardarla.",
		"controlla una a una fibbie e cuciture, il lento inventario di chi ha imparato quanto costa una sola allentata.",
	},
	["band.b60.muse.w10.003"] = {
		"Prima o poi, a quest'altezza, ogni strada porta alle Plaguelands. Chi le percorre, dopo, ne parla poco.",
		"Nelle Plaguelands la forza scopre quanto vale. Il Flagello non smette mai di chiederlo.",
		"Su a nord è la terra stessa a essere malata, e l'Argent Dawn ci tiene una cappella con la testardaggine e poco altro. La testardaggine la capisco.",
	},
	["band.b60.muse.w10.004"] = {
		"Ormai metà delle mie monete va in riparazioni. Essere forti è soprattutto un modo costoso di farsi colpire da cose più grosse.",
		"In Blackrock c'è un paio di guanti che porta il mio nome. Devo solo convincerne il proprietario attuale.",
		"I riparatori, ovunque, sembrano felici di vedermi. Non è fama. È un cliente abituale.",
	},
	["band.b60.muse.w10.005"] = {
		"La forza è un debito. Il mondo mi ha prestato anni duri per costruirla, e si aspetta di essere ripagato allo stesso modo.",
		"Non ha senso essere così forti solo per sé. Uno scudo dietro cui non si ripara nessuno è soltanto una piastra pesante.",
		"Qualunque cosa io sia {g:diventato|diventata}, dovrebbe stare fra qualcosa di terribile e qualcuno che non può farlo.",
	},
	["band.b60.muse.w10.006"] = {
		"Certi giorni il corpo elenca ogni strada che ha percorso, un dolore dopo l'altro, e pretende che io ascolti.",
		"I principianti si stancano. Questa è un'altra cosa: la stanchezza di sapere esattamente quanto resta da fare.",
		"Potrei riposarmi. Nessuno me ne farebbe una colpa. È proprio per questo che è così difficile.",
	},
	["band.b60.muse.w10.007"] = {
		"Se sei all'inizio: compra bende prima di qualunque cosa luccichi. Fra una settimana mi ringrazierai.",
		"Prima lezione, gratis: la cosa che sembra innocua di solito è quella che morde.",
		"Un consiglio a chi comincia: scappa prima di quanto l'orgoglio vorrebbe. L'orgoglio guarisce più piano dei lividi.",
	},
	["band.b60.muse.w10.008"] = {
		"Gente che non ho mai visto riconosce la mia faccia. Non so se mi piace essere una storia che raccontano senza di me.",
		"Gli sconosciuti mi salutano come se avessimo diviso un fuoco da campo. Le voci viaggiano più lontano di quanto abbia mai fatto io.",
		"Il mio nome entra in ogni città prima di me, ormai. Passo metà del tempo a rincorrerlo.",
	},
	["band.b60.muse.w10.009"] = {
		"Gli stormi dei draghi si stanno muovendo. Il nero dentro la montagna, il verde ai margini dei grandi alberi, il blu sopra le rovine di Azshara. Qualunque cosa aspettino, non siamo noi.",
		"Un tempo i draghi erano una storia per bambini. A questo punto della strada sono una voce nell'elenco delle cose a cui prepararsi.",
		"Ogni stormo di draghi pare avere i suoi affari in questo mondo, e nessuno ci ha chiesto un parere.",
	},
	["band.b60.muse.w10.010"] = {
		"Tutti parlano del Molten Core come di una taverna dietro l'angolo. È un vulcano. Pieno di fuoco. Apposta.",
		"Vogliono quaranta persone che entrino in una montagna di fuoco a combattere il suo padrone. Quaranta. Io non riesco a metterne d'accordo quattro sul pranzo.",
		"La tana di Onyxia, il Molten Core, la città dei troll a Stranglethorn... Ogni tavolo di taverna ha un piano. Pochi hanno una data.",
	},
	["band.b60.muse.w10.011"] = {
		"Ricordo la paura della prima cosa che mi abbia mai ringhiato contro. Non la paura in sé, che è sparita, ma quanto era vera.",
		"Le prime paure erano piccole e oneste. Quelle che porto adesso sono più grandi e molto meglio vestite.",
		"Quello che mi spaventava all'inizio oggi mi farebbe a malapena girare la testa. Non so se sia soltanto una buona notizia.",
	},
	["band.b60.muse.w10.012"] = {
		"Blackrock Mountain contiene tre guerre in una: i Dark Iron sotto, la Dark Horde sopra, i draghi sopra entrambi. Nessuno con un po' di giudizio ci entra da solo, il che la dice lunga su chi ci entra.",
		"Quella montagna nelle Burning Steppes è il genere di posto in cui la gente scrive le sue lettere prima di entrare.",
		"Dentro Blackrock il caldo viene dalla pietra, l'odio da tutti quanti e il bottino, se arriva, arriva per ultimo.",
	},
	["band.b60.muse.w10.013"] = {
		"Silithus è sabbia, insetti grandi come carri e un muro che i kaldorei e i draghi sigillarono mille anni fa. La gente continua comunque ad avvicinarsi a quel muro.",
		"Cenarion Hold sorveglia un deserto che ronza. Sotto la sabbia qualcosa sta contando, e non conta a nostro favore.",
		"Il Twilight's Hammer si accampa a Silithus, gli alveari scavano lì sotto e le porte di Ahn'Qiraj restano chiuse. Per ora, che è la frase meno rassicurante che conosca.",
	},
	["band.b60.muse.w10.014"] = {
		"Ora la gente mi chiede cose vere. Non 'portami dieci pelli', ma 'riesci a fermarlo?'. Sto ancora imparando a dire di sì senza sussultare.",
		"Quando qualcuno chiede aiuto, oggi, mi guarda come se chiedere fosse la parte difficile. Per lui lo era.",
		"Chi ti assolda e chi ti chiede aiuto non sono la stessa cosa. Al primo devi il lavoro, al secondo devi la persona.",
	},
	["band.b60.muse.w10.015"] = {
		"Il Flagello mandi pure quello che vuole. Qualcuno deve affrontarlo, e io ho finito le ragioni per cui quel qualcuno non dovrei essere io.",
		"In questo mondo ci sono cose peggiori di me. Intendo trovarle prima che trovino qualcun altro.",
		"Il mondo è pieno di cose che si fermano solo se qualcuno le ferma. Va bene. È questo, il lavoro.",
	},
	["band.b60.muse.w10.016"] = {
		"dà un'occhiata a uno zaino pieno di cose che nessun principiante riconoscerebbe, e di qualcuna che nessun principiante dovrebbe toccare.",
		"conta le monete nella borsa, fa a mente il conto delle riparazioni, aggrotta la fronte e ricomincia a contare.",
		"si stiracchia finché qualcosa in una spalla risponde con uno schiocco, il suono di un lungo servizio.",
	},
	["band.b60.muse.w10.017"] = {
		"A Caer Darrow insegnano la negromanzia come un mestiere, con lezioni e maestri. È questo che non riesco a togliermi di dosso: quanto sia tutto ordinato.",
		"Stratholme è una città a cui nessuno ha lasciato finire di morire. Il Flagello ne tiene una metà, la Scarlet Crusade l'altra, e nessuno dei due la lascia in pace.",
		"Scholomance, Stratholme: nomi che i giovani avventurieri sussurrano per sembrare coraggiosi. Io ormai li pronuncio ad alta voce, ed è peggio.",
	},
	["band.b60.muse.w10.018"] = {
		"Gloria è una parola rumorosa per qualcosa che somiglia soprattutto alla pazienza e ai conti del fabbro.",
		"Le canzoni lo fanno sembrare un unico grande giorno. Sono diecimila giorni qualunque, quasi tutti nel fango.",
		"Nessuno scrive ballate sulla centesima discesa nello stesso dungeon. Eppure il lavoro vero sta proprio lì.",
	},
	["band.b60.muse.w10.019"] = {
		"Qualcuno va verso Blackrock? Sono di buona compagnia, e di compagnia migliore quando arrivano i draghi.",
		"Se a qualcuno serve un elemento in più per Blackrock Spire, ho tempo, provviste e un pessimo istinto di sopravvivenza.",
		"Cerco qualche persona salda per le Plaguelands. Nervi obbligatori, eroismi facoltativi.",
	},
	["band.b60.muse.w10.020"] = {
		"A quest'altezza sono meno quelli che mi camminano accanto. Non è solitudine, esattamente. È silenzio.",
		"Quasi tutte le facce delle prime strade hanno preso la loro via, tempo fa. Auguro loro ogni bene, ovunque la strada li abbia lasciati.",
		"La forza sfoltisce la compagnia. Non lo fa apposta: è solo che le strade si fanno più strette.",
	},
	["band.b60.muse.w10.021"] = {
		"Ogni luogo tranquillo ormai mi sembra una terra da principianti. Campi in pace, guai piccoli e qualcuno appena partito, convinto che sia il mondo intero.",
		"Le terre dolci mi piacciono più di quando erano tutto ciò che riuscivo a reggere. Bisogna aver visto le Plaguelands per amare davvero un prato qualunque.",
		"Gli angoli più morbidi del mondo sono quelli dove tutti cominciano. Mi fa piacere che esistano, e che qualcuno li tenga morbidi.",
	},
	["band.b60.muse.w10.022"] = {
		"Rend Blackhand siede nella Spire a giocare al capoguerra con un guinzaglio di drago al collo. Qualcuno dovrebbe dirgli che figura ci fa.",
		"I nani di Thaurissan continuano a scavare sotto la montagna, verso un padrone fatto di fuoco. C'è chi non impara mai da che parte sta il cielo.",
		"Ogni orrore del mondo ha una corte di gente che ha scelto di servirlo. Sono quelli che non riesco a perdonare.",
	},
	["band.b60.muse.w10.023"] = {
		"La cosa migliore che la lunga strada mi ha insegnato è quando non combattere. È stata la più lunga da imparare ed è quella che uso di più.",
		"L'esperienza è soprattutto un elenco di errori che non ho più tempo di commettere.",
		"Quello che so adesso starebbe in una lettera breve. Per scriverla mi c'è voluta tutta la strada.",
	},
	["band.b60.muse.w10.024"] = {
		"Si parla di una necropoli sospesa sopra le Plaguelands, una fortezza dei morti che galleggia nell'aria. Riderei, se l'Argent Dawn non fosse così silenziosa al riguardo.",
		"Il Lich King è lontano, dicono, oltre il mare, nel nord ghiacciato. Quel lontano ha uno strano modo di arrivare fin qui.",
		"I padroni del Flagello non mettono mai piede sul campo di persona. È questo a spaventarmi: chi muove i pezzi può permettersi di aspettare.",
	},
	["band.b60.muse.w10.025"] = {
		"Quando i bambini mi chiedono se ho mai combattuto un drago, rispondo 'non prima di colazione'. Così restano col dubbio.",
		"I più giovani pensano che io sappia tutto. Li lascio fare, finché non mi chiedono la strada.",
		"A quanto pare adesso sono qualcuno da ammirare. Cercherò di non inciampare mentre guardano.",
	},
	["band.b60.muse.w10.026"] = {
		"Ogni strada fino a quest'altezza è costeggiata da chi non ce l'ha fatta. La maggior parte non l'ho conosciuta. Ci penso lo stesso.",
		"La forza è in parte fortuna rimasta senza nome. Cerco di ricordarlo quando passo accanto ai tumuli lungo la via.",
		"Tanti più coraggiosi di me si sono fermati lungo la strada. Il fatto che io sia qui non è un giudizio su di loro.",
	},
	["band.b60.muse.w10.027"] = {
		"A Everlook i goblin vendono bevande calde a prezzi che dovrebbero essere un reato, e a Winterspring nessuno protesta. È così che capisci di essere davvero ai margini.",
		"Ai bordi della mappa abitano i guai interessanti: Winterspring, Silithus, le Plaguelands. Il centro del mondo è già stato messo in ordine.",
		"A questo punto gli angoli più remoti mi sembrano più vicini delle capitali. Conosco la strada per Everlook meglio di quella per un sarto decente.",
	},
	["band.b60.muse.w10.028"] = {
		"L'Argent Dawn vuole pietre del Flagello, i Timbermaw vogliono perline, la Thorium Brotherhood vuole minerale. Avere la fiducia degli altri, a quanto pare, è una commissione a tempo pieno.",
		"La reputazione si costruisce come un muro: una pietra noiosa dopo l'altra, e nessuno se ne accorge finché non regge.",
		"Ogni fazione che conta vuole prove, e le prove arrivano a sacchi. Di sacchi ne ho portati parecchi.",
	},
	["band.b60.muse.w10.029"] = {
		"sta ritto con la calma di una lama temprata da tempo, senza più niente da dimostrare e con tutto ancora da fare.",
		"alza lo sguardo senza fretta, come se prendesse le misure al mondo intero per un lavoro che resta da fare.",
		"espira piano, e tutta la lunga strada sembra posarsi sulle sue spalle e restarci, portata bene.",
	},
	["band.b60.muse.w10.030"] = {
		"Se tutta questa forza finisce in una locanda, a raccontare storie davanti a un boccale, l'avrò sprecata. C'è ancora lavoro.",
		"Quando sei debole, lo scopo è facile: diventare più forte. Adesso devo sceglierne uno, e nessuno te lo consegna.",
		"Il mondo non ha bisogno di un altro eroe. Ha bisogno di gente che continui a presentarsi quando le canzoni sono finite. Questo lo so fare.",
	},
	["band.b60.muse.w10.031"] = {
		"Tutto quello che indosso l'ho strappato a qualcosa che non voleva cederlo. La moda è un lavoro faticoso.",
		"Mi chiedono dove ho preso questi stivali. La risposta onesta è 'da qualcuno a cui non servivano più', e di solito la conversazione finisce lì.",
		"Niente di quello che indosso è coordinato, ma ogni pezzo è sopravvissuto a qualcosa. Anche questo è uno stile.",
	},
	["band.b60.muse.w10.032"] = {
		"Essere in cima significa solo che i pericoli rimasti sono quelli che aspettavano qualcuno come me.",
		"Ormai sono abbastanza forte da farmi notare dalle cose che contano. Non so se sia il complimento che sembra.",
		"Nel mondo ordinario non c'è più molto che possa farmi male. Ma è oltre l'ordinario che sto andando, comunque.",
	},
	["faction.alliance.muse.w10.001"] = {
		"La lingua comune è quella in cui commerciamo, marciamo e battibecchiamo. Ma mezza Alleanza conta, impreca e sogna in un'altra.",
		"Chiedi la strada in lingua comune a un nano, a uno gnomo e a un elfo: tre accenti e una strada sola. È l'Alleanza che funziona come deve.",
		"La lingua comune per gli ordini, quella di casa per le imprecazioni. In qualunque accampamento dell'Alleanza capisci chi ha sbattuto un piede dalla lingua in cui impreca subito dopo.",
	},
	["faction.alliance.muse.w10.002"] = {
		"I tagliapietre che ricostruirono Stormwind mandarono il conto ai nobili e in cambio ebbero il silenzio. Adesso la strada di Westfall riscuote da tutta l'Alleanza, con le maschere rosse.",
		"Chiunque dell'Alleanza vada a Stormwind passa prima per Westfall, e vede che faccia ha un debito non pagato quando impara a impugnare un coltello.",
		"Per un nano la paga di un muratore è sacra. I nobili di Stormwind l'hanno trovata trattabile, e i Defias da allora non hanno più smesso di trattare.",
	},
	["faction.alliance.muse.w10.003"] = {
		"Un marinaio a Menethil giurava che la nave di re Varian non è mai arrivata a Theramore. Una guardia di Stormwind giurava che il re la nave non l'ha mai raggiunta. Tutti d'accordo che è sparito; nessuno su dove.",
		"Un ambulante dà la colpa ai pirati, un sacerdote all'Orda, un ubriaco di Lakeshire ai nobili. Ogni storia sul re scomparso racconta più di chi la racconta che del re.",
		"Ogni taverna dell'Alleanza ha la sua versione di dove sia finito il re. Ho smesso di collezionarle: nessuna ha un'ultima pagina felice.",
	},
	["faction.alliance.muse.w10.004"] = {
		"Nella Stormwind Keep un ragazzo siede sotto una corona troppo grande per lui, e soldati di quattro popoli obbediscono in suo nome. Il peso lo porta Bolvar Fordragon; al ragazzo resta il nome.",
		"Sulla carta l'Alleanza risponde a un re bambino e a un reggente stanco. Spero che Bolvar Fordragon riesca a dormire filato almeno una volta l'anno, e che il ragazzo possa fare il ragazzo, ogni tanto.",
	},
	["faction.alliance.muse.w10.005"] = {
		"La grande forgia di Ironforge non si è mai raffreddata a memoria d'uomo, e la memoria dei nani è lunga. Qualunque cosa perda l'Alleanza, quel fuoco continua ad ardere sotto la montagna.",
		"Metà dell'acciaio che porta le nostre insegne è stato colato sotto una sola montagna. Chiunque siamo, un nano ha messo mano a tenerci interi.",
	},
	["faction.alliance.muse.w10.006"] = {
		"A Ironforge abbassano la voce quando parlano della figlia del re. Rapita dai Dark Iron, dice qualcuno; andata da loro di sua volontà, dicono altri. Magni Bronzebeard non dice niente.",
		"Un re che dissotterra il passato del mondo intero, e non riesce a tirar fuori sua figlia da sotto Blackrock. Nemmeno i muri spessi di Ironforge impediscono a questa storia di rimbombare.",
	},
	["faction.alliance.muse.w10.007"] = {
		"Un tempo Magni aveva due fratelli al suo fianco. Uno gira il mondo per la Explorers' League; l'altro partì verso nord con un principe di Lordaeron, e il nord se l'è tenuto.",
		"Alla casa reale di Ironforge mancano fratelli: Brann a scavare chissà dove, Muradin perso tra i ghiacci con il principe che era andato ad aiutare. Il più vecchio amico dell'Alleanza ha pagato la sua parte.",
	},
	["faction.alliance.muse.w10.008"] = {
		"Darnassus sta su un albero oltre il mare, lontana dal resto dell'Alleanza quanto può esserlo una capitale che manda ancora soldati. Certi giorni quella distanza sembra saggezza.",
		"Chiedi a un umano quanto dista Darnassus e ti dirà «una traversata». Chiedilo a un elfo della notte e ti dirà «quanto basta».",
		"Gli elfi della notte si sono uniti a noi tardi, e tengono la loro città oltre l'acqua, in cima a un albero. Si può essere buoni alleati e preferire comunque la propria quiete.",
	},
	["faction.alliance.muse.w10.009"] = {
		"Le Sentinelle difendono Ashenvale dai Warsong quasi da sole. Quando l'Alleanza parla della sua guerra con l'Orda, gli elfi potrebbero spiegarle due cose sul prezzo del legname.",
		"Ogni ascia dei Warsong ad Ashenvale morde un albero che qualche Sentinella ha giurato di proteggere. Il resto dell'Alleanza lo legge nei rapporti; gli elfi lo sentono nel legno.",
	},
	["faction.alliance.muse.w10.010"] = {
		"Qualche druido mormora che Teldrassil sia stato piantato senza la benedizione dei vecchi poteri. La capitale più giovane dell'Alleanza, e perfino la sua gente discute delle radici.",
		"Un grande albero cresciuto in fretta, dopo che un altro grande albero era andato perduto. Gli elfi la chiamano speranza. Ogni tanto un druido guarda le radici e tace, e quel silenzio pesa di più.",
	},
	["faction.alliance.muse.w10.011"] = {
		"Chiedi a uno gnomo che cosa fece l'Alleanza quando cadde Gnomeregan: ti risponde con un gran sorriso e cambia discorso. Il sorriso basta.",
		"Gli gnomi hanno perso una città intera e continuano ad aggiustare i congegni di tutti gli altri. Se l'Alleanza marcerà mai su Gnomeregan, la prima fila gliela deve.",
	},
	["faction.alliance.muse.w10.012"] = {
		"Lady Proudmoore mantiene una tregua con il Capoguerra al di là dell'acqua. C'è chi nell'Alleanza la chiama politica e chi un tradimento in attesa di una data. Theramore intanto tiene aperti i cancelli.",
		"Theramore parla con Orgrimmar; Stormwind no. L'Alleanza ha più di un'idea di pace, e ognuna viene con le sue mura.",
	},
	["faction.alliance.muse.w10.013"] = {
		"Diciamo «la guerra con l'Orda» come se fosse una sola. Ad Ashenvale è legname, a Hillsbrad sono campi, nell'Arathi una miniera e una fucina. Ovunque, è il fratello di qualcuno.",
		"La guerra con l'Orda non ha un fronte, solo steccati: un crinale a Hillsbrad, un campo di taglialegna ad Ashenvale, un incrocio a Stranglethorn. Impari dove corrono gli steccati guardando dove stanno le tombe.",
	},
	["faction.alliance.muse.w10.014"] = {
		"L'Alleanza discute di Westfall e di Ashenvale mentre i morti si tengono tutto il nord. Certi giorni penso che il Flagello sia l'unico a non distrarsi.",
		"In ogni consiglio dell'Alleanza c'è una sedia per la questione dell'Orda, una per i Defias, una per la città degli gnomi. Al Flagello la sedia non è mai servita: ha il nord.",
	},
	["faction.alliance.muse.w10.015"] = {
		"Dietro la prima Alleanza c'erano sette regni umani, più i nani e gli elfi. Conta le bandiere di quell'elenco che sventolano ancora: ti avanzano dita.",
		"Lordaeron caduta, Alterac venduta, Gilneas murata, Stromgarde in rovina, Dalaran sotto la sua cupola. La prima Alleanza non ha perso una guerra: ha perso i suoi membri uno alla volta.",
	},
	["faction.alliance.muse.w10.016"] = {
		"A Light's Hope l'Argent Dawn accoglie chiunque sia disposto a opporsi ai morti, Alleanza e Orda allo stesso modo. Il Flagello è riuscito dove nessun re ce l'ha fatta: ha fatto dividere una cappella alle due parti.",
		"Nelle Plaguelands un soldato dell'Alleanza e uno dell'Orda possono fare la guardia sullo stesso muro, sotto l'Argent Dawn. Nessuno la chiama pace. Ma nessuno la chiama nemmeno guerra.",
	},
	["faction.alliance.muse.w10.017"] = {
		"Nell'Alterac i nani Stormpike scavano per i loro diritti e i Frostwolf difendono l'unica casa che hanno. Ciascuno ha le sue ragioni, ed è proprio per questo che la valle non resta mai tranquilla.",
		"La Stormpike Guard chiama volontari, e l'Alleanza li manda su, tra le montagne dell'Alterac. I Frostwolf c'erano prima; i nani ci sono arrivati con un documento firmato. Lassù i documenti non li legge nessuno.",
	},
	["faction.alliance.muse.w10.018"] = {
		"Le Silverwing Sentinels tengono una gola dove i Warsong hanno abbattuto la foresta. Una bandiera va da una parte, una dall'altra, e gli alberi non hanno mai voce in capitolo.",
		"Warsong Gulch: l'Alleanza porta via la loro bandiera, l'Orda porta via la nostra. Sembra un gioco finché non hai visto i ceppi.",
	},
	["faction.alliance.muse.w10.019"] = {
		"La League of Arathor combatte i Defilers per una fattoria, una miniera, un mulino, una stalla e una fucina. Su quelle stesse colline sono nati regni per molto meno. E per molto meno si sono persi.",
		"Le colline dell'Arathi furono la culla del primo impero umano. Adesso l'Alleanza e l'Orda fanno a gara per le stalle e il mulino di una conca, e le pietre consumate stanno a guardare.",
	},
	["faction.alliance.muse.w10.020"] = {
		"Nelle città i campi di battaglia li chiamano gloria. Da vicino sono una lite con l'Orda che nessuno ha l'autorità di chiudere.",
		"Medaglie, marchi d'onore, un cenno da un generale. Tutto per tenere un campo che l'Orda si riprenderà entro la settimana prossima.",
	},
	["faction.alliance.muse.w10.021"] = {
		"La nave tra Menethil e Auberdine è il posto dove l'Alleanza si incontra davvero: nani aggrappati al parapetto, gnomi che cronometrano le onde, elfi che fingono di non avere il mal di mare.",
		"I marinai di Kul Tiras traghettano l'Alleanza da una costa all'altra e nessuno li ringrazia finché la nave non è in ritardo. Allora tutti sanno come si chiamano.",
	},
	["faction.alliance.muse.w10.022"] = {
		"Grifoni a est, ippogrifi a ovest. L'Alleanza non riesce a mettersi d'accordo nemmeno su cosa far volare, e tutti e due ti portano a destinazione.",
		"Piume e becco in ogni caso. Nani ed elfi discutono per un'ora su quale bestia sia migliore, e alle bestie non potrebbe importare di meno.",
	},
	["faction.alliance.muse.w10.023"] = {
		"I Wildhammer stanno nell'Alleanza come una raffica sta in una nave: arrivano quando vogliono, da Aerie Peak, in groppa ai grifoni, urlando. Bisogna dire che di solito arrivano.",
		"Non tutti i nani rispondono a Ironforge. I Wildhammer decidono per conto loro negli Hinterlands e prestano all'Alleanza i loro grifoni, il loro caratteraccio e, quando conta, i loro martelli.",
	},
	["faction.alliance.muse.w10.024"] = {
		"Non tutti i nani stanno con l'Alleanza. I Dark Iron si sono incoronati un imperatore sotto Blackrock, e la ferita tra i clan non si è mai chiusa.",
		"I Dark Iron hanno spezzato il Thandol Span, e la strada tra Ironforge e il sud ha un buco nel mezzo. Sono anni che l'Alleanza getta assi sopra buchi come quello.",
	},
	["faction.alliance.muse.w10.025"] = {
		"Gilneas ha chiuso il cancello, Quel'Thalas se n'è andata, Stromgarde ha preso la sua strada. L'Alleanza ha perso più membri per i musi lunghi che per l'Orda.",
		"Ogni tanto un regno sbatte la porta in faccia all'Alleanza e giura che è per sempre. La porta è ancora sui cardini: l'Alleanza è fatta soprattutto di porte così.",
	},
	["faction.alliance.muse.w10.026"] = {
		"Un tempo l'Alleanza era fatta di corone umane, con nani ed elfi al seguito per la guerra. Questa è più strana: un re bambino, un re nano, un'alta sacerdotessa e un inventore in esilio, e una gran quantità di lettere.",
		"L'Orda ha un solo Capoguerra. Noi abbiamo il reggente di Stormwind, il re di Ironforge, la sacerdotessa di Darnassus e l'inventore di Gnomeregan, e un corriere che non ha mai avuto un giorno libero.",
	},
	["faction.alliance.muse.w10.027"] = {
		"Ogni popolo dell'Alleanza tiene un registro: chi è venuto quando cadevano i cancelli, chi ha mandato una lettera al suo posto. Nessun registro torna, e marciamo insieme lo stesso.",
		"I vecchi debiti tengono unita l'Alleanza meglio dei giuramenti nuovi. I nani ricordano chi combatté per Ironforge, gli umani chi combatté per Stormwind, e tutti ricordano chi non venne.",
	},
	["faction.alliance.muse.w10.028"] = {
		"A Hyjal, raccontano i veterani, orchi, umani ed elfi della notte combatterono spalla a spalla contro la Legione. Poi i fuochi si spensero, e ciascuno riprese le sue vecchie liti.",
		"Una volta, sotto una montagna in fiamme, l'Alleanza e l'Orda combatterono dalla stessa parte. Oggi lo si racconta come una favola, e in un certo senso lo è diventata.",
	},
	["faction.alliance.muse.w10.029"] = {
		"Nethergarde Keep sorveglia, nelle Blasted Lands, un Dark Portal spento da anni. L'Alleanza paga maghi bravi per fissare una rovina, non si sa mai. Lo trovo stranamente rassicurante.",
		"Nella landa rossa una fortezza piena di maghi dell'Alleanza tiene d'occhio un portale che nessuno usa più. È così che si riconosce un popolo che è già stato preso di sorpresa.",
	},
	["faction.alliance.muse.w10.030"] = {
		"In un ufficio di Stormwind un furiere conta frecce per Ashenvale, stivali per l'Arathi e bende per le Plaguelands, chiedendosi chi pagherà. L'Alleanza va avanti grazie a quell'unico impiegato stanco.",
		"Nelle canzoni le guerre le vincono gli eroi, nei registri gli scrivani. L'Alleanza ha più canzoni che scrivani, e si vede.",
	},
	["faction.alliance.muse.w10.031"] = {
		"Gli umani si rivolgono alla Luce, gli elfi a Elune, i nani scavano in cerca dei loro creatori e gli gnomi ricontrollano i conti. A una sepoltura dell'Alleanza, però, chiniamo il capo tutti nello stesso istante.",
		"L'Alleanza non ha un solo credo e non gliene serve uno. Un paladino, una sacerdotessa della luna e un nano con la lanterna possono stare davanti alla stessa tomba e voler dire la stessa cosa.",
	},
	["faction.alliance.muse.w10.032"] = {
		"La Explorers' League dissotterra i segreti più vecchi del mondo e li consegna all'Alleanza come ricordini. Certi ricordini mordono.",
		"Nani armati di pala hanno insegnato all'Alleanza sulla nascita del mondo più di qualunque biblioteca. Soprattutto aprendo cose sigillate per un buon motivo.",
	},
	["faction.alliance.muse.w10.033"] = {
		"L'Alleanza manda la sua gente lontano da dove è nata: nani nelle foreste degli elfi, elfi sulle strade degli umani, gnomi ovunque ci sia un banco da lavoro. La nostalgia è l'unica cosa che abbiamo tutti in comune.",
		"In ogni guarnigione dell'Alleanza c'è qualcuno a cui manca una casa diversa: una montagna, una foresta, una città di ingranaggi, un campo di grano. Mettili insieme e hai tutta l'Alleanza, con il suo mal di casa.",
	},
	["faction.alliance.muse.w10.034"] = {
		"Una cena dell'Alleanza: pane umano, formaggio dei nani, frutta degli elfi e un aggeggio gnomesco che scalda tutto un po' troppo.",
		"Quattro popoli, una sola pentola. Lo stufato non piace a nessuno, tutti lo mangiano: ecco l'Alleanza in una scodella.",
	},
	["faction.alliance.muse.w10.035"] = {
		"Stormwind allinea davanti alla porta eroi di pietra che passarono il Dark Portal e restarono dall'altra parte. L'Alleanza scolpisce statue per chi non può andare a riprendersi.",
		"Passa sotto le statue alla porta di Stormwind e ti senti {g:osservato|osservata}, con gentilezza, da gente che si aspettava di più da noi. Lì cerco di camminare a testa un po' più alta.",
	},
	["faction.alliance.muse.w10.036"] = {
		"L'Alterac vendette la prima Alleanza all'Orda, e adesso le sue rovine appartengono al Syndicate. Il tradimento non finisce mai davvero: cambia solo padrone.",
		"Ogni alleato ha un nome da sputare. Per la prima Alleanza era Perenolde, il signore che aprì i passi all'Orda. L'Alterac non è mai stato perdonato, e le sue colline hanno smesso di chiederlo.",
	},
	["faction.alliance.muse.w10.037"] = {
		"Westfall brucia perché una città non volle pagare; il nord marcisce perché un principe non volle fermarsi. Le ferite peggiori dell'Alleanza le ha inferte la sua stessa mano.",
		"Guarda bene i nemici dell'Alleanza e troverai facce note: muratori non pagati, un principe perduto, nobili che vendettero un passo. L'Orda è l'unico nemico che non è cresciuto in casa nostra.",
	},
	["faction.alliance.muse.w10.038"] = {
		"conta sulle dita le capitali dell'Alleanza, esita su Gnomeregan e la conta lo stesso.",
		"spunta Stormwind, Ironforge e Darnassus su tre dita, ne alza una quarta per Gnomeregan e la tiene su un attimo più delle altre.",
	},
	["faction.alliance.muse.w10.039"] = {
		"borbotta un pensiero in lingua comune, aggrotta la fronte e lo riprova sottovoce in un'altra lingua, come per vedere quale calzi meglio.",
		"prova qualche parola cortese nella lingua di un altro popolo dell'Alleanza, storpia l'ultima e decide che andava bene così.",
	},
	["faction.alliance.muse.w10.040"] = {
		"Dite quel che volete dei consigli dell'Alleanza. Quando i morti scesero a sud, quasi tutti i nostri cancelli si aprirono per chi fuggiva davanti a loro.",
		"Con tutte le nostre liti, l'Alleanza ha accolto chi scappava dal Flagello. Ricordatevelo, la prossima volta che i nobili vi annoiano.",
	},
	["faction.alliance.muse.w10.041"] = {
		"A Booty Bay i goblin versano da bere all'Alleanza e all'Orda dallo stesso barile, e sorridono a tutti e due. C'è una lezione lì dentro; solo non so se mi piaccia.",
		"Le città dei goblin vendono corda a noi e corda a loro, e al cappio non importa chi l'ha comprata. L'Alleanza ha bisogno dei goblin e detesta averne bisogno.",
	},
	["faction.alliance.muse.w10.042"] = {
		"Tanti soldati dell'Alleanza sono nati dopo la distruzione del Dark Portal. Per loro la vecchia Orda è una storia, e la nuova è semplicemente la gente sull'altro crinale.",
		"I veterani combattono l'Orda che ricordano. Le reclute combattono quella che hanno davanti. Non sempre sono d'accordo su quale sia peggio.",
	},
	["faction.alliance.muse.w10.043"] = {
		"A Darnassus un piccolo elfo impara la lingua comune da un mercante umano, e le parolacce per prime. L'Alleanza se la caverà.",
		"Un apprendista gnomo insegna a un bambino nano a contare gli ingranaggi, e in cambio impara a imprecare. È così che le alleanze sopravvivono ai trattati.",
	},
	["faction.alliance.muse.w10.044"] = {
		"Stormwind è convinta di guidare l'Alleanza. Ironforge è convinta di pagarla. Darnassus è convinta che nessuna delle due stia facendo attenzione.",
		"Ogni capitale dell'Alleanza è segretamente sicura di essere quella che regge le altre. Hanno tutte un po' ragione, ed è questo il guaio.",
	},
	["faction.alliance.muse.w10.045"] = {
		"I cavalieri della Silver Hand erano l'orgoglio della prima Alleanza. Ora l'ordine è disperso: chi con l'Argent Dawn, chi nella follia della Scarlet Crusade, e pochi ancora in ginocchio nella cattedrale di Stormwind.",
		"I paladini dell'Alleanza giurano ancora sulla Luce, ma l'ordine che li formò si è spezzato insieme a Lordaeron. Ognuno ne porta un frammento, nessuno l'intero.",
	},
	["faction.alliance.muse.w10.046"] = {
		"Popoli diversi, dèi diversi, una sola linea. Tenetela.",
		"L'Alleanza non è mai stata un solo popolo. È una promessa di restare uniti, e io la mia parte intendo mantenerla.",
	},
	["faction.horde.muse.w10.001"] = {
		"Quattro popoli, quattro modi di pregare, una sola lingua per dare ordini. L'orchesco è l'unica cosa che tutta l'Orda ha in comune, e anche quella ognuno la pronuncia a modo suo.",
		"I tauren lo brontolano, i troll lo strascicano, i Reietti lo raschiano, gli orchi lo abbaiano. Eppure nell'Orda gli ordini li capiscono tutti.",
		"Nell'Orda l'orchesco è la lingua comune, e la lingua madre soltanto degli orchi. Gli altri l'hanno imparato come si impara una strada: percorrendola in compagnia.",
	},
	["faction.horde.muse.w10.002"] = {
		"Thrall avrebbe potuto chiedere terre più verdi. Ha preso il Durotar: polvere rossa, scorpioni, e nessun altro che lo volesse. Un popolo che cerca la pace comincia dove nessuno gli contende il terreno.",
		"Il Durotar è una terra dura, scelta apposta. La terra che nessuno invidia è terra che nessuno viene a prendersi.",
		"Orgrimmar è sorta dove la terra è rossa e l'acqua scarseggia. Il Capoguerra aveva capito che la casa più sicura è quella che nessuno desidera.",
	},
	["faction.horde.muse.w10.003"] = {
		"Cairne Bloodhoof parla piano, e l'Orda ha imparato ad aspettare la fine delle sue frasi. Un popolo che ha fretta ha bisogno di qualcuno che non ne abbia.",
		"Quando il consiglio del Capoguerra alza la voce, si racconta che Cairne lo lasci sfogare e poi pronunci tre parole. Di solito sono le tre giuste.",
	},
	["faction.horde.muse.w10.004"] = {
		"I Darkspear hanno giurato fedeltà all'Orda quando Thrall si rifiutò di salpare lasciandoli ai loro nemici. Vol'jin ha tenuto fede a quel giuramento in ogni stagione difficile. Debiti così tengono insieme un patto meglio di qualunque trattato.",
		"Sen'jin è morto perché la sua tribù potesse seguire il Capoguerra. Vol'jin non lascia che l'Orda lo dimentichi, e non lascia che i Darkspear dimentichino la promessa.",
	},
	["faction.horde.muse.w10.005"] = {
		"I Reietti stanno nell'Orda come un ospite sta vicino alla porta: dentro, benvenuti sulla carta, e sorvegliati. Cairne ha parlato per loro. Non tutti l'hanno ascoltato.",
		"Nell'Orda c'è ancora chi si conta le dita dopo aver stretto la mano a un Reietto. I Reietti se ne accorgono. Hanno la memoria lunga e ben poco da perdere.",
		"I Reietti sono stati accolti nell'Orda con una mano e tenuti a distanza con l'altra. La fiducia arriva, piano, come la sensibilità che torna in un arto intorpidito.",
	},
	["faction.horde.muse.w10.006"] = {
		"Fuori da Undercity nessuno sa bene cosa distillino nei loro tini gli speziali della Royal Apothecary Society. Sylvanas giura che è tutto destinato al Flagello. L'Orda ha scelto di crederle, per ora.",
		"Un'alleata che tiene chiuse a chiave le sue cantine. L'Orda combatte al fianco della Dama Oscura e non fa domande sul vetro verde. Un giorno qualcuno dovrà farle.",
	},
	["faction.horde.muse.w10.007"] = {
		"Il sangue del demone è stato bruciato via dagli orchi solo quando Grom Hellscream è caduto uccidendo Mannoroth. Ogni popolo dell'Orda adesso cammina su quel prezzo, orco o no.",
		"Ogni passo libero dell'Orda è stato comprato a Demon Fall Canyon, con la vita di chi per primo aveva bevuto il dono del demone.",
	},
	["faction.horde.muse.w10.008"] = {
		"Metà dell'unità dell'Orda è appesa a zeppelin goblin che scricchiolano come botti vecchie. Se i goblin alzano il prezzo del biglietto, il Capoguerra si ritroverà una guerra senza nemmeno un nemico in vista.",
		"Orgrimmar, Undercity, Grom'gol: l'Orda sta insieme grazie a palloni di stoffa e corde goblin. Meglio non pensarci, alla prossima traversata.",
		"Un pilota goblin, un pallone rattoppato in quattro colori, e tutto il collegamento dell'Orda fra due continenti. Ammirevole, a modo suo. Terrificante, in tutti gli altri.",
	},
	["faction.horde.muse.w10.009"] = {
		"Orgrimmar ha bisogno di legname e il Durotar non ne fa crescere. Così le asce vanno in Ashenvale, e le Sentinelle escono dagli alberi. Il bisogno da una parte, il lutto dall'altra, e hanno ragione tutti e due.",
		"Ogni trave di Orgrimmar ha dentro un pezzo d'Ashenvale, e il prezzo di una freccia. Non so dire se questo renda la città meno nostra, o la guerra più onesta.",
		"Gli accampamenti Warsong tagliano, la foresta sanguina, gli elfi della notte rispondono. In quella guerra nessuno è il cattivo ai propri occhi.",
	},
	["faction.horde.muse.w10.010"] = {
		"Gli alberi di Ashenvale sono troppo alti per il loro bene. Le Sentinelle non sono d'accordo, e lo spiegano a lungo, con le frecce.",
		"Gli elfi della notte la chiamano foresta sacra. A Splintertree la chiamano la legna del mese prossimo. Qualcuno dovrà pur cedere.",
	},
	["faction.horde.muse.w10.011"] = {
		"Nella vecchia Orda l'onore voleva dire uccidere bene. In questa vuol dire sapere quando non farlo. La seconda cosa è più difficile da insegnare, e nessuno ne è ancora del tutto sicuro.",
		"La nuova Orda tiene la vecchia parola, onore, e cerca di versarci dentro qualcosa di meglio. Certi giorni la parola sa ancora di quello che conteneva prima.",
		"L'onore, come lo intende il Capoguerra, vuol dire che un nemico battuto può andarsene. Nell'Orda c'è chi la chiama debolezza. Non ha mai visto quanto è costata l'altra strada.",
	},
	["faction.horde.muse.w10.012"] = {
		"L'Orda ricorda i campi d'internamento, anche i popoli che non ci sono mai finiti dentro. Un patto è anche questo: portare le cicatrici di un alleato come fossero le proprie.",
		"Qualche Reietto, da vivo, forse ha fatto la guardia ai campi d'internamento. Adesso marcia sotto la stessa bandiera di quelli che sorvegliava. Nell'Orda se ne parla poco.",
	},
	["faction.horde.muse.w10.013"] = {
		"Lok'tar ogar. Vittoria o morte, dicono gli orchi, e il resto dell'Orda ha imparato a dirlo con loro.",
		"Vittoria o morte. Ogni popolo dell'Orda ormai lo dice in orchesco, e lo intende nella propria lingua.",
	},
	["faction.horde.muse.w10.014"] = {
		"L'Orda è una manciata di avamposti tenuti in piedi dalla testardaggine: Kargath, Stonard, Grom'gol, Hammerfall, Tarren Mill. Sulla mappa sembra poca cosa. Sul terreno sembra gente che si rifiuta di andarsene.",
		"Segna gli accampamenti dell'Orda su una mappa dei Regni Orientali e ottieni qualche puntino in terra ostile. Ogni puntino è il fuoco di guardia di qualcuno, e nessuno si spegne.",
		"Ogni avamposto dell'Orda nei Regni Orientali è lontanissimo da Orgrimmar e si comporta come se non lo fosse. Quella testardaggine è metà di ciò che lo tiene in piedi.",
	},
	["faction.horde.muse.w10.015"] = {
		"Il cibo dei troll brucia, quello dei tauren riempie, quello degli orchi si difende, e su quello dei Reietti meglio non fare domande. Un banchetto dell'Orda è un atto di diplomazia.",
		"Nell'Orda, dividere un pasto richiede coraggio. Il piatto di qualcuno finirà sempre per incendiare la lingua di qualcun altro.",
	},
	["faction.horde.muse.w10.016"] = {
		"Il Flagello tiene il nord di Lordaeron, e la volontà del Re dei Lich muove ogni cadavere che ci si trova. L'Orda ha cento litigi con l'Alleanza, e uno solo con i morti che non può permettersi di perdere.",
		"Quando attorno a un fuoco dell'Orda si nominano le Plaguelands, le voci si abbassano. Orco, troll, tauren o Reietto, nessuno vuole finire in quell'esercito.",
		"L'Alleanza è una rivale. Il Flagello è una fine. L'Orda conosce la differenza, anche quando le sue voci più forti se ne dimenticano.",
	},
	["faction.horde.muse.w10.017"] = {
		"L'Orda combatte i morti che camminano con l'aiuto di altri morti che camminano. Nessuno l'aveva previsto. La guerra fa alleati più strani di quanti ne oserebbe qualunque consiglio.",
		"Un esercito di morti a nord, un'alleata dei morti a Undercity. La differenza è una volontà propria, e l'Orda ci ha scommesso parecchio.",
	},
	["faction.horde.muse.w10.018"] = {
		"Nella Warsong Gulch gli Outriders combattono perché le asce possano continuare a lavorare in Ashenvale. Una bandiera riportata a casa laggiù è un albero abbattuto da un'altra parte. La guerra è di rado semplice come uno stendardo.",
		"I Warsong Outriders e le Silverwing Sentinels hanno fatto di una gola una lite con le regole. Due bandiere, due basi, e dietro il punteggio un'intera foresta.",
	},
	["faction.horde.muse.w10.019"] = {
		"I Defilers si contendono la miniera, la segheria e le stalle dell'Arathi Basin. La gloria finisce nelle canzoni, il minerale e il legname nei rapporti, e all'Orda servono di più i rapporti.",
		"Nell'Arathi Basin i Defilers affrontano la League of Arathor: i morti del vecchio regno contro i suoi vivi, per campi che qualcuno di loro arava da vivo.",
	},
	["faction.horde.muse.w10.020"] = {
		"Il clan Frostwolf ha conservato le vecchie usanze nell'alta valle dell'Alterac mentre il resto degli orchi stava nei campi. Ora gli Stormpike scavano in quella valle, e tutta l'Orda è invitata a rispondere.",
		"L'Alterac Valley è dei Frostwolf per il diritto più antico che ci sia: ci sono sopravvissuti quando nessuno lo voleva. I nani Stormpike reclamano le stesse colline per le loro miniere.",
	},
	["faction.horde.muse.w10.021"] = {
		"A Theramore una donna umana mantiene col Capoguerra una tregua che metà della sua gente chiamerebbe tradimento. Jaina Proudmoore e Thrall hanno scommesso sulla stessa corda sottile.",
		"La pace con l'Alleanza ha una porta sola, e si apre da Theramore. Jaina Proudmoore si è messa contro suo padre per tenerla socchiusa. L'Orda se lo ricorda, a denti stretti.",
		"Si dice che Thrall e Jaina Proudmoore si scrivano, e che tutti e due tengano le lettere lontane dai loro consigli. È il fronte più silenzioso della guerra, e forse quello che conta di più.",
	},
	["faction.horde.muse.w10.022"] = {
		"L'Alleanza racconta ai suoi bambini che l'Orda se li mangia. L'Orda racconta ai suoi giovani che l'Alleanza si lava troppo spesso. Solo una delle due è una calunnia.",
		"Nelle storie dell'Alleanza siamo i mostri ai margini della mappa. Nelle nostre sono loro quelli che alzano muri e lo chiamano civiltà. Tutte e due le storie andrebbero corrette.",
		"L'Alleanza ha re, consigli e grandi sale di pietra. L'Orda ha un Capoguerra, qualche capotribù e un sacco di urla. Entrambe concludono qualcosa; noi lo facciamo con più rumore.",
	},
	["faction.horde.muse.w10.023"] = {
		"Nell'Orda adesso ci sono giovani guerrieri che non hanno mai visto un campo, una catena o un demone. Combattono per qualcosa in cui sono semplicemente nati. È per questo che i vecchi hanno sanguinato.",
		"Cresce una generazione intera convinta che l'Orda sia sempre stata così: tamburi, consigli, alleati. Lasciamoglielo credere. È il dono migliore che qualcuno potesse farle.",
	},
	["faction.horde.muse.w10.024"] = {
		"L'Orda non ha una fede sola. Gli spiriti per gli orchi, la Madre Terra per i tauren, i loa per i troll, e per i Reietti più che altro domande. Marcia lo stesso. Forse anche questa è una fede.",
		"Chiedi a quattro soldati dell'Orda chi veglia su di loro e avrai quattro risposte e un'alzata di spalle. Nessuno cerca di convincere nessuno. Forse è la regola migliore dell'Orda.",
	},
	["faction.horde.muse.w10.025"] = {
		"L'Orda combatte per l'acqua, il legno e il minerale più che per la gloria. Le terre buone di Kalimdor erano già prese molto prima che arrivassero gli orchi, e il bisogno è un pessimo diplomatico.",
		"La fame ha cominciato più battaglie dell'Orda di quante ne abbia mai cominciate l'orgoglio. L'orgoglio, poi, se ne prende il merito.",
	},
	["faction.horde.muse.w10.026"] = {
		"sistema l'equipaggiamento con la cura sbrigativa di un soldato che ha consumato molte strade dell'Orda.",
		"raddrizza le spalle come se un ufficiale dell'Orda fosse appena passato, anche se non è passato nessuno.",
	},
	["faction.horde.muse.w10.027"] = {
		"borbotta sottovoce qualche parola d'orchesco, come fanno i viaggiatori per non lasciar arrugginire una lingua comune.",
		"canticchia qualche battuta di un'aria di marcia sentita in un accampamento dell'Orda, poi smette di colpo, come {g:colto|colta} in fallo.",
	},
	["faction.horde.muse.w10.028"] = {
		"Un orco, un troll, un tauren e un Reietto. Sembra l'inizio di una barzelletta. È l'inizio di un esercito.",
		"Quattro popoli che non avrebbero mai diviso una strada, e adesso litigano su a chi tocca cucinare. Questa è l'Orda.",
		"Una bandiera, quattro popoli, e nessuno d'accordo sul passo di marcia. Eppure l'esercito arriva.",
	},
	["faction.horde.muse.w10.029"] = {
		"L'Orda chiede molto. D'altra parte, prima ha dato molto: una casa, un nome, un posto nella fila.",
		"La forza si trova facilmente. Quella che mantiene la parola è ciò che manca all'Orda. Intendo esserne un pezzo.",
	},
	["faction.horde.muse.w10.030"] = {
		"Thrall è giovane, per essere un Capoguerra. Eppure a volte mi chiedo chi terrebbe insieme tutti questi popoli senza di lui. Poi smetto di chiedermelo: una buona risposta non c'è.",
		"L'Orda poggia su poche paia di spalle: quelle di Thrall, di Cairne, di Vol'jin, della Dama Oscura. Spalle forti. Ma poche.",
	},
	["faction.horde.muse.w10.031"] = {
		"La Dark Horde di Rend Blackhand sventola ancora i vecchi colori a Blackrock Spire. L'Orda non li chiama proprio nemici. Più che altro un brutto ricordo armato d'ascia.",
		"La Burning Blade sussurra ancora agli orchi nelle grotte che i doni dei demoni erano veri. Ogni accampamento dell'Orda tiene un orecchio teso verso quel sussurro.",
	},
	["faction.horde.muse.w10.032"] = {
		"Viverne a Kalimdor, pipistrelli a Lordaeron. L'Orda viaggia sulle bestie che i suoi popoli hanno addomesticato, e alle bestie nessuno chiede un parere.",
		"Ogni popolo ha portato al patto qualcosa di suo. Gli orchi i lupi, i troll i raptor, i tauren i kodo, i Reietti cavalli tutt'ossa e una lunga pazienza.",
	},
	["faction.horde.muse.w10.033"] = {
		"Ogni popolo dell'Orda è stato braccato, ridotto in schiavitù o maledetto da qualcuno. Forse è questo a tenerla unita: qui tutti sanno cosa vuol dire essere messi all'angolo.",
		"Gli orchi fuori dai campi, i tauren incalzati dai centauri, i Darkspear cacciati dalle loro isole, i Reietti strappati alla presa del Re dei Lich. L'Orda è un raduno di fughe.",
		"Nessuno è entrato nell'Orda stando comodo. Ogni popolo che ne fa parte ci è arrivato fuggendo da un disastro tutto suo.",
	},
	["faction.horde.muse.w10.034"] = {
		"Grunt a Orgrimmar, sentinelle sulle mese, deathguard a Undercity, lance al Sen'jin Village. Nomi diversi per lo stesso mestiere: stare dove i guai arrivano per primi.",
		"Ogni capitale dell'Orda veste le sue guardie a modo suo e le addestra allo stesso modo: guardare, tenere, chiamare aiuto presto. La vecchia Orda l'ultima parte non l'ha mai imparata.",
	},
	["faction.horde.muse.w10.035"] = {
		"Alla banca di Orgrimmar un tauren aspetta dietro un troll, che aspetta dietro un Reietto, che aspetta dietro un orco. Nessuno spinge. È un piccolo miracolo, e nessuno se ne accorge.",
		"I pipistrelli di Undercity portano cavalieri tauren, gli ascensori di Thunder Bluff cigolano sotto il peso dei Reietti. Il patto si vede meglio nei posti noiosi.",
	},
	["faction.horde.muse.w10.036"] = {
		"Quando l'Orda perde qualcuno, ogni popolo piange a modo suo: le pire degli orchi, la terra dei tauren, i canti dei troll, il silenzio dei Reietti. Una sola guerra, e quattro modi di dire addio.",
		"I funerali dell'Orda sono affollati. Ognuno porta un'usanza sua e assiste con educazione a quelle degli altri.",
	},
	["faction.horde.muse.w10.037"] = {
		"I goblin vendono all'Orda e all'Alleanza dalla stessa cassa, con lo stesso sorriso. Neutrali, si definiscono. Io li chiamo l'unica parte che non perde mai.",
		"Booty Bay, Gadgetzan, Ratchet: città goblin dove una lama dell'Orda e una dell'Alleanza bevono allo stesso bancone. I bruiser fanno in modo che restino tutte e due nel fodero.",
		"La neutralità goblin è l'unico trattato che Orda e Alleanza rispettano entrambe. È scritto in monete, e a farlo rispettare ci pensano i bruiser.",
	},
	["faction.horde.muse.w10.038"] = {
		"Tarren Mill e Southshore stanno a due passi l'una dall'altra e si odiano per ognuno di quei passi. I Reietti ricordano quelle colline da quando respiravano ancora. L'Alleanza le ricorda come sue.",
		"A Hillsbrad l'Orda e l'Alleanza hanno smesso di fingere. La strada fra Tarren Mill e Southshore è corta, e nessuno la percorre disarmato.",
	},
	["faction.horde.muse.w10.039"] = {
		"Nessuna canzone nominerà le commissioni che sbrigo per il furiere di qualche avamposto. L'Orda è fatta di quelle commissioni molto più che di canzoni.",
		"Le guerre si ricordano per le battaglie. L'Orda sopravvive grazie ai rifornimenti, a chi porta l'acqua e a chi risponde all'avviso appeso al palo.",
	},
	["mood.city.muse.w10.001"] = {
		"Ogni città ha le stesse tre persone: una che vende, una che guarda chi vende, e una guardia che finge di non guardare nessuna delle due.",
		"In città tutti hanno un'opinione sulla guerra e nessuno ci è mai andato vicino. Ascolto e annuisco: costa meno che discutere.",
		"In una di queste strade un mercante si sta arricchendo con roba che ho trovato a prezzo di sangue. Buon per lui, immagino.",
	},
	["mood.city.muse.w10.002"] = {
		"Tutte queste porte, e dietro ognuna una vita che non ha niente a che fare con la mia. Lo trovo stranamente consolante.",
		"Migliaia di persone vivono a pochi passi da qui. Nessuna conosce il mio nome, e a nessuna serve conoscerlo.",
		"La folla è il posto migliore per stare da soli. Nessuno ti chiede da dove vieni, quando tutti hanno fretta di arrivare altrove.",
	},
	["mood.city.muse.w10.003"] = {
		"si ferma a guardare una trattativa per una sola moneta che dura molto più di quanto la moneta meriti.",
		"scavalca un gruppetto di apprendisti seduti in mezzo al passaggio, che litigano su quale maestro sia il più severo.",
		"si attarda davanti a un banco quanto basta per sentirsi gridare un prezzo, e riparte prima che arrivi il secondo.",
	},
	["mood.city.muse.w10.004"] = {
		"Troppa gente, troppo poco spazio, e camminano tutti più piano di me.",
		"Là fuori affronto un branco di qualunque cosa. Qui dentro non riesco ad attraversare una strada senza chiedere scusa quattro volte.",
		"Guardie ovunque, regole ovunque. Preferivo quando l'unica regola era non farsi mangiare.",
	},
	["mood.city.muse.w10.005"] = {
		"Là fuori dimentico a cosa servono le guardie di queste strade. Poi vedo un bottegaio contare l'incasso senza guardarsi alle spalle neanche una volta, e me ne ricordo.",
		"Qui nessuno deve riposare con la mano sull'arma. Qualcuno, là fuori, l'ha pagato, e continua a pagarlo.",
	},
	["mood.city.muse.w10.006"] = {
		"Dopo le terre selvagge, una città è troppo tutta insieme: cento rumori, e le orecchie vogliono controllarli uno per uno.",
		"A ogni grido la mano mi scivola verso l'arma. In città è una cattiva abitudine; là fuori mi ha tenuto in vita.",
		"Vengo in città per fare pace con tavole e letti. La tregua non dura mai più di qualche giorno.",
	},
	["mood.city.muse.w10.007"] = {
		"Guardali tutti. Ognuno con un posto dove andare e qualcuno che l'aspetta. Dev'essere bello.",
		"Senti che rumore: forge, venditori, pettegolezzi, passi. Una città suona come tanta gente che ha deciso di andare avanti.",
	},
	["mood.city.subzone_enter.w10.001"] = {
		"svolta in {subzone} e adatta il passo alla folla, né il più svelto né il più lento.",
		"entrando in {subzone}, scansa con garbo un facchino piegato in due sotto una cassa.",
		"prosegue verso {subzone} tenendo una mano vicina alla borsa, per vecchia abitudine.",
	},
	["mood.city.subzone_enter.w10.002"] = {
		"{subzone}. Banchi diversi, prezzi uguali: troppo alti.",
		"{subzone}. Se mi fermo un attimo, qualcuno cercherà di vendermi qualcosa. Tiro dritto.",
		"{subzone}. Una città non è che tanti piccoli paesi con un solo capitano delle guardie.",
	},
	["mood.city.subzone_enter.w10.003"] = {
		"{subzone}. Bene, e il fabbro da qui dov'è?",
		"{subzone}. Destra o sinistra? Ogni angolo qui assomiglia a quello di prima.",
		"{subzone}. So dove sono. Più o meno. Quasi.",
	},
	["mood.city.subzone_enter.w10.004"] = {
		"{subzone}. Facce sconosciute, faccende altrui. In città puoi camminare a lungo senza essere nessuno.",
		"{subzone}. Chi abita qui mi passa accanto senza guardarmi. Per loro quest'angolo è casa; per me è un nome su un'insegna.",
		"{subzone}. Qualcuno ride sulla soglia di una porta. Non conosco la battuta, ma mi fa piacere che qualcuno la racconti.",
	},
	["mood.city.subzone_enter.w10.005"] = {
		"passa in {subzone} e studia il posto come un esploratore studia una valle: le uscite, la folla, le guardie e dove stanno.",
		"mette piede in {subzone} e prende nota, senza volerlo, di ogni guardia e di ogni via d'uscita.",
		"arriva in {subzone} e si lascia portare un po' dal viavai, gli occhi che passano da un viso all'altro.",
	},
	["mood.dark.landmark.w10.001"] = {
		"raggiunge {landmark}, e la penombra sembra sollevarsi di un palmo, non di più.",
		"si ferma presso {landmark} e osserva il posto a lungo, come si osserva uno sconosciuto incontrato su una strada deserta.",
	},
	["mood.dark.muse.w10.001"] = {
		"La luce qui arriva sottile e stanca, come se avesse fatto tanta strada e al confine le fosse mancato il coraggio.",
		"Perfino la mia sagoma sembra seguirmi controvoglia, in questo posto.",
		"Qualcosa qui fa sembrare troppo forte ogni rumore: un passo, un colpo di tosse, il mio stesso respiro.",
	},
	["mood.dark.muse.w10.002"] = {
		"Qualunque cosa stia guardando, può continuare a guardare. Non mi fermo a presentarmi.",
		"Occhi avanti, gambe in movimento. Non è un posto dove trattenersi, e non ho intenzione di diventarne parte.",
	},
	["mood.dark.subzone_enter.w10.001"] = {
		"rallenta al margine di {subzone}, lascia che gli occhi si abituino alla penombra, poi prosegue.",
		"si addentra in {subzone} e si accorge di camminare più piano senza averlo deciso.",
	},
	["mood.dark.subzone_enter.w10.002"] = {
		"{subzone}. Qui la penombra ha un odore: umido, vecchio, paziente.",
		"{subzone}. Mi segno il nome e la via d'uscita più vicina, in quest'ordine. Qui, forse, nell'ordine inverso.",
	},
	["mood.deep.muse.w10.001"] = {
		"Quaggiù le orecchie fanno il lavoro che gli occhi non possono fare. Ogni goccia, ogni graffio viene pesato e messo da parte.",
		"Tengo una mano sulla parete di roccia, come un bambino si tiene a una manica. Nessuno deve saperlo.",
	},
	["mood.deep.subzone_enter.w10.001"] = {
		"{subzone}. Più in fondo, e la strada del ritorno si allunga a ogni nome.",
		"{subzone}. Qui l'aria è chiusa e stagnante; ogni rumore torna indietro dalla roccia con un attimo di ritardo.",
	},
	["mood.desert.landmark.w10.001"] = {
		"{landmark}. Un nome sulla terra secca. Quando qui si dà un nome a un posto, di solito è perché si è trovata l'acqua, o si è perso qualcuno a cercarla.",
		"{landmark}. Perfino le pietre qui sembrano assetate, e so benissimo come si sentono.",
	},
	["mood.desert.muse.w10.001"] = {
		"La terra secca ha una voce sua: la sabbia che sibila sulla pietra, e sotto un silenzio così vasto che rimbomba.",
		"Qui la terra è consumata fino all'osso. Ogni cresta sembra qualcosa che un tempo era più alto.",
		"I posti secchi conservano. Ossa, monete, vecchi muri: la sabbia li nasconde per un'era e li restituisce quando le gira.",
	},
	["mood.desert.muse.w10.002"] = {
		"Ogni stivale, ogni cucitura, ogni piega dello zaino: la polvere ci ha preso casa e non ha intenzione di sloggiare.",
		"Se qualcuno trova un briciolo d'ombra, mi chiami. Pago bene.",
	},
	["mood.desert.muse.w10.003"] = {
		"si passa la lingua sulle labbra screpolate e decide, per ora, di non bere.",
		"versa un filo d'acqua su un panno e se lo preme sulla nuca, come se maneggiasse una cosa preziosa.",
	},
	["mood.desert.subzone_enter.w10.001"] = {
		"avanza in {subzone} da una chiazza d'ombra all'altra, dove ce n'è.",
		"calca un terreno cotto come terracotta entrando in {subzone}.",
		"raggiunge {subzone} e soppesa l'otre per capire quanta acqua resta, prima di proseguire.",
	},
	["mood.fire.landmark.w10.001"] = {
		"{landmark}. Gente che tiene duro con tutto questo caldo: o molto coraggiosa, o senza altre scelte. Di solito tutte e due.",
		"{landmark}. Chi manda avanti un posto in questa fornace ha la pelle come cuoio da stivali, e probabilmente un carattere uguale.",
	},
	["mood.fire.muse.w10.001"] = {
		"Qui non c'è terra, solo cenere che si ricorda di essere stata terra. Passeranno ere prima che qualcosa ci metta radici.",
		"Per abitudine continuo a cercare qualcosa di verde. Questo suolo è stato cotto tanto tempo fa e non ha più niente da dare.",
		"La roccia è ancora tiepida sotto il palmo, come il fianco di qualcosa che dorme. Ritiro la mano in fretta.",
	},
	["mood.fire.muse.w10.002"] = {
		"Ho l'otre così calda che ci si potrebbe fare il tè. E non è un complimento.",
		"Chi si stabilisce di proposito in questo caldo deve avercela con le comodità.",
		"Sudore negli occhi, fuliggine fra i denti. Ricordatemi cosa c'è da queste parti che valga la pena.",
	},
	["mood.fire.muse.w10.003"] = {
		"si passa una manica sulla fronte e la ritrova ruvida di fuliggine.",
		"respira piano, col naso, come se l'aria calda andasse razionata.",
		"batte un colpo di tallone su una lastra scura per sentire se suona vuota, e solo allora ci sposta sopra il proprio peso.",
	},
	["mood.fire.muse.w10.004"] = {
		"Qui il fuoco non è qualcosa che si accende. È il carattere stesso della terra, e non si è mai raffreddato del tutto.",
		"Quello che ha bruciato questa terra non ha ancora finito. Il calore mi sale dagli stivali come un rancore covato.",
		"Cenere dappertutto: nel cibo, nelle pieghe delle mani. Questa terra è un focolare che nessuno ha mai spazzato.",
	},
	["mood.fire.muse.w10.005"] = {
		"Fibbie, anelli, qualunque cosa di metallo mi porti addosso è diventata rovente al tatto. Ho imparato quali smettere di toccare.",
		"Dopo un po' non sento più l'odore di bruciato nell'aria, e questo mi preoccupa più dell'odore stesso.",
	},
	["mood.fire.subzone_enter.w10.001"] = {
		"{subzone}. Il caldo non ha saputo che ho cambiato posto.",
		"{subzone}. Nome nuovo, stesso forno.",
		"{subzone}. Qualcuno si è preso la briga di dare un nome a un pezzo di roccia bruciata. Ammiro l'ottimismo.",
	},
	["mood.fire.subzone_enter.w10.002"] = {
		"attraversa un velo di cenere tiepida, che si solleva a ogni passo, per entrare in {subzone}.",
		"si pulisce la fuliggine dalle labbra arrivando in {subzone}, con il sapore del fumo in bocca.",
		"mette piede in {subzone} e guarda a lungo il terreno spaccato prima di scegliere dove appoggiare i piedi.",
	},
	["mood.fire.subzone_enter.w10.003"] = {
		"{subzone}. Guardate dove mettete i piedi. Parte di questa roccia non ha ancora deciso se essere solida.",
		"{subzone}. Avanti. Qui il terreno scotta abbastanza da punire chi sta fermo.",
	},
	["mood.forest.landmark.w10.001"] = {
		"{landmark}. Qualcuno si è fatto un po' di spazio fra gli alberi. Gentili, gli alberi, a permetterlo.",
		"{landmark}. Un posto con un nome, e la foresta che preme vicina da ogni lato, come per curiosità.",
	},
	["mood.forest.muse.w10.001"] = {
		"Tra le fronde c'è sempre qualcosa che si muove: un uccello, uno scoiattolo, un ramo che si assesta. La foresta non è mai ferma, solo silenziosa.",
		"Gli alberi sono vicini lenti. Sopravvivranno a ogni lite fatta sotto di loro, e non prendono mai le parti di nessuno.",
	},
	["mood.forest.muse.w10.002"] = {
		"si toglie un riccio di bardana dalla manica, poi un altro, poi rinuncia ai restanti.",
		"si ferma per lasciar attraversare il sentiero a uno scarabeo, cosa che richiede più tempo del previsto.",
	},
	["mood.forest.subzone_enter.w10.001"] = {
		"{subzone}. Felci fino al ginocchio e un odore di muschio e foglie vecchie. Si cammina bene, finché nelle felci nessuno ha niente da ridire.",
		"{subzone}. Più dentro, tra i tronchi, dove il sentiero si riduce a un'ipotesi. Qui potrei perdermi volentieri, ed è il modo più pericoloso di perdersi.",
	},
	["mood.jungle.muse.w10.001"] = {
		"Nella giungla niente resta morto a lungo. Un albero caduto è un banchetto alla pioggia successiva, e un giardino a quella dopo.",
		"Da quando sono qui non ho più avuto un vestito asciutto. Ho smesso di sperarci: adesso li strizzo e intanto ascolto se arriva qualcosa con i denti.",
	},
	["mood.jungle.subzone_enter.w10.001"] = {
		"si china sotto un groviglio pendente ed entra in {subzone}, i vestiti appiccicati addosso e ogni foglia intorno che gocciola.",
		"si apre la strada in {subzone} attraverso un muro di vapore e di verde, e più avanti qualcosa di invisibile scappa via con fracasso.",
		"si blocca entrando in {subzone}, mentre una lunga sagoma scivola giù da un ramo vicino e sparisce nel verde.",
	},
	["mood.plague.landmark.w10.001"] = {
		"{landmark}. Lo segno sulla mappa con cura. In una terra così malata, sapere esattamente dove ti trovi è già una forma di difesa.",
		"{landmark}. Un nome su cui orientarsi. Qui preferisco contare i nomi che le tombe.",
	},
	["mood.plague.muse.w10.001"] = {
		"La malattia non si è fermata alle persone. È entrata nel suolo, nell'acqua, perfino nel legno. Qui non si è salvato niente, nemmeno la terra.",
		"Qui tutto ha un odore vagamente dolce e sbagliato, come frutta dimenticata troppo a lungo in una stanza chiusa.",
	},
	["mood.plague.muse.w10.002"] = {
		"Se si muove e non dovrebbe, colpiscilo. Se non si muove e dovrebbe, cammina più in fretta.",
		"Dopo, lavatevi le mani. Due volte. Poi bruciate i guanti.",
	},
	["mood.plague.subzone_enter.w10.001"] = {
		"entra in {subzone} con un panno premuto su naso e bocca, gli occhi che passano in rassegna ogni mucchio e ogni avvallamento.",
		"rallenta arrivando in {subzone}, dove l'aria ristagna pesante e acida, e si volta a controllare che niente si sia messo a seguire i suoi passi.",
	},
	["mood.plains.subzone_enter.w10.001"] = {
		"{subzone}. Vento in faccia e una strada senza fretta. Mi va bene.",
		"{subzone}. Erba alta, vista lunga, cammino lungo. Li prendo tutti e tre.",
	},
	["mood.ruin.landmark.w10.001"] = {
		"{landmark}. Un nome attaccato a vecchie pietre. Chi l'ha chiamato così per primo probabilmente non l'ha costruito.",
		"{landmark}. Qui qualcuno ha fatto un posto con quello che restava. Le rovine sanno essere la seconda occasione di qualcuno.",
	},
	["mood.ruin.muse.w10.001"] = {
		"Chi abitava qui ragionava in numeri più grandi dei miei: sale più larghe, scale più alte, ere più lunghe. Eppure è venuto giù tutto.",
		"Le rovine sono oneste come le città non sanno essere. Qui niente finge di durare.",
		"Continuo a trovare intagli consumati fino a sparire. Qualcuno voleva essere ricordato, e il tempo ha tenuto solo il contorno.",
	},
	["mood.ruin.muse.w10.002"] = {
		"Quante pietre rotte per un posto solo. Qualcuno ha passato un secolo molto brutto.",
		"Occhio ai muri. È da un pezzo che aspettano di cadere addosso a qualcuno.",
	},
	["mood.ruin.subzone_enter.w10.001"] = {
		"entra in {subzone} passando per un arco crollato, chinandosi sotto una pietra che da secoli sta per cadere.",
		"si apre un varco in {subzone} sul selciato spaccato, saggiando ogni lastra prima di fidarsi.",
		"arriva in {subzone} e appoggia la mano su una colonna incrinata, come per controllare che stia ancora in piedi.",
	},
	["mood.snow.landmark.w10.001"] = {
		"{landmark}. Ditemi che da qualche parte dentro c'è un fuoco. Mentite, se serve.",
		"{landmark}. Un comignolo che fuma, adesso, sarebbe la vista più bella del mondo.",
	},
	["mood.snow.muse.w10.001"] = {
		"Il freddo rende tutto semplice. Continua a muoverti, mangia, tieni le mani al riparo dal vento. Il resto conta poco.",
		"La neve inghiotte i suoni. Tra un passo e l'altro sento il mio stesso cuore, e ne farei volentieri a meno.",
		"La neve conserva ogni traccia: le mie, quelle di un lupo, quelle di qualcosa di più grosso. Qui sai sempre chi è passato, e mai bene quando.",
	},
	["mood.snow.subzone_enter.w10.001"] = {
		"si apre la strada in {subzone} nella neve che scricchiola sotto i piedi, le spalle incassate contro il freddo.",
		"raggiunge {subzone} e batte gli stivali contro una roccia per staccarne la neve pressata.",
	},
	["mood.swamp.landmark.w10.001"] = {
		"raggiunge {landmark} e pesta con gratitudine un terreno che non cede sotto i piedi.",
		"arriva sguazzando a {landmark}, lasciandosi dietro una scia di fango.",
	},
	["mood.swamp.muse.w10.001"] = {
		"In una palude impari a leggere il colore dell'acqua. Marrone è fango, verde è marcio, nero è profondo, e limpido è una bugia.",
		"Ogni tronco potrebbe essere un tronco. Li tratto tutti come se non lo fossero, e finora ho conservato tutte le dita dei piedi.",
	},
	["mood.swamp.subzone_enter.w10.001"] = {
		"{subzone}. Se affondo, almeno saprò dov'è il punto profondo.",
		"{subzone}. Bagnato, più bagnato, e questa roba qui, qualunque cosa sia.",
	},
	["time.dawn.muse.w10.001"] = {
		"L'alba. Il buio cede terreno un poco alla volta, come un esercito che sa di aver perso.",
		"Prima luce, grigia e sottile, e già sta vincendo. Ogni giorno comincia con una piccola vittoria che nessuno festeggia.",
		"All'alba tornano per primi i contorni delle cose: un tetto, un albero, una mano alzata davanti agli occhi.",
	},
	["time.dawn.muse.w10.002"] = {
		"In piedi con la prima luce, cioè troppo presto per chiunque non sia un gallo o un soldato.",
		"L'alba. Il mio corpo ha delle opinioni in proposito, e nessuna è educata.",
		"Le prime ore hanno un freddo tutto loro. Ti entra nelle giunture e ci si accomoda, soddisfatto.",
	},
	["time.dawn.muse.w10.003"] = {
		"guarda la prima luce strisciare sulla terra, respirando piano, come per non disturbarla.",
		"resta immobile mentre sale l'alba, e lascia che il grigio intorno diventi colore.",
		"si stira nella luce del primo mattino, una giuntura alla volta, e strizza gli occhi verso il giorno che comincia.",
	},
	["time.dawn.muse.w10.004"] = {
		"Arriva la luce. Meglio partire prima che la giornata si faccia venire delle idee.",
		"Si parte presto. La strada non è mai così vuota come adesso.",
		"L'alba. Bene. Per un'oretta, tutto è possibile.",
	},
	["time.dawn.subzone_enter.w10.001"] = {
		"{subzone}, che si sta appena svegliando. La prima luce ci arriva prima di chiunque altro.",
		"{subzone} all'alba. Qualunque cosa la giornata abbia in serbo per questo posto, non è ancora cominciata.",
		"{subzone}. Luce grigia, aria fredda, e tutto che deve ancora decidere cosa essere oggi.",
	},
	["time.dawn.subzone_enter.w10.002"] = {
		"entra in {subzone} con la prima luce, e i passi suonano forti nella quiete del primo mattino.",
		"raggiunge {subzone} mentre spunta l'alba, e si ferma a lasciare che il posto si svegli intorno a sé.",
	},
	["time.day.landmark.w10.001"] = {
		"{landmark}, ben visibile nella luce del giorno. A quest'ora un posto somiglia più che mai a se stesso.",
		"{landmark}. La luce del giorno mi lascia giudicare il posto per quello che è, senza che il buio ci metta del suo.",
	},
	["time.day.landmark.w10.002"] = {
		"si ferma davanti a {landmark} e se lo studia alla luce del giorno, senza fretta, come chi controlla un cavallo prima di comprarlo.",
		"osserva {landmark} nella luce piena del giorno, notando cosa è stato riparato e cosa no.",
	},
	["time.day.muse.w10.001"] = {
		"Alla luce del giorno una strada è solo una strada: tanti passi, tante colline, nessun inganno. La prendo in parola.",
		"Di giorno le distanze sono oneste. Quella cresta è lontana esattamente quanto sembra, cioè troppo, ma almeno non mente.",
		"Le ore di luce servono a macinare strada. I pensieri possono aspettare il buio: tanto ci tengono, ad aspettarlo.",
	},
	["time.day.muse.w10.002"] = {
		"Pieno orario di lavoro. Un fornaio, in qualunque città, ha già finito e se ne vanta.",
		"Mezza giornata andata e niente da far cantare a un bardo. Meglio. I bardi fanno sembrare tutto faticoso.",
		"C'è ancora tanta luce. È quello che si dice un attimo prima di perdersi.",
	},
	["time.day.muse.w10.003"] = {
		"Il giorno è di tutti gli altri: le loro commissioni, i loro mestieri, le loro liti sul prezzo della corda. Io ci passo in mezzo e basta.",
		"Di giorno il mondo è troppo indaffarato per accorgersi di un viandante in più. C'è una specie di riposo, in questo.",
		"Le ore di luce non mi chiedono niente di personale. È il buio che vuole parlare.",
	},
	["time.day.muse.w10.004"] = {
		"Giornata lunga, e non ha ancora finito con me. La luce durerà più della mia pazienza, come al solito.",
		"In mezzo a ogni giornata c'è un tratto in cui il lavoro smette di sembrare una scelta e diventa come il tempo che fa. Lo si attraversa e basta.",
		"Mezza giornata alle spalle. Le mani lo sanno prima che il resto di me lo ammetta.",
	},
	["time.day.muse.w10.005"] = {
		"Con questa luce vedo ogni piega del terreno: dove il sentiero scende, dove deve correre un ruscello, dove qualcosa potrebbe stare in agguato.",
		"Si vede bene. Mi prendo il tempo di leggere il terreno come fanno i battitori, finché la luce è disposta a collaborare.",
		"Di giorno, qui fuori, tutto ha i contorni netti. Perfino gli alberi in lontananza sembrano lì da contare, uno per uno.",
	},
	["time.day.muse.w10.006"] = {
		"si ferma a scrutare la terra davanti finché la luce è buona, e segna con lo sguardo i sentieri che valgono la pena.",
		"approfitta della luce del giorno per controllare cinghie e fibbie una per una, senza fretta.",
		"si ferma allo scoperto e si gira piano, come per fissarsi in mente la forma del paese prima che la luce cambi.",
	},
	["time.day.muse.w10.007"] = {
		"La luce del giorno mostra tutto, compreso quanto fango ho raccolto da colazione a ora. Certe cose stanno meglio al buio.",
		"Con una buona luce si vede tutta la fatica del viaggio che ho addosso. Niente da nascondere, finché non accendono le lanterne.",
		"Alla luce del giorno ogni macchia e ogni toppa di un viandante è in mostra. Il buio è più clemente con il guardaroba.",
	},
	["time.day.muse.w10.008"] = {
		"Qualunque cosa vegli sul mondo, la Luce, gli spiriti o qualcosa senza nome, di giorno sembra più paziente.",
		"Ho sentito una dozzina di popoli ringraziare per il giorno in una dozzina di lingue. Nessuno ringrazia il buio allo stesso modo.",
		"Il giorno non promette niente. Si limita a presentarsi, il che vale più di molte promesse che ho sentito.",
	},
	["time.day.muse.w10.009"] = {
		"La luce è buona. Nessun motivo per starsene seduti. Andiamo.",
		"C'è ancora un bel pezzo di giornata, e tanto da farci. Muoviamoci.",
		"La luce del giorno è per lavorare. Le lamentele aspettano il fuoco.",
	},
	["time.day.muse.w10.010"] = {
		"La gente pensa che il giorno sia sicuro. Non lo è. Di giorno vedi arrivare il pericolo, e il pericolo vede te.",
		"La luce non rende più gentili le terre selvagge. Toglie solo la scusa di non aver visto.",
		"Nessuno si nasconde meglio di chi non ne ha bisogno. Molti cacciatori lavorano di giorno.",
	},
	["time.day.muse.w10.011"] = {
		"Più o meno a quest'ora una persona sensata si fermerebbe a mangiare. Vediamo se lo sono.",
		"Il mio stomaco batte le ore del giorno meglio di qualsiasi campanile, e dice che è ora.",
		"La giornata è nel pieno del da fare, e il mio stomaco pure. Uno dei due dovrà cedere per primo.",
	},
	["time.day.muse.w10.012"] = {
		"si guarda intorno nella luce piena del giorno, come per controllare che il mondo sia ancora dove l'aveva lasciato.",
		"strizza gli occhi nella luce del giorno e scioglie le spalle, {g:pronto|pronta} a quello che porteranno le ore.",
	},
	["time.day.muse.w10.013"] = {
		"Sulla strada i giorni si confondono. Mi accorgo che uno se n'è andato solo quando la luce comincia ad andarsene con lui.",
		"Ogni giorno di luce è uno in più di quanti ne abbiano i morti. Cerco di spenderlo come se contasse.",
		"Quanti giorni come questo restano a ciascuno? Nessuno li conta, finché il conto non si fa corto.",
	},
	["time.day.muse.w10.014"] = {
		"Bell'ora per viaggiare. Non che sappia riconoscerne una brutta: viaggio anche in quelle.",
		"È giorno, sono {g:sveglio|sveglia} e non ho nessun posto urgente dove andare. Qualcosa non va di sicuro.",
	},
	["time.day.muse.w10.015"] = {
		"Alla luce del giorno i vecchi muri e le pietre lungo la strada sembrano solo vecchi. Serve il buio perché sembrino ricordare.",
		"Di giorno le rovine lungo la strada sono solo pietre nell'erba. Le loro storie fanno altri orari.",
	},
	["time.day.subzone_enter.w10.001"] = {
		"{subzone}. Con questa luce lo guardo come si deve: chi ci vive, cosa ci tiene, dove portano i sentieri.",
		"{subzone}: di giorno si legge come una mappa. Bene. Mi piacciono i posti che scoprono le carte.",
		"{subzone}. È giorno, e ogni angolo è in vista. Gli angoli me li ricorderò.",
	},
	["time.day.subzone_enter.w10.002"] = {
		"entra in {subzone} in piena luce, e lo sguardo corre da un capo all'altro del luogo.",
		"entra in {subzone} senza fretta, lasciando che la luce del giorno {g:gli|le} mostri com'è fatto il posto.",
		"raggiunge {subzone} con il giorno ancora alto, e abbraccia il posto con un'occhiata.",
	},
	["time.day.subzone_enter.w10.003"] = {
		"{subzone}, di giorno. Vediamo com'è prima che qualcuno mi racconti com'è.",
		"{subzone}. Buona ora per arrivare ovunque: botteghe aperte, gente sveglia, tutti un po' meno sospettosi.",
		"Ah, {subzone}. E pure con una bella luce. Piccole grazie.",
	},
	["time.day.subzone_enter.w10.004"] = {
		"{subzone}. La luce del giorno è generosa con i luoghi: mostra il lavoro che la gente ci ha messo, e nasconde ciò che ha perso.",
		"{subzone} alla luce del giorno. Qualunque cosa sia successa qui, il giorno ha deciso di non parlarne.",
	},
	["time.day.subzone_enter.w10.005"] = {
		"{subzone}. C'è ancora luce per passare e andare oltre prima di aver bisogno di un tetto. Non perdiamo tempo.",
		"{subzone}. Resta un bel pezzo di giornata: posso guardarmi intorno per bene e ripartire comunque per tempo.",
	},
	["time.dusk.muse.w10.001"] = {
		"Imbrunire. La luce non cala, si assottiglia, finché mi accorgo che strizzo gli occhi da un pezzo.",
		"Il giorno se ne va, e con calma, come un ospite che non sa se qualcuno voglia che resti.",
		"L'ora di mezzo: troppo buio per leggere, troppo chiaro per le lanterne. Ho sempre l'impressione che dovrei già essere altrove.",
	},
	["time.dusk.muse.w10.002"] = {
		"La luce se ne va. È ora di pensare a dove sarò quando sarà sparita.",
		"Il crepuscolo è una domanda: quanto manca al prossimo tetto? Vorrei una risposta prima che me la dia il buio.",
		"Giornata finita. Quello che non ho fatto lo farò domani, se la notte lo permette.",
	},
	["time.dusk.muse.w10.003"] = {
		"si ferma mentre la luce defluisce dalla terra, e guarda i luoghi lontani spegnersi per primi.",
		"resta un poco nella luce che manca, finché i contorni del mondo cominciano a sfumare.",
		"si volta verso la strada da cui è {g:venuto|venuta}, dove il crepuscolo se l'è già mangiata.",
	},
	["time.dusk.muse.w10.004"] = {
		"Ecco finita la giornata. Qualcuno, chissà dove, sta accendendo un fuoco, e mi piacerebbe starci vicino.",
		"Si fa buio. L'ora in cui la gente sensata rientra e noialtri continuiamo a camminare.",
		"Sta venendo sera. Buona ora per un pasto caldo e una storia brutta.",
	},
	["time.dusk.subzone_enter.w10.001"] = {
		"{subzone}, nell'ultima luce. Meglio guardare bene adesso: tra poco non ci sarà più niente da vedere.",
		"{subzone} al crepuscolo. Il posto sta ripiegando la sua giornata, e io arrivo in ritardo.",
		"{subzone}. Lanterne o no, quando arriverà il buio sarò qui.",
	},
	["time.dusk.subzone_enter.w10.002"] = {
		"entra in {subzone} mentre il crepuscolo si addensa, gli occhi già in cerca di una luce.",
		"raggiunge {subzone} quando il giorno è quasi finito, e le forme intorno si fanno morbide e grigie.",
	},
	["time.night.landmark.w10.001"] = {
		"{landmark}, o la sua sagoma scura. Domani tornerà un posto; per ora è un profilo con le sue opinioni.",
		"{landmark}. Di notte anche un luogo conosciuto sembra preso in prestito, come se i padroni potessero tornare da un momento all'altro.",
		"{landmark} a quest'ora. Se c'è una luce accesa qui intorno, vado verso quella.",
	},
	["time.night.muse.w10.001"] = {
		"Di notte mi fido più delle orecchie che degli occhi. Se lo sono guadagnato: gli occhi continuano a inventare.",
		"Il buio in fondo non nasconde granché. Mi costringe solo a fare la fatica di indovinare.",
		"Notte, e ogni suono arriva senza una faccia. Gliela metto io, quasi sempre sbagliata.",
	},
	["time.night.muse.w10.002"] = {
		"Il sonno continua a chiedere, e io continuo a rispondere più tardi. Una di queste notti smetterà di chiedere.",
		"A quest'ora ogni creatura sensata dorme. Io non ho mai preteso di esserlo.",
		"Il mio corpo ha votato per il letto ore fa. Il resto di me sta ancora contando le schede.",
	},
	["time.night.muse.w10.003"] = {
		"In ogni città qualche finestra resta accesa tutta la notte. Dietro ognuna c'è qualcuno che aspetta, o che non riesce a smettere di pensare.",
		"La notte è lunga per chi ha qualcuno che manca. L'ho sentito dire a ogni focolare, dalle montagne alla costa.",
		"Di notte gli assenti vengono a sederti accanto. Non dicono granché. Non ne hanno bisogno.",
	},
	["time.night.muse.w10.004"] = {
		"Buio come dentro uno stivale. Occhio a dove metti i piedi, e anche ai miei.",
		"Non vedo niente. Benissimo. Spero che non ci veda niente nemmeno il resto.",
		"Che silenzio, qui fuori. Troppo silenzio, come dicono i cattivi narratori. E di solito hanno ragione, proprio i cattivi.",
	},
	["time.night.muse.w10.005"] = {
		"resta immobile al buio per un po', lasciando che gli occhi trovino quel poco che la notte concede.",
		"rallenta il passo nel buio e posa ogni piede con cura, come se la terra stessa dormisse.",
		"si alza il bavero contro il freddo della notte e prosegue senza fare rumore, come l'ora stessa.",
	},
	["time.night.muse.w10.006"] = {
		"A quest'ora c'è sempre qualcuno di guardia: su un muro, a un cancello, accanto a un fuoco. Ci penso, e il buio mi sembra meno vuoto.",
		"Il turno di notte è il lavoro più solitario che esista. Ogni guardia che ho conosciuto dice così, e nessuna lo cambierebbe.",
		"Di notte, chi resta sveglio risponde di tutti gli altri. È un peso grosso da portare in silenzio.",
	},
	["time.night.muse.w10.007"] = {
		"A quest'ora il freddo sale dalla terra. Trova prima le ginocchia, poi la pazienza.",
		"Aria di notte, tagliente abbastanza da svegliarmi meglio di qualsiasi intruglio. Forse più tardi ne sarò {g:grato|grata}.",
		"Di notte il calore se ne va dalle cose: le pietre, l'acqua, il ferro di una fibbia. Solo i vivi si tengono stretto il loro.",
	},
	["time.night.muse.w10.008"] = {
		"La notte è più vecchia di qualsiasi regno. Ogni popolo vissuto ha dovuto farci pace, in un modo o nell'altro.",
		"Tutto ciò che il mondo ha dimenticato di giorno torna di notte, a vedere se qualcuno ascolta ancora.",
		"La notte appartiene a cose che c'erano prima di noi. Noi la prendiamo in prestito, e pure male.",
	},
	["time.night.muse.w10.009"] = {
		"Piano. Là fuori c'è solo il buio, e il buio non ha mai fatto male a nessuno. È quello che c'è dentro.",
		"Ore silenziose. Le migliori per pensare, le peggiori per camminare.",
		"Poco da vedere. Molto da sentire. Mi accontento.",
	},
	["time.night.muse.w10.010"] = {
		"Cielo limpido e più stelle di quante se ne possano contare. Ci provo lo stesso, perdo il segno e ricomincio.",
		"Stanotte ci sono tutte, le stelle. Qualunque altra cosa vada storta, loro agli appuntamenti non mancano.",
		"Sotto tutte queste stelle le mie preoccupazioni sembrano quello che sono: piccole, e quasi tutte mie.",
	},
	["time.night.subzone_enter.w10.001"] = {
		"{subzone}, all'ora in cui ogni sagoma potrebbe essere qualcosa. Vado piano.",
		"{subzone} al buio. Com'è fatto lo scoprirò domani; stanotte scoprirò che rumori fa.",
		"{subzone}. Di notte conosco un posto prima con i piedi e con le orecchie, e non mi fido di nessuno dei due.",
	},
	["time.night.subzone_enter.w10.002"] = {
		"entra in {subzone} in silenzio, una figura di cui la notte quasi non si accorge.",
		"scivola in {subzone} approfittando del buio, posando ogni passo con cura.",
		"raggiunge {subzone} nel cuore della notte, e lascia che la quiete si richiuda alle sue spalle.",
	},
	["time.night.subzone_enter.w10.003"] = {
		"{subzone}. Un bel posto, immagino. Saprò dire qualcosa quando farà giorno.",
		"{subzone}, a quest'ora. Chi ci vive dorme, e fa bene.",
	},
	["time.night.subzone_enter.w10.004"] = {
		"{subzone} di notte. I luoghi sono più sinceri al buio: smettono di fingersi indaffarati.",
		"{subzone}. Senza la luce del giorno addosso, un posto mostra le ossa. Questo ha ossa interessanti.",
	},
	["weather.clear.landmark.w10.001"] = {
		"{landmark}, ben in vista sotto un cielo aperto. Non ha niente di nascosto; lo leggo come un avviso inchiodato a una porta.",
		"{landmark}. Con un'aria così limpida ne distinguo ogni dettaglio già dal sentiero.",
	},
	["weather.clear.landmark.w10.002"] = {
		"si ferma a osservare {landmark}, ogni suo contorno netto nell'aria pulita.",
		"esamina {landmark} senza niente nell'aria ad addolcirlo, e annuisce come se avesse superato un'ispezione tutta sua.",
	},
	["weather.clear.muse.w10.001"] = {
		"Un'aria così pulita porta i suoni lontano. Un martello sull'incudine, un cane, due che mercanteggiano sul prezzo: sento gli affari di mezza campagna.",
		"Con il cielo sgombro i suoni viaggiano. Qualcuno, lontano, sta spaccando legna, e potrei contare i colpi.",
		"L'aria tersa avvicina la distanza all'orecchio. Un grido, una campana, una ruota di carro che stride: niente è vicino, tutto si sente chiaro.",
	},
	["weather.clear.muse.w10.002"] = {
		"Neanche una nuvola. Se adesso mi perdo, posso prendermela solo con i miei piedi.",
		"Stivali asciutti, zaino asciutto, tutto asciutto. Quasi non so di cosa lamentarmi.",
		"Bel tempo. Il che vuol dire che anche tutti i briganti delle strade sono fuori a goderselo.",
	},
	["weather.clear.muse.w10.003"] = {
		"approfitta del tempo asciutto per stendere una coperta umida su una roccia e lasciarla all'aria.",
		"controlla cinghie e fibbie finché il tempo è clemente, come fanno i viaggiatori accorti quando non gocciola niente.",
		"si ferma a togliersi un sassolino dallo stivale, e indugia un po' più del necessario, visto che il terreno è abbastanza asciutto da sedercisi.",
	},
	["weather.clear.muse.w10.004"] = {
		"Nemmeno una nuvola a cui dare la colpa del mio umore. Alla pioggia avrei potuto darla. Un cielo vuoto mi lascia {g:solo|sola} con lui.",
		"Il brutto tempo fa da alibi a un cuore cupo. Sotto un cielo così pulito, la malinconia è soltanto mia.",
	},
	["weather.clear.muse.w10.005"] = {
		"Nessuna pioggia ad ammorbidire il terreno, e così la strada conserva ogni segno: impronte di stivali, di zoccoli, il lungo graffio di un carro.",
		"Dal cielo non cade niente che cancelli una pista. La strada ricorda chi è passato di recente meglio di qualunque guardia alla porta.",
		"Con un tempo così asciutto le tracce restano. Chi mi seguisse leggerebbe il mio cammino come un cartello; meglio che nessuno mi segua.",
	},
	["weather.clear.muse.w10.006"] = {
		"Con un tempo così, chiunque stia in alto mi vede arrivare da una lega. Il cielo sereno vale per tutti e due.",
		"Aria pulita e vista lunga. Buona per scorgere i guai, e altrettanto buona perché i guai scorgano me.",
		"Nell'aria non c'è niente dietro cui nascondersi. Tengo il terreno basso e i margini delle cose, per abitudine.",
	},
	["weather.clear.muse.w10.007"] = {
		"Cielo vuoto, strada asciutta. Qualcuno se lo goda al posto mio; io lavoro.",
		"Tempo splendido. Lo ammirerò come si deve quando avrò finito il lavoro.",
	},
	["weather.clear.muse.w10.008"] = {
		"Niente pioggia da cui ripararsi, e allora escono tutti: uccelli in alto, bestie allo scoperto. Il bel tempo svuota ogni tana.",
		"Senza intemperie da cui ripararsi, la natura selvatica si lascia vedere. Perfino gli avvoltoi volteggiano più in alto.",
		"Aria asciutta, e le bestie del posto si muovono libere, senza fretta. Riconoscono un tempo clemente meglio di qualunque almanacco.",
	},
	["weather.clear.muse.w10.009"] = {
		"Niente che mi cada addosso, solo la strada da combattere. Eppure le mie gambe la trovano lunga lo stesso.",
		"Tempo perfetto per camminare, direbbero. I miei piedi vorrebbero scambiare due parole con chi lo dice.",
		"Il bel tempo toglie ogni scusa per fermarsi, e il mio corpo continua a inventarne di nuove.",
	},
	["weather.clear.muse.w10.010"] = {
		"Col tempo sereno la terra mostra tutto il suo disegno: dove scorre l'acqua, dove si incrociano i sentieri, dove ci si accamperebbe in caso di bisogno. La leggo come una mappa fresca d'inchiostro.",
		"L'aria limpida fa del paese una lezione. Qui il torrente piega, là il sentiero sale, laggiù il terreno si fa molle. Imparo più in un'ora così che in una settimana di nebbia.",
		"In un'aria così niente confonde i contorni. Segno a mente i valichi e l'acqua, nel caso il tempo cambi e debba ritrovarli alla cieca.",
	},
	["weather.clear.muse.w10.011"] = {
		"si ferma su un'altura a guardare il paese aperto in ogni direzione, e si prende un momento per scegliere il prossimo tratto di strada.",
		"si volta piano tutt'intorno, abbracciando con lo sguardo la campagna sgombra da ogni lato prima di scegliere una direzione.",
		"prosegue con passo lungo e tranquillo, sotto un cielo aperto che non chiede niente.",
	},
	["weather.clear.subzone_enter.w10.001"] = {
		"{subzone}. Terreno asciutto sotto i piedi e niente sopra la testa. Lo prendo come un buon inizio.",
		"{subzone}, e un'aria così pulita che se ne sente il sapore. Comunque sia il posto, lo incontrerò con gli stivali asciutti.",
		"Dentro {subzone} sotto un cielo vuoto. Qui non si nasconde nessuno, {g:me compreso|me compresa}.",
	},
	["weather.clear.subzone_enter.w10.002"] = {
		"entra in {subzone} con l'aria ben sveglia di chi vede ogni sentiero e ogni avvallamento davanti a sé.",
		"arriva in {subzone} con i piedi asciutti e lo sguardo limpido, e prende le misure del posto senza fretta.",
		"entra in {subzone} lanciando un'occhiata al cielo aperto, come per assicurarsi che abbia intenzione di restare così.",
	},
	["weather.clear.subzone_enter.w10.003"] = {
		"{subzone}. Bel tempo per dare un'occhiata in giro.",
		"{subzone}. Aria limpida. Vediamo un po' che posto sei.",
		"{subzone}. Asciutto e sereno. Bene: non mi andava di arrivare {g:fradicio|fradicia}.",
	},
	["weather.fog.muse.w10.001"] = {
		"Nella nebbia i suoni arrivano dai posti sbagliati. Un uccello alla mia sinistra si rivela alla mia destra, e vicino.",
		"La nebbia piega ogni rumore. Un passo dietro di me, una voce davanti; mi fermo, e si fermano anche loro.",
		"La nebbia rende bugiardo l'orecchio. L'acqua che giurerei scorrere accanto a me è a un tiro di sasso.",
	},
	["weather.fog.muse.w10.002"] = {
		"La mano la vedo. Quasi tutta. Dovrà bastare.",
		"Nebbia. Passo lento, voce alta, e speriamo che là fuori facciano tutti lo stesso.",
	},
	["weather.fog.subzone_enter.w10.001"] = {
		"{subzone}. O almeno così dicono; ne vedo una decina di passi.",
		"{subzone}, un nome nella nebbia. Il resto del posto se ne sta per conto suo.",
		"{subzone}. La nebbia tiene il posto per sé e mi presta solo i prossimi passi.",
	},
	["weather.rain.landmark.w10.001"] = {
		"raggiunge {landmark} con la pioggia che gocciola dal naso, e cerca prima di tutto l'angolo più asciutto.",
		"si ferma davanti a {landmark} sotto la pioggia, e tutto il posto luccica come appena lavato.",
	},
	["weather.rain.muse.w10.001"] = {
		"La pioggia entra prima nello zaino. Poi nel pane, poi nelle bende, poi in quella cosa che più volevo tenere asciutta.",
		"Tutto quello che porto sta imparando a essere bagnato. Le cinghie si sono fatte scure e rigide, e la tela cerata si è arresa da un pezzo.",
		"La pioggia trova le cuciture. Ogni punto del mio equipaggiamento è una porticina, e lei bussa a tutte.",
	},
	["weather.rain.muse.w10.002"] = {
		"Qualcuno è mai riuscito ad accendere un fuoco con questa pioggia? Chiedo per un amico. L'amico sono io.",
		"La buona notizia: niente polvere. La cattiva: tutto il resto.",
		"Ho smesso di cercare di restare {g:asciutto|asciutta}. Adesso cerco solo di restare di buonumore, e va anche peggio.",
	},
	["weather.rain.muse.w10.003"] = {
		"La pioggia copre ogni rumore. Buon per chiunque voglia avvicinarsi di soppiatto; buon per me, se sono {g:più svelto|più svelta}.",
		"Con questa pioggia non sento i miei passi. E nemmeno chi sta là fuori li sente. È un'arma a doppio taglio, e bagnata su entrambi i lati.",
		"Il fruscio della pioggia si mangia i rumori piccoli: un ramoscello, un respiro, una spada che esce dal fodero. Guardo il doppio per compensare.",
	},
	["weather.rain.muse.w10.004"] = {
		"aggira una pozzanghera e mette il piede dritto in un'altra nascosta sotto il fango, e rinuncia agli stivali asciutti con un sospiro.",
		"arranca lungo una strada ridotta a una minestra marrone, e ogni passo si stacca con un risucchio bagnato.",
		"si ferma a vuotare uno stivale dall'acqua, considera la strada che resta e se lo rimette senza il minimo entusiasmo.",
	},
	["weather.rain.muse.w10.005"] = {
		"La pioggia risveglia l'odore di ogni cosa: terra bagnata, foglie schiacciate, legno vecchio, il mio stesso mantello. Per il naso, il mondo alza la voce.",
		"Sotto la pioggia il terreno manda un odore come di qualcosa appena sfornato. Fango, d'accordo, ma fango onesto.",
		"Pietra bagnata, corteccia bagnata, lana bagnata. La pioggia mi ricorda che sotto tutta la sua polvere il mondo ha un odore.",
	},
	["weather.rain.subzone_enter.w10.001"] = {
		"{subzone}, dietro un velo di pioggia. Com'è da asciutto lo scoprirò un'altra volta.",
		"{subzone}. L'acqua cola da ogni bordo. Sotto la pioggia qualunque posto ha l'aria un po' mogia.",
		"{subzone}. La pioggia è arrivata prima di me e si è già messa comoda.",
	},
	["weather.rain.subzone_enter.w10.002"] = {
		"entra in {subzone} sguazzando, con l'acqua che cola dal cappuccio, e cerca con gli occhi qualcosa che possa passare per un riparo.",
		"arriva in {subzone} a testa bassa, leggendo il terreno in cerca di pozzanghere invece che il posto in cerca di cose da vedere.",
		"entra in {subzone} con passo pesante e inzuppato, mentre la pioggia sfuma ogni contorno.",
	},
	["weather.sand.muse.w10.001"] = {
		"La sabbia entra dappertutto: nelle cuciture, nella borraccia, nelle pieghe delle palpebre. Perfino battere le ciglia scricchiola.",
		"La sabbia sibila sul terreno come un sussurro con i denti. Cammino con gli occhi socchiusi e la bocca chiusa del tutto.",
	},
	["weather.snow.muse.w10.001"] = {
		"La neve fresca tiene ogni traccia. Leggo chi è passato prima di me, e chi viene dietro legge me con la stessa facilità.",
		"Neve alla caviglia, e sale. Ogni passo è una piccola trattativa, e la neve ne vince quasi tutte.",
	},
	["weather.storm.muse.w10.001"] = {
		"Il lampo mostra tutta la terra in un colpo, ogni sasso e ogni ramo, e poi se la riprende. Cammino a forza di quegli sprazzi.",
		"In campo aperto, durante un temporale, chiunque è la cosa più alta nei paraggi. Tengo la testa bassa e continuo a camminare.",
		"Il lampo, poi la conta, poi il tuono. La conta si accorcia, e la mia pazienza pure.",
	},
	["weather.storm.muse.w10.002"] = {
		"Che baccano lassù, eh? Qualcuno sta perdendo una lite con il cielo.",
		"Lontano dai crinali. Il cielo sta scegliendo i bersagli.",
	},
	["weather.storm.muse.w10.003"] = {
		"sussulta a uno schianto di tuono, poi finge con grande impegno che fosse solo per sgranchirsi.",
		"si curva contro il vento mentre la tempesta batte la terra, il mantello che schiocca come una bandiera.",
	},
	["weather.storm.subzone_enter.w10.001"] = {
		"{subzone}, a lampi. Non è il posto al suo meglio, e nemmeno io al mio.",
		"{subzone}, tra un tuono e l'altro. Guarderò meglio quando il cielo smetterà di urlare.",
	},
	["muse.w11.body.006"] = {
		"preme il pollice su un punto dolente della spalla e fa una smorfia: eccolo, trovato.",
		"tasta con due dita prudenti un punto sensibile lungo le costole, poi decide di non volerne sapere di più.",
	},
	["muse.w11.body.014"] = {
		"fruga nello zaino in cerca di qualcosa da mangiare e ne tira fuori una mela schiacciata, che andrà benissimo.",
		"rovista nelle borse in cerca di cibo, trova sul fondo un frutto appiattito e lo accoglie con un'alzata di spalle.",
	},
	["muse.w11.body.019"] = {
		"si massaggia la nuca, lavorando su una rigidità che non vuole saperne di andarsene.",
		"piega piano la testa da un lato e dall'altro, a caccia di un torcicollo.",
	},
	["muse.w11.body.028"] = {
		"tira una cinghia che {g:gli|le} morde la spalla e la allenta di un foro, con un grugnito di sollievo.",
		"allenta di un buco una fibbia sul fianco, e si vede che la perdona.",
	},
	["muse.w11.body.041"] = {
		"risistema con grande cura il contenuto delle borse, senza guadagnare un dito di spazio.",
		"sposta roba da una borsa all'altra, come se il problema fosse dove stanno e non quante sono.",
	},
	["muse.w11.body.045"] = {
		"esamina un graffio fresco sull'equipaggiamento con aria acida, già intento a calcolare quanto costerà.",
		"passa il pollice su un nuovo graffio dell'equipaggiamento e sospira come davanti a un debito.",
		"scopre un'ammaccatura nuova sull'equipaggiamento, aggrotta la fronte e la aggiunge a una lunga lista mentale.",
	},
	["muse.w11.body.051"] = {
		"solleva verso la luce un oggetto da poco, valuta se valga la pena portarselo dietro e lo tiene per puro ottimismo.",
		"rigira in mano un ninnolo senza valore, sospira e lo ricaccia in una borsa già stracolma.",
		"medita di buttare qualcosa, esita e lo rimette nella borsa con aria sconfitta.",
	},
	["muse.w11.body.058"] = {
		"sbatte forte le palpebre un paio di volte, come per scrollarsi la stanchezza dagli occhi.",
		"si preme per un momento i palmi sugli occhi, poi riprende.",
		"strizza gli occhi, li spalanca e cerca di sembrare più {g:sveglio|sveglia} di quanto sia.",
	},
	["muse.w11.body.067"] = {
		"si siede di peso, mangia in fretta qualcosa dallo zaino ed è di nuovo in piedi prima che cada l'ultima briciola.",
		"si lascia cadere sul primo posto libero, ingolla un boccone di qualcosa preso dalla borsa e si rialza subito.",
	},
	["muse.w11.body.071"] = {
		"si affloscia per un momento come un sacco posato a terra, poi si raccoglie di nuovo.",
		"si incurva un poco dove si trova, poi se ne accorge e si raddrizza, come se qualcuno l'avesse {g:chiamato|chiamata} per nome.",
	},
	["muse.w11.body.082"] = {
		"srotola una benda macchiata, studia con distacco quel che c'è sotto e ne avvolge una pulita.",
		"annoda una striscia di stoffa pulita attorno all'avambraccio, stringendo il nodo con i denti.",
		"controlla una fasciatura, decide che reggerà ancora un po' e rimbocca il lembo libero.",
	},
	["muse.w11.body.088"] = {
		"serra la mascella, ignora quello che fa male e raddrizza le spalle.",
		"si raddrizza con una piccola smorfia, come se rifiutasse un'offerta dei propri dolori.",
		"scioglie la rigidità del collo, pianta bene i piedi a terra ed è {g:pronto|pronta}.",
	},
	["muse.w11.body.096"] = {
		"rifà un nodo che reggeva benissimo, giusto per sicurezza.",
		"raddoppia un nodo sullo zaino, poi lo raddoppia ancora, e finalmente ha l'aria soddisfatta.",
		"scioglie un laccio e lo riallaccia più stretto, con la cura di chi si aspetta che prima o poi ceda.",
	},
	["muse.w11.body.105"] = {
		"si massaggia un polpaccio con entrambe le mani, piano, sciogliendo un nodo.",
		"siede con i gomiti sulle ginocchia e le mani a penzoloni, aspettando che le gambe smettano di ronzare.",
	},
	["muse.w11.body.112"] = {
		"morde una moneta per saggiarla, come fanno i mercanti, e non ne sa più di prima.",
		"fa scorrere una moneta sulle nocche, la lascia cadere e finge che fosse quello il trucco.",
	},
	["muse.w11.body.119"] = {
		"stappa una fiaschetta, ne annusa il contenuto con profondo sospetto e beve lo stesso.",
		"beve un lungo sorso da una fiaschetta, fa una smorfia e riavvita il tappo con un rispetto cupo.",
	},
	["muse.w11.body.124"] = {
		"lucida una fibbia graffiata contro la manica finché non restituisce un riflesso opaco.",
		"passa uno straccio sull'equipaggiamento con colpi lenti e regolari, senza fretta, come un artigiano.",
	},
	["muse.w11.body.131"] = {
		"risparmia una gamba per qualche passo, poi si ostina a smettere di risparmiarla.",
		"smaltisce camminando una fitta al ginocchio, rifiutandosi di concederle la soddisfazione di zoppicare.",
	},
	["muse.w11.body.137"] = {
		"si dà una pacca sullo stomaco, ascolta e sembra ricevere brutte notizie.",
		"guarda nella sacca dei viveri, poi in alto, poi di nuovo dentro, come sperando che si riempia per pietà.",
		"fruga in cerca di uno spuntino, trova solo briciole e le mangia con dignità.",
	},
	["muse.w11.body.141"] = {
		"appoggia un piede sulla prima cosa a portata e riallaccia lo stivale sopra una caviglia dolorante.",
		"allenta uno stivale che stringeva, muove il piede dentro e lo richiude di un buco più largo.",
	},
	["muse.w11.history.011"] = {
		"disegna qualcosa nell'aria con un dito, come uno stratega che ripassa una battaglia finita da tempo, poi lascia ricadere la mano.",
		"muove una mano nell'aria come per disporre eserciti su un tavolo, e si ferma, come chi ricorda come andò a finire.",
	},
	["muse.w11.history.019"] = {
		"china il capo per un momento, un piccolo inchino a nessuno in particolare, di quelli che si rivolgono ai morti delle vecchie guerre.",
		"si ferma e abbassa appena la testa, come se in qualche luogo stessero leggendo ad alta voce un lungo elenco di caduti.",
	},
	["muse.w11.history.033"] = {
		"studia per un po' il filo consumato della propria arma, come chiedendosi quante vecchie guerre abbia visto lo stesso modello.",
		"rigira l'arma e la guarda per quello che è: un attrezzo semplice, come le migliaia lasciate ad arrugginire sui vecchi campi di battaglia.",
	},
	["muse.w11.history.044"] = {
		"lancia un'occhiata verso nord senza volerlo davvero, come fanno in tanti dagli anni della pestilenza.",
		"guarda per un attimo verso nord, come fa la gente quando nei discorsi salta fuori il Flagello, poi distoglie lo sguardo.",
	},
	["muse.w11.history.053"] = {
		"si raddrizza un poco, come si fa quando salta fuori il nome di un vecchio eroe, poi ha l'aria vagamente imbarazzata.",
		"raddrizza le spalle come sotto lo sguardo di qualche famoso capitano morto da tempo, poi le lascia riposare.",
	},
	["muse.w11.history.059"] = {
		"posa per un momento il palmo a terra, come fa certa gente sui vecchi campi di battaglia, e poi si rialza.",
		"si accovaccia a sfiorare il suolo con due dita, come per salutare chiunque possa giacerci sotto, e si raddrizza.",
	},
	["muse.w11.history.067"] = {
		"lascia cadere le spalle e scuote la testa, come chi soppesa tutte le vecchie guerre insieme e trova la somma troppo pesante.",
		"scuote la testa a nessuno in particolare, con la pazienza di chi ascolta una storia sentita troppe volte e mai digerita.",
	},
	["muse.w11.history.075"] = {
		"si porta una mano alla fronte in un breve saluto a nessuno, di quelli che si rivolgono ai vecchi stendardi che passano.",
		"rivolge all'aria vuota un saluto piccolo e rigido, e poi sembra lievemente {g:sorpreso|sorpresa} di se {g:stesso|stessa}.",
	},
	["muse.w11.history.084"] = {
		"serra la mascella, con la faccia che fa la gente quando il discorso cade sugli anni della pestilenza.",
		"si fa {g:silenzioso|silenziosa} e duro nello sguardo, come chi ricorda certe notizie arrivate un tempo dal nord.",
	},
	["muse.w11.history.091"] = {
		"resta a fissare la lontananza, come se cercasse di immaginare la terra com'era prima che il mondo si spaccasse.",
		"studia l'orizzonte lontano aggrottando la fronte, come chi lo confronta con una mappa molto più vecchia.",
		"resta {g:fermo|ferma} per un po', gli occhi lontanissimi, come chi cerca di vedere com'erano le cose molto prima che qualcuno tenesse il conto.",
	},
	["muse.w11.history.099"] = {
		"muove le labbra senza voce, forse un nome, come per saggiare se abbia ancora un peso.",
		"mormora qualcosa che somiglia a un nome, piano piano, come si nominano quelli che non ci sono più da tanto.",
		"tace un momento, le labbra che si muovono su una parola che non esce.",
	},
	["muse.w11.history.107"] = {
		"stringe una cinghia con uno strattone deciso, come chi per oggi ne ha abbastanza delle vecchie guerre e vuole passare a quel che viene dopo.",
		"si spolvera le mani con energia, come chi chiude un lungo libro di storia e lo rimette sullo scaffale.",
		"fa un breve cenno col capo, come per dare ragione a qualche vecchio cronista, e passa oltre.",
	},
	["muse.w11.history.111"] = {
		"sbuffa piano, come chi sente un racconto eroico da cui hanno tagliato tutte le parti noiose.",
		"alza appena gli occhi al cielo, come davanti a qualche vecchia leggenda diventata troppo grandiosa a forza di raccontarla.",
		"fa un piccolo sorriso asciutto, come chi ascolta qualcuno chiamare gloria quello che fu soprattutto fango.",
	},
	["muse.w11.history.112"] = {
		"solleva un poco il mento, come fa chi decide di mettersi all'altezza di una vecchia storia.",
		"si pianta meglio sulle gambe, come se una vecchia storia {g:gli|le} avesse appena posto una domanda che merita risposta.",
		"annuisce piano tra sé, come chi ha deciso che un vecchio esempio vale la pena di seguirlo.",
	},
	["muse.w11.history.113"] = {
		"abbassa lo sguardo sul terreno come chiedendosi cosa ci sia sepolto sotto, e mette i piedi con un po' più di cura.",
		"struscia il tallone a terra e guarda giù, come se si aspettasse una risposta da qualche vecchio osso.",
		"per un po' cammina con attenzione, come se tutto quel che calpesta potesse essere la storia di qualcuno.",
	},
	["muse.w11.history.114"] = {
		"resta un momento col mento in mano, con tutta l'aria di {g:uno studente|una studentessa} {g:bloccato|bloccata} su un capitolo difficile di storia.",
		"si pulisce piano le mani, come uno studioso che ha appena posato qualcosa di molto vecchio e molto fragile.",
		"aggrotta la fronte, le labbra strette, come chi cerca di mettere in ordine tre vecchie guerre.",
	},
	["muse.w11.history.115"] = {
		"resta così immobile che per un po' potrebbe passare per la statua di un'epoca più antica.",
		"rimane in un lungo silenzio, paziente come un vecchio monumento che nessuno visita più.",
		"osserva un silenzio lungo, di quelli che di solito si riservano alle rovine.",
	},
	["muse.w11.history.129"] = {
		"si massaggia la nuca, come chi si è visto consegnare un libro di storia spessissimo da leggere entro domani.",
		"fa una smorfia a nessuno, la smorfia di un allievo a cui hanno appena detto quante guerre deve imparare a memoria.",
		"si gratta piano la testa, con l'aria di chi ha perso il filo delle dinastie reali tre re fa.",
	},
	["muse.w11.history.130"] = {
		"si ferma e guarda in basso per un momento, come si guarda una pietra il cui nome si è consumato.",
		"indugia sul posto un po' più del necessario, con l'aria paziente di chi rende omaggi che nessuno ha chiesto.",
	},
	["muse.w11.memory.008"] = {
		"si ferma di colpo, come se una parola mezza dimenticata {g:gli|le} avesse battuto sulla spalla, poi scuote la testa e riprende.",
		"apre la bocca per dire un nome, poi la richiude: non ricorda più bene come finisce.",
	},
	["muse.w11.memory.017"] = {
		"si gira per dire qualcosa a qualcuno che non c'è, e lascia le parole dove sono.",
		"si volta a metà, come per confidare un pensiero a una persona che non {g:gli|le} è accanto, e se lo tiene.",
	},
	["muse.w11.memory.025"] = {
		"muove le labbra senza voce, come chi ripassa qualcosa per non perderlo.",
		"ripete qualcosa a mezza voce tre volte, come chi fa un nodo a un pensiero.",
	},
	["muse.w11.memory.034"] = {
		"si tocca una tasca dove ormai non tiene più niente, un'abitudine rimasta senza scopo.",
		"cerca alla cintura qualcosa che non c'è, e non c'è da un pezzo, poi lascia ricadere la mano.",
	},
	["muse.w11.memory.045"] = {
		"traccia una piccola forma sul palmo con un dito, la guarda un momento e chiude la mano sopra.",
		"disegna qualcosa nell'aria con la punta di un dito, forse il profilo di una porta, poi lascia cadere la mano.",
		"sorride a niente in particolare, il sorriso di chi si ricorda una battuta sentita molto lontano da qui.",
	},
	["muse.w11.memory.054"] = {
		"si guarda le mani per un momento, come se sapessero qualcosa che {g:lui|lei} ha dimenticato.",
		"aggrotta la fronte a vuoto, dietro a un pensiero che {g:gli|le} sfugge sempre di un passo.",
		"si immobilizza, poi schiocca le dita, poi sospira: qualunque cosa fosse, è sparita di nuovo.",
	},
	["muse.w11.memory.062"] = {
		"dispone le sue poche cose in fila ordinata, come chi rende suo un angolo per un po'.",
		"liscia con una mano il punto dove sta per sedersi, un piccolo rito per farlo proprio.",
		"si sistema con cura, come se quel posto fosse una stanza in cui tornare.",
	},
	["muse.w11.memory.069"] = {
		"si ferma un momento con lo sguardo lontano di chi conta i giorni all'indietro.",
		"tace per un po', gli occhi persi, le labbra che si muovono appena come leggendo un elenco di nomi.",
		"lascia scivolare lo sguardo oltre tutto ciò che ha vicino, verso qualcosa che solo la memoria può mostrare.",
	},
	["muse.w11.memory.076"] = {
		"rallenta per un passo, come davanti alla porta di una casa che un tempo voleva dire qualcosa.",
		"esita a metà passo, come se qualcuno {g:lo|la} chiamasse con un vecchio nome, poi riprende a camminare.",
		"sussulta a un piccolo rumore, aspettandosi per metà una voce che non può essere quella, e lascia passare il momento.",
	},
	["muse.w11.memory.087"] = {
		"tira fuori dalla tasca un pezzetto di carta, lo rilegge due volte e lo rimette via senza cambiare espressione.",
		"estrae qualcosa di piccolo e consunto, lo guarda come si consulta una mappa e lo rimette al suo posto.",
		"rilegge un biglietto piegato che è stato evidentemente letto molte volte, poi lo ripiega lungo le stesse pieghe stanche.",
	},
	["muse.w11.memory.093"] = {
		"se ne sta un po' col mento sul pugno, del tutto altrove.",
		"posa il mento su una mano e guarda il nulla, come fa chi va a trovare le stanze che ha nella testa.",
		"si siede un po' con i gomiti sulle ginocchia, disegnando cerchi distratti con il pollice, con la testa lontana chilometri.",
	},
	["muse.w11.memory.100"] = {
		"dice a mezza voce una parola sola, forse un nome, e dopo non aggiunge altro.",
		"mormora qualcosa che potrebbe essere un nome, poi serra le labbra come per tenersi dentro il resto.",
	},
	["muse.w11.memory.106"] = {
		"si volta una volta sola, non a lungo, come chi controlla di aver chiuso bene una porta.",
		"si raddrizza, come se posasse qualcosa di pesante che non teneva affatto in mano.",
		"fa un piccolo cenno a nessuno, il cenno di chi accetta di lasciar andare qualcosa.",
	},
	["muse.w11.memory.112"] = {
		"si ferma a guardare qualcosa di piccolo e comune, con l'attenzione morbida di chi ha appena ritrovato un ricordo.",
		"raccoglie un piccolo oggetto qualunque, lo studia come se {g:gli|le} ricordasse qualcosa e lo rimette giù con cura.",
	},
	["muse.w11.memory.119"] = {
		"resta un attimo a capo chino, per un motivo che nessuno saprebbe dire.",
		"china il capo per un momento, un omaggio privato a qualcuno che non è presente.",
	},
	["muse.w11.memory.126"] = {
		"si siede con i piedi raccolti, come si sta nella propria cucina, senza difese per un momento.",
		"allenta una cinghia e si appoggia all'indietro, con la faccia, per un momento, di chi è a casa.",
	},
	["muse.w11.memory.129"] = {
		"conta sottovoce sulle dita: non monete, stavolta, ma giorni.",
		"tiene un conto sulle dita, lo perde, e sembra decidere che comunque è passato abbastanza tempo.",
		"intravede il proprio riflesso in una fibbia lucida e lo studia, come per controllare chi c'è ancora lì dentro.",
	},
	["muse.w11.memory.130"] = {
		"piega qualcosa con cura e se lo infila sotto i vestiti, vicino, come si tiene una cosa che non si può sostituire.",
		"controlla, come per vecchia abitudine, che una certa tasca contenga ancora ciò che deve, e si distende.",
		"posa per un momento la mano aperta su una tasca, come se bastasse sentire cosa c'è dentro.",
	},
	["muse.w11.people.007"] = {
		"alza la mano in un piccolo saluto rivolto a nessuno in particolare, poi sembra vagamente in imbarazzo.",
		"accenna un saluto con la mano, ci ripensa e finge di sistemare una cinghia.",
	},
	["muse.w11.people.018"] = {
		"si volta come per dire qualcosa a qualcuno al suo fianco, poi richiude la bocca.",
		"comincia a dire un pensiero ad alta voce, si ferma a metà e tiene per sé il resto.",
	},
	["muse.w11.people.026"] = {
		"borbotta un prezzo a mezza voce, ci toglie un quarto e annuisce, come se un mercante avesse appena accettato.",
		"prova a bassa voce una contrattazione, facendo entrambe le parti, e sembra perderla.",
	},
	["muse.w11.people.033"] = {
		"mette una moneta in una tasca a parte, separata dalle altre, come fa chi tiene qualcosa da parte per chi ne avrà più bisogno.",
		"separa un solo rame dagli altri, come se appartenesse già a qualcun altro.",
	},
	["muse.w11.people.040"] = {
		"si massaggia la nuca come chi sta rivivendo parola per parola una conversazione imbarazzante.",
		"fa una smorfia appena accennata, con l'aria di chi ricorda cosa ha detto invece di cosa intendeva dire.",
	},
	["muse.w11.people.046"] = {
		"si scosta senza pensarci, lasciando posto a qualcuno che non c'è, e lascia che lo spazio resti vuoto.",
		"lancia un'occhiata di lato, come chi si aspetta una faccia conosciuta, poi torna piano a guardare avanti.",
	},
	["muse.w11.people.050"] = {
		"prova un sorriso cordiale, lo trova un po' rigido e ci lavora finché non calza.",
		"prova un cenno educato del capo rivolto a nessuno, come per esercitarsi in vista del prossimo incontro.",
	},
	["muse.w11.people.056"] = {
		"annuisce una volta, piano, come per dare ragione a qualcuno che non è lì a sentirlo.",
		"fa un breve cenno col capo a una voce del ricordo, come per chiudere una vecchia discussione.",
		"mormora «d'accordo» a nessuno, concedendo un punto segnato tanto tempo fa.",
	},
	["muse.w11.people.062"] = {
		"si tasta in fretta la borsa, come fa chi ha appena sfiorato uno sconosciuto, e si rilassa solo un poco.",
		"controlla che la borsa sia al suo posto, con il riflesso di chiunque sia passato per un mercato.",
	},
	["muse.w11.people.067"] = {
		"sorride appena a una gentilezza ricordata, piccola e privata, e se la tiene per sé.",
		"si addolcisce per un momento, come se {g:gli|le} fosse tornato in mente il buon gesto di uno sconosciuto.",
	},
	["muse.w11.people.073"] = {
		"raddrizza le spalle come fa chi sta per entrare in una stanza piena di sconosciuti.",
		"si drizza e compone il viso in un'espressione calma ed educata, pronta per chiunque arrivi.",
	},
	["muse.w11.people.078"] = {
		"ridacchia per una battuta sentita tanto tempo fa, ancora divertente senza un vero motivo.",
		"ride piano, una volta sola, per qualcosa che nessun altro ha sentito, poi scuote la testa.",
	},
	["muse.w11.people.089"] = {
		"prova a mezza voce delle scuse, aggrotta la fronte per come suonano e ricomincia.",
		"muove le labbra su qualche parola di scusa, poi la accorcia, come se la sincerità venisse meglio con meno parole.",
	},
	["muse.w11.people.096"] = {
		"aggrotta la fronte su qualche vecchio torto, poi lo lascia andare con un piccolo scuotere di testa, senza annunciarlo a nessuno.",
		"lascia cadere un rancore con una scrollata di spalle, come si posa qualcosa di pesante che non valeva la pena portare.",
	},
	["muse.w11.people.102"] = {
		"ripete un nome a mezza voce un paio di volte, come fa chi ha intenzione di ricordarselo.",
		"mormora tra sé un nome due volte, fissandolo come un nodo tirato stretto.",
	},
	["muse.w11.people.108"] = {
		"imita a mezza voce il modo di parlare tronfio di qualcuno, poi ha l'aria di sentirsi un po' in colpa.",
		"fa sottovoce un'imitazione poco caritatevole di qualche sconosciuto pieno di sé, e sorride suo malgrado.",
	},
	["muse.w11.people.117"] = {
		"mette da parte il boccone migliore senza averlo davvero deciso, come se lo tenesse per qualcuno.",
		"spezza un pezzo di qualcosa da mangiare e lo porge per riflesso, poi con un'alzata di spalle se lo mangia da sé.",
	},
	["muse.w11.people.123"] = {
		"sistema l'equipaggiamento con una cura insolita, come se potesse guardare qualcuno il cui giudizio conta.",
		"si scrolla di dosso la polvere peggiore, come fa chi sta per incontrare qualcuno a cui vuole fare buona impressione.",
	},
	["muse.w11.people.129"] = {
		"borbotta qualche parola scelta su un certo tipo di persona, senza dire quale, e sembra {g:sollevato|sollevata}.",
		"alza gli occhi al cielo, con grande scrupolo, al ricordo delle vanterie di qualcuno.",
	},
	["muse.w11.people.134"] = {
		"serra la mascella come chi decide di essere {g:quello saldo|quella salda}, per chiunque ne abbia bisogno.",
		"si raddrizza un poco, con l'aria di chi ha scelto di essere affidabile, oggi.",
	},
	["muse.w11.people.140"] = {
		"si ferma a raccogliere qualcosa che qualcun altro ha perso, si guarda intorno cercando il proprietario e infine lo posa dove sia facile trovarlo.",
		"sposta col piede un sasso fuori posto, una piccola cortesia per chiunque passi dopo.",
	},
	["muse.w11.people.145"] = {
		"conta sulle dita i favori da restituire e quelli da riscuotere, e aggrotta la fronte davanti al saldo.",
		"fa un conto a mezza voce, chi ha dato una mano e chi ne aspetta ancora una, e finisce le dita.",
	},
	["muse.w11.road.006"] = {
		"traccia un percorso sul palmo con un dito, aggrotta la fronte e lo ripassa per un'altra via.",
		"indica una direzione, poi un'altra, e alla fine torna alla prima con un cenno deciso del capo.",
	},
	["muse.w11.road.013"] = {
		"spiega una mappa sgualcita, la gira dal verso giusto, poi dall'altro verso giusto.",
		"studia una mappa a braccio teso, poi la avvicina, come se la distanza potesse cambiare la risposta.",
		"ripiega una mappa lungo pieghe che chiaramente non vuole, e si arrende a metà.",
	},
	["muse.w11.road.022"] = {
		"stringe i lacci di uno stivale, poi dell'altro, e batte un piede a terra per assestarli.",
		"chiude un laccio con un doppio nodo, come si fa prima di una lunga camminata.",
	},
	["muse.w11.road.032"] = {
		"guarda avanti a lungo, come se cercasse di vedere oltre la prossima svolta.",
		"socchiude gli occhi verso la strada da fare, soppesando quanta ne resta.",
	},
	["muse.w11.road.040"] = {
		"esita, gira a sinistra, torna indietro e prende a destra con grande dignità.",
		"fa un lento giro su se {g:stesso|stessa} per orientarsi, poi finge che fosse questo il piano fin dall'inizio.",
	},
	["muse.w11.road.049"] = {
		"allunga il collo per vedere meglio la strada davanti, poi torna giù con un piccolo grugnito.",
		"scruta avanti come se la meta potesse lasciarsi convincere ad avvicinarsi un po'.",
	},
	["muse.w11.road.056"] = {
		"fa qualche passo, si ferma, ne fa qualche altro, come per verificare che le gambe siano d'accordo col piano.",
		"batte i piedi a terra un paio di volte, per svegliarli in vista del cammino.",
	},
	["muse.w11.road.064"] = {
		"sistema lo zaino con un piccolo saltello, come fanno i viaggiatori prima di un lungo tratto.",
		"si assesta lo zaino sulle spalle e parte senza voltarsi.",
		"dà un ultimo strattone alle cinghie dello zaino e si volta verso la strada da fare.",
	},
	["muse.w11.road.072"] = {
		"rallenta, si guarda intorno per orientarsi e fa un piccolo cenno soddisfatto.",
		"si ferma a capire da che parte è cosa, muovendo le labbra senza suono.",
	},
	["muse.w11.road.080"] = {
		"ripete a mezza voce una serie di indicazioni come una lezione imparata a memoria, e s'inceppa sull'ultima svolta.",
		"borbotta «a sinistra, poi a sinistra, poi...» e si interrompe con un'aria profondamente sospettosa.",
	},
	["muse.w11.road.089"] = {
		"si spazzola dalle maniche la polvere del cammino, senza grandi speranze che resti via.",
		"batte gli stivali contro la prima cosa dura che trova per staccarne il fango secco, prima uno, poi l'altro.",
		"si dà qualche pacca sui vestiti, solleva una nuvoletta di viaggio e lascia perdere.",
	},
	["muse.w11.road.097"] = {
		"si ferma sul punto di partire, un piede già rivolto verso la strada da fare.",
		"indugia ancora un momento, come per salutare in silenzio quel posto, poi riparte.",
		"si guarda intorno ancora una volta prima di andare, come chi controlla una stanza per vedere se ha dimenticato qualcosa.",
	},
	["muse.w11.road.105"] = {
		"guarda la strada davanti, poi gli stivali, come per chiedere loro se se la sentono.",
		"rivolge ai piedi un'occhiata lunga e dubbiosa, e alla strada da fare una ancora più lunga.",
	},
	["muse.w11.road.114"] = {
		"fa qualche passo lungo, poi qualcuno corto, cercando il ritmo del cammino.",
		"prende un'andatura sciolta, le braccia che dondolano libere.",
		"si assesta su un passo regolare e senza fretta, di quelli che divorano la distanza senza darlo a vedere.",
	},
	["muse.w11.road.122"] = {
		"fa un cenno del capo verso la strada da fare, come per accordarsi con lei sui termini.",
		"dà due colpetti allo zaino, un piccolo segnale privato che è ora di muoversi.",
		"raddrizza le spalle e parte, come se varcasse una linea che vede solo {g:lui|lei}.",
	},
	["muse.w11.road.136"] = {
		"alza una mano in un piccolo saluto al posto, anche se non c'è nessuno a vederlo.",
		"rivolge al luogo un breve cenno di ringraziamento prima di ripartire, come fanno a volte i viaggiatori.",
	},
	["muse.w11.voices.025"] = {
		"slaccia un borsello, ci sbircia dentro come aspettandosi una sorpresa, e lo richiude senza averne trovate.",
		"apre un borsello, ne studia a lungo il contenuto e lo richiude con un piccolo cenno del capo.",
	},
	["muse.w11.voices.026"] = {
		"guarda a sinistra, poi a destra, poi di nuovo a sinistra, come se il mondo potesse essersi spostato di nascosto.",
		"lancia intorno un'occhiata vagamente sospettosa, come per controllare che tutto sia rimasto dov'era.",
	},
	["muse.w11.voices.027"] = {
		"canticchia qualche battuta di niente in particolare, perde il filo e prosegue in un'altra tonalità.",
		"canterella a bocca chiusa, sempre le stesse quattro note che girano in tondo.",
		"attacca a canticchiare qualcosa, si ferma a pensare come continuava e ci rinuncia con un'alzata di spalle.",
	},
	["muse.w11.voices.028"] = {
		"batte piano un piede, come chi aspetta qualcosa che è in ritardo.",
		"scandisce un ritmo lento e spazientito con la punta di uno stivale.",
	},
	["muse.w11.voices.029"] = {
		"divide le monete in piccole pile sul palmo, perde il conto alla terza e ricomincia da capo.",
		"allinea qualche moneta in ordine di grandezza, ammira un attimo la disposizione e intasca tutto.",
		"batte una moneta contro i denti, decide che il metallo è onesto e la fa sparire in tasca.",
	},
	["muse.w11.voices.030"] = {
		"intreccia le dita e spinge le braccia in avanti, ben tese, finché le nocche non protestano.",
		"si piega da un lato e poi dall'altro, a sciogliere la rigidità del busto.",
	},
	["muse.w11.voices.031"] = {
		"stringe una cinghia di un buco, ci riflette su e la riallenta.",
		"sistema qualcosa alla cintura, poi lo rimette esattamente com'era.",
		"armeggia con una fibbia finché non sta proprio come deve, con l'aria di chi ha risolto un problema.",
	},
	["muse.w11.voices.032"] = {
		"alza il mento e studia i dintorni come chi legge una pagina scritta male.",
		"socchiude gli occhi verso la strada davanti, come se quella {g:gli|le} avesse mancato di rispetto.",
	},
	["muse.w11.voices.033"] = {
		"emette un piccolo verso rassegnato, rivolto a nessuno in particolare.",
		"schiocca la lingua, scuote la testa e lascia correre.",
	},
	["muse.w11.voices.034"] = {
		"si accoscia per un momento, gli avambracci sulle ginocchia, a studiare il nulla.",
		"si abbassa sui talloni e resta così per un po', con lo sguardo lontano.",
	},
	["muse.w11.voices.035"] = {
		"pulisce l'arma con un angolo di stoffa, più per abitudine che per necessità.",
		"gira e rigira l'arma, in cerca di qualche intacco o di una crepa.",
	},
	["muse.w11.voices.036"] = {
		"sorride a qualcosa di suo, e se lo tiene.",
		"ride brevemente di una battuta tutta sua, senza spiegarla a nessuno.",
	},
	["muse.w11.voices.037"] = {
		"svuota una tasca nel palmo: un bottone, un sassolino, un pezzo di spago. Poi rimette tutto a posto.",
		"trova in una tasca qualcosa di dimenticato, lo guarda con la fronte aggrottata e decide di tenerlo ancora un po'.",
	},
	["muse.w11.voices.038"] = {
		"annuisce una volta, con decisione, come se una questione privata fosse appena stata risolta.",
		"fa un piccolo cenno risoluto rivolto a nessuno, e raddrizza le spalle.",
		"serra la mascella e annuisce tra sé, la faccenda ormai decisa.",
	},
	["muse.w11.voices.039"] = {
		"si massaggia la nuca e fa ruotare piano la testa da una parte all'altra.",
		"si strizza un nodo alla base del collo, con una smorfia che somiglia al sollievo.",
	},
	["muse.w11.voices.040"] = {
		"si fa scrocchiare le nocche una per una, poi ha l'aria vagamente colpevole.",
		"preme i palmi l'uno contro l'altro finché le nocche non schioccano, e il rumore sembra {g:piacergli|piacerle}.",
	},
	["muse.w11.voices.067"] = {
		"posa lo zaino, ci fruga fino in fondo, e scopre che la cosa stava nella tasca di sopra fin dall'inizio.",
		"rivolta lo zaino da cima a fondo cercando qualcosa, poi si accorge di averlo già in mano.",
		"fruga nello zaino con crescente irritazione, borbotta qualcosa e rinuncia a mani vuote.",
	},
	["muse.w11.voices.068"] = {
		"si raddrizza, si sistema i vestiti e cerca di avere l'aria di chi ha un piano.",
		"si spazzola via di dosso lo sporco peggiore, e per il resto si arrende.",
	},
	["muse.w11.voices.069"] = {
		"muove le labbra su qualche numero, la fronte aggrottata, come se un conto si rifiutasse di tornare.",
		"fa un calcolo a mente, e il risultato non è per niente quello sperato.",
	},
	["muse.w11.voices.070"] = {
		"borbotta tra sé un commento continuo, per niente lusinghiero.",
		"brontola piano per qualcosa, a metà perde interesse e smette.",
	},
	["muse.w11.voices.071"] = {
		"esamina un graffio sul dorso della mano, decide che sopravviverà e se ne dimentica.",
		"gira verso la luce un graffio recente, lo giudica poca cosa e passa oltre.",
	},
	["muse.w11.voices.072"] = {
		"fa roteare gli occhi con tanta forza che quasi si sente.",
		"fa roteare gli occhi senza un motivo preciso, e sembra trarne sollievo.",
	},
	["muse.w11.voices.073"] = {
		"strofina una macchia ostinata sull'equipaggiamento con il palmo, finché non si arrende.",
		"sfrega una macchia sulla manica, la peggiora e smette.",
	},
	["muse.w11.voices.074"] = {
		"si siede sui talloni e passa in rassegna l'equipaggiamento sparpagliato intorno, come un generale davanti a una mappa.",
		"dispone l'equipaggiamento in una fila ordinata, lo esamina e lo rimette via tutto in un ordine diverso.",
		"divide le sue cose in mucchietti che, a giudicare dall'aria, si chiamano utile, forse e perché.",
	},
	["muse.w11.voices.075"] = {
		"lancia una rapida occhiata alle spalle, non vede niente e la trattiene un istante in più, per sicurezza.",
		"controlla alle proprie spalle, due volte, per una ragione che non saprebbe spiegare.",
	},
	["muse.w11.voices.076"] = {
		"alza il mento e fissa un punto lontano, con l'aria di chi non si lascia scomporre da niente.",
		"si erge in tutta la sua altezza e compone il viso in qualcosa che somiglia alla sicurezza.",
	},
	["muse.w11.voices.077"] = {
		"muove le labbra senza voce, come se provasse qualcosa che un giorno intende dire a qualcuno.",
		"prova in silenzio una conversazione, le labbra che si muovono, e scuote la testa alle proprie battute.",
	},
	["muse.w11.voices.078"] = {
		"scuote le braccia e saltella leggero sul posto, come chi sta per entrare in un'arena.",
		"fa ruotare il collo, scioglie le mani e pianta bene i piedi.",
	},
	["muse.w11.voices.079"] = {
		"incide un piccolo segno sull'equipaggiamento con l'unghia, come per tenere un conto tutto suo.",
		"aggiunge un'altra tacca a un conto che sembra capire solo {g:lui|lei}.",
	},
	["muse.w11.voices.080"] = {
		"fa una smorfia rivolta al nulla, poi la cancella prima che qualcuno la veda.",
		"storce la bocca in una smorfia acida, e la lascia svanire piano.",
	},
	["muse.w11.voices.081"] = {
		"si mordicchia l'interno della guancia, mentre rimugina su qualcosa.",
		"aggrotta la fronte verso un punto indefinito, masticando un problema.",
	},
	["muse.w11.voices.082"] = {
		"sposta il peso da un piede all'altro, con l'irrequietezza di chi non sa stare fermo.",
		"non riesce a stare {g:fermo|ferma}: tormenta una cinghia, una tasca, di nuovo la cinghia.",
	},
	["muse.w11.voices.083"] = {
		"china il capo per un momento, come per qualcuno che non c'è.",
		"abbassa lo sguardo e resta un attimo in un silenzio che sembra appartenere a qualcun altro.",
	},
	["muse.w11.voices.084"] = {
		"appoggia il mento sul pugno e fissa il vuoto, nel mezzo di una discussione con se {g:stesso|stessa}.",
		"si regge il mento con una mano e lascia che i pensieri se ne vadano a spasso senza di {g:lui|lei}.",
	},
	["muse.w11.voices.115"] = {
		"socchiude gli occhi verso qualcosa in lontananza, decide che non ne vale la pena e distoglie lo sguardo.",
		"fissa con insistenza un punto lontano, poi alza le spalle, per niente {g:convinto|convinta}.",
	},
	["muse.w11.voices.116"] = {
		"alza le spalle verso nessuno, come chi concede un punto in una discussione che nessun altro ha sentito.",
		"fa spallucce, non dice niente e lascia andare qualunque cosa fosse.",
	},
	["muse.w11.voices.117"] = {
		"si gratta la testa e aggrotta la fronte, come davanti a un indovinello.",
		"si massaggia le tempie con due dita, piano, come chi ha un pensiero che non vuole posarsi.",
	},
	["muse.w11.voices.118"] = {
		"intona a bocca chiusa qualcosa di basso e senza parole, che sale e scende come una culla che dondola.",
		"emette un ronzio basso e stonato, il genere di suono che fa compagnia.",
	},
	["muse.w11.voices.119"] = {
		"tiene in equilibrio una moneta sul dorso di un dito, e la guarda scivolare giù nel palmo.",
		"fa girare una moneta sul palmo e la guarda rallentare fino a fermarsi.",
	},
	["muse.w11.voices.120"] = {
		"sbatte piano le palpebre, come chi riemerge da un sogno a occhi aperti.",
		"ha un piccolo sussulto, come destandosi da un pensiero, e si guarda intorno per vedere se qualcuno se n'è accorto.",
	},
	["muse.w11.voices.121"] = {
		"si strofina forte gli occhi con il palmo delle mani, poi sbatte le palpebre finché il mondo non torna a fuoco.",
		"si stringe la radice del naso e resta così per un lungo momento.",
	},
	["muse.w11.voices.122"] = {
		"si siede di peso, i gomiti sulle ginocchia, e lascia ciondolare la testa per un po'.",
		"si lascia cadere sulla prima superficie piana a portata e resta lì, le mani a penzoloni tra le ginocchia.",
		"si mette giù con un grugnito e dà a ogni muscolo il permesso di fermarsi.",
	},
	["muse.w11.voices.123"] = {
		"si avvolge una striscia di stoffa sulle nocche, stretta, e prova la presa.",
		"riavvolge con calma la fascia consunta sull'impugnatura dell'arma.",
	},
	["muse.w11.voices.124"] = {
		"dà una rapida occhiata all'equipaggiamento: c'è tutto, è tutto allacciato, è tutto lercio.",
		"si dà un'occhiata veloce: è tutto al suo posto, anche se non proprio presentabile.",
	},
	["muse.w11.voices.125"] = {
		"fa un sorriso storto, come davanti a uno scherzo che il mondo {g:gli|le} ha giocato.",
		"fa una breve risata amara e scuote la testa.",
	},
	["muse.w11.voices.126"] = {
		"fulmina con lo sguardo la strada davanti, come se fosse in debito con {g:lui|lei}.",
		"rivolge al cammino davanti un'occhiata lunga e poco amichevole.",
	},
	["muse.w11.voices.127"] = {
		"traccia nell'aria una linea lenta con un dito, seguendo un percorso che vede solo {g:lui|lei}.",
		"indica vagamente una direzione, poi un'altra, poi abbassa la mano, senza aver deciso.",
	},
	["muse.w11.voices.128"] = {
		"dà un calcio a un sassolino e lo segue per qualche passo, come in un gioco da soli.",
		"spinge distrattamente un sassolino con la punta dello stivale.",
	},
	["muse.w11.voices.129"] = {
		"annuisce lentamente, d'accordo con una voce interiore, poi scuote la testa, di nuovo in disaccordo.",
		"discute qualcosa in silenzio, le sopracciglia che salgono e scendono, e sembra avere la peggio.",
	},
	["muse.w11.voices.130"] = {
		"raddrizza una cinghia storta, poi quella accanto, poi tutte quante, in un improvviso accesso d'ordine.",
		"si rassetta con gesti rapidi ed efficienti, come se fosse imminente un'ispezione.",
	},
	["muse.w11.voices.131"] = {
		"resta immobile per un momento, la mascella contratta, aspettando che qualcosa dentro si posi.",
		"chiude gli occhi per un istante, e li riapre su un viso più duro di prima.",
	},
	["muse.w11.voices.132"] = {
		"sorride all'improvviso, largo e senza pentimenti, a qualcosa che nessun altro vede.",
		"si apre in un ghigno, di quelli che promettono guai a qualcuno.",
	},
	["muse.w11.voices.133"] = {
		"batte un piede, poi l'altro, per sistemarsi bene negli stivali.",
		"dondola dal tallone alla punta e ritorno, assestando il peso.",
	},
	["muse.w11.voices.134"] = {
		"alza un boccale immaginario verso nessuno, e brinda.",
		"fa un piccolo brindisi a mano vuota, a chiunque stia guardando.",
	},
	["muse.w11.voices.141"] = {
		"si ferma, come se un nome {g:gli|le} fosse arrivato sulla punta della lingua, e lo lascia andare senza dirlo.",
		"fa per dire qualcosa, ci ripensa e richiude la bocca.",
		"apre la bocca per parlare a qualcuno che non c'è, e la richiude con un piccolo sorriso storto.",
	},
	["muse.w11.voices.142"] = {
		"stringe la presa sull'arma finché le nocche non sporgono.",
		"aggiusta la presa sull'arma, finché non sta proprio come deve.",
		"solleva l'arma, ne studia l'equilibrio con la fronte aggrottata e sposta la presa di un dito.",
	},
	["muse.w11.voices.143"] = {
		"alza una mano in segno di saluto verso nessuno in particolare, così, per sicurezza.",
		"fa un cenno cortese al nulla, come si fa con uno sconosciuto per strada.",
		"accenna un saluto con la mano in nessuna direzione precisa, e sembra un po' in imbarazzo.",
	},
	["muse.w11.voices.144"] = {
		"lascia cadere le spalle, poi le rialza a forza di volontà.",
		"si affloscia per un attimo, poi si riprende e si raddrizza.",
		"si incurva a vista d'occhio, se ne accorge e si corregge con uno sforzo.",
	},
	["muse.w11.wonder.007"] = {
		"si sfrega i polpastrelli, come per saggiare nell'aria una carica leggerissima.",
		"alza una mano come per sentire da che parte soffi qualcosa di invisibile, poi la lascia ricadere.",
		"inclina la testa e aggrotta la fronte, come chi ha appena sentito una nota che nessuno ha suonato.",
	},
	["muse.w11.wonder.032"] = {
		"si ferma per lasciare che uno scarabeo finisca la sua traversata, con grande pazienza.",
		"segue i progressi di una bestiolina che striscia con aria sinceramente interessata, poi la scavalca con cura.",
		"si accovaccia a guardare una creaturina che bada ai fatti suoi, e non sembra avere nessuna fretta di badare ai propri.",
	},
	["muse.w11.wonder.041"] = {
		"si volta di scatto a guardare il nulla alle proprie spalle, poi ride piano di sé.",
		"trasale a un rumore minuscolo, poi scuote la testa con un mezzo sorriso imbarazzato.",
	},
	["muse.w11.wonder.052"] = {
		"raddrizza le spalle come chi sta per entrare in un'acqua gelida, e va avanti.",
		"serra la mascella, fa un cenno secco a nessuno e avanza di un passo.",
		"si ferma sull'orlo di qualcosa che vede solo {g:lui|lei}, poi prende la sua decisione.",
	},
	["muse.w11.wonder.067"] = {
		"lancia una moneta, la riprende e la mette via senza guardare quale faccia sia uscita.",
		"fa roteare una moneta sulle nocche, osservandola con l'aria di chi le sta facendo una domanda.",
		"lancia una moneta, dà un'occhiata al risultato e alza le spalle, come se avesse solo confermato qualcosa.",
	},
	["muse.w11.wonder.068"] = {
		"si ferma, le labbra che scorrono mute su poche parole, poi riprende come se niente fosse.",
		"china il capo per il tempo di qualche parola sommessa, e lo rialza senza spiegazioni.",
	},
	["muse.w11.wonder.069"] = {
		"si stacca un riccio di bardana dalla manica, ne studia gli uncini minuscoli con interesse e lo getta via con un colpetto.",
		"tira fuori da una piega della stoffa un seme vagabondo, lo gira alla luce e invece di buttarlo se lo mette via.",
	},
	["muse.w11.wonder.070"] = {
		"osserva un granello di polvere che gira piano nell'aria, come se fosse la cosa più interessante del mondo.",
		"segue con gli occhi qualcosa di minuscolo che fluttua nell'aria, finché non sparisce.",
	},
	["muse.w11.wonder.082"] = {
		"tende il palmo aperto come per invitare qualcosa di piccolo e alato a posarsi, e sorride quando non arriva niente.",
		"porge all'aria una mano distesa, immobile, come chi aspetta che una creatura timida si avvicini.",
		"tiene una mano aperta e ferma per un po', paziente come un ramo, poi la abbassa con una piccola alzata di spalle.",
	},
	["muse.w11.wonder.083"] = {
		"studia a lungo le linee del proprio palmo, come se potessero essere cambiate.",
		"gira la mano da una parte e dall'altra, leggendone le pieghe come se nel frattempo qualcuno ci avesse scritto sopra.",
	},
	["muse.w11.wonder.084"] = {
		"bussa due volte sul proprio zaino, rapido e furtivo, come si fa per scaramanzia.",
		"batte tre volte una nocca contro una fibbia, poi si guarda intorno sperando che nessuno abbia visto.",
		"incrocia due dita dietro la schiena, con molta discrezione, come se la fortuna stesse guardando.",
	},
	["muse.w11.wonder.085"] = {
		"alza gli occhi per un istante verso niente di preciso, con l'aria di chi fa una domanda.",
		"solleva lo sguardo per un attimo, come per controllare se lassù qualcuno stia prestando attenzione.",
	},
	["muse.w11.wonder.086"] = {
		"disegna nell'aria un piccolo cerchio con un dito, distrattamente, poi sembra accorgersene e si ferma.",
		"traccia nell'aria una forma qualunque con la punta del dito, e la lascia incompiuta.",
	},
	["muse.w11.wonder.087"] = {
		"si immobilizza, come se qualcuno avesse pronunciato il suo nome da molto lontano, poi scaccia la sensazione.",
		"si blocca di colpo e volta la testa verso un suono che non c'è più.",
		"resta immobile per mezzo istante, ascoltando il silenzio come se avesse appena detto qualcosa.",
	},
	["muse.w11.wonder.088"] = {
		"appoggia per un momento il palmo a terra, come per controllare che ci sia ancora.",
		"si accovaccia e preme una mano sul suolo, a capo chino, come se ascoltasse attraverso di esso.",
	},
	["muse.w11.wonder.089"] = {
		"chiude qualcosa di minuscolo nel cavo delle mani, lo osserva da vicino, poi le apre e lo lascia andare.",
		"toglie dalla strada una bestiolina che striscia e la posa altrove con una cura sorprendente.",
	},
	["muse.w11.wonder.090"] = {
		"conta piano fino a tre muovendo appena le labbra, e al tre si muove.",
		"fa un cenno secco a se {g:stesso|stessa}, il piccolo assenso privato di una decisione che non verrà ridiscussa.",
	},
	["muse.w11.wonder.091"] = {
		"aggrotta la fronte guardando la propria ombra, come se avesse appena fatto qualcosa che non doveva.",
		"lancia un'occhiata alla propria sagoma scura per terra, poi altrove, con l'aria di chi tiene d'occhio un compagno poco affidabile.",
	},
	["muse.w11.wonder.092"] = {
		"fa un piccolo inchino ironico a nessuno in particolare, come per ringraziare la fortuna dell'ultimo tratto.",
		"si tocca un cappello immaginario rivolto al mondo intero, per motivi che tiene per sé.",
	},
}, "base_exploration")
