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
	["ifo.dawn.w05.001"] = {
		"Là fuori il sole starà sorgendo. Qui dentro l'unico segno è la squadra stanca che passa i martelli a quella fresca, sbadigliando.",
		"Nessuna alba sotto la montagna, solo il cambio delle squadre alle forge: braccia fresche dentro, quelle stanche fuori, a colazione.",
		"È l'alba, pare. Da qualche parte i forni sono partiti, e i primi viaggiatori entrano dal portone con la brina sui mantelli.",
	},
	["ifo.dusk.w05.001"] = {
		"guarda le squadre del giorno lasciare le forge nere fino ai gomiti, dirette alle taverne, mentre braccia fresche riprendono i martelli; fuori dev'essere il tramonto.",
		"nota le lampade lungo le sale che vengono regolate e rabboccate, l'unico cenno della città al tramonto che scende oltre il portone.",
		"vede una guardia del portone rientrare battendo i piedi, finito il turno, e la sente dire a qualcuno che su Dun Morogh la luce se ne va.",
	},
	["ifo.farewell.w05.001"] = {
		"Me ne vado. Tienimi una panca calda, Ironforge.",
		"Addio. Se vi servo, sarò io quella figura che trema sulla strada là fuori.",
		"Si va al freddo. Auguratemi calze spesse.",
	},
	["ifo.farewell.w05.002"] = {
		"Che la pietra ti protegga e il fuoco ti scaldi, ovunque vada la strada.",
		"Che la montagna ti stia alle spalle, e la strada ti sia gentile davanti.",
	},
	["ifo.farewell.w05.003"] = {
		"Buon viaggio. Al ritorno il portone è sempre aperto.",
		"Strada sicura, là fuori. Quando tornerai, la città sarà ancora calda.",
	},
	["ifo.greet.w05.001"] = {
		"Salute a te, sotto la montagna.",
		"Saluti, e buona permanenza dal lato caldo del portone.",
	},
	["ifo.greet.w05.002"] = {
		"Ciao. Niente fuliggine in faccia, quindi non sei del mestiere. In viaggio?",
		"Salute! Non sai ancora di carbone. Arrivo recente?",
	},
	["ifo.greet.w05.003"] = {
		"Che piacere vederti. Vieni a stare un momento vicino al caldo.",
		"Ah, una faccia amica. Ironforge ne ha tante, ma di solito sono occupate a martellare.",
	},
	["ifo.jest.w05.001"] = {
		"I nani hanno costruito una città dentro una montagna per tenere fuori il freddo, e poi l'hanno riempita di ferro fuso, per sicurezza.",
		"A Ironforge si chiama sussurro tutto ciò che non si sente oltre l'incudine più vicina.",
		"Come capisci se una guardia di Ironforge dorme? Non lo capisci. Sta in piedi esattamente uguale.",
	},
	["ifo.journey.w05.001"] = {
		"si china sul collo del grifone che sfreccia lungo il passaggio di pietra verso il portone, con le pareti scolpite così vicine da poterle toccare.",
		"si appiattisce sulla sella mentre il grifone infila il tunnel verso l'uscita, con le punte delle ali che quasi sfiorano i vecchi rilievi.",
		"si tiene forte mentre il grifone batte le ali lungo la grande sala fino al portone, e l'eco dei colpi rotola avanti come un tamburo in cantina.",
	},
	["ifo.journey.w05.002"] = {
		"Il grifone affronta i tunnel come se l'avesse fatto mille volte. Probabilmente è così. Io abbasso comunque la testa a ogni arco.",
		"Arco, arco, colonna, arco. Il grifone non rallenta nemmeno. Io trattengo il fiato finché non siamo fuori.",
	},
	["ifo.journey.w05.003"] = {
		"Fuori dal portone, e la luce del giorno sui pendii è così forte, dopo il bagliore della forgia, che volo il primo tratto con gli occhi socchiusi.",
		"Dalla penombra rossa al bianco abbagliante in un colpo d'ala. Gli occhi hanno bisogno di un momento; le montagne non li aspettano.",
	},
	["ifo.journey.w05.004"] = {
		"esce in volo dal portone nel buio, e la bocca rossa di Ironforge si rimpicciolisce alle spalle fino a diventare una brace sul fianco della montagna.",
		"lascia il bagliore delle forge per l'aria della notte, e il grande portone si riduce a un solo tizzone acceso sul pendio nero.",
	},
	["ifo.journey.w05.005"] = {
		"Basso sotto il portone, bestia, e attento alle teste delle guardie!",
		"Resta sotto gli archi finché non siamo fuori, poi sali quanto ti pare.",
		"Piano davanti alla porta. Le guardie non ridono quando gli sfioriamo l'elmo.",
	},
	["ifo.journey.w05.006"] = {
		"Il martellare mi segue fuori dal portone e si spegne oltre il primo crinale. Dopo Ironforge, il silenzio quassù è immenso.",
		"Alle spalle l'ultimo rintocco delle forge, davanti solo vento. Le mie orecchie non sanno che farsene di tanto silenzio.",
		"Il frastuono di Ironforge resta aggrappato per qualche colpo d'ala, poi la montagna lo inghiotte. Adesso parla solo il vento.",
	},
	["ifo.journey.w05.007"] = {
		"Alle mie spalle il grande portone e i giganti di pietra scolpiti accanto si fanno piccoli. Da quassù l'intera città è solo una porta nella montagna.",
		"Le figure scolpite ai lati del portone ora sembrano minuscole, e il portone stesso una tana di topo nella roccia. Difficile credere che dietro ci viva una città.",
		"Dall'alto, Ironforge è solo una porta sul fianco della montagna. Tutto quello che so di lei sta nascosto dietro quell'unica porta.",
	},
	["ifo.journey.w05.008"] = {
		"passa in volo sopra le guardie del portone, che non inclinano l'elmo nemmeno di un dito per guardare.",
		"sorvola le guardie del portone; una alza la mano senza guardare in su, come si saluta un vicino.",
	},
	["ifo.journey.w05.009"] = {
		"Dal caldo dritto in una raffica di neve. Il grifone scuote la testa una volta e ci si infila lo stesso, salendo.",
		"La neve arriva di traverso oltre il portone. Tre battiti di cuore fa avevo caldo. Li rivorrei indietro.",
	},
	["ifo.journey.w05.010"] = {
		"A ovest, sotto quelle colline bianche, c'è Gnomeregan. Mi dico di non guardare da quella parte. Guardo sempre.",
		"A ovest, oltre i crinali, c'è la casa che abbiamo perduto. Il grifone non volta la testa. Io sì.",
	},
	["ifo.journey.w05.011"] = {
		"viene {g:portato|portata} via dal fianco della montagna in una sola, lunga planata, mentre il vento delle cime si infila sotto le ali del grifone come una mano che solleva.",
		"sente il grifone cadere per un battito appena oltre il portone, poi afferrare il vento della montagna e salire con colpi lunghi e regolari.",
	},
	["ifo.journey.w05.012"] = {
		"Mi porto via il calore delle forge sotto il mantello. Durerà fino al primo crinale, se mi va bene.",
		"Ho ancora il caldo della forgia nelle ossa mentre saliamo. Lo razionerò come il pane da viaggio.",
	},
	["ifo.journey.w05.013"] = {
		"entra dal grande portone ad ali raccolte, giù per la lunga sala e dentro il calore rosso, e il grifone atterra leggero come un guanto lasciato cadere.",
		"viene {g:portato|portata} sotto l'arco del portone e giù nel bagliore della città, mentre il freddo del volo resta sulla soglia.",
	},
	["ifo.journey.w05.014"] = {
		"Un attimo prima vento e pendii bianchi, quello dopo una sala piena di voci e di lampade. Ironforge non conosce le mezze misure.",
		"Niente avvicinamento lento, niente lunga discesa: il portone ci inghiotte, e all'improvviso ci sono una folla e cento lampade.",
	},
	["ifo.journey.w05.015"] = {
		"Chi ha deciso di far atterrare i grifoni dentro una montagna? Lasciamo stare. Lo so chi. I nani.",
		"Far atterrare un grifone al chiuso. Solo a Ironforge qualcuno lo chiamerebbe normale.",
		"Il grifone è entrato in volo da una porta. Da una porta! Questa la racconterò per un bel po'.",
	},
	["ifo.journey.w05.016"] = {
		"Tutta quell'aria gelida, e poi il calore della città mi cade addosso come una coperta buttata sulla testa. Potrei piangere di gratitudine.",
		"Un volo lungo e freddo, e adesso tutte le mie giunture si sciolgono insieme. Fanno un gran rumore, lì dentro.",
	},
	["ifo.journey.w05.017"] = {
		"arriva dalla notte verso un quadrato di luce rossa nel fianco della montagna, e in tre colpi d'ala il buio è rimasto oltre il portone, dimenticato.",
		"scende nella notte verso il portone illuminato, l'unico colore caldo in tutto quel nero e bianco.",
	},
	["ifo.journey.w05.018"] = {
		"Casa. Il grifone lo sa quanto me: raccoglie le ali davanti al portone come un nano che si pulisce gli stivali sulla soglia.",
		"Sotto la mia montagna, finalmente. L'aria sa di carbone, di pietra e di tutto ciò che per me vuol dire casa.",
	},
	["ifo.journey.w05.019"] = {
		"Grazie, bestia. Va' a scaldarti; io ho tutta l'intenzione di farlo.",
		"Bel volo. Tu al tuo posatoio, io al fuoco più vicino.",
	},
	["ifo.journey.w05.020"] = {
		"consegna le redini al maestro dei grifoni e resta {g:fermo|ferma} un istante, lasciando che il clangore e il calore tornino a ordinarsi in una città.",
		"dà un'ultima pacca sul collo del grifone e scende dalla piazzola, mentre il frastuono di Ironforge ritrova la sua forma consueta.",
		"scivola giù, si sfila un paio di guanti irrigiditi e tende le mani verso il bagliore più vicino del metallo fuso.",
	},
	["ifo.journey.w05.021"] = {
		"Le mie orecchie barattano il ruggito del vento con il suono dei martelli. In un caso o nell'altro, niente vacanza.",
		"Vento nelle orecchie per tutto il viaggio, e adesso le forge. Il silenzio lo sentirò da {g:vecchio|vecchia}.",
	},
	["ifo.journey.w05.022"] = {
		"atterra con la neve ancora incrostata sulle spalle, e la guarda scivolare via e sparire sfrigolando sulla pietra calda.",
		"scende da un grifone imbiancato di neve, che fuma piano mentre si scrolla per asciugarsi nel calore.",
	},
	["ifo.journey.w05.023"] = {
		"Lassù tutto era lontano e immenso. Qui dentro tutto è vicino: le pareti, la gente, il calore. Per un po', vicino mi va bene.",
		"Il cielo è vasto e non si cura di nessuno. La montagna è stretta e ti tiene. Adesso preferisco la montagna.",
	},
	["ifo.journey.w05.024"] = {
		"Ho lasciato l'alba fuori dal portone. Qui dentro è la solita ora rossa di sempre, e le forge non si sono accorte che fuori il buio se n'è andato.",
		"Fuori, la prima luce grigia sulle cime. Dentro, niente è cambiato: Ironforge non tiene gli orari del sole.",
	},
	["ifo.journey.w05.025"] = {
		"atterra accanto a uno gnomo che passa di corsa con una cassa di molle, e il grifone osserva la cassa come se potesse essere il pranzo.",
		"tocca terra a un passo da uno gnomo spaventato, che lascia cadere una manciata di bulloni e rimprovera il grifone con una lunga sfilza di termini tecnici.",
	},
	["ifo.memory_return.w05.001"] = {
		"La lunga sala d'ingresso, le pareti scolpite, il primo respiro di calore delle forge. Torna tutto insieme, come una canzone mezza dimenticata.",
		"Ironforge. So da che parte gira l'anello e dove sono gli angoli più caldi. Una città che conosci è un posto diverso da una che visiti.",
		"Qui so dov'è la banca e quali scale sono ripide. Poca cosa, ma basta a far sentire mia una città di pietra.",
	},
	["ifo.memory_return.w05.002"] = {
		"Settimane via, e Ironforge non ha perso un colpo. Gli stessi martelli, giurerei, sulle stesse incudini, fermi a metà colpo da quando sono {g:partito|partita}.",
		"Molto tempo via. La città non se n'è accorta: posti come questo misurano il tempo in re, non in viaggiatori.",
	},
	["ifo.muse.w05.001"] = {
		"Un'intera montagna sopra la testa, e qui dormo meglio che in qualunque prato. C'è una lezione, in questo, che preferirei non imparare.",
		"Tutta quella pietra lassù dovrebbe pesare. Invece sembra un tetto che qualcuno, finalmente, ha costruito come si deve.",
		"Continuo a pensare al peso della montagna sopra di noi. Poi penso ai nani che l'hanno misurato e hanno deciso che andava bene così.",
	},
	["ifo.muse.w05.002"] = {
		"si spazzola via dalla manica una sottile patina grigia di fuliggine, e ne trova altrettanta sull'altra.",
		"strofina una macchia di polvere di carbone sul dorso della mano, e riesce solo a spanderla di più.",
	},
	["ifo.muse.w05.003"] = {
		"Un'altra ora in questa città e mi crescerà la barba per pura buona educazione.",
		"Undici barbe intrecciate tra il portone e la banca. Undici. E un nano che si intreccia pure le sopracciglia.",
		"In questa sala ogni barba ha le sue perline. Con il mento nudo mi sento {g:vestito|vestita} male.",
	},
	["ifo.muse.w05.004"] = {
		"Un tempo i nani erano tre martelli: Bronzebeard, Wildhammer, Dark Iron. In queste sale ne risuona uno solo, e abbastanza forte da coprire il silenzio degli altri due.",
		"Tre clan sotto una sola montagna, tanto tempo fa. Poi una guerra per un trono, e ora i Wildhammer tengono i loro grifoni negli Hinterlands e i Dark Iron tengono il loro rancore a Blackrock.",
	},
	["ifo.muse.w05.005"] = {
		"Il re stregone dei Dark Iron marciò un tempo contro questa montagna, perse, e nella rabbia evocò un signore del fuoco sotto Blackrock. Per questo ogni forgia, qui, arde con un che di sfida.",
		"I nani di Thaurissan persero la guerra contro questa città e frugarono nel fuoco profondo per riprendersi la rivincita. Ci trovarono Ragnaros, e da allora non se ne sono più liberati.",
	},
	["ifo.muse.w05.006"] = {
		"La figlia del re si trova nella Blackrock Mountain, accanto all'imperatore dei Dark Iron. Nelle taverne si discute se l'abbiano presa o se ci sia andata lei. Mai ad alta voce.",
		"L'unica figlia di Magni siede accanto all'imperatore dei Dark Iron, nel profondo di Blackrock. Lo sa tutta la città, e nessuno lo dice vicino al trono.",
	},
	["ifo.muse.w05.007"] = {
		"La Explorers' League mette un'etichetta su qualunque cosa. Ho indugiato troppo in quella sala, e per poco non finivo in catalogo.",
		"Attenzione nella Hall of Explorers. Resta immobile accanto a una teca e qualcuno proverà a stabilire di che secolo sei.",
	},
	["ifo.muse.w05.008"] = {
		"Gli scavatori della League tornano da Uldaman con la polvere nella barba e storie di guardiani di pietra più vecchi di qualunque re. Le raccontano piano, come se i muri potessero sentire.",
		"Nelle Badlands la Explorers' League scava a Uldaman, dove gli antichi artefici hanno lasciato sale che nessun nano ricorda di aver scavato. Gli scavatori tornano a casa più magri, e più strani.",
		"Uno appena tornato da Uldaman descrive una porta più alta del portone di questa città, sigillata senza serrature che si riescano a trovare. Nessuno ride. Hanno visto come gli tremano le mani.",
	},
	["ifo.muse.w05.009"] = {
		"si scansa svelto mentre uno gnomo su un mechanostrider passa sferragliando, agitando una mano per scusarsi e una chiave inglese con l'altra.",
		"guarda un mechanostrider scendere una rampa a passettini precisi e un po' nevrotici, con lo gnomo in sella chino in avanti come un fantino al traguardo.",
		"si appiattisce contro il muro mentre due mechanostrider fanno a gara lungo l'anello, lasciandosi dietro fumo e grida gnomesche.",
	},
	["ifo.muse.w05.010"] = {
		"Gli gnomi qui lavorano come se Gnomeregan aspettasse solo il prossimo progetto. Magari è così. O magari lavorare è l'unico modo di sopportare d'averla persa.",
		"Una città perduta tra troggs e aria avvelenata, e il suo popolo ha aperto bottega a due porte dai nani e ha continuato a inventare. Io me ne sarei {g:stato|stata} in un angolo per un anno.",
	},
	["ifo.muse.w05.011"] = {
		"I troggs sono saliti da qualche parte sotto queste montagne. Nessuno ama dire quanto scenda il pavimento di Ironforge, né cosa ci sia sotto.",
		"Ogni nano di questa città sa che le gallerie profonde possono aprirsi dal basso. Scavano lo stesso. Coraggio o abitudine: con i nani è difficile distinguerli.",
	},
	["ifo.muse.w05.012"] = {
		"Ma in questa città qualcuno sussurra mai? O è contro qualche legge della montagna?",
		"Due nani hanno appena fatto due chiacchiere amichevoli. L'avevo presa per una rissa, finché non si sono abbracciati.",
		"Ho chiesto a un nano di abbassare la voce. Lui l'ha abbassata. L'eco no.",
	},
	["ifo.muse.w05.013"] = {
		"Un tempo l'Orda dilagò in tutta Khaz Modan e non passò mai quel portone. I nani quasi non se ne vantano. Non ne hanno bisogno: il portone è ancora lì.",
		"Nella Seconda Guerra gli orchi tenevano i valichi e le miniere, eppure la montagna tenne chiusa la sua porta. Quella testardaggine sta in ogni muro.",
	},
	["ifo.muse.w05.014"] = {
		"Un Wildhammer attraversa il Commons con i tatuaggi su tutte e due le braccia e una piuma di grifone legata nei capelli. I Bronzebeard gli lasciano spazio e un cenno, e poco altro.",
		"I Wildhammer li riconosci dall'inchiostro e dalle piume, e da come alzano gli occhi al soffitto come se avessero perso il cielo da qualche parte. Con loro entrano anche le vecchie liti.",
	},
	["ifo.muse.w05.015"] = {
		"Grifoni che strillano da qualche parte tra le sale di pietra. Sembrano offesi dal soffitto, e non posso dar loro torto.",
		"Una piuma sciolta mi scende accanto, fulva e lunga quanto un avambraccio. Da qualche parte, lassù, un grifone si scrolla le ali in una stanza troppo stretta.",
		"Un addestratore di grifoni passa con graffi su entrambi gli avambracci e la faccia tranquilla di chi ha smesso di contarli da un pezzo.",
	},
	["ifo.muse.w05.016"] = {
		"guarda un elfo della notte ripiegarsi su una panca a misura di nano, le ginocchia quasi al mento, con tutta la dignità che la panca concede.",
		"nasconde un sorriso mentre un viaggiatore altissimo china la testa sotto un architrave che qualunque nano passerebbe con una spanna di margine.",
	},
	["ifo.muse.w05.017"] = {
		"Qui dentro sembrano tutti scottati dal sole. È la luce della forgia: dipinge ogni faccia dello stesso rame, nani, gnomi e forestieri.",
		"Dopo un po' quella luce rossa smette di sembrare luce. È semplicemente il colore del mondo, quaggiù.",
	},
	["ifo.muse.w05.018"] = {
		"Polvere nera e olio da fucile dalla porta dell'armaiolo. I nani trattano un fucile come altri trattano un cimelio di famiglia: oliato dopo ogni uso, e mai prestato.",
		"Fucili in rastrelliera come attrezzi in una bottega. A Ironforge un'arma da fuoco non è tanto un'arma quanto un argomento che arriva molto lontano.",
		"Un nano prende la mira lungo una canna nuova verso il muro in fondo, borbottando di un capello di deviazione. Il muro, saggiamente, tace.",
	},
	["ifo.muse.w05.019"] = {
		"Nani Stormpike nel Military Ward, che radunano gente per l'Alterac Valley. Parlano dei Frostwolf come i minatori parlano di una vena cattiva: roba da scavare via.",
		"A pochi giorni di distanza un'altra compagnia parte per l'Alterac, a difendere i diritti degli Stormpike contro gli orchi lassù. Alcuni tornano e ne parlano. Altri tornano e non parlano affatto.",
	},
	["ifo.muse.w05.020"] = {
		"Un viaggiatore è appena arrivato da Kharanos con un sacco che tintinna. Nessuno ha avuto bisogno di chiedere cosa ci fosse dentro: tre nani gli si sono messi in fila dietro.",
		"La Thunderbrew portata su da Kharanos a casse intere e rivenduta qui al doppio. I nani brontolano, pagano, e continuano a brontolare a bocca piena.",
		"Metà dei nani di questa sala sa dirti da quale botte di Kharanos viene una birra scura. Nessuno sa dirti che giorno è.",
	},
	["ifo.muse.w05.021"] = {
		"Il re aveva due fratelli. Uno andò a nord con un principe di Lordaeron e non tornò più; l'altro è da qualche parte con una pala, come al solito. Magni tiene calda la sala per una famiglia sempre lontana.",
		"Muradin perso nel nord gelato, Brann a scavare in qualche rovina lontana. La sala di un re può farsi silenziosa, anche in una città rumorosa come questa.",
	},
	["ifo.muse.w05.022"] = {
		"Quel mercante ha morso la mia moneta prima di accettarla. Mai vista una dentatura giudicare con tanta severità.",
		"I mercanti nani pesano ogni moneta due volte: una sulla bilancia e una con lo sguardo.",
		"Ha fatto suonare il mio argento sul banco e l'ha ascoltato come un bardo che accorda il liuto. Pare che suoni giusto. Buono a sapersi.",
	},
	["ifo.muse.w05.023"] = {
		"aggira con cautela un nano addormentato su una panca in cotta di maglia, che russa con un ritmo quasi a tempo coi martelli.",
		"si ferma accanto a un fabbro appisolato contro un pilastro, il grembiule ancora addosso e il martello ancora in mano, e decide di non essere chi lo sveglierà.",
	},
	["ifo.muse.w05.024"] = {
		"Mezza Alleanza sembra tenere i risparmi sotto questa montagna. Se i caveau di Ironforge cadessero, interi regni patirebbero la fame prima della fine della settimana.",
		"I banchieri del Commons stanno dietro i banconi come montagne davanti a una montagna. Nessuno ha mai provato a derubare questo posto due volte.",
	},
	["ifo.muse.w05.025"] = {
		"I banditori qui parlano così in fretta che potrei aver fatto un'offerta per una cassa di rame. Preferisco non controllare.",
		"L'asta di Ironforge: dove un nano rilancia su un piccone solo per vedere la faccia che fai.",
	},
	["ifo.muse.w05.026"] = {
		"Ogni volta che il grande portone fa entrare qualcuno, un soffio del freddo della montagna scivola sul pavimento e muore nel tepore prima di arrivare alla forgia.",
		"Vicino all'ingresso il pavimento resta freddo, consumato da mille stivali bagnati, e il caldo comincia solo una dozzina di passi più in là, come un padrone di casa che aspetta di capire chi sei.",
	},
	["ifo.muse.w05.027"] = {
		"I paladini nani pregano come forgiano: parole brevi, colpi pesanti, e nessun dubbio che il lavoro reggerà.",
		"I sacerdoti del Mystic Ward parlano della Luce come di un altro minerale della montagna, che aspetta chi scava con onestà.",
		"Un nano si inginocchia un momento accanto a un pilastro, il martello sulle ginocchia, muovendo le labbra. Poi si rialza, fa un cenno a nessuno e torna al lavoro. Quella era tutta la preghiera, e sembrava bastare.",
	},
	["ifo.muse.w05.028"] = {
		"Uno gnomo mi ha appena misurato con un righello d'ottone, si è segnato un numero e se n'è andato. Vorrei proprio sapere a che scopo.",
		"Uno gnomo mi ha chiesto se mi offrivo per un piccolo esperimento. Gli ho chiesto quanto piccolo. La risposta è stata: «In gran parte».",
	},
	["ifo.muse.w05.029"] = {
		"aggira l'orso di un cacciatore sdraiato in mezzo al Commons, che apre un occhio, valuta, e lo richiude.",
		"aspetta che un cacciatore convinca un cinghiale testardo a togliersi dalla porta della banca, uno strattone paziente dopo l'altro.",
	},
	["ifo.muse.w05.030"] = {
		"I vecchi fabbri di qui dicono che il ferro dimentica il fuoco ma non il martello. Credo che parlino delle persone, e credo che abbiano ragione.",
		"Il ferro dimentica il fuoco, dicono i fabbri, ma si ricorda ogni colpo. Lo dicono delle lame. Mentre lo dicono, però, la lama non la guardano.",
	},
	["ifo.muse.w05.031"] = {
		"La gente risale dal Deeprun Tram con l'aria un po' nauseata e molto fiera di sé. Stormwind è al di là di un mare intero, e ci sono passati sotto.",
		"Ogni tanto il tram consegna una nuova infornata di umani, che sbattono le palpebre alla luce della forgia e sanno vagamente d'olio.",
	},
	["ifo.muse.w05.032"] = {
		"Il re degli umani è scomparso e al suo posto siede un reggente. Chiedi a un nano cosa ne pensa e ottieni un grugnito che può voler dire qualunque cosa, e probabilmente vuol dire tutto.",
		"Le notizie da Stormwind risalgono col tram: ancora nessun re, comanda sempre il reggente. I nani scuotono la testa e tornano al lavoro. I re, sembrano dire, dovrebbero restare dove li hai messi.",
	},
	["ifo.muse.w05.033"] = {
		"I nani dicono di deporre i loro morti nella pietra stessa, abbastanza vicino da sentire i martelli. Non ho mai chiesto quale muro. Adesso cammino con un passo più leggero.",
		"I nani dicono che i loro morti tornano alla pietra da cui sono venuti. A guardare questi muri, quasi vedo dei volti nelle venature.",
	},
	["ifo.muse.w05.034"] = {
		"A Ironforge nessuno sembra stare con le mani in mano. Anche i nani che si riposano ai parapetti discutono di come avrebbero fatto meglio il lavoro.",
		"Qui tutti hanno un mestiere, e un'opinione su quello degli altri. Ne vengono sale rumorose e stivali ottimi.",
		"Un'apprendista lascia cadere una tenaglia, e sei voci da sei forge diverse le spiegano cosa ha sbagliato. Lei la raccoglie sorridendo. È così che capisci che resterà.",
	},
	["ifo.muse.w05.035"] = {
		"ascolta un gruppo di minatori che attacca una canzone da qualche parte nel Commons, voci profonde che rotolano per la sala come botti giù per una rampa.",
		"si ferma a cogliere l'aria di una canzone da osteria che esce da una porta, tutta voce di basso e nessun ritegno.",
		"si accorge di battere il piede al ritmo di un canto di lavoro che arriva dalle forge prima ancora di rendersi conto di sentirlo.",
	},
	["ifo.muse.w05.036"] = {
		"Alcuni Dark Iron si sono staccati dai loro e si fanno chiamare Thorium Brotherhood, laggiù nella Searing Gorge. I Bronzebeard di qui non sanno se fidarsi o limitarsi a comprare il loro minerale.",
		"La Thorium Brotherhood insegna i suoi segreti di forgia a chi se li guadagna. In questa città è un pensiero strano: un Dark Iron che ha qualcosa da insegnare.",
	},
	["ifo.muse.w05.037"] = {
		"Se compro un altro piccone in questa città, dovrò mettermi a scavare solo per giustificarlo.",
		"Ogni fabbro di questa sala si è offerto di sistemarmi l'equipaggiamento. Nessuno si è offerto di farlo a buon prezzo.",
		"Volevo solo una cote. Esco con una cote, una predica e l'indirizzo del cugino di qualcuno.",
	},
	["ifo.muse.w05.038"] = {
		"Qui tutti appartengono a qualcosa: un clan, una gilda, una forgia. Io sono solo di passaggio, e la città è troppo occupata per farmene una colpa.",
		"Una città così indaffarata non ha tempo di accorgersi di una faccia nella folla. Certi giorni brucia. Oggi è un riposo.",
	},
	["ifo.muse.w05.039"] = {
		"I forestieri entrano e restano a bocca aperta davanti alle sale. Un po' ci resto anch'io, a dirla tutta. Sapere che l'ha costruita la tua gente non rende una cosa più piccola.",
		"Ogni visitatore chiede quanto ci sia voluto a scavare tutto questo. Rispondo «un po'», come facciamo tutti, e tengo l'orgoglio dietro i denti.",
	},
	["ifo.muse.w05.040"] = {
		"Alcuni di noi sono ancora laggiù a Gnomeregan, malati per l'aria che abbiamo liberato. Abbiamo chiuso una porta per salvare la città e l'abbiamo chiusa sulla nostra gente. Ci penso più di quanto lo dica a chiunque.",
		"Tinker Town è rumorosa, luminosa e piena di buone idee. È anche piena di gnomi che trasaliscono quando si nominano i troggs. Abbiamo portato con noi gli attrezzi, e i nostri fantasmi.",
	},
	["ifo.muse.w05.041"] = {
		"fa girare una moneta tra le dita, guardando la luce della forgia scorrerle lungo il bordo.",
		"si siede un momento sull'orlo di un gradino di pietra, fuori dal fiume di gente, e lascia scorrere il rumore della città.",
		"si appoggia a un pilastro fresco con gli occhi socchiusi, lasciando che il martellare si assesti in qualcosa di simile a un battito.",
	},
	["ifo.muse.w05.042"] = {
		"Gli avventurieri ripassano di qui che sanno di zolfo, e parlano del Molten Core come della cantina di un vicino poco raccomandabile. Il Signore del Fuoco, laggiù, dicono che abbia il sonno leggero.",
		"Un nano in una cotta annerita dal fuoco racconta alla fila della banca di Blackrock Depths. La fila ascolta, e nessuno dice «imperatore» più forte di un borbottio.",
	},
	["ifo.muse.w05.043"] = {
		"L'aria calda sale per i pozzi e quella fredda scende per le scale. A restare immobili abbastanza a lungo, giureresti che la montagna respiri piano nel sonno.",
		"Qui dentro l'aria si muove in correnti lunghe e lente, fuori dalla forgia e su, nel buio. Una città che respira attraverso la pietra.",
	},
	["ifo.muse.w05.044"] = {
		"Un nano ha appena ordinato un porridge con una birra scura di contorno, e poi la birra scura con un'altra birra scura di contorno.",
		"Alla taverna ho chiesto dell'acqua. Il nano al banco ha fatto la faccia di chi si sente chiedere una montagna più piccola.",
	},
	["ifo.muse.w05.045"] = {
		"In questa città persino i cardini sono decorati. Qualcuno ha passato una settimana su una maniglia che nessuno studierà mai, tranne me.",
		"Intrecci sui reggilampada, rune sulle grate degli scoli. I nani non sanno fare una cosa semplice, e se ci riuscissero non se ne fiderebbero.",
	},
	["ifo.muse.w05.046"] = {
		"Queste sale erano già vecchie prima che nascesse chiunque io conosca, e staranno in piedi quando saremo tutti dimenticati. È stranamente riposante, essere così piccoli.",
		"In un angolo di questa montagna stanno scavando una sala che non vedrò finita. I nani cominciano lo stesso imprese così. Li invidio, per questo.",
	},
	["ifo.muse.w05.047"] = {
		"Arriva un carrello di minerale! ...è quello che avrebbe dovuto gridare quel nano. Glielo ricorderà il mio stinco.",
		"Qualcuno in questa città dovrebbe appendere dei campanelli ai carrelli del minerale. Possibilmente prima che io perda un dito del piede.",
		"Occhio ai binari, ai carrelli, alle scintille e ai nani. In quest'ordine, a quanto pare.",
	},
	["ifo.muse.w05.048"] = {
		"L'aggeggio di uno gnomo ha appena tossito fumo sulla barba di un nano. Il nano ha contato fino a cinque, molto lentamente, e ha ripreso la sua giornata. Ecco com'è un'alleanza vista da vicino.",
		"I nani hanno accolto gli gnomi, esplosioni comprese. Ho visto meno pazienza tra fratelli.",
	},
	["ifo.muse.w05.049"] = {
		"nota che la folla nel Commons si è diradata, i martelli no: da qualche parte il turno di notte sta appena prendendo il ritmo.",
		"percorre le sale più quiete delle ore tarde, dove il bagliore della forgia arriva più lontano senza tanta gente in mezzo.",
	},
	["ifo.muse.w05.050"] = {
		"I primi viaggiatori del mattino entrano dal portone battendo i piedi, la faccia arrossata dal vento dell'alba. Qui dentro la forgia non sa che è cominciato un nuovo giorno.",
		"Là fuori il sole sta sorgendo su Dun Morogh. Qui dentro l'unico segno è un nuovo turno di fabbri che sbadigliano nella barba.",
	},
	["ifo.muse.w05.051"] = {
		"C'è un nano chino sulla stessa tavoletta incrinata da quando sono {g:entrato|entrata}, che muove le labbra. Qualunque cosa dica, per lui conta più del pranzo.",
		"La biblioteca sa di polvere, di olio da lampada e di cuoio vecchissimo. Di tutta Ironforge, è l'unico posto dove i nani si zittiscono a vicenda.",
	},
	["ifo.muse.w05.052"] = {
		"Metà delle lame dell'Alleanza sono state battute a portata d'orecchio da qui. Da qualche parte un soldato in Ashenvale impugna un filo forgiato a Ironforge, e non pensa nemmeno di dover ringraziare.",
		"L'acciaio dei nani lascia questa montagna su carri e sul tram, verso ogni fronte che l'Alleanza tiene. La montagna combatte le sue guerre lontano, senza mai uscire di casa.",
	},
	["ifo.muse.w05.053"] = {
		"Potrei vivere qui. Caldo, rumore, e nessuno può arrivarti alle spalle attraverso una montagna.",
		"Ironforge: l'unica città dove anche il pisolino ha l'accompagnamento delle percussioni.",
		"Buone mura, cibo caldo e una guardia su ogni scala. Ho avuto idee peggiori che restare qui.",
	},
	["ifo.muse.w05.054"] = {
		"Un vecchio nano al parapetto, con una gamba che finisce in un piolo d'acciaio lucente. Lo batte sulla pietra a tempo coi martelli, come fosse la cosa più naturale del mondo.",
		"Cicatrici dappertutto, in questa città, e nessuno le nasconde. Un nano con mezza barba bruciata ha appena riso più forte di tutti al banco.",
	},
	["ifo.muse.w05.055"] = {
		"respira a fondo fumo di carbone, carne arrosto e metallo caldo, tossisce una volta, e sorride lo stesso.",
		"arriccia il naso all'odore di lana bruciacchiata che arriva da qualche parte vicino alle forge.",
	},
	["ifo.muse.w05.056"] = {
		"La Explorers' League sostiene che i nani furono plasmati dalla pietra viva dagli artefici del mondo. A vederne uno caricarsi in spalla un barile pieno come se fosse vuoto, sono {g:propenso|propensa} a crederci.",
		"Figli della pietra, chiamano i nani i dotti della League, dopo quello che hanno letto a Uldaman. I nani non sembrano né sorpresi né lusingati.",
		"Nella Hall of Explorers, pare, ci sono tavolette che dicono chi ha fatto i nani. Quasi tutti i nani che conosco sono più interessati a chi ha fatto la birra.",
	},
	["ifo.muse.w05.057"] = {
		"Dopo la strada, il caldo di questa città entra dritto nelle giunture, come una pietra calda infilata nel giaciglio.",
		"Dieci minuti vicino alle forge e chiunque torna a sentirsi una persona. Perfino io.",
	},
	["ifo.muse.w05.058"] = {
		"I fabbri giurano che la Great Forge non si è mai raffreddata, nemmeno una volta da quando fu scavata la prima sala. Non ho modo di verificarlo, né voglia di essere chi la lascia spegnere.",
		"Chiedi a un fabbro quando la forgia è stata fredda l'ultima volta e ti guarderà come se gli avessi chiesto quando si è mossa la montagna.",
	},
	["ifo.muse.w05.059"] = {
		"Gli gnomi dicono che il tram è perfettamente sicuro. L'hanno detto sorridendo, ed è questo che mi preoccupa.",
		"Qualcuno a Tinker Town grida «Funziona!». O è un'ottima notizia, o è l'ultima cosa che si grida.",
	},
	["ifo.muse.w05.060"] = {
		"Oltre il portone le strade vanno ovunque: a est verso Loch Modan e la sua grande diga, poi a nord per Dun Algaz fino alle Wetlands e al porto di Menethil. Ironforge è il nodo a cui sono legate tutte quelle strade.",
		"Ogni strada di Khaz Modan prima o poi finisce a questo portone. A me resta solo da scegliere per quale uscire di nuovo.",
	},
	["ifo.muse.w05.061"] = {
		"Il pane dei nani è così compatto che ci si potrebbe murare una parete. Ho comprato due pagnotte. Le mangerò fino alla vecchiaia.",
		"Costine di cinghiale, pane nero e un formaggio che ha chiaramente fatto una guerra. La cucina dei nani non ti chiede com'è andata la giornata: la aggiusta.",
	},
	["ifo.muse.w05.062"] = {
		"Per essere una città di fuoco e di pietra, a Ironforge si ride parecchio. Forte, all'improvviso e di pancia, come tutto il resto qui.",
		"Nel Commons esplode una risata che fa il giro dell'anello prima di spegnersi. Mi sorprendo a sorridere per una battuta che non ho mai sentito.",
	},
	["ifo.muse.w05.063"] = {
		"si fa da parte mentre una fila di guardie passa marciando, gli stivali che battono la pietra a tempo perfetto.",
		"guarda due guardie scambiarsi un cenno al cambio della sentinella, un rito breve come un battito e altrettanto regolare.",
		"coglie il luccichio di una cotta lucidata mentre una guardia si volta in cima a una scala, lenta e squadrata, come una porta su un buon cardine.",
	},
	["ifo.muse.w05.064"] = {
		"Un ariete mi ha appena mangiato un angolo della mappa mentre il suo padrone contrattava. Il padrone dice che vuol dire che gli sto {g:simpatico|simpatica}.",
		"Chi cavalca un ariete attraversa il Commons al trotto come se fosse suo. Magari lo è. Occhio ai piedi.",
	},
	["ifo.muse.w05.065"] = {
		"I nani non parlano molto di coraggio. Parlano del lavoro, poi lo fanno, e in qualche modo è la stessa cosa.",
		"Qualunque cosa esca da Blackrock o dal profondo, questa città la affronterà come affronta tutto: con le maniche rimboccate.",
		"Non ho mai sentito un nano, qui, dire la parola «coraggioso». Ne ho visti tanti esserlo, mentre andavano a fare altro.",
	},
	["ifo.muse.w05.066"] = {
		"Lungo ogni sala pendono lampade d'ottone e vetro spesso, e nessuna tremola. Gli gnomi giurano di averci messo mano. I nani giurano il contrario.",
		"In questa città non ci sono due lampade uguali. Ognuna l'ha fatta qualcuno convinto che il suo fosse il modo giusto di tenere una fiamma.",
	},
	["ifo.muse.w05.067"] = {
		"In tutto questo rumore c'è una strana intimità. Nessuno può sentirmi pensare sopra i martelli, nemmeno io.",
		"Strano quanto si possa essere soli in mezzo a una folla di nani. Sono tutti così sicuri di quello che fanno, e io sono solo qui, in piedi.",
	},
	["ifo.muse.w05.068"] = {
		"Che i Dark Iron provino di nuovo con quel portone. Pagherei buon argento per un posto in prima fila.",
		"Questa montagna ha detto di no a ogni esercito che abbia bussato. Mi piace una città che conosce una parola sola e la pensa davvero.",
	},
	["ifo.muse.w05.069"] = {
		"Qui gli apprendisti cominciano spazzando, poi portando pesi, poi guardando. Passano anni prima che li lascino avvicinarsi a un'incudine. Nessuno sembra trovarlo lento.",
		"Un giovane fabbro tiene una barra di ferro nella brace mentre il maestro conta sottovoce. Troppo presto e si spacca, troppo tardi ed è rovinata. Metà dell'imparare sta in quel conto.",
	},
	["ifo.npc_meet.w05.001"] = {
		"passa accanto a una guardia di Ironforge così immobile nella sua armatura pesante che solo il lento movimento degli occhi la tradisce.",
		"fa un cenno a una guardia la cui armatura sembra forgiata in un solo pezzo, e riceve in cambio un minimo inchino dell'elmo.",
		"passa accanto a due guardie che discutono, a voce bassa e seria, i pregi di due birre diverse.",
	},
	["ifo.npc_meet.w05.002"] = {
		"Qualcosa di interessante al portone? Mi accontento dei pettegolezzi, se notizie non ce ne sono.",
		"Sempre lì a reggere la montagna? Ottimo lavoro. Sembra solidissima.",
		"Non fate caso a me. Ammiro solo l'ascia. A rispettosa distanza.",
	},
	["ifo.npc_meet.w05.003"] = {
		"L'oste mi squadra come un birraio saggia una botte: un colpo, un ascolto, un verdetto.",
		"Dietro il banco, una faccia che ha versato da bere a minatori, guardie del re e inventori gnomi. Difficile che io riesca a sorprenderla.",
	},
	["ifo.npc_meet.w05.004"] = {
		"Una stanza, un pasto caldo, e quello che versereste a chi è appena {g:arrivato|arrivata} dal freddo.",
		"Qualcosa che sostenga, per favore. E un posto con la pietra alle spalle.",
		"Lo stufato è forte come la birra? Allora solo lo stufato, credo.",
	},
	["ifo.npc_meet.w05.005"] = {
		"osserva un mercante contare il resto con dita annerite dalle forge, battendo ogni moneta una volta sul banco come per saggiarla.",
		"si vede mostrare un paio di stivali da un mercante che li rigira, ne batte le suole l'una contro l'altra e annuncia il prezzo come se lo leggesse su una tavola di pietra.",
	},
	["ifo.npc_meet.w05.006"] = {
		"A Ironforge anche i bottegai parlano come fabbri: peso, tempra, quanto durerà. Il prezzo viene per ultimo, e non è mai piccolo.",
		"Questo vuole che tocchi le cuciture prima di sentire il prezzo. Buon segno per le cuciture, pessimo per la mia borsa.",
	},
	["ifo.npc_meet.w05.007"] = {
		"Gli occhi dell'istruttore vanno alla mia postura prima che alla mia faccia. Giusto. La postura ha più da dire.",
		"Un istruttore che sembra aver pagato ogni lezione con un livido. Ascolterò con attenzione.",
		"In questa città i maestri non lusingano. Indicano ciò che non va e aspettano. Con questo posso lavorare.",
	},
	["ifo.npc_meet.w05.008"] = {
		"accenna un inchino all'istruttore, che risponde con un grugnito e indica un tratto di pavimento libero.",
		"viene {g:accolto|accolta} dall'istruttore con un solo sopracciglio alzato, che in questa città vale come un caloroso benvenuto.",
	},
	["ifo.npc_meet.w05.009"] = {
		"aspetta accanto al maestro dei grifoni mentre gli portano un animale, con gli artigli che ticchettano sulla pietra e le piume arruffate dal calore delle forge.",
		"osserva il maestro dei grifoni controllare una bardatura cinghia per cinghia, mentre la bestia alle sue spalle si agita e sbatte le palpebre nella luce rossa.",
	},
	["ifo.npc_meet.w05.010"] = {
		"Tutto quello che possiedo, per favore, nel buco più sicuro della montagna.",
		"Mettetelo in fondo. Più in fondo di così, se si può.",
		"Se non lo custodisce il caveau di Ironforge, non lo custodisce nessuno. Dentro.",
	},
	["ifo.npc_meet.w05.011"] = {
		"Ecco lo sguardo: qualcuno a Ironforge ha un problema troppo pesante, troppo lontano o troppo pericoloso, e la scelta per portarlo è appena caduta su di me.",
		"Un colpetto di tosse cortese, un lungo respiro, un «allora, dunque». Lo conosco, quel preambolo: in fondo c'è un lavoro.",
	},
	["ifo.npc_meet.w05.012"] = {
		"Avete l'aria di chi ha un problema. È pesante, lontano o arrabbiato?",
		"Avanti, allora. Ditemi cosa c'è da fare, e quanto fa freddo dove c'è da farlo.",
	},
	["ifo.npcd_flightmaster_open.w05.001"] = {
		"I grifoni hanno mangiato e il portone è sgombro. Dove ti portiamo?",
		"Avvicinati al posatoio. Attenzione ai becchi: sono curiosi di chiunque non conoscano.",
	},
	["ifo.npcd_guard_bye.w05.001"] = {
		"Vai pure. E stringi il mantello oltre il portone: là fuori morde.",
		"Va' per la tua strada. La montagna sarà ancora qui.",
	},
	["ifo.npcd_guard_directions.w05.001"] = {
		"Banca, casa d'aste e locanda sono tutte nei Commons. Segui l'anello e il rumore delle monete.",
		"Guerrieri e cacciatori si addestrano nel Military Ward; sacerdoti e paladini nel Mystic Ward. Gli gnomi e il loro tram stanno a Tinker Town.",
		"Il maestro dei grifoni è vicino alla Great Forge, e il portone è in fondo alla lunga sala. Perdersi è impossibile: è un cerchio.",
	},
	["ifo.npcd_guard_open.w05.001"] = {
		"Ironforge ti dà il benvenuto. Armi nel fodero e voce sotto i martelli, e andremo d'accordo.",
		"Dentro il portone vale la legge del re. Rispettala, e goditi il caldo.",
	},
	["ifo.npcd_guard_open.w05.002"] = {
		"Di' che cosa ti serve. In fretta, se puoi: hai ancora il freddo addosso.",
		"Mh. Ecco qualcuno da fuori. Batti gli stivali e parla forte.",
	},
	["ifo.npcd_innkeeper_bye.w05.001"] = {
		"Vai, allora. Il tuo boccale sarà pulito e ti aspetterà.",
		"Buona strada. Se il freddo diventa troppo, sai quale montagna ha un fuoco dentro.",
	},
	["ifo.npcd_innkeeper_news.w05.001"] = {
		"La Explorers' League ha mandato un'altra squadra verso Uldaman. Prima però sono passati di qui a brindare, tutti quanti.",
		"Un minatore di Loch Modan giura che nelle vecchie gallerie i trogg sono più fitti che mai. E beveva proprio come chi li ha visti.",
	},
	["ifo.npcd_innkeeper_open.w05.001"] = {
		"Entra, siediti, scaldati. La montagna tiene fuori il freddo; io tengo pieni i boccali.",
		"Un posto vicino al fuoco? Scegli pure. A Ironforge, in un modo o nell'altro, sono tutti vicino al fuoco.",
	},
	["ifo.npcd_innkeeper_open.w05.002"] = {
		"Hai l'aria di chi ha fatto tanta strada con poche provviste. Prima lo stufato, poi le domande.",
		"Siediti prima di cadere. Ho visto quella faccia sui minatori dopo un doppio turno.",
	},
	["ifo.npcd_merchant_bye.w05.001"] = {
		"Torna quando quegli stivali saranno consumati. Non succederà presto, sia chiaro.",
		"Buoni affari. Racconta a Stormwind dove stanno i prezzi onesti.",
	},
	["ifo.npcd_merchant_news.w05.001"] = {
		"Il minerale arriva lento dal lago. Dicono che ci siano i trogg nelle miniere, e il ferro costa di più.",
		"Il tram ha portato una cassa di stoffa da Stormwind, questa settimana, un po' umida. Gli gnomi danno la colpa al mare; il mare non risponde.",
	},
	["ifo.npcd_merchant_open.w05.001"] = {
		"Dai un'occhiata. Tutto su questo banco è stato fatto sotto questa montagna, e probabilmente durerà più di tutti e due.",
		"Guarda pure quanto vuoi. Merce nanica: pesante, onesta, e non economica.",
	},
	["ifo.npcd_merchant_open.w05.002"] = {
		"Salve, salve! Attenzione allo scaffale a sinistra, è a molla. I prezzi no, quelli sono ragionevolissimi.",
		"Avanti, avanti! Tocca pure tutto, tranne la cosa che ticchetta.",
	},
	["ifo.npcd_merchant_wares.w05.001"] = {
		"Corda, acciarino, un buon coltello e una fiaschetta di qualcosa contro il freddo. Tutto per la strada giù dalla montagna.",
		"Stivali con il ferro nelle suole, guanti foderati di lana. Dun Morogh non perdona il cuoio sottile.",
	},
	["ifo.npcd_trainer_open.w05.001"] = {
		"Sei qui per imparare? Allora pianta bene i piedi. A Ironforge tutto comincia da come stai in piedi.",
		"Fammi vedere le mani. Calli nei punti giusti? Bene. Possiamo lavorarci.",
	},
	["ifo.pray.w05.001"] = {
		"Chiunque vegli su questa montagna: tieni accese le forge, saldo il portone e piene di voci le sale.",
		"A chiunque ascolti le preghiere a questa profondità nella pietra: tieni al caldo, sazia e al sicuro la gente di questa città.",
		"Reggi, vecchia montagna. Reggi sopra tutti noi, come hai sempre fatto.",
	},
	["ifo.quest_complete.w05.001"] = {
		"Fatto. In questa montagna c'è già un archivista che lo sta annotando. I nani tengono nota di tutto, probabilmente anche di questo pensiero.",
		"Finito, e scommetto che è già finito in qualche registro. Ironforge non dimentica niente di ciò che si può mettere per iscritto.",
		"Lavoro chiuso. In una città che incide la sua storia sui muri, sospetto che anche le piccole commissioni si guadagnino una riga.",
	},
	["ifo.quest_complete.w05.002"] = {
		"Sistemato. Allora, da che parte dell'anello stava la banca? Lasciamo stare: a Ironforge, prima o poi, ogni strada ci arriva.",
		"Finito. Torno alla banca girando in tondo, che in questa città è proprio il metodo giusto.",
		"Fatto e pagato. Se continuo a camminare ripasso davanti alla forgia, alla banca, e poi ricapito proprio qui. Ironforge è fatta così.",
	},
	["ifo.quest_complete.w05.003"] = {
		"pulisce una macchia di fuliggine dalla ricompensa prima di metterla via: a Ironforge niente passa di mano senza raccoglierne un po'.",
		"intasca la ricompensa e ci trova sopra l'impronta di un pollice sporco di carbone, il sigillo della città sull'accordo.",
		"si scuote la fuliggine dalle dita dopo la stretta di mano: il lavoro è fatto, e la sporcizia della città equamente divisa.",
	},
	["ifo.quest_complete.w05.004"] = {
		"Tutti, in questa città, fanno qualcosa che durerà più di loro. Oggi, nel mio piccolo, anch'io.",
		"Fabbri, scalpellini, birrai, inventori: Ironforge è piena di gente che porta a termine le cose. Fa piacere stare tra loro, per un'ora.",
		"Una città di artigiani, e per una volta anch'io ho qualcosa di finito da mostrare. Mi sta bene addosso.",
	},
	["ifo.quest_complete.w05.005"] = {
		"È stato un piacere lavorare sotto la montagna. Chiamatemi quando volete.",
		"Bello lavorare per questa città. Se c'è altro, sapete dove trovarmi: in qualche posto caldo.",
		"La mia parte è fatta. Se serve altro, Ironforge sa dove cercarmi.",
	},
	["ifo.quest_complete.w05.006"] = {
		"Fatto. Mi fanno male i piedi come solo i pavimenti di pietra sanno fare. Una sedia, presto, e niente da portare.",
		"Finito, e ogni passo che mi è costato l'ho fatto su roccia viva. I miei talloni hanno qualcosa da dire su questa città.",
		"Consegnato. I pavimenti di Ironforge sono bellissimi e senza pietà: ho bisogno di sedermi.",
	},
	["ifo.quest_complete.w05.007"] = {
		"In questa città un complimento è fatto di due parole, e la seconda di solito è «prossimo».",
		"Un grazie, la paga e un cenno verso la porta, tutto in un solo respiro. Ironforge non spreca parole, né il tempo di nessuno.",
		"Niente storie, niente cerimonie: il lavoro controllato, la paga contata, la faccenda chiusa. Alle maniere di Ironforge potrei abituarmi.",
	},
	["ifo.quest_complete.w05.008"] = {
		"riceve le congratulazioni di uno gnomo di passaggio, che chiaramente non sa per cosa, ma ne sembra felicissimo lo stesso.",
		"si prende un'allegra pacca sul gomito da uno gnomo indaffarato, che dell'incarico non può sapere niente, né gli importa.",
		"si sente applaudire da uno gnomo che passa di corsa con le braccia piene di ingranaggi, e che non ha idea del perché.",
	},
	["ifo.quest_complete.w05.009"] = {
		"Una cosa in meno sulla lista. La lista resta più lunga del Deeprun Tram.",
		"Fatto. Mi mancano solo commissioni per la lunghezza di un tunnel.",
		"Depennato. Se la mia lista fosse una strada, arriverebbe a Stormwind passando sotto il mare.",
	},
	["ifo.quest_complete.w05.010"] = {
		"Un grazie, le monete, e poi la città si richiude sul momento come l'acqua su un sasso. Qui nessuno si sofferma. Non mi dispiace.",
		"I martelli non si sono fermati. A Ironforge non si ferma mai niente. Il lavoro è fatto, e la montagna continua a lavorare.",
		"Un piccolo trionfo, e Ironforge non alza nemmeno la testa dall'incudine. In qualche modo rimette le cose nelle giuste proporzioni.",
	},
	["ifo.quest_complete.w05.011"] = {
		"Ogni incarico svolto qui entra nell'Alleanza come un ribattino in una piastra. Piccolo, e tiene.",
		"Un altro ribattino nell'armatura dell'Alleanza. Nessuno ammira i ribattini, ma provate a toglierne uno.",
		"È così che un regno resta saldo: un pezzo piccolo, ben fissato, e poi il successivo.",
	},
	["ifo.quest_complete.w05.012"] = {
		"Che il lavoro tenga come la pietra di questa città.",
		"Fatto. Che duri come le mura che ci circondano.",
		"È finito. Che resista quanto Ironforge.",
	},
	["ifo.quest_complete.w05.013"] = {
		"Perfino le monete con cui mi hanno pagato sanno di fumo di carbone. A Ironforge prima o poi tutto ne prende l'odore, anch'io.",
		"La ricompensa è tiepida di borsa e odora appena di forge. Ormai, sospetto, odoro di forge anch'io.",
	},
	["ifo.quest_complete.w05.014"] = {
		"si ferma un momento sotto una delle grandi lampade sospese, rigirandosi la ricompensa in mano prima di metterla via.",
		"si ferma sotto una lampada della sala di pietra per guardare bene la ricompensa, poi la ripone con un piccolo cenno del capo.",
	},
	["ifo.quest_complete.w05.015"] = {
		"In questa montagna qualcuno, grazie a me, dormirà un po' più tranquillo. Vale la strada fatta.",
		"Era poca cosa, ma qualcuno sotto questa montagna respirerà meglio. Mi basta.",
		"Non serve che lo sappia tutta la città. Una persona che riposa più serena dietro queste mura è già molto.",
	},
	["ifo.quest_complete.w05.016"] = {
		"Firmato, sigillato, e nessuno ha fatto saltare niente. Una buona giornata a Ironforge.",
		"Finito, e nemmeno un'esplosione. Per gli standard di questa città, è quasi un giorno di festa.",
		"Lavoro finito e la montagna resiste. Con gli gnomi nei paraggi, lo considero un successo.",
	},
	["ifo.quest_complete.w05.017"] = {
		"si allontana con la luce della forgia alle spalle e un'ombra lunga che corre avanti sulla pietra.",
		"si lascia la faccenda alle spalle e torna nelle sale illuminate di rosso, con le spalle un po' più leggere di prima.",
		"lascia che la ricompensa si assesti nello zaino e prosegue, mentre il bagliore dei canali di metallo fuso accende ogni fibbia.",
	},
	["ifo.quest_complete.w05.018"] = {
		"Un lavoro per la mia città, fatto con le mie mani. Non c'è paga migliore, anche se le monete le prendo lo stesso.",
		"Aiutare Ironforge è come rimettere a posto il proprio tetto. Non lo si fa per i ringraziamenti.",
	},
	["ifo.quest_complete.w05.019"] = {
		"Ogni lavoro che finisco per questa città è una piccola rata del debito. I nani non lo chiedono mai. Noi paghiamo lo stesso.",
		"Ironforge ci ha aperto le porte quando Gnomeregan è caduta. Sbrigare bene le sue commissioni è il minimo, per un ospite.",
	},
	["ifo.quest_complete.w05.020"] = {
		"Fatto. Già che sono in moto, a qualcun altro in questa sala serve qualcosa da portare, trovare o colpire?",
		"Ed è uno. Ormai mi sono {g:scaldato|scaldata}: se qualcuno ha un altro lavoro, parli prima che mi sieda.",
		"Finito. Il prossimo? Chiedete in fretta, prima che la panca più vicina mi catturi.",
	},
	["ifo.quest_complete.w05.021"] = {
		"viene {g:ringraziato|ringraziata} con una pacca sulla spalla che per poco non {g:lo|la} manda contro la colonna più vicina.",
		"riceve come ringraziamento una botta sulla schiena, così vigorosa da far tintinnare ogni fibbia.",
	},
	["ifo.quest_complete.w05.022"] = {
		"Queste sale erano vecchie molto prima di me, e lo saranno a lungo dopo. Oggi ho aggiunto un graffio onesto a tutta quell'età.",
		"Un piccolo lavoro in un posto che ha visto secoli. La pietra non se ne ricorderà, io sì.",
		"Ironforge è sopravvissuta a re e guerre. Il mio incarico non peserà sulla sua memoria, e in qualche modo è un conforto.",
	},
	["ifo.reputation_change.w05.001"] = {
		"Qualcuno ha di me un'opinione migliore di prima. Se l'avessi saputo l'avrei fatta incidere: in questa città le buone notizie si conservano così.",
		"Un po' più di fiducia, guadagnata alla maniera dei nani: piano, e lavorando. Mi sta addosso come uno zaino ben regolato.",
	},
	["ifo.rest_enter.w05.001"] = {
		"Dentro la montagna il vento non mi raggiunge e il freddo non mi trova. Posso posare lo zaino e non pensare a niente.",
		"Pietra sopra, pietra intorno, e un fuoco mai lontano. Le spalle mi scendono finalmente dalle orecchie.",
	},
	["ifo.rest_enter.w05.002"] = {
		"si siede su un gradino di pietra, fuori dal via vai, e lascia che il tepore della città penetri uno strato alla volta.",
		"si toglie lo zaino e si appoggia a una colonna scolpita, lasciando che il caldo delle sale sciolga i nodi della strada.",
		"trova un angolo dove non dà fastidio a nessuno, stende le gambe sul pavimento tiepido e lascia che la città continui intorno.",
	},
	["ifo.rest_enter.w05.003"] = {
		"Se qualcuno mi cerca, sarò quella persona che dorme appoggiata al muro più caldo di Ironforge.",
		"Ho trovato il muro caldo. Nessuno me lo porti via.",
	},
	["ifo.rest_enter.w05.004"] = {
		"Il mio focolare è qui, sotto la montagna, e dopo la lunga strada lo trovo solido proprio come lo ricordavo.",
		"{g:Tornato|Tornata} dove punta la mia pietra del ritorno. Tutta la lunga strada si riduce a niente appena varco il portone.",
	},
	["ifo.rest_enter.w05.005"] = {
		"Nessun cielo da osservare, nessuna strada da scegliere, nessuna nuvola da interpretare. Qui dentro la montagna decide per me. Che riposo.",
		"Niente da tenere d'occhio. La montagna si occupa del cielo, le guardie del portone, e io di questo pezzo di pavimento caldo.",
	},
	["ifo.rest_enter.w05.006"] = {
		"Terra di casa, aria di casa. Anche il rumore delle forge sembra una ninna nanna, per un nano abbastanza stanco.",
		"Sotto la mia montagna il martellare è solo il respiro della casa. Qui dentro potrei dormire durante un assedio.",
	},
	["ifo.rest_enter.w05.007"] = {
		"Ironforge, sei un'ottima padrona di casa. Pavimenti caldi, mura spesse e una panca per ogni sedere stanco.",
		"Sia lodata la montagna. Mi fermo qui finché le gambe non mi perdonano.",
		"Basta, per un po' non cammino più. Se la città mi vuole, venga lei da me.",
	},
	["ifo.subzone_enter.w05.001"] = {
		"I Commons. Banca, banditori, locanda, e mezza Alleanza a contrattare nel mezzo.",
		"Ecco i Commons: se si può comprare, depositare o discutere, è da qualche parte in questo anello.",
	},
	["ifo.subzone_enter.w05.002"] = {
		"entra nei Commons e si lascia portare per qualche passo dalla folla che va e viene tra la banca e la casa d'aste.",
		"rallenta al margine dei Commons, dove il rumore delle trattative sale dalla pietra come il calore da una forgia.",
	},
	["ifo.subzone_enter.w05.003"] = {
		"Il Military Ward. Colpi d'allenamento che affondano nella paglia, stivali al passo, e da qualche parte una voce che trova da ridire su tutto.",
		"Nel Military Ward, dove persino le pareti stanno sull'attenti. Mi accorgo di camminare più {g:dritto|dritta}.",
	},
	["ifo.subzone_enter.w05.004"] = {
		"entra nel Military Ward e si fa da parte per una fila di nani in armatura che sfila, ogni stivale sullo stesso tempo.",
		"passa accanto alle aree d'addestramento del Military Ward, dove una fila di reclute viene strigliata all'unisono, alla perfezione.",
	},
	["ifo.subzone_enter.w05.005"] = {
		"entra nel Mystic Ward, dove il fragore delle forge si assottiglia in un mormorio di studio e l'aria sa di cera e di carta vecchia.",
		"si inoltra nel Mystic Ward e si lascia alle spalle il frastuono della città, sostituito da pagine voltate e dal ronzio di qualche incantesimo paziente.",
	},
	["ifo.subzone_enter.w05.006"] = {
		"High Seat. Qui, sotto la pietra scolpita, Re Magni tiene il suo trono e il suo consiglio. Mi accorgo di essermi {g:sistemato|sistemata} il colletto.",
		"La sala del re in persona. Anche le guardie sembrano respirare più piano, qui.",
		"Davanti all'High Seat di Ironforge ogni viaggiatore si ricorda all'improvviso le buone maniere. Io non faccio eccezione.",
	},
	["ifo.subzone_enter.w05.007"] = {
		"Tinker Town: ogni banco affollato, ogni gnomo a metà di una frase, come se la prossima invenzione potesse essere quella che riconquista Gnomeregan.",
		"Ingranaggi e molle ovunque, scintille e discussioni. Sotto l'allegria, un popolo che vive tra le casse nella montagna di qualcun altro.",
	},
	["ifo.subzone_enter.w05.008"] = {
		"si abbassa sotto un congegno penzolante entrando a Tinker Town; quello ronza, {g:lo|la} considera e non fa assolutamente niente.",
		"passa sotto un aggeggio sibilante appeso al soffitto di Tinker Town, che ha un fremito come per fare una domanda e poi ci ripensa.",
	},
	["ifo.subzone_enter.w05.009"] = {
		"arriva a Tinker Town proprio mentre il tunnel del tram sbuffa una folata d'aria tiepida e oleosa e una manciata di viaggiatori da Stormwind.",
		"raggiunge Tinker Town mentre un gruppetto di nuovi arrivati risale dal Deeprun Tram, sbattendo le palpebre e con un vago odore di mare.",
	},
	["ifo.subzone_enter.w05.010"] = {
		"La Great Forge. Ogni strada di Ironforge piega verso di lei, come ogni panca di una taverna guarda il focolare.",
		"Ecco il centro di tutto: il grande fuoco attorno a cui è costruita la città. Il resto di Ironforge sono solo stanze che danno su questa.",
	},
	["ifo.subzone_enter.w05.011"] = {
		"La Hall of Explorers! Non toccare le ossa, non spostare le mappe, non starnutire sui libri. D'accordo.",
		"Hall of Explorers. Cercherò di non rovesciare niente di più vecchio dell'Alleanza.",
	},
	["ifo.subzone_enter.w05.012"] = {
		"La Forlorn Cavern. Pietra più grezza, angoli più bui, e le forge che sembrano lontane, come se fossi {g:uscito|uscita} dalla città senza lasciarla.",
		"Qui la montagna smette di fingersi città. Roccia viva, aria più fresca, e i martelli ridotti a una voce lontana.",
	},
	["ifo.subzone_enter.w05.013"] = {
		"svolta un angolo ed entra in un'altra delle grandi sale di Ironforge, dove il soffitto sale fino a perdersi e i volti scolpiti nelle pareti guardano giù senza troppo interesse.",
		"passa sotto un ampio arco ed entra in un'altra sala della città, e il suono cambia subito: altri martelli, altre voci, la stessa luce rossa.",
	},
	["ifo.thanks.w05.001"] = {
		"Grazie. In questa città un favore si pesa come il minerale: farò in modo di ripagarlo per intero.",
		"Ti ringrazio. Lavoro ben fatto, e a Ironforge non c'è lode più alta.",
		"Grazie. Ti devo un favore, e a Ironforge i debiti si incidono, non si scrivono col gesso.",
	},
	["ifo.thanks.w05.002"] = {
		"Hai la mia gratitudine, calda come la forgia e schietta come la pietra.",
		"Grazie. Una gentilezza sotto la montagna vale doppio: non c'è vento che se la porti via.",
	},
	["ifo.toast.w05.001"] = {
		"Ai birrai di Ironforge, i veri signori sotto la montagna!",
		"Alla forgia che non si raffredda mai, e ai boccali che non restano mai pieni!",
		"In alto i boccali: alle mura di pietra, ai fuochi caldi, e a chiunque paghi!",
	},
	["ifo.travel.w05.001"] = {
		"rigira la pietra del ritorno sotto la luce rossa delle forge, e il frastuono di Ironforge si assottiglia in un sussurro e svanisce.",
		"chiude la mano sulla pietra che si scalda tra un colpo di martello e l'altro, e prima del terzo è già {g:sparito|sparita}.",
	},
	["ifo.travel.w05.002"] = {
		"La pietra si scalda come un tizzone nel palmo. Adatto, in questa città. Poi la montagna si scioglie intorno a me.",
		"Lasciare la montagna senza la lunga camminata fino al portone. I nani lo chiamerebbero barare; io lo chiamo il giorno libero dei miei piedi.",
	},
	["ifo.weather_change.w05.001"] = {
		"sente uno spiffero freddo farsi strada dal portone, e vede le guardie più vicine stringersi nei mantelli: là fuori, a Dun Morogh, pare che abbia preso a nevicare.",
		"nota un carro che entra dal portone con la neve ammucchiata sul carico, e il conducente che si soffia sulle dita arrossate.",
	},
	["ifo.weather_change.w05.002"] = {
		"Fuori nevica? Allora ho affari urgenti qui dentro. Urgentissimi. Tutti da {g:seduto|seduta}.",
		"Se al portone nevica, all'improvviso non ho nessuna fretta di lasciare Ironforge.",
	},
	["ifo.weather_change.w05.003"] = {
		"I grifoni sono inquieti sui posatoi. Un nano lì vicino dice che fuori nevica forte, e loro detestano volarci dentro.",
		"Notizie dai grifoni: sui passi la neve cade fitta, e le bestie ci tengono il broncio.",
	},
	["ifo.weather_change.w05.004"] = {
		"vede una lunga lama di luce bianca stendersi dal portone sul pavimento della sala d'ingresso, abbastanza netta da far capire che là fuori il cielo si è schiarito.",
		"nota i viaggiatori che entrano dal portone con gli occhi socchiusi e le guance rosse, come chi ha appena camminato sotto un cielo sereno.",
	},
	["ifo.weather_change.w05.005"] = {
		"Fuori una notte limpida, dice una guardia che smonta dal portone, così fredda da spaccare la roccia. Le stelle sopra Dun Morogh devono valere la pena.",
		"Il cielo si è schiarito, mi dicono, e il gelo morde forte sotto le stelle. Me le immagino da qui, accanto alla pietra calda.",
	},
	["ifo.weather_change.w05.006"] = {
		"Tempesta sulla montagna. Anche qui dentro ogni tanto la sento: un lungo ululato giù per la sala d'ingresso, ogni volta che il vento trova il portone.",
		"Il vento urla attraverso il portone. Là fuori una bufera sta seppellendo la strada, e qui dentro un nano ordina con calma un altro giro.",
		"Tempesta fuori. Le guardie del portone hanno fatto un passo indietro dalla soglia, che per un nano di servizio è praticamente una ritirata.",
	},
	["ifo.weather_change.w05.007"] = {
		"Un nano è appena entrato dal portone giurando che là fuori non si vedeva la barba. Nebbia, allora. Fitta.",
		"Nebbia su Dun Morogh, a sentire l'ultimo arrivato, che entrando ha preso in pieno lo stipite del portone.",
	},
]==])
