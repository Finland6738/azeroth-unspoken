-- Italian texts of the regional pack kalimdor_barrens (content wave W02). The rules are in AzerothUnspoken_Kalimdor/Barrens.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("thebarrens", "itIT", "kalimdor_barrens", [==[
	["bar.attack.01"] = {
		"Senti? Sono le Barrens che rispondono.",
		"Terra dura, colpi duri.",
	},
	["bar.attack.02"] = {
		"Scusa. Il caldo mi mette di cattivo umore.",
		"Niente di personale. Prenditela col caldo.",
	},
	["bar.attack.03"] = {
		"Breve e secco. Non c'è acqua da sprecare per uno scontro lungo.",
		"Colpisci forte, chiudi in fretta, trova l'acqua.",
	},
	["bar.battle.01"] = {
		"Fuori dall'erba e dentro la mia portata. Pessimo affare.",
		"Nelle Barrens c'è tanto spazio per scappare. Dovevi approfittarne.",
		"Terreno aperto, niente riparo. Solo tu e io, allora.",
	},
	["bar.battle.02"] = {
		"alza una mano contro la polvere che vola ed entra nello scontro, mentre la polvere si solleva in una nuvola dorata attorno a entrambi.",
		"solleva polvere gialla mentre lo scontro comincia, con l'erba secca che sferza tutti e due.",
	},
	["bar.battle.03"] = {
		"Caldo, polvere, e adesso anche tu. Oggi le Barrens sono generose.",
		"Sudore negli occhi e uno scontro davanti. Le Barrens non ti danno mai un problema solo.",
	},
	["bar.battle.04"] = {
		"Nelle Barrens ogni cosa ha sete, fame o rabbia. Tu mi sembri tutte e tre.",
		"Fammi indovinare: caldo, fame e luna storta. Siamo in due.",
	},
	["bar.battle.05"] = {
		"Niente alberi a cui appoggiare la schiena. Allora la appoggio al nulla, e tengo duro lo stesso.",
		"Terreno aperto. Nessun posto dove nascondersi, e vale per tutti e due.",
	},
	["bar.battle.06"] = {
		"Gli avvoltoi girano già in tondo. Vediamo chi di noi due stanno aspettando.",
		"Guarda in alto. Gli avvoltoi hanno scelto da che parte stare, e non gli importa quale.",
	},
	["bar.battle.07"] = {
		"si gira ad affrontare la carica, gli stivali che scivolano un poco sulla terra secca e smossa.",
		"strizza gli occhi verso la sagoma che arriva veloce attraverso l'erba alta, e si prepara.",
	},
	["bar.battle.08"] = {
		"C'è tanto cielo a guardare. Diamogli uno spettacolo.",
		"Sotto tutto questo cielo nessuno si nasconde. Affrontami.",
	},
	["bar.battle.09"] = {
		"Possibile che in questa terra niente lasci camminare in pace? E va bene. Si combatte.",
		"A metà strada dall'acqua, e adesso questo. Ma certo.",
	},
	["bar.battle.10"] = {
		"Kolkar! Occhio agli zoccoli e alla lancia, a tutti e due.",
		"Scendi da cavallo, centauro. Ah. Scusa.",
	},
	["bar.battle.11"] = {
		"Un altro quilboar sbucato dai rovi. A voi le lance non mancano mai.",
		"Esci dai rovi e combatti allo scoperto, quilboar!",
	},
	["bar.battle.12"] = {
		"Venture Co.! Posa la chiave inglese e passa a ritirare la liquidazione.",
		"Stai trivellando nel posto sbagliato, goblin. Per la precisione, vicino a me.",
	},
	["bar.journey.01"] = {
		"si alza in volo sul dorso della viverna, e sotto si aprono le Barrens: un mare d'oro con le strade tracciate nella polvere.",
		"sale oltre la palizzata su ali di cuoio, mentre la pianura si inclina e scivola via in una foschia di calore.",
	},
	["bar.journey.02"] = {
		"Su, finalmente, nell'aria che si muove. Da quassù le Barrens sembrano quasi gentili.",
		"La viverna sale, e il caldo mi scivola di dosso, laggiù, come un mantello lasciato cadere.",
	},
	["bar.journey.03"] = {
		"Di nuovo a terra, di nuovo nel caldo. Lassù si stava meglio.",
		"Terra ferma. Calda, polverosa, ma ferma.",
		"Giù dal cielo, e subito dentro un forno.",
	},
	["bar.landmark.01"] = {
		"passa sotto la palizzata di Crossroads, dove mercanti, grunt e conducenti di kodo si parlano addosso nella polvere.",
		"entra a Crossroads, l'unico nodo affollato in mille miglia di erba deserta.",
		"entra a Crossroads mentre una viverna si posa sulla torre, scrollando polvere sui mercanti.",
	},
	["bar.landmark.02"] = {
		"Ratchet. Odore di sale, di olio e di soldi.",
		"Un porto goblin. Una mano sulla borsa, e l'altra sull'altra borsa.",
	},
	["bar.lowhp.01"] = {
		"L'erba è abbastanza morbida da sdraiarcisi. Il guaio è proprio questo.",
		"In piedi. Gli avvoltoi sanno aspettare, ma io sono più {g:testardo|testarda}.",
		"In questa pianura cadere è così facile. Il suolo è piatto, e sempre lì, a portata.",
	},
	["bar.lowhp.02"] = {
		"Ancora in piedi. Le Barrens dovranno impegnarsi di più.",
		"Sanguino nella polvere. Va bene. La polvere ha visto di peggio.",
		"Non ho finito. Neanche a metà.",
	},
	["bar.lowhp.03"] = {
		"barcolla nell'erba secca, il respiro spezzato, e per un attimo la pianura infinita si inclina.",
		"ondeggia, mentre il caldo e le ferite premono insieme come due mani pesanti.",
	},
	["bar.lowhp.04"] = {
		"L'acqua è lontana, l'aiuto ancora di più. Resisti lo stesso.",
		"Nessuno a guardare, a parte il cielo. E allora che il cielo mi veda rialzarmi.",
	},
	["bar.muse.01"] = {
		"Erba gialla fino all'orlo del mondo, e un albero spinoso piantato lì in mezzo come se avesse perso una scommessa.",
		"Cammini un'ora e l'orizzonte non si è spostato di un palmo. Le Barrens vanno avanti e basta.",
		"Piatta, dorata, senza fine. In questa pianura a parlare è soprattutto il cielo.",
	},
	["bar.muse.02"] = {
		"Chi ha dato il nome a questo posto non ha sprecato molta fantasia.",
		"Le chiamano The Barrens. Per una volta, un nome che non ti racconta bugie.",
	},
	["bar.muse.03"] = {
		"guarda una fila di zhevra attraversare l'erba uno dietro l'altro, le strisce che tremolano al passaggio.",
		"si ferma mentre un branco di zhevra alza la testa tutto insieme, orecchie tese, e poi torna a brucare.",
		"segue con lo sguardo una fila di zhevra a strisce che trottano nell'erba alta, verso un'acqua che solo loro sanno trovare.",
	},
	["bar.muse.04"] = {
		"Il vento qui non si ferma mai. Cambia solo idea su da che parte spingere.",
		"Vento caldo, erba secca, un fruscio che non finisce. Le Barrens soffiano di continuo e non riprendono mai fiato.",
	},
	["bar.muse.05"] = {
		"Ogni otre nelle Barrens è mezzo vuoto. Il mio l'ho controllato quattro volte in un'ora.",
		"In questa pianura impari a contare l'acqua come le monete, e a spenderla più adagio.",
		"La sete è la vera padrona di questa terra. Centauri e raptor sono solo al suo servizio.",
	},
	["bar.muse.06"] = {
		"Raptor nell'erba. Il primo non lo vedi mai. Vedi il secondo.",
		"Alla larga dall'erba alta. È lì che i raptor fanno i loro ragionamenti.",
	},
	["bar.muse.07"] = {
		"Un plainstrider mi ha fissato, ha deciso che non valevo la fatica e se n'è andato per i fatti suoi. Giusto.",
		"I plainstrider di qui sembrano uccelli montati con gambe avanzate, a cui qualcuno ha scordato di attaccare le ali.",
	},
	["bar.muse.08"] = {
		"A est il Southfury corre veloce e torbido. Strano vedere tanta acqua accanto a una terra così assetata.",
		"Il Southfury fa da confine: roccia rossa su una sponda, erba dorata sull'altra, e il fiume che si fa gli affari suoi.",
	},
	["bar.muse.09"] = {
		"La Gold Road taglia le Barrens per il lungo, da nord a sud, e chiunque la percorra ha fretta.",
		"Segui la Gold Road abbastanza a lungo e qualche meta te la dà. È più di quanto prometta la maggior parte delle strade.",
		"Orme di kodo, solchi di carri, impronte di stivali di ogni misura. La Gold Road tiene il conto di chiunque passi.",
	},
	["bar.muse.10"] = {
		"si riposa un momento nell'ombra rada di un albero spinoso, dove la luce filtra in cento piccole monete.",
		"si ferma sotto un albero dalla chioma piatta, l'unica ombra per mezzo miglio, e ci trova già le impronte di un leone.",
	},
	["bar.muse.11"] = {
		"Là fuori, chissà dove, i Kolkar sono in sella. Li senti dal suolo prima ancora di vedere la polvere.",
		"Terra di centauri. Ogni piega dell'erba può nascondere una banda di guerra, e quest'erba è tutta pieghe.",
	},
	["bar.muse.12"] = {
		"I quilboar dicono che le grandi spine a sud siano cresciute dove sanguinò il loro semidio. A guardare quei rovi, qualcosa dev'essere successo davvero.",
		"Terra dei Razormane, tutta rovi e setole. Per i quilboar le spine sono sacre; per me sono un ottimo motivo per portare gli stivali.",
	},
	["bar.muse.13"] = {
		"La Venture Co. che pompa petrolio da una palude. Ma certo. Se il cielo avesse un rubinetto, svuoterebbero pure quello.",
		"Trivelle goblin nella palude, fumo nel vento. Non esiste posto che la Venture Co. non sappia peggiorare.",
	},
	["bar.muse.14"] = {
		"Prima o poi ogni strada delle Barrens arriva a Crossroads. Fa piacere avere una bandiera dell'Orda proprio lì nel mezzo.",
		"Una palizzata, qualche torre, e la nostra bandiera dove le strade si incontrano. Non è molto, ma regge.",
	},
	["bar.muse.15"] = {
		"guarda passare una carovana di kodo lungo la strada, campanacci che sbattono, i conducenti mezzo addormentati in sella.",
		"si fa da parte per una coppia di kodo carichi, le grandi teste che dondolano, ogni passo una nuvoletta di polvere.",
	},
	["bar.muse.16"] = {
		"Le oasi dovrebbero essere la parte migliore di questa terra. Invece l'acqua ha un odore sbagliato e alle piante sono spuntati i denti.",
		"Verde intorno alle pozze, troppo verde, e tutto contorto. Sotto le Barrens qualcosa sta facendo brutti sogni.",
	},
	["bar.muse.17"] = {
		"Caldo, secco, e pieno di cose che mordono. Comincia a piacermi, qui.",
		"Tempo splendido per camminare. Sempre lo stesso tempo splendido, d'accordo, ma comunque.",
	},
	["bar.muse.18"] = {
		"Sotto le stelle l'erba si fa d'argento, e lontano, chissà dove, le iene cominciano a ridere.",
		"Di notte le Barrens si raffreddano in fretta. Le stelle scendono quasi fino all'erba, e là fuori qualcosa ridacchia come una iena. Perché è una iena.",
	},
	["bar.muse.19"] = {
		"I goblin di Ratchet ti vendono un secchio d'acqua e poi ti fanno pagare anche il secchio.",
		"Mai contrattare con un goblin con questo caldo. Loro non sudano, tu sì.",
	},
	["bar.muse.20"] = {
		"Sotto un cielo così grande, un viandante è una cosa piccolissima. Quasi riposante.",
		"Fra me e l'orizzonte soltanto erba, e poi altra erba. Uno qui potrebbe scordarsi il proprio nome.",
		"Quanto cielo. Ogni pensiero che mi porto dietro diventa un sassolino nello stivale: dà fastidio, ma non vale la pena fermarsi.",
	},
	["bar.muse.21"] = {
		"capovolge uno stivale e guarda uscirne un mucchietto di polvere gialla delle Barrens.",
		"si toglie la sabbia dagli angoli degli occhi e guarda una pianura che sembra non avere un'altra sponda.",
	},
	["bar.muse.22"] = {
		"Far Watch Post, Crossroads, Camp Taurajo: un filo di avamposti che tiene insieme le Barrens per l'Orda. Filo sottile, nodi robusti.",
		"L'Orda tiene questa terra con una manciata di campi e tanta testardaggine. Finora basta.",
	},
	["bar.muse.23"] = {
		"Bandiere dell'Orda a ogni incrocio. Con questi colori addosso, sto nell'erba e lontano dalle strade.",
		"Lontano da qualunque muro amico. Northwatch Hold è a est, chissà quanto, e Theramore ancora più in là.",
	},
	["bar.muse.24"] = {
		"Impronte di leone, fresche. Cammina piano e fatti grosso.",
		"Qualcosa di fulvo si è mosso nell'erba. Meglio non scoprire cosa.",
	},
	["bar.muse.25"] = {
		"aggira le ossa sbiancate di una grande bestia, mezze affondate nel terreno, con l'erba che cresce tra le costole.",
		"si ferma accanto a un teschio grande come un carro, bianco come il gesso, con una lucertola che sonnecchia sulla fronte.",
	},
	["bar.muse.26"] = {
		"Le arpie fanno il nido sulle colline secche a nord. Le senti molto prima di vederle, e faresti volentieri a meno di tutte e due le cose.",
		"Ali e strilli dalle colline. Qualcuno ha fatto arrabbiare le arpie, e vorrei fosse chiaro che non sono {g:stato|stata} io.",
	},
	["bar.muse.27"] = {
		"Tende tauren, pelli di kodo tese ad asciugare, un tamburo accanto al fuoco. Taurajo sembra un pezzo di Mulgore che si è spinto a sud.",
		"Camp Taurajo tiene aperta la strada del sud. I guerrieri di qui hanno l'aria di chi dorme con una mano sulla lancia.",
	},
	["bar.npc_meet.01"] = {
		"Qualcosa di fresco da bere, se c'è. Altrimenti, basta che sia bagnato.",
		"Un letto al riparo dal vento e una brocca d'acqua. Non chiedo miracoli.",
	},
	["bar.npc_meet.02"] = {
		"La viverna mi guarda come se a puzzare fossi io. Giusto, dopo le Barrens.",
		"Una viverna e il suo addestratore, tutti e due a scrutare l'orizzonte. Lassù, almeno, l'aria si muove.",
		"Ali di cuoio, coda da scorpione e un caratteraccio. Il modo migliore per attraversare le Barrens, mi dicono.",
	},
	["bar.npc_meet.03"] = {
		"Ogni mercante delle Barrens vende l'acqua a prezzo di vino. E sa che la pagherò.",
		"Merce impolverata, banco impolverato, e un prezzo salito appena mi ha visto arrivare grondante di sudore.",
	},
	["bar.npc_meet.04"] = {
		"incontra lo sguardo fermo di una guardia che ha visto arrivare dalla pianura moltissimi forestieri.",
		"fa un cenno alla guardia, i cui occhi passano una volta sulla polvere degli stivali e decidono che basta come spiegazione.",
	},
	["bar.quest_complete.01"] = {
		"Fatto, e pagato. Nelle Barrens le monete sono benvenute, ma l'acqua sarebbe stata meglio.",
		"Pagato in monete. Qui avrei accettato un otre pieno, e la faccenda sarebbe finita lì.",
	},
	["bar.quest_complete.02"] = {
		"ripone la ricompensa e beve un lungo sorso riconoscente da un otre appena riempito.",
		"accetta il pagamento con un cenno e un colpo di tosse, la polvere della strada ancora in gola.",
	},
	["bar.quest_complete.03"] = {
		"Ecco qua. Adesso dimmi dov'è il pozzo più vicino, e siamo pari.",
		"Tutto fatto. Se nelle Barrens esiste una bevanda fresca, me la sono guadagnata.",
	},
	["bar.quest_complete.04"] = {
		"Un'altra cosa sistemata per l'Orda, quaggiù. Le Barrens si tengono così, una commissione dopo l'altra.",
		"Fatto. Il Capoguerra non ne saprà mai niente, e Crossroads sarà comunque un po' più sicura.",
	},
	["bar.quest_complete.05"] = {
		"Fatto. Accetto la ricompensa in monete, gratitudine e una risposta sincera su dove sia finita tutta l'acqua.",
		"Finito. La prossima volta mandatemi a prendere qualcosa che non stia nell'angolo più caldo di Kalimdor.",
	},
	["bar.quest_complete.06"] = {
		"Pagato e finito. La strada è lunga, l'erba più lunga ancora, e in fondo a tutte e due c'è sempre un altro lavoro.",
		"Finito. In tutta quest'erba c'è già un'altra anima in pena che aspetta, con un problema fra le mani.",
	},
	["bar.quest_complete.07"] = {
		"conta le monete al riparo di una tenda, piano, come se il caldo potesse rubargliene una.",
		"intasca la ricompensa e strizza gli occhi verso la pianura, già a soppesare il prossimo tratto di strada.",
	},
	["bar.quest_complete.08"] = {
		"La gente qui vive sul filo. In una terra arida, un piccolo aiuto fa tanta strada.",
		"Non è granché, quello che ho fatto. Ma nelle Barrens, spesso, il poco fa la differenza.",
	},
	["bar.quest_complete.09"] = {
		"Ecco. Fatto. E no, dei centauri non voglio parlare.",
		"Il lavoro è finito. Pagami prima che il caldo sciolga quel che resta della mia pazienza.",
		"Tutto tuo. Bada, i raptor là fuori non me l'hanno resa facile.",
	},
	["bar.quest_progress.01"] = {
		"C'è tutto. Adesso la lunga camminata di ritorno nell'erba, col caldo a farmi compagnia fino in fondo.",
		"Tutto, e le iene non se ne sono accorte. Torno indietro finché la fortuna regge.",
		"Tutto quello per cui ero {g:venuto|venuta}. Il resto delle Barrens può tenersi la sua polvere.",
	},
	["bar.quest_progress.02"] = {
		"segna come fatta una parte dell'incarico e si volta verso il prossimo tratto d'erba, una mano sull'otre.",
		"si ferma a bere: un pezzo del lavoro è fatto, il resto è ancora là fuori, nella pianura sconfinata.",
	},
	["bar.subzone_enter.01"] = {
		"sale su un'altura bassa e guarda un altro tratto d'erba dorata, interrotto soltanto da un albero spinoso solitario.",
		"passa da una parte all'altra della pianura: l'erba cambia colore di una sfumatura, il caldo per niente.",
	},
	["bar.subzone_enter.02"] = {
		"Questo pezzo di Barrens è identico a quello di prima. Sospetto che lo facciano apposta.",
		"Un altro nome sulla mappa, la stessa erba sotto i piedi.",
	},
	["bar.subzone_enter.03"] = {
		"Puzza come l'ascella di un goblin. Dev'essere la Sludge Fen.",
		"Petrolio sull'acqua, fumo nell'aria. Qui la Venture Co. si è data parecchio da fare.",
	},
	["bar.subzone_enter.04"] = {
		"Acqua, finalmente, e del verde intorno. E allora perché ogni istinto mi dice di non bere?",
		"Un'oasi. Le palme sono bellissime; quello che ci vive sotto, un po' meno.",
	},
	["bar.victory.01"] = {
		"resta col fiato corto in mezzo all'erba mentre gli avvoltoi, lassù, cominciano a girare più in basso.",
		"si passa una manica impolverata sulla fronte mentre il vento caldo si porta via il rumore dello scontro sulla pianura.",
		"fa un passo indietro mentre la polvere si posa, e l'erba si richiude sul terreno calpestato come se lo scontro non ci fosse mai stato.",
	},
	["bar.victory.02"] = {
		"E una cosa in meno nelle Barrens che cerca di mangiarmi. Ne mancano solo mille.",
		"Un altro a terra. Le Barrens manderanno presto un sostituto, ne sono {g:certo|certa}.",
	},
	["bar.victory.03"] = {
		"Fatto. Adesso acqua, un sasso piatto dove sedermi, e cinque minuti senza muovermi.",
		"Finito. Ho la gola secca come la terra. Dov'è finito l'otre?",
	},
	["bar.victory.04"] = {
		"Quello la strada non l'assalta più. Ai Kolkar servirà un altro cavaliere.",
		"Veloce su quattro zampe, lento di comprendonio. Riposa, centauro.",
	},
	["bar.victory.05"] = {
		"I quilboar combattono come le spine che tanto amano: senza grazia, ma lasciano il segno.",
		"Un altro Razormane nella polvere. I rovi a sud devono brulicarne.",
	},
	["bar.victory.06"] = {
		"Di' al tuo caposquadra che nelle Barrens non si assume.",
		"Una chiave inglese in meno a girare nella palude. La terra non sentirà la tua mancanza.",
	},
	["bar.victory.07"] = {
		"L'erba coprirà tutto, e presto. Qui ogni cosa finisce coperta, prima o poi.",
		"In questa pianura niente resta a lungo dove cade. Ci pensa la terra.",
	},
	["bar.victory.08"] = {
		"Ah! Questa finisce nei racconti intorno al fuoco.",
		"Niente male, proprio niente male. Le Barrens cominciano a capire con chi hanno a che fare.",
	},
	["bar.victory.09"] = {
		"si inginocchia a controllare l'equipaggiamento del nemico caduto, poi si rialza e guarda lungo la strada, verso quello che verrà.",
		"scuote la polvere dall'arma e si guarda intorno nella pianura vuota, con il solo vento a fargli compagnia.",
	},
	["bar.victory.10"] = {
		"È andata meglio dell'ultimo scontro. Ma l'ultimo era contro il caldo.",
		"Vinto. Se solo il caldo si lasciasse battere così facilmente.",
	},
	["bar.weather_change.01"] = {
		"Piove sulle Barrens. Tutta la pianura sa di polvere bagnata, e l'erba pare raddrizzarsi.",
		"Pioggia, pioggia vera. Chissà dove un mandriano tauren ci sorride dentro, e anch'io.",
	},
	["bar.weather_change.02"] = {
		"guarda le ultime nuvole dissolversi, e la pianura torna al suo vecchio riverbero d'oro.",
		"strizza gli occhi mentre il cielo si rasserena e il caldo torna a posarsi sull'erba, pesante come una coperta.",
	},
]==])
