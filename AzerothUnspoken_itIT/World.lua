-- Testi in italiano del mondo che il client descrive: meteo, alba e tramonto, sottozone e punti di riferimento, missioni,
-- reputazione, locande e voli (R3, #92 #93 #94 #95 #121). Le regole stanno in Data/RegistryWorld.lua.
-- Una frase dice solo ciò che la sua condizione garantisce: la pioggia solo con `weather = "rain"`, un volo solo con
-- `onFlight`. Nessuna lore inventata: sono umori della strada, mai fatti su un luogo.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	---------------------------------------------------------------------------
	-- il meteo cambia
	---------------------------------------------------------------------------
	["world.rain.01"] = {
		"Cadono le prime gocce. Perfino la polvere della strada sembra sollevata.",
		"Pioggia sulla strada. Lavi pure ciò che vuole; io continuo a camminare.",
		{ "Piove. Di quella pioggia che comincia in un sussurro e intende restare.", depth = "natural" },
		{ "Il cielo si è ricordato di saper piangere. Cammino sotto di lui e non ne chiedo il motivo.", depth = "elevated" },
	},
	["world.rain.02"] = {
		"Pioggia. Ma certo. La strada stava diventando troppo comoda.",
		"Un po' d'acqua non ha mai fatto male a nessuno. Un bel po', invece, è un'altra storia.",
		{ "Ecco, almeno il fango avrà finalmente qualcosa di cui parlare.", depth = "natural" },
	},
	["world.rain.e"] = {
		"tira avanti il cappuccio mentre comincia a piovere, e la strada si scurisce sotto la pioggia, una goccia alla volta.",
		"ascolta la pioggia che trova il suo ritmo sulle foglie, e non ha fretta di rispondere.",
		{ "alza il viso verso la prima pioggia e, per un istante, non dice nulla.", depth = "elevated" },
	},
	["world.snow.01"] = {
		"Neve. Il mondo si fa più silenzioso, e sento i miei pensieri meglio di quanto vorrei.",
		"Sono scesi i primi fiocchi. Tutto ciò che di aspro ha la terra viene perdonato, piano.",
		{ "Neve. Il fiato esce bianco, e il giorno rallenta un poco.", depth = "natural" },
	},
	["world.snow.e"] = {
		"guarda i primi fiocchi posarsi su una manica senza sciogliersi.",
		"si ferma a vedere la neve chiudersi sulle orme lasciate dietro, uno strato soffice alla volta.",
		{ "prosegue nel bianco che cade, dove ogni suono viene accolto e nessuno restituito.", depth = "elevated" },
	},
	["world.storm.01"] = {
		"Il tuono rotola sulla terra. Che il cielo gridi pure: noi abbiamo gridato più forte.",
		"Un temporale, dunque. Bene. Ero {g:stanco|stanca} di un cielo quieto che non prometteva nulla.",
		{ "Quello è un tuono, ed è vicino. Meglio non fermarsi.", depth = "natural" },
	},
	["world.storm.e"] = {
		"si ferma quando il tuono si spezza in alto, e conta i battiti del cuore fino al prossimo.",
		"guarda le nubi raccogliere il loro peso sopra la strada, e serra la mascella contro ciò che viene.",
		{ "sta sotto un cielo che ha cominciato a parlare in tuoni, e gli risponde solo con uno sguardo fermo.", depth = "elevated" },
	},
	["world.sand.e"] = {
		"volta le spalle al vento mentre la sabbia si alza lungo la strada, e aspetta che passi.",
		"si tira un panno su bocca e naso, e va avanti con gli occhi socchiusi contro i granelli.",
	},
	["world.fog.01"] = {
		"La nebbia toglie gli spigoli a ogni cosa. Anche i miei dubbi sembrano più morbidi.",
		"Una quiete grigia sulla strada. Qualunque cosa ci aspetti, resterà dov'è finché non sarò abbastanza {g:vicino|vicina} da vederla.",
		{ "Nebbia. Posso fare cento passi senza incontrare altro che {g:me stesso|me stessa}.", depth = "natural" },
	},
	["world.clear.01"] = {
		"Il cielo si è liberato del maltempo. La luce torna a tutto ciò che aveva lasciato.",
		"L'aria è di nuovo pulita. Un nuovo inizio, se lo voglio.",
		{ "Cielo sereno. Per una volta, nulla sopra di me ha un'opinione.", depth = "natural" },
	},
	["world.clear.e"] = {
		"alza lo sguardo mentre le nubi si diradano, e lascia che la luce cada sul viso.",
		"guarda l'ultimo grigio staccarsi dalle colline, e scrolla l'umido dalle spalle.",
	},

	---------------------------------------------------------------------------
	-- arrivare in un luogo con il tempo che ha
	---------------------------------------------------------------------------
	["world.zone.rain"] = {
		"Arrivo sotto la pioggia. Qualunque cosa sia questo posto, mi mostra prima il suo volto bagnato.",
		"La pioggia mi accoglie, e io ci entro. Un benvenuto onesto, per essere un benvenuto.",
		{ "Piove anche qui. Comincio a pensare che mi segua.", depth = "natural" },
	},
	["world.zone.rain.first"] = {
		"La prima volta qui, e il cielo piange per l'occasione. Ricorderò questo posto bagnato.",
		"Non ho mai calpestato questa terra, e la pioggia è la prima a darmi il benvenuto. La prendo come una cortesia.",
		{ "Terra straniera, strada bagnata. Che l'acqua porti dentro il mio nome, visto che nessuno lo conosce.", depth = "elevated" },
	},
	["world.zone.snow"] = {
		"arriva con la neve che si posa sulle spalle, e prende la quiete bianca del luogo come un benvenuto.",
		"entra in una terra che porta la neve come un mantello, e rallenta per accordarsi al suo silenzio.",
	},

	---------------------------------------------------------------------------
	-- alba e tramonto
	---------------------------------------------------------------------------
	["world.dawn.01"] = {
		"Alba. Un altro giorno in prestito, e nessuno che lo rivoglia ancora.",
		"La luce sale piano, come chi non è sicuro di essere atteso. Conosco quella sensazione.",
		{ "Finalmente mattina. Il freddo sta già pensando di andarsene.", depth = "natural" },
		{ "Ogni alba è una porta che si apre una volta sola. La attraverso con ciò che porto.", depth = "elevated" },
	},
	["world.dawn.e"] = {
		"saluta la prima luce come fanno i viandanti: senza una parola, soltanto con un lungo respiro.",
		"guarda l'est impallidire e, senza accorgersene, si raddrizza un poco.",
		{ "incontra l'alba a mani aperte, come si riceve un dono che non chiede nulla.", depth = "elevated" },
	},
	["world.dawn.forest"] = {
		"La luce gocciola tra i rami, sottile e dorata. Il bosco si sveglia più lentamente di me.",
		"Il canto di un uccello comincia nel verde, una voce e poi una dozzina. Il bosco si sta alzando.",
		{ "Alba sotto gli alberi: foschia alle radici, oro nelle chiome, e io nel mezzo.", depth = "elevated" },
	},
	["world.dusk.01"] = {
		"Tramonto. Il giorno lascia la terra, una collina dopo l'altra.",
		"La luce si fa sottile e lunga. È l'ora in cui ogni cosa ricorda di avere un'ombra.",
		{ "Già sera. La strada non si accorcia, si fa solo più scura.", depth = "natural" },
		{ "Il sole si appoggia all'orizzonte come un viandante stanco, e io mi appoggio con lui.", depth = "elevated" },
	},
	["world.dusk.e"] = {
		"guarda la luce scolare via dalla strada, e si stringe nel mantello senza accorgersene.",
		"si ferma un momento a guardare l'ultimo colore lasciare il cielo, poi riprende un po' più in fretta.",
		{ "sta sul limitare della sera e lascia andare il giorno, come si lascia una mano.", depth = "elevated" },
	},
	["world.dusk.forest"] = {
		"Tramonto nel bosco: gli alberi crescono man mano che la luce se ne va. Devo trovare un fuoco prima che finiscano.",
		"Il bosco si infittisce con il buio. Tutto, qui, adesso ascolta.",
		{ "Sera tra gli alberi. Il sentiero è una voce che corre, e io lo seguo sulla fiducia.", depth = "elevated" },
	},

	---------------------------------------------------------------------------
	-- sottozone ({subzone} è il nome dato dal client)
	---------------------------------------------------------------------------
	["world.sub.01"] = {
		"prosegue verso {subzone} senza fretta, leggendo il luogo mentre cammina.",
		"entra a {subzone}. Il suolo non è diverso, ma un nome cambia il modo di percorrere un luogo.",
		{ "entra a {subzone} e si guarda attorno a lungo prima di fare il secondo passo.", depth = "natural" },
	},
	["world.sub.02"] = {
		"{subzone}. Un nome piccolo per un tratto di strada piccolo, eppure chiede di essere ricordato.",
		"Ogni luogo ha un nome prima di avere una storia. Questo è {subzone}.",
		{ "{subzone}. Lo aggiungo all'elenco dei luoghi in cui sono {g:stato|stata}, che è anche un elenco di chi sono {g:stato|stata}.", depth = "elevated" },
	},
	["world.sub.03"] = {
		"Dunque questa è {subzone}. Vediamo che cos'ha da dire.",
		"{subzone}, allora. Ho sentito nomi più strani su strade più gentili.",
		{ "{subzone}. Qualcuno è passato di qui per primo e l'ha chiamata così. Cercherò di esserne {g:degno|degna}.", depth = "literary" },
	},
	["world.sub.04"] = {
		"{subzone}, dunque? Mostrami dove porta la strada, adesso.",
		"{subzone}. Va bene. Per ora non ho nulla da ridire, e non è poco.",
	},
	["world.sub.dark"] = {
		"{subzone}. L'aria cambia, qui, si fa più densa, e la mano va all'arma senza che io lo decida.",
		"Dentro {subzone}, dove la luce si assottiglia e il silenzio ha un peso. Faccio passi corti.",
		{ "{subzone}. Certi luoghi non hanno bisogno di un motivo per sembrare sbagliati.", depth = "literary" },
	},
	["world.sub.night"] = {
		"{subzone} di notte. Ogni ombra, qui, ha fatto pratica.",
		"Il buio si è posato su {subzone}. La attraverso come si attraversa una casa addormentata.",
		{ "{subzone} sotto le stelle, o ciò che le nubi ne lasciano. Un'ora giusta per tacere.", depth = "elevated" },
	},

	---------------------------------------------------------------------------
	-- punti di riferimento ({landmark} è il nome dato dal client)
	---------------------------------------------------------------------------
	["world.lm.inn"] = {
		"si ferma alla porta di {landmark}, ascoltando il brusio della sala prima di entrare.",
		"vede la luce delle lampade alle finestre di {landmark} e sente la strada uscire dalle gambe.",
		{ "arriva a {landmark}, dove un chiarore caldo scivola sulla soglia e non fa domande.", depth = "elevated" },
	},
	["world.lm.inn.inner"] = {
		"{landmark}. Luce calda dietro le imposte, e la promessa di una panca che non si muove.",
		"Un tetto, un fuoco, un boccale. {landmark} ha tutto ciò che mi serve e nulla di cui pentirsi.",
		{ "{landmark}. Mi servirebbero un posto a sedere e una parola senza spigoli.", depth = "natural" },
	},
	["world.lm.village"] = {
		"{landmark}. Fumo, voci, un cane da qualche parte. Gente che vive qui, e una strada che non ha bisogno di me.",
		"Fumo di camini su {landmark}. Per un momento invidio chi sa quale tetto è il proprio.",
		{ "{landmark}: qualche tetto, qualche vita, cento piccole abitudini. È facile dimenticare che è questo che difendiamo.", depth = "elevated" },
	},
	["world.lm.village.e"] = {
		"rallenta ai margini di {landmark}, dove le porte restano aperte e il giorno va avanti senza bisogno di eroi.",
		"entra a {landmark} per un sentiero consumato, tra orti e recinti, e lascia che sia il passo del luogo a dettare il suo.",
	},
	["world.lm.graveyard"] = {
		"rallenta a {landmark}, dove l'erba tace sopra nomi che nessuno legge più.",
		"entra a {landmark} e abbassa la voce senza che nessuno glielo chieda.",
		{ "passa tra le pietre di {landmark}, e i vivi e i morti si tengono educatamente a distanza.", depth = "elevated" },
	},
	["world.lm.graveyard.inner"] = {
		"{landmark}. I morti serbano qui il proprio silenzio. Io serbo il mio.",
		"Pietre in fila, e il vento che non ha nulla da dire. {landmark} chiede silenzio; glielo do.",
		{ "{landmark}. Chiunque giaccia qui ebbe anche lui un nome per la strada.", depth = "literary" },
	},
	["world.lm.camp"] = {
		"Un accampamento a {landmark}: fuochi, tende, gente con i propri affari. Una compagnia sufficiente, per un po'.",
		"{landmark}. Non è molto, ma c'è un fuoco e qualcuno lo tiene vivo. Vale moltissimo.",
		{ "{landmark}. Fumo, qualche tenda, e il suono di gente che non ha fretta.", depth = "natural" },
	},
	["world.lm.mine"] = {
		"{landmark}. Qui la collina è cava, e qualcosa in me preferisce il cielo aperto.",
		"L'imbocco di {landmark} respira aria fredda. Preferisco non sapere quanto scenda.",
		{ "{landmark}. Chi lavora là dentro si guadagna ogni moneta due volte.", depth = "natural" },
	},
	["world.lm.abbey"] = {
		"{landmark}. Qui le pietre sono pazienti, e il silenzio ha qualcosa di una preghiera.",
		"Abbasso la voce a {landmark} prima di averlo deciso. Certi luoghi chiedono senza parlare.",
		{ "{landmark}. Qualunque cosa ciascuno porti da queste porte, i muri la accolgono senza commento.", depth = "elevated" },
	},
	["world.lm.crossroads"] = {
		"{landmark}. Ogni strada finisce qui e ricomincia; mi chiedo quale sia la mia.",
		"A {landmark} le strade si incontrano e si separano. È un buon posto per essere indecisi.",
		{ "{landmark}: quattro direzioni e nessuno che mi dica quale. Scopro che mi piace.", depth = "natural" },
	},

	---------------------------------------------------------------------------
	-- missioni
	---------------------------------------------------------------------------
	["world.quest.progress.01"] = {
		"Una cosa in meno, e il compito si riduce a una misura che posso portare.",
		"Un altro pezzo al suo posto. Non è finita, ma comincia ad assomigliare alla fine.",
		{ "Una parte è fatta. Oggi non chiedo di più.", depth = "natural" },
	},
	["world.quest.progress.e"] = {
		"depenna un'altra parte dell'incarico e si raddrizza, {g:un po' più leggero|un po' più leggera}.",
		"guarda ciò che è fatto e ciò che manca, e trova che la bilancia si è spostata un poco.",
	},
	["world.quest.ready.01"] = {
		"È finita. Resta solo da tornare indietro a dirlo.",
		"Tutto ciò che era stato chiesto è fatto. Ora conta che qualcuno lo sappia.",
		{ "Fatto, e nessuno se n'è ancora accorto. Credo sia così che si sente il lavoro ben fatto.", depth = "natural" },
	},
	["world.quest.ready.02"] = {
		"Fatto. Andiamo a dirglielo.",
		"Il lavoro è compiuto. È ora di portare la notizia.",
		{ "È finita, e vorrei che si sapesse.", depth = "literary" },
	},
	["world.quest.complete.01"] = {
		"Sistemato. Un altro debito della strada pagato, e il prossimo già in attesa.",
		"Fatto e consegnato. Un piccolo peso mi lascia, e mi accorgo di quanto ne portassi.",
		{ "Un altro incarico chiuso. Non ogni giorno è una storia, ma ogni giorno è una pagina.", depth = "elevated" },
	},
	["world.quest.complete.02"] = {
		"chiude la faccenda con un cenno, come si chiude piano una porta.",
		"consegna la fine dell'incarico e la sente andare, come quando si posa lo zaino al termine di una lunga strada.",
	},
	["world.quest.complete.03"] = {
		"Un compito è compiuto. Che il prossimo mi trovi altrettanto {g:pronto|pronta}.",
		"Ecco un'altra promessa mantenuta. La strada può chiedermi ciò che vuole, adesso.",
		{ "È finita. Si sappia che è stata fatta a regola d'arte.", depth = "literary" },
	},
	["world.quest.again.01"] = {
		"Finalmente. Mi ci sono volute più prove di quante ne ammetterò, e non le ammetterò.",
		"Fatto, finalmente. Io e l'incarico abbiamo discusso a lungo, e alla fine l'ultima parola è stata la mia.",
		{ "Terza volta, quarta volta, ho perso il conto. L'incarico è finito, e un poco anch'io.", depth = "natural" },
	},
	["world.quest.again.e"] = {
		"lascia uscire il fiato che trattiene dal primo tentativo fallito.",
		"chiude la faccenda dopo più tentativi di quanti qualcuno voglia contare, e si appoggia a un muro a godersi il silenzio.",
	},

	---------------------------------------------------------------------------
	-- reputazione
	---------------------------------------------------------------------------
	["world.rep.up.neutral"] = {
		"Il gelo è uscito dalle loro voci. Neutrali, lo chiamano. Io lo chiamo un inizio.",
		"Non mi guardano più attraverso. Non è ancora calore, ma non è una porta chiusa.",
	},
	["world.rep.up.friendly"] = {
		"Uno sguardo più amico di prima. La fiducia si costruisce un piccolo favore alla volta.",
		"Dicono il mio nome con più gentilezza, ora. Sto {g:attento|attenta} a non abituarmici.",
		{ "«Amichevole», dicono. Quella parola me la sono guadagnata entrando, e intendo tenerla andando avanti.", depth = "elevated" },
	},
	["world.rep.up.honored"] = {
		"{g:Onorato|Onorata}. La parola è più pesante di come suona, e intendo meritarla.",
		"Sono passati dal sopportarmi al fidarsi di me. Cambia il modo in cui si varca una soglia.",
		{ "{g:Onorato|Onorata} tra loro. Da qualche parte lungo la strada ho smesso di essere {g:uno straniero|una straniera}.", depth = "elevated" },
	},
	["world.rep.up.revered"] = {
		"{g:Riverito|Riverita}. Ero {g:venuto|venuta} per fare cose piccole; lungo la strada si sono sommate.",
		"{g:Riverito|Riverita}, dicono. Mi chiedo se intendano me, o la storia che ne hanno fatto.",
		{ "Parlano di me con una cura che mi rende {g:cauto|cauta}. Un buon peso da portare.", depth = "natural" },
	},
	["world.rep.up.exalted"] = {
		"{g:Osannato|Osannata}. Non restano porte da guadagnare; solo quelle che apro per gli altri.",
		"Non c'è più nulla da dimostrare a loro. Mi lascia uno spazio strano e quieto da riempire.",
		{ "In cima, bisogna decidere a che cosa serve la cima.", depth = "elevated" },
	},
	["world.rep.down.cold"] = {
		"Ho perso terreno con loro. Non era nei piani; i piani sono pessimi in questo.",
		"Certi ponti bruciano da soli. Questo, temo, l'ho acceso io.",
		{ "I loro volti si sono chiusi per me. Una lezione, se scelgo di leggerla così.", depth = "literary" },
	},
	["world.rep.down.e"] = {
		"sente raffreddarsi l'accoglienza, e non dice nulla, come si fa con una ferita.",
		"prende gli sguardi più freddi e le risposte più corte come una notizia, e la ripone.",
	},

	---------------------------------------------------------------------------
	-- riposo: al chiuso è una locanda, all'aperto una città
	---------------------------------------------------------------------------
	["world.rest.inn.01"] = {
		"Pareti calde, un tetto, e nulla da uccidere. Potrei restare qui un anno.",
		"Mura che non si muovono, un fuoco che non chiede nulla. Più vicino di così a una casa, la strada non arriva.",
		{ "Al chiuso, finalmente. Le mie ossa ricordano a che servono le sedie.", depth = "natural" },
	},
	["world.rest.inn.e"] = {
		"posa lo zaino accanto al camino e lascia che la strada coli via dalle gambe.",
		"si lascia cadere su una panca e, per la prima volta da molto, non deve essere altrove.",
		{ "si sistema in un angolo della sala dove il fuoco è caldo e il rumore è quello delle vite altrui.", depth = "elevated" },
	},
	["world.rest.town.01"] = {
		"Riposo. Quello che arriva quando nessuno ti cerca.",
		"Strade quiete e un posto dove stare fermi. Mi era mancato il suono di nulla che accade.",
		{ "Un momento di pace in un luogo che si regge da sé. Lo prendo, e non chiedo di più.", depth = "literary" },
	},
	["world.rest.town.e"] = {
		"rallenta al passo delle strade, e sente il peso del cammino posarsi un poco.",
		"trova un angolo quieto e respira, come dopo una lunga salita che non ha fine in vista.",
	},

	---------------------------------------------------------------------------
	-- voli
	---------------------------------------------------------------------------
	["world.flight.start.01"] = {
		"Il suolo si stacca. Qualunque cosa lasci laggiù, diventa più piccola ogni minuto.",
		"Su. Il mondo è una mappa, adesso, e la leggo dall'alto.",
		{ "Il vento mi prende, e le strade si riducono a fili. Per un po', nulla è una mia responsabilità.", depth = "elevated" },
	},
	["world.flight.start.e"] = {
		"si tiene forte mentre il mondo si inclina e si allontana, e guarda le strade ridursi a fili laggiù.",
		"sta molto immobile mentre la terra si abbassa, e tiene entrambi gli occhi sull'orizzonte.",
		{ "sale nell'aria aperta, e la terra si srotola sotto come una pagina a cui non importa chi la legge.", depth = "elevated" },
	},
	["world.flight.start.02"] = {
		"Si va su. Speriamo che chi guida sappia la strada meglio di me.",
		"Beh. Sono {g:stato|stata} su sedili peggiori. Pochi erano così in alto.",
	},
	["world.flight.arrive.01"] = {
		"Di nuovo terra solida. Le gambe ci mettono un attimo a ricordare a che servono.",
		"Il vento mi lascia, e la strada mi riprende. Facciamo finta, entrambi, che non sia successo nulla.",
		{ "Giù, finalmente. Il cielo andava bene; lo preferisco solo da sotto.", depth = "natural" },
	},
	["world.flight.arrive.e"] = {
		"scende a terra e resta {g:fermo|ferma} un momento, lasciando che l'ondeggiare dell'aria esca dalle ginocchia.",
		"tocca terra e fa due passi cauti, come dopo il mare.",
	},
	["world.flight.long.01"] = {
		"Dopo tanto tempo sopra la terra, il suolo sembra un vecchio conoscente.",
		"Una lunga strada, volata e finita. Quaggiù tutte le distanze tornano piccole.",
		{ "Tanta strada alle spalle, e nessuna camminata. Mi chiedo che cosa faccia a un viaggio.", depth = "elevated" },
	},
	["world.flight.long.e"] = {
		"scende dopo il lungo volo, e il suolo pare pesante e lento dopo tanto tempo tra le nubi.",
		"atterra al termine di una lunga traversata, e si concede un momento solo per stare su qualcosa che non si muove.",
	},
	["mood.city.journey.01"] = {
		"Il rumore della città mi resta alle spalle, tutte le commissioni e le liti insieme, e nessuna è più affar mio.",
		"Su, e via. Tutta quella calca e quel mercanteggiare si riducono a un mormorio, poi a niente.",
		"Una città intera di voci, e in pochi battiti di cuore non ne sento più nemmeno una.",
	},
	["mood.city.journey.02"] = {
		"Giù, in mezzo alla folla. Dopo tutto quel silenzio lassù, una città è un sacco di gente che parla insieme.",
		"Fra la gente un'altra volta. Attenti ai gomiti: ho appena ritrovato le gambe.",
	},
	["mood.city.rest_enter.01"] = {
		"Guardie a ogni angolo e niente che mi dia la caccia. Posso allentare una cinghia o due.",
		"In città il pericolo peggiore è un cattivo affare. Per un po' ci posso convivere.",
	},
	["mood.city.weather_change.01"] = {
		"Il cielo, lassù, sta cambiando faccia. La città non se n'è accorta: i banchi restano aperti e la folla continua a camminare.",
		"Qualunque cosa faccia il cielo lassù, quaggiù nessuno alza gli occhi: ci sono affari da chiudere.",
	},
	["mood.dark.journey.01"] = {
		"Appena a terra, la cupezza mi si posa sulle spalle come un mantello già indossato da qualcun altro.",
		"Giù dal volo, e la luce pare già più scarsa. Avrei fatto volentieri un viaggio più lungo.",
	},
	["mood.desert.journey.01"] = {
		"Si scende, dritti nella polvere. Avevo dimenticato quanto si secca la bocca in un solo respiro.",
		"A terra. Ed ecco la polvere, che aspetta come un vecchio cane sulla porta.",
	},
	["mood.fire.journey.01"] = {
		"Il volo mi posa a terra, e il calore mi viene incontro come la porta aperta di una fornace. Il vento mi manca già.",
		"Con i piedi a terra, e la terra scotta. Il vento fresco di lassù sembra già una favola.",
	},
	["mood.jungle.journey.01"] = {
		"Giù dall'aria fresca, dritto in un caldo verde e umido che mi si chiude addosso come una coperta.",
		"Appena tocco terra, l'aria si fa così densa che si potrebbe bere. Qui vicino qualcosa strilla, e non sembra contento.",
	},
	["mood.plague.journey.01"] = {
		"Atterrare qui è come entrare in una stanza di malati con le finestre inchiodate.",
		"L'aria cambia mentre scendiamo. Quando tocco terra, ho già voglia di andarmene.",
	},
	["mood.plains.journey.01"] = {
		"Mentre saliamo, l'erba si fonde sotto il vento in un solo grande colore, interrotto appena da una fattoria o da un accampamento.",
		"Da quassù la terra aperta finalmente ha un senso: un'unica distesa da un capo all'altro, con il vento che passa sull'erba come una mano.",
		"Mi alzo sopra tutta quella campagna aperta. Da quest'altezza anche la strada più lunga sembra una passeggiata di un pomeriggio.",
	},
	["mood.plains.weather_change.01"] = {
		"guarda il cielo cambiare da lontano sopra la terra aperta, e il mutamento scorrere sull'erba molto prima di arrivare fin lì.",
		"si volta e vede il cielo cambiare al margine della distesa d'erba, con tutto il tempo per prepararsi.",
	},
	["quest_complete.w01.01"] = {
		"Pagato o no, non ci devo più pensare. Già questo valeva la strada.",
		"Una cosa in meno da portarmi in testa. Lo zaino pesa uguale, io no.",
		"Fatto. La parte migliore non è la ricompensa: è non doverci più pensare.",
	},
	["quest_complete.w01.02"] = {
		"Ecco. Esattamente come richiesto. La prossima volta, chiedimi qualcosa di facile.",
		"Tutto fatto, e solo un po' {g:malconcio|malconcia}. Non c'è di che.",
		"Finito. Se qualcuno mi cerca, mi troverà a sedere con i piedi in alto.",
	},
	["quest_complete.w01.03"] = {
		"si concede un breve momento di soddisfazione, tutto per sé, e la cosa finisce lì.",
		"si permette un sorriso discreto per un lavoro fatto come si deve, poi lo mette via.",
	},
	["quest_complete.w01.04"] = {
		"Se qualcuno aspettava questo, adesso aspetta un po' meno. Mi basta.",
		"Una preoccupazione, chissà dove, è appena diventata più piccola. Un po' è merito mio.",
	},
	["quest_complete.w01.05"] = {
		"Facendolo ho imparato qualcosa, anche se non quello che mi avevano chiesto di imparare.",
		"Ogni incarico insegna qualcosa di straforo. Questo mi ha insegnato la pazienza, soprattutto mettendola alla prova.",
	},
	["quest_complete.w01.06"] = {
		"Fatto, e fatto con le mie mani. Questa parte nessuno me la può togliere.",
		"Qualunque sia la ricompensa, l'impresa è mia, e le mie mani lo sanno. Me la porterò dietro più a lungo di qualunque moneta.",
	},
	["race.dwarf.journey.001"] = {
		"I Granmartello sono nati per questo. Io sono {g:nato|nata} per avere un pavimento sotto gli stivali.",
		"Tieniti stretto, {g:nano|nana}. La terra è ancora laggiù: solo, non ha fretta di riprenderti.",
		"Pietra sotto, vento tutt'intorno, e in mezzo niente se non cinghie e speranza.",
	},
	["race.dwarf.quest_complete.001"] = {
		"Finito. Forse non bello, ma solido. Un nano preferisce sempre il solido.",
		"Lavoro concluso. Ci metterei sopra il mio marchio, se ne avessi uno.",
		"Ogni incarico è un pezzo di lavoro. Questo reggerà.",
	},
	["race.dwarf.quest_complete.002"] = {
		"Fatto! Se mai la Lega degli Esploratori chiedesse, questa la voglio messa per iscritto come si deve.",
		"Un'altra storia per il focolare di casa. Crescerà un poco ogni volta che la racconto.",
		"Finito. Qualcuno chiami un cronista: la mia memoria migliora a ogni racconto.",
	},
	["race.dwarf.quest_complete.003"] = {
		"si spolvera le mani con due colpi decisi, come un minatore a fine turno.",
		"fa un cenno breve e soddisfatto e mette via la faccenda, come un fabbro che appende un attrezzo finito.",
		"rotea le spalle come chi ha appena posato una gerla piena di pietre.",
	},
	["race.dwarf.quest_progress.001"] = {
		"Un altro carrello di minerale su per il pozzo. Laggiù ce n'è ancora parecchio, beninteso.",
		"Si avanza, pietra dopo pietra. Nemmeno le sale di Forgiardente sono state scavate in un pomeriggio.",
	},
	["race.gnome.journey.001"] = {
		"Decollo! Mi piacerebbe vedere da vicino la meccanica delle ali. Da una distanza di sicurezza. Che non è questa.",
		"Quota in aumento. Battito cardiaco anche. Entrambi entro limiti accettabili, spero.",
		"Si sale! Promemoria: progettare qualcosa che voli senza bisogno di mangiare.",
	},
	["race.gnome.quest_complete.001"] = {
		"Incarico completato! Efficienza: accettabile. Esplosioni: nessuna degna di nota.",
		"Lavoro fatto, e niente ha preso fuoco. Qualcuno se lo segni.",
		"Finito! Farei un rapporto, ma finirei per riprogettare il modulo.",
	},
	["race.gnome.quest_complete.002"] = {
		"Fatto. Annotato ciò che ha funzionato, annotato ciò che non ha funzionato. La seconda lista è sempre la più utile.",
		"Un altro problema risolto. Non con eleganza, ma risolto: l'eleganza può aspettare la seconda versione.",
		"Ogni incarico concluso è il prototipo del successivo. Questo mi ha insegnato parecchio.",
	},
	["race.gnome.quest_complete.003"] = {
		"spunta una casella immaginaria nell'aria con un piccolo gesto preciso.",
		"si sfrega le mani come un inventore che guarda una macchina accendersi, finalmente.",
		"annota qualcosa di minuscolo in un taccuino ancora più minuscolo e lo sottolinea due volte.",
	},
	["race.gnome.quest_progress.001"] = {
		"Progressi: misurabili. Completamento: in attesa. Morale: sorprendentemente alto.",
		"La prima parte funziona. Dalla seconda in poi, vedremo.",
	},
	["race.human.journey.001"] = {
		"Piedi a terra. Gli umani sono fatti per camminare: adesso ne sono {g:convinto|convinta}.",
		"Giù, finalmente. Il cielo lo lascio agli uccelli e alla gente più coraggiosa.",
		"Terra solida. La bacerei, se nessuno guardasse.",
	},
	["race.human.quest_complete.001"] = {
		"Un lavoro fatto e una promessa mantenuta. Nei villaggi è così che ci si guadagna un nome.",
		"Parola data, parola mantenuta. Da dove vengo io, vale più di qualunque ricompensa.",
		"Fatto. Là fuori qualcuno può smettere di preoccuparsi di almeno una cosa.",
	},
	["race.human.quest_complete.002"] = {
		"Fatto, e senza compilare un solo modulo in triplice copia. Gli scrivani di Roccavento sverrebbero.",
		"Finito! Se solo il tesoro di Roccavento pagasse con questa puntualità.",
		"Ecco qua. Se qualcuno lo vuole per iscritto, conosco uno scrivano che lo perderà.",
	},
	["race.human.quest_complete.003"] = {
		"si raddrizza e lascia andare un lungo respiro, le spalle che si sciolgono come quelle di un bracciante a fine raccolto.",
		"si asciuga le mani sui vestiti, un gesto semplice di una terra di lavoro semplice.",
		"si concede un piccolo sorriso stanco, quello che si tiene per i lavori che nessun altro voleva.",
	},
	["race.human.quest_progress.001"] = {
		"È tutto. Adesso la strada a ritroso, e due parole con chi me l'ha chiesto.",
		"Fatto, o quasi. Meglio andare a dirlo prima che qualcosa si disfi.",
	},
	["race.nightelf.journey.001"] = {
		"Su, nel vento. Da quassù il mondo sembra più giovane, e io so che non lo è.",
		"Si sale. Sotto scivolano via foreste più vecchie di me e foreste più giovani, come amici che si congedano.",
		"Ali e vento. Per un po' sono senza fretta come le nuvole.",
	},
	["race.nightelf.quest_complete.001"] = {
		"Fatto. Una piccola cosa, misurata sui secoli, e comunque degna di essere fatta bene.",
		"Finito. La foresta insegna che i piccoli gesti, ripetuti, diventano una forma che si vede da lontano.",
		"Compiuto. Fra cent'anni nessuno lo ricorderà, eppure avrà contato.",
	},
	["race.nightelf.quest_complete.002"] = {
		"china appena il capo, una cortesia silenziosa che chiude la questione senza parole.",
		"trae un respiro lento e lo lascia andare, senza fretta, come foglie che si posano dopo il vento.",
		"posa per un istante una mano sul cuore, poi lascia andare la faccenda.",
	},
	["race.nightelf.quest_complete.003"] = {
		"È fatta. Che porti frutto a suo tempo.",
		"Finito. Un seme piantato: vediamo che cosa crescerà.",
		"Ecco. Ande'thoras-ethil: che i tuoi affanni ora siano minori.",
	},
	["race.nightelf.quest_progress.001"] = {
		"Una parte è fatta. Il resto verrà come vengono le foglie: ognuna a suo tempo.",
		"Si avanza. Lentamente, ma gli alberi più vecchi sono cresciuti allo stesso modo.",
	},
	["race.orc.journey.001"] = {
		"Su, in groppa a una bestia che potrebbe mangiarmi. L'Orda va avanti grazie a una fiducia così.",
		"La terra si allontana. Da quassù è difficile dire di chi sia, ed è uno strano conforto.",
		"Si parte. Il posto di un orco è a terra, ma ammetto che il panorama è bello.",
	},
	["race.orc.quest_complete.001"] = {
		"Fatto. Dite pure che l'ha fatto un orco, e come si deve.",
		"Finito. La mia parola era di ferro, come dev'essere.",
		"Sistemato. La prossima volta, dammi qualcosa di più difficile.",
	},
	["race.orc.quest_complete.002"] = {
		"Nei campi nessuno ci chiedeva altro che silenzio. È bello sentirsi chiedere qualcosa, e poterlo dare.",
		"Lavoro per la mia gente, per mia scelta. Nei campi d'internamento non era concesso a nessuno.",
		"Un compito fatto da liberi ne vale dieci fatti sotto la frusta. So bene di che genere era questo.",
	},
	["race.orc.quest_complete.003"] = {
		"Ecco. E adesso, dov'è il cibo?",
		"Fatto. Zug zug. Non farmelo fare due volte.",
		"Finito. Se qualcuno lo chiede, è stato molto più difficile di quanto sembrasse.",
	},
	["race.orc.quest_progress.001"] = {
		"È tutto. Ora riportare la notizia, e guardarli in faccia.",
		"Il lavoro è fatto. Il resto è tornare a piedi, e gli orchi sono bravi a camminare.",
	},
	["race.scourge.journey.001"] = {
		"Su e via. Il vento mi passa attraverso, così si risparmia la fatica di girarmi intorno.",
		"In volo. Se cado, almeno non sarà la prima volta che muoio.",
		"Il mondo si rimpicciolisce sotto di me. Da quassù non si capisce quali campi si sia presa la peste.",
	},
	["race.scourge.quest_complete.001"] = {
		"Fatto. Ora puoi smettere di fissarmi.",
		"Ecco. Non serve ringraziarmi, e non serve stare così lontano.",
		"Finito. Ti stringerei la mano, ma preferisci di no.",
	},
	["race.scourge.quest_complete.002"] = {
		"Ho scelto io di farlo. Nessuna voce in testa, solo la mia. Mi sembra ancora un piccolo miracolo.",
		"Un compito preso e portato fino in fondo per mia volontà. Il Flagello non me l'ha mai concesso.",
		"Fatto, e fatto perché l'ho deciso io. Ogni volta ha un sapore un po' meno strano.",
	},
	["race.scourge.quest_complete.003"] = {
		"china il capo con una cortesia rigida, un gesto che viene da una vita sepolta da tempo.",
		"chiude la questione e fa un passo indietro, come chi è abituato a gente che preferisce un po' di distanza.",
		"emette un suono secco e rauco che un tempo, forse, era un sospiro di soddisfazione.",
	},
	["race.scourge.quest_progress.001"] = {
		"Una parte, dunque. Di pazienza ne ho da vendere: è una delle poche cose che mi sono rimaste.",
		"Non è finita, ma va avanti. Come me.",
	},
	["race.tauren.journey.001"] = {
		"Un tauren in cielo. I miei nonni riderebbero, e poi si aggrapperebbero alla sella con tutte e due le mani, come sto facendo io.",
		"Gli zoccoli sono fatti per la terra. Quassù li tengo ben fermi e cerco di non pensare a quanto sia lontana l'erba.",
		"La bestia sotto di me brontola. Ho il sospetto che stia calcolando il mio peso, e che il risultato non le piaccia.",
	},
	["race.tauren.quest_complete.001"] = {
		"Fatto, come avevo detto. Per il mio popolo una promessa è come l'impronta di uno zoccolo nell'argilla: indurisce e resta.",
		"Parola mantenuta. Un anziano annuirebbe senza dire niente, che per un anziano è moltissimo.",
		"Finito, e finito come si deve. Gli anziani direbbero che non c'è altro modo di finire una cosa.",
	},
	["race.tauren.quest_complete.002"] = {
		"Ecco qua. La prossima volta chiedimi qualcosa di pesante: sono {g:fatto|fatta} apposta.",
		"Tutto fatto. Se c'è qualcosa da portare, da spingere o da schiacciare sedendoci sopra, sai dove trovarmi.",
		"Finito. Tutto qui? Avrò chinato la testa sì e no una volta.",
	},
	["race.tauren.quest_complete.003"] = {
		"si tocca il petto con la mano aperta, come per rimettere qualcosa al suo posto.",
		"china le corna in un cenno lento e soddisfatto.",
		"lascia andare la faccenda con la calma di chi è abituato a stagioni lunghe e a strade ancora più lunghe.",
	},
	["race.tauren.quest_progress.001"] = {
		"Ecco tutto. Ora la lunga camminata di ritorno, che è la parte che piace alle mie gambe.",
		"Tutto ciò che era stato chiesto è fatto. Un tauren torna come torna una mandria: senza fretta, ma sicuro della strada.",
	},
	["race.troll.journey.001"] = {
		"A terra. Lo stomaco però è rimasto sopra l'ultima collina.",
		"Terra. Bene. I troll stanno sulla terra, o sugli alberi, o in acqua. Non tra le nuvole.",
		"{g:Atterrato|Atterrata}. Non avevo paura. Erano le mani a tenersi strette, per motivi loro.",
	},
	["race.troll.quest_complete.001"] = {
		"Fatto. Lavoro facile, se non conti le parti difficili.",
		"Ecco qua. Pagami in monete, o in qualcosa di buono da mangiare. Va bene uguale.",
		"Tutto finito. Ora, c'è un'amaca qui intorno?",
	},
	["race.troll.quest_complete.002"] = {
		"Anche un lavoro finito è una piccola offerta. I Loa notano chi mantiene la parola.",
		"Finito. Lascio un pizzico di qualcosa per gli spiriti, per abitudine, e riprendo la strada.",
		"Quel debito è saldato. Un troll senza debiti dorme tranquillo, e i Loa ti lasciano in pace.",
	},
	["race.troll.quest_complete.003"] = {
		"muove un lungo orecchio e sorride, zanne comprese, come se fin dall'inizio il piano fosse proprio questo.",
		"stira le lunghe braccia sopra la testa finché qualcosa scricchiola, e ha l'aria di chi è soddisfatto della giornata.",
		"fa un pigro saluto con due dita e un sorriso ancora più pigro.",
	},
	["race.troll.quest_progress.001"] = {
		"A metà, forse. Ai Loa piacciono le storie che hanno un centro.",
		"Una parte è fatta. Il resto può aspettarmi: non scappa.",
	},
	["weather_change.w01.01"] = {
		"Il cielo ha cambiato idea. La mia resta dov'era.",
		"Su nel cielo qualcosa si muove. Quaggiù, il piano resta quello.",
	},
	["band.b10_20.quest_complete.01"] = {
		"Un altro fatto. Comincio ad avere una reputazione. Piccola, ma sa come mi chiamo.",
		"Fatto. La gente del posto ha cominciato a salutarmi per strada. Potrei prenderci gusto.",
		"Finito, e nessuno è dovuto venire a salvarmi. Progressi.",
	},
	["band.b10_20.quest_complete.02"] = {
		"La paga è migliore di un tempo. Anche i lividi, a modo loro: guariscono prima.",
		"Adesso guadagno abbastanza da comprare qualcosa che voglio, e non solo quello che mi serve. Non l'ho ancora fatto. Ma potrei.",
	},
	["band.b10_20.quest_complete.03"] = {
		"soppesa la borsa con una mano, annuisce una volta e la mette al sicuro, in un posto migliore di quello dell'ultima.",
		"conta la ricompensa senza fretta, poi batte due volte la mano sulla tasca per essere {g:sicuro|sicura} che ci sia ancora.",
	},
	["band.b10_20.quest_progress.01"] = {
		"Un pezzo è fatto. Sto imparando a tenere il resto a mente invece che su pezzetti di carta.",
		"A metà strada. Una volta queste cose me le perdevo per via. Adesso no.",
	},
	["band.b1_10.quest_complete.01"] = {
		"Fatto, e {g:pagato|pagata} in monete vere. Potrei abituarmici.",
		"Un lavoro finito e una borsa un po' più pesante. Borsa piccola, lavoro piccolo, ma tutto mio.",
	},
	["band.b1_10.quest_complete.02"] = {
		"Mi hanno {g:ringraziato|ringraziata} come se avessi fatto chissà cosa. Era una commissione che avrebbe potuto sbrigare qualunque vicino. Il grazie però me lo tengo.",
		"Adesso qualcuno al mondo mi deve un piccolo favore. Non so ancora cosa farmene, ma mi piace.",
	},
	["band.b20_30.quest_complete.01"] = {
		"Fatto. La gente comincia a chiedere di me per nome. Non so quando sia successo.",
		"Finito. I lavori si fanno più grossi e, per fortuna, anche la paga.",
		"Un altro sistemato. Divento {g:bravo|brava} in questo, il che è incoraggiante o preoccupante, dipende.",
	},
	["band.b20_30.quest_complete.02"] = {
		"{g:Pagato|Pagata}, {g:ringraziato|ringraziata} e {g:spedito|spedita} verso il prossimo problema. A quanto pare ormai le cose vanno così.",
		"Una volta festeggiavo ogni lavoro finito. Adesso controllo le provviste e chiedo cosa c'è dopo.",
		"Un altro nodo del mondo sciolto. Di nodi ce n'è sempre un altro.",
	},
	["band.b20_30.quest_complete.03"] = {
		"accoglie i ringraziamenti con un breve cenno, come chi ormai ne ha sentiti parecchi.",
		"mette via la ricompensa senza contarla due volte, un piccolo lusso guadagnato lungo la strada.",
	},
	["band.b20_30.quest_complete.04"] = {
		"Fatto. Direi che è stato facile, ma la mia schiena mi smentirebbe.",
		"Lavoro finito. I lividi li tengo come ricevuta.",
	},
	["band.b20_30.quest_progress.01"] = {
		"Ecco tutto. Ora la lunga camminata per farglielo sapere.",
		"Tutto sistemato, qui. Andare a riferire, di solito, è la parte facile.",
	},
	["band.b30_40.quest_complete.01"] = {
		"Fatto. Né il più difficile né il più facile. Una buona giornata di lavoro onesto.",
		"Finito. Ho smesso di aspettarmi canzoni, e così la paga sembra migliore.",
		"Ecco. Dite pure che è sistemato. La prossima volta sapranno chi chiamare.",
	},
	["band.b30_40.quest_complete.02"] = {
		"La ricompensa va bene. Ma quello che mi tengo davvero è sapere com'è andata, e come lo rifarei meglio.",
		"Un altro lavoro, un'altra lezione archiviata. La mia testa sta diventando una biblioteca di errori da non ripetere.",
		"Non ricordo le facce dei primi per cui ho lavorato. Questa la ricorderò. Buffo come cambiano le cose.",
	},
	["band.b30_40.quest_complete.03"] = {
		"accetta il compenso con la calma di chi l'ha fatto molte volte e presto sarà di nuovo per strada.",
		"ascolta i ringraziamenti, annuisce al momento giusto, e ha già la testa alla strada.",
	},
	["band.b30_40.quest_complete.04"] = {
		"Fatto. La prossima volta chiedete a qualcuno che costa meno. Ah, già: non c'è nessuno.",
		"Sistemato. Accetto pagamenti in monete, gratitudine e cibo decente, in quest'ordine.",
	},
	["band.b30_40.quest_complete.05"] = {
		"Qualcuno dormirà più tranquillo grazie a oggi. Non lo incontrerò mai, e va bene così.",
		"Chi ne trarrà più beneficio non saprà mai il mio nome. Chissà perché, la cosa mi sta bene.",
	},
	["band.b30_40.quest_progress.01"] = {
		"Una parte è fatta. Pazienza: queste cose richiedono sempre più tempo di quanto pensi chi le chiede.",
		"Un pezzo al suo posto. Ho smesso di aspettarmi che i lavori vadano dritti.",
		"Progressi. Lenti, ma di quelli che restano.",
	},
	["band.b40_50.quest_complete.01"] = {
		"Fatto. Quello aveva i denti, ma anch'io.",
		"Finito, e come si deve. Non lascio più lavori a metà: hanno il vizio di crescere.",
		"È sistemato. Pagatemi, e indicatemi il prossimo pasticcio.",
	},
	["band.b40_50.quest_complete.02"] = {
		"Le ricompense sono migliori di un tempo. Mi accorgo che mi importano meno.",
		"Un buon lavoro, fatto bene. Ormai è questo che mi soddisfa, più della borsa.",
		"Le monete vanno e vengono. Resta la soddisfazione silenziosa di una cosa finita come si deve.",
	},
	["band.b40_50.quest_complete.03"] = {
		"accoglie ricompensa e ringraziamenti con la stessa calma, come due nuvole destinate a passare.",
		"ascolta la gratitudine con un mezzo sorriso stanco, di chi ne ha sentite tutte le versioni.",
		"intasca il compenso senza guardarlo, gli occhi già all'orizzonte.",
	},
	["band.b40_50.quest_complete.04"] = {
		"Bene. Una cosa in meno di cui la gente deve avere paura. Ne restano tante.",
		"Fatto. Non aggiusterà il mondo, ma ne aggiusta un angolo.",
	},
	["band.b40_50.quest_complete.05"] = {
		"Mi sono {g:sorpreso|sorpresa} a valutare la ricompensa per quanto potrei rivenderla. Da quando sono così {g:pratico|pratica}?",
		"Qualche anno fa me ne sarei {g:vantato|vantata} per una settimana. Adesso penso soprattutto a un bagno.",
	},
	["band.b40_50.quest_progress.01"] = {
		"Questo è tutto. Ora a qualcuno arriva una buona notizia.",
		"Tutto fatto. Il resoconto sarà più breve del lavoro.",
		"Qui ho finito. È ora di andare a ritirare i ringraziamenti e il prossimo problema.",
	},
	["band.b50_60.quest_complete.01"] = {
		"È fatto. Dite a chi di dovere che non darà più fastidio.",
		"Sistemato. Non era una cosa da poco. Meno male che è toccata a qualcuno capace di finirla.",
		"Finito. Il mondo è un po' più sicuro e io un po' più {g:stanco|stanca}. Scambio onesto.",
	},
	["band.b50_60.quest_complete.02"] = {
		"Chi mi affida il lavoro adesso ha facce preoccupate e memorie lunghe. Il lavoro è cresciuto insieme a me.",
		"Gli incarichi che mi danno oggi sono quelli che nessun altro potrebbe portare a termine. Cerco di non montarmi la testa: soprattutto, pesano.",
		"Una volta un lavoro finito voleva dire un pasto caldo. Oggi può voler dire che molta gente non saprà mai quanto ci è andata vicino.",
	},
	["band.b50_60.quest_complete.03"] = {
		"accoglie i ringraziamenti con grave cortesia, come si accetta un debito che un giorno verrà riscosso.",
		"prende la ricompensa e china il capo, un piccolo gesto che porta il peso di molti momenti simili.",
	},
	["band.b50_60.quest_complete.04"] = {
		"Fatto. Mi date una statua? No? Allora un panino.",
		"Finito. Farei un discorso, ma tengo il fiato per quello che viene dopo.",
	},
	["band.b50_60.quest_complete.05"] = {
		"Un altro favore fatto a gente che probabilmente non rivedrò mai. Una volta mi bruciava. Ora mi sembra il senso di tutto.",
		"Le ricompense contano poco, ormai. Continuo perché posso, e perché la lista di chi può è corta.",
	},
	["band.b50_60.quest_progress.01"] = {
		"Un pezzo è fatto. Il resto chiede pazienza, e la pazienza è l'unica cosa che adesso ho in abbondanza.",
		"Progressi. Non ho più fretta con queste cose: ho visto quanto costa la fretta.",
		"Qualcosa è concluso. Il resto lo farò come si deve, piano, nel modo che funziona.",
	},
	["band.b60.quest_complete.01"] = {
		"Fatto. Consideratelo un favore al mondo, non a me.",
		"Ci ho pensato io. Tenete i ringraziamenti per chi ne ha ancora bisogno.",
		"Sistemato. Non ringraziatemi: un giorno fatelo per qualcun altro.",
	},
	["band.b60.quest_complete.02"] = {
		"Un compito piccolo, per il mio metro di adesso. Per loro era tutto. Cerco di non dimenticare mai la seconda parte.",
		"Mi è costato appena una mattinata. A qualcuno varrà una stagione di pace.",
		"Lavoro facile, ormai. È proprio per questo che continuo: la parte difficile è decidere di darsi pena.",
	},
	["band.b60.quest_complete.03"] = {
		"ascolta la gratitudine fino in fondo con paziente gentilezza, come si ascolta una storia sentita molte volte e che merita ancora.",
		"si trattiene un momento dopo i ringraziamenti, come se il compito meritasse un ultimo sguardo prima di essere messo da parte.",
	},
	["band.b60.quest_complete.04"] = {
		"Fatto. Lo aggiungo alla lista delle cose che nessuno crede opera mia.",
		"Finito. A questo punto più che un'impresa è una visita a domicilio.",
	},
	["journey.clear.w02.01"] = {
		"Un cielo sereno in cui volare. Vedo così lontano che l'orizzonte sembra una voce finalmente confermata.",
		"Su, e fra me e il bordo lontano della terra non c'è altro che aria pulita.",
	},
	["journey.day.w02.01"] = {
		"Su, nella luce del giorno. Da qui tutta la terra si stende chiara: strade, fiumi, e tutte le piccole faccende nel mezzo.",
		"Un volo di giorno: tutto là sotto è nitido come una mappa disegnata con cura.",
	},
	["journey.night.w02.01"] = {
		"In volo di notte. Sotto, la terra è buia, tranne qualche fuoco, piccolo e testardo come una promessa.",
		"Su, nell'aria della notte. La terra si fa buia sotto di me, e solo il vento dice che ci stiamo ancora muovendo.",
	},
	["mood.city.journey.w02.01"] = {
		"scende dal volo nel clamore della città e si concede un istante, lasciando che il rumore trovi il suo livello.",
		"rimette piede fra la folla e la pietra, mentre il silenzio del cielo lascia il posto alle voci del mercato.",
	},
	["mood.coast.journey.w02.01"] = {
		"Giù, vicino all'acqua. Dopo il volo l'aria è carica di salsedine, e sa di fine della strada.",
		"A terra, e la prima cosa che sento è la risacca. Un bel suono con cui arrivare.",
	},
	["mood.dark.journey.w02.01"] = {
		"Su, fuori dalla cupezza. Non sapevo quanto pesasse finché le ali non me l'hanno tolta di dosso.",
		"Le ali salgono e la cupezza resta là sotto. Strano come si respiri meglio quassù.",
	},
	["mood.forest.journey.w02.01"] = {
		"Giù dall'aria aperta, sotto i rami. La luce si fa verde e morbida, e le spalle le vanno dietro.",
		"A terra. Dopo tutto quel cielo, gli alberi sembrano vicini e gentili, come un tetto che si è costruito da solo.",
	},
	["mood.mountain.journey.w02.01"] = {
		"Su e oltre le creste. Da quassù le montagne sembrano docili, e so bene che è una bugia.",
		"Le cime scendono sotto le ali una dopo l'altra. Ho scalato più lentamente e visto di meno.",
	},
	["mood.plains.journey.w02.01"] = {
		"Giù. Erba e cielo fin dove arriva lo sguardo. Bene: niente si nasconde.",
		"Di nuovo a terra. Il vento quaggiù corre quasi quanto il volo.",
	},
	["mood.ruin.journey.w02.01"] = {
		"Giù, in una terra di muri spezzati. Dall'alto le vecchie fondamenta sembravano un disegno lasciato a metà.",
		"A terra, fra pietre che un tempo erano qualcosa. Il volo era la parte allegra.",
	},
	["mood.swamp.journey.w02.01"] = {
		"scende dal volo e sente tutto in una volta l'odore di acqua ferma e di marcio.",
		"atterra in un'aria densa e umida, e il primo moscerino {g:lo|la} trova prima del secondo passo.",
	},
	["race.dwarf.journey.w02.01"] = {
		"Giù, e la terra resta dov'è. È tutta qui la mia opinione sul volare.",
		"Di nuovo terra solida. Il volo è roba da uccelli e da sciocchi, e oggi sono {g:stato|stata} entrambe le cose.",
	},
	["race.gnome.journey.w02.01"] = {
		"Carrello d'atterraggio: gambe. Prestazioni: traballanti ma accettabili.",
		"Atterraggio confermato. Promemoria: progettare un atterraggio più morbido.",
	},
	["race.human.journey.w02.01"] = {
		"Su, e via. La terra là sotto diventa una mappa, e continuo a cercare le stradine che portano a casa.",
		"La terra si allontana, e con lei ogni piccola preoccupazione. Mi aspetteranno all'atterraggio, ma per ora sono molto più in basso.",
	},
	["race.nightelf.journey.w02.01"] = {
		"Giù dal vento. I miei piedi trovano la terra come fanno le radici: piano, e poi per sempre.",
		"Il volo è finito. Lascio che la quiete della terra torni a posarsi in me, prima di riprendere il cammino.",
	},
	["race.orc.journey.w02.01"] = {
		"Terra. Bene. La bestia ha volato bene, ma mi fido di più dei miei piedi.",
		"Di nuovo a terra. Adesso posso tornare a combattere come si deve.",
	},
	["race.scourge.journey.w02.01"] = {
		"Ancora a terra. Alla terra non importa cosa sono, il che la rende compagnia migliore di tanti.",
		"Piedi a terra. Niente in me si lamenta del volo. Niente in me si lamenta più di granché.",
	},
	["race.tauren.journey.w02.01"] = {
		"Zoccoli sulla terra, finalmente. La Madre Terra mi regge meglio di qualsiasi ala.",
		"Il cielo è stato gentile, ma la terra è casa. La sento sotto gli zoccoli prima ancora di vederla.",
	},
	["race.troll.journey.w02.01"] = {
		"Su, su! Guarda lì sotto, tutto così piccolo. Da quassù non fa tanta paura, eh?",
		"Si parte! Quassù il vento è forte, meglio reggersi bene.",
	},
	["weather_change.w02.01"] = {
		"alza gli occhi mentre il cielo cambia umore, poi stringe una cinghia e riprende a camminare senza commenti.",
		"guarda il cielo che cambia, si sistema lo zaino più in alto sulle spalle e prosegue.",
	},
	["journey.w04.001"] = {
		"Non resta che stare {g:seduto|seduta} e lasciarsi portare. Avevo dimenticato quanto sia raro.",
		"Per una volta la strada è un problema di qualcun altro. Io mi tengo forte e guardo.",
		"Niente redini in mano, nessun sentiero da scegliere. Strano quanto riposi non avere voce in capitolo.",
	},
	["journey.w04.002"] = {
		"Piano, piano. Dicono che il trucco sia non guardare giù. Dicono tante cose.",
		"Ali, cinghie e sotto niente. Ho accettato cose più strane, anche se adesso non me ne viene in mente nessuna.",
	},
	["journey.w04.003"] = {
		"si sistema in sella mentre le ali trovano il loro ritmo, e il suolo laggiù comincia a sembrare affare di qualcun altro.",
		"stringe l'imbracatura mentre il battito di grandi ali {g:lo|la} solleva lontano dal posatoio.",
		"sale su colpi d'ala regolari, e tutto ciò che un momento fa era grande diventa qualcosa da coprire con un pollice.",
	},
	["journey.w04.004"] = {
		"Quassù nessuno può chiedermi niente. Il soffio dell'aria si porta via ogni voce.",
		"Da quassù ogni guaio là sotto sembra della stessa misura. Piccolo, e di qualcun altro.",
		"Per un po' nessuno può raggiungermi. È quanto di più vicino al silenzio mi sarà concesso.",
	},
	["journey.w04.005"] = {
		"Si parte! Chi ha caricato il mio stomaco controlli che sia ancora a bordo.",
		"E su! Se urlo, è entusiasmo. Più o meno.",
	},
	["journey.w04.006"] = {
		"Le mie gambe se lo sono guadagnato. Che per un po' siano le ali a camminare.",
		"Bene. Ogni lega fatta quassù è una lega con cui i piedi non devono discutere.",
	},
	["journey.w04.007"] = {
		"Da terra il mondo non sembra mai così semplice. So che è un inganno. Me lo godo lo stesso.",
		"Quassù tutto quello che c'è sotto combacia, come se qualcuno l'avesse progettato. Non è così, ma è bello far finta.",
	},
	["journey.w04.008"] = {
		"si piega nella prima ampia virata senza volerlo, e poi finge di averlo fatto apposta.",
		"tiene una mano sulla cinghia e l'altra libera, come per salutare qualcosa laggiù, e non lo fa.",
	},
	["journey.w04.009"] = {
		"Il terreno mi torna incontro, come fa sempre. Grazie, terreno.",
		"Giù. Le ginocchia non ne sono ancora convinte, ma il resto di me è contento.",
		"Prima i piedi, poi il resto di me li raggiunge. {g:Atterrato|Atterrata}.",
	},
	["journey.w04.010"] = {
		"scivola giù dalla sella e resta un momento immobile, lasciando che il ronzio delle ali si spenga nelle orecchie.",
		"scende con le gambe rigide, e si scioglie il crampo da una gamba prima di fidarsi a caricarci il peso.",
		"atterra, si slaccia le cinghie e lancia al cielo un'ultima occhiata da sopra la spalla, come per accertarsi che resti lassù.",
	},
	["journey.w04.011"] = {
		"Dita, piedi, zaino. Tutto presente. Lo chiamerei un buon volo.",
		"A terra tutto d'un pezzo: è l'unico giudizio che serve a un volo.",
		"Ecco. A terra, con tutto attaccato e solo un po' in disordine.",
	},
	["journey.w04.012"] = {
		"Si torna al passo di chi va a piedi. Le cose hanno di nuovo la loro misura, e io pure.",
		"Da lassù sembrava tutto così in ordine. Quaggiù si torna agli stivali e al giro lungo.",
	},
	["journey.w04.013"] = {
		"Bene, allora. Dov'è il posto più vicino che non si muova sotto i piedi?",
		"Giù. Adesso indicatemi quello che mi ha portato fin qui.",
	},
	["journey.w04.014"] = {
		"scende al termine del lungo volo con il dolore della sella in ogni giuntura, e si stira finché qualcosa non scricchiola.",
		"torna a terra dopo la lunga traversata con le giunture rigide, e cammina un po' in piccoli cerchi per ricordarsi come funzionano le gambe.",
	},
	["journey.w04.015"] = {
		"È durato abbastanza perché le gambe presentassero un reclamo. Lo stanno presentando adesso.",
		"Così tanto cielo alle spalle che la terra sembra una novità.",
	},
	["journey.w04.016"] = {
		"Aria diversa, voci diverse. Niente cambia il quadro intero in fretta come un volo.",
		"Sono {g:arrivato|arrivata} più in fretta di quanto le mie preoccupazioni potessero seguirmi. Godiamoci il vantaggio finché dura.",
	},
	["journey.w04.017"] = {
		"Le ali tornano da dove sono venute, e restano a me la terra e i miei due piedi. È giusto così.",
		"Giù, e si torna al vecchio sodalizio: io e la strada.",
	},
	["landmark.w04.001"] = {
		"{landmark}. Un nome che qualcuno ha ritenuto valesse la pena di dare. Il minimo è dedicargli un momento d'attenzione.",
		"{landmark}. Qualcuno ci teneva abbastanza a questo posto da dargli un nome. Merita sempre un'occhiata.",
		"Dunque è qui {landmark}. Il posto è più piccolo del suo nome, o più grande. Non ha mai proprio la stessa misura del nome.",
	},
	["landmark.w04.002"] = {
		"osserva {landmark} con uno sguardo lento, come si studia un volto per riconoscerlo in seguito.",
		"imprime nella memoria l'aspetto di {landmark}, un dettaglio alla volta, nel caso la strada riporti mai fin qui.",
		"si ferma e si volta piano tutt'intorno, per fissare dove si trova {landmark} rispetto al resto.",
	},
	["landmark.w04.003"] = {
		"{landmark}. Bene, allora esiste: un po' sospettavo che le mappe si inventassero le cose.",
		"Ah, {landmark}. Esattamente come promesso, più o meno.",
		"{landmark}. Valeva la strada? Chiedimelo di nuovo quando avrò dato un'occhiata in giro.",
	},
	["landmark.w04.004"] = {
		"{landmark}. Fa piacere avere sulla mappa qualcosa su cui posso mettere il dito.",
		"{landmark}. Un punto fermo, almeno. Il resto della giornata può sistemarsi attorno.",
		"{landmark}. Adesso so dove mi trovo, il che è più di quanto potessi dire poco fa.",
	},
	["landmark.w04.005"] = {
		"squadra {landmark} con interesse franco e senza fretta, come si fa con una conoscenza appena fatta.",
		"giunge a {landmark} e, prima di ogni altra cosa, concede al luogo la cortesia di uno sguardo come si deve.",
	},
	["quest_complete.w04.001"] = {
		"Di nuovo a mani vuote. Strano quanto siano più leggere di quando erano piene degli affari di un altro.",
		"Non ho più in mano niente che appartenga ad altri. È un buon modo di stare al mondo.",
		"Le mani sono di nuovo mie. Avevo dimenticato che effetto fa.",
	},
	["quest_complete.w04.002"] = {
		"Fatto. Vorrei che lo si scrivesse da qualche parte, possibilmente a lettere grandi.",
		"Finito, e nessuno ha dovuto riportarmi a casa in spalla. Segnatevi la data.",
		"Sistemato. Se si scuce di nuovo, preferirei non saperlo.",
	},
	["quest_complete.w04.003"] = {
		"lascia andare quel che resta dell'incarico in un lungo respiro, e fa ruotare una spalla indolenzita.",
		"si raddrizza dopo la consegna e per un momento resta lì, senza dovere niente a nessuno.",
	},
	["quest_complete.w04.004"] = {
		"I dettagli se ne vanno già. Fra un mese ricorderò di averlo fatto, e poco del come.",
		"Strano quanto in fretta un lavoro finito si sfuma ai bordi. Presto sarà una delle tante cose fatte un tempo.",
		"Presto dimenticherò com'era fatto questo incarico. Il dolore alle gambe me lo ricorderà un giorno o due in più.",
	},
	["quest_complete.w04.005"] = {
		"Avevo dato la mia parola, e ora è mantenuta. Una parola serve solo a questo.",
		"Avevo detto che l'avrei portato a termine. Così è stato. Non c'è altro da aggiungere.",
		"Promesso, e consegnato. Che la mia fama si riduca a questo, e mi basta.",
	},
	["quest_complete.w04.006"] = {
		"Ogni volta che ne finisco uno mi dico che era l'ultimo favore. E ogni volta mi racconto una bugia.",
		"Continuo a dire che smetterò di fare commissioni per gli sconosciuti. Gli sconosciuti continuano ad averne.",
		"Un altro favore a un altro sconosciuto. Di questo passo conoscerò mezzo mondo dai suoi guai.",
	},
	["quest_complete.w04.007"] = {
		"cerca di avere l'aria modesta, e non ci riesce del tutto.",
		"indossa per l'occasione un'espressione modesta, che {g:gli|le} sta come un paio di stivali presi in prestito.",
	},
	["quest_complete.w04.008"] = {
		"Un lavoro piccolo, forse. Ma il mondo è fatto soprattutto di lavori piccoli, e qualcuno deve farli bene.",
		"Nessuno ci comporrà una canzone. Meglio così: le cose che valgono di rado hanno canzoni.",
		"Non cambierà il mondo. Ne ha cambiato un angolo, per un po', e lì c'ero io.",
	},
	["quest_complete.w04.009"] = {
		"Bene. Questo è depennato. Il resto della lista può aspettare che smettano di farmi male i piedi.",
		"Bene. Fatto. Che nessuno mi chieda niente per un po'.",
		"Finito. Chi ha un altro lavoro per me può mettersi in fila.",
	},
	["quest_complete.w04.010"] = {
		"Un incarico è una strada di cui si vede la fine. Questa l'ho percorsa fino in fondo. Le altre curvano ancora fuori vista.",
		"Ogni cosa che porto a termine è una pietra miliare, e comincio ad averne una lunga fila alle spalle.",
	},
	["quest_complete.w04.011"] = {
		"si passa i palmi sul davanti dell'equipaggiamento, come se l'incarico vi avesse lasciato qualcosa, e va avanti.",
		"piega piano le dita di una mano, come fa un artigiano alla fine di un lavoro.",
	},
	["quest_complete.w04.012"] = {
		"Sembrano sempre così sorpresi quando la cosa è fatta davvero. Cerco di non prenderla sul personale.",
		"Quella faccia che fa la gente quando torni a lavoro finito: metà sollievo, metà incredulità. Le colleziono.",
		"Ogni volta la stessa occhiata: come se un po' si aspettassero di non rivedermi più.",
	},
	["quest_complete.w04.013"] = {
		"Un'altra. Aggiungetela al conto, se qualcuno lo tiene.",
		"Ecco come si fa. Ricordatevi chi l'ha fatto.",
		"Scrivetelo. Questa voglio che la si ricordi.",
	},
	["quest_complete.w04.014"] = {
		"Fatto, e nessuno a cui raccontarlo che capirebbe quanto è costato. Va bene così. Lo so io.",
		"È il silenzio dopo un lavoro finito, quello a cui non mi abituo. Ognuno torna alla sua giornata, e devo farlo anch'io.",
		"La fine di un incarico è un piccolo momento di solitudine. Passa. Passano sempre.",
	},
	["quest_complete.w04.015"] = {
		"fa un breve cenno formale, di quelli che chiudono un conto fra due parti.",
		"china il capo una volta, e la faccenda si chiude con la stessa poca cerimonia con cui si era aperta.",
	},
	["quest_complete.w04.016"] = {
		"Bene. Adesso posso tornare a pensare al cibo, cosa che lo stomaco mi suggerisce da un pezzo.",
		"Un incarico in meno. Lo stomaco ha avuto molta pazienza, e adesso reclama la sua parte.",
		"Prima l'incarico, poi il resto di me. E il resto di me vorrebbe mangiare.",
	},
	["quest_complete.w04.017"] = {
		"Qualcosa in me è un po' più saldo di quando ho accettato questo incarico. Tengo quello, e lascio il resto.",
		"Qualunque cosa fossi quando l'ho accettato, adesso sono un po' di più. Non molto. Abbastanza.",
	},
	["quest_complete.w04.018"] = {
		"Niente discorsi. Basterebbero un semplice 'ben fatto' e una sedia.",
		"Non ringraziatemi tutti insieme. Anzi, non ringraziatemi affatto. Indicatemi solo dove sedermi.",
		"Per favore, niente cerimonie. Mi accontento di un cenno e di un posto tranquillo.",
	},
	["quest_complete.w04.019"] = {
		"Uno chiuso. Sento già il prossimo che mi tira per la manica.",
		"Finito, e già la prossima faccenda si schiarisce la voce alle mie spalle.",
		"È fatta? È fatta. Bene. E adesso, qual era la cosa dopo...",
	},
	["quest_complete.w04.020"] = {
		"batte due colpetti sul fianco dello zaino, piccola abitudine da viandante quando una cosa finisce e l'altra non è ancora cominciata.",
		"lancia un'ultima occhiata alla strada che l'incarico ha preso, come per fissarla in mente, poi si volta dall'altra parte.",
	},
	["quest_complete.w04.021"] = {
		"So un po' di più di quest'angolo di mondo rispetto a prima. Quella parte nessuno me l'ha pagata, ed è quella che terrò.",
		"Qualunque altra cosa fosse, è stata una lezione su come vanno le cose da queste parti. La ricorderò più a lungo della ricompensa.",
	},
	["quest_complete.w04.022"] = {
		"E con questo è fatta. Avanti con quel che viene.",
		"Finito. Non fingerò che sia stato difficile, né che sia stato niente.",
		"È fatta. Lo rifarei, ma preferirei non doverlo fare.",
	},
	["quest_complete.w04.023"] = {
		"Quando consegno queste cose non so mai se ho chiuso i guai di qualcuno o se li ho solo spostati più in là.",
		"Concluso. Se servirà ad aggiustare qualcosa, ormai non dipende più da me. Spero di sì.",
	},
	["quest_complete.w04.024"] = {
		"conta un momento sulle dita, perde il filo, e decide che è stata comunque una buona giornata di lavoro.",
		"si guarda attorno come aspettando una fanfara, non ne trova, e ne sembra {g:sollevato|sollevata}.",
		"fa un cenno del capo a nessuno in particolare, come capita quando ci si stupisce un poco di sé.",
	},
	["quest_complete.w04.025"] = {
		"C'è sempre un punto in cui un incarico si può lasciar cadere. Questo non l'ho lasciato cadere. Vale qualcosa.",
		"Sarebbe stato facile andarsene a metà. Lo sarebbe quasi sempre. Non l'ho fatto.",
	},
	["quest_complete.w04.026"] = {
		"Mi fa piacere aver dato una mano. Davvero. Capita abbastanza di rado da meritare di dirlo ad alta voce.",
		"Mi fa piacere che abbiate chiesto proprio a me. Non è poco.",
	},
	["quest_complete.w04.027"] = {
		"Metà è stata camminare, un quarto aspettare, e del resto preferisco non parlare. Comunque, fatto.",
		"Se mettessi per iscritto com'è andata davvero, nessuno mi assumerebbe più. Per fortuna nessuno lo chiede.",
		"È andata più o meno secondo i piani, se i piani erano soprattutto improvvisare. Fatto è fatto.",
	},
	["quest_complete.w04.028"] = {
		"resta un momento fra un incarico e l'altro, in quel breve spazio libero che non appartiene a nessun altro.",
		"indugia un respiro più del necessario, come se la fine di un incarico fosse una soglia su cui valga la pena di fermarsi.",
	},
	["quest_complete.w04.029"] = {
		"È una bella sensazione, una cosa finita. Dovrei collezionarne di più.",
		"Niente di grandioso. Solo una cosa che era rotta e adesso no, o che mancava e adesso c'è. Me la prendo.",
	},
	["quest_complete.w04.030"] = {
		"La prossima volta che qualcuno mi dice 'ci vorrà solo un attimo', mi porto un testimone.",
		"Ogni incarico comincia come 'un piccolo favore'. Sto imparando a tradurre.",
	},
	["quest_complete.w04.031"] = {
		"Un nodo in meno nel groviglio del mondo. Non dirò che il groviglio se ne sia accorto.",
		"Ogni incarico finito è un nodo sciolto. Il mondo ne ha ancora tanti, ma questo adesso pende libero.",
	},
	["quest_complete.w04.032"] = {
		"sposta il peso da un piede dolente all'altro, a incarico concluso, e non ha nessuna fretta di andarsene.",
		"lascia scendere le spalle di un buon dito, come se qualcuno avesse appena tagliato una cinghia.",
	},
	["quest_complete.w04.033"] = {
		"Di nuovo {g:libero|libera}, per un momento. In tasca nessuna commissione altrui. La mappa è tutta mia finché non accetto qualcos'altro.",
		"È il momento migliore: quel breve tratto in cui non appartengo a nessun incarico.",
	},
	["quest_progress.w04.001"] = {
		"Almeno una parte. Il resto è là fuori, e non ha nessuna fretta di venirmi incontro.",
		"Questo pezzo è fatto. Gli altri pezzi stanno facendo i capricci.",
		"Si avanza. Non tutto, ma il tutto non arriva mai in una volta sola.",
	},
	["quest_progress.w04.002"] = {
		"spunta l'ultima voce dell'elenco e si gira, già col pensiero al ritorno.",
		"conclude l'ultima parte dell'incarico: del lavoro resta soltanto la via del ritorno.",
	},
	["quest_progress.w04.003"] = {
		"Questa parte è fatta. Non fermarti adesso, è solo mezzo lavoro.",
		"Bene. C'è ancora qualcosa in sospeso, ma bene.",
		"Ci siamo quasi? No. Ma ci si avvicina.",
	},
	["subzone_enter.w04.001"] = {
		"oltrepassa un confine senza segni ed entra a {subzone}, e ricomincia da capo a notare le cose.",
		"entra a {subzone} con lo sguardo attento e senza fretta di chi fa il punto della situazione.",
		"entra a {subzone} e rallenta appena, come fa chiunque quando un posto cambia nome.",
	},
	["subzone_enter.w04.002"] = {
		"{subzone}. Stesso mondo, nome diverso. Vediamo se il nome se lo merita.",
		"Qui comincia {subzone}, se c'è da credere alla mappa. Sui nomi, le mappe di solito hanno ragione.",
		"{subzone}. Un altro titolo sulla pagina della giornata.",
	},
	["subzone_enter.w04.003"] = {
		"{subzone}. Bel nome. Speriamo che il posto ne sia all'altezza, o almeno che non morda.",
		"Ah, {subzone}. Se si comporta bene, mi comporto bene anch'io.",
		"{subzone}! Qualcuno si è preso la briga di battezzare questo posto. Scopriamo perché.",
	},
	["subzone_enter.w04.004"] = {
		"Ogni nome sulla mappa è stato, un tempo, il mondo intero di qualcuno. Anche {subzone}, immagino.",
		"{subzone}. Chissà quanta gente è entrata qui pensando a tutt'altro, come me.",
		"{subzone}. La casa di qualcuno, la scorciatoia di qualcun altro, il brutto ricordo di un terzo. Oggi sono i miei prossimi passi.",
	},
	["subzone_enter.w04.005"] = {
		"prende nota del nome {subzone} con la vaga soddisfazione di chi spunta un elenco.",
		"registra {subzone} con un piccolo cenno, come un saluto di passaggio.",
	},
	["subzone_enter.w04.006"] = {
		"{subzone}. Prendo nota del nome, delle vie d'entrata e di quelle d'uscita. Il resto può aspettare.",
		"{subzone}. Prima cosa, in qualunque posto: dove sono le uscite. Seconda: chi altro c'è.",
		"{subzone}. Prima com'è fatto il posto, le opinioni dopo.",
	},
	["subzone_enter.w04.007"] = {
		"{subzone}. D'accordo. Occhi aperti e mani vicine a qualcosa da afferrare.",
		"{subzone}, eh? Non cambia il motivo per cui sono qui.",
		"{subzone}. Attenzione a dove si mettono i piedi, e a chi c'è intorno.",
	},
	["subzone_enter.w04.008"] = {
		"{subzone}. Un altro nome che mi porterò via da qui, che lo voglia o no.",
		"I nomi si accumulano alle mie spalle. {subzone} va sul mucchio, e io continuo a camminare.",
	},
	["subzone_enter.w04.009"] = {
		"si ferma al margine di {subzone} come si aspetta alla porta di uno sconosciuto, poi entra.",
		"prima ascolta {subzone}, e solo dopo guarda: il suono di un posto dice parecchio.",
	},
	["subzone_enter.w04.010"] = {
		"{subzone}. Chi ha scelto questo nome aveva un'anima da poeta, o aveva finito le idee. Difficile dire quale delle due.",
		"{subzone}. Bel nome. Conosco gente che ne ha di peggiori.",
		"{subzone}. Qualcuno un giorno si è fermato qui e ha pensato: sì, come nome può andare.",
	},
	["subzone_enter.w04.011"] = {
		"{subzone}. Qualunque cosa aspetti qui dentro, mi troverà {g:pronto|pronta}.",
		"Dentro {subzone}. Calma, e niente sorprese.",
		"{subzone}. Sono {g:entrato|entrata} in posti peggiori. Probabilmente.",
	},
	["subzone_enter.w04.012"] = {
		"abbraccia {subzone} con occhiate rapide: com'è fatto, la gente, se ce n'è, e le vie più probabili per passarci attraverso.",
		"legge {subzone} come un battitore legge il terreno, in fretta e senza darlo a vedere.",
		"misura {subzone} con un'unica occhiata circolare, e mette via l'impressione.",
	},
	["subzone_enter.w04.013"] = {
		"{subzone}. Speriamo che sia gentile. I posti di solito lo sono, se non gli si chiede troppo.",
		"{subzone}. Sarò cortese con questo posto, e vediamo se ricambia.",
	},
	["subzone_enter.w04.014"] = {
		"{subzone}. Mi fido sulla parola, come per quasi tutti i nomi.",
		"{subzone}, dice la mappa. La mappa ha sbagliato altre volte, ma non su questo genere di cose.",
		"{subzone}. Sospendo il giudizio finché qualcosa non prova a mangiarmi.",
	},
	["subzone_enter.w04.015"] = {
		"Ogni luogo tiene qualcosa per sé, con chi è solo di passaggio. Mi chiedo che cosa tenga {subzone}.",
		"{subzone}. C'è sempre di più in un posto di quanto mostri a chi lo attraversa una volta. A me toccherà solo la superficie.",
	},
	["subzone_enter.w04.016"] = {
		"raddrizza le spalle all'inizio di {subzone}, più per abitudine che per bisogno.",
		"si sistema lo zaino ed entra a {subzone} come chi arriva al lavoro.",
	},
	["subzone_enter.w04.017"] = {
		"{subzone}. Bene. Mi piacciono i posti che si presentano subito col loro nome.",
		"{subzone}. Almeno questo posto si presenta. Più di quanto sappia fare certa gente.",
	},
	["subzone_enter.w04.018"] = {
		"{subzone}. Annotato. Avanti.",
		"{subzone}. Un nome in più per la strada. Avanti, senza fermarsi.",
	},
	["subzone_enter.w04.019"] = {
		"pronuncia il nome {subzone} sottovoce, una volta, come per sentire che effetto fa sulla lingua.",
		"muove le labbra sul nome {subzone}, senza voce, come si fa quando lo si vuole ricordare.",
	},
	["subzone_enter.w04.020"] = {
		"{subzone}. Il mondo continua a dividersi in pezzi con un nome. È una cosa che mi piace.",
		"{subzone}. Un nome è la promessa che qui qualcosa contava per qualcuno. Terrò gli occhi aperti per scoprirlo.",
	},
	["subzone_enter.w04.021"] = {
		"entra a {subzone} senza cerimonie, con la mano mai troppo lontana da dove potrebbe servire.",
		"si addentra in {subzone} con la semplice cautela di chi è entrato in abbastanza posti da sapere come vanno.",
	},
	["subzone_enter.w04.022"] = {
		"{subzone}. Un nome diverso, e sempre io che ci entro.",
		"{subzone}. I posti cambiano più in fretta di me. Forse è questo il senso del camminare.",
	},
	["subzone_enter.w04.023"] = {
		"Salve, {subzone}. Vediamo di andare d'accordo.",
		"Ciao, {subzone}. Cercherò di non combinare disastri.",
	},
	["weather_change.w04.001"] = {
		"si ferma ad annusare l'aria come un contadino al limite del campo, poi annuisce, come se avesse avuto una risposta.",
		"alza il viso verso l'aria cambiata per un momento, e la legge come certa gente legge una lettera.",
		"socchiude gli occhi verso l'alto, poi torna a badare al terreno sotto i piedi.",
	},
	["weather_change.w04.002"] = {
		"Il cielo ha voltato pagina. Non avevo letto abbastanza bene la precedente per capire che cosa sia cambiato.",
		"Lassù qualcosa ha deciso senza di me. Col cielo di solito va così.",
		"L'aria sulla pelle non è più quella di un momento fa. Il mondo tiene per sé le sue ragioni, e cambia lo stesso.",
	},
	["weather_change.w04.003"] = {
		"Ecco, ci siamo. Qualunque cosa abbia in mente, io sono {g:vestito|vestita} per tutt'altro.",
		"Il cielo ha cambiato programma. Nessuno mi ha avvisato, come al solito.",
		"Beh, questo è diverso. Quello di prima mi andava benissimo, ma nessuno me l'ha chiesto.",
	},
	["weather_change.w04.004"] = {
		"Il cielo fa quel che vuole. La strada è lunga uguale in ogni caso.",
		"È cambiato, eh? Ai miei stivali non importa, e ho deciso di dar ragione ai miei stivali.",
		"Qualunque cosa arrivi, a lamentarsi la strada non si accorcia.",
	},
	["weather_change.w04.005"] = {
		"si stringe un po' l'equipaggiamento, o lo allenta un po', come chiede l'aria cambiata.",
		"si ferma mentre l'aria cambia tutt'intorno, come aspettando di essere {g:sicuro|sicura} che il cambiamento resti.",
	},
	["weather_change.w04.006"] = {
		"Lassù tutto si sta risistemando, in silenzio. Invidio quanto poco chiasso faccia.",
		"Un cambiamento nell'aria, e qualcosa in me cambia con lui, un poco. Non so mai in quale direzione.",
		"Il cielo passa ad altro, e mi accorgo che non gli stavo prestando alcuna attenzione.",
	},
	["weather_change.w04.007"] = {
		"Cielo diverso, stessi stivali, stessa strada. Avanti.",
		"L'aria è girata. Non c'è altro da fare che prenderne nota e andare avanti.",
	},
	["race.dwarf.journey.w08.001"] = {
		"La terra lascia andare i miei stivali. Fra un nano e la terra c'è un patto, e questo lo rompe.",
		"Su. Ogni istinto che ho grida che la roccia deve stare proprio sotto di me, non tanto più in basso.",
		"Ancora una volta senza terra sotto. Conto le cinghie, poi le riconto, poi fingo di non contarle.",
	},
	["race.dwarf.journey.w08.002"] = {
		"stringe la sella con entrambe le mani e tiene gli occhi fissi davanti a sé, la mascella serrata come un portone chiuso.",
		"si sistema in sella con la cupa pazienza di un nano che ha deciso di non guardare giù.",
		"si tiene forte mentre la terra si allontana, borbottando qualcosa che potrebbe essere una preghiera o un elenco di lamentele.",
	},
	["race.dwarf.journey.w08.003"] = {
		"Calma, bestia. Nessuno dei due vuole scoprire quanto pesa un nano da quassù.",
		"Si parte. Se scendo prima del tempo, dite che è stata colpa del volo, non mia.",
		"Vola dritto, e all'osteria dirò solo cose belle di te.",
	},
	["race.dwarf.journey.w08.004"] = {
		"Da quassù la terra sembra intatta, ogni collina intera e mai scavata. Un nano non può fare a meno di contare cosa c'è sotto.",
		"Il mondo visto dall'alto è tutto superficie e niente profondità. Io la so più lunga: so cosa tengono le colline là sotto.",
	},
	["race.dwarf.journey.w08.005"] = {
		"Chi per primo ha legato un nano a una bestia volante doveva aver perso una scommessa. Vorrei scambiarci due parole.",
		"Lascio volare la bestia. Il mio compito è tenermi forte e pensare alle cantine.",
	},
	["race.dwarf.journey.w08.006"] = {
		"Di nuovo terra sotto gli stivali. Le ginocchia stanno dicendo al resto di me che non lo rifaremo mai più. Mentono, ma è un pensiero gentile.",
		"Giù. La terra si riprende il mio peso senza una parola, come se non l'avessi mai lasciata.",
		"Su terreno solido. Ogni osso di un nano tira un sospiro nello stesso istante, quando torna la terra.",
	},
	["race.dwarf.journey.w08.007"] = {
		"scivola giù dalla sella e batte forte i piedi, due volte, come per assicurarsi che il terreno non si sia ammorbidito nel frattempo.",
		"scende, fa ruotare le spalle e dà una pacca alla cosa solida più vicina, con un sollievo che non nasconde.",
		"tocca terra, controlla ogni fibbia e ogni cinghia con il sospetto dell'artigiano, e solo allora molla la presa.",
	},
	["race.dwarf.journey.w08.008"] = {
		"Grazie, bestia. Voli bene, e spero di non rivederti mai più, fino alla prossima volta.",
		"Giù. Qualcuno mi trovi uno sgabello e un boccale, in quest'ordine o nell'altro.",
		"Finalmente giù. La prossima volta prendo la strada lunga, vesciche comprese.",
	},
	["race.dwarf.journey.w08.009"] = {
		"I Wildhammer la chiamerebbero un piacevole saltello. I Wildhammer hanno qualcosa di allentato fra le orecchie.",
		"I Wildhammer vivono così ogni giorno, aria nelle trecce e niente sotto i piedi. Parenti o no, non li capisco.",
	},
	["race.dwarf.quest_complete.w08.001"] = {
		"Fatto, e fatto come si deve. Segnate un giro sul mio conto alla Thunderbrew: la sete me la sono guadagnata.",
		"Ecco il tuo lavoro, finito. Adesso indicami il barile più vicino, prima che la gola mi diventi ghiaia.",
		"Finito. La mia sete ha aspettato buona buona per tutto il tempo, e adesso vuole la sua paga anche lei.",
	},
	["race.dwarf.quest_complete.w08.002"] = {
		"I muratori di Ironforge danno un colpetto alla pietra prima di posarla, per sentire se suona giusta. Questa l'ho battuta. Suonava.",
		"A Ironforge nessuno posa un blocco prima di averci bussato sopra e aver ascoltato. Ho bussato, ho ascoltato, ed è al suo posto.",
	},
	["race.dwarf.quest_complete.w08.003"] = {
		"fa un cenno deciso e si batte il pugno sul petto, come chi bussa su un muro solido per sentire che regge.",
		"infila i pollici nella cintura e dondola sui talloni, con l'aria di un birraio che assaggia una cotta venuta bene.",
	},
	["race.dwarf.quest_complete.w08.004"] = {
		"Tutto finito, e senza che esplodesse un solo aggeggio gnomesco. Qualcuno si segni la data.",
		"Finito, e niente ha preso fuoco. Un ingegnere gnomo la chiamerebbe una giornata deludente.",
	},
	["race.dwarf.quest_complete.w08.005"] = {
		"Ironforge ha aperto le porte a un popolo intero quando Gnomeregan è andata perduta. In confronto un incarico così è niente, ma l'abitudine è la stessa.",
		"Quando gli gnomi hanno perso la loro città, Ironforge ha fatto posto a tutti. Dare una mano col guaio di qualcuno è la stessa cosa, solo più piccola.",
	},
	["race.dwarf.quest_complete.w08.006"] = {
		"Un'altra pietra nel muro del nome dei nani! Piccola, d'accordo, ma regge!",
		"Che si racconti in giro: {g:un nano|una nana} l'ha portato a termine, fino all'ultimo chiodo!",
		"Khaz Modan alleva gente che le cose le finisce. Eccone la prova, firmata e sigillata!",
	},
	["race.dwarf.quest_complete.w08.007"] = {
		"Fatto, e le gambe mi riferiscono ogni collina, una per una. I nani sono fatti per le gallerie, non per tutto questo saliscendi.",
		"Finito. Gambe corte e strade lunghe: chiunque abbia dato forma ai nani non aveva previsto tanto camminare.",
	},
	["race.dwarf.quest_complete.w08.008"] = {
		"Non ringraziarmi, pagami. Poi ringrazia pure, se ti va ancora.",
		"Prima le monete, poi le belle parole, e la birra per ultima. È l'ordine giusto.",
		"Il discorso tienilo per la taverna. Ascolto meglio con un boccale in pugno.",
	},
	["race.dwarf.quest_complete.w08.009"] = {
		"I cronisti di Ironforge raccontano che un tempo tre clan dilaniarono la montagna per un trono. {g:Un nano|Una nana} che finisce un lavoro onesto per altra gente è una storia migliore.",
		"La Guerra dei Tre Martelli, la chiamano le cronache: nani contro nani per decidere chi dovesse regnare. Preferirei essere {g:ricordato|ricordata} per lavori come questo.",
	},
	["race.dwarf.quest_complete.w08.010"] = {
		"dà una pacca al borsello alla cintura dove ora sta la ricompensa, come un minatore che batte la mano su un carrello pieno di minerale buono.",
		"soppesa la ricompensa in una mano larga, emette un grugnito che potrebbe essere approvazione, e la mette via.",
		"ripone la ricompensa con la cura di un gioielliere che impacchetta pietre grezze.",
	},
	["race.dwarf.quest_complete.w08.011"] = {
		"Finito! Qualcuno a Kharanos mi deve una scura, solo che ancora non lo sa.",
		"Tutto fatto. I birrai di Dun Morogh non c'entrano niente, ma i miei soldi se li prenderanno comunque loro.",
	},
	["race.dwarf.quest_complete.w08.012"] = {
		"Minerale grezzo dentro, ferro buono fuori. Un incarico è come una fusione: quasi tutto è calore e pazienza, il resto è sapere quando smettere.",
		"Come una colata alla forgia: per un bel pezzo sembrava solo scoria, e poi è venuta fuori pulita.",
		"Il buon lavoro è come il buon minerale: non lo riconosci finché non è passato dal fuoco. Questo ne è uscito.",
	},
	["race.dwarf.quest_complete.w08.013"] = {
		"Felice di dare una mano. Se mai passi da Ironforge, chiedi di un nano con la polvere sugli stivali. Così restringi il campo a tutti quanti.",
		"Un piacere darti una mano. Cercami a Ironforge, prima o poi, e ti mostro dove si nasconde la birra buona.",
	},
	["race.dwarf.quest_complete.w08.014"] = {
		"Ovunque si faccia il lavoro, conta per la montagna. È quello che mi ripeto, almeno.",
		"Vicina o lontana che sia Ironforge, qualcuno sotto tutta quella pietra annuirebbe davanti a questo. Mi basta.",
		"La montagna non lo vede, ma approverebbe. È così che misuro le cose.",
	},
	["race.dwarf.quest_complete.w08.015"] = {
		"Finito. Ci è voluto più del dovuto, ma meno di quanto ci avrebbe messo un elfo.",
		"Sistemato. Un umano ci vorrebbe una canzone sopra. Uno gnomo, un diagramma. A me basta la cena.",
	},
	["race.dwarf.quest_complete.w08.016"] = {
		"Una promessa mantenuta è una pietra che non si sposta. Mettine insieme abbastanza e hai qualcosa a cui la gente può appoggiarsi.",
		"Parola data, parola mantenuta. Per la gente semplice di Dun Morogh, è tutta qui la legge dei nani.",
		"Avevo detto che l'avrei fatto, ed è fatto. La pietra non mercanteggia, e nemmeno dovrebbe farlo la parola di un nano.",
	},
	["race.dwarf.quest_complete.w08.017"] = {
		"lascia andare un lungo respiro dal naso, di quelli che un nano tiene da parte per la fine di una lunga fatica.",
		"si stira finché la schiena non dà uno schiocco sonoro, e la cosa sembra dare una gran soddisfazione.",
		"pianta i pugni sui fianchi e squadra la faccenda conclusa come un caposquadra a fine turno.",
	},
	["race.dwarf.quest_complete.w08.018"] = {
		"Sistemato. Se si allenta di nuovo, mandate a chiamare un nano.",
		"Questo regge. L'ho fatto alla maniera di Ironforge: semplice, pesante, e fatto per durare.",
	},
	["race.dwarf.quest_complete.w08.019"] = {
		"L'Explorers' League scava mezzo mondo per chiedersi da dove vengono i nani. Io una risposta non ce l'ho, ma so cosa fanno i nani: finiscono il lavoro.",
		"Forse i Titani ci hanno plasmati nella pietra, come sospetta l'Explorers' League. Se è così, l'hanno fatto perché portassimo a termine le cose.",
	},
	["race.dwarf.quest_complete.w08.020"] = {
		"Un piacere lavorare con te. Se ti serve ancora un paio di mani testarde, sai che tipo cercare.",
		"È stato un piacere. La prossima volta che hai un problema troppo pesante da spostare, cerca qualcuno basso e irragionevole.",
		"Bene che sia sistemato. Se il guaio torna a farsi vivo, sai dove trovare un nano: di solito vicino alla birra.",
	},
	["race.dwarf.quest_complete.w08.021"] = {
		"Finalmente fatto. La pietra è onesta: ti dice chiaro dove si spaccherà. Certe commissioni avrebbero da imparare.",
		"Finito. Sottoterra è tutto più semplice; in mezzo agli altri anche una commissione ha curve e gallerie laterali.",
	},
	["race.dwarf.quest_complete.w08.022"] = {
		"Se re Magni chiede di me, ditegli che mi tengo {g:occupato|occupata} e che il nome lo tengo pulito.",
		"Un'altra buona parola per Ironforge. Magni non lo saprà mai, ma è guadagnata lo stesso.",
	},
	["race.dwarf.quest_complete.w08.023"] = {
		"I nani hanno gettato il Thandol Span su una gola in cui la maggior parte della gente non osa nemmeno guardare. In confronto questo era un ponticello, ma l'ho attraversato.",
		"Chi ha innalzato il Thandol Span non si è fermato a metà perché il salto era profondo. Nemmeno io.",
	},
	["race.dwarf.quest_complete.w08.024"] = {
		"Fatto! Nemmeno un ariete di Dun Morogh ci sarebbe passato attraverso più in fretta, a testate.",
		"Finito, e quasi senza abbassare la testa. Gli arieti di Dun Morogh sarebbero fieri.",
	},
	["race.dwarf.quest_complete.w08.025"] = {
		"I Wildhammer l'avrebbero fatto in groppa a un grifone, e dopo ci avrebbero cantato sopra. La gente di Ironforge cammina, brontola, e arriva lo stesso.",
		"Un Wildhammer sarebbe arrivato in volo, avrebbe finito con un urlo e sarebbe ripartito. Ironforge le cose le fa a piedi, e per bene.",
	},
	["race.dwarf.quest_complete.w08.026"] = {
		"Per il martello e l'incudine, è fatta.",
		"Battuto, sagomato e temprato. Avanti il prossimo!",
		"Forgiato e rifinito. Qual è il prossimo pezzo sul banco?",
	},
	["race.dwarf.quest_complete.w08.027"] = {
		"socchiude un occhio e squadra il lavoro finito come un muratore che traguarda un muro in cerca della minima pendenza, e pare non trovarne.",
		"fa una breve risata dal naso e si scuote la polvere {g:dalla barba|dalle trecce}.",
	},
	["race.dwarf.quest_progress.w08.001"] = {
		"Una parte è fatta. Il resto è ancora sepolto da qualche parte, e i nani sanno scavare.",
		"A metà del filone. Avanti a picconare.",
		"Si va avanti. Non abbastanza per fermarsi a bere, ma abbastanza per pensarci.",
	},
	["race.dwarf.quest_progress.w08.002"] = {
		"Ecco tutto! Si torna indietro, e qualcuno farebbe bene a mettere su il bollitore. O a spillare il barile.",
		"Tutto quanto, raccolto e contato due volte. È ora di riscuotere.",
		"Qui ho finito. Ora la strada del ritorno, che per le gambe corte è sempre più lunga.",
	},
	["race.dwarf.quest_progress.w08.003"] = {
		"si ferma a contare sulle dita grosse quel che è fatto e quel che no, e grugnisce davanti al secondo numero.",
		"guarda il lavoro che resta come un minatore squadra la roccia ancora da sgomberare, poi rotea le spalle.",
		"borbotta un conto a mezza voce, nel modo asciutto di un nano che fa l'inventario.",
	},
	["race.dwarf.reputation_change.w08.001"] = {
		"Mi stimano un po' di più, adesso. Un buon nome è come una buona muratura: lento da tirare su, e ancora più lento a crollare, se è costruito bene.",
		"Un po' più di fiducia guadagnata. I nani si tengono un rancore per secoli; mi piace pensare che tengano un'amicizia altrettanto a lungo.",
		"Il mio nome suona meglio alle loro orecchie, adesso. A Ironforge direbbero che il metallo è stato saggiato e suona sano.",
	},
	["race.dwarf.rest_enter.w08.001"] = {
		"Un posto per riposare. Prima scopro chi versa da bere, poi se versa onestamente.",
		"Finalmente riposo. Gli stivali possono uscire, e le opinioni pure.",
		"Un posto dove sedersi e niente da combattere. Un nano chiede poco: una panca, un boccale, un muro alle spalle.",
	},
	["race.dwarf.rest_enter.w08.002"] = {
		"appoggia la schiena a un muro solido, lo saggia con una spalla, e solo allora si concede di sedersi.",
		"si lascia cadere su una panca vicino al focolare, batte una volta sul tavolo per buona fortuna, e lascia andare la strada.",
		"slaccia lo zaino, lo posa dove un piede può raggiungerlo, e si sistema con un lungo sospiro roco.",
	},
	["race.dwarf.rest_enter.w08.003"] = {
		"Mura sicure e il chiasso degli altri. Un nano riposa meglio con un po' di baccano intorno, come una forgia che lavora oltre il muro.",
		"Finalmente un posto dove posare le ossa. I nani hanno dormito sulla nuda roccia chiamandola comoda: questo andrà benissimo.",
	},
	["race.human.journey.w08.001"] = {
		"Si sale. La mia gente ha imparato ad arare, a costruire, a navigare. Nessuno ci ha mai insegnato a stare tranquilli in groppa a un animale che vola.",
		"Via da terra. Gli umani ci hanno messo secoli a imparare a stare a cavallo, e pochi istanti su questa sella mi riportano alle prime armi.",
		"Su. Stringo le cinghie come un aratore stringe le stegole in un terreno sassoso, e cerco di non guardare i campi che rimpiccioliscono.",
	},
	["race.human.journey.w08.002"] = {
		"Da quassù i campi non hanno steccati. Ogni lite per una pietra di confine sembra piccolissima vista dalla sella.",
		"La terra si allontana e si porta via i confini delle proprietà. Quassù un umano potrebbe farsi venire pensieri filosofici, se il vuoto sotto non distraesse tanto.",
	},
	["race.human.journey.w08.003"] = {
		"Si parte! Un giorno di cammino risparmiato per una manciata d'argento. Il miglior affare che una vita breve possa comprare.",
		"Su e via. Qualunque cosa sia costato, costa meno degli stivali che avrei consumato.",
	},
	["race.human.journey.w08.004"] = {
		"si sistema in sella con entrambe le mani ben salde sulle cinghie, e con il sorriso cortese e fisso di chi preferirebbe stare a cavallo.",
		"stringe le cinghie mentre la terra si allontana, e guarda con grande decisione l'orizzonte invece dei propri piedi.",
		"si curva contro la corrente d'aria, le nocche pallide sulle cinghie, e finge di ammirare il panorama.",
	},
	["race.human.journey.w08.005"] = {
		"Da quassù i villaggi sembrano giocattoli lasciati in giro: qualche tetto, un pozzo, un sentiero. Ognuno è il mondo intero di qualcuno.",
		"Sotto scorrono le fattorie, una dopo l'altra. Non riesco a non indovinare: terra buona, terra magra, una casa che se la cava, una che no.",
		"Laggiù probabilmente qualcuno mi sta guardando col naso all'insù e si chiede quanto costi un volo. Tieniti l'argento, amico: i piedi costano meno.",
	},
	["race.human.journey.w08.006"] = {
		"Giù, e ancora in un pezzo solo. Qualcuno mi indichi la locanda più vicina: le mie gambe hanno delle opinioni.",
		"Atterraggio fatto. Prima un bicchiere, poi una panca, poi penserò al coraggio.",
		"Terra. Allora, dove si trova un piatto caldo da queste parti, per un viandante stanco?",
	},
	["race.human.journey.w08.007"] = {
		"scivola giù dalla sella e batte entrambi i piedi a terra, come i marinai salutano il molo.",
		"scende con le gambe rigide, si massaggia le reni e dà alla bestia una pacca riconoscente, come si ringrazia un buon cavallo dopo una lunga strada.",
	},
	["race.human.journey.w08.008"] = {
		"Giù. Un giorno di strada fatto in un'ora. Gli umani non hanno mai abbastanza tempo; per una volta ne ho rubato un po'.",
		"Il volo è finito, e il tempo risparmiato posso spenderlo come voglio. Cercherò di spenderlo meglio del solito.",
	},
	["race.human.journey.w08.009"] = {
		"La terra. Meravigliosa, noiosa, immobile terra. Prometto di smettere di lamentarmi del fango. Almeno per un giorno.",
		"Una terra che non ondeggia. Gli umani non la apprezzano finché non ci hanno passato un'ora senza.",
	},
	["race.human.journey.w08.010"] = {
		"Giù. Chi per primo ha messo una sella su una bestia alata era molto coraggioso, o molto umano: impaziente, cioè.",
		"Solo un popolo dalla vita breve poteva salire su un animale volante per risparmiare mezza giornata. Ed eccomi qui a dimostrarlo.",
	},
	["race.human.quest_complete.w08.001"] = {
		"Una giornata di lavoro, come la chiamerebbero i contadini di Elwynn, e nessuno ringrazia l'aratro. Pazienza: il grazie me lo darà la cena.",
		"Lavoro finito, come finisce in qualunque aia di Elwynn: niente canzoni, niente discorsi, solo pane guadagnato.",
		"Lavoro semplice, fatto senza storie. A Elwynn vale una pagnotta e un cenno del capo, e sono due cose che contano.",
	},
	["race.human.quest_complete.w08.002"] = {
		"Qualcuno suoni una campana. No? Pazienza, canticchio io.",
		"A Goldshire suonerebbero la campana per molto meno. Su, qualcuno suoni qualcosa.",
		"Niente campane? A noi umani piace sentirne una, a lavoro finito. Vorrà dire che fischietto.",
	},
	["race.human.quest_complete.w08.003"] = {
		"fa ruotare le spalle come uno scalpellino che ha appena posato l'ultimo blocco di un lungo muro.",
		"si massaggia la nuca e annuisce, con la soddisfazione semplice di un volto umano qualunque.",
	},
	["race.human.quest_complete.w08.004"] = {
		"Noi non abbiamo i secoli degli elfi. Per questo una cosa finita adesso vale di più. È l'aritmetica dell'essere umani.",
		"Gli elfi possono rimandare un compito di cent'anni. Un umano lo porta a termine, perché il poi potrebbe non arrivare.",
	},
	["race.human.quest_complete.w08.005"] = {
		"Un'altra storia per il Lion's Pride. Alla terza volta che la racconto sarò {g:alto|alta} il doppio.",
		"Fatto! Al Lion's Pride qualcuno vorrà sentirla, e io vorrò un posto accanto al fuoco per raccontarla.",
	},
	["race.human.quest_complete.w08.006"] = {
		"Stormwind è stata rasa al suolo una volta, e rifatta. Ogni lavoro come questo rimette un'altra pietra al suo posto.",
		"Gli orchi avevano lasciato Stormwind in rovina, e noi l'abbiamo rialzata. È quel che ci riesce meglio, e questo era lo stesso mestiere.",
		"Grazie a questo, una porta resterà senza sbarre un po' più a lungo. Ricostruire è il mestiere che ogni umano conosce.",
	},
	["race.human.quest_complete.w08.007"] = {
		"Per il regno, allora. Il reggente non ne saprà mai niente, e il regno ci guadagna lo stesso.",
		"Bolvar Fordragon non ne sentirà parlare. Eppure il regno, per questo, sta un po' meglio.",
	},
	["race.human.quest_complete.w08.008"] = {
		"Fatto, e ben prima di cena. Noi umani abbiamo sempre fretta; ogni tanto ripaga.",
		"Lavoro svelto. Un nano ci avrebbe messo una settimana e poi ci avrebbe inciso sopra una targa. Noi tiriamo dritto.",
	},
	["race.human.quest_complete.w08.009"] = {
		"A Elwynn la gente ringrazia la Luce per un granaio pieno. Chiunque meriti il grazie per questo, ha il mio.",
		"I contadini di Elwynn rendono grazie alla Luce a ogni raccolto. Anch'io ne mando su uno piccolo, a chiunque stia ascoltando.",
	},
	["race.human.quest_complete.w08.010"] = {
		"Ditegli che è sistemato. E ditegli che l'ha fatto {g:un umano|un'umana}, se qualcuno tiene il conto.",
		"È tutto a posto. Se qualcuno tiene il conteggio per popolo, segnate un punto agli umani.",
	},
	["race.human.quest_complete.w08.011"] = {
		"Un tempo Lordaeron era piena di gente che faceva lavori come questo. Poi è arrivata la pestilenza. Qualcuno di noi continua a farli, un po' anche per loro.",
		"Lassù a Lordaeron c'era gente che l'avrebbe sbrigato prima di colazione. Ora li ha il Flagello. Qualcuno deve pur continuare il lavoro.",
		"Ogni compito portato a termine è uno che i morti di Lordaeron non possono finire. Cerco di farli bene, come se mi guardassero.",
	},
	["race.human.quest_complete.w08.012"] = {
		"archivia la faccenda con un cenno svelto, come un impiegato di Stormwind che chiude un registro.",
		"si spolvera le mani, {g:ordinato|ordinata} nel chiudere una faccenda come un mercante del Trade District che abbassa la saracinesca.",
	},
	["race.human.quest_complete.w08.013"] = {
		"A Northshire dicono a ogni recluta di finire quel che ha cominciato. Fra tutte le loro lezioni, è quella che nessuno dimentica.",
		"Finisci quel che cominci: all'abbazia di Northshire lo ripetono a ogni nuovo arrivato. Questa volta approverebbero.",
	},
	["race.human.quest_complete.w08.014"] = {
		"Sistemato, e onestamente da entrambe le parti. Gli scalpellini di Westfall direbbero che è più raro dell'oro.",
		"Un patto rispettato da tutti quanti. Chiedete agli scalpellini che hanno ricostruito Stormwind quanto spesso succede.",
	},
	["race.human.quest_complete.w08.015"] = {
		"C'è una lampada accesa in una fattoria, chissà dove, che forse sarebbe rimasta spenta. Mi piace pensarlo, almeno.",
		"Un bollitore sul focolare, della gente a tavola, un po' più al sicuro di prima. È questa l'immagine che mi tengo.",
		"C'è un focolare, chissà dove, con qualcuno seduto accanto un po' più sereno adesso. A noi umani serve poco più di questo.",
	},
	["race.human.quest_complete.w08.016"] = {
		"Prendi nota, Stormwind. Un nome in più su cui il regno può contare.",
		"Che gli araldi aggiungano una riga al lungo elenco del regno. La mia.",
	},
	["race.human.quest_complete.w08.017"] = {
		"Mi fanno male i piedi, mi fa male la schiena, il lavoro è fatto. Il corpo umano è fatto per una vita breve e dura, e ci tiene a ricordarmelo.",
		"Finito, e ogni giuntura presenta il suo reclamo. Non siamo di pietra come i nani, purtroppo.",
	},
	["race.human.quest_complete.w08.018"] = {
		"si ferma un istante, come se si figurasse la fattoria o la gente per cui è stato fatto, poi lascia andare il pensiero.",
		"si volta verso la strada percorsa, con lo sguardo quieto di chi conta quante persone riposeranno più tranquille.",
	},
	["race.human.quest_complete.w08.019"] = {
		"Fatto. Il primo giro lo offro io, basta che nessuno ordini la roba dei nani.",
		"Finito! Offro da bere. Un giro a misura d'umano, sia chiaro.",
		"Tutto sistemato. Da bere offro io, nei limiti del ragionevole, e il ragionevole è poco.",
	},
	["race.human.quest_complete.w08.020"] = {
		"Le guerre hanno insegnato al genere umano a riparare quel che si può e a resistere su quel che non si può. Questo era riparare.",
		"Chi ha ricostruito dopo la Prima Guerra l'ha fatto così: con piccoli lavori come questo, uno dopo l'altro, finché non c'è stata di nuovo una città.",
	},
	["race.human.quest_complete.w08.021"] = {
		"Fatto. A corte nessuno ne saprà mai niente, e a me va benissimo.",
		"Ecco. Non è il genere di impresa di cui si parla alla corte di Stormwind, e meglio così.",
	},
	["race.human.quest_complete.w08.022"] = {
		"Redridge, Westfall, Duskwood: ovunque la stessa storia, gente che ha bisogno d'aiuto e braccia sempre troppo poche. Stavolta le mie sono bastate.",
		"Il regno ha pochi soldati e molti guai. Un guaio in meno, allora.",
		"Troppe poche guardie, troppe strade. Ogni umano che finisce un lavoro così è una guardia in più, in un certo senso.",
	},
	["race.human.quest_complete.w08.023"] = {
		"accenna qualche nota di una canzone da taverna di Elwynn, stonando, e sembra non importargli di chi ascolta.",
		"fischietta qualcosa ricordato a metà da una mescita di Goldshire, stonato e del tutto soddisfatto.",
	},
	["race.human.quest_complete.w08.024"] = {
		"Una vita umana è abbastanza breve perché nessuno ricordi le piccole imprese. Questo non le rende piccole per chi ne ha avuto bisogno.",
		"Fra cinquant'anni nessuno se ne ricorderà. Ma chi ne ha avuto bisogno avrà avuto cinquant'anni migliori. Mi pare uno scambio onesto.",
	},
	["race.human.quest_complete.w08.025"] = {
		"Avanti il prossimo! Il regno non resta mai senza faccende.",
		"Bene, uno è andato. Noi umani abbiamo tanto regno e poco tempo: che altro c'è?",
	},
	["race.human.quest_complete.w08.026"] = {
		"Stromgarde resiste sugli altipiani, Theramore oltre il mare, Stormwind dietro le sue mura. Sparsi come siamo, le cose le portiamo a termine.",
		"I regni degli uomini ormai sono sparpagliati: Stromgarde, Theramore, Stormwind, e il nord perduto. Sparpagliati o no, questa è fatta.",
	},
	["race.human.quest_complete.w08.027"] = {
		"Lavoro fatto. La parola di un umano vale qualcosa, e io intendo farla valere.",
		"Avevo detto che l'avrei fatto, e l'ho fatto. È tutta la reputazione che serve a un umano.",
	},
	["race.human.quest_complete.w08.028"] = {
		"ripiega la faccenda come una lettera che finalmente si può spedire, e cerca già la prossima.",
		"annuisce una volta, con il cenno soddisfatto di un contadino davanti a un solco dritto.",
		"strizza gli occhi verso l'orizzonte come i contadini scrutano il cielo, già a soppesare il prossimo lavoro.",
	},
	["race.human.quest_progress.w08.001"] = {
		"A metà. I contadini di Elwynn dicono che la seconda metà del campo è sempre la più lunga.",
		"Una parte è fatta. Qualunque aratore ti dirà che il fondo del solco è la parte dura.",
	},
	["race.human.quest_progress.w08.002"] = {
		"È tutto. Si torna da chi aspetta: agli umani non piace aspettare, a me {g:compreso|compresa}.",
		"Tutto quanto, fatto. Non facciamo aspettare nessuno: la vita è troppo breve per questo.",
		"Qui ho finito. È ora di andare a dare una buona notizia a qualcuno.",
	},
	["race.human.quest_progress.w08.003"] = {
		"Un pezzo dopo l'altro, come hanno ricostruito Stormwind. Un'altra pietra posata.",
		"Un pezzo al suo posto. La città è risorta pietra su pietra, e così questa faccenda.",
		"Non è finita, ma è più avanti. Gli umani hanno costruito un'intera capitale a forza di 'più avanti'.",
	},
	["race.human.quest_progress.w08.004"] = {
		"spunta l'ultima voce con un grugnito soddisfatto, come un carrettiere che conta l'ultimo sacco sul carro.",
		"porta a termine l'ultima parte della commissione e si volta per tornare indietro, {g:svelto|svelta} come un corriere di Stormwind.",
	},
	["race.human.reputation_change.w08.001"] = {
		"Gli umani tengono il conto di tutto, benevolenza compresa. La mia è appena salita di una riga.",
		"Un po' più di fiducia nel registro. A Stormwind un buon nome si spende quasi come l'oro.",
		"L'opinione che qualcuno ha di me è appena migliorata. Al Trade District lo chiamerebbero capitale.",
	},
	["race.human.rest_enter.w08.001"] = {
		"Riposo. Un posto con le guardie e il pane, dove il pericolo peggiore è il conto. Gli umani hanno costruito intere città per momenti così.",
		"Un posto dove per un'ora o due nessuno ha bisogno che io sia {g:coraggioso|coraggiosa}. Gli umani hanno inventato i paesi esattamente per questo.",
		"Mura sicure e una pancia piena a portata di mano. A un umano non serve molto di più per dire che un posto è buono.",
	},
	["race.human.rest_enter.w08.002"] = {
		"Una panca, un fuoco e l'odore della cucina di qualcun altro. La cosa più bella mai costruita dagli umani è una sala comune.",
		"Finalmente dentro. Appendere il mantello, trovare uno sgabello vicino al fuoco e lasciarsi scorrere addosso i pettegolezzi della sala.",
	},
	["race.human.rest_enter.w08.003"] = {
		"allenta una fibbia o due e lascia cadere le spalle, col sollievo semplice di un umano che ha trovato mura e vicini.",
		"rallenta, finalmente, e lascia che il rumore tranquillo degli affari altrui {g:gli|le} si posi intorno.",
		"fa ruotare le spalle e sbuffa, come un bracciante quando l'ultimo carro è al coperto.",
	},
	["race.nightelf.journey.w08.001"] = {
		"La terra si allontana e si fa piccola. Da quassù diecimila anni di storia della mia gente starebbero nel cavo di una mano.",
		"Su, e il mondo si appiattisce in una mappa. Strano come la vista lunga faccia sentire breve perfino un elfo.",
		"Si parte. Ogni volo mi ricorda quanto mondo la mia gente non abbia ancora visto, con tutti i nostri anni.",
	},
	["race.nightelf.journey.w08.002"] = {
		"Grifone o ippogrifo, per me fa lo stesso: di qualunque cosa abbia le piume mi fido, che sappia la strada.",
		"Si va. Chiunque mi stia portando, lo ringrazierò come si deve all'atterraggio.",
	},
	["race.nightelf.journey.w08.003"] = {
		"Dall'alto, dove le foreste sono state tagliate si vede chiaro, come morsi strappati a una foglia. Cerco di non tenere il conto.",
		"L'altezza è sincera. Qualunque bosco sia stato abbattuto, qualunque collina bruciata, da quassù si vede tutto, e nessuno può far finta di niente.",
	},
	["race.nightelf.journey.w08.004"] = {
		"si accuccia contro il collo piumato mentre la bestia sale, {g:tranquillo|tranquilla} in sella come su un sentiero di bosco.",
		"asseconda la salita con la disinvoltura della sua gente, che non ha mai avuto paura di un ramo alto.",
	},
	["race.nightelf.journey.w08.005"] = {
		"Su tra le nuvole, più {g:vicino|vicina} al cielo da cui la mia gente ha preso il nome. Più che volare, sembra di fare una visita.",
		"Kaldorei, figli delle stelle, ed eccomi un po' più {g:vicino|vicina} a loro. Non dirò a nessuno che mi ha fatto sorridere.",
	},
	["race.nightelf.journey.w08.006"] = {
		"Vento nei capelli e la terra che scorre sotto. Un gufo lo troverebbe normale; io cerco di fare la stessa faccia.",
		"Si vola. La mia gente osserva gli uccelli da diecimila anni, e a quanto pare faceva bene a invidiarli.",
		"Il vento quassù è pulito e freddo e non chiede niente. Per un po' lascio che pensi lui al posto mio.",
	},
	["race.nightelf.journey.w08.007"] = {
		"Giù. La terra è più lenta del cielo, e più gentile col modo di pensare della mia gente.",
		"A terra. Un volo fa risparmiare giorni; il primo momento sul suolo ne restituisco qualcuno, restando {g:fermo|ferma}.",
		"Piedi sulla terra solida. Aspetto che il mondo smetta di muoversi e ricominci a crescere.",
	},
	["race.nightelf.journey.w08.008"] = {
		"Grazie, amico piumato. Voli meglio di come cammina la maggior parte della gente.",
		"Un bel volo. Se la mia gente darà mai medaglie agli uccelli, il primo posto in fila è tuo.",
	},
	["race.nightelf.journey.w08.009"] = {
		"scivola giù di sella e resta un momento con una mano sulle piume calde, senza fretta, prima di riprendere il cammino.",
		"atterra con leggerezza e rivolge alla bestia un lungo sguardo grato, come fa la sua gente con ogni creatura che l'ha portata.",
	},
	["race.nightelf.journey.w08.010"] = {
		"Arrivo. Qualunque cosa dica la mia gente sulla pazienza, sono {g:contento|contenta} che sia stato rapido.",
		"Un viaggio che un tempo la mia gente avrebbe fatto a piedi in una stagione, finito prima che arrivassi in fondo a un pensiero.",
	},
	["race.nightelf.journey.w08.011"] = {
		"Di nuovo a terra. La mia gente cammina leggera, e dopo un volo cammino ancora più piano, finché le gambe non ci credono.",
		"Il cielo mi lascia andare. Gli faccio un cenno: ci rivedremo.",
	},
	["race.nightelf.quest_complete.w08.001"] = {
		"Finito. Misurato su diecimila anni è poca cosa, ma gli anni sono fatti di cose piccole.",
		"Sistemato. Non un capitolo di qualche cronaca, solo una riga nella mia, e i kaldorei le tengono lunghe.",
		"Chiuso. Il mio popolo conta in secoli, eppure ogni secolo è fatto di pomeriggi come questo.",
	},
	["race.nightelf.quest_complete.w08.002"] = {
		"Ecco. Fatto prima che un gufo finisse di girare la testa.",
		"Finito, e più in fretta di un nightsaber che trova l'unico sasso tiepido della radura.",
		"Già concluso. Persino i fuochi fatui dovrebbero sbrigarsi per starmi dietro.",
	},
	["race.nightelf.quest_complete.w08.003"] = {
		"Le sacerdotesse dicono che un tempo un kaldorei poteva lasciare un compito così in sospeso per un secolo. Dopo Hyjal gli anni contano anche per noi, e allora l'ho chiuso oggi.",
		"C'è stata un'epoca, raccontano gli anziani, in cui nessun kaldorei doveva affrettarsi. È finita sul monte Hyjal. Questo compito non l'ho fatto aspettare.",
	},
	["race.nightelf.quest_complete.w08.004"] = {
		"lascia andare il compito finito come un albero lascia cadere una foglia: senza cerimonie e senza voltarsi.",
		"espira piano, un lungo respiro quieto come un bosco, e rivolge l'attenzione a quel che verrà.",
		"ripone la faccenda con l'ordine paziente di chi si aspetta di ricordarla molto, molto a lungo.",
	},
	["race.nightelf.quest_complete.w08.005"] = {
		"È fatta. Anche Teldrassil, un tempo, era un seme.",
		"Finito. Ogni grande albero comincia come qualcosa di piccolo che qualcuno teneva in una mano.",
		"Completato. Le grandi foreste sono solo piccole semine che nessuno ha abbandonato.",
	},
	["race.nightelf.quest_complete.w08.006"] = {
		"Le sacerdotesse insegnano che Elune vede le piccole fatiche chiare quanto le grandi. Spero che abbia guardato da questa parte.",
		"Finito, e offerto in silenzio a Elune, come le sacerdotesse dicono si possa fare con ogni lavoro onesto.",
	},
	["race.nightelf.quest_complete.w08.007"] = {
		"Per chi vive poco sarebbe stata una commissione lunga. Per me è stata una bella passeggiata con un finale.",
		"Certi popoli la chiamerebbero una lunga fatica. Il mio la chiamerebbe un pomeriggio, e chiederebbe cosa c'è per cena.",
		"Un compito lungo, direbbe un umano. Non ho fatto nemmeno in tempo ad annoiarmi.",
	},
	["race.nightelf.quest_complete.w08.008"] = {
		"Fatto, e fatto in silenzio. La foresta finisce il suo lavoro senza pubblico; posso farlo anch'io.",
		"Ecco. Niente corni, niente stendardi. Ashenvale cresce senza araldi, e così il buon lavoro.",
		"Nessuno ne canterà, e non serve. Le radici di Teldrassil lavorano senza farsi vedere.",
	},
	["race.nightelf.quest_complete.w08.009"] = {
		"Probabilmente ricorderò questa commissione molto dopo che tutti quelli coinvolti se ne saranno andati. La memoria di un kaldorei tiene tutto, che lo si voglia o no.",
		"Anche questo entra nella lunga memoria, con tutto il resto. Il mio popolo non dimentica nulla; non sempre è una gentilezza.",
	},
	["race.nightelf.quest_complete.w08.010"] = {
		"Ecco una spina tolta al mondo. Solo ad Ashenvale ne restano parecchie.",
		"Finito. Una spina in meno nella zampa del mondo.",
		"Finito. Da qualche parte nei boschi, qualcosa potrà riposare più tranquillo.",
	},
	["race.nightelf.quest_complete.w08.011"] = {
		"Fatto. Da qualche parte un fuoco fatuo torna a casa tra i rami, e io mi sento un po' come lui.",
		"Finito. Potrei arrivare a piedi fino a Darnassus con questa sola sensazione.",
	},
	["race.nightelf.quest_complete.w08.012"] = {
		"accoglie la fine del compito con un cenno piccolo e sicuro come il battito di ciglia di un nightsaber.",
		"lascia sciogliere le spalle, con la cura lenta di un gufo che ripiega le ali dopo la caccia.",
	},
	["race.nightelf.quest_complete.w08.013"] = {
		"Le Sentinelle non possono essere dappertutto. Oggi, in un piccolo angolo del mondo, non ce n'è stato bisogno.",
		"Un compito chiuso. Le Sentinelle sono poche e sparpagliate tra Auberdine e Ashenvale; le cose piccole tocca a noi altri raccoglierle.",
	},
	["race.nightelf.quest_complete.w08.014"] = {
		"Finito. Non fate quella faccia sorpresa: noi elfi diamo solo l'impressione di prendercela comoda.",
		"Fatto. Lento non vuol dire in ritardo, checché ne pensi chi vive poco.",
		"Ecco. Il mio popolo non è lento: semplicemente si rifiuta di correre.",
	},
	["race.nightelf.quest_complete.w08.015"] = {
		"Finito sotto la luce stessa di Elune. Sembra una benedizione, anche se era solo una commissione.",
		"Fatto, con la luna che guarda. Le sacerdotesse direbbero che approva; io dirò solo che è andata bene.",
	},
	["race.nightelf.quest_complete.w08.016"] = {
		"Anche con la lunga memoria del mio popolo, il mondo trova sempre qualcosa da insegnare. Questa era una di quelle.",
		"Stavolta ho imparato qualcosa. Diecimila anni di sapere kaldorei, e il mondo ha ancora lezioni da dare.",
	},
	["race.nightelf.quest_complete.w08.017"] = {
		"Finito. Al prossimo che chiede, dite che è passato un kaldorei e ha sistemato tutto.",
		"Ecco, fatto. Se qualcuno si chiede chi è stato, dite che era gente di Teldrassil, e basta così.",
	},
	["race.nightelf.quest_complete.w08.018"] = {
		"L'Albero del Mondo ha dato la sua forza sull'Hyjal, dicono le sacerdotesse, e da allora ogni giorno conta di più. Questo, almeno, non l'ho sprecato.",
		"Da quando il dono di Nordrassil si è esaurito, i nostri giorni sono contati come quelli di chiunque. Mi fa piacere averne speso uno così.",
	},
	["race.nightelf.quest_complete.w08.019"] = {
		"si sistema dietro un lungo orecchio una ciocca ribelle e per un attimo sembra molto {g:soddisfatto|soddisfatta}.",
		"fa fremere un lungo orecchio, in silenziosa soddisfazione, e prosegue.",
	},
	["race.nightelf.quest_complete.w08.020"] = {
		"Completato. Il popolo di Tyrande non lascia le cose a metà.",
		"Finito. Darnassus non si aspetterebbe di meno, e io nemmeno.",
	},
	["race.nightelf.quest_complete.w08.021"] = {
		"Finito. Come le stagioni ad Ashenvale, si è preso il suo tempo e poi è arrivato tutto insieme.",
		"Questo è fatto. Nella foresta le cose succedono piano, poi di colpo; questo era il di colpo.",
		"Fatto, finalmente. Le querce più vecchie lo chiamerebbero sbrigativo.",
	},
	["race.nightelf.quest_complete.w08.022"] = {
		"Fatto. Se continuo così, i gufi di Teldrassil cominceranno a chiedermi favori.",
		"Finito. Tra le fronde le voci corrono in fretta: aspettatevi che vengano anche gli scoiattoli con le loro richieste.",
		"Sistemato. Darnassus prima o poi lo verrà a sapere, anche se gli ippogrifi spettegolano meno di quanto si creda.",
	},
	["race.nightelf.quest_complete.w08.023"] = {
		"Niente folla, niente araldi, una parola sommessa ed è finita. Mi piace il lavoro come la foresta ama le sue creature: invisibile finché non serve.",
		"Chiuso senza clamore. C'è un piacere molto kaldorei in questo: fare bene una cosa e tornare a confondersi tra gli alberi.",
	},
	["race.nightelf.quest_complete.w08.024"] = {
		"Fatto. Le vecchie sentinelle dicono che gli Highborne si credevano troppo grandi per i lavori piccoli. Noi abbiamo imparato il contrario.",
		"Finito, e volentieri. Il mio popolo ha imparato nella Guerra degli Antichi dove porta l'orgoglio che non lavora.",
	},
	["race.nightelf.quest_complete.w08.025"] = {
		"Finito. Lungo la strada penserò ai rami di Darnassus, e la strada sembrerà più corta.",
		"Sistemato. Qualunque cosa faccia la strada da qui in avanti, in fondo c'è sempre Darnassus.",
	},
	["race.nightelf.quest_complete.w08.026"] = {
		"alza per un momento lo sguardo, come a cercare la luna oltre il cielo, e offre in silenzio il lavoro compiuto.",
		"mormora qualche parola a Elune a fior di labbra, troppo piano perché altri la colgano.",
		"china il capo per un attimo: un ringraziamento a nessuno in particolare, e a Elune più di tutti.",
	},
	["race.nightelf.quest_progress.w08.001"] = {
		"Una parte è fatta. Il resto arriverà: la pazienza è l'unica cosa che al mio popolo non manca.",
		"A metà strada. Il mio popolo ha fatto crescere un Albero del Mondo; io posso finire una commissione.",
		"Un po' fatto, un po' no. Nemmeno la luna sorge tutta in una volta.",
	},
	["race.nightelf.quest_progress.w08.002"] = {
		"Tutto fatto. Ora si torna, in silenzio come sono {g:arrivato|arrivata}.",
		"Tutto ciò che mi è stato chiesto è fatto. Ora la strada del ritorno, senza fretta, come piace al mio popolo.",
		"Finito, ogni parte. Riporterò la notizia con la cura di una Sentinella che porta un messaggio dal confine.",
	},
	["race.nightelf.quest_progress.w08.003"] = {
		"si ferma a guardare quanto è fatto, le orecchie inclinate, poi va avanti verso il resto senza fretta.",
		"prende atto dei progressi con un lieve cenno, paziente come un giardiniere tra alberi lenti a crescere.",
		"fa il punto in silenzio, come un gufo che passa in rassegna una radura, e riprende il cammino.",
	},
	["race.nightelf.reputation_change.w08.001"] = {
		"La loro stima è cresciuta. Il mio popolo misura la fiducia in secoli; prenderò questo come un buon primo decennio.",
		"Un'accoglienza più calda di prima. La fiducia cresce come una quercia: piano, e poi per moltissimo tempo.",
		"Ora hanno un'opinione migliore di me. Il mio popolo lo chiamerebbe un germoglio; ho intenzione di vederlo crescere.",
	},
	["race.nightelf.rest_enter.w08.001"] = {
		"Un posto per riposare. La mia gente dorme di un sonno leggero ovunque: conta il permesso, non il letto.",
		"Terreno sicuro, finalmente. Uno della mia gente all'occorrenza sonnecchia anche in piedi, ma così è meglio.",
		"Riposo. A quanto pare serve anche a chi vive a lungo. Nessuno ce l'aveva detto.",
	},
	["race.nightelf.rest_enter.w08.002"] = {
		"lascia che la vigilanza scivoli piano via dalle spalle, come fa la sua gente quando ha deciso che un posto è sicuro.",
		"trova un angolo in disparte e vi si sistema con la lunga pazienza della sua stirpe.",
		"si concede una pausa, con ogni senso ancora mezzo sveglio, come la sua gente riposa da diecimila anni.",
	},
	["race.nightelf.rest_enter.w08.003"] = {
		"Un posto sicuro, per ora. Ne ringrazio Elune sottovoce, come si ringrazia un ospite che non vuole cerimonie.",
		"Riposo. Per un po' la guardia la fa Elune, e io la lascio fare.",
	},
	["race.tauren.journey.w08.001"] = {
		"Da quassù le mandrie sembrerebbero semi sparsi. Le cerco lo stesso, per pura abitudine.",
		"La terra si allontana e la scruto in cerca di mandrie, come il mio popolo ha sempre fatto. Da quest'altezza un kodo sarebbe una briciola.",
		"Sotto di me il mondo diventa una pelle stesa ad asciugare, con i fiumi per cuciture. Ci cerco le mandrie lo stesso.",
	},
	["race.tauren.journey.w08.002"] = {
		"si sistema in sella con cura, le corna basse contro il vento, mentre le ali prendono l'aria.",
		"si sporge sul collo della viverna mentre il suolo si allontana, le corna basse e la criniera al vento.",
		"stringe le redini mentre la viverna si dà la spinta, il grande corpo curvo in avanti per farsi, per un attimo, un po' più piccolo.",
	},
	["race.tauren.journey.w08.003"] = {
		"Ogni colpo d'ala mette più aria tra me e la Madre Terra. Lei è paziente. Mi riavrà presto.",
		"Su, nel vento. La terra non lascia andare facilmente un tauren, e nemmeno io la lascio andare del tutto.",
		"Staccarsi dalla terra è la cosa più strana che un tauren possa fare. Tengo una mano sulla sella e un pensiero sul suolo là sotto.",
	},
	["race.tauren.journey.w08.004"] = {
		"Calma, bestia mia. Lo so che peso. Consideralo un allenamento.",
		"Piano, piano. Sì, tutto quanto. Vola lenta, e all'arrivo potrai lamentarti.",
	},
	["race.tauren.journey.w08.005"] = {
		"Il vento mi prende le corna come un paio di vele. Abbasso la testa e cerco di avere una forma più piccola di quella che ho.",
		"Quassù l'aria mi tira le corna e la criniera come se volesse tenersele. Tengo la testa bassa e la lascio provare.",
	},
	["race.tauren.journey.w08.006"] = {
		"Terra. Batto uno zoccolo, per essere {g:sicuro|sicura} che sia quella vera e non altro cielo che finge.",
		"Giù. Le ginocchia riprendono la terra come vecchi amici che si ritrovano. La prossima volta, magari, vado a piedi.",
		"Le ali si chiudono e la terra torna sotto di me, solida e indifferente. La bacerei, se le corna lo permettessero.",
	},
	["race.tauren.journey.w08.007"] = {
		"scivola giù dalla viverna e resta un attimo a zoccoli ben piantati, come se il terreno potesse provare a inclinarsi.",
		"scende di sella, batte uno zoccolo per svegliare le gambe e dà alla bestia una pacca riconoscente sul collo.",
	},
	["race.tauren.journey.w08.008"] = {
		"Un lungo tratto nell'aria. Il mio popolo copriva distanze così in una stagione di cammino; io l'ho fatto tra due pensieri, e non so se esserne {g:grato|grata}.",
		"Tanta terra mi è passata sotto, e nemmeno un filo d'erba toccato. Un viaggio senza il camminare è come un pasto senza la fame.",
		"Tanto tempo sopra il mondo, e adesso torna tutto sotto gli zoccoli in un colpo solo. Le gambe hanno bisogno di un momento per credere di nuovo alla distanza.",
	},
	["race.tauren.journey.w08.009"] = {
		"La viverna si scrolla, contenta di essersi liberata di me. Io provo più o meno lo stesso per il cielo.",
		"Ci lasciamo in buoni rapporti, la viverna e io. Siamo sollevati tutti e due, e tutti e due abbastanza educati da non dirlo.",
		"La bestia non si volta nemmeno andando via. Ha portato un tauren: si è guadagnata il riposo.",
	},
	["race.tauren.quest_complete.w08.001"] = {
		"Fatto. Un compito finito è un tratto di strada percorso fino in fondo; gli anziani dicono che la si ringrazia prima di lasciarla.",
		"Ecco. Gli anziani del mio popolo dicono che ogni strada percorsa fino in fondo merita un ringraziamento. Grazie, strada.",
		"Finito. Prima di prendere il sentiero successivo, un tauren dovrebbe ringraziare quello appena percorso. Quindi grazie, e avanti.",
	},
	["race.tauren.quest_complete.w08.002"] = {
		"Ecco a te. Occhio alle corna quando ti sporgi a prenderlo: tutti si dimenticano delle corna.",
		"È tuo. Fa' piano a sporgerti oltre di me: c'è parecchio tauren da scavalcare.",
		"Eccolo. Farei un inchino, ma con corna di questa misura servono spazio e un preavviso.",
	},
	["race.tauren.quest_complete.w08.003"] = {
		"si china e posa un attimo il palmo largo sul terreno, un ringraziamento silenzioso alla Madre Terra per un compito portato a termine.",
		"si piega a sfiorare il suolo con due dita, poi la fronte, senza fretta, come per saldare un piccolo debito con la terra.",
		"preme una mano aperta a terra e ve la tiene un battito più a lungo di quanto un estraneo riterrebbe necessario.",
	},
	["race.tauren.quest_complete.w08.004"] = {
		"Come semi d'erba gettati al vento: tu li getti, e il resto lo decidono le pianure. A loro la parola, dunque.",
		"Lavoro consegnato. Se darà frutto è affare di un'altra stagione: le pianure mi hanno insegnato a lasciar fare alle stagioni.",
	},
	["race.tauren.quest_complete.w08.005"] = {
		"Che la tua acqua resti dolce e le tue mandrie numerose. In Mulgore ci si saluta così.",
		"Cammina col vento alle spalle. È ciò che il mio popolo augura a chiunque abbia aiutato.",
		"Che la Madre Terra tenga saldo il terreno sotto i tuoi passi. Buon lavoro, e fatto volentieri.",
	},
	["race.tauren.quest_complete.w08.006"] = {
		"Quasi tutti ringraziano un tauren come ringrazierebbero una rupe: testa all'indietro, e da una distanza prudente.",
		"Altra gratitudine dal basso. Ho imparato a chinarmi un po', così la gente non si storce il collo per essere gentile.",
		"Un altro grazie detto col collo piegato all'indietro. Un giorno qualcuno ringrazierà un tauren senza fare prima un passo indietro.",
	},
	["race.tauren.quest_complete.w08.007"] = {
		"Gli anziani raccontano dei lunghi anni di vagabondaggio, quando niente restava in piedi a lungo. Forse per questo una cosa finita piace tanto a un tauren.",
		"Per secoli, dicono i narratori, il lavoro del mio popolo veniva caricato sui kodo ogni pochi giorni e portato via. Un lavoro che resta dove lo lasci sembra quasi un lusso.",
		"Per un nomade niente è mai finito: il campo è sempre in cammino. Da quando la rupe è diventata casa, dicono i narratori, il mio popolo ha imparato il sapore delle cose concluse. Mi piace.",
	},
	["race.tauren.quest_complete.w08.008"] = {
		"È fatto, e fatto con tutte e due le mani. Un tauren non fa niente a metà.",
		"Finito come si deve, senza scorciatoie. Il mio popolo non è mai stato bravo con gli sforzi piccoli.",
		"Portato a termine da cima a fondo. Noi tauren siamo troppo grossi per le mezze misure.",
	},
	["race.tauren.quest_complete.w08.009"] = {
		"Se qualcosa è morto per questo compito, spero di essermi {g:fermato|fermata} a ringraziarlo. Un cacciatore del mio popolo me lo chiederebbe prima ancora della ricompensa.",
		"Prima delle monete, la vecchia domanda delle pianure: ho reso grazie per ciò che ho preso? Credo di sì. Spero di sì.",
	},
	["race.tauren.quest_complete.w08.010"] = {
		"Fatto. Se c'è una ricompensa, che sia cibo. Sfamare un tauren è un'impresa a parte.",
		"Le monete vanno bene. Il pane andrebbe meglio. A un tauren viene fame anche solo ad attraversare una stanza.",
		"Finito. Per caso hai qualcosa da mangiare? Lo chiedo per conto di uno stomaco molto grande.",
	},
	["race.tauren.quest_complete.w08.011"] = {
		"deve chinarsi parecchio per prendere la ricompensa, e si raddrizza con la prudenza di chi conosce bene le travi basse.",
		"si piega quasi in due per accettare la ricompensa, poi si rispiega in tutta la sua altezza, un'articolazione dopo l'altra.",
		"prende la ricompensa fra due dita enormi, con la delicatezza di un kodo che scavalca un nido.",
	},
	["race.tauren.quest_complete.w08.012"] = {
		"An'she vede le imprese del giorno e Mu'sha quelle del buio, così insegnano gli anziani. In un caso o nell'altro, questa è stata vista.",
		"Qualunque dei due occhi della Madre Terra fosse aperto, ha visto questo lavoro finito. Per un tauren basta come testimone.",
		"Niente folla, niente araldi. La Madre Terra ha due occhi, il sole e la luna, e uno dei due vede sempre il lavoro.",
	},
	["race.tauren.quest_complete.w08.013"] = {
		"Un'altra piccola rata di un vecchio debito. Gli orchi sono stati al fianco del mio popolo contro i centauri, dicono gli anziani, e un tauren ricorda chi gli è stato accanto.",
		"Cairne insegna che l'aiuto dell'Orda nelle guerre contro i centauri è un debito che vale la pena pagare piano e volentieri. Ogni compito finito ne paga un po'.",
	},
	["race.tauren.quest_complete.w08.014"] = {
		"Fatto. Lasciami stare qui un momento, che il cuore rallenti al passo di un kodo.",
		"Finito. Prendo un respiro grande quanto un tauren prima di prendermi un'altra commissione.",
		"Concluso e consegnato. Adesso resto un po' immobile, come un kodo dopo aver guadato un fiume.",
	},
	["race.tauren.quest_complete.w08.015"] = {
		"Se mai sali sulla rupe, trova un fuoco e siediti. In Mulgore si dice che l'ospite si sfama prima di fargli una sola domanda.",
		"Se mai la strada ti porta in Mulgore, cerca un qualsiasi fuoco tauren. L'usanza vuole prima il cibo, poi le domande.",
		"Passa da Bloodhoof Village, un giorno. Dicono che ci sia sempre una pentola sul fuoco, e nessuno ti chiederà il motivo della visita prima che tu abbia mangiato.",
	},
	["race.tauren.quest_complete.w08.016"] = {
		"Niente paroloni. Le lodi stanno addosso a un tauren più o meno come una sella a un toro selvatico.",
		"Ringraziami di meno, per favore. Le lodi mi fanno fremere le orecchie, e poi tutti fissano le orecchie.",
	},
	["race.tauren.quest_complete.w08.017"] = {
		"L'erba non chiede di essere ringraziata perché cresce. Cerco di finire il mio lavoro allo stesso modo, e di solito non ci riesco: mi piace essere {g:ringraziato|ringraziata}.",
		"Nelle pianure niente annuncia di aver finito. L'erba cresce e basta, il fiume arriva e basta. Potrei imparare, e magari domani lo farò.",
	},
	["race.tauren.quest_complete.w08.018"] = {
		"emette un brontolio basso di approvazione, così profondo che lo si sente più nel petto che nelle orecchie.",
		"fa un solo cenno del capo, senza fretta, di quelli che sembrano salire fin dagli zoccoli.",
		"si sfiora un corno con due dita, un piccolo gesto tutto suo, e si volta con aria soddisfatta.",
	},
	["race.tauren.quest_complete.w08.019"] = {
		"Di' pure che è stato un tauren. Non per me: perché il prossimo tauren che passa di qui sia accolto bene.",
		"Se qualcuno chiede chi ha aiutato, ricorda le corna. Il nome del mio popolo è fatto di imprese come questa.",
	},
	["race.tauren.quest_complete.w08.020"] = {
		"Lassù sulla rupe c'è un fuoco che arde senza di me. Un giorno gli racconterò anche questa.",
		"La prossima volta che prenderò l'ascensore per le alture, questa sarà una storia in più da raccontare attorno al fuoco.",
	},
	["race.tauren.quest_complete.w08.021"] = {
		"Madre Terra, era una cosa piccola, ed è stata fatta bene. Spero che ti piacciano le cose piccole fatte bene: ne ho parecchie.",
		"La offro alla Madre Terra, come un cacciatore restituisce una parte della preda. Piccola, ma offerta.",
	},
	["race.tauren.quest_complete.w08.022"] = {
		"Fatto, e senza calpestare niente che non andasse calpestato. Per un tauren è un lavoro di fino.",
		"Finito, e ho pestato solo ciò che se lo meritava. Dalle mie parti questa si chiama grazia.",
		"Tutto fatto. Neanche uno steccato abbattuto. Scrivetelo da qualche parte.",
	},
	["race.tauren.quest_complete.w08.023"] = {
		"Un cucciolo di kodo impara a camminare in una mattina e a portare carichi in un anno. Io sto a metà strada, e questo mi ha aiutato.",
		"Ogni compito finito è un po' di peso in più che so portare. Così si addestrano i kodo, dicono i mandriani: una pietra in più ogni stagione.",
		"La forza cresce come cresce una mandria: piano, e poi tutta insieme in una primavera. Oggi è stato un giorno lento, e conta lo stesso.",
	},
	["race.tauren.quest_complete.w08.024"] = {
		"Che ciò che si è rotto qui ricresca come l'erba dopo un incendio. Nelle pianure succede sempre.",
		"Ecco. Dagli una stagione: le pianure mi hanno insegnato che quasi tutte le ferite della terra si chiudono, se le si lascia in pace.",
	},
	["race.tauren.quest_progress.w08.001"] = {
		"Tutto fatto. Adesso la camminata, al passo del kodo: senza fretta, senza fermarsi.",
		"Questo è tutto. Un tauren porta le notizie come le pianure portano il vento: con costanza, fino in fondo.",
		"Fatto tutto quel che era stato chiesto. Ora si puntano le corna verso chi aspetta.",
	},
	["race.tauren.quest_progress.w08.002"] = {
		"Una parte è fatta. Il resto è là fuori; le pianure mi hanno insegnato che una mandria si raduna una bestia smarrita dopo l'altra.",
		"Una parte. Un cacciatore del mio popolo direbbe che adesso la pista è calda. Continua a seguirla.",
		"Un pezzo di strada. Pazienza: nemmeno un kodo attraversa Mulgore in un passo solo.",
	},
	["race.tauren.quest_progress.w08.003"] = {
		"spunta una parte del compito su un dito largo e si guarda intorno in cerca del resto.",
		"grugnisce: mezzo lavoro fatto, e nessuna fretta di ammettere che è solo mezzo.",
		"muove un orecchio, confronta ciò che è fatto con ciò che resta, e riparte con un passo regolare e instancabile.",
	},
	["race.tauren.reputation_change.w08.001"] = {
		"Un po' più di fiducia, guadagnata alla maniera dei tauren: piano, come crescono le corna a un vitello.",
		"Qualcuno ha un'opinione migliore di me, adesso. Il mio popolo dice che un buon nome è come un pozzo profondo: lo si scava piano, e non si secca mai.",
		"La benevolenza cresce come l'erba di Mulgore dopo gli incendi: in silenzio, e poi ovunque.",
	},
	["race.tauren.rest_enter.w08.001"] = {
		"Finalmente riposo. Il mio popolo ha imparato a riposare dovunque si fermasse la mandria, e io non ne ho mai perso l'abitudine.",
		"Un posto dove fermarsi. Un tauren dorme quasi ovunque; è svegliarsi con un corno impigliato da qualche parte che farei volentieri a meno.",
		"È ora di posare il carico. Da qualche parte dentro di me un vecchio mandriano conta i capi, li trova tutti, e mi lascia dormire.",
	},
	["race.tauren.rest_enter.w08.002"] = {
		"Un tetto, un fuoco e un letto che finisce alle mie ginocchia. Prenderò il pavimento e un mucchio di pelli, come al solito, e mi troverò meglio.",
		"Le locande sono fatte per chi dorme più corto. Stendo una coperta accanto al focolare e dico al locandiere che è un'usanza tauren. Adesso lo è.",
	},
	["race.tauren.rest_enter.w08.003"] = {
		"toglie finalmente il peso dagli zoccoli, e tutta la grande mole sembra abbassarsi di un palmo.",
		"si siede piano, come fanno le cose grandi, e lascia andare un lungo respiro che sembra salire dal suolo.",
	},
	["race.gnome.journey.w09.001"] = {
		"Le ali battono, la terra scende, e ogni istinto gnomesco che ho dice che servirebbero più rivetti.",
		"Volo a piume e muscoli. Grazioso, davvero. Le nostre macchine volanti delle vecchie guerre avevano almeno un manuale.",
		"Si sale. Ho calcolato le probabilità di cadere. Scelgo di non ricordarmele.",
	},
	["race.gnome.journey.w09.002"] = {
		"stringe la sella con entrambe le mani, i piedi che penzolano ben lontani dalle staffe, e assume un'espressione coraggiosa e scientifica.",
		"si sistema su una sella fatta per qualcuno grande il doppio e si aggrappa con una determinazione cupa e allegra.",
		"sbircia oltre il fianco mentre la terra si allontana, scarabocchia un appunto frettoloso sull'angolo delle ali, poi ci ripensa e si tiene forte.",
	},
	["race.gnome.journey.w09.003"] = {
		"Da quassù il mondo sembra un modellino sul banco da lavoro, ogni strada e ogni fiume disposti in bell'ordine. Mi viene sempre voglia di sistemare qualcosa.",
		"La terra di sotto diventa una mappa, e le mappe sono un conforto per uno gnomo. Tutto al suo posto, a distanza di sicurezza.",
		"Sempre più in alto. I paesi si rimpiccioliscono in schemi ordinati. Vorrei che quelli veri lo fossero la metà.",
	},
	["race.gnome.journey.w09.004"] = {
		"Esiste un manuale per questa creatura? No? Ovviamente no.",
		"Ali, a posto. Cinghie, a posto. {g:Gnomo|Gnoma}, {g:quasi calmo|quasi calma}.",
		"Vola dritto, per favore. Gli gnomi rimbalzano, ma male.",
	},
	["race.gnome.journey.w09.005"] = {
		"Terra solida. Le ginocchia approvano, lo stomaco sta ancora esaminando la questione.",
		"A terra, e tutto in un pezzo. Più tardi scriverò il resoconto del volo: velocità eccellente, comodità discutibile, nemmeno un rivetto.",
		"Di nuovo coi piedi per terra. Volare è meraviglioso, e lo è anche stare in piedi su qualcosa che non sbatte le ali.",
	},
	["race.gnome.journey.w09.006"] = {
		"scivola giù dalla sella, atterra con un saltello, e dà alla bestia una pacca educata e un po' diffidente.",
		"salta giù dalla sella da un'altezza un po' maggiore del previsto, si sistema il cappotto e prosegue come se fosse tutto calcolato.",
		"scende con cautela, controlla una tasca dopo l'altra, e ha l'aria di chi è contento che niente sia rimasto lassù in cielo.",
	},
	["race.gnome.journey.w09.007"] = {
		"Eccoci. Terreno nuovo, problemi nuovi, e molto probabilmente cose nuove da smontare. Che bello.",
		"Finalmente qui. Il volo era la parte facile; ora le gambe si ricordano di essere corte.",
		"Piedi a terra, appunti alla mano. Qualunque cosa serva a questo posto, preferisco saperlo prima che lo chieda.",
	},
	["race.gnome.journey.w09.008"] = {
		"Grazie, mezzo di trasporto piumato. L'atterraggio però è da rivedere.",
		"Bel volo. Più o meno. Ho degli appunti, se a qualcuno interessano.",
	},
	["race.gnome.quest_complete.w09.001"] = {
		"Finito, e tutti i pezzi con cui avevo cominciato sono ancora attaccati. Per me è un collaudo perfetto.",
		"Fatto! Niente fumo, niente scintille, e un solo strillo piccolino, che ho deciso di non contare.",
	},
	["race.gnome.quest_complete.w09.002"] = {
		"Un altro lavoro finito per gente che di uno gnomo non aveva alcun bisogno. Un giorno vorrei finirne uno per Gnomeregan.",
		"Lavoro fatto bene, paga onesta. Eppure non è quello che vorrei fare più di tutto: riaprire i cancelli di casa.",
	},
	["race.gnome.quest_complete.w09.003"] = {
		"si spolvera le mani piccole con due colpi secchi, come un artigiano che chiude il coperchio di una scatola finita.",
		"si alza in punta di piedi per consegnare l'ultima parte, poi si dondola sui talloni con l'aria di chi è molto, molto contento.",
		"fa un cenno rapido e compiaciuto, quello che uno gnomo tiene da parte per un ingranaggio che finalmente ingrana.",
	},
	["race.gnome.quest_complete.w09.004"] = {
		"Problema risolto. Trattenete gli applausi: sono {g:basso|bassa}, e mi passano sopra la testa.",
		"Ecco, sistemato. Potete ringraziarmi quaggiù, un po' sotto il livello degli occhi.",
	},
	["race.gnome.quest_complete.w09.005"] = {
		"Fatto. Ho già annotato tre cose che farei in un altro modo. Non è rimpianto: è una revisione.",
		"Finito, e gli appunti sono più lunghi del lavoro. Per uno gnomo è tempo speso benissimo.",
		"Concluso. Adesso viene il bello: capire perché ha funzionato.",
	},
	["race.gnome.quest_complete.w09.006"] = {
		"Fatto, e fatto per l'Alleanza. Gli esuli di Gnomeregan i debiti li pagano, un incarico dopo l'altro.",
		"Un'altra commissione chiusa per l'Alleanza. Un popolo in esilio deve rendersi utile il doppio, e a me non pesa affatto.",
	},
	["race.gnome.quest_complete.w09.007"] = {
		"Una ricompensa quasi troppo pesante da portare. Per uno gnomo non esiste problema più bello.",
		"Grazie! Per questa borsa mi servono tutte e due le braccia, ed è proprio così che mi piacciono le borse.",
	},
	["race.gnome.quest_complete.w09.008"] = {
		"conta la ricompensa moneta per moneta, aggrotta la fronte e la riconta con la cura di chi verifica una misura.",
		"soppesa il compenso nel palmo minuto, fa un rapido conto a fior di labbra e lo mette via con aria soddisfatta.",
	},
	["race.gnome.quest_complete.w09.009"] = {
		"I sopravvissuti dicono che fu Thermaplugg a consigliare di inondare Gnomeregan di veleno per salvarla. Quello che aggiusto io, lo aggiusto perché il paziente viva.",
		"Mekkatorque diede ascolto al consigliere sbagliato, raccontano gli esuli, e una città intera ne pagò il prezzo. Le mie soluzioni le controllo due volte.",
	},
	["race.gnome.quest_complete.w09.010"] = {
		"Incarico completato. Archiviatelo sotto: cose finite da qualcuno di piccolo dopo che l'avevano chiesto a qualcuno di grosso.",
		"Tutto fatto. Buffo quante volte il lavoro finisca a chi sta più vicino al pavimento.",
	},
	["race.gnome.quest_complete.w09.011"] = {
		"Un lavoro finito è la prova che il mondo si può ancora aggiustare. Agli gnomi una prova così serve, ogni tanto.",
		"Qualcosa era rotto, e adesso non lo è più. Dopo Gnomeregan, quella sensazione non mi stanca mai.",
		"Una cosa rimessa a posto. Non ripara una città, ma ripara il mio umore, ed è già qualcosa.",
	},
	["race.gnome.quest_complete.w09.012"] = {
		"Fatto! Vorrei una ricevuta, un panino e la prossima cosa impossibile, in quest'ordine.",
		"Finito! Allora, c'è qualcosa da mangiare e qualcosa di più difficile da fare? Meglio tutte e due.",
		"Sistemato. Che altro avete che nessuno vuole toccare?",
	},
	["race.gnome.quest_complete.w09.013"] = {
		"si arrampica sulla cassa più vicina per dare la buona notizia da un'altezza più dignitosa.",
		"si schiarisce la voce, si drizza quanto più può e annuncia il successo alla fibbia della cintura di qualcuno.",
	},
	["race.gnome.quest_complete.w09.014"] = {
		"Sotto Dun Morogh, in qualche galleria, gli gnomi che non sono riusciti a uscire vagano ancora per i corridoi, malati e perduti. Ogni buona azione quassù è una parola che vorrei mandare giù fino a loro.",
		"Gli gnomi lebbrosi si aggirano ancora in ciò che resta di Gnomeregan. Finisco il mio lavoro quassù e penso a loro, ogni volta.",
	},
	["race.gnome.quest_complete.w09.015"] = {
		"Finito. Cos'altro c'è di rotto?",
		"Sistemato. Avete qualcosa di più difficile?",
		"Fatto. Il prossimo problema, prego.",
	},
	["race.gnome.quest_complete.w09.016"] = {
		"Hanno affidato il lavoro alla persona più piccola della stanza. La persona più piccola della stanza l'ha appena finito.",
		"Da una taglia come la mia nessuno si aspettava granché. Le aspettative, a quanto pare, si possono regolare.",
	},
	["race.gnome.quest_complete.w09.017"] = {
		"Felice di aiutare! Se si rompe qualcos'altro, chiedete dello gnomo. Di solito ce n'è uno nei paraggi, tra i piedi.",
		"{g:Ben lieto|Ben lieta} di dare una mano. Mani piccole, ma arrivano dove quelle grosse non entrano.",
	},
	["race.gnome.quest_complete.w09.018"] = {
		"Fatto, e le mie gambe hanno camminato il doppio di quelle di chiunque altro. La prossima volta mi faccio prestare un mechanostrider.",
		"Finito. Passi corti, commissioni lunghe: qualcuno dovrebbe inventare un rimedio, e tanto vale che sia uno gnomo.",
	},
	["race.gnome.quest_complete.w09.019"] = {
		"Problema, tentativo, fallimento, tentativo migliore, soluzione. L'ordine non cambia mai: cambia solo quanti fallimenti ci stanno in mezzo.",
		"Provare, sbagliare, correggere, riprovare. È il ritmo dei vecchi artigiani gnomi, e ha funzionato anche stavolta.",
	},
	["race.gnome.quest_complete.w09.020"] = {
		"canticchia tre note allegre e stonate di trionfo e intasca la ricompensa.",
		"si lascia scappare un fischietto contento fra i denti e saluta il lavoro finito con una pacca.",
		"si illumina di un sorriso largo e improvviso da gnomo, che occupa quasi tutto un viso piccolo.",
	},
	["race.gnome.quest_complete.w09.021"] = {
		"Fatto, e al primo colpo. Be', al primo colpo che contava.",
		"Riuscito al primo tentativo! Il primo che qualcuno abbia visto, almeno.",
	},
	["race.gnome.quest_complete.w09.022"] = {
		"Un nano alzerebbe le spalle e la chiamerebbe una giornata di lavoro onesto. Uno gnomo ne disegnerebbe un grafico. Io faccio tutte e due le cose.",
		"I nani di Ironforge finiscono un lavoro e vanno a farsi una birra. Gli gnomi finiscono un lavoro e vanno a prendere la matita. Per stavolta provo la birra.",
	},
	["race.gnome.quest_complete.w09.023"] = {
		"Tinker Town ne sentirà parlare, e probabilmente con molti più dettagli di quanti ne voglia.",
		"A Tinker Town qualcuno si sentirà raccontare tutta la storia, con tanto di schemi, che l'abbia chiesto o no.",
	},
	["race.gnome.quest_complete.w09.024"] = {
		"Che resti agli atti: l'ha fatto uno gnomo! Mani piccole, risultati grandi!",
		"Scrivetelo da qualche parte: portato a termine da uno gnomo di Gnomeregan, in esilio e in forma smagliante!",
		"Mettete il nome del mio popolo su questo. Gli gnomi: quelli bassi che le cose le finiscono!",
	},
	["race.gnome.quest_complete.w09.025"] = {
		"Ogni lavoro finito quaggiù è un'abilità in più che gli gnomi potranno portare a casa, quando ci sarà di nuovo una casa dove portarla.",
		"Con queste commissioni continuo a imparare. Gnomeregan la ricostruiranno gnomi che, nell'attesa, avranno imparato moltissimo.",
	},
	["race.gnome.quest_complete.w09.026"] = {
		"traccia nell'aria con un dito un rapido schema di quanto è appena successo, poi gli rivolge un cenno soddisfatto.",
		"si picchietta due volte la tempia, come per archiviare tutta la faccenda in un posto sicuro, da studiare più tardi.",
	},
	["race.gnome.quest_complete.w09.027"] = {
		"Finito come si deve, non soltanto finito. C'è differenza, e uno gnomo se ne accorge sempre.",
		"Funziona, e continuerà a funzionare. È la seconda parte quella che conta.",
		"Fatto con una cura sotto cui metterei la firma. L'Alto Inventore non chiederebbe niente di meno.",
	},
	["race.gnome.quest_complete.w09.028"] = {
		"Ecco qua, tutto aggiustato. Se mai dovesse guastarsi di nuovo, farò finta di stupirmi.",
		"È tutto tuo, in buon ordine. Trattalo con garbo, e lui farà lo stesso con te.",
	},
	["race.gnome.quest_progress.w09.001"] = {
		"Fase uno completata. Fase due: la stessa cosa, solo di più.",
		"Risultati parziali. E anche promettenti.",
		"Una parte è fatta. Il resto è questione di ripetere e correggere.",
	},
	["race.gnome.quest_progress.w09.002"] = {
		"Ci sono tutti i pezzi! Si torna da chi l'ha chiesto: voglio vedere che faccia fa.",
		"Raccolto tutto! È ora del giro di consegna.",
	},
	["race.gnome.quest_progress.w09.003"] = {
		"conta sulle dita minute quello che è fatto, finisce le dita e ricomincia con un sorriso.",
		"depenna un'altra riga di una lista tenuta tutta a mente, e canticchia.",
	},
	["race.gnome.quest_progress.w09.004"] = {
		"Qui ho finito. Il ritorno a piedi è l'unica parte di tutto questo che non riesco a ottimizzare.",
		"Fatto. Adesso il lungo viaggio di ritorno su gambe corte, l'unico difetto di un progetto per il resto eccellente.",
	},
	["race.gnome.reputation_change.w09.001"] = {
		"Adesso hanno più stima di me. Un popolo in esilio impara che la benevolenza vale più dell'oro.",
		"Un po' di fiducia in più, guadagnata. Gli gnomi tengono registri accurati, e questa va nella colonna buona.",
		"La mia reputazione migliora. Ironforge ha insegnato al mio popolo cosa significa quando degli sconosciuti decidono di fidarsi.",
	},
	["race.gnome.rest_enter.w09.001"] = {
		"Un posto per riposare. Prima trovo una sedia della mia misura, cosa che richiederà un po', poi riposerò il doppio.",
		"Finalmente riposo. Le mie gambe hanno fatto doppio lavoro tutto il giorno solo per stare al passo col mondo.",
		"Un posto sicuro dove sedersi. Uno gnomo si ricarica in fretta, con un cuscino e cinque minuti senza esplosioni.",
	},
	["race.gnome.rest_enter.w09.002"] = {
		"si arrampica su una panca pensata per gente più alta, le gambe a penzoloni, e si lascia sfuggire un lungo sospiro soddisfatto.",
		"avvicina uno sgabello al calore, tira fuori di tasca un taccuino spiegazzato, e si dimentica subito di aprirlo.",
	},
	["race.gnome.rest_enter.w09.003"] = {
		"Riposare in stanze prese in prestito è ormai una specialità gnomesca. Si tira fuori l'essenziale, si prende il posto più caldo, e per un'ora è casa abbastanza.",
		"Una locanda, un letto, una porta che si chiude. Cose semplici. L'esilio ci ha insegnato a non chiamarle piccole.",
	},
	["race.orc.journey.w09.001"] = {
		"Si sale. Controllo le cinghie, poi le ricontrollo. Un orco si fida della forza, e una cinghia è solo cuoio.",
		"Il suolo si allontana. Mi tengo più forte del necessario. Nessuno guarda, quindi nessuno lo saprà.",
		"Su in aria come un sacco di grano. La dignità di un orco non sopravvive intera a un volo, ma il resto di solito sì.",
	},
	["race.orc.journey.w09.002"] = {
		"monta sulla viverna e stringe l'imbracatura con entrambi i pugni verdi, la mascella serrata mentre le ali battono.",
		"sale in groppa alla viverna con un grugnito, sistema il peso e fa un solo cenno al maestro di volo.",
		"si curva basso sul collo della viverna mentre questa balza in aria, le zanne scoperte contro la raffica.",
	},
	["race.orc.journey.w09.003"] = {
		"Da quassù il mondo è una mappa di colori. Per abitudine cerco la terra rossa, e se la trovo sento un piccolo strattone.",
		"Laggiù le strade diventano fili e i forti sassolini. Distinguo quelli dell'Orda dagli altri: anche da quassù un orco tiene il conto.",
		"L'altezza rende tutto piccolo, perfino la guerra. Per un momento, quassù, vedo la forma del mondo invece delle sue liti.",
	},
	["race.orc.journey.w09.004"] = {
		"Vola dritto, bestia, e ti troverò qualcosa con più carne addosso di me.",
		"Calma, bestia. Io non mordo, e preferirei che non lo facessi neanche tu.",
	},
	["race.orc.journey.w09.005"] = {
		"A terra. Le gambe si ricordano a cosa servono. Lo stomaco ci mette un po' di più.",
		"Terreno solido sotto di me. Un orco non è fatto per stare appeso al cielo, e le ginocchia me l'hanno ripetuto per tutto il viaggio.",
		"Piedi a terra, via l'imbracatura. Volare è veloce, glielo concedo. Dignitoso no.",
	},
	["race.orc.journey.w09.006"] = {
		"si lascia cadere dalla groppa della viverna e atterra pesantemente, facendo ruotare le spalle come per scrollarsi di dosso il cielo.",
		"scivola giù dalla sella, pesta una volta il suolo per accertarsi che sia vero, e se ne va senza voltarsi.",
	},
	["race.orc.journey.w09.007"] = {
		"Bel volo. Dirò agli altri che mi hai fatto paura solo due volte.",
		"Hai fatto un buon lavoro, bestia. Una striscia di carne per te, se il maestro di volo lo permette.",
		"Grazie del passaggio. Lo stomaco forse ti ringrazierà più tardi.",
	},
	["race.orc.journey.w09.008"] = {
		"Si parte. Le viverne servono l'Orda come i lupi: non schiave, compagne. La vecchia Orda non ha mai capito la differenza.",
		"Una viverna porta un orco perché sceglie di lavorare con noi. Nella vecchia Orda, dicono gli anziani, tutto si mandava avanti a frustate. Così è meglio.",
	},
	["race.orc.journey.w09.009"] = {
		"Atterraggio fatto. Ovunque io sia, è lontano dalla polvere rossa. Riparto a piedi, come si deve per un orco.",
		"Il volo finisce e comincia il cammino. Un orco preferisce così: l'ultimo tratto sulle proprie gambe.",
		"Finalmente giù. A piedi ci sarei {g:arrivato|arrivata} lo stesso, con una settimana. Una viverna è solo un modo più veloce di essere testardi.",
	},
	["race.orc.quest_complete.w09.001"] = {
		"Finito. La prossima volta dimmi solo cosa va rotto e fatti da parte.",
		"Agli orchi non servono discorsi prima del lavoro, serve il lavoro. Ecco, sistemato.",
		"Sistemato. Tieniti i ringraziamenti e dammi il prossimo incarico.",
	},
	["race.orc.quest_complete.w09.002"] = {
		"Avevo detto che l'avrei fatto, e l'ho fatto. Alla fine l'onore è tutto qui: una parola, e le gambe per portarla.",
		"L'onore non è uno stendardo. È una promessa mantenuta quando nessuno avrebbe saputo che l'avevi infranta.",
		"Avevo dato la parola, e ora è saldata per intero. Pesa meno di qualunque moneta.",
	},
	["race.orc.quest_complete.w09.003"] = {
		"si scuote dagli stivali la polvere della strada, e un piccolo grugnito soddisfatto chiude la faccenda.",
		"fa ruotare le spalle e grugnisce una volta sola: il verso semplice di un orco davanti a un lavoro fatto bene.",
	},
	["race.orc.quest_complete.w09.004"] = {
		"Gli orchi che sono passati per i campi parlano di stagioni intere senza fare nulla che valesse la pena ricordare. Io no. Non oggi.",
		"Gli anziani sopravvissuti ai campi d'internamento dicono che il peggio era l'inerzia. Meglio i piedi a pezzi, sempre.",
	},
	["race.orc.quest_complete.w09.005"] = {
		"Per questo qualcuno mi deve un pasto, e il pasto di un orco non è cosa da poco.",
		"Finito, e ho una fame da lupi. Si accettano pagamenti anche in cinghiale arrosto.",
	},
	["race.orc.quest_complete.w09.006"] = {
		"Lavoro semplice, fatto senza fronzoli. Il Capoguerra lo chiede a ogni orco, ed è giusto chiederlo.",
		"Thrall non ci ha mai chiesto canzoni su noi stessi. Ci ha chiesto lavoro che regga. Questo regge.",
		"Thrall non ci ha tirati fuori dai campi perché restassimo seduti ad aspettare ordini. L'ha fatto per cose come questa, fatte bene.",
	},
	["race.orc.quest_complete.w09.007"] = {
		"Raccontatelo pure a Orgrimmar: me l'hanno chiesto, e l'ho fatto.",
		"Portate la notizia nella Valley of Strength, se volete. Non impedirò a nessuno di vantarsi al posto mio.",
	},
	["race.orc.quest_complete.w09.008"] = {
		"Il sudore si asciuga. Il lavoro resta fatto. È questo lo scambio, e mi sta bene.",
		"Le braccia mi fanno male, e la cosa è chiusa. Un orco ci dorme sopra benissimo.",
		"Mani indolenzite, schiena rigida, incarico concluso. Conti onesti.",
	},
	["race.orc.quest_complete.w09.009"] = {
		"E fatto come si deve. Controlla pure: gli orchi non lavorano alla buona, ma non mi offendo.",
		"Guardaci dentro quanto vuoi. Non ho niente da nascondere e ancora meno pazienza.",
	},
	["race.orc.quest_complete.w09.010"] = {
		"Ogni incarico onesto è una pietra nelle mura di Orgrimmar. Una pietra piccola. Ma pur sempre una pietra.",
		"Durotar non l'hanno costruito gli eroi. L'hanno costruito orchi che facevano la cosa successiva da fare, come questa.",
	},
	["race.orc.quest_complete.w09.011"] = {
		"Pensavi ci volesse di più? Finora hai assunto le razze sbagliate.",
		"Più svelto del previsto? La prossima volta chiedi subito a un orco.",
	},
	["race.orc.quest_complete.w09.012"] = {
		"si preme un pugno sul petto e lo lascia lì per un istante: promessa mantenuta.",
		"fa un solo cenno secco, le zanne scoperte in qualcosa di simile a un sorriso.",
	},
	["race.orc.quest_complete.w09.013"] = {
		"Gli anziani dicono che un tempo il nostro sangue bruciava di fuoco demoniaco. Il mio si scalda solo per il lavoro onesto, ed è una febbre migliore.",
		"A Orgrimmar dicono che la morte di Hellscream ci ha comprato questo: un compito scelto da noi, portato a termine da mani che nessun demone possiede.",
	},
	["race.orc.quest_complete.w09.014"] = {
		"Finito. A un orco non serve chiederlo due volte: basta una, e chiara.",
		"Chiedi chiaro e avrai in cambio lavoro chiaro. Come questo.",
		"Di' una volta sola ciò che ti serve: gli orchi ascoltano alla prima. Visto?",
	},
	["race.orc.quest_complete.w09.015"] = {
		"Troll, tauren, perfino i Reietti: chiunque ci sia dall'altra parte di un lavoro così, è con questo che l'Orda sta in piedi.",
		"L'Orda è un mucchio di popoli strani che si sono messi d'accordo per aiutarsi. Oggi ho fatto la mia parte dell'accordo.",
	},
	["race.orc.quest_complete.w09.016"] = {
		"Con le mie due mani, dall'inizio alla fine. Lok'tar!",
		"La forza è fatta per essere usata, e io l'ho usata bene!",
	},
	["race.orc.quest_complete.w09.017"] = {
		"Se cominciano a ringraziarmi, faccio un cenno e me ne vado. Gli orchi non sono fatti per tanta gratitudine: prude.",
		"Si tengano i discorsi. Un grugnito e una stretta di mano, e siamo pari.",
	},
	["race.orc.quest_complete.w09.018"] = {
		"La forza non serve solo nell'arena. Quasi sempre serve a portare le cose dove devono arrivare. Come oggi.",
		"Gli orchi parlano della forza come se abitasse nel pugno. Metà abita nella pazienza di arrivare in fondo.",
	},
	["race.orc.quest_complete.w09.019"] = {
		"Lavoro chiuso. Prendo la paga e la strada, in quest'ordine.",
		"Pagami e indicami la prossima cosa. Gli orchi non si attardano.",
		"Questa era la mia parte. Sistema la tua e sparisco.",
	},
	["race.orc.quest_complete.w09.020"] = {
		"Frostwolf, Warsong, un tempo Blackrock: ogni clan andava fiero di cose diverse. Tutti andavano fieri di un lavoro finito.",
		"Da qualunque clan venga un orco, su una cosa si è d'accordo: quello che prendi in mano, lo porti a termine.",
	},
	["race.orc.quest_complete.w09.021"] = {
		"si fa scrocchiare le nocche una per una, con l'aria vagamente delusa che non ci sia altro da colpire.",
		"si guarda intorno come sperando che il lavoro avesse una seconda parte, poi alza le spalle e si accontenta della ricompensa.",
	},
	["race.orc.quest_complete.w09.022"] = {
		"Ogni incarico così lascia un po' meno spazio ai sussurri della Burning Blade. Gli orchi indaffarati non danno retta alle sette.",
		"La Burning Blade si nutre di orchi senza niente da fare e niente in cui credere. Io, per ora, ho l'una e l'altra cosa.",
	},
	["race.orc.quest_complete.w09.023"] = {
		"Tutto qui? Ho fatto la lotta con lupi che opponevano più resistenza.",
		"Già concluso? Gli scorpidi di Durotar si battono di più in una giornata fiacca.",
		"Di già? Non mi ero neanche scaldato le braccia.",
	},
	["race.orc.quest_complete.w09.024"] = {
		"La prossima volta che vedrò le porte di Orgrimmar, ci passerò sotto con la testa un po' più alta.",
		"Qualcosa da raccontare intorno al fuoco a Razor Hill, se qualcuno chiede. Gli orchi chiedono sempre.",
	},
	["race.orc.quest_complete.w09.025"] = {
		"La parola che ti ho dato è mantenuta. La parola di un orco è l'unica cosa che nessuno potrà toglierci di nuovo.",
		"Promessa mantenuta. Alla mia gente un tempo hanno tolto molto; la parola, mai.",
	},
	["race.orc.quest_complete.w09.026"] = {
		"Un lupo non si vanta dopo la caccia. Mangia, riposa, e va a caccia ancora. A me basta.",
		"I lupi non si vantano mai di una preda. Mangiano e vanno avanti. Gli orchi potrebbero imparare da loro, e i migliori l'hanno fatto.",
	},
	["race.orc.quest_complete.w09.027"] = {
		"Il buon lavoro mette sete. Dov'è il grog?",
		"Questo mi vale un boccale di qualcosa di forte. Chi versa?",
	},
	["race.orc.quest_complete.w09.028"] = {
		"La forza cresce come è stata scolpita la roccia rossa di Durotar: un giorno duro dopo l'altro.",
		"Nessuno diventa forte in un pomeriggio. Si impilano giornate come questa finché la catasta regge un peso.",
	},
	["race.orc.quest_progress.w09.001"] = {
		"È tutto quello che hanno chiesto. Ora la lunga camminata per dirglielo, e alle gambe di un orco non pesa.",
		"Tutto raccolto, tutto fatto. La strada fino a chi l'ha chiesto è la parte facile.",
		"Qui fuori non resta niente da fare. Il resto è portare la notizia, e a portare sono bravo.",
	},
	["race.orc.quest_progress.w09.002"] = {
		"Una parte. Non tutto. Gli orchi non si fermano a una parte.",
		"Un pezzo è fatto. Il resto mi si nasconde, e non per molto.",
		"Non è finita. Bene. Tanto la stanchezza non era ancora arrivata.",
	},
	["race.orc.quest_progress.w09.003"] = {
		"Un pezzo di strada è fatto. Un lupo sulla pista non conta i passi alle spalle, solo l'odore davanti.",
		"Non ci siamo ancora. Naso basso e piedi in movimento, come un lupo che ha fiutato la traccia.",
	},
	["race.orc.quest_progress.w09.004"] = {
		"emette un grugnito soddisfatto: è tutto in pugno, resta solo la strada da fare.",
		"raddrizza le spalle e si volta verso chi aspetta, senza sprecare un passo.",
	},
	["race.orc.reputation_change.w09.001"] = {
		"Un po' più di rispetto. Gli orchi se lo guadagnano piano, con i fatti, e per questo dura di più.",
		"Ora hanno un'opinione migliore di me. Bene. Il nome di un orco si costruisce come un muro: pietra pesante su pietra pesante.",
		"Rispetto guadagnato, non mendicato. È l'unico che un orco dovrebbe portarsi addosso.",
	},
	["race.orc.rest_enter.w09.001"] = {
		"Un posto dove fermarsi. Un orco riposa come un lupo: un orecchio dritto, e nel mezzo un sonno profondo.",
		"Riposo. Metto le mie cose dove posso prenderle senza guardare. Vecchia abitudine di un popolo che dormiva con una mano vicino all'arma.",
		"È ora di sedersi. Gli anziani dicono che un orco che riposa senza vergogna combatte senza paura. Ho intenzione di riposare benissimo.",
	},
	["race.orc.rest_enter.w09.002"] = {
		"Un tetto e un fuoco. La panca di qualcun altro, i muri di qualcun altro, ma il calore è lo stesso. Lo prendo volentieri.",
		"Al chiuso. Gli sgabelli sono sempre troppo piccoli per un orco, ma al fuoco non importa quale popolo l'abbia acceso.",
		"Quattro mura e un focolare. Gli orchi le costruiscono più spesse, ma per ora queste bastano.",
	},
	["race.orc.rest_enter.w09.003"] = {
		"si lascia andare su un sedile con un lungo grugnito, distende le gambe e lascia finalmente scivolare via il peso della strada.",
		"posa lo zaino e si siede, pesante e {g:contento|contenta}, come un masso che è finalmente rotolato in fondo alla collina.",
	},
	["race.scourge.journey.w09.001"] = {
		"La terra mi lascia andare. Niente vuoto allo stomaco, solo una vaga curiosità per il panorama.",
		"In volo. I vivi stringono le cinghie fino a farsi sbiancare le nocche. Le mie sono già di quel colore, perciò mi tengo e basta.",
		"Su, nel vento. Il freddo quassù non trova niente in me che se ne curi ancora.",
	},
	["race.scourge.journey.w09.002"] = {
		"si sistema in sella mentre la bestia si alza, la schiena dritta e il corpo immobile, come un carico che conosce la sua destinazione.",
		"sale in aria senza un sussulto, il mantello che schiocca, le mani posate sulle cinghie.",
	},
	["race.scourge.journey.w09.003"] = {
		"Se cado, lasciatemi pure lì. Torno a piedi.",
		"Calma, bestia. Stai portando un cadavere con degli impegni.",
	},
	["race.scourge.journey.w09.004"] = {
		"Dall'alto la terra sembra intera. I vivi vedono campi e strade. Io continuo a cercare i punti dove qualcosa è andato storto, per abitudine.",
		"Laggiù le strade sembrano punti di sutura che tengono insieme la terra. Di cuciture me ne intendo un po'.",
	},
	["race.scourge.journey.w09.005"] = {
		"Giù. Le giunture scricchiolano un po' per essere rimaste ferme tanto a lungo. Ecco tutto il mio mal di viaggio.",
		"Di nuovo a terra. Un cavaliere vivo si stirerebbe gemendo. Io devo solo controllare che non sia caduto niente per strada.",
		"A terra, e nemmeno un capello fuori posto. Soprattutto perché non ne sono rimasti molti.",
	},
	["race.scourge.journey.w09.006"] = {
		"scende di sella con movimenti rigidi e si tasta le tasche, e poi le cuciture, per assicurarsi che sia arrivato tutto.",
		"smonta e resta un attimo in piedi, imperturbabile, il vento che tira ancora il mantello e nient'altro.",
	},
	["race.scourge.journey.w09.007"] = {
		"Grazie del passaggio. Hai portato il passeggero con molta calma.",
		"Bel volo. Nessuno ha urlato, nemmeno io.",
	},
	["race.scourge.journey.w09.008"] = {
		"Di nuovo a terra, tra i vivi e il loro rumore. Il cielo era più silenzioso. Il cielo non fissa.",
		"A terra. Ora comincia la parte in cui la gente si scansa senza sapere bene perché.",
	},
	["race.scourge.journey.w09.009"] = {
		"In volo ricordo che i vivi, qui, provavano gioia. La cerco in me e trovo qualcosa di più piccolo: una specie di quiete.",
		"Il vento mi sfreccia accanto e del suo freddo non sento niente. Peccato. Mi sarebbe piaciuto sentirlo, una volta, con una faccia viva.",
	},
	["race.scourge.journey.w09.010"] = {
		"Giù, e di nuovo la terra sotto di me. Ci ho passato abbastanza tempo sotto; sopra mi sta meglio.",
		"Terra. Bene. L'ho conosciuta da sotto e dall'alto, e camminarci sopra resta il mio modo preferito.",
	},
	["race.scourge.journey.w09.011"] = {
		"Su, bestia. E niente picchiate: certi miei pezzi sono solo legati.",
		"Volo tranquillo, per favore. Mi tengono insieme filo e buone intenzioni.",
	},
	["race.scourge.quest_complete.w09.001"] = {
		"Ecco, è tutto finito. Se ti tranquillizza, contati pure le dita quando me ne sarò {g:andato|andata}.",
		"Fatto. Su, controlla pure che non ci sia caduto dentro qualcosa di mio. Un dito, un orecchio. Capita.",
		"Finito, e durante il lavoro non mi si è staccato niente. Per me è una buona giornata.",
	},
	["race.scourge.quest_complete.w09.002"] = {
		"Ho dato la mia parola e l'ho mantenuta. Per i vivi è poca cosa. Per uno di noi, una parola mantenuta è la prova che dentro c'è ancora qualcuno a mantenerla.",
		"Promesso, e consegnato. Qualunque altra cosa si sia presa la tomba, mi ha lasciato la capacità di mantenere una promessa.",
		"La mia parola, data liberamente e liberamente mantenuta. I morti dovrebbero essere infidi. Mi piace deludere le aspettative.",
	},
	["race.scourge.quest_complete.w09.003"] = {
		"chiude la faccenda con un breve cenno, e le giunture secche del collo scricchiolano appena.",
		"apre e chiude una volta le dita rigide, come per accertarsi che le mani che hanno fatto il lavoro siano ancora al loro posto, e le lascia ricadere.",
	},
	["race.scourge.quest_complete.w09.004"] = {
		"Pagami in monete, non con quello sguardo. Di sguardi così ne ho avuti abbastanza.",
		"Le monete, prego. La faccia che stai facendo non si spende da nessuna parte.",
		"Il tuo oro, se non ti dispiace. Il brivido tienilo pure: ne ho già una collezione.",
	},
	["race.scourge.quest_complete.w09.005"] = {
		"Finito. Per un attimo ho quasi sentito la soddisfazione di una volta, quella calda. Poi è passata, ed è rimasta quella semplice. Mi accontento di quella.",
		"I vivi festeggiano queste cose con una cena e un po' di compagnia. Io resto qui un momento, e questa è la mia festa.",
	},
	["race.scourge.quest_complete.w09.006"] = {
		"Un altro compito per Undercity. I Reietti sono pochi, perciò ognuno di noi deve valere per dieci.",
		"Ecco un'altra cosa che i Reietti hanno fatto da soli. Nessun altro l'avrebbe fatta per noi.",
		"Segnatelo a nome dei Reietti. Siamo abituati al fatto che nessun altro tenga il conto.",
	},
	["race.scourge.quest_complete.w09.007"] = {
		"Nessuno è svenuto quando ho consegnato tutto. O sto imparando a stare in piedi con educazione, o si stanno abituando a noi.",
		"Neanche un urlo alla consegna. Per i Reietti, il progresso si misura in urla risparmiate.",
		"Mi hanno ringraziato da dieci passi di distanza. Tra i Reietti si impara a sentire la gratitudine da lontano.",
	},
	["race.scourge.quest_complete.w09.008"] = {
		"resta in silenzio un momento, poi emette una risata secca e roca che sembra cogliere di sorpresa perfino chi la fa.",
		"emette un suono rauco di approvazione, quanto di più simile a un sospiro possa fare un corpo senza fiato.",
	},
	["race.scourge.quest_complete.w09.009"] = {
		"Gli speziali della Royal Apothecary Society vorrebbero un rapporto completo: cosa ho visto, cosa ho toccato, che odore aveva. Aspetteranno. Mi sto godendo la fine del lavoro.",
		"A Undercity c'è sempre uno speziale pronto a farmi scrivere tutto in un registro, con le misure. Gli darò un'alzata di spalle.",
	},
	["race.scourge.quest_complete.w09.010"] = {
		"Ecco. Fatto da qualcuno senza polso e con tutta la pazienza del mondo. Hai fatto un affare.",
		"Finito. Niente pasti, niente sonno, niente lamentele. I morti sono ottimi lavoranti.",
		"Tutto sistemato. Non ho fatto nemmeno una pausa per mangiare. Del resto, la faccio di rado.",
	},
	["race.scourge.quest_complete.w09.011"] = {
		"Il Re dei Lich mi faceva andare e venire senza fine, e niente di tutto quello era mio. Questa commissione non era più grande, ma l'ho scelta io. Tutta la differenza è lì, ed è enorme.",
		"Sotto il Flagello ogni compito finito portava solo all'ordine successivo. Ora un compito finisce, e il prossimo aspetta finché non decido io.",
	},
	["race.scourge.quest_complete.w09.012"] = {
		"Dite agli orchi che l'ha fatto {g:un Reietto|una Reietta}. Non ci crederanno, e poi dovranno crederci.",
		"Se qualcuno nell'Orda lo chiede, rispondete: uno dei Reietti di Sylvanas. E che ci riflettano.",
	},
	["race.scourge.quest_complete.w09.013"] = {
		"Una volta finivo le cose perché la vita era breve. Ora non ho nessuna fretta, e le finisco lo stesso. Abitudine, o qualcosa di meglio.",
		"Da {g:vivo|viva}, un compito così era una corsa contro gli anni. Gli anni hanno smesso di contarmi. L'ho fatto comunque.",
	},
	["race.scourge.quest_complete.w09.014"] = {
		"mette da parte l'ultima cosa e con il palmo rimette a posto la mascella allentata, con aria soddisfatta.",
		"fa un cenno soddisfatto, poi deve tenersi ferma la mascella, che ha annuito un po' più del resto.",
	},
	["race.scourge.quest_complete.w09.015"] = {
		"La Scarlet Crusade ci chiama abomini. Gli abomini, a quanto pare, mantengono la parola.",
		"Che la Crusade predichi pure sui morti che camminano. {g:Questo morto|Questa morta} che cammina ha finito il lavoro.",
	},
	["race.scourge.quest_complete.w09.016"] = {
		"Nessuno aspetta di sapere com'è andata. Me lo racconto da me, in breve, e il racconto basta.",
		"Finito, e nessuno a cui dirlo. Lo dirò più tardi alle pietre di Undercity: ne hanno sentite di peggio.",
	},
	["race.scourge.quest_complete.w09.017"] = {
		"Scusa l'odore. Almeno il lavoro è buono, e il lavoro è quello che hai chiesto.",
		"È fatta. Sì, quest'odore sono io. No, non va via.",
		"Finito. Mi avvicinerei per consegnartelo, ma dicono che l'olio da imbalsamazione sia un gusto da acquisire.",
	},
	["race.scourge.quest_complete.w09.018"] = {
		"La sala del trono di Lordaeron giace in rovina sopra Undercity. Ogni piccolo compito come questo è un modo di dire che i morti abitano ancora lì, e intendono restarci.",
		"Sopra la città, la vecchia capitale si sbriciola. Sotto, noi portiamo a termine le cose. Una di più.",
	},
	["race.scourge.quest_complete.w09.019"] = {
		"Puoi respirare, adesso. Non mi offendo: io ci ho rinunciato da un pezzo.",
		"Finito. Puoi rilassarti. Non mordo. Quasi mai.",
	},
	["race.scourge.quest_complete.w09.020"] = {
		"Credo che la persona che ero prima ne sarebbe stata fiera. Non posso chiederglielo. Ne sarò {g:fiero|fiera} io, al posto suo.",
		"La persona che ero a Lordaeron l'avrebbe fatto meglio, o peggio. Non lo saprò mai. Questa versione l'ha fatto.",
	},
	["race.scourge.quest_complete.w09.021"] = {
		"Questo è fatto. Dite al prossimo della lista che i morti hanno voglia di lavorare.",
		"Portatemi il prossimo. I morti non si stancano, e mi dispiacerebbe sprecarlo.",
	},
	["race.scourge.quest_complete.w09.022"] = {
		"resta immobile per un po' dopo la consegna, senza battere ciglio, come in ascolto di un'emozione che tarda ad arrivare.",
		"indugia un momento con un'aria vagamente perplessa, quella di chi fruga in tasca cercando qualcosa che un tempo c'era.",
	},
	["race.scourge.quest_complete.w09.023"] = {
		"Con le monete comprerò cibo di cui sento appena il sapore. Lo comprerò comunque: masticare fa passare il tempo, e ricorda alla mascella a cosa serve.",
		"Per i vivi la ricompensa è un pasto caldo. Per me uno freddo, mangiato per abitudine. Sembra comunque una ricompensa.",
	},
	["race.scourge.quest_complete.w09.024"] = {
		"Finito. Non fare storie: non saprei cosa farmene.",
		"Ecco. Niente discorsi, per favore. I morti non sanno ricevere complimenti.",
		"Fatto e consegnato. Qualunque ringraziamento avessi in mente, consideralo ricevuto.",
	},
	["race.scourge.quest_complete.w09.025"] = {
		"Tirisfal ce l'ha insegnato presto: i Reietti ottengono ciò per cui lavorano, e poco più. Ecco un altro poco, guadagnato.",
		"Brill, Deathknell, il Sepulcher: la nostra gente ha costruito ogni avamposto con commissioni come questa. Il mio mattone l'ho messo.",
	},
	["race.scourge.quest_complete.w09.026"] = {
		"Lo ammetto: a metà ho pensato di mollare. Poi mi è tornato in mente che nessuno può costringermi nemmeno a mollare.",
		"Finito. Mi ha portato fin qui la mia volontà, la stessa cosa testarda che ha detto di no al Re dei Lich.",
	},
	["race.scourge.quest_complete.w09.027"] = {
		"Fatto, e senza nemmeno morire. Di nuovo.",
		"Un altro lavoro a cui sono {g:sopravvissuto|sopravvissuta}. Uso il termine in senso lato.",
		"Concluso, e tutto d'un pezzo. Quasi tutto.",
	},
	["race.scourge.quest_complete.w09.028"] = {
		"si pulisce dalla manica una macchia scura, controlla le cuciture sotto, e passa a quello che viene dopo.",
		"ritira una cucitura sfilacciata al polso, come i vivi si sistemano il colletto dopo un lavoro ben fatto.",
	},
	["race.scourge.quest_progress.w09.001"] = {
		"Una parte è fatta. Il resto si conserva: quasi tutto si conserva meglio di me.",
		"A metà strada. Piano e senza sosta, come il marciume, ma in una direzione utile.",
		"A metà. Non ho fretta: la tomba mi ha {g:guarito|guarita} dalla fretta.",
	},
	["race.scourge.quest_progress.w09.002"] = {
		"conta quel che resta sulle dita rigide, perde un briciolo di pazienza e prosegue.",
		"spunta qualcosa sulle dita grigie e rigide e riprende a camminare senza fretta.",
	},
	["race.scourge.quest_progress.w09.003"] = {
		"C'è tutto. Torno da chi me l'ha chiesto, e cercherò di non farlo sussultare.",
		"Raccolto tutto. Ora si riscuote, e si guarda qualcuno fingere di non fissarmi.",
		"Qui ho finito. Ora la strada del ritorno, che per una volta non mi pesa: le gambe non si stancano mai.",
	},
	["race.scourge.quest_progress.w09.004"] = {
		"Tutto pronto per la consegna. Non è proprio impazienza, ma ricordo com'era, e questa le somiglia.",
		"Ho raccolto tutto. Si muove una pallida cugina dell'orgoglio. La lascio venire con me.",
	},
	["race.scourge.reputation_change.w09.001"] = {
		"Pensano un po' meglio di un Reietto. Non credevo che contasse. Conta, un poco.",
		"Una scheggia di fiducia in più, concessa a un morto. La porterò con cura: è fragile, come chi me l'ha data.",
		"Qualcuno ha deciso che sono meno mostro di quanto pensasse. Piccola vittoria. Me la tengo.",
	},
	["race.scourge.rest_enter.w09.001"] = {
		"Un posto per riposare. Il letto non mi serve come ai vivi, ma prendo il silenzio, e il diritto di sedermi senza che nessuno mi fissi.",
		"Mura sicure. Non mi stanco, propriamente, ma qualcosa in me si allenta, un pugno che non sapevo di tenere chiuso.",
		"Finalmente un posto dove smettere di essere {g:osservato|osservata}. I morti non hanno bisogno di dormire; ciò che ci serve, ogni tanto, è essere ignorati.",
	},
	["race.scourge.rest_enter.w09.002"] = {
		"Una sedia, niente letto. I morti sono clienti economici: non dormono, mangiano pochissimo e non si lamentano mai degli spifferi.",
		"Niente stanza per me, grazie. Mi basta un angolo, e cercherò di non spaventare gli altri ospiti.",
	},
	["race.scourge.rest_enter.w09.003"] = {
		"si siede con la cura rigida delle vecchie giunture, e diventa così immobile che la stanza presto si dimentica di {g:lui|lei}.",
		"trova un angolo in disparte, tira su il cappuccio e si sistema in un'immobilità paziente, senza respiro.",
		"si cala su una panca e posa entrambe le mani piatte sul tavolo, come per ancorare un corpo che ha dimenticato come si fa a stancarsi.",
	},
	["race.troll.journey.w09.001"] = {
		"Su, nel vento. Mi tengo con le dita lunghe e spiego allo stomaco che per un troll è la cosa più naturale del mondo. Lo stomaco non ci crede.",
		"Si stacca da terra. I troll si arrampicano sugli alberi, non sul cielo, e le mie ginocchia ci tengono a farlo sapere.",
		"La bestia batte le ali e il mondo sprofonda. Sorrido, soprattutto per dare alla faccia qualcosa da fare oltre al panico.",
	},
	["race.troll.journey.w09.002"] = {
		"stringe le lunghe gambe ai fianchi della bestia mentre prende quota, le zanne scoperte all'aria che sferza.",
		"si rannicchia basso in sella mentre le ali fanno presa, le lunghe braccia strette attorno al collo della bestia.",
		"asseconda la salita con l'equilibrio disinvolto dei troll, i capelli tirati indietro dal vento e gli occhi socchiusi.",
	},
	["race.troll.journey.w09.003"] = {
		"Vola dritto, bestia mia. Lascio buone mance, in pesce.",
		"Piano con le curve, bestia. Ho un sacco di gamba da tenere sotto controllo.",
		"Si sale! Cerca di non farmi cadere, sono l'unico troll che ho.",
	},
	["race.troll.journey.w09.004"] = {
		"Da quassù ogni macchia azzurra potrebbe essere il mare. Lo sguardo ci va sempre per primo, come l'ago di una bussola verso nord.",
		"Sotto di me la terra si riduce a una mappa. Ne cerco l'acqua ai margini, come la mia gente cerca sempre la casa all'orizzonte.",
		"Il suolo si allontana e mi sorprendo a cercare un luccichio di risacca. Ovunque voli un troll, una parte di lui sta cercando la costa.",
	},
	["race.troll.journey.w09.005"] = {
		"Terra ferma. Le ginocchia protestano per un attimo, poi si ricordano come si cammina.",
		"Di nuovo giù. Distendo una gamba lunga alla volta e controllo che siano ancora entrambe mie.",
		"Piedi a terra, niente più vento nelle orecchie. Un troll è creatura della terra e degli alberi, e sono felice di tornare a esserlo.",
	},
	["race.troll.journey.w09.006"] = {
		"scivola giù dalla sella con un unico movimento lungo e sciolto e si scuote il vento dai capelli.",
		"salta a terra, si stiracchia finché la schiena non scricchiola, e dà alla bestia una pacca riconoscente sul collo.",
		"scende, ondeggia una volta sulle gambe lunghe, poi ritrova l'equilibrio con una breve risata.",
	},
	["race.troll.journey.w09.007"] = {
		"Di nuovo giù! Qualcuno mi dia qualcosa che stia fermo.",
		"Bel volo. Mai più. Fino alla prossima volta.",
		"Terra! Mi sei mancata, terra. Non cambiare mai.",
	},
	["race.troll.journey.w09.008"] = {
		"Un volo lungo. Per tutto il tragitto ho guardato scorrere le coste e ho dato un nome a quelle che conoscevo. Ora devo ricordare alle gambe che sono mie.",
		"Quante miglia di terra e d'acqua sotto le ali. La gente di un troll ha attraversato un mare nella paura; io ho attraversato mezzo continente stando {g:seduto|seduta}.",
	},
	["race.troll.quest_complete.w09.001"] = {
		"Tutto fatto. Se la ricompensa profuma di pesce, tanto meglio.",
		"Eccolo qua. Prima il troll lavora, poi il troll mangia. Così va il mondo.",
		"Finito. Contalo pure, se vuoi: io intanto vado a cercare qualcosa da mettere sul fuoco.",
	},
	["race.troll.quest_complete.w09.002"] = {
		"Parola mantenuta. Gli stregoni vudù di Sen'jin dicono che una promessa infranta ti segue come un cane randagio. Dietro di me non c'è nessuno.",
		"Finito come promesso. Gli stregoni vudù dicono che una parola mantenuta è il talismano più economico che ci sia, e il più forte.",
		"Una promessa è un po' di mojo che ti metti addosso da solo, dicono gli stregoni vudù. Questo, adesso, è sciolto.",
	},
	["race.troll.quest_complete.w09.003"] = {
		"consegna l'ultimo pezzo con uno svolazzo delle lunghe dita, le zanne scoperte in un sorriso compiaciuto.",
		"tamburella un ritmo veloce su una coscia, come quelli che i bambini Darkspear battono sulle barche capovolte.",
		"fa ruotare il lungo collo da una parte e dall'altra e si lascia sfuggire una risata breve e contenta.",
	},
	["race.troll.quest_complete.w09.004"] = {
		"Gli anziani di Sen'jin dicono che il nostro vecchio capo ha dato la vita perché la tribù fosse libera. Lavori piccoli come questo sono il modo in cui noialtri saldiamo il debito.",
		"Sen'jin è morto perché i Darkspear avessero un domani, dicono gli anziani. Io cerco di riempire il mio con qualcosa che ne valga la pena. Oggi, questo.",
	},
	["race.troll.quest_complete.w09.005"] = {
		"Ecco. La prossima volta chiedimi qualcosa di difficile. Ho le braccia troppo lunghe per i lavoretti.",
		"Fatto. Avevi l'aria in pensiero. Quando un troll dice di sì, non c'è niente da temere.",
		"Finito. Ci ho messo meno della strada per arrivarci.",
	},
	["race.troll.quest_complete.w09.006"] = {
		"Lavoro finito. Adesso un fuoco, un pesce infilzato su un bastone, e nessuno che mi chieda niente finché non è croccante.",
		"Finito. La pancia ha fatto i suoi conti per tutto il giorno, e dice che la cena è in ritardo.",
		"Fatto, e con una fame da mangiarmi un cesto intero di granchi. Magari pure i gusci.",
	},
	["race.troll.quest_complete.w09.007"] = {
		"Uno spirito, chissà dove, mi sta facendo un cenno di approvazione. O ride di me. Con i loa, spesso, fa tutte e due le cose.",
		"Borbotto un grazie a qualunque spirito stesse guardando. Meglio ringraziarne uno assente che ignorarne uno presente.",
	},
	["race.troll.quest_complete.w09.008"] = {
		"Felice di aiutare. I Darkspear si ricordano di chi è stato gentile con loro, e io mi ricorderò di te.",
		"Ecco, è sistemato. Che le tue reti tornino su piene e il tuo fuoco non si spenga mai.",
		"Fatto. Sta' bene, e se i guai ritornano, manda a chiamare un troll.",
	},
	["race.troll.quest_complete.w09.009"] = {
		"si sfiora una zanna con due dita e poi tocca terra, senza fretta, come chi salda un piccolo debito.",
		"mormora qualche parola nella lingua dei troll sul lavoro finito, mezzo ringraziamento e mezzo scherzo.",
	},
	["race.troll.quest_complete.w09.010"] = {
		"Un'altra cosa rimessa a posto. Come rammendare una rete: nessun nodo conta da solo, e contano tutti.",
		"Lavoro piccolo, lavoro onesto. Una canoa non è che un mucchio di pioli, eppure attraversa il mare.",
		"Fatto. Il mare è gocce, la spiaggia è granelli. Mi basta essere un granello che ha fatto la sua parte.",
	},
	["race.troll.quest_complete.w09.011"] = {
		"Ti stupisce? Si stupiscono tutti quando il troll torna con quello che gli hanno chiesto.",
		"Sì, c'è tutto. Mi sono {g:fermato|fermata} solo due volte per un pisolino.",
	},
	["race.troll.quest_complete.w09.012"] = {
		"Un altro lavoro finito. Le Echo Isles sono ancora in mano a quello stregone pazzo, dicono gli anziani. Ogni incarico è un'asse in più sulla barca che ce le riprenderà.",
		"Fatto. Un giorno i Darkspear torneranno per mare alle Echo Isles. Fino ad allora tengo le mani occupate e mantengo la parola.",
	},
	["race.troll.quest_complete.w09.013"] = {
		"Questo è lavoro da Darkspear. Pulito, veloce, e chiuso con un ghigno.",
		"Dillo a chi te lo chiede: l'ha fatto un troll dei Darkspear, e quasi senza sudare.",
		"Fatto, e fatto bene. I Darkspear non lasciano le cose a metà.",
	},
	["race.troll.quest_complete.w09.014"] = {
		"Gli orchi grugniscono quando un lavoro è finito. I tauren annuiscono. Io preferisco ridere. Stesso significato, più rumore.",
		"Un orco direbbe 'fatto' e se ne andrebbe. Un troll dice 'fatto' e aspetta che la storia venga raccontata come si deve.",
		"I Reietti storcerebbero il naso davanti a un lavoro così, gli orchi farebbero un grugnito. Io ci sorrido sopra fino al prossimo.",
	},
	["race.troll.quest_complete.w09.015"] = {
		"Gambe lunghe, braccia lunghe, pazienza lunga. Questo ci voleva, e di questo sono fatti i troll.",
		"Il lavoro chiedeva pazienza. Ci credono selvaggi, noi troll, ma un cacciatore nella giungla sa aspettare più di chiunque.",
	},
	["race.troll.quest_complete.w09.016"] = {
		"si raddrizza in tutta la sua altezza, cosa che richiede un attimo, e fa un cenno pigro sul lavoro ben fatto.",
		"canticchia un frammento di cantilena da pescatori, di quelle che si intonano tirando le reti sulla costa di Durotar.",
	},
	["race.troll.quest_complete.w09.017"] = {
		"Fatto come chiedevi. Né più né meno.",
		"È sistemato. Se c'è altro, dillo adesso: non resto mai a lungo nello stesso posto.",
		"Finito. Conti saldati, nessun debito da una parte o dall'altra.",
	},
	["race.troll.quest_complete.w09.018"] = {
		"Questo lavoro ha portato buon mojo. Lo sento, come senti cambiare la marea senza guardare.",
		"Certi lavori ti lasciano addosso del cattivo mojo. Non questo. Da questo le mani escono pulite.",
		"Agli spiriti è piaciuto. Lo capisco da quanto mi sento leggeri i piedi.",
	},
	["race.troll.quest_complete.w09.019"] = {
		"Finito. La strada chiama, e le lunghe gambe di un troll non hanno mai imparato a dirle di no.",
		"Qui ho finito. Prossima tappa: dove dicono il vento e il prossimo lavoro.",
	},
	["race.troll.quest_complete.w09.020"] = {
		"Qualche graffio me lo sono preso, facendolo. Non cercarli: sono già spariti.",
		"Mi è costato un po' di pelle. La pelle di troll ricresce, quindi non la metto in conto.",
	},
	["race.troll.quest_complete.w09.021"] = {
		"I nostri antenati costruivano imperi e scordavano come si mantiene la parola. I Darkspear sono di meno, e la parola la mantengono.",
		"I Gurubashi avevano oro e templi. Noi abbiamo un villaggio di capanne e un nome di cui la gente si fida. So bene quale dei due preferisco portarmi dietro.",
		"L'impero Gurubashi è marcito per la sua stessa fame. Lavori piccoli e onesti come questo tengono i Darkspear lontani da quella strada.",
	},
	["race.troll.quest_complete.w09.022"] = {
		"Per l'Orda, per i Darkspear, e un pochino per le monete.",
		"Thrall ha dato una casa al mio popolo; il minimo che un troll possa fare è renderla migliore. Fatto.",
		"Qualcuno ha chiesto, un troll ha risposto. L'Orda di Thrall è fatta di piccole risposte come questa.",
	},
	["race.troll.quest_complete.w09.023"] = {
		"Un momento di quiete. Un troll impara a godersi lo spazio tra un lavoro e l'altro, come la pausa tra un'onda e la successiva.",
		"Fatto. Lascio che il momento si posi. Sulla costa impari che il mare fa più rumore proprio prima di calmarsi.",
	},
	["race.troll.quest_complete.w09.024"] = {
		"Questo era l'ultimo pezzo. Se hai altri guai, io ho altra pazienza. Non molta.",
		"Tutto fatto. Non ringraziarmi troppo a lungo: i grazie invecchiano, le monete no.",
	},
	["race.troll.quest_complete.w09.025"] = {
		"Finito. Perfino un pipistrello sa quando smettere di cacciare e restare un po' a testa in giù. Tocca a me.",
		"Lavoro finito. I raptor mangiano e poi sonnecchiano al caldo: c'è della saggezza, nei raptor.",
	},
	["race.troll.quest_progress.w09.001"] = {
		"Una parte è fatta. Il resto mi aspetta come i pesci aspettano la rete. Non che lo sappiano.",
		"Ci sto arrivando. Piano e senza fermarsi, come una canoa controcorrente.",
		"Non è finita, ma non sono {g:bloccato|bloccata}. Con questo un troll ci lavora.",
	},
	["race.troll.quest_progress.w09.002"] = {
		"Questo è tutto. È ora di andare a riscuotere, magari mangiando per strada.",
		"Tutto fatto. Si torna indietro: gambe lunghe, viaggio corto.",
		"Qui ho finito. Qualcuno aspetta, e ai troll non piace far aspettare la gente troppo a lungo.",
	},
	["race.troll.quest_progress.w09.003"] = {
		"conta sulle lunghe dita quello che resta da fare, e resta senza dita meno spesso di prima.",
		"guarda il lavoro che resta con la pazienza di chi pesca aspettando una marea lenta.",
	},
	["race.troll.quest_progress.w09.004"] = {
		"Tutto fatto. Agli spiriti piace un compito riportato indietro intero.",
		"Non resta che consegnare. Strano come la strada del ritorno sembri sempre più corta.",
	},
	["race.troll.reputation_change.w09.001"] = {
		"Adesso hanno più stima di me. Tra i troll, un buon nome corre più veloce di un raptor.",
		"Un po' più di fiducia guadagnata. I Darkspear un tempo erano esuli: sappiamo quanto vale essere accolti.",
		"Il mio nome sta un po' più in alto, per loro. Buon mojo, questo.",
	},
	["race.troll.rest_enter.w09.001"] = {
		"È ora di riposare. Trovo l'angolo più fresco, allungo le gambe fin dove arrivano e le lascio penzolare oltre la fine di qualunque cosa ci sia.",
		"Un posto dove fermarsi. I troll sonnecchiano quasi ovunque, ma ci piacciono un filo d'aria e spazio per i gomiti. Li troverò tutti e due, o mi lamenterò finché non succede.",
		"Riposo. Le mie ossa lunghe si sistemano una dopo l'altra, come un accampamento che si quieta dopo il fuoco.",
	},
	["race.troll.rest_enter.w09.002"] = {
		"si piega sul sedile più vicino a pezzi, come sa fare solo un troll, e si lascia sfuggire un lungo sospiro soddisfatto.",
		"si abbassa in un accovacciamento sciolto, poi giù del tutto, le lunghe membra sparpagliate in ogni direzione.",
	},
	["race.troll.rest_enter.w09.003"] = {
		"Un tetto e un fuoco. Il letto è troppo corto e la stanza troppo calda, ma un troll ha dormito in posti peggiori. Sugli alberi, per lo più.",
		"Al chiuso, con i muri e una porta che si chiude. La lascio socchiusa. Un troll dorme meglio se l'aria si muove.",
	},
	["band.b60.quest_complete.w10.001"] = {
		"Fatto. La prossima volta mandate a chiamare prima. I guai costano meno finché sono piccoli.",
		"Sistemato. Un'altra volta chiamatemi prima: preferisco prevenire che riparare.",
		"Finito. E vi prego, appena qualcosa del genere comincia, cercatemi subito.",
	},
	["band.b60.quest_complete.w10.002"] = {
		"La ricompensa è roba che venderei senza guardarla. La prendo comunque: rifiutarla li offenderebbe.",
		"Un'altra borsa di monete e un ninnolo che non indosserò mai. Il grazie nella loro voce valeva di più.",
		"Il premio ormai conta poco. Il loro sollievo conta moltissimo, e che le cose siano andate a finire così è curioso.",
	},
	["band.b60.quest_complete.w10.003"] = {
		"mette via la ricompensa senza degnarla di uno sguardo, già con gli occhi a quello che viene dopo.",
		"accoglie i ringraziamenti con un breve cenno, di quelli che dicono: era lavoro, non un favore da restituire.",
		"tiene la ricompensa nel palmo per un momento, la soppesa per vecchia abitudine e la mette via.",
	},
	["band.b60.quest_complete.w10.004"] = {
		"Fatto. Se qualcuno chiede, è stato difficilissimo e io sono {g:stato magnifico|stata magnifica}.",
		"Finito. La storia potete abbellirla: non vi correggerò.",
		"Fatto. Raccontatela come vi pare. Metteteci un drago, se aiuta.",
	},
	["band.b60.quest_complete.w10.005"] = {
		"Un'altra cosa che gli orrori del mondo non potranno tenersi. Piccola, ma tutta la guerra è fatta di cose piccole.",
		"Un po' di terreno strappato al buio. Non finirà in nessuna cronaca, e conta lo stesso.",
		"Qualcuno dormirà più tranquillo, grazie a questo. È tutto il registro dei conti, e i conti tornano.",
	},
	["band.b60.quest_complete.w10.006"] = {
		"La prossima volta date i lavori piccoli alle facce nuove. A loro servono più che a me.",
		"Lasciate le commissioni facili ai più giovani. Quelle brutte tenetele per me.",
		"Se avete lavori più semplici, dateli a chi comincia. In qualche modo devono pur imparare.",
	},
	["band.b60.quest_complete.w10.007"] = {
		"Fatto, e lo sento nelle spalle. La forza non vuol dire che smetta di costare: vuol dire che posso permettermelo.",
		"Un altro concluso. Il corpo ne tiene il conto anche quando io non lo faccio.",
		"Uno in meno sulla lista. La lista, noto, non si è mai accorciata da sola.",
	},
	["band.b60.quest_complete.w10.008"] = {
		"Molto indietro, sulla strada, c'è una prima commissione: qualche pelle, una bisaccia perduta. Vorrei dire a quel principiante che tutto porta qui.",
		"I primi lavori che ho accettato pagavano in rame e orgoglio. Questo ha pagato meglio, e della paga vado meno {g:fiero|fiera}.",
		"È strano. Il lavoro non è cambiato tanto dall'inizio: qualcuno chiede, io vado, la cosa si fa. Sono cresciuti solo i mostri.",
	},
	["band.b60.quest_complete.w10.009"] = {
		"Fatto. Adesso dimmi cosa avevi paura di chiedere.",
		"Finito. Se c'è qualcosa che tenevi da parte per qualcuno più coraggioso, ti ascolto.",
		"La parte facile è finita. Qual è il lavoro che pensavi nessuno avrebbe accettato?",
	},
	["band.b60.quest_complete.w10.010"] = {
		"Un'altra tacca nel registro di qualcuno, alla voce 'di chi fidarsi'. Quei registri aprono più porte di qualunque chiave.",
		"È lenta, questa faccenda di guadagnarsi la fiducia di chi è già stato deluso. Un incarico, poi un altro.",
		"Nessuna accoglienza da eroe, solo un cenno un po' più caldo dell'ultimo. È così che si costruisce una reputazione.",
	},
	["band.b60.quest_complete.w10.011"] = {
		"Ecco. Era tutto qui il problema? Avevo portato provviste per qualcosa di molto peggio.",
		"Tutto qui? Mi aspettavo un disastro. Che piacevole delusione.",
		"Finito, e non ha preso fuoco niente. Di questi tempi, per me, è quasi una vacanza.",
	},
	["band.b60.quest_complete.w10.012"] = {
		"Questo lavoro è fatto. Quello che l'ha reso necessario è ancora là fuori, più grande di qualunque incarico.",
		"Posso finire cento commissioni come questa, e la radice di tutto resterà là fuori, paziente.",
		"Risolto, qui. Lontano, la causa di tutto sta già preparando il prossimo guaio.",
	},
	["band.b60.quest_progress.w10.001"] = {
		"Una parte è fatta. Ho smesso di avere fretta: sarà finita quando sarà finita, e sarà finita bene.",
		"Non ancora. A questo punto mi fido più del passo che dell'impazienza.",
	},
	["band.b60.quest_progress.w10.002"] = {
		"C'è tutto. Qualcuno ha già aspettato abbastanza: non facciamolo aspettare di più.",
		"Tutto quello che serviva. Ora il tragitto per dirglielo, che è la parte che ricorderanno.",
	},
	["band.b60.reputation_change.w10.001"] = {
		"Un po' più di considerazione da parte loro. A questo punto della strada colleziono fiducia come altri collezionano trofei, ed è la collezione migliore.",
		"Ora pensano meglio di me. Curioso come alla gente importino meno le battaglie più dure che il fatto che tu continui a farti vedere.",
	},
	["mood.city.journey.w10.001"] = {
		"Terra ferma e gomiti altrui. Dopo ore di vento nelle orecchie, il chiacchiericcio della folla è quasi musica.",
		"Il volo finisce e la città comincia subito: un mercante che grida i prezzi, una guardia che sbadiglia, qualcuno che litiga per un carretto.",
		"A terra. Dieci passi, e mi hanno già offerto una spada, un pasticcio caldo e indicazioni che non avevo chiesto.",
	},
	["mood.city.journey.w10.002"] = {
		"scende dalla cavalcatura, si scuote il torpore dalle gambe ed entra nel fiume della folla come se non ne fosse mai {g:uscito|uscita}.",
		"torna a terra col vento che rugge ancora nelle orecchie, e si sistema l'equipaggiamento prima che qualcuno ci faccia caso.",
		"atterra, saluta con un cenno il custode delle cavalcature, e in una dozzina di passi il viavai della città l'ha già {g:inghiottito|inghiottita}.",
	},
	["mood.city.journey.w10.003"] = {
		"Giù dal cielo e dritto in una coda. Le città non cambiano mai.",
		"Tutta quell'aria aperta, e adesso mi ci vorrà mezz'ora per superare un carretto.",
		"Eccola, la città. C'è già qualcuno che urla, e io non ho ancora ritrovato l'equilibrio.",
	},
	["mood.city.journey.w10.004"] = {
		"Lassù c'eravamo io e il vento. Quaggiù ci siamo io e mille persone: è un'altra solitudine, e fa molto più rumore.",
		"La città mi riprende senza accorgersi della mia assenza. I voli finiscono così: un attimo prima hai il mondo intero sotto di te, un attimo dopo sei una faccia in più per strada.",
	},
	["mood.city.journey.w10.005"] = {
		"Una città alla fine di un volo vuol dire un bagno, un pasto caldo e un letto rifatto da qualcun altro. Li prendo nell'ordine in cui arrivano.",
		"Fabbri, cuochi e una banca, tutti a portata di voce. Per un po' i guai del mondo possono mettersi in fila da un'altra parte.",
		"Dall'alto ogni città sembra un rifugio. A terra sembra una lista di commissioni. Meglio le commissioni delle imboscate, comunque.",
	},
	["mood.city.journey.w10.006"] = {
		"Alle mie spalle gli odori della città si sciolgono uno a uno: fumo, pane, conceria, stalle. Poi solo vento.",
		"Laggiù lascio le mie commissioni, metà ancora da sbrigare. Aspetteranno: le città sanno bene come far aspettare le cose.",
		"Le guardie, i venditori, il mendicante che conosceva la mia faccia: tutto resta indietro in pochi colpi d'ala. La città non sentirà la mia mancanza, ed è giusto così.",
	},
	["mood.city.journey.w10.007"] = {
		"si assesta in sella mentre la cavalcatura si stacca, e guarda la pietra della città restare indietro, farsi disegno, poi macchia.",
		"affronta il primo sobbalzo del volo con una mano stretta alle redini, mentre il frastuono delle strade si spegne sotto il battito delle ali.",
		"lancia un'ultima occhiata alla città che si allontana, come si guarda una tavola affollata appena lasciata, poi volge il viso alla strada che l'aspetta.",
	},
	["mood.city.journey.w10.008"] = {
		"Addio folla. Addio prezzi. Mi mancheranno le focacce.",
		"Si parte. Se laggiù qualcuno mi cercava, dovrà gridare più forte.",
		"Su e via. Quassù nessuno proverà a vendermi qualcosa.",
	},
	["mood.city.journey.w10.009"] = {
		"Una città è l'ultima porta con la serratura per un bel pezzo. La sento chiudersi alle mie spalle, e non mi volto.",
		"Guardie e porte sprangate lasciano il posto alla campagna aperta. La città era la parte facile; lo è sempre.",
		"Laggiù la gente riposa dietro porte chiuse a chiave e brontola per il prezzo del pane. Io volo verso i posti che rendono necessarie quelle chiavi.",
	},
	["mood.city.journey.w10.010"] = {
		"In quella folla c'era un viso che volevo ricordare. Sparito anche quello, con tutto il resto.",
		"Ogni volta che lascio una città mi porto via una cosa piccola: un motivo sentito da una soglia, un odore, la risata di uno sconosciuto. Oggi è l'imprecazione di un venditore che non ho capito bene.",
		"Quanta gente incrociata, e non ne rivedrò nessuno. Una città è un fiume di sconosciuti; ne sono appena {g:uscito|uscita}.",
	},
	["mood.city.rest_enter.w10.001"] = {
		"In salvo. Posso abbassare la guardia di una tacca, e lo zaino fino a terra.",
		"Strade sicure. Dovunque dormirò la prossima volta, niente mi sveglierà a morsi.",
		"La pace della città mi si posa addosso. Le spalle se ne accorgono un attimo prima di me.",
	},
	["mood.city.rest_enter.w10.002"] = {
		"lascia scendere le spalle mentre le strade sorvegliate si chiudono intorno, e slaccia una cinghia, poi un'altra.",
		"rallenta fino a un passo tranquillo, e la diffidenza della strada esce dalla sua andatura un poco alla volta.",
		"scioglie la rigidità del collo, giudicando la città abbastanza sicura da smettere di ascoltare ogni passo.",
	},
	["mood.city.rest_enter.w10.003"] = {
		"Guardie, mercanti e un posto dove sedersi. Ufficialmente fuori servizio.",
		"Bene. Per un po' nessuno proverà ad ammazzarmi. Qualcuno proverà a farmi pagare troppo, ma a quello sopravvivo.",
		"Al sicuro, finalmente. Adesso l'unica imboscata possibile è il prezzo di un pasto.",
	},
	["mood.city.weather_change.w10.001"] = {
		"Pioggia sulla città: i banchi coprono la merce in fretta, e ogni portone si riempie di gente che finge di essersi fermata apposta.",
		"Arriva la pioggia, e la folla cambia forma all'istante: più svelta, più rasente ai muri, cappucci alzati.",
	},
	["mood.city.weather_change.w10.002"] = {
		"guarda la folla riversarsi fuori dai portoni ora che il tempo si rasserena, e i banchi riscoprire la merce uno dopo l'altro.",
		"esce nell'aria tornata limpida insieme a tutti gli altri, come se l'intera strada riprendesse fiato nello stesso momento.",
	},
	["mood.desert.journey.w10.001"] = {
		"Le ginocchia scricchiolano mentre scendo, e il primo respiro sa di sabbia. La terra arida ti accoglie con una manciata di polvere in faccia.",
		"A terra, e già con gli occhi socchiusi. Qui tutto ha il colore della polvere, e presto ce l'avrò anch'io.",
		"Giù dal volo. Lassù il vento era fresco; quaggiù la terra non ha mai sentito parlare di freschezza.",
	},
	["mood.desert.weather_change.w10.001"] = {
		"volta le spalle alla sabbia che si alza e si copre il viso con un panno, mentre l'aria si riempie di granelli pungenti.",
		"si curva contro la tempesta di sabbia, un braccio alzato, e continua a camminare più a memoria che a vista.",
	},
	["mood.fire.journey.w10.001"] = {
		"scende dal volo in un'aria così calda e secca che brucia gli occhi, e sbatte le palpebre finché non lacrimano.",
		"atterra sul terreno riarso e sente il calore salire dalle suole prima ancora che le ali si siano chiuse.",
	},
	["mood.forest.journey.w10.001"] = {
		"Le cime degli alberi si richiudono sotto di me come un mare verde, e la foresta inghiotte il punto in cui stavo senza un'increspatura.",
		"Su tra le foglie, fino all'aria aperta. Laggiù i boschi continuano a sussurrare, che io ascolti o no.",
	},
	["mood.jungle.journey.w10.001"] = {
		"La volta di foglie sprofonda sotto le ali, e per la prima volta da secoli l'aria è abbastanza asciutta da farmi accorgere che la respiro.",
		"Su, fuori dal verde. Dall'alto la giungla sembra un unico grande animale che respira, e scendergli dalla groppa è un sollievo.",
	},
	["mood.plague.journey.w10.001"] = {
		"Le ali mi tirano fuori dall'aria malata. Non respirerò a fondo finché non l'avrò lasciata ben indietro, ma respirerò.",
		"Sotto di me si allontanano campi grigi e alberi neri. Tengo gli occhi avanti: laggiù non c'è niente che voglia ricordare.",
	},
	["mood.snow.journey.w10.001"] = {
		"Giù nel freddo. In volo si gelava; a terra è peggio, e non ha intenzione di cambiare.",
		"Stivali nella neve prima ancora di aver staccato le mani dalle redini. Ogni respiro esce bianco.",
		"A terra, e in dieci passi il freddo ha già trovato ogni fessura dei vestiti. Ha fatto pratica.",
	},
	["time.dawn.journey.w10.001"] = {
		"Su, nell'alba. La terra sotto è ancora grigia, e la luce mi viene incontro.",
		"Decollo alla prima luce. Là sotto il mondo si sta ancora stropicciando gli occhi.",
	},
	["time.dawn.journey.w10.002"] = {
		"tocca terra nella luce del primo mattino, con le membra rigide per il freddo lassù, e batte i piedi per ridarsi un po' di calore.",
		"atterra proprio mentre spunta l'alba, e si ferma un momento a guardare il colore che torna sulla terra.",
	},
	["time.day.journey.w10.001"] = {
		"Su, con il giorno spalancato tutt'intorno. Sotto, ogni pista, ogni muro, ogni fosso è disegnato in piena vista.",
		"Un volo con la luce buona. Vedo la gente sulle strade là sotto badare alle sue faccende, piccola come formiche e altrettanto indaffarata.",
		"Salgo nella luce del giorno. Da quassù la terra sembra al lavoro da ore, e ancora lontana da fine turno.",
	},
	["time.day.journey.w10.002"] = {
		"si sistema in sella mentre la terra si allontana, e segue con gli occhi le strade là sotto finché dura la luce.",
		"prende il volo nel pieno della giornata e si sporge appena a guardare la terra che scorre sotto.",
		"sale nelle ore di luce con una presa salda, riconoscendo dall'alto un punto di riferimento dopo l'altro.",
	},
	["time.day.journey.w10.003"] = {
		"A terra con ancora luce da spendere. Bene: c'è tempo di orientarmi prima che qualcosa trovi me.",
		"A terra, e la giornata non è ancora finita. Ore di cammino risparmiate, e ore di luce per farne qualcosa.",
	},
	["time.day.journey.w10.004"] = {
		"Giù con una buona luce. Stavolta niente brancolare in cerca della strada.",
		"Atterraggio in pieno giorno. Se adesso mi perdo, la colpa è tutta mia.",
	},
	["time.day.rest_enter.w10.001"] = {
		"Una sosta a metà giornata. Sembra di rubare ore a qualcuno, e non mi dispiace affatto.",
		"Mi fermo che c'è ancora luce. La strada dovrà fare a meno di me per un po'.",
		"Resta un bel pezzo di giornata, e una parte la passo a sedere. Un piccolo lusso onesto.",
	},
	["time.day.weather_change.w10.001"] = {
		"Di giorno posso vedere il cambiamento attraversare la terra come una marea lenta, molto prima che mi raggiunga.",
		"Il cielo sta girando, e di giorno non lo si può non notare: tutta la terra prende un altro colore in un colpo solo.",
		"Meno male che è giorno. Un cambiamento così si legge meglio quando se ne vede il margine lontano.",
	},
	["time.dusk.journey.w10.001"] = {
		"Si parte con la luce che cala. Atterrerò al buio, con ogni probabilità, e sarà un problema della bestia.",
		"Su, nel crepuscolo. La terra là sotto perde i colori uno dopo l'altro, e io ho il posto migliore per guardarla.",
	},
	["time.dusk.journey.w10.002"] = {
		"A terra prima del buio pieno. Per un pelo. Mi accontento.",
		"Atterraggio con l'ultima luce. Adesso un tetto, prima che mi trovi la notte.",
	},
	["time.night.journey.w10.001"] = {
		"Un volo di notte. La bestia conosce la strada meglio di me; posso solo fidarmi e tenermi forte.",
		"In volo nel buio, la terra sotto è solo un'ipotesi. Dovrò credere sulla parola al mondo che c'è ancora.",
		"Al buio non c'è un sopra né un sotto degni del nome: solo il battito delle ali e il freddo sulla faccia.",
	},
	["time.night.journey.w10.002"] = {
		"scende di sella al buio e aspetta un attimo che la terra, e gli occhi, si assestino.",
		"atterra nella notte e resta immobile ad ascoltare, prima di muovere un solo passo.",
		"scivola a terra nell'oscurità, trova l'appoggio a tentoni e lascia andare un lungo respiro.",
	},
	["time.night.journey.w10.003"] = {
		"A terra, e c'è un buio pesto. Qualcuno mi indichi un letto. Chiunque.",
		"Atterraggio al buio. E adesso, da che parte sta qualsiasi cosa?",
	},
	["time.night.rest_enter.w10.001"] = {
		"Un posto sicuro, e la notte è passata solo a metà. È più sonno di quanto sperassi.",
		"Finalmente riposo, a quest'ora. Il buio può andare avanti anche senza che lo sorvegli io.",
	},
	["time.night.weather_change.w10.001"] = {
		"Qualcosa è cambiato nel buio. Non lo vedo ancora: lo sento sulla pelle e lo fiuto nell'aria.",
		"Il cielo si sta muovendo lassù, sopra la notte, dove non arriva lo sguardo. Presto saprò cosa ha deciso.",
	},
	["weather.clear.dawn.w10.001"] = {
		"L'alba sotto un cielo aperto. Il primo colore raggiunge ogni collina insieme; lassù non c'è niente a fermarlo.",
		"Nessuna nuvola a trattenere l'alba, e così arriva semplice e pallida, e la terra si sveglia tutta in una volta invece che a metà.",
	},
	["weather.clear.dawn.w10.002"] = {
		"guarda l'alba salire in un cielo senza nuvole, mentre le creste lontane prendono forma una dopo l'altra.",
		"si volta verso il cielo che impallidisce all'alba e non ci trova una sola nuvola, solo un lungo orlo pulito di colore.",
	},
	["weather.clear.dusk.w10.001"] = {
		"Un crepuscolo sereno. In cielo non c'è niente che trattenga il colore, così scivola via pulito, e il freddo gli arriva subito dietro.",
		"L'imbrunire con il cielo vuoto: la luce se ne va piano e uguale, come una lampada abbassata da una mano attenta.",
	},
	["weather.clear.dusk.w10.002"] = {
		"guarda il cielo pulito cambiare colore al crepuscolo, mentre le creste lontane si scuriscono prima di quelle vicine.",
		"si stringe un po' il mantello all'imbrunire: sotto un cielo così limpido l'aria si raffredda in fretta.",
	},
	["weather.clear.journey.w10.001"] = {
		"Nemmeno una nuvola da attraversare. Le ali battono regolari, e sotto di me fiumi e strade stanno aperti come una mappa che qualcuno ha dimenticato di ripiegare.",
		"In cielo ci siamo solo noi. Ogni strada là sotto si vede chiara, ogni fiume, ogni tetto. Volare con l'aria limpida sembra barare a nascondino.",
		"Una salita liscia e niente quassù con cui lottare. Per una volta il cielo e la bestia vanno d'accordo.",
	},
	["weather.clear.journey.w10.002"] = {
		"si sporge sulle cinghie mentre la cavalcatura sale in un cielo vuoto, e guarda le strade là sotto assottigliarsi in fili.",
		"si sistema per il volo con davanti solo aria aperta, e lascia che sia il vento a parlare.",
		"sale in un'aria così ferma e pulita che si sente ogni singolo colpo d'ala.",
	},
	["weather.clear.journey.w10.003"] = {
		"Aria pulita, niente nuvole. Perfino la bestia sembra soddisfatta di sé.",
		"Bel tempo per volare. Non sprechiamone nemmeno un colpo d'ala.",
	},
	["weather.clear.journey.w10.004"] = {
		"Giù da un cielo vuoto senza un solo scossone. Il mio stomaco vorrebbe ringraziare il tempo di persona.",
		"A terra. Con un'aria così limpida vedevo il punto d'arrivo da leghe di distanza, e l'ho guardato crescere per quasi tutto il volo.",
		"Sereno per tutto il viaggio. Ho visto la terra cambiare sotto di me dall'inizio alla fine; adesso tocca ai piedi impararla con calma.",
	},
	["weather.clear.journey.w10.005"] = {
		"scende di sella senza un capello fuori posto: il volo è stato facile quanto il cielo era vuoto.",
		"atterra senza una raffica da combattere, e dà alla bestia una pacca riconoscente sul collo per il viaggio tranquillo.",
	},
	["weather.clear.rest_enter.w10.001"] = {
		"Un posto dove riposare, e fuori il tempo è buono. Dormirò meglio sperando che la strada resti asciutta.",
		"Riposo, anche se il cielo non mi ci spinge. È il migliore: scelto, non strappato al maltempo.",
	},
	["weather.clear.rest_enter.w10.002"] = {
		"si mette a riposare con i vestiti asciutti, una volta tanto, e niente da strizzare o appendere vicino al fuoco.",
		"si concede il riposo senza una goccia di maltempo addosso, cosa che sembra quasi un imbroglio.",
	},
	["weather.clear.weather_change.w10.001"] = {
		"guarda il cielo svuotarsi del suo tempo e, per la prima volta da un pezzo, allenta il cappuccio.",
		"scuote il mantello mentre l'aria si schiarisce, e quello che si portava addosso, pioggia, sabbia o neve, vola via.",
		"guarda le ultime nuvole stracciate allontanarsi in fretta, come ritardatari attesi altrove.",
	},
	["weather.clear.weather_change.w10.002"] = {
		"Quello che cadeva ha smesso. Il mondo si quieta a tappe: un'ultima goccia, un'ultima raffica, poi niente.",
		"Il tempo si alza, e la terra torna un pezzo alla volta: il terreno vicino, la cresta lontana, poi quella ancora oltre.",
		"Di nuovo sereno. L'aria sa di bucato, come se il mondo fosse stato strofinato e steso ad asciugare.",
	},
	["weather.clear.weather_change.w10.003"] = {
		"Ecco. Il cielo ha smesso di tenere il broncio.",
		"Si rasserena. Adesso i miei stivali possono cominciare la lunga, lenta opera di perdonarmi.",
		"Di nuovo sereno. Smetto di far finta che non mi desse fastidio.",
	},
	["weather.clear.weather_change.w10.004"] = {
		"Quando il maltempo passa, la quiete che lascia è la parte migliore, come il silenzio dopo che la folla è tornata a casa.",
		"Le nuvole se ne sono andate, e qualcosa nel petto mi si scioglie: non mi ero {g:accorto|accorta} che fosse annodato.",
		"Di nuovo cielo aperto. Quaggiù non è cambiato niente, eppure tutto sembra più leggero da portare.",
	},
	["weather.clear.weather_change.w10.005"] = {
		"sente la terra riprendere vita mentre il cielo si sgombra: un richiamo qui, un fruscio là, la natura che decide che si può uscire.",
		"si raddrizza mentre il tempo si apre, e scioglie le spalle rimaste troppo a lungo curve contro il maltempo.",
	},
	["weather.fog.journey.w10.001"] = {
		"Il mondo là sotto è sparito nella nebbia. Volo sulla fiducia: quella della bestia, non la mia.",
		"Niente da vedere se non grigio e le orecchie della bestia. Lei la strada nell'aria la conosce; le preoccupazioni le lascio a lei.",
		"Saliamo in una nebbia fitta come lana. Laggiù, chissà dove, ci sono strade e fiumi; mi fido della parola della bestia.",
	},
	["weather.fog.weather_change.w10.001"] = {
		"guarda la nebbia avanzare bassa sul terreno, finché i suoi stessi stivali restano l'unica cosa certa in vista.",
		"si ferma mentre la nebbia si chiude intorno, e tutto ciò che è vicino, roccia, albero o altro, sbiadisce in uno schizzo pallido di se stesso.",
	},
	["weather.rain.dawn.w10.001"] = {
		"L'alba, se con questa pioggia conta: il buio diventa grigio e basta, e l'acqua continua a cadere come se niente fosse.",
		"Un'alba bagnata. Non sale nessun colore, solo un lento schiarire dietro la pioggia, come una lampada accesa nella stanza accanto.",
	},
	["weather.rain.dusk.w10.001"] = {
		"quasi non si accorge del crepuscolo che scende nella pioggia: il grigio si fa solo più fitto, e la strada davanti svanisce in un unico lungo rumore d'acqua.",
		"si stringe il cappuccio mentre la pioggia continua nell'imbrunire, e la luce se ne va senza alcuna cerimonia.",
	},
	["weather.rain.journey.w10.001"] = {
		"Si parte sotto la pioggia. Ogni colpo d'ala mi ributta l'acqua in faccia, e la terra là sotto è una macchia grigia.",
		"Su, nel bagnato. Le cinghie scivolano, la bestia brontola, e io mi tengo con qualcosa di più delle mani.",
		"A questa velocità le gocce pungono come ghiaia lanciata. Abbasso il mento e conto le leghe.",
	},
	["weather.rain.journey.w10.002"] = {
		"scende su un terreno fradicio, e la cavalcatura si scrolla subito, inzuppando chiunque sia a portata.",
		"smonta dal volo {g:bagnato|bagnata} fino all'osso, con la pioggia che cola dal mento, e corre verso il riparo più vicino.",
		"scende {g:rigido|rigida} e gocciolante, e strizza una manica mentre la bestia fuma piano lì accanto.",
	},
	["weather.rain.journey.w10.003"] = {
		"A terra. {g:Fradicio|Fradicia} fino alle ossa. Dov'è il fuoco?",
		"Più che un volo, è stato un lungo bagno con le ali.",
	},
	["weather.rain.rest_enter.w10.001"] = {
		"Finalmente riposo. Che la pioggia cada quanto vuole; non devo più camminarci sotto.",
		"Terreno sicuro, e basta camminare nel bagnato. La pioggia continui pure; io ho finito di discuterci.",
	},
	["weather.rain.weather_change.w10.001"] = {
		"Ed ecco la pioggia. Ogni tasca che ho sta per diventare una tazza.",
		"Pioggia. La prima goccia l'ho sentita sulla nuca, proprio dove mirano sempre.",
	},
	["weather.storm.journey.w10.001"] = {
		"Volare dentro un temporale. La bestia lotta con ogni raffica, e io lotto con la voglia di urlarle di atterrare.",
		"Il vento ci butta di lato e il cielo lampeggia bianco. Chi ha tracciato questa rotta mi deve delle scuse.",
		"A quest'altezza il tuono non rotola: schiaffeggia. Mi aggrappo e prometto alla terra che verrò a trovarla più spesso.",
	},
	["quest_complete.w13.doubt.001"] = {
		"Ho detto sì prima di sapere a cosa. È andata bene. Ma andare bene non vuol dire aver avuto giudizio.",
		"Prima accetto, poi capisco: è andata così. È filata liscia, e proprio per questo non ho imparato niente.",
		"Fortuna, non giudizio. Ho accettato senza saperne nemmeno la metà, e la fortuna ha coperto il buco.",
	},
	["quest_complete.w13.doubt.002"] = {
		"Non ho mai saputo perché contasse tanto. Forse è il prezzo dell'aiutare gli sconosciuti: ti tocca il finale senza la storia.",
		"Qualcuno aveva le sue ragioni. Le ho messe in pratica senza mai sentirle dire.",
		"Consegnato, eppure non saprei dire a cosa servisse. Gli sconosciuti tengono per sé le loro ragioni.",
	},
	["quest_complete.w13.doubt.003"] = {
		"Una vocina chiede se sono {g:stato|stata} utile o solo {g:usato|usata}. La ascolterò più tardi, quando potrò permettermi la risposta.",
		"Di aiuto, o soltanto a portata di mano? Viste da dentro, le due cose si somigliano in tutto.",
		"Attrezzo di qualcuno o aiuto per qualcuno? Forse la differenza sta solo in come verrà usato il lavoro.",
	},
	["quest_complete.w13.doubt.004"] = {
		"Ogni faccenda ha due parti. Io sento sempre e solo quella che chiede.",
		"Può darsi che per qualcuno questa sia una cattiva notizia. Non lo incontrerò mai, il che è comodo, e non del tutto onesto.",
		"L'aiuto per uno a volte è una perdita per un altro. Non ho aspettato di scoprire chi ci rimette, ammesso che qualcuno ci rimetta.",
	},
	["quest_complete.w13.doubt.005"] = {
		"È una bella sensazione. La tengo d'occhio, però: le belle sensazioni sono pessimi giudici.",
		"C'è la soddisfazione, e c'è un filo di sospetto verso quella soddisfazione. Possono stare allo stesso tavolo.",
		"La soddisfazione è una piacevole compagnia. Solo, non le lascio in mano la bilancia.",
	},
	["quest_complete.w13.doubt.006"] = {
		"La versione che racconterò sarà più ordinata di quel che è successo. Dovrei ricordarmi anche quella in disordine.",
		"C'è il racconto di com'è andata, e poi c'è com'è andata. Solo uno dei due mi fa fare bella figura.",
		"Delle false partenze non saprà niente nessuno. Vorrei tenermele lo stesso: hanno insegnato più dei momenti puliti.",
	},
	["quest_complete.w13.doubt.007"] = {
		"Fare ciò che viene chiesto è facile da difendere. Fare ciò che è giusto richiede più pensiero. Spero che stavolta fossero la stessa cosa.",
		"Chiesto, fatto. Fra quelle due parole avrebbe dovuto starci almeno una domanda.",
		"Quel che mi è stato chiesto e quel che era giusto stavolta camminavano affiancati, per quanto posso vedere. Non ho guardato molto lontano.",
	},
	["quest_complete.w13.doubt.008"] = {
		"C'era una domanda che volevo fare. È sparita, e con lei l'occasione.",
		"Avrei dovuto chiedere un'altra cosa. Ne sento la forma, ma non trovo le parole.",
		"Una domanda che volevo fare mi è scivolata via durante la consegna. Tornerà a galla nel momento meno utile.",
	},
	["quest_complete.w13.doubt.009"] = {
		"Fra un mese, qualcosa sarà diverso grazie a questo? Forse l'aiuto migliore sparisce nelle cose che funzionano e basta.",
		"Se ha funzionato, nessuno se ne accorgerà. È lo strano dei rammendi: quando riescono, sembra che non sia successo niente.",
		"L'aiuto buono spesso non lascia segni. Dovrò fidarmi che questo abbia lasciato il niente giusto.",
	},
	["quest_complete.w13.doubt.010"] = {
		"L'ho fatto per chi lo chiedeva, o per sentirmi utile? Tutte e due, probabilmente. Vorrei che la prima pesasse di più.",
		"Ho dato una mano. E mi è piaciuto essere chi dà una mano. Non so bene quale delle due sia venuta prima.",
		"Gentilezza o vanità? Un po' tutte e due, a dirla tutta, e almeno qui dentro vorrei dirla tutta.",
	},
	["quest_complete.w13.doubt.011"] = {
		"Sistemato, per adesso. Guai così hanno radici, e io ne ho visto solo la cima.",
		"Ho affrontato quel che avevo davanti. Quello che l'ha causato è ancora in giro, per i fatti suoi.",
		"Qualunque cosa l'abbia messo in moto, non è finita con la mia parte. Ho potato un ramo, forse. Il resto cresce ancora.",
	},
	["quest_complete.w13.doubt.012"] = {
		"Lo rifarei, sapendo quel che so adesso? Credo di sì. È su quel 'credo' che rimuginerò.",
		"La stessa scelta, se potessi farla due volte? Probabilmente. Quella parola regge parecchio peso.",
		"Se la stessa richiesta arrivasse due volte, direi sì due volte. Con ogni probabilità. E quel 'con ogni probabilità' lo tengo onesto.",
	},
	["quest_complete.w13.doubt.013"] = {
		"Ho preso in parola uno sconosciuto, e la parola ha tenuto. Non sarà sempre così, e vorrei sapere come farò a distinguere.",
		"Fiducia data senza pensarci, e stavolta non sprecata. Non dovrei farne un'abitudine senza controllare.",
		"La parola di uno sconosciuto, e valeva. La prossima volta vorrei una ragione per crederci che non sia solo la speranza.",
	},
	["quest_complete.w13.doubt.014"] = {
		"Qualcosa si è perso per strada. Non un oggetto: un po' di pazienza, forse, o un po' della leggerezza con cui dico di sì.",
		"Mi è costato qualcosa, anche se non saprei dargli un nome. Un po' di buonumore, forse. Ricrescerà.",
		"Non manca niente che potrei indicare. Eppure qualcosa se n'è andato nel farlo, come si consuma un filo a forza d'uso.",
	},
	["quest_complete.w13.doubt.015"] = {
		"In realtà non so da che parte stavo, poco fa. Sapevo di chi era la richiesta. Non è la stessa cosa.",
		"Le parti ci sono sempre. Per un po' ne ho presa una, più che altro per caso.",
		"In quale lite ho appena messo piede? So chi ha chiesto. Di chi non ha chiesto, so ben poco.",
	},
	["quest_complete.w13.doubt.016"] = {
		"Una lezione ci sarà, lì dentro. La troverò quando avrò smesso di rallegrarmi che sia finita.",
		"Qualcosa mi ha insegnato, di questo non dubito. Cosa, lo scoprirò fra qualche giorno.",
		"Una lezione dev'essere arrivata insieme al resto. È ancora incartata.",
	},
	["quest_complete.w13.doubt.017"] = {
		"Rimettere in dubbio una cosa finita. Un vizio, o l'unica coscienza che funzioni a fatto avvenuto.",
		"È conclusa, e io sto comunque passando in rassegna ogni mia mossa. Qualcuno deve pur farlo.",
		"Il lavoro è consegnato e io continuo a dargli il voto. Severo, in certi punti.",
	},
	["quest_complete.w13.doubt.018"] = {
		"Mi torna in mente il modo in cui mi è stato chiesto. Qualcosa nelle parole. Probabilmente niente.",
		"Curioso cosa resta impresso. Non il lavoro, ma come mi è stato chiesto, e quella breve esitazione prima.",
		"Una parola della richiesta continua a tornarmi in mente, come un sassolino nello stivale. Piccola, e impossibile da ignorare.",
	},
	["quest_complete.w13.doubt.019"] = {
		"Se arriveranno ringraziamenti, vorrei avere la certezza di meritarli tutti.",
		"Eventuali grazie li prenderò con un grano di sale. Ha funzionato; non so se sia stato fatto nel modo migliore.",
	},
	["quest_complete.w13.doubt.020"] = {
		"Non c'è nessuno a cui chiedere se ho fatto bene. Solo io, e come testimone non valgo molto: sono di parte.",
		"Chi giudica queste cose? Per lo più io. Certi giorni mi perdono troppo, altri non mi perdono niente.",
		"Alla fine di un incarico non c'è nessuno a dire se era giusto. Quella sedia resta vuota, a meno che non mi ci sieda io.",
	},
	["quest_complete.w13.doubt.021"] = {
		"Ogni incarico finito è anche una cosa che non potrò più fare meglio. Questo ormai è fissato, difetti compresi.",
		"Non c'è un secondo tentativo, per questo. Qualunque errore ci sia dentro, ormai ha fatto presa come la malta.",
	},
	["quest_complete.w13.doubt.022"] = {
		"Non saprò mai come va a finire. Ero solo un capitolo di mezzo nel libro di qualcun altro.",
		"Per me la storia si ferma qui. Il resto va avanti senza di me, e non saprò come si chiude.",
		"Qualche pagina del libro di un altro, e poi il libro mi si chiude davanti. Il finale lo leggerà qualcun altro.",
	},
	["quest_complete.w13.doubt.023"] = {
		"È più facile portare a termine un incarico che giudicarlo. Ho fatto la metà facile.",
		"Finire è la parte semplice. Decidere se andava finito è un lavoro più lento.",
		"Completarlo ha chiesto un tipo di impegno. Soppesarlo ne chiede un altro, e questo è appena cominciato.",
	},
	["quest_complete.w13.doubt.024"] = {
		"Se dovesse venir fuori che ho sbagliato ad aiutare, vorrei saperlo. È il minimo che devo.",
		"Se più avanti la cosa dovesse guastarsi, spero che la notizia mi raggiunga. Preferisco portarmi dietro i miei errori che ignorarli.",
		"Se c'è del male in tutto questo, che trovi la strada fino a me. Preferisco risponderne che essere {g:risparmiato|risparmiata} dal saperlo.",
	},
	["quest_complete.w13.doubt.025"] = {
		"La mia coscienza ha riletto il lavoro due volte e non ha trovato niente da ridire. Sta ancora leggendo.",
		"La coscienza dice che va bene. Dice anche che mi farà sapere.",
		"Il tribunale interiore è riunito. Per ora nessun verdetto, ma parecchio borbottio.",
	},
	["quest_complete.w13.doubt.026"] = {
		"L'orgoglio è permesso. Basta tenerlo della misura di quello che ho fatto.",
		"Un po' d'orgoglio, tagliato su misura. Qualunque cosa di più sarebbe presa in prestito.",
		"Un po' di soddisfazione, sì. Gonfiarla oltre quel che è successo davvero, no.",
	},
	["quest_complete.w13.doubt.027"] = {
		"Qualcosa è stato taciuto, ne sono {g:sicuro|sicura}. Non una bugia, proprio. Piuttosto una porta lasciata chiusa.",
		"Ho avuto l'impressione che mi abbiano detto quasi tutto. 'Quasi' è una parola prudente.",
		"Mi hanno mostrato ogni stanza tranne una. È a quella porta chiusa che continuo a pensare.",
	},
	["quest_complete.w13.doubt.028"] = {
		"Qualunque cosa fosse, non tocca più a me farmene domande. Eppure me ne faccio.",
		"Consegnato, e con questo anche il diritto di avere un'opinione. La mia opinione non l'ha saputo.",
	},
	["quest_complete.w13.doubt.029"] = {
		"Un buon lavoro e un lavoro giusto non sempre coincidono. Che sia stato un buon lavoro, di questo sono abbastanza {g:convinto|convinta}.",
		"L'ho fatto bene. Se l'ho fatto con giustizia è un'altra domanda, con un altro giudice.",
		"Abile e giusto sono due lodi diverse. Sulla prima ho qualche diritto.",
	},
	["quest_complete.w13.doubt.030"] = {
		"Dubitare non è pentirsi. Rigirarla nella mente è il mio modo di tenere oneste le mani.",
		"Ripensarci non vuol dire volerla disfare. È solo il mio modo di tenermi pulite le mani.",
	},
	["quest_complete.w13.doubt.031"] = {
		"Per un po' le mie mani sono state di qualcun altro. Spero di averle prestate a chi lo meritava.",
		"Prestarsi come un attrezzo. È un lavoro onesto, se è onesto chi lo impugna.",
		"Le mani utili vanno dove le si indirizza. Le mie ci sono andate. Vorrei saperne un po' di più su chi indirizzava.",
	},
	["quest_complete.w13.doubt.032"] = {
		"Fa impressione quanto in fretta 'devo farlo?' diventi 'l'ho fatto'. La prossima volta vorrei un po' più di spazio fra le due cose.",
		"Dal dubbio al fatto in un attimo. La prossima volta lascerò finire di parlare il dubbio.",
	},
	["quest_complete.w13.doubt.033"] = {
		"Certe cose, una volta fatte, restano fatte. Questa è una di quelle, e solo adesso mi accorgo di quanto sia definitiva.",
		"Non si può disfare. Vale per quasi tutto, ma vale di più per le cose in cui ho messo mano.",
		"Ormai non si torna indietro, non si disfa. Le azioni funzionano così, e preferisco tenerlo a mente.",
	},
	["quest_complete.w13.doubt.034"] = {
		"Ero {g:il primo|la prima} a cui è stato chiesto, o l'ultima risorsa? Non lo saprò mai, e non dovrebbe importarmi quanto mi importa.",
		"Chissà a quanti l'avranno chiesto prima di me. È vanità, farci caso. Un po' ci faccio caso.",
		"{g:Scelto|Scelta} per qualcosa, o solo chi passava di lì? L'orgoglio vuole una risposta. L'onestà sospetta l'altra.",
	},
	["quest_complete.w13.doubt.035"] = {
		"L'ho portato a termine. Se mi ha reso migliore, oltre che più abile nelle commissioni, è un altro discorso.",
		"L'abilità e la bontà crescono a velocità diverse. Una delle due è cresciuta un poco, adesso. Non so quale.",
		"Più abilità, senz'altro. Più saggezza? Quella parte non arriva con la consegna: va guadagnata in un altro modo.",
	},
	["quest_complete.w13.doubt.036"] = {
		"Dovere è una bella parola. Vorrei avere la certezza che sia stato il dovere, e non la semplice abitudine, a tenermi lì.",
		"Era dovere, o solo che avevo detto sì e detesto lasciare le cose a metà? Da fuori nessuno saprebbe dirlo. Da dentro, nemmeno io.",
	},
	["quest_complete.w13.doubt.037"] = {
		"Forse contava moltissimo. Forse era un capriccio. Il non sapere fa parte del lavoro.",
		"Questione di vita o di morte per qualcuno, o uno sfizio passeggero? L'ho fatto allo stesso modo in ogni caso. È già qualcosa.",
		"Grande bisogno o piccola voglia, dal mio posto sembravano uguali. Ci ho messo la stessa cura, e dovrà bastare.",
	},
	["quest_complete.w13.doubt.038"] = {
		"Ci penserò ancora per un po'. Certi incarichi se ne vanno appena conclusi; questo vuole trattenersi.",
		"È concluso, ma non se n'è andato del tutto. Mi resterà accanto ancora un poco, e va bene così.",
	},
	["quest_complete.w13.doubt.039"] = {
		"Nelle storie l'eroe non si fa mai domande, dopo. Sarei un pessimo eroe. Forse una persona migliore.",
		"Gli eroi delle canzoni non si voltano a riguardare così. Del resto, le canzoni tralasciano quasi tutto.",
	},
	["quest_complete.w13.doubt.040"] = {
		"Se avessi detto di no, l'avrebbe fatto qualcun altro. Meglio? Peggio? È una domanda inutile, ma con una presa di ferro.",
		"Chiunque avrebbe potuto farlo. L'ho fatto io. Continuo a chiedermi se sia un motivo di soddisfazione o soltanto un fatto.",
		"Qualcuno l'avrebbe fatto comunque. Se sia stato meglio che toccasse a me, non riesco a stabilirlo.",
	},
	["quest_complete.w13.doubt.041"] = {
		"Mi sono {g:fidato|fidata} della richiesta perché era fatta con garbo. Non è granché, come prova.",
		"La gentilezza non è una prova. Cercherò di ricordarmelo prima della prossima volta, non dopo.",
	},
	["quest_complete.w13.doubt.042"] = {
		"Magari un giorno ripasserò di qui e vedrò cosa ne è venuto. O magari no, e quasi sempre l'aiuto va così.",
		"Mi piacerebbe sapere, prima o poi, cosa ne è nato. Quasi mai l'aiuto riceve notizie di ritorno.",
		"Qualunque cosa ne venga, succederà senza che nessuno me la mostri. Per lo più, mi va bene così.",
	},
	["quest_complete.w13.doubt.043"] = {
		"Un giorno ce ne sarà uno che è l'ultimo, e non saprò che lo è. Strano pensiero, al momento della consegna. Che sia almeno uno fatto bene.",
		"Non è detto che dopo questo incarico ne venga un altro. Improbabile, ma possibile. In quel caso, che sia stato uno come questo, fatto con cura.",
	},
	["quest_complete.w13.doubt.044"] = {
		"Vorrei essere il tipo di persona che chiede perché prima, non dopo. Ci sto lavorando.",
		"La prossima volta: prima le domande, poi il sì. Regola facile da fare, meno da rispettare.",
		"Fra la fretta e la prudenza c'è un modo migliore di accettare queste cose. Non l'ho ancora trovato.",
	},
	["quest_complete.w13.doubt.045"] = {
		"Probabilmente dall'altra parte della consegna conta più che dalla mia. Vorrei sapere perché, e non lo chiederò.",
		"Per me era un incarico. Dall'altra parte poteva essere tutt'altro.",
	},
	["quest_complete.w13.doubt.046"] = {
		"Continuo a pensare a cosa farei diversamente. Non molto. Abbastanza da valerne la pena.",
		"Una o due cose le cambierei. Piccole. Le piccole sono quelle che mi ricorderò davvero di cambiare.",
		"Si sta formando un elenco di correzioni, breve e preciso. È il rimpianto che serve a qualcosa.",
	},
	["quest_complete.w13.doubt.047"] = {
		"Ho seguito la richiesta alla lettera. La lettera è un buon posto dove stare, finché non lo è più.",
		"Parola per parola, come richiesto. Se le parole fossero sagge, non mi sono {g:fermato|fermata} a chiedermelo.",
		"Fedele alla richiesta. Chissà se stavolta fedele e saggio erano la stessa cosa.",
	},
	["quest_complete.w13.doubt.048"] = {
		"Per un po' gli ho dato tutta la mia attenzione. Adesso mi chiedo se la meritasse tanto, o se la meritasse qualcos'altro.",
		"Il tempo dato a una cosa è tempo tolto a un'altra. Spero di aver scelto quella giusta.",
		"Quello che ho lasciato in sospeso mentre facevo questo mi ha aspettato, oppure no. Non saprò mai quale delle due.",
	},
	["quest_complete.w13.doubt.049"] = {
		"I ripensamenti arrivano dopo il lavoro, mai durante. Tempismo perfetto, come al solito.",
		"I miei dubbi si presentano sempre quando non c'è più niente da cambiare. Puntuali, a modo loro.",
		"Le domande hanno aspettato educatamente che fosse troppo tardi. Molto beneducate.",
	},
	["quest_complete.w13.doubt.050"] = {
		"In tutto questo c'era un dettaglio che non tornava. L'ho notato, e l'ho lasciato correre. Spero non sia stato un errore.",
		"Una piccola cosa non quadrava, e non ho detto niente. Adesso quadra ancora meno.",
		"C'era qualcosa di leggermente storto, e ho scelto di non vederlo. Adesso lo vedo.",
	},
	["quest_complete.w13.doubt.051"] = {
		"Non ogni dubbio ha bisogno di risposta. Alcuni vanno solo portati per un po', per non perdere la prudenza.",
		"Questo dubbio lo tengo in tasca. Non pesa, e potrebbe ricordarmi di guardare due volte, la prossima.",
		"Un dubbio che valga la pena tenere è un dubbio piccolo. Questo sta in una tasca, e tornerà utile.",
	},
	["quest_complete.w13.doubt.052"] = {
		"Devo al mondo un po' più di cura di quanta ne abbia messa qui. Non molta di più. Un poco.",
		"Fatto con onestà, se non alla perfezione. Quel conto lo regolerò con la mia coscienza più tardi.",
	},
	["quest_complete.w13.doubt.053"] = {
		"Tutto è tornato un po' troppo per bene. Molto probabilmente è fortuna, e non il disegno di qualcun altro.",
		"Ogni pezzo è andato al suo posto, così, da solo. Lo chiamerò fortuna, tenendo un occhio aperto.",
	},
	["quest_complete.w13.doubt.054"] = {
		"Ogni cosa che accetto mi insegna dove stanno i miei limiti. Questa ci stava dentro comodamente, credo.",
		"Ci sono cose che non farei per nessuno. Questa non era fra quelle. Fa bene controllare, ogni tanto.",
	},
	["quest_complete.w13.doubt.055"] = {
		"Una parte di me sperava che fosse più difficile lasciarlo andare. Non lo è stato. Non so cosa voglia dire.",
		"Mi aspettavo di provare di più, alla fine. Forse è calma. Forse qualcosa si è consumato, levigato.",
		"Mi è scivolato di dosso più facilmente di quanto pensassi. Non so decidere se sia pace o noncuranza.",
	},
	["quest_complete.w13.doubt.056"] = {
		"Spero fosse la cosa giusta. Credo di sì.",
		"La cosa giusta? Speriamo.",
		"Pareva giusto. Parere non è sapere, ma è un inizio.",
	},
	["quest_complete.w13.doubt.057"] = {
		"Posso chiedere a cosa serviva? No? Giusto.",
		"Non chiederò a cosa serviva. Anche se mi piacerebbe.",
	},
	["quest_complete.w13.doubt.058"] = {
		"Ditemi che è servito a qualcosa. Anche poco.",
		"Se ha aiutato qualcuno, ne sono felice. Se no, per ora preferisco non saperlo.",
	},
	["quest_complete.w13.doubt.059"] = {
		"Mh. Pensavo che mi avrebbe fatto sentire meglio.",
		"È conclusa e ho ancora la fronte aggrottata. Buffo.",
	},
	["quest_complete.w13.doubt.060"] = {
		"Consegnato, sì. Se fosse saggio, ne discuterò più avanti.",
		"Questa parte è sistemata. Adesso comincia la discussione con me {g:stesso|stessa}.",
		"Finito, fuori. Dentro sono ancora in corso le udienze.",
	},
	["quest_complete.w13.doubt.061"] = {
		"Su questa ci rimuginerò per un po'.",
		"Questa mi seguirà in giro per un pezzo.",
	},
	["quest_complete.w13.doubt.062"] = {
		"A qualunque cosa serva, spero che venga usato con gentilezza.",
		"Fatene buon uso. Non chiederei altro.",
		"Che serva a buoni fini. Non posso seguirlo per accertarmene.",
	},
	["quest_complete.w13.doubt.063"] = {
		"L'ho fatto. Non ho detto di averlo capito.",
		"Fatto, sì. Capito? È un'altra faccenda.",
		"Portato a termine. Capirlo è tutta un'altra commissione.",
	},
	["quest_complete.w13.doubt.064"] = {
		"La prossima volta faccio più domande prima.",
		"Ricordatemi di chiedere perché, la prossima volta. Prima, non dopo.",
	},
	["quest_complete.w13.doubt.065"] = {
		"Orgoglio? Un po'. Certezza? Meno.",
		"Soddisfazione, per lo più. Richiedetemelo fra una settimana.",
		"L'orgoglio c'è. La certezza, un po' meno.",
	},
	["quest_complete.w13.doubt.066"] = {
		"Mi auguro che nessuno se ne debba pentire. Io meno di tutti.",
		"Speriamo che sia il tipo di aiuto di cui nessuno si pente.",
		"Nessun rimpianto, spero. Né da una parte né dall'altra.",
	},
	["quest_complete.w13.doubt.067"] = {
		"Buffo. Tutto finito, e ho più domande di quando ho cominciato.",
		"Più domande adesso che all'inizio. Tipico.",
	},
	["quest_complete.w13.doubt.068"] = {
		"C'era più di quanto mi sia stato detto, vero?",
		"Ho l'impressione di averne sentito solo metà.",
		"Mezza storia, direi. L'altra metà resta dietro labbra cucite.",
	},
	["quest_complete.w13.doubt.069"] = {
		"È finita qui? In qualche modo ne dubito.",
		"La mia parte finisce qui. Dubito che finisca qui anche la faccenda.",
	},
	["quest_complete.w13.doubt.070"] = {
		"Bene. Credo. Sì, bene.",
		"D'accordo. Suppongo. Sì, suppongo che vada bene.",
	},
	["quest_complete.w13.doubt.071"] = {
		"Ho fatto quel che avevo detto. Cosa significhi, lo lascio a teste più sagge.",
		"Ho finito quel che toccava a me. Il senso lo lascio a qualcuno più saggio.",
	},
	["quest_complete.w13.doubt.072"] = {
		"Speriamo che contasse per qualcuno. Dovrebbe contare per qualcuno.",
		"Che sia servito a qualcuno, almeno. Altrimenti a che pro?",
	},
	["quest_complete.w13.doubt.073"] = {
		"Strana faccenda. Mi fa piacere che sia finita, e non so bene perché.",
		"Bizzarra, questa. Mi fa piacere essermela tolta di torno, per motivi che non saprei dire.",
	},
	["quest_complete.w13.doubt.074"] = {
		"Spero di aver aiutato la parte giusta.",
		"Da che parte stava, esattamente? Lascia perdere. Ormai è tardi.",
	},
	["quest_complete.w13.doubt.075"] = {
		"Buon lavoro, suppongo. Quanto buono, lo deciderò più tardi.",
		"Niente male. Se fosse giusto, lo sto ancora soppesando.",
	},
	["quest_complete.w13.doubt.076"] = {
		"La mia parte è questa. Spero che il resto sia in buone mani.",
		"Il mio pezzo è al suo posto. Del resto risponderà qualcun altro.",
		"Dalle mie mani ad altre mani. Che siano più ferme delle mie.",
	},
	["quest_complete.w13.doubt.077"] = {
		"Ci rifletterò sopra prima di decidere cosa ne penso.",
		"Datemi un po' di tempo con questa. Non ho finito di pensarci.",
	},
	["quest_complete.w13.doubt.078"] = {
		"Bene che sia finita. Meno bene le domande che ho saltato.",
		"D'accordo, è sistemata. Le domande che non ho fatto possono smettere di fissarmi.",
	},
	["quest_complete.w13.doubt.079"] = {
		"Lavoro onesto, spero. Sembrava onesto.",
		"Mi è sembrato onesto. Per ora mi fido di questo.",
	},
	["quest_complete.w13.doubt.080"] = {
		"Può bastare. Anche se continuo a rigirarmelo in testa.",
		"Chiuso. Non del tutto nella mia testa, ma chiuso.",
	},
	["quest_complete.w13.doubt.081"] = {
		"si ferma dopo la consegna, come sul punto di chiedere qualcosa, poi lascia perdere.",
		"apre la bocca per fare una domanda, ci ripensa, e se la tiene per sé.",
	},
	["quest_complete.w13.doubt.082"] = {
		"lancia un'unica occhiata a ciò che ha consegnato, con la faccia di chi ricontrolla un conto.",
		"si guarda alle spalle con un'ombra di perplessità, come se stesse ricontando qualcosa a mente.",
	},
	["quest_complete.w13.doubt.083"] = {
		"gira una mano col palmo in su e la studia un momento, come se potesse avere un'opinione.",
		"si guarda le mani per un po', senza un'espressione particolare.",
		"osserva le mani aperte, come si interrogano due testimoni che hanno visto tutto.",
	},
	["quest_complete.w13.doubt.084"] = {
		"si massaggia piano la nuca, il gesto di chi non ha ancora fatto pace con qualcosa.",
		"si gratta il mento con aria pensosa, e per ora non si muove.",
	},
	["quest_complete.w13.doubt.085"] = {
		"indugia con lo sguardo perso nel nulla, poi scrolla via il pensiero come acqua da una manica.",
		"resta un istante su qualche domanda tutta sua, poi la lascia andare con una piccola scrollata di spalle.",
	},
	["quest_complete.w13.doubt.086"] = {
		"fa un piccolo cenno del capo, rivolto più dentro che fuori.",
		"annuisce piano, come se desse ragione a qualcosa che nessun altro ha detto.",
		"china appena il capo, non tanto verso i presenti quanto verso un giudice interiore.",
	},
	["quest_complete.w13.doubt.087"] = {
		"fa per andarsene, si ferma, e si volta con una domanda che non diventa mai parole.",
		"si avvia, esita a metà passo, e solo dopo prosegue.",
	},
	["quest_complete.w13.doubt.088"] = {
		"si batte due dita sulle labbra, come fa chi valuta se parlare.",
		"stringe le labbra, trattenendo quel che stava per dire.",
	},
	["quest_complete.w13.doubt.089"] = {
		"accoglie la chiusura della faccenda con un sorriso educato che si ferma un passo prima della certezza.",
		"sorride alla consegna, un sorriso prudente con una domanda piegata dentro.",
	},
	["quest_complete.w13.doubt.090"] = {
		"si trattiene un momento più del necessario, rigirandosi in testa tutta la faccenda.",
		"sembra ripassarsi qualcosa in silenzio, le labbra che si muovono appena, prima di metterlo da parte.",
		"resta immobile per un poco, con l'aria di chi ripercorre ogni passo in ordine.",
	},
	["quest_complete.w13.doubt.091"] = {
		"traccia una linea lenta nell'aria con un dito, come per ripercorrere i passi che hanno portato fin qui.",
		"ripercorre qualcosa nell'aria con la punta di un dito, una piccola mappa di decisioni che sa leggere solo {g:lui|lei}.",
	},
	["quest_complete.w13.doubt.092"] = {
		"si sistema l'equipaggiamento distrattamente, le mani occupate mentre i pensieri sono altrove.",
		"armeggia con una cinghia che non ha bisogno di nulla, la mente chiaramente altrove.",
	},
	["quest_complete.w13.doubt.093"] = {
		"emette un breve suono ironico, non proprio una risata, per un pensiero tenuto per sé.",
		"sbuffa piano: divertimento o dubbio, difficile dire quale.",
		"fa un mezzo sorriso storto, quello di chi si sorprende a litigare coi propri pensieri.",
	},
	["quest_complete.w13.doubt.094"] = {
		"inclina la testa, come se ascoltasse una discussione che solo {g:lui|lei} può sentire.",
		"piega la testa di lato, soppesando qualcosa che non si vede.",
	},
	["quest_complete.w13.doubt.095"] = {
		"incrocia le braccia e resta lì in silenzio, l'immagine di chi non ha ancora finito un pensiero.",
		"a braccia conserte, guarda a terra e ci riflette su.",
	},
	["quest_complete.w13.doubt.096"] = {
		"ricompone l'espressione in qualcosa di neutro, anche se una piccola piega resta fra le sopracciglia.",
		"ha un'aria di lieve dubbio, di quello che arriva a cose fatte e non insiste.",
	},
	["quest_complete.w13.doubt.097"] = {
		"si dondola una volta sui talloni, per un momento con la testa altrove.",
		"si lascia andare indietro sui talloni e resta così un momento, a pensare.",
	},
	["quest_complete.w13.doubt.098"] = {
		"si stringe un attimo la radice del naso, poi molla la presa con un debole sorriso amaro.",
		"si strofina la tempia con una nocca, come si fa con una domanda che non vuole posarsi.",
	},
	["quest_complete.w13.doubt.099"] = {
		"mormora qualche parola fra sé, troppo piano per capirla, col tono di una domanda.",
		"borbotta una breve domanda a nessuno, e non aspetta risposta.",
	},
	["quest_complete.w13.doubt.100"] = {
		"lascia vagare lo sguardo oltre la consegna, verso ciò che potrebbe nascerne, gli occhi socchiusi nel pensiero.",
		"guarda nel vuoto a occhi socchiusi, come cercando di vedere cosa ne verrà.",
	},
	["quest_complete.w13.road.001"] = {
		"Buffo. La stanchezza ha aspettato educatamente la fine, e adesso arriva tutta insieme.",
		"Finché c'era da fare, le gambe stavano zitte. Adesso recuperano il tempo perso.",
		"La fatica faceva la fila dietro all'incarico. Adesso tocca a lei.",
	},
	["quest_complete.w13.road.002"] = {
		"Meglio non fermarsi troppo. Se mi siedo, troverò mille motivi per non rialzarmi.",
		"Se mi muovo adesso, lo slancio mi porta. Se mi fermo, dovrò ripartire da zero.",
	},
	["quest_complete.w13.road.003"] = {
		"Un capitolo si chiude senza fare il minimo rumore. Uno si aspetterebbe almeno un tonfo.",
		"Le conclusioni sono più silenziose di quanto mi aspetti. Questa non ha fatto quasi rumore.",
		"Nessun tonfo, nessuno scatto. La cosa smette semplicemente di essere aperta.",
	},
	["quest_complete.w13.road.004"] = {
		"In qualche posto c'è una cosa da fare che ancora non sa il mio nome. Andrò a scoprire dove.",
		"La prossima faccenda è là fuori, e non sa ancora niente di me. È un pensiero piacevole su cui camminare.",
	},
	["quest_complete.w13.road.005"] = {
		"I piedi puntano già da qualche parte. Il resto di me li raggiungerà.",
		"Una parte di me è già partita. Farei bene a seguirla prima che prenda troppo vantaggio.",
	},
	["quest_complete.w13.road.006"] = {
		"Per un momento nessuno aspetta me. Non so bene cosa farmene.",
		"Nessuno mi aspetta da nessuna parte. È una strana libertà, un po' troppo larga.",
		"Nessuno tiene d'occhio la porta per vedermi arrivare. È una sensazione che mi sta larga, come una giacca di un numero più grande.",
	},
	["quest_complete.w13.road.007"] = {
		"Adesso che è finita posso ammetterlo: le gambe non sono mai state del tutto d'accordo.",
		"Io e le mie ginocchia ne riparleremo più tardi.",
	},
	["quest_complete.w13.road.008"] = {
		"Chiudere il capitolo, non rileggerlo. Ci sarà tempo quando ci sarà meno da fare.",
		"Niente bilanci per ora. I ricordi si conservano; la prossima faccenda forse no.",
	},
	["quest_complete.w13.road.009"] = {
		"Ecco fatto spazio per qualcosa di nuovo. Chissà cosa ci verrà ad abitare.",
		"Si è liberato un posto nelle mie giornate. Presto qualcosa lo occuperà, e mi incuriosisce sapere cosa.",
	},
	["quest_complete.w13.road.010"] = {
		"È la stanchezza buona, quella che arriva quando non resta niente in sospeso.",
		"Stanchezza, sì, ma pulita. Niente di lasciato a metà che tormenti ai margini.",
	},
	["quest_complete.w13.road.011"] = {
		"E adesso dove? Lascio votare i piedi. Tanto vincono quasi sempre loro.",
		"Prossima direzione: da decidere. Le gambe sembrano avere un'opinione, la ascolterò.",
	},
	["quest_complete.w13.road.012"] = {
		"Prima qualcosa da mangiare. Poi qualcosa su cui sedermi. Poi, forse, un pensiero su cosa viene dopo.",
		"Ordine del giorno: cibo, un posto a sedere, e solo dopo la questione di dove andare.",
		"Il pane prima dei progetti. I progetti fatti a stomaco vuoto puntano sempre in direzioni sciocche.",
	},
	["quest_complete.w13.road.013"] = {
		"Chi viaggia è uno che porta a termine le cose in posti dove non resterà. Suppongo di essere io.",
		"Finire, raccogliersi, andare. Tutta l'arte del vagabondare, in una manciata di parole.",
	},
	["quest_complete.w13.road.014"] = {
		"Adesso mi spetta un po' di riposo. Lo riscuoto prima che qualcuno venga a riscuotere me.",
		"Una pausa me la sono guadagnata. Meglio prenderla in fretta, prima che qualcuno mi trovi un impiego.",
	},
	["quest_complete.w13.road.015"] = {
		"Non ho ancora la prossima cosa da fare. Per una volta, non mi preoccupa.",
		"Nessun piano oltre questo momento. Sembra meno uno smarrirsi che uno sciogliersi.",
		"Niente in programma. Continuo ad aspettare che mi dia fastidio, e non succede.",
	},
	["quest_complete.w13.road.016"] = {
		"La stanchezza, ospite paziente. Non interrompe mai il lavoro: aspetta vicino all'uscita.",
		"La fatica non irrompe mai a metà. Aspetta alla fine, col mio mantello in mano.",
	},
	["quest_complete.w13.road.017"] = {
		"Cammino in un altro modo, quando non devo niente a nessuno. Con più agio. Quasi a passeggio.",
		"Strano come cambia il passo quando non si deve più niente. Da marcia diventa girovagare.",
	},
	["quest_complete.w13.road.018"] = {
		"Lascio che la conclusione atterri, prima di muovermi. Le cose finite meritano un posto morbido dove posarsi.",
		"Una breve sosta, perché la fine abbia il tempo di entrare. Passarci sopra di corsa sembra saltare un gradino.",
	},
	["quest_complete.w13.road.019"] = {
		"Mi chiedo dove mi aspetti la prossima. Non cosa. Solo dove.",
		"Dove sarà, la prossima faccenda? È l'unica domanda a cui ho voglia di pensare.",
	},
	["quest_complete.w13.road.020"] = {
		"La stanchezza si fa vedere prima negli occhi, poi si sistema da qualche parte dietro le gambe.",
		"Comincia dietro gli occhi, questa fatica, e scende piano finché non la sentono anche le gambe.",
	},
	["quest_complete.w13.road.021"] = {
		"Una cosa in più alle spalle. Davanti, tutto il resto, e ne sono {g:contento|contenta}.",
		"Alle spalle, il fatto. Davanti, tutto il resto. Non farei cambio con nessuno che stia fermo.",
	},
	["quest_complete.w13.road.022"] = {
		"Ogni consegna è un piccolo commiato. Nessuno lo nota, tranne me.",
		"Un piccolo distacco, questo. Non da qualcuno in particolare. Dall'incarico stesso, credo.",
	},
	["quest_complete.w13.road.023"] = {
		"Il conto di tutta quella fatica arriva adesso, voce per voce, soprattutto in fondo alla schiena.",
		"I dolori tenevano il conto. Adesso lo presentano, per intero.",
		"La schiena ha messo da parte le sue lamentele. Adesso le legge ad alta voce, una per una.",
	},
	["quest_complete.w13.road.024"] = {
		"È appena finita e già mi prude la voglia di quel che viene dopo.",
		"Eccolo, il prurito. Neanche un minuto di pace e già voglio rimettermi in cammino.",
	},
	["quest_complete.w13.road.025"] = {
		"Adesso la prossima cosa la scelgo io, invece di vedermela scegliere.",
		"Il bello di finire: la prossima scelta tocca a me.",
	},
	["quest_complete.w13.road.026"] = {
		"Che venga lei a cercarmi, la prossima faccenda. Io su queste gambe non vado a cercarla.",
		"Se c'è altro da fare, sa dove trovarmi. Da qui non mi muovo.",
	},
	["quest_complete.w13.road.027"] = {
		"Adesso si fa strada, lenta come l'acqua in un panno. La stanchezza per cui non avevo tempo.",
		"Eccola, la fatica che continuavo a rimandare. È paziente. Penetra piano.",
	},
	["quest_complete.w13.road.028"] = {
		"La prossima potrebbe essere una cosa bella. Nessun motivo per crederlo, nessuno per non crederlo.",
		"Quel che viene potrebbe essere splendido. Ho deciso di crederci finché non mi si dimostra il contrario.",
	},
	["quest_complete.w13.road.029"] = {
		"Scrollarsela di dosso, raccogliere la roba, andare. Tutto il resto è perdere tempo.",
		"Roba in ordine, testa alta, si parte. Il resto è gingillarsi.",
	},
	["quest_complete.w13.road.030"] = {
		"I viandanti hanno un detto: finisci dove sei, riposa dove puoi, ricomincia dove devi.",
		"Come dicono i viandanti: finisci dove ti trovi, riposa dove ti lasciano, comincia dove servi.",
	},
	["quest_complete.w13.road.031"] = {
		"C'è una leggerezza che arriva solo subito dopo. Voglio ricordarmi com'è.",
		"Questa sensazione, proprio adesso, appena dopo: dovrei metterne da parte un po' per i momenti più pesanti.",
	},
	["quest_complete.w13.road.032"] = {
		"Un lungo riposo, mi dicevo. Dammi un attimo e comincerò a contrattare per accorciarlo.",
		"Un riposo come si deve, ho pensato. Già mi sento tirare sul prezzo fino a farne una sosta breve.",
	},
	["quest_complete.w13.road.033"] = {
		"Chiuso. Quello che me ne porto via adesso, lo porto come cosa mia, non come incarico di qualcuno.",
		"È finita, e quello che me ne resta dentro ora è mio, non del lavoro.",
	},
	["quest_complete.w13.road.034"] = {
		"Che la prossima sia più grande. Scopro di essere {g:pronto|pronta} a farmi chiedere di più.",
		"Qualcosa di più grande, la prossima volta. Credo di averci posto, adesso.",
		"Che sia più pesante, la prossima. Il mio passo la regge.",
	},
	["quest_complete.w13.road.035"] = {
		"È la parte che nessuno guarda: l'andarsene, da {g:solo|sola}, dopo. È quella che preferisco.",
		"Nessuno vede la partenza. L'arrivo si prende l'attenzione; l'andar via è tutto mio.",
	},
	["quest_complete.w13.road.036"] = {
		"Qualcosa in me sta mollando la presa, piano, come un pugno che si era dimenticato di essere chiuso.",
		"Dentro mi sto sciogliendo, un poco alla volta, come una mano rimasta chiusa troppo a lungo.",
	},
	["quest_complete.w13.road.037"] = {
		"Qualcosa da bere, un posto a sedere, e un po' di tempo per fissare il niente. Tutto qui il piano.",
		"Programma dei prossimi minuti: sedermi, bere qualcosa, guardare il vuoto.",
		"Mi basta una tazza di qualunque cosa e un angolo da cui fissare il nulla.",
	},
	["quest_complete.w13.road.038"] = {
		"La testa continua a fare la commissione anche se è finita. Le servirà un po' per accorgersene.",
		"Una parte della mente ci lavora ancora, come una macina che gira quando il grano è finito.",
		"L'incarico è chiuso; i pensieri non lo sanno ancora. Continuano a girare nello stesso cerchio.",
	},
	["quest_complete.w13.road.039"] = {
		"Cosa stavo facendo prima di tutto questo? Ho perso il filo, davvero. Ritrovarlo può essere la prossima cosa.",
		"Qualunque cosa avessi per le mani prima di cominciare, adesso è sfocata. Pazienza. Qualcosa di nuovo prenderà il suo posto.",
	},
	["quest_complete.w13.road.040"] = {
		"Nessuna scadenza da nessuna parte. Il tempo sembra più largo quando nessuno lo conta per me.",
		"Senza una scadenza i momenti si fanno più ampi. Li sento allentarsi.",
	},
	["quest_complete.w13.road.041"] = {
		"Sono ancora in guardia contro un guaio già risolto. Qualcuno lo dica alle mie spalle.",
		"Ho tutta la schiena contratta contro un problema che non esiste più. Può smettere.",
		"Ogni muscolo è ancora di sentinella. Nessuno gli ha detto che il turno è finito.",
	},
	["quest_complete.w13.road.042"] = {
		"Prima riposare o prima ripartire? Ogni fine lo chiede, per quanto piccola sia la domanda.",
		"Sedersi o rimettersi in cammino? Domanda minuscola. Stranamente difficile da risolvere.",
	},
	["quest_complete.w13.road.043"] = {
		"Prima di riposare cammino un po'. Fermarsi proprio sul traguardo è come sedersi sulla soglia.",
		"Qualche passo, poi il riposo. Crollare proprio al traguardo mi sembra sbagliato.",
	},
	["quest_complete.w13.road.044"] = {
		"Accettare, portare, consegnare, ripartire. Sono fra le ultime due battute, e la pausa è dolce.",
		"C'è un ritmo in questa vita: accettare, portare, consegnare, andare. Adesso sono nella pausa fra due note.",
	},
	["quest_complete.w13.road.045"] = {
		"L'ho posato. Adesso devo ricordarmi come cammino quando non porto niente per nessuno.",
		"Strano, posare un incarico. Per qualche passo cammino come chi ha perso qualcosa.",
	},
	["quest_complete.w13.road.046"] = {
		"Finire è come arrivare in fondo a un motivetto che canticchiavo senza accorgermene. Adesso me ne servirà un altro.",
		"Si è interrotto come un motivo canticchiato: me ne sono {g:accorto|accorta} solo quando è mancato. È ora di trovarne un altro.",
	},
	["quest_complete.w13.road.047"] = {
		"Per un po' non sono la risposta di nessuno a niente. Potrei abituarmici. Non lo farò.",
		"Per ora nessuno ha bisogno di me. È riposante, non essere la soluzione di nessuno.",
	},
	["quest_complete.w13.road.048"] = {
		"Mi piacerebbe annoiarmi un po'. Annoiarmi sul serio. Mi sembra meraviglioso.",
		"Quel che voglio adesso è un tratto di noia. Che non succeda niente, a lungo.",
		"Per cambiare, vorrei qualcosa di tedioso. Una lunga seduta senza eventi sarebbe un lusso.",
	},
	["quest_complete.w13.road.049"] = {
		"Non so ancora se è stanchezza o solo la fine di una cosa. All'inizio si somigliano.",
		"Stanchezza, o il vuoto che lascia una conclusione? Difficile dirlo. Sulle prime hanno la stessa faccia.",
	},
	["quest_complete.w13.road.050"] = {
		"Il lavoro mi teneva su come il palo regge una tenda. Toglilo, e mi affloscio un po'.",
		"Era l'incarico a tenermi in piedi. Adesso che non c'è più, mi appoggerei volentieri a qualcosa.",
	},
	["quest_complete.w13.road.051"] = {
		"I pensieri stanno già fiutando avanti, come un cane davanti a una porta che vuole aperta.",
		"Metà di me sta già annusando in giro in cerca della prossima. L'altra metà vorrebbe una sedia.",
	},
	["quest_complete.w13.road.052"] = {
		"La quiete dopo una cosa finita è l'unica di cui mi fido fino in fondo. Non resta niente che possa romperla.",
		"Questa quiete non nasconde niente. Per questo mi riposa.",
	},
	["quest_complete.w13.road.053"] = {
		"Qualunque cosa venga dopo, me la prenderò comoda per arrivarci. Un po' di bighellonare me lo sono guadagnato.",
		"Nessuna fretta verso la prossima. Anche una camminata lenta è una specie di riposo.",
		"Verso quel che viene dopo andrò senza premura. La lentezza è un piccolo lusso, a suo modo.",
	},
	["quest_complete.w13.road.054"] = {
		"C'è la stanchezza del lavoro, e sotto un'altra, più vecchia, che finire non sfiora. Mi occupo della prima.",
		"Il riposo sistemerà le gambe. La fatica più profonda è un'altra faccenda, e al riposo non dà retta.",
	},
	["quest_complete.w13.road.055"] = {
		"Lo metto sullo scaffale, in testa. Lì si conserva, e io viaggio con meno peso.",
		"Finisce in fondo alla mente, piegato per bene. C'è da camminare.",
	},
	["quest_complete.w13.road.056"] = {
		"Qualsiasi cosa venga dopo, spero che cominci piano. Un inizio lento mi andrebbe benissimo.",
		"Che la prossima bussi piano. Per una volta vorrei un inizio tranquillo.",
	},
	["quest_complete.w13.road.057"] = {
		"Adesso scopro chi sono quando non faccio qualcosa per qualcuno. Probabilmente: qualcuno con fame.",
		"Fuori servizio per il mondo, per poco. Vediamo cosa faccio di me quando nessuno chiede niente.",
		"Nessuna commissione dietro cui nascondermi. Solo io, la mia roba, e un crescente interesse per il cibo.",
	},
	["quest_complete.w13.road.058"] = {
		"Da qui potrei andare quasi ovunque. E quasi ovunque, probabilmente, va bene.",
		"Tutte le direzioni sono aperte. Dubito che ce ne sia una sbagliata, almeno per un po'.",
	},
	["quest_complete.w13.road.059"] = {
		"Dovrei riposare prima della prossima faccenda. Non lo farò, ma averci pensato è già un segno di saggezza.",
		"Le persone assennate a questo punto riposano. Io penserò di riposare, che è quasi lo stesso.",
	},
	["quest_complete.w13.road.060"] = {
		"Una cosa finita è un buon terreno su cui stare mentre si sceglie. Solido. Sceglierò da qui.",
		"Sotto i piedi niente di lasciato a metà. Non c'è appoggio migliore per decidere dove andare.",
	},
	["quest_complete.w13.road.061"] = {
		"È andata bene. Vorrei portarmi questa sensazione dentro la prossima faccenda, prima che si raffreddi.",
		"Le cose sono andate per il verso giusto. Meglio portarselo dietro finché è fresco.",
	},
	["quest_complete.w13.road.062"] = {
		"Adesso non devo rendere conto a nessuno. Le parole che avrei usato restano lì, non spese.",
		"Avevo pronto un discorsetto nel caso qualcosa andasse storto. Può restare in tasca, intatto.",
	},
	["quest_complete.w13.road.063"] = {
		"Tutto quello che ho addosso pesa più di un momento fa. Non è cambiato niente, tranne la mia pazienza.",
		"Stesso zaino, stessa roba, e d'improvviso il doppio del peso. Finire fa questo effetto.",
	},
	["quest_complete.w13.road.064"] = {
		"Alle mie spalle, una cosa chiusa. Davanti, tutto il resto ancora da scrivere. È il verso giusto.",
		"Un capo annodato. Quello sciolto che ho davanti è quello che vale la pena di inseguire.",
	},
	["quest_complete.w13.road.065"] = {
		"Qualcuno, chissà dove, adesso può smettere di preoccuparsene. E anch'io, cosa che avevo quasi dimenticato.",
		"Spero che non ci pensino più. Io di sicuro no, e sento lo spazio che ha lasciato.",
	},
	["quest_complete.w13.road.066"] = {
		"Inutile restare qui ad ammirarlo. È fatto; stare fermi non lo rende più fatto.",
		"Indugiare non lo finisce meglio di così. È ora di muoversi.",
	},
	["quest_complete.w13.road.067"] = {
		"Ogni cosa che porto a termine è una cosa in più che non ha più bisogno di me. Mi fa piacere, e insieme mi lascia un piccolo vuoto.",
		"Non ha più bisogno di me. È proprio lo scopo, certo. Eppure essere lasciati andare punge un poco.",
	},
	["quest_complete.w13.road.068"] = {
		"Nel passo c'è un saltello che non ci ho messo io. Ce l'avrà infilato la fine.",
		"Nella camminata c'è una molla che prima non c'era. La tengo finché resta.",
	},
	["quest_complete.w13.road.069"] = {
		"Ogni partenza è anche un arrivo in un posto che non vedo ancora. Andrò a vederlo.",
		"Finire una cosa vuol dire solo stare sul bordo della prossima. Da qui, è tutto aperto.",
	},
	["quest_complete.w13.road.070"] = {
		"E adesso, da che parte? Ovunque ci sia un posto per sedersi.",
		"Di qua o di là? Prendo la direzione che finisce con una panca.",
	},
	["quest_complete.w13.road.071"] = {
		"Eccomi {g:libero|libera}. Qualcun altro ha bisogno di qualcosa? No? Splendido. Vado.",
		"{g:Libero|Libera} per un po'. Intendo godermelo a passo lento.",
	},
	["quest_complete.w13.road.072"] = {
		"Se il mondo finisce fra poco, mi troverete {g:seduto|seduta}. Venite a prendermi.",
		"Gridate se qualcosa prende fuoco. Io intanto riposo.",
	},
	["quest_complete.w13.road.073"] = {
		"Allora vado. Da qualche parte. Lo riconoscerò quando ci arrivo.",
		"È ora di essere altrove. Dove esattamente, lo capirò strada facendo.",
	},
	["quest_complete.w13.road.074"] = {
		"Fatemi sedere un po', prima. Dopo, il mondo potrà disporre di me come crede.",
		"Un momento di riposo, e torno a disposizione di tutti. Non prima.",
	},
	["quest_complete.w13.road.075"] = {
		"Cosa viene dopo? Non rispondete. Vado a scoprirlo.",
		"Allora, cosa c'è dopo? Non ditemelo. Preferisco inciamparci da me.",
	},
	["quest_complete.w13.road.076"] = {
		"Le gambe vorrebbero protestare. Le ascolterò dopo una bella seduta.",
		"La schiena ha qualcosa da dire su tutto questo. Le ho chiesto di aspettare che mi sieda.",
	},
	["quest_complete.w13.road.077"] = {
		"Questa è chiusa. Mostratemi la prossima.",
		"Qui ho finito. Indicatemi cosa mi aspetta.",
		"Chiusa e sistemata. Adesso, la prossima porta.",
	},
	["quest_complete.w13.road.078"] = {
		"E così finisce, e così comincia la prossima. Mi sta bene.",
		"Una cosa finisce, un'altra si sveglia. È così che deve andare.",
	},
	["quest_complete.w13.road.079"] = {
		"C'è qualcosa da mangiare? Lo chiedo a nome di ogni parte di me.",
		"Primo: mangiare. Secondo: mangiare ancora un po'. Poi ci penso.",
	},
	["quest_complete.w13.road.080"] = {
		"Non devo essere da nessuna parte. Che cosa strana e bella da dire ad alta voce.",
		"Nessun posto dove devo andare. Sentirlo dire è metà del piacere.",
	},
	["quest_complete.w13.road.081"] = {
		"Via, allora, prima che mi venga voglia di restare.",
		"Riparto prima di accomodarmi. Accomodarsi è pericoloso.",
	},
	["quest_complete.w13.road.082"] = {
		"Un breve riposo e una lunga riflessione. O il contrario.",
		"Mi serve una sedia e un pensiero. Non per forza in quest'ordine.",
	},
	["quest_complete.w13.road.083"] = {
		"Datemi un momento e mi rimetterò a cercare guai. Un momento solo, eh.",
		"Due minuti di pace, e poi vado a caccia di altri pasticci. Forse uno.",
	},
	["quest_complete.w13.road.084"] = {
		"Pagina voltata. Vediamo cosa c'è sulla prossima.",
		"Quella pagina è scritta. Mi incuriosisce vedere la prossima.",
	},
	["quest_complete.w13.road.085"] = {
		"Braccia a riposo. Quel che va portato aspetterà il suo turno.",
		"Non passatemi niente. Le braccia hanno smontato dal turno.",
	},
	["quest_complete.w13.road.086"] = {
		"Si riparte, piano. Con una sosta da qualche parte nel mezzo.",
		"In marcia, sì. Con calma, e con le soste.",
	},
	["quest_complete.w13.road.087"] = {
		"Ah, che sollievo. Va già meglio. Cosa c'è dopo?",
		"Che leggerezza. Davvero. Andiamo a cercare qualcosa con cui riempire lo spazio.",
	},
	["quest_complete.w13.road.088"] = {
		"Festeggerei, ma sedermi mi sembra più divertente.",
		"C'è chi esulterebbe. Io vado a cercare qualcosa a cui appoggiarmi.",
	},
	["quest_complete.w13.road.089"] = {
		"Questa è andata. Roba in spalla. Si va.",
		"Chiusa. Zaino su. Vado.",
	},
	["quest_complete.w13.road.090"] = {
		"E adesso io vado, e la cosa resta qui, finita. Buffo.",
		"Me ne vado, e resterà fatta anche senza di me. È uno strano modo di salutarsi.",
	},
	["quest_complete.w13.road.091"] = {
		"Venga pure la prossima. Ho trovato il passo e intendo tenerlo.",
		"Sotto con quel che segue. Adesso ho preso il ritmo.",
	},
	["quest_complete.w13.road.092"] = {
		"Mi fa male tutto, ma in modo educato, da cosa conclusa. Glielo concedo.",
		"Indolenzimento ovunque, ma ordinato. Niente di lasciato a metà a peggiorarlo.",
	},
	["quest_complete.w13.road.093"] = {
		"Nient'altro? Allora sparisco prima che qualcuno ci ripensi.",
		"Tutto qui? Splendido. Svanisco prima che a qualcuno torni in mente qualcosa.",
	},
	["quest_complete.w13.road.094"] = {
		"È ora di vedere cos'altro il mondo mi tiene da parte.",
		"Ci sarà qualcos'altro. C'è sempre. Quasi quasi ne sono {g:contento|contenta}.",
	},
	["quest_complete.w13.road.095"] = {
		"Datemi il tempo di sedermi un attimo. Poi sono di chiunque.",
		"Prima mi siedo. Poi mandatemi dove vi pare.",
	},
	["quest_complete.w13.road.096"] = {
		"fa un lento mezzo giro su di sé, come in attesa che una direzione sembri più interessante delle altre.",
		"guarda da una parte, poi dall'altra, con l'aria di chi lascia che il passo successivo si scelga da solo.",
	},
	["quest_complete.w13.road.097"] = {
		"ruota piano il collo, da una parte e dall'altra, finché qualcosa non fa un piccolo clic.",
		"piega la testa da un lato e dall'altro, sciogliendo la rigidità di una postura tenuta troppo a lungo.",
	},
	["quest_complete.w13.road.098"] = {
		"si siede sulla prima cosa che regga il suo peso, solo per un momento, e ci resta un po' di più.",
		"si lascia andare sulla cosa più vicina e lascia che il momento si allunghi.",
	},
	["quest_complete.w13.road.099"] = {
		"controlla una per una le fibbie dello zaino, senza fretta, come chi sta fra una cosa e l'altra.",
		"si tira lo zaino più in alto e dà uno strattone alle cinghie, in vista del prossimo tratto.",
	},
	["quest_complete.w13.road.100"] = {
		"sembra d'un tratto un po' più pesante, come se la stanchezza avesse aspettato il permesso.",
		"si affloscia appena, come capita quando viene meno il motivo per stare dritti.",
	},
	["quest_complete.w13.road.101"] = {
		"canticchia qualche nota senza meta, perde il motivo, e non sembra importargliene.",
		"attacca a canticchiare qualcosa, dimentica cosa, e continua lo stesso.",
	},
	["quest_complete.w13.road.102"] = {
		"si appoggia alla cosa più vicina e chiude gli occhi per qualche lungo momento.",
		"trova un appoggio e chiude gli occhi, solo un poco, come prendendosi un riposo a credito.",
	},
	["quest_complete.w13.road.103"] = {
		"beve un lungo sorso dalla borraccia e la richiude con l'aria di chi ricomincia da capo.",
		"beve a lungo, si asciuga la bocca col dorso della mano, e guarda avanti.",
	},
	["quest_complete.w13.road.104"] = {
		"allunga entrambe le braccia verso l'alto finché la schiena non fa un piccolo schiocco soddisfatto.",
		"intreccia le dita e spinge le braccia in avanti, allungandosi finché le giunture non protestano.",
	},
	["quest_complete.w13.road.105"] = {
		"resta immobile per un po', poi scuote entrambe le mani e si allontana con passo tranquillo.",
		"si ferma un lungo momento, come per lasciarsi raggiungere dalla conclusione, poi riprende a camminare senza fretta.",
	},
	["quest_complete.w13.road.106"] = {
		"si lascia sfuggire una breve risata per niente di speciale, e sembra alleggerirsi.",
		"ridacchia una volta, piano, per qualche battuta tutta sua, e prosegue.",
	},
	["quest_complete.w13.road.107"] = {
		"si accovaccia un momento, i gomiti sulle ginocchia, prima di rialzarsi e proseguire.",
		"si accoscia, gli avambracci sulle ginocchia, e resta così per un po', a raccogliere le forze.",
	},
	["quest_complete.w13.road.108"] = {
		"si spazzola le maniche e si raddrizza, rivolgendo lo sguardo a quel che ha davanti.",
		"batte via lo sporco dall'equipaggiamento e si raddrizza, lo sguardo in avanti.",
	},
	["quest_complete.w13.road.109"] = {
		"osserva il niente per un po', con lo sguardo lontano di chi è già a metà strada verso altrove.",
		"fissa un punto indefinito, come se metà di sé fosse già partita.",
	},
	["quest_complete.w13.road.110"] = {
		"si massaggia le reni con una mano e fa una smorfia, non del tutto scontenta.",
		"si preme le dita su un punto dolente dietro il collo, gli occhi socchiusi.",
	},
	["quest_complete.w13.road.111"] = {
		"fa un passo, poi un altro, come per provare che effetto fa camminare senza dovere niente.",
		"si avvia, piano all'inizio, poi trovando un passo più sciolto di prima.",
	},
	["quest_complete.w13.road.112"] = {
		"si porta due dita alla fronte in un minuscolo saluto al momento, e si volta per andare.",
		"si posa una mano sul petto in un piccolo gesto privato di chiusura, poi riparte.",
	},
	["quest_complete.w13.road.113"] = {
		"si strofina gli occhi con i palmi, piano, come chi solo ora si accorge di quanto tempo è passato.",
		"preme il dorso dei polsi contro gli occhi stanchi per un momento.",
	},
	["quest_complete.w13.road.114"] = {
		"scuote una gamba, poi l'altra, come chi si prepara a camminare dell'altro.",
		"piega un ginocchio e poi l'altro, saggiando quanto resta nelle gambe per il prossimo tratto.",
	},
	["quest_complete.w13.road.115"] = {
		"aspetta che il momento abbia finito del tutto di essere un momento, poi ne esce.",
		"lascia che la conclusione stia in piedi da sola per un po', prima di allontanarsene.",
	},
	["quest_complete.w13.road.116"] = {
		"guarda il posto a sedere più vicino con aperto desiderio, poi, con evidente sforzo, ci passa accanto.",
		"lancia un lungo sguardo nostalgico a un posto dove sedersi e tira dritto, a malapena.",
	},
	["quest_complete.w13.wit.001"] = {
		"Deve esistere un registro di tutto quello che si chiede agli avventurieri. Mi piacerebbe leggerlo, e poi bruciarlo.",
		"Se qualcuno annotasse tutto ciò che gli sconosciuti chiedono a quelli come me, verrebbe fuori il libro più strano del mondo.",
		"Qualche erudito dovrebbe raccoglierle tutte: le commissioni degli sconosciuti, in ordine alfabetico. Un volume spessissimo e stranissimo.",
	},
	["quest_complete.w13.wit.002"] = {
		"Al vicino di casa non lo chiede nessuno. Si aspetta lo sconosciuto di passaggio, con lo zaino in spalla e l'aria di chi non ha niente di meglio da fare.",
		"Una logica ce l'ha. Perché disturbare qualcuno che rivedrai, quando un viandante lo fa e poi sparisce dalla tua vita?",
		"Chi è di passaggio è l'aiutante perfetto: niente passato, niente rancori, e sparito prima che qualcuno debba essergli grato troppo a lungo.",
	},
	["quest_complete.w13.wit.003"] = {
		"Momenti così meriterebbero un discorso come si deve, con dentro un 'd'ora innanzi'. E invece ho borbottato.",
		"Dovrei tenere pronte delle parole per la consegna. Parole solenni. Quel che è uscito somigliava di più a 'ecco qua'.",
		"Un'anima più nobile avrebbe declamato. Io ho detto 'dunque, ehm', e ho lasciato fare alle sopracciglia.",
	},
	["quest_complete.w13.wit.004"] = {
		"{g:Eroe|Eroina} del momento. Guarderei quanto resta del momento, ma preferisco non saperlo.",
		"Per un minuto circa potrei essere {g:l'eroe|l'eroina} di qualcuno. Intendo godermi ogni secondo di quel minuto.",
		"Un titolo da {g:eroe|eroina}, per poco. Scade nel momento in cui mi siedo.",
	},
	["quest_complete.w13.wit.005"] = {
		"La lista che ho in testa perde una riga e, per qualche legge che non capisco, ne guadagna due.",
		"Ne cancelli una, e in fondo alla lista ne spunta zitta zitta un'altra. Non chiedo come.",
		"Qualcuno deve aggiungere righe alla mia lista mentre dormo. Non c'è altra spiegazione.",
	},
	["quest_complete.w13.wit.006"] = {
		"Nessuno ti avverte che l'eroismo consiste soprattutto nel presentarsi, spiegarsi e ricevere un cenno del capo.",
		"Le canzoni tacciono la parte burocratica dell'eroismo: tornare a riferire, aspettare mentre qualcuno controlla.",
		"L'eroismo, scopro, è metà impresa e metà resoconto dell'impresa, fatto in modo che suoni ordinato.",
	},
	["quest_complete.w13.wit.007"] = {
		"Lo zaino ha smesso di lamentarsi. Lui, almeno, è contento.",
		"Lo zaino adesso sta più comodo sulla schiena. Se potesse, mi ringrazierebbe.",
	},
	["quest_complete.w13.wit.008"] = {
		"Vorrei un campanellino che suonasse ogni volta che finisco qualcosa. Niente di forte. Giusto per me.",
		"Ci vorrebbe un suono, per questo. Un trillo, come quello della porta di una bottega. Mi accontenterei.",
	},
	["quest_complete.w13.wit.009"] = {
		"I guai del mondo finiscono in mano a chi resta fermo abbastanza a lungo. Promemoria: stare fermi di meno.",
		"Lezione imparata: mai indugiare vicino a una faccia preoccupata. Io ho indugiato. Il resto è storia, di quella piccolissima.",
		"Regola del viandante: se ti fermi ad allacciarti uno stivale, qualcuno lo scambierà per disponibilità.",
	},
	["quest_complete.w13.wit.010"] = {
		"Gli avventurieri li chiamano coraggiosi. Per lo più sono gente che dice di sì prima che la frase sia finita.",
		"Lo chiamano coraggio. Io la chiamerei l'abitudine di dire di sì troppo in fretta.",
		"Coraggio, certo. Ma soprattutto un debole per le parole 'per favore'.",
	},
	["quest_complete.w13.wit.011"] = {
		"Qualcuno dovrebbe inventare una medaglia per le commissioni portate a termine. Piccola, di poco conto, e consegnata da nessuno.",
		"Una medaglia per le commissioni. Di latta, leggera, senza cerimonie. Io la porterei.",
	},
	["quest_complete.w13.wit.012"] = {
		"La gente affida i propri guai a uno sconosciuto prima ancora di dirgli come si chiama. Che tipi strani, le persone.",
		"Strano come si consegnino i propri crucci a qualcuno di cui non si è nemmeno chiesto il nome.",
	},
	["quest_complete.w13.wit.013"] = {
		"Tengo in testa il conto degli incarichi. Il conto è sbagliato, ma è molto sicuro di sé.",
		"Il mio conto dei lavori finiti è un'ipotesi travestita da numero.",
	},
	["quest_complete.w13.wit.014"] = {
		"Il mondo è migliorato più o meno dello spessore di un capello. Ho intenzione di essere insopportabile per un po'.",
		"Un miglioramento minuscolo nello stato delle cose. Minuscolo. Lo racconterò lo stesso a chiunque mi stia vicino.",
		"Una piccola cosa ora sta dritta grazie a me. Sarò insopportabile finché non trovo un altro motivo per esserlo.",
	},
	["quest_complete.w13.wit.015"] = {
		"I piedi hanno presentato un reclamo. L'ho messo da parte insieme agli altri.",
		"Le gambe vorrebbero scambiare due parole con chi ha accettato questo lavoro. Purtroppo sono io.",
		"Le ginocchia stanno stilando un elenco di lamentele. Ho promesso di leggerlo più tardi.",
	},
	["quest_complete.w13.wit.016"] = {
		"Ci vorrebbe un modulo apposito. Nome, incarico, firma, e una casella con scritto 'ancora in un pezzo solo'.",
		"Vorrei un timbro, se l'eroismo avesse le sue carte. Uno rosso, con su scritto: PRATICA EVASA.",
	},
	["quest_complete.w13.wit.017"] = {
		"'Ci penso io', ho detto. Parole audaci. A quanto pare erano anche vere.",
		"Le promesse fatte con voce sicura hanno il vizio di trasformarsi in commissioni. Questa almeno è alle spalle.",
	},
	["quest_complete.w13.wit.018"] = {
		"Forse quest'angolo di mondo non aveva bisogno di salvezza. Troppo tardi: ormai è salvo.",
		"Salvato, riparato o sistemato, qualunque cosa fosse. Indietro non si torna, e io non ci tornerei.",
	},
	["quest_complete.w13.wit.019"] = {
		"Metà del mondo, sospetto, va avanti grazie a sconosciuti che fanno cose per altri sconosciuti. Nessuno l'ha deciso. Regge e basta.",
		"Se ogni viandante dicesse di no, mi chiedo quanta parte del mondo andrebbe a pezzi senza far rumore. Parecchia, temo.",
	},
	["quest_complete.w13.wit.020"] = {
		"Lo aggiungo alla lista delle cose che so fare. È una lista breve, stranamente precisa, e in crescita.",
		"Nuova abilità acquisita: qualunque cosa fosse. La metto tra le cose su cui nessuno mi farà mai domande.",
		"Adesso ho una certa competenza in una materia che nessuno mi nominerà mai più. La competenza è una faccenda solitaria.",
	},
	["quest_complete.w13.wit.021"] = {
		"Qualunque sia il mio mestiere, le commissioni sembrano l'altro: senza nome, senza gilda, senza orari.",
		"Se mi chiedessero che lavoro faccio, dovrei dire 'aiuto sconosciuti con problemi stranamente precisi'. Su un'insegna non ci sta.",
	},
	["quest_complete.w13.wit.022"] = {
		"Il trucco è sembrare di averlo previsto fin dall'inizio. Ci sto lavorando, sull'espressione.",
		"Fuori: calma e competenza. Dentro: un lieve stupore che abbia funzionato.",
		"Ho annuito come se fosse ordinaria amministrazione. Dentro, una vocina dice ancora 'ha funzionato?'",
	},
	["quest_complete.w13.wit.023"] = {
		"Grandi imprese, piccole imprese: finiscono tutte allo stesso modo. Due parole, un piede che si sposta, e ognuno torna ai fatti suoi.",
		"Che abbia salvato un regno o un orto di cavoli, il finale è uguale: due parole, e si torna alle solite faccende.",
	},
	["quest_complete.w13.wit.024"] = {
		"Si metta agli atti che la cosa è fatta. Gli atti, per quanto ne so, sono io.",
		"Per il verbale ufficiale: fatto. Il verbale è custodito nella mia testa, e non è molto ordinato.",
		"Resoconto della seduta: una persona ha chiesto, una persona ha fatto. La seduta è tolta.",
	},
	["quest_complete.w13.wit.025"] = {
		"Accettato, eseguito, riferito. A metà strada ho perso di vista il perché, ma il finale è in ordine.",
		"Inizio, svolgimento, fine. Lo svolgimento era un po' un pasticcio, ma i finali perdonano molto.",
	},
	["quest_complete.w13.wit.026"] = {
		"Molto di quello che si chiede agli sconosciuti potrebbe farlo chi lo chiede. Io non lo dico. Rovinerei l'accordo.",
		"C'è un patto non detto: chi chiede chiede, e chi aiuta non domanda perché. Così il mondo gira.",
	},
	["quest_complete.w13.wit.027"] = {
		"Potrei dormire in piedi. Non lo faccio, perché qualcuno mi metterebbe in mano qualcosa da reggere.",
		"Un letto, un angolo, o una cassa abbastanza piatta. A questo punto non vado per il sottile.",
		"Le palpebre stanno trattando per qualche minuto di pausa. Le loro condizioni mi sembrano accettabili.",
	},
	["quest_complete.w13.wit.028"] = {
		"È una bella sensazione, rendersi utili. Sarebbe ancora più bella se l'utilità venisse con un cuscino.",
		"Ecco la parola giusta: utile. Suona meglio di come la sentono le ginocchia.",
		"Rendersi utili fa benissimo all'anima e malissimo agli stivali.",
	},
	["quest_complete.w13.wit.029"] = {
		"Chissà se qualcuno tiene una lista di quelli che hanno detto sì. Vorrei che il mio nome venisse cancellato, con delicatezza.",
		"Scommetto che il mio nome è scritto chissà dove sotto la voce 'affidabile'. È così che cominciano i guai.",
	},
	["quest_complete.w13.wit.030"] = {
		"Ogni incarico porta con sé un piccolo vocabolario. Adesso conosco parole che non userò mai in vita mia.",
		"Ho imparato i nomi di cose che non dovrò mai più nominare. Il sapere è uno strano bagaglio.",
	},
	["quest_complete.w13.wit.031"] = {
		"La modestia dice: alza le spalle. La vanità dice: raccontalo a tutti. Faccio un compromesso: lo dirò al prossimo che chiede, se qualcuno chiederà.",
		"Una parte di me vorrebbe minimizzare, un'altra vorrebbe vederlo inciso da qualche parte. Hanno deciso di litigare più tardi.",
	},
	["quest_complete.w13.wit.032"] = {
		"Consegnato, chiuso, archiviato. Tre modi di dire che posso smettere di pensarci.",
		"Sistemato, concluso, evaso: il mondo ha mille parole per dire finito, e mi piacciono tutte.",
	},
	["quest_complete.w13.wit.033"] = {
		"Vita da viandante: arrivi, ti rendi utile, te ne vai prima che a qualcuno venga in mente altro.",
		"Il segreto di una lunga carriera di commissioni è l'uscita. Un sorriso, un cenno, e sparire prima che la prossima richiesta prenda forma.",
		"L'arte della commissione è soprattutto l'arte di andarsene con eleganza.",
	},
	["quest_complete.w13.wit.034"] = {
		"Attiro le commissioni come una lanterna attira le falene. Non è un paragone che mi lusinghi.",
		"Dev'essere qualcosa nella mia faccia. La gente la guarda e pensa: ecco qualcuno che ci andrà.",
	},
	["quest_complete.w13.wit.035"] = {
		"Cosa dovrebbe fare un eroe nel momento dopo? Stare in posa eroica, immagino. La schiena declina l'invito.",
		"Per questo momento non esiste una posa. La vittoria ne ha tante. Le commissioni hanno solo una specie di spalle curve.",
	},
	["quest_complete.w13.wit.036"] = {
		"Tutto quello che ho è segnato, impolverato o senza una cinghia. Piccolo prezzo per l'altruismo.",
		"La mia roba sembra aver fatto il lavoro da sola. In un certo senso, ha dato una mano.",
		"La mia attrezzatura ha l'aria di aver servito a qualcosa. È un'aria distinta, a modo suo.",
	},
	["quest_complete.w13.wit.037"] = {
		"La modestia ha bisogno di pubblico. Per ora mi compiaccio in privato; minimizzerò in compagnia.",
		"Soddisfazione dentro, umiltà fuori. È un metodo, e funziona.",
	},
	["quest_complete.w13.wit.038"] = {
		"Un giorno racconterò male questa storia, e crescerà a ogni racconto. È così che nascono le leggende: da gente come me che esagera.",
		"Lascio passare un anno e diventerà una storia molto migliore. Me ne occupo io, di persona.",
		"Fra dieci anni in questo racconto ci sarà il triplo di tutto, e io sarò {g:più coraggioso|più coraggiosa}.",
	},
	["quest_complete.w13.wit.039"] = {
		"Chi ha chiesto ha un problema in meno, e io una storia in più. Scambio equo, più o meno.",
		"Un cruccio in meno da quella parte, un aneddoto in più dalla mia. Credo di averci guadagnato io.",
		"Il loro cruccio è più leggero, la mia testa più piena. Una spartizione più giusta non mi viene in mente.",
	},
	["quest_complete.w13.wit.040"] = {
		"Mi siedo un attimo. Il mondo può reggersi da solo per così poco. Probabilmente.",
		"Il mondo se la cavava anche prima di me. Se la caverà mentre mi siedo.",
	},
	["quest_complete.w13.wit.041"] = {
		"In un mondo meglio organizzato ci sarebbe un funzionario per queste cose, con sigillo e fila d'attesa. Quasi quasi meglio così.",
		"Niente funzionari, niente sigilli, niente file. L'eroismo, per fortuna, non ha ancora un regolamento.",
	},
	["quest_complete.w13.wit.042"] = {
		"L'aiuto di uno sconosciuto ha lo stile di uno sconosciuto: volenteroso, un po' perplesso, e portato a termine a modo suo.",
		"Non proprio come qualcuno se l'era immaginato, ma finito, ed è la parte che conta.",
	},
	["quest_complete.w13.wit.043"] = {
		"Per abitudine controllo lo zaino in cerca dell'incarico. Sparito. Ricontrollo, perché delle buone notizie non mi fido.",
		"Una parte di me crede ancora di avere un lavoro da portare. Sarà l'ultima a ricevere la notizia.",
	},
	["quest_complete.w13.wit.044"] = {
		"Nelle storie l'eroismo riempie un capitolo. Il mio è soprattutto borbottii e tentativi, con un finale in ordine.",
		"Un cantastorie taglierebbe quasi tutto quello che ho fatto davvero. I borbottii, per esempio. I borbottii erano fondamentali.",
	},
	["quest_complete.w13.wit.045"] = {
		"Avventura, la chiamano. Certi giorni è una faccenda di casa con delle pretese. Non dirò di che tipo era questa.",
		"Non tutte le avventure hanno draghi. Alcune sono commissioni con gli stivali buoni. Quale fosse questa, lo deciderà la storia.",
		"Avventura o faccenda? La differenza, sospetto, sta in chi la racconta dopo.",
	},
	["quest_complete.w13.wit.046"] = {
		"Terrei un diario di queste cose, ma ogni pagina direbbe solo 'fatto come richiesto', e non è una gran lettura.",
		"Dal diario: richiesta, partenza, lavoro, ritorno. Roba da togliere il sonno. I bardi ci aggiungeranno qualcosa.",
	},
	["quest_complete.w13.wit.047"] = {
		"È sorprendente cosa diventi un'emergenza nella vita degli altri. Lo è meno quanto sembri piccola qualunque grana, una volta sistemata.",
		"I guai sembrano enormi a chi li ha e modesti a chi li sistema. Hanno ragione tutti e due.",
	},
	["quest_complete.w13.wit.048"] = {
		"Se mi sdraio, qualcuno mi chiederà qualcosa. Se resto in piedi, pure. Mi appoggio, e spero che appoggiarsi non conti né per l'una né per l'altra.",
		"Esiste una postura che dice 'per favore, nient'altro'. Sto cercando di trovarla.",
	},
	["quest_complete.w13.wit.049"] = {
		"Io e l'incarico ci separiamo in buoni rapporti. Non mi mancherà, e lui non mi scriverà.",
		"Addio, incarico. Eri una seccatura, ma almeno per un po' eri la mia.",
		"Arrivederci, incarico. Direi che ti ricorderò con affetto, ma sull'affetto mentirei.",
	},
	["quest_complete.w13.wit.050"] = {
		"Qualcuno lo racconterà come 'e poi passò di lì qualcuno che sistemò tutto'. Quel qualcuno sono io. È una bella parte.",
		"Nel racconto di qualcuno sarò 'chi passava di lì'. Niente nome, una battuta. Accetto la parte.",
	},
	["quest_complete.w13.wit.051"] = {
		"Strano cosa la gente affida al primo che passa. Io esiterei a prestare il cucchiaio a uno sconosciuto.",
		"La gente consegna le sue preoccupazioni ai viandanti con una fiducia che io non darei nemmeno ai miei stivali.",
		"A quanto pare, presti un cruccio a uno sconosciuto e ti torna aggiustato. Ci sarebbe da sospettare, se lo sconosciuto non fossi io.",
	},
	["quest_complete.w13.wit.052"] = {
		"La parte migliore del finire è la faccia che posso fare dopo. Compiaciuta, ma in modo utile.",
		"Un momento di autocompiacimento per ogni incarico: è la regola. L'ho inventata adesso.",
	},
	["quest_complete.w13.wit.053"] = {
		"Gli sconosciuti chiedono, io rispondo. Un accordo semplice. Vorrei solo poter leggere prima le clausole in piccolo.",
		"Le richieste hanno le loro clausole nascoste, scritte in una lingua che si impara solo dopo.",
	},
	["quest_complete.w13.wit.054"] = {
		"Se avessi uno stemma, ci sarebbe una mano aperta e il motto 'e va bene, dai'.",
		"Il mio motto, se mai ne sceglierò uno: 'D'accordo. Ci vado io.'",
		"Inciso sopra la mia porta, se avessi una porta: 'Sì, ma solo per questa volta.'",
	},
	["quest_complete.w13.wit.055"] = {
		"Essere interpellati lusinga, in un modo strano. Ed essere lusingati così stanca, in un modo altrettanto strano.",
		"Godere di fiducia è bello. Godere di fiducia per le commissioni è bello in un modo che finisce con una lunga seduta.",
	},
	["quest_complete.w13.wit.056"] = {
		"Nelle storie gli eroi uccidono draghi. Io ho fatto quel che mi era stato chiesto. Ognuno ha i draghi della sua misura.",
		"Forse non era un drago. Ma nessuno ha mai stabilito da che misura un drago comincia a contare.",
	},
	["quest_complete.w13.wit.057"] = {
		"Tutto qui: una preoccupazione rimossa e smaltita con cura.",
		"Una preoccupazione tolta di mezzo e messa al sicuro. Cioè alle mie spalle.",
		"Tutto a posto. Il mondo può smettere di preoccuparsi almeno di questo.",
	},
	["quest_complete.w13.wit.058"] = {
		"Annotatelo: una persona di passaggio, ragionevolmente utile.",
		"Per la cronaca: utile, quasi puntuale, e con solo un po' di polvere addosso.",
	},
	["quest_complete.w13.wit.059"] = {
		"Niente applausi, per favore. E niente altri incarichi. Non in questo preciso momento.",
		"Tenetevi gli applausi. E tenetevi anche la prossima richiesta, se non vi dispiace.",
		"Per favore, risparmiate gli evviva. Orecchie e gambe sono fuori servizio.",
	},
	["quest_complete.w13.wit.060"] = {
		"Risolto. Per almeno un'ora, cercate di non avere più bisogno di me.",
		"Fatto e risolto. Lasciate passare un po' prima della prossima calamità, d'accordo?",
		"Sbrigato. Il prossimo disastro è pregato di attendere il suo turno.",
	},
	["quest_complete.w13.wit.061"] = {
		"Farei un inchino, ma temo che non riuscirei a rialzarmi.",
		"Ci starebbe un inchino. La schiena ha posto il veto.",
		"Perdonatemi se salto la riverenza. O l'inchino. Quello che stavo per fare.",
	},
	["quest_complete.w13.wit.062"] = {
		"Come da descrizione, o abbastanza simile che nessuno noterà la differenza.",
		"Tutto come richiesto, a parte un dettaglio che ho deciso di non menzionare.",
	},
	["quest_complete.w13.wit.063"] = {
		"Se qualcuno chiede chi è stato, descrivetemi {g:più alto|più alta}.",
		"Se qualcuno chiede, è stato fatto con grande dignità. Gli inciampi, tralasciateli.",
		"Quando lo racconteranno, vorrei che mi dessero un cappello migliore.",
	},
	["quest_complete.w13.wit.064"] = {
		"Una cosa storta in meno al mondo. Ne restano solo qualche milione.",
		"La lista dei guai del mondo si è accorciata di una riga. Direi di continuare così, ma a continuare sono io.",
		"Il mondo è un po' meno storto. Io ho raddrizzato un angolo; il resto tocca a qualcun altro.",
	},
	["quest_complete.w13.wit.065"] = {
		"Non c'è bisogno di parlarne. Davvero. Anzi, preferirei che per un po' nessuno me ne parlasse.",
		"Non serve ringraziare. Non serve nemmeno chiedermi altro. Idealmente, tutte e due le cose.",
	},
	["quest_complete.w13.wit.066"] = {
		"Non è più un problema di nessuno. È il posto che preferisco, per i problemi.",
		"E adesso non appartiene più a nessuno. È lì che dovrebbero stare i problemi.",
	},
	["quest_complete.w13.wit.067"] = {
		"Firmate qui, qui e qui. Scherzo. Più o meno.",
		"Mi serve per iscritto. No, non è vero. Però l'idea era bella.",
		"Devo siglare qualcosa? Mi è sempre piaciuta l'idea di siglare qualcosa.",
	},
	["quest_complete.w13.wit.068"] = {
		"Che gli araldi lo proclamino! O anche no. Lo proclamo da me, a bassa voce.",
		"Udite, udite: è fatta. Il proclama finisce qui.",
	},
	["quest_complete.w13.wit.069"] = {
		"Mi dicono che a questo punto dovrei dire qualcosa di saggio. Non mi viene niente. Un pasto, magari?",
		"Parole sagge per l'occasione: siediti finché puoi.",
	},
	["quest_complete.w13.wit.070"] = {
		"Farei un discorso, ma nessuno è preparato ai miei discorsi. Io meno di tutti.",
		"Un discorso? No. Dovreste restare lì mentre io ne cerco la fine.",
	},
	["quest_complete.w13.wit.071"] = {
		"Messa a posto. E ora, da che parte si va per un posto dove essere inutili in pace?",
		"La parte utile è finita. Indicatemi la parte inutile.",
	},
	["quest_complete.w13.wit.072"] = {
		"Meno male che è risolta. Non dite a nessuno come ho fatto.",
		"Ha funzionato. Non chiedetemi come, per favore: la risposta è lunga e un po' imbarazzante.",
		"Spiegherei il mio metodo, ma dubito di averne avuto uno.",
	},
	["quest_complete.w13.wit.073"] = {
		"Ammirate: una cosa finita. Più rara di quanto si creda.",
		"Guardate qua. Portato a termine. Qualcuno suoni una campana.",
		"Ed eccola qui: una cosa portata a termine, appena consumata ai bordi.",
	},
	["quest_complete.w13.wit.074"] = {
		"La gratitudine ha tante forme. La mia preferita è il silenzio e un'ora libera.",
		"Se proprio volete ringraziare, lasciatemi in pace per un po'.",
	},
	["quest_complete.w13.wit.075"] = {
		"È tutto? Vi prego, ditemi che è tutto.",
		"Era tutto, vero? Ditemi che era tutto.",
		"Dietro questa non se ne nasconde un'altra, spero?",
	},
	["quest_complete.w13.wit.076"] = {
		"Un lavoro pulito, a mio giudizio, che è quello di cui mi fido di più.",
		"Ottimo lavoro, da parte mia. Qualcuno doveva dirlo, e io ero a portata di mano.",
		"Mi farei i complimenti, ma poi mi monterei la testa.",
	},
	["quest_complete.w13.wit.077"] = {
		"Ricordatevi questa faccia. Più che altro per ritrovarla quando vi servirà un'anima ingenua.",
		"Una faccia da tenere a mente, se mai vi servisse un sì facile.",
	},
	["quest_complete.w13.wit.078"] = {
		"Un piacere, quasi tutto. Qualche parte non lo è stata affatto, ma il finale sì.",
		"È stato un piacere. In parte. Soprattutto la parte in cui finiva.",
	},
	["quest_complete.w13.wit.079"] = {
		"Dite al prossimo della fila che sono in pensione. Per un po'. Un pochino.",
		"Bottega chiusa. Riapro presto, probabilmente.",
	},
	["quest_complete.w13.wit.080"] = {
		"Il guaio se n'è andato. I miei stivali se lo ricorderanno per un po'.",
		"Sparita, tutta la seccatura. Solo i piedi mi serbano ancora rancore.",
		"La seccatura è passata. Le gambe hanno accettato di perdonarla, prima o poi.",
	},
	["quest_complete.w13.wit.081"] = {
		"Per la prossima commissione, avvisatemi con un giorno d'anticipo. Mi piace mettere il muso per tempo.",
		"La prossima volta, un po' di preavviso. Preferisco lamentarmi prima, non dopo.",
	},
	["quest_complete.w13.wit.082"] = {
		"fa un piccolo svolazzo esagerato con una mano, come se firmasse un documento invisibile.",
		"mima un timbro col pugno su qualcosa di invisibile, poi pare un po' {g:imbarazzato|imbarazzata} di averlo fatto.",
		"firma l'aria con uno svolazzo e sottolinea due volte.",
	},
	["quest_complete.w13.wit.083"] = {
		"guarda le mani vuote con un vago sospetto, come se potessero aver dimenticato qualcosa.",
		"si tasta le tasche una per una, non trova niente che appartenga ad altri, e sembra quasi {g:deluso|delusa}.",
		"rivolge in alto i palmi vuoti e li studia, come un giocoliere dopo che l'ultima palla è ricaduta.",
	},
	["quest_complete.w13.wit.084"] = {
		"prova a stringersi nelle spalle con modestia, esagera, e trasforma il gesto in uno stiramento della spalla.",
		"accenna un inchino, ci ripensa a metà, e ripiega su un cenno del capo con delle ambizioni.",
	},
	["quest_complete.w13.wit.085"] = {
		"mima un 'tadà' senza voce, mantenendo un'espressione perfettamente seria.",
		"solleva appena le mani, come un artista in attesa di applausi che forse non arriveranno, poi le riabbassa.",
	},
	["quest_complete.w13.wit.086"] = {
		"si guarda alle spalle, come se la prossima richiesta potesse già avvicinarsi di soppiatto.",
		"si sposta di un passo da chiunque abbia l'aria di avere in mente un altro favore.",
		"arretra di un passo con disinvoltura, fuori dalla portata di ulteriori richieste.",
	},
	["quest_complete.w13.wit.087"] = {
		"si spolvera l'equipaggiamento con gran cerimonia, come per un'investitura conferita da sé a sé.",
		"raddrizza una medaglia immaginaria sul petto e le dà una lucidatina.",
	},
	["quest_complete.w13.wit.088"] = {
		"traccia una linea invisibile nell'aria, cancellando una voce da una lista che solo {g:lui|lei} può vedere.",
		"disegna nell'aria una piccola spunta con un dito, poi una seconda, per sicurezza.",
	},
	["quest_complete.w13.wit.089"] = {
		"alza gli occhi al cielo per tutta la faccenda, poi sorride suo malgrado.",
		"scuote piano la testa davanti alla stranezza di tutto quanto, con un mezzo sorriso.",
		"si lascia scappare una breve risata per niente di preciso: la battuta, a quanto pare, è tutta la faccenda.",
	},
	["quest_complete.w13.wit.090"] = {
		"ripone una penna immaginaria: la pratica è chiusa.",
		"agita le dita come per asciugare l'inchiostro di una firma immaginaria.",
	},
	["quest_complete.w13.wit.091"] = {
		"rivolge all'aria vuota un saluto militare impeccabile, poi si guarda intorno per vedere se qualcuno se n'è accorto.",
		"accenna un saluto militare, un po' troppo impeccabile per essere del tutto serio.",
		"accosta due dita alla tempia, salutando l'incarico in persona mentre se ne va.",
	},
	["quest_complete.w13.wit.092"] = {
		"canticchia qualche nota di un motivo trionfale, stonando, e si ferma prima che peggiori.",
		"attacca una piccola melodia trionfale e la abbandona dopo tre note, che bastavano e avanzavano.",
	},
	["quest_complete.w13.wit.093"] = {
		"si raddrizza un poco, {g:l'eroe|l'eroina} in tutto e per tutto, per il tempo di uno sbattere di palpebre.",
		"assume una posa eroica, la tiene, e la lascia andare in silenzio visto che nessuno viene a dipingerla.",
	},
	["quest_complete.w13.wit.094"] = {
		"controlla il fondo dello zaino, caso mai un'altra commissione ci si fosse infilata di nascosto.",
		"sbircia con sospetto nello zaino, come se le commissioni ci si riproducessero dentro.",
		"capovolge lo zaino e lo scuote, per avere la certezza che non contenga niente di altri.",
	},
	["quest_complete.w13.wit.095"] = {
		"fa un cenno solenne alla faccenda ormai chiusa, come si saluta un conoscente che lascia una festa.",
		"saluta l'incarico concluso con un addio muto e un po' canzonatorio.",
	},
	["quest_complete.w13.wit.096"] = {
		"agita le dita in aria: una piccola festa privata a cui nessuno è invitato.",
		"accenna un passettino di danza trionfale, piccolo e contenuto, e smette subito.",
		"si concede un pugnetto stretto all'altezza del fianco: la festa più discreta che esista.",
	},
	["quest_complete.w13.wit.097"] = {
		"guarda lo spazio vuoto dove prima c'era l'incarico, come si guarda il buco lasciato da un dente.",
		"strizza gli occhi nel vuoto, come cercando di ricordare il motivo di tutto quel trambusto.",
	},
	["quest_complete.w13.wit.098"] = {
		"piega la testa da un lato, come chi valuta se un incarico concluso meriti una canzone o un pisolino, e il pisolino pare in vantaggio.",
		"per un attimo ha l'aria di chi compone una ballata sull'accaduto, poi lascia perdere a vista d'occhio.",
		"fissa un punto lontano come un poeta in cerca di una rima per 'incarico', e torna a mani vuote.",
	},
	["quest_complete.w13.wit.099"] = {
		"lucida una fibbia già pulitissima, tanto per tenere occupate le mani.",
		"armeggia con una cinghia che non ne aveva alcun bisogno, un po' {g:spaesato|spaesata} senza un compito.",
		"sistema tre volte la stessa cinghia, come se alle mani senza lavoro ne servisse uno inventato.",
	},
	["quest_complete.w13.wit.100"] = {
		"borbotta qualcosa su una lettera di protesta al prossimo che chiederà qualcosa, e chiaramente non lo pensa.",
		"brontola contro l'idea stessa di commissione, senza troppa convinzione.",
		"si lamenta con nessuno dello stato del mondo, poi sembra piuttosto {g:soddisfatto|soddisfatta} del suo minuscolo miglioramento.",
	},
	["quest_complete.w13.wit.101"] = {
		"si massaggia la nuca, con l'espressione di chi ha dato una mano e sospetta che diventerà un'abitudine.",
		"si dà una pacca di congratulazioni sulla spalla, visto che era a portata di mano.",
	},
	["quest_complete.w13.worth.001"] = {
		"Dare la parola costa poco, mantenerla costa caro. Questa è costata qualcosa, ed è mantenuta.",
		"Dire di sì ha richiesto un attimo. Quel sì comincia a valere qualcosa solo adesso, alla fine.",
		"Promettere era la metà facile. Mantenere era tutto il resto, e adesso sono mie tutte e due le metà.",
	},
	["quest_complete.w13.worth.002"] = {
		"Il carico di qualcuno è più leggero esattamente della parte che ho portato io. Mi piace questo conto.",
		"Qualunque guaio pesasse sulle spalle di qualcuno, un pezzo ha viaggiato sulle mie per un tratto, e quel pezzo non c'è più.",
		"Ciò che pesava a qualcuno pesa un po' meno, e la differenza l'ho portata io. Uno scambio giusto.",
	},
	["quest_complete.w13.worth.003"] = {
		"Una crepa riparata per tempo non diventa mai una spaccatura. È il lavoro piccolo, fatto al momento giusto, che tiene su le cose.",
		"Aggiusta la cosa piccola finché è piccola. È gran parte della saggezza, e l'ho appena messa in pratica.",
		"Le perdite diventano alluvioni quando nessuno se ne cura. Qualcuno se n'è curato. Mi fa piacere che sia toccato a me.",
	},
	["quest_complete.w13.worth.004"] = {
		"Non era un obbligo. È proprio questo che gli dà valore.",
		"Nessuno avrebbe potuto strapparmelo a forza. L'ho dato di mia volontà, e ciò che si dà spontaneamente pesa di più.",
		"Scelto liberamente, fatto per intero. È l'unico tipo di dovere di cui mi fido.",
	},
	["quest_complete.w13.worth.005"] = {
		"Che mi abbiano ringraziato o no, la cosa resta compiuta. Il lavoro non ha bisogno di applausi per essere vero.",
		"Grazie o non grazie, l'incarico è concluso allo stesso modo.",
		"La gratitudine fa piacere, ma non è il punto. La faccenda è chiusa, e questo resta vero con o senza.",
	},
	["quest_complete.w13.worth.006"] = {
		"Niente fili pendenti. Ho controllato due volte, e la seconda occhiata non ha trovato niente. Così dev'essere.",
		"Ogni bordo rimboccato, niente lasciato penzolare perché qualcun altro ci inciampi.",
		"Niente di annodato a metà, niente da sbrogliare per il prossimo malcapitato. Pulito.",
	},
	["quest_complete.w13.worth.007"] = {
		"Si è perso più per le piccole cose lasciate a metà che per mano di qualunque esercito. Questa piccola cosa, almeno, è fatta.",
		"Le grandi faccende poggiano sulle piccole, come un muro sul suo primo filare. Io ne ho posato un pezzo.",
	},
	["quest_complete.w13.worth.008"] = {
		"Qualcuno si è fidato di una faccia mai vista. Mi fa piacere che quella faccia se lo meritasse.",
		"La fiducia data a uno sconosciuto è una cosa fragile da trasportare. È tornata indietro senza una crepa.",
		"La fiducia di uno sconosciuto si presta sulla parola. La restituisco con gli interessi.",
	},
	["quest_complete.w13.worth.009"] = {
		"Il mondo non è più in ordine di prima, tranne un cassetto. Quel cassetto l'ho chiuso io.",
		"Un angolo delle cose rimesso al suo posto. Il resto aspetterà il suo turno.",
		"Nel gran disordine delle cose, uno scaffale adesso è dritto. Opera mia.",
	},
	["quest_complete.w13.worth.010"] = {
		"Avrei potuto farne metà e chiamarla intera. Nessuno se ne sarebbe accorto tranne me, ed è proprio questo il guaio.",
		"Esisteva una versione più pigra di questo lavoro. Poi avrei dovuto conviverci. Non l'ho scelta.",
		"Tagliare un angolo mi avrebbe fatto risparmiare un poco e costare di più. L'angolo l'ho lasciato dov'era.",
	},
	["quest_complete.w13.worth.011"] = {
		"Ciò che si fa quando nessuno controlla è la misura più vera che ci sia. Vorrei superarla più spesso che no.",
		"Nessuno mi sorvegliava, stavolta. Bene: il lavoro fatto senza testimoni mi dice di me più di qualunque lode.",
	},
	["quest_complete.w13.worth.012"] = {
		"Una promessa a uno sconosciuto lega quanto una fatta a un amico. Forse di più, perché nessuno mi biasimerebbe se la lasciassi cadere.",
		"Agli sconosciuti do la stessa parola che darei a chiunque. Altrimenti non è una parola, è solo un umore.",
		"Nessuno mi avrebbe chiesto conto. Me lo sono chiesto io, e da me è più difficile sgusciare via.",
	},
	["quest_complete.w13.worth.013"] = {
		"La mia parola era partita. Adesso è tornata a casa.",
		"La parola l'avevo data. Questo è il resto.",
		"Intero, come promesso.",
	},
	["quest_complete.w13.worth.014"] = {
		"All'inizio non era un mio problema. Adesso non è più di nessuno.",
		"Il guaio era di qualcun altro. L'ho preso in prestito il tempo che serviva per chiuderlo.",
		"Qualcuno ci era rimasto incastrato. Poi è toccato a me. Adesso a nessuno, ed è la versione migliore.",
	},
	["quest_complete.w13.worth.015"] = {
		"Non è proprio orgoglio. È qualcosa di più quieto: essere una persona su cui gli altri possono appoggiarsi.",
		"Non è orgoglio. È più come scoprire che un'asse del pavimento regge, e che l'asse sei tu.",
		"C'è una parola per questa sensazione, e non è gloria. Solidità, forse. Mi sento come una trave che regge.",
	},
	["quest_complete.w13.worth.016"] = {
		"Voglio essere una persona che porta a termine le cose. A ogni cosa conclusa mi ci avvicino un po'.",
		"Cominciare è di tutti. Finire è un'abitudine, e la sto costruendo, una faccenda chiusa dopo l'altra.",
		"Le cose lasciate a metà ti seguono ovunque. Questa non mi seguirà.",
	},
	["quest_complete.w13.worth.017"] = {
		"Se c'era un grazie, in tutto questo, lo tengo piegato in piccolo per una giornata che ne avrà bisogno.",
		"Il grazie non era lo scopo. Se ne è arrivato qualcuno, lo metto comunque da parte in un posto sicuro.",
		"Grazie o silenzio, mi vanno bene entrambi. Se c'era un po' di calore, quello lo tengo.",
	},
	["quest_complete.w13.worth.018"] = {
		"Il dovere non è una catena. È una forma che ho scelto di tenere, e l'ho tenuta.",
		"Si parla del dovere come di un peso. Per me è più una spina dorsale: mi regge in piedi.",
		"C'è chi lo chiama giogo. Io lo chiamo ciò che impedisce alle mie giornate di sfasciarsi.",
	},
	["quest_complete.w13.worth.019"] = {
		"Meglio una cosa modesta fatta bene che una grande fatta male. Mi tengo quella modesta.",
		"C'è una contentezza sottile nel portare a termine una cosa senza una sola scorciatoia.",
		"I grandi gesti si ammirano facilmente. Fare una cosa modesta esattamente come va fatta è più difficile, ed è quello che ho fatto.",
	},
	["quest_complete.w13.worth.020"] = {
		"Una giornata che per qualcuno sarebbe andata storta forse andrà un po' meglio. Non lo vedrò, e non mi serve vederlo.",
		"Io la differenza non la vedrò mai. Qualcun altro sì. È giusto che sia così.",
		"La parte buona succede dopo, quando non ci sono più a guardare. Mi sta bene perdermela.",
	},
	["quest_complete.w13.worth.021"] = {
		"Il mondo va avanti a spalle prestate. Per un po' le mie sono state in prestito, e non mi pesa averle date.",
		"Gli sconosciuti si portano i pesi a vicenda più spesso di quanto si ammetta. Questo è stato uno di quei tratti.",
		"Buona parte del peso del mondo passa dalla schiena di uno sconosciuto a quella di un altro. Stavolta il passaggio è toccato a me.",
	},
	["quest_complete.w13.worth.022"] = {
		"Fare quel che è stato chiesto, come è stato chiesto, senza farne una canzone. C'è una decenza antica, in questo.",
		"Niente ricami, niente scuse: la cosa richiesta, fatta come richiesto. Certe virtù sono molto semplici.",
		"Chiesto con semplicità, risposto con semplicità. È la cortesia più vecchia che ci sia, e resta la migliore.",
	},
	["quest_complete.w13.worth.023"] = {
		"Che qualcuno conti su di te pesa più di quanto pensassi. Ed è più bello. Tutte e due le cose insieme: a quanto pare funziona così.",
		"Viene fuori che essere una persona affidabile ha un peso. Un peso buono, come uno zaino pieno prima di un lungo cammino.",
		"Chi conta su di te ti toglie un po' di libertà e ti rende un po' più utile. Accetto lo scambio.",
	},
	["quest_complete.w13.worth.024"] = {
		"Il bene che ho fatto sta in una mano sola. Però è solido: ne sento il peso.",
		"A misurarlo, non è molto bene. Ma è di quello vero, non di quello di cui si parla soltanto.",
		"Nessuno la chiamerebbe una grande impresa. È una cosa vera, e il vero dura più del grande.",
	},
	["quest_complete.w13.worth.025"] = {
		"Non è un lavoro da eroi. È un lavoro da buon vicino. E il mondo, a dirla tutta, ha più bisogno di vicini che di eroi.",
		"Agli eroi le statue. Ai buoni vicini le cose fatte. Per ora faccio il vicino.",
		"Niente stendardi, niente parate. Solo qualcuno che ha detto di sì e lo pensava davvero.",
	},
	["quest_complete.w13.worth.026"] = {
		"Una promessa è una cima lanciata in avanti. Ho appena raggiunto l'altro capo e l'ho afferrato.",
		"Ogni promessa prende in prestito un pezzetto di futuro. Questo l'ho restituito intatto.",
		"Le promesse sono ponti costruiti prima che qualcuno ci cammini sopra. Questo ha retto la traversata.",
	},
	["quest_complete.w13.worth.027"] = {
		"Se ognuno sistemasse una cosa sola, quasi tutti i guai del mondo resterebbero senza spazio. Questa era la mia.",
		"Immagina che ognuno aggiusti per bene una cosa sola. Da qualcuno bisogna pur cominciare. Va bene: ho cominciato io.",
		"Ecco un guaio messo a riposo. Se l'abitudine si diffonde, il mondo sarà un posto più tranquillo.",
	},
	["quest_complete.w13.worth.028"] = {
		"L'ultimo punto di cucito ha un piacere che il primo non ha mai.",
		"Il primo passo di un lavoro è tutto nervi. L'ultimo è soddisfazione pura, e ci sto dentro adesso.",
		"Gli inizi si prendono tutta l'attenzione. Finali come questo sono il piacere più silenzioso.",
	},
	["quest_complete.w13.worth.029"] = {
		"Ogni parola mantenuta rende la prossima più facile da dare e più difficile da rompere. Una buona trappola.",
		"Mantenere le promesse è un muscolo. Questo si è fatto un po' più forte.",
		"Più parole mantengo, più la mia parola vale. È una dispensa che non fa che riempirsi.",
	},
	["quest_complete.w13.worth.030"] = {
		"Forse nessuno risalirà mai a me. Il bene lo fa lo stesso, anche senza il mio nome sopra.",
		"Il lavoro buono non ha bisogno di firma. Questo esce senza.",
		"Che il bene faccia il suo lavoro in incognito. Non gli serve il mio nome per funzionare.",
	},
	["quest_complete.w13.worth.031"] = {
		"Se un giorno toccherà a me chiedere, spero che qualcuno risponda come ho appena fatto io.",
		"Un giorno potrei essere io a chiedere. Mi piace pensare di aver fatto prima la mia parte di risposte.",
		"Prima o poi tutti hanno bisogno della mano di uno sconosciuto. Meglio averne prestate un po' prima di chiederne una.",
	},
	["quest_complete.w13.worth.032"] = {
		"Fra fatto e fatto bene c'erano pochi minuti in più. I minuti meglio spesi che ricordi.",
		"Un po' di cura in più alla fine. Di solito è solo questo che separa il lavoro buono da quell'altro.",
	},
	["quest_complete.w13.worth.033"] = {
		"Mi accorgo di non averlo fatto per sentirmi dire grazie. Accorgermene mi fa più piacere di qualunque grazie.",
		"Una piccola scoperta: l'avrei fatto anche se nessuno l'avesse mai saputo. È bello saperlo di sé.",
		"A quanto pare lo farei anche senza richiesta e senza un grazie. Scoprirlo mi solleva un po'.",
	},
	["quest_complete.w13.worth.034"] = {
		"Qualunque cosa abbia significato per gli altri, a me ha detto una cosa: su di me si può contare. Lo speravo.",
		"Mi chiedevo se fossi una persona affidabile. Una risposta modesta, ma quella giusta.",
		"Avevo detto che su di me si poteva contare. Adesso non è più una pretesa: è un fatto.",
	},
	["quest_complete.w13.worth.035"] = {
		"L'aiuto dato a qualcuno che forse non rivedrò mai non chiede niente in cambio. È il tipo più pulito.",
		"Nessun legame, nessun favore in sospeso, probabilmente nessun secondo incontro. Il bene fatto così viaggia leggero.",
		"La gentilezza verso chi è di passaggio non lascia fili in cui impigliarsi. Lavoro pulito, in ogni senso.",
	},
	["quest_complete.w13.worth.036"] = {
		"Chi ha chiesto ha dovuto mandar giù un po' d'orgoglio. Spero che la risposta ne sia valsa la pena.",
		"È difficile ammettere che una cosa non si può sbrigare da soli. Qualcuno l'ha ammesso, e lo rispetto più di quanto lasci vedere.",
		"Chiedere è costato qualcosa a qualcuno. Ho cercato di fare in modo che ne valesse la pena.",
	},
	["quest_complete.w13.worth.037"] = {
		"Un guaio diviso è un guaio dimezzato. Ho preso la mia metà, e l'ho portata fino in fondo.",
		"Qualcuno non ce la faceva a portare tutto. Ne ho preso un angolo. Anche gli angoli contano.",
		"Un peso diviso in due è tutta un'altra faccenda. Io ero il secondo paio di mani.",
	},
	["quest_complete.w13.worth.038"] = {
		"Nessuna cronaca lo riporterà. Lo riporta il mio conto personale, che è l'unico che leggo davvero.",
		"Non sarà scritto da nessuna parte che importi a qualcun altro. È scritto in me.",
		"La storia non se ne accorgerà. Io sì. Basta così.",
	},
	["quest_complete.w13.worth.039"] = {
		"Un incarico finito si posa nella mente come una pietra messa in bolla. Non traballa niente.",
		"Ora la cosa sta in squadra, tutti gli spigoli al loro posto. Posso smettere di ricontrollarla.",
	},
	["quest_complete.w13.worth.040"] = {
		"Il mio nome vale un po' di più di prima. Non suona più forte: è solo più affidabile.",
		"Un nome vale quel che si è fatto sotto di esso. Il mio vale una cosa in più.",
		"Adesso chi pronuncia il mio nome può intenderci qualcosa. Qualcosa di piccolo, ma di buono.",
	},
	["quest_complete.w13.worth.041"] = {
		"Se mai mi ricorderanno per qualcosa, che sia per aver risposto e per aver finito. È più di quanto possano vantare molti bei discorsi.",
		"Rispondere, arrivare in fondo. Se tutta la mia leggenda è questa, mi va bene.",
		"Che di me si dica soltanto: a una richiesta rispondeva, e restava fino alla fine. Non saprei immaginare frase migliore.",
	},
	["quest_complete.w13.worth.042"] = {
		"Il mondo sta in piedi meno grazie a mura ed eserciti che alle piccole promesse che la gente si mantiene.",
		"Sotto tutto il fragore dei grandi poteri, a reggere il pavimento sono le promesse mantenute della gente comune.",
	},
	["quest_complete.w13.worth.043"] = {
		"Le parole gentili non costano niente. Il tempo e la fatica sì. Ho speso questi ultimi, e il prezzo non mi pesa.",
		"È facile essere generosi a parole. Questa era generosità di gambe e di pazienza, che costano di più.",
		"I consigli sono gratis e valgono più o meno quanto costano. La fatica è cara, e l'ho data.",
	},
	["quest_complete.w13.worth.044"] = {
		"Non saprò mai come va a finire il resto. Il bene è stato lasciato andare, e troverà da sé la sua strada.",
		"Quel che succede dopo non tocca a me vederlo. La mia parte era mettere in moto il bene.",
		"Dove vada a finire, adesso, non lo decido io. È così che deve funzionare un dono.",
	},
	["quest_complete.w13.worth.045"] = {
		"Nessuno mi deve niente per questo. Non era un prestito, era un dono, e i doni non tengono i conti.",
		"Preferisco che sia una gentilezza piuttosto che un debito. Le gentilezze non vanno riscosse.",
		"Che sia una gentilezza, non un favore. I favori tornano indietro con il conto allegato.",
	},
	["quest_complete.w13.worth.046"] = {
		"Servire a qualcosa: ecco una cosa sottovalutata. Stavolta è toccato a me, e la cosa mi piace parecchio.",
		"Si può aspirare a cose più grandiose che rendersi utili. Poche danno questa sensazione di solidità.",
		"Un attrezzo che funziona quando serve. Non è la poesia che sceglierei, ma è una bella cosa da essere.",
	},
	["quest_complete.w13.worth.047"] = {
		"Non c'è gloria, e non si è mai trattato di gloria. La cosa andava fatta. Bastava questo come ragione.",
		"Certi lavori si fanno per farsi vedere. Questo l'ho fatto perché era giusto.",
		"Nessuno ha bisogno di saperlo. Andava fatto, è stato fatto, il resto è rumore.",
	},
	["quest_complete.w13.worth.048"] = {
		"L'ho fatto un po' volentieri e un po' controvoglia. La prossima volta vorrei che vincesse la parte volentieri.",
		"Il dovere fatto col muso conta lo stesso. Fatto con il sorriso conta uguale e costa meno. Ecco una cosa a cui puntare.",
	},
	["quest_complete.w13.worth.049"] = {
		"Le cose sono andate per il verso giusto, e il motivo non ha niente di magico: qualcuno ha chiesto, e qualcuno ha risposto.",
		"Nessuna profezia, nessun miracolo. Solo una richiesta e un sì, portati fino in fondo. Quasi tutto il bene succede così.",
	},
	["quest_complete.w13.worth.050"] = {
		"Non posso aggiustare il mondo. Questo sì. Nei giorni in cui il mondo sembra troppo grande, cercherò di ricordarmi la differenza.",
		"Quasi tutto ciò che non va nel mondo è oltre la mia portata. Questo no, e adesso è sistemato.",
		"I guai del mondo sono molti più di me. Eppure il conto è sceso di uno, e la sottrazione l'ho fatta io.",
	},
	["quest_complete.w13.worth.051"] = {
		"I nani hanno un detto, o così mi hanno raccontato: la promessa è un attrezzo, e gli attrezzi lasciati lì fanno la ruggine. Questa no.",
		"C'è un detto dei nani che ricordo a metà: la parola si forgia una volta sola e si tempra ogni giorno dopo. Questa l'ho temprata.",
	},
	["quest_complete.w13.worth.052"] = {
		"Dicono che per i tauren la gentilezza sia un seme di cui non si vede mai il germoglio. Mi sta bene: si semina e si tira dritto.",
		"Come pare dicano i tauren: semina la gentilezza e lascia il raccolto a chi viene dopo.",
	},
	["quest_complete.w13.worth.053"] = {
		"Qualcosa dentro di me sta più dritto ora che il lavoro è fatto bene, come un quadro che finalmente non pende più.",
		"La sensazione di disordine è sparita. Alla richiesta è stata data risposta, e i pensieri hanno un angolo in meno in cui impigliarsi.",
	},
	["quest_complete.w13.worth.054"] = {
		"Ci sono voluti più tentativi, e ho continuato perché avevo detto che l'avrei fatto. Tutto qui.",
		"Più tentativi. Ogni fallimento era l'occasione per mollare con una buona scusa. Non ne ho colta nessuna.",
	},
	["quest_complete.w13.worth.055"] = {
		"Il lavoro onesto ha una semplicità di cui mi fido più di qualunque bel discorso.",
		"Le belle parole promettono. Il lavoro semplice mantiene. Preferisco che mi si conosca per la seconda cosa.",
		"Le chiacchiere sono uno schizzo, il lavoro è l'edificio. Preferisco che mi si giudichi dall'edificio.",
	},
	["quest_complete.w13.worth.056"] = {
		"Andava fatto. Adesso è fatto come si deve, non soltanto fatto.",
		"Come si deve, badate. Non solo finito: finito bene.",
		"Giusto al primo colpo, e niente per cui tornare indietro.",
	},
	["quest_complete.w13.worth.057"] = {
		"Non serve ringraziare. Davvero. Valeva la pena farlo per sé.",
		"Tenetevi il grazie. Lo scopo era la cosa in sé.",
		"Non mi dovete nessun grazie. Era giusto farlo.",
	},
	["quest_complete.w13.worth.058"] = {
		"Grande o piccola, meritava di essere fatta bene. E così è stato.",
		"Comunque la si misuri, meritava attenzione. Ha avuto la mia.",
	},
	["quest_complete.w13.worth.059"] = {
		"Ecco fatto: un guaio in meno al mondo.",
		"Un guaio in meno a piede libero.",
		"Depennato dalla lista dei guai del mondo. E alla larga.",
	},
	["quest_complete.w13.worth.060"] = {
		"Contate su di me anche per la prossima.",
		"Se c'è altro da fare, ho le orecchie aperte.",
		"Se serve altro, chiedete pure a me.",
	},
	["quest_complete.w13.worth.061"] = {
		"Le promesse dovrebbero finire tutte così: mantenute.",
		"Una promessa, dall'inizio alla fine. Come dev'essere.",
		"Mantenuta. Una promessa non chiede altra cerimonia.",
	},
	["quest_complete.w13.worth.062"] = {
		"La mia parte è fatta. Spero che serva.",
		"Ho fatto la mia parte. Che serva a qualcosa di buono.",
		"Ho fatto quel che potevo. Che basti.",
	},
	["quest_complete.w13.worth.063"] = {
		"Meglio bene che in fretta. Sempre.",
		"Piano e bene batte presto e male. Non c'è gara.",
		"La fretta rovina il buon lavoro. Qui non ce n'è stata.",
	},
	["quest_complete.w13.worth.064"] = {
		"Per qualcuno contava. Mi basta e avanza.",
		"A qualcuno serviva. Per me è una ragione sufficiente.",
		"Qualcuno sta meglio di prima. A me basta.",
	},
	["quest_complete.w13.worth.065"] = {
		"Se servirà un'altra volta una mano, chiedete. Dico sul serio.",
		"La prossima volta che qualcosa non va, chiedete. Non aspettate.",
	},
	["quest_complete.w13.worth.066"] = {
		"Dovere è una parola semplice. Mi piacciono le parole semplici.",
		"Dovere. Non è una parola elegante, ma regge bene il peso.",
	},
	["quest_complete.w13.worth.067"] = {
		"Che renda le giornate più facili. Non volevo altro.",
		"Che alleggerisca un po' le cose. Basta questo.",
	},
	["quest_complete.w13.worth.068"] = {
		"Bene. Una cosa rimessa a posto, e ci resterà.",
		"Rimessa in sesto, e fatta per restarci.",
		"Riparato per durare. Non so farlo in un altro modo.",
	},
	["quest_complete.w13.worth.069"] = {
		"È stato un piacere, e non lo dico tanto per dire.",
		"Il piacere è mio. E lo intendo davvero, non per educazione.",
	},
	["quest_complete.w13.worth.070"] = {
		"Chiesto, risposto e chiuso. Come dovrebbe andare tra persone oneste.",
		"Una richiesta fatta in buona fede, soddisfatta in buona fede. Non c'è niente di meglio.",
	},
	["quest_complete.w13.worth.071"] = {
		"Qualunque cosa ne venga, è stato fatto bene. Che resti così.",
		"Che regga per tutto il tempo che serve.",
		"Fatto per sopportare un peso. Che il mondo ci si appoggi pure.",
	},
	["quest_complete.w13.worth.072"] = {
		"A posto, e a posto per davvero.",
		"In ordine. In ordine sul serio.",
	},
	["quest_complete.w13.worth.073"] = {
		"Chiunque sia nei guai merita una risposta. Questo guaio ha avuto la mia.",
		"Un guaio merita una risposta. Questo l'ha avuta.",
	},
	["quest_complete.w13.worth.074"] = {
		"Senza discorsi: andava fatto, e l'ho fatto.",
		"Non facciamone un caso. Era la cosa giusta, tutto qui.",
		"Non c'è niente da festeggiare. Una cosa era dovuta, e ci si è pensato.",
	},
	["quest_complete.w13.worth.075"] = {
		"Quel che avevo detto di fare è fatto. Parola e azione combaciano.",
		"Parola e fatto, fianco a fianco. Non li voglio in nessun altro modo.",
	},
	["quest_complete.w13.worth.076"] = {
		"Qualunque fosse il suo valore per gli altri, per me ne valeva la pena.",
		"Ne valeva la pena. Non chiedetemi perché: lo so e basta.",
	},
	["quest_complete.w13.worth.077"] = {
		"L'abbiamo fatto come si deve, tutti quanti. Grazie.",
		"Bel lavoro, tutti. Così si fa, quando si fa bene.",
		"Che bella compagnia. Ognuno ha fatto la sua parte fino in fondo.",
	},
	["quest_complete.w13.worth.078"] = {
		"Ci metterei la firma, e volentieri.",
		"Un lavoro di cui rispondo, dal primo all'ultimo pezzo.",
	},
	["quest_complete.w13.worth.079"] = {
		"L'ho fatto volentieri. Davvero volentieri.",
		"Felice di aver dato una mano. Sul serio.",
	},
	["quest_complete.w13.worth.080"] = {
		"Fare del bene è più facile in compagnia. Sono riconoscente per le mani accanto alle mie.",
		"Da soli sarebbe toccato a me portarlo. In compagnia era di tutti, ed è fatto.",
	},
	["quest_complete.w13.worth.081"] = {
		"si ferma un attimo dopo la consegna, con l'aria di chi ha visto tornare intatta la propria parola.",
		"lascia trasparire una soddisfazione quieta, quella che viene da una promessa portata fino in fondo.",
	},
	["quest_complete.w13.worth.082"] = {
		"fa scorrere il pollice lungo la cinghia dello zaino, come un muratore che dà una pacca a un muro venuto dritto.",
		"ripassa a mente la faccenda conclusa, non ci trova difetti, e la lascia andare.",
	},
	["quest_complete.w13.worth.083"] = {
		"sistema una cinghia che non aveva bisogno di essere sistemata, con la stessa cura che ha portato a termine l'incarico.",
		"si toglie un granello dalla manica, con cura fino all'ultimo, come se il lavoro meritasse un finale in ordine.",
	},
	["quest_complete.w13.worth.084"] = {
		"china appena il capo, tra sé e sé, come si usa con un dovere portato fino in fondo.",
		"si raddrizza appena, come si fa quando un dovere è stato onorato alla lettera.",
	},
	["quest_complete.w13.worth.085"] = {
		"resta ancora un momento, come per accertarsi che la cosa tenga anche senza di {g:lui|lei}.",
		"aspetta un istante prima di andare, come un costruttore che guarda una trave prendere il carico.",
	},
	["quest_complete.w13.worth.086"] = {
		"si guarda le mani con una certa quieta approvazione, come se anche loro avessero mantenuto una promessa.",
		"gira una mano col palmo in su e la osserva, come per soppesare a cosa è servita.",
	},
	["quest_complete.w13.worth.087"] = {
		"raddrizza le spalle, come sta chi ha tenuto fede alla parola data.",
		"assume il portamento semplice di chi ha fatto ciò che aveva detto.",
	},
	["quest_complete.w13.worth.088"] = {
		"si gira a metà per andarsene, poi si ferma, nel caso servisse ancora una mano.",
		"resta a portata ancora un momento, nel caso l'aiuto avesse bisogno di una seconda parte.",
	},
	["quest_complete.w13.worth.089"] = {
		"archivia la faccenda con cura, come una voce di registro scritta in bella grafia.",
		"ripone in memoria l'incarico concluso, con ordine, come si rimette sullo scaffale un libro che valeva la pena leggere.",
	},
	["quest_complete.w13.worth.090"] = {
		"sorride fra sé, immaginando un guaio che domani non ci sarà più.",
		"ha per un momento il viso disteso di chi ha reso un buon servizio a uno sconosciuto.",
	},
	["quest_complete.w13.worth.091"] = {
		"lascia che il momento si posi, senza fretta, come se una cosa buona meritasse qualche secondo di quiete.",
		"si prende un momento solo per stare dentro la cosa: chiesta, risolta, conclusa.",
	},
	["quest_complete.w13.worth.092"] = {
		"posa un momento la mano aperta sul petto, il gesto antico di un impegno mantenuto.",
		"si porta piano il pugno al petto, il segno di un giuramento onorato, e lo lascia ricadere.",
	},
	["quest_complete.w13.worth.093"] = {
		"lancia un'occhiata rapida alle spalle, forse per controllare che ciò che è stato riparato resti riparato.",
		"guarda per un attimo il punto in cui la faccenda si è chiusa, poi distoglie lo sguardo, in pace.",
	},
	["quest_complete.w13.worth.094"] = {
		"si muove in modo un po' diverso adesso, come chi ha ricevuto fiducia e se l'è meritata.",
		"si allontana senza fretta, con il passo di chi non ha niente sulla coscienza.",
	},
	["quest_complete.w13.worth.095"] = {
		"canticchia qualche nota a mezza voce, senza melodia, come si fa quando una cosa è andata per il verso giusto.",
		"fischietta due note piano, poi smette, come se anche quello fosse troppo chiasso per un dovere compiuto.",
	},
	["quest_complete.w13.worth.096"] = {
		"si ferma come in ascolto di un grazie, poi pare che {g:gli|le} vada bene comunque.",
		"non aspetta ringraziamenti, e non sembra sentirne la mancanza.",
	},
	["quest_complete.w13.worth.097"] = {
		"ricontrolla l'equipaggiamento con rinnovata cura, per essere d'aiuto a chi chiederà dopo.",
		"stringe una fibbia e sistema l'equipaggiamento, con la prontezza silenziosa di una persona su cui si può contare.",
	},
	["quest_complete.w13.worth.098"] = {
		"si sfrega le mani una volta, con energia, il gesto di chi ha appena chiuso un lavoro onesto.",
		"batte piano le mani, una volta sola, come a dire che la cosa è solida.",
	},
	["quest_complete.w13.worth.099"] = {
		"ripete a mezza voce le parole della promessa fatta, come per segnarla mantenuta.",
		"mormora in silenzio un grazie, e non è chiaro a chi.",
	},
	["quest_complete.w13.worth.100"] = {
		"fa ruotare il collo e sorride appena, come se la rigidità fosse un prezzo onesto per quel che ha comprato.",
		"muove le dita stanche, e la stanchezza sembra pesare poco, come succede quando è servita a qualcosa di buono.",
	},
	["subzone_enter.w13.cross.001"] = {
		"C'è una cucitura tra un posto e l'altro, e la passo sempre senza accorgermene. Poi me lo dice il nome.",
		"Non colgo mai l'istante in cui un posto diventa il successivo. Il nome arriva sempre prima di me.",
		"Il posto di prima mi ha {g:lasciato|lasciata} andare qualche passo fa. Quale passo, non saprei dirlo.",
	},
	["subzone_enter.w13.cross.002"] = {
		"si guarda alle spalle, come se da questa parte il confine si potesse vedere.",
		"si volta una volta sola, di sfuggita, cercando il punto in cui finiva il posto di prima. Niente lo tradisce.",
		"dopo qualche passo si volta a metà, come se il confine potesse aver lasciato un segno. Non ne ha lasciati.",
	},
	["subzone_enter.w13.cross.004"] = {
		"Un nome nuovo, e con lui la piccola speranza che qui ci sia qualcosa di buono.",
		"Ogni nome in cui entro porta con sé un filo di speranza. Anche questo.",
		"Passando il confine mi concedo un po' di speranza. Non costa niente e pesa poco.",
	},
	["subzone_enter.w13.cross.005"] = {
		"batte una volta il piede per terra quando il nome diventa {subzone}: un piccolo rito d'arrivo, tutto suo.",
		"segna il passaggio con un colpetto del tallone, come certi bussano prima di entrare. Comincia {subzone}.",
	},
	["subzone_enter.w13.cross.006"] = {
		"Niente, per terra, dice dove finisce il posto di prima. Qualcuno ha deciso così, e tutti si sono adeguati.",
		"Nessuna linea, nessun cippo, nessun segnale. Un nome finisce e ne comincia un altro perché qualcuno l'ha detto.",
		"Dove un nome si ferma non cambia niente, tranne il nome. Basta comunque a farmi alzare lo sguardo.",
	},
	["subzone_enter.w13.cross.007"] = {
		"Qualunque cosa sia {subzone}, salve.",
		"Piacere, {subzone}. Il resto lo scoprirò cammin facendo.",
	},
	["subzone_enter.w13.cross.008"] = {
		"L'aria non cambia a un confine. Qualcosa in me sì, ogni volta che cambia il nome.",
		"Stessa aria da una parte e dall'altra. Si sposta solo la mia attenzione, come se il nome mi avesse dato una gomitata.",
		"Buffo. Un passo, e il posto sembra appartenere a un'altra storia, anche se non saprei indicare niente di cambiato.",
	},
	["subzone_enter.w13.cross.009"] = {
		"rallenta al passaggio, la curiosità ben visibile in faccia: adesso il nome è {subzone}.",
		"alza appena il mento quando comincia {subzone}, con l'aria di chi vuole sapere cosa contiene.",
	},
	["subzone_enter.w13.cross.010"] = {
		"Sono {g:arrivato|arrivata}. Dove, di preciso, è una domanda per dopo.",
		"Arrivo riuscito. Per capire dove, forse ci vorrà un po' di più.",
		"Qui, dovunque sia qui. Un ottimo posto in cui essere {g:arrivato|arrivata}.",
	},
	["subzone_enter.w13.cross.011"] = {
		"Entro, {subzone}, e non ho cattive intenzioni.",
		"Arrivo in buona fede, {subzone}. Prendimi come mi trovi.",
	},
	["subzone_enter.w13.cross.012"] = {
		"È la parte del vagabondare che preferisco: il bordo di un nome, e non sapere cosa c'è dopo.",
		"Vagabondare è soprattutto questo. Comincia un nome, e io entro per scoprire cosa vuol dire.",
		"Non sapere cosa c'è oltre un nome è quasi tutto il piacere del vagabondare. Il resto sono i pasti.",
	},
	["subzone_enter.w13.cross.013"] = {
		"sposta il peso dello zaino mentre il nome diventa {subzone}, come chi si sistema per un capitolo nuovo.",
		"aggiusta una cinghia senza guardarla, mentre attorno il nome è già {subzone}.",
	},
	["subzone_enter.w13.cross.014"] = {
		"Ogni volta che passo un confine mi aspetto, un po', che qualcuno mi chieda il lasciapassare. Non succede mai.",
		"Passare da un nome all'altro non costa niente. Niente pedaggio, niente carte. Il miglior affare che conosca.",
		"Se i confini facessero pagare il pedaggio, sarei in rovina. Per mia fortuna sono gratis.",
	},
	["subzone_enter.w13.cross.015"] = {
		"Sentiamo che cos'ha da dire per sé, {subzone}.",
		"Che cos'è {subzone}, allora? C'è un solo modo per scoprirlo.",
	},
	["subzone_enter.w13.cross.016"] = {
		"Ogni confine l'ha tracciato qualcuno che non c'è più. Lo attraverso da ospite di quel vecchio accordo.",
		"Qualcuno, tanto tempo fa, ha stabilito che qui finisce una cosa e ne comincia un'altra. Lo rispetto accorgendomene.",
		"Qualcuno un tempo si è accordato su questa linea, e l'accordo è sopravvissuto a chi l'ha fatto. La passo con cura.",
	},
	["subzone_enter.w13.cross.017"] = {
		"passa il confine senza rompere il passo, come se i confini fossero roba d'altri. Il posto, ora, è {subzone}.",
		"prosegue con lo stesso passo regolare: il nome diventa {subzone}, e al cambio basta un cenno del capo.",
	},
	["subzone_enter.w13.cross.018"] = {
		"Mi piacciono i primi passi dentro un nome. Per un po', qui, tutto potrebbe essere vero.",
		"Per qualche passo dopo ogni confine, tutto è ancora possibile. Cerco di non bruciarli.",
		"Appena oltre un confine, il posto non mi ha ancora {g:deluso|delusa}. Me lo godo finché dura.",
	},
	["subzone_enter.w13.cross.020"] = {
		"Di nome in nome, è così che viaggio. Il terreno in mezzo non ha niente da obiettare.",
		"Passo da un nome all'altro. Al terreno sotto i piedi non sembra importare quale sia quale.",
	},
	["subzone_enter.w13.cross.021"] = {
		"si porta due dita alla fronte quando il nome diventa {subzone}: un piccolo saluto al posto.",
		"fa un breve inchino, tutto formale, verso il posto che chiamano {subzone}, poi tira dritto come se niente fosse.",
		"alza una mano in segno di saluto, a niente in particolare, quando comincia {subzone}.",
	},
	["subzone_enter.w13.cross.022"] = {
		"Tengo un conto silenzioso dei confini che passo. Nessuno me l'ha chiesto; mi aiuta e basta.",
		"Un passaggio in più nel mio conto privato. Non so a cosa serva, ma lo tengo.",
	},
	["subzone_enter.w13.cross.023"] = {
		"{subzone}, adesso. Nessuno mi dice mai niente finché non ci sono già dentro.",
		"Ah. E così sono qui, {subzone}, senza che nessuno mi abbia {g:invitato|invitata}.",
	},
	["subzone_enter.w13.cross.024"] = {
		"Strano come un nome cambi l'umore di un posto prima ancora che io ne abbia visto qualcosa.",
		"Non mi sono ancora {g:guardato|guardata} attorno, e il nome ha già deciso l'atmosfera.",
		"Non so ancora niente del posto, ma il nome, {subzone}, ha già dato il tono. Vedrò se ha ragione.",
	},
	["subzone_enter.w13.cross.025"] = {
		"strizza gli occhi verso il margine, come se sperasse di cogliere il punto esatto in cui comincia {subzone}.",
		"si ferma, abbassa lo sguardo e cerca per un attimo, per terra, la linea dove inizia {subzone}. Non c'è.",
	},
	["subzone_enter.w13.cross.026"] = {
		"Chi ha tracciato i confini qui non mi ha {g:consultato|consultata}. Li passo lo stesso.",
		"I confini erano decisi molto prima che avessi un'opinione. Probabilmente è meglio così.",
		"I confini: la decisione di qualcun altro, e i passi miei. Una divisione equa.",
	},
	["subzone_enter.w13.cross.027"] = {
		"Qui potrebbe esserci qualcosa di buono. Per ora niente dice il contrario.",
		"Finora il posto non ha promesso niente, ma neanche rifiutato niente. Lo considero aperto.",
	},
	["subzone_enter.w13.cross.028"] = {
		"Sotto i piedi c'è un nome diverso. Andiamo a vedere cosa vuol dire.",
		"Il nome è cambiato. Scopriamo cosa si è portato dietro.",
		"Sotto di me è appena cominciato un nome. È ora di vedere com'è.",
	},
	["subzone_enter.w13.cross.029"] = {
		"I luoghi si passano il viandante l'uno con l'altro, di nome in nome, come una coppa che fa il giro attorno al fuoco.",
		"Il mondo mi passa di nome in nome, come un messaggio che va di mano in mano.",
		"Un nome mi consegna al successivo senza una parola, come viandanti che si passano una lanterna lungo la fila.",
	},
	["subzone_enter.w13.cross.030"] = {
		"non dice niente quando comincia {subzone}, ma le spalle si sciolgono un poco, come a una pagina voltata.",
		"lascia passare il cambio di nome in silenzio, e lo sguardo percorre {subzone} con un interesse tranquillo.",
	},
	["subzone_enter.w13.cross.031"] = {
		"È già {subzone}, questo? I posti non si annunciano mai come si deve.",
		"Qualcuno poteva avvisarmi che {subzone} cominciava qui. Un cippo, una bandiera, qualsiasi cosa.",
	},
	["subzone_enter.w13.cross.033"] = {
		"Ogni passaggio è un piccolo ricominciare. Non me ne serve uno grande; basta questo.",
		"Un confine è un nuovo inizio a buon mercato. Lo prendo ogni volta che me lo offrono.",
		"Passi una linea e ricominci, appena un po'. Potrei farci l'abitudine.",
	},
	["subzone_enter.w13.cross.034"] = {
		"mette piede nel posto che chiamano {subzone} con l'aria vagamente soddisfatta di chi arriva senza sapere dove.",
		"arriva, e il posto si chiama {subzone}: in faccia, l'espressione allegra di chi viaggia senza alcun piano.",
	},
	["subzone_enter.w13.cross.035"] = {
		"Un passo prima ero altrove. Quello dopo, {subzone}. Vorrei sapere quale passo ha fatto la differenza.",
		"Quale passo mi ha fatto passare il confine, stavolta? Adesso è {subzone}, e non me ne sono {g:accorto|accorta}.",
	},
	["subzone_enter.w13.cross.036"] = {
		"Spero che tu abbia qualcosa che valga il cammino, {subzone}.",
		"Fammi vedere qualcosa per cui valga la pena fermarsi, {subzone}.",
		"Su, {subzone}. Dammi un motivo per restare un po'.",
	},
	["subzone_enter.w13.cross.037"] = {
		"Il mondo non si prende la briga di recintare i suoi nomi. Si fida che me ne accorga da {g:solo|sola}. Generoso.",
		"I nomi non hanno cancelli. Il mondo lascia a me il compito di accorgermene, e la cosa un po' mi lusinga.",
	},
	["subzone_enter.w13.cross.038"] = {
		"esita per mezzo passo dove comincia {subzone}, poi va avanti con decisione.",
		"chiude un posto e apre {subzone} con un'unica falcata, senza fretta.",
	},
	["subzone_enter.w13.cross.039"] = {
		"Non appartengo a nessuno dei nomi che attraverso. Li prendo in prestito per un po'.",
		"Questi nomi non sono miei. Ognuno lo prendo in prestito finché ci sto dentro.",
		"Attraverso i nomi come un ospite le stanze, con garbo e curiosità, senza mai stabilirmi davvero.",
	},
	["subzone_enter.w13.cross.040"] = {
		"Non ho bussato. Spero che {subzone} non se la prenda.",
		"Sono {g:entrato|entrata} senza chiedere permesso. {subzone} dovrà perdonarmi.",
		"Avrei dovuto pulirmi i piedi. Ormai è tardi, {subzone}.",
	},
	["subzone_enter.w13.cross.041"] = {
		"Ogni nome ha il suo carattere. Entro piano, finché non imparo quello di questo.",
		"Un posto ha un carattere come chiunque. Meglio entrare in punta di piedi e scoprire qual è.",
	},
	["subzone_enter.w13.cross.042"] = {
		"traccia nell'aria una linea lenta con un dito, dove forse comincia {subzone}, poi ride piano di sé.",
		"indica vagamente davanti, poi di lato, cercando di stabilire dove cominci di preciso {subzone}, e rinuncia con un'alzata di spalle.",
	},
	["subzone_enter.w13.cross.043"] = {
		"Passare un confine mi rende sempre un po' più {g:silenzioso|silenziosa} dentro, come se un nome nuovo meritasse tutta la mia attenzione.",
		"Qualcosa in me si zittisce ogni volta che cambia il nome. Rispetto, forse, o semplice ascolto.",
	},
	["subzone_enter.w13.cross.044"] = {
		"Che {subzone} mi sorprenda pure: sono qui apposta.",
		"Qualunque cosa sia {subzone}, avanti. Di curiosità ne ho per tutto.",
		"Sorprendimi, {subzone}. Sono {g:pronto|pronta} a farmi impressionare.",
	},
	["subzone_enter.w13.cross.045"] = {
		"Dopo un confine conto sempre tre passi prima di decidere qualsiasi cosa. Uno, due, tre.",
		"Tre passi dentro prima di giudicare un posto. È la mia regola, e la rispetto.",
		"Uno, due, tre passi oltre il nome prima di concedermi un'opinione. Un'abitudine da tenere.",
	},
	["subzone_enter.w13.cross.046"] = {
		"si guarda attorno, nel posto che chiamano {subzone}, con l'aria schietta di chi non sa bene come sia successo, poi alza le spalle e prosegue.",
		"arriva, ed è {subzone}: ha l'aria vagamente sorpresa di trovarsi in un posto qualsiasi, e prosegue di buon umore.",
	},
	["subzone_enter.w13.cross.047"] = {
		"Entro sperando che {subzone} abbia almeno una cosa da ricordare. Una sola basta.",
		"Una cosa buona. È tutto quello che chiedo, {subzone}: una cosa che valga la pena portarsi via.",
	},
	["subzone_enter.w13.cross.048"] = {
		"Oltre il confine, allora. Si prosegue.",
		"Un nome alle spalle e uno sotto i piedi. Va bene così.",
		"Linea passata. Piedi, continuate.",
	},
	["subzone_enter.w13.cross.050"] = {
		"si posa per un attimo una mano sul petto passando il confine: una cortesia per nessuno in particolare, e il posto è {subzone}.",
		"china il capo verso il posto che chiamano {subzone}, come si saluta una famiglia entrando in casa sua.",
	},
	["subzone_enter.w13.cross.051"] = {
		"Passare da un nome all'altro dà la punteggiatura a un lungo cammino. Qui una virgola, là un punto.",
		"I confini sono le virgole di un lungo cammino. Ci faccio una pausa senza fermarmi.",
	},
	["subzone_enter.w13.cross.052"] = {
		"Nessuno mi ha {g:chiamato|chiamata}, {subzone}. Sono qui lo stesso. Prego.",
		"Senza invito e senza preavviso, {subzone}. È il modo migliore di arrivare.",
	},
	["subzone_enter.w13.cross.053"] = {
		"Ogni nome che attraverso lascia quello di prima un po' più piccolo alle mie spalle.",
		"Il nome che ho appena lasciato si sta già rimpicciolendo. Succede sempre, appena passo il confine.",
	},
	["subzone_enter.w13.cross.054"] = {
		"si sfrega le mani passando il confine, con l'aria di chi non vede l'ora di scoprire cos'è {subzone}.",
		"allunga appena il passo quando comincia {subzone}, come chi apre una lettera.",
		"cammina con passo più leggero, ora che è {subzone}, come se passare un confine {g:gli|le} facesse bene.",
	},
	["subzone_enter.w13.cross.055"] = {
		"Il nome non è scritto né pronunciato in nessun punto che io veda, eppure, una volta saputo, il posto mi sembra diverso.",
		"Basta conoscere il nome perché un posto mi si disponga intorno in un altro modo. Strano, il potere di una parola.",
	},
	["subzone_enter.w13.cross.056"] = {
		"Oh. {subzone}. Questa non me l'aspettavo.",
		"Ah, adesso è {subzone}? Guarda un po'.",
	},
	["subzone_enter.w13.cross.057"] = {
		"Ogni confine porta con sé una piccola scommessa: che davanti ci sia di meglio che dietro. Io la accetto sempre.",
		"Passo ogni linea con la stessa piccola puntata: meglio davanti che dietro. Di solito le probabilità mi stanno bene.",
	},
	["subzone_enter.w13.cross.058"] = {
		"spalanca gli occhi per un istante appena comincia {subzone}, per prendere quanto più possibile tutto insieme.",
		"si guarda attorno con curiosità aperta e senza fretta, come un ospite fatto accomodare in casa d'altri. È {subzone}.",
	},
	["subzone_enter.w13.cross.059"] = {
		"Avrei giurato di essere {g:diretto|diretta} da un'altra parte. A quanto pare ero {g:diretto|diretta} qui.",
		"Non era proprio il piano. D'altra parte, non so nemmeno se un piano ci fosse.",
		"Ero {g:partito|partita} con una meta in testa. A quanto sembra, la meta è questa.",
	},
	["subzone_enter.w13.cross.060"] = {
		"{g:Un|Una} viandante varca il confine: {subzone}. Se ne prenda nota.",
		"Sia messo agli atti: {g:un|una} viandante arriva, il posto è {subzone}, e nessuna storia.",
	},
	["subzone_enter.w13.cross.061"] = {
		"Passo il confine con una domanda che già prende forma, anche se ancora non saprei dire quale.",
		"C'è una domanda in me ogni volta che entro in un nome nuovo. A volte il posto risponde.",
	},
	["subzone_enter.w13.cross.062"] = {
		"borbotta qualcosa che potrebbe essere un saluto, rivolto al posto che chiamano {subzone}, e continua a camminare.",
		"saluta {subzone} con un verso breve, a metà tra un colpo di tosse e un ciao.",
		"fa un cenno secco col capo verso il posto che chiamano {subzone}, come si fa con chi potrebbe tornare utile.",
	},
	["subzone_enter.w13.cross.063"] = {
		"Entro in ogni posto senza niente contro di lui. È il minimo che un viandante debba.",
		"Nessun rancore oltre il confine. Qualunque cosa sia {subzone}, parte da zero.",
	},
	["subzone_enter.w13.cross.064"] = {
		"E questo cosa sarebbe?",
		"Mh. E questo, cos'è?",
		"Qualcuno mi dica cos'è {subzone}. Chiunque.",
	},
	["subzone_enter.w13.cross.065"] = {
		"Nome dopo nome. A volte penso di abitare negli spazi tra l'uno e l'altro.",
		"Passo più vita a varcare confini che a fermarmi dentro un nome qualsiasi.",
		"Confine dopo confine. Se c'è una vita lì in mezzo, la sto vivendo.",
	},
	["subzone_enter.w13.cross.066"] = {
		"si ferma sulla soglia il tempo giusto perché l'arrivo conti, poi prosegue: {subzone}.",
		"si concede un istante solo, dove il nome diventa {subzone}, come se ogni arrivo meritasse un momento tutto suo.",
	},
	["subzone_enter.w13.cross.067"] = {
		"Strane cose, i confini. Continuo a passarli e non ne ho mai visto uno.",
		"Un confine, di persona, non l'ho ancora mai incontrato. Se ne va sempre un attimo prima che arrivi.",
	},
	["subzone_enter.w13.cross.068"] = {
		"Speriamo bene, {subzone}.",
		"Dita incrociate, per questo posto.",
		"Sii gentile, {subzone}. Solo questo.",
	},
	["subzone_enter.w13.cross.069"] = {
		"Ancora non so se {subzone} è un posto in cui fermarsi o da attraversare. Il non saperlo è piacevole.",
		"Fermarsi o tirare dritto? {subzone} non me l'ha ancora detto. E non ho fretta di sentirlo.",
	},
	["subzone_enter.w13.cross.070"] = {
		"accoglie {subzone} con un guizzo degli occhi, e niente di più.",
		"saluta il passaggio con un sopracciglio alzato, nient'altro, mentre attorno comincia {subzone}.",
	},
	["subzone_enter.w13.cross.071"] = {
		"A ogni confine faccio ruotare le spalle. Fuori il posto di prima, dentro questo.",
		"Un'alzata di spalle a ogni passaggio, per scrollarmi di dosso il nome precedente. Un'abitudine, e buona.",
		"A ogni passaggio sgranchisco le dita, come per scrollarmi di dosso il posto di prima. Funziona, più o meno.",
	},
	["subzone_enter.w13.cross.073"] = {
		"I vecchi viandanti dicono che a ogni confine bisognerebbe arrivare un po' più leggeri. Ci provo.",
		"Tra viandanti si dice: a ogni confine lascia qualcosa di pesante. Non so bene cosa, ma ci provo.",
	},
	["subzone_enter.w13.cross.074"] = {
		"osserva {subzone} con interesse educato, come a una festa sbagliata da cui la cortesia impedisce di andarsene.",
		"guarda {subzone} con l'aria cortese e smarrita di chi non ha afferrato il nome del padrone di casa.",
	},
	["subzone_enter.w13.cross.075"] = {
		"Qualunque cosa mi portassi dietro dal posto di prima, un po' posso posarla qui. A questo servono i confini.",
		"Passare un nome mi permette di lasciarmi alle spalle un po' dell'umore di prima. Non tutto. Abbastanza.",
	},
	["subzone_enter.w13.cross.076"] = {
		"Sono {g:arrivato|arrivata}! Bisognerebbe avvisare qualcuno.",
		"Arrivo compiuto. Qualcuno dovrebbe suonare una campana, o roba simile.",
	},
	["subzone_enter.w13.cross.077"] = {
		"I piedi sono arrivati prima dei pensieri. Di solito succede così.",
		"Il corpo passa per primo; la mente lo raggiunge qualche passo dopo e legge il nome.",
		"I pensieri sono ancora qualche passo indietro, nel posto di prima. Mi raggiungeranno.",
	},
	["subzone_enter.w13.cross.078"] = {
		"guarda avanti, dove comincia {subzone}, poi indietro, da dove è {g:venuto|venuta}, e soppesa i due nomi per un attimo.",
		"resta per un attimo con un piede per nome, quasi senza voler scegliere; poi è {subzone} ad averla vinta.",
	},
	["subzone_enter.w13.cross.079"] = {
		"Un confine dopo l'altro, il mondo mi ricorda di essere più grande delle mie preoccupazioni. Mi fa bene sentirmelo dire.",
		"Oltre ogni linea il mondo ha ancora un altro pezzo di sé. Già questo vale il cammino.",
	},
	["subzone_enter.w13.cross.080"] = {
		"{subzone}. Promette bene. Da fuori, quasi tutto promette bene.",
		"{subzone}! Promesse a non finire, almeno finché non scopro il contrario.",
		"{subzone}. Qualunque cosa tu sia, sono di buon umore, e ti do fiducia.",
	},
	["subzone_enter.w13.name.001"] = {
		"Il nome {subzone} è nato da un amore, da una fretta o da un guaio. Quasi tutti i nomi nascono così.",
		"Amore, fretta o guai: da lì vengono quasi tutti i nomi. Chissà da quale dei tre viene {subzone}.",
		"Quasi sempre un nome nasce da amore, fretta o guai. Pagherei per sapere la ricetta di questo.",
	},
	["subzone_enter.w13.name.002"] = {
		"Dimenticherò il nome di questo posto molto prima di dimenticare la fatica di questi passi. I nomi sono la prima cosa che se ne va.",
		"Scivolano via, i nomi. Fra un anno {subzone} potrebbe essere uno spazio vuoto, e il cammino mi resterà nelle ginocchia.",
		"Strana cosa: il nome di un posto se ne va per primo, e il dolore che ha messo nelle gambe resta.",
	},
	["subzone_enter.w13.name.003"] = {
		"{subzone}. Scivola bene sulla lingua. Più o meno.",
		"Vediamo se mi viene: {subzone}. Abbastanza bene.",
		"{subzone}. Mi ci sono voluti due tentativi, ma ce l'ho fatta.",
	},
	["subzone_enter.w13.name.004"] = {
		"apre la mappa, trova il nome {subzone} scritto in lettere minute, e la ripone nello zaino.",
		"confronta la mappa con il terreno sotto i piedi, trova il nome {subzone} e la rimette via.",
		"stende la mappa su un ginocchio quanto basta per trovare il nome, poi riparte.",
	},
	["subzone_enter.w13.name.005"] = {
		"Chi ha pronunciato per primo il nome {subzone} forse non c'è più da un pezzo, e la parola fa ancora il suo lavoro. I nomi sono servitori fedeli.",
		"I nomi durano più delle bocche che li hanno inventati. Un giorno qualcuno ha coniato {subzone}, e ha proseguito.",
		"Una parola detta una volta da uno sconosciuto, e per generazioni tiene insieme un posto. Il nome di questo posto è probabilmente una parola così.",
	},
	["subzone_enter.w13.name.006"] = {
		"Se qualcuno chiede dove mi trovo: {subzone}. Prendete nota.",
		"Segnatevi questo: {subzone}. Nel caso qualcuno mi cerchi.",
	},
	["subzone_enter.w13.name.007"] = {
		"I nomi mentono con più allegria della gente. Prendo {subzone} come una diceria, non come una descrizione.",
		"{subzone}, si fa chiamare. I nomi sono vanterie almeno quanto sono fatti.",
		"Ciò che un posto racconta di sé sta tutto nel nome, e nessuno è sincero su se stesso. Ne prendo atto, {subzone}, con un pizzico di sale.",
	},
	["subzone_enter.w13.name.008"] = {
		"Dieci passi fa era solo un camminare come un altro. Ora è {subzone}, e mi accorgo che cammino in un altro modo.",
		"Basta un nome e raddrizzo un po' le spalle, come se mi avessero presentato qualcuno.",
		"Ho attraversato un nome, e il mio passo cambia senza chiedermi il permesso.",
	},
	["subzone_enter.w13.name.009"] = {
		"annuncia {subzone} a nessuno in particolare, con la voce di un araldo, poi ripete il nome con voce normale.",
		"prova a dire {subzone} con tono solenne e squillante, poi ripete il nome alla buona.",
	},
	["subzone_enter.w13.name.010"] = {
		"Di questo posto so solo come si chiama: {subzone}. È un inizio, e a volte è tutto.",
		"Il nome è la prima cosa che un posto ti dice, e spesso l'unica. {subzone}: mi accontento.",
		"Ho soltanto il nome su cui contare. Dovrà bastare.",
	},
	["subzone_enter.w13.name.011"] = {
		"Ma chi li inventa, questi nomi? {subzone}. Davvero.",
		"{subzone}? Qualcuno ci ha pensato a lungo. Oppure per niente.",
		"Qualcuno si è seduto e ha scelto proprio quel nome. Apposta.",
	},
	["subzone_enter.w13.name.012"] = {
		"Orchi, nani, elfi, goblin: ogni popolo darebbe probabilmente a questo posto un nome diverso. {subzone} è soltanto quello rimasto sulla mappa.",
		"Ogni popolo di questo mondo chiama la terra nella sua lingua. Quello sulla mia mappa è solo uno dei nomi che questo posto può aver avuto.",
	},
	["subzone_enter.w13.name.013"] = {
		"Scommetto che chi ha disegnato la mappa qui non ci ha mai camminato. Ha scritto {subzone} per sentito dire ed è passato allo spazio bianco successivo.",
		"Qualche scrivano ha messo {subzone} sulla mappa per una storia sentita davanti a un boccale. E adesso eccomi qui, dentro la storia.",
		"Le mappe le disegna chi sta seduto. I posti li attraversa chi non si siede.",
	},
	["subzone_enter.w13.name.014"] = {
		"traccia nell'aria, con un dito, le lettere del nome {subzone}, come se lo scrivesse su una lavagna.",
		"disegna nell'aria le lettere che compongono {subzone}, un po' sovrappensiero, come fa chi vuole impararle a memoria.",
	},
	["subzone_enter.w13.name.015"] = {
		"Dire ad alta voce il nome di un posto è già un po' fare amicizia. Ecco, ora sembra meno estraneo.",
		"Un nome detto è una mano tesa. {subzone}. Ecco: il posto e io ci rivolgiamo la parola.",
	},
	["subzone_enter.w13.name.016"] = {
		"{subzone}. Probabilmente sbaglio la pronuncia. Il posto sopravvivrà.",
		"Lo dico a modo mio, {subzone}, e se qui c'è gente del posto, che faccia pure una smorfia.",
		"L'avrò storpiato, probabilmente. Il nome non me ne vorrà.",
	},
	["subzone_enter.w13.name.017"] = {
		"Raccolgo nomi come c'è chi raccoglie sassolini. {subzone} finisce in tasca con gli altri.",
		"In tasca i nomi ci finiscono come i sassolini raccolti camminando. Anche questo va a far compagnia a quello che c'è già.",
	},
	["subzone_enter.w13.name.018"] = {
		"inclina la testa davanti al nome {subzone}, come davanti a un indovinello a cui manca un verso.",
		"ripete {subzone} una volta, piano, come chi rigira tra le mani un indovinello.",
		"corruga la fronte davanti al nome, come se fosse metà di una battuta e l'altra metà potesse saltar fuori.",
	},
	["subzone_enter.w13.name.019"] = {
		"Dietro ogni nome c'è un piccolo venditore. {subzone} vuole vendermi qualcosa. Prima di comprare, scopro cosa.",
		"Insegne di bottega, ecco cosa sono i nomi. {subzone} ha appeso la sua; se dietro ci sia merce, è un'altra faccenda.",
		"Le promesse dei nomi le fanno sconosciuti che non restano mai a mantenerle.",
	},
	["subzone_enter.w13.name.020"] = {
		"Me lo segno per il ritorno: {subzone}.",
		"Conviene sapere come si chiama il posto in cui si è passati. {subzone}. Ricevuto.",
		"Questo lo tengo da parte, caso mai servisse: {subzone}.",
	},
	["subzone_enter.w13.name.021"] = {
		"C'è una storia piegata in ogni nome, e questo non fa eccezione. Nessuno te la consegna: bisogna restare.",
		"Ogni nome è una storia con le pagine incollate. Per ora {subzone} tiene i suoi segreti per sé.",
	},
	["subzone_enter.w13.name.022"] = {
		"Conosco il nome, non il posto. Vediamo se i due vanno d'accordo.",
		"C'è il nome; ora tocca al posto esserne all'altezza, nel bene o nel male.",
		"Nomi e posti non sempre vanno d'accordo. Teniamo d'occhio questi due.",
	},
	["subzone_enter.w13.name.023"] = {
		"Chi tiene un posto gli dà il nome, e chi lo perde continua per anni a chiamarlo col nome vecchio. Chissà chi chiama ancora questo posto in un altro modo.",
		"Passano di mano come la terra, i nomi. Qualcuno, chissà dove, chiama forse {subzone} con un nome che sulla mia mappa non c'è.",
	},
	["subzone_enter.w13.name.024"] = {
		"pronuncia piano il nome {subzone}, poi aspetta un attimo, come se un posto potesse rispondere quando lo si chiama.",
		"dice {subzone} a mezza voce e si ferma un istante, come dopo aver bussato.",
	},
	["subzone_enter.w13.name.025"] = {
		"Corto, un nome è un'alzata di spalle; lungo, è un discorso. {subzone}, qualunque dei due sia, va bene così.",
		"Corti come un colpo di tosse o lunghi come una scusa: così sono i nomi. {subzone} sarà quello che è.",
	},
	["subzone_enter.w13.name.026"] = {
		"Proprio dove diceva la mappa. Brava mappa.",
		"La mappa prometteva {subzone}, e la promessa è mantenuta. Onore al merito.",
		"Mappa e terreno sono d'accordo, una volta tanto. Mi sta bene.",
	},
	["subzone_enter.w13.name.027"] = {
		"La memoria tiene i nomi a modo suo. {subzone} potrebbe restarmi in testa per anni, senza che io sappia mai perché.",
		"Non si può sapere quali nomi restano. Questo potrebbe svanire alla prossima svolta, o restare con me per sempre.",
		"Se un nome mi resta o no, non dipende da me. Ho smesso di provare a scegliere.",
	},
	["subzone_enter.w13.name.028"] = {
		"gira la mappa dal verso giusto, trova il nome {subzone} e ha l'aria di chi aveva ragione.",
		"consulta la mappa, la ruota di un quarto, e solo allora trova il punto dove c'è scritto {subzone}.",
	},
	["subzone_enter.w13.name.029"] = {
		"Impari i nomi e il mondo si fa più piccolo, nel senso buono. Un pezzo in più che posso indicare col dito.",
		"Con ogni nome imparato, l'ignoto perde un pezzetto. {subzone} si prende il suo morso.",
		"Una parola in più per il mondo, e il mondo sembra un passo più vicino.",
	},
	["subzone_enter.w13.name.030"] = {
		"Con la presente riconosco ufficialmente {subzone}. Non c'è bisogno di alzarsi.",
		"Sia messo agli atti: {subzone}. Proseguite pure.",
		"Per l'autorità che nessuno mi ha conferito, riconosco {subzone}. Riposo.",
	},
	["subzone_enter.w13.name.031"] = {
		"Alcuni nomi sono avvertimenti, altri sono lapidi, e da fuori suonano uguali. Terrò le orecchie aperte.",
		"Un nome può essere una lapide o uno zerbino con scritto benvenuto, e di solito lo si scopre dopo. Vediamo cos'è {subzone}.",
	},
	["subzone_enter.w13.name.032"] = {
		"scarabocchia {subzone} in un angolo della mappa rimasto vuoto.",
		"aggiunge un segnetto accanto al nome {subzone} sulla mappa, di quelli che solo chi la possiede sa leggere.",
	},
	["subzone_enter.w13.name.033"] = {
		"Per qualcuno {subzone} è il modo di dire casa. Per me è una parola. Cercherò di camminare come chi conosce la differenza.",
		"Questo nome lo dirò una volta e poi lo lascerò cadere, ma per qualcuno è forse la prima parola che abbia mai imparato. {subzone}: piano con i piedi.",
	},
	["subzone_enter.w13.name.034"] = {
		"Archiviato alla voce «posti con un nome»: {subzone}.",
		"Nome: {subzone}. Osservazioni: per ora nessuna.",
		"Annotato, archiviato e molto probabilmente smarrito prima di cena: {subzone}.",
	},
	["subzone_enter.w13.name.035"] = {
		"Arriva sempre un po' prima del posto, il nome. {subzone} è qui; il resto mi raggiungerà.",
		"I nomi corrono davanti ai luoghi. Questo ce l'ho già; il posto vero devo ancora farlo mio.",
		"So sempre come si chiama un posto un attimo prima di sapere cos'è.",
	},
	["subzone_enter.w13.name.036"] = {
		"fa un breve inchino cortese al nome {subzone}, quello che si deve a uno sconosciuto con un titolo.",
		"saluta il nome {subzone} con finta solennità, come chi viene presentato a corte.",
	},
	["subzone_enter.w13.name.037"] = {
		"Gli ottimisti scrivono i nomi, e tutti gli altri li leggono. Questo lo leggerò con attenzione.",
		"Chi battezza un posto spera. Chi ci entra controlla. In questo momento tocca a me controllare.",
		"La speranza scrive i nomi. La prudenza li legge.",
	},
	["subzone_enter.w13.name.038"] = {
		"Ripetilo due volte e resta: {subzone}. E una terza per scaramanzia.",
		"Ripetuto, un nome resta dov'è. {subzone}. Bene.",
	},
	["subzone_enter.w13.name.039"] = {
		"Prima delle mappe sono venuti i nomi. Qualcuno ha indicato e ha detto una parola, e la parola era {subzone}, o qualcosa da cui è nata.",
		"Prima dell'inchiostro c'erano un dito puntato e una parola. Anche il nome {subzone} probabilmente è cominciato così: un gesto, un suono, un cenno di chi ascoltava.",
	},
	["subzone_enter.w13.name.040"] = {
		"ripete il nome {subzone} al ritmo dei passi, finché non ci sta dentro.",
		"adatta il nome {subzone} al ritmo della camminata, sillaba dopo sillaba.",
		"lascia che il nome entri nel ritmo del passo prima di dire altro.",
	},
	["subzone_enter.w13.name.041"] = {
		"Nome per esteso: {subzone}. Entro una settimana avrò trovato un modo più corto per dirlo.",
		"Si consuma con l'uso, un nome, come una soglia. Di sicuro qualcuno dice {subzone} più in fretta e più corto della mappa.",
	},
	["subzone_enter.w13.name.042"] = {
		"Non ho idea di cosa voglia dire {subzone}. Lo scoprirò camminando.",
		"Che cosa significa, poi, {subzone}? L'unico dizionario che ho sono le mie gambe.",
		"Qualunque cosa voglia dire il nome, il terreno lo spiegherà con calma.",
	},
	["subzone_enter.w13.name.043"] = {
		"Un giorno racconterò questo pezzo male, e {subzone} sarà la parola su cui inciamperò.",
		"Un giorno, raccontando tutto questo a qualcuno, cercherò il nome {subzone} e lo dirò un po' storto.",
	},
	["subzone_enter.w13.name.044"] = {
		"strizza gli occhi sulla mappa, poi su quello che ha intorno, come per verificare se la mappa abbia ragione sul nome {subzone}.",
		"aggrotta la fronte sulla mappa, come se la sospettasse di aver scritto {subzone} un po' storto.",
	},
	["subzone_enter.w13.name.045"] = {
		"Un goblin si sarebbe fatto pagare a lettera per battezzare questo posto. Un nome come {subzone} sarebbe costato una piccola fortuna a qualcuno.",
		"Se il nome l'avesse scelto un goblin, ci sarebbe una tassa per pronunciarlo. {subzone}, gratis. Che fortuna.",
	},
	["subzone_enter.w13.name.046"] = {
		"Che resti scritto da qualche parte: {subzone}, a occhi aperti.",
		"Per qualunque cronaca se ne interessi: {subzone}. Preso nota, tutto in ordine.",
		"Nome preso, occhi aperti, e via.",
	},
	["subzone_enter.w13.name.047"] = {
		"Forse {subzone} significa qualcosa in una lingua che non parlo. O forse è solo un nome, e basta così.",
		"Tanti nomi di questo mondo vengono da lingue che nessuno parla più. Questo potrebbe essere uno di quelli; non lo saprò mai.",
		"Certi nomi sono solo suoni rimasti attaccati. Va bene anche così.",
	},
	["subzone_enter.w13.name.048"] = {
		"chiude gli occhi un istante, come per posare {subzone} su uno scaffale della mente.",
		"si ferma per mezzo passo e fa un cenno tra sé, mettendo {subzone} al sicuro.",
	},
	["subzone_enter.w13.name.049"] = {
		"Probabilmente resterò qui meno del tempo che serve a dire bene {subzone}. Mi sta bene.",
		"Durano parecchio più delle mie visite, i nomi. Questo sopravvivrà ai prossimi minuti senza fatica.",
	},
	["subzone_enter.w13.name.050"] = {
		"Bene. Adesso so come chiamarti quando mi lamenterò.",
		"Almeno ora so come chiamarti, {subzone}, se si arriva alle imprecazioni.",
		"{subzone}, eh? Comodo. Brontolare riesce meglio con un nome da prendere di mira.",
	},
	["subzone_enter.w13.name.051"] = {
		"Tanti posti portano il nome di qualcuno, e quel qualcuno è dimenticato mentre il posto resta. Forse questo è uno di quelli.",
		"Una persona diventa un luogo più facilmente di quanto si creda. Ripeti un nome abbastanza a lungo e smette di essere di qualcuno.",
	},
	["subzone_enter.w13.name.052"] = {
		"dice {subzone} allo zaino che porta in spalla, come se lo zaino l'avesse chiesto.",
		"mormora {subzone} sopra la spalla, per far sapere allo zaino dove è stato portato.",
	},
	["subzone_enter.w13.name.053"] = {
		"Le mappe sono generose: danno un nome a ogni curva e a ogni pozzanghera. Ed eccomi dentro uno di quei nomi.",
		"I cartografi odiano lo spazio vuoto. Dagli un angolo e gli daranno un nome. Anche questo nome, immagino, va messo sul loro conto.",
		"Prima o poi ogni briciola di mondo riceve un nome. I cartografi non sanno trattenersi.",
	},
	["subzone_enter.w13.name.054"] = {
		"Ogni nome è una piccola sfida: entra e scopri. Accettata.",
		"Sotto sotto, i nomi sono sfide. Questa la accetto.",
		"Metà invito e metà sfida, come qualsiasi nome. Prendo entrambe le metà.",
	},
	["subzone_enter.w13.name.055"] = {
		"Fa da manico, un nome. Afferri {subzone} e il posto si porta più facilmente.",
		"Chi passa si porta via un posto prendendolo per il nome. {subzone} viene con me, preso per il manico.",
	},
	["subzone_enter.w13.name.056"] = {
		"prova a dire {subzone} con due accenti diversi, e non si decide per nessuno dei due.",
		"pronuncia {subzone} una volta con cura e una volta alla buona, come per capire quale suoni più del posto.",
	},
	["subzone_enter.w13.name.057"] = {
		"Essere persi e sapere come si chiama il posto in cui ci si è persi sono due cose diverse. Comunque vada, non sono nel primo caso.",
		"Metà del non perdersi è conoscere il nome. L'altra metà è sapere che farne.",
		"Sapere come si chiama un posto non mi dice dove andare, ma mi dice dove sono.",
	},
	["subzone_enter.w13.name.058"] = {
		"Presentazioni fatte: il posto è {subzone}, e io sono io.",
		"Quindi il nome è {subzone}, e io sono io. Le formalità sono sistemate.",
	},
	["subzone_enter.w13.name.059"] = {
		"Ci sono nomi che la gente pronuncia abbassando la voce. Non so ancora se questo sia uno di quelli.",
		"Certi nomi si sussurrano e certi si gridano da un capo all'altro della taverna. Che tipo sia {subzone}, non saprei dirlo.",
	},
	["subzone_enter.w13.name.060"] = {
		"piega la mappa proprio sul nome, così la piega lo ritroverà dopo.",
		"ripiega la mappa in modo che {subzone} resti in vista per la prossima occhiata.",
	},
	["subzone_enter.w13.name.061"] = {
		"La mappa dice {subzone}. Nella mia testa ha già un nome meno educato. Si vedrà quale dei due resta.",
		"Nome ufficiale: {subzone}. Nome privato: in lavorazione.",
	},
	["subzone_enter.w13.name.062"] = {
		"Prima il nome, poi i pettegolezzi: in quest'ordine prendo un posto.",
		"Nome, chiacchiere, e solo alla fine la mia opinione. Sempre in quest'ordine.",
	},
	["subzone_enter.w13.name.063"] = {
		"Attraversare il mondo è saltare da un nome all'altro. {subzone} è quello che ho sotto i piedi adesso.",
		"Da lontano il mondo è una pagina piena di nomi. Da vicino è questo: {subzone}.",
		"Nome dopo nome, ed è il camminare a cucirli insieme.",
	},
	["subzone_enter.w13.name.064"] = {
		"legge {subzone} sulla mappa lentamente, come il menù di una locanda straniera.",
		"compita {subzone} sulla mappa con grande cura, come se ogni lettera si pagasse a parte.",
	},
	["subzone_enter.w13.name.065"] = {
		"Troppo o troppo poco: i nomi promettono sempre una delle due, e quasi nessuno ci prende in pieno. Questo ha la sua occasione per sorprendermi.",
		"Quasi nessun nome al mondo ha la misura esatta del suo posto. Vediamo quanto misura davvero {subzone}.",
		"Nessun nome ha mai detto tutta la verità su un posto. Pochi, però, mentono del tutto.",
	},
	["subzone_enter.w13.name.066"] = {
		"Il nome ce l'ho. Il resto viene camminando.",
		"Imparato il nome. Tutto il resto lo raccolgo andando avanti.",
		"La parte facile era il nome.",
	},
	["subzone_enter.w13.name.067"] = {
		"Gli agrimensori nani hanno un detto: a un posto devi prima di tutto il suo nome giusto. {subzone}, detto come si deve.",
		"C'è una regola degli agrimensori, dicono i nani: prima il nome, poi le misure. {subzone}. E adesso le misure.",
	},
	["subzone_enter.w13.name.068"] = {
		"Quello che la gente sperava o temeva, i nomi lo conservano. A sentire bene, questo ha un po' dell'uno e un po' dell'altro.",
		"Scegliere un nome è una piccola confessione. {subzone} confessa qualcosa, ma non conosco abbastanza la lingua per capire cosa.",
	},
	["subzone_enter.w13.name.069"] = {
		"si porta due dita alla fronte davanti al nome {subzone}, una cortesia da viandante.",
		"alza brevemente una mano al nome {subzone}, il piccolo saluto che si deve a un nome che vale la pena conoscere.",
	},
	["subzone_enter.w13.name.070"] = {
		"Se da qui in poi va storto qualcosa, do la colpa al nome.",
		"Avviso, {subzone}: se mi perdo, la colpa è tua.",
		"Se qui mi smarrisco, so già quale nome maledire.",
	},
	["subzone_enter.w13.name.071"] = {
		"{subzone}: un nome che potrei provare a spiegare alla gente che ho lasciato. Annuirebbero, senza riuscire a immaginarlo.",
		"Se mai racconterò questo posto alla gente che ho lasciato, il nome da solo dovrà fare tutto il lavoro.",
	},
	["subzone_enter.w13.name.072"] = {
		"alza un sopracciglio davanti al nome {subzone} e poi lo riabbassa, senza sbilanciarsi.",
		"squadra il nome {subzone} a lungo, come si valuta la stretta di mano di uno sconosciuto.",
	},
	["subzone_enter.w13.name.073"] = {
		"Si riciclano come stivali passati di piede in piede, i nomi. Chissà dove c'è un posto che si chiama quasi come {subzone}, e i due non si sono mai incontrati.",
		"Metà dei nomi del mondo sono presi in prestito dall'altra metà. Questo avrà di sicuro un cugino lontano.",
	},
	["subzone_enter.w13.name.074"] = {
		"Esercizio: {subzone}. Dillo come se l'avessi sempre saputo.",
		"Detto con sicurezza, un nome non fa sorgere domande.",
	},
	["subzone_enter.w13.name.075"] = {
		"Un nome è un segnalibro. Dovunque finisca, {subzone} tiene il segno su questa pagina del cammino.",
		"Faccio un'orecchia alla pagina, qui dove c'è scritto {subzone}, come si fa con quelle che potrebbero servire.",
	},
	["subzone_enter.w13.name.076"] = {
		"si esercita a dire {subzone} senza esitare, e ci riesce al terzo tentativo.",
		"inciampa sul nome {subzone} una volta, poi lo dice per bene, con l'aria di una piccola vittoria.",
	},
	["subzone_enter.w13.name.077"] = {
		"Ogni nome ha visto passare qualcuno più coraggioso di me e qualcuno più spaventato. Io sto nel mezzo.",
		"{subzone} ha visto viandanti più audaci e più impauriti di me. Mi metto a metà dell'elenco.",
		"Coraggiosi o spaventati, tutti quelli passati di qui hanno imparato lo stesso nome. Buona compagnia, in un certo senso.",
	},
	["subzone_enter.w13.name.078"] = {
		"Nome trovato, per questo pezzo di mondo. Bene, mi piace saperlo.",
		"Ora questo pezzo di mondo ha un nome nella mia testa. Aiuta più di quanto si creda.",
		"Bene. Questo pezzo di mondo ha smesso di essere senza nome.",
	},
	["subzone_enter.w13.name.079"] = {
		"Camminando troppo in fretta, i nomi si confondono. {subzone}. Rallento un po', e il nome resta distinto dagli altri.",
		"Passa in fretta tra troppi nomi e si confondono come inchiostro bagnato. Questo lo tengo all'asciutto.",
	},
	["subzone_enter.w13.name.080"] = {
		"pronuncia {subzone} con la cura discreta di chi maneggia una cosa presa in prestito.",
		"tratta il nome {subzone} con delicatezza, come una tazza presa in prestito.",
	},
	["subzone_enter.w13.name.081"] = {
		"guarda la mappa, poi il terreno, come se andassero presentati l'uno all'altro.",
		"tiene la mappa accanto a ciò che ha davanti, inchiostro contro terreno, perché {subzone} conosca la cosa vera.",
	},
	["subzone_enter.w13.watch.001"] = {
		"Prima gli occhi, poi i piedi, per ultima la lingua. Un ordine sensato per qualunque arrivo.",
		"Guardare, poi muovere un passo, poi parlare. In quest'ordine, senza saltare niente.",
		"Gli occhi lavorano per primi. I piedi aspettano il loro turno, la lingua più a lungo.",
	},
	["subzone_enter.w13.watch.002"] = {
		"Quando cambia il nome, rallento. Non serve altra ragione.",
		"Il nome è cambiato, e il passo cambia con lui: una tacca più lento.",
		"Basta un nome diverso sulla mappa per accorciare la falcata.",
	},
	["subzone_enter.w13.watch.003"] = {
		"La sensazione di avere degli occhi sulla schiena. Probabilmente niente. Guardo lo stesso.",
		"Quel formicolio fra le scapole. Sarà la fantasia, ma mi volto a controllare.",
		"Qualcosa mi dice che mi stanno guardando. Quel qualcosa mente spesso. Controllo comunque.",
	},
	["subzone_enter.w13.watch.004"] = {
		"Entro come se fossi di casa. Metà del coraggio è il portamento.",
		"Spalle indietro, mento dritto. Qualunque posto sia, da me avrà una schiena diritta.",
		"Nessuno deve vedermi esitare, nemmeno io. Così entro con l'aria di chi ne è convinto.",
	},
	["subzone_enter.w13.watch.005"] = {
		"L'unica guida che porto con me è il mio giudizio. Dovrà bastare anche qui.",
		"Nessuna guida, solo i miei occhi e quel po' di buon senso che mi ritrovo.",
		"Al confine di un nome nessuno distribuisce consigli. Me li porto da casa.",
	},
	["subzone_enter.w13.watch.006"] = {
		"Prima di tutto: da che parte vengo? Bene. Ora il resto.",
		"La prima cosa da imparare di un posto è come uscirne.",
		"Tengo a mente da dove vengo. Non per paura: per abitudine, che costa meno.",
	},
	["subzone_enter.w13.watch.007"] = {
		"Ogni posto ha le sue regole. Il trucco è impararle prima di infrangerne una.",
		"Ogni angolo di mondo ha le sue usanze. Meglio impararle guardando che inciamparci sopra.",
		"Qui da qualche parte c'è una regola non scritta che aspetta qualcuno che la infranga. Guardando, evito di essere io.",
	},
	["subzone_enter.w13.watch.008"] = {
		"Se qualcosa qui mi osserva, spero almeno che apprezzi la cura con cui cammino.",
		"Se qualcuno sta guardando, sia messo agli atti: ingresso dignitoso, sospetto solo moderato.",
		"Se mi stanno osservando, vorrei far notare che questa è la mia andatura prudente, non quella di chi si è perso.",
	},
	["subzone_enter.w13.watch.009"] = {
		"La paura è un'ottima esploratrice. La lascio andare avanti, ma le redini le tengo io.",
		"Un po' di diffidenza mi cammina davanti, al guinzaglio lungo. Abbastanza corto da richiamarla.",
		"La paura può venire con me. Dove mettere i piedi, però, non lo decide lei.",
	},
	["subzone_enter.w13.watch.010"] = {
		"Ascolto prima di guardare. Le orecchie, di solito, arrivano prima.",
		"Prima le orecchie, poi gli occhi. Voglio sentire questo posto prima che lui senta me.",
		"L'ascolto viene per primo. Un posto parla alle orecchie molto prima di mostrarsi agli occhi.",
	},
	["subzone_enter.w13.watch.011"] = {
		"{subzone}. Annotato, insieme a tutto il resto da tenere d'occhio.",
		"Dunque questo è {subzone}. Va nell'elenco dei posti dove guardo dove metto i piedi.",
	},
	["subzone_enter.w13.watch.012"] = {
		"Non so ancora cosa voglia questo posto. Lui non sa cosa voglio io. Pari, per ora.",
		"Qualunque cosa abbia in mente questo tratto di mondo, io ho i miei piani. Vediamo quali reggono.",
		"Due parti che si studiano: io, e un posto con un nome. Nessuno dei due ha ancora battuto ciglio.",
	},
	["subzone_enter.w13.watch.013"] = {
		"Prudenza non vuol dire lentezza. Vuol dire lentezza solo dove conta.",
		"Stare all'erta non è perdere tempo. In fretta dove si vede, piano dove non si vede.",
		"La cautela ha due velocità, e il segreto è sapere quale pezzo di terreno merita l'una o l'altra.",
	},
	["subzone_enter.w13.watch.014"] = {
		"I posti hanno umori, come le persone. A questo concedo un momento per mostrarsi.",
		"Dai un attimo a un posto e ti dice cos'è. Mettigli fretta, e mente.",
		"La prima impressione di un posto sbaglia quasi sempre in qualche dettaglio. Aspetto la seconda.",
	},
	["subzone_enter.w13.watch.015"] = {
		"Piedi stanchi, piedi distratti. Qui bado ai miei.",
		"Più le gambe sono stanche, più gli occhi devono stare svegli. È il patto che ho stretto con la mia testa.",
	},
	["subzone_enter.w13.watch.016"] = {
		"Qualunque cosa ci aspetti qui, ci ho messo piede di mia volontà. Conta qualcosa.",
		"Ho scelto io di entrare. Nessuno mi ha dato una spinta. Da ricordare, se diventa dura.",
		"Questo passo l'ho scelto io. Tocca a me, quindi, rispondere di lui.",
	},
	["subzone_enter.w13.watch.017"] = {
		"Nome diverso, stessi occhi. Che facciano il loro lavoro.",
		"I posti cambiano nome ogni poche centinaia di passi. La mia prudenza no.",
		"La mappa passa a un altro nome. Le abitudini restano esattamente al loro posto.",
	},
	["subzone_enter.w13.watch.018"] = {
		"Contare cosa porto, sapere dove sto. Il resto lo imparo cammin facendo.",
		"Due domande, ovunque arrivi: cosa ho con me, e dove sto esattamente?",
	},
	["subzone_enter.w13.watch.019"] = {
		"Gli arrivi che vanno storti sono quelli a cui nessuno fa caso. Quindi: attenzione.",
		"È con la distrazione che le buone camminate finiscono male. Adesso la metto via.",
		"Una mente che vaga, al confine di un nome nuovo, è la porta da cui entrano i guai. La mia resta a casa.",
	},
	["subzone_enter.w13.watch.020"] = {
		"L'istinto borbotta. Borbotta su tutto, ma è buona educazione lasciarlo finire.",
		"La pancia ha un'opinione su questo posto. Ne ha su tutto. Un'udienza, comunque, gliela concedo.",
		"Una vocina dentro dice: attenzione. Lo dice dappertutto. Ma ci azzecca troppo spesso per non darle retta.",
	},
	["subzone_enter.w13.watch.021"] = {
		"Un passo prudente non è una vergogna. I superbi inciampano in ciò che i pazienti vedono.",
		"Nessuna vergogna in un piede lento. I frettolosi trovano le buche; i pazienti le aggirano.",
	},
	["subzone_enter.w13.watch.022"] = {
		"{subzone}, dunque. Le opinioni le tengo in tasca finché non avrò visto abbastanza.",
		"Il nome dice {subzone}. Gli occhi non hanno ancora detto niente: li aspetto.",
	},
	["subzone_enter.w13.watch.023"] = {
		"Che ci sia qualcuno o no, entro come se qualcuno tenesse il conto.",
		"Che mi guardino o no, il passo è lo stesso. Un'abitudine serve a questo.",
	},
	["subzone_enter.w13.watch.024"] = {
		"Un'occhiata alle spalle sprecata non costa niente. Una mancata può costare cara.",
		"Guardarsi alle spalle è gratis. Non ci risparmio.",
	},
	["subzone_enter.w13.watch.025"] = {
		"Non tocca a me giudicarlo, per ora. Prima vederlo, poi forse capirlo.",
		"Il giudizio può aspettare. È sempre più preciso quando ha aspettato.",
		"Trattengo il verdetto per un po'. I posti, come le persone, meritano di essere ascoltati prima della sentenza.",
	},
	["subzone_enter.w13.watch.026"] = {
		"Ogni posto insegna qualcosa a chi arriva con gli occhi aperti. I miei lo sono.",
		"Occhi aperti, bocca chiusa, orecchie tese. Così un posto ti insegna qualcosa.",
	},
	["subzone_enter.w13.watch.027"] = {
		"C'è qualcosa, qui, che chiede una seconda occhiata. Non saprei dire cosa. Gliela concedo.",
		"Una seconda occhiata non ha mai fatto male a nessuno. La do adesso, per scrupolo.",
		"Il primo sguardo dice una cosa. Il secondo potrebbe dirne un'altra. Vale la pena chiederglielo.",
	},
	["subzone_enter.w13.watch.028"] = {
		"Se l'inquietudine deve arrivare, mi troverà coi piedi ben piantati.",
		"I nervi sono permessi. Le ginocchia molli no. Pianto i piedi e vado avanti.",
	},
	["subzone_enter.w13.watch.029"] = {
		"Nessuno ti consegna l'elenco di quello che un posto contiene. Lo compili da te, con gli occhi.",
		"Qualunque cosa contenga questo posto, ne farò il mio inventario, con calma.",
	},
	["subzone_enter.w13.watch.030"] = {
		"Dicono che i viaggiatori navigati sembrino rilassati mentre notano tutto. Io la parte del notare la faccio.",
		"Sembrare disinvolti mentre si osserva tutto è un'arte. L'osservare, almeno, mi riesce.",
		"Il segreto è sembrare a proprio agio senza perdersi niente. Metà del segreto è meglio di niente.",
	},
	["subzone_enter.w13.watch.031"] = {
		"Un piccolo nodo, da qualche parte dentro, di quelli che arrivano con un nome nuovo. Utile, finché non cresce.",
		"L'inquietudine è un attrezzo come un altro. Se resta piccola, affila lo sguardo.",
	},
	["subzone_enter.w13.watch.032"] = {
		"Qualunque sia il motivo per cui sono qui, può aspettare il tempo di una bella occhiata intorno.",
		"Le commissioni aspettano. Orientarsi no.",
		"Gli affari dopo. Prima capisco dove ho i piedi.",
	},
	["subzone_enter.w13.watch.033"] = {
		"{subzone}. Mi fisso il nome in testa: i nomi sono appigli, quando ci si perde.",
		"Meglio sapere dove sono, per nome, che vagare tirando a indovinare. {subzone}, allora.",
	},
	["subzone_enter.w13.watch.034"] = {
		"Entro come si dovrebbe entrare ovunque: occhi svegli, schiena dritta, nessuna fretta.",
		"Occhi svegli, passo calmo, schiena dritta: tre cose che nessun posto mi può togliere.",
	},
	["subzone_enter.w13.watch.035"] = {
		"La sensazione che qualcuno mi stia guardando. Forse è solo il posto, che mi prende le misure.",
		"A volte penso che un posto studi chi arriva con la stessa attenzione con cui viene studiato.",
	},
	["subzone_enter.w13.watch.036"] = {
		"C'è una parte di me che entrerebbe senza pensieri. A quella non lascio guidare.",
		"La parte distratta di me vorrebbe gironzolare. L'ultima parola ce l'ha quella attenta.",
	},
	["subzone_enter.w13.watch.037"] = {
		"Meglio che sia il posto a venirmi incontro, piuttosto che finirci dentro a testa bassa.",
		"Che si riveli da sé. Non ho nessuna fretta di farmi sorprendere.",
		"Pazienza, all'arrivo. Qualunque cosa sia questo posto, me lo dirà prima se non spingo.",
	},
	["subzone_enter.w13.watch.038"] = {
		"Il buon viaggiatore lascia un posto come l'ha trovato, e ci entra come se potesse mordere.",
		"Rispetto, entrando. Non costa niente, e i posti hanno la memoria lunga.",
	},
	["subzone_enter.w13.watch.039"] = {
		"rallenta e lascia che siano gli occhi ad andare avanti per primi.",
		"allenta l'andatura e manda avanti lo sguardo.",
		"per qualche passo lascia che i piedi restino indietro rispetto agli occhi.",
	},
	["subzone_enter.w13.watch.040"] = {
		"passa una mano lungo le cinghie dello zaino, controllando ogni fibbia al tatto.",
		"dà uno strattone a ogni cinghia, come fa un viaggiatore accorto ovunque arrivi.",
	},
	["subzone_enter.w13.watch.041"] = {
		"si ferma al margine del posto e lo percorre con lo sguardo, lentamente, da un lato all'altro.",
		"si ferma un istante e passa il posto in rassegna con un'occhiata senza fretta.",
		"si arresta, e lascia che uno sguardo lungo scorra su tutto quello che riesce a raggiungere.",
	},
	["subzone_enter.w13.watch.042"] = {
		"lancia un'occhiata alle spalle, poi torna a guardare avanti.",
		"si guarda alle spalle, una volta sola, prima di proseguire.",
	},
	["subzone_enter.w13.watch.043"] = {
		"si tasta tasche e borse, un inventario rapido senza fermarsi.",
		"controlla lo zaino con una mano, contando a tastoni.",
		"fa un rapido conto dell'equipaggiamento al tatto, muovendo le labbra in silenzio.",
	},
	["subzone_enter.w13.watch.044"] = {
		"inclina la testa, in ascolto, come se il posto avesse detto qualcosa.",
		"resta immobile un attimo: prima le orecchie, poi gli occhi.",
	},
	["subzone_enter.w13.watch.045"] = {
		"per qualche passo resta ai margini, all'erta.",
		"anziché tagliare dritto, si sposta di lato, prendendo le misure del posto.",
	},
	["subzone_enter.w13.watch.046"] = {
		"raddrizza le spalle prima di andare oltre.",
		"si raddrizza, come per presentarsi al posto.",
		"si erge per un momento in tutta la sua statura, poi riprende a camminare con decisione.",
	},
	["subzone_enter.w13.watch.047"] = {
		"prende nota di un nome, {subzone}, con uno sguardo stretto e pensoso.",
		"registra il nome, {subzone}, senza lasciar trasparire nulla.",
	},
	["subzone_enter.w13.watch.048"] = {
		"posa una mano sulla cintura, con calma e prontezza insieme.",
		"tiene libere entrambe le mani: una piccola abitudine d'arrivo.",
		"lascia le mani sciolte e vuote, pronte a qualunque cosa.",
	},
	["subzone_enter.w13.watch.049"] = {
		"fa i passi successivi più leggeri dei precedenti.",
		"alleggerisce il passo.",
	},
	["subzone_enter.w13.watch.050"] = {
		"guarda in alto, poi in basso, poi intorno: il giro completo della prudenza.",
		"si volta lentamente, facendo il punto in ogni direzione.",
	},
	["subzone_enter.w13.watch.051"] = {
		"si ferma, ascolta, e solo allora riprende a camminare.",
		"si arresta il tempo di un pensiero, poi prosegue.",
		"aspetta un momento più del necessario, e va avanti.",
	},
	["subzone_enter.w13.watch.052"] = {
		"saggia il terreno, prima con un piede e poi con l'altro, prima di andare avanti.",
		"mette alla prova il terreno con un passo deliberato.",
	},
	["subzone_enter.w13.watch.053"] = {
		"finge di ammirare il posto mentre conta ogni via d'entrata e d'uscita.",
		"ha un'espressione oziosa e occhi molto indaffarati.",
		"si dà un'aria di vago interesse. Gli occhi, invece, di vago non hanno niente.",
	},
	["subzone_enter.w13.watch.054"] = {
		"dà un'occhiata all'equipaggiamento, poi al posto, come per pesare l'uno contro l'altro.",
		"soppesa il posto con lo sguardo e lo zaino con la mano.",
	},
	["subzone_enter.w13.watch.055"] = {
		"scioglie le spalle, senza abbassare la guardia.",
		"si rilassa un poco, ma non con gli occhi.",
	},
	["subzone_enter.w13.watch.056"] = {
		"trova il punto da cui si vede quanto più possibile del posto, e ci resta un momento.",
		"sceglie il punto d'osservazione migliore che il posto concede, e guarda.",
	},
	["subzone_enter.w13.watch.057"] = {
		"avanza con passo misurato e tranquillo, senza perdersi nulla del posto chiamato {subzone}.",
		"mantiene un passo misurato, con gli occhi indaffarati: il posto si chiama {subzone}.",
	},
	["subzone_enter.w13.watch.058"] = {
		"piega le dita una volta, poi lascia le mani sciolte e pronte.",
		"apre e chiude una mano, un piccolo gesto di preparazione.",
		"chiude e riapre le dita di una mano, preparandosi in silenzio.",
	},
	["subzone_enter.w13.watch.059"] = {
		"Piano, adesso. Occhi aperti.",
		"Con calma. Prima si guarda.",
		"Senza scossoni. Gli occhi prima dei piedi.",
	},
	["subzone_enter.w13.watch.060"] = {
		"Mh. E tu cosa sei, allora?",
		"E tu, che razza di posto saresti?",
	},
	["subzone_enter.w13.watch.061"] = {
		"Piedi lenti, orecchie aperte.",
		"Rallenta. Ascolta.",
	},
	["subzone_enter.w13.watch.062"] = {
		"{subzone}. Terrò gli occhi bene aperti.",
		"{subzone}, eh? Allora conviene stare attenti.",
	},
	["subzone_enter.w13.watch.063"] = {
		"L'equipaggiamento è in ordine. I piedi tengono. Può bastare.",
		"Zaino stretto, mani libere. Si procede, con prudenza.",
		"Cinghie strette, mani vuote, sguardo alto. Così va bene.",
	},
	["subzone_enter.w13.watch.064"] = {
		"Per chiunque stia ascoltando: non cerco guai. Più o meno.",
		"Se qualcuno guarda: vengo in pace. Grosso modo.",
		"A qualunque occhio attento: viaggiatore innocuo, di passaggio. Innocuo, probabilmente.",
	},
	["subzone_enter.w13.watch.065"] = {
		"Prima capire dove sono, poi pensare al resto.",
		"Mi oriento, e poi vediamo come stanno le cose.",
	},
	["subzone_enter.w13.watch.066"] = {
		"Attenzione a dove si mettono i piedi.",
		"Guarda dove metti i piedi. Dico a me.",
	},
	["subzone_enter.w13.watch.067"] = {
		"Qui, dunque. Qualunque cosa voglia dire 'qui'.",
		"Allora. Qui. Vediamo cosa significa.",
	},
	["subzone_enter.w13.watch.068"] = {
		"Mi sento degli occhi addosso. O me lo immagino. Fa lo stesso.",
		"Strano. Sembra di essere osservati.",
	},
	["subzone_enter.w13.watch.069"] = {
		"Con discrezione.",
		"Piano, piano.",
		"Piano e in silenzio.",
	},
	["subzone_enter.w13.watch.070"] = {
		"Niente movimenti bruschi. Non prima di un'occhiata come si deve.",
		"Niente di brusco, niente di rumoroso.",
	},
	["subzone_enter.w13.watch.071"] = {
		"Calma. Qualunque cosa ci sia davanti, fra un attimo sarà ancora lì.",
		"Nessuna fretta. I posti non scappano.",
	},
	["subzone_enter.w13.watch.072"] = {
		"{subzone}. Mh. Educazione e attenzione, allora.",
		"Buone maniere e occhi aperti. {subzone} li avrà entrambi.",
	},
	["subzone_enter.w13.watch.073"] = {
		"Cinghie, appoggio, umore. Tutto in ordine.",
		"Controllare le cinghie, il terreno, l'umore. Bene, bene e bene.",
	},
	["subzone_enter.w13.watch.074"] = {
		"Resto qui un momento, se nessuno ha niente in contrario.",
		"Una breve sosta. Non ci vorrà molto.",
	},
	["subzone_enter.w13.watch.075"] = {
		"La prudenza è gratis. Gli errori no.",
		"La cautela non costa niente. Ne prendo in abbondanza.",
	},
	["subzone_enter.w13.watch.076"] = {
		"Guarda due volte, fai un passo.",
		"Due occhiate per ogni passo.",
		"Uno sguardo a sinistra, uno a destra, e poi un piede.",
	},
	["subzone_enter.w13.watch.077"] = {
		"Mh. Non mi fido ancora. Ma nemmeno diffido.",
		"Su questo posto non ho ancora deciso. Va bene così. È onesto.",
	},
	["subzone_enter.w13.watch.078"] = {
		"Orecchie aperte, bocca chiusa. Da adesso.",
		"Parlare meno, ascoltare di più. A partire da... questo istante.",
	},
	["subzone_enter.w13.watch.079"] = {
		"Conosci il terreno prima di fidarti.",
		"Prima il terreno, poi la fiducia.",
	},
	["subzone_enter.w13.watch.080"] = {
		"Dove mi trovo, esattamente? {subzone}. Buono a sapersi.",
		"Vediamo. {subzone}. Bene, preso nota.",
	},
	["subzone_enter.w13.watch.081"] = {
		"Resto ai margini finché non ne so di più.",
		"Prima i margini. Il centro dopo, forse.",
	},
	["subzone_enter.w13.watch.082"] = {
		"Niente di cui preoccuparsi finché non c'è qualcosa di cui preoccuparsi.",
		"Ci si preoccupa quando c'è motivo. Nel frattempo, si osserva.",
		"Inutile agitarsi per niente. Utilissimo guardarsi intorno.",
	},
	["journey.w14.down.001"] = {
		"Le gambe hanno penzolato per tutto il viaggio. Adesso devono farsi un'opinione sul terreno, e ci mettono un po'.",
		"Primo passo: con cautela. Secondo: meno. Al terzo le gambe si ricordano di averlo già fatto.",
		"Per ultime tornano le gambe, come ospiti rimasti troppo a lungo alla tavola di un altro.",
	},
	["journey.w14.down.002"] = {
		"si preme i pugni sulla schiena, in basso, e si inarca finché qualcosa lì dentro non accetta di muoversi.",
		"si piega in avanti, le mani sulle ginocchia, e lascia che la rigidità della sella se ne vada con calma.",
		"si inarca all'indietro con le mani sui fianchi, adagio, come chi raddrizza un vecchio cardine.",
	},
	["journey.w14.down.003"] = {
		"Atterraggio: brusco. Panorama: ottimo. Spazio per le gambe: nessuno. Volerei ancora, ma lamentandomi.",
		"Sette su dieci. Punti in meno per l'ultima virata, che ho sentito fin nei denti.",
		"Velocità, ammirevole. Comodità, una diceria. La discesa, una questione per il mio avvocato.",
	},
	["journey.w14.down.004"] = {
		"Lassù intere strade stavano sotto il pollice. Quaggiù un passo torna a essere un passo, e il mondo si riprende il suo peso.",
		"Le cose si erano fatte piccole e ordinate, mentre ero lassù. Adesso sono di nuovo grandi, disordinate, abbastanza vicine da toccarle.",
		"Il mondo è tornato alla sua misura. Io pure, credo: non più un puntino sopra una mappa, solo qualcuno in piedi da qualche parte.",
	},
	["journey.w14.down.005"] = {
		"Vai pure, allora. Grazie per non avermi fatto cadere: l'ho notato, e lo apprezzo.",
		"Grazie. Tu hai fatto tutta la fatica e io tutta la preoccupazione. Divisione onesta.",
		"Torna indietro, forza. Una sella vuota te la sei meritata.",
	},
	["journey.w14.down.006"] = {
		"deve convincere le dita a lasciare la cinghia, una per una, come se ci si fossero affezionate.",
		"molla finalmente l'imbracatura, e si guarda le mani con un lieve stupore per quanto stringevano.",
		"stacca una mano, poi l'altra, e le apre e chiude entrambe come attrezzi presi in prestito da restituire.",
	},
	["journey.w14.down.007"] = {
		"Lassù c'era solo l'aria che correva e i miei pensieri. Quaggiù tutto vuole dire la sua nello stesso momento.",
		"Voci, passi, il tintinnio dell'equipaggiamento di qualcuno. La terra è rumorosa; il silenzio di lassù me l'aveva fatto scordare.",
		"Tutto quel silenzio, e adesso rumore da ogni parte. Ci vuole un attimo per capire a quale tocca a me rispondere.",
	},
	["journey.w14.down.008"] = {
		"Testa in su, piedi in giù. E adesso, dove stavo andando?",
		"Un giro d'orizzonte completo, e poi saprò cosa c'è e dove.",
		"Un momento. Prima trovo il nord, poi la testa.",
	},
	["journey.w14.down.009"] = {
		"Tutta quella terra, e neanche un palmo sotto i piedi. È come leggere prima l'ultima pagina.",
		"Ho fatto tanta strada senza guadagnarmene un solo passo. Un giorno la strada vorrà indietro il conto.",
		"Mi è appena capitata addosso un sacco di distanza, e non ho alzato un piede per averla.",
	},
	["journey.w14.down.010"] = {
		"segue con gli occhi la cavalcatura che si allontana, finché lassù non si distingue più da nient'altro, poi torna alle faccende di quaggiù.",
		"alza lo sguardo una volta, come ci si volta verso una porta appena chiusa, e poi pensa ad altro.",
		"segue per un momento le ali che rimpiccioliscono, poi fa spallucce e le lascia a qualcun altro.",
	},
	["journey.w14.down.011"] = {
		"Le orecchie sono rimaste lassù. Scenderanno quando se la sentono.",
		"Tutto arriva un po' attutito, come se il mondo parlasse da dietro un muro. Diamogli un minuto.",
		"Ho un ronzio nelle orecchie che nessuno ha invitato. Si è unito al viaggio e non si è accorto che è finito.",
	},
	["journey.w14.down.012"] = {
		"Una discesa elegantissima. Nessuno ha visto l'altra versione.",
		"Volevo atterrare proprio così. L'inciampo era un tocco di stile.",
		"Elegante, no? Non rispondere.",
	},
	["journey.w14.down.013"] = {
		"Prima le cose importanti: capire dove sono, poi dove servo, poi se mi importa.",
		"Lassù non avevo commissioni. La terra me le restituisce appena ci metto piede, come un mantello all'ingresso.",
		"I piani fatti in volo non sopravvivono mai all'atterraggio. Tocca farne di veri.",
	},
	["journey.w14.down.014"] = {
		"rimette piede sulla terra e per un momento resta come sono sempre rimasti i viandanti alla fine di un viaggio: fermi, a fare il punto.",
		"scende nel mondo di tutti i giorni e lascia che {g:gli|le} si richiuda intorno, con i suoi rumori e i suoi odori.",
	},
	["journey.w14.down.015"] = {
		"Mi manca già, quel tratto in cui nessuno voleva niente. La terra ha buona memoria per quello che le devo.",
		"Per un po' niente poteva raggiungermi. Adesso tutto può. Va bene, ma con calma.",
		"Il silenzio di lassù era di quelli che nessuno può interrompere. Quaggiù ogni silenzio ha una porta che prima o poi si apre.",
	},
	["journey.w14.down.016"] = {
		"Basta stare a sedere. Le gambe vogliono lavorare, e il lavoro non manca.",
		"Bene. Qualcosa su cui stare in piedi, e cose da fare. Nell'ordine.",
		"Gambe, il riposo l'avete avuto. Adesso ve lo guadagnate.",
	},
	["journey.w14.down.017"] = {
		"Mezza mappa mi è passata sotto. Le gambe non ne sanno niente: credono di essere state su una sedia.",
		"Tante leghe senza muovermi. Il corpo non ha ancora deciso se è stanco o solo annoiato.",
		"Leghe su leghe, e l'unica parte di me che ha percorso qualche distanza è la pazienza.",
	},
	["journey.w14.down.018"] = {
		"si districa dalla sella a tappe, come una mappa rimasta piegata male troppo a lungo.",
		"scende dopo il lungo tragitto e muove i primi passi con l'andatura cauta di chi ha scordato dove si piegano le ginocchia.",
	},
	["journey.w14.down.019"] = {
		"Abbastanza lungo da mettere radici nella sella. Qualcuno mi stacchi.",
		"Se qualcuno chiede, per un po' cammino. Cammino e basta.",
		"Quel volo aveva un inizio, una parte centrale lunghissima e, alla fine, una fine. La fine mi è piaciuta di più.",
	},
	["journey.w14.down.020"] = {
		"Credo di essermi {g:appisolato|appisolata} a metà strada. Spero che non mi sia sfuggito niente di bello. Spero di non averci russato sopra.",
		"A un certo punto ho smesso di guardare e ho cominciato a vagare con la testa. Tornare in me proprio all'atterraggio è uno strano modo di arrivare.",
	},
	["journey.w14.down.021"] = {
		"Calma. Sei giù. Lascia che il mondo smetta di ondeggiare prima di fidarti.",
		"Va bene. Piedi, vi presento la terra. Terra, abbi pazienza con loro.",
		"Con calma. Non c'è nessuno a cronometrare.",
	},
	["journey.w14.down.022"] = {
		"Proverò a tenermi un po' di quell'altezza. Non il panorama: il modo in cui niente quaggiù sembrava valere un litigio.",
		"Da lassù ogni questione che mi porto dietro aveva la misura di una briciola. Vorrei ricordarmelo almeno per un po'.",
		"Dopo un atterraggio, qualcosa della vista dall'alto resta dietro gli occhi. Svanisce in fretta; lo userò prima che succeda.",
	},
	["journey.w14.down.023"] = {
		"si sistema lo zaino più in alto sulle spalle e gli dà una scossa, in ascolto di qualunque cosa si sia allentata.",
		"posa le borse un momento, solo per vederle restare dove sono state messe.",
	},
	["journey.w14.down.024"] = {
		"Comunque io stia camminando adesso, passerà. Probabilmente.",
		"Se per un po' cammino di sbieco, è affar mio.",
		"È un'andatura del tutto normale. Solo un po' timida.",
	},
	["journey.w14.down.025"] = {
		"Il cielo non si accorge della mia partenza. Non si era accorto nemmeno della mia presenza. È questo il suo lato riposante.",
		"Lascio l'aria aperta a chiunque ci sia lassù adesso. Non so se sia mai stata mia, da lasciare.",
		"Lassù niente si ricorderà del mio passaggio. Scopro che non mi dispiace, farmi dimenticare da qualcosa di così grande.",
	},
	["journey.w14.down.026"] = {
		"fa tre passi, si ferma, ne fa altri tre, come per vedere se alla terra si può affidare qualcosa di più.",
		"percorre qualche passo in linea retta con grande concentrazione, come chi debba dimostrare qualcosa a un giudice invisibile.",
		"posa un piede con cura esagerata, poi l'altro, come chi saggia un ponte di corda e scopre che è un pavimento.",
	},
	["journey.w14.down.027"] = {
		"Sarà solo a me, ma volare mi mette fame. Dev'essere tutto quel mondo che passa gratis.",
		"Tutto quello stare {g:seduto|seduta}, e mangerei un bue. Chi me lo spiega?",
		"Neanche un passo vero in tutto il viaggio, e ho una fame da lupi. Il corpo tiene conti strani.",
	},
	["journey.w14.down.028"] = {
		"Velocità di cammino. Più lenta di come la ricordavo, e mi piace più di quanto pensassi.",
		"Torno al mio passo, lento abbastanza da accorgermi delle cose. Lassù tutto scorreva troppo in fretta per essere di qualcuno.",
		"Camminare è una velocità piccola, ma è la mia, e si ferma quando mi fermo io.",
	},
	["journey.w14.down.029"] = {
		"tiene una mano sul collo della cavalcatura un attimo più del necessario, poi fa un passo indietro e la lascia andare.",
		"mormora qualcosa alla cavalcatura, troppo piano perché altri sentano, e dà un'ultima pacca all'imbracatura.",
		"resta accanto alla cavalcatura quanto basta per ricevere un grazie, se le cavalcature ringraziassero, e poi si fa da parte.",
	},
	["journey.w14.down.030"] = {
		"Voli come se avessi un posto migliore dove andare. Giusto. Anch'io.",
		"Senza offesa, ma vederti ripartire mi fa piacere.",
		"Vai, dai. Non dirò a nessuno come hai preso l'ultima curva.",
	},
	["journey.w14.down.031"] = {
		"Strano quanto possa stancare non fare niente. Mi sono solo {g:tenuto|tenuta} forte, e ogni parte di me fa rapporto.",
		"Immobilità per tutto il viaggio, eppure sono a pezzi. Reggersi è un lavoro; nessuno lo dice.",
		"Farsi trasportare, a quanto pare, è un mestiere: tutti i dolori di un lavoro e nessuna paga.",
	},
	["journey.w14.down.032"] = {
		"pianta bene i piedi, si guarda a lungo intorno, e sembra mettere in ordine tutto il posto prima di farci un solo passo.",
		"resta un momento al margine dell'atterraggio, misurando il terreno davanti con la pazienza di chi sta per attraversarlo a piedi.",
		"si ferma con una mano sulla cinghia dello zaino, leggendo la disposizione del terreno come la prima mossa su una scacchiera.",
	},
	["journey.w14.down.033"] = {
		"Fatta. Il resto è camminare, e camminare lo so fare.",
		"Giù dalla sella e di nuovo al lavoro.",
		"Arrivo, mi scarico dall'aria e mi rendo utile.",
	},
	["journey.w14.down.034"] = {
		"Le vecchie strade laggiù non mi hanno visto passare. Da qualche parte, la via che non ho preso aspetta ancora, paziente come la pietra.",
		"Ogni strada che ho sorvolato è ancora là sotto, senza le mie impronte. Mi piace sapere che resteranno.",
		"Laggiù le strade continuano a tenere le loro distanze. Devo loro il cammino che non ho fatto, e lo sanno.",
	},
	["journey.w14.down.035"] = {
		"si dà una spolverata con entrambe le mani, rimettendo a posto tutto quello che l'aria in corsa ha scompigliato.",
		"si risistema l'equipaggiamento un pezzo dopo l'altro, con la cura di chi rimonta un giocattolo a molla.",
		"rimbocca, stringe e liscia ogni lembo che il volo ha allentato, e sembra un po' meno un pacco appena consegnato.",
	},
	["journey.w14.down.036"] = {
		"Mi piacerebbe sapere chi ha deciso che la parte brusca dovesse essere l'atterraggio.",
		"Perché la fine di un volo arriva tanto più in fretta della parte centrale? Qualcuno doveva avvisare il terreno.",
		"Un'eternità a planare, e poi tutto si risolve in due scossoni. Il volo non ha il senso delle proporzioni.",
	},
	["journey.w14.down.037"] = {
		"Va' in pace. Mi hai portato più lontano di quanto avrei camminato in molti giorni, e mi hai chiesto solo di tenermi.",
		"Grazie, ali. Che il prossimo a salirti in groppa pesi meno di me.",
	},
	["journey.w14.down.038"] = {
		"La prima cosa a tornare è l'olfatto: polvere, gente, qualunque cosa capiti qui intorno. Lassù avevo smesso di accorgermi di avere un naso.",
		"Lassù l'aria non sapeva di niente. Quaggiù ogni cosa ha di nuovo il suo odore, e non tutti sono graditi.",
		"Il naso si sveglia prima del resto. Qualunque posto sia questo, si presenta prima a lui.",
	},
	["journey.w14.down.039"] = {
		"scuote una gamba, poi l'altra, come chi controlla che siano arrivate tutte e due.",
		"scalcia l'aria con un piede e poi con l'altro, due volte, finché il formicolio non si decide ad andarsene.",
		"saltella piano sul posto qualche volta, per risvegliare i piedi che si erano addormentati durante il viaggio.",
	},
	["journey.w14.down.040"] = {
		"Ogni arrivo ha lo stesso piccolo istante: il posto non sa ancora che ci sono. Mi piace restarci dentro un po'.",
		"Per un momento nessuno qui sa del mio arrivo. È quanto di più vicino all'essere invisibili.",
		"Un attimo in cui nessuno fa caso a me. Lo spendo a guardarmi intorno.",
	},
	["journey.w14.down.041"] = {
		"Dunque. Quale di tutte queste direzioni è la mia?",
		"Dall'alto era tutto così ovvio. Quaggiù ogni direzione sembra uguale alle altre.",
		"Mh. La mappa che ho in testa l'ho disegnata da lassù. Col terreno, per ora, non combacia.",
	},
	["journey.w14.down.042"] = {
		"Un volo lungo lascia un buco nei conti. Ho guardato, ho aspettato, ed è più tardi di quanto avrebbe diritto di essere.",
		"Tanto tempo a farmi portare. Mi piacerebbe dire di aver fatto pensieri profondi. Ho pensato soprattutto alle gambe.",
		"A metà di quella traversata ho finito le cose a cui pensare. Il resto è stato solo stare lì, molto in alto.",
	},
	["journey.w14.down.043"] = {
		"atterra dopo la lunga traversata e zoppica per la prima decina di passi, massaggiando una gamba che si è addormentata strada facendo.",
		"smonta con una cura lenta e deliberata, mettendo alla prova ogni articolazione, come se il lungo tratto in volo potesse averne lasciata indietro una.",
	},
	["journey.w14.down.044"] = {
		"Non che fossi {g:preoccupato|preoccupata}. Mi piace solo rilassare tutti i muscoli che ho in un colpo solo.",
		"Guarda un po', le mani funzionano di nuovo. Si tenevano con una convinzione ammirevole.",
		"Niente di che. Tra un minuto smetto di aggrapparmi alle cose.",
	},
	["journey.w14.down.045"] = {
		"Da lassù ho visto quanto mondo c'è. Quaggiù devo occuparmi soltanto del prossimo pezzo.",
		"C'è più mondo di quanto una vita possa percorrere a piedi. Un pezzo l'ho appena saltato, e non me ne vergogno.",
		"Tanta terra, e tutta occupata coi suoi guai. I miei sono solo un fazzoletto in mezzo, ed è un conforto.",
	},
	["journey.w14.down.046"] = {
		"socchiude gli occhi sulle cose vicine, con lo sguardo ancora regolato per le distanze, e aspetta che tornino a fuoco.",
		"si strofina gli occhi, che sembrano ancora cercare l'orizzonte, e li costringe a posarsi su ciò che è vicino.",
		"sbatte le palpebre un paio di volte davanti alle cose vicine, come chi passa da un vasto panorama a una stanza piccola.",
	},
	["journey.w14.down.047"] = {
		"I voli finiscono in modo troppo netto. Un momento sono sopra tutto, quello dopo sono una persona con uno zaino e un posto dove andare.",
		"Nessuna cerimonia. Le ali se ne vanno, la terra resta, e io resto lì in piedi, una figura qualunque con un bagaglio.",
	},
	["journey.w14.down.048"] = {
		"Piedi, si torna in servizio. Scusate per la lunga vacanza.",
		"Destro, sinistro. Mi ricordo come funziona.",
		"Camminare. Già. È quella cosa in cui le gambe fanno a turno.",
	},
	["journey.w14.down.049"] = {
		"Da qualche parte dietro di me una cavalcatura si gode il carico più leggero. Buon per lei.",
		"Il mio peso adesso è il sollievo di qualcun altro. Mi offenderei, se stare in piedi non mi facesse tanto piacere.",
		"Chi mi ha portato pensa già ad altro. Vorrei saperlo fare così in fretta.",
	},
	["journey.w14.down.050"] = {
		"tocca il suolo con il palmo della mano, appena un attimo, come si saluta qualcosa di vecchio e paziente, e si rialza.",
		"china il capo un momento all'atterraggio, una piccola cortesia privata verso qualunque cosa abbia vegliato su quel volo.",
	},
	["journey.w14.down.051"] = {
		"Il peso che avevo alla partenza non è sceso tutto con me. Qualcosa è rimasto lassù, e non credo che mi mancherà.",
		"Una delle mie preoccupazioni sta ancora volando. Che voli. Non ho nessuna intenzione di tornare a prenderla.",
		"Qualunque cosa mi tormentasse alla partenza, all'atterraggio non c'è arrivata. Tanto meglio.",
	},
	["journey.w14.down.052"] = {
		"I miei complimenti al terreno. Puntuale, robusto, proprio dove l'avevo lasciato.",
		"Affidabile, la terra. Non mi è mai volata via una volta.",
		"Ed ecco il terreno. Non sbatte le ali, non vira, non cala di colpo. Un capolavoro.",
	},
	["journey.w14.down.053"] = {
		"compie lentamente un giro completo, facendo combaciare ciò che vede ora con ciò che vedeva dall'alto.",
		"guarda da una parte e poi dall'altra, confrontando la terra ad altezza d'occhi con la mappa che era un attimo fa.",
		"individua un paio di cose viste dall'alto e fa loro un cenno, come a dei conoscenti.",
	},
	["journey.w14.down.054"] = {
		"Il volo mi porta vicino. L'ultimo tratto si fa sempre a piedi; nessuno ha mai trovato il modo di evitarlo.",
		"L'aria ha fatto la parte lunga. Quella corta, quella che conta, vuole ancora le gambe.",
		"Le ali mi portano vicino. Arrivare davvero è un lavoro che devono finire i piedi.",
	},
	["journey.w14.down.055"] = {
		"Ho visto passare un bel pezzo di mondo senza mai dover chiedere la strada. Non so bene cosa ho imparato, ma era tanto.",
		"Dopo una traversata così lunga, la terra sembra meno un elenco di posti e più una cosa sola, tutta unita.",
		"Abbastanza a lungo in volo da vedere come tutto, là sotto, sconfina in tutto il resto. Quaggiù i confini tornano.",
	},
	["journey.w14.down.056"] = {
		"Un momento. Voglio solo stare qui, in un posto preciso.",
		"Un attimo, per favore. Finora non ho fatto che passare sopra le cose; adesso voglio starci dentro.",
		"Aspetta. Lascia atterrare anche la testa.",
	},
	["journey.w14.down.057"] = {
		"guarda la cavalcatura allontanarsi con un'espressione fatta di gratitudine e sollievo in parti uguali, e non prova a scegliere.",
		"saluta con un cenno le ali che ripartono, poi si guarda intorno in fretta per vedere se qualcuno ha notato il cenno.",
	},
	["journey.w14.down.058"] = {
		"C'è un piacere semplice nel peso. Lassù ero un carico. Quaggiù mi appoggio al mondo e il mondo ricambia.",
		"Farsi portare va bene. Portarsi da sé va meglio: è l'unico lavoro che non devo mai spiegare a nessuno.",
		"Quaggiù ho un peso, e il peso vuol dire che posso spingere. Mi piace più che volare.",
	},
	["journey.w14.down.059"] = {
		"Quella sella non l'ha mai provata chi l'ha fatta. Ne vorrei parlare, ma in piedi.",
		"La forma di quella sella me la porterò addosso per un po'. Era una forma molto particolare.",
		"Io e quella sella siamo arrivati a un accordo: vince lei, e io smaltisco camminando.",
	},
	["journey.w14.down.060"] = {
		"Nota per il prossimo volo: appoggiarsi indietro, allentare la presa, e smettere di prepararsi all'atterraggio tre leghe prima.",
		"La prossima volta mangio qualcosa prima. E stringo un po' meno la cinghia. E magari me lo godo.",
		"Lezione del volo: l'atterraggio non è il momento di cominciare a godersi il panorama.",
	},
	["journey.w14.down.061"] = {
		"fa ruotare la testa da una spalla all'altra, lenta come una macina, finché il collo non rinuncia al suo rancore.",
		"fa girare le spalle in ampi cerchi, sciogliendo la forma che le cinghie ci hanno lasciato.",
		"si massaggia la nuca con una mano e fa una smorfia per quello che il volo le ha combinato.",
	},
	["journey.w14.down.062"] = {
		"Dovunque le ali mi lascino, il lavoro comincia da qui. Preferisco affrontarlo in piedi che da una sella.",
		"Qualunque cosa mi aspetti qui, ha aspettato senza sapere del mio arrivo. Questo mi dà la prima mossa.",
		"Grazie al volo ho del tempo in più. Quello che ne faccio comincia da questo pezzo di terra.",
	},
	["journey.w14.down.063"] = {
		"La parte veloce è fatta. Il resto me lo faccio a piedi.",
		"Fatta la parte veloce. Adesso quella lenta: arrivo.",
		"Finito il pezzo rapido. Quello lungo tocca a me.",
	},
	["journey.w14.down.064"] = {
		"Le gambe hanno la forma della sella e le mani quella della cinghia. Ci vorrà un po' di cammino per tornare alla mia, di forma.",
		"Quella traversata è durata tanto da smettere di essere un volo e diventare un posto dove ho abitato per un po'. Adesso ho traslocato.",
	},
	["journey.w14.down.065"] = {
		"scende alla fine della lunga traversata e resta in silenzio un momento, come per lasciare che tutta quella distanza {g:lo|la} raggiunga.",
		"smonta piano dopo il lungo volo, e per un po' sembra portarsi dietro gli occhi tutta l'ampiezza della terra.",
	},
	["journey.w14.down.066"] = {
		"È tanto mondo da attraversare stando seduti. La schiena dice che è stato tutto molto interessante.",
		"Farei una lega a piedi adesso, solo per ricordarmi che ne sono capace.",
	},
	["journey.w14.down.067"] = {
		"Per tutto quel tempo la mia vita è stata sulle ali di qualcun altro. È bello riaverla nelle mie mani maldestre.",
		"Per tutto il volo il mio destino è stato il lavoro di un altro. Adesso torna mio, e non so se le sue probabilità siano migliorate.",
		"Per tutto il volo ho rinunciato a ogni parola su dove andavo. Riprendermela è un piccolo piacere.",
	},
	["journey.w14.down.068"] = {
		"parte un po' {g:incerto|incerta}, e al decimo passo cammina come se non avesse mai lasciato la terra.",
		"si allontana con un leggero dondolio nelle prime falcate, che si spegne a ogni passo finché del volo non resta che uno sguardo all'insù.",
	},
	["journey.w14.down.069"] = {
		"Da lassù vedevo una dozzina di strade possibili. Quaggiù ne vedo due, e una è alle mie spalle.",
		"Lassù ogni sentiero era chiaro. All'altezza degli occhi tornano a nascondersi uno dietro l'altro.",
		"La vista dall'alto mi ha mostrato delle scorciatoie. La terra mi mostrerà perché nessuno le prende.",
	},
	["journey.w14.down.070"] = {
		"Ehi? Ehi. Bene, la voce funziona. Le orecchie arriveranno.",
		"Orecchie ancora piene d'aria. Chi vuole parlarmi, riprovi più tardi.",
	},
	["journey.w14.down.071"] = {
		"Non esiste un modo elegante di essere consegnati come un sacco di farina. La dignità me la riprendo a piedi.",
		"Il mio è stato l'arrivo di un bagaglio. Da qui in avanti intendo arrivare come una persona.",
		"Atterraggio da merce. Vorrei andarmene come qualcuno che ha uno scopo.",
	},
	["journey.w14.down.072"] = {
		"resta dove è {g:atterrato|atterrata} un momento più del necessario, senza guardare niente in particolare, lasciando che il silenzio del volo se ne vada piano.",
		"indugia un poco presso il punto d'atterraggio, senza fretta, come se il volo fosse una stanza da cui non si sente ancora {g:pronto|pronta} a uscire.",
	},
	["journey.w14.down.073"] = {
		"La terra non si muove. Lo so che non si muove. L'orecchio interno ha i suoi dubbi.",
		"Tutto è fermo. Troppo fermo. Dammi un minuto e smetto di piegarmi in curve che non ci sono.",
		"Una parte di me sta ancora virando a sinistra. Il resto ha presentato un reclamo.",
	},
	["journey.w14.down.074"] = {
		"La terra e io abbiamo affari in sospeso. Vediamo che cosa vuole per prima.",
		"Eccomi qui. Quello che viene dopo può venire a cercarmi, oppure lo cerco io.",
	},
	["journey.w14.down.075"] = {
		"Le ali coprono le distanze. I piedi servono a conoscere un posto. La prima cosa è fatta; la seconda comincia adesso.",
		"Il volo mostra la forma delle cose. Il cammino mostra di che cosa sono fatte. È ora di scoprirlo.",
		"Un posto visto dall'alto è solo una voce che gira su di lui. La verità sta all'altezza delle caviglie.",
	},
	["journey.w14.down.076"] = {
		"chiude gli occhi per un momento, i piedi ben piantati, e ascolta tornare i rumori ordinari della terra.",
		"resta un po' a occhi chiusi, lasciando che il mondo si rimetta a posto intorno senza bisogno di guardarlo.",
	},
	["journey.w14.down.077"] = {
		"Tanto tempo seduti che stare in piedi sembra un'idea nuova e audace. Comincia a piacermi.",
		"Abbastanza a lungo lassù da dimenticare a cosa servono le gambe. Me lo stanno ricordando, e senza garbo.",
		"Mi farebbe bene una passeggiata corta. Poi una lunga. Poi magari una terza, per sicurezza.",
	},
	["journey.w14.down.078"] = {
		"Ricordami perché avevo tanta voglia di saltare il cammino. Il fondoschiena ha qualche domanda.",
		"La prossima volta ricorderò che una sella è solo una sedia che ce l'ha con te.",
	},
	["journey.w14.down.079"] = {
		"Quaggiù nessuno ha visto il volo. Per quanto ne sanno, il mio arrivo è una specie di apparizione. Lascerò che credano fosse voluto.",
		"Ogni pensiero di lassù era solo mio. È come uscire da una piccola stanza privata.",
		"In volo non ero affare di nessuno. Quaggiù tornerò presto a esserlo di qualcuno.",
	},
	["journey.w14.down.080"] = {
		"si lascia cadere per l'ultimo piccolo tratto dalla sella e atterra con un grugnito più di sorpresa che di dolore.",
		"molla l'imbracatura e scivola giù, con meno dignità del previsto e più velocità.",
	},
	["journey.w14.down.081"] = {
		"Piano, piano. Fammi liberare il piede prima di andartene.",
		"Aspetta che io sia del tutto giù. Del tutto. Grazie.",
	},
	["journey.w14.down.082"] = {
		"Un arrivo è una piccola pagina pulita. Quello che ho fatto altrove è rimasto altrove, almeno per un momento.",
		"Il volo non ha saldato i miei debiti, però ci ha messo in mezzo una bella distanza.",
		"Ogni atterraggio è una porta aperta dall'altra parte. Mi piace l'aria che fa entrare.",
	},
	["journey.w14.down.083"] = {
		"scende dall'aria aperta come un viandante d'altri tempi che lascia una lunga strada, e la terra {g:lo|la} accoglie senza commenti.",
		"posa il piede, e la terra si prende il suo peso con la stessa pazienza con cui ha preso quello di ogni viaggiatore prima.",
	},
	["journey.w14.down.084"] = {
		"Le dita mi fanno male a forza di tenermi. Non sapevo di stringere così tanto finché non ho mollato.",
		"Mani rigide come cuoio vecchio. Tutta quella preoccupazione doveva finire da qualche parte: è finita nella presa.",
	},
	["journey.w14.down.085"] = {
		"E per questo ho pagato. Di mia volontà. Voglio che resti agli atti.",
		"Valeva ogni moneta, immagino. Le gambe vorrebbero un rimborso.",
		"Soldi ben spesi. Chiedimelo di nuovo quando mi sentirò i piedi.",
	},
	["journey.w14.down.086"] = {
		"Laggiù dietro di me ci sono cento posti che ho sorvolato e dove forse non metterò mai piede. I voli lunghi me lo fanno sentire più di tutto.",
		"Tutta quella terra è scivolata sotto di me, e metà non saprei nominarla. Mi porto dietro una veduta per cui non ho parole.",
	},
	["journey.w14.down.087"] = {
		"sbadiglia sonoramente appena tocca terra, come se il volo fosse stato un pisolino lungo e un po' scomodo.",
		"allunga le braccia sopra la testa, poi sembra decidere che tendersi verso l'alto può aspettare, e le abbassa.",
	},
	["journey.w14.down.088"] = {
		"Dopo tanta aria, la terra sembra una faccenda molto personale. Ogni sassolino ha qualcosa da dire ai miei piedi.",
		"Lassù non mi toccava niente se non l'aria in corsa. Quaggiù tutto preme, spinge, si mette in mezzo. Ed è bello.",
	},
	["journey.w14.down.089"] = {
		"Coraggio. Hai fatto cose più difficili che stare in piedi.",
		"Su, in piedi. La terra non scappa, e a quanto pare nemmeno le gambe.",
	},
	["journey.w14.down.090"] = {
		"lancia un ultimo sguardo verso l'alto, si assesta lo zaino e si avvia a grandi passi, come se la terra aspettasse proprio questo.",
		"volta le spalle all'atterraggio senza cerimonie e cammina incontro a ciò che viene dopo, il volo già dimenticato.",
	},
	["journey.w14.down.091"] = {
		"Giorni di cammino ripiegati in una sola lunga seduta. Non so decidere se ho imbrogliato la strada o se lei ha imbrogliato me.",
		"La distanza è vera. Solo che non l'ho sentita affatto, e mi sembra una cosa che in qualche modo pagherò.",
	},
	["journey.w14.down.092"] = {
		"Oplà. La terra va bene, sono io che pendo da una parte.",
		"Ferme, gambe. Ferme. Così. Guardatevi, camminate.",
	},
	["journey.w14.down.093"] = {
		"Alzo gli occhi e tutta la strada appena percorsa è sparita senza un segno. L'aria non tiene impronte.",
		"Lassù c'è una strada senza solchi e senza cartelli. L'ho percorsa e non ci ho lasciato niente. Strana strada.",
	},
	["journey.w14.down.094"] = {
		"allenta le fibbie con dita ancora goffe per la presa, e si libera dell'imbracatura con un piccolo verso di gratitudine.",
		"sgancia l'ultima cinghia, e per un momento sembra non sapere che fare di mani che non hanno più niente da stringere.",
	},
	["journey.w14.down.095"] = {
		"Durante il viaggio ho visto laggiù qualcosa di strano, un po' di lato. A piedi non lo ritroverò mai, e continuerò a chiedermelo.",
		"A metà strada c'è stato un momento in cui avrei voluto saltare giù per andare a vedere una cosa. Meno male che non l'ho fatto. Resta la curiosità.",
	},
	["journey.w14.down.096"] = {
		"Terra, ti saluto. Mi sei mancata, un poco.",
		"Ciao, terra. Non facciamo gli estranei.",
	},
	["journey.w14.down.097"] = {
		"Il corpo è arrivato. Il resto di me è ancora a metà viaggio, e se la prende comoda.",
		"Una traversata così lunga mi lascia come dopo aver dormito nel letto sbagliato. Niente fa male davvero; niente è proprio dove l'avevo lasciato.",
	},
	["journey.w14.down.098"] = {
		"esce dalla sella dopo il lungo tragitto con tutta la grazia di una sedia pieghevole arrugginita.",
		"ci mette tre tentativi a scavalcare la sella, dopo un volo così lungo, e finge che i primi due fossero di riscaldamento.",
	},
	["journey.w14.down.099"] = {
		"Gente, di nuovo. Mi serve un momento per ricordarmi come si fa ad avere l'aria di chi sa dove va.",
		"Facce, voci, qualcuno che vuole passare. Quaggiù il mondo è pieno di cose che non sono me.",
	},
	["journey.w14.down.100"] = {
		"Consegna effettuata. Quasi intatta. Firmi qui.",
		"Pacco arrivato. Lievemente ammaccato.",
	},
	["journey.w14.down.101"] = {
		"Quando scendo mi stupisco sempre un po' che il mondo sia andato avanti senza che lo guardassi. Non ha mai tanto bisogno di me quanto credo.",
		"Il mondo se l'è cavata benissimo mentre gli passavo sopra. Utile ricordarselo, ogni tanto.",
	},
	["journey.w14.down.102"] = {
		"lancia uno sguardo in alto, vagamente accusatorio, come se il cielo si fosse tenuto qualcosa di suo.",
		"rivolge all'aria aperta lassù un ultimo cenno, come tra due parti che hanno concluso un affare e non hanno fretta di rivedersi.",
	},
	["journey.w14.down.103"] = {
		"Le altezze sono alle spalle. Che la terra porti quello che ha.",
		"L'aria ha avuto il suo turno. Adesso tocca alla terra.",
	},
	["journey.w14.down.104"] = {
		"Le gambe hanno convocato un'assemblea. Mozione: mai più stare fermi così a lungo. Approvata.",
		"Rapporto dalla metà inferiore: formicolio, lieve indignazione, per il resto tutto funziona.",
	},
	["journey.w14.down.105"] = {
		"Più in fretta che a piedi, con il doppio del capogiro. Mi sta bene.",
		"Meno tempo per strada vuol dire più tempo per i guai che ci sono in fondo. Non so se sia un affare.",
	},
	["journey.w14.up.001"] = {
		"Tutta la mia parte è stata pagare il viaggio e salire. Da qui in poi decidono le ali.",
		"La meta l'ho scelta io. Le altre decisioni non sono mai state mie, e scopro che non mi mancano.",
		"Qualcun altro guida, qualcun altro conosce le curve. A me si chiede soltanto di non cadere.",
	},
	["journey.w14.up.002"] = {
		"Nessuna commissione sta in una sella. Per una volta, starsene con le mani in mano è la cosa più utile che posso fare.",
		"Un tratto senza niente da portare, niente da andare a prendere, nessuno a cui rispondere. Potrei affezionarmi a quest'ozio.",
		"Mani in mano, e nessuno che me lo rinfacci. È la parte migliore di ogni viaggio.",
	},
	["journey.w14.up.003"] = {
		"Una lista, già che c'è tempo. Ricucire lo strappato, vendere l'inutile, dormire dove c'è una porta.",
		"In sella c'è tutto il tempo per pensare. Prima cosa all'atterraggio: scoprire che cosa ho dimenticato di fare.",
		"I prossimi giorni li organizzo qui sopra. I piani fatti così in alto sembrano sempre più ordinati di come poi vanno.",
	},
	["journey.w14.up.004"] = {
		"Mani, smettetela. Queste cinghie hanno retto sciocchi più pesanti di me.",
		"Le dita si sono serrate sulla cinghia. Si apriranno quando vorranno loro, e non un attimo prima.",
		"Da qui sopra non cade nessuno. L'ho deciso io, e mi ci aggrappo, insieme a tutto il resto.",
	},
	["journey.w14.up.005"] = {
		"Quel primo strattone coglie il corpo alla sprovvista, come se nessuno si fosse preso la briga di avvisarlo.",
		"Lo strattone, lo stomaco che scende, poi la lunga tirata verso l'alto. Il corpo prima protesta, poi ammira.",
		"Per un attimo tutto in me vorrebbe riacchiappare la terra. Poi è troppo lontana per afferrarla.",
	},
	["journey.w14.up.006"] = {
		"Da qui la terra smette di essere un elenco di pericoli e diventa un disegno. Grazioso, e del tutto incapace di raggiungermi.",
		"Tutto quello che laggiù mi costringeva a stare in guardia, da qui è una macchia. La distanza è una specie di misericordia.",
		"L'altezza toglie i denti alle cose. Qualunque cosa si aggiri là in fondo è un puntino fra i puntini.",
	},
	["journey.w14.up.007"] = {
		"Qualunque peso avessi addosso quando sono {g:salito|salita}, a questa velocità non riesce a reggersi. Che cada dove vuole.",
		"Certe preoccupazioni pesano più di uno zaino pieno. Curioso come in sella non ci salgano mai.",
		"I guai lasciati indietro mi aspetteranno da qualche parte. Quassù, però, non hanno diritto di parola.",
	},
	["journey.w14.up.008"] = {
		"Nessun messaggero vola così in fretta. Qualunque cosa vogliano da me, dovranno aspettare che atterri.",
		"Nessuno può chiamarmi, farmi segno o chiedermi un favore. È il posto più riservato del mondo, e si muove.",
		"Per tutta la durata del volo sono introvabile. Non è nascondersi se nessuno cerca, ma ci somiglia molto.",
	},
	["journey.w14.up.009"] = {
		"Bella vista. Sempre bella. Sì, bella anche adesso. Quanto dura, il bello?",
		"La meraviglia dura più o meno fino alla prima virata. Poi resta una lunga seduta con lo spiffero.",
		"Potrei contare i colpi d'ala. Potrei. Non lo farò, ma il fatto che ci stia pensando la dice lunga.",
	},
	["journey.w14.up.010"] = {
		"Tanto mondo, e tutto intento alle sue faccende senza mai alzare gli occhi. Mi sento un segreto.",
		"Di qualunque cosa sia fatta la terra, da quassù sembra che valesse la pena di farla.",
		"C'è tutto, là sotto, ogni pezzo insieme, e niente sa di essere guardato.",
	},
	["journey.w14.up.011"] = {
		"Questa cavalcatura ha fatto la rotta più volte di quante io abbia attraversato una stanza. Fidati di chi conosce la strada.",
		"Non guarda giù, non esita. Se non si preoccupa chi vola, non ne ho il diritto io.",
		"Bene. I colpi d'ala si sono assestati in qualcosa di regolare. Del regolare mi fido.",
	},
	["journey.w14.up.012"] = {
		"Chi sta là sotto non alza mai gli occhi. Potrei passargli proprio sopra la testa e sentirebbe solo lo spostamento d'aria.",
		"Da qualche parte sotto di me qualcuno contratta, qualcuno si è perso, qualcuno sonnecchia. Nessuno sa che sto passando.",
		"Nemmeno un viso rivolto in su. Passare inosservati non è mai stato così piacevole.",
	},
	["journey.w14.up.013"] = {
		"Ho pagato bene questo posto. Intendo godermelo tutto, anche i pezzi che mi fanno stringere più forte.",
		"Il modo più economico di macinare strada senza spendere un solo passo. Vale ogni moneta che ho sborsato.",
		"Il prezzo è pagato e indietro non torna, tanto vale farlo fruttare guardando ogni cosa.",
	},
	["journey.w14.up.014"] = {
		"La corsa dell'aria mi riempie le orecchie finché non c'è più posto per i miei pensieri. Un silenzio raro, fatto di rumore.",
		"Quassù l'aria rugge così uguale da diventare silenzio. Non sapevo che il rumore potesse fare una cosa simile.",
		"Quassù c'è un tale frastuono che pensare costa fatica, e allora smetto. È riposante, in un modo un po' manesco.",
	},
	["journey.w14.up.015"] = {
		"Ho lasciato indietro qualcosa? Troppo tardi per controllare. Qualunque cosa fosse, ora è il tesoro di qualcun altro.",
		"Zaino addosso, cinghie strette, e se ho dimenticato qualcosa, dovrà imparare a cavarsela senza di me.",
	},
	["journey.w14.up.016"] = {
		"Alla cavalcatura non importa chi sono o che cosa ho fatto. Per lei sono un peso sul lato sinistro, un po' troppo indietro.",
		"Per quanto io mi stimi, le ali vedono un pacco. Creature oneste.",
		"Titoli, imprese, debiti: in sella non conta niente. Qui sopra sono merce con delle opinioni.",
	},
	["journey.w14.up.017"] = {
		"Non appisolarti. Non appisolarti. Il dondolio è molto convincente, ma addormentarsi in sella è una storia che finisce male.",
		"Gli occhi si chiudono da soli. Li faccio riposare un attimo, e mi tengo con tutto il resto.",
		"Il dondolio, niente da fare: chi ha inventato questi voli mi vuole addormentare, e non gli darò questa soddisfazione.",
	},
	["journey.w14.up.018"] = {
		"Ogni popolo che abbia mai alzato gli occhi deve aver desiderato questo. E io sono qui a desiderare un cuscino.",
		"Quante generazioni sono rimaste a terra a invidiare gli uccelli? Il loro desiderio lo prendo in prestito per la durata di un volo.",
		"Le ali erano il desiderio più antico, più antico dell'oro. Le ho in prestito, e la mia lamentela principale è il sedile.",
	},
	["journey.w14.up.019"] = {
		"Laggiù la strada la misuro in passi e piedi doloranti. Quassù si misura in colpi d'ala, e nessuno è mio.",
		"In aria la distanza vuol dire un'altra cosa. La terra scorre via e io non ho mosso un muscolo per meritarmela.",
		"Le leghe passano senza che io dica niente. Sembra un po' un imbroglio, e non mi dispiace affatto.",
	},
	["journey.w14.up.020"] = {
		"Per un po' niente là sotto può toccarmi. Questa sensazione la tengo in tasca per dopo.",
		"Più {g:leggero|leggera}. Non nel corpo, che pesa come ha sempre pesato, ma da qualche parte dietro le costole.",
		"Per ora niente laggiù può reclamarmi. Potrei abituarmi a non essere di nessuno.",
	},
	["journey.w14.up.021"] = {
		"Se qualcosa va storto a quest'altezza, almeno non avrò molto tempo per pentirmene. Strano conforto, ma è il mio.",
		"Una fibbia allentata tra me e una brevissima carriera da uccello. L'ho controllata due volte. Una terza non guasta.",
		"Cadere, almeno, sarebbe rapido. Lo dico solo perché i nervi sappiano che ho preso in esame la loro obiezione.",
	},
	["journey.w14.up.022"] = {
		"Salendo non mi sono {g:voltato|voltata}. Mi volto adesso, e quel che ho lasciato è già troppo piccolo per salutarlo.",
		"Un'occhiata da sopra la spalla. Il punto dove stavo un attimo fa è sparito nella sfocatura, e tanto basta.",
	},
	["journey.w14.up.023"] = {
		"Quelle ali fanno tutto il lavoro mentre io sto qui come un sacco di farina. Il minimo è non agitarsi.",
		"Sotto la sella i muscoli lavorano senza sosta. Mi porta la fatica di qualcun altro, e farei bene a ricordarmelo.",
		"Ogni colpo d'ala costa qualcosa alla cavalcatura e niente a me. Qualcuno dovrebbe ringraziare. Lo farò io.",
	},
	["journey.w14.up.024"] = {
		"La terra c'era molto prima che qualcuno le volasse sopra, e ci sarà quando l'ultima ala si chiuderà. Il traffico non la disturba.",
		"Da così in alto il suolo ha un'aria paziente. Ha visto ogni viaggiatore e non ne ricorda nessuno.",
		"Sotto tutte le strade e le liti, la terra se ne sta lì, a fare la terra. C'è una calma, in questo, che vale la pena portarsi dietro.",
	},
	["journey.w14.up.025"] = {
		"Tutte le strade che altrimenti starei percorrendo, ed eccole lì, che vanno avanti senza di me. Mi perdoneranno.",
		"Strade là sotto, che si arricciano e tornano indietro. Da quassù vedo ogni punto in cui hanno perso tempo.",
		"Da terra una strada sembra così sicura di sé. Dall'alto, metà di loro pare che improvvisi.",
	},
	["journey.w14.up.026"] = {
		"Cinghia, fibbia, zaino, cinghia. Il mio piccolo rito prima di consegnarmi all'aria.",
		"Mani sul davanti della sella, occhi avanti. C'è un modo giusto di cominciare un volo, anche se l'ho inventato io.",
		"Presa salda, schiena dritta, un cenno a nessuno. Ogni viaggio merita un inizio che abbia una forma.",
	},
	["journey.w14.up.027"] = {
		"Con un briciolo di buon senso avrei comprato da mangiare prima di salire. Il buon senso l'ho lasciato al banco.",
		"Chissà quanto dura, e lo stomaco già reclama. La prossima volta prima il pane in tasca, poi l'avventura.",
		"Un pezzo di formaggio trasformerebbe questo volo in un banchetto. Invece ho la vista, che sazia meno.",
	},
	["journey.w14.up.028"] = {
		"Quassù mi sento poca cosa, e non è sgradevole. Quasi tutto ciò che mi preoccupa era fatto su misura per la terra.",
		"Chiunque io sia laggiù, qui sopra sono {g:un passeggero|una passeggera}. C'è una lezione, da qualche parte. La troverò dopo.",
		"Farsi portare è una piccola umiltà. Ogni tanto mi fa bene.",
	},
	["journey.w14.up.029"] = {
		"Vorrei far presente che io avrei preso un'altra strada. Nessuno me l'ha chiesto. Nessuno chiede mai al carico.",
		"Vira a sinistra per una ragione che non vedo. Va bene. Chi vola ha le ali; io ho soltanto le opinioni.",
		"Chi traccia queste rotte non mi ha mai chiesto consiglio. A giudicare dalla deviazione, dovrebbe cominciare.",
	},
	["journey.w14.up.030"] = {
		"Quassù i pensieri vengono più limpidi. Forse è la distanza. Forse è che niente può interromperli.",
		"A terra mille piccole cose mi tirano per la manica. In sella restano solo i pensieri abbastanza pesanti da non volare via.",
		"C'è qualcosa nell'altezza che mette in fila i problemi. I grossi davanti, i meschini che cadono di dietro.",
	},
	["journey.w14.up.031"] = {
		"Tutto quello che laggiù voleva un pezzo di me dovrà mettersi in fila, e prima imparare a volare.",
		"Sotto di me ci sono cose con i denti e con i rancori. Sopra ci sono io, che per un po' non devo niente a nessuno.",
		"Nell'aria vuota non si tendono agguati. L'unica cosa quassù che trama contro di me è la mia fame.",
	},
	["journey.w14.up.032"] = {
		"Ogni colpo d'ala mi solleva come una mano sotto le costole. Ne sento la forza attraverso la sella.",
		"La spinta di quelle ali è la cosa più forte su cui io mi sia mai {g:seduto|seduta}. Il rispetto è l'unico sentimento ragionevole.",
		"Tutta quella forza, spesa per portare me. Cercherò di meritarla, ovunque si vada a finire.",
	},
	["journey.w14.up.033"] = {
		"Il rumore della terra si dirada in fretta: voci, passi, la lite di qualcuno. Resta l'aria, e le ali.",
		"Un attimo fa c'era chiacchiericcio tutt'intorno. Ora la cosa più rumorosa della mia vita è l'ala accanto al ginocchio.",
		"Alle spalle tutto quel chiasso. Davanti solo la corsa dell'aria e le ali, e non ho nessuna fretta di fare cambio.",
	},
	["journey.w14.up.034"] = {
		"La testa mi si è svuotata. Non in senso brutto. Spazzata, come un pavimento prima degli ospiti.",
		"Niente piani, niente pensieri, niente liste. Solo l'aria che passa. Non sapevo di esserne ancora capace.",
		"In testa solo la corsa dell'aria e il ritmo. Se l'ozio è questo, finora me lo sono {g:perso|persa}.",
	},
	["journey.w14.up.035"] = {
		"Dovunque finisca, ci sarà qualcosa ad aspettarmi che non ho visto arrivare. Scopro che la cosa mi fa piacere.",
		"Ogni volo atterra in un posto nuovo, anche quando è un posto vecchio. Chi scenderà non sarà proprio chi è salito.",
	},
	["journey.w14.up.036"] = {
		"I piedi si sono zittiti. Credono che sia la loro ricompensa, e non sarò io a contraddirli.",
		"Ogni dolore della terra è salito con me, ma almeno nessuno peggiora.",
		"Stare seduti e andare veloci nello stesso momento. Chi l'ha pensata merita una statua, o almeno un pisolino.",
	},
	["journey.w14.up.037"] = {
		"Le altezze non mi danno fastidio, se non ci penso. Quindi: pensare ad altro. A qualunque altra cosa. La zuppa.",
		"Guardare avanti, non sotto. Davanti c'è solo aria, e l'aria non ha mai fatto male a chi ci resta dentro.",
		"Se tengo gli occhi sul collo della cavalcatura, il vuoto è solo una diceria. Ignorare le dicerie mi riesce bene.",
	},
	["journey.w14.up.038"] = {
		"Laggiù tutto corre. Quassù l'unica cosa che non ha fretta sono io, e vado più veloce di tutto il resto.",
		"Strano starsene immobili e coprire terreno più in fretta di qualunque viandante.",
	},
	["journey.w14.up.039"] = {
		"Quassù nessuno mi vede in faccia. Se il viso si lascia andare, l'aria terrà il segreto.",
		"Un buon posto per pensare quello che non dico ad alta voce. La corsa dell'aria se lo porterebbe via comunque.",
		"Qualunque cosa provi, qui non c'è nessuno a leggerla. Per una volta posso lasciarla vedere, fino a dove si atterra.",
	},
	["journey.w14.up.040"] = {
		"Da qualche parte là sotto c'è ogni errore che ho commesso a piedi. Da quest'altezza nessuno sembra fatale.",
		"A quest'altitudine la prospettiva costa poco. Proverò a portarne giù un po' con me.",
	},
	["journey.w14.up.041"] = {
		"Paura? Un po'. Quanto basta per tenersi bene, che è la dose utile.",
		"Certa paura è solo buon senso con la voce grossa. La lascio gridare, e non mollo la presa.",
		"La paura è salita in sella anche lei. Finché siede dietro e tiene le mani a posto, può restare.",
	},
	["journey.w14.up.042"] = {
		"Sali, plana, sali. Il ritmo mi entra nelle ossa come il dondolio di una culla.",
		"C'è un'oscillazione, su e giù e avanti, che il corpo impara presto. Il mio sta imparando.",
		"Finita la salita il movimento si fa gentile, quasi educato, come se la cavalcatura sapesse del mio nervosismo.",
	},
	["journey.w14.up.043"] = {
		"Mi portano via come un sacco di posta. Almeno la posta il viaggio non lo paga.",
		"Da qualche parte un mercante spedisce casse così. Stavolta la cassa sono io.",
	},
	["journey.w14.up.044"] = {
		"Questa è la strada senza polvere e senza solchi, quella che nessuno stivale ha mai consumato. Ci sono sopra, per un poco.",
		"La strada più alta del mondo, e l'unica che non chiede niente alle mie gambe.",
		"Niente pedaggi, niente incroci, niente fango. Se le strade sognassero, sognerebbero questo.",
	},
	["journey.w14.up.045"] = {
		"Quando atterro, la prossima mossa toccherà a me. Fino ad allora sono fuori servizio, e intendo prenderla sul serio.",
		"Fuori servizio, per ordine delle ali. Riprenderò tutto quando avrò la terra sotto i piedi.",
		"Qualunque cosa mi aspetti, può aspettare ancora un po'. Mi stanno portando, e chi viene portato non ha obblighi.",
	},
	["journey.w14.up.046"] = {
		"Le persone che ho lasciato si fanno più piccole, ma non meno mie. L'altezza non cambia questo.",
		"Chiunque abbia salutato, o non abbia salutato, è laggiù da qualche parte. L'aria non porta messaggi, quindi questo lo tengo per me.",
	},
	["journey.w14.up.047"] = {
		"dà a ogni cinghia un ultimo strattone mentre il suolo si allontana, poi un secondo, non si sa mai.",
		"controlla la fibbia al fianco, la trova chiusa, e la controlla comunque.",
		"passa il pollice lungo l'imbracatura, fibbia dopo fibbia, mentre la cavalcatura prende quota.",
	},
	["journey.w14.up.048"] = {
		"sbanda all'indietro sulla sella quando le ali mordono l'aria, e afferra la cinghia più vicina con tutte e due le mani.",
		"viene {g:schiacciato|schiacciata} contro il sedile dal primo grande colpo d'ala, e si lascia scappare un versetto poco dignitoso.",
		"oscilla all'indietro quando la cavalcatura balza su, con una mano che annaspa finché non trova una cinghia.",
	},
	["journey.w14.up.049"] = {
		"rischia un'occhiata dritta in basso, e poi trova molto interessante lo spazio davanti a sé per un bel pezzo.",
		"sbircia oltre il fianco, si irrigidisce, e decide che la vista migliore è quella davanti.",
	},
	["journey.w14.up.050"] = {
		"allenta la presa sulle cinghie un poco a ogni colpo d'ala regolare, finché a tenersi resta una mano sola.",
		"si rilassa per gradi: prima le spalle, poi la mascella, poi, a malincuore, le mani.",
	},
	["journey.w14.up.051"] = {
		"sposta il peso finché la sella smette di discutere, e si accomoda come chi non ha nessun posto dove andare.",
		"trova l'unico modo comodo di stare in sella, e non lo cederebbe per niente al mondo.",
		"si dimena una volta, due, e poi si ferma con l'aria di chi ha finalmente trovato la posizione giusta.",
	},
	["journey.w14.up.052"] = {
		"si volta una volta sola verso il punto da cui ha preso il volo, anche se non resta altro da vedere che distanza.",
		"si gira sulla sella per un'ultima occhiata alle spalle, poi torna a guardare avanti e non si volta più.",
		"guarda indietro da sopra una spalla per un lungo momento, come se dicesse a quel luogo qualcosa che nessun altro deve sentire.",
	},
	["journey.w14.up.053"] = {
		"dà una pacca decisa sul collo della cavalcatura, come si ringrazia in anticipo un traghettatore.",
		"si sporge in avanti a posare una mano sul collo della bestia, e sente sotto il lavoro regolare dei muscoli.",
		"rivolge alla cavalcatura una parola sommessa e le gratta il collo, là dove arriva l'imbracatura.",
	},
	["journey.w14.up.054"] = {
		"chiude gli occhi durante la salita e li riapre solo quando la cavalcatura si è messa in piano.",
		"tiene gli occhi serrati per tutto il tratto ripido, e poi finge di aver ammirato il panorama fin dall'inizio.",
	},
	["journey.w14.up.055"] = {
		"allunga una mano dietro per accertarsi che lo zaino ci sia ancora, e qualche momento dopo ripete il gesto.",
		"si stringe lo zaino addosso quando l'aria comincia a tirarlo, come se potesse decidere di andarsene per conto suo.",
	},
	["journey.w14.up.056"] = {
		"si sporge quanto le cinghie consentono, e si beve con curiosità tutto il mondo che si apre là sotto.",
		"si raddrizza in sella mentre la terra si spalanca sotto, con lo sguardo che corre da un capo all'altro.",
		"allunga il collo oltre la spalla della cavalcatura per seguire il suolo che si allontana, senza volerne perdere un pezzo.",
	},
	["journey.w14.up.057"] = {
		"mormora qualcosa alla cavalcatura, e l'aria in corsa se lo porta via prima che chiunque possa sentirlo.",
		"dice qualche parola sottovoce all'aria davanti a sé, per le ali, o forse per nessuno.",
		"parla alla cavalcatura a voce bassa e regolare per tutta la salita, come si parla a chi è nervoso; non è chiaro chi dei due lo sia.",
	},
	["journey.w14.up.058"] = {
		"sbadiglia di gusto alla fine della salita, e si accomoda con l'aria di chi ha pagato per un pisolino.",
		"infila le mani contro l'imbracatura e lascia che la testa ciondoli al ritmo delle ali.",
	},
	["journey.w14.up.059"] = {
		"ondeggia nella prima lunga virata, corregge troppo, ondeggia dall'altra parte, e alla fine rinuncia e lascia fare alla cavalcatura.",
		"si inclina insieme alle ali in virata, con l'aria vagamente tradita, poi si raddrizza quando la curva finisce.",
		"si piega dalla parte sbagliata nella prima virata, si accorge dell'errore, e si piega da quella giusta con enorme compostezza.",
	},
	["journey.w14.up.060"] = {
		"strizza gli occhi contro l'aria in corsa, che punge, e decide che la vista lo vale.",
		"abbassa la testa dietro il collo della cavalcatura per sfuggire alla spinta dell'aria, e guarda la terra scorrere da lì.",
	},
	["journey.w14.up.061"] = {
		"conta con una mano le monete rimaste nella borsa, tenendosi con l'altra, e fa una smorfia davanti al totale.",
		"dà un colpetto alla borsa più leggera appesa alla cintura e decide che, tutto sommato, il prezzo era giusto.",
	},
	["journey.w14.up.062"] = {
		"cerca di mantenere un'espressione seria mentre la cavalcatura sale, non ci riesce, e smette di provarci.",
		"si lascia sfuggire una breve risata mentre la terra si allontana, {g:sorpreso|sorpresa} dal suono.",
		"sorride come uno sciocco a niente di preciso mentre le ali {g:lo|la} portano più in alto.",
	},
	["journey.w14.up.063"] = {
		"stringe la mascella quando la cavalcatura si lancia, {g:deciso|decisa} a godersela, piaccia o non piaccia.",
		"si tiene saldamente, pianta le ginocchia contro la sella e fissa lo sguardo avanti, come chi raccoglie una sfida.",
		"raddrizza le spalle al momento del decollo, come se l'aria fosse un avversario da affrontare a viso aperto.",
	},
	["journey.w14.up.064"] = {
		"acchiappa il capo libero di una cinghia prima che l'aria lo porti via, e lo annoda con una cura esagerata.",
		"mette al sicuro tutto quello che potrebbe volare via, un oggetto dopo l'altro, finché niente sbatte più.",
	},
	["journey.w14.up.065"] = {
		"canticchia qualcosa di stonato a salita finita, troppo piano perché lo noti altri che la cavalcatura.",
		"tamburella con le dita sulla sella a tempo con i colpi d'ala, distrattamente, con aria soddisfatta.",
	},
	["journey.w14.up.066"] = {
		"appoggia il mento su un pugno e guarda il mondo passare, con la pazienza di chi assiste a uno spettacolo.",
		"poggia un gomito sul bordo della sella e guarda la terra scorrere, senza fretta e senza pensieri.",
		"si mette a guardare, il mento basso, mentre la terra scorre via senza alcuna premura.",
	},
	["journey.w14.up.067"] = {
		"alza una mano in un piccolo saluto alla terra che si allontana, come ci si congeda da un anziano.",
		"china il capo per un istante al momento del decollo, una cortesia privata alla terra che si lascia.",
	},
	["journey.w14.up.068"] = {
		"fa ruotare le spalle quando la salita si spiana, e le lascia cadere, sciolte, finalmente.",
		"scuote una mano, poi l'altra, indolenzite dalla stretta, e le riposa sulle cinghie con più delicatezza.",
	},
	["journey.w14.up.069"] = {
		"indica qualcosa molto più in basso, apre la bocca per commentare, e si accorge che non c'è nessuno a cui dirlo.",
		"segue un puntino che si muove su una strada laggiù, finché la rotta della cavalcatura non lo lascia indietro.",
		"si volta per fare un commento a qualcuno, ricorda che c'è solo la cavalcatura, e lo rivolge a lei.",
	},
	["journey.w14.up.070"] = {
		"allarga un braccio nell'aria in corsa per un momento, poi ci ripensa e afferra la cinghia.",
		"offre il viso alla spinta della salita e lascia che si porti via qualunque cosa {g:gli|le} pesasse addosso.",
	},
	["journey.w14.up.071"] = {
		"ricambia il saluto del maestro di volo, che sta già servendo il cliente successivo.",
		"rivolge al maestro di volo un cenno sicuro al decollo, e perde la sicurezza da qualche parte sopra il primo vuoto.",
	},
	["journey.w14.up.072"] = {
		"prova diversi modi di stare in sella prima di trovare quello che segue le ali invece di contrastarle.",
		"impara il ritmo della cavalcatura in una dozzina di colpi d'ala e comincia, quasi, ad assecondarlo invece di subirlo.",
	},
	["journey.w14.up.073"] = {
		"osserva il suolo che si allontana con un'espressione a metà tra la meraviglia e il ripensamento.",
		"guarda in basso con gli occhi spalancati mentre la terra si apre, e poi, piano piano, comincia a sorridere.",
		"ammutolisce mentre la terra si apre sotto, ogni pensiero indaffarato messo da parte per un momento.",
	},
	["journey.w14.up.074"] = {
		"si appiattisce contro il collo della cavalcatura mentre sale, rimpicciolendosi contro la corsa dell'aria.",
		"si china basso e in avanti sulla sella, come fa chi vuole diventare parte della velocità.",
	},
	["journey.w14.up.075"] = {
		"pesca una crosta di pane dalla tasca appena finita la salita, e la mangia con la soddisfazione di chi è in vacanza.",
		"scarta un boccone con grande attenzione, sapendo bene che qualunque cosa cada da quassù è persa per sempre.",
		"tira fuori qualcosa da masticare appena la cavalcatura si mette in piano, come chi sa usare il tempo morto.",
	},
	["journey.w14.up.076"] = {
		"per prova lascia la presa con una mano, mantiene la posa per un istante, e la rimette al suo posto con grande dignità.",
		"prova a stare in sella senza mani, per pochissimo, e poi non ne parla con nessuno.",
	},
	["journey.w14.up.077"] = {
		"guarda l'ala accanto a sé alzarsi e abbassarsi, alzarsi e abbassarsi, con l'attenzione di chi impara un mestiere.",
		"non riesce a smettere di guardare le ali al lavoro: lo slancio, la spinta, la piega. Passa parecchio prima che guardi altrove.",
		"inclina la testa per seguire ogni colpo d'ala, {g:affascinato|affascinata}, come se contarli fosse un'arte da imparare.",
	},
	["journey.w14.up.078"] = {
		"Vai pure, allora. Io sto qui sopra a tenermi forte e a fingere calma.",
		"Le ali tue, il peso mio. Mi pare uno scambio onesto.",
		"Tutto tuo. Cerca di ridurre al minimo gli scossoni.",
	},
	["journey.w14.up.079"] = {
		"È alto. È molto alto. Smetto di fare la cronaca.",
		"Su, su, sempre più su. Ma ce l'ha una cima, questa cosa?",
		"Quanta strada fino a terra. Continuo a notarlo, in silenzio, per conto mio.",
	},
	["journey.w14.up.080"] = {
		"Mi fido di te, ciecamente. Per favore, non farmi pentire di averlo detto ad alta voce.",
		"Tu sai dove stai andando. Io sono il bagaglio che annuisce.",
	},
	["journey.w14.up.081"] = {
		"Ah! Ma guarda un po'. Tutto quanto, tutto insieme.",
		"Oh, che spettacolo. Che spettacolo davvero.",
		"Guarda quanta roba! No, sul serio, guarda.",
	},
	["journey.w14.up.082"] = {
		"Svegliami se succede qualcosa di interessante. Anzi, no. Quassù non deve succedere niente.",
		"Se in questo viaggio capita qualcosa di emozionante, vorrei essere {g:avvisato|avvisata}. E poi vorrei che non capitasse.",
	},
	["journey.w14.up.083"] = {
		"Addio, terra. Tienimi il posto caldo.",
		"A dopo, terra. Cerca di non spostarti mentre sono via.",
	},
	["journey.w14.up.084"] = {
		"Si tratta solo di stare seduti. Stare seduti mi riesce benissimo. Questo è stare seduti, ma in alto.",
		"È solo una sedia con le sue idee. Una sedia che vola. Va bene. Va bene.",
	},
	["journey.w14.up.085"] = {
		"Partenza liscia. Molto liscia. Ti consiglierei a chiunque.",
		"Bel lavoro, la salita. Ti darei una mancia, ma la faresti cadere.",
		"Bel decollo. Se c'è un modulo per i complimenti, ne compilo uno.",
	},
	["journey.w14.up.086"] = {
		"Così sì che si lascia un posto. Niente camminate, niente occhiate indietro.",
		"Ah! Fuori dalla portata di tutto. Una meraviglia.",
	},
	["journey.w14.up.087"] = {
		"È lungo, questo? Non che mi dispiaccia. Alle gambe forse sì.",
		"Hai idea di quanto manca? No? Nemmeno io. Bene, allora.",
	},
	["journey.w14.up.088"] = {
		"Niente acrobazie, d'accordo? Niente picchiate, niente virate strette. Un volo noioso è un buon volo.",
		"Linee dritte, per favore. Le curve sono per chi ha uno stomaco migliore del mio.",
		"Un volo tranquillo, per favore. Niente sorprese, niente esibizioni.",
	},
	["journey.w14.up.089"] = {
		"Portami bene, ali, e a terra parlerò bene di te.",
		"Portami a destinazione senza danni, e ovunque scenda avrai da me una buona parola.",
	},
	["journey.w14.up.090"] = {
		"Finalmente un viaggio in cui la fatica la fa qualcun altro.",
		"Tocca a qualcun altro faticare. Era ora.",
	},
	["journey.w14.up.091"] = {
		"Se cado, voglio che resti agli atti che fino a quel momento mi stavo divertendo.",
		"Se finisco di sotto, di' a tutti che mi stavo divertendo un mondo.",
		"Se scivolo giù, ricordami con affetto. Fino a quel momento avevo un ottimo posto.",
	},
	["journey.w14.up.092"] = {
		"E via. Adesso non resta che tenersi e darsi un'aria importante.",
		"Via, lontano. Voi là sotto, andate avanti senza di me.",
	},
	["journey.w14.up.093"] = {
		"Non volevo guardare giù. Ho guardato. Ne valeva la pena.",
		"Avevo giurato di non guardare in basso. Giuramento rotto in un attimo. Valeva la pena.",
		"Eh, ho guardato. Certo che ho guardato. Chi non lo farebbe?",
	},
	["journey.w14.up.094"] = {
		"Ah. Provate a raggiungermi adesso, tutti quanti.",
		"Che chiamino pure. Quassù non sento niente, e mi va benissimo.",
	},
	["journey.w14.up.095"] = {
		"Allora. Passi spesso da queste parti?",
		"Bel mestiere, il tuo. Ti pagano, almeno? Dovrebbero.",
		"Ci sai fare, sai? Te l'ha mai detto nessuno?",
	},
	["journey.w14.up.096"] = {
		"Non ho paura. Sto prestando moltissima attenzione. È diverso.",
		"Paura no. Attenzione. Moltissima attenzione.",
	},
	["journey.w14.up.097"] = {
		"Cinghie strette, zaino addosso, occhi avanti. Verso dove si va.",
		"Cinghia, zaino, presa. Più controlli di così non ne faccio.",
		"Fibbie chiuse, zaino carico, direzione giusta. Probabilmente.",
	},
	["journey.w14.up.098"] = {
		"Calma. Calma. Così, bello in piano.",
		"Bene, bene. Tienila liscia così e da me non sentirai lamentele.",
	},
	["journey.w14.up.099"] = {
		"Senti? Niente. Un niente meraviglioso.",
		"Senti? Nessuno che mi chieda niente. Che bellezza.",
		"Silenzio, finalmente. Nessuno me lo rovina, nemmeno io.",
	},
	["journey.w14.up.100"] = {
		"Ehi! Va bene. Era solo la partenza. Lo sapevo. Lo sapevo benissimo.",
		"Uff. Sì. Si decolla. Benissimo. Prosegui pure.",
	},
	["journey.w14.up.101"] = {
		"Niente da aggiustare, niente da prendere, niente da combattere. Lo accetto volentieri.",
		"In aria non ci sono faccende. Nessuna. Ho controllato.",
		"Quassù nessuno ha bisogno di me. Che pace.",
	},
	["journey.w14.up.102"] = {
		"Più su, allora. Fammi vedere tutto.",
		"Dai, sali. Voglio vedere quanto è grande davvero questo mondo.",
	},
	["journey.w14.up.103"] = {
		"Scusa per il peso. Metà è roba che continuo a ripromettermi di vendere.",
		"Peso parecchio, eh? Dai la colpa allo zaino. Mai a chi monta.",
		"Spero di non pesarti troppo. L'ultimo pasto è stato abbondante.",
	},
	["journey.w14.up.104"] = {
		"Da quassù ogni sentiero sembra portare in un posto che merita. A correggere l'impressione penserà il suolo, e presto.",
		"Qualunque cosa ci sia là sotto, da quest'altezza sembra tutta una promessa. Più tardi scoprirò quali sono state mantenute.",
	},
	["journey.w14.up.105"] = {
		"si appoggia all'indietro a salita finita e fa la cosa più rara di tutte: assolutamente niente.",
		"intreccia le mani in grembo quando la cavalcatura si mette in piano, come chi aspetta che si alzi un sipario.",
	},
}, "base_world")
