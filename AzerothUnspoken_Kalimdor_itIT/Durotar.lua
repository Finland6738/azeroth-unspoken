-- Italian texts of the regional pack kalimdor_durotar (#102). The rules are in AzerothUnspoken_Kalimdor/Durotar.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("durotar", "itIT", "kalimdor_durotar", [==[
	["dur.battle.blade.01"] = {
		"Cultista! I tuoi padroni non ti salveranno.",
		"Hai venduto la tua gente ai demoni. Ora paghi.",
		"Spegni quel fuoco, cultista. Ti do una mano io.",
	},
	["dur.battle.boar.01"] = {
		"pianta bene i piedi nella polvere mentre il cinghiale abbassa le zanne e carica.",
		"fronteggia la bestia che sbuffa, gli occhi sulle zanne.",
		"si prepara alla carica del cinghiale, fra uno sbuffo di polvere.",
	},
	["dur.battle.familiar.01"] = {
		"Un diavoletto. Piccolo. Chissà perché, è peggio.",
		"Torna nella fossa da cui vieni!",
		"Piccolo leccafuoco. Non muoverti.",
	},
	["dur.battle.harpy.01"] = {
		"Arpia! Sopra di noi!",
		"Giù dal cielo, allora. Vediamo come ti trovi a terra.",
		"Copriti il viso. Mirano agli occhi.",
	},
	["dur.battle.kolkar.01"] = {
		"Un centauro! Verso le rocce!",
		"Lascialo caricare. Prima o poi dovrà fermarsi.",
		"Occhio agli zoccoli!",
	},
	["dur.battle.kultiras.01"] = {
		"Kul Tiras! Siete lontani dal vostro mare.",
		"Via da questa costa, marinaio! Torna al tuo mare!",
		"Acciaio e sale di mare. Avanti, allora.",
	},
	["dur.battle.lizard.01"] = {
		"sente il suolo tremare mentre la grossa bestia si volta, crepitando, verso la minaccia.",
		"si pianta sulle gambe mentre la pelle della lucertola comincia a scintillare.",
		"guarda la coda pesante della bestia tornare indietro per il colpo.",
	},
	["dur.battle.razormane.01"] = {
		"Torna fra i tuoi rovi, muso di porco!",
		"Razormane! Teneteli lontani dalla strada!",
		"Setole e lance. Fatevi sotto, allora.",
	},
	["dur.battle.scorpid.01"] = {
		"Occhio alla coda!",
		"Attenzione al pungiglione. Spacca il guscio.",
		"Un altro scorpione. Ma certo.",
	},
	["dur.battle.tiger.01"] = {
		"Un grosso felino! Non scappare, adora inseguire.",
		"Strisce fra gli arbusti. Calma, bestia.",
		"Buono, micio. Buono.",
	},
	["dur.battle.water.01"] = {
		"Chele e denti. L'acqua ne è piena.",
		"Fuori dall'acqua, eh? Pessima idea.",
		"Lontano dal bordo dell'acqua!",
	},
	["dur.dawn.01"] = {
		"rabbrividisce nell'ultimo freddo, mentre il sole si alza dal mare a levante.",
		"guarda la prima luce correre lungo le creste, mentre la roccia passa dal grigio al rosso in pochi respiri.",
		"si ferma mentre l'alba accende le colline rosse una a una, come una fila di focolari accesi da una mano invisibile.",
	},
	["dur.dawn.02"] = {
		"Primo sole su Durotar. L'ora migliore: tutto è ancora abbastanza fresco da toccarlo.",
		"Il sole sorge sul mare. Perfino gli scorpioni si fermano a guardare, ci giurerei.",
		"Alba, e la roccia è ancora fredda. Muoviamoci adesso, prima che il sole la trasformi in un forno.",
	},
	["dur.death.01"] = {
		"si accascia sulla dura terra rossa; uno scorpione sguscia via dalla mano tesa.",
		"cade bocconi nella polvere rossa, che si posa sul corpo senza un suono.",
		"crolla sulla nuda terra rossa, e il vento comincia subito, paziente, a coprire le tracce di polvere.",
	},
	["dur.death.02"] = {
		"Ecco come dice di no, Durotar.",
		"Vince la pietra. Per questa volta.",
		"Polvere in bocca, una pietra calda sotto la guancia, poi niente.",
	},
	["dur.death.03"] = {
		"Seppellitemi col viso verso il mare.",
		"Non così... non nella terra.",
		"Ricordate... non sono {g:scappato|scappata}.",
	},
	["dur.dusk.01"] = {
		"guarda la roccia rossa ardere come una brace mentre il sole cala dietro il fiume.",
		"si ferma mentre le creste allungano lunghe dita scure sulle piane e il calore del sole comincia a ritirarsi.",
		"indugia mentre il crepuscolo versa rame sulle colline, e i primi fuochi dei campi gli rispondono.",
	},
	["dur.dusk.02"] = {
		"Tramonto sulle pianure a ovest, e Durotar prende il colore di una forgia. Quasi abbastanza bello da farsi perdonare la giornata.",
		"Il caldo se ne va. Le cose che cacciano col fresco si stanno svegliando.",
		"La giornata è finita. Tempo di trovare un fuoco e un muro a cui dare le spalle.",
	},
	["dur.farewell.01"] = {
		"Tieni l'otre sempre pieno, per strada.",
		"Che la strada sia breve e l'acqua ti basti.",
		"Non farti inghiottire dalla strada, né dalla polvere.",
	},
	["dur.farewell.02"] = {
		"Finché la strada rossa non incrocerà di nuovo la nostra.",
		"Mura solide e pance piene a te.",
		"Buon cammino. Durotar sarà ancora qui.",
	},
	["dur.greet.01"] = {
		"Acqua e riparo a te.",
		"Buona polvere sui tuoi stivali, e una strada breve.",
		"Salute a te, sotto un cielo duro.",
	},
	["dur.greet.02"] = {
		"Abbastanza polvere, per te?",
		"Occhio agli scorpioni. Ah, salve.",
		"Salve. Guarda dove metti i piedi: qui la terra morde.",
	},
	["dur.jest.01"] = {
		"In Durotar anche i fichi d'India si difendono.",
		"Dicono che qui gli scorpioni siano amichevoli. Dicono tante cose.",
		"Durotar ha due stagioni: caldo, e anche caldo.",
	},
	["dur.jest.02"] = {
		"Ho chiesto la strada a una guardia. Mi ha indicato una roccia. E in qualche modo aveva ragione.",
		"La polvere rossa è il condimento locale. Sta in tutto.",
		"Perché qui tutto ha le punte? Così gli scorpioni si sentono a casa, nella polvere.",
	},
	["dur.levelup.01"] = {
		"Comincio a prenderci la mano. I cinghiali sembrano più piccoli.",
		"Più forte. Questa terra m'insegna, un livido alla volta.",
		"Un po' più {g:pronto|pronta}. Non {g:pronto|pronta}. Un po' di più.",
	},
	["dur.levelup.02"] = {
		"Più {g:duro|dura} della pietra. Be', quasi.",
		"Durotar non mi ha {g:spezzato|spezzata}. Mi ha {g:affilato|affilata} sulle sue pietre.",
		"Un'altra tacca sulla lancia, e la pietra non l'ha spuntata.",
	},
	["dur.lm.razorhill.01"] = {
		"alza lo sguardo alla torre di guardia di {landmark}, dove una guardia appoggiata alla lancia sorveglia la strada.",
		"passa sotto la palizzata irta di punte; da qualche parte, dentro, un martello batte sull'incudine e il fumo sale dalla forgia.",
		"entra nella polvere del villaggio, fra mura appuntite, fumo e odore di carne arrostita.",
	},
	["dur.lm.razorhill.02"] = {
		"{landmark}. Mura, una forgia, una locanda. Da queste parti è quasi una città.",
		"Fumo dalla fucina, voci dalla locanda. Un posto dove riprendere fiato.",
		"Le guardie sulle mura fanno un cenno quando passo. Una piccolezza. Ma scalda.",
	},
	["dur.lm.razorhill.03"] = {
		"{landmark}. Da queste parti i nomi non li scelgono con delicatezza.",
		"Ogni palo di quelle mura è appuntito. Anche quelli amichevoli.",
		"Bel posto. Meglio non appoggiarsi a niente.",
	},
	["dur.lm.razorhill.04"] = {
		"Un villaggio di orchi con punte su ogni muro. Sbrigherò i miei affari in fretta.",
		"{landmark}. Gli occhi delle guardie mi seguono come una freccia lenta.",
		"Qui niente locanda per me. Solo la strada per uscire, e alla svelta.",
	},
	["dur.lm.senjin.01"] = {
		"cammina fra le capanne col tetto di paglia di {landmark}, dove le reti da pesca asciugano al vento salmastro del mare.",
		"aggira un grappolo di feticci ed erbe legate che dondolano al vento di mare, appesi fuori da una capanna.",
		"ascolta il mare oltre le capanne e il parlottare basso e cantilenante dei troll.",
	},
	["dur.lm.senjin.02"] = {
		"I troll di qui guardano sempre verso il mare. Verso le isole che hanno perduto, direi.",
		"{landmark}. Un villaggio costruito da chi ha dovuto lasciare casa in fretta. Si vede, e non si vede.",
		"Pesce sulle rastrelliere, granchi nella sabbia, e qualcosa di vecchio e dolente nel modo in cui guardano il mare.",
	},
	["dur.lm.senjin.03"] = {
		"{landmark}. Non sono le isole, ma il fuoco scalda e i volti sono i nostri.",
		"Fa bene sentire la nostra lingua parlata ad alta voce, senza che nessuno ci badi.",
		"Terra della nostra tribù. Qui posso mettere le spalle al muro e dormire.",
	},
	["dur.lm.senjin.04"] = {
		"I troll sono abbastanza cordiali, quando ti abitui alle zanne. E agli sguardi.",
		"Qui c'è sempre qualcosa che sobbolle in una pentola. Ho deciso di non chiedere cosa.",
		"{landmark}. Aria salmastra, fumo, e qualcuno che ride di una battuta che non capirò mai.",
	},
	["dur.lm.valley.01"] = {
		"osserva la valle polverosa dove le nuove reclute vengono messe alla prova: cinghiali fra gli arbusti, scorpioni sulle rocce, fumo da una grotta.",
		"guarda due reclute alle prime armi litigare per la carcassa di un cinghiale, mentre un vecchio orco finge di non ascoltare.",
		"percorre i sentieri polverosi della valle, dove tanti combattenti hanno menato il loro primo colpo maldestro.",
	},
	["dur.lm.valley.02"] = {
		"{landmark}. Tutti cominciano da qualche parte. Io, a quanto pare, da un posto pieno di scorpioni.",
		"Mettiti alla prova qui, mi hanno detto. Davanti a chi? I cinghiali non sembrano colpiti.",
		"Ogni nome che l'Orda ricorda ha percorso un tempo una valle come questa, con mani goffe e una lama spuntata.",
	},
	["dur.lm.valley.03"] = {
		"Allora è qui che comincia. Bene. Cominciamo.",
		"Prima prova, prima cicatrice. Diamoci da fare.",
		"La valle vuole delle prove. Le avrà.",
	},
	["dur.lm.valley.04"] = {
		"Le reclute sembrano così giovani: menano colpi ai cinghiali come se il mondo intero le guardasse.",
		"Cinghiali e scorpioni. È quasi riposante, dopo quello che c'è là fuori.",
		"{landmark}. Un buon posto per chi è alle prime armi. Meno per chi si annoia.",
	},
	["dur.lore.razorhill.saying.01"] = {
		"Un detto che le guardie si passano lungo la palizzata:\nPrima l'acqua, e dopo i vanti,\nlama tersa, il passo lento;\ngli scorpioni sono tanti:\nscuoti gli stivali, attento.",
		"Un altro, che le guardie ripetono di solito a chi è appena giunto:\nConta le creste, poi passa;\ntieni d'occhio vento e lancia;\nlama che cade non torna:\nqui la terra non perdona.",
	},
	["dur.lore.senjin.song.01"] = {
		"Chi rammenda le reti in riva al mare canta piano, per nessuno:\nLe isole, a due bracciate,\nlontane come il cielo:\nnoi ricuciamo reti\ncol fuoco volto a loro.",
		"Un'altra strofa, intonata da un'altra voce vicino alle reti:\nIl sale nella corda,\nil fumo dentro il pesce;\nson perse le nostre isole,\nnon la speranza, mai.",
	},
	["dur.lowhp.01"] = {
		"La polvere rossa mi sale incontro. Non ancora.",
		"Troppa sete, troppa fatica, troppi denti. Resisti.",
		"Non qui. Non con la faccia nella polvere, così.",
	},
	["dur.lowhp.02"] = {
		"Tutto qui, {target}? Ho preso scottature peggiori.",
		"Durotar riduce in polvere i deboli. Non oggi.",
		"Fa male. Ma non è finita.",
	},
	["dur.muse.alliance.01"] = {
		"Nessun tetto amico per cento miglia. Solo roccia rossa e gente che preferirebbe vedermi andar via.",
		"Ogni pattuglia su questa strada porta i colori sbagliati, per quanto mi riguarda. E io porto quelli sbagliati per loro.",
		"Muoversi, tacere. Durotar non è il posto per farsi amici, coi miei colori.",
	},
	["dur.muse.barrens.01"] = {
		"Oltre il fiume la terra si fa gialla e piatta, e non finisce più. Un altro genere di sete.",
		"Oltre il fiume aspettano le grandi pianure, la vicina secca di Durotar.",
		"Strano come un solo fiume separi il rosso dall'oro così di netto.",
	},
	["dur.muse.day.01"] = {
		"Fa così caldo che potrei friggere un uovo sull'elmo. Se avessi un uovo. O un elmo meno rovente.",
		"Il sole, qui, non splende: ti si appoggia addosso.",
		"Trovare un riparo dal sole e aspettare. Gli scorpioni hanno capito tutto.",
	},
	["dur.muse.deadeye.01"] = {
		"Oltre i frangenti non c'è che mare fino alla fine del mondo. O fino a Kul Tiras, quale arrivi prima.",
		"La marea lascia piccoli tesori nella sabbia: conchiglie, legni levigati, una chela di makrura lunga quanto il mio braccio.",
		"Sale sulle labbra, sabbia negli stivali. La costa ha un'idea tutta sua della comodità.",
	},
	["dur.muse.dust.01"] = {
		"Ho la polvere rossa fra i denti. Dicono che così si riconoscono quelli del posto.",
		"Troverò questa polvere nello zaino per settimane.",
		"Polvere rossa sugli stivali, sulle mani, nel pane. Questa terra ama lasciare il segno.",
	},
	["dur.muse.heat.01"] = {
		"La roccia qui trattiene il calore come un rancore: a lungo, e senza perdonare.",
		"L'otre è più leggero di quanto vorrei. In Durotar lo è sempre.",
		"Ogni pietra che tocco è tiepida. Questa terra non si raffredda mai del tutto.",
	},
	["dur.muse.home.01"] = {
		"Qualunque sciocco sa coltivare la terra buona. Ci vuole un popolo per farsi sfamare da questa.",
		"Questa terra non la voleva nessuno. Noi sì.",
		"Terra povera, gente fiera. Ho visto scambi peggiori.",
	},
	["dur.muse.home.02"] = {
		"Gli anziani dicono che i campi avevano mura da ogni lato, e catene dentro. Qui le mura sono nostre, e le porte si aprono verso fuori.",
		"Cinghiali magri, orti testardi, fichi d'India. Qui nessuno ingrassa, e nessuno porta catene.",
		"A volte penso a quanto poco avesse da dare questa terra. Poi penso a quanto le abbiamo strappato.",
	},
	["dur.muse.night.01"] = {
		"Stanotte le stelle sopra Durotar sono taglienti come vetri rotti.",
		"Di notte i canyon si riempiono di piccoli rumori: artigli, ali, qualcosa che scava.",
		"Nella notte il caldo finalmente molla la presa, e sotto le stelle tutta la terra sembra tirare un sospiro.",
	},
	["dur.muse.razorhill.01"] = {
		"Quel fabbro non ha smesso di martellare da quando sono {g:arrivato|arrivata}. Lo rispetto.",
		"Ogni guardia qui sembra scolpita dalla collina stessa.",
		"Fortificata, polverosa, chiassosa. Il mio genere di città.",
	},
	["dur.muse.redrock.01"] = {
		"si scrolla con una mano la sabbia rossa da una manica, riuscendo solo a spargerla di più.",
		"passa una mano su un masso color ruggine; il colore resta sulle dita come vernice secca.",
		"posa una mano sulla parete a strati, fasce di pietra ruggine e ocra impilate come le pagine di un libro chiuso.",
	},
	["dur.muse.roadnorth.01"] = {
		"Polvere, solchi, qualche cavaliere di lupi che passa al trotto. Qui ogni strada finisce alla grande porta.",
		"La strada verso nord, verso Orgrimmar, non sembra finire mai, e non ti lascia mai scordare dove porta.",
		"Verso settentrione la strada sale alla città nel canyon, e ogni viandante porta alle sue porte un po' di polvere rossa.",
	},
	["dur.muse.sand.01"] = {
		"Sabbia nelle orecchie, sabbia nel colletto. Il vento ha deciso che faccio parte del paesaggio.",
		"Non vedo più la cresta. Solo aria rossa, vento, e il sibilo della sabbia.",
		"La tempesta di sabbia passerà. Qui passa tutto, prima o poi, tranne la roccia.",
	},
	["dur.muse.scorpid.01"] = {
		"Mai sedersi su una pietra piatta senza guardarci sotto prima.",
		"Ho contato nove scorpioni dall'ultima curva. Ho smesso di contare.",
		"Gli scorpioni qui hanno il colore della pietra. Non è un caso, e non è un gesto d'amicizia.",
	},
	["dur.muse.seawind.01"] = {
		"Un soffio di vento dal mare, salato e fresco. L'unica scusa che Durotar sappia chiedere.",
		"Il vento da levante sa di sale. Laggiù, da qualche parte, il mare si muove al posto mio.",
		"Quando il vento gira e arriva dal mare, perfino gli scorpioni sembrano rallentare per godersela.",
	},
	["dur.muse.senjin.01"] = {
		"Dalla spiaggia le isole sembrano raggiungibili a nuoto. Dubito che qualcuno qui creda il mare così semplice.",
		"I troll appendono amuleti agli stipiti rivolti verso il mare. Contro cosa, non l'ho chiesto.",
		"Onde, gabbiani, qualcuno che rammenda una rete in riva al mare canticchiando. Una quiete che in Durotar non mi aspettavo.",
	},
	["dur.muse.southfury.01"] = {
		"guarda un coccodrillo scivolare giù dalla riva e sparire nell'acqua senza un'increspatura.",
		"lancia un sasso piatto sul fiume; rimbalza quattro volte prima che la corrente se lo prenda.",
		"siede un momento su una roccia accanto all'acqua, ad ascoltare il fiume che parla da solo.",
	},
	["dur.muse.thorns.01"] = {
		"Tutto quello che cresce qui ha le spine. Non posso dargli torto.",
		"Un unico fiore su un cactus, rosso come la roccia. Piccolo testardo.",
		"Gli sterpi si piegano al vento e si raddrizzano subito. C'è una lezione, se ne volessi una.",
	},
	["dur.muse.tiger.01"] = {
		"scorge una bestia striata distesa su una cengia, la coda che guizza, gli occhi socchiusi.",
		"nota impronte di zampa nella polvere, larghe e fresche, dirette dalla stessa parte del sentiero.",
		"sente un colpo di tosse sommesso fra gli arbusti, quello di un grosso felino che non ha ancora fame.",
	},
	["dur.muse.valley.01"] = {
		"Mi dolgono le braccia, ho gli stivali pieni di sabbia, e non mi sono mai {g:sentito|sentita} così {g:sveglio|sveglia}.",
		"Un altro cinghiale, un'altra lezione. I cinghiali insegnano meglio di quanto sembri.",
		"Un giorno questa valle sarà una storia da raccontare. Per ora è soprattutto lividi.",
	},
	["dur.npc.guard.01"] = {
		"Una guardia con una cicatrice per ogni anno di guerra. Un cenno solo. Da loro, è parecchio.",
		"La guardia mi squadra come un fabbro squadra una lama.",
		"Lancia, cipiglio, spallacci chiodati. Il benvenuto di Durotar.",
	},
	["dur.npc.innkeeper.01"] = {
		"fa un cenno verso il banco, dove una mano sta già prendendo un boccale.",
		"incrocia uno sguardo da dietro il banco, attraverso la sala fumosa.",
		"si appoggia al banco, ripulito dalla polvere rossa per la centesima volta oggi.",
	},
	["dur.npc.merchant.01"] = {
		"Tutto ciò che è in vendita qui è spolverato di rosso. Sarà lo stile locale.",
		"Otri, corda, carne salata. Qualcuno che sa bene cosa Durotar porta via alla gente.",
		"I prezzi sono aridi come la terra. E anche il sorriso.",
	},
	["dur.npc.questgiver.01"] = {
		"Guai sulla strada? Dimmi dove.",
		"Hai l'aria di chi ha un problema e nessuno da mandare.",
		"Scorpioni, uomini-cinghiale o cultisti? Fammi indovinare.",
	},
	["dur.npc.trainer.01"] = {
		"Mani così hanno imparato a caro prezzo. Bene. Ascolterò.",
		"Ogni lezione, qui, arriva con un livido e, prima o poi, una cicatrice. Mi sta bene.",
		"Vecchie cicatrici, voce ferma. Vale ogni moneta.",
	},
	["dur.npcd.guard.danger.01"] = {
		"Scorpioni fra le rocce, uomini-cinghiale fra gli arbusti, centauri sulle alture. Scegli tu.",
		"Resta sulla strada. Quello che c'è fuori morde.",
		"Occhio alla strada della costa. Quelli di Kul Tiras non restano dietro le loro mura.",
	},
	["dur.npcd.guard.danger.02"] = {
		"Le grotte a nord puzzano di opera demoniaca. Non entrarci senza compagnia.",
		"Se senti cantilene da una grotta, cambia strada. O porta degli amici.",
		"I cultisti hanno le stesse facce che abbiamo noi. È questo che li rende pericolosi.",
	},
	["dur.npcd.guard.danger.03"] = {
		"Arpie nella forra. Lucertole sulla cresta. Usa la testa.",
		"Pericoli? È Durotar. Tutto è pericolo.",
		"Bevi acqua. Guarda il cielo. Non accarezzare le tigri.",
	},
	["dur.npcd.guard.dir.01"] = {
		"Orgrimmar è in fondo alla strada, a nord. La porta non puoi mancarla.",
		"Razor Hill sta sulla strada principale, nel mezzo di Durotar. Cerca la torre.",
		"Sen'jin è giù, sulla costa meridionale, oltre la strada per la valle. Segui l'odore di pesce.",
	},
	["dur.npcd.guard.dir.02"] = {
		"Il fiume è il nostro confine a ovest. Attraversalo e sei nelle grandi pianure.",
		"Vuoi la costa? Vai verso est finché non ti si bagnano gli stivali.",
		"La valle delle reclute è a sud, fra il fiume e Sen'jin. È lì che mettono alla prova i giovani.",
	},
	["dur.npcd.guard.dir.03"] = {
		"A nord la città. A sud i troll. A est i guai.",
		"La strada è di là. Non lasciarla.",
		"Non sai dove andare? Segui la strada. Va dovunque valga la pena andare.",
	},
	["dur.npcd.inn.news.01"] = {
		"Le guardie dicono che i Razormane si stanno facendo audaci vicino alla strada. Tieni gli occhi aperti.",
		"Si dice che i Kolkar abbiano ripreso a fare razzie, verso la strada del fiume.",
		"Ieri è arrivata una carovana dalla strada del fiume. Con due carri in meno.",
	},
	["dur.npcd.inn.news.02"] = {
		"La gente sussurra che i cultisti di Skull Rock si fanno più audaci. Io a nord, col buio, non ci vado.",
		"Qualcuno ha visto luci nelle grotte vicino alla porta di Orgrimmar. Nessuno è andato a guardare.",
		"Dicono che quei cultisti abbiano ancora degli amici. Difficile capire chi, ed è questo il guaio.",
	},
	["dur.npcd.inn.news.03"] = {
		"Quelli di Kul Tiras, alla rocca, mandano pattuglie su per la spiaggia. Nessuno sa bene perché.",
		"I pescatori di Sen'jin dicono che non si avvicinano più alle isole. Nemmeno per la pesca buona.",
		"La settimana scorsa le arpie si sono portate via dalla riva un'intera fila di pesce messo a seccare. Sfacciate come poche.",
	},
	["dur.npcd.inn.open.01"] = {
		"Entra, scrollati la polvere. Non sul pavimento: fuori.",
		"Siediti. Prima l'acqua, poi parliamo di birra.",
		"Hai l'aria di chi è stato masticato da Durotar e sputato con la polvere. Siedi, mangia.",
	},
	["dur.npcd.inn.open.02"] = {
		"Il fuoco è acceso, lo stufato è caldo, e qui dentro nessuno ti disturba.",
		"Accomodati. Gli scorpioni restano fuori; noialtri ci arrangiamo.",
		"Una panca, una ciotola e quattro mura. Il meglio che Durotar possa offrire.",
	},
	["dur.npcd.merchant.news.01"] = {
		"L'acqua costa cara, questa settimana. Tutti la vogliono, nessuno vuole portarla.",
		"Le corazze di scorpione si vendono bene. Se ne trovi di intere, portamele.",
		"I commerci con Orgrimmar vanno a rilento. Le carovane non amano i Razormane.",
	},
	["dur.npcd.merchant.news.02"] = {
		"Pesce di Sen'jin, salato e abbastanza fresco. Be'. Salato.",
		"I troll scambiano buoni amuleti, se non chiedi cosa c'è dentro.",
		"Ho sentito che quelli di Kul Tiras pagano in buon argento. Non che io lo sappia.",
	},
	["dur.pray.01"] = {
		"Spiriti della terra e del vento, tenete in piedi questa terra arida.",
		"Antenati, camminate con me sulla strada, e tenetele il cielo sgombro sopra.",
		"Terra sotto, cielo sopra: reggete, e reggerò anch'io.",
	},
	["dur.quest.01"] = {
		"Fatto. Qualcuno in Durotar dormirà un po' più tranquillo.",
		"Un altro incarico chiuso. Durotar ne ha a volontà.",
		"Fatto, e la polvere non si è nemmeno posata.",
	},
	["dur.quest.02"] = {
		"consegna la prova del lavoro svolto e si scuote la sabbia rossa dai palmi delle mani.",
		"risponde al cenno di ringraziamento con un cenno e una mano alzata.",
		"ripone la ricompensa con una mano impolverata e lancia un'occhiata alle colline rosse.",
	},
	["dur.rest.razorhill.01"] = {
		"Una locanda dalle mura spesse e un cuoco che non fa domande. Bene.",
		"Una panca, un tetto, qualcosa di caldo in una ciotola. Anche {landmark} ha le sue comodità.",
		"Via gli stivali. Be', uno stivale. Non esageriamo.",
	},
	["dur.rest.razorhill.02"] = {
		"si lascia cadere su una panca accanto al fuoco e si fa avvolgere dal brusio della locanda.",
		"lascia lo zaino accanto al focolare e si stiracchia finché la schiena non scrocchia.",
		"si sistema vicino al fuoco del focolare, dove l'odore di cinghiale arrosto riempie l'aria.",
	},
	["dur.rest.senjin.01"] = {
		"Riposo fra i troll, con il mare per ninnananna.",
		"Una stuoia accanto al fuoco, il mare a due passi, qualcuno che canticchia. Potrei restare un po'.",
		"{landmark}. I troll non fanno cerimonie con gli ospiti. Si stringono e fanno posto.",
	},
	["dur.ret.death.01"] = {
		"L'ultima volta questa terra rossa è stata l'ultima cosa che ho visto. Guarderò bene dove metto i piedi.",
		"Qui sono {g:caduto|caduta}. La polvere non ne serba traccia, io sì.",
		"Questa terra mi ha già {g:abbattuto|abbattuta} una volta, e poi mi ha {g:restituito|restituita}. Ora la percorro come si passa accanto a un cane che ha già morso.",
	},
	["dur.ret.death.02"] = {
		"rallenta al margine del sentiero dove l'altra volta tutto è andato storto, e non distoglie lo sguardo.",
		"passa in silenzio accanto al tratto di strada dell'ultima caduta, la mascella serrata.",
		"sfiora l'elsa, una volta sola, nel punto della strada dove tutto finì la volta scorsa.",
	},
	["dur.ret.flight.01"] = {
		"L'ultima volta sono {g:scappato|scappata} da qui. Non oggi.",
		"Me ne sono {g:andato|andata} di corsa. Stavolta cammino.",
		"Durotar mi ha già {g:cacciato|cacciata} una volta. Riproviamo.",
	},
	["dur.ret.light.01"] = {
		"Di nuovo nella polvere rossa. Gli stivali ricordano la strada anche se io no.",
		"Ancora Durotar. Gli stessi scorpioni, ci giurerei. Sembrano contenti di vedermi.",
		"Eccomi qui un'altra volta. Le rocce non si sono spostate. In qualche modo, è confortante.",
	},
	["dur.ret.light.02"] = {
		"Durotar, mi sei mancata. Non tanto, ma un po'.",
		"Salve di nuovo, rocce. Sempre rosse, vedo.",
		"Di nuovo qui. La polvere entra, e non esce mai del tutto.",
	},
	["dur.ret.light.03"] = {
		"prende il bivio noto senza rallentare, come se la strada stessa ricordasse.",
		"fa un cenno a un masso lungo il sentiero, come si saluta una vecchia conoscenza.",
		"ripercorre il sentiero rosso con un passo più sciolto della prima volta.",
	},
	["dur.ret.long.01"] = {
		"È passato un po' di tempo. La polvere rossa ha lo stesso odore, e anche gli sterpi.",
		"Settimane via, e queste colline mi stanno ancora negli occhi come un vecchio paio di stivali.",
		"A lungo sono {g:stato|stata} via; la terra non ha sentito la mia mancanza, ma non ha scordato la forma dei miei passi.",
	},
	["dur.ret.long.02"] = {
		"osserva a lungo le colline rosse, notando ciò che è cambiato e ciò che non cambierà mai.",
		"cerca all'orizzonte i punti di riferimento noti, e li ritrova uno a uno.",
		"si ferma all'imbocco del sentiero, come se la lunga assenza avesse bisogno di un momento per posarsi.",
	},
	["dur.rez.01"] = {
		"prende un respiro rauco, sputa polvere rossa, e si rialza.",
		"si solleva dalla polvere, scrollandosela dai capelli e dall'equipaggiamento, e si guarda intorno con cautela.",
		"torna al mondo tossendo polvere, la luce che ferisce gli occhi.",
	},
	["dur.rez.02"] = {
		"Di nuovo in piedi. Alla fine Durotar non mi ha {g:voluto|voluta}.",
		"Ancora qui. Gli scorpioni ci resteranno male.",
		"Respira. Conta le dita. Cammina.",
	},
	["dur.rez.03"] = {
		"Gli spiriti mi hanno {g:rimandato|rimandata} indietro. Non lo sprecherò.",
		"Non ho ancora finito. La terra dovrà aspettarmi.",
		"In piedi. Un'altra volta. Finiamola.",
	},
	["dur.sub.bladefist.01"] = {
		"guarda la baia, dove le scogliere rosse precipitano dritte nel mare verde.",
		"scende fra le rocce verso la baia, coi gabbiani che volteggiano lassù lamentandosi.",
		"sosta sul sentiero della scogliera, sopra la baia, mentre il mare rimbomba negli anfratti della roccia.",
	},
	["dur.sub.bladefist.02"] = {
		"{subzone}. Perfino il vento che viene dal mare sembra stanco delle rocce.",
		"Da qualche parte, oltre tutta quell'acqua, ci sono altre rive. Non è affar mio, oggi.",
		"Il mare continua ad assalire le scogliere, paziente come un muratore.",
	},
	["dur.sub.bladefist.03"] = {
		"Bella baia. Peccato che tutto quello che ci vive abbia le chele.",
		"Se cado da questa scogliera, dite che stavo ammirando il panorama.",
		"Senti l'aria di mare. Ora senti i makrura. Rovinano tutto, vero?",
	},
	["dur.sub.coven.01"] = {
		"si china sotto l'imboccatura della grotta; dentro l'aria è calda e densa, e sa di peli bruciati e di fuoco vecchio.",
		"si ferma dove il cunicolo si allarga; piccole sagome ridacchianti zampettano ai margini della luce del fuoco.",
		"si addentra nella grotta, oltre simboli graffiati sulle pareti che fanno un po' male a guardarli.",
	},
	["dur.sub.coven.02"] = {
		"Una congrega di cultisti proprio sotto la valle dove si mettono alla prova i giovani. Che sfacciataggine.",
		"Diavoletti dappertutto. Qualcuno quaggiù li evoca a manciate.",
		"{subzone}. Le pareti sudano. Non credo sia per il caldo.",
	},
	["dur.sub.coven.03"] = {
		"Non allontanarti. I piccoli mordono, i grossi lanciano incantesimi.",
		"Chiunque guidi questa setta, è più in fondo. Avanti.",
		"Occhio al fuoco. E ai diavoletti. Soprattutto ai diavoletti.",
	},
	["dur.sub.deadeye.01"] = {
		"cammina sulla sabbia dura della riva, dove la risacca sibila sui ciottoli rossi.",
		"si ferma sulla linea della marea, nella sabbia bagnata; piccole chele ticchettano fra gli scogli, e qualcosa di più grosso risponde.",
		"respira il vento salmastro che viene dal mare, la prima aria fresca da molte miglia.",
	},
	["dur.sub.deadeye.02"] = {
		"Makrura. Granchi con delle opinioni. E delle lance.",
		"{subzone}. Bella spiaggia, se non ti dispiace farti pizzicare fino all'osso.",
		"Il mare è bellissimo. Le cose che ne escono, un po' meno.",
	},
	["dur.sub.deadeye.03"] = {
		"Niente scogli bagnati in riva al mare. Gli uomini-granchio aspettano solo che qualcuno scivoli.",
		"Guarda cosa porta il mare con la marea.",
		"Il guscio è duro. Punta alle giunture.",
	},
	["dur.sub.drygulch.01"] = {
		"segue il letto asciutto della forra, dove piume perse restano impigliate fra i sassi.",
		"alza lo sguardo alle cenge della forra; lassù qualcosa con le ali si muove e strilla.",
		"si sceglie con cura un passaggio fra i massi della gola secca, le orecchie piene di strida lontane.",
	},
	["dur.sub.drygulch.02"] = {
		"Arpie. Metà donna, metà avvoltoio, e maleducate per intero.",
		"{subzone}. L'odore arriva prima delle arpie. Piccole grazie.",
		"Nidi sulle cenge, ossa giù nella gola. Il menù si indovina.",
	},
	["dur.sub.drygulch.03"] = {
		"Testa bassa e occhi al cielo. Arrivano da lassù.",
		"Occhio alle cenge. Le arpie adorano chi si scorda del cielo.",
		"Se strilla e ha le ali, colpisci subito.",
	},
	["dur.sub.dustwind.01"] = {
		"entra nella grotta, al riparo dal vento; il suolo scricchiola di ossicini e gusci d'uovo rotti.",
		"si ferma appena dentro l'imboccatura, mentre uno strillo rimbalza sulla roccia, poi un altro.",
		"si copre bocca e naso contro il fetore del covo delle arpie, fra ossa e piume sotto i piedi.",
	},
	["dur.sub.dustwind.02"] = {
		"{subzone}. Arpie al chiuso. Come se quelle all'aperto non bastassero.",
		"Piume, escrementi, ossa. L'arredamento secondo le arpie.",
		"Con l'eco sembrano cento. Spero che sia solo l'eco.",
	},
	["dur.sub.dustwind.03"] = {
		"Dentro. Spalle al muro, armi in pugno.",
		"Il loro nido, le loro regole. Rompiamo entrambi.",
		"Spazi stretti. Bene: qui non possono piombarci addosso.",
	},
	["dur.sub.echo.01"] = {
		"{subzone}. Palme, acqua tiepida, e qualcosa di storto nel modo in cui si muovono i troll qui.",
		"I troll di queste isole fissano senza vedere. Qualcosa li tiene in pugno.",
		"Graziose, da lontano. Da vicino, ogni capanna sembra osservarmi.",
	},
	["dur.sub.echo.02"] = {
		"resta sulla sabbia bagnata delle isole, in ascolto di un silenzio che non ha nulla di pacifico.",
		"mette piede sulla sabbia umida; da qualche parte fra le capanne una voce borbotta e non smette.",
		"guarda indietro, oltre lo stretto, verso la terraferma; poi avanti, verso il villaggio stregato.",
	},
	["dur.sub.echo.03"] = {
		"Queste isole erano nostre. Lo saranno ancora.",
		"Casa nostra, e guarda chi ci cammina dentro adesso.",
		"Queste spiagge le conosco. Gli occhi che ne guardano fuori, non più.",
	},
	["dur.sub.kolkar.01"] = {
		"sente zoccoli sulla pietra, da qualche parte sopra la rupe, poi un richiamo aspro a cui ne risponde un altro.",
		"individua l'accampamento dei centauri sulla roccia alta: tende di pelle, un fuoco che fuma, una vedetta che va avanti e indietro nella polvere.",
		"si tiene alla larga dal terreno aperto sotto la rupe, dove le impronte di zoccoli rimestano la polvere rossa.",
	},
	["dur.sub.kolkar.02"] = {
		"Centauri. In campo aperto sono più veloci di me, e lo sanno.",
		"{subzone}. I Kolkar sorvegliano il sentiero come i falchi un topo di campagna.",
		"Se arrivano al galoppo, voglio una roccia alle spalle. Quella andrà bene.",
	},
	["dur.sub.kolkar.03"] = {
		"Metà cavallo, metà caratteraccio. Avanti, non fermiamoci.",
		"Centauri. Nessuno ti dice mai quanto sono rumorosi.",
		"Farei una gara con loro, ma ci tengo alla mia dignità.",
	},
	["dur.sub.razormane.01"] = {
		"storce il naso al tanfo dell'accampamento: setole bagnate, fumo e ossa vecchie.",
		"aggira un groviglio di rovi spinosi che gli uomini-cinghiale hanno trascinato fin qui come un muro rozzo, con il fumo che sale oltre.",
		"osserva da una distanza prudente le capanne di pelli e spine, dove grugni e lance entrano ed escono dal fumo.",
	},
	["dur.sub.razormane.02"] = {
		"Uomini-cinghiale. Sembra che qualcuno abbia infilato un cinghiale in un puntaspilli e gli abbia insegnato a reggere una lancia.",
		"{subzone}. Spine sulle capanne, spine sui cinghiali. Hanno un loro stile, bisogna ammetterlo.",
		"Grugniscono, squittiscono, e ogni parola la pensano davvero.",
	},
	["dur.sub.razormane.03"] = {
		"Occhio alle zanne. E alle lance. Soprattutto alle lance.",
		"Troppo vicini a Razor Hill, questi. Le guardie andranno pazze per l'odore.",
		"Senti? Quello è odore di uomini-cinghiale. Respira con la bocca.",
	},
	["dur.sub.skull.01"] = {
		"alza gli occhi sulla grande rupe a forma di teschio; nelle grotte là sotto tremola la luce di un fuoco.",
		"coglie un sentore di zolfo dalle bocche delle grotte sotto la rupe e arriccia il naso.",
		"si ferma sotto la rupe, dove la pietra ghigna come un teschio sbiancato, e sente un canto salire dall'interno.",
	},
	["dur.sub.skull.02"] = {
		"Orchi che si inchinano ancora ai demoni, proprio alle porte di Orgrimmar. Certe lezioni non attecchiscono.",
		"Questi cultisti hanno tenuto il vecchio veleno e l'hanno chiamato forza, e con lui le vecchie catene.",
		"{subzone}. Una setta in una grotta, a cantare per le stesse cose che un tempo misero in catene un intero popolo.",
	},
	["dur.sub.skull.03"] = {
		"Stanare i cultisti, e poi si respira tutti meglio.",
		"Qualunque cosa stiano evocando laggiù, non resterà.",
		"Fuoco demoniaco sotto un teschio di pietra. Gente sottile, questa.",
	},
	["dur.sub.southfury.01"] = {
		"si inginocchia sulla riva del fiume e si getta l'acqua fredda su viso e collo.",
		"guarda il fiume largo scorrere via, bruno e svelto, con le pianure aride che attendono sull'altra sponda.",
		"si ferma fra le canne, dove accanto all'acqua la roccia rossa cede finalmente il passo al verde.",
	},
	["dur.sub.southfury.02"] = {
		"Oltre il fiume, le pianure dell'ovest. Piatte come un tavolo, e larghe il doppio.",
		"{subzone}. Il fiume è l'unica cosa di Durotar che sembri avere fretta.",
		"Verde sulle sponde del fiume, finalmente. Ne avevano bisogno, i miei occhi.",
	},
	["dur.sub.southfury.03"] = {
		"Acqua dolce! Riempiamo tutti gli otri che abbiamo.",
		"Occhio ai coccodrilli. L'acqua non è così amichevole come sembra.",
		"Potrei restare qui tutto il giorno ad ascoltare l'acqua.",
	},
	["dur.sub.thunder.01"] = {
		"sente un brontolio sordo sotto le suole: qualcosa di pesante pascola qui vicino.",
		"osserva una grossa lucertola farsi largo lungo la cresta, l'aria che crepita appena attorno alla sua pelle.",
		"fiuta qualcosa di acre nel vento, come l'aria dopo un fulmine.",
	},
	["dur.sub.thunder.02"] = {
		"Lucertole grosse come carri, che fanno scintille quando si arrabbiano. Durotar non fa niente a metà.",
		"Ho i capelli dritti. O sono le lucertole, o dovrei cominciare a correre.",
		"{subzone}. Le senti prima di vederle. Le avverti prima di sentirle.",
	},
	["dur.sub.thunder.03"] = {
		"Attenzione a quelle grosse. Non si fermano: ti passano attraverso e basta.",
		"La pelle è dura come cuoio da stivali. Mira ai punti molli.",
		"Non stagliarti sulla cresta. Quelle bestie ti vedono da un miglio.",
	},
	["dur.sub.tiragarde.01"] = {
		"Una rocca di pietra coi colori di Kul Tiras sulla costa degli orchi. Qualcuno ha del fegato.",
		"{subzone}. Gli umani si sono costruiti un pezzetto di casa, mura comprese. Coraggiosi, o molto testardi.",
		"Muratura come si deve. In Durotar. Ha l'aria spaesata di un pesce su una pietra rovente.",
	},
	["dur.sub.tiragarde.02"] = {
		"studia le mura di pietra grigia della rocca, contando le sentinelle sugli spalti.",
		"si accovaccia sotto il muro di pietra della rocca, dove il vento di mare porta voci umane.",
		"squadra il pesante portone della rocca; dentro, qualcuno impartisce ordini con una voce secca, temprata dal mare.",
	},
	["dur.sub.tiragarde.03"] = {
		"Quelli di Kul Tiras, sulla nostra riva. Hanno scelto la spiaggia sbagliata.",
		"Quella rocca è rimasta in piedi abbastanza. Vediamo come accoglie le visite.",
		"Le loro mura sono spesse. La nostra pazienza di più.",
	},
	["dur.thanks.01"] = {
		"Grazie. Qui fuori una gentilezza vale più dell'acqua. Quasi.",
		"Ti ringrazio. In una terra così arida, non dimentico una goccia d'acqua donata.",
		"È un debito, come l'acqua divisa nella polvere. E io i miei li pago.",
	},
	["dur.threat.01"] = {
		"Vattene adesso, o Durotar avrà un mucchio d'ossa in più.",
		"Qui gli avvoltoi hanno sempre fame. Non dar loro le tue ossa.",
		"Allontanati. Questa terra ha sepolto gente più dura di te, ossa comprese.",
	},
	["dur.toast.01"] = {
		"Alla terra rossa, che non ci dà nulla e da noi ha tutto!",
		"All'acqua, al riparo e alle mura. In quest'ordine.",
		"Bevi a fondo. In Durotar non sai mai quando arriva il prossimo sorso, né la prossima goccia d'acqua.",
	},
	["dur.travel.01"] = {
		"rigira la pietra del ritorno; la polvere rossa è entrata perfino nelle incisioni.",
		"soffia via la polvere rossa dalla pietra prima di stringerla nel pugno.",
		"stringe la pietra che si scalda e lancia un ultimo sguardo alle colline rosse.",
	},
	["dur.travel.02"] = {
		"A casa, allora. Dovunque sia acceso il focolare.",
		"La pietra conosce la strada per il focolare. La conosce sempre.",
		"Si parte. La polvere può venire con noi.",
	},
	["dur.victory.01"] = {
		"Durotar tiene quello che sa tenere. Anch'io.",
		"A terra. Che se lo prenda la terra rossa.",
		"Un altro per gli avvoltoi e per la terra.",
	},
	["dur.victory.02"] = {
		"si asciuga dalla fronte polvere rossa e sudore, col fiato grosso, e controlla il sentiero.",
		"abbassa l'arma piano, riprendendo fiato nell'aria secca.",
		"si raddrizza, scuotendo la polvere rossa dall'equipaggiamento, ancora senza fiato.",
	},
	["dur.victory.03"] = {
		"Una cosa in meno, in Durotar, che vuole pungermi. Ne restano qualche migliaio.",
		"Festeggerei, ma prima mi serve dell'acqua.",
		"Bene. Ora mi serve un riparo e un sorso d'acqua.",
	},
	["dur.victory.04"] = {
		"L'aria secca fa durare ogni scontro il doppio. Le mie braccia lo sanno.",
		"Ancora in piedi. La roccia è ruvida sotto la mano mentre mi ci appoggio.",
		"Respira. Bevi. Guardati intorno. In quest'ordine.",
	},
	["dur.victory.05"] = {
		"lancia un'occhiata agli avvoltoi che già volteggiano, e fa loro un cenno come a dei colleghi.",
		"scuote uno stivale, per scrupolo, prima di fare un altro passo.",
		"si scrolla di dosso la polvere dello scontro, il che fa solo posto ad altra polvere.",
	},
	["dur.victory.blade.01"] = {
		"Una voce in meno a chiamare demoni in questa terra.",
		"I tuoi padroni non sono venuti. Non vengono mai.",
		"La lama di quei cultisti, ora, è un po' più spuntata.",
	},
	["dur.victory.harpy.01"] = {
		"Piume dappertutto. Me le toglierò dai capelli per giorni.",
		"A terra, finalmente, uccellaccio.",
		"Uno strillo in meno nel vento. Gli uccelli possono ringraziarmi.",
	},
	["dur.victory.horde.01"] = {
		"Un parassita in meno sulla schiena di Durotar.",
		"È così che teniamo questa terra: uno scontro alla volta.",
		"La terra dell'Orda resta dell'Orda.",
	},
	["dur.victory.kultiras.01"] = {
		"Un soldato lontano dal mare che l'ha cresciuto. Qualunque ordine l'abbia portato qui, ora non conta più.",
		"Armatura macchiata di sale, uno stemma di Kul Tiras. Qualcuno oltre il mare aspetterà a lungo.",
		"Si sono battuti bene. Mura di pietra e testardaggine, così lontano dal loro mare: conosco il tipo.",
	},
	["dur.victory.scorpid.01"] = {
		"Guscio di scorpione. Dicono che venga fuori una ciotola decente, se togli la puzza.",
		"Il pungiglione si muove ancora. Ci giro intorno.",
		"Croccante.",
	},
	["dur.wc.clear.01"] = {
		"La polvere si posa e le creste ricompaiono, nitide e rosse, come se niente fosse.",
		"Di nuovo cielo limpido. Vedo fino alla prossima cosa che vorrà pungermi.",
		"Il vento cala, e la polvere con lui. Il cielo sopra Durotar è vasto, vuoto e azzurrissimo.",
	},
	["dur.wc.rain.01"] = {
		"Pioggia! Senti l'odore: pietra bagnata e polvere, tutto insieme.",
		"La pioggia colpisce la pietra calda e fuma. Durotar non sa se ringraziarla o combatterla.",
		"Piove su Durotar. Qualcuno segni la data.",
	},
	["dur.wc.sand.01"] = {
		"si volta mentre il vento rinforza e la sabbia rossa comincia a sibilare sul sentiero.",
		"socchiude gli occhi mentre un muro di sabbia rossa avanza dalle piane, spinto dal vento.",
		"si alza il colletto contro il vento carico di sabbia che ora raschia le rocce.",
	},
	["dur.wc.storm.01"] = {
		"Tempesta dal mare. Via dalle creste prima che il fulmine ti trovi.",
		"Tuoni sulla costa. Trova una grotta, e in fretta.",
		"Il cielo s'è fatto nero sull'acqua. Questa tempesta non sarà gentile.",
	},
	["dur.zone.alliance.01"] = {
		"Terra dell'Orda. Evito la strada maestra e tengo d'occhio le creste.",
		"Ogni torre di guardia qui appartiene a qualcuno che preferirebbe non vedermi. Meglio non fermarsi.",
		"Roccia rossa, stendardi orcheschi, e io. Una di queste cose è fuori posto.",
	},
	["dur.zone.alliance.02"] = {
		"Posto incantevole. Peccato per il comitato di benvenuto.",
		"Farò in fretta. Durotar non mi sembra un posto che ama le visite.",
		"Polvere rossa, rocce aguzze e lance su ogni collina. Nessuno mi aveva detto che fosse così accogliente.",
	},
	["dur.zone.emo.curious.01"] = {
		"Quei segni sul masso accanto al sentiero: incisioni vecchie, o solo una guardia annoiata con un coltello?",
		"Ogni grotta di queste colline ha una storia. Ne voglio almeno tre prima di andarmene.",
		"Cosa vive sotto queste pietre piatte? C'è un solo modo per saperlo, e probabilmente punge.",
	},
	["dur.zone.emo.tense.01"] = {
		"tiene il centro del sentiero, una mano mai lontana dall'arma, gli occhi su ogni cresta.",
		"si blocca a un fruscio fra gli sterpi e aspetta, senza muovere un muscolo, finché il fruscio non tace.",
		"si volta a guardare indietro, giù per la gola, due volte in altrettanti passi.",
	},
	["dur.zone.first.01"] = {
		"Prima volta in {zone}. Tutto è rosso, e tutto ha l'aria di mordere.",
		"Terra nuova sotto gli stivali: rossa, crepata, secca come pane vecchio.",
		"Mai prima d'ora ho percorso questo paese. Non mi accoglie: mi lascia passare, e intanto osserva.",
	},
	["dur.zone.first.02"] = {
		"osserva a lungo le colline rosse mai viste, come per impararle a memoria.",
		"si volta piano tutt'intorno, leggendo questo paese nuovo: creste, sterpaglia, una lontana linea di roccia.",
		"si accovaccia, sfrega fra due dita un pizzico di quella terra rossa sconosciuta e la lascia cadere.",
	},
	["dur.zone.horde.01"] = {
		"Durotar. Terra povera, roccia dura, e nostra fino all'ultima pietra.",
		"Qui non ci hanno dato niente, e allora abbiamo costruito tutto. Fa bene starci sopra.",
		"Siano pure verdi le altre terre. Questa, rossa, è stata conquistata, e ci stringe come un pugno.",
	},
	["dur.zone.horde.02"] = {
		"Fumo di un fuoco da campo, oltre la cresta. La nostra gente. I nostri fuochi.",
		"Questa terra è calda, rossa e dura, e nessuno ci chiude il cancello alle spalle.",
		"Non è granché, questa terra. Ma è la prima cosa, da tanto tempo, che nessuno può riprendersi.",
	},
	["dur.zone.neutral.01"] = {
		"smuove un sasso col piede e lo guarda rimbalzare giù per il pendio rosso, sollevando uno sbuffo di polvere a ogni salto.",
		"si ferma al bordo del sentiero: la pietra rossa si stende in ogni direzione, crepata come un vaso vecchio.",
		"sosta dove la terra si apre: pietra rossa, sterpi grigi, e una polvere che si posa su tutto come una marea paziente.",
	},
	["dur.zone.neutral.02"] = {
		"{zone}. Questa terra non regala niente. Quello che vuoi, te lo prendi.",
		"Terra rossa e dura, rovi spinosi, e nemmeno un riparo che meriti il nome.",
		"Ogni passo scricchiola. Qui tutto sembra fatto di cose che si spaccano.",
	},
	["dur.zone.neutral.03"] = {
		"Ho già la polvere rossa negli stivali. Che rapidità.",
		"{zone}. Scorpioni, sassi, altri sassi. Incantevole.",
		"Se qualcuno vede un albero, me lo indichi. Vorrei salutarlo.",
	},
	["dur.zone.neutral.04"] = {
		"Hanno dato a questa terra il nome di un capo che non l'ha mai vista. Strano regalo, un nome.",
		"Una terra chiamata come un padre caduto prima di poterla calpestare. Alla pietra il nome non sembra dispiacere.",
		"Questo paese porta il nome di un capo che non visse abbastanza per vederlo; il figlio lo affidò alla pietra, e la pietra lo custodisce.",
	},
	["dur.zone.orc.01"] = {
		"I nostri anziani hanno scavato questa terra a mani nude. Io la difenderò con le mie.",
		"Lo senti? Pietra che risponde a noi. Niente catene, niente mura, niente carcerieri.",
		"Un orco dovrebbe stare su una terra così: dura, rossa, e senza paura.",
	},
	["dur.zone.time.day.01"] = {
		"Il sole batte sulla roccia come su un'incudine. E il ferro di cavallo siamo noi.",
		"Su queste pietre ci si potrebbe cucinare. Qualcuno l'avrà già fatto.",
		"Acqua. Un riparo. Poi parliamo.",
	},
	["dur.zone.time.night.01"] = {
		"Notte in {zone}. La roccia restituisce il caldo del giorno, e le stelle scendono basse.",
		"Col buio gli scorpioni tacciono. Qualcos'altro no: lo sento fra gli sterpi.",
		"La notte si stende sul paese rosso come una mano fresca su una fronte febbricitante, e le stelle sono tante e vicine.",
	},
	["dur.zone.troll.01"] = {
		"Il mare è a levante, come dev'essere. Un troll respira meglio con il sale nell'aria.",
		"La roccia rossa non è la giungla, ma gli orchi dividono l'acqua con noi. E vale parecchio.",
		"Da qualche parte oltre quella costa ci sono le isole che abbiamo lasciato. Non oggi. Una cosa alla volta.",
	},
	["dur.zone.weather.rain.01"] = {
		"Pioggia. In Durotar. La polvere non sa più che fare di sé.",
		"La terra rossa beve la pioggia così in fretta che pare l'aspettasse da un anno. Probabilmente è così.",
		"Pioggia sulla pietra rossa: rara qui come la clemenza, e il suolo riarso apre ogni crepa per raccoglierla.",
	},
	["dur.zone.weather.sand.01"] = {
		"si tira un panno su bocca e naso, mentre il vento solleva la sabbia rossa dalle piane in lunghi teli sibilanti.",
		"volta una spalla alle raffiche; la sabbia crepita sull'armatura e punge gli occhi.",
		"strizza gli occhi nella sabbia che vola. Le creste lontane appaiono e spariscono come spettri.",
	},
	["dur.journey.w01.01"] = {
		"Da quassù Durotar è tutta pieghe rosse e grinze secche, come una pelle lasciata troppo al sole.",
		"Da questa altezza i canyon sembrano crepe in un vaso d'argilla. Laggiù c'è uno scorpione molto deluso da me.",
		"Terra rossa, mare grigio e una sottile linea bruna di strada nel mezzo. Durotar, in breve.",
	},
	["dur.journey.w01.02"] = {
		"scende nella calura, e la polvere rossa si alza a salutare l'atterraggio prima ancora che la viverna abbia chiuso le ali.",
		"mette piede sulla dura terra rossa, socchiudendo gli occhi mentre il riverbero rimbalza dalle rocce tutto in una volta.",
	},
	["dur.quest_complete.w01.01"] = {
		"Fatto. Pagami in acqua, se per te è lo stesso.",
		"Finito. Festeggerei, ma fa troppo caldo per esultare.",
	},
	["dur.quest_progress.w01.01"] = {
		"Questa parte è fatta. Il resto è là fuori, sotto lo stesso sole duro.",
		"Un pezzo in meno. Di commissioni, se non altro, Durotar è generosa.",
	},
	["dur.attack.w02.01"] = {
		"Mangia polvere! Ce n'è in abbondanza.",
		"Assaggia un po' di Durotar!",
		"Terra rovente, colpi duri. Benvenuto.",
	},
	["dur.quest_complete.w02.01"] = {
		"Fatto. Questa terra non regala niente, e chiede lo stesso a chiunque ci viva.",
		"Finito. Durotar è dura, ma i suoi debiti li paga in rispetto, se non in ombra.",
		"Un altro lavoro chiuso sotto le rupi rosse. Le mie spalle lo sanno; presto lo saprà anche qualcun altro.",
	},
	["dur.quest_progress.w02.01"] = {
		"C'è tutto. Ora di nuovo attraverso la terra rovente per dirlo, sperando in un filo di vento.",
		"Finito. Con questo caldo, il difficile è rifare la strada per consegnarlo.",
	},
	["dur.attack.w16.cry.001"] = {
		"Nella polvere rossa, giù!",
		"Nella terra, tu!",
		"Faccia a terra!",
	},
	["dur.attack.w16.cry.002"] = {
		"Ecco la scorza di Durotar!",
		"Come la roccia di questa terra!",
	},
	["dur.attack.w16.cry.003"] = {
		"Questo è per il caldo!",
		"E questo per la sabbia negli stivali!",
		"Uno per ogni scorpione di questa terra!",
	},
	["dur.attack.w16.cry.004"] = {
		"Come il fiume, dritto attraverso!",
		"Dritto come la corrente del fiume!",
	},
	["dur.attack.w16.cry.005"] = {
		"Qui la terra morde. E anch'io!",
		"In Durotar tutto punge. Pure io!",
	},
	["dur.attack.w16.cry.006"] = {
		"Presto, prima che ti cuocia il caldo!",
		"Con lo scatto di uno scorpione!",
	},
	["dur.attack.w16.cry.007"] = {
		"Ora, mentre la polvere lo nasconde.",
		"Lì. Attraverso la sabbia. Adesso.",
	},
	["dur.attack.w16.cry.008"] = {
		"Durotar dice di no!",
		"Questa terra risponde!",
		"Senti il paese rosso!",
	},
	["dur.attack.w16.cry.009"] = {
		"si muove d'anticipo, e la polvere rossa segue.",
		"scatta in uno sbuffo di sabbia color ruggine.",
	},
	["dur.attack.w16.cry.010"] = {
		"Conta i sassi mentre cadi!",
		"Di rocce su cui cadere ce n'è!",
	},
	["dur.attack.w16.cry.011"] = {
		"Come la scogliera contro la marea!",
		"Come lo scoglio sotto l'onda del mare!",
	},
	["dur.attack.w16.cry.012"] = {
		"Terra dura, colpo più duro!",
		"Roccia rossa, colpo rovente!",
	},
	["dur.attack.w16.cry.013"] = {
		"Ecco, un ricordino di Durotar!",
		"Portati a casa un po' di terra rossa!",
	},
	["dur.battle.w16.cult.001"] = {
		"Cultista. Vendi la menzogna più vecchia di Durotar, e qui non compra nessuno.",
		"Skull Rock si tenga il suo fumo. Tu lì non ci torni.",
		"Senti? Nessuno risponde alla tua cantilena.",
	},
	["dur.battle.w16.cult.002"] = {
		"Cultisti nel cortile di casa di Orgrimmar. In città qualcuno ci perderà il sonno.",
		"Sotto il naso del Capoguerra, e ancora si radunano. Audaci, o molto stupidi.",
		"Tuniche e zolfo. Le grotte continuano a sputarne fuori.",
	},
	["dur.battle.w16.cult.003"] = {
		"Torna a casa tua, demone. Questa terra secca non ha niente per la tua fame.",
		"Chi ti ha evocato ha scelto la terra sbagliata.",
		"Demone. Con quelli come te, Durotar ha la memoria lunga.",
	},
	["dur.battle.w16.cult.004"] = {
		"sente la cantilena del cultista cominciare piano e si muove prima che finisca.",
		"coglie un tanfo di zolfo e fumo vecchio, e si pianta davanti alla figura incappucciata.",
	},
	["dur.battle.w16.cult.005"] = {
		"Gli orchi si sono scrollati di dosso i demoni per fare di questa roccia una casa. Nessuno gliela toglie a buon mercato.",
		"I demoni non hanno tenuto gli orchi per sempre. E tu non terrai me a lungo.",
	},
	["dur.battle.w16.cult.006"] = {
		"Predoni dal mare, cultisti nelle grotte, uomini-cinghiale fra gli sterpi. A Durotar uno scontro non manca mai.",
		"Nemici dentro e fuori, questo paese. Di qualunque tipo tu sia, finisce uguale.",
	},
	["dur.battle.w16.dust.001"] = {
		"Già tutti e due coperti di polvere rossa. Vediamo chi ne porterà di più.",
		"Questa sabbia si attacca a chiunque. Alla fine, la maggior parte sarà tua.",
		"Polvere su di te, polvere su di me. Si parte pari.",
	},
	["dur.battle.w16.dust.002"] = {
		"In questo paese la ghiaia rotola sotto gli stivali. Peso basso, e che scivoli l'altro.",
		"Baricentro basso. Qui i sassi smossi fanno metà del lavoro.",
		"Talloni giù, ginocchia morbide. Che la ghiaia si prenda il distratto.",
	},
	["dur.battle.w16.dust.003"] = {
		"si scava un appoggio nella ghiaia rossa e aspetta la prima mossa.",
		"affonda i talloni; una nuvoletta di polvere color ruggine si alza e resta sospesa.",
		"pianta i piedi ben larghi sulla ghiaia rossa, in attesa.",
	},
	["dur.battle.w16.dust.004"] = {
		"Attaccar briga in Durotar. Coraggio, o soltanto sete?",
		"Cercare guai con questo caldo? O ti annoi parecchio, o hai parecchia fame.",
		"Con questo caldo? Devi proprio volerlo.",
	},
	["dur.battle.w16.dust.005"] = {
		"Provaci. Questa terra cotta ha visto di peggio.",
		"Qui il suolo è cotto come un mattone. Sarà duro per chi cade.",
		"Se cadi qui, il terreno non ti farà da cuscino. E io nemmeno.",
	},
	["dur.battle.w16.dust.006"] = {
		"Roccia rossa tutt'intorno, vecchia e paziente. Ha visto mille scontri come questo, e non ne ha serbato nessuno.",
		"Queste pietre hanno già visto tutto. Non ricorderanno chi ha vinto.",
	},
	["dur.battle.w16.dust.007"] = {
		"Polvere negli occhi, allora. Uguale per tutti e due.",
		"Solleva tutta la sabbia che vuoi. So battermi anche a occhi stretti.",
		"Occhi socchiusi, e colpisci. In Durotar si combatte tutti mezzi ciechi.",
	},
	["dur.battle.w16.dust.008"] = {
		"Arretra pure. In questa terra tutto quello che hai alle spalle ha le spine.",
		"Ritirarsi non serve: Durotar mette spine in ogni direzione.",
	},
	["dur.battle.w16.dust.009"] = {
		"Calore che sale dalle pietre, sabbia fra i denti. Va bene. Pensa allo scontro, non alla sete.",
		"Sete, caldo, e adesso pure questo. La sete aspetterà.",
		"Lascia stare il caldo. Lascia stare la sabbia. Guarda il nemico.",
	},
	["dur.battle.w16.dust.010"] = {
		"Terra rossa, nervi corti. Hai appena trovato i miei.",
		"Questo paese alleva il malumore, e tu ci hai messo il piede dentro.",
		"Terreno brutto, umore nero, e sfortuna per te.",
	},
	["dur.battle.w16.dust.011"] = {
		"legge ogni spostamento di peso nella polvere che si alza fra i due.",
		"osserva gli sbuffi di sabbia ai piedi del nemico: ognuno tradisce una mossa prima che arrivi.",
		"guarda la sabbia muoversi, e si muove con lei.",
	},
	["dur.battle.w16.dust.012"] = {
		"Niente ombra, niente riparo, e nessun tempo per cercarli. Solo questo.",
		"Niente a portata da mettere in mezzo. Meglio: meno trucchi.",
	},
	["dur.battle.w16.dust.013"] = {
		"Chi attraversa Durotar paga un pedaggio. Ecco il mio, ed ecco il tuo.",
		"Per attraversare questo paese qualcosa si paga sempre. Prima tu.",
		"Il pedaggio è dovuto. Pagalo in lividi.",
	},
	["dur.battle.w16.dust.014"] = {
		"sputa sabbia rossa, si pulisce una mano sulla manica e si prepara.",
		"si acquatta, sbattendo le palpebre contro la sabbia che punge.",
	},
	["dur.battle.w16.dust.015"] = {
		"Questa terra porta il nome di un capo morto combattendo. Non ha pazienza per chi non combatte.",
		"Una terra col nome di un capo caduto. Da chiunque la calpesti, si aspetta lotta.",
	},
	["dur.battle.w16.dust.016"] = {
		"Vuoi questo pezzo di terra rossa? Guadagnatelo.",
		"Gratis, in Durotar, nessuno ottiene niente. Non comincerai con me.",
	},
	["dur.battle.w16.shore.001"] = {
		"Fai pure clic clac. I gusci si rompono.",
		"Su dalla risacca con una lancia e un caratteraccio. Va bene, granchio: balliamo.",
		"Torna nelle pozze di marea, chiacchierone.",
	},
	["dur.battle.w16.shore.002"] = {
		"Ti ha mandato fuori Tiragarde, o hai solo sbagliato strada?",
		"Stivali di Kul Tiras sulla polvere rossa. Qui non stanno mai bene.",
		"Kul Tiras è a un mare intero da qui. Dovevi restartene sulla nave.",
	},
	["dur.battle.w16.shore.003"] = {
		"Qualunque cosa guardi dai tuoi occhi, non sei tu. Mi dispiace.",
		"Un burattino di Zalazane. Taglierò i fili, nel modo più duro.",
		"La presa di Zalazane su di te finisce qui.",
	},
	["dur.battle.w16.shore.004"] = {
		"arretra dal bordo dell'acqua mentre il coccodrillo si tira fuori, fauci in avanti.",
		"evita le fauci che scattano, girando verso terreno più asciutto.",
	},
	["dur.battle.w16.shore.005"] = {
		"Il mare da una parte, il fiume dall'altra. In Durotar non si scappa lontano.",
		"Tutta questa terra è stretta fra il mare e il fiume. Niente ritirata, per nessuno dei due.",
		"Fra il fiume e il mare non resta che tenere la posizione.",
	},
	["dur.battle.w16.shore.006"] = {
		"Sii la roccia rossa della costa. Che arrivi come la risacca, e si infranga.",
		"Da sempre il mare si scaglia contro le scogliere di Durotar. Le scogliere sono ancora lì.",
	},
	["dur.battle.w16.shore.007"] = {
		"I Darkspear hanno perso le isole e combattono ancora. Questo posso reggerlo.",
		"Zalazane ha tolto le Echo Isles ai troll, e loro non hanno mai smesso di battersi. Nemmeno io smetterò.",
	},
	["dur.battle.w16.shore.008"] = {
		"Perfino quelli di Kul Tiras si sono piantati sulla costa di Durotar e hanno tenuto. Credi di smuovermi?",
		"Gli umani hanno costruito una rocca sulla riva di questo paese e non si sono ancora mossi. Testardaggine ne ho anch'io.",
		"Se si sono piantati qui quelli di Kul Tiras, posso farlo anch'io.",
	},
	["dur.battle.w16.wild.001"] = {
		"Tutto, in Durotar, arriva con un pungiglione, una spina o un dente. Tu cosa porti?",
		"Spine, pungiglioni, denti... questa terra non manda mai niente di morbido.",
		"Spine, veleno o rabbia? Da queste parti, di solito tutte e tre.",
	},
	["dur.battle.w16.wild.002"] = {
		"Costole in vista, occhi duri. In questa terra nessuno patisce la fame in silenzio.",
		"Magra. La terra secca rende disperati i cacciatori, e avventati i disperati.",
	},
	["dur.battle.w16.wild.003"] = {
		"Un raptor! Occhio alle zampe: gli artigli arrivano prima dei denti.",
		"Veloci e cattivi, i raptor delle isole. La velocità non basta.",
		"Raptor sulla sabbia! Non lasciare che ti giri alle spalle.",
	},
	["dur.battle.w16.wild.004"] = {
		"si abbassa mentre uno strillo piomba dall'alto, e si volta incontro alle ali che sbattono.",
		"incassa la testa fra le spalle mentre piume e artigli calano su di {g:lui|lei}.",
	},
	["dur.battle.w16.wild.005"] = {
		"Grosso, lento, e crepita. Continua a muoverti, e non toccare la pelle.",
		"Lontano dalla coda. Quella bestia colpisce come un muro che crolla.",
	},
	["dur.battle.w16.wild.006"] = {
		"Se gli avvoltoi stanno guardando, per loro uno vale l'altro.",
		"Gli avvoltoi non parteggiano per nessuno. Aspettano solo la fine.",
		"Nessuno cade, in Durotar, senza che gli avvoltoi se ne accorgano.",
	},
	["dur.battle.w16.wild.007"] = {
		"Hai fame? Mettiti in fila: qui ce l'hanno tutti.",
		"Fame, eh? Ce l'ha tutto il paese. Aspetta il tuo turno.",
		"Cercati un cinghiale. Io sono solo nervi e cartilagine.",
	},
	["dur.battle.w16.wild.008"] = {
		"si immobilizza come fanno le lucertole delle rocce rosse, e aspetta che sia l'altro a muoversi.",
		"si blocca come una lucertola su una pietra tiepida, coi muscoli pronti.",
	},
	["dur.battle.w16.wild.009"] = {
		"Qualunque arma ti abbia dato Durotar, portala tutta.",
		"Fammi vedere cosa ti ha insegnato questa terra dura.",
		"Da Durotar hai avuto le spine. Io di più.",
	},
	["dur.battle.w16.wild.010"] = {
		"In una terra così povera tutti si battono per gli avanzi. Niente di personale.",
		"Qui nessuno ha abbastanza di niente. Per questo in Durotar ogni scontro è cattivo.",
	},
	["dur.battle.w16.wild.011"] = {
		"Perfino uno scorpione avvisa, alzando la coda. Tu no.",
		"Perfino il cactus, qui, mette in guardia. Tu nemmeno quello.",
	},
	["dur.journey.w16.land.001"] = {
		"Piedi sulla terra rossa. Dura, polverosa, e per niente interessata a dove sono {g:stato|stata}: mi sta bene.",
		"A terra. La polvere mi trova prima ancora che faccia un passo, come un cane che sentiva la mia mancanza.",
		"Sul duro pavimento di Durotar, finalmente. Le ginocchia ricordano ogni scossone del volo.",
	},
	["dur.journey.w16.land.002"] = {
		"tocca terra in uno sbuffo di polvere rossa e resta un momento immobile, lasciando che le gambe si ricordino come si fa.",
		"scivola giù, scioglie la rigidità delle gambe e si guarda attorno fra le creste rosse, come per contarle.",
		"atterra, si fa da parte e si spolvera il primo strato di Durotar prima che abbia il tempo di posarsi bene.",
	},
	["dur.journey.w16.land.003"] = {
		"La prima cosa che Durotar restituisce dopo un volo è l'odore: pietra calda, sterpi secchi e, se l'aria è gentile, un fuoco da campo da qualche parte.",
		"A terra. L'aria sa di ruggine e di spine secche, niente a che vedere col cielo.",
	},
	["dur.journey.w16.land.004"] = {
		"Finalmente giù. Qualcuno lo dica al mio stomaco.",
		"Terra. Rossa, polverosa, meravigliosa terra.",
		"Per me di cielo ne basta. Dov'è la roccia piatta più vicina per sedersi?",
	},
	["dur.journey.w16.land.005"] = {
		"Dall'alto la terra sembrava piccola e compiuta. A piedi torna grande, e niente in lei è compiuto davvero.",
		"Giù fra le creste il mondo si restringe alla prossima curva e alla prossima roccia. Più facile da pensare, chissà perché.",
		"Atterrare trasforma di nuovo la mappa in un paese. Il rosso non è più un colore: è sabbia, pietra, e strada da fare.",
	},
	["dur.journey.w16.land.006"] = {
		"scende sulla terra rossa e batte un piede, deciso, come per accertarsi che sia ancora lì.",
		"scende, fa tre passi rigidi e si volta a guardare l'aria vuota lassù con qualcosa di simile al rispetto.",
	},
	["dur.journey.w16.rise.001"] = {
		"Il suolo mi lascia andare, e Durotar mostra finalmente la sua forma intera: una striscia rossa stretta fra il fiume e il mare.",
		"Si sale. Le creste che a piedi chiedono un'ora di fatica mi scivolano sotto in pochi istanti.",
		"Da quest'altezza una palizzata è un cerchio di schegge, e una strada un graffio sul rosso.",
	},
	["dur.journey.w16.rise.002"] = {
		"si alza dalla terra rossa in un vortice di polvere, e la sabbia cade dagli stivali mentre il suolo si allontana.",
		"sale nell'aria aperta sopra Durotar; laggiù le creste si riducono a increspature di sabbia color ruggine.",
		"si stacca dalla polvere, le nocche strette sulle cinghie, e guarda il paese rosso inclinarsi e scivolare sotto di sé.",
	},
	["dur.journey.w16.rise.003"] = {
		"Su e via. Per una volta la polvere è un problema di qualcun altro.",
		"Sotto di me, un avvoltoio. Un avvoltoio, sotto di me. Me la godrò più del dovuto.",
		"Laggiù un cinghiale si starà chiedendo che fine ho fatto. Che se lo chieda.",
	},
	["dur.journey.w16.rise.004"] = {
		"Verso sud, le Echo Isles sono una manciata di verde sull'acqua, vicine alla riva e fuori dalla portata di tutti. Qualunque cosa le tenga adesso, dall'alto non si vede.",
		"Tutta Durotar sta in un solo sguardo, da quassù: paese duro, costruito in fretta da gente che non aveva altro posto dove andare.",
	},
	["dur.journey.w16.rise.005"] = {
		"Con calma, quassù. Della terra ne ho avuto abbastanza per un po'.",
		"Più in alto! Vediamo fin dove arriva il rosso.",
		"Guarda laggiù. Rosso fino ai bordi, e nemmeno un albero a rovinarlo.",
	},
	["dur.journey.w16.rise.006"] = {
		"guarda la strada per Orgrimmar srotolarsi verso nord là sotto, un filo chiaro tirato attraverso una stoffa rossa.",
		"osserva la terra che si allontana: gli accampamenti diventano anelli, i sentieri crepe, e tutto il paese ammutolisce.",
	},
	["dur.lowhp.w16.hold.001"] = {
		"Da così vicino la terra rossa sembra morbida. Non lo è. Resta su.",
		"Non andare giù. La terra di Durotar è dura, e non restituisce niente.",
		"Non cedere alle ginocchia. Qui la terra è un pessimo letto.",
	},
	["dur.lowhp.w16.hold.002"] = {
		"Le mani tremano. Va bene. Anche le mani che tremano sanno tenere.",
		"La presa si allenta. Stringi. Qui tutto punisce chi molla.",
		"Tremare si può. Mollare no.",
	},
	["dur.lowhp.w16.hold.003"] = {
		"Chiunque se ne vada via di qui, a Durotar non importerà. A me sì. Dovrà bastare.",
		"La terra non piangerà nessuno dei due. Tocca a me tenerci.",
	},
	["dur.lowhp.w16.hold.004"] = {
		"Spalle a una roccia. In Durotar una roccia c'è sempre. Trovala.",
		"Qualcosa di solido alle spalle. Un masso, un muro, qualsiasi cosa. Questa terra ne è piena.",
		"Trova una roccia. Mettila alle spalle. Tieni duro.",
	},
	["dur.lowhp.w16.hold.005"] = {
		"Ragiona. Dov'è la strada? Dov'è Razor Hill? Quanto manca a qualunque cosa?",
		"Da che parte c'è aiuto? Razor Hill, Sen'jin, qualunque posto con delle mura. Pensa.",
	},
	["dur.lowhp.w16.hold.006"] = {
		"Le guardie di Razor Hill dicono che questa terra spezza ciò che si piega. E allora non piegarti.",
		"La pietra non si piega, dicono gli orchi, e Durotar è fatta di pietra. Sii pietra.",
		"Chi si piega, qui, si spezza. Quindi non piegarti.",
	},
	["dur.lowhp.w16.hold.007"] = {
		"Fa male tutto e la sabbia è dappertutto. Continua a muoverti, o mi si poserà addosso per sempre.",
		"Se mi fermo, la polvere comincerà a coprirmi. Ha pazienza, lei.",
	},
	["dur.lowhp.w16.hold.008"] = {
		"Macchie negli occhi, caldo nella testa. Non svenire qui: in Durotar nessuno sviene con grazia.",
		"Il mondo si tinge di rosso ai bordi, e non sono solo le rocce.",
	},
	["dur.lowhp.w16.hold.009"] = {
		"Colpi presi, sì. Partita persa, no. Qui conta solo la differenza.",
		"Le botte non sono una sconfitta. Durotar lo sa, e lo so anch'io.",
		"Colpi addosso, ma ancora su. Questo paese rispetta almeno questo.",
	},
	["dur.lowhp.w16.hold.010"] = {
		"Ammaccature, polvere e rabbia. Due di queste sono colpa tua.",
		"Polvere, lividi e un caldo da cuocerci dentro. Tu sei il problema minore.",
		"Non sei nemmeno la cosa peggiore che mi sia capitata con questo caldo.",
	},
	["dur.lowhp.w16.hold.011"] = {
		"Qualcuno avvisi Razor Hill che potrei fare tardi.",
		"Se finisce male, dite a Razor Hill che è stato il caldo.",
	},
	["dur.lowhp.w16.hold.012"] = {
		"Durotar mi vuole a terra. Può continuare a volerlo.",
		"La terra rossa allunga le mani su di me. Dovrà allungarle di più.",
		"Il suolo dovrà portare pazienza. Di solito ne ha.",
	},
	["dur.lowhp.w16.hold.013"] = {
		"Colpisci ancora. Ho la stessa scorza di queste rocce.",
		"Le rocce di qui non si spaccano al primo colpo. Nemmeno io.",
	},
	["dur.lowhp.w16.hold.014"] = {
		"In Durotar si finisce quello che si comincia. Ed è ciò che farò.",
		"Questo scontro è cominciato nella polvere. Finirà con me in piedi.",
		"Chiudila. È l'unica regola che Durotar rispetta.",
	},
	["dur.lowhp.w16.hold.015"] = {
		"Dite agli avvoltoi di aspettare. Sono in anticipo.",
		"Continuino pure a girare, gli avvoltoi. La cena non sono io.",
	},
	["dur.lowhp.w16.hold.016"] = {
		"Non mi avrà, questa terra. Non per mano tua.",
		"Cadrò in un posto migliore di questo, e più tardi di così.",
	},
	["dur.lowhp.w16.hold.017"] = {
		"barcolla, poi appoggia una mano sulla pietra rossa e tiepida e si tira su.",
		"si accascia contro una roccia, poi se ne stacca con una spinta e torna nello scontro.",
		"si appoggia a un masso, raccoglie quel che resta delle forze, e riparte.",
	},
	["dur.lowhp.w16.hold.018"] = {
		"inciampa nella ghiaia smossa, ritrova l'appoggio all'ultimo momento, e non va giù.",
		"slitta sulla ghiaia rossa, un ginocchio quasi a terra, e si rialza.",
	},
	["dur.lowhp.w16.hold.019"] = {
		"sbatte le palpebre per scacciare il velo rosso dagli occhi e si rimette in guardia.",
		"si scrolla di dosso capogiro e polvere insieme, la mascella serrata.",
	},
	["dur.muse.w16.coast.001"] = {
		"Le Echo Isles stanno basse sull'acqua, al largo della costa meridionale, verdi e vicine. Troppo vicine, per un posto dove i troll non possono tornare.",
		"Verde oltre lo stretto: le Echo Isles. L'unico verde per miglia, e a Sen'jin nessuno lo guarda volentieri a lungo.",
		"Le Echo Isles, appena al largo, portano l'unico vero verde in vista. Nessuno da Sen'jin ci va a nuoto a godersele.",
	},
	["dur.muse.w16.coast.002"] = {
		"A Sen'jin dicono che uno stregone di nome Zalazane tenga le isole, e che i troll rimasti laggiù non siano più loro.",
		"Zalazane. I troll di Sen'jin pronunciano quel nome come si nomina una febbre che non è ancora passata.",
		"Uno stregone si è rivoltato contro i suoi e si è tenuto le isole, così si racconta sulla costa. I Darkspear non l'hanno dimenticato.",
	},
	["dur.muse.w16.coast.003"] = {
		"tira fuori da una crepa nella roccia rossa una piccola conchiglia bianca, lontano da qualsiasi spiaggia, e se la rigira fra le dita.",
		"nota una conchiglia incastonata nella faccia di un masso, la pietra cresciuta intorno come se un tempo il mare arrivasse fin qui.",
		"spolvera un ciottolo striato di minuscole conchiglie fossili, la calligrafia del mare nella pietra rossa.",
	},
	["dur.muse.w16.coast.004"] = {
		"Tiragarde Keep è quel che resta della guerra dell'ammiraglio su questa costa: qualche muro, qualche soldato di marina, e ordini che nessuno è tornato a revocare.",
		"I soldati di Kul Tiras tengono ancora la loro rocca su una riva che non sarà mai loro. Quasi li ammiro. Quasi.",
		"Oltre il mare, in qualche registro di Kul Tiras, Tiragarde risulta ancora una guarnigione. La guarnigione avrebbe qualcosa da ridire.",
	},
	["dur.muse.w16.coast.005"] = {
		"Il fiume Southfury corre lungo tutto il confine occidentale di Durotar, bruno e svelto. I coccodrilli lo usano come una strada e non pagano pedaggio.",
		"Un fiume da una parte, il mare dall'altra, e la roccia rossa stretta in mezzo. Durotar volge le spalle all'acqua due volte.",
		"Acqua su entrambi i fianchi e nemmeno una goccia nel mezzo. Questa terra ha un'idea strana di dove tenere le cose.",
	},
	["dur.muse.w16.coast.006"] = {
		"I makrura sulla riva ti ticchettano contro come se mercanteggiassero, e sul prezzo non cedono mai.",
		"Uomini-granchio con le lance lungo tutte le spiagge. Questa costa ha dei vicini strani.",
		"Se i makrura imparano a costruire barche, la costa è nei guai.",
	},
	["dur.muse.w16.coast.007"] = {
		"La strada che da Razor Hill scende a Sen'jin tiene il mare sulla sinistra per tutto il tragitto. Sale da un lato, polvere dall'altro.",
		"Fra Razor Hill e Sen'jin la strada costeggia il mare, e alla fine chiunque la percorra sa un po' di pesce.",
		"La strada dei pescatori, la chiamano le guardie, quella che scende a Sen'jin: le ceste vanno giù vuote e tornano su piene.",
	},
	["dur.muse.w16.coast.008"] = {
		"L'acqua al largo di questa costa cambia con la profondità: verde chiaro sopra la sabbia, quasi nera dove la roccia sprofonda.",
		"Visto dalle scogliere, il mare di Durotar è striato come il dorso di una lucertola: verde, scuro, e verde.",
		"Sotto le scogliere l'acqua è così profonda e limpida che una caduta, lì dentro, sembrerebbe durare a lungo.",
	},
	["dur.muse.w16.coast.009"] = {
		"guarda un uccello marino scivolare alto sopra il paese rosso, diretto alla costa senza muovere le ali una sola volta.",
		"segue con gli occhi un uccello marino bianco che arriva da est, così addentro nell'entroterra che sembra smarrito contro il rosso.",
		"segue la deriva pigra di un gabbiano verso la costa, finché non è che un puntino bianco nel cielo.",
	},
	["dur.muse.w16.coast.010"] = {
		"Le guardie dicono che quando una vela compare all'orizzonte, ogni vedetta della costa tace finché non vira.",
		"Una vela al largo di Durotar non è mai solo una vela, dicono i veterani sulle mura. È una domanda, finché non cambia rotta.",
		"Le vedette lungo la costa tengono sempre un occhio sul mare. Gliel'ha insegnato Kul Tiras.",
	},
	["dur.muse.w16.coast.011"] = {
		"Il mare è l'unica cosa di Durotar più grande della polvere. Fa piacere sapere che qualcosa lo è.",
		"Qualunque cosa manchi a questa terra, ha una costa, e la costa ha un orizzonte. È più spazio di quanto ne diano molti posti.",
	},
	["dur.muse.w16.coast.012"] = {
		"I Darkspear sono un popolo di isole, e vivono su una striscia di riva di fronte a quelle che hanno perduto. Una vista dura da sopportare.",
		"Sen'jin guarda il mare. Certo che lo guarda. Si costruisce rivolti verso ciò a cui si vuole tornare.",
		"Le capanne di Sen'jin sono leggere, di quelle che si smontano in fretta. O che si riportano oltre uno stretto.",
	},
	["dur.muse.w16.coast.013"] = {
		"Mare lungo tutto un lato di Durotar, e nemmeno un sorso che valga la pena bere.",
		"Tutta quell'acqua a est, e io a razionare l'otre. Durotar ha un senso dell'umorismo crudele.",
		"Acqua salata da una parte, polvere rossa dall'altra, e il mio otre nel mezzo, che perde.",
	},
	["dur.muse.w16.coast.014"] = {
		"coglie un debole odore di sale e di pesce messo a seccare, arrivato da est, e si volta un momento in quella direzione.",
		"alza la testa a uno sbuffo di mare, giunto da est oltre le colline rosse.",
	},
	["dur.muse.w16.coast.015"] = {
		"Ogni troll di Sen'jin sa esattamente dove guardare quando si parla di casa. Anch'io. A sud, oltre l'acqua.",
		"Le isole sono così vicine che potrei nominarne ogni spiaggia. Così vicine da far male. Non abbastanza da tornarci, per ora.",
		"Nei giorni buoni sento l'odore delle isole. Sale, fronde bagnate, fumo. Poi la polvere se lo riprende.",
	},
	["dur.muse.w16.dust.001"] = {
		"Le crepe di questo suolo vanno in ogni direzione, come un piatto caduto che nessuno ha mai spazzato via.",
		"Canaloni asciutti dappertutto, e nessuno che ricordi più a cosa servisse l'acqua.",
		"Questa terra si è spaccata e rispaccata finché non sembra più cuoio vecchio che suolo.",
	},
	["dur.muse.w16.dust.002"] = {
		"batte una nocca contro una lastra di pietra rossa; risuona appena, cava come una giara d'argilla.",
		"raccoglie una scaglia di roccia rossa dal sentiero e la spezza in due, lungo una venatura più vecchia di qualsiasi strada.",
		"posa il palmo su un masso rosso e sente il calore custodito in fondo alla pietra.",
	},
	["dur.muse.w16.dust.003"] = {
		"Prima regola di Durotar: non appoggiarti a niente di verde.",
		"I cactus di qui hanno più spine che giudizio, e più pazienza di me.",
		"Qui le piante fanno spine anziché fronde. Sensato, se non vuoi mai un abbraccio.",
	},
	["dur.muse.w16.dust.004"] = {
		"Certi pendii sono striati di bianco, come il sale lasciato da un'acqua che si è arresa tanto tempo fa.",
		"Croste pallide nelle conche più basse. Un tempo qui c'era acqua, abbastanza a lungo da lasciarsi dietro il suo fantasma.",
		"Anelli bianchi sulle rocce delle conche, come le macchie che lascia una tazza sul tavolo. Qualcosa ha bevuto qui, molto prima che arrivasse chiunque.",
	},
	["dur.muse.w16.dust.005"] = {
		"Qui fuori scricchiola tutto quello che porto: cinghie, stivali, lo zaino stesso. Durotar secca qualunque cosa ti porti dietro.",
		"L'equipaggiamento si è irrigidito di polvere. Bisogna ingrassare il cuoio presto, o comincia a creparsi.",
		"Quest'aria entra nel cuoio come nel legno. Una cinghia, qui, dura la metà che altrove.",
	},
	["dur.muse.w16.dust.006"] = {
		"nota come il rosso delle rocce cambi a ogni curva del sentiero: mattone, poi ruggine, poi quasi viola nelle conche.",
		"abbraccia con lo sguardo le creste, ognuna di un rosso appena diverso, come se la terra fosse stata tinta a più riprese.",
		"socchiude gli occhi verso le rupi lontane, dove a questa distanza la pietra rossa pare quasi morbida, come stoffa ripiegata.",
	},
	["dur.muse.w16.dust.007"] = {
		"Fichi d'India rossi e gonfi fra le spine. L'unica cosa dolce per miglia, e te la devi guadagnare.",
		"Qualcuno ha raccolto i fichi d'India lungo questo tratto, con ordine, lasciando i piccoli a maturare.",
		"Un fico d'India sa di acqua tiepida e di un filo di polvere. Qui fuori vale un banchetto.",
	},
	["dur.muse.w16.dust.008"] = {
		"Prendi a calci questa polvere e resta lì sospesa. A Durotar niente ha fretta di posarsi.",
		"Fine come farina, questa polvere. Passa da ogni cucitura che hai.",
		"Batti un piede e mezzo sentiero si alza con lui. L'altra metà aspetta il suo turno.",
	},
	["dur.muse.w16.dust.009"] = {
		"Lungo le creste si alzano dita di roccia consumate. Sentinelle a cui nessuno è mai tornato a dare il cambio.",
		"Certe colonne di pietra pendono tanto che mi aspetto di vederle cadere. Loro aspettano da più tempo di me.",
		"Pinnacoli di roccia, stretti al piede e larghi in cima. Durotar costruisce cose che non dovrebbero reggersi, e si reggono.",
	},
	["dur.muse.w16.dust.010"] = {
		"si volta a guardare il sentiero; le impronte si stanno già sfumando ai bordi, riempite granello dopo granello.",
		"studia un'impronta nella polvere, ogni cucitura di una suola conservata alla perfezione, finché qualcos'altro non ci cammina sopra.",
		"cancella un'impronta col tallone e guarda la polvere rossa lisciarsi da sola, come se nessuno fosse passato.",
	},
	["dur.muse.w16.dust.011"] = {
		"Sulle piane ci sono tratti così silenziosi che sento la sabbia scricchiolare a ogni passo.",
		"Niente uccelli canori, niente acqua, niente voci. Solo il ticchettio di un sassolino che si stacca chissà dove.",
		"Questa terra non è rumorosa. Solo, non smette mai del tutto di fare piccoli rumori secchi.",
	},
	["dur.muse.w16.dust.012"] = {
		"L'aria sulle piane tremola come un lago. L'unico lago di Durotar, e nessuno ci può bere.",
		"Il caldo sale dalle rocce a ondate, finché la cresta lontana vacilla. A quella distanza non ci si può fidare di niente.",
		"Le rocce lontane nuotano nel caldo. Se laggiù qualcosa mi viene incontro, non lo saprò finché non sarà vicino.",
	},
	["dur.muse.w16.dust.013"] = {
		"Ho trovato un po' d'ombra. È grande quanto un piatto, ed è mia.",
		"Un solo pezzetto d'ombra su tutta la cresta, e una lucertola è arrivata prima.",
		"Mi sposterei, ma questo riparo mi va a pennello e ci sono {g:affezionato|affezionata}.",
	},
	["dur.muse.w16.dust.014"] = {
		"spezza un ramoscello morto da un cespuglio spinoso; si rompe con lo schiocco di una nocca, secco fino al cuore.",
		"raccoglie una manciata di sterpi morti, già abbastanza secchi da ardere: qui fuori ogni cosa è legna che aspetta.",
		"stacca una spina da un cespuglio secco e ne saggia la punta sul pollice: aguzza come la lesina di un calzolaio.",
	},
	["dur.muse.w16.dust.015"] = {
		"Giù nei canyon le pareti si stringono e il cielo si riduce a una striscia. Sulle creste è tutto cielo, e nessun posto dove nascondersi.",
		"Cresta, canyon, e di nuovo cresta. Questa terra continua a ripiegarsi su sé stessa, come se avesse qualcosa da mettere al riparo.",
		"I sentieri qui scendono in un canyon e risalgono su una cresta, giù e su, finché le ginocchia non cominciano a tenere il conto.",
	},
	["dur.muse.w16.dust.016"] = {
		"si toglie con una nocca la sabbia rossa dagli angoli degli occhi e sbatte le palpebre finché il paesaggio non torna a fuoco.",
		"si strofina gli occhi pieni di sabbia, e la polvere rossa non fa che entrare più a fondo.",
		"sbatte forte le palpebre contro la sabbia finché le colline rosse smettono di ondeggiare.",
	},
	["dur.muse.w16.dust.017"] = {
		"stappa l'otre, beve con parsimonia e lo richiude in fretta, prima che ci entri la polvere.",
		"si concede un solo sorso d'acqua e rimette via l'otre, come dopo una trattativa.",
		"scuote l'otre accanto all'orecchio per capire quanto ne resta, e aggrotta la fronte alla risposta.",
	},
	["dur.muse.w16.folk.001"] = {
		"C'è sempre un peone che spacca legna, piano piano, e un caposquadra che gli urla di sbrigarsi.",
		"I peoni trasportano, spaccano, sonnecchiano dietro la catasta quando nessuno guarda. E Durotar è stata costruita lo stesso.",
		"Metà delle mura di questo paese sono salite grazie al lavoro dei peoni e ai loro pisolini, più o meno in parti uguali.",
	},
	["dur.muse.w16.folk.002"] = {
		"I soldati sulle torri di guardia stanno così immobili che li scambieresti per parte del legname. Poi uno sputa oltre il parapetto, e tornano persone.",
		"Una vedetta su ogni torre lungo la strada, e ognuna fissa un tratto diverso di niente. Qui niente resta a lungo senza sorveglianza.",
		"Le torri lungo la strada non restano mai sguarnite. C'è sempre un soldato che fissa l'orizzonte, perché gli altri possano fissare la loro ciotola.",
	},
	["dur.muse.w16.folk.003"] = {
		"I cavalieri dei lupi percorrono queste strade sempre di corsa. La polvere ci mette un'ora a perdonarli.",
		"Ai cavalieri dei lupi si cede sempre il passo. Non rallentano, e nessuno se lo aspetta.",
		"Su queste strade i lupi hanno la precedenza. Nessuno l'ha votato. Non ce n'era bisogno.",
	},
	["dur.muse.w16.folk.004"] = {
		"Le torri degli zeppelin fuori da Orgrimmar scricchiolano come vecchie navi in porto. I goblin ci giurano sopra, e ci imprecano contro.",
		"Un pallone goblin legato a una torre di rottami e corde, e la gente fa la fila per attraversarci il mare. Durotar ha i suoi coraggiosi.",
		"Ogni tanto uno zeppelin arriva sopra le creste, gemendo come un kodo stanco, e mezza strada si ferma a guardarlo attraccare.",
	},
	["dur.muse.w16.folk.005"] = {
		"lancia un'occhiata a una torre di guardia lontana, dove una vedetta alza una mano e la lascia ricadere.",
		"alza una mano verso la torre di guardia più vicina; lassù, sulla piattaforma, una figura risponde battendo l'asta della lancia contro il parapetto.",
		"alza una mano verso una torre di guardia sulla cresta e riceve, dopo un lungo istante, un solo cenno lento in risposta.",
	},
	["dur.muse.w16.folk.006"] = {
		"Orchi e troll che dividono lo stesso paese rosso. Ti aspetteresti più chiasso. Poi passi da Sen'jin in un giorno di festa, e il chiasso c'è.",
		"Un orco brontola, un troll ride, e in qualche modo finiscono lo stesso muro. Qui l'accordo è tutto lì.",
		"Battute di troll e silenzi di orchi. Questo paese va avanti con entrambi, e si bilanciano meglio di quanto si creda.",
	},
	["dur.muse.w16.folk.007"] = {
		"Durotar va avanti a cinghiale: carne per la pentola, pelle per le tende, zanne per la palizzata. Non si spreca niente, tranne l'odore.",
		"Stufato di cinghiale, carne secca di cinghiale, stivali di pelle di cinghiale. Qui il cinghiale fa quasi tutto il lavoro, e nessuno lo ringrazia.",
		"Ogni villaggio di orchi sa di cinghiale, fumo e cuoio. È l'odore delle cose che si fanno.",
	},
	["dur.muse.w16.folk.008"] = {
		"Reietti scesi dagli zeppelin, tauren saliti dalle pianure, goblin dappertutto. Le strade di Durotar vedono di tutto.",
		"Tauren, troll, qualche Reietto pallido che scende strascicando dalla torre degli zeppelin. Orgrimmar li attira tutti, e tutti passano per questa polvere.",
		"Chiunque sia diretto agli zeppelin attraversa Durotar con la stessa faccia: metà fretta, metà polvere.",
	},
	["dur.muse.w16.folk.009"] = {
		"si ferma mentre un debole rullo di tamburo arriva da lontano oltre le creste, tiene il tempo per un po', poi tace.",
		"piega la testa al tonfo lontano dei tamburi, troppo distanti per capire se annuncino lavoro, festa o allarme.",
		"resta in ascolto, la testa inclinata, al battere lontano di un tamburo, poi allunga un po' il passo, come davanti a un richiamo.",
	},
	["dur.muse.w16.folk.010"] = {
		"Le guardie di Razor Hill non guardano te ma la strada dietro di te, come se i guai arrivassero sempre dalla direzione da cui vieni.",
		"Nessuna guardia di Durotar ti guarda davvero negli occhi. Guardano oltre la tua spalla, dove di solito stanno i guai.",
		"Qui le guardie ti valutano prima dagli stivali. Gli stivali dicono quanta strada hai fatto, e in quanti guai hai camminato.",
	},
	["dur.muse.w16.folk.011"] = {
		"Laggiù nella Valley of Trials, in questo momento, qualcuno si sta facendo stendere da un cinghiale. Buon per lui.",
		"La Valley of Trials sforna una nuova infornata a ogni stagione, piena di lividi e d'orgoglio. A Durotar non mancano mai né gli uni né l'altro.",
	},
	["dur.muse.w16.folk.012"] = {
		"I cacciatori Darkspear attraversano la sterpaglia senza un rumore. Agli orchi la cosa non piace: gli amici preferiscono sentirli arrivare.",
		"Un troll attraversa un pendio di pietra rossa smossa senza spostare un sassolino. Un orco lo attraversa e lo sa tutto il pendio.",
		"Darkspear e orchi dividono la strada come due vecchi soldati dividono una panca: poche parole, molta intesa.",
	},
	["dur.muse.w16.folk.013"] = {
		"ricambia il cenno asciutto di un soldato di passaggio, che non rallenta né si volta.",
		"si scansa per far passare un troll con una cesta di pesce in spalla, che passando sfodera un sorriso pieno di zanne.",
		"fa un cenno a un peone che arranca sotto un carico di pelli, e in cambio riceve un grugnito stanco.",
	},
	["dur.muse.w16.folk.014"] = {
		"Sulla strada del nord passano di continuo dei messaggeri diretti a Orgrimmar. Nessuno li ferma per chiedere che notizie portino.",
		"I messaggi salgono a Orgrimmar più in fretta di qualsiasi carro. Qui le notizie viaggiano a piedi, e di corsa.",
		"C'è sempre qualcuno che corre verso Orgrimmar con qualcosa di importante. Nessuno sembra mai correre nell'altra direzione.",
	},
	["dur.muse.w16.folk.015"] = {
		"Orco, troll, tauren, Reietto: le porte di Durotar non chiedono quale. Vale più di qualsiasi campo verde.",
		"Chiunque tu sia, nell'Orda, a Durotar c'è un fuoco a cui sederti senza che nessuno ti chieda cosa fai qui.",
		"La capitale dell'Orda sorge da questa polvere rossa, e ognuno dei suoi popoli può entrarci. Pochi posti sono così semplici.",
	},
	["dur.muse.w16.folk.016"] = {
		"coglie l'odore di cinghiale arrosto da qualche accampamento oltre la cresta, e il sentiero sembra un po' più corto.",
		"si volta verso un filo di fumo che sale oltre le rocce, dove qualcuno sta cucinando un cinghiale per cena.",
	},
	["dur.muse.w16.history.001"] = {
		"I campi d'internamento sono una storia che ogni orco di qui sa raccontare, e nessuno la racconta allo stesso modo. Finiscono tutte su questa costa.",
		"Chiedi a un orco di Durotar dei campi, e ogni volta avrai una storia diversa, ma lo stesso silenzio dopo.",
	},
	["dur.muse.w16.history.002"] = {
		"Orgrimmar porta il nome di Doomhammer, Durotar quello di Durotan. Tutto questo paese è un appello di morti che qualcuno ha voluto conservare.",
		"Qui i nomi sono monumenti. Una città per un capoguerra caduto, una terra per un capo caduto. Ai vivi resta il lavoro.",
		"Durotan, Doomhammer: i nomi dei morti su ogni mappa di questo paese. Ai vivi non sembra pesare portarli.",
	},
	["dur.muse.w16.history.003"] = {
		"Tutto quello che sta in piedi qui è stato alzato nel giro di una vita: mura, torri, strade. Un paese giovane che indossa roccia vecchissima.",
		"Non c'è muro a Durotar più vecchio di chi l'ha costruito. La pietra sotto è più vecchia di qualunque racconto.",
		"Legname nuovo, mura nuove, strade nuove, tutto posato su una roccia infinitamente più vecchia.",
	},
	["dur.muse.w16.history.004"] = {
		"I Darkspear sono venuti qui perché Thrall ha offerto loro un posto. L'hanno preso, e hanno tenuto il loro villaggio un po' in disparte. Pare che a tutti stia bene così.",
		"I troll di Vol'jin hanno un debito con Thrall e lo pagano a modo loro: leali, vicini, e mai del tutto sotto lo stesso tetto.",
		"Sen'jin e Razor Hill commerciano, combattono fianco a fianco e litigano sul pesce. Una buona alleanza somiglia molto a questo.",
	},
	["dur.muse.w16.history.005"] = {
		"I cultisti della Burning Blade sono una vecchia malattia mai guarita del tutto: orchi che rivogliono i demoni. Durotar tiene una mano sull'arma anche dentro le sue mura.",
		"Prima o poi ogni grotta vicino a Orgrimmar viene perquisita. Non per le bestie. Per le candele, le cantilene, e la Burning Blade.",
	},
	["dur.muse.w16.history.006"] = {
		"Gli anziani parlano del torpore nei campi, e della sete bruciante che venne prima. Qui nessuno ha più quella sete. Solo sete d'acqua.",
		"Prima il fuoco dei demoni, poi la lunga malattia grigia, dicono gli anziani. Durotar è ciò che è venuto dopo: arida, dura, e lucida.",
		"I vecchi parlano poco degli anni brutti. Quando lo fanno, guardano a lungo la terra rossa, poi tornano al lavoro.",
	},
	["dur.muse.w16.history.007"] = {
		"Thrall governa da Orgrimmar, eppure la sua parola arriva in ogni angolo di questo paese rosso prima di qualsiasi cavaliere.",
		"Anche sulla cresta più lontana senti qualcuno citare il Capoguerra. La voce di Thrall arriva più in là delle sue mura.",
		"Qui il nome del Capoguerra si pronuncia semplicemente, senza inchini, e in qualche modo suona più leale di qualsiasi inchino.",
	},
	["dur.muse.w16.history.008"] = {
		"Si racconta che Thrall avrebbe potuto scegliere terre più verdi, e invece prese questa. Nessuno è d'accordo se fosse orgoglio o saggezza.",
		"A Razor Hill qualcuno dice che questa terra fu scelta perché nessun altro la voleva, e quindi nessuno sarebbe venuto a prendersela. Altri dicono che la saggezza è proprio questa.",
	},
	["dur.muse.w16.history.009"] = {
		"I tauren di Cairne aiutarono gli orchi appena sbarcati su Kalimdor. Quel debito si vede da come i tauren percorrono tranquilli queste strade.",
		"Thrall e Cairne hanno stretto su questo continente un'amicizia che regge ancora. Ogni tauren di Durotar ne è una piccola prova.",
		"I tauren sulle strade di Durotar camminano come ospiti invitati, e lo sono.",
	},
	["dur.muse.w16.history.010"] = {
		"Ogni trave delle torri di guardia di Durotar è stata trascinata qui dalle foreste del nord. Questa terra ha pietra in abbondanza e nemmeno un albero che valga la pena tagliare.",
		"Qui non cresce legname degno di questo nome. Ogni palo di ogni palizzata è stato una lunga e pesante camminata prima di diventare un muro.",
		"Le palizzate di Durotar sono una mappa della provenienza del legno: ogni tronco, un lungo trasporto da terre più verdi.",
	},
	["dur.muse.w16.history.011"] = {
		"Chiedi a una guardia di Razor Hill e ti dirà che era un accampamento quando Orgrimmar non era ancora una città. E costruisce ancora come se un attacco fosse atteso entro la settimana.",
		"Le prime palizzate furono alzate in fretta, e Razor Hill ne ha conservato l'abitudine. Prima si appuntisce, e decorare mai.",
	},
	["dur.muse.w16.history.012"] = {
		"si ferma accanto a un tumulo di pietre rosse al bordo del sentiero, ogni pietra posata da una mano diversa, e lo lascia com'è.",
		"sosta accanto a un mucchietto di pietre impilate lungo il sentiero; qualcuno ci ha incastrato in cima una zanna di cinghiale, sbiancata quasi del tutto.",
		"posa per un attimo la mano su un tumulo di pietre alto fino alla vita, liscio in cima dove molte mani hanno fatto lo stesso.",
	},
	["dur.muse.w16.history.013"] = {
		"passa il pollice su un palo segnavia intagliato a tacche lungo il sentiero, i segni consumati e ammorbiditi dalla sabbia.",
		"decifra i graffi su un segnavia, segni orcheschi incisi a fondo e riempiti di polvere rossa.",
		"si sofferma accanto a un palo consunto, intagliato con segni orcheschi: una mano che indica a nord, verso la città.",
	},
	["dur.muse.w16.history.014"] = {
		"Terra libera, rossa com'è. I campi ormai sono una storia, e intendo che restino tali.",
		"Nessun recinto se non quelli alzati da noi, nessun carceriere davanti a cui chinarsi. Questo paese arido è il posto più libero che conosca.",
	},
	["dur.muse.w16.history.015"] = {
		"Thrall li portò oltre il mare fino a questa costa, si racconta, con il vecchio mondo alle spalle e nessuna promessa davanti. In qualche modo, ne è nato un paese.",
		"Gli orchi arrivarono su Kalimdor per nave, con poco più di quello che riuscivano a portare. Il resto di Durotar l'hanno fatto con le loro mani.",
		"Le navi che portarono qui gli orchi non ci sono più da tempo. È rimasta l'abitudine di guardare il mare, ogni tanto.",
	},
	["dur.muse.w16.history.016"] = {
		"guarda a nord, verso il canyon dove si nasconde Orgrimmar, tradita solo da una macchia di fumo di forgia sopra le creste.",
		"si volta verso settentrione, dove un velo di fumo sopra le rocce è tutto ciò che si vede della città nel canyon.",
		"lancia un'occhiata alla lunga strada del nord, che si stringe e sale verso le pareti del canyon che nascondono Orgrimmar.",
	},
	["dur.muse.w16.wild.001"] = {
		"segue con lo sguardo i giri lenti di un avvoltoio lassù; sembra avere dei progetti che riguardano qualcuno.",
		"alza gli occhi verso due avvoltoi che disegnano cerchi pigri sopra la cresta, pazienti come esattori.",
		"nota un avvoltoio che si posa su un ramo secco poco lontano e si ripiega come un mantello logoro, ad aspettare.",
	},
	["dur.muse.w16.wild.002"] = {
		"I cinghiali chiazzati frugano attorno ai cactus in cerca di frutti caduti. Persino i cinghiali, qui, hanno imparato a mangiare evitando le spine.",
		"Un cinghiale col grugno pieno di spine di cactus e nessun rimpianto. Durotar li alleva testardi.",
		"I cinghiali di qui sono magri, cattivi e impolverati. Chiunque lo sarebbe, a vivere di cactus.",
	},
	["dur.muse.w16.wild.003"] = {
		"Le guardie dicono che uno scorpione con la coda alzata è solo curioso. È quello con la coda bassa che deve preoccuparti.",
		"Secondo le guardie, uno scorpione che alza la coda è curioso, e uno che la abbassa è occupato. Preferirei non incontrare nessuno dei due.",
	},
	["dur.muse.w16.wild.004"] = {
		"Lucertole su ogni roccia tiepida, piatte come guanti caduti. Non si muovono finché non sei a un passo di troppo.",
		"Vedi quella roccia? È una lucertola. Anche quella. Forse tutte.",
		"Ogni lucertola di qui fa lo stesso: s'immobilizza, ti fissa, poi sparisce appena distogli lo sguardo.",
	},
	["dur.muse.w16.wild.005"] = {
		"Sulle Echo Isles corrono i raptor, dicono i pescatori di Sen'jin, magri come pali e più svelti delle voci.",
		"Anche le bestie delle isole si sono inselvatichite dopo che i troll se ne sono andati, si dice a Sen'jin: raptor fra gli arbusti, e di peggio fra le capanne.",
	},
	["dur.muse.w16.wild.006"] = {
		"legge le tracce che attraversano il sentiero: lo zoccolo diviso di un cinghiale, il solco della pancia di una lucertola, e qualcosa con decisamente troppe zampe.",
		"si accovaccia su un incrocio di orme nella polvere, cinghiale, lucertola e scorpione, tutte dirette da qualche parte, e di fretta.",
		"s'inginocchia accanto a un tratto di polvere smossa, dove qualcosa di piccolo ha perso una discussione con qualcosa di più grosso.",
	},
	["dur.muse.w16.wild.007"] = {
		"Un coccodrillo può restare nelle secche del Southfury così immobile che gli uccelli ci si posano sopra. Poi gli uccelli imparano qualcosa.",
		"I coccodrilli del Southfury sembrano legni portati dalla corrente, finché il legno non apre la bocca.",
	},
	["dur.muse.w16.wild.008"] = {
		"Le tigri di Durotar cacciano quando la luce se ne va. A volte un paio d'occhi compare al limite della vista, poi non più.",
		"Il buio, qui, appartiene ai felini striati. Meglio restare allo scoperto, dove niente può arrivarti addosso dagli arbusti senza farsi vedere.",
	},
	["dur.muse.w16.wild.009"] = {
		"A Durotar tutto punge, morde, o finge di essere una roccia. I più furbi fanno tutte e tre le cose.",
		"Se si muove, morde. Se non si muove, dagli un attimo.",
		"Qui la fauna è di due tipi: quella che punge, e quella che aspetta che la prima abbia finito.",
	},
	["dur.muse.w16.wild.010"] = {
		"Le arpie fanno il nido nelle forre del nord. Da lontano potrebbero passare per avvoltoi. Da vicino ti strillano in faccia.",
		"Avvoltoi e arpie si dividono il cielo sopra le forre del nord. Gli avvoltoi, almeno, aspettano che tu cada da solo.",
	},
	["dur.muse.w16.wild.011"] = {
		"guarda uno scarabeo spingere una pallina di sterco su per un pendio, perderla, e ricominciare con grande dignità.",
		"scavalca con cura uno scarabeo che trascina il suo tesoro attraverso il sentiero, senza fretta e sicurissimo di sé.",
		"concede a uno scarabeo il tempo di finire la traversata del sentiero, compiuta con enorme serietà.",
	},
	["dur.muse.w16.wild.012"] = {
		"Le grosse lucertole delle creste del nord hanno una carica nella pelle; l'aria attorno a un branco sa di incudine appena battuta.",
		"Sulle creste del nord le grandi lucertole brucano gli sterpi e crepitano quando si muovono, come un fuoco che non prende mai del tutto.",
	},
	["dur.muse.w16.wild.013"] = {
		"I granchi sulle spiagge camminano tutti di lato, come se la riva fosse inclinata e solo loro se ne accorgessero.",
		"Giù sulla riva tutto ciò che ha un guscio cammina storto. Niente lì ti viene incontro dritto, il che è quasi educato.",
		"Granchi, makrura, e tutto quello che porta la marea: la riva ha più chele per passo di qualunque altro posto di Durotar.",
	},
	["dur.muse.w16.wild.014"] = {
		"Qui niente spreca l'acqua. Le lucertole se la procurano da ciò che mangiano, e il cactus tiene la sua dietro una staccionata di spine.",
		"Ogni essere vivente di Durotar è un piccolo avaro d'acqua, e il cactus è il più ricco di tutti.",
		"In questa terra perfino le piante accumulano: il cactus fa scorta d'acqua e la sorveglia come un goblin il suo oro.",
	},
	["dur.muse.w16.wild.015"] = {
		"Le lucertole sono uscite tutte sulla roccia scoperta a bere nelle conche. Qui la pioggia è un avvenimento, anche per loro.",
		"Scorpioni, cinghiali, lucertole: tutti quelli in vista si sono fermati sotto la pioggia. Le bestie di Durotar riconoscono una cosa rara quando gli cade addosso.",
	},
	["dur.muse.w16.wild.016"] = {
		"scrolla via con un colpetto un piccolo scorpione indignato dalla punta dello stivale; quello atterra, si ricompone e torna alla carica.",
		"scosta con il bordo dello stivale uno scorpioncino, che alza la coda contro lo stivale come se avesse cominciato lui.",
		"guarda uno scorpione infilarsi a ritroso in una crepa, la coda per ultima, tenendo per sé le sue opinioni.",
	},
	["dur.muse.w16.wild.017"] = {
		"si ferma a guardare una fila di formiche trasportare attraverso il sentiero la zampa di uno scorpione morto, come una trave.",
		"scavalca una fila di formiche che trascina un frammento di guscio di scorpione: un'intera squadra sotto un solo carico.",
		"segue una fila di formiche fino a un guscio spaccato e ripulito, poi prende tranquillamente un'altra strada.",
	},
	["dur.muse.w16.wry.001"] = {
		"Ho cominciato a dare i voti alle rocce, a seconda di quanto sono comode per sedersi. Questa prende un quattro. Durotar è severa.",
		"La miglior roccia per sedersi finora: piatta, niente scorpioni, solo un po' rovente. Ho avuto sedie peggiori.",
		"Ci sarà pure una roccia comoda in Durotar. La ricerca continua, fondoschiena dolorante compreso.",
	},
	["dur.muse.w16.wry.002"] = {
		"Se Durotar avesse un motto, sarebbe «Guarda dove metti i piedi». O soltanto «Ahi».",
		"Il motto di Durotar, se ne avesse uno: tutto morde. Secondo motto: soprattutto quello.",
	},
	["dur.muse.w16.wry.003"] = {
		"Il cactus, lo scorpione e la guardia hanno tutti la stessa espressione. Credo sia la faccia del posto.",
		"Spine sulle piante, punte sulle mura, pungiglioni sulle bestie. Questa terra ha un tema, e non lo molla.",
		"Perfino gli scorpioni, qui, ti guardano come le guardie: chi ti manda, e perché.",
	},
	["dur.muse.w16.wry.004"] = {
		"Chi ha detto che le strade di Durotar sono piane non le ha mai percorse. Né ci ha mai portato un carico.",
		"Ancora una cresta, dicono tutti. A Durotar c'è sempre ancora una cresta. Secondo me qualcuno le sposta quando nessuno guarda.",
	},
	["dur.muse.w16.wry.005"] = {
		"Posto incantevole per un picnic, se ti piace il pane con la sabbia e la compagnia col pungiglione.",
		"Proporrei di mangiare all'aperto, ma il primo morso se lo prende sempre la polvere.",
		"Cena all'aperto: una parte di cibo, due di polvere, e un pizzico di scorpione per insaporire, se sei sfortunato.",
	},
	["dur.muse.w16.wry.006"] = {
		"In questa terra ci sono due colori: il rosso, e quello che avevi addosso arrivando, che ormai è rosso anche lui.",
		"Avevo addosso del marrone, credo. Ormai è difficile discuterne con la polvere.",
		"Lavare i vestiti a Durotar è puro ottimismo. Tornano più rossi di come erano partiti.",
	},
	["dur.muse.w16.wry.007"] = {
		"Qui l'acqua costa più della birra, e forse è la frase più strana mai pronunciata in un villaggio di orchi.",
		"Gli osti di Durotar non annacquano niente. L'acqua è la parte costosa.",
	},
	["dur.muse.w16.wry.008"] = {
		"I goblin della torre degli zeppelin ti offrono un posto, uno spuntino e un avvertimento sullo spuntino, e gratis c'è solo il posto.",
		"I goblin degli zeppelin si prendono il tuo nome, i tuoi bagagli e la tua fiducia, e promettono di restituirti due cose su tre.",
	},
	["dur.muse.w16.wry.009"] = {
		"Se resto immobile abbastanza a lungo, la polvere finirà di seppellirmi e conterò come paesaggio.",
		"Continua a camminare. Fermati troppo qui e Durotar comincia a trattarti come un mobile.",
		"Nessuno resta fermo troppo a lungo, a Durotar. Non per disciplina: è il suolo che scotta.",
	},
	["dur.muse.w16.wry.010"] = {
		"Breve elenco delle cose di Durotar che non mi faranno del male: i fichi d'India, una volta sbucciati. Le rocce, se guardo dove metto i piedi. Fine dell'elenco.",
		"Le cose amichevoli di Durotar, in ordine: l'acqua, l'ombra, un muro alle spalle. Tutto il resto si tratta.",
	},
	["dur.muse.w16.wry.011"] = {
		"squadra un cactus, poi il sentiero, poi di nuovo il cactus, e gli gira intorno con un prudente mezzo giro.",
		"si tiene ben alla larga da un cactus che per ora non ha fatto niente.",
	},
	["dur.muse.w16.wry.012"] = {
		"È la quarta volta che controllo lo zaino in cerca di scorpioni. Nessuno, finora. Proprio quello che uno scorpione vorrebbe farmi credere.",
		"Niente nella coperta. Niente negli stivali. Il che vuol dire che è da qualche altra parte, e trama.",
		"Ho controllato tutto due volte. Lo scorpione che cerco è chiaramente un professionista.",
	},
	["dur.muse.w16.wry.013"] = {
		"Darei una storia per una tazza d'acqua fresca. Una bella storia. Perfino vera.",
		"Acqua fresca. Ne ho sentito parlare. Qualcuno me la descriva, piano piano.",
		"Se qualcuno ha dell'acqua fresca, ascolterò qualunque storia voglia raccontarmi. Proprio qualunque.",
	},
	["dur.muse.w16.wry.014"] = {
		"Ho inciampato in un sasso, gli ho chiesto scusa, e solo dopo ho visto che era una lucertola. Ha accettato.",
		"Ho chiesto scusa a un masso contro cui ho sbattuto. Durotar comincia a farmi effetto.",
	},
	["dur.muse.w16.wry.015"] = {
		"A Durotar tutti sembrano strizzare gli occhi, e adesso so perché. Rischio di restare con questa faccia.",
		"Dagli una settimana qui e strizzerai gli occhi a tutto, anche al chiuso, anche agli amici.",
	},
	["dur.muse.w16.wry.016"] = {
		"Qui perfino i miei stivali sembrano stranieri: fattura sbagliata, cuciture sbagliate, troppo puliti. La polvere ci sta lavorando.",
		"A ogni torre di guardia che passo conto i passi fino al prossimo riparo. Durotar insegna l'aritmetica a chi viaggia per l'Alleanza.",
		"Ogni orco che incontro guarda i miei colori prima della mia faccia. Giusto: dalla mia parte si fa lo stesso con i loro.",
	},
	["dur.npc_meet.w16.ask.001"] = {
		"È lo sguardo di chi ha un problema troppo piccolo per un esercito e troppo grosso per un solo paio di mani.",
		"Eccoci. In Durotar nessuno guarda un viandante con tanta speranza, se non c'è del lavoro.",
		"Qualunque cosa preoccupi questa persona, la preoccupa da un pezzo. Si vede dalla mascella.",
	},
	["dur.npc_meet.w16.ask.002"] = {
		"Aspettavi che passasse qualcuno da queste parti? Eccomi. Che c'è da fare?",
		"Su, dillo. C'è qualcosa sulle creste che va sistemato.",
	},
	["dur.npc_meet.w16.ask.003"] = {
		"si ferma ad ascoltare, a braccia conserte, mentre i guai di quest'angolo di terra vengono esposti senza fronzoli.",
		"si sporge per sentire cosa si chiede, la testa inclinata, come si ascoltano le indicazioni in un paese con poche strade.",
	},
	["dur.npc_meet.w16.guard.001"] = {
		"Gli occhi della guardia vanno prima alle mie mani, poi al viso, poi alla strada alle mie spalle. In quest'ordine, e in fretta.",
		"Una guardia che sbatte appena le palpebre. Con tutta questa polvere, dev'essere questione di pratica.",
		"Questa guardia sta nello stesso punto da così tanto che ha scavato una conca nel terreno. Niente passa senza essere pesato.",
	},
	["dur.npc_meet.w16.guard.002"] = {
		"Tratto di strada tranquillo? O è meglio tenere una mano pronta?",
		"C'è qualcosa che dovrei sapere sulle creste prima di partire?",
		"Da che parte stanno i guai, e da che parte la locanda?",
	},
	["dur.npc_meet.w16.guard.003"] = {
		"riceve dalla guardia un'occhiata lunga, senza sbattere le ciglia, e decide saggiamente di non farci battute.",
		"subisce l'esame della guardia dagli stivali alla fronte, e a quanto pare lo supera: nessuno aggiunge una parola.",
	},
	["dur.npc_meet.w16.inn.001"] = {
		"Tenere una locanda in Durotar vuol dire fare metà da cuoco e metà da furiere. Dietro questo banco si vede che lo sanno bene.",
		"Dietro il banco c'è chi ha sentito ogni viaggiatore lamentarsi della polvere, e ha dato ragione a tutti.",
		"Mura spesse, un banco basso, e chi lo tiene guarda la porta quanto la sala. Saggio, da queste parti.",
	},
	["dur.npc_meet.w16.inn.002"] = {
		"Qualcosa di fresco da bere, se in Durotar esiste. E quella cosa che ha un profumo così buono.",
		"Una ciotola di quello che c'è nella pentola, e un angolo dove nessuno mi scuota addosso la polvere.",
	},
	["dur.npc_meet.w16.inn.003"] = {
		"posa lo zaino impolverato accanto al banco e risponde con un cenno allo sguardo indagatore di chi sta dietro.",
		"si batte la sabbia rossa dagli stivali sulla soglia prima di avvicinarsi al banco, e si guadagna un'occhiata di approvazione.",
	},
	["dur.npc_meet.w16.teach.001"] = {
		"In una terra dura si insegna duro. Non mi aspetto altro, e imparerò più in fretta.",
		"Chi insegna alza appena lo sguardo, eppure mi sento {g:misurato|misurata}. Quello che si impara qui non sarà incartato nei complimenti.",
		"Le lezioni, in Durotar, arrivano semplici e senza imbottitura, come tutto il resto. Bene.",
	},
	["dur.npc_meet.w16.teach.002"] = {
		"Mi dicono che qui è da te che si impara. Fammi vedere.",
		"Insegnami quello che questa terra ha insegnato a te. Ti ascolto.",
	},
	["dur.npc_meet.w16.teach.003"] = {
		"si raddrizza sotto lo sguardo valutatore di chi insegna, come si fa davanti a qualcuno che si è guadagnato il diritto di giudicare.",
		"nota l'equipaggiamento consumato e le mani ferme di chi insegna, e presta attenzione.",
	},
	["dur.npc_meet.w16.trade.001"] = {
		"Chi commercia in Durotar vende soprattutto due cose: acqua e pazienza. Sospetto che su entrambe ci sia un bel ricarico.",
		"La merce è impilata per tenerla lontana dalla polvere. I prezzi, per tenere brevi le contrattazioni.",
	},
	["dur.npc_meet.w16.trade.002"] = {
		"Cosa serve per una lunga camminata su terra secca? Fammi vedere quello, e lascia stare il resto.",
		"Mi servono cose che durino, in questa terra. Cuoio, corda, cibo che si conservi.",
		"Vediamo cosa la polvere non ha ancora rovinato.",
	},
	["dur.npc_meet.w16.trade.003"] = {
		"fa scorrere lo sguardo sulla merce, tutta avvolta o coperta contro la sabbia rossa, che comunque entra dappertutto.",
		"prende in mano un pezzo della merce, lo rigira e ci soffia via la polvere prima di chiederne il prezzo.",
	},
	["dur.quest_complete.w16.folk.001"] = {
		"Qui la gente chiede aiuto come chiederebbe in prestito un coltello: senza giri di parole, e aspettandosi di riaverlo affilato.",
		"In questa terra nessuno implora. Chiedono una volta, dicono quanto vale, e si ricordano di chi ha detto sì.",
	},
	["dur.quest_complete.w16.folk.002"] = {
		"Razor Hill non può mandare soldati per ogni guaio sulle creste. Così chiede a chi passa. Mi sembra giusto.",
		"Le guardie tengono le mura, i peon la legna, e i piccoli guai nel mezzo vanno a chiunque abbia le mani libere.",
		"Durotar ha più guai che braccia. Per un po', le braccia erano le mie.",
	},
	["dur.quest_complete.w16.folk.003"] = {
		"fa un cenno a chi ha chiesto aiuto, come fra gente che lavora, e i ringraziamenti restano brevi da entrambe le parti.",
		"scambia un'occhiata con chi aveva chiesto aiuto: lo sguardo semplice di due persone che sanno quanto c'è ancora da fare.",
	},
	["dur.quest_complete.w16.folk.004"] = {
		"Poco tempo fa qui non c'era niente di tutto questo: né mura, né pozzi, né strada. È con i piccoli lavori come questo che è stato costruito, ed è così che resta in piedi.",
		"Un paese così giovane va avanti a favori. Ne ho appena aggiunto uno al mucchio.",
		"Ogni muro di Durotar l'ha alzato gente ancora viva. La costruzione non è finita: continua, una commissione dopo l'altra.",
	},
	["dur.quest_complete.w16.folk.005"] = {
		"Se c'è altro da fare, chiedi. Meglio utile che con le mani in mano, con questo caldo.",
		"Brava gente, qui. Dura come la roccia, ma brava.",
		"Tu chiedi, io vado, tu paghi, io riparto. Paese semplice, Durotar.",
	},
	["dur.quest_complete.w16.folk.006"] = {
		"In Durotar tutti hanno un lavoretto per chi passa. Sospetto che tengano una lista in comune.",
		"Chiedi la strada a qualcuno, qui, e te ne vai con tre commissioni. È un talento.",
	},
	["dur.quest_complete.w16.folk.007"] = {
		"accoglie un breve grazie e scopre che arriva meglio di quanto avrebbe fatto un discorso.",
		"ascolta il ringraziamento, risponde poco o niente, e in qualche modo tutti e due sembrano contenti così.",
	},
	["dur.quest_complete.w16.folk.008"] = {
		"Qualunque cosa serva a questa terra, mandami a chiamare. Verrò.",
		"Tieni sicura la strada per chi la percorrerà dopo. Come ringraziamento basta.",
	},
	["dur.quest_complete.w16.folk.009"] = {
		"Orchi a Razor Hill, troll a Sen'jin, e gli stessi piccoli guai ai due capi della strada. Aiuti gli uni, e gli altri lo vengono a sapere.",
		"In questa terra orchi e Darkspear si sostengono a vicenda. Fa piacere essere una cosa in più a cui appoggiarsi.",
	},
	["dur.quest_complete.w16.folk.010"] = {
		"si stiracchia, si spolvera, e si guarda attorno in questo duro angolo di mondo, come se potesse avere bisogno d'altro.",
		"si batte le mani per togliere la sabbia e osserva la terra intorno con l'aria di chi si chiede che altro le serva.",
	},
	["dur.quest_complete.w16.folk.011"] = {
		"Qualcuno a Razor Hill ne parlerà intorno al fuoco. Qualcuno lo fa sempre: è così che quel posto tiene i suoi conti.",
		"Le guardie sulla palizzata vedono chi va e chi viene a lavoro finito. Parlano poco e non dimenticano niente.",
	},
	["dur.quest_complete.w16.folk.012"] = {
		"Quel che è fatto è fatto. Chi è il prossimo?",
		"Il prossimo guaio, prego. Questa terra ha la fila.",
		"Ecco. Fate entrare il prossimo.",
	},
	["dur.quest_complete.w16.folk.013"] = {
		"Ogni commissione qui mi insegna un'altra piega di questa terra: quale gola fa eco, quale roccia nasconde un nido, quale sentiero usano i cinghiali.",
		"Fai qualche favore a Durotar e comincia a mostrarti i suoi angoli. Adesso ne conosco uno in più.",
	},
	["dur.quest_complete.w16.folk.014"] = {
		"Abbi cura di quest'angolo di terra. Io penserò al prossimo.",
		"Tieni d'occhio le creste mentre sono via. Io le terrò d'occhio per te, là fuori.",
	},
	["dur.quest_complete.w16.pay.001"] = {
		"Sistemato. Da queste parti la paga arriva come l'acqua: mai tanta, e impari a non sprecarla.",
		"Uno scambio onesto. Questa terra ha poco da dare, e quel poco lo conta due volte prima di consegnarlo.",
		"Pagando un aiuto, in Durotar, nessuno si arricchisce. L'avrei fatto anche per meno, ma non diteglielo.",
	},
	["dur.quest_complete.w16.pay.002"] = {
		"Quello che puoi. So quanto costano le cose in una terra così secca.",
		"Sarebbero bastati una stretta di mano e un otre pieno. Ma non discuto.",
		"Così siamo pari. Se nel conto c'è anche un sorso d'acqua, quello lo prendo per primo.",
	},
	["dur.quest_complete.w16.pay.003"] = {
		"soppesa per un attimo la ricompensa nel palmo, poi la mette via senza contarla.",
		"accetta ciò che viene offerto e, per abitudine, ne batte via la polvere prima di riporlo.",
		"mette via la paga con un cenno breve, di quelli che da queste parti chiudono un affare.",
	},
	["dur.quest_complete.w16.pay.004"] = {
		"Qualunque cosa mi abbiano dato, viene da gente che non ha molto in avanzo. Per questo pesa di più nello zaino.",
		"Paga piccola, mani oneste. Una terra così povera non può permettersi di imbrogliare chi le dà una mano.",
		"Qui nessuno paga col sorriso, e nessuno ti imbroglia sul resto. È un patto che accetto volentieri.",
	},
	["dur.quest_complete.w16.pay.005"] = {
		"Prezzo giusto per un lavoro fatto bene. Segnalo nel registro, se questa terra ne tiene uno.",
		"Il debito è saldato. Bene: mi piacciono i conti che si chiudono puliti.",
		"Siamo pari. Chiamami, se le creste ricominciano a mordere.",
	},
	["dur.quest_complete.w16.pay.006"] = {
		"Metà di quello che ho guadagnato in Durotar è sabbia rossa nelle cuciture dello zaino. L'altra metà almeno si può spendere.",
		"La ricompensa ce l'ho in mano. I graffi, sulle braccia. So bene cosa durerà di più.",
		"Guadagnato, pagato, e già mi chiedo quanta suola mi costerà la prossima commissione.",
	},
	["dur.quest_complete.w16.pay.007"] = {
		"rigira due volte la ricompensa, come aspettandosi che ne esca uno scorpione, poi la mette via.",
		"scuote la paga una volta prima di intascarla: in questa terra, tutto ciò che resta a terra abbastanza a lungo mette su un pungiglione.",
	},
	["dur.quest_complete.w16.pay.008"] = {
		"In questo paese un debito si ricorda più a lungo di un nome. Da qualche parte, un conto si è appena spostato dalla mia parte.",
		"Durotar tiene il conto di chi ha aiutato e di chi no, in silenzio, come la pietra serba la forma di fiumi scomparsi da tempo.",
	},
	["dur.quest_complete.w16.pay.009"] = {
		"Non ringraziarmi due volte. Una basta, e gli scorpioni ascoltano.",
		"Risparmia il discorso. Un cenno fa lo stesso lavoro e non costa niente.",
	},
	["dur.quest_complete.w16.pay.010"] = {
		"Le voci corrono sulla strada per Razor Hill più veloci di qualsiasi messaggero. Qualcuno, laggiù, lo saprà presto.",
		"In un posto così piccolo si parla anche delle piccole imprese. Il mio nome ha appena raccolto un po' di polvere e un po' di peso.",
	},
	["dur.quest_complete.w16.pay.011"] = {
		"beve un sorso dall'otre mentre l'affare si chiude, un piccolo brindisi privato al lavoro concluso.",
		"non conta niente, non chiede altro, e tappa l'otre come per sigillare il patto.",
	},
	["dur.quest_complete.w16.pay.012"] = {
		"La paga è nello zaino. Se valesse la pena farlo, questa terra lo deciderà con i suoi tempi lenti.",
		"Pagato. Qui la paga è la parte facile. Capire che cosa ha cambiato il lavoro richiede più tempo.",
	},
	["dur.quest_complete.w16.pay.013"] = {
		"apre lo zaino per riporre la ricompensa e scopre che Durotar è arrivata prima: un velo di sabbia rossa su tutto.",
		"infila la ricompensa fra roba già spolverata di rosso, dove entro un'ora si sentirà a casa.",
	},
	["dur.quest_complete.w16.walk.001"] = {
		"Questa è sistemata, e la strada già mi tira per gli stivali. Durotar non concede soste lunghe a nessuno.",
		"Il prossimo sentiero comincia proprio dove è finito questo, nella stessa sabbia rossa.",
		"Si riparte, allora. I solchi della strada sono così profondi che potrei seguirli a occhi chiusi, o quasi.",
	},
	["dur.quest_complete.w16.walk.002"] = {
		"si carica lo zaino in spalla e torna verso la strada, con la polvere rossa che sale già sugli stivali fino alla caviglia.",
		"si allontana dalla faccenda e guarda lungo il sentiero, scegliendo fra due creste.",
		"stringe una cinghia e riparte con un passo fatto per durare.",
	},
	["dur.quest_complete.w16.walk.003"] = {
		"Bene. Riempite gli otri e indicatemi la prossima collina.",
		"Da che parte, adesso? Non dire la strada lunga. È sempre la strada lunga.",
		"Mi rimetto in cammino. Se la strada si fa solitaria, mi terranno compagnia gli avvoltoi.",
	},
	["dur.quest_complete.w16.walk.004"] = {
		"Il lavoro è fatto, e la terra è la stessa: le stesse creste, la stessa pietra crepata. Non si accorge di ciò che facciamo su di lei, e forse è una gentilezza.",
		"Le creste c'erano prima della commissione e ci saranno molto dopo. Io proseguo, con un incarico in meno.",
	},
	["dur.quest_complete.w16.walk.005"] = {
		"Qui ogni lavoro finisce con una camminata. Alcuni cominciano con una, e ne tengono un'altra nel mezzo.",
		"Tutto qui? Bene. I miei piedi speravano che lo dicessi.",
	},
	["dur.quest_complete.w16.walk.006"] = {
		"Ovunque sia il prossimo lavoro, sarà a una bella camminata da qui. In questa terra niente sta vicino a niente.",
		"Questo paese è tutto distanza e niente scorciatoie. Per fortuna non ho fretta.",
		"Torno alla strada. È l'unica cosa, qui, che vada da qualche parte apposta.",
	},
	["dur.quest_complete.w16.walk.007"] = {
		"si batte la polvere rossa dalle ginocchia e riprende la strada da cui è {g:venuto|venuta}, più piano di prima.",
		"scioglie un nodo in una spalla, strizza gli occhi lungo il sentiero rosso e si incammina.",
		"spinge un sasso fuori dal sentiero e lo segue per qualche passo: una direzione vale l'altra.",
	},
	["dur.quest_complete.w16.walk.008"] = {
		"Al ritorno prendo l'altro versante della cresta. Non so cosa ci sia dietro, e questa terra non si mostra tutta in una volta.",
		"Stessa strada al ritorno, ma a lavoro fatto sembra diversa. Più larga, chissà come.",
		"La strada del ritorno sembra sempre più corta di quella dell'andata. Uno scherzo che fa questa terra, e mi sta bene.",
	},
	["dur.quest_complete.w16.walk.009"] = {
		"Dite al prossimo della fila che sono in strada. Mi troveranno seguendo la polvere.",
		"Se a qualcun altro serve una mano, sarò fra qui e la prossima cresta, da qualche parte.",
	},
	["dur.quest_complete.w16.walk.010"] = {
		"Giurerei che lo stesso avvoltoio mi ha seguito per tutta la commissione. Aspettando, come fanno da queste parti.",
		"Chiuso, e niente mi ha punto sulla via del ritorno. In questa terra vale come un premio.",
	},
	["dur.quest_complete.w16.walk.011"] = {
		"si volta una volta verso il luogo del lavoro compiuto, poi guarda il paese rosso che l'ha già dimenticato.",
		"si lascia la faccenda alle spalle e sale su un piccolo rialzo per leggere la terra davanti: cresta, gola, sterpi, cresta.",
		"si avvia senza fretta, col passo sciolto e lungo che insegnano le strade di questa terra.",
	},
	["dur.quest_complete.w16.walk.012"] = {
		"Bene. Ora troviamo una strada che non sia in salita in tutte e due le direzioni.",
		"Indicatemi un po' d'ombra. Ah, già. Non ce n'è.",
	},
	["dur.quest_complete.w16.walk.013"] = {
		"si concede un attimo di riposo a lavoro finito, la schiena contro la pietra rossa e tiepida.",
		"siede un momento su una roccia piatta, dopo averci guardato sotto, poi si rialza e riparte.",
	},
	["dur.quest_progress.w16.done.001"] = {
		"Ecco tutto. La strada del ritorno è l'unica parte del lavoro che non mi farà storie.",
		"Tutto quello che era stato chiesto, fatto. Il ritorno è lungo, ma è la parte leggera del lavoro.",
		"Completo. Ora la strada del ritorno, con niente più da cercare e tutto il tempo per guardarmi intorno lo stesso.",
	},
	["dur.quest_progress.w16.done.002"] = {
		"Qui ho finito. Ora il ritorno trionfale, fra polvere, graffi e occhi socchiusi.",
		"Tutto fatto. Spero che laggiù qualcuno mi stia ancora aspettando, dopo tutto questo.",
		"Questo è quanto. Se qualcos'altro in Durotar vuole fermarmi sulla via del ritorno, si metta in fila.",
	},
	["dur.quest_progress.w16.done.003"] = {
		"controlla un'ultima volta il lavoro finito, poi si volta verso chi l'aveva chiesto.",
		"si raddrizza a compito concluso e punta gli occhi sulla lunga strada del ritorno attraverso il paese rosso.",
		"sistema l'ultima parte del lavoro e si avvia sulla via del ritorno senza sprecare un passo.",
	},
	["dur.quest_progress.w16.done.004"] = {
		"Tutto, e non manca niente. Si torna.",
		"Qui ho chiuso. Ora vado a dirglielo.",
	},
	["dur.quest_progress.w16.step.001"] = {
		"Una parte, almeno. Il resto aspetta di essere trovato, da qualche parte fra le creste.",
		"Quel pezzo è sistemato. Gli altri Durotar se li tiene stretti.",
		"Un tratto è fatto. La terra non cede il resto senza farmi camminare.",
	},
	["dur.quest_progress.w16.step.002"] = {
		"Buoni progressi. E anche più polvere negli stivali di un'ora fa. Contano tutti e due.",
		"Ci sto arrivando. Gli sterpi si sono presi un po' di pelle dagli stinchi, come loro parte.",
	},
	["dur.quest_progress.w16.step.003"] = {
		"fa il conto del lavoro fin qui sulle dita impolverate, aggrotta la fronte per quel che resta, e va avanti.",
		"si ferma a fare il punto: un compito in parte alle spalle, e il resto ancora davanti, fra le rocce rosse.",
	},
	["dur.quest_progress.w16.step.004"] = {
		"Un altro fatto. Le spalle dicono basta; il lavoro non è d'accordo, e il lavoro alza di più la voce.",
		"Un pezzo di strada è fatto. Questa terra fa pagare ogni passo, e io sto ancora pagando.",
	},
	["dur.quest_progress.w16.step.005"] = {
		"E uno. Dove si nasconde il resto?",
		"Si va avanti. Piano, ma si va.",
	},
	["dur.quest_progress.w16.step.006"] = {
		"Un altro pezzo del compito è fatto, e il paese rosso non ha spostato una pietra per questo. Qui funziona così: la terra aspetta, e tu finisci.",
		"Progressi. Le creste sono esattamente come prima, il che in Durotar è insieme un'offesa e un conforto.",
	},
	["dur.victory.w16.won.001"] = {
		"La polvere ci mette più a posarsi di quanto ci abbia messo lo scontro a finire.",
		"Finito. La sabbia è ancora sospesa nell'aria, lenta a ricadere.",
		"Chiusa. La foschia rossa si dirada, piano.",
	},
	["dur.victory.w16.won.002"] = {
		"si lascia andare su un ginocchio sulla dura terra rossa, solo un istante, poi si rialza.",
		"aspetta che il tremito lasci le mani prima di rimettersi in cammino.",
	},
	["dur.victory.w16.won.003"] = {
		"Durotar mette alla prova tutto ciò che la calpesta. Tu non l'hai superata.",
		"Il paese rosso separa il duro dal molle. E il molle eri tu.",
		"Troppa poca scorza per queste parti. Succede.",
	},
	["dur.victory.w16.won.004"] = {
		"In questa terra niente muore con dolcezza, e niente resta a lungo. Domani gli spazzini avranno già ripulito.",
		"La terra farà sparire tutto abbastanza presto. Qui non si spreca niente.",
	},
	["dur.victory.w16.won.005"] = {
		"Giaci in pace. La terra rossa trattiene ciò che le si dà.",
		"Riposa, ora. Il suolo di Durotar è duro, ma tiene quieti i suoi morti.",
		"Dormi nella polvere. Almeno è tiepida.",
	},
	["dur.victory.w16.won.006"] = {
		"Piccoli scontri come questo, uno dopo l'altro: così è nata Orgrimmar.",
		"Tutto, qui, si costruisce con piccoli scontri come questo.",
	},
	["dur.victory.w16.won.007"] = {
		"resta un momento nella polvere che si posa, poi riprende la via.",
		"spinge col piede un po' di sabbia sul terreno smosso e prosegue senza voltarsi.",
	},
	["dur.victory.w16.won.008"] = {
		"Mi tremano un po' le mani. Il caldo o lo scontro, poco importa.",
		"Mani non proprio ferme. Concedi loro un attimo. Durotar aspetterà.",
	},
	["dur.victory.w16.won.009"] = {
		"Questa è sistemata. Paese rosso, manda il prossimo.",
		"Fatto. Questa terra può continuare a mandarne.",
		"Il prossimo. Durotar non ne è mai a corto.",
	},
	["dur.victory.w16.won.010"] = {
		"I Darkspear dicono che la terra ricorda chi la percorre con rispetto. Spero che questo conti come rispetto.",
		"I troll di Sen'jin dicono che la terra tiene il conto di come la si tratta. Chissà come conterà questo scontro.",
		"Era rispetto, o solo sopravvivenza? Deciderà la terra.",
	},
	["dur.victory.w16.won.011"] = {
		"si raddrizza nella foschia rossa dello scontro, spalle dritte.",
		"si guarda intorno fra la sabbia che vortica, in attesa di quel che verrà.",
	},
	["dur.victory.w16.won.012"] = {
		"Torna la quiete. Durotar riprende a farsi gli affari suoi.",
		"Scende il silenzio, e la terra fa finta che non sia successo niente.",
	},
	["dur.victory.w16.won.013"] = {
		"Una fine pulita, in una terra dura. Più di quanto tocchi a molti.",
		"Rapida e pulita. In Durotar questa si chiama gentilezza.",
		"Breve e pulita. La terra apprezza.",
	},
	["dur.victory.w16.won.014"] = {
		"Questa terra è dura con tutti. Del resto, anch'io.",
		"Terreno duro, scontro duro, fine dura. Durotar approverebbe.",
		"Roccia dura sotto i piedi, e mano ferma. È quello che chiede questo paese.",
	},
	["dur.victory.w16.won.015"] = {
		"Va' a dire ai Razormane che le strade di Durotar non sono loro.",
		"Un aculeo in meno puntato su Razor Hill.",
		"Setole nella polvere rossa. Razor Hill può stare più tranquilla.",
	},
	["dur.victory.w16.won.016"] = {
		"Veloci in campo aperto, i Kolkar. Non abbastanza.",
		"Tutti quegli zoccoli, e alla fine è la polvere ad averla vinta.",
	},
	["dur.victory.w16.won.017"] = {
		"si controlla le braccia in cerca di graffi quando il raptor resta immobile, e ne trova qualcuno.",
		"si allontana dal raptor scuotendo un braccio che ha preso più denti del dovuto.",
	},
	["dur.victory.w16.won.018"] = {
		"Uno strillo in meno sopra Drygulch. La gola mi deve un favore.",
		"Le piume si posano, e per una volta nessuno strilla. Che meraviglia.",
		"Basta ali sulla gola. Il cielo torna agli avvoltoi.",
	},
	["dur.victory.w16.won.019"] = {
		"Qualunque cosa ti tenesse, ora ha mollato la presa. Riposa.",
		"Zalazane non ti tiene più. Mi dispiace che ci sia voluto questo.",
	},
	["dur.victory.w16.won.020"] = {
		"A terra, tutto quel peso che crepita. Il suolo se n'è accorto.",
		"Tanta lucertola fa un bel rumore, quando cade.",
	},
	["dur.victory.w16.won.021"] = {
		"Nessuno ha la vita facile, in Durotar. Almeno la fine è stata rapida.",
		"Vita dura, terra dura, fine breve. Non invidio niente di ciò che nasce qui.",
	},
	["dur.victory.w16.won.022"] = {
		"Che lo sentano le creste: questa è chiusa.",
		"Ditelo alle colline rosse. Un'altra contesa risolta.",
		"Contesa archiviata. Le colline ne terranno nota.",
	},
	["dur.victory.w16.won.023"] = {
		"abbassa lo sguardo un momento più del necessario, mentre la polvere rossa si posa, poi lascia andare.",
		"si ferma nel silenzio, il capo chino per un istante sulla terra rossa smossa, prima di voltarsi.",
		"china il capo una volta sulla polvere rossa, poi prosegue.",
	},
	["dur.victory.w16.won.024"] = {
		"Qualcuno a Razor Hill ne sentirà parlare. Probabilmente da me.",
		"Questa è una storia da locanda, se la racconto bene e salto l'inciampo.",
	},
	["dur.victory.w16.wry.001"] = {
		"Scommetto che un avvoltoio ha appena esultato.",
		"Gli avvoltoi staranno già litigando per i posti a tavola.",
		"Da parte degli avvoltoi: grazie del servizio.",
	},
	["dur.victory.w16.wry.002"] = {
		"Mi vanterei, ma l'unico pubblico è una lucertola, e non è colpita.",
		"L'hanno visto solo gli scorpioni. Tipico.",
		"Un trionfo con un cactus per testimone. Gloria, alla maniera di Durotar.",
	},
	["dur.victory.w16.wry.003"] = {
		"sputa una boccata di sabbia e ha l'aria vagamente offesa.",
		"si tasta tutte le tasche e trova polvere rossa in ognuna.",
	},
	["dur.victory.w16.wry.004"] = {
		"Promemoria: ogni scontro in Durotar include sabbia in omaggio. In ogni piega.",
		"Vinto. E c'è della sabbia in un punto che non raggiungo: è quello il vero nemico, adesso.",
	},
	["dur.victory.w16.wry.005"] = {
		"Se quello era Durotar di buon umore, non voglio vederla arrabbiata.",
		"Paese incantevole. Qui tutto cerca di ucciderti, e fa pure i turni.",
		"L'idea di abbraccio di questo paese ha le spine.",
	},
	["dur.victory.w16.wry.006"] = {
		"si guarda intorno per la terra rossa deserta, come aspettando un applauso che non arriva.",
		"fa un piccolo inchino a nessuno, poi fa una smorfia per un livido.",
	},
	["dur.victory.w16.wry.007"] = {
		"È la cosa più emozionante che questo pezzo di roccia abbia visto in un anno.",
		"Quel cactus laggiù ha visto tutto. Non dirà niente.",
		"Niente da vedere, lucertole. Circolare.",
	},
	["dur.victory.w16.wry.008"] = {
		"Un punto a Durotar, zero a tutti gli altri. Lo segno io per conto suo.",
		"Un altro punto per il paese rosso. Io sono solo la manovalanza.",
	},
	["dur.victory.w16.wry.009"] = {
		"Aperto come una noce. A Sen'jin qualcuno avrà di sicuro una ricetta.",
		"Tutto quel clic clac, e poi è finito come ogni granchio: aperto.",
	},
	["dur.victory.w16.wry.010"] = {
		"Granchio nel menù, allora. Non ditelo ai cugini.",
		"Una vita intera a camminare di lato, e non ha saputo scansarsi.",
	},
	["dur.victory.w16.wry.011"] = {
		"Ormai ogni cosa che porto è mezza polvere rossa. A quanto pare, anche io.",
		"Vinto, e addosso ho mezza Durotar.",
	},
	["dur.victory.w16.wry.012"] = {
		"La prossima volta, scegli un posto con un po' d'ombra.",
		"Non potevi assalirmi vicino a un pozzo? Che maleducazione.",
		"Non potevamo farlo in un posto più fresco?",
	},
	["dur.weather_change.w16.sky.001"] = {
		"La foschia si alza, e i punti di riferimento che avevo dato per persi tornano al loro posto: quel pinnacolo, quella cresta, quella torre di guardia solitaria.",
		"L'aria si schiarisce di colpo. Durotar si mostra in ogni dettaglio, fino all'ultimo cespuglio spinoso.",
	},
	["dur.weather_change.w16.sky.002"] = {
		"alza lo sguardo mentre le prime gocce scuriscono la pietra rossa, ognuna lasciando una macchia color ruggine.",
		"guarda la pioggia imperlarsi sulla polvere invece di penetrare, come se il suolo avesse scordato come si beve.",
	},
	["dur.weather_change.w16.sky.003"] = {
		"Copriti la faccia! La sabbia si sta alzando dalle piane.",
		"Arriva la sabbia. Occhi bassi, bocca chiusa, e cammina.",
	},
	["dur.weather_change.w16.sky.004"] = {
		"L'aria si fa pesante e sa di metallo caldo. Durotar sta per ricordarsi di avere un cielo.",
		"Le nuvole si ammucchiano sopra le creste, basse e scure, e ogni lucertola in vista sparisce in una crepa. Loro lo sanno.",
	},
]==])
