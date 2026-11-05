-- Italian texts of the regional pack kalimdor_ungorocrater (content wave W04). The rules are in AzerothUnspoken_Kalimdor/UnGoroCrater.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("ungorocrater", "itIT", "kalimdor_ungorocrater", [==[
	["ung.a.attack.01"] = {
		"Per l'Alleanza, e per qualcosa di fresco da bere dopo!",
		"Fuori dalle felci e dentro la mischia!",
	},
	["ung.a.attack.02"] = {
		"Il cratere ti ha fatto grosso. Vediamo se ti ha fatto anche furbo.",
		"Ti ha fatto crescere Un'Goro. Io sono qui per potare.",
	},
	["ung.a.battle.01"] = {
		"Non sono {g:sceso|scesa} in questo forno per tirarmi indietro adesso. Fatti sotto.",
		"C'è spazio in abbondanza fra le felci. Sistemiamo la faccenda.",
		"Hai sbagliato persona, e hai sbagliato anche lato del cratere.",
	},
	["ung.a.battle.02"] = {
		"Prima il caldo, poi il nemico. Respiro lento, o quest'aria mi affoga prima di lui.",
		"Breve e secco. Un combattimento lungo in questo vapore lo perdo contro il caldo.",
	},
	["ung.a.battle.03"] = {
		"D'accordo, bestione. Hai denti lunghi come il mio braccio. Il braccio lo terrò altrove.",
		"Saresti il re del cratere, eh? Anche i re cadono, come tutti.",
		"A ogni tuo passo trema la terra. Vediamo come ti trovi quando ci finisci sopra.",
	},
	["ung.a.battle.04"] = {
		"Torna nel tuo alveare, insetto! Il cratere ne ha già abbastanza di voi.",
		"Gorishi! Giù nella tua tana, che è il tuo posto.",
	},
	["ung.a.battle.05"] = {
		"pianta i piedi nel terreno molle e umido, fra le felci che tremano tutt'intorno.",
		"scosta una fronda gocciolante e si volta ad affrontare il nemico.",
		"trova un appoggio fra radici gigantesche, col sudore che già cola negli occhi.",
	},
	["ung.a.battle.06"] = {
		"Qualcos'altro in questo cratere vuole la mia pelle. Un'Goro è generoso, in questo.",
		"Un altro scontro. Il cratere li distribuisce come il rifugio distribuisce lavoro.",
	},
	["ung.a.journey.01"] = {
		"si leva da Marshal's Refuge, e il cratere si apre là sotto: una conca verde piena di vapore, con la cresta che fuma nel mezzo.",
		"sale oltre la parete di roccia, e l'aria calda e umida resta indietro come una porta che si chiude.",
	},
	["ung.a.journey.02"] = {
		"A terra, al rifugio. Un respiro di quest'aria e sto già sudando. Benvenuti a Un'Goro.",
		"Atterraggio sulla cengia. Là sotto la giungla fuma e brontola, e non le importa chi sia arrivato.",
	},
	["ung.a.landmark.fireplume.01"] = {
		"Fire Plume Ridge. La terra è calda attraverso gli stivali, e lassù in cima il lago di lava arde come una forgia lasciata aperta.",
		"Sulla cresta la roccia è nera e l'aria tremola. Tutto quel che vive qui è fatto di fuoco, o vorrebbe essere altrove.",
		"{landmark}. Il cuore del calore del cratere. Quassù ogni respiro sa di cenere.",
	},
	["ung.a.lowhp.01"] = {
		"Non nel catrame. Non un altro mucchio di ossa da far conservare alle pozze.",
		"Se cado qui, in una settimana la giungla mi copre. Muoviti. Muoviti.",
	},
	["ung.a.lowhp.02"] = {
		"Tieni duro. Il rifugio è lassù, e ho tutta l'intenzione di arrivarci.",
		"Non ancora. Non ho fatto tanta strada per finire come cena di qualcosa.",
	},
	["ung.a.lowhp.03"] = {
		"Caldo nei polmoni, sapore di ferro in bocca. Respira. Pensa. Poi colpisci.",
		"Troppo caldo per pensare, troppo male per aspettare. Scegli una cosa e falla.",
	},
	["ung.a.muse.01"] = {
		"Felci alte come una casa, e foglie così larghe da dormirci sotto. Il cratere non fa niente a metà.",
		"Ogni pianta qui sembra essersi mangiata le vicine. Qualcuna, probabilmente, l'ha fatto davvero.",
		"Continuo ad abbassarmi sotto fronde che farebbero ombra a un carro intero. In questa conca niente è cresciuto pensando alla gente.",
	},
	["ung.a.muse.02"] = {
		"A est di qui cammina un devilsaur. Non lo vedo, ma lo sento negli stivali, un colpo ogni pochi battiti.",
		"La terra dà un tonfo lento, poi un altro. Passa qualcosa di pesante, e tutto il cratere sembra trattenere il fiato.",
		"Quando camminano i devilsaur, gli uccelli tacciono. Ho imparato a tacere con loro.",
	},
	["ung.a.muse.03"] = {
		"I piloni vibrano quando mi avvicino, un suono che si sente più nelle ossa che nelle orecchie. Chi li ha eretti sapeva di questo cratere qualcosa che io non so.",
		"Quei piloni di cristallo erano vecchi prima che chiunque al rifugio venisse al mondo. Se ne stanno lì a ronzare fra sé, e i loro segreti se li tengono.",
	},
	["ung.a.muse.04"] = {
		"Appunto per l'Explorers' League: qui tutto è più grosso, più affamato e di umore peggiore che nei disegni.",
		"Se a Ironforge qualcuno chiede: sì, le lucertole sono davvero così grandi. Anzi, di più.",
		"Sono {g:venuto|venuta} a vedere le meraviglie del cratere. Le meraviglie continuano a provare a mangiarmi.",
	},
	["ung.a.muse.05"] = {
		"Fire Plume Ridge fuma in mezzo al cratere come una pipa che nessuno si prende la briga di spegnere. Tutta la valle respira intorno a lei.",
		"La montagna al centro del cratere non smette mai del tutto di fumare. Tutto il verde di qui cresce ai suoi piedi, e nel suo calore.",
		"Da quasi ogni punto di Un'Goro si vede la cresta, col suo pennacchio piegato dal vento. È l'unica cosa qui che non si muove mai.",
	},
	["ung.a.muse.06"] = {
		"L'aria è così umida che potrei strizzarla. La camicia non mi si è più asciugata da quando ho sceso la rampa.",
		"Caldo, umido, pesante. Respirare qui è come bere brodo attraverso uno straccio.",
		"Tutto quello che ho è umido. Gli stivali, la coperta, l'umore.",
	},
	["ung.a.muse.07"] = {
		"alza lo sguardo mentre uno pterrordax passa in alto, e la sua sagoma scura scivola sulle felci come una vela.",
		"si ferma sotto le grandi fronde mentre una forma alata passa alta nel cielo, troppo grande per essere un uccello, e aspetta che sia lontana.",
	},
	["ung.a.muse.08"] = {
		"Stormwind litiga sulle tasse e Ironforge sulle gallerie, e quaggiù l'Alleanza è una manciata di noi con la testa bassa sotto le felci.",
		"Lontano da ogni stendardo dell'Alleanza, in una valle a cui non importa da che parte sto. Strano: così il giuramento pesa di più, non di meno.",
		"A Un'Goro nessuno saluta il leone o il martello. Ai devilsaur non importa. Io faccio la mia parte lo stesso.",
	},
	["ung.a.muse.09"] = {
		"Uova grosse come un barile, calde fra le felci. Non le tocco. Preferisco non conoscere quel che ne esce.",
		"Un nido largo come un carro, e dentro uova grandi come una botte di birra. Ci giro intorno piano, con molta educazione.",
	},
	["ung.a.muse.10"] = {
		"Le pozze di catrame ribollono e inghiottono. Dal nero spuntano ossa storte, più vecchie di qualunque cosa abbia un nome.",
		"Giù ai Lakkari Tar Pits il terreno è una bocca nera e lenta. Quello che ha preso tanto tempo fa è ancora lì, e sporge dai bordi.",
	},
	["ung.a.muse.11"] = {
		"Posto incantevole. Peccato per il caldo. E le lucertole. E gli insetti.",
		"Sinceramente, scambierei tutte le meraviglie di questo cratere con un solo filo d'aria fresca.",
		"Vapore dal terreno, vapore dalle sorgenti, vapore da me. C'è qualcosa qui che non fumi?",
	},
	["ung.a.muse.12"] = {
		"A sud i silithid scavano e scavano. Al rifugio nessuno lo dice ad alta voce, ma tutti tendono l'orecchio.",
		"L'alveare nel sud del cratere non smette mai di stridere. È l'unico suono di qui a cui non riesco ad abituarmi.",
	},
	["ung.a.muse.13"] = {
		"Di notte il cratere non dorme. Cambia solo voce: rane, insetti, e ogni tanto qualcosa di enorme che si schiarisce la gola.",
		"Il buio di Un'Goro è più rumoroso del giorno. Gracidii, schiocchi, lo sgocciolare delle foglie, e lontano un ruggito che zittisce tutti gli altri in un colpo.",
	},
	["ung.a.muse.14"] = {
		"gira largo intorno a una bocca nel terreno, dove l'acqua calda gorgoglia in superficie e l'aria sa di ferro e di terra bagnata.",
		"costeggia una crepa fumante nel suolo, una mano alzata contro il calore, saggiando ogni passo prima di fidarsi.",
		"si fa strada con cautela fra le pozze che ribollono, e il fiato caldo della terra sale intorno ai suoi stivali.",
	},
	["ung.a.npc_meet.01"] = {
		"Dovunque ci sia un filo di vento, per favore. Fresco, se esiste ancora.",
		"Portami un po' sopra il vapore. Pagherei di più solo per l'aria pulita.",
	},
	["ung.a.npc_meet.02"] = {
		"Chi porta le provviste fin quaggiù nel cratere si guadagna ogni moneta. Non mi metto a contrattare.",
		"Pane senza muffa, così addentro nella giungla. Vale qualunque prezzo chiedano.",
	},
	["ung.a.npc_meet.03"] = {
		"Un altro esploratore con la sua lista di cose da chiedere al cratere. La lista è sempre più lunga della gentilezza del cratere.",
		"In questo cratere c'è sempre qualcuno a cui serve un cristallo in più, un campione in più, un uovo in più. Comincia quasi a piacermi, sentirmelo chiedere.",
	},
	["ung.a.qp.01"] = {
		"È tutto nello zaino. Adesso bisogna portarlo attraverso il vapore fino a chi l'ha chiesto.",
		"Raccolto tutto. Il resto se lo tenga il cratere: per oggi ne ho avuto abbastanza.",
		"Finito, qui. Meglio uscire da sotto queste foglie prima che qualcos'altro si accorga di me.",
	},
	["ung.a.quest.01"] = {
		"Fatto. Un pezzetto del cratere l'ho capito, e ne restano mille.",
		"Concluso. Un'Goro cede i suoi segreti piano, e solo a chi suda per averli.",
		"Sistemato. Il cratere non è più docile di prima, ma è un po' più conosciuto.",
	},
	["ung.a.quest.02"] = {
		"Ecco qua. La prossima volta, magari, lontano dai devilsaur.",
		"Tutto fatto. Il prossimo lavoro, si può fare in un posto con meno vapore?",
		"Finito. E solo un po' {g:bruciacchiato|bruciacchiata}.",
	},
	["ung.a.quest.03"] = {
		"Un'altra pagina per gli studiosi. A Ironforge qualcuno ne sarà felicissimo, e non saprà mai che caldo faceva mentre la si scriveva.",
		"Finito. Quel che ho portato fuori dalla giungla finirà negli appunti di qualche studioso, sudore escluso.",
	},
	["ung.a.quest.04"] = {
		"si pulisce le mani su una foglia larga e tira un lungo respiro: il lavoro è alle spalle.",
		"sgranchisce le spalle appiccicose di sudore e si concede un attimo di riposo, adesso che il compito è finito.",
	},
	["ung.a.quest.05"] = {
		"Fatto. È bene far vedere a chi vive quaggiù che l'Alleanza fa la sua parte, anche in un buco come questo.",
		"Un altro incarico portato a termine. Qui sotto la gente è poca e le voci girano: che dicano che l'Alleanza ha dato una mano.",
	},
	["ung.a.subzone.01"] = {
		"Terreno diverso, stesso verde. Un'Goro cambia nome ogni poche centinaia di passi, e nient'altro.",
		"Un altro angolo del cratere. Foglie più grandi, forse. Più caldo, di sicuro.",
		"Un altro posto, a sentire la mappa. Per i miei occhi, altre felci.",
	},
	["ung.a.subzone.golakka.01"] = {
		"scende alle Golakka Hot Springs, dove l'acqua fuma in larghe pozze e le rocce sono incrostate di bianco.",
		"arriva alle sorgenti calde, dove l'aria umida e tiepida pesa addosso come un mantello.",
	},
	["ung.a.victory.01"] = {
		"Fatto. Domani le felci avranno già coperto il posto, e il cratere non se ne ricorderà.",
		"Finita. Fra una settimana se lo saranno preso i rampicanti, e Un'Goro sembrerà come se niente fosse.",
		"Concluso. Presto qualcosa verrà a prendersi quel che resta. Quaggiù non si spreca niente.",
	},
	["ung.a.victory.02"] = {
		"Un'altra voce per il taccuino: pericoloso, ma non abbastanza.",
		"Qualcuno lo scriva. Il cratere ne ha perso uno.",
		"E così a Un'Goro c'è una cosa in meno che cerca di mangiarsi la gente per bene.",
	},
	["ung.a.victory.03"] = {
		"Vinto. Adesso un riparo che non sia rovente pure lui.",
		"Sistemato. Mi serve acqua, e un respiro d'aria che non sia mezzo vapore.",
	},
	["ung.a.victory.04"] = {
		"abbassa la guardia, e a poco a poco i rumori del cratere riprendono: insetti, rane, lo sgocciolio delle foglie bagnate.",
		"si raddrizza fra le felci calpestate, mentre la giungla, che si era zittita, ricomincia a vivere tutt'intorno.",
	},
	["ung.a.victory.05"] = {
		"L'Alleanza ha fatto tanta strada per arrivare fin qui. Non aveva intenzione di perdere contro di te.",
		"Lontano da casa, e l'Alleanza resta in piedi. Ricordatelo, cratere.",
		"Un motivo in più perché Marshal's Refuge dorma un po' più tranquillo.",
	},
	["ung.a.weather.rain.01"] = {
		"tende il palmo mentre una pioggia tiepida comincia a cadere sul cratere, tamburellando sulle grandi foglie finché tutta la giungla sfrigola.",
		"ascolta la pioggia che arriva, forte sulle fronde larghe, e guarda il vapore salire dove batte sulle pietre calde.",
	},
	["ung.h.attack.01"] = {
		"Per l'Orda! Un'Goro, china la testa!",
		"Fuori dal vapore, e addosso a te!",
	},
	["ung.h.attack.02"] = {
		"Vediamo come se la cava il meglio del cratere contro l'Orda.",
		"Hai fatto il padrone qui dentro abbastanza a lungo.",
	},
	["ung.h.battle.01"] = {
		"Esci dalle felci e combatti come qualcosa che si merita questo cratere!",
		"Grande o piccolo, a Un'Goro tutto cade allo stesso modo.",
		"Adesso qui caccia l'Orda. Fermati e vedi che cosa vuol dire.",
	},
	["ung.h.battle.02"] = {
		"Piedi larghi: il fango scivola. Colpisci quando sposta il peso.",
		"Calma. Il caldo vuole che mi sbrighi. Ed è sbrigandosi che quaggiù muoiono i cacciatori.",
	},
	["ung.h.battle.03"] = {
		"Scendi dal cielo, allora, e vediamo come combatti a terra!",
		"Tuffati di nuovo su di me. Ti aspetto con qualcosa di appuntito.",
	},
	["ung.h.battle.04"] = {
		"Fuoco, catrame o melma, il cratere ti ha sputato fuori. Io ti ci rimetto dentro.",
		"Spirito di questo posto o no, sei sulla mia strada.",
	},
	["ung.h.battle.05"] = {
		"appoggia la schiena a un tronco di felce grosso come il palo di una torre e prende lo scontro come viene.",
		"si libera dal fango che risucchia e si volta ad affrontare l'attacco, col vapore che si arriccia intorno alle gambe.",
		"tira un lungo respiro di quell'aria pesante e si getta nella mischia.",
	},
	["ung.h.battle.06"] = {
		"Va bene. Cominciavo ad annoiarmi, con solo il caldo che cercava di ammazzarmi.",
		"Finalmente qualcosa che posso colpire davvero. Il caldo non sta mai fermo.",
		"Bene. Un nemico con una forma. Il caldo non ce l'ha, e contro di lui perdo da ore.",
	},
	["ung.h.journey.01"] = {
		"Su, via dal rifugio. Là sotto il cratere fuma come una grande ferita verde nella terra.",
		"Si sale fuori dal caldo. L'aria si fa più sottile e più fresca, e la giungla si rimpicciolisce in una conca di fumo verde.",
	},
	["ung.h.journey.02"] = {
		"scende dal cielo sulla cengia di Marshal's Refuge, e subito il caldo umido del cratere si chiude su di {g:lui|lei}.",
		"scivola giù dalla viverna al rifugio e socchiude gli occhi verso la giungla, che già fuma là sotto.",
	},
	["ung.h.landmark.tarpits.01"] = {
		"costeggia i Lakkari Tar Pits, dove bolle nere si gonfiano e scoppiano e il puzzo di pece grava su tutto.",
		"si ferma sull'orlo del catrame a guardare una bolla lenta che sale, si gonfia e si rompe con un suono simile a un sospiro.",
		"si tiene alla larga da {landmark}, dal suolo nero e lucido, pronto a trattenere chiunque metta un piede in fallo.",
	},
	["ung.h.lowhp.01"] = {
		"Non finirò così, in pasto al cratere!",
		"Tutto qui? Mi fa più male il caldo di te!",
	},
	["ung.h.lowhp.02"] = {
		"Se cado qui, mi prenderanno il catrame o le felci, e nessuno troverà abbastanza da bruciare.",
		"Morire in questo vapore verde, lontano da ogni fuoco dell'Orda. No. Trova la forza.",
	},
	["ung.h.lowhp.03"] = {
		"Il sangue mi rimbomba nelle orecchie, più forte della giungla. Rallenta. Scegli il momento.",
		"Il colpo è stato brutto. Il cratere ne sente già l'odore. Allora finiamola in fretta.",
	},
	["ung.h.muse.01"] = {
		"Qui le bestie comandano ancora, e nessuno gliel'ha mai contestato. C'è qualcosa di onesto in questo.",
		"Niente mura, niente leggi, nessun capo. Solo denti, fame e chi è più forte. Un'Goro segue l'ordine più vecchio che ci sia.",
		"Il cratere ha una sola regola: mangiare o essere mangiati. Almeno qui nessuno finge il contrario.",
	},
	["ung.h.muse.02"] = {
		"Con la pelle di un devilsaur si farebbe un'armatura degna di un signore della guerra. Il guaio è il devilsaur, che ce l'ha ancora addosso.",
		"Ogni conciatore di Orgrimmar sogna la pelle di devilsaur. Pochi hanno visto la bestia dentro cui arriva.",
	},
	["ung.h.muse.03"] = {
		"Quei piloni di cristallo ronzano come un alveare. Un potere vecchio lasciato all'aperto, senza nessuno a fargli la guardia. Non mi piace.",
		"Pietra e cristallo che ronzano fra sé in mezzo alla giungla. Chi ha fatto i piloni non è qui a spiegarli, ed è questo che mi preoccupa.",
	},
	["ung.h.muse.04"] = {
		"Caldo, umido e pieno di cose con i denti. Chi l'ha chiamato una meraviglia non ci ha mai dormito.",
		"Sembra Stranglethorn, solo che qualcuno ha alzato il fuoco sotto la pentola.",
		"Bel posto. Se sei una lucertola.",
	},
	["ung.h.muse.05"] = {
		"Gli sciamani dicono che gli spiriti del fuoco non sono mai calmi, aspettano soltanto. A guardare la cresta che fuma sul cratere, ci credo.",
		"La cresta non smette mai di fumare. Gli sciamani dicono che il fuoco lassù non dorme: rimugina.",
	},
	["ung.h.muse.06"] = {
		"Sudore negli occhi, giù per la schiena, a pozze negli stivali. Il cratere riscuote il suo pedaggio in acqua.",
		"Anche {g:fermo|ferma} sto faticando. Qui il caldo ti fa pagare ogni respiro.",
		"Il caldo mi sta sulle spalle come uno zaino che non posso posare.",
	},
	["ung.h.muse.07"] = {
		"si ferma mentre il ruggito di un gorilla rotola per il cratere, e un altro risponde, e un altro ancora, finché gli alberi tremano.",
		"si volta verso il battere cupo di petti che sale fra gli alberi, un suono come di tamburi di guerra suonati a pugni.",
	},
	["ung.h.muse.08"] = {
		"Orgrimmar è lontana, e gli stendardi dell'Orda non arrivano così in fondo. Qui l'Orda la porto con me, o non ce la porta nessuno.",
		"Nessun campo dell'Orda nel cratere, solo il rifugio neutrale sulla sua cengia. Va bene. L'Orda è dovunque uno di noi stia in piedi.",
	},
	["ung.h.muse.09"] = {
		"Con un uovo di quelli si sfamerebbe una banda di guerra per una settimana. Quasi quasi, se la madre non fosse grande come una capanna.",
		"Uova più grosse della mia testa, lasciate all'aperto. O il cratere è molto fiducioso, o i genitori sono molto vicini.",
	},
	["ung.h.muse.10"] = {
		"Le pozze di catrame si tengono tutto quello che prendono. Sotto quel nero ci sono bestie che nessun cacciatore vivo ha mai visto.",
		"Le pozze di Lakkari inghiottono piano e non restituiscono niente. I migliori cacciatori che questo cratere abbia avuto sono probabilmente ancora là sotto.",
	},
	["ung.h.muse.11"] = {
		"Se il mondo prima di noi era così, meno male che siamo arrivati tardi.",
		"Felci come alberi e lucertole come colline. Il mondo doveva essere giovane e chiassoso, una volta.",
	},
	["ung.h.muse.12"] = {
		"L'alveare dei silithid, a sud, funziona come un esercito che non dorme mai. Qualunque soldato lo rispetta, e farebbe bene a temerlo.",
		"Giù alla Slithering Scar gli insetti scavano, trasportano, fanno la guardia e scavano ancora. Se un giorno uscissero tutti insieme, il cratere non basterebbe a contenerli.",
	},
	["ung.h.muse.13"] = {
		"Anche col buio il cratere non si riposa. Ogni fruscio fra le felci potrebbe essere un raptor, o niente. Tengo la schiena contro la roccia.",
		"Quaggiù il buio non porta silenzio. La giungla si fa solo più sfrontata, e io tengo la mano più vicina all'arma.",
	},
	["ung.h.muse.14"] = {
		"fa un passo indietro davanti a una pianta che si muove chiaramente da sola, coi petali che si aprono verso di {g:lui|lei} come una bocca.",
		"squadra un fiore largo come uno scudo, coi petali che si agitano anche senza un filo di vento, e gli gira alla larga.",
	},
	["ung.h.muse.15"] = {
		"Un getto di vapore esplode dalle rocce con un boato, resta sospeso un istante e si sfalda in gocce tiepide.",
		"Il terreno qui ha bocche che tossiscono senza preavviso. Ho imparato a girare intorno alle chiazze nude e bagnate.",
		"Il vapore schizza da una crepa accanto al sentiero, forte come un corno di guerra, poi si spegne in un borbottio. È il cratere che sbuffa.",
	},
	["ung.h.muse.16"] = {
		"Bestie grosse, aria cattiva, terreno duro. L'Orda è cresciuta con di peggio.",
		"Niente che un soldato dell'Orda non abbia già visto, in un modo o nell'altro. Solo più grande.",
	},
	["ung.h.npc_meet.01"] = {
		"Portami dove l'Orda tiene un fuoco acceso. Questo cratere può cuocere nel suo brodo senza di me per un po'.",
		"Su e via, per favore. Voglio vedere questo posto dall'alto, dove non mi può raggiungere.",
	},
	["ung.h.npc_meet.02"] = {
		"Campo neutrale, prezzi neutrali: alti per tutti. Almeno è giusto.",
		"A chi commercia su questa cengia non importa sotto che stendardo cammino, solo che monete ho in tasca. Mi sta bene.",
	},
	["ung.h.npc_meet.03"] = {
		"Un altro che vuole i tesori del cratere ma non i suoi denti. A quanto pare, servo a questo.",
		"Hanno sempre bisogno di qualcosa da andare a prendere là fuori. E là fuori c'è sempre qualcosa a fargli la guardia.",
	},
	["ung.h.qp.01"] = {
		"Ecco, c'è tutto. Ora vediamo se riesco a portarlo fuori di qui senza farmi mangiare.",
		"Basta così. Il cratere mi ha dato quel che cercavo: il suo caldo può tenerselo.",
		"Ho quel che mi serviva. Meglio andare, prima che la giungla cambi idea.",
	},
	["ung.h.quest.01"] = {
		"Fatto. Il cratere non è più piccolo, ma sa che l'Orda ci è passata.",
		"Finito. Qualcuno voleva qualcosa da questa giungla, e l'Orda gliel'ha portato.",
		"Un lavoro in meno sulla lista. Un'Goro non regala niente: me lo sono {g:dovuto|dovuta} prendere.",
	},
	["ung.h.quest.02"] = {
		"Ecco. Pelle, uovo, cristallo, qualunque cosa fosse. Non c'è di che.",
		"Fatto. La prossima volta, magari qualcosa che non morda.",
		"Tutto tuo. Io sono lì, a strizzarmi gli stivali.",
	},
	["ung.h.quest.03"] = {
		"Un altro compito portato a termine, e il cratere un po' più familiare. Imparo i suoi sentieri come lui ha imparato il mio odore.",
		"Finito. Ogni lavoro qui mi insegna qualcosa: dove il terreno è molle, per che cosa tacciono gli uccelli.",
	},
	["ung.h.quest.04"] = {
		"si scrolla il sudore dai capelli e si concede un momento, col lavoro finito e il cratere che fuma tutt'intorno.",
		"si concede un cenno cupo e soddisfatto, poi si volta a guardare la giungla in cerca di quel che verrà dopo.",
	},
	["ung.h.quest.05"] = {
		"Fatto. Chiunque tenga il conto, questa la segni all'Orda.",
		"Finito. Un'altra impresa per l'Orda, compiuta lontano da tutti i suoi fuochi.",
	},
	["ung.h.subzone.01"] = {
		"Un nuovo tratto di giungla. Occhi in alto, occhi in basso: qui le cose arrivano da tutte e due le parti.",
		"Nome diverso sulla mappa, stessi denti fra le felci.",
		"Avanti, attraverso il cratere. Ogni angolo è la riserva di caccia di qualcuno.",
	},
	["ung.h.subzone.scar.01"] = {
		"arriva sull'orlo della Slithering Scar, dove la terra è bucherellata di gallerie e l'aria ronza di ali.",
		"rallenta sul margine della terra dei silithid, col suolo secco e spaccato e, da sotto, schiocchi e raschi che salgono.",
	},
	["ung.h.victory.01"] = {
		"Ecco come caccia l'Orda. Chi è il prossimo?",
		"Un altro trofeo dal cratere. Ai fuochi di Orgrimmar ne sentiranno parlare.",
		"Giù. Un'Goro li fa crescere grossi, e l'Orda li abbatte.",
	},
	["ung.h.victory.02"] = {
		"Un buon combattimento. Il cratere alleva creature forti: cadere qui non è una vergogna.",
		"Si è battuto bene. Quaggiù anche i deboli sono più duri dei forti di tanti altri posti.",
	},
	["ung.h.victory.03"] = {
		"Vinto, e grondante. Scambierei il bottino con un ruscello freddo.",
		"Finito. Ho le mani viscide di sudore: il giorno che la presa scivola, non vincerò io.",
	},
	["ung.h.victory.04"] = {
		"resta in piedi sopra il nemico caduto, col fiato grosso, mentre il caldo umido del cratere si richiude intorno a {g:lui|lei}.",
		"si asciuga il sudore dagli occhi e si guarda intorno, in cerca della prossima cosa di Un'Goro che abbia voglia di battersi.",
	},
	["ung.h.victory.05"] = {
		"Di' ai tuoi cugini più grossi che li aspetto.",
		"Facevi un gran baccano. Senza di te il cratere è più tranquillo.",
	},
	["ung.h.victory.06"] = {
		"Il cratere l'ha cresciuto forte. Oggi io sono {g:stato|stata} più forte, e domani dovrò esserlo di nuovo.",
		"Forte, ma non abbastanza. A Un'Goro non esiste altro verdetto.",
	},
	["ung.h.weather.clear.01"] = {
		"Le nuvole sopra l'orlo si sfilacciano e il cratere si rischiara. Il vapore sale più dritto, e la mia schiena pure.",
		"Adesso sopra le pareti il cielo è sereno. Al caldo non importa, ma la giungla sembra un po' meno una trappola.",
	},
]==])
