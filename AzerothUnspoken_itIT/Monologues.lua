-- Testi in italiano delle parti dei monologhi (#99). Le regole stanno in Data/RegistryMonologues.lua.
-- Ogni variante di una parte va con ogni variante della parte dopo: vanno lette in tutte le combinazioni.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	-- mono.muse.road
	["mono.muse.road.1"] = {
		"Un altro miglio alle spalle. Ho smesso di contarli da un pezzo.",
		"La strada sa svuotare la testa. La lascio fare.",
	},
	["mono.muse.road.2"] = {
		"Strano, cosa ricordano i piedi: una pietra smossa, una curva, un cancello lasciato aperto.",
		"I miei stivali conoscono questo mondo meglio di qualunque mappa abbia comprato.",
	},
	["mono.muse.road.3"] = {
		"Da qualche parte, più avanti, c'è un fuoco a cui non mi sono ancora {g:seduto|seduta}.",
		"Qualunque cosa aspetti alla fine della strada, preferisco andarle incontro che aspettarla.",
	},

	-- mono.muse.scar
	["mono.muse.scar.1"] = {
		"Mi sono {g:sorpreso|sorpresa} di nuovo a seguire con il dito la vecchia cicatrice.",
		"La mano è andata alla cicatrice senza chiedermi il permesso.",
	},
	["mono.muse.scar.2"] = {
		"Ha smesso di far male da tempo. Non ha smesso di parlare.",
		"Adesso è più sottile, più pallida. Il tempo guarisce con pazienza e mente male.",
	},
	["mono.muse.scar.3"] = {
		"Ognuno di noi è la mappa dei posti in cui per poco non è rimasto.",
		"Un giorno racconterò a qualcuno come me la sono fatta. Non oggi.",
	},

	-- mono.muse.stars (ordine libero: la seconda e la terza possono scambiarsi)
	["mono.muse.stars.1"] = {
		"Sono uscite le stelle, e nessuno mi chiede niente.",
		"Finalmente notte. Il mondo è più quieto quando non può vedermi.",
	},
	["mono.muse.stars.2"] = {
		"Potrei dare un nome a qualche stella, se ci provassi. Preferisco di no.",
		"I vecchi racconti dicono che ogni stella è una sentinella. Stanotte spero che si annoino.",
	},
	["mono.muse.stars.3"] = {
		"Solo il respiro, il freddo e questo piccolo pezzo di buio che è mio.",
		"Per un'ora non appartengo a nessuno. È una strana forma di ricchezza.",
	},

	-- mono.zone.crest (la prima parte è un'emote: segue il nome del personaggio)
	["mono.zone.crest.1"] = {
		"si ferma in cima alla salita, e sotto si apre {zone}.",
		"rallenta presso le pietre di confine e abbraccia con lo sguardo {zone}.",
	},
	["mono.zone.crest.2"] = {
		"La terra corre più lontano di quanto l'occhio voglia seguirla.",
		"Ogni collina ne nasconde un'altra, e ogni sentiero si biforca prima di finire.",
	},
	["mono.zone.crest.3"] = {
		"Un uccello attraversa il cielo senza fretta, come se il posto fosse suo.",
		"In alto, un falco gira una volta sopra la strada e la lascia stare.",
	},

	-- mono.zone.dusk
	["mono.zone.dusk.1"] = {
		"si ferma a guardare la luce che si fa ambra su {zone}.",
		"si volta a ovest mentre il giorno si consuma basso su {zone}.",
	},
	["mono.zone.dusk.2"] = {
		"Le ombre si allungano sul terreno, e l'aria si raffredda di un soffio.",
		"I colori lasciano la terra uno a uno, e i rossi se ne vanno per ultimi.",
	},
	["mono.zone.dusk.3"] = {
		"Presto accenderanno le lanterne, e la strada sarà della notte.",
		"Quel che resta del giorno non verrà speso di fretta.",
	},

	-- mono.rest.hearth
	["mono.rest.hearth.1"] = {
		"Aria calda, voci forti, odore di pane. Resto sulla soglia un momento più del necessario.",
		"Un fuoco, una panca, un tetto che tiene fuori il cielo. Piccole cose, finché non ti mancano.",
	},
	["mono.rest.hearth.2"] = {
		"Qui nessuno sa cosa ho fatto oggi, e nessuno lo chiede.",
		"L'oste mi saluta con un cenno, come fa con chiunque. Qui dentro sono davvero chiunque.",
	},
	["mono.rest.hearth.3"] = {
		"Dormirò come un sasso, e la strada resterà fuori finché non mi sveglio.",
		"Domani può bussare. Per ora la porta resta chiusa.",
	},

	-- mono.lvl.lock
	["mono.lvl.lock.1"] = {
		"Qualcosa si è spostato. Le braccia lo sanno prima di me.",
		"Eccolo di nuovo, quel piccolo scatto, come una serratura che gira da qualche parte dentro di me.",
	},
	["mono.lvl.lock.2"] = {
		"La strada non si accorcia. Sono io che imparo a percorrerla meglio.",
		"Dovrei sentirmi più {g:fiero|fiera}. Più che altro mi chiedo cosa verrà a cercarmi adesso.",
	},

	-- mono.rez.breath
	["mono.rez.breath.1"] = {
		"Di nuovo il respiro. Sa di polvere, ed è la cosa più dolce che conosca.",
		"Di ritorno. La terra è fredda sotto le mani, ed è così che lo so.",
	},
	["mono.rez.breath.2"] = {
		"Per un momento non c'era niente, nemmeno la paura.",
		"Continuo a cercare la ferita. C'è solo il suo ricordo.",
	},
	["mono.rez.breath.3"] = {
		"In piedi, allora. Il mondo non si è fermato ad aspettarmi.",
		"Starò più {g:attento|attenta}. Lo dico ogni volta.",
	},
}, "base_monologues")
