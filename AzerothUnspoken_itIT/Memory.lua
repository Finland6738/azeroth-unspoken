-- Testi in italiano della Living Memory: prima visita e ritorno (step S6 e S7). Le regole stanno in Data/RegistryMemory.lua.
-- Una frase di ricordo dice solo ciò che la sua condizione garantisce: niente dettagli inventati sulla visita passata.
local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first

NS:AddTexts("itIT", {
	---------------------------------------------------------------------------
	-- prima visita: la foresta
	---------------------------------------------------------------------------
	["mem.first.forest.01"] = {
		"Mai prima d'ora i miei passi hanno toccato questo suolo. Eppure gli alberi sembrano attendermi da sempre.",
		"Una foresta che non conosco. Che il bosco mi accolga, o almeno mi lasci passare.",
		{ "Alberi nuovi. Nessuno qui sa il mio nome, ed è un sollievo.", depth = "natural" },
		{ "Entro in un bosco che non mi ha mai visto. Per lui sono soltanto un rumore di passi tra mille stagioni.", depth = "elevated" },
	},
	["mem.first.forest.02"] = {
		"Prima volta in questi boschi. Ricorderò questa strada.",
		"Non sono mai {g:stato|stata} qui. Il sentiero comincia adesso.",
		{ "Bosco nuovo. Meglio guardare dove metto i piedi.", depth = "natural" },
		{ "Che questi alberi mi conoscano da oggi, e mi trovino {g:degno|degna} di passare.", depth = "elevated" },
	},
	["mem.first.forest.e"] = {
		"si ferma dove il sentiero scompare sotto i rami, e lascia agli occhi il tempo di abituarsi alla penombra.",
		"varca il limite del bosco. Dietro, la luce aperta; davanti, un verde fitto che inghiotte i rumori.",
		{ "entra tra gli alberi. Le foglie secche scricchiolano sotto gli stivali.", depth = "natural" },
		{ "passa sotto le prime fronde come sotto l'arco di una porta, e il bosco richiude il suo silenzio alle sue spalle.", depth = "elevated" },
	},
	["mem.first.forest.dawn"] = {
		"La prima luce filtra tra i tronchi. Arrivare in un posto nuovo all'alba sembra quasi una promessa.",
		"Rugiada sulle foglie e nessuna orma sul sentiero, a parte le mie. Un buon modo di cominciare.",
		{ "L'alba trova il bosco ancora addormentato, e me sulla sua soglia: due cose che si incontrano per la prima volta.", depth = "elevated" },
	},
	["mem.first.forest.night"] = {
		"Di notte, in una foresta che non conosco. Ogni ramo spezzato ha la voce di qualcosa che mi segue.",
		"Non so dove porta questo sentiero, e il buio non ha intenzione di dirmelo.",
	},
	["mem.first.forest.stoic"] = {
		"Alberi, radici, un sentiero. Basta questo.",
		"Un bosco come tanti. Si attraversa un passo alla volta.",
	},
	["mem.first.forest.cheerful"] = {
		"Un bosco nuovo! Scommetto che c'è un fungo velenoso con il mio nome, da qualche parte.",
		"Aria buona, alberi alti e niente muri. Mi piace già.",
	},
	["mem.first.forest.fierce"] = {
		"Che si faccia avanti chiunque abbia la tana qui. Ora ci sono anch'io.",
		"Bosco fitto, buone imboscate. Le farò io, se serve.",
	},
	["mem.first.forest.curious"] = {
		"Quella corteccia ha un colore che non ho mai visto. Chissà se in tutta la foresta è così.",
		"Tracce sconosciute nel fango. Qualcosa di grosso passa di qui, e io voglio sapere cosa.",
	},
	["mem.first.forest.reverent"] = {
		"Mi sembra giusto abbassare la voce. Questo bosco era qui molto prima che io imparassi a parlare.",
		"Non ho chiesto il permesso di entrare. Lo chiedo adesso, in silenzio.",
		{ "Che le radici mi sopportino e i rami mi riparino: sono {g:un ospite|un'ospite}, non {g:un padrone|una padrona}.", depth = "elevated" },
	},

	---------------------------------------------------------------------------
	-- prima visita: ovunque, città, atmosfere
	---------------------------------------------------------------------------
	["mem.first.gen.01"] = {
		"{zone}. Un nome nuovo nel libro dei miei viaggi.",
		"Non conosco {zone}. È già un buon motivo per esplorarla.",
		"Non so niente di questo posto. Per una volta, mi piace non sapere.",
	},
	["mem.first.gen.02"] = {
		"Mai {g:stato|stata} qui. Vediamo cosa ha da dirmi {zone}.",
		"Terra nuova. Teniamo gli occhi aperti.",
	},
	["mem.first.gen.e"] = {
		"si guarda intorno a lungo, come chi entra per la prima volta in una casa altrui.",
		"rallenta il passo e osserva tutto: la forma delle colline, il colore della terra, la direzione del vento.",
		{ "si ferma e si guarda intorno. Posto nuovo.", depth = "natural" },
		{ "resta un istante immobile sul confine, mentre la terra sconosciuta si stende davanti a {g:lui|lei} senza fare promesse.", depth = "elevated" },
	},
	["mem.first.capital"] = {
		"Le mura di {zone}. Qui il mondo intero sembra darsi appuntamento.",
		"{zone} si apre davanti a me per la prima volta. Quante storie dietro quelle porte.",
		"Tante voci, tante lingue, tanti odori. La prima volta in una città così, ci si sente piccoli.",
	},
	["mem.first.capital.hostile"] = {
		"Mura che non sono le mie, sguardi che non mi vogliono qui. Tengo le mani bene in vista.",
		"Una capitale che non mi deve niente. Ogni passo qui dentro è preso in prestito.",
	},
	["mem.first.town"] = {
		"Un villaggio nuovo. Spero che la birra sia meglio delle strade.",
		"Tetti bassi, cani che abbaiano, qualcuno che stende i panni. Si respira.",
	},
	["mem.first.dark"] = {
		"Non ero mai {g:venuto|venuta} qui, e già vorrei non esserci. L'aria stessa sembra in lutto.",
		"Una terra nuova, e già stanca. Le cose qui sono finite male prima che io arrivassi.",
	},
	["mem.first.plains"] = {
		"guarda la pianura aprirsi fino all'orizzonte, dove l'erba e il cielo si confondono.",
		"si ferma sulla prima altura: davanti a {g:lui|lei} la terra si distende larga e senza ripari.",
	},
	["mem.first.mountain"] = {
		"Montagne nuove. Le gambe protesteranno, ma la vista ripagherà.",
		"Non conosco questi passi. Saliamo con calma: la montagna non perdona la fretta.",
	},
	["mem.first.snow"] = {
		"Prima volta tra queste nevi. Il freddo non chiede chi sei: ti prende e basta.",
		"Tutto bianco, tutto nuovo. Le mie orme sono le uniche che riesco a vedere.",
	},
	["mem.first.jungle"] = {
		"Prima volta nella giungla. Qualcuno mi dica quali di queste piante mordono.",
		"Caldo, umido, verde ovunque. E rumori che non so ancora riconoscere.",
	},
	["mem.first.swamp"] = {
		"Una palude. Proprio quello che mancava alla mia collezione di stivali rovinati.",
		"Mai {g:stato|stata} qui. A giudicare dall'odore, nessuno ci viene volentieri.",
	},
	["mem.first.desert"] = {
		"Sabbia fino all'orizzonte. Mai visto tanto spazio vuoto, e mai sentito così forte il mio respiro.",
		"Il deserto non mi conosce, e non ha fretta di conoscermi. Qui anche l'acqua va guadagnata.",
	},
	["mem.first.fire"] = {
		"si ferma sul bordo della terra bruciata: il calore sale dal suolo come da una fornace appena spenta.",
		"tossisce piano. L'aria sa di zolfo, e la roccia è nera fin dove arriva lo sguardo.",
	},
	["mem.first.plague"] = {
		"Avevo sentito parlare di queste terre. Sentirne parlare non basta: qui i campi non danno più grano, e i morti non restano sepolti.",
		"Prima volta qui. Mi sforzo di non respirare troppo a fondo, e di non pensare a chi ci viveva.",
	},
	["mem.first.ruin"] = {
		"Rovine che non ho mai visto. Qualcuno ha posato queste pietre con cura, una per una, e poi se ne è andato.",
		"Colonne a terra, scale che non portano a niente. Vorrei sapere come si chiamava questo posto, quando aveva un nome.",
	},
	["mem.first.coast"] = {
		"Il mare, da questa riva, non l'avevo ancora visto. Sembra sempre lo stesso, e non lo è mai.",
		"Sale nell'aria e gabbiani che litigano. Bel posto per arrivare.",
	},
	["mem.first.sacred"] = {
		"abbassa la voce senza accorgersene. L'aria qui ha un peso diverso, quieto, come in un tempio vuoto.",
		"si ferma sulla soglia di quel luogo e si toglie la polvere dalle spalle prima di entrare.",
	},
	["mem.first.deep"] = {
		"Mai {g:sceso|scesa} così in basso. Il soffitto è roccia, e la roccia è tanta.",
		"Prima volta quaggiù. Conto i passi, per sapere quanti ne servono per tornare.",
	},
	["mem.first.dungeon"] = {
		"Prima volta qui sotto. Restate vicini e non toccate niente che brilli.",
		"Non conosco questi corridoi. Andiamo piano: chi corre, qui, inciampa per sempre.",
	},
	["mem.first.raid"] = {
		"Non avevo mai messo piede in un posto del genere. Siamo in tanti, e mi sento lo stesso molto {g:piccolo|piccola}.",
		"Mura enormi, ombre lunghe, e il respiro di tanti compagni intorno. Ricorderò questo ingresso.",
	},
	["mem.first.pvp"] = {
		"Prima volta su questo campo. Occhi aperti!",
		"Campo nuovo. Impariamo in fretta.",
	},

	---------------------------------------------------------------------------
	-- ritorno: ovunque
	---------------------------------------------------------------------------
	["mem.ret.gen"] = {
		"{zone} di nuovo. Alcuni luoghi tornano a chiamarti, che tu lo voglia o no.",
		"Ci sono già {g:stato|stata}, in {zone}. Il ritorno ha un altro sapore.",
		{ "Di nuovo qui. Almeno stavolta so dove andare.", depth = "natural" },
		{ "Torno in {zone}, e la strada mi riconosce prima ancora che io riconosca lei.", depth = "elevated" },
	},
	["mem.ret.gen.e"] = {
		"rallenta dove la strada piega, come chi ritrova una svolta già percorsa.",
		"si guarda intorno con meno sorpresa della prima volta, e con più attenzione.",
	},
	["mem.ret.gen.wry"] = {
		"Di nuovo {zone}. Dovrei chiedere se fanno uno sconto ai clienti abituali.",
		"Rieccomi. Il posto non è cambiato; io spero di sì.",
	},

	---------------------------------------------------------------------------
	-- ritorno: la foresta (vertical slice C)
	---------------------------------------------------------------------------
	["mem.ret.forest.01"] = {
		"Di nuovo tra questi alberi. La prima volta li guardavo da {g:straniero|straniera}; ora conoscono il mio passo.",
		"Il bosco non è cambiato. Sono io a tornare {g:diverso|diversa}.",
		{ "Questi alberi li ho già visti. Strano come sembrino meno alti.", depth = "natural" },
		{ "Le fronde mi accolgono come si accoglie chi torna da lontano: senza domande, con un fruscio.", depth = "elevated" },
	},
	["mem.ret.forest.02"] = {
		"Rieccomi. Questa foresta mi conosce già.",
		"Ancora tra queste fronde. Quasi quasi mi sento a casa.",
		{ "Di nuovo nel bosco. Stavolta conosco la strada.", depth = "natural" },
		{ "Torno tra voi, alberi. Ricordate il mio passo? Io ricordo il vostro silenzio.", depth = "elevated" },
	},
	["mem.ret.forest.e"] = {
		"passa la mano sulla corteccia di un tronco, piano, come a salutare un vecchio conoscente.",
		"riprende un sentiero già percorso, e i piedi trovano da soli le radici da scavalcare.",
		{ "torna sotto gli alberi. Il bosco è quello di prima.", depth = "natural" },
		{ "rientra nella penombra verde senza esitare, e il bosco richiude intorno a {g:lui|lei} le sue fronde come un mantello già indossato.", depth = "elevated" },
	},
	["mem.ret.forest.long"] = {
		"Sono passati giorni dall'ultima volta. Gli alberi non li hanno contati; io sì.",
		"Tanto tempo lontano, e il bosco è rimasto dove l'avevo lasciato. Gli alberi sanno aspettare meglio di me.",
	},
	["mem.ret.forest.often"] = {
		"Ormai i miei stivali conoscono questo sentiero meglio di me.",
		"Quante volte sono {g:passato|passata} da qui? Ho smesso di contarle.",
	},
	["mem.ret.forest.night"] = {
		"Lo stesso bosco, ma di notte. Le radici che conoscevo sono diventate ombre che non conosco.",
		"Torno qui col buio. Il sentiero lo ricordo; i rumori, invece, sono tutti nuovi.",
	},
	["mem.ret.forest.stoic"] = {
		"Lo stesso bosco. Lo stesso sentiero. Andiamo.",
		"Nessuna sorpresa. Bene così.",
	},
	["mem.ret.forest.cheerful"] = {
		"Ciao, alberi! Vi sono {g:mancato|mancata}? No? Pazienza.",
		"Di nuovo qui. Chissà se gli scoiattoli tengono il conto dei visitatori.",
	},
	["mem.ret.forest.melancholic"] = {
		"Torno tra questi alberi e mi accorgo che della prima volta ricordo soprattutto la luce. Adesso mi pare più fioca.",
		"Il bosco è rimasto uguale. Sono le persone che cambiano, e che se ne vanno.",
	},
	["mem.ret.forest.gruff"] = {
		"Ancora questa foresta. Ancora rami in faccia.",
		"Di nuovo qui. Il bosco non mi ha fatto un favore la prima volta, non me ne aspetto ora.",
	},
	["mem.ret.forest.bad.death"] = {
		"L'ultima volta, tra questi alberi, sono {g:caduto|caduta}. Il bosco ha continuato a frusciare come se niente fosse.",
		"Qui mi hanno visto morire anche le foglie. Oggi cammino con più attenzione.",
		{ "In questo bosco sono {g:morto|morta}, l'ultima volta. Non ci torno per rivincita, ma ci torno.", depth = "natural" },
		{ "Queste fronde hanno accolto la mia caduta senza un lamento. Ora accolgano il mio ritorno, e che sia un'altra storia.", depth = "elevated" },
	},
	["mem.ret.forest.bad.flight"] = {
		"L'ultima volta sono {g:uscito|uscita} da qui di corsa. Oggi voglio vederla, questa foresta.",
		"Da questi alberi sono {g:scappato|scappata}, una volta. Non me ne vergogno: sono qui a raccontarlo.",
	},

	---------------------------------------------------------------------------
	-- ritorno: città, tempo, abitudini
	---------------------------------------------------------------------------
	["mem.ret.capital"] = {
		"Le strade di {zone}, di nuovo. Quasi come tornare a casa.",
		"{zone}. Stessi rumori, stessa folla, e io che ormai so dove girare.",
	},
	["mem.ret.capital.first"] = {
		"Ricordo la prima volta che vidi le mura di una vera città. Adesso ci passo sotto senza alzare gli occhi, e un po' mi dispiace.",
		"La prima città che ho visto mi sembrò il centro del mondo. Ne ho viste altre, da allora; quella meraviglia non è più tornata uguale.",
	},
	["mem.ret.town"] = {
		"Di nuovo qui. Stessa locanda, stessa panca, spero la stessa zuppa.",
		"Il villaggio di sempre. Fa piacere essere {g:riconosciuto|riconosciuta}, anche solo dai cani.",
	},
	["mem.ret.long"] = {
		"Passano i giorni, ma i luoghi restano dove li ho lasciati. {zone} mi aspettava.",
		"Da quanto mancavo da {zone}? Abbastanza perché valga la pena di rivederla.",
	},
	["mem.ret.verylong"] = {
		"È passato più di un mese dall'ultima volta qui. Mi chiedo chi fossi, allora, e se mi riconoscerei.",
		{ "Un mese e più di strada tra me e l'ultima volta che vidi {zone}. Il luogo è lo stesso; il viandante no.", depth = "elevated" },
	},
	["mem.ret.often"] = {
		"Quante volte, ormai, in {zone}? Comincio a conoscerne ogni sasso.",
		"Di nuovo qui. A questo punto potrei fare da guida.",
	},
	["mem.ret.veryoften"] = {
		"{zone}, ancora. Dovrebbero darmi le chiavi.",
		"Torno così spesso che i sassi mi salutano per nome.",
	},
	["mem.ret.bad.death"] = {
		"L'ultima volta che ho messo piede in {zone} sono {g:caduto|caduta}. Non accadrà di nuovo.",
		"{zone} mi ha già chiesto un prezzo, una volta. Ricordo bene quanto.",
		{ "Qui sono {g:morto|morta}, l'ultima volta. Stavolta con più calma.", depth = "natural" },
		{ "In questa terra ho già lasciato la vita una volta. Non le devo altro, e non intendo pagarle di nuovo.", depth = "elevated" },
	},
	["mem.ret.bad.death.e"] = {
		"si ferma un istante e guarda il terreno, come se cercasse il punto preciso in cui l'ultima volta è {g:caduto|caduta}.",
		"torna dove la sua ultima visita è finita nella polvere, e stringe un po' più forte l'arma.",
	},
	["mem.ret.bad.death.fierce"] = {
		"Mi hai {g:preso|presa} una volta, {zone}. Una.",
		"L'ultima volta sono {g:caduto|caduta} qui. Stavolta cade qualcun altro.",
	},
	["mem.ret.bad.death.wry"] = {
		"Ah, {zone}. Il posto dove sono {g:morto|morta}. Bei ricordi.",
		"Ultima visita: mi hanno {g:raccolto|raccolta} col cucchiaino. Stavolta proviamo a fare meglio.",
	},
	["mem.ret.bad.flight"] = {
		"Da {zone} me ne andai di corsa, l'ultima volta. Oggi non ho fretta di fuggire.",
		"Ricordo la fretta con cui la lasciai. Ora torno con più calma.",
	},
	["mem.ret.bad.flight.wry"] = {
		"L'ultima volta sono {g:uscito|uscita} da qui in modo... rapido. Stavolta vorrei vedere anche il resto.",
		"Ricordo bene la strada per scappare. Speriamo di non doverla ripassare.",
	},
	["mem.ret.bad.melancholic"] = {
		"L'ultima volta qui è finita male. Il posto non ne ha colpa, ma un po' gliene faccio lo stesso.",
		"Torno dove le cose sono andate storte. Il vento è lo stesso; io ho un nodo in gola.",
	},
	["mem.ret.bad.resolute"] = {
		"L'ultima volta qui è andata male. Non è un buon motivo per stare lontano.",
		{ "È finita male, l'altra volta. Si ricomincia.", depth = "natural" },
		{ "Qui ho già perso una volta. Non torno per dimenticarlo, ma per scriverci sopra un finale diverso.", depth = "elevated" },
	},

	---------------------------------------------------------------------------
	-- ritorno: flag narrativi
	---------------------------------------------------------------------------
	["mem.ret.firstdeath"] = {
		"Da quando la morte mi ha toccato la prima volta, ogni ritorno ha un altro sapore.",
		"Ho già visto com'è dall'altra parte. Da allora guardo i posti in cui torno con occhi più attenti.",
	},
	["mem.ret.level.mid"] = {
		"Ne ho fatta di strada, da quando ho cominciato. La sento tutta nelle ginocchia, ogni volta che torno nei posti già visti.",
		"Torno qui con più cicatrici e più esperienza. Non so quale delle due pesi di più.",
	},
	["mem.ret.level.60"] = {
		"Non c'è molto, ormai, che il mondo possa insegnarmi con la spada. Torno nei luoghi noti per imparare il resto.",
		{ "Ho percorso il mondo fino ai suoi margini più duri. Tornare qui è come rileggere la prima pagina di un libro finito.", depth = "elevated" },
	},
	["mem.ret.dungeon"] = {
		"Di nuovo quaggiù. Almeno stavolta so da che parte si va.",
		"Rieccoci. Stesse scale, stesso puzzo, stessa voglia di uscire.",
	},
	["mem.ret.raid"] = {
		"Sono già {g:stato|stata} qui dentro. Ricordo il silenzio prima dell'assalto più di ogni altra cosa.",
		"Ancora queste sale. La paura della prima volta è passata; il rispetto no.",
	},
	["mem.ret.pvp"] = {
		"Di nuovo su questo campo.",
		"Lo conosco, questo campo. Si va!",
	},

	---------------------------------------------------------------------------
	-- ritorno: le altre atmosfere
	---------------------------------------------------------------------------
	["mem.ret.dark"] = {
		"Torno in questa terra senza sole. Non mi ci sono {g:abituato|abituata}, e spero di non abituarmici mai.",
		"Ancora qui, dove la luce entra di malavoglia. La seconda volta non fa meno paura, fa solo meno sorpresa.",
	},
	["mem.ret.plains"] = {
		"Di nuovo la pianura. Si vede chi arriva da lontano: anche me, stavolta.",
		"Questa erba l'ho già calpestata. Si è rialzata, come sempre.",
	},
	["mem.ret.mountain"] = {
		"Le montagne non si accorgono di chi torna. Io però mi accorgo di loro, ogni volta di più.",
		"Rivedo queste cime, e mi sembra di avere fiato per salirle. Tornare insegna anche questo.",
	},
	["mem.ret.snow"] = {
		"Di nuovo questo freddo. Avevo quasi dimenticato quanto mi stesse antipatico.",
		"Neve, ancora neve. Le mie orme della volta scorsa? Sparite, ovviamente.",
	},
	["mem.ret.jungle"] = {
		"Rieccomi nella giungla. Stavolta ho portato più acqua e meno pazienza.",
		"Ricordo questo caldo. Lui, a quanto pare, si ricorda di me.",
	},
	["mem.ret.swamp"] = {
		"Di nuovo la palude. I miei stivali hanno chiesto di restare fuori.",
		"Stesso fango dell'altra volta. Forse addirittura lo stesso schizzo.",
	},
	["mem.ret.desert"] = {
		"Torno nella sabbia, e la sabbia ha già cancellato ogni traccia del mio passaggio. Qui si arriva sempre per la prima volta.",
		"Il deserto non tiene memoria di chi lo attraversa. Per fortuna la tengo io: so dov'è l'acqua.",
	},
	["mem.ret.fire"] = {
		"Ancora questa terra che brucia. Me la ricordavo meno calda. Mi sbagliavo.",
		"Di nuovo tra le ceneri. Il fuoco qui non dorme, e nemmeno io.",
	},
	["mem.ret.plague"] = {
		"Torno nelle terre malate. Speravo di trovarle guarite; non lo sono.",
		"Di nuovo qui, tra i campi morti. Mi accorgo di trattenere il fiato come la prima volta.",
	},
	["mem.ret.ruin"] = {
		"Le stesse rovine. Le pietre non si sono mosse; nessuno è tornato a rialzarle.",
		"Torno tra questi resti. Mi pare di conoscerli un po' meglio, come si conosce un vecchio che parla poco.",
	},
	["mem.ret.coast"] = {
		"torna sulla riva e resta a guardare le onde, che non hanno smesso un istante di arrivare.",
		"respira l'aria salmastra a pieni polmoni, come ci si saluta tra vecchie conoscenze.",
	},
	["mem.ret.sacred"] = {
		"torna in quel luogo quieto, e china il capo come la prima volta, forse un poco più a lungo.",
		"rientra nel silenzio del santuario. Il passo è lo stesso; il rispetto non si è consumato.",
	},
	["mem.ret.deep"] = {
		"Di nuovo sottoterra. Il buio è sempre lo stesso; la paura un po' meno.",
		"Torno quaggiù. Ricordo quanti passi servono per tornare alla luce, e me li ripeto.",
	},
}, "base_memory")
