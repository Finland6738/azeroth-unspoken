-- Italian texts of the regional pack eastern_stormwind (#102). The rules are in AzerothUnspoken_EasternKingdoms/Stormwind.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("elwynnforest", "itIT", "eastern_stormwind", function()
	return {
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
	}
end)
