-- Italian texts of the regional pack kalimdor_thunderbluff (content wave W01). The rules are in AzerothUnspoken_Kalimdor/ThunderBluff.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("mulgore", "itIT", "kalimdor_thunderbluff", [==[
	["thb.journey.01"] = {
		"si stacca dalla rupe in groppa alla viverna, e sotto la città si sbriciola in alture, ponti e un lungo salto di pietra.",
		"lascia la torre con uno strattone, e laggiù Thunder Bluff diventa una manciata di mese legate da corde.",
		"sale dalla rupe nel vento aperto, mentre le tende della città si appiattiscono in un pugno di macchie chiare.",
	},
	["thb.journey.02"] = {
		"Già così in alto, e adesso saliamo ancora. Splendido.",
		"Si parte da quassù e si finisce più in basso, da qualche parte. Non può andare peggio dell'ascensore.",
		"Giù dal bordo di proposito, per una volta.",
	},
	["thb.journey.03"] = {
		"La rupe resta indietro, e con lei l'odore dei fuochi di casa. La viverna non si volta. Io sì.",
		"Dall'alto le alture sembrano le dita di una mano aperta. Mi porterò dietro questa immagine lungo la strada.",
	},
	["thb.journey.04"] = {
		"scende dalla groppa della viverna sull'alta torre, e per un attimo tutta la rupe sembra ondeggiare come il volo.",
		"atterra sulla rupe in una folata di vento, e il maestro delle viverne sta già allungando la mano verso le redini.",
		"mette piede in cima alla città con le gambe rigide, e tutta Mulgore distesa intorno, laggiù.",
	},
	["thb.journey.05"] = {
		"Giù dal cielo, su una città che è già mezza cielo. La differenza, più che altro, è la zuppa.",
		"{g:Atterrato|Atterrata}. In cima a una rupe. Mi dicono che qui conta come terraferma.",
	},
	["thb.journey.06"] = {
		"Thunder Bluff. Terreno alto, facce amiche e un vento che non sta mai fermo.",
		"Fra amici, e ben al di sopra dei guai. Un bel posto per atterrare.",
	},
	["thb.memory_return.01"] = {
		"Le rupi non si sono mosse, i ponti ondeggiano ancora e lo stufato ha lo stesso odore. Certi posti mantengono le promesse.",
		"Ancora una volta su con l'ascensore. Il vento in cima mi accoglie come la prima volta: sgarbato, e poi per niente.",
	},
	["thb.muse.01"] = {
		"Quassù il vento non si ferma mai del tutto. Cambia solo idea su da che parte spingere.",
		"La città intera sta su colonne di pietra sopra la pianura, e il vento la tratta come una nuvola in più.",
		"Dal bordo della rupe Mulgore sta laggiù come un mare verde, e il vento continua a provare a convincermi a buttarmici.",
	},
	["thb.muse.02"] = {
		"Nessun parapetto. Neanche uno. I tauren si fidano dei loro piedi più di quanto io mi fidi dei miei.",
		"Ogni bordo di questa città dà su un salto lunghissimo, e non ce n'è uno chiuso.",
		"Ho deciso di camminare al centro del ponte. Per rispetto del panorama.",
	},
	["thb.muse.03"] = {
		"si ferma sotto un alto totem intagliato, con i volti dipinti che il vento ha consumato fino a renderli calmi e pazienti.",
		"guarda il telo di una grande tenda gonfiarsi e ricadere col vento, come se tutta la casa respirasse nel sonno.",
		"osserva i ponti di corda tesi fra le alture, che oscillano piano nel vento sopra il lungo strapiombo.",
	},
	["thb.muse.04"] = {
		"A Thunder Bluff nessuno ha fretta. Perfino i mercanti sembrano pesare ogni parola prima di spenderla.",
		"Una città senza mura, senza porta, senza folla che spinge. A fare la guardia ci pensa l'altezza.",
	},
	["thb.muse.05"] = {
		"Gli ascensori cigolano per tutta la salita. Ho deciso di prenderlo come un segno d'amicizia.",
		"Su per la parete con un ascensore, poi un ponte di corda, poi giù con un altro. Per i tauren è fare due passi in città.",
	},
	["thb.muse.06"] = {
		"Vicini al cielo, e la Madre Terra ancora sotto ogni zoccolo. La mia gente ha costruito bene.",
		"Gli anziani hanno scelto un luogo alto per vedere lontano e ricordare a lungo. Da qui, credo che abbiano scelto bene.",
	},
	["thb.muse.07"] = {
		"guarda i fuochi della città ardere nel buio su ogni altura, come una manciata di braci sparse nel cielo.",
		"resta sul bordo della rupe nella notte, con la pianura laggiù ormai nera e muta e le stelle quasi a portata di mano.",
	},
	["thb.muse.08"] = {
		"Fumo, pelle conciata ed erba dolce. Thunder Bluff profuma come un buon fuoco dopo una lunga camminata.",
		"Quassù c'è sempre qualcuno che cuoce qualcosa a fuoco lento sulle braci. Non riesco a capire chi, e ci ho provato.",
	},
	["thb.muse.09"] = {
		"In un angolo di questa città un vecchio capo tiene salda la sua gente con poche parole. Lo si capisce da come camminano tutti tranquilli.",
		"La gente di Cairne. Porta la propria forza come le rupi portano la città: in silenzio, senza appoggiarsi a nessuno.",
	},
	["thb.npc_meet.01"] = {
		"aspetta accanto alla torre delle viverne mentre il maestro mormora qualcosa a una bestia irrequieta, una grossa mano sul suo collo.",
		"fa un cenno al maestro delle viverne, che controlla le cinghie di una sella con dita lente e attente e la mano ferma.",
	},
	["thb.npc_meet.02"] = {
		"Una sentinella delle rupi, alta come una porta e calma come la pietra. Quassù i guai dovrebbero essere davvero sciocchi.",
		"La guardia osserva senza fissare. Chissà come, è un controllo più accurato.",
	},
	["thb.npc_meet.03"] = {
		"Pelli buone, prezzo giusto, niente urla. A Orgrimmar faresti affari. Ti farebbe orrore, ma faresti affari.",
		"Niente contrattazione? Allora pago e basta. Strana città.",
	},
	["thb.quest_complete.01"] = {
		"Fatto. Quassù anche i ringraziamenti arrivano lenti, e per questo valgono di più.",
		"Finito. La rupe non se ne accorgerà, ma qualcuno che ci vive sì.",
		"Un incarico in meno sulle spalle. Il resto può portarselo il vento.",
	},
	["thb.quest_complete.02"] = {
		"riceve in segno di grazie un cenno profondo e senza fretta, di quelli che sembrano venire da tutta l'altura insieme.",
		"prende la ricompensa e si allontana lungo il ponte di corda, badando all'oscillazione.",
		"accetta la ricompensa con tutte e due le mani, mentre il vento tira le pelli delle tende sopra la testa.",
	},
	["thb.quest_complete.03"] = {
		"Tutto fatto, e nessuna rupe mi ha visto finire di sotto. Contatele come due vittorie.",
		"Finito. Adesso, qual era il ponte che porta al cibo?",
	},
	["thb.rest_enter.01"] = {
		"entra sotto la grande tenda della locanda e lascia che il calore e l'odore di stufato si chiudano intorno come una coperta.",
		"si sistema su una pelle accanto al fuoco, dove il vento di fuori è solo un rumore contro le pareti.",
		"si siede finalmente accanto al focolare, e il lungo ondeggiare dei ponti lascia piano le gambe.",
	},
	["thb.rest_enter.02"] = {
		"Thunder Bluff. Abbastanza in alto che i guai del mondo dovrebbero arrampicarsi per raggiungermi, e di rado si prendono il disturbo.",
		"Su con l'ascensore e al sicuro. Per un po' la pianura può tenersi i suoi lupi.",
	},
	["thb.subzone_enter.01"] = {
		"passa su Elder Rise, dove le voci si fanno più basse e i totem sono più alti che in tutto il resto della città.",
		"scende dal ponte su Elder Rise e rallenta un poco, come si fa al cospetto di chi è molto vecchio.",
	},
	["thb.subzone_enter.02"] = {
		"{subzone}. L'aria qui sembra più sottile, e non soltanto per l'altezza.",
		"Questa altura la custodiscono gli sciamani. Perfino il vento sembra abbassare la voce quando la attraversa.",
	},
	["thb.subzone_enter.03"] = {
		"Hunter Rise. Archi, lame e trofei. Il genere di posto che ti prende le misure con un'occhiata.",
		"Odore di cuoio unto e di frecce appena intagliate. Quest'altura fa per me.",
	},
	["thb.subzone_enter.04"] = {
		"scende nel silenzio sotto Spirit Rise, dove l'acqua immobile luccica nella penombra della pietra.",
		"cammina fra le pozze sotto l'altura; l'acqua è così ferma che sembra in ascolto.",
	},
	["thb.weather_change.01"] = {
		"Pioggia sui tetti di pelle, su tutta la rupe insieme. La città intera suona come un tamburo lento.",
		"Ho visto la pioggia attraversare la pianura molto prima che arrivasse qui. Quassù il tempo lo si guarda arrivare.",
		"Piove. I ponti di corda saranno scivolosi. Li attraverserò come un vecchio kodo: piano, e nel mezzo.",
	},
]==])
