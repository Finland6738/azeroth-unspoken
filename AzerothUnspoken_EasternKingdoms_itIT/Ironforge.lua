-- Italian texts of the regional pack eastern_ironforge (content wave W01). The rules are in AzerothUnspoken_EasternKingdoms/Ironforge.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("dunmorogh", "itIT", "eastern_ironforge", [==[
	["ifo.journey.arrival.01"] = {
		"scivola giù dal grifone nel calore della Grande Forgia, con le guance che bruciano ancora per il freddo del cielo.",
		"atterra con un tonfo sulla pietra tiepida, mentre il clangore delle incudini arriva da ogni lato.",
		"smonta e si attarda un attimo accanto alla forgia, lasciando che il caldo scacci dalle ossa il gelo dell'alta quota.",
	},
	["ifo.journey.arrival.02"] = {
		"Aria calda, odore di carbone, il suono dei martelli. Comunque sia andata la strada, Forgiardente mi accoglie.",
		"Giù dal cielo gelido e dritto nel tepore della montagna. Una sala amica, e mura sicure tutt'intorno.",
	},
	["ifo.journey.arrival.03"] = {
		"Pietra solida sotto i piedi. La bacerei, ma probabilmente scotta.",
		"Ce l'ho fatta. Qualcuno mi indica la birra prima che le ginocchia smettano di tremare?",
	},
	["ifo.journey.start.01"] = {
		"Dal calore della forgia al cielo aperto in un solo colpo d'ala. Il freddo arriva come uno schiaffo, ed è magnifico.",
		"Il grifone sbuca oltre le porte e la montagna resta indietro. Dopo tutta quella pietra, quanto cielo.",
		"Dal bagliore della fornace al tetto bianco del mondo. Al grifone la differenza non sembra importare; a me sì.",
	},
	["ifo.journey.start.02"] = {
		"Attento al soffitto! Attento al soffitto! ...Ecco. Siamo fuori.",
		"Fuori dal portone a tutta velocità. Sia messo agli atti che non ho urlato. Non troppo.",
		"Addio, Forgiardente. Tieni accesa la forgia e pieni i boccali.",
	},
	["ifo.journey.start.03"] = {
		"si sistema in groppa al grifone che si stacca dalla Grande Forgia, mentre di sotto il bagliore del ferro fuso rimpicciolisce.",
		"stringe le cinghie mentre il grifone batte le ali una volta, due, e {g:lo|la} porta fuori dalla luce rossa della montagna.",
	},
	["ifo.memory_return.01"] = {
		"Lo stesso bagliore rosso, le stesse incudini che risuonano. Forgiardente non è cambiata, e adesso gliene sono {g:grato|grata}.",
		"Avevo dimenticato come ti accoglie il calore all'ingresso. Certe cose il corpo le ricorda prima della mente.",
	},
	["ifo.muse.ale"] = {
		"A Forgiardente la birra scorre libera come il ferro fuso. So bene quale dei due preferirei bere.",
		"Mai vista una città con tante forge e tanti boccali. Ho il sospetto che le due cose vadano insieme.",
	},
	["ifo.muse.anvils"] = {
		"si ferma ad ascoltare cento martelli che battono su cento incudini, mai del tutto a tempo fra loro.",
		"si scosta per lasciar passare un fabbro che trascina un lingotto incandescente, e il calore {g:lo|la} investe come un'onda.",
		"guarda le scintille saltare da un'incudine e spegnersi sul pavimento di pietra, uno sprazzo luminoso dopo l'altro.",
	},
	["ifo.muse.dwarf"] = {
		"Ogni sala qui è stata scavata dalle mani dei miei avi, colpo dopo colpo ostinato. Cammino dentro la loro pazienza.",
		"Casa. Il canto delle incudini, l'odore di carbone e di birra, e la montagna chiusa sopra di me come una mano che ripara.",
	},
	["ifo.muse.explorers"] = {
		"La Lega degli Esploratori rovista mezzo mondo per scoprire da dove vengono i nani. Ci vuole coraggio a chiedere alla terra chi sei.",
		"Mappe, ossa, tavolette spezzate. I nani sembrano affamati del proprio passato quanto dell'oro.",
	},
	["ifo.muse.forge"] = {
		"L'intera città vibra della Grande Forgia, come un cuore che batte nel fondo della pietra.",
		"Caldo sul viso, roccia fredda alle spalle. Forgiardente non ti lascia mai dimenticare che intorno hai una montagna.",
		"Il metallo fuso scende dall'alto, luminoso come un'alba che quaggiù nessuno ha bisogno di vedere.",
	},
	["ifo.muse.gnome"] = {
		"I nani ci hanno dato Tinker Town senza mai farci sentire dei mendicanti. Eppure una stanza per gli ospiti non è una casa.",
		"Mekkatorque tiene corte in un angolo prestato di una città prestata. Un giorno ci riprenderemo Gnomeregan. Un giorno.",
	},
	["ifo.muse.king"] = {
		"Re Magni siede sul suo alto seggio nel cuore della montagna. Si dica quel che si vuole dei re: questo tiene una sala calda.",
		"Nel profondo di queste sale Magni siede con i suoi consiglieri e la sua corona. La città lavora come se lui la guardasse. Forse è così.",
	},
	["ifo.muse.nosky"] = {
		"Bella città. Peccato per il cielo. Pare che qualcuno ci abbia costruito sopra una montagna.",
		"Giorno o notte? Non ne ho idea. Quaggiù decide la forgia, e la forgia non dorme mai.",
		"Ho chiesto a un nano com'era fuori, oggi. Ha risposto «freddo», come se bastasse, e si è rimesso all'incudine.",
	},
	["ifo.muse.tram"] = {
		"Sotto i miei piedi un vagone gnomesco sferraglia in un tunnel sotto il mare, fino a Roccavento. Follia. Una splendida follia.",
		"Il Deeprun Tram: una strada sotto il mare, costruita dagli gnomi. Mi dicono che dal vetro si vedono passare i pesci.",
	},
	["ifo.npc_meet.banker"] = {
		"Il caveau di Forgiardente. Se c'è un posto al mondo capace di custodire le mie quattro monete, è una banca scavata in una montagna.",
		"Il banchiere guarda il mio deposito come un fabbro guarda un minerale scadente. Cortese, ma per niente convinto.",
	},
	["ifo.npc_meet.flightmaster"] = {
		"Un grifone, per favore. Uno che abbia mangiato da poco, e non un viaggiatore.",
		"Dove possono portarmi i vostri grifoni, da qui? Un posto con un cielo sopra sarebbe gradito.",
	},
	["ifo.npc_meet.guard"] = {
		"Una guardia di Forgiardente, larga come una porta e altrettanto facile da spostare. Già mi sento in buone mani.",
		"Gli occhi della guardia mi scorrono addosso, mi soppesano e mi lasciano passare. A un nano di sentinella non sfugge niente.",
	},
	["ifo.quest_complete.01"] = {
		"Pagato e chiuso. In questa città vuol dire una cosa sola: un giro alla taverna.",
		"Un altro lavoro finito. I nani pagano il giusto, e con monete che suonano sincere.",
		"Sistemato. Qualcuno in questa città mi deve da bere, e ho intenzione di scoprire chi.",
	},
	["ifo.quest_complete.02"] = {
		"accetta il ringraziamento con un cenno e si rituffa nel frastuono della città, con un compito in meno.",
		"mette via la ricompensa e lascia che il fragore delle forge inghiotta il momento.",
		"stringe una mano callosa in segno di gratitudine, poi si volta verso il bagliore della Grande Forgia.",
	},
	["ifo.quest_complete.03"] = {
		"I nani si ricordano di chi li aiuta. In una città scavata per durare, non è poco.",
		"Le voci viaggiano piano nella pietra, ma viaggiano. Qualcuno in queste sale ricorderà il mio nome.",
	},
	["ifo.rest_enter.inn"] = {
		"Una panca, un fuoco, un boccale di qualcosa fatto da gente che prende la birra sul serio quanto la guerra. Qui posso riposare.",
		"La taverna è rumorosa e calda, e sa di arrosto e di birra scura. Proprio quello che chiedevano le mie ossa.",
		"Via gli stivali, la schiena contro la pietra, il calore della forgia nei muri. Sotto una montagna il riposo arriva facile.",
	},
	["ifo.rest_enter.safe"] = {
		"Mura di montagna massiccia e un nano con l'ascia a ogni porta. Credo che finalmente riuscirò a dormire.",
		"Al riparo dentro Forgiardente. Niente passa attraverso tanta pietra, tranne il frastuono delle forge.",
	},
	["ifo.subzone_enter.explorers"] = {
		"La Sala degli Esploratori. Ossa antiche, mappe ancora più antiche, e il silenzio di chi legge di luoghi che vuole dissotterrare.",
		"Scaffali di libri, lo scheletro di una grande bestia e nani che discutono sottovoce su una mappa. Una sala fatta per me.",
	},
	["ifo.subzone_enter.forlorn"] = {
		"abbassa la voce senza volerlo entrando nella Forlorn Cavern, dove la luce è poca e le parole ancora meno.",
		"si addentra nella penombra della Forlorn Cavern, dove occhi attenti seguono ogni passo da angoli che il bagliore della forgia non raggiunge.",
	},
	["ifo.subzone_enter.greatforge"] = {
		"entra nel bagliore rosso della Grande Forgia, dove fiumi di metallo fuso si riversano dall'alto nel cuore della città.",
		"si ferma sull'orlo della Grande Forgia, con il calore che batte sul viso e la grande incudine che risuona al centro.",
	},
	["ifo.subzone_enter.tinker"] = {
		"Tinker Town. Qui tutto ronza, sferraglia o fuma. Qualcosa riesce a fare tutte e tre le cose.",
		"Gnomi, ingranaggi e un vago odore di bruciaticcio. Terrò le sopracciglia ben lontane dai banconi.",
	},
	["ifo.weather_change.snow"] = {
		"Qualcuno è appena entrato dal portone scrollandosi la neve dal mantello. Là fuori tira vento; qui dentro c'è il caldo della forgia tutto l'anno.",
		"Neve sugli stivali di chiunque arrivi da fuori. Io resto accanto alla forgia e mi fido della loro parola.",
		"Alle porte la gente batte i piedi per togliersi la neve. Forgiardente non si cura del tempo che fa: conosce solo il caldo.",
	},
	["ifo.greet.w02.01"] = {
		"Salute! Abbastanza caldo, qui dentro, dopo quella strada di montagna?",
		"Salve. Occhio alle scintille, e ai nani che vanno di fretta.",
	},
	["ifo.muse.w02.01"] = {
		"Rune incise su ogni arco, consumate e morbide proprio all'altezza dove le mani le toccano da generazioni.",
		"La pietra delle sale è lucida dove stivali e spalle l'hanno strofinata per secoli. Una città prende la forma di chi la abita, come un buon guanto.",
	},
	["ifo.muse.w02.02"] = {
		"Qualcuno, nel Military Ward, sta di nuovo provando un fucile. O alla montagna è venuto il singhiozzo.",
		"Bum. Poi grida di gioia. Poi un altro bum. Tiro a segno dei nani, o un matrimonio molto vivace.",
		"Un boato dall'altra parte della città, e nessuno alza nemmeno la testa. Ironforge ha sentito di peggio.",
	},
	["ifo.muse.w02.03"] = {
		"si appoggia a un parapetto di pietra sopra la Great Forge, mentre il calore sale lungo il viso in onde lente e tremolanti.",
		"osserva la luce rossa dei canali di metallo fuso scorrere sulle pareti scolpite, tanto che i volti di pietra sembrano cambiare espressione.",
	},
	["ifo.muse.w02.04"] = {
		"Il Mystic Ward è l'angolo più silenzioso della città. Persino i nani che ci studiano sembrano aver imparato a posare il martello.",
		"Sacerdoti e maghi nel Mystic Ward, chini sui libri a mormorare. Dopo il fracasso delle forge, è come entrare in una tasca dei pensieri della montagna.",
	},
	["ifo.quest_complete.w02.01"] = {
		"Fatto. Chi mi ha dato l'incarico ha guardato il risultato come un fabbro guarda una saldatura: con durezza, da ogni lato, e poi un solo cenno breve.",
		"Finito, ispezionato e approvato. A Ironforge anche un grazie passa prima dalla forgia.",
	},
	["ifo.quest_complete.w02.02"] = {
		"prende la ricompensa con la mano ancora calda del respiro delle forge, e fa un solo cenno.",
		"si scansa per lasciar passare un carrello di minerale, la ricompensa già nella borsa alla cintura e il compito che affonda nel rumore della città.",
	},
	["ifo.weather_change.w02.01"] = {
		"Qualcuno al portone dice che fuori il cielo si è schiarito. Io mi tengo il bagliore della forgia, ma per i grifoni è una buona notizia.",
		"Dai cancelli arriva la voce: cielo azzurro su Dun Morogh. Qui dentro nessuno cambia passo per questo.",
	},
]==])
