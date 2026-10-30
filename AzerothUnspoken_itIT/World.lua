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
		"Una quiete grigia sulla strada. Qualunque cosa ci aspetti, resterà dov'è finché non sarò abbastanza vicino da vederla.",
		{ "Nebbia. Posso fare cento passi senza incontrare altro che {g:me stesso|me stessa}.", depth = "natural" },
	},
	["world.clear.01"] = {
		"Il cielo ha lasciato andare il suo tempo. La luce torna a tutto ciò che aveva lasciato.",
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
		"Terra nuova, e pioggia sopra di lei. Un benvenuto onesto, per essere un benvenuto.",
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
		"si ferma un momento a veder lasciare il cielo l'ultimo colore, poi riprende un po' più in fretta.",
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
		{ "{subzone}. Lo aggiungo all'elenco dei luoghi in cui sono stato, che è anche un elenco di chi sono {g:stato|stata}.", depth = "elevated" },
	},
	["world.sub.03"] = {
		"Dunque questa è {subzone}. Vediamo che cos'ha da dire.",
		"{subzone}, allora. Ho sentito nomi più strani su strade più gentili.",
		{ "{subzone}. Qualcuno è passato di qui per primo e l'ha chiamata così. Cercherò di esserne degno.", depth = "literary" },
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
		"Un compito è compiuto. Che il prossimo mi trovi pronto altrettanto.",
		"Ecco un'altra promessa mantenuta. La strada può chiedermi ciò che vuole, adesso.",
		{ "È finita. Si sappia che è stata fatta a regola d'arte.", depth = "literary" },
	},
	["world.quest.again.01"] = {
		"Finalmente. Mi ci sono volute più prove di quante ne ammetterò, e non le ammetterò.",
		"Fatto, finalmente. Io e l'incarico abbiamo discusso a lungo, e ho vinto ai punti.",
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
		{ "Amichevoli, dice la parola. Me la sono guadagnata entrando, e intendo tenerla andando avanti.", depth = "elevated" },
	},
	["world.rep.up.honored"] = {
		"{g:Onorato|Onorata}. La parola è più pesante di come suona, e intendo meritarla.",
		"Sono passati dal sopportarmi al fidarsi di me. Cambia il modo in cui si sente una soglia.",
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
		"Mura che non si muovono, un fuoco che non chiede nulla. È il più vicino a casa che la strada arrivi.",
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
		"si tiene forte mentre il mondo si inclina via, e guarda le strade ridursi a fili laggiù.",
		"sta molto immobile mentre la terra si abbassa, e tiene entrambi gli occhi sull'orizzonte.",
		{ "sale nell'aria aperta, e la terra si srotola sotto come una pagina a cui non importa chi la legge.", depth = "elevated" },
	},
	["world.flight.start.02"] = {
		"Si va su. Speriamo che chi guida sappia la strada meglio di me.",
		"Beh. Sono stato su sedili peggiori. Pochi erano così in alto.",
	},
	["world.flight.arrive.01"] = {
		"Di nuovo terra solida. Le gambe ci mettono un attimo a ricordare a che servono.",
		"Il vento mi lascia, e la strada mi riprende. Facciamo finta, entrambi, che non sia successo nulla.",
		{ "Giù, finalmente. Il cielo andava bene; lo preferisco solo da sotto.", depth = "natural" },
	},
	["world.flight.arrive.e"] = {
		"scende a terra e resta fermo un momento, lasciando che l'ondeggiare dell'aria esca dalle ginocchia.",
		"tocca terra e fa due passi cauti, come dopo il mare.",
	},
	["world.flight.long.01"] = {
		"Dopo tanto tempo sopra la terra, il suolo sembra un vecchio conoscente.",
		"Una lunga strada, volata e finita. Quaggiù tutte le distanze tornano piccole.",
		{ "Tanta strada alle spalle, e nessuna camminata. Mi chiedo che cosa faccia a un viaggio.", depth = "elevated" },
	},
	["world.flight.long.e"] = {
		"scende dopo il lungo volo, e il suolo pare pesante e lento dopo tante ore tra le nubi.",
		"atterra al termine di una lunga traversata, e si concede un momento solo per stare su qualcosa che non si muove.",
	},
}, "base_world")
