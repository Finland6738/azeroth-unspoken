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
	["ally_death.w15.mourn.001"] = {
		"{other} è a terra, e tutto il resto continua a fare rumore come se niente fosse.",
		"Il mondo non si è fermato nemmeno un attimo. Io sì.",
		"Tutto il resto continua a muoversi. Mi sono {g:fermato|fermata} solo io.",
	},
	["ally_death.w15.mourn.002"] = {
		"Continuo a tendere l'orecchio verso una voce che non ha più niente da dire.",
		"Quella voce faceva parte del rumore del gruppo. Il silenzio che lascia si sente di più.",
		"Metà di ciò che sapevo di {other} era una voce. Ora nel suono c'è un buco.",
	},
	["ally_death.w15.mourn.003"] = {
		"Per un attimo mi è parso che qualcuno mi chiamasse. Nessuno. Era solo il silenzio.",
		"Mi sono {g:fermato|fermata} senza deciderlo. I piedi l'hanno saputo prima di me.",
		"Qualcosa dentro di me si è fermato, come quando un conto non torna.",
	},
	["ally_death.w15.mourn.004"] = {
		"{other}. Solo il nome, per adesso. Il resto del pensiero non arriva.",
		"Solo un nome in testa, e dopo il nulla.",
	},
	["ally_death.w15.mourn.005"] = {
		"Strano quanto in fretta un gruppo impara la forma di ciascuno. E quanto in fretta si accorge di un buco.",
		"Un gruppo impara presto la propria forma. Si accorge ancora prima del pezzo che manca.",
		"Ci si incastra senza accorgersene. Finché un pezzo non viene a mancare.",
	},
	["ally_death.w15.mourn.006"] = {
		"Vorrei che tutti si fermassero a lasciare un posto per {other}. Solo per un momento.",
		"Manca qualcuno. Il minimo è accorgersene.",
		"Un momento. Uno solo, almeno.",
	},
	["ally_death.w15.mourn.007"] = {
		"Basta così poco. Un attimo fa il gruppo era al completo.",
		"Un momento il gruppo è intero. Quello dopo, no. In mezzo, niente.",
		"Tra il prima e il dopo, nemmeno un attimo. È questa la crudeltà.",
	},
	["ally_death.w15.mourn.008"] = {
		"Capo chino, per un momento. È il minimo che posso dare, e tutto ciò che ho adesso.",
		"Un capo chino. Poco, ma è quello che c'è.",
		"Chino il capo verso {other} e lo lascio basso per un po'.",
	},
	["ally_death.w15.mourn.009"] = {
		"Le ultime parole di {other}, non le stavo davvero ascoltando. Non lo fa mai nessuno.",
		"Le ultime parole sono sempre parole qualunque, e nessuno le conserva.",
		"Non ricordo le ultime parole. Qualcosa sul da farsi, probabilmente.",
	},
	["ally_death.w15.mourn.010"] = {
		"Il dolore arriva sempre con un attimo di ritardo. Lo sento che si avvicina.",
		"Ancora non arriva. Arriverà, tutto insieme, quando mi fermerò.",
		"Sta arrivando. Arriva sempre, solo in ritardo.",
	},
	["ally_death.w15.mourn.011"] = {
		"La mano continua ad aprirsi e chiudersi sul niente, come se stringesse qualcosa fino a un attimo fa.",
		"Le mani non sanno cosa fare di sé.",
		"Mani vuote. Continuo a guardarle come se mi dovessero una risposta.",
	},
	["ally_death.w15.mourn.012"] = {
		"Ogni vita si interrompe a metà di una frase. Quella di {other}, adesso.",
		"Nessuno arriva in fondo. Ci si ferma sempre a metà di qualcosa.",
	},
	["ally_death.w15.mourn.013"] = {
		"{other}... no.",
		"Ah, no. No, no.",
		"Non è... no.",
	},
	["ally_death.w15.mourn.014"] = {
		"Più tardi troverò qualcosa di giusto da dire. Adesso c'è solo un niente sordo e pesante.",
		"Le parole dopo. Ora solo un peso senza forma.",
		"Non ci sono parole giuste. Ne cercherò qualcuna dopo.",
	},
	["ally_death.w15.mourn.015"] = {
		"Lascia che il silenzio resti un momento. Se l'è guadagnato.",
		"Niente parole. Il silenzio lo dice meglio di me.",
		"Lascio durare la quiete ancora un po'. Nessuno deve riempirla.",
	},
	["ally_death.w15.mourn.016"] = {
		"Tutto quello che {other} sapeva fare, tutto, si è fermato di colpo.",
		"Tutta quell'abilità, tutte quelle abitudini, ferme in un istante.",
	},
	["ally_death.w15.mourn.017"] = {
		"Non c'è mai un buon momento per questo. Questo è peggio di molti.",
		"Pessimo tempismo. La morte non ne conosce un altro.",
		"La morte tiene un calendario pessimo. Non chiede mai se abbiamo tempo.",
	},
	["ally_death.w15.mourn.018"] = {
		"Abbiamo perso qualcuno. Qualcuno dovrebbe dirlo ad alta voce. Io non ci riesco, non adesso.",
		"Abbiamo perso {other}. Andare avanti può aspettare un momento.",
		"C'è qualcuno a terra. Dillo chiaro, almeno dentro di te.",
	},
	["ally_death.w15.mourn.019"] = {
		"Ognuno si porta dietro la propria morte. {other} ha solo posato la sua prima di noi.",
		"Ognuno cammina con la propria fine piegata in tasca, chissà dove.",
	},
	["ally_death.w15.mourn.020"] = {
		"Lancio uno sguardo al punto dove stava {other} e lo distolgo in fretta, come da qualcosa che scotta.",
		"C'è un punto che non voglio guardare. So benissimo dov'è.",
		"Non guardare lì. Guarda ovunque, tranne lì.",
	},
	["ally_death.w15.mourn.021"] = {
		"Non so nemmeno cosa dovrei provare. Manca qualcosa, ed è tutto quello che ho.",
		"Difficile dare un nome a questo. So solo che manca qualcosa.",
	},
	["ally_death.w15.mourn.022"] = {
		"Un gruppo è una promessa silenziosa: si esce insieme. Quella promessa si è appena rotta.",
		"Si esce insieme. Era quello il patto, anche se nessuno l'aveva detto.",
		"Nessuno lo dice, ma ogni gruppo parte con l'idea di tornare al completo.",
	},
	["ally_death.w15.mourn.023"] = {
		"Mi dispiace, {other}. Mi dispiace tanto.",
		"Scusa. Scusami.",
		"Mi dispiace. È tutto quello che ho, e non basta.",
	},
	["ally_death.w15.mourn.024"] = {
		"Fronte, poi petto. Un piccolo gesto per i morti. La mano l'ha fatto prima che ci pensassi.",
		"La mano va da sola verso {other}, come succede davanti ai morti.",
	},
	["ally_death.w15.mourn.025"] = {
		"È la parte a cui nessuno si abitua. Bene. Nessuno dovrebbe.",
		"A questo non ci si abitua. Meglio così.",
		"Che faccia male. Deve farlo.",
	},
	["ally_death.w15.mourn.026"] = {
		"{other} era proprio lì. Tutto il pensiero è questo. E continua a girare.",
		"Proprio lì, un attimo fa. La testa non va oltre.",
	},
	["ally_death.w15.small.001"] = {
		"Strano cosa nota l'occhio. Una fibbia allentata sull'equipaggiamento di {other}. Nessuno l'ha sistemata.",
		"Una cinghia slacciata. È lì che lo sguardo continua a cadere.",
	},
	["ally_death.w15.small.002"] = {
		"Un passo a sinistra e a terra ci sarei io. Non voglio pensare a quale passo.",
		"Un passo dall'altra parte, e qualcuno starebbe piangendo me.",
		"Pochi passi. È tutta la distanza tra chi resta e chi no.",
	},
	["ally_death.w15.small.003"] = {
		"Chissà dove, una commissione di {other} resta in attesa.",
		"Ogni morte lascia in sospeso qualche piccola commissione.",
	},
	["ally_death.w15.small.004"] = {
		"Anni o un'ora di conoscenza, il colpo arriva uguale. Mi sorprende.",
		"Un'ora o una vita. Il peso è più o meno lo stesso.",
		"Strano. Il peso non controlla da quanto conosci qualcuno.",
	},
	["ally_death.w15.small.005"] = {
		"La sacca di {other} è aperta. La richiudo. Almeno questo si aggiusta.",
		"Qualcosa di piccolo si è slacciato. Allungo la mano per sistemarlo e mi fermo a metà.",
	},
	["ally_death.w15.small.006"] = {
		"Adesso c'è un bicchiere in sospeso per {other}. Me ne occupo io, e se serve lo bevo io.",
		"C'è un bicchiere in sospeso. Lo tengo da parte finché non si potrà pagare.",
	},
	["ally_death.w15.small.007"] = {
		"Non le importa quanto vali. È il pensiero che preferirei non avere.",
		"L'abilità non ti compra una via d'uscita. Niente lo fa.",
		"Abilità, prudenza, fortuna. Nessuna conta quanto si spera.",
	},
	["ally_death.w15.small.008"] = {
		"Mi sorprendo a tastarmi le braccia, come chi controlla di non aver perso niente.",
		"Le dita, una per una. Ci sono tutte. Perché le sto contando?",
	},
	["ally_death.w15.small.009"] = {
		"Non sono {g:sicuro|sicura} di aver mai sentito ridere {other}. Adesso mi chiedo come suonasse.",
		"Strano chiedersi solo adesso come fosse la sua risata.",
	},
	["ally_death.w15.small.010"] = {
		"La morte non bussa mai. Maleducata, ma coerente.",
		"Niente bussare, niente preavviso. Le maniere della morte non migliorano.",
		"La morte, come sempre, non ha chiesto il permesso.",
	},
	["ally_death.w15.small.011"] = {
		"Nessuno vorrebbe lasciare un gruppo così.",
		"{other}, che pessimo modo di andartene.",
	},
	["ally_death.w15.small.012"] = {
		"Se a terra ci fossi io, qualcuno si fermerebbe? Mi piace pensare di sì.",
		"Si fermerebbero così, per me? Spero di valerne la pena.",
		"Chissà chi si fermerebbe per me. Meglio non contare.",
	},
	["ally_death.w15.small.013"] = {
		"Lo sguardo si è impigliato in un dettaglio piccolo e senza senso, e non si stacca.",
		"Fisso il vuoto. Dovrei smettere. Tra un momento.",
	},
	["ally_death.w15.small.014"] = {
		"Noto un graffio sull'equipaggiamento che non avevo mai visto. Che cosa stupida da vedere, adesso.",
		"La mente va a cercare cose futili. Un graffio, un filo che pende. Qualunque altra cosa.",
		"Tra tutte le cose da notare: un polsino sfilacciato sulla mia manica.",
	},
	["ally_death.w15.small.015"] = {
		"In un gruppo come questo i nomi vanno e vengono. Questo voglio che resti un po'.",
		"Passano tanti nomi. Che almeno questo rimanga.",
	},
	["ally_death.w15.small.016"] = {
		"Mi chiedo se c'era chi aspettava {other}, chissà dove.",
		"Chi vorrebbe saperlo? Qualcuno, di sicuro.",
	},
	["ally_death.w15.small.017"] = {
		"Se {other} si rialza, qualcuno dovrà spiegare com'è andata. Non io.",
		"La prima cosa che si chiede, rialzandosi: cos'è successo? Non avrò una buona risposta.",
	},
	["ally_death.w15.small.018"] = {
		"Passo in fretta da un viso all'altro, contando chi è ancora in piedi.",
		"Controlla i vivi. Uno per uno. In fretta.",
	},
	["ally_death.w15.small.019"] = {
		"Una parte di me è sollevata che non sia toccato a me. Non ne vado {g:fiero|fiera}.",
		"Sollievo che non sia toccato a me. Subito dietro, la vergogna.",
		"Felice che non sia toccato a me. Mi vergogno di esserlo. Tutte e due le cose.",
	},
	["ally_death.w15.small.020"] = {
		"I vivi sono gente pratica. Il lavoro si sta già ridistribuendo.",
		"Chi resta si sta già spartendo il lavoro. I vivi non perdono tempo.",
	},
	["ally_death.w15.small.021"] = {
		"Non ti ho mai detto grazie, {other}. Avrei dovuto.",
		"Grazie. Dovevo dirlo prima.",
	},
	["ally_death.w15.small.022"] = {
		"A chiunque viaggi in compagnia è toccato stare così, prima o poi. Sono in buona e vecchia compagnia.",
		"Innumerevoli persone hanno vissuto questo momento. Non lo rende più leggero.",
	},
	["ally_death.w15.small.023"] = {
		"Mi passo il dorso della mano sul viso e non mi chiedo perché.",
		"Mi strofino gli occhi. Stanchezza. Dirò così.",
	},
	["ally_death.w15.small.024"] = {
		"Il mio primo pensiero è stato pratico, e mi vergogno di quanto in fretta sia arrivato.",
		"La mente è un piccolo contabile senza cuore. Sta già facendo i conti.",
		"Un pezzo di me sta già contando cosa ci manca. Quel pezzo non mi piace.",
	},
	["ally_death.w15.small.025"] = {
		"All'improvviso sento ogni dolore che ho addosso. Come se il corpo volesse dire la sua.",
		"Ogni acciacco si fa sentire insieme, come per dire: anche tu.",
	},
	["ally_death.w15.small.026"] = {
		"Qualcuno avrà pure inventato una parola per questo. Io non la conosco.",
		"Dovrebbe esserci una parola per questo.",
		"Di' qualcosa, qualunque cosa, anche solo dentro di te.",
	},
	["ally_death.w15.small.027"] = {
		"Mi sono {g:fermato|fermata} a metà di un passo. Finisci il passo. Poi il prossimo.",
		"Un piede sollevato, e per un attimo non so dove posarlo.",
	},
	["ally_death.w15.steel.001"] = {
		"Dopo. Lo sentirò come si deve dopo, quando chi resta sarà al sicuro.",
		"Il lutto può fare la fila dietro ai vivi.",
	},
	["ally_death.w15.steel.002"] = {
		"Spalle dritte. Chi resta ha bisogno di me {g:saldo|salda}, non {g:affranto|affranta}.",
		"Prima la fermezza. Il dispiacere dopo.",
		"Tieni duro. Ci sarà tempo per crollare dopo, se serve.",
	},
	["ally_death.w15.steel.003"] = {
		"Mascella stretta. Torno a ciò che resta da fare.",
		"Ingoialo. Trova gli altri. Vai.",
		"Strizzo gli occhi una volta e riparto. Nessuno deve vedere la pausa.",
	},
	["ally_death.w15.steel.004"] = {
		"Adesso si resta insieme. Piangeremo {other} a cose fatte.",
		"Stai vicino al gruppo. Il lutto, a cose fatte.",
	},
	["ally_death.w15.steel.005"] = {
		"C'è un elenco di cose da fare, e il dolore non c'è ancora. Lo scriverò in fondo.",
		"Il dolore va in fondo alla lista. Quando ci arriverò, sarà ancora lì.",
	},
	["ally_death.w15.steel.006"] = {
		"Se mi fermo adesso non riparto più. Quindi non mi fermo.",
		"Fermarsi è un lusso. Me lo concederò quando ci sarà spazio.",
		"Continua a muoverti. Il dolore acchiappa prima chi sta fermo.",
	},
	["ally_death.w15.steel.007"] = {
		"Aspettami, {other}. Verrò a sedermi accanto a te quando sarà finita.",
		"Torno da te. Lasciami solo finire.",
	},
	["ally_death.w15.steel.008"] = {
		"I morti sanno aspettare. I vivi no. Prima i vivi.",
		"Chi non c'è più può attendere. Chi c'è, no. Prima chi c'è.",
	},
	["ally_death.w15.steel.009"] = {
		"Uno sguardo. È tutto quello che mi concedo. Poi di nuovo al lavoro.",
		"Guarda una volta. Una sola. Poi il lavoro.",
		"Un momento per {other}. Uno. Poi il compito.",
	},
	["ally_death.w15.steel.010"] = {
		"Sentilo dopo. Usalo adesso.",
		"Mettilo da parte. Usalo per tenere in piedi gli altri.",
	},
	["ally_death.w15.steel.011"] = {
		"Contare chi resta. Vedere come stanno. Poi, solo poi, {other}.",
		"Contare le teste. Controllare. Poi pensare.",
	},
	["ally_death.w15.steel.012"] = {
		"Testa alta. Il lutto si conserva, da sempre.",
		"Occhi aperti. Quello può aspettare.",
	},
	["ally_death.w15.steel.013"] = {
		"Mi tremano le mani. Va bene. Possono tremare e lavorare insieme.",
		"Anche le mani che tremano funzionano. Usale.",
		"Mani, continuate a lavorare. Tremerete dopo.",
	},
	["ally_death.w15.steel.014"] = {
		"Un pugno sul petto, una volta. Dovrà valere per tutto ciò che direi.",
		"Pugno sul petto. Per ora basta.",
	},
	["ally_death.w15.steel.015"] = {
		"Il lutto è per chi è al sicuro. Io devo ancora arrivarci.",
		"Il lutto si fa nei posti sicuri. Prima trovane uno.",
		"Prima al sicuro. Poi il dolore.",
	},
	["ally_death.w15.steel.016"] = {
		"{other} detesterebbe vederci qui a piangerci addosso. Credo. Diciamo che è così.",
		"I morti non chiedono mai di piangersi addosso. Comodo, ma lo accetto.",
	},
	["ally_death.w15.steel.017"] = {
		"Qualcuno deve occuparsi di {other}. Se nessuno lo fa, lo farò io.",
		"Qualcuno dovrebbe restare lì vicino. Forse io.",
	},
	["ally_death.w15.steel.018"] = {
		"Un paio di mani in meno. Le mie dovranno fare per due.",
		"Il lavoro di due, un paio di mani. Va bene.",
	},
	["ally_death.w15.steel.019"] = {
		"Raddrizzo le spalle. Il carico adesso è più pesante, e tocca a me portarlo.",
		"Si è aggiunto qualcosa a ciò che porto. Sento esattamente dove pesa.",
		"Una spalla rigida, un peso nuovo sopra. Sistemalo e cammina.",
	},
	["ally_death.w15.steel.020"] = {
		"O in lutto o utile. Non le due cose insieme. Prima utile.",
		"Farò il lutto come si deve quando non ci sarà più niente da fare.",
	},
	["ally_death.w15.steel.021"] = {
		"Ricaccialo giù. Non per sempre. Solo finché non è passata.",
		"Piegalo piccolo e continua. Si riaprirà da solo, più tardi.",
		"Chiudilo a chiave, per ora. So dove lascio la chiave.",
	},
	["ally_death.w15.steel.022"] = {
		"Non succede due volte. Nessun altro va giù.",
		"Basta così. Non perdiamo nessun altro.",
		"Nessun altro. Nessuno.",
	},
	["ally_death.w15.steel.023"] = {
		"La regola più vecchia di ogni compagnia: il dolore aspetta fuori finché il lavoro non è finito.",
		"Il dolore aspetta alla porta. Lo ha sempre fatto. Che aspetti.",
	},
	["ally_death.w15.steel.024"] = {
		"Occhi sulla strada davanti. Se mi volto adesso, resto lì.",
		"Guarda avanti. Continua a guardare avanti.",
	},
	["ally_death.w15.steel.025"] = {
		"Se {other} torna in piedi, bene. Fino ad allora il compito è lo stesso: tenere in vita gli altri.",
		"Forse presto tornerà in piedi. In ogni caso, il compito non è cambiato.",
	},
	["ally_death.w15.steel.026"] = {
		"Riposa, {other}. Finiamo noi.",
		"Riposa. Lo portiamo a termine noi.",
		"Riposa, ora. Al resto pensiamo noi.",
	},
	["ally_death.w15.vow.001"] = {
		"Ricorderò il nome di {other}. Questo posso prometterlo.",
		"Un nome pesa poco da portare. Lo porterò.",
		"Certi nomi meritano di durare più del momento. Questo durerà, se dipende da me.",
	},
	["ally_death.w15.vow.002"] = {
		"Non resterai indietro, {other}. Non per colpa mia.",
		"Qui non si lascia indietro nessuno.",
		"Non si abbandona chi è dei nostri.",
	},
	["ally_death.w15.vow.003"] = {
		"Qualunque cosa abbia portato qui {other}, la porterò a termine io.",
		"Il motivo per cui era qui non finisce adesso. Lo raccolgo io.",
	},
	["ally_death.w15.vow.004"] = {
		"Voglio ricordare di {other} qualcosa di vero, non solo la fine. Ci penso finché non lo trovo.",
		"Non la fine. Terrò qualcosa di prima.",
	},
	["ally_death.w15.vow.005"] = {
		"Dico il nome di {other} una volta, sottovoce, per metterlo al sicuro.",
		"Di' il nome una volta, piano. Riponilo dove non si perde.",
		"Un nome, detto piano due volte. È il mio modo di tenerlo.",
	},
	["ally_death.w15.vow.006"] = {
		"Diventerò più {g:bravo|brava} in questo. È l'unica scusa che valga qualcosa.",
		"La prossima volta sarò più {g:svelto|svelta}. Questa è la promessa.",
		"Non andrà due volte nello stesso modo. Ci penso io.",
	},
	["ally_death.w15.vow.007"] = {
		"Per {other}. Voglio che quel nome sia ricordato.",
		"Questo non va dimenticato. Non lo permetterò.",
	},
	["ally_death.w15.vow.008"] = {
		"Il mondo dimentica in fretta. Io posso essere più {g:lento|lenta} del mondo.",
		"Dimenticare è un'abitudine del mondo. Non deve per forza essere la mia.",
		"Lo terrò anche quando il mondo sarà passato oltre.",
	},
	["ally_death.w15.vow.009"] = {
		"Se {other} si rialza, farò in modo che sappia che qualcuno se n'è accorto.",
		"Se torna in piedi, glielo dirò chiaro: si è sentita la tua mancanza.",
	},
	["ally_death.w15.vow.010"] = {
		"Guardo {other} a lungo. Voglio poter ritrovare questo volto, più avanti.",
		"Guarda bene. Imparalo. La memoria non lavora da sola.",
	},
	["ally_death.w15.vow.011"] = {
		"Qui non c'è una candela da accendere. Ne terrò accesa una dentro di me.",
		"Niente candele da accendere. Basterà la memoria.",
		"Per questo andrebbe accesa una candela. Gliene devo una.",
	},
	["ally_death.w15.vow.012"] = {
		"Ci sono io, {other}. Non vado da nessuna parte.",
		"Sono qui. Non me ne vado.",
		"Resto qui. Proprio qui.",
	},
	["ally_death.w15.vow.013"] = {
		"D'ora in poi, una parte di ciò che faccio la faccio per {other}.",
		"Da adesso, un pezzo di ogni battaglia è suo.",
		"Combatterò un po' più forte, adesso. Una parte è sua.",
	},
	["ally_death.w15.vow.014"] = {
		"Più tardi lo scriverò da qualche parte: il nome, e che è successo. Qualcuno deve farlo.",
		"Qualcuno dovrebbe tenerne nota. Tanto vale che sia io.",
		"Una riga in più nel mio registro privato. Meriterebbe una pagina intera.",
	},
	["ally_death.w15.vow.015"] = {
		"Una mano aperta, alzata verso {other}. Addio, o a più tardi. Non sta a me scegliere.",
		"Mano alzata, palmo aperto. Un saluto, in silenzio.",
		"Due dita alla fronte. Il saluto più piccolo che conosco.",
	},
	["ally_death.w15.vow.016"] = {
		"Se qualcuno chiede, lo racconterò com'è andata. Senza abbellire, senza tacere niente.",
		"Se qualcuno chiede com'è andata, da me avrà la verità.",
	},
	["ally_death.w15.vow.017"] = {
		"Il tuo posto resta tuo, {other}.",
		"Il tuo posto ti aspetta. Torna, se puoi.",
	},
	["ally_death.w15.vow.018"] = {
		"Si resta un po' in ciò che gli altri ripetono di noi. Continuerò a ripetere il nome di {other}.",
		"Si dura finché qualcuno dice il tuo nome. Io posso dirlo.",
	},
	["ally_death.w15.vow.019"] = {
		"Chiamalo debito. Lo vedrò saldato prima di riposare.",
		"Un debito, allora. Pagato fino all'ultimo prima di fermarmi.",
	},
	["ally_death.w15.vow.020"] = {
		"Il mio passo è cambiato. Più duro. Come se ci fosse una promessa in fondo.",
		"Cammina come se ci credessi. Adesso ci credi.",
		"Un passo più silenzioso, e più duro. Lo terrò.",
	},
	["ally_death.w15.vow.021"] = {
		"Qualunque cosa fosse {other} per il resto del mondo, qui mi stava accanto. Questo lo tengo.",
		"Mi stava accanto. È questo che terrò.",
	},
	["ally_death.w15.vow.022"] = {
		"Hai fatto la tua parte, {other}. Lascia che facciamo la nostra.",
		"La tua parte è fatta. Ora la nostra.",
	},
	["ally_death.w15.vow.023"] = {
		"Terrò questo momento esattamente com'è. Né più bello, né peggiore.",
		"Ricordalo com'è stato. Non lucidarlo.",
	},
	["ally_death.w15.vow.024"] = {
		"Ciò che viene dopo, lo affronterò per due.",
		"Quello che resta, lo affronto anche per chi non c'è.",
		"Per due, allora. Va bene.",
	},
	["ally_death.w15.vow.025"] = {
		"Faccio un piccolo nodo a una cinghia dell'equipaggiamento. C'è chi tiene il conto così. Ora anch'io.",
		"Un nodo in una cinghia allentata. Lo lascio lì.",
	},
	["ally_death.w15.vow.026"] = {
		"Buon cammino, ovunque vadano i morti. Un giorno ti raggiungerò, ma non presto.",
		"Ovunque tu sia, tienimi un posto. Ma non troppo presto.",
	},
	["relation_player.w15.bond.001"] = {
		"{other}, qui. Qualunque lamentela avessi in serbo può aspettare.",
		"Un nome amico che spunta senza preavviso. Poche cose aggiustano l'umore così in fretta.",
		"Basta una persona conosciuta, e ogni posto sembra un po' meno preso in prestito.",
	},
	["relation_player.w15.bond.002"] = {
		"Le spalle si abbassano di un dito prima ancora che io metta a fuoco il nome. Il corpo riconosce l'amicizia prima di me.",
		"Certi saluti li distribuisco a chiunque. Quello che ho pronto ora è riservato a una persona sola.",
	},
	["relation_player.w15.bond.003"] = {
		"Ci sono persone che seguirei dentro una pessima idea solo per far loro compagnia. {other} è una di queste.",
		"Se finirà in guai, almeno saranno guai in buona compagnia.",
		"Una persona amica in vista. Il giudizio peggiora e l'umore migliora: uno scambio onesto.",
	},
	["relation_player.w15.bond.004"] = {
		"Con certi nomi sto sull'attenti, con altri mi lascio andare. Con {other} mi lascio andare.",
		"Con alcuni devo pesare ogni parola. Con questa persona no, ed è tutto lì il regalo.",
		"Certa compagnia è fatica, altra è riposo. Questa è di quella che riposa.",
	},
	["relation_player.w15.bond.005"] = {
		"L'amicizia chiede così poco ad alta voce. Per lo più vuole solo essere notata, e dunque: ti vedo, {other}.",
		"Qualcuno di cui sono {g:amico|amica}. Ogni volta mi stupisco di quanto tutto pesi meno, con questa persona vicino.",
	},
	["relation_player.w15.bond.006"] = {
		"Qualcuno mi ha {g:trovato|trovata}, ed è la persona giusta. Bene.",
		"Eccoti, {other}. Resterò un po' qui vicino.",
	},
	["relation_player.w15.bond.007"] = {
		"{other} in vista. Qualunque cosa arrivi, meglio affrontarla con questa persona al mio fianco.",
		"Certa fiducia si costruisce a parole. Questa si è costruita nei momenti in cui nessuno aveva tempo di parlare.",
		"Spalla a spalla è un'abitudine, e con questa persona ce l'ho.",
	},
	["relation_player.w15.bond.008"] = {
		"Senza deciderlo, ho lasciato un posto libero al mio fianco per {other}. Certe abitudini vengono prima del pensiero.",
		"Fra due persone abituate a coprirsi le spalle basta un cenno breve. Di più sarebbe solo cerimonia.",
	},
	["relation_player.w15.bond.009"] = {
		"Se c'è {other}, ci sono anche i guai, e sono {g:contento|contenta} di entrambi.",
		"Spunta qualcuno con cui ho diviso le armi, e il primo pensiero è sollievo; il secondo è guardare cosa si porta dietro.",
		"Che piacere vedere questa persona. Un po' meno pensare a ciò che di solito arriva insieme.",
	},
	["relation_player.w15.bond.010"] = {
		"{other}. Tutto il resto intorno si sfuoca un poco, com'è giusto.",
		"Quel nome, e di colpo sono meno {g:stanco|stanca} di un attimo fa.",
		"Certi volti li guardo. Questo lo cerco, anche quando non ho motivo di aspettarmelo.",
	},
	["relation_player.w15.bond.011"] = {
		"Tutto in me si fa quieto e lieto nello stesso istante. {other} fa questo effetto, e ho smesso di discuterci.",
		"Potrei limitarmi a un saluto. Preferisco lasciare che il momento duri un po' di più.",
	},
	["relation_player.w15.bond.012"] = {
		"Qualcuno dalla mia parte per decisione, non per abitudine. Le decisioni si possono disfare, ed è per questo che questa vale qualcosa.",
		"{other}, che ha scelto la mia parte quando non serviva. Di gente così tengo un conto preciso.",
		"Uno scopo comune è una corda robusta. Terrò ben tesa la mia estremità.",
	},
	["relation_player.w15.bond.013"] = {
		"Tempismo perfetto, {other}. Stessa causa, stessa parte.",
		"L'accordo regge, confido. Sarà meglio.",
	},
	["relation_player.w15.bond.014"] = {
		"Con {other} nei paraggi smetto di contare le vie d'uscita. Me ne accorgo solo dopo.",
		"La fiducia fa poco rumore. Si vede nelle cose che non mi prendo più la briga di controllare.",
		"Ecco qualcuno di cui prenderei la parola senza cercare il trucco.",
	},
	["relation_player.w15.bond.015"] = {
		"Lascerei il mio zaino con {other} e me ne andrei senza voltarmi. È più o meno il complimento più alto che conosca.",
		"A certe persone presterei del denaro. A meno ancora le spalle. Questa persona ha diritto a entrambe le cose.",
		"Se dovessi lasciare qualcosa di prezioso in custodia, questo nome sarebbe tra i primi.",
	},
	["relation_player.w15.bond.016"] = {
		"La guardia scende di una tacca, come succede con {other} e quasi con nessun altro.",
		"Qui potrei voltare le spalle senza pensarci due volte. È più raro di quanto sembri.",
	},
	["relation_player.w15.bond.017"] = {
		"Nessun motivo particolare. Ho simpatia per {other}, e ho smesso di chiedere a questa simpatia di giustificarsi.",
		"Certe compagnie migliorano tutto un poco senza fare nulla di speciale. Questa è una di quelle.",
		"Un volto che mi fa piacere vedere. Non serve altra scusa.",
	},
	["relation_player.w15.bond.018"] = {
		"Persino il mio malumore riconosce {other}, e si fa da parte in silenzio.",
		"C'è chi sopporto e c'è chi mi rallegra. Questa persona sta saldamente nel secondo mucchio.",
	},
	["relation_player.w15.bond.019"] = {
		"Oh, bene. Sei tu.",
		"{other}! Le cose si sono appena fatte più sopportabili.",
	},
	["relation_player.w15.bond.020"] = {
		"C'è una gentilezza che non ho mai ricambiato. {other} forse l'ha dimenticata; io no.",
		"Strano carico, la gratitudine: non pesa nulla, eppure la sento ogni volta che spunta questo nome.",
		"Un favore fatto per me, una volta, senza che lo chiedessi. Non è roba che sbiadisce.",
	},
	["relation_player.w15.bond.021"] = {
		"Ho un grazie messo da parte e nessuna idea di come dirlo senza che diventi imbarazzante.",
		"Qualcuno con cui ho un debito, del tipo piacevole. Preferisco saldarlo coi fatti che con i discorsi.",
	},
	["relation_player.w15.bond.022"] = {
		"Per {other} chinerò il capo un po' più di quanto chieda un saluto. Il perché lo so io.",
		"Un vecchio debito, soppesato un'altra volta e trovato ancora lì. Non mi pesa portarlo.",
	},
	["relation_player.w15.edge.001"] = {
		"{other}. Da qualche parte nella testa si è appena svegliato un tabellone che fingo di non tenere.",
		"Niente mi tiene {g:sveglio|sveglia} come una rivalità a portata di sguardo. Mi secca quanto funzioni bene.",
		"Rivalità in vista. Bene: cominciavo a stare {g:comodo|comoda}, ed è stando comodi che si resta indietro.",
	},
	["relation_player.w15.edge.002"] = {
		"Con {other} intorno non so mai bene a che punto sono, e ho intenzione di scoprirlo.",
		"Rispetto e rivalità camminano più vicini di quanto si ammetta. Da me, questa persona li ha entrambi.",
	},
	["relation_player.w15.edge.003"] = {
		"Oh, sei tu. Vedrò di restare un passo avanti.",
		"{other}. Speravo che ti facessi vedere; mi serviva un motivo per impegnarmi di più.",
		"Finalmente. Vincere cominciava a diventare noioso.",
	},
	["relation_player.w15.edge.004"] = {
		"Mi raddrizzo un poco, con {other} in giro. Qualcuno ha cominciato a contare, e tanto vale che sia io.",
		"Se gli sguardi si incrociano, reggerò il mio un istante più di quanto la cortesia chieda. Una meschinità, e non m'importa.",
	},
	["relation_player.w15.edge.005"] = {
		"Per {other} non vorrei mai del male. Solo, ogni tanto, una giornata un po' peggiore della mia.",
		"Se questa rivalità finisse, mi mancherebbe più di quanto ammetterei. È utile avere qualcuno da battere.",
	},
	["relation_player.w15.edge.006"] = {
		"{other}. Ogni muscolo che ho ricorda il perché, prima ancora di me.",
		"Davanti agli occhi, il nome che meno vorrei incontrare. Tengo il volto calmo; il resto di me misura già le distanze.",
		"L'odio stanca. Vedendo questo nome, scopro che ne ho ancora la forza.",
	},
	["relation_player.w15.edge.007"] = {
		"{other}. Il mondo è grande, eppure trova sempre il modo di mettermi questa persona tra i piedi.",
		"Con tutta la gente che c'è da incontrare. Il mondo ha il senso dell'umorismo, e io non lo condivido.",
	},
	["relation_player.w15.edge.008"] = {
		"Alla vista di {other} mi faccio immobile. Né paura né prontezza: solo immobilità, senza ancora decidere nulla.",
		"Mani ferme, sguardo fisso, bocca chiusa. Qualunque cosa diventi, non comincerà da me.",
	},
	["relation_player.w15.edge.009"] = {
		"Potrei fingere che {other} sia un volto qualunque. Non lo farò: è fingendo che si diventa sbadati.",
		"Anche l'inimicizia ha la sua onestà. Almeno qui so esattamente dove mi trovo.",
		"L'odio è un carico costoso. Ho deciso che questo nome vale la spesa.",
	},
	["relation_player.w15.edge.010"] = {
		"{other}. Sarò cortese, e terrò le mie cose dove posso vederle.",
		"La diffidenza non è scortesia, se resta zitta. La mia resta zittissima, e ben sveglia.",
	},
	["relation_player.w15.edge.011"] = {
		"Lo zaino scivola da solo sulla spalla più lontana. L'abitudine conosce bene il nome.",
		"Educazione, allora. L'educazione non costa nulla e promette ancora meno.",
	},
	["relation_player.w15.edge.012"] = {
		"{other}. Di sicuro c'è qualcuno, chissà dove, che trova questa persona affascinante. Mi fido sulla parola.",
		"Certi nomi guastano un momento solo arrivando. Questo è uno di quelli.",
		"Non auguro male a questa persona. Le auguro solo di essere altrove, e a lungo.",
	},
	["relation_player.w15.edge.013"] = {
		"Quel nome. La mia pazienza si restringe di una taglia.",
		"{other}. Cortesia, allora, di quella sottile, quasi tutta denti.",
		"Farò un cenno. Il bilancio finisce lì.",
	},
	["relation_player.w15.edge.014"] = {
		"{other}. Ma guarda.",
		"Ah. Proprio tu.",
	},
	["relation_player.w15.edge.015"] = {
		"Senza volerlo mi faccio più {g:piccolo|piccola}. Poi mi costringo a smettere.",
		"La paura è una cattiva consigliera, e chiassosa. In questo momento mi dice con precisione dove si trova questa persona.",
		"Tengo la voce ferma e la distanza generosa. Nessuna delle due cose è un caso.",
	},
	["relation_player.w15.edge.016"] = {
		"Preferisco tacere, con {other} nei paraggi, e lasciare lo spazio in mezzo largo com'è.",
		"Tengo questa persona al margine dello sguardo, e non le volto mai del tutto le spalle.",
	},
	["relation_player.w15.edge.017"] = {
		"{other}. Abbastanza a modo. Come tanta gente, fino al momento in cui smetteva di esserlo.",
		"Ascolto questa persona come conterei il resto ricevuto da chi non conosco: due volte, e con garbo.",
		"Nessuna accusa, niente che potrei dire ad alta voce. Solo una piccola mano sulla spalla che dice: occhio.",
	},
	["relation_player.w15.edge.018"] = {
		"Manderei un messaggio tramite {other}. La risposta no.",
		"La diffidenza è un'assicurazione a buon mercato. Con questa persona continuerò a pagarla.",
		"Questa persona sorride con facilità. Ho imparato a contare quanto costano i sorrisi facili.",
	},
	["relation_player.w15.edge.019"] = {
		"Un'occhiata verso {other}, una alle mie cose, poi torno a guardare. Senza fretta, e senza accuse.",
		"Riesco a sorridere e intanto a tenere d'occhio. È una delle mie doti migliori.",
	},
	["relation_player.w15.edge.020"] = {
		"{other}. Le mani vogliono qualcosa da fare. Non do loro niente, e aspetto.",
		"Certe paure gridano. Questa sussurra soltanto lo stesso nome, senza fine.",
		"Conosco questa tensione nelle spalle. Arriva sempre un attimo prima di questo nome.",
	},
	["relation_player.w15.edge.021"] = {
		"Non è successo nulla. Non serve. Basta questa presenza a mettere ogni nervo all'erta.",
		"Potrei andarmene. Non lo farò, ma saperlo mi aiuta più di quanto dovrebbe.",
	},
	["relation_player.w15.edge.022"] = {
		"{other}. Il vecchio torto si mette a sedere e si guarda intorno, ben sveglio.",
		"Ho provato a posarlo, questo rancore. Trova sempre la strada per tornarmi in mano.",
		"Il perdono è una porta che continuo a ripromettermi di aprire. Non per questo nome. Finora no.",
	},
	["relation_player.w15.edge.023"] = {
		"Guarda {other}, che va avanti come se niente fosse. Dev'essere riposante.",
		"Ho ripassato così tante volte ciò che direi a questa persona che le parole si sono consumate. E comunque non le dirò.",
		"Certi torti guariscono. Questo ha solo imparato a stare zitto.",
	},
	["relation_player.w15.edge.024"] = {
		"Guardo {other} un istante di troppo, poi distolgo gli occhi. La mascella resta serrata per un po'.",
		"Lascerò passare questa persona senza una parola. Il silenzio non sarà vuoto.",
	},
	["relation_player.w15.tie.001"] = {
		"{other} e io abbiamo combattuto nella stessa mischia. Qualunque altra cosa sia vera, questa resta vera.",
		"Quando hai visto come si muove qualcuno nel momento in cui le cose vanno storte, non lo dimentichi. Questa persona l'ho vista.",
		"Di quella battaglia ricordo poco con chiarezza. Ricordo chi c'era.",
	},
	["relation_player.w15.tie.002"] = {
		"Il pericolo condiviso lascia qualcosa dietro di sé, piccolo e ostinato. Al suono di questo nome, si muove.",
		"Una volta ho messo la vita nelle mani di {other}, che lo volessi o no. È più difficile da disfare di quanto si creda.",
		"Combattere accanto a qualcuno non è amicizia. È qualcosa di più strano, e più difficile da scrollarsi di dosso.",
	},
	["relation_player.w15.tie.003"] = {
		"{other} si merita il cenno che riservo a chi ha combattuto con me.",
		"Le mani si flettono alla vista di questa persona, come se il ricordo di quella battaglia stesse nelle dita.",
	},
	["relation_player.w15.tie.004"] = {
		"L'ultima volta che {other} e io eravamo nello stesso posto, qualcosa cercava con impegno di ammazzare tutti. Speriamo non diventi una tradizione.",
		"Niente lega due persone come rischiare la pelle nello stesso istante.",
	},
	["relation_player.w15.tie.005"] = {
		"So come combatte questa persona. È più di quanto sappia di molti con cui ho diviso un pasto.",
		"Un nome da una battaglia in cui c'ero anch'io. I dettagli si sono sfocati; la sensazione di avere qualcuno lì, no.",
	},
	["relation_player.w15.tie.006"] = {
		"Ricordo ancora come è finito quel duello, e preferisco non dire da che parte.",
		"Affrontare qualcuno in duello insegna le sue abitudini più in fretta di qualsiasi amicizia.",
		"Un duello è una conversazione con meno parole e più gioco di piedi. Con questa persona l'ho già fatta.",
	},
	["relation_player.w15.tie.007"] = {
		"{other}: un duello, una volta. Certe domande non restano chiuse a lungo.",
		"C'è un rispetto che nasce solo dall'aver dato il meglio contro qualcuno. Per questa persona ne ho un po'.",
	},
	["relation_player.w15.tie.008"] = {
		"Sto già squadrando {other}, come si fa con chi si è affrontato in duello.",
		"Alla vista di questa persona la spalla dà una piccola fitta. Il vecchio scontro ha ancora un po' di dolore da spendere.",
	},
	["relation_player.w15.tie.009"] = {
		"{other}. Una parte di me sta già pensando a una rivincita.",
		"Mi ricordo di te. E di quel duello.",
	},
	["relation_player.w15.tie.010"] = {
		"{other}, qualcuno con cui ho fatto affari. Le merci sono passate di mano; un po' di fiducia anche, oppure no.",
		"Commerciare insegna come conta una persona. Ricordo come conta questa.",
		"Uno scambio è una piccola prova con le monete sul tavolo. Questo nome l'ha superata o no; ricordo com'è andata.",
	},
	["relation_player.w15.tie.011"] = {
		"L'ultima volta che ho avuto a che fare con questa persona sono girate delle monete. Sto ancora decidendo se nella direzione giusta.",
		"Ci ho fatto affari, con questo nome. La mia borsa se lo ricorda, a modo suo.",
	},
	["relation_player.w15.tie.012"] = {
		"Alla vista di {other} la mano va alla borsa. Un riflesso da mercante, niente di più.",
		"Il cenno svelto che tengo per chi ci ha fatto affari. Meritato, in un modo o nell'altro.",
	},
	["relation_player.w15.tie.013"] = {
		"Una volta c'è stato un invito, fra me e {other}. Chi l'abbia fatto a chi, dovrei pensarci.",
		"Chiedere a qualcuno di unirsi, o accettarlo, è un piccolo azzardo. Questo nome ne ha fatto parte.",
		"Unirsi, anche una volta sola, lascia un segno. Piccolo, ma so dove trovarlo.",
	},
	["relation_player.w15.tie.014"] = {
		"Qualcuno che una volta mi ha {g:voluto|voluta} con sé, o che io ho voluto con me. In un caso o nell'altro, una porta si è aperta.",
		"{other}. Ci fu un'offerta di compagnia, a suo tempo. La ricordo più di quanto avrei immaginato.",
	},
	["relation_player.w15.tie.015"] = {
		"La mano si alza a metà verso {other}, ricordando un invito di qualche tempo fa.",
		"Questa è una persona a cui si è chiesto, o che ha chiesto, di unirsi. Conta qualcosa.",
	},
	["relation_player.w15.tie.016"] = {
		"Un gesto, una volta, da parte di questa persona. Lo ricordo meglio di quanto ricordi cosa volesse dire.",
		"Un saluto, un inchino, qualcosa di maleducato? Qualunque cosa fosse, è bastata perché il nome mi restasse in mente.",
	},
	["relation_player.w15.tie.017"] = {
		"Chi si prende la briga di fare un gesto verso qualcuno è più raro di quanto si pensi. Questa persona l'ha fatto, una volta.",
		"Un solo piccolo gesto, e il nome mi è rimasto. La memoria conserva ricevute strane.",
	},
	["relation_player.w15.tie.018"] = {
		"Un vecchio gesto di {other} merita una piccola risposta. Ne ho una pronta.",
		"Un cenno della testa per questa persona: ricambio un gesto di qualche tempo fa.",
	},
	["relation_player.w15.tie.019"] = {
		"{other}. Uno dei nomi che conservo, per ragioni mie.",
		"Il riconoscimento arriva prima del motivo. Prima il nome, poi perché conta.",
		"Questa persona la conosco. Quello che ne penso può aspettare un attimo: prima viene il riconoscere.",
	},
	["relation_player.w15.tie.020"] = {
		"Un'occhiata breve verso {other}, quella che riservo a chi conosco già.",
		"Annotato, e messo da parte. Nessuna fretta di decidere cosa significhi.",
	},
	["relation_player.w15.tie.021"] = {
		"Un nome conosciuto in un mondo pieno di sconosciuti. Qualunque cosa significhi, significa qualcosa.",
		"Ogni nome che conservo è una piccola promessa di fare attenzione. Eccone una che scade.",
		"Fra tutte le persone che passano, questa la conosco. Cambia la forma del momento.",
	},
	["relation_player.w15.tie.022"] = {
		"{other}. Buona o cattiva notizia, riconoscerei quel nome ovunque.",
		"Una presenza familiare. Che sia un conforto o un avvertimento, lo scoprirò a breve.",
	},
	["relation_player.w15.tie.023"] = {
		"La maggior parte di chi passa per me non ha volto. Questa persona sì, e la differenza basta a rallentarmi il passo.",
		"La mente smista le persone più in fretta degli occhi. Ha già messo questa persona da qualche parte.",
	},
	["relation_player.w15.tie.024"] = {
		"Una conoscenza. Né persona vicina né estranea: uno di quei nomi che stanno nel mezzo.",
		"{other}. Un incontro c'è già stato; è più o meno tutto ciò che potrei giurare.",
	},
	["relation_player.w15.tie.025"] = {
		"Un cenno cortese e di passaggio verso {other}, come si fa con i volti noti ma non intimi.",
		"La cortesia ordinaria che si deve a un ricordo a metà. Questo posso permettermelo.",
	},
	["relation_player.w15.tie.026"] = {
		"Conosco il nome e non mi suscita granché. Né sto cercando che lo faccia.",
		"Né simpatia né antipatia, per questa persona. Certa gente semplicemente occupa poco spazio.",
	},
	["relation_player.w15.tie.027"] = {
		"Riconosco il nome, ma non riesco a provarne interesse. È permesso.",
		"Non tutte le persone familiari hanno bisogno di un sentimento attaccato. Questa ne è senza.",
	},
	["relation_player.w15.time.001"] = {
		"{other}, e dall'ultima volta è passato pochissimo. O fortuna, o abitudine.",
		"Due volte in così poco tempo. Di questo passo imparerò a riconoscere l'andatura di questa persona.",
		"L'ultimo incontro è appena alle spalle, ed ecco il prossimo.",
	},
	["relation_player.w15.time.002"] = {
		"Già si rivede questo nome. Quel che restava da dire l'ultima volta è ancora abbastanza fresco da dirlo.",
		"È passato così poco dall'ultimo incontro che non ho fatto in tempo a pensarci. Ora mi toccherà.",
	},
	["relation_player.w15.time.003"] = {
		"Questa persona, già qui? Ha fatto presto.",
		"{other}, così presto. Avrei puntato su un'attesa più lunga.",
	},
	["relation_player.w15.time.004"] = {
		"Guardo due volte {other}, giusto per verificare quanto poco tempo sia passato. Quasi niente.",
		"Socchiudo gli occhi e faccio il conto: dall'ultimo incontro non è passato quasi nulla.",
	},
	["relation_player.w15.time.005"] = {
		"Incontrare la stessa persona due volte a breve distanza sembra un messaggio. Non ho ancora capito quale.",
		"{other}, a poca distanza dall'ultima volta. Certe conoscenze non hanno nessuna voglia di invecchiare.",
	},
	["relation_player.w15.time.006"] = {
		"Se continua così, penseranno che mi stiano seguendo. O che sia io a seguire.",
		"Troppo poco tempo di distanza per sentire la mancanza di qualcuno, o per smettere di farci caso.",
	},
	["relation_player.w15.time.007"] = {
		"Basta un cenno breve verso {other}. Dopo così poco tempo non serve ricominciare da capo.",
		"Così presto, il saluto più breve è della misura giusta. Qualcosa di più sembrerebbe una rimpatriata.",
	},
	["relation_player.w15.time.008"] = {
		"Sono settimane che non incrocio {other}. Abbastanza per avere notizie, troppo poco per perdersi di vista.",
		"Settimane, non mesi. Abbastanza perché qualcosa sia cambiato, non abbastanza per sapere cosa.",
		"La distanza è larga quanto basta per chiedermi cosa mi sia {g:perso|persa}.",
	},
	["relation_player.w15.time.009"] = {
		"Sono passate alcune settimane. Mi accorgo di ricordare l'ultimo incontro meglio del previsto.",
		"Qualche settimana di distanza sposta un volto nella memoria. Vedere {other} lo rimette in ordine.",
	},
	["relation_player.w15.time.010"] = {
		"Mi prendo un momento per squadrare {other}, come si fa dopo qualche settimana senza vedersi.",
		"Un ricordo di settimane fa contro la realtà: controllo cosa si è spostato.",
		"Una breve pausa, per recuperare qualche settimana con un'occhiata.",
	},
	["relation_player.w15.time.011"] = {
		"Settimane. Abbastanza perché questa persona abbia combinato qualche sciocchezza. O io. O, più probabilmente, ognuno per conto suo.",
		"Qualche settimana senza vedersi. Mi chiedo quale versione dell'ultimo incontro sia diventata più lusinghiera.",
	},
	["relation_player.w15.time.012"] = {
		"Quel nome, dopo qualche settimana di silenzio. Si rimette al suo posto con un piccolo scatto.",
		"L'ultima volta sembra vicina e lontana insieme. È l'effetto di qualche settimana.",
	},
	["relation_player.w15.time.013"] = {
		"Le settimane hanno il vizio di smussare gli spigoli di un ricordo. E invece ecco {other}, spigoli compresi.",
		"Non abbastanza per dimenticare; giusto abbastanza per chiedermi se avessi ricordato bene.",
	},
	["relation_player.w15.time.014"] = {
		"Le persone non restano ferme per un mese. Mi chiedo che strada abbia preso {other}.",
		"Abbastanza a lungo da aver quasi archiviato questo nome. Quasi.",
		"Tanto tempo fa, l'ultimo incontro: così tanto che sembra capitato a qualcun altro.",
	},
	["relation_player.w15.time.015"] = {
		"Una lunga pausa. Dovrò reimparare un po' questa persona, come si riprende un motivetto che si canticchiava una volta.",
		"Dopo più di un mese, il nome è riaffiorato prima dei dettagli.",
		"Dopo tanto tempo, metà di quello che ricordo sarà sbagliata. Vediamo quale metà.",
	},
	["relation_player.w15.time.016"] = {
		"La vista di {other} mi ferma un istante, come succede quando è passato molto tempo.",
		"Accosto questa persona a un ricordo più vecchio, per vedere quanto combaciano. Non del tutto: dopo tanto tempo, niente combacia.",
	},
	["relation_player.w15.time.017"] = {
		"Le lunghe assenze trasformano ogni incontro in un piccolo conto da fare. Vediamo a quanto ammonta questo.",
		"Un mese, o più. Abbastanza perché un'intera vita si inclini un poco, compresa la mia.",
	},
	["relation_player.w15.time.018"] = {
		"Un bel pezzo dall'ultima volta. Spero di essere {g:cambiato|cambiata} in meglio; mi accontenterei anche di lato.",
		"Dopo tanto tempo, non posso giurare che questa persona non sia ormai insopportabile. O che non lo sia io.",
	},
	["relation_player.w15.time.019"] = {
		"{other}, dopo tanto tempo. Per poco non l'ho detto ad alta voce.",
		"Guarda un po': tanto tempo, e la prova è proprio davanti a me.",
	},
	["relation_player.w15.time.020"] = {
		"Anche l'ultima volta era qui. Comincio a sospettare che questo posto combini gli incontri.",
		"{other}, proprio dove c'è stato l'ultimo incontro. Come se il posto avesse tenuto l'appuntamento da solo.",
	},
	["relation_player.w15.time.021"] = {
		"Stesso terreno, stesso nome. Avrei scommesso il contrario.",
		"Era qui, l'ultima volta. Me lo ricordo perché di quel momento non ricordo quasi nient'altro.",
		"Se passo di qui abbastanza spesso, immagino che ci troverò sempre {other}.",
	},
	["relation_player.w15.time.022"] = {
		"Mi guardo intorno, poi guardo {other}, come se il luogo stesso avesse ricordato.",
		"Qui, nel punto dell'incontro precedente, la figura nota completa il quadro.",
	},
	["relation_player.w15.time.023"] = {
		"Stesso posto, stessa persona. O questo angolo porta fortuna, o semplicemente non ha fantasia.",
		"Nello stesso punto della volta scorsa. Quasi mi aspetto di riprendere il discorso a metà frase.",
	},
	["npc_grief.w16.001"] = {
		"{other} mi ha salutato alla partenza più volte di quante ne ricordi, e c'era sempre quando tornavo giù. Ora all'arrivo non aspetta più nessuno.",
		"Il posatoio è lo stesso, ma la voce che ci stava accanto non c'è più. Ogni partenza, da qui in poi, comincerà un po' più fredda.",
		"{other}. Ogni volo che ho preso da qui cominciava con quella voce.",
	},
	["npc_grief.w16.002"] = {
		"Sono le piccole cose ad andarsene per prime. {other} non mi chiederà più com'è andata la strada.",
		"Il vuoto che resta è piccolo e preciso: grande quanto un saluto, detto ogni volta nello stesso posto.",
		"Adesso là ci starà qualcun altro. Se la caverà bene, e non sarà {other}.",
	},
	["pet_call.w16.hunt.001"] = {
		"{pet} mi raggiunge e si gira dalla stessa parte in cui guardo io. Nessun ordine: non serve.",
		"Di ritorno al mio fianco, {pet} tiene già d'occhio la stessa cosa che guardo io.",
		"{pet} riprende la guardia nel momento stesso in cui arriva, come se non ci fosse stata nessuna pausa.",
	},
	["pet_call.w16.hunt.002"] = {
		"Basta una parola sottovoce e {pet} è lì, mezzo passo avanti, a leggere il terreno prima di me.",
		"{pet} risponde prima che il richiamo sia finito. Una prontezza così viene solo da molte cacce insieme.",
		"Un'occhiata con {pet} sistema ciò che a parole richiederebbe un minuto.",
	},
	["pet_call.w16.hunt.003"] = {
		"Si torna al lavoro, {pet}. Occhi aperti, e resta dove posso trovarti.",
		"Con {pet} qui, qualunque cosa aspetti più avanti dovrà vedersela con due, non con uno.",
		"Su, {pet}. C'è terreno da coprire, e i tuoi occhi ne vedono di più.",
	},
	["pet_call.w16.hunt.004"] = {
		"{pet} arriva con una gran voglia di muoversi. Meglio così: preferisco frenare che trascinare.",
		"Tutta prontezza: {pet} vuole partire prima ancora che io abbia scelto la direzione.",
	},
	["pet_call.w16.hunt.005"] = {
		"Raggiunto il mio fianco, {pet} guarda oltre, al tratto che ho alle spalle. Qualcosa là dietro merita una seconda occhiata.",
		"La prima cosa che fa {pet} è controllare i margini. Ho imparato a guardare dove guarda.",
	},
	["pet_call.w16.hunt.006"] = {
		"Non c'è più bisogno di indicare. {pet} prende il lato che ho lasciato scoperto.",
		"Si volta ancora a cercare un cenno, {pet}, ma meno spesso. Un progresso che si può contare.",
		"Ormai basta mezzo gesto, e l'altra metà la completa {pet}.",
	},
	["pet_call.w16.hunt.007"] = {
		"Due che cacciano come uno solo: un'idea antica, più antica di qualunque città. {pet} e io la teniamo soltanto in vita.",
		"La caccia non è mai stata cosa da uno solo. {pet} lo ha sempre saputo; io ho avuto bisogno che me lo dicessero.",
	},
	["pet_call.w16.hunt.008"] = {
		"{pet} e io non cacciamo più fianco a fianco: è una sola attenzione divisa in due.",
		"Chiamata, risposta, movimento. Con {pet} fra le tre cose non resta nessuna cucitura.",
		"Appena {pet} si muove, mi sto già muovendo anch'io. Non saprei dire chi abbia cominciato.",
	},
	["pet_call.w16.hunt.009"] = {
		"Qui, {pet}. Vicino e in silenzio: la preda non deve sentire niente finché non è troppo tardi.",
		"{pet}, con me. Niente fughe dietro la prima cosa che si muove.",
		"Resta sul mio fianco, {pet}. Allargandosi, le cose sfuggono.",
	},
	["pet_call.w16.hunt.010"] = {
		"Nessuna fretta, tutta calma: così risponde {pet}. Una bestia tranquilla fa un lavoro pulito.",
		"Sazietà, quiete, attenzione: con {pet} così, il lavoro viene bene.",
	},
	["pet_call.w16.hunt.011"] = {
		"Le probabilità sono appena cambiate: {pet} mi raggiunge, e qualunque cosa arrivi se ne accorgerà.",
		"Qualunque cosa ci sia più avanti, {pet} la avvertirà prima di me. Vale moltissimo.",
		"C'è di nuovo {pet}, e già sto in piedi in un altro modo, come chi ha le spalle coperte.",
	},
	["pet_call.w16.hunt.012"] = {
		"{pet} risponde al richiamo, ed è già un inizio. Per arrivare nel punto giusto servirà qualche caccia in più.",
		"{pet} e io stiamo ancora capendo chi sta dove quando conta. Pazienza, da entrambe le parti.",
	},
	["pet_call.w16.hunt.013"] = {
		"Torna con {pet} una quiete, quella di chi sa aspettare. Me la prendo in prestito.",
		"{pet} si sistema accanto a me e si fa immobile. Provo a fare lo stesso, e quasi sempre non ci riesco.",
	},
	["pet_call.w16.hunt.014"] = {
		"{pet} conosce il lavoro quanto me. Certi giorni meglio. È al suo posto prima che il pensiero sia finito.",
		"Tante cacce insieme che ormai {pet} risponde al piano, non al richiamo.",
		"{pet} prende il suo posto, io il mio. Nessuno dei due deve guardare.",
	},
	["pet_call.w16.hunt.015"] = {
		"Due paia d'occhi valgono più di uno. Eccoti qua, {pet}.",
		"{pet} torna con me, e il lato cieco delle cose si richiude.",
	},
	["pet_call.w16.hunt.016"] = {
		"La stessa fame d'inseguimento che ho io, {pet}. Bene.",
		"Zero esitazioni, con {pet}. Basta indicare un guaio, e ci si butta.",
	},
	["pet_call.w16.kin.001"] = {
		"{pet} mi spinge la testa contro la mano e resta così. Va bene. Un momento non farà male.",
		"Un colpetto al gomito, poi {pet} ci mette tutto il suo peso. Ricambio la spinta, piano.",
		"{pet} non si calma finché non ha avuto il suo momento di attenzioni. Glielo concedo: lo volevo anch'io.",
	},
	["pet_call.w16.kin.002"] = {
		"{pet} va al solito posto senza che glielo mostri. L'abitudine è una specie di promessa fra due creature.",
		"Stesso posto, stessa andatura. {pet} ha le sue usanze, e ho imparato a contarci.",
	},
	["pet_call.w16.kin.003"] = {
		"Di slancio, {pet} mi gira intorno due volte prima di fermarsi. Scelgo di prenderlo come un complimento.",
		"Tanta gioia aperta, da parte di {pet}, per un semplice richiamo. Nessun altro mi accoglie così.",
		"{pet} non riesce a decidere dove mettersi, così prova tutti i posti uno dopo l'altro. Mi scappa da ridere, mio malgrado.",
	},
	["pet_call.w16.kin.004"] = {
		"{pet}. Il resto del mondo fa un passo indietro quando c'è, e non mi dispiace.",
		"Con {pet} accanto potrei dimenticare di aver mai camminato da {g:solo|sola}.",
		"Arriva {pet}, e qualcosa in me che stava in guardia si scioglie.",
	},
	["pet_call.w16.kin.005"] = {
		"Un lungo sguardo di {pet}: sono ancora in un pezzo solo, conclude. Poi si sistema.",
		"Prima l'ispezione, poi il benvenuto. {pet} ha il suo ordine delle cose.",
		"Come un furiere che controlla l'equipaggiamento restituito, {pet} mi squadra. A quanto pare, passo l'esame.",
	},
	["pet_call.w16.kin.006"] = {
		"{pet} arriva, ma si ferma un po' più lontano di quanto vorrei. Quella distanza si accorcerà.",
		"{pet} diffida ancora di me, eppure risponde. Per adesso mi basta.",
	},
	["pet_call.w16.kin.007"] = {
		"Che calma imperturbabile, quella di {pet}: la calma di chi ha mangiato bene e dormito meglio.",
		"Nessuna storia, con {pet}. Si accomoda, osserva, aspetta. Compagnia facile.",
		"Arriva la calma insieme con {pet}, come il profumo arriva col pane. Non sapevo che mi mancasse.",
	},
	["pet_call.w16.kin.008"] = {
		"Il silenzio stava diventando un'abitudine. {pet} lo rompe con tutti i piccoli rumori di qualcosa di vivo accanto a me.",
		"C'è {pet}, e mi accorgo solo adesso di quanto tempo sia passato senza nessuno di cui occuparmi.",
	},
	["pet_call.w16.kin.009"] = {
		"{pet} si accuccia a portata di mano, come fa quando si fida del posto che ho scelto.",
		"A portata di braccio, mai più lontano: {pet} l'ha deciso per conto suo, tempo fa.",
		"Il posto da cui vede me e la strada davanti nello stesso momento, {pet} l'ha scelto da sé.",
	},
	["pet_call.w16.kin.010"] = {
		"Controllo {pet} in cerca di botte e graffi, e mi lascia fare. Il permesso è già una forma di ringraziamento.",
		"Un rapido controllo di {pet}: occhi limpidi, movimenti sciolti, niente di nuovo da curare. Bene.",
	},
	["pet_call.w16.kin.011"] = {
		"Esiste un'intesa antica fra chi nutre e chi protegge. {pet} mantiene la sua parte senza che nessuno debba ricordarglielo.",
		"Cibo, riparo, un nome. In cambio {pet} mi dà l'unica cosa che non potrei comprare: una guardia che non si appisola mai in servizio.",
	},
	["pet_call.w16.kin.012"] = {
		"{pet} ha preso le mie abitudini: la pausa a ogni svolta, l'occhiata indietro prima di ripartire. O io ho preso le sue. Difficile dirlo.",
		"Ormai {pet} mi è familiare. Abbastanza da accorgermi della sua assenza prima di quasi ogni altra cosa.",
		"{pet} sembra meno qualcosa che chiamo e più qualcosa da cui torno.",
	},
	["pet_call.w16.kin.013"] = {
		"La distanza e le opinioni, {pet} se le tiene tutte e due, anche quando risponde. Un pasto le ricomprerà.",
		"Con calma, molta calma, risponde {pet}. Giusto: ultimamente ho provveduto poco e male.",
	},
	["pet_call.w16.kin.014"] = {
		"Conto {pet} come certa gente conta le monete: con cura, e con sollievo.",
		"Nemmeno un graffio, per {pet}. Il resto si sistemerà da sé.",
	},
	["pet_call.w16.kin.015"] = {
		"Che accoglienza, da parte di {pet}: come se mancassi da un anno. È passata un'ora, al massimo.",
		"A sentire {pet}, è passata un'eternità. Non è passato quasi niente.",
		"Si direbbe che manchi da un mese, a vedere le feste che fa {pet}.",
	},
	["pet_call.w16.kin.016"] = {
		"Ovunque aspetti {pet} fra un richiamo e l'altro, ne torna uguale. Vorrei poter dire lo stesso delle mie attese.",
		"Esattamente com'era, {pet} ritorna. C'è conforto in qualcosa che conserva la sua forma.",
	},
	["pet_call.w16.kin.017"] = {
		"Con {pet} vicino dormirò a occhi chiusi, tutti e due. Non è poco da concedere a qualcuno.",
		"Accanto al mio zaino, {pet} prende posto come una sentinella esperta. Lascio cadere le spalle.",
	},
	["pet_call.w16.pact.001"] = {
		"Ogni volta le parole si portano via qualcosa di me, e {pet} entra nello spazio che lasciano.",
		"Pago l'evocazione con una moneta che non vedo. Arriva {pet}, e il conto si apre.",
		"Qualcosa esce da me, ed entra {pet}. Questa è l'aritmetica.",
	},
	["pet_call.w16.pact.002"] = {
		"{pet}, al tuo posto. Patti come sempre: tu servi, io decido, nessuno improvvisa.",
		"Stessi termini di sempre, {pet}. Servi bene, e il congedo sarà civile.",
		"{pet}. Conosci i termini. So che li conosci. Saltiamo la parte in cui fingi il contrario.",
	},
	["pet_call.w16.pact.003"] = {
		"C'è un momento, ogni volta, in cui il patto tiene e {pet} decide di rispettarlo. Ho smesso di fingere di non aspettarlo.",
		"{pet} passa e saggia la catena una volta, per principio. Tiene. Finora ha sempre tenuto.",
	},
	["pet_call.w16.pact.004"] = {
		"Con l'aria di chi risponde alla convocazione di un tribunale minore: così si presenta {pet}. E a dire il vero, è proprio così.",
		"Ecco {pet}, col disprezzo appena lucidato. Fa piacere vedere qualcosa tenuto in ordine.",
		"{pet} compare, mi squadra, e in un attimo trova qualcosa da ridire.",
	},
	["pet_call.w16.pact.005"] = {
		"Un patto fresco, e {pet} ne legge ogni parola in cerca di scappatoie. Ho fatto lo stesso, quando l'ho scritto.",
		"I vincoli nuovi scricchiolano. {pet} ci si appoggia per sentire dove cedono.",
	},
	["pet_call.w16.pact.006"] = {
		"La lunga frequentazione rende l'evocazione facile. Troppo facile. {pet} risponde come qualcosa che ha imparato la mia voce a memoria.",
		"{pet} conosce le mie abitudini, e io le sue. Chiamare tutto questo fiducia sarebbe un errore, e ogni volta più facile da commettere.",
	},
	["pet_call.w16.pact.007"] = {
		"Quando {pet} ha risposto, mi controllo come si controllano le tasche uscendo dalla calca. C'è ancora tutto. Per stavolta.",
		"Chiamo {pet}, e per un istante il richiamo sembra arrivare più lontano del necessario.",
	},
	["pet_call.w16.pact.008"] = {
		"Un attrezzo con delle opinioni, ecco cos'è {pet}. L'attrezzo lo tengo affilato, le opinioni corte.",
		"Utile: ecco cos'è {pet}. Utile basta. A una serratura non chiedo di volermi bene.",
		"Né amico né servo, e nemmeno proprio un'arma. {pet} è un contratto che cammina.",
	},
	["pet_call.w16.pact.009"] = {
		"{pet}. Risparmiami quello sguardo. Tu vieni perché devi, e io chiamo perché devo.",
		"Lascia perdere il ghigno, {pet}. Questo accordo non era la prima scelta di nessuno.",
		"Sì, {pet}, sempre io. Contieni l'entusiasmo.",
	},
	["pet_call.w16.pact.010"] = {
		"Comincia ad anticipare la chiamata, {pet}. La chiamerei impazienza, se non sapessi come stanno le cose.",
		"Niente più messinscena: {pet} non mi fa aspettare. La familiarità ha i suoi vantaggi, e i suoi avvertimenti.",
	},
	["pet_call.w16.pact.011"] = {
		"Fra tutte le compagnie possibili, io ho {pet}. Cerco di non chiedermi troppo a lungo cosa dica di me.",
		"Chi viene sempre quando chiamo è {pet}. Ci sono cose peggiori da poter dire, e migliori.",
	},
	["pet_call.w16.pact.012"] = {
		"Parole antiche, debiti più antichi ancora. {pet} risponde agli uni e agli altri, e a me soltanto attraverso loro.",
		"Il patto è più vecchio della mia voce che lo pronuncia. {pet} si piega al patto; io sono solo la mano che lo regge.",
		"Prima parla il patto; {pet} si limita a seguire. Quell'ordine lo tengo sempre a mente.",
	},
	["pet_call.w16.pact.013"] = {
		"Evocare {pet} mi costa sempre un po'. Lo metto in conto come altri mettono in conto le riparazioni.",
		"Il prezzo di {pet} si paga in anticipo, e mai del tutto. Un buon affare, per una delle due parti.",
	},
	["pet_call.w16.pact.014"] = {
		"{pet} prende posizione fra me e il mondo. Non è lealtà. Resta comunque una posizione ben presa.",
		"Da qualunque parte venga il pericolo, {pet} gli starà davanti. È l'unica promessa che ho chiesto.",
		"Davanti, {pet}. Chi vuole me, prima trova te.",
	},
	["pet_call.w16.pact.015"] = {
		"Una parte di me è fiera che {pet} risponda. Quella parte la tengo d'occhio.",
		"{pet} obbedisce, e mi attraversa un piccolo piacere duro. Lo annoto, lo metto via, e non gli do da mangiare.",
	},
	["pet_call.w16.pact.016"] = {
		"{pet} squadra il posto che ho scelto con l'aria di un ospite a una festa molto misera.",
		"Niente ti impressiona, vero, {pet}? Mai. La coerenza è una virtù, perfino in te.",
		"{pet} disapprova tutto quello che vede, me prima di ogni altra cosa. A modo suo, rassicurante.",
	},
	["pet_call.w16.pact.017"] = {
		"{pet} e io teniamo fede a questo patto da così tanto che in certi punti si è levigato. Ci passo sopra il pollice, e mi faccio domande.",
		"Un legame, lo chiamerebbero i libri. {pet} lo chiamerebbe in modo meno educato, e sarebbe più vicino al vero.",
	},
	["pet_call.w16.wry.001"] = {
		"{pet} risponde al richiamo alla velocità che preferisce, che non è quella che ho chiesto io.",
		"Chiamo; {pet} valuta l'offerta. Alla fine, accetta.",
		"Prima o poi, {pet}. Anche prima o poi è una specie di sì.",
	},
	["pet_call.w16.wry.002"] = {
		"Qualunque cosa abbia trovato {pet} per rotolarcisi dentro, ne ha trovata parecchia. Ne parliamo dopo.",
		"Un odore che non riconosco, e non voglio riconoscere, arriva insieme con {pet}. Il ritorno mi fa piacere, l'odore meno: un passo più in là.",
	},
	["pet_call.w16.wry.003"] = {
		"{pet} arriva e si mette subito a fissare qualcosa che io non vedo. Ho deciso di non chiedere.",
		"{pet} torna con me, e ha già più attenzione addosso di quanta ne abbia avuta io in un'ora intera.",
		"{pet} piega la testa di lato come se avessi detto una sciocchezza. Ho detto solo il suo nome.",
	},
	["pet_call.w16.wry.004"] = {
		"Un elenco di lamentele mai dette e mai dimenticate: ecco cosa porta con sé {pet}.",
		"L'evocazione funziona. L'umore di {pet}, no.",
		"Ecco {pet}, che emana tutto il calore di un conto non pagato.",
	},
	["pet_call.w16.wry.005"] = {
		"Se {pet} roteasse gli occhi con più forza, dovrei considerarlo un attacco.",
		"{pet} riesce a far sembrare l'obbedienza un favore che mi concede.",
	},
	["pet_call.w16.wry.006"] = {
		"Almeno uno dei due è felice dell'arrivo di {pet}. Credo proprio di essere io.",
		"Ecco {pet}, con la faccia di un collega richiamato nel giorno di riposo.",
		"A giudicare dall'aria, {pet} scriverà poi un rapporto sul mio conto.",
	},
	["pet_call.w16.wry.007"] = {
		"{pet} è fin troppo felice di vedermi. O sono una compagnia migliore di quanto pensassi, o ha trovato qualcosa da mangiare per strada.",
		"Quanta gioia, da parte di {pet}. Mi lusinga, e un po' mi insospettisce.",
	},
	["pet_call.w16.wry.008"] = {
		"Siamo ancora alla fase in cui si finge di leggersi nel pensiero, {pet} e io. Male, da entrambe le parti.",
		"Patto nuovo, nuova smorfia di sdegno. {pet} sta ancora scegliendo quale indossare.",
	},
	["pet_call.w16.wry.009"] = {
		"Ormai {pet} risponde così in fretta che sospetto fosse già per strada. Forse sente i miei pensieri.",
		"A questo punto potrebbe essere {pet} a chiamare me, e arriverei altrettanto in fretta.",
	},
	["pet_call.w16.wry.010"] = {
		"{pet}, col solito broncio addosso. Nessuno ti ha chiesto di farti piacere la cosa: falla e basta.",
		"La faccia che fa {pet} a ogni evocazione andrebbe studiata da chiunque abbia mai avuto un cattivo padrone.",
	},
	["pet_call.w16.wry.011"] = {
		"In servizio, {pet}, con la dignità di un sergente e la concentrazione di un bambino.",
		"{pet} torna con l'aria indaffaratissima, senza niente da fare. Conosco la tecnica.",
		"L'arrivo, un breve ricordo di dignità, poi la dimenticanza: {pet} fa tutto in un attimo.",
	},
	["pet_call.w16.wry.012"] = {
		"Chiamo, e {pet} viene. La gente dovrebbe prendere appunti.",
		"Una cosa va detta di {pet}: quando chiamo, qualcuno risponde. Non è poco, di questi tempi.",
		"Fra me e {pet}, gli appuntamenti li rispetta una parte sola.",
	},
	["pet_call.w16.wry.013"] = {
		"L'offesa già in mano, {pet}, per qualunque cosa chieda per prima. Chiedo silenzio, per efficienza.",
		"Qualcosa d'oltre il mondo risponde al mio richiamo, ed è {pet}, con l'aria seccata. I grandi misteri, da vicino, sono più piccoli.",
	},
	["pet_call.w16.wry.014"] = {
		"{pet} ha imparato quanto può bighellonare prima che me ne accorga. E sfrutta ogni secondo.",
		"Conoscere {pet} vuol dire imparare il suo senso dell'umorismo. Ce l'ha, e di solito la battuta sono io.",
	},
	["pet_dismiss.w16.alone.001"] = {
		"{pet} se ne va, e mi accorgo di quanta della mia attenzione si appoggiasse a quella presenza. Adesso mi torna tutta addosso, più pesante.",
		"Un guardiano in meno. Lo spazio attorno a me sembra più largo, e meno mio.",
		"Senza {pet} devo ascoltare per due.",
	},
	["pet_dismiss.w16.alone.002"] = {
		"Il silenzio che lascia {pet} non è vuoto, esattamente. Somiglia a una stanza coi mobili spostati.",
		"Il legame si scioglie. Prima viene il sollievo, poi, stranamente, la sensazione di essere allo scoperto.",
	},
	["pet_dismiss.w16.alone.003"] = {
		"Adesso ci sono solo io. Controllo due volte il terreno davanti, come faccio quando nessun altro lo controlla.",
		"Senza {pet} cammino un po' più piano e guardo un po' meglio. Regole semplici, per chi cammina senza compagnia.",
	},
	["pet_dismiss.w16.alone.004"] = {
		"Mandare via {pet} non diventa più facile. Non credo debba diventarlo.",
		"Guardo il punto dove stava {pet} un momento di troppo. Poi mi costringo a guardare avanti.",
		"Va' pure, {pet}. Stavolta sono io a contare le ore.",
	},
	["pet_dismiss.w16.alone.005"] = {
		"{pet} se ne va, e la prima cosa che provo è sollievo. La seconda è che non dovrei provare sollievo per un compagno. Poi mi ricordo che cos'è.",
		"Sollievo, quando {pet} se ne va. Sollievo semplice, pulito. Ho imparato a non vergognarmene.",
		"Senza {pet} torno a essere soltanto me, ed è insieme il sollievo e il problema.",
	},
	["pet_dismiss.w16.alone.006"] = {
		"Mando via {pet}, e i piccoli rumori che avevo smesso di sentire diventano d'un tratto tutto ciò che c'è.",
		"Per un tratto sono per conto mio. Mi accorgo che parlo meno, quando non c'è nessuno che possa non rispondermi.",
	},
	["pet_dismiss.w16.alone.007"] = {
		"{pet} va a riposare, e io raddrizzo le spalle. Certi tratti vogliono un solo paio d'occhi, e silenzioso.",
		"Certi lavori si fanno meglio senza compagnia. {pet} si annoierebbe soltanto, con quel che viene adesso.",
	},
	["pet_dismiss.w16.alone.008"] = {
		"Ciò che mi aveva risposto se n'è andato, e mi resta il dubbio su cos'altro abbia sentito il congedo.",
		"{pet} si ritira. L'aria si posa, ma per un po' continuo a guardarmi alle spalle.",
	},
	["pet_dismiss.w16.rest.001"] = {
		"Va' a riposare, {pet}. In quel tratto hai portato più della tua parte.",
		"Un po' di quiete è il minimo, per {pet}. Mando via la bestia, e la preoccupazione me la tengo io.",
		"A riposare. Qualunque cosa tu sogni, {pet}, spero sia leggera.",
	},
	["pet_dismiss.w16.rest.002"] = {
		"Torna indietro, {pet}, e raccogli quel che vale come forza là dove vai.",
		"Congedo. Un po' di lontananza adesso renderà {pet} più utile dopo.",
		"Vai, {pet}. Quando servirai, lo saprai prima di me.",
	},
	["pet_dismiss.w16.rest.003"] = {
		"Riposa bene, {pet}. Ti chiamerò appena avrò bisogno di te, e non un istante prima.",
		"Ormai {pet} se ne va senza fatica. I congedi sono più semplici fra chi sa che ci sarà una prossima volta.",
		"Dormi, {pet}, o quello che fai. Quando ti chiamerò, sarò proprio qui.",
	},
	["pet_dismiss.w16.rest.004"] = {
		"Riposa, {pet}, e quando torni il cibo sarà migliore. Hai la mia parola.",
		"Vai pure, {pet}, broncio compreso. Una pausa può solo fare bene.",
	},
	["pet_dismiss.w16.rest.005"] = {
		"Che il patto si allenti per un po'. {pet} torna alla sua attesa, e io alla mia.",
		"Il cerchio si chiude dietro {pet}. Qualunque cosa faccia fra un'evocazione e l'altra, la fa lontano da qui.",
	},
	["pet_dismiss.w16.rest.006"] = {
		"Per questo tratto basta lavoro. Vai, {pet}: per un po' faccio la guardia da me.",
		"{pet} aveva l'aria stanca. Forse ci vedo solo la mia stanchezza. In ogni caso, riposo.",
		"Riposa, {pet}. Essere stanchi nel momento sbagliato costa più che restare senza compagnia in quello giusto.",
	},
	["pet_dismiss.w16.rest.007"] = {
		"Per ora non mi servi, {pet}. Vai, prima che mi venga in mente un motivo per trattenerti.",
		"Lascio andare {pet} finché le cose sono tranquille. La calma non dura mai: meglio usarla.",
	},
	["pet_dismiss.w16.rest.008"] = {
		"Su, {pet}: poco lavoro, poco riposo; i tratti lunghi verranno dopo.",
		"Per cominciare basta così, {pet}. Riposa, e torna con un po' meno diffidenza.",
	},
	["pet_dismiss.w16.rest.009"] = {
		"Vai, {pet}. Dopo tanto tempo, congedarti somiglia meno a chiudere una porta che a lasciarla accostata.",
		"Nessuna ultima parola, stavolta, da parte di {pet}. Fra vecchi soci di un cattivo affare, il silenzio è quasi una cortesia.",
	},
	["pet_dismiss.w16.rest.010"] = {
		"In pace e con la pancia piena: così parte {pet}. Il modo migliore di separarsi, nessun debito da nessuna parte.",
		"Cibo, riposo, un congedo di buon umore. Magari tutti avessero la vita di {pet}.",
	},
	["pet_dismiss.w16.wry.001"] = {
		"Come se avesse già in programma di andarsene: così sparisce {pet}. Bisogna riconoscerlo, ben fatto.",
		"Congedo, e {pet} se ne va con l'aria di chi stava per dare le dimissioni.",
		"Senza fretta, {pet} prende congedo, come se andarsene fosse un'idea sua e io avessi solo dato il mio assenso.",
	},
	["pet_dismiss.w16.wry.002"] = {
		"Uno sguardo che promette una lunga conversazione, un giorno: così saluta {pet}. Quel giorno avrò da fare.",
		"Sparisci, {pet}. La compagnia migliora all'istante.",
		"E {pet} se ne va, lasciandosi dietro il disprezzo come un odore.",
	},
	["pet_dismiss.w16.wry.003"] = {
		"Vai, {pet}, e cerca di non tornare con qualcosa che una volta era vivo.",
		"{pet} se ne va senza protestare, il che vuol dire che ha un piano. Lo scoprirò più avanti.",
	},
	["pet_dismiss.w16.wry.004"] = {
		"Il congedo è poca cosa, ma {pet} riesce a trasformarlo in una trattativa persa da me.",
		"Sono io a congedare, eppure, chissà come, la porta in faccia la prendo io.",
	},
	["pet_dismiss.w16.wry.005"] = {
		"Torna dalla tua parte, {pet}, e non salutarmi nessuno.",
		"Trascinandosi dietro la solita opinione di me, {pet} sparisce. Ho sentito di peggio da certi osti.",
		"Va' a tenere il broncio altrove, {pet}. L'altrove è la tua specialità.",
	},
	["pet_dismiss.w16.wry.006"] = {
		"{pet} conosce il congedo così bene che comincia ad andarsene alla prima sillaba. Maleducazione efficiente.",
		"Mezza parola e {pet} sparisce. Ad andarsene ci mette meno che ad arrivare, noto.",
	},
	["pet_dismiss.w16.wry.007"] = {
		"Prima di andarsene, {pet} controlla due volte che io dica sul serio. Un patto nuovo va avanti a sospetti.",
		"I primi congedi sono imbarazzanti per tutti. {pet} esita, io insisto, e il momento passa.",
	},
	["pet_dismiss.w16.wry.008"] = {
		"Va via felice, {pet}, il che è più di quanto ottenga la gente quando la si manda via.",
		"Se ne va di buon umore, come niente fosse. Vorrei conoscere il segreto di {pet}.",
	},
	["pet_dismiss.w16.wry.009"] = {
		"Congedare {pet} mi risparmia un costo che altrimenti continuerei a pagare. Una parsimonia un po' oscura.",
		"Adesso {pet} non serve, e non ha senso pagare per ciò che non uso.",
	},
	["pet_grief.w16.loss.001"] = {
		"{pet} non si rialza. Ripeto il nome un'altra volta, più piano, come se potesse servire.",
		"La mano posata sopra {pet}, e niente che risponda. Il mondo può aspettare un momento.",
		"{pet}. Resta con me. Ti prego.",
	},
	["pet_grief.w16.loss.002"] = {
		"Da un istante all'altro, {pet} non c'è più. Mi dico che un patto si può rinnovare. Il colpo resta lo stesso.",
		"Il vincolo torna indietro vuoto. Qualunque cosa fosse {pet} per me, l'assenza la sento prima nelle mani.",
	},
	["pet_grief.w16.loss.003"] = {
		"Il ritmo con {pet} cominciava appena a venire. Non qui. Non così.",
		"{pet} giace immobile, e mi accorgo di quante abitudini avevo costruito attorno a quella presenza.",
	},
	["pet_grief.w16.loss.004"] = {
		"C'è un silenzio antico che scende quando cade un compagno. Ci sto dentro, insieme con {pet}.",
		"Chi tiene una bestia impara prima o poi quest'ora. La mia è arrivata, {pet}.",
		"Silenzio, adesso, {pet}. Il nome lo custodisco io, finché servirà.",
	},
	["pet_grief.w16.loss.005"] = {
		"Ho passato tanto tempo a sorvegliare {pet} per paura di un tradimento che ho dimenticato di guardarne le spalle.",
		"{pet} cade, e il patto tace. Tutta quella diffidenza, e adesso questo? Dolore, proprio dolore.",
	},
	["pet_mood.w16.glad.001"] = {
		"Attenzione viva, scatti rapidi, soddisfazione per tutto quanto: {pet} è in gran forma.",
		"Qualcosa ha messo {pet} di ottimo umore. Qualunque cosa sia, ne vorrei un po' anch'io.",
		"Con un buon umore come quello di {pet}, è difficile tenere il muso.",
	},
	["pet_mood.w16.glad.002"] = {
		"Sempre a un passo da me, {pet} alza ogni tanto lo sguardo come per dividere una battuta.",
		"C'è una leggerezza nuova nei movimenti di {pet}. Un poco arriva anche a me.",
	},
	["pet_mood.w16.glad.003"] = {
		"Entusiasta della vita, {pet}. Cercherò di non prendermene il merito, e non ci riuscirò.",
		"Una bestia felice al mio fianco. Mi guardo intorno in cerca di ciò che ho fatto di giusto, per poterlo ripetere.",
		"Qualunque cosa metta {pet} di così buon umore, spero sia contagiosa.",
	},
	["pet_mood.w16.glad.004"] = {
		"{pet} è felice, e lo so senza guardare. È questo che dà la strada lunga.",
		"Dopo tanto tempo insieme, il buon umore di {pet} lo sento prima di vederlo.",
	},
	["pet_mood.w16.glad.005"] = {
		"Umore uniforme, per {pet}. Niente lamentele, niente pretese. Un umore da lavoro.",
		"Tranquillità è la parola giusta per {pet}, adesso. Né euforia né malumore: prontezza.",
		"Saldo e costante, l'umore di {pet}: come vorrei averlo io.",
	},
	["pet_mood.w16.glad.006"] = {
		"{pet} ritrova la calma. Invidio la rapidità con cui una bestia perdona un periodo magro, appena c'è da mangiare.",
		"Pace fra me e {pet}, per adesso. Facile da fare, meno da mantenere.",
	},
	["pet_mood.w16.glad.007"] = {
		"{pet} sta bene, e io sto imparando a capirne i segni: lo sguardo più lento, la postura più sciolta.",
		"Capisco che {pet} è a suo agio, adesso. Tempo fa i segni mi sarebbero sfuggiti.",
	},
	["pet_mood.w16.glad.008"] = {
		"{pet} è felice con me. Proprio con me. Un buon segno, così presto.",
		"La prima vera gioia di {pet}. Questa me la ricorderò.",
	},
	["pet_mood.w16.glad.009"] = {
		"Sazietà, riposo, nessuna fretta: {pet} non vuole altro, e per un momento nemmeno io.",
		"Una bestia in pace chiede poco a chiunque. {pet} mi mostra come si fa.",
		"Una contentezza quieta, quella di {pet}. Niente da sistemare, per una volta.",
	},
	["pet_mood.w16.glad.010"] = {
		"La gente si volta a guardare l'allegria di {pet}. Soprattutto guarda me, come per chiedere il segreto.",
		"Buon umore per tutti, a giudizio di {pet}. Io ci rientro, che mi piaccia o no.",
	},
	["pet_mood.w16.sulk.001"] = {
		"Silenzio scontroso, da parte di {pet}. Lo conosco: è quello con il conto allegato.",
		"Un'occhiata acida, quella che {pet} mi rivolge, e la tiene finché non sono io ad abbassare lo sguardo.",
		"Conosco bene lo sguardo che mi lancia {pet}: salario non pagato.",
	},
	["pet_mood.w16.sulk.002"] = {
		"{pet} tiene la testa girata e non incrocia il mio sguardo. Giusto. Ultimamente ho badato poco a questa bestia.",
		"Ha il muso, {pet}, e con ragione. Prima rimedio, poi chiedo qualcosa.",
	},
	["pet_mood.w16.sulk.003"] = {
		"Occhi scontrosi, quelli di {pet}. D'accordo. Prima il cibo, poi il perdono, se mi va bene.",
		"{pet} tiene il broncio senza nasconderlo, come sa fare solo una bestia affamata. Ricevuto.",
		"Fame, malumore e broncio: {pet} ne ha abbastanza della mia trascuratezza.",
	},
	["pet_mood.w16.sulk.004"] = {
		"{pet} mi tiene a distanza, e dopo tanta strada fatta insieme brucia più di un morso.",
		"Conosco {pet} troppo bene per non accorgermene: la testa girata, il passo tenuto appena fuori portata. Il torto è mio.",
	},
	["pet_mood.w16.sulk.005"] = {
		"{pet} ce l'ha con me, e ha imparato benissimo a farlo capire: fa tutto ciò che chiedo, lentamente.",
		"Insieme da abbastanza tempo perché i bronci di {pet} abbiano uno stile. Questo è quello del passo lento. Me lo merito.",
	},
	["pet_mood.w16.sulk.006"] = {
		"Prima un'occhiata acida, poi un'altra, nel caso non avessi colto la prima: così fa {pet}.",
		"Il muso di un soldato a mezza razione, ecco cos'ha {pet}. E mezza razione è più o meno quel che ha avuto.",
		"Di cattivo umore, {pet}, e vuole che io lo sappia. Una bestia imbronciata è una bestia sincera.",
	},
	["pet_mood.w16.sulk.007"] = {
		"Il broncio è passato. {pet} adesso sta solo bene, che è ancora lontano dal perdono, ma è un inizio.",
		"{pet} ha smesso di serbare rancore, o l'ha messo via da qualche parte per dopo. Mi va bene in entrambi i casi.",
		"Serenità ritrovata. Qualunque cosa abbia aggiustato con {pet}, me la segno.",
	},
	["pet_mood.w16.sulk.008"] = {
		"Poca fiducia per ora, e adesso {pet} non incrocia nemmeno il mio sguardo. Prima il cibo, poi si ricomincia da lì.",
		"{pet} tiene già il muso. Un legame nuovo si ammacca facilmente.",
	},
}, "base_relations")
