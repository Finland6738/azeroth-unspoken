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
}, "base_world")
