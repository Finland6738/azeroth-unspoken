-- Testi in italiano degli archi narrativi (step S9): racconto del diario, scelte e battute del narratore.
-- Le regole delle battute stanno in Data/RegistryArcs.lua, la struttura degli archi in Data/Arcs.lua.
-- Regole (GDD §5.4, §7.5): originali, nessuna lore inventata spacciata per canone, nessuna promessa sul gioco; le voci
-- sono private (pensiero e narratore); una scelta non fa dire al personaggio nulla che il giocatore non abbia deciso.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddArcTexts("itIT", {
	path = {
		title = "Il sentiero ritrovato",
		summary = "Sei di nuovo dove il cammino è cominciato. Una storia breve su quanta strada separa chi eri da chi sei, e su come riprenderla.",
		states = {
			DISCOVERED = "Hai ritrovato il luogo da cui è cominciato il tuo cammino. Fermati un momento: la storia aspetta che tu rifletta, qui, su ciò che questo posto è stato.",
			REFLECTED = "Hai guardato il sentiero con occhi nuovi. Adesso resta solo da riprenderlo: quando lascerai questo luogo, la storia si chiuderà.",
			RESOLVED = "Hai ripreso il cammino. Un ricordo di questa storia resta nel diario.",
		},
		choices = {
			reflect = {
				prompt = "Che cosa ti dice, adesso, il luogo da cui è cominciato il tuo cammino?",
				options = {
					gratitude = { label = "Ricordare con gratitudine", note = "Il ricordo di questo luogo è diventato un grazie." },
					distance = { label = "Misurare la strada fatta", note = "Il ricordo è diventato una misura: quanto hai camminato." },
					silence = { label = "Restare in silenzio", note = "Il ricordo è rimasto senza parole." },
				},
			},
		},
	},
	knownface = {
		title = "Un volto noto",
		summary = "Qualcuno che incontri sempre più spesso ha smesso di essere un estraneo. Una storia breve su che cosa farne, di questo conoscersi.",
		states = {
			DISCOVERED = "Ormai vi riconoscete a vicenda. La storia aspetta che la conoscenza cresca: torna a trovare questa persona.",
			REFLECTED = "Hai pensato a che cosa questa persona sia per te. Resta da lasciare che il tempo faccia il resto: la storia si chiude quando il rapporto è maturo.",
			RESOLVED = "La conoscenza è diventata qualcosa di tuo. Un ricordo di questa storia resta nel diario.",
		},
		choices = {
			feeling = {
				prompt = "Che cosa vuoi fare di questa conoscenza?",
				options = {
					thank = { label = "Ringraziare", note = "Il rapporto ha preso la forma di un grazie." },
					remember = { label = "Ricordare", note = "Il rapporto è diventato un'immagine da custodire." },
					distance = { label = "Tenere le distanze", note = "Il rapporto resta cortese e senza nomi." },
				},
			},
		},
	},
	fallen = {
		title = "Il luogo della caduta",
		summary = "Una caduta lascia un segno nel luogo in cui è avvenuta. Una storia breve su come tornarci e su ciò che ci si porta dietro quando si prosegue.",
		states = {
			DISCOVERED = "C'è stata una caduta, e poi un ritorno in piedi. Il luogo aspetta di essere rivisto: la storia prosegue quando ci tornerai.",
			REFLECTED = "Hai rivisto il luogo della caduta e scelto come starci. Resta da proseguire: al prossimo livello la storia si chiude.",
			RESOLVED = "Hai proseguito. Un ricordo di questa storia resta nel diario.",
		},
		choices = {
			stance = {
				prompt = "Ora che sei di nuovo qui: come stai in questo luogo?",
				options = {
					silence = { label = "Un momento di silenzio", note = "Hai lasciato che il luogo si ricordasse da solo." },
					prepare = { label = "Rimettere in ordine ciò che porti", note = "Hai trasformato la caduta in prudenza." },
					onward = { label = "Proseguire senza voltarti", note = "Hai rifiutato di dare alla caduta l'ultima parola." },
				},
			},
		},
	},
	capitals = {
		title = "Le tre porte",
		summary = "Chi cammina da una capitale all'altra impara che ogni città ha le sue mura e le sue porte. Una storia breve su che cosa si cerca, varcandole.",
		stateNames = { JOURNEY = "tre porte attraversate" },
		states = {
			DISCOVERED = "Hai varcato le mura di un'altra capitale. La storia aspetta che tu ne abbia attraversate tre.",
			JOURNEY = "Hai attraversato tre capitali. Dopo qualche minuto, dal diario, la storia ti chiederà che cosa cercavi: quando vorrai.",
			REFLECTED = "Hai risposto. Resta da lasciare le mura e riprendere la strada aperta.",
			RESOLVED = "Hai lasciato le mura per la strada aperta. Un ricordo di questa storia resta nel diario.",
		},
		choices = {
			meaning = {
				prompt = "Che cosa cerchi, ogni volta che varchi le mura di una capitale?",
				options = {
					shelter = { label = "Un riparo", note = "Ogni capitale è diventata un modo di dire riposo." },
					crossroads = { label = "Un crocevia", note = "Le capitali sono incroci: voci diverse, una stessa soglia." },
					promise = { label = "Una promessa", note = "Le mura servono a rendere il ritorno una promessa." },
				},
			},
		},
	},
	nemesis = {
		title = "Nemesi",
		subjectTitle = "L'ombra di {name}",
		summary = "Certi nemici non si dimenticano a battaglia finita. Uno di loro ti ha spezzato la strada, e ora la sua ombra si allunga sulle miglia a venire: una storia che cresce ogni volta che ti abbatte, e finisce soltanto con la sua caduta.",
		stateNames = { MARKED = "il segno", HAUNTED = "l'ombra lunga", SWORN = "la contesa" },
		states = {
			MARKED = "Ti ha abbattuto una volta. Adesso ne conosci la sagoma: la storia aspetta un nuovo incontro, o la sua caduta.",
			HAUNTED = "Ti ha abbattuto due volte. La strada continua a riportarti da quella parte: la storia si fa più fonda a ogni caduta, e finisce soltanto con la sua.",
			SWORN = "Tre volte e più ha avuto la meglio. Non è più un caso ma una contesa: la storia finisce quando cadrà per mano tua.",
			RESOLVED = "La sua caduta è venuta per mano tua. L'ombra si leva dalla strada, e un ricordo di questa storia resta nel diario.",
		},
	},
}, "base_arcs")

