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
]==])
