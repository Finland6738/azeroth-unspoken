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
}, "base_arcs")
