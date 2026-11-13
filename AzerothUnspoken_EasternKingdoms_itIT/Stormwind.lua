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
	["sw.muse.w19.acolyte.001"] = {
		"lascia passare un accolito vestito di bianco che attraversa la città di corsa per una commissione, la tonaca tirata su fino al ginocchio e l'orlo diventato marrone per i rigagnoli.",
		"guarda un giovane accolito schivare un carro, un facchino e un cane addormentato in una sola falcata, la tonaca bianca stretta in un pugno e una lettera sigillata tra i denti.",
	},
	["sw.muse.w19.acolyte.002"] = {
		"I sacerdoti della cattedrale ti rimettono a posto qualunque cosa porti loro: il taglio, la febbre, la costola incrinata. La predica su come te la sei procurata è compresa nel prezzo, e anche la seconda.",
		"Un sacerdote della cattedrale guarisce con una mano e ti agita l'indice davanti con l'altra. Te ne vai {g:guarito|guarita} e un po' {g:mortificato|mortificata}, che probabilmente è la cura completa.",
		"Fatti rattoppare alla cattedrale e te ne andrai con una benda pulita, una predica sulla prudenza e la netta sensazione di aver preso una sgridata da qualcuno di molto gentile.",
	},
	["sw.muse.w19.acolyte.003"] = {
		"Le mani dei sacerdoti hanno tutte lo stesso odore: cera d'api, erbe pestate e il sapone giallo con cui si strofinano tra un malato e l'altro. Te ne accorgi quando uno di loro ti solleva il mento per guardare un taglio.",
		"Una sacerdotessa della cattedrale mi ha girato il viso verso la lampada per guardare un'escoriazione. Le sue dita sapevano di cera e di erbe amare, e non tremavano affatto.",
	},
	["sw.muse.w19.acolyte.004"] = {
		"sosta accanto a una fila di giovani paladini seduti sui gradini della cattedrale, ognuno con una corazza sulle ginocchia e uno straccio che gira in cerchi lenti.",
		"passa accanto a una fila di scudieri che lucidano armature sui gradini della cattedrale, nessuno che parli, tutti a controllarsi nel riflesso quando credono che nessuno guardi.",
	},
	["sw.muse.w19.acolyte.005"] = {
		"Alla cattedrale c'è un vecchio sacerdote che non riesce a tenere a mente un solo nome e si ricorda ogni ferita che abbia mai chiuso. Saluta la gente per le cicatrici.",
		"Un anziano sacerdote della cattedrale dimentica il tuo nome prima che tu abbia finito di dirlo. Mostragli una cicatrice, però, e ti dirà l'anno in cui l'ha ricucita.",
		"Il guaritore più anziano della cattedrale non sa dirti chi sei, ma mostragli una cicatrice e ti dirà di chi è il lavoro, e se l'hanno fatto in fretta.",
	},
	["sw.muse.w19.acolyte.006"] = {
		"Ho visto un paladino comprare una focaccina al miele e mangiarsela in due morsi dietro una colonna. Anche i campioni della Luce hanno un punto debole.",
		"Un paladino in armatura completa che si sbafa un dolcetto di nascosto fuori dalla cattedrale. Non lo dirò a nessuno. Quasi.",
	},
	["sw.muse.w19.acolyte.007"] = {
		"Gli accoliti spettegolano su chi sarà il prossimo a diventare sacerdote come gli stallieri spettegolano sui cavalli: con passione, a sproposito, e sottovoce dietro gli innari.",
		"Dietro la calma della cattedrale c'è un'intera corte di bisbigli. Quale accolito preferiscono i sacerdoti anziani, chi ha impappinato una benedizione, a chi hanno dovuto allargare di nuovo la tonaca.",
	},
	["sw.muse.w19.acolyte.008"] = {
		"Quando l'arcivescovo Benedictus attraversa la Cathedral Square, la gente si scosta prima ancora di accorgersene. Lui non chiede mai. La folla si apre e basta, come un libro alla pagina segnata.",
		"Ho visto una folla di mercato aprirsi davanti all'arcivescovo senza che nessuno dicesse una parola. Benedictus annuisce a destra e a sinistra mentre passa, come se ringraziasse ogni pietra.",
	},
	["sw.muse.w19.acolyte.009"] = {
		"Sentito per strada: un sacerdote della cattedrale che contratta con un candelaio il prezzo del sego, e vince. La serenità ha i suoi usi, al banco.",
		"Una sacerdotessa della cattedrale contratta come un vecchio furiere. Voce calma, mani giunte, e non si sposta di un rame finché il candelaio non si arrende.",
	},
	["sw.muse.w19.acolyte.010"] = {
		"rallenta a guardare un sacerdote inginocchiarsi in mezzo alla strada per pulire il ginocchio sbucciato di un bambino, parlando intanto di tutt'altro perché il piccolo si dimentichi di piangere.",
		"nota un accolito accovacciato accanto a un bambino in lacrime, che gli tampona un ginocchio sbucciato e promette solenne che il ciottolo è stato punito.",
	},
	["sw.muse.w19.acolyte.011"] = {
		"Un'elfa della notte è rimasta a lungo sulla porta della cattedrale, a leggere le vetrate come si legge una lettera in una lingua che si conosce a metà. Poi si è inchinata, educatamente, e se n'è andata.",
		"Certi elfi della notte visitano la cattedrale come si visita il santuario di un vicino: cortesi, curiosi, e attenti a non toccare niente.",
	},
	["sw.muse.w19.acolyte.012"] = {
		"Nel coro della cattedrale c'è un sacerdote che canta forte e male, e gli altri si sono disposti attorno a lui come scalpellini attorno a una pietra storta. L'inno esce dritto lo stesso.",
		"Tra i cantori della cattedrale c'è una voce che si allontana dalla nota. Hanno smesso di provare a correggerla: cantano solo un po' più forte da entrambi i lati.",
		"Nessuno corregge il sacerdote che sbraita un pelo fuori dalla nota nel coro della cattedrale. Gli si stringono attorno e lo portano, come soldati che sostengono un amico con una gamba malandata.",
	},
	["sw.muse.w19.acolyte.013"] = {
		"Hai mai sentito una fila di paladini inginocchiarsi tutti insieme? Sembra un cassetto di posate che cade in un pozzo.",
		"Quando i paladini si inginocchiano insieme nella cattedrale sembra che sia caduta una fucina intera. Poi: silenzio perfetto. Del silenzio vanno molto fieri.",
		"Una dozzina di paladini che piegano un ginocchio tutti insieme: un fracasso, e poi una quiete così densa da piantarci un cucchiaio.",
	},
	["sw.muse.w19.acolyte.014"] = {
		"Certi paladini anziani della cattedrale pregano a occhi aperti. L'hanno imparato a Lordaeron, ha detto uno di loro, dove i morti non sempre restavano dove li avevi deposti.",
		"I paladini che hanno servito al nord li riconosci: si inginocchiano rivolti verso le porte, non verso l'altare. Vecchia abitudine, mi ha detto uno. Lassù i morti entravano senza essere invitati.",
	},
	["sw.muse.w19.acolyte.015"] = {
		"Ho perso fiducia in tante cose: i nobili, i prezzi, la posta. Non nei sacerdoti della cattedrale. Arrivano dove fa più male e restano finché non va meglio. In un regno che continua a perdere i suoi re, non è poco.",
		"I re scompaiono e i nobili litigano, ma i sacerdoti della cattedrale sono sempre dove fa più male, con le maniche rimboccate. È questa la Luce in cui credo: quella che si presenta.",
	},
	["sw.muse.w19.acolyte.016"] = {
		"guarda un paladino in armatura lucida spingere con la spalla la ruota bloccata di un carro, liberarla dal rigagnolo e proseguire, mentre i ringraziamenti del carrettiere gli corrono dietro.",
		"osserva un paladino che si china a sollevare da solo il retro di un carretto impantanato, lo rimette sui ciottoli e con un cenno lascia andare il proprietario, come se anche questo facesse parte del giuramento.",
	},
	["sw.muse.w19.acolyte.017"] = {
		"L'Alleanza tiene i suoi sacerdoti in quella loro grande cattedrale. Se sapessero chi sono, credo che prima mi curerebbero e poi chiamerebbero le guardie. È questo che mi inquieta.",
		"Ogni sacerdote di questa città mi fascerebbe le ferite, così mi dicono, prima di consegnarmi alle guardie. Non so cosa farmene di un nemico così.",
	},
	["sw.muse.w19.acolyte.018"] = {
		"riceve un piccolo inchino da un sacerdote che passa nella direzione opposta, lo stesso inchino che la gente della cattedrale riserva a un mendicante come a un signore.",
		"riceve un rapido cenno e un saluto mormorato da un sacerdote vestito di bianco intento a qualche commissione, che sparisce prima di poter essere ricambiato.",
		"incrocia lo sguardo di un accolito di passaggio, che sorride come se si conoscessero da sempre e tira dritto.",
	},
	["sw.muse.w19.acolyte.019"] = {
		"Mai discutere di dottrina con un paladino. Sono addestrati a tenere una posizione per ore.",
		"Discuti della Luce con un paladino, se vuoi. Portati una sedia. A lui non servirà.",
		"Ho fatto a un paladino una domanda semplice sulla Luce. È passato un po'. Credo che stia ancora rispondendo.",
	},
	["sw.muse.w19.ale.001"] = {
		"Alla forgia che ha avuto la settimana migliore tocca il barilotto sulla soglia, dicono i nani del Dwarven District. Si sposta. Per qualcuno seguirlo è un passatempo.",
		"C'è un barile che gira di forgia in forgia nel Dwarven District, mi ha detto un fabbro, e si ferma dove il lavoro è andato meglio. Questa settimana sta dal fabbricante di chiodi, e nessuno se l'aspettava.",
	},
	["sw.muse.w19.ale.002"] = {
		"Chiedi la strada a un nano del Dwarven District e avrai la strada, una storia e un boccale. In quest'ordine, se ti va bene.",
		"Ho chiesto indicazioni a un nano e me le ha date con mezzo boccale di birra. Mi sono venute in mente altre domande.",
		"Le indicazioni di un nano somigliano alla sua birra: generose, e con la schiuma sopra.",
	},
	["sw.muse.w19.ale.003"] = {
		"Un nano a un tavolo sulla soglia ha alzato il boccale a Gnomeregan, e lo gnomo vicino a lui non ha detto niente, ha solo alzato il suo. Il brindisi è stato tutto lì.",
		"I nani del Dwarven District lasciano l'ultimo sorso nel boccale per chi non è tornato, mi ha detto un fabbro. Lì ogni giro finisce con un fondo pieno.",
		"C'è un brindisi che i nani di qui fanno senza parole: il boccale alzato, tenuto un momento verso il tram, e posato senza berne. Ai forestieri nessuno lo spiega.",
	},
	["sw.muse.w19.ale.004"] = {
		"siede un po' sul bordo di una vasca di pietra accanto a un nano che beve da solo su una soglia; nessuno dei due dice una parola, e a nessuno dei due sembra dispiacere.",
		"divide un tratto di muro silenzioso con un nano che si coccola un boccale, tutti e due a guardare la strada che passa come uno spettacolo che nessuno ha pagato.",
	},
	["sw.muse.w19.ale.005"] = {
		"I barili che arrivano col tram sono tutti marcati «attrezzi». I nani del Dwarven District sono attrezzatissimi.",
		"Una cassa arrivata col tram con su scritto «ingranaggi, fragile» sciaborda quando la posano. Nel Dwarven District nessuno dice una parola, e qualcuno va a prendere i boccali.",
	},
	["sw.muse.w19.ale.006"] = {
		"Nel Dwarven District c'è quasi sempre una porta da cui escono nani che cantano in una lingua che la città non parla. Non ne capisco una parola, e so benissimo cosa vuol dire.",
		"Voci naniche da una porta, profonde e un po' stonate, che cantano nella loro lingua. Le parole mi sfuggono. La nostalgia di una montagna no.",
	},
	["sw.muse.w19.ale.007"] = {
		"A Ironforge, allora, da questo capo del tunnel.",
		"Uno per Ironforge, e uno per quei poveri pazzi che hanno scavato la strada fin lassù.",
		"Al tunnel: l'unica cosa tra due capitali che non litiga mai.",
	},
	["sw.muse.w19.ale.008"] = {
		"Nel Dwarven District c'è sempre qualcuno che fa la birra. L'odore del malto passa tra il fumo del carbone come un pensiero buono che ne interrompe uno cattivo.",
		"Fumo di carbone, ferro caldo, e poi, senza preavviso, un'ondata tiepida di malto dal retrobottega di qualche nano. Il Dwarven District sa cosa conta.",
	},
	["sw.muse.w19.ale.009"] = {
		"guarda un fabbro nano svuotare un boccale in un sorso solo, posarlo sull'incudine e tornare subito a martellare, come se fosse stato un goccio d'acqua.",
		"nota che ogni incudine della fila delle forge ha un boccale parcheggiato sul tallone, a distanza di sicurezza dal martello, sistemato con la stessa cura delle tenaglie.",
	},
	["sw.muse.w19.ale.010"] = {
		"Anche gli gnomi bevono nel Dwarven District, da boccali che gli arrivano al mento, e reggono la birra molto meglio di quanto chiunque si aspetti. I nani hanno smesso da tempo di scommettere contro di loro.",
		"Mai sfidare uno gnomo a chi beve di più nel Dwarven District. Sono piccoli, sì, e hanno passato tutta la vita a essere sottovalutati, e tengono il conto.",
	},
	["sw.muse.w19.ale.011"] = {
		"La birra, nel Dwarven District, passa sopra le soglie, non sopra un bancone, come si beve da noi. Per un momento è Ironforge, con un mare di mezzo.",
		"Un boccale dalla soglia di uno sconosciuto, un cenno, due parole in nanico. Basta questo perché Stormwind smetta per un po' di sembrare una città di umani.",
	},
	["sw.muse.w19.ale.012"] = {
		"Re Magni ha il primo boccale, nel Dwarven District, e il ragazzo della Stormwind Keep, dopo una pausa, il secondo. La pausa dice più del brindisi.",
		"Il primo boccale a Magni Bronzebeard, il secondo al giovane re della Stormwind Keep. I nani non saltano mai il secondo, ma prima di berlo abbassano sempre gli occhi sul tavolo.",
	},
	["sw.muse.w19.ale.013"] = {
		"Fumo, ferro e birra. Se il Dwarven District avesse uno stemma, sarebbe questo.",
		"Martello in una mano, boccale nell'altra. I nani del Dwarven District hanno il dono di fare bene due cose insieme.",
	},
	["sw.muse.w19.ale.014"] = {
		"guarda la fila delle forge zittirsi al tramonto, i martelli posati uno a uno e, al loro posto, i barili fatti rotolare sulle soglie.",
		"indugia mentre cala la luce e le forge vengono coperte, e i fabbri trascinano gli sgabelli in strada e spuntano i primi boccali.",
	},
	["sw.muse.w19.ale.015"] = {
		"Una stout nanica spillata a Stormwind sa del viaggio in tram, sostengono i nani: un po' scossa, e un po' fiera di esserlo. La bevono lo stesso, e piano.",
		"I nani dicono che la stout non sopporta i viaggi, e poi la spediscono per tutta la lunghezza di un tunnel per dimostrarlo, un barile dopo l'altro.",
	},
	["sw.muse.w19.ale.016"] = {
		"Un nano ha appena spinto un boccale verso uno gnomo senza dire niente, e lo gnomo ha annuito senza guardare. Certe amicizie non hanno bisogno di parole.",
		"Nani e gnomi bevono fianco a fianco nel Dwarven District e quasi non si parlano. Non serve. Hanno perso insieme una città intera di cose.",
	},
	["sw.muse.w19.alms.001"] = {
		"Quando si svuota la cassetta delle elemosine della cattedrale, due sacerdoti contano insieme, ciascuno con gli occhi sulle mani dell'altro. La fede è fede, e l'aritmetica è aritmetica.",
		"La cassetta delle offerte la contano due sacerdoti, moneta per moneta, uno legge il totale e l'altro lo controlla. Anche la Luce gradisce una seconda firma.",
		"Le monete della cassetta delle offerte si contano due volte, da due sacerdoti diversi, a due tavoli diversi. La Luce si fida di tutti; il registro di nessuno.",
	},
	["sw.muse.w19.alms.002"] = {
		"La minestra che i sacerdoti distribuiscono alla porta laterale della cattedrale è brodosa e sempre bollente. La fila è lunga e sempre silenziosa.",
		"Nella fila per la minestra della cattedrale nessuno parla. Tengono la scodella con tutte e due le mani e guardano la scodella, non gli altri.",
		"Minestra lunga, bollente, e una coda di gente che ha imparato a non farsi vedere mentre aspetta. I sacerdoti versano senza alzare gli occhi, ed è già una gentilezza.",
	},
	["sw.muse.w19.alms.003"] = {
		"Gli accoliti smistano i vestiti donati alla cattedrale sui gradini: cappotti da una parte, mantelli dall'altra, e una collinetta di stivali spaiati in attesa di compagni che non arrivano mai.",
		"Tra le cose della cattedrale c'è una cassa di stivali spaiati, tutti donati in buona fede e nessuno che faccia coppia con un altro. I poveri di Stormwind camminano sbilenchi e riconoscenti.",
	},
	["sw.muse.w19.alms.004"] = {
		"I mendicanti sui gradini della cattedrale riconoscono ogni sacerdote dal passo. Questo dà un rame, quello dà consigli, e quello alto dà tutte e due le cose e non finisce più.",
		"Chiedi a un mendicante della cattedrale a quale sacerdote rivolgerti e avrai un rapporto completo: chi è generoso, chi ha fretta, chi predica prima di pagare.",
	},
	["sw.muse.w19.alms.005"] = {
		"Sui gradini della cattedrale un sacerdote insegna a un gruppetto di orfani a far di conto con i rami della cassetta delle offerte. Ogni moneta viene contata due volte, poi torna dentro.",
		"Gli orfani imparano l'aritmetica dalla cassetta delle elemosine: un sacerdote rovescia i rami, loro contano, litigano, e ogni rame torna a casa nella cassetta.",
		"Rame dopo rame, gli orfani contano ad alta voce le elemosine della cattedrale. È l'unico denaro che toccheranno per anni, e lo maneggiano come vetro.",
	},
	["sw.muse.w19.alms.006"] = {
		"si fa da parte per due accoliti che portano un pentolone di minestra appeso a un palo, tutti e due attenti a tenere il passo per non versarne una goccia.",
		"lascia passare due accoliti che portano verso la cattedrale una pentola fumante appesa a un palo, il passo accordato come una pattuglia ben addestrata.",
	},
	["sw.muse.w19.alms.007"] = {
		"Cure gratis sui gradini della cattedrale. Guarda la fila: due facchini, una guardia e un borseggiatore con il polso slogato. La Luce non fa domande.",
		"Chiunque si sieda su quei gradini viene rimesso in sesto dai sacerdoti: facchini pieni di lividi, una lavandaia scottata, un borsaiolo che non vuol dire come.",
	},
	["sw.muse.w19.alms.008"] = {
		"I sacerdoti alla porta della cattedrale chiedono alle famiglie di Westfall da quale fattoria vengano. A ovest una fattoria è il nome di una famiglia, e quasi tutti quei nomi adesso sono cenere.",
		"I contadini di Westfall fanno la fila per la minestra della cattedrale con il cappello in mano, come un tempo facevano la fila al raccolto per vendere il grano a questa stessa città.",
	},
	["sw.muse.w19.alms.009"] = {
		"Il valletto di un nobile lascia cadere dall'alto una borsa pesante nella cassetta delle offerte, perché suoni, e aspetta di essere notato. L'accolito lo ringrazia sottovoce. Sembra che bruci.",
		"Certi doni alla cattedrale sono fatti per farsi sentire. Una borsa gonfia lasciata cadere dall'altezza della spalla, una pausa per l'applauso, e un sacerdote che mormora appena e passa oltre.",
	},
	["sw.muse.w19.alms.010"] = {
		"Un rame per la cassetta della cattedrale. La Luce i suoi conti li sistema da sé; la pentola della minestra no.",
		"Lascio qualcosa nella cassetta delle offerte. Qualunque cosa credano i sacerdoti, ci comprano le cipolle.",
		"Una moneta nella cassetta. Qualunque cosa ne faccia la Luce, la minestra avrà il suo sale.",
	},
	["sw.muse.w19.alms.011"] = {
		"Gli orfani della Cathedral Square guardano i paladini come altri bambini guardano i dolci in vetrina. Qualcuno un giorno sarà paladino. La maggior parte diventerà qualcosa di più silenzioso.",
		"Ogni orfano vicino alla cattedrale si è scelto un paladino da seguire con gli occhi. I paladini fingono di non accorgersene, e camminano un po' più dritti.",
	},
	["sw.muse.w19.alms.012"] = {
		"guarda una vecchia premere una moneta nella mano di un sacerdote, e il sacerdote richiuderle le dita sopra, tutti e due a litigare senza una parola.",
		"nota un sacerdote e una donna dai capelli grigi impegnati in una muta contesa per un solo rame, ciascuno deciso a farlo tenere all'altro.",
	},
	["sw.muse.w19.alms.013"] = {
		"I mendicanti dei gradini della cattedrale hanno i loro posti, e li tengono come i nobili tengono le terre. Il posto accanto alla porta passa di mano in mano; un forestiero comincia in fondo, negli spifferi.",
		"Sui gradini della cattedrale ogni mendicante ha il suo posto, e i posti hanno un rango. Il gradino in cima accanto alla porta si eredita, quello in fondo è dove si comincia, e nessuno salta la fila.",
	},
	["sw.muse.w19.alms.014"] = {
		"Ogni guerra vinta dall'Alleanza manda qualche vedova in più alla porta laterale della cattedrale. Anche le vittorie hanno un conto, e i sacerdoti ne pagano una parte in minestra.",
		"Ai soldati vanno i vessilli. Alle loro vedove la fila per la minestra dei sacerdoti. Sono entrambi dell'Alleanza, e solo uno finisce nelle canzoni.",
	},
	["sw.muse.w19.alms.015"] = {
		"Gli umani fanno l'elemosina a rami infilati in una fessura. Da noi si dà un piatto caldo e un posto a tavola. Comunque ho nutrito la fessura anch'io. Paese che vai.",
		"Una fessura in una cassetta: così fa la carità questa città. A Ironforge ti danno uno sgabello accanto al fuoco e una bella ramanzina. Ho infilato un rame, e la ramanzina mi è mancata.",
	},
	["sw.muse.w19.alms.016"] = {
		"Hai un cappotto che non metti mai? Portalo alla cattedrale. Gli accoliti gli troveranno una schiena entro un'ora.",
		"Mantelli vecchi, stivali spaiati, coperte in più: la cattedrale accetta tutto. Non badano alla taglia, solo a che tengano caldo.",
		"Prima di vendere quel vecchio mantello per due rami, pensa alla cattedrale. Su quei gradini c'è chi ne ha più bisogno di un rigattiere.",
	},
	["sw.muse.w19.apprentice.001"] = {
		"Quell'apprendista ha un sopracciglio solo. Uno. E cammina come se fosse previsto.",
		"Gli manca un sopracciglio e ne va fiero. Se non altro, la torre insegna la sicurezza.",
	},
	["sw.muse.w19.apprentice.002"] = {
		"tiene aperta la porta a un'apprendista con una pila di libri più alta di lei, e riceve un grazie soffocato da qualche punto dietro le rilegature.",
		"si scansa per un apprendista che scende la strada dietro una torre di libri, orientandosi col rumore della folla.",
		"afferra al volo il volume in cima che scivola dalle braccia di un apprendista, lo rimette sulla pila, e viene ringraziato da due occhi che sbucano di lato.",
	},
	["sw.muse.w19.apprentice.003"] = {
		"osserva un'apprendista in fila dal fornaio che prova un gesto con tutte e due le mani, piccolissimo, finché la donna dietro di lei arretra di un passo, con prudenza.",
		"nota un'apprendista in attesa del pane che continua a ripassare un minimo movimento delle dita, e lo spazio intorno a lei nella fila che a ogni prova si allarga un po'.",
		"sorprende un'apprendista in fila per il pane a provare un gesto sotto il mantello, e il fornaio che la serve per prima, in fretta, per mandarla via.",
	},
	["sw.muse.w19.apprentice.004"] = {
		"I maghi mandano i loro apprendisti a sbrigare ogni commissione della città. Metà dei bottegai di Stormwind li riconosce in faccia, l'altra metà dai buchi bruciati sulle maniche.",
		"Le commissioni dei maghi le fanno gli apprendisti: cera, filo, formaggio, un certo tipo di sale. A seguirne uno per tutta la città si impara più sulla torre che a restare davanti alla porta.",
		"La giornata di un apprendista, per quel che vedo, è fatta per nove decimi di commissioni e per un decimo di terrore, e di cosa si lamentano? Delle commissioni.",
	},
	["sw.muse.w19.apprentice.005"] = {
		"Un'apprendista seduta su un gradino, il viso fra le mani. Qualunque cosa sia andata storta a lezione, la strada le passa accanto e gliela lascia tenere.",
		"Sulla soglia di una casa, un'apprendista con la veste bruciacchiata: non piange, si guarda le mani come fossero di qualcun altro, qualcuno sbadato. Nessuno si ferma. In città anche questa può essere una gentilezza.",
	},
	["sw.muse.w19.apprentice.006"] = {
		"Il mese scorso un apprendista ha trasformato in ghiaccio un barile d'acqua intero, racconta il pescivendolo, e glielo ha venduto a buon prezzo. Da allora spera in un altro incidente.",
		"Il pescivendolo giura che la sua stagione migliore la deve a un apprendista che non riusciva a smettere di congelare le cose. Parla di quel ragazzo come i contadini parlano di un buon raccolto.",
	},
	["sw.muse.w19.apprentice.007"] = {
		"si fa da parte per una pecora randagia che scende la via con aria smarrita, mentre i passanti le lasciano un ampio e cortesissimo spazio.",
		"sorride a una pecora che non è di nessuno mentre passa davanti alla porta di un mago, e alla guardia che si tocca l'elmo per salutarla, non si sa mai.",
		"aspetta che una pecora dall'aria sperduta attraversi, e nota che in tutta la strada nessuno ride di lei.",
	},
	["sw.muse.w19.apprentice.008"] = {
		"si toglie di mezzo davanti a un cappello a punta che scende la strada all'altezza di una testa, senza niente che lo porti, col padrone che gli corre dietro.",
		"guarda passare il cappello di un apprendista all'altezza di un viso, placido come una chiatta, con l'apprendista due passi indietro che perde terreno.",
		"si abbassa mentre un rotolo {g:gli|le} passa accanto all'orecchio a passo svelto, tutto da solo, con un apprendista all'inseguimento che chiede scusa a tutti.",
	},
	["sw.muse.w19.apprentice.009"] = {
		"Occhio a dove lo punti, eh? Puntalo verso il canale. Il canale ne ha viste di peggio.",
		"Piano con quella roba! Se proprio deve partire, mirala verso l'acqua.",
		"Non verso il forno. Ovunque, ma non verso il forno.",
	},
	["sw.muse.w19.apprentice.010"] = {
		"guarda una fornaia rincorrere il figlio fuori dalla bottega con una spazzola, la veste nuova da apprendista bianca di farina dal colletto all'orlo.",
		"gira intorno a un ragazzo che consegna pagnotte con indosso una veste da apprendista nuova di zecca, infarinato fino ai gomiti e raggiante come una lanterna.",
	},
	["sw.muse.w19.apprentice.011"] = {
		"guarda un apprendista, messo all'angolo da un branco di bambini che reclamano una magia, sospirare e tirar fuori un rame da dietro l'orecchio del più piccolo, alla vecchia maniera.",
		"sorride mentre una nidiata di bambini insegue un apprendista per la via chiedendo un trucco, finché quello cede e fa sparire una moneta su per la manica, fra applausi scatenati.",
		"vede un apprendista negare la magia a una folla di bambini, poi cedere quel tanto che basta per far sparire un sassolino con nient'altro che dita svelte.",
	},
	["sw.muse.w19.apprentice.012"] = {
		"Uno degli apprendisti del quartiere ha la barba grigia. Certe lezioni richiedono più tempo, dice, e poi la veste gli sta ancora bene.",
		"Non tutti gli apprendisti sono ragazzi. Ce n'è uno con la barba grigia e un modo paziente di spazzare dietro agli altri, e i maestri gli parlano con un'altra voce.",
		"C'è un apprendista dalla barba grigia che spazza i gradini della torre e fa lezione accanto ai ragazzini. Il segreto, dice, è non farci caso.",
	},
	["sw.muse.w19.apprentice.013"] = {
		"I candelai di questa città dovrebbero fare una statua agli apprendisti. Di cera, s'intende.",
		"A Stormwind nessuno consuma più candele di un apprendista, né si addormenta accanto a più candele accese.",
	},
	["sw.muse.w19.apprentice.014"] = {
		"Fumo dal secondo piano e una voce che dice «va tutto bene, va tutto bene». Non va mai tutto bene.",
		"In quella strada ogni finestra è tenuta aperta. Lassù nessuno si fida a lungo dell'aria.",
		"Sentito quel botto? Aspetta un attimo. Ecco, adesso le urla.",
	},
	["sw.muse.w19.apprentice.015"] = {
		"Nel Mage Quarter, dicono i vicini, non si parla degli apprendisti che si sono spinti troppo in là. Si libera un letto, i libri tornano sullo scaffale, e le lezioni continuano.",
		"Ogni quartiere ha le sue perdite. Qui sono più silenziose: un nome che non si chiama più alla porta della torre, un posto alla tavola lunga che a fine settimana ha già preso qualcun altro.",
	},
	["sw.muse.w19.apprentice.016"] = {
		"nota una fila di secchi pieni allineati lungo un muro del Mage Quarter, come in altre strade si tengono i vasi di fiori.",
		"passa davanti a una porta dove un secchio d'acqua e una coperta umida ripiegata aspettano accanto al gradino, come altrove il raschiafango.",
		"conta cinque secchi d'acqua su cinque soglie di fila, e a giudicare dalla polvere nessuno è mai stato portato dentro per lavare qualcosa.",
	},
	["sw.muse.w19.arcane.001"] = {
		"Le lanterne del Mage Quarter si accendono da sole. Un lampionaio dell'Old Town mi ha detto che la prende come un'offesa personale.",
		"Per le lanterne viola del Mage Quarter nessuno sale su una scala. I lampionai del resto della città lo chiamano barare, e non scherzano.",
		"Ogni lanterna di Stormwind vuole una pertica, una fiamma e un uomo stanco, tranne quelle viola vicino alla torre. Gli uomini stanchi, su quelle, hanno le loro idee.",
	},
	["sw.muse.w19.arcane.002"] = {
		"si ferma sotto una lanterna viola che ronza mezzo tono sotto le vicine, e piega la testa come un violinista che sente una corda stonata.",
		"indugia sotto una lanterna del quartiere il cui ronzio cala appena rispetto a tutte le altre, e la guarda accigliandosi come si guarda un cantore stonato.",
		"ascolta le lanterne della via ronzare insieme, e poi quella che non ci riesce del tutto, e resta lì più a lungo di quanto la cosa meriti.",
	},
	["sw.muse.w19.arcane.003"] = {
		"I vetrai dovrebbero voler bene ai maghi. Ogni poche settimane salta una finestra, e salta sempre verso fuori.",
		"Nomina il Mage Quarter a un vetraio e lo vedrai sorridere. Vetri che si rompono da dentro: lavoro sicurissimo.",
		"È appena saltata una finestra nella via dei maghi. Chissà dove, un vetraio sorride.",
	},
	["sw.muse.w19.arcane.004"] = {
		"Nelle taverne i vecchi soldati abbassano la voce per una storia sola: un grande mago in una torre a sud-est, amico di re Llane, che aprì la porta da cui passarono gli orchi.",
		"Chiedi a un veterano perché Stormwind tenga i suoi maghi così d'occhio: forse avrai un nome che non pronuncia e una torre che non indica. Un amico del re, ti dirà, spalancò la strada agli orchi.",
		"Certi veterani sputano quando passano dal Mage Quarter. Non ai maghi, spiegano: a un ricordo. Una torre lontana, a sud-est, e un amico del re che fece entrare gli orchi.",
	},
	["sw.muse.w19.arcane.005"] = {
		"Una città che si tiene i maghi paga due volte: una in monete, l'altra in nervi.",
		"In guerra ogni città vuole i maghi sulle mura. In pace, però, deve abitarci accanto.",
		"Durante un assedio i maghi sono una benedizione. Il resto dell'anno gli compri i secchi.",
	},
	["sw.muse.w19.arcane.006"] = {
		"Vicino alla torre c'è una soglia con la brina in ogni stagione. La fornaia accanto ci tiene il burro.",
		"Una casa dalle parti dei maghi ha un gradino che non si scioglie mai. I vicini ci buttano il sale, sospirano, e hanno smesso di chiedere.",
		"Quel gradino vicino alla torre è brinato in qualunque stagione. Lì guarda dove metti i piedi.",
	},
	["sw.muse.w19.arcane.007"] = {
		"sosta su una soglia dove i peli degli avambracci si rizzano senza motivo, poi torna in strada e aspetta che si calmino.",
		"varca una soglia con tutti i peletti delle braccia ritti all'improvviso, e torna indietro da dove è {g:venuto|venuta}.",
	},
	["sw.muse.w19.arcane.008"] = {
		"guarda il viola dietro la finestra di un mago restare perfettamente immobile, senza il tremolio inquieto di una candela.",
		"cerca un guizzo nella luce dietro le imposte di un mago e non ne trova nessuno, solo un viola fermo che nessuna fiamma ha mai acceso.",
		"nota che il bagliore alle finestre dei maghi non vacilla mai, nemmeno quando sbatte una porta o un carro fa tremare la strada, e resta a guardarlo per un po'.",
	},
	["sw.muse.w19.arcane.009"] = {
		"Nelle storie la magia ruggisce. Nella vita volta pagine e impreca sottovoce.",
		"Tutto quel potere in una via sola, e la cosa più rumorosa è un bollitore.",
		"Tutti si aspettano che un mago crepiti e rimbombi. Per lo più ottieni sospiri sopra un libro.",
	},
	["sw.muse.w19.arcane.010"] = {
		"Le guardie dicono che il Mage Quarter è la ronda più tranquilla della città. Quelle che l'hanno fatta col buio non dicono niente.",
		"Per la Guardia il Mage Quarter è un giro facile. Chiedilo a una guardia che c'è capitata col buio, e ti chiederà solo da bere.",
		"Una guardia mi ha detto che il Mage Quarter alla Guardia non dà mai problemi. Poi si è guardata gli stivali per un po', come se le fosse tornata in mente un'eccezione.",
	},
	["sw.muse.w19.arcane.011"] = {
		"Quel piccione ha una piuma viola nella coda. No. Non lo chiedo.",
		"Perfino i piccioni intorno alla torre hanno qualcosa di strano. Uno mi ha appena fissato per troppo tempo.",
		"I piccioni vicino alla torre non si spaventano. Né per un grido né per un botto. Ne hanno sentite di peggio.",
	},
	["sw.muse.w19.arcane.012"] = {
		"Ogni tanto arriva dal nord un viandante vestito di viola, e i maghi della torre gli si stringono intorno come contadini attorno a chi ha visto il raccolto della valle accanto.",
		"Quando dal nord arriva un mago con delle notizie, tutto il quartiere sembra sporgersi in avanti. Qualunque cosa stiano ricostruendo lassù, ne vogliono sentire ogni pietra.",
		"Le notizie dal nord arrivano alla torre prima che alla fortezza, brontolano gli scrivani, e ne escono, se escono, una settimana dopo e parecchio più corte.",
	},
	["sw.muse.w19.arcane.013"] = {
		"Nessun prestatore di Stormwind fa credito su una casa del Mage Quarter, dicono alla banca. La settimana prossima potrebbe essere ancora in piedi, oppure interessante.",
		"Le case del Mage Quarter si vendono a poco e non restano mai vuote. A comprarle sono sempre maghi, e chiedono sempre per prima cosa della cantina.",
		"Un impiegato della banca una volta mi ha spiegato che una casa vicino alla torre vale esattamente quello a cui è sopravvissuta l'anno prima la casa accanto.",
	},
	["sw.muse.w19.arcane.014"] = {
		"Le guardie della capitale nemica sono quelle che mi preoccupano meno. Una guardia vede una faccia. Un mago potrebbe vederci attraverso.",
		"Davanti alla torre dei maghi, cappuccio basso e passo tranquillo. Di tutti gli occhi di questa città, i loro sono quelli che vedono oltre un travestimento.",
	},
	["sw.muse.w19.arcane.015"] = {
		"Due guerre hanno insegnato all'Alleanza quanto vale una torre di maghi quando le mura vengono messe alla prova. Stormwind brontola, coi suoi maghi, ma non li lascerebbe andare per niente al mondo.",
		"Ogni volta che nel quartiere salta una finestra, qualcuno brontola. Nessuno brontola quando l'Alleanza marcia e i maghi marciano con lei.",
		"La torre costa a Stormwind vetri, sonno e pazienza. In campo, un mago solo schierato con la fanteria ha ripagato tutto prima che la battaglia finisca.",
	},
	["sw.muse.w19.arcane.016"] = {
		"Il mio popolo ricorda quanto gli costò una volta l'arcano: mezzo continente finito sotto il mare. Passando davanti alla torre dei maghi tengo l'altro lato della strada, e non me ne vergogno.",
		"Gli umani studiano l'arcano come se fosse una novità. I kaldorei potrebbero raccontargli come va a finire. Quasi sempre preferiamo tacere, e allungare il passo davanti alla torre.",
		"Il viola di quella torre è un colore che il mio popolo un tempo portava con orgoglio, prima che il mare si chiudesse sulle nostre città. Lo guardo come si guarda una vecchia ferita.",
	},
	["sw.muse.w19.banner.001"] = {
		"I grandi stendardi della fortezza vengono tirati giù per essere rammendati, racconta una sarta del Trade District, e riappesi prima che qualcuno se ne accorga. L'orgoglio di un regno, rammendato al lume di una lampada in un retrobottega.",
		"In questa città qualcuno passa le giornate a rattoppare stendardi reali con filo d'oro, e nessuno l'ha mai ringraziata per nome. Sembra che le stia bene così.",
	},
	["sw.muse.w19.banner.002"] = {
		"In tutta la città non è stato abbassato nemmeno uno stendardo per il re. È disperso, non morto, e agli stendardi è stato detto.",
		"Quando muore un re gli stendardi scendono a mezz'asta. Quelli di Stormwind restano in cima ai pennoni, per ostinazione o per speranza; nessuno vuole dire quale delle due.",
		"Gli stendardi sulla fortezza sventolano ancora per un re vivo. Nessuno ha avuto il cuore, o l'autorità, di dire il contrario.",
	},
	["sw.muse.w19.banner.003"] = {
		"I tintori devono adorare questa città. Ogni bandiera sbiadisce di una tonalità a stagione, e ogni stagione qualcuno paga per far tornare l'azzurro.",
		"Tenere una città così azzurra deve costare una fortuna in tinture. Mi piacerebbe vedere quella voce nel registro del tesoro.",
	},
	["sw.muse.w19.banner.004"] = {
		"Ai banchetti le casate nobili appendono i loro pennoni sotto lo stendardo reale, dicono i servitori, e litigano per settimane su quale stia più vicino.",
		"Un banchetto nella fortezza vuol dire una guerra di bandierine: ogni casata vuole i propri colori un palmo più vicini a quelli della corona, e gli intendenti misurano.",
	},
	["sw.muse.w19.banner.005"] = {
		"assiste alla scena di un uomo in cima a una scala che sbroglia la corda di uno stendardo da un supporto per lanterne, mentre sotto una guardia gli regge la scala e gli dà consigli che nessuno ha chiesto.",
		"si ferma a guardare due operai che lottano per issare uno stendardo nuovo su un'asta, uno che tira la corda e l'altro che grida che è a rovescio, e lo è.",
	},
	["sw.muse.w19.banner.006"] = {
		"I vecchi stendardi reali andarono a nord con l'esodo, dicono i veterani, arrotolati nella tela cerata sulle navi dei profughi, e tornarono a pendere sopra pietra nuova.",
		"Alcuni degli stendardi più vecchi della fortezza hanno attraversato il mare andata e ritorno, a sentire i vecchi soldati. Si vede dal colore: non proprio sbiadito. Viaggiato.",
	},
	["sw.muse.w19.banner.007"] = {
		"Uno stendardo in cima alla fortezza afferma una cosa sola: c'è qualcuno al comando. Con il trono com'è adesso, gli stendardi devono dirlo il doppio più forte.",
		"Quanti stendardi sulla fortezza, di questi tempi. Una casa col padrone lontano accende tutte le lampade alle finestre.",
	},
	["sw.muse.w19.banner.008"] = {
		"Un portastendardo della Guardia Reale tiene l'asta dritta per un'intera cerimonia senza farla oscillare. Il trucco, ha raccontato uno di loro in taverna, è scegliere una pietra sul muro di fronte e sfidarla con lo sguardo.",
		"Le guardie che portano gli stendardi dicono che la parte difficile non è il peso. È il prurito al naso nel bel mezzo del discorso del reggente.",
	},
	["sw.muse.w19.banner.009"] = {
		"nota che uno degli stendardi della fortezza pende un palmo più in basso degli altri, e che le guardie lì sotto hanno deciso con grande cura di non vederlo.",
		"distingue, in alto sulla fortezza, uno stendardo più nuovo dei vicini, con l'azzurro ancora troppo vivo, come un dente nuovo in un vecchio sorriso.",
	},
	["sw.muse.w19.banner.010"] = {
		"Ovunque vada il reggente, un araldo lo precede e uno stendardo lo segue. Da lontano sembra un uomo che cerca di uscirci da sotto.",
		"Il reggente non può attraversare un cortile senza che qualcuno lo annunci. Io impazzirei. Lui si limita a fare un cenno all'araldo, come a un vicino di casa.",
	},
	["sw.muse.w19.banner.011"] = {
		"Sotto la pioggia gli stendardi della fortezza pendono scuri e pesanti, troppo fradici per muoversi. Qualcuno dovrà asciugarli uno per uno, e qualcuno brontolerà.",
		"La pioggia ha reso l'azzurro reale quasi nero. Il leone sullo stendardo più vicino ha l'aria di voler entrare.",
	},
	["sw.muse.w19.banner.012"] = {
		"alza lo sguardo verso la fortezza al buio, dove le torce lungo le mura prendono gli orli degli stendardi e lasciano il centro alla notte.",
		"osserva le guardie sui gradini della fortezza, di notte, che stanno appena fuori dalla luce delle torce, così che si veda solo il loro oro.",
	},
	["sw.muse.w19.banner.013"] = {
		"Dai a un soldato uno stendardo da seguire e andrà incontro a qualunque cosa. Daglielo da tenere fermo in un cortile e si lamenterà dei piedi.",
		"Gli stendardi sono fatti per i campi di battaglia. In un cortile sono solo tende molto costose.",
		"Nessuno chiede mai allo stendardo cosa ne pensi di tutto questo stare fermi.",
	},
	["sw.muse.w19.banner.014"] = {
		"I nostri stendardi sventolano da Menethil a Darkshire, ma è in questa fortezza che vengono cuciti. Ogni brandello d'azzurro e oro dell'Alleanza può far risalire il suo filo fin qui.",
		"Ho seguito questi colori più lontano di quanto riesca a contare. Vederli sopra la fortezza è come vedere la radice di un albero che avevo sempre conosciuto solo dai rami.",
	},
	["sw.muse.w19.banner.015"] = {
		"alza gli occhi verso gli alti stendardi che scendono lungo le pareti della sala del trono, così lunghi e immobili da sembrare meno stoffa che pietra.",
		"si ferma sotto i grandi drappi della sala del trono e nota come smorzino ogni suono, come se la sala fosse avvolta nei propri colori.",
	},
	["sw.muse.w19.beggar.001"] = {
		"Il vecchio mendicante vicino al ponte ti ringrazia allo stesso modo per un rame o per niente. È la cosa più dignitosa che abbia visto in questa città, e gli costa tutto quello che ha.",
		"Un mendicante vicino al canale dice «grazie di cuore» che tu dia qualcosa o no. Dopo un po' capisci che quel grazie non è mai stato per la moneta.",
	},
	["sw.muse.w19.beggar.002"] = {
		"Qui anche chiedere l'elemosina ha la sua corporazione, non scritta: gli angoli migliori sono di chi ci siede da più tempo, e chi prova a mettersi all'angolo del Gilded Rose senza conoscere il mestiere viene spostato dagli altri mendicanti prima che una guardia se ne curi.",
		"I mendicanti di Stormwind hanno regole più severe della casa d'aste. Ogni angolo buono ha un padrone, e il padrone ha un vice.",
	},
	["sw.muse.w19.beggar.003"] = {
		"Un mendicante all'angolo legge ogni giorno lo stesso libro sgualcito, muovendo le labbra. È all'ultima pagina da una settimana. Credo che abbia paura di finirlo.",
		"Quel mendicante col libro è sull'ultima pagina da giorni. Ogni volta che passo la sta rileggendo. Certi finali si rimandano finché si può.",
	},
	["sw.muse.w19.beggar.004"] = {
		"Il cane di quel mendicante guadagna più di lui. Cane furbo. Scommetto che tiene anche i conti.",
		"Tutti passano davanti al mendicante e si fermano ad accarezzare il cane. Il cane se la cava benissimo. Qualcuno dia da mangiare all'uomo.",
		"Il cane ha la ciotola, il mendicante la pazienza. Insieme se la cavano meglio di certe botteghe.",
	},
	["sw.muse.w19.beggar.005"] = {
		"Certi mendicanti portano cappotti che un tempo erano elegantissimi. Prima se ne vanno i bottoni, uno dopo l'altro, poi la fodera, e per ultime le buone maniere.",
		"Un uomo chiede qualche rame con addosso un cappotto tagliato da un buon sarto, tanto tempo fa. Dice «se fosse così gentile» come chi un tempo lo diceva alla servitù.",
		"Un mendicante vicino all'acqua si annoda ancora la cravatta ogni giorno, male, senza specchio. Qualunque cosa abbia perso, quella non ha accettato di perderla.",
	},
	["sw.muse.w19.beggar.006"] = {
		"Qui nel Trade District i mendicanti siedono proprio dove passano le monete, tra la banca e la casa d'aste, nel fiume delle borse. Furbi. E anche crudele, doverlo guardare tutto il giorno.",
		"I mendicanti del Trade District scelgono il posto dal suono delle monete. Passano la giornata a portata d'orecchio delle fortune altrui.",
	},
	["sw.muse.w19.beggar.007"] = {
		"sente un mendicante ricambiare il rame di un passante con un'informazione solenne: il nome dell'unico cuoco della città che non annacqua la minestra.",
		"ascolta un mendicante pagare in consigli la moneta di uno sconosciuto: quale guardia guarda dall'altra parte, e quale non lo fa mai.",
		"sta a sentire un mendicante che, ricevuto un rame da uno scrivano di fretta, gli restituisce in cambio l'ora esatta in cui passerà la prossima ronda.",
	},
	["sw.muse.w19.beggar.008"] = {
		"È tardi, e i portoni della città si sono riempiti: in ognuno un dormiente ripiegato, come una lettera in attesa che qualcuno la venga a ritirare.",
		"A quest'ora ogni portone profondo della strada ha il suo dormiente. Le guardie gli passano accanto piano, ed è anche questa una forma di gentilezza.",
	},
	["sw.muse.w19.beggar.009"] = {
		"Piove, e i mendicanti della strada si radunano sotto l'unico arco profondo, spalla a spalla. Finché dura, sono un quartiere.",
		"La pioggia spinge tutti i mendicanti di questa strada sotto lo stesso androne. Si passano una crosta di pane e una diceria lungo la fila e aspettano che smetta, come vecchi vicini.",
	},
	["sw.muse.w19.beggar.010"] = {
		"Una dama si è fermata a dare una moneta a un mendicante, e per farlo non si è tolta il guanto. Carità a distanza di braccio, attraverso la pelle di capretto.",
		"Certa gente per bene fa l'elemosina come si dà da mangiare a un cavallo di cui non ti fidi: in fretta, palmo aperto, e con i guanti.",
	},
	["sw.muse.w19.beggar.011"] = {
		"C'è un mendicante, vicino al canale, che non chiede mai niente. Sta seduto con un cartello che dice che aspetta qualcuno. Nessuno sa chi. Il pane, però, glielo lasciano.",
		"Vicino all'acqua c'è un uomo il cui cartello non chiede monete. Dice solo che aspetta. I garzoni dei fornai gli portano le pagnotte rotte, e nessuno gli domanda chi aspetti.",
	},
	["sw.muse.w19.beggar.012"] = {
		"scavalca le gambe distese di un mendicante e si guadagna, per la cortesia di non averle pestate, un solenne «obbligatissimo».",
		"gira con attenzione attorno a un mendicante addormentato di traverso su mezza viuzza, e uno dei suoi occhi si apre giusto il tempo di approvare.",
	},
	["sw.muse.w19.beggar.013"] = {
		"Monete non ne ho. Ti va mezza mela?",
		"Tieni, prendi la punta di questa pagnotta. È la parte buona.",
		"Mi spiace, la borsa è vuota. Però nello zaino c'è del formaggio, se non hai pretese.",
	},
	["sw.muse.w19.beggar.014"] = {
		"I mendicanti della Cathedral Square non chiedono monete ai fedeli quando entrano, solo quando escono. Qualcuno ha capito tanto tempo fa che la gente se ne va più generosa di come arriva.",
		"Ogni mendicante vicino alla cattedrale conosce il trucco: aspettare le porte, non i gradini. Qualunque cosa succeda là dentro, la gente ne esce con la borsa più allentata.",
	},
	["sw.muse.w19.bell.001"] = {
		"I campanari della cattedrale ti parlano tutti dallo stesso lato, con la testa inclinata. Gli accoliti dicono che l'altro orecchio se n'è andato da un pezzo, una corda dopo l'altra.",
		"Un campanaro della cattedrale lo riconosci in qualunque taverna: è quello che si sporge con l'orecchio sinistro e annuisce a tutto ciò che gli dicono a destra.",
		"Suona le campane della cattedrale abbastanza a lungo e sentirai la città da un lato solo. Ai campanari non sembra dispiacere: le chiacchiere si dimezzano.",
	},
	["sw.muse.w19.bell.002"] = {
		"Non ci sono due accoliti d'accordo su quanti scalini salgano al campanile. Li hanno contati tutti, e ognuno in cima aveva un numero diverso.",
		"Chiedi agli accoliti della cattedrale quanti gradini portino alle campane e scateni una lite. Ognuno giura su un conto diverso, e ognuno ha i polpacci doloranti a dimostrarlo.",
	},
	["sw.muse.w19.bell.003"] = {
		"nota la superficie della fontana della piazza incresparsi in cerchi sottili quando attaccano le campane della cattedrale, un attimo prima che l'orecchio se ne accorga.",
		"guarda l'acqua della fontana tremare al primo colpo delle campane là in alto, come se la piazza stessa avesse sussultato.",
	},
	["sw.muse.w19.bell.004"] = {
		"Una di quelle campane della cattedrale è calante. Di un niente. Una volta che la senti, non smetterai più di sentirla, quindi scusa.",
		"La terza campana di quello scampanio è un po' stonata. Lo sa tutta la città e nessuno la aggiusta. Credo che ci siano affezionati.",
		"Ascolta il prossimo scampanio. Quella che sembra un po' stanca? È la preferita della città.",
	},
	["sw.muse.w19.bell.005"] = {
		"L'accolito più giovane alle corde delle campane tiene i palmi fasciati di lino. La corda, dice, insegna piano e lascia sempre la ricevuta.",
		"La corda delle campane scortica le mani prima di indurirle. Da quanto lino porta, capisci da quanto tempo un accolito suona.",
	},
	["sw.muse.w19.bell.006"] = {
		"Vicino alla Cathedral Square c'è un cane che canta insieme a ogni scampanio. I sacerdoti hanno deciso di prenderla come devozione.",
		"Quando attaccano le campane della cattedrale, un cane del quartiere si unisce sempre, stonato e pieno di sentimento. Nessuno ha il coraggio di dirglielo.",
		"Ogni volta che partono le campane, un cane vicino alla cattedrale alza il muso e si unisce all'inno. Gli accoliti hanno cominciato a chiamarlo il cantore.",
	},
	["sw.muse.w19.bench.001"] = {
		"Vicino all'acqua c'è una panchina con un incavo consumato a un'estremità, largo esattamente una persona. Qualcuno siede in quel punto da moltissimo tempo, o moltissimi qualcuno, uno dopo l'altro.",
		"Certe panchine di questa città hanno un'estremità preferita, liscia e incavata come una sella. L'altra sembra quasi nuova. A quanto pare la gente preferisce sedersi dove qualcuno si è già seduto.",
	},
	["sw.muse.w19.bench.002"] = {
		"ascolta due vecchi su una panchina discutere di qualcosa successo prima che nascesse quasi tutta la strada, entrambi in torto e nessuno dei due disposto a smettere.",
		"sente per caso due vecchi su una panchina sistemare tra loro gli affari del regno, ad alta voce, con grande autorità e nessuna informazione.",
	},
	["sw.muse.w19.bench.003"] = {
		"Ogni panchina di Stormwind è occupata. Comincio a pensare che la gente ci nasca sopra.",
		"Una panchina libera in tutta la città, e ci sta seduto un piccione. Con orgoglio.",
		"Qualcuno si alzerà mai da quella panchina? Ci giro intorno come un avvoltoio.",
	},
	["sw.muse.w19.bench.004"] = {
		"Basta una panchina e un po' di pazienza, e ti passa davanti tutta la città: un sacerdote, un borseggiatore, un nano con una scala, un mago che legge, e lo stesso borseggiatore che torna indietro.",
		"Da una panchina vicino al canale la città dà spettacolo gratis: un litigio, una riappacificazione, un cesto rovesciato, tre cipolle in fuga e un ragazzino velocissimo.",
		"Una panchina è il posto migliore nel teatro di Stormwind. Le commedie sono brevi, gli attori non sanno di recitare e il biglietto non lo fa pagare nessuno.",
	},
	["sw.muse.w19.bench.005"] = {
		"Le panchine di pietra di questa città tengono il freddo come i nobili il rancore: molto dopo che tutto il resto si è scaldato.",
		"Siediti su una panchina di Stormwind e ti ricorda, attraverso i calzoni, che viene da una cava.",
	},
	["sw.muse.w19.bench.006"] = {
		"Dividere una panchina con chi non conosci è la cosa più da Stormwind che ci sia: spalla a spalla, occhi avanti, nemmeno una parola, e chissà come la solitudine pesa la metà.",
		"Due sconosciuti sulla stessa panchina stringono un piccolo trattato: tu stai nella tua metà, io nella mia, e nessuno accenna a quanto sia piacevole sedersi.",
		"Le amicizie più silenziose di Stormwind nascono sulle panchine, e quasi mai arrivano fino ai nomi.",
	},
	["sw.muse.w19.bench.007"] = {
		"C'è una donna che siede sulla panchina vicino al ponte e alza gli occhi a ogni rumore di passi. Chi aspetta è molto in ritardo, o non verrà, e da come ogni volta torna a intrecciare le mani, lei sa quale delle due.",
		"Ogni città ha una panchina dove qualcuno aspetta. A Stormwind è vicino all'acqua, e chi aspetta non stacca mai gli occhi dall'altro capo del ponte.",
	},
	["sw.muse.w19.bench.008"] = {
		"Posso sedermi? Le mie ginocchia hanno sporto reclamo formale.",
		"C'è ancora un po' di posto su quella panchina? Non darò fastidio. Al massimo un sospiro.",
		"Ti stringi un poco? Prendo io il lato freddo.",
	},
	["sw.muse.w19.bench.009"] = {
		"nota un vecchio addormentato su una panchina, che nel sonno si scosta un poco per fare posto a nessuno.",
		"passa accanto a una panchina dove un vecchio sonnecchia col mento sul petto e una mano posata sul posto vuoto accanto a sé, come per tenerlo occupato per qualcuno.",
	},
	["sw.muse.w19.bench.010"] = {
		"si attarda a guardare una donna su una panchina che sbriciola il pane per i passeri, briciola dopo briciola, rimproverando per nome i più ingordi.",
		"si sofferma vicino a una panchina dove una vecchia nutre gli uccelli da un cartoccio di briciole, tenendo da parte le più grosse per un passero arruffato con una zampa malandata.",
	},
	["sw.muse.w19.bench.011"] = {
		"rallenta per guardare una partita disposta su una panchina fra due giocatori che ci stanno sopra da ore, e si becca un'occhiataccia da entrambi per essersi {g:avvicinato|avvicinata} troppo.",
		"lancia un'occhiata a due giocatori chini su una scacchiera graffiata sopra una panchina; il più silenzioso, senza alzare gli occhi, muove un pezzo che fa gemere l'altro ad alta voce.",
	},
	["sw.muse.w19.bench.012"] = {
		"C'è sempre qualcuno su una panchina con un libro, e alza sempre gli occhi nel momento sbagliato: proprio quando ti capita di guardare dalla sua parte.",
		"Chi legge sulle panchine ha un sesto senso. Dai un'occhiata alla copertina del libro e subito alza lo sguardo, e adesso l'imbarazzo è di entrambi, e la colpa è tua.",
	},
	["sw.muse.w19.bench.013"] = {
		"Le panchine migliori guardano l'acqua, poi vengono quelle sulla strada. Quelle davanti a un muro? Per le coppie, a quanto pare.",
		"Panchina sul canale per pensare, panchina sulla strada per spettegolare, panchina davanti a un muro per baciarsi. Non chiedetemi perché.",
	},
	["sw.muse.w19.bench.014"] = {
		"Panchine, alberi, anatre su un canale. Il fronte è lontano, e qualcuno deve ricordarsi a cosa serve tutto quanto. Ricordarselo da seduti è più facile.",
		"Là fuori combattiamo nel fango e nel fumo. Qui dentro due vecchi dividono una panchina e litigano sulle anatre. Per quanto ne so è tutta la causa, e basta e avanza.",
	},
	["sw.muse.w19.bench.015"] = {
		"Da quanto qualcuno vive a Stormwind lo capisci da quale panchina è sua. Chi è di passaggio si siede dove capita. I vecchi hanno una panchina, e un lato della panchina, e la città sa che va lasciato libero.",
		"Certe panchine appartengono a qualcuno come una casa. Siediti su quella sbagliata e un vecchio si piazzerà lì vicino, senza dire niente, finché non capisci.",
	},
	["sw.muse.w19.bid.001"] = {
		"Alla casa d'aste c'è sempre qualcuno che rilancia di un rame, e poi di un altro, su una cosa che non vuole nessun altro. Non è commercio: è una faida con la commissione.",
		"Guarda la casa d'aste abbastanza a lungo e vedrai due sconosciuti contendersi un paio di guanti qualunque a colpi di un rame. Nessuno dei due ha bisogno di guanti.",
		"Le guerre più feroci di Stormwind si combattono alla casa d'aste per un paio di guanti usati, un rame a ogni salva.",
	},
	["sw.muse.w19.bid.002"] = {
		"La casa d'aste si fa pagare un deposito solo per lasciarti sperare. Se non vendi niente, il deposito se lo tiene e la speranza te la restituisce, un po' usata.",
		"Metti in vendita qualcosa e la casa vuole una moneta in anticipo. Se resta invenduto, l'oggetto ti torna per posta; la moneta no.",
	},
	["sw.muse.w19.bid.003"] = {
		"spiega un pezzo di pergamena pieno di prezzi cancellati, aggrotta la fronte sull'ultimo e lo ripiega un po' più piccolo di prima.",
		"studia una lista di prezzi piegata e ripiegata, si inumidisce il pollice, cancella una cifra e ne scrive una peggiore.",
	},
	["sw.muse.w19.bid.004"] = {
		"Una parte di quello che si vende alla casa d'aste viene da gente che non tornerà a riprenderselo. Nessuno lo dice. I prezzi sono solo un po' più bassi.",
		"Un buon mantello con uno strappo rammendato sulla spalla, all'asta per poco. L'ha venduto qualcuno, o gli amici di qualcuno. L'elenco non dice chi.",
		"Nessuno mette all'asta col proprio nome gli stivali di un amico morto. La casa d'aste li elenca lo stesso, e chi compra si porta via un affare, mai la storia.",
	},
	["sw.muse.w19.bid.005"] = {
		"Metà dei prezzi di acquisto immediato alla casa d'aste non sono prezzi. Sono l'opinione del venditore sul proprio buon gusto.",
		"Offri, ti superano, rilanci. La casa d'aste dovrebbe vendere panche a chi viene solo a guardare.",
		"Metterei all'asta i miei vecchi stivali, ma qualcuno li comprerebbe, e poi dovrei sapere chi.",
	},
	["sw.muse.w19.bid.006"] = {
		"Chi lavora al banco della casa d'aste riconosce gli habitué da come ci si appoggiano. Chi spera si sporge in avanti. Chi ci va da anni sta appoggiato all'indietro.",
		"I veterani della casa d'aste si riconoscono: mai sorpresi, mai contenti, e mai che un prezzo li veda batter ciglio.",
	},
	["sw.muse.w19.bid.007"] = {
		"Prima o poi il mondo intero passa dalla casa d'aste: un colletto di pizzo accanto a un fascio di pelli di lupo accanto a un sacco di bulloni gnomeschi. La casa non giudica. Prende la sua percentuale.",
		"Lino di Elwynn, ferro delle colline, una strana pietra verde venuta chissà da dove, tutto sullo stesso elenco. La casa d'aste è l'unico posto di Stormwind dove ogni cosa è uguale alle altre, per poco.",
		"Lingotti di mithril, un sacco di lana e un cappello con una piuma grande come un gatto: la casa d'aste li mette in elenco tutti con la stessa calligrafia paziente.",
	},
	["sw.muse.w19.bid.008"] = {
		"fa spazio a un garzone che arriva di corsa dalla parte della casa d'aste, una pila di pacchetti legati con lo spago sotto il mento e un cartellino che sventola da ognuno.",
		"si scosta per un ragazzo di bottega in equilibrio con una torre di pacchi incartati, ognuno etichettato con una calligrafia stretta e frettolosa.",
	},
	["sw.muse.w19.bid.009"] = {
		"Ogni tanto alla casa d'aste arriva una contadina con qualcosa avvolto in un panno, e se ne va con le monete e il panno vuoto. Adesso il Westfall fa così i suoi conti in banca.",
		"Una spilla d'argento che la nonna di qualcuno portò al matrimonio, venduta all'asta per il prezzo della farina di un inverno. Chi l'ha comprata non lo saprà mai. Chi l'ha venduta non lo dimenticherà.",
	},
	["sw.muse.w19.bid.010"] = {
		"Vuoi sapere quanto vale il tuo tesoro? Mettilo all'asta. Scoprirai che vale meno.",
		"Niente rende umile un bottino come la casa d'aste. Tutto ciò che credevo raro, lo stanno vendendo altre tre persone.",
	},
	["sw.muse.w19.bid.011"] = {
		"La casa d'aste vende mentre dormi. Vai a letto con una speranza e ti svegli con una lettera: venduto o invenduto, e comunque un po' meno di quanto volevi.",
		"Lasci una cosa all'asta e te ne vai per i fatti tuoi. Il giorno dopo la posta porta il verdetto, con tutto il calore di un esattore.",
		"Le lettere della casa d'aste cominciano sempre allo stesso modo e finiscono in uno di due umori. Ho imparato a leggere prima l'ultima riga.",
	},
	["sw.muse.w19.bid.012"] = {
		"rallenta per ascoltare due persone che a un angolo litigano su chi abbia superato chi all'asta, puntando entrambe il dito sulla stessa ricevuta stropicciata.",
		"passa accanto a due offerenti delusi che si confrontano le perdite davanti a una porta, come soldati che si mostrano le cicatrici.",
	},
	["sw.muse.w19.bid.013"] = {
		"Certa gente va alla casa d'aste come altri vanno in cattedrale: ogni giorno, in silenzio, e con una gran fede che stavolta andrà diversamente.",
		"Ci sono habitué della casa d'aste che non comprano e non vendono mai. Vengono solo a leggere gli elenchi, come un vecchio contadino legge le nuvole sopra il suo campo.",
	},
	["sw.muse.w19.bid.014"] = {
		"Vado alla casa d'aste. Se esco sorridendo, qualcuno ha sbagliato. Se esco con la faccia lunga, ho sbagliato io.",
		"Faccio un salto alla casa d'aste. Tienimi la borsa. Anzi no: tieni me lontano dalla mia borsa.",
	},
	["sw.muse.w19.bid.015"] = {
		"La casa d'aste è l'unico campo di battaglia di Stormwind dove nessuno sanguina e tutti perdono qualcosa.",
		"Offerte lanciate, offerte raccolte, un silenzio prima dell'ultima. Se qualcuno cantasse della casa d'aste, sarebbe il canto di guerra più lungo mai scritto.",
	},
	["sw.muse.w19.bid.016"] = {
		"Anche di notte la casa d'aste tiene le lampade accese. In qualche angolo della città uno sconosciuto supera l'offerta di qualcuno che dorme della grossa.",
		"Le botteghe hanno chiuso per la notte, ma la casa d'aste non si ferma mai del tutto. Le offerte continuano al buio, come i grilli.",
	},
	["sw.muse.w19.boat.001"] = {
		"segue con lo sguardo un barcaiolo che si appoggia con tutto il peso alla pertica, la percorre a passi lungo la barca, la sfila con una torsione e ricomincia, senza mai guardarsi i piedi.",
		"studia il ritmo di un barcaiolo al lavoro: pianta, spingi, cammina, torci, solleva. La barca avanza come se l'acqua le desse una mano.",
	},
	["sw.muse.w19.boat.002"] = {
		"Ogni barcaiolo ha un ponte sotto cui non passa dopo l'ultima campana, e non ce ne sono due che scelgano lo stesso. Chiedi perché e ricevi un'alzata di spalle, o una storia che avresti preferito non sentire.",
		"I barcaioli tengono in testa una loro mappa dei canali: il tratto fortunato, il ponte da evitare, il punto dove sputare per scaramanzia. Ognuno ha la sua, e ognuno è certo della propria.",
		"Chiedi a tre barcaioli qual è il tratto più fortunato dei canali e ottieni due tratti diversi, un insulto e un lungo silenzio.",
	},
	["sw.muse.w19.boat.003"] = {
		"Barili di pesce salato, sacchi di farina, una gabbia di galline che protestano per tutto il tragitto: le barche dei canali portano le noiose necessità della città, così le strade non devono farlo.",
		"Nessuno ammira una barca da canale. Portano carbone, farina e olio per lampade, e se si fermassero per una settimana i fornai se ne accorgerebbero per primi e i nobili per ultimi.",
		"Guarda le barche per un po' e impari cosa mangia la città: farina che entra, barili che entrano, e barili vuoti che tornano indietro, più leggeri e più rumorosi.",
	},
	["sw.muse.w19.boat.004"] = {
		"Prima di ogni curva cieca i barcaioli lanciano un richiamo, una parola secca buttata sull'acqua, e aspettano risposta. Non si sono mai scontrati, giurano. I loro scafi, a forza di graffi, raccontano un'altra storia.",
		"Vicino a qualunque svolta dei canali prima o poi lo senti: il richiamo rauco di un barcaiolo, una risposta da dietro la curva, poi due barche che si sfilano accanto a forza di borbottii.",
	},
	["sw.muse.w19.boat.005"] = {
		"tiene d'occhio un barcaiolo che svuota la barca con una pentola ammaccata, regolare come un orologio, mentre l'acqua rientra con altrettanta regolarità.",
		"sosta accanto a una barca ormeggiata dove un uomo butta l'acqua fuori bordo con una pentola, una palata dopo l'altra, senza commentare il fatto che la falla stia vincendo.",
	},
	["sw.muse.w19.boat.006"] = {
		"Quasi ogni barca dei canali ha un nome dipinto a prua, e quasi sempre è un nome di donna. I barcaioli non dicono di chi. Uno ha cambiato discorso molto in fretta.",
		"Le barche dei canali portano nomi in vernice sbiadita: per lo più nomi di donna, e una volta una parola che avevo preso per un'imprecazione, finché il barcaiolo non mi ha spiegato che era sua suocera.",
	},
	["sw.muse.w19.boat.007"] = {
		"nota un gatto addormentato su un rotolo di cima in una barca ormeggiata, che sale e scende con l'acqua senza curarsene minimamente.",
		"abbassa lo sguardo su una barca ormeggiata dove un gatto sta disteso sulla panca, un orecchio che si gira a ogni passo sulla riva e il resto del corpo che non si scomoda.",
	},
	["sw.muse.w19.boat.008"] = {
		"Ho chiesto a un barcaiolo quanto ci vuole fino in fondo al canale. Ha detto «dipende» e ha sputato. Vado a piedi.",
		"Un passaggio in barca? Ho visto a che velocità vanno. A piedi arrivo prima, e senza bagnarmi.",
		"Prenderei una barca, ma l'ultima che ho visto è stata sorpassata da un'anatra.",
	},
	["sw.muse.w19.boat.009"] = {
		"Lungo i canali c'è una barca mezza affondata al suo anello da che memoria d'uomo. Nessuno la reclama, nessuno la sposta, e i barcaioli ci girano intorno in silenzio, come si gira intorno a una tomba.",
		"Vicino a uno dei ponti c'è una barca affondata, con la prua ancora fuori dall'acqua e la cima ancora legata. I barcaioli dicono che il padrone fece quel nodo e non tornò più a scioglierlo, e nessuno ha avuto cuore di tagliarlo.",
	},
	["sw.muse.w19.boat.010"] = {
		"Lungo i canali c'è sempre qualcuno che incatrama una barca. L'odore resta nei vestiti per un giorno intero, a ricordare che il legno galleggia solo finché qualcuno se ne prende cura.",
		"Catrame caldo e legno bagnato: l'odore dei canali quando lavorano. Ogni barca sull'acqua è una promessa che qualcuno mantiene con un pennello e un secchio.",
	},
	["sw.muse.w19.boat.011"] = {
		"Volete i pettegolezzi della città? Lasciate perdere la taverna. Cercate un barcaiolo. Nessuno bada a quel che dice davanti a uno che dà le spalle.",
		"I barcaioli sentono tutto. Mezza Stormwind si sporge da un ponte per chiacchierare e non guarda mai chi le passa sotto.",
	},
	["sw.muse.w19.boat.012"] = {
		"segue una lanterna solitaria che scivola nella notte lungo il canale nero, la barca sotto invisibile, riconoscibile solo dal colpo sommesso della pertica.",
		"resta immobile a lasciar passare una lanterna sul canale là sotto, una piccola luce gialla a galla nella notte, e dietro una voce bassa che racconta qualcosa all'acqua.",
	},
	["sw.muse.w19.boat.013"] = {
		"guarda passare una barca di farina, bassa sull'acqua, con in cima ai sacchi un ragazzino bianco fino alle sopracciglia e fierissimo del suo punto di vista.",
		"incrocia lo sguardo di un ragazzino che scende il canale seduto su un carico di sacchi di farina come un re su un trono pallido, con impronte bianche su tutto ciò che ha toccato.",
	},
	["sw.muse.w19.boat.014"] = {
		"Qualche barcaiolo vive a bordo, a quanto pare: una pentola su un braciere, una camicia stesa ad asciugare sulla pertica, una porta fatta con un vecchio telone. Niente affitto, niente vicini al piano di sopra, e un panorama nuovo ogni volta che si vuole.",
		"Certe barche dei canali sono chiaramente la casa intera di qualcuno. Il bucato teso da prua a poppa, un vaso di erbe vicino al timone. Gli alloggi più economici di Stormwind, e gli unici che si spostano.",
	},
	["sw.muse.w19.boat.015"] = {
		"La pertica è l'unico attrezzo che un barcaiolo non presta. Ognuna è tagliata sull'altezza del padrone e consumata sulla sua presa, e una pertica prestata, dicono, si governa come il cavallo di un altro.",
		"I barcaioli incidono una tacca sulla pertica per ogni anno passato sull'acqua, raccontano i più vecchi. Certe pertiche sembrano rosicchiate da un castoro molto paziente.",
	},
	["sw.muse.w19.brawl.001"] = {
		"assiste a una zuffa all'angolo di una strada che finisce nell'istante in cui l'elmo di una guardia spunta dalla curva: i due, d'un tratto amiconi, si spolverano a vicenda.",
		"vede due uomini che rotolano sui ciottoli separarsi di scatto al tintinnio di una pattuglia in arrivo e andarsene a braccetto, fischiettando.",
	},
	["sw.muse.w19.brawl.002"] = {
		"Due facchini si sono appena buttati addosso a una pila di casse per chi avesse la precedenza. Adesso le rimettono in pila insieme, litigando ancora, con un gioco di squadra impeccabile.",
		"Una scazzottata per la precedenza, una pila di casse rovesciata, e poi i due che raccolgono mele fianco a fianco. A Stormwind anche una lite finisce col rimettere in ordine.",
		"Uno ha urtato, l'altro ha spinto, e adesso ci sono cavoli per tutta la strada e due facchini che ci rotolano in mezzo. Un cane di passaggio sta vivendo l'ora più bella della sua vita.",
	},
	["sw.muse.w19.brawl.003"] = {
		"si scansa con prontezza mentre un groviglio di attaccabrighe rotola fuori dal Pig and Whistle nel vicolo, seguito da uno sgabello, seguito dal parere dell'oste.",
		"si appiattisce contro un muro mentre un nodo di clienti che spingono e urlano si riversa fuori dalla porta della taverna, fa tre riprese nel vicolo e rientra per il boccale successivo.",
	},
	["sw.muse.w19.brawl.004"] = {
		"Guarda: si è già fatto il cerchio, si raccolgono scommesse, e nessuno ha ancora tirato un pugno.",
		"L'Old Town trasforma una lite in uno sport più in fretta di qualunque altro posto.",
		"La rissa non è nemmeno cominciata e c'è già un allibratore. Ammiro l'efficienza.",
	},
	["sw.muse.w19.brawl.005"] = {
		"vede una vecchia entrare in una zuffa con la scopa, assestare due colpi secchi su due zucche dure, e tornare a spazzare come se niente fosse.",
		"si ferma a guardare una scazzottata che finisce di colpo quando una nonna si sporge da una finestra e rovescia un secchio su tutti e due.",
	},
	["sw.muse.w19.brawl.006"] = {
		"I due soldati che si azzuffano vicino al canale non ce l'hanno davvero l'uno con l'altro. Si capisce da come si tengono dopo, fronte contro fronte, ripetendo un nome.",
		"Certe risse dell'Old Town sono lutti rimasti senza parole. Due veterani, una zuffa, e poi quello che ha tirato il primo pugno che piange nel colletto dell'altro.",
	},
	["sw.muse.w19.brawl.007"] = {
		"Quella rissa non la vince nessuno. Si danno il turno a pentirsi.",
		"Cinque rami su quello col cappello più grosso. No, aspetta, ha perso il cappello.",
		"Quella non è una rissa: sono due uomini che si abbracciano arrabbiati.",
	},
	["sw.muse.w19.brawl.008"] = {
		"Uno gnomo è salito su un barile per separare due uomini alti il doppio di lui. Non li sta proprio fermando, ma sta spiegando loro nei dettagli perché dovrebbero smettere.",
		"Due omaccioni che si fronteggiano, e in mezzo, su una cassa rovesciata, uno gnomo che fa lezione a entrambi sulla leva. La rissa pare aver perso il coraggio.",
	},
	["sw.muse.w19.brawl.009"] = {
		"Da dietro un muro, chissà dove: un fracasso, un silenzio improvviso, poi un gran boato di risate. Una sedia, direi, ha perso una discussione.",
		"Qui vicino, il rumore inconfondibile di un tavolo che si ribalta, una pausa, e venti voci che lo applaudono. Qualcuno si sta godendo un'ora vivace.",
	},
	["sw.muse.w19.brawl.010"] = {
		"resta nel buio di un vicolo mentre due ombre sotto un lampione si spintonano, scivolano e finiscono sedute fianco a fianco sui ciottoli, a ridere.",
		"sente piedi che si azzuffano e minacce biascicate in fondo a una strada buia, poi un tonfo nell'acqua, poi un lungo silenzio offeso.",
	},
	["sw.muse.w19.brawl.011"] = {
		"Due uomini che se le davano in un vicolo si sono fermati a metà colpo per far passare una bambina con una brocca, poi hanno ripreso. L'Old Town ha le sue buone maniere.",
		"In questa città persino una rissa di strada si ferma per un bambino che porta il latte. Hanno aspettato, gli hanno fatto un cenno, e hanno ripreso a picchiarsi.",
	},
	["sw.muse.w19.brawl.012"] = {
		"Gli umani fanno a botte più o meno come tutti, a quanto pare, solo che dopo si scusano di più. Guardo da sotto il cappuccio e non muovo un muscolo.",
		"Le loro risse di strada sono più brevi delle nostre e finiscono con una stretta di mano. Lo troverei grazioso, se uno solo di loro sapesse chi sono.",
	},
	["sw.muse.w19.brawl.013"] = {
		"Sul gradino della taverna siede un uomo col labbro spaccato, che si fa tamponare da quello che gliel'ha spaccato. Qualunque cosa sia successa è stata perdonata, o dimenticata, che nell'Old Town è lo stesso.",
		"Rissa finita. Lo sconfitto si tiene uno straccio bagnato sull'occhio, il vincitore gli regge il boccale, e tutti e due sembrano vagamente imbarazzati.",
	},
	["sw.muse.w19.brawl.014"] = {
		"Le guardie dell'Old Town hanno il dono di arrivare a una rissa proprio quando si sta sgonfiando. Sono quasi {g:sicuro|sicura} che lo facciano apposta.",
		"Una rissa a due strade da qui, e la pattuglia prende la via lunga, senza fretta, chiacchierando. Quando arriveranno sarà diventata un abbraccio.",
		"Le pattuglie vanno verso una zuffa come un cuoco va verso una pentola quasi pronta: senza fretta, sapendo che aspetterà.",
	},
	["sw.muse.w19.brawl.015"] = {
		"lancia un'occhiata verso una zuffa tra due allievi della sala d'addestramento, che finisce quando arriva un istruttore, li prende ciascuno per un orecchio e li riporta dentro senza una parola.",
		"vede due allievi che si fronteggiano nel vicolo per impressionare nessuno in particolare, e un istruttore dai capelli grigi comparire alle loro spalle, silenzioso come un debito che scade.",
	},
	["sw.muse.w19.brawl.016"] = {
		"Qualcuno porti un secchio d'acqua a quei due. Possibilmente in testa.",
		"Guardali. Nessuno dei due ha ancora messo a segno un pugno, e stanno vincendo tutti e due.",
		"Qualcuno li ferma? No? Allora passatemi il pane.",
	},
	["sw.muse.w19.bridge.001"] = {
		"posa una mano sul parapetto di un ponte, dove la pietra è diventata liscia come vetro sotto i palmi di un'intera città.",
		"fa scorrere la mano lungo il muretto di un ponte, la pietra resa liscia proprio all'altezza dove passano le mani di tutti.",
		"appoggia il palmo sul colmo consumato del parapetto di un ponte, dove la pietra si avvalla appena, modellata da tutti i gomiti che ci si sono appoggiati prima.",
	},
	["sw.muse.w19.bridge.002"] = {
		"Sul parapetto di quasi ogni ponte della città qualcuno ha inciso due iniziali. Alcune, col tempo, sono state grattate via. Qualcuna, poi, è tornata al suo posto.",
		"I ponti raccolgono iniziali come le panchine raccolgono dormienti: due lettere, una crocetta in mezzo e a volte, di un'altra mano, una riga sola e furiosa.",
		"Iniziali sui ponti, iniziali sulle panchine, iniziali su un albero del Park. Gli innamorati di questa città hanno poca carta e molti coltelli.",
	},
	["sw.muse.w19.bridge.003"] = {
		"guarda due bambini lasciar cadere un rametto ciascuno da un lato del ponte e correre dall'altro a vedere quale sbuca per primo, per poi litigare sul risultato con tremendo ardore.",
		"si sofferma mentre due ragazzini, sporti dal ponte, fissano l'acqua in attesa che i loro legnetti escano da sotto l'arcata. Uno esulta. L'altro pretende la rivincita.",
	},
	["sw.muse.w19.bridge.004"] = {
		"Nessuno si ferma in fondo a un ponte. Tutti si fermano a metà, si appoggiano e guardano giù, come se l'acqua si potesse vedere bene solo da lì.",
		"Il centro di un ponte è il posto dove questa città preferisce stare ferma. Nessuno lo decide: i piedi rallentano in cima alla gobba e la testa si sporge da sola.",
		"Metti un ponte sopra l'acqua e la gente ci si fermerà a guardare giù. Non importa cosa ci sia sotto. Un parapetto fa di chiunque un filosofo.",
	},
	["sw.muse.w19.bridge.005"] = {
		"osserva un facchino prendere la rincorsa verso la gobba di un ponte con un carretto carico, superarla per un pelo e scendere dall'altra parte come se fosse stato tutto previsto.",
		"si fa da parte mentre un carretto scende sferragliando da un ponte a schiena d'asino, col padrone che trotta dietro e lo tiene più per speranza che per controllo.",
	},
	["sw.muse.w19.bridge.006"] = {
		"Questo ponte l'ho già attraversato. O suo fratello gemello. Questa città fa i ponti a cucciolate.",
		"Stessa arcata, stesso parapetto, stessa pietra scheggiata. O giro in tondo, o gli scalpellini avevano un disegno solo.",
		"È la terza volta che passo su questo ponte. Oppure Stormwind ne possiede parecchi tutti uguali.",
	},
	["sw.muse.w19.bridge.007"] = {
		"A metà di certi ponti la città cambia idea: fumo di forgia alle spalle, inchiostro e pane davanti. L'acqua in mezzo non è di nessuno.",
		"A Stormwind un ponte è un confine senza guardie. Un capo sa di un quartiere, l'altro di quello dopo, e il centro sa di canale e non appartiene proprio a nessuno.",
	},
	["sw.muse.w19.bridge.008"] = {
		"Ogni arcata è appesa a una sola pietra in cima, dicono gli scalpellini, e il resto del ponte si appoggia a lei come una casa si appoggia all'unico figlio di cui fidarsi.",
		"La chiave di volta di un ponte fa meno lavoro di tutte e regge più peso di tutte, mi ha detto una volta un vecchio scalpellino. Sembrava convinto che questo spiegasse molte cose sui re.",
	},
	["sw.muse.w19.bridge.009"] = {
		"Sotto i ponti più larghi c'è una cornice asciutta appena sopra l'acqua, e di rado è vuota: una coperta, una pentola, un paio di stivali messi in ordine, uno accanto all'altro.",
		"In questa città c'è chi non ha altro tetto che un'arcata. La cornice lì sotto la tengono spazzata, che è più di quanto facciano certi nobili con le loro scale.",
		"Sotto uno dei ponti qualcuno ha appeso un brandello di tenda davanti alla cornice asciutta. Una tenda. Laggiù c'è chi pretende di avere una porta.",
	},
	["sw.muse.w19.bridge.010"] = {
		"si attarda su un ponte dove un violinista suona più per l'acqua che per i passanti, col cappello ai piedi che contiene due monete di rame e una foglia.",
		"rallenta su un ponte per ascoltare un violinista che sgrana un'aria triste per nessuno in particolare, a occhi chiusi, con una sola moneta di rame a fargli compagnia nel cappello.",
	},
	["sw.muse.w19.bridge.011"] = {
		"Di notte ogni lampada sui ponti arde due volte, una sopra l'acqua e una sotto, e quella di sotto non sta mai ferma.",
		"Le lampade dei ponti calano la loro luce nel canale, lunga e tremante, come funi su cui qualcuno prova ad arrampicarsi nel buio.",
		"Notte sui ponti: lampada, riflesso, lampada, riflesso, per tutto il canale, come una frase scritta due volte.",
	},
	["sw.muse.w19.bridge.012"] = {
		"Su un ponte nel cuore di Stormwind, cappuccio alzato, a fissare l'acqua come un perdigiorno qualsiasi. In una città nemica il travestimento migliore è un'aria annoiata.",
		"Appoggiarsi al parapetto, guardare il canale, sbadigliare ogni tanto. Nessuno guarda due volte chi perde tempo, nemmeno a Stormwind, nemmeno davanti a una faccia come la mia.",
	},
	["sw.muse.w19.bridge.013"] = {
		"Qui la gente si separa sui ponti, ci ho fatto caso. A metà strada uno prosegue e l'altro torna indietro, e il ponte li tiene lontani alla distanza giusta.",
		"Un ponte è un buon posto per un addio. Ha un centro dove fermarsi e due capi verso cui andarsene, e l'acqua non dice niente né in un senso né nell'altro.",
	},
	["sw.muse.w19.bridge.014"] = {
		"Su, in cima, giù. Su, in cima, giù. Chi ha costruito questi ponti aveva ginocchia eccellenti.",
		"Potrei disegnare la mappa dei ponti di questa città basandomi solo sui dolori ai polpacci.",
		"Stormwind è una città di scale che fanno finta di essere ponti.",
	},
	["sw.muse.w19.bridge.015"] = {
		"Gli umani fanno un ponte per ogni fosso d'acqua. A Ironforge ci avremmo scavato sotto un tunnel e avremmo cenato all'ora giusta.",
		"Un ponte è solo un tunnel che ha perso il coraggio, dicono i minatori. Gli umani qui ne hanno costruiti un'infinità, e anche molto graziosi.",
	},
	["sw.muse.w19.canal.001"] = {
		"Ogni poche decine di passi una rampa di gradini scende in un canale e si ferma lì, dentro l'acqua, consumata nel mezzo. A qualcuno serviva arrivare molto vicino a quest'acqua, e molto spesso.",
		"Gradini fino all'acqua per tutta la lunghezza dei canali, e nessuno porta altrove che dentro. Per lavare, attingere, pescare o cadere: la pietra non tiene il conto.",
		"I gradini dei canali sono le uniche scale di Stormwind che non portano in nessun posto desiderabile, e sono le più consumate di tutte.",
	},
	["sw.muse.w19.canal.002"] = {
		"Lungo i muri dei canali corre una fascia scura, un palmo sopra l'acqua: lì il livello è rimasto a lungo. Poi l'acqua è calata. La pietra ha tenuto il segno.",
		"Guarda da vicino il muro di un canale: le vecchie altezze dell'acqua ci sono scritte a strisce di muschio e di macchie, come gli anelli di un tronco abbattuto.",
		"I muri dei canali tengono un diario di muschio: verde a filo d'acqua, nero più su, e più in alto una vecchia striscia chiara dove l'acqua arrivava un tempo e non è più arrivata.",
	},
	["sw.muse.w19.canal.003"] = {
		"Segui un canale di questa città abbastanza a lungo e ti riporta dritto al ponte di partenza. All'acqua girare in tondo non dispiace. A me sì.",
		"Questi canali non finiscono mai: fanno il giro e ripassano. Come i pettegolezzi a un matrimonio.",
		"Chi li ha progettati, questi canali? Vorrei scambiarci due parole. E avere una mappa.",
	},
	["sw.muse.w19.canal.004"] = {
		"C'è gente che pesca nei canali e mangia quello che prende. Giurano che è buono. Mi fido sulla parola, a debita distanza.",
		"C'è sempre qualcuno che pesca dal muro di un canale, la lenza molle e gli occhi socchiusi. Che qualcosa abbocchi, a quanto pare, è del tutto secondario.",
		"I pescatori dei canali non parlano mai di quello che hanno preso. Parlano di quello che stavano per prendere, sempre più grosso, e sempre scappato sotto un ponte.",
	},
	["sw.muse.w19.canal.005"] = {
		"osserva un vecchio pescatore sui gradini del canale tirare su l'amo vuoto, esaminarlo come se l'avesse offeso e rimetterlo in acqua.",
		"si ferma accanto a un bambino che pesca dal bordo del canale con un chiodo piegato legato a uno spago, e si sente dire, molto seriamente, di fare un passo indietro, perché i pesci vedono.",
		"si trattiene accanto a un pescatore sui gradini del canale giusto il tempo di vederlo tirar su un vecchio stivale, guardarlo con affetto e metterlo comunque nel cesto.",
	},
	["sw.muse.w19.canal.006"] = {
		"I canali si imparano col naso prima che coi nomi. Catrame lì, pane bagnato qui, e dopo la curva qualcosa che nessuno è andato a vedere.",
		"Nei giorni buoni i canali sanno di verde. In quelli cattivi sanno di lite.",
	},
	["sw.muse.w19.canal.007"] = {
		"nota gli anelli di ferro murati nella parete del canale all'altezza del ginocchio, ognuno lucidato lungo la curva interna da un'infinità di cime.",
		"passa il pollice su un anello d'ormeggio nel muro del canale, il ferro scavato in un solco liscio dove le funi tirano da più tempo di quanto chiunque ricordi.",
	},
	["sw.muse.w19.canal.008"] = {
		"Qualcuno questi canali dovrà pur dragarli. Ho visto la squadra all'opera: rastrelli lunghi, stivali alti e la faccia di chi ha già trovato tutto quello che c'era da trovare.",
		"Chi draga i canali non si stupisce mai. Qualunque cosa salga col rastrello, uno stivale, una sedia, la parrucca di un nobile, ne ha già tirate su due uguali.",
		"Tutto quello che i canali inghiottono, prima o poi una squadra di dragatori lo risputa sulla riva, gocciolante, perché lo smistino uomini che hanno smesso di fare domande.",
	},
	["sw.muse.w19.canal.009"] = {
		"Nuotare nei canali? Per scommessa, forse. Una volta.",
		"In questa città si nuota in un canale per due motivi soltanto: una scommessa persa o un piede messo male.",
		"Piuttosto che nuotare in uno di questi canali farei un bel giro largo. Dopo averli annusati, un giro larghissimo.",
	},
	["sw.muse.w19.canal.010"] = {
		"Quando un pensiero non sta fermo, lo porto a spasso lungo un canale. L'acqua va alla velocità giusta per pensare: piano, ma senza fermarsi mai.",
		"Per attraversare la città le strade sono più svelte. Per sciogliere un nodo che hai in testa, niente batte il giro lungo, accanto all'acqua.",
		"Camminare accanto all'acqua mi rallenta senza che me ne accorga. Al terzo ponte di solito ho già scordato perché avessi tanta fretta.",
	},
	["sw.muse.w19.canal.011"] = {
		"Chiedi dei canali a chiunque sia cresciuto a Stormwind e ti racconterà del giorno in cui ci è caduto dentro. Ce l'hanno tutti. È praticamente un certificato di nascita.",
		"Ogni bambino di questa città cade in un canale una volta, dicono i genitori. La seconda è sbadataggine.",
		"La gente di Stormwind sa dirti in quale canale è caduta da bambina, quanto era profondo e chi ha riso. Di tutto, chi ha riso è ciò che ricorda più a lungo.",
	},
	["sw.muse.w19.canal.012"] = {
		"guarda il canale gonfiarsi sotto la tempesta, l'acqua che sale di un gradino e allunga le dita verso il successivo, le barche ormeggiate che strattonano le cime come cani a un cancello.",
		"si scosta dal bordo del canale mentre la tempesta spinge l'acqua su per i gradini di pietra, torbida e svelta, carica di foglie arrivate da chissà dove.",
	},
	["sw.muse.w19.canal.013"] = {
		"I canali hanno una loro piccola musica, se ti fermi ad ascoltarla: l'acqua che lambisce la pietra, una pertica che bussa contro uno scafo, un'imposta che si apre lassù e un catino svuotato senza preavviso.",
		"Sotto il rumore delle strade i canali tengono il loro tempo: uno sciabordio, un gorgoglio, il colpo sordo del legno contro il legno.",
		"Anche col frastuono della strada, là sotto il canale continua le sue piccole faccende: un gorgoglio a uno scolo, uno schiocco contro un gradino, una cima che scricchiola contro un anello.",
	},
	["sw.muse.w19.canal.014"] = {
		"Due case una di fronte all'altra, ai lati di un canale, possono passare una vita a portata di voce senza mai farsi visita. Il ponte più vicino è a tre strade, e l'orgoglio sta molto più vicino.",
		"In questa città un canale divide meglio di un muro. I vicini dell'altra sponda si salutano, si gridano, spettegolano, e non attraversano mai: il ponte è sempre un po' troppo lontano.",
		"Due vicini ai lati di un canale possono dividere ogni lite senza mai dividere una soglia. L'acqua porta di là le urla; nessuno le ha mai chiesto di portarci una scusa.",
	},
	["sw.muse.w19.canal.015"] = {
		"Chi ha tracciato questi canali si è affidato alla gravità, alla pazienza e a nemmeno una valvola. Niente manometri, niente paratoie a ruota, niente letture di pressione. Delizioso. Primitivo, ma delizioso.",
		"Ogni gnomo che passeggia lungo questi canali finisce per abbozzare migliorie sul retro di qualcosa. Chiuse, pompe, una ruotina a pale. Gli umani ringraziano con garbo e non cambiano niente.",
		"Ho cronometrato la corrente di un canale con una foglia e un orologio da taschino. Deludente. Mi dicono che qui nessuno ha mai voluto che andasse più svelta.",
	},
	["sw.muse.w19.cart.001"] = {
		"dà una spinta quando la ruota di un carretto finisce in una fessura del selciato, e il padrone del carretto ringrazia tutti e nessuno in particolare.",
		"guarda tre sconosciuti tirare fuori da un solco la ruota di un carro, poi separarsi senza una parola, ognuno alla sua commissione.",
	},
	["sw.muse.w19.cart.002"] = {
		"In questa città c'è un carro con un assale che strilla come un gatto pestato. Non l'ho mai visto, ma lo riconoscerei ovunque, e come me ogni cane di Stormwind.",
		"Da qualche parte un assale implora un po' di grasso, a gran voce, in cima a ogni salita. Il carrettiere ha deciso, evidentemente, che gli fa compagnia.",
	},
	["sw.muse.w19.cart.003"] = {
		"si scansa per lasciar passare un carro il cui conducente dorme della grossa sulla panca, le redini lente, mentre il vecchio cavallo alle stanghe prende ogni curva senza che nessuno glielo chieda.",
		"lascia passare un carrettiere che sonnecchia col mento sul petto, mentre il cavallo si fa strada nella folla come se facesse quel giro da quando era puledro.",
	},
	["sw.muse.w19.cart.004"] = {
		"Tutti guardano quello che i carri portano dentro Stormwind. Nessuno guarda quello che portano fuori: cenere dei forni, casse rotte, la paglia spazzata di un intero quartiere. Anche una città deve vuotarsi le tasche.",
		"I carri che lasciano la città a fine giornata portano le parti che nessuno ammira: cenere, calcinacci, paglia vecchia, la spazzatura del mercato. Escono in silenzio, e nessuno li saluta.",
		"Qualcuno deve portare fuori dalla porta la cenere della città ogni settimana. Una città così grande deve bruciarsi una foresta all'anno solo per tenere caldi i forni.",
	},
	["sw.muse.w19.cart.005"] = {
		"Attenti al carretto! Lo dicono tutti i facchini di Stormwind, sempre con tre passi di ritardo.",
		"Ogni carretto di questa città arriva con un grido d'avvertimento, e ogni grido arriva subito dopo la ruota.",
		"Largo al carro! Che, in questa città, vuol dire che sei già nel posto sbagliato.",
	},
	["sw.muse.w19.cart.006"] = {
		"Dalla porta è entrato un carro qualunque, con una forma lunga sotto una coperta e due soldati che gli camminavano accanto senza parlare. La folla ha fatto spazio senza che nessuno lo chiedesse.",
		"Ogni tanto entra piano un carro con un soldato per lato e qualcosa di lungo sotto un mantello, dietro. La gente smette di parlare mentre passa, e ricomincia un po' più tardi del dovuto.",
	},
	["sw.muse.w19.cart.007"] = {
		"si sposta per far passare una gallina scappata da un carro del mercato, che attraversa la strada con la sicumera di un nobile.",
		"guarda un carrettiere inseguire un'oca fuggiasca per due volte attorno a un carro fermo, mentre la folla dispensa consigli e nessuno dà una mano.",
		"si scambia un'occhiata con un carrettiere la cui cassa di maialini ha appena scoperto il chiavistello, poi si rifugia su uno scalino.",
	},
	["sw.muse.w19.cart.008"] = {
		"Il selciato vicino alla porta ha due lunghi solchi scavati, esattamente alla distanza di un asse. Alla fine anche la pietra cede ai carri; ne bastano qualche centinaio di migliaia.",
		"Guarda per terra vicino alla porta e vedrai dove sono passati i carri della città: due solchi gemelli lucidati nelle pietre, il registro della strada per ogni carico.",
		"Le ruote hanno lucidato un sentiero nelle pietre accanto alla porta: due linee chiare che brillano ogni volta che la strada è bagnata.",
	},
	["sw.muse.w19.cart.009"] = {
		"Lo vuoi a buon mercato? Prendi il carro prima che arrivi alle bancarelle. Stesse cipolle, metà prezzo, e nessuna tenda da pagare.",
		"Mai comprare a una bancarella quello che puoi prendere dal retro di un carro alla porta. La cipolla non vede la differenza; la borsa sì.",
	},
	["sw.muse.w19.cart.010"] = {
		"Gli umani non riescono a spostare niente senza una ruota e un gran baccano. Nei boschetti portavamo quello che ci serviva, e ci serviva meno. Devo ammettere, però, che i loro carri sono dipinti molto bene.",
		"Ruote dappertutto, che macinano la pietra. Mi sorprendo a camminare più piano per compensare, come se si potesse mettere in equilibrio una città.",
	},
	["sw.muse.w19.cart.011"] = {
		"È passato un carro di fieno e ha lasciato una scia di paglia dalla porta fino a metà città. La si potrebbe seguire come una storia, fino a dove mangiano i cavalli di Stormwind.",
		"Dove è passato un carro di fieno lo capisci dalla paglia che perde a ogni angolo. Gli spazzini gli vanno dietro come corvi dietro a un aratro.",
	},
	["sw.muse.w19.cart.012"] = {
		"si scambia una lunga occhiata con un bambino seduto sulla sponda posteriore di un carro, le gambe a penzoloni, che si sta chiaramente prendendo tutta la città in un colpo solo e la trova accettabile.",
		"riceve il saluto di un bambino di campagna appollaiato su un sacco in fondo a un carro di passaggio, serio come un araldo, finché la folla non si richiude tra loro.",
	},
	["sw.muse.w19.cart.013"] = {
		"Ogni ponticello ripido di Stormwind è una battaglia tra un carrettiere e la pendenza. Di solito vince il carrettiere, ma dal linguaggio non si direbbe.",
		"Guarda un carro carico affrontare uno dei ponti ad arco della città: rincorsa, speranza, un mucchio di urla, e in cima un cavallo che lancia un'occhiata al suo conducente.",
		"I ponti ad arco di questa città li ha disegnati qualcuno che in vita sua non ha mai spinto una carriola.",
	},
	["sw.muse.w19.cart.014"] = {
		"Il legname entra dalla porta ed esce sotto forma di sedie, travi e bare. Il ferro sale dalle fucine ed esce in chiodi, cardini e ferri di cavallo. Ai carri non importa in che direzione la città trasformi le cose.",
		"Tronchi dentro, mobili fuori. Minerale dentro, chiodi fuori. Resta un'ora vicino alla porta e vedi la città fabbricare cose senza mettere piede in una bottega.",
	},
	["sw.muse.w19.causeway.001"] = {
		"osserva un vecchio calare la lenza oltre il parapetto nel fossato, piantare i gomiti sulla pietra e aspettare con la pazienza delle statue alle sue spalle.",
		"si appoggia al parapetto accanto a un pescatore che non ha preso niente e ne sembra contentissimo, la lenza immobile nell'acqua verde di sotto.",
		"passa un momento accanto a un ragazzino che fa penzolare oltre il parapetto uno spillo piegato legato a uno spago, e spiega con gran serietà che quello grosso è laggiù da qualche parte.",
	},
	["sw.muse.w19.causeway.002"] = {
		"A giudicare da quello che galleggia nel fossato, il ponte è il posto migliore di Stormwind per perdere un cappello. Ci si sporge troppo, un'imprecazione, e via a raggiungere gli altri.",
		"Nel fossato c'è sempre un cappello. Mai lo stesso. Secondo me il ponte li colleziona.",
		"Il fossato deve avere la più bella collezione di cappelli del regno. Nessun proprietario è mai venuto a reclamarne uno.",
	},
	["sw.muse.w19.causeway.003"] = {
		"La polvere della strada di Elwynn si ferma alla porta. Oltre, è tutta pietra lavorata, e il cambio lo senti sotto ogni stivale e ogni ruota: prima piano, poi forte.",
		"Polvere da una parte della porta, pietra squadrata dall'altra, e in mezzo una linea netta come una firma. La foresta finisce lì, e ogni ruota di carro lo annuncia sferragliando.",
	},
	["sw.muse.w19.causeway.004"] = {
		"Lungo, quel ponte. Secondo me l'hanno fatto apposta, così chi arriva ha il tempo di ripassare cosa dire alla porta.",
		"Il ponte della porta è lungo abbastanza da farti cambiare idea, e corto abbastanza da non fartela cambiare davvero.",
		"Quel ponte è così lungo da avere un mezzo come si deve. Gran parte dei ponti non si scomoda.",
	},
	["sw.muse.w19.causeway.005"] = {
		"lascia cadere un sasso oltre il parapetto e ascolta: il fossato lo inghiotte con un suono piccolo e profondo, come se lo stesse aspettando.",
		"lascia cadere nel fossato una crosta di pane e guarda una sagoma lenta salire dal verde a prenderla, poi riaffondare senza fretta.",
	},
	["sw.muse.w19.causeway.006"] = {
		"Gli eserciti lasciano la città sul lungo ponte in colonna, e ci tornano a gruppetti. Il selciato non vede la differenza; la gente ai lati la vede sempre.",
		"Il lungo ponte ha portato fuori da Stormwind ogni esercito in buon ordine, e ha riportato dentro quello che ne restava in nessun ordine.",
		"Quel ponte ha sentito ogni genere di marcia: quella fiera, quella stanca, e quella con dei vuoti in mezzo.",
	},
	["sw.muse.w19.causeway.007"] = {
		"Vuoi sapere chi c'è in città? Non chiedere alla locanda. Siediti sul parapetto del ponte con una mela e guarda. Prima o poi passano tutti di lì.",
		"I perdigiorno sul parapetto vicino alla porta ne sanno più dello SI:7, e lavorano per una mela.",
	},
	["sw.muse.w19.causeway.008"] = {
		"aspetta sul bordo del ponte mentre un carro di fieno, una colonna di soldati e un gregge di pecore cercano di superarsi a vicenda, e tutti gridano indicazioni a tutti.",
		"sale sul cordolo del ponte mentre le pecore di un mandriano scorrono attorno a un carro fermo come acqua attorno a un sasso, belando il loro parere sulla città.",
	},
	["sw.muse.w19.causeway.009"] = {
		"Il fossato sa di verde: alghe di stagno, pietra bagnata, e sotto qualcosa che nessuno ha mai avuto voglia di indagare.",
		"Sporgiti dal parapetto del ponte e il fossato ti manda su il suo odore: erbacce, pietra fredda e un accenno di quello che ci è cascato dentro per ultimo.",
	},
	["sw.muse.w19.causeway.010"] = {
		"Con questa nebbia il lungo ponte non ha un'altra estremità. I carri escono dal bianco con le lanterne accese, come se Elwynn li mandasse uno per uno.",
		"La nebbia si posa sul fossato come lana su uno stagno. Il ponte ci entra dentro e smette semplicemente di essere un ponte, e ogni carro che ne riesce è una piccola sorpresa.",
	},
	["sw.muse.w19.causeway.011"] = {
		"Regola del ponte: carri nel mezzo, pedoni ai lati, e pecore dove decidono le pecore.",
		"Sul ponte tieniti di lato. I carrettieri non si fermano, e i loro cavalli le buone maniere non le hanno mai sentite nominare.",
		"Sul ponte cedi il passo a tutto quello che ha ruote o corna. L'orgoglio guarisce; i piedi ci mettono di più.",
	},
	["sw.muse.w19.causeway.012"] = {
		"Giù dove le mura incontrano il fossato c'è una fascia scura sulla pietra, alta una spanna, che segna dove l'acqua è rimasta per anni. Le mura tengono il diario del fossato.",
		"Le pietre a filo d'acqua del fossato sono più scure e più smussate delle altre, consumate da un'acqua che ha avuto pazienza molto a lungo.",
	},
	["sw.muse.w19.causeway.013"] = {
		"Ogni volta che attraverso il lungo ponte per uscire mi raddrizzo senza volerlo. L'Alleanza ha messo la sua faccia migliore sulla porta di casa, e un po' ti si attacca addosso.",
		"Uscire su quel ponte verso la porta ha qualcosa di speciale. Qualunque cosa mi aspetti là fuori, l'Alleanza mi ha fatto passare dalla sua porta più bella.",
	},
	["sw.muse.w19.causeway.014"] = {
		"si ferma a metà del ponte, dove la porta e la città sono lontane uguali, e resta un momento senza appartenere a nessuna delle due.",
		"indugia nel mezzo del lungo ponte, con la porta da un lato e il rumore delle strade dall'altro, come se aspettasse che una delle due si facesse avanti.",
	},
	["sw.muse.w19.causeway.015"] = {
		"C'è una donna che quasi tutti i giorni sta al parapetto del ponte, rivolta verso la porta. Le guardie la salutano per nome e non le chiedono mai chi aspetta. Credo lo sappiano.",
		"Non tutti quelli appoggiati al ponte guardano l'acqua. Alcuni guardano la porta, come si guarda un uscio da cui qualcuno ha promesso di ripassare.",
		"Un vecchio si porta uno sgabello al parapetto e si siede rivolto alla porta. A chi glielo chiede dice che gli piace la vista. La vista è una strada.",
	},
	["sw.muse.w19.causeway.016"] = {
		"Non sporgerti dal parapetto con la borsa piena. Il fossato è un ladro molto paziente.",
		"Tieni la borsa ben legata quando ti affacci da quel ponte. Il fossato non dà mai il resto.",
	},
	["sw.muse.w19.champion.001"] = {
		"Alla Champions' Hall i titoli si distribuiscono a gradini: sergente, cavaliere, maresciallo, uno più lucido dell'altro. La salita è lunga, e lastricata di lividi.",
		"Knight-Lieutenant, Knight-Captain, Knight-Champion: la Champions' Hall ha più gradi di quante pagnotte abbia un fornaio, e ognuno costa di più.",
	},
	["sw.muse.w19.champion.002"] = {
		"si fa da parte per un'ufficiale che esce a grandi passi dalla Champions' Hall, con una mostrina nuova sul colletto che continua a toccare come se potesse cadere.",
		"fa spazio sui gradini della Champions' Hall a un soldato che esce con un tabarro nuovo piegato sul braccio, tenuto come qualcosa che potrebbe ammaccarsi.",
	},
	["sw.muse.w19.champion.003"] = {
		"Non tutti alla Champions' Hall vengono per un grado. Qualcuno viene a fare una domanda sottovoce al banco su un nome, e se ne va senza la risposta che sperava.",
		"Tra i soldati in attesa alla Champions' Hall ce n'è sempre uno che non viene a ritirare niente: chiede soltanto di qualcuno, col berretto stretto tra le mani.",
	},
	["sw.muse.w19.champion.004"] = {
		"Due soldati davanti alla Champions' Hall confrontano le mostrine con la serietà di due ragazzini che confrontano biglie. Nessuno dei due ammetterà che quella dell'altro è più lucida.",
		"I vecchi soldati non resistono: ne incontri uno col grado nuovo e l'altro si china a esaminare le cuciture, trova un filo allentato, ed è felicissimo.",
	},
	["sw.muse.w19.champion.005"] = {
		"Qualunque cosa discutano i nobili, la Champions' Hall resta fedele ai soldati che tengono le nostre linee. È l'unica sala della città dove il pavimento lo consumano gli stivali e non le scarpine di velluto.",
		"I nostri soldati tornano dai fronti alla Champions' Hall per essere contati. Conta, essere contati. Là fuori è facile pensare che la città si sia dimenticata di te.",
	},
	["sw.muse.w19.champion.006"] = {
		"Gli istruttori dell'Old Town hanno una sola lezione: colpisci di nuovo. Il corso avanzato: colpisci di nuovo, più forte.",
		"Chiedi un segreto a un istruttore di guerrieri: avrai un'alzata di spalle e una spinta verso qualcosa da colpire.",
		"Gli istruttori dei guerrieri non dicono mai 'ben fatto'. Dicono 'un'altra volta', e impari a sentire la differenza.",
	},
	["sw.muse.w19.champion.007"] = {
		"sente da una porta aperta la voce di un istruttore che conta piano fino a dieci, e una dozzina di allievi che gemono a ogni numero.",
		"coglie da una porta aperta il ritmo sordo di armi di legno su pali imbottiti, e un istruttore che abbaia sempre la stessa parola, che somiglia molto a 'gomito'.",
	},
	["sw.muse.w19.champion.008"] = {
		"L'Old Town addestra tutti e due i tipi: i guerrieri, che imparano a stare dove tutti li vedono, e i ladri, che due porte più in là imparano l'esatto contrario.",
		"Un quartiere, due scuole: in una ti insegnano a essere la cosa più rumorosa di uno scontro, nell'altra la più silenziosa. Bevono nella stessa taverna e fanno finta di non conoscersi.",
	},
	["sw.muse.w19.champion.009"] = {
		"Dentro la Champions' Hall, dicono, sono appesi i colori di compagnie che non esistono più. Nessuno li toglie. Uno stendardo costa meno di un monumento e dice la stessa cosa.",
		"Nella sala dove si radunano i campioni, raccontano i soldati, pendono sbiaditi i colori di vecchie compagnie: reparti sciolti, accorpati, o semplicemente finiti. Li spolverano, mai li sostituiscono.",
	},
	["sw.muse.w19.champion.010"] = {
		"Ogni grado consegnato in quella sala dell'Old Town è stato guadagnato contro qualcuno come me. Ci passo davanti come si passa davanti a un macellaio che conosce le tue misure.",
		"La Champions' Hall: dove Stormwind conta quello che ha preso all'Orda. Non mi fermo a leggere il conto.",
	},
	["sw.muse.w19.champion.011"] = {
		"passa accanto a una rastrelliera di elmi d'esercitazione ammaccati messi ad arieggiare, ognuno con la stessa ammaccatura nello stesso punto: il colpo preferito di un istruttore.",
		"nota una cesta di elmi imbottiti accanto a una porta, tutti ammaccati sopra l'orecchio sinistro, come se avessero incontrato tutti la stessa opinione.",
	},
	["sw.muse.w19.champion.012"] = {
		"I soldati della Champions' Hall parlano di Alterac, di Warsong Gulch e dell'Arathi Basin come i contadini parlano di tre campi ostinati: senza fine, e con il fango in ogni frase.",
		"Ascolta i discorsi davanti alla Champions' Hall e tutta la guerra si riduce a tre nomi, una gola, un bacino e una valle, contesi come pedine su una scacchiera.",
	},
	["sw.muse.w19.champion.013"] = {
		"I titoli sono belle cose. Però non si mangiano, e non ci si dorme sotto.",
		"Un grado e una pacca sulla spalla. Ho avuto paghe peggiori, ma mai così leggere.",
		"Le medaglie sono belle. Gli stivali che non fanno acqua, di più.",
	},
	["sw.muse.w19.champion.014"] = {
		"Uno dei vecchi istruttori dell'Old Town tiene una lista degli allievi tornati a dirgli grazie, dicono le guardie. È una lista corta. La porta nel taschino.",
		"Gli istruttori non sanno quasi mai che fine fanno i loro allievi. I fortunati ricevono una visita, anni dopo, da qualcuno che sulla soglia sta un po' più dritto.",
	},
	["sw.muse.w19.champion.015"] = {
		"La Champions' Hall: ti appuntano un titolo addosso e ti rispediscono subito fuori.",
		"In quella sala hanno un grado per tutto, tranne che per 'stanco'.",
		"Ogni titolo di quella sala è un modo educato per dire 'torna là fuori'.",
	},
	["sw.muse.w19.chimney.001"] = {
		"alza lo sguardo mentre il garzone di uno spazzacamino sbuca da un comignolo a due tetti di distanza, nero dal berretto agli stivali, e sventola la spazzola verso la strada come una bandiera.",
		"scorge uno spazzacamino seduto a cavalcioni sul colmo di un tetto con un tozzo di pane, le gambe fuligginose a penzoloni, a suo agio lassù come un piccione.",
	},
	["sw.muse.w19.chimney.002"] = {
		"Basta fermarsi un po' e una polvere nera sottile si posa su tutto, in questa città: davanzali, colletti, il dorso della mano. I comignoli dividono con te quello che hanno.",
		"Qui nell'aria c'è sempre un po' di fuliggine, regalo di qualche migliaio di comignoli. Passa un dito su un davanzale e la città ti scrive addosso il suo nome.",
	},
	["sw.muse.w19.chimney.003"] = {
		"Alza gli occhi e sopra Stormwind c'è una seconda folla: comignoli, centinaia, alti, tozzi, storti, alcuni con un cappellino di latta. Nessuno li ha progettati, e vanno d'accordo lo stesso.",
		"I comignoli di questa città non sono mai d'accordo su niente: uno pende a est, uno pende a ovest, uno ha un cappuccio di latta come un soldato nervoso. Insieme fanno un profilo che nessuno ha disegnato.",
		"Visti da qualsiasi altezza, i tetti di Stormwind sono irti di comignoli come la barba ispida di un carrettiere, e non ce n'è uno lungo come l'altro.",
	},
	["sw.muse.w19.chimney.004"] = {
		"guarda il fumo salire da cento comignoli in fili grigi e dritti, senza che uno solo si pieghi, come se la città fosse stata legata al cielo per sicurezza.",
		"segue il fumo che sale dritto dai tetti verso un cielo senza nuvole, ogni colonna così immobile da sembrare dipinta lì.",
	},
	["sw.muse.w19.chimney.005"] = {
		"Una via si legge dal suo fumo. Dolce e chiaro vuol dire buona quercia; denso e giallastro, carbone a buon mercato; sottile e acre, qualcuno che brucia tutto quello che brucia.",
		"I comignoli dei nobili sanno di legno di melo. Quelli dell'Old Town di carbone e di stivali vecchi. A Stormwind perfino il fumo conosce il suo rango.",
		"Segui il naso lungo una via qualsiasi e il fumo ti dice chi ci abita: resina per i falegnami, carbone per i fabbri, e sterco secco dove nessuno può permettersi di meglio.",
	},
	["sw.muse.w19.chimney.006"] = {
		"Da una finestra bassa: un tavolo, un fuoco, un cane addormentato sotto la panca, qualcuno che ride con la bocca piena. La città tiene le sue stanze più calde appena fuori dalla portata della strada.",
		"Una porta socchiusa, uno scorcio di focolare e un bollitore che comincia a fischiare, poi la strada mi porta oltre. Stormwind è piena di stanzette così, accese e private.",
	},
	["sw.muse.w19.chimney.007"] = {
		"A Stormwind la gente sfiora la manica di uno spazzacamino per buona fortuna, o almeno così mi ha detto uno spazzacamino con la faccia più seria del mondo, prima di ammettere che l'usanza l'aveva inventata lui.",
		"Uno spazzacamino mi ha giurato che toccare la sua manica piena di fuliggine porta un mese di buona sorte. Per il privilegio chiedeva un rame, ed è lì, a quanto pare, che finiva la fortuna.",
	},
	["sw.muse.w19.chimney.008"] = {
		"toglie con un colpetto un granello di fuliggine da una manica, ne trova altri due e lascia perdere: la città {g:lo|la} segna come segna tutti.",
		"strofina una macchia di fuliggine sul dorso della mano e riesce solo ad allargarla in una nuvoletta grigia dalla forma di un posto lontano.",
	},
	["sw.muse.w19.chimney.009"] = {
		"Il mio mantello raccoglie il fumo della città come un cane raccoglie i forasacchi. Per giorni, dopo che me ne sarò {g:andato|andata}, saprò delle cene degli altri.",
		"Fumo di legna, fumo di carbone, la frittura di qualcuno: finisce tutto tra le pieghe del mantello. Stormwind mi dà un ricordino, che io lo voglia o no.",
		"Per una settimana continuerò a togliermi il fumo di Stormwind dal cappuccio.",
	},
	["sw.muse.w19.chimney.010"] = {
		"La tempesta continua a ricacciare il fumo giù per il camino, e ogni pochi minuti tutta la sala tossisce insieme, poi torna ai suoi discorsi come se niente fosse.",
		"A ogni raffica, dal focolare torna nella sala uno sbuffo di fumo. Nessuno ci fa caso. A Stormwind, pare, le tempeste entrano a scaldarsi.",
	},
	["sw.muse.w19.chimney.011"] = {
		"Mille comignoli in questa città, e nemmeno un fuoco a cui sedersi senza prima ordinare da bere.",
		"Tutto quel fumo vuol dire tutti quei focolari, e ognuno dietro una porta chiusa.",
		"Tanti focolari, e ognuno è di qualcun altro.",
	},
	["sw.muse.w19.chimney.012"] = {
		"Ogni comignolo che fuma vuol dire qualcuno, lì sotto, che si aspetta di esserci anche domani. Una città intera di comignoli è una forma di coraggio silenzioso.",
		"Sulle strade, una colonna di fumo può voler dire guai. Qui, mille colonne vogliono dire cena. Mi ci vuole un momento per ricordare in quale mondo mi trovo.",
		"Il fumo dei comignoli sopra una città vuol dire che si aspetta di svegliarsi. Mi conforta più delle mura.",
	},
	["sw.muse.w19.chimney.013"] = {
		"alza la testa a un filo di fumo di legno di ciliegio che arriva da qualche parte qui vicino, così dolce da interrompere una conversazione.",
		"si volta verso uno sbuffo di fumo di pino, resinoso e pungente, che arriva da un focolare fuori vista.",
	},
	["sw.muse.w19.chimney.014"] = {
		"Gli umani fanno un camino per ogni stanza, piccolo e storto. A Ironforge una buona canna fumaria porta via il fumo di una sala intera, e nessuno tossisce.",
		"Tanti comignoli, e tutti che tirano male. Datemi una settimana e un muratore nanico, e questi tetti tirerebbero come una forgia.",
	},
	["sw.muse.w19.chimney.015"] = {
		"Fumo di carbone, pane che cuoce e ardesia bagnata. Dovunque io vada, è questo che la mia gente intende quando dice 'casa'.",
		"L'odore dei comignoli di Stormwind entra nelle ossa degli umani presto e non se ne va più. Lo riconoscerei anche {g:bendato|bendata}, in qualsiasi angolo del mondo.",
	},
	["sw.muse.w19.chimney.016"] = {
		"Guarda questi polsini. Qualche via di Stormwind e hanno il colore di uno spazzacamino.",
		"Qui tutto lascia il segno. Per lo più fuliggine.",
	},
	["sw.muse.w19.court.001"] = {
		"Prima o poi ogni stivale del regno passa su questo tappeto, e nessuno se lo pulisce mai. Nella fortezza c'è un servitore che lo sa meglio del reggente.",
		"Contadini, ambasciatori, soldati, fango: il lungo tappeto della sala del trono li ha presi tutti, e qualcuno deve spazzolarlo prima che arrivi il prossimo carico.",
	},
	["sw.muse.w19.court.002"] = {
		"osserva un paggio che scende dalla fortezza a passo svelto, senza mai mettersi a correre, una lettera piegata stretta al petto.",
		"si scosta per un paggio nei colori reali che scende di corsa dalla fortezza, tutto gomiti e serietà, con entrambe le mani a proteggere una lettera sigillata.",
		"segue con lo sguardo un paggio che scende i gradini sotto la fortezza a due a due e poi, ricordandosi dov'è, a uno a uno.",
	},
	["sw.muse.w19.court.003"] = {
		"Quelli che scendono dalla fortezza parlano troppo piano per la strada, per i primi venti passi. Poi un carro per poco non li investe, e si ricordano dove sono.",
		"Chi è appena uscito dalla corte si riconosce subito: voce bassa e mani giunte, fino al primo grido di un pescivendolo.",
		"I cortigiani scendono dalla fortezza sbattendo le palpebre al rumore delle strade, come chi esce da un tempio e si ritrova in mezzo a una fiera.",
	},
	["sw.muse.w19.court.004"] = {
		"A corte nessuno dice mai di no. Dicono «sarà preso in considerazione». Chiunque in questa città sa cosa vuol dire.",
		"«La questione è all'esame»: alla corte di Stormwind è il modo educato di chiudere una porta molto, molto lentamente.",
	},
	["sw.muse.w19.court.005"] = {
		"Le notizie di corte arrivano ai banchi del formaggio prima che agli scrivani della corte stessa. I venditori sapevano a memoria la nuova gabella mentre l'araldo si schiariva ancora la voce.",
		"Qualunque cosa si decida nella fortezza, il mercato lo sa per primo. Scommetto che il reggente viene a sapere metà delle sue decisioni da un fruttivendolo.",
	},
	["sw.muse.w19.court.006"] = {
		"Un servitore della fortezza l'ha raccontato a tutta la locanda: alla tavola alta mettono ancora la coppa di re Varian, e la portano via ancora piena.",
		"Alla tavola della fortezza c'è un posto apparecchiato per il re a ogni pasto, dicono i servitori. Nessuno ci si siede, e nessuno ha il coraggio di smettere di apparecchiarlo.",
		"I servitori lucidano ancora il posto del re a tavola, si racconta. Un coltello, un cucchiaio, una coppa, tutti lucenti, tutti in attesa.",
	},
	["sw.muse.w19.court.007"] = {
		"si sofferma su un cortigiano vestito di velluto che si è fermato al bordo della strada a grattare qualcosa da una scarpa morbida, fissando il selciato come se l'avesse fatto apposta.",
		"nota un uomo in sete di corte che attraversa il selciato in punta di piedi, come se la strada fosse una diceria accanto alla quale non vuole farsi vedere.",
	},
	["sw.muse.w19.court.008"] = {
		"Qui nessuno ti dice di abbassare la voce. Te lo dice l'altezza del soffitto, e l'eco dei tuoi stivali è d'accordo.",
		"La sala del trono non chiede mai silenzio ad alta voce. Fa solo sembrare un po' troppo grande ogni suono che ci porti dentro.",
		"In questa sala un guanto caduto suonerebbe come una sentenza.",
	},
	["sw.muse.w19.court.009"] = {
		"resta tra i curiosi al margine della sala del trono: da lì il silenzio si vede, ma le parole che l'hanno fatto non arrivano.",
		"indugia accanto a un pilastro sul lato della sala, dove il mormorio dei cortigiani è una marea bassa che sale ogni volta che il reggente gira la testa.",
	},
	["sw.muse.w19.court.010"] = {
		"Se la corte finisse i bisbigli, nella fortezza calerebbe un silenzio tale da sentir sbadigliare il re bambino.",
		"I bisbigli sono la vera moneta della corte. E la zecca non chiude mai.",
		"Nella fortezza non spettegolano. «Condividono preoccupazioni». Stessa cosa, scarpe migliori.",
	},
	["sw.muse.w19.court.011"] = {
		"L'abito di corte vuole guanti bianchi, dicono i sarti, e un cortigiano visto aprire una porta con la propria mano ha perso il pomeriggio.",
		"I guantai di Stormwind campano grazie alla corte. Chi conta non tocca mai niente a mano nuda, men che meno una porta.",
	},
	["sw.muse.w19.court.012"] = {
		"si gira e vede un corriere nei colori reali salire di fretta verso la fortezza con un tubo sigillato sulla schiena, mentre un altro scende dalla parte opposta, più lento, a mani vuote.",
		"vede due messaggeri incrociarsi sulla via della fortezza, uno fresco e uno sfinito, senza che nessuno dei due degni l'altro di uno sguardo.",
	},
	["sw.muse.w19.court.013"] = {
		"Guarda un cortigiano a riposo: il peso su un piede, il mento mezzo girato, pronto a fare un passo verso chiunque conti subito dopo. Non stanno mai fermi davvero; ronzano.",
		"I cortigiani non camminano, scivolano, sempre un po' verso la persona più importante della stanza. In una folla troveresti il reggente guardando le loro spalle.",
	},
	["sw.muse.w19.court.014"] = {
		"Le cucine della fortezza comprano più pane di qualunque locanda della città, si vantano i fornai. Una corte va avanti a chiacchiere, e le chiacchiere vanno avanti a pane.",
		"Chiedi a un fornaio chi è il suo cliente migliore e ti indicherà la fortezza. I consigli, a quanto pare, mettono fame, anche quelli che non decidono niente.",
	},
	["sw.muse.w19.court.015"] = {
		"nota che la Guardia Reale sui gradini della fortezza porta il suo oro un po' più lucido della guardia cittadina, e sta in piedi come se quel lustro in più non pesasse niente.",
		"confronta le guardie della fortezza con quelle delle strade: gli stessi colori, lucidati con più forza, e un'immobilità che al confronto fa sembrare irrequiete le ronde cittadine.",
	},
	["sw.muse.w19.court.016"] = {
		"Un fabbro del Dwarven District giura che le corazze della Guardia Reale pesano la metà in più di quelle di una guardia cittadina, e che quel di più è tutto lucido e orgoglio.",
		"La Guardia Reale si esercita a stare ferma, ha brontolato una guardia cittadina in taverna, come gli altri soldati si esercitano con la picca. Nessuno ha riso, perché si vede.",
	},
	["sw.muse.w19.court.017"] = {
		"Con questa nebbia la fortezza è sparita del tutto. Per un po' la città non ha testa, solo spalle, e continua a farsi i fatti suoi lo stesso.",
		"La fortezza è svanita nella nebbia, torri comprese. Strano quanto in fretta si smetta di alzare gli occhi a cercarla.",
	},
	["sw.muse.w19.court.018"] = {
		"Il tuono rotola sopra la fortezza e nessuna guardia sulle mura si sposta di un dito. Al temporale nessuno ha dato il permesso.",
		"Un lampo mostra la fortezza per un istante, bianca contro il buio, ogni stendardo che schiocca. Poi sparisce, e solo le lanterne delle guardie ricordano dov'era.",
	},
	["sw.muse.w19.court.019"] = {
		"Date all'Alto Inventore Mekkatorque una settimana in quella sala del trono, e i postulanti arriverebbero col montacarichi e se ne andrebbero da uno scivolo. Il reggente ne odierebbe ogni minuto.",
		"Un regno intero mandato avanti a mano, con penne d'oca, staffette e grida. Se il mio popolo avesse ancora Gnomeregan, avremmo già regalato alla fortezza un tubo acustico come si deve.",
	},
	["sw.muse.w19.crier.001"] = {
		"Certi banditori del Trade District hanno una voce che fermerebbe una carica di cavalleria. La usano per le rape.",
		"Metà degli ambulanti di Stormwind sarebbe diventata sergente solo per la voce. Quello che ha perso l'esercito l'hanno guadagnato le cipolle.",
		"Un buon banditore farebbe sembrare timido un corno da guerra, e spreca tutto per decantare i fichi secchi.",
	},
	["sw.muse.w19.crier.002"] = {
		"fa una smorfia mentre un ambulante a un passo di distanza riempie la strada col prezzo delle anguille affumicate, ogni parola puntata dritta all'orecchio sinistro.",
		"si ritrae da un venditore che sceglie proprio quell'istante, e proprio quella distanza, per decantare le virtù delle sue cipolle sottaceto.",
	},
	["sw.muse.w19.crier.003"] = {
		"Dopo un po' i richiami dei venditori smettono di essere parole e diventano una specie di marea. Te ne accorgi solo quando una voce si spegne.",
		"Passa un'ora fra gli ambulanti e i loro richiami si confondono come acqua sui sassi. È il silenzio di quello che manca a farti alzare la testa.",
	},
	["sw.muse.w19.crier.004"] = {
		"Gridalo abbastanza forte e perfino il pesce di ieri sembra fresco.",
		"Il volume non è qualità. Quel pesce lo dimostra da tre strade di distanza.",
		"A forza di urlare il cavolo non diventa più verde.",
	},
	["sw.muse.w19.crier.005"] = {
		"Tra il prezzo del pane e quello della corda, un banditore annuncia una ricompensa per notizie di un carro partito per il Westfall e mai arrivato. Poi torna alla corda.",
		"Gli ambulanti piegano le brutte notizie in mezzo agli affari: un carro scomparso, una fattoria che tace, e poi candele, tre per un rame.",
	},
	["sw.muse.w19.crier.006"] = {
		"si ferma ad ascoltare un banditore che snocciola quaranta merci coi loro prezzi senza mai interrompersi, e alla fine per poco non applaude.",
		"ascolta con un sopracciglio alzato un ambulante che elenca ogni tipo di corda mai intrecciata senza fermarsi un istante.",
	},
	["sw.muse.w19.crier.007"] = {
		"C'è sempre un bambino, da qualche parte nel Trade District, che grida la merce dei genitori: serissimo, fortissimo, e con metà delle parole storpiate.",
		"I banditori più piccoli sono i più convinti: il figlio di un bottegaio che scandisce i prezzi con fede assoluta e due numeri sbagliati.",
	},
	["sw.muse.w19.crier.008"] = {
		"Gli ambulanti di Stormwind non hanno bisogno di ripetere. La prima volta li senti tu. La seconda, li sente Ironforge.",
		"In questa città un banditore non te lo perdi. Puoi provarci. Lo prendono come una sfida.",
	},
	["sw.muse.w19.crier.009"] = {
		"I richiami del mercato devono essere più vecchi delle mura. La città è bruciata ed è stata ricostruita, e qualcuno ha continuato a cantare «pesce fresco» sulle stesse tre note.",
		"Scommetterei che le grida del mercato non cambiano da cent'anni: la stessa cadenza su «cipolle», lo stesso calo su «a poco». La pietra si ricostruisce. Le cantilene si tramandano.",
		"Ascolta come i venditori di cipolle allungano la parola. Scommetto che i loro nonni la gridavano così già prima della Prima Guerra, e nella stessa strada.",
	},
	["sw.muse.w19.crier.010"] = {
		"si ritrova in mano un volantino messo lì da un ragazzino che è già sparito tra la folla prima che lo si possa restituire.",
		"abbassa lo sguardo su un avviso copiato a mano, la svendita di un sarto, che qualcuno ha appena infilato, senza chiedere, sotto il suo braccio.",
	},
	["sw.muse.w19.crier.011"] = {
		"Gli ambulanti umani cantano i prezzi. A casa, a Ironforge, scriviamo il prezzo col gesso su una lavagna e guardiamo storto chi lo legge due volte. Si risparmia la voce.",
		"Tutto questo sbraitare per dei cavoli. Un nano scrive il prezzo, incrocia le braccia e aspetta. I cavoli si vendono lo stesso.",
	},
	["sw.muse.w19.crier.012"] = {
		"sente gli ultimi richiami del giorno diradarsi lungo la strada mentre scende il crepuscolo, un ambulante dopo l'altro ridotto a un mormorio rauco e svogliato.",
		"ascolta le grida del mercato affievolirsi col crepuscolo, gli ultimi affari offerti alla strada con voci stanche e incrinate.",
	},
	["sw.muse.w19.crier.013"] = {
		"Un vecchio ambulante di questa città si è consumato la voce a forza di gridare, e continua a chiamare lo stesso, con un raschio. La gente compra da lui come ci si toglie il cappello.",
		"Un banditore senza più voce, che grida ancora la sua merce con un gracchio che nessuno capisce. Mezza strada compra da lui. Nessuno saprebbe dire perché.",
	},
	["sw.muse.w19.crown.001"] = {
		"Stormwind ha perso un re due volte nel giro di una vita. Il primo è morto nella sua fortezza; il secondo semplicemente non è mai arrivato. Non so quale dei due sia più difficile da piangere.",
		"Llane è caduto dentro queste mura, Varian è sparito fuori. Alla città hanno tolto il re in tutti e due i modi, eppure il trono non è mai rimasto vuoto.",
		"Un re ucciso nella sua sala, il successivo perso chissà dove fra la città e una pace. Stormwind ha poca fortuna con i suoi re, e la colpa non è certo della città.",
	},
	["sw.muse.w19.crown.002"] = {
		"si sofferma davanti al vassoio di un venditore di giocattoli, dove una fila di soldatini di legno dipinto circonda un piccolo re di legno con la faccia lasciata in bianco.",
		"prende da una bancarella un re giocattolo intagliato, scopre che il volto non è dipinto, e lo rimette giù con delicatezza in mezzo ai soldati.",
	},
	["sw.muse.w19.crown.003"] = {
		"I bambini nei vicoli giocano a fare re Anduin. Per quel che ho capito, il gioco consiste soprattutto nello stare seduti dritti mentre gli altri ti dicono cosa fare.",
		"Su una soglia una bambina siede in trono su un secchio rovesciato, e suo fratello, il reggente, le spiega con grande severità che cosa ha deciso.",
		"Nei vicoli il gioco del re e del reggente finisce sempre allo stesso modo: il reggente fa tutto il lavoro e il re viene richiamato a casa per cena.",
	},
	["sw.muse.w19.crown.004"] = {
		"I proclami cominciano tutti con «per ordine del Re» e finiscono, in lettere più piccole, con il nome del reggente. Il lavoro lo fanno le lettere piccole.",
		"Su un editto le lettere grandi appartengono a un ragazzo, quelle piccole in fondo all'uomo che l'ha scritto. Conviene leggere prima il fondo.",
	},
	["sw.muse.w19.crown.005"] = {
		"Il padre del ragazzo è partito per fare una pace e non è mai arrivato. Se fossi Anduin, quella parola la odierei, oppure la vorrei più di ogni altra cosa.",
		"In un certo senso è stata la pace a portarsi via il re. Chissà cosa pensa adesso di quella parola il ragazzo sul trono.",
	},
	["sw.muse.w19.crown.006"] = {
		"La corona appartiene al regno, non alla testa che ci sta sotto. Una città che ha dovuto ricostruire tutto il resto conosce la differenza meglio di molte altre.",
		"Le teste cambiano, la corona resta. Stormwind ha imparato a inchinarsi al cerchio d'oro e a sperare bene per chiunque ci capiti dentro.",
	},
	["sw.muse.w19.crown.007"] = {
		"Un ragazzo sul trono. Spero che nella fortezza qualcuno si ricordi di mandargli su una torta al miele, ogni tanto.",
		"Diecimila sudditi, e a nessuno è permesso dire al re che è ora di andare a letto.",
	},
	["sw.muse.w19.crown.008"] = {
		"nota un piccolo ritratto dipinto di re Varian fissato all'interno della porta di una bottega, gli angoli arricciati, un rametto secco infilato dietro la cornice.",
		"lancia uno sguardo a un ritratto sbiadito del re disperso appeso dietro un bancone, dove il bottegaio ha messo un mozzicone di candela che nessuno sembra accendere.",
	},
	["sw.muse.w19.crown.009"] = {
		"Varian è cresciuto lontano da questa fortezza dopo che suo padre vi era caduto, raccontano i vecchi soldati, ed è tornato da uomo a sedere dove sedeva Llane. Ora suo figlio aspetta sullo stesso seggio.",
		"Tre Wrynn, un solo seggio: un nonno ucciso in quella sala, un padre cresciuto in esilio per riprenderselo, un ragazzo seduto lì ad aspettare. Certe famiglie ereditano terre. Questa eredita assenze.",
	},
	["sw.muse.w19.crown.010"] = {
		"«Disperso» è una parola con dentro una porta lasciata aperta. Tutta la città tiene una mano su quella porta.",
		"Ogni settimana senza notizie, «disperso» si fa un po' più pesante da dire. La gente lo porta con più cura, come si porta una scodella piena.",
	},
	["sw.muse.w19.crown.011"] = {
		"Il nostro re è un bambino, e l'altro nostro re è una domanda. Mi inchino al primo e prego per il secondo, e non so quale dei due mi stia ascoltando.",
		"Il mio regno ha per re un ragazzo e per padre un reggente. Abbiamo passato di peggio. Solo che non mi viene in mente quando.",
	},
	["sw.muse.w19.crown.012"] = {
		"Il re bambino legge tutto quello che gli mettono davanti, dicono gli scrivani. Così gli scrivani hanno cominciato a mettergli davanti meno roba.",
		"Si dice che il giovane re faccia una domanda su ogni carta che riceve. Il consiglio ha imparato a dargli meno carte e risposte più lunghe.",
		"Gli scrivani raccontano che il ragazzo firma piano, compitando ogni parola. Nessuno osa mettergli fretta: è l'unico momento della giornata tutto suo.",
	},
	["sw.muse.w19.crown.013"] = {
		"Cappuccio alzato, occhi bassi, nella capitale del popolo contro cui combatte la mia parte. Il loro re è un bambino. Non me l'ero immaginato, e avrei preferito non scoprirlo.",
		"Dalle mie parti si parla del trono di Stormwind come se ci sedesse un signore della guerra. C'è un ragazzo, e accanto un cavaliere stanco. È più difficile da odiare di quanto vorrei.",
	},
	["sw.muse.w19.crown.014"] = {
		"Nelle taverne i vecchi dicono ancora «re Llane» come si nomina una strada in cui si è cresciuti e che non si ritrova più.",
		"Nomina Llane a chiunque sia abbastanza vecchio: prima tace, poi si intenerisce. Un re ucciso nella propria sala lascia quel genere di silenzio.",
	},
	["sw.muse.w19.crown.015"] = {
		"Un trono fatto per un uomo adulto, e in mezzo un ragazzo con i piedi posati con grande cura uno accanto all'altro.",
		"Tanti adulti in questa sala, e tutti a guardare un bambino che cerca di non agitarsi. Al suo posto, io mi agiterei.",
	},
	["sw.muse.w19.crown.016"] = {
		"Un buon re si può anche crescere, non solo farlo nascere. Stormwind ci sta provando in tutti e due i modi insieme.",
		"In quella fortezza stanno tirando su un re come si tira su un muro: piano, a piombo, sperando che niente lo colpisca prima che la malta faccia presa.",
	},
	["sw.muse.w19.crown.017"] = {
		"sente levarsi un applauso da qualche parte verso la fortezza, esile e breve, quello che una folla riserva a un bambino che ama e per cui teme un po'.",
		"si volta a un'ondata di acclamazioni dalla direzione della fortezza, breve e calda, il genere di suono che finisce con la gente che si dice a vicenda che aveva una bella cera.",
	},
	["sw.muse.w19.crown.018"] = {
		"A Ironforge capisci da quanto regna un re guardandogli la barba. Questo la barba non ce l'ha. Diamogli tempo, al ragazzo.",
		"Magni regna da prima che questo ragazzo nascesse. Un re a cui non cresce ancora la barba. Gli umani fanno tutto di corsa.",
	},
	["sw.muse.w19.crown.019"] = {
		"Tyrande guida il mio popolo da prima che venisse tagliata la prima pietra di questa città. Qui affidano un regno a un ragazzo e lo chiamano ordine naturale. Le vite brevi fanno accordi coraggiosi.",
		"Gli umani incoronano i loro figli perché non possono aspettare che crescano. Lo trovo spaventoso, e un po' bello.",
	},
	["sw.muse.w19.cutpurse.001"] = {
		"La spinta non è niente. Il furto è la scusa: una mano sul braccio, un «perdonami tanto», e mentre tu fai la persona gentile la tua borsa sta già attraversando il canale.",
		"Nella folla di Stormwind, diffida di chi si scusa troppo bene. Un incidente vero borbotta. Uno provato fa l'inchino.",
		"I migliori tagliaborse di Stormwind sono di una cortesia squisita. Ti urtano, ti chiedono scusa, si informano sulla tua salute, e se ne vanno con le tue monete nel modo più garbato che si possa immaginare.",
	},
	["sw.muse.w19.cutpurse.002"] = {
		"ringrazia uno sconosciuto per l'aiuto a raccogliere qualche moneta caduta, fa due passi e si tasta comunque la cintura.",
		"accetta una mano su un ponte affollato da qualcuno di molto affascinante, poi in cima conta la borsa, giusto per correttezza verso tutti.",
	},
	["sw.muse.w19.cutpurse.003"] = {
		"Ogni ponte di Stormwind stringe la folla in una sola gola, e i tagliaborse li conoscono tutti. Sopra l'acqua, dicono le guardie, la borsa tienila davanti, come una lanterna.",
		"Sui ponti la folla si ammucchia, e ai ladri i mucchi piacciono. Il consiglio delle guardie è semplice: borsa davanti, gomiti stretti, e niente contemplazione dell'acqua finché non sei dall'altra parte.",
		"I tagliaborse adorano i ponti: una sola entrata, una sola uscita, e tutti a guardare l'acqua.",
	},
	["sw.muse.w19.cutpurse.004"] = {
		"nota un ragazzino che ciondola vicino a una bancarella, senza niente da vendere e con le mani più pulite della via, e tiene un palmo posato sulla cintura finché non se ne va.",
		"adocchia un ragazzetto che bighellona vicino alla folla con le dita immacolate e nessuna commissione da sbrigare, e sposta la borsa sull'altro fianco senza darlo a vedere.",
	},
	["sw.muse.w19.cutpurse.005"] = {
		"Qualcuno grida «Al ladro!» e tutta la via fa la stessa cosa nello stesso istante: una mano alla propria borsa. Nessuno cerca il ladro finché non ha ritrovato le sue monete.",
		"Grida «al ladro» a Stormwind e vedrai cento persone tastarsi la cintura tutte a tempo. Il ladro, intanto, si tasta la sua, per confondersi.",
		"«Fermate il ladro!» Ogni testa si gira, ogni mano scende alla cintura, e l'unico della via che non trasale è quello che si allontana con calma.",
	},
	["sw.muse.w19.cutpurse.006"] = {
		"Ogni tagliaborse nei rapporti delle guardie è lo stesso uomo: statura media, cappuccio marrone, scappato. O c'è un ladro solo molto indaffarato, o alle guardie servono più aggettivi.",
		"«Cappuccio marrone, corporatura normale, è andato di là.» L'ho sentita già tre volte, questa descrizione. A quanto pare il ricercato numero uno di Stormwind è chiunque.",
		"Nei registri delle guardie c'è una descrizione dei tagliaborse della città che va bene per me, per la guardia che l'ha scritta e per quasi tutta la folla. La chiamano accuratezza.",
	},
	["sw.muse.w19.cutpurse.007"] = {
		"Nell'Old Town giurano che nessun tagliaborse lavora sui gradini della cattedrale. Che sia rispetto per la Luce o paura di un paladino col braccio lungo, nell'Old Town nessuno lo dice.",
		"I tagliaborse lasciano in pace la cattedrale, così dicono le chiacchiere. Qualcuno parla di onore. Altri indicano i paladini sui gradini e parlano di aritmetica.",
	},
	["sw.muse.w19.cutpurse.008"] = {
		"si gira di scatto a un tocco leggero alla cintura e trova solo una bambina che tende in alto un bottone caduto chissà dove, fierissima di averlo preso al volo.",
		"si volta di colpo a uno strattone allo zaino e si trova davanti un bambino che restituisce un guanto caduto, serio come una guardia che consegna un prigioniero.",
	},
	["sw.muse.w19.cutpurse.009"] = {
		"La fila più lunga del Trade District non è quella per la casa d'aste. È quella dei tagliaborse, che la risalgono dal fondo con molta pazienza, come tutti gli altri.",
		"Qui nel Trade District il commercio più fiorente è quello senza bancarella. Lavora la coda della casa d'aste, una borsa dopo l'altra.",
	},
	["sw.muse.w19.cutpurse.010"] = {
		"La città insegna ufficialmente il mestiere ai suoi ladri, nell'Old Town, e poi li arresta ufficiosamente da tutte le altre parti. C'è una lezione, in questo, ma non saprei dire per chi.",
		"In un retrobottega dell'Old Town un istruttore sta mostrando a qualcuno come sfilare una borsa senza un rumore. Tre vie più in là, una guardia sta mostrando a qualcun altro l'interno di una cella. A Stormwind piace tenere occupati tutti e due i mestieri.",
	},
	["sw.muse.w19.cutpurse.011"] = {
		"guarda una vecchia del mercato riporre la borsa e coglie il luccichio di un amo cucito appena dentro l'imboccatura. Chi ci infila la mano senza invito se ne andrà con un ricordino.",
		"nota un amo da pesca cucito all'interno del bordo della borsa di un'ortolana, con la punta in fuori, e se ne tiene a rispettosa distanza.",
	},
	["sw.muse.w19.cutpurse.012"] = {
		"Le mani dove le vedo, per favore. Sì, tutte e due. Fino a due so contare.",
		"Così vicino basta. La mia borsa mi piace dov'è, e piace anche a lei.",
		"Bella folla per una passeggiata, eh? Passeggia da quella parte, per cortesia. Lontano dalla mia cintura.",
	},
	["sw.muse.w19.cutpurse.013"] = {
		"I tagliaborse chiamano la nebbia il loro salario, dicono le guardie. In questo grigiore una mano arriva a una borsa e sparisce prima che il padrone abbia finito di girarsi.",
		"Nebbia sulla città, e ogni borsa di Stormwind è un po' più di tutti. Tengo una mano sulla mia e l'altra libera per chiedere scusa ai lampioni.",
	},
	["sw.muse.w19.cutpurse.014"] = {
		"Alcune delle mani più svelte della città appartengono a bambini le cui famiglie sono salite dal Westfall senza niente. Le guardie li acchiappano, gli danno da mangiare, e poi li riacchiappano. Nessuno ha trovato una risposta migliore.",
		"Hanno preso una ragazzina magra, con la polvere del Westfall ancora sull'orlo della gonna, con una borsa che non era sua. La guardia che la teneva per il colletto sembrava stanca della faccenda quanto lei.",
		"Le guardie hanno un nome per i bambini del Westfall che lavorano tra la folla: randagi. Lo dicono come si direbbe di gattini, e li arrestano lo stesso.",
	},
	["sw.muse.w19.cutpurse.015"] = {
		"Uno gnomo vicino al tram giura sulla sua borsa: scatta e si chiude su qualunque mano che non sia la sua, con un rumore da trappola per topi. Ha le dita fasciate a dimostrare che funziona.",
		"La risposta di uno gnomo ai tagliaborse di Stormwind è una borsa con una molla dentro. Funziona benissimo. Come prova ti mostra i suoi due pollici ammaccati.",
	},
	["sw.muse.w19.cutpurse.016"] = {
		"A chiunque mi abbia appena sfiorato: li avevo già contati. Tutti. Due volte.",
		"Bel tentativo, chiunque fosse. La borsa è dall'altra parte. È sempre dall'altra parte.",
	},
	["sw.muse.w19.decree.001"] = {
		"si ferma davanti a un palo degli avvisi gonfio di strati di carta inchiodata, decreti nuovi sopra quelli vecchi, e in fondo trova un angolo che porta ancora il sigillo di un re di prima della sua scomparsa.",
		"solleva il bordo di un avviso inchiodato sopra un avviso inchiodato sopra un avviso, finché sotto spunta un sigillo più vecchio, sbiadito, del tempo in cui il re era ancora nella fortezza.",
	},
	["sw.muse.w19.decree.002"] = {
		"Ogni faccia sugli avvisi di taglia somiglia allo stesso cugino sfortunato, disegnato a carboncino da qualcuno che aveva fretta. Non vorrei essere quel cugino.",
		"I manifesti dei ricercati di questa città mostrano tutti lo stesso cipiglio sotto nomi diversi. O il disegnatore ha una faccia sola in mano, o il crimine corre in un'unica famiglia.",
		"Qualcuno ha disegnato dei baffi su uno degli avvisi di taglia. Le guardie non l'hanno staccato. Sospetto che adesso somigli di più.",
	},
	["sw.muse.w19.decree.003"] = {
		"«Turbativa della pace del re», la chiamano ancora le guardie, quando si portano via qualcuno. Il re è scomparso e la sua pace continua a essere turbata in suo nome. Nel frattempo qualcuno dovrà pur custodirla per lui.",
		"L'accusa è ancora «turbare la pace del re». Nessuno ha trovato una parola migliore, e nessuno vuole essere quello che propone «del reggente».",
	},
	["sw.muse.w19.decree.004"] = {
		"Le leggi di Stormwind le scrivono i nobili, e le guardie le consumano sui ciottoli. Un nobile che ne percorra una a piedi devo ancora vederlo.",
		"In questa città le leggi si scrivono in stanze eleganti e si fanno rispettare con stivali grezzi. I due capi non sono mai stati presentati.",
		"Un decreto è un'idea di un nobile che una guardia deve portarsi a spasso per le strade tutto il giorno.",
	},
	["sw.muse.w19.decree.005"] = {
		"Ai pali degli avvisi si dice che i decreti si sono allungati da quando Lady Prestor ha cominciato a interessarsi alla corte, e che le ragioni scritte dentro si sono accorciate. Nessuno lo dice a voce alta.",
		"Uno scrivano ha borbottato che i nuovi decreti suonano diversi, ultimamente: più levigati, più lunghi, e chissà come sempre a vantaggio dei nobili. Poi si è guardato alle spalle e ha trovato altro da fare.",
	},
	["sw.muse.w19.decree.006"] = {
		"I contadini del Westfall lo raccontano con amarezza: hanno chiesto soldati alla corona e hanno ricevuto un proclama. Così si sono fatti una milizia da soli, e il proclama l'hanno inchiodato in un fienile.",
		"Il Westfall ha chiesto guardie a Stormwind e ha ricevuto una lettera col sigillo, dicono i profughi. Un sigillo è bellissimo. Ma i Defias fuori da un fienile non li tiene.",
	},
	["sw.muse.w19.decree.007"] = {
		"A Stormwind non c'è nessun decreto sugli orchi che girano per le strade. Non ce n'è bisogno. Ogni guardia sa già benissimo cosa direbbe la legge.",
		"Nessuno ha mai dovuto mettere per iscritto cosa succede a un orco trovato dentro queste mura. Certe leggi si rispettano così bene che non hanno mai avuto bisogno d'inchiostro.",
	},
	["sw.muse.w19.decree.008"] = {
		"indugia accanto a un palo degli avvisi dove una ragazzina legge ad alta voce un decreto a un vecchio, saltando ogni parola lunga con gran sicurezza, mentre lui annuisce come se le avesse lette tutte.",
		"sente un ragazzino leggere un avviso fresco al nonno, trasformando «considerato che» in «e poi» e i titoli del reggente in un borbottio, con piena soddisfazione del vecchio.",
	},
	["sw.muse.w19.decree.009"] = {
		"La pioggia si è messa a leggere i decreti sui pali degli avvisi. L'inchiostro cola, i sigilli stingono, e per una volta tutta la città è d'accordo su cosa dice la legge: niente di leggibile.",
		"Avvisi fradici pendono da ogni palo, l'inchiostro che scivola verso il fondo della pagina. L'ultima parola del reggente, che la pioggia ha ammorbidito fino a farne un garbato suggerimento.",
	},
	["sw.muse.w19.decree.010"] = {
		"A Stormwind un ladro viene condannato in nome del re. Quale re, potrebbe chiedere a buon diritto: quello scomparso o quello che sta imparando a leggere? Lo scrivano lo mette a verbale in ogni caso.",
		"Qui la giustizia porta ancora il nome della corona come un cappotto preso in prestito. Non sta bene a nessuno, e tutti lo tengono abbottonato.",
	},
	["sw.muse.w19.decree.011"] = {
		"Se ti beccano a fare a botte a Stormwind, paghi una multa a uno scrivano che ti rilascia la ricevuta. Conservala, consigliano le guardie. La prossima volta dimostra che sei un cliente abituale.",
		"Qui le multe arrivano con la ricevuta, firmata e sigillata. Una città che perde il re e conserva le ricevute ha le sue priorità in un qualche ordine.",
	},
	["sw.muse.w19.decree.012"] = {
		"Che la legge tenga a lungo, re o non re. Qualcuno deve pur tenere oneste le strade mentre la corona si rimette in sesto.",
		"La legge del reggente a me basta. Tiene le porte chiuse alle persone giuste.",
	},
	["sw.muse.w19.decree.013"] = {
		"Le nostre leggi sono state scritte per un re che sedeva nella fortezza e ascoltava le suppliche di persona. Funzionano anche senza di lui, come un mulino che gira ancora dopo che il mugnaio è uscito. Preferirei che il mugnaio tornasse.",
		"La legge di Stormwind è già sopravvissuta a un re, e alla città con lui. Può sopravvivere anche a uno scomparso. Solo che non vorrei doverlo vedere.",
	},
	["sw.muse.w19.decree.014"] = {
		"aspetta mentre le guardie alla porta rivoltano due volte il carico di scalpelli e mazzuoli di un carrettiere, che intanto recita a memoria il foglio che dice che lui può passare.",
		"osserva un apprendista scalpellino alla porta srotolare per una guardia ogni attrezzo del suo fagotto, uno per uno, come un venditore che mostra le sete, sotto un avviso inchiodato sopra le loro teste.",
	},
	["sw.muse.w19.decree.015"] = {
		"C'è ancora una legge che vieta di portare capre sui ponti, giura una guardia, più vecchia delle mura. Non l'ha mai fatta rispettare nemmeno una volta, e a ogni giro spera in una capra.",
		"Secondo un vecchio sergente, dopo la ricostruzione la città non ha abrogato una sola legge. Su qualche registro è ancora vietato fischiare vicino alla fortezza. Lui, quando ci passa, fischia pianissimo.",
	},
	["sw.muse.w19.decree.016"] = {
		"«Per ordine del reggente.» Be', questo chiude la questione. Qualunque sia.",
		"Un avviso nuovo. Indovino: qualcosa è vietato, qualcuno ha la colpa, e il reggente se ne rammarica molto.",
		"Qualcuno riesce a leggere le righe piccole di questo? Vorrei sapere cosa non posso fare prima di farlo.",
	},
	["sw.muse.w19.elf.001"] = {
		"In questa città ogni porta è un po' bassa per un elfo della notte. Loro si chinano senza lamentarsi, come ci si inchina a un ospite che ha buone intenzioni.",
		"Un elfo della notte si china sotto l'architrave di una bottega, poi di quella dopo, poi di quella dopo ancora. In fondo alla strada sembra quasi un gesto di cortesia.",
		"Certi bottegai della città hanno preso ad appendere uno straccio all'architrave all'altezza di un elfo della notte, così i clienti si chinano prima di ricordarselo nel modo più duro.",
	},
	["sw.muse.w19.elf.002"] = {
		"Ho sentito un elfo della notte chiedere a una bambina quanti anni avesse. «Nove», ha detto lei, e l'elfo l'ha ripetuto piano, come il nome di una moneta piccolissima e preziosissima.",
		"Un'elfa della notte ha chiesto a una bambina la sua età e si è sentita rispondere «nove e mezzo». L'ha ringraziata con serietà, come chi riceve in mano qualcosa di fragile.",
	},
	["sw.muse.w19.elf.003"] = {
		"si accorge che l'elfo della notte davanti non fa alcun rumore sui ciottoli, e per qualche passo cammina più piano a sua volta.",
		"si mette dietro a un elfo della notte i cui piedi non fanno rumore sulla pietra e, per un tratto di strada, prova senza molto successo a imitarne il silenzio.",
		"sente gli stivali della folla risuonare sulla pietra tutto intorno e, in mezzo, un paio di piedi di elfo della notte che non fanno alcun rumore.",
	},
	["sw.muse.w19.elf.004"] = {
		"Ho visto un elfo della notte posare il palmo sulla corteccia dell'unico albero di un cortiletto, come si saluta un vecchio conoscente incontrato lontano da casa.",
		"In un cortile appena fuori dalla strada c'è un albero solo. Gli elfi della notte che passano lo toccano tutti. Nessuno dice perché, e l'albero non lo racconta.",
	},
	["sw.muse.w19.elf.005"] = {
		"A giudicare dalla pazienza, quell'elfa della notte aspetta al banco da più tempo di quanto io sia al mondo.",
		"Mai mettersi in fila dietro un'elfa della notte. Aspetterebbe un secolo senza un sospiro, e ti fa sentire {g:maleducato|maleducata} perché batti il piede.",
	},
	["sw.muse.w19.elf.006"] = {
		"Gli umani di qui vivono tutta la vita di corsa, eppure si fermano a mostrare la strada a uno sconosciuto. La corsa la capisco da lontano. Il fermarsi, lo sto ancora imparando.",
		"Hanno vite brevi e una città rumorosa, e le due cose in qualche modo combaciano: gridano perché qualcuno si ricordi. Mi accorgo che qui ascolto con più attenzione che a Darnassus.",
	},
	["sw.muse.w19.elf.007"] = {
		"Un elfo della notte a un banco di pasticci ha chiesto cosa ci fosse dentro, ha ascoltato tutta la risposta e ne ha comprato uno lo stesso. O è coraggio, o sono ottime maniere.",
		"Ho visto un'elfa della notte dare il primo morso a un pasticcio di carne di Stormwind con la faccia di una studiosa che apre un libro sospetto. Il verdetto è stato un lento cenno del capo.",
		"Il venditore di pasticci ha spiegato a lungo la sua ricetta a un'elfa della notte. Lei l'ha ascoltata con perfetta cortesia, ne ha comprati due e non ne ha mangiato nessuno davanti a lui.",
	},
	["sw.muse.w19.elf.008"] = {
		"osserva una fila di bambini seguire un'elfa della notte lungo la strada a debita distanza, fermandosi ogni volta che si ferma lei, come anatroccoli che hanno sentito troppe storie.",
		"nota un gruppetto di bambini che segue un'alta elfa della notte tra la folla, immobilizzandosi ogni volta che lei si volta, per poi strisciare avanti.",
	},
	["sw.muse.w19.elf.009"] = {
		"Ogni elfo della notte di questa città è arrivato con due navi e una lunga strada. La distanza gli si legge addosso: stanno come ospiti che non hanno ancora deciso se togliersi il mantello.",
		"Fra questa strada e le foreste di Teldrassil ci sono due traversate di mare e mezzo continente. Gli elfi della notte di qui portano quella distanza in silenzio, come uno zaino mai posato.",
	},
	["sw.muse.w19.elf.010"] = {
		"Non trovi nessuno in questa folla? Cerca un elfo della notte. È la cosa più alta della strada che non sia un lampione.",
		"Il modo più facile per ritrovarsi qui: mettersi accanto a un elfo della notte e lasciare che siano gli altri a trovarti.",
		"Non sapete dove siete? Guardate in alto: quella è un'elfa della notte. Andatele incontro e sarete da qualche parte.",
	},
	["sw.muse.w19.elf.011"] = {
		"Gli elfi della notte tengono i loro orari, anche qui. Mentre la città grida sonnecchiano in qualche angolo tranquillo; quando calano le serrande si svegliano, e le strade sembrano tutte loro.",
		"Vedi elfi della notte mezzo addormentati in angoli tranquilli mentre Stormwind sbriga i suoi affari, e poi ben svegli quando le botteghe chiudono. Sono l'altro turno della città.",
	},
	["sw.muse.w19.elf.012"] = {
		"lancia un'occhiata a un tavolo d'angolo dove un elfo della notte si piega quasi in due per sentire un nano, e il nano si alza sul piolo dello sgabello per farsi sentire.",
		"nota due forestieri a un tavolino, un'elfa della notte e un nano, che s'incontrano a metà strada: lei china, lui allungato, e ridono tutti e due della fatica.",
	},
	["sw.muse.w19.elf.013"] = {
		"Continuano a chiedere agli elfi della notte quanti anni hanno, gli umani, e gli elfi continuano a rispondere con un sorriso e nessun numero. È il rifiuto più educato della città.",
		"Chiedi l'età a un'elfa della notte e ti becchi uno sguardo gentile, quello che si rivolge a un bambino che chiede quanto è profondo il mare. Poi lei cambia discorso e parla dei tuoi stivali.",
	},
	["sw.muse.w19.elf.014"] = {
		"Qui nel Park gli elfi della notte camminano più piano che in qualunque altro punto della città, e gli umani che vengono a sedersi cominciano, senza accorgersene, a rallentare anche loro.",
		"I visitatori di Darnassus sembrano radunarsi nel Park come i viandanti si radunano vicino a un focolare. Non dicono che gli manca la foresta. Raccolgono le foglie cadute e se le tengono.",
	},
	["sw.muse.w19.exodus.001"] = {
		"Quelli che erano bambini sulle navi verso il nord non ricordano l'incendio, dice un vecchio fornaio. Ricordano il freddo del ponte, l'odore di catrame e la madre di qualcuno che cantava le stesse tre righe, all'infinito.",
		"Domanda a un'anziana di Stormwind della fuga a nord e non ti parlerà di orchi. Ti parlerà di coperte bagnate, di una crosta di pane passata di mano in mano, e di un marinaio che lasciava tenere la cima ai bambini.",
	},
	["sw.muse.w19.exodus.002"] = {
		"Certi anziani di Stormwind hanno ancora una piega nordica nelle vocali, da quando sono cresciuti a Lordaeron durante l'esilio. Degli amici lasciati lassù non parlano. Tutti sanno cos'è toccato a Lordaeron, dopo.",
		"In certe vecchie voci di questa città si sente Lordaeron: una parola appiattita, un modo nordico di dire grazie. Chi gliele aveva insegnate adesso è sotto la piaga, o peggio.",
		"Un vecchio candelaio dice «sissignore» con la cadenza del nord, un'abitudine degli anni dell'esilio. Ogni volta che si sente, tace per un momento. Chi gliel'ha insegnata se n'è andato insieme al nord.",
	},
	["sw.muse.w19.exodus.003"] = {
		"sente un'anziana dare indicazioni a un forestiero con una svolta che esiste solo a Lordaeron, accorgersene, ridere, e ricominciare da capo.",
		"ascolta un vecchio spiegare la strada per la banca passando per una piazza che deve aver conosciuto al nord, poi fermarsi, aggrottare la fronte e indicare col dito, senza altre parole.",
	},
	["sw.muse.w19.exodus.004"] = {
		"Varian andò a nord da ragazzo insieme ai profughi e tornò uomo fatto, per essere incoronato nella fortezza ricostruita. Adesso è sparito di nuovo. Stormwind ha un re che le strade continuano a portarsi via.",
		"La città ha perso un re per mano degli orchi, ha mandato il figlio a crescere fra estranei, l'ha incoronato al suo ritorno, e ha perso anche lui. Certi regni hanno sfortuna. Questo ha un'abitudine.",
		"Il padre cadde nella sua fortezza; il figlio fu mandato al nord per metterlo al sicuro, tornò per essere incoronato, e sparì sulla strada di un trattato di pace. Stormwind costruisce splendide sale del trono. Fatica a tenerci dentro i re.",
	},
	["sw.muse.w19.exodus.005"] = {
		"Lothar ha portato un regno intero fuori dalle sue stesse rovine. Ho visto gente metterci di più a uscire da una taverna.",
		"Lothar ha fatto uscire una città intera con gli orchi sulla soglia. Ho visto un nano metterci di più a lasciare una locanda.",
		"Lothar caricò un regno sulle navi con gli orchi alle spalle. Io a stento riesco a chiudere una bisaccia.",
	},
	["sw.muse.w19.exodus.006"] = {
		"Non tutti andarono a nord. Alcuni si nascosero nei boschi di Elwynn e vissero alla macchia finché la guerra non passò oltre, dicono i vecchi contadini. Fra quelle famiglie e quelle che presero le navi c'è ancora una certa freddezza, e nessuno ti dirà a chi spettino le scuse.",
		"Chi restò nella foresta racconta l'esilio in un modo, chi salpò in un altro. Metti allo stesso tavolo un vecchio per parte e sentirai due guerre.",
	},
	["sw.muse.w19.exodus.007"] = {
		"ascolta due vecchi al tavolo accanto discutere se la traversata per Lordaeron sia durata nove giorni o dodici, sicurissimi tutti e due e nessuno disposto a contarli.",
		"coglie a metà il battibecco di due anziani sulla durata del viaggio al nord, nove giorni, dodici, due settimane, un numero che sale a ogni boccale.",
	},
	["sw.muse.w19.exodus.008"] = {
		"Lothar era il campione di Llane e il suo amico più vecchio, dicono i veterani, e l'ultima cosa che fece per lui fu portargli via la gente. Lo chiamano l'ordine più duro mai dato in questo regno.",
		"Andarsene fu la scelta coraggiosa, insistono i vecchi soldati: Lothar poteva morire sulle mura in nome del suo re. Scelse invece di portare i vivi a nord, e di caricarsene la vergogna.",
	},
	["sw.muse.w19.exodus.009"] = {
		"guarda un vecchio ciabattino interrompere il lavoro per bere da una tazza di latta ammaccata, tenendola come si tiene una cosa portata molto lontano.",
		"nota un calzolaio posare la lesina e sollevare una tazza di latta malconcia, girandola fra le dita per un momento prima di bere, come se avesse una storia che lui non racconta mai.",
	},
	["sw.muse.w19.exodus.010"] = {
		"Gli esuli tornarono lungo questa strada, dicono i vecchi, e si fermarono dove prima c'era la porta, perché non restava niente da attraversare. Alcuni si inginocchiarono. Altri posarono i fagotti e cominciarono a raccogliere pietre.",
		"Qui, mi ha detto un vecchio, la colonna di ritorno si fermò sull'orlo di un campo di macerie. Nessuno diede ordini. La gente posò semplicemente quel che portava e cominciò a dividere le pietre in mucchi.",
	},
	["sw.muse.w19.exodus.011"] = {
		"Quando Stormwind era cenere, Lordaeron accolse la mia gente. Adesso Lordaeron è una tomba, e i suoi superstiti dormono sulle nostre soglie. Mi piacerebbe pensare che stiamo restituendo il debito. Per lo più li scavalchiamo.",
		"Il nord una volta diede riparo a Stormwind, e fu generoso. Adesso la sua gente scende a sud senza niente, e noi umani di questa città non sempre ricordiamo chi ci ha sfamato.",
	},
	["sw.muse.w19.exodus.012"] = {
		"Metà dei vecchi di questa città sono nati in un regno, cresciuti in un altro, e invecchiati in un terzo che porta il nome del primo.",
		"Lasci la tua città da bambino, torni e ne trovi un'altra costruita nello stesso punto. È la storia di ogni testa grigia di questa strada.",
		"Nati a Stormwind, cresciuti a Lordaeron, sepolti a Stormwind. Lo stesso nome, due volte. Non lo stesso posto.",
	},
	["sw.muse.w19.exodus.013"] = {
		"Quando gli esuli tornarono, dicono i vecchi contadini, Elwynn si era inghiottita le sue stesse fattorie, e l'unico modo per ritrovare un podere era cercare nell'erba le pietre del suo focolare.",
		"Tornare dal nord voleva dire cercare la propria soglia fra i rovi, a sentire i vecchi. I più la ritrovavano dalle pietre del camino. Qualcuno non la ritrovò mai.",
	},
	["sw.muse.w19.exodus.014"] = {
		"passa davanti a una finestra bassa dove un'anziana veglia con una sola candela, come si dice che gli esuli vegliassero sulle navi per il nord, una luce per tutta la notte.",
		"nota una lampada ancora accesa a quest'ora, in una finestra a pianterreno, e dietro un vecchio sveglio che guarda verso nord, o verso niente.",
	},
	["sw.muse.w19.exodus.015"] = {
		"Pane nero del nord, acido come un vecchio debito. I vecchi qui lo adorano. Io lo maledico.",
		"Quella pagnotta scura e acida? Pane di Lordaeron, degli anni dell'esilio. Sotto i quaranta non la mangia nessuno. Sopra i sessanta non ne fa a meno nessuno.",
		"I fornai fanno ancora il pane che gli esuli si portarono dal nord. Un morso e capisci perché erano così contenti di rientrare.",
	},
	["sw.muse.w19.folk.001"] = {
		"Una dama col mantello bordato di pelliccia e un cenciaiolo col suo sacco aspettano che passi lo stesso carro, fianco a fianco, e per tutta l'attesa sono esattamente pari.",
		"Al carro non importa chi sei. Una nobildonna e un cenciaiolo sono rimasti spalla a spalla all'angolo finché non è passato, e a nessuno dei due è piaciuto.",
	},
	["sw.muse.w19.folk.002"] = {
		"C'è una donna con lo scialle verde sempre allo stesso angolo quando passo, e un uomo zoppo che attraversa sempre sulla stessa pietra. Non so come si chiamano. Se sparissero, me ne accorgerei.",
		"Qui comincio a conoscere facce senza un solo nome da metterci sopra: lo scialle all'angolo, lo zoppo all'incrocio, quello che fischietta. Sconosciuti, tutti quanti, e in qualche modo miei.",
		"In questa folla nessuno mi conosce, eppure certe facce sono diventate punti di riferimento: lo scialle, lo zoppo, l'uomo che fischia stonato. Se ne mancasse uno, la strada sembrerebbe sbagliata.",
	},
	["sw.muse.w19.folk.003"] = {
		"si ferma accanto al tavolino pieghevole di uno scrivano pubblico, dove un manovale detta piano e lo scrivano, con garbo, lascia fuori una parola su tre.",
		"indugia vicino a uno scrivano che scrive lettere per pochi rami e le rilegge ad alta voce, mentre il cliente annuisce a parole che non ha mai detto proprio così.",
		"aspetta mentre uno scrivano a un tavolino pieghevole rilegge a un manovale la sua lettera, e l'uomo muove le labbra insieme a lui, contento di sentirsi così istruito.",
	},
	["sw.muse.w19.folk.004"] = {
		"Uno mi ha appena pestato un piede e mi ha chiesto scusa, e io ho chiesto scusa a lui. Credo che questa città funzioni così.",
		"Se urti qualcuno, qui, vi scusate tutti e due. Chi abbia cominciato non lo sa mai nessuno.",
		"Quattro scuse per attraversare una strada. Mai ricevuto spintoni tanto educati.",
	},
	["sw.muse.w19.folk.005"] = {
		"Una coppia di anziani di Lordaeron siede vicino al canale quasi ogni giorno. Lui porta al collo, appesa a uno spago, la chiave di casa. La casa è ad Andorhal, dice, e il resto non lo dice.",
		"Certi profughi del nord portano ancora con sé le chiavi di porte che stanno in Lordaeron. Nessuno chiede che cosa ci sia adesso dietro quelle porte. Le chiavi, però, sono sempre lucidate.",
	},
	["sw.muse.w19.folk.006"] = {
		"Certe voci di questa città si portano ancora dietro Lordaeron: vocali più piatte, grazie più brevi. Quella gente è scesa a sud prima della pestilenza e non ha mai disfatto del tutto i bagagli.",
		"I profughi del nord, a Stormwind, dicono ancora «il regno» e intendono quello lassù. Nessuno li corregge. È più gentile che chiedere quale regno sia rimasto loro.",
	},
	["sw.muse.w19.folk.007"] = {
		"si fa da parte per una donna con una cesta di rape in equilibrio sulla testa e tutte e due le mani libere per sgridare il ragazzino che le trotta dietro.",
		"fa spazio a una popolana che porta sulla testa una cesta colma come se non pesasse niente, mentre le mani contano il resto per qualcun altro.",
		"cede il passo a una popolana con una cesta sulla testa, che non alza mai lo sguardo e non perde mai una rapa.",
	},
	["sw.muse.w19.folk.008"] = {
		"In questa città c'è un cieco che dà indicazioni migliori delle guardie. Conta i ponti da come cambia l'eco e riconosce ogni strada dall'odore.",
		"Mi ero {g:perso|persa} e ho chiesto la strada a un cieco. A sinistra all'odore di catrame, mi ha detto, e a destra alla seconda eco. Aveva perfettamente ragione.",
		"Il cieco all'angolo sente arrivare un forestiero tre passi prima che qualcuno lo veda. I forestieri, dice, camminano come se la strada potesse spostarsi sotto i piedi.",
	},
	["sw.muse.w19.folk.009"] = {
		"Metà di questa città ha fretta e l'altra metà le sta tra i piedi. Io continuo a cambiare squadra.",
		"Qui o sei in ritardo o stai bloccando qualcuno che lo è. In questo momento mi riescono tutte e due.",
		"Stormwind cammina a due velocità: troppo in fretta e tra i piedi. Le ho provate tutte e due.",
	},
	["sw.muse.w19.folk.010"] = {
		"In una folla così grande ho preso l'abitudine di leggere le mani: inchiostro sulle dita di uno scrivano, farina nelle nocche di un fornaio, piccole bruciature sui pollici di un fabbro. Le mie, immagino, dicono soltanto «strada».",
		"Ogni mano, per strada, racconta il suo mestiere: inchiostro, farina, catrame, il luccichio degli anelli di un usuraio. Le mie direbbero «viandante», e per giunta sono poco lavate.",
		"I mestieri di questa città sono scritti sulle mani. Gli scrivani le hanno più pulite, i manovali più larghe, e i borseggiatori, mi dicono, più morbide.",
	},
	["sw.muse.w19.folk.011"] = {
		"Gli umani costruiscono di fretta e poi ci vivono dentro, in quella fretta. Qui ho visto un uomo cenare camminando. Un nano, piuttosto, salterebbe la cena.",
		"La gente di questa città fa stare una vita intera nel tempo che a un nano serve per decidere come intrecciarsi la barba. Sto imparando a non dirlo ad alta voce.",
	},
	["sw.muse.w19.folk.012"] = {
		"Metà degli gnomi che conosco, a Stormwind, affittano una stanza sopra la bottega di qualcun altro e la riempiono di progetti. Abbiamo perso una città; non abbiamo perso il vizio di costruirne una.",
		"Ogni gnomo che alloggia qui ha gli stessi mobili: una branda, una lampada e una pila di disegni per una città che ancora non c'è. L'arredamento lo conosco bene.",
	},
	["sw.muse.w19.folk.013"] = {
		"passa davanti a due vecchi seduti su un muretto che, si vede, litigano sulla stessa questione da anni, e saluta tutti e due con un cenno, cosa che non risolve niente.",
		"rallenta accanto a due barbe bianche su una soglia, nel pieno di una lite su un inverno che nessuno dei due sa datare, e riparte prima che uno dei due chieda un testimone.",
	},
	["sw.muse.w19.folk.014"] = {
		"ascolta per un momento un violinista in piedi su una cassa che ha solo tre corde e suona come se la quarta stesse solo riposando.",
		"si ferma per un violinista di strada con l'archetto più spelacchiato che intero, e trova che la melodia non ci perda niente.",
	},
	["sw.muse.w19.folk.015"] = {
		"Un valletto in livrea sta tutto il giorno davanti alla porta di un nobile, a difenderla da nessuno in particolare. Tra lui e me sono passati tanti di quei cenni che ormai lo considero un amico.",
		"Il portiere di una casa elegante saluta con un cenno chiunque passi e non apre la porta a nessuno. Una carriera intera passata a essere quasi cortese.",
	},
	["sw.muse.w19.folk.016"] = {
		"A Stormwind le indicazioni sono tutte fantasmi: gira dove c'era il vecchio forno, passa la casa che è bruciata, fermati dove una volta c'era il pozzo.",
		"Qui nessuno ti indica la strada con quello che c'è. È sempre «dopo dove c'era la conceria». Mi perdo in una città che non esiste più.",
		"Chiedi la strada e ti fanno una lezione di storia: a sinistra a una bottega che ha chiuso, a destra a un muro che hanno buttato giù. I vecchi si orientano con quello che manca.",
	},
	["sw.muse.w19.folk.017"] = {
		"scorge un nano che si issa in spalla la bambina di una sconosciuta perché veda oltre la folla, e poi la restituisce alla madre con un piccolo inchino.",
		"vede un nano sollevare la bimba di qualcuno sopra la calca perché veda quello che fissano tutti, e rimetterla giù con serietà, come chi rende un attrezzo avuto in prestito.",
	},
	["sw.muse.w19.folk.018"] = {
		"La gente di Stormwind si lamenta della sua città tutto il giorno, i prezzi, la polvere, i nobili, finché un forestiero non le dà ragione. Allora ne difende ogni pietra.",
		"Lamentati di questa città con uno che ci è nato e ne sentirai un elenco più lungo del tuo. Dagli ragione, e l'elenco si gira e ti morde.",
	},
	["sw.muse.w19.folk.019"] = {
		"La capitale del nemico è soprattutto gente che compra rape. Vecchie, bambini, un ciabattino coi chiodi in bocca. Odiare è più facile da lontano.",
		"Qui nessuno guarda due volte un cappuccio in più. Hanno troppo da fare: l'affitto, il pane, un figlio malato a casa. Tengo la testa bassa e le opinioni ancora più giù.",
	},
	["sw.muse.w19.folk.020"] = {
		"Qualche imprecazione nanica si è infilata nella parlata di questa città. I carrettieri umani la usano quando una ruota s'incastra, senza la minima idea di che cosa stiano invocando.",
		"Ogni tanto Stormwind impreca in nanico, soprattutto contro le ruote incastrate. I nani che sentono restano serissimi, il che vuol dire che è una parola grossa.",
	},
	["sw.muse.w19.folk.021"] = {
		"guarda una gnoma e suo figlio ormai adulto portare in due un'asse lunghissima attraverso il quartiere, litigando a tempo perfetto con i passi.",
		"gira attorno a due gnomi, una madre e un figlio alto quasi quanto lei, che portano un'unica asse lungo la strada senza mettersi d'accordo su quale sia il davanti.",
	},
	["sw.muse.w19.folk.022"] = {
		"Gli umani non hanno molti anni, così abbiamo costruito una città che ricordi per noi: la banca custodisce le monete, la pietra la forma, la cattedrale i nomi.",
		"Una vita umana è breve. Stormwind è il nostro modo di barare: la pietra sopravvive allo scalpellino, la strada al bambino che ci ha imparato a camminare.",
	},
	["sw.muse.w19.folk.023"] = {
		"Qui tutti hanno un cugino a corte. Nessuno ha un cugino capace di rattoppare uno stivale.",
		"Mezza città sostiene di avere un amico nella fortezza. Li baratterei tutti per un ciabattino onesto.",
	},
	["sw.muse.w19.folk.024"] = {
		"Perché tutta questa folla? Ah. Un uomo che cerca di portare una capra oltre un ponte. Giusto, lo guarderei anch'io.",
		"Si sono fermati tutti a guardare qualcosa. Una capra, a quanto pare, che sta vincendo una discussione col padrone.",
		"Venti persone, una capra e un uomo paonazzo. Stormwind riconosce un bello spettacolo quando lo vede.",
	},
	["sw.muse.w19.folk.025"] = {
		"La gente di Lordaeron è scesa a sud in cerca di riparo e l'ha trovato. Qualunque cosa sia l'Alleanza, almeno questo è vero: una porta che si è aperta quando il nord è caduto.",
		"Quando il nord è caduto, Stormwind ha accolto chiunque arrivasse alla sua porta. L'Alleanza ha le sue liti, ma ho visto che faccia ha nei giorni brutti, ed è quella di una porta aperta.",
	},
	["sw.muse.w19.folk.026"] = {
		"attraversa una nebbia che trasforma ogni passante prima in una voce e poi, solo a un braccio di distanza, in una faccia, e sente tre saluti destinati a qualcun altro.",
		"viene {g:salutato|salutata} due volte nella nebbia da persone che all'ultimo passo si accorgono dell'equivoco, credevano di aver incontrato un vicino, chiedono scusa e tornano a sparire.",
	},
	["sw.muse.w19.forge.001"] = {
		"Un fabbro del Dwarven District tiene un bollitore sul bordo della forgia. Il tè più caldo di Stormwind, dice, e il peggiore.",
		"In una forgia del Dwarven District pende un pentolone di stufato, e il nano che ci lavora lo gira tra una martellata e l'altra senza sbagliare né l'uno né l'altra.",
		"Un fabbro nano non spreca calore. Lungo il bordo delle braci c'è sempre un bollitore, una pentola o un paio di stivali bagnati.",
	},
	["sw.muse.w19.forge.002"] = {
		"guarda un apprendista umano azionare il mantice per un fabbro nano, troppo in fretta e poi troppo piano, finché il nano posa una mano sul manico e gli mostra il ritmo senza dire una parola.",
		"si ferma accanto a una forgia dove un ragazzo umano spinge il mantice e un nano gli conta i colpi nella barba.",
	},
	["sw.muse.w19.forge.003"] = {
		"I fabbri del Dwarven District non lasciano mai morire una forgia, mi ha detto un nano. Coprono le braci di cenere e le risvegliano con un soffio di mantice, come si sveglia qualcuno a cui si vuole bene.",
		"Una forgia nanica si copre, non si spegne, dicono i fabbri. Il ferro che si è raffreddato è peso morto; un fuoco coperto dorme soltanto.",
		"Ogni forgia del Dwarven District dorme sotto una coperta di cenere e si sveglia al primo colpo di mantice. Spegnerne una per sempre, ha detto un fabbro, è roba da funerale.",
	},
	["sw.muse.w19.forge.004"] = {
		"Nel Dwarven District ogni incudine ha un nome. Ho chiesto a un fabbro come si chiamasse la sua. Non sono affari tuoi, ha detto, e le ha dato una pacca.",
		"Ogni nano dà un nome alla sua incudine. Ho chiesto che me ne presentassero una, e ho ricevuto un'occhiata capace di temprare l'acciaio.",
	},
	["sw.muse.w19.forge.005"] = {
		"Imposte socchiuse in ogni bottega, e non per riservatezza: nella penombra i fabbri leggono il colore del ferro caldo, ciliegia, arancio, paglia, come un contabile legge un registro.",
		"Niente irrita un fabbro nano quanto una porta piena di luce. Hanno bisogno dell'ombra per vedere i colori del ferro, e scacciano un curioso dalla loro luce più in fretta di un ladro.",
		"Quanto è caldo il ferro? Un fabbro nano non risponde con un numero. Ti dice un colore, e ti guarderà come se avessi dovuto vederlo da te.",
	},
	["sw.muse.w19.forge.006"] = {
		"capisce che il nano che socchiude un occhio lungo una sbarra di ferro appena raddrizzata la sta puntando su di {g:lui|lei}, fa un cenno educato e si toglie dalla linea.",
		"si accorge di essere il punto di mira di un fabbro che, con un occhio chiuso, controlla la linea di un'asta di ferro appena raddrizzata.",
	},
	["sw.muse.w19.forge.007"] = {
		"Un vecchio nano a una forgia batte via un'ammaccatura da un elmo e dice che la conosce: la fa un'ascia d'orco, e la prima l'ha raddrizzata nella Seconda Guerra.",
		"Vicino al tram c'è un fabbro che capisce cosa ha ammaccato un elmo solo passandoci sopra il pollice. L'ha imparato nella Seconda Guerra, dice, e vorrebbe non averlo imparato.",
		"Alcuni armaioli nani di qui riparavano corazze per l'Alleanza durante la Seconda Guerra. Davanti a un certo tipo di squarcio si fanno ancora silenziosi, e ci lavorano con molta cura.",
	},
	["sw.muse.w19.forge.008"] = {
		"Fai una domanda a un fabbro nano e la risposta arriva a pezzi, una parola tra una martellata e l'altra.",
		"Mai chiedere niente a un fabbro mentre batte. La risposta arriva, ma prima la sente il ferro.",
	},
	["sw.muse.w19.forge.009"] = {
		"si attarda troppo vicino a una forgia e finisce a reggere l'estremità di una sbarra calda mentre il fabbro lavora l'altra, e alla fine riceve come ringraziamento un grugnito.",
		"si ritrova un paio di tenaglie in mano senza averle chieste: un nano dice soltanto «tieni qui, e non muoverti», e torna al martello come se l'aiuto fosse arrivato su ordinazione.",
		"si avvicina a una forgia aperta e trova subito un impiego: un secchio da prendere, una sbarra da tenere ferma, e un cenno del capo come paga.",
	},
	["sw.muse.w19.forge.010"] = {
		"C'è sempre qualcuno seduto con la schiena contro il muro esterno di una forgia, dove la pietra resta calda. I fabbri lo lasciano fare, e quei fuochi, chissà come, non calano mai.",
		"Il muro caldo dietro la forgia grande del Dwarven District ha i suoi habitué: un vecchio mendicante, due gatti, un ragazzo senza un posto migliore. Quella pietra non è di nessuno, e il fabbro la tiene calda lo stesso.",
	},
	["sw.muse.w19.forge.011"] = {
		"Ma le forge del Dwarven District tacciono mai, o i nani si passano il martello a turno?",
		"Tang, tang, tang. Conterei i colpi, ma sarei ancora lì a contare alla prossima guerra.",
		"Il Dwarven District non ha un'ora di silenzio. Ne ha una leggermente meno rumorosa.",
	},
	["sw.muse.w19.forge.012"] = {
		"Quando un pezzo viene bene, mi ha detto un nano, ogni fabbro a portata d'orecchio dà un solo colpo sull'incudine. Da allora tendo l'orecchio.",
		"Un unico rintocco di martello sull'incudine da tutte le forge insieme, e poi di nuovo al lavoro. Qualcuno ha finito qualcosa di buono, dicono i nani, e non serve altra cerimonia.",
		"I fabbri non applaudono un bel lavoro. Battono una volta sull'incudine, tutti insieme, e tornano al proprio. Nel Dwarven District non esiste lode più alta.",
	},
	["sw.muse.w19.forge.013"] = {
		"Lavoro onesto, le forge di Stormwind. Non sono la Great Forge, ma i martelli hanno un suono di casa, e tanto basta a farmi rallentare il passo.",
		"Ferro umano, carbone umano, e un nano a ogni incudine che meriti il nome. Ironforge spunta ovunque il lavoro sia serio, e mi fa piacere.",
	},
	["sw.muse.w19.forge.014"] = {
		"Alle prime luci le forge del Dwarven District si svegliano una dopo l'altra: un martello, poi due, poi tutta la strada, come galli che si sono dati al mestiere del fabbro.",
		"Il primo martello dell'alba nel Dwarven District è sempre lo stesso, dicono i fabbri, e gli altri attaccano quando lo sentono, per orgoglio o per dispetto.",
	},
	["sw.muse.w19.forge.015"] = {
		"Col temporale i nani alle forge non alzano gli occhi dall'incudine. Una cosa così rumorosa, mi ha detto uno di loro, dovrebbe pagare l'affitto di una forgia.",
		"Tuona sopra i tetti, e in qualche angolo del Dwarven District un fabbro risponde con una martellata a tempo perfetto. I nani ridono. Il cielo no.",
	},
	["sw.muse.w19.haggle.001"] = {
		"Tre rami? Puoi dirlo più forte, ma non diventano due.",
		"Quattro d'argento, e sorridi. È così che so che sono tre.",
		"Te ne do due. No, non guardarmi così. Lo sguardo costa extra e non lo pago.",
	},
	["sw.muse.w19.haggle.002"] = {
		"A Stormwind il mercanteggiare ha i suoi passi, come una danza: la faccia scandalizzata, il lento voltarsi per andarsene, il richiamo, la stretta di mano. Saltane uno e nessuno dei due ne esce contento.",
		"Un affare, a Stormwind, non si conclude: si recita. Indignazione, ritirata, una voce che ti richiama, poi una stretta sopra il banco. Nessuno si gode un accordo che salta la parte di mezzo.",
	},
	["sw.muse.w19.haggle.003"] = {
		"prova su nessuno in particolare un'espressione di stanca delusione, quella che ogni buon mercanteggiatore tiene pronta.",
		"si esercita in un lento, sofferto scuotere del capo, del genere che toglie un rame da qualsiasi prezzo.",
	},
	["sw.muse.w19.haggle.004"] = {
		"Ogni venditore di Stormwind, quando si comincia a trattare, ha sei figli affamati. Alla stretta di mano sono scesi a due, e uno è un nipote.",
		"Cominci a contrattare e la famiglia del venditore si allarga: una madre malata, un tetto che perde, un figlio al fronte. Accordati sul prezzo e guariscono tutti in un colpo.",
		"Contratta abbastanza a lungo e sentirai la storia di famiglia del venditore al completo. Finisce sempre con lui che ci rimette, e proprio per colpa tua.",
	},
	["sw.muse.w19.haggle.005"] = {
		"Con certi venditori non si tratta: i vecchi con un solo cesto e le mani attente. Un rame tolto al loro prezzo è un rame tolto alla loro cena.",
		"Tira sul prezzo con le botteghe grandi: possono permetterselo. Il vecchio con tre matasse di filo su una coperta si prende il suo prezzo, e qualcosa in più.",
	},
	["sw.muse.w19.haggle.006"] = {
		"Veniamoci incontro. No, non a metà strada tua. A metà della mia.",
		"Dividiamo la differenza. Io prendo la metà più grande.",
		"D'accordo, a metà. A metà strada verso il mio prezzo, partendo da dove sei tu.",
	},
	["sw.muse.w19.haggle.007"] = {
		"«È l'ultimo», dicono i venditori del Trade District, e in ogni retrobottega c'è una cassa piena di ultimi.",
		"Ogni affare, a Stormwind, è l'ultimo del suo genere. Le botteghe devono avere magazzini interi di ultimi.",
		"«Ne è rimasto uno solo», dice il venditore, e si volta verso uno scaffale di identici per prenderlo.",
	},
	["sw.muse.w19.haggle.008"] = {
		"sfrega il pollice contro due dita nel vecchio gesto dei mercanti, poi se ne accorge e smette.",
		"sorprende la propria mano a fare il gesto del mercato, il pollice che sfrega i polpastrelli, e la abbassa con un mezzo sorriso.",
	},
	["sw.muse.w19.haggle.009"] = {
		"Guarda all'opera un bravo mercanteggiatore e impari qualcosa che serve in ogni lite: mai fretta, mai urla, e sempre pronti ad andarsene.",
		"I migliori contrattatori di Stormwind non alzano mai la voce. La abbassano, il venditore si sporge per sentire, ed è perduto.",
	},
	["sw.muse.w19.haggle.010"] = {
		"In questa città esco per una pagnotta e torno con una lanterna, un cappello e un rancore verso un formaggiaio.",
		"Una commissione, a Stormwind, non è mai una sola. Sono {g:uscito|uscita} per del filo e sono {g:tornato|tornata} con uno sgabello.",
	},
	["sw.muse.w19.haggle.011"] = {
		"A volte la trattativa si fa brutta senza che nessuno alzi la voce: un contadino del Westfall che vende i finimenti del suo ultimo cavallo, e un compratore che gli toglie una moneta dopo l'altra, mentre tutti e due fingono che siano solo affari.",
		"C'è un tipo di affare di cui nessuno si vanta. Una famiglia dell'ovest con tutto su un carro, e compratori che sanno benissimo quanta poca scelta abbia.",
	},
	["sw.muse.w19.haggle.012"] = {
		"La seta viene da Darnassus, giura il venditore, filata dagli elfi sotto alberi antichi. L'orlo dice Goldshire, e un Goldshire pure di fretta.",
		"«Acciaio nanico, dritto da Ironforge.» Porta il marchio di una piccola mela. Non sono un fabbro, ma uno scherzo di Elwynn lo riconosco.",
	},
	["sw.muse.w19.haggle.013"] = {
		"Ascolta due persone qualsiasi che passano nel Trade District: entro dieci passi una delle due dice un numero.",
		"Ogni conversazione qui nel Trade District finisce con una cifra. Persino due vecchi amici che si abbracciano su una porta si chiedono quanto l'altro abbia pagato il cappotto.",
	},
	["sw.muse.w19.haggle.014"] = {
		"Ogni banco di questa città è costruito ad altezza d'umano. Io contratto meglio in piedi su una cassa. I bottegai se ne sono accorti, e le casse continuano a sparire.",
		"Difficile strappare un buon prezzo quando il venditore parla alla cima del mio cappello. Ho cominciato a portarmi uno sgabello. I prezzi sono migliorati.",
	},
	["sw.muse.w19.haggle.015"] = {
		"Il prezzo giusto è quello su cui tutti e due brontolano fino a casa.",
		"Se a tutti e due resta un po' di amaro in bocca, affare fatto.",
	},
	["sw.muse.w19.haggle.016"] = {
		"osserva due venditori di banchi vicini che si tagliano i prezzi a vicenda un rame per giro, sempre più forte, finché tutti e due vendono sotto costo e nessuno vuole smettere per primo.",
		"si ferma a seguire una guerra dei prezzi fra due carretti rivali, le cifre che scendono a ogni grido, finché una cuoca di passaggio li svuota tutti e due.",
	},
	["sw.muse.w19.hours.001"] = {
		"La città si sveglia dalle imposte: una sbatte aperta, poi un'altra dozzina lungo la via, come se qualcuno mescolasse un enorme mazzo di carte.",
		"Prima le imposte, che sbattono contro la pietra una dopo l'altra. Poi il primo prezzo gridato. Poi Stormwind apre bottega.",
	},
	["sw.muse.w19.hours.002"] = {
		"si abbassa sotto un filo del bucato teso attraverso un vicolo stretto, una fila di camicie che sgocciola sui ciottoli a braccia aperte, come un comitato d'accoglienza.",
		"alza gli occhi verso il bucato steso fra due finestre alte, lenzuola e calze che ondeggiano sopra la strada come le bandiere di un piccolo paese pulitissimo.",
	},
	["sw.muse.w19.hours.003"] = {
		"Le lavandaie sui gradini dei canali sbattono la biancheria bagnata contro la pietra e si passano le notizie della città con lo stesso ritmo. Se vuoi sapere chi ha litigato con chi, va' a metterti vicino al sapone.",
		"Nessuno sente i pettegolezzi prima di chi lava i panni di Stormwind. Li tirano fuori dalle camicie a forza di sbatterle, insieme a tutto il resto.",
		"Bucato sui gradini dei canali: braccia rosse fino al gomito, lino sbattuto sulla pietra, e ogni scandalo di Stormwind strizzato e steso ad asciugare.",
	},
	["sw.muse.w19.hours.004"] = {
		"I gatti di questa città se la sono spartita: uno ha il gradino del bottaio, uno il davanzale sopra il forno, un terzo il coperchio di una botte d'acqua. Nessuno contesta mai l'atto di proprietà di un gatto.",
		"Ogni soglia di Stormwind appartiene a un gatto. Chi abita dietro la porta è soltanto in affitto, e lo sa.",
		"Stormwind si può mappare dai suoi gatti, mi ha detto un carrettiere: quello grasso dal candelaio, quello con un orecchio solo sui gradini della forgia, quello bianco che sta sulla ringhiera di un ponte e giudica tutti. Non scherzava.",
	},
	["sw.muse.w19.hours.005"] = {
		"osserva un gatto su un davanzale che segue una mosca girando tutta la testa, la coda che freme, senza mai decidere che la cosa valga la fatica di alzarsi.",
		"viene {g:studiato|studiata} a lungo, e senza approvazione, da un grosso gatto grigio su un barile, che poi chiude gli occhi come se la questione fosse risolta.",
	},
	["sw.muse.w19.hours.006"] = {
		"sosta vicino a un arrotino che fa girare la mola col piede, un sottile getto di scintille che sfrigola via da un coltello da cucina mentre una cuoca aspetta a braccia conserte.",
		"indugia accanto al carretto di un arrotino, la mola che canta contro una mannaia e le scintille che saltellano via verso gli stivali di una guardia di passaggio.",
	},
	["sw.muse.w19.hours.007"] = {
		"Un rigattiere spinge il carretto per le vie chiedendo ossa, bottiglie e stracci vecchi, e la città gli passa i suoi avanzi dalle finestre. A Stormwind niente viene buttato via due volte.",
		"C'è un uomo che compra quello che nessuno vuole: stracci, ossa, cocci. Lo annuncia con una lunga nota malinconica, e lungo la via le porte gli si aprono una dopo l'altra.",
	},
	["sw.muse.w19.hours.008"] = {
		"Martelli, ruote, un bambino che piange, due cani e un tizio che vende cipolle. Come fa la gente di questa città a sentire i propri pensieri?",
		"Ma Stormwind smette mai di parlare? Perfino i ciottoli fanno chiasso.",
		"In mezzo a tutto questo chiasso c'è un uccello che canta, da qualche parte. Mi fido sulla parola.",
	},
	["sw.muse.w19.hours.009"] = {
		"A metà pomeriggio la città rallenta. Gli strilloni fanno riposare la voce, i gatti si trovano una soglia, e perfino i canali sembrano scorrere più pigri.",
		"La prima ressa è finita e l'ultima non è ancora cominciata. Per un'oretta Stormwind sonnecchia in piedi, come un cavallo alla stanga.",
	},
	["sw.muse.w19.hours.010"] = {
		"In questa città ogni mestiere ha il suo orologio. I fornai finiscono quando cominciano i fabbri, gli scrivani chiudono i registri proprio mentre le taverne aprono le porte, e le guardie cambiano turno brontolando su tutti quanti.",
		"Stormwind non dorme mai davvero: passa di mano in mano da un mestiere all'altro, dai fornai ai fabbri, dai fabbri agli scrivani, dagli scrivani agli osti, e dagli osti di nuovo ai fornai.",
		"La città lavora a turni che nessuno ha mai messo per iscritto: forni, incudini, registri, spine delle botti, e poi daccapo i forni. C'è sempre qualcuno di guardia.",
	},
	["sw.muse.w19.hours.011"] = {
		"fa un passo indietro appena in tempo, mentre un'imposta si spalanca lassù e un secchio d'acqua grigia del bucato atterra proprio dove stava per mettere il piede.",
		"sente gridare 'attenti di sotto!' da una finestra alta e si appiattisce contro il muro un attimo prima che una bacinella di schiuma si rovesci sui ciottoli.",
	},
	["sw.muse.w19.hours.012"] = {
		"Quando le taverne si svuotano, Stormwind appartiene ai mestieri della notte: la ronda, i fornai, i carrettieri che puliscono i canali di scolo, e un cantante, da qualche parte, che conosce solo la prima strofa.",
		"A quest'ora la città è fatta di piccoli rumori: la tosse di una sentinella, la ruota lenta di un carro, una porta accostata piano per non svegliare la casa.",
	},
	["sw.muse.w19.hours.013"] = {
		"Potrei attraversare Stormwind a occhi chiusi e sapere lo stesso dove mi trovo dall'odore: lievito, poi cavallo, poi ferro rovente, poi carta vecchia e qualcosa di vagamente bruciacchiato.",
		"Ogni quartiere della città ha la sua aria. Cammina abbastanza e il naso ti disegna la mappa prima degli occhi.",
		"Pane a un angolo, cavallo e cuoio a quello dopo, fumo di carbone, poi inchiostro e stoffa strinata. Stormwind è più facile da annusare che da leggere.",
	},
	["sw.muse.w19.hours.014"] = {
		"Gli acquaioli di questa città camminano con l'orgoglio prudente di chi non ha mai versato una goccia in pubblico, e guardano storto chiunque abbia l'aria di volerli urtare.",
		"Un bilanciere, due secchi colmi e una faccia che ti sfida a urtarli: gli acquaioli sono padroni di qualunque via stiano percorrendo.",
	},
	["sw.muse.w19.hours.015"] = {
		"In questa città tutto quello che ha una ringhiera finisce per indossare la camicia di qualcuno.",
		"Panni sulle ringhiere, panni alle finestre, panni su un carretto a mano. Stormwind stende il bucato ovunque arrivi.",
	},
	["sw.muse.w19.hours.016"] = {
		"In piedi insieme ai fornai. Non so come facciano a farlo ogni giorno e a sorridere ancora ai clienti.",
		"A quest'ora gli unici svegli sono fornai, guardie e sciocchi. E io non porto né pane né alabarda.",
	},
	["sw.muse.w19.hours.017"] = {
		"Pane, fumo di comignoli, olio per lampade, un cane che abbaia a un carro. La capitale del nemico ha l'odore di qualsiasi altra città, ed è questa la cosa più difficile, a starci dentro.",
		"Dal cuore dell'Alleanza mi aspettavo altro. Invece: bucato steso, un fornaio che grida, un bambino che passa un bastone lungo le ringhiere. Sarebbe più facile se fossero mostri.",
	},
	["sw.muse.w19.ink.001"] = {
		"nota le dita di un mago che {g:gli|le} sta accanto nella folla: inchiostro fino alla seconda falange, e nemmeno un callo.",
		"sfiora un mago nella calca e intravede una mano macchiata di blu scuro fino alle nocche, morbida come quella di uno scrivano.",
	},
	["sw.muse.w19.ink.002"] = {
		"I venditori d'inchiostro tengono un blu quasi nero e un nero quasi viola. I maghi discutono della differenza come se ci fossero in ballo delle vite. Magari è così.",
		"Due maghi da un venditore d'inchiostro, con le boccette alzate verso la finestra, a litigare su una sfumatura che io non so distinguere. Il venditore aspetta come uno che le ha già sentite tutte.",
		"Nel Mage Quarter si vendono undici tipi d'inchiostro nero. Ho chiesto a cosa servisse il dodicesimo, e il venditore mi ha detto che non era in vendita.",
	},
	["sw.muse.w19.ink.003"] = {
		"La carta entra nel Mage Quarter a carrettate e ne esce sotto forma di fumo, di cenere e, ogni tanto, di un libro.",
		"Ogni settimana nel quartiere entrano carri di carta bianca. Quello che ne esce è soprattutto cenere, e ogni tanto un libro sottile che di carri ne è costati cento.",
		"I cenciaioli e i cartai della città prima o poi finiscono tutti nel Mage Quarter. Quello che portano, la torre lo compra, e lo brucia.",
	},
	["sw.muse.w19.ink.004"] = {
		"afferra un foglio che corre sui ciottoli, coperto di una grafia fitta e di cerchi tracciati con cura, e lo porge all'apprendista che arriva di corsa.",
		"si china a raccogliere un foglio di diagrammi finito contro il suo stivale e lo restituisce al proprietario, tutto agitato, senza dare un'occhiata a cosa c'è scritto.",
	},
	["sw.muse.w19.ink.005"] = {
		"Una boccetta d'inchiostro rovesciata si è seccata sul selciato in una forma un po' troppo intenzionale. Gli apprendisti ci girano intorno, e a quanto pare anch'io.",
		"Inchiostro versato su una soglia, seccato in riccioli e spigoli. Probabilmente niente. Eppure in tutta la giornata nessuno ci ha messo il piede sopra.",
		"Una macchia d'inchiostro su un muro vicino alla torre, scagliata lì in chissà quale scatto d'ira dimenticato. Nessuno l'ha ridipinta. Nessuno ha voluto toccarla con un pennello.",
	},
	["sw.muse.w19.ink.006"] = {
		"In qualche aia del regno c'è un'oca che ne ha fin sopra il becco dei maghi.",
		"Tutte quelle penne. Un pensiero per le oche, almeno.",
		"In un'aia lontana un'oca starnazza contro i maghi, e ha ragione.",
	},
	["sw.muse.w19.ink.007"] = {
		"Per farsi prestare un libro da un mago, dicono nel quartiere, si lascia qualcosa di peso uguale: monete, un anello, o una promessa scritta di proprio pugno. La promessa è quella che costa di più.",
		"Prestano i libri come gli usurai prestano l'oro, i maghi, brontolano i librai: con un pegno, una scadenza, e uno sguardo che ti segue giù per la strada.",
		"Un mago ti presta un libro, mi ha detto uno scrivano, come un gatto ti presta un topo: te lo farà pesare, e ti terrà d'occhio finché non torna indietro.",
	},
	["sw.muse.w19.ink.008"] = {
		"Certe lettere lasciano il Mage Quarter scritte con un inchiostro che svanisce dopo la lettura, si lamentano i corrieri. Non sanno mai se affrettarsi o prendersela comoda.",
		"Un corriere mi ha raccontato di aver consegnato una lettera della torre e di aver visto le parole impallidire tra le mani di chi la leggeva. Non ha ancora deciso se sia stata una scortesia.",
	},
	["sw.muse.w19.ink.009"] = {
		"ascolta i portarotoli appesi alla cintura di un mago di passaggio sbattere l'uno contro l'altro a ogni passo, come le pentole di un venditore ambulante.",
		"si scosta per uno studioso carico di astucci di cuoio per pergamene, che scende la via ticchettando piano come una biblioteca ambulante.",
		"sente arrivare una maga prima di vederla: un morbido battere di astucci di legno, un fruscio di carta, e una voce che legge a mezza bocca per nessuno.",
	},
	["sw.muse.w19.ink.010"] = {
		"Gli scrivani della fortezza comprano l'inchiostro nel Mage Quarter, quello normale. Giurano che anche quello normale lì asciuga più in fretta, e nessuno sa dire perché.",
		"Inchiostro qualunque, venduto in una strada di cose straordinarie. Gli scrivani di Stormwind giurano che è meglio di ogni altro, e lo dicono con un filo d'imbarazzo.",
	},
	["sw.muse.w19.ink.011"] = {
		"si ferma davanti a una bottega aperta per guardare un rilegatore cucire un dorso, lento e preciso, come chi rimette a posto un osso.",
		"sosta accanto al banco di un rilegatore dove un libro nuovo viene pressato sotto una pila di libri vecchi, e l'odore di colla e di cuoio arriva fino in strada.",
		"indugia sulle mani di un rilegatore che piegano, segnano e cuciono un fascicolo di pagine senza un solo gesto sprecato, finché l'ago non viene posato.",
	},
	["sw.muse.w19.ink.012"] = {
		"Qui i fili tesi fra le finestre reggono pagine al posto delle camicie: fogli di pergamena bagnati, appesi con le mollette ad asciugare, tutti coperti di scrittura.",
		"Pagine appese a un filo fra due finestre ad asciugare, un capitolo intero che si muove sopra la strada. Qualcuno, sotto, lo legge al contrario e aggrotta la fronte.",
	},
	["sw.muse.w19.ink.013"] = {
		"Ti serve uno scritto che nessun altro sappia leggere? Conosco la strada giusta.",
		"Se vuoi una lettera che non legga nessuno, falla scrivere a un mago. Se vuoi che qualcuno la legga, a uno scrivano.",
		"La calligrafia di un mago è già una protezione. Nessuno ci passa attraverso.",
	},
	["sw.muse.w19.ink.014"] = {
		"Ogni biblioteca del quartiere ha dei vuoti negli scaffali, dicono i rilegatori: libri partiti per la guerra nello zaino di un mago e mai tornati. I vuoti li lasciano. Riempirli sarebbe dimenticare.",
		"Uno scaffale con un libro mancante, lasciato vuoto apposta. Nel Mage Quarter si ricorda così un lettore.",
	},
	["sw.muse.w19.laborer.001"] = {
		"Prima che le botteghe tolgano le sbarre, i giornalieri sono già allineati lungo un muro vicino alla strada della porta, berretto in mano, ad aspettare che un caposquadra li indichi. Quelli che salta restano lì ancora un po', comunque.",
		"Prime luci, e l'angolo delle assunzioni è pieno: uomini e qualche donna con gli attrezzi avvolti nella tela di sacco, ognuno che cerca di sembrare forte ed economico allo stesso tempo.",
	},
	["sw.muse.w19.laborer.002"] = {
		"In mezzo alla folla riconosci i portatori di pietre: una spalla più alta dell'altra, da anni dello stesso carico sullo stesso lato.",
		"I manovali che portano la malta su per le scale, in questa città, camminano storti anche a mani vuote. La pietra li ha tenuti abbastanza da lasciargli addosso la sua forma.",
	},
	["sw.muse.w19.laborer.003"] = {
		"passa accanto a una fila di manovali che mangiano seduti sul bordo della strada, pane in una mano e cipolla nell'altra, masticando in silenzio con la concentrazione di chi ha esattamente quel tanto di tempo.",
		"gira attorno a un gruppetto di operai che dividono una pagnotta e una brocca su una carriola rovesciata, mentre il resto della città scorre intorno alla loro breve isola.",
		"costeggia una fila di manovali seduti con la schiena al muro e gli stivali tolti, che mangiano in un silenzio che nessuno nella strada oserebbe rompere.",
	},
	["sw.muse.w19.laborer.004"] = {
		"Uno gnomo in piedi su una cassa srotola un disegno davanti a sei manovali umani. Annuiscono a ogni riga. Poi sollevano la trave esattamente come hanno sempre fatto, e lo gnomo sospira e corregge il disegno.",
		"In ogni cantiere di questa città trovi uno gnomo con uno schema e una dozzina di umani con un'idea migliore. Di solito ha ragione lo gnomo. Di solito finiscono prima gli umani.",
	},
	["sw.muse.w19.laborer.005"] = {
		"Lungo i Canals, uomini con gli stivaloni di cuoio rastrellano il fondo da tutto quello che la città lascia cadere. Uno stivale per ogni moneta, dicono, e ogni tanto una lettera mai spedita.",
		"Qui lungo i canali i dragatori lavorano con l'acqua fredda fino al petto, tirando su limo, foglie di cavolo e ogni tanto una sedia. Da sopra i ponti nessuno li guarda mai.",
	},
	["sw.muse.w19.laborer.006"] = {
		"Ti do una mano con quel capo? No? Giusto. Hai l'aria di chi ha portato di peggio.",
		"Ti offrirei un aiuto, ma si vede che lo fai da prima che io imparassi a camminare.",
	},
	["sw.muse.w19.laborer.007"] = {
		"Quando qui la paga arriva in ritardo, i manovali non urlano. Posano gli attrezzi, tutti insieme, e si siedono. Ogni caposquadra di Stormwind sa che cosa ricorda quel silenzio.",
		"A nessun caposquadra di questa città piace il rumore degli attrezzi posati tutti insieme. I manovali non hanno bisogno di spiegare. Tutta la città sa com'è finito l'ultimo conto non pagato.",
	},
	["sw.muse.w19.laborer.008"] = {
		"guarda un copritetto che continua a posare le lastre sotto la pioggia, l'acqua che gli cola dalla tesa del cappello, come se il tempo fosse affare di qualcun altro.",
		"alza gli occhi su due operai su un tetto ancora a metà che continuano a lavorare sotto la pioggia, gridandosi le misure sopra il tamburellare.",
	},
	["sw.muse.w19.laborer.009"] = {
		"Le portatrici d'acqua che salgono dai canali alle case alte portano due secchi e tutte le ultime notizie, e non ne versano né degli uni né delle altre.",
		"Ogni secchio d'acqua nelle case eleganti l'ha portato su una donna col bilanciere sulle spalle e una storia per ogni porta. Ai nobili va l'acqua. Le storie vanno altrove.",
	},
	["sw.muse.w19.laborer.010"] = {
		"Su un'impalcatura un nano e un umano litigano su ogni giunto dalla prima tavola, e l'edificio viene su benissimo.",
		"Due carpentieri sull'impalcatura, un nano e un umano, battibeccano in due accenti su ogni piolo. L'ossatura sotto di loro è dritta come un filo a piombo.",
		"Il nano dice che la trave va qui, l'umano dice là, e risolvono mettendola dove nessuno dei due aveva detto. Il lavoro migliore della strada, a quanto pare.",
	},
	["sw.muse.w19.laborer.011"] = {
		"Gli uomini che svuotano i pozzi neri della città lavorano mentre tutti dormono e se ne vanno prima che qualcuno si svegli. Se Stormwind ha un odore sopportabile, è grazie a gente che non incontra mai.",
		"Qualcuno porta via ogni giorno quello che una città intera si lascia dietro, senza farsi vedere. A Stormwind nessuno sa come si chiamano. Se smettessero, se ne accorgerebbero tutti.",
	},
	["sw.muse.w19.laborer.012"] = {
		"fa un cenno a un manovale che si è fermato a premersi i pugni sulle reni, e in cambio riceve il sorriso stanco di chi non è stato interrogato e risponde comunque.",
		"passa accanto a un operaio appoggiato alla pala, a occhi chiusi, in piedi e profondamente addormentato, mentre il caposquadra è girato dall'altra parte.",
	},
	["sw.muse.w19.laborer.013"] = {
		"Ogni pietra di questa città è salita su una scala sulla schiena di qualcuno. E io mi lamento dei gradini.",
		"Guarda quello, sale tre scale col secchio della malta in spalla. E io che pensavo di aver avuto una giornata pesante.",
		"Qualcuno ha portato ognuna di queste pietre. Io ho portato uno zaino su per una collina e voglio una medaglia.",
	},
	["sw.muse.w19.laborer.014"] = {
		"Nei cantieri riconosci gli uomini del Westfall: prima di sollevare qualcosa danno un'occhiata al cielo, per abitudine da contadini. Qui niente dipende dal tempo, e loro controllano lo stesso.",
		"Ex contadini, quasi tutte le braccia nuove sulle impalcature. Ogni ora strizzano ancora gli occhi verso le nuvole, anche se l'unico raccolto che gli resta è la paga di una giornata.",
	},
	["sw.muse.w19.laborer.015"] = {
		"Quegli operai sull'impalcatura fischiettano sempre le stesse quattro note. Ormai mi sono entrate in testa per sempre.",
		"Qualcuno su quell'impalcatura fischietta lo stesso motivetto da un'ora. Se lo sento ancora salgo su e mi faccio insegnare il resto.",
	},
	["sw.muse.w19.lamb.001"] = {
		"Qualcuno ha chiamato una taverna Slaughtered Lamb, l'agnello macellato, e l'ha aperta nel Mage Quarter. O è uno scherzo o è un avvertimento, e gli habitué non dicono quale.",
		"Lo Slaughtered Lamb, l'agnello macellato: un nome allegro per una taverna, a non pensarci. Quasi tutti i clienti fissi sembrano aver smesso di pensarci apposta.",
		"Una taverna che si chiama Slaughtered Lamb, l'agnello macellato, non lontano dalla cattedrale. In questa città qualcuno ha un umorismo nero, oppure molto onesto.",
	},
	["sw.muse.w19.lamb.002"] = {
		"La gente scende le scale sul retro del Lamb col cappuccio alzato, e risale col cappuccio ancora più calato sugli occhi.",
		"Cappucci scendono le scale della cantina dello Slaughtered Lamb, e più tardi gli stessi cappucci risalgono, tirati più stretti. Al banco nessuno si volta mai a guardare.",
		"Chi scende nella cantina del Lamb risale più silenzioso. Non cambiato, proprio. Solo più silenzioso, come si è dopo una lunga lettera.",
	},
	["sw.muse.w19.lamb.003"] = {
		"Birra onesta al Lamb. Pavimento tiepido. Preferisco non sapere perché.",
		"Le assi del Lamb sono sempre tiepide, e la cucina sta dall'altra parte. Passami la brocca.",
	},
	["sw.muse.w19.lamb.004"] = {
		"Passa uno stregone a passeggio con un imp che gli trotterella alle calcagna, e la strada si apre senza una parola, come per un carro di letame.",
		"Ormai nessuno grida più alla vista di un imp. Si sollevano gli orli e ci si scansa, come per un cane infangato che appartiene a qualcuno d'importante.",
		"Un imp aspetta fuori da una bottega, grattando lo stipite e borbottando. Il bottegaio gli spazza intorno ai piedi e si guarda bene dal dire qualcosa.",
	},
	["sw.muse.w19.lamb.005"] = {
		"lancia un'occhiata alla finestrella bassa della cantina dello Slaughtered Lamb, dove un bagliore color livido va e viene dietro la sporcizia del vetro.",
		"rallenta accanto allo Slaughtered Lamb, dove qualcosa all'altezza del selciato pulsa di verde dietro una grata di cantina, poi prosegue.",
		"si blocca quando dalle scale della cantina dello Slaughtered Lamb sale uno spiffero freddo che sa di fumo di candela e di monete scaldate.",
	},
	["sw.muse.w19.lamb.006"] = {
		"guarda uno stregone mercanteggiare su un mazzo di rape, perdere, e pagare con perfetta buona grazia.",
		"nota che lo stregone davanti in fila per il pane dice per favore e grazie, conta le monete giuste e augura buona giornata al fornaio.",
		"si trattiene per lasciare che uno stregone incappucciato aiuti una vecchia a sollevare la cesta oltre una pozzanghera; lo stregone la saluta con garbo e prosegue verso il Mage Quarter senza una parola.",
	},
	["sw.muse.w19.lamb.007"] = {
		"Ogni stregone ha cominciato volendo qualcosa abbastanza da scendere quelle scale. Resta seduto al piano di sopra del Lamb abbastanza a lungo, e cominci a chiederti che cosa vorresti tu, così tanto.",
		"Nessuno scende nella cantina del Lamb per capriccio. Dietro ogni cappuccio c'è un desiderio, un lutto o un rancore, e la birra di sopra si versa per tutti e tre.",
	},
	["sw.muse.w19.lamb.008"] = {
		"Stormwind preferisce sapere dove studiano i suoi stregoni piuttosto che chiederselo. Una cantina sotto una taverna si sorveglia facilmente. Una grotta in collina no.",
		"Chiudi la cantina del Lamb, mi ha detto una volta una guardia, e se ne scaverebbero un'altra peggiore, in qualche posto dove non si vede. Meglio la cantina che sai trovare.",
		"La Guardia conosce ogni faccia che scende nella cantina del Lamb, mi ha detto una guardia, e preferisce conoscerle lì che incontrarle in un fosso fuori dalle mura.",
	},
	["sw.muse.w19.lamb.009"] = {
		"Al piano di sopra del Lamb parlano tutti a voce altissima del tempo che fa. Nessuno vuole sentire quel che si dice di sotto.",
		"Allo Slaughtered Lamb ogni bevuta viene con una regola in omaggio: quel che sta sotto il pavimento resta sotto il pavimento.",
		"Al Lamb non chiedi cosa c'è in cantina. Chiedi cosa c'è nello stufato, ed è già coraggio abbastanza.",
	},
	["sw.muse.w19.lamb.010"] = {
		"lascia passare due mercanti rispettabilissimi che escono dallo Slaughtered Lamb, sbattono le palpebre davanti alla strada e si separano senza salutarsi.",
		"vede uno studioso con degli stivali buoni uscire dallo Slaughtered Lamb, guardare da una parte e dall'altra, e sistemarsi un colletto che non ne aveva nessun bisogno.",
	},
	["sw.muse.w19.lamb.011"] = {
		"Gli orchi arrivarono con gli stregoni in testa, dicono i veterani. Ora Stormwind ha i suoi, di stregoni, a poche strade dalla fortezza, e i veterani tacciono ogni volta che si nomina il Lamb.",
		"Una città bruciata una volta dalla magia dei demoni ora lascia che quella stessa magia s'insegni sotto una taverna. C'è chi la chiama follia, e chi conoscere il nemico. I vecchi soldati cambiano discorso.",
	},
	["sw.muse.w19.lamb.012"] = {
		"Al piano di sopra del Lamb i tavoli sono segnati da cerchi e iniziali, come in ogni taverna. Cambia solo il silenzio: qui tutti ascoltano un po' verso il pavimento.",
		"Una taverna come le altre, il Lamb, finché non noti come siedono i bevitori: schiena al muro, piedi piantati, mezzo orecchio sulle assi di sotto.",
	},
	["sw.muse.w19.lamb.013"] = {
		"Chi fa le pulizie allo Slaughtered Lamb si merita una medaglia e una lunghissima vacanza.",
		"Mi piacerebbe conoscere chi spazza al Lamb. E ancora di più sapere quale piano si rifiuta di fare.",
	},
	["sw.muse.w19.lamb.014"] = {
		"Il taverniere del Lamb non chiede mai cosa ci sia di sotto. Chiede se mangi, e lo chiede a tutti, cappuccio o no.",
		"Dietro il banco del Lamb versano, asciugano, e se glielo chiedi indicano la porta della cantina esattamente come indicherebbero la latrina.",
		"Ogni oste di Stormwind ne ha viste di tutti i colori. Quello del Lamb le ha viste salire le scale e ordinare una minestra.",
	},
	["sw.muse.w19.lamp.001"] = {
		"osserva un lampionaio che risale la via alzando verso ogni lampada una lunga pertica con una fiammella in cima, senza mai sbagliare al primo colpo.",
		"si ferma mentre passa un lampionaio con pertica e scaletta, e la via si illumina alle sue spalle a piccoli passi pazienti.",
		"segue il cammino del lampionaio soltanto dai lampioni, che sbocciano gialli uno dopo l'altro un po' più in fondo alla via, mentre di lui si vede solo un'ombra fra l'uno e l'altro.",
	},
	["sw.muse.w19.lamp.002"] = {
		"Sembra che ogni via di questa città abbia un lampione che non si accende mai. La gente del posto dà le indicazioni a partire da quello: a sinistra al lampione morto, poi giù per i gradini.",
		"Un lampione rotto su un angolo diventa un punto di riferimento più in fretta di qualsiasi statua. 'Oltre quello spento, dal bottaio' ti porta dovunque, a Stormwind.",
		"Chiedi la strada a Stormwind e ti guideranno coi lampioni che non funzionano: 'gira a quello rotto, quello col vetro crepato, non l'altro rotto'.",
	},
	["sw.muse.w19.lamp.003"] = {
		"Riesco a contare le finestre ancora accese lungo la via. Ogni tanto una si spegne, e la città ha una stanza in meno.",
		"Le finestre accese si spengono una dopo l'altra, mai in ordine: l'ultima candela di qualcuno, l'ultima pagina di qualcun altro. Stormwind va a letto senza un piano.",
	},
	["sw.muse.w19.lamp.004"] = {
		"ascolta, da qualche parte lì vicino, una lanterna posata sulla pietra, una porta sbarrata e una voce che dà la buonanotte a qualcuno che non risponde.",
		"sente un'imposta chiudersi poco lontano, poi il piccolo tintinnio del vetro di una lampada sollevato e il fruscio di una fiamma che si spegne.",
	},
	["sw.muse.w19.lamp.005"] = {
		"Alcune finestre di questa città tengono una candela accesa a ogni ora. Chiedi a un vicino e la risposta arriva a mezza voce: qualcuno di quella casa è partito per la guerra e non è ancora tornato. È quella parola, 'ancora', a reggere tutto.",
		"Candele alle finestre, accese quando la luce non serve a nessuno. A Stormwind, mi ha detto una donna sulla soglia, vuol dire che la casa aspetta qualcuno. Nessuno dice mai da quanto.",
		"Qui vicino, da qualche parte, arde una candela per qualcuno partito per la guerra. I vicini la tengono d'occhio, e se mai sta per spegnersi, uno di loro va a bussare.",
	},
	["sw.muse.w19.lamp.006"] = {
		"Sono {g:passato|passata} davanti al retrobottega di un candelaio: file di stoppini appesi a una rastrelliera, immersi e reimmersi in una vasca di sego finché non ingrassano e diventano candele. Ogni luce di questa città comincia come uno spago e un'enorme pazienza.",
		"Le candele non nascono dal nulla. Da qualche parte a Stormwind un candelaio intinge gli stoppini nel sego caldo per la centesima volta, e da qualche altra parte una guardia brontola per il prezzo.",
	},
	["sw.muse.w19.lamp.007"] = {
		"Il vetro dei lampioni, qui, è sempre pulito, e non ho mai visto nessuno pulirlo, nemmeno una volta. Stormwind ha servitori che nessuno vede, e sono bravissimi.",
		"Qualcuno toglie la fuliggine da ogni lampione di Stormwind, a un'ora in cui nessuno guarda. Mi piacerebbe conoscerlo. Ho idea che non succederà mai.",
		"Vetri dei lampioni puliti, una via dopo l'altra. O c'è un esercito di lucidatori che lavora mentre la città dorme, o i lampioni hanno più amor proprio di quasi tutti i nobili.",
	},
	["sw.muse.w19.lamp.008"] = {
		"guarda la candela sul tavolo più vicino piegarsi ogni volta che si apre la porta, come se anche lei volesse vedere chi è entrato.",
		"nota le fiammelle delle candele lungo la parete inchinarsi tutte insieme quando la porta si spalanca, poi raddrizzarsi una a una, come una fila di scrivani.",
	},
	["sw.muse.w19.lamp.009"] = {
		"Con questa nebbia un lampione non illumina la strada. Illumina intorno a sé una stanzetta rotonda di nebbia, e si passa da una stanza all'altra con il nulla in mezzo.",
		"Nella nebbia ogni lampione è un'isoletta a sé. In mezzo si va a memoria, e a orecchio, dietro al rumore dei propri stivali.",
	},
	["sw.muse.w19.lamp.010"] = {
		"Qui una fiaschetta d'olio per lampade costa quasi quanto un boccale di birra. So bene con quale dei due preferirei restare al buio.",
		"Olio per lampade o birra, stesso prezzo. Scelta facile. La porta la troverò a tentoni.",
		"Ho chiesto il prezzo dell'olio per lampade, poi quello della birra. Resterò al buio, ma non me ne importerà.",
	},
	["sw.muse.w19.lamp.011"] = {
		"Un lampionaio mi ha raccontato, con autentica amarezza, che certe lampade del Mage Quarter si accendono da sole. Per lui è una specie di furto.",
		"I lampionai di Stormwind hanno un solo nemico, e non è il buio. Sono i maghi, con le loro lampade che si accendono senza la pertica di nessuno, e che a un lampionaio non hanno mai lasciato una mancia.",
	},
	["sw.muse.w19.lamp.012"] = {
		"Al tramonto c'è un breve tratto in cui la luce del giorno se n'è andata e i lampioni non sono ancora accesi, e tutta la città prende il grigio azzurro tenue del dorso di un piccione.",
		"Tra l'ultimo chiarore e il primo lampione, Stormwind ha qualche minuto in cui niente ha spigoli. Perfino le guardie sembrano gentili.",
		"Il tramonto, e per un po' la pietra si dimentica di essere bianca. Tutto prende lo stesso grigio azzurro mite, tetti, mura e facce.",
	},
	["sw.muse.w19.lamp.013"] = {
		"Ho visto una gnoma aggiustare un lampione che sfrigolava con una forcina e un colpetto secco, e andarsene prima che la guardia lì accanto decidesse se ringraziarla o offendersi.",
		"Un lampione che sputacchiava, una gnoma di passaggio, due giri di forcina, e la fiamma si è rimessa dritta. La guardia che aveva visto tutto ha fissato a lungo il lampione, come se l'avesse tradita.",
	},
	["sw.muse.w19.lamp.014"] = {
		"si fa da parte per guardare un lampionaio con la cerata gocciolante risalire la scala fino a un lampione spento dalla pioggia, borbottando le stesse parole che ha usato per quello prima.",
		"vede un lampionaio riparare la fiamma dentro il cappotto per tutta la salita, riportare in vita un lampione annegato e passare oltre senza nemmeno guardare il cielo.",
	},
	["sw.muse.w19.lamp.015"] = {
		"La lampada su questo tavolo ha il vetro scheggiato e lo stoppino storto, eppure fa il miglior cerchio di luce della sala. Mi ci sono {g:sistemato|sistemata} dentro come un gatto su un gradino tiepido.",
		"Qui dentro c'è una sola lampada come si deve, e io mi sono {g:preso|presa} il tavolo lì sotto. Qualunque cosa venga dopo, può aspettare finché non comincia a fumare.",
	},
	["sw.muse.w19.lamp.016"] = {
		"Metà di questa città dorme e l'altra metà è in taverna. So bene in quale metà sto.",
		"A quest'ora Stormwind si divide con ordine fra chi russa e chi canta.",
		"Tutte le persone di buon senso sono a letto. Tutte le altre si divertono molto di più.",
	},
	["sw.muse.w19.lane.001"] = {
		"I vicoli dell'Old Town bastano per due persone, a patto che una delle due accetti di diventare muro per un momento.",
		"Due persone s'incontrano in un vicolo dell'Old Town e una si mette di sbieco. Quale, è tutta una faccenda di rango, debiti e carattere.",
		"Nei vicoli più stretti dell'Old Town valgono regole che nessuno ha scritto: chi porta di più passa per primo, chi ha un debito si schiaccia contro il muro.",
	},
	["sw.muse.w19.lane.002"] = {
		"si mette di fianco per lasciar passare una donna con una cesta di rape, in un vicolo largo appena quanto la cesta.",
		"si appoggia con la schiena al muro di un vicolo stretto mentre un ragazzo fa rotolare una botte, chiedendo scusa alla botte.",
	},
	["sw.muse.w19.lane.003"] = {
		"Nei vicoli stretti i passi ti tornano indietro dai muri con un attimo di ritardo, come se qualcuno ti tenesse dietro e per educazione non ti raggiungesse.",
		"I vicoli dell'Old Town restituiscono ogni passo due volte. Ci vuole un po' per smettere di voltarsi al secondo.",
		"Percorri da {g:solo|sola} un vicolo dell'Old Town e i muri lo percorrono con te, un passo indietro. È solo un'eco. Di solito ci credo.",
	},
	["sw.muse.w19.lane.004"] = {
		"Nell'Old Town tutti conoscono una scorciatoia. Non ce ne sono due uguali, e almeno una finisce nella cucina di qualcuno.",
		"Chiedi una scorciatoia in questa città e te ne danno tre, tutte diverse, tutte che finiscono contro un muro.",
		"Per attraversare l'Old Town c'è una strada veloce. Ce ne sono anche venti lente che tutti giurano siano veloci.",
	},
	["sw.muse.w19.lane.005"] = {
		"Una porta in uno dei vicoli sul retro è stata ridipinta così tante volte che le scrostature mostrano cinque colori insieme, ciascuno l'idea di ricominciare di qualcuno.",
		"Verde sopra rosso sopra blu: una vecchia porta in un vicolo laterale porta addosso tutti i colori scelti dai suoi inquilini. Nessuno l'ha mai raschiata fino al legno.",
	},
	["sw.muse.w19.lane.006"] = {
		"Qualcuno ha disegnato col gesso delle frecce sugli angoli dei vicoli, per indicare l'uscita. Qualcun altro le ha ridisegnate al contrario. Umorismo dell'Old Town, credo. O una guerra.",
		"Sugli angoli dell'Old Town lavorano due mani col gesso: una disegna frecce verso il canale, l'altra le gira tutte. Spero che non s'incontrino mai in un vicolo stretto.",
		"Frecce di gesso agli angoli dei vicoli puntano in tutte le direzioni, corrette e ricorrette. L'unica certezza è che nell'Old Town c'è qualcuno di molto testardo.",
	},
	["sw.muse.w19.lane.007"] = {
		"si china sotto un'insegna appesa così bassa nel vicolo che la staffa di ferro è stata lucidata dalle fronti dei passanti.",
		"si abbassa sotto un'insegna che sporge nel vicolo proprio all'altezza degli occhi di una persona alta, col bordo inferiore consumato e liscio.",
	},
	["sw.muse.w19.lane.008"] = {
		"Nessun vicolo dell'Old Town corre dritto per più di venti passi. Le vecchie guardie dicono che è fatto apposta, perché niente possa più caricarci dentro.",
		"I vicoli piegano e ripiegano, e non vedi mai lontano. In una strada storta è difficile lanciare una carica, ripetono le guardie, e anche darsi alla fuga.",
	},
	["sw.muse.w19.lane.009"] = {
		"Una soglia, nei vicoli, è affollata di vasi crepati, ognuno con un'unica erba testarda che cresce all'ombra. L'Old Town coltiva dove può.",
		"Una fila di orci sbeccati sul davanzale sopra un vicolo, e in ognuno un rametto di qualcosa di verde che non ha intenzione di arrendersi. La pietra non ha ancora vinto.",
	},
	["sw.muse.w19.lane.010"] = {
		"Tre serrature su una porta in un vicolo sul retro, e la finestra accanto tenuta aperta da una scarpa. L'Old Town ha idee tutte sue sulla sicurezza.",
		"C'è una porta, nei vicoli dietro la taverna, con quattro serrature e una sbarra. Quello che c'è dentro o è preziosissimo o è molto arrabbiato.",
	},
	["sw.muse.w19.lane.011"] = {
		"Qui stai al centro del vicolo. Nell'Old Town dalle finestre cade roba, e non sempre per sbaglio.",
		"In questi vicoli guarda in alto oltre che avanti. L'Old Town svuota i catini senza tanti preavvisi.",
	},
	["sw.muse.w19.lane.012"] = {
		"Tanto sono stretti i vicoli che i vicini parlano da una finestra all'altra. Passandoci sotto attraversi un'intera conversazione sul prezzo delle cipolle.",
		"Due finestre una di fronte all'altra sopra un vicolo, e a ciascuna un vecchio affacciato, a regolare una lite più vecchia di loro due sopra la testa di chi passa.",
	},
	["sw.muse.w19.lane.013"] = {
		"Il buio resta più a lungo nei vicoli dell'Old Town che nelle strade larghe. A quest'ora l'unica luce è quella che filtra sotto le porte, una riga chiara sui ciottoli ogni pochi passi.",
		"Di notte un vicolo sul retro è una fila di sottili fili d'oro, la luce sotto ogni porta, e il buio nel mezzo.",
	},
	["sw.muse.w19.lane.014"] = {
		"scavalca il rigagnolo di pioggia che corre giù per il centro del vicolo, portandosi verso il canale un tappo, una piuma e il bottone perso di qualcuno.",
		"si tiene al bordo di un vicolo ripido mentre la pioggia trasforma il canaletto di scolo in un piccolo fiume indaffarato.",
	},
	["sw.muse.w19.lane.015"] = {
		"I ciottoli dei vicoli sono rattoppati con la pietra che c'era sottomano: una grigia, una rosata, mezzo gradino rotto. La strada è una coperta a pezze che qualcuno continua a ricucire.",
		"Qua e là il selciato di un vicolo è aggiustato con pietre spaiate, ognuna messa da qualcuno che non ha aspettato che la città mandasse un muratore.",
	},
	["sw.muse.w19.lane.016"] = {
		"Vicolo cieco, porta chiusa, e qualcuno che ride dietro. La barzelletta preferita dell'Old Town.",
		"Ogni vicolo dell'Old Town finisce contro una porta chiusa. Comincio a prenderla sul personale.",
		"Se questo vicolo porta da qualche parte, lo tiene per sé.",
	},
	["sw.muse.w19.lane.017"] = {
		"A sinistra alle cipolle, a destra dove si urla, dritto oltre l'uomo che non ti guarda. Le indicazioni dell'Old Town.",
		"In questo quartiere le indicazioni si danno a odori e rumori, mai coi nomi delle strade.",
	},
	["sw.muse.w19.lane.018"] = {
		"La nebbia riempie i vicoli dell'Old Town come l'acqua riempie una brocca. Le voci girano l'angolo prima delle persone, e a volte al posto loro.",
		"Con questa nebbia un vicolo è lungo dieci passi in ogni direzione. Qualcuno tossisce lì vicino e non si fa vedere affatto.",
	},
	["sw.muse.w19.mason.001"] = {
		"In una taverna, un vecchio scalpellino mi ha indicato un muro dalla finestra e me l'ha letto come un registro: corsi accurati in basso, poi un tratto frettoloso con zeppe nei giunti. «Lì sono finiti i soldi», ha detto, ed è tornato al suo boccale.",
		"Gli scalpellini leggono la storia di un muro nei giunti, mi ha detto uno di loro: stretti e regolari finché le squadre mangiavano, poi malta più spessa e cunei, poi un corso posato da uomini a cui non importava più. Non ha detto quale muro. Non ce n'era bisogno.",
	},
	["sw.muse.w19.mason.002"] = {
		"vede un vecchio dalle nocche da scalpellino passare accanto a una porta e bussare due volte, piano, sullo stipite di pietra, come si saluta un conoscente in mezzo alla folla.",
		"coglie un vecchio manovale curvo che, passando, batte sullo spigolo di un edificio due colpetti rapidi con una nocca, come per controllare che regga ancora.",
	},
	["sw.muse.w19.mason.003"] = {
		"Sopra una porta c'è un leone scolpito che si ferma alle spalle: il resto è ancora blocco grezzo, segni di scalpello compresi. I vicini dicono che lo scultore se n'è andato con la gilda, e che da allora nessuno ha osato finire il leone di un altro.",
		"Su una casa c'è un fregio che corre liscio per metà della sua lunghezza e poi diventa pietra grezza, a metà di una foglia. Chi lo scolpiva se n'è andato con gli altri scalpellini, dice la gente. Il padrone l'ha lasciato così, per dispetto o per vergogna.",
		"Alza lo sguardo lungo i cornicioni e li trovi: una ghirlanda che s'interrompe, uno stemma tagliato a metà. Gli scalpellini hanno lasciato lassù il lavoro incompiuto, come una frase che nessuno vuole finire.",
	},
	["sw.muse.w19.mason.004"] = {
		"Chiedi a uno scalpellino cosa pensa della cattedrale. Ti parlerà a lungo delle grondaie.",
		"Mostra a uno scalpellino l'edificio più bello di Stormwind e troverà l'unico giunto che avrebbe fatto in un altro modo.",
		"Mai fare una passeggiata con uno scalpellino. Ogni cento passi si ferma a guardare storto un architrave.",
	},
	["sw.muse.w19.mason.005"] = {
		"Quando il lavoro si fermò, la gilda aveva degli apprendisti, ragazzi a metà del mestiere. Alcuni andarono a ovest coi loro maestri. Quelli rimasti adesso portano casse nel Trade District, con mani che sanno metà di qualcosa.",
		"In questa città ci sono uomini che erano apprendisti scalpellini quando la gilda se ne andò. Non hanno mai finito di imparare. Li vedi trascinare sacchi e, ogni tanto, passare il pollice lungo un giunto mentre camminano.",
	},
	["sw.muse.w19.mason.006"] = {
		"Del filo a piombo e del peso della pietra: di questo si fida uno scalpellino, mi ha detto uno di loro. I nobili, secondo lui, non avevano né l'uno né l'altro.",
		"«La pietra non mente mai su dove vuole cadere», mi ha detto un vecchio scalpellino. «Un contratto firmato, invece...»",
	},
	["sw.muse.w19.mason.007"] = {
		"posa lo sguardo su un mazzuolo da scalpellino appeso a un chiodo dietro il banco, col manico consumato e chiaro, e coglie l'oste mentre spiega a un forestiero che il padrone tornerà a prenderlo.",
		"scorge sopra le file di bottiglie un mazzuolo impolverato, senza dubbio da scalpellino, e sente un cliente abituale spiegare che il chiodo resta del suo padrone finché non torna dall'ovest.",
	},
	["sw.muse.w19.mason.008"] = {
		"I barcaioli sostengono che gli scalpellini costruirono questi argini appena inclinati verso l'esterno, perché la città non potesse mai stringere del tutto il pugno sull'acqua. Scherzo o saggezza, gli scalpellini che lo saprebbero non parlano.",
		"Fai scorrere l'occhio lungo l'argine del canale e non è proprio a piombo, dicono i barcaioli, e apposta: gli scalpellini volevano che l'acqua si sentisse la benvenuta. Lo raccontano seri seri. Il muro dà loro ragione.",
	},
	["sw.muse.w19.mason.009"] = {
		"Le nocche e la tosse: così riconosci un vecchio scalpellino. La polvere di pietra non se ne va mai del tutto.",
		"Nocche come noci e una tosse secca. Trent'anni di polvere di pietra, quel vecchio. La panchina se l'è guadagnata.",
		"Guarda il pollice di quel vecchio. Continua a cercare il filo di uno scalpello che non c'è.",
	},
	["sw.muse.w19.mason.010"] = {
		"osserva un giovane scalpellino incastrare un blocco nuovo in un muro, mentre un vecchio seduto su una panchina a venti passi lo corregge senza mai alzarsi, e ha sempre ragione.",
		"si sofferma accanto a una squadra di riparazione: il più giovane sta posando una pietra, e uno scalpellino in pensione dall'altra parte della strada gli grida «A sinistra! L'altra sinistra!» finché il blocco non va a posto.",
		"si ferma a guardare un vecchio su uno sgabello che dirige la riparazione di un muro solo col mento, una spinta a sinistra, una in giù, finché la pietra nuova non si assesta dove vuole lui.",
	},
	["sw.muse.w19.mason.011"] = {
		"Un giunto onesto, quello degli scalpellini umani: lo ammetto. Un nano l'avrebbe tagliato uguale, e poi si sarebbe seduto sull'ultima pietra finché non saltava fuori la borsa.",
		"Lavoro decente, su queste mura. A Ironforge, però, uno scalpellino non consegna le chiavi di niente finché le monete non sono state contate due volte. Gli umani imparano piano, ma imparano.",
	},
	["sw.muse.w19.mason.012"] = {
		"Uno scalpellino una volta mi ha spiegato che ogni blocco ricorda come giaceva nella cava, e un buon scalpellino lo posa nello stesso verso. Mettilo di fianco e in una generazione si sfalda. Adesso guardo i muri in un altro modo, chiedendomi quali li abbiano posati uomini stanchi.",
		"La pietra ha una venatura, ha detto un vecchio scalpellino, e se la posi male si sfoglia in trenta inverni. Qua e là a Stormwind c'è già un muro che comincia a squamarsi. Lui sapeva quali squadre li avevano posati, e non ne ha nominata nessuna.",
	},
	["sw.muse.w19.mason.013"] = {
		"Un vecchio fornaio dice di aver sfamato a credito le squadre degli scalpellini per tutta la ricostruzione. Il giorno che se ne andarono, cancellò la lavagna con le sue mani. Qualcuno, a Stormwind, doveva pur saldare il conto con loro, dice.",
		"Gli scalpellini avevano un conto aperto in una panetteria mentre costruivano, raccontano i vecchi clienti, e il fornaio lo condonò il giorno in cui la gilda lasciò la città. Lo raccontano come una cosa da poco. Non lo è.",
		"Fra tutti quelli che gli scalpellini si sono lasciati dietro, un fornaio è l'unico che abbia sentito parlarne senza rancore e senza smorfie. Ed è anche quello che ci ha rimesso più pane.",
	},
	["sw.muse.w19.mason.014"] = {
		"trova un blocco alla base di un muro tagliato un pelo troppo corto, col vuoto riempito da un cuneo d'ardesia: la fretta di qualcuno, murata per sempre.",
		"individua un corso di pietre in cui un blocco sporge dai vicini di un dito, una svista che una squadra attenta non avrebbe mai lasciato lì.",
	},
	["sw.muse.w19.mason.015"] = {
		"Alcuni degli uomini con la maschera rossa, laggiù a ovest, hanno posato la pietra su cui sto in piedi. Se dovrò, li combatterò. Prima però vorrei che i nobili mi spiegassero come si è arrivati a questo.",
		"I Defias adesso sono un guaio dell'Alleanza, e quindi mio. Eppure sotto ogni maschera, laggiù, ci sono mani da scalpellino, e qualcuno in questa città ce le ha messe.",
	},
	["sw.muse.w19.mason.016"] = {
		"Metà dei modi di dire di questa città vengono dal cantiere: un uomo onesto è «in squadra», un bugiardo è «fuori piombo». Gli scalpellini se ne sono andati. Le parole sono rimaste.",
		"Qui chiamano «in bolla» un mercante onesto senza pensare da dove venga. Uno scalpellino glielo saprebbe dire. Ne restano pochi a cui chiederlo.",
	},
	["sw.muse.w19.nave.001"] = {
		"In fondo alla navata della cattedrale a qualcuno è caduto un innario. L'ho visto toccare terra, e solo dopo l'ho sentito, come una notizia che arriva in ritardo.",
		"La navata è così lunga che i suoni arrivano tardi. Un libro cade vicino all'altare, e un attimo dopo lo schiocco raggiunge la porta.",
		"Nella cattedrale anche un libro che cade se la prende comoda. Lo vedi atterrare, poi è la navata a decidere quando fartelo sentire.",
	},
	["sw.muse.w19.nave.002"] = {
		"Gli inginocchiatoi della cattedrale hanno ciascuno due conche poco profonde. Anni di ginocchia, tutte a cercare lo stesso posto.",
		"Qualcuno dovrebbe contare le ginocchia che hanno scavato quelle conche negli inginocchiatoi della cattedrale. Migliaia, e ognuna a chiedere qualcosa.",
		"Guarda da vicino gli inginocchiatoi della cattedrale: ognuno ha due conche lisce, un po' troppo distanti per una persona sola. Il legno ha fatto la media di tutti.",
	},
	["sw.muse.w19.nave.003"] = {
		"si ferma accanto a un accolito a carponi che gratta la vecchia cera dal pavimento della navata con un coltellino e una gran pazienza.",
		"gira attorno a un sagrestano intento a staccare dalle lastre le gocce di cera, una pallida moneta dopo l'altra.",
	},
	["sw.muse.w19.nave.004"] = {
		"Nella cattedrale sussurrano tutti. Tranne i nani: il sussurro di un nano arriva fino alle ultime panche.",
		"Due gnomi che bisbigliano nella cattedrale sembrano proprio un bollitore che sta per fischiare.",
		"Là dentro, un nano che sussurra vale un umano che alza educatamente la voce.",
	},
	["sw.muse.w19.nave.005"] = {
		"Non ho mai conosciuto nessuno che abbia visto chiuse le grandi porte della cattedrale. Un accolito mi ha detto che ogni anno ungono comunque i cardini. Non si sa mai.",
		"Nessuno si ricorda le porte della cattedrale chiuse, tanto sono rimaste aperte. Eppure qualcuno ne unge i cardini, giura un accolito, perché girino il giorno in cui dovranno farlo.",
		"Il lavoro di un accolito, a sentir lui: oliare i cardini di porte che non si chiudono mai. Lo diceva come un voto, e forse lo è.",
	},
	["sw.muse.w19.nave.006"] = {
		"In alto, tra le vetrate colorate della cattedrale, c'è un vetro semplice, una riparazione che nessuno ha pagato per dipingere. È sempre quello che finisco per guardare.",
		"In mezzo a tutto quel vetro colorato della cattedrale, un riquadro è trasparente, rattoppato dopo chissà quale crepa. Attraverso quello la città sembra esattamente se stessa.",
		"Una finestra della cattedrale è stata riparata con vetro trasparente e mai dipinta. I sacerdoti la chiamano una riparazione provvisoria. È provvisoria da più tempo di quanto il reggente sia reggente.",
	},
	["sw.muse.w19.nave.007"] = {
		"Le panche della cattedrale sono fatte apposta per non farti dormire. Quercia dura, schienale dritto: la Luce pretende attenzione.",
		"Chi ha intagliato le panche di quella cattedrale voleva preghiere brevi e nessuno che si appisolasse.",
		"Quercia dura e schienale dritto. Quella panca della cattedrale ha sentito più lamentele dalla mia schiena che preghiere dalla mia bocca.",
	},
	["sw.muse.w19.nave.008"] = {
		"si siede in fondo a una delle ultime panche, dove il mormorio della navata si richiude sul rumore della strada come l'acqua sopra un sasso.",
		"resta un poco {g:seduto|seduta} nell'ultima fila di panche, le mani abbandonate in grembo, mentre lontano, in fondo, un sacerdote volta una pagina.",
	},
	["sw.muse.w19.nave.009"] = {
		"Sul pavimento della cattedrale c'è un sentiero consumato dalle porte all'altare, di una tonalità più chiara del resto. Nessuno l'ha tracciato. L'hanno fatto i piedi.",
		"Lungo il centro della navata le lastre sono un po' più lucide, levigate da tutti quelli che sono andati dritti fino in fondo a chiedere qualcosa.",
		"I piedi hanno tracciato una linea sul pavimento della cattedrale, dalla porta all'altare. Gli scalpellini hanno costruito la sala; i fedeli ne hanno disegnato la mappa.",
	},
	["sw.muse.w19.nave.010"] = {
		"Le candele nei candelabri alti della cattedrale si accendono con un'asta d'ottone lunga come una barca. L'accolito che la regge ha le braccia più ferme di Stormwind e il collo più indolenzito.",
		"Qualcuno deve pur accendere le candele in alto, nella cattedrale. C'è un'asta apposta, più alta di tre uomini, e un accolito che evidentemente ha perso tutte le discussioni su a chi tocchi.",
	},
	["sw.muse.w19.nave.011"] = {
		"Cera, pietra vecchia e lana umida. Ecco che odore ha la Luce, se lo chiedi alla cattedrale.",
		"Quando esco dalla cattedrale il suo odore viene via con me: cera di candela e pietra fresca. Dura più o meno due strade.",
	},
	["sw.muse.w19.nave.012"] = {
		"Quando siedo nella cattedrale non chiedo molto alla Luce. Per lo più la lascio guardarmi come sono, polvere compresa, e mi basta.",
		"I sacerdoti dicono che la Luce ascolta ovunque. Sotto quelle volte mi riesce più facile crederci, e non me ne vergogno.",
		"Sotto quel tetto non ho bisogno di capire la Luce per esserne {g:accolto|accolta}. Mi siedo, e qualcosa di più grande della città si siede con me.",
	},
	["sw.muse.w19.nave.013"] = {
		"Dentro la cattedrale nessuno grida un prezzo. Le candele vicino alla porta costano quello che hai, e l'accolito non guarda quanto fosse.",
		"L'unica bancarella della cattedrale è un vassoio di candele accanto alla porta, e chi lo tiene guarda altrove mentre paghi. A Stormwind non c'è un'altra bottega così.",
	},
	["sw.muse.w19.nave.014"] = {
		"si volta al rumore di un paladino che attraversa la navata in armatura completa, ogni passo restituito due volte dalle arcate in alto.",
		"ascolta un paio di stivali corazzati attraversare il pavimento della cattedrale, con l'eco che corre davanti a loro verso l'altare.",
	},
	["sw.muse.w19.nave.015"] = {
		"Dalla strada la cattedrale sembra grande. Da dentro sembra più grande ancora, e non dovrebbe essere possibile. Un accolito mi ha detto che lo dicono tutti, e gli scalpellini ridevano e basta.",
		"In qualche modo la cattedrale è più grande dentro che fuori. Non è vero, naturalmente. Ma varchi le porte e gli occhi si rifiutano di credere ai conti.",
		"La cattedrale bara sulle sue misure. Dai gradini è un grande edificio; dal centro della navata è un piccolo cielo fatto di pietra.",
	},
	["sw.muse.w19.nave.016"] = {
		"L'elmo, nella cattedrale, si toglie. Non per la Luce: per tutti gli altri. Un elmo che cade lì dentro sembra un carro che rotola giù per le scale.",
		"Togliti l'elmo prima di entrare là. Fallo cadere su quel pavimento e la navata intera te lo racconterà per una settimana.",
		"L'elmo si toglie sulla porta della cattedrale. Non è devozione: è acustica.",
	},
	["sw.muse.w19.noble.001"] = {
		"Il servitore di un nobile cammina due passi indietro e porta tutto: i pacchi, il mantello e le opinioni del padrone, che è pagato per reggere senza rovesciarle.",
		"Dietro ogni signore per strada, un servitore con le braccia piene e la faccia vuota. La faccia è la parte più difficile del mestiere.",
		"I servitori delle grandi case tengono una loro corte giù in cucina, dicono le chiacchiere, ed è meglio informata di quella al piano di sopra.",
	},
	["sw.muse.w19.noble.002"] = {
		"si scosta per una nobildonna il cui orlo non tocca mai la strada; una cameriera la segue tenendolo sollevato dal selciato con tutte e due le mani.",
		"cede il passo a una dama in pesante broccato e alla ragazza che la segue, che porta lo strascico sopra ogni canaletto di scolo come un sacerdote porterebbe una reliquia.",
	},
	["sw.muse.w19.noble.003"] = {
		"L'assemblea dei nobili può passare una stagione intera a limare una sola legge. Le guardie sul ponte la fanno rispettare in tre parole.",
		"Le leggi escono dall'assemblea dei nobili lunghe, ornate e in ritardo, e arrivano in strada come una guardia che dice «non lì, amico».",
	},
	["sw.muse.w19.noble.004"] = {
		"Certe casate nobili hanno perso ogni erede nelle guerre e si sono tenute il titolo lo stesso. Un nome senza nessuno sotto, lucidato ogni settimana da servitori che ricordano le facce.",
		"Ci sono belle case in questa città dove lo stemma sopra la porta è sopravvissuto a tutti quelli che ne avevano diritto. I servitori lo spolverano ancora.",
	},
	["sw.muse.w19.noble.005"] = {
		"Un nobile ha appena ringraziato una guardia. La guardia è rimasta così sorpresa che ho temuto sbagliasse il saluto.",
		"Quel signore ha appena detto «per favore» a un facchino? Qualcuno segni la data.",
	},
	["sw.muse.w19.noble.006"] = {
		"Ho sentito tre persone descrivere Lady Prestor, e ne sono uscite tre donne diverse. Solo il sorriso era sempre lo stesso.",
		"Chiedi di Lady Prestor e ti diranno che è alta, o minuta, o splendida, o comune. Nessuno la dimentica. Eppure nessuno sembra riuscire a ricordarla davvero.",
	},
	["sw.muse.w19.noble.007"] = {
		"Ogni volta che in taverna salta fuori il nome di Lady Prestor, qualcuno cambia discorso. Nessuno sa mai dire perché.",
		"Di' «Prestor» in una stanza affollata e guarda come si sfolla un po'.",
	},
	["sw.muse.w19.noble.008"] = {
		"nota due uomini ben vestiti abbassare la voce quando un terzo nomina la consigliera del reggente, e allontanarsi lasciando il discorso a metà.",
		"passa accanto a un capannello di cortigiani proprio mentre uno dice «Lady Prestor», e sente il resto della frase sparire inghiottito.",
	},
	["sw.muse.w19.noble.009"] = {
		"Uno di quegli anelli sulla mano di un nobile sfamerebbe una strada per una stagione. Lui ne porta quattro.",
		"Sulle dita di un solo cortigiano c'è più oro che in un intero villaggio del Westfall, e non si sporca mai.",
	},
	["sw.muse.w19.noble.010"] = {
		"getta un'occhiata a una vetrina proprio mentre un giovane signore prova un inchino nel vetro scuro, poi un secondo, più profondo, prima di correre via verso la fortezza.",
		"sorprende un ragazzo ben vestito a esercitarsi in un inchino di corte davanti al proprio riflesso in una finestra, accigliarsi per il risultato e riprovarlo più in basso.",
	},
	["sw.muse.w19.noble.011"] = {
		"I giardini dei nobili stanno dietro mura alte. Sai che ci sono solo perché le rose si sporgono oltre il bordo a guardare chi passa.",
		"Dietro quelle alte mura di giardino ci sono fontane che nessun popolano ha mai visto. L'edera ci butta un occhio; a chi passa resta solo l'odore dell'erba tagliata.",
	},
	["sw.muse.w19.noble.012"] = {
		"Nomi vecchi, pietra nuova. Metà delle case nobili di questa città sono più giovani dei rancori che ci abitano.",
		"Le case le hanno ricostruite; le faide di famiglia sono tornate dal nord intatte. La pietra si rimpiazza più facilmente di un rancore.",
		"Ogni casa nella parte nobile della città è stata tirata su dopo l'incendio, e ogni famiglia che ci abita parla come se non se ne fosse mai andata.",
	},
	["sw.muse.w19.noble.013"] = {
		"I nobili di Stormwind contano gli antenati come i mercanti contano la merce, e tutti e due ne tengono da parte qualcuno che preferiscono non mostrare.",
		"Ogni famiglia nobile ha una galleria di ritratti e almeno una faccia girata verso il muro. Quale, chiedilo a un servitore. Alla famiglia mai.",
	},
	["sw.muse.w19.noble.014"] = {
		"Ogni nobile a corte ha un'opinione ferma sulla guerra, e ciascuno la tiene da una distanza molto comoda.",
		"I discorsi di guerra più feroci che ho sentito in questa città venivano da un uomo in ciabatte di seta che non si era mai spinto oltre Goldshire.",
	},
	["sw.muse.w19.noble.015"] = {
		"osserva il figlio di un nobile con un berretto di velluto fissare pieno di desiderio i ragazzini di strada che giocano vicino a un rigagnolo, finché una governante non lo spinge avanti per una spalla.",
		"vede un bambino vestito di fino attardarsi dietro il precettore per guardare una partita agli aliossi sul selciato, come se fosse un paese straniero.",
	},
	["sw.muse.w19.noble.016"] = {
		"Qui ogni nobile trova un motivo per stare un po' più vicino al trono del nobile accanto. Alla fine di un'udienza tutta la folla è avanzata di un passo.",
		"Guarda i nobili durante un'udienza: nessuno si muove, eppure la prima fila, chissà come, è più vicina al trono di prima.",
	},
	["sw.muse.w19.noble.017"] = {
		"Un cortigiano lo senti prima di vederlo. Acqua di rose, soprattutto, e un po' di paura del reggente.",
		"Lavanda, acqua di rose e soldi. Sta per girare l'angolo un nobile.",
	},
	["sw.muse.w19.oven.001"] = {
		"Un fornaio mi ha detto che ogni forno della città incide il suo segno nella pasta prima di infornarla: una croce, una scaletta, tre tagli corti. A Stormwind il pane esce firmato.",
		"Tre tagli corti su una pagnotta, una croce sulla seguente, una scaletta sulla terza. I fornai firmano il lavoro col coltello, dicono, perché nessuno spacci la crosta di un rivale per la propria.",
	},
	["sw.muse.w19.oven.002"] = {
		"fa posto a un garzone di fornaio con un'asse di pagnotte in equilibrio su una spalla, che grida 'largo, largo' a nessuno in particolare e a tutti quanti.",
		"si scosta per un ragazzo che porta un'asse di pane fresco all'altezza della testa e la guida fra la gente con la calma di un barcaiolo dei canali.",
		"cede il passo a un garzoncello con un vassoio di panini in testa, una mano alzata a tenerlo fermo, e riceve un cenno di grazie spolverato di briciole.",
	},
	["sw.muse.w19.oven.003"] = {
		"Non tutte le case di Stormwind hanno un forno degno di questo nome. La gente porta l'impasto dal fornaio sotto un panno, paga un rame per un posto vicino al suo fuoco e torna più tardi a riprenderlo, caldo.",
		"Metà delle pagnotte nel forno di un fornaio non sono sue. I vicini gli portano l'impasto in ciotole coperte, pagano una moneta per il calore e ritirano il pane al rintocco successivo.",
	},
	["sw.muse.w19.oven.004"] = {
		"I pasticci di questa città sono abbastanza caldi da bruciarti la lingua e abbastanza economici da fartene comprare un secondo per finire il lavoro.",
		"Mi sono {g:bruciato|bruciata} la lingua con un pasticcio, e quindi, ovvio, ne ho comprato un altro. È così che Stormwind ti frega.",
		"Regola dei pasticci di Stormwind: aspetta che si raffreddi, smetti di aspettare, scottati lo stesso.",
	},
	["sw.muse.w19.oven.005"] = {
		"Il prezzo della pagnotta è scritto col gesso su una lavagnetta accanto alla porta del forno. È stato cancellato e riscritto più alto così tante volte che in quel punto la lavagna si è consumata fino a sbiancare.",
		"Le lavagnette dei fornai, in città, hanno tutte lo stesso fantasma: un vecchio prezzo cancellato che si intravede ancora sotto quello nuovo. Il grano di Westfall non arriva più come una volta.",
		"Il pane costa più di prima. Nessuno lo dice ad alta voce. Comprano la pagnotta piccola e, uscendo, guardano quella grande.",
	},
	["sw.muse.w19.oven.006"] = {
		"Spezza una crosta in qualunque punto di questa città e nel giro di un minuto arriva un piccione, col portamento di un esattore e più o meno le stesse maniere.",
		"I piccioni di Stormwind sentono il rumore del pane strappato da tre vie di distanza. Non chiedono. Si presentano e basta.",
		"In questa città nessuno mangia il pane da solo. C'è sempre un piccione sul gradino accanto, che aspetta con la pazienza di un creditore.",
	},
	["sw.muse.w19.oven.007"] = {
		"Qualcuno qui vicino ha bruciato un'intera infornata. L'odore ha già girato ogni angolo, e da qualche parte un fornaio sta spiegando all'apprendista che era voluto.",
		"Pane bruciato, a due passi. Tutto il quartiere sente l'odore dello sbaglio; la ramanzina, invece, la sentirà un apprendista soltanto.",
		"Questo è l'odore di un'infornata rovinata e di una predica lunghissima, tutte e due in corso a una via o due da qui.",
	},
	["sw.muse.w19.oven.008"] = {
		"C'è una pentola di stufato, nel Trade District, che non sembra mai vuotarsi né avere due volte lo stesso sapore. Chiedi al cuoco cosa ci mette e risponde 'quello che costava poco', che almeno è onesto.",
		"Una bettola tiene un paiolo sul fuoco dal primo rintocco all'ultimo e ci butta dentro quello che il mercato non ha venduto. Lo stufato non ha un nome. Non gliene serve uno.",
	},
	["sw.muse.w19.oven.009"] = {
		"Mezza pagnotta, uno spicchio di formaggio e un muro a cui appoggiarsi. Chi dice che Stormwind è cara non sa fare la spesa.",
		"Un tozzo di pane e una mela di Elwynn: il miglior pasto della città, ed è costato meno del laccio che ho rotto.",
		"Pane, formaggio, una panca fuori dal passaggio dei carri. I re mangiano peggio, e con più gente che li guarda.",
	},
	["sw.muse.w19.oven.010"] = {
		"posa il palmo su un muro tiepido al tatto: dall'altra parte della pietra lavora un forno.",
		"si appoggia un momento a un tratto di muro intiepidito dal forno che ci sta dietro, come se la città tenesse un focolare fra le costole.",
	},
	["sw.muse.w19.oven.011"] = {
		"Un nano al banco di un forno ha chiesto del pane 'con dentro qualcosa'. Il fornaio gli ha proposto l'uvetta. Ci è voluto un po' per chiarire che lui intendeva la birra.",
		"Sentita in un forno: un nano che chiede se le pagnotte 'hanno dentro qualcosa', e un fornaio che piano piano capisce che la risposta giusta non è l'uvetta.",
	},
	["sw.muse.w19.oven.012"] = {
		"Chiedi a un fornaio dai capelli grigi quando si sono spenti l'ultima volta i forni di questa città, e ti dirà l'anno in cui è bruciata, nient'altro. Un fornaio misura un disastro in pagnotte non sfornate.",
		"C'è un detto tra i fornai, mi ha raccontato un apprendista: finché a Stormwind resta acceso un forno, la città non è caduta. È uno scherzo solo per metà. L'altra metà non la dicono.",
	},
	["sw.muse.w19.oven.013"] = {
		"passa davanti a un forno con le imposte ancora abbassate e la porta puntellata aperta per far uscire il calore; nella penombra, un avambraccio infarinato lavora l'impasto.",
		"rallenta accanto alla porta socchiusa di un forno, nel freddo del primo mattino, dove qualcuno che non si vede sbatte la pasta sul tagliere con un ritmo regolare e assonnato.",
		"passa accanto a un forno la cui porta aperta rovescia nella via fredda una folata di calore e di lievito e, da qualche parte là dentro, uno sbadiglio.",
	},
	["sw.muse.w19.oven.014"] = {
		"Quasi tutta la città dorme. Da qualche parte un fornaio ha già le braccia nella pasta fino ai gomiti, e domani comincerà da quella sola cucina accesa.",
		"I fornai hanno orari tutti loro. Impastano mentre gli ultimi bevitori cercano ancora la strada di casa, e quando qualcuno mangerà quello che hanno fatto, loro dormiranno già.",
	},
	["sw.muse.w19.oven.015"] = {
		"Senti? Cannella, qui vicino. Qualcuno in questa città se la passa meglio di me.",
		"Qualcuno, qui intorno, sta infornando col miele. Non ho fame. Vado a dare un'occhiata lo stesso.",
	},
	["sw.muse.w19.oven.016"] = {
		"Quell'odore mi ha {g:seguito|seguita} per tre vie. E va bene, mi arrendo. Qualcuno mi venda quel pasticcio.",
		"Sono {g:passato|passata} due volte davanti a quel forno facendo finta di niente. Lui se n'è accorto.",
	},
	["sw.muse.w19.park.001"] = {
		"osserva un giardiniere ammucchiare col rastrello le foglie cadute, fare un passo indietro per ammirare il mucchio e poi guardare un bambino passarci dritto in mezzo.",
		"si sofferma mentre un giardiniere, appoggiato al rastrello, contempla un mucchio di foglie intorno a cui due ragazzini girano già come lupi.",
	},
	["sw.muse.w19.park.002"] = {
		"I giardinieri tracciano i viali del Park; la città cammina dove le pare. La discussione si legge nell'erba: una riga spelacchiata e dritta da un capo all'altro, che taglia ogni curva aggraziata.",
		"Qualcuno ha disegnato per il Park dei bei sentieri tortuosi. Qualcun altro, di fretta, ha consumato una striscia marrone dritta attraverso il prato. Il secondo ha più seguaci.",
		"Ogni prato del Park ha un sentiero che nessuno ha progettato. La città vota con gli stivali.",
	},
	["sw.muse.w19.park.003"] = {
		"Le coppie nel Park camminano più piano di chiunque altro a Stormwind. È l'unico posto della città dove non intralciare nessuno è proprio lo scopo.",
		"Il Park, a quanto pare, è dove questa città manda i suoi innamorati: a due a due, a braccetto, a un passo che nel Trade District li farebbe travolgere.",
	},
	["sw.muse.w19.park.004"] = {
		"Il Park ha i suoi habitué che vengono da soli e intendono restarlo: un uomo che legge sempre lo stesso libretto, una donna che parla a un albero in particolare, un vecchio soldato con la schiena contro un tronco e gli occhi sul sentiero.",
		"C'è chi va al Park per stare in compagnia. Altri ci vanno perché è l'unico posto di Stormwind dove sedersi da soli non sembra una disgrazia.",
		"Non tutti, nel Park, sono in pace. Qualcuno ci viene a sedersi accanto a ciò che non riesce a portarsi per strada, e lo posa su una panchina per un'ora.",
	},
	["sw.muse.w19.park.005"] = {
		"Gli umani tengono un piccolo bosco in una scatola di pietra e lo chiamano parco. Lo fanno con buone intenzioni, e gli alberi, credo, li hanno perdonati.",
		"I nostri druidi curano questi alberi per cortesia, e gli umani ci ringraziano come se fosse un dono. Forse lo è. Un albero in città ha bisogno di un amico più di uno nel bosco.",
	},
	["sw.muse.w19.park.006"] = {
		"si fa da parte mentre una palla di stracci arriva rimbalzando sull'erba, inseguita da quattro bambini e da un cane piccolissimo e molto determinato.",
		"ferma col fianco dello stivale una palla che rotola, per puro riflesso, e si ritrova davanti cinque facce piccole sul prato in attesa di vedere cosa succede adesso.",
	},
	["sw.muse.w19.park.007"] = {
		"La pietra non cambia con le stagioni. Il Park sì, ed è così che l'intera città tiene il conto: dal colore di qualche decina di alberi fra le mura.",
		"In qualunque altro punto di Stormwind, per sapere in che stagione sei, dovresti chiederlo a un fornaio. Nel Park te lo dicono gli alberi, senza bisogno di domandare.",
	},
	["sw.muse.w19.park.008"] = {
		"Il Park profuma d'erba tagliata e di corteccia umida, che in una città di fumo di forgia e acqua di canale è quasi un lusso.",
		"Corteccia, muschio, terra smossa. Dopo tanto catrame, carbone e cucina degli altri, il Park sa di finestra aperta in una stanza chiusa.",
	},
	["sw.muse.w19.park.009"] = {
		"Bisognerebbe far pagare l'ingresso al Park. Anzi no, zitti. Qualcuno lo farebbe.",
		"Alberi, erba, silenzio, e tutto gratis. Non ditelo ai nobili: troverebbero il modo di metterci una tassa.",
		"La cosa migliore di Stormwind è il Park, e non vende niente.",
	},
	["sw.muse.w19.park.010"] = {
		"Piano, adesso. Qualcuno dorme sotto quell'albero, e da come sono ridotti i suoi stivali se l'è guadagnato.",
		"Lasciatelo dormire. Chi riesce a fare un pisolino su radici come quelle ha camminato più di quasi chiunque.",
	},
	["sw.muse.w19.park.011"] = {
		"All'imbrunire il Park si svuota dai margini verso il centro. Prima se ne vanno le coppie, poi i bambini richiamati per la cena, e per ultimi i vecchi sulle panchine in fondo, che non hanno nessun posto dove dover andare.",
		"Il crepuscolo nel Park: i giardinieri si caricano in spalla i rastrelli, i sentieri diventano blu, e una vecchia resta sulla sua panchina come se volesse essere l'ultima cosa che la luce lascia andare.",
	},
	["sw.muse.w19.park.012"] = {
		"segue un sentiero più addentro nel Park mentre la nebbia si infittisce, e gli alberi diventano pallidi, poi sbiaditi, poi nient'altro che un odore di corteccia ai lati del cammino.",
		"indugia su un vialetto del Park dove la nebbia ha inghiottito entrambe le estremità, lasciando una panchina, un albero e una lanterna accesa senza niente da illuminare.",
	},
	["sw.muse.w19.park.013"] = {
		"La pioggia nel Park non suona come quella sui tetti. È più morbida, una folla intera che bisbiglia tra le foglie, e i sentieri sanno di terra invece che di pietra.",
		"Sotto i grandi alberi del Park la pioggia arriva tardi, una goccia qua e una là, molto dopo aver inzuppato le strade.",
	},
	["sw.muse.w19.park.014"] = {
		"Qualcuno ha legato un nastro intorno a uno degli alberi del Park, ormai quasi bianco. Nessuno lo scioglie. I giardinieri potano tutt'intorno, con attenzione, come se potesse sentire.",
		"Nel Park c'è un albero con una striscia di stoffa annodata intorno al tronco, da cui il colore se n'è andato da tempo. Di chi l'ha legata non si è saputo più niente. L'albero l'ha tenuta lo stesso.",
	},
	["sw.muse.w19.park.015"] = {
		"I passeri del Park riconoscono a venti passi il rumore di un fagotto di cibo che si apre. Prima che lo spago sia sciolto, si è già riunito un comitato.",
		"Scarta anche solo una crosta di pane nel Park e i passeri arrivano di gran fretta, avvicinandosi a saltelli e fingendo ogni volta di passare di lì per caso.",
		"Ogni uccello del Park è un mendicante dalle maniere impeccabili. Non chiedono mai: si mettono vicino e hanno l'aria ragionevole.",
	},
	["sw.muse.w19.park.016"] = {
		"passa accanto a una giovane coppia sull'erba che finge di leggere un libro in due, e nessuno dei due gira pagina da un pezzo.",
		"nota due persone sotto un albero sedute a un palmo di distanza ben misurato, entrambe intente a studiare le foglie con enorme interesse.",
	},
	["sw.muse.w19.patrol.001"] = {
		"Una pattuglia che attraversa un ponte rompe sempre il passo. Le guardie dicono che è una vecchia regola da soldati: se marci a tempo abbastanza a lungo su un arco di pietra, la pietra comincia a canticchiare con te.",
		"A metà del ponte la pattuglia perde il passo apposta, e gli stivali tornano a una camminata qualunque. Una vecchia abitudine, mi ha detto un sergente: mai lasciare che un ponte impari il tuo ritmo.",
		"Osserva una pattuglia su un ponte qualunque: il passo si rompe alla prima pietra dell'arco e si ricompone all'ultima. Nessuno dà l'ordine; gli stivali lo sanno da soli.",
	},
	["sw.muse.w19.patrol.002"] = {
		"guarda una pattuglia ripescare dal canale un cappello alla deriva con il calcio di un'alabarda e appenderlo, gocciolante, al gancio di un lampione per chi l'ha perso.",
		"si ferma a vedere una guardia di ronda sporgersi sull'acqua, agganciare un cappello alla deriva con la punta dell'alabarda e posarlo su una ringhiera, per poi riprendere il giro senza voltarsi.",
	},
	["sw.muse.w19.patrol.003"] = {
		"si fa da parte al passaggio di un piccolo funerale e vede la pattuglia fermarsi, raddrizzare le alabarde e aspettare a capo chino che sia passato l'ultimo di chi piange.",
		"nota due guardie di ronda inchiodarsi davanti a una bara portata giù per la strada, tacchi uniti, e riprendere il passo solo quando ha girato l'angolo.",
		"sosta mentre una pattuglia incrocia un funerale su un ponte e gli cede il passo, le guardie schiacciate contro il parapetto con le alabarde dritte come ceri.",
	},
	["sw.muse.w19.patrol.004"] = {
		"I dadi spariscono nelle maniche, il carro all'angolo si ricorda di colpo una commissione, una dozzina di persone scopre una vetrina. Da qualche parte alle mie spalle, una pattuglia ha svoltato nella via.",
		"Quando una pattuglia svolta in una via, la via si mette in ordine da sola: carte via, voci basse, un carro spostato dall'angolo dove i carri non dovrebbero stare.",
		"Una pattuglia gira l'angolo e tutto il vicolo si ricompone la faccia: la voce troppo alta si abbassa, il barile fuori posto ritrova il suo muro, e il cane di qualcuno si ritrova di colpo al guinzaglio.",
	},
	["sw.muse.w19.patrol.005"] = {
		"In Stormwind le notizie corrono più in fretta lungo le pattuglie. Due si incrociano a un angolo, si scambiano tre parole e ripartono, e al cambio successivo chiunque vesta di blu sa quale ponte ha una pietra smossa.",
		"Le pattuglie si incontrano agli angoli come formiche su un sentiero: una sosta, una parola, via. Qualunque cosa si siano passate, l'altro capo della città la saprà prima dei banditori.",
		"Una pattuglia del Trade District ne incontra una dell'Old Town su un ponte, e in tre parole la descrizione di un anello rubato ha già attraversato la città.",
	},
	["sw.muse.w19.patrol.006"] = {
		"si scosta per lasciar passare una pattuglia di due guardie affiancate, e nota che qualcun altro tra la folla si scosta un po' più in fretta, e un po' più lontano.",
		"fa spazio a una pattuglia di passaggio e vede, con la coda dell'occhio, una figura magra su una soglia farne molto di più, fin dietro l'angolo.",
	},
	["sw.muse.w19.patrol.007"] = {
		"Qualcuno dovrebbe dire a quella pattuglia che lo stivale sinistro cigola. Ogni ladro della via li sente arrivare da tre angoli di distanza.",
		"Bella lucidatura, quegli stivali. Peccato il cigolio. State annunciando il vostro arrivo a tutto il quartiere.",
	},
	["sw.muse.w19.patrol.008"] = {
		"segue con lo sguardo una pattuglia che fa il giro sotto la pioggia esattamente al passo che tiene col tempo asciutto, i mantelli scuriti, l'acqua che cola dalle tese degli elmi.",
		"resta sotto una gronda mentre due guardie passano nella pioggia senza affrettarsi, come se la fretta fosse una cosa che la guardia cittadina ha scartato molto tempo fa.",
		"indugia sotto un portone mentre una pattuglia passa nell'acquazzone, e una delle guardie inclina l'elmo in avanti perché l'acqua coli davanti invece che giù per il collo.",
	},
	["sw.muse.w19.patrol.009"] = {
		"vede una guardia del giro notturno fermarsi davanti a un lampione spento sul ponte, riaccenderlo con l'acciarino della cintura e restare lì un momento a controllare che la fiamma tenga.",
		"accompagna con gli occhi una guardia che, durante la ronda di notte, si ferma a ridare vita a un lume spento, riparando la fiammella con una mano guantata.",
	},
	["sw.muse.w19.patrol.010"] = {
		"Le pattuglie qui mettono insieme una guardia anziana e una giovane. L'anziana parla con la strada; la giovane guarda i tetti, le finestre, le mani. Nessuna delle due sembra sapere di essere la metà furba.",
		"Prendi una pattuglia qualunque: una parla, l'altra guarda. Quella che parla ha sempre le tempie grigie, e quella che guarda non dice una parola per tutto il giro.",
	},
	["sw.muse.w19.patrol.011"] = {
		"C'è una donna che ogni giorno fa il giro di una pattuglia, qualche passo indietro, senza mai parlare. Una volta quel giro lo faceva suo marito, dicono le guardie. Agli angoli rallentano un poco, perché lei possa stare al passo.",
		"La vedova di una guardia segue ogni giorno lo stesso giro che faceva il marito, poco dietro la pattuglia. Nessuno le ha mai chiesto di smettere. Ai ponti la aspettano.",
		"Nessuno di quella pattuglia dice mai alla vedova di tornare a casa. Quando lei si ferma alla fine del giro, si fermano anche loro, e aspettano che torni indietro da sola.",
	},
	["sw.muse.w19.patrol.012"] = {
		"Stesso giro dell'altra volta? Bene. Mi dispiacerebbe se questa città cominciasse a sorprendermi.",
		"Sempre voi due. O la città è piccolissima, o camminate molto in fretta.",
		"Non badate a me, ammiro solo lo schieramento. Molto dritto. Molto blu.",
	},
	["sw.muse.w19.patrol.013"] = {
		"Gli occhi della pattuglia mi passano sopra, si fermano, ripartono. Non so quale delle tre cose mi resterà in testa per un bel pezzo.",
		"Ogni pattuglia che passa è una moneta lanciata in aria. Finora è sempre caduta dalla parte in cui tirano dritto.",
		"Cammina come se fossi di casa. Niente fretta, niente soste, niente occhiate alle alabarde. La pattuglia è a tre passi, ed è addestrata a notare proprio quello che sto cercando di non fare.",
	},
	["sw.muse.w19.patrol.014"] = {
		"Qui nel Park le pattuglie restano rigorosamente sui vialetti. Gli elfi della notte gliel'hanno chiesto una volta, mi ha detto una guardia, con molta cortesia, e nessuno nella guardia cittadina vuole sentirselo chiedere una seconda.",
		"Le guardie del giro del Park non mettono mai piede sull'erba. C'entra una parola sommessa degli elfi che se ne prendono cura, e lo sguardo che l'accompagnava.",
	},
	["sw.muse.w19.patrol.015"] = {
		"Un re può sparire sulla strada di un trattato di pace e una corte perdere la testa su chi comanda, e le pattuglie fanno comunque il loro giro. L'ordine, in questa città, non si tiene nella fortezza. Si tiene a piedi, un angolo dopo l'altro.",
		"Il re è scomparso, ma i giri si fanno. Se Stormwind regge, regge all'altezza della strada, negli stivali.",
		"Nemmeno le guardie di ronda sanno dove sia il re. Continuano solo a camminare, come se qualcuno dovesse pur farlo.",
	},
	["sw.muse.w19.patrol.016"] = {
		"Andate dalla mia parte? Bene. Cammino da questo lato e ho l'aria estremamente rispettosa della legge.",
		"Vi spiace se vi vengo dietro per una via o due? Vicino a una pattuglia nessuno dà fastidio a nessuno.",
	},
	["sw.muse.w19.petition.001"] = {
		"Chi va a supplicare ripassa la parte salendo verso la fortezza: labbra che si muovono, mani che disegnano piccole forme nell'aria. Arrivati ai gradini, quasi tutti hanno tagliato il discorso a metà.",
		"Chi porta una supplica si riconosce perché cammina e borbotta insieme, limando un discorso che dimenticherà appena si apriranno le porte.",
		"Quasi tutte le suppliche si compongono salendo alla fortezza. Quasi tutte si correggono tornando giù.",
	},
	["sw.muse.w19.petition.002"] = {
		"osserva un contadino che sale verso la fortezza girando e rigirando il cappello fra le mani, con la tesa ormai consumata e morbida a forza di farlo.",
		"nota un uomo con la giacca buona che aspetta vicino alla fortezza, tormentando la tesa di un cappello che evidentemente c'è già passato.",
	},
	["sw.muse.w19.petition.003"] = {
		"Gli scrivani che raccolgono le suppliche scrivono in fretta e alzano poco gli occhi. I guai di un villaggio intero diventano tre righe e un numero.",
		"Uno scrivano sa trasformare il lungo racconto di una vedova in una sola riga d'inchiostro e asciugarla col tampone prima che lei abbia finito. Efficiente. Terribile, ma efficiente.",
	},
	["sw.muse.w19.petition.004"] = {
		"Vuoi qualcosa dalla fortezza? Portalo per iscritto, portalo due volte, e porta pazienza in abbondanza.",
		"Il segreto di una buona supplica: una calligrafia chiara, un foglio corto e moltissime ore di panca.",
		"Suppliche? Corte. Dicono che il reggente le legga tutte, e prima o poi anche il reggente deve dormire.",
	},
	["sw.muse.w19.petition.005"] = {
		"C'è uno scrivano che si piazza vicino alla fortezza e scrive suppliche per chi non sa farlo. Per un rame in più le fa sembrare arrabbiate; per due, umili.",
		"Lo scrivano pubblico sulla strada della fortezza vende tre toni di voce: rispettoso, disperato e offeso. Il disperato costa di più, e va a ruba.",
	},
	["sw.muse.w19.petition.006"] = {
		"vede un vecchio scendere dalla fortezza con un foglio piegato e sigillato, e fermarsi a rileggerlo a ogni svolta della scala.",
		"osserva un'anziana uscire dalla fortezza stringendo al cappotto una lettera sigillata, camminando con grande attenzione, come se potesse traboccare.",
	},
	["sw.muse.w19.petition.007"] = {
		"Una supplica è uno strano atto di fiducia: metti per iscritto il tuo guaio peggiore, lo consegni a degli sconosciuti, e credi che salirà fino al trono.",
		"Ogni supplica comincia da qualcosa di piccolo, una fattoria, un mulino, un fienile bruciato, e arriva in capitale portata dalla speranza che un ragazzo e un cavaliere stanco la leggano.",
	},
	["sw.muse.w19.petition.008"] = {
		"Nessuno supplica davvero il ragazzo. Supplicano il reggente attraverso il nome del ragazzo, e lui siede lì e sente ogni parola.",
		"Le suppliche sono tutte indirizzate al re, e tutte evase dal reggente. In mezzo siede un bambino che sente entrambe le metà.",
	},
	["sw.muse.w19.petition.009"] = {
		"Guarda la coda per un'udienza. Metà dei guai del regno, in fila, che spostano il peso da un piede all'altro.",
		"La fila per vedere il reggente è più lunga di quella della banca. E nessuno, lì in mezzo, ci guadagna qualcosa.",
	},
	["sw.muse.w19.petition.010"] = {
		"La fortezza risponde alle suppliche a infornate, dicono gli scrivani, come un fornaio che tira fuori le pagnotte. Alcune escono crude, e qualcuna bruciata.",
		"Una supplica entra, e qualche settimana dopo esce una risposta, calda e timbrata. Fuori dalla fortezza nessuno sa che cosa succeda nel forno.",
	},
	["sw.muse.w19.petition.011"] = {
		"I postulanti che vengono dalla campagna arrivano tutti col vestito buono, e il vestito buono è sempre della taglia sbagliata: prestato da un fratello, o messo l'ultima volta a un matrimonio.",
		"Giacche della festa e scarpe da matrimonio sulla strada della fortezza. La gente si veste bene per chiedere aiuto, come se i guai si potessero rendere presentabili.",
	},
	["sw.muse.w19.petition.012"] = {
		"aspetta al margine della sala mentre il nome di un postulante viene letto ad alta voce, storpiato, e corretto dal fondo con una vocina ostinata.",
		"sente un araldo inciampare sul nome di un contadino, e il contadino ripeterlo, chiaro, l'unica cosa ad alta voce che fa in tutta l'udienza.",
	},
	["sw.muse.w19.petition.013"] = {
		"Le suppliche che interessano a Lady Prestor si muovono in fretta, sussurrano gli scrivani. Quelle davanti a cui aggrotta la fronte si fermano del tutto. Nessuno ha mai visto una ragione scritta.",
		"Le richieste che passano dal tavolo di Lady Prestor tornano molto cortesi e molto vuote, dicono i copisti, come se all'inchiostro stesso fosse stato ordinato di comportarsi bene.",
	},
	["sw.muse.w19.petition.014"] = {
		"Il Westfall manda una supplica ogni settimana, dicono gli scrivani, e ogni settimana finisce nello stesso armadio alto. L'armadio è quasi pieno.",
		"Nella fortezza c'è un cassetto con dentro soltanto suppliche dal Westfall. Qualcuno lo aprirà, ogni tanto. Qualcuno lo richiuderà.",
	},
	["sw.muse.w19.petition.015"] = {
		"nota che all'alba i primi postulanti sono già sui gradini della fortezza, prima che si apra qualsiasi porta, seduti su giacche piegate per difendersi dal freddo della pietra.",
		"vede un pugno di gente di campagna che aspetta vicino alla fortezza nel grigio dell'alba, dividendosi una pagnotta, con le carte infilate dentro la camicia.",
	},
	["sw.muse.w19.petition.016"] = {
		"La fortezza consuma tanta ceralacca che da qualche parte nell'Elwynn dev'esserci un'ape convinta di lavorare per la corona.",
		"Cera rossa, nastro azzurro, un sigillo col leone: le risposte della fortezza arrivano vestite meglio di quasi tutti quelli che le ricevono.",
	},
	["sw.muse.w19.post.001"] = {
		"A Stormwind i corrieri non camminano mai. Uno mi è passato accanto al piccolo trotto, con la borsa che gli sbatteva sul fianco, leggendo di corsa l'indirizzo successivo, e non ha sfiorato nessuno. Io avrei travolto quattro persone.",
		"Un garzone dei corrieri taglia la folla di corsa, la borsa che sobbalza, gli occhi sulla lettera che ha in mano. Nessuno gli fa strada, e non ce n'è bisogno.",
	},
	["sw.muse.w19.post.002"] = {
		"nota una donna lì vicino che legge una lettera, ride ad alta voce, si guarda intorno imbarazzata e poi la rilegge da capo.",
		"passa accanto a un nano fermo immobile in mezzo alla folla con una lettera fra le mani, la gente che gli si apre intorno come l'acqua intorno a un palo, le labbra che si muovono mentre legge.",
		"vede un giovane piegare una lettera piccolissima, infilarsela sotto la camicia e andarsene con una mano premuta lì sopra.",
	},
	["sw.muse.w19.post.003"] = {
		"Quasi tutte le lettere arrivano per corriere. Le peggiori le porta un soldato con i guanti puliti, e tutta la via tace mentre lui cerca la porta giusta.",
		"Le lettere che contano si riconoscono da chi le porta. Un ragazzino con la borsa vuol dire notizie. Un ufficiale con un plico sigillato e l'elmo sotto il braccio vuol dire l'altro genere.",
	},
	["sw.muse.w19.post.004"] = {
		"Continuo a ripromettermi di scrivere qualche lettera. Poi arrivo alla cassetta della posta e mi ricordo che la parte difficile era scriverle.",
		"Una lettera richiederebbe cinque minuti. È da più tempo di certe guerre che sto 'per scriverla'.",
		"Quella lettera la scriverò domani. Domani ha un sacco di lettere che lo aspettano.",
	},
	["sw.muse.w19.post.005"] = {
		"Ci sono scrivani, in questa città, che scrivono lettere per chi non sa farlo. Ne ho visto uno annotare le frasi lente e attente di un contadino e rileggergliele due volte, finché lui non ha fatto di sì con la testa.",
		"Per due monete di rame a pagina uno scrivano pubblico ti scrive qualunque cosa tu debba spedire: una proposta, una lamentela, delle scuse. Ascolta gli affari di tutta la città e ha l'aria di non averne sentito nemmeno uno.",
		"Gli scrivani pubblici, ai loro tavolini pieghevoli, sanno di Stormwind più di qualsiasi spia. Solo che si fanno pagare meno, e se lo tengono per sé.",
	},
	["sw.muse.w19.post.006"] = {
		"si ferma davanti a una bacheca affollata, dove i fogli nuovi sono inchiodati sopra i vecchi così fitti che la bacheca è diventata un libro che nessuno può aprire.",
		"legge il bordo di un avviso mezzo sepolto sotto altri tre più recenti: un cane smarrito, una stanza in affitto e qualcosa su una ricompensa, strappato proprio sulla parola più interessante.",
	},
	["sw.muse.w19.post.007"] = {
		"I corrieri dicono che arrivano ancora lettere indirizzate a città di Lordaeron che non esistono più. Nessuno ha il cuore di bruciarle. Da qualche parte c'è un sacco che si fa sempre più pesante.",
		"Qualcuno a Stormwind scrive ancora ogni mese a una zia di Andorhal, mi ha raccontato un corriere, e ogni mese la lettera torna indietro. Lui ha smesso di spiegare il perché.",
	},
	["sw.muse.w19.post.008"] = {
		"Quando la cassetta della posta non ha niente per me, o nessuno mi deve niente o nessuno sa dove sono. Mi va bene in tutti e due i casi.",
		"Una cassetta vuota è sottovalutata. È pace e silenzio, consegnati a domicilio.",
		"Niente lettere vuol dire niente conti. Scelgo di vedere il lato positivo.",
	},
	["sw.muse.w19.post.009"] = {
		"Ho visto un nano spedire una forma intera di formaggio a qualcuno di Ironforge. La cassetta della posta l'ha presa senza storie. Ho smesso di chiedermi come funzioni la posta e ho cominciato a invidiarla.",
		"Una volta, davanti a me, qualcuno ha spedito un'armatura completa, pezzo per pezzo, con la calma di chi imbuca una lettera d'amore. La cassetta ha inghiottito tutto. Vorrei assumere quello che ci vive dentro per farmi portare lo zaino.",
	},
	["sw.muse.w19.post.010"] = {
		"Qualcuno davanti a me ha lasciato cadere una lettera che profumava di lavanda. Gliel'ho resa, e abbiamo fatto finta tutti e due che non me ne fossi {g:accorto|accorta}.",
		"Dalla manica di uno sconosciuto è scivolata una lettera profumata. Restituirla ha richiesto un secondo e moltissimo tatto.",
	},
	["sw.muse.w19.post.011"] = {
		"Ho visto entrare nella cassetta una lettera con scritto 'URGENTE' tre volte. Le cose davvero urgenti non c'è mai bisogno di dirle due volte.",
		"Tre 'urgente' sulla stessa busta. Chi l'ha scritta non ha mai conosciuto un corriere.",
	},
	["sw.muse.w19.post.012"] = {
		"Le lettere dei soldati, mi ha detto un corriere, dicono tutte le stesse tre cose con calligrafie diverse: ancora vivo, stanchissimo, mandate calze.",
		"Dal fronte arrivano lettere brevi. 'Vivo. Freddo. Rancio pessimo. Mandate calze.' Le famiglie di Stormwind le leggono lo stesso come se fossero poesie.",
		"Ogni lettera che arriva dalla guerra viene letta finché le pieghe non si consumano. Di solito non dice quasi niente, ed è proprio quel niente che una famiglia vuole.",
	},
	["sw.muse.w19.post.013"] = {
		"guarda un corriere curvo sulla borsa sotto la pioggia, come una chioccia sulle uova: prima le lettere, lui molto dopo.",
		"scorge un messaggero che corre da un portone all'altro sotto l'acquazzone, con la borsa stretta sotto il cappotto e la testa lasciata in balia del tempo.",
	},
	["sw.muse.w19.post.014"] = {
		"Metà della posta di questa città, mi ha giurato uno scrivano, va da una via a quella accanto. Stormwind preferisce pagare un corriere che bussare alla porta del vicino.",
		"Qui la gente scrive lettere a persone a cui potrebbe gridare dalla finestra. Non è pigrizia, mi ha detto uno scrivano. È che una lettera non si può interrompere.",
		"Due case una di fronte all'altra, separate da un vicolo, e un corriere che fa la spola tutto il giorno. A Stormwind anche i litigi viaggiano per posta.",
	},
	["sw.muse.w19.post.015"] = {
		"Una volta ho visto uno gnomo allungarsi in punta di piedi verso la fessura di una cassetta della posta, non arrivarci, andare a prendere una cassa, salirci sopra e imbucare la lettera con enorme dignità. Nessuno ha applaudito. Qualcuno avrebbe dovuto.",
		"Una gnoma ha fatto due saltelli davanti alla fessura di una cassetta della posta, poi ha porto la lettera a una guardia di passaggio, che l'ha imbucata per lei senza una parola. Tutta la scena aveva la solennità di un trattato fra regni.",
	},
	["sw.muse.w19.post.016"] = {
		"Se qualcuno ha bisogno di me, mi scriva. Io sarò introvabile, ma la lettera in qualche modo ce la farà.",
		"Mandatemi due righe se succede qualcosa. La posta mi trova sempre, cosa che non posso dire dei miei piedi.",
	},
	["sw.muse.w19.quarrel.001"] = {
		"Su un ponte stretto passa prima il carico più pesante. È la regola delle guardie, e la ripetono ogni volta che due carri si incontrano a metà, a due carrettieri convinti ognuno che il proprio sia il più pesante.",
		"Due carrettieri muso a muso su un ponte, e ognuno giura che il suo carico è più pesante. La guardia che arriva chiede a entrambi cosa trasportano, e quello con le ceste vuote fa marcia indietro senza aggiungere una parola.",
	},
	["sw.muse.w19.quarrel.002"] = {
		"osserva una guardia arrivare a una gara di urla fra due nani, ascoltare un momento e decidere, con saggezza, di andare a mettersi da un'altra parte finché non si mettono a ridere.",
		"vede due nani sbraitarsi addosso sopra un'incudine finché uno dà all'altro una gran pacca sulla spalla e chiede una birra, mentre una guardia lì vicino, che non si è mai mossa, allenta la presa sull'alabarda.",
	},
	["sw.muse.w19.quarrel.003"] = {
		"Due uomini urlavano per un debito davanti alla banca. Poi sono entrati insieme, sempre urlando, e sono usciti insieme, sempre urlando, ma ormai d'altro. Ecco una lite risolta alla maniera di Stormwind.",
		"Una lite per debiti, in questa città, di rado finisce a botte. Finisce allo sportello della banca, con tutti e due che fulminano con lo sguardo l'impiegato invece di guardarsi in faccia.",
		"Qui le liti di soldi finiscono davanti a un impiegato. L'impiegato non si schiera mai; incassa.",
	},
	["sw.muse.w19.quarrel.004"] = {
		"indugia mentre un sacerdote e un venditore ambulante discutono, con grande cortesia da entrambe le parti, su quale sia l'ultimo gradino della cattedrale a contare come terra consacrata.",
		"si ferma ad ascoltare un giovane sacerdote spiegare a un ambulante, con molta dolcezza e per la terza volta, che i gradini non sono fatti per vendere, mentre l'ambulante spiega, con altrettanta dolcezza, che lui ci sta soltanto in piedi.",
	},
	["sw.muse.w19.quarrel.005"] = {
		"Due uomini al tavolo accanto discutono dei Defias: banditi, dice uno; gente a cui hanno fatto un torto, dice l'altro. Nessuno dei due è mai stato nel Westfall. Il contadino in fondo alla panca, che c'è stato, tiene gli occhi sulla scodella.",
		"In questa sala tutti hanno un'opinione sui Defias. Le più rumorose sono di chi non ha mai perso un fienile. Le più silenziose, di chi l'ha perso.",
		"Al bancone qualcuno chiama i Defias assassini, qualcun altro li chiama scalpellini, e l'uomo del Westfall nell'angolo dice, piano, che erano tutte e due le cose, e chiede il conto.",
	},
	["sw.muse.w19.quarrel.006"] = {
		"assiste a una guardia che ascolta una lite in tre lingue insieme, annuendo gravemente a ciascuno a turno come se capisse una parola, e poi indica a uno l'est e all'altro l'ovest.",
		"coglie una guardia che sente le ragioni di un nano, di uno gnomo e di un umano che si parlano sopra, con la faccia di una solennità perfetta, prima di spedirli in tre direzioni diverse.",
	},
	["sw.muse.w19.quarrel.007"] = {
		"Non guardate me. Non ho visto niente, e l'ho visto benissimo.",
		"Non faccio da testimone. Passavo di qui e basta. C'è una differenza, e ci tengo.",
		"Urlate un po' più forte, tutti e due. La guardia sul ponte accanto non vi ha ancora sentito bene.",
	},
	["sw.muse.w19.quarrel.008"] = {
		"Due casate nobili non si parlano da un po', così a litigare ci pensa la servitù: gomitate dal pescivendolo, un cesto finito nel canale, occhiatacce molto educate.",
		"Quando i nobili di Stormwind litigano, nessuno sfodera l'acciaio. I loro cuochi smettono solo di cedersi il passo al mercato.",
		"Due famiglie nobili sono ai ferri corti, e il pescivendolo lo sa prima di chiunque a corte: i valletti hanno cominciato a spintonarsi in fila.",
	},
	["sw.muse.w19.quarrel.009"] = {
		"Due bevitori sono quasi venuti alle mani per stabilire se il reggente debba governare il regno o no. La guardia che li ha separati aveva una sola opinione: non nella sua strada.",
		"La politica, a Stormwind, è una lite su Bolvar e sul re bambino che le guardie sedano senza mai prendere posizione. Una mi ha detto che la sua posizione sono i ciottoli.",
		"Chiedi in una taverna chi dovrebbe tenere il trono e avrai una lite. Chiedilo alla guardia sulla porta e avrai un'occhiata che dice: il trono è affare d'altri, la taverna è affar suo.",
	},
	["sw.muse.w19.quarrel.010"] = {
		"guarda un vecchio calzolaio infilarsi nel battibecco fra due apprendisti, dire sottovoce una parola che nessun altro sente, e lasciarli tutti e due a chiedere scusa al selciato.",
		"nota una vecchia curva sedare la lite fra due facchini enormi con un dito alzato e basta, più in fretta di quanto qualunque guardia sarebbe arrivata.",
	},
	["sw.muse.w19.quarrel.011"] = {
		"Qui dentro una lite si stava scaldando per bene, finché un uomo al bancone, senza divisa, si è semplicemente alzato in piedi. Nessuno lo conosceva. Si sono seduti tutti.",
		"Due teste calde vicino al focolare stavano per dire qualcosa di cui pentirsi, quando un bevitore tranquillo ha posato il boccale e si è stirato. Il modo in cui stava in piedi diceva guardia, e le due teste calde si sono ricordate le buone maniere.",
	},
	["sw.muse.w19.quarrel.012"] = {
		"Nelle vie eleganti si litiga sottovoce, dietro le persiane. Nell'Old Town si litiga a squarciagola in mezzo al vicolo. Per quanto ne capisco, la lite è la stessa: soldi, quasi sempre, e chi ha detto cosa alla sorella di chi.",
		"L'Old Town i suoi rancori li grida, le vie dei nobili li mormorano. Gli argomenti non cambiano con l'indirizzo.",
	},
	["sw.muse.w19.quarrel.013"] = {
		"Un nano e un elfo della notte litigavano vicino alla fontana su quale dei loro popoli mantenga meglio la parola. Hanno alzato tutti e due la voce; nessuno dei due ha messo mano a niente. Ecco la nostra Alleanza nei giorni buoni: chiassosa, maleducata, e dalla stessa parte.",
		"Gli alleati litigano. Ho visto uno gnomo e un umano sbranarsi per un contratto andato a monte, finché una guardia non si è stufata di loro, e ho pensato: bene. I nemici non si prendono il disturbo di discutere.",
	},
	["sw.muse.w19.quarrel.014"] = {
		"Qualunque cosa sia, non vale lo Stockade. Niente vale lo Stockade.",
		"Abbassate la voce, gente. Mezza guardia cittadina vi sente già, e l'altra metà sta arrivando.",
		"Continuate a urlare e finirete tutti e due a spiegarvi con un sergente. Ad ascoltare è peggio di me.",
	},
	["sw.muse.w19.quarrel.015"] = {
		"Permesso, passo. Continuate pure, stavate andando benissimo tutti e due.",
		"Non fermatevi per me. Sto solo sgusciando oltre la discussione.",
	},
	["sw.muse.w19.rampart.001"] = {
		"nota un ciuffo d'erba che spunta da una giuntura in alto nelle mura, verde e testardo, ben fuori portata di chi viene pagato per strapparlo.",
		"scorge un fiorellino giallo aggrappato a una crepa a metà delle mura, l'unica cosa di Stormwind che ci sia mai salita senza scala.",
		"individua un rametto verde che ha messo radici nella malta in alto sulle mura: l'unica cosa in disordine su tutta la parete.",
	},
	["sw.muse.w19.rampart.002"] = {
		"Nei buchi quadrati in alto sulle mura, dove un tempo poggiavano le travi delle impalcature, fanno il nido i rondoni. I costruttori se ne sono andati, gli uccelli sono entrati, e nessuno chiede loro l'affitto.",
		"I buchi lasciati nelle mura dalle impalcature adesso hanno degli inquilini: uccelletti scuri che entrano ed escono come sassolini lanciati.",
	},
	["sw.muse.w19.rampart.003"] = {
		"Ho chiesto a una guardia se potevo fare il giro in cima alle mura. Dalla faccia che ha fatto, pareva gli avessi chiesto in prestito la pensione.",
		"Niente visitatori sui bastioni, a quanto pare. Peccato. La vista migliore della città, sprecata per gente pagata per guardarla.",
		"Sui bastioni un gatto qualsiasi va e viene come gli pare, e io no. Mi hanno {g:offeso|offesa} con cose peggiori, ma non di recente.",
	},
	["sw.muse.w19.rampart.004"] = {
		"Chiama qualcuno vicino alle grandi mura e loro rispondono un attimo dopo, con una voce un po' più profonda della tua. I bambini di qui ci passano pomeriggi interi a litigarci.",
		"Le mura vicino alla porta tengono l'eco come un vecchio cane tiene un osso. Batti le mani una volta e loro rispondono, più lente, come se ci dovessero pensare.",
	},
	["sw.muse.w19.rampart.005"] = {
		"Cammina ai piedi delle grandi mura e da un lato la città si zittisce. Una pietra così spessa inghiotte parecchio: carri, litigi, perfino un po' le campane.",
		"Lungo il lato interno delle mura corre una striscia di quiete larga un passo o due, dove il rumore delle strade sembra perdere interesse. Continuo a ritrovarmici.",
		"Lungo la faccia interna delle mura la strada è sempre un po' più in penombra e un po' più calma, come se la pietra tenesse per sé una parte del silenzio.",
	},
	["sw.muse.w19.rampart.006"] = {
		"resta sotto un'imbracatura di corde appesa alle mura, dove un operaio gratta via la malta vecchia un dito per volta e ne preme dentro di nuova.",
		"alza lo sguardo verso un ponteggio di assi che cala cigolando lungo la parete su due funi, con dentro un operaio che fischietta e batte le pietre come per sentire quale suona male.",
		"nota della malta fresca, ancora chiara, in una toppa irregolare in alto sulle mura, come una medicazione sul fianco della città.",
	},
	["sw.muse.w19.rampart.007"] = {
		"Ogni torre delle mura nasconde una scala a chiocciola. Le guardie di servizio lassù si riconoscono: a fine turno scendono camminando come se la strada pendesse.",
		"Chi è di guardia sulle torri si guadagna la paga due volte, una a guardare e una a salire. In taverna lo riconosci da come si cala sulla panca.",
	},
	["sw.muse.w19.rampart.008"] = {
		"Tutte quelle mura e nemmeno un contrappeso, un ingranaggio, una campana d'allarme collegata a qualcosa. Gli umani hanno impilato sassi altissimi e si sono fidati. Audace. Antiquato, ma audace.",
		"Ho stimato a occhio una pietra delle mura e per poco non sono {g:caduto|caduta} facendo i conti. Rampe e funi, nient'altro. Nemmeno un argano a motore. Sono {g:combattuto|combattuta} tra orrore e ammirazione.",
	},
	["sw.muse.w19.rampart.009"] = {
		"Uno scrivano, giurano le guardie, una volta provò a contare le pietre delle mura esterne. Arrivò alla seconda torre e chiese il trasferimento.",
		"Qualcuno ha provato a contare le pietre di quelle mura, dicono le guardie. Ha perso il conto alla porta, ha ricominciato, e da allora non è più lui.",
		"Contare le pietre di quelle mura? Preferisco contare le battute delle guardie. Sono di meno, e si ripetono.",
	},
	["sw.muse.w19.rampart.010"] = {
		"segue con lo sguardo la linea delle grandi mura verso l'alto, blocco dopo blocco, finché il collo protesta e gli occhi tornano in strada.",
		"allunga il collo per vedere la cima delle mura, la perde contro il cielo e la ritrova un po' più in là di dove se l'aspettava.",
	},
	["sw.muse.w19.rampart.011"] = {
		"Ogni muro è una frase in due metà: qui dentro, là fuori. Stormwind ha scritto la sua con lettere alte tre piani, e Westfall la legge dalla parte sbagliata.",
		"Un muro decide chi sta dentro prima che qualcuno debba dirlo ad alta voce. Queste mura lo decidono con molta fermezza, e con molta educazione, con una guardia a ogni porta.",
	},
	["sw.muse.w19.rampart.012"] = {
		"segue una lanterna che avanza lenta in cima alle mura buie, si ferma, si abbassa una volta e riparte: la ronda della notte che fa il suo giro.",
		"distingue in alto una sola lanterna che ondeggia sulla linea nera delle mura, una sentinella che fa il giro mentre la città, sotto, va a dormire.",
	},
	["sw.muse.w19.rampart.013"] = {
		"Torri enormi sulle mura, e le porte per entrarci larghe appena quanto una guardia col suo pranzo. Facili da difendere, immagino. Difficili da attraversare con un letto.",
		"Le porte delle torri delle mura sono strette e basse, incassate a fondo, rinforzate col ferro. Qualcuno ha messo in conto una brutta giornata, sperando che non arrivasse mai.",
		"Ogni porta di torre che ho visto in questa città è più stretta della gente per cui l'hanno costruita. Difesa, dicono le guardie. Dispetto, dice chiunque ci abbia fatto passare una cassa.",
	},
	["sw.muse.w19.rampart.014"] = {
		"Qualunque cosa vada storta nel regno, le mura sono ancora su. Come conforto è poca cosa, e me lo prendo ogni volta che ci passo sotto.",
		"Gli umani queste mura le hanno costruite due volte. Certi giorni pare testardaggine, certi giorni la cosa migliore che abbiamo.",
	},
	["sw.muse.w19.rampart.015"] = {
		"Ho visto castelli interi con meno mura di quante questa città ne tenga di scorta.",
		"Quello non è un muro. È una montagna che qualcuno ha squadrato e a cui ha messo una porta.",
	},
	["sw.muse.w19.rebuild.001"] = {
		"La ricostruzione seguì un ordine, dicono i vecchi costruttori: prima le mura, poi la cattedrale, poi la fortezza, poi tutti gli altri. Si capisce ancora chi è arrivato per ultimo da quanto ne discute.",
		"Mura, cattedrale, fortezza, case: così, a sentire i costruttori, Stormwind si è rialzata. Chi ha avuto la casa per ultimo non ha mai perdonato del tutto quell'ordine.",
	},
	["sw.muse.w19.rebuild.002"] = {
		"Quando gli esuli rientrarono dal nord non restava niente a cui tornare, a parte i confini delle proprietà, e ciascuno ricordava i suoi un po' più larghi. Un cancelliere mi ha detto che alcune di quelle liti sono ancora davanti ai magistrati.",
		"Le famiglie che rientravano trovarono cenere, paletti e cento vicini che ricordavano i confini in un altro modo. Alcune di quelle cause sono più vecchie delle mura nuove, dice lo scrivano di un magistrato, e ancora aperte.",
		"Ricostruire una città è soprattutto litigare, mi ha detto un vecchio agrimensore. La pietra è salita in pochi anni. Per gli steccati si combatte ancora.",
	},
	["sw.muse.w19.rebuild.003"] = {
		"nota il punto in cui il selciato di una strada cambia a metà passo, la spina di pesce che lascia il posto a file semplici, come se due squadre avessero costruito l'una verso l'altra senza mai rivolgersi la parola.",
		"attraversa una giuntura nella strada dove un disegno di ciottoli si interrompe di colpo e ne comincia un altro: una lite fra due squadre, ancora visibile sotto i piedi.",
	},
	["sw.muse.w19.rebuild.004"] = {
		"A Stormwind tutto è un secondo tentativo. Più saggio del primo, direi, e parecchio più caro.",
		"Questa è la bella copia. La prima Stormwind era la brutta, e gli orchi l'hanno strappata.",
		"Ponti, fontane, insegne: tutte seconde edizioni. La prima tiratura è andata a fuoco.",
	},
	["sw.muse.w19.rebuild.005"] = {
		"Una vecchia mi ha detto che la città ricostruita l'ha disegnata gente che aveva abitato nella prima, così le porte stanno dove le mani se le aspettavano, anche se le strade no.",
		"Chi ha ricostruito Stormwind aveva la città di prima nelle gambe, dice un'anziana: hanno messo i gradini dove i piedi andavano a cercarli. Inciampano solo i forestieri.",
	},
	["sw.muse.w19.rebuild.006"] = {
		"I vecchi taglialegna di Elwynn dicono che le travi della nuova Stormwind sono uscite dalla loro foresta, e che si trovano ancora le radure larghe da cui colline intere di querce partirono per la città sui carri trainati dai buoi.",
		"Da qualche parte in Elwynn ci sono ceppi larghi come tavoli, mi ha detto un carrettiere, lasciati dalla ricostruzione. Metà delle travi di questa città è cresciuta lì.",
	},
	["sw.muse.w19.rebuild.007"] = {
		"Strade larghe, nella città nuova, perché un esercito possa passarci. Le guardie non dicono mai in che direzione.",
		"Stavolta le strade le hanno fatte larghe abbastanza per i soldati. E per i carri, la folla e ogni parata che venga in mente ai nobili.",
		"Strade abbastanza larghe per una colonna di soldati. Qualcuno si ricordava di quelle strette, e di cosa ci era rimasto incastrato.",
	},
	["sw.muse.w19.rebuild.008"] = {
		"studia un muro in cui i corsi più bassi hanno preso il giallo dei denti vecchi e quelli sopra sono ancora chiari, con una linea dritta di traverso come il segno lasciato da una piena.",
		"percorre con lo sguardo un muro costruito in due stagioni, pietra più scura in basso e più fresca in alto, con la giuntura fra le due che corre in piano da un angolo all'altro.",
	},
	["sw.muse.w19.rebuild.009"] = {
		"I nani del Dwarven District ti diranno, senza che tu lo chieda, che gli umani non avrebbero mai ricostruito Stormwind senza un aiuto nanico. Gli scalpellini umani, quando ce n'erano da interrogare, la raccontavano al contrario.",
		"Chiedi a un fabbro nanico della ricostruzione e sentirai parlare di ogni arco che un nano abbia mai posato in questa città. Chiedigli quanti archi, e il numero cresce con la birra.",
	},
	["sw.muse.w19.rebuild.010"] = {
		"La ricostruzione è durata anni lunghi. Alcuni di quelli che l'avevano cominciata erano vecchi alla fine, e qualcuno non vide mai una strada finita. L'hanno costruita per chi ci avrebbe camminato dopo. In questo momento quel qualcuno sono io, e il carrettiere che impreca alle mie spalle.",
		"Alcuni dei manovali che sgombrarono le prime macerie furono sepolti prima che si posasse l'ultimo tetto. Ogni strada finita di Stormwind è un dono di qualcuno che non l'ha mai percorsa.",
	},
	["sw.muse.w19.rebuild.011"] = {
		"I sacerdoti raccontano che le prime funzioni della città ricostruita si tennero qui all'aperto, fra pile di pietre, prima che ci fosse un tetto sotto cui raccogliersi. Certi devoti fra i più anziani preferiscono ancora i gradini ai banchi.",
		"Prima che la cattedrale riavesse le sue mura, dice un vecchio accolito, il clero custodiva la Luce in questa piazza sotto tele e cielo aperto. Ne parla come i soldati parlano di una bella campagna.",
	},
	["sw.muse.w19.rebuild.012"] = {
		"Gli scrivani dicono che i conti della ricostruzione riempiono tre volumi, nella fortezza. Il terzo è fatto soprattutto di pagine bianche e di scuse.",
		"Da qualche parte nella fortezza c'è un armadio di conti della ricostruzione che nessuno apre. Più sicuro così, mi ha detto uno scrivano. Per chiunque abbia un titolo.",
	},
	["sw.muse.w19.rebuild.013"] = {
		"guarda una squadra di riparazione scaricare pietra nuova alle prime luci, chiara come pasta di pane accanto al muro consumato che deve rattoppare.",
		"passa accanto a un carro di blocchi appena squadrati, all'alba, con le facce ancora lucide di scalpello, in attesa vicino a un vecchio muro diventato color tè.",
	},
	["sw.muse.w19.rebuild.014"] = {
		"Lordaeron è caduta per la piaga, e le mura ricostruite di Stormwind si sono ritrovate a reggere le speranze di più di un regno. Nessuno le aveva costruite per questo. Se la cavano.",
		"Questa città è stata alzata una seconda volta per la sua gente. Da quando il nord è caduto, ripara quella di tutti. La pietra buona non chiede per chi è.",
		"Gli scalpellini costruivano per un regno solo. Hanno finito per costruire per tutta l'Alleanza, e nessuno ha pensato di dirglielo. Mi piace pensare che ne sarebbero fieri, sotto il rancore.",
	},
	["sw.muse.w19.rebuild.015"] = {
		"Ogni pietra, qui, l'ha portata qualcuno che una casa l'aveva già persa una volta. È un tipo di testardaggine che rispetto.",
		"Chi ha costruito una città due volte non si spaventa facilmente. Tienilo a mente prima di attaccar briga da queste parti.",
	},
	["sw.muse.w19.rebuild.016"] = {
		"I costruttori nascondevano cose nei muri man mano che salivano, mi ha detto un intonacatore: una scarpa vecchia, un rame, un nastro arrotolato, per buona fortuna. Ogni volta che un muro viene giù per una riparazione, la ricostruzione manda alla città un bigliettino.",
		"Butta giù un pezzo d'intonaco in una vecchia casa di Stormwind, dicono gli intonacatori, e può saltar fuori uno stivale sfondato infilato nel muro da qualche costruttore per buona sorte. Lo rimettono a posto. Prenderlo non si fa.",
		"Un intonacatore giura di aver aperto un muro, una volta, e di averci trovato un cavallino di legno avvolto in uno straccio, messo lì durante la ricostruzione. Ha richiuso il muro. Certe lettere non sono indirizzate a te.",
	},
	["sw.muse.w19.regent.001"] = {
		"Bolvar Fordragon porta l'armatura anche al tavolo del consiglio, dicono le guardie, come se una battaglia vera potesse chiamarlo via da un momento all'altro. Come se ci sperasse.",
		"Si racconta che il reggente non si tolga mai la corazza, neppure per leggere le suppliche. Un paladino che si tiene pronto per l'unica battaglia a cui un trono non lo lascia andare.",
	},
	["sw.muse.w19.regent.002"] = {
		"I soldati lo chiamano Highlord e mai reggente. I nobili lo chiamano reggente e mai Highlord. Guarda quale parola usa uno e saprai da che parte sta.",
		"Un uomo, due titoli, e la città divisa a metà fra l'uno e l'altro: «Highlord» nelle caserme, «reggente» nelle belle case. Bolvar risponde a entrambi e non sorride a nessuno dei due.",
	},
	["sw.muse.w19.regent.003"] = {
		"Un reggente firma ogni ordine a nome di un altro. Nessuno scrive mai «grazie» a margine.",
		"Ogni foglio che Bolvar sigilla è la promessa di restituire un giorno tutto il regno, in buon ordine, a un uomo che nessuno riesce a trovare.",
		"Governare per conto di un altro dev'essere come portare in braccio il bambino di uno sconosciuto in mezzo alla calca: lo stringi più forte di qualunque cosa tua.",
	},
	["sw.muse.w19.regent.004"] = {
		"Al reggente le lamentele, al ragazzo gli applausi. Qualcuno l'ha studiata con grande cura, e dubito che sia stato Bolvar.",
		"Le cattive notizie scendono dalla fortezza a nome del reggente, le buone a nome del re. Un sistema ordinato, a meno che il reggente non sia tu.",
	},
	["sw.muse.w19.regent.005"] = {
		"Bolvar non si siede mai sul trono. Gli sta accanto, in piedi, per ogni ora di ogni udienza, e un regno intero ha imparato a leggerci qualcosa.",
		"C'è una sedia che nessuno offre al reggente, e lui la rifiuterebbe comunque. Resta in piedi accanto al ragazzo, e già lo stare in piedi è un messaggio.",
	},
	["sw.muse.w19.regent.006"] = {
		"Da quanto è lungo l'ultimo editto capisci come ha dormito il reggente. Quelli di questa settimana sono cortissimi.",
		"Editti brevi, nervi corti su alla fortezza. Quando si allungano, vuol dire che qualcuno ha riposato.",
	},
	["sw.muse.w19.regent.007"] = {
		"Un paladino dovrebbe andare dove sono i guai. Bolvar invece deve restare seduto e lasciare che i guai arrivino da lui per iscritto, foglio dopo foglio.",
		"Per un cavaliere votato alla Luce, una sala del consiglio dev'essere una cella con ottime maniere.",
	},
	["sw.muse.w19.regent.008"] = {
		"Highlord, reggente, tutore, consigliere. Fordragon ha più titoli che ore per usarli, e li spende tutti per il regno di un altro.",
		"In una sola strada ho sentito chiamare Fordragon in quattro modi diversi, e tutti volevano dire «quello che tiene insieme i pezzi».",
	},
	["sw.muse.w19.regent.009"] = {
		"I veterani dicono che Fordragon il grado se l'è guadagnato sul campo, non a una cena. Si vede da come lo salutano i soldati: come si deve, anche quando nessun ufficiale guarda.",
		"I vecchi soldati si raddrizzano quando si nomina il reggente. Qualunque cosa ne pensino i nobili, era uno di loro prima di essere il reggente di qualcuno.",
	},
	["sw.muse.w19.regent.010"] = {
		"Quando Varian tornerà, Bolvar restituirà il regno e se ne andrà a fare il soldato. Tutti dicono «quando». Il reggente lo dice più forte degli altri.",
		"Nella fortezza si dice sempre «quando il re tornerà», mai «se». Fordragon ci tiene, dicono gli scrivani, e corregge chiunque sbagli.",
		"Ogni banchetto nella fortezza finisce con un brindisi al ritorno del re. Il reggente lo beve in piedi, dicono i servitori, e non posa mai la coppa prima del tempo.",
	},
	["sw.muse.w19.regent.011"] = {
		"sente nominare il reggente due volte in pochi passi, una volta con rispetto e una con un sospiro, e sempre da gente stanca.",
		"coglie il nome «Fordragon» in tre conversazioni fra un angolo e l'altro: una lamentela, una benedizione, una scommessa.",
	},
	["sw.muse.w19.regent.012"] = {
		"C'è chi dice che il reggente dia troppo ascolto a Lady Prestor. Altri dicono che ascolta tutti, e che lei si assicura soltanto di parlare per ultima.",
		"Chi sta più vicino al reggente sta più vicino al regno, e ultimamente, dicono i pettegolezzi, è sempre la stessa figura aggraziata. La gente lo dice, poi si guarda intorno per vedere chi ha sentito.",
	},
	["sw.muse.w19.regent.013"] = {
		"Preferirei affrontare un ogre che fare il lavoro del reggente. Gli ogre, almeno, non presentano ricorsi.",
		"Mandare avanti un regno per un ragazzo e per un uomo disperso? Grazie, preferisco rischiare con i lupi.",
		"Rispondere a ogni contadino, ogni signore e ogni ambasciatore a nome di un altro. Piuttosto pulisco una stalla.",
	},
	["sw.muse.w19.regent.014"] = {
		"osserva il reggente chinarsi a dire qualcosa al ragazzo sul trono, e l'intera sala fingere di non guardare la stessa cosa.",
		"vede Bolvar Fordragon piegarsi verso il giovane re per mormorargli una parola, con l'armatura che scricchiola, mentre i cortigiani scoprono un interesse improvviso per i propri guanti.",
	},
	["sw.muse.w19.regent.015"] = {
		"Nessuno acclama un reggente. Se fa il suo lavoro alla perfezione, il meglio che può sperare è di essere dimenticato il giorno in cui il re rientrerà a cavallo.",
		"L'ora migliore di un reggente è quella in cui smette di servire. Bolvar ci lavora ogni giorno, ed è un'ambizione piuttosto solitaria.",
	},
	["sw.muse.w19.regent.016"] = {
		"Qualunque cosa dicano Ironforge e Darnassus, quando serve una risposta l'Alleanza si volta ancora verso questa fortezza, e adesso la risposta ha la voce di Bolvar.",
		"Quattro popoli nella nostra Alleanza, e nei momenti difficili tutti guardano a un reggente che quel compito non l'ha mai chiesto. Poteva andarci molto peggio.",
	},
	["sw.muse.w19.ripple.001"] = {
		"vede un ragazzino far rimbalzare un sasso piatto sul canale, tre salti e giù, e un barcaiolo di passaggio concedergli un serio cenno d'approvazione.",
		"segue con gli occhi un sasso che rimbalza sull'acqua, uno, due, tre, quattro, e i cerchi che si lascia dietro, finché non passa una barca a cancellare il punteggio.",
	},
	["sw.muse.w19.ripple.002"] = {
		"Le anatre dei canali sono i cittadini più sicuri di sé di tutta Stormwind. Attraversano dove gli pare, e le barche aspettano.",
		"Nessuna guardia, nessun nobile, nessun barcaiolo ha mai spiegato a un'anatra di canale dove andare. Non in un modo che lei abbia ascoltato.",
		"Le anatre dei canali hanno la città in mano: l'acqua quando vogliono, i gradini quando sono stanche, e un pubblico che lancia pane da ogni ponte.",
	},
	["sw.muse.w19.ripple.003"] = {
		"Un'anatra dei canali non paga tasse, non deve inchini a nessuno e il pane glielo tirano gratis. Ho sbagliato mestiere.",
		"Le anatre di Stormwind: niente affitto, niente tasse, e nessuno le fa alzare quando passa il reggente. Dove si firma?",
	},
	["sw.muse.w19.ripple.004"] = {
		"coglie il proprio viso in un tratto fermo del canale, e lo perde un attimo dopo per una sola foglia che cade.",
		"abbassa lo sguardo sul canale e ci trova il proprio riflesso che ricambia, un po' più verde e un po' più saggio, finché una barca di passaggio non lo manda in pezzi.",
		"si sporge sul canale quel tanto che basta a vederci un volto, e una nuvola di pesciolini schizza via dal riflesso come pensieri spaventati.",
	},
	["sw.muse.w19.ripple.005"] = {
		"Il fondo di un canale, qui, non lo vedi. Vedi la tua faccia, un palmo di verde, e poi niente che valga la pena di sapere.",
		"Limpidi come la minestra, questi canali. Non ci metterei la mano per una moneta d'oro. Per due, forse.",
	},
	["sw.muse.w19.ripple.006"] = {
		"nota dei cerchi che si allargano sull'acqua ferma, là dove un pesce è salito a prendere qualcosa e ci ha ripensato.",
		"segue un cerchio lento che si allarga sul canale da un punto qualunque, un pesce o un seme caduto, finché tocca il muro e si disfa.",
	},
	["sw.muse.w19.ripple.007"] = {
		"fa una pausa all'imbocco di un ponte, dove il canale getta la luce del giorno contro l'arcata e le pietre ne tremano come se fossero loro a muoversi.",
		"alza gli occhi sul ventre di un ponte, tutto bande di luce tremante rimandate dall'acqua, un soffitto che non vuole stare fermo.",
	},
	["sw.muse.w19.ripple.008"] = {
		"L'acqua dei canali cambia faccia più spesso di un cortigiano: vitrea, increspata, verde bottiglia, bruna quando le chiatte l'hanno rimestata, e una volta, per poco, quasi azzurra.",
		"Certi giorni i canali stanno piatti come un tavolo, certi giorni si agitano, e certi giorni sembra che stiano per dire qualcosa. Non lo fanno mai.",
	},
	["sw.muse.w19.ripple.009"] = {
		"Una barca passa e se ne va, e la sua scia continua a bussare ai muri a lungo, per tutto il canale. Certe persone sono così.",
		"Molto dopo che la barca ha girato l'angolo, la sua scia sta ancora arrivando ai gradini, piccola e paziente. Certi addii funzionano così.",
		"Una scia percorre tutto il canale solo per posarsi sull'ultimo gradino e fermarsi lì. Un gran viaggio per un arrivo minuscolo.",
	},
	["sw.muse.w19.ripple.010"] = {
		"osserva una foschia pallida sollevarsi dai canali all'alba, senza fretta, mentre le barche ormeggiate compaiono una dopo l'altra come se qualcuno le stesse scartando.",
		"sosta su una riva all'alba, dove l'acqua trattiene ancora un velo grigio sottile, e un'anatra sola ci traccia dentro una riga netta.",
	},
	["sw.muse.w19.ripple.011"] = {
		"nota una fila di piedi nudi penzolare sul bordo del canale: cinque bambini, dieci piedi, e solo il paio più piccolo che non arriva all'acqua, con grande indignazione del proprietario.",
		"passa accanto a una fila di bambini seduti sul muretto del canale, i talloni che tamburellano sulla pietra, ognuno a sfidare il vicino a mettere per primo un piede in acqua.",
	},
	["sw.muse.w19.ripple.012"] = {
		"L'acqua è l'unica cosa, in una città, che non obbedisce mai del tutto. La pietra fa quello che le hanno detto gli scalpellini. I canali fanno come gli pare, un dito qua e un dito là.",
		"Ogni muro di Stormwind sta dove l'hanno messo. Anche l'acqua l'hanno messa nei suoi canali, e da allora non ha mai smesso di saggiarne i bordi.",
	},
	["sw.muse.w19.ripple.013"] = {
		"Acqua di canale. Si muove appena, non ha mai fretta, eppure si infila dappertutto.",
		"Basta uno schizzo da una barca che passa e puzzi di canale per il resto della giornata. Meglio saperlo prima di sporgersi.",
		"I canali non schizzano da soli. Aspettano che lo faccia una barca per loro, mirando a chi porta il vestito buono.",
	},
	["sw.muse.w19.ripple.014"] = {
		"Noi umani costruiamo le città sull'acqua e poi passiamo secoli a litigarci. Stormwind, almeno, ha avuto il buon senso di tagliare prima la sua acqua in linee dritte.",
		"Le città degli uomini nascono sempre accanto all'acqua: un fiume, un lago, una baia. Stormwind l'acqua se l'è portata dentro e le ha insegnato a camminare in fila.",
	},
	["sw.muse.w19.ripple.015"] = {
		"segue il viaggio di un cappello che galleggia lungo il canale, col proprietario che trotterella sulla riva al suo passo, senza poter far altro che guardarlo andare.",
		"resta a guardare un cappello di paglia che scende il canale sereno, girando lentamente su se stesso, con mezza strada che corre lungo la riva urlandogli consigli.",
	},
	["sw.muse.w19.ripple.016"] = {
		"I bambini lasciano cadere sassolini dai ponti per scoprire quanto sono profondi i canali. La risposta è sempre «plop», che non dice niente e li soddisfa completamente.",
		"Ogni bambino di Stormwind ha lasciato cadere un sassolino da un ponte e si è sporto a vedere dov'era finito. Il canale si tiene il sasso e restituisce un cerchio, e a loro sembra uno scambio onesto.",
	},
	["sw.muse.w19.rivet.001"] = {
		"Un nano del Dwarven District fa soltanto chiodi, migliaia alla settimana, e ne parla come un gioielliere parla degli anelli. Ci credo che siano tutti perfetti.",
		"Qualcuno deve pur fare i chiodi. Nel Dwarven District è un nano testardo, convinto che un buon chiodo sopravviva alla casa, e sull'argomento si scalda parecchio.",
	},
	["sw.muse.w19.rivet.002"] = {
		"Il suono del Dwarven District non sono solo martelli. Ascolta sotto: il ticchettio leggero e rapido di qualcuno che ribatte i rivetti di una cotta di maglia, paziente come un orologio.",
		"Sotto le martellate grosse corre un suono più piccolo, tic, tic, tic, un armaiolo che chiude gli anelli di una cotta un rivetto per volta. Non ha mai fretta e non si ferma mai.",
		"Sotto le forge c'è un ritmo che ci vuole un po' a sentire: gli armaioli che ribattono la maglia, anello dopo anello, regolari come una ruota di mulino.",
	},
	["sw.muse.w19.rivet.003"] = {
		"sorprende un armaiolo nano a sollevare verso la lampada una corazza ammaccata, socchiudere gli occhi e posarla con l'aria di un cerusico che quel paziente l'ha già visto.",
		"indugia vicino al banco di un armaiolo mentre un nano passa il pollice lungo una cucitura spaccata nella maglia di qualcuno e schiocca la lingua, sentenza di un vecchio giudice.",
	},
	["sw.muse.w19.rivet.004"] = {
		"L'Alleanza è fatta soprattutto di rivetti, mi ha detto un fabbro: piccoli, brutti, e reggono tutto. Credo intendesse i nani e gli gnomi rimasti a lavorare a Stormwind.",
		"Un armaiolo mi ha detto che i trattati sono le piastre grandi, e a tenerle insieme sono i rivetti, cose piccole che nessuno guarda, come un nano rimasto a lavorare in una città di umani.",
		"I re firmano i trattati, ha detto un nano chino sul banco, e i fabbri li mantengono. Non ha alzato gli occhi, e non ha detto quali re.",
	},
	["sw.muse.w19.rivet.005"] = {
		"Quel nano ha guardato lo stato della mia roba e mi ha chiesto, con molta delicatezza, se avessi dei nemici o solo delle cattive abitudini.",
		"Ogni fabbro del Dwarven District controlla l'equipaggiamento allo stesso modo: una lunga occhiata, un lungo sospiro, poi il prezzo.",
		"Mostra a un nano una cinghia rotta e te la aggiusta. Mostragli come si è rotta e vorrà farti un discorsetto.",
	},
	["sw.muse.w19.rivet.006"] = {
		"Una volta qualcuno ha contato i rivetti delle vetture del tram, si è vantata con me una gnoma. Nessuno ha controllato il suo numero, e nessuno osa.",
		"Chiedi a uno gnomo quanti rivetti tengono insieme il tram e avrai un numero esatto, e un'occhiata che ti sfida a contarli.",
	},
	["sw.muse.w19.rivet.007"] = {
		"rallenta per guardare due nani che portano giù per la strada una lunga trave di ferro, scandendo i passi con un ritmo tutto loro, mentre la folla si apre intorno come l'acqua intorno a un tronco.",
		"si addossa a un muro mentre due nani passano con una sbarra di ferro in spalla, cantando un conteggio perché le due estremità non litighino.",
	},
	["sw.muse.w19.rivet.008"] = {
		"Metà delle serrature di Stormwind sono uscite dal Dwarven District. Qualcuna delle chiavi, sospetto, è uscita dalla porta sul retro.",
		"Le serrature della città le fanno quasi tutte i nani, e i nani hanno la memoria lunga. Nel Dwarven District c'è qualcuno che potrebbe aprire mezza Stormwind, ed è troppo orgoglioso per farlo.",
	},
	["sw.muse.w19.rivet.009"] = {
		"Ogni tanto dal Dwarven District arriva uno schiocco secco e lì nessuno sobbalza: un nano che prova una canna di fucile contro un sacco di sabbia. Sobbalzano solo i forestieri.",
		"Uno schiocco come di trave che si spacca, e uno sbuffo di fumo da una soglia. I nani intorno non alzano nemmeno gli occhi: qualcuno sta collaudando una canna, e il sacco di sabbia non si lamenta mai.",
	},
	["sw.muse.w19.rivet.010"] = {
		"Acciaio nanico addosso a un soldato umano, ingranaggi gnomeschi in una serratura umana. Dite quel che volete dell'Alleanza: è ben ribattuta.",
		"Mura umane, ferro nanico, marchingegni gnomeschi. L'Alleanza sta insieme come una buona armatura: tanti pezzetti, ognuno al suo posto.",
	},
	["sw.muse.w19.rivet.011"] = {
		"Dietro un laboratorio c'è un mechanostrider su tre zampe, in attesa di pezzi che arrivavano solo da Gnomeregan. Aspetta da parecchio. Il suo gnomo lo oliava ogni settimana, e lo olia ancora.",
		"In un cortile vicino alla strada principale del Dwarven District c'è un trampoliere gnomesco con una gamba in meno e un telo sulla testa, come un cavallo incappucciato. Il padrone dice che il pezzo sta arrivando. Sta arrivando da anni.",
	},
	["sw.muse.w19.rivet.012"] = {
		"Una gnoma del Dwarven District costruisce mani di ferro e ginocchia snodate per i soldati tornati dalla guerra. La sua bottega è molto silenziosa, e molto frequentata.",
		"Vicino alle forge c'è un laboratorio dove gli gnomi fanno dita di ferro snodate e sostegni per ginocchia che la guerra ha smontato. Nessuno, lì fuori, aspetta ridendo.",
	},
	["sw.muse.w19.rivet.013"] = {
		"nota un nano che ripara l'assale di un carretto in mezzo alla strada, col carro puntellato su una pila d'incudini, mentre il padrone umano gli ronza intorno e viene invitato, con garbo, ad andarsene.",
		"segue con un certo interesse una lite tra un nano e un umano su un assale rotto, l'umano a gesti e il nano a martellate, finché l'assale chiude la questione tenendo.",
	},
	["sw.muse.w19.rivet.014"] = {
		"La maglia nanica dura. Nel Dwarven District ci sono cotte più vecchie delle mura della città, ancora in servizio, passate da un padrone all'altro col prezzo che sale ogni volta.",
		"I fabbri del Dwarven District dicono che una buona cotta nanica sopravvive a tre padroni e a un drago. Sul drago scherzano. Probabilmente.",
		"Chi compra una maglia nanica la prende solo in prestito, amano dire gli armaioli. Starà sulle spalle di qualcun altro molto dopo che le tue avranno ceduto.",
	},
	["sw.muse.w19.rivet.015"] = {
		"Gli apprendisti nani passano il primo anno sui rivetti e su nient'altro, dicono gli armaioli. Diecimila, tutti uguali, prima che qualcuno li lasci avvicinare a una piastra.",
		"Le mani più giovani del Dwarven District siedono in fila a un banco lungo, a ribattere rivetti su ferraglia. Nessuno indosserà quel lavoro. Torna nella fornace, e loro ricominciano da capo.",
		"Una fila di apprendisti nani che picchiettano rivetti su ferro di scarto, un'ora dopo l'altra. Tutto torna a fondersi. Un fabbro mi ha detto che non è il ferro la cosa che stanno facendo.",
	},
	["sw.muse.w19.rough.001"] = {
		"Fra il Trade District e l'Old Town, a un certo punto, la vernice si fa più economica, le imposte più spesse e le guardie cominciano a girare in coppia.",
		"Si vede dove la città smette di lucidarsi: spariscono le fioriere, le porte perdono gli ottoni, e le pattuglie raddoppiano.",
	},
	["sw.muse.w19.rough.002"] = {
		"Nell'Old Town c'è una bottega che compra tutto e non chiede niente. In vetrina, uno stivale spaiato, un cucchiaio d'argento e un liuto senza corde, e la merce cambia ogni settimana.",
		"Una bottega stretta in un vicolo dell'Old Town: un guanto di pregio, un candeliere, una fede nuziale. Il padrone ti guarda come se stesse dando un prezzo al tuo mantello.",
	},
	["sw.muse.w19.rough.003"] = {
		"passa davanti a un omone appoggiato a uno stipite a braccia conserte, che non fa assolutamente niente con grande mestiere.",
		"nota due uomini grossi e silenziosi che reggono lo stipite di una porta, pagati, a giudicare dall'aria, per stare in mezzo.",
	},
	["sw.muse.w19.rough.004"] = {
		"Il lato spigoloso della città è pieno di braccia a noleggio tra un contratto e l'altro, sedute sugli scalini a rammendare cinghie, in attesa che a qualche capocarovana serva una faccia che metta paura.",
		"I mercenari dell'Old Town aspettano come i contadini aspettano il tempo buono: con pazienza, e pronti a maledire qualunque cosa arrivi.",
	},
	["sw.muse.w19.rough.005"] = {
		"Gli usurai dell'Old Town hanno i sorrisi più gentili della città. Il resto della faccia lo tengono negli interessi.",
		"Nel quartiere duro un prestito arriva con una stretta di mano e qualcuno che se la ricorda. La stretta è gratis; il ricordo lo paghi ogni settimana.",
		"Fatti prestare soldi nell'Old Town e la solitudine non sarà più un problema: qualcuno saprà sempre esattamente dove sei.",
	},
	["sw.muse.w19.rough.006"] = {
		"Nei vicoli più poveri una porta resta aperta per un vicino più spesso che altrove. Nell'Old Town nessuno ha granché, e chissà come tutti hanno una scodella in più.",
		"Strade dure, abitudini gentili: una pentola di zuppa passata sopra un muro, un bambino badato da chi è in casa, un debito dimenticato apposta.",
	},
	["sw.muse.w19.rough.007"] = {
		"La borsa davanti, gli occhi in alto e le opinioni per te. È tutta la mappa del lato duro della città.",
		"Bel quartiere. Gente squisita. All'uscita mi conterò le dita.",
		"Parte dura della città. Cammina come se la strada l'avessi pagata tu.",
	},
	["sw.muse.w19.rough.008"] = {
		"si ferma accanto a un arrotino che fa girare la mola a un angolo, le scintille che schizzano sui ciottoli e una fila di clienti silenziosi con in mano cose avvolte in un panno.",
		"osserva un arrotino che pigia il pedale all'imbocco di un vicolo, affilando una lama il cui proprietario resta ben indietro e non dice niente.",
	},
	["sw.muse.w19.rough.009"] = {
		"Certe stanze del quartiere duro si affittano a metà: un fornaio ci dorme metà del giro, un guardiano l'altra metà, e la coperta non fa in tempo a raffreddarsi.",
		"Due inquilini, un letto, mai svegli nella stessa stanza. Nell'Old Town non è un indovinello: è l'affitto.",
	},
	["sw.muse.w19.rough.010"] = {
		"In un retrobottega di un vicolo dell'Old Town va avanti una partita a carte da così tanto che i giocatori sono cambiati e il mazzo no.",
		"I bari dell'Old Town non barano, ti diranno. Conoscono le carte meglio di quanto le carte conoscano se stesse.",
	},
	["sw.muse.w19.rough.011"] = {
		"vede due uomini stringersi la mano un attimo più a lungo di quanto serva all'amicizia, e qualcosa di piccolo cambiare tasca fra loro.",
		"coglie la fine di una stretta di mano su una soglia, di quelle che lasciano un palmo un po' più pesante, e i due che se ne vanno in direzioni opposte.",
	},
	["sw.muse.w19.rough.012"] = {
		"Ogni città tiene un angolo per quello che preferirebbe non vedere. Quello di Stormwind è a un canale di distanza dalle case eleganti, il che deve offrire viste imbarazzanti.",
		"Il quartiere duro non sta affatto ai margini della città. Sta proprio nel mezzo, come un dente che fa male.",
	},
	["sw.muse.w19.rough.013"] = {
		"La nostra capitale ama farsi guardare dal portone, tutta bianca e azzurra. Io me ne fido di più dopo un giro nel suo lato spigoloso, dove smette di mettersi in posa.",
		"Per quanto questa città sia il nostro orgoglio, finisco per affezionarmi agli angoli rattoppati: un regno con le maniche rimboccate.",
	},
	["sw.muse.w19.rough.014"] = {
		"guarda una donna strofinare la sua soglia fino a farla bianca nel vicolo più sudicio del quartiere, poi fare un passo indietro, mani sui fianchi, sfidando la strada a sporcarla.",
		"nota un gradino immacolato in una fila di gradini lerci, e su di esso un vecchio seduto con una scopa di traverso sulle ginocchia, a fargli la guardia.",
	},
	["sw.muse.w19.rough.015"] = {
		"Le nocche del quartiere duro raccontano storie: una lettera su ciascuna, una minuscola àncora di qualche porto del nord, un cerchio d'inchiostro dove una volta c'era un anello vero.",
		"Metà delle mani dell'Old Town sono tatuate. Impari a non chiedere dei nomi: alcuni appartengono a gente che preferisce non essere cercata.",
	},
	["sw.muse.w19.rough.016"] = {
		"Strade dure. Abbastanza cordiali, se non devi soldi a nessuno.",
		"Mi piacciono queste strade. Nessuno finge, e la zuppa costa poco.",
		"Quartiere duro. Prezzi onesti, dadi disonesti.",
	},
	["sw.muse.w19.ruin.001"] = {
		"Una squadra che scavava un nuovo scolo ha trovato una fascia di terra nera, spessa un palmo, mi ha raccontato il caposquadra, e tutti hanno smesso di spalare nello stesso istante. Sapevano cos'era. L'hanno caricata sul carro senza una parola.",
		"Scava dovunque a Stormwind più a fondo di una cantina, dicono i manovali, e la vanga torna su grigia. Non la chiamano terra. La chiamano la città di prima, e stanno attenti a dove la scaricano.",
		"Uno degli scavatori tiene un vasetto di quello strato nero sulla mensola accanto al letto. È l'unico pezzo della prima Stormwind che possederà mai, dice.",
	},
	["sw.muse.w19.ruin.002"] = {
		"si ferma accanto a una lastra sollevata per la riparazione: la pietra di sotto è più scura, macchiata di fuliggine, e l'operaio ci posa sopra quella nuova senza degnarla di uno sguardo.",
		"osserva un selciatore che scalza un ciottolo spaccato e si blocca un istante davanti alla pietra annerita, più vecchia, che c'è sotto, prima di batterci sopra quello nuovo.",
		"indugia accanto a un tratto di selciato rimosso e vede, sotto la sabbia fresca, qualche vecchio ciottolo diventato nero come i mattoni di un focolare.",
	},
	["sw.muse.w19.ruin.003"] = {
		"Qui nella fortezza un re fu ucciso da qualcuno a cui aveva permesso di avvicinarsi. Una vecchia guardia mi ha detto che il posto più vicino a quel punto non lo chiede mai nessuno, e tutti danno la colpa agli spifferi.",
		"Re Llane morì dentro queste mura, dicono le vecchie guardie, anche se non fra queste pietre. Su un certo tratto di pavimento abbassano ancora la voce, e lo negherebbero se glielo chiedessi.",
	},
	["sw.muse.w19.ruin.004"] = {
		"A Stormwind la gente di una certa età dice «prima» e si ferma lì. Prima di cosa, nessuno lo chiede. Chi ha i capelli bianchi lo sa.",
		"«Quello era prima», ha detto un vecchio bottaio parlando di una bottega, di una canzone, di una strada intera, e non ha finito la frase. In questa città il prima non ha bisogno di una seconda metà.",
		"I più anziani, qui, usano una parola senza coda: prima. Prima il mercato era più grande. Prima il pane costava meno. Nessuno li costringe a dire prima di che cosa.",
	},
	["sw.muse.w19.ruin.005"] = {
		"Prova a chiedere a tre vecchi dove stava il mercato del pesce nella città di prima. Quattro risposte e una lite.",
		"Ogni testa canuta di Stormwind sa mostrarti con precisione dov'era la porta di una volta. Indicano tutti in direzioni diverse.",
	},
	["sw.muse.w19.ruin.006"] = {
		"Un barcaiolo mi ha mostrato una moneta tirata fuori dal fango del canale, nera come uno scarabeo, coniata sotto re Llane. Non la spende. Dice che è l'unica moneta di Stormwind che non deve niente a nessuno.",
		"Ogni tanto il fango dei canali restituisce una moneta del regno di Llane, deformata dal fuoco. I barcaioli le tengono per fortuna e rifiutano qualunque offerta, per quanto buona.",
		"I barcaioli hanno un nome per le vecchie monete che i canali risputano: corone annegate. In banca non valgono niente, all'osteria parecchio, se le sai raccontare.",
	},
	["sw.muse.w19.ruin.007"] = {
		"Quasi nessun muro, a Stormwind, è più vecchio dell'incendio. Le cose più antiche, qui, camminano col bastone.",
		"Mura giovani, questa città. Le cose davvero antiche siedono sulle panchine e danno da mangiare ai piccioni.",
		"Vuoi vedere cosa resta della prima Stormwind? Guarda le facce sulle panchine, non le pietre.",
	},
	["sw.muse.w19.ruin.008"] = {
		"alza gli occhi al soffitto basso, dove una trave è carbonizzata per tutta la lunghezza, molto più vecchia dell'intonaco che la circonda, e conservata lo stesso.",
		"nota che una traversa sopra la testa è bruciata a fondo nelle venature: una superstite, chiaramente più vecchia della stanza, lasciata al suo posto da qualcuno che sapeva riconoscere un buon rovere.",
	},
	["sw.muse.w19.ruin.009"] = {
		"Certi vecchi soldati non si fidano di un emissario, di nessun emissario, chiunque lo mandi. Un re di Stormwind è stato ucciso da qualcuno che aveva fatto entrare nella sua fortezza, e quella lezione l'hanno imparata a nome di tutta la città.",
		"Llane lasciò avvicinare qualcuno e ne morì, dicono i veterani, e da allora tengono d'occhio ogni ospite sorridente. Non posso chiamarla saggezza. Non riesco nemmeno a chiamarla sbagliata.",
	},
	["sw.muse.w19.ruin.010"] = {
		"si accoda a un vecchio che svolta ad angoli che non esistono, seguendo le strade di una città scomparsa da tempo, finché non si accorge dell'errore e prende la via nuova.",
		"vede un'anziana fermarsi davanti a un muro cieco, come se un tempo ci passasse attraverso un vicolo, prima di scuotere la testa e girarci intorno.",
		"cammina per un tratto accanto a un vecchio curvo che rallenta in certi punti senza un motivo che la strada sappia mostrare, come se scavalcasse soglie bruciate da un pezzo.",
	},
	["sw.muse.w19.ruin.011"] = {
		"Gli orchi hanno bruciato questa città, una volta, in una guerra combattuta da un'Orda senza tauren e senza Reietti. Alle guardie la differenza non interessa. Al posto loro, non interesserebbe nemmeno a me.",
		"Le bruciature sotto la pietra nuova le hanno fatte gli orchi, molto prima di Thrall. Qui nessuno starà ad ascoltare la distinzione, e non posso dargli torto.",
	},
	["sw.muse.w19.ruin.012"] = {
		"Con un tempo così, giura un vecchio barcaiolo, la nebbia lascia vedere per un attimo le torri della prima città, più alte e più sottili di quelle nuove. Lo dice con la stessa semplicità con cui dice il prezzo di una corsa.",
		"Nebbia sui tetti, e da qualche parte una testa canuta racconta a un bambino che in giornate come questa tornano le vecchie torri. Il bambino guarda. Un poco, guardo anch'io.",
	},
	["sw.muse.w19.ruin.013"] = {
		"Bella città. Anche quella che c'è sotto era bella, a sentire tutti.",
		"Tutti ammirano le mura nuove. I vecchi sono troppo educati per dire che ne hanno viste crollare di migliori.",
		"Belle mura. Le teste grigie su quella panchina, però, ne ricordano di più belle, e te lo diranno per un bicchiere di qualcosa.",
	},
	["sw.muse.w19.ruin.014"] = {
		"Le macerie della città di prima non sono finite da nessuna parte, mi ha detto un costruttore. Sono finite sotto: nelle fondamenta, negli argini, nel cuore delle mura spesse. Stormwind sta in piedi sulle proprie ossa.",
		"Nessuno ha portato via la città spezzata. L'hanno pigiata nelle fondazioni e ci hanno costruito sopra, ha detto un vecchio manovale, così ogni muro nuovo poggia su un pezzo di quello di prima.",
		"Dove sono finite le macerie? Sotto i miei stivali, ti risponderebbero le squadre degli scalpellini. Una città che non spreca niente, nemmeno la sua rovina.",
	},
	["sw.muse.w19.ruin.015"] = {
		"In questa città gli umani contano gli anni dall'incendio, che lo vogliano o no. Sposati cinque anni dopo, la bottega aperta dodici anni dopo. Mi sorprendo a farlo anch'io.",
		"Fra noi, a Stormwind, l'incendio è la riga da cui si misura ogni data. Chiedi a un vecchio umano quando è successa una cosa, e la risposta parte da lì.",
	},
	["sw.muse.w19.scar.001"] = {
		"si ferma sotto un vecchio arco che sul ventre porta ancora una fioritura bruna di fuliggine, di quelle che nessuna spazzola toglie, in alto dove le fiamme dovevano arricciarsi.",
		"alza gli occhi sotto un arco e trova una sbavatura di fumo antico sulla curva delle pietre, tenue come un'impronta di pollice e altrettanto ostinata.",
	},
	["sw.muse.w19.scar.002"] = {
		"In certe cantine fra le più vecchie le pietre sono diventate rosate, mi ha detto un manovale. Il fuoco fa così, alla pietra. Battine una con una chiave e suona più sorda delle vicine, come una voce che ha urlato troppo.",
		"La pietra bruciata diventa rosea e opaca, dicono i costruttori, e suona male quando ci bussi. A Stormwind ci sono cantine dove ogni muro dà quella nota spenta.",
	},
	["sw.muse.w19.scar.003"] = {
		"I giardinieri dicono che uno dei vecchi alberi qui porta, nel fondo della corteccia, una cucitura nera dell'incendio, richiusa da tempo. Non lo indicano a nessuno, ma è il primo che annaffiano.",
		"Un giardiniere mi ha mostrato un albero il cui tronco si ripiega intorno a una vecchia ferita scura, guarita in una lunga cicatrice. È più vecchio delle mura intorno al Park, dice. C'era già quando il resto era cenere.",
	},
	["sw.muse.w19.scar.004"] = {
		"si siede un momento su una panca di pietra e si accorge che il sedile è un tratto di colonna scanalata messo di fianco, chiaramente parte di qualcosa di molto più grandioso, un tempo.",
		"appoggia una mano su un basso paracarro a lato della strada e lo trova scolpito con la voluta di un capitello: un pezzo di qualche antico colonnato messo a fare un lavoro più umile.",
		"nota che il gradino di una modesta bottega è una lastra di cornicione scolpito girata a faccia in giù, con foglie e volute che si vedono solo lungo il bordo consumato.",
	},
	["sw.muse.w19.scar.005"] = {
		"Uno dei gradini che salgono alla fortezza è di una pietra diversa dagli altri, più scura e più consumata. Le guardie dicono che è l'unico pezzo della vecchia fortezza che i costruttori rimisero al suo posto, apposta, perché ogni re dovesse calpestarlo.",
		"Guarda bene i gradini della fortezza e uno non si accorda con gli altri: più vecchio, più scuro, incavato da piedi di cui nessuno ha memoria. Conservato apposta, sostengono le guardie, perché la fortezza nuova poggi su quella vecchia.",
	},
	["sw.muse.w19.scar.006"] = {
		"si accorge di un vecchio cardine di ferro, consumato dalla ruggine fino a un moncherino, piantato in uno stipite più recente: la porta che reggeva se n'è andata da un pezzo, e la pietra nuova gli è stata incastrata intorno con cura.",
		"scorge un grumo di ferro antico affondato nel fianco di una porta, che non regge niente: l'ultimo resto di un cardine sopravvissuto alla sua porta, attorno a cui hanno semplicemente costruito.",
	},
	["sw.muse.w19.scar.007"] = {
		"Sul davanzale di una vecchia finestra c'è una goccia di piombo indurita, grigia e raggrinzita. Quando la città bruciò i tetti colavano come cera di candela, dice la vecchia del piano di sopra, e nessuno ha mai avuto cuore di toglierla con lo scalpello.",
		"Un piccolo schizzo di metallo rappreso su una sporgenza, di quelli che gratteresti via senza pensarci. È piombo dei tetti in fiamme, dicono i vicini, e ti rimproverano se lo tocchi.",
	},
	["sw.muse.w19.scar.008"] = {
		"trova una fila di tacche graffiate in basso su un vecchio muro scuro, decine e decine, a gruppi di cinque, e nessuno di quelli che passano sa chi contasse, né che cosa.",
		"si accovaccia accanto a una pietra di fondazione consumata, coperta di piccoli segni incisi a mazzetti di cinque: un conto che qualcuno teneva molto prima che questa strada avesse un nome.",
	},
	["sw.muse.w19.scar.009"] = {
		"Vedi quei buchetti quadrati in alto sul muro? Alloggi per le impalcature della ricostruzione. I piccioni ci sono entrati presto e l'affitto non l'hanno mai pagato.",
		"Ogni muro grande di Stormwind ha in alto una fila di buchi dove poggiavano le impalcature. Adesso in ognuno c'è un piccione affacciato come un inquilino.",
		"La ricostruzione ha lasciato i buchi per le travi delle impalcature. I piccioni li hanno presi prima che la malta asciugasse. I migliori immobili della città.",
	},
	["sw.muse.w19.scar.010"] = {
		"Con una pioggia così, dicono quelli del posto, un vecchio muro della città piange fuliggine: una striscia grigia che scende da una crepa che nessuno scalpellino è riuscito a chiudere. La chiamano la città di prima che piange, ridono, e non la guardano.",
		"Piove sulla vecchia muratura, e qua e là dai giunti trasuda un rivolo sottile e scuro: cenere che si scioglie ancora, dopo tutto questo tempo, a dar retta ai barcaioli.",
	},
	["sw.muse.w19.scar.011"] = {
		"Noi umani non buttiamo via un architrave bruciato. Lo giriamo, mettiamo fuori il lato pulito e lo rimettiamo sopra la porta. Metà delle vecchie case di Stormwind portano le cicatrici dalla parte di dentro.",
		"La mia gente ha tenuto ogni pietra che il fuoco le ha lasciato, annerita o no. Girare la faccia nera verso l'interno, rimetterla al suo posto, andare avanti. Tutto il metodo è questo, e la città ci sta sopra.",
	},
	["sw.muse.w19.scar.012"] = {
		"Quella crepa nell'arco? Gli scalpellini l'hanno lasciata stare, mi dicono. Qualcosa sul lasciare che il vecchio muro dica la sua.",
		"A Stormwind certe crepe si riparano. Qualcuna, dice la gente del posto, si lascia stare per rispetto. Non chiedermi quali.",
		"Attento a quella crepa. I vecchi si offendono se qualcuno parla di riempirla.",
	},
	["sw.muse.w19.scar.013"] = {
		"guarda il crepuscolo trovare per primi i vecchi corsi bruciati di un muro, e affondarli nel buio mentre la pietra più nuova lassù trattiene ancora l'ultima luce.",
		"vede la luce che cala lasciare le pietre annerite in basso molto prima di quelle chiare, come se la città di prima andasse a dormire per prima.",
	},
	["sw.muse.w19.scar.014"] = {
		"Qui nel Trade District un bottegaio mi ha mostrato la bruciatura sulla sua soglia, e la storia non me l'ha fatta pagare. In questo quartiere è la merce più rara che ci sia.",
		"Un mercante di stoffe tiene incastonata nel banco una pietra annerita della città di prima. I clienti ci appoggiano la borsa mentre contrattano. Lui giura che gli porta fortuna, e i suoi prezzi sembrano dargli ragione.",
	},
	["sw.muse.w19.scar.015"] = {
		"Alla luce dei lampioni i muri rattoppati si vedono meglio che di giorno: pietra nuova chiara, pietra vecchia scura, accostate come una trapunta che qualcuno ha continuato a rammendare invece di cambiarla.",
		"Le lanterne sono accese, e i rammendi della città si vedono: un quadrato scuro qui, un tratto chiaro là, tutta Stormwind rattoppata come un cappotto che ha passato due guerre.",
	},
	["sw.muse.w19.scar.016"] = {
		"Ogni bruciatura del Mage Quarter è o «guerra» o «lezioni». Di quelle di guerra nessuno si vergogna.",
		"Certe bruciature, qui, sono degli orchi e altre degli apprendisti. Quelle degli apprendisti stanno più in basso, e arrivano con le scuse.",
		"Bruciature vecchie, bruciature nuove. La gente del posto ti sa dire quali sono degli orchi e quali di uno studente. Odore diverso, dicono.",
	},
	["sw.muse.w19.sentry.001"] = {
		"tiene d'occhio l'elmo di una sentinella che scorre in cima alle mura, compare in ogni spazio tra i merli e sparisce dietro ogni merlo, regolare come un tamburo lento.",
		"segue lassù l'elmo di una guardia lungo i merli: c'è, sparisce, c'è, sparisce, per tutta la lunghezza delle mura.",
	},
	["sw.muse.w19.sentry.002"] = {
		"Le guardie alla porta non chiedono mai da dove vieni. Ti guardano gli stivali, lo zaino e le mani, e a quel punto lo sanno.",
		"Alla porta nessuno ti ferma con delle domande. Le domande stanno nel modo in cui gli occhi delle guardie scendono sulle tue mani e risalgono alla tua faccia.",
		"Lo sguardo di una guardia della porta è una specie di registro. Le passi accanto e scopri di esserci {g:finito|finita} dentro.",
	},
	["sw.muse.w19.sentry.003"] = {
		"Chiedi a una sentinella della porta quanti carri sono passati dall'ultima campana e te lo dice. Chiedi quante persone e ti dice anche quello, e quali non le sono piaciute.",
		"Tengono il conto a mente, le guardie della porta. A una l'ho chiesto. Quarantun carri, mi ha detto, e uno racconta frottole sulle rape.",
	},
	["sw.muse.w19.sentry.004"] = {
		"sorprende una sentinella della porta che sposta il peso da una gamba all'altra appena il sergente si gira, per poi irrigidirsi di colpo quando quello si volta.",
		"nota una guardia della porta che piega piano le dita di un guanto d'arme, come per contarle, senza muovere nient'altro.",
	},
	["sw.muse.w19.sentry.005"] = {
		"Le sentinelle sulle mura passano tutto il turno dando le spalle alla città che sorvegliano. La conoscono dal rumore, come si riconosce la voce di un amico dalla stanza accanto.",
		"Una sentinella delle mura guarda fuori per tutto il turno. Quello che protegge le sta alle spalle, sentito e mai visto. Ci vuole una fiducia tutta particolare.",
		"Lassù sulle mura la città è un suono alle spalle: carri, campane, qualcuno che ride in un cortile. Il compito delle sentinelle è continuare a guardare dall'altra parte.",
	},
	["sw.muse.w19.sentry.006"] = {
		"alza gli occhi verso le mura attraverso la tempesta: le sentinelle stanno curve nei mantelli tra i merli, ferme al loro posto e palesemente pentite.",
		"vede una sentinella sui bastioni affondare il mento nel colletto mentre la tempesta le rovescia acqua addosso a secchiate.",
	},
	["sw.muse.w19.sentry.007"] = {
		"Guarda abbastanza a lungo la base delle mura e vedrai salire un cesto appeso a una fune: pane, una brocca, un biglietto. Anche le sentinelle di Stormwind hanno qualcuno che si ricorda del pranzo.",
		"Un cesto su una lunga fune, tirato su a forza di braccia lungo la parete delle mura. Lassù è arrivata la cena di una sentinella, e tutta la torre esulta sottovoce.",
	},
	["sw.muse.w19.sentry.008"] = {
		"Tranquilla, la porta? Bene. Che ti annoi a morte fino alla campana.",
		"Turno lungo, eh? Le mura saranno ancora qui quando ti daranno il cambio. Con un po' di fortuna, anche tu.",
	},
	["sw.muse.w19.sentry.009"] = {
		"Ogni tanto lungo le mura passa un richiamo, da una torre all'altra, troppo lontano per capirlo. Tutto bene, immagino. Nessuno corre, quindi dev'essere così.",
		"Un grido da una torre, la risposta dalla successiva, e da quella dopo: una lunga staffetta che fa il giro della città sopra i tetti. In strada nessuno alza nemmeno la testa.",
		"I richiami lungo le mura girano come la lancetta di un orologio lento. Smetti di sentirli, finché uno non arriva in ritardo.",
	},
	["sw.muse.w19.sentry.010"] = {
		"Superate le guardie della porta senza che mi degnassero di un secondo sguardo. O il cappuccio fa il suo lavoro, o la guardia di Stormwind tiene i sospetti per qualcuno di più interessante.",
		"Ogni sentinella che supero è un testa o croce che continuo a vincere. Cerco di non pensare a quante monete restano.",
	},
	["sw.muse.w19.sentry.011"] = {
		"si fa da parte mentre le guardie della porta scattano sull'attenti per una compagnia stanca che entra infangata fino alle ginocchia, e un ufficiale troppo esausto per farlo bene ricambia il saluto.",
		"guarda le sentinelle della porta raddrizzare di scatto le alabarde mentre entra una truppa di soldati schizzati di fango, che a stento alzano gli occhi.",
	},
	["sw.muse.w19.sentry.012"] = {
		"Qualcuno sulle mura fischietta le stesse quattro note all'infinito. Alla centesima volta l'avrei spinto giù io; il suo sergente dev'essere di una pazienza infinita.",
		"Dai bastioni scende un motivetto: una sentinella che fischietta per restare sveglia. È sempre lo stesso motivo, ed è sempre stonato.",
	},
	["sw.muse.w19.sentry.013"] = {
		"passa davanti alla porta sotto le lampade della notte, dove i volti delle sentinelle compaiono e spariscono nella luce come monete girate in una mano.",
		"sfila accanto alla ronda notturna della porta: due figure con la luce delle lampade sugli elmi e alle spalle la strada buia.",
	},
	["sw.muse.w19.sentry.014"] = {
		"osserva una guardia della porta che solleva il telo di un carro con il calcio dell'alabarda, sbircia sotto un carico di cavoli e lo fa passare con profonda delusione.",
		"aspetta mentre una sentinella pungola una pila di sacchi su un carretto, e il carrettiere alza gli occhi al cielo come se succedesse a ogni viaggio. Probabilmente succede.",
	},
	["sw.muse.w19.sentry.015"] = {
		"Guarda la porta abbastanza a lungo e puoi mettere in fila tutta Stormwind dal saluto delle guardie: un cenno per i contadini, la schiena dritta per i soldati, un gran fracasso di alabarde per qualunque carrozza abbia uno stemma sulla portiera.",
		"Le sentinelle della porta hanno un'intera grammatica del saluto. Ai carrettieri un grugnito, ai pellegrini un cenno, e alla carrozza di un nobile un saluto così secco da tagliarci il pane.",
		"Sulle gerarchie di questa città ho imparato più dalla postura delle guardie alla porta che da qualunque araldo.",
	},
	["sw.muse.w19.sentry.016"] = {
		"Una sentinella mi ha detto che dalla torre più alta delle mura si vede la foresta stendersi fino alle colline, e che dopo un mese smetti di guardarla. Il mese lo vorrei io.",
		"Nessuno a Stormwind vede più lontano delle guardie delle torri. Chiedi però cosa guardano, ed è sempre lo stesso elenco: la strada, i carri, il cielo e l'orologio che hanno in testa.",
	},
	["sw.muse.w19.sentry.017"] = {
		"Ehi, lassù sulle mura! Arriva niente? No? Buon per te, allora.",
		"Tutto tranquillo sulla strada? Se cambia qualcosa, grida, d'accordo?",
	},
	["sw.muse.w19.sigil.001"] = {
		"Qualcuno disegna cerchi di gesso su certe soglie del quartiere, e qualcun altro li cancella. Ci passo spesso, eppure non ho mai sorpreso né l'uno né l'altro.",
		"Gesso fresco su una soglia: un cerchio, con dentro tre segni. Al rintocco dopo l'hanno già lavato via, e il gradino è ancora bagnato. Una lite silenziosa, combattuta col gesso e con l'acqua.",
	},
	["sw.muse.w19.sigil.002"] = {
		"Certe porte del quartiere hanno un piccolo segno inciso sopra il saliscendi. Chiedi a cosa serve e ti risponderanno con un sorriso gentile che vuol dire: niente che ti riguardi.",
		"Un piccolo segno inciso nello stipite accanto alla maniglia, lisciato dai pollici. Qualunque cosa protegga, chi abita lì lo tocca entrando e uscendo, per abitudine.",
		"I segni incisi sulle porte vicino alla torre sono tutti un po' diversi, come i batacchi in una via di belle case. Ogni famiglia, a quanto pare, ha il suo modo di dire alla larga.",
	},
	["sw.muse.w19.sigil.003"] = {
		"guarda una bambina ricopiare col gesso il segno di un mago su un muro, la lingua stretta fra i denti, poi fare un passo indietro e aspettare. Non succede niente. Sembra sollevata, e poi delusissima.",
		"si ferma accanto a una fila di bambini che ricopiano col gesso i segni dei maghi su un muro, tutti a strizzare gli occhi sul proprio lavoro come se dovesse schiudersi.",
	},
	["sw.muse.w19.sigil.004"] = {
		"La Guardia ha una lista di segni da segnalare se compaiono su un muro, mi ha detto una guardia. Nessuno di loro sa cosa significhino, e sospetto che sia proprio questo il punto.",
		"In un corpo di guardia, raccontano le guardie, è appeso un foglio di segni strani ricopiati da un mago, con una sola istruzione sotto: se vedi questo, chiama qualcuno. Non leggerlo ad alta voce.",
		"Una guardia una volta mi ha mostrato il dorso della mano, coperto di segni ricopiati a inchiostro da un muro per denunciarli come si deve. Erano tre giorni che lo strofinava.",
	},
	["sw.muse.w19.sigil.005"] = {
		"Sotto il Lamb, si sussurra, c'è un cerchio sul pavimento che nessuno ha il permesso di lavare. Le donne delle pulizie del quartiere puliscono qualsiasi altra cosa di Stormwind, e a metà prezzo.",
		"Sotto lo Slaughtered Lamb, così corre la voce, c'è un anello tracciato sulla pietra, più vecchio della taverna. La taverna ci è stata costruita intorno. Nessuno dice da chi.",
		"Chiedi del pavimento della cantina del Lamb e le risposte vanno d'accordo su una cosa sola: qualunque cosa ci sia disegnata, non l'ha disegnata nessuno di quelli che bevono ancora di sopra.",
	},
	["sw.muse.w19.sigil.006"] = {
		"nota un piccolo segno inciso nella pietra accanto a una porta, un cerchio barrato due volte, e tiene le mani a posto.",
		"esita davanti a uno stipite inciso con un minuscolo cerchio barrato, accenna ad allungare la mano, poi la ritira.",
		"lascia indugiare lo sguardo su un segno inciso accanto a un architrave, e prosegue tenendo bene alla larga tutte e due le mani.",
	},
	["sw.muse.w19.sigil.007"] = {
		"Qualunque cosa voglia dire quel segno sulla porta, busserò da un'altra parte.",
		"Simpatico, quel segnetto sulla porta. Lo ammiro da qui.",
		"Cerchio di gesso sul gradino. Passo alla casa dopo, grazie.",
	},
	["sw.muse.w19.sigil.008"] = {
		"Dappertutto una bottega appende sulla porta uno stivale o una pagnotta. Nel Mage Quarter, un simbolo, e si dà per scontato che tu lo capisca.",
		"Tre punti e una sbarra su un'insegna. È un calzolaio o la fine del mondo?",
		"Un anello con la coda sopra la porta. Mi dicono che vuol dire «candele». Mi dicono tante cose.",
	},
	["sw.muse.w19.sigil.009"] = {
		"Quando muore un mago della torre, si dice che gli apprendisti traccino un ultimo segno sulla porta della stanza vuota. Quella porta nessuno la apre per un anno, e nessuno chiede perché.",
		"Una porta del quartiere con un segno tracciato in argento e una striscia di stoffa nera sulla maniglia. La stanza di un mago, dicono i vicini. Resterà chiusa finché non gira l'anno.",
	},
	["sw.muse.w19.sigil.010"] = {
		"All'imbrunire i segni su certe porte cominciano a brillare, deboli come braci, e la gente del quartiere torna a casa seguendoli come lanterne.",
		"Mentre la luce cala, piccoli segni sugli stipiti del quartiere si svegliano uno a uno, d'un argento tenue, e la strada ci si orienta.",
	},
	["sw.muse.w19.sigil.011"] = {
		"Una runa incisa nella pietra, quella sì che è una promessa. Questi segni umani di gesso e d'inchiostro, che spariscono in una settimana? Promesse fatte davanti a una birra.",
		"Datemi una runa battuta a martello nel buon granito. I maghi disegnano le loro con l'inchiostro, e poi si chiedono perché un nano non si appoggi ai loro stipiti.",
		"L'inchiostro sbiadisce, il gesso si sbava. Se i maghi di Stormwind vogliono che i loro segni durino più di loro, sanno dove trovare un nano con lo scalpello.",
	},
	["sw.muse.w19.sigil.012"] = {
		"I maghi umani tracciano i cerchi a mano libera e la chiamano tradizione. Uno gnomo userebbe il compasso, ci metterebbe la metà, e il cerchio verrebbe tondo davvero.",
		"Ho misurato uno dei cerchi di gesso dei maghi, per strada. Fuori squadra di un dito buono. Funziona lo stesso, chissà come, e la cosa mi offende per principio.",
	},
	["sw.muse.w19.sigil.013"] = {
		"segue con lo sguardo uno spazzino che percorre il vicolo con grande cura, sollevando la scopa ben al di sopra di ogni segno tracciato sul selciato.",
		"nota come gli spazzini di {subzone} lascino isolette di polvere attorno ai segni di gesso sulle pietre, spazzando fin lì e non oltre.",
	},
	["sw.muse.w19.sigil.014"] = {
		"A ogni lampo della tempesta, sulle mura della torre dei maghi compaiono per un istante delle linee, una scrittura intera che alla luce del giorno nessuno vede, e che sparisce prima del tuono.",
		"Lampi sul quartiere, e nel loro bagliore bianco la torre è tutta scritta, da cima a fondo. Poi il buio, la pietra liscia, e il brontolio che rotola via sopra i tetti.",
	},
	["sw.muse.w19.skies.001"] = {
		"La pioggia sull'ardesia suona più sottile che sulla paglia, più secca, come una folla di persone minuscole che applaude per educazione.",
		"Ascoltala su questi tetti. L'ardesia non rimbomba come la paglia: ticchetta, come uno scrivano che conta monete di rame.",
		"La pioggia ha trovato tutti i tetti di Stormwind e li sta passando in rassegna lastra per lastra, come un ispettore delle tasse.",
	},
	["sw.muse.w19.skies.002"] = {
		"ascolta la pioggia che trova la strada fra qualche lastra d'ardesia allentata, lassù, e gocciola in un secchio messo lì chissà quando, con una nota regolare e metallica.",
		"tiene d'occhio una pentola sul pavimento che raccoglie le gocce di un'infiltrazione dal soffitto, il plin di ogni goccia che tiene il tempo sotto il brusio della sala.",
	},
	["sw.muse.w19.skies.003"] = {
		"Ogni tuono passa sulla città come un carro carico su un ponte di legno, lento e pesante, e dopo il suo passaggio i vetri delle finestre vibrano.",
		"Qui il tuono rimbalza. Batte contro le mura, torna indietro dalle torri e arriva tre volte, ogni volta un po' più stanco.",
	},
	["sw.muse.w19.skies.004"] = {
		"sbatte le palpebre mentre un lampo mette a nudo l'intera città per un istante, ogni lastra e ogni guglia disegnate di bianco, e poi si riprende tutto.",
		"viene {g:sorpreso|sorpresa} a metà passo da un lampo che fa le strade bianche come carta, e nel buio che segue conta, a mezza voce, finché non arriva il tuono.",
	},
	["sw.muse.w19.skies.005"] = {
		"Stormwind, cioè più o meno 'vento di tempesta'. Non capisco perché sembrino tutti così sorpresi.",
		"Tempesta su Stormwind. Chi ha dato il nome a questa città era una persona molto onesta.",
		"Questo sì che è un tempo da Stormwind. Finalmente il nome ha senso.",
	},
	["sw.muse.w19.skies.006"] = {
		"La nebbia si posa su tutto in piccole gocce fredde: mantelli, ringhiere, i baffi di un gatto su una soglia. Stormwind si è fatta morbida ai bordi e umida fin dentro.",
		"Con la nebbia la città ha un odore più forte. Pane, fumo, canali: tutto resta sospeso nell'aria, senza un posto dove andare.",
	},
	["sw.muse.w19.skies.007"] = {
		"Con una nebbia così, terrei una mano sulla borsa. Tempo splendido per i borseggiatori.",
		"Con una nebbia così fitta, tutti i tagliaborse della città si sono appena presi una vacanza.",
		"Dov'è finita la strada? Un minuto fa era qui.",
	},
	["sw.muse.w19.skies.008"] = {
		"I rondoni sono fuori, sopra i tetti, e strillano in cerchi stretti intorno alle torri. Un cielo sereno fa sembrare la città di una taglia più grande.",
		"Nemmeno una nuvola. Il bucato su ogni filo sarà asciutto prima del prossimo rintocco, e ogni gatto di Stormwind ha trovato un'ardesia tiepida su cui sdraiarsi.",
	},
	["sw.muse.w19.skies.009"] = {
		"guarda la prima luce sfiorare soltanto la cima delle torri, qualche finestra lassù che lampeggia d'oro mentre le strade di sotto sono ancora grigie e assonnate.",
		"vede l'alba arrivare prima alle banderuole, poi alle ardesie, poi alle finestre alte, come se la città venisse vestita a partire dal cappello.",
	},
	["sw.muse.w19.skies.010"] = {
		"Il tramonto, e tutte le cucine di Stormwind sono accese insieme. Cipolle, soprattutto. Tutta la città sa di uno stufato che non ha ancora deciso cosa vuole essere.",
		"Mentre cala la luce, l'odore delle cene sale da ogni comignolo e da ogni porta: cipolle, montone, un filo di grasso bruciato. Finalmente Stormwind cucina per sé.",
	},
	["sw.muse.w19.skies.011"] = {
		"Qualcuno dovrebbe mettere un tetto sopra tutta la città. I nani saprebbero come fare.",
		"Tutto questo bel lavoro di pietra, e a nessuno è venuto in mente di coprire le strade.",
	},
	["sw.muse.w19.skies.012"] = {
		"La luna si è posata su una delle guglie più alte, come se qualcuno ce l'avesse messa in equilibrio e si fosse allontanato in punta di piedi.",
		"Una grande luna pallida sui tetti, così luminosa da far luccicare le ardesie come pesci bagnati.",
		"Sopra Stormwind le stelle sono meno che sopra Elwynn: i lampioni convincono quasi tutte a non presentarsi. La luna, almeno, non si lascia mettere in ombra.",
	},
	["sw.muse.w19.skies.013"] = {
		"guarda due bambini far correre pezzetti di legno lungo un canale di scolo gonfio di pioggia, strillando quando una barca sparisce in un tombino e l'altra prosegue verso la gloria.",
		"rallenta per guardare due bambini che inseguono un guscio di noce giù per il rigagnolo, la pioggia che gli incolla i capelli alla testa, tutti e due felicissimi.",
	},
	["sw.muse.w19.skies.014"] = {
		"Ogni imposta allentata e ogni insegna appesa male della città aspettavano una tempesta come questa. E adesso lo dicono tutte insieme.",
		"Con una tempesta si scopre quali insegne erano inchiodate come si deve. Quasi nessuna, a quanto pare.",
	},
	["sw.muse.w19.soot.001"] = {
		"La pietra bianca di Stormwind smette di essere bianca una decina di passi dentro il Dwarven District. I muratori hanno smesso di strofinare da un pezzo.",
		"Ogni muro del Dwarven District porta una macchia all'altezza della spalla di un nano, dove mille spalle annerite si sono appoggiate. Nessuno la pulisce: tornerebbe subito.",
	},
	["sw.muse.w19.soot.002"] = {
		"si spolvera una macchia di fuliggine dalla manica, ci ripensa e rinuncia: nel Dwarven District il mantello ne raccoglierebbe altra.",
		"nota un velo di polvere scura che si posa sulle maniche e ci passa sopra la mano, col risultato di stenderlo in un'ordinata striscia grigia.",
	},
	["sw.muse.w19.soot.003"] = {
		"Da quasi ogni punto di Stormwind si trova il Dwarven District dal suo fumo, un filo scuro dritto sopra i tetti. I viaggiatori smarriti lo seguono come una strada.",
		"Le forge mandano su una colonna sottile e scura con cui tutta la città si può orientare. Chiedi a un bambino la strada per il tram e il bambino indica il fumo.",
		"Una dozzina di torri per orientarsi, a Stormwind, e una sola macchia di fumo. I forestieri chiedono delle torri; la gente del posto indica la macchia.",
	},
	["sw.muse.w19.soot.004"] = {
		"Al Dwarven District mettete abiti scuri. Tanto il quartiere li scurisce comunque, ma così si fa prima.",
		"Tutto quello che entra chiaro nel Dwarven District ne esce color forgia. Regolatevi.",
	},
	["sw.muse.w19.soot.005"] = {
		"incrocia un nano che smonta dal turno alla forgia, nero fino alle sopracciglia tranne due cerchi chiari dove stavano gli occhiali, e deve distogliere lo sguardo per non sorridere.",
		"incontra una gnoma che esce da un laboratorio con una maschera pulita, perfetta, intorno agli occhi dov'erano gli occhialoni, e il resto di lei del colore di una cappa di camino.",
	},
	["sw.muse.w19.soot.006"] = {
		"La fuliggine nella malta delle forge più vecchie si posa a strati, come gli anelli di un albero. Vicino al fondo c'è il primo fuoco che qualcuno vi accese dopo la ricostruzione.",
		"Gratta via il nero da un muro di forgia nel Dwarven District e sotto c'è altro nero, anni di nero, fino al primo fuoco acceso nella città nuova.",
	},
	["sw.muse.w19.soot.007"] = {
		"Ogni tanto un nobile presenta una supplica a corte perché le forge siano spostate fuori dalle mura, per via del fumo. La supplica finisce a un impiegato, l'impiegato va da un nano per una serratura nuova, e la faccenda muore lì.",
		"I nobili sopravvento si lamentano del fumo delle forge. Quelli sottovento si lamentano più forte. I nani continuano a martellare: hanno sentito di peggio da gente migliore.",
		"C'è una famiglia nobile che manda una lettera sul fumo a ogni stagione. I nani del Dwarven District le hanno conservate tutte, dicono, e le usano per accendere le forge.",
	},
	["sw.muse.w19.soot.008"] = {
		"Il Dwarven District è sempre un tono più scuro del resto di Stormwind, come se avesse tirato una tenda. Dopo lo sfavillio del Trade District, gli occhi ringraziano.",
		"Entrare nel Dwarven District è come mettersi all'ombra di un grande albero, solo che l'albero è fatto di fumo e sa di carbone.",
	},
	["sw.muse.w19.soot.009"] = {
		"Dieci minuti nel Dwarven District e sento il sapore del carbone. I nani dicono che non ci si fa più caso. Lo direbbero, i nani.",
		"Polvere di carbone nel colletto, polvere di carbone sulla lingua. Questo quartiere ti entra dentro, granello dopo granello.",
		"Sono qui da un quarto d'ora e ho già cambiato colore. Datemi una settimana e nessuno mi distinguerà dal carbone.",
	},
	["sw.muse.w19.soot.010"] = {
		"Certi vecchi soldati, in strada, guardano il fumo delle forge un istante di troppo. Questa città ha visto sui suoi tetti un altro genere di fumo, e c'è chi se lo ricorda.",
		"Una colonna di fumo sopra Stormwind, ormai, vuol dire lavoro: forge, pane, l'errore di uno gnomo. In questa città ci sono teste grigie che hanno dovuto impararlo, piano piano.",
	},
	["sw.muse.w19.soot.011"] = {
		"aspetta sulla soglia interna di una bottega mentre il fabbro lavora: muri neri come l'interno di una pentola, e tenaglie appese, ognuna dentro la propria sagoma dipinta sulla pietra.",
		"si guarda intorno nella bottega di un fabbro nano, dove ogni attrezzo pende dal muro nero dentro una sagoma chiara dipinta su misura, e una sagoma è vuota.",
	},
	["sw.muse.w19.soot.012"] = {
		"La fuliggine sotto le unghie, per un nano, è pulizia. Gli umani la strofinano via e si chiedono perché ridiamo.",
		"Un umano mi ha appena offerto, con molta gentilezza, un panno per la faccia. L'ho ringraziato e me lo sono messo in tasca. La fuliggine resta: è onesta.",
	},
	["sw.muse.w19.soot.013"] = {
		"Perfino le guardie sembrano più impolverate nel giro del Dwarven District. Una tunica entra blu e oro e ne esce color secchio del carbone.",
		"Si capisce quali guardie pattugliano le vie delle forge: tuniche di un blu stanco, e la faccia di chi ha smesso di farci caso.",
	},
	["sw.muse.w19.soot.014"] = {
		"guarda la pioggia scivolare nera dalle grondaie del Dwarven District, portando la fuliggine delle forge giù nelle cunette a nastri sottili e scuri.",
		"resta sotto una tettoia mentre la pioggia lava la fuliggine del quartiere nelle cunette, e l'acqua corre verso il canale del colore del tè forte.",
	},
	["sw.muse.w19.soot.015"] = {
		"L'ingegneria sa di olio caldo, peli bruciacchiati e polvere da sparo. Nel Dwarven District si impara a distinguerli, e a preoccuparsi del terzo.",
		"Il Dwarven District ha un profumo tutto suo: olio da lampada, carbone, e l'odore acre e nero della polvere da sparo che fa voltare ogni nano a cercare chi la stia maneggiando.",
		"Fumo di carbone vuol dire forgia, fumo d'olio vuol dire gnomo, e fumo azzurro vuol dire che dovresti già essere altrove. Ogni bambino del Dwarven District conosce i colori.",
	},
	["sw.muse.w19.soot.016"] = {
		"In fondo alla fila delle forge c'è un abbeveratoio dove i fabbri si lavano, in un'acqua così nera che sembra inchiostro. Le mani non ne escono più pulite; dicono che conta il gesto.",
		"L'acqua della vasca dove i nani si sciacquano dopo il lavoro non è mai altro che nera. Lavarsi, mi ha detto uno di loro, è il modo di dire alla forgia che hai finito.",
	},
	["sw.muse.w19.spire.001"] = {
		"Tre volte ho contato le finestre di quella torre. Tre numeri diversi. Basta, non conto più.",
		"Quella torre ha trenta finestre, o forse trentaquattro, a seconda di chi le conta e, temo, del suo umore.",
		"Conta le finestre di quella torre. Dai. Poi contale un'altra volta e dimmi che sbaglio.",
	},
	["sw.muse.w19.spire.002"] = {
		"alza lo sguardo verso il Wizard's Sanctum proprio mentre una tenda, a una delle finestre più alte, si richiude di scatto.",
		"lancia un'occhiata alla torre dei maghi e coglie una figura a una finestra in cima, intenta a guardare la strada, prima che si ritiri e scompaia.",
		"nota una piccola luce che passa di finestra in finestra lungo il fianco della torre, come se qualcuno salisse le scale con una lanterna, e la perde vicino alla cima.",
	},
	["sw.muse.w19.spire.003"] = {
		"La gente entra nel Wizard's Sanctum e non sempre esce dalla porta. I maghi lo chiamano portale. La guardia all'angolo che conta chi entra lo chiama una seccatura.",
		"Qualcuno sale le scale del Sanctum e, per quanto ne sa la strada, non scende più. A Ironforge in un batter d'occhio, dicono gli apprendisti, come se fosse un modo normale di uscire da un edificio.",
		"Mentre stavo dall'altra parte della via, nella torre sono entrate sette persone e ne sono uscite quattro. Nessun altro per strada le contava, e questo dice tutto su quanto sia normale.",
	},
	["sw.muse.w19.spire.004"] = {
		"Gli apprendisti giurano che le scale del Wizard's Sanctum sono più lunghe in salita che in discesa. Sono loro a portare i libri, quindi ci credo.",
		"Chiedi a un apprendista quanti gradini ha la torre, e il gemito ti arriva molto prima del numero.",
		"Un apprendista esce dalla torre paonazzo, a mani vuote, e si siede sull'ultimo gradino come se avesse fatto moltissima strada.",
	},
	["sw.muse.w19.spire.005"] = {
		"Col sole addosso, la torre allunga un dito d'ombra sui tetti, e per tutto il giorno lo fa girare per il quartiere come lo gnomone di una meridiana grande quanto un quartiere.",
		"Di giorno l'ombra della torre dei maghi cammina sui tetti del quartiere, lenta come un gatto, una casa dopo l'altra, senza fermarsi a lungo da nessuna parte.",
	},
	["sw.muse.w19.spire.006"] = {
		"La porta del Wizard's Sanctum non è mai chiusa a chiave, dicono nel quartiere. Non serve: chi sta dentro sa chi l'ha aperta prima ancora che ricada il saliscendi.",
		"Niente sbarra sulla porta dei maghi, niente catenaccio, nessuna guardia degna del nome. I vicini dicono che la casa sa sempre chi è entrato, e che questo è peggio di qualsiasi serratura.",
		"Un ladro che beve nell'Old Town mi ha detto che svaligerebbe la fortezza prima della torre. La fortezza, almeno, ha soltanto le guardie.",
	},
	["sw.muse.w19.spire.007"] = {
		"Di notte la cima della torre brilla appena, e le falene salgono dai canali ad arrampicarcisi, una lenta spirale grigia che non arriva mai alla luce.",
		"Col buio, le falene si alzano da ogni angolo del quartiere e risalgono la torre in una spirale larga, verso un viola che non raggiungono mai del tutto.",
	},
	["sw.muse.w19.spire.008"] = {
		"Dall'angolo giusto si vedono insieme le torri della cattedrale e quella dei maghi: due modi di chiedere al mondo più di quanto dia.",
		"La cattedrale e il Wizard's Sanctum stanno nello stesso profilo di tetti e quasi non si nominano. Una chiede. L'altro studia come prendere.",
	},
	["sw.muse.w19.spire.009"] = {
		"Se quella torre crollerà mai, sarà apposta, e qualcuno ci scriverà sopra un trattato.",
		"Qualcuno dovrebbe misurare quella torre. Qualcuno l'avrà fatto, e avrà avuto una risposta che non gli è piaciuta.",
		"Quella torre pende un filo a sinistra. O pendo io. In questa via è difficile dirlo.",
	},
	["sw.muse.w19.spire.010"] = {
		"Con questa nebbia la torre dei maghi sparisce dal basso verso l'alto, finché resta solo il viola in cima, sospeso sulla città come una lanterna che nessuno regge.",
		"La nebbia si è mangiata la torre fino alle spalle. Quel che avanza galleggia sopra i tetti, una macchia viola con niente sotto.",
	},
	["sw.muse.w19.spire.011"] = {
		"La pioggia scende a lenzuola lungo la torre dei maghi, e verso la cima sembra ripensarci e andare altrove.",
		"Ogni tetto del quartiere gronda di pioggia. La punta della torre è asciutta. Ho smesso di aspettarmi che qualcuno lo spieghi.",
	},
	["sw.muse.w19.spire.012"] = {
		"piega indietro la testa per seguire la torre dei maghi oltre i tetti, e deve distogliere lo sguardo prima di arrivare in cima.",
		"rovescia la testa all'indietro per abbracciare tutta l'altezza del Wizard's Sanctum, poi si massaggia la nuca e lascia perdere a metà.",
		"segue due corvi che risalgono la torre dei maghi finché non deviano, molto prima della cima, come se ci avessero ripensato.",
	},
	["sw.muse.w19.spire.013"] = {
		"Qui nel Mage Quarter tutti danno indicazioni partendo dalla torre: due strade dopo, sulla sinistra, sotto, se ti va male.",
		"Chiedi la strada da queste parti e ogni risposta comincia dalla torre. Dietro la torre, accanto alla torre. Nel Mage Quarter è l'unica bussola di cui ci si fida.",
		"Qui ogni via piega un po' verso la torre, come le piante verso una finestra. Nel quartiere nessuno sa dire se sia stato voluto.",
	},
	["sw.muse.w19.spire.014"] = {
		"I maghi di quella torre sono figli e figlie di Stormwind vestiti di viola. Quando ci azzeccano, il regno sta più dritto; quando sbagliano, è la nostra strada che fuma.",
		"Noi umani abbiamo sempre allungato la mano un po' troppo. La torre è solo la parte di noi che lo fa apposta, e prende appunti.",
	},
	["sw.muse.w19.spy.001"] = {
		"Chiedi a tre persone nell'Old Town dove lo SI:7 tiene la sua porta. Una indica, una alza le spalle, e la terza ti chiede perché vuoi saperlo. È la terza quella da ricordare.",
		"C'è un modo facile per trovare lo SI:7: chiedine ad alta voce nell'Old Town e aspetta. Ti trova lui, di solito prima della fine della strada.",
		"Alla domanda su dove sia lo SI:7, nell'Old Town, si risponde soprattutto con un improvviso interesse per le proprie scarpe.",
	},
	["sw.muse.w19.spy.002"] = {
		"nota un uomo in un cappotto anonimo che legge un avviso affisso molto più a lungo di quanto servirebbe a chiunque, e se ne va prima che finisca.",
		"passa accanto a un tale che studia con grande devozione un foglio inchiodato a un palo. Annuncia una capra smarrita. Lui ci è sopra da un bel pezzo.",
	},
	["sw.muse.w19.spy.003"] = {
		"Nell'Old Town c'è una soglia davanti alla quale la gente passa un po' più in fretta, con gli occhi sui ciottoli. Chiedi perché e ti guardano sinceramente perplessi. I loro piedi sanno qualcosa che loro non sanno.",
		"Nessuno ti dirà quale porta dell'Old Town sia dello SI:7. Però guarda dove la folla accelera senza volerlo, e ci vai vicino.",
	},
	["sw.muse.w19.spy.004"] = {
		"Lo SI:7? Mai sentito nominare. Pare che da queste parti sia la risposta giusta.",
		"Cos'è lo SI:7? Appunto. Nessuno lo sa, e nessuno lo chiede due volte.",
		"Spie? A Stormwind? Non saprei. Nessuno saprebbe. Il bello è tutto lì.",
	},
	["sw.muse.w19.spy.005"] = {
		"C'è un uomo, nell'Old Town, che ripara la stessa ruota di carro contro lo stesso muro da che ci si ricordi, e la ruota non sembra mai diventare più rotonda.",
		"Una ruota di carro, un muro, un uomo paziente con un mazzuolo, e la ruota mai più vicina alla fine. Qualcuno nell'Old Town è pagato per sembrare occupato, e l'aria ce l'ha perfetta.",
	},
	["sw.muse.w19.spy.006"] = {
		"L'Old Town spettegola su tutti, a ogni ora. Per una spia dev'essere come nascondersi in un nugolo di storni: troppo rumore per distinguere una voce.",
		"In un quartiere dove tutti bisbigliano, un bisbiglio in più passa inosservato. Lo SI:7 non poteva scegliersi un vicinato migliore.",
		"Il posto migliore per tenere un segreto è una strada che ne è già piena. L'Old Town è quella strada.",
	},
	["sw.muse.w19.spy.007"] = {
		"alza lo sguardo verso una finestra sopra il vicolo, aperta esattamente di un palmo, né più né meno, come ogni volta che qualcuno l'ha guardata.",
		"nota un'imposta, in una fila di imposte chiuse, lasciata socchiusa per la larghezza di un dito, e l'ombra di qualcuno seduto immobile dietro.",
	},
	["sw.muse.w19.spy.008"] = {
		"Ogni faccia di questa città potrebbe essere dello SI:7. La maggior parte no. Qui, nella capitale del nemico, 'la maggior parte' non è una parola che consola.",
		"C'è gente, nell'Old Town, il cui unico mestiere è accorgersi di qualcuno come me. Tengo il cappuccio dritto e il passo noioso.",
	},
	["sw.muse.w19.spy.009"] = {
		"I bambini dell'Old Town giocano allo SI:7, e il gioco non comincia mai: la prima regola è che nessuno deve sapere chi sta giocando.",
		"Un gruppo di ragazzini giocava alle spie vicino al canale. Vinceva, avevano deciso, chi nessuno si ricordava di aver visto. La discussione è andata avanti a lungo.",
	},
	["sw.muse.w19.spy.010"] = {
		"Dev'essere un mestiere noioso, come lo pratica lo SI:7: una soglia, una lunga attesa, un'altra soglia. Le canzoni tutto questo lo tralasciano.",
		"Lo spionaggio, se le voci dell'Old Town dicono il vero, è soprattutto l'arte di annoiarsi in pubblico senza averne l'aria.",
	},
	["sw.muse.w19.spy.011"] = {
		"Col re scomparso e un ragazzo che tiene il sigillo, qualcuno in questa città deve pur sapere le cose. Direi che quel qualcuno lavora dall'Old Town, e dorme pochissimo.",
		"Un trono vuoto rende nervoso un regno. E i regni nervosi si appoggiano soprattutto a chi non si vede, a quelli dietro la porta dell'Old Town che non esiste.",
	},
	["sw.muse.w19.spy.012"] = {
		"sente tre note fischiate piano da qualche punto sopra il vicolo, e un attimo dopo altre tre in risposta, più lontane. Nessun altro in strada alza la testa.",
		"coglie un breve fischio da un tetto e la sua eco da un altro, troppo preciso per essere un uccello, e nota che la gente intorno finge di non aver sentito.",
	},
	["sw.muse.w19.spy.013"] = {
		"Lo SI:7 tiene al sicuro il nostro regno, lo dicono tutti. Ne sono {g:grato|grata}. Solo, preferirei esserlo dall'altra parte della città.",
		"La nostra gente ha creato lo SI:7 perché il resto del regno potesse dormire tranquillo. Io dormo benissimo. Solo, dopo una domanda scomoda, non mi trattengo nell'Old Town.",
	},
	["sw.muse.w19.spy.014"] = {
		"Se qualcuno dello SI:7 sta ascoltando: sono dalla vostra parte, e lascio buone mance.",
		"Chiunque mi stia seguendo, tanto vale che mi porti le borse.",
		"Se qualcuno prende appunti su di me, scriva pure che ho salutato tutti con garbo.",
	},
	["sw.muse.w19.spy.015"] = {
		"Ho incrociato qualcuno a un angolo un attimo fa. Cappotto, cappello, faccia. Non ricordo niente di nessuno dei tre, e nell'Old Town questa è già una descrizione.",
		"La cosa più memorabile di certa gente dell'Old Town è quanto in fretta te la dimentichi. Ho idea che ci vogliano anni di esercizio.",
	},
	["sw.muse.w19.stall.001"] = {
		"Ogni bottega di Stormwind ha il suo modo di aprire: un'imposta sbattuta in su, una scopa sulla soglia, un gatto fatto uscire, il bollitore messo sul fuoco. Una strada si impara dai suoi rumori d'apertura.",
		"I bottegai aprono sempre nello stesso ordine: imposte, scopa, insegna, e poi una lunga occhiata su e giù per la strada per vedere chi ha aperto prima.",
	},
	["sw.muse.w19.stall.002"] = {
		"Ogni bottegaio di questa città ti dice «per te, un prezzo speciale». Devo ancora conoscere quello a cui tocca il prezzo normale.",
		"«Un prezzo speciale, solo per te.» L'ho sentito in quattro botteghe della stessa strada. Comincio a sentirmi {g:specialissimo|specialissima}.",
		"Prezzo speciale, prezzo speciale. Se a tutti tocca quello speciale, quale disgraziato paga quello normale?",
	},
	["sw.muse.w19.stall.003"] = {
		"Al Gilded Rose c'è una poltrona accanto al focolare dove nessuno resta seduto a lungo. Non perché sia dura: perché è morbida, e la città ha commissioni che aspettano.",
		"La poltrona migliore del Gilded Rose è quella accanto al fuoco, e il guaio è che lo sa. Ti siedi per un attimo e l'attimo si ammorbidisce ai bordi.",
	},
	["sw.muse.w19.stall.004"] = {
		"si ferma a guardare un bottegaio che scrive col gesso i nuovi prezzi su una lavagna, ne cancella uno con la manica e lo riscrive un rame più alto.",
		"indugia accanto alla porta di una bottega dove una tavoletta scritta a mano viene corretta per la terza volta, il gesso che stride verso l'alto.",
	},
	["sw.muse.w19.stall.005"] = {
		"Qua e là una bottega resta sbarrata, sotto un'insegna sbiadita. I vicini dicono che il padrone andò a ovest a comprare grano a buon prezzo e non tornò più su per la strada.",
		"In più di una via c'è un'imposta che non si apre da un pezzo. Chiedi alla porta accanto e senti la stessa storia: un carro per il Westfall in cerca di grano a poco, e la strada si è tenuta il carro.",
	},
	["sw.muse.w19.stall.006"] = {
		"Castagne calde in un cartoccio, uno spicchio di formaggio e un bicchiere di sidro da un carretto. Chi ha bisogno di una locanda?",
		"Formaggio da un carretto, sidro da quello dopo, castagne da un ragazzo col braciere. Stormwind ti sfama, se non smetti di camminare.",
	},
	["sw.muse.w19.stall.007"] = {
		"I bottegai, qui, giurano di distinguere chi compra da chi curiosa dal suono del campanello sopra la porta. Chi compra spinge. Chi curiosa lascia che la porta chieda il permesso.",
		"Chiedi a un bottegaio qualsiasi: il campanello sopra la porta racconta tutto. Uno scampanellio deciso vuol dire monete; un tintinnio timido vuol dire «do solo un'occhiata».",
		"Un bottegaio alza gli occhi allo scampanellio della porta e ha già deciso: compratore, curioso o ladro. Sbaglia di rado, e mai sul ladro.",
	},
	["sw.muse.w19.stall.008"] = {
		"si sofferma davanti a una vetrina dove un solo paio di guanti pregiati riposa sul velluto, senza prezzo, il che dice tutto sul prezzo.",
		"passa davanti a una vetrina con un unico anello d'argento su un cuscino e nessun cartellino: segno sicuro di un prezzo che è meglio non chiedere.",
	},
	["sw.muse.w19.stall.009"] = {
		"Dietro metà dei banchi di Stormwind c'è un bambino che fa i conti su una lavagnetta e impara il mestiere di famiglia nel modo lento, una somma dopo l'altra.",
		"La figlia di un bottegaio, seduta sul banco, somma il conto di un cliente sulle dita, più svelta di suo padre col registro. Quella bottega sarà in buone mani.",
	},
	["sw.muse.w19.stall.010"] = {
		"In una città piena di viaggiatori può mancare di tutto, ma non il lavoro ai calzolai. Il mondo si mangia prima di tutto gli stivali.",
		"I calzolai devono essere la gente più ricca di Stormwind. Ogni strada del regno consuma suole e manda il conto ai loro banchetti.",
	},
	["sw.muse.w19.stall.011"] = {
		"Mai fidarsi di una bottega con la polvere sul banco. E nemmeno di una che non ne ha un granello. Stormwind è piena di tutte e due.",
		"Banco polveroso, bottegaio addormentato. Banco lucido, bottegaio sveglio. Scegli il tuo pericolo.",
		"Bottega pulita, venditore furbo. Bottega polverosa, venditore pigro. In tutti e due i casi, conta il resto.",
	},
	["sw.muse.w19.stall.012"] = {
		"si china sotto una tenda bassa a righe e, dall'altra parte, si vede offrire un cappello.",
		"scansa una pila di ceste che invade la strada, poi una seconda pila, poi un bottegaio che sembrava aspettare proprio quel momento.",
	},
	["sw.muse.w19.stall.013"] = {
		"Alcuni bottegai del Trade District hanno ancora Lordaeron nella voce. Delle botteghe lasciate lassù non parlano: tengono solo pulitissime quelle nuove.",
		"Dietro qualche banco si sente l'accento del nord: gente che aveva bottega in Lordaeron prima della pestilenza. Non ne parlano mai. I loro banchi brillano come se lucidarli potesse impedire che qualcosa succeda due volte.",
	},
	["sw.muse.w19.stall.014"] = {
		"La bottega di un candelaio ha lo stesso odore in ogni epoca del mondo: sego, stoppino e pazienza. I re vanno e vengono; le candele non se ne accorgono.",
		"Passi davanti alla porta di un candelaio e non sei da nessuna parte, in nessun anno. Alla cera non è mai importato chi siede sul trono.",
	},
	["sw.muse.w19.stall.015"] = {
		"Nessun mercante di questa città mi ha chiesto dove siano state coniate le mie monete. L'oro non sceglie da che parte stare. Meglio che non lo ammiri troppo.",
		"I bottegai mi sorridono come sorriderebbero a chiunque. Finché la moneta è buona, lo sono anch'io. Strana cosa da imparare dietro le mura nemiche.",
	},
	["sw.muse.w19.stall.016"] = {
		"rigira una mela su un banco della frutta in cerca dell'ammaccatura, e trova l'occhio della venditrice già puntato lì.",
		"solleva una pera dal mucchio per controllarne il fondo, incrocia lo sguardo piatto del venditore e la rimette esattamente dov'era.",
	},
	["sw.muse.w19.stall.017"] = {
		"passa accanto a una fila di stivali di viaggiatori lasciati fuori dalla porta di una locanda per la pulizia, le punte infangate tutte rivolte verso la strada come impazienti di ripartire.",
		"dà un'occhiata alla fila di stivali lasciati fuori da una locanda per il ragazzo che li lucida, ogni paio incrostato della terra di una strada diversa.",
	},
	["sw.muse.w19.stall.018"] = {
		"si vede offrire una scaglia di formaggio sulla punta di un coltello da un formaggiaio che, in tutta la folla, sembra aver puntato solo quella faccia.",
		"si ritrova sotto il naso un assaggio di salsiccia affumicata, offerto da un venditore col sorriso paziente di chi sa già come andrà a finire.",
	},
	["sw.muse.w19.statue.001"] = {
		"I piccioni hanno capito una cosa che gli scultori non avevano previsto: un eroe di pietra ha spalle comodissime per appollaiarsi.",
		"Qualunque cosa le statue della valle debbano ricordare, i piccioni hanno un parere tutto loro, e lo lasciano sugli elmi.",
		"Ogni statua della valle porta un piccione o due come una mostrina. Gli eroi non si lamentano mai: è l'unica cosa che hanno in comune con le guardie.",
	},
	["sw.muse.w19.statue.002"] = {
		"Resta abbastanza a lungo sotto una delle grandi statue e sentirai due viaggiatori chiamarla con nomi diversi, e un terzo dare torto a entrambi. La statua non ha mai chiuso la questione.",
		"Chiedi a tre persone alla porta chi dovrebbe essere la figura di pietra a sinistra: avrai tre nomi e un litigio. Ho smesso di chiedere; il litigio mi piace di più.",
		"Sui nomi delle statue alla porta nessuno è d'accordo, e alla città va bene così: qualunque nonno di Stormwind può indicarne una e giurare di aver servito ai suoi ordini.",
	},
	["sw.muse.w19.statue.003"] = {
		"si ferma ai piedi di una statua e studia i segni dello scalpello lungo l'orlo del mantello di pietra, piccoli, pazienti, ognuno al suo posto.",
		"lascia perdere il volto severo di pietra e guarda il basamento, dove un tagliapietre ha lasciato i solchi leggeri di uno scalpello che nessuno doveva notare.",
		"si accovaccia a osservare la base di una statua, dove lo stivale di pietra si salda al basamento così pulito che è difficile dire dove uno scalpellino abbia smesso e il successivo abbia cominciato.",
	},
	["sw.muse.w19.statue.004"] = {
		"Il posto migliore della città: il gradino del basamento di una statua. Gratis, e la compagnia non ti interrompe mai.",
		"Ho pranzato ai piedi di un eroe. L'eroe non ha chiesto nemmeno un boccone, cosa che non posso dire delle guardie.",
	},
	["sw.muse.w19.statue.005"] = {
		"Nessuna statua guarda la strada. Hanno gli occhi fissi da qualche parte sopra la folla, su quello che gli scultori pensavano dovesse guardare un eroe.",
		"Le grandi figure lungo il ponte non incrociano mai lo sguardo di nessuno. Guardano oltre la folla, lontano, come chi ha di meglio da fare e troppa educazione per dirlo.",
		"Nella Valley of Heroes nessuno è mai riuscito a farsi guardare da una statua. Fissano un punto sopra tutte le teste, qualcosa che il resto della città non vede.",
	},
	["sw.muse.w19.statue.006"] = {
		"C'è un vecchio soldato che attraversa il ponte quasi tutti i giorni e non alza mai gli occhi sulle statue. Qualunque cosa sappia degli eroi, a loro non la dice.",
		"Sotto le grandi statue quasi tutti rallentano. Ho visto un uomo con l'andatura zoppa da soldato accelerare, lo sguardo sul selciato, come se una di loro potesse chiamarlo per nome.",
		"Le statue dicono una cosa a chi gli eroi li ha letti nei libri, e un'altra a chi ci è stato accanto. Si capisce da chi alza gli occhi.",
	},
	["sw.muse.w19.statue.007"] = {
		"guarda un bambino che salta su un basamento, dà una pacca a uno stivale di pietra per fortuna e scappa via prima che la guardia più vicina abbia finito di aggrottare la fronte.",
		"nota la punta di un enorme stivale di pietra consumata e lucida, levigata da tutte le mani di passaggio che volevano un po' di fortuna.",
	},
	["sw.muse.w19.statue.008"] = {
		"Avvicinati abbastanza alle statue e gli eroi spariscono. Restano uno stivale enorme, uno stinco lunghissimo e il sotto di un mento.",
		"Dalla strada vedi un eroe. Dai piedi del basamento vedi soprattutto un ginocchio. La grandezza, a quanto pare, dipende da dove ti metti.",
		"Quelle statue sono fatte per essere guardate dall'altro capo del ponte. Da vicino un eroe è più che altro una fibbia di cintura spropositata.",
	},
	["sw.muse.w19.statue.009"] = {
		"Nelle pieghe dei mantelli delle statue è comparso il lichene, un verde pallido che ci metterà una vita a salire fino alle spalle. Anche la pietra invecchia; solo che non ha fretta.",
		"Nell'incavo di un gomito di pietra, vicino alla porta, c'è del muschio. Dagli tempo e gli eroi vestiranno di verde, che alla città piaccia o no.",
	},
	["sw.muse.w19.statue.010"] = {
		"Faccio sempre un cenno alle statue quando passo. Qualcuno deve pur farlo, e un cenno se lo sono guadagnato.",
		"I miei rispetti, lassù, a tutti quanti. Chiunque foste.",
		"Non fate caso a me, sono solo di passaggio. Voi continuate pure a essere grandiosi.",
	},
	["sw.muse.w19.statue.011"] = {
		"Qualcuno lascia dei fiori ai piedi di un basamento, sempre lo stesso. Non ho mai visto chi. Nemmeno la statua lo dice.",
		"Fiori freschi alla base di una statua, legati con lo spago, senza biglietto. Chiunque li porti, non ha bisogno che la città sappia per quale eroe è in lutto.",
		"Sotto una statua c'è un mucchietto di cose che nessuno tocca: un fiore ormai bruno, un bottone, un foglietto piegato. Gli spazzini ci girano intorno.",
	},
	["sw.muse.w19.statue.012"] = {
		"attraversa le lunghe ombre che le statue stendono sul ponte, fresco, caldo, fresco, caldo, come passare davanti a una fila di porte aperte.",
		"passa dall'ombra di una statua al sole e poi nell'ombra della successiva, sul ponte rigato dalle sagome degli eroi.",
	},
	["sw.muse.w19.statue.013"] = {
		"Bel lavoro, le statue: questo agli umani glielo concedo. Le giunture alle caviglie sono pulite. Chi le ha scolpite aveva la pazienza di un nano e la fretta di un umano, e ha vinto la pazienza.",
		"Ho passato più tempo di quanto ammetterei a studiare come poggiano le statue sui basamenti. Perni non se ne vedono. Pietra buona, messa a piombo. In questa città qualcuno ha imparato dalla gente giusta.",
	},
	["sw.muse.w19.statue.014"] = {
		"Figure di pietra enormi ai due lati del ponte, gli eroi del popolo di cui sto attraversando la capitale. Tengo gli occhi bassi. Le statue non fanno la spia alle guardie, ma non voglio rischiare.",
		"Ogni statua qui si è guadagnata la fama contro l'Orda, probabilmente. Sotto di loro tengo un passo educato e calcolo quanto manca all'altra parte.",
	},
	["sw.muse.w19.statue.015"] = {
		"In questa città c'è qualcuno che di mestiere sale su una scala e lava la faccia a un eroe. Spero lo paghino a faccia.",
		"Vicino alla porta c'era un uomo su una scala che strofinava un naso di pietra con spazzola e secchio. Anche la gloria ha bisogno di manutenzione, come tutto.",
		"Pure gli eroi hanno bisogno di lavarsi la faccia. A Stormwind ci pensano una scala, un secchio e un uomo molto paziente.",
	},
	["sw.muse.w19.statue.016"] = {
		"guarda la pioggia scorrere su un grande volto di pietra e gocciolare regolare dal mento, come se all'eroe avessero appena dato una brutta notizia.",
		"osserva l'acqua piovana raccogliersi nelle pieghe del mantello di pietra di una statua e scendere dall'orlo in un filo sottile e paziente sul basamento.",
	},
	["sw.muse.w19.statue.017"] = {
		"Grandi, eh? Ogni volta che ci passo sotto mi sembra di dover chiedere scusa per qualcosa.",
		"Quando passo sotto quelle statue controllo sempre di avere gli stivali puliti. Nessuno me l'ha detto. Hanno solo l'aria di chi se ne accorgerebbe.",
	},
	["sw.muse.w19.steps.001"] = {
		"Ai musicanti di strada è vietato suonare sui gradini della cattedrale, dicono le guardie. Così si piazzano sul selciato proprio in fondo, a un dito dal primo scalino, e suonano inni. Nessuno trova una regola che lo impedisca.",
		"Sui gradini della cattedrale la musica è vietata, brontolano i violinisti. Così uno suona ai piedi della scalinata, solo inni, e i sacerdoti hanno smesso di fingere che gli dia fastidio.",
	},
	["sw.muse.w19.steps.002"] = {
		"La panchina migliore di Stormwind? I gradini della cattedrale. Portati un pasticcio: ai sacerdoti le briciole non danno fastidio.",
		"Metà dei pasticci di questa città finisce mangiata sui gradini della cattedrale. I sacerdoti scavalcano le briciole con grande dignità.",
	},
	["sw.muse.w19.steps.003"] = {
		"guarda due bambini che fanno gareggiare pezzi di corteccia nella fontana della piazza, strillando e schizzando, mentre un sacerdote sui gradini si sforza moltissimo di non vedere.",
		"indugia sul bordo della fontana, dove una piccola flotta di barchette di pergamena piegata sta naufragando sotto lo zampillo, sorvegliata da un piccolo ammiraglio serissimo.",
	},
	["sw.muse.w19.steps.004"] = {
		"Le coppie si danno appuntamento alla fontana della Cathedral Square. È difficile cominciare una lite davanti alla cattedrale, e ancora più difficile restare arrabbiati su quei gradini.",
		"Gli innamorati di questa città scelgono la fontana della cattedrale per i discorsi difficili. Qualcosa in tutta quell'altezza sopra le teste tiene basse le voci.",
		"Nessuno alza la voce con chi ama vicino alla fontana della cattedrale. Per questo lì si dicono tante cose dure, piano, con l'acqua a coprire il peggio.",
	},
	["sw.muse.w19.steps.005"] = {
		"La fioraia ai piedi dei gradini della cattedrale non chiede mai che cosa ti serva. Ti guarda in faccia e ti porge gigli bianchi o rose gialle, e non sbaglia mai.",
		"Funerale o matrimonio, la donna dei fiori vicino alla cattedrale lo capisce prima che tu apra bocca. Bianchi per l'uno, gialli per l'altro, e lo stesso prezzo in entrambi i casi.",
	},
	["sw.muse.w19.steps.006"] = {
		"si toglie di mezzo davanti a un corteo nuziale che scende i gradini della cattedrale in un turbine di petali, metà dei quali finisce a galleggiare nella fontana.",
		"guarda una coppia appena sposata scendere i gradini della cattedrale sotto un nugolo di petali, la sposa che si regge l'orlo, lo sposo che si regge alla sposa.",
	},
	["sw.muse.w19.steps.007"] = {
		"I pellegrini che arrivano alla cattedrale si siedono quasi sempre sul gradino più basso prima di entrare. Dopo tutte quelle miglia, dicono, bisogna arrivare con i piedi prima di arrivare con il resto.",
		"Guarda un pellegrino qualsiasi davanti alla cattedrale: prima si siede sul gradino più basso, slaccia uno stivale, guarda in alto a lungo. Entrare può aspettare un po' più di quanto abbia aspettato la strada.",
		"L'arrivo di un pellegrino alla cattedrale ha due parti: sedersi sullo scalino in fondo, e tutto il resto. A volte la prima dura di più.",
	},
	["sw.muse.w19.steps.008"] = {
		"Certi pellegrini della cattedrale vengono da Lordaeron, da città che non esistono più. Pregano per dei luoghi, non per delle persone. È un suono che non avevo mai sentito.",
		"Ci sono profughi del nord, sui gradini della cattedrale, che, se chiedi da dove vengano, dicono ancora il nome della loro città, come se bastasse il nome a tenere su le mura.",
	},
	["sw.muse.w19.steps.009"] = {
		"Ci vediamo alla fontana della cattedrale. La trovano tutti, e lì non hanno mai derubato nessuno.",
		"Allora alla fontana della cattedrale. Se faccio tardi, siediti sui gradini. Qualcuno ti darà della minestra.",
		"Se mi perdi, prova alla fontana della cattedrale. Qualunque bambino in città ti sa indicare la strada.",
	},
	["sw.muse.w19.steps.010"] = {
		"si ferma ai piedi della cattedrale mentre la pioggia scivola giù per i gradini in una cascata sottile e vitrea, con i mendicanti rannicchiati sotto l'arco della porta, in alto.",
		"guarda la pioggia trasformare i gradini della cattedrale in una lunga scala d'acqua corrente, e un accolito solitario che la scende con la tonaca sollevata e la dignità ancora più in alto.",
	},
	["sw.muse.w19.steps.011"] = {
		"Quando i paladini partono per il nord si radunano prima sui gradini della cattedrale, si inginocchiano una volta, si rialzano insieme e se ne vanno. L'Alleanza manda in giro le sue preghiere a piedi.",
		"I paladini in partenza per il nord prendono congedo sui gradini della cattedrale: un ginocchio, una parola, un ultimo sguardo alle porte. Poi giù verso il portale in buon ordine, e tutta l'Alleanza in debito con loro.",
	},
	["sw.muse.w19.steps.012"] = {
		"C'è un venditore di salsicce che ogni settimana sposta il carretto un po' più vicino alla cattedrale. I sacerdoti lo rimettono indietro. Nessuna delle due parti ne ha mai fatto parola.",
		"Nella Cathedral Square si combatte una guerra silenziosa tra i sacerdoti e un carretto di pasticci. Il carretto striscia verso i gradini; gli accoliti lo riportano indietro. Nessuno alza la voce.",
		"Ogni settimana il carretto delle salsicce si piazza un passo più vicino ai gradini della cattedrale, e ogni settimana un accolito lo riporta indietro senza una parola. Potrebbe essere l'assedio più lungo di Stormwind.",
	},
	["sw.muse.w19.steps.013"] = {
		"nota un pellegrino impolverato seduto sul bordo della fontana con i piedi nudi nell'acqua e gli occhi chiusi, mentre un accolito gli gira intorno cercando di decidere se protestare.",
		"passa accanto a un pellegrino dalla barba grigia che tiene a bagno nella fontana i piedi stanchi del viaggio, il bastone sulle ginocchia, con l'aria di chi ha già ricevuto ciò per cui era venuto.",
	},
	["sw.muse.w19.steps.014"] = {
		"Da quando ho attraversato la piazza, tre sacerdoti si sono offerti di pregare per me. Devo avere un aspetto peggiore di come mi sento.",
		"Ogni sacerdote su questi gradini vuole mettere una buona parola con la Luce per me. Ho davvero una cera così brutta?",
	},
	["sw.muse.w19.steps.015"] = {
		"Ogni strada che sbocca nella Cathedral Square sembra sollevarti il mento mentre ne esci. Chi ha disegnato la piazza sapeva esattamente cosa voleva da un collo.",
		"Entra nella Cathedral Square da qualunque lato e gli occhi vanno in alto prima che tu abbia deciso niente. Non è fede: è buona muratura.",
		"La Cathedral Square è fatta per farti alzare lo sguardo. Quando gli occhi tornano giù, di solito non ricordi più per cosa ce l'avevi con il mondo.",
	},
	["sw.muse.w19.steps.016"] = {
		"guarda l'ombra del campanile della cattedrale scivolare sulla piazza come la lancetta di un orologio lento, scavalcando mendicanti e pellegrini senza distinzione.",
		"segue la lunga ombra della cattedrale che striscia sul selciato, rinfresca la fontana e lascia i gradini in pieno sole.",
		"nota quanto si è spostata l'ombra della cattedrale dall'ultima campana: ora è stesa sulla fontana come un panno scuro.",
	},
	["sw.muse.w19.stockade.001"] = {
		"Le guardie fuori dallo Stockade stanno girate verso la porta invece che verso la strada. Non serve sapere altro su come vanno le cose là dentro.",
		"Quasi tutte le guardie di questa città sorvegliano la strada. Quelle dello Stockade sorvegliano una porta, con grande impegno, come se potesse tentare qualcosa.",
		"Se vuoi sapere quanto è sicuro lo Stockade, non chiederlo a una guardia. Guarda dove tengono gli occhi le guardie al suo ingresso. Non su di te.",
	},
	["sw.muse.w19.stockade.002"] = {
		"Una prigione costruita dagli scalpellini, e adesso mezza piena di uomini che un tempo facevano gli scalpellini. Qualcuno là sotto deve sapere esattamente quali pietre si muovono.",
		"Chiudono i Defias nello Stockade, dietro muri che forse hanno posato le loro stesse mani. Fossi il carceriere, controllerei la malta.",
	},
	["sw.muse.w19.stockade.003"] = {
		"passa accanto a una donna che aspetta vicino allo Stockade con un fagotto legato in un panno, stretto con tutte e due le mani, come se qualcuno potesse chiederle di dimostrare che è suo.",
		"nota una piccola fila nei pressi dello Stockade: una madre, un vecchio, un ragazzo, ciascuno con un pacchetto, e nessuno che guardi gli altri.",
		"vede una guardia dello Stockade prendere un pacco da una vecchia, soppesarlo in una mano e annuire, e la vecchia ringraziarla come se le avesse regalato qualcosa.",
	},
	["sw.muse.w19.stockade.004"] = {
		"Metà dei nomi nel registro dello Stockade sono falsi, mi ha confessato una guardia, e lo scrivano li annota comunque con la sua calligrafia migliore. Un nome sbagliato, scritto bene, resta pur sempre una pratica.",
		"Lo scrivano che tiene il registro dello Stockade sa che quasi tutti quei nomi sono inventati. Si limita a farseli sillabare.",
		"Ogni prigioniero dà un nome allo Stockade, e mai lo stesso due volte, dice lo scrivano. Ha cominciato a scrivere «come sopra» a margine.",
	},
	["sw.muse.w19.stockade.005"] = {
		"Nello Stockade un uomo può finirci per una pagnotta rubata. Per la paga di uno scalpellino non c'è mai finito nessuno. La legge di questa città ha una vista eccellente, e guarda soprattutto verso il basso.",
		"Rubi un prosciutto, e vedi lo Stockade. Rubi la paga di un'intera gilda, e ti invitano a cena nelle case più belle. Stessa città, stessa legge, due porte diverse.",
	},
	["sw.muse.w19.stockade.006"] = {
		"Non sono solo i prigionieri ad aver paura dello Stockade. Fra le guardie, «ti mando di turno allo Stockade» è la minaccia che raddrizza anche il più pigro.",
		"Un sergente non urla contro una guardia sciatta. Accenna, con molta gentilezza, che allo Stockade mancano braccia. La lucidatura migliora all'istante.",
		"Il posto peggiore della guardia cittadina non ha vista, né passanti, né luce del giorno. Chi ci finisce di turno ne esce strizzando gli occhi, e per un po' i colleghi sono gentili con lui.",
	},
	["sw.muse.w19.stockade.007"] = {
		"scorge un prigioniero appena rilasciato uscire nei pressi dello Stockade alle prime luci, sbattere le palpebre sulla strada vuota e restare lì a lungo, come in attesa del permesso di camminare.",
		"guarda un uomo con un piccolo sacco e la faccia pallida uscire dallo Stockade nella quiete dell'alba, guardare a destra e a sinistra, e per un po' non scegliere nessuna delle due.",
	},
	["sw.muse.w19.stockade.008"] = {
		"Se qualcuno dello Stockade cerca volontari, io ho da fare. Ho sempre da fare. Ho un'agenda fittissima di impegni altrove.",
		"Lo Stockade? Lo ammiro da qui fuori, grazie. Con la porta chiusa è bellissimo.",
	},
	["sw.muse.w19.stockade.009"] = {
		"Nello Stockade non ci sono finestre, dicono le guardie. I prigionieri tengono il conto del tempo con i pasti e i cambi della guardia, e chi è lì da più tempo smette del tutto di contarlo.",
		"Ci sono uomini, in questa città, che non sanno che ora sia, mi ha detto una guardia, se non dal passo degli stivali che vengono a darsi il cambio davanti alla loro porta.",
	},
	["sw.muse.w19.stockade.010"] = {
		"Uno scrivano si piazza su uno sgabello vicino allo Stockade e scrive suppliche per le famiglie dei prigionieri a un rame la pagina. È bravissimo. Tutti i suoi clienti sono innocenti.",
		"Vicino allo Stockade c'è uno scrivano a pagamento che scrive istanze al reggente per chi non sa farlo. Riusa le sue frasi migliori. Anche la clemenza, a quanto pare, ha il suo stile di casa.",
	},
	["sw.muse.w19.stockade.011"] = {
		"Se mi prendono in questa città, dubito che sprecherebbero per me una cella dello Stockade. È l'unica consolazione che trovo nel pensiero, e non è granché.",
		"Lo Stockade è per i ladri di casa loro. Qualunque cosa tengano in serbo per chi viene da dove vengo io, non ha una porta che si riapra.",
	},
	["sw.muse.w19.stockade.012"] = {
		"si fa da parte per due guardie che accompagnano un prigioniero imbronciato verso lo Stockade, mentre lui insiste per tutto il tragitto che stanno facendo il giro lungo.",
		"lascia il passo a una scorta di guardie con un brontolone dalle mani legate, che si ferma quanto basta per spiegare ai curiosi che conosce una strada molto più breve per lo Stockade.",
	},
	["sw.muse.w19.stockade.013"] = {
		"C'è un fabbro nel Dwarven District che fa ceppi per la guardia cittadina. Dice che gli affari non sono mai andati così bene, e lo dice come chi vorrebbe che andassero peggio.",
		"Qualcuno dovrà pur forgiare i ferri che usa lo Stockade. Il nano che lo fa li tiene in fondo alla bottega, sotto un sacco, come se facessero vergognare il resto del suo lavoro.",
	},
	["sw.muse.w19.stockade.014"] = {
		"Quasi tutti quelli che stanno nello Stockade sono dei nostri: figli di contadini del Westfall, braccianti rimasti senza niente, qualcuno che ha creduto al discorso sbagliato. Chiuderli dentro è la parte facile dell'essere un regno.",
		"Ladri umani in una prigione umana, messi lì da guardie umane. Qualunque cosa sia andata storta in questo regno, nessuno è dovuto venire da fuori per farla.",
	},
	["sw.muse.w19.stockade.015"] = {
		"Qualcuno nello Stockade sta passando una giornata peggiore della mia. Lo trovo stranamente consolante.",
		"Comunque vada, almeno non sono nello Stockade. Asticella bassa. Ma sempre asticella.",
	},
	["sw.muse.w19.tavern.001"] = {
		"Dietro il banco del Pig and Whistle è appesa una tavola di debiti scritti col gesso. Certi nomi sono lì da così tanto che il gesso è diventato un fantasma sul legno.",
		"La lavagna dei conti non pagati della taverna è, a modo suo, una storia dell'Old Town: chi ha bevuto, chi ha promesso, e chi se n'è andato dalla porta sul retro.",
	},
	["sw.muse.w19.tavern.002"] = {
		"Sopra il focolare della taverna c'è una fila di boccali capovolti. I clienti fissi non li spiegano mai, e nessuno ha bisogno di chiedere due volte.",
		"Un boccale rovesciato su una mensola di taverna vuol dire che qualcuno non verrà più a prenderlo. Il Pig and Whistle ha una mensola lunga.",
	},
	["sw.muse.w19.tavern.003"] = {
		"si ferma mentre la porta del Pig and Whistle si spalanca, lascia uscire una folata di canzoni, fumo e litigi, e si richiude su tutti e tre.",
		"sente aprirsi alle spalle la porta della taverna: un'ondata di rumore, un odore di montone, poi il chiavistello, e il vicolo torna quieto.",
	},
	["sw.muse.w19.tavern.004"] = {
		"Al Pig and Whistle la gente parla un po' più forte che fuori, e un po' più sinceramente. Sarà la birra, o il soffitto basso, o tutt'e due.",
		"Ogni taverna o abbassa le voci o le alza. Quella dell'Old Town le alza, e verso il terzo boccale le bugie peggiorano a vista d'occhio.",
	},
	["sw.muse.w19.tavern.005"] = {
		"Quel che c'è in pentola e quel che c'è nel barile. Non sono {g:schizzinoso|schizzinosa}, e il cuoco nemmeno, credo.",
		"Uno di quelli, grazie. No, non dirmi cos'è.",
		"Qualcosa di caldo, qualcosa da bere e uno sgabello che non balli. Mi accontento di due su tre.",
	},
	["sw.muse.w19.tavern.006"] = {
		"Le canzoni al Pig and Whistle cominciano a un tavolo, attraversano la sala raccogliendo voci e muoiono in fondo, dove nessuno sa la seconda strofa.",
		"Qualcuno attacca un motivo in un angolo della taverna, la sala si unisce al ritornello, e la strofa dopo si sfascia in una risata. Lo spettacolo è tutto lì, ogni volta.",
	},
	["sw.muse.w19.tavern.007"] = {
		"guarda due veterani a un tavolo vicino che rigiocano una vecchia battaglia con saliere e croste di pane, litigando su dove fosse il fiume.",
		"lancia un'occhiata a un tavolo dove un vecchio soldato schiera una fila di boccali contro una sola crosta di pane, e la crosta, a quanto pare, sta vincendo.",
	},
	["sw.muse.w19.tavern.008"] = {
		"È tardi, e dalla parte dell'Old Town una taverna è ancora in pieno fermento: una canzone testarda che nessuno ha il cuore di finire.",
		"Il resto della città è andato a dormire. Il Pig and Whistle, a sentirlo, ha deciso di no.",
	},
	["sw.muse.w19.tavern.009"] = {
		"Mezza Old Town non riesce a passare davanti al Pig and Whistle senza fischiettare. L'altra metà ha imparato a detestare la prima.",
		"Passa davanti alla taverna e qualcuno vicino a te fischietterà: è praticamente legge. Mi ci sono {g:sorpreso|sorpresa} anch'io, e non ne vado {g:fiero|fiera}.",
		"Chiami una taverna come un maiale e un fischietto, e poi non puoi lamentarti se tutto il vicolo ti fischietta davanti alla porta. Ho il sospetto che al padrone piaccia.",
	},
	["sw.muse.w19.tavern.010"] = {
		"In un angolo di taverna c'è sempre qualcuno che ordina due boccali e ne beve uno. L'oste li riempie tutti e due senza una parola.",
		"Un uomo da solo a un tavolino, un secondo boccale pieno davanti allo sgabello vuoto. Nessuno ci si siede. A nessuno verrebbe in mente.",
	},
	["sw.muse.w19.tavern.011"] = {
		"Al Pig and Whistle una buona chiacchiera paga un boccale, e una ottima paga il giro. Una verità noiosa non paga niente.",
		"Le voci sono la seconda moneta della taverna. Ho visto un soldato pagarsi la cena col nome di un nuovo sergente, e ricevere pure il resto.",
		"In taverna le informazioni costano poco e i pettegolezzi ancora meno. Il difficile è capire quale dei due ti si è appena seduto accanto.",
	},
	["sw.muse.w19.tavern.012"] = {
		"segue l'odore di cipolle e salsiccia fritte giù per il vicolo fino alla fonte, la finestra di una cucina di taverna tenuta aperta da un mestolo.",
		"indugia accanto alla finestra della cucina, sul retro della taverna, dove un cuoco con gli avambracci grossi come prosciutti gira qualcosa che sfrigola senza mai alzare gli occhi.",
	},
	["sw.muse.w19.tavern.013"] = {
		"Allora un giro al Pig and Whistle. Qualcuno dovrebbe bere alla salute del reggente: ha l'aria di averne bisogno.",
		"Se offro io, si va al Pig and Whistle. Se offri tu, da qualche parte dove le sedie sono tutte uguali.",
	},
	["sw.muse.w19.tavern.014"] = {
		"La pioggia riempie la taverna dell'Old Town di gente entrata solo per asciugarsi. Tre boccali dopo si stanno ancora asciugando, con grande scrupolo.",
		"Ogni acquazzone è un buon affare per il Pig and Whistle. Nessuno entra per la birra, figuriamoci. Solo per il tetto.",
	},
	["sw.muse.w19.tavern.015"] = {
		"Chi tiene la taverna conosce ogni cliente fisso dalla bevanda e nessuno dal nome. Nell'Old Town è una forma di cortesia.",
		"Birra scura per lo sgabello d'angolo, sidro alla finestra, due di quella forte per l'uomo che non si toglie mai i guanti. I nomi non c'entrano.",
	},
	["sw.muse.w19.tavern.016"] = {
		"gira intorno a un uomo addormentato contro il muro della taverna, il cappello sulla faccia e un rame che qualcuno gli ha posato con garbo sulla tesa.",
		"scivola accanto a un tale accasciato sul gradino della taverna, che russa piano nel colletto, uno stivale slacciato e l'altro chissà dove.",
	},
	["sw.muse.w19.tavern.017"] = {
		"Il Pig and Whistle? Segui il canto. Se è intonato, hai sbagliato strada.",
		"Cerchi la taverna? Cammina finché senti qualcuno che perde a dadi e qualcun altro che se la gode.",
		"Quella taverna si trova facile. Segui chiunque abbia sete e un torto da raccontare.",
	},
	["sw.muse.w19.tinker.001"] = {
		"Uno gnomo armeggia a un banco fatto con due casse e una porta presa in prestito, e aggiusta serrature e lanterne per pochi rami. Il banco ha cardini in punti dove nessuno li ha chiesti.",
		"Il banco di una gnoma è una porta posata su due barili, e lei ci ha montato una morsa, una lampada su un braccio girevole e un cassetto che si apre da solo. Per sistemare una serratura chiede un rame.",
	},
	["sw.muse.w19.tinker.002"] = {
		"Una gnoma mi ha mostrato la spilla che tiene dentro il cappotto, un piccolo ingranaggio d'ottone. Di Gnomeregan, ha detto, e ha riabbottonato il cappotto.",
		"Ingranaggi d'ottone appuntati sul rovescio del bavero, mai sul dritto. Chiedi a uno gnomo di Stormwind cosa significano e sentirai il nome di una città, e subito dopo un cambio di argomento.",
		"Metà degli gnomi del Dwarven District porta addosso qualcosa di Gnomeregan dove nessuno lo vede: un ingranaggio, una rondella appesa a uno spago, la chiave di una porta che è sott'acqua, o peggio.",
	},
	["sw.muse.w19.tinker.003"] = {
		"si ferma a guardare uno gnomo che collauda un congegno sul selciato: ronza, saltella due volte e si siede, e lo gnomo prende un appunto come se fosse esattamente il piano.",
		"si scansa davanti a un piccolo arnese a molla che attraversa la strada sferragliando, inseguito dal suo gnomo, che invece di un nome gli grida dei numeri.",
		"scavalca una scatola d'ottone che ticchetta attraversando la strada su sei zampette, e un attimo dopo lo spago che, a quanto pare, la guida.",
	},
	["sw.muse.w19.tinker.004"] = {
		"Ho portato una lanterna a uno gnomo per cambiare lo stoppino. Me l'ha resa con una manovella, un'imposta e delle opinioni.",
		"Mai chiedere a uno gnomo una piccola riparazione. Non esistono: esistono solo piccoli inizi.",
		"Lo gnomo che mi ha sistemato la lampada me l'ha resa che fa quattro cose, e una di queste, mi dicono, è fare luce.",
	},
	["sw.muse.w19.tinker.005"] = {
		"Gli gnomi che insegnano ingegneria nel Dwarven District prendono umani, nani, chiunque abbia monete e dita ferme. Alla seconda settimana gli allievi hanno tutti le stesse sopracciglia bruciacchiate.",
		"A Stormwind gli allievi ingegneri si riconoscono subito: inchiostro sulle dita, una bruciatura sul pollice e il vizio di guardare una porta contandone le viti.",
		"Gli apprendisti ingegneri li distingui in qualunque folla. Passano accanto a un carro e guardano le ruote; passano accanto a una serratura e guardano i cardini.",
	},
	["sw.muse.w19.tinker.006"] = {
		"Uno scoppio dal laboratorio di uno gnomo e tutto il Dwarven District alza la testa, aspetta, e se non arriva un secondo scoppio torna al lavoro. È il secondo quello di cui preoccuparsi, dicono i fabbri.",
		"I nani hanno una regola per i laboratori degli gnomi: un botto è un esperimento, due sono una lezione, al terzo si va a prendere un secchio.",
	},
	["sw.muse.w19.tinker.007"] = {
		"Dentro un laboratorio di gnomi c'è una lavagna di nomi in gesso: quelli che sono usciti da Gnomeregan, mi ha detto un inventore. Se ne aggiunge uno ogni volta che arriva una notizia dal tram.",
		"Gli gnomi tengono una lista su una lavagnetta accanto a un banco, i nomi di chi ce l'ha fatta a uscire. Nessuno ne cancella mai uno. Ogni tanto, molto di rado, qualcuno ne aggiunge uno.",
		"Una lista in gesso sul muro di un laboratorio, quasi tutti nomi che non so pronunciare. Lo gnomo che la tiene dice che non è una lapide. È l'altro genere di lista.",
	},
	["sw.muse.w19.tinker.008"] = {
		"guarda uno gnomo salire su un secchio rovesciato per vedere oltre il banco di una bottega, e il nano dall'altra parte, senza alzare gli occhi, spingergli accanto un secondo secchio per la volta dopo.",
		"nota che accanto a quasi tutti i banchi della strada c'è una cassa robusta, consumata nel mezzo: il gradino da cui gli gnomi si fanno vedere oltre il ripiano.",
	},
	["sw.muse.w19.tinker.009"] = {
		"Molte porte del Dwarven District hanno una seconda maniglia, più piccola, montata in basso. Nessuno ricorda chi abbia messo la prima; ora ogni porta nuova ne ha una.",
		"Qualcuno ha cominciato a dotare le porte del Dwarven District di un secondo pomello all'altezza degli gnomi, e l'abitudine si è diffusa. Una città fa posto ai suoi ospiti con piccoli gesti d'ottone.",
	},
	["sw.muse.w19.tinker.010"] = {
		"Dai a uno gnomo una cosa rotta e fai un passo indietro. Non per prudenza: gli serve spazio per camminare avanti e indietro.",
		"Occhio agli stivali vicino ai banchi degli gnomi. Metà di quello che c'è per terra è ancora acceso.",
	},
	["sw.muse.w19.tinker.011"] = {
		"I piccoli gnomi del Dwarven District imparano a contare sugli ingranaggi prima che sulle dita, mi ha detto un inventore ridendo; poi ha smesso di ridere. Ne sono rimasti pochi a cui insegnare.",
		"Una gnoma su una soglia di Stormwind che insegna a un piccolo a smontare una serratura. In un'altra vita sarebbe un laboratorio di Gnomeregan. Lei non sembra pensarci, e poi ci pensa.",
	},
	["sw.muse.w19.tinker.012"] = {
		"Stormwind ci presta banchi, monete e sguardi molto educati. Un giorno riavremo la nostra città, e gli sguardi mi mancheranno, un poco.",
		"Ogni gnomo del Dwarven District è un ospite che lavora più dei padroni di casa. Non è l'orgoglio a parlare. Be'. Non solo l'orgoglio.",
		"Noi gnomi abbiamo fatto funzionare un angolo di città umana come un orologio. Quando Gnomeregan tornerà nostra, spero che qui qualcuno si ricordi come caricarlo.",
	},
	["sw.muse.w19.tinker.013"] = {
		"Tra fabbri nani e gnomi si discute ancora della Seconda Guerra: chi costruiva le macchine migliori, quali aggeggi volanti venivano giù più spesso. È la lite più cordiale di Stormwind.",
		"Nano e gnomo fianco a fianco allo stesso banco, ancora a beccarsi su quali motori abbiano vinto la Seconda Guerra. Nessuno dei due cede di un passo, e nessuno dei due vorrebbe che l'altro cedesse.",
	},
	["sw.muse.w19.tinker.014"] = {
		"raccoglie una piccola molla d'ottone che rotola per la strada e la porge; uno gnomo che corre dall'altra parte la prende, la esamina, ringrazia con gravità e la butta in un secchio pieno di molle identiche.",
		"restituisce un ingranaggio fuggito a uno gnomo che lo cerca carponi, e riceve ringraziamenti degni di un anello perduto.",
	},
	["sw.muse.w19.tinker.015"] = {
		"Ogni gnomo di Stormwind scrive tutto con una calligrafia così minuta che solo un altro gnomo potrebbe leggerla. Le guardie la trovano sospetta. Gli gnomi trovano cara la carta.",
		"In ogni laboratorio di gnomi ci sono quaderni pieni da un bordo all'altro, con una scrittura grande come le tracce delle formiche. Sembra segretezza. È soprattutto risparmio.",
		"Il quaderno di uno gnomo è una biblioteca in tasca: margini pieni, interno della copertina pieno, e un'ultima nota schiacciata lungo il dorso.",
	},
	["sw.muse.w19.tinker.016"] = {
		"Se vuoi imparare l'ingegneria, comincia imparando a non muoverti vicino a chi la conosce già.",
		"Prima lezione di ingegneria, per quel che ho visto: abbassati. Il resto sono numeri.",
	},
	["sw.muse.w19.trade.001"] = {
		"Un apprendista sarto si riconosce sempre: spilli infilati nel colletto, fili sciolti su tutte e due le maniche, e un modo di strizzare gli occhi che gli resterà per sempre.",
		"Gli apprendisti sarti girano per strada con un puntaspilli legato al polso e gli occhi sugli orli di tutti. Non possono farne a meno. Nemmeno i loro maestri potevano.",
	},
	["sw.muse.w19.trade.002"] = {
		"I conciatori sanno del loro mestiere: corteccia di quercia, olio, e qualcosa che è meglio non chiedere. Ti accorgi che ne è passato uno da come la folla si apre, con educazione.",
		"Un conciatore tra la folla non si nasconde. L'odore dell'olio da concia arriva prima e resta dopo, come un ospite che conosce la famiglia.",
	},
	["sw.muse.w19.trade.003"] = {
		"Un alchimista ha i polpastrelli macchiati di colori che nessun fiore ha mai portato. Stringigli la mano e poi controlla la tua.",
		"Gli alchimisti di questa città hanno mani come lo straccio di un pittore: blu sulle unghie, verdi sulle nocche, e un violetto che nessuno vuole spiegare.",
	},
	["sw.muse.w19.trade.004"] = {
		"Prima regola dei mestieri: mai bere niente che l'apprendista di un alchimista definisca «probabilmente a posto».",
		"Se l'apprendista di un alchimista ti offre un assaggio, chiedi cosa ha fatto all'ultimo che l'ha provato. Se deve pensarci, rifiuta.",
		"Qualsiasi pozione che un apprendista descriva con la parola «quasi» è una pozione per qualcun altro.",
	},
	["sw.muse.w19.trade.005"] = {
		"In qualche cucina della città un cuoco sta insegnando a un soldato temprato come non bruciare un uovo, e nessuno dei due ha avuto una lezione più dura in tutto l'anno.",
		"La cucina è il mestiere che umilia gli eroi. Più di un veterano che aveva tenuto testa agli ogre è sbiancato davanti a una salsa impazzita, a sentire i cuochi.",
	},
	["sw.muse.w19.trade.006"] = {
		"Gli incantatori prendono un paio di guanti in ottimo stato, lo riducono a un pizzico di polvere scintillante e ti vendono la polvere da mettere su un altro paio. La chiamano magia. Io lo chiamo il mestiere più furbo di Stormwind.",
		"Tutta l'arte di un incantatore sta nel disfare una cosa bella per addolcirne un'altra. Lì dentro c'è una lezione sulle città, ma la polvere mi va negli occhi.",
	},
	["sw.muse.w19.trade.007"] = {
		"scavalca un rigagnolo che corre leggermente azzurro là dove un tintore ha svuotato una tinozza, e il colore se ne va serpeggiando verso il canale più vicino.",
		"aggira una pozzanghera di un verde sorprendente sotto la porta sul retro di un tintore, e dà un'occhiata agli stivali per assicurarsi che abbiano ancora il solito colore.",
	},
	["sw.muse.w19.trade.008"] = {
		"I migliori maestri della città lasciano che gli apprendisti rovinino la prima pezza di stoffa. Costa meno che lasciargli rovinare la centesima.",
		"Un maestro che corregge ogni punto cresce un apprendista attento. Uno che ogni tanto lascia andare storto qualche punto cresce un sarto.",
	},
	["sw.muse.w19.trade.009"] = {
		"Gli istruttori di mestiere, qui, insegnano a pagamento, e badano bene a non insegnarti un punto più di quanto copre la tariffa.",
		"Paga un istruttore per una ricetta e avrai una ricetta, detta una volta sola, chiaramente. La seconda spiegazione si paga a parte.",
		"Il sapere di un istruttore arriva in porzioni piccole e ordinate, ognuna col suo prezzo. Non sono avari. Sono mercanti che, per caso, sanno delle cose.",
	},
	["sw.muse.w19.trade.010"] = {
		"resta a guardare un apprendista che insegue giù per una strada in discesa una pezza di stoffa sfuggita, il rotolo che si srotola più svelto di quanto il ragazzo riesca a correre.",
		"scavalca con agilità un lungo nastro di lino che si srotola, poi si volta e vede un apprendista paonazzo che lo riavvolge, una mano dopo l'altra, dall'altro capo della strada.",
	},
	["sw.muse.w19.trade.011"] = {
		"Sale di Kul Tiras, ferro di Ironforge, erbe delle lontane foreste degli elfi, lana di Elwynn. Stormwind produce poco di ciò che vende. È un crocevia che ha imparato a farsi pagare da chi ci si ferma.",
		"Stendi su una mappa gli scaffali di una bottega di Stormwind e coprirebbero mezzo mondo: sale kultirano, ferro nanico, erbe elfiche, lana di Elwynn. Il vero mestiere della città è stare nel mezzo.",
	},
	["sw.muse.w19.trade.012"] = {
		"Certe merci a Stormwind non arrivano più: l'argento di Lordaeron, la lana di là dal muro di Gilneas, il formaggio stagionato di Alterac. I vecchi mercanti le nominano ancora, come a cena si nominano i morti.",
		"Chiedi a un vecchio commerciante cosa manca al mercato e l'elenco è una mappa di regni perduti. Lordaeron, Alterac, Gilneas dietro il suo muro. Poi torna a vendere formaggio di Elwynn.",
	},
	["sw.muse.w19.trade.013"] = {
		"Lino, lana, seta, e poi le stoffe intrise di magia. Capisci a che punto è un sarto da quale stoffa si lamenta.",
		"I sarti giovani maledicono il lino. I sarti vecchi maledicono le stoffe magiche. Nessuno di loro smette mai di imprecare: è il mestiere.",
		"Chiedi a un sarto come va il lavoro e la risposta è una stoffa: «Ancora seta.» È un grado, come quelli dei soldati.",
	},
	["sw.muse.w19.trade.014"] = {
		"Metà della stoffa tagliata in questa città finisce al fronte in bende o stendardi. Anche i sarti fanno questa guerra, armati di aghi.",
		"Ogni tabarda in cui l'Alleanza sanguina l'ha cucita qualcuno a Stormwind. Nessuno dà una medaglia ai sarti, ma senza di loro la guerra andrebbe in giro nuda.",
	},
	["sw.muse.w19.trade.015"] = {
		"arriccia il naso per un odore acuto e dolciastro che esce dalla porta aperta di qualche alchimista, poi annusa di nuovo per esserne {g:sicuro|sicura}.",
		"indugia mentre uno sbuffo di vapore color lilla rotola fuori dalla finestra di un laboratorio e si scioglie sopra la strada, lasciando un odore di zucchero bruciato e di rame vecchio.",
	},
	["sw.muse.w19.trade.016"] = {
		"I conciatori comprano qualunque cosa un avventuriero si trascini dietro: lupo, cinghiale, raptor, e ogni tanto qualcosa con troppe zampe. Pagano a pelle e non chiedono mai delle zampe.",
		"Porta a un conciatore una pila di pelli di lupo e ti dirà un prezzo prima che tu abbia finito di srotolarle. Portagli qualcosa di più strano e te ne dirà uno più basso.",
	},
	["sw.muse.w19.trade.017"] = {
		"C'è un'espressione che un apprendista fa la prima volta che uno sconosciuto paga monete vere per qualcosa che ha fatto lui. Chiedi a qualsiasi maestro della città: se la ricordano tutti sulla propria faccia.",
		"La prima moneta che un apprendista guadagna con le sue mani non si spende mai, dicono i sarti. Si inchioda sopra il banco da lavoro, o si porta in tasca finché non diventa liscia.",
	},
	["sw.muse.w19.trade.018"] = {
		"Un mantello strappato, uno stivale aperto, una fibbia incrinata: questa città ha un mestiere per ogni modo in cui un viaggiatore va a pezzi.",
		"Se una cosa è rotta, a Stormwind c'è qualcuno che campa aggiustandola. Tranne i prezzi. Quelli non li aggiusta nessuno.",
		"Strappalo, crepalo, bruciacchialo. Qualcuno per queste strade te lo rimette a posto entro la prossima campana, e ti fa pagare il privilegio.",
	},
	["sw.muse.w19.trade.019"] = {
		"Gli umani, qui, mettono un prezzo a tutto, perfino ai fiori recisi. A Darnassus te ne regalerebbero uno e basta. Non so se scandalizzarmi o comprarne un mazzo.",
		"I fiorai di qui chiedono due rami per un rametto di quello che a Teldrassil cresce selvatico sotto ogni albero. Credo che pagherò. Un'usanza va imparata, prima di giudicarla.",
	},
	["sw.muse.w19.trade.020"] = {
		"tira un filo sciolto da un polsino, e il polsino si accorcia in modo evidente.",
		"strappa un filo ribelle da una manica, poi guarda la cucitura che, molto lentamente, comincia ad aprirsi dietro al filo.",
	},
	["sw.muse.w19.trade.021"] = {
		"Se mai smetterò di girare, imparerò a cucire. Nessuna locanda manda via chi sa aggiustarle le tende.",
		"Un giorno mi metterò a lavorare il cuoio e mi fermerò in un posto solo. Così scoprirò finalmente di cosa si lamentano i miei stivali.",
	},
	["sw.muse.w19.tram.001"] = {
		"sente la corrente che sale dal tunnel del tram tirare il mantello un attimo prima che il rombo di una vettura in arrivo raggiunga la strada.",
		"guarda la polvere sulla rampa del tram sollevarsi e girare senza un motivo che dalla strada si veda, poi sente la vettura, molto più in basso.",
		"si volta quando l'aria all'imbocco del tram si sposta tutta insieme, fresca e con l'odore della roccia bagnata, spinta su per la rampa da una vettura che ancora non si vede.",
	},
	["sw.muse.w19.tram.002"] = {
		"Nelle case più vicine al tram le tazze tremano sulla mensola ogni volta che una vettura passa sottoterra. Chi ci abita non ci fa più caso; gli ospiti sempre.",
		"Abita vicino al tram e i tuoi piatti impareranno l'orario: un tintinnio sulla mensola, un ronzio nel pavimento, ed è arrivata una vettura sotto la città.",
	},
	["sw.muse.w19.tram.003"] = {
		"La rampa che scende al tram è l'unico posto di Stormwind dove l'aria aperta diventa luce di lampada in trenta passi. A metà discesa sembra già Ironforge.",
		"Trenta gradini verso il tram e il rumore della città si assottiglia in un ronzio, la pietra si fa fresca e le lampade prendono il comando. Un pezzo di Ironforge prestato, incastonato nel pavimento di Stormwind.",
	},
	["sw.muse.w19.tram.004"] = {
		"Chi ha detto che tutte le strade portano a Stormwind non ha mai preso quella che ci passa sotto.",
		"Tutte le strade portano a Stormwind, dice la gente. Il tram è quella che ne esce dalla cantina.",
	},
	["sw.muse.w19.tram.005"] = {
		"Chi è appena sceso dal tram si riconosce dai vestiti: ancora abbottonato e con la sciarpa per Dun Morogh, in una strada che non ha mai avuto bisogno né dell'uno né dell'altra.",
		"I viaggiatori del tram sbucano in strada avvolti nelle pellicce, vestiti per Dun Morogh, e prima di arrivare alla banca hanno già cominciato a togliersi strati.",
		"In cima alla rampa del tram c'è quasi sempre un mucchietto di sciarpe abbandonate. Ironforge manda i suoi viaggiatori a sud vestiti per la montagna, e Stormwind li spoglia.",
	},
	["sw.muse.w19.tram.006"] = {
		"fa spazio in cima alla rampa del tram a un nano che trascina su un barile gradino per gradino, che rifiuta l'aiuto due volte e la terza lo accetta senza commenti.",
		"tiene fermo il bordo di un barile per un nano che lo issa su dal tram, e ne ricava un cenno del capo e un borbottio sulle scale degli umani.",
	},
	["sw.muse.w19.tram.007"] = {
		"A metà del tunnel il tratto dei nani incontra quello degli gnomi, dicono i minatori, e la giuntura è storta di un pollice. Nessuna delle due parti dice di chi fosse il pollice.",
		"Il tunnel fu scavato dai due capi insieme, racconta la storia, e i due tratti si incontrarono a metà fuori squadra di un dito. I nani danno la colpa ai calcoli degli gnomi; gli gnomi alle dita dei nani.",
		"Ogni nano del Dwarven District sa dov'è la giuntura storta del tunnel, e ogni gnomo giura che non esiste. Il tram, da parte sua, attraversa la lite senza sobbalzi.",
	},
	["sw.muse.w19.tram.008"] = {
		"Un tunnel dritto fino a Ironforge, sotto l'acqua, e l'Alleanza lo prende come un carretto per il mercato. Darei parecchio per sapere quante guardie aspettano all'altro capo.",
		"A una breve corsa di distanza sotto l'acqua: Stormwind e Ironforge. Qualunque cosa progetti l'Orda, farà meglio a smettere di contare sulle leghe che le separano.",
	},
	["sw.muse.w19.tram.009"] = {
		"ascolta in cima alla rampa del tram il lungo rombo cavo che sale dal tunnel, un suono così profondo che arriva alle suole prima che alle orecchie.",
		"si ferma dove la strada piega in discesa verso il tram, mentre un brontolio basso risale dal tunnel e poi si spegne, come un gigante che si schiarisce la gola sotto la città.",
	},
	["sw.muse.w19.tram.010"] = {
		"Le chiacchiere di Ironforge salgono dal tram fresche di poche ore. Quando arrivano al Trade District si sono fatte crescere la barba.",
		"Una voce partita da Ironforge arriva prima al Dwarven District, poi alle forge, poi alle taverne. Alla Cathedral Square ha già cambiato bandiera due volte.",
		"Le notizie di Ironforge arrivano a Stormwind col tram ed escono dal Dwarven District su tutte le bocche insieme, un po' più grosse a ogni racconto.",
	},
	["sw.muse.w19.tram.011"] = {
		"Di notte, con le forge coperte, il tram si sente dalla strada: un rombo lontano, una pausa, un rombo lontano. Come qualcosa di enorme che si gira nel sonno.",
		"A notte fonda, con le incudini zitte, il tram è la cosa più rumorosa del Dwarven District: un brontolio nella terra, poi niente, poi il brontolio che torna dall'altra parte.",
	},
	["sw.muse.w19.tram.012"] = {
		"Ironforge? Trova il Dwarven District, scendi le scale e continua finché le barbe non sono più di te.",
		"Per Ironforge si va giù, e poi molto a nord. Occhio al gradino.",
		"La strada per Ironforge comincia nel Dwarven District e finisce sotto una montagna. La parte in mezzo è bagnata.",
	},
	["sw.muse.w19.tram.013"] = {
		"Ogni volta che il tram arriva puntuale, una parte di me vorrebbe salire sulla banchina e fare un inchino a nome di ogni gnomo che abbia mai tracciato una linea su un foglio.",
		"Gli gnomi hanno scavato metà di quel tunnel e l'hanno disegnato tutto. Quando un umano ci sale e non urla, per me vale come un applauso.",
	},
	["sw.muse.w19.tram.014"] = {
		"si volta e vede un nano e un umano separarsi in cima alla rampa del tram con una stretta di mano che, dopo un attimo di esitazione, diventa un abbraccio goffo.",
		"vede due vecchi soldati, un nano e un umano, salutarsi all'imbocco del tram con una lunga stretta di mano e nessuna parola.",
		"indugia mentre una donna umana accompagna un nano al tram e gli mette in mano una pagnotta incartata, che lui rifiuta a parole e si tiene.",
	},
	["sw.muse.w19.tram.015"] = {
		"Con la nebbia, il fumo delle forge e la nebbia diventano una cosa sola, e il Dwarven District sparisce, tutto tranne i martelli nascosti lì dentro.",
		"Nebbia e fumo di forgia insieme fanno del Dwarven District un indovinello: un bagliore rosso, un clangore, una voce di nano, e niente da indicare col dito.",
	},
	["sw.muse.w19.tram.016"] = {
		"Il tram non aspetta nessuno. Arriva, si ferma, riparte. In una città di nobili che fanno aspettare tutti, c'è qualcosa di riposante in questo.",
		"Nessuno trattiene il tram per un signore. La vettura entra, resta ferma quanto resta ferma, e riparte all'ora degli gnomi, che è esatta e non si lascia comprare.",
	},
	["sw.muse.w19.urchin.001"] = {
		"si accorge di un ragazzino qualche passo indietro che ne copia l'andatura con una precisione spietata, mentre la strada intorno fa di tutto per non ridere.",
		"scorge, nel vetro di una vetrina, una bambina alle sue spalle che ne imita il passo alla perfezione, fino al dondolio delle braccia.",
		"svolta un angolo e sente, un attimo dopo, uno scoppio di risatine e di stivaletti che si sforzano moltissimo di fare il rumore dei suoi passi.",
	},
	["sw.muse.w19.urchin.002"] = {
		"La posta più veloce di Stormwind non è la cassetta delle lettere. È una ragazzina scalza con un rame nel pugno e tutti i vicoli della città in testa.",
		"Dai a un ragazzo di strada un rame e un messaggio, e attraversa la città prima che l'inchiostro si asciughi. Conosce passaggi che non stanno su nessuna mappa, quasi tutti sopra i muri.",
	},
	["sw.muse.w19.urchin.003"] = {
		"Le indicazioni di un ragazzino di strada costano un rame. Quelle di una guardia sono gratis. Indovina quali erano giuste.",
		"Ho pagato un rame a un bambino perché mi mostrasse la strada. La moneta meglio spesa in questa città.",
		"Il ragazzino voleva due rami per mostrarmi la strada. Io ne offrivo uno. È finita a un rame e una mela. Un osso duro.",
	},
	["sw.muse.w19.urchin.004"] = {
		"Il figlio di un nobile, vestito di velluto, al fianco del precettore, fissava un branco di bambini di strada che giocavano nel rigagnolo. Loro lo fissavano di rimando. Non ho capito chi invidiasse di più chi.",
		"Dalle inferriate di una bella casa un ragazzino col colletto di pizzo guarda i monelli fare a gara. Loro guardano lui, e i suoi stivaletti puliti. Nessuno farebbe cambio, e tutti ci stanno pensando.",
	},
	["sw.muse.w19.urchin.005"] = {
		"guarda tre monelli viaggiare aggrappati alla sponda posteriore di un carro, e saltare giù uno dopo l'altro mentre la frusta del carrettiere va a cercarli alle sue spalle.",
		"vede due bambini di strada saltare sul retro di un carro lento, attraversare un ponte a sbafo e balzare giù ridendo prima che il carrettiere riesca a voltarsi.",
		"nota una manina aggrappata al retro di un carro di passaggio, poi un'altra, poi un'intera fila di facce sorridenti dirette in nessun posto in particolare.",
	},
	["sw.muse.w19.urchin.006"] = {
		"Qui nel Dwarven District i bambini spazzano il pavimento delle forge in cerca di chiodi caduti e li rivendono agli stessi fabbri, un rame alla manciata. I fabbri lo sanno. Pagano lo stesso.",
		"I bambini del quartiere ripescano i chiodi storti dalle fessure accanto alle forge e li rivendono, un rame alla manciata, ai fabbri che li hanno persi. L'accordo soddisfa tutti.",
	},
	["sw.muse.w19.urchin.007"] = {
		"Quanti ne ho battuti? Ho smesso di contarli, ragazzo. Quando lo racconti ai tuoi amici, non dire mille.",
		"No, le parti truculente non te le racconto. Richiedimelo quando sarai più alto. Molto più alto.",
	},
	["sw.muse.w19.urchin.008"] = {
		"Non tutti gli orfani di Stormwind dormono all'orfanotrofio. Qualcuno preferisce i tetti e gli archi sotto i ponti, dove nessuno gli dice quando lavarsi.",
		"La direttrice non sa arrampicarsi. È per questo che alcuni orfani della città vivono sui tetti: liberi come piccioni, e nutriti più o meno altrettanto.",
	},
	["sw.muse.w19.urchin.009"] = {
		"gira con cura attorno a un disegno col gesso sui ciottoli, un leone con sei zampe e una corona, mentre l'artista alza gli occhi torvo per controllare.",
		"evita di pestare il cavaliere di gesso disegnato da un bambino sulla pietra, con una spada più lunga della strada, e riceve dall'artista un secco cenno di approvazione.",
		"si arresta sul bordo di un drago di gesso che occupa mezza viuzza, e un ragazzino con le dita verdi indica come girare attorno alla coda.",
	},
	["sw.muse.w19.urchin.010"] = {
		"I bambini del Mage Quarter giocano a chi osa di più: chi resta più a lungo sotto la finestra di un apprendista quando qualcosa comincia a ronzare. I vincitori non hanno più le sopracciglia.",
		"Nel Mage Quarter la prova di coraggio è toccare la porta della torre e scappare. Tutti i bambini della strada l'hanno fatto; nessuno ha mai visto quella porta aprirsi.",
	},
	["sw.muse.w19.urchin.011"] = {
		"Due ragazzini fanno correre pezzi di paglia lungo il rigagnolo, e fanno il tifo a ogni passaggio sotto i ponticelli di foglie cadute. Chi ha scavato i canali avrà cominciato così.",
		"Una fila di bambini accovacciati sul rigagnolo fa a gara con i rametti, gridando i nomi dei ponti veri mentre i rametti passano sotto il niente.",
	},
	["sw.muse.w19.urchin.012"] = {
		"Occhio a quel carro, ragazzi. Il carrettiere ha avuto una giornata lunga, e il cavallo ancora di più.",
		"Non correte sul ponte, che poi... ecco, appunto. Su, in piedi. Niente di rotto.",
	},
	["sw.muse.w19.urchin.013"] = {
		"si vede offrire una pulita agli stivali da un ragazzino sudicio, il cui prezzo sale ogni volta che guarda meglio gli stivali.",
		"riceve da una ragazzina di strada l'offerta di lucidare quegli stivali, con un prezzo, e poi un secondo prezzo più alto quando ne ha visto lo stato.",
	},
	["sw.muse.w19.urchin.014"] = {
		"I bambini profughi del Westfall non giocano proprio come quelli di città. Ogni tanto uno si ferma e guarda a ovest, sopra i tetti, come per controllare che il fumo sia ancora lontano.",
		"Si capisce quali bambini di strada vengano dal Westfall: non lasciano mai pane nel piatto, e ammutoliscono quando qualcuno grida «al fuoco».",
	},
	["sw.muse.w19.urchin.015"] = {
		"Va bene, puoi camminare con me fino al ponte. Ma non porti niente e non chiedi niente.",
		"Mi stai dietro da tre strade. O sei una spia o ti annoi. Tutte e due, probabilmente.",
	},
	["sw.muse.w19.vault.001"] = {
		"La banca ti affitta un posto in più per la tua roba, poi il successivo a un prezzo più alto, e quello dopo per una piccola fortuna. La banca ha studiato a fondo gli accumulatori.",
		"Ogni scaffale in più nel caveau costa più del precedente. I banchieri lo chiamano equo. Io lo chiamo conoscere i propri clienti.",
	},
	["sw.muse.w19.vault.002"] = {
		"La banca dev'essere la stanza più silenziosa di Stormwind. Lì le monete si contano sottovoce, come se il denaro rumoroso potesse farsi venire delle idee.",
		"Entri in banca e la strada sparisce. Nessuno grida vicino a tanto oro. Sembra una preghiera, ma del tipo sbagliato.",
		"Qualunque cosa custodisca, la banca la custodisce prima di tutto col silenzio. Gli impiegati parlano piano come bibliotecari, e la metà delle volte.",
	},
	["sw.muse.w19.vault.003"] = {
		"rigira una moneta, ne saggia il bordo con l'unghia del pollice come fanno i banchieri, e sembra un po' {g:imbarazzato|imbarazzata} di farsi sorprendere.",
		"fa tintinnare una moneta contro un'unghia e ascolta, la testa piegata, come un banchiere che sospetta del mondo intero.",
	},
	["sw.muse.w19.vault.004"] = {
		"Passa una moneta tosata oltre il banco della banca e l'impiegato te la restituisce senza dire una parola. Lo sguardo è gratis, e ti segue fino alla porta.",
		"I banchieri riconoscono un pezzo d'argento limato dal suono che fa sul banco. Un suono che io non noterei mai; un suono che loro non smettono mai di sentire.",
	},
	["sw.muse.w19.vault.005"] = {
		"I vecchi banchieri raccontano che, quando cadde la prima città, gli scrivani portarono a nord i registri prima di quasi ogni altra cosa. I debiti sopravvissero alla guerra. Non tutti ci riuscirono.",
		"I registri hanno attraversato la Prima Guerra, amano raccontare gli impiegati, quando mezza città non ce l'ha fatta. Qualunque cosa sia bruciata, qualcuno doveva ancora qualcosa a qualcuno.",
	},
	["sw.muse.w19.vault.006"] = {
		"Al sicuro dai ladri, al sicuro dal fuoco e, soprattutto, al sicuro da me: ecco le mie monete in banca.",
		"Il denaro in banca è come un amico nello Stockade: al sicurissimo, e per andarlo a trovare ti serve il permesso.",
		"Le mie monete in banca dormono meglio di me in qualsiasi locanda.",
	},
	["sw.muse.w19.vault.007"] = {
		"scuote qualche moneta nel pugno mezzo chiuso: una somma troppo piccola per disturbare un banchiere e troppo grande per dimenticarla.",
		"lascia scivolare una manciata di rami da un palmo all'altro, un piccolo rumore lucente dentro quello, più grande, della città.",
	},
	["sw.muse.w19.vault.008"] = {
		"Voce del Trade District: la corona ha un conto in banca come chiunque, e come chiunque è in rosso. Nessuno lo ripete vicino a una guardia.",
		"Gli impiegati non dicono chi sia il debitore più grosso della banca. Lanciano un'occhiata verso Stormwind Keep e cambiano discorso.",
	},
	["sw.muse.w19.vault.009"] = {
		"La banca tiene ancora aperti i conti di soldati partiti e mai tornati. Nessuno li chiude. Chiuderne uno vorrebbe dire scrivere nel registro una parola che nessuno vuole scrivere.",
		"Nei libri della banca ci sono nomi per cui non resta più nessuno a chiedere. Gli impiegati li ricopiano in ogni registro nuovo, anno dopo anno, con la loro calligrafia migliore.",
		"Ogni banca ha il suo scaffale silenzioso: i conti di chi è partito per il nord ed è rimasto là. Gli interessi maturano ancora. Nessuno li riscuote.",
	},
	["sw.muse.w19.vault.010"] = {
		"Prima la banca. Poi saprò con precisione quanto sono {g:povero|povera}.",
		"Un salto in banca e saprò se è il momento del pasticcio di carne o del pane secco.",
	},
	["sw.muse.w19.vault.011"] = {
		"Le guardie della banca non lanciano mai un'occhiata alle monete che passano loro davanti. È l'addestramento. Gli occhi di tutti gli altri ci vanno dritti.",
		"Una guardia della banca sta tutto il giorno accanto a più oro di quanto un villaggio del Westfall ne vedrà in una vita, e guarda solo la porta. Io non ce la farei.",
	},
	["sw.muse.w19.vault.012"] = {
		"conta qualcosa sulle dita, muovendo le labbra in silenzio: la contabilità privata di cosa tenere, cosa depositare e cosa vendere.",
		"fruga nella sacca con grande serietà, mettendo da parte un mucchio da tenere, uno da depositare e uno che somiglia moltissimo al primo.",
	},
	["sw.muse.w19.vault.013"] = {
		"Avere monete in una banca di Stormwind è uno strano tipo di tetto. Non ci puoi dormire sotto, ma dormi meglio sapendo che c'è.",
		"Qualunque cosa succeda per strada, un pezzetto di me resta al sicuro dietro il banco della banca. Non è molto, ma è una parte di me che non è costretta a seguirmi.",
	},
	["sw.muse.w19.vault.014"] = {
		"Se la guerra la facessero i banchieri, a quest'ora il nemico pagherebbe gli interessi.",
		"Metti un banchiere a capo dell'esercito e ogni ritirata avrebbe la sua penale.",
	},
	["sw.muse.w19.vault.015"] = {
		"Sotto la banca c'è una porta più spessa di quanto un uomo sia alto, dicono gli impiegati, e una chiave che in città hanno toccato solo in due. Alla porta ci credo. Sui due ho qualche dubbio.",
		"Gli impiegati della banca parlano della porta del caveau come i sacerdoti delle reliquie: mai vista aperta, nessuna voglia di vederla, contenti che ci sia.",
	},
	["sw.muse.w19.vault.016"] = {
		"cede il passo a un corriere con una piccola cassaforte di ferro incatenata al polso e una guardia per gomito, tutti e tre che camminano come se i ciottoli potessero rubare.",
		"lascia passare due guardie che scortano un impiegato con un forziere chiuso a chiave stretto al petto come un neonato addormentato.",
	},
	["sw.muse.w19.vault.017"] = {
		"I banchieri: l'unica gente di Stormwind che sorride meno delle guardie, e la pagano pure meglio.",
		"Una guardia di Stormwind Keep, dagli un anno, magari un sorriso lo fa. Un banchiere mai. Dev'essere scritto nei contratti.",
	},
	["sw.muse.w19.veteran.001"] = {
		"Alcuni vecchi soldati di Stormwind hanno passato anni a sorvegliare i campi d'internamento, dopo la Seconda Guerra. Adesso gli orchi che sorvegliavano hanno una città tutta loro oltre il mare, e quando se ne parla quegli uomini restano immobili.",
		"Un veterano mi ha detto di aver fatto la guardia agli orchi per anni, e poi di aver saputo che se n'erano andati e avevano fondato una nazione. Non sembrava arrabbiato. Sembrava uno che cerca di sommare una colonna che non torna.",
	},
	["sw.muse.w19.veteran.002"] = {
		"osserva un vecchio soldato affrontare una rampa di scale di fianco, il ginocchio malato per primo, con la pazienza di chi ha scalato mura peggiori in compagnia peggiore.",
		"si scansa per lasciar passare un veterano che scende le scale su una gamba rigida e una buona, il mento alto come se ispezionasse un bastione.",
		"aspetta ai piedi di una scala mentre un vecchio soldato la scende con una mano sul muro, saggiando ogni gradino come se potesse essere minato.",
	},
	["sw.muse.w19.veteran.003"] = {
		"Chiedi a un veterano della Seconda Guerra dei draghi, e prima di rispondere alzerà gli occhi. Gli orchi avevano draghi rossi, in quella guerra, raccontano, e certe abitudini sopravvivono alla guerra che le ha insegnate.",
		"Un'ombra grande ha attraversato la strada e tre vecchi su una panchina hanno alzato gli occhi tutti insieme. «Draghi», ha borbottato uno, e ha riso di sé. Gli altri non hanno riso.",
	},
	["sw.muse.w19.veteran.004"] = {
		"Un vecchio soldato, nei giorni di festa, indossa la sua tabarda della Seconda Guerra, con l'azzurro sbiadito fino al colore dell'acqua dei piatti. Lo stemma che porta appartiene a un'alleanza che quasi non c'è più.",
		"Una tabarda sbiadita della vecchia guerra, di un taglio che nessun sarto usa più, passa su una schiena curva. L'uomo che c'è dentro saluta le guardie con un cenno. Loro ricambiano, con un po' più di cura del solito.",
		"Le guardie giovani si raddrizzano quando passa quella vecchia tabarda, l'ho notato, anche se nessuna di loro saprebbe dire di quale regno sia lo stemma.",
	},
	["sw.muse.w19.veteran.005"] = {
		"La corona paga i suoi vecchi soldati in gratitudine, mi dicono. Moneta splendida. Il fornaio non la accetta.",
		"I ringraziamenti si spendono benissimo alle parate, dice il vecchio soldato al banco del ciabattino. Il resto dell'anno ripara stivali.",
	},
	["sw.muse.w19.veteran.006"] = {
		"Vuoi la Seconda Guerra raccontata com'è andata? Trova un veterano sobrio. La vuoi raccontata bene? Offrigli due birre.",
		"Un veterano sobrio ti dà le date. Uno allegro ti dà la guerra.",
		"Ogni veterano racconta la Seconda Guerra a modo suo. I migliori lo ammettono.",
	},
	["sw.muse.w19.veteran.007"] = {
		"scorge un vecchio tra la folla portarsi due dita alla fronte quando arriva in vista della fortezza, un saluto che nessuno gli ha chiesto, e proseguire.",
		"vede un veterano dalla barba grigia rallentare per un solo passo quando la fortezza entra in vista, rivolgerle il più piccolo dei saluti e tornare alle sue compere.",
		"sorprende due vecchi soldati che alzano la mano alla fronte nello stesso istante, verso la fortezza, senza interrompere la loro discussione sulle rape.",
	},
	["sw.muse.w19.veteran.008"] = {
		"ascolta un vecchio soldato al banco elencare ogni posto in cui ha dormito nella sua vita, regno dopo regno, e ammutolire da qualche parte nel nord prima di finire la lista.",
		"sente un veterano contare sulle dita le città attraversate in marcia, finire le dita, e poi semplicemente smettere.",
	},
	["sw.muse.w19.veteran.009"] = {
		"I veterani più vecchi hanno combattuto per Llane, prima che ci fossero un reggente e un ragazzo sul trono. Fra tutti, a Stormwind, sono quelli che parlano meno del trono vuoto. Ne hanno già visto svuotare uno.",
		"In questa città ci sono ancora un paio di barbe grigie che hanno servito sotto re Llane. Quando si parla del re disperso, tacciono e guardano nel boccale. Sanno come finisce, a volte, l'attesa.",
	},
	["sw.muse.w19.veteran.010"] = {
		"Per i veterani la Seconda Guerra è quella in cui i regni degli uomini combatterono finalmente uniti, e ne parlano come di un matrimonio andato a male: fieri delle nozze, cauti su tutto il resto.",
		"Lordaeron, Stromgarde, Kul Tiras, nani ed elfi su una sola linea: i vecchi soldati li elencano come gli invitati di un banchetto finito da un pezzo. Metà di quelle casate adesso si parlano appena.",
	},
	["sw.muse.w19.veteran.011"] = {
		"passa davanti a un vecchio soldato che, sulla soglia di casa, unge la punta di una picca che non vede una guerra da anni, togliendo ogni macchia di ruggine col pollice, piano, come una faccenda che gli piace.",
		"nota un veterano davanti a una pensione che strofina olio su una vecchia alabarda, anche se è chiaro che non la porterà mai più da nessuna parte.",
	},
	["sw.muse.w19.veteran.012"] = {
		"Un veterano umano che ha combattuto accanto ai nani nella Seconda Guerra non paga mai la sua birra nel Dwarven District, dicono. I nani ricordano chi ha tenuto la linea con loro, e lo ricordano a giri.",
		"Nel Dwarven District c'è un vecchio soldato umano col boccale sempre pieno e la borsa che non esce mai. Una volta ha tenuto un passo insieme ai nani. Quel debito, almeno, si paga ogni giorno.",
	},
	["sw.muse.w19.veteran.013"] = {
		"Quel vecchio soldato vicino alla fontana mangia come se qualcuno stesse per portargli via la scodella. La guerra gliel'ha insegnato, e non gliel'ha più tolto.",
		"Guarda i veterani in fila per la minestra: mangiano tutti in fretta, col braccio intorno alla ciotola. Certe lezioni non ricevono mai il congedo.",
		"Vedi come dorme quel vecchio soldato sulla panchina, con gli stivali ai piedi e una mano sul fagotto? Nessuno gli ha detto che la guerra è finita. O gliel'hanno detto, e non ci ha creduto.",
	},
	["sw.muse.w19.veteran.014"] = {
		"Quel vecchio umano sulla panchina, una volta, faceva la guardia ai prigionieri orchi: ci scommetterei. Mi guarda come un contabile guarda una somma che gli avevano detto chiusa.",
		"I veterani sono quelli che mi guardano più a lungo. Hanno combattuto l'Orda prima che fosse quella con cui cammino io, e la differenza non la vedono. Al posto loro, non so se la vedrei.",
	},
	["sw.muse.w19.veteran.015"] = {
		"Piove su Stormwind, e le giunture dei vecchi soldati lo sanno per prime. Un veterano mi ha detto che sa nominare ogni ferita ricevuta da quale gli fa male quando il tempo cambia.",
		"Guarda le panchine svuotarsi quando piove: i vecchi soldati se ne vanno per primi, massaggiandosi ginocchia e spalle, e ogni dolore è una battaglia di cui preferiscono non parlare.",
	},
	["sw.muse.w19.veteran.016"] = {
		"I veterani che erano a Blackrock Spire non raccontano la battaglia. Raccontano il momento in cui lungo la linea passò la voce che Lothar era caduto, e cosa fece la linea dopo: tenne.",
		"Lothar morì a Blackrock Spire, e i soldati che lo seppero là descrivono ancora un silenzio che attraversò diecimila uomini insieme, e poi un ruggito. Non descrivono i combattimenti. Solo quello.",
		"Di tutta la Seconda Guerra, mi ha detto un vecchio soldato, ricorda meglio di ogni altra cosa il momento in cui lo stendardo del Leone cadde e nessuno fuggì. Lo racconta con le mani piatte sul tavolo, immobili.",
	},
	["sw.muse.w19.vigil.001"] = {
		"Le liste dei nomi tornano dai combattimenti e i sacerdoti le appendono accanto alle porte della cattedrale. La gente le legge con un dito, riga per riga. Da un capo all'altro della piazza capisci quando un dito si ferma.",
		"Accanto alla cattedrale c'è una tavola dove vengono appesi i nomi dei caduti. Nessuno li legge ad alta voce. Li seguono col dito, piano, e poi se ne vanno più leggeri, oppure per un po' non se ne vanno affatto.",
		"Accanto alle porte della cattedrale sono appese le liste che arrivano dal fronte. Nessuno le legge ad alta voce, e nessuno le legge in fretta.",
	},
	["sw.muse.w19.vigil.002"] = {
		"Arde una candela, nella cattedrale, per il re scomparso, dicono gli accoliti, e nessuno ammette di averla accesa. Quando si consuma, uno di loro la sostituisce senza che glielo chieda nessuno.",
		"C'è una candela, nella cattedrale, che non viene mai lasciata spegnere. Per re Varian, sussurra la gente. I sacerdoti non lo dicono, e continuano a spuntarne lo stoppino.",
	},
	["sw.muse.w19.vigil.003"] = {
		"Prima di pronunciare il giuramento, raccontano gli accoliti, un paladino veglia da solo davanti all'altare dall'ultima campana alla prima, in piedi e in armatura. In ginocchio ci si mette dopo.",
		"Il giuramento di un paladino arriva alla fine di una lunga veglia nella cattedrale, dicono gli scudieri: armatura completa, nessuna sedia, finché le gambe dimenticano di essere gambe. Mi piacerebbe vedere la faccia di chi poi esce.",
	},
	["sw.muse.w19.vigil.004"] = {
		"si ferma nella piazza buia a guardare le vetrate della cattedrale, dove poche candele all'interno tengono il vetro colorato appena sveglio.",
		"indugia ai piedi della cattedrale mentre la piazza si svuota per la notte, le vetrate alte accese di un ambra fioco dalle candele di chi veglia ancora.",
	},
	["sw.muse.w19.vigil.005"] = {
		"Dopo un funerale nella cattedrale chi è in lutto si ferma sempre sui gradini. La funzione è finita, e il resto della vita non è ancora cominciato.",
		"Capisci che è appena finito un funerale dalla gente sui gradini della cattedrale che sembra non sapere più da che parte sia la città.",
		"I funerali finiscono, il lutto no. Chi piange resta sui gradini della cattedrale, dove la funzione l'ha lasciato, ad aspettare che qualcuno gli dica cosa viene adesso.",
	},
	["sw.muse.w19.vigil.006"] = {
		"C'è una navata laterale, nella cattedrale, dove le candele si sono consumate e non viene nessuno. Ci vado a non desiderare niente, per un po'.",
		"In un angolo in fondo alla cattedrale, oltre l'ultima candela, la città smette finalmente di chiedermi qualcosa.",
	},
	["sw.muse.w19.vigil.007"] = {
		"Piano. Lì dentro c'è qualcuno che veglia, e il lutto sente tutto.",
		"Abbassa la voce vicino alla cattedrale. Dentro c'è chi sta seduto accanto ai suoi morti.",
		"Sottovoce, qui. C'è chi veglia un morto.",
	},
	["sw.muse.w19.vigil.008"] = {
		"C'è qualche vecchia sacerdotessa della cattedrale che ha vegliato più letti di morte di quante battaglie abbia visto un soldato. Si capisce da quanto lentamente ascolta.",
		"Tra i sacerdoti della cattedrale ce n'è una che ha sentito più ultime parole di chiunque altro a Stormwind. La riconoscerei dalla pazienza.",
	},
	["sw.muse.w19.vigil.009"] = {
		"La fabbricante di candele che rifornisce la cattedrale ti sa dire come va la guerra senza leggere un solo rapporto. Conta le candele da veglia.",
		"Chiedi ai venditori di candele vicino alla cattedrale come se la passa il regno. Non leggono i dispacci: guardano quanto in fretta finiscono le candele alte e bianche.",
		"Quando dal candelaio vicino alla cattedrale finiscono le candele da veglia, tutta la strada sa che è arrivato un brutto dispaccio.",
	},
	["sw.muse.w19.vigil.010"] = {
		"Resta immobile nella cattedrale abbastanza a lungo e l'edificio comincia a parlare: una panca scricchiola, uno stoppino sfrigola, il ginocchio di un sacerdote schiocca mentre si inginocchia.",
		"Dopo un po' il silenzio qui dentro si rivela pieno: stoppini che crepitano, tonache che frusciano sulla pietra, lo stomaco di qualcuno che protesta in terza fila.",
	},
	["sw.muse.w19.vigil.011"] = {
		"Le candele più difficili della cattedrale sono quelle per i dispersi. Non puoi piangerli e non puoi smettere. Bruciano con una specie di domanda dentro.",
		"Una candela per un morto è un addio. Una candela per un disperso è una porta lasciata aperta, e la cattedrale è piena di porte aperte.",
		"Certe candele della cattedrale sono accese per qualcuno che potrebbe entrare domani dalla porta. Sono quelle che gli accoliti spuntano con più delicatezza.",
	},
	["sw.muse.w19.vigil.012"] = {
		"incrocia un vecchio soldato che porta per la strada una sola candela bianca con tutte e due le mani, con la cura che si avrebbe se fosse già accesa.",
		"si fa da parte per una donna vestita di nero che regge davanti a sé una candela alta e spenta, e si fa strada verso la cattedrale senza mai abbassare gli occhi.",
	},
	["sw.muse.w19.vigil.013"] = {
		"Quando al tramonto la cattedrale comincia ad accendere le candele, recito le vecchie parole senza muovere le labbra. Non per me. Per chi, là fuori, non ha nessuno che le dica.",
		"Il crepuscolo, e le vetrate della cattedrale si scaldano una dopo l'altra. Per quest'ora ho una preghiera breve: per le strade, e per tutti quelli che ci sono ancora sopra.",
	},
	["sw.muse.w19.vigil.014"] = {
		"Quando un inno finisce nella cattedrale c'è un istante che nessuno vuole rompere. Poi uno stivale stride, e tutta l'assemblea torna a essere semplicemente gente.",
		"La parte migliore di ogni inno nella cattedrale è il silenzio che segue, prima del primo colpo di tosse. Tutti restano immobili, come se l'ultima nota potesse tornare.",
		"Quando il canto si ferma nella cattedrale, il silenzio che segue è la cosa più rumorosa di Stormwind, per il tempo che serve a qualcuno per schiarirsi la gola.",
	},
	["sw.muse.w19.vigil.015"] = {
		"La nebbia si è mangiata la cattedrale fino alle porte. Ne resta solo la luce delle candele all'interno, sospesa nel grigio come una lanterna sull'acqua.",
		"Con questa nebbia la cattedrale è sparita, tranne le vetrate: qualche macchia d'oro di candela appesa sopra la piazza senza niente che la regga.",
	},
	["sw.muse.w19.vigil.016"] = {
		"si fa da parte mentre un piccolo corteo funebre sfila verso la cattedrale, i passi di chi è in lutto più lenti di quelli della strada intorno.",
		"lascia passare una fila di persone in lutto, vestite di lana scura, dirette alla cattedrale; per tutta la loro lunghezza la strada sembra abbassare la voce.",
		"si addossa a un muro per lasciar passare un funerale, sei portatori e una cassa semplice, e un silenzio che viaggia con loro come un secondo corteo.",
	},
	["sw.muse.w19.vigil.017"] = {
		"Accendi una candela per qualcuno, se ti va. Gli accoliti non chiedono mai per chi sia.",
		"La cattedrale ti vende una candela e non ti chiede mai per chi. Discrezione, a un rame l'una.",
		"Una candela, un nome, e nessuno che chieda quale. Questo della cattedrale mi piace.",
	},
	["sw.muse.w19.wagon.001"] = {
		"Da dove viene un carro lo capisci prima che passi la porta. Quelli di Lakeshire sanno di lago e di pesce. Quelli di Darkshire entrano di corsa, col conducente che si guarda alle spalle.",
		"I carri di Redridge arrivano incrostati di fango e chiacchieroni. Quelli da Duskwood arrivano svelti e zitti, e i conducenti vogliono da bere prima ancora della paga.",
		"A sentire le guardie della porta, la strada di un carro si legge dal fango: rosso per Redridge, nero per Duskwood, e polvere chiara per tutto quello che arriva dai campi di Elwynn.",
	},
	["sw.muse.w19.wagon.002"] = {
		"passa accanto a una fila di carri allineati lungo la strada: i conducenti vanno da un cavallo all'altro a tirare fibbie, e uno scrivano con un registro conta i barili per la terza volta.",
		"costeggia una carovana in attesa di partire, dove qualcuno discute con qualcun altro su quale cassa vada sopra e i cavalli hanno smesso di ascoltare da un pezzo.",
	},
	["sw.muse.w19.wagon.003"] = {
		"Vuoi imparare a imprecare con tutti gli accenti del regno? Mettiti vicino alla porta quando due carri cercano di passare insieme.",
		"Due carri, una porta, zero pazienza. La miglior lezione gratuita di imprecazioni che questa città abbia da offrire.",
	},
	["sw.muse.w19.wagon.004"] = {
		"I carri di rifornimento per Lakeshire escono pesanti e tornano vuoti, e i conducenti non parlano della strada. Qualunque cosa succeda a Redridge, mangia pane e stivali.",
		"Certi carri lasciano Stormwind carichi di sacchi di farina e fasci di lance per i paesi che scrivono chiedendo aiuto. Tornano leggeri, con lettere che chiedono di più.",
	},
	["sw.muse.w19.wagon.005"] = {
		"Un grifone è passato basso sopra le mura, e tutte le guardie della porta si sono abbassate un po' senza volerlo, per poi fingere di controllarsi gli stivali.",
		"Quando un grifone supera le mura abbastanza vicino da sentirne le ali, i cavalli dei carrettieri abbassano le orecchie tutti insieme, e, noto, anche i carrettieri.",
	},
	["sw.muse.w19.wagon.006"] = {
		"vede un viaggiatore solitario uscire sotto l'arco della porta e continuare a camminare, sempre più piccolo sulla strada oltre, senza voltarsi neanche una volta.",
		"segue con gli occhi due viaggiatori che escono dalla porta, gli zaini che ondeggiano allo stesso passo, finché la strada non li porta dietro una curva, tra gli alberi.",
	},
	["sw.muse.w19.wagon.007"] = {
		"Chiunque passi la porta è il protagonista della propria giornata. La porta ne ha visti a migliaia e li tratta tutti allo stesso modo: uno spiffero, un po' d'ombra, e poi il rumore.",
		"Eroi, ambulanti, vedove, fuggiaschi: la porta li fa entrare tutti con lo stesso passo. Lo trovo più confortante di qualunque statua.",
		"Alla porta non importa chi eri per strada. Passato l'arco, sei soltanto un altro paio di stivali sul selciato.",
	},
	["sw.muse.w19.wagon.008"] = {
		"La porta è solo l'inizio. Poi il ponte, poi le statue, poi mezzo Trade District, e solo allora la banca. Stormwind la spesa te la fa guadagnare.",
		"Chi ha progettato questa città ha messo la porta d'ingresso lontanissima da tutto quello che vuole un viaggiatore.",
	},
	["sw.muse.w19.wagon.009"] = {
		"La carrozza di un nobile, tutta lacca e stemmi, bloccata alla porta dietro un carro di letame. I cavalli dell'una e dell'altro avevano l'aria ugualmente annoiata; solo chi stava dentro sembrava pensare che importasse.",
		"C'è una certa giustizia in una città dove una carrozza dorata deve aspettare il suo turno dietro un carro di letame. Non molta, ma un po'.",
	},
	["sw.muse.w19.wagon.010"] = {
		"guarda una catena di facchini svuotare un carro sacco dopo sacco, ognuno che passa il carico al successivo con un grugnito, a un ritmo così regolare che ci si potrebbe ballare.",
		"si ferma a guardare un carro scaricato da cinque paia di mani che si passano le casse in fila: nessuno parla, nessuno fa cadere niente, e tutto finisce prima che una campana abbia smesso di suonare.",
	},
	["sw.muse.w19.wagon.011"] = {
		"Al tramonto i carri che hanno fatto tardi escono con le lanterne già accese sulle stanghe, e i conducenti sperano che la strada resti tranquilla finché non compare Goldshire.",
		"Le lanterne dondolano dalle stanghe mentre gli ultimi carri escono al calar del sole. Goldshire non è lontana, ma a nessuno piace il tratto sotto gli alberi quando la luce se ne va.",
	},
	["sw.muse.w19.wagon.012"] = {
		"Quello che la gente desidera di più lo capisci dalla prima domanda che fa alle guardie della porta. I contadini chiedono del mercato, i soldati di un bagno caldo, e tutti gli altri di un posto dove sedersi.",
		"Ascolta le prime domande che si fanno alle guardie della porta. Dov'è la banca, dov'è la locanda, dov'è quello che mi deve dei soldi. Le guardie rispondono alle prime due.",
		"'Da che parte è la banca?' Le guardie della porta devono sentirselo chiedere mille volte a settimana. Ormai non rispondono più a parole: indicano e basta.",
	},
	["sw.muse.w19.wagon.013"] = {
		"Pare che ci sia sempre qualcuno che se ne va con tutto quello che ha legato su un carro: una sedia capovolta in cima, una culla, un gatto in un cesto. La porta saluta vite intere e non chiede mai perché.",
		"Mi è passato accanto un carro carico di una casa intera, rete del letto, pentole e una gabbietta in cima. Dovunque andassero, avevano deciso che non era Stormwind.",
		"Da questa città la gente se ne va, oltre ad arrivarci. Te ne accorgi solo quando sul carro c'è una sedia a dondolo legata in cima.",
	},
	["sw.muse.w19.wagon.014"] = {
		"si ritrae tra i curiosi mentre una colonna di soldati marcia verso la porta, gli stivali al passo sul ponte, e qualcuno tra la folla grida dei nomi.",
		"resta di lato con tutti gli altri mentre una compagnia in tabarri nuovi attraversa il ponte a passo pesante, e da qualche parte, dietro, qualcuno continua a salutare molto dopo che serva a qualcosa.",
	},
	["sw.muse.w19.wagon.015"] = {
		"Entrando, le guardie ti squadrano da capo a piedi. Uscendo, nessuno ti guarda due volte. A Stormwind importa chi fa entrare; del resto si occupa il mondo.",
		"La porta ha due facce. In entrata ti studia. In uscita si è già dimenticata di te, e la strada si prenda quel che resta.",
	},
	["sw.muse.w19.wagon.016"] = {
		"Di chi è questo carro? È piantato di traverso sulla strada da così tanto che i piccioni l'hanno già reclamato.",
		"Qualcuno sposti quel carro prima che metta radici.",
	},
	["sw.muse.w19.watch.001"] = {
		"All'angolo della banca, la pietra del selciato sotto l'alabarda della guardia ha un'ammaccatura chiara. Anni dello stesso calcio, posato nello stesso punto, da chiunque sia di turno.",
		"In questa città c'è un ciottolo con una piccola conca scavata dal calcio di un'alabarda. Stesso posto, stessa pietra, una guardia dopo l'altra, finché la pietra ha ceduto per prima.",
		"Chi sta ai posti di guardia cambia; le fossette che le alabarde lasciano nel selciato restano. Si potrebbe disegnare la mappa di tutto il corpo di guardia seguendo i buchini.",
	},
	["sw.muse.w19.watch.002"] = {
		"nota due guardie che, al cambio, si controllano a vicenda cinghie e fibbie, rapide e scrupolose, prima che una delle due possa andarsene.",
		"vede una guardia che smonta dare uno strattone alla cinghia di quella che monta, trovarla salda e andarsene senza una parola.",
		"sorprende una guardia che sta per smontare a raddrizzare con due dita l'elmo di una più giovane, come una zia che sistema un colletto.",
	},
	["sw.muse.w19.watch.003"] = {
		"In servizio, una guardia di questa città non si appoggia mai a un muro. Si appoggia all'alabarda, con un'inclinazione scelta con gran cura perché non conti.",
		"Niente appoggi, dicono i sergenti. Così le guardie si appoggiano all'alabarda, storte di un capello, e ogni sergente di Stormwind fa finta che sia stare dritti.",
		"Un sergente non vede mai una guardia appoggiata, raccontano le guardie, solo un'alabarda che si è spostata un po' dalla verticale. Le alabarde si spostano di continuo.",
	},
	["sw.muse.w19.watch.004"] = {
		"Una guardia vicino alla rampa del tram ha imparato a dire «perso», «rubato» e «da che parte» in nanico. Il suo accento fa trasalire i nani, che gli rispondono comunque, piano, come per fargli un favore.",
		"Quattro popoli, una sola guardia cittadina. Ho appena sentito una guardia ripetere a uno gnomo la sua lagnanza, parola per parola, per essere certa di avere ogni torto nell'ordine giusto.",
		"Qualcuno nella guardia cittadina ha imparato abbastanza gnomesco da capire «non doveva fare così». Dice che basta per quasi tutti i reclami che riceve.",
	},
	["sw.muse.w19.watch.005"] = {
		"La guardia cittadina tiene quello che la città perde per strada: un guanto, una scarpa da bambino, una chiave di chissà cosa. Una guardia mi ha detto che quasi nessuno torna a chiederli. La gente perde le cose e decide di non averle mai avute.",
		"In un angolo della caserma, dicono, le guardie conservano una cassa di oggetti ritrovati. Un guanto spaiato aspetta lì dentro l'altra mano, che ormai potrebbe trovarsi in qualunque angolo del regno.",
		"Gli oggetti ritrovati restano alla guardia per una stagione, poi vengono regalati. In giro per la città c'è un mendicante con tre guanti diversi, ognuno ancora in attesa del suo padrone.",
	},
	["sw.muse.w19.watch.006"] = {
		"Qualunque cosa traballi a corte, dicono le guardie, la paga arriva il giorno giusto. Lo dicono come chi tocca ferro.",
		"Il re è scomparso, i nobili si beccano, e alla guardia cittadina la paga arriva ancora puntuale. Chiunque ne parli, fra le guardie, sembra un po' stupito e attentissimo a non portare sfortuna.",
		"Credo che le guardie si fidino di ben poco, a corte, tranne che del tesoriere. Arriva il giorno stabilito, ogni volta, e ne parlano con qualcosa di simile alla tenerezza.",
	},
	["sw.muse.w19.watch.007"] = {
		"Una guardia fuori servizio la riconosci anche senza tabarda. Sceglie sempre il tavolo d'angolo, tiene d'occhio la porta e beve stando dritta.",
		"Togli il blu e l'oro, e una guardia cittadina resta una guardia cittadina: la sedia girata verso la sala, il boccale tenuto sull'attenti.",
	},
	["sw.muse.w19.watch.008"] = {
		"Sì, sono sempre io. No, non ho fatto niente. Ho solo una di quelle facce che continui a rivedere.",
		"Sono la stessa persona di prima, guardia. Giro in tondo solo perché i canali mi ci costringono.",
		"Due volte che mi incroci? Allora sai che non do fastidio. Anzi, che sono una noia.",
	},
	["sw.muse.w19.watch.009"] = {
		"sente una guardia su una sponda fischiare due note brevi a una guardia sull'altra, che risponde con una lunga; qualunque cosa si siano detti, sembrano soddisfatte tutte e due.",
		"coglie uno scambio di fischi fra due guardie da una parte all'altra dell'acqua, breve, breve, lungo, e guarda prima l'una poi l'altra senza capirci niente.",
		"ascolta due guardie scambiarsi fischi da una riva all'altra, un'intera conversazione in tre note, senza afferrarne una sillaba.",
	},
	["sw.muse.w19.watch.010"] = {
		"«Circolare, amici.» In bocca a una guardia di Stormwind, quell'«amici» lavora parecchio, e quasi sempre da avvertimento.",
		"A chiunque le guardie si rivolgono con un «amici miei» che non esclude nessuno. È cortese, è cordiale, ed è un modo di dire «la tua faccia me la sono segnata».",
		"Ogni guardia di Stormwind usa la stessa voce per «buona giornata» e per «fin lì basta». Imparare a sentire la differenza è la prima cosa che la città insegna.",
	},
	["sw.muse.w19.watch.011"] = {
		"Per una città così grande, le guardie sono poche. Raccontano che metà dei loro vecchi compagni è stata mandata a tappare gli altri guai del regno, e nessuno l'ha più rimandata indietro.",
		"Chiedi a un sergente quante guardie servirebbero alla città e quante ne ha. Ti darà due numeri e nessuna opinione.",
		"Conta le guardie fra la porta e la fortezza, poi conta i posti di guardia. Vincono i posti, e le guardie camminano più in fretta per coprire la differenza.",
	},
	["sw.muse.w19.watch.012"] = {
		"Nessuno canta della guardia cittadina, e se qualcuno lo facesse se ne vergognerebbero. Eppure ognuno di loro mi si metterebbe davanti senza che glielo chieda. Mi piacerebbe valerne la pena.",
		"Sotto la lucidatura, la guardia cittadina è qualche centinaio di persone stanche che hanno accettato di stare fra questa città e qualunque cosa venga a prenderla. La nostra parte non le ringrazia abbastanza.",
	},
	["sw.muse.w19.watch.013"] = {
		"osserva una guardia annotare in un libriccino il reclamo di un bottegaio, inumidendo con la lingua il mozzicone di matita fra una parola e l'altra, come se ciascuna gli costasse qualcosa.",
		"resta a guardare mentre una guardia mette per iscritto un cesto rubato con una grafia fitta, lo rilegge ad alta voce alla proprietaria e corregge una sola parola con una cura enorme.",
	},
	["sw.muse.w19.watch.014"] = {
		"Qui nell'Old Town le guardie conoscono tutti per nome, e li chiamano per cognome. È così che si distingue un saluto da un avvertimento.",
		"Alle guardie dell'Old Town non serve chiederti chi sei. Ti chiedono come sta tuo cugino, ed è peggio.",
		"Nell'Old Town una guardia che ti chiama per nome è cordiale. Una che ti chiama col nome di tuo padre ha letto qualcosa.",
	},
	["sw.muse.w19.watch.015"] = {
		"Cosa faccio in città? Cammino, soprattutto. Ogni tanto mi perdo. Mi riescono benissimo tutte e due.",
		"Affari? Un po' di spese, un po' di giri, e nessun guaio, proprio nessuno. Può pure scriverlo.",
	},
	["sw.muse.w19.watch.016"] = {
		"Turno lungo, guardia? Non rispondere. Lo so che non ti è permesso avere l'aria stanca.",
		"Eri lì in piedi anche l'ultima volta che ti ho visto. Ti lasciano mai sederti, o sarebbe tradimento?",
		"Riposo. Al tuo sergente non lo dico.",
	},
	["sw.muse.w19.watch.017"] = {
		"Grazie di stare lì, guardia. Qualcuno deve farlo, e meno male che non tocca a me.",
		"Dormo meglio, in questa città, sapendo che su quell'angolo qualcuno è sveglio. Continua pure.",
	},
	["sw.muse.w19.watch.018"] = {
		"C'è una legge contro chi ha l'aria di essersi perso? No? Allora sono la persona più rispettosa della legge di tutta la città.",
		"È vietato stare su un ponte senza sapere da che parte andare? Perché se lo è, mezza città è in arresto.",
	},
	["sw.muse.w19.widow.001"] = {
		"Al banco dei pasticci una vecchia ne chiede due, poi si corregge prima che il venditore si muova: uno. Avrà detto «due» per quarant'anni, e la bocca impara piano.",
		"Una vedova al banco del pane ordina due pagnotte per abitudine, se ne accorge e ne prende una. Il fornaio gliela incarta senza una parola, come farebbe chiunque abbia un po' di garbo.",
		"Il formaggiaio taglia a metà lo spicchio di una vedova prima che lei lo chieda. La conosce da abbastanza tempo da sapere che cosa chiede, adesso.",
	},
	["sw.muse.w19.widow.002"] = {
		"passa davanti a una donna vestita di un nero sbiadito che spazza la soglia di casa e parla, con affetto, a qualcuno dentro che non risponde mai.",
		"sente una vecchia vedova sul suo gradino raccontare alla porta vuota dietro di lei il prezzo delle uova, fermandosi educatamente ad aspettare la risposta.",
	},
	["sw.muse.w19.widow.003"] = {
		"A Stormwind ci sono tantissime donne in nero, e quasi tutto quel nero è sbiadito in grigio. Un lutto così vecchio ha smesso di essere una notizia ed è diventato un colore.",
		"Il nero di un abito da vedova sbiadisce a forza di lavarlo. In questa città capisci quale guerra si è presa il marito da quanto è diventato grigio il lutto.",
	},
	["sw.muse.w19.widow.004"] = {
		"L'insegna sopra la bottega del ciabattino porta ancora il nome di un uomo. Adesso la manda avanti la vedova, e quando i clienti chiedono di lui risponde che è fuori, il che, in un certo senso, è vero.",
		"Una vedova tiene la bottega del marito, i suoi attrezzi e il suo nome dipinto sopra la porta. È più brava di lui nel mestiere, sussurrano i vicini, ma nessuno si sognerebbe di ridipingere l'insegna.",
	},
	["sw.muse.w19.widow.005"] = {
		"Su una certa soglia si radunano alcune vedove a sgranare piselli e a confrontare i mariti che non ci sono più: il russare, la testardaggine, quell'unico ballo ben fatto. Ridono più di chiunque altro nella strada.",
		"Le vedove di un vicolo dividono un gradino e una cesta di rammendi, e parlano dei mariti morti come si parla di vicini difficili e amatissimi che hanno cambiato casa.",
	},
	["sw.muse.w19.widow.006"] = {
		"Quella donna porta al collo due anelli su un cordino, uno grande e uno piccolo. Non si chiede. La si lascia passare per prima al banco.",
		"Un anello troppo grande per qualunque suo dito le pende da un nastro sulla gola. Lo tocca quando suonano le campane. Ho smesso di fingere di non vedere.",
		"Certe donne anziane della città portano al collo, su uno spago, un anello da uomo. Non è una moda. Qui nessuno la scambia per tale.",
	},
	["sw.muse.w19.widow.007"] = {
		"Quando una guardia cade sulla strada del Westfall, dicono le guardie, alla vedova restituiscono il tabarro piegato in quattro e una borsa che non arriva alla fine della stagione. Il tabarro lei lo tiene.",
		"In una finestra lungo un vicolo c'è un tabarro azzurro e oro piegato, sbiadito dove arriva la luce. Le guardie che passano raddrizzano un po' il loro.",
	},
	["sw.muse.w19.widow.008"] = {
		"segue il lento lavoro di una vedova che a una finestra alta chiude le imposte mentre se ne va la luce, prima una e poi l'altra, piano, come chi chiude una conversazione.",
		"vede una vecchia a una finestra alta dare un ultimo sguardo giù per la strada mentre scende il crepuscolo, come per contare chi è rientrato, prima di accostare le imposte.",
	},
	["sw.muse.w19.widow.009"] = {
		"Alcune vedove di questa città hanno perso il marito per mano dei Defias; qualcuna l'ha perso per la causa dei Defias. Fanno la spesa agli stessi banchi e sono terribilmente educate l'una con l'altra.",
		"Due vedove nello stesso vicolo: un marito è morto a difendere la strada del Westfall, l'altro è morto dalla parte sbagliata. Si salutano con un cenno ogni giorno, e quel cenno costa qualcosa a tutte e due.",
	},
	["sw.muse.w19.widow.010"] = {
		"Non tutto il nero di questa città è lutto. Una vedova del vicolo dice che lo porta perché non mostra la fuliggine, e che suo marito, pace all'anima sua, non si accorgeva comunque di come si vestiva.",
		"Una vedova vicino alle forge porta il nero da dieci anni e non fa mistero del motivo. «Non si vede la fuliggine», dice, «e lui ci avrebbe riso sopra.»",
	},
	["sw.muse.w19.widow.011"] = {
		"In mezza città c'è una casa che tiene a mente il nome di qualcuno portato via dagli orchi, nella Prima Guerra o nella Seconda. Qui il lutto è quasi una forma di cittadinanza.",
		"Chiedi a una vecchia qualsiasi di Stormwind e ti nominerà qualcuno che le guerre le hanno portato via. Gli umani tengono vicini i loro morti; in questa città c'è parecchia ressa.",
	},
	["sw.muse.w19.widow.012"] = {
		"si vede mettere in mano da una vecchia vestita di un nero sbiadito un panino ancora tiepido preso dal suo cestino, «tanto ormai non li mangia nessuno».",
		"viene {g:fermato|fermata} da una vedova con un cestino di panini che per abitudine cuoce ancora per due, e riceve quello in più con l'ordine di mangiarlo come si deve, {g:seduto|seduta}.",
	},
	["sw.muse.w19.widow.013"] = {
		"Una vecchia si ferma sullo stesso ponte ogni volta che le campane suonano per un funerale, qualunque funerale, e resta lì finché non finisce. Il suo è stato tanto tempo fa, mi hanno detto. Lei continua a partecipare.",
		"Ogni volta che passa un funerale, di chiunque sia, la stessa vedova lo segue per un paio di strade e poi svolta. Non conosceva nessuno di loro. Conosce il passo.",
	},
	["sw.muse.w19.widow.014"] = {
		"Prego, signora, passi pure. Non ho nessuna fretta.",
		"Le porto io la cesta fino all'angolo. È sulla mia strada, qualunque sia la mia strada.",
		"Attenta al carro, signora. Si appoggi al mio braccio fino all'altro lato.",
	},
	["sw.quest_complete.w19.after.001"] = {
		"resta un momento senza niente da fare, che a Stormwind dura giusto il tempo che uno sconosciuto {g:gli|le} chieda la strada.",
		"ha appena voltato le spalle alla faccenda quando un viandante sperduto {g:gli|le} chiede indicazioni, come se il lavoro finito si leggesse in faccia.",
		"fa dieci passi e c'è già qualcuno che chiede la strada per la banca; indica senza nemmeno guardare, come fa la gente del posto.",
	},
	["sw.quest_complete.w19.after.002"] = {
		"Quello strano intervallo subito dopo un lavoro, quando nessuno vuole niente da me e non ricordo più cosa volessi io, prima che volessero qualcosa loro.",
		"I primi minuti dopo sono sempre i più strani. Le mani sono libere e la testa non le ha ancora raggiunte.",
		"Il subito dopo è un paese strano. Nessuno ha bisogno di me, e io ho scordato di che cosa avessi bisogno.",
	},
	["sw.quest_complete.w19.after.003"] = {
		"parte di buon passo, poi rallenta al primo angolo accorgendosi che, per una volta, non deve andare da nessuna parte.",
		"si allontana in fretta per pura abitudine, e solo due strade più in là si ricorda che non c'è motivo di correre.",
		"si avvia con l'andatura del lavoro, si accorge dell'errore a metà via e lascia che il passo si allenti.",
	},
	["sw.quest_complete.w19.after.004"] = {
		"Curioso: finché avevo in testa il lavoro, la città mi arrivava ovattata. Adesso ogni carretto e ogni banditore sono tornati a pieno volume.",
		"Il rumore di Stormwind torna tutto insieme, come se qualcuno avesse aperto una porta. Non mi ero {g:accorto|accorta} di aver smesso di sentirlo.",
		"Solo adesso risento la strada: martelli, contrattazioni, un cane con le sue idee. Il lavoro mi stava davanti, e copriva tutto.",
	},
	["sw.quest_complete.w19.after.005"] = {
		"si ferma a una vasca pubblica a sciacquarsi le mani, e ci resta un po' più a lungo di quanto richiedano due mani pulite.",
		"immerge le mani nell'acqua fredda di una vasca di strada e le lascia lì ancora un momento, anche quando sono già pulite.",
	},
	["sw.quest_complete.w19.after.006"] = {
		"Allora. Che stavo facendo prima di dire di sì a quella faccenda?",
		"Prima che cominciasse questa storia andavo in un certo posto. Qualcuno ha notato quale?",
		"Avevo dei programmi, prima di farmi coinvolgere. Piccoli. Mi pare ci fosse di mezzo una sedia.",
	},
	["sw.quest_complete.w19.after.007"] = {
		"Vedo la mia faccia in una vetrina e ha un'aria vagamente soddisfatta. Va bene così. Che faccia pure.",
		"Mi scorgo nella vetrina di un vetraio: l'aria di chi ha appena fatto una cosa come si deve. Me la concedo, per la lunghezza di una via.",
		"Il mio riflesso nella targa lucida di una porta ha un'aria compiaciuta. Non ho idea da chi l'abbia presa.",
	},
	["sw.quest_complete.w19.after.008"] = {
		"tira fuori dalla tasca un pezzo di carta spiegazzato, trova la riga che conta e la cancella con l'unghia del pollice.",
		"estrae una lista piegata e ripiegata, ci fa scorrere sopra un dito e cancella una riga con un mozzicone di carboncino.",
	},
	["sw.quest_complete.w19.after.009"] = {
		"Finire un lavoro è il modo in cui scopro quanti altri ne ho ignorati. La lista dietro questo ha messo i denti.",
		"Tolto quello dal mucchio, finalmente vedo il mucchio. È più alto di quanto sperassi.",
	},
	["sw.quest_complete.w19.after.010"] = {
		"raccoglie un guanto caduto a qualcuno, cerca con lo sguardo il proprietario e alla fine lo posa su un davanzale, dove qualcuno possa notarlo.",
		"nota un guanto per terra, si guarda intorno da ogni lato in cerca di chi l'ha perso e lo appoggia su una soglia, con le dita all'insù.",
		"trova un giocattolo di legno abbandonato nel rigagnolo, lo sistema sul gradino più vicino e se ne va senza aspettare di vedere chi lo reclami.",
	},
	["sw.quest_complete.w19.after.011"] = {
		"Un momento solo. Vorrei restare qui e godermi di aver finito.",
		"Nessuno mi metta niente in mano. Mi sto godendo le mani vuote.",
		"Solo un attimo di pace, per favore. Me lo sono {g:guadagnato|guadagnata}, il diritto di starmene qui senza servire a niente.",
	},
	["sw.quest_complete.w19.after.012"] = {
		"si prende una spallata da un impiegato di corsa con le braccia piene di pergamene, che chiede scusa all'aria vuota due passi più in là.",
		"riceve una gomitata da un corriere che va di fretta, e uno «scusi» che arriva molto più giù lungo la via, ben dopo il corriere.",
	},
	["sw.quest_complete.w19.after.013"] = {
		"Finito, e nessuno in particolare a cui dirlo. Una città così affollata non dovrebbe far sentire soli. Un po' lo fa, giusto il tempo di una via.",
		"Non c'è nessuno a cui dire «è fatta». Migliaia di persone a portata di voce, e nessuna aspetta la notizia.",
	},
	["sw.quest_complete.w19.after.014"] = {
		"si siede sul gradino di un portone per far riposare le gambe, e si rialza in fretta quando la porta si apre alle sue spalle.",
		"si concede un attimo di riposo su una cassa di un mercante, finché lo sguardo lungo del mercante chiarisce la questione senza una parola.",
		"si lascia andare su un paracarro di pietra all'angolo della strada, un sedile che tutta la città sembra considerare libero.",
	},
	["sw.quest_complete.w19.after.015"] = {
		"Anche qui dentro Stormwind passa sotto la porta: ruote, un grido, un cane. La città aspetta che io esca a raggiungerla.",
		"Muri robusti, una stanza quieta, e la strada che filtra lo stesso dalle imposte, impaziente. Ancora un minuto sotto questo tetto, poi le risponderò.",
	},
	["sw.quest_complete.w19.after.016"] = {
		"si raddrizza un poco al passaggio di una pattuglia della guardia cittadina, senza un motivo preciso, e si rilassa appena è passata.",
		"sente la schiena drizzarsi da sola mentre sfila una fila di guardie, e la lascia andare solo quando l'ultimo elmo ha girato l'angolo.",
	},
	["sw.quest_complete.w19.after.017"] = {
		"Vorrei raccontare a qualcuno com'è andata. Il fornaio ha da fare, la guardia finge di non sentire, quindi me lo racconto da {g:solo|sola}, per esteso.",
		"Ho dentro un resoconto completo di questa faccenda e nessuno che lo ascolti. Va bene. Lo reciterò agli stivali, strada facendo.",
	},
	["sw.quest_complete.w19.after.018"] = {
		"si volta una volta sola, quasi aspettandosi di essere {g:richiamato|richiamata} per qualcosa di dimenticato, e prosegue quando nessuno chiama.",
		"all'angolo si gira per un'ultima occhiata, come si fa quando una cosa è finita più in sordina del previsto, poi va avanti.",
	},
	["sw.quest_complete.w19.after.019"] = {
		"La strada sembra più cordiale di prima. La strada non è cambiata. Sono io che ho posato qualcosa.",
		"Stessi ciottoli, stessa folla, eppure hanno un'aria più gentile. Finire una cosa fa questo effetto a una città, per un po'.",
	},
	["sw.quest_complete.w19.after.020"] = {
		"Finito con le lanterne già accese. La strada si è svuotata, e gli unici ancora in giro sono quelli della guardia, stanchi più o meno quanto me.",
		"È tardi, e la città è quasi tutta a letto. La lanterna di una guardia ondeggia in fondo alla via; io e la guardia ci scambiamo il cenno degli ultimi due ancora svegli.",
	},
	["sw.quest_complete.w19.after.021"] = {
		"fa strada a una fila di apprendisti assonnati che si trascinano verso le botteghe dei loro maestri: il primo turno della città che incrocia chi ha già chiuso il proprio.",
		"si allontana tra imposte ancora chiuse, incrociando solo apprendisti diretti al lavoro, che guardano chi ha già finito con aperta invidia.",
	},
	["sw.quest_complete.w19.after.022"] = {
		"Fatto, e adesso la pioggia può fare quello che vuole. Non devo essere da nessuna parte, quindi non c'è motivo di correre.",
		"Tutti gli altri corrono al riparo. Io ho appena finito, quindi cammino, e la pioggia può venire con me se le va.",
	},
	["sw.quest_complete.w19.after.023"] = {
		"si allontana nella nebbia e in dieci passi non si vede più, come se la città avesse ripiegato tutta la faccenda e l'avesse messa via.",
		"imbocca una via di cui la nebbia ha inghiottito il fondo, e si lascia inghiottire a sua volta, senza fretta.",
	},
	["sw.quest_complete.w19.clerk.001"] = {
		"Quel grazie è arrivato con la voce di chi scorre un elenco. Io ero più o meno al punto quattro.",
		"{g:Ringraziato|Ringraziata} col tono dell'appello. Mi aspettavo quasi di dover rispondere «presente».",
		"Le parole erano gentili; la voce era quella di un elenco da smaltire. La gratitudine di Stormwind ha parecchi nomi in lista.",
	},
	["sw.quest_complete.w19.clerk.002"] = {
		"aspetta la fine di un ringraziamento interrotto due volte, una da un passante che chiede la strada e una da un fattorino con un biglietto.",
		"si sente ringraziare a rate, fra le domande degli altri, e resta in paziente attesa dell'ultima rata.",
		"riceve la fine di una frase di ringraziamento qualche istante dopo l'inizio: la parte di mezzo è andata a qualcun altro.",
	},
	["sw.quest_complete.w19.clerk.003"] = {
		"In questa città chi ti ringrazia raramente è chi si ricorderà di te. Ricordare è compito di qualcun altro, più in alto, e quel qualcuno ha da fare.",
		"Qui i ringraziamenti si distribuiscono a livello di strada. La memoria la custodiscono più in alto, in stanze che non vedrò mai, persone che non mi hanno mai {g:conosciuto|conosciuta}.",
	},
	["sw.quest_complete.w19.clerk.004"] = {
		"Il nome? Scrivete «chi l'ha fatto». È esatto.",
		"Titolo? Nessuno. Scrivete «un paio di mani di passaggio» e sottolineate.",
		"Niente grado, niente casato, niente titoli dopo il nome. Solo il lavoro, temo.",
	},
	["sw.quest_complete.w19.clerk.005"] = {
		"Metà di quelli che danno lavoro a Stormwind hanno le dita sporche d'inchiostro. L'altra metà di farina, o di fuliggine, o di catrame. Dalla macchia capisci in che genere di guaio ti stai cacciando.",
		"Ho imparato a leggere le mani che mi pagano, qui: inchiostro vuol dire scartoffie, fuliggine vuol dire forge, farina vuol dire che qualcuno ha fretta. Sbagliano di rado.",
		"In questa città indovini il lavoro dalla mano che te lo affida. Quelle macchiate d'inchiostro vogliono che si trovi qualcosa; quelle piene di cicatrici, che si fermi qualcosa.",
	},
	["sw.quest_complete.w19.clerk.006"] = {
		"attraversa in ordine tutta la cortesia della città: il grazie, il cenno, un'osservazione sul prezzo del pane, e il congedo.",
		"viene {g:accompagnato|accompagnata} di buon passo per il rito di un ringraziamento alla Stormwind, parola, cenno e un commento sul traffico dei ponti, e poi {g:lasciato|lasciata} andare.",
		"si sottopone alla piccola cerimonia educata che la città riserva a questi momenti, e ne esce {g:congedato|congedata} con la precisione di un'esercitazione.",
	},
	["sw.quest_complete.w19.clerk.007"] = {
		"No, non alzarti. L'uscita da questa conversazione la trovo da me.",
		"Non voglio trattenerti. Si vede che hai già il prossimo in attesa.",
		"Vedo che hai da fare. Vai pure: mi ringrazio da me, a nome tuo.",
	},
	["sw.quest_complete.w19.clerk.008"] = {
		"Per un momento tutto il resto si è fermato: le carte posate, il prossimo invitato ad aspettare, tutti e due gli occhi su di me. In questa città è una paga rara.",
		"Hanno posato quello che avevano in mano per dirlo. A Stormwind, dove le mani sono sempre piene, vale moltissimo.",
		"Un'attenzione intera, per la durata di un grazie. In questa città nessuno ne ha da avanzare, e a me l'hanno data.",
	},
	["sw.quest_complete.w19.clerk.009"] = {
		"prova a leggere al contrario il libriccino in cui viene annotata la faccenda, e ci ricava soltanto la data.",
		"osserva la faccenda finire in un taccuino malconcio, in lettere minute e fitte, e non chiede di vedere la pagina.",
		"si sporge appena per vedere cosa si scrive della faccenda, coglie la parola «soddisfacente», e si raddrizza.",
	},
	["sw.quest_complete.w19.clerk.010"] = {
		"Il lavoro me l'ha chiesto uno, il grazie me l'ha detto un altro, la paga me l'ha data un terzo. C'è un ufficio anche per la gratitudine?",
		"Uno per chiedere, uno per ringraziare, uno per le monete. Stormwind non fa mai niente con un paio di mani soltanto.",
		"Devo ringraziare te, o chi mi ha {g:ringraziato|ringraziata}, o chi mi ha {g:pagato|pagata}? Ho perso il filo della catena di comando.",
	},
	["sw.quest_complete.w19.clerk.011"] = {
		"Quelli che distribuiscono lavoro in questa città hanno tutti la stessa faccia, come se non si fossero più seduti dall'inizio della reggenza.",
		"Occhi stanchi dietro il ringraziamento. Chiunque tenga in piedi Stormwind sembra farlo senza aiuto, e da più tempo di quanto si volesse.",
		"Chi affida incarichi, qui, ti ringrazia con la faccia di chi regge un angolo di regno. Quasi sempre è proprio così.",
	},
	["sw.quest_complete.w19.clerk.012"] = {
		"È questo lo sportello giusto per i ringraziamenti, o devo fare la fila altrove?",
		"Ringraziamento ricevuto. Prendo un gettone e aspetto che mi chiamino per il resto?",
		"A quale porta si bussa per la gratitudine? C'è sempre una porta.",
	},
	["sw.quest_complete.w19.clerk.013"] = {
		"Il grazie è arrivato con la stessa voce che si userebbe per una consegna di chiodi. Non ne faccio una colpa a nessuno: sospetto che qui sia così che si arriva in fondo alla settimana.",
		"Piatto, formale e veloce, come se la faccenda fosse stata piccola. Ho imparato che a Stormwind più la voce è piatta, più grossa è la preoccupazione che tiene schiacciata.",
	},
	["sw.quest_complete.w19.clerk.014"] = {
		"resta lì mentre la faccenda viene messa per iscritto, asciugata con la carta assorbente, riletta a mezza voce e ricopiata più in bella.",
		"aspetta la fine di due stesure di una nota sulla faccenda, la seconda evidentemente in bella copia.",
		"guarda scrivere una sola riga sulla faccenda, spolverarla di sabbia, scrutarla da vicino e infine, dopo un po' di riflessione, sottolinearla.",
	},
	["sw.quest_complete.w19.clerk.015"] = {
		"«Buon viandante»? Un nome ce l'ho, sai. Non importa: tieniti la cortesia, ti dona.",
		"«{g:Amico|Amica}», eh? Gentile. Il mio nome per il registro lo vorrai, immagino.",
	},
	["sw.quest_complete.w19.clerk.016"] = {
		"Mi sa che il grazie serve più a te che a me. Quindi: grazie.",
		"Riposati un po', se questa città te lo permette mai. Dico sul serio.",
		"E grazie a te, per la fiducia. Adesso siediti un momento, prima di crollare.",
	},
	["sw.quest_complete.w19.clerk.017"] = {
		"Il grazie è uscito dalla nebbia un istante prima della faccia. Con un tempo così la città intera è solo voci che fanno affari.",
		"Nebbia sulla strada, e così la paga e il grazie sembravano arrivare dal nulla. Un modo molto da Stormwind di essere {g:ricompensato|ricompensata}: con garbo, da una sagoma.",
	},
	["sw.quest_complete.w19.clerk.018"] = {
		"Dietro di me si sta formando la fila. Mi sposto prima che degeneri.",
		"Mi tolgo di mezzo. A Stormwind c'è sempre qualcuno che aspetta.",
		"Subito dietro di me c'è il guaio di qualcun altro. A te la parola.",
	},
	["sw.quest_complete.w19.coin.001"] = {
		"Preciso fino al rame, e consegnato come se arrotondare, a Stormwind, fosse un reato. Forse lo è.",
		"Non un rame in più del pattuito, non uno in meno. Questa città preferirebbe perdere un dente che arrotondare una somma.",
		"La paga torna al rame esatto. Qui la generosità si misura col righello.",
	},
	["sw.quest_complete.w19.coin.002"] = {
		"riceve la paga avvolta in un cartoccio, con la somma scritta fuori in una grafia piccola e attenta, e la mette via senza aprirla.",
		"prende le monete incartate in un ritaglio di pergamena con la cifra segnata a inchiostro, e intasca il pacchetto così com'è.",
		"si vede porgere un pacchettino ordinato di monete, con tanto di totale scritto sopra: un modo di pagare che forse verrebbe in mente solo a una capitale.",
	},
	["sw.quest_complete.w19.coin.003"] = {
		"Guardatemi, una persona benestante. Dovrebbe durare fino al Trade District.",
		"{g:Ricco|Ricca}! Per poco. La casa d'aste è a qualche strada da qui.",
		"Finalmente la ricchezza. Le do tempo fino alla prima vetrina.",
	},
	["sw.quest_complete.w19.coin.004"] = {
		"In questa città la paga sa sempre di chi l'ha tenuta per ultimo: inchiostro, olio da lampada, cipolle, incenso. Annusando la borsa indovineresti il mestiere.",
		"Ogni moneta che passa di mano a Stormwind si porta dietro l'odore dell'ultima tasca. Sego, pergamena, farina da fornaio. Io la mia non la annuso mai davanti a nessuno.",
		"Le monete prendono il mestiere di ogni mano che attraversano. Queste sanno appena di cera di candela e della pipa di qualcuno.",
	},
	["sw.quest_complete.w19.coin.005"] = {
		"ottiene la paga insieme alle scuse perché è poca, scuse un po' più lunghe della paga, e accetta tutt'e due.",
		"riceve una somma modesta e un lungo rammarico perché non è di più, e intasca le monete mentre il rammarico è ancora in corso di spiegazione.",
		"ascolta scuse sincere per la modestia della ricompensa, annuisce dall'inizio alla fine, e la mette via comunque.",
	},
	["sw.quest_complete.w19.coin.006"] = {
		"allinea le monete sul palmo con un dito, come un impiegato pareggia una pila di carte, e le fa scivolare nella borsa.",
		"batte il mucchietto della paga contro il palmo finché non forma una colonnina ordinata, poi lo lascia cadere nel borsello.",
		"impila la paga con la cura di un banco di cambio, ogni bordo al suo posto, poi rovina tutto rovesciandola nella borsa in un colpo solo.",
	},
	["sw.quest_complete.w19.coin.007"] = {
		"Un ragazzino contro il muro ha seguito ogni moneta fino alla mia borsa. Non per avidità: stava imparando che faccia ha il lavoro quando viene pagato.",
		"Dall'altra parte della via una bambina ha accompagnato la paga da una mano all'altra con occhi attenti, come chi studia un mestiere che intende imparare.",
		"Sui gradini lì accanto c'era una bambina stracciata che guardava la paga passare di mano. A Stormwind anche i monelli tengono i conti.",
	},
	["sw.quest_complete.w19.coin.008"] = {
		"Questa va dritta in banca, prima che i negozi se ne accorgano.",
		"Questa finisce in un caveau. Prima, però, ogni mercante fra me e la banca proverà a convincerla a uscire dalla mia tasca.",
		"In banca, in fretta, e per i vicoli. I bottegai di questa città hanno orecchie da segugio.",
	},
	["sw.quest_complete.w19.coin.009"] = {
		"C'è una tassa su questa? Non ditemelo. Preferisco arrivare in banca nell'ignoranza.",
		"La corona ne vorrà di certo una fetta. Se il suo esattore mi cerca, sono {g:difficilissimo|difficilissima} da trovare.",
		"In un regno così affezionato alle scartoffie ci sarà pure una tassa sulle ricompense. Nessuno ne parli.",
	},
	["sw.quest_complete.w19.coin.010"] = {
		"riceve il compenso senza che le mani si sfiorino: le monete scendono nel palmo aperto da un dito di distanza, con prudenza.",
		"tende il palmo e riceve la paga lasciata cadere dall'alto, con la cortesia schizzinosa di chi tiene i polsini puliti.",
		"accoglie le monete lasciate cadere una a una, un piccolo tintinnio di rame, senza che un dito altrui sfiori il suo.",
	},
	["sw.quest_complete.w19.coin.011"] = {
		"Paga onesta per un lavoro onesto. In un regno dove c'è chi ha indossato una maschera rossa proprio per la mancanza di questo, non la prendo alla leggera.",
		"I Defias sono nati da salari mai pagati. Ogni moneta giusta che passa di mano a Stormwind è un piccolo argomento contro di loro.",
		"Mi hanno {g:pagato|pagata}, e il giusto. Laggiù a ovest ci sono uomini mascherati che ti direbbero che tutta la lite sta lì.",
	},
	["sw.quest_complete.w19.coin.012"] = {
		"È troppo. No? Allora non insisto una seconda volta.",
		"Sicuri della cifra? Lo chiedo una volta sola. Una.",
		"Mi pare generoso. Protesto un pochino, per educazione. Ecco, protestato.",
	},
	["sw.quest_complete.w19.coin.013"] = {
		"Monete di Stormwind per un lavoro per Stormwind. L'avrei fatto anche per meno. Nessuno ha bisogno di saperlo.",
		"Questo l'avrei fatto per niente, per il bene del regno. Il regno ha pagato lo stesso. Bene: il mio segreto resta mio.",
		"All'Alleanza l'avrei dato per una stretta di mano. Ha pagato invece, e come si deve: ecco perché la stretta di mano la merita.",
	},
	["sw.quest_complete.w19.coin.014"] = {
		"intasca la paga in fretta, prima che la pioggia ci arrivi, e abbottona la patta sopra la borsa.",
		"ripara le monete dalla pioggia con la mano a coppa e le infila nel borsello ancora imperlate d'acqua.",
		"si curva sulla borsa aperta per difenderla dalla pioggia mentre la paga ci entra, poi la stringe con le dita bagnate.",
	},
	["sw.quest_complete.w19.coin.015"] = {
		"Paga ricevuta al lume delle lanterne, dove rame e argento prendono lo stesso colore. Alla banca scoprirò cos'era.",
		"A quest'ora ogni moneta prende il colore delle lampade. Qualunque cosa mi abbiano dato, sembra un bel mucchio di qualcosa.",
		"La paga è passata di mano sotto un lampione, e le monete sono uscite tutte uguali, piccoli dischi gialli senza valore scritto.",
	},
	["sw.quest_complete.w19.coin.016"] = {
		"Il sacchetto vale più di quello che c'è dentro. Stormwind adora le confezioni.",
		"Laccio ricamato, piccolo fermaglio d'ottone. Questa città veste il denaro come per andare a corte.",
		"Una borsa con la nappa, nientemeno. Le monete dentro sembrano un po' in imbarazzo.",
	},
	["sw.quest_complete.w19.coin.017"] = {
		"Paga in tasca prima ancora che aprano le botteghe. Soldi in mano e nessun posto dove spenderli.",
		"Monete in tasca e tutte le imposte ancora chiuse. Il tempismo di questa città è impeccabile.",
		"Paga presto, botteghe chiuse. Per una volta saranno le mie monete ad aspettare me.",
	},
	["sw.quest_complete.w19.coin.018"] = {
		"Le monete avevano l'aria dei soldi messi da parte un poco per volta, in un barattolo o in una calza. Qualcuno ha rinunciato a qualcosa per pagare questo.",
		"Non sono monete da banchiere, queste. Consumate, un po' opache, raccolte piano piano, a sentirle. Le spenderò con cura.",
		"Monete piccole, vecchie, di quelle che restano in fondo a un cassetto finché non servono. Sono servite per me.",
	},
	["sw.quest_complete.w19.duty.001"] = {
		"Il reggente non può stare in ogni strada. In quella qualcuno doveva esserci.",
		"Bolvar regge il regno; non può reggere ogni piccola cosa che c'è dentro. Certe ricadono su chi passa di lì. Questa è toccata a me.",
		"Lassù nella fortezza c'è un trono senza un adulto a sedervi. La città va avanti su sedie più piccole, e io ne ho appena occupata una.",
	},
	["sw.quest_complete.w19.duty.002"] = {
		"I decreti portano il nome di un bambino. Lavori come questo non portano il nome di nessuno, e forse per questo vengono fatti.",
		"Nessun sigillo, nessun araldo, nessun nome. Piccolo lavoro in un regno senza il suo re, e il regno va avanti proprio su questo.",
	},
	["sw.quest_complete.w19.duty.003"] = {
		"Mi hanno {g:pagato|pagata} fino all'ultima moneta. Non tutti quelli che hanno lavorato per Stormwind possono dirlo.",
		"Paga intera, e subito. In questa città è una cosa da notare; ci sono famiglie intere a Westfall che saprebbero spiegarti perché.",
		"Paga giusta per lavoro giusto. Dillo piano, a Stormwind, e guarda quali facce cambiano.",
	},
	["sw.quest_complete.w19.duty.004"] = {
		"Le guardie badano alle mura, gli scrivani ai registri, i preti alle campane. I fili sciolti vanno a chi ha voglia di raccoglierli. Ultimamente, a me.",
		"Ogni città ha una lista di lavori che nessuno ha mai scritto. Quella di Stormwind si è appena accorciata di una riga, e nessuno la vedrà mai.",
		"La guardia ha i suoi giri e i nobili i loro consigli. Nel mezzo restano i lavori piccoli, e qualcuno deve pur raccoglierli.",
	},
	["sw.quest_complete.w19.duty.005"] = {
		"Qualcuno dica al reggente che può depennare anche questa. Non ne saprà mai niente, ma diteglielo.",
		"Una preoccupazione in meno per la fortezza. Non che la fortezza saprà mai di averla avuta.",
	},
	["sw.quest_complete.w19.duty.006"] = {
		"Se mai il re tornerà, troverà una città che si è tenuta insieme da sola. L'hanno fatto mille piccoli lavori. Uno era mio.",
		"Qualunque cosa sia successa a Varian, la città non è rimasta ad aspettare di saperlo. Ha continuato a ripararsi, una commissione dopo l'altra, e poco fa la commissione ero io.",
	},
	["sw.quest_complete.w19.duty.007"] = {
		"L'Alleanza è una parola grande, da pergamene e consigli. In una strada come questa diventa più piccola: qualcuno ha bisogno d'aiuto, qualcuno dice di sì.",
		"Sulla carta l'Alleanza la tengono insieme i trattati. Sul selciato, lavori come questo.",
	},
	["sw.quest_complete.w19.duty.008"] = {
		"Ho aiutato Stormwind, o solo una persona che ci vive? Non saprei dirlo, e forse non esiste un altro modo di aiutare una città.",
		"Una persona aiutata. Se la città se ne sia accorta è un'altra faccenda. Ho il sospetto che una città sia soprattutto gente che non sente mai parlare dei guai degli altri.",
		"Una città è la somma di tanti piccoli salvataggi, credo. Nessuno fa il totale, ma è grazie al totale che questo posto funziona ancora.",
	},
	["sw.quest_complete.w19.duty.009"] = {
		"Il loro guaio sparito, la mia borsa un po' più pesante. Trovatemi uno scambio più onesto in questa città.",
		"Un problema in meno per loro, qualche moneta in più per me. I mercanti potrebbero imparare qualcosa da un affare così.",
	},
	["sw.quest_complete.w19.duty.010"] = {
		"alza lo sguardo verso le torri della fortezza, dove da qualche parte un ragazzo impara a regnare, poi lo riporta sulla strada, dove il regno si fa davvero.",
		"solleva per un momento gli occhi alle alte torri della fortezza, come per fare rapporto, e non trova nessuno a cui farlo.",
	},
	["sw.quest_complete.w19.duty.011"] = {
		"Qualcuno a Stormwind dormirà un po' più tranquillo. Non lo riconoscerei per strada, ed è giusto così.",
		"Una piccola preoccupazione sparita da una casa. Quella casa non ricorderà il mio nome, e preferisco che non ne abbia bisogno.",
		"Una cosa in meno che tiene sveglio qualcuno. Non conoscerò mai quel cuscino, ma ne sono {g:contento|contenta}.",
	},
	["sw.quest_complete.w19.duty.012"] = {
		"Troppi figli di questa città sono di stanza lontano, su mura che portano altri nomi. Così Stormwind chiede a chi passa, e chi passa dice di sì.",
		"Se le guarnigioni fossero rientrate, nessuno avrebbe bisogno di me per lavori così. Non lo sono, e la città si arrangia con le mani che ha.",
	},
	["sw.quest_complete.w19.duty.013"] = {
		"Lunga vita al giovane re, e che suo padre venga ritrovato. Fino ad allora, il resto di noi porta quello che può.",
		"Il leone va nutrito lo stesso, corona o non corona. Felice di fare la mia parte.",
	},
	["sw.quest_complete.w19.duty.014"] = {
		"Non era un lavoro glorioso. Quasi niente di ciò che tiene in piedi una città lo è: sono scoli, debiti e porte che chiudono come si deve.",
		"Nessuno ci farà una canzone. Le città non stanno in piedi grazie alle canzoni, ma grazie a grondaie, cardini e a qualcuno che si prende il disturbo.",
	},
	["sw.quest_complete.w19.duty.015"] = {
		"si china a raccogliere un pezzo di cassa rotta in mezzo alla strada e lo appoggia contro un muro: l'abitudine di sistemare le cose non si è ancora spenta.",
		"passando, aggancia un'imposta che sbatte libera, come se alle mani nessuno avesse ancora detto che il lavoro è finito.",
	},
	["sw.quest_complete.w19.duty.016"] = {
		"Il ragazzo nella fortezza erediterà una città rattoppata da mani sconosciute. Spero che qualcuno glielo dica, un giorno, quando sarà abbastanza grande da ascoltare.",
		"Anduin regnerà su strade che gente come me ha rattoppato mentre lui stava alle lezioni. Non saprà mai chi è stato. Meglio: avrà già abbastanza da ricordare.",
	},
	["sw.quest_complete.w19.duty.017"] = {
		"Un regno senza il suo re si appoggia a chi è più vicino. Preferisco che si appoggi a me piuttosto che voltarmi dall'altra parte.",
		"Quando la corona resta vuota, il peso si sparge, un poco su ciascuno. Io ne ho portato la mia piccola parte.",
	},
	["sw.quest_complete.w19.duty.018"] = {
		"Prima di me tanta gente ha fatto lavori del genere per Stormwind, e nessuno ha avuto una targa. Bella compagnia, chiunque fossero.",
		"Altri di passaggio hanno sbrigato commissioni per questa città prima di me, e altri lo faranno dopo. Una lunga fila di mani senza nome che nessuno ha mai annotato.",
	},
	["sw.quest_complete.w19.duty.019"] = {
		"Lavorare per Stormwind non sembra mai proprio un lavoro. È più come spazzare il gradino di una casa che tutta l'Alleanza ha in comune.",
		"Qualunque cosa faccia per questa città, la faccio per ogni alleato che ne varca il portone. Una casa in comune vuole faccende in comune.",
	},
	["sw.quest_complete.w19.ledger.001"] = {
		"In qualche registro adesso questa è una riga, fra una consegna di chiodi e un reclamo per uno scolo. Sono in onesta compagnia.",
		"Annotata, immagino, un po' sotto il prezzo dell'olio da lampada e un po' sopra una lite per una staccionata. È l'altezza giusta.",
		"Finirà in una colonna fra un assale di carro spezzato e una capra smarrita. La storia di Stormwind, una riga minuscola dopo l'altra.",
	},
	["sw.quest_complete.w19.ledger.002"] = {
		"Scrivi «saldato», e asciuga bene l'inchiostro. Non vorrei che sbavasse sulla riga del tizio dopo.",
		"Scrivilo in bella, per favore. Mi dispiacerebbe essere {g:scambiato|scambiata} per un ordine di grano.",
		"A inchiostro, per cortesia, e con la carta assorbente.",
	},
	["sw.quest_complete.w19.ledger.003"] = {
		"I conti di questa città tornano al rame, amano dire gli scrivani. Tutti tranne un vecchio conto, quello degli scalpellini.",
		"Ormai Stormwind paga quello che deve, e lo paga preciso. Il prezzo dell'altro sistema l'ha imparato nel Westfall.",
	},
	["sw.quest_complete.w19.ledger.004"] = {
		"In qualche stanza dei conti del Trade District il mio lavoretto diventerà una cifra in una colonna. Lì sembrerà piccolissimo, ed è giusto così.",
		"Quando arriverà in una stanza dei conti sarà tre cifre e una data. Tutto il resto rimane a me.",
		"Ridotto a una somma, il lavoro sembrerà poca cosa. Le somme sono fatte così: lasciano fuori la strada percorsa.",
	},
	["sw.quest_complete.w19.ledger.005"] = {
		"Tenete un elenco di tutti quelli che hanno dato una mano? Quanto è lungo? Sono verso l'inizio?",
		"C'è un libro dei nomi per questo genere di cose? Vorrei sapere in che compagnia mi trovo.",
		"Il mio nome finisce in un libro da qualche parte? Mettetelo accanto a qualcuno di simpatico.",
	},
	["sw.quest_complete.w19.ledger.006"] = {
		"Ogni lavoro onesto fatto in questa città è una riga sul lato buono dei conti del regno. Qualcuno deve pur continuare a scriverci, coi Defias così indaffarati sull'altro.",
		"Il regno tiene due colonne, mi pare: quello che è stato aggiustato e quello che è stato rotto. Ho appena aggiunto qualcosa alla più corta.",
		"La pagina dei guai di Stormwind si è accorciata di una riga. È una pagina lunga, ma l'inchiostro va in una sola direzione.",
	},
	["sw.quest_complete.w19.ledger.007"] = {
		"deve dare il proprio nome per il registro, lo ripete due volte lettera per lettera, e lo vede scrivere in una terza maniera.",
		"dà il proprio nome per il registro e guarda la penna migliorarlo, con grande sicurezza.",
		"ripete il proprio nome per il registro, poi lo ripete ancora più piano, e si sporge a guardare il risultato con rassegnazione.",
	},
	["sw.quest_complete.w19.ledger.008"] = {
		"Prima o poi ogni debito non saldato di questo regno finisce su qualche scrivania vicino al trono. Questo, almeno, non ci arriverà mai.",
		"Vicino al trono ci dev'essere una pila di conti non pagati del regno, che aspetta il ritorno di un re per essere guardata. Meno male che il mio non è lì in mezzo.",
	},
	["sw.quest_complete.w19.ledger.009"] = {
		"Paga, grazie, una riga in un libro. Il grazie sarà svanito per cena; l'inchiostro no. Stormwind si fida dell'inchiostro.",
		"L'inchiostro resterà quando il grazie sarà già sbiadito, ed è quella la parte di me che Stormwind conserverà.",
		"Le parole escono da una città come il fumo da un camino. L'inchiostro resta. So a quale dei due crede questo posto.",
	},
	["sw.quest_complete.w19.ledger.010"] = {
		"Mettetelo sul mio conto. Non ce l'ho? Allora apritene uno, tornerò.",
		"Apritemi una pagina. Ho idea che ci saranno altre righe.",
		"Tenete il mio nome a portata di mano. Non ho intenzione di fermarmi a una voce sola.",
	},
	["sw.quest_complete.w19.ledger.011"] = {
		"La vecchia città è bruciata con tutti i suoi registri, dicono gli scrivani, e quella nuova scrive tutto due volte. Non posso darle torto.",
		"Perdi un archivio intero in un incendio degli orchi e anche tu terresti copia dei ringraziamenti. Stormwind ricorda quanto le è costato dimenticare.",
		"Gli scrivani della prima città, si racconta, videro i loro registri andare in fumo. I loro eredi archiviano tutto in triplice copia, e qui nessuno ride di loro per questo.",
	},
	["sw.quest_complete.w19.ledger.012"] = {
		"piega un foglietto nello zaino in mezzo a una decina d'altri simili: un piccolo archivio personale delle commissioni sbrigate in questa città.",
		"aggiunge un biglietto spiegazzato al mazzetto di quelli vecchi che tiene nello zaino, e ci riannoda lo spago intorno.",
		"scrive due parole su un foglietto con un mozzicone di carboncino, le considera, e archivia il foglietto nello zaino.",
	},
	["sw.quest_complete.w19.ledger.013"] = {
		"Se una parte di questa paga viene dalla borsa della corona, è arrivata con la firma di un reggente sull'ordine. Il regno paga i suoi debiti, re o non re.",
		"Nessun re a firmare i conti del regno, e la paga arriva lo stesso puntuale. Chiunque tenga i libri per Bolvar li tiene onesti.",
	},
	["sw.quest_complete.w19.ledger.014"] = {
		"Nel libro finirà il risultato. Tutto il resto, la parte che racconterei davvero, non ha una colonna.",
		"I registri tengono il cosa e il quanto. Il perché fra le righe non ci sta mai, e allora me lo porto via io.",
		"Uno scrivano farebbe il totale del lavoro in un attimo. I pezzi che contavano non si sommano a niente, e me li tengo.",
	},
	["sw.quest_complete.w19.ledger.015"] = {
		"Niente ricevuta? Allora me lo ricordo io, per entrambe le parti.",
		"Tieni la tua copia. La mia la tengo qui dentro.",
		"Se qualcuno chiede, la paga è arrivata per intero. Lo giuro io, se lo giuri tu.",
	},
	["sw.quest_complete.w19.ledger.016"] = {
		"Pieno giorno, e i libri della città sono spalancati: ogni banco occupato, ogni penna in movimento. La mia è un'annotazione minuscola in una giornata pienissima.",
		"A quest'ora mezza Stormwind sembra intenta a scrivere qualcosa. La mia parte è finita in mezzo alle altre, fra due più rumorose.",
	},
	["sw.quest_complete.w19.ledger.017"] = {
		"Un giorno uno scrivano che ancora non è nato controllerà questa riga e si chiederà chi fossi. Spero che il mio nome gli dia un po' da pensare.",
		"Fra qualche anno qualcuno spolvererà il libro in cui è finita questa faccenda e aggrotterà la fronte davanti al mio nome. Ciao, chiunque tu sia. È andata bene.",
		"Molto dopo che le monete saranno spese, la riga sarà ancora lì, ad aspettare un lettore. Mi piace pensare che si legga con benevolenza.",
	},
	["sw.quest_complete.w19.nod.001"] = {
		"ricambia il cenno, e un bambino lì vicino che stava guardando annuisce anche lui, serissimo, rivolto al vuoto.",
		"ricambia il cenno e sorprende una bambina dall'altra parte della via a provare lo stesso gesto, solenne, davanti al proprio riflesso in una finestra.",
	},
	["sw.quest_complete.w19.nod.002"] = {
		"Il cenno di Stormwind va verso l'alto, non verso il basso: il mento si solleva, gli occhi si socchiudono. Riconoscimento e congedo in un solo movimento.",
		"Era il cenno all'insù, quello dei nobili. Vuol dire «ben fatto» e «può andare», e non decide mai bene quale dei due.",
		"Mento alzato di un soffio, palpebre abbassate di un soffio: il cenno distinto della città. Mi hanno dato l'approvazione e il benservito in un colpo solo.",
	},
	["sw.quest_complete.w19.nod.003"] = {
		"Ho avuto un cenno! Occhio, ho sentito dire che in questa città sono razionati.",
		"Addirittura un cenno intero. Mi vizi.",
		"E così pronto, poi, quel cenno. Stormwind dev'essere di umore generoso.",
	},
	["sw.quest_complete.w19.nod.004"] = {
		"fa un cenno, ne riceve uno, ne fa un altro per sbaglio, e lo scambio minaccia di non finire più finché qualcuno non ha il buonsenso di fare un passo indietro.",
		"resta {g:intrappolato|intrappolata} in un giro cortese di cenni con l'altra parte, ognuno in risposta al precedente, finché la domanda di un estraneo non lo spezza.",
		"china la testa, riceve un cenno in risposta, risponde per riflesso, e i due ondeggiano come barche legate fianco a fianco.",
	},
	["sw.quest_complete.w19.nod.005"] = {
		"Non si è detto molto, ma il cenno è durato un attimo più del necessario. In una città così indaffarata, in pubblico più calore di così non si trova.",
		"Un cenno solo, tenuto appena oltre la durata di cortesia. Stormwind per strada non abbraccia; fa questo.",
		"Il cenno è rimasto giù un istante di troppo per essere solo educazione. Da una capitale, lo prendo per affetto.",
	},
	["sw.quest_complete.w19.nod.006"] = {
		"Il mio cenno è venuto troppo profondo, quasi un inchino. Qualcuno mi prenderà per un postulante a corte.",
		"Ho esagerato col cenno. A metà discesa è diventato un inchino, e non c'era un modo elegante di risalire.",
		"Troppo cenno. Decisamente troppo. Sembravo qualcuno che ringrazia un duca per la grazia ricevuta.",
	},
	["sw.quest_complete.w19.nod.007"] = {
		"si vede ringraziare con un dito portato alla tesa del cappello, o al punto dove la tesa sarebbe: una cortesia che sembra più vecchia della strada stessa.",
		"riceve un rapido tocco al berretto e, non avendo un berretto a portata di mano, ne solleva uno immaginario in risposta.",
		"risponde a un dito portato alla tesa con un dito portato alla fronte, la tesa più vicina che abbia.",
	},
	["sw.quest_complete.w19.nod.008"] = {
		"Altrettanto. E in bocca al lupo coi prossimi dieci.",
		"Anche a te. Che il prossimo guaio sia più piccolo.",
		"Ricambio, con i miei omaggi a chiunque venga dopo.",
	},
	["sw.quest_complete.w19.nod.009"] = {
		"Qui tutti mi ringraziano dall'alto in basso. Ho deciso di prendere l'angolo come rispetto e le parole come sincere.",
		"{g:Ringraziato|Ringraziata} da una grande altezza, come sempre. Gli umani non possono farci niente, e quelli che si accovacciano per farlo sono peggio.",
		"Da lassù è arrivato un cenno, mirato più o meno sopra il mio cappello. L'intenzione, almeno, è arrivata.",
	},
	["sw.quest_complete.w19.nod.010"] = {
		"Gli umani annuiscono come se avessero paura di farsi male al collo. A Ironforge un grazie arriva con una pacca sulla schiena che ti fa ballare i denti.",
		"Educati, questi. Un nano mi avrebbe {g:ringraziato|ringraziata} con una manata sulla spalla e un giro di birra scura. Qui mi tocca un cenno, e la strada.",
		"Un cenno umano tutto in ordine. Sotto la montagna avrebbero offerto il primo giro e litigato sul secondo.",
	},
	["sw.quest_complete.w19.nod.011"] = {
		"La mia gente si prende il suo tempo con la gratitudine. Qui il grazie è detto e chiuso prima ancora che la frase finisca, e vale lo stesso.",
		"Gli umani ringraziano come se le parole costassero un tanto al minuto. Fra la mia gente saremmo ancora ai primi convenevoli.",
		"Un grazie svelto, e subito andato. Gli umani vivono come se ogni parola fosse presa in prestito. Forse, per loro, lo è.",
	},
	["sw.quest_complete.w19.nod.012"] = {
		"Noi umani ringraziamo come costruiamo: in fretta, ad angolo retto, con gli occhi già sul muro successivo.",
		"Gli umani sono sbrigativi con la gratitudine. Dovrei saperlo. Lo diciamo, lo pensiamo, e siamo già a metà strada verso la porta.",
		"Un grazie corto e una lunga lista di cose ancora da fare. Siamo noi, tutta la razza, in un solo scambio.",
	},
	["sw.quest_complete.w19.nod.013"] = {
		"A giudicare dal cenno, i miei stivali non hanno passato l'ispezione. Giusto. Il fango se lo sono guadagnato.",
		"Cenno corto, sguardo lungo agli stivali. Stormwind misura le persone partendo da terra.",
		"Hai guardato i miei stivali prima di annuire. Il lavoro lo fanno loro; le occhiate pure.",
	},
	["sw.quest_complete.w19.nod.014"] = {
		"scambia un rapido cenno con l'altra parte sotto un architrave che gocciola, tutti e due schiacciati all'indietro per sfuggire alla tempesta, e la faccenda si chiude con un gesto.",
		"annuisce una volta sopra il fragore della tempesta, perché nessuna parola arriverebbe, e la questione si chiude lì.",
		"si sente gridare il ringraziamento attraverso un tratto di selciato che scorre d'acqua, ne coglie forse una parola su tre, e annuisce a tutte.",
	},
	["sw.quest_complete.w19.nod.015"] = {
		"Che cenno ufficiale. Dovrei fare il saluto?",
		"Un vero cenno alla Stormwind, questo. Mi inchino, o poi si apre tutta una faccenda?",
	},
	["sw.quest_complete.w19.nod.016"] = {
		"Certi cenni, in questa città, portano più della cortesia. Quello aveva dentro un anno difficile ripiegato, e adesso un po' meno.",
		"Il cenno era piccolo, ma dietro c'era parecchia stanchezza, e qualcosa si è allentato. È la parte che mi tengo.",
	},
	["sw.quest_complete.w19.nod.017"] = {
		"si vede togliere un pelucco dalla spalla dall'altra parte, distrattamente, come se rimettere in ordine chi si è reso utile facesse parte del ringraziamento.",
		"resta {g:fermo|ferma} mentre l'altra parte {g:gli|le} raddrizza il colletto con due strattoni rapidi, un gesto pignolo e stranamente affettuoso, prima del congedo.",
	},
	["sw.quest_complete.w19.quip.001"] = {
		"{g:Pagato|Pagata} a Stormwind, al verde a Stormwind. La strada più corta del regno.",
		"Da borsa vuota a borsa piena e di nuovo vuota, tutto dentro una sola cinta di mura. Un posto molto efficiente.",
		"A Stormwind una moneta fresca dura più o meno due strade, poi scade.",
	},
	["sw.quest_complete.w19.quip.002"] = {
		"Se lo SI:7 sta guardando, vorrei che fosse messo agli atti: lavoro molto pulito.",
		"Qualcuno dello SI:7 se lo starà di sicuro annotando. Scrivete bene il mio nome, chiunque siate.",
	},
	["sw.quest_complete.w19.quip.003"] = {
		"Sarò al Gilded Rose. Per le cose urgenti, bussate. Per tutto il resto, scrivetelo da qualche parte e perdete il foglio.",
		"Se qualcuno mi cerca, provi al Gilded Rose. Ma provi piano.",
	},
	["sw.quest_complete.w19.quip.004"] = {
		"Nell'ultima ora nessuna guardia mi ha guardato con sospetto. Devo star perdendo il tocco.",
		"Anche le guardie hanno smesso di squadrarmi. O sono {g:diventato|diventata} una persona rispettabile, o sono stanche. Propendo per la seconda.",
	},
	["sw.quest_complete.w19.quip.005"] = {
		"Fatto, e niente ha preso fuoco. Per gli standard di Stormwind, è praticamente una parata.",
		"Finito, e non è esploso niente. Qualcuno spieghi al Mage Quarter come si fa.",
	},
	["sw.quest_complete.w19.quip.006"] = {
		"Presto, prima che qualcuno a corte trovi il modo di prendersene il merito.",
		"Acqua in bocca, o qualche nobile lo metterà in un discorso entro la settimana prossima.",
	},
	["sw.quest_complete.w19.quip.007"] = {
		"Buona paga. Il mio contabile, che poi sono io, l'ha già spesa due volte nella mia testa.",
		"Ho queste monete da un minuto e le ho già spese in tre modi diversi. Nessuno saggio.",
		"Questa borsa non è mai stata così piena e così condannata nello stesso momento.",
	},
	["sw.quest_complete.w19.quip.008"] = {
		"Altro lavoro? Più tardi. Dopo un pasto, un bagno e un sonnellino di durata irragionevole.",
		"Chiuso per riposo. Si riapre dopo il cibo e una lunga seduta, non prima.",
	},
	["sw.quest_complete.w19.quip.009"] = {
		"Una buona azione in più nel conto. Le metto da parte per spenderle in qualcosa che non dovrei fare.",
		"Un'altra buona azione a registro. Mi piace tenere un saldo attivo, nel caso mi venisse voglia di comportarmi male.",
	},
	["sw.quest_complete.w19.quip.010"] = {
		"Un'altra piccola vittoria per l'Alleanza. Non andatelo a raccontare: dobbiamo mantenere un'aria modesta.",
		"L'Alleanza mi ringrazia. Probabilmente. Qualcuno dovrebbe scriverglielo.",
	},
	["sw.quest_complete.w19.quip.011"] = {
		"Qualcuno segni la data. Anzi no, lasciate stare. Nessuno crederebbe che sia filato tutto così liscio.",
		"È andata così liscia che mi sto tastando le tasche per capire quanto mi è costata.",
	},
	["sw.quest_complete.w19.quip.012"] = {
		"Se mai mettessero una statua per questo nella Valley of Heroes, la mia la voglio seduta, con una tazza in mano.",
		"Niente statua per questa, immagino. Meglio così: mi seccherebbe stare davanti al portone con qualunque tempo.",
	},
	["sw.quest_complete.w19.quip.013"] = {
		"Niente applausi, per favore. Le guardie si innervosiscono quando la gente comincia a battere le mani.",
		"Risparmiatevi gli evviva. In questa città, una folla che fa rumore fa arrivare la guardia di corsa.",
		"Per favore, niente urrà. La guardia all'angolo ha già la mano sull'alabarda.",
	},
	["sw.quest_complete.w19.quip.014"] = {
		"In fondo alla via c'è un nano che ha l'aria di offrire una birra a chiunque abbia una bella storia. Io ce l'ho, e posso migliorarla.",
		"In questa città c'è sempre un nano pronto a offrire un giro per una storia raccontata bene. Vado a cercarlo, e strada facendo la miglioro.",
	},
	["sw.quest_complete.w19.quip.015"] = {
		"Chi è il prossimo? Scherzo. Non c'è nessun prossimo. Vado a sedermi da qualche parte.",
		"Avanti il prossimo! No, aspettate, niente prossimo. È stato un riflesso. Non ascoltatemi.",
	},
	["sw.quest_complete.w19.quip.016"] = {
		"Festeggerei come si deve, ma in questa città festeggiare costa soldi a ogni porta. Lo farò su una panchina, gratis.",
		"Piano dei festeggiamenti: camminare piano, avere l'aria compiaciuta, non spendere niente. Stormwind lo odierà.",
	},
	["sw.quest_complete.w19.quip.017"] = {
		"Non ringraziate me, ringraziate il reggente. Anzi, no. Lui non c'entra niente. Ringraziate me.",
		"In assenza del re, accetto i ringraziamenti a nome suo. Anche i miei, già che ci siete.",
	},
	["sw.quest_complete.w19.quip.018"] = {
		"dà alla borsa una scossetta allegra, si accorge che un monello di strada mostra un interesse da professionista, e la infila parecchio più a fondo.",
		"dà un colpetto alla borsa appena appesantita, incrocia l'occhio vispo di un ragazzino cencioso che sta facendo i suoi conti poco lontano, e la sposta in una tasca interna.",
	},
	["sw.quest_complete.w19.quip.019"] = {
		"Fatto. Adesso al Dwarven District, dove almeno qualche panchina è stata costruita pensando a me.",
		"Finito. Vado a cercare una sedia della mia misura, che in questa città vuol dire il Dwarven District oppure il pavimento.",
	},
	["sw.quest_complete.w19.quip.020"] = {
		"Finito, ed ecco il tuono. Tempismo perfetto, per una volta nella vita.",
		"Fatto proprio mentre il cielo comincia a urlare. Lo prendo per un'approvazione e vado al coperto.",
	},
	["sw.quest_complete.w19.seal.001"] = {
		"Se potesse, Stormwind metterebbe un sigillo di ceralacca su un grazie e ne archivierebbe una copia.",
		"Un grazie consegnato senza sigillo e senza testimoni. Per gli standard di questa città vale appena, e io me lo tengo lo stesso.",
		"Niente cera, niente nastro, niente copia per gli archivi. Per Stormwind, un ringraziamento quasi sconsiderato.",
	},
	["sw.quest_complete.w19.seal.002"] = {
		"Devo firmare da qualche parte? No? E allora come farà qualcuno a sapere che è successo?",
		"Nessun modulo da compilare? Quasi mi dispiace. Quasi.",
		"Niente da firmare, niente da timbrare? È la cosa meno ufficiale che abbia mai fatto a Stormwind.",
	},
	["sw.quest_complete.w19.seal.003"] = {
		"{g:Ringraziato|Ringraziata} a nome del regno, nientemeno. È una cosa grande da cui farsi ringraziare, per un solo lavoro.",
		"A nome di Stormwind, hanno detto: una frase così grande che servono due mani per prenderla. L'ho presa con tutt'e due.",
		"Il grazie è arrivato in nome del regno, con tutto il suo peso sulle parole. Lo porterò con cura: non è il tipo che si piega in tasca.",
	},
	["sw.quest_complete.w19.seal.004"] = {
		"risponde al ringraziamento formale con un inchino un filo troppo profondo, e si raddrizza un filo troppo in fretta.",
		"ricambia la cortesia rigida della città con un inchino tutto suo, un po' improvvisato, e sembra cavarsela.",
		"restituisce la cerimonia come può: un inchino cominciato con convinzione e finito con un'alzata di spalle.",
	},
	["sw.quest_complete.w19.seal.005"] = {
		"Stormwind ringrazia come si scrive una lettera: un saluto, il corpo, i convenevoli finali e una firma che non si legge bene.",
		"Quel grazie aveva un'intestazione, tre capoversi e una chiusa. Mancavano solo il sigillo e il corriere.",
		"Qui anche la gratitudine arriva in carta bollata. Aspettavo da un momento all'altro il «distinti saluti».",
	},
	["sw.quest_complete.w19.seal.006"] = {
		"Sigillato, allora. Senza ceralacca, ma sigillato.",
		"Diciamo firmato e timbrato. Per il timbro basta il mio pollice.",
		"Ecco. Per quel che mi riguarda, timbrato.",
	},
	["sw.quest_complete.w19.seal.007"] = {
		"Nella Stormwind Keep c'è un sigillo che solo un re può usare. Aspetta nella sua cassetta da parecchio, ormai. I lavoretti come il mio non ne hanno bisogno, e meno male.",
		"Il gran sigillo del regno giace inutilizzato da quando il suo padrone è scomparso, o così sussurrano le guardie. Le faccende piccole come la mia si sbrigano con un cenno. Quelle grandi staranno facendo la fila.",
	},
	["sw.quest_complete.w19.seal.008"] = {
		"scopre una macchia d'inchiostro su un pollice, senza la minima idea di dove venga, e la strofina con l'altro.",
		"nota una macchia d'inchiostro fresco sul taglio di una mano, benché non si sia firmato niente, e la guarda storto come un borseggio al contrario.",
		"gira una mano e ci trova un'impronta d'inchiostro: le scartoffie della città, a quanto pare, hanno lasciato il segno comunque.",
	},
	["sw.quest_complete.w19.seal.009"] = {
		"si guarda intorno in cerca di una penna d'oca per firmare, come se il ringraziamento non fosse completo senza, e scopre che lo è.",
		"allunga mezza mano verso una penna che nessuno porge, poi trasforma il gesto in una grattatina al mento.",
		"abbassa gli occhi in cerca di un foglio da firmare, non ne trova, e lascia ricadere la mano come se Stormwind avesse saltato un passaggio.",
	},
	["sw.quest_complete.w19.seal.010"] = {
		"La stretta di mano è arrivata col guanto ancora addosso. Qui la cortesia tiene uno strato di pelle fra le persone, e riesce comunque a essere sincera.",
		"Una mano inguantata, offerta e ritirata in un unico gesto esercitato. La gentilezza di Stormwind arriva foderata, ma arriva.",
		"Capretto, una presa salda, e la mano già sparita prima che la prendessi davvero. Qui la gente educata stringe la mano come firma: in fretta, e per sempre.",
	},
	["sw.quest_complete.w19.seal.011"] = {
		"L'onore è tutto mio, ci mancherebbe. Ecco, l'ho detto bene?",
		"{g:Servo vostro|Serva vostra}, eccetera eccetera. Si dice così, qui?",
		"Al servizio vostro e del regno. Questa me la sono preparata.",
	},
	["sw.quest_complete.w19.seal.012"] = {
		"Una città così formale manderà di sicuro lettere di encomio. La mia arriverà, immagino, più o meno quando avrò dimenticato per cosa.",
		"Se c'è una lettera di ringraziamento in viaggio, sarà su carta buona con un sigillo come si deve, e mi troverà con anni di ritardo alla locanda sbagliata.",
	},
	["sw.quest_complete.w19.seal.013"] = {
		"si sente prendere la mano tra due mani altrui e tenere lì un momento: il ringraziamento più semplice che la città conosca.",
		"viene {g:ringraziato|ringraziata} con una mano stretta fra altre due, in fretta e con forza, mentre Stormwind continua a scorrere intorno.",
		"sente una mano chiudersi sulla propria e stringere una volta, forte, in un grazie che non ha bisogno d'altre parole.",
	},
	["sw.quest_complete.w19.seal.014"] = {
		"Prego. Lo vuoi per iscritto? Siamo a Stormwind, immagino di sì.",
		"Prego, figurati. Posso trovare un testimone, se qui usa così.",
		"Di niente. Ci metterei la firma, se qualcuno me lo chiedesse.",
	},
	["sw.quest_complete.w19.seal.015"] = {
		"«Resto in obbligo.» Tutto lo stile di Stormwind in tre parole: grazie, e un discreto promemoria che adesso qualcuno deve qualcosa a qualcuno.",
		"Hanno detto «in obbligo», non «grazie». In questa città la gratitudine è metà cortesia e metà contratto.",
		"«Le sono in obbligo.» Detto con garbo, e un poco vincolante. Qui anche una parola gentile suona come una clausola.",
	},
	["sw.quest_complete.w19.seal.016"] = {
		"riceve il ringraziamento al chiuso, dove il rumore della città arriva attutito e le monete suonano più forte del dovuto.",
		"ascolta il ringraziamento fra muri abbastanza spessi da zittire la strada, così che ogni parola, e ogni moneta, si sente bene.",
		"riceve la paga nella quiete di una stanza, dove ogni moneta posata risuona come un piccolo annuncio.",
	},
	["sw.quest_complete.w19.seal.017"] = {
		"Dite al reggente che è sistemato. Una cosa in meno su quella sua scrivania.",
		"Se la voce arriva alla fortezza, dite che è stato fatto a regola d'arte. Il reggente ha già abbastanza da portare.",
		"Una cosa in meno sulla lista di Bolvar, allora. Non ne saprà niente, ed è giusto così.",
	},
	["sw.quest_complete.w19.street.001"] = {
		"La casa d'aste è proprio lì, mi hanno appena {g:pagato|pagata} e so benissimo come va a finire.",
		"Monete fresche e la casa d'aste a una strada di distanza. Ci vorrebbe una guardia tra le due, per il mio bene.",
		"Chissà come, ogni via che prendo con la borsa piena finisce davanti alla casa d'aste. Questa città dev'essere costruita in pendenza.",
	},
	["sw.quest_complete.w19.street.002"] = {
		"Prima la banca, prima di convincermi a fare qualche sciocchezza. Una borsa chiusa nel caveau non si lascia persuadere.",
		"Subito in banca. Le monete in un caveau si tengono le loro idee; quelle in tasca continuano a darmi suggerimenti.",
		"In banca, allora. Il caveau non mi ha mai {g:tentato|tentata} con niente, nemmeno una volta.",
	},
	["sw.quest_complete.w19.street.003"] = {
		"si ferma sotto un cartello dove le vie si incrociano e ne legge ogni braccio, anche se uno solo aveva qualche speranza di spuntarla.",
		"si sofferma a un incrocio a leggere il cartello, tutto, con calma, come la lista delle portate di un'osteria.",
	},
	["sw.quest_complete.w19.street.004"] = {
		"Una parte va a un istruttore, e presto. Le lezioni sono l'unico acquisto di cui non mi sono mai {g:pentito|pentita}.",
		"Monete come queste vanno trasformate in qualcosa che resti. Un istruttore vende l'unica merce che nessuno può sfilarmi di tasca.",
		"Da un istruttore, allora, finché la borsa è pesante e l'orgoglio alto. Fra un'ora saranno più leggeri tutti e due.",
	},
	["sw.quest_complete.w19.street.005"] = {
		"Allettante, il Deeprun Tram. Ironforge è a una corsa da qui, e laggiù nessuno ha ancora pensato a una commissione per me.",
		"Potrei prendere il tram per Ironforge, solo per stare in un posto dove nessuno vuole niente da me.",
		"Il tram per Ironforge non mi ha mai affidato una commissione, nemmeno una. Ragione sufficiente per prenderlo.",
	},
	["sw.quest_complete.w19.street.006"] = {
		"Il portone è lontano da quasi tutta la città, e ogni metro lo passo a decidere se varcarlo o no.",
		"Potrei andare verso il portone. Prima di aver attraversato la città avrò cambiato idea due volte, e poi l'avrò ricambiata.",
	},
	["sw.quest_complete.w19.street.007"] = {
		"si volta verso il Gilded Rose col passo lento e sicuro di chi ha deciso che il resto della lista può aspettare.",
		"si lascia portare in direzione del Gilded Rose, si ferma a discuterne con {g:se stesso|se stessa}, brevemente, e perde.",
	},
	["sw.quest_complete.w19.street.008"] = {
		"Già che ci sono, controllo la posta. Di solito è un biglietto della casa d'aste su qualcosa che volevo io e si è preso un altro.",
		"Poi la posta, per abitudine. Metà delle lettere che ricevo sono la casa d'aste che mi informa, con gran cortesia, che qualcuno ha offerto di più.",
	},
	["sw.quest_complete.w19.street.009"] = {
		"chiede a una guardia la strada più breve per la banca, annuisce alla risposta e parte nella direzione sbagliata con assoluta sicurezza.",
		"si fa dare indicazioni da una guardia, le ripete ad alta voce per fissarle in testa, e sbaglia comunque la prima svolta.",
	},
	["sw.quest_complete.w19.street.010"] = {
		"Nessuna commissione, nessun indirizzo. Camminerò finché la città non deciderà dove posarmi.",
		"Per un po' lascio scegliere alle strade. Stormwind ha le sue idee su dove debba finire una persona; sono {g:curioso|curiosa} di sentirle.",
		"A sinistra al prossimo angolo, o a destra. Davvero non importa, ed è un lusso che intendo godermi.",
	},
	["sw.quest_complete.w19.street.011"] = {
		"Presto, qualcuno mi indichi la banca prima che trovi una bancarella che mi piace.",
		"Da che parte è la banca? In fretta, per favore. C'è un venditore di cappelli che mi sta guardando.",
		"La banca. Dov'è la banca. Non lasciatemi fermare davanti a niente di luccicante lungo la strada.",
	},
	["sw.quest_complete.w19.street.012"] = {
		"lascia cadere un rame nel berretto di un mendicante passando, senza rallentare, come chi salda un piccolissimo conto con la città.",
		"concede una moneta a un vecchio soldato che chiede l'elemosina accanto a un portone, e in cambio riceve un saluto militare, impeccabile come quelli sulle mura.",
		"passando, mette una moneta nel palmo di un violinista cieco, e viene ripagato con qualche nota di qualcosa di allegro.",
	},
	["sw.quest_complete.w19.street.013"] = {
		"C'è una panchina nel Park dove nessuno mi ha mai chiesto un favore, nemmeno uno. È lì che vado.",
		"Il Park, direi. Gli alberi non danno incarichi, e non vogliono mai sapere com'è andata.",
	},
	["sw.quest_complete.w19.street.014"] = {
		"Qualcuno va verso il Trade District? Mi unisco, se non vi dispiace. Della mia compagnia ne ho avuto abbastanza.",
		"Andate dalla mia parte? Bene. Due chiacchiere mi farebbero comodo, su qualsiasi cosa tranne il lavoro.",
	},
	["sw.quest_complete.w19.street.015"] = {
		"compra a una bancarella un cartoccio di noci tostate, la prima cosa da parecchio presa senza altro motivo che averne voglia.",
		"si ferma a un banco per un cono di qualcosa di zuccherato e caldo, e lo mangia camminando, senza pensare nemmeno per un attimo a quanto è costato.",
	},
	["sw.quest_complete.w19.street.016"] = {
		"Lavarmi, mangiare, sedermi. In una città così grande ognuna di queste cose ha la sua fila, e io le farò tutte e tre.",
		"Adesso le cose semplici: mani pulite, cibo caldo, un posto dove sedersi. Stormwind le fa pagare tutte, e io pago volentieri.",
	},
	["sw.quest_complete.w19.street.017"] = {
		"prova una scorciatoia per un vicolo laterale e ne esce, dopo un po' e parecchie scale, esattamente dove era cominciata.",
		"prende una via breve tra due case che si rivela una via lunga tra quattro, e sbuca sulla stessa strada, più {g:saggio|saggia}.",
	},
	["sw.quest_complete.w19.street.018"] = {
		"Qualcuno conosce un fabbro, in questa città, che mi ripari l'equipaggiamento senza farmi la predica su come lo tratto?",
		"Mi serve una riparazione, non un sermone. C'è un fabbro a Stormwind che venda solo la prima?",
	},
	["sw.quest_complete.w19.street.019"] = {
		"Il maestro dei grifoni vorrà sapere dove vado, e io non ne ho ancora la minima idea. Prima una passeggiata, poi il posatoio.",
		"Potrei essere in groppa a un grifone fra pochi minuti. Preferisco decidere la meta prima di trovarmi in aria a deciderla.",
	},
	["sw.quest_complete.w19.street.020"] = {
		"si fa portare dalla folla verso il Trade District, come un pezzetto di legno che trova la corrente in un canaletto di scolo.",
		"si unisce al fiume di gente diretto alle botteghe e va dove va lui, per una volta senza tenere il timone.",
	},
	["sw.quest_complete.w19.street.021"] = {
		"Gli umani pagano in argento e dicono grazie. A Ironforge ci avrebbero versato anche una birra. Allora me la verso da {g:solo|sola}.",
		"Monete oneste e un grazie onesto. A questa città manca solo il boccale che dovrebbe accompagnarli. A quello rimedio io.",
	},
	["sw.quest_complete.w19.street.022"] = {
		"Il lavoro e la luce del giorno finiscono insieme. Una chiusura pulita; i lampionai sono già sulle scale.",
		"Crepuscolo, e ho finito. Ai due lati della via i bottegai chiudono le imposte, come se tutti aspettassero che terminassi io.",
	},
	["sw.quest_complete.w19.weight.001"] = {
		"{g:Stanco|Stanca} nel modo buono, quello che arriva con una ragione allegata.",
		"Questa stanchezza ha la sua ricevuta. È questa la differenza con l'altra.",
		"Sfinimento onesto, per una volta: so rendere conto di ogni dolore.",
	},
	["sw.quest_complete.w19.weight.002"] = {
		"L'orgoglio è una cosa piccola e calda. Lo tengo in tasca per una via, poi lo metto via prima che si monti la testa.",
		"Un po' {g:orgoglioso|orgogliosa} di com'è andata. Solo un po'. Di più, e dovrei comprarmi un cappello più grande.",
	},
	["sw.quest_complete.w19.weight.003"] = {
		"Ho fatto quello che mi è stato chiesto. Se fosse giusto è un'altra domanda, e in una città di nobili e favori conviene tenerle separate.",
		"Chiesto, fatto, pagato. In un punto di quella catena c'è un «avrei dovuto?», e mi cammina accanto.",
		"Il lavoro era pulito. Le ragioni dietro non le ho mai viste. A Stormwind, di solito, è lì che si tiene lo sporco.",
	},
	["sw.quest_complete.w19.weight.004"] = {
		"chiude gli occhi per un momento in mezzo alla strada, e riaprendoli scopre che la folla si è semplicemente divisa intorno, come l'acqua attorno a un palo.",
		"resta {g:fermo|ferma} a occhi chiusi nel traffico della via, un sasso in un torrente, mentre Stormwind {g:gli|le} gira intorno con pazienza.",
	},
	["sw.quest_complete.w19.weight.005"] = {
		"A Stormwind c'è una sedia che porta il mio nome. La riconoscerò quando ci sarò {g:crollato|crollata} sopra.",
		"Troverò il sedile più morbido della città e lo metterò alla prova a fondo. Per il bene del regno.",
	},
	["sw.quest_complete.w19.weight.006"] = {
		"Per ora non sembra granché. Le cose finite raramente lo sembrano: la loro misura arriva dopo, di solito quando cerco di dormire.",
		"Strano quanto sembri piccola adesso che è finita. Chiedimelo fra una settimana e sarà cresciuta.",
		"Nel ricordo sarà più grande di adesso. Succede a quasi tutte le cose buone: hanno bisogno di spazio per assestarsi.",
	},
	["sw.quest_complete.w19.weight.007"] = {
		"si massaggia la nuca e fissa per un po' il profilo di un tetto, senza guardare niente di preciso, come fa chi ha ancora la testa occupata.",
		"piega la testa all'indietro per sciogliere il collo rigido e finisce a studiare un comignolo con grande serietà.",
	},
	["sw.quest_complete.w19.weight.008"] = {
		"Niente fa molto male. Tutto fa un po' male. È il conto del lavoro fatto con cura, e arriva a rate.",
		"Nessun dolore che valga una lamentela, solo una dozzina di piccoli che si danno il cambio. Il lavoro fatto con cura manda sempre il conto così.",
	},
	["sw.quest_complete.w19.weight.009"] = {
		"Sto bene. Mi serve solo stare immobile da qualche parte per un po' e non pensare a niente.",
		"Non fateci caso. Mi riposo a occhi aperti. È un talento.",
	},
	["sw.quest_complete.w19.weight.010"] = {
		"Stormwind ha accolto il mio buon lavoro come accoglie tutto: senza alzare gli occhi. Proprio da capitale.",
		"Un villaggio farebbe una gran festa per una cosa del genere. Una capitale fa un cenno e volta pagina. Scopro che non mi dispiace.",
	},
	["sw.quest_complete.w19.weight.011"] = {
		"Loro avranno scordato i dettagli entro il prossimo giorno di mercato. Io me li porterò dietro per anni. Aiutare è un affare squilibrato, in questo.",
		"Per loro è chiusa e archiviata. Per me è un'altra cosa che ricorderò in momenti strani, in posti strani, senza nessun motivo.",
	},
	["sw.quest_complete.w19.weight.012"] = {
		"si accascia contro un lampione in modo del tutto sconveniente, e si fa sorprendere da una nobildonna di passaggio le cui sopracciglia tengono un'intera predica.",
		"crolla su un muretto con un gemito proprio mentre passa una coppia ben vestita, e si becca due occhiate di disapprovazione identiche.",
	},
	["sw.quest_complete.w19.weight.013"] = {
		"Nessuno ha visto quanto è andata bene, tranne me. Dovrà bastare, e stranamente basta.",
		"Fatto come si deve, senza testimoni. Me ne sarei {g:accorto|accorta} se avessi fatto le cose a metà, e sono il giudice più severo della via.",
	},
	["sw.quest_complete.w19.weight.014"] = {
		"Sono troppo {g:stanco|stanca} per una città così sveglia. Tutti camminano più in fretta di me, e ognuno vende qualcosa.",
		"Stormwind ha energia per dieci. Ne prenderei in prestito un po', ma solo per sedermi.",
		"Ogni grido del Trade District mi arriva addosso come un piccolo pacco. Vorrei smettere di firmare per riceverli.",
	},
	["sw.quest_complete.w19.weight.015"] = {
		"Mi è costato più di quanto ammetterò. Infatti non lo ammetto.",
		"Farò finta che sia stato facile. Solo, per un minuto, non guardatemi troppo le mani.",
	},
	["sw.quest_complete.w19.weight.016"] = {
		"Una parola breve alla Luce, strada facendo, per chi ha chiesto aiuto. Non ho la stoffa del sacerdote, ma mi sembra uno spreco non farlo.",
		"Che la Luce li protegga. Tutto qui: non amo le preghiere lunghe, ma una corta per la gente che ho appena aiutato non costa niente.",
	},
	["sw.quest_complete.w19.weight.017"] = {
		"allenta una fibbia che mordeva da un pezzo, e sembra crescere in altezza più o meno della larghezza della cinghia.",
		"allarga la cintura di un buco, lì in mezzo alla strada, con la dignità di chi se l'è meritato.",
	},
]==])
