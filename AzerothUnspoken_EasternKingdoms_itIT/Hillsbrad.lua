-- Italian texts of the regional pack eastern_hillsbrad (content wave W02). The rules are in AzerothUnspoken_EasternKingdoms/Hillsbrad.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("hillsbradfoothills", "itIT", "eastern_hillsbrad", [==[
	["hil.a.attack.01"] = {
		"Questo è da parte dei contadini di Hillsbrad.",
		"Southshore ti manda i suoi saluti!",
	},
	["hil.a.battle.01"] = {
		"Per Southshore! Avanti, combatti!",
		"Queste colline di guai ne hanno visti abbastanza. Forza, chiudiamo i tuoi.",
		"Hillsbrad ha passato un brutto periodo. Tu stai per renderlo un po' più leggero.",
	},
	["hil.a.battle.bear.01"] = {
		"si prepara mentre l'orso si alza sulle zampe posteriori, un muro di pelo grigio e cattivo umore.",
		"tiene la posizione mentre l'orso arriva sfondando i cespugli.",
	},
	["hil.a.battle.syndicate.01"] = {
		"Syndicate! I vostri signori hanno perso Alterac, e tu stai per perdere questo scontro.",
		"Restituisci la refurtiva, o me la riprendo con le cattive.",
	},
	["hil.a.journey.arrival.01"] = {
		"A terra a Southshore. Gabbiani, reti, odore di mare e una locanda a due passi.",
		"Giù dal grifone, sulla strada dei moli. Southshore sa di sale e di fumo di legna, meglio del vento lassù.",
	},
	["hil.a.landmark.southshore.01"] = {
		"entra a Southshore, dove le barche battono contro il pontile e le guardie tengono il viso rivolto alle colline.",
		"scende tra le case di Southshore, col sale nell'aria e il mare grigio che si allunga oltre i moli.",
	},
	["hil.a.lowhp.01"] = {
		"Non su queste colline. Non dalla nostra parte del confine.",
		"Ne ho prese di peggiori. Rimettiti in sesto.",
		"Tieni duro. Southshore ha bisogno di tutti noi in piedi.",
	},
	["hil.a.meet.guard.01"] = {
		"Una guardia di Southshore, con un occhio sempre mezzo rivolto alle colline. Qui Tarren Mill non esce mai dai pensieri di nessuno.",
		"La guardia mi fa cenno di passare, poi torna subito a sorvegliare la strada verso Tarren Mill.",
		"Tabarro pulito, stivali infangati, mascella serrata. Di turni contro i Reietti ne ha fatti parecchi.",
	},
	["hil.a.muse.01"] = {
		"Tarren Mill sta lassù dietro le colline, abbastanza vicino da vederne il fumo. Abbastanza vicino perché loro vedano il nostro.",
		"Southshore sull'acqua, Tarren Mill su tra le colline, e in mezzo solo fattorie e rancori.",
		"Da Southshore a Tarren Mill è una breve cavalcata. Qui nessuno la fa senz'armi.",
	},
	["hil.a.muse.02"] = {
		"Aria salmastra, pesce sul molo e un tetto come si deve in fondo alla strada. Southshore ci tratta bene.",
		"Southshore sa di mare e di pesce fritto. Dopo quelle colline, è un bel benvenuto.",
		"Datemi i moli di Southshore e una buona brezza dal mare. Il resto di questa terra può tenersi le sue faide.",
	},
	["hil.a.muse.03"] = {
		"Frutteti in file ordinate, steccati rattoppati e rattoppati ancora. I contadini di qui continuano a seminare, chiunque passi in marcia.",
		"Colline verdi, meli e pecore. Quasi ti scordi che c'è una guerra a un miglio di strada.",
	},
	["hil.a.muse.04"] = {
		"Tenete una mano sulla borsa. Il Syndicate lavora queste colline come un campo, e non è qui per seminare.",
		"Ladri con arie da nobili. Quelli del Syndicate rivogliono la vecchia gloria di Alterac, cominciando dalle mie monete.",
	},
	["hil.a.muse.05"] = {
		"Durnholde Keep, ridotta in rovina sulla sua collina. Un tempo da quelle mura si governavano i campi degli orchi, e guardala adesso.",
		"Torri spezzate sulla collina. Durnholde teneva gli orchi in catene, allora. Ora tra le sue pietre si nasconde il Syndicate.",
	},
	["hil.a.muse.06"] = {
		"Orsi nei boschi, yeti nelle grotte su per i pendii. L'Orda non è l'unica cosa a Hillsbrad ad avere gli artigli.",
		"Orsi grigi vicino al torrente, yeti più in alto, chissà dove. Qui anche le bestie hanno scelto da che parte stare: la loro.",
	},
	["hil.a.muse.07"] = {
		"passa accanto a un palo di steccato segnato da vecchie punte di freccia, un altro segno di una terra contesa campo per campo.",
		"guarda a est lungo le colline, dove ogni fattoria sembra essere stata bruciata una volta e ricostruita un'altra.",
	},
	["hil.a.qp.01"] = {
		"Questo era l'ultimo. Ora giù per la strada, con un occhio sempre alla cresta.",
		"Finito, qui. Il ritorno è piacevole, se non si contano le pattuglie dei Reietti.",
	},
	["hil.a.quest.01"] = {
		"Un altro lavoro per la gente di Hillsbrad. Pagato in monete e in un sorriso stanco, che mi pare giusto.",
		"Fatto. Da qualche parte un contadino dorme più tranquillo, e io mangio bene a Southshore.",
		"Lavoretti, monete oneste. Queste colline vanno avanti a favori come questo.",
	},
	["hil.a.quest.02"] = {
		"Questo dovrebbe aiutare a tenere la linea. Southshore non si muove da qui.",
		"Ecco. Un motivo in più perché Tarren Mill ci lasci in pace.",
	},
	["hil.a.sub.01"] = {
		"Un'altra piega delle colline. Altri steccati, altri campi, e fattorie passate di mano più spesso di quanto si voglia ammettere.",
		"Oltre la salita la terra si riapre: pascolo, un ruscello, e il fienile di qualcuno con assi nuove inchiodate su vecchie bruciature.",
	},
	["hil.a.victory.01"] = {
		"Fatto. L'erba è calpestata, lo steccato è intero, e a Southshore non dovranno mai saperne niente.",
		"Torna la calma sulle colline. Le pecore non hanno nemmeno alzato la testa.",
	},
	["hil.a.victory.02"] = {
		"Una cosa in meno di cui i contadini possano lamentarsi. Ne troveranno un'altra.",
		"Giù. Hillsbrad può aggiungerlo alla sua lunga lista di cose andate storte.",
	},
	["hil.a.victory.syndicate.01"] = {
		"I tuoi padroni ad Alterac possono venire a raccoglierti di persona.",
		"Un tagliaborse in meno sulle strade di Hillsbrad.",
	},
	["hil.h.attack.01"] = {
		"Per l'Orda, e per Tarren Mill!",
		"Portati questa oltre le colline!",
	},
	["hil.h.attack.02"] = {
		"Un pensierino dalle colline.",
		"Fresco di collina. Offre la casa.",
	},
	["hil.h.battle.01"] = {
		"Un altro che scende dalle colline. Avanti, allora.",
		"Su queste colline camminiamo noi. Spostati o cadi.",
		"Hai scelto una bella collina verde per morire.",
	},
	["hil.h.battle.02"] = {
		"Syndicate. Metti via il coltello e forse ti lascio la borsa.",
		"Gli eredi di Alterac, che derubano i contadini da un fosso. Che bell'eredità.",
		"Ladro! I tuoi padroni nella rocca verranno a raccoglierti.",
	},
	["hil.h.battle.03"] = {
		"punta i piedi sul pendio mentre l'orso grigio si alza dalla boscaglia, tutto spalle e denti.",
		"cede un passo giù per il pendio, poi tiene, mentre l'orso avanza nell'erba alta.",
		"accoglie la carica dell'orso fra le siepi, l'erba che si schiaccia sotto il suo peso.",
	},
	["hil.h.battle.04"] = {
		"Un forcone contro una mano addestrata. Sanno come andrà a finire, e vengono lo stesso.",
		"Contadini che combattono per i loro campi. Qualunque cosa io pensi del loro regno, questo lo capisco.",
	},
	["hil.h.battle.05"] = {
		"Bella campagna. Peccato che tutto quello che ci vive voglia fare a botte.",
		"Possibile che su queste colline non si possa camminare cinque minuti senza che qualcuno ti salti addosso?",
		"Bella giornata per menar le mani, immagino. A Hillsbrad la pensano tutti così.",
	},
	["hil.h.battle.06"] = {
		"scavalca uno steccato rotto e si gira ad affrontare l'attacco sul fianco aperto della collina.",
		"si libera con un calcio dall'erba alta e si mette in guardia, il pendio verde che scende alle spalle.",
		"si addossa a un muretto a secco e lascia che sia lo scontro a venire.",
	},
	["hil.h.journey.arrival.01"] = {
		"A terra a Tarren Mill. Il pipistrello non mi ha {g:mollato|mollata} su Southshore. Lo chiamo un buon volo.",
		"Suolo sicuro, colline verdi, una sentinella dei Reietti che mi fa un cenno. Hillsbrad, ancora in piedi.",
	},
	["hil.h.journey.start.01"] = {
		"si leva da Tarren Mill su ali di pipistrello, e le colline si srotolano là sotto in pieghe verdi, tagliate da steccati e strade.",
		"si alza sopra i tetti del paese, mentre i frutteti si rimpiccioliscono in puntini verdi e Southshore diventa una macchia di fumo accanto all'acqua.",
		"viene {g:portato|portata} in alto sopra le colline da un vento freddo che scende da Alterac, con tutta quella terra contesa stesa là sotto come una mappa su un tavolo.",
	},
	["hil.h.lm.tarrenmill.01"] = {
		"entra a {landmark}, dove le sentinelle dei Reietti percorrono la via fra case dal tetto a punta e un pipistrello si agita sul trespolo accanto alla strada.",
		"passa accanto alla cappella e alle case ordinate del paese, vivi e morti intenti alle stesse commissioni sotto gli stessi tetti grigi.",
	},
	["hil.h.lm.tarrenmill.02"] = {
		"Tarren Mill. Non calda, non allegra, ma nostra, e così vicino a Southshore vale parecchio.",
		"Guardie, un maestro dei pipistrelli, una locanda e una cappella. Qui al fronte, Tarren Mill sembra quasi casa.",
	},
	["hil.h.lowhp.01"] = {
		"Non in quest'erba. Non dove i contadini mi troverebbero coi loro rastrelli.",
		"Le colline si inclinano. Sono le mie gambe, non le colline. Resta in piedi.",
		"Troppo verde, questo posto, per morirci. Alzati.",
	},
	["hil.h.lowhp.02"] = {
		"Tutto qui? La cucina di Southshore picchia più forte.",
		"Ancora in piedi. Qualcuno dica a Tarren Mill di tenermi da parte la cena.",
	},
	["hil.h.lowhp.03"] = {
		"barcolla sul pendio, una mano premuta sulla ferita, e si rifiuta di cadere.",
		"piega un ginocchio nell'erba e si rialza, più piano, ma si rialza.",
	},
	["hil.h.muse.01"] = {
		"Colline verdi, muretti di pietra, meli. Sembra un posto dove non succede mai niente di brutto. Mente.",
		"Una campagna dolce, tutta siepi e frutteti. Il genere di terra per cui ci si scanna proprio perché è così mite.",
		"Ogni collina qui scivola in un'altra, più verde della precedente. Difficile ricordarsi che c'è una guerra.",
	},
	["hil.h.muse.02"] = {
		"Southshore è appena dietro quelle colline. Abbastanza vicina da sentirne l'odore di pesce, abbastanza lontana da fingere di no.",
		"Oltre quel crinale c'è una guardia di Southshore che si lamenta di noi. Bene. Così si tiene al caldo.",
		"Tarren Mill su una collina, Southshore sull'acqua, e in mezzo un mucchio di contadini molto nervosi.",
	},
	["hil.h.muse.03"] = {
		"Le mura di Durnholde ora sono in pezzi. Il Capoguerra è cresciuto lì dietro, in catene. Le pietre non sembrano pentite.",
		"In quella rocca in rovina un giovane orco imparò a combattere per il divertimento degli uomini. Oggi guida l'Orda. La rocca non se l'aspettava.",
		"Torri spezzate sulle colline a est. I campi e le catene si comandavano da posti come questo. Finirono con Thrall.",
	},
	["hil.h.muse.04"] = {
		"Il Syndicate si nasconde fra le rovine di Durnholde e si fa chiamare erede di Alterac. Ladri con l'albero genealogico.",
		"I nobili di Alterac hanno già venduto la loro gente una volta. Ora i loro eredi derubano i viandanti su queste colline. Certi mestieri restano in famiglia.",
		"Figure incappucciate fra le siepi. Dove c'è moneta sulla strada, il Syndicate non è lontano.",
	},
	["hil.h.muse.05"] = {
		"Tarren Mill è una spina nel fianco di Southshore, e lo sanno bene. Ogni giorno che resta in piedi è una piccola vittoria.",
		"Un paese di mulini diventato roccaforte dei Reietti. La presa dell'Orda su queste colline passa da quel solo crocevia.",
		"Noi teniamo l'altura a Tarren Mill. Loro tengono la riva. Le colline in mezzo sono di chi le percorre con più coraggio.",
	},
	["hil.h.muse.06"] = {
		"A nord, le vette di Alterac si stagliano bianche contro il cielo. L'aria fredda scende da lassù anche nelle giornate miti.",
		"Alterac incombe sulle colline come un vecchio debito che nessuno ha intenzione di saldare. Lassù ci sono ogre, ladri e rovine, a sentire gli esploratori.",
		"Le montagne a nord non lasciano mai che il sole scaldi davvero queste colline. Il loro fiato lo senti sulla nuca.",
	},
	["hil.h.muse.07"] = {
		"passa accanto a filari di meli mezzo inselvatichiti, la frutta che marcisce nell'erba alta sotto di loro.",
		"si ferma presso il muro di un frutteto, dove le mele cadute giacciono nell'erba e le vespe ci ronzano sopra.",
		"segue una vecchia staccionata lungo il pendio, le assi grigie e spaccate, che ancora non tengono fuori niente di preciso.",
	},
	["hil.h.muse.08"] = {
		"I contadini nei campi qui sotto sono solo contadini. Non hanno scelto da quale parte delle colline nascere.",
		"Laggiù qualcuno ripara uno steccato e si preoccupa del raccolto. La guerra gli passa accanto e gli calpesta il grano.",
		"La guerra arriva a Hillsbrad come la brina: non chiede il permesso ai contadini, rovina le mele e basta.",
	},
	["hil.h.muse.09"] = {
		"Gli orsi di qui sono grassi di mele e non hanno nessuna voglia di dividerle. Li rispetto, da lontano.",
		"Perfino gli orsi di Hillsbrad sembrano ben pasciuti. La guerra non è arrivata alla loro dispensa.",
	},
	["hil.h.muse.10"] = {
		"Buone strade, erba soffice, e una città nemica in fondo. Hillsbrad ha proprio tutto.",
		"Bella campagna. Quasi quasi mi ci stabilirei, se metà di lei non cercasse di ammazzarmi.",
		"Aria buona, colline verdi, mele sugli alberi. Peccato per le frecce.",
	},
	["hil.h.muse.11"] = {
		"Tarren Mill era un villaggio di umani, un tempo. Qualcuno dei Reietti di lì forse ne ha percorso le vie da vivo. Non lo chiedo.",
		"Le case di Tarren Mill hanno ancora le imposte dipinte, sbiadite fino al colore dell'osso vecchio. Qualcuno, un tempo, aveva scelto quei colori.",
		"Un mulino, una cappella, qualche via ordinata. Chi ha costruito Tarren Mill non riconoscerebbe chi la tiene adesso. O forse sì.",
	},
	["hil.h.muse.12"] = {
		"Ogni assalto sulla strada, ogni corriere perduto: Southshore tiene un registro, e anche noi.",
		"Le vedette di Southshore sono sempre lì, da qualche parte all'orizzonte. Ho smesso di fingere di non cercarle.",
		"Su queste colline il rancore è più vecchio dell'erba. Non l'ho cominciato io. Non sarò io a perderlo.",
	},
	["hil.h.muse.13"] = {
		"guarda a ovest dalla cima di una collina, verso il punto in cui la terra scende all'acqua grigia del lago e la riva di Silverpine si vede scura di pini.",
		"osserva i gabbiani girare sopra la costa, molto più in basso: puntini bianchi contro il grigio dell'acqua.",
	},
	["hil.h.muse.14"] = {
		"Gli speziali di Tarren Mill tengono le porte chiuse e le finestre illuminate di verde. Meglio non chiedere cosa bolle in pentola.",
		"A Tarren Mill c'è sempre odore di aceto e di fiori vecchi. Gli speziali dicono che è lavoro. Io dico che è preoccupante.",
		"Fiale, mantici, un carro di roba sotto un telone. Qualunque cosa preparino gli speziali, spero che resti puntata verso sud.",
	},
	["hil.h.npc.flight.01"] = {
		"Un pipistrello per andarmene, grazie. Possibilmente uno che sappia dove non sta Southshore.",
		"Portami in un posto dove le colline non tirano frecce.",
	},
	["hil.h.npc.guard.01"] = {
		"Una sentinella dei Reietti sulla strada, che fissa il sud come se Southshore potesse spuntare dalla collina da un momento all'altro. Potrebbe.",
		"La guardia mi degna appena di un'occhiata; quegli occhi restano inchiodati sulle colline verso la costa.",
		"Armatura arrugginita, postura paziente. Le guardie di Tarren Mill aspettano un attacco da così tanto tempo che ne hanno fatto un mestiere.",
	},
	["hil.h.npc.inn.01"] = {
		"Un oste in un paese di morti. Il pane è raffermo, l'accoglienza asciutta, e una sedia non mi è mai sembrata così bella.",
		"Un posto dove sedersi, una scodella di qualcosa di caldo. In mezzo a una guerra, una locanda è una piccola tregua.",
	},
	["hil.h.qp.01"] = {
		"C'è tutto. Ora a Tarren Mill, e lontano dalle creste.",
		"Finito. Adesso di nuovo oltre le colline, senza incrociare una pattuglia di Southshore.",
	},
	["hil.h.qp.02"] = {
		"Ho preso tutto. Le colline dovranno arrangiarsi senza.",
		"Raccolta finita. Se qualcuno a Hillsbrad ci teneva tanto, poteva dirlo.",
	},
	["hil.h.quest.01"] = {
		"Fatto. Tarren Mill me ne deve una, e me la farò pagare in stufato.",
		"Finito. A Southshore lo verranno a sapere abbastanza presto.",
		"Lavoro concluso. Le colline sembrano identiche a prima. Io so che non è così.",
	},
	["hil.h.quest.02"] = {
		"Un altro pezzo di queste colline reso un po' più sicuro per l'Orda. Si somma, piano piano.",
		"La guerra per Hillsbrad non si vince in una battaglia. Si vince con commissioni come questa, una dopo l'altra.",
		"Fatto. Una sentinella dei Reietti sposterà un segnalino sulla mappa, di un dito più vicino alla costa.",
	},
	["hil.h.quest.03"] = {
		"prende il compenso, lo soppesa una volta nel palmo e guarda oltre le colline verdi, verso la costa.",
		"accetta la ricompensa con un cenno asciutto; più in basso, un cane da fattoria abbaia al nulla.",
		"mette via le monete e controlla la strada a sud, per un'abitudine che queste colline insegnano in fretta.",
	},
	["hil.h.quest.04"] = {
		"Finito. A Tarren Mill qualcuno ha quasi sorriso. Da quelle parti è festa grande.",
		"Fatto, e nessuno di Southshore mi ha tirato addosso per strada. Giornata da segnare sul calendario.",
	},
	["hil.h.quest.05"] = {
		"È fatta, e mi hanno {g:pagato|pagata}. Cerco di non pensare troppo alla fattoria in fondo alla collina.",
		"Un altro compito per la guerra. Più tardi mi riposerò. Solo, non so quanto bene.",
	},
	["hil.h.sub.azurelode.01"] = {
		"Una miniera. Buia, umida e piena del minerale di qualcun altro. Il mio genere di buco preferito.",
		"Azurelode. Bel nome per un buco nel terreno con dentro qualcosa che ci vive.",
	},
	["hil.h.sub.durnholde.01"] = {
		"sale verso le mura spezzate di Durnholde, dove le erbacce crescono nel cortile e figure incappucciate osservano dalla porta.",
		"passa sotto le torri in rovina della rocca, le pietre annerite e spaccate, i vecchi stendardi spariti da tempo dalle mura.",
	},
	["hil.h.sub.fields.01"] = {
		"Hillsbrad Fields. Granai, covoni, uno spaventapasseri a braccia aperte. Il granaio dell'Alleanza da queste parti, e lo sanno tutti.",
		"Grano, bestiame e braccianti coi forconi. Qui la guerra si fa per decidere chi mangerà quando arriva il freddo.",
	},
	["hil.h.victory.01"] = {
		"Ed ecco un motivo in meno per tenere d'occhio le siepi. Ah. Magari.",
		"Fatto. Queste colline possono continuare a fingersi tranquille.",
		"A terra. Le mele non hanno nemmeno smesso di crescere.",
	},
	["hil.h.victory.02"] = {
		"L'erba è verde, il cielo è mite, e io sto in piedi sopra un corpo. Hillsbrad è brava con i contrasti.",
		"Respira. Guarda le colline. A loro non importa chi ha vinto, e chissà perché questo aiuta.",
		"Finita. Un'allodola si mette a cantare qui vicino, per niente impressionata.",
	},
	["hil.h.victory.03"] = {
		"Un altro tagliagole del Syndicate. La grande eredità di Alterac, faccia a terra nella polvere.",
		"Tieniti le monete rubate. Dove vai non ti serviranno.",
		"Ecco quanto valeva la famosa astuzia del Syndicate.",
	},
	["hil.h.victory.04"] = {
		"si raddrizza sul pendio, mentre il vento pettina l'erba alta attorno al nemico caduto.",
		"alza lo sguardo dallo scontro e lo porta sulle colline ondulate, misurando la distanza fino al prossimo steccato e ai prossimi guai.",
		"resta un momento nell'erba calpestata, col fiato grosso, mentre le nuvole proseguono sopra le colline.",
	},
	["hil.h.victory.05"] = {
		"Per Tarren Mill. Il prossimo.",
		"Uno in meno sulla strada. I corrieri di Tarren Mill viaggeranno un po' più tranquilli.",
		"Questo è per ogni staffetta che a Tarren Mill non c'è mai arrivata.",
	},
	["hil.h.wc.rain.01"] = {
		"Pioggia sulle colline. Gli steccati si scuriscono, l'erba si piega, e ogni strada diventa fango tutto in una volta.",
		"Ecco la pioggia che arriva dal lago. Buona per i frutteti, pessima per i miei stivali.",
		"La pioggia tira un velo grigio fra Tarren Mill e la costa. Per un'ora nessuno vede nessuno.",
	},
]==])
