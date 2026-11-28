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
	["thb.greet.w02.01"] = {
		"Salute. Quassù il vento è forte: tieniti al centro dei ponti.",
		"Ben trovati quassù, molto sopra l'erba.",
	},
	["thb.muse.w02.01"] = {
		"Pelli tese sui telai in ogni angolo della rupe, ad asciugare al vento. Niente di ciò che i tauren prendono dalla pianura va sprecato.",
		"Una conciatrice siede con una pelle sulle ginocchia e lavora l'ago, lenta e sicura. L'intera rupe sembra andare al ritmo delle sue mani.",
	},
	["thb.muse.w02.02"] = {
		"osserva un uccello della pianura sospeso immobile sulla corrente che sale lungo la rupe, all'altezza dei suoi occhi.",
		"vede una viverna virare attorno alla torre, molto più in basso: strano, guardarla dall'alto.",
		"nota un falco che cavalca il vento lungo la parete, e si rende conto di guardargli la schiena dall'alto.",
	},
	["thb.muse.w02.03"] = {
		"Magatha Grimtotem ha la sua tenda su Elder Rise, in mezzo alla gente di Cairne. I tauren pronunciano il suo nome con cortesia, e di rado.",
		"Su Elder Rise vive un'anziana dei Grimtotem, trattata con grande cortesia e pochissimo calore. Mi piacerebbe conoscere quella storia.",
	},
	["thb.muse.w02.04"] = {
		"Qualcuno suona il tamburo sulla rupe accanto. I miei piedi hanno cominciato a tenere il tempo senza chiedermi il permesso.",
		"Tamburi dall'altra parte del ponte. Non vedo chi suoni, ma l'intera rupe sembra conoscere il ritmo.",
	},
	["thb.quest_complete.w02.01"] = {
		"È fatto. Che il tuo fuoco resti acceso e i tuoi kodo ben pasciuti.",
		"Finito, e volentieri. La rupe è stata una buona padrona di casa.",
	},
	["thb.quest_complete.w02.02"] = {
		"Fatto. Il grazie è arrivato con una voce così profonda che pareva salire dalle assi del ponte.",
		"Finito. I tauren ringraziano come se avessero tutto il pomeriggio per farlo, e ogni loro parola lenta è sincera.",
	},
	["thb.weather_change.w02.01"] = {
		"guarda il cielo rasserenarsi su Mulgore dal bordo della rupe, mentre le ombre delle nuvole scivolano via dall'erba, molto più in basso.",
		"sente il vento cambiare e vede la foschia sollevarsi dalla pianura, finché le mese lontane non si stagliano nette contro un azzurro pulito.",
	},
	["thb.dawn.w05.001"] = {
		"guarda l'alba sorgere sui Barrens a est, con la luce che corre sull'erba di Mulgore fino ai piedi della rupe.",
		"vede la prima luce dell'alba prendere la cima dei totem mentre i ponti sotto sono ancora grigi: la città si sveglia dall'alto in basso.",
		"resta sull'orlo mentre l'alba si allarga sulla pianura, e sull'altura accanto qualcuno accende il fuoco per il primo stufato del giorno.",
	},
	["thb.dusk.w05.001"] = {
		"Il crepuscolo su Mulgore. L'erba diventa oro, poi rossa, poi grigia, e la rupe accende i suoi fuochi un'altura dopo l'altra.",
		"Al crepuscolo il sole cala dietro le colline a ovest e la città intera sembra rallentare con lui. Perfino i ponti scricchiolano più piano.",
		"Crepuscolo. Laggiù le mandrie si avviano sull'erba verso i luoghi dove passano la notte, e quassù cominciano i tamburi, bassi e senza fretta.",
	},
	["thb.farewell.w05.001"] = {
		"Va' in pace, e resta sulla terra ferma quando puoi.",
		"Addio. Che i ponti ti reggano.",
		"Alla prossima volta che le nostre strade si incrociano, sulla rupe o sotto.",
	},
	["thb.farewell.w05.002"] = {
		"Io vado. Scendi con l'ascensore: è più veloce dell'altro modo.",
		"Addio! Se più tardi mi vedi su un ponte, non salutarmi. Mi serviranno tutte e due le mani.",
		"Buon viaggio. Occhio al bordo, uscendo: è dappertutto.",
	},
	["thb.farewell.w05.003"] = {
		"Cammina con la Madre Terra, ovunque ti porti la strada.",
		"Che la terra ti sia gentile sotto i piedi, finché la strada non ci farà incontrare di nuovo.",
	},
	["thb.greet.w05.001"] = {
		"Salve! Che bello incontrare qualcuno su quest'altura che non sia un totem.",
		"Ah, un volto amico. Vieni, c'è posto accanto al fuoco.",
	},
	["thb.greet.w05.002"] = {
		"Pace a te, e alla tua strada.",
		"Fermati un po'. La rupe è abbastanza grande per noi due.",
	},
	["thb.greet.w05.003"] = {
		"Salve! Stringimi la mano in fretta: con l'altra mi tengo ancora alla corda del ponte.",
		"Ciao. Non badare a me, sto ancora recuperando le gambe dopo l'ascensore.",
	},
	["thb.jest.w05.001"] = {
		"Perché a Thunder Bluff non ci sono ladri? Prova a scappare con la refurtiva su un ponte di corda.",
		"Ho chiesto a un tauren quanto fosse lontana la pianura. Risposta: un passo. Ho smesso di chiedere.",
		"A Thunder Bluff gli ascensori ti portano su, i ponti ti portano di là e la viverna ti butta giù dal bordo. Per il resto, si cammina con molta attenzione.",
	},
	["thb.journey.w05.001"] = {
		"vira oltre il bordo della rupe, e i grandi ascensori laggiù si riducono a due linee chiare che salgono dalla prateria lungo la parete.",
		"supera l'orlo della mesa, e di colpo il suolo precipita lontanissimo, fino alla pianura verde.",
		"si allontana dalla rupe, e la pianura di Mulgore si apre da ogni lato, attraversata dalle lente strisce brune delle mandrie.",
	},
	["thb.journey.w05.002"] = {
		"Da ogni altra torre la bestia doveva salire. Qui si sporge in avanti e basta, e il suolo la lascia andare.",
		"Quassù la viverna batte appena le ali. Si lascia cadere dal bordo con me in groppa e la chiama partenza.",
	},
	["thb.journey.w05.003"] = {
		"si sistema in sella mentre il maestro delle viverne dice un'ultima parola all'orecchio della bestia, e poi la piattaforma non c'è più.",
		"stringe la sella mentre la bestia si accuccia sul bordo della torre, si raccoglie e si getta con il suo carico nell'aria aperta.",
	},
	["thb.journey.w05.004"] = {
		"Da qui la direzione facile è giù. Andiamo di lato, per favore.",
		"Si parte. Occhio ai totem, uscendo.",
		"Addio, rupe. Tienimi in caldo lo stufato.",
	},
	["thb.journey.w05.005"] = {
		"Dall'alto le tre alture minori sembrano inginocchiate attorno a quella grande. Dai ponti non me n'ero mai {g:accorto|accorta}.",
		"Visti dall'alto, i ponti sono sottili come punti di cucitura che tengono insieme la città. È un miracolo che lassù qualcosa resti al suo posto.",
	},
	["thb.journey.w05.006"] = {
		"si alza in volo nell'alba, mentre laggiù l'erba di Mulgore passa dal grigio al verde in una sola lunga onda.",
		"lascia la rupe all'alba, con gli avvallamenti della pianura ancora pieni d'ombra azzurra.",
	},
	["thb.journey.w05.007"] = {
		"Una partenza notturna. La rupe resta indietro, e presto i suoi fuochi sono solo altre stelle, un po' più basse.",
		"Fuori nella notte. La pianura non la vedo affatto, solo la sagoma del collo della viverna contro le stelle.",
	},
	["thb.journey.w05.008"] = {
		"Thunder Bluff saprà di questa commissione quando sarà finita. Vola.",
		"Su, e al lavoro. La rupe può fare a meno di me per un po'.",
	},
	["thb.journey.w05.009"] = {
		"si allontana sfiorando la cima di un alto totem, abbastanza vicino da guardare negli occhi il volto intagliato, che non pare affatto contento.",
		"supera il bordo della torre con uno scossone, e sull'altura vicina una fila di pelli stese ad asciugare sventola un saluto.",
	},
	["thb.journey.w05.010"] = {
		"La rupe ti fa guardare a lungo il mondo prima che tu ci entri. Da quassù ogni strada laggiù sembra corta.",
		"Da quest'altezza tutte le strade che escono da Mulgore sembrano facili. Non lo sono. Ma fa bene vederle stese lì come una promessa.",
	},
	["thb.journey.w05.011"] = {
		"si alza in volo in una pioggia grigia, e la rupe si confonde alle spalle finché si distinguono solo i totem più vicini.",
		"lascia la torre con la pioggia che scorre dalle ali della viverna, e la pianura sotto diventata scura e argentea.",
	},
	["thb.journey.w05.012"] = {
		"L'ultimo sguardo di un ospite alla città dei tauren: calma, alta, e senza fretta né di vedermi partire né di trattenermi.",
		"Ogni visita quassù mi rende un po' meno {g:estraneo|estranea}. È più di quanto diano molte città.",
	},
	["thb.journey.w05.013"] = {
		"arriva basso sulla pianura e guarda la rupe crescere davanti, a picco su ogni lato, finché la bestia sale e si posa in cima.",
		"compie un ampio giro attorno all'altura centrale, oltre i ponti e i totem, prima di scendere sulla piattaforma.",
		"atterra sulla torre e scende di sella mentre la viverna ripiega le grandi ali con uno scricchiolio di cuoio e uno sbuffo.",
	},
	["thb.journey.w05.014"] = {
		"A terra sulla rupe, e la prima cosa che noto è il silenzio. Dopo il fragore del volo, anche un palo di tenda che scricchiola sembra una notizia.",
		"Giù dalla sella, finalmente. Dopo la furia del volo, perfino i ponti scricchiolano con garbo.",
	},
	["thb.journey.w05.015"] = {
		"Bell'atterraggio. Ora nessuno faccia movimenti bruschi: da qualunque punto, qui, la caduta è lunga.",
		"Discesa riuscita. O salita, chissà. In questa città non si capisce mai.",
		"Grazie del passaggio. Il panorama tienilo pure tu, io ne ho avuto abbastanza.",
	},
	["thb.journey.w05.016"] = {
		"scende dalla notte sulla torre, dove una lanterna oscilla sul suo gancio e il maestro delle viverne aspetta sotto una coperta.",
		"scende nel buio verso i fuochi sparsi delle tende della città, le sole luci per leghe intorno.",
	},
	["thb.journey.w05.017"] = {
		"A terra all'alba. La rupe dorme ancora a metà, e l'unico rumore è un kodo che si lamenta, molto più in basso.",
		"Arrivo all'alba. Il fumo dei primi fuochi sale dritto, e tutta la rupe sa di colazione.",
	},
	["thb.journey.w05.018"] = {
		"scende alla fine del lungo volo e resta un momento con una mano sul fianco della bestia, aspettando che la rupe smetta di muoversi.",
		"scivola giù dalla sella dopo il lungo volo, e i primi passi sulla piattaforma sono quelli prudenti di chi cammina su un ponte di corda.",
	},
	["thb.journey.w05.019"] = {
		"Il volo è durato abbastanza da farmi conoscere ogni osso della schiena della viverna. Thunder Bluff, potrei baciare le tue assi.",
		"Volo lungo, male dappertutto. Se qualcuno mi cerca, sono {g:disteso|distesa} nella tenda più vicina.",
	},
	["thb.journey.w05.020"] = {
		"Che bello essere di nuovo in alto. Sopra la pianura l'aria ha un sapore più pulito.",
		"Eccoci. In questa città nessuno urla; forse riuscirò finalmente a sentire i miei pensieri.",
	},
	["thb.journey.w05.021"] = {
		"atterra mentre, molto più in basso, una fila di kodo arranca lungo la strada verso gli ascensori, piccoli come scarabei visti da quassù.",
		"atterra e si volta a guardare la rotta del volo, sull'erba dove le mandrie vagano come ombre di nuvole.",
	},
	["thb.journey.w05.022"] = {
		"Giù dal cielo, e la rupe sembra quasi un pezzo di lui. Non so se sono davvero {g:atterrato|atterrata}.",
		"Ho i piedi sulla piattaforma, ma la testa è ancora lassù con i falchi. Scenderà quando sarà pronta.",
	},
	["thb.journey.w05.023"] = {
		"atterra sotto la pioggia, scivolando un poco sulle assi bagnate della piattaforma, e corre al riparo della tenda più vicina.",
		"scende attraverso la pioggia, con la rupe solo una sagoma scura nel grigio fino all'ultimo momento.",
	},
	["thb.journey.w05.024"] = {
		"Grazie, bestia. La prossima volta, un po' meno picchiata alla fine.",
		"Piano, piano. Siamo a terra. Puoi smettere di esibirti per il maestro.",
	},
	["thb.journey.w05.025"] = {
		"Atterraggio in pieno sole. Le tende di pelle sono quasi bianche di luce, e ogni totem stende un'ombra netta sull'altura.",
		"A terra sotto un sole alto. Tutta la rupe sa di pelle calda e polvere, e i ponti scricchiolano nel caldo.",
	},
	["thb.journey.w05.026"] = {
		"consegna le redini al maestro delle viverne, che passa un palmo lungo l'ala della bestia come per cercare ogni segno di fatica.",
		"scende di sella mentre il maestro esamina gli artigli e le ali della viverna, annuendo piano, come se ci leggesse il volo.",
	},
	["thb.memory_return.w05.001"] = {
		"Ancora la rupe. L'ultima volta me ne sono {g:andato|andata} in condizioni peggiori di come ero {g:arrivato|arrivata}. Stavolta voglio fare il contrario.",
		"Quassù un'altra volta. L'ultima visita è finita male; la pietra non se lo ricorda, e io cercherò di fare lo stesso.",
	},
	["thb.memory_return.w05.002"] = {
		"È passato un po' di tempo. I totem non sono cambiati, la pianura neppure. Solo i volti alla locanda sono un po' diversi.",
		"Settimane lontano, e la rupe è esattamente come l'avevo lasciata. Le mese ci riescono bene. Le persone, meno.",
		"È passato così tanto dall'ultima volta che il cigolio dell'ascensore sembra quasi nuovo. Quasi.",
	},
	["thb.muse.w05.001"] = {
		"Panca tauren: i piedi mi restano a penzoloni come a un bambino seduto alla tavola dei grandi.",
		"Qui i boccali sono secchi col manico. Non mi lamento.",
		"Ogni porta di Thunder Bluff è fatta per le corna. Nella maggior parte ci passerei con una scala in spalla.",
	},
	["thb.muse.w05.002"] = {
		"Molto più in basso, una mandria di kodo attraversa Mulgore così lentamente che potrebbe essere la terra stessa a spostarsi. Da quassù sembrano macigni che hanno deciso di mettersi in viaggio.",
		"Dal bordo dell'altura posso contare i kodo nella pianura: sagome grigie nell'erba che brucano verso ovest senza un pensiero al mondo.",
		"Una mandria che attraversa Mulgore si lascia dietro una scia più scura nell'erba, lenta come una riga tracciata da una mano attenta.",
	},
	["thb.muse.w05.003"] = {
		"scorge laggiù uno stormo di grossi uccelli corridori che sfreccia nell'erba senza un motivo evidente, per poi fermarsi di colpo, come se avesse dimenticato perché.",
		"segue le figurine degli uccelli corridori che si sparpagliano per Mulgore, buffi perfino da questa distanza.",
		"ride sottovoce guardando laggiù due uccelli corridori che si rincorrono in tondo attorno a un albero solitario.",
	},
	["thb.muse.w05.004"] = {
		"I druidi tauren di Elder Rise hanno imparato la loro arte dagli elfi della notte, e ora i due popoli stanno ai lati opposti di una guerra. Su quest'altura nessuno sembra trovarci gusto.",
		"Hamuul Runetotem guida i druidi di Elder Rise. In mezzo ai suoi insegnamenti ci sono lezioni impartite per la prima volta da mani kaldorei, e a lui non sembra dispiacere ammetterlo.",
	},
	["thb.muse.w05.005"] = {
		"Gli sciamani di Spirit Rise non comandano gli elementi: chiedono. A vederne uno inchinarsi davanti a un fuocherello prima di alimentarlo, ripenso a tutti i fuochi da campo che ho spento senza una parola.",
		"Su Spirit Rise uno sciamano sta parlando a una pietra, sottovoce, come si parla a un anziano. La pietra, per quanto posso capire, ascolta.",
		"Su Spirit Rise perfino i fuochi sembrano ardere con più educazione, come se sapessero che qualcuno sta parlando con loro.",
	},
	["thb.muse.w05.006"] = {
		"I cacciatori di Hunter Rise parlano degli animali che hanno ucciso come si parla di ospiti che ti hanno fatto un grande onore. Qui non c'è un solo trofeo messo in mostra per vanto.",
		"Su Hunter Rise insegnano che si prende ciò che serve e si ringrazia ciò che si prende. Le frecce qui vengono impennate con calma, come se ognuna fosse una promessa.",
		"Hunter Rise sa di colla per impennature e di pelle fresca. Lassù tutti hanno lo sguardo quieto di chi per mestiere osserva.",
	},
	["thb.muse.w05.007"] = {
		"Cairne Bloodhoof è vecchio, ed è ancora la schiena più larga della città. Gli anni gli hanno tolto il colore, non la portata del braccio.",
		"È stato Cairne a guidare le tribù fin qui, alla fine di un lungo vagare braccato. Ogni tenda su queste mese è, in un certo senso, opera sua.",
		"Quando Cairne attraversa la città, i discorsi non si fermano: rallentano soltanto, come l'erba che si piega al passaggio di un grosso animale.",
	},
	["thb.muse.w05.008"] = {
		"Quando i centauri davano la caccia ai tauren per le pianure, furono gli orchi a schierarsi con loro. I tauren hanno una memoria lunga per una gentilezza così.",
		"Qui il debito dell'Orda va in tutte e due le direzioni: gli orchi di Thrall hanno aiutato i tauren a conquistare Mulgore, e i tauren hanno dato all'Orda un cuore che non è fatto solo di fuoco.",
		"Orchi e tauren: un popolo tutto fuoco, l'altro tutto pazienza. All'Orda servivano entrambi, e pare che Thrall lo sapesse.",
	},
	["thb.muse.w05.009"] = {
		"È stato Cairne a perorare l'ingresso dei Reietti nell'Orda. Vedendo un apotecario non morto comprare erbe da un tauren su quest'altura, capisco in cosa sperava.",
		"Non morti a Thunder Bluff, che contrattano con garbo con i vivi. Un tempo il vecchio capo ha parlato in loro favore, ed ecco cosa ne è venuto: uno scambio, un cenno, un po' meno paura.",
	},
	["thb.muse.w05.010"] = {
		"Un orco ha appena provato a mettere fretta a un mercante tauren. Il tauren ha finito la frase lo stesso. Tutta quanta.",
		"Ho visto un troll e un tauren contrattare. Uno parla il doppio più veloce; l'altro vince il doppio delle volte.",
		"Un goblin ha cercato di vendere a un tauren qualcosa di urgentissimo. Il tauren ci sta ancora pensando. Il goblin sembra invecchiato.",
	},
	["thb.muse.w05.011"] = {
		"Laggiù in Mulgore la Venture Company sta rosicchiando le colline. Da quassù le macchine non si vedono, solo una macchia di fumo dove non dovrebbe essercene.",
		"I goblin scavano e segano ai margini della pianura come se la terra fosse una dispensa lasciata aperta. I tauren di questa rupe guardano con la pazienza di chi sceglie il momento.",
		"Ogni albero che i goblin abbattono in Mulgore, i tauren sembrano contarlo. Non vorrei trovarmi nei paraggi quando finiranno la somma.",
	},
	["thb.muse.w05.012"] = {
		"guarda un intagliatore tauren staccare un solo ricciolo sottile da un alto tronco, osservarlo a lungo, e poi staccarne un altro.",
		"si ferma accanto a un totem intagliato a metà, dove un volto comincia appena a emergere dal legno: un occhio aperto, l'altro ancora addormentato nelle venature.",
		"passa una mano sulla base di un totem, dove il legno è stato levigato e scurito da innumerevoli palmi di passaggio.",
	},
	["thb.muse.w05.013"] = {
		"guarda una tauren intrecciare una fila di perline di legno nella criniera senza specchio, rapida e sicura, chiacchierando intanto con una vicina.",
		"nota due vecchi tauren seduti ginocchio contro ginocchio: uno intreccia con pazienza delle piume nella criniera dell'altro, mentre entrambi guardano la pianura.",
		"sorride a un giovane tauren che cerca di intrecciarsi una piuma nella criniera e, a giudicare dal risultato, se la sta infilando soprattutto in un orecchio.",
	},
	["thb.muse.w05.014"] = {
		"Zoccoli sulle assi dei ponti, tutto il giorno, pesanti e regolari. La città ha un passo tutto suo, ed è un passo lento.",
		"Che un tauren ti sta arrivando alle spalle lo capisci molto prima di vederlo: le assi del ponte cominciano a inclinarsi.",
		"I ponti rispondono a ogni zoccolo con uno scricchiolio, così tutta la rupe parla a forza di passi.",
	},
	["thb.muse.w05.015"] = {
		"I tauren parlano della Madre Terra come i contadini parlano del suolo: con rispetto, senza cerimonie, e come se lei potesse sentire.",
		"Perfino i mercanti qui rivolgono qualche parola alla Madre Terra prima di aprire la merce. Nessuno ne fa uno spettacolo. Fa parte del lavoro e basta.",
		"Su queste mese la terra non è uno sfondo. Ogni tauren che incrocio sembra in confidenza con lei.",
	},
	["thb.muse.w05.016"] = {
		"I tauren chiamano il sole uno degli occhi della Madre Terra. Quassù, senza niente fra me e il cielo, ci si sente davvero osservati.",
		"I tauren dicono che di giorno la Madre Terra tiene un occhio sempre aperto. In cima alla rupe, a mezzogiorno, ci credo.",
		"Luce di mezzogiorno sulla rupe, senza niente che la addolcisca. I tauren ci stanno in mezzo senza strizzare gli occhi, come se essere guardati dal cielo fosse una cosa piacevole.",
	},
	["thb.muse.w05.017"] = {
		"Di notte, dicono i tauren, la Madre Terra veglia con l'occhio più gentile. La luna sta sospesa sopra Mulgore, e tutta la pianura le giace sotto come una mandria addormentata.",
		"La luna sopra le mese, pallida e paziente. Se è un occhio, come dicono i tauren, è un occhio che ha visto parecchio e perdonato quasi tutto.",
	},
	["thb.muse.w05.018"] = {
		"guarda la prima luce colpire la cima delle mese mentre la pianura laggiù è ancora immersa in un'ombra azzurra, come se la città si fosse svegliata prima del mondo.",
		"resta sul bordo dell'altura mentre l'alba risale le pareti di roccia, uno strato di pietra rossa dopo l'altro che si accende come brace rimestata.",
		"vede i tetti di pelle passare dal grigio al rosa all'oro man mano che il mattino li raggiunge, un'altura dopo l'altra.",
	},
	["thb.muse.w05.019"] = {
		"Al crepuscolo le ombre delle rupi si allungano su Mulgore per miglia, lunghe dita scure posate sull'erba. La pianura sembra piegarsi verso la notte.",
		"La luce si fa d'oro, poi di rame, poi grigia, e le mandrie laggiù svaniscono prima delle colline. Sulla pianura il crepuscolo se la prende comoda, e anch'io.",
		"Il crepuscolo dà alle pareti il colore delle braci. Su ogni altura si accendono i fuochi, come se la rupe avesse deciso di tenersi il tramonto.",
	},
	["thb.muse.w05.020"] = {
		"Pioggia su Thunder Bluff, e tutta la città sa di pelle bagnata e terra bagnata. Da qualche parte un kodo se la sta godendo. Nessun altro.",
		"Assi fradice, tende che gocciolano, una tauren inzuppata che si scrolla la criniera come un cane dopo il bagno. Con la pioggia, quassù, sembrano tutti un po' meno solenni.",
		"La pioggia trova ogni buco di ogni tetto di pelle, e sotto ciascuno un tauren mette una ciotola senza neanche alzare gli occhi.",
	},
	["thb.muse.w05.021"] = {
		"Un temporale su Mulgore, i fulmini che camminano sulla pianura all'altezza degli occhi, e il tuono che risale le pareti. Ora capisco il nome.",
		"Il temporale non passa sopra Thunder Bluff: le gira intorno, così vicino da poterlo toccare, rimbombando contro ogni mesa. I tauren non alzano nemmeno lo sguardo.",
		"Tuoni che rimbalzano dalle mese, così forti che i ponti vibrano. Chi ha dato il nome a questa città doveva trovarsi proprio qui, con un tempo così.",
	},
	["thb.muse.w05.022"] = {
		"guarda dal bordo dell'altura un mare bianco di nebbia, le altre mese che ne emergono come isole e la pianura scomparsa del tutto.",
		"attraversa un ponte con la nebbia così fitta di sotto che le corde sembrano sospese sul nulla.",
	},
	["thb.muse.w05.023"] = {
		"Mi è caduto un rame giù dal bordo. Sto ancora aspettando di sentirlo atterrare.",
		"Tutto quello che cade da questa città appartiene a Mulgore. Compreso, per un pelo, il mio cappello.",
		"Regola della rupe: tieni stretti la borsa, il cappello e la dignità, in quest'ordine.",
	},
	["thb.muse.w05.024"] = {
		"La banca è una tenda. La casa d'aste è una tenda. Tutto il mio patrimonio è protetto da pelle, corde e un tauren molto grosso.",
		"Il banchiere qui conta le mie monete una per una, con calma, e poi le riconta. Non mi sono mai {g:sentito|sentita} così al sicuro né così in ritardo.",
		"La mia cassetta in banca sta in una tenda su una rupe in mezzo al cielo. Chissà come, mi sembra più sicura di un caveau.",
	},
	["thb.muse.w05.025"] = {
		"Chiedi una scodella di stufato a Thunder Bluff e ti danno qualcosa in cui si potrebbe fare il bagno a uno gnomo. La finirò per rispetto.",
		"Il pane dei tauren è compatto, caldo e grosso più o meno come uno scudo. Con una pagnotta attraverserei tutte le Barrens.",
		"Porzioni tauren: una scodella che si regge con due mani, e un cuoco che ci resta male se ne avanzi un po'.",
	},
	["thb.muse.w05.026"] = {
		"Verso sud, oltre l'erba e le colline basse, c'è Bloodhoof Village con il suo fumo e i suoi campi. Da quassù tutta Mulgore sembra un unico lungo pendio gentile.",
		"La strada che scende dagli ascensori corre attraverso l'erba verso Bloodhoof Village e le fattorie. In Mulgore tutto sembra a una giornata di cammino tranquillo, e niente ha fretta di farsi raggiungere.",
	},
	["thb.muse.w05.027"] = {
		"A est della rupe il verde di Mulgore si dirada e ingiallisce, e oltre il crinale cominciano le Barrens, aride e sconfinate. I tauren hanno scelto il lato più gentile delle colline.",
		"Da una parte erba alta e acqua; a est, polvere che si alza oltre il crinale. Mulgore è una coppa verde sollevata contro le Barrens.",
		"Verde a ovest, oro a est. Thunder Bluff sta proprio dove Mulgore prende una decisione.",
	},
	["thb.muse.w05.028"] = {
		"Per generazioni i tauren hanno seguito le mandrie e dormito dovunque l'erba fosse buona. Thunder Bluff è ciò che costruisce un popolo errante quando finalmente decide di fermarsi.",
		"Le tende qui sono ancora tende. Un popolo che ha camminato così a lungo ha conservato l'abitudine di case che si possono ripiegare, anche dopo aver trovato un posto che vale la pena tenersi.",
		"Un popolo errante con una città. I tauren sembrano portarla con leggerezza, come un mantello che potrebbero ancora togliersi.",
	},
	["thb.muse.w05.029"] = {
		"La vista più bella di Kalimdor, e non te la fanno nemmeno pagare.",
		"Potrei stare {g:seduto|seduta} su questo bordo tutto il giorno e chiamarlo lavoro.",
	},
	["thb.muse.w05.030"] = {
		"Il suono viaggia in modo strano fra un'altura e l'altra. Sento due tauren sulla mesa di fronte discutere di una pelle, parola per parola, e loro non ne hanno idea.",
		"Una risata dall'altra parte del vuoto, nitida come se chi ride mi stesse accanto. Quassù l'aria porta le voci come l'acqua porta le foglie.",
		"Sull'altura accanto qualcuno ha appena fatto cadere una pentola. L'ho sentita come se l'avessi in mano io.",
	},
	["thb.muse.w05.031"] = {
		"Su Spirit Rise da ogni gronda pendono mazzi d'erbe che seccano all'aria, verde-grigi. Uno sciamano ne pizzica uno, lo annusa e passa al successivo, come se sfogliasse una pila di lettere.",
		"Radici secche, mazzetti di foglie, una filza di qualcosa che sembrano piccole mele amare: quassù le tende fanno anche da bottega di erborista, e nessuno mette un'etichetta a niente.",
	},
	["thb.muse.w05.032"] = {
		"scavalca con cautela il lupo di un cacciatore addormentato di traverso a metà di un ponte di corda; quello apre un occhio, giudica il passante innocuo e lo richiude.",
		"aspetta mentre un cacciatore cerca di convincere un cinghiale testardo a scendere dalle assi del ponte, con tutta la campata che ondeggia a ogni grugnito.",
	},
	["thb.muse.w05.033"] = {
		"Un Reietto siede accanto a un fuoco da cucina tauren, tendendo mani che a malapena sentono il calore. Nessuno gli dice di andarsene. Forse è la cosa più gentile di tutta l'Orda.",
		"I tauren offrono ai morti un posto accanto al fuoco come a chiunque altro. Mi chiedo se i Reietti sentano il calore, o soltanto l'accoglienza.",
		"Una guaritrice tauren ascolta un vecchio Reietto lamentarsi delle articolazioni con la stessa identica pazienza che riserva ai vivi.",
	},
	["thb.muse.w05.034"] = {
		"Orchi, troll, perfino i Reietti camminano sui nostri ponti, ormai. Strana compagnia per il popolo delle pianure. Buona compagnia, quasi sempre.",
		"Quando sento le mandrie muggire laggiù, qualcosa dentro di me si raddrizza. Quelle sono le nostre pianure. Abbiamo versato sangue per tenercele.",
	},
	["thb.muse.w05.035"] = {
		"Camminate con la Madre Terra, tutti quanti. La rupe è lieta dei suoi ospiti.",
		"Thunder Bluff. Erba buona sotto, fuochi buoni sopra. Di cos'altro ha bisogno un tauren?",
	},
	["thb.muse.w05.036"] = {
		"Qui sono tutti più alti di me di una testa abbondante e si muovono piano apposta, come si fa intorno a qualcosa di piccolo. La cosa piccola sono io.",
		"I tauren stanno attenti ai visitatori come la gente grossa sta attenta ai mobili. Oggi ho ricevuto tre scuse da gente che non mi aveva nemmeno sfiorato.",
	},
	["thb.muse.w05.037"] = {
		"Qualcuno ha attraversato il ponte in groppa a un kodo. Il ponte ha delle opinioni in merito, e le sta condividendo.",
		"Kodo sul ponte. Tutti gli altri aspettino il proprio turno e si tengano forte.",
		"Quel kodo che attraversa il ponte ha la precedenza. Ho idea che quel kodo abbia la precedenza dappertutto.",
	},
	["thb.muse.w05.038"] = {
		"I tauren parlano dei loro antenati come se fossero ancora quassù, solo un po' più in là, seduti appena oltre il cerchio della luce del fuoco. Su questa rupe è facile sentirli chinarsi ad ascoltare.",
		"Gli sciamani dicono che gli spiriti degli antichi restano vicini ai luoghi alti. Degli spiriti non so niente, ma quassù, fra una raffica e l'altra, c'è un silenzio che sembra qualcuno in ascolto.",
	},
	["thb.muse.w05.039"] = {
		"Coperte tessute dappertutto: sulle panche, sulle soglie, arrotolate sotto il braccio. Ogni disegno sembra la mappa di un posto in cui è stata soltanto la tessitrice.",
		"Una tessitrice tauren al telaio non si guarda mai le mani. Guarda la pianura e lascia che siano le dita a ricordare.",
	},
	["thb.muse.w05.040"] = {
		"Le mese sono fatte di roccia stesa a strati rossi, fulvi e color ruggine, come coperte piegate e impilate da qualcuno molto paziente e molto vecchio.",
		"Ogni parete qui mostra i suoi anni a strisce. La rupe è un libro della terra, e i tauren hanno costruito le loro case sull'ultima pagina.",
		"Le pareti della rupe sono a strisce come una vecchia coperta. Alcune di quelle strisce devono essere più antiche di qualunque popolo cammini su Kalimdor.",
	},
	["thb.muse.w05.041"] = {
		"I centauri fanno ancora razzie ai margini delle Barrens. I tauren non sono saliti quassù per il panorama: ci sono saliti perché un tempo, nella pianura aperta, si poteva essere travolti e uccisi.",
		"Il terreno alto è stata una scelta fatta in anni duri. Ogni anziano tauren di questa rupe ricorda cosa vuol dire essere braccati nell'erba aperta.",
	},
	["thb.muse.w05.042"] = {
		"Bella città. La prossima la vorrei una da cui non serva un ascensore per andarsene.",
		"Brava gente, i tauren. Peccato che abbiano costruito la capitale dove dovrebbero abitare solo gli uccelli.",
	},
	["thb.muse.w05.043"] = {
		"Dentro la grande tenda la luce passa ambrata attraverso le pelli, e ogni rumore da fuori arriva attutito, come se la città parlasse da sotto una coperta.",
		"Sotto il tetto di pelle l'aria sa di fumo vecchio e di cuoio, e il pavimento è coperto di tappeti consumati dagli zoccoli. È il genere di stanza che ti dice di sederti.",
	},
	["thb.muse.w05.044"] = {
		"si siede sul ciglio della mesa con le gambe nel vuoto, e per un lungo momento l'unica cosa che si muove è l'erba di Mulgore, molto più in basso.",
		"resta sul bordo dell'altura finché la vertigine passa e rimane soltanto la vastità della pianura.",
		"si sdraia per un po' sulla pietra tiepida al bordo dell'altura, a guardare le nuvole passare a quella che sembra la distanza di un braccio.",
	},
	["thb.muse.w05.045"] = {
		"Un grosso felino maculato è balzato giù da un ponte sull'altura, e prima che riuscissi a mettere mano a un'arma si è alzato in piedi: un vecchio druido che si spazzolava l'erba dalla veste. Elder Rise ha usanze tutte sue.",
		"Su Elder Rise i druidi vanno e vengono a quattro zampe tanto spesso quanto a due. Si impara a non sobbalzare davanti a un orso sulla soglia.",
	},
	["thb.muse.w05.046"] = {
		"Anche qui, ben al di sopra di tutto, le notizie salgono con gli ascensori: scaramucce in Ashenvale, razzie nelle Barrens, feriti in viaggio verso casa. Thunder Bluff è in pace; l'Orda no.",
		"I tauren sono lenti all'ira e ancora più lenti a dimenticare. Un guerriero di qui sta affilando una lama per il fronte di Ashenvale con la calma di chi ripara uno steccato.",
	},
	["thb.muse.w05.047"] = {
		"Orchi che urlano, troll che ridono, Reietti che sussurrano, e tauren che lasciano finire tutti. A Thunder Bluff l'Orda ha un altro suono.",
		"Su questa rupe perfino un orco abbassa un po' la voce. Non per paura: è il posto che sembra chiederlo.",
		"Su questi ponti cammina ogni razza dell'Orda, e i ponti ondeggiano allo stesso modo per tutte. Forse è questa la lezione.",
	},
	["thb.muse.w05.048"] = {
		"I tauren parlano dei kodo con qualcosa di molto simile alla reverenza. Li mangiano, li cavalcano, se ne vestono e li piangono, e non ci vedono alcuna contraddizione.",
		"Pelle di kodo sulle tende, osso di kodo negli intagli, stufato di kodo nella pentola. Eppure i tauren parlano di quelle grandi bestie come degli anziani di un'altra tribù.",
	},
	["thb.muse.w05.049"] = {
		"si attarda vicino a un cerchio di vecchi tauren attorno al fuoco, dove uno racconta una storia con tale lentezza che gli ascoltatori si appisolano e si risvegliano senza perdersi niente.",
		"sente la voce profonda di un anziano srotolare un racconto davanti a un gruppo di giovani tauren, con pause abbastanza lunghe da attraversarci un ponte.",
		"si ferma dove un vecchio tauren insegna un motivo a qualche giovane canticchiandolo, frase dopo frase, finché non glielo ricanticchiano.",
	},
	["thb.muse.w05.050"] = {
		"Quassù c'è tanto di quel cielo. Fa sembrare piccoli i miei guai, ed è gentile da parte sua; poi fa sembrare {g:piccolo|piccola} anche me, ed è meno gentile.",
		"Sulla rupe il mondo sembra grandissimo e silenzioso, e io sembro {g:lontanissimo|lontanissima} da tutti quelli con cui ho camminato.",
	},
	["thb.muse.w05.051"] = {
		"Chi vuole Mulgore dovrà prima scalare questa rupe. Mi piacerebbe vederli provarci.",
		"Terreno alto, occhi acuti, pazienza lunga. Guai a chi costringe i tauren ad avere fretta.",
	},
	["thb.muse.w05.052"] = {
		"Tutto in questa città, prima o poi, è salito con un ascensore: ogni tronco, ogni pentola, ogni sacco di grano. Ci penso ogni volta che vedo un tauren portare qualcosa di pesante senza lamentarsi.",
		"Cacciatori che salgono dalla pianura con la selvaggina in spalla, contadini con le ceste, viaggiatori impolverati fino al ginocchio. La città si nutre dal basso, un carico d'ascensore dopo l'altro.",
		"Acqua, legna, grano, pietra: niente di tutto ciò nasce quassù. Thunder Bluff è una città portata su per le pareti da molte schiene pazienti.",
	},
	["thb.muse.w05.053"] = {
		"Sono {g:salito|salita} quassù per schiarirmi le idee. Ha funzionato. Non è rimasta aria per pensare.",
		"Aria sottile, strapiombi e un sacco di gente tranquillissima. {g:L'unico|L'unica} col fiatone sono io.",
	},
	["thb.muse.w05.054"] = {
		"riceve una tazza d'acqua da un tauren di passaggio, che la porge senza una parola, aspetta che venga vuotata e se la riprende con un cenno.",
		"riceve uno sguardo curioso e cordiale da un vecchio tauren intento a riparare un cesto, che alza una mano dal lavoro in segno di saluto e riprende.",
	},
	["thb.muse.w05.055"] = {
		"Ogni totem della rupe porta dipinti animali e volti uno sopra l'altro, aquila su orso su kodo. Non so leggerli, ma sono {g:sicuro|sicura} che loro leggono me.",
		"I totem segnano qualcosa: una famiglia, una storia, una promessa. Ho chiesto due volte cosa dica questo, e ho avuto due risposte diverse, lunghissime tutte e due.",
		"I volti dei totem guardano tutti verso la pianura. Qualunque cosa sorveglino, arriva dal basso.",
	},
	["thb.muse.w05.056"] = {
		"Mezzogiorno sulle mese, e l'unica ombra disponibile è sotto il lembo di una tenda o dietro un tauren. Vanno a ruba tutte e due.",
		"A quest'ora il sole sta appoggiato proprio sopra la città, senza niente in mezzo. Perfino le pelli sembrano scottate.",
	},
	["thb.muse.w05.057"] = {
		"Mangiare, dormire, rattoppare gli stivali. Le Barrens non si attraversano da sole.",
		"Un'ultima occhiata alla pianura, poi giù con l'ascensore e di nuovo al lavoro.",
	},
	["thb.muse.w05.058"] = {
		"Ceste dappertutto, intrecciate così fitte da tenere l'acqua, impilate accanto alle porte come pagnotte. Su questa rupe c'è qualcuno che non smette mai di intrecciare.",
		"I tauren si fanno con le mani ciò che serve, e lo fanno per durare. Una cesta di qui sopravviverà al suo padrone, e molto probabilmente anche ai suoi nipoti.",
	},
	["thb.muse.w05.059"] = {
		"Tengo gli occhi sull'altro capo di ogni ponte, mai sul vuoto. Il trucco funziona finché il ponte non oscilla, e allora non funziona più niente.",
		"A metà di ogni ponte c'è un istante in cui il corpo si ricorda tutto d'un colpo quanto siamo in alto. Ho imparato a continuare a camminare.",
	},
	["thb.muse.w05.060"] = {
		"si fa da parte per un giovane tauren che attraversa il ponte con due secchi colmi appesi a un giogo, senza versarne una goccia nonostante il dondolio.",
		"guarda un tauren trascinare su per il sentiero una fascina di legna più grossa di un nano, canticchiando sotto il peso.",
	},
	["thb.muse.w05.061"] = {
		"Da quassù non si vede un solo nemico. È quasi sospetto.",
		"Pace e silenzio. Gli do un'ora, poi vado a cercarmi qualche guaio.",
		"Città tranquilla, gente tranquilla. A forza di stare qui ferme, le mani cominciano a prudermi.",
	},
	["thb.muse.w05.062"] = {
		"I Bluffwatcher si appoggiano alle lance come i mandriani ai bastoni. Quassù nessuno si illude che questo li renda lenti.",
		"Una guardia sul ponte fa un cenno a chiunque passi, a ognuno, e si ricorda ogni faccia. Si vede che lo sta facendo.",
	},
	["thb.muse.w05.063"] = {
		"Bastano poche ore fra i tauren e mi sorprendo a finire le cose per bene, a fare i nodi due volte, a dire grazie più lentamente. La rupe ti si attacca addosso.",
		"Qui la pazienza è contagiosa. Sono {g:arrivato|arrivata} al trotto e ripartirò al passo, e il passo mi sembra un miglioramento.",
	},
	["thb.npc_meet.w05.001"] = {
		"viene {g:accolto|accolta} dall'oste con una ciotola già tesa, come se avesse sentito arrivare i passi dall'ascensore.",
		"incrocia lo sguardo dell'oste attraverso la tenda e riceve un lento cenno verso una stuoia libera accanto al fuoco.",
		"si ferma davanti all'oste, il cui benvenuto è una sola parola profonda e un gesto verso la pentola appesa sopra la brace.",
	},
	["thb.npc_meet.w05.002"] = {
		"Quello che c'è in pentola, e un angolo dove il vento non mi trovi.",
		"Una stuoia accanto al fuoco, se ne hai una. Il russare te lo pago in anticipo.",
	},
	["thb.npc_meet.w05.003"] = {
		"Il banchiere conta le mie monete con la pazienza di chi non ha mai perso un rame e non ha intenzione di cominciare.",
		"Una banca in una tenda su una rupe. I miei risparmi non sono mai stati così in alto, in nessun senso.",
	},
	["thb.npc_meet.w05.004"] = {
		"Mettilo insieme al resto, per favore. Lontano dallo strapiombo, se riesci.",
		"Controllavo soltanto che la mia roba non fosse volata giù dalla rupe. Grazie, continua pure.",
	},
	["thb.npc_meet.w05.005"] = {
		"si presenta per la lezione, e chi insegna {g:gli|le} gira intorno lentamente senza dire nulla finché il cerchio non si chiude.",
		"aspetta che la lezione in corso finisca, tenuta con una voce bassa e paziente che non si alza mai, poi si fa avanti.",
	},
	["thb.npc_meet.w05.006"] = {
		"Qui gli addestratori insegnano come parlano gli anziani: piano, e una volta sola. Conviene ascoltare bene.",
		"La lezione costerà monete e pazienza. Quassù, sospetto, la pazienza è la più cara delle due.",
	},
	["thb.npc_meet.w05.007"] = {
		"Qualcuno sulla rupe ha un problema, e io ho l'aria della soluzione. Sono sempre gli stivali.",
		"Un saluto lento e grave, di quelli che precedono una lunga richiesta. Pianto bene i piedi.",
		"Eccola. Quassù anche una richiesta d'aiuto arriva con una certa solennità.",
	},
	["thb.npc_meet.w05.008"] = {
		"Hai del lavoro per me? Raccontalo chiaro: lo ascolterò tutto.",
		"Sono qui. Che cosa c'è da fare?",
	},
	["thb.npc_meet.w05.009"] = {
		"passa accanto a una sentinella delle rupi con l'arma appoggiata a una spalla, e riceve un cenno lento, accurato e definitivo.",
		"si fa da parte sul ponte per una sentinella di ronda, che ringrazia della cortesia piegando appena le corna.",
	},
	["thb.npc_meet.w05.010"] = {
		"Giornata tranquilla? Quassù immagino lo siano tutte.",
		"Bella vista dalla tua postazione. Io non riuscirei a fare la guardia nemmeno un minuto.",
	},
	["thb.npc_meet.w05.011"] = {
		"si ferma davanti alla coperta di un mercante dove ogni merce è disposta in file dritte, e niente si tocca finché il mercante non annuisce.",
		"guarda il mercante avvolgere un acquisto in una pelle morbida e chiuderlo con mani attente, prendendosi tutto il tempo che il nodo richiede.",
	},
	["thb.npc_meet.w05.012"] = {
		"Pelli, corno, aghi d'osso, radici secche in vasi d'argilla. Metà le so nominare; l'altra metà la compro per scoprirlo.",
		"Tutto quello che c'è su questa coperta viene dalla pianura laggiù, in un modo o nell'altro. Si sente ancora l'odore dell'erba.",
	},
	["thb.npc_meet.w05.013"] = {
		"Il maestro delle viverne conosce per nome ogni bestia sui trespoli. Chiederei qual è la più docile, ma sospetto che la risposta sia nessuna.",
		"Dalla torre del maestro si vede mezza Mulgore. Chissà se le bestie si stancano mai del panorama.",
	},
	["thb.npc_meet.w05.014"] = {
		"La tua bestia più tranquilla, per favore. Ho visto quanto è lontano il suolo da qui.",
		"È vero che amano buttarsi dal bordo? Lascia stare, non dirmelo.",
	},
	["thb.npc_meet.w05.015"] = {
		"Cairne Bloodhoof. Vecchio, imponente e immobile come una pietra eretta. Quando parla, tutta la tenda si protende verso di lui.",
		"L'Alto Capo ha la pazienza delle mese stesse, e la loro pietra. Mi ritrovo a stare più {g:dritto|dritta} senza averlo deciso.",
		"Cairne ascolta più di quanto parli, saldo come la pietra. Con un popolo calmo come il suo, forse è questo guidare.",
	},
	["thb.npcd_flightmaster_open.w05.001"] = {
		"Le viverne sono riposate e hanno mangiato. Dove vuoi che ti portino le bestie?",
		"Occhio agli artigli, e sali quando te lo dico io. Le bestie conoscono la via per lasciare la rupe meglio di tutti noi.",
	},
	["thb.npcd_guard_bye.w05.001"] = {
		"Va' in pace. E prendi i ponti con calma: preferiremmo non dover raccogliere nessuno dall'erba.",
		"Vai pure. La rupe sarà qui al tuo ritorno.",
	},
	["thb.npcd_guard_directions.w05.001"] = {
		"I druidi si addestrano su Elder Rise, gli sciamani su Spirit Rise, cacciatori e guerrieri su Hunter Rise. Segui i ponti.",
		"La banca, la locanda e il maestro delle viverne sono tutti qui, sulla mesa centrale. Torna indietro se ti sei {g:allontanato|allontanata}.",
		"La tenda dell'Alto Capo sta sulla mesa centrale. Vacci con rispetto.",
	},
	["thb.npcd_guard_open.w05.001"] = {
		"Ti do il benvenuto a Thunder Bluff. Cammina con calma, parla piano e stai lontano dai bordi.",
		"Sulla rupe si mantiene la pace. Aiutaci a mantenerla.",
	},
	["thb.npcd_guard_open.w05.002"] = {
		"Qui sei sotto lo sguardo di Cairne. È un buon posto in cui stare.",
		"Ogni altura di questa città risponde all'Alto Capo. Tienilo a mente, e da noi non avrai fastidi.",
	},
	["thb.npcd_innkeeper_bye.w05.001"] = {
		"Va' piano. Il fuoco sarà acceso quando risalirai.",
		"Prendi un po' di carne secca per la strada. No, no, tienila. Mi pagherai tornando.",
	},
	["thb.npcd_innkeeper_news.w05.001"] = {
		"I cacciatori di Hunter Rise sono tornati dalla pianura con la storia di un grande kodo bianco. Nessuno ci crede, e tutti la ripetono.",
		"Da giù dicono che le macchine della Venture Company stanno ancora rosicchiando le colline di Mulgore. I guerrieri non ne sono contenti.",
	},
	["thb.npcd_innkeeper_open.w05.001"] = {
		"Entra, vieni via dall'aria aperta. Siediti, scaldati al fuoco, mangia. Le domande possono aspettare.",
		"C'è una stuoia libera accanto al fuoco. È tua finché ti serve.",
	},
	["thb.npcd_innkeeper_open.w05.002"] = {
		"Hai l'aria di chi ha attraversato troppi ponti oggi. Lo stufato aiuta.",
		"Entra pure nella mia tenda. Occhio al palo: chi è alto lo trova sempre con la testa.",
	},
	["thb.npcd_merchant_bye.w05.001"] = {
		"Cammina bene. Se la strada ti consuma quel cuoio, sai dove mi trovi.",
		"Va' in pace, e spendi con giudizio per la strada laggiù. Nessuno, giù, vende onesto come noi quassù.",
	},
	["thb.npcd_merchant_news.w05.001"] = {
		"In questo periodo le pelli abbondano: i cacciatori non si sono fermati un attimo, in pianura. È il momento giusto per comprare.",
		"Gli ascensori non si sono fermati tutta la settimana. Carovane dai Barrens, soprattutto, e vogliono tutte le stesse cose.",
	},
	["thb.npcd_merchant_open.w05.001"] = {
		"Guarda quanto vuoi. Il buon cuoio non si offende a essere guardato.",
		"Tutto quello che vedi è salito con l'ascensore sulla schiena di qualcuno. Trattalo con garbo, e anche il prezzo resterà garbato.",
	},
	["thb.npcd_merchant_open.w05.002"] = {
		"Avvicinati. I prezzi non li urlo: te li dico una volta, e li troverai giusti.",
		"Vieni, vieni. Osso, pelle, erbe della pianura laggiù. Chiedi, e ti dirò da dove viene ciascuna cosa.",
	},
	["thb.npcd_merchant_wares.w05.001"] = {
		"Cuoio di kodo, conciato con calma e cucito col tendine. Durerà più dei tuoi stivali, e forse più di te.",
		"Otri, corde, aghi d'osso, erbe della pianura in piccoli sacchetti. Tutto quel che serve per una lunga camminata laggiù.",
	},
	["thb.npcd_trainer_open.w05.001"] = {
		"Siediti. No, in piedi. Fammi vedere come ti porti, prima di dirmi qualunque cosa.",
		"Sei {g:salito|salita} fin quassù per imparare. Bene. La pazienza è la prima lezione, e l'hai già cominciata.",
	},
	["thb.pray.w05.001"] = {
		"Madre Terra, i tuoi figli hanno costruito questa città vicino al cielo. Rendi sicuri i miei passi sui suoi ponti e sulle strade di sotto.",
		"Spiriti dei luoghi alti, della terra e del cielo: vegliate su questa rupe, e su di me quando la lascerò.",
		"Madre Terra, da questo luogo alto chiedo poco: una strada sgombra, una mano ferma e un fuoco a cui tornare.",
	},
	["thb.quest_complete.w05.001"] = {
		"consegna quanto richiesto, e la faccenda si chiude con così poche parole che il silenzio dopo sembra far parte del ringraziamento.",
		"chiude la faccenda con una manciata di parole sommesse, poi si trattiene un momento, visto che sulla rupe nessuno pare aver fretta di congedarsi.",
		"conclude la commissione e si sente dire che è stata fatta bene, una volta sola, da una voce che non vede motivo di ripeterlo.",
	},
	["thb.quest_complete.w05.002"] = {
		"Ogni incarico portato a termine qui mi insegna un ponte in più. Presto attraverserò questa città senza fermarmi a guardare giù.",
		"Un'altra commissione chiusa, un altro sentiero fra le alture che i miei piedi ricorderanno.",
		"Comincio a sapere chi abita su quale altura. Pian piano la città smette di essere una mappa e diventa un vicinato.",
	},
	["thb.quest_complete.w05.003"] = {
		"Ecco. E ho preso la strada lunga solo per due ponti. Tre, se conti quello che ho attraversato due volte.",
		"Consegnato. Direi che non è stato niente, ma le mie ginocchia si sono fatte tutte le alture della città.",
		"Missione compiuta. Ora devo solo ricordarmi con quale ascensore sono {g:salito|salita}.",
	},
	["thb.quest_complete.w05.004"] = {
		"Gli sciamani di Spirit Rise dicono che la Madre Terra nota il lavoro piccolo come quello grande. Spero che guardasse da questa parte.",
		"Sulla rupe si dice che la terra tenga il conto di ogni lavoro onesto. Se è così, ha uno dei miei in più da portare.",
	},
	["thb.quest_complete.w05.005"] = {
		"si vede mettere in mano, insieme alla ricompensa, una striscia di carne secca per la strada, e rifiutare non è previsto.",
		"riceve la ricompensa e, senza averla chiesta, una focaccia di grano ancora calda di brace, avvolta in una foglia.",
	},
	["thb.quest_complete.w05.006"] = {
		"È fatto come chiedevi. Se la rupe ha bisogno di altre mani, le mie sono libere.",
		"La tua richiesta ha avuto risposta. Mandami a chiamare ancora, quando servirà.",
		"Come promesso. La rupe può contare su di me, quando chiama.",
	},
	["thb.quest_complete.w05.007"] = {
		"Il lavoro è consegnato e la città torna alle sue faccende lente. Sono l'unica persona che si porta ancora dietro la strada che è costata.",
		"Pagato e ringraziato, e già l'incarico sembra lontano, come la pianura vista dal bordo della rupe.",
		"Ringraziamento ricevuto, monete in tasca, e il momento è già passato prima che finisca di accorgermene.",
	},
	["thb.quest_complete.w05.008"] = {
		"intasca la ricompensa sotto lo sguardo di un vecchio totem, il cui volto intagliato sembra aver visto imprese più grandi e premi più generosi.",
		"ripone la ricompensa ai piedi di un totem dipinto, che continua a fissare la pianura oltre le sue spalle, per nulla colpito.",
	},
	["thb.quest_complete.w05.009"] = {
		"Allora è sistemato. Sarò alla locanda, se lo stufato non è finito.",
		"Ecco, tutto in ordine. Adesso mi sono {g:guadagnato|guadagnata} un posto accanto al fuoco e una ciotola di quel che bolle in pentola.",
	},
	["thb.quest_complete.w05.010"] = {
		"La città di Cairne ha la memoria lunga, dicono gli anziani. Un giorno vorrei restarci dentro per qualcosa di più che commissioni. Questo è un inizio.",
		"Prima le piccole imprese. I tauren hanno costruito questa città una tenda dopo l'altra; un nome si può costruire allo stesso modo.",
	},
	["thb.quest_complete.w05.011"] = {
		"si volta dalla faccenda conclusa verso il bordo dell'altura, dove l'erba di Mulgore si stende laggiù verso tutto ciò che resta da fare.",
		"chiude la questione e si concede un momento sull'orlo della mesa, con la pianura distesa verde e oro di sotto, già piena di altri incarichi.",
		"si ferma sull'orlo una volta riposta la ricompensa, lo sguardo sulle mandrie e sull'erba laggiù, come per contare a che cosa servisse la commissione.",
	},
	["thb.quest_complete.w05.012"] = {
		"Una ricompensa onesta, data senza discorsi. Attenzione, o comincerò a fare commissioni qui per divertimento.",
		"Monete in mano e nessuno che urla. Continuo ad aspettare la fregatura.",
		"Paga giusta, nessuna storia. Non mi fido, ma la spendo.",
	},
	["thb.quest_complete.w05.013"] = {
		"La mia parte è fatta; quel che ne nascerà appartiene alla rupe, ora. Terreno buono, credo.",
		"Depongo l'incarico qui come una pietra su un tumulo. Altri aggiungeranno la loro, e il mucchio crescerà.",
	},
	["thb.quest_complete.w05.014"] = {
		"riceve la ricompensa mentre un gruppo di giovani cacciatori, attraversando il ponte, si ferma a guardare, curiosi di sapere come se la sia guadagnata.",
		"prende la ricompensa mentre due guerrieri di passaggio sull'altura lanciano un'occhiata, soppesano chi la riceve e approvano con un breve grugnito.",
	},
	["thb.quest_complete.w05.015"] = {
		"La ricompensa è giusta, i ringraziamenti lunghi, e qualcuno ha nominato la zuppa. Potrei trasferirmi qui.",
		"Sono {g:salito|salita} per una sola commissione e me ne vado con la borsa piena, una benedizione e le indicazioni per tre cuochi.",
	},
	["thb.quest_complete.w05.016"] = {
		"Mi fa piacere aver dato una mano. Questa città è stata giusta con me.",
		"Non serve ringraziare ancora. Una parola onesta bastava.",
		"Il piacere è stato mio. Davvero: la vista da sola valeva la salita.",
	},
	["thb.quest_complete.w05.017"] = {
		"allenta una cinghia dello zaino appena chiusa la commissione, come se l'incarico ci avesse viaggiato dentro fino a quel momento.",
		"si siede su una panca subito dopo, e questo dice della commissione più di qualunque rapporto.",
	},
	["thb.quest_complete.w05.018"] = {
		"Questa città paga quel che promette e promette solo quel che può pagare. Potrei abituarmici.",
		"Lavoro onesto, paga onesta, nessun trucco nelle clausole. Thunder Bluff tiene conti semplici.",
	},
	["thb.quest_complete.w05.019"] = {
		"accetta la ricompensa mentre un filo di fumo d'erbe arriva da un totem vicino, come se anche la città volesse dire grazie a modo suo.",
		"riceve la ricompensa e la benedizione che l'accompagna, pronunciata a bassa voce sopra una ciotola di erbe che fumano.",
	},
	["thb.quest_complete.w05.020"] = {
		"Abbastanza facile. La prossima volta dammi quello che gli altri hanno rifiutato.",
		"Questo era leggero. Tieni quelli pesanti per me.",
		"Un altro fatto. Continua a mandarmene, e più difficili.",
	},
	["thb.quest_complete.w05.021"] = {
		"Lavoro fatto per la mia gente, sulla mia altura. Si posa nel petto in un altro modo rispetto a quello fatto per estranei.",
		"Qui non serve che mi ringrazino. Aiutare la tribù è come badare al fuoco di casa: lo si fa e basta.",
	},
	["thb.quest_complete.w05.022"] = {
		"chiude la commissione alla luce del fuoco, con le alture lontane ridotte a sagome scure contro le stelle.",
		"sistema la faccenda alla luce di una lanterna, mentre sopra la rupe il cielo notturno è vastissimo e pieno di stelle.",
	},
	["thb.quest_complete.w05.023"] = {
		"Sistemato col sole ancora alto su Mulgore. Il resto della giornata è mio, e la rupe è un bel posto per sprecarla.",
		"L'incarico è chiuso e c'è ancora luce sulla pianura. Mi siedo un po' sul bordo a guardare le mandrie che si spostano.",
	},
	["thb.quest_complete.w05.024"] = {
		"A posto. Il prossimo mettilo su quest'altura: per oggi ho camminato su abbastanza corda.",
		"Bene. E se ce n'è un altro, preferirei che non c'entrasse l'ascensore.",
	},
	["thb.quest_complete.w05.025"] = {
		"dopo i conti viene {g:accompagnato|accompagnata} fino all'imbocco del ponte, una scorta di cortesia che nessuno ha chiesto e nessuno rifiuta.",
		"viene {g:salutato|salutata} con una mano alzata, che resta su finché non ha attraversato tutto il ponte.",
	},
	["thb.quest_complete.w05.026"] = {
		"Consegnato con la pioggia che mi gocciola dal naso. Almeno i ringraziamenti erano caldi; il resto di me no.",
		"L'incarico si chiude sotto la pioggia, e la borsa è l'unica parte di me ancora asciutta.",
	},
	["thb.quest_complete.w05.027"] = {
		"Il lavoro è fatto. Cammina con la Madre Terra.",
		"Che la Madre Terra ti protegga. Se il guaio si ripresenta, manda a chiamarmi.",
	},
	["thb.reputation_change.w05.001"] = {
		"Quassù qualcuno pronuncia il mio nome con un po' più di calore. Sulla rupe queste cose viaggiano piano, e durano.",
		"In questa città la fiducia cresce lenta, come l'erba della pianura. Ora un po' di più è mia.",
	},
	["thb.rest_enter.w05.001"] = {
		"La calma della città, dopo un po', ti entra nelle ossa. Smetto di stare in ascolto dei passi alle mie spalle.",
		"Quassù la mano si allontana dall'arma da sola. La rupe fa questo effetto.",
		"Finalmente riposo. Perfino i pensieri rallentano al passo della gente di qui.",
	},
	["thb.rest_enter.w05.002"] = {
		"si lascia andare su un mucchio di pellicce morbide dentro la locanda, e la lunga giornata si ripiega dietro gli occhi socchiusi.",
		"si toglie gli stivali sotto l'alto tetto della tenda della locanda e ascolta per un po' i pali che scricchiolano sopra la testa.",
	},
	["thb.rest_enter.w05.003"] = {
		"Nessuno mi svegli, a meno che la rupe non crolli.",
		"Mi riposo. Se l'ascensore si rompe, ditemelo domani.",
		"Un'intera città fatta per stare fermi. Il mio genere di posto.",
	},
	["thb.rest_enter.w05.004"] = {
		"Notte sulla rupe. Qualcuno oltre il ponte canticchia a bocca chiusa, e i fuochi delle tende si riducono a brace uno dopo l'altro.",
		"Riposo mentre scende la notte, in alto sopra Mulgore. Le ultime voci si spengono, i fuochi calano, e resta solo lo scricchiolio delle corde nel buio.",
	},
	["thb.rest_enter.w05.005"] = {
		"si siede con la schiena contro un palo totemico e lascia che il ritmo lento della città prenda il sopravvento.",
		"si sistema su una pelle stesa sul bordo dell'altura e lascia che per un po' sia la pianura laggiù a muoversi.",
		"trova un angolo riparato fra due tende e si allunga, con il viavai della rupe morbido come acqua che scorre.",
	},
	["thb.rest_enter.w05.006"] = {
		"Una ciotola di stufato, una coperta di pelliccia e una vista che va avanti per una giornata di cammino. Altrove i ricchi pagano una fortuna per molto meno.",
		"Pelliccia sotto, tetto di pelle sopra, e nessuno da nessuna parte che si aspetti qualcosa. Potrei dormire per una stagione.",
	},
	["thb.rest_enter.w05.007"] = {
		"Gli sciamani dicono che la Madre Terra regge questa rupe fra le mani. A riposare qui, mi sembra quasi di sentirne il palmo.",
		"A stare {g:sdraiato|sdraiata} quassù sento la pietra sotto di me, vecchia e paziente. I tauren la chiamano la schiena della Madre Terra, mi hanno detto.",
	},
	["thb.subzone_enter.w05.001"] = {
		"Elder Rise, dove i druidi hanno le loro tende. Dicono che qui viva l'Arcidruido Hamuul Runetotem, fra i totem più antichi della città.",
		"L'altura dei druidi. Difficile dire perché, ma quassù l'aria sa un po' più di bosco che nel resto della rupe.",
	},
	["thb.subzone_enter.w05.002"] = {
		"Elder Rise. Parlerò piano. Qui sembrano tutti abbastanza vecchi da avere un nome per ogni nuvola.",
		"Zitti, zitti. Questa è l'altura dove pensano gli anziani. Mi dispiacerebbe interrompere un secolo di riflessioni.",
	},
	["thb.subzone_enter.w05.003"] = {
		"passa su Spirit Rise, oltre totem appesi di piume e amuleti d'osso che ticchettano piano contro il legno.",
		"mette piede su {subzone}, dove gli sciamani siedono a gambe incrociate davanti a piccoli fuochi e parlano loro con voci troppo basse per essere seguite.",
		"arriva su Spirit Rise mentre un canto si conclude, e il silenzio che segue sembra restare sospeso nell'aria per un po'.",
	},
	["thb.subzone_enter.w05.004"] = {
		"Spirit Rise. Terra degli sciamani. Terrò le domande piccole e la voce ancora più piccola.",
		"Spirit Rise. Qui hanno le loro tende i maestri degli sciamani, e i totem sono più numerosi delle persone.",
	},
	["thb.subzone_enter.w05.005"] = {
		"passa su Hunter Rise, dove le pellicce pendono dai telai e una fila di bersagli per l'esercizio è irta di frecce.",
		"mette piede su {subzone}, fra maestri di bestie e d'archi, mentre un felino addomesticato passa oltre e una freccia si pianta in un bersaglio lì vicino.",
	},
	["thb.subzone_enter.w05.006"] = {
		"Cacciatori e guerrieri si dividono quest'altura. Si capisce chi è chi: i cacciatori guardano il cielo, i guerrieri si guardano fra loro.",
		"Hunter Rise. In uno di questi spiazzi un addestratore sta dicendo a qualcuno che ha impugnato male l'arco. Forse a me, tra poco.",
	},
	["thb.subzone_enter.w05.007"] = {
		"Le Pools of Vision. Gli sciamani scendono qui a guardare nell'acqua e a vederci più del proprio volto, dicono.",
		"Buio, umido e immobilissimo. Qualunque cosa mostri l'acqua di queste pozze, non la mostra a chi passa.",
	},
	["thb.subzone_enter.w05.008"] = {
		"Ho guardato nell'acqua. L'acqua ha ricambiato lo sguardo. Nessuno dei due ha imparato granché.",
		"Pools of Vision. Nell'acqua io ci vedo solo la mia faccia, che avrebbe bisogno di una lavata.",
	},
	["thb.subzone_enter.w05.009"] = {
		"scende da un ponte che ondeggia sulla roccia solida, e si apre una nuova altura della città: altre tende, altri totem, altri fuochi.",
		"passa in un altro quartiere della rupe, dove il ritmo del luogo cambia come se si fosse varcata una porta.",
		"si lascia alle spalle il ponte, le assi smettono di muoversi sotto i piedi, e per un attimo la terra ferma dell'altura sembra strana.",
	},
	["thb.subzone_enter.w05.010"] = {
		"Ogni altura di questa città è un piccolo villaggio a sé. I ponti sono solo i sentieri fra vicini.",
		"Nuova altura, nuovi odori: concia, erbe, un altro stufato. La rupe cambia sapore a ogni ponte.",
		"Dall'ascensore le alture sembrano tutte uguali. A percorrerle, non ce ne sono due simili.",
	},
	["thb.subzone_enter.w05.011"] = {
		"Ce l'ho fatta ad attraversare. Io e quel ponte adesso ci capiamo.",
		"Un'altra altura raggiunta. Le ginocchia hanno tremato solo due volte, durante la traversata.",
	},
	["thb.subzone_enter.w05.012"] = {
		"passa sull'altura nel buio, seguendo i fuochi accesi in fondo al ponte.",
		"mette piede sull'altura mentre la notte grava sulla rupe, e accanto ai fuochi i totem sono ormai solo alte sagome nere contro le stelle.",
	},
	["thb.thanks.w05.001"] = {
		"Grazie. Quassù anche una piccola gentilezza sembra arrivare dall'alto.",
		"Ti ringrazio. Ricambierò il favore a qualcun altro prima di arrivare in fondo all'ascensore.",
		"Grazie. Hai la pazienza della rupe, e te ne sono {g:grato|grata}.",
	},
	["thb.thanks.w05.002"] = {
		"Hai la mia gratitudine, data con calma, come si usa qui.",
		"Grazie. La Madre Terra vede queste cose, dicono su Spirit Rise.",
	},
	["thb.toast.w05.001"] = {
		"Alla rupe, e a chiunque oggi sia riuscito a salire con l'ascensore!",
		"Ai figli della Madre Terra, e ai loro pazienti cuochi!",
		"Alzateli in alto. Più in alto di qui non si può.",
	},
	["thb.travel.w05.001"] = {
		"tira fuori la pietra del ritorno sul bordo dell'altura, e la pianura laggiù comincia a sfocarsi prima ancora che la pietra si scaldi.",
		"chiude la mano sulla pietra del ritorno fra due totem, e la città dei tauren svanisce come un tamburo che si spegne.",
	},
	["thb.travel.w05.002"] = {
		"Il modo più rapido per lasciare la rupe senza ascensore né viverna. Prendo la pietra.",
		"Una stretta alla pietra e salto tutti i ponti fra qui e la strada. Scusate, ponti.",
	},
	["thb.weather_change.w05.001"] = {
		"guarda la pioggia arrivare sulla pianura e raggiungere la rupe, e i colori vivi dei totem si scuriscono a strisce.",
		"si tira su il cappuccio quando comincia la pioggia, e la polvere sulle assi dei ponti diventa fango scuro.",
		"resta sotto la falda di una tenda mentre la pioggia sfrigola sui fuochi, e il fumo della città diventa bianco e pesante.",
	},
	["thb.weather_change.w05.002"] = {
		"Pioggia! Qualcuno porti dentro le pelli dai telai.",
		"Ecco la pioggia. Ogni ponte di questa città sta per diventare emozionante.",
	},
	["thb.weather_change.w05.003"] = {
		"Un temporale su Thunder Bluff. Ora capisco il nome: il tuono rotola fra le mese come una mandria in fuga.",
		"Lampi a ovest, così vicini che si contano le diramazioni. Quassù il temporale non è sopra di me, è accanto.",
		"Le tende tirano sui pali e i ponti oscillano nel temporale. I tauren continuano le loro faccende come se il cielo urlasse sempre.",
	},
	["thb.weather_change.w05.004"] = {
		"arretra dal bordo dell'altura quando il temporale scoppia, con i ponti di corda che si impennano e i totem che tengono duro.",
		"guarda i fulmini del temporale camminare sulla pianura laggiù, e ogni lampo accende Mulgore di verde e di bianco per un battito di cuore.",
	},
	["thb.weather_change.w05.005"] = {
		"Il cielo si è rasserenato. Da quassù vedo fino alle colline in fondo a Mulgore, ogni loro piega.",
		"Di nuovo sereno, e la pianura laggiù sembra lavata. Perfino i ponti sembrano oscillare più allegri.",
		"Cielo sereno. Laggiù le mandrie si sono di nuovo sparse sull'erba, e tutta la rupe sembra tirare il fiato.",
	},
	["thb.weather_change.w05.006"] = {
		"Le nuvole se ne sono andate e la notte è immensa. Thunder Bluff sta in mezzo alle stelle come una tenda in un campo aperto.",
		"Il cielo si è sgombrato, e quassù fra me e le stelle non c'è altro che un po' d'aria fredda della notte.",
	},
	["thb.weather_change.w05.007"] = {
		"La pioggia porta su per le pareti l'odore della pianura: erba bagnata, terra bagnata e, appena, kodo.",
		"Piove su Mulgore. Laggiù l'erba sta bevendo, e il suo odore sale fin quassù.",
	},
	["thb.journey.w24.alight.001"] = {
		"smonta e stira le dita una a una: hanno ancora la forma delle redini.",
		"scende dalla bestia e apre e chiude le mani, irrigidite dalla presa, finché non si ricordano di essere mani.",
	},
	["thb.journey.w24.alight.002"] = {
		"Ho le orecchie ancora piene di fruscio. La città ci entra dentro un pezzo dopo l'altro: un mestolo contro una pentola, qualcuno che ride piano, una pelle battuta con un bastone.",
		"Dopo il volo ogni rumore sembra lontano. Poi tornano uno per uno, vicini e normali: un martello, una cesta posata, due voci che discutono con calma.",
		"Il ronzio nelle orecchie si spegne e dietro arriva l'altura: un paiolo, un richiamo da un ponte, perline che tintinnano sulla treccia di qualcuno.",
	},
	["thb.journey.w24.alight.003"] = {
		"scende dal posatoio e si scuote dal colletto semi d'erba e polvere, l'ultima parola della pianura.",
		"si spazzola le maniche dopo essere {g:sceso|scesa}, e una polvere fine se ne va via oltre il bordo.",
	},
	["thb.journey.w24.alight.004"] = {
		"Comunque fossero i miei capelli prima, adesso sembrano un nido che un falco ha abbandonato a metà.",
		"Mi servono un pettine, qualche minuto e nessuno che guardi. Il volo mi ha sistemato i capelli secondo i suoi gusti.",
	},
	["thb.journey.w24.alight.005"] = {
		"sbatte forte le palpebre dopo essere {g:sceso|scesa}, gli occhi punti dal volo, e le capanne oltre il posatoio tornano lentamente a fuoco.",
		"si strofina gli occhi, che bruciano per la corsa nell'aria, e lascia che tende e pali dell'altura ritrovino i loro contorni.",
	},
	["thb.journey.w24.alight.006"] = {
		"Le assi non si muovono. Dopo la viverna, è quasi sospetto.",
		"Faccio qualche passo e continuo ad aspettarmi che il pavimento viri. Niente. I tauren costruiscono cose che restano ferme.",
	},
	["thb.journey.w24.alight.007"] = {
		"lascia la piattaforma passando accanto a un tauren in attesa di partire, che fa un solo, lento cenno del capo, di quelli che sembrano salutare anche la bestia.",
		"passa vicino a un tauren seduto accanto al posatoio, con un fagotto sulle ginocchia, che alza gli occhi, fa un cenno senza fretta e torna ad aspettare.",
	},
	["thb.journey.w24.alight.008"] = {
		"Fuori dal vento, la città torna ad avere un odore: olio per il cuoio, pelli umide, qualcosa a base di mais che sobbolle su un fuoco lì vicino.",
		"Il volo si porta via ogni odore. Poi scendo e tornano tutti insieme: cuoio conciato, erba schiacciata e una pentola di qualcosa che seguirei ovunque.",
	},
	["thb.journey.w24.alight.009"] = {
		"Grazie. La stessa bestia la prossima volta, se le va.",
		"Grazie a tutti e due. Vado a ritrovare le gambe laggiù, da qualche parte.",
	},
	["thb.journey.w24.alight.010"] = {
		"slaccia la sacca da dietro la sella, controlla le cinghie con uno strattone e se la mette in spalla allontanandosi.",
		"libera la borsa dagli anelli della sella e la tasta due volte, per abitudine e per sicurezza, perché il volo non si sia tenuto niente.",
	},
	["thb.journey.w24.alight.011"] = {
		"Tasche controllate. Monete tutte presenti. Mulgore dovrà farsi la fortuna da sé.",
		"Prima cosa appena giù dalla sella: una mano su ogni borsello, uno dopo l'altro. Ci sono tutti. La pianura, questa volta, da me non avrà niente.",
	},
	["thb.journey.w24.alight.012"] = {
		"fa tre passi fuori dal posatoio, al riparo di una capanna, e l'improvvisa quiete delle pelli ferme tutt'intorno è quasi rumorosa.",
		"si ripara dietro la prima parete di tenda oltre il posatoio, e il mondo diventa d'un tratto silenzioso e mite, come uscire da un fiume.",
	},
	["thb.journey.w24.alight.013"] = {
		"Quassù tutti parlano piano, ma dopo il volo le loro voci mi arrivano dritte nell'orecchio. Mi ritrovo a rispondere sottovoce.",
		"Le orecchie sono ancora tarate sul rombo, così un tauren che mormora a tre passi suona come un grido. Annuisco troppo forte, a nessuno.",
	},
	["thb.journey.w24.alight.014"] = {
		"tiene le mani, fredde per il volo, sopra un focolare vicino al posatoio, e le gira come pane su una pietra calda.",
		"si ferma al primo fuoco oltre il posatoio per scacciare dalle dita il freddo del volo.",
	},
	["thb.journey.w24.alight.015"] = {
		"Qualcuno mi indichi da mangiare. Piano. Sto ancora virando a sinistra.",
		"Da che parte è la panca più vicina? Tranquilli, ci arrivo a piedi. Più o meno in linea retta.",
	},
	["thb.journey.w24.alight.016"] = {
		"Il primo passo sul posatoio suona enorme. Lassù, niente di quello che facevo faceva rumore.",
		"Buffo quanto rumore fa un piede sul legno, dopo un po' passato dove niente tocca niente.",
	},
	["thb.journey.w24.alight.017"] = {
		"si allontana dal posatoio con la dignità a gambe arcuate di chi è appena sceso da qualcosa di molto largo.",
		"si avvia attraverso l'altura con l'andatura ondeggiante di chi ha cavalcato, che un tauren di passaggio finge con garbo di non notare.",
	},
	["thb.journey.w24.alight.018"] = {
		"smonta mentre due giovani tauren al bordo del posatoio osservano la bestia con l'attenzione solenne dei bambini a cui hanno detto di non toccare.",
		"scende sotto lo sguardo di due giovani tauren vicino al posatoio, che studiano la viverna come se pensassero di chiederne una.",
	},
	["thb.journey.w24.alight.019"] = {
		"scende mentre un troll aspetta sul bordo del posatoio la prossima bestia, e i due si scambiano il piccolo cenno d'intesa di chi ha la stessa opinione sulle selle.",
		"lasciando la piattaforma passa accanto a un orco in fila per un volo; nessuno dei due parla, ma l'occhiata dell'orco a quell'andatura rigida dice parecchio.",
		"incrocia lo sguardo di un Reietto in attesa di volare, che studia come scende dalla sella e sembra prenderne nota per dopo.",
	},
	["thb.journey.w24.alight.020"] = {
		"Mentre scendevo una mano enorme mi si è chiusa sotto il gomito e mi ha lasciato appena ho trovato l'equilibrio. Non ho visto di chi fosse. Per quel che ho capito, i tauren aiutano così.",
		"Qualcuno mi ha sorretto mentre scendevo di sella, una mano grande come una pala, sparita prima che potessi voltarmi a ringraziare.",
		"Sono {g:inciampato|inciampata} scendendo dalla bestia e un palmo gigantesco mi ha preso la spalla, mi ha rimesso in piedi e se n'è andato. Quassù la gentilezza non aspetta i ringraziamenti.",
	},
	["thb.journey.w24.alight.021"] = {
		"scende in una folata che porta l'odore aspro delle rastrelliere della concia, e storce il naso prima ancora di aver finito di arrivare.",
		"al bordo del posatoio l'accoglie l'odore del cuoio in concia che arriva da Hunter Rise, tanto forte da sembrare un saluto.",
		"smonta e sente un sentore di tannino e pelli bagnate venire da qualche parte oltre le alture: il benvenuto tutto particolare della città.",
	},
	["thb.journey.w24.alight.022"] = {
		"Bello essere di nuovo tra la gente. Il cielo è una pessima compagnia: non risponde mai.",
		"È pane speziato quello che sento? Non importa dove sia, indicatemi solo la direzione.",
		"Amici, un attimo. Devo ricordarmi da che parte sta il basso.",
	},
	["thb.journey.w24.approach.001"] = {
		"osserva una macchia scura in fondo alla pianura che si rifiuta di essere una collina, poi si divide, piano, in alture separate man mano che la viverna si avvicina.",
		"vede la rupe prima come un'unica sagoma scura sull'erba, e solo nell'ultimo tratto quella sagoma si apre in alture con il cielo in mezzo.",
		"riconosce la città prima dai bordi netti, linee dritte dove la pianura non ne ha, e poi dalla foschia leggera dei suoi fuochi.",
	},
	["thb.journey.w24.approach.002"] = {
		"Arrivando di fianco, le pareti mostrano le loro fasce: rosso, ocra, una striscia color ruggine, una color crosta di pane. Dai ponti si vede solo il pavimento della città, mai i suoi fianchi.",
		"Dal cielo le alture mostrano quello che nascondono a chi ci cammina sopra: i fianchi, a strisce rosse e chiare come una pagnotta tagliata.",
	},
	["thb.journey.w24.approach.003"] = {
		"segue l'ombra della viverna che scivola su un'altura, increspa le tende, cade oltre la parete e riappare piccola e in ritardo sull'erba, molto più in basso.",
		"vede l'ombra della bestia correre avanti sopra le capanne di un'altura, sparire oltre il bordo e ricomparire nella pianura, minuscola, ancora di fretta.",
	},
	["thb.journey.w24.approach.004"] = {
		"Sulle cime di certe tende ci sono disegni dipinti che nessuno, camminando sui ponti, potrebbe mai vedere. O i tauren dipingono per gli uccelli, o per chi arriva in viverna. Lo prendo come un benvenuto.",
		"Da lassù vedevo i disegni sulla cima delle tende, cerchi e zigzag che da terra nessuno guarda. Chissà per chi li hanno fatti.",
	},
	["thb.journey.w24.approach.005"] = {
		"passa basso sopra un ponte di corda dove un tauren si ferma a metà, alza lo sguardo e solleva una mano enorme, come per salutare un vicino oltre la staccionata.",
		"sfiora un ponte tanto da vedere un tauren che si ferma, piega le corna all'insù e alza una mano, senza fretta, prima di riprendere il cammino.",
	},
	["thb.journey.w24.approach.006"] = {
		"Passando davanti alla parete si sono alzati dei falchi, una dozzina tutti insieme, e per un attimo la viverna era solo l'uccello più grosso della compagnia.",
		"Siamo passati così vicini alla parete che gli uccelli sono schizzati fuori dalle crepe. La bestia li ha ignorati con grande dignità.",
	},
	["thb.journey.w24.approach.007"] = {
		"scorge, su una cengia appena sotto un'altura, una fila di coperte tessute stese a prendere aria, vivaci come una striscia di perline contro la roccia.",
		"nota dall'alto ciò che i ponti nascondono: una cengia stretta sotto un'altura dove qualcuno ha steso coperte rosse e ocra, lontano dagli occhi di tutti tranne che del cielo.",
	},
	["thb.journey.w24.approach.008"] = {
		"La viverna l'ha capito prima di me. Ha girato la testa verso il posatoio mentre io cercavo ancora di distinguere un'altura dall'altra.",
		"Io non vedevo ancora il posatoio, e la bestia aveva già voltato la testa da quella parte e cominciato a scendere.",
	},
	["thb.journey.w24.approach.009"] = {
		"guarda le alture mentre la bestia gira in tondo e vi riconosce la pianta di un accampamento: capanne in cerchi larghi, i fuochi nel mezzo, come se le tribù avessero piantato quassù le tende della pianura e poi fossero rimaste.",
		"vede dall'alto come le capanne stiano in anelli sparsi attorno ai loro focolari, come un campo montato sull'erba aperta, solo sollevato fino al cielo.",
	},
	["thb.journey.w24.approach.010"] = {
		"Quattro rocce, un mucchio di corda e in cima la città più tranquilla di Kalimdor. Bello starci in piedi sopra.",
		"Vista da lassù sono quattro colonne e un po' di spago. Vista da qui, è il posto più saldo che conosca.",
	},
	["thb.journey.w24.approach.011"] = {
		"Dall'alto ogni altura ha il suo fumo, fili sottili piegati tutti dalla stessa parte, e la bestia ne ha attraversato uno dritta dritta. Adesso so della cucina di qualcuno.",
		"Siamo entrati attraverso un filo di fumo di un focolare. Ora il mantello sa del pasto di qualcun altro: una specie di benvenuto.",
	},
	["thb.journey.w24.approach.012"] = {
		"supera il bordo e vede, tra le capanne, la stessa erba verde della pianura, come se un pezzo di Mulgore fosse stato sollevato intero e i tauren ci si fossero semplicemente trasferiti.",
		"scende verso il posatoio sopra un'erba che cresce in cima alle alture come cresce giù in basso, corta, tenace, solcata da sentieri consumati dagli zoccoli.",
	},
	["thb.journey.w24.approach.013"] = {
		"Dall'alto ho visto una bella fila in attesa ai piedi degli ascensori. Saluterei, ma mi sembra crudele.",
		"C'è la coda giù agli ascensori. L'ho vista arrivando e ho provato una piccola, indegna soddisfazione.",
	},
	["thb.journey.w24.approach.014"] = {
		"arriva alla stessa altezza di un'aquila che cavalca la corrente sopra una parete; per qualche colpo d'ala volano fianco a fianco, poi l'uccello lascia loro il posatoio.",
		"divide l'ultima virata con un falco sospeso sul bordo di un'altura, che inclina un'ala, per niente colpito, e si scansa dalla bestia che scende.",
	},
	["thb.journey.w24.approach.015"] = {
		"Viste dal cielo, le alture sembrano una mandria che finalmente si è sdraiata a riposare. Gli anziani dicono che la nostra gente ha camminato per generazioni prima di fare lo stesso.",
		"Arrivando penso sempre a come avrebbero riso i vecchi viandanti, vedendo le loro tende appollaiate sulla pietra, lassù dove vanno solo i falchi. Poi penso a quanto ne sarebbero felici.",
	},
	["thb.journey.w24.approach.016"] = {
		"lascia che la viverna s'infili nel varco tra due alture, con un ponte che le scivola sopra la testa così vicino da far vibrare le corde, prima di piegare verso il posatoio.",
		"sente la bestia passare tra due alture, le pareti ai lati così vicine da poterne contare le crepe, prima di risalire verso il posatoio.",
	},
	["thb.journey.w24.approach.017"] = {
		"Una cosa dell'arrivare in volo: vedi tutta la città prima che lei veda te.",
		"È il modo migliore di entrare. Ti trovi la rupe stesa sotto come una mappa, e nessuno zoccolo sui piedi.",
	},
	["thb.journey.w24.approach.018"] = {
		"Arrivando al tramonto, le capanne si accendono una dopo l'altra sotto di me, ogni tenda illuminata da dentro come una lanterna di pelle.",
		"Arrivo all'imbrunire: le pelli delle capanne diventano color ambra per i fuochi che ci ardono dentro, e la città pare illuminata apposta per me. Non lo è.",
	},
	["thb.journey.w24.approach.019"] = {
		"arriva sopra una pianura che si fa oro e verde a grandi chiazze, e la rupe ne spunta come un'incudine, finché la bestia non s'inclina e diventa una città.",
		"vede arrivare i dettagli in ordine mentre la bestia scende: prima la forma delle alture, poi il colore delle tende, poi i pali, poi una sola figura su un ponte.",
		"scende verso la città e la guarda riempirsi come se la dipingessero dal bordo verso il centro: contorno, colore, e poi tutte le piccole cose che si muovono.",
	},
	["thb.journey.w24.approach.020"] = {
		"Ogni volta provo a individuare il posatoio prima della bestia. Ogni volta guardo l'altura sbagliata.",
		"Ho deciso che il trucco per trovare il posatoio dall'alto è smettere di cercarlo e lasciare che la viverna si dia arie.",
		"Dall'alto tutte le alture sembrano importanti uguali. Solo una ha un branco di viverne sdraiate sopra, ed era quella giusta.",
	},
	["thb.journey.w24.approach.021"] = {
		"vira sopra i varchi tra le alture, dove il terreno sprofonda in fenditure strette e in ombra, molto più in basso delle assi che la gente attraversa senza pensarci.",
		"guarda dritto in una delle fenditure tra le alture mentre la bestia gira, una fessura d'ombra e cespugli così profonda che il ponte sopra sembra coraggioso.",
		"passa sopra un varco tra due alture e intravede, proprio sul fondo, una striscia verde che in città nessuno guarda mai.",
	},
	["thb.journey.w24.ascent.001"] = {
		"sale finché i bordi della rupe restano indietro e la pianura si alza da ogni lato insieme, il verde che sfuma nell'oro e l'oro nella lontananza.",
		"prende quota con un'ampia virata, e Mulgore si stende sotto le ali una toppa dopo l'altra, come una coperta che qualcuno srotola.",
		"sale, e la pianura si apre allo sguardo da ogni lato, più ampia a ogni colpo d'ala, come se fino a quel momento fosse rimasta ripiegata attorno alla città.",
	},
	["thb.journey.w24.ascent.002"] = {
		"Due colpi d'ala oltre il ciglio e l'aria si fa un po' più fresca, come l'acqua di un torrente quando ci si spinge più al largo.",
		"Fa già più fresco. Il tepore della città resta laggiù coi fuochi; quassù l'aria la pensa a modo suo.",
		"A quest'altezza l'aria morde un po' le dita. La città il suo tepore se l'è tenuto; il cielo non ne tiene affatto.",
	},
	["thb.journey.w24.ascent.003"] = {
		"sale, e là sotto compaiono i torrenti di Mulgore, fili sottili e chiari posati alla rinfusa sull'erba.",
		"prende quota finché i ruscelli della pianura si mostrano, serpeggianti, pronti a tornare su se stessi come se non avessero alcuna fretta.",
	},
	["thb.journey.w24.ascent.004"] = {
		"Il primo minuto di volo è l'unico silenzio che nessuno può interrompere. Cerco di non sprecarlo a pensare.",
		"Adesso nessuno può raggiungermi: né un mercante, né un messaggero, né un amico con un favore da chiedere. Per un minuto o giù di lì il cielo è una porta chiusa a chiave.",
		"Nel primo tratto di un volo nessuno può trovarmi. Me lo godo come un bagno caldo.",
	},
	["thb.journey.w24.ascent.005"] = {
		"sale oltre l'altezza in cui i suoni della città si spengono, e laggiù un carro solitario arranca lungo una strada della pianura, con la polvere dietro come una coda.",
		"sale sopra la strada che si allontana dai piedi degli ascensori, dove un carro solo va per i fatti suoi alla velocità di chi lo tira.",
	},
	["thb.journey.w24.ascent.006"] = {
		"Da quassù un accampamento di quilboar è qualche puntino marrone e un filo di fumo. Non sono mai stati così carini.",
		"Da quest'altezza i quilboar ai margini della pianura sembrano quasi teneri. L'altezza è una pessima bugiarda.",
	},
	["thb.journey.w24.ascent.007"] = {
		"si volta durante la salita e vede Thunder Bluff per intero, come nessuno da dentro può vederla: un gruppo di pilastri di pietra con una città in testa.",
		"guarda indietro mentre la bestia sale, e la rupe mostra infine la sua forma vera: colonne di roccia a strati che spuntano dall'erba, con le tende posate in cima come cappelli.",
		"lancia un'occhiata alle spalle durante la salita, e solo ora la rupe appare per ciò che è: poche torri di pietra nuda piantate nell'erba, con un intero popolo che ci vive in cima.",
	},
	["thb.journey.w24.ascent.008"] = {
		"Piccoli stagni sparsi per la pianura, ognuno con un ritaglio di cielo dentro. Da lassù Mulgore sembrerebbe cucita di specchi.",
		"Ogni stagno sull'erba là sotto trattiene un pezzo di cielo, e la pianura sembra piena di piccoli buchi che la passano da parte a parte.",
		"I piccoli stagni di Mulgore ammiccano alla viverna uno dopo l'altro, come se la pianura volesse controllare chi passa.",
	},
	["thb.journey.w24.ascent.009"] = {
		"Salita regolare. Così. Nessuna fretta.",
		"Più su, allora. Voglio vedere tutta la pianura prima che sparisca.",
		"Piano e con calma. La pianura non scappa.",
	},
	["thb.journey.w24.ascent.010"] = {
		"allenta la presa sulla sella un dito dopo l'altro, mentre la salita si fa regolare e la rupe si assesta alle spalle.",
		"apre le mani quando la viverna si mette in piano, e solo allora sembra accorgersi di quanto stringessero.",
	},
	["thb.journey.w24.ascent.011"] = {
		"In città mi ci voleva un'eternità per attraversare una campata. La bestia ha superato tutta la rupe mentre sistemavo una cinghia.",
		"Tutta la strada fatta a piedi laggiù, ogni asse e ogni corsa d'ascensore, la viverna l'ha cancellata in pochi colpi d'ala.",
	},
	["thb.journey.w24.ascent.012"] = {
		"sale in un cielo limpido, e la pianura si apre fino alle colline più lontane, ogni strada e ogni torrente netti come se fossero stati appena disegnati.",
		"si alza in un'aria così tersa che il bordo lontano di Mulgore si vede chiaro quanto le assi del posatoio alle spalle.",
	},
	["thb.journey.w24.ascent.013"] = {
		"Lassù i tauren sono la cosa più grande che ci sia. Da qui sono puntini, e la pianura che hanno percorso per generazioni è grande come è sempre stata.",
		"In città tutto era fatto a misura di tauren. Ora l'intera città è più piccola della testa della viverna davanti a me.",
	},
	["thb.journey.w24.ascent.014"] = {
		"sale nel crepuscolo, e là sotto le tende della città si accendono una dopo l'altra, la luce dei fuochi che filtra attraverso le pelli.",
		"si alza dalla rupe mentre la luce cala, con la pianura già azzurra e la cima delle alture che trattiene ancora un ultimo filo di rosso.",
	},
	["thb.journey.w24.ascent.015"] = {
		"lascia il posatoio dritto nella nebbia, e in pochi colpi d'ala la città alle spalle è solo un odore di fumo e uno scricchiolio di corde.",
		"viene {g:inghiottito|inghiottita} dalla nebbia prima ancora che la bestia abbia lasciato il posatoio: svanisce prima il palo più vicino, poi le assi, poi tutto.",
	},
	["thb.journey.w24.ascent.016"] = {
		"Il maestro delle viverne ha studiato le nuvole a lungo prima di lasciar andare la bestia. Quassù, nella tempesta, capisco il perché.",
		"Lampi da qualche parte sopra la pianura, e la viverna che ci sale incontro. Il silenzio del maestro sul bordo diceva già abbastanza.",
	},
	["thb.journey.w24.ascent.017"] = {
		"sale nel buio, e le lanterne del posatoio si rimpiccioliscono alle spalle fino a diventare un unico punto caldo appeso al nulla.",
		"si allontana nella notte: la pianura sotto è tutta nera, e la città alle spalle è un mucchietto di piccole luci posate sul buio.",
	},
	["thb.journey.w24.ascent.018"] = {
		"Dopo lo strappo iniziale i colpi d'ala trovano il loro ritmo, e il volo smette di essere un evento e diventa un posto dove stare.",
		"Passato il primo minuto, gli scossoni finiscono. Resta solo la lunga trazione regolare delle ali e qualunque cosa abbia voglia di pensare.",
	},
	["thb.journey.w24.ascent.019"] = {
		"sale abbastanza da scorgere, sulle colline lontane, una cicatrice spoglia e bruna dove la Venture Company ha tagliato: brutta anche a questa distanza.",
		"prende quota, e da quassù lo spiazzo crudo della Venture Company si vede bene sui pendii lontani, una chiazza calva in mezzo al verde.",
	},
	["thb.journey.w24.ascent.020"] = {
		"sale finché la pianura, che dalla città sembrava piatta, comincia a mostrare le sue lunghe pieghe morbide, come una pelle non del tutto tesa.",
		"raggiunge l'altezza che basta per capire che Mulgore non è affatto piatta: ondeggia, lenta e larga, come il fianco di un animale addormentato.",
	},
	["thb.journey.w24.ascent.021"] = {
		"si piega nella lunga virata che porta via dalla città, e l'intera pianura si solleva da un lato come un vassoio retto da una mano distratta.",
		"si inclina insieme alla bestia che vira lontano dalle alture, e l'orizzonte sale, resta un attimo di sbieco, poi torna in piano.",
	},
	["thb.journey.w24.ascent.022"] = {
		"Tutta la pianura in un colpo d'occhio. Non me ne stancherò mai.",
		"Guarda quanta erba. Qualcuno dovrebbe falciarla.",
		"Ormai più in alto delle aquile. Che non mi sentano dirlo.",
	},
	["thb.journey.w24.ascent.023"] = {
		"Città alle spalle, cielo davanti. Mani, restate dove siete.",
		"C'è un bel po' d'aria qua sotto, adesso. Tienila lì, bestia.",
	},
	["thb.journey.w24.farewell.001"] = {
		"La città non mi ha mai chiesto di restare né mi ha mai messo fretta di andare. Un giorno vorrei essere un padrone di casa così.",
		"Lassù nessuno mi ha salutato di corsa. Me lo porto via come una pietra tiepida in tasca.",
		"In quella città nessun tauren mi ha messo fretta, mi ha dato meno di quanto potessi mangiare o mi ha lasciato andare senza una parola. Lo chiamerei un posto raro.",
	},
	["thb.journey.w24.farewell.002"] = {
		"Lascio Thunder Bluff un po' più {g:lento|lenta} di come ci sono {g:arrivato|arrivata}. Non coi piedi. Con tutto il resto.",
		"Ho preso dai tauren l'abitudine di guardare a lungo una cosa prima di parlarne. Le do tempo fino alla prossima città rumorosa.",
	},
	["thb.journey.w24.farewell.003"] = {
		"Cammina piano, Thunder Bluff. Io cercherò di volare allo stesso modo.",
		"Pace sulle alture, e su chiunque le custodisca.",
		"Lunga vita alle alture, e giorni lenti a chi ci abita.",
	},
	["thb.journey.w24.farewell.004"] = {
		"Della città non mi resta il panorama. Mi resta un vecchio tauren che sposta lo sgabello per farmi passare, e il lento cenno del capo che lo accompagna.",
		"Di tutto quello che c'era in città, ricorderò il lento cenno di uno sconosciuto sopra una ciotola. Strano, cosa sceglie di mettere in bisaccia la memoria.",
	},
	["thb.journey.w24.farewell.005"] = {
		"Ogni volta che lascio la rupe mi dico che anche la pianura mi sembrerà casa. Ed è quasi così. Quel quasi resta sulla rupe.",
		"Le alte tende della mia gente si fanno piccole alle spalle. Ovunque mi porti la viverna, una parte di me tiene un posto accanto a quei fuochi.",
	},
	["thb.journey.w24.farewell.006"] = {
		"Anche dal cielo sento la Madre Terra sotto l'erba, laggiù. La rupe è solo uno dei luoghi in cui mi tiene.",
		"La Madre Terra non resta sulla rupe quando io me ne vado. È tutta la pianura là sotto, e ogni strada che verrà.",
	},
	["thb.journey.w24.farewell.007"] = {
		"Non avrò mai corna né zoccoli né quella pazienza, eppure mi hanno lasciato dormire sotto le loro pelli. È un'accoglienza che non si dimentica.",
		"Per un po' ho vissuto tra i giganti: mi hanno dato da mangiare e un posto per dormire, e non mi hanno mai fatto pesare la mia statura, anche se la sentivo. Merita di essere ricordato.",
	},
	["thb.journey.w24.farewell.008"] = {
		"I tauren avrebbero tutte le ragioni per tenere i morti a distanza, e invece mi hanno steso una stuoia come a chiunque. Lo ricorderò più a lungo del panorama.",
		"Un popolo della terra viva, e hanno lasciato che uno dei morti girasse per le loro alture senza dargli fastidio. Andandomene, scopro di dover loro più di qualche moneta.",
	},
	["thb.journey.w24.farewell.009"] = {
		"Volevo comprare uno di quegli aghi d'osso intagliati prima di partire. Adesso c'è un bel po' di vuoto tra me e un ripensamento.",
		"Appena un minuto sopra la pianura e mi ricordo la cosa che dovevo fare in città. Ovvio.",
		"C'era ancora una cosa che volevo vedere su Spirit Rise. Può aspettare. La rupe non scappa.",
	},
	["thb.journey.w24.farewell.010"] = {
		"Grazie, città. Sei stata paziente con me.",
		"Addio, alture. Fuochi bassi e corde tese.",
	},
	["thb.journey.w24.farewell.011"] = {
		"La città non si accorgerà che me ne sono {g:andato|andata}. Non è una lamentela: certi posti riposano proprio perché per loro conti poco.",
		"Laggiù i fuochi continuano e gli anziani parlano ancora, e nessuno noterà il vuoto che ho lasciato. Lo trovo stranamente consolante.",
	},
	["thb.journey.w24.farewell.012"] = {
		"si volta una volta mentre le alture restano indietro, poi si gira in avanti sulla sella e da lì in poi tiene gli occhi davanti a sé.",
		"concede alla città che rimpicciolisce un ultimo lungo sguardo da sopra la spalla, poi si china in avanti sul collo della viverna.",
		"lancia un'occhiata alla città oltre la coda della viverna, le fa un cenno del capo come a un conoscente, e guarda avanti.",
	},
	["thb.journey.w24.farewell.013"] = {
		"Se potessi portare via una sola cosa dalla città, sarebbe la pazienza. Mi accontenterò di ricordare che faccia aveva.",
		"La calma di quel posto non si può imbottigliare, ma posso provare a ricordarne il suono: voci lente, pause lunghe, e nessuno che le riempia.",
	},
	["thb.journey.w24.farewell.014"] = {
		"Se chiedono alla locanda, ho pagato. Ho pagato davvero. Quasi tutto.",
		"Se qualcuno chiede, sono {g:partito|partita} in orario. In orario tauren, ma pur sempre in orario.",
	},
	["thb.journey.w24.farewell.015"] = {
		"I tauren sono stati nomadi per generazioni prima di stabilirsi sulla rupe. Ogni volta che volo via dal loro accampamento d'alta quota, penso che capirebbero questa smania.",
		"Un popolo che ha seguito le mandrie più a lungo di quanto chiunque sappia contare ha costruito quel posto per restarci. Andandomene, mi sento più simile ai loro antenati che a loro.",
	},
	["thb.journey.w24.farewell.016"] = {
		"alza una mano verso il posatoio in segno di saluto; il maestro delle viverne, senza staccare gli occhi da una fibbia, ne alza una a sua volta.",
		"solleva un braccio verso il posatoio che rimpicciolisce, e laggiù una grande mano si alza in risposta, lenta, senza fretta, prima di tornare al lavoro.",
	},
	["thb.journey.w24.farewell.017"] = {
		"dà un colpetto alla sacca dietro la sella per assicurarsi che ci sia tutto, mentre gli ultimi piccoli acquisti della città sobbalzano contro la schiena.",
		"controlla ancora una volta le cinghie della sacca mentre il posatoio resta indietro, come se la città potesse averci infilato qualcosa.",
	},
	["thb.journey.w24.farewell.018"] = {
		"Tenetemi un posto accanto al fuoco, tauren. Mi servirà.",
		"Restate pazienti, tutti quanti. Qualcuno deve pur esserlo.",
	},
	["thb.journey.w24.harness.001"] = {
		"dà un ultimo strattone all'imbracatura mentre la viverna sposta il peso da una zampa all'altra, e poi la piattaforma sparisce da sotto a tutti e due.",
		"tira per l'ultima volta la cinghia sul petto, sente la bestia intera tendersi come una corda, e lascia andare il palo.",
		"tira una volta ogni cinghia a portata di mano, e la viverna lo prende per un segnale: un passo, e sotto non c'è più niente.",
	},
	["thb.journey.w24.harness.002"] = {
		"Tre cinghie, due fibbie e un nodo fatto da chi bada alle viverne senza nemmeno guardare. Ho deciso di fidarmi soprattutto del nodo.",
		"Mi hanno stretto le cinghie senza una parola, e la carezza è andata alla bestia, non a me. So bene chi conta, quassù.",
	},
	["thb.journey.w24.harness.003"] = {
		"sente la coda della viverna sollevarsi dietro la sella mentre lascia il posatoio, e il pungiglione passa a un palmo educato dal suo orecchio.",
		"esce oltre il bordo con la coda uncinata della bestia che si arriccia sopra la sella, tanto vicina da sfiorare i capelli e, per fortuna, non di più.",
	},
	["thb.journey.w24.harness.004"] = {
		"Se quella cinghia teneva su qualcosa di importante, è il momento di dirmelo.",
		"Questa fibbia dovrebbe ballare così? Lascia stare. Ormai è tardi per chiederlo.",
	},
	["thb.journey.w24.harness.005"] = {
		"Le redini sono di cuoio intrecciato, lisce in due punti dove mille cavalieri si sono tenuti. Le mie mani trovano da sole quei due punti.",
		"Due chiazze lucide sulle redini, consumate da chi ha volato prima di me. Le dita vanno lì anche stavolta.",
	},
	["thb.journey.w24.harness.006"] = {
		"Piedi nelle staffe, ginocchia strette, redini corte e niente mani nella criniera. Chi bada alle viverne lo dice una volta, e una basta.",
		"Ginocchia dentro, talloni giù, mani lontane dalla criniera. Nella testa sento ancora quella voce lenta mentre la piattaforma resta indietro.",
	},
	["thb.journey.w24.harness.007"] = {
		"sente le perline annodate all'imbracatura battere tra loro al primo colpo d'ala, poi tacere quando il volo si fa liscio.",
		"si avvia con un piccolo tintinnio di perline di legno sull'imbracatura, che diventa un ticchettio regolare al ritmo delle ali.",
	},
	["thb.journey.w24.harness.008"] = {
		"Nel primo tratto le nocche mi diventano sempre bianche sulle redini. Poi la bestia si calma, e piano piano restituisco loro il colore.",
		"Il primo minuto in volo stringo le redini come se mi dovessero dei soldi. Il secondo, come la mano di un amico.",
	},
	["thb.journey.w24.harness.009"] = {
		"prende il volo con la pioggia che fa perle sull'imbracatura unta, le cinghie diventate scure e scivolose sotto le dita.",
		"abbandona il posatoio sotto la pioggia, e la bestia si scrolla l'acqua dalla criniera una volta, forte, prima del primo colpo d'ala.",
	},
	["thb.journey.w24.harness.010"] = {
		"Piano. Tu la strada per uscire di qui la conosci meglio di me.",
		"Va bene, bestia, il cielo è tuo. Io sono solo bagaglio con delle opinioni.",
		"Vai pure, e io cercherò di non aiutarti.",
	},
	["thb.journey.w24.harness.011"] = {
		"sente la bestia emettere un grugnito acido mentre lascia il posatoio, il verso di chi ha accettato e ora se ne pente.",
		"si mette in viaggio con la viverna che borbotta in fondo al petto per il peso che ha sulla schiena, una lamentela che tira avanti per tutto il primo tratto.",
	},
	["thb.journey.w24.harness.012"] = {
		"scioglie le cinghie della sella una a una, il cuoio rigido e freddo per l'altezza, e si scansa prima che la bestia si scrolli.",
		"sgancia l'ultima cinghia e scivola giù, e subito la bestia ha un gran brivido dalla criniera alla coda, come un cane uscito dal fiume.",
		"allenta il sottopancia con un grugnito di fatica, e la viverna, libera, spalanca le ali tanto da sgombrare la piattaforma dai curiosi.",
	},
	["thb.journey.w24.harness.013"] = {
		"L'imbracatura si toglie alla bestia in un minuto. A me la sensazione si toglie più o meno all'altezza della banca.",
		"Fuori dalle cinghie, finalmente. Le gambe credono di esserci ancora legate e camminano di conseguenza.",
	},
	["thb.journey.w24.harness.014"] = {
		"guarda il maestro delle viverne sollevare la sella e appenderla a un piolo tra una dozzina di altre, ognuna con le sue strisce sulla coperta.",
		"vede l'imbracatura sfilata alla bestia finire su un piolo di legno accanto al trespolo, ancora oscillante, con le perline che battono, mentre la successiva viene giù.",
	},
	["thb.journey.w24.harness.015"] = {
		"Le mani mi sanno di cuoio unto e di viverna. Me ne accorgerò più tardi, allungando la mano verso qualcosa alla locanda, e per un attimo sarò lassù.",
		"Cuoio e bestia sulle dita. È la parte del volo che viene con me in città.",
	},
	["thb.journey.w24.harness.016"] = {
		"Le cinghie hanno tenuto, la bestia ha tenuto, io ho tenuto. Ottimo lavoro, tutti.",
		"Ogni fibbia ha fatto il suo dovere. Ringraziate chi le ha cucite.",
	},
	["thb.journey.w24.harness.017"] = {
		"slaccia le fibbie nella tempesta con le dita intorpidite, le cinghie gonfie e pesanti d'acqua, mentre la bestia si curva le ali sopra la testa come un mantello.",
		"atterra sotto una tempesta violenta, l'acqua che cola da ogni cinghia, e due grandi mani prendono subito le redini e portano la bestia al riparo.",
	},
	["thb.journey.w24.harness.018"] = {
		"Il posatoio dell'Orda, una bestia dell'Orda, e un tauren a prendere le redini. È bello scendere tra alleati.",
		"Ali dell'Orda, posate sulle rupi dei tauren. Grazie di cuore.",
	},
	["thb.journey.w24.harness.019"] = {
		"Il maestro delle viverne dice che le imbracature, qui, le annodano sempre le stesse poche mani giù a Hunter Rise, e sono loro a ripararle. Ci credo: ogni nodo della mia sembrava una firma.",
		"A sentire chi cura le viverne, il cuoio delle imbracature lo lavorano a Hunter Rise, e lo annoda gente che non vola mai. Strano affidare la vita a chi non ha mai lasciato la terra.",
	},
	["thb.journey.w24.homing.001"] = {
		"Nella maggior parte delle città la viverna ti riporta a terra. Qui ti lascia in cima, e la terra la rimanda a più tardi.",
		"Altrove un volo finisce al livello del suolo. Questo finisce in cima, e il suolo è affare di qualcun altro.",
	},
	["thb.journey.w24.homing.002"] = {
		"Il volo è stato tutto fretta. Alla città non importa: era calma prima del mio arrivo e lo sarà dopo la mia partenza. Mi piace farmi superare dalla quiete.",
		"Lassù era tutto velocità. Quaggiù nessuno ha più avuto fretta da quando hanno alzato le capanne, e non cominceranno certo per me.",
	},
	["thb.journey.w24.homing.003"] = {
		"Pace al posatoio e a chi lo custodisce.",
		"Che le assi reggano e i fuochi durino. È bello essere sulla rupe.",
	},
	["thb.journey.w24.homing.004"] = {
		"Un minuto fa quest'altura era una cosa grande come una moneta sulla pianura. Ora è un posto con un odore, un po' di gente e un'asse storta su cui per poco non inciampo. La preferisco così.",
		"Dall'alto avrei potuto coprire tutta la città con una mano. Adesso che ci sto dentro, tra le tende non riesco nemmeno a vederne l'altro capo.",
	},
	["thb.journey.w24.homing.005"] = {
		"Piedi a terra, e via la lista: qualcosa di caldo da mangiare, un salto alla banca, e un posto dove sedermi senza che nessuno mi voglia in piedi.",
		"Giù. Adesso le piccole cose in fila: un pasto, un bancone, una panca. La città aspetterà mentre le sbrigo; lo fa sempre.",
		"Giù, e i piedi scelgono già la strada da soli: prima la banca, poi da mangiare, poi la panca più tranquilla dell'altura.",
	},
	["thb.journey.w24.homing.006"] = {
		"La bestia mi ha posato giù, e la prima cosa che ho sentito sotto i piedi è stato il legno vecchio del posatoio. Casa è un suono, prima di ogni altra cosa.",
		"Madre Terra, sono di nuovo tra i miei. Le capanne, le voci lente, l'odore delle pelli. Non sapevo quanto mi fossero mancate finché non ho toccato terra.",
	},
	["thb.journey.w24.homing.007"] = {
		"Qualunque guaio abbia l'Orda là fuori, non si è arrampicato su queste pareti. Atterrare qui è come posare uno zaino pesante sulla soglia di un amico.",
		"La città di un alleato, e la più paziente che abbiamo. Qui posso essere {g:lento|lenta} senza che nessuno mi stimi di meno.",
	},
	["thb.journey.w24.homing.008"] = {
		"A Orgrimmar ci sarebbero già tre persone a urlarmi contro. Qui chi bada alle viverne fa solo un cenno, e quel cenno dura più di quasi tutte le conversazioni tra orchi.",
		"Un orco si abitua al rumore. Qui, appena atterro, il silenzio è così fitto che continuo a voltarmi per vedere chi mi si avvicina di soppiatto.",
	},
	["thb.journey.w24.homing.009"] = {
		"Cairne ha parlato per quelli come me quando pochi l'avrebbero fatto. Non lo dimentico quando la viverna mi posa quassù, tra la gente che gli ha dato ascolto.",
		"Ci hanno accolti nell'Orda anche per la parola dei tauren. Sulla loro rupe atterro con un po' più di riguardo che altrove.",
	},
	["thb.journey.w24.homing.010"] = {
		"Quassù niente somiglia alle isole: niente risacca, niente liane, solo erba e cielo. Ma i tauren fanno spazio come i Darkspear, senza tante storie.",
		"Lontana dal mare, questa rupe. Eppure atterro, qualcuno mi fa un cenno, e a un troll basta per sentirsi a casa.",
	},
	["thb.journey.w24.homing.011"] = {
		"Ciao, rupe. Mi sono {g:perso|persa} qualcosa? No, certo che no. Qui niente corre abbastanza da poterselo perdere.",
		"Eccomi sull'altura. Ditemi che non è cambiato niente; a questo ritmo sarebbe un peccato non accorgersene.",
	},
	["thb.journey.w24.homing.012"] = {
		"Al posatoio nessuno mi ha chiesto da dove venissi né cosa avessi combinato. Hanno solo preso le redini. C'è una gentilezza, in questo, che non trovo ovunque.",
		"Nessuna domanda all'arrivo. Un cenno, una mano per le redini, e posso essere soltanto qualcuno che scende da una piattaforma.",
	},
	["thb.journey.w24.homing.013"] = {
		"alza gli occhi, appena {g:sceso|scesa}, verso il cielo vuoto di cui faceva parte fino a un attimo fa, e lo trova già richiuso, come se nessuno ci fosse passato.",
		"lancia uno sguardo in alto dal posatoio; la strada che la bestia ha tagliato nell'aria non ha lasciato alcun segno, e il cielo continua a essere immenso anche senza chi lo attraversava.",
	},
	["thb.journey.w24.homing.014"] = {
		"Arrivando sopra tutta quell'erba aperta, capisco meglio la rupe. Nella pianura ti vedono da miglia. Quassù, finalmente, a guardare erano i tauren.",
		"Dalla viverna la pianura è bellissima, ed è anche spalancata, senza un posto dove nascondersi. Atterrando sulla rupe credo di capire perché un popolo braccato sia salito fin qui.",
	},
	["thb.journey.w24.homing.015"] = {
		"Il resto lo faccio a piedi. Con i ponti posso discutere; il cielo non ascolta mai.",
		"Basta cielo per un po'. Da qui in poi, assi di legno, grazie.",
	},
	["thb.journey.w24.homing.016"] = {
		"Siamo scesi in una nebbia così fitta che il posatoio è spuntato sotto le zampe della bestia come una zattera. Adesso ci sto sopra, e il resto della città è fatto solo di voci.",
		"La nebbia si è mangiata la pianura durante la discesa e mi ha restituito il posatoio solo all'ultimo istante. Oltre, solo mormorii e sagome di tende.",
	},
	["thb.journey.w24.homing.017"] = {
		"scende con forza nella tempesta, le ali della bestia che schioccano come tela bagnata, e chi custodisce il posatoio afferra la briglia con entrambe le mani prima della raffica successiva.",
		"piomba sul posatoio con la tempesta che spinge da ogni lato; qualcuno ha già legato le selle di riserva, e scivola giù in fretta, piegandosi contro il vento.",
	},
	["thb.journey.w24.homing.018"] = {
		"Sereno fino all'arrivo. Vedevo la città dall'altra parte della pianura, e se l'è presa comoda a farsi più grande.",
		"Nemmeno una nuvola durante la discesa. La rupe si alzava dall'erba con i contorni così netti da sembrare ritagliata nella carta.",
	},
	["thb.journey.w24.homing.019"] = {
		"scende nella quiete del posatoio di notte, dove gli unici suoni sono le bestie che si muovono e, oltre le alture, una voce bassa che canta per conto suo.",
		"smonta dalla bestia nella notte, le assi fresche e umide sotto i piedi, le stelle così vicine che l'altura sembra protendersi verso di loro.",
	},
	["thb.journey.w24.homing.020"] = {
		"La bestia mi ha portato con l'alba alle spalle, e l'ombra di ogni palo dell'altura è così lunga che ci si potrebbe inciampare.",
		"Atterraggio all'alba. Ogni capanna ha il lembo legato aperto e le pelli fumano appena mentre il freddo se ne va.",
	},
	["thb.journey.w24.homing.021"] = {
		"Mi piace che questa città non abbia porte. Ci arrivi salendo dall'erba o scendendo dal cielo, e in un modo o nell'altro ti lascia entrare.",
		"Niente mura, niente cancello, nessuno al posatoio che mi chieda cosa vengo a fare. Thunder Bluff accoglie chi arriva come l'erba accoglie le impronte.",
		"Le altre capitali ti fanno bussare. Questa chiede solo di non cadere durante l'arrivo.",
	},
	["thb.journey.w24.homing.022"] = {
		"Dopo tanto cielo vuoto, un'altura affollata è un sollievo. Non ho bisogno che qualcuno mi parli. Mi basta che ci siano.",
		"Finito il volo, il semplice rumore di altra gente alle prese con le sue faccende è tutta la compagnia che voglio.",
		"Lassù c'eravamo io, la bestia e il niente. Quaggiù ci sono cento piccole vite a portata d'orecchio, e mi accontento di essere una in più.",
	},
	["thb.journey.w24.homing.023"] = {
		"resta sul posatoio un momento più del necessario, lasciando che il passo lento della città si posi su ogni cosa, come una coperta dopo la fretta del volo.",
		"si attarda al bordo del posatoio a guardare le alture che sbrigano senza fretta le loro faccende, e rallenta il proprio passo per adeguarsi.",
		"aspetta accanto al posatoio che l'urgenza del volo scivoli via dalle spalle, poi entra in città alla velocità della città.",
	},
	["thb.journey.w24.homing.024"] = {
		"Tre cose che ho imparato sull'atterrare qui: la bestia sa la strada, chi bada alle viverne conosce la bestia, e nessuno dei due ha bisogno dei miei consigli.",
		"Durante l'atterraggio il mio compito era reggermi e tacere. Una delle due cose l'ho fatta bene.",
		"Arrivo in volo, tocco terra, nessuno applaude. I tauren sono un pubblico difficile: di viverne ne hanno viste tante.",
	},
	["thb.journey.w24.liftoff.001"] = {
		"sente le assi del posatoio cedere un'ultima volta sotto gli artigli della bestia, poi sotto di entrambi non resta che aria.",
		"viene {g:schiacciato|schiacciata} nella sella dalla spinta della viverna, e alle spalle le assi del posatoio battono una volta, come una porta che si chiude.",
		"ondeggia all'indietro quando le zampe posteriori della bestia spingono contro la piattaforma, e la mano del maestro delle viverne lascia la bardatura con un attimo di ritardo.",
	},
	["thb.journey.w24.liftoff.002"] = {
		"Dopo aver girato tutta la città al passo dei tauren, questa velocità improvvisa mi sembra quasi una scortesia.",
		"La città mi ha insegnato a rallentare. La viverna, a quanto pare, quella lezione se l'è persa.",
		"Lassù tutti se la prendono comoda. La bestia invece parte come se avesse un debito da saldare.",
	},
	["thb.journey.w24.liftoff.003"] = {
		"Tenetemi da parte la città, d'accordo? La voglio trovare dove l'ho lasciata.",
		"Si parte. Cerca di non agganciare un palo di tenda, uscendo.",
		"Piano. Le tende non c'è bisogno di guardarle così da vicino.",
	},
	["thb.journey.w24.liftoff.004"] = {
		"attraversa in uscita il fumo sottile di un fuoco da cucina e ne esce dall'altra parte con addosso il suo odore.",
		"passa dentro un nastro di fumo salito da qualche tenda, e per un istante la città è un odore più che una vista.",
		"esce attraversando un velo grigio di fumo delle tende, e per la durata di un colpo d'ala della città non vede più nulla.",
	},
	["thb.journey.w24.liftoff.005"] = {
		"Appena gli artigli lasciano le assi la città tace, come se qualcuno avesse lasciato cadere il lembo di una tenda su tutto quanto.",
		"Una spinta, e le voci della città spariscono. Non sfumano: spariscono, come quando si mette il coperchio a una pentola.",
		"Il posatoio era tutto voci e scricchiolii. Due colpi d'ala dopo restano solo le ali e l'aria che mi fischia nelle orecchie.",
	},
	["thb.journey.w24.liftoff.006"] = {
		"si volta una volta sola e vede il maestro delle viverne già di spalle, intento ad accompagnare la bestia successiva verso il bordo.",
		"si guarda alle spalle e scopre che nessuno sul posatoio sta seguendo la partenza: il maestro è già alle prese con un'altra sella.",
		"si gira sulla sella e vede il maestro delle viverne che già prende le redini del prossimo viaggiatore: questa partenza è conclusa e dimenticata.",
	},
	["thb.journey.w24.liftoff.007"] = {
		"Le prime a capirlo sono le orecchie. Si accorgono dell'altezza sempre un attimo prima del resto di me.",
		"Uno schiocco nelle orecchie, un sobbalzo da qualche parte sotto le costole, e la città è già alle spalle.",
		"Qualcosa nelle orecchie cede con un piccolo clic, e gli ultimi suoni della città tornano sottili e lontani, come dal fondo di un pozzo.",
	},
	["thb.journey.w24.liftoff.008"] = {
		"Su, bestia. Con garbo, se conosci la parola.",
		"Ali aperte. Non diamo spettacolo al posatoio.",
		"Attenta ai pali, poi dritta fuori.",
	},
	["thb.journey.w24.liftoff.009"] = {
		"sorvola un tauren che attraversa l'altura centrale con una cesta e non alza nemmeno un orecchio.",
		"passa basso sopra due tauren immersi nei loro discorsi sotto il posatoio; nessuno dei due volta le corna per guardare.",
		"si lascia dietro un mercante che alza gli occhi, giudica la partenza poco importante e torna a piegare una coperta.",
	},
	["thb.journey.w24.liftoff.010"] = {
		"Un giovane tauren sulle assi là sotto agita tutte e due le braccia verso la viverna. Ricambio il saluto prima di pensarci su.",
		"Laggiù un piccolo tauren salta e indica in alto. Per lui, in questo momento, sono la cosa più emozionante del cielo.",
		"Giù sulle assi un piccolo tauren si è fermato di colpo a fissarmi. Mi raddrizzo un po' sulla sella. Mi sembra il minimo.",
	},
	["thb.journey.w24.liftoff.011"] = {
		"scende oltre il ciglio dell'altura, e per un lungo istante la parete scorre così vicina da poterne contare le fasce rosse e ocra.",
		"scivola lungo il fianco del pianoro prima che le ali facciano presa, mentre la roccia a strisce corre verso l'alto a pochi palmi dalle staffe.",
		"cade per un breve tratto lungo la parete del pianoro prima che le ali mordano l'aria, abbastanza vicino da vedere i licheni e un vecchio nido incastrato in una crepa.",
	},
	["thb.journey.w24.liftoff.012"] = {
		"Per un momento l'ombra della viverna corre sui tetti delle tende accanto a me, poi scivola oltre il bordo dell'altura e sparisce nel vuoto.",
		"L'ombra della bestia sale su una tenda, attraversa una passerella e cade giù dalla rupe. Meglio lei che io.",
	},
	["thb.journey.w24.liftoff.013"] = {
		"In questa città tutti scendono con l'ascensore. A me dicono che così si fa prima.",
		"C'è chi prende l'ascensore. C'è chi ha giudizio.",
		"Il modo più rapido per lasciare un pianoro. Il secondo più rapido, a voler essere onesti.",
	},
	["thb.journey.w24.liftoff.014"] = {
		"si stacca dal posatoio, e in un solo colpo d'ala la città passa dall'essere tutt'intorno all'essere tutta sotto.",
		"viene {g:sollevato|sollevata} dal posatoio, e la città che un attimo prima era pareti e lembi di tenda diventa all'improvviso una mappa.",
	},
	["thb.journey.w24.liftoff.015"] = {
		"Ci ho messo un bel po' a salutare alla locanda, alla maniera dei tauren. La viverna saluta con una spinta sola.",
		"Lassù i commiati sono lunghi e gentili. Quello della viverna è uno strattone.",
	},
	["thb.journey.w24.liftoff.016"] = {
		"Gli anziani dicono che un tauren che lascia l'altura deve voltarsi una volta, non di più. Mi volto una volta. È più difficile di quel che sembra.",
		"Una volta sola, dicono gli anziani. Uno shu'halo che lascia la rupe si volta una volta, e il resto lo lascia alla pianura.",
		"Voltati una sola volta, insegnavano i vecchi mandriani. Lo faccio, e la rupe è già più piccola di quanto vorrei.",
	},
	["thb.journey.w24.liftoff.017"] = {
		"esce a bassa quota sopra una tenda accanto al posatoio, abbastanza vicino da sentire qualcuno che canticchia dentro; poi la tenda è molto più in basso e il canticchiare è sparito.",
		"passa così vicino alla cima di una tenda, uscendo, che il lembo del fumo si agita nella scia della bestia, e dentro una voce sorpresa dice qualcosa di breve.",
		"esce sopra la tenda più vicina all'altezza dei suoi pali, e un tauren seduto sulla soglia alza una ciotola in un lento saluto.",
	},
	["thb.journey.w24.liftoff.018"] = {
		"Su! E se devi starnutire, avvisami prima.",
		"Via dal posatoio, allora. Che i tauren non mi vedano sussultare.",
	},
	["thb.journey.w24.liftoff.019"] = {
		"Piedi via dalle assi. Finalmente un modo di attraversare questa città che non ondeggia.",
		"Niente corde, niente ascensori, niente scale. Solo aria. Questo modo di uscire mi piace di più.",
	},
	["thb.journey.w24.rimward.001"] = {
		"vira sopra l'altura centrale, e le tende si mostrano come non fanno mai da terra: coni chiari, ciascuno con un foro scuro in cima per il fumo.",
		"si allarga oltre il posatoio, e da quassù ogni tenda della città è un cerchio di pali che si uniscono in una punta annerita.",
		"scivola larga sopra i tetti, e ogni tenda mostra dall'alto la stessa forma: un cerchio di pelle raccolto in cima in un nodo scuro.",
	},
	["thb.journey.w24.rimward.002"] = {
		"Da terra vedevo solo i ponti. Adesso vedo i vuoti che attraversano, e i vuoti sono molto più grandi.",
		"Buffo: camminando per la città guardo i piedi sulle assi. Sorvolandola, non riesco a guardare altro che il vuoto lì sotto.",
		"Attraversando la città non guardavo mai cosa c'era sotto le assi. Adesso non c'è altro da guardare: vuoto, e altro vuoto.",
	},
	["thb.journey.w24.rimward.003"] = {
		"sorvola Spirit Rise, dove la bocca scura dei Pools of Vision si apre nella roccia, immobile e indifferente a qualunque cosa passi in cielo.",
		"si inclina oltre Spirit Rise e scorge, tra le tende, la via in ombra che scende verso i Pools of Vision: una tacca scura nella pietra.",
	},
	["thb.journey.w24.rimward.004"] = {
		"Sopra Hunter Rise la bestia volta la testa, e immagino il perché: laggiù qualcuno sta affumicando carne.",
		"Passando sopra Hunter Rise la viverna lancia una lunga occhiata interessata. Non chiedo cosa abbia fiutato.",
		"La bestia annusa rumorosamente mentre il volo supera Hunter Rise. Laggiù qualcuno lavora una pelle fresca, e la viverna ha le sue opinioni in merito.",
	},
	["thb.journey.w24.rimward.005"] = {
		"si tiene alla larga da Elder Rise e vede, piccolo tra le tende, un orso che cammina senza fretta verso un'entrata, come se fosse atteso.",
		"passa alto sopra Elder Rise, quieta come sempre, dove l'unica cosa che si muove è un orso che va da una tenda all'altra col suo passo.",
	},
	["thb.journey.w24.rimward.006"] = {
		"Tre alture e quella grande. Le conto ogni volta che parto, come se una potesse essersene andata a spasso.",
		"Da quassù posso abbracciare tutta la città con uno sguardo, altura per altura: chi ci sta dentro non può farlo.",
	},
	["thb.journey.w24.rimward.007"] = {
		"passa sopra la cima degli ascensori proprio mentre arriva una piattaforma carica di viaggiatori, che scendono senza mai alzare gli occhi.",
		"guarda giù verso la sommità dei grandi ascensori, dove una piattaforma carica arriva a filo del bordo e qualcuno convince un kodo a scendere.",
		"osserva gli ascensori mentre una piattaforma scende e l'altra sale, con le corde che tremano: uno scambio di pesi fatto senza una parola.",
	},
	["thb.journey.w24.rimward.008"] = {
		"Ecco la locanda, ecco la banca, ecco la tenda dove ho mangiato troppo. Da quassù tutto il mio soggiorno sembra una manciata di sassolini su un tavolo.",
		"Tutti i posti dove sono {g:stato|stata} in città stanno là sotto in un mucchietto ordinato, molto più vicini di quanto credessero i miei piedi.",
		"La locanda, la banca, la panca dove sono {g:rimasto|rimasta} un po' a non far niente: ormai ci sta tutto tra due colpi d'ala della bestia.",
	},
	["thb.journey.w24.rimward.009"] = {
		"sfreccia accanto a un Bluffwatcher sul ciglio, che segue la bestia girando la testa senza fretta e poi torna a sorvegliare la pianura.",
		"passa sopra una guardia al bordo dell'altura, che concede alla viverna un'occhiata tranquilla e torna alla faccenda più seria dell'orizzonte.",
		"esce dalla città sotto lo sguardo di un Bluffwatcher che non si prende la briga di alzare la lancia: qualunque pericolo porti il cielo, non è questo.",
	},
	["thb.journey.w24.rimward.010"] = {
		"Da questa angolazione si vede quanto si incurva ogni ponte nel mezzo. Meno male che nessuno me l'ha mostrato prima di attraversarli.",
		"Viste di fianco, le campate tra un'altura e l'altra si piegano come corde stanche. La prossima volta le attraverserò più in fretta, credo.",
	},
	["thb.journey.w24.rimward.011"] = {
		"Qualcuno laggiù sta salutando. O scacciando una mosca. Da qui non si capisce.",
		"Saluta le tende, bestia. No? Va bene, saluto io.",
	},
	["thb.journey.w24.rimward.012"] = {
		"passa sopra la grande tenda dell'Alto Capo, con il tetto di pelle più ampio di tutta la città, e da quassù più piccolo di un palmo.",
		"guarda dall'alto la grande tenda dell'Alto Capo mentre la bestia sale: un ampio tetto chiaro in mezzo agli altri, con la pianura che già si vede oltre il bordo.",
	},
	["thb.journey.w24.rimward.013"] = {
		"Da qualche parte sulle alture dietro di me un tamburo suona ancora. Non lo sento più, ma vedo ancora muoversi le braccia di chi lo batte.",
		"Perdo i suoni della città prima di perderne la vista. Per un po' è come guardarla attraverso un vetro spesso.",
	},
	["thb.journey.w24.rimward.014"] = {
		"vede dall'alto i sentieri consumati e chiari che attraversano la cima delle alture, e tutti, prima o poi, finiscono sul bordo.",
		"segue dall'alto le tracce chiare che vanno da una tenda all'altra su ogni altura: linee che i passi della città hanno disegnato senza volerlo.",
	},
	["thb.journey.w24.rimward.015"] = {
		"Ormai più in alto del totem più alto. Sento che dovrei chiedere scusa a qualcuno.",
		"Per tutta la visita i totem mi hanno guardato dall'alto in basso. Ora tocca a me, e sono troppo {g:educato|educata} per godermela.",
		"Sorvolare i totem, adesso, è un po' come scavalcare le gambe di qualcuno.",
	},
	["thb.journey.w24.rimward.016"] = {
		"Da quest'altezza l'Orda là sotto è una folla sola: tauren, orchi, troll, Reietti, tutti della stessa misura, tutti presi dalle loro faccende.",
		"Da quassù nessuno là sotto ha più una razza. Solo piccole sagome sulle alture, e sono tutte dei nostri.",
	},
	["thb.journey.w24.rimward.017"] = {
		"scorge, stesa sul terreno di un'altura là sotto, una coperta a metà tessitura fissata coi picchetti, un quadrato rosso e ocra non più grande di un'unghia, da qui.",
		"distingue i quadratini colorati delle coperte stese sulle alture là sotto, vivaci tra le pelli chiare come perline su una manica.",
	},
	["thb.journey.w24.rimward.018"] = {
		"sorvola un tauren che porta due otri gocciolanti lungo il ciglio: li posa per guardar passare la viverna, e li riprende solo quando è sparita.",
		"passa accanto a un vecchio tauren seduto su una panca sul bordo, che segue la bestia per tutto il cielo con un solo, lento giro della testa, senza affrettare nemmeno quello.",
	},
	["thb.journey.w24.rimward.019"] = {
		"Ecco la locanda. Qualcuno sta ancora mangiando. Ma certo che qualcuno sta ancora mangiando.",
		"Guarda, l'ascensore scende senza di me. Peccato.",
	},
	["thb.journey.w24.roost.001"] = {
		"vede chi bada alle viverne arretrare solo quando gli artigli della bestia lasciano le assi, e voltarsi subito verso la prossima, come se la partenza fosse già una vecchia notizia.",
		"si gira e trova il maestro delle viverne già intento a spazzolare la criniera di un'altra bestia: per quella testa paziente, questo volo è finito nell'istante in cui è cominciato.",
	},
	["thb.journey.w24.roost.002"] = {
		"Chi bada alle viverne ha parlato alla bestia come gli anziani parlano a un vitello: piano, basso, certi che capisse ogni parola. Credo che capisse.",
		"Prima di lasciarci andare, ha guardato a lungo la bestia negli occhi, come un mandriano legge il cielo. A quanto pare, si leggeva bene.",
	},
	["thb.journey.w24.roost.003"] = {
		"porta in avanti tutto il suo peso sopra le spalle della bestia mentre il posatoio resta indietro, e la viverna, abituata ai tauren, non fa nemmeno un grugnito.",
		"si stende lungo il collo della bestia con le corna raccolte, come insegna chi bada alle viverne, per lasciare spazio alle ali.",
	},
	["thb.journey.w24.roost.004"] = {
		"Ho detto: pronti. La bestia ha aspettato di esserlo lei, e quello era tutto un altro momento.",
		"Su questo posatoio qualcuno decide quando si parte, e non è chi ha pagato.",
		"Si parte quando lo dice la bestia. Io, alla decisione, contribuisco solo con il peso in sella.",
	},
	["thb.journey.w24.roost.005"] = {
		"parte tra i brontolii delle bestie rimaste sui trespoli, ogni testa girata a guardare una di loro che se ne va.",
		"esce passando davanti a una fila di viverne a riposo, che alzano la testa una dopo l'altra al passaggio e poi la rimettono giù.",
	},
	["thb.journey.w24.roost.006"] = {
		"Te la riporto intera, promesso. O sarà lei a riportare me.",
		"Grazie del prestito. Te la restituisco con lo stesso numero di denti.",
	},
	["thb.journey.w24.roost.007"] = {
		"L'odore del posatoio viene via con me per un po': muschio di bestia, paglia vecchia, cuoio unto. Si assottiglia a ogni colpo d'ala, finché resta solo la viverna.",
		"Polvere di paglia e odore d'animale restano attaccati alla sella mentre ci allontaniamo. È l'ultima cosa della città che sento.",
	},
	["thb.journey.w24.roost.008"] = {
		"si lascia dietro un piccolo vortice di paglia sul posatoio, e chi lo custodisce, senza dire nulla, allunga la mano verso la scopa.",
		"si stacca in uno sparpagliarsi di paglia dal trespolo, mentre alle sue spalle una scopa è già al lavoro sulla piattaforma.",
		"solleva dalla piattaforma uno sbuffo di paglia e polvere al primo colpo d'ala, e qualcuno alle spalle starnutisce.",
	},
	["thb.journey.w24.roost.009"] = {
		"Chi bada alle viverne ha toccato la fronte della bestia e poi la mia, come fanno i nostri anziani prima di un viaggio. Porto il calore di quella mano oltre il bordo.",
		"Una mano sulla fronte della bestia, una sulla mia, all'uso antico. Poi le assi spariscono e resta solo il calore di quel palmo.",
	},
	["thb.journey.w24.roost.010"] = {
		"sale sotto lo sguardo di un piccolo vitello tauren ai piedi del posatoio, che segue tutta la salita della bestia a bocca aperta.",
		"si alza oltre un giovane tauren che sbircia in su accanto al posatoio, occhi spalancati, contando ad alta voce i colpi d'ala.",
	},
	["thb.journey.w24.roost.011"] = {
		"Al posatoio nessuna parola, solo un cenno del maestro delle viverne e un cenno di risposta. In questa città vale come un lungo saluto.",
		"Un solo cenno mentre prendevo le redini, e basta. Quassù nessuno spreca parole per ciò che un cenno sa portare.",
	},
	["thb.journey.w24.roost.012"] = {
		"scende e guarda il maestro delle viverne passare un pettine di legno nella criniera della bestia, piano, dalla testa alle spalle, senza alcuna fretta.",
		"lascia la bestia a chi la cura, che ha già in mano un pettine d'osso prima ancora che le ali siano chiuse e comincia dai nodi che ci ha messo il cielo.",
		"si attarda vicino al trespolo mentre la criniera della bestia viene pettinata, con chi la cura che canticchia basso e scioglie piano ogni nodo.",
	},
	["thb.journey.w24.roost.013"] = {
		"è appena a terra che la viverna tira verso l'abbeveratoio in fondo al posatoio e beve a lunghe leccate rumorose, senza vergogna.",
		"ha appena messo i piedi sulle assi che la bestia è già all'abbeveratoio, a lappare come un grosso gatto e a rovesciarne metà sul tavolato.",
	},
	["thb.journey.w24.roost.014"] = {
		"Chi bada alle viverne le conta al rientro come un mandriano conta i kodo, a occhio, senza numeri. La mia è contata. E, immagino, anch'io.",
		"Il maestro delle viverne squadra la bestia con un'unica occhiata lunga, come un mandriano alla fine di una transumanza. Pare che passiamo l'esame tutti e due.",
	},
	["thb.journey.w24.roost.015"] = {
		"Ha volato che era un sogno. Ha brontolato come una nonna, ma ha volato che era un sogno.",
		"Brava bestia, questa. Datele qualcosa di buono.",
		"Neanche una lamentela sulla bestia. Lei, su di me, forse qualcuna.",
	},
	["thb.journey.w24.roost.016"] = {
		"scende sul posatoio tra le viverne a riposo, e una apre un solo occhio dalla palpebra pesante, giudica chi è arrivato e lo richiude.",
		"atterra tra un fremito lungo i trespoli: le altre bestie alzano il muso ad annusare l'aria portata dal volo, poi si riassestano.",
	},
	["thb.journey.w24.roost.017"] = {
		"Conosco il punto dietro l'orecchio di una viverna che la fa appoggiare a te. Mezzo minuto di grattatine lì e siamo amici fino al prossimo volo.",
		"Una bella grattata sotto la mascella dopo l'atterraggio, e la bestia mi appoggia nella mano tutta la sua testa pesante. Vale più di qualunque mancia.",
		"La bestia mi spinge il muso contro la spalla mentre mi allontano. Lo chiamerò un grazie, senza pensare troppo ai denti.",
	},
	["thb.journey.w24.roost.018"] = {
		"si fa da parte mentre il maestro delle viverne spalma un unguento pungente sulle giunture delle ali, facendolo entrare con i pollici mentre la bestia brontola sorda.",
		"sente l'odore dell'unguento prima di vederlo: chi cura le viverne sta già passando un grasso dall'odore aspro nelle giunture delle ali, e la bestia socchiude gli occhi.",
	},
	["thb.journey.w24.roost.019"] = {
		"Un'occhiata dalla bestia mentre mi allontano: né affetto né ostilità. Lo sguardo che un kodo riserva a un palo di recinto.",
		"Mi piacerebbe pensare che la bestia si ricorderà di me. Da come mi volta le spalle, direi di no.",
	},
	["thb.journey.w24.roost.020"] = {
		"scende su assi segnate da artigli senza numero, i graffi più nuovi ancora chiari dove la bestia ha appena fatto presa.",
		"attraversa un tavolato solcato da segni d'artiglio, quelli vecchi ormai scuri e lisci, una serie fresca chiara accanto.",
		"percorre il posatoio su assi levigate in un sentiero dai trespoli agli scalini, consumato da ogni cavaliere che sia mai sceso di sella.",
	},
	["thb.journey.w24.roost.021"] = {
		"atterra all'alba mentre la prima luce arriva radente sul pianoro e tinge di rosso i bordi delle ali spalancate della bestia.",
		"scende all'alba su un posatoio ancora freddo e umido, le assi scure e le impronte degli artigli che restano chiare.",
	},
	["thb.journey.w24.roost.022"] = {
		"Il maestro delle viverne mi saluta nella nostra lingua, piano e semplice, e il volo mi scivola via dalle spalle. Sono tra la mia gente.",
		"Una parola di benvenuto alla maniera degli shu'halo, e le assi mi sembrano il pavimento della mia tenda.",
	},
	["thb.journey.w24.roost.023"] = {
		"scivola giù mentre la bestia lancia uno sbadiglio enorme, tutti i denti in mostra, e fa un passo prudente di lato prima di ringraziare.",
		"smonta giusto in tempo per godersi da vicino lo sbadiglio della viverna: una lunga caverna rosa di denti, offerta senza malizia e declinata con rispetto.",
	},
	["thb.journey.w24.roost.024"] = {
		"Ecco la tua bestia. L'ho trattata come una di famiglia. Meglio, a dirla tutta.",
		"Restituita con tutte le sue ali. Tutte e due. Ho controllato.",
	},
	["thb.journey.w24.roost.025"] = {
		"Già chi bada alle viverne porta la mia bestia al trespolo, e qualcun altro aspetta con la sella in mano. Quassù un volo finisce come un'onda sulla riva.",
		"Quando arrivo agli scalini, la mia bestia è già di qualcun altro. È così, a un posatoio: niente ti aspetta a lungo.",
	},
	["thb.journey.w24.roost.026"] = {
		"scende dalla bestia accanto a un Reietto in attesa del prossimo volo, che studia l'atterraggio con l'attenzione piatta di chi calcola le probabilità.",
		"consegna le redini mentre un orco, il prossimo in fila, osserva i denti della bestia con aperto sospetto e tiene una distanza prudente.",
	},
	["thb.journey.w24.saddle.001"] = {
		"si stacca dal bordo su una coperta da sella tessuta a strisce tauren, con la frangia che schiocca mentre la bestia trova l'aria.",
		"si allontana dal posatoio su una coperta a righe di fattura tauren, piegata spessa sotto la sella; le nappe volano all'indietro nella prima spinta del volo.",
	},
	["thb.journey.w24.saddle.002"] = {
		"Questa sella è stata tagliata pensando a un tauren. Ci sto in mezzo come un cece in una scodella e spero che le cinghie capiscano la differenza.",
		"In questa sella c'è posto per me e per un altro. Più piccole, i tauren non le fanno, a quanto pare: e allora mi tengo più forte.",
	},
	["thb.journey.w24.saddle.003"] = {
		"dondola piano al cigolio della sella mentre il volo si fa regolare, il cuoio che protesta a tempo con le ali.",
		"si adatta al lungo scricchiolio della sella, un lamento di cuoio per ogni colpo d'ala, mentre la città scivola via alle spalle.",
	},
	["thb.journey.w24.saddle.004"] = {
		"Ogni volta voglio partire con dignità. Poi la bestia salta, e la dignità resta sul posatoio insieme alle buone intenzioni.",
		"La mia dignità è rimasta su quel posatoio. La passo a prendere la prossima volta.",
	},
	["thb.journey.w24.saddle.005"] = {
		"Io e questa sella dovremo fare due chiacchiere.",
		"Qualcuno imbottisca questa sella. La prossima volta. Per favore.",
		"Ah. La sella si ricorda di me. Con affetto, spero.",
	},
	["thb.journey.w24.saddle.006"] = {
		"La bestia è calda sotto la sella e l'aria no. Mi chino più vicino a lei, e non sembra darle fastidio.",
		"Gelo in faccia, tepore che sale dalla sella. Sto in mezzo ai due e lascio andare la città.",
	},
	["thb.journey.w24.saddle.007"] = {
		"si raddrizza in sella quando la bestia si è alzata oltre il posatoio, e lascia le redini con una mano per sentire l'aria aperta scorrere tra le dita.",
		"si tira su in sella mentre la salita si fa piana, una mano morbida sulle redini, l'altra tesa e aperta nell'aria che corre.",
	},
	["thb.journey.w24.saddle.008"] = {
		"perde una staffa al primo sobbalzo, la ripesca con uno stivale sopra un salto lunghissimo e alla fine la ritrova con grande dignità.",
		"scalcia in cerca di una staffa perduta mentre la bestia vira via dalla piattaforma, e la riaggancia proprio quando il maestro delle viverne alza gli occhi.",
	},
	["thb.journey.w24.saddle.009"] = {
		"Bisacce chiuse, niente di sciolto, niente che penzoli. Quello che scivola giù da quassù ci mette troppo ad arrivare in fondo, per i miei gusti.",
		"Mentre ci allontaniamo conto ancora le bisacce, a tentoni. Quello che ho dimenticato adesso è sul posatoio, e lì resta.",
	},
	["thb.journey.w24.saddle.010"] = {
		"scende dalla sella dopo il lungo volo camminando come chi ha appena scoperto a cosa servono le gambe, e ha ancora dei dubbi.",
		"smonta dopo il lungo volo e resta a gambe larghe sulle assi, aspettando che la forma della sella {g:gli|le} esca dalle ginocchia.",
	},
	["thb.journey.w24.saddle.011"] = {
		"Un volo così lungo, e la sella mi ha stampato addosso tutta la sua mappa. Ne avrò da leggere per un'ora.",
		"Tanto tempo in aria che io e la sella abbiamo trovato un accordo. Ha vinto lei. Vado a zoppicare fino alla locanda per discutere le condizioni.",
	},
	["thb.journey.w24.saddle.012"] = {
		"scavalca la sella per smontare, impiglia uno stivale nella staffa e completa la manovra in due tempi, il secondo saltellando.",
		"scivola giù lungo il fianco della bestia più in fretta del previsto e arriva sulle assi raggomitolando le gambe, poi si rialza come se fosse tutto previsto.",
	},
	["thb.journey.w24.saddle.013"] = {
		"La sella è ancora tiepida quando me ne allontano. Per un attimo quasi ci risalgo, solo per restare un altro po' in nessun posto.",
		"Mi manca appena i piedi toccano le assi: la sella, le cinghie, il cielo che non mi chiedeva niente.",
		"Il cielo mi ha tenuto per un po', e adesso mi riprendono le assi. Resto immobile un attimo: la vita normale può aspettare.",
	},
	["thb.journey.w24.saddle.014"] = {
		"Da qui vado a piedi. Forse per sempre.",
		"Qualcuno mi tolga di dosso questa sella. Cioè, dalla memoria.",
		"Piedi a terra. Sella, per ora tra noi è finita.",
	},
	["thb.journey.w24.saddle.015"] = {
		"guarda la coperta a righe sfilata alla bestia e scrollata oltre il bordo del posatoio, una nuvoletta di peli e polvere che se ne va verso il basso.",
		"si scansa mentre chi bada alle viverne sbatte la coperta della sella sopra il vuoto, una volta, due, mandando uno sbuffo di peli verso il pianoro.",
	},
	["thb.journey.w24.saddle.016"] = {
		"Prima cosa, giù dalla sella: contare le bisacce. Ci sono tutte. Il cielo stavolta si è preso solo un po' della mia compostezza.",
		"Bisacce, tutte, ancora chiuse. Tasche, ancora piene. L'unica cosa persa lassù è la sensibilità delle dita dei piedi.",
	},
	["thb.journey.w24.saddle.017"] = {
		"dà alla sella una pacca riconoscente scendendo, si accorge di aver accarezzato il cuoio e non la bestia, e per correttezza accarezza anche la bestia.",
		"batte una mano sulla sella vuota appena a terra, poi, sotto lo sguardo della bestia, batte una mano anche su di lei.",
	},
	["thb.journey.w24.touchdown.001"] = {
		"sente gli artigli della viverna trovare le assi del posatoio con uno stridio strascicato, poi un colpo che risale per tutta la schiena.",
		"tocca terra con tale forza che i denti battono, e il legno del posatoio brontola sotto il peso della bestia e di chi la monta.",
		"atterra con uno scossone che fa tintinnare insieme ogni fibbia della sella, un piccolo coro di metallo sul posatoio silenzioso.",
	},
	["thb.journey.w24.touchdown.002"] = {
		"La viverna è atterrata come un gatto su un muretto: quattro zampe, niente storie, e un'occhiata all'indietro come a chiedermi perché mi aggrappassi tanto.",
		"Quattro zampe giù insieme, precise come niente. Su questo posatoio ha sussultato una creatura sola, e quella creatura ero io.",
	},
	["thb.journey.w24.touchdown.003"] = {
		"atterra tra le viverne a riposo, e una solleva la testa, squadra i due arrivati e torna a dormire.",
		"si posa tra le altre bestie del posatoio; qualche testa si alza, una coda schiocca, e una sbadiglia tanto da mostrare tutti i denti.",
	},
	["thb.journey.w24.touchdown.004"] = {
		"Il posatoio sa di viverna, cioè di cane bagnato, cuoio vecchio e qualcosa che preferisco non nominare. Il resto della città profuma meglio. Ci vado.",
		"Come ogni posatoio, anche questo sa di bestia, paglia e cuoio. Questo, almeno, alla prossima folata porta anche profumo di cucina.",
	},
	["thb.journey.w24.touchdown.005"] = {
		"atterra in una piccola nuvola di polvere e paglia, e chi custodisce il posatoio aspetta, senza fretta, che si posi prima di dire una sola parola.",
		"si posa con uno sbuffo di terriccio dalle assi; chi bada al posatoio lo lascia passare, sbatte le palpebre una volta, e solo allora si fa avanti.",
	},
	["thb.journey.w24.touchdown.006"] = {
		"Piano, piano. Queste assi sono più vecchie di tutti e due.",
		"Vacci piano col posatoio, bestiaccia. Qualcuno quei tronchi li ha dovuti portare fin quassù.",
	},
	["thb.journey.w24.touchdown.007"] = {
		"è ancora in sella quando la viverna si scuote dalla criniera alla coda come un cane uscito da uno stagno, e anche questa bisogna cavalcarla.",
		"riceve un ultimo scossone prima di smontare: la bestia fa tremare tutto il manto, da un capo all'altro, scrollandosi di dosso il volo con chi la monta ancora in groppa.",
	},
	["thb.journey.w24.touchdown.008"] = {
		"C'è un istante, appena prima che gli artigli tocchino, in cui tutta la città s'inclina per venirci incontro. Ho deciso di godermelo invece di temerlo.",
		"Nell'ultimo tratto sembra che sia il posatoio a salirci addosso, non noi a scendere. Poi si ferma, ci fermiamo, e la città torna una città.",
	},
	["thb.journey.w24.touchdown.009"] = {
		"atterra sul posatoio e sente l'intera piattaforma cedere di un dito sotto il peso, poi tenere, come fa il buon legname.",
		"scende su assi che cedono appena, scricchiolano una volta e reggono il peso senza lamentarsi.",
	},
	["thb.journey.w24.touchdown.010"] = {
		"Giù, e con tutti i miei pezzi. Bene.",
		"Atterrati. Niente caduto, niente perso, niente rotto.",
		"Può bastare. Piedi sulle assi, e ogni cosa al suo posto.",
	},
	["thb.journey.w24.touchdown.011"] = {
		"Dopo l'atterraggio tengo ancora un momento la mano sul collo della bestia. È calda, è stanca, e non si è lamentata una volta, cosa che non posso dire di me.",
		"Prima di scendere appoggio il palmo sul collo della viverna. Se l'è guadagnato, e non sembra dispiacerle.",
	},
	["thb.journey.w24.touchdown.012"] = {
		"tocca terra alla fine del lungo volo e resta {g:curvo|curva} sul pomo della sella per un po', come se il volo non avesse ancora chiuso i conti.",
		"scende dopo la lunga traversata nel cielo e resta in sella più del necessario, redini molli, prima di scavalcare con una gamba rigida.",
	},
	["thb.journey.w24.touchdown.013"] = {
		"Un volo così lungo ti piega nella forma della sella. Ci vogliono quattro o cinque passi sul posatoio per raddrizzarsi.",
		"Le mie ginocchia hanno delle idee precise su quel volo, e me le stanno dicendo tutte insieme.",
	},
	["thb.journey.w24.touchdown.014"] = {
		"Tutta quella strada senza fermarti una volta. Ti offrirei da bere, se facessero coppe della tua misura.",
		"Tanto tempo in sella che le mie gambe non mi rivolgono più la parola.",
	},
	["thb.journey.w24.touchdown.015"] = {
		"sente la bestia posare prima le zampe posteriori, poi quelle anteriori, un doppio passo a dondolo che fa sbattere contro il pomo della sella.",
		"fa un mezzo tuffo in avanti mentre la viverna posa le zampe di dietro e poi quelle davanti, come chi scende da una barca in due tempi.",
		"incassa il doppio scossone dell'atterraggio, prima dietro e poi davanti, e si ritrova col mento quasi nella criniera della bestia.",
	},
	["thb.journey.w24.touchdown.016"] = {
		"Mi piacerebbe chiamarla una discesa di sella. È stata più una scivolata, con un rumorino alla fine.",
		"Con eleganza, pensavo. I piedi, la sella e il posatoio la pensavano diversamente.",
		"Esiste un modo dignitoso per scendere da una viverna. Nessuno me l'ha ancora mostrato.",
	},
	["thb.journey.w24.touchdown.017"] = {
		"Bellissimo. Davvero. Ha urlato solo uno di noi due, e non eri tu.",
		"Ben fatto. Lo dirò in giro: hai provato a disarcionarmi una volta sola.",
		"Eccoci giù. Ricordami di ringraziarti come si deve quando le ginocchia smettono di tremare.",
	},
	["thb.journey.w24.touchdown.018"] = {
		"Per gli ultimi colpi d'ala chiudo sempre gli occhi. Li riapro sulle assi, ogni volta, e ogni volta mi stupisco un po'.",
		"La discesa finale è la parte a cui non mi abituo mai: la città che sale troppo in fretta, la bestia che apre le ali all'ultimo istante. Poi il sobbalzo, e posso rilassarmi.",
		"Le mani mollano le cinghie solo quando gli artigli hanno toccato. Ho smesso di vergognarmene.",
	},
	["thb.journey.w24.wingbeat.001"] = {
		"avverte la sella premere forte verso l'alto al primo colpo d'ala, e il posatoio è già molto più in basso quando arriva il secondo.",
		"riceve dal primo grande colpo d'ali una spinta verso l'alto, la sella che sale come un gradino, e le assi del posatoio sono già sparite.",
		"sale in tre spinte dure delle ali, ognuna che preme la sella verso l'alto come una spallata da sotto.",
	},
	["thb.journey.w24.wingbeat.002"] = {
		"Le ali trovano il loro passo: giù, una lunga planata, giù ancora. Dopo il terzo colpo le spalle smettono di aspettare la caduta.",
		"Giù, planata, giù. Il ritmo mi trova prima che lo trovi io, e a un certo punto del secondo minuto smetto di stringere i denti.",
	},
	["thb.journey.w24.wingbeat.003"] = {
		"Batti, bestia. Così. Continua con quella cosa delle ali.",
		"Che bei colpi d'ala. Davvero. Non fermarti a fare l'inchino.",
		"Più ali e meno sbandate, se per te è lo stesso.",
	},
	["thb.journey.w24.wingbeat.004"] = {
		"ascolta le ali al lavoro sopra la sella, un rumore come di una pelle pesante sbattuta per scuoterla, una volta dopo l'altra.",
		"sente ogni colpo d'ala come un tonfo sordo di cuoio contro l'aria, più nella sella che nelle orecchie.",
	},
	["thb.journey.w24.wingbeat.005"] = {
		"La bestia è salita. Un pezzo di me è rimasto sul posatoio un attimo di più e solo adesso mi raggiunge.",
		"Su la viverna, su io, e quello che ho dentro arriva dopo, con i suoi tempi, protestando.",
		"C'è sempre un colpo d'ala in cui la bestia cala un po' prima di salire. Le ginocchia lo sanno. Le ginocchia non ci credono mai.",
	},
	["thb.journey.w24.wingbeat.006"] = {
		"si inclina con la bestia mentre vira lasciando il posatoio, un'ala puntata verso le assi, l'altra verso il niente.",
		"asseconda la virata mentre la viverna abbassa un'ala sull'angolo della piattaforma e piega verso l'esterno, con il mondo intero che si inclina insieme.",
	},
	["thb.journey.w24.wingbeat.007"] = {
		"Per un istante tra due colpi d'ala niente mi tiene se non le cinghie e la volontà di un animale. È il momento più onesto di ogni volo.",
		"Tra un colpo e l'altro c'è sempre un piccolo vuoto. Ho smesso di averne paura. Credo che mi mancherebbe.",
	},
	["thb.journey.w24.wingbeat.008"] = {
		"arriva all'altezza di un falco che galleggia accanto al posatoio; il falco guarda la viverna, ci ripensa e scivola via.",
		"supera un falco fermo nell'aria vicino al posatoio, e il falco, dopo un'occhiata ai denti della bestia, va a librarsi altrove.",
	},
	["thb.journey.w24.wingbeat.009"] = {
		"esce nella notte con la lanterna del posatoio che oscilla alle spalle, e la sua piccola luce si posa un attimo sull'occhio lucido della bestia.",
		"sente la bestia salire nella notte soltanto al tatto: le spalle che si allungano sotto la sella, lo strattone delle cinghie, un'aria fredda che corre accanto alle orecchie.",
	},
	["thb.journey.w24.wingbeat.010"] = {
		"Dentro la nebbia, e la bestia vola come se ci vedesse attraverso. Decido di credere che sia così.",
		"Bianco da ogni parte appena lasciato il posatoio. Le ali tengono il loro ritmo, tranquille: almeno uno dei due sa cosa sta facendo.",
	},
	["thb.journey.w24.wingbeat.011"] = {
		"Sul posatoio la bestia era tutta brontolii e artigli. Qui fuori si allunga tutta in una volta, e capisco: il trespolo era l'attesa, e questo è vivere.",
		"Una viverna sul trespolo è una cosa imbronciata. Una viverna che lo lascia è un'altra cosa: lunga, sciolta, contenta. Lo sento passare attraverso le cinghie.",
	},
	["thb.journey.w24.wingbeat.012"] = {
		"Forza, allora. Portaci su.",
		"Più in alto, bestia. Vediamo cosa c'è sopra tutto questo.",
		"Su! Su, e fammi vedere il cielo.",
	},
	["thb.journey.w24.wingbeat.013"] = {
		"sente i colpi d'ala cambiare nell'ultimo tratto, da lunghe tirate a brevi conche dure d'aria, e poi gli artigli trovano le assi.",
		"ascolta i colpi d'ala farsi corti e pesanti alla fine, ogni colpo a trattenere la bestia, finché il posatoio non è saldo sotto.",
		"avverte la bestia frenare con tre colpi d'ala corti e pesanti, ognuno a spingere indietro la sella, e poi il sobbalzo degli artigli sul legno.",
	},
	["thb.journey.w24.wingbeat.014"] = {
		"Giù dalla bestia, e il corpo conta ancora i colpi d'ala. Ci vorrà un po' prima che perda il conto.",
		"Sto immobile e qualcosa dentro continua a salire e scendere col ritmo del volo. Svanisce piano, come un motivo quando il tamburo ha smesso.",
	},
	["thb.journey.w24.wingbeat.015"] = {
		"Quell'ultimo pezzo, quello in picchiata? Ne riparliamo.",
		"Bel volo. Sul finale ci dobbiamo lavorare.",
		"Certe cadute dal letto sono state più dolci di così.",
	},
	["thb.journey.w24.wingbeat.016"] = {
		"scende con i capelli dritti in ogni direzione in cui il cielo li ha spinti, e ci passa sopra una mano un paio di volte, inutilmente.",
		"smonta con l'aria di chi è stato pettinato dal cielo contropelo, e prova a lisciarsi prima che qualcuno guardi.",
		"si toglie dal colletto un filo di paglia appena a terra, chiedendosi in quale punto del volo ci sia finito.",
	},
	["thb.journey.w24.wingbeat.017"] = {
		"A terra, e il volo mi sembra già una cosa raccontata più che vissuta: il freddo, la spinta delle ali, la lunga inclinazione nelle virate.",
		"Sulle assi tutto il volo si riduce a poche cose che il corpo ha tenuto: un'inclinazione, un sobbalzo, la lunga trazione delle ali sotto di me.",
	},
	["thb.journey.w24.wingbeat.018"] = {
		"si infila un dito in un orecchio appena sulle assi, con il rombo del volo ancora pigiato lì dentro come lana.",
		"scuote la testa sul posatoio per scacciare il ronzio che il volo {g:gli|le} ha lasciato nelle orecchie, e il ronzio, testardo, resta.",
		"piega la testa da una parte e poi dall'altra, per scrollarsi la sordità che il volo ha cacciato in ogni orecchio.",
	},
	["thb.journey.w24.wingbeat.019"] = {
		"arriva con una lunga planata, le ali della bestia tese e immobili, il posatoio che cresce sotto di loro senza un solo colpo fino all'ultimo.",
		"percorre l'ultimo pendio d'aria con le ali spalancate e mute, e le assi del posatoio salgono incontro agli artigli.",
	},
	["thb.journey.w24.wingbeat.020"] = {
		"L'istante prima che gli artigli tocchino è quello a cui non mi abituo mai: il posatoio che corre su, la bestia che si fida di sé, e io che mi fido della bestia.",
		"A ogni arrivo, quell'ultima corsa delle assi verso la faccia. Poi un tonfo, e sono una persona in piedi su un posatoio, come se niente fosse.",
	},
	["thb.journey.w24.wingbeat.021"] = {
		"Arrivando sotto un sole alto, ho visto la nostra ombra correre sull'altura davanti a noi e crescere fino a raggiungerci. Poi ci stavamo sopra.",
		"La nostra ombra è salita su per il fianco della rupe prima di noi e ci aspettava sul posatoio. La bestia ci è scesa proprio sopra.",
	},
	["thb.journey.w24.wingbeat.022"] = {
		"guarda la coda della bestia scendere piano dal suo arco alto quando gli artigli sono sulle assi, l'uncino posato lungo il tavolato come un attrezzo riposto.",
		"nota che la coda della viverna si abbassa solo quando tutte e quattro le zampe sono piantate, srotolandosi dall'arco del volo per posarsi lungo il posatoio.",
	},
	["thb.journey.w24.wingbeat.023"] = {
		"Siamo giù? Siamo giù. Adesso apro gli occhi.",
		"Fermi? Bene. Qualcuno lo dica alle mie ginocchia.",
		"Puoi smettere di sbattere, bestia. Siamo sulle assi. Riposa quelle ali.",
	},
	["thb.muse.w24.ancestor.001"] = {
		"I tauren nominano i loro morti in mezzo ai discorsi di ogni giorno, tra il prezzo di una pelle e lo stato delle funi dell'ascensore, come se anche i morti avessero qualcosa da dire.",
		"Una tauren ha appena nominato la sua bisnonna insieme al prezzo del sale. Su questa rupe i morti fanno parte della conversazione.",
		"Chiedi a un tauren cosa farà il cielo e magari ti racconta cosa ne pensava suo nonno, quaranta inverni fa. I morti hanno ancora il loro posto al discorso.",
	},
	["thb.muse.w24.ancestor.002"] = {
		"si accorge di un vecchio tauren che riempie una seconda ciotola, più piccola, accanto alla sua, e la lascia intatta per tutto il pasto, come per qualcuno in ritardo.",
		"scorge un anziano posare il boccone migliore del suo pasto sulla panca accanto a sé, dove non siede nessuno, e continuare a mangiare senza guardarlo.",
		"si attarda dove un vecchio tauren, finito il pasto, spinge una porzione intatta un po' più in là sulla panca, verso nessuno, e annuisce.",
	},
	["thb.muse.w24.ancestor.003"] = {
		"Il tauren accanto a me ha rifatto un nodo tre volte, scusandosi ogni volta con un nonno che, a quanto capisco, era pignolissimo sui nodi ed è morto da anni.",
		"Ho sentito un tauren chiedere scusa al defunto zio per un punto storto. Lo zio, mi dicono, se ne sarebbe accorto. Pare che se ne accorga tuttora.",
		"Da qualche parte su questa altura una zia morta da tempo è molto delusa da un cesto. La nipote l'ha raccontato a tutti, e lo sta rifacendo da capo.",
	},
	["thb.muse.w24.ancestor.004"] = {
		"Quel posto vuoto è occupato? Da un antenato, intendo. Non vorrei sedermi sulla nonna di qualcuno.",
		"Resto in piedi, grazie. In questa città un posto libero di rado è libero come sembra.",
		"Posso sedermi? Chiunque ci sia, vivo o no, lo dica adesso.",
	},
	["thb.muse.w24.ancestor.005"] = {
		"Un anziano mi ha detto che alcuni dei tauren caduti sotto i centauri, nelle pianure di un tempo, non furono mai ritrovati. Qui si pronunciano i loro nomi, così hanno ancora un posto dove andare.",
		"Non tutti gli antenati hanno una tomba. Gli anziani dicono che anche un nome detto ad alta voce è una tomba, e di nomi ne dicono moltissimi.",
		"Da qualche parte nelle Barrens giacciono tauren che nessuno ha sepolto. Su questa rupe, mi dicono, si tengono al caldo i loro nomi, pronunciati accanto al fuoco perché non restino mai del tutto al freddo.",
	},
	["thb.muse.w24.ancestor.006"] = {
		"Una cacciatrice mi ha detto che gli antenati seguono ancora le mandrie per Mulgore, per vecchia abitudine. Quando i kodo voltano tutti insieme senza motivo, dice lei, qualcuno di molto vecchio cammina in mezzo a loro.",
		"Secondo i cacciatori, i vecchi non hanno mai smesso del tutto di vagare. Camminano ancora con le mandrie, ed è per questo che quassù nessuno si sognerebbe di mettere fretta a un kodo.",
		"Una cacciatrice giura che una volta un kodo ha girato la testa verso il nulla e si è inchinato. 'Il nonno,' ha detto, come se bastasse. Per lei bastava.",
	},
	["thb.muse.w24.ancestor.007"] = {
		"osserva un giovane tauren fare una domanda all'aria vuota sul bordo dell'altura, aspettare con la testa inclinata e annuire, come se la risposta fosse stata giusta.",
		"passa accanto a un vitellino che parla tutto serio con nessuno vicino a una tenda, poi si ferma, ascolta e corre via soddisfatto.",
		"sorride mentre un vitellino prepara due tazze per un gioco di sassi, una per sé e una per un compagno che nessun altro vede.",
	},
	["thb.muse.w24.ancestor.008"] = {
		"Chi è venuto prima di me ha attraversato le pianure aperte con i centauri alle spalle. Io sto su una roccia che non hanno mai visto, e la custodisco per loro.",
		"Quando attraverso questi ponti li attraverso anche per gli antenati. Hanno camminato abbastanza. Che si lascino portare per un po'.",
	},
	["thb.muse.w24.ancestor.009"] = {
		"Due tauren litigano per una pelle, e tutti e due hanno chiamato a testimone lo stesso anziano defunto. Lui, pare, se la prende comoda prima di decidere.",
		"Prima o poi, in qualunque lite quassù, qualcuno tira in ballo un antenato. Anche l'altra parte ne ha uno. Finisce in pareggio e in un lungo silenzio.",
		"Ho imparato che un tauren che comincia una frase col nome di un nonno defunto ha già vinto la discussione, o crede di averla vinta.",
	},
	["thb.muse.w24.ancestor.010"] = {
		"Quanta tenerezza, quando i tauren parlano dei loro morti. Io sono {g:morto|morta}, più o meno, e qui nessuno mi parla con quel tono. Però nessuno ha distolto lo sguardo.",
		"Quassù onorano gli spiriti dei morti e mettono da parte il cibo per loro. Io sono un cadavere che cammina, in piena vista, e loro mi passano il sale e basta.",
	},
	["thb.muse.w24.ancestor.011"] = {
		"sosta vicino a un cerchio di anziani qui su Elder Rise, dove un posto resta vuoto, e nessuno ha bisogno di spiegare a nessuno il perché.",
		"trova degli anziani seduti in cerchio con un vuoto largo quanto un tauren, e i discorsi girano attorno a quel vuoto con cura.",
		"rallenta vicino al cerchio degli anziani, dove il posto vuoto non viene mai occupato e perfino i vitellini, senza che nessuno lo dica, ci girano intorno.",
	},
	["thb.muse.w24.ancestor.012"] = {
		"Un vecchio tauren si appoggia a un bastone scurito sull'impugnatura da più mani che le sue. Lo chiama il bastone delle sue nonne, al plurale, e non spiega altro.",
		"Il bastone di quel vecchio tauren è passato per così tante mani prima delle sue che il legno si è assottigliato nel mezzo. Lui dice che lo ha solo in prestito da loro.",
		"Quel bastone apparteneva a qualcuno, che l'aveva avuto da qualcun altro. Se glielo chiedi, il vecchio tauren li nomina tutti. Gliel'ho chiesto. Ci è voluto un po'.",
	},
	["thb.muse.w24.ancestor.013"] = {
		"Parlo piano. Mi hanno detto che i vecchi ascoltano dai bordi.",
		"Piano, per favore. Pare che gli antenati siedano più vicini sull'orlo dell'altura.",
	},
	["thb.muse.w24.ancestor.014"] = {
		"Non ho ancora sentito un tauren dire chiaro e tondo che qualcuno è morto. La vecchia 'è scesa dalla Madre Terra', il giovane cacciatore 'è stato ripreso'. Più che una perdita sembra un prestito restituito.",
		"I morti, come dicono i tauren, scendono nella terra che li ha cresciuti, non se ne vanno. È una direzione più gentile di quella che altri popoli danno ai loro morti.",
		"'Ripreso,' dicono dei loro morti, come di una coperta avuta in prestito. Il dolore è lo stesso, credo. Solo che ha un posto dove andare.",
	},
	["thb.muse.w24.ancestor.015"] = {
		"sente pronunciare un nome a un fuoco vicino, e tutti i tauren che possono udirlo abbassano gli occhi per il tempo di quel nome, poi i discorsi riprendono.",
		"nota che, ogni volta che fra i tauren del fuoco accanto torna un nome antico, ciascuno sfiora il suolo con due dita, senza interrompersi.",
	},
	["thb.muse.w24.ancestor.016"] = {
		"Se davvero gli antenati dei tauren vegliano su questa città, mi hanno visto perdere una discussione con il lembo di una tenda. Spero abbiano il garbo di non parlarne.",
		"Gli anziani dicono che gli antenati vedono tutto ciò che accade sulla rupe. Chissà dove, uno spirito antichissimo mi ha visto contare le monete due volte e far finta di niente.",
	},
	["thb.muse.w24.ancestor.017"] = {
		"Una vecchia tauren insegna a un vitellino i nomi della loro stirpe, un nome per ogni dito. Le mani sono finite da un pezzo: ora contano sulle perline di una coperta.",
		"Un nonno recita gli avi a un vitellino mezzo addormentato da prima che io mi sedessi, e i nomi non accennano a finire. Neanche lo sbadiglio del piccolo, a dire il vero.",
		"Nomi, nomi e ancora nomi, che un anziano snocciola perché un tauren assonnato li custodisca. Ho perso il conto. Dubito che il piccolo l'abbia mai tenuto.",
	},
	["thb.muse.w24.ancestor.018"] = {
		"Chiedo scusa, a chiunque sia seduto lì. Non ti vedo, ma darlo per scontato mi pare scortese.",
		"Perdono, spirito onorato. Sono solo di passaggio. Farò in fretta, e con molta educazione.",
		"Attenzione ai piedi, mi dico. Qui potrebbe esserci sdraiato l'antenato di qualcuno.",
	},
	["thb.muse.w24.ancestor.019"] = {
		"Una tauren mi ha detto, senza giri di parole, che il suo defunto nonno le è venuto in sogno a lamentarsi dello stato del tetto. Adesso è su una scala con una pelle nuova, e ha l'aria sollevata.",
		"Gli antenati vengono in sogno, dicono i tauren, e i loro consigli sono per lo più pratici. Ripara il tetto. Occhio al fiume. Mangia qualcosa. Somiglia molto all'essere vivi.",
	},
	["thb.muse.w24.ancestor.020"] = {
		"Raccontami di loro, se ti va. I tuoi vecchi. Ho tempo.",
		"Chi era, quello di cui hai appena detto il nome? Mi piacerebbe saperlo, se posso.",
		"Ripeti quel nome, piano. Vorrei ricordarlo anch'io.",
	},
	["thb.muse.w24.braid.001"] = {
		"Ogni treccia tauren che ho guardato da vicino è chiusa in modo diverso: tendine, un giro di cuoio, una perlina, un nodo che non riesco a seguire. Ho cominciato a leggerle come firme.",
		"Su questa rupe non ci sono due trecce che finiscano allo stesso modo. Un giro di filo rosso, un anellino d'osso, un nodo semplice tirato stretto. Ognuna mi direbbe qualcosa, se sapessi come chiedere.",
	},
	["thb.muse.w24.braid.002"] = {
		"guarda un tauren che toglie una a una le lappole dalla coda di un amico, tutti e due presi da un discorso del tutto diverso; l'amico dà un colpo di coda solo quando una lappola non vuole saperne.",
		"nota una tauren che si pettina la criniera con un pettine ricavato da un corno, sciogliendo i nodi con la fronte aggrottata di chi districa una rete da pesca.",
	},
	["thb.muse.w24.braid.003"] = {
		"Le corna cambiano tutto. Ho appena visto una tauren uscire da una tenda girando la testa di lato senza pensarci, e scivolare fuori come una chiave nella serratura.",
		"I tauren girano la testa davanti a ogni porta come altri si chinano. Lo fanno senza guardare, come si scavalca un gradino che si sa che c'è.",
		"Una tauren con una lunga pertica in spalla si è girata a salutarmi e ha scostato insieme la pertica e le corna, con la pratica di una vita intera.",
	},
	["thb.muse.w24.braid.004"] = {
		"Le perline tintinnano quando un tauren annuisce. Più perline ha, più lento è il cenno, ho notato. Forse è proprio questo lo scopo.",
		"È salita lungo il sentiero una vecchia tauren con una vera tenda di trecce piene di perline, e l'ho sentita prima di vederla: un fruscio secco, come semi in una zucca.",
		"Una tauren sulla panca conta le sue perline col pollice, una treccia dopo l'altra, come chi controlla il borsellino.",
	},
	["thb.muse.w24.braid.005"] = {
		"aspetta mentre un tauren si siede sulle assi, prende uno zoccolo con tutte e due le mani e ne fa saltar fuori un sassolino con un piccolo punteruolo d'osso, con l'aria di chi lo fa per la millesima volta.",
		"nota un tauren che pulisce il bordo di uno zoccolo con un coltello piatto, come un altro si pulirebbe le unghie, e poi lo batte due volte sul sentiero per provarlo.",
		"segue un rumore di zoccoli fino a un tauren fermo accanto a un abbeveratoio, che lava con cura il fango da ciascuno, uno dopo l'altro, come un gatto che si cura le zampe.",
	},
	["thb.muse.w24.braid.006"] = {
		"Un tauren ha appena perso sulla panca un ciuffo di pelo grosso come un gatto piccolo, e se n'è andato. Il ciuffo è ancora lì. Non conosco l'etichetta.",
		"Qualcuno ha lasciato sulla panca un ciuffo di criniera che basterebbe a imbottire un cuscino. Mi siedo accanto, educatamente.",
	},
	["thb.muse.w24.braid.007"] = {
		"La prima treccia che un piccolo si fa nella criniera viene sempre storta, e la si lascia così. I nostri anziani dicono che una prima treccia storta vuol dire mani impazienti di imparare.",
		"Mi faccio ancora le trecce come mi hanno insegnato, con quel giro alla fine prima del nodo. Ogni tauren ha un modo così, passato di mano in mano, e mai identico due volte.",
	},
	["thb.muse.w24.braid.008"] = {
		"indugia accanto a un tauren che massaggia olio alla base delle corna di un amico con lenti cerchi del pollice, e l'amico che chiude gli occhi come un gatto accanto al focolare.",
		"nota una tauren che si lega intorno a un corno una striscia di cuoio dipinto, controlla il nodo al tatto e poi dà un colpetto a una compagna per chiederle come sta.",
	},
	["thb.muse.w24.braid.009"] = {
		"Mi è stato chiesto di tenere una perlina mentre una tauren rifaceva una treccia. La tengo da un bel po'. Comincio a pensare che se ne sia scordata. Comincio a pensare che me la terrò.",
		"Mi hanno dato da tenere una perlina intagliata mentre una tauren si rifaceva la treccia. Adesso custodisco una perlina. Nessuno ne ha più parlato.",
		"A qualcuno è caduta una perlina sulle assi e quattro tauren si sono fermati a cercarla. È stata trovata, restituita e ammirata, e ognuno è andato per la sua strada, soddisfatto.",
	},
	["thb.muse.w24.braid.010"] = {
		"Ho incrociato un tauren con una treccia tagliata corta e senza perline, in mezzo a tutte le altre. Una guardia mi ha detto, sottovoce, che si fa per chi non c'è più. Non ho chiesto chi.",
		"Una sola treccia tagliata male in fondo, le altre ordinate e piene di perline. Ho imparato abbastanza, quassù, da non chiedere più niente di quelle.",
	},
	["thb.muse.w24.braid.011"] = {
		"Belle perline. Davvero. Chiederei dove le hai prese, ma temo che la risposta sia 'le ho fatte io', e farei la figura dello scansafatiche.",
		"Che trecce. Le mie hanno l'aria di chi ci ha dormito sopra, e infatti.",
	},
	["thb.muse.w24.braid.012"] = {
		"Alcuni dei tauren più anziani hanno segni incisi sulle corna, file di tacche minuscole. Uno mi ha detto che ciascuna è una cosa da ricordare, e poi non mi ha detto niente di nessuna.",
		"Ho notato righe incise sulle corna di qualche anziano, sottili come graffi. Quando ho chiesto, ho ricevuto uno sguardo lungo e una risposta corta: 'Mie.'",
	},
	["thb.muse.w24.braid.013"] = {
		"osserva la coda di un tauren scacciare una mosca dalla schiena di un vicino senza che nessuno dei due interrompa la chiacchierata, come per un vecchio accordo mai discusso.",
		"nota due tauren fianco a fianco che si scacciano a vicenda le mosche con la coda, immersi nella conversazione e chiaramente ignari della cosa.",
		"vede la coda di un tauren sollevarsi e ricadere a ogni pausa di un lungo discorso, come a tenere il tempo dei pensieri.",
	},
	["thb.muse.w24.braid.014"] = {
		"Le orecchie dei tauren dicono più delle loro facce. La faccia resta calma in qualunque discussione; le orecchie si appiattiscono, ruotano, scattano. Ho cominciato a guardare le orecchie.",
		"La faccia di un tauren, in una trattativa, non ti concede niente. Le orecchie invece mentono malissimo.",
		"Quando un tauren ti ascolta davvero, tutte e due le orecchie si girano verso di te e restano lì. È un po' come sentirsi addosso due sguardi.",
	},
	["thb.muse.w24.braid.015"] = {
		"Quaggiù, accanto all'acqua immobile, una tauren si rifà la treccia al tatto, piano, nella penombra. Non guarda mai il suo riflesso, anche se è proprio lì.",
		"Nel silenzio dei Pools of Vision un tauren si inginocchia sul bordo e si bagna ciascun corno, poi la fronte. Non so cosa significhi, e non romperò il silenzio per chiederlo.",
	},
	["thb.muse.w24.braid.016"] = {
		"Chiederei come fate a dormire con quelle corna, ma scommetto che la risposta sarebbe 'benissimo, grazie'.",
		"Ogni tauren di questa città sa al millimetro dove sono le sue corna. Mi colpisce, e un po' mi rassicura.",
	},
	["thb.muse.w24.braid.017"] = {
		"La criniera di una vecchia tauren è diventata bianca alla radice e sulle punte, e le perline che porta sono lisce come sassi di fiume.",
		"Ormai qualcuno intreccia la criniera di quell'anziana al posto suo; ho visto le dita attente di chi la aiuta. Le trecce sono perfette. Lei si lascia pettinare come una regina.",
	},
	["thb.muse.w24.braid.018"] = {
		"Più il tauren è grosso, più la perlina che preferisce sembra piccola. Il guerriero più imponente che ho visto ne porta una sola, minuscola e azzurra, nascosta dietro un orecchio.",
		"C'è un Bluffwatcher grande come una tenda con una sola perlina azzurra nascosta nella criniera. Ho deciso di non chiedere mai niente, così resta perfetta.",
	},
	["thb.muse.w24.braid.019"] = {
		"Quella perlina è d'osso o di legno? Non dirmelo. Sbaglierò in pace.",
		"Bel nodo. Se ci provassi io mi ci legherei le dita.",
	},
	["thb.muse.w24.brave.001"] = {
		"passa accanto a un Bluffwatcher che mangia una striscia di carne secca durante la guardia, masticando piano, senza mai staccare gli occhi dal capo opposto del ponte.",
		"nota un Bluffwatcher che sposta il peso da uno zoccolo all'altro, lentissimo: l'unico movimento in un'ora intera di guardia.",
		"vede una guardia far rotare una spalla enorme e tornare immobile, un gesto così lieve che sembrava il telo di una tenda mosso dall'aria.",
	},
	["thb.muse.w24.brave.002"] = {
		"Sto cercando di cogliere un Bluffwatcher mentre sbatte le palpebre. Ho perso.",
		"Qualcuno avrà pure insegnato ai Bluffwatcher a restare così fermi. Vorrei chiedergli due consigli, visto come mi agito io.",
		"I Bluffwatcher si muovono così poco che gli uccelli ci si posano sopra. Ne ho vista una con un passero sull'asta dell'alabarda, e l'ha lasciato stare.",
	},
	["thb.muse.w24.brave.003"] = {
		"La Bluffwatcher in cima al sentiero ha lasciato che un piccolo le stesse accanto per un po', a copiare la sua posa alla perfezione, e non l'ha rotta neanche per sorridere. Credo sorridesse comunque.",
		"Accanto a una guardia si è piantato un piccolo tauren, mento alto, spalle indietro, un bastone tenuto proprio come l'alabarda della guardia. La guardia finge di non accorgersene, che è il modo più gentile di accorgersene.",
	},
	["thb.muse.w24.brave.004"] = {
		"vede, alla prima luce grigia, un Bluffwatcher che smonta dal lungo turno di guardia e si siede sulle assi proprio lì, le corna basse, come se le gambe aspettassero quel permesso da ore.",
		"nota che i Bluffwatcher sull'altura di fronte si rilassano appena mentre la luce sale, la lunga guardia del buio ormai alle spalle.",
	},
	["thb.muse.w24.brave.005"] = {
		"Qui su Hunter Rise una cacciatrice parla al suo felino a bassa voce, spiegandogli qualcosa per filo e per segno. Alla fine il gatto sbadiglia, e lei annuisce come se la questione fosse chiusa.",
		"Un cacciatore, su quest'altura, toglie le lappole dal pelo del suo lupo con le dita, una per una, mentre il lupo finge che la cosa non lo riguardi.",
		"Su Hunter Rise una cacciatrice si è addormentata seduta, e il suo grosso felino si è addormentato sui suoi zoccoli. Nessuno dei due sarà il primo a muoversi.",
	},
	["thb.muse.w24.brave.006"] = {
		"I cacciatori tauren sanno stare fermi più a lungo di qualunque preda. Ne ho visto uno aspettare che una mosca gli lasciasse il naso. La mosca si è arresa per prima.",
		"Una cacciatrice seduta lungo il sentiero ha una falena su un corno da un bel pezzo. Non l'ha scacciata. Ho il sospetto che si stia allenando.",
		"I cacciatori tauren raccontano come seguono una pista: un piccolo dettaglio, poi silenzio, poi un altro, finché non ti accorgi che ti hanno portato lontano.",
	},
	["thb.muse.w24.brave.007"] = {
		"Gli sciamani visti da vicino sono gente comune ai margini: una aveva la cenere sotto ogni unghia, una briciola di focaccia nella criniera, e parlava del prezzo del sale.",
		"Mi aspettavo sciamani sempre solenni. Quella che ho incrociato rideva così forte per una battuta di un'amica da doversi appoggiare a un palo della tenda.",
	},
	["thb.muse.w24.brave.008"] = {
		"nota una sciamana, qui su Spirit Rise, seduta con gli zoccoli in un catino d'acqua e gli occhi chiusi: il ritratto di chi per un po' ha già dato abbastanza.",
		"passa accanto a un vecchio sciamano di Spirit Rise addormentato contro un palo, il mento sul petto, una pipa ormai fredda in una mano e l'altra ancora sollevata, come a metà di una benedizione.",
	},
	["thb.muse.w24.brave.009"] = {
		"Una druida è salita lungo il sentiero con ancora mezzo orso nell'andatura: spalle che rollano, testa bassa, un'annusata a ogni soglia. Le ci sono voluti un po' di passi per ricordarsi di avere le mani.",
		"Ai druidi resta qualcosa della bestia anche dopo. Uno si è appena grattato dietro l'orecchio col dorso della mano, proprio come un gatto, e ha avuto l'aria vagamente imbarazzata.",
		"Una druida diretta a Elder Rise si è fermata a metà passo ad annusare, orecchie in avanti, poi si è scrollata ed è ripartita. L'orsa non se n'era ancora andata del tutto.",
	},
	["thb.muse.w24.brave.010"] = {
		"Quel Bluffwatcher mi ha guardato per un secondo intero. Ho già raddrizzato il colletto, e pure la vita.",
		"Uno sguardo di una guardia e mi tornano in mente tutte le regole che non ho mai saputo.",
	},
	["thb.muse.w24.brave.011"] = {
		"I cacciatori risalgono dalla pianura con i semi d'erba impigliati nel pelo delle gambe, e la prima cosa che fanno è sedersi senza dire niente. Le parole vengono dopo, insieme al cibo.",
		"Un cacciatore appena uscito dall'erba si riconosce: lappole nella coda, uno sguardo lungo e muto, e un modo di sedersi che è quasi un crollo.",
		"Un cacciatore appena risalito dalla pianura si è seduto sulla panca accanto a me, mi ha fatto un cenno e si è addormentato contro il palo della tenda prima di averlo finito.",
	},
	["thb.muse.w24.brave.012"] = {
		"Una giovane guerriera si fa ricucire da una più anziana un lungo taglio sull'avambraccio. Fissa la pianura per tutto il tempo senza un lamento, e l'altra parla del più e del meno per darle un posto dove andare.",
		"Due guerrieri siedono in disparte, uno con una fasciatura fresca. Non parlano di quello che è successo là fuori. Parlano di una ricetta, con cura, come se contasse moltissimo.",
	},
	["thb.muse.w24.brave.013"] = {
		"finisce in una cortese situazione di stallo con due Bluffwatcher di ronda: tutti si scansano insieme, tutti aspettano, finché una delle guardie non ride piano, di gola, e passa per prima.",
		"incontra un Bluffwatcher a una curva stretta del sentiero, e ciascuno aspetta l'altro con tale cortesia che alla fine un piccolo tauren sguscia via passando in mezzo.",
		"divide uno stretto tratto di sentiero con un Bluffwatcher che si ferma, si mette di fianco e aspetta come una parete di roccia finché il passaggio non è libero.",
	},
	["thb.muse.w24.brave.014"] = {
		"Quando i Bluffwatcher scendono verso la guerra di Ashenvale, partono senza discorsi. Un cenno a chi resta, e basta. Starei al fianco di chiunque di loro.",
		"I nostri guerrieri non si vantano. Quelli in partenza per il fronte controllano le cinghie una seconda volta e vanno. All'Orda servirebbe più gente così.",
	},
	["thb.muse.w24.brave.015"] = {
		"Mentre sistemava la corda dell'arco lungo il sentiero, un cacciatore mi ha porto l'altro capo da tenere, senza chiedere. Siamo rimasti lì un po', legati da un filo di budello, senza dire niente.",
		"Ho tenuto fermo il felino di una cacciatrice mentre lei gli controllava una zampa. Prima o poi mi perdonerà, credo. Il gatto, intendo.",
	},
	["thb.muse.w24.brave.016"] = {
		"Prima di mangiare, la cacciatrice al fuoco accanto ha messo da parte un pezzetto su una pietra piatta. Un suo amico mi ha detto che è per l'animale, perché sappia che niente è andato sprecato.",
		"Ho visto un cacciatore posare il palmo sulla terra prima di tagliare la sua preda. Quando gliel'ho chiesto, ha detto soltanto che la pianura doveva sapere della sua gratitudine.",
	},
	["thb.muse.w24.brave.017"] = {
		"Chiederei alla guardia come va il turno, ma temo che la risposta durerebbe fino al turno dopo.",
		"Non badate a me, ammiro solo quanto state fermi. Continuate pure. Cioè, non muovetevi. Insomma, quello.",
	},
	["thb.muse.w24.brave.018"] = {
		"Nella nebbia un Bluffwatcher compare in fondo al ponte un pezzo per volta: prima le corna, poi le spalle, poi gli zoccoli lenti, come un'altura che emerge dalla foschia.",
		"La nebbia si è mangiata l'altura vicina, ma sento la guardia laggiù che ogni tanto si schiarisce la voce, come per far sapere alla città che è ancora al suo posto.",
	},
	["thb.muse.w24.brave.019"] = {
		"Quei Bluffwatcher terrebbero un ponte contro una mandria lanciata. Probabilmente l'hanno già fatto.",
		"Se mai mi servirà qualcuno che tenga chiusa una porta, so a quale altura chiedere.",
	},
	["thb.muse.w24.cairne.001"] = {
		"Le abitudini del capo supremo sono ovunque in questa città. Qui i tauren chiudono le liti come dicono faccia lui, aspettando che a entrambe le parti finiscano le parole.",
		"Un capo si conosce dal suo popolo. Quassù tutti ascoltano una frase fino in fondo, e mi dicono che l'usanza l'ha cominciata il capo supremo.",
	},
	["thb.muse.w24.cairne.002"] = {
		"sente un tauren chiudere un litigio tra due piccoli con una sola domanda, cosa direbbe il capo supremo, e il litigio si spegne lì.",
		"ascolta un anziano mettere fine a un battibecco tra giovani tauren nominando, piano, il capo supremo, e niente di più.",
		"vede due tauren adulti nel pieno di una discussione tacere entrambi quando uno dei due nomina il capo, poi ridere e ricominciare con più garbo.",
	},
	["thb.muse.w24.cairne.003"] = {
		"Si racconta che Cairne incontrò Thrall quando gli orchi erano appena arrivati a Kalimdor, e che il vecchio toro e il giovane Capoguerra si capirono subito. Metà dell'Orda sembra poggiare su quell'amicizia.",
		"Un vecchio tauren e un giovane orco che si incontrano su una terra dura, e da quell'incontro un'alleanza intera. I tauren lo raccontano senza enfasi, come si racconta il ritrovamento di un pozzo.",
	},
	["thb.muse.w24.cairne.004"] = {
		"Chiedi a un tauren del capo supremo e prima ti arriva un lungo silenzio. Credo sia quella, la parte rispettosa.",
		"Ho chiesto del vecchio capo. Un cenno, una pausa, e una parola sola: vecchio. Poi un sorriso, come se bastasse a dire tutto.",
		"Ogni tauren a cui chiedo del suo capo risponde allo stesso modo: piano, e con orgoglio.",
	},
	["thb.muse.w24.cairne.005"] = {
		"Il capo supremo ha riunito tribù che vagavano separate da generazioni. Mettere d'accordo dei tauren su dove accamparsi è già un'impresa; convincerli a fare una città, non riesco nemmeno a immaginarlo.",
		"Un vecchio toro ha convinto ogni tribù testarda della pianura a dividersi un gruppo di rupi. Qualunque altra cosa sia, è il miglior negoziatore di Kalimdor.",
	},
	["thb.muse.w24.cairne.006"] = {
		"Tutti sanno che il capo supremo è vecchio. Nessuno lo dice due volte. La città ha un suo modo di girare attorno agli anni che gli restano.",
		"All'età del loro capo i tauren girano intorno come a un cane che dorme: con cautela, e senza mai indicarlo.",
		"Qui nessuno vuole contare gli inverni che restano al capo supremo. In compenso contano tutto il resto.",
	},
	["thb.muse.w24.cairne.007"] = {
		"I tauren che passano davanti alla grande tenda del capo supremo abbassano la voce senza rallentare. L'ho visto più di una volta, e nessuno sembrava accorgersene.",
		"Vicino alla tenda del capo le voci calano della metà, da sole. Nessuno chiede silenzio. Semplicemente lo fanno.",
	},
	["thb.muse.w24.cairne.008"] = {
		"Il nostro capo supremo ha dato alle tribù un posto dove stare insieme. Ogni volta che guardo da quassù gli devo un po' di più, e lui con un gesto direbbe che non è niente.",
		"Il mio popolo ha smesso di vagare perché un vecchio toro gli ha detto che poteva. Spero che sappia cosa ha significato per noi.",
		"Il capo ha dato la sua parola alle tribù, e la parola è diventata pietra. Ci cammino sopra, e la sento reggere.",
	},
	["thb.muse.w24.cairne.009"] = {
		"Persino i Bluffwatcher si raddrizzano un poco quando salta fuori il nome del capo supremo. Ho provato due volte. Funziona.",
		"Nomina il vecchio capo vicino a una guardia e guarda come si raddrizza la schiena. Meglio di un saluto militare.",
	},
	["thb.muse.w24.cairne.010"] = {
		"In città si dice che il capo supremo scenda ancora ogni tanto nella pianura a camminare nell'erba senza nessuno accanto. Mi piace un capo che non ha paura di sporcarsi gli zoccoli.",
		"A sentire i tauren, il loro capo preferisce ancora la pianura alla rupe. Un capo che ha nostalgia dell'erba: questo spiega molte cose di questa città.",
	},
	["thb.muse.w24.cairne.011"] = {
		"segue con lo sguardo un giovane guerriero provare una posa solenne, mento alto e zoccoli piantati, e un anziano lì vicino borbottare che il capo supremo non è mai stato così in vita sua.",
		"guarda un giovane tauren imitare per due amici il lento cenno del capo supremo, e uno più vecchio passare e farlo molto meglio senza nemmeno provarci.",
	},
	["thb.muse.w24.cairne.012"] = {
		"Gli anziani dicono che il capo supremo combatté centauri, demoni e dubbi per portare qui le tribù, e che i dubbi furono la parte più dura.",
		"I centauri alle spalle, i demoni nelle foreste, e cento liti tra tribù nel mezzo. Qualunque cosa il vecchio capo abbia portato fin su queste rupi, pesava.",
	},
	["thb.muse.w24.cairne.013"] = {
		"Che il capo supremo conservi i suoi anni, e la sua pazienza.",
		"Lunga vita al vecchio capo, e che faccia aspettare tutti quanti per molti inverni a venire.",
		"Al capo supremo, e a tanti altri anni lenti.",
	},
	["thb.muse.w24.cairne.014"] = {
		"Il nome stesso del capo supremo è quello di un villaggio giù nella pianura, Bloodhoof, e i tauren dicono che la città non gliel'ha mai fatto dimenticare. Un capo con uno zoccolo sulla rupe e uno nell'erba.",
		"Un capo con una capitale nel cielo e un villaggio nell'erba. A sentire i tauren, non ha mai scelto davvero tra le due, e non ha intenzione di farlo.",
	},
	["thb.muse.w24.cairne.015"] = {
		"nota che i tauren si fermano, un istante appena, ogni volta che pronunciano il nome del capo supremo, come se lo posassero in un posto sicuro prima di proseguire.",
		"osserva un vecchio tauren sfiorarsi la fronte con due dita prima di nominare il capo, un piccolo gesto fatto senza nessuna cerimonia.",
		"nota su un palo di una tenda un piccolo intaglio, una grande figura cornuta, e un tauren che se ne accorge spiega, in breve e con orgoglio, chi dovrebbe rappresentare.",
	},
	["thb.muse.w24.cairne.016"] = {
		"Guidare i tauren dev'essere come condurre una mandria: niente grida, niente fretta, e un gran camminare in testa, dove tutti possono vederti stancare.",
		"Il capo di un popolo paziente deve essere il più paziente di tutti. Non vorrei quel compito. Non so se il vecchio toro lo volesse davvero.",
	},
	["thb.muse.w24.cairne.017"] = {
		"Mi piacerebbe sentire il capo supremo raccontare lui stesso come è nata questa città. Mi servirebbe una settimana libera.",
		"Un giorno qualcuno scriverà come è stata fondata questa città. Servirà un tauren per leggerlo ad alta voce, e una settimana per arrivare in fondo.",
	},
	["thb.muse.w24.calf.001"] = {
		"guarda due giovani tauren che fanno a testate per gioco, le corna poco più che bozzi, e spingono così forte tutti e due che nessuno si sposta di un dito.",
		"sorride a due piccoli piantati fronte contro fronte in mezzo al sentiero, che grugniscono e raspano con gli zoccoli, bloccati del tutto e felici del tutto.",
		"aggira due piccoli tauren che si spingono testa contro testa, una gara che sembra avere un'unica regola: chi ride per primo perde.",
	},
	["thb.muse.w24.calf.002"] = {
		"Hanno mandato una piccola a portare un messaggio. Corre per il primo tratto, si ricorda, e fa il resto al passo con una dignità enorme, le orecchie che fremono dalla voglia di ripartire.",
		"Ho visto un giovane tauren fare una commissione: uno scatto fino alla curva, poi l'andatura lenta e solenne di un personaggio importantissimo appena è spuntato un adulto.",
		"Il piccolo che porta i messaggi tra le tende ha imparato a riferirli parola per parola, pause comprese, con la voce più bassa che riesce a fare.",
	},
	["thb.muse.w24.calf.003"] = {
		"Un piccolo tauren mi studia da dietro un palo della tenda. Ogni volta che mi giro, sparisce. Ogni volta che distolgo lo sguardo, eccolo lì, un po' più vicino.",
		"Quel piccolo fissa le mie orecchie come se fossero la cosa più strana della rupe. A dire il vero, da queste parti forse lo sono.",
	},
	["thb.muse.w24.calf.004"] = {
		"vede un piccolo addormentarsi a metà pasto contro il fianco di un adulto, un pezzo di pane ancora in mano, e l'adulto continuare a mangiare attentissimo a non muoversi.",
		"nota un giovane tauren addormentato in un mucchio di coperte vicino a una soglia, un orecchio che ancora scatta a ogni rumore, come se metà di lui fosse rimasta di guardia.",
		"scorge un piccolo addormentato di traverso sulla soglia di una tenda, e gli adulti che lo scavalcano uno dopo l'altro, senza una parola e senza svegliarlo.",
	},
	["thb.muse.w24.calf.005"] = {
		"Un piccolo ha provato a trasportare un cesto grande quasi quanto lui. Tre adulti guardavano senza muovere un dito. Ce l'ha fatta. Loro hanno annuito. Così, a quanto pare, funzionano le lezioni quassù.",
		"Qui ai giovani danno carichi appena troppo pesanti, e nessuno li aiuta finché non chiedono. Ne ho visto uno sbuffare, barcollare e rifiutarsi di chiedere, e arrivare in fondo.",
		"A un piccolo è caduta metà della legna che portava. Un adulto di passaggio ha raccolto un solo rametto, gliel'ha restituito e ha proseguito.",
	},
	["thb.muse.w24.calf.006"] = {
		"Quel piccolo mi ha appena battuto a chi abbassa lo sguardo per primo. Non sapevo nemmeno che stessimo giocando.",
		"Ho perso una sfida di sguardi contro uno con le corna ancora in boccio. Pretendo la rivincita.",
	},
	["thb.muse.w24.calf.007"] = {
		"Un adulto sta insegnando a un piccolo a stare fermo. Tutta qui, la lezione. Siediti. Stai fermo. Guarda la pianura. Il piccolo resiste più o meno quanto resisterei io.",
		"Pare che ai giovani qui si insegni anche ad aspettare e basta. Ho visto un piccolo provarci accanto a un anziano: un lamento, un dimenarsi, una lunga occhiata all'anziano, e poi, piano piano, l'attesa vera.",
	},
	["thb.muse.w24.calf.008"] = {
		"aggira un giovane tauren che spazza il sentiero con una scopa alta il doppio di lui, spostando la polvere da un capo all'altro e poi indietro.",
		"si ferma per lasciar passare un piccolo che trascina un fascio di legna minuta, i rametti che sobbalzano dietro di lui come una coda riluttante.",
		"aspetta che passi di fretta un piccolo tauren con una giara d'argilla stretta tra le braccia, la lingua fuori per la concentrazione, ogni passo posato come una promessa.",
	},
	["thb.muse.w24.calf.009"] = {
		"Mentre la luce cala, voci lunghe e basse cominciano a chiamare nomi da un'altura all'altra, e una dopo l'altra piccole sagome lasciano i giochi e trotterellano verso le tende.",
		"Il crepuscolo, e cominciano i richiami: una voce profonda da una tenda, un'altra che risponde da oltre il vuoto, e i giovani tauren che a malincuore lasciano il gioco esattamente dov'era.",
	},
	["thb.muse.w24.calf.010"] = {
		"I piccoli di questa rupe non sono mai stati braccati nell'erba aperta. Giocano sull'orlo dell'altura senza pensare a chi potrebbe arrivare. È questo che i nostri anziani hanno comprato per loro.",
		"Guardo i nostri piccoli correre lungo l'altura, spensierati e chiassosi, e penso che il vero lavoro della città sia questo. Tutto il resto serve solo a tenerla in piedi.",
	},
	["thb.muse.w24.calf.011"] = {
		"Mi è toccata una lunga storia piena di gesti, raccontata da un piccolo. Ho annuito nei punti giusti, credo. Alla fine mi ha guardato serissimo e se n'è andato soddisfatto.",
		"Un tauren piccolissimo mi ha appena confidato un segreto importantissimo. Non ho capito una parola, ma ho promesso di mantenerlo.",
	},
	["thb.muse.w24.calf.012"] = {
		"sosta accanto a un giovane tauren che conta perline in una ciotola sotto lo sguardo di un anziano, muovendo le labbra e ricominciando da capo ogni volta che una perlina rotola via.",
		"segue un piccolo che prova l'agguato del cacciatore su un tratto vuoto dell'altura, pancia a terra, ogni zoccolo posato con cura esagerata, verso un cesto ignaro.",
		"sorprende un piccolo che prova un saluto da grandi davanti a un palo della tenda, la testa chinata come si deve, e poi si guarda intorno per vedere se qualcuno l'ha visto.",
	},
	["thb.muse.w24.calf.013"] = {
		"Un tauren grande e grosso ha portato su per il sentiero due piccoli addormentati, uno per spalla come sacchi di grano, e mi ha fatto un cenno passando senza svegliarne nessuno.",
		"C'era un piccolo a cavalcioni sulle spalle di un adulto, aggrappato alle corna come a un timone. L'adulto andava dove il timone suggeriva, con grande lentezza.",
	},
	["thb.muse.w24.calf.014"] = {
		"I piccoli tauren corrono come macigni che hanno appena imparato. Attenti ai piedi.",
		"Piano, piccolo. Se mi vieni addosso a quella velocità, uno dei due finisce giù dall'orlo, e non sarai tu.",
	},
	["thb.muse.w24.calf.015"] = {
		"Qui su Elder Rise una druida lascia che un gruppetto di piccoli accarezzi il pelo della sua forma d'orsa, una mano timida dopo l'altra, mentre lei resta sdraiata, paziente come una collina.",
		"Su quest'altura i piccoli conoscono le bestie da vicino. Una druida in forma di grande felino resta immobile mentre tre piccoli le contano i baffi, ad alta voce, e non sono d'accordo.",
	},
	["thb.muse.w24.calf.016"] = {
		"La pioggia ha spinto ogni adulto sotto una tettoia di pelle e lasciato fuori ogni piccolo, a pestare le pozzanghere del sentiero muggendo come se l'acqua l'avessero inventata loro.",
		"Una piccola tauren se ne sta sotto la pioggia a bocca aperta verso il cielo, contentissima, mentre da una tenda qualcuno la chiama con sempre meno speranza.",
	},
	["thb.muse.w24.calf.017"] = {
		"sente un giovane tauren recitare a un anziano una lunga fila di nomi, forse di antenati, inciampando sempre nello stesso punto, e l'anziano che ogni volta gli suggerisce la parola senza spazientirsi.",
		"indugia mentre un piccolo ripete a un vecchio tauren una lunga catena di nomi, inciampando sempre nello stesso anello, e il vecchio che glielo porge ogni volta come fosse la prima.",
	},
	["thb.muse.w24.calf.018"] = {
		"Un piccolo gioca da solo in fondo all'altura, con molta attenzione, come giocano i bambini quando aspettano qualcuno. Una guardia continua a lanciargli occhiate. Nessuno mi dice niente, e io non chiedo.",
		"C'è un giovane tauren che siede in cima all'ascensore ogni volta che passo, a guardare ogni carico che sale. Spero che chi aspetta sia sul prossimo.",
	},
	["thb.muse.w24.calf.019"] = {
		"Corri, corri, ma non verso l'orlo, piccolo. Verso il pane.",
		"Ehi! Piano vicino al dirupo. I tuoi anziani se la prenderanno con me.",
	},
	["thb.muse.w24.calf.020"] = {
		"Sì, guardo. Sì, era un salto bellissimo. Sì, rifallo, ma più lontano da me.",
		"No, non conosco giochi belli. Fammi vedere i tuoi, e vacci piano.",
	},
	["thb.muse.w24.carving.001"] = {
		"osserva un intagliatore svuotare l'interno di un corno con un coltello ricurvo, truciolo dopo truciolo, finché non diventa tanto sottile da lasciar passare la luce.",
		"si ferma accanto a chi sta scavando un corno per farne una coppa: il coltello ricurvo lavora all'interno con piccoli, pazienti giri di polso.",
		"esamina una fila di cucchiai di corno messi a stagionare, ognuno piegato in una curva appena diversa, come se fosse fatto per una mano precisa.",
	},
	["thb.muse.w24.carving.002"] = {
		"Un vassoio di alamari d'osso sulla coperta di un mercante, e non ce n'è uno uguale all'altro: un kodo minuscolo, una mezzaluna, un nodo, una faccia che fa la linguaccia. Ho comprato la faccia.",
		"Bottoni d'osso, pettini d'osso, perline d'osso infilate per grandezza. Un intagliatore di quassù sa trovare venti piccole cose dentro un solo osso grande.",
		"Mi sono preso un alamaro d'osso a forma di kodo addormentato. Mi tiene chiuso il mantello e ogni volta mi strappa un sorriso.",
	},
	["thb.muse.w24.carving.003"] = {
		"I trucioli degli intagliatori non vanno sprecati: si raccolgono in una cesta e finiscono nel fuoco di cucina, così l'odore di un totem nuovo arriva nella cena di qualcuno.",
		"Trucioli di cedro nel fuoco, e per un po' tutta l'altura profuma come il banco dell'intagliatore.",
	},
	["thb.muse.w24.carving.004"] = {
		"L'intagliatore mi ha chiesto di non muovermi perché ho una faccia «interessante». Ho deciso che è un complimento.",
		"Un intagliatore continua a guardare me e poi un ciocco di legno. O faccio da modello, o faccio da avvertimento.",
		"Se la settimana prossima spunta su una bancarella una mia versione in legno, voglio la mia parte.",
	},
	["thb.muse.w24.carving.005"] = {
		"Una pittrice sta rinnovando un vecchio totem: macina terra rossa con grasso in una ciotola di pietra e stende il colore nuovo esattamente sopra quello sbiadito. Non sbaglia un tratto. A decidere, dice, è ancora chi l'ha dipinto per primo.",
		"Il colore dei totem è quasi tutto terra: argilla rossa, gesso bianco, il nero del fuoco, impastati col grasso a forza di pollice. Quando sbiadisce, qualcuno ridipinge lo stesso volto sopra se stesso.",
		"Guardare ridipingere un totem è come sentir raccontare una storia parola per parola. I colori tornano; non si aggiunge niente.",
	},
	["thb.muse.w24.carving.006"] = {
		"sorride a un tauren enorme che intaglia un minuscolo kodo di legno per un vitello in attesa accanto al suo ginocchio: il giocattolo non è più grande di una sua nocca.",
		"guarda mani gigantesche scolpire un kodo giocattolo più piccolo di un pollice, e il giovane tauren che lo aspetta tendere tutte e due le mani molto prima che sia pronto.",
	},
	["thb.muse.w24.carving.007"] = {
		"Un intagliatore affila un coltello su una pietra piatta bagnata, poi ne prova il filo sul pelo dell'avambraccio. Metà del braccio è rasata a chiazze ordinate. Si vede che lo fa spesso.",
		"I coltelli da intaglio ricevono più cure degli intagli: affilati, unti, avvolti nella pelle, messi in fila. Un filo spuntato, mi ha detto un intagliatore, strappa il legno e offende l'albero.",
		"Prima di toccare il legno, l'intagliatore dedica un bel po' al coltello. Il legno aspetta. Ci è abituato.",
	},
	["thb.muse.w24.carving.008"] = {
		"Un intagliatore ammorbidisce un corno d'ariete in una pentola d'acqua calda, poi lo raddrizza fra due pioli e lo lascia rassodare. Sembra una crudeltà ed è, a quanto pare, una gentilezza: altrimenti il corno si spaccherebbe.",
		"Il corno, ho scoperto, si può far bollire finché non diventa morbido e poi schiacciarlo. Qui un intagliatore ne sta ricavando un pettine da quello che, la stagione scorsa, era ancora un ariete in piena forma.",
	},
	["thb.muse.w24.carving.009"] = {
		"Qui su Elder Rise gli intagliatori lavorano soltanto legno caduto da sé, mi dice uno di loro. I druidi non vorrebbero altrimenti, e gli intagliatori non sembrano dispiaciuti di lasciare agli anni il compito di abbattere.",
		"I druidi di Elder Rise, mi dicono, non vogliono che si tagli un albero vivo, così gli intagliatori di quassù aspettano il legno caduto. Ogni tronco su questa altura è arrivato qui per decisione propria, più o meno.",
		"Su Elder Rise anche l'intaglio ha le sue regole. Solo legno caduto, chiedono i druidi, o almeno così dicono gli intagliatori, che la rispettano senza un brontolio che io riesca a sentire.",
	},
	["thb.muse.w24.carving.010"] = {
		"L'intagliatore mi ha dato un bastone e mi ha detto di trovare quello che c'è dentro. Finora ho trovato altro bastone.",
		"È un'ora che intaglio. Doveva essere un kodo. Adesso è uno stuzzicadenti più che dignitoso.",
		"Volevo provare a intagliare. Mi hanno dato il legno più tenero della rupe e il coltello meno affilato. Giusto.",
	},
	["thb.muse.w24.carving.011"] = {
		"Un totem nuovo giace su un fianco sopra tre cavalletti, i volti a metà che fissano il cielo. Gli intagliatori lo lavorano disteso e lo alzano solo quando è finito. Mi piacerebbe esserci, quel giorno.",
		"Il totem incompiuto riposa sui cavalletti come un dormiente, e gli intagliatori gli girano intorno in silenzio, come per non svegliarlo prima che sia pronto a stare in piedi.",
	},
	["thb.muse.w24.carving.012"] = {
		"Mulgore fa crescere l'erba molto meglio degli alberi, così gli intagliatori trattano ogni buon tronco come una notizia arrivata da lontano. Uno di loro ha passato la mano lungo un fusto e gli ha chiesto da dove venisse.",
		"Il legno è prezioso su queste pianure. Un intagliatore misura un tronco tre volte, ci gira intorno, ci dorme sopra, e solo allora dà il primo taglio.",
		"Per un bel pezzo un intagliatore ha rigirato fra le mani un ciocco corto, poi l'ha messo da parte per più avanti. Più avanti, ho capito, può voler dire l'anno prossimo.",
	},
	["thb.muse.w24.carving.013"] = {
		"prende da una bancarella un intaglio, un falco ad ali chiuse, e scopre che l'intagliatore ha rifinito persino la parte di sotto, che nessuno vedrà mai.",
		"rigira fra le dita una figurina d'osso e trova il retro lavorato con la stessa cura del davanti, ogni piuma incisa.",
	},
	["thb.muse.w24.carving.014"] = {
		"I coltelli da intaglio qui sono fatti per mani tauren. Nella mia mano, il più piccolo sembra una mannaia.",
		"Ho preso in mano il mazzuolo di un intagliatore per ammirarlo e mi sono servite tutte e due le mani. Lui lo usa per i lavori di fino.",
		"Gli attrezzi tauren sono fatti per mani tauren. Col coltellino più piccolo dell'intagliatore in mano, ho la sensazione di giocare in bottega coi ferri dei grandi.",
	},
	["thb.muse.w24.carving.015"] = {
		"Gli intagli più antichi sono piccoli e leggeri, mi ha detto un mercante, fatti per viaggiare in uno zaino attraverso le Barrens. Quelli nuovi sono alti e pesanti. Si legge la fine del vagabondare nella grandezza delle cose.",
		"I pezzi più vecchi sugli scaffali degli intagliatori starebbero nel palmo di una mano. Erano fatti per gente che camminava, ha detto un intagliatore, e tutto ciò che possedeva doveva essere leggero.",
	},
	["thb.muse.w24.carving.016"] = {
		"Quell'intaglio mi sta guardando. Credo che lo comprerò.",
		"Questo kodo d'osso ha più carattere di metà della gente che conosco. Me lo incarta, per favore?",
	},
	["thb.muse.w24.carving.017"] = {
		"È un cucchiaio o una scultura? Tutti e due? Allora pago per tutti e due.",
		"Persino i cucchiai qui hanno un volto intagliato. Mangerò la zuppa sotto sorveglianza.",
	},
	["thb.muse.w24.carving.018"] = {
		"Su Hunter Rise gli intagliatori d'osso siedono accanto ai cacciatori, e zanne e palchi passano dagli uni agli altri con ancora un filo d'erba della pianura impigliato.",
		"Su Hunter Rise un'intagliatrice rigira alla luce una zanna di cinghiale, indecisa. Un cacciatore aspetta lì vicino, come se anche il futuro della zanna fosse affar suo.",
	},
	["thb.muse.w24.carving.019"] = {
		"Le mani dell'intagliatore sono una mappa di piccoli tagli vecchi, linee chiare nel pelo. Ognuno, sospetto, è arrivato con una lezione allegata.",
		"Cicatrici sulle dita degli intagliatori, decine, sottili come capelli. Le più fresche sono del più giovane. Il più vecchio ha smesso di collezionarle.",
	},
	["thb.muse.w24.centaur.001"] = {
		"I centauri non affrontarono mai i tauren in campo aperto, raccontano gli anziani. Li logoravano: un accampamento colpito, una mandria dispersa, i ritardatari raggiunti. Una guerra di gambe stanche.",
		"A sentire i vecchi tauren, i centauri avevano una pazienza di tipo crudele: seguire la tribù, aspettare che si stancasse, prendere i più lenti.",
		"Il peggio degli anni dei centauri, mi ha detto un anziano, non erano le razzie. Era l'attesa tra una e l'altra.",
	},
	["thb.muse.w24.centaur.002"] = {
		"nota una lunga cicatrice chiara sulla spalla di un vecchio tauren, di quelle che lascia una lancia, e come l'anziano la sfreghi senza accorgersene.",
		"scorge un anziano tauren con un corno scheggiato, e accanto un tauren più giovane che guarda la scheggiatura ogni volta che si parla dei Barrens.",
		"scorge un vecchio tauren con mezzo orecchio sinistro in meno, che ascolta le chiacchiere dei giovani tenendo verso di loro quello buono.",
	},
	["thb.muse.w24.centaur.003"] = {
		"Poco fa qualcuno è passato di corsa sulle assi, rapido e pesante, e tutti i tauren anziani a portata d'orecchio hanno alzato la testa insieme. Poi hanno riso di sé stessi, un poco. Vecchia paura, degli anni dei centauri.",
		"Un improvviso scalpitio di zoccoli qui vicino, e gli anziani alzano la testa tutti insieme prima di ricordarsi dove sono. Certi allarmi non si disimparano mai.",
	},
	["thb.muse.w24.centaur.004"] = {
		"Nella pianura i centauri erano più veloci dei tauren. Nessuno ha mai visto un centauro arrampicarsi su una parete. Si vede che gli anziani ci hanno pensato parecchio.",
		"Quattro zampe vanno benissimo sull'erba e non servono a niente su una parete di roccia. Da qualche parte, nella fondazione di questa città, un tauren deve averci sorriso sopra.",
	},
	["thb.muse.w24.centaur.005"] = {
		"Le notizie di centauri nei Barrens fanno ancora posare agli anziani qualsiasi cosa abbiano in mano. Non è proprio paura. Piuttosto come si posa una tazza prima di un racconto duro.",
		"Quando un cacciatore porta notizie di cavalieri centauri, i vecchi tauren si fanno immobili e molto educati. I giovani alzano la voce. Si capisce subito chi ricorda.",
	},
	["thb.muse.w24.centaur.006"] = {
		"Vicino agli ascensori si parla di centauri. Prima o poi, qui, si finisce sempre a parlare di centauri.",
		"Nomina i centauri quassù e guarda un'intera fila di orecchie tauren appiattirsi.",
		"Di' centauri su quest'altura e perfino il cuoco smette di mescolare.",
	},
	["thb.muse.w24.centaur.007"] = {
		"Qualcuno è salito dalla pianura con la segatura impigliata nel pelo degli stinchi. Nessuno ha avuto bisogno di chiedere da quali colline venisse. La Venture Company lascia il segno su tutto quello che le passa vicino.",
		"Una guardia ha rovesciato su una pelle davanti agli anziani una manciata di viti e rivetti goblin, raccolti chissà dove sulle colline. E loro li hanno guardati a lungo senza toccarli.",
		"Pezzi della Venture Company continuano ad arrivare in città: un dente di sega spezzato, uno straccio unto, un foglio di conti accartocciato. I tauren se li passano di mano in mano come prove.",
	},
	["thb.muse.w24.centaur.008"] = {
		"I quilboar si sono trincerati ai margini di Mulgore, dice la gente. I tauren ne parlano aggrottando la fronte, più stanchi che arrabbiati, come un contadino parla delle erbacce.",
		"Quilboar tra i rovi, come sempre. Quassù i cacciatori li nominano come si nomina un tetto che perde: niente di urgente, mai sistemato del tutto.",
	},
	["thb.muse.w24.centaur.009"] = {
		"Ogni tanto salgono in città pelli strappate ai gnoll, e i conciatori le trattano con una cura in più, quasi a scusarsi con la bestia.",
		"Un cacciatore ha portato su un fagotto di pelli recuperate da un accampamento di gnoll. Nessuno qui le userebbe per qualcosa di ordinario. Le tengono da parte, come le cose dei morti.",
	},
	["thb.muse.w24.centaur.010"] = {
		"osserva due Bluffwatcher scambiarsi poche parole a bassa voce sulla pianura, e uno dei due inclinare le corna verso le colline dove lavorano i goblin.",
		"coglie un brandello di discorso tra due guerrieri di passaggio: quilboar, un accampamento bruciato, un conto di qualcosa, poi le voci si allontanano.",
		"sente per caso un Bluffwatcher riferire a un compagno il resoconto di un cacciatore, parola per parola, con la lentezza scrupolosa di chi lo riferirà a sua volta.",
	},
	["thb.muse.w24.centaur.011"] = {
		"I tauren hanno conquistato Mulgore a caro prezzo, e quel prezzo l'hanno pagato nei Barrens. Quassù nessuno dimentica che la pianura verde fu comprata con miglia di polvere.",
		"Ogni filo d'erba di Mulgore, mi ha detto un anziano, poggia su un miglio di polvere percorso da qualcuno che qui non è mai arrivato.",
	},
	["thb.muse.w24.centaur.012"] = {
		"Una scheggia nello zoccolo: così i tauren trattano la Venture Company. Con calma, fino in fondo, e con uno sguardo che dice che non succederà una seconda volta.",
		"I goblin stanno abbattendo Mulgore e i tauren stanno decidendo cosa fare. Ai goblin conviene sperare che se la prendano comoda.",
		"Squadre della Venture Company a Mulgore. Coraggiosi. Non furbi, ma coraggiosi.",
	},
	["thb.muse.w24.centaur.013"] = {
		"Qui su Hunter Rise si parla solo di quello che non va nella pianura: meno selvaggina dove tagliano i goblin, trappole di gnoll dove prima non ce n'erano.",
		"I cacciatori di quest'altura si scambiano notizie come segni di pista. Un pendio disboscato, una sorgente sporcata, una mandria spostata: ogni cosa detta una volta e ricordata.",
		"Su Hunter Rise tengono i guai della pianura come altri tengono i conti. Niente di scritto; e niente di dimenticato.",
	},
	["thb.muse.w24.centaur.014"] = {
		"nota un vecchio tauren voltarsi dal bordo orientale ogni volta che la polvere si alza oltre il crinale lontano, come se quella vista l'avesse consumata da tempo.",
		"vede un anziano fermo sull'orlo a guardare verso est, verso i Barrens, a lungo, e poi voltarsi apposta verso la parte verde della pianura.",
		"resta a guardare un anziano tauren indicare l'est a uno più giovane e dire una sola parola, e il giovane smettere di sorridere.",
	},
	["thb.muse.w24.centaur.015"] = {
		"osserva i fuochi di un accampamento lontano nella pianura, e un anziano sul bordo che li guarda anche lui, finché un Bluffwatcher mormora che sono solo pastori.",
		"resta sul bordo buio dell'altura mentre un vecchio tauren conta i fuochi nella pianura, come un tempo, dicono gli anziani, le tribù contavano quelli dei centauri.",
	},
	["thb.muse.w24.centaur.016"] = {
		"Mi dicono che i tauren hanno una parola per il rumore di molti zoccoli che arrivano da lontano, e che non amano pronunciarla. Quella parola gliel'hanno insegnata i centauri.",
		"C'è un modo tutto particolare in cui gli anziani ammutoliscono quando i giovani galoppano per gioco. Nessuno li rimprovera. Ma nessuno si unisce a loro.",
	},
	["thb.muse.w24.centaur.017"] = {
		"I goblin della Venture Company vendono il legname a tavole. I tauren contano gli stessi alberi a secoli. Sul prezzo non andranno mai d'accordo.",
		"Un goblin lo chiamerebbe dissodare. I tauren lo chiamano con una parola più lenta e molto meno educata, e solo tra di loro.",
	},
	["thb.muse.w24.centaur.018"] = {
		"nota una lancia di centauro spezzata appesa al palo di una tenda, con la punta verso terra, e che i tauren che passano non la guardano.",
		"scorge sul braccio di un vecchio tauren un disegno di pittura di guerra sbiadito, quasi scomparso, e la cura con cui l'anziano lo tiene coperto.",
		"si ferma a guardare un piccolo tauren galoppare a quattro zampe gridando come un centauro, e un anziano richiamarlo, senza rabbia, ma subito.",
	},
	["thb.muse.w24.centaur.019"] = {
		"Se fossi un centauro, starei ben lontano da questa rupe. Questa gente ha la memoria lunga e la pazienza ancora più lunga.",
		"Qualsiasi cosa i centauri abbiano fatto a questo popolo, spero se ne siano pentiti. I tauren di sicuro non hanno dimenticato.",
	},
	["thb.muse.w24.cookfire.001"] = {
		"si siede presso un fuoco da campo e si ritrova in mano uno spiedo di carne arrosto prima di aver detto una parola, mentre chi cucina è già tornato alle braci.",
		"si lascia cadere su un tronco accanto al fuoco, e uno spiedo arriva in mano prima che il saluto sia finito.",
	},
	["thb.muse.w24.cookfire.002"] = {
		"Ho chiesto un pochino. Chi cucina ha annuito con saggezza e mi ha dato quel che un tauren intende per un pochino.",
		"Le porzioni qui sono di due misure: da tauren, e un po' più che da tauren, per gli ospiti.",
		"Lo spiedo che mi hanno dato è lungo quanto il mio braccio, e la carne basterebbe a un accampamento delle Barrens. Mi dicono che è uno spuntino.",
	},
	["thb.muse.w24.cookfire.003"] = {
		"Mi serve un secondo piatto. Non per altro cibo: per reggere il primo.",
		"Grazie. Mangio quel che riesco e il resto me lo porto appresso per una settimana.",
		"Questa è una porzione? Vorrei conoscere chi ne ordina due.",
	},
	["thb.muse.w24.cookfire.004"] = {
		"Al fuoco nessuno mi chiede da dove vengo o cosa ho fatto. Si passano la ciotola e parlano del prezzo del sale. Avevo dimenticato quanto riposi.",
		"A un fuoco di sconosciuti, quassù, non mi fanno domande. Solo se ne voglio ancora, e quella torna di continuo.",
	},
	["thb.muse.w24.cookfire.005"] = {
		"ascolta un troll spiegare a chi cucina come la speziarebbero i Darkspear, quella carne; chi cucina annuisce piano e non cambia niente.",
		"divide il fuoco con un orco giovane che mangia a morsi rapidi e affamati, mentre i tauren intorno alle braci prendono un boccone lento a testa e osservano con blando interesse.",
	},
	["thb.muse.w24.cookfire.006"] = {
		"Cos'è? No, non dirmelo. È buono, e preferisco che resti così.",
		"Qualunque cosa sia, voglio la ricetta. O chi l'ha cucinata. Soprattutto la ricetta.",
	},
	["thb.muse.w24.cookfire.007"] = {
		"Il mio cucchiaio ha una faccina intagliata sul manico. Mi ha guardato mangiare tutta la ciotola. Credo che approvasse.",
		"Qualcuno ha intagliato un visetto sul manico del cucchiaio che mi hanno dato. È difficile mangiare con ingordigia mentre ti guarda.",
	},
	["thb.muse.w24.cookfire.008"] = {
		"prova a restituire la ciotola e se la ritrova riempita, col mestolo già passato all'ospite accanto.",
		"posa un momento la ciotola vuota e, voltandosi, la trova piena, senza nessuno nei paraggi con l'aria colpevole.",
	},
	["thb.muse.w24.cookfire.009"] = {
		"Al fuoco ho detto ad alta voce che la cinghia dello zaino si stava sfilacciando. Un momento dopo una grossa mano mi porgeva ago e tendine, e poi tornava dritta alla sua ciotola.",
		"Un tauren al fuoco mi sta ricucendo una cinghia che non ho chiesto a nessuno di toccare. Avevo solo detto che era allentata. Quassù, a quanto pare, vale come una richiesta.",
	},
	["thb.muse.w24.cookfire.010"] = {
		"Complimenti a chi ha cucinato. E le mie scuse a chi dovrà portarmi via dopo.",
		"La cosa più buona che ho mangiato da settimane. Forse in assoluto. Non ditelo agli altri cuochi.",
	},
	["thb.muse.w24.cookfire.011"] = {
		"si avvicina a un fuoco mentre scende il crepuscolo, e qualcuno scivola lungo il tronco senza una parola per fare posto.",
		"si siede accanto a un fuoco appena acceso per il crepuscolo, e si vede porgere un ventaglio di pelle rigida, con un gesto muto che indica dove le braci vogliono aria.",
	},
	["thb.muse.w24.cookfire.012"] = {
		"C'è una sola cosa che i tauren fanno in fretta: accorgersi di una ciotola vuota.",
		"Lenti in tutto, i tauren, tranne in una cosa: una ciotola vuota in mano a un ospite dura quanto una scintilla.",
	},
	["thb.muse.w24.cookfire.013"] = {
		"C'è del sale? Ah, c'è già. C'è già tutto. Smetto di chiedere e mangio.",
		"È rimasto di quel pane scuro? No? Allora prendo ancora un po' di tutto il resto.",
	},
	["thb.muse.w24.cookfire.014"] = {
		"scalda le dita fredde sulle braci, girandole piano come carne sullo spiedo, mentre chi cucina canticchia.",
		"tende le mani verso le braci per un lungo momento di quiete, e chi cucina, senza interrompere il motivetto, spinge più vicino una pietra piatta su cui sedersi.",
	},
	["thb.muse.w24.cookfire.015"] = {
		"Il mantello si tiene l'odore del fuoco per giorni. In qualche accampamento lontano ne sentirò un filo e sarò di nuovo su questo tronco.",
		"Un pasto a un fuoco tauren, e il mantello se lo porta dietro come un ricordo: fumo, grasso e qualcosa di verde che non ho saputo nominare.",
	},
	["thb.muse.w24.cookfire.016"] = {
		"Bel silenzio, attorno a questo fuoco. Lo direi, ma lo rovinerei.",
		"Da un pezzo nessuno parla, qui attorno al fuoco. La conversazione migliore della settimana.",
	},
	["thb.muse.w24.cookfire.017"] = {
		"Gli ospiti al fuoco mangiano sempre troppo in fretta, all'inizio. Alla terza ciotola rallentano, ed è lì che capisco che il benvenuto è arrivato.",
		"Un orco al mio fuoco mangia come se qualcuno volesse portargli via il piatto. Gli metto davanti un altro pezzo senza dire niente. Dopo qualche pasto, gli ospiti imparano che non succede.",
	},
	["thb.muse.w24.cookfire.018"] = {
		"si brucia un dito al primo boccone, troppo {g:educato|educata} per aspettare, e dall'altro lato del fuoco arriva una risata bassa e rotolante.",
		"addenta troppo presto, si scotta la lingua e finge con grande impegno che non sia successo nulla, mentre un tauren al di là delle braci guarda educatamente altrove.",
	},
	["thb.muse.w24.cookfire.019"] = {
		"Le radici che arrostiscono nella cenere qui escono nere come carbone e dolci dentro. Ne ho chiesto il nome due volte, e due volte l'ho perso a metà.",
		"Radici annerite tirate fuori dalla cenere, aperte col pollice. Nessuno qui la chiamerebbe una festa. Per me è la cosa migliore dell'altura.",
	},
	["thb.muse.w24.cookfire.020"] = {
		"si fa mostrare da un tauren paziente, a gesti e senza parole, come strappare la focaccia e avvolgerci la carne, e ci riesce quasi.",
		"guarda il tauren al di là del fuoco avvolgere la carne nella focaccia con tre pieghe precise, ci prova, e ottiene qualcosa di più simile a un piccolo disastro.",
	},
	["thb.muse.w24.cookfire.021"] = {
		"Posso aiutare? So mescolare. Mescolo benissimo.",
		"Lasciatemi almeno andare a prendere l'acqua. No? Allora resto qui a sentirmi in colpa. Nessun disturbo.",
		"Datemi qualcosa da fare. Pelare, portare, qualsiasi cosa. Ho mangiato per tre.",
	},
	["thb.muse.w24.cookfire.022"] = {
		"All'alba c'è già un fuoco acceso, e io ci vado incontro come una falena.",
		"Alba, e chi cucina per primo sta già disponendo le ciotole. Subito dopo arrivo io. Prendo quel che c'è per primo nella pentola.",
	},
	["thb.muse.w24.cookfire.023"] = {
		"Grazie, davvero. No, non posso. No, sul serio. ...Va bene, un pochino.",
		"Ho detto che sono {g:sazio|sazia}. Mi hai sentito. Eppure il mestolo arriva.",
	},
	["thb.muse.w24.crossing.001"] = {
		"A metà passerella incrocio un tauren con un cesto per braccio. Qualcuno deve tornare indietro, ed è chiaro chi dei due pesa meno.",
		"Su queste assi non si passa in due, se uno è un tauren carico di legna. Torno all'inizio camminando all'indietro, e ricevo un cenno di gratitudine molto solenne.",
	},
	["thb.muse.w24.crossing.002"] = {
		"arriva all'ascensore proprio mentre scende senza di {g:lui|lei}, e si mette ad aspettare con l'aria di chi lo aveva previsto.",
		"raggiunge la piattaforma giusto in tempo per vederla calare, vuota, e incrocia le braccia per aspettare.",
	},
	["thb.muse.w24.crossing.003"] = {
		"Perso l'ascensore per un passo. Non ha nemmeno rallentato per scusarsi.",
		"L'ascensore non aspetta nessuno. Tranne i tauren. Per loro sembra aspettare sempre.",
		"L'ascensore è andato. Pazienza. Resto qui con l'aria tranquilla, come la gente del posto.",
	},
	["thb.muse.w24.crossing.004"] = {
		"Conto le assi quando attraverso. Non è paura. È solo un modo di tenere occupata la testa mentre i piedi fanno la parte coraggiosa.",
		"Sulla strada per l'altura in fondo c'è un'asse che cede un po' più delle altre. La scavalco ogni volta, e sospetto di non essere {g:il primo|la prima}.",
		"A ogni traversata scelgo un nodo sul palo in fondo e ci cammino incontro come se mi dovesse dei soldi. Funziona meglio che guardare altrove.",
	},
	["thb.muse.w24.crossing.005"] = {
		"attraversa dietro un orco che stringe le funi con tutti e due i pugni e brontola dal primo all'ultimo passo.",
		"passa dietro un troll che cammina sulle assi con le mani in aria, ridendo, mentre tutti gli altri si aggrappano un po' più forte.",
	},
	["thb.muse.w24.crossing.006"] = {
		"Ho preso la passerella sbagliata e sono {g:tornato|tornata} sull'altura che avevo appena lasciato, dall'altro lato. Il tauren che ha assistito non ha detto niente, con grande gentilezza.",
		"Continuo a sbagliare passerella. La città sono poche alture legate insieme, e riesco lo stesso a visitarle tutte due volte.",
	},
	["thb.muse.w24.crossing.007"] = {
		"Prego, dopo di te. Davvero. Il mio turno lo prendo quando le assi smettono di muoversi.",
		"Vai pure avanti, non ho fretta. Ho notato che qui è la cosa educata da dire.",
	},
	["thb.muse.w24.crossing.008"] = {
		"si inginocchia all'inizio della passerella per fare un doppio nodo ai lacci prima di partire: qui non si attraversa con niente di slacciato.",
		"si ferma prima di attraversare per infilare una cinghia allentata e stringere lo zaino, i piccoli riti di chi sta per camminare sul vuoto.",
	},
	["thb.muse.w24.crossing.009"] = {
		"Ho portato una tazza piena da un capo all'altro della passerella senza versarne una goccia. Nessuno ha visto. Resta comunque il mio momento di gloria in questa città.",
		"Una ciotola tra le mani e una traversata davanti. L'ho portata come si porta l'ultima brace di un fuoco, e dall'altra parte non mancava una goccia.",
	},
	["thb.muse.w24.crossing.010"] = {
		"Ascensore pieno: due tauren, un sacco di grano e io. Se c'è da alleggerire, si comincia da me, si vede.",
		"In quattro sull'ascensore, e a tenersi alla fune ci sono solo io.",
	},
	["thb.muse.w24.crossing.011"] = {
		"attraversa tra le alture alla luce dei fuochi alle due estremità, saggiando ogni asse prima di fidarsi.",
		"cammina tra le funi nel buio, una mano che scorre sulla corda, l'altura in fondo segnata soltanto da una lanterna.",
	},
	["thb.muse.w24.crossing.012"] = {
		"A metà strada mi fermo ad ammirare i nodi. Non ho paura. Sono solo nodi molto interessanti.",
		"Ogni volta che la passerella si abbassa mi prende un improvviso interesse erudito per le corde. Il tauren alle mie spalle aspetta, educato, che finisca le mie ricerche.",
	},
	["thb.muse.w24.crossing.013"] = {
		"si scosta mentre l'ascensore arriva carico di legna, una cassa di vasi d'argilla e un tauren addormentato, che si sveglia in cima come chiamato.",
		"aspetta che dall'ascensore scendano sacchi di farina e due viaggiatori impolverati, poi sale da {g:solo|sola} e ha tutta la piattaforma per sé.",
	},
	["thb.muse.w24.crossing.014"] = {
		"Scusa, questa è la strada per la locanda o per cadere di sotto? Ah, la locanda. Grazie.",
		"È questa la passerella per i maestri? Lascia stare. Seguo chi sembra più sicuro.",
	},
	["thb.muse.w24.crossing.015"] = {
		"Ogni tauren che incrocio sulla passerella mormora qualcosa di gentile. Rispondo con un cenno e spero che non fosse una domanda.",
		"Sulle passerelle i tauren si salutano con una parola che non conosco. A me riservano un cenno, con cura, come si porge la tazza buona a un ospite.",
	},
	["thb.muse.w24.crossing.016"] = {
		"si blocca a metà quando la passerella ha un sussulto, scopre che era solo un tauren salito dall'altro capo, e riprende a camminare con grande dignità.",
		"si ferma a metà mentre le assi si abbassano, non trova altro che un passo pesante molto più indietro, e riparte con una dignità che non inganna nessuno.",
	},
	["thb.muse.w24.crossing.017"] = {
		"Sulle passerelle rallento quando ho un ospite davanti. Non c'è niente di peggio di una grande ombra che ti mette fretta sopra il vuoto.",
		"Un orco davanti a me continua a voltarsi. Mi fermo a guardare la pianura finché non è passato. L'ospitalità comincia dal non incombere.",
	},
	["thb.muse.w24.crossing.018"] = {
		"Le mie ginocchia hanno idee precise su questa traversata. Le ho pregate di tenersele fino all'altro capo.",
		"Ginocchia, vi prego. Le opinioni a fine passerella.",
	},
	["thb.muse.w24.crossing.019"] = {
		"attraversa con l'acquisto nuovo stretto al petto, gli occhi fissi sul palo in fondo, e allenta la presa solo dall'altra parte.",
		"fa la traversata con un pacco tra le braccia, come si porta una cosa che è costata parecchio e cadrebbe molto lontano.",
	},
	["thb.muse.w24.crossing.020"] = {
		"L'ascensore scende? Tenetelo, per favore. Per favore! Grazie, aspetterò il prossimo.",
		"Quell'ascensore sta arrivando o partendo? In un caso o nell'altro, sono in ritardo.",
	},
	["thb.muse.w24.drop.001"] = {
		"Se ti sporgi abbastanza, la parete non scende dritta: si gonfia in fuori, e il piede della rupe resta nascosto sotto, come le dita dei piedi sotto una veste.",
		"Ho provato a vedere il fondo della parete dal bordo. A metà la roccia fa pancia e me lo nasconde. Forse è meglio così.",
	},
	["thb.muse.w24.drop.002"] = {
		"si ferma dove la roccia dell'orlo è stata lucidata, chiara, da chiunque si sia mai fermato a guardare giù, e aggiunge la sua parte a quella lucidatura.",
		"nota che la pietra proprio sul ciglio dell'altura è liscia e più chiara del resto: una vedetta fatta soltanto di passi.",
		"si ferma in un punto dell'orlo dove la pietra si incava in una conca chiara e poco profonda, come se l'altura stessa si fosse appoggiata lì a lungo per guardare giù.",
	},
	["thb.muse.w24.drop.003"] = {
		"Molto più in basso c'è una cengia larga quanto una panca, con sopra un nido di stecchi. Qualcosa abita lì, con tutto Mulgore come soglia di casa.",
		"Giù per la parete, una mensola di roccia regge un nido arruffato. Chi l'ha costruito ha scelto l'unico indirizzo della città dove nessuno può bussare.",
		"Sotto l'orlo, fuori dalla portata di ogni corda, un uccello ha fatto casa in una crepa della pietra. È l'unica dimora di Thunder Bluff che non riceve mai visite.",
	},
	["thb.muse.w24.drop.004"] = {
		"Continuo a voler sapere quanto sia alto, di preciso. E continuo a decidere di non scoprirlo.",
		"Quanto sarà alto, qui? No, non dirmelo. Mi metterei a fare i conti.",
	},
	["thb.muse.w24.drop.005"] = {
		"Gli alberi visti dritti dall'alto sono un'altra cosa: ciuffi tondi e scuri senza tronco, posati sull'erba come puntaspilli.",
		"I pochi alberi della pianura, visti dal ciglio, hanno perso il tronco. Restano le chiome, piccoli nodi scuri annodati nel verde.",
		"Visto dall'alto, un albero solitario si riduce a una macchia tonda e scura sull'erba, e del tronco bisogna fidarsi sulla parola.",
	},
	["thb.muse.w24.drop.006"] = {
		"scorge un giovane tauren seduto proprio sul ciglio dell'altura a rammendare una cinghia, gli zoccoli che dondolano sul vuoto, tranquillo come su una soglia di casa.",
		"vede una piccola tauren distesa a pancia in giù sul bordo a sbirciare di sotto, mentre un'anziana lì accanto continua a parlare e le tiene una mano sul retro della tunica.",
	},
	["thb.muse.w24.drop.007"] = {
		"Vicino al bordo tutti stringono le cose un po' di più: una tazza, una pipa, un bambino. Ho cominciato a farlo con le mie mani, che non vanno da nessuna parte.",
		"Guarda un tauren passare qualcosa a un amico vicino al ciglio: due mani, sempre, e una pausa prima di lasciare la presa.",
	},
	["thb.muse.w24.drop.008"] = {
		"Il vuoto non minaccia. Aspetta in fondo a ogni sentiero, paziente come tutto il resto in questa città, e ti lascia scegliere di no.",
		"Ogni orlo qui fa la stessa offerta sommessa, e la città intera la rifiuta mille volte senza nemmeno pensarci.",
	},
	["thb.muse.w24.drop.009"] = {
		"valuta di sputare oltre il bordo per vedere dove finisce, incrocia lo sguardo di un Bluffwatcher lì vicino e ci ripensa.",
		"si sporge sul vuoto con un sassolino in mano, incontra lo sguardo piatto di un anziano di passaggio e rimette il sasso, in silenzio, dov'era.",
	},
	["thb.muse.w24.drop.010"] = {
		"Ai piedi della rupe c'è una gonna di roccia crollata, massi grandi come tende, tutti rotolati giù in qualche momento che nessuno ha visto.",
		"Laggiù, dove la parete incontra l'erba, si stende un lungo cumulo di pietre spezzate. Ognuna, un tempo, stava quassù. Cerco di non prenderla sul personale.",
		"I massi ammucchiati ai piedi della parete, dal ciglio, sembrano sassolini. Poi un viandante ci passa accanto, e il sassolino è più alto del viandante.",
	},
	["thb.muse.w24.drop.011"] = {
		"Dritto sotto, ai piedi degli ascensori, una piccola folla di puntini aspetta il suo turno. Nessuno laggiù sembra avere fretta, ma forse è solo la distanza.",
		"Il fondo dell'ascensore è un fazzoletto di terra battuta con dei puntini raccolti intorno. Uno dei puntini saluta. Ricambio, non si sa mai.",
	},
	["thb.muse.w24.drop.012"] = {
		"Ogni città ha una parte alta e una parte bassa. Questa è tutta parte alta, e quella bassa l'hanno lasciata fuori.",
		"Di solito si sale per vedere il panorama. Qui bisognerebbe scendere per smettere di vederlo.",
	},
	["thb.muse.w24.drop.013"] = {
		"Per generazioni senza numero i tauren hanno dormito sull'erba aperta con un orecchio sempre all'erta. La parete sotto questa città è il primo muro che il mio popolo abbia mai avuto, e il più profondo.",
		"Laggiù i tauren venivano cacciati. Quassù la caccia è finita. Il salto fra le due cose è tutta la pace della mia gente.",
	},
	["thb.muse.w24.drop.014"] = {
		"si inginocchia sul ciglio, posa entrambi i palmi sulla pietra e guarda giù a lungo, con calma, come per presentarsi all'altezza.",
		"si accovaccia vicino al bordo con una mano sulla roccia e resta lì, senza fretta, finché la distanza di sotto smette di essere una novità.",
	},
	["thb.muse.w24.drop.015"] = {
		"Ho scoperto l'unica scorciatoia di Thunder Bluff. È rapidissima, porta dritta a Mulgore, e nessuno la prende due volte.",
		"Da ogni altura c'è un modo veloce per scendere. I tauren hanno costruito gli ascensori apposta perché nessuno lo usasse.",
	},
	["thb.muse.w24.drop.016"] = {
		"Chiama oltre il bordo e non torna niente. La pianura si prende la voce e se la tiene, come una lettera spedita senza indirizzo.",
		"Dalla pianura non torna eco. Quello che si dice oltre l'orlo se ne va sopra l'erba e lì rimane.",
	},
	["thb.muse.w24.drop.017"] = {
		"Qui su Hunter Rise le bestie dei cacciatori si sdraiano proprio sul bordo, il muso sulle zampe, a guardare la pianura come cani alla finestra.",
		"Su Hunter Rise gli animali dei cacciatori scelgono tutti il ciglio per sonnecchiare. Un lupo tiene il naso sporto sul vuoto e fremita agli odori saliti fin quassù dall'erba.",
	},
	["thb.muse.w24.drop.018"] = {
		"Bel precipizio. Si ammira benissimo anche da questa distanza.",
		"Nessuno ha bisogno di stare così vicino al vuoto. Lo sto dicendo ai miei piedi.",
		"Va bene, ho guardato giù. Posso riavere le ginocchia, adesso?",
	},
	["thb.muse.w24.drop.019"] = {
		"Sporgiti oltre l'orlo e la città tace alle tue spalle, d'un colpo, come se il rumore si fermasse sul bordo e non volesse seguirti.",
		"A due passi dalle tende c'è movimento e chiasso. Un passo ancora, fino al ciglio dell'altura, e ogni suono della città mi resta all'improvviso alle spalle, piccolissimo.",
	},
	["thb.muse.w24.drop.020"] = {
		"Qualcuno ha costruito un'intera città nell'unico posto dove inciampare è una decisione seria.",
		"Inciampa altrove e ti prendi un livido. Inciampa qui e diventi una storia che nessuno racconta.",
	},
	["thb.muse.w24.drop.021"] = {
		"In questa città ogni cosa è a una breve passeggiata e a una lunga caduta da tutte le altre.",
		"Occhio al gradino. A ogni gradino. Ce n'è sempre uno che non c'è.",
	},
	["thb.muse.w24.eagle.001"] = {
		"Un falco si tiene immobile nell'aria oltre il ciglio, e l'unica parte che lavora è la punta di ogni ala: una penna, poi un'altra, a correggere di continuo.",
		"Guardando un falco sospeso vicino alla parete vedo le piccole correzioni che fa, una penna in cima all'ala che si alza e si riabbassa, come chi tiene ferma una tazza.",
		"Il falco oltre il ciglio non si sta riposando, anche se lo sembra. La coda continua ad aprirsi a ventaglio e a richiudersi, piccola e svelta, come dita che contano monete in tasca.",
	},
	["thb.muse.w24.eagle.002"] = {
		"guarda piccoli uccelli rapidissimi sfrecciare sotto un ponte di corda, infilandosi tra un'asse e l'altra come se il ponte l'avessero costruito per loro.",
		"segue una coppia di rondoni che sfiora la parete, sparisce in una crepa della pietra e riesce un attimo dopo da un'altra.",
	},
	["thb.muse.w24.eagle.003"] = {
		"C'è un'aquila che sta in cima allo stesso palo di tenda ogni volta che passo. Non si scomoda più a guardarmi. Ormai faccio parte dell'arredamento.",
		"Quassù gli uccelli non scappano quando qualcuno passa. Ti guardano, ti giudicano, tornano a lisciarsi le penne. La città li ha viziati.",
	},
	["thb.muse.w24.eagle.004"] = {
		"In pianura il grido di un falco arriva dall'alto. Quassù arriva di lato, all'altezza dell'orecchio, come un vicino che chiama dall'altra parte del vicolo.",
		"Strano sentire un'aquila stridere e voltare la testa di lato invece che in su. In questa città le creature del cielo stanno all'altezza degli occhi, e così il loro baccano.",
		"I richiami dei falchi rimbalzano tra le alture, così un uccello solo sembra tre, e la città pare piena di falchi che non ci sono.",
	},
	["thb.muse.w24.eagle.005"] = {
		"incrocia lo sguardo di un'aquila appollaiata su uno sperone di roccia a pochi passi, e per un lungo momento, alla pari, nessuna delle due parti distoglie gli occhi.",
		"resta immobile mentre un'aquila su una cengia vicina {g:lo|la} studia, piegando la testa da una parte e dall'altra, come chi legge caratteri minuscoli.",
	},
	["thb.muse.w24.eagle.006"] = {
		"Gli uccelli si allineano sulle funi dell'ascensore come perline su un filo, e ogni volta che la piattaforma si muove si alzano insieme, protestano e si riposano nello stesso ordine.",
		"Le funi degli ascensori, a quanto pare, sono il posatoio migliore della città. Una fila di uccelletti bruni ci va su e giù tutto il giorno senza pagare un soldo.",
	},
	["thb.muse.w24.eagle.007"] = {
		"Una cacciatrice mi ha detto che legge la pianura dai suoi uccelli: dove girano in tondo qualcosa è morto, dove si alzano tutti insieme qualcosa sta arrivando. Da quest'altezza la pagina è tutta aperta.",
		"I cacciatori osservano i falchi sopra Mulgore come i mercanti osservano i prezzi. Una spirale improvvisa, laggiù, e due di loro smettono di parlare e si guardano.",
	},
	["thb.muse.w24.eagle.008"] = {
		"Quell'uccello gira in tondo alla mia altezza da un po'. O è curioso o mi sta prendendo le misure.",
		"Ciao, uccello. No, non mi metto a volare. Smetti di aspettare.",
		"Aquile all'altezza degli occhi. Qualcuno spieghi loro che non dovrebbero stare così vicine.",
	},
	["thb.muse.w24.eagle.009"] = {
		"Su una cengia sotto l'orlo c'è un mucchietto di ossa e pelo, ripulito per bene. Qualcosa quassù mangia benissimo, e con vista.",
		"Su una mensola appena sotto il bordo restano gli avanzi del pasto di un falco: qualche ossicino, un ciuffo di pelo. Anche i luoghi alti e quieti hanno la loro caccia.",
	},
	["thb.muse.w24.eagle.010"] = {
		"scambia per un uccello una forma scura lontana sulla pianura, finché non vira, cresce e si rivela una viverna con qualcuno in sella, che arriva da molto lontano.",
		"tiene d'occhio un puntino sopra Mulgore che a lungo sembra un falco e poi, molto più vicino, è senza dubbio una viverna diretta in città.",
	},
	["thb.muse.w24.eagle.011"] = {
		"Qui su Elder Rise una druida siede con un'aquila sul palo accanto, e le due guardano insieme la pianura senza una parola, come vecchie sentinelle che dividono un turno.",
		"Su Elder Rise gli uccelli si posano più vicino che in qualunque altro punto della città. Un druido mi ha detto che sanno chi non allungherà la mano.",
	},
	["thb.muse.w24.eagle.012"] = {
		"Molto più in basso un nugolo di uccelletti vira sopra l'erba tutto insieme, e ogni virata mostra un lato diverso: scuro, poi chiaro, poi scuro, come un telo sbattuto.",
		"Una nuvola di minuscoli uccelli gira bassa su Mulgore, lampeggiando chiaro e scuro a ogni svolta. Visto dal ciglio, sembra che la pianura batta le palpebre.",
		"Laggiù un nugolo d'uccelli si leva dall'erba, vira tutto insieme e si riposa un po' più in là, come una manciata di semi lanciata e raccolta dalla stessa mano.",
	},
	["thb.muse.w24.eagle.013"] = {
		"porge per capriccio una crosta di pane sul ciglio, e un uccello la strappa al volo con tanta grazia che in mano resta soltanto l'idea.",
		"spezza un pezzo di pane vicino al bordo e un uccello svelto glielo porta via dalle dita prima ancora che decida di offrirlo.",
	},
	["thb.muse.w24.eagle.014"] = {
		"Un falco, altissimo, da solo in tutto quel cielo. Lo guardo più a lungo di quanto vorrei. Quassù nessuno me ne farebbe una colpa.",
		"Oltre l'altura c'è un'aquila sola che gira in tondo, senza niente intorno per miglia. Non sembra sola. Forse chi lo sembra sono io.",
	},
	["thb.muse.w24.eagle.015"] = {
		"Un anziano mi ha detto che le aquile facevano il nido su queste rupi molto prima che il primo tauren ci salisse, e che la città paga ancora l'affitto in avanzi. Alla parte degli avanzi ci credo.",
		"Un vecchio mandriano giura che gli uccelli delle rupi furono i primi inquilini, e che le tribù chiesero soltanto di dividere. Gli uccelli sembrano ricordarsi dell'accordo.",
	},
	["thb.muse.w24.eagle.016"] = {
		"Al tramonto i rondoni tornano tutti insieme nelle crepe delle pareti, un fiume scuro che si versa nella pietra appena sotto i miei piedi.",
		"Viene sera, e gli uccelletti delle pareti rientrano a fiotti nelle fessure della roccia: un intero quartiere chiassoso che va a dormire sotto la città.",
	},
	["thb.muse.w24.eagle.017"] = {
		"Sono quassù da abbastanza tempo che gli uccelli non trasalgono più. Non so se sia un complimento.",
		"Se un altro falco mi guarda così, comincio a fargli pagare lo spettacolo.",
	},
	["thb.muse.w24.eagle.018"] = {
		"Guarda quel falco. Neanche un colpo d'ala. Voglio quello che prende lui.",
		"Quell'aquila non muove una penna da un pezzo. La nomino cacciatrice più pigra di Mulgore.",
	},
	["thb.muse.w24.eagle.019"] = {
		"Quassù gli uccelli mi guardano dritto negli occhi. È meno lusinghiero di quanto sembri.",
		"Gentili, i falchi, a volare alla mia altezza. Quasi ogni città ti costringe a torcere il collo per vederli.",
	},
	["thb.muse.w24.earthsong.001"] = {
		"osserva una druida qui su Elder Rise intrattenere una lunga, sommessa conversazione con un falco appollaiato sul suo braccio, con molte pause, come se il falco avesse parecchio da dire.",
		"vede un vecchio druido offrire l'avambraccio a un falco ferito e aspettare, immobile, che l'uccello decida di salirci.",
	},
	["thb.muse.w24.earthsong.002"] = {
		"Un druido di Elder Rise mi ha detto che prendere la forma dell'orso è come farsi prestare un mantello da un amico: lo tieni pulito, lo restituisci e non fai mai finta che fosse tuo.",
		"Ho chiesto a un druido com'è essere un grande felino per un pomeriggio. 'Educato,' ha detto. 'Sei ospite nelle zampe di qualcun altro.'",
		"I druidi parlano delle loro forme animali come di attrezzi presi in prestito: puliti, riparati e resi con un grazie a chi li ha prestati.",
	},
	["thb.muse.w24.earthsong.003"] = {
		"I druidi della città non dicono mai che una bestia obbedisce loro. Una bestia 'è d'accordo', dicono, e a volte non lo è, ed è un suo diritto.",
		"Chiedi a una druida tauren se i lupi della pianura la ascoltano, e ti dirà di no: solo che a volte scelgono di fare la stessa strada.",
	},
	["thb.muse.w24.earthsong.004"] = {
		"guarda un vecchio druido inginocchiarsi accanto a una pianta avvizzita in un vaso d'argilla vicino a una tenda, mormorarle qualcosa e rialzarsi con un grugnito, a quanto pare soddisfatto delle sue promesse.",
		"si ferma accanto a una druida che passa il pollice lungo un rampicante malaticcio sul telaio di una tenda, accigliata come una guaritrice davanti a un paziente testardo.",
	},
	["thb.muse.w24.earthsong.005"] = {
		"Poso il palmo sulla roccia prima di attraversare il ponte lungo. Non per fortuna. Solo per dire alla Madre Terra dove vado, come lo si dice a una madre.",
		"Così in alto, qualcuno pensa che la Madre Terra sia lontana. Non è così. È tutta la rupe che ho sotto, e ha portato pesi più grandi di me senza una parola.",
	},
	["thb.muse.w24.earthsong.006"] = {
		"Una brocca d'argilla è scivolata di mano a un tauren e si è frantumata sulle assi. Lui ha guardato i cocci e ha detto, senza rabbia, che la Madre Terra doveva rivolerla indietro. Poi ha spazzato giù dal bordo la sua parte.",
		"Le piccole perdite, quassù, si affidano alla Madre Terra. Una ciotola rotta è andata a lei, una pelle strappata è andata a lei. Ci sto provando anch'io con i miei guai. Aiuta più delle imprecazioni.",
	},
	["thb.muse.w24.earthsong.007"] = {
		"trova un vecchio tauren sdraiato con un orecchio premuto sulla roccia nuda, a occhi chiusi, come chi ascolta un vicino attraverso il muro.",
		"vede una tauren fermarsi a metà di un ponte, chiudere gli occhi e restare a zoccoli ben piantati, come se cercasse qualcosa molto più in basso delle assi.",
	},
	["thb.muse.w24.earthsong.008"] = {
		"Uno sciamano mi ha detto che i pianori ronzano, bassissimo, di continuo, e che lo senti solo quando smetti di aspettartelo. Sto provando a non aspettarmelo. È più difficile di quanto sembri.",
		"I tauren dicono che la terra canta sotto Thunder Bluff, troppo in basso per quasi tutte le orecchie. Ho passato un bel po' seduto senza sentire altro che le mie ginocchia scricchiolare. Forse conta anche quello.",
	},
	["thb.muse.w24.earthsong.009"] = {
		"Salve, terra. Un tauren mi dice che ascolti, quindi: grazie di startene ferma.",
		"Mi dicono che quassù la terra ha orecchie. Bene. Allora lo dico chiaro: grazie per ogni asse che ha tenuto.",
	},
	["thb.muse.w24.earthsong.010"] = {
		"Gli anziani parlano di luoghi, là fuori nelle vecchie pianure, dove furono deposti i loro morti, ormai lontani, in terra di centauri. Non potendo andarci, li nominano piano, uno per uno, come le tappe di una strada che non possono percorrere.",
		"Una parte della terra che i tauren onorano sta lontano, dove scorrazzano i centauri. Un'anziana mi ha detto che ci va in sogno, invece, e si sveglia stanca per la camminata.",
	},
	["thb.muse.w24.earthsong.011"] = {
		"segue con lo sguardo un anziano che prende la mano di un vitellino e la preme contro la roccia, dicendo poche parole lente che il piccolo ripete male, e poi un'altra volta, meglio.",
		"si attarda vicino a una nonna che insegna a un piccolo tauren a stare fermo e ascoltare il suolo, tutti e due fianco a fianco come due pietre, di cui una si agita.",
	},
	["thb.muse.w24.earthsong.012"] = {
		"La Madre Terra non spetta a me invocarla. Eppure, dopo un po' quassù, mi sorprendo a camminare con più delicatezza, come se mi avessero detto che sotto il pavimento dorme qualcuno.",
		"È dei tauren, non mia, questa Madre Terra. Ma è difficile starle sopra a lungo senza sentire il bisogno di pulirsi i piedi.",
	},
	["thb.muse.w24.earthsong.013"] = {
		"Un corvo si è posato accanto a un vecchio druido e tutti e due mi hanno guardato per un po'. Poi il corvo se n'è andato e il druido ha detto che andavo bene. Non so per cosa mi stessero valutando.",
		"Su Elder Rise un gufo mi ha fissato da un palo per tutto il tempo che ho parlato con una druida. Quando il gufo ha battuto le palpebre, lei ha chiuso la conversazione. Ho il sospetto di sapere chi comandasse.",
	},
	["thb.muse.w24.earthsong.014"] = {
		"Quell'orso è uno dei tuoi, o uno di voi? Vorrei sapere quanta educazione usare.",
		"Scusa. Il gufo è con te, o tu sei con il gufo?",
	},
	["thb.muse.w24.earthsong.015"] = {
		"Ogni tanto i druidi di Elder Rise fanno molta strada verso nord, mi ha detto un Bluffwatcher, fino a una radura che dividono con gli elfi della notte, e quando rientrano non dicono niente della guerra.",
		"C'è un luogo, dicono i druidi, una valle lontana a nord, dove tauren ed elfi della notte siedono ancora allo stesso fuoco. Ne parlano di rado, e sempre a bassa voce, come di un segreto troppo bello per consumarlo.",
	},
	["thb.muse.w24.earthsong.016"] = {
		"Una druida ha portato su dalle pianure un falco morto, tenuto con entrambe le mani in un ritaglio di coperta, ed è rimasta seduta a lungo con lui prima di portarlo sul bordo. Nessuno le ha messo fretta.",
		"Ho visto un druido tauren chiudere gli occhi a un uccello delle pianure morto, portato su per la pentola, dire qualche parola su di lui, e solo dopo consegnarlo al cuoco.",
	},
	["thb.muse.w24.earthsong.017"] = {
		"nota una druida seduta a gambe incrociate fra semi sparsi, che lascia saltare gli uccellini a beccarli dai suoi palmi aperti.",
		"vede dei passeri radunarsi attorno a un druido immobile come vecchi amici al mercato, posandosi su ginocchia, spalle e una volta, per un attimo, su un corno.",
	},
	["thb.muse.w24.earthsong.018"] = {
		"vede alcuni anziani sul bordo dell'altura alzare il viso verso la luna e rivolgerle una parola sommessa, come si saluta un parente dall'altro capo di una stanza.",
		"si ferma vicino a un vecchio sciamano che alza una mano verso la luna sopra Mulgore e la tiene lì, col palmo in fuori, a lungo.",
	},
	["thb.muse.w24.earthsong.019"] = {
		"Gli sciamani stanno sotto la pioggia col viso all'insù e gli occhi chiusi, contentissimi. Uno mi ha detto che è il cielo che scende a far visita alla terra. Io faccio visita alla tettoia più vicina.",
		"Una sciamana mi dice che la pioggia è il cielo che rende omaggio al suolo. Il suolo pare contento. Chi non è sciamano se ne sta sotto le gronde.",
	},
	["thb.muse.w24.earthsong.020"] = {
		"Madre Terra, veglia sui figli e sulle figlie dell'Orda laggiù ad Ashenvale. Lo dico qui, dove mi dicono che ascolti meglio.",
		"Per chi combatte lontano da questi pianori: che gli spiriti dei tauren veglino anche su di loro. Ci serve ogni amico che abbiamo.",
	},
	["thb.muse.w24.earthsong.021"] = {
		"Un'anziana mi ha detto che le alture sono giovani, secondo il modo di contare della Madre Terra, e i tauren ancora di più. L'ha detto con gentilezza, come si ricorda a un vitellino orgoglioso quanto sono piccole le sue corna.",
		"'Prima dei pianori lei c'era. Dopo di loro ci sarà,' ha detto un vecchio tauren della Madre Terra, e poi è tornato a sgranare fagioli come se avesse fatto un commento sui fagioli.",
	},
	["thb.muse.w24.earthsong.022"] = {
		"Se gli spiriti ascoltano: vorrei un segno. Piccolo. Anche una coperta asciutta andrebbe bene.",
		"Spiriti di questo luogo, mi dicono che sentite tutto. Scusate i brontolii sull'ascensore.",
	},
	["thb.muse.w24.elder.001"] = {
		"Un'anziana sulla panca lungo il sentiero si sta alzando da un bel po'. Prima le mani, poi una lunga riflessione, poi le ginocchia. Ho deciso di non aiutarla: la rallenterei soltanto.",
		"Vedere un vecchio tauren che si alza da seduto è come vedere un'altura che decide di spostarsi. Succede a tappe, e ogni tappa ha il suo grugnito.",
		"Anche per sedersi i vecchi tauren hanno un loro modo: una lunga inclinazione, una mano sulla panca, una pausa a metà, e infine l'atterraggio, come uno zaino pesante posato da mani attente.",
	},
	["thb.muse.w24.elder.002"] = {
		"si ferma a guardare un anziano che scioglie il nodo di un giovane tauren su un fagotto e lo rifà, senza una parola, piano, perché l'altro possa seguire ogni giro della corda.",
		"scorge un vecchio tauren che allunga una mano, riannoda in silenzio il laccio della faretra di un giovane cacciatore e torna a fissare il nulla.",
	},
	["thb.muse.w24.elder.003"] = {
		"Ho chiesto a un'anziana quanti anni avesse. Ci ha pensato così a lungo che la domanda mi è sembrata scortese; poi ha detto che ha smesso di contare le estati e ha cominciato a contare le mandrie.",
		"Un anziano misura la sua età in mandrie seguite, non in anni: così mi ha detto. Ha perso il conto da qualche parte oltre le quaranta, e la cosa sembrava fargli piacere.",
		"Un'anziana mi ha raccontato di essere nata l'anno in cui le mandrie arrivarono tardi. Quando le ho chiesto che anno fosse, mi ha guardato con sincera compassione.",
	},
	["thb.muse.w24.elder.004"] = {
		"C'è un vecchio tauren che siede sempre nello stesso punto quando passo, gli occhi socchiusi. Credevo dormisse, finché non ha alzato un dito per indicarmi un falco che non avevo visto.",
		"Quell'anziano con gli occhi a metà non sonnecchia affatto. Una volta l'ho superato troppo in fretta e mi è arrivato un 'piano' a mezza voce, senza che lui muovesse un muscolo.",
	},
	["thb.muse.w24.elder.005"] = {
		"Ho fatto una domanda veloce a un anziano. Ho avuto la prima metà della risposta. Per il resto ripasso.",
		"Mai chiedere la strada a un anziano tauren se si ha fretta. Ti danno la strada, e pure la sua storia.",
		"Ho chiesto a un'anziana se il sentiero davanti fosse ripido. La risposta è partita da suo nonno.",
	},
	["thb.muse.w24.elder.006"] = {
		"nota le punte delle corna di un vecchio tauren, smussate e chiare, lucidate da una vita passata a chinarsi sotto i pali delle tende.",
		"osserva le corna di un anziano: una scheggiata e stretta da un sottile anello di rame, l'altra intera, tutte e due ormai del colore dell'osso vecchio.",
		"vede un paio di vecchie corna da cui pendono minuscoli amuleti d'osso, che si urtano piano ogni volta che l'anziano si gira a guardare qualcosa.",
	},
	["thb.muse.w24.elder.007"] = {
		"Alcuni dei tauren più vecchi quassù zoppicano senza mai parlarne. Ho smesso di chiedermi quale razzia nelle pianure li abbia ridotti così.",
		"Un anziano lungo il sentiero, quando si alza, tiene una mano premuta su una vecchia cicatrice al fianco. Nessuno gliene chiede conto, e non lo farò nemmeno io.",
	},
	["thb.muse.w24.elder.008"] = {
		"Due anziani stanno litigando sulla panca accanto. Uno parla, poi c'è un silenzio in cui potresti seminare qualcosa, poi l'altro risponde. Forse finiranno la prossima stagione.",
		"Ho trovato la lite più lenta di Kalimdor: due vecchi tauren in disaccordo su dove scorresse un tempo un fiume. Nessuno alza la voce, nessuno cede di un passo.",
		"Gli anziani tauren discutono come l'acqua consuma la pianura: niente rumore, niente fretta, e alla fine la posizione di qualcuno semplicemente non c'è più.",
	},
	["thb.muse.w24.elder.009"] = {
		"si ferma ai margini di un cerchio di anziani, qui su Elder Rise. Chi parla si è interrotto a metà frase e nessuno riempie il vuoto: quella pausa, a quanto pare, fa parte del discorso.",
		"indugia vicino agli anziani riuniti su Elder Rise, quanto basta per sentirne le voci basse e non un passo di più: ne coglie il suono, non il senso.",
	},
	["thb.muse.w24.elder.010"] = {
		"I nostri anziani non ti dicono mai che sbagli. Ti fanno una domanda, e aspettano che tu ci arrivi per conto tuo.",
		"Quando i nostri anziani tacciono dopo qualcosa che hai detto, quello è tutto il rimprovero. Basta. È sempre bastato.",
	},
	["thb.muse.w24.elder.011"] = {
		"Con calma. Tengo sollevato il telo, passa pure.",
		"Nessuna fretta. La porta non scappa, e io nemmeno.",
	},
	["thb.muse.w24.elder.012"] = {
		"Un'anziana che incrocio a volte posa quello che porta, a metà strada, solo per guardare la pianura. Poi lo riprende e va avanti. Ho cominciato a fermarmi anch'io.",
		"Dai vecchi ho preso un'abitudine: posare il carico a metà strada, senza motivo, per dare un'occhiata. Non si perde niente. Non so perché ci abbia messo tanto a capirlo.",
	},
	["thb.muse.w24.elder.013"] = {
		"Il tauren più vecchio nei paraggi mi guarda allacciare una cinghia da un po'. Non ha detto niente. Non serve. La sto rifacendo, come si deve.",
		"Un vecchio dal muso bianco ha guardato il mio zaino, poi me, poi di nuovo lo zaino, e se n'è andato. Da allora l'ho rifatto due volte.",
		"Un vecchio mi ha corretto il modo di tenere una tazza girandomi appena la mano, senza dire niente, e ha tirato dritto. In effetti la tazza adesso sta meglio.",
	},
	["thb.muse.w24.elder.014"] = {
		"vede un vecchio tauren porgere un piccolo amuleto intagliato a un bambino di passaggio, che lo alza, lo rigira e scappa via scordandosi di ringraziare. All'anziano non sembra importare.",
		"scorge un anziano dal muso imbiancato che allunga di nascosto una striscia di carne secca al gatto di un cacciatore, sdraiato lungo il sentiero, e poi si guarda intorno come se nessuno dovesse saperlo.",
		"coglie un anziano che ferma un piccolo in corsa con un dito alzato, si china a raddrizzargli le perline e lo lascia ripartire a tutta velocità.",
	},
	["thb.muse.w24.elder.015"] = {
		"Gli anziani, qui, a volte guardano a lungo la pianura e poi scuotono la testa, appena. Qualunque cosa vedano, non è ciò che c'è laggiù adesso.",
		"I vecchi tauren hanno uno sguardo particolare quando si fermano sull'orlo: non guardano l'erba, guardano oltre, qualcosa che un tempo c'era.",
		"Ogni tanto un anziano smette di parlare a metà racconto e resta lì, seduto. Gli altri lasciano che il silenzio faccia compagnia a chi non c'è più.",
	},
	["thb.muse.w24.elder.016"] = {
		"Ho visto anziani tauren dormire in piedi. Non so se sia saggezza o un ottimo trucco.",
		"Quella vecchia dorme in piedi da un pezzo, e nessuno l'ha ancora fatta cadere. Notevole.",
	},
	["thb.muse.w24.elder.017"] = {
		"È tardi, la città quasi tace, e qualche anziano è ancora sveglio, seduto in disparte con una coperta sulle spalle. Non parlano. Vegliano senza nulla da vegliare, come fanno i vecchi.",
		"A quest'ora sembrano svegli solo gli anziani: poche sagome curve sulle panche, avvolte nelle coperte fino alle corna. Mi piace sapere che ci sono.",
	},
	["thb.muse.w24.elder.018"] = {
		"La risata di un anziano arriva in ritardo. La battuta è detta, gli altri hanno già finito, e poi gli sale su piano, come acqua da un pozzo profondo, e fa ripartire tutti.",
		"I vecchi tauren ridono per ultimi e più a lungo. Quando la risata arriva in superficie gli altri hanno già scordato la battuta, e chissà come fa ancora più ridere.",
		"Una volta ho fatto ridere un vecchio tauren. La risata ci ha messo un po' ad arrivare, ma quando è arrivata la panca ha tremato, e mi è sembrato di ricevere un dono.",
	},
	["thb.muse.w24.elder.019"] = {
		"Piano, piano. Mi adeguo al tuo passo; mi serve allenamento.",
		"Se rallento ancora finisco per camminare all'indietro. Fai strada tu.",
	},
	["thb.muse.w24.elder.020"] = {
		"Vorrei quella calma, a quell'età. A dirla tutta, la vorrei già adesso.",
		"Su quella panca da sola c'è più pazienza che in tutta Orgrimmar.",
	},
	["thb.muse.w24.errand.001"] = {
		"Passo in banca per prendere una cosa sola. Riordino tutto il resto, e me ne vado senza quella.",
		"La mia cassetta in banca è un museo di cose che un giorno mi serviranno. Quel giorno non si decide mai ad arrivare.",
	},
	["thb.muse.w24.errand.002"] = {
		"si china sull'elenco delle aste, scorre le offerte col dito e lascia sfuggire il piccolo verso di chi è stato superato per un solo rame.",
		"torna a controllare le aste per la terza volta in poco tempo, come se le offerte potessero crescere per cortesia.",
	},
	["thb.muse.w24.errand.003"] = {
		"Nessuno ha comprato le mie pelli di lupo. Pazienza: varranno di più quando saranno pezzi d'antiquariato.",
		"Tre giorni all'asta e neanche un'offerta. Comincio a prenderla sul personale.",
		"Se qualcuno vuole un paio di stivali appena rosicchiati, li ha il banditore. Fate un'offerta. Qualsiasi.",
	},
	["thb.muse.w24.errand.004"] = {
		"Monete contate, domande ripassate. Chi insegna le ascolta tutte e risponde a un'altra, che poi era quella giusta.",
		"Ogni visita a un maestro, quassù, costa due cose: il prezzo, e il tempo che mi serve per smettere di agitarmi e imparare.",
	},
	["thb.muse.w24.errand.005"] = {
		"rovescia uno zaino di cianfrusaglie sulla coperta di un mercante, e chi sta dietro la coperta le esamina una per una senza dire nulla, il che le fa sembrare ancora peggiori.",
		"vende un mucchio di denti scheggiati e pelli strappate, e intasca le monete con l'aria di chi per i denti sperava qualcosa di più.",
	},
	["thb.muse.w24.errand.006"] = {
		"Mi sistemate questi stivali? Vorrei andarmene di qui su tutti e due.",
		"La mia roba sta insieme per speranza e un pezzo di spago. Lo spago molla per primo.",
		"Cucitelo, rattoppatelo, incollatelo. Non ho pretese. Solo, non vorrei perdere una suola a metà strada.",
	},
	["thb.muse.w24.errand.007"] = {
		"Tutte le borse piene, eppure ho raccolto quella piuma. Certe lezioni non attecchiscono.",
		"Nove tasche, quattro borselli e uno zaino, e in nessuno c'è posto per quello che ho appena comprato.",
	},
	["thb.muse.w24.errand.008"] = {
		"Chiedo a chi tiene la locanda di farne il posto a cui tornare. Una parola, un cenno, e la pietra che porto in tasca sembra più pesante, come se lo sapesse.",
		"Basta una parola, e la pietra del ritorno è legata a questo posto. Ovunque andrò, un pezzetto di me saprà la strada per risalire la rupe.",
	},
	["thb.muse.w24.errand.009"] = {
		"aspetta in banca dietro un tauren che deposita un solo oggetto con la cura di chi seppellisce un amico.",
		"fa la fila in banca mentre il tauren davanti spiega, con calma e lunghe pause, perché proprio quella pelle debba stare a sinistra.",
	},
	["thb.muse.w24.errand.010"] = {
		"C'è un angolo libero? Non mi serve molto. Mi faccio {g:piccolo|piccola}.",
		"Un posto dove sedermi e qualcosa da mangiare. In quest'ordine, o nell'altro. Non sono {g:schizzinoso|schizzinosa}.",
	},
	["thb.muse.w24.errand.011"] = {
		"Ho attraversato fino a Hunter Rise per una cinghia sola. Accanto al banco due cacciatori discutevano di piume. Adesso so tutto sulle piume. La cinghia, niente.",
		"Hunter Rise, commissione numero tre. Qui tutti guardano i miei stivali prima della mia faccia. Avrei fatto bene a pulirli, gli stivali.",
	},
	["thb.muse.w24.errand.012"] = {
		"Banca, maestro, cibo, riparazioni. Quattro commissioni, tre alture. Questa città l'ha disegnata qualcuno con le gambe molto lunghe.",
		"Sulla mia lista c'è scritto: comprare filo. Il filo sta sull'altura in fondo. La lista questo non lo diceva.",
		"Qui ogni commissione si porta dietro una traversata. Con le commissioni divento un asso e mi stufo sempre più delle traversate.",
	},
	["thb.muse.w24.errand.013"] = {
		"Maestro pagato, stivali riparati, zaino in ordine. Quel che resta delle monete mi sta in una mano, e la mano sembra comunque più ricca di prima della salita.",
		"In questa città l'unica cosa che va di fretta sono i soldi. Tutto il resto se la prende comoda.",
	},
	["thb.muse.w24.errand.014"] = {
		"si allontana dal maestro stirando le dita, come chi si è appena sentito dire, con molta pazienza, che da tempo sbagliava tutto.",
		"lascia il maestro con un trucco nuovo e una lieve ruga in fronte, già nel dubbio di saperlo rifare.",
	},
	["thb.muse.w24.errand.015"] = {
		"In fila alla banca dietro un orco, un troll e un Reietto. Nessuno spinge. Chi sta dietro il banco fa questo effetto, perfino agli orchi.",
		"La fila in banca, quassù, è la riunione più pacifica dell'Orda che abbia mai visto. Nessuno vuole essere chi mette fretta alla conta.",
		"In banca un orco ha tamburellato sul banco, una volta, spazientito. Il tauren ha fissato quel dito finché non si è fermato. Conversazione finita.",
	},
	["thb.muse.w24.errand.016"] = {
		"infila nello zaino un fagotto nuovo di carne secca, poi lo tira fuori per controllare che sia davvero grande come sembrava al banco.",
		"paga un sacchetto piccolo di bacche secche e se ne vede consegnare uno chiaramente grande, con uno sguardo che sfida a protestare.",
	},
	["thb.muse.w24.errand.017"] = {
		"Quaggiù nei Pools of Vision un Reietto mi vende quel che serve e conta il resto nella penombra umida, tranquillo come se questa grotta fosse una piazza di mercato.",
		"Spesa nei Pools of Vision: acqua ferma, pietra fredda e un venditore reietto a cui il buio sembra riposare. Dei due, l'unico a suo agio è il venditore.",
	},
	["thb.muse.w24.errand.018"] = {
		"Insegnami quel che viene dopo. Con calma, per favore. Ho notato che qui nessuno fa niente in fretta.",
		"Ho portato i soldi e la pazienza. Soprattutto i soldi.",
	},
	["thb.muse.w24.errand.019"] = {
		"Non ho mai visto dove la banca tenga le cose. Le consegno, spariscono dietro una tenda di pelle e tornano esattamente com'erano. Ho deciso di non chiedere.",
		"Tutto quello che lascio in banca mi torna piegato. Io non l'avevo piegato.",
		"Da qualche parte oltre la tenda della banca c'è tutto quello che possiedo e non riesco a portare. Me lo immagino in pile ordinate, in buona compagnia.",
	},
	["thb.muse.w24.errand.020"] = {
		"osserva un tauren alla casa d'aste metterci tanto a decidere un'offerta che qualcun altro se l'aggiudica, e il tauren annuisce come se fosse tutto previsto.",
		"si trattiene vicino al banditore il tempo di sentire un Reietto e un orco contendersi a colpi di offerte una sola pezza di stoffa, nessuno dei due disposto a cedere.",
	},
	["thb.muse.w24.errand.021"] = {
		"Questa ciotola è compresa nel prezzo, o è un regalo? Coi tauren non capisco mai dove finisce il conto.",
		"Quanto per il posto letto? Ah. E il cibo? Ah. Dovrete pur lasciarmi pagare qualcosa.",
		"Vengo a saldare il conto e chissà come devo meno che all'arrivo. Spiegatemelo, per favore. Con calma.",
	},
	["thb.muse.w24.errand.022"] = {
		"Aspetto che chi insegna finisca con l'allievo prima di me. L'allievo è un tauren. Potrebbe volerci un po'.",
		"C'è la fila dal maestro: due tauren e un orco. L'orco sposta il peso da un piede all'altro. I tauren non si muovono da quando sono {g:arrivato|arrivata}.",
	},
	["thb.muse.w24.errand.023"] = {
		"Monete in banca, una lezione imparata, un pasto caldo alle spalle. Bella visita.",
		"Tutto fatto: banca, lezione, pasto, riparazioni. Adesso non so cosa fare delle mani.",
	},
	["thb.muse.w24.errand.024"] = {
		"Tempesta sulla rupe, e tutti si accalcano sotto le falde della casa d'aste, di colpo appassionati alle offerte.",
		"Niente come una tempesta per riempire la banca. Di colpo tutti hanno affari urgenti coi propri risparmi.",
	},
	["thb.muse.w24.farsight.001"] = {
		"Viste dal ciglio, le strade di Mulgore sono fili pallidi, e si capisce dove ognuna si arrende e diventa sentiero, poi traccia, poi soltanto una riga più gentile nell'erba.",
		"I sentieri sulla pianura sembrano tracciati da una mano che continuava a sollevare la penna: decisi vicino agli ascensori, sempre più tenui finché l'erba non se li riprende.",
	},
	["thb.muse.w24.farsight.002"] = {
		"Ho scelto un viandante sulla strada di sotto e l'ho seguito per quella che mi è sembrata un'ora. Non si era mosso. O la pianura si era mossa insieme a lui.",
		"Sulla lunga strada verso gli ascensori c'è un puntino. Lo guardo da un po' e, per quanto posso capire, cammina sul posto.",
	},
	["thb.muse.w24.farsight.003"] = {
		"Dal ciglio i ruscelli di Mulgore si trovano anche dove l'acqua non si vede: lungo il loro corso l'erba è più scura e più verde, come una vena sotto la pelle.",
		"I torrenti, da quest'altezza, non si vedono: solo il verde che si lasciano dietro, un filo più fondo che serpeggia nella pianura più chiara verso un punto che non riesco a scorgere.",
		"Dei salici, o qualcosa del genere, segnano il corso dell'acqua: una fila storta di chiome più scure che vaga sull'erba.",
	},
	["thb.muse.w24.farsight.004"] = {
		"Da qui Stonebull Lake è una macchia chiara a forma di impronta di zoccolo, l'unica cosa piatta in tutto quel verde ondulato.",
		"Cerca il punto in cui la pianura si avvalla e trattiene qualcosa di piatto e pallido: è Stonebull Lake, piccolo come un cucchiaio da così in alto.",
	},
	["thb.muse.w24.farsight.005"] = {
		"individua un filo di fumo solitario lontano sulla pianura e resta a guardarlo, cercando di indovinare di chi sia il fuoco e cosa ci stia cuocendo sopra.",
		"segue una sottile linea di fumo che sale da un accampamento chissà dove nell'erba lontana, l'unico segno per leghe che là fuori ci sia qualcuno.",
	},
	["thb.muse.w24.farsight.006"] = {
		"Oltre le fattorie c'è un tratto di pianura dove l'erba è calpestata, piatta e bruna. Un Bluffwatcher l'ha indicato e ha detto una parola sola: gnoll. Alla storia non serviva altro.",
		"Non tutto il marrone sulla pianura è colpa della stagione. Una guerriera accanto a me ha nominato le chiazze una per una: lì i quilboar, lì gli gnoll. Non ha alzato la voce per nessuna.",
	},
	["thb.muse.w24.farsight.007"] = {
		"All'estremo margine di tutto, oltre l'ultimo verde, le colline si fanno azzurre e poi più azzurre, e dietro stanno cime che devono essere Stonetalon. Non si avvicinano mai, per quanto io le fissi.",
		"La cosa più lontana che si vede è una fila di montagne a nordovest, sbiadite dalla distanza. Un tauren accanto a me le ha chiamate Stonetalon, come chi nomina la casa di un vecchio amico.",
		"Guarda abbastanza a lungo verso nord e verso ovest e la terra sale a gradini, verde, verde più scuro, azzurro, e l'ultimo gradino sono montagne così tenui che potrebbero essere un inganno dell'occhio.",
	},
	["thb.muse.w24.farsight.008"] = {
		"Ogni volta che salgo quassù la pianura è di un verde diverso: fresco, quasi giallo, poi profondo, poi color paglia ai bordi. La città resta uguale; il panorama di sotto continua a cambiarsi d'abito.",
		"L'erba laggiù non tiene mai a lungo un colore solo. L'ho vista verde come i piselli novelli, verde come il muschio vecchio e di un oro stanco, e ogni volta sembrava che fosse stata così da sempre.",
	},
	["thb.muse.w24.farsight.009"] = {
		"Mulgore, dal ciglio, sembra proprio una carta geografica, solo che nessuno si è preso la briga di scriverci i nomi, e il foglio continua a incresparsi.",
		"Vedo tutta la pianura in un colpo solo e non saprei comunque dire quale collina sia quale. È una mappa a cui hanno grattato via ogni scritta.",
	},
	["thb.muse.w24.farsight.010"] = {
		"guarda un carretto minuscolo strisciare sulla strada verso gli ascensori, così lento che sembra dipinto sulla pianura, finché un'occhiata altrove e un ritorno lo trovano un po' più avanti.",
		"individua una piccola fila di viandanti e bestie da soma che avanza sulla pianura, ognuno non più grande di un chicco di riso a questa distanza.",
		"osserva due viandanti incontrarsi sulla strada di sotto, fermarsi e restare insieme a lungo, piccoli come formiche, poi separarsi, ognuno per la via da cui era venuto l'altro.",
	},
	["thb.muse.w24.farsight.011"] = {
		"Lontano, al di là della pianura, c'è un groviglio rossastro di pietre. Le Red Rocks, ha detto una tauren accanto a me, abbassando un poco gli occhi. Non ho chiesto altro.",
		"Anche da quest'altezza le Red Rocks spiccano, un nodo color ruggine nel verde. I tauren le guardano come si guarda una tomba su una collina: di sfuggita, e spesso.",
	},
	["thb.muse.w24.farsight.012"] = {
		"Dove le mandrie hanno pascolato la pianura è tosata più chiara, a grandi chiazze irregolari, come una testa tagliata da qualcuno che continuava a distrarsi.",
		"L'erba di sotto è tutta una toppa: lunga e scura dove niente l'ha mangiata, rasa e chiara dove qualcosa l'ha fatto. Mulgore porta addosso i suoi pasti.",
		"Un quadrato di verde più scuro, laggiù, segna il campo di qualcuno: l'unico bordo dritto in tutta la pianura. Sembra quasi una scortesia.",
	},
	["thb.muse.w24.farsight.013"] = {
		"Un'intera giornata di cammino, laggiù, sta tra il pollice e l'indice.",
		"Alza una mano e con un pollice copri un villaggio intero. Molto soddisfacente. Molto maleducato.",
	},
	["thb.muse.w24.farsight.014"] = {
		"Tutto quello che vedo sulla pianura si muove, erba, uccelli, un carro lontano, e nemmeno un suono arriva fino al ciglio. Da qui Mulgore è una storia raccontata a gesti.",
		"Tutta quella vita laggiù, e nemmeno un rumore sale fin quassù. È come guardare il mondo da dietro una finestra chiusa.",
	},
	["thb.muse.w24.farsight.015"] = {
		"Nel buio la pianura è sparita, tutta, tranne pochi fuochi minuscoli sparsi lontani l'uno dall'altro. Li conto come un mandriano conta le bestie, e mi sento meglio quando il numero torna.",
		"La notte si è portata via Mulgore e ha lasciato solo i suoi fuochi, cinque o sei, piccolissimi e lontanissimi. Ognuno è qualcuno che veglia, o qualcuno che si scalda.",
	},
	["thb.muse.w24.farsight.016"] = {
		"Dal ciglio ho visto questa pioggia attraversare Mulgore molto prima che arrivasse: una tenda grigia trascinata sull'erba, che la scuriva striscia dopo striscia.",
		"La pioggia ha camminato sulla pianura verso la città come una lenta mandria grigia, e ho potuto guardare l'erba scurirsi sotto ogni suo passo.",
	},
	["thb.muse.w24.farsight.017"] = {
		"L'aria è così limpida che l'altro capo della pianura si è fatto vicino: alberi isolati, una pietra bianca, l'anello di un pozzo, ognuno netto come un punto di cucito.",
		"Niente vela la distanza. Distinguo un albero solitario su un crinale così lontano che dovrebbe essere una diceria.",
	},
	["thb.muse.w24.farsight.018"] = {
		"socchiude gli occhi sulla pianura lontana, seguendo la linea di un crinale da un capo all'altro della vista, come per impararla a memoria.",
		"resta sul bordo a far scorrere lo sguardo lungo l'orizzonte, dalla collina più lontana da una parte a quella più lontana dall'altra, senza affrettarne nemmeno un tratto.",
	},
	["thb.muse.w24.farsight.019"] = {
		"Giù nella pianura una figurina si avvicina strisciando a una bestiola ancora più piccola. Dal ciglio vedo quello che il cacciatore non vede: la bestia se n'è accorta, e si allontana strisciando alla stessa velocità.",
		"È un'eternità che guardo qualcuno laggiù braccare qualcosa nell'erba. Nessuno dei due sa che faccio il tifo per entrambi.",
	},
	["thb.muse.w24.farsight.020"] = {
		"Riesco ancora a seguire, dal ciglio, le vecchie vie delle mandrie, quelle dietro cui la mia gente ha camminato per generazioni. Sono ancora lì nell'erba, se sai guardare, come le linee di un palmo antico.",
		"Tutta la terra in cui la mia gente ha vagato così a lungo sta dentro un solo sguardo, da quassù. A loro sono servite vite intere per attraversare quello che i miei occhi attraversano in un attimo.",
	},
	["thb.muse.w24.farsight.021"] = {
		"Da qui l'orizzonte è così lungo e così piatto che continuo a immaginare di vederlo curvare alle estremità, come l'orlo di una ciotola.",
		"Guarda abbastanza lontano, in qualunque direzione, e la terra e il cielo smettono di litigare su dove finisce l'una. Proprio in fondo si mettono d'accordo per sfumare.",
	},
	["thb.muse.w24.farsight.022"] = {
		"ascolta un vecchio tauren accanto a sé che indica la pianura con un lungo dito, nominando le colline una dopo l'altra con voce lenta, come chi presenta dei parenti.",
		"si fa mostrare la pianura da un tauren che si trova lì per caso: un cenno verso un crinale, un cenno verso un avvallamento, un nome per ciascuno, e poi un silenzio soddisfatto.",
	},
	["thb.muse.w24.farsight.023"] = {
		"Quel fumo laggiù è un accampamento o un incendio d'erba? Dico accampamento. È il pensiero più gentile.",
		"Qualcuno sta cucinando giù nella pianura. Non vedo chi, ma quel fumo ha tutta l'aria di un pasto.",
	},
	["thb.muse.w24.farsight.024"] = {
		"Tutto quel verde e non si vede anima viva. Mulgore è bravissima a nascondere la gente.",
		"Laggiù ci saranno centinaia di persone. Visto dal ciglio è erba, erba, un albero, altra erba.",
	},
	["thb.muse.w24.farsight.025"] = {
		"C'è troppo cielo, qui. Qualcuno dovrebbe piegarne un po' e metterlo via.",
		"Quanto cielo sopra questa città. È come abitare sotto un lago capovolto.",
	},
	["thb.muse.w24.greeting.001"] = {
		"I tauren salutano senza fretta. Una che ho incrociato si è fermata, mi si è messa di fronte, ha chinato appena la testa perché le corna si scostassero, e solo allora mi ha salutato. Ci è voluto un momento. Ha avuto il peso di uno sguardo vero.",
		"Quando un tauren ti saluta, prima inclina le corna di lato, lontano da te. Una volta qualcuno me l'ha spiegato: allo straniero si mostra il lato della testa che non serve per combattere.",
	},
	["thb.muse.w24.greeting.002"] = {
		"osserva due tauren che si incontrano sul sentiero e appoggiano per un attimo la fronte l'una all'altra, corno accanto a corno, prima di separarsi e parlare del più e del meno.",
		"vede due vecchi amici salutarsi col lento contatto delle fronti, gli occhi chiusi, come se confrontassero gli anni senza dire una parola.",
	},
	["thb.muse.w24.greeting.003"] = {
		"Ho detto un ciao veloce a un tauren, passando. Si è fermato, si è girato e me l'ha restituito per intero, col mio nome, il tempo che fa e una domanda sulla mia strada. Sto imparando a non buttare lì i saluti alla leggera.",
		"Qui un saluto è uno scambio completo, non una parola gettata dietro la spalla. Gettala lo stesso e resti lì un bel po', a raccogliere quello che torna indietro.",
		"Dopo il saluto, un tauren mi ha chiesto come stavo e poi ha aspettato una risposta vera. Ci ho dovuto pensare.",
	},
	["thb.muse.w24.greeting.004"] = {
		"Altrettanto a te. Prenditi tutto il tempo che vuoi.",
		"Salute. No, nessuna fretta, prima posa quello che porti.",
		"Ciao anche a te. Il resto dimmelo con calma, ti ascolto.",
	},
	["thb.muse.w24.greeting.005"] = {
		"Sto provando a salutare alla maniera dei tauren, la sosta e il capo inclinato, e continuo a scordarmi che non ho corna da inclinare. Loro sono così gentili da rispondere comunque.",
		"Il mio saluto mi è tornato da una tauren col piccolo cenno laterale delle corna, e io ho risposto inclinando la testa allo stesso modo. Senza corna faceva un effetto strano. Ha sorriso ugualmente.",
	},
	["thb.muse.w24.greeting.006"] = {
		"parla a un tauren che ascolta con un'attenzione così totale, orecchie in avanti e testa immobile, che il filo del discorso a un tratto si spezza.",
		"si accorge di parlare più piano con il tauren che ha davanti, che aspetta senza fretta che ogni parola sia arrivata.",
	},
	["thb.muse.w24.greeting.007"] = {
		"La risata dei tauren la senti nelle assi prima ancora che nelle orecchie. Qui vicino qualcuno ha appena trovato una cosa molto divertente, e i miei piedi lo sanno.",
		"Una risata tauren nasce in fondo al petto e si porta dietro tutto il corpo. Se ridono in tre insieme, il palo della tenda più vicino comincia a vibrare.",
	},
	["thb.muse.w24.greeting.008"] = {
		"I tauren mangiano piano, e mangiano in compagnia. Non ne ho mai visto uno mangiare camminando. Anche una striscia di carne secca merita una panca, uno sguardo alla pianura e una parola a chi sta vicino.",
		"Quassù nessuno mangia di corsa. Un tauren con un pezzo di pane si ferma, si siede, ne offre metà a chi è più vicino, e solo allora comincia.",
		"Da solo su una panca, un tauren che mangiava alzava lo sguardo a ogni passante, mezza pagnotta già pronta, nel caso qualcuno volesse compagnia.",
	},
	["thb.muse.w24.greeting.009"] = {
		"fa largo a un tauren con un cinghiale intero sulle spalle, che si ferma a chiacchierare con un vicino per un bel pezzo senza posarlo, e poi riparte.",
		"individua un tauren con un telo arrotolato su una spalla, un cesto sull'altro braccio e un piccolo sulla schiena, che si ferma a salutare qualcuno e trova, chissà come, una mano libera per agitarla.",
	},
	["thb.muse.w24.greeting.010"] = {
		"Quando un tauren dice il tuo nome, esce più lento di come l'hai mai sentito, come se ogni suono venisse posato con cura su un tavolo.",
		"Non sapevo di parlare così in fretta finché un tauren non mi ha ripetuto la domanda col suo passo. Sembrava più saggia. Non lo era.",
	},
	["thb.muse.w24.greeting.011"] = {
		"Gli ospiti hanno sempre fretta di salutare. Non mi dispiace; il mio saluto lo do con calma, tutto intero, e li guardo rallentare per raccoglierlo. La rupe insegna senza lezioni.",
		"Al saluto frettoloso di uno straniero si risponde per intero. Così facevano i nostri anziani, e su questa rupe continuerò a fare così.",
	},
	["thb.muse.w24.greeting.012"] = {
		"Due tauren si sono incontrati sul sentiero e si sono salutati così a lungo che ne è arrivato un terzo, ed è stato coinvolto. Credo che il terzo volesse solo passare.",
		"Un saluto cominciato tra due tauren lungo il sentiero si è allargato. Adesso sono in cinque, più un piccolo, e nessuno può andarsene senza ricominciare il giro.",
	},
	["thb.muse.w24.greeting.013"] = {
		"riceve il saluto di un tauren sotto forma di una mano larga posata per un attimo sulla spalla, pesante e salda, come per assestare un palo.",
		"si vede rivolgere da un tauren di passaggio una mano aperta sul petto e un cenno lento, e lo ricambia prima ancora di sapere come.",
	},
	["thb.muse.w24.greeting.014"] = {
		"Ho detto 'scusa', il tauren ha detto 'ma figurati', e ci stiamo scusando a vicenda da così tanto che ormai conta come amicizia.",
		"Le buone maniere dei tauren sono contagiose. Ho appena ringraziato un palo perché stava fermo.",
	},
	["thb.muse.w24.greeting.015"] = {
		"Prendendo congedo da un'amica vicino all'ascensore, una tauren ha usato la stessa lenta cura del saluto, ogni parola al suo posto. Se non dovessero rivedersi, non sarà rimasto niente di non detto.",
		"I congedi dei tauren durano quanto i loro saluti. Sembra lentezza, finché non penso a quanti addii, nelle pianure, a sentire gli anziani, non hanno avuto tempo affatto.",
	},
	["thb.muse.w24.greeting.016"] = {
		"Qui su Hunter Rise i saluti sono più brevi: un cenno del mento, una mano sollevata dal lavoro. I cacciatori risparmiano le parole come risparmiano i passi.",
		"Su quest'altura i cacciatori si salutano con un'occhiata e un grugnito, e chissà come non manca niente.",
	},
	["thb.muse.w24.greeting.017"] = {
		"siede per un po' accanto a un tauren sull'orlo, senza che nessuno dei due parli, la pianura distesa sotto, finché il tauren si alza, lascia un tocco leggero su una spalla e se ne va: a quanto pare, era una conversazione.",
		"divide a lungo il bordo dell'altura con un tauren silenzioso, e quando il tauren se ne va c'è un cenno che dice che la compagnia è stata buona.",
	},
	["thb.muse.w24.greeting.018"] = {
		"Mi hai lasciato finire tutta la storia. Nessuno mi lascia mai finire. Mi piace questa città.",
		"Grazie di aver sentito tutto quanto. Ma proprio tutto. Non mi capita spesso.",
	},
	["thb.muse.w24.greeting.019"] = {
		"Salute, e nella versione lunga, visto che ho imparato.",
		"Mi dicono che quella lenta è la versione educata, quindi: salve... a... te.",
	},
	["thb.muse.w24.greeting.020"] = {
		"Da quando sono quassù nessuno mi ha interrotto. Mi mette a disagio. Qualcuno dica qualcosa di sgarbato, vi prego.",
		"Un'intera conversazione e nessuno che mi parlasse sopra. Attenzione, potrei farci l'abitudine.",
	},
	["thb.muse.w24.grimtotem.001"] = {
		"Qui su Elder Rise gli anziani parlano del capo supremo con affetto e dei Grimtotem con prudenza, e lo scarto tra i due toni è largo abbastanza da caderci dentro.",
		"Quest'altura custodisce le voci più vecchie della città, e le più caute. Qui ogni accenno ai Grimtotem arriva avvolto nella cortesia, come una cosa che taglia.",
	},
	["thb.muse.w24.grimtotem.002"] = {
		"I Grimtotem sono orgogliosi, dicono i tauren, con il tono che si usa per un ciglio di burrone a cui qualcuno si ostina a camminare troppo vicino.",
		"Orgogliosi: è la parola che ogni tauren usa per i Grimtotem. Non è mai proprio un complimento, e non è mai proprio altro.",
	},
	["thb.muse.w24.grimtotem.003"] = {
		"nota che il tauren accanto abbassa la voce per dire Grimtotem, e poi lancia un'occhiata verso Elder Rise, come se il nome potesse arrivare fin là.",
		"vede un mercante tauren interrompersi a metà frase quando si nominano i Grimtotem, guardarsi intorno e riprendere il discorso un po' più piano.",
	},
	["thb.muse.w24.grimtotem.004"] = {
		"Di Magatha Grimtotem i tauren dicono solo che è molto vecchia e molto saggia. Il saggia lo dicono con un po' troppa cura.",
		"Qui tutti concordano che Magatha sia una grande anziana. Concordano così in fretta che sembra una cosa imparata a memoria.",
	},
	["thb.muse.w24.grimtotem.005"] = {
		"Ho chiesto dei Grimtotem. Il tauren si è messo a parlare del prezzo del cuoio. Così, tutto d'un tratto.",
		"Nomina i Grimtotem e un intero cerchio di anziani scopre qualcosa di affascinante nei propri zoccoli.",
		"Curioso. Quassù nessuno ha un'opinione sui Grimtotem. Proprio nessuno. Con molta convinzione.",
	},
	["thb.muse.w24.grimtotem.006"] = {
		"I viaggiatori raccontano che i Grimtotem di Stonetalon non sono amichevoli con gli estranei, Orda o non Orda. I tauren di qui ascoltano e tacciono, e il silenzio dice abbastanza.",
		"Un cacciatore è salito con una storia di guerrieri Grimtotem che respingono i viandanti sulle colline lontane. Gli anziani hanno ascoltato, hanno annuito una volta, e hanno chiesto com'era la strada.",
	},
	["thb.muse.w24.grimtotem.007"] = {
		"Alcune tribù vennero alla città volentieri, dicono gli anziani, e altre perché l'alternativa erano i centauri. Qualcuna, mi pare, ricorda ancora quale delle due fu.",
		"Non tutte le tribù salirono su queste rupi con lo stesso cuore. Chiedi con tatto e lo senti: chi venne per il capo supremo, e chi venne per le rupi.",
	},
	["thb.muse.w24.grimtotem.008"] = {
		"osserva due anziani tacere al passaggio di qualcuno della tenda di Magatha, e riprendere a parlare solo quando l'altro è ben lontano.",
		"vede un gruppo di tauren su una panca fare posto, educatamente e subito, a un anziano Grimtotem di passaggio, e richiudere il varco con la stessa rapidità.",
	},
	["thb.muse.w24.grimtotem.009"] = {
		"Mi dicono che tra i tauren c'è una vecchia regola: la tenda di un anziano non si discute. Quella dei Grimtotem fa venire a qualcuno la voglia di un'eccezione.",
		"Qui la tenda di ogni anziano si rispetta, chiunque sia. Rispettarla e fidarsene, comincio a capire, sono due cose diverse.",
	},
	["thb.muse.w24.grimtotem.010"] = {
		"I parenti non si scelgono, e i Grimtotem sono nostri parenti. Tengo a freno la lingua, come gli anziani, e osservo.",
		"Ogni tribù su queste alture è in qualche modo famiglia, anche i Grimtotem. Proprio per questo è difficile dire cosa ne penso.",
	},
	["thb.muse.w24.grimtotem.011"] = {
		"Poco fa uno della tenda di Magatha ha incrociato un Bluffwatcher sulle assi. Un cenno da tutti e due. Nessuno dei due per primo.",
		"Un Grimtotem e una guardia che si incrociano: due cenni perfetti, all'istante preciso. Questa non è amicizia. È diplomazia.",
	},
	["thb.muse.w24.grimtotem.012"] = {
		"I Grimtotem, si mormora, pensano che le altre tribù si siano rammollite accanto ai nuovi amici. Guardando un tauren versare con cura dell'acqua a un Reietto capisco cosa intendono, e mi piace.",
		"Molli, così i Grimtotem chiamerebbero gli altri tauren, a sentire le voci. Se essere molli vuol dire dividere il pane con orchi e morti, a questa città ne servirebbe di più.",
	},
	["thb.muse.w24.grimtotem.013"] = {
		"sente un anziano dire, senza riferirsi a nessuno, che certe radici crescono verso l'acqua e altre verso la pietra, e vede tutti quelli che ascoltano guardare verso Elder Rise.",
		"coglie l'osservazione di un vecchio tauren, che l'albero orgoglioso prende più vento degli altri, e il breve silenzio che la segue attorno al fuoco.",
		"presta orecchio a un vecchio sciamano che paragona l'orgoglio a un totem pesante da portare su per una rupe, e nota che nessuno chiede a chi si riferisca.",
	},
	["thb.muse.w24.grimtotem.014"] = {
		"Gente fiera, i Grimtotem. Terrò le distanze, e le buone maniere.",
		"Qualunque cosa succeda in quella tenda su Elder Rise, sono affari dei tauren. Io penso ai miei.",
		"I Grimtotem? Non è la mia tenda, non è la mia lite.",
	},
	["thb.muse.w24.grimtotem.015"] = {
		"In questa città nessuno dice una parola contro Magatha Grimtotem. È proprio questo che continuo a notare: con quanta cura nessuno la dice.",
		"Il silenzio su qualcuno può essere una forma di rispetto. Quassù, sui Grimtotem, somiglia di più a una porta tenuta aperta che nessuno vuole attraversare.",
	},
	["thb.muse.w24.grimtotem.016"] = {
		"Ho sentito dire che i Grimtotem rimasero fedeli alle vecchie usanze più a lungo degli altri, e pare pensino che questo li renda i tauren più veri. Le altre tribù non discutono. Semplicemente non sono d'accordo.",
		"Ci sono tauren convinti che il vagare li abbia resi forti e che la città li renderà deboli. Lo si sente solo a mezza voce, e mai vicino alla tenda del capo supremo.",
	},
	["thb.muse.w24.grimtotem.017"] = {
		"Ogni città ha una famiglia con cui tutti sono educati. In questa sono i Grimtotem.",
		"Cenni educati per i Grimtotem, cenni calorosi per tutti gli altri. Sto imparando la differenza.",
	},
	["thb.muse.w24.kiln.001"] = {
		"osserva un vasaio costruire una giara con cordoni d'argilla posati l'uno sull'altro, per poi lisciarne le creste col pollice bagnato finché i cordoni scompaiono.",
		"si accovaccia accanto a una vasaia che rotola lunghi cordoni d'argilla rossa fra i palmi larghi e li avvolge, giro dopo giro, a formare la parete di una giara.",
		"segue il pollice di un vasaio che percorre l'orlo di un vaso a colombino, più e più volte, finché la giuntura fra gli ultimi due giri non sparisce.",
	},
	["thb.muse.w24.kiln.002"] = {
		"Quassù non c'è una grande fornace, solo una fossa. I vasi ci entrano su un letto di corteccia e sterco secco, ricoperti da altro ancora, e il fuoco viene lasciato a covare. Ne escono chiazzati di nero dovunque la fiamma li abbia toccati.",
		"I vasai seppelliscono i vasi in un cumulo che fuma piano e li lasciano lì. Il giorno dopo li tirano fuori, e ogni giara porta le sue nuvole scure dove il fuoco ci si è appoggiato.",
		"Una fossa di cottura è una cosa paziente. Il vasaio la copre, se ne va, torna, ascolta, se ne va di nuovo. La tengo d'occhio da un po' e non è successo niente di visibile, il che, mi dicono, è proprio come deve andare.",
	},
	["thb.muse.w24.kiln.003"] = {
		"ammira la pazienza di una vasaia che strofina una giara asciutta con un ciottolo di fiume levigato, in tondo, in tondo, finché l'argilla opaca non prende la lucentezza del corno lucidato.",
		"ascolta il cigolio sottile di una pietra passata sull'argilla cruda, la mano del vasaio che non si ferma finché tutta la giara non brilla.",
	},
	["thb.muse.w24.kiln.004"] = {
		"Ho comprato un vaso. L'ho portato attraverso un ponte di corda. Non ho mai tenuto niente con tanta cura in vita mia.",
		"Questa giara è più alta di certi gnomi e serve per il sale. Solo per il sale.",
		"Non toccare i vasi che asciugano. Ormai me l'hanno detto tre volte, ogni volta con più cortesia della precedente.",
	},
	["thb.muse.w24.kiln.005"] = {
		"I vasai macinano vecchie giare rotte e ne impastano la polvere nell'argilla nuova. Serve a non far crepare le pareti nel fuoco, dice uno; un altro dice che tiene i vecchi vasi in famiglia. Credo valgano entrambe.",
		"Chi lavora l'argilla quassù non butta via niente di rotto. I cocci vengono pestati fini e mescolati all'impasto successivo, così ogni giara porta dentro un pezzetto di una più vecchia.",
	},
	["thb.muse.w24.kiln.006"] = {
		"si ferma presso un abbeveratoio dove lunghe canne stanno a bagno, e vede un cestaio tirarne fuori una, spaccarla per il lungo con l'unghia del pollice e mettere da parte le metà in coppie perfette.",
		"guarda una tauren far passare una canna bagnata nella tacca di un attrezzo d'osso, sfoltendola a larghezza regolare, e poi allungare la mano verso la successiva senza guardare.",
		"si accovaccia a guardare il fondo di un cesto a metà, una spirale di canne spaccate più fitta di qualunque cosa saprebbe intrecciare in un tempo doppio.",
	},
	["thb.muse.w24.kiln.007"] = {
		"Le grandi gerle qui hanno una fascia che passa sulla fronte, non sulle spalle. Una tauren mi è appena passata accanto con una pila di vasi appesa alla testa, chiacchierando per tutto il tragitto.",
		"Gerle con la fascia sulla fronte: i tauren portano metà della merce col collo. Ne ho provata una, vuota. Il mio collo ha presentato un reclamo.",
		"Un cestaio intreccia una fascia da trasporto spessa e morbida come una coperta piegata. Chi la porterà, dice, dovrà caricarsi per ore e ore, e non dovrà pentirsene.",
	},
	["thb.muse.w24.kiln.008"] = {
		"L'argilla rossa, dice una vasaia, viene dalle rive di un torrente laggiù in basso e sale fin qui nelle ceste. Ogni giara della rupe è cominciata con una camminata nel fango.",
		"L'argilla non cresce sugli altipiani. Qualcuno l'ha scavata dalla riva di un torrente in pianura, l'ha issata su per le pareti e adesso, con tutta calma, ne sta facendo una pentola da zuppa.",
		"Ogni ciotola di questa città un tempo era fango in fondo a Mulgore, issato su per le pareti in una cesta da qualcuno con spalle robuste.",
	},
	["thb.muse.w24.kiln.009"] = {
		"Ogni vasaio imprime un segno sul fondo della giara prima che asciughi: un'impronta di pollice, una fila di puntini fatti con un rametto, un giro di cordicella fatto rotolare nell'argilla fresca. Basta capovolgere un vaso per sapere da quali mani viene, se si conoscono i segni.",
		"A una bancarella ho capovolto una ciotola e sul fondo ho trovato una piccola spirale impressa. Il mercante ha detto subito il nome del vasaio, sorridendo, come se gli avessi chiesto notizie di un amico.",
	},
	["thb.muse.w24.kiln.010"] = {
		"aspetta mentre un vasaio stende senza fretta una pelle su una fila di giare crude sotto le prime gocce, rimboccandone i bordi come una coperta su chi dorme.",
		"vede i vasai coprire le giare ad asciugare per ripararle dalla pioggia, senza alcuna fretta, come se l'argilla e il cielo si fossero accordati da un pezzo.",
	},
	["thb.muse.w24.kiln.011"] = {
		"I vasi appena cotti tintinnano e scricchiolano mentre si raffreddano, piccoli suoni limpidi come un'unghia contro una tazza. La vasaia siede in mezzo a loro e ascolta. Uno incrinato, dice, suona storto.",
		"Accanto a un mucchio di giare che si raffreddavano ho ascoltato i loro scatti e tintinnii. Una ha dato un suono sordo. Il vasaio l'ha tolta senza una parola e l'ha messa da parte.",
	},
	["thb.muse.w24.kiln.012"] = {
		"Grano in giare d'argilla sigillate con la cera e un coperchio di pelle. Qui intorno, chissà dove, un topo molto deluso.",
		"Le giare delle provviste qui sono sigillate così bene che, mi raccontano, un topo una volta ci ha vissuto accanto per un'intera stagione senza mai scoprire cosa contenessero.",
	},
	["thb.muse.w24.kiln.013"] = {
		"si sofferma accanto a un vecchio cestaio che ha posato un cesto a metà per discutere allegramente con un vicino, e le cui dita, per abitudine, continuano a intrecciare l'aria.",
		"nota le dita enormi e screpolate di un'anziana che spaccano il salice più in fretta di quanto riesca a seguirle, mentre lei guarda altrove e chiacchiera.",
	},
	["thb.muse.w24.kiln.014"] = {
		"I vasi tauren spuntano anche a Orgrimmar, nell'angolo di ogni cucina orchesca che tenga alla sua acqua. I nostri alleati fanno cose che durano, e ce le cedono a prezzo onesto. All'Orda poteva andare peggio.",
		"Metà delle giare d'acqua negli accampamenti dell'Orda è scesa da queste pareti nella gerla di un tauren. Un alleato che manda vasi invece di discorsi è uno da tenersi stretto.",
	},
	["thb.muse.w24.kiln.015"] = {
		"Una vasaia mi ha detto che l'argilla ascolta l'umore delle mani. Nei giorni storti non lavora affatto. Non mi viene in mente niente di ciò che faccio che sia altrettanto sincero su di me.",
		"I vasai non lavorano l'argilla quando sono arrabbiati, dice uno di loro. La giara se lo ricorderebbe. Penso a tutto quello che ho fatto con rabbia, e mi chiedo cosa se lo ricordi.",
	},
	["thb.muse.w24.kiln.016"] = {
		"Un vaso così bello non dovrebbe servire per i fagioli. Lo userò per i fagioli.",
		"Ho chiesto al vasaio quanto dura una giara così. Ha risposto con un'alzata di spalle che è durata diverse generazioni.",
	},
	["thb.muse.w24.kiln.017"] = {
		"Un cesto finito, a quanto pare, si collauda sedendocisi sopra. Il cestaio si è seduto su questo, e il cesto ha retto, e con lui la mia stima per i cesti tauren.",
		"Il collaudo della cestaia è semplice: posa il cesto a terra e ci sale sopra. Visto che è una tauren, è un bel collaudo.",
	},
	["thb.muse.w24.kiln.018"] = {
		"aspetta mentre una vasaia ripulisce i suoi attrezzi, una stecca d'osso, una conchiglia, una spatola liscia, e li dispone nello stesso ordine in cui li ha usati.",
		"nota gli attrezzi del vasaio che asciugano in fila su un panno: una conchiglia, un bastoncino piatto, una costola d'osso, ciascuno consumato a misura di una presa.",
	},
	["thb.muse.w24.lashing.001"] = {
		"guarda un tauren bagnare una striscia di cuoio crudo in una ciotola, legarla stretta attorno all'incrocio di due pali e lasciarla restringere asciugando, più dura di qualunque chiodo.",
		"si ferma accanto a un tauren che fissa una traversa con una lunga striscia di pelle bagnata, avvolgendola giro dopo giro e infilando il capo sotto col pollice.",
		"resta a guardare un tauren che chiude una legatura e poi versa sul nodo un po' d'acqua da una zucca, come chi annaffia una pianta.",
	},
	["thb.muse.w24.lashing.002"] = {
		"Di chiodi, in questa città, non ne trovo nemmeno uno. Tutto è legato, incavigliato o incastrato. Se qualcosa si allenta, vedi subito dove, e lo aggiusti con le mani.",
		"Ho cercato un chiodo a Thunder Bluff e non l'ho trovato. Nodi, pioli, cunei. Una città che con pazienza potresti smontare e rimontare tale e quale.",
		"Ogni giuntura di ogni telaio, quassù, è un nodo che qualcuno potrebbe sciogliere. Lo trovo stranamente rassicurante, come una serratura con la chiave lasciata dentro.",
	},
	["thb.muse.w24.lashing.003"] = {
		"Qui i nodi sembrano tutti uguali finché non li fissi abbastanza. Poi cominci a vedere le mani: un tauren chiude con un doppio giro, un altro infila il capo sotto, un terzo lo lascia lungo.",
		"Ogni legatura di questa altura finisce in modo un po' diverso. Credo che si potrebbe dire chi l'ha fatta, a conoscerne le mani.",
		"Ho visto un tauren rifare la legatura di qualcun altro, e rifarla identica, come per rispetto verso le prime mani.",
	},
	["thb.muse.w24.lashing.004"] = {
		"Di quel nodo mi fido. Non so perché. È più grosso della mia testa.",
		"Se quella corda dovesse mai spezzarsi, voglio che resti agli atti che non ne ho mai parlato male.",
		"Quella corda ha retto più raffiche di quanti pasti caldi abbia fatto io. Le faccio il saluto.",
	},
	["thb.muse.w24.lashing.005"] = {
		"vede un Bluffwatcher fermarsi a metà traversata, far scorrere una mano lungo una corda come un mandriano tasta la zampa di un kodo in cerca di calore, e riprendere il cammino senza una parola.",
		"nota un tauren di passaggio dare uno strattone a una corda nel punto in cui incontra il palo, ascoltarla, e annuire.",
	},
	["thb.muse.w24.lashing.006"] = {
		"In questa città dev'esserci qualcuno che di mestiere fa solo corde: le fa, le controlla, le cambia. Vorrei stringere quella mano, con grande rispetto.",
		"Su questi pianori dev'esserci più corda che in tutti i porti di Kalimdor messi insieme, e nemmeno un marinaio a vantarsene.",
	},
	["thb.muse.w24.lashing.007"] = {
		"Qui la corda non è di canapa: è ritorta con erba lunga e strisce di pelle, a tre capi, e odora appena della pianura da cui viene.",
		"Sfila un filo da una corda vecchia ed è erba, semplice erba di Mulgore, ritorta così forte da aver dimenticato di essersi mai piegata alla brezza.",
		"La corda nuova è chiara e sa di verde. Quella vecchia è bruna e sa di fumo. Fra le due ci sono un paio di stagioni all'aperto.",
	},
	["thb.muse.w24.lashing.008"] = {
		"gira attorno a due tauren che impiombano una corda sulle ginocchia, uno tiene, l'altro intreccia i capi, e nessuno dei due dice una parola.",
		"si ferma dove una corda vecchia è stesa lungo il sentiero, mentre un tauren vi intreccia un tratto nuovo, capo sotto capo.",
		"osserva l'estremità sfilacciata di una corda che viene fasciata con un tendine sottile, avvolto così fitto e regolare che la corda sembra mettersi un cappuccio.",
	},
	["thb.muse.w24.lashing.009"] = {
		"Qui su Elder Rise le legature sono scure di anni e di fumo, dure come corno. Nessuno le ha cambiate perché nessuno ne ha avuto bisogno.",
		"Su Elder Rise anche i nodi sembrano vecchi: neri, lucidi, così ritirati nel legno che non si capisce dove finisce la corda e dove comincia il palo.",
	},
	["thb.muse.w24.lashing.010"] = {
		"Con la pioggia tutte le legature di cuoio crudo della città si allentano e si scuriscono insieme. I tauren non le toccano: asciugando torneranno a stringere, e intanto la città intera scricchiolerà.",
		"Il cuoio bagnato si allunga, quello asciutto si ritira. Con questa pioggia le legature cedono un poco, e nessuno pare preoccuparsene.",
	},
	["thb.muse.w24.lashing.011"] = {
		"Guarda quella legatura. Nemmeno un giro lento. Io gli stivali non riesco ad allacciarli così bene.",
		"Chi ha legato quel palo sapeva il fatto suo. Mi farei chiudere lo zaino da quelle mani.",
		"Tre giri, un'infilata e uno strattone. L'ho visto fare due volte e ancora non saprei dire come.",
	},
	["thb.muse.w24.lashing.012"] = {
		"Alle corde non penso mai, finché non ci sto sopra. Allora non penso ad altro: quanti capi, quanto vecchie, chi le ha legate, e se quel giorno era di buon umore.",
		"A metà della traversata la testa mi va sempre ai nodi dell'altra sponda. Chiunque li abbia fatti, spero avesse fatto una buona colazione.",
	},
	["thb.muse.w24.lashing.013"] = {
		"nota un uccellino che tira l'estremità sfilacciata di una corda da tenda, strappando fibre per il nido, mentre chi l'ha tesa finge di non vedere.",
		"segue con gli occhi un uccello che sfila un capo allentato da una legatura e vola via con quello: la riparazione di una città diventa il tetto di un'altra.",
		"scorge un ciuffo di fibra di corda intrecciato in un nido incastrato sotto una traversa: l'uccello si è preso la sua parte delle riparazioni della città.",
	},
	["thb.muse.w24.lashing.014"] = {
		"Un tauren mi ha detto che i nodi delle corde delle tende sono quelli antichi del viaggio, che tenevano quando le tribù seguivano le mandrie. Si fanno in un attimo e si sciolgono con uno strattone.",
		"Per le corde delle tende usano ancora i nodi della strada, mi dicono: rapidi da fare, rapidi da sciogliere, fatti per un popolo che poteva ripartire dietro le mandrie prima che il fuoco si spegnesse.",
		"Un nodo delle tende si chiama nodo della mandria, mi ha detto un tauren, perché tiene finché tira e si scioglie appena glielo chiedi con garbo.",
	},
	["thb.muse.w24.lashing.015"] = {
		"Finalmente ho guardato gli ascensori con attenzione. Mentre una piattaforma sale, l'altra scende, come i due piatti di una bilancia. Più che un ascensore, i tauren hanno costruito un equilibrio.",
		"Salendo incroci l'altra piattaforma che scende, a metà parete, tanto vicina da salutare con un cenno chi ci sta sopra. Ognuna tira su l'altra.",
		"In alto, sopra gli ascensori, una grande ruota di legno accoglie le funi. Dal basso la vedi appena sussultare; dall'alto la senti brontolare.",
	},
	["thb.muse.w24.lashing.016"] = {
		"guarda chi manovra l'ascensore, in cima, appoggiarsi a una lunga leva di legno, e laggiù in fondo una piattaforma sussulta e si mette in moto.",
		"scorge in cima all'ascensore un tauren che controlla le funi passandole mano dopo mano, una lunga verifica prima che il carico successivo scenda.",
		"osserva un tauren in cima all'ascensore posare il palmo sulla fune in movimento, a cercare qualcosa che solo le mani sanno dire, e poi far cenno per il carico successivo.",
	},
	["thb.muse.w24.lashing.017"] = {
		"Ho capito come funziona l'ascensore. Qualcuno più pesante di me sta scendendo. Grazie, chiunque tu sia.",
		"Quindi l'ascensore sale perché l'altro scende. Qualcuno laggiù mi sta facendo un favore senza saperlo.",
		"Ogni volta che l'ascensore parte sento le funi prendere il peso. Pare la parete che si schiarisce la voce.",
	},
	["thb.muse.w24.lashing.018"] = {
		"Accanto all'ascensore salgono lungo la parete funi grosse come il mio polso, e non pendono molli: quando una piattaforma si muove vibrano appena, tese come la corda di un violino.",
		"Mettiti vicino alle funi dell'ascensore mentre sale un carico e le senti attraverso la roccia: un ronzio basso, come se a lavorare fosse la parete stessa.",
		"Le funi dell'ascensore sono unte e scure dove scorrono sulla trave in cima, chiare e pelose dove pendono libere. Anche una corda ha il suo lato da lavoro.",
	},
	["thb.muse.w24.ledge.001"] = {
		"si sporge dal ciglio dell'altura verso una cengia stretta poco più in basso, dove crescono pochi ciuffi d'erba testardi e un uccello ha fatto casa in una cavità.",
		"si protende quel tanto che basta per vedere un ripiano di roccia sotto il bordo, cosparso di piume e ossicini: gli avanzi di un uccello che ci vive.",
	},
	["thb.muse.w24.ledge.002"] = {
		"Il ciglio dell'altura non è un taglio netto. È arrotondato, consumato, friabile, e negli ultimi passi pende un poco verso il vuoto. I tauren stanno ben lontani da quella pendenza. Anch'io.",
		"Vicino al vuoto la roccia si inclina verso fuori, dolcemente, come se il pianoro facesse spallucce. Ho notato che nessuno si ferma sulla parte inclinata.",
	},
	["thb.muse.w24.ledge.003"] = {
		"Su quella cengia laggiù c'è un nido. A quell'uccello nessuno ha costruito un ascensore.",
		"Guarda, un ripiano nella parete con sopra un alberello. Il posto migliore della città, e nessun modo per arrivarci.",
		"Su quella cengia di sotto qualcuno ha perso un cesto. È lì da abbastanza tempo da metterci l'erba.",
	},
	["thb.muse.w24.ledge.004"] = {
		"Dove il sentiero passa più vicino al vuoto, la roccia è stata resa ruvida con colpi di scalpello di traverso, perché uno zoccolo o uno stivale non scivolino.",
		"Qualcuno ha scavato gradini bassi nel pendio dove il sentiero scende verso il bordo. Gradini piccoli e attenti, di quelli che si tagliano dopo aver visto cosa combina una scivolata.",
	},
	["thb.muse.w24.ledge.005"] = {
		"si siede su un blocco di pietra vicino al ciglio, levigato in due incavi poco profondi da tanti altri che si sono seduti proprio lì.",
		"trova posto sul bordo dell'altura, su una sporgenza lucidata dall'uso, la pietra appena incavata dove innumerevoli altri si sono fermati.",
	},
	["thb.muse.w24.ledge.006"] = {
		"Le tende vicine al bordo hanno il doppio dei pioli di quelle al centro. I costruttori non hanno discusso col vuoto: accanto a lui hanno semplicemente legato tutto più stretto.",
		"Verso il ciglio le cime si raddoppiano e i paletti si infittiscono. Quanto manca al vuoto, lo capisci contando i pioli.",
	},
	["thb.muse.w24.ledge.007"] = {
		"Sotto il bordo della roccia c'è uno strapiombo, e sotto lo strapiombo, incredibilmente, qualcuno ha accatastato la legna. O i tauren si calano laggiù, o hanno braccia lunghissime.",
		"Proprio sul ciglio c'è un rotolo di corda legato a un piolo, che pende giù fuori dalla vista. Non lo tirerò su per vedere cosa c'è in fondo. I misteri li rispetto.",
	},
	["thb.muse.w24.ledge.008"] = {
		"nota che l'erba sul ciglio dell'altura cresce bassa e schiacciata, pettinata tutta da una parte, mentre un passo più indietro si alza morbida e alta.",
		"si inginocchia sul bordo, dove piccole piante tenaci crescono appiattite contro la roccia, ogni foglia voltata dalla stessa parte.",
	},
	["thb.muse.w24.ledge.009"] = {
		"Qui sotto, ai Pools of Vision, i ripiani di roccia sono viscidi di umido, e il sentiero fra le vasche è così stretto che metti ogni piede come se l'acqua potesse offendersi.",
		"Ai Pools of Vision i ripiani di roccia scendono nell'acqua come una scala che nessuno ha finito.",
	},
	["thb.muse.w24.ledge.010"] = {
		"Sul ciglio c'è una ferita fresca, dove si è staccato un pezzo di roccia: dentro la pietra è più chiara del resto. I tauren hanno già spostato indietro una tenda.",
		"Da poco si è staccato un pezzo del bordo, e la frattura è viva e chiara. La rupe non se ne va da nessuna parte, eppure, piano piano, se ne va.",
	},
	["thb.muse.w24.ledge.011"] = {
		"Fatti indietro da lì. Quella roccia sporge da più tempo di quanto chiunque di noi sia al mondo, e comincia a essere stanca.",
		"Non quel pezzo di bordo, è crepato. Mettiti qui, dove la roccia è ancora in buoni rapporti col resto.",
		"Occhio al bordo, lì. È più friabile di quanto sembri, e sembra un biscotto.",
	},
	["thb.muse.w24.ledge.012"] = {
		"Per salire alle cenge più alte di un'altura spesso c'è solo una rampa di terra battuta e pietre, bordata di tronchi fermati da paletti. I tauren non costruiscono scale quando basta un pendio.",
		"Qui quasi tutti i sentieri salgono a rampe, non a gradini: terra e pietrisco tenuti fermi da tronchi piantati di traverso. Più comodi per gli zoccoli, immagino, e per chiunque porti un carico.",
		"Dove la roccia sale da un livello all'altro di un'altura c'è un tronco posato di traverso e fermato coi paletti, e dietro, terra battuta. Piccola ingegneria, ovunque guardi.",
	},
	["thb.muse.w24.ledge.013"] = {
		"colpisce per sbaglio un sasso verso il bordo, lo guarda rotolare, esitare proprio sul ciglio e fermarsi, come se anche lui ci avesse ripensato.",
		"riallontana dal ciglio una pietra smossa col fianco dello stivale, una piccola, ordinata cortesia verso chi passa di sotto.",
	},
	["thb.muse.w24.ledge.014"] = {
		"Gli anziani dicono che le rupi furono scelte perché i loro bordi sono onesti: una parete ti dice chiaro dove finisce. Nella pianura aperta il pericolo non lo diceva mai.",
		"Una parete non nasconde niente. Il suo bordo è lì, netto come una riga tracciata nella terra. Credo che sia anche per questo che un popolo braccato si sentiva al sicuro quassù.",
	},
	["thb.muse.w24.ledge.015"] = {
		"In pieno sole la pietra del bordo scotta al tocco, e le lucertoline che vivono nelle sue crepe ci stanno spalmate sopra come monete rovesciate.",
		"Col sole a picco le cenge non danno ombra, e ogni crepa del ciglio ha la sua lucertola, in attesa che la pietra si raffreddi.",
	},
	["thb.muse.w24.ledge.016"] = {
		"Certe tende stanno così vicine al ciglio che i pali posteriori poggiano sull'ultimo palmo di roccia. Chi le ha piantate o conosceva benissimo quella pietra, o dormiva sonni molto tranquilli.",
		"Una tenda ha la schiena proprio contro il vuoto, fissata coi pioli all'orlo estremo. Per dormirci vorrei una buona ragione, e una migliore per fare il sonnambulo.",
	},
	["thb.muse.w24.ledge.017"] = {
		"si attarda mentre un tauren spazza via la ghiaia da una cengia col fianco dello zoccolo prima di posarvi una cesta pesante, attento come chi apparecchia la tavola.",
		"vede un tauren saggiare il bordo di una cengia con uno zoccolo, premendo, prima di affidarle un carico di legna.",
	},
	["thb.muse.w24.ledge.018"] = {
		"Sotto il ciglio c'è più città di quanto si pensi. Corde, cenge, ripiani. La rupe ha una cantina.",
		"Sporgiti e guarda sotto il bordo: pioli, corde, un intero piano di sotto di cui nessuno parla mai.",
	},
	["thb.muse.w24.loom.001"] = {
		"tiene d'occhio una tessitrice che compatta ogni nuova fila con un pettine piatto d'osso: tre colpetti, un'occhiata, mai un quarto.",
		"segue il ritmo di un tessitore al telaio verticale: il pettine d'osso scende su ogni fila con lo stesso colpo sordo.",
		"resta accanto a un telaio abbastanza a lungo da impararne la sequenza di suoni: filo, filo, colpo; filo, filo, colpo.",
	},
	["thb.muse.w24.loom.002"] = {
		"La tintora ha le braccia macchiate fino al gomito di un rosso che non verrà mai via. Radici, per quel rosso, dice; un giallo da un lichene delle pareti di roccia; un grigio dalla cenere di legna.",
		"Pentoloni di tintura in fila, ognuno di un torbido diverso: uno di radici bollite, uno di corteccia pestata, uno di qualcosa che il tintore non ha voluto nominare. Le matasse ne escono nei colori che la pianura indossa di stagione in stagione.",
		"Chiedi a un tintore da dove venga quel rosso cupo e avrai una radice, una pentola e una lunga occhiata che vuol dire: il resto non è in vendita.",
	},
	["thb.muse.w24.loom.003"] = {
		"Ho domandato alla tessitrice come si chiama questo colore. «Erba tardiva», pare. Prendo due coperte di erba tardiva.",
		"Questa coperta ha esattamente il marrone dell'orecchio di un kodo. La tessitrice dice che l'idea era proprio quella.",
		"Coperte tinte «fiume dopo il disgelo» e «kodo all'ombra». I nomi valgono metà del prezzo, credo.",
	},
	["thb.muse.w24.loom.004"] = {
		"Una tessitrice conta i fili a mezza voce nella sua lingua, una conta morbida e rotonda che non riesco a seguire oltre i primi numeri. Se la interrompono, ricomincia la fila senza lamentarsi.",
		"Le tessitrici contano nella loro lingua, piano e senza pause, e una fila di telai suona come una lenta conversazione fra numeri.",
		"Guardando una tessitrice contare ho imparato due parole della lingua tauren: credo significhino «uno» e «daccapo».",
	},
	["thb.muse.w24.loom.005"] = {
		"scavalca con cautela un lungo ordito teso basso fra due paletti, mentre il tessitore lo percorre tutto controllando ogni filo.",
		"per poco non inciampa in una fila di fili d'ordito picchettati lungo le assi, e la tessitrice li solleva con una mano sola senza nemmeno alzare gli occhi.",
	},
	["thb.muse.w24.loom.006"] = {
		"Un'anziana tauren fila camminando, il fuso che scende e gira all'altezza del ginocchio, e non sembra mai guardarlo. Ha attraversato mezza altura e ha già una spanna di filato.",
		"Un fuso che ruota in fondo a un filo, una mano enorme che pizzica e tira la fibra: alcune coperte della città cominciano così, con una lenta tirata dopo l'altra.",
		"Le filatrici, qui, chiacchierano, ridono, attraversano i ponti e mercanteggiano, e intanto il fuso continua a girare, come se avesse una commissione tutta sua.",
	},
	["thb.muse.w24.loom.007"] = {
		"Ho provato a tessere una fila. La tessitrice l'ha disfatta con tanta gentilezza che quasi non ho notato la correzione.",
		"Il tessitore mi ha lasciato aggiungere un filo. È lì dentro, chissà dove. Nessuno lo troverà mai, e mi dicono che è un complimento.",
		"Un turno al telaio. Risultato: una fila storta e un tauren molto paziente.",
	},
	["thb.muse.w24.loom.008"] = {
		"passa sotto una pertica carica di matasse appena tinte, che gocciolano blu su assi già macchiate di tutti i colori che i tintori conoscono.",
		"si abbassa sotto una fila di matasse bagnate, e una goccia rossa {g:gli|le} cade sulla manica come un piccolo marchio di proprietà.",
		"nota che le assi sotto le pertiche dei tintori sono chiazzate di rosso, blu e oro: il registro di ogni partita che abbia mai gocciolato.",
	},
	["thb.muse.w24.loom.009"] = {
		"Una piccola tauren tesse su un telaio non più grande di un piatto, e ogni fila è storta. La maestra guarda il lavoro, dice qualcosa di affettuoso e non raddrizza nemmeno un filo.",
		"La prima stuoia di qualcuno è appesa accanto all'ingresso di una tenda, sbilenca e fiera. Nessuno sembra pensare che debba stare altrove.",
		"L'anziano al telaio grande ne tiene uno minuscolo lì accanto, già montato per qualunque vitello si avvicini. Mentre guardavo se ne sono avvicinati tre.",
	},
	["thb.muse.w24.loom.010"] = {
		"Col buio il freddo sale dalla pietra, e d'un tratto ogni tauren dell'altura ha una coperta sulle spalle. Ora capisco perché le tessitrici non smettono mai.",
		"Al buio escono le coperte: sulle spalle, sulle ginocchia, piegate sotto gli anziani sulle panche. La tessitura del giorno è il calore della notte.",
	},
	["thb.muse.w24.loom.011"] = {
		"Ho visto questi disegni arrotolati dietro la sella di un orco di passaggio e piegati sotto lo zaino di un troll. La tessitura tauren viaggia più dei tauren.",
		"Un mercante reietto tiene una coperta tauren su un braccio come se fosse fragile. Ho il sospetto che la coperta durerà più di lui.",
		"Il lavoro delle tessitrici scende dalla rupe in ogni bagaglio che lascia le alture. Più di un giaciglio sulle strade di Kalimdor è cominciato su un telaio di quassù.",
	},
	["thb.muse.w24.loom.012"] = {
		"si sofferma accanto a una tessitrice che si interrompe, scopre un errore sei file più indietro e, senza alcun segno di stizza, comincia a disfarle tutte e sei.",
		"vede un tessitore aggrottare la fronte davanti a una coperta finita, trovare un filo sbagliato verso il centro e mettersi a disfare mezza giornata di lavoro.",
	},
	["thb.muse.w24.loom.013"] = {
		"In nessun prezzo che mi fa una tessitrice compare la parola «presto». Ogni cosa richiede il tempo che richiede, e costa più o meno uguale.",
		"Ho chiesto quando sarebbe stata pronta una coperta. Il tessitore ha guardato il telaio, poi la pianura, e ha risposto «quando lo sarà». Ripasserò.",
	},
	["thb.muse.w24.loom.014"] = {
		"Non tutto il filo quassù viene da un animale. Una parte si ricava battendo l'erba alta della pianura e torcendola a mano, finché diventa una cordicella che sa vagamente d'estate.",
		"Una tauren batte steli d'erba con un mazzuolo di legno, poi rotola le fibre sulla coscia fino a farne spago. Alla fine ce n'è abbastanza da chiudere l'ingresso di una tenda.",
	},
	["thb.muse.w24.loom.015"] = {
		"Ogni coperta di questa città è più calda di quanto sembri, e sembra caldissima.",
		"Cercavo una coperta e me ne vado con due coperte e un tappeto. La tessitrice non ha nemmeno provato a vendermi il tappeto.",
	},
	["thb.muse.w24.loom.016"] = {
		"Ho le dita blu. Ho toccato una matassa. Una.",
		"Promemoria: le matasse bagnate sono bagnate apposta.",
	},
	["thb.muse.w24.loom.017"] = {
		"Quando una coperta si tesse per farne dono, mi ha detto una tessitrice, la si consegna piegata col disegno nascosto all'interno, così chi la riceve deve aprirla per vederlo. Mi piace un popolo che ti fa aprire un regalo con calma.",
		"Le coperte da regalo si consegnano piegate strette, mi dicono, col disegno verso l'interno. L'aprirle fa parte del dono.",
	},
	["thb.muse.w24.offering.001"] = {
		"vede un cacciatore posare una striscia di carne secca su una pietra piatta sul bordo dell'altura, fare un passo indietro e aspettare che un falco la prenda prima di tornare alle sue faccende.",
		"nota una piccola striscia di carne lasciata su una sporgenza al limite del pianoro, e un tauren che ci passa accanto in continuazione senza mai toccarla.",
	},
	["thb.muse.w24.offering.002"] = {
		"La vecchia tauren sulla panca accanto stacca il primo angolo di ogni focaccia e lo lascia cadere sulle assi. Gli uccelli lo sanno. E a giudicare dalla sua faccia, lo sa anche la Madre Terra.",
		"Prima di mangiare, una nonna tauren sbriciola un pizzico di pane per terra. 'Prima a lei,' mi ha detto, senza dire chi. Non ce n'era bisogno.",
		"La prima briciola al suolo, il resto in bocca. I tauren lo fanno senza pensarci, come altri si battono il fango dagli stivali sulla soglia.",
	},
	["thb.muse.w24.offering.003"] = {
		"Volevo lasciare qualcosa sulla sporgenza dove i tauren lasciano le loro offerte. Avevo solo una moneta di rame e mezzo biscotto. Uno sciamano ha detto che andavano bene tutti e due, e ha guardato il biscotto con interesse.",
		"Ho chiesto a una sciamana cosa sia un'offerta come si deve. 'Qualcosa che preferiresti tenere,' ha detto. È da un pezzo che stringo la stessa mela senza decidermi.",
	},
	["thb.muse.w24.offering.004"] = {
		"si fa da parte mentre un tauren versa un filo d'acqua attorno ai piedi del palo d'ingresso di una tenda, lentamente, per un giro completo, e se ne va con la brocca vuota senza voltarsi.",
		"scorge un anello scuro di terra bagnata attorno alla base di un palo d'ingresso, appena versato, e una tazzina d'argilla capovolta lì accanto.",
	},
	["thb.muse.w24.offering.005"] = {
		"Qualcuno infila delle piume nelle crepe della roccia, all'imbocco di un ponte. Ogni volta che le vecchie volano via ne compaiono di nuove. Nessuno se ne prende il merito.",
		"C'è una crepa nella roccia, dove un ponte tocca l'altura, sempre piena di piccole cose: una piuma, una perlina, un ciuffo d'erba intrecciato. Un'offerta, o uno scherzo di cui è complice tutta la città.",
		"Ho infilato una piuma di falco nella crepa accanto al ponte. Quando ho guardato indietro, finito il ponte, qualcuno l'aveva già raddrizzata.",
	},
	["thb.muse.w24.offering.006"] = {
		"Non badare a me. Guardo altrove: non è cosa per me.",
		"Devo lasciare qualcosa anch'io? Ho un bottone, un pezzo di spago e tantissima buona volontà.",
	},
	["thb.muse.w24.offering.007"] = {
		"Un tauren mi ha detto che l'offerta migliore è un lavoro fatto bene e taciuto. A quel metro i conciatori di questa rupe sono la gente più devota che io abbia mai incontrato.",
		"'Non tutto ciò che si dà alla Madre Terra finisce in una ciotola,' mi ha detto un'anziana. 'Un solco dritto. Una risposta paziente. Un nodo fatto bene.' Poi ha rifatto il mio.",
	},
	["thb.muse.w24.offering.008"] = {
		"All'imbocco di un ponte pendono strisce nuove di pelle tinta, mi ha detto un Bluffwatcher: una per ogni guerriero che non è più risalito da Ashenvale.",
		"Quando arriva la notizia che qualcuno è caduto lontano, i tauren non gridano, mi ha spiegato un'anziana. Fanno silenzio, qualcuno cucina il piatto preferito di chi non c'è più, e tutti ne mangiano un poco.",
	},
	["thb.muse.w24.offering.009"] = {
		"sorprende un vitellino che si allunga per posare un sassolino liscio sulla sporgenza intagliata di un totem, mentre un adulto lì vicino studia il cielo con grande attenzione per non averlo visto.",
		"scorge una fila di sassolini minuscoli allineati alla base di un totem, esattamente all'altezza a cui arriva un vitellino.",
	},
	["thb.muse.w24.offering.010"] = {
		"Mi chiedevo chi mangi le offerte, dopo. Uno sciamano mi ha risposto: 'Gli uccelli, le formiche e la Madre Terra. Di solito in quest'ordine.'",
		"Dove vanno a finire tutte quelle piccole offerte? L'ho chiesto. 'Indietro,' ha detto una sciamana, e la risposta finiva lì.",
		"'Che fine fanno le offerte?' ho chiesto. Una sciamana ha indicato un corvo grasso e non ha aggiunto altro.",
	},
	["thb.muse.w24.offering.011"] = {
		"Le offerte dei tauren sono piccole e silenziose. I loa di casa mia le vogliono rumorose e sanguinose. Spiriti diversi, maniere diverse. Quassù bado alle mie.",
		"Un pizzico di grano, una tazza d'acqua, un cenno del capo. Gli spiriti dei tauren devono accontentarsi di poco, o essere molto pazienti. I loa la prenderebbero come un'offesa.",
	},
	["thb.muse.w24.offering.012"] = {
		"Per chiunque vegli su questo luogo: non è molto, ma è dato di cuore.",
		"Ecco. Non è niente di speciale. Prendilo per quello che vuol dire.",
		"Una piccola cosa, lasciata con gratitudine. È tutto ciò che ho, e tutto ciò che mi si chiede.",
	},
	["thb.muse.w24.offering.013"] = {
		"scavalca una treccia d'erba secca stesa di traverso sul sentiero davanti all'ingresso di una tenda, come fanno i tauren, badando a non toccarla.",
		"osserva un piccolo anello d'erba intrecciata appeso a un piolo accanto all'ingresso di una tenda, fresco e verde in mezzo a quelli sbiaditi che stanno sotto.",
	},
	["thb.muse.w24.offering.014"] = {
		"Credevo che le offerte fossero un pagamento, come certi popoli che contrattano con i loro spiriti. Uno sciamano mi ha corretto con gentilezza: 'Non paghi tua nonna per la cena. Le porti qualcosa perché vai a trovarla.'",
		"Quassù le offerte non sono contratti. Un'anziana me l'ha detto così: con la Madre Terra nessuno tiene i conti; semplicemente non si arriva mai a mani vuote.",
	},
	["thb.muse.w24.offering.015"] = {
		"guarda un vecchio tauren annodare una sola perlina a un cordino già carico, fissarla con gran cura e riappendere tutto al suo piolo senza una parola di spiegazione.",
		"nota un cordino di perline consumato dal tempo appeso all'ingresso di una tenda, ogni perlina di un colore diverso, e un tauren che sfiora la più nuova passando.",
	},
	["thb.muse.w24.pact.001"] = {
		"Poco fa un orco e un anziano tauren sono rimasti seduti insieme a lungo senza dire niente. Vecchi alleati, credo, degli anni dei centauri. Certi debiti non hanno bisogno di parole.",
		"Due vecchi soldati, uno con le zanne e uno con le corna, a dividersi una panca e un silenzio. I tauren dicono che gli orchi si sono guadagnati un posto qui prima ancora che questo posto esistesse.",
	},
	["thb.muse.w24.pact.002"] = {
		"guarda un cacciatore tauren stringere l'avambraccio di un orco alla maniera dell'Orda, e poi aggiungere un lento inchino delle corna, alla maniera dei tauren.",
		"si accorge di un grunt orco che arriva a un fuoco e riceve una ciotola prima che si dica una parola, come se il posto gli fosse stato tenuto da anni.",
		"nota da lontano un vecchio orco e un vecchio tauren salutarsi per nome dai due capi delle assi, forte e lenti, come due che si ripetono la stessa battuta.",
	},
	["thb.muse.w24.pact.003"] = {
		"Gli orchi arrivarono dal mare senza niente, si racconta, e i tauren diedero loro indicazioni, grano e un amico. Gli orchi ricambiarono con un esercito. Uno scambio onesto.",
		"Un popolo smarrito con le asce incontrò un popolo braccato con la pazienza. I tauren lo raccontano come un buon affare, e di rado si vantano di un affare.",
	},
	["thb.muse.w24.pact.004"] = {
		"Il nostro Capoguerra e il capo supremo si reggono a vicenda come due pali della stessa tenda. L'Orda vive sotto quella pelle.",
		"Qualunque cosa pensi di noi l'Alleanza, sui tauren non aveva fatto i conti. Thrall sì. La nostra Orda è più alta per questo, corna comprese.",
	},
	["thb.muse.w24.pact.005"] = {
		"I Reietti entrarono nell'Orda sulla parola del capo supremo, e certi tauren li guardano ancora come si guarda un ospite che non si è tolto gli stivali. Guardano, non respingono.",
		"Il vecchio capo parlò in favore dei morti davanti all'Orda, dicono i tauren, e non tutti i tauren erano d'accordo. Quel disaccordo lo custodiscono come custodiscono ogni cosa: in silenzio, e a lungo.",
	},
	["thb.muse.w24.pact.006"] = {
		"nota uno speziale Reietto e un'erborista tauren chini sullo stesso mazzo di radici, in disaccordo molto educato sul suo nome.",
		"sorprende un piccolo tauren a offrire con aria seria un fiore secco a un Reietto, e il Reietto ad accettarlo con un inchino così rigido che scricchiola.",
		"osserva in silenzio un orco e un Reietto aspettare fianco a fianco che un mercante tauren finisca di contare, rassegnati tutti e due allo stesso modo.",
	},
	["thb.muse.w24.pact.007"] = {
		"Nessuno obbligava i tauren a lasciarci salire, noi altri. Fermare un paio di ascensori sarebbe stato facile.",
		"Questo è il rifugio di qualcun altro, costruito dopo una lunga caccia. Che lo dividano con degli estranei dice più di qualsiasi trattato.",
	},
	["thb.muse.w24.pact.008"] = {
		"Ogni ascensore porta su qualcuno con una storia da un altro posto: Stonetalon, Ashenvale, i Barrens. I tauren accolgono ognuna allo stesso modo, sedendosi per ascoltarla come si deve.",
		"Le notizie arrivano in questa città tardi e piano, portate su per le rupi da viaggiatori stanchi. Quando arrivano sono state raccontate così tante volte che sembrano storia.",
		"Quassù la guerra è fatta soprattutto di voci: un nome da Ashenvale, una diceria dai Barrens, l'alzata di spalle di un cacciatore.",
	},
	["thb.muse.w24.pact.009"] = {
		"osserva un tauren arrivare dagli ascensori con un braccio fasciato di pelle pulita, e un anziano alzarsi senza una parola per fargli posto accanto al fuoco.",
		"segue con lo sguardo un guerriero stanco sedersi pesantemente tra i tauren, e i discorsi lì intorno passare subito a cose più leggere.",
	},
	["thb.muse.w24.pact.010"] = {
		"I guerrieri parlano solo di Ashenvale. Qualsiasi cosa succeda laggiù, è arrivata fino ai fuochi di quassù.",
		"Stonetalon, Ashenvale, i Barrens. Su questa rupe tranquilla della guerra si sente parlare più che al fronte.",
		"Quassù chiunque ha un cugino sul fronte di Ashenvale. O un amico. O un debito.",
	},
	["thb.muse.w24.pact.011"] = {
		"Orchi e tauren sanno entrambi cosa vuol dire non avere un posto: un popolo strappato al suo mondo, l'altro braccato attraverso il proprio. Forse è questo che si sono riconosciuti a vicenda.",
		"Gli orchi avevano perso un mondo e ai tauren non era mai stato concesso di tenerne uno. Due popoli senza casa, e chissà come, tra loro, una città.",
	},
	["thb.muse.w24.pact.012"] = {
		"Quando su questo continente non avevamo altro che la nostra fame, i tauren ci sono stati accanto. Nella loro città cammino piano. È il minimo che un orco possa fare.",
		"Ogni orco di Kalimdor deve a questa gente un debito che non finiremo mai di pagare. Qui abbasso la voce. Non lo chiederebbero mai, ed è per questo che lo faccio.",
	},
	["thb.muse.w24.pact.013"] = {
		"Un capo tauren ha parlato per noi quando nessun altro lo faceva. Non mi resta molto con cui essere {g:grato|grata}, ma scopro di avere questo.",
		"I vivi di questa città ci hanno fatto posto sulla parola di un vecchio toro. Non mi fido più facilmente di nessuno. Sto facendo un'eccezione, con calma.",
	},
	["thb.muse.w24.pact.014"] = {
		"Quando gli orchi la portarono a Kalimdor, Orda era il nome di una guerra. Quassù suona più come il nome di un pasto diviso con degli estranei.",
		"L'Orda vuol dire asce in Durotar e razzie ad Ashenvale. Su questa rupe, chissà perché, vuol dire soprattutto qualcuno che ti passa il pane.",
	},
	["thb.muse.w24.pact.015"] = {
		"Senza gli orchi i tauren camminerebbero ancora adesso. Senza i tauren gli orchi girerebbero a vuoto. Un buon affare per tutti e due.",
		"Gli orchi portano il chiasso, i tauren la pazienza e i Reietti le scartoffie. Chissà come, funziona.",
		"Un orco, un troll, un tauren e un Reietto attorno allo stesso fuoco. Da un'altra parte sarebbe l'inizio di una rissa.",
	},
	["thb.muse.w24.pact.016"] = {
		"I cacciatori che salgono da Stonetalon non ne parlano molto. Si siedono solo più vicini al fuoco del solito, e i tauren li lasciano fare.",
		"Chi è stato là dove l'Orda combatte torna quassù più silenzioso di quando era sceso. La città sembra fatta apposta per contenere quel genere di silenzio.",
	},
	["thb.muse.w24.pact.017"] = {
		"ascolta un giovane troll chiedere a un vecchio tauren come si incontrarono le tribù e gli orchi, e resta ad ascoltare, perché la risposta sarà chiaramente lunga.",
		"intravede un piccolo orco sedersi ai piedi di un anziano per sentire degli anni dei centauri, il mento tra le mani, la faccina verde aggrottata dall'attenzione.",
		"resta a guardare un anziano tauren tracciare col dito nella polvere le vecchie piste delle tribù per un Reietto, che le studia con grande serietà.",
	},
	["thb.muse.w24.pact.018"] = {
		"scorge un messaggero salire dagli ascensori e andare dritto da un Bluffwatcher, che ascolta senza muovere un muscolo.",
		"intravede un anziano tauren srotolare per un gruppo di guerrieri una mappa dei Barrens dipinta su pelle, gli accampamenti dei centauri segnati col nerofumo, quelli dell'Orda con l'ocra.",
		"nota che in un elenco dipinto sulla pelle di una tenda è stato aggiunto un nome fresco, e che i tauren che passano rallentano.",
	},
	["thb.muse.w24.pact.019"] = {
		"Reietti a Thunder Bluff. Chi l'avrebbe mai detto? Il capo supremo, a quanto pare.",
		"Morti che comprano erbe dai tauren. L'Orda è una cosa più strana e più gentile di quanto pensino i suoi nemici.",
	},
	["thb.muse.w24.pact.020"] = {
		"Notizie da Ashenvale? Quassù è così che ci si saluta.",
		"Le notizie dai Barrens salgono su per la rupe più lente di un tauren, e due volte più preoccupate.",
	},
	["thb.muse.w24.plank.001"] = {
		"Le assi dei ponti non hanno tutte la stessa età. Quelle nuove e chiare stanno fra quelle vecchie e grigie, e le riparazioni si leggono come toppe su un mantello.",
		"Attraversando conto le tavole: scura, scura, scura, poi una chiara con i segni freschi dell'attrezzo, poi di nuovo scura. Qualcuno è passato di qui da poco, ad aggiustare quella.",
		"Certe assi sono incavate al centro, dove da anni atterrano i piedi di tutti. Quelle nuove hanno ancora gli spigoli.",
	},
	["thb.muse.w24.plank.002"] = {
		"aspetta all'imbocco di un ponte mentre un tauren, in ginocchio a metà, fa leva per togliere un'asse spaccata e incastra quella nuova al suo posto.",
		"passa rasente a un buco nella passerella dove manca una sola tavola; quella nuova è già lì accanto, in attesa di essere montata.",
	},
	["thb.muse.w24.plank.003"] = {
		"In quell'asse c'è un buco da perderci uno stivale. Tenetevi stretti gli stivali, gente.",
		"Fra le tavole vedo il terreno. Preferirei che le tavole andassero più d'accordo.",
		"Attenzione, la terza asse dalla fine ha le sue idee.",
	},
	["thb.muse.w24.plank.004"] = {
		"Fra le assi del ponte ci sono sottili fessure luminose, e in ognuna la pianura, lontanissima. Ho smesso di guardare le fessure e ho cominciato a guardare le assi.",
		"Sotto i piedi la luce passa fra le tavole. È strano camminare su un pavimento che lascia entrare il cielo dal basso.",
	},
	["thb.muse.w24.plank.005"] = {
		"nota che le assi del ponte sono posate con un dito di gioco fra l'una e l'altra, così l'intera passerella può piegarsi come una schiena invece di spezzarsi.",
		"studia come le tavole del ponte sono infilate sulle corde, ognuna intagliata alle estremità e legata, libera di inclinarsi un poco per conto suo.",
	},
	["thb.muse.w24.plank.006"] = {
		"Il ponte ondeggia. Deve farlo, mi dicono: uno rigido si spezza, uno lasco sopravvive. Quassù mi dicono un sacco di cose consolanti.",
		"A quanto pare l'oscillazione è voluta. Costruttori che vogliono una passerella traballante sono o molto saggi o molto spiritosi, e quassù non so dire quale delle due.",
	},
	["thb.muse.w24.plank.007"] = {
		"Le assi sono spaccate, non segate: lo vedi dalla venatura che corre intera da un capo all'altro. Il legno spaccato tiene; quello segato si crepa dove la sega l'ha tagliato di traverso.",
		"Ogni tavola che guardo è stata spaccata dal tronco seguendo la fibra e lisciata col coltello, non con la sega. Più fatica, e si vede da quanto durano.",
	},
	["thb.muse.w24.plank.008"] = {
		"mette il piede su un'asse che risponde con uno schiocco secco, si blocca, e poi vede il tauren alle sue spalle passare sulla stessa asse senza degnarla di uno sguardo.",
		"sente una tavola lamentarsi forte sotto il piede e si ferma di colpo, mentre un tauren di passaggio dà una pacca alla corda, come a dire che fa sempre così.",
	},
	["thb.muse.w24.plank.009"] = {
		"Su una delle assi vecchie qualcuno ha inciso un piccolo segno, un cerchio attraversato da una riga, consumato quasi liscio. La firma di un costruttore, forse. O di qualcuno che voleva che il legno se ne ricordasse.",
		"Vicino alle estremità alcune tavole hanno segni graffiati: piccoli simboli, una tacca, la forma di uno zoccolo. Non so cosa vogliano dire, e sospetto che non lo sappiano nemmeno le tavole.",
	},
	["thb.muse.w24.plank.010"] = {
		"Qui su Spirit Rise le passerelle vicino alle tende sono fatte di tavole strofinate fino a schiarirle, come se qualcuno le spazzasse e lavasse più spesso che altrove in città.",
		"Su Spirit Rise le assi vicino alle tende sono strofinate quasi bianche. Qualcuno, qui, prende il pavimento sul serio quanto i canti.",
	},
	["thb.muse.w24.plank.011"] = {
		"Chiunque abbia aggiustato quest'asse, grazie. Te lo direi di persona, ma dovrei smettere di camminare.",
		"Tavola nuova. Si sente ancora l'odore della resina. Ci passerò sopra con garbo.",
		"Bella asse, solida. Le stringerei la mano, se ne avesse una.",
	},
	["thb.muse.w24.plank.012"] = {
		"Con la pioggia le assi vecchie diventano scure e viscide, quelle nuove restano chiare ancora per un po', e il ponte si fa a strisce come le pareti.",
		"Tavole bagnate sotto i piedi, e sento quali sono vecchie: cedono appena, morbide come muschio, mentre le nuove restano dure e rumorose.",
	},
	["thb.muse.w24.plank.013"] = {
		"Quell'asse qualcuno l'ha portata attraverso tre alture per montarla qui. Ormai non se ne accorgerà nessuno. Sembra proprio questo il senso di una buona riparazione.",
		"Nessuno ringrazia chi ha cambiato una tavola. Semplicemente, non ci si sfonda il piede. È un dono silenzioso.",
	},
	["thb.muse.w24.plank.014"] = {
		"guarda una piattaforma vuota dell'ascensore risalire la parete, le assi spesse che si flettono appena al centro mentre si assesta in cima.",
		"osserva il pavimento dell'ascensore, fatto di assi spesse legate a un telaio con cuoio crudo, le legature scure e lucidate da innumerevoli stivali e zoccoli.",
	},
	["thb.muse.w24.plank.015"] = {
		"Assi, corde, pali, pioli. I tauren hanno costruito una capitale con quello che un falegname tiene in un capanno, più un gran coraggio.",
		"Una città di legno e corda in cima a una rupe. Altrove sarebbe una scommessa. Qui è semplicemente com'è fatta la strada.",
	},
	["thb.muse.w24.plank.016"] = {
		"Stivali orchi, piedi troll, ossa di Reietti, zoccoli tauren: le stesse assi ci portano tutti. Qualcuno quassù le tiene in sesto per un'Orda intera che di rado ringrazia.",
		"I nostri alleati riparano le passerelle per ognuno di noi che passa, orco, troll o morto. È un'ospitalità su cui si cammina.",
	},
	["thb.muse.w24.plank.017"] = {
		"Quest'asse balla. No, aspetta. Ballano tutte un po'. È il progetto.",
		"Deve rimbalzare così? Non rispondete. Ho deciso di sì.",
		"Ogni asse qui scricchiola con una voce diversa. Credo che questa mi abbia appena insultato.",
	},
	["thb.muse.w24.plank.018"] = {
		"Le assi più vecchie sono diventate argentee e dure come osso. Il legno che passa tanti anni all'aperto smette di essere legno e diventa qualcosa di più vicino alla pietra.",
		"Quassù le tavole vecchie prendono il colore della cenere e la durezza del corno. Viene da pensare che la rupe stia piano piano ritrasformando i suoi passaggi in roccia.",
	},
	["thb.muse.w24.pole.001"] = {
		"I pali delle case sono quasi tutti della stessa lunghezza, e dritti come aste di lancia. Qualcuno ha camminato a lungo per trovare alberi che crescono così.",
		"Pali dritti, tutti, scortecciati per bene e unti di grasso. Chi li ha scelti era più esigente col legname di quanto molti lo siano con gli amici.",
		"Ogni palo porta i segni della mano che l'ha sagomato: lunghi colpi piatti di coltello per tutta la lunghezza, mai due volte uguali.",
	},
	["thb.muse.w24.pole.002"] = {
		"alza lo sguardo verso la cima di una tenda, dove i pali si incrociano, con le punte annerite da anni di fumo salito in mezzo a loro.",
		"piega indietro la testa per vedere dove si uniscono, in alto, i pali di una tenda, legati a fascio e macchiati di scuro dal fumo che sfugge dall'apertura.",
		"nota che i pali di ogni tenda convergono verso lo stesso punto e lì si bloccano, così più il telaio viene spinto, più stringe.",
	},
	["thb.muse.w24.pole.003"] = {
		"I pali delle tende non poggiano sulla roccia: ci stanno dentro. Ogni piede è infilato in un incavo scavato nella pietra, così il vento può spingere quanto vuole.",
		"Guarda il piede di un palo qualsiasi e lo troverai alloggiato in una buca poco profonda scalpellata nella roccia. La città non è piantata sulla rupe: ci è incastrata.",
		"Dove la roccia è troppo dura da scavare, i pali stanno invece dentro anelli di pietre ammucchiate, ben strette e sigillate col fango.",
	},
	["thb.muse.w24.pole.004"] = {
		"guarda tre tauren alzare un palo nuovo: due lo portano in verticale passandoselo di mano in mano, il terzo ne tiene fermo il piede con uno zoccolo.",
		"si tira indietro mentre un lungo palo si raddrizza fra due tauren e cade nel suo incavo con un colpo sordo.",
		"vede un tauren appoggiare tutta la spalla contro un palo nuovo per assestarlo, poi fare un passo indietro e studiarlo a lungo, con la testa inclinata.",
	},
	["thb.muse.w24.pole.005"] = {
		"Una casa, qui, è un cono di pali con sopra una pelle. Detto così sembra fragile. Poi provi a spingerla, e lei spinge te.",
		"Ho appoggiato la schiena al fianco di una tenda aspettandomi che cedesse. Non ha ceduto. Ho conosciuto mura di castello meno sicure di sé.",
		"«Solo una tenda», diresti. Poi guardi il telaio sotto la pelle, palo legato a palo, e somiglia piuttosto alle costole di una nave.",
	},
	["thb.muse.w24.pole.006"] = {
		"Ogni tenda grande è trattenuta da una gonna di corde tese verso i paletti, e i paletti sono piantati nelle crepe della roccia, rincalzati con schegge di pietra. Quassù niente è solo appoggiato.",
		"Le cime partono da ogni tenda come le zampe di un ragno, e ognuna finisce a un piolo battuto in una vena della pietra.",
		"Ho contato le corde che tengono giù una tenda grande e ho smesso a venti. Niente, su questo pianoro, si affida alla fortuna.",
	},
	["thb.muse.w24.pole.007"] = {
		"Occhio al piolo. Occhio all'altro piolo. Questa città è fatta soprattutto di pioli.",
		"Da quando ho lasciato l'ascensore ho sbattuto il piede contro tre paletti. Piantati benissimo, questo glielo concedo.",
		"Pioli. Ovunque. Se un giorno la città volasse via, non sarà per mancanza di pioli.",
	},
	["thb.muse.w24.pole.008"] = {
		"Un palo accanto al sentiero è stato rattoppato: la spaccatura stretta da tre collari di cuoio crudo, il legno vecchio che spunta chiaro fra l'uno e l'altro. Non sostituito. Riparato, e di nuovo degno di fiducia.",
		"Un palo incrinato è stato riparato invece che buttato, con una corta stecca di legno e una legatura attorno a tutto. Quassù le cose si meritano una seconda occasione.",
		"Metà dei pali di questa città sono stati riparati almeno una volta, e le riparazioni ne sono la parte più ordinata.",
	},
	["thb.muse.w24.pole.009"] = {
		"passa una mano lungo un vecchio palo qui su Hunter Rise, segnato da tacche incise in file irregolari: il conto di qualcosa che il legno non dice.",
		"indugia accanto a un palo consumato su Hunter Rise, il legno spaccato e argentato, che regge ancora il suo angolo di tenda senza lamentarsi.",
	},
	["thb.muse.w24.pole.010"] = {
		"Di notte i pali della città scricchiolano e si assestano raffreddandosi, un suono secco da ogni tenda insieme, come tante vecchie giunture.",
		"Al buio si sente il legno delle tende restituire il calore del giorno, piccoli schiocchi e ticchettii su tutta l'altura.",
	},
	["thb.muse.w24.pole.011"] = {
		"Le tende voltano tutte le spalle dalla stessa parte: il lato basso verso il ciglio, la porta lontano. I tauren discutono col vento da molto tempo, e hanno imparato dove spinge.",
		"Su questa altura non ho trovato una sola porta che guardi il vuoto. Le tende stanno come una mandria con la groppa verso il ciglio e le teste vicine.",
		"Le tende tonde non offrono alle raffiche niente di piatto contro cui spingere. Una forma assennata, a pensarci, e i tauren ci hanno pensato molto tempo fa.",
	},
	["thb.muse.w24.pole.012"] = {
		"Noi scegliamo un palo da tenda come altri scelgono un'arma: dal peso, dalla venatura, dal suono che fa quando lo bussi con una nocca.",
		"Un buon palo canta, se lo colpisci; uno cattivo fa un tonfo. Gli anziani amano dire che ogni piccolo tauren lo impara prima di imparare a contrattare.",
	},
	["thb.muse.w24.pole.013"] = {
		"si abbassa sotto una cima, ne scavalca un'altra e si abbassa di nuovo, come se attraversare l'altura fosse una danza con troppi compagni.",
		"si fa strada in un groviglio di corde e paletti, chinandosi e scavalcando come chi attraversa una fila di trappole.",
		"inciampa in una cima, si aggrappa a un'altra e resta immobile, mentre la tenda più vicina freme di disapprovazione.",
	},
	["thb.muse.w24.pole.014"] = {
		"La pelle di una tenda è allacciata al telaio, non legata in un punto solo ma cucita lungo tutta la giuntura con un laccio, così uno strappo in un punto resta uno strappo in quel punto.",
		"Lacci lungo la giuntura di ogni tenda, la striscia di cuoio che passa nei fori, una piccola croce ogni palmo. Lavoro paziente, e l'intera città lo porta addosso.",
		"Dove due pelli si incontrano su una tenda si sovrappongono per un palmo intero e sono allacciate insieme, così nessuna cucitura resta sola dalla parte esposta.",
	},
	["thb.muse.w24.pole.015"] = {
		"Quel palo è più vecchio di metà della gente che gli passa accanto, e più dritto della maggior parte.",
		"Ogni palo, qui, è stato unto di grasso finché non luccica. In certi ti ci puoi specchiare.",
		"Qualcuno ha legato una piuma in cima a quel palo. Decorazione, o un modo per capire da dove soffiano le raffiche. Probabilmente tutte e due.",
	},
	["thb.muse.w24.pole.016"] = {
		"Una tenda è vuota, i pali nudi, la pelle tolta e piegata ai loro piedi. Nessuno ha spostato i pali. Non ho chiesto perché; non mi sembrava una domanda mia.",
		"Fra le tende c'è un telaio di pali senza pelle, lo scheletro di una casa. I tauren ci girano attorno con cura, come si fa intorno a qualcuno che dorme.",
		"Fra due tende c'è un palo solo, senza niente sopra, liscio di usura, troppo corto per un telaio. Non ho idea di a cosa serva, e nessuno si è offerto di dirmelo.",
	},
	["thb.muse.w24.pole.017"] = {
		"Nella nebbia le tende lontane spariscono e restano solo le punte dei pali, una manciata di croci scure nel bianco.",
		"Nebbia tutt'intorno, e la tenda più vicina è un cono grigio con i pali che spuntano in cima, incrociati come dita.",
		"La nebbia si raccoglie in gocce su ogni cima, e le corde gocciolano fitte sulla pietra, come se ogni tenda avesse il suo piccolo acquazzone.",
	},
	["thb.muse.w24.pole.018"] = {
		"I pioli qui sono grossi come il mio avambraccio, e il maglio appoggiato accanto a stento lo sollevo. I tauren non piantano un paletto: gli dicono dove andare.",
		"Un tauren ha piantato un paletto in una crepa con tre colpi di un maglio che io non avrei saputo alzare nemmeno una volta. Il paletto sembrava sollevato che fosse finita.",
		"Sollevare uno dei loro pioli da tenda è un esercizio. Piantarlo, a quanto pare, è una chiacchierata fra amici.",
	},
	["thb.muse.w24.quip.001"] = {
		"Chiedi la strada a un tauren e ti dà la strada, la storia della strada e una pausa abbastanza lunga da percorrerla.",
		"Ho smesso di chiedere indicazioni. Ogni risposta comincia con oltre la passerella e finisce con un silenzio lunghissimo.",
	},
	["thb.muse.w24.quip.002"] = {
		"In questa città nessuno è mai in ritardo. E nessuno è mai puntuale. Il tempo, qui, semplicemente non è tra gli invitati.",
		"Ho detto a un tauren che avevo fretta. Ha annuito piano e mi ha chiesto che effetto fa.",
	},
	["thb.muse.w24.quip.003"] = {
		"Orgrimmar ha le mura. Thunder Bluff ha un salto lunghissimo di sotto. Funzionano tutte e due.",
		"Undercity ti tiene dentro. Thunder Bluff ti tiene su. Non so quale sia peggio per le ginocchia.",
	},
	["thb.muse.w24.quip.004"] = {
		"Mi hanno fatto inchini, cenni, e dato da mangiare due volte, e non ho fatto niente di utile. Potrei non andarmene mai.",
		"Sulla strada per la banca mi hanno sfamato, salutato e offerto da sedere tre volte. Qui l'ospitalità è un pericolo.",
	},
	["thb.muse.w24.quip.005"] = {
		"Se resto immobile abbastanza a lungo, quassù, qualcuno mi stende sopra una coperta e mi chiama arredamento.",
		"Troppo tempo nello stesso punto, e un tauren mi ha appeso addosso un mazzo d'erbe a seccare.",
	},
	["thb.muse.w24.quip.006"] = {
		"Certi orchi dicono che questo posto è molle. Vorrei sentirglielo dire a metà di una passerella quando si abbassa.",
		"C'è chi dice che i tauren sono lenti. Quella gente non ha mai provato a vincere una discussione con uno di loro.",
	},
	["thb.muse.w24.quip.007"] = {
		"Ho imparato due parole di taur-ahe. Mi dicono che una è un saluto e l'altra una specie di formaggio.",
		"Da un tauren ho imparato una parola di saluto. La sto usando in tutta la città, e i sorrisi si fanno sospettosamente larghi.",
	},
	["thb.muse.w24.quip.008"] = {
		"Mi sono {g:seduto|seduta} su quella che sembrava una pelle arrotolata. La pelle si è alzata, si è scusata e se n'è andata.",
		"Per riposare mi appoggio a un palo, e il palo mi augura ogni bene. I tauren, quando ascoltano, stanno immobili davvero.",
	},
	["thb.muse.w24.quip.009"] = {
		"Avere fretta a Thunder Bluff è come urlare in biblioteca. Nessuno ti ferma. Ti guardano e basta.",
		"Ho attraversato l'altura centrale di buon passo e tre tauren mi hanno chiesto se qualcosa non andasse. In effetti sì: camminavo di buon passo.",
	},
	["thb.muse.w24.quip.010"] = {
		"Un troll ha scommesso che non avrei attraversato senza tenermi alla fune. Aveva ragione, e adesso il mio pranzo è suo.",
		"Mai scommettere con un troll su qualcosa che riguardi l'equilibrio. L'ho imparato a caro prezzo.",
	},
	["thb.muse.w24.quip.011"] = {
		"Thunder Bluff: dove il pavimento è facoltativo e la zuppa no.",
		"La città della pazienza. Porto pazienza da quasi un'ora. È sfiancante.",
	},
	["thb.muse.w24.quip.012"] = {
		"Ho lasciato una mancia a chi tiene la locanda. Mi è tornata indietro insieme a una ciotola di qualcosa. Credo di aver perso lo scambio.",
		"Ho provato a pagare troppo a una bancarella. Mi hanno contato il resto e ci hanno aggiunto una mela secca. Qui non si vince.",
	},
	["thb.muse.w24.quip.013"] = {
		"Un tauren sull'ascensore mi ha chiesto come stavo. Ho risposto: in salita. Ne è venuta fuori la risata più lunga e lenta che abbia mai strappato a qualcuno.",
		"Racconto la stessa battuta a ogni giro d'ascensore. I tauren ridono ogni volta, piano, come se fosse nuova. Sospetto la compassione.",
	},
	["thb.muse.w24.quip.014"] = {
		"Bello vedere tutta l'Orda in un posto solo e nessuno che grida. Thrall dovrebbe tenere qui i suoi consigli.",
		"Orco, troll, Reietto, tauren, tutti sulla stessa passerella. L'Orda è una strana compagnia, e questo è il suo angolo più tranquillo.",
	},
	["thb.muse.w24.quip.015"] = {
		"Mi sorprendo ad annuire piano prima di rispondere. Thunder Bluff mi sta entrando dentro.",
		"Ho risposto a una domanda con un lungo silenzio e un cenno. Il tauren sembrava colpito. Io avevo solo dimenticato la domanda.",
	},
	["thb.muse.w24.quip.016"] = {
		"Ho lo zaino pieno di regali mai chiesti: una radice secca, una perlina, mezza focaccia. E dire che quassù dovevo vendere.",
		"Ogni bancarella dove mi fermo mi congeda con qualcosa in più. Di questo passo me ne andrò più {g:ricco|ricca} di cianfrusaglie che di monete.",
	},
	["thb.muse.w24.quip.017"] = {
		"Un tauren mi ha chiesto di reggere un cesto per un momento. È stato un po' di tempo fa. Lo reggo ancora. Credo di abitare qui, ormai.",
		"Ho accettato di badare a una bancarella per un momento, mentre chi la tiene andava a prendere qualcosa. Il momento si allunga, e ho già venduto due coperte.",
	},
	["thb.muse.w24.quip.018"] = {
		"La capitale più silenziosa dell'Orda. Continuo a parlare per riempirla, e poi a scusarmi.",
		"Potrei abituarmi a una città dove il rumore più forte è un cucchiaio contro una pentola.",
	},
	["thb.muse.w24.quip.019"] = {
		"Ho chiesto a un tauren che ore fossero. Ha guardato a lungo la pianura e ha risposto: più tardi di prima.",
		"Ho chiesto quanto distasse la locanda. Non lontano, ha detto il tauren. Tre passerelle dopo ho capito che i tauren misurano le distanze in pazienza.",
	},
	["thb.muse.w24.respite.001"] = {
		"si appisola con la schiena contro il palo di una tenda e al risveglio si trova sotto la testa una coperta piegata, lasciata lì da qualcuno che se n'è già andato.",
		"si addormenta su un mucchio di pelli al margine dell'altura e si risveglia con una coperta intrecciata sulle ginocchia, senza sapere chi ce l'abbia messa.",
	},
	["thb.muse.w24.respite.002"] = {
		"Per una volta nessuno ha bisogno di me. Siedo su un tronco, guardo la gente portare pesi, e lascio che il peso sia loro.",
		"Resto qui così a lungo senza far nulla che i miei pensieri hanno smesso di litigare tra loro.",
	},
	["thb.muse.w24.respite.003"] = {
		"svuota tutto lo zaino su una pelle e lo rifà con gran cura, il più pesante in fondo, cosa che richiede quasi un'ora e non serve a niente.",
		"siede a gambe incrociate su una pelle a dividere il contenuto dello zaino in mucchietti ordinati, e un tauren di passaggio si ferma a guardare con approvazione, come davanti a un mestiere.",
	},
	["thb.muse.w24.respite.004"] = {
		"Quassù dovevo far riposare i piedi. I piedi hanno girato ogni altura due volte cercando il posto giusto per riposare.",
		"Trovare dove sedersi in questa città è facile. Scegliere, con tutti questi panorami, è un'impresa lunga.",
	},
	["thb.muse.w24.respite.005"] = {
		"Non dormo. Riposo gli occhi alla maniera dei tauren, cioè con calma.",
		"Altri cinque minuti su questa pelle. Poi sarò utile. Forse.",
	},
	["thb.muse.w24.respite.006"] = {
		"si toglie uno stivale, ne fa uscire un sassolino, lo esamina a lungo e lo posa a terra con qualcosa di simile al rispetto.",
		"si sfila gli stivali e si massaggia i piedi in piena vista, cosa che sull'altura nessuno sembra trovare minimamente strana.",
	},
	["thb.muse.w24.respite.007"] = {
		"Sulla panca accanto a me un vecchio tauren rammenda un calzino grande quanto il mio zaino. Non una parola, né da una parte né dall'altra. Ottima compagnia lo stesso.",
		"Ho diviso una panca con un tauren a lungo, senza che nessuno dei due parlasse. Andandosene, mi ha fatto un cenno. Credo fosse un'amicizia intera.",
	},
	["thb.muse.w24.respite.008"] = {
		"Aspetto che spiova sotto il lembo di una tenda, con due sconosciuti e un lupo bagnato che sarà di qualche cacciatore. A nessuno importa. Smetterà quando smetterà.",
		"Piove, e io sto sotto una tettoia di pelle, senza stivali, a guardare le gocce cadere dal bordo in fila lenta.",
	},
	["thb.muse.w24.respite.009"] = {
		"Bel posto, questo. Dà fastidio a qualcuno se mi siedo qui a non far niente per un po'?",
		"C'è posto anche per me su questo tronco? Prometto di essere una compagnia noiosissima.",
	},
	["thb.muse.w24.respite.010"] = {
		"I tauren trattano il mio marciume come tratterebbero una zoppia: lo notano, non lo nominano.",
		"A Undercity nessuno mi guarda due volte. Qui mi guardano una volta, con gentilezza, e poi basta. Lo preferisco.",
	},
	["thb.muse.w24.respite.011"] = {
		"Quasi ovunque, se ti fermi troppo a lungo, una guardia ti chiede cosa vuoi. Qui un Bluffwatcher mi passa accanto due volte, e la seconda fa un cenno, come se avessi superato una prova.",
		"Quassù nessuno mi manda via. Resto nello stesso punto il tempo di vedere due volte il giro intero di un Bluffwatcher, e ne ricavo soltanto un cenno.",
	},
	["thb.muse.w24.respite.012"] = {
		"si sdraia su una pelle stesa sulla roccia dell'altura centrale, un braccio dietro la testa, e conta le stelle finché il conto si sfalda.",
		"si sistema su una coperta piegata all'aperto mentre i fuochi si abbassano, a guardare le stelle senza pensare a niente in particolare.",
	},
	["thb.muse.w24.respite.013"] = {
		"Mi sono {g:lavato|lavata} la faccia in un catino lasciato lì da un tauren. Poi ho saputo che serviva per una pelle a bagno. La mia faccia non è mai stata così morbida.",
		"Ho preso in prestito un catino d'acqua per lavarmi. Era di qualcuno che ci teneva le pelli a bagno. Odoro vagamente di conceria e di grande imbarazzo.",
	},
	["thb.muse.w24.respite.014"] = {
		"Sedersi, cucire, sedersi ancora. Il lavoro migliore che faccio da tempo.",
		"Non fate caso a me. Sto solo riattaccando un bottone, e ne vado {g:fierissimo|fierissima}.",
	},
	["thb.muse.w24.respite.015"] = {
		"siede su un cesto rovesciato vicino alla banca e guarda il viavai: un orco con un sacco, un troll con un ghigno, un Reietto con un suo registro.",
		"riposa su una cassa vicino alla casa d'aste, seguendo il viavai dell'Orda come fosse un fiume lento.",
	},
	["thb.muse.w24.respite.016"] = {
		"Mi siedo su Elder Rise per riposare un momento, e un anziano lì vicino annuisce, come se riposare fosse la risposta giusta a qualcosa.",
		"Qui su Elder Rise ho trovato una panca che non ha altro da fare che guardare le altre alture. Per un po' lascio che lo faccia per me.",
	},
	["thb.muse.w24.respite.017"] = {
		"Su Spirit Rise un istruttore reietto e uno sciamano tauren si dividono un po' d'ombra e dissentono su qualcosa con enorme cortesia. Aspetto il mio turno e me la godo.",
		"Vengo su Spirit Rise per una lezione e trovo l'insegnante reietto immerso in una lunga, cortese disputa con uno sciamano. Aspetto volentieri: è meglio della lezione.",
	},
	["thb.muse.w24.respite.018"] = {
		"Sto qui a guardare i tauren lavorare. Qualcuno dovrà pur sorvegliare.",
		"Sto riposando. Da cosa, non saprei dirlo, ma ci tengo moltissimo.",
	},
	["thb.muse.w24.respite.019"] = {
		"Qualcuno mi ha prestato una coperta su cui sedermi. Pesa più o meno quanto me, ed è la cosa più comoda che tocco da settimane.",
		"Le coperte qui sono così spesse che ci si dorme sulla pietra nuda senza accorgersene.",
		"Tre persone diverse mi hanno dato una coperta su cui sedermi. Adesso siedo su tutte e tre, come un capotribù molto piccolo.",
	},
	["thb.muse.w24.respite.020"] = {
		"riposa su una panca qui su Hunter Rise, dove ha scelto di riposare anche il gatto di un cacciatore, e i due si studiano con educato sospetto.",
		"si siede su Hunter Rise per riposare, e un cinghiale addomesticato arriva subito a fiutare tutti e due gli stivali, li giudica di nessun interesse e se ne va.",
	},
	["thb.muse.w24.respite.021"] = {
		"siede con una coperta sulle spalle accanto a una tenda mentre la nebbia inghiotte le alture, la tenda vicina ridotta a una sagoma morbida, e non sembra avere nessuna fretta.",
		"aspetta che la nebbia passi su una panca, le mani attorno a una tazza, ascoltando la città che continua a parlare senza farsi vedere.",
	},
	["thb.muse.w24.spiritward.001"] = {
		"Una giovane sciamana, qui su Spirit Rise, tiene le mani sopra un focolare spento da quando ho cominciato a guardarla. Il maestro le siede accanto masticando una radice, senza alcuna fretta che il fuoco si decida.",
		"Su questa altura gli apprendisti imparano prima di tutto ad aspettare. Uno sta chiedendo il permesso a un mucchio di legnetti da quando sono qui, e i legnetti ci stanno ancora riflettendo.",
		"La pazienza è la prima lezione degli sciamani, a quanto capisco. L'allievo più vicino a me è lì da così tanto che uno scarabeo gli è salito sul ginocchio e ne è ridisceso.",
	},
	["thb.muse.w24.spiritward.002"] = {
		"osserva uno sciamano raccogliere l'acqua di un otre nel cavo delle mani e mormorarle qualcosa prima di bere, come si ringrazia un amico che ha fatto molta strada.",
		"vede una vecchia sciamana versare un goccio d'acqua sulle assi prima di bere il resto, senza nemmeno guardare in basso.",
		"resta in disparte mentre uno sciamano alza un otre, pronuncia una parola sommessa nell'imboccatura e solo allora beve.",
	},
	["thb.muse.w24.spiritward.003"] = {
		"Uno sciamano ha appena rimproverato un focolare per aver sputato una brace su una coperta. Senza rabbia: come si parla a un cane che sa di aver sbagliato. Il fuoco, va detto, da allora si comporta bene.",
		"Ho visto un fuoco lanciare una scintilla sulla manica di una sciamana. Lei gli ha detto, con fermezza, che gli ospiti non si comportano così. Da allora arde in perfetto silenzio.",
		"Quassù ai fuochi si parla come a nipoti indisciplinati. Sembrano prenderla meglio dei nipoti.",
	},
	["thb.muse.w24.spiritward.004"] = {
		"Un totem non è la statua di uno spirito, mi hanno insegnato gli sciamani. È una domanda intagliata nel legno e lasciata in piedi, perché la richiesta continui anche quando l'intagliatore è tornato a casa.",
		"Per gli sciamani un totem custodisce una richiesta come una ciotola custodisce l'acqua: la tiene lì, con pazienza, molto dopo che la mano che l'ha riempita si è ritirata.",
		"Ogni totem della rupe sta chiedendo qualcosa, mi dicono. Questo spiega le facce. Nessuno ha un'aria così paziente se non aspetta una risposta.",
	},
	["thb.muse.w24.spiritward.005"] = {
		"Delle colline dove scavano i goblin, gli sciamani parlano come di una ferita che non si chiude. Una di loro ha premuto il palmo sulla roccia e ha detto che la sentiva fin da questa distanza.",
		"Chiedi a uno sciamano della Venture Company e non trovi rabbia: solo un lungo sguardo verso le colline e quattro parole, 'là la terra soffre'. In qualche modo è peggio.",
		"Ogni sciamano della rupe sembra sapere quali colline stiano tagliando i goblin, senza esserci mai andato vicino. Trasaliscono negli stessi momenti, mi ha detto qualcuno.",
	},
	["thb.muse.w24.spiritward.006"] = {
		"osserva uno sciamano scuotere una zucca secca vicino all'orecchio, aggrottare la fronte, scuoterla di nuovo e posarla come se avesse dato una risposta scadente.",
		"ascolta il fruscio secco dei semi nella zucca di una sciamana, lento e irregolare, finché lei si ferma e annuisce una volta a ciò che le è stato detto.",
	},
	["thb.muse.w24.spiritward.007"] = {
		"Posso chiedere cosa ti ha detto il fuoco? O è come leggere la posta di qualcun altro?",
		"Non voglio disturbare. Mi chiedevo solo se la pietra dice mai di no.",
	},
	["thb.muse.w24.spiritward.008"] = {
		"Uno sciamano orco e uno sciamano tauren siedono insieme sull'orlo dell'altura e si confrontano su ciò che gli elementi hanno detto a ciascuno. È quasi tutto silenzio, con una parola ogni tanto, e a entrambi sembra una conversazione vivace.",
		"Ho visto uno sciamano orco venuto da Orgrimmar sedersi accanto a un anziano tauren della stessa vocazione. Nessuno dei due ha parlato tanto a lungo che li credevo offesi. Poi hanno riso nello stesso istante.",
		"Dagli sciamani tauren, mi dicono, gli orchi vengono ad ascoltare come i fabbri visitano una forgia famosa. Ripartono con meno parole e più pazienza.",
	},
	["thb.muse.w24.spiritward.009"] = {
		"Una sciamana si è appoggiata a un palo della tenda, si è raddrizzata, ha posato la mano sul legno e ha detto al proprietario che il palo era stanco. Lo stanno sostituendo. Lo trovavo strano solo io.",
		"Su questa rupe, mi dicono, anche il legname ha il suo carattere. Uno sciamano ha ascoltato a lungo un palo che scricchiolava e ha consigliato di ringraziarlo e metterlo a riposo.",
		"Il legno si ricorda dell'albero, ha detto una sciamana, accostando l'orecchio a un palo della tenda. Questo, ha deciso, se ne ricordava con affetto.",
	},
	["thb.muse.w24.spiritward.010"] = {
		"Con garbo, gli sciamani chiedono agli elementi e ricevono risposta. Io ho chiesto gentilmente al cielo di comportarsi bene più di una volta, e non mi ha mai risposto.",
		"Fuoco, acqua, terra e aria: gli sciamani parlano con tutti. Io a stento cavo una parola da un fuoco da campo testardo, e di solito è una parolaccia.",
	},
	["thb.muse.w24.spiritward.011"] = {
		"si ferma accanto a uno sciamano proprio sul ciglio dell'altura, a braccia aperte verso l'aria, così immobile che un falco gli passa a un braccio di distanza senza badargli.",
		"resta a rispettosa distanza da una sciamana in piedi sull'orlo del pianoro, a occhi chiusi e con i palmi rivolti al cielo aperto, in ascolto di qualcosa sotto i rumori della città.",
		"gira al largo da uno sciamano sul bordo del precipizio, che sta di fronte all'aria vuota come un ospite davanti a una porta, in attesa che gli aprano.",
	},
	["thb.muse.w24.spiritward.012"] = {
		"'L'acqua non è mia,' mi ha detto uno sciamano mentre riempiva una giara. 'Viene a trovarmi, e io tengo la giara pulita perché abbia voglia di tornare.' Non avevo mai pensato a una giara come a una stanza per gli ospiti.",
		"Per uno sciamano tauren, chiamare gli elementi somiglia meno a dare ordini e più a invitare un vecchio amico che potrebbe avere da fare.",
		"Fuoco, acqua, terra e aria, per uno sciamano, sono vicini di casa: chi è di cattivo umore, chi va trovato, a chi si devono delle scuse.",
	},
	["thb.muse.w24.spiritward.013"] = {
		"Non so cosa custodisci lassù, totem, ma lo custodisci benissimo.",
		"Bravo totem. Saldo totem. Qualunque cosa tu tenga, tienila stretta.",
	},
	["thb.muse.w24.spiritward.014"] = {
		"Quando gli sciamani parlano con la terra, io sento solo i rumori di sempre dell'altura. Eppure abbasso la testa. La terra che ha generato la mia gente merita almeno questo da chi non sa sentirla.",
		"Non ho alcun dono per gli elementi. Ma ogni tauren può ringraziare il suolo che ha sotto gli zoccoli, e quassù il suolo se l'è guadagnato mille volte.",
	},
	["thb.muse.w24.spiritward.015"] = {
		"nota un sacerdote dei Reietti e uno sciamano tauren incrociarsi sulle assi, scambiandosi un piccolo cenno prudente, come due cuochi di cucine rivali.",
		"vede un Reietto in vesti scure fermarsi a guardare una sciamana che alimenta un fuoco, poi proseguire senza una parola, la testa appena chinata.",
		"nota come i Reietti sui ponti girino al largo dai fuochi degli sciamani, educati, come ospiti incerti sul cane di casa.",
	},
	["thb.muse.w24.spiritward.016"] = {
		"Gli sciamani dicono che l'aria attorno alle alture è il posto più affollato di Mulgore, pieno di spiriti che vanno e vengono come mercanti su una strada. A me sembra solo vento. Forse una folla di spiriti, per chi non sente, è proprio questo.",
		"A sentire gli sciamani, il cielo aperto sopra questi pianori è gremito. Io vedo soltanto falchi e il vento che tira il lembo di una tenda. Loro vedono un mercato.",
	},
	["thb.muse.w24.spiritward.017"] = {
		"Un giovane guerriero tocca lo stesso totem ogni volta che ci passa davanti, in basso, dove la vernice non c'è più. Una promessa, mi ha detto un Bluffwatcher, e di che genere sono affari suoi.",
		"Un Bluffwatcher mi ha raccontato che i ragazzi scelgono ciascuno un totem a cui affidare le loro promesse, e non dicono mai quale. Ne ho sorpresi tre toccare con aria colpevole lo stesso.",
	},
	["thb.muse.w24.spiritward.018"] = {
		"Quando parlerai con l'acqua, ringraziala anche da parte mia. Ne ho bevuta tanta senza mai dire una parola.",
		"Se parli con la terra, mettici una buona parola per le mie ginocchia. Ne hanno salita parecchia.",
		"Di' al fuoco che lo ringrazio. Mi ha scaldato senza chiedere niente, che è più di quanto abbia fatto l'oste.",
	},
	["thb.muse.w24.spiritward.019"] = {
		"si inginocchia a guardare uno sciamano che, qui su Spirit Rise, sistema un piccolo totem di pietra in una buca di terra, pressa il terriccio attorno con entrambi i palmi e gli canticchia qualcosa finché il motivo si spegne da solo.",
		"si sofferma dove una sciamana sta interrando un tozzo totem di pietra in un fazzoletto di terra, lo rincalza come una piantina e gli dà due colpetti quando ha finito.",
	},
	["thb.muse.w24.spiritward.020"] = {
		"Su questa altura non fischietto. Qualcuno mi ha detto che richiama gli spiriti, e non ho niente da offrire loro.",
		"Niente fischi, mi dicono. Va bene. Canticchio. Del canticchiare nessuno ha detto niente.",
	},
	["thb.muse.w24.spiritward.021"] = {
		"Che gli elementi rispondano sempre al tuo richiamo.",
		"Parole gentili per te dal fuoco, e dalla pietra.",
		"Buone risposte alle tue domande. Poche domande meritano tanto.",
	},
	["thb.muse.w24.stewpot.001"] = {
		"Mercanteggiare con un tauren funziona così: il mercante dice un prezzo, poi non dice più niente. Chi parla per primo perde. Non è mai il tauren.",
		"I tauren contrattano col silenzio. Fai un'offerta; la guardano come si guarda il cielo che cambia, e aspettano. Ho rialzato il mio stesso prezzo tre volte senza sentire una sola controfferta.",
		"Ho imparato il modo tauren di contrattare: dici un numero e poi stai immobile. È più difficile di quanto sembri. Ho resistito più o meno quanto un plainstrider riesce a restare in un punto.",
	},
	["thb.muse.w24.stewpot.002"] = {
		"Ho offerto la metà. Il mercante ci ha pensato così a lungo che ho alzato io l'offerta. Due volte.",
		"Un consiglio per contrattare qui: non farlo. Paga e goditi il cenno del capo.",
		"Ho fatto la mia offerta migliore e ho ricevuto un lento sbattere di ciglia. Credo sia un no. Potrebbe essere un pisolino.",
	},
	["thb.muse.w24.stewpot.003"] = {
		"Le monete ai banchi sono ben accette, ma ho visto chiudere più affari senza: una pelle per due vasi, un vaso per un mazzo di radici, un favore promesso per più avanti. I tauren tengono i conti a mente, e nessuno sembra dimenticare.",
		"Un vasaio e un conciatore hanno appena fatto uno scambio senza che passasse di mano una sola moneta: solo una lunga occhiata al lavoro dell'altro e un cenno. Sospetto un conto aperto che dura da anni.",
	},
	["thb.muse.w24.stewpot.004"] = {
		"vede due tauren chiudere un affare con una stretta di mano lunga e senza fretta: nessuno dei due la lascia finché qualcosa di non detto non è sistemato.",
		"assiste a un affare che a una bancarella si conclude non con le monete ma con due mani enormi strette a lungo, e i due mercanti che tornano al lavoro come se niente fosse.",
	},
	["thb.muse.w24.stewpot.005"] = {
		"Una guaritrice tauren pesta radici in una ciotola di pietra con un pestello di pietra consumato fino a combaciare alla perfezione. Ciotola e pestello si macinano a vicenda da tanto tempo che sono diventati un solo attrezzo in due pezzi.",
		"Il mortaio di questa erborista è scavato così a fondo dall'uso che il pestello ci sta dentro come un uovo nel nido.",
		"Il pestello dell'erborista ha in cima un incavo a forma di pollice. Non del suo, dice. Di chi l'ha usato prima di lei.",
	},
	["thb.muse.w24.stewpot.006"] = {
		"Pane speziato cotto piatto su una pietra rovente al bordo del fuoco, girato a mani nude. Il cuoco non batte ciglio. Io sussulto per tutti e due.",
		"Qualcuno cuoce focacce su una pietra accanto alle braci, sbattendo giù ogni tondo e girandolo a mani nude. Il profumo arriva a tre alture di distanza prima che il pane sia pronto.",
		"Pane speziato di Mulgore, caldo, spezzato in due da chi lo ha cotto e porto senza chiedere. Certe città ti accolgono con le guardie. Questa ti accoglie col pane.",
	},
	["thb.muse.w24.stewpot.007"] = {
		"La cuoca di un grande pentolone mi ha detto che non è mai rimasto vuoto da prima che la città avesse i suoi ascensori. Qualcosa si aggiunge sempre, qualcosa si toglie sempre. Le ho chiesto quale fosse la prima cosa messa dentro. Ha soltanto mescolato.",
		"Un pentolone che non si lascia mai svuotare, solo rabboccare: il cuoco dice che è lo stesso pasto di quando c'era il suo maestro a mescolarlo. Ne ho mangiato una ciotola, di quella cena antichissima, ed era eccellente.",
	},
	["thb.muse.w24.stewpot.008"] = {
		"passa accanto a una rastrelliera di sottili strisce di carne che si seccano sopra un fuoco basso e fumoso, con un giovane tauren di guardia che scaccia gli uccelli con un bastone piumato.",
		"adocchia una rastrelliera di carne di kodo a seccare, scura e rigida, che gira piano nel fumo mentre qualcuno volta ogni striscia con due dita.",
	},
	["thb.muse.w24.stewpot.009"] = {
		"Ai banchi si vendono cose che la pianura non dà: sale dal sud, spezie salite dalla costa con un mercante goblin, un po' di ferro. I tauren le comprano con calma, come se ogni merce forestiera dovesse prima essere presentata.",
		"Fra le pelli e i vasi di una bancarella c'è un solo sacchetto di sale, che costa più di tutto il resto. Certe cose devono fare molta strada per arrivare in cima a una rupe.",
		"Le spezie di un goblin accanto alle radici di un tauren sulla stessa coperta, ciascuna col suo modo di avere un prezzo: le une a gran voce, le altre per niente finché non chiedi.",
	},
	["thb.muse.w24.stewpot.010"] = {
		"esamina un venditore che misura il grano con una ciotola di legno intagliato, livellando ogni misura col taglio della mano, mai un chicco di troppo.",
		"nota che la sessola del mercante di grano è una ciotola intagliata consumata dall'uso, e che ogni misura viene rasata col palmo e versata lenta come un dono.",
	},
	["thb.muse.w24.stewpot.011"] = {
		"Alle prime luci i cuochi tirano fuori le braci da sotto la cenere, e i fuochi ripartono senza che nessuno li debba accendere. Un buon cuoco quassù, mi dicono, sono anni che non accende un fuoco dal nulla.",
		"È l'alba, e i cuochi stanno già ravvivando con un ventaglio di penne le braci del giorno prima sotto le pentole.",
	},
	["thb.muse.w24.stewpot.012"] = {
		"Per ultima cosa i cuochi seppelliscono le braci sotto una coltre di cenere e posano una pietra piatta sulla buca. Nel buio tutta l'altura sa di fuoco coperto, tiepido e basso.",
		"A uno a uno i fuochi di cucina finiscono sotto la cenere per la notte, e l'altura si fa più quieta a ogni fuoco spento. Solo le braci continuano a parlare, piano piano, sotto le loro coperte grigie.",
	},
	["thb.muse.w24.stewpot.013"] = {
		"Il cuoco mi ha chiesto se mi piaceva. Ho detto di sì a bocca piena. Pare che sia la risposta giusta in qualunque lingua.",
		"Mi hanno dato una striscia di kodo secco da masticare mentre aspetto. Credo che la masticherò fino a molto dopo la partenza.",
	},
	["thb.muse.w24.stewpot.014"] = {
		"I nostri cuochi fanno ancora il pane da viaggio che portavano i vagabondi, duro abbastanza da durare una stagione di cammino. Nessuno ha più bisogno che duri. Lo facciamo lo stesso, lo intingiamo nel brodo, e ricordiamo.",
		"Pane, brodo e un posto al fuoco per chiunque salga il sentiero: questa è la nostra usanza, e mi rallegro ogni volta che vedo porgere una ciotola a uno straniero senza chiedergli il nome.",
	},
	["thb.muse.w24.stewpot.015"] = {
		"Ormai sento a malapena i sapori. Il cuoco tauren non lo sa, o non ci bada, e mi guarda mangiare come se il mio piacere fosse l'unica cosa che conta. Così mangio piano, e lascio che sia.",
		"Il cibo per me è quasi soltanto consistenza. Eppure un tauren mi ha porto una ciotola e ha aspettato di vedermi sorridere, e ho scoperto che il sorriso era la parte che potevo ancora dare.",
	},
	["thb.muse.w24.stewpot.016"] = {
		"segue la caduta regolare del coltello di pietra di un cuoco su un ceppo segnato da mille vecchi tagli, e le radici che sotto si dividono in pezzi uguali.",
		"sosta davanti al tagliere di un cuoco, un grosso disco di legno incavato al centro da innumerevoli colpi, con le radici sopra tagliate in pezzi tutti uguali.",
	},
	["thb.muse.w24.stewpot.017"] = {
		"Qui su Spirit Rise un venditore di erbe fa annusare un pizzico a ogni compratore prima che paghi, e gli guarda la faccia invece della borsa. Qualcuno, ho notato, viene congedato con un'erba diversa da quella chiesta.",
		"Gli erboristi di Spirit Rise vendono a naso. Tu annusi, loro guardano, e a volte ti mettono in mano qualcos'altro senza dire niente. Ho chiesto una radice e me ne hanno data un'altra, e non so ancora chi dei due avesse ragione.",
	},
	["thb.muse.w24.stewpot.018"] = {
		"Ogni coperta che spiego alla bancarella, il mercante la ripiega dietro di me, alla perfezione, senza commenti. Ho smesso di toccare le cose. Forse era proprio questo il piano.",
		"A una bancarella ho preso in mano quattro oggetti e li ho rimessi giù un po' storti. Il mercante ha passato tutta la conversazione a rimetterli a posto, uno per uno, e mi ha venduto comunque il quinto.",
	},
	["thb.muse.w24.stewpot.019"] = {
		"Qualunque cosa stia mescolando quel cuoco, la voglio, e voglio la ricetta, e so che avrò soltanto una delle due.",
		"Contratterei, ma il mercante ha più pazienza di quanta io ne abbia in tutta la vita.",
	},
	["thb.muse.w24.stewpot.020"] = {
		"Sa di radici, di fumo e del segreto della nonna di qualcuno. Una ciotola, grazie.",
		"Non chiedere cosa c'è dentro. Porgi la ciotola e di' grazie. Lentamente.",
	},
	["thb.muse.w24.stewpot.021"] = {
		"Un'anziana al fuoco mangia piano e lascia la ciotola perfettamente pulita. «Una volta, nel lungo cammino, abbiamo avuto fame», ha detto quando si è accorta che la guardavo. Nient'altro.",
		"Gli anziani tauren non sprecano un boccone. Alcuni di loro, mi ha detto piano un cuoco, ricordano le stagioni magre del vagabondare, quando le mandrie si spostavano più in fretta di quanto le tribù riuscissero a seguirle.",
	},
	["thb.muse.w24.strata.001"] = {
		"Da vicino le fasce della parete non sono affatto ordinate: si ingrossano, si assottigliano, si mangiano l'una con l'altra, e una striscia chiara finisce di colpo, come se la roccia avesse perso il filo.",
		"Vista dall'altra parte del vuoto, la parete sembra tracciata col righello. Da vicino le strisce vagano, si stringono e sbiadiscono, come un racconto fatto a più voci.",
		"Una delle fasce della parete non è più spessa di un dito e attraversa tutta l'altura senza interrompersi. Sono quelle grosse a perdersi per strada.",
	},
	["thb.muse.w24.strata.002"] = {
		"passa il pollice su una fascia di roccia gialla e tenera a lato del sentiero, e lo ritrae infarinato come quello di un fornaio.",
		"preme la punta di un dito su una vena chiara della parete; un poco si sbriciola e vola via, sottile come farina.",
		"gratta con un'unghia una vena rossiccia e ci lascia una riga chiara, poi la cancella col pollice, con un filo di senso di colpa.",
	},
	["thb.muse.w24.strata.003"] = {
		"Le rondini fanno il nido in una crepa appena sotto il ciglio dell'altura, coppette di fango premute nella pietra rossa. Scommetto che c'erano già prima che salisse il primo palo.",
		"Sotto una sporgenza della roccia c'è una fila di nidi di fango, e gli uccelli sfrecciano dentro e fuori come se la città fosse un fastidio di passaggio.",
		"Le rondini sotto il ciglio sgridano chiunque si sporga troppo. Giusto così: quella è la loro parte di bordo.",
	},
	["thb.muse.w24.strata.004"] = {
		"Vicino al ciglio la roccia è spaccata in lastroni grandi come case, separati da fessure scure larghe una spanna. Le tende sono tutte piantate ben lontano da quelle fessure, e nessuno ha dovuto dirlo.",
		"Il bordo del pianoro non è un bordo solo: è una fila di blocchi che sembrano appoggiati, ognuno con la sua crepa dietro. Nessuno pianta una tenda dalla parte sbagliata di una crepa.",
		"Le crepe vicino al bordo gli corrono parallele, tutte quante. La rupe si sfoglia a fette lente, e i tauren hanno imparato a leggerle.",
	},
	["thb.muse.w24.strata.005"] = {
		"si accuccia a guardare una macchia di licheni arancioni su un masso, stesi piatti come vernice rovesciata che ha avuto qualche secolo per asciugare.",
		"si inginocchia accanto a una roccia chiazzata di licheni di tre colori, arancio, verde pallido e un grigio quasi nero, ognuno educatamente al suo posto.",
		"si china su una crosta di lichene verde grigio, di quelli che crescono così piano che una chiazza grande come un palmo potrebbe essere più vecchia della città.",
	},
	["thb.muse.w24.strata.006"] = {
		"La roccia quassù si graffia con un'unghia, eppure sta in piedi da più tempo di quanto chiunque sappia contare. Cerco di non prenderla come un'offesa personale.",
		"Arenaria, credo. Mi si sbriciola tra le dita e sopravvive ai regni. C'è una lezione lì dentro, e mi rifiuto di impararla.",
		"Potrei incidere il mio nome in questa parete con un cucchiaio, e durerebbe più di me. Certi affari è difficile rifiutarli.",
	},
	["thb.muse.w24.strata.007"] = {
		"Sotto il sentiero una macchia scura scende lungo la parete, e in fondo c'è una frangia di muschio. Dentro il pianoro l'acqua si sta facendo strada verso fuori, piano piano.",
		"Nella parete c'è un trasudo, una striscia nera e umida con qualche felce aggrappata. La rupe è asciutta in cima e, in silenzio, bagnata dentro.",
	},
	["thb.muse.w24.strata.008"] = {
		"Questa città intera sta in piedi su un mucchio di sabbia molto paziente.",
		"Bella pietra. Si sbriciola se la guardi. La guarderò meno.",
		"Non appoggiatevi alla parete. Vi resta sul mantello.",
	},
	["thb.muse.w24.strata.009"] = {
		"Qui su Elder Rise il sentiero è scavato nella roccia stessa, un solco basso lucidato dagli zoccoli. Una pietra così tenera tiene memoria di ogni passaggio, e qui ne ha tenuti moltissimi.",
		"Su Elder Rise i sentieri sono solchi affondati nella pietra per un dito. Più che percorrerli, li segui.",
	},
	["thb.muse.w24.strata.010"] = {
		"guarda giù lungo la parete del pianoro, fino al lungo ghiaione accumulato ai suoi piedi: ogni masso laggiù, un tempo, era un pezzo del bordo.",
		"segue con lo sguardo la parete fino alla scarpata di pietra rotta alla base, dove la rupe perde pezzi di sé, senza fretta, da tempi immemorabili.",
		"guarda un masso laggiù ai piedi della parete, poi uno scasso vivo nel ciglio proprio sopra, e fa il conto.",
	},
	["thb.muse.w24.strata.011"] = {
		"Sotto l'altura, accanto ai Pools of Vision, la pietra è imperlata di gocce fredde. Ognuna si raccoglie a lungo prima di staccarsi.",
		"Quaggiù le pareti sono della stessa roccia a fasce delle rupi di fuori, solo bagnata e scura, e le strisce scendono fin dentro l'acqua e proseguono sotto.",
	},
	["thb.muse.w24.strata.012"] = {
		"Polvere rossa nelle pieghe degli stivali, polvere rossa sulle maniche. La rupe non ti lascia andare senza un po' di sé.",
		"Quando lascerò questa città sarò dello stesso colore delle sue pareti, dalle ginocchia in giù.",
	},
	["thb.muse.w24.strata.013"] = {
		"I nostri costruttori hanno letto questa roccia prima di fidarsene: quali fasce reggono un piolo, quali si sbriciolano. Quel sapere è salito con loro, più vecchio della città.",
		"La pietra della rupe è buona pietra, dicevano i vecchi costruttori, se prima la ascolti. La mia gente l'ha ascoltata a lungo prima di piantare il primo paletto.",
	},
	["thb.muse.w24.strata.014"] = {
		"Quella crepa nella roccia va più giù del mio braccio. Ho controllato. Non chiedetemi perché.",
		"Qualcuno ha incastrato una pietra piatta in quella crepa perché non si allarghi. Che ottimismo.",
		"In quella crepa c'è una lucertola. Mi tiene d'occhio da più tempo delle guardie.",
	},
	["thb.muse.w24.strata.015"] = {
		"Dalla parete spunta un alberello contorto, le radici aperte sulla roccia come dita che si tengono. Fra tutto ciò che sta su questo pianoro, ha scelto il posto più difficile.",
		"Un arbusto ha infilato le radici in una spaccatura appena sotto il ciglio e non ha nessuna intenzione di andarsene. In una pianta, lo ammiro.",
		"A metà parete un cespuglio cresce dritto di lato e poi si piega verso l'alto, testardo, in cerca di cielo aperto.",
	},
	["thb.muse.w24.strata.016"] = {
		"osserva la parete dell'altura di fronte, oltre il vuoto: una sola fascia bianca corre dritta nel rosso, identica a quella che attraversa la pietra sotto i suoi piedi.",
		"si accorge che la striscia chiara nella parete di fronte combacia con una della roccia sotto i suoi piedi, come se i due pianori un tempo fossero stati uno solo.",
		"segue col dito, a braccio teso, una fascia scura oltre il vuoto, dalla roccia di fronte fino a quella su cui poggia i piedi.",
	},
	["thb.muse.w24.strata.017"] = {
		"La pioggia scurisce le pareti fascia dopo fascia, e le strisce più tenere bevono per prime. Bagnata, la rupe sembra tigrata come il fianco di una grossa bestia.",
		"La pioggia tira fuori i colori della roccia: ruggine, ocra, un rosso di mattone, un giallo quasi oro. Asciutte, le pareti sono soltanto polverose.",
		"Le pareti bevono la pioggia e si fanno di un rosso più cupo a ogni minuto, finché l'intera rupe sembra dipinta di fresco.",
	},
	["thb.muse.w24.strata.018"] = {
		"In una lastra accanto al sentiero è impressa la forma di una conchiglia, a coste, perfetta, lontanissima da qualunque mare. Non ho idea di come ci sia finita, e la roccia non parla.",
		"Continuo a trovare piccole forme strane nella pietra: una spirale, un ricciolo a coste. Qualunque cosa siano, erano qui prima di chiunque ci passi accanto.",
	},
	["thb.muse.w24.tannery.001"] = {
		"si avvicina a un conciatore che fa scorrere un raschietto d'osso sul rovescio di una pelle tesa, a passate lunghe e regolari, saggiandone ogni tanto la superficie col pollice.",
		"si ferma accanto a chi lavora una pelle di kodo: il raschietto d'osso scende e risale, scende e risale, senza la minima fretta.",
		"resta a rispettosa distanza da un tauren che raschia una pelle fresca, e dopo ogni passata c'è una pausa, e un'occhiata lenta lungo la fibra.",
	},
	["thb.muse.w24.tannery.002"] = {
		"Un conciatore mi ha spiegato che la pelle si concia col cervello della bestia stessa, lavorato a mano. Gli ho chiesto se scherzava. È stato il silenzio più lungo della mia visita.",
		"Cervello, fumo e molti giorni di sfregamento: così mi hanno spiegato quassù come nasce il buon cuoio. Ho smesso di chiedermi cosa sia finito nei miei stivali.",
	},
	["thb.muse.w24.tannery.003"] = {
		"indugia mentre un giovane tauren tira avanti e indietro una pelle umida su un palo di legno levigato, finché la pelle rigida non diventa morbida come stoffa.",
		"si sofferma dove due tauren si passano una pelle sopra un palo tondo, ammorbidendola con un lento tiro alla fune che nessuno dei due vuole vincere.",
		"nota una pelle lavorata su un palo da qualcuno che deve averlo fatto mille volte: il cuoio cede un poco a ogni strattone.",
	},
	["thb.muse.w24.tannery.004"] = {
		"Sopra un fuoco basso di legno marcio le pelli restano appese finché non prendono il colore del miele. Il cuoio affumicato, dicono i conciatori, dopo un bagno si asciuga morbido invece che duro come corteccia.",
		"Qualcuno tiene acceso un fuocherello imbronciato sotto una tenda di pelli, senza mai lasciarlo divampare. Non serve a scaldare. Serve al colore, e a un cuoio che perdona l'acqua.",
		"Pelli color miele che girano piano in un velo di fumo. Il tauren che le sorveglia ha l'aria di chi troverebbe scortese mettere fretta a un colore.",
	},
	["thb.muse.w24.tannery.005"] = {
		"Una buona pelle richiede quasi un mese, dalla pianura al telaio all'ago. Qui nessuno cerca di accorciare i tempi. Sarebbe come tirare l'erba per farla crescere.",
		"La conciatrice che ho osservato non si lascia mettere fretta. «Una pelle si ricorda di essere stata trattata in fretta», ha detto, e si è rimessa a raschiare come se la questione fosse chiusa.",
		"Il cuoio, quassù, si misura in settimane di lavoro, non in monete. La moneta arriva alla fine, quasi per caso.",
	},
	["thb.muse.w24.tannery.006"] = {
		"Un conciatore mi ha annusato gli stivali e ha sospirato. Non sapevo che il cuoio potesse restare deluso da me.",
		"A quanto pare i miei stivali li ha conciati qualcuno senza rispetto per la bestia. Me l'hanno fatto notare con garbo, due volte.",
		"Ho chiesto a un conciatore di dare un'occhiata ai miei guanti. Ha guardato i guanti, poi me, e poi è rimasto zitto per un bel pezzo.",
	},
	["thb.muse.w24.tannery.007"] = {
		"Qui su Hunter Rise le pelli arrivano fresche dalla pianura e prima di tutto vengono smistate: questa per una sella, questa per un tamburo, questa troppo sottile per altro che lacci.",
		"Su Hunter Rise un cacciatore e un conciatore discutono davanti a una pelle fresca per un solo buco. Il cacciatore se ne vergogna. Il conciatore ci sta già lavorando intorno.",
		"Ogni pelle che sale su Hunter Rise viene prima letta come una lettera: dove è stata colpita la bestia, quanti anni aveva, cosa può ancora diventare.",
	},
	["thb.muse.w24.tannery.008"] = {
		"Ho seguito una pelle fino in fondo: la parte migliore va alla parete di una tenda, i ritagli diventano lacci, gli avanzi dei lacci legano mazzi di radici, e le ultime raschiature si fanno bollire per la colla. L'ho persa di vista prima che finisse.",
		"Ho provato a scoprire cosa buttano via i conciatori. C'è una cesta di ritagli, e ogni tanto passa un tessitore o un intagliatore e ne prende una manciata.",
		"Anche la colla, quassù, un tempo era un kodo. E così i lacci, le legature e il sacchetto in cui la colla si conserva.",
	},
	["thb.muse.w24.tannery.009"] = {
		"si china su un corpetto di cuoio appena finito, steso su una panca: i punti lungo la cucitura sono così piccoli e regolari da sembrare un'unica riga.",
		"passa il pollice sul bordo di una borsa di pelle posata sulla coperta di un mercante, e non trova un solo punto fuori posto.",
	},
	["thb.muse.w24.tannery.010"] = {
		"La lesina che la conciatrice ha in mano è più vecchia di lei. Era della sua maestra, mi ha detto, e prima ancora di qualcun altro. Il manico ha preso la forma di altre mani.",
		"Una conciatrice tiene gli attrezzi avvolti in una striscia del suo cuoio più vecchio, ciascuno nella sua tasca. Quando li srotola sembra meno un lavoro che un saluto.",
		"Le lesine d'osso, qui, si ungono, si avvolgono e si ripongono alla fine di ogni lavoro, anche se il successivo comincia un attimo dopo. Un attrezzo si tratta come un ospite che potrebbe andarsene.",
	},
	["thb.muse.w24.tannery.011"] = {
		"L'odore di una vasca da concia non ti raggiunge: si presenta, e poi resta per tutta la conversazione.",
		"So trovare i conciatori senza chiedere a nessuno. Seguo l'odore finché il naso non si arrende, poi giro a sinistra.",
		"Sulla rupe qualcuno ha appena scoperchiato una vasca da concia. Lo so con la stessa certezza con cui saprei che mi si è seduto addosso un kodo.",
	},
	["thb.muse.w24.tannery.012"] = {
		"Porto la pianura sulle spalle: cuoio di kodo, lavorato con calma da un conciatore di questa rupe. I nostri conciatori ringraziano ancora ogni pelle con le parole antiche. Mi accorgo di farlo anch'io, quando allaccio una cinghia.",
		"Il cuoio dei nostri conciatori ha un odore che la merce dei mercanti non ha mai. Fumo, terra e pazienza. Sa di casa.",
	},
	["thb.muse.w24.tannery.013"] = {
		"osserva una conciatrice legare una pelle bagnata a un telaio di legno, per poi tornare poco dopo a stringere ogni laccio di un niente, come chi accorda uno strumento.",
		"gira intorno a un telaio dove una pelle viene tesa: il conciatore lavora lungo il bordo un nodo dopo l'altro, e ogni nodo lo tira di un dito in più.",
		"vede un tauren girare piano attorno a una pelle sul telaio, dando a ogni laccio un piccolo strattone mentre asciuga, e la ascolta quanto la guarda.",
	},
	["thb.muse.w24.tannery.014"] = {
		"Cuoio di kodo: ferma la zanna di un cinghiale, ci si dorme sopra morbidi e dura più di chi lo compra. Ne prendo due.",
		"Cuoio tauren. Pesante come una promessa, e due volte più difficile da rompere.",
		"Se mai riuscirò a consumare questo corpetto, tornerò a chiedere scusa al conciatore di persona.",
	},
	["thb.muse.w24.tannery.015"] = {
		"La veste di pelle morbida di un anziano è stata rattoppata tante volte che ormai è più rammendo che veste. Il cuoio viene da una bestia che nessuno dei vivi ricorda di aver visto. L'anziano la porta come si porta un nome.",
		"Toppa su toppa, ognuna di un marrone appena diverso: quella vecchia veste è sopravvissuta alle mani che l'hanno cucita per prime, e a quelle venute dopo.",
	},
	["thb.muse.w24.tannery.016"] = {
		"Puzza di conceria. Il che è giusto: è una conceria.",
		"Buon cuoio, cuciture oneste, e un conciatore che mi squadra come se il pezzo da valutare fossi io.",
		"Chi ha fatto questa cintura si aspettava che mi sopravvivesse. Scortese, ma probabilmente ha ragione.",
	},
	["thb.muse.w24.tannery.017"] = {
		"Quel conciatore ha unto la stessa lesina tre volte mentre parlavamo. Sto parlando troppo.",
		"I tauren curano i loro attrezzi meglio di quanto molti curino gli amici.",
	},
	["thb.muse.w24.tannery.018"] = {
		"In pieno sole i conciatori continuano a girare le pelli sui telai perché nessun lato asciughi prima dell'altro. Passano da un telaio all'altro come pastori che controllano il gregge.",
		"Il sole è duro con le pelli, dicono i conciatori, così a mezzogiorno inclinano i telai di taglio e aspettano all'ombra lì accanto.",
	},
	["thb.muse.w24.updraft.001"] = {
		"lascia cadere una piuma oltre l'orlo e la guarda salire invece di scendere, girando piano, finché è più in alto della sua testa e continua a salire.",
		"molla un ciuffo di piumino sul bordo: non cade affatto, ma risale davanti al suo viso come chi restituisce qualcosa.",
	},
	["thb.muse.w24.updraft.002"] = {
		"Semi d'erba sulla manica, ben al di sopra di qualsiasi prato. La pianura manda su le cose lungo le pareti con l'aria che sale, e la città non ne ha mai chiesta nessuna.",
		"Un pennacchio di semi sul colletto, in cima a una rupe. Mulgore è decisa a seminarsi ovunque, anche su di me.",
		"Fra le tende vaga del piumino di cardo, anche se su questa roccia nuda non cresce nessun cardo. È salito dalla pianura per la via più comoda.",
	},
	["thb.muse.w24.updraft.003"] = {
		"Un anziano fuma la pipa sul ciglio, e il fumo non si allontana sulla pianura: l'aria lo rialza dritto oltre le corna, come un pensiero che non vuole andarsene.",
		"Vicino al bordo perfino il fumo della pipa sale. Non se ne va mai verso Mulgore: rotola su per la parete e passa sopra la testa di chi fuma.",
	},
	["thb.muse.w24.updraft.004"] = {
		"si lascia sfuggire un pezzo di carta sul bordo e lo guarda galleggiare appena fuori portata, su e giù, chiaramente divertito.",
		"cerca di afferrare un biglietto strappato via dal ciglio, e il biglietto resta sospeso un passo oltre il vuoto, ondeggiando, come a lanciare una sfida.",
	},
	["thb.muse.w24.updraft.005"] = {
		"Sul ciglio l'aria sale lungo la parete invece di attraversarla. Tutto quello che ho di lasco si solleva insieme e resta su, come una mano sotto il gomito.",
		"Sul bordo estremo la spinta arriva da sotto, costante e mite, come stare sopra un focolare grande mezzo Kalimdor.",
	},
	["thb.muse.w24.updraft.006"] = {
		"Una falena bianca mi è passata accanto sul bordo, diretta verso l'alto, senza muovere una volta le ali. Viene da qualche parte nell'erba e va da qualche parte su, e sembra contenta di lasciar decidere all'aria.",
		"Piccole falene chiare risalgono la parete con l'aria che sale e traboccano oltre l'orlo, svolazzando goffe tra le tende come stupite di essere arrivate.",
	},
	["thb.muse.w24.updraft.007"] = {
		"Certi odori arrivano da sotto, non di lato: terra umida vicino a un ruscello, erba schiacciata, una volta una zaffata di qualcosa di morto. La parete passa in su tutto quello che fa la pianura.",
		"Le notizie di Mulgore salgono dal naso: erba, terriccio, un fuoco di sterco lontano, portati dritti su per la faccia della pietra.",
		"In certe ore la pianura profuma di fieno tagliato fin quassù, così forte che mi guardo intorno cercando un campo che non c'è.",
	},
	["thb.muse.w24.updraft.008"] = {
		"guarda una tauren sbattere una coperta oltre l'orlo; la polvere non cade, le vola dritta in faccia, e lei starnutisce con grande dignità.",
		"vede qualcuno svuotare un cesto di pula dal bordo, e l'aria che sale gliela riporta quasi tutta, con garbo, sparsa sulle assi.",
	},
	["thb.muse.w24.updraft.009"] = {
		"Il calore sale dalle pareti e fa tremolare le alture lontane come viste attraverso l'acqua. Quassù nemmeno il panorama sta fermo.",
		"Nelle ore calde l'aria sopra il bordo si increspa come un vetro mal fatto, e le tende sulla rupe vicina sembrano ondeggiare anche se niente le muove.",
	},
	["thb.muse.w24.updraft.010"] = {
		"Qui perfino l'aria si rifiuta di scendere. Comincio a capire perché i tauren abbiano costruito così in alto.",
		"Da questa città le cose non cadono: vengono rispedite al mittente. Quasi sempre.",
	},
	["thb.muse.w24.updraft.011"] = {
		"Uno degli anziani dice che l'aria che risale le pareti porta su agli antenati le preghiere della pianura. Lì in mezzo non posso dargli torto: qualcosa viene di sicuro portato.",
		"I tauren hanno una parola per l'aria che sale lungo la parete, mi ha detto uno sciamano: vuol dire più o meno la pianura che si ricorda del cielo. La parola in sé non l'ho mai afferrata.",
	},
	["thb.muse.w24.updraft.012"] = {
		"si ferma a guardare un giovane tauren sporgersi oltre l'orlo con un ritaglio di pelle legato a una lunga cordicella: lo lascia salire con l'aria, lo ritira, lo rilancia, completamente assorto.",
		"scorge un piccolo tauren sul bordo che fa volare un quadrato di pelle dipinta appeso a uno spago: sale dritto lungo la parete e resta lì sopra la città, come una bandierina fiera.",
	},
	["thb.muse.w24.updraft.013"] = {
		"In piedi nella spinta dell'aria sul ciglio, mi sembra di pesare qualche libbra di meno. È una bugia, certo, ma gentile.",
		"L'aria che sale sul bordo si prende un po' del mio peso, come un amico che ti regge il gomito su un sentiero ripido. Non me ne fido, e la ringrazio lo stesso.",
	},
	["thb.muse.w24.updraft.014"] = {
		"Nessun uccello, qui, fatica per salire. Inclinano un'ala nell'aria che viene su dalla parete e vanno in alto e basta, come chi mette piede su un ascensore.",
		"Guarda i grossi uccelli vicino alle pareti: senza mai sbattere le ali tra la pianura e l'orlo. Si piegano, e a salire ci pensa l'aria.",
	},
	["thb.muse.w24.updraft.015"] = {
		"Qui la pioggia non si limita a cadere. Sul ciglio sale anche su per la parete, uno spruzzo fine rimandato da sotto, e bagna da tutte e due le parti.",
		"Con questa pioggia le gocce mi risalgono davanti al viso da sotto il bordo, ributtate su dalla pietra. Nemmeno la pioggia, qui, si degna di scendere.",
	},
	["thb.muse.w24.updraft.016"] = {
		"si volta mentre una foglia secca sbuca dal nulla oltre l'orlo, gira una volta tra due tende e si posa sulle assi ai suoi piedi.",
		"vede una foglia di qualche albero laggiù nella pianura salire oltre il bordo e posarsi accanto a un lupo addormentato, che non si sveglia per così poco.",
		"nota qualche filo d'erba secca impigliato in una legatura sul bordo dell'altura, portato su da molto in basso e annodato lì soltanto dal caso.",
	},
	["thb.muse.w24.updraft.017"] = {
		"Un cane che abbaia in qualche fattoria laggiù arriva su per la parete sottile e in ritardo, come una parola dall'altro capo di una casa lunga.",
		"I suoni della pianura salgono, sì, ma per strada perdono quasi tutto: un cane diventa uno squittio, un grido un sospiro, un carro niente del tutto.",
	},
	["thb.muse.w24.updraft.018"] = {
		"Qualcuno sull'altura vicina pianta un piolo a martellate, e ogni colpo arriva due volte: una dal martello e una, un attimo dopo, dalla parete al di là del vuoto.",
		"Bussi, e la parete di fronte ribussa. Qualcuno laggiù pianta pioli, e la roccia tiene un conto preciso, appena in ritardo.",
	},
	["thb.muse.w24.updraft.019"] = {
		"Hai sentito? Qualcuno giù nella pianura ha fischiato. Tutta quella strada, ed è arrivato fin qui lo stesso.",
		"Ascolta. Viene dall'erba, giù in fondo. La parete ogni tanto porta su un suono come un regalo.",
	},
	["thb.muse.w24.updraft.020"] = {
		"Lo senti? L'aria arriva da sotto. Tutta questa città poggia su un sospiro.",
		"Allunga la mano oltre il bordo. Visto? Spinge indietro.",
	},
	["thb.muse.w24.vertigo.001"] = {
		"Quando l'altezza mi entra nelle ginocchia appoggio una mano al palo più vicino e aspetto. Il legno piantato nella pietra sta quassù da più tempo di me, e me ne presta un po'.",
		"La mia cura per il vuoto: trovare qualcosa di piantato, un palo, un picchetto, il montante di un telaio, e appoggiarmici finché non mi ricordo di avere radici anch'io.",
		"Quando il bordo comincia a tirare, appoggio la schiena al telaio di una tenda e guardo la pelle invece della pianura. La pelle non va da nessuna parte.",
	},
	["thb.muse.w24.vertigo.002"] = {
		"Un Bluffwatcher mi ha detto che il trucco è non guardare mai il vuoto, solo le colline lontane: loro non si muovono, e così non ti muovi nemmeno tu. Funziona meglio di quanto mi aspettassi e peggio di quanto mi fosse stato promesso.",
		"Consiglio di una guardia su un ponte: gli occhi all'orizzonte, mai sulle assi, e fidarsi che le assi siano dove erano un attimo fa.",
	},
	["thb.muse.w24.vertigo.003"] = {
		"dà un'occhiata oltre il bordo, fa un passo indietro senza volerlo e ride piano dei propri piedi, che hanno le loro opinioni.",
		"si ritrova a piegarsi all'indietro dal ciglio prima ancora di deciderlo, il corpo che si accorda per conto suo con l'altezza.",
	},
	["thb.muse.w24.vertigo.004"] = {
		"Cosa strana: il vuoto non mi turba granché. È guardare in su che mi fa girare la testa. Sopra questa città c'è così tanto cielo che sembra di cadere dall'altra parte.",
		"Sdraiati sulla schiena, quassù, e il capogiro arriva dall'alto. Niente tetto, niente rami, solo cielo che continua e continua, finché le assi sotto di me sembrano l'unica cosa che mi tenga giù.",
	},
	["thb.muse.w24.vertigo.005"] = {
		"Resta abbastanza a lungo sulla rupe e il posto strano diventa la pianura. Laggiù gli occhi continuano a cadermi sui piedi, in attesa di un bordo che non arriva mai.",
		"Dopo un po' quassù il corpo comincia ad aspettarsi il ciglio. Più tardi, in piano, continuerò a cercarlo a ogni passo.",
	},
	["thb.muse.w24.vertigo.006"] = {
		"Sto bene. Resto solo immobile un momento, e sto bene.",
		"Nessuno mi parli finché la pianura non smette di inclinarsi.",
		"Un momento. Io e le mie ginocchia stiamo discutendo del panorama.",
	},
	["thb.muse.w24.vertigo.007"] = {
		"resta sul bordo contando piano, in un mormorio, finché la terra di sotto non accetta di stare ferma.",
		"canticchia qualcosa senza melodia vicino al ciglio, basso e costante, come si calmerebbe un animale ombroso; solo che stavolta l'animale ce l'ha dentro.",
	},
	["thb.muse.w24.vertigo.008"] = {
		"Un anziano mi ha visto barcollare sul ciglio e mi ha detto, con gentilezza, che le vertigini sono soltanto il corpo che s'inchina all'altezza. Inchinati, allora, e cammina. Mi sto esercitando.",
		"Come l'ha messa una vecchia tauren: quel capogiro sul bordo non è paura, è buona educazione. L'altezza è molto antica, e ti stanno presentando.",
		"Uno sciamano mi ha detto di non combattere il capogiro ma di lasciargli finire la frase, come a un anziano. Alla fine l'ha finita. Aveva parecchio da dire.",
	},
	["thb.muse.w24.vertigo.009"] = {
		"Quaggiù nei Pools of Vision c'è roccia sopra, roccia intorno e acqua ferma sotto, e nemmeno un bordo da cui cadere. Le mie ginocchia non hanno mai amato tanto questa città.",
		"L'unico posto della città dove non vedo di sotto. Nei Pools of Vision il pavimento finisce nell'acqua, e con l'acqua me la cavo.",
	},
	["thb.muse.w24.vertigo.010"] = {
		"Ogni volta che mi fermo sul ciglio sono le mani a gelarsi per prime, prima di tutto il resto. Pare che sappiano dell'altezza per conto loro, e non ne vogliano sapere.",
		"Comincia dalle dita, sul bordo: un freddo, un formicolio, la voglia di stringere qualcosa. Il resto di me arriva un attimo dopo.",
	},
	["thb.muse.w24.vertigo.011"] = {
		"coglie un orco massiccio che avanza deciso fino al bordo, guarda giù una volta sola e torna indietro altrettanto deciso, come se l'avesse previsto fin dall'inizio.",
		"nota un troll sul ciglio sporgersi con grande interesse, poi ritrarsi con interesse ancora maggiore, le zanne che si muovono come se masticasse il panorama.",
	},
	["thb.muse.w24.vertigo.012"] = {
		"Con la nebbia così fitta il vuoto non c'è più, solo bianco oltre il bordo, e le ginocchia hanno smesso di lamentarsi. Una città da cui non si vede giù è soltanto una città.",
		"La nebbia riempie lo spazio sotto ogni ciglio, e per una volta arrivo fino all'orlo senza un tremito. Quello che non vedi non ti fa girare la testa. Quasi sempre.",
	},
	["thb.muse.w24.vertigo.013"] = {
		"Dormi quassù abbastanza a lungo e sognerai di cadere, quel cadere lento in cui non si tocca mai terra. Un Bluffwatcher mi ha detto che capita a tutti, tauren compresi, e che passa.",
		"Secondo un tauren che bada ai letti, ogni ospite quassù prima o poi sogna di cadere. Cadute lente, mai un atterraggio. Mi dicono che è il modo della città di dare il benvenuto.",
	},
	["thb.muse.w24.vertigo.014"] = {
		"La cura più sicura per l'altezza è sedersi. Nessuno cade da una città stando seduto. Non l'ho verificato con nessuno, ma ci metterei la mano sul fuoco.",
		"Quando il vuoto comincia a tirare, mi siedo. Non è dignitoso e qui non importa a nessuno: metà dei tauren su quest'altura sono già seduti.",
	},
	["thb.muse.w24.vertigo.015"] = {
		"I tauren vanno fino al ciglio come io andrei fino a uno steccato. Chiederei come fanno, ma scommetto che la risposta sarebbe un lungo silenzio e uno sguardo gentile.",
		"Un tauren accanto a me si è sporto sul vuoto per vedere cosa stessi guardando, con la disinvoltura di chi si china su una pentola. Di rado ho avuto tanto la sensazione di essere un ospite.",
	},
	["thb.muse.w24.vertigo.016"] = {
		"Fai un passo indietro, per favore? Mi stai innervosendo le ginocchia.",
		"Devi proprio stare sull'orlo così? Guarda che ho una certa immaginazione.",
	},
	["thb.muse.w24.vertigo.017"] = {
		"C'è un momento sul ciglio in cui tutta la lunghezza della caduta si vede chiara, e dopo ogni cosa ordinaria, una tazza, una voce, un palo che scricchiola, sembra un po' più preziosa.",
		"Stare vicino al vuoto affila le cose. Dopo, il pane ha un sapore migliore. Non lo consiglio come metodo, ma non lo nego nemmeno.",
	},
	["thb.muse.w24.vertigo.018"] = {
		"In groppa a una viverna ho attraversato questo vuoto senza pensarci due volte. Sui miei piedi, sul ciglio, la stessa distanza mi fa le ginocchia di spago.",
		"Strano: in sella, sopra Mulgore, non lo sento mai. Mettimi sul bordo di un'altura con niente sotto i piedi se non la pietra, e la pianura comincia a ondeggiare.",
	},
	["thb.muse.w24.vertigo.019"] = {
		"Non ho paura dell'altezza. Ho paura del pezzo in fondo.",
		"L'altezza non mi spaventa. Mi spaventa quando finisce, tutta d'un colpo.",
	},
	["thb.muse.w24.vision.001"] = {
		"Qui nei Pools of Vision una tauren è rimasta in ginocchio sul bordo dell'acqua così a lungo che mi ero scordato di lei. Quando si è alzata ha solo fatto un cenno alla pozza, come si fa con chi ti ha detto una cosa difficile.",
		"Un giovane tauren è sceso fino a queste pozze, ha guardato in una e se n'è tornato su per il sentiero senza una parola. Risaliva più adagio di come era sceso.",
		"Un vecchio sciamano si è seduto accanto a me vicino alle pozze, non ha detto niente, ha visto qualcosa e mi ha dato una pacca sulla spalla uscendo. Ci penserò per giorni.",
	},
	["thb.muse.w24.vision.002"] = {
		"sta in piedi fra le pozze e ascolta una sola goccia cadere da qualche parte nel buio, poi la lunga attesa della successiva, come se la grotta contasse adagio.",
		"indugia accanto all'acqua ferma sotto l'altura, dove l'unico suono è uno stillicidio lento dalla roccia e il cerchio sottile che lascia sulla superficie.",
		"si accovaccia accanto alla pozza più vicina finché lo stillicidio dalla roccia ha scandito un silenzio lungo e senza fretta.",
	},
	["thb.muse.w24.vision.003"] = {
		"Mai guardare in queste pozze in cerca di una risposta già decisa, avvertono gli sciamani. Io non ho deciso niente. Forse è per questo che con me l'acqua resta così spenta.",
		"Queste pozze mostrano ciò di cui hai bisogno, non ciò che vuoi, o così dicono gli sciamani. A giudicare da quanto resta piatta l'acqua, mi serve molto meno di quanto credessi.",
	},
	["thb.muse.w24.vision.004"] = {
		"Se nomini un sogno davanti a un'anziana tauren, preparati: lo vorrà tutto, anche le parti noiose, e ti ringrazierà come se le avessi portato notizie da lontano.",
		"I tauren trattano un sogno come una lettera: non lo si butta via senza leggerlo, e non lo si legge da soli. Un anziano si siederà con te anche per il più sciocco.",
		"Quassù nessuno ride di un sogno. Si chinano verso di te, chiedono di che colore fosse il fiume e annuiscono come se la risposta contasse.",
	},
	["thb.muse.w24.vision.005"] = {
		"I druidi lassù su Elder Rise parlano di un sogno che non è il loro: un sogno verde, più antico del volto sveglio del mondo, dove ogni foresta è ancora come doveva essere. Ne parlano come i viaggiatori parlano di un paese attraversato una volta.",
		"Alcuni druidi di Elder Rise, mi dicono, dormono e camminano in un luogo verde e immenso, il mondo come fu sognato. Al risveglio hanno lo sguardo di chi è stato lontanissimo e non sa descrivere la strada.",
	},
	["thb.muse.w24.vision.006"] = {
		"sente per caso un vitellino che racconta un sogno a un vecchio tauren con dovizia di particolari e grande solennità, tutto su uno scarafaggio molto grosso, mentre l'anziano annuisce serio dall'inizio alla fine.",
		"sorride a un giovane tauren che descrive un sogno a una nonna paziente, la quale fa domande accurate sullo scarafaggio, come se da quello dipendesse molto.",
	},
	["thb.muse.w24.vision.007"] = {
		"'Una visione non è un quadro,' mi ha detto uno sciamano. 'Un quadro lo appendi. Una visione si alza e cammina, e tu la segui oppure no.'",
		"Gli sciamani non parlano di vedere il futuro. Parlano di vedersi indicare una via, come chi ha già passato il fiume ti mostra il guado.",
		"Quella che i tauren chiamano visione somiglia meno a una finestra e più a una mano sulla spalla, che ti gira un poco verso sinistra.",
	},
	["thb.muse.w24.vision.008"] = {
		"I giovani di Mulgore, dicono gli anziani, affrontano i loro riti prima di essere contati fra gli adulti: forza, saggezza, visione. Alcuni salgono poi sulla rupe con l'aria più alta, altri più silenziosa.",
		"Un giovane tauren appena reduce dai riti delle pianure ha attraversato l'altura come se le assi non potessero reggere ciò che ora portava. Nessuno gli ha chiesto cosa avesse visto. Tutti gli hanno fatto spazio.",
	},
	["thb.muse.w24.vision.009"] = {
		"Ho fatto una domanda semplice alla pozza. Mi ha risposto con una goccia. Scelgo di prenderlo per un sì.",
		"Bell'acqua. Immobile. Saggia, senza dubbio. Di poche parole, però.",
	},
	["thb.muse.w24.vision.010"] = {
		"I Reietti che insegnano giù accanto alle pozze se ne stanno immobili vicino all'acqua, e l'acqua resta immobile vicino a loro. Non saprei dire chi abbia imparato dall'altro.",
		"Un sacerdote dei Reietti preferisce il fresco buio vicino ai Pools of Vision. Due pazienze una accanto all'altra: una che attende una visione, l'altra che non ha più niente da attendere.",
		"Vicino a quelle pozze abitano due silenzi: quello dell'acqua e quello dei Reietti. Un anziano tauren mi ha detto che il più caldo è quello dell'acqua.",
	},
	["thb.muse.w24.vision.011"] = {
		"passa piano accanto a una vecchia sciamana addormentata su una coperta all'aperto, come fanno i tauren lì intorno: nessuno vuole essere quello che sveglia chi sogna sul più bello.",
		"nota che i passanti abbassano la voce vicino a un anziano addormentato, come se un sogno fosse una cosa fragile da portare con due mani.",
		"sceglie un passaggio più silenzioso attorno a una tenda dove qualcuno sta sognando, a giudicare da come tutti gli altri ci passano accanto in punta di zoccoli.",
	},
	["thb.muse.w24.vision.012"] = {
		"All'alba i tauren del fuoco accanto si scambiano i sogni come altrove ci si scambia le notizie, e discutono con garbo su cosa volesse dire ciascuno.",
		"Prima luce, e i vecchi tauren qui vicino confrontano i sogni sopra le loro ciotole. Uno ha sognato un kodo bianco; gli altri la prendono molto sul serio.",
	},
	["thb.muse.w24.vision.013"] = {
		"Qualcosa di questa rupe mi fa venire voglia di ricordare i miei sogni, se non altro per avere una risposta quando un tauren me lo chiede.",
		"Nella maggior parte delle città nessuno ti chiede cosa hai sognato. Qui è una domanda normale davanti a una ciotola di pappa d'avena, e mi accorgo che vorrei avere qualcosa di bello da raccontare.",
	},
	["thb.muse.w24.vision.014"] = {
		"guarda una sciamana chinarsi su una pozza e lasciarvi posare una sola piuma, poi studiare i cerchi lenti come se leggesse una pagina.",
		"vede uno sciamano sfiorare la superficie di una pozza con la punta di un dito e restare chino sulle increspature molto dopo che sono scomparse.",
	},
	["thb.muse.w24.vision.015"] = {
		"Un Bluffwatcher mi ha raccontato che una volta un anziano sognò una tenda in fiamme e mandò un messaggero a un accampamento della pianura. Il messaggero non trovò niente di strano. L'anziano ne mandò un altro la settimana dopo lo stesso. Su questa rupe un sogno non scade.",
		"Quassù nessuno liquida un brutto sogno con un gesto. Lo si racconta a qualcuno, poi si va a vedere come sta chi c'era dentro. Ho visto un cacciatore scendere con l'ascensore sulla sola parola del sogno di una nonna.",
	},
	["thb.muse.w24.vision.016"] = {
		"Non ho sognato niente di niente. È un bene o un male? Qui sembra che tutti abbiano un'opinione.",
		"Nessun sogno degno di racconto, mi spiace. Mi impegnerò di più.",
	},
	["thb.muse.w24.vision.017"] = {
		"Una visione viene di rado a chi fissa più forte, mi ha detto una sciamana. Arriva di lato, mentre ripari qualcosa, come un uccello che si posa su un recinto che avevi smesso di guardare.",
		"Le visioni di cui parlano i tauren non sembrano mai arrivare puntuali. Vengono tardi, sentite a metà, nel mezzo delle faccende, e chi le ha avute passa una stagione a capire cosa volessero dire.",
	},
	["thb.muse.w24.wandering.001"] = {
		"Gli anziani non contano gli anni del vagare in stagioni ma in mandrie: quella seguita dai genitori, quella che si assottigliò, quella che li portò a Mulgore.",
		"Chiedi a un vecchio tauren quanto camminarono le tribù: niente numeri, solo un elenco di mandrie, ognuna lunga una vita.",
		"Quassù nessuno misura il vagare in anni. Lo misurano in mandrie, e l'elenco è lungo.",
	},
	["thb.muse.w24.wandering.002"] = {
		"nota un vecchio tauren piegare la coperta come fanno i viandanti, stretta e svelta, quasi la tenda dovesse spostarsi prima di cena.",
		"osserva un anziano arrotolare la stuoia in un fagotto da portare in spalla, per un'abitudine più vecchia della città che lo circonda.",
		"si ferma a guardare un tauren infilare due o tre cose in una tracolla con mani esperte, poi ricordarsi che non deve andare da nessuna parte e disfarla con calma.",
	},
	["thb.muse.w24.wandering.003"] = {
		"Un popolo errante semina i suoi morti lungo la strada. Gli anziani di qui sanno nominare sepolture sparse per mezza Kalimdor, e quasi nessuna la possono visitare.",
		"Generazioni in cammino vogliono dire una tomba dietro ogni collina. Certi vecchi tauren, quando parlano dei morti, si voltano ancora verso un orizzonte preciso.",
		"Ogni tribù che vagava ha lasciato qualcuno sotto l'erba di un posto che non ha più rivisto. I tauren quei posti se li portano nelle parole.",
	},
	["thb.muse.w24.wandering.004"] = {
		"Generazioni passate a camminare dietro alle mandrie, e adesso le mandrie stanno molto più in basso e si cammina soprattutto in ascensore. Il progresso.",
		"I tauren hanno seguito le mandrie per mezzo continente, poi si sono fermati in un posto che le mandrie possono solo guardare dal basso. Scelta coraggiosa.",
		"Hanno lasciato la strada aperta per una città nel cielo, i tauren. Io avrei scelto un posto con le scale.",
	},
	["thb.muse.w24.wandering.005"] = {
		"Le antiche piste delle mandrie sopravvivono nel parlare dei tauren: indicano la strada secondo dove un tempo l'erba era buona, non secondo le strade.",
		"Un tauren mi ha spiegato come arrivare nei Barrens seguendo le vecchie piste delle mandrie. Metà dei punti di riferimento erano pozze prosciugate da generazioni.",
		"Qui se chiedi la strada te la possono dare in pascoli: due prati buoni verso est, poi la sorgente che un tempo era dolce.",
	},
	["thb.muse.w24.wandering.006"] = {
		"Gli anziani raccontano che negli anni del vagare le mandrie si diradarono, e le tribù con loro. Quando i tauren parlano di abbondanza abbassano la voce, come se potesse sentirli e andarsene.",
		"Anni magri, li chiamano i vecchi tauren: meno mandrie, cammini più lunghi, fuochi più piccoli. Lo dicono senza amarezza, e in qualche modo è peggio.",
	},
	["thb.muse.w24.wandering.007"] = {
		"sente un anziano recitare a un giovane tauren i nomi dei vecchi luoghi di sosta, uno dopo l'altro, come altri popoli recitano i loro re.",
		"ascolta un vecchio tauren elencare, adagio e in ordine, ogni posto dove la tribù piantò le tende, mentre un ragazzino cerca di tenere il conto sulle dita tozze.",
		"coglie un elenco che un anziano insegna a due piccoli: un guado, una collina, un letto di torrente secco, un altro guado, tutta la strada di una tribù in nomi semplici.",
	},
	["thb.muse.w24.wandering.008"] = {
		"Guarda dove si siedono i tauren attorno a un fuoco: sempre in modo da vedere oltre, verso la pianura aperta. Abitudini di vecchi viandanti, direi.",
		"Per quanto in alto abbiano costruito, i tauren si siedono ancora rivolti verso l'esterno. Un popolo che ha camminato tanto non volta mai del tutto le spalle all'orizzonte.",
		"Qui ogni cerchio attorno al fuoco lascia un varco dalla parte del bordo. Nessuno lo spiega. L'abitudine sembra più vecchia della città.",
	},
	["thb.muse.w24.wandering.009"] = {
		"Il nostro popolo camminò, dicono gli anziani, finché la terra non gli disse di fermarsi. A me la terra non ha mai detto niente, ma credo proprio che disse questo.",
		"Abbiamo vagato a lungo prima delle alture. Certi giorni la vecchia strada mi tira ancora, come se nessuno le avesse detto che il cammino è finito.",
		"Il mio popolo si è portato tutto addosso per generazioni. Su una pietra che nessuno dovrà mai caricarsi in spalla mi sento {g:leggero|leggera} più di quanto sappia spiegare.",
	},
	["thb.muse.w24.wandering.010"] = {
		"Negli anni del vagare, raccontano gli anziani, un tauren possedeva solo quello che poteva portarsi addosso. Viste le dimensioni di un tauren, era comunque parecchio.",
		"Un tempo un tauren possedeva solo ciò che riusciva a portare, mi dicono i vecchi. Ho visto quanto riesce a portare un tauren: non mi pare una gran rinuncia.",
	},
	["thb.muse.w24.wandering.011"] = {
		"si ferma accanto a una rastrelliera di bastoni da cammino fuori da una tenda, le impugnature consumate da mani che non ci sono più, conservati ben oltre la fine del vagare.",
		"nota un vecchio bastone da viaggio appeso sopra l'ingresso di una tenda come un trofeo, il puntale ridotto a un moncone da strade che la città non ha mai visto.",
		"si sofferma a guardare un anziano appoggiare un lungo bastone da cammino all'ingresso di una tenda, come pronto a partire, anche se quel bastone non lascia la città da anni.",
	},
	["thb.muse.w24.wandering.012"] = {
		"Mi hanno raccontato che un tempo le tribù si incontravano solo quando le mandrie si incrociavano, pochi giorni in un anno lungo. Adesso vivono a una campata di corda l'una dall'altra, e si salutano ancora come dopo una stagione intera.",
		"Prima della città, dicono gli anziani, due tribù potevano vedersi una volta l'anno, dove le mandrie si incrociavano. Vecchie abitudini: quassù ogni saluto ha il suono di un ritrovarsi.",
	},
	["thb.muse.w24.wandering.013"] = {
		"Chiedi a un anziano degli anni del vagare, poi siediti. Poi mettiti a tuo agio. Poi rinuncia a tutti i tuoi programmi.",
		"Un anziano ha appena cominciato a raccontarmi del lungo vagare. Ho il sospetto che il racconto durerà quanto il cammino.",
		"Mai chiedere a un anziano tauren da dove vengono le tribù, se prima non hai mangiato.",
	},
	["thb.muse.w24.wandering.014"] = {
		"Non tutte le tribù che vagavano sono venute alle alture. I tauren nominano quelle che presero un'altra strada con la cura che si riserva a un nome che fa ancora male.",
		"Delle tribù che presero altre strade si parla di rado, e sempre con delicatezza, come di un parente che a un certo punto ha smesso di scrivere.",
	},
	["thb.muse.w24.wandering.015"] = {
		"Qui su Elder Rise i tauren più vecchi siedono a parlare del vagare come se fosse finito la stagione scorsa. Per loro, credo, è quasi così.",
		"Su questa altura gli anziani parlano di erba aperta e di accampamenti in movimento senza nessuna distanza nella voce. La città è giovane; i loro ricordi no.",
		"Su Elder Rise il passato è a portata di mano. Un vecchio tauren accanto a me ha appena raccontato il guado di un fiume come se avesse ancora l'acqua addosso.",
	},
	["thb.muse.w24.wandering.016"] = {
		"Thunder Bluff è più giovane di gran parte dei tauren che la abitano. Quasi ogni tauren adulto qui ricorda di aver dormito sull'erba aperta.",
		"Con tutti i suoi vecchi totem, questa è una città giovane. I tauren che alzarono le prime tende ci passano ancora davanti portando l'acqua.",
		"Strano a pensarci: la città è più recente delle crepe negli zoccoli degli anziani.",
	},
	["thb.muse.w24.wandering.017"] = {
		"Tuoni sulla pianura. Gli anziani dicono che, negli anni del vagare, un temporale nell'erba aperta voleva dire un lungo cammino al freddo e nessun riparo. Quassù lo ascoltano come una storia vissuta sulla propria pelle.",
		"Lampi che camminano su Mulgore, e un vecchio tauren accanto a me racconta che un tempo le tribù ci andavano sotto a testa bassa, senza fermarsi. Adesso si limita a guardare.",
	},
	["thb.muse.w24.wandering.018"] = {
		"Pioggia sulle pelli, e il tauren accanto a me osserva che negli anni del vagare le tribù camminavano sotto acquazzoni così senza fermarsi. Ha tutta l'aria di un vanto.",
		"La pioggia batte sulle tende e un anziano dice, senza rivolgersi a nessuno, che un tetto è una gran cosa per un popolo che ne ha fatto a meno così a lungo.",
	},
	["thb.muse.w24.wandering.019"] = {
		"guarda un vecchio tauren sbriciolare tra due dita un pizzico di terra da un vaso accanto alla tenda e annusarlo, come un tempo i pastori giudicavano un pascolo nuovo.",
		"vede, poco lontano, un anziano posare il palmo aperto sulla nuda pietra dell'altura e tenercelo, come un viandante che saggia se il terreno è buono per accamparsi.",
		"intravede un vecchio tauren fermarsi sul bordo, annusare l'aria che sale dalla pianura e annuire, come facevano i pastori prima di scegliere dove andare.",
	},
	["thb.muse.w24.wandering.020"] = {
		"si sofferma a guardare un tauren rammendare una vecchia bardatura da traino che nessuno tira più da anni, e ungerne il cuoio lo stesso.",
		"nota sotto la gronda di una tenda un paio di vecchie stanghe da viaggio, legate e conservate come altri popoli conservano l'anello di un nonno.",
		"sente per caso un ragazzino chiedere a cosa servisse un vecchio telaio da traino accanto alla tenda, e un anziano rispondere con una storia invece che con una parola.",
	},
	["thb.muse.w24.wandering.021"] = {
		"Le tende dei tauren si smontano in un attimo. Le loro conversazioni, mai.",
		"Generazioni passate in viaggio, e scommetto che non hanno mai affrettato un addio, nemmeno una volta.",
	},
	["thb.npc_meet.w24.asker.001"] = {
		"viene {g:invitato|invitata} a sedersi prima di qualsiasi richiesta, e scopre che la domanda aspetta che si sia davvero {g:sistemato|sistemata}.",
		"si vede indicare un posto a terra con una mano aperta: a quanto pare, la richiesta non si può fare a chi sta in piedi.",
		"si abbassa sulla stuoia offerta, e solo allora chi ha da chiedere si sporge in avanti e comincia.",
	},
	["thb.npc_meet.w24.asker.002"] = {
		"Mi guarda, poi guarda la terra fra noi, poi di nuovo me. Qualunque cosa stia per arrivare, è stata portata a lungo.",
		"Prima della domanda, un lungo sguardo oltre la mia spalla, verso qualcosa che non vedo. Certe richieste vanno sollevate prima di poterle consegnare.",
	},
	["thb.npc_meet.w24.asker.003"] = {
		"Ti ascolto. Prendila pure alla larga, se serve: ti seguo.",
		"Hai un peso addosso. Posalo qui, e vediamo quanto ne posso portare.",
		"{other}. Mi cercavi, credo. Eccomi.",
	},
	["thb.npc_meet.w24.asker.004"] = {
		"viene {g:studiato|studiata} a lungo da chi ha qualcosa da chiedere: lo sguardo passa dagli stivali allo zaino al viso, e lì si ferma.",
		"sostiene una valutazione lunga e franca prima che la richiesta venga fatta, quella che un mandriano riserva a una bestia prima di un lungo cammino.",
	},
	["thb.npc_meet.w24.asker.005"] = {
		"Prima di chiedere si scusa, con una scusa profonda e formale per il disturbo della domanda stessa. E il disturbo non l'ho ancora nemmeno sentito.",
		"Prima le scuse, lente e gravi, per il peso imposto a un ospite. Poi, e solo poi, il peso.",
	},
	["thb.npc_meet.w24.asker.006"] = {
		"Nessuna fretta. Io resto qui. E, a quanto vedo, anche tu.",
		"Vai pure, ho trovato posto. Raccontala dall'inizio: si vede che ne hai voglia.",
		"Prima che cominci: è una di quelle richieste per cui conviene sedersi?",
	},
	["thb.npc_meet.w24.asker.007"] = {
		"accoglie la richiesta con la propria mano chiusa fra due mani enormi, una stretta che aspetta una risposta prima di sciogliersi.",
		"si ritrova la mano presa in una molto più grande quando la domanda comincia, tenuta con dolcezza e fermezza, come si tiene una promessa.",
	},
	["thb.npc_meet.w24.asker.008"] = {
		"Mi chiede aiuto come si chiede a un alleato, non a un mercenario. È la fiducia su cui si regge l'Orda, e intendo meritarla.",
		"Niente monete sul tavolo, niente trattative. Solo l'Orda che chiede all'Orda. Scopro che non mi serve altro.",
	},
	["thb.npc_meet.w24.asker.009"] = {
		"sente la domanda cominciare, interrompersi e ricominciare con altre parole, come alla ricerca di un modo di chiedere che non metta in imbarazzo nessuno dei due.",
		"aspetta mentre ogni parola della richiesta viene scelta con cura evidente, posata, ripresa, e sostituita da un'altra.",
	},
	["thb.npc_meet.w24.asker.010"] = {
		"C'è una stanchezza nel modo in cui me lo chiede, come se fosse già stato chiesto ad altri prima di me, e non tutti fossero tornati.",
		"Molta calma. Troppa: la calma di chi ha già conosciuto una delusione.",
		"Qualunque cosa sia, non è nuova. La domanda ha gli spigoli lisci delle cose portate a lungo.",
	},
	["thb.npc_meet.w24.asker.011"] = {
		"nota come le spalle si sistemino e gli zoccoli si piantino prima della domanda, pronti per una richiesta lunga, e si prepara di conseguenza.",
		"osserva una grande mano lisciare un lembo di pelle già liscio, due volte, prima che la richiesta cominci.",
	},
	["thb.npc_meet.w24.asker.012"] = {
		"Qui la gente non chiede aiuto: ti offre l'occasione di darlo. È una differenza sottile, e con me funziona sempre.",
		"La richiesta suona come un onore che mi viene concesso. Il trucco lo conosco benissimo, e ci cascherò lo stesso.",
	},
	["thb.npc_meet.w24.hearth.001"] = {
		"si sente chiedere il nome da chi tiene la locanda, lo dice, e lo sente ripetere una volta, con cura, come una cosa riposta al sicuro.",
		"dice il proprio nome alla domanda di chi gestisce la locanda e lo ascolta ripetere piano, ogni suono pesato e conservato.",
		"risponde alla prima domanda di chi tiene la locanda, che non riguarda le monete ma il nome con cui {g:chiamarlo|chiamarla}.",
	},
	["thb.npc_meet.w24.hearth.002"] = {
		"Chi tiene la locanda dice che, se voglio, questo può diventare il mio focolare. Detto così, piano e semplice, sembra meno un servizio e più un'offerta.",
		"Legare qui la mia pietra del focolare? La domanda arriva come se fosse vera, con una risposta vera, e la risposta viene aspettata.",
		"Fissare il focolare presso una locanda tauren, scopro, comporta una pausa abbastanza lunga da cambiare idea due volte. Non l'ho cambiata.",
	},
	["thb.npc_meet.w24.hearth.003"] = {
		"Un letto, per favore, e quello che daresti a un ospite stanco di parlare.",
		"C'è posto per un altro ospite? Faccio poco rumore, tengo in ordine, e me ne vado prima che tu te ne accorga.",
	},
	["thb.npc_meet.w24.hearth.004"] = {
		"accetta una tazza da chi tiene la locanda, riempita da un otre che pareva aspettare vicino all'ingresso proprio per questo.",
		"riceve una coppa di corno piena d'acqua fresca prima ancora di una parola d'affari, e la locanda aspetta, paziente, che venga bevuta.",
		"prende l'acqua versata senza bisogno di chiedere, e nota che la tazza è stata scelta piccola, per la mano di un ospite.",
	},
	["thb.npc_meet.w24.hearth.005"] = {
		"Sanno di foglie pestate e di sego, le mani di chi tiene la locanda. Qualunque cosa stessero facendo prima del mio arrivo, la facevano bene.",
		"C'è polvere di radici nelle pieghe di quelle mani grandi. Dietro i tendaggi si sta macinando qualcosa per più tardi.",
	},
	["thb.npc_meet.w24.hearth.006"] = {
		"Un posto tranquillo dove posare lo zaino, e nient'altro. Mi accontento di poco.",
		"Qual è il lato più quieto? Per una volta vorrei sentirmi pensare.",
		"{other}, prendo quello che c'è di libero, e con gratitudine.",
	},
	["thb.npc_meet.w24.hearth.007"] = {
		"si sente spiegare quali stuoie stanno al riparo dagli spifferi, quali scricchiolano e quale appartiene a un ospite che torna sempre.",
		"ascolta chi tiene la locanda descrivere il posto in poche parole lente: dove dormire, dove lavarsi, dove non mettere i piedi.",
	},
	["thb.npc_meet.w24.hearth.008"] = {
		"Ho offerto subito le monete. Chi tiene la locanda le ha guardate, poi ha guardato me, come se avessi risposto a una domanda che nessuno aveva fatto.",
		"Il pagamento viene dopo, a quanto pare. Prima ci si siede. In questa città sto ancora imparando l'ordine delle cose.",
		"Del prezzo non si è parlato. Comincio a sospettare che il prezzo sia rallentare.",
	},
	["thb.npc_meet.w24.hearth.009"] = {
		"si vede togliere la polvere da una spalla con una mano larga, un gesto fatto senza commenti e mai spiegato.",
		"sente una mano enorme posarsi un attimo sulla spalla, pesante e breve, prima che il discorso passi alle coperte.",
	},
	["thb.npc_meet.w24.hearth.010"] = {
		"Chi tiene la locanda mi accoglie come la nostra gente accoglie chi torna dalle pianure: nessuna domanda, prima una coperta.",
		"Casa è dove qualcuno stende una coperta prima che tu la chieda. Qui è già stata stesa.",
		"Fra i nostri, finalmente. L'accoglienza di chi tiene la locanda non chiede niente, ed è tutta qui.",
	},
	["thb.npc_meet.w24.hearth.011"] = {
		"riceve una coperta di lana tessuta, a fasce color ruggine e ocra, con l'invito a sceglierne un'altra se questa non piace.",
		"ha davanti due coperte fra cui scegliere, e chi tiene la locanda aspetta la scelta come se contasse davvero.",
	},
	["thb.npc_meet.w24.hearth.012"] = {
		"Grazie. No, davvero, bastava l'acqua. E va bene, un po' di quella cosa lì.",
		"Tieni bene questo posto, {other}. Quiete, e nessuno che mi metta fretta.",
		"Torno presto. Tienimi l'angolo vicino al palo, se non è un disturbo.",
	},
	["thb.npc_meet.w24.hearth.013"] = {
		"Mentre parliamo rammenda una pelle, senza fermarsi. Eppure i punti non tolgono niente all'ascolto.",
		"Nel mezzo del benvenuto continua a dividere radici secche in due cesti, e mi spiega tutto quello che serve senza sbagliare un solo cesto.",
		"A ogni domanda una risposta completa, e le mani non smettono di lavorare. Negli uffici di altre città non riescono a fare né l'una né l'altra cosa.",
	},
	["thb.npc_meet.w24.roostkeep.001"] = {
		"trova chi governa le viverne intento a grattare una bestia sotto la mascella, a cerchi lenti, e riceve un saluto solo quando la bestia ne ha avuto abbastanza.",
		"aspetta mentre chi custodisce il posatoio passa un pollice lungo il bordo di un'ala, tastando la membrana in cerca di strappi, palmo dopo palmo.",
		"deve aspettare che una viverna imbronciata si lasci convincere da un lungo mormorio basso e da una striscia di carne.",
	},
	["thb.npc_meet.w24.roostkeep.002"] = {
		"Chi governa il posatoio parla alle viverne con frasi intere e a me con parole singole. So qual è il mio posto.",
		"Ho fatto una domanda. La risposta, lunga e dettagliata, l'ha avuta la viverna più vicina; io ho avuto un cenno.",
	},
	["thb.npc_meet.w24.roostkeep.003"] = {
		"Quale di queste è di buon umore? ...Nessuna? Mai? D'accordo.",
		"Salve a te, e salve a quella che mi fissa storta. Soprattutto a quella.",
		"{other}, quella mi guarda sempre così, o sono un caso speciale?",
	},
	["thb.npc_meet.w24.roostkeep.004"] = {
		"nota gli avambracci di chi governa le viverne, attraversati da vecchi graffi chiari, e la disinvoltura con cui si posano comunque sul collo di una bestia.",
		"gira intorno alla paglia fresca che viene sparsa sotto i trespoli, stesa con la stessa cura con cui si raccoglie la brace.",
	},
	["thb.npc_meet.w24.roostkeep.005"] = {
		"Le bestie si calmano al passaggio, una dopo l'altra, come una fila di lampade abbassate.",
		"Ogni viverna sui trespoli volge un orecchio verso quella voce. Non ho mai visto niente essere ascoltato così completamente.",
		"Una frase canticchiata, bassa, e la bestia inquieta in fondo alla fila si acquieta. Mi piacerebbe imparare a farlo, e sospetto di non poterci riuscire.",
	},
	["thb.npc_meet.w24.roostkeep.006"] = {
		"subisce da chi governa il posatoio lo stesso esame riservato alle bestie: spalle, mani, la presa degli stivali, e poi un cenno verso i trespoli.",
		"si sottopone a una breve ispezione: cinghie e fibbie controllate dalle stesse dita grosse che lavorano sui finimenti.",
	},
	["thb.npc_meet.w24.roostkeep.007"] = {
		"Su un palo vicino ai trespoli c'è un conto inciso, tacche in fila. Non chiedo cosa conti. Decido che sono atterraggi, e che sono tanti.",
		"Incise sul palo accanto ai trespoli: tacche, decine e decine. Voli, spero. Lo preferisco alle alternative.",
	},
	["thb.npc_meet.w24.roostkeep.008"] = {
		"Belle bestie, tutte. Si vede che qualcuno se ne prende cura.",
		"Tratterò con garbo quella che mi darai. Diglielo da parte mia.",
	},
	["thb.npc_meet.w24.roostkeep.009"] = {
		"si ferma mentre chi governa il posatoio si china all'orecchio di una viverna e dice qualcosa troppo piano per sentirlo; la bestia risponde chiudendo piano gli occhi.",
		"osserva togliere una lappola dalla criniera di una viverna e lanciarla via senza guardare.",
		"vede una fronte appoggiata per un attimo contro il largo cranio di una bestia, prima che l'attenzione passi, finalmente, a chi aspetta.",
	},
	["thb.npc_meet.w24.tutor.001"] = {
		"deve stare immobile davanti a chi insegna per un lungo momento, poi fare dieci passi e tornare, prima che venga detta una sola parola della lezione.",
		"comincia la lezione facendosi osservare: come sta in piedi, come posa i piedi, quanto a lungo regge il silenzio.",
		"si sottopone alla prima prova, che consiste semplicemente nell'aspettare, senza muoversi, finché non arriva un cenno.",
	},
	["thb.npc_meet.w24.tutor.002"] = {
		"Mi ha corretto con la punta di un dito sulla spalla, premendo appena. Nient'altro. Era esattamente giusto.",
		"Nessuna predica. Un solo tocco sul gomito, una piccola spinta, e all'improvviso tutto sta in un altro modo. Detesto quanto funzioni.",
		"La correzione era così piccola che per poco non me ne accorgevo. Il corpo, invece, se n'è accorto.",
	},
	["thb.npc_meet.w24.tutor.003"] = {
		"{g:Pronto|Pronta}. Più o meno. Mostrami, e ti terrò dietro.",
		"Insegnami quello che pensi che io possa reggere, {other}. Poi chiederò di più.",
		"Andiamo piano. Preferisco imparare una volta sola che imparare male.",
	},
	["thb.npc_meet.w24.tutor.004"] = {
		"deve prima mostrare quello che sa già, sotto uno sguardo che non si perde niente e non loda niente.",
		"esegue per chi insegna tutto ciò che sa, dall'inizio alla fine, e riceve in cambio un lungo silenzio che sembra di quelli buoni.",
	},
	["thb.npc_meet.w24.tutor.005"] = {
		"Ho chiesto se l'avevo fatto bene. Il sì è arrivato così tardi che avevo già cominciato a farlo diversamente.",
		"La lode, da queste parti, è un lento abbassarsi delle palpebre. Ne ho ricevuto uno. Ho deciso di andarne molto {g:fiero|fiera}.",
		"Un cenno della testa, uno solo. Ho deciso che sono applausi.",
	},
	["thb.npc_meet.w24.tutor.006"] = {
		"incontra, al riparo di una tenda tauren, una figura scarna dei Reietti che insegna con voce secca e con la stessa pazienza di chi la ospita.",
		"trova fra i tauren qualcuno dei Reietti che insegna, stranamente a proprio agio, e riceve una lezione senza fretta, come tutto in questa città.",
	},
	["thb.npc_meet.w24.tutor.007"] = {
		"Mi fa ripetere il movimento finché smette di essere qualcosa che faccio e diventa qualcosa che i piedi sanno già.",
		"Dieci volte. Venti. Mai una parola per dire che è sbagliato, solo un cenno per la successiva. Verso la trentesima, la mossa è mia.",
	},
	["thb.npc_meet.w24.tutor.008"] = {
		"Come l'ultima volta? Farò finta di ricordare l'ultima volta alla perfezione.",
		"Potresti dirmelo, se sto peggiorando. Preferisco un indizio a un lungo silenzio pieno di significato.",
		"Quel silenzio. Buono o cattivo? Sto ancora imparando a distinguerli.",
	},
	["thb.npc_meet.w24.tutor.009"] = {
		"si sente dire di posare una mano aperta sulle assi e sentire come si muove la città prima di cominciare, e lo fa, sentendosi un po' {g:sciocco|sciocca}.",
		"preme un palmo a terra a un cenno e ce lo tiene, senza che venga data una ragione, finché non arriva un segno d'assenso.",
	},
	["thb.npc_meet.w24.tutor.010"] = {
		"Chi insegna fa come insegnano i nostri anziani: mostra, aspetta, mostra, aspetta, e si fida che chi impara faccia da sé il resto della strada.",
		"Fra i nostri, una lezione è un dono fra pari. Mi viene porta così, e così la ricevo.",
	},
	["thb.npc_meet.w24.tutor.011"] = {
		"paga chi insegna, e le monete vengono prese senza uno sguardo: gli occhi restano su di {g:lui|lei}.",
		"consegna il compenso e lo vede sparire in un borsello, mentre l'attenzione resta, senza interruzioni, sulla sua postura.",
		"salda la lezione e vede il pagamento accolto come una formalità, con gli occhi altrove: sulle sue mani.",
	},
	["thb.npc_meet.w24.tutor.012"] = {
		"Qualunque cosa insegni, la prima lezione è sempre la stessa: smettila di agitarti. In quella sto migliorando.",
		"Prima di tutto, ha aspettato che le mie mani stessero ferme. Ci è voluto più di quanto mi piaccia ammettere.",
		"Ho imparato più dal punto in cui mi è stato detto di mettermi che da qualsiasi parola detta ad alta voce.",
	},
	["thb.npc_meet.w24.tutor.013"] = {
		"Grazie. Lo eserciterò finché non diventa noioso.",
		"Tornerò quando ce l'avrò nelle mani, non solo in testa.",
		"{other}, non lo sprecherò. Qualunque cosa ti sia costato insegnarmelo.",
	},
	["thb.npc_meet.w24.vault.001"] = {
		"osserva il deposito annotato su un registro di pelle cucita, lo stilo premuto così piano che ogni cifra sembra incisa.",
		"vede i suoi averi registrati uno per uno in un libro pesante rilegato in cuoio, ogni riga tracciata prima di essere scritta.",
		"resta in attesa: si scrive, si rilegge la riga sottovoce, e solo allora si passa alla successiva.",
	},
	["thb.npc_meet.w24.vault.002"] = {
		"Ho consegnato una fibbia incrinata. È stata esaminata da ogni lato, poi registrata come se fosse una corona.",
		"Le mie cianfrusaglie vengono trattate con grave rispetto. Quasi vorrei chiedere scusa al cucchiaio storto.",
		"Tutta la mia fortuna, sul banco, è una manciata di monete e un po' di spago. È stata accolta come un tributo.",
	},
	["thb.npc_meet.w24.vault.003"] = {
		"C'è ancora tutto quello che ho lasciato? Certo che sì. Mi piace solo sentirmelo dire.",
		"Un deposito, per favore. E magari non guardare troppo da vicino l'ultima cosa.",
		"{other}, ricordi cosa ho lasciato l'ultima volta? ...Esattamente? Questo sì che inquieta.",
	},
	["thb.npc_meet.w24.vault.004"] = {
		"vede aprire un baule per le sue cose, le cinghie di cuoio grezzo slacciate una per una e riallacciate nello stesso ordine.",
		"consegna un fagotto che viene accolto a palmi aperti, come a pesare non la merce ma la fiducia che l'accompagna.",
	},
	["thb.npc_meet.w24.vault.005"] = {
		"Chi tiene il banco non ha fretta, e così nemmeno i miei pensieri. Per la durata di un deposito, non devo essere da nessuna parte.",
		"Guardare una mano attenta riporre le mie cose me le fa sembrare, per una volta, degne di essere conservate.",
		"La quiete del banco è contagiosa. Volevo solo lasciare qualche ingombro, e mi ritrovo a pensare.",
	},
	["thb.npc_meet.w24.vault.006"] = {
		"riceve l'unico oggetto chiesto e, insieme, uno sguardo lento e muto verso tutto il resto che non ha chiesto.",
		"ritira un fagotto e si sente ricordare, da un dito posato sul registro, altri tre lasciati lì da parecchio.",
		"chiede una cosa in deposito e aspetta mentre la si cerca senza fretta, sollevando ogni fagotto e rimettendolo esattamente al suo posto.",
	},
	["thb.npc_meet.w24.vault.007"] = {
		"In questa città anche la banca va al passo degli anziani. Il mio oro non è mai stato così tranquillo.",
		"Le mie monete ricevono la stessa attenzione paziente che un anziano riserva a un racconto. Dev'essere il rame più rispettato di Kalimdor.",
	},
	["thb.npc_meet.w24.vault.008"] = {
		"Grazie di tenerlo al sicuro. So che non è granché.",
		"Solo il borsello piccolo, per favore. Il resto può restare con te ancora un po'.",
		"Tieni il conto delle mie cose meglio di me. Non è un complimento per me.",
	},
	["thb.npc_meet.w24.vault.009"] = {
		"tocca una volta, leggermente, su invito, il baule chiuso prima che venga riportato fra gli altri.",
		"osserva un pollice premuto sul coperchio del baule appena chiuso, come a sigillarlo con qualcosa di più di un chiavistello.",
	},
	["thb.npc_meet.w24.wares.001"] = {
		"posa le monete su una bancarella tauren, dove una mano aperta soppesa il mucchio prima e lo conta solo dopo, come per controllare la mano.",
		"osserva le sue monete versate in una ciotola d'argilla bassa e guardate lì, senza toccarle, prima del cenno d'assenso.",
		"paga, e vede le monete scivolare una per una in un borsello di pelle morbida, spinte da dita troppo grandi per il lavoro e bravissime a farlo.",
	},
	["thb.npc_meet.w24.wares.002"] = {
		"Prima di vendermi il coltello, mi si chiede a cosa serve. Rispondo: a tagliare corde. A quanto pare è la risposta giusta.",
		"Vuole sapere cosa rammenderò con quell'ago. Non mi aspettavo di dover dare spiegazioni sulle mie calze.",
	},
	["thb.npc_meet.w24.wares.003"] = {
		"E il prezzo? ...Detto una volta, ed è quello. Capisco. Affare fatto.",
		"Ce l'hai più piccolo? No, più piccolo ancora. Ancora un po'. Ecco, perfetto.",
		"Volevo contrattare. Poi mi hai guardato. Pago quello che hai detto.",
	},
	["thb.npc_meet.w24.wares.004"] = {
		"si vede mostrare una per una le giare d'argilla della bancarella: coperchio alzato, contenuto nominato, coperchio rimesso, e solo allora la successiva.",
		"viene a sapere dove è stata scavata ogni radice nelle ceste, con il colle di ciascuna, anche se aveva chiesto di una sola.",
	},
	["thb.npc_meet.w24.wares.005"] = {
		"Un mercante goblin mi avrebbe già venduto tre cose. Qui mi stanno ancora raccontando della prima, e chissà perché mi piace.",
		"La proposta, se così si può chiamare, è un lungo racconto sommesso sulla provenienza del cuoio. Compro, e non so bene perché.",
	},
	["thb.npc_meet.w24.wares.006"] = {
		"riceve in assaggio una striscia di carne secca dal borsello di chi vende, un assaggio prima degli affari, e del prezzo non si parla finché non è finita.",
		"accetta un pizzico di qualcosa di secco e pungente da quel palmo enorme, e la contrattazione, per quel che è, aspetta educata.",
	},
	["thb.npc_meet.w24.wares.007"] = {
		"E questo a cosa serve? Dai, la versione lunga. Non ho fretta.",
		"{other}, prendo il fascio di filo e la storia che ci va insieme.",
		"Prezzo onesto. Non ti offendo mettendomi a discutere.",
	},
	["thb.npc_meet.w24.wares.008"] = {
		"Cucchiai di corno, punteruoli d'osso, un pettine intagliato in qualcosa che preferisco non identificare. Qui tutto è stato vivo, e niente è andato sprecato.",
		"Su questo banco non si butta via niente: il corno è una tazza, l'osso un ago, il tendine un filo. Si vende la bestia intera, pezzo per pezzo, con cura.",
	},
	["thb.npc_meet.w24.wares.009"] = {
		"allunga la mano verso un oggetto sul banco e si ferma, perché un dito si è alzato, molto lentamente, e non si è ancora abbassato.",
		"incassa con garbo un rifiuto: l'articolo non è pronto, viene detto, e lo si rimette ad asciugare finché non sarà finito.",
	},
	["thb.npc_meet.w24.wares.010"] = {
		"Su questo banco è tutto a misura di tauren. Ho in mano un paio di guanti che sembrano due sacchi vuoti, e mi dicono che si restringeranno.",
		"Mi assicurano che gli stivali andranno bene. Andrebbero bene a me e a un amico, comodi, tutti e due insieme.",
	},
	["thb.npc_meet.w24.wares.011"] = {
		"conclude un acquisto e se lo vede porgere con tutte e due le mani, tese insieme, come si consegna una cosa che conta.",
		"riceve la merce con un piccolo inchino delle corna, come se la vendita fosse un dono che per caso costa qualcosa.",
	},
	["thb.npc_meet.w24.wares.012"] = {
		"Conta sulle dita grosse, muovendo le labbra, e arriva a un numero che nessuno qui si sognerebbe di discutere. Io meno di tutti.",
		"Quassù i prezzi non si gridano. Ci si arriva, piano, ad alta voce, e poi sono semplicemente veri.",
		"Ho proposto un prezzo più basso. Ci ha pensato così a lungo che l'ho ritirato per l'imbarazzo.",
	},
	["thb.npc_meet.w24.wares.013"] = {
		"Questo si indossa o si appende a un palo? Sinceramente non lo capisco.",
		"Lo prendo. No, non serve incartarlo. Va bene, incartalo. Fai pure con calma.",
	},
	["thb.npc_meet.w24.wares.014"] = {
		"aspetta che chi vende finisca di infilare un filo di perline per il cliente di prima: ogni perla scelta, sollevata, osservata, tenuta o rimessa giù.",
		"trova la bancarella ordinata per colore invece che per tipo: tutti i rossi insieme, corno, cuoio e argilla senza distinzione.",
		"si ferma a un banco dove ogni oggetto porta un pezzetto di cordino annodato, e i nodi vengono letti ad alta voce come prezzi.",
	},
	["thb.npc_meet.w24.wares.015"] = {
		"Chi vende dà un'occhiata al mio zaino vecchio e, in silenzio, mette accanto alla merce una cinghia e una lesina: non le offre, le rende disponibili.",
		"Senza una parola, accanto a quello che cercavo spunta un rotolo di stringhe nuove. Lo stato dei miei stivali non è passato inosservato.",
		"Cercavo una cosa sola. Chi vende ha visto quella che mi servirà dopo e me l'ha messa a portata di mano, senza dire niente. Ed è servito.",
	},
	["thb.npc_meet.w24.wares.016"] = {
		"Prendo le erbe. No, quelle calmanti no. In me non è rimasto niente da calmare, temo.",
		"Non serve fare un passo indietro. Non mordo, e ormai non puzzo più della conceria.",
	},
	["thb.npc_meet.w24.watch.001"] = {
		"rallenta accanto a un Bluffwatcher: uno sguardo al viso, uno alle mani, e gli occhi della guardia tornano al passaggio.",
		"riceve dalla guardia di posta un'occhiata sola: viso, mani, cintura, e via, senza che la testa si giri di un dito.",
		"passa sotto gli occhi di una guardia che ne legge la figura dagli stivali alla fronte e non trova niente che meriti un secondo sguardo.",
	},
	["thb.npc_meet.w24.watch.002"] = {
		"Ho chiesto alla guardia la strada per la banca. La risposta è stata una rotazione della testa così lenta che ho fatto in tempo a dubitare della domanda.",
		"Un Bluffwatcher dà indicazioni con un'inclinazione delle corna. Si impara presto a seguire le corna.",
		"La guardia ha indicato col mento. Su una stazza così un mento copre parecchio terreno, eppure il posto l'ho trovato.",
	},
	["thb.npc_meet.w24.watch.003"] = {
		"La casa d'aste? Oltre te, e poi da che parte? ...Tutto qui? Grazie.",
		"Non serve accompagnarmi. Indica un'altra volta, più piano, e me la cavo.",
		"Ti siedi mai, quassù, o è contro le regole?",
	},
	["thb.npc_meet.w24.watch.004"] = {
		"aspetta mentre la guardia riallaccia una cinghia allentata al polso senza mai abbassare gli occhi, fissi sul passaggio per tutto il tempo.",
		"si scansa mentre il Bluffwatcher rifà la legatura consumata dell'impugnatura: le dita lavorano a memoria, lo sguardo resta sulla strada.",
	},
	["thb.npc_meet.w24.watch.005"] = {
		"Le braccia della guardia portano segni d'ocra vecchia, sbiaditi dove sfrega la cinghia dell'arma. Molti anni allo stesso posto, a occhio.",
		"Pittura sugli avambracci del Bluffwatcher, sbiadita fino al color ruggine tranne sotto il bracciale. Qualcuno la rinnova, ma di rado.",
		"Linee sbiadite di terra rossa sul viso della guardia. Non so leggerle, e preferisco non tirare a indovinare ad alta voce.",
	},
	["thb.npc_meet.w24.watch.006"] = {
		"vede un Bluffwatcher farsi da parte per un anziano curvo e poi tornare sulla stessa identica tavola, come se il posto fosse misurato al dito.",
		"nota la guardia cedere il passo a un vecchio tauren col bastone e riprendere la posizione esatta, senza scostarsi di un palmo.",
	},
	["thb.npc_meet.w24.watch.007"] = {
		"Due Bluffwatcher allo stesso posto: uno canticchia piano, l'altro tace con intenzione. Credo sia una lite, e credo vada avanti da anni.",
		"Una guardia canticchia, l'altra no, e nessuna delle due guarda la compagna. Ho idea di essere {g:capitato|capitata} in mezzo a un litigio più vecchio di me.",
	},
	["thb.npc_meet.w24.watch.008"] = {
		"C'è qualcosa che dovrei sapere prima di mettermi a girare, Bluffwatcher?",
		"Tutto tranquillo da questa parte? Bene. Cercherò di non cambiare le cose.",
		"{other}, c'è qualche regola quassù che sto per infrangere senza saperlo?",
	},
	["thb.npc_meet.w24.watch.009"] = {
		"sente un piccolo ticchettio venire dall'arma della guardia: un cordino di perle e d'osso legato sotto la punta, che si muove a ogni spostamento del Bluffwatcher.",
		"scorge le piume legate sotto la lama della guardia, tagliate corte e pari, tenute con la stessa cura del filo.",
	},
	["thb.npc_meet.w24.watch.010"] = {
		"Le narici del Bluffwatcher si allargano quando passo, poi si stringono. Gentile, da parte della guardia, non dire niente dell'odore che porto.",
		"Mi hanno pesato occhi vivi in ogni città dell'Orda. I tauren lo fanno anche col naso, e mi lasciano passare lo stesso.",
		"La guardia mi guarda come si guarda una ferita che guarisce male. Poi fa un cenno. La parola di Cairne regge, a quanto pare.",
	},
	["thb.npc_meet.w24.watch.011"] = {
		"sorprende la guardia a contare chi attraversa la passerella più lontana con piccoli movimenti degli occhi, e nel conto finisce anche {g:lui|lei}, di sfuggita.",
		"si accorge che il Bluffwatcher segue una dopo l'altra tutte le figure sul passaggio, e che toccava semplicemente a {g:lui|lei}.",
		"viene {g:registrato|registrata} dalla guardia come un mandriano registra un capo in più nella mandria: un'occhiata, un conto, nient'altro.",
	},
	["thb.npc_meet.w24.watch.012"] = {
		"Il Bluffwatcher non stringe l'arma. La tiene appoggiata, come si tiene qualcosa che non si è mai dovuto afferrare di corsa.",
		"Niente mano sull'asta, niente cipiglio. Qualunque cosa abbia visto questa guardia, è bastata a far sembrare la calma la scelta più forte.",
		"L'arma poggia sulla spalla della guardia come un bastone a riposo. Nessuno quassù sembra averle dato motivo di essere altro.",
	},
	["thb.npc_meet.w24.watch.013"] = {
		"Mi hanno detto di chiedere a una guardia in caso di smarrimento. Non è ancora successo: mi porto avanti.",
		"Quattro volte che passo di qui, l'avrai notato. Sto visitando. Con metodo.",
		"Buona guardia. Se vedi qualcuno girare in tondo, sono io.",
	},
	["thb.npc_meet.w24.watch.014"] = {
		"riceve il saluto del Bluffwatcher: due dita portate alla base di un corno, un attimo di pausa, giù.",
		"ottiene in risposta dalla guardia un tocco delle dita sulla fronte, senza fretta, il gesto di chi non ha nessun altro posto dove stare.",
		"ricambia il saluto lento di un Bluffwatcher, una mano larga sollevata alla fronte e poi posata sul petto.",
	},
	["thb.npc_meet.w24.watch.015"] = {
		"Il peso su una gamba, poi sull'altra, avanti e indietro come una marea lenta. Un Bluffwatcher potrebbe stare così per una stagione intera.",
		"La guardia ondeggia un poco, da un lato all'altro, così poco che non ci si fa caso. Dev'essere il modo per reggere un turno intero senza irrigidirsi.",
	},
	["thb.npc_meet.w24.watch.016"] = {
		"Un Bluffwatcher di guardia, e mi sento più al sicuro che dietro qualsiasi muro di Orgrimmar. È un bene avere i tauren dalla nostra parte.",
		"Sono i guerrieri che stanno fra l'Orda e qualunque cosa salga dalla pianura. Rivolgo alla guardia il cenno che si deve a un alleato.",
		"Lo sguardo della guardia si addolcisce un poco quando arriva a me. Alleati, dunque. È una bella cosa da essere, quassù.",
	},
	["thb.npc_meet.w24.watch.017"] = {
		"pone una domanda alla guardia e riceve risposta solo dopo che il Bluffwatcher l'ha ripetuta, lentamente, per non perderne nemmeno una parola.",
		"rivolge una domanda a un Bluffwatcher, che la considera in pieno silenzio prima di rispondere con quattro parole esatte.",
		"lascia che finisca la pausa della guardia, lunga e attenta, e ottiene una risposta che non lascia niente da chiedere dopo.",
	},
	["thb.quest_complete.w24.afterward.001"] = {
		"si allontana di qualche passo a cose fatte, e nessuno si aspetta un saluto: dall'altra parte si è già tornati alle piccole faccende di prima.",
		"fa qualche passo indietro, e alle sue spalle una conversazione messa da parte per cortesia riprende esattamente dal punto in cui era stata lasciata.",
	},
	["thb.quest_complete.w24.afterward.002"] = {
		"Senza più niente da consegnare, i miei passi sulle assi fanno il doppio del rumore.",
		"Mani libere, adesso, e l'andarsene si è fatto all'improvviso silenziosissimo.",
		"Più niente da consegnare. Non mi ero mai {g:accorto|accorta} di quanto rumore faccia uno scopo, finché non tace.",
	},
	["thb.quest_complete.w24.afterward.003"] = {
		"si ferma accanto a un vecchio tauren che ripara un cesto, e un cenno muto indica il posto libero sul tronco accanto.",
		"indugia vicino a un anziano chino su un cesto da rattoppare, e un gesto lento offre il resto del tronco su cui siede.",
	},
	["thb.quest_complete.w24.afterward.004"] = {
		"Tutto qui? Niente discorso? Avevo preparato una risposta modesta e lunghissima.",
		"Mi hanno ringraziato in quattro parole. Io ne avevo pronte almeno venti.",
		"Un cenno e basta? Ero a metà della mia scena di umiltà.",
	},
	["thb.quest_complete.w24.afterward.005"] = {
		"Nessuno alza gli occhi mentre me ne vado. Non è freddezza: quassù una cosa finita smette di chiedere attenzione.",
		"Nessuno mi guarda andare via. Quassù un lavoro chiuso torna semplicemente a far parte dell'arredamento.",
	},
	["thb.quest_complete.w24.afterward.006"] = {
		"si allontana piano, e un uccellino bruno saltella lungo la corda accanto a {g:lui|lei} per qualche passo, poi si stanca.",
		"lascia l'incarico alle spalle senza fretta, in compagnia per un tratto di un passero che zampetta sulla fune.",
	},
	["thb.quest_complete.w24.afterward.007"] = {
		"Meglio andare prima che qualcuno mi ringrazi ancora. Il collo non regge altri cenni.",
		"Me ne vado finché riesco ancora ad annuire. Un altro grazie e resto qui a inchinarmi per un'ora.",
		"Vado adesso, prima che i ringraziamenti ripartano da capo.",
	},
	["thb.quest_complete.w24.afterward.008"] = {
		"sgranchisce le dita irrigidite a cose fatte, e un tauren di passaggio annuisce senza fermarsi, come se avesse capito anche quello.",
		"si scioglie le spalle a lavoro chiuso, sotto lo sguardo mite di un Bluffwatcher appoggiato alla lancia.",
	},
	["thb.quest_complete.w24.afterward.009"] = {
		"Dopo un lavoro finito resta un piccolo silenzio. Qui nessuno corre a riempirlo, e scopro che mi piace.",
		"Il silenzio dopo la consegna, su questa rupe, non mette a disagio. Lo lasciano stare, e dopo un momento lo lascio stare anch'io.",
	},
	["thb.quest_complete.w24.afterward.010"] = {
		"si ritrova alle calcagna, per qualche passo, un piccolo tauren convinto che chi ha appena incassato meriti di essere seguito.",
		"ha per un tratto una scorta piccola e curiosa, un giovane tauren che trotterella dietro, finché un richiamo da una soglia lo fa tornare indietro.",
		"si accorge di un vitello tauren che segue i suoi passi a rispettosa distanza, finché qualcuno più grande si schiarisce la voce e il gioco finisce.",
	},
	["thb.quest_complete.w24.afterward.011"] = {
		"A consegna fatta vado sul bordo e guardo giù l'erba, non per vedere qualcosa: solo per dare agli occhi un posto lontano dove posarsi.",
		"Dopo cerco l'orlo della rupe e lascio scendere lo sguardo su Mulgore. Niente da cercare. Solo distanza, per un momento.",
	},
	["thb.quest_complete.w24.afterward.012"] = {
		"Io allora vado. Se c'è bisogno, mi trovate vicino alla banca, a contare.",
		"Resto in giro. Cercate chi cammina più in fretta di tutti: sarò io.",
		"Chiamatemi se serve. Sarò accanto a un fuoco, a fingere di non avere fame.",
	},
	["thb.quest_complete.w24.afterward.013"] = {
		"passa accanto a uno sciamano chino su un fuocherello e, senza sapere bene perché, rallenta finché la fiamma non resta alle spalle.",
		"sfila davanti a un fuoco piccolo curato da uno sciamano, e si accorge che i propri passi si fanno più leggeri finché non l'ha superato.",
	},
	["thb.quest_complete.w24.afterward.014"] = {
		"La borsa pesa di più e io cammino più dritto. Non abbastanza da contare, quassù, ma più dritto.",
		"Monete in tasca e un filo di spavalderia nel passo. Su questa rupe nessuno nota la spavalderia: sono tutti troppo occupati a essere pazienti.",
	},
	["thb.quest_complete.w24.afterward.015"] = {
		"si scosta, finita la consegna, per lasciar passare un tauren con due otri gocciolanti, e la cortesia viene ricambiata con un cenno grave.",
		"fa spazio a chi porta acqua su per il sentiero, e la piccola gentilezza torna indietro con un lento inchino di corna.",
	},
	["thb.quest_complete.w24.afterward.016"] = {
		"Ogni incarico, una volta consegnato, sembra più piccolo. Tutta quell'importanza ripiegata in un grazie e un cenno del capo.",
		"Strano come un compito si rimpicciolisca appena lascia le mie mani. Qui diventa una cosa quieta in più, in una città già quieta.",
	},
	["thb.quest_complete.w24.afterward.017"] = {
		"Grazie della pazienza. Lo so, parlo troppo in fretta.",
		"Scusate se ho raccontato di corsa. Ci sto lavorando.",
		"Avete ascoltato tutto. Non in molti lo farebbero, alla mia velocità.",
	},
	["thb.quest_complete.w24.afterward.018"] = {
		"si avvia e deve fermarsi subito: una fila di giovani tauren sfila con le ceste in testa, e una fila così non la taglia nessuno.",
		"fa per andarsene e aspetta quasi subito, mentre passa una fila di giovani tauren con le ceste in equilibrio sul capo.",
	},
	["thb.quest_complete.w24.afterward.019"] = {
		"Neanche un inciampo andandomene. Record personale.",
		"Nessuno mi ha visto inciampare mentre me ne andavo. La conto come una seconda ricompensa.",
		"Compenso, grazie, e sono ancora in piedi. Filotto completo.",
	},
	["thb.quest_complete.w24.afterward.020"] = {
		"Lavoro consegnato, e la nebbia si è inghiottita le alture lontane. Per una volta non vedo la prossima cosa che mi aspetta, e non mi dispiace.",
		"La nebbia nasconde tutto oltre la prossima fune. Bene. Il resto del mondo può aspettare là fuori, invisibile, per un po'.",
	},
	["thb.quest_complete.w24.afterward.021"] = {
		"Resto lì ad annuire ben dopo la fine dei ringraziamenti. Qualcuno dovrebbe spiegarmi come si chiude una conversazione coi tauren.",
		"Dev'esserci un segnale che la chiacchierata è finita. Su questa altura lo conoscono tutti tranne me.",
	},
	["thb.quest_complete.w24.afterward.022"] = {
		"Me ne vado con un palmo di peso in meno. Non la borsa: la borsa pesa di più. Qualcos'altro.",
		"Più leggerezza uscendo, e non nella borsa. La borsa la pensa diversamente.",
	},
	["thb.quest_complete.w24.afterward.023"] = {
		"Adesso me ne vado piano, per rispetto delle usanze locali.",
		"Esco con passo dignitoso. Guardate, sto migliorando.",
	},
	["thb.quest_complete.w24.blessing.001"] = {
		"parte con una benedizione nella lingua dei tauren, bassa e rotolante, di cui coglie solo il nome della Madre Terra e il calore che lo circonda.",
		"ascolta la benedizione nella lingua dei tauren: le parole sono ignote, il senso chiaro nella voce lenta e posata.",
		"resta in piedi per una benedizione pronunciata in una lingua di vocali lunghe, dove solo una parola è chiara: il nome della Madre Terra.",
	},
	["thb.quest_complete.w24.blessing.002"] = {
		"'Che la terra riconosca il tuo passo.' Così mi hanno detto, consegnandomela. Non so se la terra ascolti, ma quelle parole mi hanno fatto bene.",
		"La terra ricorderà i miei piedi con benevolenza, così mi è stato detto. Un modo di dire tauren, credo. Camminerò con un po' più di cura, per meritarmelo.",
		"Parlava dei miei passi, quella benedizione: che il suolo li conosca e li regga. È parola dei tauren, non mia, ma la prendo volentieri in prestito.",
	},
	["thb.quest_complete.w24.blessing.003"] = {
		"E su di te, e sul tuo fuoco.",
		"Lo stesso a te, e a tutti sotto il tuo tetto.",
	},
	["thb.quest_complete.w24.blessing.004"] = {
		"Hanno chiesto agli antenati di camminarmi dietro. Non accanto, non davanti: dietro, dove vedono cosa faccio. Una benedizione con dentro un avvertimento.",
		"'Gli antenati alle tue spalle', mi hanno detto. Sto ancora decidendo se sia un conforto o una sorveglianza.",
	},
	["thb.quest_complete.w24.blessing.005"] = {
		"Porterò con me la tua benedizione, anche se non so le parole per renderne una. Basta un grazie?",
		"Non ho benedizioni mie da restituirti, perciò prendi il mio grazie al loro posto.",
		"Non so risponderti nella tua lingua. Grazie, nella mia.",
	},
	["thb.quest_complete.w24.blessing.006"] = {
		"Con la benedizione, un pollice largo premuto una volta sulla fronte, deciso, e poi via. Sento ancora il punto dov'era.",
		"Insieme alla benedizione, un pollice sulla fronte, fermo come un sigillo sulla cera. Ho aspettato, immobile, che si sollevasse.",
		"Per benedirmi, un polpastrello sulla fronte, una parola che non conoscevo e uno sguardo lungo. Poi è tornato il mondo di tutti i giorni.",
	},
	["thb.quest_complete.w24.blessing.007"] = {
		"Benedizione e compenso. Se qualcuno mi dà anche da mangiare, non me ne vado più.",
		"Anche una benedizione? Occhio, che comincio a credermi qualcuno.",
	},
	["thb.quest_complete.w24.blessing.008"] = {
		"Era pratica, la benedizione che ho avuto: che tu trovi sempre acqua, e ombra, e qualcuno con cui dividerle. Chi viene dalle pianure sa cosa conta.",
		"Acqua, ombra e buona compagnia: questo mi hanno augurato. Non gloria, non fortuna. Chissà come, suona più ricco.",
	},
	["thb.quest_complete.w24.blessing.009"] = {
		"'Riposa dove l'erba è buona.' L'hanno detto come forse lo si dice da generazioni, quando nessun accampamento durava più di una stagione.",
		"È una vecchia benedizione da viandanti, credo: che tu possa coricarti dove l'erba è buona. Sembra nata da gente che non sapeva mai dove avrebbe dormito.",
	},
	["thb.quest_complete.w24.blessing.010"] = {
		"Che la Madre Terra ti ascolti, allora, visto che le parli per me.",
		"Lascio alla Madre Terra il compito di mantenere questa promessa.",
		"Se ascolta qualcuno, ascolta te. Grazie di averglielo chiesto.",
	},
	["thb.quest_complete.w24.blessing.011"] = {
		"guarda una mano toccare le assi, poi la fronte, poi allungarsi verso di sé: la terra, poi il pensiero, poi chi riceve la benedizione.",
		"si vede benedire con tre tocchi lenti: un palmo a terra, poi sul cuore di chi benedice, poi lieve sulla sua spalla.",
		"lascia che una grande mano vada dal suolo dell'altura all'aria che li separa, la benedizione passata di mano come una coppa.",
	},
	["thb.quest_complete.w24.blessing.012"] = {
		"In questa città mi hanno benedetto più che in qualsiasi altro posto dove ho lavorato. Non credo di meritarne la metà, ma i tauren non sembrano tenere quel genere di conti.",
		"Quassù, una benedizione per ogni commissione. Se funzionano, sono la persona più protetta di tutto Kalimdor.",
	},
	["thb.quest_complete.w24.blessing.013"] = {
		"Perdonami: cosa vuol dire quella benedizione, parola per parola? Vorrei portarla nel modo giusto.",
		"Me la ripeti, più piano? Voglio ricordarmi come fa.",
	},
	["thb.quest_complete.w24.blessing.014"] = {
		"Una benedizione degli anziani, nelle parole antiche, con la Madre Terra chiamata nostra. Certe cose le senti con le ossa prima che con le orecchie.",
		"Era la benedizione che ogni piccolo di queste alture sente crescendo. Arriva ancora, ogni volta.",
		"Benedizione con le parole antiche, da chi tra noi porta gli anni. La Madre Terra sembra più vicina quando a chiedere è uno dei nostri.",
	},
	["thb.quest_complete.w24.blessing.015"] = {
		"si sente benedire sotto il cielo notturno, le corna come una curva scura contro le stelle mentre si pronunciano le parole antiche.",
		"ascolta la benedizione alla luce del fuoco, le parole che salgono verso un cielo fitto di stelle.",
	},
	["thb.quest_complete.w24.blessing.016"] = {
		"Chi caccia mi ha dato una benedizione che chiedeva agli spiriti delle bestie di perdonarmi in anticipo. Mi è piaciuto che fosse così onesta.",
		"Mi hanno augurato la pazienza dell'aquila e la testardaggine del kodo. Accetto entrambe, anche se sospetto che la seconda fosse un commento.",
		"Chi caccia mi ha benedetto in nome delle bestie della pianura. Non sapevo che avessero voce in capitolo. Quassù, a quanto pare, ce l'hanno.",
	},
	["thb.quest_complete.w24.blessing.017"] = {
		"La tua benedizione su di me, e la forza dell'Orda su di te. Scambio onesto.",
		"Tieni vicini gli spiriti. Al resto ci pensa l'Orda.",
	},
	["thb.quest_complete.w24.blessing.018"] = {
		"Benedizione sotto la pioggia, senza nemmeno spostarsi sotto la gronda. A quanto pare anche l'acqua del cielo viene dalla Madre Terra.",
		"La pioggia è colata da quelle corna per tutta la benedizione, e le parole non hanno accelerato di un soffio.",
	},
	["thb.quest_complete.w24.blessing.019"] = {
		"Terrò stretta quella benedizione. È la cosa più gentile che mi abbiano dato da un pezzo.",
		"Grazie per la benedizione. Pesa meno della ricompensa e dura di più.",
		"Ricorderò quelle parole molto dopo aver speso la ricompensa.",
	},
	["thb.quest_complete.w24.blessing.020"] = {
		"Una benedizione sciamanica: i quattro elementi nominati uno dopo l'altro, e a ciascuno la richiesta di avere pazienza con me. Spero abbiano sentito: so essere difficile.",
		"Terra, fuoco, acqua, aria: la benedizione ha fatto il giro lento di tutti, chiedendo a ciascuno un piccolo favore per me.",
		"Quando ringrazia chi parla con gli spiriti, dentro ci sono gli elementi. Mi hanno affidato a ciascuno a turno, come un ospite che si presenta attorno al fuoco.",
	},
	["thb.quest_complete.w24.blessing.021"] = {
		"Cercherò di meritarmela. Sull'opinione degli antenati non garantisco.",
		"Grazie. Se i tuoi antenati vengono a chiedere di me, parlane bene.",
	},
	["thb.quest_complete.w24.blessing.022"] = {
		"Una parte della benedizione, credo, era rivolta alla ricompensa stessa, come per raccomandarle di comportarsi bene nelle mie mani. I tauren non trascurano quasi niente.",
		"La benedizione si è rivolta a me, poi, più piano, a ciò che mi era stato dato. Qui anche gli oggetti ricevono un consiglio.",
	},
	["thb.quest_complete.w24.blessing.023"] = {
		"Che i tuoi antenati siano fieri di come custodisci la loro città.",
		"Che gli spiriti tengano in piedi la tua tenda e acceso il tuo fuoco.",
	},
	["thb.quest_complete.w24.blessing.024"] = {
		"Non so cosa farà quella benedizione. Probabilmente niente che io possa vedere. Ma ho smesso di dar peso all'essere {g:protetto|protetta} da cose invisibili.",
		"Che la benedizione funzioni o no, è stata data con tutta l'attenzione possibile. Già questo è abbastanza raro da valere qualcosa.",
		"Forse gli spiriti hanno ascoltato, forse no. Chi li ha chiamati ci credeva davvero, e per me conta.",
	},
	["thb.quest_complete.w24.blessing.025"] = {
		"Le tue parole vengono con me. Le poserò in un posto che le meriti.",
		"Me la porto via con cura.",
		"Custodita e portata. Grazie.",
	},
	["thb.quest_complete.w24.blessing.026"] = {
		"La benedizione è finita con un mormorio invece che con una parola, e il mormorio è durato ancora un po' dopo che la bocca si era chiusa. Non sapevo che una voce potesse farlo.",
		"La benedizione non aveva un'ultima parola, solo una nota lunga e bassa che si è spenta da sola. Ho aspettato che sparisse prima di dire grazie.",
	},
	["thb.quest_complete.w24.boon.001"] = {
		"È più di quanto ho chiesto. Mi dicono che è proprio questo il punto.",
		"Troppo, di sicuro. No? Allora smetto di discutere con un tauren; so come va a finire.",
	},
	["thb.quest_complete.w24.boon.002"] = {
		"porta via, insieme alla ricompensa, un vasetto d'argilla sigillato con la cera e l'istruzione asciutta di spalmarlo sulle ginocchia doloranti.",
		"ottiene, oltre alla ricompensa, un vasetto d'argilla grande quanto un pollice, che sa di resina, offerto per le giunture stanche senza aggiungere altro.",
	},
	["thb.quest_complete.w24.boon.003"] = {
		"Una parte della ricompensa non stava nella borsa: era sentirmi dire che a quel fuoco c'è un posto per me ogni volta che passo.",
		"Oltre al dovuto mi hanno dato una stuoia accanto a quel fuoco, per sempre. Credo fosse quello il vero compenso.",
		"Le monete erano giuste. L'offerta di un posto al loro fuoco, ogni volta che capito da queste parti, era più che giusta.",
	},
	["thb.quest_complete.w24.boon.004"] = {
		"Ne farò buon uso. Te lo prometto: ne sentirai parlare.",
		"Non resterà in fondo a una borsa a prendere polvere. Grazie.",
	},
	["thb.quest_complete.w24.boon.005"] = {
		"Ho provato a dire che la ricompensa era generosa. L'hanno guardata, mi hanno guardato, e mi hanno detto che era solo giusta. Discutere di generosità con questa gente è come discutere con un masso.",
		"Quando l'ho chiamata generosa, mi hanno corretto, con dolcezza e a lungo. Era giusta, a quanto pare. Generosa sarebbe stata la seconda porzione.",
	},
	["thb.quest_complete.w24.boon.006"] = {
		"si vede offrire la ricompensa su due palmi aperti, con il capo chino finché le corna non puntano ai suoi stivali.",
		"vede la ricompensa avanzare su mani aperte, con un inchino così profondo che per un attimo ha davanti la sommità di una grande testa cornuta.",
	},
	["thb.quest_complete.w24.boon.007"] = {
		"Si vedeva che ci avevano pensato, a chi fossi, prima di scegliere cosa darmi. Ho avuto ricompense da scrivani di re con meno pensiero dentro.",
		"Comunque sia, è stata scelta per me. L'ho capito dall'occhiata con cui mi hanno preso le misure, prima.",
		"Niente pescato a caso da un mucchio. È stato scelto, e la scelta si vedeva.",
	},
	["thb.quest_complete.w24.boon.008"] = {
		"La ricompensa basta. Il resto conservalo per chi un giorno ne avrà più bisogno.",
		"È più che sufficiente. Il di più dallo a chi verrà a chiedere dopo di me.",
	},
	["thb.quest_complete.w24.boon.009"] = {
		"prende la ricompensa: a darla è bastato un gesto leggero di un braccio tauren, a portarsela via ci vuole parecchio più impegno.",
		"accetta la ricompensa, arrivata con un unico movimento facile di un braccio tauren, e poi deve cercare per un momento il modo giusto di tenerla.",
	},
	["thb.quest_complete.w24.boon.010"] = {
		"È strano ricevere qualcosa da un popolo che ha perso tanto nelle pianure e ha continuato a dare lo stesso. Non so se io avrei imparato l'abitudine.",
		"Per generazioni li hanno braccati per le pianure, e ancora danno senza misura. A pensarci, la ricompensa pesa di più.",
	},
	["thb.quest_complete.w24.boon.011"] = {
		"Giusta, e anche di più. Proverò a spenderla con la stessa lentezza con cui me l'hai data.",
		"Generosa. La farò durare, come durano le cose quassù.",
		"Grazie. La spenderò con pazienza tauren, cioè molto, molto pian piano.",
	},
	["thb.quest_complete.w24.boon.012"] = {
		"trova accanto alla ricompensa, infilata su un laccio, una sola perla d'osso intagliata, offerta senza la minima spiegazione.",
		"trova una piccola perla d'osso legata alla ricompensa, con inciso un segno che non conosce e che nessuno le spiega.",
	},
	["thb.quest_complete.w24.boon.013"] = {
		"Ho detto che l'avevo fatto volentieri e non mi serviva niente. La ricompensa è rimasta lì, tesa verso di me, finché il mio braccio non si è stancato di non prenderla.",
		"Rifiutare un compenso, qui, diventa una gara di pazienza. Ho perso, come chiunque.",
	},
	["thb.quest_complete.w24.boon.014"] = {
		"È un onore riceverla dalla tua mano.",
		"Dalla tua mano, allora. Grazie, davvero.",
	},
	["thb.quest_complete.w24.boon.015"] = {
		"Non è molto, come ricompense vanno. Ma da come me l'hanno data si capiva che era stata messa da parte da tempo, in attesa di chi avrebbe finito il lavoro.",
		"Poca cosa, quella che ho avuto. Però tenuta da parte, avvolta e in attesa di chiunque ci arrivasse fino in fondo. Questo la rende più grande.",
		"Una ricompensa modesta, tolta da un panno che si vedeva piegato e ripiegato tante volte durante l'attesa.",
	},
	["thb.quest_complete.w24.boon.016"] = {
		"prende una ricompensa ancora tiepida, tanto è rimasta stretta in un pugno enorme ad aspettare.",
		"stringe una ricompensa scaldata dal palmo che l'ha tenuta, come se fosse rimasta a lungo pronta.",
	},
	["thb.quest_complete.w24.boon.017"] = {
		"La mia gente mi ha dato un compenso come a un ospite. Ne dovrò parlare con gli anziani, con calma, nel giro di parecchie visite.",
		"Una ricompensa dalla mia stessa tribù, per aver fatto ciò che chiunque di noi farebbe. La prendo, e in qualche modo la restituirò alla prossima festa.",
	},
	["thb.quest_complete.w24.boon.018"] = {
		"C'è una parola da dire quando si riceve una cosa così? Preferirei non sbagliare.",
		"Dimmi come si accoglie, qui, nel modo giusto. Farò a modo tuo.",
	},
	["thb.quest_complete.w24.boon.019"] = {
		"si ritrova la ricompensa nel palmo e le dita richiuse sopra, una per una, da dita molto più grandi.",
		"si sente prendere la mano, aprirla, riempirla e richiuderla, con la cura che si mette nell'avvolgere un uovo.",
		"lascia fare a una mano gigantesca, che chiude le sue dita attorno alla ricompensa, dito per dito.",
	},
	["thb.quest_complete.w24.boon.020"] = {
		"Pagamento mentre il sole cala dietro le alture lontane: le monete prendono l'ultima luce prima di sparire nella mia borsa.",
		"La ricompensa mi è arrivata in mano rosso-oro nel bagliore del tramonto. Quando l'ho messa via, i fuochi stavano già prendendo il posto del giorno.",
	},
	["thb.quest_complete.w24.gratitude.001"] = {
		"regge un silenzio così lungo che altrove sarebbe imbarazzante, e capisce che qui è quella la lode.",
		"non sente parole per un lungo momento, solo uno sguardo fermo, e piano piano capisce che il ringraziamento è quello.",
		"aspetta che passi una quiete che si allunga e si allunga, finché è chiaro che la risposta era quella, ed era buona.",
	},
	["thb.quest_complete.w24.gratitude.002"] = {
		"Due parole di ringraziamento, poi niente, e altrove mi hanno ringraziato più a lungo con metà del significato.",
		"'Ben fatto.' Tutto qui. Quelle due parole me le porterò dietro per parecchio.",
	},
	["thb.quest_complete.w24.gratitude.003"] = {
		"Quella parola bastava e avanzava. Me la tengo.",
		"L'hai detto una volta sola, e vale più di un discorso.",
	},
	["thb.quest_complete.w24.gratitude.004"] = {
		"Comincio a leggere i silenzi dei tauren. Uno breve vuol dire 'va bene'. Uno lungo con un cenno in fondo vuol dire 'meglio che bene'. Questo era lungo.",
		"Ci sono vari tipi di silenzio tauren, ho deciso. Quello che ho appena avuto era del tipo buono: lungo, piano, chiuso da un lento abbassare delle palpebre.",
		"Se leggo bene la pausa, era un grande elogio. Altrimenti mi hanno appena ignorato, con garbo e molto a lungo.",
	},
	["thb.quest_complete.w24.gratitude.005"] = {
		"si sente ringraziare con una sola parola e una larga mano posata piatta sul petto di chi parla, tenuta lì un istante e poi abbassata.",
		"vede sfiorare con la punta delle dita il centro di un petto ampio, poi il palmo voltarsi verso di sé: un grazie senza parole.",
	},
	["thb.quest_complete.w24.gratitude.006"] = {
		"Accolgo il tuo ringraziamento. Che ti torni indietro.",
		"Grazie ricevuto. E il mio, per avermi dato fiducia.",
	},
	["thb.quest_complete.w24.gratitude.007"] = {
		"Un grazie detto con voce vecchia, e poi a lungo nulla, lo sguardo oltre me. Ho avuto l'impressione che in quel silenzio si ricordasse qualcun altro.",
		"Nella pausa dopo il grazie, quegli occhi vecchi sono andati lontano. A chi pensassero, non l'ho chiesto.",
	},
	["thb.quest_complete.w24.gratitude.008"] = {
		"si guadagna un grazie e una risata così profonda e lenta che sembra metterci un po' a salire in superficie.",
		"strappa una risata cupa di approvazione, di quelle che partono più o meno dagli zoccoli.",
	},
	["thb.quest_complete.w24.gratitude.009"] = {
		"Il mio nome, detto piano, dando peso a ogni suono, e poi 'grazie'. Non l'avevo mai sentito pronunciare con tanta cura.",
		"Nel grazie c'era il mio nome, ogni sillaba posata come una pietra su un sentiero. Sembrava un nome migliore del solito.",
		"Essere {g:ringraziato|ringraziata} per nome a velocità tauren è un onore strano: senti ogni pezzo di te, un suono dopo l'altro.",
	},
	["thb.quest_complete.w24.gratitude.010"] = {
		"Allora siamo contenti in due.",
		"Mi fa piacere che sia servito.",
	},
	["thb.quest_complete.w24.gratitude.011"] = {
		"Mi riesce meglio farmi sgridare che farmi ringraziare. Un grazie tauren così quieto mi ha lasciato senza sapere dove mettere le mani.",
		"Una gratitudine così calma è difficile da reggere in faccia. Ho annuito troppe volte.",
	},
	["thb.quest_complete.w24.gratitude.012"] = {
		"vede chinarsi lentamente un paio di corna, abbastanza in basso da essere un inchino e abbastanza in fretta da restare amichevole.",
		"riceve un inchino della grande testa cornuta, senza fretta, che risale solo quando c'è la certezza che lo si sia visto.",
		"guarda le corna abbassarsi e risollevarsi in un unico, lungo movimento: un grazie che non ha bisogno di voce.",
	},
	["thb.quest_complete.w24.gratitude.013"] = {
		"Mi hanno ringraziato come si ringrazia qualcuno dell'Orda, con il peso lento di una vecchia promessa. A Thrall sarebbe piaciuto vederlo.",
		"In quel grazie c'era tutta l'Orda: orchi e tauren, il vecchio debito nei due sensi. Io mi trovavo solo nel punto in cui è caduto.",
	},
	["thb.quest_complete.w24.gratitude.014"] = {
		"Prendo questo silenzio per un sì.",
		"Quello sguardo vuol dire che ho fatto bene, vero? Lo prendo per buono.",
	},
	["thb.quest_complete.w24.gratitude.015"] = {
		"si vede trattenere la mano un istante più del necessario, poi lasciarla con cura, come se fosse stata data in prestito.",
		"resta con la mano in una stretta grande e calda un attimo più di quanto il grazie richiedesse.",
	},
	["thb.quest_complete.w24.gratitude.016"] = {
		"Prima hanno ringraziato il lavoro, guardando ciò che avevo fatto come se meritasse una parola tutta sua. Poi è toccato a me.",
		"Prima l'impresa ha avuto il suo grazie, detto quasi a lei; poi il mio. Non mi è pesato aspettare il turno.",
		"Ero {g:secondo|seconda} in fila per la gratitudine. Prima è stato ringraziato il compito stesso, sottovoce, e credo a ragione.",
	},
	["thb.quest_complete.w24.gratitude.017"] = {
		"Dentro la tribù un grazie è poca cosa. Tienilo per gli stranieri che ci aiutano.",
		"Non serve ringraziare tra figli della Madre Terra. L'avrei fatto anche senza che me lo chiedessi.",
	},
	["thb.quest_complete.w24.gratitude.018"] = {
		"Ringraziamento nella nebbia: due voci e una sagoma che vedevo appena. Chissà come, le parole arrivavano meglio.",
		"La nebbia aveva inghiottito le alture lontane, e il grazie ne è uscito basso e vicino, come se a parlare fosse la rupe stessa.",
	},
	["thb.quest_complete.w24.gratitude.019"] = {
		"dopo il grazie si vede indicare la stuoia accanto, e restano un po' seduti senza parlare, che a quanto pare è il resto del ringraziamento.",
		"accoglie, a un gesto lento, l'invito a sedersi; il silenzio che segue è condiviso, comodo, e a quanto pare fa parte del compenso.",
	},
	["thb.quest_complete.w24.gratitude.020"] = {
		"Due volte grazie, mi è stato detto. Quassù equivale quasi a piangere. Mi preoccupa un po'.",
		"Due grazie di fila, quassù. Non sapevo fosse permesso. Forse, senza volerlo, ho fatto qualcosa di importante.",
	},
	["thb.quest_complete.w24.handover.001"] = {
		"aspetta, immobile, sotto uno sguardo lento che va dagli stivali alla fronte; solo quando qualche conto silenzioso torna, compare la ricompensa.",
		"resta sotto un esame lungo e minuzioso prima che passi qualcosa di mano in mano, come una pelle che il mercante soppesa prima di dire il prezzo.",
		"regge a lungo uno sguardo calmo e senza fretta, e la ricompensa arriva in fondo, come l'ultima parola di una frase.",
	},
	["thb.quest_complete.w24.handover.002"] = {
		"I tauren non ti passano la ricompensa: la posano davanti a te e aspettano che sia tu a raccoglierla, come se prenderla dovesse essere una scelta tua.",
		"Qui nessuno te la ficca in mano. La ricompensa viene posata sulla coperta tra noi due e resta lì finché non decido di volerla.",
	},
	["thb.quest_complete.w24.handover.003"] = {
		"guarda una mano enorme avvolgere il dovuto in un quadrato di pelle morbida, legarlo con una striscia di cuoio, provare il nodo due volte e solo allora porgerlo.",
		"aspetta mentre la ricompensa viene incartata nel cuoio e annodata con gran cura: un involto che nessuno con la fretta addosso si prenderebbe il disturbo di fare.",
	},
	["thb.quest_complete.w24.handover.004"] = {
		"Tutto il resoconto, ascoltato senza distogliere gli occhi un istante. Nessuno mi aveva mai dato tanto ascolto rispondendo così poco.",
		"Ho fatto il mio rapporto e ho avuto in cambio silenzio, poi un cenno lento del capo. In quel silenzio ogni parola è stata pesata e messa da parte.",
		"Ogni parola del resoconto è stata accolta, e a nessuna si è risposto subito. Quassù ti lasciano finire.",
	},
	["thb.quest_complete.w24.handover.005"] = {
		"Lo prendo volentieri. E anche la stretta di mano, se poi la mano me la restituisci.",
		"Grazie. Questa stretta me la sentirò addosso fino all'altro capo della città.",
	},
	["thb.quest_complete.w24.handover.006"] = {
		"aspetta che chi porta tanti anni si alzi dalla stuoia un pezzo alla volta, un ginocchio, una mano sul palo, poi l'altro: una ricompensa non si dà da seduti.",
		"guarda una figura anziana alzarsi dal fuoco a tappe lente, rifiutando ogni mano tesa, perché la ricompensa va data in piedi.",
		"deve aspettare un bel po' che quelle vecchie ginocchia tornino a reggere tutto il resto: qui si ringrazia in piedi, e non se ne discute.",
	},
	["thb.quest_complete.w24.handover.007"] = {
		"Mi ha pagato chi va a caccia, e l'ha fatto come qui i cacciatori fanno tutto: nessun gesto sprecato, e una lunga occhiata alle mie mani, come se raccontassero la storia meglio di me.",
		"Mi ha pagato una mano da cacciatore: in silenzio, svelta per essere tauren, e con gli occhi sulle mie mani tutto il tempo, a leggerle come tracce.",
	},
	["thb.quest_complete.w24.handover.008"] = {
		"ottiene la ricompensa da mani sciamaniche che prima la posano a terra, poi la accostano a una piccola pietra appesa al collo, e solo allora la lasciano andare.",
		"guarda chi parla con gli spiriti tenere bassa la ricompensa, vicino alla terra, per un istante di silenzio, prima di farla salire fino alle sue mani.",
	},
	["thb.quest_complete.w24.handover.009"] = {
		"Chi lavora il cuoio ha posato la lesina per pagarmi, e ha strofinato le mani sul grembiule prima di toccare le mie. Mani pulite per un debito pulito, immagino.",
		"Prima il punto, poi tutto il resto: l'ago infilato nella manica, il lavoro girato a faccia in giù, e infine tutta l'attenzione per me, con la ricompensa.",
		"Mi hanno pagato tra un punto e l'altro, senza lasciar andare il filo, e senza che mi sentissi {g:ringraziato|ringraziata} un briciolo di meno.",
	},
	["thb.quest_complete.w24.handover.010"] = {
		"ottiene la ricompensa da una guardia che resta sull'attenti fino alla fine, poi si concede un sorriso breve, quasi timido, prima di tornare al suo posto.",
		"prende il compenso da una guardia con la lancia nell'incavo di un braccio e la ricompensa nell'altra mano, senza che la postazione resti vuota un istante.",
	},
	["thb.quest_complete.w24.handover.011"] = {
		"La borsa che mi hanno dato era misurata su un palmo tauren. Nel mio sembra un cuscino.",
		"Una ricompensa da una mano che ne contiene quattro delle mie. Chissà come, anche le monete sembrano più grosse quando escono da lì.",
	},
	["thb.quest_complete.w24.handover.012"] = {
		"guarda fare un solo nodo in una corda già piena di nodi, appesa al palo di una tenda, prima del pagamento, come se l'impresa dovesse ora essere contata da qualche parte.",
		"vede aggiungere un nodo nuovo a una lunga cordicella annodata, appesa a una cintura, prima che arrivi la ricompensa; nessuno spiega cosa voglia dire.",
	},
	["thb.quest_complete.w24.handover.013"] = {
		"Non alzarti, ti prego. Vengo io da te.",
		"No, non c'è bisogno di alzarsi. Mi chino io.",
	},
	["thb.quest_complete.w24.handover.014"] = {
		"Ho visto cercare a lungo la parola giusta per ringraziarmi, e alla fine sceglierne una breve. Era quella giusta.",
		"C'è stata una lunga pausa, il tempo di scegliere il ringraziamento. Ne sono uscite tre parole, e nessuna si poteva cambiare.",
	},
	["thb.quest_complete.w24.handover.015"] = {
		"guarda la ricompensa uscire da una cesta intrecciata, da sotto uno strato d'erba secca, come se l'avessero messa a dormire lì per conservarla.",
		"aspetta che venga tolto un coperchio di giunchi intrecciati e che una grande mano frughi, senza fretta, fino a trovare ciò che era stato messo da parte.",
		"ha tra le mani qualcosa che evidentemente aspettava in una cesta sotto la gronda, con ancora qualche filo d'erba secca attaccato.",
	},
	["thb.quest_complete.w24.handover.016"] = {
		"Mi aspettavo di dover contrattare un po' su quanto mi spettava. Me l'hanno detto, me l'hanno dato, e mi hanno guardato perplessi perché mi ero {g:preparato|preparata} a discutere.",
		"Niente conti a voce alta, niente 'era questo il patto'. La somma intera mi è finita in mano come se la questione non fosse mai stata aperta.",
	},
	["thb.quest_complete.w24.handover.017"] = {
		"vede un giovane tauren mandato di corsa a prendere la ricompensa tornare a passo molto più cauto, porgendola con tutte e due le mani come gli è stato detto.",
		"accoglie la ricompensa da un tauren piccolissimo a cui hanno chiaramente raccomandato la massima solennità, e che ci riesce, quasi, fino all'ultimo.",
	},
	["thb.quest_complete.w24.handover.018"] = {
		"A Orgrimmar qualcuno l'avrebbe messo per iscritto. Qui mi hanno solo fissato a lungo, e ho idea che sia la stessa cosa, solo più difficile da perdere.",
		"Niente registri, nessun segno su una tavoletta. Si sono limitati a imparare a memoria la mia faccia, piano, come si impara una pista.",
	},
	["thb.quest_complete.w24.handover.019"] = {
		"si fa pagare da chi mescola una pentola con una mano e porge la ricompensa con l'altra, senza che un gesto disturbi l'altro.",
		"prende la ricompensa da una mano che si allunga dal fuoco della cucina senza che il resto di chi cucina si giri.",
	},
	["thb.quest_complete.w24.handover.020"] = {
		"La striscia di cuoio che legava la ricompensa era vecchia, e mi è stato detto di chi era stata, e di chi prima ancora. Qui anche lo spago ha degli antenati.",
		"Del laccio attorno alla ricompensa mi è stata raccontata tutta la storia: tre proprietari, tutti con un nome, tutti ricordati. Lo tratterò con cura.",
		"Persino il laccio della ricompensa aveva una storia, raccontata piano, nome dopo nome.",
	},
	["thb.quest_complete.w24.handover.021"] = {
		"No, non controllo. Ho visto con che cura è stato preparato per me.",
		"Non lo esamino davanti a te. Non dopo aver visto con quanta pazienza è stato messo insieme.",
	},
	["thb.quest_complete.w24.handover.022"] = {
		"Per ringraziarmi mi hanno posato una mano sulla spalla, e l'ho sentita adagiarsi come una coperta pesante: non spingeva, c'era e basta.",
		"Un palmo grande come una porta si è fermato un attimo sulla mia spalla. Pesava più della ricompensa, e diceva di più.",
		"Una mano enorme sulla spalla, tenuta lì per il tempo di una parola lenta. Le ginocchia se ne sono accorte prima di me.",
	},
	["thb.quest_complete.w24.jest.001"] = {
		"Stavo per dire «allora, svelti». Si capisce che quassù quella parola non abita.",
		"Scusa, ti sto ringraziando di corsa. Ricomincio, al tuo passo.",
	},
	["thb.quest_complete.w24.jest.002"] = {
		"Gra... zie. Ecco. Credo sia la velocità giusta per questa città.",
		"Riprovo, più piano. Ti. Sono. {g:Grato|Grata}.",
	},
	["thb.quest_complete.w24.jest.003"] = {
		"Non affrettarti per me. Del resto, quassù nessuno si affretta per nessuno.",
		"Fai con calma. Sto imparando che qui la calma è l'unica cosa che si prende sempre.",
	},
	["thb.quest_complete.w24.jest.004"] = {
		"Il resto dei ringraziamenti me lo dai alla prossima visita. Vedo che sei appena a metà.",
		"Tienimi da parte il seguito della frase. Passo a ritirarlo più avanti.",
	},
	["thb.quest_complete.w24.jest.005"] = {
		"Adesso vado. Piano, s'intende. Non vorrei fare scandalo.",
		"Me ne vado passeggiando. Se corressi, spaventerei i vicini.",
	},
	["thb.quest_complete.w24.jest.006"] = {
		"Altrove contratterei un po'. Qui la trattativa ci sopravvivrebbe a tutti e due.",
		"Volevo chiedere di più. Poi mi sono {g:immaginato|immaginata} la discussione a ritmo tauren e ho lasciato perdere.",
	},
	["thb.quest_complete.w24.jest.007"] = {
		"Un piacere trattare con te. Con calma, con cura, onestamente.",
		"Un buon affare. Senza fretta, ma buono.",
	},
	["thb.quest_complete.w24.jest.008"] = {
		"È il momento in cui restiamo tutti e due qui in silenzio per un po'? Ce la posso fare. Guarda.",
		"E adesso stiamo zitti insieme? D'accordo. Sono {g:bravo|brava} in questo. Più o meno.",
	},
	["thb.quest_complete.w24.jest.009"] = {
		"Stavo per dire «torno di corsa». Quassù è meglio «tornerò, prima o poi, con comodo».",
		"Torno presto? No, città sbagliata. Torno quando capita, senza fretta, a passo dignitoso.",
	},
	["thb.quest_complete.w24.jest.010"] = {
		"Dimmi chiaramente quando finiscono i ringraziamenti. Qui non capisco mai dove terminano.",
		"Hai finito di ringraziarmi, o è solo una pausa? Con voi non si sa mai.",
	},
	["thb.quest_complete.w24.jest.011"] = {
		"Tu ringrazi più lentamente di quanto io lavori. Lo prendo come un complimento per entrambi.",
		"Il tuo grazie è durato più di certe commissioni che ho sbrigato. Non mi lamento. Quasi.",
	},
	["thb.quest_complete.w24.jest.012"] = {
		"Se adesso scappo via, qualcuno se lo segnerà? Ho l'impressione che qualcuno se lo segnerebbe.",
		"Non lasciarmi correre. Qui ne parlerebbero per un anno intero.",
	},
	["thb.quest_complete.w24.jest.013"] = {
		"Qui tutti ascoltano una frase fino in fondo. Mi tocca cominciare a finire le mie.",
		"Mi hai lasciato arrivare alla fine del discorso. Non mi ricordavo più come finiva.",
	},
	["thb.quest_complete.w24.jest.014"] = {
		"Piano con quella stretta. La mano mi serve ancora intera.",
		"Che stretta di mano. Più tardi mi conto le dita, con gratitudine.",
	},
	["thb.quest_complete.w24.jest.015"] = {
		"Scommetto che un goblin, chissà dove, paga il triplo per lo stesso lavoro, e intanto urla.",
		"A Ratchet mi avrebbero dato un contratto e un conto da pagare. Questo è molto meglio.",
	},
	["thb.quest_complete.w24.jest.016"] = {
		"Chiedi con tanta cortesia che direi di sì prima che tu abbia finito. Per fortuna non finisci mai in fretta.",
		"Con modi così potresti chiedermi qualunque cosa. Ti prego, non metterlo alla prova adesso.",
	},
	["thb.quest_complete.w24.jest.017"] = {
		"Dico «di niente» adesso, o aspetto la solita mezz'ora di rito?",
		"C'è un intervallo di cortesia prima di rispondere «è stato un piacere»? Non vorrei anticipare.",
	},
	["thb.quest_complete.w24.jest.018"] = {
		"Finito, e non ho nemmeno corso. Visto? Questa città mi sta contagiando.",
		"Guardami: fermo e annuisco. Dammi una stagione quassù e mi vedrai con le perline nei capelli.",
	},
	["thb.quest_complete.w24.jest.019"] = {
		"In questa città anche un «prego» fa il giro largo.",
		"Qui un saluto d'addio è un viaggio con diverse soste lungo la strada.",
	},
	["thb.quest_complete.w24.jest.020"] = {
		"Ho ringraziato in fretta e la risposta è arrivata come se avessi parlato piano. Forse sentono tutti al loro ritmo.",
		"Mi sono mangiato le parole. La risposta è arrivata calma e intera, come se avessi parlato con tutta calma. Una pazienza così sente le parole anche sotto la fretta.",
	},
	["thb.quest_complete.w24.jest.021"] = {
		"prova ad andarsene di buon passo, ma viene {g:raggiunto|raggiunta}, con molta dolcezza, da un saluto che se la prende comoda.",
		"si avvia verso il ponte a passo svelto, poi dopo pochi metri rallenta, come ricordandosi le buone maniere del posto.",
	},
	["thb.quest_complete.w24.jest.022"] = {
		"Grazie. E no, non lo mangio camminando. Mi siedo, come una persona educata.",
		"Qualcosa per la strada? Lo mangerò da {g:seduto|seduta}, promesso. Qui nessuno mastica camminando.",
	},
	["thb.quest_complete.w24.jest.023"] = {
		"Mi sono {g:sorpreso|sorpresa} a parlare due volte più svelto di chi stavo ringraziando. La prossima volta conto fino a tre tra una frase e l'altra.",
		"A metà dei ringraziamenti mi sono {g:reso|resa} conto che stavo farfugliando. Chi avevo davanti ha aspettato con pazienza che le parole mi raggiungessero.",
	},
	["thb.quest_complete.w24.jest.024"] = {
		"Grazie. Finiamo i convenevoli sotto una tenda? Tu hai pazienza, la pioggia no.",
		"Che bel ringraziamento. Il resto facciamolo da qualche parte più all'asciutto.",
	},
	["thb.quest_complete.w24.jest.025"] = {
		"Grazie. M'inchinerei, ma preferisco non spiegare alla pianura laggiù perché arrivo prima del previsto.",
		"Farei un inchino come si deve, se quest'altura avesse un po' più di terra e un po' meno vuoto.",
	},
	["thb.quest_complete.w24.jest.026"] = {
		"Mi hai ringraziato così piano che ho avuto il tempo di pensare a una risposta. Un lusso raro.",
		"Un grazie tanto calmo ti dà il tempo di trovare una replica decente. Eccola: prego.",
	},
	["thb.quest_complete.w24.jest.027"] = {
		"Arrivederci. Inteso come saluto, non come pausa. Adesso vado. Con calma.",
		"Me ne vado, giuro. Ecco, sto andando. Da un momento all'altro.",
	},
	["thb.quest_complete.w24.nod.001"] = {
		"risponde alle parole basse di ringraziamento con un cenno, e poi con un secondo, più lento, per stare al passo.",
		"fa un solo cenno, profondo, e si prende tutto il tempo prima di rialzare la testa.",
	},
	["thb.quest_complete.w24.nod.002"] = {
		"risponde a voce bassa, senza accorgersi di averla abbassata per intonarsi alla città.",
		"replica più piano del solito: la quiete della rupe {g:gli|le} è entrata nella voce senza chiedere permesso.",
	},
	["thb.quest_complete.w24.nod.003"] = {
		"fa per voltarsi troppo presto, si ferma in tempo e resta ad ascoltare il resto dei ringraziamenti.",
		"accenna ad andarsene, capisce che i ringraziamenti sono tutt'altro che finiti e torna indietro con un sorriso impacciato.",
	},
	["thb.quest_complete.w24.nod.004"] = {
		"si schiarisce la gola per fare un discorso, ci ripensa e si limita a un cenno.",
		"apre bocca per dire qualcosa di solenne, la richiude e si accontenta di un semplice «grazie».",
	},
	["thb.quest_complete.w24.nod.005"] = {
		"sorride a chi {g:gli|le} sta rendendo grazie, visibilmente contento e senza alcuno sforzo di nasconderlo.",
		"sorride a tutta bocca per l'intera durata dei ringraziamenti, il che, visto il ritmo, è un'impresa.",
	},
	["thb.quest_complete.w24.nod.006"] = {
		"s'inchina dalla vita, un inchino prudente, badando al bordo delle assi alle sue spalle.",
		"accenna un piccolo inchino e lo tiene piccolo, con un occhio a quanto è vicino il bordo.",
	},
	["thb.quest_complete.w24.nod.007"] = {
		"batte due volte sulla cinghia dello zaino: una promessa senza parole di tornare, se {g:chiamato|chiamata}.",
		"dà una pacca allo zaino e indica i ponti con un cenno del capo: se c'è altro, sa la strada.",
	},
	["thb.quest_complete.w24.nod.008"] = {
		"stringe la mano che {g:gli|le} viene offerta e poi aspetta, con educazione, di riavere indietro la propria.",
		"sparisce fino al polso dentro una stretta di mano e ne esce sgranchendosi le dita.",
	},
	["thb.quest_complete.w24.nod.009"] = {
		"china il capo e non aggiunge altro, lasciando che sia il silenzio a chiudere la cortesia.",
		"resta in silenzio dopo l'ultima parola di ringraziamento, e quel silenzio pare la risposta giusta.",
	},
	["thb.quest_complete.w24.nod.010"] = {
		"si gratta la nuca, un po' a disagio sotto tanta gratitudine lenta.",
		"si dondola da un piede all'altro mentre i ringraziamenti vanno avanti, poco {g:abituato|abituata} a lodi così lunghe.",
	},
	["thb.quest_complete.w24.nod.011"] = {
		"ripete con cura le parole di commiato, come se la forma della cortesia contasse quanto il suo senso.",
		"rende il saluto parola per parola, lentamente, {g:attento|attenta} a non sbagliarne nessuna.",
	},
	["thb.quest_complete.w24.nod.012"] = {
		"ride di qualcosa detto in risposta, una risata che fa voltare teste sull'altura accanto.",
		"si lascia scappare una risata breve, poi la abbassa in fretta quando qualche viso dall'altra parte si alza a guardare.",
	},
	["thb.quest_complete.w24.nod.013"] = {
		"fa un passo indietro prima di rispondere, per guardare meglio negli occhi chi {g:lo|la} ringrazia.",
		"piega la testa ben all'indietro per rispondere guardando in faccia, e regge lo sguardo senza storie.",
	},
	["thb.quest_complete.w24.nod.014"] = {
		"appoggia per un attimo una mano sull'avambraccio che {g:gli|le} viene teso: un grazie che non ha bisogno di parole.",
		"ricambia la stretta con tutte e due le mani, e lascia la presa solo quando la lascia l'altro.",
	},
	["thb.quest_complete.w24.nod.015"] = {
		"dice qualcosa di semplice e cortese, e un brontolio profondo risponde con tutta l'aria di un assenso.",
		"pronuncia poche parole educate e riceve in cambio un mormorio basso, che sembra chiudere ogni questione.",
	},
	["thb.quest_complete.w24.nod.016"] = {
		"tocca le assi ai suoi piedi prima di rialzarsi per andare, un piccolo gesto che i presenti sembrano approvare.",
		"si accovaccia a posare il palmo sul terreno per un istante dopo i ringraziamenti, e un anziano lì vicino annuisce piano.",
	},
	["thb.quest_complete.w24.nod.017"] = {
		"aspetta che passi una lunga pausa, senza sapere se i ringraziamenti siano finiti o a metà, e sbaglia a indovinare.",
		"comincia a rispondere durante una pausa che pausa non era, e si interrompe con un colpetto di tosse educato.",
	},
	["thb.quest_complete.w24.nod.018"] = {
		"ripone ciò che ha ricevuto senza contarlo né guardarlo, come se qui contare fosse scortese.",
		"mette via il compenso insieme a tutto il resto, con ordine, senza dar mostra di esaminarlo.",
	},
	["thb.quest_complete.w24.nod.019"] = {
		"sorride in un modo che {g:gli|le} resta sul viso ben dopo che le parole sono finite.",
		"si porta dietro il sorriso della consegna fino in fondo all'altura.",
	},
	["thb.quest_complete.w24.nod.020"] = {
		"congedandosi fa una domanda breve sulla città, e ascolta fino in fondo la lunga risposta.",
		"si ferma a chiedere che cosa rappresenti un intaglio lì vicino, e se ne sente raccontare la storia, con calma, dall'inizio.",
	},
	["thb.quest_complete.w24.nod.021"] = {
		"accoglie i ringraziamenti con un'alzata di spalle modesta che non inganna nessuno.",
		"scaccia le lodi con una mano, mentre con l'altra tiene ben stretto il compenso.",
	},
	["thb.quest_complete.w24.nod.022"] = {
		"accoglie i ringraziamenti con un cenno alla luce di un fuoco da campo, i volti intorno dorati e pazienti.",
		"risponde con una parola sommessa, mentre alla luce del fuoco le ombre dei pali delle tende si allungano sulle assi.",
	},
	["thb.quest_complete.w24.nod.023"] = {
		"risponde in fretta a una domanda lenta, poi ne aggiunge una seconda, più posata, per non disturbare.",
		"si accorge di aver risposto prima che la domanda fosse finita, e si scusa a lungo.",
	},
	["thb.quest_complete.w24.nod.024"] = {
		"si porta il pugno al petto in segno di ringraziamento, e tiene il gesto un istante più a lungo di quanto farebbe altrove.",
		"posa una mano aperta sul petto e ce la tiene mentre vengono dette le ultime parole di ringraziamento.",
	},
	["thb.quest_complete.w24.onward.001"] = {
		"Prima la banca, poi un pasto, poi quel che verrà a cercarmi. Un buon ordine per una città tranquilla.",
		"Le monete in banca, poi da mangiare. Per il resto decida pure la città.",
		"Prima la borsa al sicuro, poi io al caldo. Un piano non ha bisogno di essere più grandioso di così.",
	},
	["thb.quest_complete.w24.onward.002"] = {
		"resta un momento al bivio dove i sentieri si dividono tra le alture, senza sceglierne nessuno in particolare.",
		"si ferma dove tre vie si separano sulla mesa e lascia scegliere ai piedi, che se la prendono comoda.",
	},
	["thb.quest_complete.w24.onward.003"] = {
		"Qualcun altro ha bisogno di qualcosa da portare, trovare o guardare storto? No? Bene. Vado.",
		"Ultima chiamata per le commissioni. Niente? Allora vado a sedermi da qualche parte, in grande.",
		"Nient'altro? Allora prendo congedo, e la borsa.",
	},
	["thb.quest_complete.w24.onward.004"] = {
		"Non so ancora dove mi porteranno i piedi. Quassù non saperlo somiglia meno a sentirsi perduti e più a essere liberi di scegliere.",
		"Nessun prossimo passo in programma. Su questa rupe sembra permesso.",
		"Niente che aspetta, niente di promesso. Per una volta la prossima mossa è tutta mia, e non ho nessuna fretta di giocarla.",
	},
	["thb.quest_complete.w24.onward.005"] = {
		"tira fuori dalla bisaccia una mappa piegata, la studia aggrottando la fronte, e conclude che per adesso il posto più importante segnato lì sopra è la locanda.",
		"spiega una vecchia mappa a lavoro chiuso, la studia con serietà, poi la ripiega e si incammina e basta.",
	},
	["thb.quest_complete.w24.onward.006"] = {
		"Là fuori c'è un altro problema che aspetta qualcuno della mia taglia. Può aspettare ancora un po'.",
		"Un altro lavoro c'è sempre. Un cuoco tauren a venti passi, non sempre. Questione di priorità.",
	},
	["thb.quest_complete.w24.onward.007"] = {
		"Qui ho finito. Per una volta prendo il giro lungo: non c'è motivo per non farlo.",
		"Per una volta non ho fretta. Vediamo dove mi portano le alture.",
		"Niente di urgente. Credo che girerò un po' e lascerò scegliere ai piedi.",
	},
	["thb.quest_complete.w24.onward.008"] = {
		"è già a metà strada verso la prossima commissione quando si accorge di non averne nessuna, e si ferma in mezzo al sentiero, un po' {g:sorpreso|sorpresa}.",
		"si avvia di buon passo, poi rallenta e si ferma: non c'è nessun posto in particolare dove debba andare.",
	},
	["thb.quest_complete.w24.onward.009"] = {
		"Mi sento {g:pronto|pronta} per qualcosa di più grande. Un tauren mi direbbe di restare un po' con questa sensazione, prima. Forse avrebbe ragione.",
		"Ho un prurito ai piedi, voglia di qualcosa di più grosso. Un tauren direbbe di lasciarla maturare. Ci provo.",
	},
	["thb.quest_complete.w24.onward.010"] = {
		"E adesso dove? Possibilmente in un posto con sedie della mia misura.",
		"Vado a cercare un sedile della mia taglia. Auguratemi buona fortuna.",
		"Prossima tappa: un posto dove andare piano senza sforzarmi.",
	},
	["thb.quest_complete.w24.onward.011"] = {
		"chiede la strada a una guardia di passaggio e ottiene, dopo una pausa pensosa, indicazioni così precise da comprendere le assi allentate.",
		"domanda come arrivare alla banca e riceve indicazioni lente e accurate, ogni punto di riferimento offerto come un piccolo dono.",
	},
	["thb.quest_complete.w24.onward.012"] = {
		"La prossima cosa che faccio è sedermi, e ho intenzione di farla benissimo.",
		"Prossimo incarico: una panca. Avrà tutta la mia attenzione.",
		"Mi resta un ultimo lavoro: una lunga seduta. Sono la persona giusta.",
	},
	["thb.quest_complete.w24.onward.013"] = {
		"Per generazioni i tauren hanno seguito le mandrie senza un posto fisso. Andando via senza un piano, li capisco un poco.",
		"Nessun piano per dopo. I tauren hanno vagato per generazioni con meno di così, e alla fine hanno costruito questa città.",
	},
	["thb.quest_complete.w24.onward.014"] = {
		"Ripasso a salutare prima di lasciare la città.",
		"Prima di andare passo da voi. Non alzatevi.",
		"Ripasserò di qui prima di partire. Tenetemi un posto.",
	},
	["thb.quest_complete.w24.onward.015"] = {
		"si volta per andarsene, ma un colpo di tosse educato annuncia che c'è ancora una piccola cosa, e verrà spiegata con calma.",
		"ha quasi preso congedo quando una voce profonda aggiunge, senza fretta, che forse ci sarebbe dell'altro, un giorno, se non è di disturbo.",
	},
	["thb.quest_complete.w24.onward.016"] = {
		"Qualunque cosa venga dopo, ci andrò un po' più {g:saldo|salda}. Questa città ti presta il suo passo per un po', dopo che le hai lasciato un lavoro.",
		"Porterò la lentezza di questo posto in quello che verrà. È una buona cosa da prendere in prestito.",
	},
	["thb.quest_complete.w24.onward.017"] = {
		"Ovunque mi portino i piedi, la rupe resta dov'è. È saperlo che rende facile partire.",
		"Posso andarmene a zonzo con il passo leggero. Le mese non si muovono, e il mio posto su di esse nemmeno.",
	},
	["thb.quest_complete.w24.onward.018"] = {
		"Fatto. Adesso vado a fare quello che ai tauren riesce meglio: niente di niente, per tutto il tempo che serve.",
		"Finito. Ora vado a stare in piedi da qualche parte, con pazienza. Mi dicono che sia lo sport del posto.",
		"Finito. Vado a esercitarmi nell'immobilità. Pare che sia un'arte.",
	},
	["thb.quest_complete.w24.onward.019"] = {
		"guarda verso la locanda, poi verso la banca, poi verso le alture lontane, e risolve la questione seguendo un buon profumo.",
		"mette sulla bilancia la locanda e la banca, per un momento, e lascia al naso il voto decisivo.",
	},
	["thb.quest_complete.w24.onward.020"] = {
		"si allontana mentre i fuochi si accendono uno a uno sulle alture, e decide che la prossima cosa può aspettare che si rifaccia giorno.",
		"si lascia l'incarico alle spalle mentre il crepuscolo toglie colore alla pianura, senza alcuna fretta di trovarne un altro.",
	},
	["thb.quest_complete.w24.onward.021"] = {
		"si ferma a riallacciare uno stivale sulle assi, e quando il nodo è stretto la prossima commissione si è già scelta da sola.",
		"si china a sistemare una fibbia allentata e si rialza con la prossima mossa decisa, come se l'avesse stabilita il nodo.",
	},
	["thb.quest_complete.w24.onward.022"] = {
		"Adesso non c'è niente che io debba fare. Continuo a rigirarmelo tra le dita come una moneta trovata.",
		"Un momento senza niente da dover fare per nessuno. È come trovare una moneta in una vecchia tasca.",
	},
	["thb.quest_complete.w24.reckon.001"] = {
		"I tauren parlano ancora degli orchi che li aiutarono contro i centauri. Un popolo che ricorda un aiuto così a lungo ricorderà anche questo, nel suo piccolo.",
		"Se onorano ancora il debito con gli orchi di Thrall dagli anni duri, il mio piccolo favore ha trovato un custode attento.",
	},
	["thb.quest_complete.w24.reckon.002"] = {
		"si sente dire, con gravità, che questo non sarà dimenticato, e le parole hanno il peso di una promessa più che di una cortesia.",
		"sente dire che l'aiuto verrà ricordato, con parole semplici e una volta sola, nella voce di chi tiene conti del genere per tutta la vita.",
	},
	["thb.quest_complete.w24.reckon.003"] = {
		"Su questa rupe c'è adesso qualcuno che mi deve un favore e se lo ricorderà di sicuro. Forse nel momento meno opportuno.",
		"Adesso quassù qualcuno è in debito con me. Dicono che i tauren ripaghino per intero, di solito quando te ne sei già {g:dimenticato|dimenticata}.",
	},
	["thb.quest_complete.w24.reckon.004"] = {
		"Una sensazione piccola e pulita, come un nodo fatto a regola d'arte. Nessuno lo controllerà mai, e va bene così.",
		"È poca cosa, un lavoro finito come si deve. La soddisfazione è grande quanto un sassolino e sta comoda in tasca.",
		"Nessuno applaude. Non serve. Una cosa fatta bene ronza da sola, per un po'.",
	},
	["thb.quest_complete.w24.reckon.005"] = {
		"Nessun debito tra noi. O, se c'è, che un giorno vada nell'altro senso.",
		"Non mi dovete niente. Ricordatevelo lo stesso: quassù un amico potrebbe servirmi.",
		"Diciamo che siamo pari. O diciamo che è un inizio: mi piacerebbe di più.",
	},
	["thb.quest_complete.w24.reckon.006"] = {
		"nota un tauren che incide un segno con l'unghia su una striscia di pelle, e si chiede se quassù anche gli aiuti si contino così.",
		"vede una tacca fresca su un bastone di conto appeso accanto a una soglia, e si sorprende a chiedersi che cosa conti.",
	},
	["thb.quest_complete.w24.reckon.007"] = {
		"La mia buona azione è diventata un ricordo tauren. Sopravvivrà a me, ai miei stivali e probabilmente alla mia reputazione.",
		"In una mente più lenta e più lunga della mia mi stanno mettendo in archivio. Con delicatezza.",
	},
	["thb.quest_complete.w24.reckon.008"] = {
		"Adesso la città mi deve un poco, e io devo un poco a lei, e nessuno dei due tiene il conto stretto. Credo che l'amicizia cominci così.",
		"Un piccolo debito da ogni parte. Nessuno che conta. Lo chiamerei un inizio.",
	},
	["thb.quest_complete.w24.reckon.009"] = {
		"si siede un momento su una cesta rovesciata, rigirando la ricompensa tra le dita, {g:contento|contenta} di niente in particolare.",
		"si concede un sorrisetto tutto per sé, appena nessuno guarda.",
	},
	["thb.quest_complete.w24.reckon.010"] = {
		"I tauren dicono che una gentilezza non va mai perduta, solo sepolta, come un seme in custodia alla Madre Terra. Lo dicono loro; a me piace sentirlo.",
		"Mi dicono che per i tauren la Madre Terra conserva ogni gentilezza come il terreno conserva un seme. È un modo gentile di pensare ai conti.",
	},
	["thb.quest_complete.w24.reckon.011"] = {
		"Bene. C'è una cosa al mondo un po' più in ordine di prima.",
		"Ecco. Il mondo è di un pelo più ordinato.",
		"Sistemato. Un filo pendente in meno.",
	},
	["thb.quest_complete.w24.reckon.012"] = {
		"Ho sentito che i tauren onorano i debiti persino verso i morti. Spero che nessuno debba mai onorare il mio in quel modo.",
		"Pare che i tauren saldino i conti perfino con gli antenati. Io preferirei riscuotere di persona.",
	},
	["thb.quest_complete.w24.reckon.013"] = {
		"si sente raccomandare, sulla via d'uscita, di ricordare una tenda e la strada per arrivarci, nel caso abbia mai bisogno di qualcosa.",
		"si vede indicare a quale tenda rivolgersi in caso di bisogno, e l'offerta arriva con la serietà semplice di un debito messo per iscritto.",
	},
	["thb.quest_complete.w24.reckon.014"] = {
		"Quando l'Orda avrà bisogno di una mano, ricordatevi della mia. Io mi ricorderò della vostra.",
		"L'Orda aiuta l'Orda. Chiamatemi, e io chiamerò voi.",
		"L'Orda tiene i suoi conti. Contatemi nei vostri.",
	},
	["thb.quest_complete.w24.reckon.015"] = {
		"La gratitudine dei tauren è come il loro pane: lenta da fare, pesantissima, e si conserva per settimane.",
		"Avere un favore in sospeso con un tauren è come avere in credito una montagna. Non si sposta, ed è enorme.",
	},
	["thb.quest_complete.w24.reckon.016"] = {
		"Nessuno quassù ne farà un racconto. Meglio così. Certi lavori stanno bene a riposare in silenzio dentro chi ne aveva bisogno.",
		"Non ci sarà nessuna storia da narrare, e mi sta bene. Va dove i tauren custodiscono le cose: nella loro memoria lunga e quieta.",
	},
	["thb.quest_complete.w24.reckon.017"] = {
		"Non c'è di che. Anzi, ditelo pure. Una volta, piano. Ho imparato ad apprezzarlo.",
		"Non serve ringraziare. Ma se insistete, prendetevela comoda. Qui lo fanno tutti.",
		"Non serve ringraziare. Be', un pochino serve. Prego.",
	},
	["thb.quest_complete.w24.reckon.018"] = {
		"Tra tauren un debito non è un peso: è una corda tesa fra due tende. Ne ho legata un'altra.",
		"Per la nostra gente un favore è un filo, non una catena. Il mio ora arriva a un focolare in più.",
	},
	["thb.quest_complete.w24.reckon.019"] = {
		"conta le monete della ricompensa una volta, per abitudine, e poi una seconda, per qualcosa di più simile al piacere.",
		"fa il conto della ricompensa col pollice, per abitudine, poi si ferma e la tiene in mano un momento, {g:soddisfatto|soddisfatta}.",
	},
	["thb.quest_complete.w24.reckon.020"] = {
		"La memoria dei tauren è lunga. Qualche anziano su questa rupe se ne ricorderà ancora quando io non ci sarò più. Strano conforto, ma pur sempre conforto.",
		"Quasi ovunque mi dimenticheranno. Qui, ho idea, qualche mente paziente custodirà questa piccola cosa ben oltre il mio tempo.",
	},
	["thb.quest_complete.w24.reckon.021"] = {
		"Sono felice che sia finita. E che sia stato per voi.",
		"Mi fa piacere che sia stato per questa città.",
		"È stato bello farlo per voi.",
	},
	["thb.quest_complete.w24.reckon.022"] = {
		"Probabilmente me ne dimenticherò prima di loro. Mi sembra ingiusto nei loro confronti, e molto generoso da parte loro.",
		"Se lo ricorderanno più a lungo di me. Lo trovo stranamente commovente.",
	},
	["thb.quest_complete.w24.reckon.023"] = {
		"Se mai servisse rifarlo, sapete a chi chiedere.",
		"Quando volete, lo rifaccio. Per i bis non chiedo di più.",
	},
	["thb.quest_complete.w24.spoken.001"] = {
		"Grazie di avermi ascoltato. Parlo svelto, eppure hai seguito ogni parola.",
		"Hai aspettato che finissi ogni frase. Già questo valeva la fatica.",
	},
	["thb.quest_complete.w24.spoken.002"] = {
		"È un onore che tu l'abbia affidato a me. Lo dico sul serio.",
		"Con tutta la gente che c'è su questa rupe, hai chiesto proprio a me. Non me lo scordo.",
	},
	["thb.quest_complete.w24.spoken.003"] = {
		"Vale più di quanto immagini.",
		"Sei gentile. Quelle parole me le terrò più a lungo di qualsiasi cosa nello zaino.",
		"Quelle poche parole bastano e avanzano. Davvero.",
	},
	["thb.quest_complete.w24.spoken.004"] = {
		"Fatto come chiedevi: niente in più, niente in meno.",
		"Tutto quanto, come lo volevi. Controlla pure, io aspetto.",
	},
	["thb.quest_complete.w24.spoken.005"] = {
		"Che la terra sotto questa città resti salda ancora per molto.",
		"Terra buona sotto i tuoi passi, e sotto ogni altura di questo posto.",
	},
	["thb.quest_complete.w24.spoken.006"] = {
		"Niente discorsi. Fra noi due basta un cenno.",
		"Tieni i ringraziamenti lunghi per chi ne ha bisogno. A me basta un cenno del capo.",
	},
	["thb.quest_complete.w24.spoken.007"] = {
		"Se c'è altro da fare, dimmelo tu. Preferisco saperlo da te che dalle chiacchiere.",
		"Se ti servissero ancora mani di buona volontà, chiedi le mie prima di chiunque.",
	},
	["thb.quest_complete.w24.spoken.008"] = {
		"Aiutarti mi ha fatto piacere. Piacere vero, non di cortesia.",
		"Mi fa piacere che sia toccato a me. Ci sono lavori che fa bene sentirsi chiedere.",
	},
	["thb.quest_complete.w24.spoken.009"] = {
		"Ti ringrazio. E grazie anche di non avermi messo fretta.",
		"Con te sembra di avere a disposizione tutto il tempo che c'è. Altrove mi mancherà.",
	},
	["thb.quest_complete.w24.spoken.010"] = {
		"Lo accetto volentieri, e ancor più volentieri la mano che me lo porge.",
		"Ti ringrazio. Ricorderò il gesto più del dono.",
	},
	["thb.quest_complete.w24.spoken.011"] = {
		"Dici «ben fatto» come se ogni parola pesasse una pietra. E così le porterò.",
		"Due parole di lode da te valgono dieci di chiunque altro. Me le prendo.",
	},
	["thb.quest_complete.w24.spoken.012"] = {
		"Non è stato niente. No, non è vero: qualcosa è stato, e mi fa piacere che tu l'abbia visto.",
		"Vorrei dire che è stato facile. Non proprio. Grazie di averlo notato.",
	},
	["thb.quest_complete.w24.spoken.013"] = {
		"È giusto, e dato con giustizia. Non ho niente da ridire.",
		"Equo. Anzi, più che equo, a dirla tutta, e io cerco di dirla sempre.",
	},
	["thb.quest_complete.w24.spoken.014"] = {
		"Il tuo grazie è arrivato, e te lo rendo.",
		"Accolgo il tuo ringraziamento. Accogli il mio, per la fiducia.",
	},
	["thb.quest_complete.w24.spoken.015"] = {
		"Mi hai guardato negli occhi per tutto il tempo. Chi ha fretta non lo fa mai.",
		"Era un pezzo che nessuno mi guardava in faccia così a lungo. Strano, ma in senso buono.",
	},
	["thb.quest_complete.w24.spoken.016"] = {
		"Ecco. Adesso è nelle tue mani.",
		"È tuo. La mia parte finisce qui, comincia la tua.",
	},
	["thb.quest_complete.w24.spoken.017"] = {
		"Pace sulla tua tenda, e su chi ne custodisce il fuoco.",
		"Che al tuo fuoco non manchi mai la legna, né amici alla tua porta.",
	},
	["thb.quest_complete.w24.spoken.018"] = {
		"Facendolo ho imparato qualcosa, quindi in fondo dovrei ringraziarti io.",
		"Buffo: me ne vado sapendo più di prima. Chiamiamola una seconda ricompensa.",
	},
	["thb.quest_complete.w24.spoken.019"] = {
		"Se qualcun altro qui intorno ha bisogno d'aiuto, mandalo da me.",
		"Conosci qualcuno con un lavoro da sbrigare? Fammelo sapere.",
	},
	["thb.quest_complete.w24.spoken.020"] = {
		"Parli così piano che mi sono quasi sporto per sentire. Meno male.",
		"Quella tua voce bassa arriva più lontano di un grido. Ho sentito tutto.",
	},
	["thb.quest_complete.w24.spoken.021"] = {
		"Cammina leggero, e che gli spiriti che onori ti tengano in salute.",
		"I tuoi antenati sarebbero fieri di come ringrazi chi viene da fuori. Ci metterei la mano sul fuoco.",
	},
	["thb.quest_complete.w24.spoken.022"] = {
		"Grazie. No, basta un cenno: non devi rispondermi parola per parola.",
		"Io ti ho ringraziato quattro volte, tu una. Credo che tu stia vincendo.",
	},
	["thb.quest_complete.w24.spoken.023"] = {
		"Ho ringraziato all'antica, con le parole del nostro popolo. Mi sono uscite senza pensarci.",
		"Le vecchie parole di ringraziamento sono arrivate da sole. Sulla nostra rupe arrivano sempre.",
	},
	["thb.quest_complete.w24.spoken.024"] = {
		"Il vostro capo ha parlato per la mia gente quando pochi l'avrebbero fatto. Un incarico così è il minimo che vi devo.",
		"Non sono molte le porte che si aprono per quelli come me. Quelle che si sono aperte non le dimentico.",
	},
	["thb.quest_complete.w24.spoken.025"] = {
		"Quando la mia gente è arrivata a Kalimdor, la tua ci ha indicato la strada. Questo è spicciolame a confronto.",
		"Gli orchi ricordano chi è stato al loro fianco da questa parte del mare. Ringraziami meno e lasciami fare di più.",
	},
	["thb.quest_complete.w24.spoken.026"] = {
		"Io ho detto grazie tre volte. Dall'altra parte me l'hanno detto una volta sola, e valeva più di tutte e tre le mie.",
		"Il mio grazie è uscito di corsa, un mucchio di parole piccole. La risposta era una parola sola, e pesava di più.",
	},
	["thb.quest_complete.w24.spoken.027"] = {
		"Avevo pronto un intero discorso. Il cenno che ho ricevuto l'ha reso inutile, e me lo sono {g:tenuto|tenuta}.",
		"Avevo in serbo un bel discorsetto. Poi si è visto che non serviva a nessuno, nemmeno a me.",
	},
	["thb.quest_complete.w24.spoken.028"] = {
		"Qui abbasso la voce senza volerlo. Sulla rupe nessuno grida, e così, chissà come, nemmeno io.",
		"La voce mi si è fatta bassa da sola. È la città: lei non la alza mai.",
	},
	["thb.quest_complete.w24.spoken.029"] = {
		"Volevo dire qualcosa di brillante alla consegna. Mi è uscito solo «grazie», ed era la cosa giusta.",
		"Cercavo una risposta arguta e ho trovato soltanto un grazie semplice. Meglio così.",
	},
	["thb.quest_complete.w24.spoken.030"] = {
		"Qui la cortesia è abbastanza lenta da accorgersene. E mi sono {g:accorto|accorta} che mi piace, con mia sorpresa.",
		"Altrove i ringraziamenti finiscono prima che tu li senta. Qui ho avuto il tempo di sentirli.",
	},
	["thb.quest_complete.w24.spoken.031"] = {
		"Grazie. Torna al tuo fuoco: non è ora di stare in giro a ringraziare la gente.",
		"Grazie, e buonanotte. Non ti rubo altro tempo alle coperte.",
	},
	["thb.quest_complete.w24.spoken.032"] = {
		"Bene. Un pensiero in meno per te, e nessuno in più per me.",
		"Sistemato, allora, e nessuno ci ha rimesso.",
	},
	["thb.quest_complete.w24.spoken.033"] = {
		"Hai sorriso. Su un viso così paziente, un sorriso vale un discorso intero.",
		"È il sorriso più grande che mi sia {g:guadagnato|guadagnata} da un bel pezzo. Vale più della paga.",
	},
	["thb.quest_complete.w24.spoken.034"] = {
		"Stammi bene. E attenzione ai ponti, anche se immagino che tu non abbia bisogno che te lo dica.",
		"Stai in salute. È tutto il commiato che ho, e lo penso tutto.",
	},
	["thb.quest_complete.w24.spoken.035"] = {
		"Non serve che mi accompagni. Conosco la strada, più o meno. Più meno che più.",
		"Da questa altura me ne vado da {g:solo|sola}. Se non ci riesco, lo verrai a sapere.",
	},
	["thb.quest_complete.w24.spoken.036"] = {
		"Grazie anche per il silenzio. Non sapevo che mi mancasse.",
		"I ringraziamenti erano gentili. La calma che è venuta dopo, ancora di più.",
	},
	["thb.quest_complete.w24.spoken.037"] = {
		"Mi dicono che la Madre Terra vede il lavoro onesto. Se ha visto questo, spero le sia piaciuto.",
		"Gli sciamani dicono che chi veglia sulla terra nota anche le piccole opere. Che allora noti questa con benevolenza.",
	},
	["thb.quest_complete.w24.vow.001"] = {
		"Chiama e verrò. Non dovrai chiederlo due volte.",
		"Fammi sapere quando c'è altro. Risponderò prima che il messaggero si sia seduto.",
	},
	["thb.quest_complete.w24.vow.002"] = {
		"Tieni il mio nome a portata di mano. Ho intenzione di rendermi utile in questa città.",
		"Ricordati la mia faccia, va bene? Conto di tornare a fartela vedere.",
	},
	["thb.quest_complete.w24.vow.003"] = {
		"Hai la mia parola, per quel che pesa quassù una parola mia.",
		"Te lo prometto. La mia parola forse pesa meno della tua, ma regge.",
	},
	["thb.quest_complete.w24.vow.004"] = {
		"Tienimi da parte la prossima cosa difficile. Quella che nessun altro vuole toccare.",
		"La prossima volta dammi qualcosa che meriti una canzone. Lo porterò a termine.",
	},
	["thb.quest_complete.w24.vow.005"] = {
		"Qualunque altra cosa questa città mi chieda, sono qui ad ascoltare.",
		"Chiedi pure quando vuoi. Sarò io a dirti di sì.",
	},
	["thb.quest_complete.w24.vow.006"] = {
		"Ho detto di mandarmi a chiamare. E l'ho detto più sul serio del solito.",
		"«Chiamami quando vuoi», ho detto. Altrove è una formula di cortesia. Qui mi vergognerei a non pensarlo davvero.",
	},
	["thb.quest_complete.w24.vow.007"] = {
		"Ho offerto altro aiuto senza che nessuno me lo chiedesse. Questo posto ti tira fuori le promesse di bocca.",
		"Già due volte mi sono {g:offerto|offerta} per lavori che nessuno aveva nominato. Qui non chiedono: aspettano, e il silenzio lo riempio io.",
	},
	["thb.quest_complete.w24.vow.008"] = {
		"Se il problema dovesse tornare, non dovrai affrontarlo senza nessuno accanto. È una promessa.",
		"Qualunque cosa fosse, se ricomincia non aspettare. Vieni a cercarmi.",
	},
	["thb.quest_complete.w24.vow.009"] = {
		"Le mie mani sono tue quando ti servono. Basta una parola.",
		"C'è ancora lavoro in queste mani. Usalo quando vuoi.",
	},
	["thb.quest_complete.w24.vow.010"] = {
		"Non lascio le cose a metà. Se più avanti c'è da finire, tocca sempre a me.",
		"Se resta qualcosa in sospeso, lo sistemo io. Lavoro così.",
	},
	["thb.quest_complete.w24.vow.011"] = {
		"Per la tribù, sempre. Non c'è bisogno che tu mi ringrazi.",
		"Fra gente dello stesso sangue non si ringrazia. L'avrei fatto anche due volte.",
	},
	["thb.quest_complete.w24.vow.012"] = {
		"L'Orda non tradisce i suoi amici. Chiama, e risponderò.",
		"Un lavoro per un alleato, e ne farei altri dieci. L'Orda serve a questo.",
	},
	["thb.quest_complete.w24.vow.013"] = {
		"Ho promesso di tornare se ci fosse bisogno. Dirlo ad alta voce l'ha reso un po' più pesante, com'è giusto.",
		"Una promessa detta davanti a un tauren sembra incisa in un palo. Farò bene a mantenerla.",
	},
	["thb.quest_complete.w24.vow.014"] = {
		"La prossima volta che salgo sulla rupe, sarai la prima persona che cerco.",
		"Quando passo di qui mi fermo al tuo fuoco. Non per lavoro, solo per sedermi un po'.",
	},
	["thb.quest_complete.w24.worth.001"] = {
		"I tauren non misurano un lavoro da quanto è grande, ma da quanto regge. Spero che il mio regga.",
		"Mi sembra che quassù chiedano una cosa sola a ogni lavoro: durerà? Non quanto è grandioso, non quanto è svelto. Durerà?",
		"Su questa rupe conta poco se un lavoro era grande. Conta se fra dieci inverni sarà ancora saldo.",
	},
	["thb.quest_complete.w24.worth.002"] = {
		"Un popolo che ha atteso generazioni per una casa non stima la fretta. Qualunque cosa io abbia fatto, la peseranno negli anni.",
		"Per gente che ha vagato per generazioni prima di alzare queste tende, una buona azione si giudica piano, stagione dopo stagione.",
	},
	["thb.quest_complete.w24.worth.003"] = {
		"Chiederei quanto vale per voi, ma temo che la risposta richieda una stagione intera.",
		"Ne valeva la pena? Chiedetemelo l'anno prossimo. Pare che quassù funzioni così.",
		"È venuto bene? Non rispondete subito. So che vorrete dormirci sopra. Più volte.",
	},
	["thb.quest_complete.w24.worth.004"] = {
		"riceve per il lavoro un cenno lungo e attento, di quelli che si riservano alle cose fatte per durare.",
		"vede accogliere il lavoro non con entusiasmo ma con attenzione, considerato piano, come qualcosa che ha davanti una lunga vita.",
	},
	["thb.quest_complete.w24.worth.005"] = {
		"Qui nessuno ricorderà quanto mi ha pagato. Ricorderanno se ho mantenuto la parola. È un registro migliore in cui stare.",
		"Quassù non conservano il prezzo, conservano la promessa. Ho mantenuto la mia, e su questa altura qualcuno ne ha preso nota.",
	},
	["thb.quest_complete.w24.worth.006"] = {
		"L'oro si spende dappertutto. La stima di un tauren solo qui, ma non finisce mai.",
		"Le monete spariranno presto. La benevolenza resta sulla rupe, e frutta interessi al passo dei tauren.",
	},
	["thb.quest_complete.w24.worth.007"] = {
		"nota le mani che hanno dato la ricompensa, larghe e segnate da vecchi lavori, e prende forma il pensiero che mani così non chiedono niente alla leggera.",
		"lancia un'occhiata alle mani che hanno pagato, enormi e screpolate: mani che con tutta evidenza non hanno mai chiesto niente di superfluo.",
	},
	["thb.quest_complete.w24.worth.008"] = {
		"Una piccolezza, davvero. Però mi dicono che qui sono proprio le piccolezze a restare.",
		"Non era granché. Ma ho sentito dire che questa città ha buona memoria anche per il poco.",
		"Niente che meriti una canzone. Un cenno, forse.",
	},
	["thb.quest_complete.w24.worth.009"] = {
		"Un popolo che ha perso tanto nelle pianure aperte non spreca un aiuto. Quello che ho fatto, qualcuno quassù lo farà durare più di quanto saprei io.",
		"Gente che un tempo doveva portarsi addosso tutto ciò che possedeva ha imparato a non buttare via niente. Nemmeno una mano tesa.",
	},
	["thb.quest_complete.w24.worth.010"] = {
		"Un cenno lento e una parola sola. Ho sentito discorsi interi che dicevano meno.",
		"Un cenno, una parola, fine. Certi araldi avrebbero da imparare.",
		"Tre parole di grazie. In certe città sarebbe una cerimonia intera.",
	},
	["thb.quest_complete.w24.worth.011"] = {
		"si volta una volta, a pochi passi, e vede che il lavoro sta già trovando il suo posto, senza fretta, come se fosse sempre stato nei piani.",
		"si gira a guardare una volta sola: la faccenda appena chiusa è già ripiegata dentro il lento lavoro del posto.",
	},
	["thb.quest_complete.w24.worth.012"] = {
		"Per la mia gente il grazie conta quasi poco. Il lavoro entra nella città come il grano nel granaio comune.",
		"Fatto qui, per noi, vale di più. Non in monete: in qualcosa che le monete non sanno contare.",
	},
	["thb.quest_complete.w24.worth.013"] = {
		"Che vi serva per tutto il tempo che vi occorre.",
		"Fatene buon uso, e a lungo.",
		"Che vi torni utile per molte stagioni.",
	},
	["thb.quest_complete.w24.worth.014"] = {
		"Un tauren mi ha detto una volta che l'erba non ha fretta e copre lo stesso tutta la pianura. Credo che quassù un piccolo lavoro valga così.",
		"Hanno un detto, qui, o così mi ha raccontato un cacciatore: l'erba è lenta e l'erba vince. Il mio lavoro ne è un filo.",
	},
	["thb.quest_complete.w24.worth.015"] = {
		"soppesa la ricompensa in una mano e il lungo, ponderato ringraziamento nell'altra, e non sembra {g:sicuro|sicura} di quale pesi di più.",
		"fa tintinnare la borsa una volta, poi ripensa alle parole lente che l'hanno accompagnata, e per un attimo le monete sembrano la parte più leggera.",
	},
	["thb.quest_complete.w24.worth.016"] = {
		"Un popolo che conta gli anni in mandrie e stagioni non giudica un aiuto sul momento. Aspetta di vedere cosa cresce.",
		"Lo giudicheranno come si giudica un vitello appena nato o un campo seminato: più avanti, con pazienza, da quello che diventa.",
	},
	["thb.quest_complete.w24.worth.017"] = {
		"Prendetevi pure il vostro tempo per decidere se è venuto bene. So che lo farete.",
		"Nessuna fretta di dire che è stato fatto bene. Si vede.",
		"Giudicatelo quando volete. Anche a primavera va benissimo.",
	},
	["thb.quest_complete.w24.worth.018"] = {
		"La paga è giusta. Il meglio è che, la prossima volta che passerò da questa tenda, il lembo resterà aperto un po' più a lungo.",
		"Le monete vanno bene. Il compenso vero quassù è più quieto: un cenno che, la prossima volta, arriverà un istante prima.",
	},
	["thb.quest_complete.w24.worth.019"] = {
		"si sente dire, quasi di passaggio, che accanto a questo fuoco c'è posto quando vuole, e dal tono si capisce che il vero compenso è quello.",
		"sente dire, quasi per caso, che a questo focolare ci sarà sempre posto, e dalla voce capisce che nient'altro di quanto ricevuto vale altrettanto.",
	},
	["thb.quest_complete.w24.worth.020"] = {
		"Credo che per loro il valore di questa cosa non stia in ciò che è stato fatto, ma in chi ha scelto di farlo. Qui un paio di mani volenterose conta parecchio.",
		"Per i tauren il dono sta nel farsi avanti. Conta meno quello che ho fatto di preciso, e più che abbia risposto quando mi hanno chiamato.",
	},
	["thb.quest_complete.w24.worth.021"] = {
		"Strano essere pagati da gente che sembra considerare il compenso la parte meno interessante.",
		"La ricompensa me l'hanno passata come si passa il sale. Per il grazie, invece, si sono presi tutto il tempo.",
	},
]==])