NS:AddTexts("itIT", {
	---------------------------------------------------------------------------
	-- Il sentiero ritrovato
	---------------------------------------------------------------------------
	["arc.path.open.i"] = {
		"{zone}. Il sentiero sotto i piedi è lo stesso, o forse sono io a percorrerlo in un altro modo.",
		"Qui ho mosso i primi passi, a mani vuote e con troppe domande. Chissà quante ne ho sciolte, da allora.",
		{ "Sono {g:tornato|tornata} dove è cominciato tutto. Non pensavo che mi sarebbe mancato.", depth = "natural" },
		{ "Ogni strada che ho percorso nasce da questa. Per un istante la sento intera, come un filo teso alle mie spalle.", depth = "elevated" },
	},
	["arc.path.open.e"] = {
		"si ferma dove il sentiero ha inizio e lascia che il ricordo arrivi prima dei passi.",
		"ritrova {zone} come si ritrova un vecchio libro: le pagine sono le stesse, è la lettura a essere cambiata.",
	},
	["arc.path.refl.gratitude"] = {
		"Grazie, a chi mi ha indicato la strada e a chi mi ha lasciato smarrirla. Senza entrambi non sarei qui.",
		"Una gratitudine silenziosa, senza nomi. Basta che sia vera.",
	},
	["arc.path.refl.distance"] = {
		"Guardo indietro e conto i passi. Non sono pochi. Non sono nemmeno abbastanza.",
		"Quanta strada, da qui. Ma la misura non è nei passi: è in ciò che ho smesso di temere.",
	},
	["arc.path.refl.silence"] = {
		"Nessuna parola. Il vento ha già detto ciò che c'era da dire.",
		"Ci sono posti in cui il silenzio è l'unica risposta onesta.",
	},
	["arc.path.done.gratitude"] = {
		"riprende il cammino con la leggerezza di un debito riconosciuto. Il sentiero ritrovato resta alle spalle, ma non è più lontano.",
		"lascia la soglia con un grazie che nessuno ha sentito. Qualcosa, nel passo, si è fatto più morbido.",
	},
	["arc.path.done.distance"] = {
		"si volta una sola volta, a misurare la strada fatta, e poi guarda avanti: il resto è tutto ancora da camminare.",
		"lascia il luogo dove tutto è cominciato sapendo, adesso, quanto in là può portare un primo passo.",
	},
	["arc.path.done.silence"] = {
		"se ne va in silenzio, come era arrivato il ricordo: senza bussare. Il sentiero lo sa: certe storie si chiudono meglio taciute.",
		"riprende la strada senza una parola. Il vento, dietro, copre le orme con la discrezione di un vecchio amico.",
	},

	---------------------------------------------------------------------------
	-- Un volto noto ({other} è il nome della persona dell'arco)
	---------------------------------------------------------------------------
	["arc.face.open.i"] = {
		"Ormai riconosco {other} da lontano: il passo, la voce, il modo di aspettare. Non so dire quando sia successo, ma è un volto noto.",
		"Di {other} so poco, e tuttavia basta: tra tutte le persone di questa strada è una che saluto per nome.",
		{ "Passo da {other} e mi viene da sorridere. Dev'essere così, quando qualcuno comincia a contare.", depth = "natural" },
	},
	["arc.face.open.e"] = {
		"scambia con {other} un cenno che non ha bisogno di parole: da qualche tempo, tra loro, i saluti hanno smesso di essere un obbligo.",
		"{other} alza lo sguardo prima ancora che i passi si fermino. È così che si capisce di non essere più un forestiero.",
	},
	["arc.face.refl.thank"] = {
		"Un giorno dovrò dire grazie a {other}, e dirlo bene. Per ora lo dico così, a mezza voce.",
		"Non so se {other} se ne accorga, ma certe gentilezze pesano più di una moneta.",
	},
	["arc.face.refl.remember"] = {
		"Voglio ricordare {other} com'è adesso: il tono, la fretta, la stanchezza. Le persone cambiano, e di rado avvisano.",
		"Se un giorno {other} non fosse più lì all'ora di sempre, vorrei almeno ricordare com'era avere qualcuno ad aspettare.",
	},
	["arc.face.refl.distance"] = {
		"Conosco {other}, e basta così. Ci sono rapporti che reggono proprio perché nessuno li chiama per nome.",
		"Un cenno, una moneta, una porta aperta. Tenere le distanze non vuol dire non essere grati.",
	},
	["arc.face.done.thank"] = {
		"dice a {other} una parola di ringraziamento, breve e vera. La parola viene raccolta senza farne caso, come si raccoglie ciò che si sapeva già.",
	},
	["arc.face.done.remember"] = {
		"si ferma ancora un istante con {other}, solo per fissare l'immagine: il resto lo farà il tempo. Un volto noto è fatto anche di questo.",
	},
	["arc.face.done.distance"] = {
		"saluta {other} come sempre, a metà strada tra la cortesia e il silenzio. Va bene così: alcune storie si scrivono a margine.",
	},

	---------------------------------------------------------------------------
	-- Il luogo della caduta
	---------------------------------------------------------------------------
	["arc.fall.open.i"] = {
		"Sono {g:caduto|caduta} e mi sono {g:rialzato|rialzata}. La seconda cosa è più difficile da raccontare della prima.",
		"Quel punto del cammino conserva ancora il mio peso, da qualche parte. Un giorno ci tornerò, a guardarlo in faccia.",
		{ "Un giorno devo tornare là, dove sono {g:caduto|caduta}. Non adesso.", depth = "natural" },
	},
	["arc.fall.open.e"] = {
		"si rialza con la polvere ancora addosso e un pensiero che non vuole andarsene: ci sono luoghi che aspettano di essere rivisti.",
	},
	["arc.fall.refl.silence"] = {
		"Qui. Non dico niente, perché non c'è niente da aggiungere. Il posto si ricorda da solo.",
		"Un minuto di silenzio, per me e per tutti quelli che qui hanno perso più di una battaglia.",
	},
	["arc.fall.refl.prepare"] = {
		"Controllo le cinghie, conto le provviste, rimetto in ordine ciò che porto. Se cadrò ancora, sarà con le cose al loro posto.",
		"La prossima volta, qui, sarò più {g:pronto|pronta}. Non è coraggio: è mestiere.",
	},
	["arc.fall.refl.onward"] = {
		"Non mi volto. Il passato ha già avuto il suo turno; adesso tocca alla strada.",
		"Passo oltre il luogo della caduta senza rallentare. Rallentare sarebbe già darle ragione.",
	},
	["arc.fall.done.silence"] = {
		"sale un altro gradino e sente, per la prima volta da quel giorno, il silenzio farsi più leggero. Ciò che è caduto in quel luogo non pesa più allo stesso modo.",
	},
	["arc.fall.done.prepare"] = {
		"sale di livello come si stringe una fibbia: con cura, sapendo che reggerà. Dove c'era una caduta, adesso c'è un'abitudine alla prudenza.",
	},
	["arc.fall.done.onward"] = {
		"sale ancora, e il luogo della caduta resta indietro, piccolo come ogni cosa vista dal sentiero che prosegue.",
	},

	---------------------------------------------------------------------------
	-- Le tre porte
	---------------------------------------------------------------------------
	["arc.gates.open.i"] = {
		"{zone}: un'altra città, un'altra cerchia di mura. Comincio a riconoscere in che cosa le capitali si somigliano, e in che cosa no.",
		"Un'altra capitale ancora, e già il mondo mi sembra più piccolo e più grande insieme.",
	},
	["arc.gates.open.e"] = {
		"varca le mura di {zone} con la polvere di un'altra capitale ancora sugli stivali. Le porte delle città hanno un loro modo di accogliere chi viene da lontano.",
	},
	["arc.gates.journey.i"] = {
		"Tre capitali, tre porte attraversate. Se un giorno mi chiederanno dove sono {g:stato|stata}, avrò più di un nome da dire. Ci penserò con calma.",
		"Le tre porte sono alle mie spalle. Quando sarò {g:pronto|pronta}, mi chiederò che cosa cercavo, passando di qua.",
	},
	["arc.gates.refl.shelter"] = {
		"Cerco un tetto sotto cui il rumore del mondo diventi un mormorio. Ogni capitale, in fondo, è un modo diverso di dire riposa.",
		"Un riparo: l'unica cosa che non si indossa, e che pure ci si porta dietro.",
	},
	["arc.gates.refl.crossroads"] = {
		"Un crocevia. Le capitali sono i posti in cui le strade smettono di essere mie e diventano di tutti.",
		"Cerco incroci: voci diverse, stesse mura, la possibilità di imboccare una strada che non avevo previsto.",
	},
	["arc.gates.refl.promise"] = {
		"Una promessa. Entro nelle città per ricordarmi che c'è qualcosa da difendere, e che qualcuno lo sta già facendo.",
		"Cerco ciò per cui vale la pena tornare. Le mura servono a questo: a fare del ritorno una promessa.",
	},
	["arc.gates.done.shelter"] = {
		"lascia le mura con il calore della città ancora sulla pelle, come un mantello che l'aria aperta non riesce a portare via.",
	},
	["arc.gates.done.crossroads"] = {
		"esce dalla porta e sceglie una direzione a caso tra tutte quelle possibili. Il crocevia, adesso, se lo porta dietro.",
	},
	["arc.gates.done.promise"] = {
		"attraversa il portone verso la strada aperta, e la promessa fatta tra le mura procede al suo passo, leggera e ostinata.",
	},

	---------------------------------------------------------------------------
	-- La nemesi (N7, #219): {other} è il nome della nemesi
	---------------------------------------------------------------------------
	["arc.nemesis.done.e"] = {
		"vede infine cadere {other}. L'ombra stesa sulla strada si leva, e la strada torna a essere soltanto una strada.",
		"guarda cadere {other}, e per un lungo istante il mondo tace, come se anche lui avesse trattenuto il fiato.",
	},
	["arc.nemesis.done.i"] = {
		"È finita. {other} non si muove più, e la strada davanti è di nuovo soltanto una strada.",
		"Così finisce la storia di {other}. Da qualche parte, immagino, qualcuno ne farà un canto.",
	},
	["arc.nemesis.haunt.i"] = {
		"Ancora {other}. Due volte, ormai: qualunque cosa custodisca, ci vado a sbattere ogni volta.",
		"Due volte per la stessa mano. Comincio a conoscere i modi di {other} meglio della strada di casa.",
	},
	["arc.nemesis.meet.e"] = {
		"scorge {other}, e la vecchia ombra si muove sulla strada.",
	},
	["arc.nemesis.meet.haunted.i"] = {
		"Di nuovo {other}. Due volte mi ha chiuso la strada; preferirei che non fossero tre.",
		"Ecco: {other}. Le mani ricordano prima di me.",
	},
	["arc.nemesis.meet.marked.i"] = {
		"{other}. L'ultima volta, quell'incontro è finito nella polvere.",
		"Quella sagoma la conosco. {other}, e il ricordo della polvere.",
	},
	["arc.nemesis.meet.sworn.i"] = {
		"{other}. Ogni caduta portava qui. Che questa sia l'ultima, in un modo o nell'altro.",
		"Ormai ci conosciamo fin troppo, {other} e io.",
	},
	["arc.nemesis.open.e"] = {
		"si rialza dalla polvere con un nome piantato nella memoria come una scheggia: {other}.",
		"riprende la strada, e la strada adesso ha un'ombra che si chiama {other}.",
	},
	["arc.nemesis.open.i"] = {
		"{other}. Ricorderò quel nome, e la terra su cui sono {g:caduto|caduta}.",
		"Non tutti i nemici si dimenticano a battaglia finita. {other} non lo dimenticherò.",
		{ "{other} ha avuto la meglio. La prossima volta saprò che cosa ho davanti.", depth = "natural" },
	},
	["arc.nemesis.sworn.e"] = {
		"si rimette in piedi ancora una volta, e il nome di {other} non è più un ricordo ma una direzione.",
	},
	["arc.nemesis.sworn.i"] = {
		"Tre volte {other} mi ha visto a terra. Non è più un caso: è una strada da percorrere fino in fondo.",
		"{other}. Certi debiti si contano in cadute, e io ne ho contate abbastanza.",
	},
	-- N9 (#221): the nemesis again (N7): a second fall told by the narrator, meetings, the opening and the fall in other tones
	["arc.nemesis.done.ironic.i"] = {
		"Giù {other}. Gongolerei, ma le mie ginocchia ricordano troppo.",
		"{other}, finalmente. Chiamate un bardo: sono troppo {g:stanco|stanca} per gonfiare la storia da {g:solo|sola}.",
	},
	["arc.nemesis.done.still.e"] = {
		"resta a lungo accanto a {other}, a terra, e lascia che il silenzio dica ciò che le parole non direbbero.",
		"guarda a lungo {other} a terra. Qualunque cosa fosse dovuta, è pagata.",
	},
	["arc.nemesis.done.stoic.i"] = {
		"{other} è a terra. Nessuna esultanza: solo il fiato che mi esce, lungo e lento.",
		"Quella era la fine di {other}. Un debito chiuso. Mi sento più {g:leggero|leggera}, e più {g:vecchio|vecchia}.",
	},
	["arc.nemesis.haunt.e"] = {
		"si rialza dalla polvere per la seconda volta, e in entrambe l'ombra aveva un solo nome: {other}.",
		"si rimette in piedi a fatica e conta: due volte, ed entrambe {other}.",
	},
	["arc.nemesis.meet.ironic.i"] = {
		"{other}. Dovremmo smettere di vederci così. Possibilmente con me in piedi, alla fine.",
		"Ah, bene. {other}. Il mio modo preferito di guardare il terreno da vicino.",
	},
	["arc.nemesis.meet.night.i"] = {
		"{other}, nel buio. Certo che doveva essere il buio.",
		"Notte, e {other} là dentro. Il polso l'ha saputo prima degli occhi.",
	},
	["arc.nemesis.meet.stoic.i"] = {
		"{other}. Niente più paura, solo il conto. Saldiamolo.",
		"Tre cadute fanno una lunga lezione. {other}, l'ho imparata.",
	},
	["arc.nemesis.open.ironic.i"] = {
		"{other}. Mi ricorderò di te, il che è più di quanto farai tu per me.",
		"Bene. Adesso {other} ha una storia, e purtroppo ce l'ho anch'io.",
	},
	["arc_open.w15.capitals.001"] = {
		"Una seconda grande città. Una è un luogo; due cominciano a sembrare un disegno.",
		"{zone}. Con due capitali nel conto comincio a fare paragoni, e mi sembra un po' scortese.",
		"Due delle grandi città, ormai. Non me ne intendo, ma non sono più del tutto a digiuno.",
	},
	["arc_open.w15.capitals.002"] = {
		"rallenta sulla soglia di {zone}, e lascia che il nome si posi prima di entrare.",
		"entra nella grande città col passo misurato di chi, in silenzio, la confronta con un'altra.",
	},
	["arc_open.w15.capitals.003"] = {
		"Ogni grande città pare convinta di essere il centro del mondo. Non possono avere tutte ragione, ed è metà del divertimento.",
		"Un secondo centro del mondo. Dovrò tenerne l'elenco.",
	},
	["arc_open.w15.capitals.004"] = {
		"Porte diverse, e per arrivarci la stessa strada sotto i piedi. Comincio a vedere come si collega tutto.",
		"Le strade di ogni dove finiscono davanti a una porta come questa. È la seconda che attraverso.",
		"Ogni strada si raccoglie da qualche parte. Questo è uno dei punti in cui succede.",
	},
	["arc_open.w15.capitals.005"] = {
		"si ferma appena oltre l'ingresso per orientarsi, come chiunque in una grande città non ancora imparata a memoria.",
		"si prende un attimo per capire da che parte andare, con la pazienza di chi l'ha già fatto una volta.",
		"si concede un momento all'ingresso, adattando lo zaino e il passo alla misura del posto.",
	},
	["arc_open.w15.capitals.006"] = {
		"Una capitale in più, e un intero assortimento nuovo di cose che probabilmente non dovrei toccare.",
		"Grandi città, al plurale ormai. Ognuna con le sue usanze da sbagliare; cercherò di sbagliarle con educazione.",
	},
	["arc_open.w15.capitals.007"] = {
		"Ogni grande città sembra rispondere a una domanda diversa. Quella di questa non l'ho ancora capita.",
		"Due capitali. Comincio a sospettare che ognuna sia una risposta diversa alla stessa domanda.",
	},
	["arc_open.w15.capitals.008"] = {
		"osserva {zone} con il doppio sguardo di chi viaggia: ciò che c'è qui, e ciò che l'altra città aveva al suo posto.",
		"si guarda intorno con l'aria un po' assente di chi mette una città accanto all'altra, nella propria testa.",
	},
	["arc_open.w15.capitals.009"] = {
		"In una grande città nessuno bada a chi passa. L'ho scoperto due volte, ormai, e mi piace ogni volta di più.",
		"C'è una libertà nell'essere piccoli in un posto grande. Seconda capitale, e la sensazione regge.",
		"{zone}: abbastanza grande da sparirci dentro. C'è del riposo, in questo.",
	},
	["arc_open.w15.fallen.001"] = {
		"Continuo a rivedere il punto. Non il momento: solo il terreno, e quello che c'era intorno.",
		"Mi resta in mente il posto più della caduta. Strano, quello che la memoria sceglie di tenere.",
	},
	["arc_open.w15.fallen.002"] = {
		"fa girare una spalla rigida, poi l'altra, e lancia un'occhiata nella direzione in cui stavano i guai.",
		"resta un momento a saggiare ogni arto, con uno sguardo oltre la spalla verso un punto lasciato indietro.",
	},
	["arc_open.w15.fallen.003"] = {
		"In questo mondo la morte a volte ti lascia uscire di nuovo. Non per questo entrarci diventa più facile.",
		"Tornare non cancella l'andarsene. Sono successe entrambe le cose; devo solo tenerle insieme.",
		"{g:Morto|Morta}, e poi no. Vorrei un momento per capirlo, prima che succeda qualsiasi altra cosa.",
	},
	["arc_open.w15.fallen.004"] = {
		"Che lezione di umiltà. Non l'ha visto nessuno, a parte la terra, e nemmeno la terra se ne scorderà.",
		"Da una cosa così non si torna con dignità. Mi accontento di stare in piedi.",
		"Promemoria: non era quella la strada.",
	},
	["arc_open.w15.fallen.005"] = {
		"Non mi servirà una mappa per ritrovare quel posto. Ormai è segnato, se non altrove, su di me.",
		"Quel punto mi attira già. Ogni volta che ci passerò vicino, lo saprò.",
	},
	["arc_open.w15.fallen.006"] = {
		"riprende la strada con una cura nuova in ogni passo, come chi ha imparato che cosa la terra può riprendersi.",
		"va avanti con più cautela di prima, lo sguardo sul sentiero come se quello avesse cambiato idea sul suo conto.",
		"riprende la strada più adagio, come se contasse quanta pazienza resta alla terra.",
	},
	["arc_open.w15.fallen.007"] = {
		"Ho paura di tornarci? Non molta. Un po'. Abbastanza da accorgermene.",
		"Il pensiero di quel posto mi resta sullo stomaco. Ci tornerò quando peserà meno.",
	},
	["arc_open.w15.fallen.008"] = {
		"Che quel posto si tenga il peggio. Io mi porto via la lezione, e il resto lo lascio dov'è caduto.",
		"Un patto, allora: la terra si tiene la caduta, io quello che mi ha insegnato.",
	},
	["arc_open.w15.fallen.009"] = {
		"si siede un momento prima di ripartire, le mani sulle ginocchia, finché tutto non torna a sembrare normale.",
		"ci mette un po' a rimettersi in cammino, e quando lo fa è senza fretta.",
		"si scuote di dosso la polvere che c'è e resta un poco in silenzio, senza fretta.",
	},
	["arc_open.w15.fallen.010"] = {
		"Giù una volta, su una volta. Intendo tenere il conto in pari.",
		"Mi ha {g:buttato|buttata} giù. Non mi ha {g:tenuto|tenuta}. Questa è la parte da ricordare.",
	},
	["arc_open.w15.knownface.001"] = {
		"Avevo già il nome in mente prima ancora di guardare bene: {other}. Da quando succede?",
		"Non devo più pensarci, a chi sia {other}. A un certo punto ha smesso di servire.",
		"Il nome di {other} mi è venuto in mente da solo. Non mi ero mai {g:messo|messa} in testa di ricordarlo.",
	},
	["arc_open.w15.knownface.002"] = {
		"Un volto che riconosco senza sforzo: {other}. È così che scopri di tornare sempre negli stessi posti.",
		"Se perfino {other} comincia a sembrarmi familiare, vuol dire che giro in tondo più di quanto ammetterei.",
		"Buffo: non avevo intenzione di conoscere nessuno. Con {other} è successo lo stesso.",
	},
	["arc_open.w15.knownface.003"] = {
		"accenna verso {other} il saluto breve che si tiene per chi non ha più bisogno di presentazioni.",
		"stavolta, con {other}, lascia perdere i saluti formali: basta un cenno, e sembra sufficiente.",
	},
	["arc_open.w15.knownface.004"] = {
		"Ormai conosco bene il volto di {other}. Se il mio sia altrettanto noto, non saprei dirlo, e scopro che non m'importa.",
		"Per me, perlomeno, {other} è un volto familiare. Che cosa sia io dall'altra parte, chissà.",
	},
	["arc_open.w15.knownface.005"] = {
		"Stessa voce, stessi modi, ogni volta che vedo {other}. Con tutto il resto che cambia da un miglio all'altro, mi va bene così.",
		"Certe persone sono punti fermi che rispondono quando parli. Tra i miei, adesso, c'è {other}.",
		"Per strada, almeno con {other}, non devo capire tutto da capo ogni volta.",
	},
	["arc_open.w15.knownface.006"] = {
		"si trattiene con {other} un momento più del necessario, per una ragione che nessuno direbbe ad alta voce.",
		"resta ancora un po' con {other} quando la faccenda è sbrigata, come se andarsene subito, ormai, fosse scortese.",
	},
	["arc_open.w15.knownface.007"] = {
		"Su strade piene di sconosciuti, un volto che non lo è conta più di quanto dovrebbe. Quello di {other} conta.",
		"Quasi tutte le persone che incrocio non le rivedrò mai. {other} continua a esserci, e ho cominciato a farci conto.",
		"{g:Straniero|Straniera} quasi ovunque. Qui, con {other}, un po' meno.",
	},
	["arc_open.w15.knownface.008"] = {
		"Attenzione. Ancora una visita, e con {other} comincerò a chiedere come vanno le cose, e ad ascoltare davvero la risposta.",
		"Comincia così: una faccia nota, {other}, poi due chiacchiere, poi t'importa davvero di come va.",
	},
	["arc_open.w15.knownface.009"] = {
		"riconosce {other} al primo sguardo, e le spalle {g:gli|le} si sciolgono un poco.",
		"scorge {other} e smette, si vede, di prepararsi a uno sconosciuto.",
		"assume con {other} i modi sciolti che si tengono per i volti che non c'è bisogno di indovinare.",
	},
	["arc_open.w15.knownface.010"] = {
		"Ogni volto noto è un piccolo pegno lasciato alla sorte, anche quello di {other}. Preferirei non pensarci, e quindi ci penso.",
		"Conoscere {other} ha i suoi rischi: un giorno quel volto non ci sarà, e me ne accorgerò.",
	},
	["arc_open.w15.knownface.011"] = {
		"{other}. Un nome e un modo di fare: è tutto ciò che so, e del modo, almeno, mi fido.",
		"Di {other} non so quasi niente, se non che le cose le fa sempre per bene. Vale più di qualsiasi chiacchiera.",
	},
	["arc_open.w15.knownface.012"] = {
		"sta quasi per dire il nome di {other} prima ancora di scambiare una parola, poi si accontenta di un cenno.",
		"si sorprende a metà di un saluto fin troppo confidenziale verso {other}, e lo lascia finire lo stesso.",
		"fa un cenno verso {other} prima ancora di averlo deciso, e tanto basta.",
	},
	["arc_open.w15.nemesis.001"] = {
		"{other}. Un nome che non ho mai chiesto di imparare, e che ho imparato a mie spese.",
		"Certi nomi si imparano chiacchierando. Quello l'ho imparato da terra.",
	},
	["arc_open.w15.nemesis.002"] = {
		"Continuo a ripensarci, a cercare il mio errore. Forse non c'era. Sarebbe peggio.",
		"Se avessi fatto una cosa in modo diverso... Non riesco a capire quale. È questo che mi rode.",
		"Sfortuna? Un errore di valutazione? La risposta conta più di quanto dovrebbe.",
	},
	["arc_open.w15.nemesis.003"] = {
		"si rialza piano e pronuncia un nome solo, sottovoce, come qualcosa da mettere da parte per dopo.",
		"dice {other} una volta, piano, come si annota un debito.",
	},
	["arc_open.w15.nemesis.004"] = {
		"Appunto per il futuro: {other}. Da non avvicinare alla leggera, o per niente, senza un piano.",
		"Lezione imparata, al solito prezzo. La prossima volta farò attenzione prima, non dopo.",
		"Umiltà, appena guadagnata. Roba cara.",
	},
	["arc_open.w15.nemesis.005"] = {
		"Ha vinto, una volta. Una vittoria non decide niente, e sul resto intendo dire la mia.",
		"Uno a zero per {other}. Il conto è aperto, e dalla mia parte non ho finito di segnare.",
		"Ha vinto una ripresa. Una ripresa non è un incontro.",
	},
	["arc_open.w15.nemesis.006"] = {
		"resta a lungo, dopo, a prendere le misure di un nemico che gliele ha prese per primo.",
		"guarda indietro verso il punto in cui è successo, e impara la strada come si impara un avvertimento.",
	},
	["arc_open.w15.nemesis.007"] = {
		"Ho sempre saputo che là fuori c'è chi è più forte di me. Adesso ha un nome.",
		"La forza in astratto è facile da rispettare. {other} l'ha resa concreta.",
		"Una cosa è sapere di poter morire, un'altra sapere chi può farlo. Ho imparato la seconda.",
	},
	["arc_open.w15.nemesis.008"] = {
		"Non è finita. Sembra finita solo dal punto in cui sta {other}.",
		"Chiuso? Nemmeno per sogno. Quella era la prima parola, non l'ultima.",
	},
	["arc_open.w15.nemesis.009"] = {
		"ricontrolla l'equipaggiamento con una cura improvvisa e scrupolosa, come chi ha appena visto l'alternativa.",
		"conta due volte ciò che resta nello zaino, e aggrotta la fronte davanti al totale.",
		"si siede a sistemare ciò che si può sistemare, adagio e in silenzio.",
	},
	["arc_open.w15.nemesis.010"] = {
		"Quello che mi resta non è la fine. È l'istante prima, quando pensavo ancora che stesse andando bene.",
		"La cosa peggiore da ricordare è quanto mi sentivo {g:sicuro|sicura}, fino al momento in cui ho smesso.",
		"Fino all'ultimo ho creduto di avercela fatta. È questo che brucia.",
	},
	["arc_open.w15.nemesis.011"] = {
		"Qualunque cosa stia facendo adesso {other}, non sta gongolando. Gongolare, almeno, sarebbe una cosa personale.",
		"L'offesa vera è che, dall'altra parte, sarà sembrata una faccenda qualunque.",
	},
	["arc_open.w15.nemesis.012"] = {
		"serra la mascella, guarda una volta verso dove è successo, e non è lo sguardo di chi si arrende.",
		"si allontana dal luogo dello scontro con la calma di chi lo archivia tra le cose in sospeso.",
	},
	["arc_open.w15.nemesis.013"] = {
		"È una strana vicinanza, essere {g:abbattuto|abbattuta} da un nemico preciso. Di {other} non so nulla, tranne l'unica cosa che conta.",
		"Un solo incontro, e già è ciò che conosco meglio di questo tratto di strada.",
	},
	["arc_open.w15.path.001"] = {
		"La strada mi ha riportato al punto di partenza. Quando sono {g:partito|partita} sapevo quasi niente; mi piace pensare che il conto sia cresciuto.",
		"Al punto di partenza. Qualunque cosa abbia imparato, questo posto ricorda soltanto com'ero: senza sapere niente.",
	},
	["arc_open.w15.path.002"] = {
		"Qui niente mi chiede dove sono {g:stato|stata}. I luoghi ti lasciano andare senza una parola e ti riprendono allo stesso modo.",
		"Questo posto non si è accorto che me n'ero {g:andato|andata}. Immagino sia un modo di dare il bentornato.",
		"{zone} non ha detto niente, mentre ero via. Giusto così: nemmeno io.",
	},
	["arc_open.w15.path.003"] = {
		"rallenta mentre {zone} {g:gli|le} si apre intorno, e confronta un vecchio ricordo con il terreno sotto i piedi.",
		"si attarda un momento sul limite del posto dove tutto è cominciato, e misura il ricordo su ciò che c'è davvero.",
	},
	["arc_open.w15.path.004"] = {
		"Chi è {g:partito|partita} da qui non mi riconoscerebbe. O mi riconoscerebbe, e ne resterebbe {g:sorpreso|sorpresa} in silenzio.",
		"Se incrociassi su questo sentiero chi ero alla partenza, mi chiedo chi si farebbe da parte per {g:primo|prima}.",
		"Qui ero qualcun altro. Non peggiore: solo più {g:leggero|leggera}, con molto meno da portare.",
	},
	["arc_open.w15.path.005"] = {
		"si ferma sul sentiero e ride piano, una volta sola, di qualcosa che nessun altro potrebbe vedere.",
		"scuote la testa con un mezzo sorriso e riprende a camminare, più adagio di prima.",
		"si spazzola via dalle maniche la polvere della strada, poi ride all'idea di mettersi in ordine per un posto.",
	},
	["arc_open.w15.path.006"] = {
		"Le preoccupazioni che mi sono {g:portato|portata} via da qui adesso starebbero in una tasca. Non le scambierei con quelle nuove, però. Credo.",
		"Quel che qui mi angustiava, da dove sto adesso, sembra piccolo. Piccolo, e stranamente caro.",
	},
	["arc_open.w15.path.007"] = {
		"Gli inizi restano dove li si è lasciati. Tutto il resto va avanti, io {g:compreso|compresa}.",
		"È una consolazione strana: ovunque io vada, questo inizio resta al suo posto e aspetta.",
		"Certe cose non serve portarle con me. Questo posto custodisce l'inizio della storia, e lo custodisce bene.",
	},
	["arc_open.w15.path.008"] = {
		"pronuncia il nome sottovoce, {zone}, come per provare se va ancora bene.",
		"resta {g:fermo|ferma} per un po', lasciando che sia il posto a parlare per primo.",
	},
	["arc_open.w15.path.009"] = {
		"Non tutto ciò che ho cominciato qui è arrivato in fondo. Qualcosa non ci arriverà mai, e bisogna concederlo.",
		"Qui ci sono fili che non annoderò più. Tornando, scopro di poterci convivere.",
	},
	["arc_step.w15.capitals.001"] = {
		"Tre grandi città. Da un pezzo non è più una deviazione: è diventato un modo di viaggiare.",
		"Una terza capitale. Potrei tornare indietro e dire di aver visto la misura delle cose. Non credo che lo farò.",
		"Con {zone} fanno tre. Strada facendo, attraversare le capitali è diventato parte del mio modo di viaggiare.",
	},
	["arc_step.w15.capitals.002"] = {
		"varca la terza porta con una disinvoltura che la prima non {g:gli|le} aveva concesso.",
		"entra in città con il passo tranquillo di chi fa collezione di soglie.",
	},
	["arc_step.w15.capitals.003"] = {
		"Quello che chiedo alle grandi città è semplice: una porta che si chiude alle mie spalle per un po', e il mondo dall'altra parte.",
		"Un riparo. Passo le porte per mettere qualcosa di solido tra me e tutto il resto, anche solo per un'ora.",
	},
	["arc_step.w15.capitals.004"] = {
		"slaccia una cinghia che non c'era bisogno di slacciare, come se bastasse il pensiero di un riparo ad alleggerire il carico.",
		"lascia cadere le spalle al pensiero di un tetto, uno qualunque, al di là di una porta.",
	},
	["arc_step.w15.capitals.005"] = {
		"Nelle grandi città la mia strada incrocia quella di tutti gli altri. Ci vado per vedere quale delle loro potrei prendere in prestito.",
		"Un incrocio, ecco che cos'è per me una capitale: il posto dove scegliere la strada successiva.",
	},
	["arc_step.w15.capitals.006"] = {
		"rigira il pensiero: le grandi città come nodi in una rete di strade, e il proprio cammino che passa da un nodo all'altro.",
		"traccia nell'aria, con un dito, una linea oziosa da un punto all'altro, e poi verso un terzo.",
	},
	["arc_step.w15.capitals.007"] = {
		"Ogni grande città è un motivo per tornare. È la promessa che faccio passando: tornare, e trovarla ancora in piedi.",
		"Varco le loro porte per promettermi un ritorno. Qualcuno deve pur fare in modo che valga la pena tornarci.",
	},
	["arc_step.w15.capitals.008"] = {
		"si porta una mano al petto, un attimo, come chi suggella una parola data a nessuno in particolare.",
		"fa un cenno a nessuno, uno solo: il piccolo cenno privato di una promessa fatta sul serio.",
	},
	["arc_step.w15.fallen.001"] = {
		"Niente da dire a questo posto. Volevo solo che mi vedesse in piedi.",
		"Resto qui un po' e non aggiungo parole. La storia, la conosce già meglio di me.",
	},
	["arc_step.w15.fallen.002"] = {
		"si ferma dove è successo e lascia passare un lungo momento senza un suono.",
		"resta immobile sul posto, a capo chino, finché il silenzio non ha fatto il suo lavoro.",
		"tace, e il posto non risponde.",
	},
	["arc_step.w15.fallen.003"] = {
		"Stavolta so dove stanno i guai. L'equipaggiamento in ordine, gli occhi aperti, e nessuna sorpresa evitabile.",
		"Stesso terreno, più preparazione. Controllo ogni fibbia due volte e conto quel che mi resta.",
	},
	["arc_step.w15.fallen.004"] = {
		"passa in rassegna l'equipaggiamento pezzo per pezzo, in vista del punto, con calma e cura.",
		"stringe una cinghia, sposta il peso dello zaino e studia con attenzione il terreno davanti.",
		"fa il conto di tutto ciò che porta, in silenzio, come se il posto controllasse l'inventario.",
	},
	["arc_step.w15.fallen.005"] = {
		"Potrei fermarmi qui a rimuginarci. Preferisco continuare a camminare e rimuginare su quello che viene.",
		"Questo posto ha detto la sua. Non tocca a lui decidere il mio passo.",
		"Qualunque cosa sia successa qui, non mi segue oltre la prossima curva.",
	},
	["arc_step.w15.fallen.006"] = {
		"passa accanto al punto con passo regolare, senza voltare la testa.",
		"attraversa dritto il luogo dove è successo, né più in fretta né più adagio che altrove.",
	},
	["arc_step.w15.knownface.001"] = {
		"Non l'ho mai detto come si deve, quindi almeno lo penso: grazie, {other}. Soprattutto per la costanza.",
		"Un grazie per {other}, non detto ma sentito. Per la presenza, ogni volta che mi è servita.",
		"Verso {other}, una gratitudine piccola e sincera. Non per qualcosa di grande: per un volto che c'era sempre, quando passavo.",
	},
	["arc_step.w15.knownface.002"] = {
		"saluta {other} con un cenno un po' più profondo del solito: un grazie piegato tanto piccolo da passare inosservato.",
		"ringrazia {other} una volta più del necessario, e ogni volta lo pensa davvero.",
	},
	["arc_step.w15.knownface.003"] = {
		"Voglio conservare il ricordo di {other} così com'è adesso: i modi, la voce, le piccole abitudini. Niente resta al suo posto per sempre.",
		"Fissare bene in mente {other}, esattamente come adesso. Un giorno vorrò quel ritratto, e dovrà essere nitido.",
		"Ricordare {other} è l'unica cosa che posso dare senza che costi nulla. Voglio farlo bene.",
	},
	["arc_step.w15.knownface.004"] = {
		"guarda {other} un momento più del solito, come si guarda una stanza prima di lasciarla.",
		"osserva in silenzio il volto di {other}, come per impararlo a memoria.",
	},
	["arc_step.w15.knownface.005"] = {
		"Cortesia, poche parole, nient'altro. A me va bene, e sospetto che vada bene anche per {other}.",
		"Con {other} non serve farne più di quello che è. Un saluto, la faccenda sbrigata, e via per la mia strada.",
	},
	["arc_step.w15.knownface.006"] = {
		"si limita con {other} a un cenno e a una parola, cortese e distante esattamente quanto prima.",
		"lascia la confidenza con {other} dov'è, e con garbo non ci aggiunge nulla.",
	},
	["arc_step.w15.nemesis.001"] = {
		"Due per {other}, nessuno per me. Comincio a sospettare che la strada voglia dirmi qualcosa.",
		"Lo stesso nemico, per la seconda volta. O non imparo niente, o la lezione è più lunga del previsto.",
		"Una seconda caduta per lo stesso nemico. Una volta è sfortuna; questo comincia a somigliare a uno schema, e io ci sto dentro.",
	},
	["arc_step.w15.nemesis.002"] = {
		"si rimette in piedi con una smorfia che comincia a essere familiare, e dice il nome a denti stretti.",
		"si rialza per la seconda volta e non ha l'aria sorpresa, il che è peggio.",
	},
	["arc_step.w15.nemesis.003"] = {
		"Tre volte. Il caso non c'entra più. Finisce quando {other} resterà a terra, e io intendo vederlo.",
		"Una terza volta a terra per lo stesso nome. E sia: lo giuro, piano, a nessuno se non a me.",
		"Fanno tre. Da qui in poi non è più una serie di sfortune: è una promessa con il mio nome sopra.",
	},
	["arc_step.w15.nemesis.004"] = {
		"si rialza per la terza volta e resta immobile, come chi presta giuramento senza altro testimone che la terra.",
		"chiude lentamente una mano a pugno, e la tiene chiusa a lungo.",
	},
	["arc_step.w15.path.001"] = {
		"Grazie, allora. Questo posto mi ha lasciato cominciare male e non me l'ha mai fatto pesare.",
		"Quello che sono adesso è cominciato qui, con un tentativo goffo. Sono {g:grato|grata} alla terra per la sua pazienza.",
		"Devo qualcosa alla pazienza di questo posto. Cominciare male è più facile dove nessuno ci fa caso.",
	},
	["arc_step.w15.path.002"] = {
		"posa una mano a terra per un momento: un grazie senza nessuno a riceverlo.",
		"china il capo verso il sentiero alle spalle, un attimo, come si ringrazia chi ospita.",
	},
	["arc_step.w15.path.003"] = {
		"Da quel primo tratto fino a qui: non saprei dare una cifra, ma i miei piedi azzarderebbero una stima onesta.",
		"Misurata da qui, la strada alle spalle è più lunga di quanto credessi. Più corta di quella che resta, sospetto.",
	},
	["arc_step.w15.path.004"] = {
		"guarda per un lungo momento la strada alle spalle, poi quella davanti, come a pesarle l'una contro l'altra.",
		"si volta una volta verso dove la strada è cominciata, poi le dà le spalle: uno sguardo che misura in entrambe le direzioni.",
	},
	["arc_step.w15.path.005"] = {
		"Le parole lo farebbero solo più piccolo. Meglio stare qui e lasciare che sia quello che è.",
		"Potrei dare un nome a quello che sento qui. Preferisco non rimpicciolirlo.",
	},
	["arc_step.w15.path.006"] = {
		"tace a lungo; il sentiero non chiede nulla, e nulla riceve.",
		"resta in piedi senza una parola, le mani ferme, finché il momento non passa da sé.",
	},
}, "base_arcs")
