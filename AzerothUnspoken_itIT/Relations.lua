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
}, "base_relations")
