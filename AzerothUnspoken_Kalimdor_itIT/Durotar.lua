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
]==])
