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
}, "base_exploration")
