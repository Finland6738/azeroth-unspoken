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
		"Il buio non mi ha voluto. Non so se esserne {g:grato|grata}.",
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
		"Le radici mi hanno trattenuto per un po', poi hanno allentato la presa.",
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
}, "base_life")
