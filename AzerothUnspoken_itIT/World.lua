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
}, "base_world")
