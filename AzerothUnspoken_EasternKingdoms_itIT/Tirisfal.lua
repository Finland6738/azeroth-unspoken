-- Italian texts of the regional pack eastern_tirisfal (content wave W01). The rules are in AzerothUnspoken_EasternKingdoms/Tirisfal.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("tirisfalglades", "itIT", "eastern_tirisfal", [==[
	["tir.battle.scarlet.01"] = {
		"Che stendardo pulito, crociato. Rimediamo subito.",
		"Volevi purificare le Radure col fuoco. Hai scelto il campo sbagliato.",
	},
	["tir.battle.zombie.01"] = {
		"affronta a viso aperto la cosa morta che barcolla; qualunque cosa fosse in vita, non ne resta nulla che possa rispondere.",
		"si para davanti al cadavere senza mente che emerge barcollando dal grigio, le mani ancora protese verso qualcosa perduto da tempo.",
	},
	["tir.journey.arrival.01"] = {
		"A terra, tra le rovine. Il pipistrello puzzava più dei canali, e non credevo fosse possibile.",
		"Terra ferma, lastricato spaccato compreso. Ho ancora le orecchie piene di battiti d'ali.",
	},
	["tir.journey.start.01"] = {
		"si leva dalle rovine su un grande pipistrello, e le Radure si aprono là sotto: campi grigi, la strada per Brill, la linea scura del bosco.",
		"si lascia portare da ali di cuoio sopra Tirisfal, con le fattorie morte stese in basso come una mappa che nessuno ha colorato.",
		"sale su ali di pipistrello nel cielo basso, mentre le torri crollate restano indietro e tutta quella terra grigioverde e malata ruota lenta là sotto.",
	},
	["tir.lm.brill.01"] = {
		"Brill. Una taverna, un cimitero e una forca, eppure in qualche modo sembra ancora un paese.",
		"Brill: case storte, una taverna affollata, e guardie che non chiedono mai a nessuno di fare piano.",
	},
	["tir.lm.deathknell.01"] = {
		"cammina tra le tombe aperte del camposanto, dove la terra è ancora smossa e la cappella ha le porte socchiuse.",
		"passa accanto alle fosse attorno alla cappella, scavate tutte dal basso anziché dall'alto.",
	},
	["tir.lowhp.01"] = {
		"Non qui. In questa terra ne giacciono già troppi, e a qualcuno non è stato nemmeno concesso di restarci.",
		"Se cado a Tirisfal, chissà cosa si rialza dopo. Tieni duro.",
	},
	["tir.muse.01"] = {
		"L'erba qui ha il colore della cenere vecchia. Non è stata la siccità: è la terra che ha smesso di voler vivere.",
		"Campi ingrigiti fin dalle radici. Qualcuno li ha arati, un tempo, aspettandosi un raccolto.",
		"I solchi sono ancora dove li ha lasciati l'aratro. È il verde che non è più spuntato.",
	},
	["tir.muse.02"] = {
		"Ricordo il peso di un cesto di mele su una strada come questa. Ricordo la stanchezza buona. Il corpo dimentica; io no.",
		"Le mie mani conoscevano il pane caldo, una volta. Ora conoscono il freddo di un'elsa, e non ho ancora deciso se mi dispiace.",
		"C'era una vita prima della tomba. Qui fuori me ne tornano dei pezzi, senza invito, come un cane che ricorda ancora la strada di casa.",
	},
	["tir.muse.03"] = {
		"osserva una nuvola di pipistrelli levarsi dal tetto di un fienile morto e sparpagliarsi sui campi grigi.",
		"alza lo sguardo mentre i pipistrelli sciamano fuori da un fienile cadente, volteggiando bassi sui solchi vuoti.",
	},
	["tir.muse.04"] = {
		"Persino le zucche, qui, hanno l'aria di essersi arrese.",
		"Bella terra da coltivare. I corvi sono d'accordo, e sono gli unici.",
	},
	["tir.muse.05"] = {
		"Stendardi rossi e bianchi sulle colline. La Crociata Scarlatta sorveglia la valle come se potesse ancora purificarla col fuoco.",
		"Lassù, su quelle torri, un crociato guarda quaggiù e vede soltanto qualcosa da epurare.",
	},
	["tir.muse.06"] = {
		"Questo era il Lordaeron, un regno dell'Alleanza. Ora ogni sagoma sulla strada può rispondere alla Dama Oscura, e nessuna mi scambierà per gente di casa.",
		"Fattorie umane, cappelle umane, tombe umane. Tutto in mano ai Reietti, ormai, e i miei colori qui sono quelli sbagliati.",
	},
	["tir.muse.07"] = {
		"Strani alleati, i Reietti. Non hanno bisogno del fuoco per scaldarsi, dormono a malapena, e mantengono la parola meglio di certi vivi che conosco.",
		"Il Capoguerra li ha chiamati alleati. E va bene: imparerò a leggere i loro silenzi, come si impara a conoscere un paese straniero.",
	},
	["tir.muse.08"] = {
		"Di notte Tirisfal tace del tutto, e quel silenzio ha gli spigoli. C'è sempre qualcosa che si muove appena oltre la luce della lanterna.",
		"La luna su queste radure è sottile, con un riflesso verdastro. Anche la notte, qui, sembra essersi ammalata.",
	},
	["tir.muse.09"] = {
		"Più su lungo la strada sorgeva la capitale di Lordaeron, la città più fiera del nord. Un principe vi tornò e uccise il padre sul trono, e il regno morì col suo re.",
		"Tutto questo era un solo regno, ricco di grano e di campane. È crollato da dentro, come marcisce il legno vecchio: te ne accorgi solo quando viene giù il tetto.",
	},
	["tir.muse.10"] = {
		"Qui non cresce niente che valga la pena di mangiare. Avanti.",
		"Campi marci, acqua marcia, sorte marcia. Non fermiamoci.",
	},
	["tir.npc.guard.01"] = {
		"Una sentinella dei Reietti, immobile come un paletto di staccionata, gli occhi sulla strada. Non si stanca mai, e qui fuori è un conforto.",
		"La sentinella mi rivolge uno sguardo lungo e vuoto, poi mi lascia passare. A Tirisfal vale come un'accoglienza calorosa.",
		"Maglia arrugginita, schiena dritta, un'arma che ha lavorato parecchio. Le sentinelle dei Reietti vegliano sulle Radure meglio di chiunque altro.",
	},
	["tir.npc.innkeeper.01"] = {
		"fa un cenno all'oste, che tiene acceso il focolare più per gli ospiti vivi che per la casa.",
		"riceve dall'oste una parola secca e cortese e la chiave di una stanza, come se i morti avessero sempre gestito locande.",
	},
	["tir.qp.01"] = {
		"Basta così. È ora di consegnare tutto, prima che le Radure si inventino nuovi guai.",
		"C'è tutto, allora. Col lavoro fatto, la strada del ritorno sembrerà più corta.",
	},
	["tir.quest.01"] = {
		"Fatto. Una cosa in meno che striscia per le Radure.",
		"Finito. Tirisfal non è più verde di prima, ma è un po' più quieta.",
		"Lavoro concluso. I campi morti si tengano i loro segreti; io mi tengo il compenso.",
	},
	["tir.quest.02"] = {
		"Un altro compito per i Reietti. Ci avevano lasciati come morti e come schiavi; rispondiamo costruendo qualcosa di nostro.",
		"Un'altra commissione sbrigata per la nostra gente. Ognuna è una pietra di una casa che il Flagello non voleva lasciarci avere.",
		"Fatto, e fatto per i Reietti. La libertà è soprattutto una fila di piccole faccende, sbrigate da chi ha scelto di farle.",
	},
	["tir.quest.03"] = {
		"intasca la ricompensa e osserva per un attimo i campi grigi prima di rimettersi in strada.",
		"accetta le monete con un breve cenno, mentre un pipistrello passa basso e sparisce nel grigio.",
	},
	["tir.sub.agamand.01"] = {
		"rallenta tra i mulini degli Agamand, dove le grandi pale girano per nessuno e i morti camminano ancora nel cortile.",
		"passa accanto ai mulini a vento cigolanti degli Agamand, mentre i morti della famiglia si trascinano tra gli edifici che un tempo possedevano.",
	},
	["tir.sub.bulwark.01"] = {
		"Il Baluardo. Oltre questo muro, le Terre Infette. Occhi aperti.",
		"È qui che i Reietti tengono la linea contro il Flagello. Attenzione, oltre il cancello.",
	},
	["tir.sub.lake.01"] = {
		"Acqua limpida, dopo tutto quel grigio. L'unica cosa di Tirisfal che non è andata a male.",
		"Il lago trattiene il cielo grigio come uno specchio. Per un istante le Radure sembrano quasi intere.",
	},
	["tir.victory.01"] = {
		"A terra, e immobile. Da queste parti i morti di rado restano giù, quindi mi godo la quiete finché dura.",
		"È finita. I campi grigi inghiottono il rumore come se nulla fosse successo, e forse per loro è così.",
	},
	["tir.victory.02"] = {
		"Uno in più per il concime delle Radure.",
		"Ecco. A Tirisfal quello non serviva comunque.",
	},
	["tir.wc.rain.01"] = {
		"alza il bavero mentre una pioggia sottile e fredda comincia a cadere sui campi morti, imperlando l'erba grigia che non ne beve una goccia.",
		"guarda la pioggia scendere su Tirisfal, acqua grigia su terra grigia, senza ammorbidire nulla.",
	},
	["tir.attack.w02.01"] = {
		"Giù, nel grigio, insieme a tutto il resto!",
		"Questa è per i campi morti!",
		"Senti? Qualcosa, in questi campi, ha ancora il polso.",
	},
	["tir.battle.w02.01"] = {
		"Un altro che non è rimasto sepolto. Diamogli una mano.",
		"Qualcuno ti ha disseppellito troppo presto. Ti rimetto a posto io.",
		"Già in piedi e in giro, eh? Per poco.",
	},
	["tir.battle.w02.02"] = {
		"Campi grigi, cielo grigio, e qualcosa che si muove nel mezzo. Occhi aperti.",
		"Qui fuori il pericolo non ringhia. Si avvicina piano mentre guardi altrove.",
	},
	["tir.battle.w02.03"] = {
		"si mette in guardia sulla terra molle e acida di Tirisfal, l'arma già alzata prima che l'avversario abbia finito di avvicinarsi.",
		"si volta ad affrontare l'assalto tra i solchi morti, gli stivali che affondano appena nella terra grigia.",
	},
	["tir.battle.w02.04"] = {
		"Tutto quello zelo, crociato, e nessuno ti ha chiesto di venire.",
		"Lordaeron non c'è più, crociato. Sventolarne i colori non la riporterà indietro.",
		"Rosso e bianco. Molto grazioso. Vediamo come reggono nel fango.",
	},
	["tir.lowhp.w02.01"] = {
		"Di tombe aperte, qui intorno, ce ne sono parecchie. Non ho intenzione di riempirne una.",
		"La terra di questo posto è già piena abbastanza. Resta in piedi.",
		"Cadere a Tirisfal è una pessima idea. Troppe cose, qui, aspettano compagnia.",
	},
	["tir.muse.w02.01"] = {
		"Le cappelle di queste colline hanno ancora le loro campane. Nessuna suona da anni, e il silenzio pesa di più per questo.",
		"Un campanile sopra gli alberi, con la corda marcita da tempo. Un tempo qualcuno la tirava per i matrimoni, immagino. Ora tiene all'asciutto le cornacchie.",
		"Qui fuori le campane pendono immobili, e il vento non basta a smuoverle. Nessun altro lo farà.",
	},
	["tir.muse.w02.02"] = {
		"Meli che ci provano ancora. Le mele sembrano buone. Io comunque non ne mangio.",
		"Il frutteto di qualcuno, inselvatichito. Ne coglierei una, ma a Tirisfal vorrei prima sapere cosa hanno bevuto le radici.",
	},
	["tir.muse.w02.03"] = {
		"guarda una cornacchia posarsi su uno steccato rotto, {g:squadrarlo|squadrarla} senza interesse e tornare alle sue faccende nel solco.",
		"passa accanto a un campo dove le cornacchie percorrono i filari in silenzio, come gente arrivata tardi a un funerale e rimasta comunque.",
		"si scosta per lasciar passare un ratto che attraversa la strada senza fretta, come se il terreno fosse suo per atto notarile.",
	},
	["tir.muse.w02.04"] = {
		"Gli speziali dei Reietti, a Brill, hanno sempre qualcosa di verde sul fuoco. Sono gentilissimi, quando si rifiutano di dirti cosa.",
		"Gli speziali sorridono come sorridono i Reietti, senza che il viso c'entri granché, e delle fiale non dicono niente.",
	},
	["tir.quest_complete.w02.01"] = {
		"Il grazie dei Reietti è secco come carta vecchia, e lungo esattamente quanto serve.",
		"Fatto. Nessuno qui alzerà un bicchiere per questo, e scopro che non mi dispiace.",
		"Finito. A Tirisfal un lavoro concluso è una piccola luce, e di piccole luci questo posto vive.",
	},
	["tir.quest_progress.w02.01"] = {
		"ripassa il compito a mente, una parte sistemata, e torna a immergersi nel grigio.",
		"si ferma al margine di un campo morto: un pezzo del lavoro alle spalle, il resto ancora là fuori tra i solchi.",
	},
	["tir.victory.w02.01"] = {
		"si scosta dal corpo e aspetta un istante, nel caso decidesse di rialzarsi.",
		"fissa la sagoma immobile nell'erba grigia per un lungo respiro, come a Tirisfal impara a fare chiunque.",
	},
	["tir.victory.w02.02"] = {
		"Chiusa. Pulire l'arma, controllare gli stivali, rimettersi in cammino. Tirisfal non premia chi indugia.",
		"Sistemato. Inutile guardare meglio cos'era. Avanti.",
		"Finita. Tirisfal resta grigia, ma adesso ha qualche dente in meno.",
	},
	["tir.victory.w02.03"] = {
		"Stavolta resta giù. Dico sul serio.",
		"E sono due volte che muori. Cerca di non arrivare a tre.",
		"Torna a dormire, vecchio mio. Nessuno verrà più a svegliarti.",
	},
]==])
