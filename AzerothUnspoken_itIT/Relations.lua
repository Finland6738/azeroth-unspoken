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
		"Salute a voi. Le nostre strade non si sono mai incrociate: il mio nome lo saprete presto.",
		{ "Buongiorno. Non ci conosciamo, vero?", depth = "natural" },
		{ "Vi porgo il saluto che si deve a chi viene da strade ignote: pace a voi, e acqua buona lungo il cammino.", depth = "elevated" },
	},
	["rel.greet.acquaintance"] = {
		"Ah, voi. Il volto lo ricordo; il nome mi ci vuole un attimo.",
		"Ci conosciamo già, mi pare. Come vanno le cose da queste parti?",
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
		"Quante volte si sono incrociate le nostre strade, ormai? Abbastanza da non avere più bisogno di parole.",
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
	-- N2 (#214): il primo incontro ricordato
	["rel.npc.met.novice"] = {
		"La prima volta che mi sono {g:fermato|fermata} qui ero ancora alle prime armi. Mi hanno {g:visto|vista} crescere, un poco alla volta.",
		{ "Ero poco più che una recluta, al nostro primo incontro.", depth = "natural" },
		{ "Questo volto mi conosceva prima che la strada mi avesse insegnato qualcosa; ogni stagione da allora si è scritta sopra quella prima pagina goffa.", depth = "elevated" },
	},
	["rel.npc.met.night"] = {
		"Il nostro primo incontro fu di notte. Alla luce del giorno, questo volto mi sembra ancora un po' nuovo.",
		"Ho conosciuto prima questa voce, nel buio, e solo dopo il volto che la accompagna.",
	},
	["rel.npc.met.rain"] = {
		"Pioveva, la prima volta che ho trovato questa porta. Strano, le cose che si conservano.",
		{ "Di quel primo giorno ricordo la pioggia, più delle parole.", depth = "natural" },
	},
	["rel.npc.met.snow"] = {
		"Nevicava, al nostro primo incontro: ricordo il freddo meglio delle parole.",
		"Ogni volta che torno, una parte di me si scuote ancora dal mantello la neve di quel primo giorno.",
	},
	["rel.npc.met.long"] = {
		"Sono passati mesi dal nostro primo incontro. Abbastanza perché un volto diventi parte della strada.",
		{ "Ci conosciamo da un pezzo, ormai.", depth = "natural" },
	},
	-- N4 (#216): la parola data a un NPC
	["rel.npc.promise.waiting"] = {
		"Devo ancora un compito a questa persona. I giorni hanno il vizio di accumularsi tra una promessa e il suo compimento.",
		{ "Avevo detto che ci avrei pensato io. Non l'ho ancora fatto.", depth = "natural" },
	},
	["rel.npc.oath.broken"] = {
		"Ho giurato, e non ho mantenuto. Ogni saluto, qui, ora ha quel giuramento in mezzo.",
		{ "Se lo ricordano. Anch'io.", depth = "natural" },
		{ "Un giuramento infranto è una porta che non si richiude più; ne sento lo spiffero ogni volta che torno qui.", depth = "elevated" },
	},
	["rel.npc.oath.here"] = {
		"Le voci corrono, in un posto così. Chissà quanti qui sanno del giuramento che ho infranto.",
		{ "La gente parla. Preferirei che parlasse d'altro.", depth = "natural" },
	},
	-- N6 (#218): la reputazione locale
	["rel.npc.town.title"] = {
		"{title}, mi chiamano qui. Non ho ancora deciso se il nome mi sta bene, o io a lui.",
		{ "{title}. Strano come un luogo decida chi sei.", depth = "natural" },
	},
	["rel.npc.town.word.good"] = {
		"Un volto che conosco appena, e già un sorriso per me. Qualcuno, qui, ha parlato bene di me.",
		{ "Hanno sentito parlare di me. In bene, a quanto pare.", depth = "natural" },
	},
	["rel.npc.town.word.bad"] = {
		"Uno sconosciuto, eppure quello sguardo guardingo. Qualunque cosa abbia sentito su di me, è entrata prima di me.",
		{ "Hanno sentito parlare di me. Non della parte buona.", depth = "natural" },
	},
	["rel.npc.rival.noticed"] = {
		"Lo sento dal saluto: sa benissimo a quale porta sono {g:andato|andata} a bussare.",
		{ "Sa dove passo il mio tempo, altrove. Ovviamente lo sa.", depth = "natural" },
	},
	-- N3 (#215): una storia d'amore con un NPC
	["rel.npc.attraction"] = {
		"Niente da vedere qui. Solo un battito che ha dimenticato il proprio passo.",
		{ "Respira. È solo una conversazione. È solo una conversazione.", depth = "natural" },
	},
	["rel.npc.vowed"] = {
		"Il voto è ancora lì, mai pronunciato, e non si è fatto più leggero.",
		"Ho promesso in silenzio. Il silenzio mantiene le promesse meglio delle parole.",
	},
	-- N5 (#217): il soprannome dato da un NPC, e un favore ancora aperto
	["rel.npc.nickname"] = {
		"\"{nickname}.\" Mi chiama così solo questa persona, e chissà come, rispondo.",
		{ "{nickname}. È nato come uno scherzo. Non lo è più.", depth = "natural" },
	},
	["rel.npc.favour.open"] = {
		"C'era una piccola cosa che avevo detto di fare per questa persona. Le piccole cose sono le più facili da lasciar cadere.",
		{ "Devo ancora un favore, qui. Piccolo. Ma lo devo.", depth = "natural" },
	},
	["rel.npc.innkeeper"] = {
		"Eccomi di nuovo. C'è ancora quella zuppa, o devo accontentarmi del pane?",
		"Sempre un piacere. Hai una stanza per chi ha fatto troppa strada?",
	},
	["rel.npc.merchant"] = {
		"Ci conosciamo bene, io e questa bottega. Lei conosce anche il fondo della mia borsa.",
		"Un mercante che mi conosce. Spero voglia dire uno sconto, temo voglia dire il contrario.",
	},
	---------------------------------------------------------------------------
	-- un giocatore noto riconosciuto (#106), per sentimento (#109) e per ciò che l'addon ha osservato (#110)
	---------------------------------------------------------------------------
	["rel.player.trust"] = {
		"{other}. Tra i pochi a cui darei le spalle senza voltarmi.",
		"Ecco {other}. Alcune persone si controllano due volte; con questa ho smesso di controllare da un pezzo.",
		{ "{other}. Bene. Posso respirare.", depth = "natural" },
		{ "La fiducia non si riceve: la si trova già costruita quando serve. Con {other} era già lì prima ancora che andassi a cercarla.", depth = "elevated" },
	},
	["rel.player.liking"] = {
		"Di nuovo {other}, e mi accorgo di sorridere già. Difficile dire perché: certe persone sono semplicemente facili da apprezzare.",
		"Ah, {other}. La strada pesa meno con certi volti lungo il cammino.",
		{ "Oh, {other}! Bene.", depth = "natural" },
		{ "Certi incontri non chiedono motivi. {other} compare e la giornata si sistema un po' meglio.", depth = "elevated" },
	},
	["rel.player.gratitude"] = {
		"{other}. Non ho dimenticato ciò che è stato fatto per me, e non lo dimenticherò, per quanto ne parli poco.",
		"Passa qualcuno a cui devo più di quanto abbia mai detto. Un giorno troverò le parole giuste, o il momento giusto.",
		{ "{other}. Ho ancora un debito da saldare.", depth = "natural" },
		{ "Un debito di gratitudine non si riduce con gli anni: impara solo ad aspettare in silenzio. {other} è sulla strada, e il mio è ancora aperto.", depth = "elevated" },
	},
	["rel.player.wariness"] = {
		"{other}. Un cenno, un sorriso, e gli occhi aperti. Vecchia abitudine, motivi più recenti.",
		"Un nome noto, e non di quelli che lascio vicino alla borsa. La cortesia non costa nulla; la fiducia costa molto.",
		{ "{other}. Attenzione.", depth = "natural" },
		{ "Non credo che {other} voglia del male, esattamente. So solo quanto spesso sia proprio «esattamente» la parola che cede.", depth = "elevated" },
	},
	["rel.player.fear"] = {
		"Ancora {other}. Il polso se ne accorge prima di me. Tengo il volto fermo e il passo regolare.",
		"Conosco quell'andatura. Non sarò io a guardare {other} per {g:primo|prima}, né a distogliere lo sguardo per {g:ultimo|ultima}.",
		{ "{other}. Calma.", depth = "natural" },
		{ "La paura è solo attenzione che non sa dove andare. La mia si è voltata tutta verso {other}, e non si lascia convincere.", depth = "elevated" },
	},
	["rel.player.resentment"] = {
		"{other}. Non ho dimenticato, e non ho perdonato. Per ora resterò cortese: la cortesia costa meno di una rissa.",
		"Ecco {other}. Certi debiti non si pagano in monete, e questo è ancora aperto.",
		{ "{other}. Ovviamente.", depth = "natural" },
		{ "Il rancore ha una memoria eccellente e un senso del tempo pessimo. Ogni dettaglio di {other} è esattamente dove l'ho lasciato.", depth = "elevated" },
	},
	["rel.player.ally"] = {
		"{other}. Vogliamo la stessa cosa, e questo conta più di una lunga amicizia. Vediamo cosa se ne può fare.",
		"Un'alleanza per scelta: nessuno ce l'ha imposta, e nessuno può scioglierla tranne noi.",
		{ "{other}: dalla mia parte, come d'accordo.", depth = "natural" },
	},
	["rel.player.friend"] = {
		"{other}! Rassicurante trovare un volto amico in mezzo alla folla.",
		"Certi incontri non si pianificano: capitano, e vanno per il verso giusto.",
		{ "Ehi, {other}.", depth = "natural" },
	},
	["rel.player.rival"] = {
		"{other}. Non lo direi mai ad alta voce, ma quando {other} è nei paraggi mi impegno di più.",
		"Una rivalità che si rispetti, sulla stessa strada. Doveva succedere.",
		{ "{other}. Seconda ripresa, allora.", depth = "natural" },
	},
	["rel.player.enemy"] = {
		"{other}. Le nostre strade si incrociano ancora, e nessuno dei due ha cambiato idea.",
		"Non c'è nessuno che preferirei evitare di più. Eppure eccoci qui.",
		{ "{other}. Proprio {other}, fra tutti.", depth = "natural" },
	},
	["rel.player.wary"] = {
		"Conosco il nome, e il nome non mi rassicura.",
		"{other}. Un cenno del capo, e le distanze restano.",
		{ "{other}. Mh.", depth = "natural" },
	},
	["rel.player.feared"] = {
		"{other} è qui. Mi scopro a fare un passo indietro senza ammetterlo.",
		"Qualunque cosa io provi per {other}, non è sollievo. Continuo a camminare.",
	},
	["rel.player.known"] = {
		"Conosco quel nome: {other}. Le nostre strade si sono già incrociate.",
		"{other}. Un volto della strada: i dettagli torneranno tra un istante.",
		{ "Ah, ecco {other}.", depth = "natural" },
	},
	["rel.player.absent.long"] = {
		"{other}. È passato tanto tempo: abbastanza da scordare come erano rimaste le cose tra noi, non abbastanza da scordare che è successo.",
		"Molto tempo dall'ultimo incontro con {other}. Le strade raramente riportano le stesse persone alla stessa distanza.",
		{ "{other}. Sono passati secoli.", depth = "natural" },
	},
	["rel.player.absent.weeks"] = {
		"Qualche settimana dall'ultima volta. Abbastanza per chiedersi cosa abbia combinato {other}.",
		"{other} di nuovo, dopo qualche settimana. Non tanto; quanto basta per accorgersi del vuoto.",
	},
	["rel.player.recent"] = {
		"Ancora {other}, e così presto. Oggi la strada sembra piccola.",
		"Oggi continuiamo a incontrarci, {other} e io. O è una coincidenza, o è una strada molto paziente.",
	},
	["rel.player.met_here"] = {
		"L'ultima volta che ho visto {other} era proprio qui. Anche i luoghi ci ricordano, un poco.",
		"Lo stesso posto di prima, {other}. Certi luoghi raccolgono incontri come altri raccolgono polvere.",
	},
	["rel.player.shared.combat"] = {
		"Abbiamo combattuto fianco a fianco, {other} e io. Non è qualcosa che un solo addio cancella.",
		"Una battaglia condivisa lascia un segno che una stretta di mano non lascia mai.",
		{ "{other}. Abbiamo sanguinato nella stessa battaglia.", depth = "natural" },
		{ "Chi è stato nella stessa linea, di fronte alla stessa cosa, porta con sé un piccolo paese in comune. Il mio comprende {other}.", depth = "elevated" },
	},
	["rel.player.shared.duel"] = {
		"Abbiamo incrociato le armi in duello, {other} e io: il polso ricorda meglio della mente.",
		"Mi sono {g:misurato|misurata} con {other}. È un modo di presentarsi, come un altro.",
		{ "{other}. Il nostro duello è ancora nel polso.", depth = "natural" },
	},
	["rel.greet.ally"] = {
		"{target}, salute. Siamo dallo stesso lato di questa faccenda, e questo vale un saluto.",
		"Alleanza: parola piccola, ma la dico sul serio.",
		{ "Ci sei. Bene, andiamo.", depth = "natural" },
	},
	["rel.bye.ally"] = {
		"Alla prossima volta che avremo bisogno l'uno dell'altro. Non passerà molto.",
		"Buon cammino. Ci rivedremo dove ci chiamerà la causa.",
		{ "A presto. Sai dove trovarmi.", depth = "natural" },
	},
	-- N9 (#221): the NPC relationships milestone, by role and disposition
	["rel.npc.attraction.early"] = {
		"Mi sono {g:sorpreso|sorpresa} a scegliere questa strada apposta. Tutto qui. È solo questo.",
		{ "Perché finisco sempre su questa strada? Lascia stare. Non rispondere.", depth = "natural" },
	},
	["rel.npc.attraction.guard"] = {
		"Tanto da tenere d'occhio, e ancora uno sguardo per me. Ci leggo troppo. Probabilmente.",
		{ "In servizio, e ancora quello sguardo. Non fare {g:lo sciocco|la sciocca}.", depth = "natural" },
	},
	["rel.npc.attraction.innkeeper"] = {
		"Mi ripeto che è il focolare a rendere così calda questa locanda.",
		{ "Un buon focolare, una buona locanda. Per questo resto. Soprattutto per questo.", depth = "natural" },
	},
	["rel.npc.attraction.near"] = {
		"Le mani non sanno cosa fare mentre parliamo. Un tempo lo sapevano.",
		{ "Ferme, le mani. Di' qualcosa di normale. Qualsiasi cosa normale.", depth = "natural" },
	},
	["rel.npc.attraction.trainer"] = {
		"Sono {g:venuto|venuta} qui per imparare. A metà lezione dimentico sempre cosa.",
		{ "Concentrati. La lezione. Solo la lezione.", depth = "natural" },
	},
	["rel.npc.favour.close"] = {
		"Quando una persona così vicina chiede così poco, quel poco conta di più.",
		{ "Poca cosa, quel che mi ha chiesto. Voglio mantenerla.", depth = "natural" },
	},
	["rel.npc.favour.innkeeper"] = {
		"Dietro questa porta mi è stato chiesto qualcosa, e non l'ho ancora fatto. Il benvenuto ha un po' il sapore di un promemoria.",
		{ "Devo ancora una piccola cosa a chi abita dietro questa porta.", depth = "natural" },
	},
	["rel.npc.favour.merchant"] = {
		"Un piccolo favore, chiesto al banco tra una moneta e l'altra. Continuo a ripromettermi di occuparmene.",
		{ "Giusto. Quel favore. Presto. Prima di contare un'altra moneta qui.", depth = "natural" },
	},
	["rel.npc.met.close"] = {
		"Un mese fa, o forse più, questo era un volto qualsiasi dietro una porta qualsiasi. Non saprei dire in quale giorno abbia smesso di esserlo.",
		{ "Un volto qualsiasi dietro una porta, un tempo. Ora fatico a crederci.", depth = "natural" },
		{ "Ci fu un giorno in cui passavo davanti a questa porta senza pensarci; ora non saprei ritrovarlo, quel giorno, nemmeno cercandolo lungo tutta la strada.", depth = "elevated" },
	},
	["rel.npc.met.cold"] = {
		"Sono settimane che conosco questi occhi, e ogni settimana li ha resi più difficili da guardare. Conoscersi da tanto non vuol dire essere i benvenuti.",
		{ "Una lunga conoscenza. Senza un solo sguardo gentile.", depth = "natural" },
	},
	["rel.npc.met.dawn"] = {
		"Il nostro primo incontro fu all'alba, con il sonno ancora negli occhi di entrambi. Certe conoscenze cominciano oneste, così.",
		{ "Era l'alba, la prima volta. Per me questo resta un volto del mattino.", depth = "natural" },
	},
	["rel.npc.met.dusk"] = {
		"La prima volta che ho sentito questa voce era il crepuscolo, e il giorno lasciava la presa. Certi volti arrivano con la sera e se la tengono.",
		{ "Il crepuscolo, la prima volta. Da allora ogni incontro mi sembra un po' più mattiniero.", depth = "natural" },
	},
	["rel.npc.met.fog"] = {
		"Nebbia, il giorno del primo incontro. Ho tirato dritto senza accorgermi di nessuno, e sono {g:dovuto|dovuta} tornare indietro.",
		{ "Nella nebbia, la prima volta. Mezzo volto, all'inizio. Il resto è venuto dopo.", depth = "natural" },
	},
	["rel.npc.met.guard"] = {
		"Questa guardia mi ha {g:conosciuto|conosciuta} quando ero {g:così inesperto|così inesperta} da chiedere la strada due volte. Ora mi tocca un cenno del capo, e niente indicazioni.",
		{ "Mi conosceva quando non valeva nemmeno la pena di fermarmi.", depth = "natural" },
	},
	["rel.npc.met.merchant"] = {
		"Un tempo, a questo banco, contavo le monete due volte prima di ogni acquisto. Chi vendeva faceva finta di non vedere. Non l'ho dimenticato.",
		{ "Avevo meno monete, la prima volta che sono {g:passato|passata} di qui.", depth = "natural" },
	},
	["rel.npc.met.questgiver"] = {
		"Al primo incontro mi sarei {g:accontentato|accontentata} del compito più piccolo. Da allora i compiti sono cresciuti; spero anch'io.",
		{ "Allora mi andava bene qualsiasi commissione. Adesso no.", depth = "natural" },
	},
	["rel.npc.met.sand"] = {
		"Sabbia nell'aria al primo incontro: ne ho passato metà a strizzare gli occhi. Mi piace pensare di aver fatto miglior figura, poi.",
		{ "Una tempesta di sabbia, la prima volta. Da allora abbiamo visto giorni più limpidi.", depth = "natural" },
	},
	["rel.npc.met.trainer"] = {
		"La prima volta davanti a quest'insegnante reggevo a stento la posizione. Ancora oggi mi guarda i piedi prima del viso.",
		{ "Mi ha insegnato quando non sapevo niente. Spero che si veda.", depth = "natural" },
		{ "Ciò che quest'insegnante mi ha dato l'ho speso per strada e riguadagnato due volte; eppure, ai suoi occhi, resto {g:il novizio|la novizia} del primo giorno.", depth = "elevated" },
	},
	["rel.npc.nickname.bond"] = {
		"C'è chi conosce il mio nome, e una persona che me ne ha dato un altro. So quale terrei.",
		{ "{nickname}. Detto così, è quasi una casa.", depth = "natural" },
	},
	["rel.npc.nickname.guard"] = {
		"\"{nickname}\", con la voce di una guardia, davanti a tutti. Faccio finta che mi dispiaccia.",
		{ "{nickname}. La ronda ha una voce per ognuno. La mia poteva andare peggio.", depth = "natural" },
	},
	["rel.npc.nickname.innkeeper"] = {
		"Gridato da un capo all'altro della sala, \"{nickname}\" suona meno come un nome e più come un posto che ti aspetta.",
		{ "{nickname}. In questa locanda potrebbe stare inciso sulla mia sedia.", depth = "natural" },
	},
	["rel.npc.nickname.merchant"] = {
		"\"{nickname}\", da dietro il banco, e le monete mi sembrano più leggere in mano, o così mi piace credere.",
		{ "{nickname}. A chi vende costa meno di una moneta di sconto. A me vale di più.", depth = "natural" },
	},
	["rel.npc.nickname.trainer"] = {
		"Quando chi mi insegna dice \"{nickname}\", è mezzo complimento e mezzo avvertimento. Ho imparato a sentirli entrambi.",
		{ "{nickname}, mi chiama. Di solito subito prima di una correzione.", depth = "natural" },
	},
	["rel.npc.oath.close"] = {
		"Il legame regge ancora, chissà come, dopo il giuramento infranto. La gentilezza può essere più dura da guardare in faccia della rabbia.",
		{ "Ancora un sorriso. Non l'ho meritato, non di nuovo.", depth = "natural" },
		{ "Ho mancato alla parola con chi ancora mi saluta con calore; quel calore è un debito che nessuna moneta salda, e me lo porto dentro a ogni visita.", depth = "elevated" },
	},
	["rel.npc.oath.cold"] = {
		"Qui si è infranto un giuramento, e questo è ciò che ci cresce sopra: un saluto freddo, e silenzi più freddi ancora.",
		{ "L'ho infranto io. Questo è il prezzo, ed è giusto.", depth = "natural" },
	},
	["rel.npc.oath.guard"] = {
		"Una guardia ricorda i volti per mestiere. Questa ricorda il mio, e il giuramento che ci andava insieme.",
		{ "L'occhio di chi fa la guardia e sa cosa ho fatto.", depth = "natural" },
	},
	["rel.npc.oath.here.guard"] = {
		"Al cambio della guardia si passano tutto. Il mio giuramento infranto avrà già fatto il giro.",
		{ "Le guardie parlano. Ne sono {g:sicuro|sicura}.", depth = "natural" },
	},
	["rel.npc.oath.here.innkeeper"] = {
		"Nelle locande le voci arrivano più lontano che altrove. Chissà cosa si è sentito dire, al bancone, del giuramento che ho infranto.",
		{ "Ogni voce del paese passa da una locanda. Anche quella.", depth = "natural" },
	},
	["rel.npc.promise.again"] = {
		"Un'altra promessa, proprio qui, dove una l'ho già infranta. Si staranno chiedendo se questa reggerà. Anch'io.",
		{ "Di nuovo la mia parola. Qui vale meno di un tempo.", depth = "natural" },
	},
	["rel.npc.promise.friend"] = {
		"Uno sconosciuto potrei farlo aspettare. Chi mi è amico e aspetta la mia parola pesa in un altro modo.",
		{ "Si fida che lo porti a termine. Farò meglio a farlo.", depth = "natural" },
	},
	["rel.npc.promise.long"] = {
		"Un mese, o quasi, da quando ho dato la mia parola qui. A un certo punto un ritardo diventa una risposta.",
		{ "Trenta giorni. Se smettono di chiedere, sarà peggio.", depth = "natural" },
	},
	["rel.npc.promise.questgiver"] = {
		"Il compito che ho preso da qui è ancora con me, piegato in quattro, come se così pesasse meno.",
		{ "Me lo chiederanno. Dovrò rispondere: non ancora.", depth = "natural" },
	},
	["rel.npc.rival.innkeeper"] = {
		"Due locande, {g:un solo viaggiatore|una sola viaggiatrice}. Dovevo saperlo che qui la birra avrebbe avuto il sapore del confronto.",
		{ "Sa a quale altro focolare mi siedo. Chi tiene una locanda lo sa sempre.", depth = "natural" },
	},
	["rel.npc.rival.ironic"] = {
		"Un sorriso con una domanda piegata dentro: e come ti tratta la concorrenza? Lascio correre.",
		{ "Una presa in giro, niente di più. La accetto.", depth = "natural" },
	},
	["rel.npc.rival.jealous"] = {
		"Il benvenuto ha uno spigolo. L'amicizia a una porta si nota alla porta accanto.",
		{ "Qualcuno, a questa porta, ha contato le mie visite a un'altra.", depth = "natural" },
	},
	["rel.npc.town.champion"] = {
		"{title}. Lo dicono come se fosse sempre stato così. Ricordo quando qui nessuno conosceva il mio nome.",
		{ "{title}. Un nome grande da portare. Ci sto ancora crescendo dentro.", depth = "natural" },
	},
	["rel.npc.town.title.guard"] = {
		"Anche le guardie, qui, mi conoscono come {title}. Le guardie si fidano tardi: per questo conta.",
		{ "{title}. Lo dicono perfino le guardie. Quasi sempre senza ridere.", depth = "natural" },
	},
	["rel.npc.town.title.innkeeper"] = {
		"In questa locanda, {title} paga la birra come tutti, e glielo si ricorda a voce alta. Giusto così.",
		{ "{title}, e la birra la pago ancora. Com'è giusto.", depth = "natural" },
	},
	["rel.npc.town.word.bad.guard"] = {
		"Una guardia con cui non ho mai parlato, e già quell'occhio che misura. Ciò che ha sentito su di me è passato dal cancello prima di me.",
		{ "Mai vista prima. Eppure il suo occhio dice che di me ha sentito parlare.", depth = "natural" },
	},
	["rel.npc.town.word.bad.innkeeper"] = {
		"Qui il benvenuto è cauto, e le locande di solito non accolgono così. Le chiacchiere su di me non sono state gentili.",
		{ "Anche alla locanda hanno sentito. Ovvio.", depth = "natural" },
	},
	["rel.npc.town.word.good.innkeeper"] = {
		"Qui il sorriso è arrivato prima del mio nome. Qualcuno in paese ha raccontato storie su di me, e gentili.",
		{ "La voce su di me è arrivata prima. Buona, a giudicare da quel sorriso.", depth = "natural" },
	},
	["rel.npc.town.word.good.merchant"] = {
		"Un banco nuovo, e già lo sguardo riservato ai clienti abituali. Il mio buon nome è venuto a fare la spesa prima di me.",
		{ "Il mio nome è entrato prima di me. Pare speso bene.", depth = "natural" },
	},
	["rel.npc.vowed.bond"] = {
		"Nessuno sa cosa ho promesso in silenzio, e questa persona meno di tutti. Certi segreti sono una specie di riparo.",
		{ "Ancora qui. Ancora fedele a quella promessa.", depth = "natural" },
	},
	["rel.npc.vowed.guard"] = {
		"Monta la guardia, e non immagina che qualcuno, in silenzio, la monti a sua volta.",
		{ "Abbi cura di te. Non lo dirò ad alta voce.", depth = "natural" },
	},
	["rel.npc.vowed.innkeeper"] = {
		"Una candela alla finestra, e mi concedo di fingere che sia accesa per me. Una piccola finzione. Me la tengo.",
		{ "Una candela alla finestra. Fra tutte le locande lungo la strada, proprio questa.", depth = "natural" },
	},
	["rel.home.cold"] = {
		"Casa, la chiamano. Il fuoco arde come sempre: è l'accoglienza che si è spenta.",
		{ "La stessa locanda. Una stanza più fredda.", depth = "natural" },
	},
	["rel.home.return"] = {
		"Strade lunghe, e alla fine lo stesso fuoco. Casa è una parola più piccola di come suona, e migliore.",
		{ "Casa. La sedia vicino al fuoco è ancora mia.", depth = "natural" },
	},
	["rel.npc.foe.attacked"] = {
		"Non ha dimenticato il giorno in cui ho colpito per {g:primo|prima}. Nemmeno io.",
		{ "Ricorda. Certo che ricorda.", depth = "natural" },
	},
	["rel.npc.foe.host"] = {
		"Questo focolare mi aveva accolto. Ho risposto con il ferro, e da allora qui il fuoco è freddo.",
		{ "Nessuna porta si chiude più forte di quella che hai rotto.", depth = "natural" },
	},
	["rel.npc.foe.killed"] = {
		"Una volta ho messo fine ai suoi giorni. Chi sta qui ora mi guarda come se ricordasse.",
		{ "Certi volti non dovrebbero guardarti due volte.", depth = "natural" },
	},
	["rel.npc.town.betrayed"] = {
		"Qui la voce di ciò che ho fatto ha fatto il giro. Anche i più gentili ora mi misurano.",
		{ "Abbassano la voce quando passo.", depth = "natural" },
	},
	["rel.town.foe"] = {
		"Qui non mi hanno dimenticato, e i motivi glieli ho dati io.",
		{ "Ogni guardia qui conosce la mia faccia.", depth = "natural" },
	},
	-- N8 (#220, #125): the companion pet ({pet}), grief for the pet, an NPC ({other}) and a group member ({other})
	["rel.ally.fall"] = {
		"{other} è a terra. Segno il punto e vado avanti: lo si deve ai morti, e ancor più ai vivi.",
		{ "{other}, a terra. Avanti.", depth = "natural" },
	},
	["rel.ally.fall.deep"] = {
		"Uno di noi è caduto nel buio di questo luogo. Queste pietre tengono un conto lungo.",
		"Un altro nome che queste sale terranno. Almeno io lo porterò fuori di qui.",
	},
	["rel.ally.fall.friend"] = {
		"Non {other}. Avevamo giurato di guardarci le spalle, e io ho distolto lo sguardo.",
		"{other}, no. Alzati. Ti prego, alzati.",
	},
	["rel.ally.fall.stranger"] = {
		"Del nome di {other} conoscevo appena il suono. Adesso la strada non me lo lascerà dimenticare.",
		"{other} ha combattuto al mio fianco per un'ora, e al mio fianco ha trovato la fine. Anche questa è una parentela.",
	},
	["rel.grief.npc"] = {
		"{other}. Conoscevo quella voce, quel volto. Ora c'è solo l'immobilità, e quello che ricordo.",
		{ "{other}... non può essere.", depth = "natural" },
	},
	["rel.grief.npc.close"] = {
		"Non {other}. Fra tutti i volti di questa strada, non quello.",
		"{other}. Continuavo a ripromettermi di tornare prima.",
	},
	["rel.grief.npc.innkeeper"] = {
		"Il focolare di {other} arderà per qualcun altro, ora. Devo a quel fuoco più notti di quante ne possa contare.",
		"Niente più benvenuti caldi da {other}. La strada si è fatta più fredda.",
	},
	["rel.grief.pet.beast"] = {
		"{pet} non si muove. Mi inginocchio, e il mondo va avanti intorno a noi come se niente fosse.",
		{ "No. Non {pet}.", depth = "natural" },
	},
	["rel.grief.pet.bonded"] = {
		"Tante strade con {pet} alle calcagna. Il silenzio dove c'erano quei passi è la cosa più forte, qui.",
		"{pet} ha percorso con me ogni strada. Questa è la prima che percorrerò da {g:solo|sola}.",
	},
	["rel.grief.pet.demon"] = {
		"{pet} non c'è più: il buio se l'è ripreso. Non dovrei rimpiangere una creatura vincolata. Un poco la rimpiango.",
		"Patto o non patto, {pet} stava tra me e il pericolo. Qualcosa vorrà pur dire.",
	},
	["rel.pet.bond.bonded"] = {
		"{pet} e io. Due nomi, una strada. Non saprei più dire chi dei due segue l'altro.",
		"Non c'è parola per ciò che {pet} è per me, ormai. Compagno non basta.",
	},
	["rel.pet.bond.demon"] = {
		"Persino {pet} esita, ormai, prima di deridermi. Da un demone è quasi affetto.",
		"{pet} mi chiama ancora {g:padrone|padrona} storcendo la bocca. Ultimamente la storce di meno.",
	},
	["rel.pet.bond.familiar"] = {
		"{pet} non aspetta più il comando. Sa già dove sto andando.",
		"{pet} e io abbiamo trovato un ritmo. Nessuno dei due deve più voltarsi.",
	},
	["rel.pet.bond.trusted"] = {
		"Con {pet} di guardia dormo meglio. Quando è successo?",
		"Se {pet} si ferma, mi fermo. Ho imparato a fidarmi di ciò che sente prima di me.",
	},
	["rel.pet.call.beast"] = {
		"Un fischio, e {pet} è al mio fianco. Qualcosa, a questo mondo, risponde ancora quando lo chiami.",
		{ "Eccoti, {pet}.", depth = "natural" },
	},
	["rel.pet.call.bonded"] = {
		"Di nuovo {pet}, e la strada sembra più corta. Abbiamo camminato troppo insieme per chiamarlo servizio.",
		"{pet} si mette al mio fianco senza un rumore, come se non fosse passato nemmeno un giorno.",
	},
	["rel.pet.call.demon"] = {
		"Il cerchio si apre e {pet} ne esce, con l'aria di chi si annoia già. Un patto è un patto.",
		{ "{pet}. Un vincolo che non piace a nessuno dei due.", depth = "natural" },
	},
	["rel.pet.call.new"] = {
		"Ci studiamo a vicenda, {pet} e io: stiamo ancora imparando a conoscerci.",
		"Un nome nuovo da imparare, {pet}. Un passo nuovo da seguire.",
	},
	["rel.pet.dismiss.beast"] = {
		"{pet} sparisce tra i cespugli. Il silenzio che lascia è un po' troppo largo.",
		{ "Riposa, {pet}.", depth = "natural" },
	},
	["rel.pet.dismiss.demon"] = {
		"{pet} svanisce là dove aspetta tra un'evocazione e l'altra. Non chiedo dove.",
		"{pet} se ne va con un ultimo ghigno. L'aria è più leggera, e chissà perché più vuota.",
	},
	["rel.pet.mood.content"] = {
		"{pet} si calma. Una pancia piena aggiusta più cose di quanto si creda.",
		"{pet} ha smesso di brontolare. La pace torna, un pasto alla volta.",
	},
	["rel.pet.mood.happy"] = {
		"{pet} è di ottimo umore. Difficile restare cupi con quella gioia che saltella accanto.",
		"Oggi {pet} ha l'aria di chi è soddisfatto di sé. Giusto: lo sono anch'io.",
	},
	["rel.pet.mood.unhappy"] = {
		"{pet} ha il muso. Pasti in ritardo e troppa fatica: lo terrei anch'io.",
		"{pet} mi lancia uno sguardo che conosco fin troppo bene. Sono in debito, e lo sa.",
	},
	-- N9 (#221), second part: hostility (N1: grudge, hatred, betrayal, the other faction's town, guest-right, coming home),
	-- the companion pet and grief (N8), by role and disposition where the engine reads them. The inner voice only.
	["rel.ally.fall.devout"] = {
		"Qualunque cosa vegli sui caduti, trovi presto {other}. Faccio una preghiera breve, e ne penso ogni parola.",
		{ "Va' in pace, {other}. Che qualcuno ti trovi.", depth = "natural" },
	},
	["rel.ally.fall.night"] = {
		"{other} è a terra, e la notte non si è fermata nemmeno un attimo. Me lo ricorderò io, visto che la notte no.",
		{ "{other}. Una notte buia, e ora di più.", depth = "natural" },
	},
	["rel.ally.fall.rival"] = {
		"{other}, a terra. Litigavamo per ogni preda. Questa la cederei volentieri, pur di sentire ancora la lite.",
		{ "Alzati, {other}. Mi devi ancora una lite.", depth = "natural" },
	},
	["rel.ally.fall.stoic"] = {
		"La caduta di {other} è stata degna. Lo dirò dopo, a chi lo chiederà. Ora c'è da fare.",
		{ "{other}. Dopo. Ora, il da farsi.", depth = "natural" },
	},
	["rel.grief.npc.friend"] = {
		"{other} era uno dei volti che rendevano familiare questo paese. Mi è appena diventato un po' più estraneo.",
		{ "{other}. Un'amicizia in meno lungo la strada.", depth = "natural" },
	},
	["rel.grief.npc.guard"] = {
		"{other} stava a questo posto di guardia ogni volta che passavo. Il posto è ancora qui.",
		{ "Il posto di {other}, vuoto.", depth = "natural" },
	},
	["rel.grief.npc.merchant"] = {
		"{other} aveva sempre una parola per me oltre il banco, e qualche notizia che non avevo chiesto. Il banco è molto silenzioso.",
		{ "{other}. Il banco tace.", depth = "natural" },
	},
	["rel.grief.npc.questgiver"] = {
		"{other} mi ha mandato per tante strade. Questa, alla fine, non me l'aspettavo.",
		{ "{other}. Niente più incarichi. Niente più di niente.", depth = "natural" },
	},
	["rel.grief.npc.trainer"] = {
		"Tutto ciò che {other} mi ha insegnato è ancora nelle mie mani. Sarà così che ne terrò il ricordo.",
		{ "{other}. Le lezioni restano.", depth = "natural" },
	},
	["rel.grief.npc.vowed"] = {
		"Avevo dato la mia parola a {other}, in silenzio, senza mai dirla ad alta voce. Ora non c'è più nessuno a cui dirla.",
		{ "{other}. Non te l'ho mai detto.", depth = "natural" },
	},
	["rel.grief.pet.new"] = {
		"Avevo appena imparato il nome di {pet}. Meritava più strade di quelle che gli ho dato.",
		{ "Troppo presto, {pet}. Davvero troppo presto.", depth = "natural" },
	},
	["rel.grief.pet.stoic"] = {
		"Depongo {pet} dove la terra è morbida, e non dico nulla. Non c'è niente da dire che non sapesse già.",
		{ "Riposa, {pet}. Nient'altro.", depth = "natural" },
	},
	["rel.grief.pet.trusted"] = {
		"{pet} vegliava perché io potessi dormire. Ora non c'è più nessuno a vegliare, e dubito che dormirò molto.",
		{ "{pet}. Chi veglia, adesso?", depth = "natural" },
	},
	["rel.home.cold.stoic"] = {
		"Mi sono {g:legato|legata} a questo luogo, e poi l'ho tradito. La porta si apre ancora. È tutto ciò che fa, ormai.",
		{ "La porta si apre. Nient'altro.", depth = "natural" },
	},
	["rel.home.return.night"] = {
		"È tardi, e la casa dorme. Qualcuno ha lasciato lo stesso una candela sulle scale, come si fa per chi è atteso.",
		{ "Una candela sulle scale. Ero {g:atteso|attesa}, dunque.", depth = "natural" },
	},
	["rel.home.return.rain"] = {
		"Pioggia sulle strade per tutto il viaggio, e adesso pioggia sulle imposte. Tutta la differenza è qui, ed è tutto.",
		{ "Fuori la pioggia. Dentro il fuoco. Casa.", depth = "natural" },
	},
	["rel.home.return.weary"] = {
		"Non so più quanto sono {g:stato|stata} via. I miei stivali sì: hanno riconosciuto questa soglia prima di me.",
		{ "Gli stivali hanno trovato la strada. Come sempre.", depth = "natural" },
	},
	["rel.npc.foe.attacked.guard"] = {
		"Quella guardia mi fissa le mani, non la faccia. Gliel'ho insegnato io, il giorno in cui ho alzato l'arma.",
		{ "Occhi sulle mie mani. Giusto così.", depth = "natural" },
	},
	["rel.npc.foe.attacked.merchant"] = {
		"Ora contano le mie monete due volte, come se fra l'argento potesse esserci nascosta una lama.",
		{ "Ogni moneta contata due volte. Me lo sono meritato.", depth = "natural" },
	},
	["rel.npc.foe.attacked.questgiver"] = {
		"Hanno ancora lavoro da far fare. Solo, preferirebbero che lo facesse chiunque altro.",
		{ "Chiunque, ma non io: glielo si legge in faccia.", depth = "natural" },
	},
	["rel.npc.foe.attacked.trainer"] = {
		"Chi mi ha insegnato il mestiere. Una volta gliel'ho rivolto contro, e non ha dimenticato di chi fosse la lezione.",
		"Ogni lezione avuta qui l'ho ripagata con un colpo. Certi maestri tengono i conti meglio di altri.",
	},
	["rel.npc.foe.feared"] = {
		"Sussulta quando porto la mano alla borsa. L'odio lo potrei sopportare. Questo è peggio.",
		{ "Sussulta. Opera mia.", depth = "natural" },
	},
	["rel.npc.foe.hated"] = {
		"Qui non resta calore da riconquistare. Solo quello sguardo, fermo come una lama sguainata, e non scommetterei che si addolcisca.",
		{ "Odio puro. Me lo sono guadagnato tutto.", depth = "natural" },
	},
	["rel.npc.foe.host.stoic"] = {
		"Il diritto dell'ospite è più antico di ogni città. L'ho infranto sotto questo tetto, e nessuna moneta ricompra una soglia.",
		{ "Una soglia infranta resta infranta.", depth = "natural" },
	},
	["rel.npc.foe.killed.ironic"] = {
		"In piedi, e mi guarda ancora come un creditore. La morte, evidentemente, non ha attecchito.",
		{ "Di nuovo in piedi. E ancora con il muso.", depth = "natural" },
	},
	["rel.npc.town.betrayed.friend"] = {
		"Mi saluta ancora, e lo pensa davvero. Ma abbassa la voce per farlo, come se qui l'amicizia con me fosse una cosa da nascondere.",
		{ "Ancora un'amicizia. Più sommessa.", depth = "natural" },
	},
	["rel.npc.town.betrayed.guard"] = {
		"Le guardie qui hanno saputo ciò che ho fatto. Ogni cenno arriva con un battito di ritardo.",
		{ "Un cenno in ritardo. Sanno.", depth = "natural" },
	},
	["rel.npc.town.betrayed.innkeeper"] = {
		"L'oste versa ancora. Le chiacchiere che venivano col boccale si sono fermate, e tutta la sala le sente fermarsi.",
		{ "La stessa birra. Niente chiacchiere.", depth = "natural" },
	},
	["rel.npc.town.betrayed.merchant"] = {
		"Le mie monete qui valgono ancora. La mia parola, a quanto pare, no: mi guardano come se potessi portarmi via il banco.",
		{ "Le monete sì. La parola no.", depth = "natural" },
	},
	["rel.pet.bond.familiar.demon"] = {
		"{pet} ha smesso di saggiare i limiti del vincolo ogni ora. Adesso lo fa un'ora sì e una no. Progressi.",
		{ "{pet} tiene meno il broncio. A malapena.", depth = "natural" },
	},
	["rel.pet.call.rain"] = {
		"{pet} si scrolla la pioggia di dosso, tutta su di me: sospetto che il saluto sia questo.",
		{ "Pioggia su {pet}, e adesso anche su di me.", depth = "natural" },
	},
	["rel.pet.call.trusted"] = {
		"{pet} arriva al primo richiamo e prende il fianco senza che glielo dica. L'abbiamo fatto abbastanza volte.",
		{ "{pet}. Il fianco. Bene.", depth = "natural" },
	},
	["rel.pet.call.unhappy"] = {
		"{pet} arriva, ma con calma, e guarda il mio zaino come a dire esattamente dov'è il cibo.",
		{ "Sì, {pet}. Prima il cibo.", depth = "natural" },
	},
	["rel.pet.dismiss.bonded"] = {
		"Mando via {pet}, e per qualche passo tengo ancora un'andatura che non mi cammina più accanto.",
		{ "Va', {pet}. Me la caverò. Più o meno.", depth = "natural" },
	},
	["rel.pet.dismiss.night"] = {
		"{pet} si scioglie nel buio, e la notte attorno a me sembra più grande di una misura.",
		{ "Riposa, {pet}. Stanotte la guardia tocca a me.", depth = "natural" },
	},
	["rel.pet.mood.happy.bonded"] = {
		"{pet} si appoggia con tutto il peso alla mia gamba. Dopo tutte queste strade, lo dice ancora così.",
		{ "{pet} che mi si appoggia addosso. Non mi dispiace.", depth = "natural" },
	},
	["rel.pet.mood.unhappy.new"] = {
		"Fra me e {pet} non è cominciata bene. Un pasto pieno e un po' di pazienza: la fiducia comincia così.",
		{ "Non è cominciata bene, {pet}. Rimedieremo.", depth = "natural" },
	},
	["rel.town.foe.ironic"] = {
		"Ah, questo posto. Qui ho lasciato il segno. Diversi segni, quasi tutti sulle loro guardie.",
		{ "Si ricordano di me con affetto. E con le lance.", depth = "natural" },
	},
	["rel.town.foe.night"] = {
		"Stanotte le loro torce ardono lungo le mura, e so che almeno una è accesa pensando a me.",
		{ "Torce sulle mura. Qualcuna per me.", depth = "natural" },
	},
	["faction.alliance.relation_player.01"] = {
		"{other}, sotto la mia stessa bandiera. Qui fuori è già mezza amicizia, e l'altra metà ce la siamo guadagnata.",
		"Una persona amica, e che marcia sotto la nostra bandiera per giunta. Due buone ragioni per rallegrarmi, e le conto tutte e due.",
		"{other}. Stessa bandiera, stesse strade. Fa piacere vedere una faccia amica.",
	},
	["faction.horde.relation_player.01"] = {
		"{other}. L'Orda è grande e, a occhio, non tutta è amica. Su questo nome invece posso contare.",
		"Fra tante facce dell'Orda, poche me le lascerei alle spalle senza tenerle d'occhio. {other} è una di quelle.",
		"{other}. Bene. Un paio d'occhi in meno da sorvegliare.",
	},
	["race.dwarf.relation_player.001"] = {
		"{other}. Nella memoria di un nano un debito si incide come una runa nella pietra. Questo è ancora lì, netto come il primo giorno.",
		"Ecco {other}. Ho un debito, e un nano tiene quel genere di conti più a lungo di qualsiasi registro.",
		"{other}. Un debito non scordato. Nemmeno la montagna scorda i suoi.",
	},
	["race.dwarf.thanks.001"] = {
		"Grazie. Se un giorno passi da Forgiardente, il primo giro lo offro io.",
		"Ti sono {g:obbligato|obbligata}. I nani tengono conti lunghi, e il tuo nome è appena entrato nella colonna buona.",
	},
	["race.gnome.relation_player.001"] = {
		"{other}. Una persona a cui passerei la chiave inglese mentre ho le dita dentro il macchinario.",
		"Ecco {other}. Nel mio mestiere si direbbe un pezzo portante: se lo togli, cede tutto.",
		"{other}. I pezzi affidabili sono rari. Le persone affidabili, ancora di più.",
	},
	["race.gnome.thanks.001"] = {
		"Grazie! Se mai ti servisse qualcosa da costruire, da aggiustare o da far saltare un pochino in aria, chiedi di me.",
		"Molto gentile! Ti farei una medaglia, ma ho finito l'ottone.",
	},
	["race.human.relation_player.001"] = {
		"{other}! Un volto amico, come una finestra accesa su una strada lunga.",
		"Ecco {other}. Certe persone fanno sembrare qualunque città un villaggio dove conosci tutti.",
		"{other}. Bene. La giornata è appena diventata un po' più simile a casa.",
	},
	["race.human.thanks.001"] = {
		"Grazie. Da dove vengo io, per una cosa così ti inviteremmo a cena.",
		"Grazie davvero. È una gentilezza che passerò a chi ne avrà bisogno dopo di me.",
	},
	["race.nightelf.relation_player.001"] = {
		"{other}. Un tempo le amicizie mi sembravano foreste. Ora so che somigliano più alle stagioni, e questa intendo godermela.",
		"Ecco {other}. Ho imparato a guardare gli amici con attenzione: il tempo è più breve per tutti, rispetto a una volta.",
		"{other}. Un volto caro va imparato a memoria, anche da chi ha una memoria lunga come la mia.",
	},
	["race.nightelf.thanks.001"] = {
		"Grazie. Il mio popolo ha la memoria lunga; questo resterà nella mia.",
		"Ti ringrazio. Che la foresta ti ricambi dove io non posso.",
	},
	["race.orc.relation_player.001"] = {
		"{other}. Starei spalla a spalla con questa persona, qualsiasi giorno, in qualsiasi battaglia.",
		"Ecco {other}. Per il mio popolo un amico è qualcuno con cui divideresti l'ultima acqua. Io la dividerei.",
		"{other}. Bene. Un'altra lama accanto al fuoco a cui affiderei la schiena.",
	},
	["race.orc.thanks.001"] = {
		"Grazie. Un orco non dimentica un debito così.",
		"Hai la mia gratitudine, e il mio braccio, ogni volta che ti servirà.",
	},
	["race.scourge.relation_player.001"] = {
		"{other}. Una delle poche persone che non hanno mai fatto un passo indietro quando mi avvicinavo.",
		"Ecco {other}. Mi guarda e vede una persona. Questo non lo dimentico.",
		"{other}. Bene. Qualcuno che non ha bisogno che io sia {g:vivo|viva}.",
	},
	["race.scourge.thanks.001"] = {
		"Grazie. È passato tanto tempo da quando qualcuno mi ha {g:aiutato|aiutata} senza trattenere il fiato.",
		"Grazie. Non sono molti quelli che darebbero una mano a un morto.",
	},
	["race.tauren.relation_player.001"] = {
		"{other}. Certe persone sono come una buona pozza d'acqua: ti ricordi sempre dove si trovano.",
		"Ecco {other}. Dalle mie parti, a un amico così si mette una scodella accanto al fuoco prima ancora che chieda.",
		"{other}. Le spalle mi si sciolgono, come accanto a un focolare conosciuto.",
	},
	["race.tauren.thanks.001"] = {
		"Grazie. Il mio popolo direbbe che hai fatto un tratto di strada nelle mie orme.",
		"Hai la mia gratitudine, e anche la Madre Terra ha visto.",
	},
	["race.troll.relation_player.001"] = {
		"{other}. A questa persona lascerei la mia roba mentre dormo.",
		"Ah, {other}. I vecchi hanno una parola per gente così: quelli con cui dividi il fuoco.",
		"{other}. Lì i Loa mi hanno mandato qualcuno di buono.",
	},
	["race.troll.thanks.001"] = {
		"Grazie. Hai la gratitudine di un troll: dura più di quasi tutte le altre.",
		"Non lo dimentico. I troll ricordano chi ha aiutato e chi ha riso.",
	},
	["faction.alliance.relation_player.w02.01"] = {
		"{other}. Se l'Alleanza si chiedesse di cosa è fatta, indicherei persone così.",
		"Ecco {other}. Re e consigli fanno l'Alleanza sulla carta; persone così la fanno sulla strada.",
	},
	["faction.horde.relation_player.w02.01"] = {
		"{other}. Nell'Orda, una delle facce che chiamerei per nome in qualunque accampamento, e con piacere.",
		"Ecco {other}. L'Orda è fatta di molti popoli; l'amicizia è il modo in cui diventano uno.",
	},
	["race.dwarf.relation_player.w02.01"] = {
		"{other}! A una persona così darei l'ultimo barile, e un nano non lo dice alla leggera.",
		"Ecco {other}. Certe amicizie sono come una buona muratura: la malta non si vede, e tengono.",
	},
	["race.gnome.relation_player.w02.01"] = {
		"{other}! La mia giornata ha appena ricevuto un piccolo, piacevole aggiornamento.",
		"Ecco {other}. Certe persone sono come un cardine ben oliato: intorno a loro tutto gira più liscio.",
	},
	["race.human.relation_player.w02.01"] = {
		"{other}. Sono ancora in debito, e intendo saldarlo come si deve, non con un cenno di passaggio.",
		"Ecco {other}. Certi debiti si portano volentieri, perché ricordano che qualcuno si è fermato per te.",
	},
	["race.nightelf.relation_player.w02.01"] = {
		"{other}. Certa fiducia cresce come un albero: lentamente, e poi niente la smuove.",
		"Ecco {other}. Lascerei a questa persona il turno di guardia mentre dormo, e dormirei bene.",
	},
	["race.orc.relation_player.w02.01"] = {
		"{other}. Ho un debito con questa persona, e un orco non lascia raffreddare i debiti.",
		"Ecco {other}. Qualcuno che mi è rimasto accanto. Io ricordo chi resta e chi scappa.",
	},
	["race.scourge.relation_player.w02.01"] = {
		"{other}. Qualcuno che sono {g:contento|contenta} di vedere. Avevo dimenticato che quella sensazione avesse un sapore.",
		"Ecco {other}. Qualunque cosa abbia perso morendo, questo genere di gioia non era nel mucchio.",
	},
	["race.tauren.relation_player.w02.01"] = {
		"{other}! Per dividere un fuoco con una persona così farei tanta strada.",
		"Ecco {other}. Certi legami sono come i sentieri più antichi: scavati a fondo, e facili da seguire.",
	},
	["race.troll.relation_player.w02.01"] = {
		"{other}! Ecco una persona amica. La giornata si è appena fatta più leggera.",
		"Ah, {other}. La brava gente è rara come l'acqua dolce in una lunga traversata.",
	},
	["ally_death.w04.001"] = {
		"{other} è a terra. Il lutto si fa sulla via del ritorno, non prima.",
		"{other}. L'ho visto, ed ero troppo {g:lontano|lontana}. Occhi avanti.",
		"Adesso non c'è spazio per questo. Lo troverò dopo, {other}. Te lo prometto.",
	},
	["ally_death.w04.002"] = {
		"C'è un vuoto dove stava {other}. Lo sentiamo tutti nello stesso istante.",
		"Uno di meno. Gli altri stringono le file senza che serva dirlo.",
		"Il posto di {other} è vuoto. Lo sguardo continua a tornarci.",
	},
	["ally_death.w04.003"] = {
		"A terra non vuol dire perduto. Non sempre. Non ancora, {other}.",
		"In questo mondo chi cade a volte si rialza. Ci conto, {other}.",
		"Resisti, {other}, ovunque tu sia. Ci sono strade per tornare.",
	},
	["ally_death.w04.004"] = {
		"Potevo esserci io. La prossima volta, magari, ci sarò.",
		"Oggi {other}. Domani chi? Meglio non finire il pensiero.",
		"Sceglie senza guardare. Stavolta {other}. La prossima, chiunque.",
	},
	["ally_death.w04.005"] = {
		"Dovevo essere più {g:vicino|vicina}. Lo sarò per gli altri.",
		"Non ho potuto coprire {other}. Posso coprire chi resta.",
		"Troppo tardi per {other}. Non per gli altri. Muoviti.",
	},
	["ally_death.w04.006"] = {
		"Quello che ha fatto questo a {other} è roba mia.",
		"Quello era {other}. Qualcuno ne risponderà.",
		"Questa la sistemo io per te, {other}. Subito.",
	},
	["pet_call.w04.001"] = {
		"{pet} si scuote di dosso il sonno e mi raggiunge.",
		"Ecco {pet}, che mi squadra come se fossi io a tornare da chissà dove.",
		"{pet} arriva con quell'aria: allora, dove si va?",
	},
	["pet_call.w04.002"] = {
		"Di nuovo {pet}. Fingiamo tutti e due che sia una collaborazione.",
		"{pet} squadra il mondo con l'aria di chi aspetta delle scuse. Non ha tutti i torti.",
		"{pet} risponde alla chiamata come un esattore: puntuale e sgradito.",
	},
	["pet_call.w04.003"] = {
		"{pet} è di ottimo umore. Difficile non farsene contagiare.",
		"Di buon umore, {pet}? Almeno uno di noi due lo è.",
		"{pet} arriva con l'aria di chi è soddisfatto di tutto. Avrei da imparare.",
	},
	["pet_dismiss.w04.001"] = {
		"Via, {pet}. Ti chiamo quando mi servi.",
		"Basta così, {pet}. Il prossimo tratto lo faccio da me.",
		"Puoi andare, {pet}. Non allontanarti troppo, ovunque tu vada.",
	},
	["race.dwarf.relation_npc.w08.001"] = {
		"Un mercante che conosco. Un nano ricorda i pesi onesti più a lungo dei nomi, e questi me li ricordo.",
		"Ah, chi si rivede. Tengo il conto di ogni mercante che mi abbia mai rubato sul peso. Questo nome non c'è.",
		"Un banco conosciuto. Bene. Morderò comunque le monete, ma solo per abitudine.",
	},
	["race.dwarf.relation_player.w08.001"] = {
		"{other}. Scenderei in un pozzo buio con questa persona a reggere la corda, senza alzare lo sguardo nemmeno una volta.",
		"Ecco {other}. Certa gente la saggi come la volta di una galleria, bussando a ogni passo. Con questa persona ho smesso di bussare da un pezzo.",
		"{other}. Solida come la roccia viva.",
	},
	["race.dwarf.relation_player.w08.002"] = {
		"{other}! Ecco qualcuno a cui lascerei scegliere il prossimo giro. Detto da {g:un nano|una nana}, è un gran complimento.",
		"Ah, {other}. Certa compagnia va giù come una buona birra scura: liscia, e te ne viene voglia di un'altra.",
		"{other}! Ecco, la giornata è aggiustata.",
	},
	["race.dwarf.relation_player.w08.003"] = {
		"{other}. I nani perdonano piano, se mai perdonano. Io sono ancora dalle parti del «se mai».",
		"Ecco {other}. Prima o poi anche la montagna si consuma, dicono. Il mio rancore è fatto di una pietra migliore.",
		"{other}. Mph.",
	},
	["race.dwarf.relation_player.w08.004"] = {
		"{other}. Sarò cortese, e terrò una mano sullo zaino come i minatori tengono un orecchio sulle travi.",
		"Ecco {other}. Un nano fiuta l'aria cattiva in una galleria. E qualcosa lo sto fiutando adesso.",
	},
	["race.dwarf.relation_player.w08.005"] = {
		"{other}. Qualunque cosa faccia questa persona, io la farò più pesante, più a lungo e lamentandomi di meno.",
		"Ecco {other}. Un rivale è una cote: duro con te, ma buono per il filo.",
		"{other}. Bene. Maniche su.",
	},
	["race.dwarf.relation_player.w08.006"] = {
		"{other}. Abbiamo tenuto la stessa fila con i guai che ci venivano addosso. Tra i nani, questo ti rende quasi parente.",
		"Ecco {other}, che ha combattuto al mio fianco. Dopo una cosa così, a un nano non serve una seconda presentazione.",
	},
	["race.dwarf.relation_player.w08.007"] = {
		"{other}! Ne è passato di tempo. Abbastanza per esaurire una vena e trovarne un'altra.",
		"Ecco {other}, dopo tanto tempo. I nani sono pazienti con le assenze. Quasi sempre.",
	},
	["race.dwarf.relation_player.w08.008"] = {
		"{other}! Sangue della montagna, e per giunta una persona amica. Ci servirà un tavolo: c'è da recuperare.",
		"Ecco {other}. Due nani che si incontrano lontano da Ironforge: è un ritorno a casa, qualunque sia la distanza.",
		"{other}. Stessa montagna, stessa testardaggine. Fa piacere.",
	},
	["race.dwarf.relation_player.w08.009"] = {
		"{other}. Abbiamo già fatto scambi. Mi ricordo il peso di ogni moneta, come qualunque nano.",
		"Ecco {other}. Commercio onesto, se ricordo bene. Da allora ho ricontrollato quei conti, e tornano ancora.",
	},
	["race.dwarf.relation_player.w08.010"] = {
		"{other}. Certe liti fanno presa come la malta. Questa ha fatto presa da un pezzo, e solo un martello la smuoverebbe.",
		"Ecco {other}. La Guerra dei Tre Martelli è finita, dicono i vecchi. Non tutte le faide ne hanno avuto notizia.",
		"{other}. Calma, adesso.",
	},
	["race.human.relation_npc.w08.001"] = {
		"Una persona amica, qui. Gli umani hanno così pochi anni: quelli passati tra amici sono quelli che contano.",
		"Quel volto fa sembrare qualunque città un villaggio dove la campana suona anche per te.",
		"Una persona amica. La mia gente vive poco e ricorda a lungo la gentilezza. Questa me la ricorderò.",
	},
	["race.human.relation_player.w08.001"] = {
		"{other}. Nei villaggi, a una persona così si lasciava la porta accostata. Io lo farei ancora.",
		"Ecco {other}. Lascerei in quelle mani la borsa, lo zaino e la schiena, in quest'ordine di preoccupazione.",
		"{other}. Bene. Posso smettere di contare le uscite.",
	},
	["race.human.relation_player.w08.002"] = {
		"{other}! Se fossimo a Goldshire avrei già due boccali in mano. Consideriamoli versati.",
		"Ecco {other}. La vita è breve, dice la mia gente, e le persone buone si tengono vicine. Questa la tengo vicina.",
	},
	["race.human.relation_player.w08.003"] = {
		"{other}. I sacerdoti dicono che il perdono è una strada da percorrere un po' ogni giorno. Io sono appena fuori dal cancello.",
		"Ecco {other}. Gli umani non vivono abbastanza a lungo per covare un rancore come si deve. Io ci provo lo stesso.",
		"{other}. Il perdono può aspettare.",
	},
	["race.human.relation_player.w08.004"] = {
		"{other}. Affabile, il sorriso sempre pronto. Come metà dei Defias prima di tirare fuori le maschere.",
		"Ecco {other}. Stormwind ti insegna a tenere una mano sulla borsa e l'altra pronta a salutare. Sto facendo tutte e due le cose.",
		"{other}. Occhi aperti.",
	},
	["race.human.relation_player.w08.005"] = {
		"{other}. Non ho i secoli che un elfo dedicherebbe a una rivalità, quindi questa dovrò vincerla in fretta.",
		"Ecco {other}. Niente affila un umano come qualcuno un passo avanti. Non per molto, però.",
	},
	["race.human.relation_player.w08.006"] = {
		"{other}. Abbiamo combattuto nella stessa mischia, schiena contro schiena. I vecchi soldati di Lordaeron dicono che così si diventa parenti. Ci credo.",
		"Ecco {other}. Basta una battaglia insieme e un umano ti ricorda per tutta la vita. Non è una vita lunga, ma è una memoria salda.",
	},
	["race.human.relation_player.w08.007"] = {
		"{other}! Qualche settimana, vero? Per un umano è una stagione intera di notizie. Da dove cominciamo?",
		"Ecco {other}, dopo qualche settimana. Quanto basta per perdersi un matrimonio, un funerale e una guerra, di questi tempi.",
	},
	["race.human.relation_player.w08.008"] = {
		"{other}, dopo tanto tempo. Ogni volta che noi umani ci separiamo, mi chiedo un po' se sia l'ultima. Non stavolta. Bene.",
		"Ecco {other}. Più di un mese senza notizie. Abbastanza per cominciare a provare il peggio; sono {g:contento|contenta} di scordarmi la parte.",
	},
	["race.human.relation_player.w08.009"] = {
		"{other}. C'è già stato un duello tra noi. Io lo racconto ancora come un pareggio, e continuerò a raccontarlo così.",
		"Ecco {other}. Il duello fu leale, i lividi pure. Un umano si ricorda di chi combatte pulito.",
	},
	["race.human.relation_player.w08.010"] = {
		"{other}. La vita è troppo breve per odiare qualcuno, dice la mia gente. Ma non avevano conosciuto questa persona.",
		"Ecco {other}. Passerò in silenzio. Gli umani hanno versato abbastanza sangue per vecchie liti; non sarò {g:il primo|la prima} a versarne qui.",
		"{other}. Non oggi.",
	},
	["race.human.relation_player.w08.011"] = {
		"{other}, l'alleanza che ho scelto io. I regni fanno alleanze su una pergamena e le rompono sulla successiva. La nostra è tenuta meglio.",
		"Ecco {other}. Un'alleanza scelta da me. L'Alleanza potrebbe imparare qualcosa da come ci siamo stretti la mano.",
	},
	["race.nightelf.relation_npc.w08.001"] = {
		"Un volto che conosco. La mia memoria custodisce volti così come il muschio conserva un'impronta: con delicatezza, ma a lungo.",
		"{other}. Ho incontrato tanta gente in così pochi anni, per come contano il tempo i miei; questa persona mi è rimasta.",
		"Conosco questa persona. Gli elfi della notte non dimenticano un volto: fingono di farlo, quando è più gentile.",
	},
	["race.nightelf.relation_player.w08.001"] = {
		"Tra la mia gente certa fiducia impiega un secolo a crescere. Con {other} ne è servito molto meno, e arriva altrettanto in profondità.",
		"Se {other} mi dicesse che un sentiero è sicuro, lo percorrerei senza scivolare nell'ombra nemmeno una volta. Per me, è moltissimo.",
		"Arriva {other}. Volterei le spalle a questa persona nel buio di qualunque foresta, e io le spalle non le volto facilmente.",
	},
	["race.nightelf.relation_player.w08.002"] = {
		"{other}! Ora gli anni scorrono più in fretta per il mio popolo di quanto facessero un tempo. Ragione in più per spenderne qualcuno così.",
		"Il cuore mi si solleva alla vista di {other}, come un gufo che si stacca da un ramo: in silenzio, all'improvviso, senza dubbi.",
		"Ecco {other}. Un tempo, tra la mia gente, le amicizie duravano quanto le foreste. Questa intendo metterla alla prova.",
	},
	["race.nightelf.relation_player.w08.003"] = {
		"Tra la mia gente un debito non si conta in monete né in giorni, ma in quanto a lungo lo si ricorda. Quello che devo a {other} lo si ricorderà molto a lungo.",
		"Devo qualcosa a {other}. Elune vede debiti come questo, dicono le sacerdotesse, e tiene accesa su di essi la sua luce finché non vengono saldati.",
	},
	["race.nightelf.relation_player.w08.004"] = {
		"Ah, {other}. Le orecchie mi tradiscono: si alzano sempre un poco quando arriva qualcuno che mi è caro.",
		"Certe persone rendono più leggeri i lunghi anni, e {other} è una di queste.",
	},
	["race.nightelf.relation_player.w08.005"] = {
		"Un nightsaber non ringhia a ciò di cui diffida: semplicemente, non gli volta mai le spalle. Con {other}, nemmeno io.",
		"Conosco {other}, e le mie orecchie si sono già girate ad ascoltare. La diffidenza di un elfo della notte non fa alcun rumore.",
	},
	["race.nightelf.relation_player.w08.006"] = {
		"Il mio popolo ricorda ancora il tradimento degli Highborne dopo diecimila anni. Io posso ricordare per qualche anno quello che ha fatto {other}.",
		"Ecco {other}. Tra la mia gente il perdono cresce lento, come una quercia. Per ora non è spuntato niente.",
	},
	["race.nightelf.relation_player.w08.007"] = {
		"{other}. Un rivale degno è una cote, dicono le Sentinelle. Mi ha già affilato abbastanza da accorgermene.",
		"Ah, {other}. Spero che ci restino anni a sufficienza per questa rivalità. Ho intenzione di godermeli tutti.",
	},
	["race.nightelf.relation_player.w08.008"] = {
		"{other} e io abbiamo combattuto fianco a fianco. Il mio popolo incide cose così nella memoria, come vecchie radici che stringono la pietra.",
		"Abbiamo affrontato la stessa battaglia, {other} e io. Molto dopo che tutti gli altri l'avranno dimenticata, ne ricorderò ancora la forma.",
	},
	["race.nightelf.relation_player.w08.009"] = {
		"Una volta, {other} e io abbiamo incrociato le forze in duello. Il mio popolo ricorda una sfida leale come una specie di parentela.",
		"{other}. Abbiamo già misurato le nostre forze. Le Sentinelle dicono che si conosce davvero qualcuno solo dopo una sfida.",
	},
	["race.nightelf.relation_player.w08.010"] = {
		"{other}, dopo una lunga assenza. Un tempo il mio popolo misurava il tempo in secoli, eppure questa mi è sembrata lunga.",
		"Quanto tempo dall'ultima volta che ho visto {other}. Strano: un elfo della notte non dovrebbe contare i giorni. Io li ho contati.",
	},
	["race.nightelf.relation_player.w08.011"] = {
		"Alla vista di {other} il respiro mi si fa corto e silenzioso, come nella foresta profonda quando si muove qualcosa di più grosso. Non lo lascio vedere.",
		"{other} mi risveglia l'istinto antico: fermarsi, sparire nell'ombra, aspettare. Resto sulla strada, il volto calmo.",
	},
	["race.nightelf.relation_player.w08.012"] = {
		"{other}. Conosco quel passo: un elfo della notte impara i passi prima dei volti.",
		"Una figura nota: {other}. Ho una memoria lunga, e custodisce le persone con più cura dei luoghi.",
	},
	["race.tauren.relation_npc.w08.001"] = {
		"Un volto che conosco. Lungo le strade del mio popolo, un volto noto in un accampamento voleva dire acqua vicina e terreno sicuro.",
		"{other}, ancora una volta. I tauren sono sempre tornati agli stessi abbeveratoi: a quanto pare faccio lo stesso con le persone.",
		"Conosco questa persona. Un tauren impara un volto lentamente, e poi lo tiene per sempre.",
	},
	["race.tauren.relation_player.w08.001"] = {
		"In una caccia lascerei a {other} il lato lontano della mandria, senza mai voltarmi a controllare.",
		"Se {other} dicesse che il terreno davanti è saldo, ci metterei sopra tutto il mio peso. E di peso ne ho parecchio.",
		"Certa gente la guardo con un occhio aperto. Con {other} li chiudo tutti e due, come un kodo che sonnecchia accanto alla mandria.",
	},
	["race.tauren.relation_player.w08.002"] = {
		"Il cuore mi si alza come il fumo da un buon fuoco: c'è {other}. La Madre Terra manda gli amici come manda la primavera, mai proprio nel giorno che ti aspetti.",
		"Gli amici sono l'unica mandria che si porta dietro chi vaga, e con {other} in vista la mia si è appena stretta un po' di più.",
		"Ah! Siediti accanto a me al prossimo fuoco, {other}: dal lato di un tauren, nel cerchio, c'è sempre posto.",
	},
	["race.tauren.relation_player.w08.003"] = {
		"Il mio popolo dice che un debito di gentilezza si porta come l'acqua attraverso una terra arida: con cura, e fino a casa. Il mio verso {other} lo tengo ancora tra le mani.",
		"Devo qualcosa a {other}, e tra i tauren un debito così non si ripaga in monete. Si ripaga con una lunga strada fatta insieme, quando verrà il momento.",
	},
	["race.tauren.relation_player.w08.004"] = {
		"Guarda chi c'è: {other}. Mi scappa uno sbuffo, che per un tauren è quasi una canzone.",
		"Vedere {other} mi fa muovere la coda, credo. Per fortuna nessuno sa più leggere le code dei tauren.",
	},
	["race.tauren.relation_player.w08.005"] = {
		"Un plainstrider non scappa da ogni ombra, ma non smette mai di guardare l'erba. Con {other} nei paraggi, neanch'io.",
		"Conosco {other}, e tengo il peso sugli zoccoli di dietro: abbastanza per restare, abbastanza per farmi da parte.",
	},
	["race.tauren.relation_player.w08.006"] = {
		"Nei tauren la collera si alza lentamente, avvertono gli anziani, e ancora più lentamente torna a sdraiarsi. Davanti a {other}, sento che la mia è ancora in piedi.",
		"Ecco {other}. Ricordo, come la terra ricorda un'impronta profonda molto dopo che la mandria è passata.",
	},
	["race.tauren.relation_player.w08.007"] = {
		"Due kodo sullo stesso crinale, {other} e io. Nessuno deve caricare: staremo solo un po' più dritti, tutti e due.",
		"Ah, {other}. A Mulgore i rivali corrono fino alla pietra lontana e ritorno, e chi perde cucina. Quella corsa mi piacerebbe ancora farla.",
	},
	["race.tauren.relation_player.w08.008"] = {
		"{other} e io abbiamo combattuto nella stessa mischia. Nelle pianure, chi caccia insieme divide la pelle e il racconto. Devo ancora la mia metà del racconto.",
		"Abbiamo combattuto nella stessa fila, {other} e io. I tamburini del mio popolo hanno un ritmo per questo: due cuori, una caccia.",
	},
	["race.tauren.relation_player.w08.009"] = {
		"{other} e io abbiamo già misurato le forze una volta. La spalla se lo ricorda ancora: i tauren fanno la lotta per gioco, e quella sembrava una lotta vera.",
		"Abbiamo fatto un duello, {other} e io. Tra la mia gente vale come una specie di stretta di mano, solo più rumorosa.",
	},
	["race.tauren.relation_player.w08.010"] = {
		"{other}, dopo tanto tempo. L'erba ricresce su ogni sentiero, ma un tauren sa dove cercare quello vecchio.",
		"Molto tempo dall'ultima volta che ho visto {other}. Nel frattempo le mandrie si sarebbero già spostate verso erba nuova.",
	},
	["race.tauren.relation_player.w08.011"] = {
		"Anche un tauren può sentirsi piccolo. Alla vista di {other} gli zoccoli vorrebbero arretrare; li tengo piantati e respiro piano, dal naso.",
		"Le orecchie mi si appiattiscono quando {other} si avvicina. Ho una bella stazza, e aiuta meno di quanto si creda.",
	},
	["race.tauren.relation_player.w08.012"] = {
		"Conosco quell'andatura: {other}. Le pianure insegnano a riconoscere una creatura dal passo, molto prima di vederne il muso.",
		"Quella sagoma è {other}, mi pare. Gli occhi dei tauren sono fatti per le distanze: i volti mi arrivano dopo i contorni.",
	},
	["race.gnome.relation_npc.w09.001"] = {
		"Un volto che conosco! Tengo un archivio mentale su chiunque abbia incontrato. Questo fascicolo è spesso e piacevole.",
		"Ancora {other}. I volti familiari sono come gli attrezzi familiari: li cerchi senza pensarci.",
		"Ah, una conoscenza. Da quando la città è perduta, ogni volto amico in un posto estraneo è un pezzetto di casa.",
	},
	["race.gnome.relation_player.w09.001"] = {
		"{other}. Se questa persona mi dicesse che un ponte regge, lo attraverserei senza controllare i rivetti. È un complimento enorme.",
		"Ecco {other}. Ho collaudato la mia fiducia in questa persona sotto carico, due volte. Regge.",
		"{other}. Persona tarata, affidabile, precisa.",
	},
	["race.gnome.relation_player.w09.002"] = {
		"{other}! Mi fremono le orecchie. È la versione gnomesca di una festa.",
		"Oh, {other}. Certe persone sono come trovare il pezzo mancante in fondo alla scatola: un piccolo, felice clic.",
	},
	["race.gnome.relation_player.w09.003"] = {
		"Sono in debito con {other}. L'ho annotato, e gli gnomi non perdono gli appunti. Li smarriscono, e poi li ritrovano nel momento peggiore.",
		"{other}. Un favore che non ho ancora ricambiato. Sto lavorando a un ringraziamento adeguato. Richiede una certa progettazione.",
	},
	["race.gnome.relation_player.w09.004"] = {
		"{other}. Sorrisi, cenni, tutte le parole giuste. Come Thermaplugg, dicono i vecchi meccanici.",
		"Ecco {other}. Sarò cordiale e terrò le tasche abbottonate. Essere piccoli ti insegna dove vanno le mani.",
		"{other}. Occhi in alto, tasche chiuse.",
	},
	["race.gnome.relation_player.w09.005"] = {
		"{other}. Ho buona memoria per i pezzi difettosi e per chi me li ha venduti.",
		"Ecco {other}. Gli gnomi sono allegri, dicono. Quasi sempre. C'è un angolino di me, piccolo e preciso, che non lo è, e questa persona ci abita.",
	},
	["race.gnome.relation_player.w09.006"] = {
		"{other}. Ogni rivale è un banco di prova. Intendo superare questa persona di un margine misurabile.",
		"Ah, {other}. Bene. Qualunque cosa tu abbia, la eguaglio e ci aggiungo una funzione.",
	},
	["race.gnome.relation_player.w09.007"] = {
		"{other}. Abbiamo combattuto fianco a fianco. Questa persona teneva d'occhio il terreno intorno a me, che alla mia altezza è dove cominciano tutti i guai.",
		"Ecco {other}, che ha affrontato con me la stessa battaglia. Gli gnomi ricordano chi li ha coperti. Ci tocca: è facile pestarci.",
	},
	["race.gnome.relation_player.w09.008"] = {
		"{other}! Un bel po' di tempo. Nel frattempo ho avuto tre idee nuove e ne ho abbandonate due. Lascia che ti racconti la terza.",
		"Ecco {other}, dopo parecchio. Cominciavo a chiedermelo. Gli gnomi si preoccupano in fretta e in silenzio, come un orologio che ticchetta.",
	},
	["race.gnome.relation_player.w09.009"] = {
		"{other}! Esuli tutti e due, e per giunta in amicizia. Un giorno percorreremo insieme le sale di Gnomeregan. Fino ad allora, Tinker Town andrà bene.",
		"Ecco {other}. Due gnomi che si ritrovano lontano da casa: comitato immediato.",
	},
	["race.gnome.relation_player.w09.010"] = {
		"{other}. Ho calcolato diciassette modi in cui potrebbe andare. Non me ne piace nessuno, quindi continuo a camminare.",
		"Ecco {other}. Il mio popolo sa quanto costa un tradimento: ci è costato una città. Non pagherò quel prezzo due volte.",
		"{other}. Non ne vale la pena.",
	},
	["race.gnome.relation_player.w09.011"] = {
		"{other}. Abbiamo già duellato. Ho preso appunti. Sto ancora rivedendo il mio metodo.",
		"Ecco {other}. Bel duello, quello. Ho perso in statura e vinto in faccia tosta, secondo i miei conti.",
	},
	["race.gnome.relation_player.w09.012"] = {
		"{other}. Le creature piccole imparano presto quando restare immobili. Le mie ginocchia hanno deciso che è adesso.",
		"Ecco {other}. Sto calcolando le uscite. Sono due, e tutte e due dietro di me.",
	},
	["race.orc.relation_npc.w09.001"] = {
		"{other}. Una faccia nota. In viaggio, una faccia nota vale mezzo accampamento.",
		"Ah, {other}. Gli orchi tengono le conoscenze come le armi: poche, e ben curate.",
		"Conosco {other}. Su una strada lunga, le facce familiari valgono più dell'oro.",
	},
	["race.orc.relation_player.w09.001"] = {
		"A {other} lascerei le mie spalle in una battaglia di cui non vedo la fine. Per un orco, la fiducia è tutta lì.",
		"Se {other} dicesse che il ponte regge, lo attraverserei di corsa.",
	},
	["race.orc.relation_player.w09.002"] = {
		"{other}! Bene. La giornata si è fatta più rumorosa di un tamburo di guerra.",
		"Ecco {other}. Certe amicizie si forgiano come l'acciaio: nel caldo, nel duro, e ne escono migliori.",
		"{other}. Una faccia amica per strada mi scioglie la mascella. Quasi sorrido.",
	},
	["race.orc.relation_player.w09.003"] = {
		"Ecco {other}. Mi sorprendo a sogghignare tra le zanne. Nessuno deve saperlo.",
		"{other}. La buona compagnia è rara come un po' di riparo a Durotar. Me la prendo.",
	},
	["race.orc.relation_player.w09.004"] = {
		"{other}. Non volto le spalle, e la mano non si allontana mai troppo dalla cintura.",
		"Conosco {other}. I vecchi dicono che un lupo che sorride resta un lupo. Continuo a guardare.",
	},
	["race.orc.relation_player.w09.005"] = {
		"{other}. Mi sale il sangue. La maledizione è spezzata, dicono gli anziani, ma il caratteraccio era nostro fin dall'inizio.",
		"Ecco {other}. Un orco perdona lentamente, e io non ho ancora cominciato.",
	},
	["race.orc.relation_player.w09.006"] = {
		"{other}. Qualunque cosa tu riesca a fare oggi, io domani la farò meglio. È così che i rivali si tengono affilati a vicenda.",
		"Ah, {other}. Un rivale è una cote. Niente affila un orco come qualcuno bravo quasi quanto lui.",
	},
	["race.orc.relation_player.w09.007"] = {
		"Io e {other} abbiamo sanguinato sullo stesso terreno. Tra gli orchi vale più di qualsiasi giuramento.",
		"Abbiamo combattuto insieme, io e {other}. Le mie mani ne ricordano il ritmo, come un tamburo di guerra sentito una volta e mai più dimenticato.",
	},
	["race.orc.relation_player.w09.008"] = {
		"Io e {other} abbiamo già messo alla prova le nostre forze. Un combattimento onesto lascia rispetto, chiunque ne sia uscito in piedi.",
		"C'è stato un duello tra me e {other}. Un orco impara più da uno scontro onesto che da dieci discorsi.",
	},
	["race.orc.relation_player.w09.009"] = {
		"{other}, dopo tanto tempo. Le stagioni sono cambiate. Vediamo cosa ne ha fatto la strada.",
		"Molto tempo senza vedere {other}. Gli orchi non contano i giorni: contano le cicatrici. Vediamo chi ne ha di più.",
	},
	["race.orc.relation_player.w09.010"] = {
		"{other}. Qualcosa di antico in me vuole scappare. Pianto i piedi. Gli orchi non scappano dalla gente: almeno, non dove qualcuno li vede.",
		"Alla vista di {other} la mano si stringe. La paura non è una vergogna, dicono gli sciamani. Lasciarla comandare sì.",
	},
	["race.orc.relation_player.w09.011"] = {
		"{other}. Il mio sangue se lo ricorda. Per ora terrò la pace, e solo per ora.",
		"Ecco {other}. Certi debiti si pagano in monete: questo non è mai stato di quel tipo.",
	},
	["race.orc.relation_player.w09.012"] = {
		"{other}. Conosco quel nome. Un orco custodisce i nomi come i clan custodiscono gli stendardi: da vicino, e non alla leggera.",
		"Ah, {other}. Le facce mi restano più dei nomi. Questa mi è rimasta con tutti e due.",
	},
	["race.scourge.relation_npc.w09.001"] = {
		"Un volto che conosco. I vivi che si abituano a me sono rari: ne tengo il conto con cura.",
		"Ancora {other}. La prima volta, un passo indietro. Ora, a malapena un'occhiata. L'abitudine: l'unica cura che ho trovato per l'essere morti.",
		"Ah, questa persona. Mi conosce, e mi parla ancora. Le piccole cose contano più di quando respiravo.",
	},
	["race.scourge.relation_player.w09.001"] = {
		"{other}. Pochi vivi mi lasciano camminare alle loro spalle. Questa persona non si volta nemmeno.",
		"Ecco {other}. La fiducia è lenta, per i morti: ci ha traditi il nostro stesso principe. Questa persona la mia ce l'ha lo stesso.",
		"{other}. Qualcuno che non tengo d'occhio nemmeno a metà.",
	},
	["race.scourge.relation_player.w09.002"] = {
		"{other}! Qualcosa in questo petto freddo si solleva un poco. Lo chiamerò gioia: là dentro non si muove nient'altro.",
		"Ah, {other}. Compagnia che sceglierei. Per essere un cadavere, ho gusti sorprendentemente difficili.",
	},
	["race.scourge.relation_player.w09.003"] = {
		"Devo qualcosa a {other}. I debiti sono tra le poche cose di cui sento ancora tutto il peso.",
		"{other}. Mi ha aiutato quando aiutare i morti non procura a nessuno un grazie. Tengo una breve lista di persone così. Brevissima.",
	},
	["race.scourge.relation_player.w09.004"] = {
		"{other}. Ho imparato a leggere i vivi: la mano che si sposta, il sorriso che aspetta. Sto leggendo adesso.",
		"Ecco {other}. Non ho bisogno di dormire, quindi non ho mai bisogno di voltare le spalle. Utile, vicino a certa gente.",
		"{other}. Osservare, e tacere.",
	},
	["race.scourge.relation_player.w09.005"] = {
		"{other}. La putrefazione mi porta via la carne poco a poco. I rancori, quelli li lascia stare.",
		"Ecco {other}. Sono {g:morto|morta} una volta e al ritorno non ho perdonato niente. Non vedo perché cominciare adesso.",
	},
	["race.scourge.relation_player.w09.006"] = {
		"{other}. Un rivale tiene sveglia la mente, e la mente è la parte di me ancora mia. Accetto volentieri l'esercizio.",
		"Ah, {other}. Qualunque cosa tu stia vincendo, posso aspettare. Ormai non ho altro che pazienza.",
	},
	["race.scourge.relation_player.w09.007"] = {
		"{other}. Abbiamo combattuto nella stessa mischia. Ho incassato una ferita che nessun corpo vivo scrollerebbe via, e questa persona non ha battuto ciglio a vederla.",
		"Ecco {other}, che ha combattuto al mio fianco. Ci vuole stomaco per stare spalla a spalla con un morto. Questa persona ce l'aveva.",
	},
	["race.scourge.relation_player.w09.008"] = {
		"{other}, dopo un bel po'. Per i morti il tempo scorre in modo strano. Questa assenza però l'ho notata.",
		"Ecco {other}. Più di un mese. Ho smesso di contare quasi tutto, ma questo l'ho contato.",
	},
	["race.scourge.relation_player.w09.009"] = {
		"{other}! Un'altra anima libera della Dama Oscura, e per giunta una persona amica. Possiamo smettere di fingere di stare a nostro agio tra i vivi.",
		"Ecco {other}. Due Reietti che hanno scelto di farsi compagnia. A Undercity la chiamerebbero una stranezza. Io la chiamo fortuna.",
	},
	["race.scourge.relation_player.w09.010"] = {
		"{other}. Se avessi ancora un battito, starebbe correndo. Invece c'è solo questo freddo, e il freddo sa aspettare.",
		"Ecco {other}. Sono {g:stato|stata} nella tomba e ne sono {g:tornato|tornata}. Un rancore come questo me lo porterei laggiù due volte.",
		"{other}. Non qui.",
	},
	["race.scourge.relation_player.w09.011"] = {
		"{other}. Conosco quel volto. Di questi tempi la memoria mi perde parecchie cose, ma questa l'ha tenuta.",
		"Una figura nota: {other}. I morti a volte dimenticano il proprio nome. Non il suo.",
	},
	["race.scourge.relation_player.w09.012"] = {
		"{other}. La paura senza battito è una cosa strana: niente corsa, niente sudore, solo un freddo che si fa più acuto. Resto immobile.",
		"Ecco {other}. Una parte di me vorrebbe sparire tra la folla. Vecchia abitudine dei Reietti: prima nascondersi, poi fare domande.",
	},
	["race.troll.relation_npc.w09.001"] = {
		"{other}, una faccia che conosco. Sulla costa saluti gli stessi pescatori a ogni marea: una faccia nota vuol dire acque sicure.",
		"Ah, {other}. Le facce conosciute sono come gli scogli conosciuti: smetti di sbucciarti le ginocchia.",
		"{other}. Agli spiriti piace quando un troll si ricorda della gente incontrata per strada.",
	},
	["race.troll.relation_player.w09.001"] = {
		"Con {other} uscirei oltre la scogliera su una barchetta, senza mai controllare chi tiene i remi.",
		"Con {other} vicino posso riposare con tutti e due gli occhi chiusi. Per un troll in viaggio non è un regalo da poco.",
	},
	["race.troll.relation_player.w09.002"] = {
		"{other}! Adesso la strada ha qualcuno con cui ridere. I troll ridono anche da soli, ma suona più sciocco.",
		"Ecco {other}. L'amicizia è tenere da parte il pezzo di pesce migliore, anche quando hai fame.",
		"Ah, {other}! Bene. Gli spiriti le promesse le mantengono, dopotutto.",
	},
	["race.troll.relation_player.w09.003"] = {
		"Ho un debito con {other}. Gli stregoni fanno un nodo in una cordicella per ogni debito del cuore. Quello per {other} è ancora stretto.",
		"{other} c'era quando contava. Un Darkspear se lo ricorda come la tribù ricorda le navi di Thrall: un debito che non sbiadisce.",
	},
	["race.troll.relation_player.w09.004"] = {
		"Ecco {other}, e le mie zanne sorridono già. Non ci posso fare niente: hanno le loro opinioni.",
		"Guarda chi c'è: {other}. Mi metto a canticchiare prima di accorgermene. È il mojo della buona compagnia.",
	},
	["race.troll.relation_player.w09.005"] = {
		"{other}. Anche un raptor nell'erba alta sembra amichevole, finché non è abbastanza vicino. Tengo le distanze.",
		"Conosco {other}. Sarò gentile, ma con un braccio lungo sempre libero.",
	},
	["race.troll.relation_player.w09.006"] = {
		"{other}. Gli stregoni dicono che il rancore è una maledizione che lanci su te stesso. Questo me lo tengo comunque.",
		"Ecco {other}. La carne di un troll si richiude su ogni ferita. Alcune dell'altro tipo, a quanto pare, restano aperte.",
	},
	["race.troll.relation_player.w09.007"] = {
		"{other}. A Sen'jin, dicono, i giovani fanno a gara a chi sale per primo sulla palma più alta, e chi perde scende carico di noci di cocco. Con {other} la gara la farei su qualsiasi albero.",
		"Ah, {other}. Due raptor, un solo sentiero. Nessuno dei due cede il passo, e a tutti e due piace così.",
	},
	["race.troll.relation_player.w09.008"] = {
		"Io e {other} abbiamo combattuto nella stessa fila. Il sangue versato sullo stesso terreno lega più di qualsiasi commercio, dicono gli anziani.",
		"Abbiamo retto la stessa battaglia, io e {other}. Le mie ferite si sono chiuse in fretta, come quelle di ogni troll. Il ricordo no.",
	},
	["race.troll.relation_player.w09.009"] = {
		"Tra me e {other} c'è stata una sfida, una volta. I troll combattono per gioco più di quasi tutti, e quella volta è stato un bel gioco.",
		"Abbiamo già incrociato le armi, io e {other}. Un troll ricorda un buon avversario più a lungo di un buon pasto. Quasi.",
	},
	["race.troll.relation_player.w09.010"] = {
		"Io e {other} abbiamo già fatto affari. I troll contrattano come ballano: forte, a lungo, e contenti di fare un altro giro.",
		"Abbiamo già commerciato, io e {other}. Un troll ricorda chi conta ad alta voce e chi conta in silenzio.",
	},
	["race.troll.relation_player.w09.011"] = {
		"{other}, dopo tanto tempo. La marea è scesa e risalita un'infinità di volte dall'ultimo incontro.",
		"Tanto tempo senza {other}. Sulla costa dicono che chi conosci torna sempre, come il legno portato dal mare: un po' ammaccato, ma intero.",
	},
	["race.troll.relation_player.w09.012"] = {
		"{other}. Mi si secca la bocca. I troll guariscono da quasi tutto, dicono gli anziani: è a quel quasi che sto pensando.",
		"Davanti a {other} queste gambe lunghe vorrebbero portarmi altrove, molto in fretta. Le lascio pensarci.",
	},
	["race.troll.relation_player.w09.013"] = {
		"{other}. Conosco quel nome come conosco il primo colpo di un tamburo. Il resto torna da sé.",
		"Ah, {other}. Una faccia che ho messo da qualche parte tra il pesce buono e le giornate storte. Vediamo in quale mucchio.",
	},
	["faction.alliance.relation_npc.w10.001"] = {
		"Colori dell'Alleanza e un volto noto. La bandiera è enorme; sono volti come questo a farla sentire nostra.",
		"{other}. Re e consigli sono lontani. Le persone conosciute lungo la strada sono quello che l'Alleanza significa ogni giorno.",
		"Conosco questa persona. Lontano da casa, un alleato conosciuto vale un forte.",
	},
	["faction.alliance.relation_player.w10.001"] = {
		"Alleati per bandiera, e per giunta per scelta: {other} è del secondo tipo, il più raro.",
		"L'Alleanza ha dato a {other} e a me gli stessi colori. La fiducia abbiamo dovuto costruirla noi.",
		"{other}. Qualcuno su cui non devo mai ricontrollare niente.",
	},
	["faction.alliance.relation_player.w10.002"] = {
		"Fra tutta la gente sotto la nostra bandiera, {other} è una delle poche persone che accorciano una strada lunga.",
		"Tanti sconosciuti nell'Alleanza, e poi {other}, felice di vedermi. La giornata migliora.",
		"{other}! Buona compagnia, e i nostri colori. Non si può chiedere di più.",
	},
	["faction.alliance.relation_player.w10.003"] = {
		"Ho un debito con {other}, e nell'Alleanza i debiti tra di noi si saldano, anche quando i nobili non lo fanno mai.",
		"Certi alleati lo sono sulla carta. Con {other} l'alleanza vera l'ho vista nel fango, quando contava.",
	},
	["faction.alliance.relation_player.w10.004"] = {
		"{other}! Gli elfi sono rimasti in disparte da tutti per diecimila anni. A questa persona sono bastate poche buone strade per entrare tra i miei amici.",
		"Darnassus sembra molto più vicina, con un'amicizia come quella di {other} lassù.",
	},
	["faction.alliance.relation_player.w10.005"] = {
		"{other}! Un'amicizia gnomesca vale tre tende: sempre un pezzo di ricambio, sempre un piano, sempre un'opinione.",
		"Gnomeregan ha perso una città, e il resto dell'Alleanza ha guadagnato persone come {other}. Uno scambio ingiusto per loro; fortunato per noi.",
	},
	["faction.alliance.relation_player.w10.006"] = {
		"Abbiamo tenuto una linea insieme sotto i colori dell'Alleanza, io e {other}. Meglio della presentazione di qualunque araldo.",
		"Nell'Alleanza, aver combattuto accanto a {other} conta più che venire dallo stesso popolo.",
		"{other}. Quasi di famiglia, dopo quella mischia.",
	},
	["faction.alliance.relation_player.w10.007"] = {
		"Stessa parte, stessa bandiera, e vorrei comunque arrivare prima di {other}. L'Orda può aspettare il suo turno.",
		"Avere rivali tra le nostre file mi tiene più in esercizio di qualunque nemico dall'altra parte del campo, e {other} mi tiene in esercizio parecchio.",
		"{other}. Rivalità amichevole, più o meno.",
	},
	["faction.alliance.relation_player.w10.008"] = {
		"{other} porta i miei stessi colori, il che non prova niente. Anche i Defias un tempo erano tutta gente di Stormwind.",
		"Dalla stessa parte, ufficialmente. Con {other} sarò cortese, e terrò la borsa dall'altro lato.",
	},
	["faction.alliance.relation_player.w10.009"] = {
		"{other}, dell'Orda. Ci conosciamo già, e nessuno dei due ha dimenticato com'è andata.",
		"Certi nomi dall'altra parte, nell'Orda, li riconoscerei ovunque. {other} è uno di quelli.",
		"Ancora {other}. Mani pronte.",
	},
	["faction.alliance.relation_player.w10.010"] = {
		"{other}! Più di un mese. Nel frattempo l'Alleanza avrebbe potuto cambiare idea tre volte.",
		"Tanto tempo senza {other}. Chissà che notizie ha in serbo quell'angolo di Alleanza.",
	},
	["faction.horde.relation_npc.w10.001"] = {
		"{other}. Una faccia conosciuta con i colori dell'Orda. Il patto è enorme; facce così lo rendono abbastanza piccolo da viverci.",
		"Ah, ancora {other}. L'Orda è fatta di moltissimi sconosciuti. Aiuta conoscerne qualcuno per nome.",
		"{other}. Questa persona la conosco. In un'Orda di quattro popoli, essere ricordati è già un modo di essere accolti.",
	},
	["faction.horde.relation_player.w10.001"] = {
		"{other}. L'Orda rende alleati gli sconosciuti per decreto; questa fiducia, invece, l'ho scelta io.",
		"{other}. Il patto dice che siamo alleati. L'esperienza dice parecchio di più.",
		"{other}. Se l'Orda fosse fatta solo di gente così, il Capoguerra dormirebbe tranquillo.",
	},
	["faction.horde.relation_player.w10.002"] = {
		"{other}! Un punto luminoso nella lunga, rumorosa giornata dell'Orda.",
		"Ecco {other}. Certe facce fanno sembrare tutta l'Orda un po' più casa.",
		"{other}. Buona compagnia, e sotto i colori giusti.",
	},
	["faction.horde.relation_player.w10.003"] = {
		"Ho un debito con {other}, e nell'Orda i debiti fra alleati si pagano allo stesso modo, quando arriva il bisogno.",
		"Ecco {other}, con cui ho ancora un conto aperto. L'Orda va avanti grazie a debiti così, saldati con onestà.",
	},
	["faction.horde.relation_player.w10.004"] = {
		"{other}. Strade diverse per entrare nell'Orda, lo stesso fuoco alla fine.",
		"Ecco {other}. Il patto ci ha dato una bandiera, la strada un'amicizia. La seconda ha richiesto più tempo e vale di più.",
	},
	["faction.horde.relation_player.w10.005"] = {
		"{other}. Stessa bandiera. Non vuol dire stesse intenzioni.",
		"Ecco {other}. L'Orda mi chiede di stare accanto a ogni alleato. Non mi chiede di voltargli le spalle.",
		"{other}. Dalla mia parte, sì. Da tenere d'occhio, pure.",
	},
	["faction.horde.relation_player.w10.006"] = {
		"{other}. L'Orda ha bisogno di tutti e due, ed è l'unico motivo per cui tengo la bocca chiusa.",
		"Ecco {other}. Nella vecchia Orda questa faccenda si sarebbe sistemata con le asce. La nuova mi chiede di mandarla giù. La sto mandando giù.",
	},
	["faction.horde.relation_player.w10.007"] = {
		"{other}. Una rivalità dentro l'Orda è un regalo: qualcuno da superare, che però mi coprirà il fianco.",
		"Ecco {other}. Ci contenderemo ogni onore possibile, e saremo spalla a spalla appena si farà vedere l'Alleanza.",
	},
	["faction.horde.relation_player.w10.008"] = {
		"{other}. Abbiamo sanguinato per la stessa bandiera. È un legame che l'Orda capisce meglio delle parole.",
		"Ecco {other}, che ha combattuto al mio fianco nella stessa mischia. L'Orda non tiene un elenco di quei nomi. Io sì.",
		"{other}. Stessa battaglia, stessa parte, stesso fango sugli stivali dopo. L'Orda in un solo ricordo.",
	},
	["faction.horde.relation_player.w10.009"] = {
		"{other}! Quanto tempo. Dovunque ti abbia spedito l'Orda, da lì hai trovato la strada del ritorno.",
		"Ecco {other}, dopo molte settimane. L'Orda è vasta; fa piacere quando rimette in giro le stesse facce.",
	},
	["faction.horde.relation_player.w10.010"] = {
		"{other}. I colori dell'Orda su una faccia che preferirei non vedere. La bandiera protegge quella persona da me. Per poco.",
		"Ecco {other}. Sotto qualunque altra bandiera, finirebbe diversamente.",
	},
	["faction.horde.relation_player.w10.011"] = {
		"{other}. Un duello alla maniera dell'Orda: duro, leale, e niente rancori dopo. Quasi.",
		"Ecco {other}. Il nostro duello non ha deciso niente, ed è proprio quello che deve decidere un duello fra alleati.",
	},
}, "base_relations")
