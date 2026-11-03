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
]==])
