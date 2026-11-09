-- Testi di base in italiano: morte, ritorno in vita e livelli. Ogni id ha una o più varianti, tutte con lo stesso significato e registro.
-- Le regole stanno in Data/RegistryLife.lua.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	["death.01"] = {
		"Così... il buio. Non è freddo come dicevano.",
		{ "Ecco. Mi gira la testa, e poi niente.", depth = "natural" },
		{ "Il mondo si ritira come una marea, e io resto sulla riva a guardarlo andare.", depth = "elevated" },
	},
	["death.02"] = {
		"Andate avanti... senza di me...",
		"Non fermatevi per me... correte...",
	},
	["death.03"] = {
		"Questo... non era nel piano.",
		"Ah. Ecco cosa intendevano con «attenzione».",
	},
	["death.04"] = {
		"Ditelo a casa... che non sono {g:fuggito|fuggita}.",
		{ "Dite ai miei... che ho tenuto duro.", depth = "natural" },
		{ "Portate il mio nome a chi aspetta sulla porta di casa. Ditegli che guardavo avanti.", depth = "elevated" },
	},
	["death.05"] = {
		"Tornerò. Lo giuro sulle mie ossa.",
		"Non finisce qui. Ricordatevi la mia faccia.",
	},
	["death.06"] = {
		"Vedo le stelle... sono così lontane...",
		{ "Che strano... il cielo è tutto storto.", depth = "natural" },
		{ "Le stelle mi guardano dall'alto, quiete, come hanno guardato chiunque sia {g:caduto|caduta} prima di me.", depth = "elevated" },
	},
	["death.orc.01"] = {
		"Antenati... preparate un posto al fuoco...",
		"Antenati... non arrivo a mani vuote...",
	},
	["death.scourge.01"] = {
		"Di nuovo? Che noia.",
		"Morire da morti. Una seccatura due volte.",
	},
	["death.tauren.01"] = {
		"Madre Terra... ritorno a te...",
		"L'erba è morbida sotto di me. Madre Terra, è la tua mano?",
	},
	["death.troll.01"] = {
		"Ehi... i Loa mi devono un favore...",
		"Nessuno tocchi la mia roba... torno subito, eh...",
	},
	["death.dwarf.01"] = {
		"Qualcuno... finisca la mia birra...",
		"Portatemi... sotto la montagna... dai miei padri...",
	},
	["death.nelf.01"] = {
		"Elune... ora vedo la tua luce...",
		"La luna è vicina, stanotte. Più vicina di quanto sia mai stata.",
	},
	["death.human.01"] = {
		"Avrei voluto rivedere Elwynn... d'estate...",
		"Il mulino sul fiume... chissà se gira ancora...",
	},
	["death.gnome.01"] = {
		"Nota per me {g:stesso|stessa}... rivedere i calcoli...",
		"Difetto di progettazione... nel progettista...",
	},
	["death.boss.01"] = {
		"Non... è finita... finché uno di voi è in piedi...",
		"Tenete duro... anche il nemico vacilla...",
	},
	["death.e.01"] = {
		"crolla a terra; l'arma {g:gli|le} sfugge di mano, e il mondo si fa silenzioso.",
		{ "cade a terra e non si muove più.", depth = "natural" },
		{ "si piega lentamente, e la terra {g:lo|la} accoglie senza un suono, come accoglie la pioggia.", depth = "elevated" },
	},
	["death.e.02"] = {
		"cade su un ginocchio, poi sull'altro, e chiude gli occhi come chi ha camminato troppo a lungo.",
		{ "piega le ginocchia, si appoggia all'arma, poi scivola giù.", depth = "natural" },
		{ "si inginocchia nella polvere come davanti a un altare; il respiro si fa breve, poi tace.", depth = "elevated" },
	},
	["death.e.03"] = {
		"esala l'ultimo respiro; per un istante, l'ombra intorno a {g:lui|lei} sembra più profonda.",
		"resta a terra con gli occhi aperti; un corvo si posa poco lontano, e non ha fretta.",
	},
	["death.e.04"] = {
		"cade con lo sguardo ancora fisso sul nemico, e non lo abbassa.",
		"va giù con l'arma ancora stretta in pugno e il mento alto.",
	},
	["death.e.05"] = {
		"ansima; una mano cerca qualcosa nell'erba, poi si apre.",
		"si accascia su un fianco; la borraccia rotola via e si ferma contro un sasso.",
	},
	["death.e.06"] = {
		"giace immobile, mentre il vento continua a pettinare l'erba come se niente fosse cambiato.",
		"resta a terra, e intorno la sera scende lo stesso, senza chiedere permesso a nessuno.",
		{ "giace dove è {g:caduto|caduta}; le foglie {g:gli|le} si posano addosso una alla volta, lente come un rito.", depth = "elevated" },
	},
	["death.e.07"] = {
		"si accascia; per un momento la luce si fa grigia, e i rumori intorno arrivano da molto lontano.",
		"si spegne, e il colore abbandona il mondo come l'acqua un secchio incrinato.",
	},
	["death.e.08"] = {
		"cade in avanti, faccia nella polvere, con una notevole mancanza di grazia.",
		"inciampa sull'ultimo passo e crolla come un sacco di farina.",
	},
	["rez.01"] = {
		"Il buio non mi ha {g:voluto|voluta}. Non so se esserne {g:grato|grata}.",
		{ "Sono ancora qui. Va bene così, credo.", depth = "natural" },
		{ "Ero sulla soglia, e la porta si è richiusa senza una parola. Non so se fosse un rifiuto o una grazia.", depth = "elevated" },
	},
	["rez.02"] = {
		"Sono {g:tornato|tornata}. E sono di pessimo umore.",
		"In piedi. Chi è stato? Voglio solo scambiarci due parole.",
	},
	["rez.03"] = {
		"Ho visto un luogo dove non c'è vento. Non è ancora il mio.",
		{ "Di là era tutto tranquillo. Troppo, per me.", depth = "natural" },
		{ "Di là il cielo non ha colore e l'erba non si piega. Mi hanno lasciato guardare, non restare.", depth = "elevated" },
	},
	["rez.04"] = {
		"Qualcuno ha preso appunti? Vorrei evitare di rifarlo.",
		"Va bene. Riproviamo, ma stavolta morendo un po' meno.",
	},
	["rez.05"] = {
		"Respiro. Ogni respiro, d'ora in poi, è un dono.",
		{ "Aria. Che buona, l'aria.", depth = "natural" },
		{ "Il primo respiro brucia come acqua di fonte d'inverno. Me ne ricorderò a ogni respiro che verrà.", depth = "elevated" },
	},
	["rez.06"] = {
		"Ho lasciato qualcosa laggiù. Spero non mi segua.",
		"Sono {g:tornato|tornata} {g:intero|intera}? Mi manca qualcosa, e non so cosa.",
	},
	["rez.07"] = {
		"Le mani rispondono. Le gambe pure. Bene.",
		"Ho di nuovo freddo e fame. Che meraviglia.",
	},
	["rez.08"] = {
		"Ogni volta che torno indietro, la strada è un po' più lunga.",
		"Più {g:stanco|stanca} di prima di cadere. Molto di più.",
	},
	["rez.09"] = {
		"Qualcuno, o qualcosa, mi ha tenuto la porta aperta. Grazie, chiunque tu sia.",
		"Non so chi ringraziare. Intanto ringrazio la terra sotto i piedi.",
	},
	["rez.scourge.01"] = {
		"Morto, vivo, morto vivente... ormai ho perso il conto.",
		"Altro giro, stesse ossa.",
	},
	["rez.orc.01"] = {
		"Gli Antenati mi hanno rimandato indietro. Dicono che non ho finito.",
		"Gli Antenati non mi vogliono ancora. Peggio per i miei nemici.",
	},
	["rez.tauren.01"] = {
		"La Madre Terra mi ha restituito al cammino. Camminerò con più rispetto.",
		"La terra mi ha rimesso in piedi. Le devo un passo più leggero.",
	},
	["rez.nelf.01"] = {
		"Ho camminato nel Sogno, e il Sogno mi ha lasciato andare.",
		"Le radici mi hanno {g:trattenuto|trattenuta} per un po', poi hanno allentato la presa.",
	},
	["rez.dwarf.01"] = {
		"Gli antenati mi hanno rimandato indietro. Dicono che la forgia non è ancora spenta.",
		"Mi sento come il mattino dopo una rissa a Forgiardente. Almeno ho vinto?",
	},
	["rez.e.01"] = {
		"riapre gli occhi e respira a fondo, come chi torna da un lungo inverno.",
		{ "apre gli occhi, tossisce, e si mette a sedere.", depth = "natural" },
		{ "riprende fiato come chi riemerge da acque profonde, e la luce torna a posarsi su di {g:lui|lei}, un colore alla volta.", depth = "elevated" },
	},
	["rez.e.02"] = {
		"si rialza lentamente, guardandosi le mani come se non le riconoscesse.",
		{ "si tira su a fatica e si scuote la polvere di dosso.", depth = "natural" },
		{ "si leva da terra con lentezza e resta a fissarsi i palmi, come se vi cercasse una strada già percorsa.", depth = "elevated" },
	},
	["rez.e.03"] = {
		"torna a respirare come chi riemerge da un'acqua troppo profonda; un attimo dopo, il petto si solleva di nuovo.",
		"ritrova peso e calore tutti in una volta, come un mantello rimesso sulle spalle ancora freddo di rugiada.",
	},
	["rez.e.04"] = {
		"si rimette in piedi, si tasta le costole e conta i denti con la lingua.",
		"si alza barcollando e cerca con lo sguardo l'arma, poi la borsa, poi la strada.",
	},
	["rez.e.05"] = {
		"riprende colore lentamente, come un vetro appannato che torna limpido.",
		"rabbrividisce, come se un vento venuto da molto lontano {g:gli|le} fosse passato attraverso.",
	},
	["rez.e.06"] = {
		"si rialza, e intorno gli uccelli ricominciano a cantare uno dopo l'altro, come se nessuno li avesse avvertiti.",
		"torna a respirare, e il mondo riprende i suoi rumori: un ramo che scricchiola, un insetto, un passo lontano.",
	},
	["lvl.01"] = {
		"Sento qualcosa destarsi nel sangue. Il mondo non è più così grande.",
		{ "Mi sento più {g:sveglio|sveglia}. Più {g:pronto|pronta}.", depth = "natural" },
		{ "Qualcosa si è acceso dietro lo sterno, una brace che non chiede legna. Il mondo resta vasto, ma ora riesco a guardarlo in faccia.", depth = "elevated" },
	},
	["lvl.02"] = {
		"Ogni cicatrice insegna. Oggi ho imparato.",
		{ "Un'altra lezione. Pagata cara, ma imparata.", depth = "natural" },
		{ "Le cicatrici sono lettere scritte sulla pelle. Oggi, per la prima volta, ne leggo una riga intera.", depth = "elevated" },
	},
	["lvl.03"] = {
		"Più forte, più {g:saggio|saggia}, e con lo stesso mal di schiena.",
		"Un livello in più. Il ginocchio non è d'accordo.",
	},
	["lvl.04"] = {
		"La strada si fa più ripida. Bene: anche le mie gambe.",
		{ "Salita più dura? Gambe più forti. Andiamo.", depth = "natural" },
		{ "Il sentiero sale verso nubi che non conosco. Che salga: lo seguirò fino in cima.", depth = "elevated" },
	},
	["lvl.05"] = {
		"Cresco, e intanto quelli che ho perso restano dove li ho lasciati.",
		"Divento più forte. Vorrei poterlo raccontare a chi non c'è più.",
	},
	["lvl.06"] = {
		"Ecco la cima. Da quassù si vedono tutte le guerre che verranno.",
		"Non resta più niente da scalare. Solo qualcosa da difendere.",
	},
	["lvl.07"] = {
		"Ah! Ora i cinghiali mi temeranno. Alcuni. Forse.",
		"Livello nuovo! I lupi della zona sono avvisati. Più o meno.",
	},
	["lvl.08"] = {
		"La Luce mi chiede di più. Gliene darò di più.",
		"Più forza nelle mani, più peso sulle spalle. È il patto della Luce.",
	},
	["lvl.09"] = {
		"Le voci si fanno più chiare. Forse dovrei preoccuparmi.",
		"Il patto si allarga. Dovrei leggere meglio le clausole.",
	},
	["lvl.10"] = {
		"Gli elementi parlano più forte, ora. O sono io che finalmente ascolto.",
		"Il vento ha cambiato voce. Adesso mi chiama per nome.",
	},
	["lvl.11"] = {
		"Una nuova formula! E quasi senza sopracciglia bruciate.",
		"Formula nuova imparata. Il libro è sopravvissuto, il tavolo no.",
	},
	["lvl.12"] = {
		"Più forte! I miei nemici impareranno il mio nome nel modo peggiore.",
		"Più forte! Portatemi qualcuno da battere!",
	},
	["lvl.13"] = {
		"Più forte, sì. Ma la stanchezza non sale di livello: resta quella.",
		"Un passo avanti. E adesso, se possibile, un letto.",
	},
	["lvl.14"] = {
		"Non ci sono {g:arrivato|arrivata} da {g:solo|sola}. Ricordatelo.",
		"Devo questo a ogni mano che mi ha {g:rialzato|rialzata}.",
	},
	["lvl.15"] = {
		"Splendido. Ora sono abbastanza forte per guai più grossi.",
		"Un livello in più, e il mondo si affretta a mandarmi nemici più grossi. Che premura.",
	},
	["lvl.e.01"] = {
		"chiude gli occhi; qualcosa di antico si desta dentro di {g:lui|lei}, e non torna a dormire.",
		{ "fa un respiro profondo e quasi sorride.", depth = "natural" },
		{ "resta immobile a lungo, mentre una forza quieta {g:gli|le} sale dalle piante dei piedi fino alla nuca, come linfa a primavera.", depth = "elevated" },
	},
	["lvl.e.02"] = {
		"raddrizza le spalle, e per un momento sembra più {g:alto|alta} di quanto sia.",
		{ "stringe il pugno, lo riapre, e annuisce tra sé.", depth = "natural" },
		{ "solleva il capo, e per un momento la luce sembra posarsi su di {g:lui|lei} più volentieri che su ogni altra cosa.", depth = "elevated" },
	},
	["lvl.e.03"] = {
		"soppesa l'arma tra le mani, come se all'improvviso pesasse un po' meno.",
		"fa roteare le spalle; qualcosa nelle giunture scricchiola, poi si assesta.",
	},
	["lvl.e.04"] = {
		"alza lo sguardo; per un istante l'aria intorno vibra come la corda di un liuto appena pizzicata.",
		"resta in mezzo al sentiero mentre un chiarore dorato {g:gli|le} scivola addosso e svanisce.",
		{ "per un battito di ciglia appare {g:avvolto|avvolta} in una luce d'oro, e la polvere ai suoi piedi si solleva e ricade.", depth = "elevated" },
	},
	["lvl.e.05"] = {
		"si guarda intorno; l'unico testimone è uno scoiattolo per nulla impressionato.",
		"sorride da {g:solo|sola} in mezzo alla strada, e un passante allunga il passo.",
	},
	["band.b20_30.levelup.01"] = {
		"Più forte, di nuovo. Le strade che mi spaventavano poco tempo fa adesso sembrano strade qualunque.",
		"Qualcosa si assesta nelle braccia, un po' più di peso dietro ogni gesto. Lo prendo volentieri.",
		"Un altro gradino. Il mondo non si rimpicciolisce, ma io ci occupo un po' più di spazio.",
	},
	["band.b30_40.levelup.01"] = {
		"Più forte. Le cicatrici non fanno meno male, ma reggono di più.",
		"Un'altra tacca sulla lunga salita. Le gambe se le ricordano tutte.",
		"Eccolo. Non più un salto, solo un altro passo sicuro.",
	},
	["band.b40_50.levelup.01"] = {
		"Più forte ancora, e meno incline a stupirmene.",
		"Un altro piolo. Per una volta, la scala sopra di me è più corta di quella sotto.",
		"Crescere una volta sembrava un salto. Adesso sembra una porta che si apre su una stanza più difficile.",
	},
	["band.b50_60.levelup.01"] = {
		"La cima è più vicina. Quassù l'aria è più sottile, e più limpida.",
		"Più forte, ancora. Non restano molti gradini, e ognuno è ripido.",
		"Un altro passo. Quasi vedo dove finisce tutto questo, e ciò che viene dopo non mi spaventa.",
	},
	["race.dwarf.levelup.w08.001"] = {
		"Più {g:duro|dura}, come il ferro dopo un'altra tempra. La forgia non ha ancora finito con me.",
		"Un altro strato di pietra si è depositato. Anche una montagna cresce così: piano, e per sempre.",
	},
	["race.dwarf.levelup.w08.002"] = {
		"Più forte! Qualcuno avvisi i birrai: mi serviranno boccali più grandi.",
		"Un gradino più {g:robusto|robusta}. A Ironforge farebbero bene ad allargare le porte.",
	},
	["race.human.levelup.w08.001"] = {
		"Più forte. Gli umani non hanno secoli per diventare quel che sono: devono farlo di corsa.",
		"Un passo più in là. Gli elfi crescono nel corso delle ere; un umano deve crescere fra uno scontro e l'altro.",
	},
	["race.human.levelup.w08.002"] = {
		"Un'altra tacca! Una vita umana è breve: tanto vale riempirla.",
		"Meglio di prima! Niente male per una creatura con settant'anni, più o meno.",
	},
	["race.nightelf.levelup.w08.001"] = {
		"Più forte. Un tempo il mio popolo aveva l'eternità per crescere; ora ogni passo avanti conta.",
		"Un po' più di quel che ero. Dopo Hyjal, il mio popolo non può più dare per scontato di crescere.",
	},
	["race.nightelf.levelup.w08.002"] = {
		"resta immobile mentre qualcosa di nuovo mette radici dentro di {g:lui|lei}, lento e sicuro come un germoglio di Teldrassil.",
		"solleva il mento, e per un istante il bagliore negli occhi si fa un poco più intenso.",
	},
	["race.tauren.levelup.w08.001"] = {
		"Più forte. Come un vitello che cresce dentro la mandria: non lo vedi succedere, e poi un giorno tieni il passo di quelli in testa.",
		"Un po' più di me rispetto a ieri. Gli anziani dicono che un tauren non smette mai di crescere, rallenta soltanto. Oggi ci credo.",
	},
	["race.tauren.levelup.w08.002"] = {
		"Ancora più {g:grosso|grossa}, in qualche modo. Porte del mondo, vi chiedo scusa in anticipo.",
		"Di nuovo più forte. Qualcuno avverta i soffitti bassi.",
	},
	["race.gnome.levelup.w09.001"] = {
		"Aggiornamento completato! Purtroppo l'altezza è sempre quella.",
		"{g:Migliorato|Migliorata} in tutto tranne una cosa. Certe specifiche sono fissate in fabbrica.",
	},
	["race.gnome.levelup.w09.002"] = {
		"Un po' più forte. Gnomeregan avrà bisogno di ogni gnomo al meglio, quando verrà il momento di riprenderla.",
		"Meglio di prima. Quando il mio popolo tornerà a Gnomeregan, voglio essere qualcuno che valga la pena di portarsi dietro.",
	},
	["race.orc.levelup.w09.001"] = {
		"Più forte di ieri. Gli orchi non contano gli anni: contano quanto riescono a sollevare.",
		"In me c'è più di prima. Gli anziani misurano un orco dal peso che porta, e il mio è appena cresciuto.",
	},
	["race.scourge.levelup.w09.001"] = {
		"Più forte. Il corpo non cresce più, quindi la volontà deve crescere per tutti e due.",
		"Più di prima. Non la carne, che ormai non migliora. Qualcosa sotto, più affilato adesso.",
		"Un passo avanti. I morti non dovrebbero crescere. Io con i \"dovrebbe\" non sono mai {g:andato|andata} d'accordo.",
	},
	["race.scourge.levelup.w09.002"] = {
		"Guarda un po': migliorare, alla mia età, nelle mie condizioni.",
		"Miglioro! Non male per un cadavere. Gli speziali vorranno degli appunti.",
	},
	["race.troll.levelup.w09.001"] = {
		"Più forte. Come una barriera di corallo: non la vedi crescere, e poi è lì.",
		"Un po' più troll di ieri. Gli stregoni vudù dicono che continuiamo a crescere finché continuiamo a imparare.",
	},
	["race.troll.levelup.w09.002"] = {
		"Ah! Lo senti? I loa hanno appena battuto i tamburi un po' più forte.",
		"Più forza, più velocità, e anche le zanne stanno benissimo.",
		"Attento, mondo. Questo troll è appena cresciuto, dentro.",
	},
	["band.b60.levelup.w10.001"] = {
		"La strada non sale più di così. Strano: mi aspettavo un panorama, e quello che vedo è lavoro.",
		"La cima, dunque. Niente campane, niente folla. Solo un lungo respiro, e il peggio del mondo che aspetta ancora.",
	},
	["band.b60.levelup.w10.002"] = {
		"Tutto qui? Più su non si va? Allora mi servono stivali migliori.",
		"Più forte di così non diventerò. D'ora in poi, a quanto pare, conta solo l'equipaggiamento.",
	},
	["levelup.w15.grow.001"] = {
		"Come se avessi addosso un mantello di una taglia in più, e ci fossi appena {g:cresciuto|cresciuta} dentro un po'.",
		"La forma che devo riempire è ancora più grande di me. Lo scarto si è appena ridotto.",
	},
	["levelup.w15.grow.002"] = {
		"I pericoli sono grandi quanto un attimo fa. Sono io che sono {g:cresciuto|cresciuta}.",
		"Là fuori niente si è rimpicciolito. Sono solo io a misurare un po' di più.",
		"Il mondo non si è fatto più tenero con me. Io, con lui, mi sono {g:fatto|fatta} un po' più {g:duro|dura}.",
	},
	["levelup.w15.grow.003"] = {
		"sposta i piedi, e qualcosa nel suo modo di stare in piedi è diventato, senza rumore, più difficile da smuovere.",
		"sta un filo più {g:saldo|salda}, come un palo una volta piantato fino in fondo.",
	},
	["levelup.w15.grow.004"] = {
		"Qualunque cosa arrivi adesso, troverà ad aspettarla un po' più di me.",
		"L'ho sentito. Avanti la prossima.",
		"Qui dentro qualcosa si è appena fatto più forte. Bene. Mi servirà.",
	},
	["levelup.w15.grow.005"] = {
		"Nessun istante preciso da indicare. Solo una differenza quieta, e niente che la disfi.",
		"Non è arrivato. Era semplicemente lì quando ho guardato, come un'abilità che c'è quando smetti di sforzarti.",
	},
	["levelup.w15.grow.006"] = {
		"resta immobile, come una campana appena colpita che ascolta la propria voce.",
		"resta in silenzio mentre qualcosa {g:gli|le} si deposita dentro, lento come limo in acqua ferma.",
		"rimane {g:fermo|ferma} un istante, come una campana dopo il rintocco, mentre il cambiamento ronza fino ai bordi.",
	},
	["levelup.w15.grow.007"] = {
		"Ero qualcuno, un attimo fa. Adesso sono un passo più in là.",
		"Un attimo fa i miei limiti erano qui. Si sono spostati. Non di molto. Di quanto basta.",
		"Il punto in cui cedo si è spostato più in là. Di poco. Ma conta.",
	},
	["levelup.w15.grow.008"] = {
		"Più {g:saldo|salda}. Questa è nuova.",
		"Toh. Tutto è appena diventato un po' più leggero da portare.",
		"Come se qualcuno mi avesse tolto un sassolino dalla scarpa. Da tutte le scarpe.",
	},
	["levelup.w15.grow.009"] = {
		"La crescita è un animale silenzioso. Non si annuncia: occupa solo un po' più di spazio.",
		"Niente cresce a forza di gridare. Cresce perché non si ferma.",
	},
	["levelup.w15.grow.010"] = {
		"si guarda le mani come se avessero appena imparato un trucco nuovo.",
		"gira un palmo verso l'alto e lo studia, come se il cambiamento potesse esserci scritto sopra.",
	},
	["levelup.w15.grow.011"] = {
		"Ciò che è appena cresciuto in me voglio metterlo al lavoro.",
		"Una misura in più di prima. Voglio vedere cosa riesce a spostare.",
		"Una forza nuova lasciata a dormire è uno spreco. Mettetemi davanti qualcosa di pesante.",
	},
	["levelup.w15.grow.012"] = {
		"Che resti scritto: sono più di quel che ero.",
		"Lo segni chi tiene questi conti. Sono {g:cresciuto|cresciuta}.",
	},
	["levelup.w15.grow.013"] = {
		"Non è proprio forza. È un motivo in meno per avere paura.",
		"Non proprio potenza. Piuttosto una paura che finalmente posso posare.",
		"Quello che sento non è più potente. È meno spaventato, e forse è meglio.",
	},
	["levelup.w15.grow.014"] = {
		"per un istante non si muove, e quando riprende a muoversi spreca meno gesti.",
		"riprende con un passo che non spreca niente, come se qualcuno avesse rifilato via le parti goffe.",
	},
	["levelup.w15.grow.015"] = {
		"Da qui in avanti, ogni lotta comincia un po' più a mio favore.",
		"Le probabilità si sono appena spostate, di pochissimo, dalla mia parte. Prendo ogni granello.",
		"Ogni scontro che mi aspetta si è appena spostato di un capello verso di me. I capelli si sommano.",
	},
	["levelup.w15.grow.016"] = {
		"Più di quanto fossi un attimo fa. Vediamo a che serve.",
		"È più di quanto avessi un attimo fa. Ho intenzione di usarlo.",
	},
	["levelup.w15.weigh.001"] = {
		"La forza non è un premio. È un conto più grosso, pagato in anticipo.",
		"Qualunque cosa io possa portare adesso, qualcuno mi chiederà di portarla.",
		"Non è un premio. È la ricevuta di qualcosa che non mi hanno ancora chiesto.",
	},
	["levelup.w15.weigh.002"] = {
		"Ogni volta che cresco mi allontano un po' da chi ero prima di tutto questo.",
		"Sto diventando qualcuno. Spero di riconoscerlo, quando arriverà.",
	},
	["levelup.w15.weigh.003"] = {
		"si ferma in silenzio, come si fa davanti a un compito troppo grande da abbracciare con uno sguardo solo.",
		"si fa {g:silenzioso|silenziosa}, col volto di chi soppesa un dono arrivato con delle condizioni.",
	},
	["levelup.w15.weigh.004"] = {
		"Allora che io ne sia {g:degno|degna}.",
		"Se mi viene dato di più, risponderò di più.",
		"Adesso ho di più. E con esso, il conto da rendere.",
	},
	["levelup.w15.weigh.005"] = {
		"Più cose sono in grado di fare, più ne vedo da fare. L'elenco non si accorcia mai.",
		"Ogni briciolo di forza mi mostra un po' più dei guai del mondo. Vista più chiara, elenco più lungo.",
	},
	["levelup.w15.weigh.006"] = {
		"Più forte, sì. Ma neanche un briciolo meno mortale. Non devo confondere le due cose.",
		"Diventare più duri non vuol dire diventare irraggiungibili. La morte sta al passo con chiunque.",
		"Per quanto io cresca, la mia fine cresce di pari passo. È l'unica compagna che non resta mai indietro.",
	},
	["levelup.w15.weigh.007"] = {
		"resta in silenzio un momento, come chi fa il conto di quanto è costato e preferisce non finire la somma.",
		"si volta un attimo a guardare da dove è {g:venuto|venuta}, poi guarda avanti, e lì tiene gli occhi.",
	},
	["levelup.w15.weigh.008"] = {
		"Gli altri cominceranno ad aspettarsi di più da me. Preferisco cominciare io, ad aspettarmelo.",
		"Adesso mi verrà chiesto di più. Preferisco essere io a chiederlo.",
	},
	["levelup.w15.weigh.009"] = {
		"Più forte. Quindi il prossimo fardello sarà più pesante. Giusto.",
		"Un po' di più da dare, allora. Vediamo chi ne ha bisogno.",
		"Più forza vuol dire più cose da sollevare. C'è sempre qualcuno che aspetta di essere sollevato.",
	},
	["levelup.w15.weigh.010"] = {
		"La cote dà il filo togliendo metallo. Crescere non è mai solo guadagno.",
		"Ogni guadagno è pesato contro qualcosa. Solo che non vedo sempre l'altro piatto della bilancia.",
	},
	["levelup.w15.weigh.011"] = {
		"abbassa lo sguardo per un istante, come se la forza nuova fosse anche un peso nuovo.",
		"si raddrizza, e la linea delle spalle è insieme più fiera e più stanca.",
		"sembra per un istante più grande e insieme più pesante, come uno zaino appena caricato.",
	},
	["levelup.w15.weigh.012"] = {
		"Più avanti c'è un momento per cui serviva tutto questo. Spero di riconoscerlo quando arriva.",
		"Questa forza serve a qualcosa. Non so ancora a cosa. Mi troverà lei.",
	},
	["levelup.w15.weigh.013"] = {
		"Posso fare di più. Non sono {g:sicuro|sicura} di saperne di più. Non sono mai state la stessa cosa.",
		"La forza è arrivata in fretta. Il giudizio arriva più piano, e ne avrò più bisogno.",
	},
	["levelup.w15.weigh.014"] = {
		"Quello che mi aspetta là fuori mi troverà un po' più difficile da fermare.",
		"Che lo sappia, quello che mi aspetta: adesso la lotta sarà più dura.",
	},
	["levelup.w15.weigh.015"] = {
		"Mi servirà fino all'ultimo briciolo, e anche di più. Questo lo so già.",
		"Non basterà. Non basta mai. Ma è più di prima.",
		"Non abbastanza per quello che arriverà. Niente lo è mai. Però più vicino.",
	},
	["levelup.w15.weigh.016"] = {
		"resta {g:dritto|dritta} per un momento, come chi presta un giuramento che nessuno gli chiede.",
		"rivolge un unico cenno secco a ciò che l'aspetta, come chi prende atto di una convocazione.",
	},
	["levelup.w15.wry.001"] = {
		"Ci vorrebbe uno stipite con una tacca nuova, per questo.",
		"Qualcuno dovrebbe segnarlo su uno stipite. Mi accontenterò di sentirmi {g:compiaciuto|compiaciuta}.",
	},
	["levelup.w15.wry.002"] = {
		"Qualcuno ha visto? No? Allora più tardi lo racconterò più in grande.",
		"Nessuno ha visto? Ottimo. La storia sta già migliorando.",
		"Nessun testimone. Peccato. L'avrei raccontata con tanta modestia.",
	},
	["levelup.w15.wry.003"] = {
		"Più {g:robusto|robusta}, a quanto pare. La saggezza non è ancora arrivata. Sarà nel prossimo pacco.",
		"La forza è arrivata. La saggezza deve aver preso la strada lunga.",
	},
	["levelup.w15.wry.004"] = {
		"si tasta i fianchi, come per controllare che non sia caduto via niente.",
		"si controlla le mani, poi i piedi, come se il cambiamento dovesse aver lasciato un segno ben visibile.",
		"si guarda addosso con sospetto, come se aspettasse di trovarci appiccicata un'etichetta.",
	},
	["levelup.w15.wry.005"] = {
		"Magnifico. D'ora in poi i miei errori saranno un po' più spettacolari.",
		"Ora posso fare gli stessi identici errori con più convinzione.",
		"Ottimo: adesso posso cacciarmi in guai che prima non avrei nemmeno raggiunto.",
	},
	["levelup.w15.wry.006"] = {
		"Vorrei ringraziare i miei piedi, la mia testardaggine, e tutto quello che mi ha mancato.",
		"Grazie a tutto ciò che ci ha provato e ha mancato. Senza di voi non ce l'avrei fatta.",
	},
	["levelup.w15.wry.007"] = {
		"Niente nastro, niente discorso, niente pergamena. Diventare più forti, a questo mondo, è un affare silenzioso.",
		"Per questo nessuno rilascia un attestato. Peccato: lo appenderei da qualche parte.",
	},
	["levelup.w15.wry.008"] = {
		"borbotta qualcosa di compiaciuto tra sé, poi si guarda intorno per vedere se qualcuno ha sentito.",
		"si concede un piccolo cenno di approvazione, tutto per sé.",
	},
	["levelup.w15.wry.009"] = {
		"Lo zaino pesa esattamente come prima. Alla faccia della forza.",
		"Più forte, eppure lo zaino tira sempre nello stesso identico punto.",
		"Tutta questa crescita, e la cinghia affonda sempre lì. Certe cose non si migliorano.",
	},
	["levelup.w15.wry.010"] = {
		"Ah. Non me l'aspettavo. Non me lo aspetto mai.",
		"Oh, che bello. È compresa anche una sedia?",
		"Uh. Nessuno mi ha {g:avvisato|avvisata}. Nessuno lo fa mai.",
	},
	["levelup.w15.wry.011"] = {
		"Per festeggiare continuerò a fare esattamente quello che facevo, solo un filo meglio.",
		"Ci vorrebbe una festa. La farò dopo, se me ne ricordo.",
	},
	["levelup.w15.wry.012"] = {
		"si ferma a metà passo, aggrotta la fronte come chi cerca una parola, poi alza le spalle e prosegue.",
		"sbatte le palpebre, si stropiccia gli occhi, e guarda due volte il nulla.",
		"inclina la testa come per ascoltare qualcosa appena detto, e non sente altro.",
	},
	["levelup.w15.wry.013"] = {
		"Chissà dove, qualcosa che non ho ancora incontrato è appena diventato un po' meno fortunato.",
		"Lontano, qualche guaio che mi aspetta si è appena visto accorciare le probabilità.",
	},
	["levelup.w15.wry.014"] = {
		"Sempre io, solo di più. Il mondo dovrà farsene una ragione.",
		"C'è più di me di prima. Il mondo si regoli di conseguenza.",
	},
	["levelup.w15.wry.015"] = {
		"Se solo la borsa crescesse volentieri quanto me.",
		"Più muscoli, e la borsa non ha ancora preso l'abitudine.",
		"In me cresce tutto tranne le monete che porto. C'è una lezione in questo, e mi irrita.",
	},
}, "base_life")
