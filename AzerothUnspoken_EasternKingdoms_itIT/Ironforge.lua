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
	["ifo.journey.w20.arch.001"] = {
		"In cima agli archi gli intagliatori hanno continuato a lavorare: intrecci e rune che nessuno a piedi distinguerà mai. Li hanno messi lì lo stesso. Adesso li ho visti, per un colpo d'ala.",
		"La sommità degli archi è scolpita con la stessa cura della base, anche se solo chi vola ci passa abbastanza vicino da guardarla. Ai tagliapietre non importava chi l'avrebbe vista.",
		"Qualcuno ha inciso disegni sulla pietra più alta di ogni arco, dove nessuno che cammina potrebbe leggerli. Quassù sfrecciano a un braccio di distanza.",
	},
	["ifo.journey.w20.arch.002"] = {
		"passa così vicino a una lampada sulla parete che la fiamma si piega dietro l'ala e ci mette un momento a raddrizzarsi.",
		"sfreccia accanto a una lampada a muro, e la fiammella dentro si appiattisce, tremola e si riprende alle sue spalle.",
	},
	["ifo.journey.w20.arch.003"] = {
		"guarda un nano nella sala di sotto scansarsi davanti all'ombra delle ali senza alzare lo sguardo, come si gira intorno a una pozzanghera.",
		"vede la gente delle sale far spazio al passaggio della bestia senza alzare gli occhi, come se schivare grifoni ormai stesse loro nelle ginocchia.",
	},
	["ifo.journey.w20.arch.004"] = {
		"Ogni sala suona diversa sotto le ali: un rimbombo in quelle alte, uno schiaffo piatto in quelle basse, un lungo sibilo dove il passaggio si stringe.",
		"I colpi d'ala cambiano voce di continuo. Profondi nelle sale grandi, secchi in quelle strette. La bestia vola attraverso un'intera fila di tamburi.",
	},
	["ifo.journey.w20.arch.005"] = {
		"Sopra di voi! Si passa! Attenti ai cappelli!",
		"Pardon! Permesso! Scusate tanto, sto volando!",
		"Teste basse, amici, arrivano le ali!",
	},
	["ifo.journey.w20.arch.006"] = {
		"solleva la polvere di cornicioni che nessuna scopa ha mai raggiunto, lasciando una scia grigia sospesa nella luce delle lampade dietro le ali.",
		"fa turbinare la vecchia polvere delle cornici alte al passaggio della bestia, una scia chiara che si posa piano su chi sta sotto.",
	},
	["ifo.journey.w20.arch.007"] = {
		"La parete è così vicina che potrei toccarla. Non lo faccio. A questa velocità la discussione la vincerebbe lei.",
		"Potrei sfiorare le colonne con le nocche mentre passano. Le nocche vorrei tenermele, quindi no.",
		"Una colonna passa così vicina da poterne contare i segni dello scalpello. Non ne conto nessuno. Ho da fare: mi tengo.",
	},
	["ifo.journey.w20.arch.008"] = {
		"percorre in volo la lunga sala con le lampade che scorrono sotto una dopo l'altra, come pietre di guado gettate attraverso la penombra.",
		"conta le lampade della sala che scivolano via di sotto, e perde il conto più o meno dopo la ventesima.",
	},
	["ifo.journey.w20.arch.009"] = {
		"Dall'alto una città è soprattutto la cima delle teste: elmi, cappucci, i capelli arruffati di uno gnomo, una pelata lucida che ricorderò senza alcun motivo.",
		"Le sale viste dall'aria, da vicino: cappelli, cappucci, elmi lucidati, e la pelata di un nano che brilla come una moneta caduta.",
	},
	["ifo.journey.w20.arch.010"] = {
		"Le colonne sono grosse come torri. Chi le ha scolpite non immaginava che qualcosa ci volasse in mezzo, eppure è stato generoso lo stesso.",
		"Queste colonne sono state tagliate per reggere una montagna, non per far posto alle ali. La bestia ci scivola in mezzo lo stesso, con un palmo di margine per lato.",
	},
	["ifo.journey.w20.arch.011"] = {
		"attraversa una fila di odori in pochi colpi d'ala: ferro caldo, poi pane fresco da qualche forno, poi olio da lampada, poi il freddo pulito del portone.",
		"viene {g:portato|portata} da un odore all'altro della città come da una stanza all'altra: carbone, carne arrosto, lana umida, e infine solo pietra e freddo.",
	},
	["ifo.journey.w20.arch.012"] = {
		"L'aria si raffredda sala dopo sala verso il portone, come scendere la scala di una cantina, ogni gradino un po' più freddo.",
		"Ogni arco che la bestia supera si riprende un po' del tepore della forgia. All'ultimo, non resta più niente da riprendere.",
	},
	["ifo.journey.w20.arch.013"] = {
		"supera una pattuglia di guardie in marcia verso il portone e sente salire, da qualche parte fra gli elmi, un asciutto «beato chi può».",
		"passa sopra una pattuglia; l'ultimo nano della fila alza gli occhi, e la sua faccia dice che questa sala la percorre a piedi ogni giorno e non approva chi non lo fa.",
	},
	["ifo.journey.w20.arch.014"] = {
		"Lampada, ombra, lampada, ombra. La sala scorre a strisce, e gli occhi smettono di inseguirla e la lasciano andare.",
		"La luce arriva a strisce fra una lampada e l'altra: calda, poi fioca, poi di nuovo calda. Sarebbe riposante, se le pareti non fossero così vicine.",
	},
	["ifo.journey.w20.arch.015"] = {
		"sfreccia accanto agli stendardi appesi in alto alle pareti, e la stoffa pesante si muove nella scia delle ali come per un saluto.",
		"fa ondeggiare i vecchi stendardi lungo la sala al passaggio della bestia, e gli emblemi ricamati annuiscono uno dopo l'altro.",
	},
	["ifo.journey.w20.arch.016"] = {
		"Una voce di sotto strilla un prezzo, fortissimo, per qualcosa che non saprò mai cosa sia. La bestia non rallenta per gli affari.",
		"A metà del richiamo di un mercante gli sono già oltre. Qualunque cosa fosse, a quanto pare era un affarone.",
	},
	["ifo.journey.w20.arch.017"] = {
		"In fondo all'ultima sala appare il portone, un riquadro dove la pietra semplicemente finisce. La bestia ci punta come un sasso lanciato.",
		"Poi la lunga sala finisce in un'apertura del colore di fuori, qualunque sia in questo momento, e la bestia ci si allinea.",
	},
	["ifo.journey.w20.arch.018"] = {
		"Quella colonna si è mossa. Giuro che quella colonna si è mossa.",
		"Ancora più vicino al muro, perché no. Ho sempre voluto sapere che sapore ha la pietra.",
	},
	["ifo.journey.w20.arch.019"] = {
		"Archi nanici: niente ingranaggi, niente molle, nemmeno un pezzo mobile, e reggeranno ancora la montagna quando ogni mio aggeggio sarà arrugginito. Lo ammetto quassù, dove nessun nano può sentirmi.",
		"Da quassù gli archi sono una lezione di ingegneria: niente ingranaggi, niente molle, niente che possa rompersi. Noiosi. Irritantemente perfetti.",
	},
	["ifo.journey.w20.arch.020"] = {
		"A sinistra alla colonna. No, l'altra sinistra.",
		"Quell'arco è sempre stato così basso, o è solo un'impressione?",
	},
	["ifo.journey.w20.arch.021"] = {
		"passa basso sopra un nano che porta un vassoio di boccali: si blocca a metà passo mentre le ali scorrono via, poi riprende senza versare una goccia.",
		"sfiora dall'alto un vassoio di boccali in movimento; chi lo porta si ferma, lascia passare la bestia e prosegue con la serietà di chi non ha mai rovesciato niente.",
	},
	["ifo.journey.w20.arch.022"] = {
		"passa sotto un architrave inciso di rune antiche, abbastanza vicino da vedere che alcune si sono consumate solo per l'aria della città che ci scorre davanti da secoli.",
		"legge, senza volerlo, mezza riga di rune naniche sopra un arco mentre la bestia ci sfreccia sotto, e l'altra metà non la vedrà mai.",
	},
	["ifo.journey.w20.din.001"] = {
		"atterra nel rumore della città come un sasso in uno stagno, e per un attimo sente ogni suono insieme: martelli, mantici, un grido, un carro, una risata.",
		"scende dentro un muro di suono: mantici, rotaie, voci, il sibilo umido della tempra, e da qualche parte sotto tutto una canzone.",
	},
	["ifo.journey.w20.din.002"] = {
		"Il vento mi ha fatto compagnia per tutto il viaggio, e lo trovavo rumoroso. Ritiro tutto. Chiedo scusa al vento.",
		"Lassù brontolavo per il vento. Era prima che Ironforge cominciasse a parlarmi tutta insieme.",
	},
	["ifo.journey.w20.din.003"] = {
		"distingue una sola voce nel frastuono vicino al posatoio, un nano che chiama lo stesso nome più e più volte, e si attarda come in attesa della risposta.",
		"sente qualcuno dall'altra parte della sala gridare lo stesso nome sopra i martelli, e resta un momento in più, in ascolto di una risposta.",
		"coglie nel frastuono un solo nome gridato, ripetuto più volte, e volta la testa come fanno tutti al posatoio, a cercare chi risponde.",
	},
	["ifo.journey.w20.din.004"] = {
		"Il volo mi lascia le orecchie tappate di vento. Ironforge passa a pezzi: un clangore, una risata, un carro, poi tutto insieme, come una porta spalancata.",
		"Nei primi momenti la città sembra lontana, come dietro un muro. Poi il ronzio svanisce e tutta la sala arriva in un colpo.",
	},
	["ifo.journey.w20.din.005"] = {
		"Come? No, dicevo... lascia stare. Lo ripeto quando saranno atterrate anche le orecchie.",
		"Scusa, puoi parlare più forte? O aspettare che l'udito mi raggiunga?",
	},
	["ifo.journey.w20.din.006"] = {
		"incontra al posatoio gli odori della città prima delle sue forme: fumo di carbone, metallo caldo, pietra bagnata e, appena, la cena di qualcuno.",
		"riconosce Ironforge prima col naso: ferro caldo, carbone, olio da lampada, e da qualche parte lì vicino un pane rimasto un po' troppo in forno.",
	},
	["ifo.journey.w20.din.007"] = {
		"La pietra del posatoio trema appena sotto gli stivali, ogni volta che lì vicino cade un martello. Lassù non tremava niente, a parte me.",
		"La pietra d'atterraggio vibra del lavoro della forgia. Dopo la lunga planata liscia, persino il pavimento sembra indaffarato.",
		"Sotto gli stivali il pavimento del posatoio vibra come una campana percossa. Tutta la montagna lavora, e la pietra vuole che lo sappia.",
	},
	["ifo.journey.w20.din.008"] = {
		"atterra proprio mentre un mantice da qualche parte emette un grande ruggito sibilante, e la bestia gli risponde con uno strillo indignato tutto suo.",
		"tocca terra tra il fracasso di lingotti caduti lì vicino; la bestia sobbalza, poi fissa il colpevole con enorme dignità.",
	},
	["ifo.journey.w20.din.009"] = {
		"Qui il martellare non comincia e non finisce. Atterro nel mezzo di una frase che la città ha cominciato molto prima di me.",
		"A qualunque ora atterri, la città è a metà di una frase. Ha cominciato a parlare prima del primo re e non si è mai fermata.",
	},
	["ifo.journey.w20.din.010"] = {
		"si allontana dal posatoio e finisce dritto nello sferragliare di un carrello sulle rotaie, che passa tanto vicino da far ondeggiare l'orlo del mantello.",
		"è appena {g:sceso|scesa} che un carrello passa stridendo sulle rotaie, colmo di carbone e spinto da un nano che non alza nemmeno la testa.",
	},
	["ifo.journey.w20.din.011"] = {
		"Per un po' parlerò urlando, lo so. Lo fanno tutti quelli che scendono da un volo. I nani sono troppo educati per farlo notare, o troppo rumorosi per accorgersene.",
		"Appena {g:sceso|scesa} dalle ali parlo troppo forte. Per fortuna è l'unico volume che Ironforge capisca.",
	},
	["ifo.journey.w20.din.012"] = {
		"Sotto i martelli dei nani riesco appena a distinguere un fischio gnomesco dalle parti di Tinker Town. Il bollitore di qualcuno, o l'esperimento di qualcuno. In ogni caso, roba nostra.",
		"In mezzo a tutto quel clangore nanico, un suono piccolo e acuto: un fischietto a ingranaggi, laggiù verso Tinker Town. È assurdo quanto mi tiri su.",
	},
	["ifo.journey.w20.din.013"] = {
		"sente la città salire incontro alla discesa, il frastuono che cresce a ogni giro della spirale finché non {g:gli|le} si chiude sopra la testa come acqua.",
		"scende a spirale dentro il rumore della Great Forge, ogni giro un po' più forte, finché l'ultimo non {g:lo|la} posa lì dentro.",
	},
	["ifo.journey.w20.din.014"] = {
		"Tutto quel grigio là fuori, e poi il portone, e poi rosso dappertutto. Gli occhi non sanno se ringraziare la città o lamentarsene.",
		"Nebbia per tutto l'ultimo tratto, niente da vedere a parte la testa della bestia. Poi il portone, e la città mi colpisce gli occhi tutta insieme, rossa, dorata e indaffarata.",
	},
	["ifo.journey.w20.din.015"] = {
		"Là fuori il buio era immenso e muto. Qui dentro i fabbri sono ancora al lavoro come se nessuno avesse detto loro l'ora, e sono {g:grato|grata} a ognuno di loro.",
		"Nero e silenzio per tutto l'avvicinamento, poi il portone, e la forgia a pieno regime come se la notte fosse affare di qualcun altro.",
	},
	["ifo.journey.w20.din.016"] = {
		"Buio pesto fuori e ogni forgia accesa. Questa città dorme a turni, o non dorme affatto?",
		"Per quanto sia tardi là fuori, qui dentro non lo diresti mai. Qualcuno a Ironforge va mai a letto?",
	},
	["ifo.journey.w20.din.017"] = {
		"si vede offrire un fagottino caldo prima ancora che gli stivali siano fermi, da un nano che evidentemente aspetta al posatoio proprio per questo.",
		"atterra a portata di voce di un nano che offre cibo caldo a chiunque scenda dalle ali, e che ha capito perfettamente il suo mestiere.",
	},
	["ifo.journey.w20.din.018"] = {
		"Da qualche parte un gruppo di minatori canta, e un fabbro martella apposta un po' fuori tempo. È l'idea di benvenuto di questa città.",
		"Una canzone da taverna da qualche parte, una forgia da ogni parte, e uno gnomo che impreca contro una valvola. Riconoscerei il posto a occhi bendati.",
	},
	["ifo.journey.w20.din.019"] = {
		"È sempre così rumoroso, o qualcuno ha avvertito la forgia del mio arrivo?",
		"Anche per me è un piacere, Ironforge. Non c'è bisogno di urlare.",
		"Ciao, martelli. Sì, vi sento. Vi sentono tutti.",
	},
	["ifo.journey.w20.din.020"] = {
		"scende in una sala dove tre conversazioni, due forge e il motore di prova di uno gnomo vanno tutti insieme, e in qualche modo si sentono uno per uno.",
		"resta un momento al bordo del posatoio a dividere il rumore nelle sue parti: incudini, mantici, un carro, un affare che si conclude, un bambino che ride.",
	},
	["ifo.journey.w20.din.021"] = {
		"C'è chi trova stancante questo frastuono. Dopo il sibilo del vento, per me è compagnia: ogni colpo è qualcuno al lavoro, e nessuno di loro vuole qualcosa da me.",
		"Tutto questo rumore, e niente è per me. Dopo la sola compagnia del vento, è uno strano genere di riposo.",
	},
	["ifo.journey.w20.gate.001"] = {
		"Nel portone c'è una linea, invisibile, dove l'aria calda della città finisce e comincia quella della montagna. La bestia la passa come una tenda, e io con lei.",
		"Sotto l'arco del portone, a un certo punto, il tepore si interrompe, netto come una porta che si chiude. Un colpo d'ala dentro, uno fuori, due mondi diversi.",
		"Saprei indicare il punto esatto, sotto l'arco, dove la città molla il suo calore. La faccia l'ha trovato prima di me.",
	},
	["ifo.journey.w20.gate.002"] = {
		"sfreccia fra i grandi battenti del portone, ognuno alto abbastanza da inghiottire una casa, entrambi spalancati come se avessero dimenticato come si chiude.",
		"passa accanto agli enormi battenti aperti, appoggiati contro le pareti del passaggio come le mani di un gigante posate di piatto.",
	},
	["ifo.journey.w20.gate.003"] = {
		"Dentro il portone tutto era rumore. Fuori, tutto è grandezza. La bestia passa dall'uno all'altra con un solo colpo d'ala.",
		"Oltre il portone le pareti smettono di stare a un braccio di distanza e cominciano a stare a una giornata di cammino. Gli occhi hanno bisogno di un attimo per allungarsi.",
		"In città tutto era a portata di mano. Adesso la cosa più vicina è la bestia, e quella dopo è una montagna.",
	},
	["ifo.journey.w20.gate.004"] = {
		"Aprite il portone! ...Ah. È già aperto. Allora niente.",
		"Non chiudetelo alle mie spalle, potrei voler rientrare.",
		"Grazie, portone. Bel portone. Proprio grande.",
	},
	["ifo.journey.w20.gate.005"] = {
		"I vecchi montanari raccontano che gli orchi della Seconda Guerra presero tutto Khaz Modan e non passarono mai da questo portone. Uscendone in volo capisco perché: fuori non c'è un punto dove piantarsi e spingere.",
		"Nel Military Ward si dice che l'intero esercito degli orchi, nella Seconda Guerra, rimase sotto questo portone e se ne andò senza averlo.",
	},
	["ifo.journey.w20.gate.006"] = {
		"sbuca in volo sopra la lunga strada che sale al portone, dove un mercante che guida un ariete carico si schiaccia contro il cumulo di neve e poi ride di sé stesso.",
		"esce di slancio sopra la strada d'accesso, e una fila di viaggiatori che arranca verso il portone si ferma e guarda in su tutta insieme, come una fila di galline spaventate.",
	},
	["ifo.journey.w20.gate.007"] = {
		"Le guardie del portone stanno lì per controllare chi entra. Chi esce in volo, ufficialmente, non le riguarda, e ci tengono a farlo capire.",
		"Tutto il mestiere di una guardia del portone è diffidare di chi arriva. A chi parte niente, nemmeno un'occhiata. Andarsene da Ironforge è la cosa più facile che ci sia.",
	},
	["ifo.journey.w20.gate.008"] = {
		"Per un colpo d'ala il portone incornicia il fuori come un quadro appeso in fondo a un corridoio. Al colpo dopo, sono dentro il quadro.",
		"L'apertura del portone tiene tutto il paese bianco in una cornice ordinata di pietra, poi la cornice resta indietro e niente ha più un bordo.",
	},
	["ifo.journey.w20.gate.009"] = {
		"incontra l'aria fredda che entra dal portone mentre la bestia spinge per uscire controcorrente, e tutto il volo vibra per un colpo d'ala o due, come una barca che passa una secca.",
		"spinge fuori contro la corrente che entra di continuo dal portone, con la bestia piegata a testa bassa, ali corte e dure finché la soglia non è alle spalle.",
	},
	["ifo.journey.w20.gate.010"] = {
		"La neve sulla soglia del portone arriva fino alla linea dove comincia il tepore, e non un dito oltre. La città e la montagna hanno un accordo chiaro.",
		"Proprio al portone la neve si arrende, con un bordo netto, come spazzata col righello. Dentro è della forgia; fuori è della montagna.",
	},
	["ifo.journey.w20.gate.011"] = {
		"sfiora in volo un montanaro di guardia sul pendio fuori dal portone, che alza il fucile in un mezzo saluto svogliato e torna a sorvegliare la strada.",
		"sorvola un montanaro solitario appostato su una roccia sopra la strada, imbacuccato fino agli occhi, che segue la bestia con la canna del fucile per pura abitudine e poi la abbassa, imbarazzato.",
	},
	["ifo.journey.w20.gate.012"] = {
		"Il portone è stato costruito per fermare gli eserciti. A me lascia uscire senza nemmeno uno scricchiolio. Molto educato, per una fortificazione.",
		"Tutto quel ferro e quella pietra, fatti per reggere un assedio, e mi fa passare come un portiere.",
	},
	["ifo.journey.w20.gate.013"] = {
		"risale la parete della montagna sopra il portone, un muro di roccia così alto che un lungo tratto di volo non cambia in modo visibile quanto ne resta.",
		"sale lungo la pietra a picco sopra il portone, e per un bel pezzo la montagna occupa un intero lato del mondo.",
	},
	["ifo.journey.w20.gate.014"] = {
		"Fuori, fuori, fuori! Vai, bestia, il mondo è da quella parte.",
		"Ecco il portone. Passaci in mezzo, e non fermarti per niente.",
	},
	["ifo.journey.w20.gate.015"] = {
		"Ogni volta provo a cogliere l'istante esatto in cui esco, e ogni volta lo manco. Mura, e poi niente mura. In mezzo, niente.",
		"Ci dev'essere un attimo in cui non sono né dentro la città né fuori. Non mi è mai riuscito di notarlo.",
	},
	["ifo.journey.w20.gate.016"] = {
		"lascia il portone e vola dritto nella nebbia: la montagna sparisce in un colpo d'ala, davanti solo bianco e la tranquilla sicurezza della bestia.",
		"esce dal portone illuminato dalle lampade dentro una nebbia così fitta che la città alle spalle scompare prima del colpo d'ala successivo, come se non ci fosse mai stata.",
	},
	["ifo.journey.w20.gate.017"] = {
		"Fuori dal portone e dritto in bocca alla tempesta. La bestia abbassa la testa e tira avanti come se la pagassero a raffica.",
		"La tempesta colpisce appena il portone resta indietro. Dentro, nessuno sospetterebbe nemmeno che tira vento così.",
	},
	["ifo.journey.w20.gate.018"] = {
		"Gli anziani dicono che un nano, partendo, deve un cenno al portone, perché si ricordi la tua faccia. Glielo faccio. Vecchia abitudine, e buona.",
		"Un cenno al portone mentre passo. Gli anziani dicevano sempre che tiene il conto di chi è fuori, e fa entrare per primi quelli che tornano a casa.",
	},
	["ifo.journey.w20.gate.019"] = {
		"tira su il bavero con una mano proprio mentre il portone scorre via, un'abitudine calcolata sul colpo d'ala esatto in cui arriva il freddo.",
		"ha già una mano alla chiusura del mantello prima della soglia, e lo stringe un attimo prima che arrivi il freddo.",
	},
	["ifo.journey.w20.gate.020"] = {
		"Il portone che non è mai caduto, e i cavalieri dell'Alleanza che ci passano come se niente fosse. È per questo che ha tenuto.",
		"Fuori dalla porta più salda dell'Alleanza, su uno dei suoi grifoni. Qualunque cosa aspetti, comincia da una porta che non ha mai ceduto.",
	},
	["ifo.journey.w20.gate.021"] = {
		"Eccolo, il fuori! Tutto quanto!",
		"E fuori! Ah! Guarda quanto spazio!",
	},
	["ifo.journey.w20.gate.022"] = {
		"attraversa la soglia dove la luce rossa della città finisce netta come stoffa tagliata con le forbici, e i colori di fuori arrivano tutti insieme.",
		"vola attraverso l'ultima luce delle lampade al portone, e il rosso che ha tinto ogni cosa dal posatoio in poi cade via in un solo colpo d'ala.",
	},
	["ifo.journey.w20.glow.001"] = {
		"Voltandomi, il portone è illuminato da dentro come una lanterna tenuta alta su una soglia, come la si tiene per chi parte.",
		"Alle mie spalle il portone brilla appena di rosso, dall'interno, una lampada lasciata alla finestra. Non è per me. Un po' sembra di sì.",
	},
	["ifo.journey.w20.glow.002"] = {
		"Ultima a perdere il calore della forgia è la faccia. La schiena è fredda dal portone; le guance sono ancora lì davanti all'incudine.",
		"Strano come se ne va il caldo: prima la schiena, poi le mani, e la faccia che resiste più a lungo, come se fosse rimasta rivolta al fuoco tutto il tempo. Ed è così.",
	},
	["ifo.journey.w20.glow.003"] = {
		"L'odore del fumo di carbone è entrato a fondo nel mantello. Sarà l'ultimo pezzo di città che mi trascino dietro, fino al prossimo bucato.",
		"Le maniche sanno di forgia. Ancora per un po', ogni volta che porto una mano al viso, Ironforge è lì.",
		"Carbone e metallo caldo nella lana, nei capelli, nei guanti. Io ho lasciato la città; lei non ha lasciato del tutto me.",
	},
	["ifo.journey.w20.glow.004"] = {
		"Da qui fuori nessuno immaginerebbe i fiumi di metallo fuso là dentro. La montagna mantiene un'espressione impeccabile.",
		"Tutto quel fuoco, tutto quel rumore, e fuori la montagna se ne sta nella neve con l'aria di una montagna qualunque. Gliel'avranno insegnato i nani.",
	},
	["ifo.journey.w20.glow.005"] = {
		"trova sulla manica un granello di fuliggine della Great Forge e, dopo un attimo di riflessione, lo lascia dov'è.",
		"nota una macchia di fuliggine della forgia sul dorso di un guanto e la strofina, poi ci rinuncia e lascia alla città il suo segno.",
	},
	["ifo.journey.w20.glow.006"] = {
		"Gli anziani chiamano la montagna il focolare dei nani. Da qui fuori è un focolare con la porta accostata, e l'ho accostata io.",
		"Il mio focolare è tutta la montagna alle mie spalle. Non ho bisogno di voltarmi per sapere che il fuoco è ancora lì.",
	},
	["ifo.journey.w20.glow.007"] = {
		"guarda l'ultimo rosso della luce della forgia scivolare via dalle piume della bestia mentre il portone resta indietro, lasciandole del loro colore vero.",
		"vede sbiadire, fuori, la tinta calda che la città prestava alle ali del grifone, finché torna a essere solo una bestia, nei colori onesti dell'aperto.",
	},
	["ifo.journey.w20.glow.008"] = {
		"Una città sotto una montagna non può guardare nessuno andarsene. Non ha finestre a cui affacciarsi. Si parte e basta, e lei va avanti.",
		"In altre città qualcuno potrebbe salire sulle mura a guardare chi parte farsi piccolo. Ironforge non ha mura su cui salire, solo pietra sopra la testa.",
	},
	["ifo.journey.w20.glow.009"] = {
		"Tenetemi un posto vicino all'incudine, qualcuno.",
		"Addio, caldo. Salve, tutto il resto.",
		"Se qualcuno chiede, il conto lo salderò al ritorno.",
	},
	["ifo.journey.w20.glow.010"] = {
		"Alzo il pollice a braccio teso e l'intero portone di Ironforge sparisce dietro. Meglio non dirlo alle guardie.",
		"Da questa distanza basta un pollice per nascondere il portone più grande di Khaz Modan. Ci provo due volte, per sicurezza. Le guardie non la prenderebbero bene.",
	},
	["ifo.journey.w20.glow.011"] = {
		"guarda indietro oltre la coda della bestia e scopre che il portone è già sparito dietro una piega del pendio, come se la montagna ci avesse passato sopra la manica.",
		"si volta per un'ultima occhiata e vede solo roccia e neve: il portone è scivolato dietro una spalla della montagna, e la città con lui.",
	},
	["ifo.journey.w20.glow.012"] = {
		"Ogni volta che lascio un posto caldo per un cielo freddo mi chiedo cosa non vada in me. E ogni volta parto lo stesso.",
		"C'è qualcosa di un po' sciocco nello scambiare di proposito una forgia con il vento di montagna. Continuo a farlo. Temo che lo farò sempre.",
	},
	["ifo.journey.w20.glow.013"] = {
		"Le orecchie mi fischiano ancora della Great Forge. Qui fuori non c'è niente che lo copra, e continua per un po', come una campana dopo che la mano l'ha lasciata.",
		"Il fischio nelle orecchie è l'ultimo pezzo di città. Svanisce più lentamente di lei.",
	},
	["ifo.journey.w20.glow.014"] = {
		"lascia il portone per la notte, e dietro la bestia le poche luci della strada del portone si riducono a un breve punto storto d'oro cucito sul nero.",
		"guarda indietro nella notte mentre la bestia sale, e trova la montagna sparita del tutto: restano solo la bocca illuminata del portone e qualche lampada sparsa più in basso.",
	},
	["ifo.journey.w20.glow.015"] = {
		"Tinker Town è una casa in prestito, eppure mi tira ancora quando volo via. Forse è proprio questo che la rende una casa, in prestito o no.",
		"I nani hanno dato alla mia gente un angolo della loro montagna quando la nostra è andata perduta. Ogni volta che lo lascio sento il debito, e il calore che c'è dentro.",
		"Buffo: il rumore di Ironforge non mi manca finché non ne esco. Poi mi mancano più di tutto le piccole esplosioni di Tinker Town.",
	},
	["ifo.journey.w20.glow.016"] = {
		"Un grifone: niente carburante, niente ingranaggi, si ripara da solo e si lamenta meno di qualsiasi motore che conosca. A Tinker Town non lo dirò mai.",
		"Di sicuro qualcuno a Tinker Town sta disegnando una macchina per sostituire queste bestie. Finché non smette di prendere fuoco, preferisco le piume.",
	},
	["ifo.journey.w20.glow.017"] = {
		"sente sotto i guanti le fibbie di metallo dei finimenti raffreddarsi una a una, e la più calda trattenere il calore della città qualche colpo d'ala più delle altre.",
		"tocca un anello dei finimenti che nelle sale era tiepido, e lo trova già freddo come il pendio di sotto.",
	},
	["ifo.journey.w20.glow.018"] = {
		"I fabbri giurano che la Great Forge non si è mai raffreddata in tutte le epoche della città. Lasciandola alle spalle, la cosa mi consola in modo strano.",
		"Qualunque cosa succeda là fuori, la forgia alle mie spalle continua ad ardere. I nani dicono che non si è mai fermata. È bello che al mondo ci sia una cosa che non si ferma.",
	},
	["ifo.journey.w20.glow.019"] = {
		"porta il calore della forgia dell'Alleanza fuori nel freddo, su ali di grifone, come un tizzone passato da un focolare all'altro.",
		"si lascia alle spalle la forgia che arma l'Alleanza, un altro viaggiatore portato fuori dalla montagna per gli affari dei regni.",
	},
	["ifo.journey.w20.glow.020"] = {
		"Un'ultima occhiata indietro, poi mi costringo a guardare avanti. La montagna ha avuto il suo turno; ora tocca al cielo.",
		"Smetto di girarmi sulla sella. Ironforge non scappa. Quello che c'è davanti, invece, sì.",
	},
	["ifo.journey.w20.glow.021"] = {
		"Eccì! Ecco l'ultima fuliggine della Great Forge. Addio, e senza rimpianti.",
		"Ecco. Abbastanza freddo da farmi uscire la fuliggine dal naso a forza di gelo.",
	},
	["ifo.journey.w20.glow.022"] = {
		"Ecco che se ne va il posto più caldo che conosca. Si rimpicciolisce in fretta.",
		"Ciao, vecchia montagna. Stai al caldo, lì dentro.",
	},
	["ifo.journey.w20.land.001"] = {
		"sente la bestia chiudere le ali al portone e calare nella sala d'ingresso come un sasso in un pozzo, per riaprirle appena prima del pavimento.",
		"compie l'ultima planata sotto il grande arco, dove la bestia socchiude le ali e le pareti scolpite scorrono veloci ai due lati.",
	},
	["ifo.journey.w20.land.002"] = {
		"C'è un istante, appena oltre il portone, in cui la bestia s'inclina e il pavimento della sala mi riempie tutta la vista. Ho imparato a non guardarlo, quell'istante.",
		"Ogni volta sono {g:sicuro|sicura} che le ali non passeranno sotto l'ultimo arco. Ogni volta si chiudono a un palmo dalla pietra, e mi sento {g:sciocco|sciocca}.",
		"Quell'ultimo arco la bestia lo misura meglio di qualunque scalpellino. Io sussulto ancora; lei mai.",
	},
	["ifo.journey.w20.land.003"] = {
		"si posa sul posatoio con uno stridio di artigli sulla pietra, le zampe posteriori della bestia che prendono il peso un attimo dopo quelle anteriori.",
		"viene {g:depositato|depositata} al posatoio in due saltelli goffi, con la bestia che slitta sulla pietra consumata prima di trovare l'appoggio.",
		"atterra al raschiare secco degli artigli sulla roccia, e la bestia fa tre brevi passi di corsa per smaltire l'ultima velocità.",
	},
	["ifo.journey.w20.land.004"] = {
		"Nove archi tra il portone e qui. Tutti puntati alla mia testa.",
		"Quell'ultima virata sopra la forgia era per farti vedere, bestia. L'hanno vista tutti.",
		"Neanche un rilievo scheggiato, entrando. Lo chiamo un atterraggio come si deve.",
	},
	["ifo.journey.w20.land.005"] = {
		"Entrare a Ironforge è un imbuto: il pendio, poi il portone, poi la sala, poi il posatoio, ognuno più stretto, più caldo e più rumoroso del precedente.",
		"Pendio, portone, sala, trespolo. Il mondo si stringe fino a un solo posatoio, e ogni stretta è più calda.",
		"Montagna, porta, sala, trespolo: la bestia li infila uno più piccolo dell'altro, e il freddo cade a ogni passaggio come un mantello tolto a pezzi.",
	},
	["ifo.journey.w20.land.006"] = {
		"plana per tutta la sala d'ingresso sotto rilievi consumati dai secoli, e i volti di pietra sembrano voltarsi al passaggio delle ali.",
		"scivola in volo lungo la grande sala oltre file di figure scolpite, così antiche che i lineamenti si sono ammorbiditi, come volti visti attraverso l'acqua.",
		"percorre in volo la lunga sala oltre figure scolpite più alte di qualunque guardia, con gli occhi di pietra all'altezza dei suoi per un solo colpo d'ala ciascuna.",
	},
	["ifo.journey.w20.land.007"] = {
		"La bestia vede sempre il posatoio prima di me. Un attimo sta planando, quello dopo ha deciso con tutto il corpo, e sotto gli artigli c'è già la pietra.",
		"Non sento mai la bestia decidere di atterrare. Smette semplicemente di essere un uccello e diventa una cosa con le zampe.",
		"La bestia ha le sue idee sull'atterraggio e non le condivide coi passeggeri. Le scopro quando arriva la pietra.",
	},
	["ifo.journey.w20.land.008"] = {
		"scende sopra la Great Forge in una spirale lenta, e a ogni giro il bagliore dei canali di metallo fuso scorre sul suo viso.",
		"compie un giro sopra la grande incudine prima che la bestia cali al posatoio, con la luce rossa che scivola su piume, finimenti e pelle.",
		"scende per l'ultimo tratto della spirale, con i canali di metallo fuso che girano sotto come i raggi di una ruota rossa.",
	},
	["ifo.journey.w20.land.009"] = {
		"La montagna mi lascia entrare dalla porta principale senza chiedermi il nome. Ci sono re che non ricevono questa cortesia.",
		"Nessuna parola al portone, nessuna domanda. La montagna si apre e la bestia entra diritta, come se fosse attesa.",
	},
	["ifo.journey.w20.land.010"] = {
		"tocca terra nel bel mezzo di una discussione accanto al posatoio; le due parti tacciono, aspettano che le ali si chiudano e riprendono esattamente da dove erano rimaste.",
		"atterra accanto a due fabbri che litigano accaloratamente; si interrompono con garbo per l'atterraggio e riattaccano la lite dalla stessa identica parola.",
		"atterra accanto a un nano nel bel mezzo di una lunga storia; chi ascolta si volta a guardare le ali chiudersi e poi si rigira, pretendendo il finale.",
	},
	["ifo.journey.w20.land.011"] = {
		"Appena dentro il portone c'è una linea nell'aria dove il freddo finisce. La bestia la attraversa con un solo colpo d'ala, e il viso se ne accorge prima del resto di me.",
		"Un colpo d'ala oltre la soglia, e l'aria cambia idea del tutto. Freddo dietro, caldo davanti, e in mezzo nient'altro che il portone.",
	},
	["ifo.journey.w20.land.012"] = {
		"slaccia la cinghia dei finimenti a tentoni, con le dita troppo fredde per qualcosa di più fine, e scivola giù dal fianco della bestia.",
		"scavalca con una gamba e salta l'ultimo breve tratto fino alla pietra, con gli stivali che risuonano più forte del previsto.",
		"lascia i finimenti, scivola lungo il fianco caldo della bestia e atterra a piedi uniti, come un bambino che salta giù da un muretto.",
	},
	["ifo.journey.w20.land.013"] = {
		"Dentro dal portone su ali dell'Alleanza, oltre guardie dell'Alleanza, fino alla forgia più grande che l'Alleanza possieda. Qualunque cosa cambi là fuori, questo regge.",
		"Un grifone di Ironforge mi posa accanto alla forgia che arma mezza Alleanza. Difficile essere più al sicuro tra amici.",
		"Acciaio dell'Alleanza sulle guardie, bestie dell'Alleanza sui trespoli, una forgia dell'Alleanza che rugge lì sotto. Appena a terra, e già tra i miei.",
	},
	["ifo.journey.w20.land.014"] = {
		"La folla al posatoio si apre a ogni atterraggio. È agli artigli che fanno spazio, non a me, ma lo prendo lo stesso.",
		"La gente arretra quando la bestia scende. Mi piacerebbe pensare che sia rispetto. Sono gli artigli.",
	},
	["ifo.journey.w20.land.015"] = {
		"entra dal portone con la tempesta ancora alle calcagna della bestia, e appena le ali superano l'arco il tuono si riduce a un brontolio soffocato.",
		"entra al riparo, via dalla tempesta, con l'acqua che cola dai finimenti, e il suo fragore resta oltre il portone come una lite dietro una porta chiusa.",
	},
	["ifo.journey.w20.land.016"] = {
		"entra dalla luce del giorno quasi {g:accecato|accecata}, e resta al posatoio a sbattere le palpebre mentre la penombra rossa della sala si riempie piano di forme.",
		"atterra con gli occhi ancora pieni dei pendii luminosi di fuori, e per qualche istante la città è solo bagliore, ombra e rumore.",
	},
	["ifo.journey.w20.land.017"] = {
		"Fuori le cime diventavano rosse e poi grigie alle mie spalle. Qui dentro il colore non cambia mai, e al posatoio nessun altro ha appena visto spegnersi un giorno.",
		"Il crepuscolo scendeva sui pendii quando il portone mi ha {g:accolto|accolta}. Al posatoio nessuno lo sa ancora, e non ho voglia di dirglielo.",
	},
	["ifo.journey.w20.land.018"] = {
		"Le tieni ferma la testa un momento, per favore? Vorrei scendere con tutte le dita.",
		"Fermo lì. Fammi togliere lo stivale dalla staffa prima di andare da qualche parte.",
		"Piano, piano. Il volo è finito, bestia: puoi smettere di sporgerti.",
	},
	["ifo.journey.w20.land.019"] = {
		"scende oltre le alte cornici della sala d'ingresso, dove le lampade ardono in gabbie di ferro, e ognuna guizza un poco al vento delle ali.",
		"sfiora una fila di lampade lungo la sala, e ogni fiamma s'inchina a sua volta al vento delle ali, come se la città salutasse l'arrivo.",
	},
	["ifo.journey.w20.land.020"] = {
		"Nell'ultimo tratto d'aria la bestia butta avanti le zampe come chi cerca una ringhiera al buio. Poi pietra, e immobilità.",
		"Ali indietro, zampe avanti, uno scossone nella sella, e il lungo ronzio del volo si interrompe di colpo. Il silenzio che lascia è pieno di martelli.",
	},
	["ifo.journey.w20.land.021"] = {
		"viene {g:posato|posata} così delicatamente che per un attimo il volo non sembra finito, e resta in sella finché l'addetto non tossisce.",
		"resta {g:seduto|seduta} un momento dopo che la bestia si è fermata, le mani ancora sui finimenti, come in attesa che qualcuno lo dica.",
	},
	["ifo.journey.w20.land.022"] = {
		"Dall'alto la Great Forge è un anello di fuoco con una città costruita sul bordo. A piedi è una forgia. La preferisco dalla groppa della bestia.",
		"Scendendo sopra la grande incudine si vede tutto il disegno del posto: gli anelli delle sale, i canali, il suo ordine. Poi atterri, ed è solo un gran daffare.",
	},
	["ifo.journey.w20.land.023"] = {
		"sbuca dalla nebbia e passa il portone così all'improvviso che le lanterne delle guardie sembrano spuntare dal nulla, e subito dopo tutta la città rossa.",
		"entra con la nebbia ancora in goccioline sui finimenti e sulle maniche, un'umidità grigia che il calore della forgia asciuga in un attimo.",
	},
	["ifo.journey.w20.lift.001"] = {
		"sente il maestro dei grifoni dare un ultimo strattone alle cinghie, e poi la pietra del posatoio semplicemente non c'è più.",
		"si lascia controllare dal maestro dei grifoni cinghia per cinghia, con la faccia di chi conta il resto, e poi la bestia si dà la spinta.",
	},
	["ifo.journey.w20.lift.002"] = {
		"Il calore dei canali di metallo fuso regala i primi tre colpi d'ala. Ironforge sarà avara di qualcosa, ma mai del suo fuoco.",
		"Una vampata della forgia spinge da sotto le ali, e la bestia ci sale sopra come su un montacarichi. Mai pagata così poco tanta altezza.",
	},
	["ifo.journey.w20.lift.003"] = {
		"si alza sopra la grande incudine proprio mentre il fabbro solleva il martello, e sparisce prima che ricada.",
		"passa sopra la grande incudine tra un colpo e l'altro; il fabbro che ci lavora non saprà mai che qualcuno è passato di lì.",
		"si leva sopra l'incudine mentre un martello sale, e il rintocco del colpo arriva da sotto un istante dopo, come lanciato dietro alla bestia.",
	},
	["ifo.journey.w20.lift.004"] = {
		"Gli artigli lasciano la pietra e le ali non tengono ancora: è l'istante più breve del volo, e quello che lo stomaco si ricorda più a lungo.",
		"Lo strattone del decollo sale dalla sella fino ai denti. Poi è tutto liscio. È solo il primo pollice a protestare.",
	},
	["ifo.journey.w20.lift.005"] = {
		"Su, bestia, e non troppo vicino alla roba che scotta. Non vorrei arrivare in lingotti.",
		"Più in alto, per favore. Quel metallo laggiù è molto arancione, e io sono molto infiammabile.",
		"Alla larga dalla parte fusa. Su tutto il resto si può trattare.",
	},
	["ifo.journey.w20.lift.006"] = {
		"si stacca in una nuvoletta di fuliggine scossa dal bordo del posatoio, e un fabbro là sotto starnutisce senza perdere un colpo.",
		"fa scendere uno sbuffo di vecchia fuliggine dal posatoio mentre le ali si aprono, e sotto, chissà dove, un nano impreca contro il soffitto.",
	},
	["ifo.journey.w20.lift.007"] = {
		"Il calore si stacca a strati mentre la bestia sale: rovente all'incudine, tiepido sulle passerelle, appena gradevole all'altezza delle lampade. Mi stanno sbucciando.",
		"Tre altezze, tre climi: il pavimento della forgia, le gallerie, le lampade. Quando la bestia si raddrizza li ho attraversati tutti, e ho perso una stagione.",
		"Durante la salita il calore della forgia mi scivola via come un cappotto tolto di dosso, prima una manica e poi l'altra.",
	},
	["ifo.journey.w20.lift.008"] = {
		"sale attraverso il tremolio sopra le cascate di metallo fuso, e per un attimo tutta la Great Forge ondeggia là sotto come una città vista attraverso l'acqua.",
		"entra nel riverbero sopra le cascate di fuoco, dove le sale si increspano e si piegano come se la pietra stessa avesse cominciato a fondere.",
	},
	["ifo.journey.w20.lift.009"] = {
		"Uno gnomo sulla galleria mi indica e dice qualcosa a un amico. Per circa quattro secondi l'attrazione di Ironforge sono io.",
		"Qualcuno là sotto ha appena tirato la manica a un compagno e ha indicato verso di me. La fama: dura esattamente quanto un decollo.",
		"Due bambini nani su una rampa agitano tutte e due le braccia verso la bestia. Io ricambio. La bestia, da professionista, no.",
	},
	["ifo.journey.w20.lift.010"] = {
		"sale accanto a una passerella così vicina che un nano appoggiato al parapetto avrebbe potuto allungare un boccale fin lassù, e ha l'aria di averci pensato.",
		"sfiora il bordo di una passerella alta; un nano al parapetto alza il boccale in segno di saluto, o forse per difendersi.",
	},
	["ifo.journey.w20.lift.011"] = {
		"Nemmeno un fabbro alza gli occhi mentre la bestia sale. Una partenza è la cosa meno interessante che possa succedere alla Great Forge.",
		"Sotto, il lavoro continua senza un'occhiata verso l'alto. Che qualcuno parta, a una forgia non importa: ha il metallo a cui pensare.",
		"Non si gira una testa. Una forgia che vede partire gente da prima che chiunque ricordi ha di meglio da guardare.",
	},
	["ifo.journey.w20.lift.012"] = {
		"Il posatoio sa di piume, di fumo di carbone e di qualunque cosa abbiano mangiato le bestie. Esserne sollevati è il primo regalo del volo.",
		"Paglia vecchia, piume calde e carne di ieri: il profumo di un posatoio di grifoni. Ogni colpo d'ala verso l'alto è aria un po' più pulita.",
	},
	["ifo.journey.w20.lift.013"] = {
		"compie un giro sopra la Great Forge mentre la bestia trova la sua rotta, e i canali di metallo fuso ruotano sotto come i raggi di una ruota rossa.",
		"gira una sola volta intorno alla forgia mentre la bestia sceglie la sala, con i fiumi di metallo che scorrono sotto in un lento anello rosso.",
	},
	["ifo.journey.w20.lift.014"] = {
		"L'ultima parola del maestro dei grifoni non è per me, è per la bestia: bassa, burbera, una cosa fra loro. Poi una pacca sul fianco, e il posatoio sprofonda.",
		"Qualunque cosa il maestro dei grifoni mormori all'orecchio della bestia al decollo, non è roba per chi monta. Però funziona. E su si va.",
	},
	["ifo.journey.w20.lift.015"] = {
		"Cinghie a posto, bestia sfamata, cielo che aspetta. Grazie mille!",
		"Obbligatissimo! Se non arrivo, la bestia sa in che punto ho perso la presa.",
		"Niente saluti, per favore. Finirei per provare a ricambiare.",
	},
	["ifo.journey.w20.lift.016"] = {
		"sale finché le lampade in alto sulle pareti sono all'altezza della sella, e ognuna passa così vicino da scaldare una guancia.",
		"si arrampica tra le lampade alte della Great Forge, abbastanza vicino da vedere il velo di fuliggine sui vetri.",
	},
	["ifo.journey.w20.lift.017"] = {
		"Essere sollevati sopra la Great Forge è come fare da coperchio a un bollitore. Qualcuno dovrebbe avvisare il coperchio.",
		"Aria calda che sale, e io in cima. Per questo breve tratto sono un coperchio di pentola, e nemmeno dei più tranquilli.",
	},
	["ifo.journey.w20.lift.018"] = {
		"Ogni nano lascia la Great Forge allo stesso modo, in volo o a piedi: con un'occhiata al fuoco, per controllare che sia ancora acceso. Lo è sempre.",
		"Passandoci accanto a piedi me ne dimentico. Sorvolandola me ne ricordo: è il fuoco con cui si misura ogni nano del mondo.",
	},
	["ifo.journey.w20.lift.019"] = {
		"La cinghia è stretta? Bene. Inutile discuterne oltre.",
		"Sì, sì, mi tengo. Vai.",
	},
	["ifo.journey.w20.lift.020"] = {
		"Ahi, scotta, scotta! Su, su, su!",
		"Se ne esco con le sopracciglia bruciacchiate, scrivo un reclamo.",
	},
	["ifo.journey.w20.lift.021"] = {
		"batte due volte sul collo della bestia prima che si alzi, come un carrettiere che bussa sul carro prima di partire.",
		"dà al grifone una pacca decisa sulla spalla, riceve in cambio un'occhiata indifferente, e viene {g:sollevato|sollevata} dal posatoio lo stesso.",
	},
	["ifo.journey.w20.peak.001"] = {
		"Dun Morogh dall'alto: pieghe e grinze bianche dappertutto, come un letto da cui qualcuno si è appena alzato.",
		"Sotto, le colline di Dun Morogh stanno sgualcite e bianche, un lenzuolo che nessuno si è preso la briga di stirare.",
		"Tutto il paese là sotto sembra ricavato da un unico grande foglio di carta, poi accartocciato da un gigante che ha cambiato idea.",
	},
	["ifo.journey.w20.peak.002"] = {
		"Il freddo va dritto allo spiraglio fra guanto e manica, come se avesse studiato il vestito in anticipo.",
		"Due colpi d'ala fuori e il freddo ha già trovato ogni fessura: il polso, il colletto, la cucitura che volevo rammendare.",
		"L'aria della montagna mi controlla i vestiti come una guardia controlla i documenti, e trova tutto quello che ho dimenticato.",
	},
	["ifo.journey.w20.peak.003"] = {
		"Freddo! Freddo, freddo, freddo. Va bene, sono {g:sveglio|sveglia}.",
		"Uh. Questa è la montagna che saluta.",
		"Chi ha ordinato questo tempo? Vorrei scambiarci due parole.",
	},
	["ifo.journey.w20.peak.004"] = {
		"Le vette intorno a Ironforge stanno spalla a spalla come un consiglio di anziani che non ha mai chiuso una seduta, e non ha mai accettato di spostarsi.",
		"Cerchio dopo cerchio di cime, tutte rivolte alla stessa montagna, come se l'intera catena si fosse radunata per tenere d'occhio i nani.",
	},
	["ifo.journey.w20.peak.005"] = {
		"scorge, molto più in basso, una sola fila di impronte che attraversa un campo di neve: la lunga camminata di un viandante scritta sul bianco.",
		"segue con gli occhi una pista solitaria di orme sulla neve, dritta come una riga, che finisce in una figura troppo piccola per capire chi sia.",
	},
	["ifo.journey.w20.peak.006"] = {
		"I nani hanno trovato una montagna sepolta nella neve e ci hanno acceso dentro il fuoco più grande del mondo. Da quassù, con questo freddo, sembra la cosa più saggia mai fatta.",
		"Tutta questa neve fuori, tutto quel fuoco dentro. Vista dalla sella, Ironforge intera è una lunga, testarda lite con il clima.",
	},
	["ifo.journey.w20.peak.007"] = {
		"Le orecchie prima si intorpidiscono, poi fanno male, poi smettono del tutto di mandare notizie. Ne riavrò all'arrivo.",
		"Il freddo lavora sulle orecchie a tappe: pizzicore, dolore, silenzio. Sono al silenzio. Si lamenteranno parecchio quando si sgeleranno.",
	},
	["ifo.journey.w20.peak.008"] = {
		"scivola sopra una cascata ghiacciata appesa a una rupe sotto il volo, ferma a metà caduta come una tenda che qualcuno ha dimenticato di tirare.",
		"plana sopra una parete dove una cascata è gelata per intero, ogni increspatura conservata esattamente com'era nell'attimo in cui il freddo l'ha presa.",
	},
	["ifo.journey.w20.peak.009"] = {
		"Viste da quassù le montagne sembrano morbide, mucchi di farina. Chiunque le abbia percorse a piedi sa benissimo quanto non lo siano.",
		"I pendii là sotto sembrano abbastanza lisci da scivolarci giù per gioco. I pendii là sotto mentono.",
	},
	["ifo.journey.w20.peak.010"] = {
		"guarda un paio di arieti selvatici su una cengia là sotto sparpagliarsi al grido della bestia, poi fermarsi, alzare gli occhi e decidere che non ne vale la pena.",
		"fa scappare a balzi un gruppetto di arieti lungo una cengia, e li vede fermarsi poco più in là a fissare in su, profondamente offesi.",
	},
	["ifo.journey.w20.peak.011"] = {
		"scorge un solo filo di fumo che sale da una valle lontana, dove qualcuno ha un fuoco acceso e non pensa nemmeno di alzare gli occhi.",
		"individua un solo camino in tutto quel bianco, con uno scarabocchio chiaro di fumo sopra, e lo guarda un po' più a lungo del panorama.",
	},
	["ifo.journey.w20.peak.012"] = {
		"nota una brina sottile che si forma lungo i bordi delle ali della bestia: il calore della forgia è già congelato via dalle piume.",
		"vede la brina risalire sulle piume del bordo d'ala man mano che la salita continua, fine come il sale sull'orlo di un boccale.",
	},
	["ifo.journey.w20.peak.013"] = {
		"Quassù il freddo ha un sapore: pulito, metallico, come neve sciolta in una tazza di latta. Le sale sapevano di carbone. Questo non sa di niente, e a gran voce.",
		"L'aria fuori dalla montagna non ha odore, solo un sapore, sottile e ferroso. Dopo la città è come bere acqua dopo la birra.",
	},
	["ifo.journey.w20.peak.014"] = {
		"Gli studiosi dell'Explorers' League sostengono che queste montagne siano state modellate dalle mani stesse dei Titani. Dalla sella, con le creste disposte in un ordine così pulito, per un colpo d'ala o due è facile crederci.",
		"Uno studioso dell'Explorers' League direbbe che in queste vette c'è la mano dei Titani. Quassù non ho voglia di contraddirlo.",
	},
	["ifo.journey.w20.peak.015"] = {
		"supera il primo crinale oltre il portone, e il paese bianco si apre da ogni lato insieme, piega dietro piega fin dove arriva lo sguardo.",
		"scavalca la spalla della montagna, e la terra oltre si stende bianca e senza fine, creste ammucchiate dietro creste come onde gelate in piena burrasca.",
	},
	["ifo.journey.w20.peak.016"] = {
		"Guarda quanta neve. Qualcuno dovrebbe proprio spalarla.",
		"Bella vista. Non potrebbe essere bella un po' più in basso?",
		"D'accordo, montagne, siete altissime. Ricevuto.",
	},
	["ifo.journey.w20.peak.017"] = {
		"I montanari dicono che i trogg risalgono ancora dalle vecchie cave là sotto. Da quest'altezza la neve nasconde ogni buco, e la terra sembra innocente come una pagina nuova.",
		"In quel bianco pulito, dicono le guardie, i trogg stanno scavando chissà dove. La neve tiene il segreto alla perfezione.",
	},
	["ifo.journey.w20.peak.018"] = {
		"esce dal portone mentre le vette di Dun Morogh prendono l'ultima luce, rosa sulle cime mentre le valli sono già diventate azzurre.",
		"sale nel crepuscolo con ogni cima intorno che arde appena sulla punta, e ogni conca di sotto ormai color ardesia.",
	},
	["ifo.journey.w20.peak.019"] = {
		"Fuori dal portone, nell'alba: le vette più alte si accendono per prime, una dopo l'altra, come lampade accese lungo una sala.",
		"La prima luce sta sulle cime delle montagne e ancora da nessun'altra parte. La bestia ci sale incontro come se ne volesse un po' anche lei.",
	},
	["ifo.journey.w20.peak.020"] = {
		"sente il sole sulle spalle oltre il portone, sottile e pallido dopo il caldo della forgia, ma sincero.",
		"volge il viso al sole appena la montagna resta indietro, e ne riceve poco calore, ma moltissima luce.",
	},
	["ifo.journey.w20.peak.021"] = {
		"L'aria è così limpida oltre il portone che le creste lontane sembrano a tiro di palla di neve. Alcune sono a una giornata di volo.",
		"Non una nuvola da nessuna parte. Ogni vetta di Dun Morogh si staglia netta come una gemma tagliata, e posso contarle finché non mi arrendo.",
	},
	["ifo.journey.w20.peak.022"] = {
		"I fiocchi di neve mi si impigliano nelle ciglia oltre il portone e non si sciolgono. Faccio metà del primo tratto sbattendo le palpebre come un gufo.",
		"La neve mi trova il colletto, le ciglia, l'interno delle orecchie. La bestia se la scrolla dalle piume ogni pochi colpi d'ala, come un cane.",
	},
	["ifo.journey.w20.peak.023"] = {
		"Dovevo portare i guanti più spessi.",
		"Le dita hanno smesso di rivolgermi la parola.",
		"Ricordami di scongelarmi quando sarà finita.",
	},
	["ifo.journey.w20.peak.024"] = {
		"scorge una fila di piccole sagome che trotterella lungo una cresta molto più in basso, lupi a giudicare dall'andatura, senza fretta e per nulla interessati a ciò che vola.",
		"guarda un branco di lupi attraversare un pendio scoperto sotto il volo, in fila indiana, ognuno che posa le zampe nelle orme di quello davanti.",
	},
	["ifo.journey.w20.return.001"] = {
		"passa le redini a un addetto, che le prende senza una parola e fa scorrere una mano esperta lungo la zampa anteriore della bestia, a sentire se scotta.",
		"consegna la bestia al custode del posatoio, che la esamina artiglio per artiglio prima di concedere qualcosa di caloroso come un cenno del capo.",
	},
	["ifo.journey.w20.return.002"] = {
		"Mi ha {g:portato|portata} per tutta quella strada e se ne va senza voltarsi. Le bestie migliori sono così, credo: nessuna cerimonia, né all'inizio né alla fine.",
		"Mi piacerebbe dire che il congedo è stato affettuoso. La bestia non ha nemmeno girato la testa. Giusto così: di passeggeri ne ha tanti.",
	},
	["ifo.journey.w20.return.003"] = {
		"Ecco qua. Dritto alla tua cena, e non lasciare che te la mangino gli altri.",
		"Vai, allora. Bel volo, e attento a quello giovane in fondo: morde.",
		"Grazie. Ti lascerei una mancia, ma dubito che sapresti cosa fartene di una moneta.",
	},
	["ifo.journey.w20.return.004"] = {
		"guarda la bestia condotta ai trespoli, dove si sistema, si arruffa una volta dalla testa alla coda e diventa all'istante indistinguibile dalle altre.",
		"vede l'animale accompagnato al suo posto nella fila, dove si scrolla e diventa, in un attimo, una bestia come tante.",
		"osserva la bestia prendere posto sul trespolo, raccogliere la testa e diventare, in un solo gesto, una creatura che non ha mai portato nessuno da nessuna parte.",
	},
	["ifo.journey.w20.return.005"] = {
		"Ho provato a fissarmi in testa quale mi ha {g:portato|portata}, per cercarla più avanti. L'hanno già mescolata alle altre. Non lo saprò mai.",
		"Giurerei che era quella con la tacca sull'orecchio. O l'altra. Hanno tutte l'aria di avermi fatto un favore.",
	},
	["ifo.journey.w20.return.006"] = {
		"prova a dare alla bestia una pacca di commiato e viene {g:ignorato|ignorata} del tutto: ha già la testa in un secchio.",
		"allunga una mano per grattare il collo dell'animale in segno di ringraziamento, ma la bestia ha avvistato la mangiatoia ed è sparita prima che la mano arrivi.",
	},
	["ifo.journey.w20.return.007"] = {
		"Per la bestia ero un peso, per giunta un peso irrequieto, e adesso mi riconsegnano come qualunque altro fagotto. C'è una certa onestà, in questo.",
		"Un passaggio, un atterraggio, una firma. La bestia non si ricorderà di me, e io mi ricorderò di lei a lungo. Mi sembra giusto così.",
	},
	["ifo.journey.w20.return.008"] = {
		"resta un momento con una mano aperta sulla spalla della bestia, sentendo i grossi muscoli fremere e quietarsi, prima che l'addetto la porti via.",
		"tiene il palmo contro il collo dell'animale finché l'addetto non si schiarisce la gola, e allora lo lascia andare.",
		"posa una mano sul fianco caldo della bestia un momento più di quanto l'addetto vorrebbe, poi fa un passo indietro e la lascia andare.",
	},
	["ifo.journey.w20.return.009"] = {
		"Ha volato bene. Ha evitato ogni arco. Però dai un'occhiata all'ala sinistra: al portone la risparmiava.",
		"Ecco, tutta tua. Neanche un graffio sulla bestia, e solo uno o due addosso a me.",
		"Fatto. Il lavoro duro l'ha fatto lei; io mi sono solo {g:tenuto|tenuta}.",
	},
	["ifo.journey.w20.return.010"] = {
		"Per tutto il resto del cammino saprò di piume e di bestia. A Ironforge nessuno se ne accorgerà: tutta questa parte della città ne sa.",
		"Se n'è andata, la bestia, ma il suo odore resta, tutto sul davanti. In questa città, almeno, non sono la cosa più strana nell'aria.",
	},
	["ifo.journey.w20.return.011"] = {
		"aspetta mentre l'addetto slaccia i finimenti cinghia per cinghia e li appende al loro piolo, un piccolo rito ripetuto a ogni atterraggio.",
		"guarda i finimenti lasciare la bestia nell'ordine di sempre, fibbia, cinghia, sottopancia, finché all'animale non resta addosso altro che la noia.",
	},
	["ifo.journey.w20.return.012"] = {
		"Il grifone torna al suo trespolo, pronto per il prossimo dell'Alleanza che abbia bisogno di un passaggio. Mi piace essere un anello di questa catena.",
		"Riconsegnato, nutrito, riposato, e in volo per l'Alleanza prima che io abbia attraversato la sala. Queste bestie fanno per la causa più di molti generali.",
	},
	["ifo.journey.w20.return.013"] = {
		"Lassù c'eravamo la bestia e io. Adesso le redini sono in altre mani e sono un viso nella folla. Ci vuole un momento per rientrarci.",
		"La bestia va da una parte e io dall'altra, e per un passo o due mi sento stranamente senza compagnia, in una sala piena di nani.",
	},
	["ifo.journey.w20.return.014"] = {
		"infila per abitudine una moneta di rame nel palmo dell'addetto; l'addetto se la intasca con la stessa abitudine, e nessuno dei due ne parla.",
		"lascia una moneta sul bordo del secchio del mangime per i garzoni del posatoio, e la moneta sparisce, in silenzio, prima di tre passi.",
	},
	["ifo.journey.w20.return.015"] = {
		"Prima che la portassero via, la bestia mi ha lanciato un'occhiata lunga e piatta. Sono quasi {g:sicuro|sicura} di essere {g:stato giudicato|stata giudicata}, e di aver perso.",
		"Un'ultima occhiata dall'animale che se ne va, di quelle che un padrone di casa riserva all'inquilino. Forse gli devo qualcosa. Preferisco non saperlo.",
	},
	["ifo.journey.w20.return.016"] = {
		"aiuta l'addetto a strofinare una bestia ancora gocciolante per la tempesta là fuori, lavorando tutti e due in silenzio mentre il tuono brontola appena oltre il portone.",
		"resta a strofinare con un sacco la bestia bagnata di tempesta accanto all'addetto, con il rotolare sordo del tuono che si sente appena da fuori.",
	},
	["ifo.journey.w20.return.017"] = {
		"I Wildhammer cavalcano le loro bestie come fossero parenti, si dice. Un Bronzebeard riconsegna le redini al posatoio con un cenno. Clan diversi, affetti diversi.",
		"Ad Aerie Peak, racconta la gente, un Wildhammer non lascia mai che un'altra mano tenga le redini della sua bestia. Qui le passo a uno sconosciuto e me ne vado. È l'uso dei Bronzebeard, e non è peggiore.",
	},
	["ifo.journey.w20.return.018"] = {
		"Tienile da parte gli avanzi migliori, d'accordo? Ha faticato parecchio contro il vento.",
		"È stanca. Vacci piano con le fibbie.",
		"Attento alla zampa destra: pesta quando ha fame. Cioè, a quanto capisco, sempre.",
	},
	["ifo.journey.w20.return.019"] = {
		"guarda la bestia, liberata dai finimenti, grattarsi dietro un orecchio con una zampa posteriore proprio come un cane, tutta la sua maestosità svanita in un attimo.",
		"vede l'animale, tolti i finimenti, stendere un'ala, poi l'altra, poi sbadigliare enormemente, mostrando un becco capace di aprire una cassaforte.",
	},
	["ifo.journey.w20.return.020"] = {
		"si fa da parte mentre la bestia, appena rifocillata, viene sellata per qualcun altro, e lascia salire il viaggiatore successivo.",
		"non ha fatto dieci passi che l'animale ha già un nuovo cavaliere e punta verso il portone, come se l'ultimo viaggio non fosse mai avvenuto.",
	},
	["ifo.journey.w20.return.021"] = {
		"L'addetto prende le redini, mi squadra con la stessa cura della bestia, e non sembra soddisfatto di nessuno dei due. Giusto.",
		"Al posatoio mi controllano con la stessa cura della bestia: un'occhiata alle mani, una al viso. Passo, più o meno.",
	},
	["ifo.journey.w20.roost.001"] = {
		"lancia un'occhiata alla fila di bestie in attesa al posatoio, ognuna con la testa raccolta e un occhio aperto, come se quello aperto fosse di guardia.",
		"nota gli altri animali sui trespoli che sonnecchiano in fila, ogni testa infilata sotto l'ala e ognuno di loro, chissà come, ancora all'erta.",
		"vede le bestie sui trespoli spostarsi e risistemarsi all'atterraggio, come una fila di vecchi soldati che fanno posto su una panca.",
	},
	["ifo.journey.w20.roost.002"] = {
		"Paglia, carne cruda e una gran quantità di piume. Il posatoio ha un odore tutto suo, e il caldo della forgia non lo aiuta.",
		"Chi tiene il posatoio lo spazza spesso. Si capisce, perché potrebbe andare molto peggio.",
	},
	["ifo.journey.w20.roost.003"] = {
		"guarda un addetto passare una spazzola dura lungo il collo di una bestia, e la bestia appoggiarcisi contro a occhi socchiusi, come un gatto davanti al camino.",
		"si ferma a guardare un addetto che districa i nodi dal collare di piume di un animale, mentre la grande testa si abbassa a ogni passata.",
		"segue con gli occhi la mano di un addetto lungo l'ala di una bestia fino alla punta, con le penne che si aprono e si richiudono dietro le dita come le pagine di un libro sfogliato.",
	},
	["ifo.journey.w20.roost.004"] = {
		"Chi è il chiacchierone in fondo? Si lamenta da quando sono {g:entrato|entrata}.",
		"Quello sull'ultimo trespolo non ha smesso di sgridarmi da quando sono {g:atterrato|atterrata}. Ce l'ha con me?",
		"Calma, bestione. Passo solo accanto al tuo trespolo, non voglio la tua cena.",
	},
	["ifo.journey.w20.roost.005"] = {
		"fa in tempo a vedere una bestia appena atterrata immergere tutto il becco nell'abbeveratoio e riemergere scrollando gocce sul nano più vicino.",
		"passa accanto all'abbeveratoio proprio mentre una bestia ne solleva il becco gocciolante e si scuote, schizzando chiunque sia a portata d'ala.",
	},
	["ifo.journey.w20.roost.006"] = {
		"Qualunque altro uccello fuggirebbe da un fiume di ferro fuso. Questi ci si appollaiano accanto e si lisciano le penne. Qualcuno, tanto tempo fa, ha avuto una pazienza infinita.",
		"Sono fatti per le scogliere e per il freddo, e sonnecchiano a pochi passi dal fuoco liquido. Chi gliel'ha insegnato per primo era più coraggioso di me.",
	},
	["ifo.journey.w20.roost.007"] = {
		"guarda una bestia giovane in fondo alla fila tirare la manica di un addetto col becco finché non ottiene un avanzo, e poi tirarla subito un'altra volta.",
		"vede un addetto passare lungo i trespoli con un secchio di avanzi, e ogni testa della fila girarsi a seguirlo.",
		"segue con lo sguardo un secchio di ritagli di carne che attraversa il posatoio, seguito da una lunga fila di teste che si voltano come guardie al passaggio di un bel viso.",
	},
	["ifo.journey.w20.roost.008"] = {
		"Il custode del posatoio conta ogni bestia che rientra, un dito alla volta, muovendo le labbra. Un banchiere invidierebbe tanta cura.",
		"Qualcuno qui tiene il conto degli animali, e ho appena visto segnare quello che ho cavalcato, accanto al suo nome.",
	},
	["ifo.journey.w20.roost.009"] = {
		"nota al posatoio una bestia con un'ala fasciata, tenuta un po' in disparte, con il suo addetto seduto accanto su un secchio rovesciato.",
		"vede un animale appollaiato lontano dagli altri, un'ala legata stretta al fianco, e un addetto su una cassa capovolta a fargli compagnia.",
	},
	["ifo.journey.w20.roost.010"] = {
		"Tutto il posatoio saluta ogni atterraggio con una raffica di strilli. Ciao, oppure stai lontano: con queste bestie forse è la stessa parola.",
		"Un atterraggio, una dozzina di stridi dai trespoli. Qualcosa vorranno dire. Darei parecchio per sapere cosa.",
	},
	["ifo.journey.w20.roost.011"] = {
		"ha appena messo giù tutti e due gli stivali che un addetto si sbraccia per sgombrare la piazzola: un'altra bestia sta già entrando.",
		"viene {g:spinto|spinta} giù dalla pietra d'atterraggio da un addetto col fischietto, perché un altro paio d'ali è già nella sala.",
		"si vede allontanare dal posto d'atterraggio con ampi gesti delle braccia di un addetto, come un carrettiere che sgombra la strada, prima che arrivino le ali successive.",
	},
	["ifo.journey.w20.roost.012"] = {
		"Al posatoio c'è una bestia vecchia, il muso grigio e le punte delle ali sfilacciate. Nessuno le mette più i finimenti, e nessuno la manda via.",
		"In fondo sta un animale troppo vecchio per le rotte, bianco intorno al becco. Lo nutrono insieme agli altri. Anche per questo, questa città mi piace.",
	},
	["ifo.journey.w20.roost.013"] = {
		"Un addetto al posatoio borbotta che i Wildhammer di Aerie Peak pensano ancora che nessun Bronzebeard sappia da che parte si nutre una bestia. Lo dice nutrendo la parte giusta, con molta attenzione.",
		"A sentire i garzoni del posatoio, ogni Wildhammer giura che le bestie di qui sentano la mancanza delle Hinterlands. Le bestie, mangiando, non commentano.",
	},
	["ifo.journey.w20.roost.014"] = {
		"nota che tutte le bestie del posatoio hanno una leggera spolverata di fuliggine sulle penne chiare, come se la forgia le avesse firmate una per una.",
		"vede la fuliggine posata nelle piume di ogni bestia sui trespoli, un velo grigio lungo il dorso dove passa il fumo della forgia.",
	},
	["ifo.journey.w20.roost.015"] = {
		"Gran via vai al posatoio. Hanno mai un'ora di pace, o è un continuo di ali?",
		"È sempre così affollato, tra i trespoli? Ho visto mercati più tranquilli.",
	},
	["ifo.journey.w20.roost.016"] = {
		"Un'intera colonia di creature selvatiche, tenute sotto una montagna accanto a un fiume di fuoco. Sembrano contente. Non l'avrei mai detto.",
		"Bestie di scogliere e di aria aperta, appollaiate su pietra scolpita nel cuore caldo della città. Ne hanno fatto il loro nido d'aquila, e la città ha fatto loro posto.",
	},
	["ifo.journey.w20.roost.017"] = {
		"guarda un addetto controllare gli artigli di una bestia uno per uno con una piccola lima, mentre la bestia solleva ogni zampa come un cavallo paziente dal maniscalco.",
		"si ferma mentre un addetto lima un artiglio scheggiato, con la bestia ritta su tre zampe e la dignità annoiata di un vecchio soldato dal barbiere.",
	},
	["ifo.journey.w20.roost.018"] = {
		"Mi offrirei di aiutare a pulire il posatoio, ma mi dispiacerebbe togliere a qualcuno il piacere.",
		"Posto incantevole. Qualcuno spazza mai sotto il terzo trespolo, o è una tradizione?",
	},
	["ifo.journey.w20.roost.019"] = {
		"Dietro di me atterra un'altra bestia con la sella vuota: ha portato qualcuno chissà dove e ha rifatto tutta la strada da sola. Nessuno alza nemmeno lo sguardo.",
		"Una bestia senza cavaliere si posa sul trespolo accanto, i finimenti ancora allacciati, rientrata da sola da qualche atterraggio lontano. La strada la conoscono meglio di qualunque passeggero.",
	},
	["ifo.journey.w20.roost.020"] = {
		"nota al bordo del posatoio un addetto che ricuce una cinghia strappata al bagliore della forgia, con la lingua tra i denti, senza mai alzare gli occhi sugli arrivi.",
		"passa accanto a una panca dove un garzone del posatoio unge una pila di finimenti di cuoio, facendo penetrare il grasso col pollice, lento e regolare come un muratore che stucca un muro.",
	},
	["ifo.journey.w20.roost.021"] = {
		"si ferma accanto a uno gnomo che regola un congegno d'ottone su un finimento di scorta, mentre i garzoni del posatoio osservano con il profondo sospetto di chi preferisce il cuoio.",
		"nota su un finimento, tra tanti di semplice cuoio, una fibbia d'ottone di evidente fattura gnomesca, e un addetto che la fissa come se potesse esplodere.",
	},
	["ifo.journey.w20.roost.022"] = {
		"Un trespolo in fondo resta vuoto, e l'addetto continua a lanciargli occhiate tra un lavoro e l'altro. Non tutte le bestie rientrano da ogni rotta.",
		"Un addetto resta al bordo del posatoio a guardare verso il portone ben dopo l'ultimo arrivo, poi, in silenzio, appende un finimento in fondo alla rastrelliera.",
	},
	["ifo.journey.w20.stiff.001"] = {
		"si allontana dal posatoio a gambe larghe per una dozzina di passi, finché le ginocchia non ricordano di non essere fatte a forma di sella.",
		"lascia il trespolo con le ginocchia ancora convinte di stringere una sella, e un'andatura che lo dimostra.",
	},
	["ifo.journey.w20.stiff.002"] = {
		"Le mani hanno ancora dentro la forma dei finimenti. Stringerò cinghie invisibili fino a cena.",
		"Dita piegate in una curva che si adatta perfettamente alla presa dei finimenti e a nient'altro al mondo. Ci vuole un minuto.",
	},
	["ifo.journey.w20.stiff.003"] = {
		"Datemi un momento. Le gambe sono ancora da qualche parte sopra le montagne.",
		"Non fate caso a me, sto ricordando alle ginocchia da che parte si piegano.",
		"Un attimo. Tutto quello che sta sotto la cintura sta ancora volando.",
	},
	["ifo.journey.w20.stiff.004"] = {
		"si appoggia a una ringhiera di pietra vicino al posatoio e finge di ammirare il panorama, mentre la sensibilità torna lentamente nei piedi.",
		"trova una colonna a cui appoggiare la spalla, con l'aria di chi è profondamente interessato ai suoi rilievi, finché stare in piedi non torna facile.",
		"appoggia un piede sul muretto del posatoio e si allunga, studiando la forgia con grande attenzione, così che nessuno noti la smorfia.",
	},
	["ifo.journey.w20.stiff.005"] = {
		"Giù dalla bestia, sulla pietra, eppure il corpo sale e scende ancora con colpi d'ala che non ci sono più. Passerà. Passa sempre.",
		"Il pavimento è perfettamente fermo. Sono io che volo ancora, un poco, a ogni passo.",
	},
	["ifo.journey.w20.stiff.006"] = {
		"inarca la schiena contro i pugni finché qualcosa non cede con un clic sordo, e poi ha l'aria molto più contenta.",
		"fa ruotare piano prima una spalla e poi l'altra, sciogliendo la gobba che il vento piega addosso a chiunque voli.",
		"ruota piano il busto, a sinistra e a destra, finché la lunga piega del volo non esce dalla schiena.",
	},
	["ifo.journey.w20.stiff.007"] = {
		"Sono {g:stato seduto|stata seduta} per tutto il volo e adesso l'unica cosa che voglio è sedermi. Ho smesso di chiedere al mio corpo di avere senso.",
		"Tutto quello stare in sella, e la prima cosa che le gambe chiedono è una panca. Con le gambe non si ragiona.",
	},
	["ifo.journey.w20.stiff.008"] = {
		"apre e chiude le dita, apre e chiude, mentre un nano lì vicino osserva con l'aria benevola di chi l'ha fatto mille volte.",
		"si siede un momento sul bordo basso del posatoio, piegando le mani irrigidite, mentre gli addetti {g:gli|le} passano attorno senza commenti.",
	},
	["ifo.journey.w20.stiff.009"] = {
		"Credo che la faccia mi si sia fissata nell'espressione che aveva sopra l'ultimo crinale. Qualcuno penserà che ce l'ho con lui.",
		"Ho la faccia bloccata nella smorfia del volo. Il nano alla ringhiera pensa che lo stia fulminando con lo sguardo. Non è così. È che non riesco a smettere.",
	},
	["ifo.journey.w20.stiff.010"] = {
		"scende su gambe che cedono al primo tentativo, e un nano di passaggio afferra un gomito senza rallentare il passo né interrompere la conversazione.",
		"barcolla appena a terra e viene {g:sorretto|sorretta} da un nano che passa con una cassa, che con una spallata {g:lo|la} rimette in piedi e prosegue.",
	},
	["ifo.journey.w20.stiff.011"] = {
		"Ginocchia, schiena, il dorso delle mani dove il freddo si è fermato più a lungo. Ogni parte di me fa rapporto, e nessun rapporto è buono. Comunque, fa piacere sentirle tutte.",
		"I dolori arrivano uno alla volta, educati come visite, e ognuno aspetta che l'altro abbia finito.",
	},
	["ifo.journey.w20.stiff.012"] = {
		"Le gambe di un nano sono fatte per la pietra, non per le staffe. Le mie me lo stanno spiegando nei dettagli.",
		"Gambe corte e una sella larga. Qualche Bronzebeard ingegnoso dovrebbe rimediare, prima che io cammini così per sempre.",
	},
	["ifo.journey.w20.stiff.013"] = {
		"Qualcuno dovrebbe progettare una sella decente per gnomi, su queste bestie. Ho degli appunti. Ho tantissimi appunti.",
		"Promemoria: una sella su misura per gnomi. Secondo promemoria: gambe su misura per le selle.",
	},
	["ifo.journey.w20.stiff.014"] = {
		"si inginocchia un attimo a riallacciare uno stivale che lassù, col freddo, era impossibile toccare, e resta giù un momento più del necessario.",
		"si china a stringere una cinghia alla caviglia e ci mette parecchio, lasciando che le gambe si assestino.",
	},
	["ifo.journey.w20.stiff.015"] = {
		"fa un giro del posatoio al passo, come si fa camminare un cavallo dopo una galoppata, finché la rigidità non cede.",
		"percorre un piccolo cerchio vicino ai trespoli, le mani sui fianchi, finché il pavimento smette di sembrare qualcosa a cui aggrapparsi.",
	},
	["ifo.journey.w20.stiff.016"] = {
		"A ogni volo mi riprometto di sgranchirmi prima di atterrare. A ogni volo prima atterro e poi me ne ricordo.",
		"Il collo è rimasto girato contro il vento per tutto il volo. Ora vorrebbe sapere perché non riesce a raddrizzarsi.",
	},
	["ifo.journey.w20.stiff.017"] = {
		"Per il prossimo minuto nessuno mi guardi camminare, per favore. Non è dignitoso.",
		"Se urto qualcuno, date la colpa alla bestia. Io lo farò di sicuro.",
	},
	["ifo.journey.w20.stiff.018"] = {
		"Lassù non pesavo quasi niente. Quaggiù ogni parte di me si è ripresa il suo peso, e tutte vogliono sedersi.",
		"Dopo un volo il corpo pesa di più. Gli studiosi saprebbero spiegarlo, ne sono {g:certo|certa}. Le mie ginocchia lo spiegano meglio.",
	},
	["ifo.journey.w20.stiff.019"] = {
		"prova ad allontanarsi con dignità e ci riesce per quasi quattro passi.",
		"parte dal posatoio con grande decisione e un lievissimo zoppicare, come se una gamba stesse ancora decidendo se venire.",
	},
	["ifo.journey.w20.warmth.001"] = {
		"si mette dove il calore della forgia raggiunge il posatoio e si volta lentamente, come carne sullo spiedo, finché entrambi i lati non si sono scongelati.",
		"compie un lento mezzo giro davanti alla forgia, scaldando prima un lato e poi l'altro con la pazienza di una pagnotta in forno.",
	},
	["ifo.journey.w20.warmth.002"] = {
		"Le dita mi tornano una alla volta, ognuna con le sue lamentele su dove è stata.",
		"Il disgelo parte dalla punta delle dita e va verso l'interno, e ogni centimetro pizzica. Ne vale la pena.",
		"Prima le mani, poi le orecchie, poi la punta del naso. A Ironforge ci si scongela in un ordine preciso, e nessuno salta la fila.",
	},
	["ifo.journey.w20.warmth.003"] = {
		"si mette così vicino alla forgia che la stoffa del mantello si scalda tutta, e solo allora scioglie la mascella.",
		"sente il freddo del volo lasciare piano il mantello, come lascia una pietra messa accanto al focolare.",
	},
	["ifo.journey.w20.warmth.004"] = {
		"Lassù il freddo mi passava da parte a parte. Quaggiù anche il caldo mi attraversa, ma è di quello che resta.",
		"Il freddo del volo era un ladro. Questo caldo è un padrone di casa, e insiste.",
	},
	["ifo.journey.w20.warmth.005"] = {
		"Cinque passi dalla forgia e le mie orecchie mi hanno già perdonato.",
		"Le sopracciglia si sono scongelate. Il resto è in coda.",
		"Fate largo, mi sto scaldando. Potrebbe volerci un po'.",
	},
	["ifo.journey.w20.warmth.006"] = {
		"allenta il colletto di un buco, poi di un altro, mentre il freddo del volo cede al caldo della forgia molto più in fretta di quanto sembrasse possibile.",
		"slaccia il fermaglio più alto del mantello a una dozzina di passi dal posatoio: il freddo se n'è andato e il caldo ha già preso il suo posto.",
		"si tira indietro il cappuccio prima ancora che la bestia si sia fermata del tutto, e lascia che il calore {g:gli|le} trovi le orecchie.",
	},
	["ifo.journey.w20.warmth.007"] = {
		"Il gelo nelle ossa per tutto il volo, e adesso cerco un angolo più fresco dove stare. Ironforge non ha una via di mezzo.",
		"Troppo freddo per tutto il volo, e troppo caldo a venti passi dall'atterraggio. Ci sarà pure un tratto di sala comodo. Lo troverò.",
	},
	["ifo.journey.w20.warmth.008"] = {
		"sente il calore della forgia posarsi sul viso come una mano aperta, e non si tira indietro.",
		"volge verso la forgia il viso bruciato dal vento e lascia che il calore ci prema contro, a occhi chiusi.",
		"solleva il mento verso la forgia e lascia che il calore penetri nelle guance irrigidite dal freddo.",
	},
	["ifo.journey.w20.warmth.009"] = {
		"Vento per tutto il volo, e adesso un calore che brucia da più tempo di qualunque regno sappia nominare. Non si accorge di me. Mi scalda lo stesso.",
		"Questo fuoco era acceso prima che nascesse il nano più vecchio di queste sale. Scalda un viaggiatore stanco come scalda un re.",
	},
	["ifo.journey.w20.warmth.010"] = {
		"comincia a togliersi strati prima ancora che gli stivali siano fermi, e finisce per attraversare la sala con un fagotto di mantello e guanti come biancheria da lavare.",
		"si sfila i guanti, poi il mantello, poi quasi anche la giubba, e lascia il posatoio con una bracciata di lana e cuoio.",
	},
	["ifo.journey.w20.warmth.011"] = {
		"Il calore della Great Forge mi sale incontro. Altrove il caldo è un conforto. Qui è parentela.",
		"Gli altri fuochi scaldano un nano. Questo mi conosce.",
	},
	["ifo.journey.w20.warmth.012"] = {
		"Anche Gnomeregan era calda, un tempo, d'un calore più pulito di questo. Mi scaldo alla forgia dei nani e cerco di non fare paragoni.",
		"Un fuoco prestato in una città prestata. Mi scalda comunque le mani, e ne sono {g:grato|grata}, e mi manca ancora quello rimasto laggiù.",
	},
	["ifo.journey.w20.warmth.013"] = {
		"Mi hanno lacrimato gli occhi per tutto il volo. Adesso la forgia li asciuga in un colpo e resto qui a sbattere le palpebre come un gufo davanti a una lanterna.",
		"Occhi bagnati di vento, viso asciugato dalla forgia. Devo avere l'aria di chi ha appena sentito una notizia sbalorditiva.",
	},
	["ifo.journey.w20.warmth.014"] = {
		"Vi dispiace se sto un momento vicino al vostro fuoco? Mi sono {g:portato|portata} dietro il freddo.",
		"Scusate, prendo in prestito un po' di questo calore. Poi lo restituisco.",
	},
	["ifo.journey.w20.warmth.015"] = {
		"lascia dal posatoio una scia di piccole impronte bianche di stivali, che si riducono a macchie bagnate e svaniscono prima che qualcuno possa calpestarle.",
		"scuote la neve dal cappuccio sulle pietre del posatoio, dove un addetto la spazza oltre il bordo senza una parola, come se la neve arrivasse ogni giorno con la posta.",
	},
	["ifo.journey.w20.warmth.016"] = {
		"Qualcuno vuole un po' di neve? Ne ho in abbondanza. Nel colletto.",
		"Neve negli stivali, neve giù per il collo. Il resto di Dun Morogh è ancora là fuori, mi dicono.",
	},
	["ifo.journey.w20.warmth.017"] = {
		"si sfrega forte le mani, poi le chiude a coppa sulle orecchie, passate da intorpidite a brucianti nello spazio di una sola sala.",
		"si sfila un guanto coi denti e preme la mano nuda sulla nuca, dove il freddo sembra essersi stabilito per sempre.",
	},
	["ifo.journey.w20.warmth.018"] = {
		"Dieci passi nel caldo e le palpebre sono già pesanti. Il volo mi teneva {g:sveglio|sveglia} a forza di freddo; la forgia ha altri piani.",
		"Il caldo mi va dritto alle palpebre. Potrei dormire in piedi, qui accanto al posatoio, come fanno le bestie.",
	},
	["ifo.journey.w20.warmth.019"] = {
		"Aria calda. Vera, onesta, fatta in montagna. Mi ero {g:scordato|scordata} che esistesse.",
		"Qualcuno tenga accesa quella forgia. Ho deciso di abitarci accanto.",
	},
	["ifo.journey.w20.warmth.020"] = {
		"Neanche una nuvola là fuori, e un freddo coi denti adatti. La forgia glieli toglie uno per uno.",
		"Limpido e pungente per tutto il tragitto, quel freddo che affila ogni contorno. Qui dentro, tutti i contorni si ammorbidiscono in un colpo.",
	},
	["ifo.journey.w20.warmth.021"] = {
		"Il freddo mi ha seguito fino al portone e lì si è fermato, come un cane a cui non è permesso entrare.",
		"Il freddo si è arreso al portone. Non va mai oltre: i nani devono averci scambiato due parole.",
	},
	["ifo.journey.w20.wing.001"] = {
		"Le cinghie sanno di tutti quelli che hanno volato prima di me: olio, cuoio vecchio, la pipa di qualcuno, la paura di qualcun altro. Aggiungo la mia e mi tengo forte.",
		"Cuoio consumato sotto le mani, lucidato da mille prese. Chi ha volato per ultimo si teneva esattamente dove mi tengo io adesso.",
		"Sul pomo della sella c'è un incavo dove si sono premuti pollici a non finire. Ci sta anche il mio.",
	},
	["ifo.journey.w20.wing.002"] = {
		"sente le spalle della bestia gonfiarsi e rollare sotto la sella a ogni colpo, regolari come un rematore che fa questa traversata da tutta la vita.",
		"asseconda il lungo ondeggiare delle ali, con il dorso del grifone che si solleva e si riassesta come una barca su un'onda lenta.",
	},
	["ifo.journey.w20.wing.003"] = {
		"Le piume del collo della bestia sono ancora calde di posatoio. Al portone si saranno raffreddate. Finché dura, ci tengo le mani affondate.",
		"Piume tiepide sotto le dita, un calore preso in prestito dalla forgia. Il freddo, fuori, se lo riprenderà presto.",
	},
	["ifo.journey.w20.wing.004"] = {
		"La strada la conosci meglio di me. Io mi tengo e mi godo il panorama.",
		"Fai strada, bestia. Io sono solo il carico.",
		"Non serve mettersi in mostra. Hai già fatto colpo.",
	},
	["ifo.journey.w20.wing.005"] = {
		"A metà della sala la bestia gira la testa e mi guarda con un occhio tondo, come un cocchiere che controlla il passeggero. Soddisfatta, torna a guardare avanti.",
		"Un occhio tondo, che non batte ciglio, si volta a controllarmi. Qualunque cosa veda, decide che posso andare.",
	},
	["ifo.journey.w20.wing.006"] = {
		"Nelle sale la bestia tiene le ali mezze chiuse e vola con colpi brevi e rapidi, come chi va di fretta in un corridoio affollato e si rifiuta di correre.",
		"Dentro, le ali non si aprono mai del tutto. Colpi corti, ordinati, gomiti stretti. La bestia attraversa le sale come un nano attraversa una taverna piena di gomiti.",
	},
	["ifo.journey.w20.wing.007"] = {
		"Un attimo fa quegli artigli stringevano la pietra. Ora sono ripiegati per bene, in piena fiducia nell'aria. Me ne servirebbe un po', di quella fiducia.",
		"La bestia ha ritirato le zampe come chi sa che non serviranno. Io le mie le tengo esattamente dove sono.",
	},
	["ifo.journey.w20.wing.008"] = {
		"sente la cinghia della sella scricchiolare a tempo con le ali, una piccola protesta di cuoio sotto il grande battere del volo.",
		"ascolta i finimenti parlare mentre la bestia sale: uno scricchiolio a ogni colpo verso il basso, una fibbia che ticchetta contro un anello.",
	},
	["ifo.journey.w20.wing.009"] = {
		"Ogni grifone di qui conosce la rotta a memoria. Chi monta è un bagaglio che per caso si lamenta.",
		"Alla bestia non servono indicazioni, incoraggiamenti né io. Sono un pacco, e nemmeno dei più tranquilli.",
	},
	["ifo.journey.w20.wing.010"] = {
		"Ali ferme, per favore. Ho mangiato benissimo alla Stonefire Tavern e vorrei che restasse dov'è.",
		"Piano, adesso. Quello che ho bevuto alla Stonefire sta ancora decidendo dove sistemarsi.",
	},
	["ifo.journey.w20.wing.011"] = {
		"si piega con la bestia nella prima virata oltre il portone, e tutto il mondo bianco si inclina sul fianco e poi, piano, si raddrizza.",
		"si inclina insieme al grifone che vira sopra il pendio sotto il portone, e le montagne girano intorno come una porta sui cardini.",
	},
	["ifo.journey.w20.wing.012"] = {
		"sente la bestia lanciare un solo grido acuto mentre supera il portone, e la montagna glielo restituisce due volte dai pendii.",
		"viene {g:portato|portata} fuori dal portone su un unico richiamo penetrante della bestia, a cui le rupi rispondono un istante dopo.",
	},
	["ifo.journey.w20.wing.013"] = {
		"guarda le lunghe piume in punta d'ala aprirsi come dita in fondo a ogni colpo, a cercare l'aria, e poi richiudersi mentre la bestia sale.",
		"segue con lo sguardo le piume più esterne: si allargano a ogni colpo verso il basso, e ognuna trova la sua piccola presa sull'aria.",
	},
	["ifo.journey.w20.wing.014"] = {
		"Da vicino, la bestia sa di pietra calda e di un gatto molto grosso. Non è sgradevole. Solo, ce n'è tanto.",
		"Leone dietro, aquila davanti, e tutto quanto profuma della pietra calda del posatoio. Esistono modi peggiori di viaggiare.",
	},
	["ifo.journey.w20.wing.015"] = {
		"riprende la presa sulla sella mentre la bestia trova il suo passo da viaggio, e le dita ritrovano gli stessi punti consumati di prima.",
		"si sposta sulla sella per trovare la posizione che dovrà durare tutto il volo, e la trova al terzo tentativo.",
	},
	["ifo.journey.w20.wing.016"] = {
		"Nelle sale la bestia era tutta prudenza. Qui fuori allunga ogni piuma insieme, e giurerei che si sta divertendo.",
		"Fuori dalla montagna il grifone diventa un altro animale: colpi lunghi, testa alta, più niente di cauto. Aspettava questo.",
		"Qualunque cosa provasse nelle sale, adesso la bestia sta meglio. Le ali si aprono finalmente in tutta la loro ampiezza, e il corpo intero si scioglie.",
	},
	["ifo.journey.w20.wing.017"] = {
		"Piano, piano. Adesso c'è spazio. Allungati.",
		"Ecco, fuori. Aprile pure, bestia: te lo sei meritato.",
	},
	["ifo.journey.w20.wing.018"] = {
		"I montanari brontolano che i Wildhammer di Aerie Peak considerano ogni grifone dell'Alleanza un prestito loro. Questo non sembra curarsi di chi sia.",
		"Un Wildhammer, dicono i vecchi soldati, storcerebbe il naso davanti a un grifone che conosce solo le rotte dei maestri dei grifoni. Questo le conosce benissimo.",
	},
	["ifo.journey.w20.wing.019"] = {
		"Finite le sale, il grifone scuote la testa come un nano che esce dalla taverna al freddo. Anche l'espressione è la stessa.",
		"Oltre il portone la bestia arruffa tutte le piume che ha e raddoppia di volume. Gli osti fanno più o meno lo stesso all'ora di chiusura.",
	},
	["ifo.journey.w20.wing.020"] = {
		"Brava bestia. Adesso piano. Tu e io, fino in fondo.",
		"Calma, bestia mia. Nessuna fretta, nessuno alle calcagna.",
		"Tu voli, io mi preoccupo. Mi pare giusto, no?",
	},
	["ifo.muse.w20.ale.001"] = {
		"si ferma davanti alla Stonefire Tavern, da cui il chiasso esce a ondate ogni volta che si apre la porta, e con il chiasso l'odore di malto e di arrosto.",
		"rallenta vicino alla Stonefire Tavern quanto basta perché la porta si apra due volte, e ne ricava due canzoni diverse, una per volta.",
	},
	["ifo.muse.w20.ale.002"] = {
		"I minatori fanno cadere a terra il primo dito di schiuma prima di bere. Per la pietra, mi ha detto uno. Per lo straccio, ha detto l'oste, che è quello che pulisce.",
		"Al bancone, un nano ha versato un pollice di schiuma sulle lastre prima del primo sorso. Un'offerta alla montagna, ha detto. Il sospiro dell'oste suggeriva un'altra parola.",
		"Ogni cliente fisso della Stonefire versa un po' di schiuma prima del primo sorso. Il pavimento accanto al bancone dev'essere la pietra meglio nutrita della città.",
	},
	["ifo.muse.w20.ale.003"] = {
		"I nani tengono il boccale per la pancia, non per il manico. Il manico, mi ha spiegato un birraio, è per chi ha intenzione di posarlo.",
		"Ho preso il boccale per il manico e tre nani hanno distolto lo sguardo per educazione. A quanto pare si tiene per il mezzo, come qualcosa che intendi tenerti.",
	},
	["ifo.muse.w20.ale.004"] = {
		"si scansa per lasciar passare un garzone di taverna che attraversa la sala con sei boccali pieni in due pugni, a portare l'ordinazione a una forgia troppo occupata per venirsela a prendere.",
		"segue con una certa ammirazione una cameriera di taverna che si fa strada tra la folla, un vassoio di boccali alzato sopra la testa, chiamando nomi senza mai guardare il vassoio.",
	},
	["ifo.muse.w20.ale.005"] = {
		"Una canzone da una porta, chissà quale: venti voci, poi diciannove, poi un solo baritono ostinato che tiene l'ultima nota molto dopo che tutti gli altri hanno rinunciato. Applausi, poi risate.",
		"Il canto dietro la porta della taverna si sfascia a metà, c'è un fracasso e un boato di risate, e poi, incredibilmente, riprende esattamente da dove si era fermato.",
	},
	["ifo.muse.w20.ale.006"] = {
		"Quando alla Stonefire si spilla un barile nuovo, mi ha detto un birraio, la sala tace per il mazzuolo, zitta come la Hall of Mysteries. Poi un colpo solo, e il chiasso torna il doppio di prima.",
		"Sono poche le cose per cui i nani fanno silenzio. Spillare un barile nuovo è una di quelle: un colpo netto di mazzuolo, un sibilo, e un'ovazione che fa tremare le mensole.",
	},
	["ifo.muse.w20.ale.007"] = {
		"I brindisi dei nani sono brevi. Perlopiù «Ah!» e poi si beve. Rispetto una cerimonia che sa cosa conta.",
		"Ho sentito una dozzina di brindisi in questa città e nessuno durava più del tempo di alzare un boccale. I discorsi lunghi, a quanto pare, sgasano.",
		"Quando brindano, i nani fanno cozzare i boccali così forte che ne ho visto spaccarsi uno. Nessuno si è fermato. Ne hanno spillato un altro e hanno brindato anche con quello, più forte.",
	},
	["ifo.muse.w20.ale.008"] = {
		"Alla Stonefire, mi ha raccontato un garzone, c'è una panca con dei nomi incisi sotto: minatori di una vena che gli è crollata addosso. Nessuno ci si siede. A nessuno verrebbe in mente di spostarla.",
		"Sotto una delle panche della taverna, si dice, sono incisi i nomi di una squadra di minatori che il profondo si è preso tutta in una volta. Alla chiusura la panca viene pulita come le altre, solo con più delicatezza.",
	},
	["ifo.muse.w20.ale.009"] = {
		"Sotto una montagna, mi ha detto un nano, non esiste un'ora troppo presto per la birra, visto che nessuno può dimostrare che ora sia. Non ho trovato falle nel ragionamento.",
		"Chiedi a un nano se è troppo presto per un boccale e lui ti chiederà come fai a saperlo. Con tutta questa roccia sopra, non ha torto.",
	},
	["ifo.muse.w20.ale.010"] = {
		"osserva un nano abbassare un boccale vuoto, pulirsi la schiuma dai baffi col dorso del guanto e lasciarsi sfuggire un sospiro così soddisfatto da sembrare un discorso.",
		"sente da una panca lì vicino il grugnito particolare che fa un nano in fondo a un buon boccale: corto, profondo, definitivo come una porta che si chiude.",
		"nota un nano posare un boccale vuoto, fissarci dentro a lungo come se aspettasse una spiegazione, e poi alzare un dito verso il bancone.",
	},
	["ifo.muse.w20.ale.011"] = {
		"Per quanto sia tardi, la Stonefire ruggisce ancora. In una città che l'ora non la può vedere, sono le taverne a decidere quando è notte, e hanno deciso di no.",
		"Fuori dev'essere notte fonda. Le forge si sono diradate, la taverna no, e le canzoni che escono dalla sua porta sono arrivate al punto in cui ognuno conosce una strofa diversa.",
	},
	["ifo.muse.w20.ale.012"] = {
		"Un boccale di scura dalla cantina della Stonefire, e tutta la montagna mi si sistema intorno. Ogni nano ha un sapore che vuol dire casa. Il mio è freddo, amaro, e sa appena di botte.",
		"Questa birra la riconoscerei a occhi chiusi come fatta sotto questa montagna. È l'acqua, dicono i birrai. È la pietra, dicono i minatori.",
	},
	["ifo.muse.w20.ale.013"] = {
		"La stout nanica è così densa che ci sta in piedi un cucchiaio. Lo so perché qualcuno ci ha provato, e il cucchiaio è ancora lì dritto.",
		"Questa birra ha più corpo di certe guardie. Non mi lamento. Sto masticando.",
		"Ho mangiato pane meno denso di questa stout. Mi sono appoggiato a muri meno densi di questa stout.",
	},
	["ifo.muse.w20.ale.014"] = {
		"Qui nel Commons la porta della Stonefire non è mai chiusa del tutto. Qualcuno l'ha bloccata con un cuneo a una spanna d'apertura, così la taverna sente la città e la città sente la taverna.",
		"La porta della Stonefire sta aperta su un cuneo consumato dagli stivali. Chiudila, mi ha avvertito un cliente fisso, e tutto il Commons penserà che sia morto qualcuno.",
	},
	["ifo.muse.w20.ale.015"] = {
		"nota passare un garzone di taverna con la scopa in spalla e l'aria di chi ha appena accompagnato fuori gli ultimi bevitori; dietro di lui una guardia del portone sta dicendo a qualcuno che fuori è spuntata l'alba.",
		"vede un oste capovolgere le ultime sedie sui tavoli e fermarsi sulla porta a chiedere a una guardia di passaggio com'è fuori; «l'alba», dice la guardia, e l'oste annuisce come se fosse la risposta che si aspettava.",
	},
	["ifo.muse.w20.anvil.001"] = {
		"La grande incudine ha una conca appena accennata nel piano, grande come un palmo a coppa. Nessun fabbro si sognerebbe di spianarla: quella conca è la firma della città.",
		"Guarda bene la grande incudine: il piano non è affatto dritto. Al centro cede, consumato da più martelli di quanti qualcuno si sia mai preso la briga di contare.",
	},
	["ifo.muse.w20.anvil.002"] = {
		"conta i colpi di un fabbro e del suo battimazza su una sola barra, la mazza grande e il martello piccolo che si danno il cambio come due vecchi amici che si finiscono le frasi.",
		"segue il martelletto di un mastro fabbro che picchietta sull'incudine tra un colpo e l'altro, indicando al battimazza dove far cadere la mazza senza bisogno di parlare.",
	},
	["ifo.muse.w20.anvil.003"] = {
		"Quel fabbro dà due colpetti all'incudine prima di ogni colpo vero. Gli ho domandato perché. Dice che all'incudine piace saperlo prima.",
		"Due colpetti leggeri sull'incudine, poi il colpo vero. Sempre. Il fabbro la chiama educazione. Educazione da incudine.",
	},
	["ifo.muse.w20.anvil.004"] = {
		"Altrove un'incudine poggia su un ceppo di quercia. A Ironforge poggia su un blocco della montagna, e il suono di ogni colpo scende nella roccia e ci resta.",
		"Niente ceppi di legno sotto queste incudini: ognuna posa su pietra squadrata, piantata a fondo. Un fabbro mi ha detto che il colpo se lo prende la montagna, così il braccio non deve.",
	},
	["ifo.muse.w20.anvil.005"] = {
		"Attorno alla grande incudine il grado si misura in passi. Gli apprendisti stanno al margine, i lavoranti più vicino, e il mastro sta dove il caldo è peggiore, come fosse un privilegio.",
		"Dalla balaustra l'ordine della forgia si legge come una mappa: i più giovani sul bordo, a portare; i più esperti più dentro; e al centro, nel caldo peggiore, chi se l'è guadagnato.",
	},
	["ifo.muse.w20.anvil.006"] = {
		"osserva una fabbra che pulisce il piano dell'incudine con una passata rapida di un tampone di cuoio tra una calda e l'altra, perché nemmeno una scaglia finisca martellata nel pezzo successivo.",
		"nota che tra una calda e l'altra ogni fabbro libera il piano dell'incudine con uno straccio o col palmo nudo, come un cuoco pulisce il tagliere prima del taglio successivo.",
	},
	["ifo.muse.w20.anvil.007"] = {
		"Spostare un'incudine, a quanto pare, richiede sei nani, due sbarre di ferro, uno gnomo con un disegno che nessuno legge, e una gran quantità di consigli da tutti gli altri.",
		"Qualcuno sta spostando un'incudine sul pavimento della forgia. Progressi finora: un palmo, tre litigi, e la sentenza che il disegno dello gnomo era al contrario.",
		"Mai offrirsi di aiutare a spostare un'incudine. L'ho fatto. Tengo una leva da un pezzo, e nessuno mi ha ancora detto da che parte si va.",
	},
	["ifo.muse.w20.anvil.008"] = {
		"Qui alla Great Forge tutti si appoggiano a tutto: balaustre, pilastri, gli uni agli altri. Alla grande incudine nessuno si appoggia. Né le guardie, né gli ubriachi, nemmeno gli gnomi.",
		"Qui la gente siede sui gradini, posa lo zaino sulle balaustre, mette i gomiti dovunque ci sia pietra. Solo la grande incudine ha intorno un anello di pavimento vuoto, e tutti lo rispettano.",
	},
	["ifo.muse.w20.anvil.009"] = {
		"Scusa, come? Ho ancora le orecchie piene della forgia. Mi sembra che tutto venga detto dalla sala accanto.",
		"Troppo tempo vicino alle incudini. Vedo la tua bocca muoversi. Annuisco e spero per il meglio.",
		"Dammi un momento. La forgia mi suona ancora in testa, e la tua voce arriva come da dietro una porta.",
	},
	["ifo.muse.w20.anvil.010"] = {
		"Un'incudine ai margini della forgia resta ferma, con una copertura di cuoio legata sul piano e un martello appoggiato sopra. Il suo fabbro è andato a sud, a Blackrock, mi ha detto un apprendista, e la copertura resta finché qualcuno non dirà altrimenti.",
		"C'è un'incudine che nessuno usa, coperta di cuoio unto, con un martello posato di traverso come una mano su una spalla. Nessuno mi ha spiegato niente. I fabbri da quel lato lavorano solo un po' più piano.",
	},
	["ifo.muse.w20.anvil.011"] = {
		"Un mastro della forgia mette alla prova il lavoro di un apprendista con una lima, passandola una volta sul filo. Se morde, il pezzo torna nel fuoco. Se scivola, all'apprendista è concesso un sorriso piccolo e prudente.",
		"All'incudine il giudice è la lima. Un colpo solo sul filo temprato: se gratta e morde si ricomincia, se scivola asciutta il lavoro è finito. Nessun discorso, in un caso o nell'altro.",
	},
	["ifo.muse.w20.anvil.012"] = {
		"nota uno gnomo al lavoro su un'incudine da orafo non più grande di una pagnotta, incastrata tra due incudini naniche grandi come carrelli da miniera, che picchietta senza il minimo imbarazzo.",
		"indugia accanto a una gnoma davanti a un'incudine minuscola tra quelle enormi, il martelletto che ticchetta come un orologio in mezzo al fracasso dei vicini.",
	},
	["ifo.muse.w20.anvil.013"] = {
		"Chiudessi gli occhi in questa città, le incudini mi riporterebbero comunque a casa: quella profonda, quella acuta, quella con una crepa nella voce. Ogni nano le impara senza accorgersene.",
		"Un nano distingue le incudini come gli altri distinguono le voci: quella cupa, quella chiara, quella con la crepa. È la prima mappa che impariamo tutti.",
	},
	["ifo.muse.w20.anvil.014"] = {
		"Guarda quell'incudine. Ci potresti battere un ponte levatoio e avanzerebbe posto per il pranzo.",
		"Quell'incudine è più grande di certe stanze in cui ho dormito. Più piccola dell'opinione che ne ha il fabbro, però.",
		"Ho visto altari trattati con meno rispetto di quell'incudine. E forse con meno motivo.",
	},
	["ifo.muse.w20.bellows.001"] = {
		"nota che il mantice della forgia più vicina va a pedale: il fabbro lo aziona a colpi regolari senza guardare in basso, mentre tutte e due le mani restano occupate con le tenaglie.",
		"segue il su e giù dello stivale di un fabbro sul pedale di un mantice, lento e uguale, le braci che avvampano in risposta ogni volta che scende.",
	},
	["ifo.muse.w20.bellows.002"] = {
		"Il mantice di quella forgia è più toppa che cuoio. Qualcuno ha cucito un'etichetta gnomesca in una cucitura, e nessuno ha il cuore di toglierla.",
		"Toppe su toppe sul grande mantice, ognuna di una pelle di colore diverso. Ci si potrebbe leggere la storia della forgia, a sapere quale falla è venuta prima.",
	},
	["ifo.muse.w20.bellows.003"] = {
		"I fabbri non stanno mai di fronte al fuoco. Si mettono di tre quarti, la spalla avanti, come davanti a uno sconosciuto di cui non ti fidi ancora.",
		"Guarda un fabbro abbastanza a lungo e te ne accorgi: sempre di fianco alle braci, mai di petto. Anni di caldo insegnano al corpo il suo buon senso.",
		"Nessun fabbro qui affronta il fuoco a viso aperto. Mezzo giro, il mento basso, la spalla che incassa per prima. Sembra timidezza, finché non stai dove stanno loro.",
	},
	["ifo.muse.w20.bellows.004"] = {
		"Tra quei fabbri non c'è un sopracciglio intero. Comincio a pensare che sia un distintivo di grado.",
		"Conta le sopracciglia alla forgia. Dai. Io ne ho contate tre, e due erano dello stesso gnomo.",
	},
	["ifo.muse.w20.bellows.005"] = {
		"Il caldo della forgia ha un confine che si trova con la faccia. Un passo avanti e morde; un passo indietro ed è solo una stanza calda.",
		"Sul pavimento vicino alla forgia c'è una linea che nessuno ha dipinto. La superi e il caldo morde; torni indietro e la città si fa mite.",
		"Ho trovato il punto esatto in cui il caldo della forgia smette di essere piacevole. È circa uno stivale più avanti di dove sono adesso.",
	},
	["ifo.muse.w20.bellows.006"] = {
		"nota un fabbro che tiene per un attimo il dorso della mano vicino alle braci, giudicando il fuoco dal morso sulle nocche anziché guardandolo.",
		"vede un vecchio fonditore passare il palmo davanti alla bocca di un forno, rapido come un saluto, e annuire: il calore è giusto, secondo qualunque misura abiti quella mano.",
	},
	["ifo.muse.w20.bellows.007"] = {
		"Sotto il martellare c'è un suono più lento, i grandi mantici che tirano e spingono, regolari come una marea. Smetti di sentirlo. Poi saltano un colpo, e mezza forgia alza la testa.",
		"I grandi mantici tengono un passo più vecchio di chiunque alla forgia. Nessuno ci bada, come nessuno bada ai propri piedi, finché non vacillano e tutte le teste si girano.",
	},
	["ifo.muse.w20.bellows.008"] = {
		"Poco tempo alla balaustra della forgia e ho gli occhi secchi come cuoio vecchio. I fabbri sbattono le palpebre una volta all'ora, sì e no. Non so come facciano.",
		"Ho la faccia tirata dal caldo, come se l'avessi lasciata troppo vicino a una stufa. I fabbri lavorano un braccio più in là per ore e lo chiamano un turno tranquillo.",
	},
	["ifo.muse.w20.bellows.009"] = {
		"Fa caldo qui? Un fabbro laggiù l'ha appena definito «gradevole», e si è tirato giù le maniche.",
		"Ho protestato per il caldo. Il fabbro accanto alle braci mi ha chiesto: quale? A quanto pare ce n'è più d'uno.",
	},
	["ifo.muse.w20.bellows.010"] = {
		"studia il grembiule di cuoio di una fabbra che passa: bruciacchiato, butterato di forellini, e lucido dove lo sfrega il bordo dell'incudine.",
		"dà un'occhiata al grembiule di un lavorante di passaggio, una mappa di piccole bruciature nere con un'unica chiazza pulita al centro, dove il pezzo si appoggia al fianco.",
	},
	["ifo.muse.w20.bellows.011"] = {
		"A Gnomeregan nessuno azionava un mantice a mano: lo faceva una macchina, mentre tu facevi qualcosa di intelligente. Qui i nani pompano a mano apposta. Ho proposto dei pistoni due volte. Ho smesso di proporli. Più o meno.",
		"Ogni gnomo alla Great Forge ha lo stesso prurito: montare un motorino su quei mantici. I nani ce lo leggono negli occhi, e ci si piazzano davanti.",
	},
	["ifo.muse.w20.bellows.012"] = {
		"Un minatore appena entrato dal portone sta vicino alle braci quanto i fabbri glielo permettono, la neve che gli scivola dalle spalle a grumi bagnati e sfrigola dove cade.",
		"Qualcuno è appena arrivato con la neve ancora incrostata sugli stivali ed è andato dritto alla forgia. Il tempo di brontolare un saluto, ed è già una pozza, poi vapore.",
	},
	["ifo.muse.w20.bellows.013"] = {
		"Ogni volta che quel grande mantice sospira mi giro: mi aspetto di trovarci qualcuno deluso da me.",
		"Quel mantice sospira esattamente come un oste all'ora di chiusura.",
		"Quel mantice laggiù mi sospira addosso da un'ora. Non ho fatto niente. Credo.",
	},
	["ifo.muse.w20.bidder.001"] = {
		"Alla casa d'aste di Ironforge il minerale di rame si vende per niente e una buona pezza di lana costa una fortuna. Una città piena di minatori, a corto di sarti.",
		"Il minerale costa poco a Ironforge: mezza montagna lo sta scavando. Sono lana e seta a far storcere la bocca a chi offre.",
		"Vendi ferro a Ironforge e ti daranno una pacca sulla spalla. Vendi un buon rocchetto di seta e ti ritroverai una folla intorno.",
	},
	["ifo.muse.w20.bidder.002"] = {
		"Ho messo all'asta i miei vecchi guanti a un prezzo onesto. Tre nani si sono fermati a dirmelo. Nessuno li ha comprati.",
		"Tutti d'accordo che il mio prezzo è giusto. Peccato che le loro borse non ascoltino.",
	},
	["ifo.muse.w20.bidder.003"] = {
		"La casa d'aste sa di tutto quello che vende, tutto insieme: cuoio conciato, olio da lampada, zolfo dal minerale di qualcuno e, appena appena, un formaggio che andava venduto prima.",
		"Vicino ai banditori la merce si presenta da sé, al naso: pelle conciata, lana umida, un sacco di erbe secche e qualcosa di gnomesco che sa di rame caldo.",
	},
	["ifo.muse.w20.bidder.004"] = {
		"osserva un banditore scucire l'angolo di un pacco, annusare la stoffa che c'è dentro, aggrottare la fronte e scrivere un numero più piccolo a margine della lista.",
		"nota un banditore soppesare un sacco di minerale con una mano, poi con l'altra, come se la seconda potesse spuntare un prezzo migliore.",
	},
	["ifo.muse.w20.bidder.005"] = {
		"Un minatore continua a fare offerte sul minerale di suo cugino perché il prezzo non cali, e il cugino fa lo stesso col suo. Tutto il Commons lo sa. Loro due credono ancora che sia un segreto.",
		"Due fratelli nani si tengono su i prezzi a vicenda all'asta, offerta dopo offerta, e al banco fanno finta di non conoscersi. Tutti gli altri fingono con loro. È una truffa molto educata.",
	},
	["ifo.muse.w20.bidder.006"] = {
		"Il prezzo d'acquisto immediato di quel martello vale più di tutto quello che ho addosso. Me ne starò qui ad ammirarlo. Ammirare non costa niente.",
		"Non posso permettermi niente di questa lista, e l'ho letta due volte. Il libro più bello di Ironforge.",
	},
	["ifo.muse.w20.bidder.007"] = {
		"La mia vecchia cintura si è venduta in meno di un'ora. E adesso non smetto di chiedermi cosa sapesse il compratore che io non sapevo.",
		"Venduto subito vuol dire troppo economico. Mai venduto, troppo caro. Il terzo tipo di prezzo non l'ho ancora trovato.",
	},
	["ifo.muse.w20.bidder.008"] = {
		"si toglie di mezzo davanti a uno gnomo che trascina un sacco tintinnante verso la casa d'aste annunciando, a nessuno in particolare, che vale una fortuna.",
		"fa spazio a una gnoma che trascina verso i banditori un sacco grande il doppio di lei, con dentro un rumore da cassetto di cucchiai.",
	},
	["ifo.muse.w20.bidder.009"] = {
		"Il pesce di Loch Modan, quando arriva alla casa d'aste, costa il doppio. Il pesce non è migliorato durante il viaggio: è la strada che gli ha chiesto l'affitto.",
		"Tutto costa di più a Ironforge, una volta salito dal lago o sceso dal tram. Nessuno se ne lamenta granché. Pagare la distanza è il prezzo di vivere dentro una montagna.",
	},
	["ifo.muse.w20.bidder.010"] = {
		"I banditori di qui giudicano la merce con tre parole, mi ha detto un'impiegata: «solido», «discreto» e «peccato». Le ho chiesto dei miei stivali migliori. Ha detto «discreto» con molta gentilezza, il che era peggio.",
		"Chiedi a un banditore di Ironforge quanto vale una cosa e prima di qualunque numero avrai una parola. «Solido» è un gran complimento. «Onesto» vuol dire vecchio. «Interessante» vuol dire gnomesco.",
	},
	["ifo.muse.w20.bidder.011"] = {
		"scorge una gnoma che si allontana di corsa dai banditori con un cappello appena vinto, se lo mette, ci sparisce dentro fino al mento e prosegue come se l'avesse fatto apposta.",
		"vede una gnoma provarsi tutta fiera un elmo appena vinto all'asta; le si posa sulle spalle, e lei lo sistema lì senza dire una parola.",
	},
	["ifo.muse.w20.bidder.012"] = {
		"Qualcuno vende un equipaggiamento intero in un colpo solo: stivali, cintura, zaino, un elmo ammaccato. O ha fatto fortuna o ne ha avuto abbastanza della strada. Il banditore non chiede, e io nemmeno.",
		"Un corredo da viaggio completo sulla lista delle aste, ogni pezzo dello stesso proprietario. Sembra un addio. Gli impiegati lo mettono in lista un oggetto dopo l'altro, come per addolcirlo.",
	},
	["ifo.muse.w20.bidder.013"] = {
		"A quest'ora tarda alla casa d'aste sono rimasti un impiegato che sbadiglia e un nano che offre sulla stessa lanterna dal cambio turno della forgia. Nessuno dei due cederà per primo.",
		"Per quanto sia tardi, qui un impiegato siede ancora al banco delle aste, il mento in mano, a registrare una vendita tra uno sbadiglio e l'altro. A Ironforge la notte non chiude niente: dirada soltanto.",
	},
	["ifo.muse.w20.braid.001"] = {
		"sorprende un bambino umano che fissa a bocca aperta la barba di un nano, e il nano che, serissimo, si china per lasciargli toccare la punta di una treccia.",
		"sorride quando un piccolo visitatore umano chiede a un nano, molto educatamente, se la barba gli pesa; il nano ci riflette con grande serietà e risponde: «Solo quando è bagnata.»",
	},
	["ifo.muse.w20.braid.002"] = {
		"Ogni fabbro vicino alla forgia ha la barba infilata nel grembiule o annodata sotto il mento. Quelli che non lo fanno, mi dicono, se ne dimenticano una volta sola.",
		"La barba di un fabbro si intreccia stretta e si fissa all'indietro prima che esca il martello. Capelli sciolti e ferro rovente, mi ha detto un nano, si sono già incontrati, e a perdere sono sempre i capelli.",
		"Una fabbra porta le trecce avvolte a corona e fermate con quelli che somigliano sospettosamente a chiodi da ferro di cavallo. Pratico, ha commentato un nano di passaggio, e anche molto bello.",
	},
	["ifo.muse.w20.braid.003"] = {
		"passa un po' di tempo a guardare un nano su una panca che disfa e rifà la stessa treccia della barba quattro volte, fulminando con lo sguardo un piatto lucidato che usa come specchio.",
		"nota una nana che si toglie le briciole dalle trecce con un pettinino d'osso, e poi le controlla una a una coi polpastrelli come un fabbro controlla i rivetti.",
		"si sofferma accanto a un nano che si unge la barba da una scatolina di latta con la cura che un altro riserverebbe a un fucile, ciocca dopo ciocca.",
	},
	["ifo.muse.w20.braid.004"] = {
		"I baffi di quello gnomo sono incerati in due spirali perfette. Chiederei come fa, ma temo che la risposta comprenda un attrezzo che non so pronunciare.",
		"Ho visto barbe naniche in trecce, nodi e anelli, ma il premio va a uno gnomo coi baffi arricciati all'insù alle due estremità come un paio di molle.",
	},
	["ifo.muse.w20.braid.005"] = {
		"Ogni fermaglio nelle trecce di un nano significa qualcosa, mi ha detto un gioielliere, e cosa significhi non riguarda nessuno tranne il nano. Ho smesso di chiedere e ho cominciato a indovinare.",
		"Certi nani portano un solo fermaglio nella barba, altri una dozzina. Chiedi cosa vogliono dire e ti becchi uno sguardo che chiude l'argomento come un coperchio.",
	},
	["ifo.muse.w20.braid.006"] = {
		"nasconde un sorriso davanti a un giovane nano con un'unica treccina sottile in una barba appena accennata, che continua a toccarla per assicurarsi che ci sia ancora.",
		"vede tre nani adulti ammirare insieme la prima vera treccia di un ragazzo, tutti brusca approvazione e pacche sulla spalla, mentre il ragazzo si sforza moltissimo di far finta che non sia niente.",
	},
	["ifo.muse.w20.braid.007"] = {
		"Un'elfa della notte con i capelli fino alla vita passa davanti a un tavolo di nani, e loro li guardano come guarderebbero la barba di un rivale: rispetto, invidia, e una misurazione silenziosa.",
		"I nani non fissano le orecchie degli elfi della notte. Fissano i capelli, e annuiscono, come se la lunghezza fosse un merito. In questa città, forse, lo è.",
	},
	["ifo.muse.w20.braid.008"] = {
		"Distinguo una treccia da minatore da una da fabbro a venti passi, e una di città da una di valle a quaranta. I forestieri credono che siano solo capelli. Lasciamoglielo credere.",
		"Tra nani le trecce dicono più dei nomi. Quella viene da una famiglia di minatori, quella è stata in guerra, quella è solo vanità. Ci leggiamo a vicenda passando, senza una parola.",
	},
	["ifo.muse.w20.braid.009"] = {
		"Un nano si è appena chiuso la barba nella porta di una bottega e ha fatto alla porta una lavata di capo che ha sentito tutta la sala. Credo che la porta abbia imparato la lezione.",
		"A qualcuno è rimasta incastrata la barba in una porta che si chiudeva, e il proprietario ha imprecato contro il cardine per un minuto buono. Non contro chi l'aveva chiusa. Contro il cardine.",
		"Barba, ti presento la porta. Porta, ti presento il linguaggio peggiore che abbia sentito in tutta la settimana.",
	},
	["ifo.muse.w20.braid.010"] = {
		"Una nana intreccia i capelli alla figlia su un gradino, una forcina tra i denti, mentre la bambina si dimena e guarda i carrelli. Certe cose sono uguali sotto qualsiasi tetto.",
		"Su un gradino accanto al parapetto una madre passa tre ciocche sopra e sotto, svelta come chi lavora a maglia, e le annoda senza guardare. La bambina è già sparita prima che l'ultimo nodo si assesti.",
	},
	["ifo.muse.w20.braid.011"] = {
		"In fondo al bancone siede un nano con la barba tagliata corta, quasi al mento. Una guardia mi ha spiegato a bassa voce cosa vuol dire qui: qualcuno perduto. Nessuno chiede chi. Gli tengono solo pieno il boccale.",
		"Fra tante barbe lunghe, una rasata corta. Lutto, ha mormorato un fabbro quando ha visto dove guardavo, e con garbo mi ha fatto girare per il gomito perché smettessi.",
	},
	["ifo.muse.w20.braid.012"] = {
		"Ho fatto un complimento alle trecce di un nano e ho avuto un boccale gratis. L'ho fatto a quelle del nano dopo e ho avuto un silenzio lunghissimo. C'è una regola qui che non ho ancora capito.",
		"Loda la barba di un nano e hai un amico per la vita. Lodala troppo e hai lasciato intendere che ne avesse bisogno.",
		"Promemoria: in questa città «bella barba» è un complimento, «barba grande» è una sfida, e «barba interessante» chiude la conversazione.",
	},
	["ifo.muse.w20.brew.001"] = {
		"I garzoni giurano che la cantina della Stonefire scende più in basso del Vault of Ironforge. I banchieri non l'hanno mai smentito, il che in questa città vale come una confessione.",
		"Secondo un birraio, la stanza più fredda di Ironforge non è affatto vicino al portone. È una cantina piena di botti, e la chiave non la dà a nessuno.",
		"Nella cantina della Stonefire non scende nessuno a parte i birrai. Un garzone mi ha detto che ci lavora da anni e ne ha visto solo il primo gradino.",
	},
	["ifo.muse.w20.brew.002"] = {
		"distingue, fra tutte le incudini, una nota diversa: un bottaio che batte un cerchio di ferro giù lungo una botte, colpi sordi e rotondi come di tamburo.",
		"indugia accanto a un bottaio che sistema le doghe in un cerchio, battendole una a una col mazzuolo finché la botte non sta in piedi, d'un tratto intera, da un mucchio di assi.",
	},
	["ifo.muse.w20.brew.003"] = {
		"Le trebbie dei birrai finiscono in sacchi a sfamare gli arieti, mi ha detto uno stalliere. E gli arieti, mi dicono, hanno le loro preferenze sul birraio.",
		"Qualcuno sta portando fuori dal retro di un birraio un sacco d'orzo caldo e bagnato. Ha l'odore di un pane che sta pensando di diventare qualcosa di meglio.",
	},
	["ifo.muse.w20.brew.004"] = {
		"Due birrai discutono di lievito da quando sono qui. Uno dei due ha appena chiamato la madre dell'altro «lievito madre».",
		"Ho chiesto a un birraio cosa fa una buona stout. Quaranta minuti dopo era arrivato all'acqua.",
		"Ogni birraio di Ironforge ha un segreto. Tutti gli altri birrai di Ironforge lo conoscono e lo ritengono sbagliato.",
	},
	["ifo.muse.w20.brew.005"] = {
		"Uno gnomo ha costruito una macchina che fa la birra in un quarto del tempo. I nani l'hanno assaggiata, hanno detto che era «discreta» e non l'hanno più toccata. «Discreta» è la parola più crudele che un nano conosca.",
		"In un angolo della città un motore gnomesco per la birra sta sotto un telo. Funziona, dicono. È proprio questo che i nani non gli perdonano.",
	},
	["ifo.muse.w20.brew.006"] = {
		"indugia a guardare un birraio che assaggia da un lungo mestolo di legno, occhi chiusi, mentre tre apprendisti aspettano in silenzio quello che deciderà la sua faccia.",
		"vede un birraio rigirarsi in bocca un sorso per un lungo momento serio, poi annuire una volta; alle sue spalle un apprendista si lascia andare a un sorriso che tratteneva da quando il mestolo era entrato nella botte.",
	},
	["ifo.muse.w20.brew.007"] = {
		"Un birraio mi ha detto che quando i nani scavano una sala nuova, la cantina viene prima della forgia. L'ha detto come si recita una legge. Può anche darsi che abbia ragione.",
		"Chiedi ai birrai e ti diranno che la stanza più antica di ogni rocca nanica è la cantina. Chiedi ai fabbri e avrai un'altra risposta e una discussione più lunga.",
		"I birrai hanno un detto, mi ha raccontato uno di loro: una sala senza cantina è solo una galleria con delle pretese. Sospetto che i muratori abbiano un detto sui birrai.",
	},
	["ifo.muse.w20.brew.008"] = {
		"Quel nano non è coperto di fuliggine. È polvere di malto. Cammina piano perché tutti sentano da dove viene.",
		"I birrai li distingui dai fabbri a colpo d'occhio. Stesse braccia, stesso cipiglio, ma i birrai sono infarinati di chiaro invece che di nero.",
	},
	["ifo.muse.w20.brew.009"] = {
		"Un birraio passa in rassegna un carico d'orzo sacco per sacco, ficcando il naso in ognuno. Due tornano sul carro. Il carrettiere non discute: si vede che c'è già passato.",
		"L'orzo arriva col carro, e i birrai lo accolgono come doganieri: una mano in ogni sacco e un'annusata prima di pagare qualsiasi cosa.",
	},
	["ifo.muse.w20.brew.010"] = {
		"Un birraio tiene su una mensola alta una botticella segnata con lo stemma di un clan che nessuno usa più. Da Grim Batol, dice, prima che andasse perduta. Non verrà mai spillata. Non è da bere.",
		"Nel retrobottega di un birraio c'è un barilotto sigillato che lui giura venga da Grim Batol, da prima che il buio se la prendesse. Lo spolvera e non lo apre mai. Certe cose si conservano, non si bevono.",
	},
	["ifo.muse.w20.brew.011"] = {
		"sente per caso una guardia del portone dire a un birraio che una tempesta ha chiuso la strada là fuori; il birraio annuisce soltanto e manda un apprendista giù a prendere altre due botti.",
		"nota che la taverna si riempie più in fretta del solito e coglie il motivo al volo: dal portone dicono che una tempesta urla giù per la valle, e nessuno uscirà tanto presto.",
	},
	["ifo.muse.w20.candle.001"] = {
		"Una città illuminata da fiumi di ferro fuso, e i sacerdoti insistono lo stesso con le candele. Ne ho chiesto il motivo a uno. La forgia illumina la stanza, mi ha detto, e la candela la pagina, come se fosse una differenza che conosce qualunque sciocco.",
		"Con tutto il fuoco che ha questa montagna, il Mystic Ward compra candele a casse. Chissà dove, a Ironforge, c'è un candelaio che non ha mai avuto una settimana fiacca.",
	},
	["ifo.muse.w20.candle.002"] = {
		"raddrizza una candela che pende sul suo ripiano, e solo dopo si guarda intorno per capire di chi fosse.",
		"rimette dritta con la punta di un dito una candela storta, badando alla cera, e prosegue come se niente fosse.",
		"salva una candela che stava per cadere da una nicchia, e per il disturbo si ritrova il pollice pieno di cera morbida.",
	},
	["ifo.muse.w20.candle.003"] = {
		"Lungo una parete del Mystic Ward qualcuno tiene accesa una fila di candele tozze, una per ogni nome. Un sacerdote mi ha detto che sono per i minatori che il profondo si è preso. Non mi ha detto quante file c'erano una volta.",
		"I minatori accendono candele corte nel Mystic Ward per le squadre che non sono mai risalite, dice un accolito, e le lasciano consumare fino in fondo. Nessuno le spunta. Nessuno oserebbe.",
		"Per ogni minatore che il profondo si è tenuto, nel Mystic Ward arde una candela, o così dicono gli accoliti. Una volta ho cominciato a contare una fila e mi sono {g:fermato|fermata} a metà.",
	},
	["ifo.muse.w20.candle.004"] = {
		"nota che qui nel Mystic Ward le fiamme delle candele pendono tutte dalla stessa parte, verso la porta, come se tendessero l'orecchio alla forgia.",
		"guarda ogni candela della sala inchinarsi insieme quando da qualche parte si apre una porta, e poi raddrizzarsi una a una, mentre l'aria si calma.",
		"vede le candele, qui, piegarsi e riprendersi ogni volta che in sala si chiude una porta pesante, come una fila di ascoltatori che annuisce.",
	},
	["ifo.muse.w20.candle.005"] = {
		"Gli accoliti del Mystic Ward si riconoscono dalle maniche: colature di cera su ogni polsino, a strati, come gli anelli di un ceppo.",
		"Ogni apprendista sacerdote che incrocio ha la cera sulle nocche e l'inchiostro sul pollice. Dev'essere la divisa.",
		"Da quanta cera c'è sugli stivali di un accolito capisci da quanto tempo studia. I più anziani ce l'hanno fino alla caviglia.",
	},
	["ifo.muse.w20.candle.006"] = {
		"Candele, in una città fatta di fuoco. I nani non si fidano di una luce che non si sono fatti da soli.",
		"Chi porta candele a Ironforge? I sacerdoti, a quanto pare. Tutti quanti, fino all'ultimo.",
	},
	["ifo.muse.w20.candle.007"] = {
		"Casse di bende e unguenti lasciano il Mystic Ward per ogni fronte che l'Alleanza tiene. Chissà dove, un soldato che non conoscerò mai verrà rattoppato con lino nanico, e si lamenterà che pizzica.",
		"I guaritori di Ironforge mandano i loro unguenti ovunque l'Alleanza sanguini. È il lavoro di guerra più silenzioso che ci sia, e non se ne spreca nulla.",
	},
	["ifo.muse.w20.candle.008"] = {
		"trova il Mystic Ward, a quest'ora tarda, ridotto a poche candele e a un sacerdote stanco, che fa un cenno senza alzare gli occhi.",
		"passa accanto alle panche dei guaritori nelle ore piccole, dove una sola candela arde accanto a chi dorme e una figura in veste veglia.",
	},
	["ifo.muse.w20.candle.009"] = {
		"Ho visto un sacerdote rimettere a posto le dita schiacciate di un minatore al lume di candela, parlando per tutto il tempo del prezzo della birra. Il minatore non si è guardato la mano neanche una volta. Il trucco era tutto lì.",
		"La guaritrice più brava che ho visto a Ironforge non brillava e non cantilenava. Ha chiesto a un fabbro di sua figlia, e mentre lui rispondeva gli ha rimesso a posto la spalla.",
		"Curare, a Ironforge, somiglia molto a forgiare: una presa salda, uno strattone deciso, un burbero «ecco fatto», e il lavoro è finito prima che il paziente abbia smesso di fare smorfie.",
	},
	["ifo.muse.w20.candle.010"] = {
		"I pellegrini entrano dal portone con la neve incrostata sul cappuccio e vanno dritti alle candele del Mystic Ward, a restarci finché non si è sciolta goccia a goccia.",
		"Dal portone dicono che sulle pendici nevica forte. Nel Mystic Ward lo si capisce: i guaritori hanno tirato fuori coperte in più, e le prime dita congelate sono già in attesa.",
	},
	["ifo.muse.w20.candle.011"] = {
		"Un accolito ha attraversato tutta la città con una lanterna coperta, mi dicono, per accendere le candele del Mystic Ward direttamente alla Great Forge. Fuoco della forgia, luce per la pagina: ai nani piace che le cose abbiano una discendenza.",
		"La prima candela di ogni nuova fila si accende alla Great Forge, dicono gli accoliti, e la si porta attraverso la città in una lanterna. Nessuno sa dirmi da quando, ed è proprio così che piacciono le usanze ai nani.",
	},
	["ifo.muse.w20.candle.012"] = {
		"Cera sullo stivale, cera sulla manica. E sono solo {g:passato|passata} davanti al Mystic Ward.",
		"Come si fa a uscire dal Mystic Ward senza cera addosso? Non ho toccato niente.",
		"Ogni visita al Mystic Ward mi costa una manica pulita. Qualcuno dovrebbe farla pagare.",
	},
	["ifo.muse.w20.cavern.001"] = {
		"La guardia di Ironforge pattuglia la Forlorn Cavern come ovunque, solo più piano, e lì non sembra mai vedere granché. Un accordo, sospetto, più vecchio di tutti loro.",
		"Tra le guardie e la Forlorn Cavern c'è un'intesa. Nessuno l'ha messa per iscritto, nessuno l'ammetterà, e tutti la rispettano.",
		"Le guardie guardano dentro la Forlorn Cavern come si guarda nella finestra di un vicino: un attimo, e poi con ostentazione da un'altra parte.",
	},
	["ifo.muse.w20.cavern.002"] = {
		"nota che qui nella Forlorn Cavern le lanterne pendono basse e distanti, e il calore della forgia si arrende pochi passi dopo l'ingresso.",
		"passa una mano lungo una parete della caverna e la trova fresca e appena umida, l'unica pietra della città che la forgia non ha mai scaldato.",
	},
	["ifo.muse.w20.cavern.003"] = {
		"Nella Forlorn Cavern tutti si chiamano «amico», e nessuno lo è.",
		"Chiedi un nome nella Forlorn Cavern e te ne daranno uno. Mai lo stesso due volte, e mai, sospetto, quello vero.",
		"La Forlorn Cavern ha più nomi di battesimo che facce. Lì ho incontrato lo stesso tizio tre volte, ed era tre persone diverse.",
	},
	["ifo.muse.w20.cavern.004"] = {
		"Bel posto, la Forlorn Cavern. Nessuno fissa, nessuno chiede, e nessuno c'è mai stato.",
		"La Forlorn Cavern: dove Ironforge tiene quello di cui non parla. Occhio alla borsa.",
	},
	["ifo.muse.w20.cavern.005"] = {
		"Un vecchio minatore giura che la Forlorn Cavern era uno scavo andato male: una vena che prometteva argento e non diede che echi, abbandonata da tutti tranne da chi ama un posto che nessuno vuole.",
		"Un minatore dello Stonefire mi ha spiegato da dove viene quel nome, Forlorn, abbandonata: uno scavo che non trovò minerale, lasciato a metà e occupato da gente che preferisce una stanza che nessun altro desidera.",
	},
	["ifo.muse.w20.cavern.006"] = {
		"Strano a dirsi, qui nella Forlorn Cavern mi riposo meglio che vicino alla forgia. Nessuno, qui, vuole da me qualcosa che chiederebbe ad alta voce.",
		"Il silenzio di questa caverna non è quello del Mystic Ward. Qui nessuno studia. Scelgono soltanto, istante per istante, cosa non dire.",
		"In questa caverna nessuno mi guarda due volte, e la cosa mi fa piacere. Una stanza in penombra dove ognuno bada ai fatti suoi è un riposo a modo suo.",
	},
	["ifo.muse.w20.cavern.007"] = {
		"si imbatte in una partita a dadi in un angolo della caverna, giocata su un mantello steso perché i dadi cadano senza rumore e solo le facce dei giocatori dicano chi vince.",
		"nota due figure che giocano a dadi su un mantello piegato, i lanci senza rumore, le perdite pagate senza una parola.",
	},
	["ifo.muse.w20.cavern.008"] = {
		"Di tutti gli angoli della città dei nani, la Forlorn Cavern è l'unico dove un cappuccio non attira sguardi. È l'unico motivo per cui riesco a restare immobile abbastanza da pensare.",
		"Nel cuore della montagna del nemico, l'angolo buio dove si radunano i ladri è l'unico posto dove le mie spalle si abbassano di un dito. Lì nessuno chiede da che parte stia uno sconosciuto. Sarebbe scortese.",
	},
	["ifo.muse.w20.cavern.009"] = {
		"Nella Forlorn Cavern, chissà dove, l'acqua gocciola lenta e regolare. Un nano appoggiato al muro mi ha detto che la conta da anni e non ha mai perso il segno.",
		"Quel gocciolio lento nella caverna ha i suoi affezionati. Un vecchio nano sostiene di capire l'ora da lì, il che è più di quanto chiunque riesca a fare con la forgia.",
	},
	["ifo.muse.w20.cavern.010"] = {
		"si volta verso un rumore nella caverna e trova solo una nicchia vuota, e un debole odore d'olio di lampada dove un attimo fa c'era qualcuno.",
		"lancia un'occhiata a una nicchia buia della Forlorn Cavern che un momento fa ospitava qualcuno e adesso non ospita nessuno, anche se nessuno ne è uscito.",
	},
	["ifo.muse.w20.cavern.011"] = {
		"Le guardie al portone dicono che fuori è buio da un pezzo. La Forlorn Cavern non se n'è accorta. Tiene sempre la stessa ora fioca, e i suoi affari non guardano l'orologio.",
		"Fuori dal portone è notte fonda, dice un viaggiatore appena entrato. Nella Forlorn Cavern, ci scommetto, le stesse tre figure stanno appoggiate allo stesso muro di ore fa.",
	},
	["ifo.muse.w20.cavern.012"] = {
		"Pare che nella Forlorn Cavern nessuno arrivi o se ne vada mai. Ci sono, e poi non ci sono più.",
		"Non ho mai visto nessuno entrare nella Forlorn Cavern. Dentro però c'è sempre gente.",
		"Come fa la Forlorn Cavern a riempirsi senza che nessuno ci entri? Non rispondere.",
	},
	["ifo.muse.w20.chore.001"] = {
		"passa accanto a una fila di bucato tesa fra due pilastri vicino alle forge, camicie e biancheria che si asciugano rigide nel calore, ondeggiando appena ogni volta che passa un carro.",
		"si china sotto una corda di panni stesa attraverso un passaggio laterale, ogni camicia un po' grigia e già asciutta, scaldata a fondo dalla pietra.",
	},
	["ifo.muse.w20.chore.002"] = {
		"I ratti di Ironforge se la passano meglio di me: pietra calda, birra rovesciata, briciole buone. Perfino i gatti ci hanno rinunciato.",
		"Un ratto ha appena attraversato la sala al trotto, grasso come una pagnotta, senza nessuna fretta. Città calda, briciole a volontà.",
		"Il ratto più grasso che abbia mai visto è appena passato davanti alla banca. Non si è nemmeno guardato intorno.",
	},
	["ifo.muse.w20.chore.003"] = {
		"scavalca un gatto rosso disteso lungo un gradino caldo, che non si muove, non apre gli occhi, e considera evidentemente il gradino di sua proprietà.",
		"trova un gatto acciambellato sulla pietra più calda di un pianerottolo, l'unico punto che tutti scansano senza che nessuno l'abbia detto, come se la città fosse d'accordo.",
	},
	["ifo.muse.w20.chore.004"] = {
		"Dietro ogni bancone di taverna c'è un retro dove qualcuno strofina boccali. Ne ho intravisto uno da una porta: una collina di peltro, una tinozza d'acqua grigia e una nana con le maniche rimboccate, perfettamente serena.",
		"Per ogni nano che beve in questa città ce n'è un altro che lava i boccali dopo di lui. Non li vedi mai: senti solo l'eterno tintinnio del peltro da dietro qualche porta.",
	},
	["ifo.muse.w20.chore.005"] = {
		"Basta fermarsi un attimo a Ironforge e qualcuno ti passa l'altro capo di qualcosa di pesante.",
		"Ho guardato un intaglio un momento di troppo e un nano mi ha dato un sacco da tenere. Lo tengo ancora. Lui non si è più visto.",
		"Regola di questa città: alle mani in ozio si consegna una scopa.",
	},
	["ifo.muse.w20.chore.006"] = {
		"sente il pane prima di vedere il fornaio: un nano che infila una teglia di pagnotte in una nicchia scavata nel muro dietro una forgia, dove il calore del metallo fa il lavoro gratis.",
		"coglie un profumo di pane da un fornetto addossato al retro di una bottega di fabbro, dove qualche anima parsimoniosa ha imparato a prendere in prestito il calore della forgia.",
	},
	["ifo.muse.w20.chore.007"] = {
		"C'è un piacere particolare nelle piccole faccende in una grande città: ricucire una cinghia, riordinare lo zaino, mentre mille persone sbrigano le loro. Nessuno guarda. Tutti hanno da fare. È la miglior compagnia che ci sia.",
		"Su un gradino, con la città che mi ruggiva accanto, ho ricucito una cucitura allentata. Un lavoretto in mezzo a tutto quel lavoro, e per la lunghezza di un filo mi è sembrato di far parte di qualcosa.",
	},
	["ifo.muse.w20.chore.008"] = {
		"aspetta mentre una nana con un barattolo di grasso avanza in ginocchio lungo un binario dei carrelli, ungendo ogni giuntura, e una fila di carrettieri alle sue spalle finge di non avere fretta.",
		"sente un'intera sala tirare un sospiro di sollievo quando un carrettiere finalmente olia una ruota che stride lungo l'anello da un bel pezzo.",
	},
	["ifo.muse.w20.chore.009"] = {
		"Qui nella Hall of Explorers qualcuno spolvera le teche con un piumino e la faccia di chi disinnesca una trappola. Uno starnuto, e mille anni di ossa volerebbero dappertutto.",
		"Un'addetta della League percorre gli scaffali con una spazzola morbida, così piano che la polvere sembra andarsene per cortesia. A ogni osso si ferma, come per chiedere scusa.",
	},
	["ifo.muse.w20.chore.010"] = {
		"Anche una città scavata in una montagna ha bisogno di rattoppi. Ho guardato due muratori sollevare una lastra crepata, segnare col gesso quella nuova e batterla al suo posto, e un'ora dopo non si vedeva più niente.",
		"Dei muratori stanno in ginocchio accanto a un gradino crepato: scalpellano, misurano, scalpellano ancora un po'. La montagna è per sempre, ti diranno. I gradini sono un'altra faccenda.",
	},
	["ifo.muse.w20.chore.011"] = {
		"Facchini che scaricano grano di Stormwind dalle casse del tram, uno gnomo che conta, un nano che impreca contro un coperchio incastrato. Da vicino l'Alleanza sembra meno un patto che una casa dove ci si divide le faccende.",
		"I trattati si firmano nelle sale del trono. Qui l'Alleanza è un umano e un nano che portano una cassa pesante in due e litigano su quale lato sia più leggero.",
	},
	["ifo.muse.w20.chore.012"] = {
		"Una gnoma spazza sempre lo stesso pezzetto di pavimento davanti a un'officina, con grande cura, una passata dopo l'altra. Qualcuno mi ha detto che a Gnomeregan mandava avanti un laboratorio intero. Adesso tiene pulito un quadratino della città di qualcun altro.",
		"C'è una gnoma che lucida l'ottone di un solo stipite finché brilla, ogni volta che passo. A Gnomeregan, ha sussurrato un vicino, aveva una sala tutta sua. I piccoli lavori riempiono i grandi silenzi.",
	},
	["ifo.muse.w20.chore.013"] = {
		"guarda un'inserviente spazzare i gradini sotto il trono con colpi lenti e regolari, scendendo all'indietro per non voltare mai le spalle al seggio.",
		"nota che qui perfino la polvere si spazza con cerimonia: una lunga scopa morbida, colpi misurati, un piccolo inchino sul gradino più alto prima di cominciare a scendere.",
	},
	["ifo.muse.w20.clan.001"] = {
		"I nani che ho conosciuto ti danno due nomi, il proprio e poi quello del clan, e il secondo esce sempre un po' più forte.",
		"Presentati a un nano e ti arriva indietro un nome di famiglia come una stretta di mano: saldo, e in attesa di riceverne uno. Io non so mai cosa offrire.",
		"Quaggiù un nome non è completo finché non hai detto di chi sei. I nani tendono l'orecchio a quella seconda metà come un fabbro a una crepa.",
	},
	["ifo.muse.w20.clan.002"] = {
		"guarda due nani ripercorrere le rispettive discendenze contando sulle dita, finire le dita e farsi prestare quelle di un terzo nano.",
		"aspetta educatamente che due nani stabiliscano come siano imparentati, un calcolo che ha già consumato tutte e due le mani e un pezzo di muro.",
		"aggira una coppia di nani che ha appena scoperto, a gran voce e con molte pacche sulle spalle, di avere in comune una trisavola.",
	},
	["ifo.muse.w20.clan.003"] = {
		"Ironforge ne è solo il cuore. Khaz Modan va dai passi di Dun Morogh alle rive di Loch Modan, e ogni miniera e torre di guardia nel mezzo risponde all'High Seat.",
		"Quando intendono tutto il regno, i nani dicono Khaz Modan, non Ironforge: altipiani, laghi, miniere e avamposti. La città è solo il posto dove il re tiene la sua sedia.",
	},
	["ifo.muse.w20.clan.004"] = {
		"I Dark Iron scavarono le loro sale con gli stessi attrezzi dei miei avi, e un tempo giuravano sulla stessa montagna. È questo che rende il rancore così pesante: sono parenti.",
		"Gli stranieri credono che i Dark Iron siano un altro popolo. Non è così. Sono parenti che hanno imboccato la scala sbagliata verso il basso, ed è più difficile da perdonare di qualunque straniero.",
	},
	["ifo.muse.w20.clan.005"] = {
		"Certe squadre di minatori, mi dicono, sono un'unica famiglia, che lavora il filone aperto dai bisnonni. Della roccia parlano come altri parlano di un vecchio zio.",
		"Un minatore mi ha detto che la sua squadra lavora lo stesso filone da cinque generazioni, di madre in figlio in figlia. L'ha detto come se niente fosse. Per un nano, forse, è così.",
		"In questa città un filone di minerale può restare in una famiglia più a lungo di quanto molti regni restino a una dinastia. I nani la chiamano normalità.",
	},
	["ifo.muse.w20.clan.006"] = {
		"Sei presentazioni in questa sala, e non so come mi ritrovo {g:invitato|invitata} a un matrimonio, a una veglia funebre e a una faida.",
		"Chiedi un'indicazione a un nano e te ne vai conoscendo per nome tutto il suo clan, con un cugino che ti accompagna.",
	},
	["ifo.muse.w20.clan.007"] = {
		"guarda un anziano accompagnare un giovane nano da una balaustra all'altra, presentandolo a ogni sosta con una fila di nomi che si allunga un po' ogni volta.",
		"segue distrattamente una matrona nanica che presenta il nipote a ogni conoscente della sala; a ogni nuova discendenza le orecchie del ragazzo si fanno più rosse.",
	},
	["ifo.muse.w20.clan.008"] = {
		"I nani ci hanno più o meno adottati. A gran voce, con moltissimi consigli non richiesti sui camini e un invito permanente a ogni lite che hanno in corso.",
		"Per un nano, un popolo senza clan è un popolo senza tetto. Così ci hanno dato l'uno e l'altro, e adesso si aspettano di vederci a ogni lite di famiglia.",
	},
	["ifo.muse.w20.clan.009"] = {
		"Bronzebeard è il nome del re, ma prima ancora era quello del clan. Il minatore che mi passa accanto col suo carico lo porta anche lui, e nei giorni buoni probabilmente considera il re un cugino.",
		"Mezza città potrebbe chiamarsi Bronzebeard. Il re porta lo stesso nome, solo con una corona sopra.",
	},
	["ifo.muse.w20.clan.010"] = {
		"Un Wildhammer e un Bronzebeard, una porta sola, e nessuno dei due cede il passo. Aspetto. Un secolo o giù di lì, a occhio.",
		"Due nani di due clan sulla stessa soglia, e nessuno che si sposta. Qualcuno mi porti uno sgabello.",
	},
	["ifo.muse.w20.cog.001"] = {
		"Una gnoma divide gli ingranaggi in barattoli secondo il numero dei denti, e scrive il numero su ciascuno. Il nano accanto a lei, sui suoi, scrive quale cugino glieli ha regalati.",
		"Su un banco, ingranaggi divisi in barattoli per numero di denti, con etichette in cifre grandi come pulci. Sul banco del nano accanto, un secchio solo con scritto «ingranaggi».",
	},
	["ifo.muse.w20.cog.002"] = {
		"si ferma accanto a un banco dove una gnoma sistema con le pinzette un ingranaggio grande quanto un'unghia, così assorta che il frastuono della città sembra arrestarsi al bordo del suo tavolo.",
		"segue le pinzette di una gnoma che incastra una rotellina in un orologio, la punta della lingua tra i denti, mentre alle sue spalle un nano martella imperterrito.",
	},
	["ifo.muse.w20.cog.003"] = {
		"In ogni officina gnomesca c'è un barattolo di viti che non vanno bene per niente. Nessuno lo svuota mai. Un inventore mi ha spiegato che non sono scarti: sono «pezzi per macchine non ancora inventate».",
		"Su ogni banco di Tinker Town c'è un vasetto di bulloni che non combaciano con nessun dado al mondo. Buttarlo, a quanto pare, vorrebbe dire rinunciare al futuro.",
		"Un orologio rotto diventa una scatola di molle, le molle diventano un giocattolo, e quel che avanza finisce a tenere aperta la porta di un'officina.",
	},
	["ifo.muse.w20.cog.004"] = {
		"Certi inventori anziani tagliano ancora gli ingranaggi sul vecchio modello di Gnomeregan, misure che non servono a nessuna macchina rimasta in superficie. Abitudine, dicono. A me pare più un posto apparecchiato per chi non c'è.",
		"Un inventore fa ogni pezzo con le misure della vecchia città, anche se fuori da Gnomeregan nessuna macchina li accetta. Ne tiene una scatola sotto il banco, ben oliati, pronti per una macchina che è ancora laggiù.",
	},
	["ifo.muse.w20.cog.005"] = {
		"Una porta vicino a Tinker Town cigolava. Adesso non cigola più, e nessuno ammette di averla oliata. Gli gnomi hanno un'aria innocentissima.",
		"Ogni cardine nel raggio di cinquanta passi da Tinker Town è stato oliato da qualcuno. Nessuno l'ha chiesto. Non lo chiede mai nessuno.",
	},
	["ifo.muse.w20.cog.006"] = {
		"Un fabbro nano e una gnoma stanno costruendo qualcosa insieme. Lui misura col pollice, lei col calibro, non sono d'accordo su un solo numero, e il pezzo combacia come se ci fosse nato.",
		"Guardare un nano e una gnoma che si dividono un lavoro è una lezione: lui si fida delle mani, lei dei numeri, e da qualche parte nel mezzo la cosa viene fatta come si deve.",
	},
	["ifo.muse.w20.cog.007"] = {
		"lancia un'occhiata a un ingranaggio d'ottone alto quanto un nano, appoggiato a un muro di Tinker Town, con legato un cartellino che dice soltanto «dopo».",
		"passa di sbieco accanto a un ingranaggio grande come una ruota di carro, appoggiato a un pilastro, in evidente attesa di una macchina che nessuno ha ancora disegnato.",
	},
	["ifo.muse.w20.cog.008"] = {
		"Davanti alla serratura di un forziere nanico, grande come un pugno e pesante il doppio, una gnoma si è fermata e l'ha definita «graziosa». Il nano non ha ancora deciso come prenderla.",
		"Le serrature dei nani sono fatte per resistere alle martellate. Quelle degli gnomi, per discutere. Ho visto uno gnomo studiarne una del primo tipo sorridendo come davanti a un cucciolo.",
	},
	["ifo.muse.w20.cog.009"] = {
		"Ho chiesto l'ora a uno gnomo. Mi ha dato l'ora, il minuto e un elenco di migliorie per il mio orologio da tasca, che non possiedo.",
		"Chiesta l'ora a un inventore. Me l'ha data al secondo, col disegno di un orologio migliore e il conto per il disegno.",
	},
	["ifo.muse.w20.cog.010"] = {
		"Quando una vecchia inventrice presta una chiave inglese fatta a Gnomeregan, la porge con due mani e non la perde d'occhio un istante. Attrezzi così non se ne fanno più. L'officina che li faceva è piena di troggs.",
		"Una chiave col marchio di Gnomeregan passa di mano in mano lungo un banco di Tinker Town, e ogni gnomo la tiene un attimo più del necessario.",
	},
	["ifo.muse.w20.cog.011"] = {
		"I nani hanno tagliato le scale per gambe di nano e le porte per spalle di nano. In questa città niente è fatto per uno gnomo, e ci è stato offerto tutto senza pensarci due volte.",
		"Due saltelli per ogni gradino dei nani. Ho smesso di contarli. Più o meno al millesimo, hanno cominciato a sembrarmi gratitudine.",
	},
	["ifo.muse.w20.cog.012"] = {
		"si sofferma accanto a un banco dove uno gnomo apre un giocattolo a molla rotto per un bambino nano, nominando ad alta voce ogni pezzo che ne esce, perché il piccolo lo ripeta.",
		"aspetta accanto a un banco di Tinker Town mentre un piccolo nano porge un uccellino a molla ammaccato, a pugni stretti, e lo gnomo dall'altra parte ci sbircia dentro e dice «ah».",
	},
	["ifo.muse.w20.cog.013"] = {
		"Hai perso qualcosa di piccolo a Ironforge? Guarda a Tinker Town. Sarà lì, e l'avranno migliorato.",
		"Mi è sparito un laccio dello stivale vicino alle officine degli gnomi. È ricomparso un'ora dopo con la punta d'ottone e dentro una molla.",
	},
	["ifo.muse.w20.counter.001"] = {
		"Le insegne delle botteghe intorno al Commons sono di ferro, non di legno dipinto: un ago battuto per il sarto, uno stivale per il calzolaio, un pesce per chi vende pesce. Dureranno più di ogni bottega che le appende.",
		"Niente insegne dipinte sulle botteghe del Commons, solo di ferro, battute nella forma del mestiere: un rocchetto, un mestolo, una chiave. Un nano non appende una promessa che può scrostarsi.",
	},
	["ifo.muse.w20.counter.002"] = {
		"Questa bottega vende solo filo. Quaranta tipi di filo. Mai in vita mia un filo mi aveva tentato tanto.",
		"Una bottega intera di fibbie. Ottone, ferro, osso, una a forma di cinghiale. Cercavo una fibbia sola ed esco con un'opinione.",
		"Una bottega che vende solo cucchiai. Di ferro, di corno, uno per mescolare la malta. Mi serve un momento.",
	},
	["ifo.muse.w20.counter.003"] = {
		"Una ciotola elfica di legno chiaro intagliato sta su uno scaffale nanico tra due pentole di ferro, leggera come una foglia accanto a loro. Sembra molto lontana da dove l'hanno fatta, e il prezzo lo dice.",
		"Le merci di Darnassus hanno l'aria spaesata su uno scaffale nanico: una coppa di legno intagliato, un ritaglio di stoffa argentea, tutta leggerezza in mezzo al ferro. Il bottegaio le spolvera con più delicatezza del resto.",
	},
	["ifo.muse.w20.counter.004"] = {
		"Ho chiesto una pentola piccola. Il nano me ne ha data una in cui potrei farmi il bagno, e l'ha chiamata «la piccolina».",
		"Le botteghe naniche hanno due misure: robusto e più robusto. Ho chiesto «leggero». Ha riso parecchio.",
		"In questa città «un martelletto» è uno che si solleva con una mano sola. Di solito.",
	},
	["ifo.muse.w20.counter.005"] = {
		"Qui i bottegai dicono da dove viene una cosa prima di dirne il prezzo: stagno di Loch Modan, lana da un carro di Stormwind, pesce affumicato sul lago. Più ha viaggiato, più lungo è il discorso.",
		"Ogni scaffale del Commons viene con la sua mappa. «Quella stoffa è scesa dal tram, quel pesce viene dal lago, questo ferro da proprio sotto i tuoi piedi.» Il ferro costa sempre meno. Nessuno ha dovuto portarlo.",
	},
	["ifo.muse.w20.counter.006"] = {
		"passa davanti a una bottega dove un nano lucida una fila di bollitori di rame uno per uno, alzandoli alla luce della lampada prima di rimetterli giù.",
		"rallenta davanti a una bottega aperta dove il padrone sta oliando i cardini di uno scrigno sul banco, ascoltandoli cigolare ciascuno un po' meno.",
	},
	["ifo.muse.w20.counter.007"] = {
		"Le botteghe naniche tengono un solo campione di ogni cosa sul banco e il resto sotto chiave lì dietro. Indichi il campione, e il bottegaio tira fuori il tuo come un carceriere che libera un prigioniero.",
		"Su un banco nanico c'è uno di tutto, e cento di tutto nei bauli alle sue spalle. I cento non li tocchi mai. L'uno, appena.",
	},
	["ifo.muse.w20.counter.008"] = {
		"Un calzolaio del Commons non mi ha mai guardato in faccia. Ha guardato i miei stivali, ha detto che il tacco sinistro sta cedendo e si è rimesso alla sua forma. Aveva ragione.",
		"I calzolai nani leggono gli stivali come gli studiosi le tavolette antiche. Un'occhiata ai miei, e questo sapeva quanta strada avevo fatto e quanto male.",
	},
	["ifo.muse.w20.counter.009"] = {
		"segue tutto il rito di un bottegaio nano che avvolge un acquisto nella tela cerata, lo lega con lo spago, poi tira il nodo così forte da sollevare il pacco dal banco, per puro scrupolo.",
		"si ferma a un banco quanto basta per vedere un acquisto incartato, legato, battuto due volte sul legno per buona fortuna e consegnato con tutte e due le mani.",
	},
	["ifo.muse.w20.counter.010"] = {
		"Metà delle botteghe da queste parti vende lucchetti, catene e forzieri. L'altra metà vende cose da chiudere a chiave. Molto ordinato.",
		"La banca più sicura del mondo, eppure questa città vende più serrature che pane. Nessuno si fida di una porta quando può metterne due.",
	},
	["ifo.muse.w20.counter.011"] = {
		"solleva un piccone da minatore dalla rastrelliera fuori da una bottega, ne sente l'equilibrio assestarsi nella mano, e lo rimette a posto un po' a malincuore.",
		"saggia il peso di un piccone appeso alla porta di una bottega, lo dondola appena in mano, e lo riappende prima che il bottegaio cominci a parlare.",
	},
	["ifo.muse.w20.counter.012"] = {
		"Una viaggiatrice al banco ha chiesto se il ferro fosse davvero estratto sotto questa montagna. «Fino all'ultima oncia» ho risposto prima del bottegaio, con un orgoglio assurdo, come se l'avessi scavato io.",
		"I forestieri rigirano tra le mani i nostri lavori in ferro e fischiano. Io tengo la faccia impassibile, come deve fare un nano, e lascio che a vantarsi sia il ferro.",
	},
	["ifo.muse.w20.counter.013"] = {
		"Dal portone arriva voce che su Dun Morogh si sta scatenando una tempesta. Prima ancora che la notizia abbia fatto il giro del Commons, ogni bottega ha finito i berretti di lana.",
		"Fuori c'è tempesta, dicono le guardie del portone. Qui dentro l'unico segno è la corsa ai guanti foderati di pelliccia e un calzolaio con la fila.",
	},
	["ifo.muse.w20.counter.014"] = {
		"Quando dal fronte arrivano brutte notizie, il prezzo del ferro nel Commons sale prima che arrivi un araldo. I mercanti dell'Alleanza sentono la guerra nei loro registri prima di chiunque altro.",
		"Osserva le botteghe del Commons e saprai come vanno le guerre dell'Alleanza: armature e bende salgono, lana e vino scendono. Gli araldi lo confermano solo dopo.",
	},
	["ifo.muse.w20.counter.015"] = {
		"Dal portone arriva voce che i passi sono immersi nella nebbia. I pescivendoli del Commons hanno alzato i prezzi solo per la notizia: i carri da Loch Modan saranno in ritardo, e quello che sta sul banco diventa di colpo raro.",
		"Nebbia sui passi, dice un carrettiere entrando dal portone. Prima che abbia finito la frase, il pescivendolo ha già cambiato in silenzio il cartellino della trota affumicata.",
	},
	["ifo.muse.w20.crowd.001"] = {
		"C'è chi viene nel Commons solo per stare vicino alla banca con l'armatura migliore e farsi guardare. Non parla, non compra, non si muove. Una parata in cui nessuno cammina.",
		"C'è sempre qualcuno in una splendida armatura a piastre, fermo immobile vicino alla banca, mento alto, ad aspettare ammirazione. Ho visto statue con più conversazione e meno lucido.",
	},
	["ifo.muse.w20.crowd.002"] = {
		"nota una figura in armatura scintillante ferma immobile in mezzo al passaggio da parecchio; uno gnomo le sventola una mano davanti alla visiera, non ottiene niente, e scrolla le spalle.",
		"aggira un viandante piantato come un palo in mezzo al via vai, lo sguardo fisso sul nulla, mentre i passanti gli scorrono accanto senza degnarlo di un'occhiata, abituati da tempo a cose simili.",
	},
	["ifo.muse.w20.crowd.003"] = {
		"Uno strillone vicino alla banca chiama il padrone di un ariete smarrito. Poi di un guanto smarrito. Poi, con crescente perplessità, di uno gnomo smarrito. Lo gnomo, si scopre, non si era perso affatto: stava sotto l'ariete.",
		"Gli strilloni del Commons non vendono granché. Per lo più annunciano quello che è stato trovato: una muffola, un piccone, un apprendista addormentato. Ritiratelo in banca, dicono, come se il Vault non avesse niente di meglio da fare.",
		"Uno strillone vicino alla banca chiama, per la terza volta, chi ha lasciato una lanterna accesa sui gradini. Adesso la lanterna pende dalla sua cintura. Nel Commons, chi tiene ha quasi sempre ragione.",
	},
	["ifo.muse.w20.crowd.004"] = {
		"guarda qualcuno fare di corsa un giro completo del Commons, fermarsi di colpo davanti alla banca, pensarci su, e rifare tutto il giro di corsa nell'altro senso.",
		"segue con lo sguardo uno gnomo che trotterella intorno all'anello delle botteghe, davanti alla banca, davanti ai banditori, ancora davanti alla banca, sempre leggendo lo stesso pezzo di carta.",
	},
	["ifo.muse.w20.crowd.005"] = {
		"Fai venti passi nel Commons e sentirai il nanico, lo gnomesco, il darnassiano e un umano che maledice i suoi stivali in comune. La città le parla tutte, e per lo più insieme.",
		"Il Commons parla quattro lingue e contratta in una sola. Il rame non ha bisogno di traduzioni.",
	},
	["ifo.muse.w20.crowd.006"] = {
		"Quel nano vicino alla banca chiede un guaritore da un'ora. I guaritori continuano a passargli davanti, molto in fretta, sguardo fisso avanti.",
		"Qui qualcuno cerca compagni per scendere a Blackrock da una vita. Strano come gli stivali di tutti siano diventati interessantissimi.",
		"Quello lì chiede ancora un guaritore. Ormai i guaritori fanno il giro lungo dell'anello.",
	},
	["ifo.muse.w20.crowd.007"] = {
		"Tabarde di una dozzina di colori vagano tra la folla, e ogni compagnia è convinta che la sua sia la più bella. Dall'alto sembrerebbero una scatola di colori rovesciata, che qualcuno mescola piano.",
		"Conta le tabarde che passano e conti le compagnie: una rossa, tre azzurre, una verde che non sta bene con niente. Ognuna cammina come se la folla fosse sua.",
	},
	["ifo.muse.w20.crowd.008"] = {
		"si volta al rimbombo di uno strillone che annuncia una consegna di pesce affumicato da Loch Modan con tutta la gravità di un decreto reale.",
		"si blocca mentre uno strillone, petto in fuori e barba irta, proclama l'arrivo di pesce fresco dal lago come se fosse la notizia di una guerra vinta.",
	},
	["ifo.muse.w20.crowd.009"] = {
		"Qui nel Commons niente va dritto. Percorri l'anello come tutti, e finisci dietro lo stesso nano lento che avevi davanti all'inizio.",
		"Il Commons è un cerchio, quindi la folla non finisce mai: gira. Ho incrociato tre volte la stessa gnoma, e ha cominciato a salutarmi con un cenno.",
	},
	["ifo.muse.w20.crowd.010"] = {
		"Qualunque sia l'ora là fuori, il Commons è pieno. Cambiano gli impiegati, cambiano gli strilloni, e la folla cambia solo le facce, mai le dimensioni.",
		"Nessuno ha mai visto il Commons vuoto, mi ha detto una guardia, e lui di turni ne ha fatti più di quanti ammetterà. La folla passa di mano come una moneta, e non smette mai di muoversi.",
	},
	["ifo.muse.w20.crowd.011"] = {
		"si tocca il borsello alla cintura una volta, nel folto della calca, e poi un'altra, senza un sospetto preciso.",
		"tiene una mano mollemente sopra il borsello mentre la folla si stringe, come sembrano fare tutti sull'anello.",
	},
	["ifo.muse.w20.crowd.012"] = {
		"Qualcuno con un mantello nuovo di zecca fa il giro dell'anello piano piano, fermandosi sotto ogni lampada. Tutti se ne accorgono. Nessuno dice niente. È il patto tacito del Commons.",
		"Nel Commons c'è un passo apposta per gli stivali nuovi: più lento del necessario, con piccole soste dove la lampada fa la luce migliore. Metà della folla l'ha fatto. L'altra metà mente.",
		"Una gnoma con una piuma nuova sul cappello passa davanti alla banca tre volte, ogni volta un po' più piano. Nessuno commenta. Tutti hanno visto la piuma.",
	},
	["ifo.muse.w20.crowd.013"] = {
		"viene {g:urtato|urtata} da tre lati insieme nella calca, e si sente chiedere scusa da quattro.",
		"si prende un gomito, una bisaccia e l'elmo di uno gnomo uno dopo l'altro, ognuno seguito da un frettoloso «scusa» con un accento diverso.",
	},
	["ifo.muse.w20.crown.001"] = {
		"Brann a scavare chissà dove, la figlia del re a Blackrock accanto al nemico. Nessuno a Ironforge chiede ad alta voce chi porterebbe la corona dopo Magni, e quel silenzio è custodito con molta cura.",
		"La stirpe dei Bronzebeard si è fatta sottile: un fratello sempre in giro, una figlia accanto a un imperatore dei Dark Iron. Nani pronti a discutere di qualunque cosa non discutono di chi verrà dopo.",
	},
	["ifo.muse.w20.crown.002"] = {
		"In qualunque altra città la gente ammirerebbe la corona del re. Qui vorrebbero sapere chi l'ha forgiata, e se i ribattini sono a filo.",
		"Un nano che guarda una corona vede prima il lavoro e poi il re. Sospetto che a Magni vada bene così.",
		"Scommetto che ogni fabbro di Ironforge ha un'opinione sulla corona del re, e nessuno la direbbe a meno di un miglio dall'High Seat.",
	},
	["ifo.muse.w20.crown.003"] = {
		"I re degli uomini vivono in palazzi che sovrastano le loro città. Il re dei nani vive in mezzo alla sua, a due passi dalla forgia. Potresti portargli un reclamo mentre vai a comprare chiodi.",
		"Nessuna torre, nessun palazzo lontano: l'High Seat sta tra le stesse sale della banca e della forgia. Ai nani piace avere il re a portata di grido.",
		"Un re che dal trono sente i martelli della sua città non può dimenticare facilmente chi tiene accese le lampade.",
	},
	["ifo.muse.w20.crown.004"] = {
		"Col re non ho nessun affare, eppure rallento ogni volta che passo davanti alla strada per la sua sala. Ci sono abitudini con cui un nano nasce.",
		"Magni Bronzebeard è il mio re come la montagna è il mio tetto: non ci penso a ogni ora, ma me ne accorgerei se sparisse.",
	},
	["ifo.muse.w20.crown.005"] = {
		"Governare dei nani dev'essere come dirigere un coro di incudini. Ognuna è sicura che le altre vadano fuori tempo.",
		"Non invidio Magni. Ogni suo suddito saprebbe mandare avanti la montagna meglio di lui, e metà ne ha già disegnato il progetto.",
		"Re dei nani. Immaginate un trono dove ogni singolo suddito è pronto a spiegarvi che lo state tenendo male.",
	},
	["ifo.muse.w20.crown.006"] = {
		"osserva il grande seggio scolpito in fondo alla sala, coi braccioli di pietra levigati là dove generazioni di mani regali si sono posate.",
		"lascia salire lo sguardo lungo il trono, dalla base alla cima, scolpito a fondo e senza fronzoli, un seggio fatto per durare più di chiunque ci regni sopra.",
	},
	["ifo.muse.w20.crown.007"] = {
		"Un corriere entra dal portone con la neve che gli si scioglie sulle spalle e una lettera sigillata per il re. Non si ferma a scaldarsi le mani, e questo dice qualcosa della lettera.",
		"Le notizie per l'High Seat arrivano con gli stivali bagnati: un messaggero con la neve ancora incrostata nella barba, che tira dritto davanti alla forgia senza degnarne il calore di uno sguardo.",
	},
	["ifo.muse.w20.crown.008"] = {
		"Due sovrani sotto una sola montagna: un re nato per il suo seggio e un Alto Inventore che gli gnomi si sono scelti da soli. Vanno d'accordo più di quanto si direbbe. Forse ognuno trova pittoresco il modo dell'altro.",
		"Magni la corona l'ha ereditata; Mekkatorque, a sentire gli gnomi, è stato eletto. Nella stessa città. I nani lo trovano spassosissimo, e gli gnomi ovvio.",
	},
	["ifo.muse.w20.crown.009"] = {
		"Un minatore che ho incrociato sosteneva che la corona del re pesa meno del suo elmo. «Il mio però me lo tolgo a fine turno», ha aggiunto, e ha tirato dritto.",
		"Una corona, a guardarla, è roba leggera. I nani sembrano capire che è l'unico pezzo d'equipaggiamento che non si appende a un chiodo quando finisce il turno.",
		"Chiedi a un minatore se farebbe cambio col re e ti riderà in faccia. Meglio un piccone che puoi posare di una corona che non puoi.",
	},
	["ifo.muse.w20.crown.010"] = {
		"L'Alleanza discute le sue guerre a Stormwind e le arma qui. Magni firma meno trattati di qualunque signore umano, e a quanto si sa li ha mantenuti tutti.",
		"Di tutti i sovrani a cui risponde la nostra parte, il re dei nani è quello che fa meno discorsi. Ma quando Ironforge mette il suo sigillo su qualcosa, nessuno nell'Alleanza si prende la briga di rileggere i termini.",
	},
	["ifo.muse.w20.crown.011"] = {
		"Magni era già re quando gli orchi travolsero Khaz Modan. I veterani dicono che perse ogni valle del suo regno tranne una montagna, e fece bastare quella.",
		"Un re che ha visto cadere tutto il suo regno sotto gli orchi, miniera dopo miniera e passo dopo passo, e si è tenuto la montagna lo stesso. I nani non lo chiamano grande per questo. Lo chiamano testardo, che qui vuol dire di più.",
	},
	["ifo.muse.w20.crown.012"] = {
		"Lunga vita a re Magni! ...Non si è girata una testa. A Ironforge, immagino, è sottinteso.",
		"Alla salute del re, allora. Tutti i nani a portata d'orecchio hanno annuito come se avessi fatto notare che la pietra è dura.",
	},
	["ifo.muse.w20.crucible.001"] = {
		"si fa indietro mentre due fonditori sollevano un crogiolo su una lunga forcella di ferro, lo portano allo stampo con il passo perfettamente a tempo, e lo inclinano, il metallo lucente che scivola fuori denso come miele.",
		"accompagna con lo sguardo il cammino lento e attento di un crogiolo sospeso tra due nani su una forcella da trasporto, nessuno dei due che parla, tutti e due che contano i passi.",
	},
	["ifo.muse.w20.crucible.002"] = {
		"Alla Great Forge nessuno guarda più le cascate di metallo fuso. I forestieri le fissano; i fabbri ci voltano la schiena per lavorare, come un mugnaio la volta alla sua ruota.",
		"Qui il fuoco cade dall'alto senza sosta e lo guardano solo i forestieri. I nani lo trattano come una fontana in mezzo a un mercato: bellissima, e sempre tra i piedi.",
	},
	["ifo.muse.w20.crucible.003"] = {
		"Alla forgia c'è chi non fa altro che crogioli: vasi spessi di argilla, modellati, essiccati, cotti, e poi riempiti di metallo abbastanza caldo da rovinarli in poche colate. Nessuno ringrazia la vasaia. Tutti si accorgerebbero della sua assenza.",
		"I crogioli si crepano dopo poche colate, così una nana silenziosa in un angolo ne fa di nuovi senza sosta, argilla fino ai gomiti. La gloria va ai fabbri. A lei, ogni tanto, un cenno.",
	},
	["ifo.muse.w20.crucible.004"] = {
		"Porta una pentola di ferro liquido come se fosse minestra. Fischiettando. Io mi metto qui.",
		"Due nani mi hanno appena portato accanto un crogiolo di metallo fuso, chiacchierando di formaggio. Io sto laggiù vicino al muro, immobile.",
		"Nessun altro si preoccupa del secchio di ferro fuso che passa. Mi preoccupo io, per tutti.",
	},
	["ifo.muse.w20.crucible.005"] = {
		"Fuso, ogni metallo è onesto, mi ha detto un fonditore. Niente forma, niente lucentezza, niente dietro cui nascondersi: solo ciò di cui è fatto, che sale a galla o va a fondo. Continuo a rigirarmelo in testa.",
		"Nel crogiolo la schiuma galleggia e il metallo buono va a fondo, dice un nano alla fusione, e tutto il lavoro del fonditore è sapere quale è quale. L'ha detto al crogiolo, ma abbastanza forte da farsi sentire dagli apprendisti.",
	},
	["ifo.muse.w20.crucible.006"] = {
		"si volta mentre un crogiolo s'inclina lì vicino e, per un istante, tutti i volti attorno allo stampo si accendono dal basso, bianchi e oro, come volti chini su una lanterna.",
		"coglie l'istante in cui comincia una colata: tutto l'angolo s'illumina da sotto, le ombre balzano su per le pareti, poi la luce torna al solito rosso.",
	},
	["ifo.muse.w20.crucible.007"] = {
		"Vicino alle fosse di fusione l'odore cambia: meno carbone, più argilla calda, e sotto qualcosa di pungente, come un fiammifero tenuto acceso troppo a lungo.",
		"L'aria vicino ai crogioli ha un fondo acre, d'uovo bruciato, sotto l'argilla e il carbone. I fonditori dicono di non sentirlo più da anni. Spero di andarmene prima.",
	},
	["ifo.muse.w20.crucible.008"] = {
		"studia una rastrelliera di tenaglie accanto a una forgia, decine, ognuna con le ganasce piegate per afferrare una sola forma e nessun'altra, appese in un ordine che capisce solo il padrone.",
		"fa scorrere lo sguardo su una parete di tenaglie appese, lunghe e corte, curve e a punta piatta, un'intera famiglia di mani di ferro in attesa del pezzo per cui ciascuna è nata.",
	},
	["ifo.muse.w20.crucible.009"] = {
		"«Ci vediamo alla forgia», dice mezza città, e l'altra metà sa esattamente di quale balaustra si parla. La Great Forge è il posto dove Ironforge va a ritrovarsi.",
		"Al bordo della forgia c'è sempre qualcuno che aspetta qualcun altro: una guardia fuori servizio, uno gnomo con un pacco, un nano che scruta la folla. Il punto d'incontro di tutti, e di nessuno in particolare.",
		"La forgia è insieme l'orologio della città e il suo fuoco di cucina. La gente viene al suo bordo per scaldarsi, per farsi trovare, per aspettare qualcuno che ha detto «alla forgia» e intendeva proprio lì.",
	},
	["ifo.muse.w20.crucible.010"] = {
		"A quest'ora tarda le colate sono finite, e i crogioli vuoti stanno capovolti sulla rastrelliera a raffreddarsi, una fila di campane d'argilla che nessuno suonerà prima del prossimo turno.",
		"Con l'ora che è, l'angolo della fusione si è fermato: crogioli a bocca in giù su una rastrelliera, tenaglie appese, le fosse sotto coperchi pesanti. Vanno avanti solo le incudini.",
	},
	["ifo.muse.w20.crucible.011"] = {
		"Ho chiesto quanto scotta il crogiolo. Il fonditore ci ha pensato su e ha risposto: «Sì».",
		"Ho domandato a una fonditrice quanto si scalda quella pentola. Ha guardato me, poi lei, e ha detto «abbastanza», come se avessi fatto una domanda scortese.",
		"«Quanto scotta?», ho chiesto. Il fonditore ha alzato una mano per spiegare, ci ha ripensato, e mi ha indicato le sopracciglia.",
	},
	["ifo.muse.w20.crucible.012"] = {
		"Prima di ogni colata c'è un'ora di sabbia paziente: un modello premuto, sollevato, l'impronta ripulita col pennello. Il momento lucente che tutti si fermano a guardare è la parte più breve del lavoro.",
		"Gran parte del lavoro di una fonditrice si fa in ginocchio davanti a una cassa di sabbia umida, a modellare l'impronta. La colata vera è finita prima che tu riesca a contare fino a dieci.",
	},
	["ifo.muse.w20.crucible.013"] = {
		"Dovunque vada, misuro il calore con questa forgia. Ogni fuoco da campo è poca cosa. Ogni camino di locanda è una candela. Non è giusto verso di loro, ma un nano non ci può fare niente.",
		"Gli altri dicono che casa ha un odore o un suono. Per un nano ha una temperatura, ed è questa, qui, a un braccio dal ferro fuso.",
	},
	["ifo.muse.w20.crucible.014"] = {
		"Resta abbastanza vicino alle fosse di fusione e le suole degli stivali cominciano a sapere di pane tostato. Le mie sono ben cotte.",
		"È una mia impressione, o i miei stivali sanno di arrosto? Ah. Le fosse. Ovvio.",
		"Consiglio per i visitatori: non state sulla griglia vicino alla fusione. Le suole ringrazieranno, prima o poi.",
	},
	["ifo.muse.w20.dig.001"] = {
		"nota due scavatori della League che si salutano in mezzo alla folla: uno ha la terra rossa delle Badlands in ogni cucitura, l'altro è impastato fino alle ginocchia del fango grigio di Loch Modan.",
		"capisce dove ha scavato il nano che {g:gli|le} passa accanto: la terra nelle pieghe della giacca è il rosso ruggine delle Badlands.",
	},
	["ifo.muse.w20.dig.002"] = {
		"Un minatore col piccone sgombra una galleria in un giorno. Uno scavatore della League col pennello libera una tazza in una settimana. Tutti e due lo chiamano scavare, e si offendono se non lo fai anche tu.",
		"I minatori ridono dei pennellini della League. La League ride a sua volta, piano, con in mano i cocci di quel che i minatori hanno rotto.",
		"Piccone, pala, pennello, cucchiaino. Più la League scava a fondo, più i suoi attrezzi rimpiccioliscono.",
	},
	["ifo.muse.w20.dig.003"] = {
		"Gli scavatori di ritorno dalle Badlands si lamentano del caldo a dieci passi dalla Great Forge. Il caldo della forgia, a quanto pare, è onesto. Quello delle Badlands è una faccenda personale.",
		"Ogni squadra che rientra dalle Badlands giura che laggiù faceva più caldo che in qualunque fucina della città. I fabbri ascoltano e tacciono, rumorosamente.",
		"'Gradevole', ha appena definito uno scavatore della League la forgia di un fabbro. Non ho mai visto un nano così offeso da un complimento.",
	},
	["ifo.muse.w20.dig.004"] = {
		"'Scava abbastanza a fondo in qualunque punto di Khaz Modan', dicono gli scavatori della League, 'e trovi il pavimento di qualcun altro.' Lo dicono allegri. A me toglierebbe il sonno.",
		"A sentire gli scavatori, ogni vetta di Khaz Modan è una pila di sale antiche con una più nuova in cima. Questa città potrebbe poggiare sul tetto della casa di uno sconosciuto.",
	},
	["ifo.muse.w20.dig.005"] = {
		"sta alla larga da un intendente della League che spunta rotoli di corda, olio da lampada e sacchi di calce su una lista lunga quanto il suo braccio, tutto destinato alle Badlands.",
		"passa accanto a un carretto a mano carico di pale, corde e brocche tappate d'olio da lampada, con un cartellino che dice soltanto 'Uldaman' in una grafia frettolosa.",
		"si attarda a guardare un nano che lega un lungo fascio di paline da rilevamento sul basto di un ariete, ogni palina segnata per tutta la lunghezza da tacche accurate.",
	},
	["ifo.muse.w20.dig.006"] = {
		"Gli scavatori parlano di un crollo come i fabbri parlano di un'ustione: in fretta, con il nome di chi si è portato via, e poi cambiano discorso apposta.",
		"C'è uno scavo di cui la League non vuole parlare, dove è venuto giù il soffitto; questo, a uno scavatore, è scappato detto. Chiedi di più, e gli studiosi trovano subito qualcosa di urgente da leggere.",
	},
	["ifo.muse.w20.dig.007"] = {
		"Ogni scavatore della League ha la sua cazzuola preferita, e ogni cazzuola ha un nome. Ho smesso di chiederli: dietro ogni nome c'è una storia lunghissima.",
		"Una scavatrice mi ha appena presentato la sua cazzuola. Per nome. Le ho stretto il manico: mi sembrava la cosa educata da fare.",
	},
	["ifo.muse.w20.dig.008"] = {
		"Odio schietto e un solo complimento a denti stretti: così gli scavatori della League parlano dei Dark Iron di Uldaman. Le loro puntellature tengono.",
		"Anche i Dark Iron scavano a Uldaman, dicono gli scavatori, a caccia delle stesse sale antiche. Le due parti si odiano cordialmente e si rubano le gallerie a vicenda.",
	},
	["ifo.muse.w20.dig.009"] = {
		"guarda una squadra della League entrare dal portone pestando i piedi per scrollarsi la neve dagli stivali, le casse imbiancate e le mappe infilate sotto le giacche.",
		"gira attorno a una pozza che si allarga sotto una pila di casse della League, con ancora sui coperchi la neve del passo.",
	},
	["ifo.muse.w20.dig.010"] = {
		"Il diario di uno scavatore torna deformato e pieno di granelli, con le pagine incollate da qualcosa su cui è meglio non fare domande. La League lo ricopia in bella, e tiene anche quello sporco.",
		"Di ogni diario di scavo la League conserva due copie: quella pulita per leggerla, e l'originale, macchiato e gonfio, perché su quella pagina a qualcuno tremava la mano, e conta anche questo.",
	},
	["ifo.muse.w20.dig.011"] = {
		"Uno scavatore brizzolato appoggiato a una colonna si vanta di riconoscere uno strato di roccia leccandolo. Gli amici confermano. Aggiungono che questo spiega parecchie cose di lui.",
		"Un veterano della League giura di datare la pietra dal sapore. Nessuno gli ha mai dato torto, e nessuno ha mai voluto controllare.",
	},
	["ifo.muse.w20.dig.012"] = {
		"Lo scavo di Loch Modan, a sentire gli scavatori, tira fuori più trogg che tavolette. Continuano a scavare. Un popolo che vuole così tanto la sua prima pagina se ne contende ogni riga.",
		"I trogg risalgono dallo scavo di Loch Modan più in fretta di quanto la League riesca a puntellarlo, dicono gli scavatori. Nessuno propone di lasciar perdere. Non in questa città.",
	},
	["ifo.muse.w20.dig.013"] = {
		"Dal portone arriva voce che la tempesta ha chiuso il passo. Una squadra della League diretta alle Badlands siede sulle casse già pronte, a rileggere mappe che conosce a memoria.",
		"Con la tempesta che chiude le strade gli scavatori sono bloccati in città, e i tavoli della League non sono mai stati così affollati, né così nervosi.",
	},
	["ifo.muse.w20.dig.014"] = {
		"Uno gnomo ha proposto alla League una macchina scavatrice. Gli hanno chiesto che effetto avrebbe su un pavimento antico. 'Lo migliora', ha detto lo gnomo. Riunione finita.",
		"Scavatori gnomi e scavatori della League: i primi vogliono arrivare prima, i secondi vogliono sapere cosa romperebbero per strada.",
	},
	["ifo.muse.w20.draft.001"] = {
		"Vicino all'ingresso ogni fiamma di lampada si piega nello stesso verso, verso l'interno, come una folla che si volta a guardare chi è appena entrato.",
		"Le fiamme lungo il grande corridoio d'ingresso si inchinano tutte da una parte, lontano dal portone. Se mai perdessi l'orientamento, mi indicherebbero l'uscita.",
	},
	["ifo.muse.w20.draft.002"] = {
		"nota che chiunque entri dal portone si ferma nello stesso punto, pochi passi più in là, dove il freddo finalmente lo lascia andare; sul pavimento c'è perfino una chiazza consumata.",
		"guarda chi arriva dal portone fermarsi sempre nello stesso posto, poco più avanti, scrollare le spalle una volta mentre il gelo scivola via, e proseguire.",
	},
	["ifo.muse.w20.draft.003"] = {
		"Ogni viaggiatore che passa il portone si porta dentro un po' di Dun Morogh. Mettiti accanto a uno appena arrivato e il freddo gli esce dal mantello come il calore da una forgia, solo al contrario.",
		"Un umano è appena entrato da fuori e si è messo accanto a me. Ho avuto meno freddo vicino a un muro di ghiaccio. Si portava dietro tutta la valle nel mantello.",
		"Chi è appena entrato lo riconosci dalla nuvoletta di freddo che arriva insieme a lui e se la prende comoda prima di andarsene.",
	},
	["ifo.muse.w20.draft.004"] = {
		"Sentito? È appena entrato qualcuno da fuori. La corrente lo annuncia prima delle guardie.",
		"Uno spiffero gelido alle caviglie. O è appena entrato qualcuno, o la montagna ha cambiato idea su di me.",
	},
	["ifo.muse.w20.draft.005"] = {
		"si ferma dove una sottile corrente fredda attraversa la sala, e guarda il pulviscolo nella luce delle lampade deviare e seguirla come pesci in un ruscello.",
		"resta un momento in una vena d'aria fredda che taglia la sala, invisibile se non per il fumo delle lampade che si scosta educato per lasciarla passare.",
	},
	["ifo.muse.w20.draft.006"] = {
		"A volte un filo d'aria di fuori arriva fin qui dentro prima di spegnersi: pino e pietra fredda, per un istante, in mezzo al fumo del carbone. Nessun altro pare accorgersene.",
		"Un nastro d'aria fresca dal portone, che sa di resina di pino, mi scivola accanto fra il fumo e il caldo e sparisce. Ha fatto tanta strada per perdersi qui dentro.",
	},
	["ifo.muse.w20.draft.007"] = {
		"Le guardie del portone fanno a turno per venire dentro a scongelarsi. Quelle appena smontate le riconosci da quanto stanno vicine alla prima lampada, fingendo di ispezionarla.",
		"Una guardia del portone smonta ed entra, e passa un lungo, dignitoso minuto a scaldarsi i guanti di ferro accanto a una lampada, come per controllare che funzioni.",
	},
	["ifo.muse.w20.draft.008"] = {
		"A Gnomeregan non c'era corrente d'aria che non avessimo progettato apposta. Qui il freddo del portone entra dove gli pare, e noi non diciamo niente. Gli ospiti non ridisegnano la casa.",
		"A casa ogni filo d'aria aveva un tubo e una ragione. Qui il freddo entra a passeggio dal portone. Ho disegnato tre modi per sistemarlo. Ai nani non li mostrerò mai.",
	},
	["ifo.muse.w20.draft.009"] = {
		"passa accanto a uno gnomo imbacuccato fino al naso in una sciarpa, nel bel mezzo delle sale calde, che spiega senza che nessuno glielo chieda che le correnti trovano prima gli gnomi perché stanno più vicini al pavimento.",
		"guarda uno gnomo infilare una coperta arrotolata sotto la porta di un'officina, borbottando che l'aria fredda scende e gli gnomi vivono proprio dove atterra.",
	},
	["ifo.muse.w20.draft.010"] = {
		"Certe volte resto un po' dove entra la corrente, solo per ricordarmi che il mondo ha un tempo suo. Il caldo qui dentro è gentile, ma è sempre lo stesso caldo.",
		"Mi piace fermarmi un momento nella corrente fredda vicino al portone. Dopo ore di calore di forgia, un po' di freddo onesto mi ricorda che c'è un fuori, e che mi aspetta.",
	},
	["ifo.muse.w20.draft.011"] = {
		"In questa città si capisce quanto dista il portone solo dalle dita dei piedi. Le mie dicono «non abbastanza».",
		"I miei piedi sanno benissimo dov'è il portone. Continuano a portarmi dall'altra parte.",
	},
	["ifo.muse.w20.draft.012"] = {
		"Per quel che ho visto, il portone non si chiude mai. Una città così sicura di sé lascia entrare il freddo e non si prende nemmeno la briga di lamentarsene.",
		"Con tutto il gran parlare di assedi, il portone resta spalancato e il freddo entra quando vuole. Una fortezza che lascia la porta aperta non è sbadata. È sicura.",
	},
	["ifo.muse.w20.drill.001"] = {
		"si ferma a guardare un istruttore di guerrieri che corregge la presa di un allievo con due dita e senza una parola, e se ne va prima che l'allievo possa ringraziarlo.",
		"indugia presso la Hall of Arms mentre un istruttore abbassa di un dito il gomito di un allievo, aspetta, e glielo riabbassa con la stessa calma.",
	},
	["ifo.muse.w20.drill.002"] = {
		"I fantocci d'allenamento del Military Ward sono imbottiti di paglia e ricuciti con la pazienza di chi sa che toccherà rifarli entro fine settimana.",
		"In questa città qualcuno rammenda i fantocci d'allenamento di mestiere. Ognuno che ho visto ha più toppe che paglia, e una faccia disegnata col carbone che sembra vagamente offesa.",
	},
	["ifo.muse.w20.drill.003"] = {
		"I sergenti contano il passo in nanico, e il conteggio ha il suono di sassi che scendono per uno scivolo. I numeri non li conosco. I miei piedi, a quanto pare, sì.",
		"Da qualche parte un sergente scandisce il passo in nanico. Non saprei dire cosa vogliano dire le parole, ma alla quarta mi sorprendo a camminare a tempo.",
	},
	["ifo.muse.w20.drill.004"] = {
		"Quei nani provano lo stesso colpo da quando sono {g:entrato|entrata}. O è un colpo difficilissimo, o l'istruttore ha scordato quello dopo.",
		"Stessa guardia, stesso grido, per la quarantesima volta. Direi che ci sono arrivati, ma nessuno me l'ha chiesto.",
		"Ho contato quaranta fendenti identici di quel nano. Se il quarantunesimo è diverso, resto a vederlo.",
	},
	["ifo.muse.w20.drill.005"] = {
		"rallenta accanto a due nani che si allenano con asce smussate: si fermano a metà assalto perché uno sistemi la cinghia allentata dell'altro, poi tornano subito a cercare di stendersi a vicenda.",
		"nota una coppia di nani che si allena fermarsi, abbassare le asce da esercizio e sistemare insieme una fibbia con gran serietà, prima di riprendere a darsele.",
	},
	["ifo.muse.w20.drill.006"] = {
		"Nella Hall of Arms la lode arriva sotto forma di grugnito, e un grugnito lungo vale una medaglia. Ne ho sentito uno durare tre secondi buoni, e l'allievo per poco non si commuoveva.",
		"Per dire 'sbagliato' gli istruttori dei guerrieri hanno una dozzina di modi, e per dire 'giusto' uno solo: smettono di parlare. Quel silenzio è la cosa più bella che un allievo senta in tutta la settimana.",
		"Un istruttore ha appena definito 'accettabile' la posizione di un allievo. A giudicare dalla faccia dell'allievo, è la parola più bella del nanico.",
	},
	["ifo.muse.w20.drill.007"] = {
		"Qui nel Military Ward la pietra è segnata da archi precisi, dove la stessa giravolta è stata provata qualche migliaio di volte. Si potrebbe imparare il gioco di piedi leggendo il pavimento.",
		"Il pavimento del Military Ward è la mappa di ogni esercitazione mai fatta: solchi dove gli stivali girano, un cerchio più chiaro dove un istruttore sta in piedi da anni.",
	},
	["ifo.muse.w20.drill.008"] = {
		"Piede sinistro, spalla, colpo, rientro. Mi stanco solo a guardarli.",
		"Tutto quell'esercizio. Mi fanno male le braccia per solidarietà.",
	},
	["ifo.muse.w20.drill.009"] = {
		"Uno dei bersagli d'allenamento del Military Ward è stato intagliato a forma di trogg, spalle bitorzolute comprese. L'hanno colpito così tante volte che comincia a sembrare un trogg fatto meglio.",
		"Qualcuno ha dipinto la faccia di un trogg su un palo d'allenamento, e i nani fanno la fila per colpirlo come fosse un premio. È di gran lunga il palo più richiesto della sala.",
		"Il bersaglio a forma di trogg porta una corona di ammaccature. I nani lo trattano con una specie di disprezzo affettuoso, come la capra di un vicino.",
	},
	["ifo.muse.w20.drill.010"] = {
		"sente la voce di un istruttore attraversare tutto l'anello della città, tanto che due gnomi nella sala opposta si raddrizzano senza sapere perché.",
		"si volta a un ordine urlato da qualche parte verso il Military Ward, e vede una mezza dozzina di passanti mettersi un po' più dritti, nessuno dei quali è un soldato.",
	},
	["ifo.muse.w20.drill.011"] = {
		"Una giovane nana tarchiata nella Hall of Arms continua a finire a terra, rialzarsi e piantare di nuovo i piedi. Nessuno la aiuta a tirarsi su. A quanto capisco, l'aiuto è proprio quello.",
		"Ho visto un'allieva finire a terra sei volte, e l'istruttore non le ha mai teso la mano. Alla settima è rimasta in piedi, e lui si è limitato ad annuire. Quella mano le sarebbe costata la settima.",
	},
	["ifo.muse.w20.drill.012"] = {
		"Si esercitano come se l'Orda potesse risalire la strada da Dun Morogh prima di cena. L'ultima volta che qualcuno l'ha creduto improbabile, è successo.",
		"Ogni colpo parato nella Hall of Arms si prova per un giorno che nessuno vuole. I nani ricordano l'ultimo abbastanza bene da continuare a provare.",
	},
	["ifo.muse.w20.drill.013"] = {
		"Qui nel Military Ward persino la polvere sembra posarsi in file ordinate.",
		"Uno gnomo mi è appena sfilato davanti in perfetto passo con una fila di guardie, per pura cortesia. Qui nessuno lo trova strano.",
	},
	["ifo.muse.w20.drill.014"] = {
		"si volta al fracasso dell'adunata dell'alba nel Military Ward: file di stivali trovano il loro segno, mentre le guardie che smontano dal lungo turno se ne vanno trascinando i piedi dall'altra parte.",
		"si fa da parte per le guardie che smontano, mentre quelle dell'alba arrivano a prendere i posti: due file che si incrociano in silenzio, come carrelli su due binari.",
	},
	["ifo.muse.w20.echo.001"] = {
		"Qualcuno ha fatto cadere un coperchio a una sala di distanza, e il rumore mi è arrivato a pezzi: il clangore, di nuovo il clangore dalla parete in fondo, poi un'imprecazione con un po' di ritardo.",
		"Qui i suoni fanno il giro lungo. Un mestolo che cade risuona, rimbalza sugli archi e mi arriva due volte, prima ancora delle parole del cuoco.",
		"Un cucchiaio è caduto alle mie spalle e mi è tornato indietro da tre pareti, ogni volta con l'aria un po' più dispiaciuta.",
	},
	["ifo.muse.w20.echo.002"] = {
		"Mai raccontare un segreto a Ironforge. I muri lo portano in giro per l'anello e te lo riconsegnano con uno sconosciuto attaccato.",
		"In queste sale non sussurrerei niente che non vorrei far sentire alla banca.",
	},
	["ifo.muse.w20.echo.003"] = {
		"svolta in un passaggio laterale, dove per qualche passo l'eco degli stivali torna dalla pietra con mezzo tempo di ritardo, come qualcuno che segue.",
		"si ferma in un tratto di sala vuoto, e l'ultimo passo prosegue da solo per un momento, prima che la pietra lo lasci andare.",
	},
	["ifo.muse.w20.echo.004"] = {
		"Un muratore dalla barba bianca mi ha detto che le sale trattengono un po' di ogni voce che vi si sia mai alzata, ed è per questo che non suonano mai vuote. Credo scherzasse. Non sono {g:sicuro|sicura} che lo sapesse lui.",
		"I muratori dicono che queste sale si tengono un po' di ogni voce che ci si è alzata dentro, ed è per questo che non tacciono mai del tutto. A sentirle adesso, non mi va di contraddirli.",
	},
	["ifo.muse.w20.echo.005"] = {
		"Sotto questa montagna una lite la senti un minuto buono prima di vederla.",
		"Le sale avvisano per tempo: una lite arriva prima come brontolio, poi come parole, poi come due nani che hanno già scordato perché.",
	},
	["ifo.muse.w20.echo.006"] = {
		"sente un motivo fischiettato arrivare lungo l'anello da chissà dove, lo perde sotto un colpo di martello e lo ritrova due sale più in là, qualche nota più avanti.",
		"insegue un motivetto fischiato di sala in sala senza mai trovare chi fischia, solo il motivo, sempre un arco più avanti.",
	},
	["ifo.muse.w20.echo.007"] = {
		"Ogni tanto, per puro caso, tutti i martelli della città cadono insieme fra un colpo e l'altro, e c'è un silenzio così improvviso che la gente alza la testa. Poi passa, e nessuno ne parla.",
		"Di rado il frastuono cala tutto insieme, una pausa non più larga di un batter d'occhio. Ogni testa si alza. Poi il rumore torna di corsa, come imbarazzato.",
	},
	["ifo.muse.w20.echo.008"] = {
		"Fai cadere un rame vicino alla banca e si voltano teste a due sale di distanza. In questa città i soldi non si contano mai ad alta voce.",
		"Mi è caduto un rame vicino alla banca. Un nano in cima alla scala di fronte mi ha detto da che parte era rotolato.",
	},
	["ifo.muse.w20.echo.009"] = {
		"Ogni tanto dal pavimento sale un suono che nessuno in città ha fatto: un colpo, molto in basso, lento e paziente. I minatori dicono che è la montagna che si assesta. Lo dicono in fretta.",
		"Ai piani più bassi a volte lo si sente più sotto i piedi che nelle orecchie: un bussare lento e profondo sotto la pietra. «Si assesta», mi ha detto un minatore, e ha cambiato discorso.",
	},
	["ifo.muse.w20.echo.010"] = {
		"sente il ticchettio svelto delle unghie di un cagnolino sulla pietra molto prima che il cane sbuchi dall'angolo, indaffaratissimo, diretto da nessuna parte.",
		"segue il tic-tic di unghie lungo la sala fino alla fonte: un terrier arruffato che trotta con grande determinazione dietro a un nano che non se n'è accorto.",
	},
	["ifo.muse.w20.echo.011"] = {
		"Ogni eco, qui, sembra un passo alle mie spalle. Nella montagna del nemico perfino la pietra pare fare la guardia.",
		"Le sale rimandano ogni suono due volte. Proprio qui preferirei che la pietra non ripetesse quello che dicono i miei stivali.",
	},
	["ifo.muse.w20.echo.012"] = {
		"Un branco di bambini nani, chissà dove, gioca a un gioco fatto soprattutto di grida, e le sale se lo passano finché sembra che tutta la città partecipi.",
		"Voci di bambini rimbalzano giù da una galleria più in alto, strillando per qualche gioco, e per un momento la grande sala di pietra sembra un cortile di scuola.",
	},
	["ifo.muse.w20.echo.013"] = {
		"I rumori della città arrivano nella Forlorn Cavern tardi e sottili, come se avessero dovuto chiedere il permesso. Una goccia, da qualche parte, tiene il tempo meglio dei martelli.",
		"In quest'angolo le voci non viaggiano come nelle grandi sale. La pietra grezza se le mangia. E alla gente di qui sembra che vada bene così.",
	},
	["ifo.muse.w20.elder.001"] = {
		"ricambia il cenno di un vecchio nano su una panca di pietra, la barba infilata nella cintura, che evidentemente siede in quel punto da così tanto che la pietra ha imparato la sua forma.",
		"passa accanto a un nano dalla barba bianca seduto su una panca consumata in una conca che gli calza a pennello; lui alza due dita in segno di saluto, come si fa con un carro che passa.",
	},
	["ifo.muse.w20.elder.002"] = {
		"Un anziano mi ha detto che una certa cosa era successa «poco tempo fa». A forza di domande è venuto fuori che parlava di qualche secolo addietro. Per lui era ancora una notizia fresca.",
		"Qui gli anziani contano il tempo in re e in crolli, non in anni. «Due frane dopo la guerra» è una data, e chiunque abbia abbastanza barba la conosce.",
	},
	["ifo.muse.w20.elder.003"] = {
		"Un incisore a riposo siede accanto a un banco che non usa più, le mani che tremano in grembo, e guarda un nano più giovane incidere le rune. Non dice niente. Una volta si sporge in avanti, e il giovane si ferma, e corregge.",
		"L'anziano in fondo al banco non riesce più a tenere fermo lo scalpello. Tiene la lampada, invece, esattamente all'angolo giusto, e il lavoro dell'apprendista ne guadagna.",
	},
	["ifo.muse.w20.elder.004"] = {
		"Un anziano mi ha appena detto di raddrizzare la schiena, mangiare di più e smettere di strizzare gli occhi. Non gliel'avevo chiesto. Sto facendo tutte e tre le cose.",
		"Ogni nano oltre i duecento anni ha un consiglio pronto, e nessuno aspetta che glielo chiedano. Adesso sugli stivali so più di quanto dovrebbe sapere chiunque.",
	},
	["ifo.muse.w20.elder.005"] = {
		"rallenta passando accanto a un cerchio di bambini nani seduti per terra attorno a un anziano, le cui grandi mani segnate danno forma a qualcosa nell'aria: una sala, forse, o un muro che crolla.",
		"sente soltanto la fine del racconto di un anziano a un gruppetto di bambini, una parola sola e una manata sul ginocchio, e i bambini sobbalzano tutti e poi ridono di sé stessi.",
		"resta ai margini del racconto di un anziano quanto basta per vedere tutti i bambini sporgersi in avanti insieme, come se la vecchia voce fosse una corda e qualcuno l'avesse tirata.",
	},
	["ifo.muse.w20.elder.006"] = {
		"Il palato più temuto della città, mi ha confessato un birraio, appartiene a una vecchina nana che assaggia un sorso di ogni botte nuova e dice una parola sola. Quella parola la aspettano come una sentenza.",
		"C'è un'anziana, dicono i birrai, il cui «mh» può affondare la produzione di un'intera stagione. Il primo boccale glielo portano lo stesso. Un birraio che non ha il coraggio di affrontarla non vale la pena di berlo.",
		"Nessun critico spaventa i birrai come l'anziana che beve un sorso, posa il boccale e lo allontana di un dito. Quel dito è la fine di una ricetta.",
	},
	["ifo.muse.w20.elder.007"] = {
		"L'età di un nano la leggi da dove si mette: i giovani vicino al portone, dove arrivano le notizie, gli anziani il più vicino possibile al calore della forgia.",
		"I più vecchi tra i nani scivolano verso il caldo come i vecchi cani verso il focolare. Nessuno mette loro fretta. E nessuno prende il loro posto.",
	},
	["ifo.muse.w20.elder.008"] = {
		"Un'intera scala di nani indaffarati si è appena fatta da parte per un anziano che scendeva piano, e nessuno sembrava spazientito. In questa città la precedenza spetta agli anni.",
		"Quando la vecchia col bastone ha cominciato ad attraversare la sala, i carrelli si sono fermati. Nessuno ha dato ordini. Si sono fermati e basta, hanno aspettato, e poi sono ripartiti.",
	},
	["ifo.muse.w20.elder.009"] = {
		"I nostri anziani ora siedono nelle taverne dei nani, coi piedi che penzolano dalle panche, a raccontare storie di Gnomeregan a nani che le hanno già sentite tutte e le ascoltano lo stesso. È una gentilezza che intendo ricambiare.",
		"Nonni gnomi in una taverna nanica, i boccali tenuti con due mani, a discutere di rapporti di ingranaggi con fabbri che annuiscono educati. Qualcuno di noi invecchierà qui. Cerco di non pensarci, e ci penso ogni volta.",
	},
	["ifo.muse.w20.elder.010"] = {
		"segue con gli occhi un lento anello di fumo uscito dalla pipa di un anziano, che sale ondeggiando, incontra il calore che sale dalla forgia e si sfalda; l'anziano sembra soddisfatto, come se fosse quello lo scopo.",
		"si ferma vicino a un anziano che sbuffa da una lunga pipa di terracotta e punta il bocchino verso i passanti uno dopo l'altro, borbottando su ciascuno un giudizio che sente solo la pipa.",
	},
	["ifo.muse.w20.elder.011"] = {
		"Un anziano al tavolo accanto giura che Ironforge era una città tranquilla prima che arrivassero gli gnomi. Tutto il tavolo ha riso finché non ha riso anche lui. Non è mai stata tranquilla. Gli manca solo essere il più rumoroso.",
		"Le barbe grigie si lamentano che la città è diventata chiassosa da quando Tinker Town si è riempita. Poi tornano a urlarsi addosso da un capo all'altro della sala.",
	},
	["ifo.muse.w20.elder.012"] = {
		"Ho chiesto a un'anziana quanti anni avesse. Mi ha detto sotto quale re era nata, poi tre storie su di lui, e ne so quanto prima.",
		"Mai chiedere l'età a un anziano nano se hai qualcosa da fare. Ho sentito storie più brevi all'Explorers' League.",
	},
	["ifo.muse.w20.exile.001"] = {
		"Ogni settimana, a Tinker Town, una gnoma scrive una lettera a qualcuno rimasto a Gnomeregan. Non le spedisce. Il cassetto ormai non si chiude più.",
		"In un'officina c'è un cassetto pieno di lettere indirizzate a Gnomeregan, sigillate e mai spedite. L'inventrice che le scrive dice che servono a tenerle onesta la calligrafia. Nessuno crede che sia quello il motivo.",
	},
	["ifo.muse.w20.exile.002"] = {
		"Gli gnomi raccontano barzellette su Gnomeregan, veloci, come quando si tocca una pentola che scotta. Ogni tanto una si ferma a metà, e tutto il banco continua a lavorare come se fosse stata finita.",
		"Le battute sulla vecchia città, a Tinker Town, arrivano svelte e taglienti. Ogni tanto chi racconta perde il finale per strada, e qualcun altro gli passa una chiave inglese al posto della risata.",
		"«Be', almeno ai troggs è toccata una città bellissima» dice uno gnomo, e il banco ride, e poi nessuno parla per il tempo che serve ad avvitare una vite lunga.",
	},
	["ifo.muse.w20.exile.003"] = {
		"Di rado gli gnomi di Tinker Town pronunciano il nome di Thermaplugg. Dicono «il Mekgineer», con una piccola pausa piatta subito dopo, come quando si scavalca un buco nel pavimento.",
		"Il nome di Thermaplugg salta fuori solo di sbieco, fra gli gnomi: «quello laggiù», «il consigliere», «quello col trono». A un ingranaggio rotto dicono di tutto, ma per lui le parole restano corte.",
	},
	["ifo.muse.w20.exile.004"] = {
		"Vicino all'Alto Inventore Mekkatorque gli gnomi si raddrizzano. Per uno gnomo vuol dire forse un dito d'altezza in più, e ciascuno ci mette tutto quello che ha.",
		"Quando passa l'Alto Inventore, gli gnomi di Tinker Town si sistemano gli occhialoni e si fanno alti quanto possono. Non è molta altezza. È moltissimo significato.",
	},
	["ifo.muse.w20.exile.005"] = {
		"si ferma al margine di un gruppetto di gnomi che ascoltano l'Alto Inventore Mekkatorque: parla senza appunti e senza mai alzare la voce, e lo sentono lo stesso.",
		"si arresta mentre il silenzio si allarga in un capannello di gnomi: parla Mekkatorque, rapido e semplice, di piani, e ogni ascoltatore annuisce ai numeri.",
	},
	["ifo.muse.w20.exile.006"] = {
		"Con molta cortesia, gli gnomi di questa città chiedono ai viaggiatori se sono passati vicino ai cancelli di Gnomeregan e cosa hanno visto. Ascoltano la risposta con tutta la faccia, sperando in un nome e temendolo.",
		"Ogni tanto uno gnomo chiede a un forestiero della strada a ovest di Kharanos e delle povere anime che vagano presso i vecchi cancelli. La domanda è sempre buttata lì. Le mani no.",
	},
	["ifo.muse.w20.exile.007"] = {
		"Quasi tutto, a Tinker Town, è appeso a dei ganci o montato su ruote. Gli gnomi la chiamano efficienza. È anche il modo esatto di arredare un posto che si intende lasciare, un giorno.",
		"Non vedo uno gnomo che abbia fatto un solo buco nella pietra dei nani. Scaffali con le gambe, lampade appese a catene, banchi con le rotelle: l'intero quartiere si potrebbe impacchettare tra un turno e l'altro.",
	},
	["ifo.muse.w20.exile.008"] = {
		"La gratitudine è una bella cosa, e ai nani ne dobbiamo una montagna. Ma è faticoso essere riconoscenti ogni singolo giorno. Mi piacerebbe, una volta, essere io a tenere aperta la porta.",
		"Qui diciamo grazie così spesso che i nani hanno cominciato a fare segno di lasciar perdere. Io continuo a dirlo. Il giorno che smetterò, vorrà dire che siamo a casa.",
	},
	["ifo.muse.w20.exile.009"] = {
		"I nani che hanno visto Gnomeregan prima della caduta la descrivono più con le mani che con le parole: ascensori che salivano come bolle in un boccale, lampade di ogni colore, porte che si aprivano prima che le toccassi. Poi le mani si abbassano.",
		"Chiedi a un nano che commerciava con Gnomeregan com'era, e ti parlerà prima del rumore, quello buono, una città intera che ronzava come una forgia ben tenuta. Poi resterà un po' a fissare la sua birra.",
		"I pochi nani che sono mai entrati a Gnomeregan abbassano ancora la voce per parlarne, come fanno per Grim Batol. Due città perdute, e Ironforge lì in mezzo.",
	},
	["ifo.muse.w20.exile.010"] = {
		"Se mai dovessi perdere una città, spero che sia vicino a dei nani.",
		"Perdere tutto, ma avere i nani per vicini. Agli gnomi è stato tolto moltissimo, ma non questo.",
	},
	["ifo.muse.w20.exile.011"] = {
		"I forestieri, gli gnomi non li studiano come fanno i nani. Troppo indaffarati, o troppo stanchi, dopo tutto quello che hanno perso, per badare a una faccia in più. A Tinker Town un travestimento dura di più.",
		"Un popolo intero cacciato da casa sua, a vivere da ospite. In questa città mi aspettavo dei nemici. Continuo a trovare profughi, e non so dove metterla, questa cosa.",
	},
	["ifo.muse.w20.exile.012"] = {
		"nota uno gnomo immobilizzarsi al banco quando un brontolio basso attraversa il pavimento, la chiave inglese a mezz'aria, finché un nano lì vicino borbotta «è solo il tram» e la chiave torna al lavoro.",
		"vede tutti gli gnomi di un lungo banco irrigidirsi a un colpo sordo da qualche parte sotto la pietra, e poi, uno alla volta, fare finta di niente.",
	},
	["ifo.muse.w20.exile.013"] = {
		"Su un unico grande foglio gli gnomi scampati stanno mettendo insieme quello che ricordano di Gnomeregan: un corridoio qui, una valvola là, ogni segno siglato da chi ne giura l'esattezza. Riprendersi una città comincia dal conoscerne i pavimenti.",
		"Esiste, a Tinker Town, una mappa di Gnomeregan messa insieme da cento ricordi, ogni stanza firmata dallo gnomo che ne ha garantito l'esattezza. Quando torneranno laggiù, torneranno con quella.",
	},
	["ifo.muse.w20.exile.014"] = {
		"scorge un bambino gnomo che attraversa la folla a cavalcioni sulle spalle di un nano, le mani strette all'elmo, a dare indicazioni.",
		"sorride a un nano che porta sulle spalle un piccolo gnomo in mezzo alla calca, lo gnomo che indica la strada e il nano che obbedisce senza una parola.",
	},
	["ifo.muse.w20.exile.015"] = {
		"Aggiustano le cose di tutti, gli gnomi, in questa città. Un giorno qualcuno dovrebbe aggiustare qualcosa di loro.",
		"Mezza Ironforge è stata riparata da uno gnomo, prima o poi. Mi piacerebbe vedere ricambiato il favore, possibilmente con un esercito.",
	},
	["ifo.muse.w20.folk.001"] = {
		"si ferma a guardare un muratore che passa il palmo nudo lungo la giuntura di un pilastro, piano, come un guaritore che cerca una frattura.",
		"nota un muratore con l'orecchio premuto contro una colonna, che la picchietta con una nocca e annuisce a qualunque cosa la pietra gli risponda.",
	},
	["ifo.muse.w20.folk.002"] = {
		"Passa un minatore appena smontato dal turno, con la lampada dell'elmo ancora accesa. Nessuno glielo dice. Ho il sospetto che nessuno glielo dica mai.",
		"I minatori risalgono dal profondo con le lampade ancora accese, come se non si fidassero del tutto che la città resti illuminata senza di loro.",
		"Un minatore fuori turno lo riconosci dalla polvere: nelle pieghe delle nocche, negli angoli degli occhi, nelle cuciture degli stivali. Un bagno la sposta e basta.",
	},
	["ifo.muse.w20.folk.003"] = {
		"sorride a una bambina nana che marcia lungo la sala con un martello di legno, picchiettando ogni pilastro che incontra e aggrottando la fronte al suono, proprio come fanno i muratori.",
		"gira attorno a un piccolo nano che saggia le lastre del pavimento una a una con un mazzuolo giocattolo, serissimo, mentre un genitore aspetta con la pazienza di chi ha fatto lo stesso.",
	},
	["ifo.muse.w20.folk.004"] = {
		"Invece di chinarsi, un nano si è seduto sul gradino più vicino per parlare con uno gnomo guardandolo dritto negli occhi. Una piccola cortesia. Ho visto re fare di meno.",
		"Per parlare con gli gnomi i nani non si chinano, l'ho notato. Si siedono. Un gradino, una cassa, un secchio rovesciato, qualunque cosa per portare gli occhi alla stessa altezza.",
		"Ho visto un nano accomodarsi su un secchio capovolto per finire una discussione con uno gnomo. Stava perdendo, ma almeno perdeva all'altezza giusta.",
	},
	["ifo.muse.w20.folk.005"] = {
		"Un nano mi ha chiesto cosa fabbrico. Non cosa faccio: cosa fabbrico. Ci sto ancora pensando.",
		"In questa città la prima domanda non è il tuo nome, è il tuo mestiere. Ho detto «un po' di tutto» e ho ricevuto uno sguardo pieno di compatimento.",
	},
	["ifo.muse.w20.folk.006"] = {
		"fa spazio a una nana che porta un rotolo di catena su una spalla come uno scialle, chiacchierando con un'amica come se non pesasse niente.",
		"vede una nana robusta trascinare un sacco di carbone su per una scala, due gradini a falcata, fermandosi in cima solo per finire la frase.",
	},
	["ifo.muse.w20.folk.007"] = {
		"A un banco un nano tiene fermo il pezzo e uno gnomo ci avvita le viti minuscole, senza guardarsi. Lavorano come le due mani di una persona sola.",
		"Mani grandi per tenere, mani piccole per montare. Ho visto un nano e uno gnomo aggiustare una serratura insieme senza una parola, e ci hanno messo meno di quanto ci avrebbe messo ciascuno da solo.",
		"Un banco da lavoro, un nano, uno gnomo e due opinioni, e le opinioni fanno a turno. In qualche modo la serratura viene aggiustata lo stesso.",
	},
	["ifo.muse.w20.folk.008"] = {
		"I nani non bussano, ci ho fatto caso. Si piazzano davanti alla porta, dicono il loro nome ad alta voce e aspettano. Una guardia mi ha spiegato che bussare è roba da chi ha qualcosa da nascondere.",
		"A Ironforge non si bussa. Un nano grida il suo nome sulla soglia e aspetta che gli dicano di entrare. Ci ho provato in una bottega e mi hanno applaudito.",
		"Ho sentito una gnoma annunciarsi alla porta di un nano col suo nome completo, e ci è voluto un po'. La porta si è aperta a metà.",
	},
	["ifo.muse.w20.folk.009"] = {
		"Tre nani mi hanno guardato gli stivali prima della faccia. Comincio a pensare che siano gli stivali a fare le presentazioni.",
		"Ogni nano che incrocio guarda prima i miei stivali. Li ho fatti pulire. Non è servito.",
	},
	["ifo.muse.w20.folk.010"] = {
		"osserva due giocatori chini su una tavola posata su una cassa rovesciata, un nano e uno gnomo, che fingono tutti e due di non vedere il capannello che scommette su di loro.",
		"si avvicina a una partita di pioli e sassolini giocata sul coperchio di un barile, dove una gnoma sta vincendo e il nano di fronte la prende con una calma eroica.",
		"segue una partita a sassi sul coperchio di una botte, il nano che sbatte giù ogni pedina come un colpo di martello, la gnoma che posa le sue come se potessero esplodere.",
	},
	["ifo.muse.w20.folk.011"] = {
		"Un conciatore canticchiava sulle sue cuciture finché non si è accorto che lo stavo ascoltando. Si è interrotto, mi ha fulminato con lo sguardo e ha ripreso appena gli ho dato le spalle.",
		"Qualcuno dietro una tenda canticchia le stesse quattro note da quando sono qui. Non è una canzone. È il suono di qualcuno che pensa con le mani.",
	},
	["ifo.muse.w20.folk.012"] = {
		"si appiattisce contro un pilastro mentre due cuochi passano con un cinghiale arrosto intero appeso a una stanga, seguiti a distanza educata da una piccola processione di nani pieni di speranza.",
		"fa spazio a due aiutanti di cucina che portano un cinghiale allo spiedo tra loro, e a uno gnomo che trotterella dietro col sugo come uno scudiero con lo stendardo.",
	},
	["ifo.muse.w20.folk.013"] = {
		"Nella maggior parte delle città i nani sono quelli bassi. Qui, accanto agli gnomi, possono guardare qualcuno dall'alto, e qualcuno di loro ci prende un po' troppo gusto.",
		"L'unica volta in cui ho visto un nano sembrare alto è stata mentre dava una pacca sulla testa a uno gnomo. La faccia dello gnomo fa capire che non succederà una seconda volta.",
	},
	["ifo.muse.w20.folk.014"] = {
		"Il mestiere di un nano si legge dalle mani. Nocche spaccate: un minatore. Palmi lucidi di vecchie bruciature: un fabbro. Nero sotto ogni unghia: gli armaioli, che sfregano e sfregano e perdono.",
		"Ho cominciato a indovinare i mestieri dalle mani. La gioielliera si è tradita tenendo il boccale con due dita, come se potesse graffiarsi.",
		"Inchiostro fino alla seconda nocca e un callo sul medio: uno scrivano dell'Explorers' League, o qualcuno che litiga con loro per iscritto.",
	},
	["ifo.muse.w20.folk.015"] = {
		"Quello gnomo ha ordinato una mezza pinta e una scaletta. L'oste gliele ha portate tutte e due senza battere ciglio. Vorrei sapere quanto spesso succede.",
		"Uno gnomo è appena salito su uno sgabello, poi sul bancone, e ha ordinato in piedi. Nessuno ha obiettato. Sospetto che sia una tradizione.",
	},
	["ifo.muse.w20.gadget.001"] = {
		"Un ingegnere di Tinker Town si riconosce dai due cerchi puliti intorno agli occhi, dove stavano gli occhialoni mentre tutto il resto si anneriva. Più è netto il contrasto, migliori sono le storie.",
		"Gli gnomi misurano l'esperienza altrui dai segni degli occhialoni: due anelli chiari in una faccia di fuliggine. Un inventore senza segni o ha molta fortuna o è molto, molto prudente.",
	},
	["ifo.muse.w20.gadget.002"] = {
		"Una gnoma sta costruendo un congegno per rimpicciolire le cose. I nani continuano a chiederle a cosa serva a uno gnomo. Lei risponde che non è per gli gnomi.",
		"Qualcuno a Tinker Town lavora a un congegno che rimpicciolisce. Ogni nano che lo viene a sapere fa un passo indietro dal banco.",
	},
	["ifo.muse.w20.gadget.003"] = {
		"Prima di una prova, lo gnomo del banco in fondo grida un numero. I vicini arretrano di altrettanti passi. Nessuno ha mai spiegato il sistema, e nessuno resta più vicino di quanto dica il numero.",
		"Quando una prova a Tinker Town finisce con un botto, nessuno alza la testa. Quando finisce senza botto, si girano tutti. È il silenzio il risultato che spaventa.",
		"I vicini di Tinker Town conoscono a memoria il ritmo delle prove: un sibilo, una pausa, un tonfo, e qualcuno che dice «interessante». È quell'«interessante» che svuota una stanza.",
	},
	["ifo.muse.w20.gadget.004"] = {
		"si scansa davanti a una pecora meccanica che attraversa il pavimento sferragliando con grande determinazione, seguita a rispettosissima distanza dallo gnomo che l'ha messa in moto.",
		"non può che fissare una pecora meccanica che emette un belato di latta e punta dritta contro un pilastro, mentre tre gnomi lì vicino prendono appunti invece di fermarla.",
	},
	["ifo.muse.w20.gadget.005"] = {
		"Lungo il confine di Tinker Town i nani tengono secchi di sabbia, e li riempiono senza dire una parola. È la cosa più delicata che abbia visto in questa città.",
		"Ci sono secchi di sabbia a ogni angolo dove Tinker Town incontra il resto della città. Nessuno ne parla. Qualcuno li tiene sempre pieni.",
	},
	["ifo.muse.w20.gadget.006"] = {
		"«I goblin costruiscono le cose perché esplodano» mi ha detto un inventore. «Gli gnomi le costruiscono perché funzionino.» Una pausa. «Poi esplodono. È diverso.»",
		"Fra gli gnomi, «roba da goblin» è la cosa peggiore che si possa dire di una macchina. Vuol dire che ha funzionato una volta, con gran fracasso, e che qualcuno è stato pagato.",
	},
	["ifo.muse.w20.gadget.007"] = {
		"nasconde un sorriso mentre uno gnomo mostra a un nano un boccale che si mescola da solo, e il nano lo guarda come si guarda una tassa nuova.",
		"sorprende un nano ad ascoltare educatamente uno gnomo che gli propone una caraffa che si raffredda da sé, per poi versare la birra in un boccale qualunque e andarsene.",
	},
	["ifo.muse.w20.gadget.008"] = {
		"Dietro un'officina c'è uno scaffale di fallimenti, ognuno con un cartellino che dice cosa è andato storto. Gli gnomi la chiamano la biblioteca. È l'unica biblioteca di Ironforge dove i libri sono bruciacchiati.",
		"Un'inventrice conserva ogni macchina che l'abbia mai tradita, con cartellino e data, su scaffali fino al soffitto. I fallimenti, dice, sono la parte cara dell'istruzione, e intende farseli rendere fino all'ultimo spicciolo.",
	},
	["ifo.muse.w20.gadget.009"] = {
		"Uno gnomo ha appena cercato di vendermi un grembiule ignifugo e, subito dopo, una pipa che si accende da sola. Rispetto il modello d'affari.",
		"Guanti ignifughi su un tavolo, candele che si accendono per conto loro su quello accanto. Qualcuno a Tinker Town ha capito come funziona il mercato.",
	},
	["ifo.muse.w20.gadget.010"] = {
		"Un mechanostrider è parcheggiato contro un muro con le zampe ripiegate, e ticchetta piano mentre si raffredda. Un bambino nano gli accarezza il collo come a un pony, e lui inclina la testa: forse è una funzione prevista, forse no.",
		"I mechanostrider parcheggiati stanno accucciati in fila come uccelli appollaiati, e ognuno ticchetta col suo ritmo mentre il metallo si assesta. I padroni li hanno lasciati come si lascia un cavallo: con una pacca.",
	},
	["ifo.muse.w20.gadget.011"] = {
		"guarda passare una gnoma con un marchingegno legato sulla schiena: un braccio d'ottone che le scavalca la spalla e le porge gli attrezzi prima che li chieda, quasi sempre quelli giusti.",
		"per poco non si prende una chiave inglese in un orecchio da un braccio meccanico montato sullo zaino di uno gnomo, che la passa in avanti al padrone con un piccolo svolazzo.",
	},
	["ifo.muse.w20.gadget.012"] = {
		"C'è un congegno, a Tinker Town, che per quel che capisco serve solo a segnalare se il congegno accanto funziona. Un terzo congegno tiene d'occhio quello.",
		"Macchine che sorvegliano macchine: un campanello che suona se la caldaia si ferma, una levetta che scatta se il campanello smette di suonare. In fondo a quella catena, immagino, c'è uno gnomo molto tranquillo.",
		"L'allarme di una gnoma è suonato perché il suo altro allarme si era fermato. Lei sembrava felicissima: la prova, ha detto, che il sistema funziona.",
	},
	["ifo.muse.w20.gadget.013"] = {
		"Da quando sono arrivati gli gnomi, metà dei mantici della città tira meglio, e nessun fabbro nostro lo dirà ad alta voce. Li ringrazieremo come si deve quando smetteranno di avere ragione su tutto.",
		"Una pompa delle sale basse, che i nostri ingegneri maledicevano da una generazione, l'hanno sistemata gli gnomi. Abbiamo offerto loro un giro e cambiato discorso. L'orgoglio è un peso difficile da posare.",
	},
	["ifo.muse.w20.gadget.014"] = {
		"si ferma qui a Tinker Town davanti a un congegno che apre e chiude uno sportellino d'ottone, apri, chiudi, apri, chiudi, mentre uno gnomo ne controlla ogni tanto il contatore e annota un numero con enorme soddisfazione.",
		"indugia accanto a una macchinetta che piega avanti e indietro lo stesso cardine senza sosta, accanto a un contatore nell'ordine delle decine di migliaia. Lo gnomo che la sorveglia sembra trovarla la cosa più emozionante del quartiere.",
	},
	["ifo.muse.w20.gauge.001"] = {
		"In un angolo di Tinker Town c'è un ago appoggiato a un tamburo fissato alla roccia viva, in ascolto di scavi dal basso. Nessuno ammette di sorvegliarlo. Tutti gli danno un'occhiata passando.",
		"Uno gnomo ha fissato alla pietra viva un piccolo tamburo d'ascolto, il cui ago sobbalza a ogni carrello e a ogni martello della città. È lì per l'unico suono che nessuno vuole sentire due volte: qualcosa che sale da sotto.",
		"Il tamburo d'ascolto di Tinker Town ha sempre uno gnomo seduto accanto, a ogni ora. Non perché qualcuno l'abbia ordinato. Perché nessuno sopportava di lasciarlo da solo.",
	},
	["ifo.muse.w20.gauge.002"] = {
		"Ogni caldaia di Tinker Town ha un manometro con una linea rossa. Su uno ce n'è una seconda, dipinta un po' più su della prima, e accanto, a lettere minuscole, la parola «davvero».",
		"I manometri delle caldaie gnomesche hanno tacche rosse, e alcune tacche rosse hanno a loro volta tacche rosse. Ho deciso di non chiedere del terzo tipo.",
		"Le caldaie gnomesche hanno manometri, i manometri hanno finestrelle di vetro, e dietro una di queste qualcuno ha infilato un biglietto: «se riesci a leggere questo, fai un passo indietro».",
	},
	["ifo.muse.w20.gauge.003"] = {
		"guarda uno gnomo picchiettare con un'unghia il vetro di un manometro, aspettare, picchiettare ancora e andarsene soddisfatto, anche se per quanto si possa vedere la lancetta non si è mossa.",
		"vede una gnoma fermarsi accanto a una caldaia che sibila, battere due volte le nocche sul quadrante, annuire a quello che le ha detto e proseguire.",
	},
	["ifo.muse.w20.gauge.004"] = {
		"Chiedi a un nano quanto manca alla banca e ti dirà «un bel pezzo». Chiedilo a uno gnomo e te lo darà in passi, poi lo correggerà in base alle tue gambe.",
		"A spanne, a boccali e a «più o meno così»: così misurano i nani. Gli gnomi in frazioni troppo sottili per l'occhio. Eppure, fra tutti e due, il tram l'hanno costruito.",
	},
	["ifo.muse.w20.gauge.005"] = {
		"Mi dicono che a Tinker Town tarano le bilance più fini su una sola moneta d'oro nanica, perché a Ironforge niente è pesato con più scrupolo dell'oro dei nani.",
		"Una gnoma controlla la sua bilancia a ogni inizio turno con una moneta nanica. Non gnomesca. Dice che i nani hanno già fatto la parte difficile, cioè assicurarsi che sia esatta.",
	},
	["ifo.muse.w20.gauge.006"] = {
		"I nani si fidano del colore del metallo. Gli gnomi della lancetta sul quadrante. Io mi fido di chi sta più indietro.",
		"Il fabbro legge il calore a occhio, l'inventore sul quadrante. Quando si tirano indietro tutti e due insieme, mi ci tiro anch'io.",
	},
	["ifo.muse.w20.gauge.007"] = {
		"Alcuni sopravvissuti di Tinker Town giurano che gli strumenti profondi di Gnomeregan sobbalzavano da settimane prima che i troggs sfondassero. Che sia vero o solo il dolore in cerca di un perché, qui nessuno ignora più una lancetta che trema.",
		"Ai banchi si racconta sottovoce che i manometri più bassi di Gnomeregan avessero dato l'allarme molto prima dell'arrivo dei troggs, e che nessuno li avesse letti in tempo. Vero o no, ogni gnomo del quartiere legge ogni quadrante due volte.",
	},
	["ifo.muse.w20.gauge.008"] = {
		"tiene d'occhio una gnoma in piedi in cima al passaggio del tram con un contatore d'ottone nel palmo, che fa scattare una volta per ogni viaggiatore che sale, anche se nessuno sembra averglielo chiesto.",
		"nota uno gnomo accanto al passaggio del tram con due contatori che scattano: uno per ogni arrivo, uno per ogni gnomo tra gli arrivati. Il secondo scatta molto più di rado.",
	},
	["ifo.muse.w20.gauge.009"] = {
		"Tra la folla, una gnoma cronometra il brindisi di un nano con un orologino d'ottone. Quattro minuti, per ora. Più che annoiata, sembra scientificamente deliziata.",
		"Qualcuno ha portato un cronometro al discorso d'addio di un nano. La gnoma che lo tiene sussurra il totale ai vicini, che hanno cominciato a scommettere.",
	},
	["ifo.muse.w20.gauge.010"] = {
		"Senza volerlo, misuro ogni sala di Ironforge con quelle di casa. Troppo alta, troppo larga, troppo rossa. Belle sale. Numeri sbagliati.",
		"Mi sorprendo a misurare a passi le stanze dei nani e a confrontarle con quelle di Gnomeregan. I nani costruiscono più in grande. Non mi è mai sembrato di più.",
	},
	["ifo.muse.w20.gauge.011"] = {
		"Con un termometro in cima a una lunga pertica, una gnoma cerca di misurare il calore della Great Forge. I fabbri la guardano con grande gentilezza e continuano a provare il ferro alla vecchia maniera, sputandoci sopra.",
		"Mettere dei numeri sulla Great Forge, ecco cosa vogliono gli gnomi: quanto è calda, quanto è veloce, quanto. I fabbri li lasciano fare, come si lascia un bambino misurare il mare con una tazza.",
	},
	["ifo.muse.w20.gauge.012"] = {
		"Quattro gradi fuori squadra: così sto in piedi, mi ha appena detto uno gnomo. Non sapevo di avere dei gradi.",
		"Secondo un inventore con una livella a bolla, pendo leggermente a sinistra. Cammino così da anni e nessuno aveva gli strumenti per dirlo.",
	},
	["ifo.muse.w20.gauge.013"] = {
		"È tardi, ma Tinker Town non se n'è accorta. Gli gnomi seguono gli orari di quello che stanno costruendo, e adesso, a sentire il rumore, qualcosa è quasi finito.",
		"A quest'ora le forge sono passate al turno di notte, ma Tinker Town non ha turni. Uno gnomo lavora finché la cosa funziona, e poi dorme dove si trova.",
	},
	["ifo.muse.w20.gauge.014"] = {
		"Mai dire «circa» a Tinker Town. Ho detto che una cassa pesava circa sei chili e una gnoma mi ha guardato come se le avessi sputato sui progetti.",
		"Lezione imparata fra gli gnomi: «grossomodo» non è un numero. Me l'hanno spiegato in tre, tutti insieme.",
	},
	["ifo.muse.w20.gauge.015"] = {
		"Qui a Tinker Town i tubi corrono lungo ogni parete e sopra ogni porta, e gli gnomi li riconoscono tutti dal suono: il gorgoglio, il ticchettio, il colpo lento di una valvola da controllare.",
		"Tubi ovunque in questo quartiere, imbullonati alla pietra dei nani in file ordinate da gnomi. Ci posi una mano e lo trovi tiepido, o fresco, o con un leggero tremito, come una cosa che ha un'opinione.",
	},
	["ifo.muse.w20.grudge.001"] = {
		"Dei loro rancori i nani parlano al presente. «I Dark Iron imbrogliano», mi ha detto un vecchio minatore, a proposito di una guerra combattuta ben prima che nascesse suo nonno.",
		"Ascolta un nano parlare della guerra dei clan e fai caso ai tempi dei verbi: niente è stato fatto, tutto si sta facendo, ancora adesso, da gente morta da secoli.",
	},
	["ifo.muse.w20.grudge.002"] = {
		"nota che il nano accanto a {g:lui|lei}, alle parole «Dark Iron», sputa con cura di lato senza interrompere la frase.",
		"sente pronunciare «Dark Iron» alla balaustra accanto, e vede tre nani posare i boccali tutti insieme, come se da qualche parte una porta si fosse spalancata di colpo.",
	},
	["ifo.muse.w20.grudge.003"] = {
		"Non tutti i rancori tra clan pesano uguale. Contro i Dark Iron è ferro; contro i Wildhammer è più come un vecchio stivale, consumato e morbido, e riguarda soprattutto le buone maniere.",
		"I Bronzebeard serbano ancora rancore ai Wildhammer, ma di quello comodo, che si tira fuori per brontolare un po' e poi si rimette a posto. L'altro rancore non lo mettono mai via.",
	},
	["ifo.muse.w20.grudge.004"] = {
		"Dite «Dark Iron» in questa città e guardate la stanza raffreddarsi. Notevole, con la forgia accesa a pieno regime.",
		"Il modo più rapido per chiudere una chiacchierata allegra a Ironforge? Nominare Blackrock.",
	},
	["ifo.muse.w20.grudge.005"] = {
		"Non tutti i rancori qui sono guerre di clan. Due fabbri che incrocio non si parlano da anni per uno scalpello prestato, e tutti e due tengono ancora un posto libero sul banco per lui.",
		"Certi rancori a Ironforge sono più piccoli di un ditale e più vecchi della banca. Me ne hanno raccontato uno per uno scalpello prestato: al nipote di chi l'aveva dato spetta ancora.",
		"La grande faida dei clan si prende le canzoni, ma la città vive di quelle piccole: uno scalpello, uno sgabello, una bancarella spostata di un palmo a sinistra due generazioni fa.",
	},
	["ifo.muse.w20.grudge.006"] = {
		"Grim Batol fu maledetta e lasciata vuota, e poi, nella Seconda Guerra, gli orchi si sistemarono nelle sue sale come bestiame in un fienile. I nani ne parlano ancora a denti stretti.",
		"Prima una maledizione, poi gli orchi, a dormire in sale scavate dai nani. Di tutto ciò che si è perso nella Seconda Guerra, Grim Batol sembra quello che i vecchi soldati di questa città digeriscono peggio.",
	},
	["ifo.muse.w20.grudge.007"] = {
		"Una città che serba rancore per secoli, e io ci cammino in mezzo. Mi piacerebbe credere che abbiano dimenticato la Seconda Guerra. So che non è così.",
		"Ogni nano qui ha una storia del nonno sugli orchi in Khaz Modan. Tengo il cappuccio alzato e la voce bassa, e non mi fermo a lungo da nessuna parte.",
	},
	["ifo.muse.w20.grudge.008"] = {
		"sorprende un anziano nano a fissare torvo la schiena di un mercante, con la pazienza di chi guarda storto quella famiglia da moltissimo tempo.",
		"vede due nani incrociarsi su una scala con un cenno così rigido che quasi scricchiola; qualunque cosa ci sia tra le loro famiglie, è stata sistemata tanto tempo fa e mai perdonata.",
	},
	["ifo.muse.w20.grudge.009"] = {
		"Una gentilezza, un nano la ricorda esattamente quanto un insulto. È questo che li rende nemici terribili, e i migliori amici con cui si possa essere in debito.",
		"La stessa memoria che conserva un rancore per secoli conserva un favore altrettanto bene. So bene in quale elenco preferirei stare.",
	},
	["ifo.muse.w20.grudge.010"] = {
		"Certi nani sembrano odiare i Dark Iron con più costanza di quanta ne mettano nell'amare qualunque altra cosa. Mi chiedo che suono avrebbe questa città, se mai posasse quel peso.",
		"Un rancore lungo secoli va nutrito. A volte mi chiedo cosa farebbero i nani di tutto quel ferro che hanno dentro, se i Dark Iron chiedessero mai scusa.",
	},
	["ifo.muse.w20.grudge.011"] = {
		"Promemoria: mai avere debiti di soldi con un nano. E nemmeno di scuse. Gli interessi su quelle sono peggio.",
		"Devi una moneta a un nano e te lo ricorderà lui. Gli devi delle scuse e te lo ricorderanno i suoi nipoti.",
	},
	["ifo.muse.w20.grudge.012"] = {
		"sente un nano sbattere l'alluce contro un gradino e imprecare «Thaurissan!», come se l'imperatore l'avesse messo lì di persona.",
		"nasconde un sorriso mentre un fabbro si lascia cadere le tenaglie su un piede e maledice i Dark Iron, tutti quanti, per clan e per nome, piuttosto a lungo.",
		"vede un nano lasciarsi sfuggire una cassa, riprenderla al volo e borbottare cupo contro Blackrock lo stesso, per quella che sembra pura abitudine.",
	},
	["ifo.muse.w20.grudge.013"] = {
		"I nani hanno combattuto gli orchi e ne parlano con l'antipatia di un soldato. Dei Dark Iron parlano in un altro modo, come si parla di un fratello che ha venduto la casa.",
		"Un orco è un nemico; un Dark Iron è un tradimento. Non avevo capito la differenza finché non ho sentito un nano dire le due parole nella stessa frase.",
	},
	["ifo.muse.w20.grudge.014"] = {
		"Ho chiesto a un nano se serbasse qualche rancore. Mi ha chiesto quanto tempo avevo.",
		"Ho domandato a un nano dei suoi rancori. Mi ha avvicinato un secondo sgabello, e l'ho preso come un brutto segno.",
	},
	["ifo.muse.w20.haggle.001"] = {
		"Per contrattare con un nano le lodi non servono. Devi trovare un difetto nella merce, piccolo e onesto, e nominarlo con rispetto. Lui discuterà, e poi toglierà un rame perché l'hai ascoltato.",
		"Il trucco con i mercanti nani, mi ha detto uno gnomo, è criticare il lavoro esattamente come farebbe un collega fabbro. Troppo duro e ti caccia. Giusto, e abbassa il prezzo perché tu ritiri la critica.",
	},
	["ifo.muse.w20.haggle.002"] = {
		"Un mercante nano non accetta meno. Chiediglielo e ti aggiungerà qualcosa: una cinghia, una fibbia di ricambio, una scatoletta di grasso, finché il banco è coperto e il prezzo non si è mosso di un capello.",
		"Ho chiesto un prezzo migliore e ho avuto un fagotto migliore. Stessa moneta, più uno straccio per l'olio, più un borsello, più consigli sullo straccio. Chissà come, mi sembra di aver vinto.",
	},
	["ifo.muse.w20.haggle.003"] = {
		"si ferma ad ascoltare un nano e uno gnomo che contrattano un rotolo di filo di rame, ciascuno giurando che l'altro è un ladro, tutti e due chiaramente divertiti come non mai.",
		"si sofferma accanto a un nano e a uno gnomo che trattano su un rotolo di filo, le voci che salgono e scendono come in un duetto ben provato, senza la minima fretta di mettersi d'accordo.",
	},
	["ifo.muse.w20.haggle.004"] = {
		"Il tuo prezzo è onesto. Il mio borsello non è d'accordo, e l'ultima parola spetta a lui.",
		"Pagherei volentieri. Purtroppo conosco il mio borsello.",
		"Bel prezzo. Lo dico al borsello; forse è meglio che prima si sieda.",
	},
	["ifo.muse.w20.haggle.005"] = {
		"Un bottegaio nano ti dice il prezzo, poi quanti anni durerà la cosa, e aspetta. Dovresti dividere l'uno per l'altro e vergognarti di aver contrattato.",
		"«Trenta argenti» dice il nano, «e ti sopravvivrà.» Il conto lo lascia fare a me. E il conto gli dà ragione.",
	},
	["ifo.muse.w20.haggle.006"] = {
		"Nel Commons un'offerta rifiutata non è un'offesa. Un'offerta rifiutata senza controproposta, sì. Ci ho messo un po' a capire quale silenzio vuol dire «riprova» e quale vuol dire «vattene».",
		"Un nano che dice no e fa un prezzo ti sta ancora parlando. Un nano che dice no e si rimette a lucidare il banco ha chiuso con te del tutto.",
	},
	["ifo.muse.w20.haggle.007"] = {
		"assiste alla fine di una lunga trattativa senza una parola: compratore e venditore smettono di colpo, si guardano e annuiscono una volta, nello stesso identico istante.",
		"vede concludere un affare in silenzio, il nano dietro il banco e lo gnomo davanti che fanno ciascuno un breve cenno del capo, come se fosse suonata una campana che sentono solo loro.",
	},
	["ifo.muse.w20.haggle.008"] = {
		"Mi ha battuto a sospiri. Non sapevo che si potesse vincere così, e adesso la lezione l'ho pagata.",
		"Trattativa persa solo a forza di sospiri. I suoi erano più profondi. Anni di allenamento, si vede.",
		"Mai contrattare con un nano che sospira di pancia. Contro un sospiro così profondo non si vince.",
	},
	["ifo.muse.w20.haggle.009"] = {
		"Con una mercante gnoma conviene lasciarle spiegare l'oggetto. Quando ha finito lo capisci alla perfezione, e il prezzo sembra piccolo accanto a tutta quella spiegazione.",
		"Mai contrattare con una gnoma prima che abbia finito di descrivere la merce. Dopo non ne avrai più voglia: il prezzo sembrerà un compenso modesto per la lezione.",
	},
	["ifo.muse.w20.haggle.010"] = {
		"Ogni nano del Commons sta contando qualcosa: monete, casse, forestieri. Io tengo il cappuccio basso, la voce più bassa ancora, e mi sforzo tantissimo di sembrare una cassa.",
		"Nel mercato del nemico, cappuccio calato. Contratto ogni rame apposta. Nessuno sospetta di chi fa tante storie per una fibbia.",
	},
	["ifo.muse.w20.haggle.011"] = {
		"La trattativa più lunga che abbia visto a Ironforge riguardava un solo chiodo di ferro. È andata avanti finché entrambe le parti hanno finito gli argomenti, ed è finita in pareggio e in un giro di bevute che costava più del chiodo.",
		"Due nani hanno trattato su un chiodo per un quarto d'ora. Nessuno ha ceduto di un pollice. Alla fine si sono divisi il prezzo del chiodo, e poi hanno litigato su chi avrebbe offerto la birra.",
	},
	["ifo.muse.w20.haggle.012"] = {
		"Dieci minuti di trattativa per risparmiare due rame. Valevano ognuno dei dieci minuti, direi.",
		"Risparmiato un argento contrattando. Speso per festeggiare. Ironforge le sue monete se le riprende sempre, in un modo o nell'altro.",
	},
	["ifo.muse.w20.haggle.013"] = {
		"I mercanti nani contrattano ancora con noi gnomi come se forse non potessimo pagare. Possiamo. Ci piace solo guardarli essere delicati, prima di smontarli pezzo per pezzo sul prezzo.",
		"I nani addolciscono la voce quando uno gnomo si avvicina al banco, per gentilezza, da quando abbiamo perso Gnomeregan. Dura finché non si comincia a trattare. Da lì in poi siamo solo clienti, e molto bravi.",
	},
	["ifo.muse.w20.hammer.001"] = {
		"La Guerra dei Tre Martelli. Solo i nani potevano dare a una guerra civile il nome dei loro attrezzi. Del resto, si combatteva per decidere chi si teneva la bottega.",
		"Tre clan, tre martelli, una montagna. Le cronache la chiamano guerra di successione. A me sembra una lite su chi dovesse tenere le chiavi di casa.",
	},
	["ifo.muse.w20.hammer.002"] = {
		"Come la raccontano i cronisti, la guerra cominciò come cominciano tutte: morì un vecchio re supremo, e tre clan ricordarono ciascuno a modo suo le sue volontà.",
		"Un re supremo sepolto, e tre clan in piedi davanti alla tomba, ognuno sicuro che il trono spettasse a lui. È così che cominciano sempre le storie di questa città.",
	},
	["ifo.muse.w20.hammer.003"] = {
		"Chiedi a un tagliapietre di Ironforge di Grim Batol e ti risponde con meno parole del solito. La pietra di laggiù, sostengono i tagliapietre, è pietra con cui nessuno dovrebbe costruire.",
		"Nessun nano di questa città metterebbe in un muro un blocco cavato a Grim Batol, mi dicono, a nessun prezzo. Un popolo che scaverebbe il dente di un drago se contenesse minerale non tocca quella roccia.",
	},
	["ifo.muse.w20.hammer.004"] = {
		"sente due vecchi minatori litigare su quale clan colpì per primo nella Guerra dei Tre Martelli, accesi come se ci fossero stati di persona.",
		"coglie la fine di una discussione a una balaustra: chi cominciò la guerra tra i clan, secoli fa, e l'avo di chi se la diede a gambe. Nessuno dei due nani cede di un dito.",
		"ascolta, {g:divertito|divertita}, un nano che pianta un dito nel petto dell'amico per una battaglia più vecchia della banca, e l'amico che ricambia, per la stessa identica battaglia.",
	},
	["ifo.muse.w20.hammer.005"] = {
		"Ogni sala di questa città fu vinta in una guerra tra cugini. I nani le tengono in modo splendido. Forse è un modo di chiedere scusa.",
		"I Bronzebeard strapparono queste sale ai loro stessi parenti. Ne lucidano ogni palmo, come si cura una cosa che è costata troppo.",
		"Sale bellissime, e ognuna è un trofeo strappato alla famiglia. Mi chiedo se i nani ci pensino mai, mentre strofinano i gradini.",
	},
	["ifo.muse.w20.hammer.006"] = {
		"Tre clan, un trono. Qualcuno avrebbe dovuto fare i conti prima di tirare fuori i martelli.",
		"Una montagna, una corona, tre clan. Persino uno gnomo gli avrebbe detto che i conti non tornavano.",
	},
	["ifo.muse.w20.hammer.007"] = {
		"In quella guerra i Dark Iron mandarono una maga contro Grim Batol. Morì davanti alle sue porte, e gli anziani dicono che quello che era entrò nella pietra e ci rimase.",
		"Gli anziani raccontano di una maga dei Dark Iron caduta a Grim Batol, che la contaminò morendo. I Wildhammer vinsero quella battaglia e persero comunque la fortezza.",
	},
	["ifo.muse.w20.hammer.008"] = {
		"A Ironforge la guerra dei clan ha un solo cattivo. Ad Aerie Peak, scommetto, ne ha due. E da qualche parte sotto Blackrock la raccontano senza cattivi, solo con dei torti subiti.",
		"Ogni clan ha la sua versione dei Tre Martelli. In questa città furono i Dark Iron a colpire per primi. Mi piacerebbe sentirla raccontare dai Wildhammer, a distanza di sicurezza.",
		"Una sola guerra, tre racconti, e ognuno finisce col clan di chi parla dalla parte della ragione. Sotto questa montagna la storia dipende dalla porta a cui bussi.",
	},
	["ifo.muse.w20.hammer.009"] = {
		"conta quattro martelli tra una porta e quella dopo: due scolpiti nell'architrave, uno fuso in una staffa da lampada, uno nel pugno di una guardia di passaggio.",
		"comincia a vedere martelli dappertutto, appena ci fa caso: sulle staffe, sulle borchie delle porte, sulle fibbie delle guardie, come se la città firmasse ogni cosa.",
		"si ferma sotto un arco dove due martelli incrociati sono scolpiti così a fondo che la luce delle lampade si raccoglie nei solchi.",
	},
	["ifo.muse.w20.hammer.010"] = {
		"guarda un vecchio nano spiegare la Guerra dei Tre Martelli a un cerchio di bambini con tre boccali su una panca; alla fine uno viene rovesciato, tra gli applausi.",
		"si attarda mentre un barbagrigia mette in scena la guerra dei clan per una frotta di ragazzini: i pugni sono i Bronzebeard, uno stivale i Wildhammer e un vasetto di fuliggine, minacciosamente, i Dark Iron.",
	},
	["ifo.muse.w20.hammer.011"] = {
		"Prima della guerra, secondo i vecchi resoconti, i tre clan vivevano tutti sotto questa montagna. Provo a immaginarli: Wildhammer, Dark Iron e Bronzebeard gomito a gomito alla stessa balaustra. Non ci riesco fino in fondo.",
		"Un tempo queste stesse sale erano divise fra tre clan. Percorrendole, mi sorprendo a cercare le porte che usavano gli altri due, e a chiedermi chi le abbia murate.",
	},
	["ifo.muse.w20.hammer.012"] = {
		"Quando i Dark Iron li attaccarono entrambi, Bronzebeard e Wildhammer si schierarono insieme e vinsero. Poi, come raccontano gli storici, si strinsero la mano e se ne andarono subito a vivere ben lontani.",
		"I clan che si erano contesi questa montagna chiusero quella guerra fianco a fianco, contro il terzo. È quanto di più simile a una pace abbia mai prodotto la vecchia lite, e regge ancora, più o meno.",
	},
	["ifo.muse.w20.hound.001"] = {
		"scavalca con cautela il lupo di un cacciatore disteso davanti alla porta degli istruttori dei cacciatori, che batte la coda sulla pietra una volta sola, in segno di saluto, e basta.",
		"si scosta mentre un grosso gatto pallido dei pendii alti esce dalla sala dei cacciatori dietro il suo nano, silenzioso in mezzo alla folla che sferraglia.",
	},
	["ifo.muse.w20.hound.002"] = {
		"Gli istruttori dei cacciatori parlano agli allievi e alle loro bestie con la stessa identica voce. Le bestie ascoltano meglio.",
		"Nella sala dei cacciatori gli istruttori si rivolgono al cacciatore e poi, con tutta serietà, alla bestia. Dei due, solo uno ribatte.",
		"Un istruttore dei cacciatori ha appena detto al gatto di un allievo che se la cava benissimo. L'allievo aspetta di sentirselo dire.",
	},
	["ifo.muse.w20.hound.003"] = {
		"Da qualche parte vicino agli istruttori dei cacciatori, sotto il fumo del carbone, la città sa di pelo bagnato e carne cruda. È l'unico angolo di Ironforge che sa di fuori.",
		"Carbone, olio, ferro caldo, e poi, girato un angolo, un sentore di paglia e di animale. I cacciatori si portano un po' di selvatico sotto la montagna, che alla montagna piaccia o no.",
	},
	["ifo.muse.w20.hound.004"] = {
		"Il gatto di quel cacciatore mi fissa da quando sono {g:passato|passata} per la sala. Mi piace pensare che sia ammirazione.",
		"Il lupo di qualcuno mi ha appena annusato gli stivali con grande scrupolo e se n'è andato per niente colpito. Maleducato, ma giusto.",
		"L'orso di un cacciatore ha deciso che ho un odore interessante. Io ho deciso di restare immobile finché non cambia idea.",
	},
	["ifo.muse.w20.hound.005"] = {
		"Un cacciatore nano divide un pasticcio di carne con il suo orso, un morso per uno, facendo i conti ad alta voce perché nessuno resti fregato.",
		"Una cacciatrice si accovaccia a togliere un sassolino dalla zampa del suo gatto, mormorandogli piano tutto il tempo. Il gatto la lascia fare. Intorno a loro la città passa senza rallentare.",
	},
	["ifo.muse.w20.hound.006"] = {
		"Ogni tanto un cacciatore attraversa il Military Ward da solo, con l'aria di chi continua ad abbassare lo sguardo verso uno spazio accanto al ginocchio, dove prima camminava qualcosa.",
		"Gli istruttori dei cacciatori capiscono, appena un cacciatore entra, se la bestia ai suoi piedi è la stessa dell'ultima volta. Dell'altra non chiedono mai. Fanno solo un cenno un po' più lungo.",
	},
	["ifo.muse.w20.hound.007"] = {
		"si attarda a guardare un nano che spazzola il pelo di un enorme lupo grigio, e i ciuffi persi scivolano sul pavimento: gli spazzini li inseguiranno per giorni.",
		"si accosta a un cacciatore che toglie le lappole dal fianco di un orso, e l'orso si appoggia a ogni passata con la beata pesantezza di un sacco di grano.",
	},
	["ifo.muse.w20.hound.008"] = {
		"Ho visto un cacciatore nel Military Ward cercare di insegnare a un cinghiale a sedersi. Il cinghiale ha ottime maniere, per essere un cinghiale, e nessuna prevede di sedersi.",
		"Al cinghiale di un cacciatore stanno insegnando ad aspettare sulla soglia. Aspetta benissimo, finché qualcuno vicino alla taverna non fa cadere una salsiccia.",
		"Il gatto di un cacciatore ha imparato ad aprire il chiavistello della stalla. Lo stalliere ha imparato qualche parola nuova.",
	},
	["ifo.muse.w20.hound.009"] = {
		"I cacciatori nani escono con un fucile in spalla e una bestia alle calcagna, e fra tutti e due tengono a bada i troggs sulle colline.",
		"I cacciatori che si addestrano in questa città escono dal portone con un fucile e una bestia, e tornano dopo aver guastato i piani dei troggs. Nessuno ci scrive canzoni. Finisce nei rapporti delle guardie, che per un nano vale di più.",
	},
	["ifo.muse.w20.hound.010"] = {
		"Sono {g:passato|passata} accanto alle bestie di tre cacciatori, e adesso ne porto addosso un po' di ciascuna.",
		"Pelo sulle maniche, pelo sugli stivali. Le bestie dei cacciatori di Ironforge lo perdono con generosità.",
		"Ironforge: dove le bestie dei cacciatori sono più delle sedie, e vincono ogni discussione al riguardo.",
	},
	["ifo.muse.w20.hound.011"] = {
		"Ogni bestia da caccia di questa città alza la testa quando passo. I nani non se ne accorgono. Le bestie sì.",
		"Il lupo di un nano mi ha {g:seguito|seguita} con le orecchie dritte per tutta la sala. Il suo padrone non si è mai voltato. Se in questa città mi scopriranno, sarà qualcosa con un naso.",
	},
	["ifo.muse.w20.hound.012"] = {
		"I cacciatori nani dicono che una bestia addomesticata sui pendii di Dun Morogh non si abitua mai del tutto al caldo della forgia: nei giorni più gelidi, giurano, va a stendersi vicino al portone, col muso verso lo spiffero.",
		"Gli istruttori dei cacciatori dicono che una bestia non la scegli mai: è lei a decidere se sopportarti. A guardare il groviglio di pelo e di caratteri davanti alla loro porta, ci credo.",
	},
	["ifo.muse.w20.hound.013"] = {
		"guarda il grosso gatto di un cacciatore stendersi piatto su un tratto di pavimento caldo vicino ai canali di metallo fuso, la pancia al calore, sordo ai richiami del padrone.",
		"scavalca la coda dell'orso di un cacciatore che si è preso la pietra più calda accanto a un canale di metallo fuso e ha tutta l'aria di volersela tenere.",
	},
	["ifo.muse.w20.hours.001"] = {
		"aggira uno spazzino che sparge segatura sull'acqua di neve dietro l'ingresso, dove ogni paio di stivali in arrivo dal portone lascia la sua parte di neve.",
		"si tiene alla larga da un nano che asciuga le pozzanghere dietro l'ingresso alla stessa velocità con cui la neve degli stivali le rifà, e perde, di buon umore.",
	},
	["ifo.muse.w20.hours.002"] = {
		"Un nanetto è appena corso dentro dal portone con una palla di neve fra le mani come un tesoro, per mostrarla a qualcuno. Quando l'ha trovato, aveva solo una mano bagnata e una faccia perplessa.",
		"Un bambino ha fatto passare di contrabbando una palla di neve sotto il naso delle guardie. È arrivata quasi alla banca prima che il caldo delle sale se la prendesse, e il bambino l'ha pianta a gran voce.",
	},
	["ifo.muse.w20.hours.003"] = {
		"fa posto accanto alla prima lampada a una guardia appena rientrata dal portone, la neve pressata nelle pieghe del mantello, che resta lì a gocciolare in silenzio per un po', come un disgelo con l'elmo.",
		"vede un montanaro entrare battendo i piedi, sopracciglia e barba incrostate di neve, che si scioglie mentre cammina, finché alla banca arriva soltanto umido.",
	},
	["ifo.muse.w20.hours.004"] = {
		"Fuori nevica, e tutta la città sa di lana bagnata. Su ogni panca vicino a una forgia c'è un mantello steso che fuma e il suo padrone accanto, zitto, a scongelarsi.",
		"Pare che nevichi forte. Si capisce senza chiedere: ogni angolo caldo è occupato da qualcuno in un mantello umido, che fuma piano come un budino.",
	},
	["ifo.muse.w20.hours.005"] = {
		"Dal portone dicono che sopra Dun Morogh infuria una tempesta. Qui dentro l'unico segno è che la taverna è piena e nessuno se ne va.",
		"Fuori c'è tempesta, dicono. Mi fido. Nel cuore della montagna un tuono suonerebbe esattamente come un altro nano che lascia cadere un'altra incudine.",
	},
	["ifo.muse.w20.hours.006"] = {
		"sente un lungo lamento sordo scendere lungo il corridoio d'ingresso dal portone: la tempesta di fuori si spinge dentro fino alle prime lampade, e non oltre.",
		"nota le lampade più vicine al portone che tremolano e le guardie lì accanto che danno le spalle alla tempesta, mentre una dozzina di passi più in là le fiamme stanno perfettamente ferme.",
	},
	["ifo.muse.w20.hours.007"] = {
		"Sopra tutta questa roccia, chissà dove, una tempesta si accanisce sulle vette, e a me non ne arriva nemmeno un sussurro. Una tempesta che ti devono raccontare è uno strano lusso.",
		"Dicono che là fuori sia il finimondo. Qui dentro la forgia arde al ritmo di sempre, e la tempesta è solo una voce che passa di tavolo in tavolo.",
	},
	["ifo.muse.w20.hours.008"] = {
		"Nebbia sulla strada della montagna, dicono. I carri del minerale vanno a passo d'uomo e i fabbri sono intrattabili.",
		"La nebbia ha rallentato ogni carro in arrivo. Qui dentro la misuri dai fabbri con le mani in mano, appoggiati ai parapetti a lamentarsi.",
	},
	["ifo.muse.w20.hours.009"] = {
		"scorge un gruppo di viaggiatori entrare dal portone con minuscole gocce di nebbia aggrappate a ogni capello e a ogni rivetto, che scintillano un istante alla luce della forgia prima che il caldo se le porti via.",
		"nota sulla maglia di ferro di un viaggiatore un velo opaco di umido di nebbia, che il caldo delle sale asciuga a strisce sotto i suoi occhi.",
	},
	["ifo.muse.w20.hours.010"] = {
		"Fuori è sereno, dice un carrettiere entrando a passi pesanti, e per questo più freddo: quel freddo secco e duro che morde le orecchie. Lo dice come una lamentela, e sembra piuttosto contento.",
		"Notizie dal portone: fuori è sereno e gelido, non una nuvola. I viaggiatori che le portano tengono le mani tese verso la lampada più vicina mentre le raccontano.",
	},
	["ifo.muse.w20.hours.011"] = {
		"percorre una sala svuotata dall'ora tarda, dove un solo spazzino lavora lungo il centro con una scopa larga, e il fruscio delle setole arriva fino alla parete in fondo.",
		"attraversa la città nella sua ora più quieta, quando la cosa più rumorosa di un'intera sala è la scopa di un nano, e un gatto che la guarda da un gradino.",
	},
	["ifo.muse.w20.hours.012"] = {
		"I fabbri del turno di notte sono una razza a parte: più silenziosi, un po' fieri di essere svegli mentre il resto della città dorme, e molto pignoli sulla loro zuppa.",
		"Di notte i martelli sono delle squadre tarde, che lavorano con meno urla e più canticchiare. Qualcuno vicino alla forgia canticchia le stesse quattro note da un pezzo, e a nessuno dà fastidio.",
	},
	["ifo.muse.w20.hours.013"] = {
		"È l'alba, a giudicare da qui: una lunga fila di minatori diretti al portone, il piccone in spalla e le colline di Dun Morogh davanti, silenziosi come una processione.",
		"I primi carri della giornata escono vuoti verso il portone e torneranno pieni. Un carrettiere mi ha detto che in questa città l'ora si capisce così: da quale verso i carri sono carichi.",
	},
	["ifo.muse.w20.hours.014"] = {
		"guarda il traffico del portone invertirsi mentre fuori cala il crepuscolo: meno gente che esce, più gente che entra, tutti di fretta per stare dalla parte calda della montagna prima che faccia buio.",
		"nota che il flusso al portone cambia verso con la fine del giorno, là fuori: i viaggiatori entrano più in fretta di quanto escano, e la porta della locanda non sta quasi mai ferma.",
	},
	["ifo.muse.w20.hours.015"] = {
		"Fuori è il crepuscolo, direi, a giudicare dalla coda alla banca: tutti quelli che hanno lavorato sulle colline, a mettere al sicuro la paga prima che ci arrivino le taverne.",
		"Che fuori il giorno stia finendo lo capisci dalla banca: una fila improvvisa di minatori impolverati, ognuno di fretta per mettere le monete della giornata dove la birra non le raggiunge.",
	},
	["ifo.muse.w20.hours.016"] = {
		"Dev'essere giorno: i bambini sono in giro, e il rumore nelle sale è raddoppiato.",
		"Giorno, direi. Ci sono nanetti fra i piedi, e corrono tutti.",
		"Fuori è giorno, ci scommetto. Le sale sono rumorose il doppio ed educate la metà.",
	},
	["ifo.muse.w20.hours.017"] = {
		"A quest'ora, con le sale mezze vuote, riesco a sentire perfino i canali di metallo fuso: un mormorio basso e denso, come una pentola che non arriva mai a bollire. Il resto del tempo lo copre la folla.",
		"Con quasi tutta la città addormentata, la pietra lascia uscire i suoi piccoli rumori: una goccia da qualche parte, un cardine, il lento ribollire del metallo nei canali. C'erano sempre stati, sotto ogni cosa.",
	},
	["ifo.muse.w20.hours.018"] = {
		"Fuori nevica, e all'improvviso ogni calzolaio della città ha una fila di viaggiatori in calze, ognuno con uno stivale che fa acqua in mano e l'aria piena di speranza.",
		"Quando nevica, i calzolai fanno affari d'oro. Ho contato quattro persone sulla stessa soglia, ognuna con uno stivale che aveva lasciato entrare il tempo.",
	},
	["ifo.muse.w20.hours.019"] = {
		"nota gli spazzini che ripongono le scope e i carretti dei fornai che escono: il piccolo cambio della guardia fra chi pulisce la città e chi la sfama, ed è tutta l'alba che c'è qui dentro.",
		"vede gli ultimi spazzini del turno tardo appoggiare le scope a un muro proprio mentre i primi carretti del pane escono cigolando: chi pulisce e chi sfama la città si danno il cambio senza una parola.",
	},
	["ifo.muse.w20.hours.020"] = {
		"A quest'ora quasi tutta la città è a letto. Il resto batte il metallo, e da qui le due metà suonano identiche.",
		"Così tardi, svegli ci sono solo i fabbri, le guardie e i gatti. A quanto pare sto con i gatti.",
	},
	["ifo.muse.w20.hours.021"] = {
		"Con la nebbia, dicono le guardie, il portone sembra aprirsi sul niente, un muro grigio, e i viaggiatori ne escono come fantasmi. Entrano umidi e un po' sorpresi di trovarsi da qualche parte.",
		"Una guardia mi ha detto che oltre il portone la nebbia è così fitta che la gente ne sbuca tutta d'un colpo, a un passo, come se il mondo si inventasse man mano che camminano.",
	},
	["ifo.muse.w20.hours.022"] = {
		"Tempesta là fuori? Allora resto sotto la montagna e la chiamo prudenza.",
		"Al portone c'è tempesta, dicono. Io me ne starò accanto alla forgia, a fare la persona assennata, per tutto il tempo che serve.",
	},
	["ifo.muse.w20.hush.001"] = {
		"Qualcuno, nel Mystic Ward, ha appeso una tenda di feltro a una porta, solo per tenere fuori la forgia. La forgia passa lo stesso, ma con garbo, come un ospite che si pulisce gli stivali.",
		"Il frastuono della città arriva alle sale di studio come la risacca arriva in una cantina: sai che c'è, e non può toccarti.",
	},
	["ifo.muse.w20.hush.002"] = {
		"si ritrova a camminare sulle punte accanto a una fila di teste chine nel Mystic Ward, come se il pavimento l'avesse chiesto con garbo.",
		"posa la sacca sulla pietra di una sala di studio così piano che le fibbie non fanno alcun rumore.",
		"ammutolisce a metà frase arrivando in una sala di teste chine, e finisce il pensiero con un'alzata di spalle.",
	},
	["ifo.muse.w20.hush.003"] = {
		"Qui nel Mystic Ward perfino le guardie cambiano passo. La maglia tintinna ancora, ma come tintinna un cucchiaio nella stanza di un malato.",
		"Le guardie di ronda nel Mystic Ward hanno imparato un passo più leggero dei colleghi al portone. Stessi stivali. Un'altra città.",
		"Perfino la guardia di Ironforge si addolcisce in questa sala. Le stesse spalle quadrate, gli stessi stivali pesanti, posati qui con un po' più di cura.",
	},
	["ifo.muse.w20.hush.004"] = {
		"Ho starnutito nel Mystic Ward. Un sacerdote ha alzato gli occhi, un mago pure, e un paladino ha già preso una benda.",
		"Tossisci una volta nel Mystic Ward e tre guaritori si voltano. Miglior posto in città per un raffreddore.",
		"Mi è caduta la sacca nel Mystic Ward. Nessuno ha detto niente. Non ce n'era bisogno.",
	},
	["ifo.muse.w20.hush.005"] = {
		"Qualcuno ha dato ai soffitti delle sale di studio una forma che inghiotte i suoni. Me l'ha detto un muratore nano, senza voler spiegare come: ed è così che capisci che un muratore nano dice sul serio.",
		"Un muratore giura che le volte sopra la Hall of Mysteries sono state scavate per bere il rumore. Mi ci sono {g:messo|messa} sotto e ho battuto le mani, piano. Il suono non è andato da nessuna parte.",
		"Le sale di studio sono state scavate per il silenzio come la Great Forge per il calore, mi ha detto un muratore: apposta, e perché durassero.",
	},
	["ifo.muse.w20.hush.006"] = {
		"scorge un paladino in armatura completa restare così immobile su una pagina aperta che una falena gli si posa sullo spallaccio e ci resta.",
		"nota un paladino che legge in armatura completa, fermo come una statua nella sua nicchia, finché gira una pagina e tutta l'armatura scricchiola con lui.",
	},
	["ifo.muse.w20.hush.007"] = {
		"Due sacerdoti litigano sottovoce accanto a un pilastro. Ha tutto il fuoco di una rissa da taverna e niente del volume, e in qualche modo è peggio da guardare.",
		"Il litigio sussurrato, nel Mystic Ward, è un'arte. Facce rosse, mani che volano, e neanche un suono che si possa cogliere a tre passi.",
		"Un sacerdote nano ha appena vinto una discussione senza alzare la voce oltre un mormorio. In questa città vale quanto un piccolo prodigio.",
	},
	["ifo.muse.w20.hush.008"] = {
		"Se ti serve un guaritore, il Mystic Ward. Se ti serve far baccano, prima da qualunque altra parte.",
		"Le ferite si portano al Mystic Ward. Le opinioni rumorose restano fuori.",
		"Un buon consiglio, a Ironforge: porta i lividi ai sacerdoti e lascia la voce sulla porta.",
	},
	["ifo.muse.w20.hush.009"] = {
		"Fuori da una stanza di cura tre minatori siedono spalla a spalla su una panca, l'elmo in grembo. Nessuno parla. A Ironforge un silenzio così dice più di qualunque lamento.",
		"C'è una panca accanto alle porte dei guaritori che non è mai libera. Minatori, quasi sempre, in attesa di notizie di un compagno di squadra, a rigirarsi un mozzicone di candela tra le dita grosse.",
		"I minatori aspettano fuori dalle stanze dei guaritori come aspettano dopo un crollo: spalla a spalla, senza parlare, gli occhi sulla porta.",
	},
	["ifo.muse.w20.hush.010"] = {
		"guarda uno gnomo attraversare in punta di piedi una sala di studio con una cura enorme, mentre ogni attrezzo appeso alla sua cintura tintinna a ogni passo.",
		"segue l'avanzata lenta e tintinnante di uno gnomo che si sforza in tutti i modi di non far rumore tra chi legge, e fallisce in una dozzina di piccoli modi metallici.",
	},
	["ifo.muse.w20.hush.011"] = {
		"Ogni tanto tutto il Mystic Ward si ferma nello stesso istante: penne, voci, perfino il fruscio delle vesti. Un momento dopo tutto riprende. Nessuno mi ha mai detto perché, e ho smesso di chiederlo.",
		"Di quando in quando sulla Hall of Mysteries cala un silenzio che nessuno sembra cominciare. Dura quanto uno sguardo lungo, e finisce in modo altrettanto misterioso.",
	},
	["ifo.muse.w20.hush.012"] = {
		"Ho chiesto la strada a un sacerdote. Risposta: un dito e un'occhiata. Mai avute indicazioni più chiare.",
		"Nel Mystic Ward la strada non te la dicono. Te la indicano, con gentilezza, in silenzio.",
		"Laggiù, nel Mystic Ward, nessuno dice «di là». Indicano, sorridono e tornano alla pagina.",
	},
	["ifo.muse.w20.ingot.001"] = {
		"Ogni lingotto impilato vicino alla forgia porta un piccolo marchio punzonato in testa: un martello, una runa, una ruota storta. Ogni fonditore firma il lavoro, anche quello che nessuno vedrà più.",
		"Gira un lingotto e c'è un segno battuto nel metallo, la firma di un fonditore. I nani lascerebbero una porta aperta piuttosto che un lingotto senza firma.",
	},
	["ifo.muse.w20.ingot.002"] = {
		"passa accanto a una pila di lingotti disposti a strati incrociati, più alta di un nano e squadrata come un muro, ogni strato girato al contrario come i corsi di un mattonato.",
		"si ferma accanto a una catasta di barre alta fino alla vita, a file alterne, così ordinata da sembrare più muratura che magazzino.",
	},
	["ifo.muse.w20.ingot.003"] = {
		"Due nani litigano sul peso di un lingotto. La bilancia dice una cosa; il fonditore dice che la bilancia mente. La bilancia è lì da più tempo di lui.",
		"Al banco della pesa un fonditore e un compratore fissano lo stesso ago da un bel pezzo. Nessuno dei due vuole cedere per primo. Al lingotto non importa.",
		"Un compratore ha accusato un lingotto di essere leggero. Il fonditore l'ha presa sul personale, e a giudicare dalle facce, anche ogni nano a portata d'orecchio.",
	},
	["ifo.muse.w20.ingot.004"] = {
		"Ho provato a sollevare uno di quei lingotti. Lui ha provato a restare dov'era. Ha vinto lui.",
		"Quelle barre sembrano piccole finché non ne prendi in mano una. Poi sembrano soddisfatte di sé.",
		"Piccolo, squadrato e più pesante di una pessima idea. Ho rimesso il lingotto esattamente dov'era.",
	},
	["ifo.muse.w20.ingot.005"] = {
		"Il minerale arriva al portone su carri e sulle spalle, grezzo e opaco, dalle miniere di Dun Morogh e di Loch Modan. Lascia la forgia in barre lucenti dentro casse ordinate. La città è una bocca che mangia roccia e parla ferro.",
		"Minerale grezzo in entrata, barre lucenti in uscita. In mezzo c'è tutto il lavoro della Great Forge, e nessuno dei minatori che l'hanno scavato vede mai le barre che diventa.",
	},
	["ifo.muse.w20.ingot.006"] = {
		"L'istruttore di estrazione giudica il minerale a orecchio: un colpo sul banco, la testa inclinata, e il pezzo va nel mucchio di sinistra o in quello di destra. Ho ascoltato con attenzione. A me dicono tutti «sasso».",
		"Guardare l'istruttore di estrazione che smista il minerale è come guardare qualcuno leggere in una lingua che non conosco. Bussa, ascolta, butta. Mai un'occhiata, mai un errore.",
	},
	["ifo.muse.w20.ingot.007"] = {
		"indugia al margine del banco dei fabbri mentre l'istruttore di forgiatura rigira tra le dita grosse il cardine di un allievo, lo prova, e glielo rende con un solo grugnito che potrebbe voler dire qualunque cosa.",
		"si ferma a guardare l'istruttore di forgiatura piegare contro il bordo del banco un gancio appena fatto da un allievo finché non cede, poi annuire, soddisfatto che abbia ceduto nel punto giusto.",
	},
	["ifo.muse.w20.ingot.008"] = {
		"Casse di barre accanto all'ingresso del tram, segnate col gesso per Stormwind. Qualunque cosa la nostra parte indossi nel prossimo scontro, buona parte comincia in questa sala come roccia.",
		"Ogni poche ore un'altra cassa di lingotti scende al Deeprun Tram per i fabbri umani di Stormwind. L'Alleanza la tengono insieme i trattati, si dice, ma il ferro fa la sua parte.",
	},
	["ifo.muse.w20.ingot.009"] = {
		"Ogni lingotto qui ha un piccolo avvallamento sul dorso, dove il metallo si è ritirato raffreddandosi. I fonditori ci passano il pollice come per saggiare una cucitura. Un dorso piatto, mi ha detto uno di loro, vuol dire una colata troppo lenta.",
		"Guarda lungo il dorso di un lingotto raffreddato e c'è un solco poco profondo, dove il metallo si è stretto su sé stesso. I fonditori leggono quel solco come un fornaio legge una crosta.",
	},
	["ifo.muse.w20.ingot.010"] = {
		"si ferma a guardare una fila di nani che si passano i lingotti di mano in mano dal carro alle cataste, ogni barra accompagnata dallo stesso grugnito, così regolare da poterci marciare.",
		"indugia accanto a una catena di portatori che scaricano barre da un carro, con un ritmo così uguale che i lingotti sembrano andare da soli verso la catasta.",
	},
	["ifo.muse.w20.ingot.011"] = {
		"I lingotti nanici sono belli, semplici, squadrati e onesti. A Gnomeregan li avremmo già filettati, numerati e infilati per metà in una macchina prima che si raffreddassero. Mi manca quella fretta più di quanto sappia dire.",
		"Ogni barra della Great Forge finisce nel lavoro di un'incudine, lento e paziente. Le nostre finivano nei motori, rapide, rumorose, gloriose. Poi sono saliti i troggs e i motori si sono zittiti, ed eccoci qui, a prendere in prestito la pazienza dei nani.",
	},
	["ifo.muse.w20.ingot.012"] = {
		"Quella pila di barre vale più di tutto quello che ho addosso. Ci sto più lontano del necessario, per principio.",
		"Qualcuno ha lasciato una fortuna in barre di ferro contro il muro, senza guardia. In qualunque altra città sarebbe un reato. Qui è solo magazzino.",
	},
	["ifo.muse.w20.ingot.013"] = {
		"Alcuni lingotti stanno in disparte, su uno scaffale tutto loro, più scuri di qualunque ferro conosca. Minerale dei Dark Iron, dal sud, ha detto un fonditore, e qui a nessuno piace che tocchi il metallo onesto.",
		"Le barre scure stanno su uno scaffale a parte, lontane dalle cataste. Dark Iron, borbotta un nano quando le guardo troppo a lungo, come se il nome stesso lasciasse fuliggine sulla lingua.",
	},
	["ifo.muse.w20.map.001"] = {
		"si fa da parte per un nano con tre astucci di cuoio per le mappe a tracolla, che si volta per scusarsi e con tutti e tre spazza via mezza bancarella.",
		"lascia passare su una scala affollata un corriere della League stretto a un fascio di mappe arrotolate, ognuna legata con uno spago di colore diverso.",
	},
	["ifo.muse.w20.map.002"] = {
		"Le vecchie mappe della League mostrano ancora le strade di Khaz Modan com'erano prima della Seconda Guerra. Qualche paese, lungo quelle strade, ormai è solo inchiostro.",
		"Alcuni villaggi segnati sulle carte più vecchie della League bruciarono quando l'Orda attraversò Khaz Modan. Nessuno li ha cancellati. A nessuno basta il cuore.",
	},
	["ifo.muse.w20.map.003"] = {
		"Chiedi la strada a un nano e ti dà indicazioni. Chiedila a un nano della League e ti dà le indicazioni, la mappa e il nome del primo che l'ha disegnata male.",
		"Ho chiesto a un cartografo della League quanto ci vuole per Loch Modan. Tre quarti d'ora dopo conoscevo la storia di ogni pietra miliare.",
		"Le indicazioni di un nano della League arrivano con la storia allegata. 'A sinistra alla vecchia vena. Be', dove stava una volta.'",
	},
	["ifo.muse.w20.map.004"] = {
		"Una mappa della League di Loch Modan segna ogni scavo, ogni tumulo e ogni muro sepolto, e si dimentica delle fattorie. Una mappa racconta che cosa stava a cuore a chi l'ha fatta.",
		"Ogni mappa è una confessione. Quelle della League segnano le rovine con l'inchiostro rosso e le fattorie non le mettono affatto, come se nessuno avesse mai arato qualcosa che valesse la pena trovare.",
	},
	["ifo.muse.w20.map.005"] = {
		"osserva una costa su una mappa da parete corretta così tante volte che i foglietti appuntati lungo il bordo sporgono come le scaglie di un pesce.",
		"nota che un tratto di costa su una grande mappa a muro è sepolto sotto una dozzina di correzioni appuntate, ognuna di una mano diversa, nessuna d'accordo con le altre.",
	},
	["ifo.muse.w20.map.006"] = {
		"Mi dicono che la League conservi ancora una mappa di Gnomeregan, con ogni officina indicata in una minuscola calligrafia gnomesca. Il ritratto perfetto di una città in cui nessuno può più entrare.",
		"Si racconta che una gnoma della League abbia disegnato Gnomeregan a memoria, fino all'ultimo tubo. Gli studiosi hanno messo il disegno tra le rovine, e lei non gliel'ha mai perdonata.",
	},
	["ifo.muse.w20.map.007"] = {
		"I cartografi della League disegnano le gallerie profonde su fogli sottili e oliati, uno per livello, e li sovrappongono per vedere cosa sta sotto cosa. Controluce, davanti a una lampada, la pila sembra l'interno di una cipolla.",
		"Le mappe delle gallerie di Khaz Modan si disegnano a strati, ho sentito, foglio sopra foglio: la mappa di una montagna va letta anche verso il basso, non solo di traverso.",
	},
	["ifo.muse.w20.map.008"] = {
		"Un cartografo della League giura che non lasciano mai spazi vuoti: dove nessuno sa niente, disegnano una palettina. Altro che mappa, è una lista di faccende.",
		"Gli spazi bianchi su una mappa della League non sono bianchi, mi dicono. Sono 'in sospeso'.",
	},
	["ifo.muse.w20.map.009"] = {
		"nota un nano a una bancarella con i polpastrelli neri come quelli di qualunque fabbro, finché la luce non li prende e si rivelano del blu scuro dell'inchiostro da cartografo.",
		"guarda due volte un paio di mani macchiate che contano monete su un banco: non fuliggine, ma inchiostro, entrato in ogni piega in una vita intera passata a disegnare coste.",
	},
	["ifo.muse.w20.map.010"] = {
		"Ho sentito uno scavatore della League misurare le distanze come fanno quelli del mestiere: non quanto è lontano, ma quanto è profondo. Loch Modan è vicino. Uldaman sta molto in basso.",
		"Per la League un posto non è lontano o vicino: è superficiale o profondo. Loch Modan, a sentir loro, è appena un graffio.",
	},
	["ifo.muse.w20.map.011"] = {
		"Non prestare mai la tua mappa a uno studioso della League. Te la restituisce piena di note a margine, e le note hanno pure ragione.",
		"Ho fatto vedere la mia mappa a un nano della League e ha tirato fuori una matita prima che potessi fermarlo. Adesso è una mappa migliore. Solo che non è più mia.",
	},
	["ifo.muse.w20.map.012"] = {
		"La mappa più antica della League, dicono gli studiosi, non è neppure di carta: una lastra di pietra solcata da incisioni che ancora non sanno far corrispondere a nessun luogo in superficie.",
		"Tra le mappe della League ci sarebbe una pietra incisa che nessuno riesce a leggere come la mappa di un posto conosciuto. La tengono lo stesso. Una mappa che non combacia con nessuna terra a qualcuno sta pur dicendo qualcosa.",
	},
	["ifo.muse.w20.map.013"] = {
		"Una mappa della città stessa, ho chiesto a un commesso della League. Ha riso per un minuto buono e mi ha dato una mappa del Commons, con tante scuse.",
		"Una mappa sola di Ironforge non esiste, mi dice un commesso della League. Ce ne sono quaranta, e non vanno d'accordo sulle cantine.",
	},
	["ifo.muse.w20.muster.001"] = {
		"si arresta mentre un sergente passa in rassegna una fila della Guardia di Ironforge, tirando ogni cinghia e battendo su ogni elmo, e non dice niente a quello che supera l'ispezione.",
		"guarda un ufficiale scendere lungo una fila di guardie, bussando con le nocche su una corazza qua e là e ascoltandola come un bottaio che saggia una botte.",
	},
	["ifo.muse.w20.muster.002"] = {
		"In certi posti di guardia la pietra sotto gli stivali si è consumata in due conche poco profonde. Generazioni di guardie di Ironforge, ferme esattamente dove stava la precedente.",
		"Accanto a uno degli archi ci sono due incavi nel pavimento, a un passo l'uno dall'altro. Mi ci è voluto un po' per capire che sono impronte: un posto tenuto da una guardia dopo l'altra, da più tempo di quanto qualcuno abbia contato.",
	},
	["ifo.muse.w20.muster.003"] = {
		"Le guardie di qui danno indicazioni come fossero ordini. Non mi hanno mai {g:spedito|spedita} da nessuna parte con tanta efficienza.",
		"Ho chiesto a una guardia la strada per il Military Ward. Me l'ha indicata, poi mi ha {g:squadrato|squadrata} e prima mi ha indicato una panca.",
		"Noto che le guardie indicano la strada con la mano dell'arma. Indicare con un'ascia chiude in fretta ogni discussione sul percorso.",
	},
	["ifo.muse.w20.muster.004"] = {
		"si fa da parte per due degli Ironforge Mountaineers che entrano dal portone, la neve ancora incrostata sugli stivali e i fucili avvolti nella tela cerata contro l'umido.",
		"nota due Mountaineers che rientrano da fuori battendo i piedi e si scrollano la neve dai mantelli addosso alle guardie, che la incassano senza battere ciglio.",
	},
	["ifo.muse.w20.muster.005"] = {
		"I Mountaineers rientrano dal portone a coppie e fanno rapporto prima di mangiare. Un nano che rimanda un pasto: ecco come capisci che il rapporto conta.",
		"Il resoconto di un Mountaineer, da quel che orecchio, suona così: troggs qui, Dark Iron là, strada brutta, birra peggio. Poi una lunga bevuta per rimediare all'ultimo punto.",
	},
	["ifo.muse.w20.muster.006"] = {
		"Da qualche parte una guardia sta di sentinella in un posto dove non passa nessuno, in fondo a una sala che nessuno usa, e lo tiene bene quanto quella davanti al trono.",
		"La Guardia di Ironforge presidia posti dove per anni non succede nulla. Immagino sia proprio questo. Che non succeda nulla è il lavoro fatto.",
	},
	["ifo.muse.w20.muster.007"] = {
		"intravede una guardia a fine turno che fa sparire una pagnotta intera in quattro morsi senza togliersi l'elmo.",
		"sorprende una guardia appena smontata che si siede su un secchio rovesciato con un gemito che sembra partire dagli stivali.",
		"sorride mentre una guardia appena smontata si slaccia un guanto d'arme coi denti, l'altra mano già stretta attorno a un boccale che qualcuno ha avuto la premura di portare.",
	},
	["ifo.muse.w20.muster.008"] = {
		"Qui nel Military Ward una lavagna accanto alla porta dice chi sta dove, riscritta col gesso a ogni turno. Nomi cancellati e riscritti con la stessa calligrafia, anno dopo anno.",
		"A ogni turno qualcuno nel Military Ward pulisce una lavagna e riscrive col gesso la guardia: il portone, il trono, la banca, le scale. Metà dei nomi sono quelli di ieri. È questo che rassicura.",
	},
	["ifo.muse.w20.muster.009"] = {
		"Se i corni suonassero mai al portone, ogni guardia della città sarebbe lì prima che l'eco si spenga. Mi piace pensare che ci sarei anch'io. Ecco l'Alleanza, senza i discorsi.",
		"La Guardia di Ironforge tiene questa montagna per tutta l'Alleanza, non solo per i nani. In mezzo a loro sento il debito come una mano sulla spalla.",
	},
	["ifo.muse.w20.muster.010"] = {
		"Quelle guardie non si sono mosse da quando sono {g:arrivato|arrivata}. Io mi sono {g:spostato|spostata} quattro volte, e {g:quello stanco|quella stanca} sono io.",
		"Saluterei le guardie, se sapessi quale saluto. Si accorgerebbero che l'ho sbagliato: si accorgono di tutto.",
	},
	["ifo.muse.w20.muster.011"] = {
		"Fuori è notte, a sentire chi arriva dal portone. Dalle guardie non lo diresti mai: stessi posti, stesse facce, solo qualche sbadiglio in più dietro le visiere.",
		"Il turno di notte a Ironforge è lo stesso turno, solo più silenzioso. Dal portone dicono che fuori è buio. Qui dentro le guardie stanno come se nessuno avesse pensato di avvisarle.",
	},
	["ifo.muse.w20.muster.012"] = {
		"Le guardie di qui non ti salutano: ti archiviano. Un'occhiata agli stivali, alla cintura, alle mani, e ti ritrovi in qualche registro dietro i loro occhi.",
		"Ogni guardia che incrocio mi lancia la stessa occhiata: stivali, cintura, mani, faccia, in quest'ordine. Da qualche parte dietro quegli occhi il mio nome è finito in un libro.",
	},
	["ifo.muse.w20.muster.013"] = {
		"Buona guardia. Che sia noiosa.",
		"Spero in un turno noioso. In quel mestiere, noioso è un complimento.",
	},
	["ifo.muse.w20.muster.014"] = {
		"Nebbia sui valichi, dicono i Mountaineers, tanto fitta da perderci un ariete. Entrano dal portone coi mantelli imperlati di grigio e l'umore anche peggio.",
		"Al portone dicono che la nebbia ha chiuso le strade di Dun Morogh. I Mountaineers appena rientrati hanno l'aria di chi l'ha attraversata a tentoni, e forse è andata proprio così.",
	},
	["ifo.muse.w20.oath.001"] = {
		"I giuramenti dei nani sono brevi. Ne ho sentito pronunciare uno a un banco: quattro parole e un palmo sbattuto di piatto sulla pietra. Avevano tutti e due l'aria di averlo inciso nel muro.",
		"La promessa di un nano dura quanto uno starnuto a dirla, e sopravvive a chi l'ha fatta.",
	},
	["ifo.muse.w20.oath.002"] = {
		"guarda due minatori chiudere una lite con poche parole sommesse e una mano posata sullo stesso pilastro, prima l'uno poi l'altro, come se la pietra facesse da testimone.",
		"vede due nani concludere un accordo senza un pezzo di carta: ognuno tocca il muro, poi annuisce, e la faccenda è chiaramente chiusa una volta per tutte.",
		"nota un nano che posa per un attimo il palmo su una colonna prima di dare la sua parola a un cliente, come altri toccano ferro.",
	},
	["ifo.muse.w20.oath.003"] = {
		"Quando gli orchi tenevano Khaz Modan, soldati dei regni umani sanguinarono nei suoi passi accanto ai nani. Ironforge lo conta come un giuramento, e i suoi giuramenti li mantiene.",
		"Nella nostra Alleanza i nani non sono entrati con l'inchiostro, ma con la Seconda Guerra. Ogni umano che ha combattuto per liberare queste montagne è ancora, per loro, una promessa mantenuta.",
	},
	["ifo.muse.w20.oath.004"] = {
		"Ogni guardia su ogni scala ha giurato qualcosa al re, un tempo. Si vede da come stanno: non rigide, solo di chi ha smesso da un pezzo di discuterne con se stesso.",
		"Qualunque cosa giurino le guardie all'High Seat, l'hanno resa comoda come un paio di stivali. In questa città nessuno monta di guardia come se fosse solo un mestiere.",
	},
	["ifo.muse.w20.oath.005"] = {
		"Attenzione a cosa si promette a Ironforge. Qualcuno se lo ricorda sempre, e di solito qualcuno lo mette per iscritto.",
		"Mai dire a un bottegaio nano «passo a prenderlo più tardi». Te lo tiene da parte, e tiene anche il conto.",
	},
	["ifo.muse.w20.oath.006"] = {
		"Un vecchio fabbro mi ha detto che i re di Ironforge giurano con una mano su un'incudine, non su un libro. Non posso garantirlo. Mi piace troppo per andare a controllare.",
		"Nelle forge si racconta che un nuovo re giuri con una mano sull'incudine, mentre la sala la batte una volta sola per suggellare le parole. Vero o no, i fabbri lo raccontano come se il martello l'avessero tenuto loro.",
	},
	["ifo.muse.w20.oath.007"] = {
		"Persino Mekkatorque, dicono a Tinker Town, abbassa la voce quando parla del re. Certi debiti zittiscono perfino uno gnomo.",
		"L'Alto Inventore deve a Magni il riparo di un popolo intero, e lo sanno tutti e due. Pare che non ne parlino mai, ed è così che si capisce quanto è grande.",
	},
	["ifo.muse.w20.oath.008"] = {
		"Di rado un nano dice «lo farò». Dice «si vedrà», o «sì, probabile». In una città dove una promessa è di ferro, nessuno la spende alla leggera.",
		"Ho notato che i nani non promettono quasi mai niente in modo netto. «Può darsi» è il massimo che concedono, per lo più. In questa città un sì secco vale oro, e lo custodiscono di conseguenza.",
		"Chiedi un favore a un nano e ti senti dire «chissà». Ripassa più tardi e lo trovi fatto. La promessa non è mai stata la parte che gli importava.",
	},
	["ifo.muse.w20.oath.009"] = {
		"guarda un nano in una cotta di maglia appena lucidata inginocchiarsi ai piedi del trono, dire poche parole troppo sommesse per arrivare lontano, e rialzarsi più alto di un palmo.",
		"resta rispettosamente indietro mentre qualcuno, alla pedana, presta giuramento al re; le guardie non si muovono, ma sembrano tutte in ascolto.",
	},
	["ifo.muse.w20.oath.010"] = {
		"A Ironforge la mia parola la tengo lucida. Questa gente ha la memoria lunga e la pazienza corta.",
		"Qui preferirei rompermi una gamba che una promessa. La gamba guarirebbe prima, e i nani la perdonerebbero più in fretta.",
	},
	["ifo.muse.w20.plate.001"] = {
		"Nel Military Ward pare che su ogni panca ci sia una guardia che lavora l'olio in un giunto della corazza con uno straccio ormai nero. Chiacchierano mentre lo fanno, ma le mani non si fermano mai.",
		"La fuliggine è il vero nemico della Guardia di Ironforge. I troggs arrivano ogni tanto; la sporcizia della forgia si infila in ogni giunto della corazza senza sbagliare un giorno, e loro la combattono con uno straccio e un barattolo d'olio.",
	},
	["ifo.muse.w20.plate.002"] = {
		"intravede in un passaggio laterale una guardia con l'elmo tolto, per una volta, che si gratta furiosamente una barba schiacciata da ore sotto i paraguance.",
		"sorprende una guardia che alza la visiera per strofinarsi il segno rosso lasciato dall'imbottitura sulla fronte, e poi la riabbassa con un grugnito, come chi chiude bottega.",
	},
	["ifo.muse.w20.plate.003"] = {
		"Da un armaiolo un umano prova una corazza nanica. Gli calza a pennello, dalla clavicola più o meno all'ombelico.",
		"Un'elfa della notte ha chiesto all'armaiolo un elmo della sua misura. Lui l'ha misurata due volte, ha scritto una cifra e ha chiesto un prezzo che comprendeva, a sentirlo, un'incudine nuova.",
		"Uno gnomo e un umano stavano fianco a fianco al banco dell'armaiolo, e lui li ha congedati tutti e due con lo stesso consiglio: crescere verso il mezzo.",
	},
	["ifo.muse.w20.plate.004"] = {
		"Alcune guardie si tengono un'ammaccatura nella corazza e non vogliono che venga raddrizzata. Gli armaioli brontolano, e martellano tutt'intorno.",
		"C'è una guardia con un pettorale che porta un'ammaccatura brutta che nessuno ha il permesso di sistemare. Gli armaioli ci lavorano intorno come un muratore attorno a una vecchia radice.",
	},
	["ifo.muse.w20.plate.005"] = {
		"si sofferma a guardare un nano che fa rotolare una cotta di maglia in un barile di sabbia: il fruscio e lo sferragliare la ripuliscono dalla ruggine come si è sempre fatto.",
		"indugia accanto al garzone di un armaiolo che gira la manovella di un barile di sabbia, da cui esce un tintinnio costante di maglia che torna a splendere.",
	},
	["ifo.muse.w20.plate.006"] = {
		"Come fanno le guardie a salire queste scale con tutta quella corazza? Mi fanno male le ginocchia solo a pensarci.",
		"Armatura completa, tutte quelle scale, un turno dopo l'altro. Per forza i nani hanno certe gambe.",
	},
	["ifo.muse.w20.plate.007"] = {
		"Dentro ogni elmo del Military Ward c'è un'imbottitura cucita a mano, e da quel che sento quasi tutte le guardie se la cuciono da sé. A nessun altro si affida ciò che ti sta contro il cranio per un turno intero.",
		"Una guardia seduta accanto a me ricuciva l'imbottitura dell'elmo con filo grosso e molta cura. 'Tante cose si possono prestare,' ha detto, senza alzare gli occhi. 'Questa no.'",
	},
	["ifo.muse.w20.plate.008"] = {
		"Un'armatura vuota sta appoggiata a una parete del Military Ward, lucidata come le altre. Le guardie dicono che apparteneva a qualcuno che tenne il portone durante l'assedio, e che la puliscono ogni giorno perché lui avrebbe voluto così.",
		"Le guardie tengono un'armatura vuota, oliata e dritta, nel Military Ward, mi dicono, per uno dei loro che dal portone non tornò. Nessuno ci si ferma davanti. Tutti ci passano accanto un po' più piano.",
	},
	["ifo.muse.w20.plate.009"] = {
		"trattiene un sorriso mentre uno gnomo esce dall'armaiolo con un elmo nanico che gli poggia comodo su tutte e due le spalle, e da cui sbircia come una sentinella da una torre molto piccola.",
		"gira attorno a uno gnomo in piedi su una cassa, a cui stanno prendendo le misure per una corazza, mentre due nani discutono se accorciare gli schinieri o dargli direttamente quelli di un nano più piccolo.",
	},
	["ifo.muse.w20.plate.010"] = {
		"La vecchia armatura prende la forma di chi la porta, dicono gli armaioli: un graffio sul fianco dove poggia il gomito, una lucentezza al ginocchio di chi s'inginocchia. Dagli un pettorale e ti diranno come stava in piedi chi lo indossava.",
		"Un armaiolo di qui legge una corazza come una lettera. Consumata al ginocchio sinistro, graffiata in basso sul lato destro: questo s'inginocchiava spesso, e teneva un muro alla sua destra.",
	},
	["ifo.muse.w20.plate.011"] = {
		"passa davanti alle rastrelliere qui nel Military Ward, dove file di elmi stanno sui pioli di legno come un pubblico muto in attesa che cominci lo spettacolo.",
		"passa accanto a una lunga rastrelliera di elmi lucidati, ognuno sul suo piolo con un nome inciso sotto, e nota un piolo vuoto.",
	},
	["ifo.muse.w20.plate.012"] = {
		"Odore d'olio e di cuoio, laggiù. Qualcuno sta passando un'ora lunga e paziente con la sua armatura.",
		"Se resto immobile vicino al Military Ward abbastanza a lungo, qualcuno proverà a lucidarmi.",
		"Ogni guardia che supero sa leggermente d'olio e di lucido. È praticamente il profumo della città.",
	},
	["ifo.muse.w20.plate.013"] = {
		"Ogni guardia di questa città sferraglia su una nota un po' diversa. Dammi una settimana e saprei riconoscerle a occhi bendati.",
		"Senti: quel clangore è una guardia con uno schiniere allentato. Il sergente glielo farà notare prima che possa farlo io.",
	},
	["ifo.muse.w20.post.001"] = {
		"Le cassette della posta di Ironforge portano un cappuccio di ferro battuto sopra la fessura, per tenere fuori la fuliggine. Persino la posta, qui, è vestita per la forgia.",
		"Ogni cassetta della posta della città ha un bordo di ferro sopra la fessura, come la tesa di un elmo. La fuliggine entra lo stesso. Una lettera da Ironforge arriva con un'impronta grigia sopra, chiunque l'abbia spedita.",
	},
	["ifo.muse.w20.post.002"] = {
		"Una lettera aperta a Ironforge, per un momento, sa ancora del posto dove è stata scritta: foglie verdi da Darnassus, pietra bagnata da Stormwind. Dalle un'ora e saprà di carbone come tutto il resto.",
		"La posta porta tra le pieghe un po' di ogni città, e Ironforge glielo toglie nel giro di un'ora. Qualunque odore avesse una lettera all'arrivo, finisce per sapere di forgia.",
	},
	["ifo.muse.w20.post.003"] = {
		"osserva un nano infilare un pacco in una cassetta della posta e poi restare lì con la mano tesa, come se la cassetta potesse ancora dargli una ricevuta.",
		"vede un nano imbucare una lettera, bussare due volte sulla cassetta con le nocche e accostare l'orecchio, a quanto pare per assicurarsi che sia scesa come si deve.",
		"sorprende uno gnomo a imbucare una lettera e poi a sbirciare nella fessura con un occhio solo, come se sperasse di scoprire il trucco.",
	},
	["ifo.muse.w20.post.004"] = {
		"Chi porta la posta fuori da una montagna? Nessuno di quelli a cui l'ho chiesto lo sa. I nani dicono «la posta» come dicono «la montagna»: una cosa che c'è e basta, e non ha bisogno di spiegazioni.",
		"Una lettera imbucata qui arriva a Darnassus prima che io riesca a raggiungere il portone. Ho chiesto a un impiegato come sia possibile. Ha risposto «è la posta», col tono di chi spiega che l'acqua bagna.",
	},
	["ifo.muse.w20.post.005"] = {
		"Un giovane nano aspetta accanto alla cassetta della posta da abbastanza tempo da averne contato tutti i ribattini, con un pacchetto nascosto dietro la schiena. Chiunque sia in ritardo, spero che arrivi.",
		"Qualcuno aspetta chiaramente qualcuno vicino alla cassetta della posta: si liscia la barba, controlla un pacchetto, si liscia ancora la barba. Non ho idea di chi aspetti. Scopro di fare il tifo per lui.",
	},
	["ifo.muse.w20.post.006"] = {
		"Contrassegno: una lettera che ti fa pagare per aprirla. Chi l'ha inventato aveva l'anima di un banchiere e il fegato di uno gnomo.",
		"Un pacco da pagare prima di poter vedere cosa c'è dentro. Quella non è posta. È una sfida.",
		"Contrassegno. L'unica lettera abbastanza educata da portarti il conto di persona.",
	},
	["ifo.muse.w20.post.007"] = {
		"nota un vecchio nano che legge una lettera col braccio teso, poi ancora più lontano, e alla fine la passa a uno gnomo di passaggio, che gliela legge con una voce che arriva a mezza sala.",
		"guarda un nano dalla barba grigia strizzare gli occhi su una lettera tenuta lontana quanto le braccia permettono, arrendersi e chiedere a un estraneo di leggergliela, accigliandosi a ogni parola come se l'avesse scritta l'estraneo.",
	},
	["ifo.muse.w20.post.008"] = {
		"Una lettera nanica è quasi tutta firma: il nome, il nome del padre, il clan, la rocca, uno svolazzo. Il messaggio vero ci starebbe tra due pollici.",
		"Ho sbirciato la lettera di un nano da sopra la sua spalla. Quattro righe di saluti, sei di firma e di stirpe, e in mezzo la notizia vera: «Il tetto regge».",
	},
	["ifo.muse.w20.post.009"] = {
		"Per pura abitudine intesto ancora le mie lettere con l'indirizzo della vecchia officina di Gnomeregan, poi lo cancello e ci scrivo sotto «Tinker Town». Ogni lettera che spedisco porta in cima una piccola cicatrice.",
		"Ogni mia lettera comincia con una riga cancellata: il vecchio indirizzo, quello che adesso sta sotto i trogg. Potrei cominciare su un foglio nuovo. Non ci riesco mai del tutto.",
	},
	["ifo.muse.w20.post.010"] = {
		"Scrivetemi a Ironforge. Prima o poi ci passano tutti, e la posta sembra saperlo.",
		"Di tutte le cassette della posta del mondo, quelle di questa città sono le più usate. Prima o poi passano tutti di qui, se non altro per la banca.",
	},
	["ifo.muse.w20.post.011"] = {
		"si ferma mentre un nano sigilla una lettera con una grossa goccia di ceralacca e ci preme sopra un anello così forte che probabilmente arriverà ammaccata.",
		"assiste a un nano che scalda un bastoncino di ceralacca alla fiamma di una lampada, fa colare un sigillo abbondante su una lettera e lo timbra con un anello grosso come una noce.",
	},
	["ifo.muse.w20.post.012"] = {
		"Un minatore accanto a me ha spedito metà della paga a qualcuno a Kharanos appena l'ha ricevuta, prima di potersi avvicinare alla taverna. L'unico modo, ha detto, perché una moneta esca viva da Ironforge.",
		"Nel giorno di paga le cassette della posta più vicine alla taverna lavorano parecchio: minatori che spediscono monete a Kharanos prima che la birra ci arrivi. Prudenza, imbucata di corsa.",
	},
	["ifo.muse.w20.post.013"] = {
		"Imbucata. Troppo tardi per renderla più gentile, o più tagliente. Ormai ce l'ha la cassetta.",
		"Ecco, è partita. Qualunque cosa abbia scritto, adesso ce l'ha la montagna.",
	},
	["ifo.muse.w20.post.014"] = {
		"aspetta il proprio turno alla cassetta della posta fuori dalla banca dietro a una gnoma che tira fuori lettera dopo lettera, ognuna delle quali la rende un po' più severa.",
		"fa la fila per la cassetta della posta vicino al Vault mentre un nano davanti ritira un pacco dopo l'altro, impilandoli per terra in un muro che presto supera la sua stessa altezza.",
	},
	["ifo.muse.w20.powder.001"] = {
		"Gli armaioli pesano la polvere su bilancine d'ottone, un pizzico per volta, con la lingua tra i denti. Per gente che adora i botti, sono silenziosissimi mentre ne preparano uno.",
		"Dosare la polvere nera è l'unica occasione in cui ho visto un nano lavorare piano. La bilancia, il pizzico, la smorfia, un altro pizzico. Poi un cenno, e la cartina attorcigliata e chiusa.",
	},
	["ifo.muse.w20.powder.002"] = {
		"Regola di questa città: se un nano dice 'indietro', sei già a portata.",
		"Quando un armaiolo dice 'quasi pronto', cercati qualcosa di solido dietro cui stare.",
		"Se l'apprendista di un armaiolo comincia ad allontanarsi in fretta da qualcosa, io gli vado dietro. In fretta.",
	},
	["ifo.muse.w20.powder.003"] = {
		"coglie un filo di fumo bianco che esce pigro dal Military Ward, aspro di zolfo, e in lontananza il suono di qualcuno soddisfatto del risultato.",
		"avverte il morso d'uovo marcio della polvere bruciata che scivola lungo la sala, un odore che segue i clienti degli armaioli fuori dalla porta come un cane fedele.",
	},
	["ifo.muse.w20.powder.004"] = {
		"Il muro dietro i bersagli degli armaioli è butterato da mille piccoli crateri. Lì in mezzo, sospetto, c'è il colpo che ogni nano di questa città finge di non aver mai sparato.",
		"Ogni buco in quel muro è il tiro mancato di qualcuno. I nani ci passano davanti senza guardarlo, come si passa davanti all'elenco dei propri debiti.",
	},
	["ifo.muse.w20.powder.005"] = {
		"Un fucile sulla rastrelliera dell'armaiolo ha il calcio sbiancato dove una guancia ci si è appoggiata per anni. Chiunque l'abbia avuto ha preso la mira moltissime volte, e ora non la prende più.",
		"I fucili usati stanno appesi in fondo alla bottega, il calcio lisciato dalle guance di altri. L'armaiolo non dice di chi fossero. Io non lo chiedo.",
	},
	["ifo.muse.w20.powder.006"] = {
		"Sbaglio, o vicino alla bottega dei fucili parlano tutti un po' più forte?",
		"Metà degli armaioli di questa città risponde 'cosa?' prima che tu abbia finito la domanda.",
		"L'apprendista dell'armaiolo mi ha fatto ripetere tre volte. Rischi del mestiere, credo.",
	},
	["ifo.muse.w20.powder.007"] = {
		"si fa ben da parte mentre due nani portano un barilotto di polvere lungo la sala, con la delicatezza di chi porta un cesto d'uova, e fulminano con lo sguardo chiunque arrivi a un braccio di distanza.",
		"nota come la folla si apra senza una parola davanti a un nano con un barile segnato di rosso, per richiudersi solo quando lui è ben oltre.",
	},
	["ifo.muse.w20.powder.008"] = {
		"Gli armaioli ti diranno che il fucile l'ha inventato un nano. Gli gnomi di Tinker Town ti diranno chi l'ha fatto funzionare. Tutte e due le storie finiscono in una lite.",
		"Chiedi chi abbia infilato per primo la polvere in una canna e un nano nominerà un clan, uno gnomo un cugino, e alzeranno la voce finché un fabbro non li manderà a discuterne altrove.",
	},
	["ifo.muse.w20.powder.009"] = {
		"Un armaiolo alza una canna verso la lampada più vicina e ci guarda dentro strizzando l'occhio, come un marinaio verso una costa lontana. Qualunque cosa veda, lo fa grugnire e allungare la mano verso lo scovolo.",
		"Ho visto un nano guardare dentro la canna di un fucile, contro una lampada, per un minuto intero, poi restituirlo al proprietario con una parola sola: 'Vergognoso.' Il proprietario l'ha incassata come una condanna.",
		"Gli armaioli di qui ispezionano una canna alla luce di una lampada, un occhio chiuso e l'altro immobile. Mi hanno esaminato la coscienza con meno attenzione.",
	},
	["ifo.muse.w20.powder.010"] = {
		"Scommetto che la polvere la tengono il più lontano possibile dalla Great Forge, per quanto la città lo permetta. Nessuno me l'ha detto: lo capisci da dove gli armaioli si rifiutano di accendere la pipa.",
		"Una città costruita attorno a un fiume di fuoco, e da qualche parte, dietro porte spesse, la polvere. Anche i nani sanno che certi vicini non devono dividere un muro.",
	},
	["ifo.muse.w20.powder.011"] = {
		"Un nano mi ha appena offerto di sparare col suo fucile 'per fare esperienza'. Mi dicono che l'esperienza comprende un livido a forma di calcio.",
		"Mi hanno {g:invitato|invitata} a provare un fucile nanico. L'ultimo che ha accettato si sta massaggiando una spalla laggiù, con un sorriso fin troppo coraggioso.",
	},
	["ifo.muse.w20.powder.012"] = {
		"I nani costruiscono un fucile che duri una vita; noi uno da migliorare entro pranzo. Fra tutti e due, mezza Alleanza è armata e l'altra metà aspetta il modello nuovo.",
		"Un armaiolo nano ha chiesto a uno gnomo al suo banco perché a un fucile servissero tre mirini. 'Per quando uno si rompe,' ha risposto lo gnomo. Non sono mai {g:stato|stata} più {g:fiero|fiera} della mia gente.",
	},
	["ifo.muse.w20.powder.013"] = {
		"sosta accanto all'apprendista di un armaiolo che cola il piombo in uno stampo, e ogni pallina cade sfrigolando in un secchio d'acqua, contata a mezza voce.",
		"si sofferma vicino a un banco dove un nano smista pallottole a occhio, scartando con un colpetto quelle un po' storte in una ciotola destinata alla fusione.",
	},
	["ifo.muse.w20.quench.001"] = {
		"trasale allo stridio dell'acciaio rovente immerso in una vasca di tempra, poi guarda la nuvola di vapore salire lungo la parete e sfilacciarsi contro la pietra.",
		"si volta a un sibilo secco dalla forgia più vicina, dove un fabbro tiene una barra rovente sott'acqua finché il ribollire cessa e il vapore se ne va a brandelli.",
	},
	["ifo.muse.w20.quench.002"] = {
		"Ogni fabbro ha la sua idea sulla tempra. Acqua, olio, salamoia; un vecchio nano giura sull'acqua presa da una certa sorgente di Dun Morogh, e non dice quale.",
		"Salamoia, dice un fabbro. Olio, dice il successivo. La terza non mi vuole dire affatto cosa c'è nella sua vasca, solo che la usava già la nonna di sua nonna.",
		"Chiedi della tempra alla forgia e accendi una lite più vecchia della città. L'acqua è onesta, l'olio è gentile, e il nano che non usa né l'una né l'altro si limita a sorridere.",
	},
	["ifo.muse.w20.quench.003"] = {
		"Un piccolo suono nel vapore, come una campana colpita con un'unghia. Il fabbro tira fuori il pezzo, guarda la crepa, e lo lascia cadere tra i rottami senza commenti.",
		"La barra è entrata intera nella vasca ed è uscita con una crepa sottile come un capello, a malapena visibile. Il fabbro l'ha vista subito. Ore di lavoro messe da parte con un'alzata di spalle.",
	},
	["ifo.muse.w20.quench.004"] = {
		"Promemoria: il barile accanto all'incudine non è acqua da bere. Me l'ha detto la faccia del fabbro, prima di lui.",
		"Per poco non ho immerso una tazza in una vasca da tempra. Un fabbro mi ha preso il polso. A quanto pare quell'acqua ne ha viste di tutti i colori.",
		"Regola della forgia, imparata a mie spese: l'acqua nei barili è per il ferro. Chiedi prima di lavartici la faccia.",
	},
	["ifo.muse.w20.quench.005"] = {
		"si sporge su una vasca di tempra mentre il vapore si dirada, e trova l'acqua velata di scaglie nere e di un riflesso oleoso che gira lento nella luce della forgia.",
		"sbircia in una vasca che ha appena inghiottito un pezzo di ferro rovente: scaglie nere sparse a galla e, sotto, le sagome scure di vecchi lavori persi sul fondo.",
	},
	["ifo.muse.w20.quench.006"] = {
		"Qui alla Great Forge il fuoco scende dall'alto in cortine che cadono, e l'acqua aspetta nelle vasche ai piedi di ogni incudine. Tutto il mestiere, mi ha detto un fabbro, sta nell'istante tra l'uno e l'altra.",
		"Il fuoco cola dall'alto, l'acqua sta in basso, e la mano di un fabbro porta il ferro dall'uno all'altra. Visto da questo punto della Great Forge, sembra meno un mestiere che un rito.",
	},
	["ifo.muse.w20.quench.007"] = {
		"Uno gnomo ha attraversato una nuvola di vapore di tempra ed è uscito dall'altra parte con gli occhialoni completamente appannati. Ha continuato a camminare, sicurissimo, dritto contro un pilastro.",
		"Il vapore della tempra e gli occhialoni gnomeschi non vanno d'accordo. Uno ci è entrato limpido e ne è uscito cieco, e ha salutato un pilastro uscendo.",
	},
	["ifo.muse.w20.quench.008"] = {
		"osserva un apprendista che arranca da una vasca all'altra con due secchi gocciolanti, rabboccandole tutte e schivando i gomiti dei fabbri.",
		"gira intorno a un giovane apprendista che porta secchi alle vasche di tempra, le braccia che tremano e la faccia decisa, l'acqua che lascia dietro una scia scura.",
	},
	["ifo.muse.w20.quench.009"] = {
		"Uno dei fabbri più anziani ha una chiazza rosa e lucida dal polso al gomito. Vapore, dice il nano accanto a lui: una vasca che ha traboccato bollendo, tanto tempo fa. Tempra ancora con quel braccio, ogni volta, come a dimostrare qualcosa.",
		"Alla forgia ci si ustiona più col vapore che col fuoco, mi ha detto un lavorante, e mi ha mostrato la cicatrice liscia lungo l'avambraccio come fosse una medaglia.",
	},
	["ifo.muse.w20.quench.010"] = {
		"Quando un apprendista tempra un pezzo che i mastri intendono tenere, tutto il banco si ferma per il sibilo. Niente discorsi, niente applausi. Poi i martelli ripartono, un po' più forte di prima.",
		"Ho visto la forgia ammutolire per un solo sibilo di vapore: il primo pezzo di un'apprendista degno di essere tenuto, che entrava nell'acqua. Dopo qualcuno le ha messo in mano una tazza, e sembrava dire tutto.",
	},
	["ifo.muse.w20.quench.011"] = {
		"Ferro bagnato e vapore. Quest'angolo della forgia sa di un bollitore dimenticato sulle braci.",
		"Vicino alle vasche l'aria sa di ruggine e di acqua calda. Come leccare una chiave, ma tiepida.",
	},
	["ifo.muse.w20.quench.012"] = {
		"nota un ariete legato vicino alla forgia che guarda i suoi ferri nuovi sfrigolare nella vasca con un'aria di profondo sospetto.",
		"lancia un'occhiata a un ariete paziente che aspetta accanto alle vasche mentre gli temprano i ferri, le orecchie che scattano indietro a ogni sibilo.",
	},
	["ifo.muse.w20.quench.013"] = {
		"La pietra sopra le vasche di tempra è striata di chiaro dove il vapore sale da più tempo di quanto chiunque ricordi, anello su anello, come i segni che una tazza lascia su un tavolo.",
		"Alza lo sguardo da una vasca qualsiasi e la roccia lassù è sbiancata a chiazze morbide, la macchia del vapore che sale dallo stesso punto da prima che nascesse il fabbro più vecchio.",
		"Sopra le vasche la roccia è macchiata ad anelli chiari, il lavoro lento del vapore. Lì i nani non hanno scolpito niente. Ci ha pensato la loro acqua.",
	},
	["ifo.muse.w20.relic.001"] = {
		"guarda in una teca una tozza figura di pietra con il naso lucidato da generazioni di pollici curiosi, prima che a qualcuno venisse in mente di metterla sotto vetro.",
		"nota che l'unico reperto lasciato fuori dal vetro, una testa di pietra consunta, ha il naso lucido: troppi visitatori non hanno resistito a toccarlo.",
	},
	["ifo.muse.w20.relic.002"] = {
		"Di tutte le casse che la League riporta, dicono gli scavatori, le più difficili da aprire sono quelle delle cose piccole: un fischietto d'argilla, una perlina, una tazza troppo piccola per una mano adulta.",
		"Studiosi che maneggiano corone e tavolette senza battere ciglio ammutoliscono davanti a un giocattolo d'argilla venuto da qualche scavo. Le cose grandi sono storia. Quelle piccole erano di qualcuno.",
	},
	["ifo.muse.w20.relic.003"] = {
		"Porta un reperto alla League e ti pagheranno in gratitudine e in una menzione nella prossima relazione. C'è chi la menzione se la fa incorniciare.",
		"I reperti, la League li compra con la moneta più strana: grazie, un boccale di qualcosa e una riga in un registro. E la gente, chissà come, continua ad accettare.",
	},
	["ifo.muse.w20.relic.004"] = {
		"Uno degli studiosi della League giura che una certa tavoletta della collezione è sempre appena tiepida, anche fuori dall'involucro, anche lontano da ogni fuoco. Gli altri danno la colpa alla forgia. Lui la tiene comunque nel feltro.",
		"C'è una tavoletta, nella collezione della League, che a sentire il suo custode non è mai fresca al tatto. I colleghi incolpano la forgia. Lui ha smesso di discutere e ha cominciato ad avvolgerla nella lana.",
	},
	["ifo.muse.w20.relic.005"] = {
		"'Un reperto senza il suo posto è solo un sasso con un'opinione', amano dire gli scavatori della League. Annotano dove giaceva una cosa prima ancora di spolverarla.",
		"Segna il punto, la profondità e il verso prima di sollevare qualcosa: è una regola degli scavatori della League, più vecchia di quasi tutti loro. Se sollevi prima, ti resta solo un ricordino.",
	},
	["ifo.muse.w20.relic.006"] = {
		"si fa da parte mentre due nani portano tra la folla una lunga cassa con il marchio della League, lenti come in processione, zittendo chiunque la urti.",
		"guarda passare su una carriola una cassa della League, imbottita di paglia così fitta che di ciò che contiene si vede solo un angolo di pietra scolpita.",
		"si ferma mentre una cassa destinata alla League viene posata con una cura enorme, e uno studioso si inginocchia ad ascoltarne un fianco per un momento prima di lasciare che qualcuno tocchi i chiodi.",
	},
	["ifo.muse.w20.relic.007"] = {
		"La League conserva anche pezzi dei Dark Iron, etichettati con la stessa calligrafia paziente di tutto il resto. Nessun aggettivo. In questa città, un ritegno così costa qualcosa.",
		"Anche il lavoro dei Dark Iron si guadagna una teca e un cartellino ordinato. Neanche una parola di biasimo. Gli studiosi quella la tengono per la taverna.",
	},
	["ifo.muse.w20.relic.008"] = {
		"osserva un visitatore alto fermarsi davanti a una teca di frammenti scolpiti portati da oltre il mare, e restarci a lungo senza leggere il cartellino sotto.",
		"vede un visitatore venuto da Kalimdor chinarsi verso una teca di intagli consumati, muovendo le labbra su una parola che nessun nano della sala avrebbe saputo leggere ad alta voce.",
	},
	["ifo.muse.w20.relic.009"] = {
		"Nelle teche della League finisce anche il passato recente, con la stessa cura di quello profondo: un'ascia d'orco scheggiata della Seconda Guerra, con un cartellino degno di una tavoletta di Uldaman. Basta aspettare, dicono gli studiosi.",
		"Tra le tavolette e le ossa della League c'è anche uno stendardo di guerra dell'Orda, bruciacchiato in un angolo e catalogato con calma perfetta. Per gli studiosi, ieri è soltanto l'antichità di domani.",
	},
	["ifo.muse.w20.relic.010"] = {
		"Ho chiesto a un curatore quanto fosse vecchio un reperto. 'Più vecchio', ha detto, ed è tornato ai suoi appunti. Quaggiù vale come risposta.",
		"Nei registri della League esistono solo tre età: vecchio, più vecchio e 'non toccare'.",
		"'Quanto è vecchio?', ho chiesto. Il curatore mi ha guardato come se gli avessi chiesto quanto è bagnato il mare.",
	},
	["ifo.muse.w20.relic.011"] = {
		"Non tutto ciò che la League trova si può trasportare. Da Uldaman riportano i calchi su carta: fogli premuti contro le pareti e anneriti col carboncino finché gli intagli non affiorano, pallidi, come il fantasma del muro.",
		"I muri di Uldaman restano dove sono, così la League si porta via le loro ombre: fogli strofinati col carboncino sopra gli intagli, poi arrotolati ed etichettati come stoffe pregiate.",
	},
	["ifo.muse.w20.relic.012"] = {
		"In una delle teche della League c'è uno scalpello di pietra dissotterrato a Uldaman, e gli studiosi dicono che nella presa di un nano sta come se fosse fatto apposta. Vorrei tenerlo in mano una volta. Non so se poi vorrei posarlo.",
		"Si dice che ogni nano che prende in mano quel vecchio scalpello dello scavo ammutolisca, perché calza. Le nostre mani hanno questa forma da più tempo di quanto i nostri nomi siano rimasti gli stessi.",
	},
	["ifo.muse.w20.relic.013"] = {
		"Mi hanno detto di non appoggiarmi alla teca. Non mi stavo appoggiando. Le davo sostegno morale.",
		"Un curatore mi ha appena chiesto di allontanarmi da una teca. Un passo. L'ha misurato.",
	},
	["ifo.muse.w20.rune.001"] = {
		"Di tanto in tanto un mago percorre il perimetro del Mystic Ward ripassando con la punta di un dito vecchi segni nel pavimento, a rinnovare qualcosa che nessun altro vede. I nani scavalcano le linee senza abbassare lo sguardo.",
		"Sulle soglie del Mystic Ward ci sono linee incise nel pavimento, deboli come vecchi graffi. Una maga gnoma le controlla con una lente d'ottone e la fronte aggrottata, e qualunque cosa veda, la soddisfa.",
		"Vecchi segni corrono lungo le soglie del Mystic Ward, quasi cancellati. Un mago li rinnova con gesso e pazienza, e i nani di passaggio alzano gli stivali sopra le linee fresche, con la stessa cura che usano per una rotaia.",
	},
	["ifo.muse.w20.rune.002"] = {
		"I rumori dell'angolo dei maghi, nel Mystic Ward, per quel che ho capito: un tonfo sordo, uno sbuffo di qualcosa di viola, e una voce che dice: «Va tutto bene, va tutto bene». Nessun altro si volta mai.",
		"Dai maghi, ogni tanto, un piccolo scoppio, un odore di monetine scaldate e un lungo sospiro. I sacerdoti accanto non alzano nemmeno la penna.",
	},
	["ifo.muse.w20.rune.003"] = {
		"guarda un mago accendere la pipa a un nano con uno schiocco di dita, e il nano bofonchiare un grazie come se fosse il favore più normale del mondo.",
		"vede uno gnomo in veste scaldare tra i palmi il boccale di tè freddo di un nano finché non fuma, e il nano accettarlo con un cenno burbero.",
	},
	["ifo.muse.w20.rune.004"] = {
		"Alla Luce non importa quanto bene preghi, mi ha detto un sacerdote nano, ma solo se dopo ti alzi e aggiusti quello che hai rotto. Poi è tornato ad aggiustare una sedia.",
		"Chiedi a un sacerdote nano cosa voglia la Luce e avrai una risposta corta: lavoro onesto e schiena dritta. Poi ti mette in mano una scopa, nel caso volessi dare una mano.",
		"«Alla Luce piace una bottega in ordine», mi ha detto un sacerdote nano, spazzando. Credo fosse mezzo scherzo. Non so quale metà.",
	},
	["ifo.muse.w20.rune.005"] = {
		"indugia accanto a un paladino nano che lucida una corazza su una panca qui nel Mystic Ward, con passate lente e regolari, mormorando qualcosa che somiglia più a una conversazione che a una preghiera.",
		"si ferma accanto a un paladino che toglie un'ammaccatura da un guanto d'arme, e che continua a mormorare all'acciaio come se potesse rispondergli.",
	},
	["ifo.muse.w20.rune.006"] = {
		"Non prego molto. Però quando passo mi fermo nel Mystic Ward, resto un momento dove cade la luce, ed esco con le spalle più dritte. Tra me e la Luce le cose restano semplici.",
		"La Luce, per come la vedo io, è come la montagna: non serve vederla tutta per appoggiarcisi. Ogni tanto mi appoggio, nel Mystic Ward, e nessuno mi chiede perché.",
	},
	["ifo.muse.w20.rune.007"] = {
		"La Luce suona diversa detta con voce nanica: più ruvida, più breve, più simile a una promessa tra operai. È la stessa Luce. Scopro che mi piace sentirla così.",
		"A Stormwind la Luce si canta sotto finestre alte. Sotto questa montagna se ne parla davanti a un boccale, alla buona, tra due persone. Credo che alla Luce non dispiaccia né l'una né l'altra cosa.",
	},
	["ifo.muse.w20.rune.008"] = {
		"I paladini nani portano il martello. Ovvio. Mi preoccuperei se non lo facessero.",
		"Un paladino di Ironforge senza martello sembrerebbe un fabbro senza barba. Non si fa.",
	},
	["ifo.muse.w20.rune.009"] = {
		"I sacerdoti più vecchi del Mystic Ward erano giovani quando gli orchi tenevano Khaz Modan, mi ha detto un accolito. Tennero aperte le sale di cura per tutto quel tempo, e tuttora non ne dicono altro che «c'era da fare».",
		"Chiedi a un vecchio sacerdote di Ironforge della Seconda Guerra e avrai due parole: «lunga» e «piena». Poi uno sguardo al pavimento, dove le brande dovevano stare in fila.",
		"I guaritori più anziani della città tengono le brande in file più strette del necessario. Abitudine, mi ha detto un accolito, degli anni in cui gli orchi tenevano Khaz Modan e ogni palmo di pavimento era un letto.",
	},
	["ifo.muse.w20.rune.010"] = {
		"I nani lasciano ai maghi il loro angolo del Mystic Ward e lo tengono d'occhio come si tiene d'occhio una forgia con una crepa nel focolare: con rispetto, e un passo più indietro del solito.",
		"Un nano sta accanto al ferro fuso senza battere ciglio, eppure si scosta da un mago al lavoro. Il ferro, almeno, fa quello che gli si dice.",
		"I nani si fidano di ciò che si può battere col martello. I maghi del Mystic Ward lavorano con qualcosa che col martello non si batte, e i nani non gliel'hanno mai perdonato del tutto.",
	},
	["ifo.muse.w20.rune.011"] = {
		"vede un sacerdote posare la mano sul ginocchio sbucciato di un bambino nano in lacrime: un breve bagliore dorato, una tirata di naso, e il bambino è già scappato prima che il sacerdote si sia rialzato.",
		"coglie un lampo dorato dove un sacerdote è inginocchiato accanto a uno gnomo con una mano ustionata, e poi i ringraziamenti sollevati dello gnomo, rapidissimi, tre frasi insieme.",
	},
	["ifo.muse.w20.rune.012"] = {
		"Un mago mi ha detto che la magia è un mestiere come la forgia. I fabbri, noto, le sopracciglia se le tengono.",
		"La magia è un mestiere come un altro, dice il mago con mezza manica in meno.",
	},
	["ifo.muse.w20.scholar.001"] = {
		"osserva uno studioso della League che si tasta tutte le tasche in cerca degli occhiali, mentre due paia gli stanno spinte tra i capelli e un terzo gli pende da un cordino al collo.",
		"nota uno studioso dalla barba grigia che scruta il cartellino dei prezzi di un mercante attraverso una lente col manico, poi una seconda, poi rinuncia e chiede.",
		"trattiene un sorriso quando uno studioso della League, leggendo mentre cammina, va a sbattere contro una colonna, le chiede scusa e prosegue.",
	},
	["ifo.muse.w20.scholar.002"] = {
		"Gli studiosi della League non si urlano mai addosso. Fanno di peggio: pubblicano. Una faida nella League può durare decenni, combattuta tutta nelle note a piè di pagina.",
		"Due studiosi della League si sono appena incrociati su una scala con il cenno più cortese di Ironforge. Mi dicono che da vent'anni si fanno a pezzi a vicenda nei loro libri.",
	},
	["ifo.muse.w20.scholar.003"] = {
		"Brann Bronzebeard è l'esploratore più famoso della League e il socio che si vede meno. Gli studiosi ne parlano come i minatori parlano di una vena ricca: sempre altrove.",
		"Domanda alla League dove sia Brann Bronzebeard e avrai cinque risposte, tutte sicure, tutte su continenti diversi.",
	},
	["ifo.muse.w20.scholar.004"] = {
		"nota le ginocchiere di cuoio legate alle gambe di un nano di passaggio, consumate fino alla lana: uno scavatore della League, oppure qualcuno a cui cadono un sacco di monete.",
		"riconosce uno studioso della League dagli indizi: ginocchia rattoppate, una matita dietro ogni orecchio e un pennellino infilato nello stivale dove chiunque altro terrebbe un coltello.",
		"nota il callo rivelatore di un archivista della League, un rilievo duro sul medio dove una penna è rimasta appoggiata per mezzo secolo.",
	},
	["ifo.muse.w20.scholar.005"] = {
		"Regola di questa città: mai fare a uno studioso della League una domanda a cui si risponde sì o no. Ti becchi la lezione intera, e la risposta è 'dipende'.",
		"Ho chiesto a uno studioso se una cosa era vecchia. La risposta è arrivata al terzo capitolo e ancora non ho capito.",
		"Gli studiosi della League rispondono a 'quanto è vecchio' in secoli, a 'quanto è lontano' in strati, e a 'come stai' con una relazione scritta.",
	},
	["ifo.muse.w20.scholar.006"] = {
		"Un fabbro ha chiesto a uno studioso della League a che serve il passato. Lo studioso gli ha chiesto di cosa è fatto il suo martello, e da dove venne il primo. Sono ancora lì, e tutti e due hanno ordinato un altro giro.",
		"In questa città studiosi e fabbri siedono agli stessi tavoli e guardano la stessa pietra in modo diverso: uno vede ciò che potrebbe diventare, l'altro ciò che è stata.",
	},
	["ifo.muse.w20.scholar.007"] = {
		"In un angolo una studiosa della League mormora a una testa di pietra incrinata sul suo scrittoio, le fa domande e aspetta le risposte. Qui nessuno lo trova strano, e dopo un po' nemmeno io.",
		"Una studiosa legge ad alta voce a una tavoletta, come se potesse correggerle la pronuncia. Gli altri lavorano attorno al suo mormorio come la città lavora attorno alla forgia.",
	},
	["ifo.muse.w20.scholar.008"] = {
		"Mi andrebbe, mi ha appena chiesto un nano della League, di portare una pala nelle Badlands per la gloria della storia? Ho chiesto della paga. Ha fatto una faccia offesa.",
		"Braccia forti e volontà debole: i reclutatori della League le riconoscono a cinquanta passi. Allungo il passo.",
	},
	["ifo.muse.w20.scholar.009"] = {
		"Uno scavatore mi ha detto che la League tiene un elenco dei suoi che sono partiti a scavare e sono rimasti sottoterra. Un nome ci finisce con la stessa cura di una voce di catalogo, e quella cura è tutto l'elogio funebre.",
		"Quando uno scavatore non torna, la League archivia la sua ultima lettera insieme ai reperti. È l'unico modo che conoscono per dire che il lavoro valeva la pena.",
	},
	["ifo.muse.w20.scholar.010"] = {
		"si ferma vicino a uno studioso della League che spiega qualcosa a un cerchio di bambini nani con un pezzo di roccia e gesti enormi; i bambini guardano i gesti.",
		"sorride mentre uno studioso porge un fossile a un piccolo gnomo, che lo rigira, lo annusa e chiede se si può mangiare.",
		"vede una bambina nana premere il naso contro il fianco di una cassa della League che passa su un carretto, come se il passato si vedesse tra le assi.",
	},
	["ifo.muse.w20.scholar.011"] = {
		"L'Explorers' League gode del favore del re, e gli studiosi lo portano con leggerezza, come un minatore porta una buona lampada: senza sarebbero perduti, ma non lo direbbero mai.",
		"Il fratello di Magni in persona è un uomo della League, e gli studiosi non lo nominano mai, a meno che qualcuno non provi a tagliare i loro fondi.",
	},
	["ifo.muse.w20.scholar.012"] = {
		"Ognuno di noi, nell'Alleanza, deve qualcosa alla League: una mappa, un avvertimento, una strada resa sicura. Non manderebbero mai un conto. Al massimo una nota a margine.",
		"Mezzi eserciti dell'Alleanza sono arrivati dove dovevano grazie alle mappe della League. Nessuno stendardo le ringrazia. Agli studiosi va bene così; a noi altri, un po' meno.",
	},
	["ifo.muse.w20.scholar.013"] = {
		"Studiosi umani salgono col tram da Stormwind per leggere nelle collezioni della League, e ripartono sbattendo le palpebre, con l'inchiostro fino ai gomiti e più domande di quante ne avessero portate.",
		"Un umano magro in giacca da studioso discute di una data con un nano largo il doppio, e vince, con gran divertimento del nano.",
	},
	["ifo.muse.w20.scholar.014"] = {
		"Quelli della League lo chiamano 'il campo'. Il campo è qualunque posto senza sedie e con qualcosa che cerca di mangiarti.",
		"'Lavoro sul campo', lo chiamano i dotti, con affetto. Gli scavatori usano una parola più corta.",
	},
	["ifo.muse.w20.scholar.015"] = {
		"A quest'ora la folla si dirada e vengono fuori gli studiosi: lampade da lettura accese su libri aperti nella Hall of Explorers, molto dopo che i mercanti hanno chiuso le bancarelle.",
		"A notte fonda le lampade da lettura della League sono ancora accese. Nani che non resterebbero mai alzati per una festa restano alzati per una sola riga di rune sbavata.",
	},
	["ifo.muse.w20.shade.001"] = {
		"Il venditore di veleni della Forlorn Cavern non mette etichette sui vasetti. «Lo capisci dall'odore», mi hanno detto. Speravo di non doverlo mai capire dall'odore.",
		"Vasetti senza etichetta, un venditore che dice «annusa» e un sorriso che non mi è piaciuto. A Ironforge il commercio dei veleni è un affare molto personale.",
		"«Annusa», ha detto il venditore di veleni porgendomi un vasetto. Ho risposto che mi fidavo sulla parola. Mi è sembrato deluso da me.",
	},
	["ifo.muse.w20.shade.002"] = {
		"guarda un istruttore incappucciato sfilare una borsa dalla cintura di un allievo, mostrargliela e riappendergliela prima che l'allievo abbia finito di voltarsi.",
		"coglie la coda di una lezione in qualche angolo buio della città: una chiave sfilata dalla tasca di un allievo e posata sul palmo dell'allievo stesso, con un secco «da capo».",
	},
	["ifo.muse.w20.shade.003"] = {
		"Capita di vedere l'imp di uno stregone tenere il broncio vicino alla Forlorn Cavern, a calci contro la pietra, mentre i bambini nani cercano il coraggio di punzecchiarlo. Io scommetto sempre sull'imp.",
		"Imp a Ironforge. Gli stregoni se li tengono vicini nella Forlorn Cavern, e i nani li guardano come guarderebbero un topo in dispensa che risponde pure.",
	},
	["ifo.muse.w20.shade.004"] = {
		"Qui nella Forlorn Cavern gli stregoni sono tollerati, non benvenuti. Lo capisci da come stanno le guardie: né più vicine né più lontane, esattamente a portata di mano.",
		"Gli stregoni di questa caverna sono sopportati più che accolti. Nessuno lo dice. La guardia ferma all'imboccatura, a braccia conserte, lo dice per tutti.",
		"La città lascia i suoi stregoni in questa caverna come un fabbro lascia un crogiolo incrinato sul bordo del banco: utile, sorvegliato, e mai vicino al ferro buono.",
	},
	["ifo.muse.w20.shade.005"] = {
		"Un nano, vedendo passare uno stregone, ha borbottato una sola parola: «Thaurissan». A Ironforge è tutto il discorso contro chi traffica con ciò che brucia là sotto.",
		"Ogni nano di questa città impara da piccolo cosa successe quando un re dei Dark Iron invocò poteri che non sapeva tenere. Così gli stregoni della Forlorn Cavern si prendono un'occhiata lunga e tanto spazio intorno, e nessuno lo chiama ingiusto.",
	},
	["ifo.muse.w20.shade.006"] = {
		"Le tasche dentro, gli occhi fuori. Nella Forlorn Cavern la regola è questa.",
		"Alla Forlorn Cavern tieni strette le monete e ancora più strette le domande.",
		"Prima regola della Forlorn Cavern: chi ti sorride ti ha già contato le tasche.",
	},
	["ifo.muse.w20.shade.007"] = {
		"aggira un filo di fumo verde che sale da un banco da lavoro nella caverna, dove qualcuno con guanti spessi mescola con grande cura un pentolino minuscolo.",
		"si tiene a rispettosa distanza da un banco dove mani guantate travasano qualcosa di oleoso da una fiala all'altra, senza versarne una goccia e senza alzare gli occhi.",
	},
	["ifo.muse.w20.shade.008"] = {
		"Alcuni di noi sono usciti da Gnomeregan con la voglia di costruire. Altri con la voglia di non farsi mai più cogliere di sorpresa. I secondi li trovi nella Forlorn Cavern, e non gliene faccio una colpa.",
		"Dopo Gnomeregan non tutti gli gnomi sono tornati al banco da lavoro. Alcuni sono andati nella Forlorn Cavern a imparare mestieri più silenziosi. Una nostra città è caduta perché nessuno guardava sotto; capisco l'impulso.",
	},
	["ifo.muse.w20.shade.009"] = {
		"vede una figura incappucciata, qui nella Forlorn Cavern, leggere due volte un biglietto piegato, avvicinarne un angolo a una lanterna e guardarlo bruciare fino alla punta delle dita.",
		"segue un biglietto di mano in mano nella caverna, finché viene letto una volta e dato in pasto alla fiamma di una lanterna senza una parola, la cenere spazzata via sulla pietra.",
	},
	["ifo.muse.w20.shade.010"] = {
		"Ogni città ha un angolo buio dove si imparano certi mestieri. Quasi tutte fingono di no. Ironforge, da città nanica qual è, ne ha scavato uno apposta e gli ha dato un nome.",
		"I nani non fingono che la loro città non abbia bisogno di coltelli silenziosi e mani accorte. A quei mestieri hanno dato una caverna tutta loro, e un nome che nessuno spaccia per grazioso.",
		"Ironforge tiene un posto per i mestieri silenziosi come una casa accorta tiene una chiave di cui nessuno parla. Tutti sanno in quale cassetto.",
	},
	["ifo.muse.w20.shade.011"] = {
		"Un sacerdote del Mystic Ward mi ha detto che ogni luce getta un'ombra, Luce compresa, e che un sacerdote farebbe bene a conoscerle tutte e due. L'ha detto con leggerezza. Io non ho più smesso di pensarci.",
		"Alcuni sacerdoti del Mystic Ward studiano il buio con la stessa cura della luce. «Non puoi aggiustare quello che non vuoi guardare», mi ha detto uno, ed è tornato a un libro senza titolo sul dorso.",
	},
	["ifo.muse.w20.shade.012"] = {
		"nota una guardia e il massiccio servitore azzurro di uno stregone fermi a pochi passi l'uno dall'altra accanto a un pilastro, immobili, senza guardarsi, come due pali che reggono la stessa lite.",
		"guarda una guardia e il bruto evocato di uno stregone sopportarsi a vicenda contro una parete, il pollice della guardia che tamburella sul manico del martello, il bruto che non batte ciglio.",
		"vede un imp alle calcagna di uno stregone fare una smorfia villana a una guardia di passaggio, e la guardia rispondere, senza rallentare, con una smorfia molto più vecchia e molto più villana.",
	},
	["ifo.muse.w20.shelf.001"] = {
		"nota che gli scaffali qui finiscono dove arriva il braccio di un nano, così ogni visitatore alto finisce per leggere piegato in due, come un airone a pesca.",
		"alza lo sguardo verso una gnoma che si arrampica su una scala da biblioteca alta tre volte lei con un libro sotto il braccio, e scende con altri due.",
	},
	["ifo.muse.w20.shelf.002"] = {
		"I libri dei nani hanno angoli di ferro e fermagli d'ottone. Persino le loro biblioteche portano l'armatura. Non vorrei incontrare ciò da cui difendono le pagine.",
		"Solo i nani metterebbero i rivetti a un libro. Fattene cadere uno su un piede e qualcosa impari, anche se non dal testo.",
		"Un libro nanico si chiude con un clangore, e il fermaglio scatta da solo. In questa città il sapere si custodisce come le monete.",
	},
	["ifo.muse.w20.shelf.003"] = {
		"Alcuni libri della League sono incatenati agli scaffali. Uno studioso giura che uno se ne andò a Stormwind nel cappotto di un dotto in visita, e tornò tre stagioni dopo avvolto in una lettera di scuse.",
		"Catene tengono i volumi più rari della League attaccati allo scaffale. Non danno fastidio a nessuno. Tutti ricordano perché furono messe, anche se le storie non concordano su chi fosse il colpevole.",
	},
	["ifo.muse.w20.shelf.004"] = {
		"fa scorrere lo sguardo su una rastrelliera di tavolette d'argilla e di pietra riposte di taglio come piatti in una cucina, ognuna con un cartellino legato a un filo.",
		"si ferma accanto a uno scaffale dove i libri lasciano il posto alle tavolette, ritte di taglio in una lunga rastrelliera di legno, i cartellini che si muovono appena nell'aria calda.",
	},
	["ifo.muse.w20.shelf.005"] = {
		"Per prendere in prestito un libro della League, mi dicono, si firma un registro, si mostrano le mani pulite e si giura qualcosa a proposito della zuppa. Della zuppa nessuno vuole parlare.",
		"I libri escono dalla League come l'oro esce da una banca: registro, testimone, un'occhiata lunga e severa. Poi il libro te lo porgono come un neonato che dorme.",
	},
	["ifo.muse.w20.shelf.006"] = {
		"In uno scaffale della League c'è un vuoto che nessuno riempie, mi dicono. Il foglietto infilato lì porta il nome di chi prese il libro prima della Seconda Guerra e non lo riportò mai. I bibliotecari ci spolverano intorno.",
		"Un posto nella biblioteca della League resta vuoto apposta, dicono gli studiosi: il libro partì con uno scavatore che non tornò più. Il foglietto è ancora lì, scritto di suo pugno.",
	},
	["ifo.muse.w20.shelf.007"] = {
		"si volta a seguire con lo sguardo una gnoma che passa di corsa con una bracciata di libri della League e una lente d'ottone allacciata su un occhio, leggendo quello in cima mentre cammina.",
		"si scosta per una gnoma con il naso in un libro della League, che per qualche istinto evita ogni colonna e ogni nano.",
		"aggira un nano che legge su una panca tenendo un libro della League a braccio teso, come certuni tengono la lettera di un creditore.",
	},
	["ifo.muse.w20.shelf.008"] = {
		"La League non ammette candele vicino ai suoi scaffali. In una città costruita attorno a un fiume di ferro fuso, l'unico fuoco che fa paura è uno stoppino caduto.",
		"Lampade dietro vetri spessi e nemmeno una candela: è la regola della League per i suoi libri. Una città di fuoco, e i suoi studiosi sono gli unici ad avere paura di una fiamma.",
	},
	["ifo.muse.w20.shelf.009"] = {
		"Metà della biblioteca della League parla di rocce. L'altra metà parla dei posti da cui vengono le rocce. In un angolo c'è uno scaffaletto di poesia, quasi tutta sulle rocce.",
		"Cosa legge per svago uno studioso della League? L'ho chiesto: geologia, a quanto pare, ma con i passaggi belli sottolineati.",
	},
	["ifo.muse.w20.shelf.010"] = {
		"si china su un leggio dove una pagina di rune spigolose copiate a Uldaman giace sotto tre righe di ipotesi naniche, ognuna di un inchiostro diverso, tutte cancellate tranne l'ultima.",
		"dà un'occhiata alla copia di un antico intaglio fissata a uno scrittoio, circondata di note in una dozzina di grafie, e ognuna comincia con 'forse'.",
	},
	["ifo.muse.w20.shelf.011"] = {
		"Il catalogo della League è un libro così grande da avere un tavolo tutto suo, e un nano il cui unico lavoro è girarne le pagine senza strapparle.",
		"Qualcuno, nella League, tiene il catalogo: un libro enorme che elenca tutti gli altri. Vorrei sapere sotto quale voce elenca sé stesso.",
	},
	["ifo.muse.w20.shelf.012"] = {
		"I libri scampati a Gnomeregan hanno uno scaffale tutto loro nella biblioteca della League. È uno scaffale corto. Quasi tutto quello che avevamo scritto è ancora laggiù, nell'aria guasta, e non lo legge nessuno.",
		"Quando la città cadde, i nostri ingegneri salvarono progetti, non storie. La League conserva le poche cronache gnomesche uscite di là, e non riesco a passare davanti a quello scaffale senza contarle.",
	},
	["ifo.muse.w20.shelf.013"] = {
		"La bibliotecaria non ha detto una parola. Le sue sopracciglia hanno detto 'mani pulite', 'niente birra' e 'so dove dormi', tutto insieme.",
		"Leggere nella biblioteca della League non costa niente. Rovinare una pagina costa tutto. La bibliotecaria me l'ha spiegato con un sopracciglio solo.",
	},
	["ifo.muse.w20.shift.001"] = {
		"Qui nessuno ti chiede come hai dormito. Ti chiedono che turno fai, e il resto lo capiscono da sé.",
		"In questa città «che turno fai?» vuol dire ciao, come stai e dove vai, tutto insieme.",
	},
	["ifo.muse.w20.shift.002"] = {
		"osserva due carrettieri darsi il cambio a un carro carico in mezzo alla sala: uno lascia le stanghe, l'altro le afferra, e il carro non smette mai di rotolare.",
		"vede un carrettiere passare un carro pesante al compagno senza che nessuno dei due lo lasci rallentare, uno scambio fatto così spesso che non ha più bisogno di parole.",
	},
	["ifo.muse.w20.shift.003"] = {
		"Un nano mi ha detto che nelle brande dei minatori il posto non fa mai in tempo a raffreddarsi: un turno esce, l'altro entra. Lo diceva come se fosse un pregio.",
		"Nelle locande più affollate, mi dicono, un letto si affitta a turni, tre dormienti per giornata, e la coperta non fa in tempo a freddarsi. Parsimonioso. E vagamente inquietante.",
	},
	["ifo.muse.w20.shift.004"] = {
		"Qui nessuna lampada viene mai lasciata spegnere, e la forgia non si abbassa mai. Così la città si fabbrica i giorni con i turni, messi in fila senza buio in mezzo.",
		"Con solo roccia sopra la testa a distinguerle, le ore si fonderebbero una nell'altra come metallo colato. I cambi di turno sono le giunture che le tengono separate.",
	},
	["ifo.muse.w20.shift.005"] = {
		"Ho chiesto l'ora a un nano. «Fine del secondo turno», ha detto, come se chiunque potesse sapere cosa vuol dire.",
		"Chiedi l'ora sotto questa montagna e ti rispondono con un turno e una frazione. «Due terzi del primo.» Precisissimo, e non serve a niente.",
		"Mi hanno detto che è la «coda del terzo». Ho annuito come se avessi capito. Arriverò in ritardo da qualche parte.",
	},
	["ifo.muse.w20.shift.006"] = {
		"si scansa per lasciar passare una fila di minatori che smontano dal turno, neri fino agli occhi, ognuno con una gavetta vuota che dondola e sbatte contro il ginocchio di quello dopo.",
		"passa accanto a una panca dove tre nani appena smontati dal turno si slacciano gli stivali in silenzio, troppo stanchi perfino per discutere.",
	},
	["ifo.muse.w20.shift.007"] = {
		"Per qualcuno, in questa città, è sempre ora di cena. Le cucine non chiudono mai: cambiano solo il turno che sfamano.",
		"Colazione, cena, chiamatela come vi pare: sotto questa montagna le pentole non lasciano mai il fuoco. C'è sempre qualcuno che sta appena cominciando la giornata.",
	},
	["ifo.muse.w20.shift.008"] = {
		"Ho sentito annunciare la fine di un turno vicino alla Great Forge, e chiunque fosse a portata d'orecchio l'ha ripetuta, di sala in sala, sempre più fioca, finché vicino alla banca era solo una parola borbottata da qualcuno.",
		"Il richiamo del turno fa il giro dell'anello a voce: un fabbro lo urla, una guardia lo ripete, un cuoco lo canticchia. Dall'altra parte è appena un mormorio, eppure la gente posa gli attrezzi.",
	},
	["ifo.muse.w20.shift.009"] = {
		"Vicino a una porta c'è una lavagna dove un turno scrive col gesso i suoi nomi quando esce e li cancella quando rientra. Un nome è lì, non cancellato, da parecchio. Nessuno lo tocca.",
		"Una lavagna accanto a un ingresso elenca col gesso i nomi di un turno. Cancellati tutti tranne uno, e intorno a quello la lavagna è tenuta pulitissima.",
	},
	["ifo.muse.w20.shift.010"] = {
		"Sotto questa montagna non serve un orologio. All'inizio di un turno i martelli cadono pari e pesanti; verso la fine si sfilacciano e cominciano a litigare. Qualunque nano lo sente.",
		"I forestieri chiedono come facciamo a contare le ore qui dentro. Coi martelli, è ovvio: regolari a turno fresco, sghembi e stizziti in coda. Nessun nano ha bisogno che glielo insegnino.",
	},
	["ifo.muse.w20.shift.011"] = {
		"si prende uno sbadiglio da un fabbro che si trascina via dal turno, lo passa senza volerlo a una guardia, e guarda la guardia passarlo giù per le scale.",
		"sbadiglia dopo uno sbadiglio di un minatore di passaggio, e scatena una piccola catena lungo il parapetto: un cuoco, uno gnomo, una guardia che finge fosse un colpo di tosse.",
	},
	["ifo.muse.w20.shift.012"] = {
		"Gli gnomi contano il tempo con gli ingranaggi, i nani col richiamo del turno. Dai appuntamento a uno per parte e aspetterai due volte.",
		"Per gli orologi di Tinker Town è passato un quarto d'ora. Per le forge è la coda del secondo turno. Io so solo che sono in ritardo.",
	},
	["ifo.muse.w20.slag.001"] = {
		"arretra per lasciar passare un carrello di scorie che sferraglia, il carico che ancora ticchetta e scricchiola raffreddandosi, con un rosso fioco nelle crepe.",
		"fa strada a un nano che spinge con tutto il peso un carrello di scorie fresche, i grumi che ticchettano come una stufa quando il fuoco si è spento.",
	},
	["ifo.muse.w20.slag.002"] = {
		"Ho chiesto dove vadano a finire tutte le scorie. Tre nani mi hanno dato tre risposte, e il quarto ha detto «via», che sospetto sia quella vera.",
		"Carrelli di scorie lasciano la forgia senza sosta, e non ne ho mai visto uno tornare pieno né scoperto dove li svuotino. Ironforge deve avere un ripostiglio molto profondo.",
		"Le scorie vanno da qualche parte. Giù, ha detto un carrettiere, indicando il pavimento, come se la montagna avesse una cantina e le facesse piacere tenerla piena.",
	},
	["ifo.muse.w20.slag.003"] = {
		"Spaccato, un grumo di scoria dentro non è affatto opaco. È vetroso, verde e nero e di un blu imbronciato, come una bottiglia reduce da una guerra.",
		"Un pezzo di scoria spaccato vicino ai binari dei carrelli prende la luce della forgia: vetro scuro dentro, venato di verde. Spazzatura, per ogni nano qui. Per poco non me lo sono messo in tasca.",
		"Ogni fabbro scosta le scorie con un calcio senza guardarle, ma sotto la crosta è tutto vetro scuro e venature di colore. La forgia butta via cose più belle di quelle che vendono molte botteghe.",
	},
	["ifo.muse.w20.slag.004"] = {
		"guarda un fonditore togliere la crosta da una pozza di metallo fuso con un lungo rastrello di ferro, scostandola come la pellicola dal latte caldo.",
		"segue il lento tirare di un rastrello sulla superficie lucente di una colata, la schiuma opaca che si raccoglie sul bordo e ricade in un bidone in attesa.",
	},
	["ifo.muse.w20.slag.005"] = {
		"Un fabbro ha appena definito il lavoro del suo apprendista «scoria con ambizioni». L'apprendista l'ha presa come un complimento. In questa forgia, forse lo è.",
		"«Scoria», dice il mastro, battendo un dito sul pezzo. Una parola sola, e l'apprendista è già di nuovo alle braci prima del colpo successivo.",
	},
	["ifo.muse.w20.slag.006"] = {
		"Il pavimento vicino ai fonditori scricchiola sotto i piedi. Scoria tritata, mi ha detto un carrettiere, sparsa perché nessuno scivoli quando il metallo è in movimento. Qui alla forgia non si spreca niente, nemmeno lo scarto.",
		"Graniglia sulla pietra accanto alle fosse di fusione, nera e tagliente. Scoria macinata, sparsa per far presa, ha detto il nano con la scopa. Qui anche gli avanzi hanno un mestiere.",
	},
	["ifo.muse.w20.slag.007"] = {
		"sente il carrello delle scorie molto prima di vederlo: una ruota stride a ogni giro, e tutta la forgia ha chiaramente deciso che è un problema di qualcun altro.",
		"fa una smorfia allo stridio dell'asse secco di un carrello di scorie che gira lungo l'anello, mentre i fabbri lì vicino lavorano come se fosse un cinguettio.",
	},
	["ifo.muse.w20.slag.008"] = {
		"Ogni buona barra si lascia dietro un carrello di scorie, dicono i fabbri. Un vecchio minatore alla balaustra ha detto che una guerra è uguale, e poi per un po' non ha detto più niente.",
		"La scoria è ciò che il ferro cede per diventare ferro. Un nano dalla barba grigia, guardando i carrelli, mi ha detto che è così che il suo clan parla della Seconda Guerra: ciò che si è dato perché il resto reggesse.",
	},
	["ifo.muse.w20.slag.009"] = {
		"Qui alla Great Forge i carrelli delle scorie corrono su binari stretti tutti loro, lucidati dall'uso, che curvano verso una galleria che sa di pietra calda. Tutti li scavalcano senza guardare.",
		"Binari sottili attraversano il pavimento della Great Forge per i carrelli delle scorie, levigati dall'uso. I forestieri ci inciampano. I nani li scavalcano come si scavalca un gatto sulle scale.",
	},
	["ifo.muse.w20.slag.010"] = {
		"«Occhio alle scorie», mi dice ogni nano che incrocio. Non «salve», non «ben trovato»: occhio alle scorie.",
		"È il terzo fabbro che mi dice di badare agli stivali vicino al bidone delle scorie. Sono begli stivali. Ho capito l'antifona.",
	},
	["ifo.muse.w20.slag.011"] = {
		"siede per un po' sul bordo di un carrello di scorie vuoto, l'unico posto vicino alla forgia che nessuno sembra volere.",
		"si appollaia sul bordo di un carrello di scorie appena svuotato, il ferro ancora appena tiepido attraverso la stoffa, e guarda il lavoro andare avanti senza di {g:lui|lei}.",
	},
	["ifo.muse.w20.slag.012"] = {
		"Ogni carrello di scorie che passa vuol dire, da qualche parte dietro, una barra di buon acciaio, e qui ogni barra di buon acciaio finisce rivolta contro l'Orda. Tengo il cappuccio alzato e guardo i carrelli.",
		"Nella forgia del nemico, a contare carrelli di scorie come una spia maldestra. Ognuno è l'avanzo di un'armatura che qualcuno indosserà contro quelli come me. È difficile distogliere lo sguardo.",
	},
	["ifo.muse.w20.slag.013"] = {
		"I carrettieri delle scorie, qui alla Great Forge, stanno sul gradino più basso del mestiere, eppure la conoscono meglio di chiunque: gli errori di ogni fabbro finiscono da loro, a carrettate.",
		"Nessuno invidia i carrettieri delle scorie. Eppure a ogni turno passano da ogni banco della Great Forge, e quel che un fabbro butta via dice di lui più di quel che vende.",
	},
	["ifo.muse.w20.soot.001"] = {
		"gira intorno a uno spazzino che passa una lunga scopa ai piedi di un muro, sollevando una nuvoletta nera che si posa, con grande pazienza, su tutto ciò che è già stato spazzato.",
		"guarda una nana spazzare pulito un tratto di pavimento, voltarsi, e trovare una patina grigia già posata dove aveva cominciato.",
	},
	["ifo.muse.w20.soot.002"] = {
		"Qui nessuno veste di bianco, e adesso capisco perché. Una sciarpa chiara diventa color acqua dei piatti nel tempo di comprare il pane.",
		"In questa città il bianco non esiste. Solo grigio che si ricorda di quando era bianco.",
	},
	["ifo.muse.w20.soot.003"] = {
		"La fuliggine entra nelle pieghe delle nocche di un fabbro e non va più via del tutto. Ho visto nani strofinarsi le mani fino a farle rosa, e le linee restano disegnate in nero, come una mappa del lavoro.",
		"Sotto questa montagna ogni mano che lavora ha il contorno nero: fuliggine in ogni piega, sotto ogni unghia. Nessuno si impegna troppo a toglierla. È una specie di firma.",
	},
	["ifo.muse.w20.soot.004"] = {
		"I volti scolpiti sui muri più vicini alla forgia sono neri fino alle sopracciglia. Ogni tanto qualcuno sale su una scala con una spazzola, mi ha detto una guardia, e la fuliggine vince sempre.",
		"In alto sui muri i nani di pietra portano la fuliggine come una seconda barba. Ogni tanto uno spazzino su una lunga scala ne strofina uno, e ne vien fuori pallido e sbalordito.",
	},
	["ifo.muse.w20.soot.005"] = {
		"Ho della fuliggine in faccia? Non rispondere. In questa città tutti hanno della fuliggine in faccia.",
		"Una passata di mano sotto il naso, e adesso ho due baffi neri sul labbro. Splendido. Così almeno non do nell'occhio.",
	},
	["ifo.muse.w20.soot.006"] = {
		"Gratta la fuliggine da una cornice nelle sale più vecchie e la troveresti posata a strati, sottili e spessi, come gli anelli di un albero. Un nano mi ha detto che ci si leggono gli anni di gran lavoro, se si sa come.",
		"I muratori dicono che la fuliggine si posa a fasce, una scura per un anno duro alle forge, una chiara per un anno fiacco. Lassù vicino al soffitto c'è tutta la storia della città, scritta in nero.",
	},
	["ifo.muse.w20.soot.007"] = {
		"guarda una nonna nana inumidirsi il pollice e strofinare via una striscia di fuliggine dalla guancia di un bambino che si divincola, mentre il bambino protesta con tutta la sala.",
		"vede una robusta matrona nana acciuffare per il colletto un ragazzino di passaggio, sputare su un angolo del grembiule e grattargli via la fuliggine dalla faccia in tre colpi decisi.",
	},
	["ifo.muse.w20.soot.008"] = {
		"I cuochi di qui giurano che un po' di fuliggine fa bene al pane. Secondo me lo giurano perché non c'è modo di evitarla.",
		"Ogni pagnotta di Ironforge ha una spolverata grigia in cima. Il fornaio la chiama «sapore». Ho deciso di dargli ragione.",
	},
	["ifo.muse.w20.soot.009"] = {
		"Qui a Tinker Town uno gnomo ha costruito un aggeggio che aspira la fuliggine dall'aria. Ronza, sferraglia, e la fuliggine che esce dal retro è chissà come più nera di quella entrata.",
		"Un acchiappa-fuliggine ronza accanto a un banco da lavoro, coprendosi di una sottile peluria nera su ogni superficie. Il suo inventore dice che è la prova che funziona.",
	},
	["ifo.muse.w20.soot.010"] = {
		"Gli spazzini attraversano la città tutto il giorno e nessuno li vede. Senza di loro Ironforge in un anno sarebbe sepolta dalla sua stessa fuliggine. Credo che gran parte del lavoro importante del mondo sia così: invisibile, e quotidiano.",
		"C'è un nano con la scopa che lavora lo stesso tratto di sala ogni volta che passo. Nessuno lo ringrazia. Lo fa il pavimento, a modo suo: è la pietra più pulita della città.",
	},
	["ifo.muse.w20.soot.011"] = {
		"attende che un addetto alle lampade sganci un vetro diventato bruno di fuliggine, lo lucidi sulla manica finché brilla e lo riappenda perché ricominci a sporcarsi.",
		"segue lungo la sala una lampadaia che pulisce un vetro affumicato dopo l'altro, lasciandosi dietro una fila di lampade luminose come una scia.",
	},
	["ifo.muse.w20.soot.012"] = {
		"I nostri vecchi dicono che un nano pulito o è ricco o è sfaccendato, e nessuna delle due è un complimento. Guardo la fuliggine sui polsini e mi sento {g:vestito|vestita} come si deve.",
		"Fuliggine sui polsini, fuliggine nelle cuciture. Un forestiero ci vede sporcizia. Un nano ci vede una giornata di lavoro onesto, e non la cambierei con una camicia pulita.",
	},
	["ifo.muse.w20.soot.013"] = {
		"Qui nel Mystic Ward la fuliggine è di un altro colore: nero di candela, più fine di quella della forgia, che si raccoglie in ombre morbide sopra ogni leggio. Qualcuno sale a toglierla, immagino, prima che si posi sulle parole.",
		"I soffitti sopra i tavoli di lettura sono scuri di fumo di candela, un nero più morbido di quello che lascia la forgia. Anni di studio, che salgono e si posano, pagina dopo pagina.",
	},
	["ifo.muse.w20.spark.001"] = {
		"Un'inventrice mi ha detto che a Tinker Town il tempo si misura in sopracciglia: «due sopracciglia fa» vuol dire qualche mese buono. Credevo scherzasse, finché non ho visto le sue.",
		"Metà degli gnomi di Tinker Town ha le sopracciglia a diversi stadi di ricrescita. Dalle loro facce si potrebbe ricostruire l'ordine degli ultimi esperimenti.",
	},
	["ifo.muse.w20.spark.002"] = {
		"trasale quando un razzetto parte strillando da un banco, esplode in verde contro la volta di pietra e cosparge chi sta sotto di una cenere fine che frizza appena.",
		"si spazzola via dalla spalla un pizzico di cenere rosa, avanzo di un fuoco d'artificio provato sotto la montagna, e trova lo gnomo colpevole già intento a scusarsi con tre nani contemporaneamente.",
	},
	["ifo.muse.w20.spark.003"] = {
		"Una conversazione con una gnoma può interrompersi a metà frase mentre lei scarabocchia qualcosa sul polsino. Tre giorni dopo ti ritrova e finisce la frase, parola per parola, come se non fosse passato un minuto.",
		"Le idee, gli gnomi le conservano come gli scoiattoli le noci: sui polsini, sui palmi, sul retro delle ricevute altrui. Ho perso una lista della spesa per il progetto di una pompa migliore.",
	},
	["ifo.muse.w20.spark.004"] = {
		"In una città di ferro, rame e fuliggine, gli gnomi girano con capelli color caramella: rosa, verdi, di un azzurro che nessuna forgia saprebbe fare. Tinker Town sembra una scatola di colori rovesciata in una carbonaia.",
		"I capelli degli gnomi sono la cosa più vivace sotto la montagna: verde lime, rosa, viola, che ondeggiano all'altezza del gomito in mezzo al nero e al bronzo della città.",
	},
	["ifo.muse.w20.spark.005"] = {
		"Uno gnomo mi ha appena spiegato che non esistono prove fallite, solo dati. Poi il banco ha preso fuoco. Moltissimi dati.",
		"«Non è un'esplosione, è un'informazione» dice lo gnomo col cappello fumante. Molto istruttiva.",
	},
	["ifo.muse.w20.spark.006"] = {
		"Gli gnomi ridono di botti, ustioni e caldaie. Ma quando un tubo di Tinker Town si lascia sfuggire un sibilo inatteso, tutte le teste si alzano insieme, e le risate aspettano che qualcuno trovi la perdita.",
		"Un botto fra i banchi da lavoro si prende un applauso. Un sibilo leggero da una valvola si prende silenzio, e tre gnomi che corrono. Ci ho messo un po' a capire quale dei due li spaventa.",
		"C'è un suono che fa trasalire gli gnomi e che il resto di Ironforge nemmeno nota: il sibilo lieve e costante di un gas che trova la strada fuori da un tubo.",
	},
	["ifo.muse.w20.spark.007"] = {
		"guarda un nano passare troppo vicino alla bobina di rame ronzante di uno gnomo e proseguire con la barba ritta come un gatto spaventato, senza accorgersene, mentre lo gnomo prende nota.",
		"sente uno schiocco secco da una bobina sul banco di uno gnomo, e vede la barba di un nano di passaggio gonfiarsi in fuori come una scopa. Né il nano né lo gnomo ci fanno caso.",
	},
	["ifo.muse.w20.spark.008"] = {
		"I nomi degli gnomi sono lunghi e sferragliano come una scatola di bulloni. Qui quasi tutti ne tengono uno più corto per i nani, come si tiene una chiave di scorta vicino alla porta.",
		"Ogni gnomo di Tinker Town ha due nomi: quello vero, con tutte le sue sillabe, e quello che i nani riescono a dire dopo una pinta. Rispondono a tutti e due, con facce leggermente diverse.",
	},
	["ifo.muse.w20.spark.009"] = {
		"Ogni volta che uno gnomo di Tinker Town fa funzionare qualcosa, un altro pezzetto di Gnomeregan torna a portata di mano. La stiamo ricostruendo bullone dopo bullone, con rottami presi in prestito.",
		"Una buona idea su un banco di Tinker Town è come una lampada accesa nella vecchia città. Laggiù, mi dico, il buio si è appena fatto un po' più piccolo.",
	},
	["ifo.muse.w20.spark.010"] = {
		"Tinker Town ha un odore diverso dal resto di Ironforge: meno carbone, più stagno fuso, e un sapore aspro come una moneta di rame sulla lingua, che resta ovunque una bobina abbia ronzato.",
		"Dalle forge al quartiere degli gnomi l'odore cambia sotto il naso: il fumo lascia il posto allo stagno caldo, all'olio da macchine e a quel morso metallico di qualcosa che ha crepitato da poco.",
	},
	["ifo.muse.w20.spark.011"] = {
		"Regola di Tinker Town: se qualcosa comincia a fischiare, non chiedere cos'è. Continua a camminare, di buon passo.",
		"Vicino alle officine degli gnomi un fischio che sale vuol dire due cose: un bollitore, o un buon motivo per essere altrove. Nessuno aspetta di scoprire quale.",
		"Se uno gnomo vicino a te si accuccia all'improvviso, accucciati. Le domande dopo.",
	},
	["ifo.muse.w20.spark.012"] = {
		"si scansa per lasciar passare una gnoma di fretta con una manica che fuma, che la spegne a pacche senza rallentare né perdere il filo del discorso.",
		"guarda uno gnomo passare con un filo di fumo che gli sale da un gomito, immerso nella conversazione, e spegnerlo con due pacche distratte.",
	},
	["ifo.muse.w20.stranger.001"] = {
		"Qualcuno vicino al portone ha gridato «un orco!». Era un nano grosso così con un cappuccio verde. Le scuse sono durate più del panico.",
		"Mezza sala ha allungato la mano verso qualcosa di pesante quando dal portone è entrato un mantello verde. Era un'elfa della notte, e parecchio offesa.",
	},
	["ifo.muse.w20.stranger.002"] = {
		"Entra una mercante umana impacchettata come un fagotto di bucato e si toglie uno strato ogni venti passi. Alla forgia è rimasta in camicia e si fa ancora aria con la mano.",
		"Si capisce quanto un visitatore si è inoltrato in città da quanti mantelli ha ancora addosso. Gli umani partono da quattro.",
		"Gli umani entrano dal portone imbacuccati fino alle orecchie e se ne vanno nello stesso modo, e nel mezzo passano tutta la visita col cappotto in braccio.",
	},
	["ifo.muse.w20.stranger.003"] = {
		"nota un'elfa della notte che attraversa la sala senza fare rumore, e due nani che le fissano i piedi come se gli stivali fossero difettosi.",
		"coglie il momento in cui un'elfa della notte passa accanto a un gruppetto di nani: i discorsi si fermano, gli occhi scendono ai suoi stivali silenziosi, e la chiacchiera riprende un po' più forte, come per compensare.",
		"sente ogni passo della sala tranne uno; l'elfa della notte in mezzo alla folla si muove senza rumore, e un nano di passaggio continua a voltarsi a guardarla come se fosse sicuro di essersi perso qualcosa.",
	},
	["ifo.muse.w20.stranger.004"] = {
		"Ogni nano di questa sala capirebbe cosa sono, se mi fermassi troppo a lungo. Così continuo a camminare, ammiro gli intagli, e non canticchio.",
		"La loro città, la loro forgia, le loro guardie su ogni scala. Volevo vedere da vicino l'incudine del nemico. È più grande di quanto mi avessero detto.",
	},
	["ifo.muse.w20.stranger.005"] = {
		"In questa città un forestiero si becca una lunga occhiata impassibile e poi, senza che nessuno sembri averlo deciso, un posto a sedere. Ho avuto accoglienze più calde. Mai una più sicura.",
		"Un forestiero, i nani lo squadrano come squadrerebbero un attrezzo nuovo: peso, presa, difetti. Poi fanno un cenno, e il cenno è il verdetto. Vale la pena guadagnarselo.",
		"Ai forestieri i nani non sorridono. Ti squadrano, decidono, e poi hanno finito di decidere, il che è riposante. Non devi mai conquistarli due volte.",
	},
	["ifo.muse.w20.stranger.006"] = {
		"La città è un anello, il che è delizioso finché non vedi un umano passare tre volte davanti allo stesso armaiolo, ogni volta un po' più sicuro che la meta sia dietro l'angolo.",
		"Qui i visitatori girano in tondo e lo chiamano esplorare. I nani li lasciano fare. Prima o poi tutti si ritrovano davanti alla forgia.",
		"Un umano mi ha appena chiesto la strada per il tram. Ho indicato. Mi ha ringraziato. Me l'aveva chiesta anche un quarto d'anello fa, e avevo indicato nella stessa direzione.",
	},
	["ifo.muse.w20.stranger.007"] = {
		"Batti gli stivali sulla soglia, amico. Ti stai portando dentro mezzo Dun Morogh.",
		"È appena entrato qualcuno con la neve fino alle ginocchia, e tutti i nani a portata d'occhio sono all'improvviso molto impegnati a non ridere.",
	},
	["ifo.muse.w20.stranger.008"] = {
		"Un'elfa della notte sta compitando le rune sopra un arco, muovendo le labbra. Un nano le corregge la pronuncia passando, senza rallentare, e lei ringrazia la sua schiena.",
		"Un visitatore alto ha provato a leggere ad alta voce l'intaglio sopra una porta. Tre nani l'hanno corretto all'istante, ognuno in modo diverso. L'intaglio aspetta ancora un verdetto.",
	},
	["ifo.muse.w20.stranger.009"] = {
		"Umani, gnomi, elfi della notte, tutti sotto lo stesso tetto nanico e quasi sempre d'accordo. L'Alleanza fa più bella figura vista da una taverna che da un consiglio di guerra.",
		"Un soldato umano e un'esploratrice elfa della notte che si contendono l'ultima sedia, e un nano che risolve la questione sedendocisi sopra. L'Alleanza come piace a me: affollata, sgarbata e dalla stessa parte.",
	},
	["ifo.muse.w20.stranger.010"] = {
		"nota che le guardie fanno più caso del solito ai cappucci; nella sala si dice che sia stato visto un orco vicino al portone, e ora ogni cappuccio si prende una seconda occhiata.",
		"vede passare una figura incappucciata e gli occhi di tutta la folla seguirla un attimo di troppo, come una città guarda qualunque cosa possa essere un orco travestito.",
	},
	["ifo.muse.w20.stranger.011"] = {
		"Un nano mi ha guardato i guanti, ha schioccato la lingua e mi ha detto dove prenderne di decenti. Poi mi ha fatto strada fin lì. Non gliel'avevo chiesto.",
		"Non avevo ancora attraversato una sala e uno sconosciuto mi aveva già corretto la postura, la presa e la scelta del formaggio. Con gentilezza, badate bene.",
		"Qualcuno ha appena allungato le mani, mi ha sistemato il colletto, ha grugnito ed è ripartito. In questa città credo che valga come complimento.",
	},
	["ifo.muse.w20.throne.001"] = {
		"Il re quasi non usa il suo trono. Ci sta davanti in piedi, i pollici nella cintura, come un fabbro davanti a una forgia di cui si fida.",
		"Ha alle spalle un intero seggio di pietra scolpita, e Magni resta in piedi. Forse un re che siede troppo a lungo dimentica quanto pesa.",
	},
	["ifo.muse.w20.throne.002"] = {
		"rallenta nell'ultimo tratto verso il trono, e d'un tratto gli stivali sul pavimento lucido sembrano fare troppo rumore.",
		"si accorge di camminare più piano man mano che il trono si avvicina, come se il pavimento avesse cominciato, dolcemente, a salire.",
		"si raddrizza un poco quando il trono compare per intero, e continua a raddrizzarsi per il resto del tragitto.",
	},
	["ifo.muse.w20.throne.003"] = {
		"Molti viaggiatori passano da Ironforge senza mai trovare l'High Seat. Nessuno lo nasconde. I nani semplicemente non credono che un re abbia bisogno di cartelli.",
		"La sala del re sta un po' in disparte rispetto all'anello affollato, in fondo a un corridoio tutto suo. Bisogna volerci andare, ed è proprio questo il punto, pare.",
	},
	["ifo.muse.w20.throne.004"] = {
		"osserva le guardie ai piedi della pedana, così immobili che la luce delle lampade che scivola sulle loro maglie è l'unica cosa che si muove.",
		"nota che le guardie del re non guardano mai il re. Guardano tutti gli altri, fisso, in continuazione.",
		"conta le guardie attorno al trono, perde il conto, e solo allora si accorge che alcune delle sagome più immobili lungo le pareti sono guardie, non intagli.",
	},
	["ifo.muse.w20.throne.005"] = {
		"Davanti a un re nano ci si inchina, o basta un cenno del capo molto deciso? Nessuno lo spiega mai.",
		"Inchino, ginocchio a terra o stretta di mano? Con Magni, mi dicono, schiena dritta e stretta onesta valgono più di tutto il resto.",
	},
	["ifo.muse.w20.throne.006"] = {
		"Un vecchio storico ha il suo posto accanto al trono e racconta la Guerra dei Tre Martelli a chiunque glielo chieda. Si vede che gliel'hanno chiesto molte volte, e non l'ha mai accorciata.",
		"Lo storico del re sta a portata d'orecchio dal trono, con tutta la storia dei clan pronta sulla lingua. Fagli una domanda piccola e ti risponde in secoli.",
		"In questa sala anche la storia ha la sua sentinella: un vecchio studioso canuto accanto al trono, che aspetta che qualcuno gli chieda dei clan per poter cominciare dal principio.",
	},
	["ifo.muse.w20.throne.007"] = {
		"Qualcuno ha mai messo un cuscino sul trono di Ironforge? E che fine ha fatto, dopo?",
		"Un trono di pietra massiccia. Grandioso, certo. Io un cuscino lo vorrei comunque, e sospetto che qui chiederlo sia roba da forca.",
	},
	["ifo.muse.w20.throne.008"] = {
		"si fa da parte per due guardie del re che accompagnano verso l'High Seat un viaggiatore sporco di strada, una per gomito, con garbo e senza fretta.",
		"fa spazio nel corridoio a due guardie che scortano un visitatore verso la sala del re: il visitatore parla in fretta, le guardie per niente.",
	},
	["ifo.muse.w20.throne.009"] = {
		"Quando il re è di buon umore, dicono le guardie, lo viene a sapere tutta la città. Una risata come quella di Magni non resta chiusa in una sala.",
		"Si dice che la risata di Magni arrivi dall'High Seat fino a metà strada dalla Great Forge. I fabbri giurano di poterci battere il tempo.",
		"Una città brusca prende l'umore da un re brusco. Quando gira voce che Magni ha riso di qualcosa, il Commons sembra raddrizzare la schiena.",
	},
	["ifo.muse.w20.throne.010"] = {
		"L'High Seat è l'unico posto di Ironforge dove la forgia sembra lontana. Ma anche qui non smette mai del tutto.",
		"Nella sala del re il martellare si riduce a un brontolio attraverso la pietra, come una città intera che parla del suo sovrano alle sue spalle.",
		"Qui il frastuono della città arriva filtrato, smussato, quasi rispettoso. La pietra sembra sapere di chi è questa stanza.",
	},
	["ifo.muse.w20.throne.011"] = {
		"Un nano mi ha giurato che il re non dimentica mai una faccia che gli si è inginocchiata davanti. Buono a sapersi. La mia, prima, la lavo.",
		"Magni si ricorda di chiunque gli sia mai stato davanti, dicono le guardie. Se ci vado, ci vado in ordine.",
	},
	["ifo.muse.w20.throne.012"] = {
		"Qualcuno mi ha detto che metà delle suppliche portate al trono riguardano concessioni minerarie, e l'altra metà chi ha scavato nella concessione di chi. La giustizia nanica è soprattutto agrimensura.",
		"Cippi di confine, filoni che sconfinano sotto il pavimento del vicino, una galleria scavata un metro di troppo: questi, sento dire, sono i casi della corte del re. Ognuno è una piccola guerra combattuta con l'asta da misura.",
		"Altrove i re giudicano omicidi e tradimenti. L'High Seat, a quanto si dice, passa udienze intere a stabilire di chi sia il minerale sotto un muro conteso.",
	},
	["ifo.muse.w20.throne.013"] = {
		"piega la testa all'indietro per seguire gli intagli lungo le pareti dell'High Seat, finché la luce delle lampade si arrende prima della pietra lavorata.",
		"alza gli occhi verso la volta sopra il trono, dove gli intagli continuano a salire in un buio dove le lampade non arrivano mai.",
		"segue con lo sguardo una fascia di intrecci che corre per tutta la sala, senza interruzioni, finché sparisce dietro il trono.",
	},
	["ifo.muse.w20.throne.014"] = {
		"Da vicino, la prima cosa che noto del re sono le mani: larghe, segnate sulle nocche, mani di qualcuno che ha stretto ben altro che uno scettro.",
		"Più vicino al trono il re smette di sembrare una scultura e comincia a sembrare un nano: spalle pesanti, una bocca burbera, occhi che hanno fatto molti conti.",
	},
	["ifo.muse.w20.throne.015"] = {
		"china appena il capo quando lo sguardo del re attraversa la sala, e lo sguardo passa oltre senza fermarsi.",
		"si ritrova addosso per un istante gli occhi del re, che soppesano, prima di passare al volto successivo.",
	},
	["ifo.muse.w20.throne.016"] = {
		"guarda uno gnomo in attesa di udienza alzarsi in punta di piedi dietro una guardia, poi rinunciare e girarle semplicemente attorno.",
		"vede uno gnomo con una bracciata di pergamene tentare tre volte di passare tra i gomiti delle guardie, sempre con garbo e sempre gentilmente respinto.",
	},
	["ifo.muse.w20.throne.017"] = {
		"A Ironforge nessuno dice «re Magni». Dicono «il re», come se al mondo ce ne fosse uno solo degno della parola.",
		"Un nano di questa città non si prende mai il disturbo di dire quale re. «Il re» basta, così come «la forgia» basta per la Great Forge.",
	},
	["ifo.muse.w20.throne.018"] = {
		"Dal portone arriva voce che una tempesta ha chiuso i passi. Per ordine permanente del re, dicono, la guardia raddoppia ogni volta che il maltempo acceca le strade. Ironforge ha imparato cosa può arrivare coperto da una tempesta.",
		"Fuori c'è tempesta, dicono le sentinelle, e al portone i turni sono raddoppiati. In questa città il maltempo non è mai solo maltempo: per la guardia del re è un riparo per qualcuno.",
	},
	["ifo.muse.w20.throne.019"] = {
		"A quest'ora le lampade dell'High Seat saranno abbassate, e il re, mi dicono, ancora sveglio sulle sue lettere. I re nani dormono come le forge: di rado, e mai del tutto.",
		"La città ha rallentato per la notte, ma le guardie dicono che nella sala del re brucia ancora una luce. Sotto questa montagna i re fanno gli stessi orari dei fabbri, a quanto pare.",
	},
	["ifo.muse.w20.titan.001"] = {
		"Uno scalpellino del Commons è furioso per la teoria della League. Se i titani hanno fatto i nani di pietra, dice, allora il suo talento era già compreso nel prezzo, e lui rivuole indietro sessant'anni di vesciche.",
		"Non a tutti i nani piace l'idea della League di essere stati plasmati dai titani. Ai muratori meno che a tutti: hanno passato la vita a imparare un mestiere, e adesso uno studioso dice che era di serie.",
	},
	["ifo.muse.w20.titan.002"] = {
		"Ho visto uno studioso della League dare una pacca a un muro e chiamarlo 'cugino'. Il muro non ha risposto. Lo studioso l'ha presa come un tratto di famiglia.",
		"Se la League ha ragione e i nani sono usciti dalla roccia, ogni muro di questa città è un parente. Questo spiega perché non ti rivolgono la parola.",
		"Uno studioso della League bussa ai muri come gli altri bussano alle porte. Va a trovare i parenti, dice.",
	},
	["ifo.muse.w20.titan.003"] = {
		"Se la League ha ragione sui titani, discendo da una lunga stirpe di statue. Spiegherebbe le ginocchia.",
		"Plasmati dalla pietra, dice la League. E va bene. Però con chi ha fatto le ginocchia ci scambierei due parole.",
	},
	["ifo.muse.w20.titan.004"] = {
		"La teoria della League lascia inquieti alcuni nani. Se i titani li hanno plasmati, li hanno plasmati per uno scopo. Nessuno ha ancora trovato la pagina che dice quale.",
		"Essere fatti è una cosa. Essere fatti per qualcosa, e aver perso le istruzioni, è il punto su cui gli studiosi non si soffermano mai.",
	},
	["ifo.muse.w20.titan.005"] = {
		"Due nani su una scala stanno risolvendo la questione dei titani alla maniera nanica: uno dice pietra, l'altro dice fandonie, e hanno deciso di offrirsi un giro a vicenda finché qualcuno non si convince.",
		"In questa città la disputa sui titani non finisce mai. Passa da un tavolo all'altro, sempre più forte, finché qualcuno non fa notare che a un titano nessuno l'ha chiesto.",
		"Chiedi a tre nani dei titani e avrai quattro opinioni e una lite su chi paga il giro.",
	},
	["ifo.muse.w20.titan.006"] = {
		"Ho sentito una gnoma chiedere a uno studioso della League se qualcuno avesse plasmato anche gli gnomi. Lo studioso ha promesso di informarsi, col tono di un nano che non se l'è mai domandato.",
		"La League ha moltissimo da dire su chi ha fatto i nani e quasi niente su tutti gli altri. Gli gnomi di Tinker Town se ne sono accorti, e stanno compilando un elenco di domande.",
	},
	["ifo.muse.w20.titan.007"] = {
		"Un popolo che si è spaccato in tre clan e ha perso Grim Batol per una maledizione ha bisogno di un principio più grande delle sue liti. Forse è metà del motivo per cui la League scava così sodo in cerca dei titani.",
		"I nani hanno perso Grim Batol, e si sono persi tra loro. Un principio in cui erano un solo popolo, plasmato tutto insieme, dev'essere una consolazione. La League continua a scavare per trovarlo.",
		"Un tempo prima dei tre martelli, quando ce n'era uno solo: è questo che cerca la League. A ogni clan di Khaz Modan quella pagina piacerebbe, se riuscissero a mettersi d'accordo per leggerla.",
	},
	["ifo.muse.w20.titan.008"] = {
		"'Earthen', chiamano gli studiosi della League i primi nani, quelli che secondo loro erano ancora di pietra. Pronunciano la parola con cautela, come il nome di un anziano che potrebbe stare ascoltando.",
		"I dotti hanno un nome per ciò che pensano fossero i nani prima di diventare nani: gli earthen. Lo usano di rado, e mai per scherzo, il che per la League è tutto dire.",
	},
	["ifo.muse.w20.titan.009"] = {
		"Ogni nano si porta dentro un po' della domanda: da dove veniamo? La League la porta solo più lontano di noi altri, e con pale migliori.",
		"Strano, passare davanti a una teca di ossa antiche e chiedersi se sono di un cugino. La League ha reso ogni nano di questa città un po' orfano e un po' erede.",
	},
	["ifo.muse.w20.titan.010"] = {
		"studia una lavagna appesa al muro dove qualcuno ha scritto col gesso l'ultima idea della League sui titani, ne ha cancellata metà e ha ricominciato in lettere più piccole.",
		"nota una lavagna fitta di teorie sui creatori, ogni riga sbavata da quella dopo, e sotto una cassa appena arrivata dalle Badlands, ancora inchiodata.",
	},
	["ifo.muse.w20.titan.011"] = {
		"Gli scavatori dicono che a Uldaman la pietra è tagliata così netta che un muratore nano, a vederla, ammutolisce, poi torna a casa e si esercita per un mese.",
		"I migliori scalpellini della città vanno a vedere i muri di Uldaman, dicono gli scavatori, e rientrano in silenzio, e per settimane lavorano il doppio.",
	},
	["ifo.muse.w20.titan.012"] = {
		"Nella città del nemico i loro dotti sostengono che una stirpe di creatori li abbia plasmati dalla pietra. Spiegherebbe perché non cedono mai. Non per questo questi muri mi sembrano più amici.",
		"I nani dell'Alleanza credono di essere stati scolpiti da creatori più antichi del mondo. In mezzo alla loro città-forgia, tra tutta quella testardaggine, non ho voglia di discutere.",
	},
	["ifo.muse.w20.titan.013"] = {
		"Plasmati dai titani, dice la League. Ho appena visto due nani discutere un'ora sul prezzo dei chiodi. Chiunque li abbia fatti, non aveva fretta.",
		"Se i nani sono stati scolpiti nella pietra, qualcuno si è scordato di levigare le opinioni.",
	},
	["ifo.muse.w20.tome.001"] = {
		"I libri di preghiera dei nani hanno gli angoli d'ottone e i fermagli di ferro. Qualunque cosa ci sia dentro, sono decisi a non farla uscire.",
		"Ho raccolto il libro che era caduto a un accolito. Raccolto per modo di dire: pesava quanto una piccola incudine, e lui lo portava come una pagnotta.",
		"Solo i nani rilegherebbero un libro in modo che possa fermare una porta, un ubriaco e un dardo di balestra. Magari tutti e tre insieme.",
	},
	["ifo.muse.w20.tome.002"] = {
		"incrocia un accolito che percorre un corridoio con un libro aperto a braccio teso, muovendo le labbra, e si scosta per non fargli perdere il conto.",
		"lascia passare un giovane sacerdote che gira lentamente intorno a un pilastro leggendo ad alta voce alla pietra, che sembra un'ascoltatrice abbastanza paziente.",
	},
	["ifo.muse.w20.tome.003"] = {
		"Un vecchio sacerdote mi ha raccontato che quando gli orchi dilagarono in Khaz Modan, i libri delle rocche lontane entrarono nella montagna sulle spalle dei minatori, prima ancora del cibo. A lui sembrava l'ordine giusto.",
		"Nella Seconda Guerra, racconta un sacerdote del Mystic Ward, i libri delle rocche esterne furono portati dentro prima del grano. Alcuni dorsi hanno ancora i segni delle bruciature, e nessuno li ha mai rilegati.",
		"Un sacerdote mi ha mostrato un libro con una bruciatura grande quanto una mano sulla copertina. «Seconda Guerra», ha detto, nient'altro, e l'ha rimesso al suo posto d'onore.",
	},
	["ifo.muse.w20.tome.004"] = {
		"Un mago mi ha appena detto che la parte difficile della magia è leggere. Speravo fossero le palle di fuoco.",
		"Chiedi a un mago il segreto dell'arcano e ti ritrovi con una lista di letture. Lunga.",
	},
	["ifo.muse.w20.tome.005"] = {
		"Ogni mago gnomo che studia nel Mystic Ward legge da un libro in prestito. I nostri sono ancora a Gnomeregan, su scaffali che i troggs non sanno leggere, sotto un'aria che non riusciamo a sopportare.",
		"Nel Mystic Ward i nani prestano i loro libri senza storie, e io li rendo con ogni angolo ben spianato. Sotto Dun Morogh, intanto, intere biblioteche gnomesche ammuffiscono in stanze avvelenate.",
	},
	["ifo.muse.w20.tome.006"] = {
		"Qui nel Mystic Ward gli istruttori interrogano gli allievi ad alta voce, e tutta la sala impara con loro. Adesso so tre cose sulle protezioni magiche che non avevo nessuna voglia di sapere.",
		"Resta abbastanza a lungo in un punto qualsiasi di questa sala e passerai per sbaglio l'esame di qualcuno. Gli istruttori chiedono, gli allievi inciampano, e le risposte arrivano a chiunque stia ascoltando.",
		"In questa sala ho imparato l'ordine giusto della borsa di un guaritore, tre usi del gelo e come va tenuto un turibolo, tutto senza fare una sola domanda.",
	},
	["ifo.muse.w20.tome.007"] = {
		"adocchia un apprendista mago che passa di fretta con un libro dal bordo superiore annerito, e non chiede quale pagina sia stata.",
		"nota le bruciature agli angoli del libro di uno studente, ordinate e regolari, come se lo stesso errore fosse stato fatto su ogni pagina.",
	},
	["ifo.muse.w20.tome.008"] = {
		"Ho sfogliato un libro nanico della Luce lasciato aperto su un leggio. Metà erano preghiere. L'altra metà spiegava come rimettere un osso e quanto sale mettere nell'acqua per lavare una ferita. Per i nani non c'è differenza.",
		"I libri sacri del Mystic Ward hanno ricette a margine: impiastri, stecche, un buon brodo per i malati. I sacerdoti nani leggono la Luce come un fabbro legge un progetto.",
		"Le scritture dei nani, da quel che ho intravisto, sono avare di visioni e generose di istruzioni. Lava la ferita. Nutri il malato. Ripara il tetto. Poi ringrazia.",
	},
	["ifo.muse.w20.tome.009"] = {
		"Lascia un libro aperto su una panca del Mystic Ward: nessuno lo tocca, nessuno lo toccherà. Questa è Ironforge.",
		"Un libro lasciato su una panca del Mystic Ward è più al sicuro di una moneta in quasi tutte le banche.",
	},
	["ifo.muse.w20.tome.010"] = {
		"In una città dove tutti hanno le mani occupate, chi legge nel Mystic Ward sembra quasi in ozio. Guarda meglio: le dita scendono lungo la pagina come quelle di un muratore lungo una commessura, saggiando ogni riga.",
		"Leggere sembra riposare, finché non guardi un nano farlo. Il dito sulla riga, la mascella serrata, le labbra strette: la stessa faccia che farebbe davanti a un rivetto ostinato.",
		"Un nano legge con tutto il corpo: spalle curve, barba rimboccata, un pollice a tenere ferma la pagina come se potesse scappare.",
	},
	["ifo.muse.w20.tome.011"] = {
		"Alcuni libri del Mystic Ward sono incatenati ai leggii. Un sacerdote dice che è contro i ladri. Un apprendista gnomo dice che è contro i libri. Non sono {g:rimasto|rimasta} a scoprire chi avesse ragione.",
		"Catene ai leggii del Mystic Ward, grosse maglie naniche. Contro i ladri, dice il sacerdote. Contro i libri che se ne vanno in giro, dice uno gnomo, serissimo.",
	},
	["ifo.muse.w20.tome.012"] = {
		"Ho aperto un libro nel Mystic Ward e tre persone hanno alzato gli occhi come se avessi aperto la loro posta.",
		"Ho preso in mano il libro sbagliato, nel Mystic Ward. L'occhiata che mi è arrivata avrebbe potuto temprare l'acciaio.",
		"Promemoria: nel Mystic Ward ogni libro è di qualcuno, e quel qualcuno sta guardando.",
	},
	["ifo.muse.w20.tram.001"] = {
		"Un nano è appena risalito dal tram con il naso rosa e spellato, di ritorno da qualche giorno a Stormwind. Gli amici sono spietati, e lui sopporta come un eroe.",
		"Riconosci subito i nani di ritorno da Stormwind: naso rosso, occhi socchiusi, lamentele sul troppo chiarore. Qui dentro sbattono le palpebre felici alla luce delle lampade, a loro agio nella penombra.",
	},
	["ifo.muse.w20.tram.002"] = {
		"scorge un impiegato umano uscire dal passaggio del tram stringendo una borsa di registri e chiedere a uno gnomo la strada per la banca; lo gnomo gli fa uno schema.",
		"vede un viaggiatore appena sceso dal tram chiedere indicazioni a uno gnomo e ricevere, dopo un attimo di riflessione, un piccolo schizzo con le distanze segnate e una nota sulle scale da evitare.",
	},
	["ifo.muse.w20.tram.003"] = {
		"Prima che arrivi una vettura del tram, nei binari sale un sibilo sottile, come un bollitore. Gli gnomi vicino al passaggio capiscono dal tono quanto è carica. Io capisco che sta arrivando, e più in là non arrivo.",
		"I binari cantano una nota alta e sottile un attimo prima di ogni vettura. Gli gnomi piegano la testa per ascoltarla, come musicisti in cerca di una corda stonata.",
	},
	["ifo.muse.w20.tram.004"] = {
		"Prima di scendere al tram, ogni nano si mette in tasca il suo pane. Quello degli umani, dicono, è quasi tutta aria con una crosta per coperchio.",
		"Al passaggio del tram un nano infila nello zaino tre pagnotte di pane nero per un viaggetto a Stormwind, borbottando che laggiù gli umani cuociono nuvole.",
		"Ogni nano diretto a Stormwind riceve lo stesso consiglio prima del tram: porta del formaggio, porta una fiaschetta, e non lasciarti dire che quella roba è birra.",
	},
	["ifo.muse.w20.tram.005"] = {
		"A sentire gli gnomi, il tram è una delle ultime grandi opere che hanno portato a termine quando avevano ancora una città loro. Ne parlano come di una lettera spedita poco prima che la casa andasse a fuoco.",
		"Del tram, gli gnomi non si vantano molto. Quando lo fanno, c'è sempre un piccolo nodo nella voce: è stato finito, dicono, quando avevano ancora un posto dove tornare.",
	},
	["ifo.muse.w20.tram.006"] = {
		"Gli umani salgono in tram con la borsa piena e ridiscendono con stivali nanici e un'opinione nanica dei loro fabbri.",
		"Ogni umano che scende dal tram va dritto dai fabbri e riparte con qualcosa di pesante. Verso sud le vetture devono viaggiare più basse.",
	},
	["ifo.muse.w20.tram.007"] = {
		"guarda due gnomi incontrarsi all'imbocco del passaggio del tram, uno appena salito da Stormwind, e scambiarsi un pacco di pezzi e una lunga lista di notizie nel tempo di una stretta di mano.",
		"vede uno gnomo risalire di corsa dal tram con una cassa di tubi di rame mandata dagli gnomi di Stormwind, e una dozzina di mani allungarsi prima che tocchi terra.",
	},
	["ifo.muse.w20.tram.008"] = {
		"Ogni vettura porta su una manciata diversa: un mercante di Stormwind aggrappato alla sua bolla di carico, due soldati in licenza che già discutono su quale taverna, uno studioso con una cassa di ossa per l'Explorers' League. Il tunnel non fa distinzioni.",
		"Osserva abbastanza a lungo il passaggio del tram e mezzo regno di Stormwind ne uscirà alla spicciolata: scrivani, soldati, pellegrini, venditori ambulanti, e tutti in cerca di un mantello.",
		"Un soldato umano risale dal tram, vede la grandezza delle sale e si toglie l'elmo, come se fosse entrato in un tempio.",
	},
	["ifo.muse.w20.tram.009"] = {
		"In cima al passaggio del tram una gnoma ha messo su un banchetto e vende sciarpe di lana agli umani appena arrivati. Gli affari vanno a gonfie vele. I prezzi salgono a ogni brivido.",
		"Chi vende muffole vicino al tram dev'essere lo gnomo più ricco della città. Da Stormwind nessuno si porta mai il necessario per Dun Morogh.",
	},
	["ifo.muse.w20.tram.010"] = {
		"Con la neve che scende su Dun Morogh, il tram è l'ingresso furbo. Le vetture arrivano piene, e i passeggeri passano accanto a chi entra dal portone incrostato di neve con l'aria di chi la sa lunga.",
		"I viaggiatori che si scrollano la neve dagli stivali al grande portone guardano storto quelli che escono asciutti da Tinker Town. Certe lezioni si imparano una volta sola, al portone, con un tempo così.",
	},
	["ifo.muse.w20.tram.011"] = {
		"Il tram è l'unica strada di Khaz Modan con un tetto sopra e niente troggs. Più o meno.",
		"La strada migliore per lasciare Ironforge: niente cumuli, niente troggs, niente salite. Solo un sacco d'acqua sopra la testa e uno gnomo che giura che va tutto bene.",
	},
	["ifo.muse.w20.tram.012"] = {
		"Qui, presso il passaggio del tram, il pavimento è rigato da mille linee chiare, dove casse e bauli sono stati trascinati fuori dal tunnel. Una mappa di ogni carico mai salito da Stormwind.",
		"Solchi consumati nella pietra all'imbocco del tram, bassi e paralleli: anni di bauli trascinati su da viaggiatori troppo orgogliosi per chiedere un facchino.",
	},
	["ifo.muse.w20.tram.013"] = {
		"fa strada a una gnoma che spinge su dal tram un carrello di casse, una pila alta tre volte lei, guidando sporgendosi di lato per sbirciare.",
		"si fa da parte nel passaggio del tram mentre una torre di casse passa su ruote cigolanti, con sotto un paio di stivaletti da gnomo.",
	},
	["ifo.muse.w20.tram.014"] = {
		"Qualcuno ha messo il passaggio del tram proprio accanto alle officine più indaffarate della città. Esplosioni da una parte, il mare dall'altra. Gli gnomi la chiamano comodità.",
		"Il tram da una parte, i banchi di prova dall'altra. L'idea di quartiere tranquillo che hanno a Tinker Town.",
	},
	["ifo.muse.w20.vault.001"] = {
		"Gli impiegati della banca non ti diranno mai cosa c'è nella cassetta di qualcuno. Chiedi però cosa giace lì da più tempo senza che nessuno lo tocchi, e ti risponderanno con un sospiro lunghissimo.",
		"Metà di quello che sta nel Vault, mi ha confessato un impiegato, sono cose troppo belle da buttare e troppo inutili da portarsi dietro. Me l'ha detto guardandomi dritto in faccia.",
	},
	["ifo.muse.w20.vault.002"] = {
		"osserva un banchiere abbassare un coperchio di ferro sui risparmi di qualcuno senza neanche guardare, con un colpo secco come la sentenza di un giudice.",
		"sente i pesanti coperchi delle casseforti chiudersi uno dopo l'altro dietro i banconi della banca, ognuno un punto fermo di ferro.",
	},
	["ifo.muse.w20.vault.003"] = {
		"Nessuno a Ironforge sa più cose di tutti quanto i banchieri, e a nessuno importa meno. Tutti quei segreti, archiviati a peso.",
		"Un banchiere del Vault potrebbe dirti chi è ricco, chi è al verde e chi nasconde qualcosa. Nessuno di loro l'ha mai fatto. È la cosa più riposante che hanno.",
	},
	["ifo.muse.w20.vault.004"] = {
		"Ogni volta che apro la mia cassetta in banca ci trovo qualcosa che non ricordo di averci messo. O perdo la memoria, o la cassetta fa i figli.",
		"La mia cassetta in banca è piena di cose che avevo giurato mi sarebbero servite. Non me n'è servita nessuna. Le tengo tutte.",
		"Se la cassetta si riempie ancora un po', mi toccherà aprire un secondo conto per quello che non ci sta.",
	},
	["ifo.muse.w20.vault.005"] = {
		"La fila alla banca è l'unica fila silenziosa di Ironforge. Nani che verrebbero alle mani per il prezzo di un cardine aspettano il loro turno lì come pietre in un muro.",
		"Qualcosa nella fila della banca calma persino i nani. Ci stanno con le mani giunte, solenni come una guardia d'onore, il tutto per depositare undici rame.",
		"Nella fila della banca anche il nano più chiassoso della città abbassa la voce, come se le monete là dietro potessero svegliarsi.",
	},
	["ifo.muse.w20.vault.006"] = {
		"Tutto quello che possiedo sta in una cassetta del Vault. Tutto quello che possedevo è ancora a Gnomeregan, sotto i trogg. Il banchiere non chiede mai quale dei due elenchi sia più lungo.",
		"I nani custodiscono le mie poche cose dietro il ferro. Quello che avevo prima sta dietro un'altra porta, una che adesso è dei trogg. Cerco di essere {g:grato|grata} per la cassetta.",
	},
	["ifo.muse.w20.vault.007"] = {
		"aspetta dietro un nano che impila monete sul bancone della banca in torri da dieci, e che ricomincia a contare ogni volta che qualcuno gli sfiora il gomito.",
		"attende paziente dietro un nano che costruisce ordinate torrette di rame sul bancone del Vault, e presto si ritrova a contare in silenzio insieme a lui.",
	},
	["ifo.muse.w20.vault.008"] = {
		"Un vecchio impiegato giura che il Vault custodisce ancora registri di prima della Guerra dei Tre Martelli, conti che nessuno al mondo potrebbe saldare. Dice che quadrano. Sembra quasi offeso che qualcuno lo chieda.",
		"I registri più antichi del Vault, mi ha detto un impiegato, sono scritti in una grafia che nessuno usa più, e certi debiti lì dentro risultano ancora aperti. Il Vault non dimentica una cifra solo perché il debitore è diventato polvere.",
	},
	["ifo.muse.w20.vault.009"] = {
		"Deposito, ritiro, deposito. Io e il banchiere ci vediamo parecchio, e lui ancora non sa come mi chiamo.",
		"Ho fatto la fila a quel bancone sei volte. Sei. E ogni volta mi saluta come un estraneo di cui non si fida del tutto.",
	},
	["ifo.muse.w20.vault.010"] = {
		"La neve si scioglie dagli stivali di chi fa la fila in banca in piccole pozze grigie, e gli impiegati del Vault le guardano come guarderebbero una moneta falsa.",
		"Tutti in fila alla banca si sono portati dentro un po' di Dun Morogh sugli stivali. Il pavimento del Vault si scurisce di neve sciolta, e un impiegato ci passa lo straccio intorno con evidente sofferenza.",
	},
	["ifo.muse.w20.vault.011"] = {
		"Nel Vault non c'è solo oro. Ho visto un nano depositare un giocattolo di legno da bambino, avvolto in un panno pulito, e firmare la ricevuta con la stessa cura che per una barra di mithril.",
		"Una gnoma davanti a me ha messo nella sua cassetta un solo ingranaggio piegato, l'ha chiusa ed è rimasta un momento con la mano sul coperchio. L'impiegato ha aspettato senza metterle fretta.",
		"La gente deposita cose strane. Una pipa incrinata. Una lettera mai aperta. Un anello appeso a uno spago. Gli impiegati registrano ognuna come se valesse una fortuna, e per qualcuno la vale.",
	},
	["ifo.muse.w20.vault.012"] = {
		"si fa da parte per un impiegato della banca che regge tra le braccia un registro spesso come una lastra di selciato, con tutta la cura di chi porta un bambino addormentato.",
		"lascia passare un impiegato del Vault che corre stringendo un registro enorme, macchiato d'inchiostro fino ai gomiti, borbottando un totale parziale.",
	},
	["ifo.muse.w20.vault.013"] = {
		"Il Vault scrive il nome di un nano con accanto il clan, all'antica. A vedere il mio lì, nella grafia squadrata dell'impiegato, mi raddrizzo un poco.",
		"Il mio nome nei registri del Vault, clan compreso, in lettere squadrate come pietra tagliata. Da qualche parte in questa montagna sono {g:scritto|scritta} come si deve.",
	},
	["ifo.muse.w20.vault.014"] = {
		"Gli impiegati del Vault tengono un cassetto di lettere sigillate, mi ha detto un nano, ciascuna da spedire se il proprietario smette di passare a chiederla. Il cassetto non è mai vuoto. A nessuno piace chiedere quanto spesso venga aperto.",
		"C'è chi lascia una lettera in banca prima di una strada difficile, da imbucare se di lui non si saprà più nulla. Gli impiegati le archiviano con la stessa cura dell'oro. Non le leggono. Non ne hanno bisogno.",
	},
	["ifo.muse.w20.veteran.001"] = {
		"I veterani raccontano che nella Seconda Guerra i fuochi dell'Orda coprivano la valle sotto il portone così fitti da sembrare una seconda città. I nani, dentro, li guardarono bruciare per mesi, e tennero le porte chiuse.",
		"Una vecchia guardia mi ha raccontato che durante l'assedio, dal portone, si sentivano gli orchi cantare sui pendii. Lo diceva come chi descrive una febbre che non vorrebbe riprendersi una seconda volta.",
	},
	["ifo.muse.w20.veteran.002"] = {
		"Non tutti i nani riuscirono a entrare prima che il portone si chiudesse, nella Seconda Guerra. I veterani non nominano i villaggi rimasti fuori. Si fanno solo silenziosi negli stessi punti del racconto.",
		"Chiedi a un veterano dell'assedio e sentirai come resse il portone. Chiedi cosa ci fosse fuori e non sentirai niente, che è già una risposta.",
	},
	["ifo.muse.w20.veteran.003"] = {
		"rallenta su una scala dietro un vecchio nano che sale ogni gradino con la stessa gamba per prima, una zoppia pulita ed esercitata che evidentemente gli fa compagnia da decenni.",
		"aspetta ai piedi di una scala mentre un veterano dalla barba bianca la scende col ginocchio cattivo sempre davanti, senza mano sul corrimano e senza alcuna fretta.",
	},
	["ifo.muse.w20.veteran.004"] = {
		"Due veterani alla balaustra confrontano le cicatrici, non per grandezza ma per data. Tutto ciò che viene dalla Seconda Guerra vince e basta. Il più giovane continua a riabbassarsi la manica.",
		"Tra i vecchi soldati una cicatrice è una specie di ricevuta. Non la sfoggiano: la esibiscono, in silenzio, quando qualcuno mette in dubbio il prezzo pagato.",
		"Una vecchia guardia arrotola una manica, mostra una cucitura pallida dal polso al gomito e dice solo il nome di un valico. Gli altri annuiscono come se fosse tutta la storia, e forse lo è.",
	},
	["ifo.muse.w20.veteran.005"] = {
		"Cadde tutto Khaz Modan, e questo portone no. Certe porte sono semplicemente fatte meglio.",
		"L'Orda teneva ogni valico di Khaz Modan e ha dovuto comunque fermarsi davanti a quel portone. Tanto di cappello ai muratori.",
	},
	["ifo.muse.w20.veteran.006"] = {
		"I veterani hanno combattuto gli orchi al portone. Le guardie più giovani combattono i troggs nelle gallerie. Si sente la differenza da come ciascuno dice 'nemico'.",
		"Un vecchio soldato dice che gli orchi, almeno, arrivavano di fronte. I troggs salgono dal pavimento, e nessun portone è mai stato scavato per fermare questo.",
	},
	["ifo.muse.w20.veteran.007"] = {
		"sosta vicino a un veterano a cui tremano le mani mentre carica la pipa, finché il fornello non è pieno e acceso: da lì in poi sono ferme come pietra.",
		"nota un vecchio soldato le cui mani tremano sulla balaustra, e come si fermano di colpo appena da qualche parte in città suona un corno.",
	},
	["ifo.muse.w20.veteran.008"] = {
		"Alcuni veterani parlano ancora con calore degli umani che arrivarono ad aiutare a liberare Khaz Modan. Con calore da nani, s'intende: li chiamano 'niente male', e offrono un giro a quelli che sono rimasti.",
		"I vecchi soldati ricordano le bandiere dell'Alleanza che risalivano i valichi nella Seconda Guerra. Per questo, a certi tavoli di questa città, un umano viene servito un po' prima, senza mai sapere perché.",
	},
	["ifo.muse.w20.veteran.009"] = {
		"I veterani dell'assedio bevono a un tavolo tutto loro, e noi altri aspettiamo che ci chiamino. Nessuno ha mai detto che sia una regola. Nessuno l'ha mai infranta.",
		"Quando passa una delle vecchie guardie dell'assedio, i nani più giovani alla balaustra trovano tutti un motivo per raddrizzarsi. Lo faccio anch'io. Nessuno ce lo insegna: sta nella pietra, e basta.",
	},
	["ifo.muse.w20.veteran.010"] = {
		"L'assedio si allunga un po' ogni volta che il vecchio soldato alla balaustra lo racconta. Ormai l'Orda è rimasta al portone nove anni, si è portata i draghi, il che è vero, e ogre grandi come la montagna, il che è generoso.",
		"Il racconto dell'assedio di un veterano guadagna un dettaglio nuovo a ogni giro. Gli amici non lo correggono. Quel dettaglio lo aggiungono anche loro, quando tocca a loro raccontarlo.",
		"A starli a sentire abbastanza, ogni veterano di Ironforge ha tenuto il portone di persona. Quel portone doveva essere parecchio affollato.",
	},
	["ifo.muse.w20.veteran.011"] = {
		"I vecchi soldati in marcia per le Wetlands girano alla larga da Grim Batol, e non per quello che ci vive adesso. Certa terra, nella testa di un nano, resta maledetta qualunque cosa trovino gli studiosi.",
		"Grim Batol era una fortezza nanica, un tempo. I veterani non pronunciano il suo nome nel Military Ward: alzano il mento verso nord e lasciano che lo dica il silenzio.",
	},
	["ifo.muse.w20.veteran.012"] = {
		"Dark Iron nelle gallerie, dicono le guardie. Spero si siano portati il pranzo: la strada per Blackrock è lunga.",
		"Ogni poche settimane ci sono spie Dark Iron nelle profondità o troggs nelle miniere. Dev'essere la fortezza più visitata del mondo.",
		"Troggs nelle vecchie miniere, si dice. Penseresti che imparino. Penseresti che i nani smettano di aprire la porta con tanto entusiasmo.",
	},
	["ifo.muse.w20.veteran.013"] = {
		"si attarda al bordo del campo d'addestramento accanto a un vecchio nano su uno sgabello, che guarda i giovani allenarsi muovendo le labbra e li corregge tutti senza emettere un suono.",
		"nota un veterano dalla barba grigia che segue lo sparring da una panca e trasale a ogni colpo preso un po' troppo in pieno, come se lo sentisse ancora lui al posto dell'allievo.",
	},
	["ifo.npc_meet.w20.bank.001"] = {
		"aspetta mentre il banchiere annota ogni oggetto in un registro grande come una lastra di selciato, asciuga la riga e la rilegge a voce alta per sicurezza.",
		"consegna un fagotto e osserva il banchiere elencarlo pezzo per pezzo in un registro gonfio, poi sottolineare l'elenco due volte.",
		"posa le cose sul banco una dopo l'altra perché il banchiere possa annotarle, e si sente chiedere con garbo di andare ancora più piano.",
	},
	["ifo.npc_meet.w20.bank.002"] = {
		"Il banchiere mi chiede di firmare. Firmo. Il banchiere confronta la firma con il nulla, aggrotta la fronte e la accetta. Sospetto che il cipiglio faccia parte del servizio.",
		"Una firma, un timbro, un secondo timbro per il primo. Nessuno entrerà nella mia cassetta senza compilare un modulo, io per {g:primo|prima}.",
	},
	["ifo.npc_meet.w20.bank.003"] = {
		"Trattatelo bene. Una parte vale perfino qualche soldo.",
		"Non guardate troppo da vicino. È quasi tutta roba affettiva, e il resto è ciarpame che non ho il coraggio di vendere.",
		"Tenetelo all'asciutto e in silenzio. È tutto quello che chiedo, a lui e a voi.",
	},
	["ifo.npc_meet.w20.bank.004"] = {
		"Dietro il banchiere si chiude una porta pesante, e il tonfo mi scende fino agli stivali. Qualunque cosa ci sia là dietro, non uscirà per sbaglio.",
		"Un tonfo cupo dal fondo del Vault of Ironforge: una porta pesante come un carro, che si chiude. Il rumore più rassicurante della città.",
	},
	["ifo.npc_meet.w20.bank.005"] = {
		"osserva il banchiere far scorrere a gran velocità le palline di un piccolo pallottoliere d'ottone e arrivare al totale prima che {g:lui|lei} abbia finito di farlo a mente.",
		"ascolta il ticchettio delle palline sul pallottoliere del banchiere, rapido e regolare come un orologio che non resta mai indietro.",
		"guarda le dita del banchiere volare sul pallottoliere, poi fermarsi di colpo su una pallina, che torna indietro con un piccolo scatto di disapprovazione.",
	},
	["ifo.npc_meet.w20.bank.006"] = {
		"Il banchiere sa dirmi cosa c'è nella mia cassetta senza aprirla. Non so decidere se sia un servizio impeccabile o qualcosa di cui preoccuparmi.",
		"Neanche un'occhiata al registro. {other} lo sa e basta. In quella testa c'è l'elenco di tutto ciò che chiunque abbia mai lasciato qui in custodia.",
	},
	["ifo.npc_meet.w20.bank.007"] = {
		"Solo una piccola cosa da lasciarvi. Preferisco non portarmela dietro nei guai.",
		"Me lo tenete voi? È il genere di cosa che perderei in una zuffa.",
		"Posso vedere cosa c'è dentro? Ne ho dimenticato metà, e spero in una bella sorpresa.",
	},
	["ifo.npc_meet.w20.bank.008"] = {
		"si sente squadrare dal banchiere da sopra un paio di piccoli occhiali rotondi, per il tempo esatto che serve a stabilire che non è in programma una rapina.",
		"osserva il banchiere spingere un paio di occhiali su per un naso largo e scrutare il deposito come se potesse essere falso.",
		"vede {other} esaminare il deposito con una lente d'ingrandimento, lentamente, come se le monete fossero sospettate.",
	},
	["ifo.npc_meet.w20.bank.009"] = {
		"Monete vecchie nel vassoio del banchiere, coniate con volti di re che qui nessuno nomina più. Un caveau conserva tutto, anche quello che una città preferirebbe dimenticare.",
		"Nel vassoio del banchiere ci sono monete consumate fin quasi a essere lisce, con le corone appena visibili. Il denaro sopravvive ai regni che l'hanno coniato.",
		"Fra le monete nel vassoio del banchiere ce n'è una così vecchia che il re raffigurato ha un nome che qui nessuno conoscerebbe. Viene contata lo stesso, e vale ancora il suo peso.",
	},
	["ifo.npc_meet.w20.bank.010"] = {
		"In tutto il tempo che serve a riporre le mie cose, la faccia del banchiere si muove due volte: una per accigliarsi davanti a un graffio, una per accigliarsi davanti a me.",
		"Qui i banchieri non sorridono. Un sorriso lascerebbe intendere che si possa convincerli di qualcosa.",
		"La faccia del banchiere ha tutto il calore della porta blindata, e scopro di fidarmene di più proprio per questo.",
	},
	["ifo.npc_meet.w20.bank.011"] = {
		"riceve dal banchiere un piccolo gettone timbrato e la raccomandazione, serissima, di non perderlo, come se ne dipendesse la montagna intera.",
		"prende la ricevuta dalla mano del banchiere e la trova tiepida di timbro, con l'inchiostro che deve ancora asciugarsi.",
	},
	["ifo.npc_meet.w20.bank.012"] = {
		"Si paga per guardare? Si paga anche per guardare, vero?",
		"Tutto dentro, niente fuori. Mi dicono che le fortune cominciano così.",
		"Un'ultima cosa da depositare: la mia stima per il vostro caveau. Gratis.",
	},
	["ifo.npc_meet.w20.giver.001"] = {
		"Il guaio arriva con una mappa disegnata sul retro di un conto, e chi chiede continua a lisciarla come se questo potesse accorciare la distanza.",
		"Un pezzo di carta spinto verso di me, pieno di segni e di una calligrafia fitta. Al problema ci hanno lavorato. Solo che non l'hanno risolto.",
	},
	["ifo.npc_meet.w20.giver.002"] = {
		"risponde al cenno di qualcuno che ha un incarico, e ascolta un lungo resoconto scrupoloso su chi abbia la colpa prima di arrivare alla parte su cosa ci sia da fare.",
		"ascolta chi ha l'incarico cominciare dal principio, come questa città sembra preferire, e arrivare alla richiesta un bel po' più tardi.",
		"si lascia prendere in disparte da qualcuno con un problema, che si guarda alle spalle prima di cominciare, anche se lì intorno a nessuno potrebbe importare di meno.",
	},
	["ifo.npc_meet.w20.giver.003"] = {
		"Cominciate dalla parte in cui qualcosa va storto. Sul resto, se serve, chiederò.",
		"Per chi è, e per quando? Il perché può aspettare.",
		"Aspettavate che qualcuno chiedesse. Bene: ve lo chiedo io.",
	},
	["ifo.npc_meet.w20.giver.004"] = {
		"Prima ancora che io accetti, la ricompensa è già stata detta, fino all'ultimo rame. Questa città fa affari prima di fare favori.",
		"In questa città una richiesta arriva con le sue clausole. Il lavoro, la paga e i tempi, tutto messo in chiaro subito, come se avessi firmato qualcosa solo ascoltando.",
		"Prima le condizioni, poi il guaio. Qui qualcuno ha già chiesto aiuto a degli estranei, e ha imparato a mettere tutto per iscritto.",
	},
	["ifo.npc_meet.w20.giver.005"] = {
		"nota che chi chiede aiuto continua a far girare un anello attorno a un dito, e si domanda per chi fosse quell'anello.",
		"osserva le mani di chi chiede annodare e snodare un pezzo di corda per tutto il racconto, e fermarsi solo quando la risposta è sì.",
		"vede chi chiede lisciare una piega della manica, una volta dopo l'altra, finché tutta la storia non è venuta fuori.",
	},
	["ifo.npc_meet.w20.giver.006"] = {
		"Chi chiede indica vagamente il portone, come se tutto ciò che sta fuori dalla montagna fosse un unico posto, e tutto un po' maledetto.",
		"«Là fuori», dice {other}, con uno scatto del pollice verso le pareti. «Là fuori» copre un bel po' di terreno.",
	},
	["ifo.npc_meet.w20.giver.007"] = {
		"È un lavoro da schiena robusta o da stomaco forte? Giusto per sapere quale portare.",
		"Prima che parliate: c'è qualcuno che si arrabbierà quando mi vedrà arrivare?",
		"C'è una mappa, o solo un sacco di gesti?",
	},
	["ifo.npc_meet.w20.giver.008"] = {
		"riceve da un richiedente zelante un elenco, poi un secondo elenco che corregge il primo, poi delle scuse per la lunghezza di entrambi.",
		"accetta un biglietto piegato di {other}, lo apre e scopre che è stato riscritto almeno tre volte, ogni stesura cancellata con un tratto.",
	},
	["ifo.npc_meet.w20.giver.009"] = {
		"C'è un modo di stare in piedi, quando si è già chiesto ad altri e si è ricevuto un rifiuto. Chi ho davanti ce l'ha. Non sarò io ad allungare la lista.",
		"Non sono la prima persona a cui lo si chiede. Lo dicono le spalle, pronte a un altro no.",
		"La speranza è difficile da nascondere su una faccia così stanca. C'è chi aspetta da un pezzo che qualcuno, chiunque, si fermi.",
	},
	["ifo.npc_meet.w20.giver.010"] = {
		"Quando qualcuno a Ironforge chiede una mano, in un certo senso è l'Alleanza a chiederla. Questa montagna un tempo ha tenuto la linea per tutti. Un favore è il minimo che le si deve.",
		"In questa città l'orgoglio si piega parecchio prima che qualcuno chieda aiuto fuori dalla propria porta. Quando alla fine succede, l'Alleanza risponde.",
	},
	["ifo.npc_meet.w20.giver.011"] = {
		"si sente ripetere tre volte che il lavoro è semplice, che di solito è il modo in cui un lavoro annuncia di non esserlo.",
		"sente la parola «facile» due volte nella prima frase, e comincia ad aggiungere in silenzio un giorno a qualunque cosa venga dopo.",
		"coglie il richiedente a dire «niente di che» e poi distogliere lo sguardo, che dice tutto il resto.",
	},
	["ifo.npc_meet.w20.giver.012"] = {
		"Prima l'ospitalità, a quanto pare: mi mettono in mano un boccale prima di dire una sola parola sul lavoro. È una mazzetta, e la accetto.",
		"La richiesta arriva dopo la bevuta. In questa città nessuno vuole farsi vedere a chiedere a gola asciutta.",
		"Uno sgabello, un boccale, e solo allora il guaio. Qui chiedere si fa come si deve, o non si fa.",
	},
	["ifo.npc_meet.w20.gryph.001"] = {
		"osserva il maestro dei grifoni grattare un grifone assopito sotto il becco; la bestia ci si appoggia con gli occhi socchiusi, come un gatto enorme.",
		"si ferma mentre il maestro dei grifoni districa un nodo dalle piume del collo di un grifone, che resta perfettamente, e malvolentieri, immobile.",
		"vede {other} controllare gli occhi di ogni grifone a turno, così da vicino da rischiare una beccata, e ogni grifone sopportarlo.",
	},
	["ifo.npc_meet.w20.gryph.002"] = {
		"Accanto al posatoio c'è un secchio di qualcosa in cui preferisco non guardare. I grifoni ne sono molto interessati.",
		"L'odore intorno al posatoio è metà forgia, metà piume e metà quel che c'è nel secchio del mangime. Fanno tre metà, e sembrano di più.",
		"Piume negli interstizi del pavimento attorno al posatoio, spazzate in mucchietti ordinati che un solo colpo d'ala disfa.",
	},
	["ifo.npc_meet.w20.gryph.003"] = {
		"Quello che morde meno. Per il resto mi va bene tutto.",
		"Quello è offeso, o ha semplicemente quella faccia?",
		"Prendo quello con l'aria paziente. Ammesso che ce ne sia uno.",
	},
	["ifo.npc_meet.w20.gryph.004"] = {
		"Il maestro dei grifoni parla alle bestie con un mormorio basso e continuo, e a me a grugniti. Si capisce bene chi sia la compagnia migliore.",
		"Frasi lunghe e gentili per i grifoni; tre parole brevi per me. Non mi offendo. I grifoni li ho visti.",
		"Sono quasi {g:certo|certa} che {other} conosca il nome di ogni grifone e di nessun viaggiatore. Mi sembra l'ordine giusto delle cose.",
	},
	["ifo.npc_meet.w20.gryph.005"] = {
		"nota il grembiule di cuoio del maestro dei grifoni, pieno di fibbie di ricambio e coperto di piumino, come un mantello che ha quasi deciso di volare.",
		"adocchia la cintura del maestro dei grifoni, carica di ganci, cinghie e un sacchetto che fruscia e sa fortemente di pesce.",
		"osserva i guanti del maestro dei grifoni, spessi come cuoio da stivale e rigati di bianco sulle nocche da becchi senza cattive intenzioni, o quasi.",
	},
	["ifo.npc_meet.w20.gryph.006"] = {
		"I grifoni al posatoio tengono la testa voltata dal bagliore della forgia, come chi siede con le spalle a una finestra troppo luminosa.",
		"Ogni volta che la Great Forge divampa, l'intera fila di grifoni sbatte le palpebre insieme. Il maestro dei grifoni non alza più nemmeno gli occhi.",
		"I grifoni si arruffano e si ricompongono a ondate lungo i trespoli, ognuno scrollandosi di dosso il calore che arriva dalla forgia.",
	},
	["ifo.npc_meet.w20.gryph.007"] = {
		"C'è qualcosa che dovrei sapere su questo, prima di salire? A parte il becco.",
		"Ha un nome? Vorrei sapere a chi chiedere scusa se mi sbilancio dalla parte sbagliata.",
		"Da che parte gli piace piegare? Ditemelo adesso, non a metà salita.",
	},
	["ifo.npc_meet.w20.gryph.008"] = {
		"viene {g:issato|issata} in sella dal maestro dei grifoni con una spinta esperta, e riceve una pacca sullo stivale che vuol dire: tieniti.",
		"prende le redini dal maestro dei grifoni, che tiene una mano sul collo della bestia un attimo più del necessario, come se il saluto fosse per il grifone.",
	},
	["ifo.npc_meet.w20.gryph.009"] = {
		"Il maestro dei grifoni continua a lanciare occhiate verso le sale che portano fuori, contando le bestie che rientrano. Una è in ritardo. Nessuno lo dice.",
		"Un posto vuoto nella fila dei trespoli, e gli occhi del maestro dei grifoni ci tornano tra un lavoro e l'altro.",
		"Lo sguardo del maestro dei grifoni scivola di continuo verso l'arcata da cui entrano le bestie in volo. Ne aspetta una, a quanto pare, e tace.",
	},
	["ifo.npc_meet.w20.gryph.010"] = {
		"sussulta quando un grifone si sporge dal trespolo per ispezionarne lo zaino col becco, finché uno schiocco di lingua del maestro dei grifoni non lo rimanda al suo posto.",
		"resta immobile mentre un grifone curioso annusa il colletto da vicino, e il maestro dei grifoni guarda la scena divertito e senza alcuna intenzione di aiutare.",
	},
	["ifo.npc_meet.w20.gryph.011"] = {
		"I Wildhammer, si dice, sostengono che un grifone non dovrebbe mai essere sellato da mani estranee. Il maestro dei grifoni stringe il sottopancia e non ne discute.",
		"Ad Aerie Peak, a sentire i racconti, i Wildhammer riderebbero di queste selle in ordine e di questi trespoli numerati. In questa città un grifone è un servizio, e funziona puntuale.",
	},
	["ifo.npc_meet.w20.gryph.012"] = {
		"Grazie. Badate agli altri; questo adesso è affar mio.",
		"Stare {g:fermo|ferma} per tutto il tragitto? Capito. Starò ancora più {g:fermo|ferma}.",
	},
	["ifo.npc_meet.w20.guard.001"] = {
		"chiede la strada a una guardia e la ottiene in quattro parole e un cenno del mento, che bastano e avanzano.",
		"aspetta che una guardia finisca di contare a mezza voce chi passa, prima di meritarsi un'occhiata.",
		"chiede a una guardia dove si trovi qualcosa e riceve una direzione, una distanza in passi e uno sguardo che dice di non chiederlo una seconda volta.",
	},
	["ifo.npc_meet.w20.guard.002"] = {
		"La cotta di questa guardia è stata rammendata tante di quelle volte che del primo giaco ormai non resta granché. La guardia invece è la stessa. Credo.",
		"Toppa su toppa, quella maglia, ogni anello di un colore appena diverso. Un pezzo alla volta, l'armatura è diventata più giovane del nano che la porta.",
		"Ogni fibbia del cinturone della guardia è lucidata tranne una, nera di fuliggine vecchia. Dimenticata, o tenuta così per scaramanzia. Non lo chiederei mai.",
	},
	["ifo.npc_meet.w20.guard.003"] = {
		"Turno lungo? Non rispondete. Si capisce da come vi appoggiate all'asta.",
		"Tutto tranquillo nel vostro tratto? Bene. Cercherò di non essere io a guastarlo.",
		"Vi serve qualcosa? Uno sgabello, un pasticcio? No? Lo immaginavo.",
	},
	["ifo.npc_meet.w20.guard.004"] = {
		"La guardia guarda i piedi, non le facce. I piedi dicono chi ha fretta, e in una città così affollata la fretta è l'unica cosa che valga la pena di fermare.",
		"Della mia faccia alla guardia non importa niente; degli stivali sì. Fango di fuori, polvere di forgia, o nessuno dei due. Dicono dove sono {g:stato|stata} meglio di quanto saprei fare io.",
		"Questa guardia osserva lo spazio intorno a me più che me: chi è vicino, chi segue, chi tiene una mano dove non dovrebbe. Sa il fatto suo.",
	},
	["ifo.npc_meet.w20.guard.005"] = {
		"fa un cenno a una guardia, che lo restituisce identico, non un pelo più profondo, come se la cortesia si vendesse a peso.",
		"riceve un saluto rigido da una guardia e lo ricambia male; la guardia ne prende nota senza commenti e, con tutta evidenza, senza perdonare.",
		"scambia una parola gentile con una guardia e in cambio ottiene una sillaba, che nella guardia di Ironforge vale come una conversazione.",
	},
	["ifo.npc_meet.w20.guard.006"] = {
		"Una guardia che mangia pane con una mano sola, senza mai staccare l'altra dall'asta. Un pasto sull'attenti. Ammirevole, e un po' preoccupante per la digestione.",
		"Anche il pasto della guardia è in servizio: un tozzo di pane in un pugno, e l'altra mano che non lascia mai l'arma.",
		"Qualcuno ha lasciato alla guardia una tazza di qualcosa di caldo. Sta lì sulla sporgenza, intatta e fumante, ad aspettare la fine del turno.",
	},
	["ifo.npc_meet.w20.guard.007"] = {
		"si fa da parte quando una guardia ferma la folla con il palmo aperto per lasciar passare un carro pesante, e nessuno, nemmeno gli gnomi, discute con quel palmo.",
		"si ferma davanti a una sola mano alzata di una guardia mentre passa un carro carico; poi la stessa mano fa cenno di proseguire, come se non si fosse mai mossa.",
	},
	["ifo.npc_meet.w20.guard.008"] = {
		"C'è una parola d'ordine, o basta avere la faccia onesta?",
		"Non sono qui per creare guai. Lo dico solo perché mi guardate come se potessi.",
		"Qualche regola da sapere? A parte non finire sulla vostra lista nera, intendo.",
	},
	["ifo.npc_meet.w20.guard.009"] = {
		"L'elmo della guardia porta ammaccature che nessuno ha mai ribattuto. In una città piena di fabbri, dev'essere una scelta.",
		"Una città di fabbri, e l'elmo di questa guardia è ancora ammaccato in tre punti. Lasciato così di proposito, scommetto. Certe ammaccature valgono più di una fronte liscia.",
	},
	["ifo.npc_meet.w20.guard.010"] = {
		"Una guardia mi rivolge il cenno breve che i nani riservano ai loro: niente sorriso, niente parole, il mento giù e su. Dice più di un discorso.",
		"Quel cenno della guardia è quello che si tiene per la propria gente. Breve, sicuro, e mai sprecato con gli estranei.",
	},
	["ifo.npc_meet.w20.guard.011"] = {
		"osserva una guardia che si china a fatica, in armatura completa, per allacciare lo stivale a un piccolo gnomo, e poi si raddrizza come se la cosa non fosse mai successa.",
		"vede una guardia in armatura pesante accovacciarsi, con gran cigolio, per aiutare un piccolo gnomo a riacchiappare un ingranaggio fuggito, e poi rialzarsi impassibile.",
	},
	["ifo.npc_meet.w20.guard.012"] = {
		"La guardia ha imparato a piazzarsi nell'unico punto dove il calore della forgia e lo spiffero del portone si annullano. Ci sono voluti anni di turni per trovarlo.",
		"Fra tutti i punti possibili, la guardia ha scelto quello dove non arrivano bene né il calore della forgia né lo spiffero del portone. Un posto così non si sceglie per caso.",
		"Basta guardare un po' e si vede la guardia spostare il peso da un piede all'altro a intervalli fissi, regolare come un pendolo. È l'unico orologio in quel tratto di sala.",
	},
	["ifo.npc_meet.w20.inn.001"] = {
		"L'oste mi mette davanti un boccale prima che lo chieda, e aspetta di vedere se protesto. Nessuno protesta. È un sistema eccellente.",
		"Il boccale arriva prima dell'ordinazione. Per volere altro dovrei avere più coraggio di quanto ne ho.",
		"Non ho ordinato. Non ce n'era bisogno. A quanto pare {other} ha già deciso che cosa ho l'aria di bere.",
	},
	["ifo.npc_meet.w20.inn.002"] = {
		"si appoggia al banco mentre l'oste strofina lo stesso punto in cerchi lenti, seguendo tre conversazioni insieme senza rispondere a nessuna.",
		"aspetta al banco mentre l'oste lucida un boccale ben oltre il pulito, con gli occhi che girano per la sala tutto il tempo.",
		"appoggia un gomito al banco e aspetta: l'oste prima finisce di spillare, poi alza gli occhi, e da quel momento non esiste altro cliente.",
	},
	["ifo.npc_meet.w20.inn.003"] = {
		"Il letto più lontano dai canti, per favore.",
		"Un letto, e la chiave di una porta che chiuda bene. Al resto penso io.",
		"Cosa c'è di buono che non rimpiangerò? Mi fido più di voi che della lavagna.",
	},
	["ifo.npc_meet.w20.inn.004"] = {
		"Lo sguardo dell'oste si ferma sulle mie spalle, dove sta la stanchezza, e la prossima cosa che esce dalla cucina è più abbondante di quanto ho ordinato.",
		"Dietro quel banco c'è chi riconosce un corpo rimasto in piedi troppo a lungo. La scodella che mi arriva è così fonda da perderci il cucchiaio.",
		"Qualcosa nel modo in cui sto in piedi spinge l'oste a scostare una sedia prima ancora di prendere l'ordinazione.",
	},
	["ifo.npc_meet.w20.inn.005"] = {
		"osserva l'oste chiudere una lite fra due minatori posando un boccale pieno esattamente in mezzo, e andandosene.",
		"vede l'oste sistemare una disputa al tavolo accanto senza una parola: due boccali, uno a testa, e la questione è chiusa.",
		"guarda {other} mettere fine a una gara di urla con un'occhiata sola da sopra le spine. I due urlatori scoprono d'un tratto che i loro boccali sono interessantissimi.",
	},
	["ifo.npc_meet.w20.inn.006"] = {
		"L'oste mi chiede da dove arrivo, poi non aspetta la risposta. La domanda era un saluto, niente di più. Mi piace.",
		"«Viaggio lungo?» è il modo di salutare di quest'oste, detto già mezzo di spalle. Nessuno si aspetta una risposta.",
		"La prima domanda di {other} non è mai il mio nome. È se ho mangiato. Priorità giuste.",
	},
	["ifo.npc_meet.w20.inn.007"] = {
		"riceve con la zuppa un tozzo di pane scuro, insieme al consiglio dell'oste di inzupparlo prima di provare a morderlo.",
		"si vede porgere dall'oste una scodella, un cucchiaio e una fetta di pane nero, e un cenno verso il pane che vuol dire chiaramente: prima inzuppalo.",
	},
	["ifo.npc_meet.w20.inn.008"] = {
		"Dietro il banco c'è una lavagnetta con nomi e tacche. Il mio non c'è. Vorrei che restasse così, e sospetto che lo voglia anche l'oste.",
		"Segni di gesso su una tavola alle spalle dell'oste: chi deve, e quanto. La colonna è lunga e il gesso è corto.",
	},
	["ifo.npc_meet.w20.inn.009"] = {
		"Vi sedete mai, o è contro le regole della casa?",
		"Pago subito, prima di perdere il conto di quello che ho preso.",
		"È sempre così rumoroso, o sono {g:capitato|capitata} in un giorno di festa?",
	},
	["ifo.npc_meet.w20.inn.010"] = {
		"segue l'oste fino a un tavolo d'angolo; un mozzicone di candela acceso, e l'oste se ne va senza fare una sola domanda.",
		"prende il posto d'angolo indicato dall'oste, dove un mozzicone di candela arde già, come se qualcuno fosse atteso.",
	},
	["ifo.npc_meet.w20.inn.011"] = {
		"L'oste tiene una pila di sgabelli bassi accanto al banco e me ne fa scivolare uno senza dire niente. Una piccolezza. L'esilio è fatto di piccolezze, e anche l'essere accolti.",
		"Uno sgabello dell'altezza giusta, spinto verso di me prima che debba arrampicarmi. Da Gnomeregan in poi ho imparato a notare chi li tiene.",
	},
	["ifo.npc_meet.w20.inn.012"] = {
		"L'oste sente tre parole mie e sa più o meno da dove vengo. Da questo banco non passa niente senza che gli si trovi un posto.",
		"Una frase mia e l'oste ha già inquadrato l'accento, se non gli affari miei. Gli affari, sospetto, arrivano col secondo boccale.",
		"Qualunque oste sa leggere una faccia. Questo legge gli accenti, e al mio fa un cenno come se lo spuntasse da un elenco.",
	},
	["ifo.npc_meet.w20.merch.001"] = {
		"osserva un mercante disporre la merce in file così dritte che sembrano tirate col filo a piombo, poi aggrottare la fronte e spostarne un pezzo di un dito.",
		"aspetta che un mercante allinei ogni articolo al bordo del banco prima di dire un solo prezzo.",
		"nota che ogni cartellino sul banco del mercante è girato verso il cliente con la stessa identica angolazione.",
	},
	["ifo.npc_meet.w20.merch.002"] = {
		"Il mercante non tratta. Il mercante spiega, piano e con gentilezza, perché il prezzo è già un regalo. In qualche modo è peggio.",
		"Ho proposto una cifra più bassa. {other} mi ha guardato con una delusione così paziente che per poco non l'ho alzata io.",
		"Trattare con questo qui è come spingere un muro. Un muro dipinto con molta educazione.",
	},
	["ifo.npc_meet.w20.merch.003"] = {
		"Qual è la cosa migliore che avete e che nessuno compra? Vorrei vedere quella.",
		"Mostratemi cosa comprereste voi. Non quello che si vende: quello che comprereste.",
		"Do solo un'occhiata. Sì, lo dicono tutti. Io lo dico un po' più sul serio.",
	},
	["ifo.npc_meet.w20.merch.004"] = {
		"Ogni articolo su questo banco ha un cartellino scritto con due calligrafie, una squadrata e l'altra minuscola e inclinata. Due soci che tengono i conti insieme, direi, e litigano a margine.",
		"Due calligrafie sui cartellini dei prezzi, una pesante e una fitta. Qualcuno tiene la merce e qualcuno tiene i conti, e sui conti non vanno d'accordo.",
	},
	["ifo.npc_meet.w20.merch.005"] = {
		"allunga la mano verso un barattolo sullo scaffale e si ferma quando il mercante si schiarisce la gola, in quel modo cortese che vuol dire «se lo rompi, l'hai comprato».",
		"prende in mano un piccolo congegno d'ottone e lo rimette giù con molta delicatezza quando il mercante si interrompe a metà parola.",
		"solleva il coperchio di una cassa e lo riabbassa al piccolo «ehm» eloquente del mercante.",
	},
	["ifo.npc_meet.w20.merch.006"] = {
		"Tutto quello che il mercante mi passa è appena tiepido, come se la bottega stesse troppo vicina a una forgia. Le cose semplici sembrano appena fatte.",
		"La merce è calda al tatto. Niente di magico: è tutta la città a essere calda. Eppure sembra di comprare il pane appena sfornato, anche quando è una cintura.",
	},
	["ifo.npc_meet.w20.merch.007"] = {
		"Se ne prendo due, il secondo viene con meno commenti?",
		"Mi avete detto di cosa è fatto, come è fatto e chi l'ha fatto. Il prezzo me lo dite prima che invecchi?",
		"Ne esiste una versione senza lezione inclusa? Pago la differenza.",
	},
	["ifo.npc_meet.w20.merch.008"] = {
		"si vede incartare l'acquisto dal mercante in una tela cerata, chiusa con un nodo così stretto che servirà un coltello, e pare proprio questo lo scopo.",
		"osserva {other} piegare la carta attorno all'acquisto con angoli netti e squadrati, come se una piega storta fosse una macchia sul nome della bottega.",
	},
	["ifo.npc_meet.w20.merch.009"] = {
		"«Quello no.» La mano del mercante copre un boccale ammaccato sullo scaffale. Niente prezzo, niente motivo. Solo: quello no.",
		"Certe cose sullo scaffale non sono in vendita. Il mercante lo dice secco, e poi mi racconta lo stesso tutta la storia di una di esse.",
		"Uno scaffale dietro il mercante è spolverato ma mai toccato. Le cose che ci stanno sopra sono state di qualcuno, un tempo, e lì accanto non c'è un solo cartellino del prezzo.",
	},
	["ifo.npc_meet.w20.merch.010"] = {
		"osserva un mercante pesare una manciata di chiodi su una bilancia d'ottone, aggiungerne uno, toglierlo, rimetterlo, e solo allora alzare lo sguardo, soddisfatto.",
		"resta in attesa mentre un mercante armeggia con la bilancia finché l'ago non sta esattamente al centro.",
		"guarda l'ago della bilancia del mercante tremare e fermarsi, e il mercante annuire come se avesse superato un esame.",
	},
	["ifo.npc_meet.w20.merch.011"] = {
		"Il mercante vuole sapere a cosa mi serve prima di vendermelo. Non è sospetto: è mestiere. L'attrezzo sbagliato per il lavoro sarebbe un'offesa alla bottega.",
		"«E a cosa serve?» Domanda onesta, fatta sul serio. Se la risposta è sbagliata, {other} mi venderà un'altra cosa, e avrà ragione.",
	},
	["ifo.npc_meet.w20.merch.012"] = {
		"Bella merce. Sul serio. Lo direi anche se non stessi cercando di strappare un prezzo migliore.",
		"Lo prendo. Subito, prima che me ne raccontiate altro e mi piaccia troppo per trattare.",
		"Bel lavoro. Capisco perché lo fate pagare. Lo capisco benissimo, anzi: lo vedo nella borsa.",
	},
	["ifo.npc_meet.w20.train.001"] = {
		"L'istruttore mi chiede di mostrare quello che so già, e guarda tutto senza battere ciglio. Poi dice «da capo», e capisco che il primo tentativo non contava.",
		"«Fammi vedere.» E io faccio vedere. La faccia di chi insegna non tradisce niente fino alla fine, quando tradisce quel tanto che basta a pungere.",
		"Il «bene» dell'istruttore è così sommesso che quasi mi sfugge. Non sono {g:sicuro|sicura} che dovessi sentirlo.",
	},
	["ifo.npc_meet.w20.train.002"] = {
		"viene {g:messo|messa} alla prova dall'istruttore con una leggera spinta alla spalla, e si guadagna un breve cenno quando la spinta non smuove niente.",
		"aspetta mentre chi insegna compie un giro lento tutto attorno, in silenzio, poi si ferma e corregge un solo dettaglio, di quelli che da soli non si notano mai.",
		"deve mantenere una posizione mentre chi insegna si allontana, scambia due parole con qualcun altro e torna a controllare che non si sia mosso niente.",
	},
	["ifo.npc_meet.w20.train.003"] = {
		"Mi sono {g:esercitato|esercitata}. Non quanto vorreste, immagino, ma mi sono {g:esercitato|esercitata}.",
		"Ditemi le cose come stanno. Le lusinghe le trovo in taverna.",
		"Insegnatemi qualcosa per cui vi maledirò fra una settimana e vi ringrazierò fra un mese.",
	},
	["ifo.npc_meet.w20.train.004"] = {
		"In questa città gli istruttori distribuiscono lodi come i minatori trovano l'oro: di rado, e con sospetto. Io ho avuto un «non male». Ci camperò per settimane.",
		"«Mh. Poteva andare peggio.» Per {other}, mi assicurano, è praticamente una medaglia.",
		"Questo istruttore concede complimenti come il Vault of Ironforge concede oro: solo dopo una lunga occhiata e una firma.",
	},
	["ifo.npc_meet.w20.train.005"] = {
		"nota tacche di gesso sul pilastro dietro l'istruttore, file su file, e si chiede se contino gli allievi o gli errori.",
		"adocchia una colonna di segni graffiati sul muro, all'altezza del gomito di chi insegna. Nessuno li spiega, e a nessuno sembra far piacere averli lì.",
	},
	["ifo.npc_meet.w20.train.006"] = {
		"L'istruttore lo spiega una volta, piano, poi una seconda con altre parole, poi una terza con le mani. Una pazienza che ha la forma di un metodo.",
		"Tre modi di dire la stessa cosa, tutti già pronti. {other} ne ha istruiti a frotte, di allievi lenti, e io non sono nella posizione di offendermi.",
	},
	["ifo.npc_meet.w20.train.007"] = {
		"Prima che cominciate: sì, lo so che sbaglio. È per questo che sono qui.",
		"Andateci piano. O no. Sospetto che a deciderlo sarete voi comunque.",
		"Lo so, lo so. Il gomito. Non serve che lo indichiate.",
	},
	["ifo.npc_meet.w20.train.008"] = {
		"aspetta che l'istruttore finisca con un altro allievo, che se ne va massaggiandosi un gomito con un'aria stranamente soddisfatta.",
		"si tiene in disparte mentre chi insegna congeda l'allievo precedente con tre parole di consiglio e una di avvertimento.",
	},
	["ifo.npc_meet.w20.train.009"] = {
		"L'istruttore mi chiede cosa ne ho fatto dell'ultima lezione, e ascolta la risposta con l'attenzione di chi raccoglie una confessione.",
		"La prima domanda non è cosa voglio imparare. È cosa ho fatto di quello che mi è stato insegnato prima. Domanda giusta. E scomoda.",
		"Prima di offrire qualcosa di nuovo, chi insegna vuole vedere che fine ha fatto il vecchio. Come un fabbro che prova l'ultima saldatura prima di aggiungere ferro.",
	},
	["ifo.npc_meet.w20.train.010"] = {
		"Nessuno sconto, nessun inizio morbido. {g:Nato|Nata} sotto questa montagna, ci si aspetta che io abbia già la pietra dentro, e l'istruttore intende trovarla.",
		"Agli stranieri qui si concede pazienza. A chi è nato nella montagna toccano uno sguardo più duro e una risposta più corta. Mi offenderei a ricevere altro.",
	},
	["ifo.npc_meet.w20.train.011"] = {
		"nota che le mani dell'istruttore non stanno mai ferme: tamburellano, aggiustano, misurano qualcosa di invisibile nell'aria mentre la lezione prosegue.",
		"segue le mani di chi insegna più delle parole: disegnano la lezione nell'aria un attimo prima che venga detta.",
		"osserva le dita tozze dell'istruttore battere un ritmo sulla fibbia della cintura, contando qualcosa che sente solo chi insegna.",
	},
	["ifo.npc_meet.w20.train.012"] = {
		"Grazie. Credo. Lo saprò con certezza quando smetterà di fare male.",
		"È più di quanto fossi {g:venuto|venuta} a cercare. Cercherò di esserne all'altezza.",
		"Prima rodo questa. Poi vorrò la prossima, quindi non regalatela a nessuno.",
	},
	["ifo.quest_complete.w20.after.001"] = {
		"esce di nuovo sull'anello della città e aspetta sul bordo un varco fra un carro e uno gnomo di corsa, poi s'infila nel flusso.",
		"indugia sulla soglia finché il traffico dell'anello non concede una pausa, e vi entra con passo tranquillo.",
	},
	["ifo.quest_complete.w20.after.002"] = {
		"Per un po' non ho sentito altro che la faccenda da sbrigare. Adesso un fabbro a due sale di distanza sbaglia un colpo, e me ne accorgo. Ironforge è tornata.",
		"Appena finiti i ringraziamenti, i martelli mi rientrano nelle orecchie uno per uno, come se avessero aspettato fuori, per educazione.",
	},
	["ifo.quest_complete.w20.after.003"] = {
		"E adesso, quale arco mi ha portato qui? Si somigliano tutti, solo che alcuni sono più intagliati.",
		"Bene. Chi mi rimette sulla strada giusta si prende i miei ringraziamenti, doppi. Questi archi sono tutti gemelli.",
	},
	["ifo.quest_complete.w20.after.004"] = {
		"si volta dopo i ringraziamenti e scopre che la città non ha aspettato: due nani stanno già discutendo per il posto appena lasciato libero.",
		"si fa da parte, e il punto in cui stava viene subito occupato da un nano con una domanda e un sacco di minerale.",
		"si allontana, e prima di aver fatto tre passi il posto è già preso da uno gnomo che srotola un lunghissimo foglio di progetti.",
	},
	["ifo.quest_complete.w20.after.005"] = {
		"Le mani continuano a cercare un compito che non c'è più. Le accontento con una cinghia da tormentare.",
		"Strano come le mani continuino a lavorare quando il lavoro è finito. Le mie stanno stringendo una fibbia già stretta.",
	},
	["ifo.quest_complete.w20.after.006"] = {
		"Fatto. Chi mi cerca segua il naso fino a quello che stanno arrostendo.",
		"Sbrigata. Sarò dove l'odore di cucina è migliore; non serve un segugio per trovarmi.",
		"Chiuso. Trovarmi sarà facile: cercate la faccia più contenta vicino a un fuoco da cucina.",
	},
	["ifo.quest_complete.w20.after.007"] = {
		"rimette a posto una cinghia ribelle e si allontana senza voltarsi, la faccenda già ripiegata e messa via.",
		"si sistema lo zaino più in alto sulla schiena, dà uno strattone alla cinghia e s'infila nella ressa delle sale.",
	},
	["ifo.quest_complete.w20.after.008"] = {
		"Una cosa finita diventa leggera così in fretta. Un attimo fa era il mondo intero; adesso è una storia che forse non mi prenderò mai la briga di raccontare.",
		"Pesava tanto finché era mia. Restituita, non pesa più niente, e non so dove sia andato a finire il peso.",
	},
	["ifo.quest_complete.w20.after.009"] = {
		"Non ti trattengo oltre dal tuo lavoro. A giudicare dal rumore, qui ce n'è in abbondanza.",
		"Torna al lavoro, allora, e io tolgo il disturbo. Senti che martelli: qui nessuno resta con le mani in mano.",
	},
	["ifo.quest_complete.w20.after.010"] = {
		"Per il momento nessuno ha bisogno di niente da me. In una città così indaffarata è una sensazione rara, e un po' sospetta.",
		"Per un po', in tutta Ironforge, nessuno mi aspetta. Avevo dimenticato quanto spazio dia.",
		"Nessuno mi reclama. Non durerà, in questa città, immagino, ma per ora è così.",
	},
	["ifo.quest_complete.w20.after.011"] = {
		"lancia un'unica occhiata alle spalle, come per accertarsi che la faccenda sia davvero chiusa, poi si lascia portare dal traffico delle sale.",
		"si volta una volta sola prima che la curva della sala nasconda il punto, poi guarda avanti e prosegue.",
	},
	["ifo.quest_complete.w20.after.012"] = {
		"Anche i ringraziamenti sono arrivati a mezza voce. Sotto la montagna non c'è buio di cui parlare, eppure a quest'ora la gente abbassa il tono lo stesso.",
		"Alle incudini ci sono le squadre tarde e il Commons si è svuotato. Fuori dev'essere buio fitto; qui dentro lo si capisce solo da come parla piano la gente.",
	},
	["ifo.quest_complete.w20.after.013"] = {
		"Di nuovo dentro il rumore della mia città. Gli stranieri sentono un baccano; io sento quale forgia ha preso un apprendista nuovo.",
		"Per un visitatore è un unico boato. Io ci distinguo la forgia col mantice incrinato e il fabbro che canticchia sempre. È bello rientrarci.",
	},
	["ifo.quest_complete.w20.after.014"] = {
		"Grazie, Ironforge. Puoi tornare a urlare.",
		"Ecco fatto. Continua pure, città, non volevo interrompere.",
		"I miei omaggi alla montagna. Continuate pure, tutti quanti.",
	},
	["ifo.quest_complete.w20.after.015"] = {
		"Mi aspettavo quasi di provare di più. Invece c'è la sala, ci sono i martelli e una specie di quiete in bolla, come un tavolo con tutte e quattro le gambe a terra.",
		"Nessuno slancio particolare. Solo una sensazione di assestamento, come un carro posato su un terreno piano, e i martelli che continuano come prima.",
	},
	["ifo.quest_complete.w20.after.016"] = {
		"sbuca sull'anello dove il bagliore della forgia riempie la grande sala da parete a parete, e per un momento resta lì sotto, una figura minuscola e soddisfatta.",
		"esce nel bagliore rosso della grande sala, una figura fra centinaia, con una piccola cosa sbrigata in una città di migliaia.",
	},
	["ifo.quest_complete.w20.coin.001"] = {
		"osserva la paga contata su una sporgenza di pietra in pile da cinque, ognuna squadrata col polpastrello prima di cominciare la successiva.",
		"riceve la paga in colonnine corte e ordinate, ciascuna raddrizzata da un dito attento prima che la conta vada avanti.",
	},
	["ifo.quest_complete.w20.coin.002"] = {
		"Contata due volte: una in silenzio e una ad alta voce per me, come se potessi contestare un rame. Sotto questa montagna, immagino che qualcuno lo farebbe.",
		"La somma è stata contata, poi ricontata a voce, piano, perché potessi seguire. Qui nessuno si fida di un numero finché non l'ha sentito.",
		"Contata, poi contata ad alta voce, poi le labbra di chi pagava l'hanno ripassata una terza volta. Tanta cura quasi mi lusinga.",
	},
	["ifo.quest_complete.w20.coin.003"] = {
		"riceve la paga con uno schiocco di monete sul banco di pietra, posate con forza, come se andasse loro ordinato di restare dove sono.",
		"sente la paga calare sulla pietra sotto una manata secca, le monete inchiodate lì dal palmo finché non allunga la mano.",
		"incassa la paga con un colpo secco delle monete contro la pietra, il suono che in questa città vuol dire faccenda chiusa.",
	},
	["ifo.quest_complete.w20.coin.004"] = {
		"Moneta vecchia, in parte, consumata al punto che le effigi sono solo un'idea. È passata per più mani di nani di quante potrei contarne, e adesso per le mie.",
		"Alcune di queste monete sono più vecchie di chiunque conosca, levigate da generazioni di pollici. Si spendono ancora. È il bello del denaro di questa città.",
		"Nella paga c'è una moneta così consumata che quasi non capisco quale sia il dritto. L'avrà guadagnata il nonno di qualcuno, probabilmente a una forgia. Adesso tocca a me.",
	},
	["ifo.quest_complete.w20.coin.005"] = {
		"Esatta fino al rame. Il contrario mi avrebbe messo in allarme.",
		"Non serve contarla davanti a me. Anche se vedo che la conterete comunque.",
		"Neanche un rame fuori posto. Il Vault dovrebbe assumervi, se non l'ha già fatto.",
	},
	["ifo.quest_complete.w20.coin.006"] = {
		"Soppeso il sacchetto sul palmo e lascio assestare le monete prima di legarlo alla cintura. Un'abitudine che questa città insegna: non intascare mai quel che non hai sentito.",
		"Un istante con la paga sul palmo aperto, solo per conoscerne il peso. Qui anche le monete sembrano pretendere un'occhiata come si deve prima di finire via.",
	},
	["ifo.quest_complete.w20.coin.007"] = {
		"si vede consegnare la paga in un sacchettino di stoffa con un'etichetta cucita sopra, che dice, in lettere minuscole e accurate, PAGAMENTO (UNO).",
		"prende in consegna la paga in un sacchetto col laccio e un cartellino da gnomo: la somma, la data e il disegnino di una moneta sorridente.",
		"ottiene la paga in un cartoccio segnato con un numero, una data e, accanto, un piccolo ingranaggio sorridente.",
	},
	["ifo.quest_complete.w20.coin.008"] = {
		"La paga è passata dalla borsa alla pietra e dalla pietra alla mia mano. Nel mezzo l'hanno squadrata due persone e un apprendista sospettoso.",
		"Tre persone hanno seguito il passaggio delle monete: chi pagava, io, e un apprendista che pareva prenderla sul personale.",
		"Le monete sono passate dalla borsa alla pietra al palmo sotto tre paia d'occhi: quelli di chi pagava, i miei, e quelli di un apprendista che teneva il conto sulle dita.",
	},
	["ifo.quest_complete.w20.coin.009"] = {
		"Questa va dritta al Vault. Prima o poi ogni moneta di Ironforge ci finisce; le mie possono anche arrivare in anticipo.",
		"La porto al Vault prima che decida da sola di andarsene alla casa d'aste.",
		"Al Vault, allora, prima che la casa d'aste scopra che ho la borsa piena.",
	},
	["ifo.quest_complete.w20.coin.010"] = {
		"Una moneta della paga è un po' piegata, come se qualcuno l'avesse provata in una morsa. In questa città, direi che è andata proprio così.",
		"Una moneta ha una piccola bruciatura. Scelgo di credere che sia stata una forgia e non un esperimento da gnomi, e non chiederò quale dei due.",
		"Una moneta ha un minuscolo ingranaggio punzonato proprio nel mezzo. Spero sia uno scherzo da gnomo, e non l'idea che uno gnomo ha del denaro.",
	},
	["ifo.quest_complete.w20.coin.011"] = {
		"raccoglie le monete nel palmo, e una mano estranea ci chiude sopra le sue dita con fermezza, come il coperchio su un orcio.",
		"tende la mano per la paga e se la ritrova chiusa attorno alle monete da un'altra mano, una stretta che dice: affare sigillato.",
	},
	["ifo.quest_complete.w20.coin.012"] = {
		"Qui nessuno fa una cerimonia del pagare. La moneta te la porgono come si passa il sale: ovvio, e senza guardare.",
		"Il denaro è passato di mano con la semplicità di un attrezzo passato sopra un banco. Niente svolazzi. Mi accorgo di preferirlo ai discorsi.",
		"In questa città la paga te la danno come si passa il pane a tavola: senza mostra, perché è ovvio che ti spetta.",
	},
	["ifo.quest_complete.w20.coin.013"] = {
		"Mi lasciate anche il sacchetto? È più bello del mio. Accetto.",
		"Anche la borsa? Allora la borsa è la metà migliore dell'affare.",
	},
	["ifo.quest_complete.w20.coin.014"] = {
		"La riconto dando le spalle alla sala. Non per sospetto. In questa città ricontano tutti, e non farlo sembrerebbe strano.",
		"Seconda conta, in silenzio, con la faccia al muro. Qui nessuno se ne offenderebbe; si offenderebbero se non lo facessi.",
	},
	["ifo.quest_complete.w20.coin.015"] = {
		"Chi mi paga ha ancora sulle spalle la neve del portone, che si scioglie, e una goccia cade sulle monete mentre le conta. Paga fredda, guadagnata onestamente.",
		"Neve che si scioglie sui polsini di chi paga e gocciola sul banco di pietra mentre scendono le monete. Dal portone dicono che non accenna a smettere.",
	},
	["ifo.quest_complete.w20.coin.016"] = {
		"Qui sotto l'argento pesa di più, ci giurerei. Tutta quella pietra intorno che preme.",
		"Strano. Questo sacchetto sembrava più leggero nella mano che me l'ha dato.",
		"Più pesante di quel che sembra. Come tutto, a Ironforge.",
	},
	["ifo.quest_complete.w20.debt.001"] = {
		"I nani tengono due colonne per chiunque incontrino: quello che hai fatto per loro e quello che hai fatto contro di loro. Mi piace pensare che una mia riga sia appena finita nella prima.",
		"Dei rancori si parla sempre, ma la memoria di un nano ha anche una seconda colonna, quella dei favori. È più corta, ed entrarci è molto più difficile. Forse ce l'ho fatta.",
	},
	["ifo.quest_complete.w20.debt.002"] = {
		"prova a rifiutare le ultime monete e se le ritrova rimesse in mano, con decisione, da qualcuno che chiaramente preferisce pagare piuttosto che restare in debito.",
		"propone di lasciar perdere una parte della paga e si scontra con un rifiuto allarmato: le monete tornano chiuse nel suo palmo, come se un debito scottasse.",
	},
	["ifo.quest_complete.w20.debt.003"] = {
		"Allora me ne dovete una. Bene. La riscuoterò allo Stonefire, un boccale per volta, con gli interessi.",
		"In debito con me? Splendido. In questa città è praticamente un contratto. Le rate le prendo in boccali.",
		"Un favore dovuto, sotto questa montagna? Lo voglio messo per iscritto, per sicurezza.",
	},
	["ifo.quest_complete.w20.debt.004"] = {
		"Un vecchio nano una volta mi ha detto che a Ironforge un debito sopravvive a chi l'ha contratto: i nipoti pagano quello che i nonni avevano promesso, e non lo considerano un peso. Meglio che stavolta il creditore sia io.",
		"In questa città, dicono, un debito si tramanda come un buon martello: l'erede lo raccoglie senza lamentarsi. Spero che nessuno debba mai ereditarne uno da me.",
	},
	["ifo.quest_complete.w20.debt.005"] = {
		"A dire il vero, la città aveva saldato i conti con me molto prima. Un letto, un fuoco, una panca vicino alla forgia quando mi serviva. Ho solo pagato un po' d'affitto.",
		"Loro lo chiameranno favore. Io direi che ho saldato un conto: questa città mi ha dato un pasto e un posto caldo più volte di quante ne abbia contate.",
	},
	["ifo.quest_complete.w20.debt.006"] = {
		"Certi debiti in questa città sono troppo vecchi per essere saldati: fra i clan, fra i Bronzebeard e i Dark Iron, debiti più vecchi di qualsiasi trono. Al confronto, un favore piccolo e pulito come il mio è quasi un sollievo.",
		"I conti più antichi sotto questa montagna non torneranno mai: tre clan si sono spaccati per quelli. Fa bene esserci dentro uno che si chiude nella stessa ora in cui si apre.",
	},
	["ifo.quest_complete.w20.debt.007"] = {
		"Pari. No, davvero, pari. Potete smettere di guardarmi così.",
		"Siamo a posto. Nessuno deve niente a nessuno. Via quella fronte aggrottata.",
		"Pari e patta, allora. Non mettetevi a inciderlo su un muro.",
	},
	["ifo.quest_complete.w20.debt.008"] = {
		"Quando Gnomeregan tornerà nostra, farò in modo che la prima cosa a funzionare là dentro funzioni per Ironforge. Un ascensore, una lampada, una pompa: qualcosa. Ogni lavoro che finisco qui va su quella lista.",
		"Tengo un conto tutto mio di quello che gli gnomi dovranno a questa città, il giorno che i cancelli di Gnomeregan si riapriranno per noi. È lungo. Ci aggiungo righe, e lo faccio volentieri.",
	},
	["ifo.quest_complete.w20.debt.009"] = {
		"si sente dire, in tono brusco, di tornare se mai avesse bisogno di qualcosa, con la voce di chi lo intende alla lettera e ci terrà fede.",
		"riceve un «se mai ti servisse» breve e burbero, che suona meno come una cortesia e più come una firma in fondo a un foglio.",
	},
	["ifo.quest_complete.w20.debt.010"] = {
		"Un nano in debito con te non ha pace finché non ha saldato; un nano con cui sei in debito non ne parla mai, il che è peggio. Preferisco di gran lunga questa parte del registro.",
		"Avere un nano in debito è facile: ti rincorre per restituire. Il difficile è essere in debito con uno di loro. Non lo chiede mai, e tu non lo dimentichi mai.",
	},
	["ifo.quest_complete.w20.debt.011"] = {
		"Un tempo gli orchi sono passati per il Khaz Modan e si sono infranti contro questo portone. Tutto quello che la città fa da allora, in un certo senso, ripaga chi l'ha tenuto. Un lavoro piccolo come il mio salda la moneta più piccola di quel debito.",
		"Durante la Seconda Guerra qui c'è stato un assedio, e il portone ha retto. Ironforge vive di quella tenuta da allora. Mi piace pensare che una commissione fatta bene ne restituisca il valore di un rame.",
	},
	["ifo.quest_complete.w20.debt.012"] = {
		"No, mettetelo via. Offrite piuttosto da bere al prossimo che vi aiuta, e ditegli che viene da me.",
		"Tenete il resto. Passatelo a chi vi darà una mano dopo di me. È così che dovrebbe viaggiare un debito.",
		"A me non dovete niente. Dovete qualcosa al prossimo forestiero, e sarà giusto così.",
	},
	["ifo.quest_complete.w20.debt.013"] = {
		"osserva un mozzicone di gesso tracciare una breve riga su una lavagnetta tenuta apposta, sotto parecchie altre righe brevi, e decide di non chiedere a quanto ammonti il totale.",
		"vede incidere una tacca sul bordo di un'asse consumata, accanto a una colonna di tacche più vecchie, e non riesce del tutto a contarle.",
	},
	["ifo.quest_complete.w20.debt.014"] = {
		"Sotto questa montagna la vera moneta sono i favori. L'oro ti compra la merce; un favore ti procura un posto al tavolo giusto, una parola all'orecchio giusto. Preferisco il secondo genere.",
		"A Ironforge le monete aprono le botteghe. I favori aprono le porte. Ho la sensazione di aver appena guadagnato una porta.",
	},
	["ifo.quest_complete.w20.debt.015"] = {
		"si vede imporre un pasto alla tavola di qualcuno, oltre alla paga, e scopre che rifiutare non è tra le possibilità previste.",
		"prova a declinare con garbo una cena offerta in aggiunta alla ricompensa, e si vede togliere la parola prima di finire la frase.",
	},
	["ifo.quest_complete.w20.debt.016"] = {
		"osserva due nani dall'altra parte della sala chiudere un vecchio conto con una stretta di mano che dura troppo, perché nessuno dei due vuole mollare per primo.",
		"vede una coppia di vecchi nani saldare un debito con una stretta così lunga e testarda da trasformarsi in una gara.",
	},
	["ifo.quest_complete.w20.debt.017"] = {
		"Non siate in debito con me. Siatelo con la città: è lei che tiene chiusa la porta.",
		"Tenete il vostro debito per la montagna. Ha fatto per voi più di me.",
		"Quello che pensate di dovere, pagatelo a Ironforge. Io ci sono solo di passaggio.",
	},
	["ifo.quest_complete.w20.doubt.001"] = {
		"Il grazie è arrivato in fretta. O era esattamente quello che speravano, o si aspettavano così poco che qualsiasi cosa sarebbe andata bene. Non saprò mai quale delle due, e continuerò a chiedermelo.",
		"Un grazie breve può voler dire «perfetto» oppure «più o meno quello che mi aspettavo da te». In questa città suonano uguali.",
	},
	["ifo.quest_complete.w20.doubt.002"] = {
		"I fabbri dicono che dentro una saldatura non ci si può guardare: scopri che era fatta male solo quando cede. Spero che il mio lavoro sia sano fino in fondo.",
		"Un giunto può sembrare perfetto ed essere vuoto dentro, dicono i fabbri. Il mio lavoro da fuori sembra a posto. Per adesso è tutto quello che se ne può dire.",
	},
	["ifo.quest_complete.w20.doubt.003"] = {
		"Tutto qui? Davvero? Nessun'altra ispezione? ...Va bene. Smetto di chiedere prima che cambiate idea.",
		"Siete soddisfatti? Del tutto? Allora me ne vado subito, in fretta, finché è ancora vero.",
		"Nessuna obiezione? Proprio nessuna? Me la prendo così e vado.",
	},
	["ifo.quest_complete.w20.doubt.004"] = {
		"Una paga presa nella forgia del nemico, per un lavoro che tiene in ordine le sue sale. Ogni martello qui batte corazze che un giorno avranno davanti la mia gente. Ho preso le monete lo stesso, e ci penserò dopo.",
		"I nani mi hanno ringraziato come se fossi dei loro. Se sapessero sotto quale stendardo sto davvero, questa città diventerebbe molto rumorosa. Ho aiutato la loro montagna a reggersi un po' meglio; sto ancora decidendo che cosa faccia di me.",
	},
	["ifo.quest_complete.w20.doubt.005"] = {
		"scruta il viso di chi ha dato l'incarico un attimo più del necessario, cercando una delusione che non compare.",
		"sostiene lo sguardo di chi ha appena ringraziato un istante di troppo, come in attesa di un «però» che non arriva.",
	},
	["ifo.quest_complete.w20.doubt.006"] = {
		"Chiedi a un minatore di qui dei troggs e avrai sempre la stessa smorfia acida: li sfoltisci e tornano più fitti di prima. Certi lavori, in questa città, non finiscono mai: si interrompono. Spero che il mio sia dell'altro genere.",
		"I guai della montagna ricrescono come il muschio su un muro umido, si lamentano le guardie. Vorrei credere che quello che ho fatto resti fatto. Ironforge mi ha insegnato a non contarci troppo.",
	},
	["ifo.quest_complete.w20.doubt.007"] = {
		"Dove i conti sono così vecchi, conviene chiedersi a quale conto appartenga un lavoro. Era lavoro, o una mossa in qualche rancore più antico di me? I nani spiegano di rado, e io non ho chiesto.",
		"Ogni incarico a Ironforge potrebbe essere una riga nella lunga faida di qualcuno. Spero che quello appena finito fosse lavoro e basta. Ho il sospetto che non me lo diranno mai.",
	},
	["ifo.quest_complete.w20.doubt.008"] = {
		"Mekkatorque dice che ci riprenderemo Gnomeregan. Ogni lavoro che finisco sembra un passo verso quel giorno, e ogni passo mi mostra quanta strada manca ancora. Continuo a camminare lo stesso.",
		"A volte, a Tinker Town, mi chiedo se tutto questo avvicini davvero Gnomeregan. Poi qualcuno mi ringrazia per un lavoro onesto, e il dubbio tace per un po'.",
	},
	["ifo.quest_complete.w20.doubt.009"] = {
		"Se qualcosa si allenta, venite a cercarmi. Preferisco saperlo da voi che dalla città.",
		"Se non dovesse reggere, ditelo prima a me. Lo sistemo senza farmelo chiedere due volte.",
		"Se non tiene, voglio saperlo. Non risparmiatemi.",
	},
	["ifo.quest_complete.w20.doubt.010"] = {
		"Mi hanno pagato più del dovuto. In una città che pesa ogni rame due volte, questo mi agita più di una borsa leggera.",
		"Paga generosa, a Ironforge. O ho fatto qualcosa di più importante di quanto pensassi, oppure il prossimo incarico sarà peggio.",
	},
	["ifo.quest_complete.w20.doubt.011"] = {
		"Una città che non dimentica un rancore non dimentica nemmeno un errore. Se ho sbagliato qualcosa, il nipote di qualcuno ne borbotterà ancora in queste sale. Questo tiene l'orgoglio al suo posto.",
		"Ironforge custodisce i suoi fallimenti con la stessa cura dei suoi trionfi. Se un giorno questo andasse storto, non verrebbe dimenticato. Lo ricontrollo a mente un'ultima volta, uscendo.",
	},
	["ifo.quest_complete.w20.doubt.012"] = {
		"passa la mano su ogni cinghia e ogni tasca dell'equipaggiamento dopo la consegna, come se una parte del lavoro potesse esserci rimasta attaccata, incompiuta.",
		"controlla lo zaino una volta, lo chiude, poi lo riapre per un secondo controllo, prima di decidersi a proseguire.",
	},
	["ifo.quest_complete.w20.doubt.013"] = {
		"Era un complimento? Con i nani è difficile distinguere un elogio da un rapporto sullo stato del minerale.",
		"«Niente male.» Detto da un nano può essere una medaglia, oppure un avvertimento educato. Scelgo la medaglia.",
		"Il mio lavoro è stato definito «adeguato» con un tono che non so collocare. A metà fra una pacca sulla spalla e un sospiro, mi pare.",
	},
	["ifo.quest_complete.w20.doubt.014"] = {
		"Era giusto così? No, non rispondete. L'ha già fatto la vostra faccia.",
		"Ho fatto bene? ...Non c'è bisogno che lo diciate. Ho visto.",
		"Ditemelo chiaro: è servito? Bene. Non volevo sapere altro.",
	},
	["ifo.quest_complete.w20.doubt.015"] = {
		"Blackrock brucia ancora a sud, piena di Dark Iron e di cose peggiori dei Dark Iron. Al confronto, una commissione sembra minuscola. Ma nella Seconda Guerra il portone non ha retto grazie a una sola grande impresa: ha retto su mille gesti ordinari.",
		"I veri nemici della montagna non li fermerà niente di quello che ho appena fatto. Lo so. Ma non li fermerà nemmeno chi resta a casa pensando che sia troppo poco per contare.",
	},
	["ifo.quest_complete.w20.doubt.016"] = {
		"si ferma al limite della sala, si volta a metà come per aggiungere qualcosa, poi lascia perdere e prosegue.",
		"apre bocca per dire ancora una cosa sulla faccenda, ci ripensa e si rimette in cammino nel frastuono.",
		"esita a un passo dalla consegna, con una domanda che chiaramente prende forma, e la lascia lì, mai fatta.",
	},
	["ifo.quest_complete.w20.doubt.017"] = {
		"È filato tutto liscio. Troppo liscio. A Ironforge niente è così facile, a meno che non ci sia una seconda parte.",
		"Facile, no? Del facile non mi fido. Questa città lo concede solo come riscaldamento.",
		"Nessun intoppo. Ricordatemi perché la cosa mi preoccupa.",
	},
	["ifo.quest_complete.w20.grip.001"] = {
		"si sente afferrare l'avambraccio dal gomito al polso, ricambia la presa, e per un attimo nessuno dei due vuole mollare per primo.",
		"riceve il grazie in una stretta d'avambraccio, dura e dritta, e la ricambia uguale finché l'altra mano non allenta.",
		"prende l'avambraccio offerto, dal gomito al polso, e per un istante le due braccia si agganciano come anelli di una catena.",
	},
	["ifo.quest_complete.w20.grip.002"] = {
		"Quella stretta lascerà il segno. Credo sia proprio questo lo scopo: un grazie che si sente ancora un'ora dopo.",
		"Il mio avambraccio è stato ringraziato a fondo. Più tardi ci troverò le impronte delle dita, impresse come sigilli.",
		"L'avambraccio ringraziato con tanta decisione che me ne ricorderò a ogni boccale alzato, per un po'.",
	},
	["ifo.quest_complete.w20.grip.003"] = {
		"si ritrova la mano stretta fra le due di uno gnomo e scossa come una boccetta di qualcosa da mescolare bene.",
		"si vede afferrare la mano da entrambe quelle di uno gnomo, che la pompa su e giù con un'energia che il resto dello gnomo fatica a seguire.",
		"si fa ringraziare da uno gnomo che stringe la sua mano con tutte e due le proprie e la scuote con tanta buona volontà che la spalla comincia a protestare.",
	},
	["ifo.quest_complete.w20.grip.004"] = {
		"Una stretta decisa, poi un po' più decisa, poi lasciata. Chiunque fosse, intendeva ogni parola che non ha detto.",
		"La stretta di mano ha detto tutto in tre pressioni: fatto, bene, vai pure. Altre parole l'avrebbero rovinata.",
		"Poche parole. La mano ha tenuto la mia un attimo più del dovuto, e quello era il discorso.",
	},
	["ifo.quest_complete.w20.grip.005"] = {
		"Che stretta. Ricordatemi di non dovervi mai dei soldi.",
		"Piano, piano, quel braccio mi serve per il prossimo lavoro.",
		"Con una stretta così si schiacciano le noci. O le dita, nel mio caso.",
	},
	["ifo.quest_complete.w20.grip.006"] = {
		"flette le dita dopo la stretta di mano, una per una, per controllare che rispondano ancora tutte.",
		"scuote la mano per farci tornare la sensibilità, finito il ringraziamento, con discrezione, sotto il bordo del banco.",
		"si massaggia le nocche in silenzio dopo il grazie, come si prova un cardine dopo una porta sbattuta.",
	},
	["ifo.quest_complete.w20.grip.007"] = {
		"La mano che ha stretto la mia era appiccicosa di malto. Odorerò di tini da birra finché non mi lavo, e non ho nessuna fretta.",
		"Una stretta da birraio: calda, umida e vagamente dolce. Il mio palmo adesso sa di retrobottega dello Stonefire.",
	},
	["ifo.quest_complete.w20.grip.008"] = {
		"si ritrova in un abbraccio breve e ammaccante che sa di carbone e di cuoio, già finito prima che possa decidere cosa provarne.",
		"incassa un abbraccio breve e deciso, poi chi lo ha dato tossicchia burbero e trova d'un tratto molto interessante la parete di fondo.",
	},
	["ifo.quest_complete.w20.grip.009"] = {
		"Ho stretto una mano ancora nel guanto d'arme. Piastre fredde fuori, una presa calda dentro. Il modo di una guardia per ringraziare senza slacciarsi niente.",
		"Il guanto d'arme è rimasto per la stretta di mano. Acciaio contro il palmo, e attraverso il ferro una pressione più delicata del necessario.",
	},
	["ifo.quest_complete.w20.grip.010"] = {
		"In questa città hanno mani come incudini. Mi sgranchirò le dita fino alla banca.",
		"Qui tutti stringono la mano come se collaudassero una morsa. La mia regge. A malapena.",
		"A Ironforge insegnano a tutti a stringere la mano con un martello? Lo chiedo per conto delle mie dita.",
	},
	["ifo.quest_complete.w20.grip.011"] = {
		"sente una mano posarsi sulla spalla e stringere una volta sola: il peso di quella mano dice quel che la bocca non si scomoda a dire.",
		"si sente stringere la spalla una volta, di passaggio, come un morsetto serrato di un quarto di giro e poi allentato.",
		"avverte sulla spalla una stretta breve, pesante e sicura, poi la mano sparisce, e con lei chi la porta, dentro la folla.",
	},
	["ifo.quest_complete.w20.grip.012"] = {
		"Si impara molto dalla mano che ti paga. Questa aveva una cicatrice di bruciatura sulle nocche e il pollice schiacciato da fabbro, e ha tenuto la mia come una cosa uscita dalle sue dita.",
		"Calli in tutti i punti dove li lascia un martello, e una piccola cresta di vecchia bruciatura sul polso. Una mano che ha il diritto di giudicare un lavoro, e ha giudicato il mio onesto.",
	},
	["ifo.quest_complete.w20.grip.013"] = {
		"Un grazie dalla mia gente, alla maniera della mia gente: una stretta sul braccio e neanche una parola di troppo. Qualcosa di più caloroso e controllerei la borsa.",
		"Una stretta d'avambraccio da un altro nano, un grugnito, fatto. Ai forestieri sembra freddo. È la cosa più calda che faccia questa città.",
	},
	["ifo.quest_complete.w20.grip.014"] = {
		"accetta il grazie insieme a una mano, pulita prima sul grembiule e poi, dopo una seconda occhiata, sull'altro lato del grembiule.",
		"aspetta mentre chi ringrazia cerca un angolo pulito del grembiule di cuoio dove asciugarsi il palmo, non lo trova, e porge la mano lo stesso.",
		"stringe così com'è un palmo pulito in fretta su una manica, poi sui calzoni, poi lasciato perdere.",
	},
	["ifo.quest_complete.w20.grip.015"] = {
		"Bella stretta. Mani oneste. È stato un piacere.",
		"Questo vale un grazie. Una stretta così non me la scordo.",
		"Come grazie basta. Anzi, avanza. Lo dice la mia mano.",
	},
	["ifo.quest_complete.w20.grip.016"] = {
		"Dal gomito al polso? Questa la conosco. Ecco. Stretta quanto volete.",
		"Ah, la stretta sull'avambraccio. Un momento, voglio farla come si deve.",
		"Avambraccio, allora. Si stringe forte di rimando: è questa la regola, no?",
	},
	["ifo.quest_complete.w20.gruff.001"] = {
		"Un boccale allo Stonefire, avete detto? L'ho sentito. I nani mantengono le promesse; io tengo i promemoria.",
		"Quel giro che mi avete appena promesso, verrò a riscuoterlo. Non pensate che il chiasso l'abbia coperto.",
		"Mi ricorderò di quel giro promesso, anche se voi ve ne scordate. Per la birra gratis ho una memoria eccellente.",
	},
	["ifo.quest_complete.w20.gruff.002"] = {
		"Mi hanno promesso da bere «la prossima volta che passo dallo Stonefire». Dallo Stonefire passano tutti. O la promessa è al sicuro, o sto per bere parecchio.",
		"«Uno lo offro io, allo Stonefire, quando capita.» Quando capita è un'espressione lunga, in una città che non smette mai di lavorare. La accorcerò io.",
	},
	["ifo.quest_complete.w20.gruff.003"] = {
		"«Non l'hai rovinato, allora.» Da qualcuno chino su un banco da lavoro, in questa città, mi dicono sia il secondo complimento più alto che esista. Il primo è il silenzio.",
		"«Giusto quanto basta», mi è stato detto. Un minatore lì accanto ha alzato tutte e due le sopracciglia. A quanto pare, è quasi un'onorificenza.",
		"«Poteva andare peggio.» Qualcuno che ha sentito mi assicura che in questa città quelle parole le hanno incise sopra le porte.",
	},
	["ifo.quest_complete.w20.gruff.004"] = {
		"si prende un grazie abbaiato che sembra in tutto e per tutto un ordine, e per poco non scatta sull'attenti.",
		"sente il grazie arrivare oltre il banco come un comando da piazza d'armi, e deve trattenere i tacchi dal battere l'uno contro l'altro.",
		"riceve il grazie a volume da parata e con tono da parata, e senza volerlo si raddrizza un poco.",
	},
	["ifo.quest_complete.w20.gruff.005"] = {
		"Un grazie e una ramanzina nella stessa frase: ben fatto, e attenzione agli stivali sulla pietra pulita. Le prendo a cuore entrambe.",
		"Gratitudine, e subito dopo un'occhiata eloquente alla graniglia sui miei stivali. A Ironforge vanno in coppia.",
		"Lodi per il lavoro, una sgridata per la polvere sulle suole. Sospetto che la seconda verrà ricordata più a lungo.",
	},
	["ifo.quest_complete.w20.gruff.006"] = {
		"Sì, sì, prego. Adesso potete smettere di guardarmi storto.",
		"È il grazie più arrabbiato che abbia mai ricevuto. Lo custodirò.",
		"Prego. Davvero. Potete mettere via quel cipiglio.",
	},
	["ifo.quest_complete.w20.gruff.007"] = {
		"ascolta l'elenco di tutto quello che si poteva fare meglio, detto senza astio, e poi le parole «buon lavoro», dette senza astio anche quelle.",
		"sente nominare tre piccoli difetti del lavoro, uno dopo l'altro, e poi il grazie, con la stessa voce piatta, come se tutti e quattro stessero sullo stesso conto.",
	},
	["ifo.quest_complete.w20.gruff.008"] = {
		"Il brontolio era tutta scena. La paga era un po' abbondante, e il brontolone ha fatto finta di niente quando l'ho notato.",
		"Burbero come un cardine arrugginito, e intanto mi ha passato una moneta in più studiando il soffitto. Terrò il segreto.",
		"Tutto abbaio e un argento in più. Non lo dirò ad anima viva.",
	},
	["ifo.quest_complete.w20.gruff.009"] = {
		"Niente discorsi, quindi? Bene. Nemmeno io avevo intenzione di farne.",
		"Per me va benissimo. Io non faccio discorsi, e a quanto vedo neanche voi.",
		"Bene. Breve. Piace anche a me così.",
	},
	["ifo.quest_complete.w20.gruff.010"] = {
		"Il ringraziamento è arrivato sotto forma di una lunga lamentela sul prezzo del carbone. Annuire sembrava far parte dello scambio, e allora ho annuito.",
		"Il grazie stava sepolto in un brontolio sui prezzi del Commons. Ho dato ragione nei punti giusti. Pareva fare piacere.",
		"Mi ha ringraziato nel bel mezzo di una lagnanza sul Deeprun Tram. Ho solidarizzato a voce alta; sembrava il prezzo da pagare.",
	},
	["ifo.quest_complete.w20.gruff.011"] = {
		"Quattro parole di grazie da un nano, poi una lunga occhiata dall'alto, come per controllare che le avessi contate. Fra i nani, dicono, è quasi un abbraccio.",
		"Il nano mi ha ringraziato guardandomi da una bella altezza e senza un sorriso. Tinker Town mi ha insegnato che quello è affetto.",
	},
	["ifo.quest_complete.w20.gruff.012"] = {
		"ascolta, detto senza un sorriso, che il suo nome vale un giro allo Stonefire, e che l'oste verrà avvisato.",
		"apprende, con il tono adatto a una multa, che allo Stonefire c'è un boccale messo da parte a suo nome.",
		"viene a sapere, con severità, che allo Stonefire c'è un giro a suo credito, e che rifiutarlo sarebbe un'offesa alla casa.",
	},
	["ifo.quest_complete.w20.gruff.013"] = {
		"Tenetevi i ringraziamenti. Basta la paga: conoscete l'usanza quanto me.",
		"Risparmiatevi il discorso. Paga giusta, lavoro fatto, e io per i discorsi ho meno pazienza di voi.",
	},
	["ifo.quest_complete.w20.gruff.014"] = {
		"Parole ruvide, mani gentili. La paga contata alla buona e passata come se potesse rompersi.",
		"Tutto quel che è stato detto era breve e brusco, e tutto quel che è stato fatto era attento. A Ironforge guarda le mani, non la bocca.",
		"Voce ruvida, dita attente. Le monete posate come se potessero ammaccarsi.",
	},
	["ifo.quest_complete.w20.gruff.015"] = {
		"Breve e brusco. Proprio come piace a me un grazie.",
		"Brontolate quanto volete. Un grazie lo riconosco, quando lo sento.",
	},
	["ifo.quest_complete.w20.hall.001"] = {
		"Le catene delle lampade, in questa sala, sono state riparate così tante volte che non ci sono due anelli uguali. Prima di arrivare in fondo conto quattro tipi di ferro.",
		"Tornando indietro, per una volta alzo gli occhi: ogni catena di lampada è un rattoppo di riparazioni, ferro vecchio e nuovo, e nessuna cede di un dito.",
	},
	["ifo.quest_complete.w20.hall.002"] = {
		"passa accanto a un muratore su una scaletta che rattoppa una crepa in un arco con la cura di chi cuce una ferita, e rallenta per guardare la cazzuola lavorare.",
		"rallenta accanto a un muratore in cima a una scala, intento a riempire di malta una crepa sottile come un capello, con la pazienza di un cerusico.",
	},
	["ifo.quest_complete.w20.hall.003"] = {
		"Al centro della sala corre un solco poco profondo, scavato dalle ruote dei carri in chissà quanto tempo. I miei piedi lo trovano e lo seguono senza chiedermi il permesso.",
		"I carri hanno consumato due solchi nel pavimento. Ci cammino dentro come una ruota anch'io, fino alla svolta.",
	},
	["ifo.quest_complete.w20.hall.004"] = {
		"sosta sotto uno dei giganteschi nani di pietra della sala e scopre, all'altezza del ginocchio, le iniziali di qualche apprendista di un tempo, incise piccole e piene di speranza.",
		"si arresta ai piedi di un gigante scolpito e nota, in basso sul piedistallo, un martelletto che qualcuno ha inciso nella pietra tanto tempo fa, ormai quasi liscio.",
	},
	["ifo.quest_complete.w20.hall.005"] = {
		"Scale ovunque, e ognuna tagliata sul passo di un nano. Gambe lunghe o corte, alla terza rampa Ironforge ti ha insegnato il suo ritmo.",
		"Le scale di questa città hanno un ritmo tutto loro, deciso da ginocchia di nano. Le mie l'hanno imparato, a malincuore.",
	},
	["ifo.quest_complete.w20.hall.006"] = {
		"abbassa la voce senza volerlo passando davanti all'arco che porta all'High Seat, poi la rialza due passi più in là, vagamente in imbarazzo.",
		"parla più piano vicino all'accesso dell'High Seat, come sembra fare chiunque, e se ne accorge solo dall'altra parte.",
	},
	["ifo.quest_complete.w20.hall.007"] = {
		"Fare il giro dell'anello è una lezione di odori: ferro caldo, poi pane, poi lana bagnata, poi polvere da sparo, poi di nuovo ferro. Troverei la strada a occhi chiusi.",
		"Carbone, pane, olio, polvere da sparo, cuoio umido, carbone. Se chiudessi gli occhi tornando indietro, il naso riconoscerebbe comunque ogni svolta.",
		"Ferro caldo, zucchero bruciato chissà dove, cane bagnato, olio da lampada. Il ritorno è una mappa che potrei seguire col solo naso.",
	},
	["ifo.quest_complete.w20.hall.008"] = {
		"aggira un capannello di apprendisti seduti per terra in mezzo alla sala con una serratura rotta fra loro, tutti e sei pronti a dare consigli e nessuno con una chiave.",
		"scavalca con cautela tre giovani nani in ginocchio nella sala, impegnati a smontare una serratura con grande serietà e troppe opinioni.",
	},
	["ifo.quest_complete.w20.hall.009"] = {
		"Una tavola accanto all'arco è fitta di avvisi: picconi smarriti, un ariete in vendita, un cugino atteso con urgenza a Kharanos. Li leggo tutti, senza motivo.",
		"Qualcuno ha appeso a un pilastro un biglietto che avverte chi si è preso in prestito un paio di tenaglie buone: è stato riconosciuto. Lo leggo due volte passando, e auguro buona fortuna a entrambi.",
	},
	["ifo.quest_complete.w20.hall.010"] = {
		"passa sotto un arco scolpito con una fila di severi volti di nani e, senza averlo proprio deciso, fa loro un cenno.",
		"attraversa un architrave di volti barbuti scolpiti, tutti accigliati, e passando si sente stranamente {g:giudicato|giudicata}.",
		"rivolge un cenno, quasi senza volerlo, a una fila di volti di pietra sopra un arco, e riceve lo stesso sguardo severo riservato a chiunque.",
	},
	["ifo.quest_complete.w20.hall.011"] = {
		"Uscendo, alzo gli occhi per capire che tempo fa. Roccia. Nient'altro che roccia scolpita, fin dove arriva la luce delle lampade. Le abitudini sono dure a morire.",
		"Una parte di me, ogni volta che esce da una porta, cerca ancora le nuvole sul soffitto. A Ironforge trova una catena, una lampada e una montagna.",
	},
	["ifo.quest_complete.w20.hall.012"] = {
		"segue attraverso la sala una fila di piccole impronte nella farina rovesciata, di qualche gnomo, solo perché vanno nella direzione giusta.",
		"va dietro a una scia di piccole impronte fuligginose lungo la sala e scopre che portano proprio dove intendeva andare comunque.",
	},
	["ifo.quest_complete.w20.hall.013"] = {
		"Passando piano accanto ai canali di metallo fuso li si sente: un ticchettio leggero, uno scricchiolio dove i bordi fanno la crosta. Ci vuole un'ora libera per accorgersene.",
		"I canali incandescenti ticchettano dove si raffreddano ai bordi. Non l'avevo mai sentito: lo senti solo camminando adagio, senza più niente per cui correre.",
	},
	["ifo.quest_complete.w20.hall.014"] = {
		"si accoda a due viaggiatori appena entrati dal portone, la neve che si scioglie dalle spalle sulla pietra, e segue la scia bagnata verso l'interno.",
		"scansa una pozza che si allarga sotto il mantello di un visitatore: neve del portone che diventa acqua sul pavimento caldo.",
	},
	["ifo.quest_complete.w20.hall.015"] = {
		"Fuori da Tinker Town uno gnomo lucida una targhetta d'ottone col nome di una via di Gnomeregan, piano, come si cura una tomba. Proseguo senza chiedere.",
		"Vicino alla rampa di Tinker Town un vecchio gnomo siede a lucidare un cartello stradale di Gnomeregan, portato fin qui. Nessuno lo disturba. Nemmeno io.",
	},
	["ifo.quest_complete.w20.hall.016"] = {
		"rallenta davanti alla Hall of Mysteries mentre la voce di un sacerdote all'interno sale e scende, e aspetta che taccia prima di proseguire, senza sapere bene perché.",
		"passa davanti alla Hall of Mysteries a passi leggeri mentre dentro le voci mormorano all'unisono, e si porta dietro quel silenzio per qualche passo più del necessario.",
	},
	["ifo.quest_complete.w20.hall.017"] = {
		"Accanto a una delle forge più attive c'è un'incudine che nessuno tocca. Un minatore di passaggio mi dice che il suo fabbro non è mai tornato dalla guerra, e che da allora nessuno ci ha più battuto un colpo. Abbasso gli occhi passando.",
		"Un'incudine ferma fra tante che lavorano, tenuta lucida. Il suo fabbro è morto a difendere i passi nella Seconda Guerra, dice un nano, e nessuno ha avuto cuore di prenderla. Ci giro attorno, invece di passarle accanto.",
	},
	["ifo.quest_complete.w20.hall.018"] = {
		"fa un giro dell'anello che non serve, solo per camminare ancora un po' in una città che, per il momento, non chiede niente.",
		"prende di proposito la strada lunga, oltre porte che non servono e scale che non prende, godendosi una passeggiata senza commissioni in fondo.",
	},
	["ifo.quest_complete.w20.hall.019"] = {
		"A un angolo dell'anello c'è un nano che non vende niente, non fabbrica niente e si limita a guardare. Alzo una mano passando. Lui ne alza una. Tutto qui, e mi fa piacere.",
		"Un vecchio nano siede accanto alla rampa a guardare il traffico come un pescatore guarda l'acqua. Gli faccio un cenno passando. Ricambia senza staccare gli occhi dalla corrente.",
	},
	["ifo.quest_complete.w20.hall.020"] = {
		"I bassorilievi che incontro tornando indietro mostrano nani al lavoro: scavano, forgiano, trasportano. Nessuno mostra una battaglia. Qualcuno, tanto tempo fa, ha scelto cosa ricordare.",
		"Ogni fregio su questo tratto di muro mostra fatica: picconi alzati, mantici pompati, carri trainati. Nemmeno una guerra. Una città che sceglie, nella pietra, cosa vuole essere.",
	},
	["ifo.quest_complete.w20.next.001"] = {
		"Prima il Vault of Ironforge, a consegnare tutto ciò che non ho più voglia di portarmi dietro. Gli impiegati lo ricevono con la faccia solenne di chi accetta un incarico d'onore, anche se sono stivali vecchi.",
		"La banca, direi. Alleggerire lo zaino, tenere qualche moneta a portata di mano e lasciare al Vault le preoccupazioni per il resto. È costruito apposta.",
		"Al Vault, ad alleggerire lo zaino. Qualunque cosa ci lasci sarà esattamente dove l'ho lasciata, e non posso dire lo stesso di nessun altro posto al mondo.",
	},
	["ifo.quest_complete.w20.next.002"] = {
		"si avvia verso la Stonefire Tavern col passo calmo e sicuro di chi ha un unico programma rimasto.",
		"punta verso il Commons e la Stonefire Tavern con l'aria di chi ha preso la prossima decisione parecchio tempo fa.",
	},
	["ifo.quest_complete.w20.next.003"] = {
		"Adesso dall'istruttore. C'è una cosa che muoio dalla voglia di imparare per bene, e finalmente un'ora libera per farla male.",
		"Dall'istruttore, prima che mi passi il coraggio. Niente ti ridimensiona come sentirti mostrare come andava fatto.",
		"È ora di andare dal mio istruttore e farmi spiegare tutto quello che ho sbagliato, per esteso, da un esperto.",
	},
	["ifo.quest_complete.w20.next.004"] = {
		"Il posatoio del maestro dei grifoni è a pochi passi, alla Great Forge. Metà di me vorrebbe essere già in volo prima di averci pensato bene.",
		"Dal posatoio della Great Forge arrivano i lamenti dei grifoni. Ogni brontolio suona come un invito.",
	},
	["ifo.quest_complete.w20.next.005"] = {
		"scende verso Tinker Town e il tram, già in cerca della pazienza che richiede un orario gnomesco.",
		"si dirige verso Tinker Town e il Deeprun Tram, dove gli gnomi promettono partenze con assoluta sicurezza e a nessuna ora precisa.",
	},
	["ifo.quest_complete.w20.next.006"] = {
		"Passerò dalla casa d'aste, visto che è di strada. Non per comprare. Lo dico ogni volta, e ogni volta i banditori la sanno più lunga.",
		"La casa d'aste è proprio di strada. Ci passerò davanti. Ci passerò davanti. A quanto pare, ci sto entrando.",
	},
	["ifo.quest_complete.w20.next.007"] = {
		"Meglio scrivere una lettera finché è fresca. Qualcuno, chissà dove, merita di sapere che ho fatto qualcosa di utile.",
		"Dovrei metterlo per iscritto e spedirlo a qualcuno prima che si riduca a niente. A chi, lo deciderò davanti alla cassetta della posta.",
	},
	["ifo.quest_complete.w20.next.008"] = {
		"Ho una domanda per la Hall of Explorers di cui non importa a nessuno tranne che a me. Adesso ho il tempo di andare a farla, goffamente.",
		"Senza niente di urgente, potrei finalmente passare dalla Hall of Explorers a fissare ossa antiche senza che nessuno batta il piede.",
	},
	["ifo.quest_complete.w20.next.009"] = {
		"si ferma dove l'anello incontra la lunga sala del portone e guarda da una parte, poi dall'altra, soppesando la strada là fuori contro il caldo alle spalle.",
		"indugia alla svolta per il portone, un piede rivolto verso l'esterno e l'altro ancora ben piantato in città.",
	},
	["ifo.quest_complete.w20.next.010"] = {
		"Mi fermerò un po' accanto alla Great Forge a lasciare che il calore faccia quello che fa il calore. Non ha nessuna opinione su di me, ed è riposante.",
		"Qualche minuto alla Great Forge, direi. Laggiù nessuno vuole niente da chi guarda, tranne che si tolga di mezzo.",
	},
	["ifo.quest_complete.w20.next.011"] = {
		"C'è un posto in questa città che venda qualcosa di caldo infilzato su uno spiedo? Lo chiedo per il mio stomaco, che fa più rumore delle forge.",
		"Da mangiare. Qualsiasi cosa calda, qualsiasi. Il mio stomaco sta coprendo i martelli già da un po'.",
	},
	["ifo.quest_complete.w20.next.012"] = {
		"Gli stivali chiedono un calzolaio e l'equipaggiamento un fabbro, e questa città ne ha più di qualsiasi altro posto che conosca. Basta scegliere l'incudine più vicina.",
		"Tutto quello che ho va rimesso in sesto. A Ironforge puoi lanciare un sassolino in qualsiasi direzione e colpire qualcuno che ripara cose di mestiere.",
	},
	["ifo.quest_complete.w20.next.013"] = {
		"prende il giro lungo verso il Mystic Ward, dove il martellare cala di un grado a ogni passo.",
		"lascia che siano i piedi a scegliere il Mystic Ward, per nessun motivo migliore del fatto che lì il rumore cala come una nota tenuta che finisce.",
		"va dietro al rumore che si spegne verso il Mystic Ward, come se il silenzio fosse una pista da fiutare.",
	},
	["ifo.quest_complete.w20.next.014"] = {
		"Banca, taverna, istruttore, tram. Resto qui a elencarli così a lungo che una guardia comincia a interessarsi a me.",
		"Quattro posti dove andare, e io sto in mezzo alla sala a soppesarli come minerale. Una guardia se n'è accorta. Ne scelgo uno, in fretta.",
	},
	["ifo.quest_complete.w20.next.015"] = {
		"Torno a Tinker Town, al banco prestato che chiamo officina. Non è Gnomeregan. È caldo, e per ora è mio.",
		"Poi Tinker Town, e l'angolo che ho fatto mio. Muri in prestito, disordine tutto mio. Andrà bene finché non ci sarà una Gnomeregan in cui tornare.",
	},
	["ifo.quest_complete.w20.next.016"] = {
		"si avvia verso il portone di buon passo, poi rallenta all'ultimo braciere per scaldarsi le mani, come per mettere da parte il calore.",
		"percorre la lunga sala verso il portone e, verso la fine, si ferma a fare scorta del calore di un braciere, come chi riempie l'otre prima di una lunga strada.",
	},
	["ifo.quest_complete.w20.next.017"] = {
		"Una persona sensata si siederebbe. Ironforge non sembra dare lavoro a gente sensata: tutti quelli che vedo sono già al lavoro successivo, e ne sento il richiamo.",
		"La cosa sensata sarebbe riposare. La cosa da Ironforge è trovare altro lavoro. Alle mie spalle sento già un nano chiedere se qualcuno è libero.",
	},
	["ifo.quest_complete.w20.next.018"] = {
		"Adesso dal maestro dei grifoni. Se devo patire il freddo, preferisco patirlo in fretta.",
		"Al posatoio, allora. Meglio un brivido veloce che uno lento.",
		"Dai grifoni. Là fuori c'è una mappa intera e l'ho appena scalfita.",
	},
	["ifo.quest_complete.w20.next.019"] = {
		"Forse passerò dalla Hall of Arms a guardare le esercitazioni da una panca, con la profonda soddisfazione di chi non viene fatto esercitare.",
		"Il Military Ward è di strada. Mi metterò contro il muro a godermi lo spettacolo di qualcun altro che si prende gli urli.",
	},
	["ifo.quest_complete.w20.next.020"] = {
		"non sceglie nessuna direzione e si limita a seguire il flusso dell'anello dovunque vada, felice di lasciarsi portare.",
		"lascia decidere alla folla, e va alla deriva con la corrente dell'anello, da una porta all'altra.",
	},
	["ifo.quest_complete.w20.next.021"] = {
		"Al portone dicono che una tempesta sta spazzando Dun Morogh. Qui dentro l'unico segno sono i mantelli bagnati. Non ho nessuna fretta di andare a controllare.",
		"I viaggiatori continuano a entrare battendo i piedi, mantelli fradici e capelli arruffati, e parlano di tempesta. Fuori non ho niente da fare, e intendo che resti così.",
	},
	["ifo.quest_complete.w20.next.022"] = {
		"Oltre il portone ce ne sono altre così che aspettano: altra gente che ha bisogno di una mano. Scopro, con una certa sorpresa, che ho voglia di andarle a cercare.",
		"Il portone è aperto, e il mondo là fuori è pieno di piccoli guai che aspettano chiunque si presenti. Mi piacerebbe essere quel chiunque.",
	},
	["ifo.quest_complete.w20.next.023"] = {
		"Vendere, depositare, riparare, mangiare. In quest'ordine sarei una persona saggia. Li farò al contrario, a cominciare da mangiare.",
		"Depositare, vendere, riparare, mangiare: l'ordine saggio. Il mio stomaco ha proposto un emendamento, ed è passato.",
	},
	["ifo.quest_complete.w20.next.024"] = {
		"apre una cassetta della posta, non ci trova niente e la richiude con la dignità di chi si aspettava proprio questo.",
		"controlla una cassetta della posta passando, la trova vuota e le dà comunque due pacche, come a un cane che ha fatto del suo meglio.",
		"sbircia in una cassetta della posta lungo la strada, scopre che non contiene assolutamente nulla e la ringrazia gravemente del disturbo.",
	},
	["ifo.quest_complete.w20.next.025"] = {
		"Dove mangiano i fabbri? Non in taverna: nel posto vero. Voglio quello che prendono loro.",
		"Dimmi dove vanno a mangiare le squadre della forgia. Dovunque sia, ci sarà roba calda, economica e abbondante.",
	},
	["ifo.quest_complete.w20.nod.001"] = {
		"Un grugnito. Uno solo, basso, venuto da qualche parte in fondo al petto. Ho ascoltato discorsi che dicevano di meno.",
		"Il grazie è arrivato in un suono solo, mezzo grugnito e mezzo ringhio. Ho ricevuto lodi più lunghe che volevano dire molto meno.",
		"Un solo suono basso dalla gola, come un carrello che si assesta sui binari. Quello era il grazie, ed era abbondante.",
	},
	["ifo.quest_complete.w20.nod.002"] = {
		"riceve un cenno lento che parte dalla fronte e scende fino in fondo, e capisce che il ringraziamento è tutto lì.",
		"ottiene un cenno del capo, un'unica inclinazione voluta, tenuta giù un istante, e sa che non arriverà altro.",
	},
	["ifo.quest_complete.w20.nod.003"] = {
		"Nessuno ha detto grazie. La paga era giusta e gli occhi non hanno lasciato i miei mentre me la porgevano. Sto imparando che questo è il grazie.",
		"Nessuna parola di ringraziamento, solo monete esatte e uno sguardo fermo. A Ironforge, mi pare di capire, lo sguardo è la parola.",
		"Il grazie, alla fine, era il resto esatto e una lunga occhiata dritta negli occhi. Ho avuto parole più calde che valevano meno.",
	},
	["ifo.quest_complete.w20.nod.004"] = {
		"Era un grugnito buono o un grugnito cattivo? Decido che era buono.",
		"Prendo quel grugnito come un complimento. Correggetemi se era un insulto.",
		"Quel verso che avete fatto. Lo chiamerò soddisfazione.",
	},
	["ifo.quest_complete.w20.nod.005"] = {
		"ottiene un cenno e due dita battute sul bordo dell'elmo, e il grazie è già finito prima che abbia ricambiato del tutto.",
		"si sente ringraziare con un colpo di nocche sulla visiera dell'elmo, rapido come un saluto, e chi l'ha fatto si sta già voltando.",
		"riceve un colpetto di guanto d'arme sul bordo dell'elmo: l'intero vocabolario di gratitudine di una guardia, speso in un gesto.",
	},
	["ifo.quest_complete.w20.nod.006"] = {
		"Per ringraziarmi il martello è stato posato. Posato, sul banco, e la mano lasciata vuota. Qui è quanto di più simile a togliersi il cappello.",
		"Chi mi ha ringraziato ha posato prima l'attrezzo, e solo dopo ha alzato gli occhi. Conosco abbastanza questa città da sapere quanto vale.",
		"Le tenaglie sono finite sul banco, e solo dopo è arrivato il grazie. In questa città quell'ordine vuol dire qualcosa.",
	},
	["ifo.quest_complete.w20.nod.007"] = {
		"«Bene.» Nient'altro. Detto come lo dice un giudice, e me lo porterò dietro come un verdetto andato a mio favore.",
		"Una parola sola, «bene», e la faccenda chiusa come un registro. Certi signori fanno discorsi più lunghi e intendono di meno.",
		"Solo «bene», detto come lo dice un muratore di un muro che starà in piedi. Me lo prendo.",
	},
	["ifo.quest_complete.w20.nod.008"] = {
		"risponde a un «sì» brusco con un «sì» altrettanto brusco, e la cerimonia è tutta qui.",
		"scambia un «già» con un altro «già» oltre il banco, e la faccenda, per entrambe le parti, si chiude in bellezza.",
		"incassa un «sì», ne restituisce uno, e se ne va con la netta sensazione di aver firmato qualcosa di importante.",
	},
	["ifo.quest_complete.w20.nod.009"] = {
		"nota uno sconosciuto in fondo alla sala, che ha visto la consegna, alzare il boccale di un dito verso di {g:lui|lei} e poi rimettersi a bere.",
		"si accorge che qualcuno su una panca vicina solleva appena il boccale nella sua direzione, il brindisi di un testimone, e ci si richina sopra senza una parola.",
	},
	["ifo.quest_complete.w20.nod.010"] = {
		"Già. Altrettanto.",
		"Non serve altro. Ho capito.",
		"Ricevuto. E grazie anche a voi.",
	},
	["ifo.quest_complete.w20.nod.011"] = {
		"Più il grazie è sommesso, in questa città, più ce n'è dentro. Quello era quasi muto.",
		"Chi mi ha ringraziato non ha fatto quasi un suono. Conosco questa città abbastanza da sentire quanto era forte.",
		"Appena una parola, e gli occhi a fare il resto. A Ironforge i grazie silenziosi sono quelli che arrivano a fondo.",
	},
	["ifo.quest_complete.w20.nod.012"] = {
		"coglie un cenno così piccolo che potrebbe essere un tic, se non fosse che gli occhi che lo accompagnano restano su di {g:lui|lei} un attimo più di un tic.",
		"sulle prime non capisce se quello era un cenno, poi vede lo sguardo che non si sposta, e decide di sì.",
	},
	["ifo.quest_complete.w20.nod.013"] = {
		"Il cenno d'approvazione di un nano arriva più lontano di quel che sembra. Lungo il tram, fino a Stormwind, per tutta l'Alleanza. Lo porterò con discrezione.",
		"Qualunque grazie di Ironforge è moneta buona ovunque l'Alleanza alzi le sue insegne. Non lo spenderò a voce alta.",
	},
	["ifo.quest_complete.w20.nod.014"] = {
		"Gli angoli degli occhi si sono increspati, la bocca è rimasta esattamente dov'era. Mi hanno sorriso, alla maniera di Ironforge.",
		"Non un sorriso, non proprio: solo una piega accanto a ogni occhio, comparsa e sparita. La conto lo stesso.",
	},
	["ifo.quest_complete.w20.nod.015"] = {
		"Era un cenno? Allora ricambio. Ecco. Pari.",
		"Un cenno per un cenno. Scambio onesto.",
	},
	["ifo.quest_complete.w20.pride.001"] = {
		"Controllate pure. Anche due volte, se volete. Aspetto mentre cercate il difetto.",
		"Avanti, ispezionate. Con calma. Non troverete niente da rimandare indietro.",
		"Guardate ogni angolo. Mi offenderei, se non lo faceste.",
	},
	["ifo.quest_complete.w20.pride.002"] = {
		"L'hanno esaminato da ogni lato senza dire una parola. Mi dicono che a Ironforge il silenzio dopo un'ispezione sia la lode più alta che esista. Lo prendo per quello che è.",
		"Neanche una parola da chi l'ha controllato. Un fabbro nanico mi ha raccontato che così lodano i loro apprendisti migliori: non trovando niente da dire.",
	},
	["ifo.quest_complete.w20.pride.003"] = {
		"raddrizza una cinghia storta e si spazzola una manica prima di riprendere il cammino, come se gli artigiani della città potessero giudicare anche le sue rifiniture.",
		"rimette in squadra una fibbia e raddrizza le spalle uscendo, come un pezzo di lavoro presentato per l'ultima occhiata.",
	},
	["ifo.quest_complete.w20.pride.004"] = {
		"Un Bronzebeard non fa le cose a metà, dentro queste mura. I miei antenati hanno scavato le sale; il minimo che possa fare è tenerle in ordine.",
		"Nella mia città, con gli stendardi del mio clan sopra le sale, non esiste lavoro piccolo. Esiste solo lavoro fatto male, e qui non lo faccio.",
	},
	["ifo.quest_complete.w20.pride.005"] = {
		"I nani ci hanno accolti quando non c'era nessun altro posto. Ogni lavoro che finisco bene è uno gnomo che dice: non un profugo, un vicino. Uno che serve. Qui finché non torneremo a casa.",
		"C'è ancora chi, in questa città, vede uno gnomo e pensa a una città perduta. Il lavoro ben fatto è la risposta migliore che ho: abbiamo perso Gnomeregan, non le mani.",
	},
	["ifo.quest_complete.w20.pride.006"] = {
		"A Ironforge nessuno ti stima di meno se sei soddisfatto del tuo lavoro. Ti stimano di meno se fai finta di non esserlo. Quindi: mi piace com'è venuto. Ecco.",
		"La falsa modestia sotto questa montagna non si vende. Un nano che ha fatto bene lo dice, e forte. Io lo dico piano, tra me e me, che è già un inizio.",
	},
	["ifo.quest_complete.w20.pride.007"] = {
		"L'orgoglio ha scavato queste sale, e l'orgoglio ha diviso i tre clan nella Guerra dei Tre Martelli. Un po', dopo un buon lavoro, va bene. Un nano direbbe di tenerlo alla catena corta.",
		"Questa città sa quanto vale l'orgoglio e quanto costa: ha costruito Ironforge e ha spaccato i clan. Me ne concedo una misura, e la tengo piccola.",
	},
	["ifo.quest_complete.w20.pride.008"] = {
		"Raccontatelo ai fabbri. Anzi, no. Troverebbero subito tre cose che avrei dovuto fare diversamente.",
		"Mi vanterei, ma in questa città c'è sempre un maestro artigiano a portata d'orecchio.",
		"Ne vado piuttosto {g:fiero|fiera}. Lo dico sottovoce, però: questi muri hanno sentito di meglio.",
	},
	["ifo.quest_complete.w20.pride.009"] = {
		"ha addosso, dall'altra parte della sala, gli occhi di un giovane nano col grembiule da apprendista, che li distoglie subito quando viene sorpreso e un attimo dopo torna a guardare.",
		"nota un piccolo gnomo che sbircia da dietro una cassa di ricambi e {g:lo|la} studia con l'attenzione schietta che si riserva a una macchina in funzione.",
	},
	["ifo.quest_complete.w20.pride.010"] = {
		"Fatto come lo farebbe questa città: bene, e una volta sola.",
		"Finito alla maniera di Ironforge. Fatto una volta, fatto bene.",
	},
	["ifo.quest_complete.w20.pride.011"] = {
		"In una città dove ognuno si è guadagnato il suo, l'orgoglio pesa. Io me ne porto via un pezzetto da tasca, quanto basta per scaldarmi le mani fino al prossimo angolo.",
		"Da queste parti l'orgoglio si misura in lingotti; il mio è più che altro una scaglia. Ma è mio, ed è onesto.",
	},
	["ifo.quest_complete.w20.pride.012"] = {
		"si trattiene quanto basta per sentir raccontare la faccenda a un passante, e corregge con garbo un piccolo dettaglio prima di andarsene.",
		"sente la storia ripetuta a pochi passi di distanza, un po' abbellita, e lascia correre l'abbellimento.",
	},
	["ifo.quest_complete.w20.pride.013"] = {
		"Incidetelo su un muro con il resto. No? Una nota a piè di pagina, allora. Piccola.",
		"Non chiedo una statua. Basterebbe una targa. Anche un sassolino con le mie iniziali.",
		"Mettetelo negli archivi della città. A matita, se l'inchiostro costa troppo.",
	},
	["ifo.quest_complete.w20.pride.014"] = {
		"Quello di cui i nani vanno più fieri è il lavoro che nessuno vede: il perno dentro il cardine, la trave dietro il muro. Comincio a capirli. La parte migliore di questo lavoro è quella che nessuno guarderà mai.",
		"Gli artigiani di qui sono orgogliosi soprattutto di ciò che resta nascosto: il giunto sotto la piastra, le fondamenta sotto il pavimento. Mi accorgo che anche a me la parte noiosa dà soddisfazione.",
	},
	["ifo.quest_complete.w20.pride.015"] = {
		"si allontana dalla consegna un filo più lentamente del solito, con l'andatura di chi non avrebbe niente in contrario a farsi notare.",
		"a faccenda chiusa prende il giro lungo dell'anello, con un passo tranquillo che per pura combinazione passa davanti a moltissima gente.",
	},
	["ifo.quest_complete.w20.pride.016"] = {
		"Bel lavoro, questo. Lo dico io, così nessun altro deve sforzarsi.",
		"Un ottimo lavoro, a mio parere. E il parere lo do io, visto che nessun altro sembra volerlo dare.",
		"{g:Bravo|Brava} me. Ecco. Qualcuno doveva dirlo.",
	},
	["ifo.quest_complete.w20.pride.017"] = {
		"Con tutti i volti scolpiti nella pietra che ha questa città, non ho bisogno che ci sia anche il mio su un muro. Mi basta che il mio lavoro sia la cosa che nessuno dovrà mai riparare.",
		"Niente statue, niente bassorilievi, niente canzoni. La lode più alta che questa città conosca è che nessuno rimetta più mano al lavoro, ed è quella che vorrei.",
	},
	["ifo.quest_complete.w20.quip.001"] = {
		"Se qualcuno chiede, è stato pericolosissimo, e io ne ho parlato con grande modestia.",
		"Dovesse qualcuno domandare: è stato periglioso, e l'ho sopportato con somma umiltà.",
		"Dite in giro che è stato terrificante. Poi dite che io non ne ho fatto parola.",
	},
	["ifo.quest_complete.w20.quip.002"] = {
		"Se fra un'ora non sono in taverna, cercatemi alla casa d'aste. Se non sono neanche lì, ho comprato qualcosa di stupido.",
		"Se al prossimo cambio turno non mi vedete, guardate alla casa d'aste. Sarò la faccia pentita davanti a un'offerta.",
	},
	["ifo.quest_complete.w20.quip.003"] = {
		"Qualcuno in questa città ha un lavoro pagato in sonno? Lo accetterei anche a metà prezzo.",
		"C'è qualche incarico pagato in ore di sonno? Accetto anche una paga ridotta.",
		"C'è speranza che questa città assuma gente per stare seduta immobile per un'ora? Posso cominciare subito.",
	},
	["ifo.quest_complete.w20.quip.004"] = {
		"Prima che arrivi alla sala successiva, qualcuno l'avrà già raccontata male. Quando arriverà alla Stonefire Tavern sarò un gigante di quattro metri, in fiamme.",
		"Le storie fanno il giro dell'anello più in fretta di me. Mi aspetto di arrivare in taverna e sentirne una versione in cui ho fatto a botte con una forgia.",
	},
	["ifo.quest_complete.w20.quip.005"] = {
		"Farei un discorso, ma in queste sale dovrei urlarlo, e la voce la tengo per ordinare da mangiare.",
		"Un discorso come si deve andrebbe urlato sopra le forge. Fate conto che l'abbia urlato. Vado a mangiare.",
	},
	["ifo.quest_complete.w20.quip.006"] = {
		"Da che parte è il tram? E per favore, le indicazioni alla maniera dei nani, non quelle degli gnomi con i diagrammi.",
		"Il tram è di là? Grazie. L'ultimo gnomo a cui l'ho chiesto mi ha disegnato una mappa con tre appendici.",
		"Basta indicare. Un nano indica; uno gnomo ti disegna un grafico e ti chiede un parere.",
	},
	["ifo.quest_complete.w20.quip.007"] = {
		"Festeggerò alla maniera di Ironforge: in piedi vicino a qualcosa di rovente, lamentandomi del prezzo del minerale.",
		"È ora di festeggiare come la gente del posto: davanti a un fuoco, a brontolare sul prezzo del ferro, rifiutandosi di sedersi.",
	},
	["ifo.quest_complete.w20.quip.008"] = {
		"Ho preso un passo dignitoso uscendo dalla sala. Una bambina nana con un martello grande il doppio di lei mi ha superato di corsa. Ho adeguato il passo e rinunciato alla dignità.",
		"Volevo uscirne con un po' di dignità. Poi una nanetta con un martello enorme mi ha sorpassato al trotto, e ho abbassato le aspettative.",
	},
	["ifo.quest_complete.w20.quip.009"] = {
		"Questa città ha un angolo tranquillo, o è una cosa che si sono inventati gli gnomi?",
		"C'è un angolo tranquillo da qualche parte a Ironforge? Anche piccolo. Il silenzio lo porto io.",
		"Scusate, da che parte si va per un posto tranquillo? ...No, infatti, nemmeno io ci credevo.",
	},
	["ifo.quest_complete.w20.quip.010"] = {
		"fa un passo indietro e finisce dritto contro una cordicella gnomesca tesa attraverso la sala, che, a giudicare dagli strilli, era importante.",
		"si volta di buon passo e s'impiglia in una corda da misura che due gnomi hanno teso attraverso la sala, con loro acuta costernazione.",
	},
	["ifo.quest_complete.w20.quip.011"] = {
		"Da bere per tutta la sala! ...Ho appena contato la sala. Da bere per quel nano là.",
		"Offrirei un giro a tutti quelli che sono in questa sala, ma li ho contati, e la mia gioia ha dei limiti.",
	},
	["ifo.quest_complete.w20.quip.012"] = {
		"Potrei prendere il tram e arrivare a Stormwind prima dei pettegolezzi. Non ci è mai riuscito nessuno, ma sono in vena.",
		"Se prendo il tram adesso, arrivo a Stormwind prima della notizia. Battere le chiacchiere sul tempo: quella sì che sarebbe un'impresa.",
	},
	["ifo.quest_complete.w20.quip.013"] = {
		"Faccio un cenno a una guardia passando. La guardia ricambia, di un dito esatto. A Ironforge è praticamente una parata.",
		"Una guardia sulla scala mi concede un cenno profondo un dito. Da una guardia di Ironforge lo prendo come una medaglia.",
	},
	["ifo.quest_complete.w20.quip.014"] = {
		"Come? Scusa, come? Ti rispondo come si deve appena sono fuori tiro dalle incudini.",
		"Prego? Puoi ripetere? Ti sentirò meglio fra tre sale.",
		"Cos'hai detto? Dovrai accompagnarmi in un posto con meno incudini.",
	},
	["ifo.quest_complete.w20.quip.015"] = {
		"si concede un piccolo saltello uscendo dalla sala, incrocia lo sguardo di un nano severo e lo trasforma con disinvoltura in un inciampo.",
		"si permette mezzo saltello, vede una guardia che osserva e lo trasforma nel gesto di sistemarsi uno stivale.",
	},
	["ifo.quest_complete.w20.quip.016"] = {
		"La mia parte per l'Alleanza è fatta. Adesso l'Alleanza può offrirmi un pasticcio.",
		"Qualunque cosa mi debba l'Alleanza, può pagarla in dolci. Mi trovate a un banco.",
	},
	["ifo.quest_complete.w20.saying.001"] = {
		"I fabbri hanno un detto: un pezzo non è finito finché non è abbastanza freddo da tenerlo a mani nude. A questo metro, il mio vibra ancora un po'.",
		"«È finito quando puoi prenderlo in mano», mi ha detto un vecchio fabbro: un pezzo deve raffreddarsi prima di contare. Questo lo lascio raffreddare strada facendo.",
	},
	["ifo.quest_complete.w20.saying.002"] = {
		"Come dicono i minatori: alla roccia non importa chi ha calato il piccone, solo che qualcuno l'abbia fatto.",
		"Saggezza da minatori: la pietra non chiede mai di chi fosse il braccio. Si sposta, o non si sposta.",
		"I minatori hanno ragione. La roccia non ringrazia: cede. E tanto basta.",
	},
	["ifo.quest_complete.w20.saying.003"] = {
		"Allo Stonefire c'è un detto: un favore e un boccale di stout si sgasano tutti e due, se li lasci lì. Meglio riscuoterli finché hanno ancora la schiuma.",
		"Allo Stonefire una volta qualcuno giurava che i ringraziamenti e la stout hanno la stessa regola: vanno presi freschi. Intendo seguire il consiglio alla lettera.",
	},
	["ifo.quest_complete.w20.saying.004"] = {
		"Si dice che gli scalpellini di Ironforge posino ogni pietra come se il re in persona potesse appoggiarcisi. Mi piace pensare di aver fatto lo stesso, nel mio piccolo.",
		"«Mettila come se Magni dovesse appoggiarci tutto il suo peso», dicono gli scalpellini ai loro apprendisti. Io non ho posato pietre. Ho cercato di lavorare allo stesso modo.",
	},
	["ifo.quest_complete.w20.saying.005"] = {
		"A Tinker Town dicono: se ha funzionato al primo colpo, hai capito male il problema. Ho deciso di ignorarlo.",
		"Gli gnomi giurano che niente di ciò che funziona al primo tentativo sia affidabile. Che nessuno glielo dica.",
		"Uno gnomo una volta mi ha avvertito: se riesce al primo colpo, qualcosa ti è sfuggito. Shh. Non rovinatemela.",
	},
	["ifo.quest_complete.w20.saying.006"] = {
		"La Guardia di Ironforge, mi dicono, ha un detto: il portone è forte quanto le faccende che nessuno voleva fare. Ne ho appena sbrigata una.",
		"Una guardia al portone una volta l'ha detto senza giri di parole: non sono le mura a reggere la montagna, ma i lavori noiosi dietro le mura. Mi piace essere uno di quei lavori noiosi.",
	},
	["ifo.quest_complete.w20.saying.007"] = {
		"Prima il lavoro, poi la birra, poi le chiacchiere: l'ordine che ogni bambino nanico sente dagli anziani prima ancora di saper reggere un martello. La prima parte è fatta. So dove vado adesso.",
		"Gli anziani di questa città lo ripetono ancora ai più giovani: prima il lavoro, poi il boccale, per ultime le chiacchiere. Quella regola è più vecchia delle sale, e l'ho appena rispettata.",
	},
	["ifo.quest_complete.w20.saying.008"] = {
		"Un vecchio nano una volta mi ha detto: i ringraziamenti costano poco, è il secondo incarico il vero complimento. Allora, c'è un secondo incarico?",
		"Qualcuno, qui, mi ha insegnato che un grazie non costa niente; quello che conta è essere richiamati. Vi ascolto.",
		"La saggezza nanica dice che il vero grazie è venire richiamati. Chiedete pure.",
	},
	["ifo.quest_complete.w20.saying.009"] = {
		"sente per caso un minatore dalla barba grigia spiegare a uno più giovane che un lavoro lasciato a metà è un rancore che porti contro te stesso, e si trattiene finché il giovane non annuisce.",
		"coglie di passaggio un vecchio nano che spiega a un apprendista come il lavoro incompiuto sia l'unico debito che nessun altro può pagare al posto tuo, e rallenta per sentire la fine.",
	},
	["ifo.quest_complete.w20.saying.010"] = {
		"«Quello che lasci al buio, il buio se lo tiene», dicono i minatori, degli attrezzi come dei lavori. Stavolta di mio laggiù non è rimasto niente.",
		"I minatori del profondo sostengono che ciò che resta incompiuto al buio appartiene al buio. Questo l'ho finito. Era mio, e adesso è di chi l'aveva chiesto.",
	},
	["ifo.quest_complete.w20.saying.011"] = {
		"Un nano una volta mi ha detto che un martello non chiede mai di essere ringraziato. Per fortuna non sono un martello.",
		"«L'incudine non vuole gratitudine», dicono da queste parti. Io non sono un'incudine. Prego, continuate.",
		"Gli attrezzi non hanno bisogno di grazie, dicono i fabbri. Io sono qualcosa di più di un attrezzo, anche se di poco.",
	},
	["ifo.quest_complete.w20.saying.012"] = {
		"riceve come ringraziamento un breve proverbio, borbottato più che detto, qualcosa sul ferro e la pazienza, e resta lì a decifrarne il senso.",
		"riceve, a mo' di grazie, un burbero detto sul ferro freddo e le mani lente, e ci sta ancora rimuginando una dozzina di passi più in là.",
	},
	["ifo.quest_complete.w20.saying.013"] = {
		"Gli gnomi di Tinker Town sostengono che conta il quarto tentativo: i primi tre servono a capire da dove esce il fumo. Il mio ha contato al primo. Sarebbero sospettosi.",
		"Secondo gli gnomi, ogni invenzione ha bisogno di tre fallimenti prima che ci si possa fidare. Questo lavoro non ne ha avuto nessuno. Uno gnomo lo rimanderebbe indietro per un collaudo.",
	},
	["ifo.quest_complete.w20.saying.014"] = {
		"Gli studiosi dell'Explorers' League amano dire che una scoperta appartiene a chi la mette per iscritto. Allora un lavoro appartiene a chi lo finisce. Questo è mio.",
		"«Dissotterrala ed è di tutti; scrivila ed è tua», recita un detto dell'Explorers' League. Col lavoro è lo stesso: iniziato è una promessa, finito è un fatto.",
	},
	["ifo.quest_complete.w20.saying.015"] = {
		"sente un fabbro di passaggio gridare a nessuno in particolare che il ferro freddo non dice bugie, e annuisce, senza sapere bene perché.",
		"coglie al di sopra del frastuono il detto urlato da un fabbro, qualcosa sul metallo caldo e il lavoro onesto, e si sorprende ad annuire.",
	},
	["ifo.quest_complete.w20.saying.016"] = {
		"I birrai di qui dicono che il buon lavoro è come la buona stout: non si lascia mettere fretta e non si lascia contraffare.",
		"Come dicono i birrai: una botte non si affretta, e nemmeno un lavoro fatto come si deve.",
		"Un detto da birrai, per voi: lasciatelo posare, prima di giudicarlo.",
	},
	["ifo.quest_complete.w20.stretch.001"] = {
		"piega le dita una per una, come per verificare che ciascuna abbia superato la faccenda in buono stato.",
		"apre e chiude le mani un paio di volte, contando le dita con l'aria di chi è piacevolmente sorpreso dal totale.",
		"si esamina i palmi, li gira e li trova in condizioni migliori del previsto, il che è un piacevole cambiamento.",
	},
	["ifo.quest_complete.w20.stretch.002"] = {
		"Le orecchie mi fischiano a tempo con l'incudine più vicina. Non so più se il suono sia là fuori o se ormai abiti dentro di me.",
		"Un lieve fischio nelle orecchie mi segue di sala in sala. Forse sono i martelli. Forse sono io che chiedo una stanza silenziosa.",
	},
	["ifo.quest_complete.w20.stretch.003"] = {
		"Mi tolgo i guanti e lascio che le mani incontrino l'aria calda. È una cosa da niente. È la cosa migliore capitata alle mie mani da un pezzo.",
		"Via i guanti. Il calore delle sale arriva dritto alle nocche, e per un momento nient'altro al mondo ha bisogno di essere fatto.",
	},
	["ifo.quest_complete.w20.stretch.004"] = {
		"si lascia andare sull'estremità di una panca accanto a un vecchio minatore, e i due restano lì senza una parola, cosa che sembra andare bene a entrambi.",
		"prende il capo libero di una panca contro il muro; il nano all'altra estremità si sposta di un dito per fare spazio, e qui vale come un caloroso benvenuto.",
	},
	["ifo.quest_complete.w20.stretch.005"] = {
		"Qualcosa nel ginocchio sinistro schiocca ogni tre gradini. Ho deciso che tiene il tempo coi martelli, e quindi è una qualità.",
		"Una fitta a un ginocchio ogni pochi passi. Lascio che sia lei a dettare l'andatura e fingo di passeggiare apposta.",
		"Le spalle si sono irrigidite a forma di zaino. A ogni cinghia che allento si raddrizzano un po' e protestano parecchio.",
	},
	["ifo.quest_complete.w20.stretch.006"] = {
		"Ogni panca di Ironforge è pietra massiccia. Bel lavoro. Il mio fondoschiena ha sporto reclamo allo scalpellino.",
		"Qui ogni sedile è scolpito nella montagna. La mia schiena vorrebbe scambiare due parole con chi ha deciso che i cuscini sono roba da elfi.",
	},
	["ifo.quest_complete.w20.stretch.007"] = {
		"volge il viso verso il calore della bocca di una forgia e se lo lascia entrare, gli occhi socchiusi, come un gatto accanto al focolare.",
		"si ferma davanti a una forgia aperta il tempo di scaldarsi le guance, poi riparte prima che il fabbro trovi un impiego per due mani inoperose.",
	},
	["ifo.quest_complete.w20.stretch.008"] = {
		"Ho la gola secca come polvere di forgia. Prima l'acqua, poi qualunque cosa abbia la schiuma.",
		"Ho quella sete tipica di Ironforge, quando il calore ti prosciuga senza che te ne accorga. Acqua. Poi vedrò.",
	},
	["ifo.quest_complete.w20.stretch.009"] = {
		"scioglie un nodo alla base del collo con due dita, fissando torvo il soffitto scolpito come se fosse colpa sua.",
		"si massaggia il collo indolenzito e strizza gli occhi verso la volta di roccia, che è lì da molto più tempo del dolore e sembra dispiacersene meno.",
	},
	["ifo.quest_complete.w20.stretch.010"] = {
		"Niente in mano, niente in sospeso. Le braccia oscillano mentre cammino, e già questo sembra una piccola vacanza.",
		"Mani vuote. Mi dondolano ai fianchi mentre cammino, sciocche come quelle di un bambino. Le lascio fare.",
	},
	["ifo.quest_complete.w20.stretch.011"] = {
		"Scusate lo sbadiglio. Non è per voi, è il caldo. Questa città ti rimbocca le coperte che tu lo voglia o no.",
		"Perdonate. Sbadiglio. È il caldo di queste sale: ti entra dentro come una seconda coperta.",
	},
	["ifo.quest_complete.w20.stretch.012"] = {
		"pesta una volta ogni stivale sulla pietra, per rimettere a posto i piedi, e riparte con un suono da piccolo tamburo.",
		"batte un tacco contro l'altro, scuote via quello che c'era dentro e prosegue col passo più leggero.",
	},
	["ifo.quest_complete.w20.stretch.013"] = {
		"Compro qualcosa di caldo avvolto nella carta e lo mangio in piedi sotto un portale, fuori dai piedi di tutti. Nessuna ricompensa ci si avvicina.",
		"Un pasticcio da un banco, troppo caldo da tenere in mano, mangiato lo stesso. La paga migliore dell'ora, e l'ho pagata io.",
	},
	["ifo.quest_complete.w20.stretch.014"] = {
		"Un momento: devo stiracchiarmi, e potrebbe essere rumoroso.",
		"Datemi un attimo per stirarmi. Dal collo ai talloni, ogni pezzo di me ha qualcosa da dire.",
	},
	["ifo.quest_complete.w20.stretch.015"] = {
		"C'è una stanchezza particolare che arriva dopo, non durante. Arriva adesso, mi si siede sulle spalle e chiede solo di essere portata fino a una panca.",
		"La stanchezza ha aspettato educatamente che la faccenda fosse chiusa. Adesso mi si arrampica sulle spalle come un bambino che è stato bravissimo e vorrebbe essere preso in braccio.",
	},
	["ifo.quest_complete.w20.stretch.016"] = {
		"Ah. Spalle giù, mento su. Avevo dimenticato di poter stare in piedi così.",
		"Ecco. La schiena è dritta come non lo era da un pezzo. Qualcuno prenda nota dell'evento.",
	},
	["ifo.quest_complete.w20.stretch.017"] = {
		"Le mani sanno di cuoio altrui e della pipa di qualcuno. Le laverò al primo bacile che trovo, e poi sapranno d'acqua di Ironforge, cioè vagamente di ferro.",
		"Al primo bacile che trovo mi lavo le mani. Qui l'acqua sa di ferro sia in bocca che al naso, il che mi sembra giusto.",
	},
	["ifo.quest_complete.w20.tally.001"] = {
		"si vede porgere tre moduli, una matita masticata e un fiume di ringraziamenti, e firma dove indica un ditino, poi lì, poi lì.",
		"firma un modulo, poi il suo gemello, poi una terza copia per un archivio di Tinker Town, mentre lo gnomo accanto sgrana ringraziamenti al galoppo.",
		"guarda un impiegato gnomo mescolare un fascio di carte, ringraziare quattro volte senza fermarsi, e spingere avanti una penna masticata fino a farla piatta in cima.",
	},
	["ifo.quest_complete.w20.tally.002"] = {
		"Una tacca su un bastone di conto, e il bastone riappeso al suo chiodo fra altri quaranta. Da qualche parte in quella fila c'è un segno che vuol dire me.",
		"Un colpo di coltello su un pezzo di legno, e il legno di nuovo al suo piolo. Mi hanno registrato come una cava conta i suoi carrelli.",
		"Incisa con un coltellino su un bastone di conto, la mia tacca, e il bastone riappeso al muro. I più vecchi di quella fila sono neri a forza d'essere maneggiati.",
	},
	["ifo.quest_complete.w20.tally.003"] = {
		"Lo gnomo ha annotato l'ora, il mio nome, lo stato dei miei stivali e, sospetto, il mio umore. Da qualche parte a Tinker Town c'è un fascicolo su di me più spesso del lavoro.",
		"Nome, data, numero di stivali. Lo gnomo voleva il numero di stivali. Non ho chiesto perché, e già me ne pento.",
		"In qualche cassetto di Tinker Town adesso c'è il mio nome, la data e un appunto sul fatto che mi agitavo. Lo gnomo ha annotato anche quello.",
	},
	["ifo.quest_complete.w20.tally.004"] = {
		"attende mentre la faccenda viene messa per iscritto con una grafia piccola e inclinata, la penna che si ferma solo per grattare l'orecchio di chi scrive.",
		"resta accanto mentre il lavoro viene registrato in un libro dagli angoli d'ottone, la riga chiusa sotto con il righello e un grugnito.",
	},
	["ifo.quest_complete.w20.tally.005"] = {
		"Una ricevuta per la paga, e adesso una ricevuta per la ricevuta. Ma certo. Dove firmo?",
		"Due copie? Due copie, naturalmente. Una per voi e una per chi controlla voi.",
		"Certo che c'è un modulo. C'è anche un modulo per il modulo? Mi dispiacerebbe saltarlo.",
	},
	["ifo.quest_complete.w20.tally.006"] = {
		"Niente carta, niente inchiostro: una riga di gesso su un nome scritto sulla lavagna. Un tratto, una piccola sbavatura sul taglio della mano, e la cosa è chiusa.",
		"Il lavoro, depennato col gesso su una lavagna accanto alla porta. Semplice. È stata pulita e riscritta tante volte che la pietra sotto è diventata pallida.",
		"Un tratto di gesso sul mio nome alla lavagna, poi un pollice passato sopra per sicurezza. Chiuso, nel modo più semplice che ci sia.",
	},
	["ifo.quest_complete.w20.tally.007"] = {
		"Qui? Ah, la riga sotto. E anche lì. Altri posti, già che ho la penna in mano?",
		"Casella sbagliata? È vero. Firmo quella giusta. E pure questa, a quanto pare.",
	},
	["ifo.quest_complete.w20.tally.008"] = {
		"Chi ha raccolto il mio resoconto ha smesso due volte di scrivere per schizzare qualcosa a margine, senza voler dire cosa. Darei una bella fetta della paga per vedere quella pagina.",
		"A metà del mio racconto la penna se n'è andata per conto suo in un disegnino a margine. Non mi è stato permesso vederlo. L'Explorers' League tiene stretti i suoi scarabocchi.",
		"Lo studioso scriveva più svelto di quanto parlassi io, e due volte ha disegnato qualcosa a margine, girando la pagina quando ho allungato il collo per guardare.",
	},
	["ifo.quest_complete.w20.tally.009"] = {
		"Più piano? Certo. E l'Explorers' League lo vuole anche a margine?",
		"Ripeterlo per il verbale? L'ho detto tre volte. Il verbale dev'essere parecchio duro d'orecchi.",
		"Ogni dettaglio, certo. Anche quelli noiosi. Soprattutto quelli, mi pare di capire.",
	},
	["ifo.quest_complete.w20.tally.010"] = {
		"guarda uno gnomo timbrare il foglio con un congegno d'ottone che fa ka-ciunk e poi, dopo una pausa, din. Il din, a quanto pare, è la parte importante.",
		"sobbalza appena quando un timbratore d'ottone sigilla le carte con un tonfo, un ronzio e un campanellino, fra la gioia evidente dello gnomo.",
		"sente chiudere le carte con un timbro, un clangore e un campanellino d'ottone, e lo gnomo alza gli occhi come se aspettasse un applauso.",
	},
	["ifo.quest_complete.w20.tally.011"] = {
		"Ho visto la faccenda finire nel libro, il libro su uno scaffale e lo scaffale, ci scommetterei, in un elenco di scaffali.",
		"Nel registro, il registro sulla rastrelliera, la rastrelliera nell'indice delle rastrelliere. La mia commissione ha ormai più scartoffie di certi regni.",
		"Libro, scaffale, elenco degli scaffali. Se qualcuno vorrà mai sapere cosa ho fatto, è tutto lì. Gli serviranno solo uno gnomo e parecchio tempo.",
	},
	["ifo.quest_complete.w20.tally.012"] = {
		"Moduli in triplice copia, un timbro e un controtimbro. Gnomeregan andava avanti a scartoffie. È un conforto piccolo e ridicolo che le scartoffie si siano salvate, quando tanto altro no.",
		"Gnomeregan archiviava tutto, e un impiegato di casa continua ad archiviare tutto a Tinker Town. I moduli ce l'hanno fatta. Lo prendo come un segno.",
	},
	["ifo.quest_complete.w20.tally.013"] = {
		"Il mio nome, in pesanti maiuscole naniche, premuto così forte sulla pagina che si vede dal retro. Ironforge scrive come se l'inchiostro si potesse scalpellare.",
		"La penna è entrata nella carta come uno scalpello nell'ardesia. Quel che ho fatto è lì adesso, in lettere pensate per sopravvivere a un crollo.",
		"Sulla carta il mio nome è finito in lettere che uno scalpellino approverebbe. Qui nessuno scrive alla leggera: le parole si sentono attraverso il foglio.",
	},
	["ifo.quest_complete.w20.tally.014"] = {
		"osserva l'inchiostro asciugato con un pizzico di sabbia fine presa da una scatoletta, i granelli scossi di nuovo dentro perché non se ne sprechi uno.",
		"vede la riga fresca asciugata con la sabbia, e la sabbia rimessa con cura nella sua scatola, granello per granello se solo si potesse.",
	},
	["ifo.quest_complete.w20.tally.015"] = {
		"Scrivetemi come vi pare. Basta che accanto ci scriviate la paga.",
		"Il mio nome storto, se proprio dovete. La cifra, però, la voglio dritta.",
	},
	["ifo.quest_complete.w20.tally.016"] = {
		"Piano, piano, ho capito, la gratitudine è tanta. Dove firmo, così potete fermarvi?",
		"Grazie a voi. E ancora grazie. Tre volte bastano, davvero, e bastano anche tre moduli.",
	},
	["ifo.quest_complete.w20.worth.001"] = {
		"Le monete sono la parte più piccola di quello che è passato di mano. Quello che ho guadagnato davvero è un'idea nella testa di qualcuno: che le cose, io, le porto a termine.",
		"La borsa è solo la ricevuta. La paga vera fa meno rumore: la prossima volta che in città si farà il mio nome, nessuno aggrotterà la fronte.",
	},
	["ifo.quest_complete.w20.worth.002"] = {
		"si ferma accanto a un tratto di muro dove un segno di scalpellino è inciso in basso, mezzo nascosto, fatto per nessuno, e lo guarda più a lungo dei fregi lì sopra.",
		"nota un piccolo segno di scalpellino inciso dove nessun visitatore guarderebbe mai, lo sfiora con due dita e prosegue.",
	},
	["ifo.quest_complete.w20.worth.003"] = {
		"Prima che qualcuno potesse abitare queste sale, qualcuno ha dovuto portarne fuori la montagna a carriolate. Quasi tutto il lavoro di questa città è stato togliere. Un po' del mio, pure.",
		"Ogni sala, qui, è cominciata come roccia che qualcuno ha portato via. Ironforge è nata sgombrando quello che ingombrava, e adesso il mestiere lo capisco un po' meglio.",
	},
	["ifo.quest_complete.w20.worth.004"] = {
		"In una città di maestri fabbri, «può andare» è un insulto. Quindi: è fatto come si deve.",
		"Non dite «può bastare». Non sotto questa montagna. Dite «reggerà».",
		"Da queste parti un «abbastanza bene» ti vale un'occhiataccia. Io puntavo al cenno del capo.",
	},
	["ifo.quest_complete.w20.worth.005"] = {
		"Troggs nelle gallerie profonde, i Dark Iron a sud, e sotto entrambi cose peggiori. Una montagna piena di ferro e d'oro attira nemici come una lanterna le falene, e ogni commissione che manda avanti la città li tiene un po' più lontani. Anche la mia.",
		"Tutto ciò che a Ironforge vale qualcosa, per qualcuno là fuori vale la pena di rubarlo. Per questo il lavoro non manca mai. Non mi dispiace essere una delle ragioni per cui resta tutto al suo posto.",
	},
	["ifo.quest_complete.w20.worth.006"] = {
		"osserva poco lontano un maestro prendere un pezzo finito dalle mani di un apprendista, girarlo una volta, posarlo sul mucchio degli scarti senza una parola e tendere la mano per il successivo.",
		"vede un mastro fabbro gettare tra gli scarti il lavoro di un apprendista dopo un'occhiata sola, e lancia, per un attimo, un'occhiata al proprio zaino.",
	},
	["ifo.quest_complete.w20.worth.007"] = {
		"Ora che la mia parte è fatta, qualcuno in questa città può andare avanti con la sua. Un posto così funziona in questo modo: un paio di mani che ne libera un altro.",
		"Passato di mano. Adesso qualcun altro può cominciare. Ironforge è una lunga catena di gente che aspetta qualcun altro, e io ho appena smesso di essere l'anello che tutti aspettavano.",
	},
	["ifo.quest_complete.w20.worth.008"] = {
		"Durerà mille anni, come tutto il resto in questa città? No. Durerà fino a cena? Molto probabile.",
		"Non è fatto per sopravvivere alla montagna, lo ammetto. È fatto per arrivare a fine settimana, che per me è già un bel traguardo.",
	},
	["ifo.quest_complete.w20.worth.009"] = {
		"Una città così antica ha mille piccole cose che vanno storte tutte insieme, e sarà sempre così. Io ne ho rimessa a posto una. Le altre novecentonovantanove non le tolgono valore.",
		"Una città scavata così a fondo non esaurisce mai le cose da aggiustare. Io ne ho aggiustata una. La montagna non se ne accorgerà; chi me l'aveva chiesto, sì.",
	},
	["ifo.quest_complete.w20.worth.010"] = {
		"si accorge che chi ha affidato l'incarico si sta chinando verso un vicino, il pollice puntato dalla sua parte e qualche parola troppo bassa per capirla.",
		"si vede indicare dall'altra parte della sala, un attimo, con un dito alzato e un commento che il frastuono si porta via prima che arrivi.",
		"coglie qualcuno che parla di {g:lui|lei} a un altro: un cenno nella sua direzione, una frase breve, un secondo cenno.",
	},
	["ifo.quest_complete.w20.worth.011"] = {
		"Lavoro piccolo. Ma questa città è stata ricavata da una montagna proprio a forza di lavori piccoli.",
		"Piccoli incarichi, uno dopo l'altro. È l'unico modo in cui qualcuno abbia mai tirato fuori una sala dalla roccia viva.",
		"Non disprezzate le piccole cose in un posto scolpito a colpi di scalpello.",
	},
	["ifo.quest_complete.w20.worth.012"] = {
		"Il re sul suo trono non ne sentirà mai parlare. Meglio così. Magni ha già abbastanza pesi, e il lavoro silenzioso di una città deve restare sotto il pavimento.",
		"Di questa faccenda al trono non arriverà neanche un sussurro. Non deve. I re poggiano su un sacco di lavoro che non vedono, ed è il pavimento che fa il suo mestiere.",
	},
	["ifo.quest_complete.w20.worth.013"] = {
		"si fa da parte per uno gnomo che passa di corsa con un marchingegno mezzo montato, e lo segue con lo sguardo come per confrontarlo con il proprio lavoro.",
		"lascia passare un nano con in spalla una grata appena forgiata, e non la perde di vista finché non sparisce lungo l'anello della città.",
	},
	["ifo.quest_complete.w20.worth.014"] = {
		"Metà dell'acciaio che l'Alleanza porta in campo è stato colato sotto questa montagna. Fare la mia parte per la città che arma tutti gli altri è come oliare l'ingranaggio principale dell'intera macchina.",
		"Quando l'Alleanza va in guerra, ci va con armature e fucili di Ironforge. Lavorare per questa città è badare alla fucina di ogni esercito dalla parte che ho scelto.",
	},
	["ifo.quest_complete.w20.worth.015"] = {
		"Tenete il grazie per il prossimo. Vi servirà più che a me.",
		"Niente discorsi, per favore. La prossima volta chiedete prima a me, e basta.",
		"Se volete ringraziarmi, la prossima volta chiamate me prima di chiunque altro.",
	},
	["ifo.quest_complete.w20.worth.016"] = {
		"La pietra di questa città l'hanno lavorata mani che non ci sono più da un pezzo, e continua a tenere fuori l'inverno. Qui la misura è questa: non quanto rumore ha fatto il lavoro, ma per quanto tempo continua ad aiutare.",
		"Ironforge giudica il lavoro come giudica la pietra: da quello che regge ancora quando chi l'ha fatto è dimenticato. Il mio non durerà tanto. Non serve, per essere lavoro onesto.",
	},
	["ifo.quest_complete.w20.worth.017"] = {
		"guarda una fila di montanari sfilare verso il portone col fucile in spalla, e li segue con lo sguardo finché la curva della sala non li nasconde.",
		"si fa da parte per una pattuglia della Guardia di Ironforge in uscita, il tonfo degli stivali che si allontana lungo la sala, e guarda andare via l'ultimo.",
		"lascia passare un gruppo di nani in armatura diretti al portone, e ascolta il tintinnio delle loro piastre perdersi in lontananza.",
	},
	["ifo.quest_complete.w20.worth.018"] = {
		"si sente chiedere da uno gnomo di passaggio se il lavoro avesse a che fare con Gnomeregan, e vede quel viso acceso spegnersi e riaccendersi, tutto in un attimo.",
		"risponde con un cenno di diniego alla domanda impaziente di uno gnomo: no, Gnomeregan non c'entra. Lo gnomo annuisce, per niente sorpreso, e se ne va di fretta, sperando ancora.",
	},
	["ifo.quest_complete.w20.worth.019"] = {
		"Qualcuno vada a dire ai Dark Iron che questa montagna è appena diventata un po' più dura da spaccare.",
		"Fate arrivare la voce fino a Blackrock: Ironforge tiene. Un po' meglio di prima.",
		"Se i Dark Iron stanno origliando dalle crepe: vi servirà uno scalpello più grosso.",
	},
	["ifo.quest_complete.w20.worth.020"] = {
		"Un giorno gli gnomi riavranno la loro città. Contate anche questo, per quanto piccolo.",
		"Mettetelo sul conto degli gnomi, se ne esiste uno. Ogni briciola dovrebbe servire a Gnomeregan.",
		"Esiste di sicuro un conto di quanto servirà per riprendersi Gnomeregan. Aggiungeteci questo.",
	},
	["ifo.quest_complete.w20.worth.021"] = {
		"Ecco. Un motivo in più per cui i troggs restino al piano di sotto.",
		"Fatto. Che i troggs prendano nota e se ne stiano in cantina.",
		"Questo dovrebbe dare ai troggs qualcosa su cui tenere il broncio.",
	},
	["ifo.quest_complete.w20.worth.022"] = {
		"Questa città misura tutto: il minerale a peso, la birra a boccali, i rancori a generazioni. Non ho idea su quale bilancia mettere questo. Forse è proprio questo a renderlo mio.",
		"Ironforge ha una misura per ogni cosa, tranne che per questa. Il minerale ha le sue bilance, la stout i suoi boccali, le faide i loro secoli. Il mio piccolo lavoro non entra in nessuna, e mi va bene così.",
	},
]==])
