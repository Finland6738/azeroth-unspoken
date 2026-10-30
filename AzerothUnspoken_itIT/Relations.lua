-- Testi in italiano delle frasi di relazione (step S6b e S7). Le regole stanno in Data/RegistryRelations.lua.
-- Genere: non sappiamo sempre se la persona è un uomo o una donna. Le frasi si rivolgono a lei in modo neutro
-- («abbi cura di te», «nessun buco nuovo»); quelle che ne hanno bisogno dichiarano other.sex nella regola.
-- {relation} è il nome del rapporto (amico, rivale rispettato... o il testo scelto dall'utente): lo si scrive tra
-- virgolette, come un'etichetta, così regge ogni genere.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	---------------------------------------------------------------------------
	-- saluti
	---------------------------------------------------------------------------
	["rel.greet.unknown"] = {
		"Che la strada vi sia lieve, {target}. Non credo di conoscervi.",
		"Salute a voi. Non ci siamo mai incrociati: il mio nome lo saprete presto.",
		{ "Buongiorno. Non ci conosciamo, vero?", depth = "natural" },
		{ "Vi porgo il saluto che si deve a chi viene da strade ignote: pace a voi, e acqua buona lungo il cammino.", depth = "elevated" },
	},
	["rel.greet.acquaintance"] = {
		"Ah, voi. Il volto lo ricordo; il nome mi ci vuole un attimo.",
		"Ci siamo già incontrati, mi pare. Come vanno le cose da queste parti?",
	},
	["rel.greet.friend"] = {
		"Ehi, {target}! Fatti guardare: nessun buco nuovo, vedo.",
		"Che bello rivederti. La strada era più lunga, senza qualcuno con cui lagnarsi.",
		{ "Eccoti! Vieni qua.", depth = "natural" },
		{ "Ogni volta che ti ritrovo, la giornata si raddrizza un poco. Un saluto non basta: resta un po'.", depth = "elevated" },
	},
	["rel.greet.friend.old"] = {
		"Con te non servono le formalità. Siediti, resta un po'.",
		"Da quanto ci conosciamo? Abbastanza da saltare i convenevoli.",
	},
	["rel.greet.friend.f"] = {
		"Amica mia! Temevo che la strada ti avesse inghiottita.",
		"Eccola, la mia amica preferita. Non dirlo agli altri.",
	},
	["rel.greet.friend.m"] = {
		"Amico mio! Temevo che la strada ti avesse inghiottito.",
		"Eccolo, il mio amico preferito. Non dirlo agli altri.",
	},
	["rel.greet.comrade"] = {
		"Fianco a fianco, come sempre. Dimmi dove si va.",
		"Io e te abbiamo già visto di peggio. Questa sarà una passeggiata.",
		{ "Ci sei. Bene, allora si parte.", depth = "natural" },
		{ "Rieccoci, due lame e un solo passo. Chi ci vede arrivare insieme farebbe bene a ricordarsene.", depth = "elevated" },
	},
	["rel.greet.rival"] = {
		"Eccoti. Vorrei poterti detestare con un po' più di convinzione.",
		"Mi inchino, rivale: sei la sola persona che mi costringe a dare il meglio.",
	},
	["rel.greet.lover"] = {
		"Eccoti. Il resto del mondo può aspettare un istante.",
		"Il tempo, senza di te, cammina piano.",
	},
	["rel.greet.wary"] = {
		"Vi saluto. Non fraintendete: è cortesia, non fiducia.",
		"Buongiorno. Teniamo le mani dove si vedono, d'accordo?",
	},
	["rel.greet.enemy"] = {
		"Ci rivediamo. Spero che almeno uno di noi abbia imparato qualcosa.",
		"Dite ciò che dovete dire, e non indugiate.",
		{ "Ancora voi. Facciamola breve.", depth = "natural" },
		{ "Il caso ci rimette faccia a faccia. Non mi aspetto pace, ma pretendo almeno parole dritte.", depth = "elevated" },
	},
	["rel.greet.feared"] = {
		"Il cuore accelera, ogni volta. Non lascerò che si veda.",
		"Respira. Saluta. Non abbassare lo sguardo per primo.",
	},
	["rel.greet.indifferent"] = {
		"Salve.",
		"Oh. Buongiorno, immagino.",
	},
	["rel.greet.player"] = {
		"Che piacere ritrovarti in giro, {target}.",
		"Ehi, ci si rivede! Il mondo è più piccolo di quanto dicano.",
	},
	["rel.greet.label"] = {
		"Accanto a questo volto, nel mio diario, c'è scritto «{relation}». Vediamo se è ancora vero.",
		"«{relation}»: così ho segnato questo nome. Le parole sui fogli cambiano più lentamente delle persone.",
	},
	["rel.greet.innkeeper"] = {
		"Ancora in piedi dietro quel bancone? Mi tieni un posto vicino al fuoco?",
		"Rieccomi. Il solito, se il solito è ancora caldo.",
	},
	["rel.greet.attraction"] = {
		"Perché, ogni volta, le parole mi arrivano in bocca nell'ordine sbagliato?",
		"Saluta normalmente. Normalmente. Come si saluta, normalmente?",
	},

	---------------------------------------------------------------------------
	-- congedi
	---------------------------------------------------------------------------
	["rel.bye.unknown"] = {
		"Proseguite in pace, e che il sentiero vi riconduca a luoghi più gentili.",
		{ "Buon viaggio a voi.", depth = "natural" },
		{ "Andate, e che la vostra strada sia breve dove è dura e lunga dove è bella.", depth = "elevated" },
	},
	["rel.bye.acquaintance"] = {
		"Ci si vede, allora. Le strade hanno il vizio di tornare a incrociarsi.",
		"Alla prossima. Magari la prossima volta ci diciamo anche i nomi.",
	},
	["rel.bye.friend"] = {
		"Vai piano, e fammi sapere se non torni. Non farmi aspettare troppo.",
		"Abbi cura di te, d'accordo? Il mondo ha già abbastanza sedie vuote a tavola.",
		{ "Ciao. Non fare sciocchezze senza di me.", depth = "natural" },
		{ "Va', e porta con te la parte migliore di questa giornata. La mia l'hai già presa tu.", depth = "elevated" },
	},
	["rel.bye.comrade"] = {
		"Che la tua lama resti affilata e la guardia alta. Ci rivediamo al prossimo fronte.",
		{ "Alla prossima battaglia, allora.", depth = "natural" },
		{ "Ci separiamo qui, ma il posto al mio fianco resta tuo finché avrò fiato per difenderlo.", depth = "elevated" },
	},
	["rel.bye.rival"] = {
		"Non morire prima di aver perso contro di me. Sarebbe scorretto.",
		"Vai pure. Tanto ci rivediamo, e la prossima la vinco io.",
	},
	["rel.bye.lover"] = {
		"Torna presto. Lascerò una candela alla finestra.",
		"Vai. Ma guardati indietro una volta, prima della curva.",
	},
	["rel.bye.hostile"] = {
		"Andate. E che la prossima volta ci trovi più saggi, o almeno più lontani.",
		"La strada è larga. Prendete la vostra metà.",
	},
	["rel.bye.indifferent"] = {
		"Arrivederci.",
		"Bene. Buona giornata, suppongo.",
	},
	["rel.bye.feared"] = {
		"Se n'è andato il peso che avevo sul petto. Mi sono {g:accorto|accorta} solo adesso di quanto fosse grande.",
		"Ecco, è finita. Le mani hanno smesso di tremare appena in tempo.",
	},
	["rel.bye.player"] = {
		"Buona strada, {target}. Ci si incrocia di nuovo, prima o poi.",
		"Alla prossima! Salutami la strada.",
	},
	["rel.bye.close"] = {
		"resta a guardare finché la figura che si allontana non diventa un punto, e poi ancora un poco.",
		"alza una mano in un saluto che dura più del necessario.",
	},

	---------------------------------------------------------------------------
	-- ringraziamenti
	---------------------------------------------------------------------------
	["rel.thanks.unknown"] = {
		"Ve ne sono {g:grato|grata}. Il vostro nome, un giorno, lo ricorderò.",
		"Grazie, chiunque siate. Non era dovuto.",
	},
	["rel.thanks.acquaintance"] = {
		"Grazie, davvero. Siamo poco più che due facce note, eppure.",
		"Ti devo un favore. Mi ricorderò di te, stavolta anche del nome.",
	},
	["rel.thanks.indifferent"] = {
		"Grazie.",
		"Ah. Grazie, allora.",
	},
	["rel.thanks.friend"] = {
		"Grazie. Tra amici non si tiene il conto, ma io lo tengo lo stesso.",
		"Non so come farei senza di te. Ma non dirlo in giro.",
	},
	["rel.thanks.comrade"] = {
		"Mi hai coperto le spalle. La prossima volta tocca a me, e non accetto rifiuti.",
		"Ti devo la pelle. Come al solito.",
	},
	["rel.thanks.rival"] = {
		"Grazie. Non dirlo a nessuno: rovinerebbe la reputazione di entrambi.",
		"Un favore da te... Lo restituirò con gli interessi. Come ogni cosa.",
	},
	["rel.thanks.lover"] = {
		"Grazie. E non solo per questo.",
		"Grazie. Lo sai che non è la parola giusta, ma è quella che ho.",
	},
	["rel.thanks.wary"] = {
		"Ne prendo atto. Resto sul chi vive, ma ne prendo atto.",
		"Grazie. Mi chiedo cosa mi costerà.",
	},
	["rel.thanks.feared"] = {
		"Un gesto gentile, da chi meno me lo aspettavo. Non so se sentirmi meglio o peggio.",
		"Ho ringraziato con la voce ferma. Almeno questo.",
	},

	---------------------------------------------------------------------------
	-- cure
	---------------------------------------------------------------------------
	["rel.heal.friend"] = {
		"Non muoverti, ti rimetto in sesto. Non guardare la ferita: è brutta.",
		"Coraggio, la luce arriva. E tu, la prossima volta, abbassati.",
	},
	["rel.heal.comrade"] = {
		"Finché avrò fiato, non cadrai.",
		"Tieni duro. Ho visto di peggio, e l'abbiamo sistemato insieme.",
	},
	["rel.heal.lover"] = {
		"Le mani mi tremano più per te che per lo scontro.",
		"Respira con me. Così. Non lasciarmi la paura tutta da {g:solo|sola}.",
	},
	["rel.heal.rival"] = {
		"Ti curo perché voglio batterti in piena salute. Non montarti la testa.",
		"Ecco fatto. Ora non hai più scuse per perdere.",
	},
	["rel.heal.enemy"] = {
		"Curare chi mi ha ferito. Chissà quale dei due dovrebbe vergognarsene.",
		"Le mani fanno il loro lavoro. Il cuore, per ora, resta fuori dalla porta.",
	},
	["rel.heal.unknown"] = {
		"Non vi conosco, ma una ferita non chiede il nome.",
		{ "State giù, vi aiuto io.", depth = "natural" },
	},
	["rel.heal.acquaintance"] = {
		"Fermatevi un attimo, vi sistemo quel taglio.",
		"Ci conosciamo appena, ma il sangue che perdete è uguale a quello di tutti.",
	},
	["rel.heal.wary"] = {
		"Curo questa ferita, sì. Non perché mi fidi: perché un ferito alle spalle è peggio di un ferito davanti.",
		"Che strano lavoro, rimettere in piedi chi ti fa tenere la mano sul coltello.",
	},
	["rel.heal.indifferent"] = {
		"Sta' {og:fermo|ferma}. Due minuti e sei a posto.",
		"Ecco fatto. Non c'è bisogno di ringraziare.",
	},
	["rel.heal.feared"] = {
		"Le mie mani su quella ferita, e il mio cuore che batte come un tamburo. Non deve accorgersene.",
		"Curo chi mi fa paura. Forse è la cosa più coraggiosa che farò oggi.",
	},

	---------------------------------------------------------------------------
	-- battaglia e vittoria al fianco di qualcuno
	---------------------------------------------------------------------------
	["rel.battle.friend"] = {
		"Con un amico al fianco, anche questo pesa meno.",
		"Se cado, avvisa. Se cadi tu, ti prendo io.",
	},
	["rel.battle.comrade"] = {
		"Scudo contro scudo. Ci ricorderanno come un muro.",
		"Tu a destra, io a sinistra. Come sempre.",
	},
	["rel.battle.lover"] = {
		"Non guardarmi, guardali. Devo restare {g:lucido|lucida}, e tu non aiuti.",
		"Concentrati sul nemico. Non su dove si trova lei, o lui. Sul nemico.",
	},
	["rel.battle.rival"] = {
		"Spero di fare meglio di te, oggi. Per una volta vorrei vincere restando dalla stessa parte.",
		"Contiamo i colpi? Contiamo i colpi.",
	},
	["rel.battle.enemy"] = {
		"Combattere accanto a chi ho giurato di non perdonare. Il campo non fa distinzioni.",
		"Stessa parte, per oggi. Domani si vedrà.",
	},
	["rel.battle.known"] = {
		"stringe l'elsa e sente, accanto a sé, un respiro conosciuto.",
		"si sposta d'istinto di mezzo passo, per lasciare spazio a chi combatte al suo fianco da tempo.",
	},
	["rel.battle.acquaintance"] = {
		"Non ci conosciamo granché, ma oggi ci guardiamo le spalle. Tutto qui.",
		"Occhi aperti, voi! Se ne usciamo vivi, ci presentiamo come si deve.",
	},
	["rel.battle.wary"] = {
		"Tengo d'occhio il nemico davanti, e un poco anche il compagno accanto.",
		"Non mi fido di chi combatte al mio fianco. Per fortuna, oggi ci serve lo stesso nemico.",
	},
	["rel.battle.feared"] = {
		"Combattere a fianco di chi temo. Non so se mi fa sentire più al sicuro o meno.",
		"Meglio averla dalla mia parte, quella furia. Molto meglio.",
	},
	["rel.victory.friend"] = {
		"Ce l'abbiamo fatta. Il primo giro lo offro io, e non è una proposta.",
		"Visto? Insieme non siamo poi così male.",
	},
	["rel.victory.comrade"] = {
		"Il campo è nostro. Ricorda il nome di chi ti stava accanto.",
		"Ancora in piedi, tutti e due. Come promesso.",
	},
	["rel.victory.lover"] = {
		"Illesi, tutti e due. Lo ripeto a me {g:stesso|stessa} finché ci credo.",
		"Finita. Adesso posso tornare a respirare.",
	},
	["rel.victory.rival"] = {
		"Ammetto che hai combattuto bene. Non pretendere che lo ripeta.",
		"Pari, direi. Per stavolta.",
	},
	["rel.victory.acquaintance"] = {
		"Bel lavoro. Ci voleva un po' d'aiuto, e voi c'eravate.",
		"Non male, per gente che si conosce appena!",
	},
	["rel.victory.wary"] = {
		"Abbiamo vinto insieme. Non cambia ciò che penso; cambia solo che sono {g:vivo|viva} per pensarlo.",
		"Il nemico è a terra. Il dubbio, invece, è ancora in piedi.",
	},
	["rel.victory.feared"] = {
		"Abbiamo vinto, e ho visto da vicino come combatte. La paura non è passata; si è fatta più precisa.",
		"Meno male che era dalla mia parte. Lo ripeterò stanotte, prima di dormire.",
	},
	["rel.victory.known"] = {
		"si volta per prima cosa verso chi ha combattuto al suo fianco, e solo dopo abbassa l'arma.",
		"scambia uno sguardo con un volto amico: non servono parole per contare i graffi.",
	},

	---------------------------------------------------------------------------
	-- incontri con NPC conosciuti
	---------------------------------------------------------------------------
	["rel.npc.acquaintance"] = {
		"Un volto già visto. Non ci siamo detti molto, ma abbastanza da riconoscerci.",
		"Ci conosciamo di vista. È già qualcosa, in un mondo così grande.",
	},
	["rel.npc.indifferent"] = {
		"Ci conosciamo da tempo e non provo nulla, né in un senso né nell'altro. Anche questo è un legame, a suo modo.",
		"Sempre lì, sempre uguale. Nessuno dei due si è mai sforzato di più.",
	},
	["rel.npc.friend"] = {
		"Rivedere una faccia amica fa sempre bene, anche quando non c'è nulla da chiedere.",
		"Una faccia amica, qui. Mi sento un po' meno {g:lontano|lontana} da casa.",
		{ "Oh, guarda chi c'è. Bene.", depth = "natural" },
		{ "In tutto questo andare, ci sono porte che si aprono prima ancora di bussare. Questa è una di quelle.", depth = "elevated" },
	},
	["rel.npc.friend.f"] = {
		"Un'amica, qui. Il viaggio si fa più leggero.",
		"Lei mi ha sempre {g:trattato|trattata} bene. Sorrido prima ancora di accorgermene.",
	},
	["rel.npc.friend.m"] = {
		"Un amico, qui. Il viaggio si fa più leggero.",
		"Lui mi ha sempre {g:trattato|trattata} bene. Sorrido prima ancora di accorgermene.",
	},
	["rel.npc.friend.old"] = {
		"Quante volte ci siamo incrociati, ormai? Abbastanza da non avere più bisogno di parole.",
		"Ci conosciamo da così tanto che basta un cenno.",
	},
	["rel.npc.comrade"] = {
		"Se un giorno servisse un braccio in più, qui ne trovo uno che non chiederebbe il perché.",
		{ "Persona fidata. Lo so e basta.", depth = "natural" },
		{ "Ci sono legami forgiati senza giuramenti, nel fango e nella fatica: questo è uno di quelli, e non si spezza.", depth = "elevated" },
	},
	["rel.npc.rival"] = {
		"«{relation}»: così sta scritto nel mio diario. È raro che la stima faccia tanto rumore.",
		"Ogni volta che ci incrociamo, mi viene voglia di fare meglio. Fastidioso.",
	},
	["rel.npc.enemy"] = {
		"Ogni parola, qui, è un passo su ghiaccio sottile. Ricordo ciò che è stato; temo che dall'altra parte nessuno l'abbia dimenticato.",
		"Calma. Le vecchie ruggini non si lucidano con le parole.",
	},
	["rel.npc.wary"] = {
		"Lo sguardo è cortese, la mano resta vicino alla borsa. Vecchie abitudini, e buone ragioni.",
		"Sorrisi da entrambe le parti. Nessuno dei due ci crede.",
	},
	["rel.npc.feared"] = {
		"Parlare qui richiede un coraggio che non ammetterei mai. Scelgo bene le parole.",
		"Voce ferma, schiena dritta. Ciò che sento dentro resta dentro.",
	},
	["rel.npc.lover"] = {
		"Sorridere, adesso, non costa nulla. Nasconderlo, sì.",
		"Che ridicolo, il cuore. Basta un volto, e dimentica tutto il resto.",
	},
	["rel.npc.bond"] = {
		"certi legami non hanno più bisogno di un nome: restano, e basta.",
		"si avvicina senza fretta, come chi torna in una stanza in cui è sempre {g:stato accolto|stata accolta}.",
	},
	["rel.npc.known"] = {
		"Non è la prima volta che parliamo, io e te. Alla lunga ci si riconosce.",
		"Facce note. Fanno sembrare il mondo un po' più piccolo, e un po' più mio.",
	},
	["rel.npc.label"] = {
		"Nel mio diario, accanto a questo nome, c'è scritto «{relation}». Vediamo se è ancora la parola giusta.",
		"«{relation}». Le etichette sono comode; le persone, un po' meno.",
	},
	["rel.npc.hated"] = {
		"Non tutti i conti si chiudono. Questo, per ora, resta aperto, e brucia.",
		"Sto parlando con chi non sopporto, e la mia voce è quasi calma. Quasi.",
	},
	["rel.npc.close"] = {
		"si ferma più a lungo del necessario, e la conversazione si scioglie come tra persone che si conoscono bene.",
		"accenna un sorriso prima ancora di parlare: certi incontri cominciano così.",
	},
	["rel.npc.innkeeper"] = {
		"Eccomi di nuovo. C'è ancora quella zuppa, o devo accontentarmi del pane?",
		"Sempre un piacere. Hai una stanza per chi ha fatto troppa strada?",
	},
	["rel.npc.merchant"] = {
		"Ci conosciamo bene, io e questa bottega. Lei conosce anche il fondo della mia borsa.",
		"Un mercante che mi conosce. Spero voglia dire uno sconto, temo voglia dire il contrario.",
	},
}, "base_relations")
