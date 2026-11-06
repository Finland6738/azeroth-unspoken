-- Italian texts of the regional pack eastern_stormwind (#102). The rules are in AzerothUnspoken_EasternKingdoms/Stormwind.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("elwynnforest", "itIT", "eastern_stormwind", [==[
	["sw.dawn"] = {
		"L'alba su Roccavento. La prima campana, il primo carro, il primo litigio della giornata.",
		"Il sole sorge dietro la fortezza, partono le campane, e per un momento ogni muro bianco si fa d'oro.",
		"Alba, e la città si scrolla di dosso il sonno come un grosso cane: piano, poi tutto in una volta.",
	},
	["sw.dusk.lamps"] = {
		"guarda i lampionai cominciare il giro mentre il crepuscolo si posa sui tetti di Roccavento.",
		"indugia su un ponte mentre il tramonto tinge di rame i canali e le prime lanterne si accendono.",
		"nota le botteghe che chiudono le imposte una dopo l'altra, mentre al crepuscolo la luce sulla città si fa ambra.",
	},
	["sw.dusk.taverns"] = {
		"Lanterne che si accendono, imposte che si chiudono. Da qualche parte una taverna si è appena fatta più rumorosa.",
		"Fine della giornata. Le guardie cambiano turno e le taverne si riempiono. So bene a quale fila unirmi.",
		"Sera a Roccavento. Ora di stufato, di uno sgabello e delle storie di qualcun altro.",
	},
	["sw.farewell.01"] = {
		"Abbi cura di te là fuori. La città sarà ancora qui.",
		"Io vado. Se vedi un grifone con il mio cappello in testa, è mio.",
		"Addio. Non farti convincere dai mercanti a comprare niente.",
	},
	["sw.farewell.02"] = {
		"Cammina con prudenza, e ripassa da queste porte sulle tue gambe. Le campane ti aspetteranno.",
		"Va' con passo fermo. Roccavento terrà una lanterna accesa.",
		"Finché le campane non ci faranno incontrare di nuovo.",
	},
	["sw.greet.01"] = {
		"Salute, e attenzione ai carri: Roccavento non aspetta nessuno.",
		"Salve. Giornata piena in città, vero?",
		"Che piacere vedere una faccia che non sia di una guardia o di un mercante.",
	},
	["sw.greet.02"] = {
		"Pace a te, sotto lo stendardo del leone.",
		"Salute. Che la tua strada fuori città sia sicura come quella che ti ci ha portato, sotto lo stesso stendardo.",
		"Salute a te, sotto queste mura.",
	},
	["sw.jest.01"] = {
		"Quanti scalpellini di Roccavento ci vogliono per aggiustare un muro? Chiedetelo ai nobili. Stanno ancora trattando sul prezzo.",
		"Il motto di Roccavento: se non è finito, aggiungi un'impalcatura.",
		"A Roccavento pagano l'affitto perfino i piccioni. Chiedete a un mercante qualsiasi.",
	},
	["sw.journey.arrival.01"] = {
		"scivola giù dal grifone nel quartiere dei mercanti, le gambe malferme, mentre il rumore della città torna tutto insieme.",
		"atterra nel viavai di Roccavento e si prende un momento per ricordarsi dov'è il suolo.",
		"scende dal grifone scrollandosi di dosso piume e polvere di strada, mentre il maestro dei grifoni prende le redini.",
	},
	["sw.journey.arrival.02"] = {
		"Roccavento. Terra ferma, mura ferme, e il mio stomaco ancora da qualche parte sopra Elwynn.",
		"Di nuovo sulla pietra. Qualcuno prenda questo grifone prima che decida che gli sto simpatico.",
		"Si scende. Roccavento, la tua pietra non mi è mai sembrata così stabile.",
	},
	["sw.journey.start"] = {
		"Il grifone balza nel cielo, e Roccavento sprofonda: tetti azzurri, mura bianche, i canali come fili d'argento.",
		"Su, oltre le mura, nel cielo aperto. Da quassù la città intera mi sta nel palmo delle mani.",
		"Il maestro dei grifoni grida qualcosa che non capisco, e poi c'è solo vento, e la città che si rimpicciolisce alle mie spalle.",
	},
	["sw.levelup"] = {
		"Un po' più forte, oggi. La città non se ne accorge. Io sì.",
		"Da qualche parte una campana batte l'ora. Farò finta che suoni per me.",
		"Pietra su pietra questa città si è rialzata; così faccio io, una dura lezione alla volta.",
	},
	["sw.lore.canal_song"] = {
		"Un barcaiolo canta sotto un ponte della città vecchia, lento come la pertica che spinge:\nSpingi il palo e piega il dorso,\nscivola sotto la pietra;\nogni ponte a me s'inchina,\nogni lume mi riporta.",
		"Un'altra strofa dei barcaioli, da più giù lungo il canale:\nL'acqua bassa e l'acqua lenta,\ncasse di mele e di birra;\nnobile, servo o nemico,\ntutti vanno da lumaca.",
	},
	["sw.lore.masons"] = {
		"Un detto degli scalpellini, borbottato sopra lo scalpello:\nAlza il blocco e posa dritto,\nbatti piano la calcina;\nogni muro sa le mani,\nmai chi il conto non pagò.",
		"Un altro detto degli scalpellini, all'ultima fila di un muro:\nVola via la paga in fretta,\nresta il sasso quando andiamo;\nguardalo bene e domanda\nsu che mani lo posiamo.",
	},
	["sw.meet.banker"] = {
		"Al banco contano le mie monete una per una, come se ognuna avesse fatto un torto personale.",
		"Registri, bilance, e dietro il banco un sorriso che si accende solo per le monete.",
		"Da qualche parte dietro quel banco c'è una volta piena di tesori e monete degli altri. E dei miei tre stivali di scorta.",
	},
	["sw.meet.flightmaster"] = {
		"Quel grifone è docile, o solo ben pasciuto?",
		"Mi servono un grifone e uno stomaco forte. Il primo lo metti tu.",
		"Dove possono portarmi oggi queste bestie? Da qualche parte con meno pietra, possibilmente.",
	},
	["sw.meet.guard"] = {
		"Una guardia di Roccavento: tabarro azzurro, leone d'oro, e occhi che hanno già sentito ogni scusa due volte.",
		"La guardia mi squadra con un'occhiata, decide che non sono un problema e torna a guardare la strada.",
		"Elmo lucido, occhi pazienti. Queste guardie sembrano capaci di restare lì finché non crollano le mura.",
	},
	["sw.meet.guard.horde"] = {
		"incrocia lo sguardo della guardia per un lungo battito di cuore, e nessuno dei due distoglie gli occhi per primo. La mano della guardia scivola verso l'elsa.",
		"s'irrigidisce mentre una guardia di Roccavento si volta, una mano già sull'elsa.",
		"vede il leone d'oro sul petto della guardia e la sua mano che si muove, e capiscono entrambi nello stesso istante.",
	},
	["sw.meet.innkeeper"] = {
		"Una stanza, una scodella di qualunque cosa sia calda, e un angolo dove nessuno mi disturbi. Per favore.",
		"Salve. Lo stufato è di oggi, o è quello di ieri che fa il coraggioso?",
		"Ho sentito parlar bene di questo posto. Soprattutto da gente che voleva un altro giro.",
	},
	["sw.meet.merchant"] = {
		"viene {g:accolto|accolta} da un largo sorriso da bottega, di quelli che sanno già quante monete ci sono nella borsa.",
		"dà un'occhiata a un banco stracolmo di merce mentre da dietro il banco cominciano a piovere prezzi che nessuno ha chiesto.",
		"si ferma a un banco di merci, dove tutto è un affare e niente costa meno di una moneta.",
	},
	["sw.meet.questgiver"] = {
		"Un'altra faccia pensierosa a Roccavento, e un altro lavoro che non si farà da solo.",
		"Ci siamo. In questa città c'è sempre qualcuno che ha bisogno di qualcosa portato, trovato o picchiato.",
		"Quella faccia di chi ha un problema e una borsa. Ascolto.",
	},
	["sw.meet.trainer"] = {
		"Chi insegna qui a Roccavento ha mani piene di cicatrici, e ognuna è una lezione che qualcuno ha pagato.",
		"Ecco qualcuno che ha dimenticato più di quanto io sappia, e ha le cicatrici sulle mani a dimostrarlo. Bene. Mi accontento degli avanzi.",
		"Occhi fermi, parole semplici, nessuna pazienza per le scuse. I migliori insegnanti sono sempre così.",
	},
	["sw.muse.bells"] = {
		"Le campane. Dopo un po' non le senti più, e poi un giorno senti solo quelle.",
		"Qualcuno sale su quella torre ogni ora per suonare le campane. Spero lo paghino meglio degli scalpellini.",
		"Le campane della cattedrale contano le ore per tutta la città. Nessuno gliel'ha chiesto; nessuno vorrebbe che smettessero.",
	},
	["sw.muse.boats"] = {
		"osserva una barca dal fondo piatto scivolare lungo il canale, il barcaiolo che canticchia senza mai alzare gli occhi dall'acqua.",
		"si appoggia al parapetto di un ponte e guarda l'acqua portare via un torsolo di mela, chissà dove.",
		"segue la lenta avanzata di una barca sotto un ponte, poi sotto un altro, poi sotto un altro ancora.",
	},
	["sw.muse.cathedral"] = {
		"Le porte della cattedrale sono aperte. Qualunque cosa uno creda, è un buon posto per sedersi in silenzio.",
		"Pellegrini, mendicanti, paladini, bambini. Le porte della cattedrale accolgono tutti, e i gradini fuori accolgono gli altri.",
		"Un sacerdote distribuisce pane sui gradini. La Luce, a quanto pare, arriva anche a pagnotte.",
	},
	["sw.muse.criers"] = {
		"Pane fresco! Caldo di forno, più economico di ieri, e ieri era un affare!",
		"Olio per lanterne, candele, pietra focaia ed esca! Non scendete nel buio senza!",
		"Mele di Elwynn, dolci come l'estate! Due per un rame, tre per un sorriso! E il pane per accompagnarle!",
	},
	["sw.muse.forge"] = {
		"si ferma davanti a una fucina aperta a guardare un nano piegare l'acciaio rovente, mentre le scintille del fuoco sputano sul pavimento di pietra.",
		"ascolta le incudini del quartiere andare a tempo l'una con l'altra, come una lenta discussione.",
		"sente il calore del fuoco delle fucine su metà del viso e il fresco della pietra sull'altra.",
	},
	["sw.muse.guards"] = {
		"Azzurro e oro, tirati a lucido. Queste guardie spendono più per il tabarro che io per la cena.",
		"Chiedi la strada a una guardia di Roccavento e te la indica. Chiedila due volte e ti guarda storto.",
		"Non ho mai visto una guardia, qui, con il tabarro storto. Dev'esserci una regola.",
	},
	["sw.muse.king"] = {
		"Chiedi del re e le guardie si guardano gli stivali. Chiedi del reggente e guardano verso la fortezza.",
		"C'è un ragazzo sul trono e un posto vuoto accanto. Nelle taverne la gente abbassa la voce quando parla di quel posto vuoto.",
		"Qualunque cosa sia stata del padre del ragazzo, la città va avanti: pane, campane, impalcature. Le città sono fatte così.",
	},
	["sw.muse.magequarter"] = {
		"Qualcosa in quella torre ha appena fatto bum. Ormai in strada nessuno alza nemmeno la testa.",
		"Qui il selciato è bruciacchiato in cerchietti ordinati. Esercizi, spero.",
		"Un mago passa di fretta, leggendo e camminando insieme. Nessuna delle due cose gli riesce bene.",
	},
	["sw.muse.masons"] = {
		"Dicono che gli scalpellini che rialzarono queste mura non furono mai pagati, e se ne andarono con gli attrezzi e il rancore. Qualcuno dice che ora, a ovest, portano maschere rosse.",
		"Una città costruita su un lavoro mai pagato. Ai muri non importa. A chi li ha alzati sì, e qualcuno di loro si è messo la maschera.",
		"I nobili discutono dei Defias davanti a un bicchiere di vino. I contadini dell'ovest ne discutono davanti ai granai bruciati.",
	},
	["sw.muse.morning"] = {
		"Presto. I fornai sono in piedi, le guardie cambiano turno, e la città non ha ancora cominciato a raccontarsi bugie.",
		"Mattina a Roccavento: ciottoli umidi, pane caldo, e una guardia che sbadiglia dietro l'alabarda.",
		"Prima luce sulle mura bianche, e già odore di pane. A quest'ora perfino le impalcature hanno un'aria nobile.",
	},
	["sw.muse.night"] = {
		"Di notte i canali tacciono abbastanza da sentire le barche respirare sull'acqua, contro le cime.",
		"A quest'ora della notte i passi rimbombano sotto i ponti, e ognuno sembra di qualcuno che ti segue.",
		"È tardi, ormai. Un barcaiolo dorme sotto un telo accanto all'acqua, una mano ancora sulla pertica.",
	},
	["sw.muse.nobles"] = {
		"Nelle taverne dicono che i nobili possano discutere una settimana su chi paga un ponte, e poi dargli il proprio nome.",
		"Il servo di un nobile si fa largo a spintoni tra la folla e non chiede scusa. Certe cose una città non le ricostruisce mai.",
		"In questa città i pettegolezzi corrono più dei canali: chi deve a chi, chi ha cenato con chi, chi è stato visto uscire da dove.",
	},
	["sw.muse.oldtown"] = {
		"Da queste parti nessuno ti chiede che affari hai. Si ricordano solo la tua faccia.",
		"Odore di sudore, birra e vecchi segreti. Una strada come piace a me.",
		"Occhio ai vicoli, qui. Chi non vuole farsi vedere è bravissimo a non farsi vedere.",
	},
	["sw.muse.park"] = {
		"Un druido siede tra le radici degli alberi, immobile quanto loro. Ci provo anch'io. Dura più o meno un respiro.",
		"In mezzo a tutta quella pietra, muschio su vecchie radici. La città finge di non averne bisogno.",
		"Foglie sul sentiero sotto gli alberi. Da qualche parte un giardiniere sospira; da qualche parte un druido sorride.",
	},
	["sw.muse.scaffold"] = {
		"Altre impalcature, altra polvere. Comincio a pensare che siano loro a reggere la città.",
		"Ogni volta che passo da quella torre, le impalcature si sono spostate di un piano. Su o giù, non saprei.",
		"In questa città c'è sempre qualcuno che costruisce qualcosa. E qualcun altro che si lamenta della polvere.",
	},
	["sw.muse.stockade"] = {
		"Ancora una rissa nei quartieri bassi e qualcuno finisce a dormire in cella.",
		"Le guardie parlano della prigione come le madri parlano dell'uomo nero.",
		"Righe dritte, o si finisce in prigione. In questa città l'hanno sentito tutti almeno una volta.",
	},
	["sw.muse.stone"] = {
		"Tutta questa pietra l'hanno cavata, portata e posata mani che la sera tornavano a casa stanche. Nessuno incide il proprio nome sui muri che costruisce.",
		"Certi giorni le mura sembrano lino appena steso; altri giorni, osso vecchio. La pietra prende quello che ci vedi, e si tiene i suoi pensieri.",
		"Una città di pietra è una promessa: restiamo qui. Roccavento l'ha fatta due volte, con lo stesso genere di mani.",
	},
	["sw.muse.trade"] = {
		"Mezzogiorno nel quartiere dei mercanti: una dozzina di voci che offrono monete insieme, e ognuna convinta di vincere.",
		"La fila della casa d'aste si muove più lenta di un nano dopo cena.",
		"Qualcuno ha appena pagato una fortuna in monete per un cappello. Il cappello sembra molto soddisfatto.",
	},
	["sw.npcd.flight.route.01"] = {
		"Verso ovest, verso le colline rosse, verso il bosco scuro, fino a Forgiardente: i grifoni conoscono la strada. Il tuo compito è tenerti forte.",
		"Verso il lago, oltre le colline, è un viaggio tranquillo. Verso il bosco scuro meno: ai grifoni quegli alberi non piacciono.",
		"Fino a Forgiardente è un lungo viaggio verso nord, sopra le montagne. Copriti bene, e non guardare giù se preferisci di no.",
	},
	["sw.npcd.flight.route.02"] = {
		"Mai montato un grifone? Tieniti alla sella, non alle piume. Se tiri le piume, mordono.",
		"Da lassù tutta la città sembra un giocattolo costruito con molta cura. Vedrai.",
		"Fino all'ovest è un salto breve. Non avrai nemmeno il tempo di pentirti della colazione.",
	},
	["sw.npcd.guard.danger.01"] = {
		"Dentro le mura, borseggiatori. Fuori, i Defias. A ovest della foresta va solo peggio, a sentire i contadini, e quelli la lama la tirano fuori in fretta.",
		"Tieni la borsa stretta nella città vecchia e la lama a portata di mano sulle strade dell'ovest. La Fratellanza si è fatta audace.",
		"Dicono che i Defias abbiano amici dentro le mura. Io dico: guarda chi ti sta guardando, e tieni una lama a portata.",
	},
	["sw.npcd.guard.danger.02"] = {
		"Le celle sono di nuovo piene. Questo ti dice com'è la strada, di questi tempi.",
		"Non andare per i canali senza compagnia, col buio. Non tutti quelli che ci cadono dentro ci cadono per caso.",
		"Guai in città? Grida. C'è sempre uno di noi a portata d'orecchio. Quasi sempre.",
	},
	["sw.npcd.guard.dir.01"] = {
		"La banca, la casa d'aste, la locanda e il maestro dei grifoni? Tutto nel quartiere dei mercanti. Segui la folla e il rumore.",
		"Tutto quello che ha a che fare con le monete sta nel quartiere dei mercanti. Anche tutto quello che serve a spenderle, le monete.",
		"Il quartiere dei mercanti, per la banca e la locanda. Lo riconosci quando qualcuno prova a venderti qualcosa per una moneta di troppo.",
	},
	["sw.npcd.guard.dir.02"] = {
		"Sacerdoti e paladini si addestrano attorno alla piazza della cattedrale. I maghi stanno nel loro quartiere, quello con l'alta torre. Difficile mancarli.",
		"Cerchi la Luce? La piazza della cattedrale. Cerchi guai con un libro di incantesimi? Il quartiere dei maghi.",
		"Faccende sante alla cattedrale, faccende arcane nel quartiere dei maghi. Non confonderle: lo detestano.",
	},
	["sw.npcd.guard.dir.03"] = {
		"Il tram per Forgiardente parte dal quartiere dei nani. Segui il rumore dei martelli.",
		"Guerrieri e ladri si radunano nella città vecchia. I primi si allenano all'aperto; gli altri, be', li trovi se vogliono farsi trovare.",
		"Le fucine sono nel quartiere dei nani, le taverne con la segatura per terra nella città vecchia. Scegli il tuo veleno.",
	},
	["sw.npcd.guard.dir.04"] = {
		"La fortezza? Segui gli stendardi: le guardie si fanno sempre più alte. Quando smettono di farti passare, ci sei.",
		"Se ti serve il verde invece della pietra, il parco fa per te. Gli elfi della notte ci curano una radura.",
		"Hai perso la strada fra i canali? Capita a tutti, una volta. Scegli un ponte con uno stendardo, attraversalo, e chiedi alla guardia successiva.",
	},
	["sw.npcd.guard.open.01"] = {
		"Questa è Roccavento. Resta sulle strade, tieni la lama nel fodero, e andremo d'accordo.",
		"Circolare, {og:amico|amica}. O fermati, se ti serve qualcosa. Basta che non blocchi il ponte.",
		"Guardia cittadina di Roccavento. Hai perso la strada, cerchi qualcosa, o ammiri solo la muratura?",
	},
	["sw.npcd.guard.open.02"] = {
		"In nome del re, salute a voi. Dite i vostri affari, se ne avete; se no, godetevi la città.",
		"Buona giornata. Il leone veglia, e noi con lui.",
		"Pace fra queste mura, viandante. Ci pensiamo noi a mantenerla.",
	},
	["sw.npcd.inn.news.01"] = {
		"La settimana scorsa c'era uno scalpellino qui, a bere da solo. Diceva che i nobili devono ancora una fortuna alla sua corporazione. E lo diceva forte.",
		"Di cosa si parla ai tavoli? Le solite cose: i Defias, i nobili, e chi ha colpa di tutti e due.",
		"Dicono che i nobili litighino di nuovo sulle tasse. Dicono anche che i Defias ascoltino.",
	},
	["sw.npcd.inn.news.02"] = {
		"Al banco si sussurra del re, e poi ci si guarda alle spalle. Io verso e basta.",
		"Un soldato giurava che il reggente non dorme come si deve da mesi. Poi ha ordinato un altro giro, quindi prendila come vuoi.",
		"Oggi è ripassata Lady Prestor. Tutti hanno un'opinione su di lei. Nessuno la ripete due volte.",
	},
	["sw.npcd.inn.news.03"] = {
		"Gli affari vanno bene. I contadini di Elwynn vengono per il mercato e se ne vanno con la borsa più leggera e la testa più pesante.",
		"Stamattina un grifone si è liberato sopra il quartiere dei mercanti. Ha preso un pesce intero da un carro e il cappello a un nobile. Il cappello non si è ancora trovato.",
		"Un nano è salito dal tram coperto di fuliggine e cantando. Ha detto che era il viaggio più bello della sua vita. Poi ha dormito sul mio pavimento.",
	},
	["sw.npcd.merch.news.01"] = {
		"Il grano costa caro, quest'anno. Le fattorie dell'ovest non mandano più quello che mandavano, e sai bene perché.",
		"I carri da ovest arrivano tardi o non arrivano. Banditi. I prezzi salgono, e chissà come la colpa è mia.",
		"Il legname costa poco, la pietra tanto. La città non smette mai di costruire, e quindi i prezzi non smettono mai di salire.",
	},
	["sw.npcd.merch.news.02"] = {
		"La settimana scorsa uno alla casa d'aste ha pagato il triplo per una spada. Arrugginita. Valore affettivo, immagino.",
		"La banca ha avuto da fare. Quando la banca ha da fare, ho da fare anch'io. Quando la banca è tranquilla, comincio a contare le candele.",
		"Gira voce che i nani vogliano far pagare il tram. Gira sempre voce che i nani vogliano far pagare qualcosa.",
	},
	["sw.npcd.merch.wares.01"] = {
		"Tutto quello che vedi è entrato dalla porta su un carro, e ogni carro ha pagato il pedaggio. Ecco perché i prezzi.",
		"Buona merce di Roccavento: cucita, forgiata, e controllata due volte. Quasi sempre.",
		"Se non è sullo scaffale, te lo procuro per domani. Se è sullo scaffale, te lo metto in mano adesso.",
	},
	["sw.npcd.merch.wares.02"] = {
		"Corda, razioni, una buona lanterna per la strada. Non hai idea di quanti eroi lascino la città senza una lanterna.",
		"Vai oltre Elwynn? Prendi più bende di quante pensi che serviranno per strada. Poi prendine qualcun'altra.",
		"Otri, acciarino, carne salata che sopravvivrà a tutti e due. La strada non ti dà niente; il resto te lo do io.",
	},
	["sw.npcd.trainer.adv.01"] = {
		"Questa città è stata ricostruita una pietra alla volta. Impara allo stesso modo.",
		"Là fuori nessuno aspetta che ti ricordi la lezione. Ricordatela qui, fra muri di pietra, dove costa poco.",
		"Allenati sul serio a Roccavento e le strade oltre ti sembreranno più morbide. Non morbide. Più morbide.",
	},
	["sw.npcd.trainer.adv.02"] = {
		"Da quella porta escono tanti coraggiosi sciocchi. Torna prudente, e lo chiamerò un successo.",
		"Hai la posizione sciatta e gli occhi che vagano. Correggi una cosa oggi. L'altra domani.",
		"Esercitati dove il pavimento è piano, così non dovrai pensarci quando il terreno non lo sarà.",
	},
	["sw.pray.01"] = {
		"Luce, veglia su questa città: le sue campane, il suo pane, le sue guardie stanche, e i bambini dell'orfanotrofio.",
		"Santa Luce, tieni in piedi le mura e caldi i focolari, e fa' che le campane suonino. Oggi non chiedo altro.",
		"Luce, rendi il giusto alle mani che hanno ricostruito questa città, e dai a noi altri il buon senso di ricordarle accanto a ogni focolare.",
	},
	["sw.quest.01"] = {
		"Fatto. Un'altra commissione per la città. Da qualche parte qualcuno sta mettendo un timbro su qualcosa.",
		"Sistemato. Roccavento va avanti a piccoli favori, e io ne ho appena fatto uno.",
		"Finito. E adesso, dov'è la panchina più vicina?",
	},
	["sw.quest.02"] = {
		"intasca le monete della ricompensa con un cenno, mentre il chiasso di Roccavento continua come se niente fosse.",
		"consegna l'ultima parte dell'incarico e si rituffa nel fiume della strada.",
		"conta le monete una volta, poi un'altra, sotto l'occhio di una guardia di passaggio.",
	},
	["sw.rest.inn"] = {
		"Stivali tolti, schiena al muro, un focolare che non devo badare io. Qui sanno fare il loro mestiere.",
		"Stanza calda, voci basse, un boccale che si riempie quando non guardo. Bene.",
		"Una locanda di città, una sedia morbida accanto al focolare, e nessuno che voglia da me altro che le monete.",
	},
	["sw.rest.safe"] = {
		"Mura sicure, pancia piena. Potrei dormire una settimana.",
		"Nessuno m'insegue, niente va a fuoco. Roccavento, sei una meraviglia.",
		"Una dormita come si deve in un letto vero. Poi la strada può riprendermi.",
	},
	["sw.rest.serene"] = {
		"Campane da qualche parte, acqua sotto un ponte, qualcuno che ride due strade più in là. Lascio entrare tutto.",
		"Per una volta la mano non è vicina a nessuna arma. Sta sul ginocchio, e non fa altro.",
		"La città ronza come un alveare a riposo. Respiro più piano senza volerlo.",
	},
	["sw.rest.street"] = {
		"si siede sul bordo di una fontana e lascia scorrere la città per un po', una mano a sfiorare l'acqua.",
		"trova una panca all'ombra di un muro e allunga le gambe stanche.",
		"si sistema sui gradini sopra un canale, lasciando che il viavai di Roccavento scorra oltre come l'acqua di sotto.",
	},
	["sw.ret.01"] = {
		"Di nuovo {zone}. Le stesse campane, lo stesso odore di pane e di pietra umida.",
		"Di nuovo fra le mura bianche. Il fornaio all'angolo grida ancora gli stessi prezzi per lo stesso pane.",
		"Qui non si è mosso niente da quando sono {g:partito|partita}, tranne le impalcature. Le impalcature si muovono sempre.",
	},
	["sw.ret.02"] = {
		"Di nuovo a {zone}. Farò finta che mi siano mancate le scale.",
		"Ancora Roccavento. Stesse guardie, stesse facce scure, stessi ottimi pasticci.",
		"Eccomi di nuovo. I canali non si sono fatti più puliti.",
	},
	["sw.ret.03"] = {
		"si ferma alla porta di {zone}, come per controllare che le mura siano ancora dove le aveva lasciate.",
		"rallenta sul ponte che entra in {zone} dopo una lunga assenza, guardando le impalcature nuove e le pietre vecchie.",
		"rientra a {zone} dopo molti giorni lontano, alzando gli occhi su torri di pietra che non sono cambiate.",
	},
	["sw.ret.04"] = {
		"La strada ti consuma. {zone} ti rimette insieme, una scodella di stufato alla volta.",
		"Da qualunque posto io torni, queste mura non chiedono nulla. Mi lasciano entrare e basta.",
		"Di nuovo sotto gli stendardi del leone. Qui posso dormire con tutti e due gli occhi chiusi.",
	},
	["sw.ret.05"] = {
		"Stessa città, stesse facce. La guardia alla porta stavolta mi ha quasi sorriso.",
		"Ho percorso queste strade abbastanza volte che i mendicanti conoscono il mio nome. Be', la mia borsa.",
		"Cinque volte da questa porta, almeno. I piccioni ormai non si scansano più.",
	},
	["sw.ret.06"] = {
		"Le campane della cattedrale battono l'ora, e per un attimo sono di nuovo dov'ero la prima volta che le ho sentite.",
		"La stessa lanterna si sporge ancora sullo stesso canale. Strano, quello che la mente si tiene.",
		"Mi ricordo quest'angolo. Mi ricordo di quando ero più giovane, qui.",
	},
	["sw.sub.canal.01"] = {
		"segue l'acqua attraverso {subzone}, dove schiaffeggia la pietra e le barche ormeggiate si urtano piano.",
		"attraversa un ponte sopra {subzone}, guardando una barca carica di casse scivolarci sotto sull'acqua verde.",
		"cammina lungo {subzone}, l'acqua bassa e lenta, i ponti che si inarcano in alto uno dopo l'altro.",
	},
	["sw.sub.canal.02"] = {
		"I canali tengono insieme i quartieri come punti di cucitura. Tirane via uno e la città potrebbe scucirsi tutta.",
		"Mi chiedo chi peschi in quest'acqua, e cosa prenda. Meglio non saperlo.",
		"Quest'acqua si ricorda ogni stivale, ogni barile, ogni moneta mai caduta da un ponte.",
	},
	["sw.sub.canal.03"] = {
		"Non cadere. Non cadere. Non... ecco, tutto a posto.",
		"Se avessi una barca, in questa città non camminerei mai più.",
		"Puzza di canale. Be', lo è.",
	},
	["sw.sub.cath.01"] = {
		"entra in {subzone} mentre le campane della cattedrale cominciano, e il suono scende sulla pietra come acqua.",
		"attraversa {subzone}, dove la Cattedrale della Luce alza le sue guglie e perfino i piccioni sembrano abbassare la voce.",
		"rallenta in {subzone}, sotto le alte vetrate della cattedrale, dove la luce cade a strisce colorate sul selciato.",
	},
	["sw.sub.cath.02"] = {
		"Sacerdoti in bianco, paladini in armatura, e una fila di orfani in marcia verso la cena. La Luce ha orari pieni.",
		"Voci di bambini dall'orfanotrofio, un inno dalla cattedrale. Chissà come, non stonano.",
		"Un paladino s'inginocchia sui gradini, armatura e tutto. Mi chiedo quanto ci metta a rialzarsi.",
	},
	["sw.sub.cath.03"] = {
		"Una candela per la strada che mi aspetta. Male non fa.",
		"Se la cattedrale è aperta, accendo una candela. Per chi ne ha più bisogno di me.",
		"Che silenzio. Perfino i miei stivali sembrano chiedere scusa.",
	},
	["sw.sub.dwarf.01"] = {
		"entra in {subzone}, dove l'aria si scalda del fuoco delle fucine e le incudini suonano come un secondo giro di campane.",
		"arriva in {subzone} e l'odore cambia subito: fumo di carbone, ferro rovente, acqua di tempra.",
		"passa in {subzone}, davanti a fucine il cui fuoco dipinge d'arancio i muri attraverso il fumo.",
	},
	["sw.sub.dwarf.02"] = {
		"Il tram sotterraneo parte da qualche parte qui sotto. Un carro nel buio, fino a Forgiardente. L'hanno pensato gli gnomi, ovvio.",
		"Da qualche parte sotto i miei stivali un tram corre nella roccia fino a Forgiardente. Cerco di non pensare all'acqua che ci sta sopra.",
		"Nani da un capo, gnomi dall'altro, e il tram che li cuce insieme come un filo nella cruna di un ago.",
	},
	["sw.sub.dwarf.03"] = {
		"Se qualcuno può aggiustarmi questa fibbia, è uno di quaggiù con la fuliggine fino ai gomiti e le mani salde.",
		"Fa caldo, qui. Caldo e onesto. Mi piace un quartiere che suda.",
		"Senti? Qualcuno sta battendo una lama con mano sicura. Bel ritmo.",
	},
	["sw.sub.keep.01"] = {
		"sale verso {subzone}, dove le guardie stanno più dritte e gli stendardi pendono più pesanti contro la pietra.",
		"entra in {subzone} sotto alte arcate e stendardi, con gli stivali che risuonano sulla pietra lucida.",
		"si avvicina a {subzone}, e il rumore delle strade si spegne nel silenzio della corte.",
	},
	["sw.sub.keep.02"] = {
		"Un ragazzo sotto la corona, Bolvar Fordragon come reggente, e una corte che bisbiglia in ogni corridoio.",
		"Dicono che Lady Prestor abbia l'orecchio del reggente. Non lo dicono ad alta voce, e mai vicino alla corona.",
		"Lassù da qualche parte un re ragazzino sta imparando a esserlo. Non gli invidio le lezioni.",
	},
	["sw.sub.keep.03"] = {
		"Schiena dritta. Qui perfino i pavimenti ti guardano.",
		"Piano, adesso. È qui che il regno pensa.",
		"Baderò alle buone maniere. Le guardie, qui, sembrano avere l'ordine di badarci al posto mio.",
	},
	["sw.sub.mage.01"] = {
		"entra in {subzone}, dove l'aria sa appena di fulmine e il selciato ronza sotto i piedi.",
		"s'avvia in {subzone}, oltre finestre accese di viola e una torre che da vicino sembra più alta.",
		"attraversa {subzone}, dove un apprendista di passaggio borbotta formule e un gatto osserva con fin troppo interesse.",
	},
	["sw.sub.mage.02"] = {
		"In questo quartiere c'è una taverna con una cantina di cui non si parla. Posso immaginare perché.",
		"Maghi di sopra, e di sotto, se le voci dicono il vero, qualcosa di meno rispettabile in una cantina.",
		"Ogni quartiere ha il suo segreto. Questo, dicono, lo tiene in uno scantinato e lo nutre di candele.",
	},
	["sw.sub.mage.03"] = {
		"Non toccare niente che brilla. Niente che ronza. Questo esclude mezza strada.",
		"Se qui un libro comincia a parlarmi, io non rispondo.",
		"Bel quartiere. Sa di capelli bruciati e di ambizione.",
	},
	["sw.sub.old.01"] = {
		"svolta in {subzone}, dove le strade si stringono e le porte delle taverne aprono presto.",
		"entra in {subzone}: pietra più vecchia, porte più buie, e due soldati che litigano davanti alla caserma.",
		"s'infila in {subzone}, dove qualcuno incappucciato scopre all'improvviso un grande interesse per un muro.",
	},
	["sw.sub.old.02"] = {
		"Dicono che lo SI:7 abbia i suoi uffici da queste parti. Dicono anche che la porta non la troverai mai, e che i loro occhi ti seguono mentre la cerchi.",
		"Metà degli occhi di questa strada sorveglia l'altra metà. E l'altra metà lo sa.",
		"Qui tengo la borsa davanti a me. Non che servirebbe, contro chi ha l'occhio giusto.",
	},
	["sw.sub.old.03"] = {
		"Zona dura. Bene. Le taverne dure versano birra onesta.",
		"Qui c'è chi cerca rissa o solo una birra? Me la cavo con tutte e due.",
		"Attenti alle pozzanghere. In questo quartiere non sono tutte d'acqua.",
	},
	["sw.sub.park.01"] = {
		"lascia il selciato alle spalle in {subzone}, dove erba e vecchi alberi fanno una tasca di foresta dentro le mura.",
		"entra in {subzone}, e il rumore della città si spegne dietro una cortina di foglie.",
		"arriva in {subzone}, dove un druido elfo della notte cura una radura tranquilla di alberi ed erba come se le mura non ci fossero.",
	},
	["sw.sub.park.02"] = {
		"Canto di uccelli. Canto vero, non un mercante che fischietta. Mi siedo un momento.",
		"Buffo come bastino pochi alberi e qualche uccello a far respirare una città intera.",
		"I druidi tengono selvatici questi alberi apposta. Credo che alla città servano più di quanto sappia.",
	},
	["sw.sub.park.03"] = {
		"Erba sotto gli stivali. Fra queste mura me n'ero quasi {g:dimenticato|dimenticata}.",
		"Che pace. Qualcuno lo dica al resto della città.",
		"Zitti. Gli alberi stanno cercando di pensare.",
	},
	["sw.sub.trade.01"] = {
		"entra in {subzone}, dove ogni porta sembra gridare un prezzo.",
		"viene subito {g:urtato|urtata} dalla folla di {subzone}: facchini, venditori, un mago che contratta sul prezzo dell'inchiostro.",
		"s'inoltra in {subzone}, tutto monete e schiamazzi, dove perfino i piccioni sembrano in vendita.",
	},
	["sw.sub.trade.02"] = {
		"La banca, la casa d'aste, la locanda. Tutto quello che una borsa può desiderare, e niente che possa trattenere.",
		"Da qualche parte in questo quartiere le mie monete vanno a finire male. Di solito alla casa d'aste.",
		"Profumo di dolci da una porta, inchiostro e registri da quella accanto. La banca non profuma mai di dolci, e le monete non le restituisce così in fretta.",
	},
	["sw.sub.trade.03"] = {
		"Prima la banca, poi la locanda. In quest'ordine, se no alla banca non arriva più niente.",
		"Qualcuno vende qualcosa che mi serve? No? Allora compro qualcosa che non mi serve.",
		"La borsa in una mano, la lista nell'altra. Vediamo cosa finisce prima.",
	},
	["sw.sub.valley.01"] = {
		"attraversa {subzone}, la lunga strada d'ingresso dalla porta, con l'acqua del fossato che luccica sotto il ponte.",
		"percorre {subzone} verso la città, oltre guardie che squadrano ogni nuovo arrivato allo stesso modo.",
		"passa per {subzone}, dove la strada dalla porta corre larga e diritta sopra l'acqua, costruita per impressionare.",
	},
	["sw.sub.valley.02"] = {
		"Una valle intitolata agli eroi. Mi chiedo a quali, e se riconoscerebbero il posto.",
		"Chiunque venga in città passa di qui. Re, mendicanti, e adesso io.",
		"Hanno costruito questo ingresso per rimpicciolire chi arriva. Un poco ci riescono.",
	},
	["sw.sub.valley.03"] = {
		"Oltre la porta, sopra il ponte, dentro la città. La strada più vecchia che ci sia.",
		"Fate largo, fate largo. O anche no, su questa strada non ho fretta.",
		"Ogni eroe è entrato per questa strada, una volta. Quasi tutti a piedi, scommetto.",
	},
	["sw.thanks.01"] = {
		"Grazie. In una città così affollata, una mano gentile vale più dell'oro.",
		"Ti sono {g:obbligato|obbligata}. Mi ricorderò di questa mano tesa la prossima volta che mi perdo fra i canali.",
		"Grazie, davvero. A Roccavento servirebbe più gente come te.",
	},
	["sw.toast.01"] = {
		"A Roccavento: mura bianche, pane caldo, e birra quasi da nani!",
		"Agli scalpellini che hanno costruito questo posto. Che qualcuno finalmente paghi il conto, birra compresa.",
		"Bevete! Alla città, ai canali, e a chi offre la prossima birra.",
	},
	["sw.toast.02"] = {
		"Al leone di Roccavento, e a tutti quelli che stanno sotto di lui.",
		"Alla città che è bruciata e si è rialzata in pietra. Che non debba mai più farlo.",
		"Alzate i boccali: alla pietra che regge, e agli amici che reggono con lei.",
	},
	["sw.travel.hearth"] = {
		"La pietra del ritorno si scalda nella mano, e le campane di Roccavento sfumano in un ronzio.",
		"Un respiro, un sobbalzo, e le mura bianche si chiudono come un libro. Le campane vanno avanti senza di me.",
		"Chiudo la mano sulla pietra del ritorno. La città saprà aspettare.",
	},
	["sw.wx.fog"] = {
		"La nebbia sale dall'acqua, e le torri della fortezza sbiadiscono in sagome grigie.",
		"Con questa nebbia i canali spariscono, e solo lo sciabordio dell'acqua contro le barche dice che sono ancora lì.",
		"La nebbia inghiotte il fondo di ogni strada. Roccavento sembra grande il doppio e accogliente la metà.",
	},
	["sw.wx.rain"] = {
		"si ferma sotto un arco di pietra mentre arriva la pioggia, e le grondaie della città cominciano a cantare.",
		"guarda tutti i mercanti della piazza tirare un telo sulla merce alle prime gocce di pioggia.",
		"attraversa il ponte di corsa mentre la pioggia fa grigia la pietra bianca.",
	},
	["sw.zone.ally.01"] = {
		"{zone}. Guardie che salutano con un cenno invece di sguainare l'acciaio. Potrei abituarmici.",
		"Pietra sotto i piedi e una guardia a ogni angolo. {zone} ha le sue comodità.",
		"Ah, {zone}. Un posto dove il pane è caldo e le lame restano nel fodero.",
	},
	["sw.zone.ally.02"] = {
		"Ogni pietra di queste mura l'hanno posata a mano, dopo l'incendio. Appoggia il palmo e quasi senti la fatica.",
		"Un tempo qui c'era solo cenere, dicono. Adesso ci sono i vasi di fiori sotto le finestre.",
		"Una città rasa al suolo che ha deciso, pietra su pietra, di rimettersi in piedi.",
	},
	["sw.zone.ally.03"] = {
		"si scansa per lasciar passare un carro di botti, mentre {zone} brontola tutt'intorno: martelli, zoccoli, qualcuno che mercanteggia sulle cipolle.",
		"viene {g:inghiottito|inghiottita} dal frastuono di {zone}: ruote sulla pietra, il martello di un fabbro, un bambino che rincorre un cane.",
		"si fa strada tra carri e facchini, con il chiasso di {zone} che stringe da ogni lato.",
	},
	["sw.zone.ally.04"] = {
		"Il leone sventola ancora su {zone}. Bene. Che continui.",
		"Stendardi azzurri e oro su ogni torre. Qualunque cosa venga, questa città non si è inginocchiata.",
		"{zone} resta in piedi. Finché resta lei, restiamo anche noi.",
	},
	["sw.zone.first.01"] = {
		"Dunque questa è {zone}. Mura bianche, tetti azzurri, e più pietra di quanta credessi ne esistesse.",
		"{zone}. Le mura salgono bianche dal limite del bosco, e la sola porta potrebbe inghiottire un villaggio.",
		"Pietra levata sulle ceneri di altra pietra: {zone} sorge dove gli orchi non lasciarono nulla, e sorge alta.",
	},
	["sw.zone.first.02"] = {
		"rallenta sotto la grande porta di {zone}, la testa all'indietro per abbracciare gli stendardi.",
		"si ferma sul ponte sopra il fossato e alza lo sguardo, come fanno tutti la prima volta.",
		"lascia che la folla scorra oltre, alla porta di {zone}, gli occhi sugli stendardi azzurri che schioccano in alto.",
	},
	["sw.zone.horde.01"] = {
		"Tabarri azzurri ovunque. Ognuno di loro riconoscerebbe in me un nemico a colpo d'occhio.",
		"Pietra nemica, strade nemiche. Conto le porte e tengo le spalle al muro.",
		"{zone}. Il cuore dell'Alleanza, e ci sono {g:entrato|entrata} dalla porta principale. Piano, adesso.",
	},
	["sw.zone.horde.02"] = {
		"Belle mura. Più alte di quanto pensassi. Non abbastanza.",
		"Quindi è qui che tengono il loro re. Più piccolo che nei racconti.",
		"Bella città. Guardie rumorose. Meglio non fermarsi a cena.",
	},
	["sw.zone.night"] = {
		"Notte a {zone}: lanterne sui ponti, e la loro luce che trema nell'acqua nera dei canali.",
		"I lampionai sono già passati. Stanotte ogni canale porta una doppia fila di piccole fiamme.",
		"Al buio la pietra bianca si fa azzurra, e i canali trattengono la luce delle lanterne come monete in fondo a un pozzo.",
	},
	["sw.zone.race.dwarf"] = {
		"Buon lavoro di pietra, per gente che costruisce sotto il cielo aperto.",
		"Niente male, questa muratura. Un po' pallida. Ci starebbe bene una montagna sopra.",
		"Gli umani tagliano bene la pietra. Peccato che a mezza città lascino fuori il tetto.",
	},
	["sw.zone.race.gnome"] = {
		"Canali, chiuse, un tram sotto terra. Qualcuno in questa città rispetta un buon impianto idraulico.",
		"Scale fatte per gambe lunghe, tutte quante. Però lo scolo delle acque è una piccola meraviglia.",
		"Cielo aperto, strade larghe, niente che ticchetta sotto i piedi. Strano posto per chi armeggia con gli ingranaggi, eppure va bene così.",
	},
	["sw.zone.race.human"] = {
		"Costruita da mani umane, rattoppata da mani umane. Qualunque cosa io sia, questa pietra parla la mia lingua.",
		"Le campane della cattedrale arrivano fino alla porta. Le riconoscerei ovunque.",
		"La mia gente qui ha bruciato, e poi ha ricominciato a costruire con la pietra che aveva. Vale pur qualcosa.",
	},
	["sw.zone.race.nightelf"] = {
		"Tanta pietra tagliata, e gli alberi tenuti in aiuole ordinate come ospiti beneducati.",
		"Mura da ogni lato, e il cielo tagliato a strisce sottili. Agli umani piace un tetto sopra i pensieri.",
		"Hanno scavato la pietra di un'intera collina per alzare tutto questo. La mia gente avrebbe chiesto prima agli alberi.",
	},
	["sw.zone.rain"] = {
		"tira su il bavero mentre la pioggia scivola dai tetti azzurri di {zone} giù per ogni grondaia.",
		"attraversa di corsa una piazza resa viscida dalla pioggia, la pietra bianca lucida come osso bagnato.",
		"si ripara sotto una tettoia mentre la pioggia tamburella sull'acqua dei canali.",
	},
	["sw.journey.arrival.w01.01"] = {
		"Un volo lungo, e alla fine Roccavento. Le pietre del Distretto del Commercio sono come la stretta di mano di un vecchio amico.",
		"Dopo tutto quel cielo, il baccano della città è quasi gradito. Quasi.",
		"Una lunga tirata in sella. Dopo, niente sembra solido come queste mura bianche.",
	},
	["sw.journey.arrival.w01.02"] = {
		"smonta dal grifone mentre un nano della voliera prende le redini e mormora qualcosa di gentile all'animale.",
		"atterra tra i nidi dei grifoni, con le piume che volteggiano, e si scansa mentre un altro cavaliere prende il volo sopra la sua testa.",
		"sgranchisce le gambe rigide alla voliera dei grifoni, mentre dal Distretto del Commercio arriva odore di pane e di cavalli.",
	},
	["sw.journey.start.w01.01"] = {
		"si alza sopra il Distretto del Commercio su ali di grifone, mentre le guglie della Cattedrale colgono la luce e la città si inclina e scivola via.",
		"compie un giro sopra Roccavento mentre il grifone trova il vento; sotto scorrono i canali e le torri viola del Quartiere dei Maghi.",
		"si alza alto sopra le mura bianche, mentre le grandi statue della porta si riducono a soldatini.",
	},
	["sw.journey.start.w01.02"] = {
		"Roccavento resta indietro, campane comprese. Mi chiedo sempre cosa sarà cambiato quando rivedrò queste mura.",
		"Sotto di me il chiasso della città si riduce a un ronzio, poi a niente. Quassù il cielo non conosce giorni di mercato.",
		"Arrivederci, mura bianche. Ho molta strada davanti, e per un po' porterò ancora con me il rumore delle vostre vie.",
	},
	["sw.journey.start.w01.03"] = {
		"Si vola! Occhio ai tetti, bestione.",
		"Si riparte. Cerca di non lasciarmi cadere nel canale, amico mio.",
	},
	["sw.quest.w01.01"] = {
		"Fatto. Una città così grande vive di mille piccole lealtà, e oggi una di quelle era la mia.",
		"Un altro filo nella trama che tiene insieme Roccavento. Il reggente non ne saprà mai nulla, e va bene così.",
		"Finito. Il re è ancora disperso, ma la città va avanti, e la sua gente con lei.",
	},
	["sw.quest.w01.02"] = {
		"Fatto. Chiederei una statua alla porta, ma pare che la lista d'attesa sia lunga.",
		"Sistemato. «Roccavento ti ringrazia», non dice nessuno, ma io lo sento lo stesso.",
	},
	["sw.quest.w01.03"] = {
		"riceve un ringraziamento caloroso, e per un attimo il profumo di pane fresco che arriva dalla strada sembra far parte della ricompensa.",
		"stringe la mano tesa in segno di gratitudine, mentre un bambino passa di corsa inseguendo un cerchio lungo la via.",
	},
	["sw.quest_complete.w02.01"] = {
		"Fatto. Se serve una prova, sono al Pig and Whistle.",
		"Finito. Un altro nodo della città sciolto; ne restano solo diecimila.",
		"Sistemato. Al prossimo con un problema dite che sono giù ai canali, a riprendere fiato.",
	},
	["sw.quest_complete.w02.02"] = {
		"Fatto. Pietra bianca, stendardi azzurri, e dietro, gente che aveva bisogno di una mano. Gliel'ho data.",
		"Finito. Anche una grande città vive ancora di piccoli aiuti, portati di porta in porta.",
	},
	["sw.dawn.w04.001"] = {
		"sente il cambio della guardia sulle mura mentre spunta l'alba: un passaggio di consegne borbottato, uno sbadiglio, stivali che tornano a casa.",
		"guarda le prime barche staccarsi lungo i canali all'alba, le pertiche che affondano piano nell'acqua ferma.",
	},
	["sw.farewell.w04.001"] = {
		"Io vado. Resta sulle strade illuminate, e saluta i canali da parte mia.",
		"Stammi bene. Non comprare mai niente al primo banco che vedi: è tutta la saggezza che ho.",
	},
	["sw.farewell.w04.002"] = {
		"Che la tua strada ti riporti a queste mura.",
		"Buona strada, e ritorna senza un graffio. I ponti hanno bisogno di gente che li attraversi.",
	},
	["sw.greet.w04.001"] = {
		"Salute. Hai l'aria di chi sa dove si trova il pane buono.",
		"Salve! Cerchi la strada, o ammiri i canali come tutti noi?",
		"Salute a te. Occhio alla borsa da queste parti: lo dico a tutti.",
	},
	["sw.greet.w04.002"] = {
		"La Luce sia con te, e con qualunque cosa ti abbia portato in città.",
		"Che la Luce ti protegga, per queste strade e oltre.",
	},
	["sw.greet.w04.003"] = {
		"Salve. Se vendi qualcosa, ce l'ho già, e in doppio.",
		"Ehi, salve. Se si tratta di un debito, hai sbagliato faccia.",
	},
	["sw.journey.w04.001"] = {
		"viene {g:sollevato|sollevata} oltre le mura in tre colpi d'ala decisi, e il verde di Elwynn si stende oltre il fossato fino alle colline.",
		"si alza sopra la porta e il fossato, mentre di là la foresta si srotola in ogni sfumatura di verde.",
		"sale oltre il margine della città, dove la pietra bianca cede subito al verde scuro di Elwynn.",
	},
	["sw.journey.w04.002"] = {
		"si tiene forte mentre il custode dà una pacca sul fianco del grifone e questo si lancia, facendo volare via tutti i piccioni del posatoio.",
		"fa appena in tempo a salire in sella che il grifone balza giù dal posatoio, e una nuvola di piccioni spaventati si apre intorno.",
		"afferra le cinghie mentre la bestia salta; di sotto, i piccioni del quartiere dei mercanti si sparpagliano in ogni direzione.",
	},
	["sw.journey.w04.003"] = {
		"Le mura si allontanano e qualcosa nelle spalle si scioglie. La pietra ti protegge; ma ti tiene anche dentro.",
		"Lasciare la città scioglie sempre un nodo che non sapevo di aver fatto. Le mura sono gentili, e pesanti.",
		"Oltre le mura, e respiro in un altro modo. La città ti stringe a sé, a volte troppo.",
	},
	["sw.journey.w04.004"] = {
		"Avanti! Là fuori i guai aspettano che io arrivi in ritardo.",
		"Su e via. Andiamo a trovare quello che c'è da trovare.",
		"E si parte! Dovunque sia, scommetto che in questa stagione è bellissimo.",
	},
	["sw.journey.w04.005"] = {
		"Da quassù la casa d'aste sembra minuscola. Non mi sembrava affatto minuscola mentre ci perdevo i soldi.",
		"La banca si riduce a un sassolino sotto di me. Tutto quello che possiedo sta in quel sassolino. Fa riflettere.",
		"Da quest'altezza il quartiere dei mercanti è un paese giocattolo, e nessuno può vendermi niente. Una pace.",
	},
	["sw.journey.w04.006"] = {
		"si volta verso le torri della fortezza mentre il grifone sale, con i grandi stendardi che si tendono rigidi nel vento.",
		"coglie un ultimo scorcio della fortezza da sopra la spalla, i vessilli azzurri e oro che tirano sulle aste.",
		"si gira in sella e vede le alte torri della fortezza sprofondare sotto, uno stendardo che schiocca su ognuna.",
	},
	["sw.journey.w04.007"] = {
		"Dall'alto i quartieri finalmente hanno un senso: qui i canali, là le fucine, il riquadro verde del parco. Laggiù sembrava tutto un labirinto.",
		"C'è voluto un grifone per mostrarmi la pianta di questa città: i canali che corrono fra i quartieri come le righe di un registro.",
		"Quassù Stormwind è un disegno sul libro di un capomastro, ogni quartiere al suo posto.",
	},
	["sw.journey.w04.008"] = {
		"Dimmi quando abbiamo superato le torri. Fino ad allora tengo gli occhi chiusi.",
		"È la guglia della cattedrale che si avvicina, o siamo solo molto coraggiosi?",
		"Più su, per favore. Più su delle guglie. Grazie.",
	},
	["sw.journey.w04.009"] = {
		"sale nel buio sopra Stormwind, con le lanterne della città sparse sotto come braci rastrellate in un focolare.",
		"si allontana dalla città di notte, con finestre accese e lanterne che si riducono a una manciata di scintille.",
		"si lascia alle spalle nella notte le luci di Stormwind, una macchia luminosa sul nero della foresta.",
	},
	["sw.journey.w04.010"] = {
		"Si parte alla prima luce, con i camini dei fornai che fumano sotto di me. La città profuma di pane fin quassù.",
		"Volo all'alba. Laggiù Stormwind sbadiglia ancora, un camino alla volta.",
		"Ali di buon'ora. Strade vuote, solo carri e fumo di forni, e il cielo tutto per me.",
	},
	["sw.journey.w04.011"] = {
		"Volare sotto la pioggia: cinghie bagnate, piume bagnate, e la città sotto diventata grigia come ardesia.",
		"Pioggia negli occhi e il grifone che scuote la testa a ogni raffica. Atterrare farà piacere a entrambi.",
		"Su, attraverso la pioggia. Stormwind sfuma sotto di me come un dipinto bagnato.",
	},
	["sw.journey.w04.012"] = {
		"esce dalla nebbia sopra Stormwind, e in pochi colpi d'ala l'intera città sparisce sotto un mare grigio, con il cielo aperto sopra.",
		"sale attraverso la nebbia finché non spuntano solo le punte delle torri più alte, come alberi di nave sopra l'acqua, e poi solo cielo.",
		"sbuca dal grigio sopra i tetti nel cielo limpido, lasciando di sotto le strade avvolte nella nebbia e le loro campane ovattate.",
	},
	["sw.journey.w04.013"] = {
		"La città ha mani in abbondanza. Là fuori c'è un posto che ne ha troppo poche. È lì che vado.",
		"Stormwind se la caverà senza di me. Le strade oltre, forse no.",
		"Le mura restano; io vado. Oltre la foresta, qualcuno sta passando una giornata peggiore della mia.",
	},
	["sw.journey.w04.014"] = {
		"Vola. La città può fare a meno di me per un po'.",
		"Vai. Stormwind ha guardie a sufficienza; la strada ne ha meno.",
	},
	["sw.journey.w04.015"] = {
		"abbassa lo sguardo e vede un bambino su un ponte che saluta il grifone con tutte e due le braccia, e alza una mano in risposta.",
		"viene {g:salutato|salutata} da un ragazzino sulla riva del canale, che continua a sbracciarsi molto dopo che il grifone è passato.",
		"scorge qualche viso rivolto in su dalla strada, tra cui un bambino che indica e grida.",
	},
	["sw.journey.w04.016"] = {
		"atterra al posatoio e subito qualcuno {g:gli|le} offre un facchino, un pasticcio caldo e una mappa della città, tutto prima che gli stivali abbiano toccato bene terra.",
		"scende dal grifone in mezzo a un capannello di garzoni, ognuno convinto che {g:gli|le} serva proprio quello che vende.",
		"ha appena toccato terra quando un venditore di pasticci e un ragazzino che si offre di portare i bagagli cominciano a litigare su chi {g:l'ha visto|l'ha vista} per primo.",
	},
	["sw.journey.w04.017"] = {
		"Piedi a terra, lista in mano: riparazioni, provviste, un pasto caldo, un letto. La città può avermi in quest'ordine.",
		"Di nuovo sui ciottoli con una lista lunga un braccio, e ogni voce costa qualcosa.",
		"A terra, finalmente. Prima di tutto, un fabbro che dia un'occhiata a queste fibbie.",
	},
	["sw.journey.w04.018"] = {
		"Di nuovo piume nel colletto. Ogni volo, immancabilmente.",
		"Chi è che lascia questi uccellacci fare la muta sui passeggeri?",
		"Ho una piuma in un orecchio. Preferisco non chiedermi come.",
	},
	["sw.journey.w04.019"] = {
		"Il custode sta già strigliando il grifone e gli porta la carne. A me nessuno si è offerto di strigliarmi.",
		"Il grifone riceve una bella strigliata e un secchio di pesce. Io mal di schiena e una lunga camminata fino alla locanda.",
		"Guarda un po': uno stalliere e un pasto ad aspettare la bestia. A chi l'ha cavalcata, al massimo, un'indicazione.",
	},
	["sw.journey.w04.020"] = {
		"saggia i ciottoli con un piede, come se anche loro potessero virare e scendere in picchiata, poi s'incammina in città.",
		"aspetta un momento dopo l'atterraggio che la strada smetta di sembrare in movimento, poi si avvia.",
		"muove qualche passo prudente sul selciato, come un marinaio appena sbarcato, finché le gambe non si ricordano della terra.",
	},
	["sw.journey.w04.021"] = {
		"Oggi mi è passato sotto mezzo regno. Le mie ginocchia vogliono far sapere che nessuno le ha consultate.",
		"Un volo lungo, e ogni miglio mi si è piantato nella schiena. I letti della locanda farebbero bene a essere morbidi.",
		"Quella era la strada lunga attraverso la mappa. Camminerò {g:storto|storta} fino a cena.",
	},
	["sw.journey.w04.022"] = {
		"A terra nel buio. Una lanterna al posatoio, un custode che sbadiglia, e la città addormentata intorno.",
		"Atterrare di notte è un atto di fede: ti fidi che la bestia sappia dov'è il suolo. Lo sapeva.",
		"Notte a Stormwind, e il posatoio tiene una lanterna accesa per chiunque scenda dal cielo.",
	},
	["sw.journey.w04.023"] = {
		"atterra mentre i primi carri del mattino arrivano da Elwynn, carichi di mele e cavoli per il mercato.",
		"scende all'alba in una città che sta appena aprendo le imposte, con l'odore del primo pane che sale dai forni.",
		"tocca terra mentre i lampionai fanno il giro a spegnere le ultime lanterne, una per una.",
	},
	["sw.journey.w04.024"] = {
		"atterra in uno spruzzo di pozzanghera mentre scende la pioggia, e il custode si affretta a gettare una coperta sul dorso del grifone.",
		"scivola giù sotto la pioggia al posatoio, mentre il grifone si scrolla come un cane bagnato appena tocca terra.",
		"scende attraverso la pioggia sulla pietra scivolosa, e corre a ripararsi sotto il tetto più vicino con l'acqua che cola da ogni bordo.",
	},
	["sw.journey.w04.025"] = {
		"Giù attraverso la nebbia, sulla fiducia. Il grifone ha trovato il posatoio a naso, credo; io con le campane.",
		"Nebbia fino in fondo. Un attimo prima il grigio e il nulla, quello dopo un tetto e il colpo dell'atterraggio.",
		"Non ho visto la città finché non l'ho avuta tutt'intorno. La nebbia mi ha restituito Stormwind un muro alla volta.",
	},
	["sw.journey.w04.026"] = {
		"Terra di casa, per quanto ne abbia una. Il focolare a cui sono {g:legato|legata} e la città intorno finalmente sono d'accordo.",
		"Di nuovo dove è legato il mio focolare. La strada è stata lunga; queste vie ne sono la fine, per un po'.",
		"Ecco la città che custodisce il mio focolare. Qualunque cosa abbia portato là fuori, qui posso posarla.",
	},
	["sw.journey.w04.027"] = {
		"Consegna speciale dal cielo: io. Qualcuno la vuole? Nemmeno i piccioni?",
		"Eccomi, Stormwind! Trattenete gli applausi. No, davvero, potete smettere di trattenerli.",
	},
	["sw.journey.w04.028"] = {
		"In avvicinamento la città sembrava uno scudo bianco posato da qualcuno in mezzo alla foresta.",
		"Dall'aria Stormwind è uno scudo adagiato su un panno verde. Da terra, è soltanto la casa di un sacco di rumore.",
		"Da lassù le mura sembravano uno scudo. Adesso che ci sto dentro, vedo che sono anche una folla.",
	},
	["sw.journey.w04.029"] = {
		"gratta il grifone sotto il becco prima di lasciarlo andare, e la bestia sopporta la cosa con grande dignità.",
		"dà al grifone una pacca di commiato sul collo, che lui accetta come un signore accetta una supplica.",
		"offre al grifone una grattata dietro l'orecchio piumato; lui si sporge, appena appena, poi finge di niente.",
	},
	["sw.muse.w04.001"] = {
		"Ogni mercante del Trade District giura di avere i prezzi più bassi della città. L'aritmetica dice che qualcuno mente.",
		"Tre bancarelle in fila, e a sentire i cartelli ognuna è la più economica di Stormwind. Che si incontrino, i cartelli, e la risolvano tra loro.",
		"Nel Trade District la bottega più conveniente del regno cambia indirizzo ogni dieci passi, e le mie monete pure.",
	},
	["sw.muse.w04.002"] = {
		"si ferma per lasciar passare un facchino con una pila di casse sulla schiena più alta di lui, che ondeggia tra la folla senza sfiorare nessuno.",
		"si scansa per un facchino piegato sotto una torre di casse, che si infila tra la gente come se avesse contato ogni gomito.",
		"si schiaccia contro un muro mentre passa sferragliando un carretto carico di rotoli di stoffa, e il conducente grida scuse che nessuno sente.",
	},
	["sw.muse.w04.003"] = {
		"La banca custodisce quello che la gente non può portarsi dietro e non ha cuore di vendere. Certe cassette aspettano da molto proprietari che sono usciti a cavallo dalla porta.",
		"File di cassette dietro il banco della banca, ognuna il «più tardi» di qualcuno. Non tutti i più tardi arrivano.",
	},
	["sw.muse.w04.004"] = {
		"Una spada, un pasticcio di carne e un paio di stivali nuovi, tutto in una strada. Stormwind vizia chi viaggia.",
		"Pasticci a un angolo, lame a quello dopo, stivali dall'altra parte. Questa città sa esattamente cosa serve a chi è in viaggio.",
		"Pane fresco, acciaio affilato e qualcuno che mi rammendi il mantello, tutto a portata di voce. Qui rischio di rammollirmi.",
	},
	["sw.muse.w04.005"] = {
		"I banditori non alzano mai gli occhi dai registri. Sotto il loro naso passano fortune intere, e loro annotano solo la commissione.",
		"Un impiegato della casa d'aste registra una vendita che comprerebbe una fattoria nel Westfall, asciuga l'inchiostro e chiama il lotto seguente.",
	},
	["sw.muse.w04.006"] = {
		"Accanto ai gradini della banca c'è sempre qualche famiglia del Westfall con tutto quello che ha in un sacco. Le monete le passano accanto tutto il giorno.",
		"Stivali da contadino, mani da contadino, e nessuna fattoria. Per queste strade ci sono più profughi dell'ovest di quanti la città abbia voglia di contare.",
		"Chi coltivava il grano di Stormwind ora fa la fila per la carità di Stormwind. Il pane gli torna indietro per una strada più crudele.",
	},
	["sw.muse.w04.007"] = {
		"conta quel che resta nella borsa, lancia un'occhiata alle botteghe della città, poi conta di nuovo.",
		"soppesa la borsa in una mano, come se con i prezzi di Stormwind si potesse trattare a occhio.",
	},
	["sw.muse.w04.008"] = {
		"Le lettere entrano nella cassetta della posta davanti alla banca ed escono in qualunque angolo del mondo. Qui nessuno lo trova strano, e a quanto pare nemmeno io.",
		"Da quella cassetta accanto alla banca deve passare la posta di un regno intero. Conti, soprattutto, immagino. E ogni tanto una lettera d'amore.",
	},
	["sw.muse.w04.009"] = {
		"Chissà dove, nella cattedrale, l'arcivescovo Benedictus prega per tutta la città insieme. Dev'essere una preghiera lunga.",
		"L'arcivescovo prega per Stormwind ogni giorno, dicono i sacerdoti. Qualcuno dovrebbe pregare per l'arcivescovo.",
		"Un vecchio vestito di bianco che regge le preghiere di un'intera città. Spero che ogni tanto la Luce lo lasci sedere.",
	},
	["sw.muse.w04.010"] = {
		"L'orfanotrofio vicino alla cattedrale non è mai vuoto. Ogni guerra riempie qualche letto in più.",
		"I bambini dell'orfanotrofio, a due a due dietro la direttrice. Ognuna di quelle manine l'ha lasciata andare qualcuno che non è più tornato.",
	},
	["sw.muse.w04.011"] = {
		"Qualunque cosa sia la Luce, la cattedrale è l'argomento migliore che questa città abbia a suo favore. Perfino chi dubita abbassa la voce sui gradini.",
		"Certi giorni non so in cosa credo. La cattedrale non lo chiede: se ne sta lassù, altissima e pazientissima.",
		"La fede in me va e viene come la marea. La cattedrale resta dov'è, il che è più di quanto si possa dire delle mie certezze.",
	},
	["sw.muse.w04.012"] = {
		"Se la Luce sente qualcosa in mezzo al baccano di questa città, la prima cosa che sente è la cattedrale.",
		"Con campane così, la Luce non può dire di non aver mai avuto notizie di Stormwind.",
	},
	["sw.muse.w04.013"] = {
		"Tutte le fontane di questa città hanno qualche moneta di rame sul fondo. Desideri, quasi sempre di gente che quel rame non poteva permetterselo.",
		"Ogni fontana di Stormwind è un piccolo tesoro di desideri. Nessuno li ripesca; perfino i borseggiatori hanno almeno questo pudore.",
		"Un rame in una fontana non compra niente, e tutta la città continua a pagare. La speranza dev'essere questo: un cattivo affare che fanno tutti.",
	},
	["sw.muse.w04.014"] = {
		"Lo SI:7 sa chi sono. Ci scommetterei. Ed è proprio questo il bello dello SI:7.",
		"In un ufficio dell'Old Town, uno scrivano dello SI:7 ha una pagina col mio nome. Spero almeno che la calligrafia mi renda giustizia.",
		"In questa città nessuno è mai davvero senza qualcuno che lo osserva. Ci pensa lo SI:7, e non ti lascia mai vedere che ti vede.",
	},
	["sw.muse.w04.015"] = {
		"L'Old Town ha l'aria di un posto duro, ma almeno è sincera. Il Trade District ti sorride mentre ti alleggerisce le tasche.",
		"Mi fido più dell'Old Town che delle strade eleganti. Nell'Old Town, almeno, i coltelli si vedono.",
	},
	["sw.muse.w04.016"] = {
		"La Champions' Hall distribuisce gradi e titoli a chi combatte l'Orda sul campo. La guerra è generosa con i gradi; con i soldati, meno.",
		"Stendardi e titoli nella Champions' Hall, guadagnati contro l'Orda. Ogni grado dell'elenco poggia su qualcuno che non è tornato a riscuoterne uno.",
	},
	["sw.muse.w04.017"] = {
		"guarda due soldati fuori servizio litigare su una partita a dadi sopra un barile rovesciato: stanno perdendo tutti e due.",
		"passa davanti a una soglia dove due soldati in licenza giocano a dadi sul coperchio di un barile, imprecando a voce bassa, con mestiere.",
	},
	["sw.muse.w04.018"] = {
		"Nell'Old Town un cappuccio alzato non vuol dire niente. Un cappuccio alzato e un buon paio di stivali vuol dire SI:7.",
		"L'Old Town si impara a leggerla dagli stivali. Quelli consumati sono onesti; quelli nuovi e morbidi, che non fanno rumore, sono affari di qualcuno.",
		"L'Old Town ha due tipi di silenzio: quello di chi si fa gli affari suoi, e quello di chi si fa i tuoi.",
	},
	["sw.muse.w04.019"] = {
		"Al Pig and Whistle versano la birra che fa cominciare le liti e servono lo stufato che le fa finire.",
		"Il Pig and Whistle: insegna storta, pavimento che appiccica, e nessuno mai mandato via perché troppo impolverato.",
		"Metà dei soldati dell'Old Town beve al Pig and Whistle, e l'altra metà ci sta andando con una storia da raccontare.",
	},
	["sw.muse.w04.020"] = {
		"Anche i ratti prendono il Deeprun Tram, dicono i nani. Sotto l'acqua e ritorno, sfacciati come nobili, e senza pagare un rame.",
		"I ratti del Deeprun Tram hanno l'affare migliore del regno: viaggio gratis andata e ritorno, e nessuno controlla.",
		"Sotto il Dwarven District c'è un ratto che va a Ironforge più comodo della maggior parte dei nani.",
	},
	["sw.muse.w04.021"] = {
		"I nani di Stormwind si lamentano del cielo aperto come gli umani si lamentano del tempo: tutti i giorni, e senza nessuna intenzione di andarsene.",
		"Ogni nano del Dwarven District ha la stessa lamentela: bei muri, nessuna cantina degna di questo nome. Lo dicono sopra l'incudine, e restano lo stesso.",
		"I nani in una città di umani brontolano che il soffitto è troppo alto. È il cielo. Lo sanno. Brontolano lo stesso.",
	},
	["sw.muse.w04.022"] = {
		"Si riconosce sempre chi è appena salito dal tram di Ironforge: guarda il cielo aperto strizzando gli occhi, come se potesse cadergli addosso.",
		"Chi risale dal tram si ferma in cima alla rampa e guarda in su. Ironforge ha un soffitto; Stormwind ha il tempo che fa.",
	},
	["sw.muse.w04.023"] = {
		"Gnomi in ogni angolo del Dwarven District, che aggiustano cose non loro per monete di cui hanno un gran bisogno. Gnomeregan è molto in basso, e molto perduta.",
		"Gli gnomi, qui, parlano di Gnomeregan come i marinai parlano di una nave affondata: al presente, e sottovoce.",
		"Mani abili, banchi da lavoro presi in prestito, e una casa perduta sotto la neve di Dun Morogh. Gli gnomi di Stormwind aggiustano tutto tranne quello.",
	},
	["sw.muse.w04.024"] = {
		"Se è rotto, portalo al Dwarven District. Se è rotto e fuma, portalo a uno gnomo.",
		"I nani per quello che va martellato, gli gnomi per quello che vuole una leva e una lunga spiegazione.",
	},
	["sw.muse.w04.025"] = {
		"Quando la città si fa troppo rumorosa penso al tram che sferraglia laggiù, molto più in basso. Sotto tutto questo, due città si tengono per mano al buio.",
		"Stormwind e Ironforge, unite da una galleria sotto l'acqua. Le alleanze di solito sono di pergamena; questa è di roccia.",
		"I trattati sbiadiscono e i re scompaiono, ma la galleria per Ironforge è ancora laggiù, e porta nani, gnomi e pettegolezzi nei due sensi.",
	},
	["sw.muse.w04.026"] = {
		"La torre del Mage Quarter si sporge sui tetti come se origliasse. Conoscendo i maghi, probabilmente lo fa davvero.",
		"Quella torre viola vede tutta la città. Pagherei parecchio per sapere cosa annota un mago sul resto di noi.",
		"La torre dei maghi osserva Stormwind come un airone osserva uno stagno: con pazienza, e con un becco molto appuntito da qualche parte.",
	},
	["sw.muse.w04.027"] = {
		"Il Mage Quarter sa di inchiostro, di zolfo e di erbe secche, a seconda di come il vento decide di fare il furbo.",
		"Ogni bottega del Mage Quarter ha un odore che non sai nominare e un bottegaio che non te lo nominerà.",
	},
	["sw.muse.w04.028"] = {
		"Gli apprendisti maghi sono come i cuccioli: zampe grandi, rumori forti, e ogni tanto qualcosa prende fuoco.",
		"Mai stare sottovento a un apprendista mago. E nemmeno sopravvento. Stai altrove e basta.",
		"Regola del Mage Quarter: se un apprendista dice «indietro», sei già nel raggio.",
	},
	["sw.muse.w04.029"] = {
		"Certe vesti, nel Mage Quarter, sono troppo scure, e i sorrisi di chi le porta troppo misurati. Stormwind li lascia fare, e tiene una guardia all'angolo.",
		"La città tollera i suoi stregoni come una casa tollera la porta di una cantina che non si chiude bene.",
	},
	["sw.muse.w04.030"] = {
		"I maghi di Stormwind parlano ancora di Dalaran a voce bassa, come si parla di una casa ancora in piedi che non è più tua.",
		"Metà dei libri del Mage Quarter vengono da Dalaran, da prima della caduta: lo dicono volentieri i librai. Nessuno dice quale metà.",
		"Ogni biblioteca, qui, ha uno scaffale o due che sanno di Dalaran. I maghi maneggiano quei libri come lettere dei morti.",
	},
	["sw.muse.w04.031"] = {
		"I canali portano via tutto quello che la città vuole dimenticare: bucce, cenere, lettere strappate in quattro. Il giorno dopo è tutto chissà dove, più a valle.",
		"Quello che cade in un canale di Stormwind sparisce prima della campana successiva. Comodo, per certa gente.",
	},
	["sw.muse.w04.032"] = {
		"Un ponte ogni venti passi. Questa città non riesce a decidere da che parte dell'acqua vuole stare.",
		"Sei ponti per arrivare in un posto a un tiro di sasso. Stormwind ha il senso dell'umorismo.",
		"Chi ha disegnato i canali di questa città non ha mai dovuto correre in banca di fretta.",
	},
	["sw.muse.w04.033"] = {
		"si ferma al parapetto di un canale, dove l'acqua ha il colore del peltro vecchio, e lascia scorrere sopra di sé il baccano della città.",
		"appoggia gli avambracci sul bordo di pietra di un canale e guarda l'acqua scivolare paziente sotto i ponti.",
	},
	["sw.muse.w04.034"] = {
		"I barcaioli dicono che se mai qualcuno prosciugasse i canali, metà dei segreti della città sarebbero lì nel fango, e l'altra metà sulla riva, a sudare freddo.",
		"Prosciuga i canali, amano dire i barcaioli, e troveresti abbastanza pugnali per armare una guarnigione e abbastanza anelli per sposarla tutta.",
	},
	["sw.muse.w04.035"] = {
		"I canali regalano alla città un secondo cielo da guardare, capovolto e pieno di tetti che tremano.",
		"Guarda giù da un ponte qualunque e nell'acqua c'è un'altra Stormwind: più quieta, e un po' storta.",
		"Sotto ogni ponte la città continua a testa in giù, con le torri appese nel verde, e lì nessuno ha fretta.",
	},
	["sw.muse.w04.036"] = {
		"Gli elfi della notte curano il Park come se la città intorno fosse solo di passaggio. Con la vita lunga che hanno, forse lo è davvero.",
		"Un boschetto di elfi della notte dentro una città di uomini. Una piccola ambasciata degli alberi, e silenziosa.",
		"Nel Park gli elfi non potano niente, non affrettano niente, eppure gli alberi crescono più dritti delle strade.",
	},
	["sw.muse.w04.037"] = {
		"Quando Stormwind diventa troppo rumorosa vado a stare un po' sotto gli alberi del Park. Poi torno. Non sono mica uno scoiattolo.",
		"Una passeggiata nel Park guarisce quasi tutto. I prezzi no, ma quasi tutto.",
	},
	["sw.muse.w04.038"] = {
		"Innamorati nel Park, vecchi nel Park, druidi nel Park. In questa città tutti ci vanno per essere altrove per un po'.",
		"Il Park è dove Stormwind tiene il suo silenzio, come una casa tiene il servizio buono: si usa poco, ma c'è sempre.",
		"Certi giorni l'unica erba che voglio vedere è quella del Park, tra le mura, dove niente vuole mordermi.",
	},
	["sw.muse.w04.039"] = {
		"Gli eroi di pietra alla porta sono più alti di quanto sia mai stato qualunque eroe. È proprio quello lo scopo: ci passi sotto e ti ritrovi a raddrizzare la schiena.",
		"Lungo la strada d'ingresso stanno le statue dei vecchi eroi. Nessuno ha l'aria stanca. La pietra è gentile, in questo.",
		"Gli eroi della valle non invecchiano, non zoppicano, non chiedono la paga. È facile onorare eroi fatti di pietra.",
	},
	["sw.muse.w04.040"] = {
		"Nelle taverne i vecchi soldati alzano ancora il bicchiere a Lothar, il Leone di Azeroth, come se potesse entrare in ritardo e sedersi.",
		"Fu Lothar a portare via la gente quando bruciò la prima città. Ogni leone su questi stendardi gli deve qualcosa.",
		"Chiedi a un veterano di Stormwind del Leone di Azeroth, e guardalo raddrizzarsi un poco prima di rispondere.",
	},
	["sw.muse.w04.041"] = {
		"Tutto il giorno la porta inghiotte Elwynn: carri di mele, pellegrini, reclute, figli di contadini con ancora la polvere addosso.",
		"La porta di Stormwind non chiude mai la bocca. Elwynn entra a carrettate, e il mondo esce armato.",
	},
	["sw.muse.w04.042"] = {
		"Mura così spesse le ha costruite gente che una città l'aveva già persa una volta. Si vede.",
		"Queste mura non sono per bellezza. Le ha alzate gente che si ricordava di come erano cadute le ultime.",
		"Nessuno costruisce fondamenta così profonde se la terra non gli è già bruciata sotto i piedi.",
	},
	["sw.muse.w04.043"] = {
		"Il fossato davanti alla porta è largo abbastanza da far pensare due volte un esercito. Stormwind ha imparato a sue spese che pensarci due volte costa meno che ricostruire.",
		"Acqua davanti alla porta, pietra dietro, e guardie da tutte e due le parti. Per gli orchi la vecchia città era stata più facile. Era proprio questo il punto.",
	},
	["sw.muse.w04.044"] = {
		"Bolvar Fordragon regge il regno come un soldato regge uno scudo troppo a lungo: saldo, e pagandolo con le spalle.",
		"Un paladino a guardia di un trono che non è suo. Bolvar non ha mai chiesto di fare il reggente, dicono le guardie, e forse è per questo che si fidano di lui.",
		"Bolvar porta il peso della corona senza la corona. Non so quale dei due pesi di più.",
	},
	["sw.muse.w04.045"] = {
		"Lady Prestor è sempre al fianco del reggente, sempre sorridente, sempre d'accordo. Nessuno è così accomodante gratis.",
		"Una nobildonna di Alterac, dicono, di cui nessuno ha mai visto le terre di famiglia. E tutta la corte pende dalle sue labbra.",
		"Il modo in cui la corte si piega verso Lady Prestor quando parla: come erba sotto un vento che nessun altro sente.",
	},
	["sw.muse.w04.046"] = {
		"Lady Prestor? Affascinante, dicono. Come un guanto di velluto. Mi piacerebbe dare un'occhiata alla mano.",
		"A corte tutti adorano Lady Prestor. È proprio questo che mi preoccupa.",
		"Lady Prestor sorride a tutti. Anche i gatti lo fanno, un attimo prima dell'uccellino.",
	},
	["sw.muse.w04.047"] = {
		"Ogni proclama della città esce col sigillo di un re bambino. Chissà se qualcuno gli permette di leggerli prima.",
		"Anduin Wrynn: re di nome, bambino in tutto il resto, e una città costretta a fingere che la prima cosa basti.",
		"Chissà dove, nella fortezza, un ragazzino impara l'alfabeto e il regno allo stesso scrittoio. Spero che gli lascino il tempo per l'alfabeto.",
	},
	["sw.muse.w04.048"] = {
		"Il re è partito per parlare di pace e non è più tornato. Nella fortezza nessuno dice dove sia finita la strada.",
		"Re Varian è disperso, non morto. Tutta la città si appoggia a quella parola, «disperso», come a una stampella.",
		"Il re ripasserà dalla porta da un giorno all'altro, dice la gente. Lo dicono anche i fornai, e ormai, mentre lo dicono, non alzano più gli occhi.",
	},
	["sw.muse.w04.049"] = {
		"Lunga vita al re, ovunque sia. E lunga vita al ragazzo che gli tiene caldo il trono.",
		"Un re disperso, un re bambino, e un reggente in mezzo. Stormwind è ancora in piedi: qualcuno sta facendo qualcosa di giusto.",
		"Sul trono c'è un ragazzo, accanto un paladino, e dietro un posto vuoto. Eppure il pane esce dai forni all'ora giusta.",
	},
	["sw.muse.w04.050"] = {
		"si ferma mentre la voce di un araldo arriva sopra i tetti dalla parte della fortezza, a leggere un decreto che la strada ignora con cura.",
		"ascolta a metà un banditore che legge un proclama a nome del re bambino, mentre un carro di passaggio gli schiaccia le ultime parole.",
	},
	["sw.muse.w04.051"] = {
		"Le guardie della fortezza stanno così immobili che i piccioni hanno cominciato a fidarsi.",
		"Prova a far sbattere le palpebre a una guardia della fortezza. C'è chi ci prova. Vince sempre la guardia, senza nemmeno accorgersi della sfida.",
	},
	["sw.muse.w04.052"] = {
		"Gli scalpellini hanno alzato anche la cattedrale. Ogni inno sotto quel tetto si canta su pietra che nessuno ha pagato.",
		"Perfino la casa della Luce è stata costruita a credito. Gli scalpellini aspettano ancora; la Luce, che io sappia, non si è pronunciata.",
	},
	["sw.muse.w04.053"] = {
		"I veri scalpellini segnano i loro blocchi, dicono i vecchi costruttori: un uncino, una stella, un martelletto. In queste mura ci sono firme in calce a un conto mai saldato.",
		"Ogni blocco di queste mura porta il segno del suo scalpellino, dicono i costruttori, come una lettera porta la mano di chi l'ha scritta. Ormai nessuno li legge più.",
	},
	["sw.muse.w04.054"] = {
		"Edwin VanCleef guidava gli scalpellini che hanno ricostruito questa città. Ora la città pronuncia il suo nome come uno sputo.",
		"Un mastro scalpellino con un torto da far valere e il dono di farsi seguire. Stormwind ha fatto un fuorilegge dell'unico uomo che sapeva dove ogni suo muro era più debole.",
		"VanCleef ha tirato su queste mura e poi si è messo una maschera. In mezzo, qualche nobile ha deciso che un debito era facoltativo.",
	},
	["sw.muse.w04.055"] = {
		"Pagate i vostri scalpellini. Qualcuno dovrebbe inciderlo sopra ogni porta del regno.",
		"Lezione di Stormwind, gratis: paga chi ti costruisce i muri, o imparerà dove sono i buchi.",
		"Vuoi sapere quanto costa un debito non pagato? Chiedilo al Westfall. Poi chiedi ai nobili perché loro non l'hanno fatto.",
	},
	["sw.muse.w04.056"] = {
		"Un fazzoletto rosso tra la folla di città fa sempre voltare qualche testa. Di solito è solo un contadino senza gusto. Di solito.",
		"Da quando ci sono i Defias, a Stormwind nessuno porta più il rosso attorno alla faccia. La moda va dietro alla paura.",
		"Fatti vedere in questa città con un pezzo di stoffa rossa sotto il mento, e le guardie si ricorderanno la tua faccia per una settimana.",
	},
	["sw.muse.w04.057"] = {
		"In questa città ci sono mogli e figli di scalpellini i cui uomini sono andati a ovest e non sono più tornati. Vivono ancora sotto le mura che quegli uomini hanno costruito.",
		"Le famiglie degli scalpellini non se ne sono mai andate. Madri, figli, una sorella o due, in stanze sotto le pietre posate da uomini che non ci sono più.",
	},
	["sw.muse.w04.058"] = {
		"Non tutti gli scalpellini hanno preso la maschera. Alcuni sono rimasti, hanno accettato il lavoro che la città offriva, e davanti alla birra tengono la bocca chiusa.",
		"Qualche vecchio scalpellino non ha mai seguito la Fratellanza. Ripara ancora i muri della città, piano, e non nomina mai il conto.",
		"Gli scalpellini rimasti si riconoscono dalle mani e dal silenzio. Rattoppano la pietra che nessuno ha mai pagato loro, e non dicono niente.",
	},
	["sw.muse.w04.059"] = {
		"Il Westfall brucia perché in questa città un registro non tornava. Pensaci, la prossima volta che ammiri le pietre.",
		"Ogni fienile a cui i Defias danno fuoco a ovest l'ha pagato un conto lasciato in sospeso in questa città.",
	},
	["sw.muse.w04.060"] = {
		"I nobili che non vollero pagare gli scalpellini cenano ancora nelle loro belle case, a un tiro di sasso dalle mura che non hanno mai pagato.",
		"Le case dei nobili sono il lavoro più bello che gli scalpellini abbiano mai fatto. Chissà se i nobili ci pensano mai, a cena.",
		"Scale di marmo, architravi scolpiti, un leone sopra ogni porta: i nobili vivono dentro l'argomento migliore degli scalpellini, e non lo sentono.",
	},
	["sw.muse.w04.061"] = {
		"passa una mano su un blocco del muro, dove la linea della malta è dritta come una riga tracciata col righello, e ci si attarda un momento.",
		"segue con la punta di un dito la giuntura tra due pietre bianche, come se ci leggesse qualcosa.",
		"appoggia il palmo sulla pietra fresca di un muro per il tempo di un respiro, poi lo lascia ricadere.",
	},
	["sw.muse.w04.062"] = {
		"I Defias non hanno bisogno di scavalcare le mura. Le chiavi di metà di queste porte potevano farsele mentre le montavano.",
		"Chi ha posato ogni architrave della città sa quali porte si incastrano e quali non chiudono mai. Se fossi un nobile, cambierei le serrature.",
	},
	["sw.muse.w04.063"] = {
		"Umani, nani, gnomi, elfi della notte, tutti a sgomitare nella stessa strada. Stormwind è l'Alleanza com'è prima che qualcuno la metta in ordine.",
		"Quattro popoli in una folla, quattro modi di dire «permesso», e nessuno che li usi.",
		"Tutte le lingue dell'Alleanza in una strada, e l'unica parola su cui vanno d'accordo è il prezzo del pane.",
	},
	["sw.muse.w04.064"] = {
		"si scansa per un elfo della notte che cammina come se i ciottoli potessero svegliarsi, seguito da uno gnomo che cammina come se gli dovessero dei soldi.",
		"si vede sorpassare da uno gnomo quasi di corsa, poi da un nano a passo pesante e regolare, poi da un umano che chiede scusa a tutti e due.",
	},
	["sw.muse.w04.065"] = {
		"Nei giorni di mercato Elwynn viene in città con mele, formaggio e lana, e se ne torna a casa con chiodi, pettegolezzi e il mal di testa.",
		"I contadini di Elwynn si riconoscono tra la folla: collo bruciato dal sole, passo lento, e la mano ben stretta sulla borsa.",
	},
	["sw.muse.w04.066"] = {
		"In certe voci, qui, si sente Darkshire, in altre Lakeshire. La gente viene nella capitale a chiedere soldati e torna a casa con delle promesse.",
		"Postulanti di Redridge e di Duskwood aspettano sulle panche un'udienza che arriva tardi, se arriva. Il regno è grande e il reggente è uno solo.",
		"Ogni villaggio che manda un cavaliere a Stormwind manda lo stesso messaggio con parole diverse: teniamo duro, ma non per molto.",
	},
	["sw.muse.w04.067"] = {
		"I bambini di Stormwind giocano a guardie e Defias nei vicoli. Vincono sempre i Defias; le guardie si prendono sempre i bastoni migliori.",
		"Ogni bambino di questa città ha una spada di legno e un elenco di chi deve fare il cattivo oggi.",
	},
	["sw.muse.w04.068"] = {
		"I soldati in licenza camminano per Stormwind come se la strada fosse ghiaccio sottile, aspettando che il rumore diventi qualcos'altro.",
		"Si riconoscono quelli appena tornati dal fronte: trasaliscono alle campane e dormono in mezzo alle urla.",
		"Un soldato in licenza si siede con la schiena contro ogni muro della taverna. La città è sicura. Le sue spalle non lo sanno ancora.",
	},
	["sw.muse.w04.069"] = {
		"I pellegrini arrivano da tutto il regno per vedere la cattedrale, e poi passano mezza giornata a perdersi tra i canali. La Luce si fa desiderare.",
		"I pellegrini chiedono sempre la strada per la cattedrale, ricevono sempre tre risposte da tre sconosciuti, e ringraziano sempre tutti e tre.",
	},
	["sw.muse.w04.070"] = {
		"Un nano in una taverna di Stormwind ti dirà che la birra scura qui è leggera. Poi ne ordina altre quattro, per scrupolo.",
		"I nani si lamentano della birra degli umani con vera dedizione. Lo fanno agli stessi tavoli da anni.",
		"Nessun nano ha mai lodato a voce alta una birra di Stormwind. Parecchi hanno finito il barile per dimostrare il punto.",
	},
	["sw.muse.w04.071"] = {
		"I grifoni vanno e vengono sopra i tetti a tutte le ore. La città ha smesso di alzare gli occhi da un pezzo; io non ancora.",
		"Ogni grifone che passa in alto è qualcuno che parte o qualcuno che torna. Stormwind non ci fa caso; i maestri di grifoni sì.",
	},
	["sw.muse.w04.072"] = {
		"Quando le campane della cattedrale e quelle della fortezza suonano insieme, tutta la città sembra fermarsi per un battito, come un respiro trattenuto.",
		"C'è un momento, quando tutte le campane si rispondono insieme, in cui perfino i mercanti smettono di gridare. Non dura mai. Torna sempre.",
		"Una campana comincia, una seconda le va dietro, e poi tutto il cielo sopra Stormwind risuona come uno scudo colpito.",
	},
	["sw.muse.w04.073"] = {
		"A Stormwind nessuno è mai in ritardo. È solo «dopo la campana». Quale campana, è questione di opinioni.",
		"«Ci vediamo alla campana», si dice qui. Di campane ce n'è una dozzina. Mezza città sta ancora aspettando l'altra metà.",
	},
	["sw.muse.w04.074"] = {
		"Le campane suonano lente per i morti e svelte per le nozze. Stormwind le sente tutte e due quasi ogni settimana, e il pane lo compra comunque.",
		"Rintocchi lenti per un funerale, svelti per un matrimonio. Vivi qui abbastanza e conosci le notizie della città senza chiedere a nessuno.",
	},
	["sw.muse.w04.075"] = {
		"conta sottovoce i rintocchi di una campana lontana, e perde il conto da qualche parte dopo il nove.",
		"piega la testa verso una campana che suona chissà dove oltre i tetti, come se avesse pronunciato un nome.",
	},
	["sw.muse.w04.076"] = {
		"Le pattuglie fanno gli stessi giri a ogni turno di guardia. Un ladro paziente potrebbe cronometrarle; anche il loro sergente, ed è proprio questo il punto.",
		"Stesse strade, stessi giri, stessi stivali lucidi. Le guardie della città hanno fatto dell'abitudine una specie di armatura.",
		"La giornata di una guardia, qui, è fatta di mille passi sulle stesse pietre. Nessuno ci canta sopra, e senza quei passi la città andrebbe a pezzi.",
	},
	["sw.muse.w04.077"] = {
		"Hai perso la borsa? Una guardia di Stormwind ti aiuta a cercarla. Hai perso la pazienza? Quello è un altro servizio.",
		"Le guardie qui ti indicano qualunque posto della città. Basta non chiedergli come entrare in casa di un nobile fuori orario.",
	},
	["sw.muse.w04.078"] = {
		"Scommetterei che dalle mura gli occhi puntano più sulla strada dell'ovest che su qualunque altra. I proclami dicano quel che vogliono: le guardie sanno da dove entrano i guai.",
		"Gli occhi di una guardia sono le notizie migliori della città. Guarda dove si posano, e saprai di cosa ha paura la fortezza questa settimana.",
	},
	["sw.muse.w04.079"] = {
		"ricambia il cenno di una guardia di passaggio, una piccola cortesia tra due persone che hanno entrambe un posto dove andare.",
		"guarda una guardia rimettere in piedi l'insegna caduta di una bottega senza fermare il passo, come se facesse parte della ronda.",
		"si mette al passo con una pattuglia per qualche metro, poi la lascia andare avanti, e il tintinnio delle maglie si spegne in fondo alla strada.",
	},
	["sw.muse.w04.080"] = {
		"Di notte il Trade District si spegne per primo e l'Old Town per ultima. Le monete vanno a letto presto; i segreti fanno tardi.",
		"Quando le botteghe chiudono per la notte, comincia l'altro commercio di Stormwind: sussurri sulle soglie, monete che non tintinnano.",
	},
	["sw.muse.w04.081"] = {
		"cammina sotto le finestre buie di una strada addormentata, i tacchi che risuonano sulla pietra, e lassù, in qualche torre, una sola finestra ancora accesa.",
		"passa accanto a una guardia la cui lanterna oscilla in archi lenti, l'unica luce in movimento in una strada che dorme per la notte.",
	},
	["sw.muse.w04.082"] = {
		"All'alba i primi carri di Elwynn entrano rombando dalla porta, carichi di latte e uova, prima ancora che la città si sia vestita.",
		"All'alba gli spazzini hanno già finito il giro, prima che mezza Stormwind apra un occhio. Nessuno ringrazia mai uno spazzino.",
		"Alba, e la città sa di pietra bagnata e di fumo di legna. Fra un'ora saprà di tutto il resto.",
	},
	["sw.muse.w04.083"] = {
		"Pioggia a Stormwind. I canali sono contenti; io no.",
		"Gli scalpellini hanno costruito le grondaie anche per questa pioggia, e nemmeno quelle le ha pagate nessuno. Funzionano benissimo.",
	},
	["sw.muse.w04.084"] = {
		"Nebbia a Stormwind: ponti che cominciano e non finiscono, torri senza cima, voci senza volto.",
		"Con questa nebbia ogni guardia è una sagoma fino all'ultimo passo, e ogni sagoma una guardia, finché non lo è più.",
	},
	["sw.muse.w04.085"] = {
		"si ferma mentre l'ultima luce del tramonto accende le guglie della cattedrale e lascia le strade di sotto già azzurre.",
		"guarda le mura bianche della città farsi rosa al tramonto, poi grigie, mentre il giorno le lascia andare.",
	},
	["sw.muse.w04.086"] = {
		"Giornata limpida, e i tetti azzurri di Stormwind si intonano così bene al cielo che non si capisce dove finisca la città.",
		"Sotto un cielo pulito la pietra bianca è quasi troppo luminosa da guardare. Qualcuno dovrebbe vendere cappelli; qualcuno di sicuro lo fa.",
	},
	["sw.muse.w04.087"] = {
		"A mezzogiorno il Trade District tocca il massimo del chiasso e il Park il massimo della quiete. La città si bilancia da sé, come la stadera di un mercante.",
		"Mezzogiorno, e ogni ombra della città si è rintanata sotto il suo muro ad aspettare che il sole passi.",
	},
	["sw.muse.w04.088"] = {
		"Le mura spesse tengono fuori la strada. Perfino le campane arrivano attutite, come se qualcuno le avesse avvolte in un panno.",
		"Al chiuso, Stormwind diventa una voce che corre: un carro sui ciottoli, un grido, una campana, tutto a un muro di distanza.",
	},
	["sw.muse.w04.089"] = {
		"Strano, andare in giro con l'arma nel fodero e le spalle basse. Questa città ti fa dimenticare la strada.",
		"Lama nel fodero, schiena scoperta. A Stormwind è buona educazione. Oltre Elwynn sarebbe una follia.",
	},
	["sw.muse.w04.090"] = {
		"Una strada intera, e niente che voglia uccidermi. Le mani non sanno più dove mettersi.",
		"La mano continua a scivolare verso l'elsa, per abitudine. Calma. Qui nessuno mi viene incontro con niente di peggio di un'offerta speciale.",
		"Là fuori sto attento ai passi alle mie spalle. Qui dentro, i passi alle mie spalle sono di un garzone di fornaio con un vassoio. Ci vuole un po' per abituarsi.",
	},
	["sw.muse.w04.091"] = {
		"guarda uno stormo di piccioni alzarsi tutto insieme dai tetti, spaventato da qualcosa che nessuno in strada riesce a vedere.",
		"segue i piccioni che girano sopra i tetti azzurri di Stormwind, una sciarpa grigia gettata sulla città e subito ritirata.",
	},
	["sw.muse.w04.092"] = {
		"Stormwind ha un modulo per ogni cosa. C'è uno scrivano, chissà dove, che passa la vita a timbrarli, e una cantina piena di quelli timbrati.",
		"Un regno senza il suo re va avanti lo stesso a pergamene. Gli scrivani di Stormwind continuerebbero a timbrare anche se cadessero le mura.",
		"Permessi per il mercato, permessi per il ponte, un permesso per lamentarsi dei permessi. Gli scrivani di questa città non fanno mai la fame.",
	},
	["sw.muse.w04.093"] = {
		"Qualunque cosa succeda là fuori, è qui che l'Alleanza viene a ricordarsi di essere un'alleanza.",
		"Ogni stendardo dell'Alleanza ha un cugino appeso da qualche parte in questa città.",
		"Stormwind è il focolare a cui tutta l'Alleanza si scalda le mani, litigi compresi.",
	},
	["sw.muse.w04.094"] = {
		"Il leone d'oro è dappertutto: tabarri, stendardi, battenti delle porte, il fondo dei boccali. Una città che si ricorda di essere coraggiosa.",
		"Stormwind ci mette un leone su qualunque cosa stia ferma abbastanza a lungo. Mi stupisce che i piccioni non ne portino uno.",
	},
	["sw.muse.w04.095"] = {
		"Una città è fatta soprattutto della pazienza della sua gente: fornai in piedi prima della luce, guardie sempre ritte, scrivani chini sui registri. La pietra tiene solo la forma.",
		"Le mura sono la parte della città che si vede. Il resto è gente che si alza ogni mattina e ricomincia tutto daccapo.",
		"I re scompaiono, i reggenti si preoccupano, i Defias tramano. Intanto qualcuno spazza i gradini e qualcuno cuoce il pane, ed è questo che tiene in piedi Stormwind.",
	},
	["sw.npc_meet.w04.001"] = {
		"passa accanto a una guardia cittadina la cui alabarda s'inclina in avanti di un dito: un saluto, un avvertimento, o tutti e due.",
		"si attira lo sguardo lento di una guardia in azzurro e oro, che sposta il peso dell'alabarda e non dice nulla.",
		"fa un cenno a una guardia all'angolo e riceve in cambio il cenno più piccolo del regno.",
	},
	["sw.npc_meet.w04.002"] = {
		"Turno tranquillo finora? Bene. Che resti noioso il più a lungo possibile.",
		"Guardia, c'è qualcosa in giro da cui dovrei stare alla larga?",
		"Hai l'aria di chi sta qui da quando hanno alzato le mura. Ti serve qualcosa?",
	},
	["sw.npc_meet.w04.003"] = {
		"Gli occhi del mercante vanno dagli stivali alla cintura alla borsa in un'unica occhiata esperta. Pesa e stima in un colpo solo.",
		"Prima che io apra bocca, questo ha già indovinato quanto posso spendere. Probabilmente al rame.",
		"Un banco lisciato da mille gomiti, e un venditore che ha già sentito ogni trattativa due volte.",
	},
	["sw.npc_meet.w04.004"] = {
		"Fammi vedere qualcosa che regga oltre Goldshire. Non la roba luccicante. Quella brutta e utile.",
		"Cos'hai che non vada a pezzi la prima volta che si bagna?",
		"Mi servono cose che funzionano, non cose che brillano. La differenza la sai meglio di me.",
	},
	["sw.npc_meet.w04.005"] = {
		"Lo sguardo dell'oste va agli stivali, poi alla faccia, come se archiviasse entrambi. In una locanda di città è così che si tiene la pace.",
		"Ecco qualcuno che conosce ogni faccia che dorme sotto questo tetto, e sa quali russano.",
		"Custode di chiavi e di litigi. Gli osti di città devono sentire più segreti dello SI:7.",
	},
	["sw.npc_meet.w04.006"] = {
		"viene {g:chiamato|chiamata} con un cenno da qualcuno ai margini della folla, come si fa con l'unica persona che potrebbe aiutare.",
		"incrocia lo sguardo di qualcuno che chiaramente aspettava proprio questo: qualcuno di passaggio, armato e con un po' di tempo.",
		"viene {g:preso|presa} da parte da qualcuno che prima si guarda intorno, poi abbassa la voce per spiegare.",
	},
	["sw.npc_meet.w04.007"] = {
		"Prima che cominci: dimmi che non si tratta di topi. Tutto tranne i topi.",
		"Avanti. Cos'è sparito, rotto, o scappato stavolta?",
		"Ti ascolto. Comincia dalla parte che va a fuoco, se ce n'è una.",
	},
	["sw.npc_meet.w04.008"] = {
		"Insegnami quello per cui sono {g:pronto|pronta}. E magari una cosa per cui non lo sono.",
		"Sono {g:venuto|venuta} a farmi dire cosa sbaglio. Niente gentilezze.",
		"Mostrami qualcosa di nuovo. Pago in monete adesso e in lividi dopo.",
	},
	["sw.npc_meet.w04.009"] = {
		"passa un fagotto oltre il banco mentre l'impiegato annota ogni oggetto su un registro, con una calligrafia troppo minuta per discuterci.",
		"aspetta mentre un impiegato della banca pesa, conta e scrive, senza che la penna esiti una sola volta.",
		"guarda un impiegato chiudere via il deposito con una chiave presa da un mazzo che dev'essere più pesante della sua sacca.",
	},
	["sw.npc_meet.w04.010"] = {
		"Il maestro dei grifoni parla agli animali con voce dolce, e ai clienti con una molto più sbrigativa. Giusto così.",
		"Pochi genitori hanno l'aria fiera che ha questo custode quando guarda i suoi grifoni.",
		"Questo controlla le cinghie tre volte e la mia borsa una. Le priorità giuste, per un volo.",
	},
	["sw.npc_meet.w04.011"] = {
		"Bolvar Fordragon, che regge un regno per un re che non c'è. Si vede, intorno agli occhi.",
		"Il reggente sta dritto sotto il peso. Chi ritroverà re Varian farà un favore anche a quest'uomo.",
		"Bolvar Fordragon. Un paladino che preferirebbe stare sul campo, scommetto, e invece tiene caldo un trono per un ragazzo.",
	},
	["sw.npcd_flightmaster_bye.w04.001"] = {
		"Su, in sella. Inclinati quando s'inclina il grifone, e non metterti a discutere con lui.",
		"Buon volo. Tieni la bocca chiusa in discesa: gli insetti sopra Elwynn, in questa stagione, sono fitti.",
	},
	["sw.npcd_flightmaster_open.w04.001"] = {
		"Ti servono ali? Occhio ai becchi, firma il registro, e scegli un grifone a cui vai a genio.",
		"Questo è il posatoio. Le bestie sono nutrite, riposate, e di umore migliore del mio.",
		"Dove sei {g:diretto|diretta}? Questi uccelli conoscono dall'alto ogni strada del regno.",
	},
	["sw.npcd_guard_bye.w04.001"] = {
		"Circolare, allora. E stai fuori dai canali: questo mese abbiamo già ripescato abbastanza visitatori.",
		"Vai. Resta sulle strade illuminate dopo il buio e non avrai fastidi, né da me né da altri.",
		"Buon viaggio. Porta i nostri saluti alla strada per Westfall: le servono un po' di facce amiche.",
	},
	["sw.npcd_guard_thanks.w04.001"] = {
		"Non serve ringraziare. Mantenere la pace è il mio lavoro, e tu non l'hai turbata. Aiuta.",
		"Faccio solo il mio dovere. Se vuoi ringraziare qualcuno, ringrazia chi ha fatto questi stivali. Sto in piedi tutto il giorno.",
	},
	["sw.npcd_innkeeper_bye.w04.001"] = {
		"Strade sicure. E se qualcuno chiede dove hai dormito bene, è stato qui.",
		"Vai pure. Il letto sentirà la tua mancanza più di me, ma non di molto.",
		"Attenzione al gradino uscendo. Metà città ci è inciampata, e l'altra metà aspetta il suo turno.",
	},
	["sw.npcd_innkeeper_more.w04.001"] = {
		"Di più? Prendi un secondo boccale e avvicinati. I pettegolezzi migliori non arrivano mai col primo.",
		"Ad alta voce non dico altro. In questa città i muri hanno orecchie, e qualcuna lavora per lo SI:7.",
	},
	["sw.npcd_innkeeper_open.w04.001"] = {
		"Entra, entra, e chiudi la porta. Letto, scodella o tutti e due?",
		"Avanti! Stivali vicino al focolare, monete sul banco, pensieri fuori dalla porta.",
		"Vieni dentro. Il bollitore è sul fuoco, le stanze sono arieggiate e il cuoco è di buon umore. Giornata rara.",
	},
	["sw.npcd_innkeeper_open.w04.002"] = {
		"Ancora qualcuno con tutta la strada attaccata agli stivali. Puliscili, per favore, e poi parliamo.",
		"Ah, una faccia nuova. O una vecchia che ho dimenticato. In ogni caso, una stanza è una stanza.",
	},
	["sw.npcd_innkeeper_rest.w04.001"] = {
		"Di sopra, in fondo al corridoio. La finestra s'incastra, il letto non cigola, e le campane ti sveglieranno che tu lo voglia o no.",
		"C'è una stanza libera dal lato tranquillo, lontano dall'odore del canale. Prendila prima che arrivi un nano dal tram.",
	},
	["sw.npcd_innkeeper_sit.w04.001"] = {
		"Siediti dove trovi uno sgabello libero. Se traballa, è il pavimento, non la birra.",
		"Bene. Prendi l'angolo vicino al focolare: è il posto più caldo di Stormwind, e il più tranquillo.",
	},
	["sw.npcd_innkeeper_thanks.w04.001"] = {
		"Non serve. Paga il conto e parla bene dello stufato, e siamo pari.",
		"Ringraziami tornando. Metà dei miei clienti è gente che voleva fermarsi una sera sola.",
	},
	["sw.npcd_merchant_bye.w04.001"] = {
		"Torna quando la strada ti avrà mangiato quegli stivali. Succederà.",
		"Vai pure, e che la prossima volta la tua borsa sia più pesante. Per il bene di tutti e due.",
		"Arrivederci, e occhio alle tasche sui ponti. Mi dispiacerebbe perdere chi compra da me per colpa di un ladro.",
	},
	["sw.npcd_merchant_haggle.w04.001"] = {
		"Discuterne? Possiamo discuterne tutto il giorno. Il prezzo sarà ancora lì quando avremo finito.",
		"Prima prova a discutere le tasse con i nobili. Quando cedono loro, cedo anch'io.",
	},
	["sw.npcd_merchant_open.w04.001"] = {
		"Avanti, avanti! Tutto quello che vedi è arrivato su un carro questa settimana, e qualcosa sa ancora di strada.",
		"Buongiorno! Dai un'occhiata: toccare è gratis, e comprare è molto ragionevole.",
		"Questo è il banco migliore tra la banca e il canale. Lo so bene: ho preso le misure.",
	},
	["sw.npcd_merchant_open.w04.002"] = {
		"Cosa ti serve? Ho quello che ti occorre, e qualche cosa che ti servirà più avanti.",
		"Sei qui per guardare o per comprare? Vanno bene entrambe le cose; una va un po' più bene.",
	},
	["sw.npcd_merchant_thanks.w04.001"] = {
		"Il piacere è mio, davvero. Dillo agli amici, e di' che te l'ho detto io.",
		"Grazie a te per aver comprato! Tiene alte le imposte e fuori i topi.",
	},
	["sw.npcd_trainer_bye.w04.001"] = {
		"Vai. Esercitati finché diventa noioso, poi esercitati finché non lo è più.",
		"Vai pure. Torna quando avrai rotto qualcosa in un modo nuovo: ti mostrerò come rimediare.",
	},
	["sw.npcd_trainer_open.w04.001"] = {
		"Schiena dritta, peso in avanti. Ecco. Adesso possiamo parlare di quello che sei {g:venuto|venuta} a imparare.",
		"Sei qui per imparare? Bene. Stormwind è piena di gente convinta di sapere già tutto.",
		"Fammi vedere le mani. Mh. Sì, c'è ancora lavoro lì dentro. Da cosa vuoi cominciare?",
	},
	["sw.quest_complete.w04.001"] = {
		"Me la sono tolta dalle spalle. Strano come un incarico pesi di più proprio quando sta per finire.",
		"Accettato, ringraziato, chiuso. Qualunque cosa dovessi a quel lavoro, adesso non la devo più.",
		"Un peso in meno. Non mi ero {g:accorto|accorta} di quanto lo portassi finché non l'ho posato.",
	},
	["sw.quest_complete.w04.002"] = {
		"Altro? Chiedi in fretta, prima che lo vengano a sapere i miei piedi.",
		"Se c'è altro lavoro, dovrai chiederlo ai miei stivali. Da me non prendono più ordini.",
		"Se c'è dell'altro, lo faccio. Lasciami solo sedere il tempo di lamentarmi.",
	},
	["sw.quest_complete.w04.003"] = {
		"ha appena riposto la ricompensa e già un venditore ambulante {g:gli|le} spunta accanto con qualcosa di luccicante da vendere.",
		"nasconde la ricompensa, ma troppo tardi: due merciai l'hanno già notata e si avvicinano con aria distratta.",
		"mette via la ricompensa proprio mentre un mercante, tre banchi più in là, comincia a gridare le offerte un po' più forte.",
	},
	["sw.quest_complete.w04.004"] = {
		"Il ringraziamento è stato di tre parole. Il resto l'ha detto la faccia.",
		"Non un gran discorso, quel grazie. Il sollievo negli occhi ha fatto il resto.",
		"Non hanno detto molto. Non serviva: ho visto le loro spalle che si abbassavano.",
	},
	["sw.quest_complete.w04.005"] = {
		"Felice di aiutare. E adesso, quale di queste strade profuma di più di torta calda?",
		"L'ho fatto volentieri. Indicami qualcosa di caldo da mangiare e siamo pari.",
		"È stato un piacere. E adesso il piacere vorrebbe una scodella di stufato.",
	},
	["sw.quest_complete.w04.006"] = {
		"Uno stormo di piccioni si alza dalla strada proprio mentre finisco. Lo prendo per un applauso.",
		"I piccioni partono tutti insieme, con un gran battere d'ali. Il modo di Stormwind di fare un'ovazione.",
		"Qui vicino un tetto intero di piccioni si leva con gran fracasso. Un applauso, in un certo senso.",
	},
	["sw.quest_complete.w04.007"] = {
		"riceve un breve cenno formale di ringraziamento, di quelli che danno gli ufficiali della città, e lo ricambia.",
		"viene {g:ringraziato|ringraziata} con un piccolo inchino rigido, la cortesia di una capitale, e risponde con uno dei suoi.",
		"accetta un cenno asciutto che sembra portarsi dietro tutta l'etichetta di un regno, e ricambia.",
	},
	["sw.quest_complete.w04.008"] = {
		"Domani nessuno si ricorderà che c'era un problema. È così che capisci che è stato risolto.",
		"In una città, il lavoro fatto bene è quello che sparisce. Domani questo sarà semplicemente come vanno le cose.",
		"Nessuno noterà cosa è cambiato oggi. È il massimo a cui può aspirare un lavoro così.",
	},
	["sw.quest_complete.w04.009"] = {
		"Un piacere. Dillo agli amici: lavoro onesto e passo svelto.",
		"Quando vuoi. Se ai tuoi vicini serve qualcosa, sai dove trovarmi. Più o meno.",
		"Bene che sia sistemato. Spargi la voce: in città c'è un paio di mani che non ha paura di lavorare.",
	},
	["sw.quest_complete.w04.010"] = {
		"Risolto, per ora. In una città così grande lo stesso guaio busserà a un'altra porta la settimana prossima.",
		"Finita. E oltre i canali la prossima sta già cominciando. Alle città i guai non mancano mai.",
		"È sistemata. Domani un'altra strada avrà bisogno dello stesso aiuto. Non è una sconfitta: è Stormwind.",
	},
	["sw.quest_complete.w04.011"] = {
		"si stiracchia finché la schiena non scrocchia forte, poi si fa da parte per lasciar passare un carro.",
		"fa ruotare le spalle, il lavoro ormai alle spalle, e si scansa davanti a un facchino con un barile sulla schiena.",
		"tira un lungo respiro e si sposta di lato mentre un carro sferraglia oltre, già diretto altrove.",
	},
	["sw.quest_complete.w04.012"] = {
		"Metà di questo andrà all'armaiolo prima ancora di scaldarsi nella mia borsa.",
		"La ricompensa è bella. Il conto delle riparazioni che mi aspetta nel quartiere dei nani è più bello, per il fabbro.",
		"Sento già un'incudine del quartiere dei nani che reclama la sua parte.",
	},
	["sw.quest_complete.w04.013"] = {
		"Se qualcuno chiede, è stato pericolosissimo e io ho avuto un coraggio da leone.",
		"Ricordati di raccontare in giro che ci ho messo un eroismo smisurato. E aggiungi «affascinante», se riesci.",
		"Quando racconterai questa storia, gonfiala un po'. Non ti smentirò.",
	},
	["sw.quest_complete.w04.014"] = {
		"In una capitale la gente non ha tempo per i ringraziamenti lunghi. Uno veloce, da qualcuno di fretta, vale doppio.",
		"In una città che corre così, qualcuno si è fermato a dirmi grazie. Questo me lo tengo.",
		"Qui sono tutti in ritardo per qualcosa. Si sono fermati lo stesso, giusto il tempo di ringraziarmi.",
	},
	["sw.quest_complete.w04.015"] = {
		"rigira una volta la ricompensa nel palmo, come per assicurarsi che sia vera, poi la mette via.",
		"soppesa per un attimo in una mano quello che ha ricevuto, prima di riporlo con cura.",
		"abbassa lo sguardo sulla ricompensa, poi lo rialza sulla strada affollata, e la infila nella sacca senza una parola.",
	},
	["sw.quest_complete.w04.016"] = {
		"Stanno già guardando oltre me, al prossimo problema. Giusto. Anch'io.",
		"Un grazie, un cenno, e gli occhi tornano subito a quello che viene dopo. Conosco la sensazione.",
		"Un ringraziamento veloce e poi di nuovo quello sguardo lontano. Qualunque cosa venga adesso, ci stanno già pensando.",
	},
	["sw.quest_complete.w04.017"] = {
		"Ecco. È fatta. Niente discorsi, per favore.",
		"Tutto qui. Il grazie fallo breve: ho da fare.",
		"Finito, sistemato, pagato. Risparmiami le cerimonie.",
	},
	["sw.quest_complete.w04.018"] = {
		"Anche a quest'ora della notte c'era ancora qualcuno che aspettava questo. Le lanterne sono accese; il lavoro è fatto.",
		"È tardi, e le strade si sono fatte silenziose. Un lavoro finito alla luce delle lanterne conta lo stesso.",
		"Notte sopra i tetti, e un'altra faccenda sistemata prima di andare a letto.",
	},
	["sw.quest_complete.w04.019"] = {
		"Sistemato prima che la città si sia svegliata davvero. Io e i fornai, gli unici al lavoro.",
		"È ancora presto. I primi carri stanno entrando solo adesso, e il mio incarico è già alle spalle.",
		"Concluso alla prima luce. Qualunque cosa porti la giornata, comincia con una cosa in meno da fare.",
	},
	["sw.quest_complete.w04.020"] = {
		"Sistemato, e sono {g:mezzo fradicio|mezza fradicia}. Il resto di me se lo prenda la pioggia.",
		"Finito, con la pioggia che mi gocciola dalla punta del naso. A Stormwind sembra che nessuno faccia più caso alla pioggia.",
		"Acqua giù per il colletto, il lavoro alle spalle. La pioggia e io abbiamo fatto la nostra parte.",
	},
	["sw.quest_complete.w04.021"] = {
		"Mi hanno pagato. Una ricompensa vera, per un lavoro vero, nella capitale. Potrei abituarmici.",
		"Un'intera capitale, e ha affidato a me un pezzo dei suoi affari. A me.",
		"La ricompensa è modesta. La sensazione di essere utile a Stormwind no.",
	},
	["sw.quest_complete.w04.022"] = {
		"Dopo tutto quello che c'è là fuori, un semplice grazie in una strada di città arriva ancora. Bene.",
		"Le strade che percorro ora sono cupe. Una via sicura e una faccia riconoscente valgono il viaggio di ritorno.",
		"Strano: le grandi battaglie lasciano meno segno del grazie di uno sconosciuto in città.",
	},
	["sw.quest_complete.w04.023"] = {
		"Di nuovo tra la folla. Nemmeno una faccia qui sa cosa ho appena concluso, e scopro che mi piace.",
		"La strada mi inghiotte di nuovo. Nessuno si volta, nessuno sa. Una quiete comoda.",
		"Concluso, e di nuovo invisibile tra carri e compratori. A volte la ricompensa è solo che nessuno ti cerchi.",
	},
	["sw.quest_complete.w04.024"] = {
		"Un'altra persona in questa città che mi saluterà quando passo. Le sto collezionando.",
		"Ecco un'altra faccia amica per la prossima volta che attraverso la città.",
		"Bene. Adesso a Stormwind c'è qualcun altro che mi dirà buongiorno.",
	},
	["sw.quest_complete.w04.025"] = {
		"si appollaia su un muretto per mettere ordine nella sacca, sistemando quello che è rimasto dopo il lavoro.",
		"si siede sul bordo di un muretto e fa l'inventario delle provviste sopravvissute all'impresa.",
		"trova un davanzale lontano dal viavai e rifà lo zaino, un po' più in ordine di prima.",
	},
	["sw.quest_complete.w04.026"] = {
		"I miei piedi vorrebbero dire due parole su questo lavoro. Ho detto loro di aspettare il turno.",
		"Ogni passo di quel lavoro è finito nei polpacci, e loro tengono il conto.",
		"Le mie gambe hanno delle opinioni su tutto questo. Le ascolterò quando avrò trovato una sedia.",
	},
	["sw.quest_complete.w04.027"] = {
		"Per Stormwind, allora. Nessun disturbo.",
		"Qualunque cosa aiuti la città. Chiamami ancora.",
		"Felice di servire, nel mio piccolo. Il lavoro del leone non finisce mai.",
	},
	["sw.quest_complete.w04.028"] = {
		"Ogni incarico che riporto qui aggiunge un nome all'elenco delle persone che conosco in questa città.",
		"Una faccia in più, una porta in più, un nome in più. Poco a poco questa città diventa una mappa che porto in testa.",
		"Più lavoro consegno qui, meno Stormwind mi sembra un labirinto.",
	},
	["sw.quest_complete.w04.029"] = {
		"lascia la ricompensa nel palmo aperto per un momento, mentre sopra i tetti una campana batte l'ora.",
		"si ferma mentre una campana sopra la città rintocca l'ora, come se tutta Stormwind segnasse il momento.",
		"sente l'ora suonare da una torre mentre l'affare si chiude, e rimane in ascolto finché l'ultimo rintocco non svanisce.",
	},
	["sw.quest_complete.w04.030"] = {
		"Una parte della ricompensa era lo sguardo di sollievo su quella faccia. Peccato che nessun mercante lo accetti.",
		"La parte migliore del compenso è stato quel sospiro di sollievo. Non si spende, non si deposita in banca, e non mi esce dalla testa.",
	},
	["sw.quest_complete.w04.031"] = {
		"In questa città ogni favore finisce scritto da qualche parte. Il registro di qualche nobile ha appena guadagnato una riga col mio nome.",
		"In qualche bella casa qualcuno tiene il conto di chi ha aiutato chi. Oggi può aggiungere anche me.",
		"Stormwind non dimentica mai un favore. Lo archivia, nello studio di qualche nobile, per usarlo più avanti.",
	},
	["sw.quest_complete.w04.032"] = {
		"Uno è andato. La giornata non è finita, e nemmeno io.",
		"E uno. Il prossimo.",
		"Sistemato. Ho energie per ben più di un lavoro.",
	},
	["sw.quest_complete.w04.033"] = {
		"Due tentativi, ma è fatta. La città non ha bisogno di sapere del primo.",
		"Secondo tentativo, e stavolta è andata. Dell'altro non parliamo mai più.",
	},
	["sw.quest_complete.w04.034"] = {
		"Mura alte, eppure i guai del regno entrano dalla porta come chiunque altro. Oggi uno l'ho rimandato fuori io.",
		"La capitale ama credersi al sicuro dietro la pietra. Poi qualcuno ha bisogno d'aiuto, e la pietra non serve a niente.",
		"Le mura fermano gli eserciti, non i problemi. Per quelli servono mani, e oggi c'erano le mie.",
	},
	["sw.reputation_change.w04.001"] = {
		"Il registro della buona volontà pende un po' di più dalla mia parte. In questa città conta più delle monete.",
		"Un po' di fiducia in più, guadagnata a fatica. In una capitale vale più dell'oro, ed è più difficile da spendere.",
		"Ora diranno il mio nome con un po' più di gentilezza. Cercherò di non dar loro motivo di dimenticare perché.",
	},
	["sw.rest_enter.w04.001"] = {
		"Una stanza con la finestra sulla strada. Il rumore della città sale attutito, come un fiume sentito attraverso un muro.",
		"Imposte socchiuse, un letto che non si muove, la strada che mormora là sotto. Potrei restarci una settimana.",
		"Finalmente al chiuso. Là fuori la città va avanti senza di me, ed è proprio così che la voglio adesso.",
	},
	["sw.rest_enter.w04.002"] = {
		"appende il mantello a un piolo vicino alla porta e slaccia tutto quello che stringeva da ore.",
		"posa la sacca, allenta la cintura di un buco e si lascia cadere sulla panca più vicina con un sospiro.",
		"batte gli stivali sulla soglia per scuoterne la polvere della strada e lascia che il tepore della stanza faccia il resto.",
	},
	["sw.rest_enter.w04.003"] = {
		"Mura di città, guardie di città. Per una volta la ronda tocca a qualcun altro.",
		"Qui nessuno ha bisogno che io faccia la guardia. Rischio di dimenticare come si dorme col sonno leggero.",
		"Mi siedo, e non mi alzo finché qualcuno non mi porta da mangiare.",
	},
	["sw.rest_enter.w04.004"] = {
		"Dentro queste mura le spalle si abbassano da sole. Non gliel'ho detto io.",
		"Mi sorprendo ad ascoltare se ci sono passi alle mie spalle, poi mi ricordo dove sono e smetto.",
		"Nel profondo, una sentinella smonta dal turno. Non mi ero {g:accorto|accorta} che fosse lì.",
	},
	["sw.rest_enter.w04.005"] = {
		"si appoggia a un muro in un angolo tranquillo della strada e lascia scivolare la sacca sui ciottoli.",
		"trova uno scalino fuori dal passaggio della folla e si siede, i gomiti sulle ginocchia, a guardare Stormwind che sbriga i suoi affari.",
		"si sistema sul bordo basso di una fioriera sotto una finestra, le gambe allungate sul selciato.",
	},
	["sw.rest_enter.w04.006"] = {
		"Mura sicure, eppure i pensieri sono ancora fuori sulla strada. Entreranno quando saranno pronti.",
		"La città è calma. Sono io a non esserlo, ancora. Dammi il tempo di una tazza di qualcosa di caldo.",
		"Riposo, lo chiamano. La mia testa non l'ha saputo: sta ancora contando tutto quello che potrebbe andare storto.",
	},
	["sw.rest_enter.w04.007"] = {
		"Una notte intera in un letto vero, con una serratura alla porta e una guardia cittadina fuori. Un lusso.",
		"Notte, e niente da fare se non dormire. Quasi dimenticavo che fosse permesso.",
		"Di sotto le lanterne sono accese e la notte è un problema di qualcun altro. Cuscino, arrivo.",
	},
	["sw.thanks.w04.001"] = {
		"Grazie. È un'altra cortesia che devo a questa città.",
		"Grazie mille. Ricordami in che taverna bevi: il prossimo giro lo offro io.",
		"Grazie davvero. Le maniere di Stormwind sono migliori della sua fama.",
	},
	["sw.thanks.w04.002"] = {
		"Hai la mia gratitudine, e la mia parola che passerò la gentilezza a qualcun altro.",
		"Sono in debito con te. Non lo dimenticherò quando lascerò la città.",
	},
	["sw.travel.w04.001"] = {
		"chiude la mano sulla pietra del ritorno in mezzo alla folla, e l'unico ad accorgersi della sua partenza è un piccione.",
		"lascia che il calore della pietra del ritorno {g:gli|le} risalga lungo il braccio, mentre la gente di Stormwind scorre intorno senza accorgersi di nulla.",
	},
	["sw.weather_change.w04.001"] = {
		"guarda la pioggia butterare l'acqua verde dei canali, mentre i barcaioli tirano teli cerati sopra il carico.",
		"si ferma su un ponte mentre comincia la pioggia, e il canale di sotto si riempie di mille piccoli cerchi.",
		"vede la pioggia arrivare prima sui canali, un sibilo che corre sull'acqua da un ponte all'altro.",
	},
	["sw.weather_change.w04.002"] = {
		"Pioggia sui tetti d'ardesia, e tutta la città sa di pietra bagnata e di fumo di camino.",
		"La pioggia tira fuori l'odore della città: pietra umida, fumo di carbone, e sotto tutto qualcosa che cuoce.",
		"Pioggia, e Stormwind prende il colore del peltro. Bagnata, la pietra ha un odore più vecchio, e il fumo resta basso.",
	},
	["sw.weather_change.w04.003"] = {
		"Ogni tettoia di Stormwind è appena diventata il posto più ambito della città.",
		"Pioggia! Guarda come si riempiono le porte di gente che all'improvviso ha bisogno di guardare cappelli.",
		"Eccola. Mezzo mercato sotto una tettoia, e l'altra metà che finge di non badare a bagnarsi.",
	},
	["sw.weather_change.w04.004"] = {
		"guarda la nebbia riempire prima i canali, come versata da una brocca, e poi traboccare dalle rive nelle strade.",
		"vede sparire l'altro capo del ponte mentre la nebbia sale dall'acqua, e una lanterna diventa una macchia gialla.",
		"nota la nebbia infittirsi finché le guardie all'angolo dopo non sono che sagome con le alabarde.",
	},
	["sw.weather_change.w04.005"] = {
		"Nella nebbia la città diventa tutta voci: un carro che non vedo, una risata senza faccia, una porta che si chiude chissà dove.",
		"Nebbia. Sento tutta la strada e non ne vedo quasi niente, voci che passano senza nessuno attaccato.",
		"La nebbia si prende prima le torri, poi i tetti, poi l'altro lato della strada. Solo le voci restano al loro posto.",
	},
	["sw.weather_change.w04.006"] = {
		"guarda le nuvole squarciarsi sopra Stormwind e le mura bianche accendersi al sole di una luce quasi troppo forte da guardare.",
		"strizza gli occhi mentre il cielo si apre e il sole cade tutto insieme sui tetti azzurri e sulla pietra bianca.",
		"vede il grigio rompersi nel cielo, e il sole far risaltare l'oro di ogni stendardo lungo la via.",
	},
	["sw.weather_change.w04.007"] = {
		"Il tempo si apre, e la strada si riempie di nuovo come se qualcuno avesse spalancato un cancello.",
		"Di nuovo sereno. I mercanti riavvolgono le tende e le grida riprendono, più forti, per recuperare il tempo perso.",
		"Il grigio se ne va, e tutti nella piazza sembrano raddrizzarsi nello stesso momento.",
	},
	["sw.weather_change.w04.008"] = {
		"Il tempo è cambiato. Bene. Cominciavo a dimenticare di che colore è questa città.",
		"Ecco, cielo sereno. Adesso i canali possono tornare a fare i belli.",
	},
	["sw.weather_change.w04.009"] = {
		"Pioggia notturna su Stormwind. Le lanterne sfrigolano, i canali salgono di un dito, e le strade sono delle guardie.",
		"Pioggia nel buio: ogni lanterna ha un alone, e i ciottoli luccicano come il canale stesso.",
		"Si prepara una notte bagnata. Le taverne saranno piene e i ponti vuoti.",
	},
	["sw.jest.w05.001"] = {
		"I canali di Stormwind sono una gran comodità. Qualunque cosa ti cada da un ponte, te la custodiscono per sempre.",
		"A Stormwind i canali li trovi sempre. Di solito mettendoci un piede dentro.",
	},
	["sw.pray.w05.001"] = {
		"Chiunque ascolti sopra le campane: riporta a casa ogni soldato partito dalla Valley of Heroes per la stessa strada, sulle sue gambe.",
		"Che tutti quelli usciti passando sotto le statue del portone rientrino sotto di loro, interi.",
	},
]==])
