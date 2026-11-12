-- Italian texts of the regional pack eastern_elwynn (#102). The rules are in AzerothUnspoken_EasternKingdoms/Elwynn.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("elwynnforest", "itIT", "eastern_elwynn", [==[
	["elw.battle.bear.01"] = {
		"pianta i piedi mentre l'orso si alza sulle zampe, un muro di pelo bruno e fiato caldo.",
		"tiene la posizione contro la carica dell'orso, la terra che trema sotto la bestia.",
		"non arretra davanti all'orso: una piccola cosa testarda contro tutto quel peso.",
	},
	["elw.battle.boar.01"] = {
		"Calma, braciola.",
		"Giù le zanne, cinghiale. Non sono una rapa.",
		"Ma certo che il cinghiale vuole lottare. Lo vogliono sempre.",
	},
	["elw.battle.defias.01"] = {
		"Maschera rossa, cuore vuoto. Vediamo cosa c'è sotto.",
		"Defias! Questa strada non è tua da tassare.",
		"Ladro mascherato. Hai sbagliato bersaglio.",
	},
	["elw.battle.hogger.01"] = {
		"Hogger! La tua taglia sta per essere riscossa.",
		"Dunque sei tu quello grosso. Westbrook ti manda i suoi saluti.",
		"Hogger. Lungo questa strada raccontano storie su di te. Scriviamone la fine.",
	},
	["elw.battle.kobold.01"] = {
		"Giù il piccone, piccoletto. E attento a quella candela.",
		"Coboldo! Tieniti la tua cera.",
		"Un altro con la candela. Si riproducono al buio?",
	},
	["elw.battle.murloc.01"] = {
		"si prepara mentre il murloc sbuca dall'acqua bassa, gorgogliante e gocciolante.",
		"schiva di lato una carica bagnata e scomposta che arriva dalle canne e dall'acqua.",
		"si volta al grido gorgogliante che sale dal bordo dell'acqua.",
	},
	["elw.battle.prowler.01"] = {
		"si volta verso il predatore che sguscia fuori dalla macchia, basso e silenzioso come ogni bestia da caccia.",
		"accoglie il balzo del predatore con la guardia alzata.",
		"si mette in posizione mentre pelo grigio e occhi gialli escono dalle felci.",
	},
	["elw.battle.riverpaw.01"] = {
		"Gnoll! Tornatene sulle colline.",
		"Riverpaw. Un po' lontano dal fiume, eh?",
		"Fatti sotto, muso di cane.",
	},
	["elw.battle.spider.01"] = {
		"Troppe zampe. Davvero troppe zampe.",
		"Ragno. Lontano dalla faccia, lontano dalla faccia.",
		"Odio come si muovono. Colpisci per {g:primo|prima}.",
	},
	["elw.battle.wolf.01"] = {
		"Indietro, lupo! Cercati qualcosa di più piccolo.",
		"Fame, lupo? Non di me, di sicuro.",
		"Calma, pelo grigio. Per te non finirà bene.",
	},
	["elw.dawn.01"] = {
		"guarda la prima luce salire sulle colline di {zone}, i galli che si rispondono di fattoria in fattoria.",
		"resta lì mentre l'alba fa d'argento la rugiada dei campi.",
		"accoglie l'alba con un respiro lento, mentre il bosco si sveglia nel fumo dei camini e nel mormorio del bestiame.",
	},
	["elw.dawn.02"] = {
		"Buongiorno, Elwynn. Qualcuno sta già sfornando pane, e intendo scoprire chi.",
		"In piedi coi galli. Non per scelta.",
		"Sole su, pane in forno, strada asciutta. Buon inizio.",
	},
	["elw.death.01"] = {
		"Il cielo verde... no. L'erba verde. Ci sono {g:disteso|distesa} dentro.",
		"Così quieto, qui. Anche quando cado, l'erba è gentile.",
		"Le querce si chinano su di me come vecchie al capezzale. Almeno muoio in un posto bello.",
	},
	["elw.death.02"] = {
		"cade nell'erba morbida di Elwynn, e gli uccelli tacciono per un momento.",
		"crolla sul bordo della strada, una mano ancora tesa verso lo steccato.",
		"affonda nel verde, e il bosco, che ne ha visti cadere tanti, mantiene la sua pace.",
	},
	["elw.death.03"] = {
		"A terra. A Elwynn. Non me lo faranno mai dimenticare.",
		"{g:Battuto|Battuta} nella foresta più sicura del regno. Splendido.",
		"Qualcuno avvisi le guardie. Gliene è sfuggito uno.",
	},
	["elw.dusk.01"] = {
		"Crepuscolo sulle fattorie. Le mucche rientrano da sole, e le lanterne si accendono una alla volta.",
		"La luce si fa dorata e lunga. È ora di pensare a un tetto.",
		"Al crepuscolo il bosco raccoglie i suoi colori, come una contadina che richiama i bambini dai campi.",
	},
	["elw.dusk.02"] = {
		"guarda lungo la strada mentre il tramonto arrossa le colline e i lupi cominciano a chiamarsi tra i pini.",
		"guarda l'ultima luce scivolare via dalle colline lontane, e sente un lupo risponderle.",
		"resta {g:fermo|ferma} mentre il crepuscolo scende sul bosco, ammorbidendo ogni steccato e ogni solco nello stesso azzurro, e un lupo chiama dai pini.",
	},
	["elw.farewell.01"] = {
		"Strade sicure. Stai alla larga dalle miniere.",
		"Abbi cura di te sulla strada. E tieni d'occhio il margine del bosco.",
		"Va', allora. Occhio alle maschere rosse lungo la strada.",
	},
	["elw.farewell.02"] = {
		"Allora, al prossimo crocevia.",
		"Buona fortuna là fuori. Goldshire sarà ancora in piedi.",
		"Va' in pace. Il bosco è gentile, ma non con gli sciocchi.",
	},
	["elw.greet.01"] = {
		"Salve! Bella giornata per mettersi in strada.",
		"Ciao! Attenzione a dove metti i piedi su questa strada: le mucche passano di qui.",
		"Salute a te. Elwynn ti tratta bene?",
	},
	["elw.greet.02"] = {
		"Pace sulla tua strada, e un tetto asciutto alla fine.",
		"Che i tuoi campi siano verdi e la tua borsa pesante.",
		"Salve a te, sotto le querce di Elwynn.",
	},
	["elw.jest.01"] = {
		"Perché i coboldi portano le candele? Perché una lanterna vorrebbe dire ammettere che si sono persi.",
		"A Elwynn persino i banditi vestono coordinati.",
		"Elwynn: dove i lupi sono educati e le mucche no.",
	},
	["elw.jest.02"] = {
		"Ho chiesto indicazioni a un murloc. Non so ancora cosa abbia detto, ma di sicuro era una scortesia.",
		"La taglia di Hogger continua a salire. Di questo passo potrà pagarsela da solo.",
		"I contadini qui litigano per gli steccati come i re per i confini. Vincono gli steccati.",
	},
	["elw.levelup.01"] = {
		"Più forte. Elwynn mi ha insegnato bene.",
		"Un altro passo. Che venga pure la strada.",
		"Il bosco mi ha {g:messo|messa} alla prova, e l'ho superata. Avanti, verso strade più dure.",
	},
	["elw.levelup.young.01"] = {
		"Un po' più forte. Abbastanza per le miniere, forse non ancora per la strada di Westfall.",
		"Ci sto prendendo la mano. Le reclute dell'abbazia sarebbero fiere. O invidiose.",
		"Passo dopo passo lungo la strada della valle, il verde sta facendo di me qualcosa.",
	},
	["elw.lm.abbey.01"] = {
		"si ferma davanti alle mura di pietra grigia dell'abbazia, dove fratelli in tonaca si muovono piano tra le porte.",
		"alza lo sguardo alla facciata di pietra dell'abbazia e alle alte finestre che prendono la luce.",
		"resta tra la pietra e il silenzio dell'abbazia, dove la Luce si insegna come un mestiere delle mani quanto del cuore.",
	},
	["elw.lm.abbey.02"] = {
		"L'abbazia. Fratelli in tonaca, reclute in armature prestate e un cortile che ha sentito mille giuramenti goffi.",
		"Dunque è qui che li addestrano. Metà delle lame famose del regno sarà inciampata su questi gradini, una volta.",
		"Preghiere dentro, esercizi di lama fuori. L'abbazia insegna entrambe le cose, e non so quale sia più difficile.",
	},
	["elw.lm.abbey.03"] = {
		"Pace su questa casa, e sui fratelli che ne tengono accese le candele.",
		"Un buon posto per cominciare una strada. O per ricordare, a lume di candela, perché la si è cominciata.",
		"Che queste mura conservino la loro quiete, e le loro candele restino accese.",
	},
	["elw.lm.abbey.first"] = {
		"Prima volta all'abbazia. Mi ritrovo a stare più {g:dritto|dritta}, come se qualcuno mi passasse in rassegna.",
		"Mai {g:stato|stata} a Northshire prima d'ora. È come entrare nella prima pagina di un lungo libro.",
		"La prima volta che vedo queste mura, e già mi chiedono qualcosa: di valere il libro di nomi che custodiscono.",
	},
	["elw.lm.fargodeep.01"] = {
		"si ferma all'ingresso della miniera, dove i solchi dei carrelli spariscono nel buio e piccole fiammelle di candela ondeggiano laggiù.",
		"si china sotto i puntelli di legno della miniera, mentre l'aria si fa fredda e sa di pietra umida e cera vecchia di candela.",
		"resta alla bocca buia della miniera, dove la pietra espira freddo e da qualche parte nel profondo vagano fiammelle di candela.",
	},
	["elw.lm.fargodeep.02"] = {
		"Fargodeep. Lontana, profonda e piena di coboldi. Almeno il nome è onesto.",
		"Coboldi nei cunicoli bassi, e dicono che nelle pareti ci sia ancora minerale. Indovina chi mi trova per primo.",
		"Ogni miniera di questo bosco ha i suoi coboldi. Vengono compresi nel contratto?",
	},
	["elw.lm.fargodeep.03"] = {
		"I contadini di sopra cavano patate; i coboldi di sotto cavano chissà cosa. L'accordo non piace a nessuno.",
		"Da qualche parte sotto queste fattorie i coboldi hanno scavato via mezza collina. Non vorrei essere chi si vede sprofondare il pavimento della cantina.",
		"Una miniera sotto una fattoria, e una lite sopra la miniera. In quest'angolo di bosco c'è da fare a ogni profondità.",
	},
	["elw.lm.fargodeep.04"] = {
		"Torce accese. Vediamo cosa ha fatto il nido a Fargodeep.",
		"Si scende. Restate accanto a me e tenete alta la luce.",
		"Dentro la miniera. Gambe corte, picconi aguzzi: occhio alle ginocchia, e occhio alla luce.",
	},
	["elw.lm.goldshire.01"] = {
		"entra a {landmark}, dove la fucina risuona, la porta della locanda dondola e il crocevia non si svuota mai del tutto.",
		"arriva al villaggio del crocevia, oltre il martello della forgia e una piazza consumata dalla strada.",
		"entra nel villaggio dove le strade si incontrano, dove ogni viandante del bosco pare fermarsi almeno una volta.",
	},
	["elw.lm.goldshire.02"] = {
		"Goldshire. Una locanda, un fabbro e una cassetta della posta. Civiltà.",
		"Ah, Goldshire. Pane caldo, ferro rovente, e gli affari di tutti gridati da un capo all'altro della piazza.",
		"Goldshire. Se la strada ha notizie, prima o poi finiscono qui.",
	},
	["elw.lm.goldshire.03"] = {
		"Un villaggio così è ciò per cui esistono davvero le mura. Bambini che rincorrono galline, fumo dai camini, un fabbro che discute dei prezzi.",
		"Fumo dai camini, cavalli alla staccionata. Goldshire sembra non aver mai sentito parlare di guerra.",
		"Qui le grandi parole del regno ritrovano la loro misura vera: una porta, una panca, un filo di fumo, un pane diviso a un crocevia.",
	},
	["elw.lm.goldshire.horde"] = {
		"Un villaggio umano, pieno di guardie e di chiacchiere. Meglio non indugiare vicino al pozzo.",
		"Ogni faccia in quella piazza mi riconoscerebbe come {g:nemico|nemica}. Avanti.",
		"Il loro crocevia, i loro focolari, le loro guardie attente. Qui sono io la storia che si racconta accanto al focolare per spaventare i bambini.",
	},
	["elw.lm.inn.01"] = {
		"spinge la porta della locanda: aria calda, odore di stufato e una dozzina di conversazioni tutte insieme.",
		"entra nella sala comune, dove il fuoco scoppietta e qualcuno vicino alla porta sta perdendo malamente a carte.",
		"varca la soglia, e il chiasso della strada resta fuori, dietro una porta di quercia: restano solo il fuoco e le voci.",
	},
	["elw.lm.inn.02"] = {
		"Il Lion's Pride! Qualcuno mi trovi una sedia e una scodella di qualsiasi cosa sia calda.",
		"Ah, il Lion's Pride. Il pavimento appiccica e la birra è onesta.",
		"Locanda. Fuoco. Birra. In quest'ordine, se possibile.",
	},
	["elw.lm.inn.03"] = {
		"Metà degli avventurieri del regno è passata da queste panche. Il legno ne è consumato, liscio.",
		"Reclute alle prime armi, contadini stanchi, un bardo che accorda nell'angolo. Tutti finiscono qui.",
		"Metà delle storie raccontate in città sono cominciate a questi tavoli, scommetto. E metà di quelle sono bugie.",
	},
	["elw.lm.inn.serene"] = {
		"Stanza calda, scodella piena, nessun posto dove andare. Potrei restare finché non mi spazzano fuori con le briciole.",
		"Il fuoco, le voci basse, lo scricchiolio delle scale. Per una volta niente in me sta in ascolto dei guai.",
		"Lascio che il calore del fuoco mi entri nelle ossa come una marea lenta.",
	},
	["elw.lore.abbey.inscription.01"] = {
		"Lettere incise sopra una porta laterale dell'abbazia:\nChi entra qui sia benedetto:\nmano ferma e passo vero,\nabbia pane, tetto e letto,\ne la Luce per sentiero.",
		"Inciso nella pietra accanto ai gradini dell'abbazia:\nOgni strada ti sia mite,\nogni fuoco ti stia accanto;\nle parole qui sentite\ne la Luce sian tuo manto.",
	},
	["elw.lore.inn.rhyme.01"] = {
		"Una canzone che i clienti fissi del tavolo lungo battono coi boccali:\nGiù in miniera i coboldi,\nlupi lungo la strada,\nbanditi tra le zucche:\nversa, e che il peso cada.",
		"Il ritornello che i contadini urlano quando il bardo si arrende:\nAra il campo e paga il dazio,\nbevi il resto in compagnia;\nchi ha murato vuol la paga:\nse ne beva un giro, e via!",
	},
	["elw.lowhp.01"] = {
		"Non qui. Non in un prato pieno di margherite.",
		"Troppo. Devo togliermi da qui, subito.",
		"L'erba è verdissima vista così da vicino. Preferirei non vederla più da vicino di così.",
	},
	["elw.lowhp.02"] = {
		"Ancora in piedi. A malapena, ma in piedi.",
		"Non ancora! Il bosco può aspettarmi.",
		"Ho visto di peggio. Credo.",
	},
	["elw.meet.guard.01"] = {
		"Una guardia di Stormwind, lucidata a specchio, la lama al fianco. Qui la strada la prendono sul serio.",
		"La guardia mi squadra come un contadino squadra un cavallo che non ha intenzione di comprare.",
		"Blu e oro, una mano ferma sulla lama. La pace del regno, portata da un soldato stanco.",
	},
	["elw.meet.innkeeper.01"] = {
		"C'è stufato? Dimmi che c'è stufato.",
		"Un letto e una scodella vicino al fuoco, se ne avete.",
		"Salve! Sogno il vostro fuoco dall'ultima collina.",
	},
	["elw.meet.merchant.01"] = {
		"Il carro di un mercante, pieno di corde, farina e prezzi molto sicuri di sé per le mie monete.",
		"Se compro un'altra benda, dovrò aprire bottega anch'io. Con quali monete, mi chiedo.",
		"I mercanti di Elwynn sanno due cose: cosa farà il cielo domani e quante monete hai.",
	},
	["elw.meet.questgiver.01"] = {
		"nota gli occhi preoccupati di qualcuno che chiaramente aspettava aiuto.",
		"incrocia gli occhi di chi ha un problema e l'aria di averlo spiegato molte volte.",
		"si ferma accanto a un viso turbato, gli occhi che chiedono il favore prima della bocca.",
	},
	["elw.meet.trainer.01"] = {
		"Un maestro. È ora di scoprire quanto non so.",
		"C'è sempre qualcosa in più da imparare. Di solito costa qualche moneta.",
		"Ogni maestro che incontro mi toglie un po' di orgoglio e qualche moneta, e mi lascia un po' di mestiere al loro posto.",
	},
	["elw.muse.abbey.01"] = {
		"Silenzio nel cortile dell'abbazia. Anche le reclute abbassano la voce vicino alla vecchia pietra delle porte.",
		"Qui insegnano la Luce come un fabbro insegna il martello: piano, e facendo.",
		"Pietra che ha sentito moltissime preghiere. Quasi le senti posate nei muri, come il calore in un focolare dopo che il fuoco si è spento.",
	},
	["elw.muse.crown.01"] = {
		"Nelle taverne si dice che il re partì per un viaggio e non rientrò più, e che ora la corona la porta un ragazzo. I campi non sembrano accorgersene.",
		"Un ragazzo sotto la corona e un reggente al suo fianco, così dicono le chiacchiere. Qui fuori il fieno va tagliato lo stesso.",
		"I re spariscono e i reggenti firmano carte, dicono le taverne, ma l'aratro continua a girare lo stesso solco. Forse è su questo che poggia una corona.",
	},
	["elw.muse.dawn.01"] = {
		"Alba, e le fattorie sono già sveglie. Galli, secchi, qualcuno che chiama un cane con un nome molto scortese.",
		"Prima luce sulla rugiada, pane nei forni. Piedi freddi, cuore caldo, come dicono nei villaggi.",
		"All'alba il bosco sa di erba umida e di fumo di legna, e ogni camino è una piccola promessa di pane.",
	},
	["elw.muse.farms.01"] = {
		"osserva un contadino all'aratro, la terra rivoltata alle sue spalle dritta come una riga tirata.",
		"si appoggia un momento a uno steccato, guardando le galline beccare la terra di un'aia.",
		"guarda passare un carro di fieno che cigola sulla terra battuta del viottolo, un ragazzo addormentato in cima al carico.",
	},
	["elw.muse.goldshire.01"] = {
		"Il martello del fabbro, l'insegna della locanda che cigola, un cane che abbaia a un carro. Goldshire ha la sua piccola musica.",
		"A Goldshire c'è sempre qualcuno che arriva e qualcuno che parte. Il villaggio li guarda andare.",
		"I villaggi di crocevia imparano la faccia di tutti e la storia di nessuno. Goldshire ha quell'aria.",
	},
	["elw.muse.hills.01"] = {
		"Queste colline ondeggiano come se non avessero niente di meglio da fare. Certi giorni le invidio.",
		"Verde su verde, campo su campo. Il genere di veduta che ti fa rallentare senza chiedere permesso.",
		"Qui le colline non hanno mai fretta. Hanno la pazienza della terra amata a lungo.",
	},
	["elw.muse.hogger.01"] = {
		"Dicono che lo gnoll con la taglia sulla testa sia più grosso di una guardia e cattivo il doppio. Preferisco crederne la metà.",
		"Hogger. Ogni bambino di Goldshire conosce quel nome, e ogni guardia di Westbrook sospira a sentirlo.",
		"Un capo gnoll con il suo avviso di taglia personale. Da qualche parte in quei boschi, probabilmente, ne va fiero.",
	},
	["elw.muse.horde.01"] = {
		"Le loro fattorie sono morbide, le loro guardie no. Strana gente, gli umani: piantano giardini e poi li sorvegliano come fortezze.",
		"Terra grassa e pane fresco. Non c'è da stupirsi che combattano tanto per tenerseli.",
		"Cammino nella loro foresta e vedo cosa difendono: non oro, non gloria, ma pane e quiete. Li capisco meglio di quanto vorrei.",
	},
	["elw.muse.inn.01"] = {
		"Al tavolo accanto qualcuno racconta la storia dei coboldi, ed è cresciuta di un coboldo da ieri.",
		"L'oste sente tutto e ne ripete la metà. Gente utile da conoscere.",
		"Le chiacchiere della locanda sono la vera mappa del bosco: chi ha visto lupi e dove, quale fattoria ha perso una mucca, quale strada si è fatta silenziosa.",
	},
	["elw.muse.kobold.01"] = {
		"Qualcuno dovrebbe chiedere ai coboldi dove trovano tutte quelle candele. Ci sarà pure un fornitore.",
		"Coboldi con le candele in testa. Pratici, lo ammetto. Infiammabili, ma pratici.",
		"Questa settimana ho visto più candele sulle teste dei coboldi che in qualsiasi cappella.",
	},
	["elw.muse.lake.01"] = {
		"guarda i cerchi di un pesce che salta allargarsi sull'acqua fino alle canne.",
		"fissa a lungo l'acqua ferma, i pini riflessi che tremano solo quando passa la brezza.",
		"contempla il lago, la cui acqua regge il cielo con tanta cura da sembrare timorosa di versarlo.",
	},
	["elw.muse.mill.01"] = {
		"si ferma presso un ruscello dove gira una ruota di mulino, lenta e paziente, l'acqua che chiacchiera sulle pale.",
		"ascolta lo scricchiolio e lo sciabordio di una ruota di mulino da qualche parte oltre gli alberi, che va a tempo con l'acqua.",
		"guarda girare la ruota del mulino, paziente come le stagioni, mentre l'acqua macina in farina la fatica dell'anno.",
	},
	["elw.muse.night.01"] = {
		"Notte nel bosco. Grilli, un latrato lontano e le finestre delle fattorie accese come braci in un camino.",
		"La notte fonde steccati e campi in una forma sola. Ci si pensa meglio, là dentro.",
		"Sotto la notte il bosco abbassa la voce, e le stelle sorgono sui pini come lampade accese da una mano attenta.",
	},
	["elw.muse.patrol.01"] = {
		"Un'altra pattuglia. Questa strada la tengono sicura, devo ammetterlo.",
		"Guardie a ogni miglio di strada. O il regno è molto prudente, o molto preoccupato.",
		"Ancora casacche blu sulla strada. Difficile perdersi, con tanta gente che ti chiede dove vai.",
	},
	["elw.muse.peace.01"] = {
		"Una pace come la nostra non è gratis. Qualcuno la paga sulle mura, sulle strade, nelle miniere.",
		"Ogni nostro campo tranquillo è una guardia che non ha dormito. Ricordalo, quando il pane è caldo.",
		"La pace del nostro bosco è una moneta coniata nella vigilanza, e la nostra gente la spende ogni giorno senza contarla.",
	},
	["elw.muse.rain.01"] = {
		"Pioggia sui campi. I contadini sono contenti. Io sono {g:fradicio|fradicia}.",
		"Fa bene ai raccolti, ti diranno. La pioggia agli stivali non fa mai bene.",
		"Un po' di pioggia non ha mai fatto male a nessuno. Tutta questa è solo maleducata.",
	},
	["elw.muse.roads.01"] = {
		"Ogni strada di questo bosco porta a una fattoria, a una locanda o in città. Devo ancora trovarne una che porti apposta nei guai.",
		"Cartelli a ogni incrocio. Chiunque governi questo regno detesta l'idea che qualcuno perda la strada.",
		"Qui le strade sono tenute come un buon libro dei conti: ordinate, numerate e oneste su dove portano.",
	},
	["elw.muse.stone.01"] = {
		"Si dice che i muratori che ricostruirono la nostra città non furono mai pagati. Guarda quella pietra bianca, poi le maschere rosse sulla strada, e fai i conti.",
		"Bella pietra, le nostre mura. Mi dicono che le mani che l'hanno posata ora stringono coltelli e maschere.",
		"La nostra città splende perché qualcuno ne ha tagliato e portato la pietra. Se le storie sono vere, il conto non fu mai saldato, e ora le maschere lo riscuotono sulla strada.",
	},
	["elw.muse.trees.01"] = {
		"Quercia per le travi, pino per il fuoco. Questo bosco nutriva la città molto prima che io nascessi.",
		"Quercia e pino, fianco a fianco nel vento. Uno lento e testardo, l'altro svelto e alto. Come soldati e contadini.",
		"Le querce tengono i loro segreti, e i pini li sussurrano al vento. Io ne colgo solo una parola qua e là.",
	},
	["elw.muse.walls.01"] = {
		"Dalle alture si vede la pietra bianca delle mura della città. Abbastanza vicine da sentirsi al sicuro, abbastanza lontane da dimenticarle.",
		"Mura bianche, tetti azzurri, al margine degli alberi. Difficile credere che una cosa così grande stia accanto a un pascolo di mucche.",
		"La pietra bianca della città brilla al limite del bosco come una promessa che qualcuno continua a lucidare.",
	},
	["elw.npcd.guard.danger.01"] = {
		"Coboldi nelle miniere e lupi nei boschi. Resta sulla strada e quasi sempre andrà bene.",
		"Occhio al margine del bosco a sud del villaggio. I lupi, questa stagione, sono sfacciati.",
		"Le miniere non sono posti da passeggiata, e nei boschi ci sono i lupi. Se entri, porta una luce e qualcuno con te.",
	},
	["elw.npcd.guard.danger.02"] = {
		"Maschere rosse sulle strade dell'est. Defias. Se ti chiedono la borsa, vogliono anche altro.",
		"La Fratellanza è sfacciata sulle strade, ultimamente. Fattorie prese, carri rapinati. Viaggia con la luce del giorno, se puoi.",
		"Banditi nelle vigne, banditi nei campi di zucche. Ne scacciamo una maschera e sulla strada ne spuntano due.",
	},
	["elw.npcd.guard.danger.03"] = {
		"A ovest, verso Westfall, gli gnoll si fanno fitti. E c'è quello grosso. Non andarlo a cercare senza compagnia.",
		"Murloc ai laghi, gnoll al margine del bosco. Elwynn è sicura, {og:cittadino|cittadina}, ma non così sicura.",
		"Se vedi uno gnoll grosso il doppio degli altri, prima scappa e poi fai rapporto.",
	},
	["elw.npcd.guard.dir.01"] = {
		"Goldshire è giù per la strada, al crocevia. Locanda, fabbro e un maestro o due.",
		"Segui la strada a nord-ovest e vedrai le porte della città. Impossibile non vederle: sono quelle bianche.",
		"L'abbazia di Northshire è su per la valle, a nord. Segui la strada e le siepi.",
	},
	["elw.npcd.guard.dir.02"] = {
		"La strada dell'est ti porta oltre i laghi fino al campo dei taglialegna, e poi verso Redridge.",
		"Westfall è oltre Forest's Edge, dopo il presidio di Westbrook. Strada secca, terra secca. Porta acqua.",
		"Le miniere? Fargodeep è a sud di Goldshire, Jasperlode lungo la strada dell'est. Coboldi in tutte e due, quindi non dire che nessuno te l'ha detto.",
	},
	["elw.npcd.guard.dir.03"] = {
		"La Tower of Azora è a est, sulla collina. Ci vive un mago. Bussa con educazione.",
		"Hai perso la via? Resta sulla strada lastricata. Ogni strada di Elwynn porta in città o a Goldshire, prima o poi.",
		"Crystal Lake è appena a est di Goldshire, due passi giù per la strada. Occhio ai murloc: non amano le visite.",
	},
	["elw.npcd.innkeeper.news.01"] = {
		"I contadini hanno paura delle maschere rosse sulle strade. Defias, si fanno chiamare. Una volta erano costruttori onesti, dice qualcuno.",
		"Banditi mascherati si sono presi la fattoria dei Brackwell, mi dicono. Zucche comprese.",
		"Ieri è entrato un mercante con la borsa tagliata di netto. Maschera rossa, ha detto. Sempre una maschera rossa.",
	},
	["elw.npcd.innkeeper.news.02"] = {
		"Il presidio di Westbrook ha messo una taglia su quel grosso gnoll. Hogger, lo chiamano. Metà dei giovani qui dentro vuole la moneta; l'altra metà entra zoppicando.",
		"Gnoll giù al margine occidentale, e ogni settimana di più. Quelli dei Riverpaw, sfacciati come non mai.",
		"Se vai verso Westfall, stai lontano dalla macchia. Lì dentro vive qualcosa di grosso, e non è un coniglio.",
	},
	["elw.npcd.innkeeper.news.03"] = {
		"Dicono che il re sia partito per mare e non sia più rientrato. Ora la corona la porta il ragazzo, e a parlare sono i nobili. Non sono affari miei, eh. Io verso e basta.",
		"Le miniere brulicano di nuovo di coboldi. Fargodeep, Jasperlode, tutte quante. Da dove arriveranno?",
		"Gli Stonefield e i Maclure sono di nuovo ai ferri corti. Per uno steccato, stavolta. O una mucca. O tutte e due.",
	},
	["elw.npcd.innkeeper.open.01"] = {
		"Ecco il Lion's Pride! Pulisci gli stivali: metà del fango di Elwynn entra da quella porta.",
		"Avanti, avanti, e chiudi la porta. Lo stufato è caldo, e le chiacchiere di più.",
		"Un'altra faccia dalla porta. Siediti dove vuoi, tranne il posto del cane.",
	},
	["elw.npcd.innkeeper.open.02"] = {
		"Coboldi, lupi, banditi: qualunque cosa tu abbia combattuto, qui dentro non ti segue.",
		"Hai l'aria di chi è venuto da Northshire in ginocchio. Siediti.",
		"Contadini a quel tavolo, soldati a questo. Scegli la conversazione.",
	},
	["elw.npcd.merchant.news.01"] = {
		"I prezzi salgono. Prenditela con i banditi sulle strade: ogni carro che passa costa il doppio delle monete.",
		"La lana costa poco, il ferro tanto. La città compra ogni chiodo che trova, e paga in buona moneta.",
		"Gli affari vanno bene, se non conti i Defias. Io li conto ogni volta che conto le monete.",
	},
	["elw.npcd.merchant.news.02"] = {
		"I contadini dicono che il raccolto quest'anno è buono. Ora, se solo i coboldi smettessero di servirsi delle mie candele.",
		"Questa settimana una carovana da Redridge è arrivata leggera. Qualcosa sulla strada le ha fatto mollare metà del carico, candele comprese.",
		"Northshire manda fuori reclute a dozzine. Buono per il mio commercio di bende e candele.",
	},
	["elw.pray.01"] = {
		"Luce, proteggi questi campi. Proteggi le mani che li lavorano.",
		"Veglia sulle strade e su chi le percorre, e da' riposo alle loro mani. Non chiedo altro.",
		"Per la Luce che scalda il solco e il focolare allo stesso modo, che questa terra e ogni mano che la lavora conoscano la pace ancora un poco.",
	},
	["elw.quest.01"] = {
		"Lavoro fatto. Qualcuno in questo bosco dormirà meglio, e io mangerò meglio.",
		"Un'altra commissione per la brava gente di Elwynn. Moneta onesta, almeno.",
		"Piccole imprese, piccole borse di monete. È così che qui ci si fa un nome.",
	},
	["elw.quest.02"] = {
		"intasca la ricompensa e scambia un cenno con chi l'ha data.",
		"conta le monete una volta, poi un'altra, e le mette via.",
		"ripone le monete, un piccolo peso che sa di guadagnato.",
	},
	["elw.rest.inn.01"] = {
		"entra dalla strada; dietro il bancone l'oste sta già allungando la mano verso un boccale di birra.",
		"si scrolla la strada dagli stivali sulla soglia e respira fumo di legna, stufato e birra versata.",
		"entra dalla porta, e la locanda si chiude intorno come un mantello caldo.",
	},
	["elw.rest.inn.02"] = {
		"Il Lion's Pride. Caldo, asciutto, profumo di pane. Tutto ciò che serve a un corpo.",
		"Un letto di sopra, pane e una scodella di sotto, un fuoco in mezzo. Adesso non voglio altro.",
		"Le locande come questa sono le vere mura del bosco: un fuoco, un tetto, una pagnotta e voci che non chiedono nulla.",
	},
	["elw.rest.inn.03"] = {
		"Oste! Qualunque cosa ci sia nella pentola, e tanta.",
		"Una sedia, una scodella e un'ora in cui nessuno abbia bisogno di me. Non chiedo altro.",
		"Dunque questo è il famoso Lion's Pride. Più piccolo che nei racconti. Anche più caldo.",
	},
	["elw.ret.death.01"] = {
		"L'ultima volta che ho camminato qui, non ne sono {g:uscito|uscita} sulle mie gambe. I campi sembrano innocenti come allora.",
		"Sono {g:caduto|caduta} qui, l'ultima volta. L'erba si è rialzata da un pezzo. Anch'io.",
		"Questo verde ha custodito la mia morte, una volta, per poco, e poi l'ha resa. Gli devo prudenza, se non fiducia.",
	},
	["elw.ret.death.02"] = {
		"rallenta vicino al punto dell'ultima caduta, e gli lancia un lungo sguardo piatto prima di proseguire.",
		"si tocca un vecchio dolore alle costole rivedendo questi campi: il ricordo della morte, qui, non è del tutto passato.",
		"compie un giro più largo attorno al luogo dove l'ultima volta è arrivata la morte.",
	},
	["elw.ret.flight.01"] = {
		"L'ultima volta sono {g:scappato|scappata} da questo bosco. Oggi ci entro apposta.",
		"Me ne sono {g:andato|andata} di corsa, l'ultima volta. Vediamo se la strada se lo ricorda.",
		"Qualcosa mi ha {g:cacciato|cacciata} da questi boschi, prima. Stavolta ho stivali migliori e meno illusioni.",
	},
	["elw.ret.light.01"] = {
		"Ancora Elwynn. Gli stessi steccati, lo stesso fango, lo stesso cane che mi abbaia.",
		"Di nuovo su queste strade. Le mucche non si sono spostate di un palmo.",
		"Eccomi di nuovo. Giurerei che quello spaventapasseri ha cambiato cappello.",
	},
	["elw.ret.light.02"] = {
		"Conosco questa curva della strada. La quercia col tronco spaccato è ancora lì, ad aspettare.",
		"Stessa strada, stesse querce. Strano come un luogo sembri averti tenuto una sedia.",
		"Il bosco mi riaccoglie senza una parola, come un vecchio amico che apre la porta prima che tu bussi, e le querce lungo la strada mi fanno passare.",
	},
	["elw.ret.light.03"] = {
		"riprende la vecchia strada verso Elwynn, oltre campi che hanno cambiato raccolto ma non colore.",
		"fa un cenno alla linea familiare delle colline, come si saluta qualcuno dall'altra parte di una stanza affollata.",
		"rientra nell'erba e nel verde senza fretta, come si entra in una casa conosciuta.",
	},
	["elw.ret.long.01"] = {
		"Settimane dall'ultima volta che ho visto questi campi. Il raccolto è cambiato, e il fieno sta in covoni freschi.",
		"È passato un bel po'. Stesse colline, ma la stagione è andata avanti senza di me.",
		"Una lunga assenza, e il bosco ha continuato a vivere: solchi freschi, covoni nuovi, le querce più vecchie di un anello e la stagione voltata.",
	},
	["elw.ret.long.02"] = {
		"Elwynn! È passato così tanto? La strada sembra più corta di come la ricordavo.",
		"Da quanto tempo, Elwynn. Tu non sei invecchiata di un giorno. Io non posso dire lo stesso.",
		"Settimane via, e i campi lungo la strada hanno ancora lo stesso odore. Bene.",
	},
	["elw.rez.01"] = {
		"Ancora su. Il bosco non si è nemmeno accorto che ero via.",
		"Respiro di nuovo. L'erba è ancora schiacciata dove giacevo, e la luce non si è spostata.",
		"Rientro nel verde, e la luce tra le querce mi si posa sulla spalla come una mano.",
	},
	["elw.rez.02"] = {
		"si rialza lentamente, togliendosi l'erba da un ginocchio, mentre il mondo riprende colore.",
		"trae un lungo respiro, di nuovo in piedi sotto le querce.",
		"si rialza, e tutto intorno il bosco ritrova i colori: campi verdi, tetti azzurri, luce dorata sull'erba.",
	},
	["elw.rez.03"] = {
		"Bene. Facciamo finta che non sia successo.",
		"Sto bene. Il bosco sta bene. Nessuno ne parli.",
		"Secondo tentativo. Chiunque sia stato, stavolta non avrà la stessa fortuna.",
	},
	["elw.sub.azora.01"] = {
		"alza gli occhi alla torre sulla collina, la sua alta guglia di pietra fuori posto tra le fattorie.",
		"rallenta vicino alla torre, dove l'aria ha un vago sapore di metallo, come una selce appena battuta.",
		"si ferma davanti alla torre sottile, le finestre scure e attente, come se la pietra stessa stesse leggendo.",
	},
	["elw.sub.azora.02"] = {
		"Una torre di maghi in mezzo ai campi. I vicini devono esserne entusiasti.",
		"I maghi. Dagli una collina tranquilla e ci costruiscono sopra qualcosa che ronza.",
		"Chi abita lassù legge alla luce della lampada e non ara. Un altro genere di campo.",
	},
	["elw.sub.azora.03"] = {
		"Una torre dell'arte, qui in mezzo ai cavoli. Darei volentieri un'occhiata a quei libri.",
		"Anche così lontano dalla città, qualcuno mantiene la vecchia disciplina e i vecchi libri. Lo rispetto.",
		"Protezioni sulla porta. Educate, almeno. Chi fa il mio mestiere tiene in ordine i suoi libri.",
	},
	["elw.sub.brackwell.01"] = {
		"si fa strada tra zucche arancioni e grasse e i tralci calpestati di una fattoria che nessuno coltiva più.",
		"nota le impronte di stivali nella terra morbida tra le zucche, troppe per un solo contadino, e la porta della fattoria spalancata.",
		"passa davanti alla fattoria vuota, la porta aperta, una striscia di stoffa rossa legata allo steccato come una bandiera.",
	},
	["elw.sub.brackwell.02"] = {
		"Banditi mascherati a guardia di un campo di zucche. Ambiziosi.",
		"I Defias si sono presi una fattoria intera. Per le zucche, immagino, visto che le maschere le hanno già rosse.",
		"Maschere rosse e zucche arancioni. Allegro, in modo minaccioso.",
	},
	["elw.sub.brackwell.03"] = {
		"Qui lavorava una famiglia. Ora sul loro portico siedono sconosciuti mascherati, e si scaldano al loro focolare.",
		"Una fattoria presa a punta di coltello. Le zucche sono cresciute lo stesso: non sanno di chi sono.",
		"Alla terra non importa chi la tiene, a me sì: qualcuno è stato scacciato da questo focolare, e il fuoco ora arde per degli estranei.",
	},
	["elw.sub.cairn.01"] = {
		"passa accanto a un mucchio di pietre accatastate vicino alla riva, e oltre l'ampia acqua grigia.",
		"guarda il lago largo, la riva lontana persa dietro canne e pini.",
		"si ferma tra le pietre della riva, dove l'acqua lambisce il tumulo come se lo contasse, e lo ricontasse.",
	},
	["elw.sub.cairn.02"] = {
		"Un tumulo sulla riva di un lago. O un monumento, o il pomeriggio molto noioso di qualcuno.",
		"I murloc qui hanno un villaggio intero. Più grande di certi che ho incontrato per strada.",
		"Lago grande, accampamento di murloc grande. Chi gli ha dato il nome delle pietre non ha mai dovuto percorrerne la riva.",
	},
	["elw.sub.crystal.01"] = {
		"scende all'acqua limpida, dove pesciolini guizzano su sassi chiari nel basso fondale.",
		"si ferma sulla riva; l'acqua è così chiara che il fondo pare a un palmo di mano.",
		"resta presso un'acqua limpida come un respiro trattenuto, ogni sasso del fondo lucente come una moneta.",
	},
	["elw.sub.crystal.02"] = {
		"Bel lago. Qualcuno dica ai murloc che non è loro.",
		"Acqua chiara, sabbia pulita e un gorgoglio dietro le canne. Splendido.",
		"Farei un bagno, ma quelli del posto hanno le lance.",
	},
	["elw.sub.crystal.03"] = {
		"Capanne di murloc sull'acqua, fatte di canne e testardaggine. Li scacci, e al raccolto dopo sono di nuovo lì.",
		"Scommetto che quelle capanne di fango sull'acqua non c'erano quando i contadini disegnavano le mappe.",
		"Un lago grazioso con una riva affollata. Accanto a quest'acqua la pace non è mai lontana più di un gracidio.",
	},
	["elw.sub.eastvale.01"] = {
		"entra nella radura, dove i tronchi accatastati sanno di resina fresca e la segatura si posa sotto i piedi.",
		"scavalca un pino abbattuto, i ceppi degli alberi intorno tagliati netti e chiari.",
		"entra nel campo cinto di ceppi, mentre da qualche parte tra gli alberi le asce continuano a mordere.",
	},
	["elw.sub.eastvale.02"] = {
		"Orsi da una parte, gnoll dall'altra. Non c'è da stupirsi che i taglialegna abbiano quelle facce.",
		"Buon legname, qui. Cattivi vicini.",
		"Un campo di taglialegna con tutti questi artigli intorno dovrebbe pagare un extra per il rischio.",
	},
	["elw.sub.eastvale.03"] = {
		"Ogni catasta di tronchi è un pezzo di bosco che va in città: travi, tetti, culle.",
		"Qui cadono i pini perché la città stia in piedi. Uno scambio giusto, finché non lo è più.",
		"Qui il bosco paga la sua decima alla città, un tronco alla volta, e i lupi tra i pini tengono il conto.",
	},
	["elw.sub.echoridge.01"] = {
		"si ferma all'imbocco della miniera; i puntelli sono vecchi, e il buio dentro sa di pietra bagnata e di sego.",
		"scruta nel cunicolo dove piccole luci ondeggiano e spariscono, come candele portate da qualcuno di basso.",
		"resta davanti alla bocca aperta del crinale, dove il suono dei picconi sulla pietra da tempo ha lasciato il posto a raspare e squittii.",
	},
	["elw.sub.echoridge.02"] = {
		"Coboldi. Ma certo che sono coboldi. Ogni buco di questa valle ne ha qualcuno.",
		"I minatori se ne sono andati, i coboldi si sono sistemati. L'affitto, immagino, non lo paga nessuno.",
		"Squittii nel buio e odore di cera fusa. Una tana di coboldi la riconoscerei a occhi chiusi.",
	},
	["elw.sub.echoridge.03"] = {
		"Attenzione alla testa, là dentro. Soffitti bassi e compagnia più bassa ancora.",
		"Prima la torcia, poi la lama. I cunicoli bui non perdonano.",
		"Fuoco acceso, occhi aperti. Cerchiamo di non svegliare tutto il crinale.",
	},
	["elw.sub.edge.01"] = {
		"sbuca dove le querce si diradano e l'erba oltre si fa secca e gialla verso Westfall.",
		"si ferma al margine degli alberi; davanti, l'erba sbiadisce dal verde alla paglia.",
		"resta dove il bosco finisce come su una riva, l'erba verde che cede all'oro stanco dell'ovest.",
	},
	["elw.sub.edge.02"] = {
		"Da qui in poi è terra di gnoll. Occhi sui cespugli.",
		"Tracce di Riverpaw. Grosse. Meglio non incontrare chi le ha lasciate.",
		"Così vicino alla bacheca delle taglie di Westbrook, ogni cespuglio potrebbe nascondere uno gnoll.",
	},
	["elw.sub.edge.03"] = {
		"Alle spalle, erba verde e grassa. Davanti, una terra secca che la gente sta lasciando. Il confine è più netto di qualsiasi frontiera.",
		"Westfall comincia dove l'erba si arrende. I contadini di qua dicono che non è sempre stato così.",
		"Qui l'abbondanza del regno finisce come una borsa vuota, e la strada prosegue in una terra più dura.",
	},
	["elw.sub.jasperlode.01"] = {
		"arriva alla miniera scavata nel fianco della collina, un carrello che arrugginisce sui binari all'ingresso.",
		"guarda i binari che corrono nel buio, i carrelli ribaltati e la pietra intorno segnata dai picconi.",
		"si ferma dove la collina è stata aperta come una ferita, e i vecchi binari scendono dentro la pietra.",
	},
	["elw.sub.jasperlode.02"] = {
		"Era il pane di qualcuno, questa miniera. Ora è una tana piena di candele e artigli.",
		"Questi cunicoli li hanno scavati minatori onesti. Guarda chi ci abita adesso.",
		"Qui i picconi hanno taciuto, e i cunicoli sono andati a chi li voleva.",
	},
	["elw.sub.jasperlode.03"] = {
		"Ripuliamola. Qualcuno vorrà riavere questa miniera.",
		"Fuori i coboldi, dentro i minatori. Questo è il piano.",
		"Ogni cunicolo, ogni candela. Facciamolo per bene.",
	},
	["elw.sub.maclure.01"] = {
		"Le viti dei Maclure. Mi dicono che i vicini, alla fattoria Stonefield, abbiano qualcosa da ridire.",
		"Viti da questa parte, e dall'altra una famiglia che il nome di questa non lo pronuncia ad alta voce.",
		"Due fattorie, una strada e una faida su cui potresti piantare un palo da vigna.",
	},
	["elw.sub.maclure.02"] = {
		"costeggia le viti a spalliera, con un cane della fattoria che segue a distanza prudente.",
		"si ferma accanto a un filare, dove qualcuno ha lasciato una zappa e una brocca a metà.",
		"passa lungo lo steccato della vigna, e dalla fattoria una voce si interrompe a metà frase per guardare.",
	},
	["elw.sub.mirror.01"] = {
		"si ferma sulla riva; il lago è così fermo che i pini ci stanno dentro a testa in giù.",
		"guarda l'acqua liscia, dove il cielo giace piatto e intero.",
		"si ferma accanto a un lago che tiene tutto il cielo in grembo, come se il mondo fosse stato piegato una volta e lasciato ad asciugare.",
	},
	["elw.sub.mirror.02"] = {
		"{subzone}. Ho la faccia stanca quanto mi sento.",
		"Bel riflesso. Peccato che sia il mio.",
		"Se da quello specchio spunta qualcosa con le pinne, non rispondo.",
	},
	["elw.sub.northshire.01"] = {
		"scende in {subzone}, dove pietra grigia, siepi curate e vigneti dividono una culla verde e stretta.",
		"segue la strada della valle tra le colline, oltre le reclute che si esercitano in un cortile di pietra e le viti in file ordinate.",
		"entra nella valle riparata, chiusa da colline come mani a coppa, dove la pietra dell'abbazia tiene la sua paziente veglia.",
	},
	["elw.sub.northshire.02"] = {
		"Una valle piena di reclute che menano fendenti con lame da esercizio. Tutti cominciano da qualche parte.",
		"Facce giovani ovunque, spade strette troppo forte. Conosco quella presa.",
		"La valle dove i braccianti diventano soldati. Ad alcuni la lama riesce, altri si fanno solo le vesciche.",
	},
	["elw.sub.northshire.03"] = {
		"Coboldi nella miniera, briganti nella vigna e monaci in mezzo. Valle vivace.",
		"{subzone}. Tranquilla, dicevano. E allora perché girano tutti con la spada?",
		"Abbazia pacifica, viti splendide e un problema di lupi grande come una guerra.",
	},
	["elw.sub.orchard.01"] = {
		"Meli carichi di frutti, e l'erba sotto piena di mele cadute. Le vespe sono contente.",
		"Un frutteto. Potrei mangiarmi tutti questi filari di alberi e nessuno se ne accorgerebbe. Forse.",
		"File di alberi da frutto, una scala appoggiata a un tronco. Qualcuno contava di riprenderla più tardi.",
	},
	["elw.sub.orchard.02"] = {
		"raccoglie una mela caduta nell'erba e se la rigira in mano.",
		"cammina sotto i rami bassi, schivando foglie e frutti.",
		"si scuote una foglia dalla spalla, nel frutteto che ronza d'api.",
	},
	["elw.sub.ridgepoint.01"] = {
		"sale verso la vecchia torre di guardia, le sue pietre rivolte a est verso i monti rossi.",
		"alza lo sguardo alla torre sul crinale; da qui la strada per Redridge si perde alla vista tra i monti.",
		"resta sotto la torre segnata dal tempo, che fissa ancora i monti d'oriente come se aspettasse qualcuno.",
	},
	["elw.sub.ridgepoint.02"] = {
		"Una torre di guardia al confine del regno. Qualcuno, lassù, è rimasto in piedi per ore perché altri potessero dormire.",
		"Da lassù i guai che vengono da Redridge si vedrebbero molto prima che arrivino.",
		"Ogni confine vuole una torre, e ogni torre qualcuno abbastanza testardo da salirci.",
	},
	["elw.sub.stonefield.01"] = {
		"attraversa l'aia, dove le galline si sparpagliano e un orto di cavoli arriva fino allo steccato.",
		"si ferma presso la casa colonica; da qualche parte, dentro, una voce si lamenta dei vicini.",
		"passa accanto al pozzo e alla catasta di legna, la fattoria indaffarata in un modo piccolo e costante.",
	},
	["elw.sub.stonefield.02"] = {
		"La casa degli Stonefield. Terra buona, lavoro duro e un rancore per i Maclure che terranno al caldo per anni.",
		"Da qui si vedono le viti dei Maclure. Abbastanza vicine per gridarsi qualcosa, abbastanza lontane per fingere di non sentire.",
		"Vicini in lite con uno steccato in mezzo. Ho visto regni governati allo stesso modo.",
	},
	["elw.sub.vineyards.01"] = {
		"cammina tra i filari, dove le casse giacciono rovesciate e l'uva marcisce sui tralci.",
		"scavalca un cesto d'uva rovesciato, i filari attorno troppo silenziosi per un tempo di vendemmia.",
		"si ferma accanto a un filare calpestato; un brandello di stoffa rossa impigliato a un palo dice chi è passato.",
	},
	["elw.sub.vineyards.02"] = {
		"Ladri nella vigna. Non lasciano neanche fermentare l'uva in pace.",
		"Qualcuno si serve del raccolto, e non sono gli uccelli.",
		"Maschere rosse tra le viti. Un'annata audace.",
	},
	["elw.sub.westbrook.01"] = {
		"passa davanti al presidio, dove una guardia sui gradini tiene d'occhio la strada verso Westfall.",
		"si ferma davanti alla bacheca del presidio, fitta di avvisi e di una taglia o due, con la strada dell'ovest che le corre accanto.",
		"passa davanti alle baracche, dove i soldati affilano le lame e si lamentano degli gnoll sulla strada.",
	},
	["elw.sub.westbrook.02"] = {
		"Un avviso di taglia con sopra uno gnoll. Grosso, lo gnoll. Molto grosso.",
		"Ultimo presidio prima di Westfall. Dopo, le guardie sono una diceria.",
		"Soldati, una bacheca di taglie e una strada verso ovest. Ogni frontiera ha questa faccia.",
	},
	["elw.thanks.01"] = {
		"Grazie. La gente di Elwynn è gentile, e tu ne sei la prova.",
		"Ti sono {g:obbligato|obbligata}. Ti offro una birra al Lion's Pride.",
		"Grazie davvero. Brava gente fa buona strada, e si merita una buona birra.",
	},
	["elw.threat.01"] = {
		"Vattene. Le guardie sono vicine, e io di più.",
		"Provaci, e sarai la prossima storia che raccontano alla locanda.",
		"Torna nella tua tana prima che te la trovi io.",
	},
	["elw.toast.01"] = {
		"A Elwynn: campi verdi, cantine piene e strade tranquille!",
		"Ai contadini, che ci sfamano, e alle guardie, che ci lasciano bere la birra in pace!",
		"Alzate i boccali: al bosco, e a chiunque lo custodisca!",
	},
	["elw.travel.hearth.01"] = {
		"La pietra del ritorno si scalda nel palmo. Da qualche parte c'è una panca vicino a un focolare col mio nome sopra.",
		"Si torna a Goldshire. Stufato, un letto, un focolare, e nessuno che cerca di mordermi.",
		"La pietra mi tira verso il focolare come una mano sulla manica. Lascio fare.",
	},
	["elw.travel.hearth.02"] = {
		"Si torna al Lion's Pride. Tenetemi una sedia vicino al focolare.",
		"Focolare, arrivo.",
		"Basta strada. Goldshire e un focolare caldo, per favore.",
	},
	["elw.victory.defias.01"] = {
		"Sotto la maschera, solo una faccia stanca. Mi chiedo che mestiere facesse prima.",
		"Un'altra maschera rossa nella polvere. Il figlio di qualcuno, il muratore di qualcuno, un tempo.",
		"Hanno preso coltelli e maschere perché la pietra non pagava, così si racconta. Non rende giusto il coltello, ma capisco da dove viene.",
	},
	["elw.victory.determined.01"] = {
		"Il prossimo. E quello dopo. La strada non si sgombera da sola.",
		"Su questa strada posso andare avanti tutto il giorno. Magari dovrò.",
		"Ognuno che tolgo di mezzo è un tratto di strada che domani qualcuno potrà percorrere tranquillo. Continuo.",
	},
	["elw.victory.hands.01"] = {
		"Le mani tremano un po'. Bene. Vuol dire che sto ancora {g:attento|attenta}.",
		"Non il mio lavoro migliore, ma le mani hanno tenuto, e sono io {g:quello|quella} in piedi.",
		"Qui finisce in fretta, e il bosco torna bello prima che le mani smettano di tremare. È questa la cosa strana.",
	},
	["elw.victory.hogger.01"] = {
		"Hogger è finito. Qualcuno dica a Westbrook di aprire la borsa e contare le monete.",
		"Ecco cosa restava del terrore del margine del bosco.",
		"Gnoll grosso, taglia grossa, belle monete. Uno scambio onesto.",
	},
	["elw.victory.joke.01"] = {
		"E dicono che Elwynn sia la parte tranquilla.",
		"In questo bosco tutto cerca di mordermi, o solo quasi tutto?",
		"E uno. Qualcuno tenga il conto, io sono {g:negato|negata}.",
	},
	["elw.victory.kobold.01"] = {
		"Ecco. La candela puoi tenertela.",
		"Coboldi. Piccoli, chiassosi e infiniti, e ognuno con la sua candela.",
		"Candela spenta, piccolo minatore.",
	},
	["elw.victory.murloc.01"] = {
		"Torna nel lago. Ah, già. Lascia stare.",
		"Murloc. Puzzava più di quanto combattesse.",
		"Pesce per cena? Forse non questo.",
	},
	["elw.victory.quiet.01"] = {
		"abbassa l'arma e ascolta; il canto degli uccelli del bosco riprende, una voce alla volta.",
		"fa un passo indietro dal nemico caduto, il respiro che rallenta, l'erba che già si rialza dove era stata schiacciata.",
		"resta nel silenzio dopo lo scontro, mentre l'erba si raddrizza e un uccello ricomincia a cantare tra le querce, come se nulla fosse.",
	},
	["elw.victory.road.01"] = {
		"Un guaio in meno sulla strada.",
		"Ecco. I contadini dormiranno un po' più tranquilli, e la strada pure.",
		"Fatto. La strada di Elwynn è un po' più quieta.",
	},
	["elw.victory.weary.01"] = {
		"pulisce l'arma sull'erba e controlla la strada da entrambe le parti.",
		"riprende fiato nell'erba alta e muove una spalla indolenzita.",
		"si inginocchia un attimo nell'erba a controllare una manica strappata, poi si rialza.",
	},
	["elw.weather.clear.01"] = {
		"Le nuvole si aprono, passa il sole, e i campi si accendono di verde e d'oro tutti insieme.",
		"Di nuovo il sole. Tutto gocciola e luccica.",
		"Il cielo si rasserena, e sotto il sole il bosco esce dal grigio come una moneta lavata.",
	},
	["elw.weather.fog.01"] = {
		"rallenta mentre la nebbia sale dai laghi e inghiotte i pali degli steccati uno a uno.",
		"guarda la nebbia posarsi tra i pini finché la strada davanti è solo un pallido suggerimento.",
		"si ferma mentre la nebbia sale dai campi bassi, e le fattorie diventano isole in un mare bianco e silenzioso.",
	},
	["elw.weather.rain.01"] = {
		"Arriva la pioggia dalle colline. Tutto il bosco, di colpo, sa di terra.",
		"Ecco la pioggia. I contadini sorrideranno sotto i cappucci.",
		"La pioggia attraversa i campi a tende grigie, la terra si scurisce, e le querce alzano le foglie per bere.",
	},
	["elw.weather.storm.01"] = {
		"Temporale su Elwynn. Qualcuno ritiri il bucato.",
		"Tuoni sulle colline. Tutte le mucche del bosco saranno di cattivo umore.",
		"Questo sì che è un temporale. Pure i coboldi resteranno nelle loro buche.",
	},
	["elw.zone.alliance.01"] = {
		"{zone}. Gli stendardi sulla strada sono i nostri, e anche il pane nei forni. È come essere fatti entrare in casa.",
		"I nostri campi, le nostre strade, le nostre guardie in blu e oro. Qui il passo si fa più leggero.",
		"Qui il regno non è una parola su una mappa ma un solco, un focolare, una lanterna alla finestra, e una strada nostra da custodire.",
	},
	["elw.zone.alliance.02"] = {
		"Elwynn. Ogni campo, qui, vale un turno di guardia.",
		"Il cuore del regno. Niente di immondo attraversa questi campi finché ci sono io.",
		"Questa è la terra che le nostre mura furono alzate a proteggere. Non la vedrò calpestata.",
	},
	["elw.zone.emo.serene"] = {
		"L'erba si muove in onde lunghe e lente. Per una volta lascio scendere le spalle.",
		"Acqua che scorre sotto un ponticello di pietra. Potrei restare qui un po', e a nessuno importerebbe.",
		"In tutto questo verde niente vuole qualcosa da me. Per un'ora, me lo prendo.",
	},
	["elw.zone.emo.worried"] = {
		"tiene il centro della strada, gli occhi sulla linea degli alberi dove il bosco si fa più fitto.",
		"lancia due occhiate a ogni cespuglio lungo lo steccato, una mano mai lontana dalla cintura.",
		"accelera un poco lungo il margine del bosco, più in ascolto che a guardare.",
	},
	["elw.zone.first.01"] = {
		"{zone}. Mi avevano detto che era una terra gentile. Nessuno mi aveva detto che la strada profumasse di mele.",
		"Prima volta su queste strade. Tutti salutano, e ancora non so a chi rispondere.",
		"Metto piede per la prima volta in {zone}, e la terra pare aprire la mano: campi, boschi e una strada che sa dove andare.",
	},
	["elw.zone.first.02"] = {
		"Dunque questa è {zone}. Mi aspettavo più mura e meno mucche.",
		"Mai messo piede qui. Nessuno mi aveva avvisato delle pecore.",
		"Primo sguardo su {zone}: steccati, campi e un coboldo con una candela in testa. Ci sta.",
	},
	["elw.zone.green.01"] = {
		"rallenta dove la strada scende tra colline verdi, con querce e pini fermi ai due lati.",
		"guarda i prati che ondeggiano, le fattorie di pietra e la lunga linea scura degli alberi.",
		"prosegue dentro {zone}, dove le colline corrono verdi fino al limite dello sguardo e le querce tengono per sé i loro pensieri.",
	},
	["elw.zone.green.02"] = {
		"{zone}. Odore di fieno tagliato, un carro che cigola da qualche parte e un cane indeciso se valga la pena abbaiarmi.",
		"Steccati, solchi, una ruota di mulino che gira piano. Questa terra l'hanno lavorata mani pazienti.",
		"Tanto verde da far quasi male agli occhi. Qualcuno custodisce tutta quest'erba e questo grano, campo per campo.",
	},
	["elw.zone.green.03"] = {
		"Ecco una foresta dove si cammina senza temere per gli stivali.",
		"Colline verdi, acqua chiara, strade decenti. Potrei abituarmici.",
		"Persino i lupi, da queste parti, sembrano ben nutriti.",
	},
	["elw.zone.green.04"] = {
		"Querce grosse come torri, radici come nocche piantate nella terra. C'erano prima delle fattorie.",
		"Querce vecchie, radici profonde. Qualunque cosa accada sulle strade, il bosco va avanti col suo tempo.",
		"Queste querce erano già vecchie quando in città sorse il primo muro. Hanno visto regni alzarsi e regni bruciare, e le loro radici non si sono mosse.",
	},
	["elw.zone.horde.01"] = {
		"Terra degli umani. Campi ordinati, guardie alte, e ogni contadino è un paio d'occhi per la città.",
		"Troppo verde, troppo quieto, troppe casacche blu. Sto alla larga dalla strada maestra.",
		"Cammino nel giardino del nemico. La sua pace è vera, ed è proprio questo a renderlo pericoloso per me.",
	},
	["elw.zone.horde.02"] = {
		"Elwynn. Pure gli spaventapasseri sembrano pronti a denunciarmi.",
		"Bel posto. Peccato per le guardie.",
		"Bestiame grasso, erba morbida e un regno intero che vorrebbe la mia testa su una picca. Delizioso.",
	},
	["elw.zone.race.dwarfgnome"] = {
		"Colline, le chiamano. Da dove vengo io sarebbero dossi sulla strada.",
		"Bel paese. Ci starebbe bene qualche roccia in più.",
		"Alberi dappertutto, e la terra non rimbomba nemmeno se la pesti. Umani, eh?",
	},
	["elw.zone.race.human"] = {
		"Elwynn. Arata, bruciata, seminata da capo. La mia gente non molla un campo facilmente.",
		"Campi umani, steccati umani, e testardaggine umana in ogni muretto di pietra.",
		"Un tempo il fuoco degli orchi ridusse questi campi in cenere, e la mia gente gli andò dietro con gli aratri. Tutto questo verde è una specie di risposta, scritta nella terra.",
	},
	["elw.zone.race.nightelf"] = {
		"Una foresta umana. Ai margini gli alberi sono tagliati in file ordinate, come capelli sotto un coltello attento.",
		"Questi boschi giovani non hanno mai sentito cantare una driade. Crescono lo stesso, testardi e onesti.",
		"Querce giovani, di vita breve come le mani che le curano. Eppure c'è una gentilezza nel modo in cui questo bosco è tenuto.",
	},
	["elw.zone.time.dawn"] = {
		"si ferma su un'altura mentre l'alba sale dorata su {zone}, la rugiada accesa su ogni solco.",
		"guarda la luce dell'alba raggiungere i tetti delle fattorie uno dopo l'altro, come una mano che li sfiora.",
		"resta {g:fermo|ferma} mentre l'alba si versa sulle colline, e per un respiro tutto il bosco pare tenere la luce tra le mani a coppa.",
	},
	["elw.zone.time.night"] = {
		"Notte su {zone}. Lanterne alle finestre delle fattorie, rane sui laghi, un lupo da qualche parte tra i pini.",
		"Già buio. La strada è chiara abbastanza da seguirla, e le guardie portano le lanterne. Bene.",
		"La notte qui è gentile: finestre accese, voci basse, e il bosco che respira piano nel buio.",
	},
	["elw.zone.weather.fog"] = {
		"Con questa nebbia non vedo il prossimo steccato. Sento un carro, però, e qualcuno che canta male.",
		"Nebbia nei campi bassi. Le querce ci stanno dentro come ospiti arrivati troppo presto.",
		"La nebbia si prende le fattorie una alla volta, e il bosco ridiventa ciò che era prima dell'aratro: alberi e silenzio, senza margini.",
	},
	["elw.zone.weather.rain"] = {
		"alza il bavero contro la pioggia, mentre la strada di {zone} si fa fango morbido e bruno.",
		"cammina sotto una pioggia sottile, oltre campi scuriti e steccati che gocciolano a ogni palo.",
		"prosegue sotto la pioggia; i solchi si riempiono d'acqua, e da qualche parte un contadino maledice il cielo con sincero affetto.",
	},
	["elw.journey.arrival.w01.01"] = {
		"A terra, tra le querce. Dopo il vento lassù, Elwynn profuma di erba tagliata e di pane.",
		"Piedi su un prato morbido e verde. Qualunque cosa ne pensi il grifone, questa è la metà migliore del viaggio.",
	},
	["elw.journey.start.w01.01"] = {
		"si leva sopra Elwynn su ali di grifone, mentre la foresta si stende là sotto a onde verdi, rotte da tetti e dal filo della strada.",
		"sale oltre le cime degli alberi, coi camini dei villaggi che fumano molto più in basso e un lago che luccica tra le fronde.",
		"prende quota nell'aria aperta sopra le querce di Elwynn, con le fattorie disposte là sotto come una coperta di pezze.",
	},
	["elw.qp.w01.01"] = {
		"Ecco tutto. Ora indietro per la strada, prima che i lupi si accorgano che porto qualcosa.",
		"Qui ho finito. Qualcuno a Elwynn aspetta questo, e portarglielo sarà una bella passeggiata.",
	},
	["elw.quest.w01.01"] = {
		"Ecco fatto. Magari adesso questa gente può tornare al suo raccolto.",
		"Finito. Che i contadini tornino a preoccuparsi dei loro campi, piuttosto.",
	},
	["elw.attack.w02.01"] = {
		"Lascia in pace i contadini!",
		"Torna nel bosco, tu!",
		"Via dalla strada e fuori dai campi!",
	},
	["elw.quest_complete.w02.01"] = {
		"consegna l'ultima parte del lavoro e riceve in cambio un sorriso grato, di quelli che arrivano fino agli occhi.",
		"riceve i ringraziamenti di un viso stanco e riconoscente, e si rimette in strada col passo un po' più leggero.",
		"si prende una pacca sul braccio e qualche moneta, mentre i prati di Elwynn continuano per la loro strada come se niente fosse.",
	},
	["elw.quest_progress.w02.01"] = {
		"Una parte è fatta. Elwynn nasconde il resto tra campi e boschi, ma qui niente si nasconde poi tanto.",
		"Non è finita, ma manca meno. Se non altro, è un bel paese in cui darsi da fare.",
	},
	["elw.attack.w17.cry.001"] = {
		"Per ogni fattoria lungo la strada di Goldshire!",
		"Questo è per i contadini di Elwynn!",
		"Per i covoni e i pollai!",
	},
	["elw.attack.w17.cry.002"] = {
		"Giù tra le margherite!",
		"Guardati il trifoglio da vicino!",
		"Senti che terra buona c'è a Elwynn!",
	},
	["elw.attack.w17.cry.003"] = {
		"Un regalo dal raccolto di Elwynn!",
		"Dritto dai campi di Elwynn, e gratis!",
		"Fresco di mulino, e duro il doppio!",
	},
	["elw.attack.w17.cry.004"] = {
		"Per le mura bianche di Stormwind!",
		"Per il regno e il giovane re!",
	},
	["elw.attack.w17.cry.005"] = {
		"Adesso. Come una lepre tra le stoppie.",
		"Ora, prima che i cani delle fattorie attacchino ad abbaiare.",
	},
	["elw.attack.w17.cry.006"] = {
		"Ti aro sotto come le stoppie dell'anno scorso!",
		"Sottosopra, come un campo in primavera!",
	},
	["elw.attack.w17.cry.007"] = {
		"Costante come la ruota del mulino!",
		"Macina e macina, come i mulini di Elwynn!",
	},
	["elw.attack.w17.cry.008"] = {
		"Ed ecco una spinta verso Westfall!",
		"Fino a Redridge, se ci riesco!",
		"L'uscita da Elwynn è da questa parte!",
	},
	["elw.attack.w17.cry.009"] = {
		"Che ogni lampione di questa strada faccia da testimone!",
		"Che i lampioni si godano questa!",
	},
	["elw.attack.w17.cry.010"] = {
		"Come abbattere una quercia a Eastvale: un bel colpo, poi il successivo.",
		"Colpi regolari, come le asce al campo dei taglialegna.",
	},
	["elw.attack.w17.cry.011"] = {
		"Anche Elwynn sa mordere!",
		"Pure la terra più mite ha i denti!",
		"Elwynn mite? Un corno!",
	},
	["elw.battle.w17.defias.001"] = {
		"Muratore, eri? Allora sai che fine fa un muro costruito sopra una crepa.",
		"Dicono che un tempo tagliassi buona pietra. Peccato che adesso tagli borse.",
	},
	["elw.battle.w17.defias.002"] = {
		"Stoffa rossa su una faccia che forse un tempo posava le pietre di Stormwind. E adesso questo.",
		"Mani mai pagate, dicono le storie. Pagate o no, sono venute per prime contro di me.",
		"Sotto quella maschera c'è un mestiere che nessuno ha voluto pagare.",
	},
	["elw.battle.w17.defias.003"] = {
		"Qualunque cosa ti debba la città, la sua borsa non la porto io.",
		"Non sono un nobile, io. Derubami pure: il debito resta lì dov'è.",
	},
	["elw.battle.w17.defias.004"] = {
		"vede la maschera rossa sgusciare da dietro un carro e le va incontro.",
		"si gira verso il ladro mascherato prima che la mano allungata trovi la borsa.",
		"coglie il luccichio di un coltello sotto un fazzoletto rosso e si muove per {g:primo|prima}.",
	},
	["elw.battle.w17.defias.005"] = {
		"Vi siete presi la fattoria dei Brackwell. Questa strada no.",
		"Prima le vigne, poi i campi di zucche. Dove vi fermate? Qui.",
	},
	["elw.battle.w17.defias.006"] = {
		"Ancora rosso? Alla Fratellanza farebbe comodo un secondo colore.",
		"Tutti con lo stesso rosso. Qualcuno ha un tintore in tasca.",
		"Fazzoletto, coltello, faccia scura. La divisa completa della Fratellanza.",
	},
	["elw.battle.w17.defias.007"] = {
		"I tagliaborse combattono sporco. Guarda la mano libera, non la faccia.",
		"Su queste strade non lavorano mai da soli. Dov'è il secondo?",
	},
	["elw.battle.w17.defias.008"] = {
		"Per la pace del re su questa strada: posa quello che hai in mano.",
		"Questa strada è del regno. Scendine da te, o te ne faccio scendere io.",
		"In nome della corona che custodisce questi campi, deponi le armi.",
	},
	["elw.battle.w17.defias.009"] = {
		"regge l'assalto del bandito, e per un attimo vede solo gli occhi stanchi sopra la stoffa rossa.",
		"affronta la figura mascherata, le mani callose come quelle di un manovale.",
	},
	["elw.battle.w17.defias.010"] = {
		"Goldshire ne ha piene le tasche di voi. E io pure.",
		"Ogni contadino da Northshire a Eastvale conosce quella maschera. Ora anch'io.",
		"La guardia di Goldshire pagherebbe per vedere questo. Io lo faccio gratis.",
	},
	["elw.battle.w17.field.001"] = {
		"Non tra i cavoli. Teniamo lo scontro lontano dall'orto del contadino.",
		"Occhio ai solchi. Qualcuno li ha tracciati dritti, e mi spiacerebbe sprecare tanto lavoro per te.",
	},
	["elw.battle.w17.field.002"] = {
		"Terra grassa sotto i piedi: ottima per il grano, pessima per l'appoggio. Peso indietro.",
		"Erba alta e uno steccato dietro. Non farti schiacciare contro le traverse.",
	},
	["elw.battle.w17.field.003"] = {
		"arretra fino a un muretto a secco ai margini di un campo, e lì si pianta.",
		"scavalca un rastrello rovesciato e si volta verso lo scontro.",
		"tiene alle spalle il muro di una fattoria, pietre posate da mani che non ci sono più.",
	},
	["elw.battle.w17.field.004"] = {
		"Proprio sotto il lampione, allora. Che tutta la strada guardi.",
		"Hai cercato rissa su una strada di pattuglia, nel cortile di casa del regno. Pessima scelta.",
	},
	["elw.battle.w17.field.005"] = {
		"Prima o poi su questa strada passa una pattuglia. Chiudiamola prima che vogliano il merito.",
		"Svelti, prima che arrivino le guardie e ci scrivano sopra un rapporto.",
	},
	["elw.battle.w17.field.006"] = {
		"I campi servono a far crescere le cose. Ogni scontro, da queste parti, calpesta qualcosa che qualcuno ha seminato.",
		"Qualcuno ha seminato questa terra con cura. Cerca di non devastarla.",
	},
	["elw.battle.w17.field.007"] = {
		"Un regno intero mangia da Elwynn. Un pezzo di terra per un altro scontro lo trova.",
		"Questo è il granaio del regno. Non te lo lascio guastare.",
		"Metà del pane di Stormwind nasce in questi campi. Bada a dove metti i piedi.",
	},
	["elw.battle.w17.field.008"] = {
		"si volta mentre, chissà dove, il cane di una fattoria comincia ad abbaiare, troppo tardi per servire a qualcosa.",
		"sente un cane abbaiare lontano e si gira verso ciò che l'ha allarmato.",
	},
	["elw.battle.w17.field.009"] = {
		"Le guardie sono a portata di grido, ma un grido è troppo lontano. Questo tocca a me.",
		"Nessuna pattuglia in vista. Va bene: la pace di questa strada la tengo io.",
		"I soldati di Stormwind sono ai confini. Qualcuno deve badare a quel che sta in mezzo.",
	},
	["elw.battle.w17.field.010"] = {
		"Elwynn vende alla città pane e lana, non risse. Hai sbagliato bottega.",
		"Questa terra va avanti a latte e pazienza. A te mancano tutti e due.",
		"Mucche, fieno, e tu. Uno dei tre è di troppo.",
	},
	["elw.battle.w17.field.011"] = {
		"Queste querce hanno visto passare due guerre. Non sarai tu a smuovermi.",
		"Radici vecchie, terra profonda. A Elwynn non si sradica niente facilmente. Me meno di tutto.",
	},
	["elw.battle.w17.kobold.001"] = {
		"Giù nella buca, scavatore. I minatori rivogliono i loro cunicoli.",
		"Hai scavato fino al regno sbagliato, muso di topo.",
		"Va' a scavare dove non hai dei contadini che ti vivono sopra la testa.",
	},
	["elw.battle.w17.kobold.002"] = {
		"Squittii, raspare d'unghie e puzza di sego vecchio. Piccolo, ma non è mai solo.",
		"Occhio al piccone. Per un coboldo sono solo un'altra vena da scavare.",
	},
	["elw.battle.w17.kobold.003"] = {
		"Fargodeep, Jasperlode, Echo Ridge. Quante buche vi servono, a voi?",
		"Tre miniere in un solo bosco, e le volete tutte. Piccoli ingordi.",
		"Tutte le miniere di Elwynn, e volete altri cunicoli. Stavolta no.",
	},
	["elw.battle.w17.kobold.004"] = {
		"schiva un colpo di piccone alla cieca e sente il tanfo di pelo umido e sego.",
		"fa un passo indietro mentre il coboldo avanza squittendo, la fiammella che ondeggia.",
	},
	["elw.battle.w17.kobold.005"] = {
		"Il minerale non è tuo, i cunicoli non sono tuoi, e nemmeno questo scontro.",
		"Ladro di concessioni! Fammi vedere l'atto. No? Lo immaginavo.",
	},
	["elw.battle.w17.kobold.006"] = {
		"Giù, e in fretta. Tieni gli occhi in basso, dove stanno i coboldi.",
		"Puntano alle ginocchia. Stai giù, e non inciampare in quelli piccoli.",
		"Nemici piccoli, colpi bassi. Attenzione agli stinchi.",
	},
	["elw.battle.w17.kobold.007"] = {
		"Scava abbastanza e sbuchi nella cantina di qualche contadino. Non finché ci sono io.",
		"Scava sotto un'altra fattoria e mezza valle crolla. Fermo lì.",
	},
	["elw.battle.w17.kobold.008"] = {
		"pianta i piedi tra i detriti mentre il coboldo si arrampica avanti, il piccone alto.",
		"accoglie la carica del coboldo, una piccola furia di artigli e terra.",
	},
	["elw.battle.w17.kobold.009"] = {
		"Sei piccolo e furioso. Lo rispetto. Vinco lo stesso.",
		"Scavatore testardo. Vediamo quale testardaggine dura di più.",
	},
	["elw.battle.w17.kobold.010"] = {
		"Dove c'è una fiammella, ce ne sono altre dieci dietro, nel buio.",
		"Uno squittio, e una dozzina che rispondono. La collina ne è piena.",
	},
	["elw.battle.w17.wild.001"] = {
		"I pastori hanno dei nomi per te, lupo. Nessuno educato.",
		"Gli agnelli stanno giù per la collina. Io sono un boccone ben più duro.",
	},
	["elw.battle.w17.wild.002"] = {
		"sente il predatore girare in tondo nel sottobosco, e gira con lui, passo dopo passo.",
		"continua a voltarsi mentre il predatore gira, senza mai offrirgli la schiena.",
	},
	["elw.battle.w17.wild.003"] = {
		"Di nuovo a grufolare nel campo di qualcuno? Via di qui, zannuto.",
		"Ogni contadino del bosco vuole la tua pelle, zannuto. Io sono solo il primo della fila.",
	},
	["elw.battle.w17.wild.004"] = {
		"È solo un orso giovane. Ma gli orsi giovani non sanno quando smettere.",
		"Un cucciolo, per un orso. Vuol dire comunque artigli lunghi come le mie dita.",
	},
	["elw.battle.w17.wild.005"] = {
		"Ragnatele tra i tronchi, e chi le ha tessute che scende lungo uno. Calma.",
		"Cala appeso a un filo, muto come polvere. Tienilo lontano dal collo.",
	},
	["elw.battle.w17.wild.006"] = {
		"Questi laghi erano limpidi prima che arrivaste voi, muso di pesce.",
		"Fuori dalle canne, eh? Ti ci rimetto io.",
		"Ogni lago di Elwynn ha il suo problema che gorgoglia. Sei tu.",
	},
	["elw.battle.w17.wild.007"] = {
		"Un Riverpaw così addentro? A Westbrook vorranno saperlo.",
		"Ti manda Hogger, eh? Digli che il bosco ha già un padrone.",
		"L'erba di Westfall non è abbastanza secca per te? Fila oltre il ponte.",
	},
	["elw.battle.w17.wild.008"] = {
		"sente la risata stridula dello gnoll attraversare il campo e si volta da quella parte.",
		"affronta lo gnoll che avanza, tutto denti e quella risata da matto.",
		"si gira mentre una sagoma dal muso di iena sbuca dalla macchia, ridacchiando.",
	},
	["elw.battle.w17.wild.009"] = {
		"Questo bosco ha abbastanza per tutto ciò che ci vive. Non c'era bisogno di scegliere me.",
		"Di conigli, Elwynn, ne è piena. Va' a disturbare uno di loro.",
		"Ci sono pecore grasse in ogni fattoria di questo bosco, e tu scegli me?",
	},
	["elw.battle.w17.wild.010"] = {
		"Magro, questo. Le pecore stanno nei recinti e i lupi fanno la fame.",
		"Occhi affamati. Non è odio, solo pancia vuota. Non per questo è meno pericoloso.",
	},
	["elw.journey.w17.land.001"] = {
		"Piedi giù a Elwynn, e la prima cosa che mi arriva è il suo rumore: galline, un martello, una ruota di carro che chiede grasso.",
		"Stivali sull'erba. Le querce sono enormi, dopotutto: dall'alto le avevo prese per muschio.",
	},
	["elw.journey.w17.land.002"] = {
		"scende a terra e resta un momento immobile, finché l'odore di terra smossa e di fumo di legna non scioglie dalle gambe il ricordo del volo.",
		"atterra, e una mucca lì vicino alza la testa, rumina e decide che la cosa non merita la sua attenzione.",
	},
	["elw.journey.w17.land.003"] = {
		"Elwynn! Qualcuno dica al mio stomaco che il volo è finito.",
		"Atterraggio riuscito. Indicatemi la panca più vicina e la scodella più vicina.",
		"Basta cielo per un po'. Elwynn, da brava, stai ferma.",
	},
	["elw.journey.w17.land.004"] = {
		"Dopo l'aria fina e fredda di lassù, Elwynn sembra una cucina con la porta aperta. Le mani si stanno aprendo solo adesso.",
		"Il volo mi lascia le dita rigide e un ronzio nelle orecchie. Ai campi non importa: continuano a essere verdi per conto loro.",
	},
	["elw.journey.w17.land.005"] = {
		"scende dove la strada piega tra le siepi, e il bosco si richiude intorno: verde, vicino, pieno di piccoli rumori.",
		"tocca terra al limite dei campi, ed Elwynn si rialza tutt'intorno: non più una mappa, ma un luogo fatto di siepi e di fango.",
	},
	["elw.journey.w17.land.006"] = {
		"Casacche blu sulla strada. Prima ancora che le gambe smettano di tremare, so di essere tra amici.",
		"Il leone di Stormwind su ogni guardia che vedo. Le ginocchia tremano ancora, ma il resto di me è tranquillo.",
	},
	["elw.journey.w17.land.007"] = {
		"Le orecchie mi fischiano ancora per il volo, e la prima cosa che Elwynn mi offre è un cane convinto che io sia qui per le sue pecore.",
		"Appena {g:atterrato|atterrata} e c'è già un contadino che mi fa cenno. Elwynn non spreca mai un paio di mani libere.",
	},
	["elw.journey.w17.rise.001"] = {
		"Viste dall'alto, le miniere sono solo bocche scure nei fianchi delle colline, e non diresti mai cosa ci striscia dentro.",
		"Elwynn sprofonda, e i laghi si appiattiscono in piatti chiari posati qua e là tra gli alberi.",
	},
	["elw.journey.w17.rise.002"] = {
		"si alza su Elwynn, e la mole bianca delle mura di Stormwind entra nella vista prima che gli alberi coprano il resto.",
		"si leva sopra il bosco, e la strada per Goldshire si riduce a una piega chiara tra le querce scure.",
		"prende quota sopra i campi, e la Tower of Azora spunta sulla sua collina come un chiodo che qualcuno ha dimenticato di ribattere.",
	},
	["elw.journey.w17.rise.003"] = {
		"Su! Da quassù ogni steccato di Elwynn sembra litigare con quello accanto.",
		"Ecco dove vanno tutti quei viottoli. Dovevo salire quassù prima.",
	},
	["elw.journey.w17.rise.004"] = {
		"Sotto c'è il bosco che ha sfamato la città attraverso due guerre. Da quest'altezza non si vede una cicatrice, ma i contadini saprebbero mostrarti dove.",
		"Più in alto, e dell'antico incendio non resta traccia. Elwynn è ricresciuta sulle sue ferite come l'erba su una tomba.",
	},
	["elw.journey.w17.rise.005"] = {
		"si stacca da terra con uno strattone, ed Elwynn si inclina là sotto: una radura di taglialegna, una torre su una collina, la lunga linea azzurra di un lago.",
		"si ritrova sopra le cime degli alberi, dove il rumore delle fattorie si assottiglia fino a sparire e resta a parlare solo l'aria.",
	},
	["elw.journey.w17.rise.006"] = {
		"Su, vecchio grifone. Uno sguardo per bene su Elwynn, e poi portami dove vai.",
		"Piano, grifone. Fammi vedere tutto questo verde prima di virare.",
	},
	["elw.journey.w17.rise.007"] = {
		"Da quassù gli accampamenti dei Defias non sono più grandi di briciole su una tovaglia. L'altezza è una giustizia da poco, ma me la prendo.",
		"I coboldi si tengano pure i loro cunicoli. Io ho tutto il cielo, e loro non sapranno mai cosa si perdono.",
	},
	["elw.lowhp.w17.hold.001"] = {
		"Non in un campo che poi qualcuno dovrà arare tutt'intorno.",
		"Non cadere qui. A qualche contadino toccherebbe girarti intorno con l'aratro.",
		"Non tra le barbabietole. Un po' di dignità.",
	},
	["elw.lowhp.w17.hold.002"] = {
		"Mi aspetta una sedia calda, in qualche angolo di Elwynn. Ci arriverò!",
		"Lungo questa strada c'è una locanda con una panca della mia misura. Ci arrivo!",
		"C'è un letto vuoto, giù al villaggio di Goldshire. Intendo occuparlo!",
	},
	["elw.lowhp.w17.hold.003"] = {
		"L'erba è morbida, ed è questo il guaio: sembra un posto dove sdraiarsi. No.",
		"La terra morbida invita a cadere. Rifiuta l'invito.",
	},
	["elw.lowhp.w17.hold.004"] = {
		"barcolla contro la traversa di uno steccato, la afferra e se ne stacca per gettarsi di nuovo nello scontro.",
		"ondeggia, si regge a un palo dello steccato e si rimette in guardia.",
	},
	["elw.lowhp.w17.hold.005"] = {
		"Sotto queste querce di tombe ce ne sono già abbastanza. Possono fare a meno della mia.",
		"Nessuna tomba a Elwynn per me. La terra è troppo buona per sprecarla.",
		"Le querce possono aspettare ancora a lungo, prima che le nutra io.",
	},
	["elw.lowhp.w17.hold.006"] = {
		"Pensa al Lion's Pride. Una scodella di stufato, una sedia accanto al fuoco. Arrivaci.",
		"Stufato. Fuoco. Una panca al Lion's Pride. Tienilo a mente e vai avanti.",
	},
	["elw.lowhp.w17.hold.007"] = {
		"Se passa una pattuglia, mi troverà in piedi. È una promessa.",
		"Nessuna guardia mi troverà a faccia in giù nel trifoglio.",
		"Le guardie hanno già da fare senza dovermi portare in braccio. Resto su.",
	},
	["elw.lowhp.w17.hold.008"] = {
		"Le orecchie fischiano. Trova un albero, spalle contro, e insisti.",
		"Spalle al tronco. Che mi venga addosso di fronte.",
	},
	["elw.lowhp.w17.hold.009"] = {
		"cade su un ginocchio nell'erba, poi si rialza, più {g:lento|lenta} di prima.",
		"si pianta a gambe larghe e rifiuta di cedere al terreno.",
		"si appoggia al nulla e, chissà come, non cade.",
	},
	["elw.lowhp.w17.hold.010"] = {
		"I campi continuano a sfocarsi. Sbatti le palpebre, e poi un'altra volta.",
		"Steccati doppi, alberi doppi. Il nemico però è uno solo. Colpisci quello.",
	},
	["elw.lowhp.w17.hold.011"] = {
		"Due volte mani testarde hanno costruito Stormwind. Io posso rialzarmi una volta in più.",
		"Era macerie, Stormwind, e guardala adesso. Posso restare in piedi anch'io.",
		"Pietra su pietra, i muratori hanno alzato una città. Io devo alzare solo me.",
	},
	["elw.lowhp.w17.hold.012"] = {
		"Se cado qui, i primi a trovarmi saranno i cani delle fattorie. Non voglio essere {g:trovato|trovata} così.",
		"Non a faccia in giù vicino a una siepe, con un cane che mi annusa. No.",
	},
	["elw.lowhp.w17.hold.013"] = {
		"Troppo bella, Elwynn, per perderci. Su!",
		"Perdere nel bosco più mite del regno? Alla locanda riderebbero per un mese!",
		"{g:Battuto|Battuta} da qualcosa a Elwynn? Dovrei trasferirmi a Westfall per la vergogna!",
	},
	["elw.lowhp.w17.hold.014"] = {
		"si toglie dagli occhi una sbavatura di terra e ritrova il nemico.",
		"scuote la testa per schiarirla, le orecchie che fischiano, e torna alla carica.",
		"si passa una manica sul viso e strizza gli occhi finché il bosco torna a fuoco.",
	},
	["elw.lowhp.w17.hold.015"] = {
		"Piano. Le querce stanno in piedi da secoli; io posso resistere qualche istante in più.",
		"Fa' come le querce. Non vincono le battaglie: durano più a lungo.",
	},
	["elw.lowhp.w17.hold.016"] = {
		"Se cado, dite a quelli di Goldshire che non sono {g:scappato|scappata}.",
		"Comunque vada, questo terreno non l'ho ceduto a buon mercato.",
		"Che al presidio di Westbrook sappiano che ho tenuto. Basta questo.",
	},
	["elw.lowhp.w17.hold.017"] = {
		"Male. Male sul serio. Di quello che fa sembrare lontanissimi i campi.",
		"È tutto lontano: la strada, gli steccati, i miei piedi. Riportali qui.",
	},
	["elw.muse.w17.field.001"] = {
		"Ogni campo di Elwynn dà due raccolti: quello seminato, e i sassi. I muretti tra le fattorie sono il secondo, impilato a mano.",
		"L'aratro tira fuori sassi ogni anno, come se la terra li covasse. I contadini li ammucchiano ai bordi e chiamano muri quei mucchi.",
		"Quei muretti bassi, più che costruiti, sono stati raccolti. Generazioni di contadini, ognuna con qualche sasso in più strappato al solco.",
	},
	["elw.muse.w17.field.002"] = {
		"Metà delle fattorie di Elwynn tiene arnie di paglia lungo le siepi. Miele e cera pagano quello che il grano non paga.",
		"Le cupole di paglia lungo le siepi sono arnie, e ogni fattoria pare averne qualcuna. Qui le api lavorano più delle guardie.",
		"Le api, in Elwynn, si tengono come i cani: qualcuna a ogni cancello, e nessuno le disturba due volte.",
	},
	["elw.muse.w17.field.003"] = {
		"Queste zucche sono così grandi che si potrebbero affittare. Ho dormito in stanze più piccole.",
		"Con quella zucca ci mangia una famiglia per una settimana, o ci si nasconde un coboldo per un mese.",
		"Qualcuno, in Elwynn, coltiva zucche per puro dispetto. E sta vincendo.",
	},
	["elw.muse.w17.field.004"] = {
		"La terra di Elwynn è nera e morbida, di quella che resta sotto le unghie per giorni. I contadini la portano come un distintivo di corporazione.",
		"Terra scura, sciolta e grassa. Un bracciante di questo bosco lo riconosci dall'orlo nero delle unghie.",
		"Affondi una mano in un solco e la tiri fuori scura fino al polso. Una terra così perdona parecchi errori a chi la lavora.",
	},
	["elw.muse.w17.field.005"] = {
		"nota una falce appesa a un ramo basso di quercia, sul bordo di un campo, il manico sbiancato là dove vanno le mani.",
		"oltrepassa un carro poggiato su pietre piatte lungo il viottolo, una ruota smontata contro lo steccato, in attesa del carradore.",
		"scavalca un rastrello lasciato coi denti all'insù nell'erba, la trappola che ogni aia tende almeno una volta a stagione.",
	},
	["elw.muse.w17.field.006"] = {
		"Le pecore di Elwynn brucano fin sotto le radici delle querce e fissano chi passa come scrivani che spuntano un elenco.",
		"Un gregge sotto le querce, che rumina e fissa. Le pecore ti guardano come se dovessi loro della lana.",
		"Pecore lungo tutti gli steccati. Osservano la strada con la pazienza dei creditori.",
	},
	["elw.muse.w17.field.007"] = {
		"sosta presso un pascolo dove due enormi cavalli da aratro stanno testa contro coda, scacciandosi le mosche a vicenda con pazienza.",
		"si appoggia a un cancello a guardare due cavalloni da fattoria, gli zoccoli pelosi affondati nel trifoglio, troppo grossi e troppo miti per qualsiasi guerra.",
	},
	["elw.muse.w17.field.008"] = {
		"Uova a un rame l'una ai cancelli delle fattorie, e il resto pagato in mele. Mi piace come si fanno i conti da queste parti.",
		"Compri una pagnotta da sopra lo steccato di una fattoria e ti regalano un pizzico di sale.",
		"Prezzi da cancello di fattoria. Pane onesto, uova oneste, e nessuno che finge di essere una bottega.",
	},
	["elw.muse.w17.field.009"] = {
		"Ogni tanto un aratro, in questi campi, tira su una fibbia arrugginita o una punta di lancia annerita. I contadini le appendono ai pali e tirano avanti.",
		"Dai solchi di Elwynn affiora ferro vecchio: un anello di cinghia, una punta di lancia spezzata, un ferro di cavallo che nessuno ricorda di aver perso. La guerra è sepolta a poca profondità.",
		"Certi anni, dicono i contadini, gli aratri s'impigliano ancora in ferri di guerra. Nessuno scava più a fondo per vedere cos'altro ci sia sotto.",
	},
	["elw.muse.w17.field.010"] = {
		"Ai bordi di ogni campo, qui, i contadini lasciano una striscia di papaveri e cardi larga un solco. Lavoro da una parte, selvatico dall'altra, e una tregua lungo la linea.",
		"Orzo, poi una striscia d'erbacce, poi la siepe. I contadini di Elwynn tracciano i confini spessi un solco e lasciano il resto al selvatico.",
	},
	["elw.muse.w17.field.011"] = {
		"Ogni cancello di fattoria, qui fuori, ha un chiavistello diverso. Secondo me lo fanno per vedere i forestieri arrancare.",
		"Alza, tira, scuoti, calcia. In Elwynn non ci sono due cancelli che si aprano allo stesso modo.",
		"Certi cancelli si aprono con un gancio, certi con un piolo, e uno, ne sono quasi {g:certo|certa}, con la parola d'ordine.",
	},
	["elw.muse.w17.field.012"] = {
		"Passi davanti a cinque fattorie e senti cinque odori: paglia umida, mele ammaccate, un forno da pane, cipolle, e un porcile senza nessuna vergogna.",
		"Ogni casale lungo il viottolo ha il suo odore. Potrei orientarmi col naso soltanto: sidro, paglia, fumo, maiale.",
		"Le fattorie di Elwynn si presentano prima che tu le veda. Un sentore di lievito, uno di letame, e sai già di chi è il prossimo cancello.",
	},
	["elw.muse.w17.field.013"] = {
		"gira largo attorno a un'oca d'aia che ha deciso che il viottolo è suo.",
		"si lascia scortare oltre il cancello di una fattoria da tre oche che soffiano, e che si fermano esattamente alla pietra di confine.",
		"costeggia il lato opposto del viottolo mentre un papero se ne sta nel mezzo, collo teso, a sfidare chiunque.",
	},
	["elw.muse.w17.field.014"] = {
		"Ogni tante fattorie un campo resta a maggese, lasciato al trifoglio. I contadini dicono che la terra deve riposare, o diventa cattiva.",
		"Un campo a maggese in mezzo a tanto lavoro, lasciato al trifoglio e ai grilli. Anche la terra di Elwynn ha il suo giorno libero.",
		"Un campo su tre riposa ogni anno, a sentire i contadini. Ne parlano come si parla di un cavallo stanco.",
	},
	["elw.muse.w17.field.015"] = {
		"Chi coltiva le cipolle da queste parti potrebbe far piangere una guardia a cinquanta passi.",
		"Queste cipolle sgombrerebbero un cunicolo di coboldi col solo odore.",
		"Rape grosse come un pugno, cipolle col carattere di uno gnoll. La terra buona fa ortaggi sfacciati.",
	},
	["elw.muse.w17.folk.001"] = {
		"Al crocevia di Goldshire ci sono due fucine, e ciascun fabbro ti dirà, con garbo, che il ferro dell'altro si piega.",
		"Smith Argus e Corina Steele battono il martello allo stesso crocevia. Chiedi a uno dei due dell'altro e ricevi un silenzio molto educato.",
		"Due fabbri, un crocevia, e clienti che scelgono la fucina come i vicini scelgono da che parte stare in una faida.",
	},
	["elw.muse.w17.folk.002"] = {
		"si fa da parte per una squadra di taglialegna che trascina un tronco di pino verso la città, i buoi per nulla colpiti dalla strada.",
		"lascia passare un carro di tronchi in arrivo da Eastvale, il conducente che fa un cenno e i buoi nemmeno quello.",
		"aspetta sul bordo mentre un carro di legname passa gemendo, la segatura ancora attaccata alla corteccia e agli uomini seduti in cima.",
	},
	["elw.muse.w17.folk.003"] = {
		"Lungo le siepi i bambini delle fattorie giocano a guardie e banditi, con dei bastoni e uno straccio rosso. Tutti vogliono fare la guardia, e qualcuno deve sempre fare la maschera.",
		"Guardie e banditi accanto al cancello di una fattoria: bastoni di legno, un fazzoletto rosso, un sacco di strilli. In Elwynn persino i giochi hanno dentro un Defias.",
	},
	["elw.muse.w17.folk.004"] = {
		"Ogni carrettiere, qui, sa gli affari di tutti gli altri. Tre versioni della stessa mucca malata, e non sono ancora alla prossima fattoria.",
		"Qui le notizie viaggiano più svelte dei carri, e i carri non sono lenti.",
		"Chiedi a un contadino come va il raccolto e ti racconta di altre quattro fattorie, di un matrimonio e di una scala rubata.",
	},
	["elw.muse.w17.folk.005"] = {
		"Carri di rape, pellegrini diretti alla Cathedral of Light, un venditore ambulante con le pentole legate dappertutto. La strada della città prende tutti.",
		"La strada per Stormwind non è mai vuota: carrettieri, pellegrini, messaggeri che camminano come se fossero in ritardo e soldati che camminano come se fossero in anticipo.",
		"Prima o poi mezzo regno passa per la strada della città, e quasi tutti si fermano ad abbeverare il cavallo allo stesso abbeveratoio.",
	},
	["elw.muse.w17.folk.006"] = {
		"sorprende una giovane guardia di Stormwind a metà di una mela; quella si raddrizza, inghiotte e saluta col torsolo ancora in mano.",
		"incrocia due guardie di pattuglia, una che racconta una lunga storia, l'altra che chiaramente l'ha già sentita molte volte.",
	},
	["elw.muse.w17.folk.007"] = {
		"I fratelli dell'abbazia percorrono i viottoli delle fattorie con bende e pane. Non chiedono di chi sia il tetto prima di bussare.",
		"Passa un fratello di Northshire in tonaca, con un cesto per qualche casale. Qui fuori la Luce somiglia molto a una minestra e a del lino pulito.",
		"Quelli dell'abbazia conoscono ogni capezzale tra la valle e i laghi. Arrivano a piedi, e quando se ne vanno la casa pesa un po' meno.",
	},
	["elw.muse.w17.folk.008"] = {
		"Ogni contadino di Elwynn ha perso qualcosa, e ognuno chiede al primo forestiero di ritrovarglielo.",
		"Pecore perse, attrezzi persi, fattorie perse. Elwynn smarrisce le cose, e poi ti consegna la lista.",
		"Se ritrovassi tutto quello che questo bosco ha smarrito, potrei aprire bottega e ritirarmi.",
	},
	["elw.muse.w17.folk.009"] = {
		"Marshal Dughan pare avere più guai segnalati che soldati da mandare. Lupi, coboldi, maschere: tutto annotato, poco risolto.",
		"Il marshal al crocevia mette per iscritto ogni guaio che gli si presenta davanti. La lista cresce più in fretta della guarnigione.",
		"Un marshal, un pugno di guardie e un intero bosco di lamentele. Quell'uomo deve sognare elenchi.",
	},
	["elw.muse.w17.folk.010"] = {
		"guarda un pescatore sulla riva di un lago tirare su una rete con uno squarcio netto nel mezzo, e lo sente fare i nomi dei colpevoli.",
		"supera un pescatore seduto su un secchio rovesciato vicino all'acqua, la lenza tra le canne e un occhio sempre sulla riva opposta.",
	},
	["elw.muse.w17.folk.011"] = {
		"La gente delle fattorie di Elwynn prima sfama il forestiero, e le domande le fa dopo la seconda scodella.",
		"Bussi alla porta di un casale da queste parti e te ne vai con una minestra nello stomaco, qualunque fosse il motivo della visita.",
		"In queste fattorie nessuno lascia passare il cancello a un viandante affamato. È quasi una legge.",
	},
	["elw.muse.w17.folk.012"] = {
		"Vicino alla Tower of Azora i contadini parlano del mago come si parla del tempo: con educazione, e non troppo forte.",
		"Theocritus se ne sta nella sua torre, dicono i contadini, e loro nei loro campi. È la più cordiale delle distanze.",
		"Un mago sulla collina, cavoli nella valle. Passando, i contadini fanno un cenno verso la torre, come si fa con una zia severa.",
	},
	["elw.muse.w17.folk.013"] = {
		"Le corde del bucato tese tra le querce ti raccontano tutta la casa: una camicia grande, una più grande, poi sempre più piccole, tutte rattoppate ai gomiti.",
		"Una fattoria la leggi dalla corda del bucato: quanti figli, quanto giocano, quanto spesso la madre cuce. Elwynn stende la sua vita intera tra due querce.",
		"Camicie rattoppate, lenzuola rattoppate, grembiuli rattoppati. Qui fuori niente si butta finché un ago ci arriva.",
	},
	["elw.muse.w17.folk.014"] = {
		"Il mugnaio è l'unica anima di Elwynn sempre bianca dalla testa agli stivali. Persino le guardie gli girano alla larga per salvare le casacche.",
		"Farina nelle sopracciglia, farina nella barba, farina su ogni moneta che ti rende. I clienti del mugnaio li riconosci dalle impronte bianche dei pollici.",
	},
	["elw.muse.w17.folk.015"] = {
		"Un arrotino percorre i viottoli delle fattorie con la mola sulla schiena. Ogni casa gli tiene da parte falcetti e cesoie spuntati, e le novità.",
		"L'arrotino è il messaggero più lento del bosco: porta una ruota di pietra, affila quel che non taglia più e lascia pettegolezzi a ogni cancello.",
		"In Elwynn nessuno compra un coltello nuovo finché l'arrotino fa ancora il suo giro. Riconosce ogni fattoria dalla voce del suo cane.",
	},
	["elw.muse.w17.realm.001"] = {
		"La città in fondo alla strada è la seconda Stormwind. La prima fu ridotta in macerie nella guerra degli orchi, e i contadini ricordano ancora il fumo.",
		"Certi contadini di Elwynn sono più vecchi delle mura sotto cui vendono i cavoli. Ricordano una Stormwind in rovina, e lo dicono a bassa voce.",
		"Tutta quella pietra bianca sembra stare lì da sempre. Non è così. I nonni di queste fattorie l'hanno vista salire, blocco dopo blocco, sulle ceneri della prima.",
	},
	["elw.muse.w17.realm.002"] = {
		"passa accanto a una pietra miliare scolpita col leone di Stormwind, la criniera levigata da tante mani di passaggio.",
		"indugia accanto a un leone inciso su un cippo stradale, la pietra lucida sul muso là dove i viandanti l'hanno sfiorata.",
	},
	["elw.muse.w17.realm.003"] = {
		"Più ci si avvicina alla città, migliore è la strada: lastre di pietra sotto le mura, ghiaia verso Goldshire, e alle fattorie lontane due solchi e tante buone intenzioni.",
		"La distanza da Stormwind la capisci dalla strada sotto gli stivali. Lastre di pietra, poi ghiaia, poi un fango con le sue opinioni.",
		"La cura del regno per le sue strade si affievolisce a ogni miglio dalla porta, come una voce che ti chiama alle spalle.",
	},
	["elw.muse.w17.realm.004"] = {
		"Il nostro leone su ogni stendardo lungo la strada. Qui fuori significa ancora quello che deve: grida, e qualcuno in blu arriva di corsa.",
		"Gli stendardi col leone del nostro regno pendono dai posti di guardia, sbiaditi ma interi. Finché pendono, le fattorie non sono sole.",
	},
	["elw.muse.w17.realm.005"] = {
		"I casali più vecchi di Elwynn poggiano su pietre di base annerite. Le case nuove sono state alzate su quelle bruciate, e la fuliggine nessuno l'ha mai grattata via.",
		"Guarda in basso sul muro di un vecchio fienile, da queste parti: la prima fila di pietre è bruciacchiata, il resto pulito e più recente. Gli orchi bruciarono la casa; i contadini ne tennero le fondamenta.",
		"Certi pozzi di queste fattorie hanno l'anello basso annerito e l'orlo appena squadrato, rifatti attorno alla cicatrice lasciata dalla guerra.",
	},
	["elw.muse.w17.realm.006"] = {
		"Giù per la strada della valle, da Northshire, scende un rivolo costante di gente addestrata all'abbazia: stivali nuovi, tonache nuove, e tutti che camminano un po' troppo in fretta.",
		"L'abbazia sforna soldati e sacerdoti come le fattorie sfornano pane: qualcuno ogni settimana, ancora caldo.",
		"Northshire manda la sua gente nel bosco uno alla volta, appena istruita e serissima. I lupi di Elwynn sono i loro primi esaminatori.",
	},
	["elw.muse.w17.realm.007"] = {
		"Il bosco sfama la città e la città protegge il bosco. Un patto giusto, finché lo rispettano tutte e due le parti.",
		"I campi nutrono le mura, le mura riparano i campi. Un patto vecchio, e buono, quando viene mantenuto.",
	},
	["elw.muse.w17.realm.008"] = {
		"Picchi rossi a est, pianure secche a ovest, boschi scuri a sud. Elwynn sta nel mezzo come una tavola apparecchiata nella stanza più sicura della casa.",
		"Ogni confine di Elwynn si apre su una terra più dura: la pietra di Redridge, la polvere di Westfall, il buio di Duskwood. Il regno tiene al centro il suo terreno più morbido.",
		"Cammina abbastanza in qualsiasi direzione e la terra s'indurisce. Il regno ha messo il suo paese più gentile dove le mura potevano arrivare.",
	},
	["elw.muse.w17.realm.009"] = {
		"L'esattore della corona gira per le fattorie con un registro e due guardie, dicono, e viene accolto come una gelata tardiva.",
		"Un funzionario della città va di fattoria in fattoria col suo registro, e d'un tratto ogni contadino si ricorda di un cattivo raccolto.",
		"I contadini di Elwynn sanno recitare ogni malanno dei campi degli ultimi dieci anni, ma solo davanti all'esattore.",
	},
	["elw.muse.w17.realm.010"] = {
		"sosta presso un tumulo di pietre lungo la strada, un elmo arrugginito posato in cima e fiori di campo infilati tra i sassi da qualcuno che ci viene ancora.",
		"si sofferma accanto a un mucchio di pietre a bordo strada sormontato da un vecchio elmo, uno di quei segni che ai forestieri nessuno spiega.",
	},
	["elw.muse.w17.realm.011"] = {
		"Nelle fattorie nessuno parla del re bambino più forte di un mormorio, come se una parola ad alta voce potesse arrivare in città e spaventarlo.",
		"I contadini parlano del giovane Anduin come di un vitello nato prima del tempo: con affetto, con speranza, e un po' in pensiero.",
	},
	["elw.muse.w17.realm.012"] = {
		"si sposta sul ciglio mentre un cavaliere nel blu di Stormwind passa al galoppo verso la città, la bisaccia che sobbalza e il cavallo coperto di schiuma.",
		"guarda il cavallo di un corriere salire la strada a trotto serrato, gli occhi del cavaliere sulla città e su nient'altro.",
		"si scansa per un messaggero a cavallo diretto a est di gran carriera, un astuccio sigillato legato di traverso sulla schiena.",
	},
	["elw.muse.w17.realm.013"] = {
		"Metà di ogni carro che lascia queste fattorie sale per la strada fino ai granai della città. L'esercito ai confini mangia il pane di Elwynn.",
		"I soldati ai confini lontani questi campi non li vedono mai, ma ne mangiano. Ogni sacco sulla strada della città è una razione da qualche parte.",
		"Una guerra lontana cento miglia si combatte col grano cresciuto proprio qui. I contadini lo sanno, e arano di conseguenza.",
	},
	["elw.muse.w17.realm.014"] = {
		"Nani sulla strada della città, uno gnomo con un carretto di ingranaggi, un elfo della notte che chiede la via: i nostri alleati passano per Elwynn ogni settimana, ed Elwynn li sfama.",
		"Accenti di Ironforge ai cancelli delle fattorie, pazienza kaldorei al crocevia. Il nostro regno ha più amici sulle sue strade di quanti ne abbia mai avuti sulle carte.",
	},
	["elw.muse.w17.realm.015"] = {
		"Questa è terra del leone. Chi viene a farle del male ne risponde a ognuno di noi.",
		"Sotto lo stendardo del leone ogni fattoria è una fortezza, se serve.",
	},
	["elw.muse.w17.realm.016"] = {
		"I nani dicono che gli umani dimenticano in fretta. Non in Elwynn: metà dei casali tiene un nome della Prima Guerra inciso sopra il focolare.",
		"Chiedi a un contadino della Prima Guerra e la risposta viene dalla mensola del camino: un nome, una data incisa, un piccolo pegno di ferro. La mia gente ricorda nel legno e nella pietra.",
	},
	["elw.muse.w17.trouble.001"] = {
		"I ponti su queste strade sono muratura fine, ogni pietra incastrata a dovere. Si dice che i muratori che li hanno posati ora portino maschere rosse.",
		"Buoni ponti, quelli di Elwynn: ad arco, pietre squadrate, fatti per sopravvivere a tutti. Alla locanda raccontano che chi li costruì non fu mai pagato, e che prese la via dei boschi.",
		"Qualcuno ha messo queste pietre così a filo che tra l'una e l'altra non passa un coltello. Se le storie delle taverne sono vere, quel qualcuno ora il coltello lo porta.",
	},
	["elw.muse.w17.trouble.002"] = {
		"si ferma a un fischio breve tra gli alberi, a cui ne risponde un altro più lontano, e poi il silenzio.",
		"sente due note fischiate nel bosco, troppo regolari per un uccello, e una risposta dall'altra parte del viottolo.",
	},
	["elw.muse.w17.trouble.003"] = {
		"Un mucchio di terra fresca in mezzo a un campo di rape, e non l'ha scavato una talpa. I coboldi fanno gallerie dove gli pare.",
		"Dove il terreno suona vuoto i contadini battono il piede, e si accigliano. Sotto metà di questi campi corrono cunicoli di coboldi, e nessuno sa fin dove.",
		"Coboldi sotto, rape sopra, e in mezzo un contadino che ha cominciato a dormire con la vanga accanto al letto.",
	},
	["elw.muse.w17.trouble.004"] = {
		"Gli gnoll dei Riverpaw si portano via le pecore dalle fattorie dell'ovest. Se volevano la lana, bastava chiedere.",
		"Gnoll nei pascoli a ovest, e i pastori che ogni settimana contano un capo in meno.",
		"Spariscono pecore vicino al confine ovest e gli gnoll ingrassano. Non serve un erudito per fare il conto.",
	},
	["elw.muse.w17.trouble.005"] = {
		"Dal ponte a ovest arrivano carri carichi di una casa intera: gente di Westfall senza un posto dove stare, che chiede lavoro a ogni cancello di Elwynn.",
		"Dicono che ogni stagione più famiglie di Westfall passino in Elwynn, con un carro, una mucca e un rancore. Le fattorie di qua accolgono chi possono.",
	},
	["elw.muse.w17.trouble.006"] = {
		"nota un casale con tutte le imposte sbarrate e un forcone appoggiato accanto alla porta, a portata di mano.",
		"passa una fattoria col cancello chiuso da una catena, un cane legato corto e un forcone poggiato alla ringhiera del portico.",
		"costeggia una casupola dove al chiavistello del cancello è stato legato un campanaccio, perché nessuno lo apra senza che lo sappia tutta la casa.",
	},
	["elw.muse.w17.trouble.007"] = {
		"Le guardie qui sono poche, e lo sanno. L'esercito vero è ai margini del regno, ed Elwynn si arrangia con quel che resta.",
		"Su queste strade ci sono meno elmi di quanti dovrebbero. I soldati sono andati dove si combatte, e al bosco sono toccati gli avanzi.",
		"Una pattuglia dove ne servirebbero tre. Qualcuno in città ha contato i soldati due volte e le miglia una sola.",
	},
	["elw.muse.w17.trouble.008"] = {
		"Chiedi a un pescatore di lago dei murloc e imparerai parole che farebbero cagliare il latte.",
		"Murloc a ogni lago, e pescatori a ogni tavolo che se ne lamentano. Vince sempre la stessa parte.",
		"I murloc si prendono le reti, il pesce e l'esca, e ai pescatori lasciano le storie.",
	},
	["elw.muse.w17.trouble.009"] = {
		"Con le miniere invase, il ferro arriva da Ironforge a prezzi da nani. Da qualche parte un contabile maledice i coboldi con una calligrafia impeccabile.",
		"Niente più minerale da Fargodeep o da Jasperlode, così i fabbri comprano dai nani. I coboldi sono parassiti costosi.",
		"Ogni coboldo in una miniera è un chiodo che il regno deve comprare fuori. Sugli avvisi di taglia questo non lo scrive nessuno.",
	},
	["elw.muse.w17.trouble.010"] = {
		"sosta accanto a uno steccato sfondato verso l'esterno, ciuffi di pelo grigio impigliati nelle assi scheggiate e il recinto delle pecore, dietro, troppo silenzioso.",
		"indugia davanti a un recinto distrutto: assi spezzate, peli grigi sulle schegge, e del pastore nessuna traccia.",
	},
	["elw.muse.w17.trouble.011"] = {
		"Chi viene da Redridge parla di orchi sulle montagne, e di un ponte che avrebbe bisogno di più guardie di quante ne abbia. Elwynn ascolta, e continua a seminare.",
		"A est, oltre Ridgepoint, si parla di orchi sulle colline di Redridge. I contadini lo sentono come un cane che abbaia dall'altra parte della valle: preso nota, nessuna risposta per ora.",
	},
	["elw.muse.w17.trouble.012"] = {
		"Le guardie non possono essere ovunque. Va bene. Qualcun altro può essere da qualche parte.",
		"Banditi sui viottoli e soldati lontani. Allora i viottoli si prendono me.",
		"Maschere rosse nelle siepi e l'esercito ai confini. Qualcuno deve pur percorrere questi viottoli. Tanto vale che sia io.",
	},
	["elw.muse.w17.trouble.013"] = {
		"Non tutte le maschere rosse di Elwynn hanno posato pietre per la città. Alcune, ammettono le guardie, erano braccianti affamati che hanno scoperto che i banditi mangiano meglio.",
		"La Fratellanza prende chiunque abbia un torto da far valere e due mani. Qui fuori, è più gente di quanta ne piacerebbe ai nobili.",
		"Sotto una maschera un muratore e un contadino rovinato si somigliano. I Defias ci contano, e, sospetto, anche i nobili.",
	},
	["elw.muse.w17.trouble.014"] = {
		"segue una pista di impronte palmate e bagnate che sale dal lago fino a un capanno, dove il barile del pesce è vuoto.",
		"trova impronte palmate nel fango di un sentiero lungo il lago, dritte fino a una cesta rovesciata e poi via.",
	},
	["elw.muse.w17.trouble.015"] = {
		"Ragnatele tese tra le querce nei boschi dell'est, abbastanza spesse da reggere un cappello. Attraverso Elwynn con una mano davanti alla faccia.",
		"Certe ragnatele di questi boschi attraversano il sentiero da un tronco all'altro. Chi le ha tessute è più grosso di quanto un ragno abbia il diritto di essere.",
	},
	["elw.muse.w17.trouble.016"] = {
		"Westbrook Garrison sorveglia la strada per Westfall con una manciata di soldati e una bacheca piena di avvisi. È tutto il muro occidentale del regno.",
		"Il margine ovest di Elwynn lo tiene un presidio che conti sulle dita di due mani, e una bacheca delle taglie fa il resto.",
	},
	["elw.muse.w17.wood.001"] = {
		"Sui sentieri tra le querce ogni passo schiaccia una ghianda. Per gli scoiattoli Elwynn dev'essere il paese più ricco del mondo.",
		"Tante ghiande sotto i piedi che cammino come sulle biglie. Gli scoiattoli, da queste parti, sono la nobiltà terriera.",
		"Sotto le querce il terreno è lastricato di ghiande. Uno scoiattolo nato in Elwynn non impara mai la parola inverno.",
	},
	["elw.muse.w17.wood.002"] = {
		"attraversa un ruscello su pietre piatte, l'acqua fredda e svelta attorno a ciascuna.",
		"si fa strada oltre un torrente su sassi muschiosi messi lì da qualcuno che non c'è più, saggiandoli uno per uno prima di fidarsi.",
		"salta l'ultimo varco di una fila di pietre da guado, mentre sotto il ruscello chiacchiera senza fermarsi mai.",
	},
	["elw.muse.w17.wood.003"] = {
		"Un picchio, tra le querce, continua a bussare come un ospite sicurissimo che in casa ci sia qualcuno.",
		"Toc, toc, toc, nel fitto degli alberi. I picchi di Elwynn hanno la creanza di un ufficiale giudiziario alla porta.",
	},
	["elw.muse.w17.wood.004"] = {
		"passa il pollice su due coppie di iniziali incise in una quercia, le lettere allargate dalla crescita lenta dell'albero.",
		"trova vecchie iniziali scolpite nel tronco di una quercia lungo il viottolo, la corteccia ormai rimarginata in un orlo rilevato.",
		"segue col dito un cuore storto scalfito nella corteccia di una quercia a bordo strada, i due nomi dentro ormai illeggibili.",
	},
	["elw.muse.w17.wood.005"] = {
		"Una quercia morta sta accanto al ruscello, spoglia e argentea, e l'edera ci si arrampica lo stesso, come se nessuno l'avesse avvisata.",
		"Quella quercia sull'acqua è morta in piedi. Del verde, adesso, si occupa l'edera.",
		"Anche le querce morte di Elwynn stanno ben dritte. Ce n'è una presso il torrente, pallida e diritta, avvolta nel verde di qualcun altro.",
	},
	["elw.muse.w17.wood.006"] = {
		"More lungo il sentiero. Valgono ogni graffio, e sto facendo scorta di tutti e due.",
		"In Elwynn i rovi mordono più dei lupi, ma le more ripagano.",
		"Dita viola, maniche strappate. La stagione dei rovi nei querceti è una piccola guerra, e la sto perdendo volentieri.",
	},
	["elw.muse.w17.wood.007"] = {
		"I ruscelli di Elwynn parlano di continuo e non dicono mai niente di urgente. Compagnia riposante.",
		"Un torrente corre accanto al sentiero, costante e senza fretta. Ripete la stessa piccola cosa da tantissimo tempo, e la ripete bene.",
		"Acqua sui ciottoli, lo stesso mormorio per miglia. A furia di ascoltarlo, potrei smettere del tutto di pensare.",
	},
	["elw.muse.w17.wood.008"] = {
		"Ai bambini delle fattorie di Elwynn si raccomanda di non rompere mai un cerchio di funghi sotto una quercia. Nessuno spiega perché, e nessuno, noto, lo fa mai.",
		"Nel muschio sotto le querce più vecchie crescono anelli di funghi pallidi. I contadini ci girano intorno, ogni volta, e non dicono se sia abitudine o prudenza.",
	},
	["elw.muse.w17.wood.009"] = {
		"Le canne sulle rive dei laghi sono fitte come una siepe e piene di rane che gracidano. Almeno, spero che siano rane.",
		"Tife, ninfee, una rana su ognuna. I laghi di Elwynn hanno un coro chiassoso, e non tutti i coristi sono rane.",
		"Ogni lago del bosco ha una frangia di canne più alte di un uomo, e là dentro qualcosa che risponde se gli gracidi contro.",
	},
	["elw.muse.w17.wood.010"] = {
		"Il muschio cresce più fitto sul lato nord delle querce. In Elwynn sono gli alberi a indicare la via, se glielo chiedi con le mani.",
		"Muschio verde e spesso su un lato di ogni tronco. Perdi la strada, tocchi una quercia, e sai dov'è il nord.",
	},
	["elw.muse.w17.wood.011"] = {
		"guarda un coniglio immobilizzarsi nel trifoglio, concludere che non vale la pena agitarsi, e riprendere a mangiare.",
		"intravede una cerva tra i tronchi, sparita prima che il passo successivo tocchi terra.",
		"resta immobile mentre una volpe attraversa il sentiero al trotto con qualcosa in bocca, senza degnare nessuno di uno sguardo.",
	},
	["elw.muse.w17.wood.012"] = {
		"Il crinale sopra Echo Ridge Mine si merita il nome: chiami e la pietra risponde, in ritardo e con un filo di voce. Quasi tutte le risposte che ricevo sono così.",
		"Sopra Echo Ridge Mine ogni parola ti viene restituita un attimo dopo, e di una taglia più piccola. Ho avuto conversazioni intere fatte così.",
	},
	["elw.muse.w17.wood.013"] = {
		"Ogni sentiero di questi boschi si ferma ad ammirare qualche albero e dimentica dove stava andando.",
		"Qui i sentieri del bosco girovagano come vecchi zii a una fiera.",
		"Chi ha tracciato questi sentieri? Ognuno parte con uno scopo e arriva a una quercia diversa.",
	},
	["elw.muse.w17.wood.014"] = {
		"scorge una vecchia barca a remi tirata in secca tra le canne, mezza piena di aghi di pino, i remi spariti chissà dove da un pezzo.",
		"trova una barca dal fondo piatto legata a un paletto sulla riva del lago, la cima verde d'alghe e il nodo più vecchio della cima.",
	},
	["elw.muse.w17.wood.015"] = {
		"Ogni bosco di Elwynn ha una quercia cava dove può nascondersi un bambino, e ogni bambino di fattoria sa qual è.",
		"Una quercia lungo il sentiero ha alla base un cavo largo come una porta. Il fortino di qualche bambino, di sicuro, a giudicare dal muschio pestato.",
		"C'è un tronco cavo appena fuori dal viottolo, con un'asse di traverso a fare da panca. I bambini delle fattorie ci tengono consiglio.",
	},
	["elw.muse.w17.wood.016"] = {
		"guarda un airone grigio avanzare nell'acqua bassa di un lago su zampe da trampoliere, poi colpire l'acqua e riemergere con qualcosa che si dimena.",
		"si sofferma a guardare un airone fermo tra le canne, così immobile da sembrare un palo che qualcuno ha dimenticato di togliere.",
		"segue il volo lento di un airone basso su un lago, le zampe penzoloni come redini lasciate cadere.",
	},
	["elw.muse.w17.wry.001"] = {
		"Quanti lupi in questo bosco, e quanta gente pagata per sfoltirli. Comincio a sospettare che qualcuno li allevi per dare lavoro.",
		"Cacciatori, guardie, braccianti con le mazze: in Elwynn tutti sfoltiscono i lupi, e i lupi non sembrano essersene accorti.",
		"Se mettessi in fila tutte le pelli di lupo vendute al crocevia, arriverebbero alla porta della città. E i lupi sarebbero comunque di più.",
	},
	["elw.muse.w17.wry.002"] = {
		"In Elwynn c'è sempre una gallina in mezzo alla strada. Comincio a pensare che sia sempre la stessa, e che mi segua.",
		"Quella gallina. O Elwynn ha moltissime galline identiche, o ho un'ammiratrice molto lenta.",
	},
	["elw.muse.w17.wry.003"] = {
		"Qui i cinghiali li chiamano Stonetusk, e li ho visti risolvere le liti con le querce. Vincono sempre le querce, e i cinghiali non imparano mai.",
		"Stonetusk, li chiamano: zanna di pietra. Testa di pietra sarebbe stato più onesto.",
		"Un cinghiale Stonetusk incontra un albero, e l'albero passa una brutta giornata. Poi il cinghiale ne passa una peggiore.",
	},
	["elw.muse.w17.wry.004"] = {
		"Indicazioni a Elwynn: oltre la grande quercia, a sinistra al palo storto, e se arrivi al lago hai tirato troppo dritto.",
		"Chiedi la strada e ti danno riferimenti che nessun altro noterebbe: il palo che pende, il ceppo a stivale, la quercia che pare un oste grasso.",
	},
	["elw.muse.w17.wry.005"] = {
		"si ferma a scuotere un sassolino da uno stivale, e poi, accigliandosi, anche un riccio di cardo.",
		"svuota uno stivale per terra: due sassolini, un rametto e un riccio di cardo che nessuno ricorda di aver invitato.",
	},
	["elw.muse.w17.wry.006"] = {
		"I Defias hanno gusto, questo glielo concedo: una vigna, un campo di zucche, un bel pendio di filari. Nessuno si fa bandito per una vista brutta.",
		"Ogni accampamento di banditi in Elwynn sta in un posto incantevole. Al crimine, a quanto pare, piace il panorama.",
		"Se mai mi darò alla rapina di strada, lo farò anch'io in Elwynn. Il paesaggio è metà della paga.",
	},
	["elw.muse.w17.wry.007"] = {
		"Murloc, coboldo, gnoll. Metà dei guai di Elwynn suonano come uno starnuto.",
		"Coboldo. Gnoll. Murloc. Salute.",
	},
	["elw.muse.w17.wry.008"] = {
		"Il vino dei Maclure o è molto buono o è molto forte. Chi ne beve abbastanza per deciderlo non si ricorda il verdetto.",
		"Dicono che per giudicare il vino dei Maclure ci vogliano due coppe, e una terza per dimenticare di averlo giudicato.",
		"L'uva dei Maclure finisce nelle botti, e le botti finiscono in storie che nessuno riesce a finire.",
	},
	["elw.muse.w17.wry.009"] = {
		"Tre tipi di fango in questo bosco: fango di fattoria, fango di strada, e quello che si tiene uno stivale come pedaggio.",
		"Bel paese. Anche il fango è bello, e si è affezionato parecchio ai miei stivali.",
	},
	["elw.muse.w17.wry.010"] = {
		"Le guardie su queste strade sembrano quasi deluse quando non c'è niente che non va. La pace è dura per il senso del dovere di un soldato.",
		"Di' a una guardia, da queste parti, che va tutto bene, e la vedrai spegnersi negli occhi.",
	},
	["elw.muse.w17.wry.011"] = {
		"aspetta sul ciglio della strada mentre un'anatra guida una fila di anatroccoli dall'altra parte, al passo di un corteo reale.",
		"si blocca per lasciar passare una colonna di anatroccoli sul viottolo, con la madre che fulmina con lo sguardo chiunque osi obiettare.",
	},
	["elw.muse.w17.wry.012"] = {
		"Ogni volta che un contadino dice che qui è tranquillo, un coboldo spunta dalla terra. Io ho smesso di dirlo.",
		"Terra tranquilla, continuano a ripetermi. Giusto prima che attacchino i lupi.",
	},
	["elw.muse.w17.wry.013"] = {
		"Chi ha battezzato Goldshire era un ottimista: galline, fango e un buon stufato, e neanche un granello d'oro.",
		"Oro nel nome, rame nella borsa. Goldshire è onesta su tutto tranne che sul titolo.",
	},
	["elw.muse.w17.wry.014"] = {
		"Ogni rigagnolo di Elwynn ha il suo ponte. Date a questa gente abbastanza pietra e farebbe un ponte su una pozzanghera.",
		"Ponte di pietra, ruscello alto una spanna. Questo regno costruisce come se ogni torrentello potesse diventare un fiume da grande.",
	},
	["elw.muse.w17.wry.015"] = {
		"Se l'Orda marcerà mai di nuovo su Elwynn, dovrà passare prima sulle contadine, e quelle si sono allenate coi coboldi.",
		"Che l'Orda ci provi, con questi campi. I contadini di qui hanno forconi, rancori e una lunga esperienza di coboldi.",
	},
	["elw.npc_meet.w17.ask.001"] = {
		"Fango fino alle ginocchia e un cappello torto e ritorto fra le mani. I guai di Elwynn cominciano sempre con qualcuno che cerca di raccontarli con garbo.",
		"Cominciano dal raccolto e dal prezzo del grano, e solo dopo arrivano al guaio vero. In questo bosco la gente ci gira intorno, prima di chiedere.",
	},
	["elw.npc_meet.w17.ask.002"] = {
		"Avete l'aria di chi si porta dietro un problema. Posatelo un momento e raccontatemelo.",
		"Qualcosa che non va da queste parti? Vi ascolto.",
		"Su, ditemi. I guai di Elwynn di solito sono più piccoli di come suonano e più grossi di come sembrano.",
	},
	["elw.npc_meet.w17.ask.003"] = {
		"riceve un cenno da qualcuno che evidentemente sorvegliava la strada in cerca di chiunque avesse un'arma e tempo da perdere.",
		"si ferma quando una mano si alza poco più in là, mezzo saluto e mezza supplica.",
	},
	["elw.npc_meet.w17.guard.001"] = {
		"saluta la guardia con un cenno e ne riceve un altro, ma lo sguardo della guardia non lascia mai davvero il margine del bosco.",
		"resta in attesa mentre la guardia passa in rassegna il suo equipaggiamento, poi viene {g:congedato|congedata} con due dita.",
	},
	["elw.npc_meet.w17.guard.002"] = {
		"Il leone su quella casacca è ricucito di fresco. Chi la indossa sembra non aver mai smesso l'ultima pattuglia.",
		"Una guardia dove ce ne vorrebbero tre. Le altre sono a qualche confine, e questa lo sa.",
		"Elmo lucido, occhi stanchi. Il regno tiene splendenti le armature e i soldati a corto di sonno.",
	},
	["elw.npc_meet.w17.guard.003"] = {
		"Tutto tranquillo sul vostro tratto di strada? Allora cercherò di non essere io a guastarlo.",
		"Buona guardia. Cosa vi ha dato più grattacapi, ultimamente: maschere, gnoll o mucche indisciplinate?",
	},
	["elw.npc_meet.w17.inn.001"] = {
		"Chi sta al banco ha l'aria di conoscere il conto di ogni contadino, e di sapere bene chi è in arretrato.",
		"Una manica sporca di farina e l'altra d'inchiostro. Pane e conti: le due metà di Elwynn, dietro un solo banco.",
		"Dietro il banco, una faccia che ha sentito ogni diceria sui Defias e ne crede più o meno un terzo.",
	},
	["elw.npc_meet.w17.inn.002"] = {
		"Piacere. Qual è il vanto della cucina, e quanto ne è rimasto?",
		"Una stanza per qualche ora, e qualunque chiacchiera venga in omaggio.",
	},
	["elw.npc_meet.w17.inn.003"] = {
		"si appoggia al bancone consumato e scambia due nomi con chi tiene la locanda, nell'acciottolio delle scodelle.",
		"viene {g:squadrato|squadrata} da chi tiene la locanda con un'occhiata esperta: stivali, zaino, borsa, appetito.",
	},
	["elw.npc_meet.w17.teach.001"] = {
		"Chi mi addestra parla poco e corregge molto: una spinta al gomito, un colpetto al tallone. Elwynn insegna come coltiva, con piccole correzioni pazienti.",
		"Qualcuno che ha visto passare cento allievi e si ricorda solo di quelli utili. Ho intenzione di farmi ricordare.",
	},
	["elw.npc_meet.w17.teach.002"] = {
		"Insegnatemi quello che potete. Pago in monete adesso e in giudizio più avanti.",
		"Fatemelo vedere una volta, e mi eserciterò finché i campi non saranno stufi di guardarmi.",
	},
	["elw.npc_meet.w17.teach.003"] = {
		"ascolta la lezione a braccia conserte, le scioglie per provare il movimento, e le incrocia di nuovo quando lo sbaglia.",
		"fa un lieve inchino a chi insegna, l'antica cortesia delle sale di Stormwind, e ne riceve un sorriso asciutto.",
	},
	["elw.npc_meet.w17.trade.001"] = {
		"Al banco mi dicono un prezzo, studiano la mia faccia e in silenzio tolgono un rame. Le buone maniere di Elwynn, perfino negli affari.",
		"Scaffali di filo, candele e maiale salato, e qualcuno al banco che sa esattamente per quale di queste cose sono qui.",
	},
	["elw.npc_meet.w17.trade.002"] = {
		"Cosa si vende a Elwynn di questi tempi? A parte la paura dei banditi, intendo.",
		"Fatemi vedere cosa avete. E ditemi cosa non hanno ancora rubato i Defias, così so cos'è raro.",
		"Piacere. Ho monete, una lista lunga e nessun talento per contrattare. Abbiate pietà.",
	},
	["elw.npc_meet.w17.trade.003"] = {
		"passa in rassegna la merce in vendita: spago, farina, una lanterna di latta, un mucchio di qualcosa avvolto in un panno.",
		"prende in mano una lanterna di latta tra la merce esposta, la rimette giù e chiede il prezzo di tutt'altro.",
	},
	["elw.quest_complete.w17.folk.001"] = {
		"Chi chiede aiuto a Elwynn si scusa di averlo chiesto. Dice molto di loro, e un po' anche delle guardie.",
		"Qui nessuno chiede aiuto alla leggera. Aspettano che il guaio arrivi allo steccato, e poi se ne vergognano pure.",
		"La gente di Elwynn ringrazia come se avessi fatto un favore che non aveva diritto di chiedere. Potrei abituarmi a ringraziamenti così.",
	},
	["elw.quest_complete.w17.folk.002"] = {
		"riceve una stretta di mano ruvida di lavoro nei campi e due parole di grazie, dette più al terreno che in faccia.",
		"viene {g:ringraziato|ringraziata} due volte, una a voce e una con un lungo sguardo verso i campi, che dice di più.",
		"riceve un cenno da chi aveva chiesto aiuto, poi un secondo cenno da qualcuno che guardava a distanza e ha chiaramente sentito tutto.",
	},
	["elw.quest_complete.w17.folk.003"] = {
		"Felice di aver dato una mano. Però tenete il cancello chiuso per un po': il bosco non ha finito di dare guai.",
		"Il piacere è mio. Se dagli alberi esce qualcos'altro, avvisate le guardie prima di mandare a chiamare me.",
		"Volentieri. Tenete d'occhio il margine del bosco per qualche giorno, e al campo più lontano non andateci senza compagnia.",
	},
	["elw.quest_complete.w17.folk.004"] = {
		"Saranno all'aratro prima che io sparisca alla vista. A Elwynn la gratitudine è breve, perché il lavoro è lungo.",
		"Un grazie veloce, e la zappa è già in mano. In questi campi nessuno può permettersi un lungo saluto.",
		"Un cenno della mano, e la schiena torna china sul solco. Elwynn ringrazia voltandoti le spalle, e lo pensa davvero.",
	},
	["elw.quest_complete.w17.folk.005"] = {
		"A Elwynn le voci passano da uno steccato all'altro. Prima che arrivi alla strada, la fattoria accanto avrà già un lavoro pronto per me.",
		"Il vicino di qualcuno sta sbirciando oltre la siepe. Scommetto che si è appena ricordato di un problema tutto suo.",
		"Aiuti una casa, in questo bosco, e altre tre lo sanno prima che tu abbia finito di allacciare gli stivali.",
	},
	["elw.quest_complete.w17.folk.006"] = {
		"Le guardie non possono stare in ogni fattoria. Qualcuno deve tappare i buchi tra una pattuglia e l'altra, e stavolta è toccato a me.",
		"L'esercito del regno è sparpagliato lungo i confini, e qui ne è rimasto poco. Tra una pattuglia e l'altra, tocca a gente come me tenere insieme le cuciture.",
	},
	["elw.quest_complete.w17.folk.007"] = {
		"china il capo ai ringraziamenti, come fanno i fratelli di Northshire, e non chiede altro.",
		"accoglie i ringraziamenti con un piccolo inchino, un po' solenne per le maniere semplici di Elwynn, e a nessuno dispiace.",
	},
	["elw.quest_complete.w17.folk.008"] = {
		"Dite ai piccoli che possono giocare vicino agli alberi. Vicino, eh, non in mezzo.",
		"Potete lasciar uscire i bambini oltre lo steccato. Non troppo oltre.",
		"Se ci sono bambini in giro, il prato è loro per un po'. Ma lontano dalla macchia.",
	},
	["elw.quest_complete.w17.folk.009"] = {
		"Metà delle persone che aiuto in questo bosco hanno qualcuno ai confini, o sotto una pietra. Non lo dicono; si vede da come guardano la strada.",
		"Mi ringraziano come si ringrazia chi fa le veci di un figlio che dovrebbe essere qui. Preferisco non pensarci troppo.",
	},
	["elw.quest_complete.w17.folk.010"] = {
		"ascolta educatamente mentre i ringraziamenti si trasformano in una lunga storia su un cugino di Westfall.",
		"si vede offrire una sedia, una tazza di qualcosa e tutta la storia di uno steccato di famiglia prima di riuscire ad andarsene.",
		"annuisce ai ringraziamenti, poi alle notizie, poi a un parere sul prezzo della lana, e scivola piano verso il viottolo.",
	},
	["elw.quest_complete.w17.folk.011"] = {
		"Sono i campi della mia gente. Ogni aiuto che do loro era già dovuto.",
		"Un umano che non muove un dito per i contadini di Elwynn ha dimenticato da dove viene il pane. Io no.",
	},
	["elw.quest_complete.w17.folk.012"] = {
		"Quando questo bosco ha bisogno di una mano, basta chiedere. Sapete dove trovarmi: di solito per strada.",
		"Se qualcos'altro vi dà pensiero, gridate. A Elwynn una voce arriva lontano.",
		"Quando volete. Elwynn è stata gentile con me: è giusto che io le sia utile.",
	},
	["elw.quest_complete.w17.pay.001"] = {
		"Mi pagano in rame che sa un po' di stalla. I soldi di Elwynn fanno un lavoro onesto prima di arrivare a me.",
		"Le monete escono da un barattolo nascosto dietro i sacchi di farina, scommetto. Si spendono uguale.",
		"Rame con ancora qualche filo di paglia attaccato. Mi hanno pagato peggio, e gente più ricca.",
	},
	["elw.quest_complete.w17.pay.002"] = {
		"Con l'esercito ai confini, il regno paga chi capita sottomano per sbrigare le sue faccende. Non che mi lamenti.",
		"Qualcuno deve fare il soldato mentre i soldati sono via. Almeno la paga è giusta.",
		"Al regno mancano soldati e avanzano commissioni. Buon per la mia borsa.",
	},
	["elw.quest_complete.w17.pay.003"] = {
		"accetta quanto dovuto e non lo conta: in questo bosco la gente di solito paga ciò che ha promesso.",
		"prende la paga con un grazie breve, e non la conta davanti a chi l'ha data. Anche Elwynn ha le sue buone maniere.",
	},
	["elw.quest_complete.w17.pay.004"] = {
		"Hanno pagato senza contrattare, e questo mi preoccupa più di una trattativa. Un contadino che non contratta è un contadino spaventato.",
		"Vedere un contadino contare argento che non può permettersi ti resta addosso più a lungo dell'argento stesso.",
		"Le monete erano tiepide, tenute in mano a lungo. Qualcuno ci ha pensato parecchio, prima di decidersi a chiedere aiuto.",
	},
	["elw.quest_complete.w17.pay.005"] = {
		"Paga giusta per un lavoro giusto. Buona parte finirà presto alla locanda di Goldshire.",
		"Un prezzo onesto per il disturbo. Purtroppo anche gli stivali vorranno la loro parte.",
		"Pagamento onesto. Brinderò ai contadini di Elwynn, col loro stesso argento.",
	},
	["elw.quest_complete.w17.pay.006"] = {
		"Elwynn paga come scorrono i suoi ruscelli: mai molto, mai a singhiozzo.",
		"Somme piccole, pagate spesso. Questo bosco non arricchirà nessuno, ma a un viandante la pancia la riempie.",
		"Con le commissioni di Elwynn nessuno si arricchisce. Ma nessuno nemmeno ci fa la fame, e non è poco per una strada.",
	},
	["elw.quest_complete.w17.pay.007"] = {
		"chiude i lacci della borsa con un doppio nodo, un'abitudine che le strade di Elwynn insegnano in fretta.",
		"sistema la paga in fondo allo zaino, sotto le calze di ricambio, dove i borseggiatori di rado si prendono la briga di frugare.",
		"infila la borsetta sotto la cintura, dove una mano Defias dovrebbe essere lesta davvero.",
	},
	["elw.quest_complete.w17.pay.008"] = {
		"Mi pagano sull'unghia, fino all'ultimo rame. I muratori che ricostruirono la città ne riderebbero, se ridessero ancora.",
		"Paga puntuale. Da qualche parte tra le colline un uomo con la maschera rossa aspetta ancora il suo salario, almeno a sentire le taverne.",
	},
	["elw.quest_complete.w17.pay.009"] = {
		"Fatto e pagato. Allora, dove si compra una torta decente in questo bosco?",
		"Ecco la mia paga. La spenderò in qualcosa di utile, tipo stivali, o in qualcosa di meglio, tipo la cena.",
		"Pagato il dovuto! Da qualche parte a Elwynn c'è chi sforna una crostata per cui vale la pena battersi, e intendo trovarla.",
	},
	["elw.quest_complete.w17.pay.010"] = {
		"A Elwynn la paga arriva spesso con qualcosa in più messo in mano: una mela, un consiglio, un avvertimento sul bosco.",
		"La gente di questo bosco non resiste ad aggiungere qualcosa alla paga: una dritta sulla strada, un nome da chiedere al crocevia di Goldshire.",
	},
	["elw.quest_complete.w17.pay.011"] = {
		"Bella paga. Sarebbe stata ancora più bella se qualcuno mi avesse detto tutto fin dall'inizio.",
		"Generosi. Sospettosamente generosi. Non chiederò cos'altro si nasconde in quei campi.",
		"Grazie mille. La prossima volta, prima il compenso e poi i denti.",
	},
	["elw.quest_complete.w17.pay.012"] = {
		"Argento del regno, guadagnato nei campi del regno. Ci sono modi peggiori di servire una corona che poggia sulla testa di un ragazzo.",
		"Ogni commissione sbrigata a Elwynn è una piccola tassa pagata al regno, e il regno me la rende. Un patto onesto, tra gente nostra.",
	},
	["elw.quest_complete.w17.walk.001"] = {
		"La strada per andarsene è sempre più corta di quella per arrivare. Stesse pietre, meno pensieri.",
		"Fatto. Il viottolo sembra un altro, ora che non scruto ogni siepe in cerca di guai.",
		"Strano come un lavoro finito cambi la strada. I solchi sono gli stessi, ma ho smesso di contarli.",
	},
	["elw.quest_complete.w17.walk.002"] = {
		"si rimette lo zaino in spalla e prende la strada più vicina, che a Elwynn prima o poi finisce sotto un tetto.",
		"si allontana e si ferma al primo bivio, a soppesare da che parte stia il prossimo guaio.",
	},
	["elw.quest_complete.w17.walk.003"] = {
		"Quale di questi viottoli va verso Goldshire? Sembrano tutti far finta.",
		"Tre viottoli, e ognuno giura di essere la scorciatoia. Elwynn, che dispettosa.",
		"Qualcuno dovrebbe dipingere delle indicazioni sulle siepi. Pagherei di tasca mia, giuro.",
	},
	["elw.quest_complete.w17.walk.004"] = {
		"Vecchio lastricato sotto gli stivali, consumato a conca nel mezzo. Ci sono passati eserciti e carri cigolanti, e porta me allo stesso modo.",
		"Le strade di Elwynn c'erano prima dei guai e ci saranno dopo. Io sono solo l'ultimo paio di stivali.",
	},
	["elw.quest_complete.w17.walk.005"] = {
		"La prossima volta che qualcuno in questo bosco ha bisogno d'aiuto, spero che abiti un po' meno fuori mano.",
		"Bella commissione. Per la prossima, gradirei una locanda un po' più a portata di mano.",
		"Lavoro fatto. Ora la lunga scarpinata per uscirne, con nient'altro da combattere che i rovi.",
	},
	["elw.quest_complete.w17.walk.006"] = {
		"si avvia lungo una siepe piena di passeri chiassosi, mentre il lavoro fatto già si ripiega nella memoria.",
		"se ne va tra gli steccati, e un cane di fattoria segue i suoi passi per un tratto prima di decidere che la faccenda è chiusa.",
		"prende il viottolo con calma, chinandosi sotto un ramo carico di mele che nessuno sembra aver fretta di cogliere.",
	},
	["elw.quest_complete.w17.walk.007"] = {
		"Ora niente fretta. Prenderò la via più lunga, costeggiando l'acqua, e camminerò come chi non ha niente da dimostrare.",
		"Per una volta nessuno mi aspetta dall'altra parte. Posso fermarmi a uno steccato e guardare, e basta.",
	},
	["elw.quest_complete.w17.walk.008"] = {
		"Un nodo sciolto. Elwynn ha più guai di quanti un solo paio di mani possa sbrogliare, ma queste mani non hanno finito.",
		"Questo viottolo può stare tranquillo. Gli altri non hanno avuto la stessa fortuna, per ora: meglio mettersi in cammino.",
	},
	["elw.quest_complete.w17.walk.009"] = {
		"Andando via passerò accanto alle fattorie prese dalle maschere. Aiutare una famiglia rende solo più rumorose le case vuote.",
		"Buon lavoro, ma non rimette in sesto le fattorie vuote lungo la strada. Questo bosco ha più buchi di quanti una commissione possa rattoppare.",
	},
	["elw.quest_complete.w17.walk.010"] = {
		"si ferma al bordo del campo a raschiare il fango dagli stivali contro un'asse dello steccato, prima di rimettersi in cammino.",
		"riparte da dove è {g:venuto|venuta}, scavalcando con cura i solchi giovani.",
		"cerca un passaggio verso la strada lungo il bordo del campo, dove l'aratro ha lasciato una striscia d'erba per chi cammina.",
	},
	["elw.quest_complete.w17.walk.011"] = {
		"Ci sarà pure, a Elwynn, un viottolo che non ho ancora percorso. Diamogli tempo.",
		"I miei stivali conoscono queste strade meglio della mia testa. Lascio guidare loro.",
	},
	["elw.quest_progress.w17.done.001"] = {
		"C'è tutto. Ora la strada fino a chi mi aspetta, e la faccia che farà quando arrivo.",
		"Ho tutto quello che mi serviva. In fondo a una di queste strade c'è una faccia preoccupata che sta per rasserenarsi.",
		"Finito. La parte migliore di ogni commissione a Elwynn è la strada a ritroso, con una buona notizia nello zaino.",
	},
	["elw.quest_progress.w17.done.002"] = {
		"Fatto. Andiamo a dirglielo prima che a forza di preoccuparsi si creino un secondo problema.",
		"Qui ho chiuso. E adesso, da quale viottolo ero {g:arrivato|arrivata}?",
	},
	["elw.quest_progress.w17.done.003"] = {
		"si raddrizza, dà un'ultima occhiata intorno e si volta verso il viottolo più vicino.",
		"si carica lo zaino in spalla con l'aria soddisfatta di chi ha finalmente la lista vuota.",
	},
	["elw.quest_progress.w17.done.004"] = {
		"Ho tutto in mano. Ora Elwynn, per puro dispetto, metterà un lupo tra me e la strada.",
		"Finito. Naturalmente la via d'uscita passa davanti all'unico cane di fattoria che mi odia.",
	},
	["elw.quest_progress.w17.step.001"] = {
		"Questo è un pezzo. Il resto è là fuori, da qualche parte tra le siepi, e le siepi non parlano.",
		"Un po', non tutto. Continuerò a battere i margini dei campi finché il resto non salta fuori.",
		"Una parte in mano, il resto ancora sparso per Elwynn. Il bosco non ha nessuna fretta di cedermelo.",
	},
	["elw.quest_progress.w17.step.002"] = {
		"Mi avvicino. Elwynn non consegna i suoi guai in fasci ordinati, ma ci sto arrivando.",
		"Non è finita, ma il conto cresce. Un contadino lo chiamerebbe un progresso onesto.",
	},
	["elw.quest_progress.w17.step.003"] = {
		"Un po' è fatto. Il resto non può nascondersi dietro ogni steccato per sempre.",
		"A metà, forse. Elwynn, non me la rendi facile.",
		"Si avanza! Piano e nel fango, ma si avanza.",
	},
	["elw.quest_progress.w17.step.004"] = {
		"fa una pausa per spuntare mentalmente un'altra voce, poi scruta i campi in cerca della prossima.",
		"si pulisce le mani sulla manica e guarda lungo la strada, valutando quanto resta da fare.",
		"conta qualcosa sulle dita, aggrotta la fronte, ricomincia da capo e si avvia verso la siepe successiva.",
	},
	["elw.quest_progress.w17.step.005"] = {
		"Si va avanti, piano come un cavallo all'aratro. In questo bosco tutto ciò che vale la pena si fa al passo.",
		"Un po' più avanti. Le querce hanno visto lavori più lenti del mio.",
	},
	["elw.victory.w17.won.001"] = {
		"Finita. Da qualche parte una ruota di mulino ha girato per tutto il tempo, senza perdere un colpo.",
		"Fatto. Le fattorie di Elwynn non hanno nemmeno alzato gli occhi dal lavoro.",
		"Finito. Più su per la strada, qualcuno discute ancora sul prezzo delle uova.",
	},
	["elw.victory.w17.won.002"] = {
		"Un pensiero in meno per la guardia di Goldshire.",
		"Le pattuglie possono percorrere questo tratto con un po' più di calma, adesso.",
		"Ditelo alla prossima guardia sulla strada: a questo pezzo ci ho pensato io.",
	},
	["elw.victory.w17.won.003"] = {
		"raddrizza un paletto storto dello steccato prima di ripartire, come per rimettere in ordine il campo.",
		"rimette dritto un secchio rovesciato sul ciglio della strada e prosegue.",
		"rimette in piedi un covone caduto, con l'ordine di un bracciante.",
	},
	["elw.victory.w17.won.004"] = {
		"Ha un'aria così mite, Elwynn, che ogni scontro pare un piatto rotto in una cucina pulita.",
		"Una terra così gentile, per una cosa piccola e brutta come uno scontro.",
		"Difficile capire, in tutto questo verde, che sia successo qualcosa. Io lo so.",
	},
	["elw.victory.w17.won.005"] = {
		"Che gli aratori tornino ai loro solchi. Questo tratto è libero.",
		"Dormite tranquille, fattorie. Per un po' la strada è sgombra.",
		"Semina in pace, Elwynn. Questo non darà più fastidio ai tuoi campi.",
	},
	["elw.victory.w17.won.006"] = {
		"La città dietro le sue mura bianche non ne saprà mai niente. Ed è proprio questo il punto.",
		"A Stormwind nessuno lo saprà. Bene: un regno tranquillo resta tranquillo così.",
		"Uno scrivano di Stormwind sta annotando una settimana tranquilla. Bene così.",
	},
	["elw.victory.w17.won.007"] = {
		"si ferma a togliersi una lappola dalla manica, poi guarda giù per la strada, verso Goldshire.",
		"si scuote dalle ginocchia fili d'erba e pula, e si rimette in cammino.",
		"si sistema uno stivale storto, gli occhi già alla prossima curva della strada.",
	},
	["elw.victory.w17.won.008"] = {
		"Una maschera in meno da Northshire a Westfall.",
		"Dillo alla Fratellanza: ora è questa strada a riscuotere da loro.",
	},
	["elw.victory.w17.won.009"] = {
		"Un tempo qualcuno gli doveva una paga. Adesso nessuno deve più niente a nessuno.",
		"Un debito che i nobili non hanno mai saldato, e il conto l'ho chiuso io. Non mi va giù.",
		"Pietra per la città, poi una maschera per la strada. Un sentiero breve e amaro.",
	},
	["elw.victory.w17.won.010"] = {
		"Quel cunicolo adesso è vuoto. Che se lo riprendano i minatori.",
		"Uno scavatore in meno sotto le fattorie. Le cantine possono stare tranquille.",
	},
	["elw.victory.w17.won.011"] = {
		"spegne tra due dita la candelina del coboldo caduto.",
		"allontana con un calcio il piccone caduto e cerca con gli occhi il prossimo.",
	},
	["elw.victory.w17.won.012"] = {
		"Povera bestia affamata. Gli ovili staranno più tranquilli, e io non me ne vanterò.",
		"Un lupo in meno ai recinti dei pastori. Non mi sembra granché, come vittoria.",
		"Il bosco ha i lupi come una casa ha i topi. Eppure anche questo aveva una vita.",
	},
	["elw.victory.w17.won.013"] = {
		"Va' a ridere di questo a Redridge.",
		"La tua risata si sentiva da lontano. Anche questa notizia andrà lontano.",
	},
	["elw.victory.w17.won.014"] = {
		"resta un attimo sull'erba pestata, come un contadino su un filare rovinato.",
		"guarda il trifoglio schiacciato e sospira, come se anche il campo avesse perso qualcosa.",
	},
	["elw.victory.w17.won.015"] = {
		"Entro il prossimo raccolto l'erba qui se ne sarà scordata. Io ci metterò di più.",
		"Ogni anno il verde ricopre tutto. Elwynn dimentica in fretta i suoi scontri.",
		"Il trifoglio si rialzerà presto. Elwynn guarisce più in fretta della gente.",
	},
	["elw.victory.w17.won.016"] = {
		"Per il giovane re e i suoi campi tranquilli. Questo è fatto.",
		"La pace del regno, difesa un'altra volta. Che duri a lungo.",
	},
	["elw.victory.w17.won.017"] = {
		"La mia gente ha tenuto questa terra tra fuoco e fame. Non sarò io a cederne un solco.",
		"I nostri campi. I nostri steccati. Nostri, come sempre.",
	},
	["elw.victory.w17.won.018"] = {
		"saluta con la mano un contadino a un cancello lontano, che ricambia.",
		"incrocia lo sguardo di un pastore sulla collina e ne riceve un lento cenno di grazie.",
		"fa un cenno a un carrettiere che aveva rallentato per guardare, e il carro riparte.",
	},
	["elw.victory.w17.won.019"] = {
		"Per merito di questo un carro di farina arriverà in città senza guai. Nessuno lo saprà. Va bene così.",
		"Strada sicura vuol dire pane a Stormwind. Vale un livido o due.",
	},
	["elw.victory.w17.wry.001"] = {
		"Ecco tutta l'emozione che questo campo vedrà. Si torna a mucche e fieno.",
		"E ora si torna alla vita avventurosa delle balle di fieno.",
		"Emozionante. Ora il campo può rimettersi a crescere.",
	},
	["elw.victory.w17.wry.002"] = {
		"Lo spaventapasseri ha dato una mano. Scrivetelo nel rapporto.",
		"Il merito è dello spaventapasseri. Ha avuto un'aria feroce per tutto il tempo.",
	},
	["elw.victory.w17.wry.003"] = {
		"Lo racconterò al Lion's Pride. Al secondo boccale sarete diventati tre.",
		"Quando questa storia sarà arrivata alle orecchie di Goldshire, avrà messo i denti e una seconda testa.",
	},
	["elw.victory.w17.wry.004"] = {
		"Una mucca ha visto tutto. Scelgo di credere che sia rimasta colpita.",
		"L'unica testimone era una mucca, e ha ripreso a ruminare. Pubblico difficile.",
		"Una pecora lo starà già raccontando al gregge. Male.",
	},
	["elw.victory.w17.wry.005"] = {
		"Meglio non dire alle guardie che ho fatto il loro lavoro gratis. Poi se lo aspetterebbero.",
		"Lavoro da guardia, fatto per niente. Voglio almeno una casacca, in cambio.",
	},
	["elw.victory.w17.wry.006"] = {
		"fa un piccolo inchino a due pecore che hanno seguito tutto, ruminando.",
		"si guarda intorno, ma l'unico testimone è una gallina, e non ha commenti.",
		"scaccia dallo steccato un vitello curioso: lo spettacolo è finito.",
	},
	["elw.victory.w17.wry.007"] = {
		"si toglie un fuscello dal colletto con grande dignità.",
		"si sfila un filo di fieno dai capelli e fa finta che non ci sia mai stato.",
	},
	["elw.victory.w17.wry.008"] = {
		"Ho gli stivali pieni di campo. Mezza Elwynn viene via con me.",
		"Fango alle caviglie e lappole ovunque. Elwynn manda sempre un ricordino.",
		"Fieno nel colletto, fango sulle ginocchia e una vittoria. Elwynn in breve.",
	},
	["elw.victory.w17.wry.009"] = {
		"Dovevi restare muratore. Lavoro più tranquillo.",
		"Torna alla pietra, magari. Si guadagna poco, ma nessuno ti picchia.",
	},
	["elw.victory.w17.wry.010"] = {
		"Quell'ultimo gorgoglio sembrava una scusa. Accettata.",
		"Nessuno, sulle rive del lago, rimpiangerà quell'odore.",
	},
	["elw.victory.w17.wry.011"] = {
		"La cena è sistemata, se la locanda me la cucina.",
		"Qualcuno porti uno spiedo. Maiale di Elwynn, freschissimo.",
	},
	["elw.victory.w17.wry.012"] = {
		"I coboldi vengono in tre taglie: piccoli, più piccoli e quello che morde.",
		"Uno in meno, e puzzerò di sego per una settimana.",
	},
	["elw.victory.w17.wry.013"] = {
		"Potevi almeno tendermi l'agguato più vicino alla locanda.",
		"Non poteva succedere più vicino al Lion's Pride? A quest'ora sarei già {g:seduto|seduta}.",
	},
	["elw.victory.w17.wry.014"] = {
		"Gli uccelli hanno ripreso a cantare prima ancora che finissi. Elwynn non ha senso del dramma.",
		"Nemmeno una pausa. I passeri si sono rimessi subito a spettegolare.",
	},
	["elw.weather_change.w17.sky.001"] = {
		"Le prime gocce di pioggia trovano le foglie delle querce prima di trovare me. Per un attimo tutto il bosco sfrigola come una padella.",
		"Pioggia, tutta d'un colpo, e ogni cane di fattoria nei paraggi comincia a lamentarsene.",
		"Comincia a piovere su Elwynn, e la polvere dei viottoli si scurisce, poi profuma, poi diventa fango.",
	},
	["elw.weather_change.w17.sky.002"] = {
		"si arresta mentre la nebbia si chiude intorno, e lì dentro tintinna un campanaccio di pecora, vicino o lontano, impossibile dirlo.",
		"rallenta mentre la nebbia si posa sul viottolo, le querce ai lati che diventano sagome pallide, e poi niente del tutto.",
	},
	["elw.weather_change.w17.sky.003"] = {
		"Ecco, le nuvole si rompono. Elwynn sembra appena lavata, e molto soddisfatta di sé.",
		"Si rasserena. Le pozzanghere del viottolo sono diventate piccoli specchi azzurri.",
	},
]==])
