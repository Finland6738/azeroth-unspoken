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
	["tir.attack.w17.cry.001"] = {
		"Un regalo dalla terra di Lordaeron!",
		"Il fango di Lordaeron ha due parole per te!",
		"La polvere di Lordaeron morde!",
	},
	["tir.attack.w17.cry.002"] = {
		"Un campione per gli speziali di Brill, fresco!",
		"Campione fresco per la Royal Apothecary Society!",
	},
	["tir.attack.w17.cry.003"] = {
		"Dal Bulwark alla North Coast, Tirisfal risponde!",
		"Terra acida e tutto, Tirisfal restituisce il colpo!",
		"Da Tirisfal, risposta per le rime!",
	},
	["tir.attack.w17.cry.004"] = {
		"Adesso, finché la cappa nasconde la mossa.",
		"Lì, attraverso il grigio. Ora.",
	},
	["tir.attack.w17.cry.005"] = {
		"Una fossa di Tirisfal porta il tuo nome!",
		"Scegli una tomba, una qualsiasi: Tirisfal ne ha a centinaia!",
		"Stenditi dove Tirisfal possa tenerti!",
	},
	["tir.attack.w17.cry.006"] = {
		"Questo è per tutto ciò che la Piaga si è presa!",
		"Per il regno che è marcito sotto questo cielo!",
		"Per ogni fattoria vuota da qui al Bulwark!",
	},
	["tir.attack.w17.cry.007"] = {
		"Un po' di colore per Tirisfal!",
		"Diamo una ravvivata a Tirisfal!",
	},
	["tir.attack.w17.cry.008"] = {
		"Come le mura di Lordaeron che crollano!",
		"Giù, come le torri della vecchia capitale!",
	},
	["tir.attack.w17.cry.009"] = {
		"In fretta, prima che questo terreno malato ceda sotto i piedi.",
		"Vai, finché la terra morta regge.",
	},
	["tir.attack.w17.cry.010"] = {
		"Gli alberi morti di Tirisfal hanno più grinta di te!",
		"Marcisci tra le radici di Tirisfal!",
		"Avvizzisci, come ogni frutteto qui intorno!",
	},
	["tir.attack.w17.cry.011"] = {
		"Fresco di macina, dagli Agamand Mills!",
		"Macinato fine, come la farina degli Agamand!",
	},
	["tir.battle.w17.grave.001"] = {
		"Chi ti ha sepolto ha lavorato male. Finisco io il lavoro, e come si deve.",
		"Fuori dalla terra e dritto sulla mia strada. Pessimo percorso.",
		"Dovevi restartene sotto le zolle. Era più tranquillo per tutti e due.",
	},
	["tir.battle.w17.grave.002"] = {
		"Tombe su ogni altura di questa terra, e metà sono vuote. Combatti come se il suolo stesse ascoltando.",
		"Mezza Tirisfal è il camposanto di qualcuno. Occhio ai piedi.",
	},
	["tir.battle.w17.grave.003"] = {
		"raddrizza le spalle mentre la cosa morta avanza, con la terra grigia ancora incrostata nelle giunture.",
		"si gira verso la cosa risorta senza arretrare di un passo.",
		"si puntella coi talloni nella terra grigia, mentre la cosa morta si avvicina barcollando.",
	},
	["tir.battle.w17.grave.004"] = {
		"Questa terra ha inghiottito gente migliore di te. Vieni a vedere se ha ancora fame.",
		"Quel che cade su questo terreno ci resta. Vediamo chi dei due sarà.",
		"Vieni sul grigio, allora. A questo terreno uno in più non dispiace mai.",
	},
	["tir.battle.w17.grave.005"] = {
		"Qui si sono scavate più fosse di quante se ne siano riempite. Sistemiamo il conto?",
		"Stenditi in questa terra e nessuno ti distinguerà dagli altri.",
		"Il vecchio regno ha sempre avuto talento per i cimiteri. Non sprechiamone uno.",
	},
	["tir.battle.w17.grave.006"] = {
		"Qualcuno ha lavorato questa terra con quelle mani. Adesso sanno solo afferrare.",
		"Ai piedi ha gli stivali di un contadino. Chi li calzava se n'è andato da tempo; resta solo la presa che cerca.",
		"Non guardare i vestiti. I vestiti sono la parte peggiore.",
	},
	["tir.battle.w17.grave.007"] = {
		"Tutto ossa e niente educazione. I pezzi li metto in fila dopo.",
		"Sferragli come un carro pieno di stoviglie. Vediamo come vai in pezzi.",
		"Lì dentro non c'è niente da colpire, solo cardini. Per fortuna i cardini si rompono.",
	},
	["tir.battle.w17.grave.008"] = {
		"Attraverso l'erba morta, allora. Ti vengo incontro a metà strada.",
		"Attraversa il grigio, se hai il fegato. Non ne cedo un palmo.",
		"Questo pezzo di nulla color cenere, per adesso, è mio. Prenditelo, se ci riesci.",
	},
	["tir.battle.w17.grave.009"] = {
		"Terreno spugnoso, inacidito. Peso basso, niente affondi, lascia che venga.",
		"Il suolo di Tirisfal cede un poco a ogni passo. Si combatte coi fianchi, non con le punte dei piedi.",
		"La terra morta scivola. Passi corti.",
	},
	["tir.battle.w17.grave.010"] = {
		"alza la guardia, e gli steli grigi scricchiolano attorno agli stivali.",
		"sposta i piedi nell'erba fragile; per un istante, in tutta Tirisfal, non si muove nient'altro.",
	},
	["tir.battle.w17.grave.011"] = {
		"Da anni a Tirisfal nessuna campana suona per un funerale. Nessuna suonerà per te.",
		"Qui fuori nessuno rintocca più per chi cade. Tienilo a mente.",
		"Le cappelle del Lordaeron hanno scordato le campane a morto. Nessuno gliele ricorderà per te.",
	},
	["tir.battle.w17.rot.001"] = {
		"Saccheggi tombe per il Flagello, gnoll? I morti di qui hanno qualcosa da dire.",
		"Scavi dove non dovresti, Rot Hide. Vediamo se riesci a scavarti fuori da questa.",
		"Giù le zampe dalle tombe, cagnaccio. Sono già prenotate.",
	},
	["tir.battle.w17.rot.002"] = {
		"Piaga in ogni manciata di questa terra. Niente ferite di troppo.",
		"Qualunque colpo prenda in questo scontro, lo prendo su terra appestata. Meglio prenderne pochi.",
		"Terra malata, aria malata. Facciamo presto.",
	},
	["tir.battle.w17.rot.003"] = {
		"Prima o poi, a Tirisfal, marcisce tutto. Comincia tu.",
		"È bravissima a far marcire, questa terra. Diamole qualcosa su cui lavorare.",
	},
	["tir.battle.w17.rot.004"] = {
		"si prepara nella cappa malsana che grava sulla terra, ogni sagoma ai margini incerta.",
		"pianta i piedi mentre il velo grigioverde di Tirisfal confonde i contorni dell'aggressore.",
		"strizza gli occhi nella cappa malsana, e qualcosa {g:gli|le} piomba addosso.",
	},
	["tir.battle.w17.rot.005"] = {
		"Non muoverti. Agli speziali di Brill servono sempre campioni.",
		"Saresti un bell'esemplare per la Royal Apothecary Society. Vediamo di raccoglierti.",
		"Agli speziali farebbe comodo dare un'occhiata dentro di te. Permetti.",
	},
	["tir.battle.w17.rot.006"] = {
		"Le ferite, a Tirisfal, si infettano. Che sia una cosa pulita e rapida.",
		"In questa terra niente guarisce bene. Meglio non averne bisogno.",
	},
	["tir.battle.w17.rot.007"] = {
		"La Piaga si è presa un regno intero. Questo scontro non se lo prende.",
		"Qui è caduto un regno intero. Non ho intenzione di fargli compagnia.",
		"Il male del Lordaeron si è preso un regno. Tu non ti prendi niente.",
	},
	["tir.battle.w17.rot.008"] = {
		"prende posizione sulla terra inacidita di Lordaeron, senza fretta, come se il suolo {g:gli|le} dovesse almeno questo.",
		"accoglie l'assalto sulla terra contaminata dalla Piaga, senza cedere un passo.",
		"tiene la posizione sul suolo malato, senza fretta.",
	},
	["tir.battle.w17.rot.009"] = {
		"La Piaga mi ha fatto e la Dama Oscura mi ha liberato. Nessuna delle due mi ha consegnato a te.",
		"Contro la Piaga ho già perso una volta. Una seconda, e nello stesso paese, no.",
	},
	["tir.battle.w17.rot.010"] = {
		"Arrivi tardi. La Piaga è arrivata prima, e io sono solo la seconda cosa peggiore di questi campi.",
		"Prima la Piaga, poi il Flagello, adesso io. Tirisfal non ha mai fortuna.",
	},
	["tir.battle.w17.rot.011"] = {
		"Persino combattere, qui, è come disturbare la stanza di un malato. Finiamola.",
		"Tutta la terra giace malata sotto la sua cappa grigia. Uno scontro quasi non si nota.",
		"Combattere in una terra malata. Poco rumore, e poco tempo.",
	},
	["tir.battle.w17.scarlet.001"] = {
		"La torcia in una mano, la predica nell'altra. Quale lasci cadere per prima?",
		"Tutto quello che hai giurato di salvare è già cenere, crociato.",
		"Predichi a voce molto alta, per uno che sta per perdere, crociato.",
	},
	["tir.battle.w17.scarlet.002"] = {
		"Erano gente di Lordaeron, un tempo. Il lutto è inacidito dentro di loro e ha cominciato a chiamarsi giustizia.",
		"Sotto quello zelo c'era un contadino, o un fabbro, di questo regno. Lo zelo se n'è mangiato quasi tutto.",
		"Un tempo, gente di questo regno. Adesso, solo il suo fuoco.",
	},
	["tir.battle.w17.scarlet.003"] = {
		"Tienti le torce. Tirisfal ha bruciato abbastanza per la tua causa.",
		"La tua crociata combatte ancora una guerra che le è finita sopra la testa.",
		"Metti giù il fuoco, crociato. Qui non è rimasto niente che valga la pena di bruciare.",
	},
	["tir.battle.w17.scarlet.004"] = {
		"pianta i piedi davanti al crociato, il cui rosso e bianco è l'unico colore acceso per un miglio intorno.",
		"si gira verso il fanatico della Scarlet Crusade, che avanza gridando come se le grida bastassero a vincere.",
		"regge la carica del crociato, tunica bianca contro tutto quel grigio.",
	},
	["tir.battle.w17.scarlet.005"] = {
		"In fretta e in silenzio. A Tirisfal ogni scontro può attirare la Scarlet Crusade.",
		"Facciamola breve. Le pattuglie della Scarlet Crusade vanno dove sentono rumore.",
		"Sbrigati, prima che i crociati sentano.",
	},
	["tir.battle.w17.scarlet.006"] = {
		"Chiudiamola prima che qualche crociato fiuti il trambusto e arrivi con una torcia.",
		"In fretta, o ci toccherà pure una predica della Scarlet Crusade.",
	},
	["tir.battle.w17.scarlet.007"] = {
		"Un regno morto, e tutti qui dentro combattono ancora. Aggiungiamone uno.",
		"Questo era il cuore di Lordaeron. Ora è un posto dove ognuno combatte contro tutti, e io non faccio eccezione.",
		"Lordaeron è un cadavere, e chi ci è rimasto sopra se ne contende ancora le ossa. Io compreso.",
	},
	["tir.battle.w17.scarlet.008"] = {
		"La Scarlet Crusade da una parte, il Flagello dall'altra, e tu nel mezzo. Tirisfal è già affollata abbastanza.",
		"Tra crociati e Piaga, questa terra ha nemici d'avanzo. Uno in meno, allora.",
	},
	["tir.battle.w17.scarlet.009"] = {
		"Tutti vogliono un pezzo di Tirisfal. Mettiti in fila dietro i crociati.",
		"La Scarlet Crusade vuole questa terra bruciata, il Flagello la vuole morta. Fai la fila.",
		"C'è la coda, di nemici, a Tirisfal. Tu stai in fondo.",
	},
	["tir.battle.w17.scarlet.010"] = {
		"Il fuoco, la Piaga, e adesso tu. Queste radure hanno passato di peggio.",
		"Dopo il fuoco e la Piaga, tu non meriti neanche una riga.",
	},
	["tir.battle.w17.scarlet.011"] = {
		"Vedono una cosa da bruciare. Che guardino meglio.",
		"Per loro sono un cadavere che ha dimenticato di stare fermo. Bene. Questo cadavere si ricorda come si combatte.",
		"Epurazione, la chiamano. Che provino a epurare qualcosa che la morte l'ha già passata una volta.",
	},
	["tir.battle.w17.wild.001"] = {
		"Tutto ali e strilli. Scendi quaggiù a farlo, se hai coraggio.",
		"Vola dritto, per una volta. Ah, non ci riesci. Pazienza, vengo io.",
		"Sbatti le ali e squittisci quanto vuoi. Prima o poi devi posarti su di me.",
	},
	["tir.battle.w17.wild.002"] = {
		"Il cane di qualche fattoria, un tempo, o un suo discendente. La Piaga ha tenuto i denti e buttato via il resto.",
		"Che bestia sciagurata. Qualunque fedeltà avesse, è morta coi suoi padroni.",
	},
	["tir.battle.w17.wild.003"] = {
		"Che tu sia quel che sia, questa terra ti ha inacidito. Con l'acido me la cavo.",
		"Qui non cresce niente, tranne i guai. Vediamo che razza di guaio sei.",
	},
	["tir.battle.w17.wild.004"] = {
		"Otto zampe, otto occhi, zero giudizio. Torna nella tua tana.",
		"Hai tessuto le tue tele troppo vicino alla strada, ragno. Pessimo angolo.",
		"Troppe zampe e troppo poco cervello. Pareggiamo i conti.",
	},
	["tir.battle.w17.wild.005"] = {
		"Quel gorgoglio. A Tirisfal ogni lago sembra venire con un Vile Fin in omaggio.",
		"Murloc. Persino in un paese morto la riva trova il modo di fare baccano.",
	},
	["tir.battle.w17.wild.006"] = {
		"si mette alle spalle un tronco nero e spoglio e affronta ciò che arriva.",
		"scivola tra due alberi morti per coprirsi, gli occhi sull'aggressore.",
		"arretra contro un tronco color ardesia e attende l'urto.",
	},
	["tir.battle.w17.wild.007"] = {
		"I corvi stanno già guardando. Non regaliamogli un pasto.",
		"Persino i corvi si sono fermati a guardare. Diamo spettacolo.",
		"I corvi si sporgono dal ramo. Non deludiamoli.",
	},
	["tir.battle.w17.wild.008"] = {
		"Radici e macerie dappertutto. Prima l'appoggio, poi il nemico.",
		"Sassi smossi, radici morte, solchi di carri che hanno smesso di passare da anni. Prima i piedi, poi lo scontro.",
	},
	["tir.battle.w17.wild.009"] = {
		"Paese morto, guai vivacissimi. Fatti avanti.",
		"Fuori dalla sterpaglia morta e dritto verso di me? Audace. Poco saggio.",
	},
	["tir.battle.w17.wild.010"] = {
		"prende le misure dell'aggressore, sullo sfondo di alberi neri e spogli e di un cielo grigio e basso.",
		"valuta la minaccia, sullo sfondo muto dei boschi morti.",
	},
	["tir.battle.w17.wild.011"] = {
		"lancia un'occhiata ai corvi che guardano da un ramo morto, l'unico pubblico che Tirisfal offra mai, e si mette al lavoro.",
		"lascia ai corvi i posti in prima fila e si concentra sullo scontro.",
	},
	["tir.journey.w17.land.001"] = {
		"tocca terra sul suolo grigio e molle di Tirisfal, che cede un poco sotto i piedi, come un materasso che nessuno rivolta da anni.",
		"salta giù per l'ultimo tratto con un tonfo sordo, e la terra di Tirisfal prende l'impronta degli stivali senza un suono.",
		"si posa a terra, fa qualche passo e guarda i campi grigi tutt'intorno, come per controllare che nessuno si sia spostato.",
	},
	["tir.journey.w17.land.002"] = {
		"Di ritorno nel grigio. È l'unico paese che conosco a sembrare identico visto da sopra e da sotto.",
		"Coi piedi per terra, e Tirisfal è esattamente come l'avevo lasciata. Dubito che sappia essere altrimenti.",
	},
	["tir.journey.w17.land.003"] = {
		"atterra tra le pietre spezzate vicino alla vecchia capitale, dove una statua abbattuta giace a faccia in giù, come per la vergogna di alzare lo sguardo.",
		"scende accanto alle mura in rovina, e una lastra incrinata si muove sotto lo stivale con un rumore simile a una tosse secca.",
	},
	["tir.journey.w17.land.004"] = {
		"Giù. Il silenzio torna nell'istante in cui tocco terra, come se mi avesse aspettato proprio qui.",
		"Piedi a terra, e il silenzio di Tirisfal ritorna subito: l'unica cosa, qui, che non si allontana mai.",
	},
	["tir.journey.w17.land.005"] = {
		"Finalmente giù. Qualcuno mi indichi la strada più vicina che non sia fango.",
		"Terra. Bene. E adesso, quale di questi campi grigi porta da qualche parte?",
		"Piedi giù, ginocchia che protestano. Da qui, dov'è la strada?",
	},
	["tir.journey.w17.land.006"] = {
		"atterra sotto una pioggia sottile che gocciola da ogni ramo spoglio, e resta un attimo ad ascoltarla ticchettare sulle pietre.",
		"scende in una pioggia lenta e paziente, tra steli grigi e bagnati, e cerca la strada con lo sguardo oltre i campi.",
	},
	["tir.journey.w17.rise.001"] = {
		"si leva sopra Tirisfal, e da quassù i campi morti sembrano cuciti insieme, toppe grigie su una stoffa ancora più grigia.",
		"sale nel cielo basso mentre le fattorie là sotto si riducono a una trapunta di riquadri color cenere, con le siepi per cuciture.",
		"si stacca da terra, e tutto il paese diventa là sotto un mosaico di campi che nessuno semina da anni.",
	},
	["tir.journey.w17.rise.002"] = {
		"Da quassù la cappa che grava su Tirisfal ha un bordo. Non lo sapevo. Da qualche parte, oltre, l'erba è verde.",
		"Più in alto vedo dove la foschia malata si dirada ai confini. Tirisfal non è il mondo intero: lo sembra soltanto, laggiù.",
		"Dall'alto la foschia su Tirisfal sembra diversa: un coperchio, non un cielo. E per una volta ci sto sopra.",
	},
	["tir.journey.w17.rise.003"] = {
		"si allontana in volo sopra le rovine della capitale, con le torri spezzate che girano lente là sotto come le lancette di un orologio fermo.",
		"sale oltre i pinnacoli frantumati di Lordaeron, passando tanto rasente da distinguere le erbacce nelle crepe dei vecchi bastioni.",
		"si alza sopra la capitale in rovina e vede finalmente, distesa per intero, fin dove arrivavano un tempo le sue mura spezzate.",
	},
	["tir.journey.w17.rise.004"] = {
		"Su e via. Tirisfal vista dall'alto è più bella, ed è una cosa crudele da dire di un posto, ma è così.",
		"Lascio la terra alle spalle. Anche da quassù questo posto riesce a sembrare deluso da me.",
		"Da quassù Tirisfal sembra così tranquilla. Mente.",
	},
	["tir.journey.w17.rise.005"] = {
		"sale abbastanza in alto da distinguere gli stendardi Scarlet sulle colline lontane, minuscole macchie rosse in tutto quel grigio.",
		"prende quota finché le torri Scarlet compaiono lontane sulle loro colline, ognuna con un puntino rosso in cima.",
	},
	["tir.journey.w17.rise.006"] = {
		"Su attraverso la nebbia, e per un istante sotto non c'è più niente. Tirisfal smette semplicemente di esistere, e io resto {g:sospeso|sospesa} nella lana grigia.",
		"La terra si sfuma e poi sparisce nella nebbia. Da qualche parte là sotto c'è un paese intero, e lo prendo per buono.",
	},
	["tir.landmark.w17.mark.001"] = {
		"entra a Brill dalla via principale, oltre case storte dalle imposte rattoppate e soglie dove nessuno sta a oziare.",
		"entra tra le case di {landmark}, dove la strada è spazzata, le insegne sono ridipinte da poco e quasi tutti i volti che si girano sono morti da un pezzo.",
		"percorre tutta la via principale e fa un cenno a chi siede sui gradini del municipio, che ricambia con un'economia esatta e tutta burocratica.",
	},
	["tir.landmark.w17.mark.002"] = {
		"Brill tiene una taverna chiamata Gallows' End a portata di vista di una forca. Ai Reietti piacciono le battute semplici.",
		"La taverna qui vende più da bere che da mangiare, e ho il sospetto che la cucina preferisca così.",
	},
	["tir.landmark.w17.mark.003"] = {
		"Brill! Luci alle finestre, voci per strada. Quasi accogliente, se strizzi gli occhi.",
		"Ah, un paese con della gente dentro. E quasi tutta in piedi, per giunta.",
		"Brill, dunque. Qualcuno mi indichi la taverna prima che il cimitero si faccia strane idee.",
	},
	["tir.landmark.w17.mark.004"] = {
		"Il cimitero di {landmark} è tenuto meglio di quasi tutte le case. Qui nessuno dimentica da dove viene.",
		"Il paese tiene il suo cimitero vicino, non oltre l'ultimo steccato. Dice qualcosa su chi ci abita, adesso.",
	},
	["tir.landmark.w17.mark.005"] = {
		"osserva una figura appena risorta inciampare tra le tombe di Deathknell, provando ogni passo come se il terreno potesse rifiutarlo.",
		"passa accanto alla fila di tombe fresche di {landmark}, dove una guardia aspetta chi uscirà dalla prossima.",
		"si ferma al margine delle tombe di Deathknell mentre una guardia sorregge per il gomito qualcuno appena destato, senza sgarbo.",
	},
	["tir.landmark.w17.mark.006"] = {
		"Deathknell. Ognuna di queste tombe aperte mi sembra familiare, anche se non saprei dire quale fosse la mia, ammesso che ce ne fosse una.",
		"Terra fresca, una cappella, una guardia che aspetta accanto alle fosse. In un posto così, qualcuno come me si è rimesso in piedi e si è chiesto perché.",
	},
	["tir.landmark.w17.mark.007"] = {
		"Deathknell. Attenti alle buche: metà non hanno ancora finito di servire.",
		"Un cimitero con tutte le tombe vuote. Il segreto meglio custodito di Tirisfal, e non c'è un'anima a cui raccontarlo.",
		"Bel posticino. Vicini tranquilli, spazio in abbondanza, e le fosse già scavate.",
	},
	["tir.landmark.w17.mark.008"] = {
		"Qui i Reietti si svegliano padroni di sé, senza altra voce in testa che la propria. Terra cupa, e stranamente piena di speranza.",
		"{landmark}: un cimitero che fa da porta. Ne esce gente libera, che è più di quanto il Flagello abbia mai concesso.",
	},
	["tir.landmark.w17.mark.009"] = {
		"si ferma all'incrocio di Brill e legge i cartelli: la capitale in rovina, i mulini, il Bulwark, la costa, come se valesse ancora la pena visitarli tutti.",
		"si attarda dove la strada principale attraversa {landmark}, guardando i carri di casse e barili che cigolano verso la capitale in rovina.",
	},
	["tir.lowhp.w17.hold.001"] = {
		"Le ginocchia cedono. L'erba grigia, vista da quassù, sembra morbida. Non lo è.",
		"Non inginocchiarti. A Tirisfal chi si inginocchia lo scambiano per una lapide.",
		"Mi resta un ginocchio buono. Facciamolo valere.",
	},
	["tir.lowhp.w17.hold.002"] = {
		"Tirisfal può aspettarmi ancora un bel pezzo.",
		"Questa terra ha seppellito abbastanza. Il prossimo turno non è il mio.",
	},
	["tir.lowhp.w17.hold.003"] = {
		"Fischi nelle orecchie, mani che tremano. Una mano che trema regge comunque.",
		"È tutto ovattato, come se la cappa mi fosse entrata in testa. Passaci attraverso.",
	},
	["tir.lowhp.w17.hold.004"] = {
		"barcolla nell'erba grigia, ondeggia, e non va giù.",
		"arretra di un passo vacillando, polvere grigia sulle ginocchia, e si rialza con la mascella serrata.",
		"vacilla come uno stelo secco, si piega, e non si spezza.",
	},
	["tir.lowhp.w17.hold.005"] = {
		"Mi rifiuto di diventare concime per l'erba morta.",
		"Di sciocchi che nutrono questa terra ce n'è già abbastanza. Io non mi aggiungo.",
		"L'erba grigia non mi avrà. Non a buon mercato, almeno.",
	},
	["tir.lowhp.w17.hold.006"] = {
		"Questo corpo è già morto una volta e ha continuato a camminare. Qualche crepa in più non lo fermerà.",
		"Le ossa scricchiolano, le giunture stridono. Nella tomba ci sono già passato, ben prima di questo scontro: posso tenere duro ancora un po'.",
		"La tomba l'ho già vista. Qualche crepa in più non cambia niente.",
	},
	["tir.lowhp.w17.hold.007"] = {
		"Ha ucciso un regno, questa terra. Tu, al confronto, sei appena un graffio.",
		"Ben altro ha fatto crollare Lordaeron. E io non sono Lordaeron.",
	},
	["tir.lowhp.w17.hold.008"] = {
		"La vista si annebbia. Il grigio diventa più grigio. Scegli una sagoma e colpiscila.",
		"Ondeggia tutto. A Tirisfal è quasi il panorama di sempre. Concentrati.",
		"Grigio su grigio su grigio. Trova quello che si muove.",
	},
	["tir.lowhp.w17.hold.009"] = {
		"si accascia contro il vuoto, si regge su un ginocchio ostinato, e resta su.",
		"ondeggia sul posto, {g:malconcio|malconcia}, ma i piedi reggono.",
	},
	["tir.lowhp.w17.hold.010"] = {
		"Le guardie del Bulwark incassano di peggio ogni giorno. Posso incassare questo.",
		"Se regge il Bulwark, reggo anch'io.",
	},
	["tir.lowhp.w17.hold.011"] = {
		"Piano. Ragiona. A Tirisfal un passo nel panico non viene mai premiato.",
		"Calma. Il terreno è molle: qui inciampare vuol dire cadere.",
		"Piedi saldi. Il suolo di Tirisfal bara.",
	},
	["tir.lowhp.w17.hold.012"] = {
		"Da queste parti è pieno di cose che non restano giù. Aggiungi anche me.",
		"Qui le cose si rifiutano di restare a terra. Colgo il suggerimento.",
	},
	["tir.lowhp.w17.hold.013"] = {
		"Le giunture si bloccano. Muovile comunque, una per una, finché non obbediscono.",
		"Tutto rigido. Lavora con le spalle. Mani alte.",
		"Un paletto di staccionata, ecco cosa sono. E i paletti non cadono.",
	},
	["tir.lowhp.w17.hold.014"] = {
		"barcolla, si riprende e sputa terra grigia, ancora nello scontro.",
		"cade su un ginocchio nell'erba morta e si tira su a forza di pura testardaggine.",
		"vacilla, pianta una mano nell'erba morta e si rimette su.",
	},
	["tir.lowhp.w17.hold.015"] = {
		"Mi resta parecchia grinta. Tirisfal insegna a tutti la testardaggine.",
		"Ho la testa dura di un mulo di Tirisfal. Fatti sotto.",
	},
	["tir.lowhp.w17.hold.016"] = {
		"Ogni corpo che cade qui è un soldato regalato al Flagello. Su.",
		"Cadi qui e il Flagello si ritrova un soldato gratis. Non se ne parla.",
		"Niente soldati gratis per il Flagello. Non da me.",
	},
	["tir.lowhp.w17.hold.017"] = {
		"Non farai di me uno spaventapasseri per questi campi.",
		"Di spaventapasseri, questi campi morti ne hanno abbastanza. Cercane un altro.",
	},
	["tir.lowhp.w17.hold.018"] = {
		"Dovrai impegnarti di più. Tirisfal ci prova da anni.",
		"Più forte. Qui ci ha provato persino la terra stessa.",
	},
	["tir.muse.w17.fields.001"] = {
		"Gli steccati segnano ancora dove finiva un podere e cominciava l'altro. Non c'è più nessuno a litigare per il confine, e i pali lo tengono lo stesso.",
		"Pietre di confine tra campi morti. A qualcuno, un tempo, importava al palmo sapere quale solco fosse suo.",
		"Pali di recinto che fanno la guardia a confini che nessuno contesterà mai più.",
	},
	["tir.muse.w17.fields.002"] = {
		"si ferma accanto a un aratro rimasto piantato a metà solco, le stegole consumate da mani che non sono mai venute a finire il filare.",
		"scavalca un vomere arrugginito, mezzo sepolto nella terra grigia; il solco che stava tracciando corre ancora dritto verso il nulla.",
		"posa una mano sulla bure di un aratro abbandonato e trova il legno liscio e asciutto, lucidato da anni di lavoro interrotto di colpo.",
	},
	["tir.muse.w17.fields.003"] = {
		"La terra sa di cenere vecchia e di ferro. Non proprio di marcio: di qualcosa di più paziente del marcio.",
		"Prendi una manciata di questa terra e si sbriciola come pane bruciato. Niente, lì dentro, ha voglia di restare unito.",
		"Infili un dito nel terreno e viene fuori grigio fino in fondo. La pestilenza non si è fermata in superficie.",
	},
	["tir.muse.w17.fields.004"] = {
		"Gli spaventapasseri sono la cosa meglio tenuta di queste fattorie. Nessuno li ha avvisati che il lavoro è finito.",
		"Guarda quello spaventapasseri. Braccia aperte, a difendere il niente da nessuno. Ho conosciuto soldati meno zelanti.",
		"Ogni fattoria di Tirisfal ha perso il contadino e si è tenuta lo spaventapasseri. Qualcosa vorrà pur dire, sugli spaventapasseri.",
	},
	["tir.muse.w17.fields.005"] = {
		"Raccontano i deathguard che la pestilenza arrivò in queste fattorie dentro i sacchi di grano. Il pane la portò su ogni tavola, e da allora i campi hanno l'aria colpevole.",
		"Si è diffusa col grano: sacchi spediti dai granai, farina in ogni cucina. Difficile guardare un campo, qui, senza pensarci.",
		"Sotto tutto questo grigio c'era il grano che sfamava un regno, e poi il grano che lo ha finito.",
	},
	["tir.muse.w17.fields.006"] = {
		"si sporge sul bordo di un vecchio pozzo di fattoria e dal fondo sale soltanto un odore stantio e scuro; d'acqua, nemmeno a parlarne.",
		"lascia cadere un sasso in un pozzo asciutto accanto alla strada e aspetta a lungo il rumore, che quando arriva ha qualcosa di storto.",
	},
	["tir.muse.w17.fields.007"] = {
		"I mulini degli Agamand cigolano anche quando niente li spinge. Pietra su pietra, a macinare aria, come un vizio che gli edifici non riescono a perdere.",
		"Mulini senza grano, mugnai senza mente. Dagli Agamand il lavoro va avanti come un sogno che continua anche quando sai che è un sogno.",
		"Da lontano Agamand Mills sembra un posto operoso. Da vicino ti accorgi che lì nessuno pensa più a niente da un pezzo.",
	},
	["tir.muse.w17.fields.008"] = {
		"Tutti i fienili della valle pendono dallo stesso lato, come se si fossero stancati nello stesso momento.",
		"Fienili con la schiena spezzata, porte appese a un cardine solo. A Tirisfal è un pezzo che nessuno tira su un tetto.",
		"Quel fienile sta in piedi per puro dispetto. Lo rispetto.",
	},
	["tir.muse.w17.fields.009"] = {
		"Il cielo sopra Tirisfal ha il colore dell'acqua dei piatti e sta così basso che pare di toccarlo. Non è il tempo: è un coperchio.",
		"Quello che pesa su queste radure non si alza mai. La luce ci passa attraverso stanca, come una voce attraverso un muro.",
		"Un velo malato su ogni cosa, sempre. Dopo un po' non ci fai più caso, ed è proprio questo che mi preoccupa.",
	},
	["tir.muse.w17.fields.010"] = {
		"passa accanto a un'aia dove un'altalena di corda pende ancora da un ramo spoglio, il sedile lisciato da qualcuno che è cresciuto, o non ne ha avuto il tempo.",
		"nota un'altalena da bambini in un cortile vuoto, la corda ingrigita come tutto il resto, immobile del tutto.",
	},
	["tir.muse.w17.fields.011"] = {
		"Serve una falce? A Tirisfal ce ne sono cento abbandonate nell'erba. Poco usate. I proprietari non verranno a reclamarle.",
		"Con gli attrezzi lasciati in questi capanni si potrebbe equipaggiare un villaggio intero. Nessuno ti fermerebbe. È questo il lato triste.",
		"Rastrelli, zappe, una buona cote. Mezza fattoria di attrezzi accanto a uno steccato. Gratis, per chi non è schizzinoso.",
	},
	["tir.muse.w17.fields.012"] = {
		"Qualcosa qui cresce, dopotutto: funghi pallidi nei solchi, erbacce amare lungo i fossi. Un raccolto che può amare solo uno speziale.",
		"I campi non sono del tutto vuoti. Dove stava il grano spuntano cerchi di funghi, bianchi, grassi e molto soddisfatti di sé.",
		"Gli speziali raccolgono quei funghi pallidi a cestini interi. Almeno un raccolto, a Tirisfal, ha trovato i suoi compratori.",
	},
	["tir.muse.w17.fields.013"] = {
		"Un orto accanto a una casa colonica, le aiuole ancora bordate di pietre messe a mano. Chi l'ha fatto andava fiero di quelle linee dritte.",
		"File ordinate accanto alla porta di una casupola, erbe aromatiche diventate legnose e grigie. Qualcuno aveva pensato quest'orto per anni di cene.",
		"In questa fattoria qualcuno coltivava salvia e timo accanto alla porta, a portata di mano senza posare la pentola. Si vede ancora il sentiero consumato dai suoi passi.",
	},
	["tir.muse.w17.fields.014"] = {
		"cammina lungo un solco morto, e la terra cede a ogni passo con un sospiro morbido e secco.",
		"attraversa un campo vuoto per il lungo, seguendo i filari, quasi per rispetto verso chi li ha arati.",
		"smuove con il piede una zolla di terra grigia, che si sfalda in polvere prima di toccare il suolo.",
	},
	["tir.muse.w17.fields.015"] = {
		"Qui il grigio non è un colore solo. C'è il grigio della corteccia, della paglia dei tetti, dell'osso vecchio, e il grigio di un cielo che ha smesso di discutere.",
		"Qui fuori l'occhio comincia a smistare i grigi come un mercante smista le monete. Grigio cenere, grigio topo, grigio lapide. Un filo di verde sembra un errore.",
	},
	["tir.muse.w17.fields.016"] = {
		"Carretto rovesciato, ruote all'aria come uno scarafaggio morto. Qualcuno, una volta, aveva fretta.",
		"In quel fosso c'è un carro da fieno che aspetta un cavallo da molto, molto tempo.",
		"Metà dei carri di Tirisfal stanno nei fossi. Sono partiti tutti nello stesso momento, e nessuno teneva le redini.",
	},
	["tir.muse.w17.fields.017"] = {
		"Qualcuna di queste strade forse l'ho percorsa da {g:vivo|viva}. Non so quale. Ho deciso di non fare caso al non saperlo.",
		"Ogni Reietto, in questi campi, passa accanto a un passato. Forse anche il mio è qui fuori, da qualche parte. Lo lascio a distanza.",
		"Un cancello di fattoria, un viottolo, il muro di un frutteto. Ognuno potrebbe essere mio, di prima. Nessuno lo dice, e io non chiedo.",
	},
	["tir.muse.w17.fields.018"] = {
		"sosta al margine di un campo e piega le dita grigie e rigide, una alla volta, come i Reietti imparano a fare dopo una lunga camminata.",
		"fa girare piano un ginocchio riluttante finché qualcosa dentro non si assesta con uno scatto secco, poi prosegue tra i solchi morti senza voltarsi.",
	},
	["tir.muse.w17.fields.019"] = {
		"Di notte ogni lapide lungo la strada si merita una seconda occhiata, e qualcuna anche una terza. Non è proprio paura. Chiamiamola educazione locale.",
		"Di notte le rovine all'orizzonte scompaiono e gli alberi morti sembrano avvicinarsi alla strada. Non si è mosso niente, mi dico.",
	},
	["tir.muse.w17.fields.020"] = {
		"entra in un banco di nebbia che sa di terra umida e, sotto, di qualcosa di più dolce, e la strada davanti semplicemente smette di esistere.",
		"avanza piano nella nebbia, una mano tesa di lato, mentre le sagome di steccati e lapidi affiorano e scivolano via.",
	},
	["tir.muse.w17.fields.021"] = {
		"guarda Tirisfal da un piccolo rilievo: campi grigi, qualche albero nero, torri spezzate in lontananza, e su tutto quel velo malato, come polvere su un vecchio quadro.",
		"abbraccia con lo sguardo, da una collina, tutta la triste distesa di Tirisfal, ogni fattoria abbandonata nello stesso istante, come gli orologi di una casa fermi tutti alla stessa ora.",
	},
	["tir.muse.w17.folk.001"] = {
		"I deathguard percorrono il loro giro sempre allo stesso passo, mai più svelto, mai più lento. Se si annoiano non si vede. Non so nemmeno se possano.",
		"Un deathguard a un incrocio, l'alabarda piantata a terra, immobile. Le sentinelle vive spostano il peso da un piede all'altro. Questo non si è mosso da quando ho passato il dosso.",
		"Niente sbadigli, niente piedi battuti, niente occhiate in su per indovinare l'ora. Guardare un deathguard di guardia riposa, e un po' inquieta.",
	},
	["tir.muse.w17.folk.002"] = {
		"osserva uno speziale con un lungo grembiule di cuoio inginocchiarsi in un campo e raschiare terra grigia in un barattolo, etichettandolo con grande cura.",
		"passa accanto a uno speziale dei Reietti che sul ciglio della strada divide scarabei morti in scatoline, canticchiando qualcosa di stonato e soddisfatto.",
		"aggira la bisaccia di uno speziale lasciata aperta su una pietra, ogni fiala tappata, etichettata e allineata come un soldato in rango.",
	},
	["tir.muse.w17.folk.003"] = {
		"Gli speziali vogliono tutto in un barattolo: veleno, denti, terra, qualche occhio. Ho cominciato a tenerli d'occhio anch'io.",
		"Chiedi a uno speziale a cosa servono i barattoli e ricevi un sorriso e la parola 'ricerca'. Chiedi due volte e il sorriso si rimpicciolisce.",
	},
	["tir.muse.w17.folk.004"] = {
		"Ogni tanto qualcuno sale per la strada di Deathknell, rigido e guardingo, fissandosi le mani come se fossero di un altro.",
		"Chi è appena risorto si riconosce subito: si ferma a ogni staccionata e la fissa, cercando di ricordare a cosa servono gli steccati.",
		"Un risorto sulla strada, ancora con gli abiti della sepoltura, chiede a un deathguard la via per Brill con una voce che non usava da tempo.",
	},
	["tir.muse.w17.folk.005"] = {
		"La taverna di Brill è silenziosa come una taverna non è mai. Nessuno canta. Ogni tanto qualcuno ride, e sembra una porta che si apre su cardini arrugginiti.",
		"Tavoli, un focolare, un oste con lo strofinaccio: alla taverna di Brill non manca niente, tranne il chiasso. Lì dentro anche il silenzio ha le sue buone maniere.",
	},
	["tir.muse.w17.folk.006"] = {
		"Un orco sulla strada di Brill, che si guarda intorno come un ospite invitato a cena in un cimitero. E in effetti, è proprio così.",
		"Un tauren che attraversa Tirisfal si china sotto ogni ramo morto, educatissimo, come se gli alberi potessero offendersi.",
	},
	["tir.muse.w17.folk.007"] = {
		"Le voci dei Reietti hanno qualcosa di raschiato, come una pagina sfogliata troppe volte. Due di loro che parlano sembrano qualcuno che legge ad alta voce nella stanza accanto.",
		"I Reietti parlano meno dei vivi e intendono di più. Un'alzata di spalle di un deathguard vale un paragrafo intero.",
		"Ascolta due Reietti che contrattano e non senti alcun calore, solo parole asciuttissime posate una dopo l'altra come carte da gioco.",
	},
	["tir.muse.w17.folk.008"] = {
		"si appoggia a uno steccato dove alcuni cavalli scheletrici stanno in fila, i teschi nudi abbassati, pazienti come se aspettassero ancora la biada.",
		"guarda un cavallo scheletrico scuotere la testa ossuta facendo tintinnare i finimenti, testardo né più né meno di quelli vivi.",
	},
	["tir.muse.w17.folk.009"] = {
		"Qui fuori ogni deathguard parla della Dama Oscura come un tempo i contadini parlavano delle stagioni: qualcosa su cui fare i conti e con cui non si discute.",
		"Sylvanas ha restituito ai Reietti la loro volontà e l'ha chiesta subito indietro, in servizio. Quasi tutti sembrano trovarlo uno scambio onesto. Io non ho ancora deciso.",
		"La Dama Oscura governa da sotto le rovine, e la sua parola arriva fino all'ultimo palo di steccato di Tirisfal. Nessuno di quelli che incontro qui l'ha mai vista sorridere, e nessuno se lo aspetta.",
	},
	["tir.muse.w17.folk.010"] = {
		"Un deathguard mi ha detto che Brill non vede una vera sepoltura da anni. E non perché manchino i morti, sia chiaro.",
		"Dicono i deathguard che a Tirisfal, dalla pestilenza in poi, nessuno è stato sepolto come si deve. Non dura mai.",
	},
	["tir.muse.w17.folk.011"] = {
		"Brill tiene il cimitero più in ordine delle case: vialetti rastrellati, lapidi dritte. Un paese sa da dove viene la sua gente.",
		"Il cimitero dietro Brill riceve più cure di qualsiasi giardino di Tirisfal. È l'unico posto, da queste parti, ad avere ancora visitatori fissi.",
	},
	["tir.muse.w17.folk.012"] = {
		"guarda un deathguard sorreggere per il gomito uno sconosciuto appena risorto, metterlo rivolto verso la strada e lasciarlo andare senza una parola.",
		"vede due Reietti aiutare un terzo a scavalcare uno steccato caduto, piano, come si aiutano i vecchi soldati, senza storie.",
	},
	["tir.muse.w17.folk.013"] = {
		"I Reietti rammendano i vestiti con una cura enorme: punti fitti, toppe ai gomiti, bottoni ricuciti. Se il corpo è più difficile da aggiustare, almeno il cappotto deve tenere.",
		"Ogni cinghia oliata, ogni strappo rammendato: i Reietti tengono la loro roba con un'attenzione che si vede di rado. Qui niente si butta, se si può conservare.",
	},
	["tir.muse.w17.folk.014"] = {
		"La folla alla torre dello zeppelin è uno spettacolo: un goblin che grida le partenze, un orco aggrappato al parapetto, un Reietto che legge come se volare fosse la cosa più noiosa del mondo.",
		"Alla torre dello zeppelin i goblin parlano più svelti di chiunque a Tirisfal, e non ci vuole molto. Qui i morti se la prendono comoda.",
	},
	["tir.muse.w17.folk.015"] = {
		"Gente educata, i Reietti. Ti tengono la porta, misurano le parole e non ti chiedono mai come stai. Lo trovo riposante.",
		"Le migliori maniere di tutto il nord, i Reietti. Viene dal non avere più niente da dimostrare, immagino.",
	},
	["tir.muse.w17.folk.016"] = {
		"Non ci sono due Reietti che la portino allo stesso modo. Uno scherza su tutto; un altro, dicono i deathguard, non apre bocca da un mese. La morte ha preso a ciascuno qualcosa di diverso.",
		"Tra i Reietti c'è chi è affilato come un coltello e chi tace quasi sempre, a guardare il niente. Qualunque cosa si rialzi dalla tomba, non si rialza intera.",
		"Un Reietto canticchia al banco da lavoro; quello accanto fissa un muro per un'ora. Nessuno fa domande. Ognuno si è svegliato con quello che gli era rimasto.",
	},
	["tir.muse.w17.folk.017"] = {
		"I visitatori vivi continuano a chiedermi se qui fuori fa freddo. Sinceramente non saprei. Almeno di questo non mi tocca lamentarmi.",
		"I vivi, qui fuori, rabbrividiscono e battono i piedi. Li guardo con qualcosa di simile all'invidia, e qualcosa di simile alla pietà.",
	},
	["tir.muse.w17.folk.018"] = {
		"Malgrado tutto il suo grigiore, per l'Orda Tirisfal è terra amica. I deathguard fanno un cenno, la locanda ha una stanza, e chi veste di rosso e bianco non fa molta strada.",
		"I colori dell'Orda aprono a Tirisfal porte che a chiunque altro resterebbero chiuse. I Reietti scelgono con cura gli alleati, e poi sono leali.",
	},
	["tir.muse.w17.folk.019"] = {
		"fa un cenno a un deathguard sulla strada e riceve, dopo un lungo istante, il più piccolo dei cenni in risposta.",
		"scambia un'occhiata con un corriere dei Reietti di passaggio, che porta due dita all'elmo ammaccato e tira dritto.",
		"si scansa mentre sfila una pattuglia di deathguard: ognuno lancia un'occhiata sola, misura, e torna a guardare la strada come se avesse archiviato un giudizio.",
	},
	["tir.muse.w17.ruin.001"] = {
		"Sotto la terra la vecchia strada del re ha ancora il suo lastricato. Lordaeron costruiva strade fatte per durare, e infatti sono durate; è il resto che ha ceduto.",
		"Buona pietra sotto gli stivali, posata in squadra da muratori che si aspettavano carri e folla. Ora porta me, e ogni tanto qualcosa che si trascina.",
		"Queste strade erano fatte per il traffico di un regno: carri di grano, soldati, cortei di nozze. Sono troppo larghe per chi le percorre adesso.",
	},
	["tir.muse.w17.ruin.002"] = {
		"si ferma davanti a una pietra miliare lungo la strada: le distanze incise verso paesi che non rispondono più restano nitide sotto il lichene.",
		"toglie il muschio da un cippo stradale e legge un nome e un numero di miglia, entrambi veri, un tempo.",
	},
	["tir.muse.w17.ruin.003"] = {
		"Dai campi si distinguono ancora le torri spezzate della vecchia capitale. Anche in rovina sono la cosa più alta per miglia, e lo sanno.",
		"Le mura della capitale sono ancora in piedi, senza tetto, con un'intera città di morti là sotto. Come una corona lasciata su uno scaffale quando la testa non c'era più.",
		"Le torri di Lordaeron, spezzate ad altezze diverse, come candele spente con le dita a metà di un banchetto.",
	},
	["tir.muse.w17.ruin.004"] = {
		"Ogni borgo, qui, aveva alzato una cappella alla Luce. Le finestre ora sono buie, e certi Reietti rallentano ancora il passo quando ne incrociano una.",
		"Porte di cappelle spalancate su panche vuote. Qualunque risposta aspettasse lì dentro la gente di Lordaeron, la pestilenza è arrivata prima.",
		"Una cappella di campagna con la porta scardinata e un nido sul leggio. La Luce, se ci guarda dentro, trova ben poco da guardare.",
	},
	["tir.muse.w17.ruin.005"] = {
		"Cold Hearth Manor: il focolare freddo già nel nome. Chi l'ha battezzata aveva il dono della profezia.",
		"Una villa che porta nel nome un focolare spento. Certe famiglie i guai se li vanno a cercare.",
	},
	["tir.muse.w17.ruin.006"] = {
		"passa la mano lungo un cancello di ferro battuto arrugginito e spalancato; lo stemma di famiglia, lassù, è scheggiato fino a non potersi più leggere.",
		"oltrepassa il cancello di una bella casa andata in rovina, dove un cane di pietra sul pilastro fa ancora la guardia con mezza faccia.",
		"indugia in fondo al lungo viale di una villa, dove gli alberi ornamentali stanno morti in due file perfette, ancora al loro posto per un ospite.",
	},
	["tir.muse.w17.ruin.007"] = {
		"Quando arrivò la pestilenza, i vivi di Lordaeron fuggirono a sud con quello che riuscivano a portare. Chi non poteva correre è rimasto, e adesso gli atti di proprietà sono suoi.",
		"Il regno si svuotò in una stagione: carri su ogni strada verso sud, porte lasciate aperte alle spalle. I morti hanno ereditato tutto quello che nessuno riuscì a caricare.",
		"Quello che i profughi non riuscirono a portare è ancora qui: una culla in un solaio, una zangola accanto a una porta, un cappotto appeso a un piolo. I morti lo tengono tutto in custodia.",
	},
	["tir.muse.w17.ruin.008"] = {
		"Questo cartello indica ancora la strada per la capitale, sicurissimo di sé. Qualcuno dovrebbe dirglielo.",
		"Un cartello per Lordaeron. Dipinto di fresco, una volta. Punta verso un buco nel terreno con dentro una città.",
		"I cartelli di Tirisfal sono come i vecchi soldati: salutano ancora un re che non c'è più.",
	},
	["tir.muse.w17.ruin.009"] = {
		"Prima della pestilenza Brill era un paese di mercato pieno di vita. I Reietti hanno tenuto la locanda, la forgia e il cimitero così come li hanno trovati. Solo il cimitero ha cambiato significato.",
		"Le case di Brill hanno i tetti ripidi e le finestre strette del vecchio Lordaeron. Il paese non è cambiato; è cambiata la gente, e nemmeno del tutto.",
	},
	["tir.muse.w17.ruin.010"] = {
		"aggira un muro di cinta crollato, le cui pietre sono state portate via una alla volta, come se la terra si stesse riprendendo piano quello che aveva prestato.",
		"trova un architrave scolpito steso a faccia in su nell'erba; la casa che coronava non c'è più da tempo.",
		"indugia davanti al moncone di una colonna da giardino, la cima spezzata, un tralcio scolpito che si arrampica ancora sulla metà rimasta.",
	},
	["tir.muse.w17.ruin.011"] = {
		"Certi Reietti passano davanti a case che un tempo dovevano essere le loro. Non ne ho mai visto uno bussare.",
		"Tra i risorti di Tirisfal c'è una specie di cortesia: nessuno chiede di chi fosse questa fattoria. Troppe risposte sarebbero 'mia'.",
		"Un Reietto resta a lungo davanti al cancello di un podere, poi tira dritto senza entrare. Nessuno domanda niente. Da queste parti, non lo fa mai nessuno.",
	},
	["tir.muse.w17.ruin.012"] = {
		"Lordaeron aveva le strade migliori, il grano migliore e i cavalieri migliori del nord. Adesso ha le rovine migliori. Bisogna pur mantenere un livello.",
		"Dite quel che volete del vecchio Lordaeron: le sue rovine sono fatte per durare.",
	},
	["tir.muse.w17.ruin.013"] = {
		"Non molto tempo fa questo regno teneva gli orchi nei campi di internamento. Ora uno zeppelin dell'Orda atterra accanto alla sua capitale in rovina. La storia ha un umorismo storto.",
		"Il regno che dopo la Seconda Guerra chiuse gli orchi nei campi adesso è una rovina, e gli orchi ci passano sopra in zeppelin. Nessuno l'aveva previsto.",
		"Orchi che hanno passato anni dietro i recinti dei campi di Lordaeron ne percorrono adesso le rovine, da alleati dei suoi morti. Se c'è una lezione, qui nessuno ha fretta di dirla.",
	},
	["tir.muse.w17.ruin.014"] = {
		"passa davanti a una stazione di posta senza tetto lungo la strada; l'insegna pende ancora da una catena sola, il nome dipinto scrostato fino a sparire.",
		"alza gli occhi sull'insegna di una locanda di campagna, un'oca dipinta ridotta a una sagoma pallida, appesa storta sopra una soglia piena di erbacce.",
	},
	["tir.muse.w17.ruin.015"] = {
		"La sala del trono di Lordaeron ora è un corridoio. Corrieri e deathguard la attraversano dritti, là dove un tempo i re facevano attendere gli ambasciatori.",
		"La gente passa per la vecchia sala del trono scendendo verso Undercity, senza rallentare. Ci era voluto un regno per costruire quella sala, ed è bastata una giornata storta per farne un passaggio.",
		"In quella sala del trono in rovina un re è morto sul suo stesso pavimento, e adesso lì i corrieri discutono di tempi di consegna. I regni finiscono; le commissioni no.",
	},
	["tir.muse.w17.ruin.016"] = {
		"Pensate quel che volete dei Reietti: non sono stati loro a bruciare Lordaeron. Si sono solo svegliati in quello che ne restava.",
		"Questo regno non è stato conquistato. È stato avvelenato da dentro, e quelli che ha avvelenato sono gli stessi che ancora ci vivono. Per così dire.",
	},
	["tir.muse.w17.ruin.017"] = {
		"Quattro mura e un tetto, e per un po' Tirisfal è solo un rumore là fuori. Il vecchio Lordaeron costruiva le case per tenere fuori le cose. Quasi sempre funzionava.",
		"Al chiuso il velo malato non arriva. L'aria è ferma e polverosa, e il silenzio, per una volta, è di quello normale.",
		"Travi vecchie sopra la testa, pavimento di pietra sotto i piedi. I costruttori di Lordaeron non immaginavano chi si sarebbe riparato sotto il loro lavoro. Spero che non gli dispiaccia.",
	},
	["tir.muse.w17.ruin.018"] = {
		"A Tirisfal i Reietti si sono rialzati e hanno detto no. Non devo niente a questa terra, eppure la percorro con un certo rispetto.",
		"Il Flagello ci ha fatti; la Dama Oscura ci ha liberati; in queste radure abbiamo deciso cosa farne. Non è una bella terra. Ma è nostra.",
	},
	["tir.muse.w17.ruin.019"] = {
		"scavalca il braccio di un cavaliere di pietra rovesciato tra le erbacce, il guanto ancora stretto attorno a un'elsa spezzata da tempo.",
		"costeggia il basamento di una statua scomparsa, dove restano solo due stivali di pietra, piantati saldi, rivolti a est.",
		"toglie il lichene dal volto di un cavaliere di pietra in una nicchia lungo la strada e trova i lineamenti consumati, lisci come una moneta passata per troppe mani.",
	},
	["tir.muse.w17.scarlet.001"] = {
		"Qua e là nei campi ci sono cerchi neri nella terra, dove la Scarlet Crusade ha bruciato qualcosa che chiamava impuro. Dentro non cresce nemmeno l'erba grigia.",
		"I crociati lasciano bruciature come altri eserciti lasciano impronte. Un cerchio annerito, un mucchio di tizzoni, e quell'odore, per molto tempo dopo.",
	},
	["tir.muse.w17.scarlet.002"] = {
		"sale su un'altura per studiare da lontano il Crusader Outpost: tende rosse e bianche, pali appuntiti, figure in tabarro bianco che ne percorrono il bordo.",
		"si ripara dietro un muro crollato mentre una pattuglia della Scarlet Crusade passa sulla strada di sotto, i tabarri accesi come ferite fresche in mezzo a tutto quel grigio.",
		"conta da una distanza prudente i gagliardetti rossi sul Crusader Outpost, poi li conta una seconda volta, come se il numero potesse cambiare da un momento all'altro.",
	},
	["tir.muse.w17.scarlet.003"] = {
		"I crociati sono così sicuri. Ogni vivo che non è dei loro è un dubbio, ogni morto un nemico. Dev'essere riposante, non doversi mai chiedere niente.",
		"Della Scarlet Crusade non mi spaventa il fuoco. Mi spaventa quanto siano sicuri, tutti quanti, sempre.",
		"Il dubbio è l'unica cosa che la Crusade non può bruciare, e allora lo proibisce e basta. Ho visto con che forza stringono le torce.",
	},
	["tir.muse.w17.scarlet.004"] = {
		"Una crociata in rosso e bianco, e soltanto rosso e bianco. Uno penserebbe che possano permettersi un terzo colore.",
		"Quei crociati tengono i tabarri immacolati. Ci vorrà un sacco di bucato, con tutta quella rettitudine.",
	},
	["tir.muse.w17.scarlet.005"] = {
		"Nel nord-est di Tirisfal la Scarlet Crusade custodisce il suo monastero, dietro mura alte. I deathguard ne parlano come i marinai parlano di una scogliera.",
		"Lo Scarlet Monastery è la roccaforte della Crusade in queste terre. I deathguard dicono che le sue sale sono piene di fanatici che dormono con l'armatura addosso.",
		"Oltre gli avamposti della Scarlet Crusade, dicono i deathguard, il monastero tiene i cancelli chiusi e i fuochi accesi. Pochi di quelli che salgono a quei cancelli poi ne ridiscendono.",
	},
	["tir.muse.w17.scarlet.006"] = {
		"alza gli occhi verso lo Scarlet Watch Post sulla collina, dove una vedetta in tabarro rosso percorre la piattaforma senza mai staccare lo sguardo dalla strada.",
		"nota la rozza torre di legno della Crusade sul fianco della collina, la vedetta una piccola macchia rossa contro il cielo malato, gli occhi sulla strada.",
	},
	["tir.muse.w17.scarlet.007"] = {
		"Crociati e Reietti hanno perso lo stesso regno per la stessa pestilenza. Gli uni hanno deciso di bruciare tutto, gli altri hanno continuato a vivere tra le ceneri. Nessuno dei due perdona all'altro la scelta.",
		"Strano pensare che i crociati siano i sopravvissuti di Lordaeron. Hanno salvato la vita e perso tutto il resto, a cominciare dalla pietà.",
		"Due eredi per un solo regno morto: la Crusade con le sue torce, i Reietti con le loro tombe. Si contenderanno il testamento ancora a lungo.",
	},
	["tir.muse.w17.scarlet.008"] = {
		"La Crusade arruola ancora, proprio qui fuori. Tabarro gratis, torcia gratis, e qualcuno da odiare. Per certuni è un'offerta, immagino.",
		"Convertiti della Scarlet Crusade alla Solliden Farmstead, che si addestrano in un'aia morta. Qualcuno ha promesso loro la gloria. C'è sempre qualcuno che la promette.",
	},
	["tir.muse.w17.scarlet.009"] = {
		"A est, al Bulwark, i Reietti tengono un muro contro il Flagello che li ha creati. Ogni trave dice la stessa cosa: eravamo tuoi, una volta, e mai più.",
		"Oltre il Bulwark la terra è peggio di questa, il che è tutto dire. I deathguard su quel muro hanno visto ciò che a Tirisfal è stato risparmiato.",
		"Il Bulwark è la porta sul retro di Tirisfal, sbarrata e sorvegliata. Quello che ci gratta contro dal lato delle Plaguelands è proprio ciò a cui ogni Reietto di qui è sfuggito.",
	},
	["tir.muse.w17.scarlet.010"] = {
		"si scosta dalla strada per lasciar passare un carro di rifornimenti diretto al Bulwark, guidato da un Reietto con una balestra sulle ginocchia e nessuna voglia di chiacchierare.",
		"guarda una colonna di deathguard marciare verso est, verso il Bulwark, in buon ordine, il passo regolare, nessuno che parli.",
	},
	["tir.muse.w17.scarlet.011"] = {
		"Il Flagello ha ancora le mani dentro Tirisfal: negromanti nelle cantine, cultisti nelle vecchie cripte, almeno a sentire i deathguard. Il Re dei Lich ha perso la presa su queste terre, non l'interesse.",
		"La stretta del Re dei Lich su queste terre si è allentata, e i Reietti ne sono scivolati fuori. Lui non ha smesso di allungare la mano. Il Bulwark serve a questo.",
		"Qui i Reietti parlano del Flagello come un prigioniero liberato parla del carceriere: di rado, e con una mano sulla porta.",
	},
	["tir.muse.w17.scarlet.012"] = {
		"Crociati con le torce da una parte, il Flagello dall'altra, e Tirisfal in mezzo. Vicini incantevoli.",
		"La Crusade odia i morti, il Flagello odia i morti liberi, ed entrambi si accampano sulla soglia di Tirisfal. Ospiti del genere non li ha nessuno.",
	},
	["tir.muse.w17.scarlet.013"] = {
		"Dal Crusader Outpost sale un filo di fumo. Fuochi da cucina, mi dico. Quasi di sicuro solo fuochi da cucina.",
		"Sopra gli accampamenti della Scarlet Crusade c'è sempre una colonna sottile di fumo. Cerco di non chiedermi cosa ci sia dentro il fuoco.",
	},
	["tir.muse.w17.scarlet.014"] = {
		"trova un palo carbonizzato in mezzo a un campo, con una catena di ferro ancora avvolta alla base e la terra intorno calpestata da molti stivali.",
		"passa accanto a un palo bruciacchiato a un incrocio, con le catene che ne pendono e un gagliardetto della Scarlet Crusade inchiodato sopra, come una firma sul lavoro.",
	},
	["tir.muse.w17.scarlet.015"] = {
		"Da lontano un crociato è solo un tabarro. Da vicino è un bracciante di quel che resta del nord, a cui l'odio l'ha insegnato gente che aveva perso più di lui.",
		"Certi convertiti della Scarlet Crusade sembrano appena cresciuti. Qualcuno ha messo loro in mano una torcia prima che qualcun altro gli insegnasse a dubitare.",
	},
	["tir.muse.w17.scarlet.016"] = {
		"Quei deathguard al Bulwark sono tutto ciò che separa queste strade dalle Plaguelands. Vale la pena ricordarlo.",
		"Il Bulwark regge, e Tirisfal regge. Offrirei un giro a quei deathguard, se mai lasciassero il muro.",
	},
	["tir.muse.w17.scarlet.017"] = {
		"Thrall ha accolto i Reietti nell'Orda quando nessun altro li voleva. Qui fuori, dove bruciano i fuochi della Scarlet Crusade, si capisce bene perché non lo dimentichino.",
		"Il Capoguerra e la Dama Oscura hanno stretto un'alleanza di necessità. Camminando in questi campi, la necessità la capisco meglio dell'alleanza.",
	},
	["tir.muse.w17.scarlet.018"] = {
		"stacca da un rovo un brandello di stoffa rossa, l'angolo strappato di un tabarro della Scarlet Crusade, lo rigira una volta e lo lascia cadere nella polvere.",
		"trova nell'erba un opuscolo perso da un crociato, le pagine gonfie e grigie, le grandi lettere rosse in cima ancora leggibilissime.",
	},
	["tir.muse.w17.wild.001"] = {
		"guarda tre cornacchie litigare a gran voce per qualcosa in un solco, finché ne atterra una quarta in mezzo a loro e la questione è chiusa.",
		"ha per un tratto la compagnia di una cornacchia sola, che lungo lo steccato salta di palo in palo, a distanza educata e con l'occhio attento.",
	},
	["tir.muse.w17.wild.002"] = {
		"I segugi neri, qui fuori, non abbaiano. È la prima cosa da sapere su di loro, e di solito la prima che si impara troppo tardi.",
		"Qualcosa di magro e nero che scivola tra gli alberi morti, tenendo il passo. Uno dei segugi neri di Tirisfal, direi. Cacciano in silenzio, e sono pazienti.",
		"Due occhi chiari al limitare degli alberi, bassi, vicino al suolo. Poi più niente. Poi due occhi da un'altra parte.",
	},
	["tir.muse.w17.wild.003"] = {
		"Night Web's Hollow: ragni grossi come cani, in una miniera che non manca a nessuno. Faccio il giro lungo, grazie.",
		"Certe ragnatele di Tirisfal sono così spesse che ci potresti stendere il bucato. Non mi sono {g:fermato|fermata} a conoscere la tessitrice.",
	},
	["tir.muse.w17.wild.004"] = {
		"Murloc lungo le rive di Tirisfal. I Vile Fin, li chiamano i deathguard. Persino loro sembrano un po' più grigi dei murloc altrove.",
		"I Vile Fin gorgogliano tra loro lungo la riva come comari al pozzo. Mi piacerebbe sapere cosa dicono di tutti noi altri.",
		"Murloc sulla riva che gracidano sopra un mucchio di pesci come se fosse un tesoro. A Tirisfal, magari, lo è.",
	},
	["tir.muse.w17.wild.005"] = {
		"osserva un cadavere senza mente, con la casacca da contadino, percorrere avanti e indietro sempre lo stesso solco, come se ricordasse l'aratura ma non l'aratro.",
		"rallenta per guardare una cosa misera e stracciata ritta in mezzo a un campo, che ondeggia rivolta verso il nulla, in attesa di ordini che non arriveranno mai.",
		"gira al largo da una figura che si trascina e volta la testa a ogni rumore, piano, come una banderuola quasi bloccata dalla ruggine.",
	},
	["tir.muse.w17.wild.006"] = {
		"Sotto ogni ponte e ogni tetto sfondato di Tirisfal i pipistrelli stanno appesi in fila, ripiegati come cappotti agli attaccapanni. Entra di buon passo e l'intero guardaroba prende il volo.",
		"Pipistrelli sopra la testa, col loro volo a zigzag. Non vanno mai dritti. Forse è l'aria di qui; forse sono fatti così.",
	},
	["tir.muse.w17.wild.007"] = {
		"Gli zombi da queste parti sono lenti. Lenti, pazienti, e mai di fretta a smettere. È quest'ultima parte, il problema.",
		"Qualsiasi cosa che si trascini, a Tirisfal, la puoi seminare. Il trucco è ricordarsi che lei non si ferma quando ti fermi tu.",
	},
	["tir.muse.w17.wild.008"] = {
		"Gli scarabei se la passano bene a Tirisfal. Grassi, neri, lucenti, indaffarati in ogni tronco marcio. Qualcuno doveva ereditare il posto, e loro non hanno fatto gli schizzinosi.",
		"Le uniche creature di qui che sembrano davvero contente sono gli scarabei. Lavoro in abbondanza, nessuna concorrenza, nessuno che le disturbi.",
	},
	["tir.muse.w17.wild.009"] = {
		"costeggia il margine di Venomweb Vale, dove le ragnatele pendono a teli tra gli alberi morti, grigio su grigio, senza catturare altro che il velo malato del cielo.",
		"si apre un varco in una tenda di vecchie ragnatele al limitare del bosco e continua a camminare, togliendosi fili dalle maniche ancora a lungo.",
	},
	["tir.muse.w17.wild.010"] = {
		"Ossa che battono tra loro da qualche parte dietro le tombe: uno scheletro che fa due passi. Sembra un bussolotto di dadi agitato da qualcuno che si annoia a morte.",
		"Quel rumore secco in lontananza è uno scheletro che cammina. Quando conosci quel suono, lo senti ovunque dalle parti di Deathknell.",
	},
	["tir.muse.w17.wild.011"] = {
		"Gnoll Rot Hide. A Tirisfal persino gli spazzini si sono presi qualcosa di brutto. Io sto alla larga.",
		"Quegli gnoll Rot Hide hanno l'aria di aver perso una discussione con la pestilenza e di essersi tenuti il premio.",
	},
	["tir.muse.w17.wild.012"] = {
		"Una macchia di muschio su una lapide, l'unico verde vero per un miglio. Sta crescendo sopra il nome, piano, come se volesse tenerlo al caldo.",
		"Sui muri vecchi c'è il lichene, arancione e giallo pallido, e dopo tutto questo grigio sembra quasi una festa.",
		"Qualcosa di testardo fiorisce nella crepa di una macina: un fiorellino bianco, piccolo come un bottone. Non deve aver sentito parlare di Tirisfal.",
	},
	["tir.muse.w17.wild.013"] = {
		"si ferma sul bordo di Stillwater Pond, dove l'acqua è piatta come peltro e una pellicola di melma verde trema ogni volta che qualcosa si muove là sotto.",
		"si accovaccia accanto a uno stagno e vede qualcosa di lungo e pallido girarsi una volta sotto la superficie, e poi più nulla.",
	},
	["tir.muse.w17.wild.014"] = {
		"Sagome nei campi lontani che possono essere spaventapasseri o possono essere morti. A Tirisfal impari a fissare una sagoma finché non si decide.",
		"Qui fuori una figura immobile in un campo non è mai soltanto una figura. Impari a guardare due volte, e poi una terza.",
		"Uno spaventapasseri ha appena girato la testa. Oppure l'ho girata io. A Tirisfal conviene scoprire chi dei due.",
	},
	["tir.muse.w17.wild.015"] = {
		"Venomweb Vale: veleno e ragnatele già nel nome. Qui fuori, almeno, nessuno nasconde la merce.",
		"Una valle che si chiama Venomweb. A Tirisfal, se non altro, i nomi sono onesti.",
	},
	["tir.muse.w17.wild.016"] = {
		"A Tirisfal gli uccelli non cantano. Le cornacchie gracchiano, qualcosa squittisce tra le travi, ma niente canta. Mi ci è voluta un'ora per capire cosa mancasse.",
		"Il silenzio di qui non ha uccelli canori dentro. Una terra può fare a meno di tante cose, ma questa la senti nei denti.",
		"Continuo ad aspettarmi un'allodola o un tordo e mi arriva una cornacchia. Tirisfal manda l'unica voce che le è rimasta.",
	},
	["tir.muse.w17.wild.017"] = {
		"Ogni cadavere senza mente in questi campi è ciò che un Reietto sarebbe senza volontà. I deathguard li abbattono con uno sguardo che non riesco a decifrare. Non è odio. È qualcosa di più vicino al fare le pulizie.",
		"In fretta e senza discorsi: così i Reietti abbattono i morti senza mente. Credo che sia gentilezza, l'unica che resti loro.",
	},
	["tir.muse.w17.wild.018"] = {
		"si china su una fila di impronte nella terra grigia e molle, lunghe, a quattro dita, e lancia un'occhiata al limitare del bosco prima di proseguire.",
		"sente una cornacchia levarsi di colpo dagli alberi più avanti, in un fracasso d'ali, e aspetta un momento per vedere cosa l'ha spaventata.",
	},
	["tir.muse.w17.wry.001"] = {
		"Quasi ovunque il cimitero è dove la storia finisce. A Tirisfal è più che altro un atrio.",
		"Tirisfal: l'unica terra dove 'riposa in pace' suona come un consiglio.",
	},
	["tir.muse.w17.wry.002"] = {
		"I deathguard hanno una battuta: cosa distingue un Reietto da un crociato? Solo uno dei due sa di stare dalla parte dei morti. La raccontano senza sorridere, e questo aiuta.",
		"Sentita a un incrocio, un deathguard all'altro: 'Su con la vita. Il peggio è già successo.' L'altro non si è tirato su, ma ha annuito.",
	},
	["tir.muse.w17.wry.003"] = {
		"Fattorie da prendere in tutta Tirisfal. Vicini tranquilli, bella vista, e ogni tanto i vecchi proprietari ancora in casa.",
		"Di case vuote, a Tirisfal, ce ne sono tante. Il guaio è che non tutte sanno di esserlo.",
		"Terra a buon prezzo, bella vista, vicini molto silenziosi. Solo, bussate prima di sistemarvi.",
	},
	["tir.muse.w17.wry.004"] = {
		"Nessuno ha fretta, a Tirisfal. Quando la morte te la sei già lasciata alle spalle, immagino che ogni altra scadenza diventi trattabile.",
		"Guardare un Reietto che conta il resto è una lezione di pazienza. Ogni moneta, due volte. Con la morte alle spalle, niente davanti è urgente.",
		"Un mercante dei Reietti ha impiegato un minuto intero a scegliere una parola, ed era la parola giusta. La fretta è un vizio dei vivi.",
	},
	["tir.muse.w17.wry.005"] = {
		"Splendida terra per farsi seppellire. Pessima per restarci.",
		"Se proprio devi farti seppellire da qualche parte, Tirisfal è molto pittoresca. Solo, non contare di restare dove ti mettono.",
	},
	["tir.muse.w17.wry.006"] = {
		"Poco fuori Brill c'è una forca. Non riesco a immaginare a cosa serva. Per un Reietto, la corda è una minaccia ben misera.",
		"Una forca in un paese di morti. O è un ricordo, o qualcuno da queste parti ha un umorismo molto asciutto. Probabilmente tutte e due le cose.",
	},
	["tir.muse.w17.wry.007"] = {
		"La locanda di Brill tiene letti per chi dorme ancora. Mi dicono che li affittano anche i Reietti. Abitudine, forse. O solo un posto dove stare distesi che non sia una cassa.",
		"Ai Reietti il sonno serve poco, mi dicono, però una sedia accanto al focolare la vogliono lo stesso. Certe comodità sopravvivono alla loro ragione.",
	},
	["tir.muse.w17.wry.008"] = {
		"Regola di Tirisfal: se sembra morto, sta solo riposando. Se sembra vivo, controlla meglio.",
		"Da queste parti, 'morto' è una descrizione, non una conclusione.",
	},
	["tir.muse.w17.wry.009"] = {
		"Uno speziale mi ha assicurato che l'aria di Tirisfal è perfettamente salubre, 'per la maggior parte degli scopi'. Ho deciso di non chiedere quali.",
		"'Innocuo', dice lo speziale della roba verde, 'con moderazione'. Non ho mai visto uno speziale fare qualcosa con moderazione.",
	},
	["tir.muse.w17.wry.010"] = {
		"sposta un teschio dal sentiero con la punta dello stivale, poi, dopo un attimo, lo rimette dritto e lo gira verso il panorama.",
		"aggira con cautela una mano che spunta dal terreno, poi esita, e le rivolge un piccolo cenno educato passando.",
	},
	["tir.muse.w17.wry.011"] = {
		"Di avventurieri Tirisfal non ha bisogno. Le serve un giardiniere con una pazienza infinita e niente olfatto.",
		"A questa terra servirebbe un buon contadino. Anche morto andrebbe bene. Il tempo, a quanto pare, ce l'hanno.",
	},
	["tir.muse.w17.wry.012"] = {
		"I Reietti scherzano sulla morte come i marinai scherzano sul mare: spesso, a denti stretti, e mai con chi ride troppo forte.",
		"L'umorismo da forca è la lingua comune di Tirisfal. Ridi alla battuta giusta e un deathguard potrebbe perfino guardarti due volte.",
	},
	["tir.muse.w17.wry.013"] = {
		"Darei parecchio per qualcosa di blu. Un fiore, un'imposta, il cappello di uno sconosciuto. Tirisfal ha consumato tutti gli altri colori.",
		"Ho visto un fiore rosso là dietro e per poco non ho esultato. Poi ho capito che era un gagliardetto della Scarlet Crusade.",
	},
	["tir.muse.w17.wry.014"] = {
		"C'è qualcosa in queste radure che fa abbassare la voce a tutti, perfino a chi in vita sua non ha mai abbassato niente.",
		"A Tirisfal nessuno grida, se non sta combattendo. La terra sembra disapprovare, e i vicini pure.",
	},
	["tir.muse.w17.wry.015"] = {
		"Un deathguard mi ha augurato lunga vita. A Tirisfal, sinceramente, non so dire se sia gentilezza o una battuta.",
		"'Lunga vita', ha detto il deathguard mentre passavo. Da un Reietto è una cortesia, oppure la cosa più asciutta che abbia mai sentito.",
	},
	["tir.muse.w17.wry.016"] = {
		"si spazzola la polvere grigia da una manica, valuta il risultato e ci rinuncia. A Tirisfal prima o poi ogni cosa prende lo stesso colore.",
		"scuote il mantello e guarda una polvere grigia e sottile volarne via; a giudicare dal risultato, il mantello era grigio fin dall'inizio.",
	},
	["tir.muse.w17.wry.017"] = {
		"Le mie giunture hanno uno scricchiolio che nessun unguento fa tacere del tutto. Gli speziali lo chiamano usura. Io lo chiamo il prezzo dell'essermi {g:rialzato|rialzata}.",
		"Ginocchia rigide, mani rigide, e nemmeno una lamentela da quello che era il mio cuore. Ci sono patti peggiori.",
	},
	["tir.muse.w17.wry.018"] = {
		"I viaggiatori vivi attraversano Tirisfal tenendomi d'occhio, come si passa accanto a una fossa aperta. Non gliene faccio una colpa. Anch'io ero {g:vivo|viva}, e avrei fatto lo stesso.",
		"I vivi trasaliscono quando ci incontrano sulla strada. Pensavo che mi avrebbe fatto male. Viene fuori che ben poco fa ancora male, ed è proprio questo a fare più male.",
	},
	["tir.muse.w17.wry.019"] = {
		"La pioggia a Tirisfal non lava niente. Rende solo il grigio più lucido.",
		"Persino la pioggia, qui, sembra stanca. Cade come se lo facesse solo perché qualcuno deve pur farlo.",
	},
	["tir.npc_meet.w17.ask.001"] = {
		"Quello sguardo paziente e fermo. Qualcuno che aspettava un paio di mani disposte ad andare nei campi.",
		"Sta per arrivare una richiesta. Sarà cortese, precisa, e riguarderà qualcosa che nessun altro voleva toccare.",
	},
	["tir.npc_meet.w17.ask.002"] = {
		"Hai l'aria di chi ha un problema là fuori. Dimmi dove.",
		"Cos'è andato storto stavolta, là fuori? Ascolto.",
		"Se cammina, striscia o si intrufola per Tirisfal, probabilmente posso dare una mano.",
	},
	["tir.npc_meet.w17.ask.003"] = {
		"si arresta davanti a qualcuno chino su una mappa piena di bandierine, ognuna piantata dove qualcosa è andato storto.",
		"risponde al cenno di una figura che stringe un fascio di rapporti, tutti nella stessa grafia fitta e preoccupata.",
		"aspetta che un appunto venga finito e asciugato con cura, e solo allora si sente rivolgere la parola.",
	},
	["tir.npc_meet.w17.ask.004"] = {
		"Chi chiede aiuto da queste parti non sembra mai disperato. Sembra organizzato. In qualche modo è più inquietante.",
		"Niente suppliche, niente mani torte. Solo un resoconto chiaro di cosa va eliminato e dove. Quasi mi manca il melodramma.",
	},
	["tir.npc_meet.w17.guard.001"] = {
		"La guardia non sposta il peso e non gira la testa. Solo gli occhi mi seguono, e dubito che si lascino sfuggire qualcosa.",
		"Una sentinella che sembra che il posto di guardia le sia stato costruito intorno. Non vorrei essere chi prova a passare di nascosto.",
		"Maglia semplice, una lunga picca, e uno sguardo che è sopravvissuto a parecchi visitatori. Non lo metterò alla prova.",
	},
	["tir.npc_meet.w17.guard.002"] = {
		"Calma. Sto dalla tua parte del muro, qualunque cosa dica la mia faccia.",
		"Da me nessun guaio. Tieni lo sguardo duro per quello che esce dai campi.",
		"Tengo le mani in vista. È il saluto abituale, da queste parti?",
	},
	["tir.npc_meet.w17.guard.003"] = {
		"passa accanto a una guardia in maglia ammaccata, che tiene il posto con l'immobilità di chi ne ha tenuti di peggiori.",
		"fa un cenno alla guardia, la cui tunica è stata rammendata tante volte che i punti superano la stoffa.",
	},
	["tir.npc_meet.w17.guard.004"] = {
		"Le guardie di qui sorvegliano la strada e i campi, ma tengono mezzo occhio anche sui cimiteri. Vecchia abitudine, o buonsenso.",
		"Qualcuno deve stare al confine del paese morto e dire 'non oltre'. Questa guardia ha l'aria di averlo detto spesso.",
	},
	["tir.npc_meet.w17.inn.001"] = {
		"L'oste accoglie ogni ospite allo stesso modo: un'occhiata lunga, un cenno breve, e le regole della casa dette una volta sola.",
		"Questo oste ha i modi del maggiordomo di una casa migliore, rimasto in servizio molto dopo che la casa è crollata.",
		"Chi manda avanti questa locanda sa esattamente chi beve cosa, chi paga in ritardo e chi non torna più. Soprattutto gli ultimi.",
	},
	["tir.npc_meet.w17.inn.002"] = {
		"Un angolo tranquillo e qualcosa da bere, se avete qualcosa che non sia verde.",
		"Prendo una stanza, e niente domande. Si vede che questa casa è brava in tutte e due le cose.",
		"Di qualunque cosa versiate, mezza tazza. A Tirisfal ho imparato a essere prudente.",
	},
	["tir.npc_meet.w17.inn.003"] = {
		"ricambia il saluto dell'oste, una parola secca e un gesto verso le scale, e osserva le travi basse e le sedie rattoppate.",
		"viene {g:squadrato|squadrata} dall'oste dagli stivali al colletto, {g:giudicato|giudicata} accettabile e {g:invitato|invitata} a sedersi accanto al muro.",
	},
	["tir.npc_meet.w17.teach.001"] = {
		"Chi insegna qui spiega una volta, piano, e poi osserva. Non si sprecano parole con chi non ascolta.",
		"Chi insegna si muove come chi ha dovuto imparare ogni cosa due volte, senza lamentarsi della seconda.",
	},
	["tir.npc_meet.w17.teach.002"] = {
		"Sono qui per imparare, non per chiacchierare. Fammi vedere.",
		"Insegnami quello che tiene in piedi qualcuno, a Tirisfal. Mi eserciterò sulla fauna locale.",
		"Mostrami il trucco. Imparo più in fretta quando qualcuno mi guarda.",
	},
	["tir.npc_meet.w17.teach.003"] = {
		"ascolta le istruzioni asciutte di chi insegna, date con una voce che non si alza mai e non ne ha bisogno.",
		"si mette nel punto indicato e ripete il movimento finché un solo cenno del capo non dice che va bene così.",
		"accetta la correzione senza una parola, cambia posizione e riprova il movimento.",
	},
	["tir.npc_meet.w17.trade.001"] = {
		"La merce è disposta come per una veglia funebre: tutto in file ordinate, niente toccato, ogni cosa un po' impolverata.",
		"Qui chi vende non insiste. Aspetta e basta, e finisci per comprare qualcosa pur di riempire il silenzio.",
		"Tutto ciò che serve a un viandante e niente che qualcuno possa desiderare. L'idea di bottega che ha Tirisfal.",
	},
	["tir.npc_meet.w17.trade.002"] = {
		"Qualcosa per rattoppare gli stivali, e del filo che non marcisca entro la settimana prossima.",
		"Cosa vende di più da queste parti? Lascia stare, lo indovino. Olio per lanterne e corda.",
		"Corda, olio, un coltello decente per tagliare le ragnatele. La lista la saprai a memoria.",
	},
	["tir.npc_meet.w17.trade.003"] = {
		"passa in rassegna la merce, prende in mano un barattolo di qualcosa di torbido, ci ripensa e lo rimette giù con delicatezza.",
		"lascia che dall'altra parte del banco venga detto un prezzo, poi un secondo, e nota che il secondo è identico al primo.",
	},
	["tir.quest_complete.w17.folk.001"] = {
		"Chi ha chiesto questo aiuto non ne parlerà più. Qui la gratitudine è un cenno, e una memoria più lunga.",
		"Nessun grazie ad alta voce, ma la prossima volta riconosceranno la mia faccia. È così che qui si ricorda chi è rimasto al proprio fianco.",
		"Da queste parti un favore si ricorda più a lungo di una faccia. Meno male, visto come finiscono le facce a Tirisfal.",
	},
	["tir.quest_complete.w17.folk.002"] = {
		"riceve un cenno breve e formale, quello che una guardia rivolgerebbe a uno steccato finalmente aggiustato.",
		"viene {g:ringraziato|ringraziata} con voce secca e misurata, e chi parla si rivolge già alle sue carte prima di finire la frase.",
	},
	["tir.quest_complete.w17.folk.003"] = {
		"Se al paese serve altro, mandate a dire. Resto in giro da queste parti ancora un po'.",
		"Se dalla terra striscia fuori dell'altro, chiedete di me per nome.",
		"Bene che sia fatto. Tirisfal ha poche mani disposte a lavorare per lei.",
	},
	["tir.quest_complete.w17.folk.004"] = {
		"Racconti com'è andata e qui stanno attenti solo al dettaglio che potrebbe servire. Il resto della storia lo lasciano andare.",
		"Ho raccontato tutto. Si sono tenuti i due fatti che contavano e, con garbo, hanno lasciato perdere il resto.",
		"Il mio rapporto è stato ascoltato in silenzio e archiviato. Qualcuno lo rileggerà due volte, che è due volte più di quanto tocchi alla maggior parte dei rapporti.",
	},
	["tir.quest_complete.w17.folk.005"] = {
		"I Reietti lavorano come se ogni compito fosse una piccola prova che scelgono ancora cosa fare. Aiutarli in uno è un po' come farne da testimone.",
		"Per la gente di qui ogni lavoro concluso è una scelta fatta liberamente, dopo anni passati senza poterne fare. Vale più della paga.",
	},
	["tir.quest_complete.w17.folk.006"] = {
		"Non serve quell'aria funerea. È andata bene, giuro.",
		"Questa sarebbe la faccia contenta? Mi fido sulla parola.",
		"Quel cenno. Era un sorriso? Io lo conto come un sorriso.",
	},
	["tir.quest_complete.w17.folk.007"] = {
		"ascolta la notizia passare di bocca in bocca a voce bassa, da chi ha chiesto a chi sta sulla porta, e oltre.",
		"sente la voce fare il giro del cortile, piatta e senza fretta: una cosa sistemata a Tirisfal, e nessuno ne fa una festa.",
	},
	["tir.quest_complete.w17.folk.008"] = {
		"Qualcuno a Tirisfal riposerà meglio, per questo. Dormire forse no; i Reietti per lo più non dormono. Ma riposare sì.",
		"Il lavoro non cambierà il colore dei campi. Forse cambierà il modo in cui qualcuno siede accanto al fuoco, per un po'.",
		"Questo lavoro non farà rinverdire nemmeno un campo. Forse permetterà a qualcuno di smettere per un giorno o due di sorvegliare il limitare del bosco.",
	},
	["tir.quest_complete.w17.folk.009"] = {
		"La terra della Dama Oscura è un po' più sicura. Per me basta e avanza.",
		"La nostra libertà l'abbiamo già pagata una volta. Non mi pesa pagarne ancora un po'.",
		"Qualsiasi cosa, per chi ha scelto di restare libero. Chiamatemi pure.",
	},
	["tir.quest_complete.w17.folk.010"] = {
		"guarda il proprio nome finire su un registro già fitto di nomi, in lettere sottili e accurate.",
		"aspetta che l'impresa venga messa a verbale, mentre la penna gratta e gratta senza fretta.",
	},
	["tir.quest_complete.w17.folk.011"] = {
		"Nessuno chiede due volte, da queste parti. Se chiedono, quel guaio è già costato loro qualcosa.",
		"Hanno chiesto una volta, chiaramente, senza supplicare. L'orgoglio è una delle poche cose che i Reietti si sono riportati dalla tomba.",
	},
	["tir.quest_complete.w17.folk.012"] = {
		"C'è un tipo di fiducia, a Tirisfal, che non somiglia alla fiducia. Ti affidano il lavoro successivo, e basta.",
		"Nessuno mi ha fatto i complimenti. Mi hanno detto dov'era il prossimo guaio. Da queste parti è la stessa cosa.",
	},
	["tir.quest_complete.w17.pay.001"] = {
		"Le monete dei Reietti arrivano contate due volte e consegnate senza una parola. Mi piacciono gli affari che non hanno bisogno di chiacchiere.",
		"La paga torna fino all'ultimo rame. Da queste parti nessuno arrotonda per eccesso, e nemmeno per difetto.",
		"Soldi giusti, contati con giustizia. I morti tengono i conti meglio di parecchi mercanti vivi con cui ho avuto a che fare.",
	},
	["tir.quest_complete.w17.pay.002"] = {
		"Paga in tasca. La spenderò in un posto con un po' più di colore di questo.",
		"Va bene così. Le monete sono l'unica cosa di Tirisfal che non sia grigia.",
		"Ecco qua. Li spenderò in un posto dove i muri stanno ancora dritti.",
	},
	["tir.quest_complete.w17.pay.003"] = {
		"soppesa il borsellino in una mano, poi lo infila sotto una giacca già velata di polvere grigia.",
		"conta le monete una volta sola, piano, mentre dietro le case passa cigolando un carro carico di sacchi.",
		"chiude le dita sul compenso e lascia ricadere la mano, come se pesasse più di quanto dovrebbe pesare il rame.",
	},
	["tir.quest_complete.w17.pay.004"] = {
		"Alcune di queste monete portano il volto del vecchio re, consumato quasi liscio. I soldi di Lordaeron si spendono ancora, anche se Lordaeron non c'è più.",
		"Nella paga c'è dell'argento del vecchio Lordaeron, con la corona consumata da mani che ormai non contano più nulla.",
		"Una moneta della paga è vecchio conio di Lordaeron. Il regno è caduto; il suo argento ha semplicemente continuato a girare.",
	},
	["tir.quest_complete.w17.pay.005"] = {
		"Metà delle monete di Tirisfal finisce comunque agli speziali. Tanto vale che, per un po', a portarle in giro sia io.",
		"Questo borsellino passerà da me a un mercante, e poi sullo scaffale di uno speziale. Qui il denaro si muove anche quando tutto il resto sta fermo.",
	},
	["tir.quest_complete.w17.pay.006"] = {
		"Non serve contarli due volte. Ho visto con quanta cura questa terra tiene i suoi conti.",
		"Mettili nella mia mano, non sul tavolo. Qui le cose lasciate sui tavoli finiscono sotto la lente di qualcuno.",
		"Pari e chiuso. Chiamatemi se i campi sputano fuori qualcosa di peggio.",
	},
	["tir.quest_complete.w17.pay.007"] = {
		"Il compenso è poco. Quello che compra è un carro che raggiunge Brill senza finire trascinato in un fosso.",
		"Qualche moneta d'argento per me. Per becchini e carrettieri, una cosa in meno da cui guardarsi le spalle.",
		"Paga modesta, ma c'è un tratto di strada in più che si può percorrere tranquilli, e a Tirisfal ogni tratto conta.",
	},
	["tir.quest_complete.w17.pay.008"] = {
		"riceve il compenso da chi tiene i registri: la cifra viene annotata prima di passare di mano, e poi annotata un'altra volta.",
		"si vede pagare moneta per moneta, ogni pezzo spuntato su un registro, come se un giorno Tirisfal dovesse rivedere i conti.",
		"guarda le monete contate in due pile ordinate e spinte avanti con un dito solo, con precisione, come se potessero mordere.",
	},
	["tir.quest_complete.w17.pay.009"] = {
		"A Tirisfal non si seppellisce niente che possa ancora servire. Vale anche per le monete: erano di qualcuno prima della Piaga, e saranno di qualcuno dopo di me.",
		"Nella borsa di chi stava quest'argento, prima della Piaga? Non importa. Qui non finisce sottoterra niente che possa ancora lavorare.",
	},
	["tir.quest_complete.w17.pay.010"] = {
		"Pagato e concluso. Se c'è altro lavoro in giro per Tirisfal, sapete dove trovarmi.",
		"Faccenda chiusa. Questa terra di guai non resta mai senza, quindi non mettete via la borsa troppo a lungo.",
		"Sistemato. Tenetevi qualche moneta da parte: questa terra ha sempre una seconda commissione nascosta dietro la prima.",
	},
	["tir.quest_complete.w17.pay.011"] = {
		"Qui nessuno tratta sulla ricompensa. Ti guardano e basta, finché non ti sembra di aver preso troppo.",
		"Avevo pensato di chiedere di più. Poi chi pagava ha alzato gli occhi, e ho deciso che la cifra era generosa.",
	},
	["tir.quest_complete.w17.pay.012"] = {
		"mette via il compenso e torna nella nebbia, mentre le case alle sue spalle si riducono a sagome nel giro di una dozzina di passi.",
		"intasca le monete mentre la nebbia si richiude sull'erba morta, inghiottendo la strada pochi passi più avanti.",
	},
	["tir.quest_complete.w17.pay.013"] = {
		"Le monete servono anche ai morti: cuoio per gli stivali, filo per le cuciture, olio per i cardini delle ginocchia. Ci consumiamo come tutto il resto.",
		"La paga conta anche dopo la tomba. I punti saltano, gli stivali marciscono, e niente guarisce più da solo.",
	},
	["tir.quest_complete.w17.walk.001"] = {
		"Si riparte. Ogni strada di Tirisfal, prima o poi, passa accanto a un cimitero, e ho smesso di contarli.",
		"Fuori, lungo una strada lastricata per i re e ora custodita dalle erbacce.",
		"In cammino. La strada che porta via è fiancheggiata da steccati che non tengono dentro più niente.",
	},
	["tir.quest_complete.w17.walk.002"] = {
		"Da che parte è il prossimo lavoro? Lascia stare. A Tirisfal è sempre dalla parte più cupa.",
		"Io vado. Se qualcuno mi cerca, segua la scia delle cose che hanno smesso di contorcersi.",
	},
	["tir.quest_complete.w17.walk.003"] = {
		"si avvia lungo la strada tra gli alberi neri, i rami spogli che si incrociano in alto come le costole di qualcosa morto da tempo.",
		"si allontana lungo la vecchia strada del re, dove le pietre miliari contano ancora le leghe fino a una capitale che non c'è più.",
		"si incammina oltre un'edicola spogliata delle offerte, dove resta solo la nicchia di pietra a dire che un tempo qualcuno ci si fermava.",
	},
	["tir.quest_complete.w17.walk.004"] = {
		"Il ritorno sulla strada è silenzioso. Tirisfal non fa rumore: fa silenzi lunghi e lenti, con dentro ogni tanto uno scricchiolio.",
		"Torno all'aperto, e il silenzio mi si richiude intorno come se mi avesse tenuto il posto.",
	},
	["tir.quest_complete.w17.walk.005"] = {
		"A sinistra alla forca, a destra alla quercia morta. Metà delle indicazioni di Tirisfal cominciano così, e non sbagliano mai.",
		"Chiedi la strada a chiunque, da queste parti, e la risposta nomina una tomba, una forca o un fienile bruciato. I punti di riferimento sono quelli che sono.",
	},
	["tir.quest_complete.w17.walk.006"] = {
		"Vado. Il fango di qui si attacca come se avesse delle opinioni.",
		"Riparto. Dite alla strada di comportarsi bene: sono {g:stanco|stanca} di raschiarmela via dagli stivali.",
		"Proseguo. Tenete l'acqua sul fuoco per me, se qui qualcuno lo fa ancora.",
	},
	["tir.quest_complete.w17.walk.007"] = {
		"controlla le cinghie dello zaino, sceglie una direzione sulla strada sconnessa e la tiene senza voltarsi.",
		"si rimette lo zaino in spalla e si allontana oltre i paletti storti dello steccato, gli stivali che scricchiolano sugli steli secchi e grigi.",
	},
	["tir.quest_complete.w17.walk.008"] = {
		"Uscendo passo davanti a una fattoria con la porta ancora sul chiavistello. Chi l'ha chiusa contava di rientrare per cena.",
		"Ogni casa abbandonata su questa strada ha una porta che qualcuno ha chiuso con cura. Lo noto più di quanto vorrei.",
	},
	["tir.quest_complete.w17.walk.009"] = {
		"Qualche scorciatoia per tornare? No, non dirmelo. Passerà per una cripta.",
		"Se c'è una via più breve, scommetto che taglia per un cimitero. Qui succede sempre.",
		"Torno per la strada maestra. Le scorciatoie, da queste parti, hanno i denti.",
	},
	["tir.quest_complete.w17.walk.010"] = {
		"Torno sotto la pioggia. Non lava Tirisfal: fa solo luccicare il grigio.",
		"Pioggia sulla strada, fredda e paziente. I solchi si riempiono e nient'altro cambia.",
	},
	["tir.quest_complete.w17.walk.011"] = {
		"fa il giro largo attorno a un carro sprofondato, mezzo inghiottito dal ciglio, poi riprende la strada dall'altra parte.",
		"segue per un tratto un fosso d'acqua nera, le canne lungo l'argine morte e diritte come una fila di picche.",
	},
	["tir.quest_complete.w17.walk.012"] = {
		"se ne va per una carrareccia scavata a fondo da ruote che hanno smesso di girare quando è arrivata la Piaga, con i dossi fra i solchi duri come osso.",
		"prende il viottolo tra due siepi morte, i solchi induriti da carri che non passano più da tanto tempo.",
	},
	["tir.quest_progress.w17.done.001"] = {
		"C'è tutto. Torno da chi aspetta, e che siano loro a preoccuparsi del resto.",
		"Tutto quello che mi hanno chiesto. Adesso il ritorno, con un occhio alle siepi per tutta la strada.",
		"Qui fuori ho finito. Meglio girarsi prima che i campi trovino qualcos'altro da tirarmi addosso.",
	},
	["tir.quest_progress.w17.done.002"] = {
		"È tutto. Se c'è altro in questa terra da sistemare, che si metta in fila.",
		"Finito. Tirisfal tenga pure il muso.",
		"Fatto. Qualcuno dica ai corvi che possono smettere di guardare.",
	},
	["tir.quest_progress.w17.done.003"] = {
		"si raddrizza a lavoro concluso e punta dritto attraverso i campi morti, senza sprecare un passo.",
		"si volta verso la strada con tutto il necessario, e cammina come chi sa esattamente dov'è la prossima porta.",
	},
	["tir.quest_progress.w17.done.004"] = {
		"Lavoro finito. Qualunque cosa abbia disturbato può tornare a posarsi: questa terra ha molta pratica.",
		"Raccolto tutto. Il campo torna al suo silenzio, e qui il silenzio sa richiudersi molto bene sulle cose.",
	},
	["tir.quest_progress.w17.step.001"] = {
		"Un pezzo sistemato. Il resto è là fuori, da qualche parte tra le fattorie morte, e non verrà a cercarmi.",
		"È una parte. Tirisfal non concede niente tutto in una volta: ti fa scavare.",
		"Un tratto di strada è fatto. Tengo il conto a mente, e gli occhi sui fossi.",
	},
	["tir.quest_progress.w17.step.002"] = {
		"Progressi. Lenti, fangosi, e con un vago odore di muffa, ma progressi.",
		"Qualcosa si muove. Tirisfal riesce a far sembrare un po' umide persino le buone notizie.",
	},
	["tir.quest_progress.w17.step.003"] = {
		"piega le dita intorpidite, conta quanto è fatto e quanto resta, e si volta verso il prossimo gruppo di alberi neri.",
		"si ferma accanto a un carro rovesciato a fare il punto, poi riparte prima che il silenzio dei campi possa posarsi.",
		"si toglie da una manica una macchia di terra grigia, alza gli occhi al cielo per abitudine e riprende il lavoro.",
	},
	["tir.quest_progress.w17.step.004"] = {
		"È un inizio. Il resto non mi sfuggirà a lungo, non in un paese così spoglio.",
		"Un pezzo di strada è fatto. In campi così vuoti è difficile nascondere granché.",
	},
	["tir.quest_progress.w17.step.005"] = {
		"C'è ancora da fare, e il prossimo pezzo porta lontano dalla strada. A Tirisfal, più ti allontani dalla strada, più si fa silenzio, e non nel senso buono.",
		"Non è finita. Il resto sta fuori dai sentieri battuti, dove gli steccati si interrompono e comincia il silenzio.",
	},
	["tir.subzone_enter.w17.part.001"] = {
		"scende i gradini della cripta di famiglia, dove le nicchie di pietra sono vuote e la polvere è stata smossa dall'interno.",
		"entra nel freddo della cripta degli Agamand: ogni nicchia aperta, ogni nome sulla pietra ancora inciso con cura.",
	},
	["tir.subzone_enter.w17.part.002"] = {
		"Garren's Haunt. Qualcuno ha chiamato una fattoria come un fantasma, o un fantasma come una fattoria. In ogni caso, nessuno ha avuto da ridire.",
		"Una fattoria con un nome così, e la porta del fienile appesa a un cardine solo. Terrò d'occhio il soppalco.",
	},
	["tir.subzone_enter.w17.part.003"] = {
		"risale il viale invaso dalle erbacce di Cold Hearth Manor, coi comignoli ritti sopra una casa che non è calda da molto tempo.",
		"oltrepassa il cancello del maniero, col ferro battuto arrugginito e spalancato, e alza gli occhi su finestre che da tempo non aspettano più ospiti.",
	},
	["tir.subzone_enter.w17.part.004"] = {
		"Nightmare Vale. Chi le ha dato il nome non era tipo da rassicurare i vicini.",
		"Questa valle è all'altezza del suo nome come una cicatrice lo è della ferita: in silenzio, e sempre.",
	},
	["tir.subzone_enter.w17.part.005"] = {
		"Tuniche rosse su una fattoria morta. La Scarlet Crusade si accampa proprio ovunque.",
		"Solliden Farmstead, e gli Scarlet hanno i fuochi accesi nel cortile. Che sfacciataggine.",
	},
	["tir.subzone_enter.w17.part.006"] = {
		"entra nell'aia dei Balnir, dove un secchio pende sul pozzo da una corda diventata verde e rigida.",
		"attraversa il cortile della fattoria vuota, con le erbacce cresciute fra i raggi di una ruota di carro appoggiata al fienile.",
	},
	["tir.subzone_enter.w17.part.007"] = {
		"Stillwater Pond. La superficie non si muove, nemmeno ai bordi. Persino l'acqua sembra stare ferma apposta.",
		"Uno stagno così piatto da sembrare dipinto. Continuo ad aspettare che qualcosa rompa la superficie, e non succede niente.",
	},
	["tir.subzone_enter.w17.part.008"] = {
		"Night Web's Hollow. Ragnatele sull'ingresso, ragnatele su ogni roccia. Mi dicono che sia un indizio.",
		"Una tana piena di ragni. Splendido. Qualcuno tenga la lanterna; io tengo i nervi.",
	},
	["tir.subzone_enter.w17.part.009"] = {
		"rallenta dove gli alberi di Venomweb Vale sono avvolti di vecchia seta, rami interi impacchettati come qualcosa messo da parte per dopo.",
		"si fa strada tra i tronchi coperti di tele, i fili che prendono la luce e tremano per qualcosa che si muove più in alto.",
	},
	["tir.subzone_enter.w17.part.010"] = {
		"Il Crusader Outpost. Un accampamento di vivi che vedono in ogni ombra di questa terra qualcosa da dare alle fiamme.",
		"Stendardi scarlatti, un fuoco di guardia, una sentinella che sta già gridando. C'è chi non vede l'ora di cominciare una guerra.",
	},
	["tir.subzone_enter.w17.part.011"] = {
		"Una torre Scarlet sulla collina. Mi vedranno arrivare da lontano. Bene: che guardino pure.",
		"Ecco il posto di guardia. Scommetto che ogni crociato lassù sta contando i miei passi.",
	},
	["tir.subzone_enter.w17.part.012"] = {
		"Il Bulwark. Barricate, carri rovesciati su un fianco, ordini dati a voce bassa. Qui Tirisfal smette di fidarsi dell'est.",
		"Al Bulwark tutti guardano dalla stessa parte. Dopo un attimo, senza volerlo, lo faccio anch'io.",
		"Un muro di tronchi e vecchi carri sbarra la strada, e dietro le guardie sorvegliano il varco.",
	},
	["tir.subzone_enter.w17.part.013"] = {
		"cammina tra le mura spezzate della capitale di Lordaeron, dove il grande cortile è spaccato e le erbacce spuntano fra le lastre del selciato.",
		"passa sotto un arco crollato della vecchia capitale, con le corone scolpite ormai consumate in forme che ricordano appena ciò che erano.",
		"resta un istante nella corte in rovina del trono: il silenzio è così pieno che si sente lo strisciare di uno stivale sulla pietra.",
	},
	["tir.subzone_enter.w17.part.014"] = {
		"Ecco la North Coast. Mare grigio, ciottoli grigi, e la prima aria di Tirisfal che sappia di qualcosa che non sia terra vecchia.",
		"La terra finisce qui, in una risacca fredda. Oltre l'acqua c'è il resto del mondo, che si fa gli affari suoi.",
	},
	["tir.subzone_enter.w17.part.015"] = {
		"Agamand Mills. Una famiglia che possedeva tutto questo, e ora ci cammina sopra senza sapere di chi fosse. È una crudeltà tutta particolare.",
		"I mulini sono ancora in piedi e le macine ancora pronte. È cambiata solo la famiglia del mugnaio, e non in meglio.",
	},
	["tir.subzone_enter.w17.part.016"] = {
		"passa da un tratto di paese morto a un altro: cambiano gli steccati, l'erba grigia non cambia affatto.",
		"supera un cartello inclinato coi bracci marciti, di cui resta solo il palo, puntato dritto verso l'alto.",
		"scavalca un cippo di confine spezzato ed entra in un altro appezzamento di Tirisfal, uguale al precedente tranne che nei suoi silenzi.",
	},
	["tir.victory.w17.won.001"] = {
		"Torna il silenzio. L'erba grigia si rialza e Tirisfal riprende ad aspettare.",
		"Fatto. Tirisfal non ha nemmeno alzato lo sguardo.",
		"Finito. La cappa non si muove nemmeno.",
	},
	["tir.victory.w17.won.002"] = {
		"Sistemato. La terra di Lordaeron se ne occupi.",
		"Giù, nella terra di Lordaeron. Un posto lo trova sempre.",
		"Chiuso, e la polvere di Lordaeron ci si posa sopra.",
	},
	["tir.victory.w17.won.003"] = {
		"lascia ricadere le braccia, e il silenzio grigio di Tirisfal si richiude sul punto come acqua.",
		"rialza la testa mentre la cappa malsana sembra chinarsi, curiosa, e poi perdere interesse.",
		"abbassa la guardia e lascia tornare la quiete grigia.",
	},
	["tir.victory.w17.won.004"] = {
		"Una torcia in meno sulle colline. Ne manderanno un'altra, e un'altra, finché della Scarlet Crusade non resterà nessuno da mandare.",
		"Voleva salvare Lordaeron. Adesso giace nel suo fango.",
	},
	["tir.victory.w17.won.005"] = {
		"Alla tua predica mancava un bel finale, crociato.",
		"Racconta ai tuoi confratelli com'è andata, crociato. Ah, già.",
		"La tua crociata finisce in un fosso, crociato. Come quasi tutte.",
	},
	["tir.victory.w17.won.006"] = {
		"Erano venuti a bruciare i morti. I morti avevano altri programmi.",
		"Epurare i non morti, ripetevano. Ho avuto qualcosa da ridire.",
	},
	["tir.victory.w17.won.007"] = {
		"Che le torri di guardia della Scarlet Crusade lo vedano pure, se stanno guardando.",
		"Se qualche crociato ha visto la scena dalle colline, spero abbia preso appunti.",
		"Le voci corrono, su queste colline. Che la Scarlet Crusade le senta.",
	},
	["tir.victory.w17.won.008"] = {
		"Una piccola vittoria in un paese morto. Me la tengo: Tirisfal non ne regala molte.",
		"Di vittorie, da queste parti, se ne vedono poche. Questa me la tengo stretta.",
		"Piccola, ma mia. Da queste parti vale parecchio.",
	},
	["tir.victory.w17.won.009"] = {
		"Riposa. Se a qualcosa in questa terra è concesso, che sia a te.",
		"Giaci in pace. Tirisfal non l'ha concesso a molti.",
		"Dormi. Tirisfal ha custodito di peggio.",
	},
	["tir.victory.w17.won.010"] = {
		"spinge col piede un po' di terra grigia sui resti, quanto di più vicino a una sepoltura Tirisfal possa ancora offrire.",
		"indugia sulla cosa morta caduta, come se le dovesse una parola che nessuno ricorda più.",
		"sparge una manciata di terra grigia su ciò che resta.",
	},
	["tir.victory.w17.won.011"] = {
		"Aveva un nome, un tempo, e un campo da lavorare. Il Re dei Lich gli ha preso entrambi. Io ho solo preso quel che restava.",
		"Chiunque fosse quel contadino, se n'era andato da un pezzo. Io ho solo sbrigato le carte.",
		"Riposa, contadino. I solchi possono aspettare.",
	},
	["tir.victory.w17.won.012"] = {
		"Per quel che resta di Lordaeron, chiunque tenga ancora il conto.",
		"Questo è per il vecchio regno. Qualcuno dovrà pur tenerne il conto.",
		"Il conto di Lordaeron cresce di uno.",
	},
	["tir.victory.w17.won.013"] = {
		"Fatto. Niente applausi, solo i corvi che si sistemano sui rami.",
		"Fatto. Brill non ne saprà niente, e mi sta benissimo.",
	},
	["tir.victory.w17.won.014"] = {
		"rialza lentamente le spalle nel grigio, lo scontro finito e la terra che già lo dimentica.",
		"arretra nell'erba morta, faccenda chiusa; Tirisfal non se n'è accorta.",
	},
	["tir.victory.w17.won.015"] = {
		"Alla fine si prende tutto, Tirisfal. Questo gliel'ho consegnato in anticipo.",
		"Tirisfal fa collezione. Consegna effettuata.",
	},
	["tir.victory.w17.won.016"] = {
		"Questa terra mi ha già tenuto una volta, e poi mi ha lasciato andare. Quello non avrà la mia fortuna.",
		"A Tirisfal la morte non è riuscita a tenermi. Con quello forse andrà meglio.",
	},
	["tir.victory.w17.won.017"] = {
		"Prima Rot Hide, adesso solo marcio. Ci sta.",
		"Una tomba in meno da saccheggiare, a Tirisfal.",
	},
	["tir.victory.w17.won.018"] = {
		"La cappa si richiude sul posto come un coperchio. A Tirisfal il rumore non dura mai.",
		"Il silenzio torna in fretta, qui. Tirisfal il chiasso non l'ha mai amato.",
		"Silenzio, quello di Tirisfal, spesso come lana.",
	},
	["tir.victory.w17.won.019"] = {
		"Questo pezzo di Tirisfal è sgombro. Manca soltanto tutto il resto.",
		"Un angolo di Tirisfal ripulito. Gli altri aspettino il loro turno.",
	},
	["tir.victory.w17.won.020"] = {
		"ascolta l'ultimo gorgoglio spegnersi e si scrolla di dosso il fango della riva.",
		"lascia tornare la quiete sulla riva e si toglie dalla manica un po' di bava che sa di pesce.",
	},
	["tir.victory.w17.won.021"] = {
		"Il Lordaeron aveva cavalieri che avrebbero brindato per molto meno. Io mi limito a un cenno.",
		"Nel vecchio regno le campane avrebbero suonato per meno. Qui c'è solo il silenzio.",
		"Niente araldi, niente campane. Solo il grigio che prende nota.",
	},
	["tir.victory.w17.wry.001"] = {
		"La popolazione di Tirisfal è appena calata di uno. Difficile accorgersene, a dire il vero.",
		"Nessuno, a Tirisfal, ne sentirà la mancanza. Qui non manca niente a nessuno.",
	},
	["tir.victory.w17.wry.002"] = {
		"In qualche laboratorio uno speziale sente che un campione perfetto sta andando sprecato.",
		"La Royal Apothecary Society lo vorrebbe insaccato ed etichettato. Dovrà chiederlo con gentilezza.",
		"Uno speziale, chissà dove, ha appena sentito una fitta.",
	},
	["tir.victory.w17.wry.003"] = {
		"I corvi saranno entusiasti. Non ringraziatemi, uccellacci.",
		"Ecco qua, corvi. Pranzo offerto da chi passava di qui.",
		"Corvi di Tirisfal, la tavola è servita.",
	},
	["tir.victory.w17.wry.004"] = {
		"Solo a Tirisfal uno scontro riesce a ravvivare il paesaggio.",
		"A dirla tutta, quella zuffa è stata la cosa più colorata vista da queste parti in anni.",
	},
	["tir.victory.w17.wry.005"] = {
		"Resta lì. A Tirisfal tutto prova a rialzarsi; tu potresti fare eccezione.",
		"Sii la prima cosa di Tirisfal che resta dove la si mette.",
		"Non muoverti più. Da queste parti è un talento raro.",
	},
	["tir.victory.w17.wry.006"] = {
		"dà un colpetto col piede a ciò che resta, per pura usanza locale.",
		"concede una pausa educata prima di voltarsi. A Tirisfal un finale va sempre ricontrollato.",
	},
	["tir.victory.w17.wry.007"] = {
		"Giù al primo tentativo. Alcuni di noi non sono mai stati così ordinati.",
		"Tutto sbrigato in un colpo solo. Io, per morire, ho fatto il giro lungo.",
	},
	["tir.victory.w17.wry.008"] = {
		"Tirisfal: vieni per l'aria buona, resti per sempre.",
		"A Tirisfal quasi tutti i soggiorni diventano definitivi.",
	},
	["tir.victory.w17.wry.009"] = {
		"Qualcuno dovrà occuparsi della sepoltura. Non io. Tanto, a Tirisfal, la lista d'attesa è lunga.",
		"Inutile scavare una fossa. Da queste parti non tengono.",
		"Ci penserà il terreno. Ha fatto pratica.",
	},
	["tir.victory.w17.wry.010"] = {
		"Direi riposa in pace, ma ho visto come va a finire da queste parti.",
		"Pace all'anima tua. Insomma: la versione di Tirisfal.",
		"Pace, ammesso che Tirisfal ne abbia d'avanzo.",
	},
	["tir.victory.w17.wry.011"] = {
		"si raschia il fango grigio da un tacco e lo chiama fare ordine.",
		"si spolvera le maniche con grande dignità, come se Tirisfal avesse un codice d'abbigliamento.",
	},
	["tir.victory.w17.wry.012"] = {
		"Atterraggio riuscito, finalmente. Il cielo di Tirisfal è già più tranquillo.",
		"Basta sbattere d'ali. Un silenzio così, Tirisfal non lo regala spesso.",
	},
	["tir.victory.w17.wry.013"] = {
		"Un problema in meno per Tirisfal. Ne restano circa mille.",
		"Risolto uno dei guai di Tirisfal. Ne mancano solo novecento.",
	},
	["tir.victory.w17.wry.014"] = {
		"Sdraiati e smettila di far fare brutta figura agli altri morti.",
		"Persino per Tirisfal, era un modo sciatto di andarsene in giro.",
	},
	["tir.victory.w17.wry.015"] = {
		"Vinci uno scontro a Tirisfal e la terra si limita a tenere il broncio un po' di più.",
		"La cappa non si è sollevata. Del resto non me l'aspettavo.",
		"La terra continua a tenere il muso. Pazienza.",
	},
	["tir.victory.w17.wry.016"] = {
		"Che qualcuno lo racconti giù al Gallows' End. No? Pazienza.",
		"Questa vale almeno un giro al Gallows' End.",
	},
	["tir.victory.w17.wry.017"] = {
		"sfida l'orizzonte grigio con lo sguardo, come per dire a Tirisfal: provaci.",
		"si guarda attorno nei campi morti come aspettando un applauso, e riceve in cambio il silenzio di sempre.",
	},
	["tir.victory.w17.wry.018"] = {
		"È il guaio di Tirisfal: vinci, e sembra comunque che tu abbia perso.",
		"A Tirisfal la vittoria somiglia parecchio alla sconfitta, solo che sei tu ad andartene a piedi.",
		"Vinto. Non sembra, ma qui vincere ha quest'aria.",
	},
	["tir.victory.w17.wry.019"] = {
		"Persino le bestie di Tirisfal sono malaticce. È stato quasi un favore.",
		"Spelacchiata, acida e sistemata. Le bestie di Tirisfal non hanno mai avuto fortuna.",
		"Una bestiaccia pulciosa in meno per queste radure.",
	},
	["tir.weather_change.w17.sky.001"] = {
		"Comincia a piovere. A Tirisfal la pioggia, più che cadere, si sistema, come un inquilino che ha intenzione di restare.",
		"Pioggia, adesso, sottile e costante. I campi grigi si scuriscono di una tonalità, ed è l'unico cambiamento che ammettono.",
		"Ecco la pioggia. I solchi si riempiono, i sentieri si ammorbidiscono, e Tirisfal ha la stessa aria cupa di prima, solo più bagnata.",
	},
	["tir.weather_change.w17.sky.002"] = {
		"alza il viso mentre le prime gocce cominciano a picchiettare sui tetti sfondati lì vicino, forti come dita che tamburellano su un tavolo in mezzo a tutto quel silenzio.",
		"guarda la pioggia scurire le lapidi una dopo l'altra, i nomi incisi che risaltano più netti man mano che la pietra si bagna.",
		"continua a camminare mentre arriva la pioggia, e la strada grigia diventa fango grigio sotto i piedi.",
	},
	["tir.weather_change.w17.sky.003"] = {
		"La nebbia sale dai campi bassi e si mangia gli steccati un palo dopo l'altro. A Tirisfal persino il tempo preferisce strisciare.",
		"Nebbia. Adesso gli alberi morti sono solo dicerie, e ogni suono sembra arrivare da qualche parte alle mie spalle.",
		"Ecco la nebbia, bianca e lenta. È la prima cosa di Tirisfal che non sia grigia, e non migliora niente lo stesso.",
	},
	["tir.weather_change.w17.sky.004"] = {
		"Nebbia. Splendido. Adesso gli zombi possono anche fare la sorpresa.",
		"Ma certo, la nebbia. Tirisfal temeva di diventare troppo allegra.",
		"Nebbia, perché a questo posto mancava proprio un buon motivo per sobbalzare davanti ai pali degli steccati.",
	},
	["tir.weather_change.w17.sky.005"] = {
		"alza gli occhi mentre il tempo si rasserena, ma il cielo di Tirisfal si schiarisce solo fino al suo solito pallore malato, e più in là non va.",
		"guarda l'aria farsi limpida sui campi finché ogni ramo morto e ogni palo di steccato risaltano netti, come tracciati a inchiostro.",
		"si scrolla l'umido dal mantello mentre il cielo si schiarisce, per quanto si schiarisca mai un cielo da queste parti, fino a un grigio piatto e uniforme.",
	},
	["tir.weather_change.w17.sky.006"] = {
		"Si è schiarito. Adesso rivedo le torri della Scarlet Crusade sulle colline. Non posso dire che mi mancassero.",
		"Sereno, lo chiamano. A Tirisfal vuol dire che nel grigio vedi un po' più lontano. Non che ci sia molto di più da vedere, eh.",
	},
]==])
