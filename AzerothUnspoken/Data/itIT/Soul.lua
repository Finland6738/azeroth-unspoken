-- Testi di esempio in italiano per le frasi con affinità di personalità (step S5). Le regole stanno in Data/RegistrySoul.lua.
local ADDON, NS = ...

NS:AddTexts("itIT", {
	["soul.zone.veteran"] = {
		"Ogni strada conduce a casa, ma nessuna riporta indietro ciò che abbiamo perduto.",
		"Le stesse insegne, le stesse voci al mercato. Sono io che non torno mai {g:intero|intera}.",
	},
	["soul.zone.hopeful"] = {
		"Le sue porte sono ancora aperte. Talvolta basta questo per ritrovare coraggio.",
		"Pane caldo, campane, qualcuno che ride. Il mondo non è ancora perduto.",
	},
	["soul.battle.merciful"] = {
		"Un tempo anche tu contemplasti le stelle. Che la notte ti conceda infine riposo.",
		"Non ce l'ho con te. Ce l'ho con ciò che ti tiene in piedi.",
	},
	["soul.battle.resolute"] = {
		"Non lascerò che il tuo tormento travolga anche i vivi.",
		"La tua vita l'hai già avuta. Questa strada appartiene a chi respira.",
	},
	["soul.pray.devout"] = {
		"Luce, sostieni la mia mano quando la fede mi trema.",
		"Luce, sii nella mia voce quando la mia voce non basta.",
	},
	["soul.pray.skeptic"] = {
		"Non so se qualcuno ascolti. Ma parlare al silenzio, a volte, aiuta.",
		"Se lassù c'è qualcuno, ha un pessimo senso dell'umorismo. Grazie per oggi, comunque.",
	},
	["soul.muse.vengeance"] = {
		"Ogni passo mi avvicina a chi mi ha tolto tutto. Lo ricordo a ogni alba.",
		"Ho imparato a sorridere alle persone giuste. Il nome che cerco, però, non lo scordo.",
	},
	["soul.muse.knowledge"] = {
		"Dietro ogni rovina c'è una pagina che nessuno ha ancora letto.",
		"Una lingua dimenticata incisa su una pietra, e nessuno che sappia leggerla. Ancora.",
	},
	["soul.victory.glory"] = {
		"Che i bardi sappiano il mio nome. E che lo storpino pure, purché lo cantino.",
		"Raccontatelo alla locanda. E stavolta fatelo più grosso.",
	},
	["soul.muse.family"] = {
		"Chissà se a casa qualcuno accende ancora una candela per me.",
		"L'odore del pane mi riporta in una cucina lontana, e a voci che non sento da troppo.",
	},
	["soul.lowhp.blood"] = {
		"Il sangue mi scorre tra le dita. Non è la prima volta, e non sarà l'ultima.",
		"Di nuovo le mani rosse del mio stesso sangue. Brutta abitudine.",
	},
	["soul.death.wry"] = {
		"Ecco. Di nuovo. Prima o poi qualcuno dovrà spiegarmi il trucco.",
		"Bene. Qualcuno segni il punto: qui il pavimento è durissimo.",
	},
	["soul.death.sober"] = {
		"Non ancora. Ho qualcosa da finire.",
		"Mi rialzerò. Forse non oggi. Ma mi rialzerò.",
	},
	["soul.thanks.gruff"] = {
		"Non farci l'abitudine.",
		"Va bene, va bene. Adesso basta.",
	},
	["soul.greet.cheerful"] = {
		"Ben trovato! La strada era lunga, ma in compagnia si accorcia.",
		"Eccoti! Avevo proprio voglia di una faccia amica.",
	},
	["soul.muse.melancholic"] = {
		"Il vento porta via anche i nomi, se non li si ripete.",
		"Le stagioni passano anche quando nessuno le guarda. Io, intanto, le conto.",
	},
	["soul.zone.curious"] = {
		"Una valle che non conosco. Chissà cosa c'è dietro quella cresta, e chi ha tirato su quel muro.",
		{ "Posto nuovo. Prima guardo tutto, poi tocco tutto. Poi, se serve, scappo.", depth = "natural" },
		{ "Ogni terra sconosciuta è una lettera ancora sigillata. Mi prudono le mani dalla voglia di aprirla.", depth = "elevated" },
	},
	["soul.zone.freedom"] = {
		"Niente mura, niente padroni, niente campane da obbedire. Solo l'orizzonte, e la voglia di raggiungerlo.",
		{ "Cielo aperto. Finalmente si respira.", depth = "natural" },
	},
	["soul.battle.fierce"] = {
		"Fatti sotto! È tutto il giorno che aspetto!",
		"Ringhio anch'io, sai. Solo più forte.",
	},
	["soul.battle.protect"] = {
		"State dietro di me. Finché sono in piedi, nessuno vi tocca.",
		"Voi pensate a colpire. A prendere i colpi ci penso io.",
	},
	["soul.victory.pragmatic"] = {
		"Era loro o noi. Non ci perdo il sonno: domani ci sarà altro da fare.",
		"Pulire la lama, controllare le cinghie, ripartire. Il resto sono chiacchiere.",
	},
	["soul.victory.conflicted"] = {
		"Ho vinto. Allora perché mi sento come chi ha sbagliato porta?",
		{ "Ogni volta che abbasso l'arma mi chiedo da che parte stavo davvero. La risposta cambia con la luce del giorno.", depth = "elevated" },
	},
	["soul.rez.duty"] = {
		"Di nuovo in piedi. Ho ancora un compito, e non si porta a termine da {g:sdraiato|sdraiata}.",
		"Basta riposare. C'è chi conta su di me.",
	},
	["soul.rez.spiritual"] = {
		"Gli spiriti mi hanno rimandato indietro. Non lo fanno mai per niente.",
		{ "Ho sentito il vento dall'altra parte. Mi ha spinto fin qui, con una mano leggera tra le scapole.", depth = "elevated" },
	},
	["soul.muse.redemption"] = {
		"Ogni torto che rimetto a posto toglie un sasso dalla bisaccia. Pesa ancora, ma cammino.",
		{ "Non cerco perdono. Cerco di diventare {g:qualcuno|qualcuna} che un giorno potrebbe meritarlo.", depth = "elevated" },
	},
	["soul.muse.doubting"] = {
		"Una volta pregavo senza pensarci. Adesso ci penso, e le parole mi restano in gola.",
		"Recito ancora le parole, la sera. Le so a memoria. È il resto che ho dimenticato.",
	},
})
