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
}, "base_exploration")
