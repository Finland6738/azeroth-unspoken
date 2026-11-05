-- Italian texts of the regional pack kalimdor_feralas (content wave W03). The rules are in AzerothUnspoken_Kalimdor/Feralas.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("feralas", "itIT", "kalimdor_feralas", [==[
	["fer.a.attack.01"] = {
		"Questo te lo manda Feathermoon!",
		"Portati questo nel tuo angolo di foresta!",
	},
	["fer.a.attack.02"] = {
		"Fresco fresco dal sottobosco!",
		"Ecco una cosa da cui le felci non ti possono nascondere.",
	},
	["fer.a.battle.01"] = {
		"Avanti, allora. Questi alberi ne hanno viste di peggio.",
		"Feralas è grande abbastanza per tutti e due. Ancora per poco.",
		"Per Feathermoon! Facciamola breve.",
	},
	["fer.a.battle.02"] = {
		"pianta i piedi tra le felci mentre il nemico sbuca dal verde con gran fracasso.",
		"sposta il peso sul suolo morbido della foresta, le foglie che scivolano sotto le suole, e alza la guardia.",
	},
	["fer.a.battle.03"] = {
		"Troppi alberi, troppi posti dove potrebbe aspettarne un secondo. Tieni d'occhio i margini.",
		"Qualcosa si è mosso anche tra le felci alle mie spalle. O è stata solo un'impressione. Prima questo, poi guardo.",
		"Si combatte stretti tra i tronchi. Attenzione ai piedi, attenzione all'albero alle spalle.",
	},
	["fer.a.battle.gordunni.01"] = {
		"Gordunni! Grosso, rumoroso, e tra poco molto più silenzioso.",
		"Ogre, hai sbagliato sentiero.",
		"Un altro Gordunni. Ma li allevano tra le rovine?",
	},
	["fer.a.battle.woodpaw.01"] = {
		"Un Woodpaw. Torna alle tue colline e alle tue pulci.",
		"Gnoll, puzzi come un cane bagnato che ha perso una discussione.",
	},
	["fer.a.battle.yeti.01"] = {
		"Uno yeti, tutto pelo e pugni. Continua a muoverti, e non lasciare che mi stringa con tutte e due le braccia.",
		"Grosso, peloso, arrabbiato. Restare fuori portata e lasciare che si stanchi per primo.",
	},
	["fer.a.journey.arrival.01"] = {
		"Giù tra i grandi alberi. L'ippogrifo si scrolla le penne, e l'odore di muschio e foglie vecchie mi viene incontro.",
		"Piedi sul terreno morbido. Feralas sembra grande uguale anche da quaggiù, solo più vicina.",
	},
	["fer.a.journey.start.01"] = {
		"si leva su ali d'ippogrifo sopra gli alberi giganti, e la volta della foresta si stende là sotto come un mare verde.",
		"viene {g:sollevato|sollevata} oltre la foresta, mentre le cime degli alberi si rimpiccioliscono sotto il battito delle ali piumate.",
	},
	["fer.a.landmark.feathermoon.01"] = {
		"entra a Feathermoon Stronghold, dove mura chiare si alzano sull'isola e le Sentinelle sorvegliano la terraferma dai bastioni.",
		"percorre i camminamenti di pietra di {landmark}, il mare da ogni lato e la linea scura della Forgotten Coast oltre l'acqua.",
		"sale dall'approdo verso la fortezza, tra ippogrifi che si agitano sui trespoli e odore di sale nell'aria.",
	},
	["fer.a.lowhp.01"] = {
		"Non qui. Non sotto questi alberi, dove nessuno mi troverebbe per cent'anni.",
		"In piedi. Feathermoon è a una lunga traversata, e non ho intenzione di farla da {g:morto|morta}.",
		"Respiro ancora. Feralas dovrà aspettarmi.",
	},
	["fer.a.lowhp.02"] = {
		"Il verde mi nuota davanti agli occhi. Sbatti le palpebre. Respira. Resta in piedi.",
		"Terra morbida, qui. Troppo morbida. Non sdraiarti.",
		"Le radici mi prenderebbero in una stagione. Non ancora. Non oggi.",
	},
	["fer.a.muse.01"] = {
		"Alberi larghi come una casa alla base, e crescono ancora. Feralas era già vecchia molto prima che qualcuno piantasse Teldrassil.",
		"Ho smesso di torcere il collo verso le cime. Non serve: c'è sempre altro albero.",
		"Lassù, chissà dove, i tronchi finiscono in foglie. Da quaggiù devo crederci sulla parola.",
	},
	["fer.a.muse.02"] = {
		"Dire Maul sta nel cuore della foresta, metà città e metà macerie. Gli elfi che l'hanno innalzata non saprebbero che pensare degli ogre nelle loro sale.",
		"Eldre'Thalas, si chiamava una volta. Adesso è Dire Maul, e il nome nuovo si addice a chi ci si è installato.",
	},
	["fer.a.muse.03"] = {
		"Casa dietro le mura, su un'isola, e prima una traversata in barca. Alle Sentinelle non piacciono le visite a sorpresa.",
		"Feathermoon è una bella fortezza. Per arrivarci però tocca aspettare la barca, e questo è meno bello.",
	},
	["fer.a.muse.04"] = {
		"Ogni felce qui è grande abbastanza da nascondere qualcosa coi denti. Quasi tutte, probabilmente, lo fanno.",
		"Gnoll sulle colline, ogre sui sentieri, yeti nelle grotte. A Feralas i vicini non mancano; quelli buoni sì.",
		"Qui cammino piano, e non per rispetto. La foresta ascolta, e con lei tutto quello che ci vive.",
	},
	["fer.a.muse.05"] = {
		"Vecchia pietra elfica ovunque, crepata e verde. Chi viveva qui costruiva per diecimila anni, e una bella parte li ha avuti.",
		"Una colonna scolpita giace di traverso sul sentiero come un albero caduto. Il muschio la possiede da più tempo di quanto l'abbiano avuta gli scalpellini.",
	},
	["fer.a.muse.06"] = {
		"I Gordunni credono che questa foresta sia loro perché sono la cosa più grossa che ci gira. A Feathermoon la pensano diversamente.",
		"Ogre con la clava e ogre che borbottano incantesimi. Non so decidere quali mi diano più fastidio.",
	},
	["fer.a.muse.07"] = {
		"Muschio verde, pietra verde, verde sotto i piedi. Dopo un po' gli occhi smettono di chiedere altri colori.",
		"Tanto verde che il primo sasso grigio che vedo mi sembra una notizia.",
		"Perfino le rocce qui portano un cappotto verde. Non sapevo che una foresta potesse essere così scrupolosa.",
	},
	["fer.a.muse.08"] = {
		"piega indietro la testa per seguire un tronco su, sempre più su, finché i rami non gli si chiudono sopra, lontanissimi.",
		"posa il palmo sulla corteccia di uno degli alberi giganti, un tronco più largo di quanto sia lungo un carro.",
		"scavalca una radice spessa come un muro crollato; il suolo della foresta è morbido, profondo di foglie vecchie.",
	},
	["fer.a.muse.09"] = {
		"Naga sulla costa, ogre nell'entroterra, e Feathermoon che fa la guardia dalla sua isola, nel mezzo. Qualcuno deve pur farlo.",
		"Le Sentinelle tengono la loro isola come tengono tutto: in silenzio, e senza cedere un palmo.",
	},
	["fer.a.muse.10"] = {
		"Yeti in una foresta. Nessuno gli ha detto che dovrebbero stare su una montagna, da qualche parte al freddo.",
		"Qualcuno dovrebbe spiegare agli yeti di qui che si sono allontanati parecchio da ogni neve.",
	},
	["fer.a.muse.11"] = {
		"A nordovest i Twin Colossals spuntano dalla foresta, due enormi colonne di roccia. Certe cose sono troppo grandi per aver bisogno di una storia.",
		"Quei due giganti di pietra a nordovest fanno sembrare piccoli gli alberi, e qui nient'altro ci riesce.",
	},
	["fer.a.muse.12"] = {
		"Per quanto mi addentri fra gli alberi, so sempre da che parte è la costa. Feathermoon è là fuori, e la barca fa la spola.",
		"Il bello di una fortezza su un'isola: qualunque cosa mi insegua nella foresta, deve fermarsi davanti all'acqua.",
	},
	["fer.a.muse.13"] = {
		"Muschio sulle pietre, muschio sui tronchi, e tra un po', temo, muschio anche su di me.",
		"Basta stare immobili un po' a Feralas, e qualcosa comincia a crescerti addosso.",
	},
	["fer.a.muse.14"] = {
		"Gli elfi hanno lasciato Feralas alla foresta tanto tempo fa. La foresta se l'è presa volentieri e non ha restituito niente.",
		"Ogni rovina, qui, una volta era la casa di qualcuno. Ora sono le radici a tenere su i muri, o a tirarli giù, a seconda del giorno.",
	},
	["fer.a.muse.15"] = {
		"Ippogrifi selvatici su nelle Frayfeather Highlands. Le stesse ali di quelli che cavalchiamo, nessuna delle buone maniere.",
		"Gli ippogrifi delle alture non hanno mai portato nessuno in groppa e non hanno intenzione di cominciare.",
		"Su a Frayfeather gli ippogrifi fanno il nido allo stato brado. Belli da lontano; da vicino, soprattutto becco.",
	},
	["fer.a.npc_meet.flightmaster.01"] = {
		"Il maestro degli ippogrifi passa la mano su un collo piumato e mi chiede dove. Ovunque si veda il cielo, quasi rispondo.",
		"Ippogrifi in attesa sul trespolo, intenti a lisciarsi le penne. Dopo la volta della foresta, l'idea dell'aria aperta è una gran tentazione.",
	},
	["fer.a.npc_meet.guard.01"] = {
		"Una sentinella al suo posto, immobile come gli alberi, gli occhi che non lasciano mai la foresta.",
		"La guardia mi squadra una volta, con calma, e torna a sorvegliare il limitare del bosco. Le Sentinelle non chiacchierano.",
	},
	["fer.a.npc_meet.innkeeper.01"] = {
		"Un angolo asciutto e qualcosa di caldo, se ne avete. Là fuori la foresta è tutta muschio e denti.",
		"Un letto, per favore, il più lontano possibile dalle felci.",
	},
	["fer.a.quest_complete.01"] = {
		"Fatto. Un nodo in meno in una foresta molto grande e molto aggrovigliata.",
		"Questo lavoro è finito. Feralas non sembra cambiata granché, ma qualcuno dormirà meglio.",
		"Consegnato. La foresta è troppo grande per sistemarla tutta, ma quest'angolo va un po' meglio.",
	},
	["fer.a.quest_complete.02"] = {
		"Fatto. Se qualcuno mi cerca, sono a svuotare gli stivali dal muschio.",
		"Sistemato. La prossima volta tra le felci ci striscia qualcun altro.",
		"Finito. Direi che è stato facile, ma la foresta saprebbe che mento.",
	},
	["fer.a.quest_complete.03"] = {
		"L'Alleanza tiene Feralas un po' più saldamente, adesso. Lavoro piccolo, ma si somma.",
		"Ogni compito portato a termine qui fuori spinge indietro di un passo il confine della natura selvaggia. Solo un passo, ma è un passo.",
		"Qui fuori, così lontano da ogni città, ogni lavoro finito conta qualcosa.",
	},
	["fer.a.quest_complete.04"] = {
		"si volta verso il muro di alberi, il lavoro concluso, e già conta le miglia fino al prossimo.",
		"annuisce una volta, la faccenda chiusa, col verde di Feralas che preme tutt'intorno.",
		"tira un lungo respiro e si scrolla dalle spalle le ultime foglie della foresta.",
	},
	["fer.a.quest_progress.01"] = {
		"C'è tutto. Ora indietro tra le felci, senza trovare altro che abbia voglia di combattere.",
		"Qui ho finito. Indietro per dove sono {g:venuto|venuta}, e restare sul sentiero.",
		"Fatto. Il difficile adesso è ritrovare l'uscita da tutto questo verde.",
	},
	["fer.a.subzone_enter.01"] = {
		"Un altro tratto di Feralas, e gli alberi si fanno solo più grandi. Comincio a pensare che lo facciano apposta.",
		"Un altro angolo della foresta. Stesso muschio, altre rovine, e qualcos'altro che osserva dalle felci.",
		"Il sentiero curva e la foresta si apre un poco: una radura, un muro spezzato, un ruscello senza fretta.",
	},
	["fer.a.subzone_enter.twin.01"] = {
		"sbuca ai piedi dei Twin Colossals, due immense guglie di roccia che fanno sembrare giovani perfino i giganti della foresta.",
		"si ferma alla base delle due torri di pietra gemelle, così alte che gli uccelli che vi girano intorno sembrano granelli di polvere.",
	},
	["fer.a.victory.01"] = {
		"Torna il silenzio. Le felci si richiudono sul punto come se non fosse successo niente.",
		"Fatto. La foresta inghiotte il rumore e torna ai suoi piccoli suoni.",
		"Finito. Lassù un uccello ricomincia a cantare. Feralas è già passata oltre.",
	},
	["fer.a.victory.02"] = {
		"Qualunque cosa stesse in agguato tra quelle felci, adesso ha smesso.",
		"Feralas dà, Feralas toglie. Questo, se l'è preso.",
	},
	["fer.a.victory.03"] = {
		"abbassa l'arma tra i grandi tronchi, col fiato corto, mentre la foresta si riassesta intorno.",
		"si allontana di un passo dallo scontro e si appoggia un attimo alla corteccia di un albero gigante.",
		"si pulisce le mani sulle felci e alza gli occhi verso la volta di fronde, che non si è accorta di nulla.",
	},
	["fer.a.victory.04"] = {
		"Può bastare. Riprendo fiato, controllo gli alberi, e si riparte.",
		"Finita. Mi fanno male le braccia e il sentiero è ancora lungo. A Feralas niente è piccolo.",
	},
	["fer.a.victory.gordunni.01"] = {
		"Un Gordunni in meno sui sentieri. A Feathermoon saranno contenti di saperlo.",
		"Gli ogre qui cadono come alberi. Con un gran fragore, e tutto in una volta.",
		"Giù, ogre. La foresta può riprenderti.",
	},
	["fer.a.weather_change.rain.01"] = {
		"alza il viso mentre la pioggia trova la strada giù attraverso la volta degli alberi, e tutta la foresta comincia a gocciolare e mormorare.",
		"si stringe il bavero mentre la pioggia tamburella sulle foglie enormi lassù e scorre a rivoli lungo la corteccia.",
	},
	["fer.h.attack.01"] = {
		"Da Camp Mojache, con tutto il cuore!",
		"Fila via, tra le felci!",
	},
	["fer.h.attack.02"] = {
		"Omaggio dell'Orda. Non serve ringraziare.",
		"Occhio agli alberi. E a questo.",
	},
	["fer.h.battle.01"] = {
		"Per Mojache! Avanti, fatti sotto.",
		"C'è tanto spazio fra questi alberi. Tanto spazio per cadere.",
		"L'Orda sta in piedi anche a Feralas. Stai per scoprire come.",
	},
	["fer.h.battle.02"] = {
		"pianta i piedi tra due grandi radici e si volta ad affrontare l'attacco.",
		"si abbassa sotto una felce ricadente e si rialza con l'arma pronta.",
	},
	["fer.h.battle.gordunni.01"] = {
		"Gordunni! Mojache aspettava questo momento.",
		"Ogre grosso, cervello piccolo. Vediamo quale dei due cede prima.",
		"Da troppo tempo ronzi intorno al nostro campo, ogre.",
	},
	["fer.h.battle.grimtotem.01"] = {
		"Grimtotem. Hai voltato le spalle alla tua gente. Ora voltati e affrontami.",
		"Cairne ha offerto la pace. Tu hai scelto questo.",
	},
	["fer.h.battle.woodpaw.01"] = {
		"Un Woodpaw, tutto denti e latrati. Guardia bassa: mirano alle gambe.",
		"Gnoll. Pelo rognoso, zampe svelte, e la compagnia non è mai lontana.",
	},
	["fer.h.battle.yeti.01"] = {
		"si immobilizza mentre lo yeti si batte il petto e avanza pesante tra le felci.",
		"schiva la spazzata di un enorme braccio peloso, mentre il ruggito dello yeti fa cadere foglie dall'alto.",
		"fronteggia lo yeti, una montagna di pelo che chissà come riesce a stare sotto gli alberi.",
	},
	["fer.h.journey.arrival.01"] = {
		"Atterraggio a Mojache. La viverna scrolla le ali, e l'odore dei fuochi da cucina e delle pelli conciate mi viene incontro.",
		"Terra solida, morbida di muschio, e gli alberi giganti tutt'intorno, come se fossero rimasti ad aspettarmi.",
	},
	["fer.h.journey.start.01"] = {
		"monta sulla viverna a Camp Mojache, e con pochi colpi d'ala pesanti tende e totem sprofondano là sotto.",
		"viene {g:portato|portata} fuori dalla foresta su ali di cuoio, mentre gli alberi giganti si allargano in un tetto verde senza fine.",
	},
	["fer.h.landmark.mojache.01"] = {
		"entra a {landmark}, dove le ampie tende dei tauren sorgono tra gli alberi e i guerrieri sorvegliano il limitare della radura.",
		"arriva tra le tende di Camp Mojache, col fumo che sale dai fuochi e il parlottare basso dei tauren tutt'intorno.",
		"passa accanto alle viverne sul loro posatoio e alle pelli tese ad asciugare: il campo è un'isola calda nel verde profondo.",
	},
	["fer.h.lowhp.01"] = {
		"Non ancora. A Mojache mi aspettano ancora.",
		"È questo il meglio che sai fare? Un ramo che cade farebbe di peggio.",
		"Ancora in piedi! Forza, finiscimi se ci riesci.",
	},
	["fer.h.lowhp.02"] = {
		"Troppo sangue sul muschio. Il mio. Alzati, allontanati, fasciati.",
		"I grandi alberi si sfocano. Respira. Loro saranno ancora qui; voglio esserci anch'io.",
		"Se cado qui, le felci mi copriranno prima di domattina. Non cadere.",
	},
	["fer.h.muse.01"] = {
		"Alberi più vecchi di qualunque tribù io conosca, e non hanno ancora finito di crescere. Feralas fa sembrare piccoli perfino i tauren di Mojache.",
		"Questi tronchi potrebbero reggere il cielo, se mai cominciasse a cadere. Qualcuno dovrebbe dirgli che possono riposare.",
		"La corteccia sale e sale, finché l'occhio si arrende prima dell'albero.",
	},
	["fer.h.muse.02"] = {
		"Camp Mojache: tende grandi, un buon fuoco, e tauren che non fanno più domande del necessario.",
		"Dite quello che volete di Feralas, a Mojache il fuoco è caldo e la pentola piena.",
		"Mojache è un piccolo campo in una grande foresta. È proprio per questo che sembra casa.",
	},
	["fer.h.muse.03"] = {
		"Dire Maul incombe sugli alberi, a ovest del campo. Gli elfi la chiamavano Eldre'Thalas; gli ogre la chiamano loro.",
		"Mezza città elfica è crollata nella foresta. L'altra metà è piena di creature che preferirebbero fosse crollata tutta.",
	},
	["fer.h.muse.04"] = {
		"I Gordunni si accampano troppo vicino a Mojache. Qualunque distanza sarebbe troppo poca, se volete il mio parere.",
		"Ogre da una parte, gnoll dall'altra, Grimtotem dove gli pare. Mojache dorme con un occhio aperto.",
	},
	["fer.h.muse.05"] = {
		"Anche qui i Grimtotem. Tauren contro tauren sotto gli stessi vecchi alberi. La gente di Cairne meriterebbe vicini migliori.",
		"I Grimtotem se ne stanno nel loro recinto e coi loro rancori. Mojache tiene le lance a portata di mano.",
		"Strano vedere le stesse corna da tutte e due le parti di uno scontro. I Grimtotem hanno scelto la loro strada, e porta lontano da Thunder Bluff.",
	},
	["fer.h.muse.06"] = {
		"A qualcuno a Mojache farebbe gola una pelle di yeti. Lo yeti, immagino, ci è ancora affezionato.",
		"Yeti in una foresta verde, senza un fiocco di neve per miglia. A quanto pare nessuno gliel'ha detto.",
	},
	["fer.h.muse.07"] = {
		"si fa strada tra felci più alte di {g:lui|lei}, che si richiudono alle sue spalle.",
		"si ferma ad ascoltare: acqua da qualche parte, un uccello lontano, lassù, e il lento scricchiolio di alberi troppo grandi per ondeggiare.",
		"attraversa un pendio di radici coperte di muschio, ognuna larga come una strada.",
	},
	["fer.h.muse.08"] = {
		"Gnoll Woodpaw sulle colline, che si guaiscono addosso. In branco sembrano più coraggiosi di quanto non siano a combattere.",
		"Gli gnoll sono uguali dappertutto: rumorosi, affamati, e sicuri che il prossimo scontro andrà a loro favore.",
	},
	["fer.h.muse.09"] = {
		"A sud le Ruins of Isildien stanno tornando piano piano alla foresta, pietra dopo pietra.",
		"Ogni vecchio muro di Feralas ha un albero che gli cresce dentro. La foresta è paziente, e vince sempre.",
	},
	["fer.h.muse.10"] = {
		"Un campo dell'Orda fra gli alberi giganti. Che nessuno dica che conosciamo solo le terre aride.",
		"Mojache sta dove la foresta è più fitta, e sta in piedi da sola. Questa è l'Orda, in fondo.",
	},
	["fer.h.muse.11"] = {
		"Niente vento sotto questi alberi. L'aria se ne sta lì, pesante e verde, e mi lascia passare.",
		"Più mi addentro, più si fa silenzio. Non pace. Solo silenzio.",
		"Qui fuori la foresta tiene il suo tempo, e non ha nessuna fretta.",
	},
	["fer.h.muse.12"] = {
		"Muschio nello zaino, felci tra i capelli, uno scarafaggio nello stivale. Feralas si mette comoda.",
		"Qui la foresta non te la porti a casa sugli stivali. Ci entra da sola.",
	},
	["fer.h.muse.13"] = {
		"Su nelle Frayfeather Highlands gli ippogrifi fanno il nido senza cavalieri né padroni. Le bestie degli elfi, e di nessuno.",
		"Un ippogrifo strilla sopra le alture. Io resto fedele alle viverne; loro si tengano i loro becchi.",
	},
	["fer.h.muse.14"] = {
		"I tauren di Mojache parlano della Madre Terra come se abitasse appena dietro il prossimo albero. A Feralas, quasi ci credo.",
		"Gli sciamani del campo parlano alla terra come se potesse rispondere. Camminandoci in mezzo, me lo aspetto quasi.",
	},
	["fer.h.muse.15"] = {
		"A est del campo la terra scende verso i Lower Wilds. Anche il nome suona come un avvertimento.",
		"I Lower Wilds. Terreno più basso, bestie più selvatiche, e nessuna tenda in vista.",
	},
	["fer.h.npc_meet.flightmaster.01"] = {
		"Il maestro delle viverne gratta una viverna sotto il mento. Lei mi guarda come se potessi essere il pranzo.",
		"Viverne che sonnecchiano vicino alle tende, le code che fremono. Un volo fuori da tutto questo verde sarebbe una bella cosa.",
	},
	["fer.h.npc_meet.guard.01"] = {
		"Un guerriero di Mojache di guardia, lancia dritta, occhi sugli alberi. Qui fuori le mura sono la foresta.",
		"La guardia mi fa un lento cenno e torna a fissare il verde. Qualunque sagoma là fuori potrebbe essere un ogre.",
	},
	["fer.h.npc_meet.innkeeper.01"] = {
		"Qualcosa di caldo e un posto vicino al fuoco, se c'è spazio. La foresta per oggi ne ha avuto abbastanza di me.",
		"Una scodella di quello che c'è nella pentola, per favore. Feralas mette appetito.",
	},
	["fer.h.quest_complete.01"] = {
		"Fatto. Un lavoro in più per domare una foresta che non si lascia domare.",
		"Finito. Feralas è selvaggia come prima, ma un po' meno tra i piedi.",
		"Sistemato. Agli alberi non importa, ma a qualcuno sì.",
	},
	["fer.h.quest_complete.02"] = {
		"Fatto. Al prossimo che ha bisogno di qualcosa dalla foresta, dite che sono {g:occupato|occupata}.",
		"Ecco. E mi sono {g:perso|persa} solo due volte.",
		"Finito. Il compenso lo voglio in qualcosa che non sia muschio.",
	},
	["fer.h.quest_complete.03"] = {
		"Un altro compito portato a termine per l'Orda. Feralas imparerà il nostro nome.",
		"È così che si tiene una foresta: un lavoro, e poi il prossimo.",
		"Fatto. Che i Gordunni e i Grimtotem lo vengano a sapere.",
	},
	["fer.h.quest_complete.04"] = {
		"si toglie la foresta dalle maniche, la commissione alle spalle, e lancia un'occhiata al prossimo sentiero.",
		"lascia scivolare dalle spalle il peso del compito con un lungo respiro lento.",
		"fa un cenno a nessuno in particolare, il lavoro finito, con le pareti verdi di Feralas strette da ogni lato.",
	},
	["fer.h.quest_progress.01"] = {
		"Obiettivo raggiunto. Ora la lunga strada del ritorno, orecchie tese.",
		"Lavoro chiuso. La foresta mi ha lasciato arrivare fin qui; vediamo se mi lascia anche andar via.",
		"Ho quello che mi serviva. Meglio andare prima che se ne accorga qualcosa di più grosso.",
	},
	["fer.h.subzone_enter.01"] = {
		"Un'altra parte della foresta, e altri occhi tra le felci. Feralas ne ha in abbondanza, di entrambi.",
		"Gli alberi cambiano un po', le rovine cambiano un po'. La sensazione di essere {g:osservato|osservata} resta la stessa.",
		"Oltre un tronco caduto e dentro il prossimo tratto di verde. La foresta non finisce mai.",
	},
	["fer.h.subzone_enter.diremaul.01"] = {
		"arriva in vista delle mura di Dire Maul, archi elfici spezzati contro il cielo e il fumo dei fuochi degli ogre che sale dall'interno.",
		"passa sotto le porte infrante della vecchia città elfica, dove la pietra scolpita giace rovesciata fra le radici.",
	},
	["fer.h.victory.01"] = {
		"Silenzio. La foresta si richiude sullo scontro come l'acqua su un sasso.",
		"Fatto. Lassù in alto le foglie continuano a sussurrare, indisturbate.",
		"Finita. Le felci smettono di tremare, e i grandi alberi non si sono nemmeno voltati.",
	},
	["fer.h.victory.02"] = {
		"A Mojache vorranno sentirla, questa. La farò sembrare più difficile.",
		"Un'altra faccenda che la foresta dovrà rimettere in ordine.",
	},
	["fer.h.victory.03"] = {
		"si raddrizza tra le felci, il petto che si alza e si abbassa, e lascia che la quiete verde di Feralas torni a posarsi.",
		"appoggia una mano su un tronco muschioso e aspetta che il respiro torni.",
		"si guarda intorno nella radura calpestata, poi alza gli occhi su alberi sopravvissuti a ogni battaglia combattuta ai loro piedi.",
	},
	["fer.h.victory.gordunni.01"] = {
		"Ecco un ogre che non darà più fastidio a Mojache.",
		"I Gordunni possono continuare a mandarne. Noi continueremo a rimandarli indietro.",
		"Giù, e resta giù. Avanti il prossimo Gordunni.",
	},
	["fer.h.victory.grimtotem.01"] = {
		"Un Grimtotem a terra tra i vecchi alberi. Stesse corna, stessa terra. Strada diversa.",
		"Nessuna gioia, stavolta. Un tauren avrebbe dovuto stare con Cairne, non contro di lui.",
	},
	["fer.h.weather_change.rain.01"] = {
		"Piove, lassù tra le fronde. Ci mette un po' ad arrivare quaggiù, e poi è dappertutto.",
		"La pioggia rende rumorosa la foresta: ogni foglia che tamburella, ogni felce che si piega.",
	},
]==])
