-- Testi in italiano delle frasi che seguono le emozioni e i tratti forti (R4). Le regole stanno in Data/RegistryEmotions.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	["emo.zone.worried"] = {
		"Oggi ogni cespuglio sembra un agguato. Tengo la mano vicina all'elsa.",
		"Occhi aperti. La strada sembra più lunga di stamattina.",
	},
	["emo.zone.curious"] = {
		"{zone}. Voglio vedere cosa c'è dietro quella collina, e dietro quella dopo.",
		"Ogni sentiero qui è una domanda a cui voglio rispondere.",
	},
	["emo.zone.melancholic"] = {
		"Il vento attraversa {zone} come se anche lui cercasse qualcuno.",
		"Un bel posto. Vedo che è bello. Solo che ancora non riesco a sentirlo.",
	},
	["emo.zone.serene"] = {
		"rallenta. Per una volta niente tira le redini.",
		"lascia che la luce si posi su {zone} e sulla strada, senza fretta.",
	},
	["emo.zone.patriot"] = {
		"Le nostre bandiere. Le nostre strade. Qualunque cosa costi, vale la pena difenderle.",
		"Terra di casa. Qui sto più {g:dritto|dritta}.",
	},
	["emo.zone.cynic"] = {
		"Belle parole incise su ogni porta. Ho imparato a leggere quel che sta scritto sotto.",
		"Qui tutti vogliono qualcosa. Almeno i ratti lo ammettono.",
	},
	["emo.zone.ambitious"] = {
		"Terra nuova. Da qualche parte qui c'è il prossimo gradino.",
		"{zone}. Vediamo cosa serve per essere ricordati qui.",
	},
	["mem.ret.emo.bad.worried"] = {
		"Di nuovo qui. Ricordo esattamente dove è andata storta. Ci girerò intorno.",
		"L'ultima volta questo posto ha vinto. Adesso piano, e niente eroismi.",
	},
	["mem.ret.emo.bad.determined"] = {
		"Sono {g:tornato|tornata}. A questo posto dovrebbe bastare.",
		"Stesso terreno, finale diverso. Questo è il piano.",
	},
	["mem.ret.emo.bad.furious"] = {
		"Chi mi ha messo nella polvere, qui: sono {g:venuto|venuta} a riscuotere.",
		"Io non ho dimenticato. Neanche loro lo faranno.",
	},
	["mem.ret.emo.nostalgic"] = {
		"Conosco questa curva della strada. L'ultima volta ero qualcuno di un po' diverso.",
		"Certi posti trattengono un pezzo di te. Questo ne ha tenuto uno buono.",
	},
	["emo.death.worried"] = {
		"Troppo in fretta. Non l'ho nemmeno visto arrivare.",
		"Freddo. Poi niente. Poi questo grigio.",
	},
	["emo.death.furious"] = {
		"Non così. Non per mano di quello.",
		"Segnatelo. Per questo tornerò.",
	},
	["emo.death.stoic"] = {
		"Dunque. Io e la terra ci rincontriamo.",
		"Il dolore è un maestro, e pure sgarbato.",
	},
	["emo.rez.determined"] = {
		"In piedi. Il lavoro non è finito.",
		"Di nuovo, allora. E stavolta come si deve.",
	},
	["emo.rez.melancholic"] = {
		"Respiro di nuovo. Non sembra una vittoria.",
		"Di ritorno. Ma qualcosa è rimasto là.",
	},
	["emo.battle.tense"] = {
		"Respira. Guarda i piedi, non la lama.",
		"Troppo vicini. Troppi. Pensa.",
	},
	["emo.battle.furious"] = {
		"Avanti, allora. Ho aspettato tutto il giorno qualcuno come te.",
		"Hai scelto il momento sbagliato.",
	},
	["emo.lowhp.worried"] = {
		"Piano. Un passo indietro, poi un altro.",
		"Indietro. Indietro adesso, finché le gambe ascoltano.",
	},
	["emo.victory.tense"] = {
		"A terra. Non rilassarti ancora, ce n'è sempre un altro.",
		"Le mani tremano ancora. Va bene. Il prossimo.",
	},
	["emo.victory.happy"] = {
		"Ah! Questa la racconterò alla locanda.",
		"Pulito, veloce, nessun ferito. Be', quasi nessuno.",
	},
	["emo.victory.determined"] = {
		"Uno in meno. Avanti.",
		"Questo è il passo. Mantienilo.",
	},
	["emo.victory.vengeful"] = {
		"Questa è per la volta scorsa.",
		"Pagato. Con gli interessi.",
	},
	["emo.victory.altruist"] = {
		"Tutti in piedi? Bene. È questo che conta.",
		"Fammi vedere quel taglio. No, adesso, prima che peggiori.",
	},
	["emo.levelup.happy"] = {
		"Lo senti? Come una porta che si apre da qualche parte, dentro.",
		"Più forza. E per una volta la sento nelle ossa.",
	},
	["emo.rest.serene"] = {
		"Un fuoco, una panca, un tetto. Per ora non chiedo altro.",
		"Il rumore della strada resta fuori dalla porta.",
	},
	["emo.rest.worried"] = {
		"Mura sicure. Eppure mi siedo di fronte alla porta.",
		"Riposa, dicono. Le mie spalle non l'hanno sentito.",
	},
	["emo.pray.spiritual"] = {
		"Non chiedo niente. Ascolto soltanto.",
		"Qualunque cosa vegli su di noi: io sono qui, e {g:grato|grata}.",
	},
	["emo.muse.melancholic"] = {
		"Certi giorni la strada dà. Certi giorni prende soltanto.",
		"Continuo a contare quello che ho perso invece di quello che resta.",
	},
	["emo.muse.nostalgic"] = {
		"Mi mancano cose che non sapevo mi sarebbero mancate. Una cucina. Una voce che mi chiama a casa.",
		"Strano come le vecchie strade ti camminino accanto.",
	},
	["emo.muse.admiring"] = {
		"Certe cose sono fatte per sopravviverci. È bello starci accanto.",
		"Vorrei essere il tipo di persona che questo posto merita.",
	},
	["emo.muse.serene"] = {
		"Silenzio. Di quello che non serve guadagnarsi.",
		"Nessuna fretta. Il mondo aspetterà un respiro.",
	},
	["emo.muse.dreamer"] = {
		"Un giorno seguirò una strada solo per vedere dove finisce.",
		"Se le nuvole fossero mappe, conoscerei già la strada.",
	},
	["emo.muse.pessimist"] = {
		"Un piano è solo l'ordine in cui le cose andranno storte.",
		"Spera nel meglio. Prepara lo zaino per il resto.",
	},
	["emo.weather.rain"] = {
		"Pioggia. Certo che è pioggia.",
		"La pioggia lo dice meglio di quanto potrei io.",
	},
}, "base_emotions")
