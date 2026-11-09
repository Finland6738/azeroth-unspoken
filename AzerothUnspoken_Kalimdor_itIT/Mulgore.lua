-- Italian texts of the regional pack kalimdor_mulgore (content wave W01). The rules are in AzerothUnspoken_Kalimdor/Mulgore.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("mulgore", "itIT", "kalimdor_mulgore", [==[
	["mul.battle.01"] = {
		"Terreno aperto, nessun riparo. Bene. Nemmeno per te.",
		"C'è spazio in abbondanza quaggiù. Vieni a prendertelo.",
	},
	["mul.battle.02"] = {
		"Metti giù la sega, goblin. Mulgore non è in vendita.",
		"Venture Co.? Ecco la mia offerta.",
	},
	["mul.journey.01"] = {
		"Su, sopra l'erba, e la pianura diventa un'unica lunga increspatura d'oro e di verde.",
		"Le mese si rimpiccioliscono fino a sembrare sassi da guado sotto le ali. Da quassù Mulgore pare piccola. Non lo è.",
		"Il vento che ha piegato l'erba tutto il giorno ora sta sotto le ali, e mi porta.",
	},
	["mul.journey.02"] = {
		"scende dal vento con semi d'erba su tutte e due le maniche e la pianura distesa in ogni direzione.",
		"mette piede sull'erba dopo il volo, e il vento di Mulgore tira dritto come se nessuno fosse atterrato.",
	},
	["mul.landmark.01"] = {
		"cammina fra le tende di pelle di {landmark}, dove i giovani della tribù imparano il mestiere e i fuochi sanno di carne arrosto.",
		"guarda dal bordo della mesa, a {landmark}: tende e totem quassù, e tutta Mulgore che aspetta più in basso.",
	},
	["mul.landmark.02"] = {
		"{landmark}. Tende di pelle, totem alti, kodo che sonnecchiano accanto alle tende. Se la pianura ha un cuore, batte più o meno a questo ritmo.",
		"Qui vive il clan stesso di Cairne, e nessuno se ne dà arie. Mi piace.",
	},
	["mul.lowhp.01"] = {
		"Non in quest'erba. Non sotto un cielo così grande, senza nessuno a guardare.",
		"In piedi. L'erba è morbida, ma non abbastanza da restarci giù.",
	},
	["mul.muse.01"] = {
		"L'erba corre fino al bordo del cielo e non si ferma lì. Quaggiù un pensiero ha spazio per sgranchirsi le gambe.",
		"Il vento passa sull'erba e la piega tutta insieme, dallo stesso lato, come una folla che conosce la stessa aria.",
		"Mulgore è quasi tutta cielo. La terra serve solo a dargli un appoggio.",
	},
	["mul.muse.02"] = {
		"Plainstrider. Tutto gambe e opinioni, e nessuno che guardi dove mette i piedi.",
		"Quell'uccello è più alto di me e più tonto di un paletto, eppure sta vincendo lui a chi abbassa gli occhi per primo.",
		"Mai sfidare un plainstrider alla corsa. Perdi, e lui nemmeno se ne vanta. Chissà perché, è peggio.",
	},
	["mul.muse.03"] = {
		"si ferma a guardare un kodo che pascola in lontananza, lento come una collina che abbia deciso di fare due passi.",
		"aspetta che una fila di kodo attraversi il sentiero: troppo pesanti e troppo calmi per affrettarsi per chiunque.",
		"sente il richiamo profondo di un kodo rotolare sull'erba e spegnersi lontano, oltre le mese.",
	},
	["mul.muse.04"] = {
		"Gli anziani dicono che la nostra gente abbia vagato a lungo prima di trovare quest'erba. A starci in mezzo, capisco perché si sia fermata.",
		"Ogni passo, qui, è su una terra che la mia gente ha cercato per generazioni e poi ha dovuto difendere. Per questo pesa meno sotto gli zoccoli.",
	},
	["mul.muse.05"] = {
		"Senti? Seghe. La Venture Co. ha trovato un altro albero che crede suo.",
		"Ceppi in fila, freschi, che gocciolano ancora linfa. Di qui è passato un goblin col registro dei conti.",
		"Ogni albero che portano via da Mulgore lo rivenderanno a qualcun altro al doppio del prezzo.",
	},
	["mul.muse.06"] = {
		"L'alba arriva sulla pianura tutta in una volta, oro su ogni filo d'erba. Qui nessuno ha bisogno che gli si dica che è mattina.",
		"Prima luce sulle mese, e l'erba che fuma dove la rugiada evapora. Una buona ora per essere {g:sveglio|sveglia} a Mulgore.",
	},
	["mul.muse.07"] = {
		"alza lo sguardo: il cielo notturno di Mulgore è così vasto che sembra inclinarsi fino all'erba.",
		"resta {g:fermo|ferma} nell'erba scura mentre le stelle si accendono sopra le mese, una dopo l'altra, poi troppe per contarle.",
		"ascolta la pianura di notte: lupi lontani, grilli vicini e il vento che va dappertutto nello stesso momento.",
	},
	["mul.muse.08"] = {
		"Un grosso rapace delle pianure mi gira sopra la testa. Quasi mi sento {g:lusingato|lusingata}. Quasi.",
		"Quegli uccellacci continuano a disegnare cerchi lenti nel cielo sopra di me. Vorrei che si trovassero un passatempo.",
	},
	["mul.muse.09"] = {
		"Nani che scavano a Bael'dun, lontanissimo da qualunque montagna loro. Qualunque cosa ci sia sotto quest'erba, la vogliono parecchio.",
		"Dagli scavi arrivano colpi di piccone e litigi in nanico. I tauren lasciano in pace la terra; questi continuano a farle domande.",
	},
	["mul.muse.10"] = {
		"I lupi della prateria cacciano allo scoperto. Non hanno bisogno di nascondersi: aspettano solo che tu ti stanchi.",
		"Tieni d'occhio l'erba dove si muove controvento. Quello non è il vento.",
	},
	["mul.npc_meet.01"] = {
		"riceve un lento cenno del capo e una ciotola che già si riempie: il modo tauren di dire siediti.",
		"entra sotto il lembo di pelle e va verso l'oste, che alza gli occhi con la pazienza di chi non resta mai senza stufato.",
		"incrocia lo sguardo dell'oste e riceve un'occhiata calma e calda, come se un posto fosse rimasto libero fin dall'inizio.",
	},
	["mul.npc_meet.02"] = {
		"Uomini-cinghiale, gnoll o goblin? A Mulgore di solito è uno dei tre.",
		"Dimmi cosa turba la pianura. Ho tempo e due buone gambe.",
	},
	["mul.quest_complete.01"] = {
		"Fatto. La pianura è un po' più tranquilla, e all'erba non importa né in un senso né nell'altro.",
		"Finito. Adesso un mandriano può smettere di contare i kodo due volte.",
		"Una preoccupazione in meno, sotto questo cielo enorme.",
	},
	["mul.quest_complete.02"] = {
		"accetta il ringraziamento con un cenno e si toglie dalla manica qualche filo d'erba.",
		"consegna ciò che era stato chiesto e sente una parola di grazie, lenta come parlano i tauren, e sincera.",
		"ripone la ricompensa e lancia uno sguardo alla pianura, già in cerca del prossimo sentiero.",
	},
	["mul.quest_complete.03"] = {
		"È fatto. Che la Madre Terra tenga la pianura così tranquilla ancora per un po'.",
		"Finito, e finito bene. La Madre Terra vede anche il lavoro piccolo.",
	},
	["mul.quest_progress.01"] = {
		"Era l'ultimo pezzo. Adesso la lunga camminata nell'erba per andarlo a dire.",
		"Raccolto tutto. Il resto la pianura può tenerselo.",
	},
	["mul.subzone_enter.01"] = {
		"sale verso la pietra chiara della rupe, dove le risate degli gnoll arrivano col vento, sottili e maligne.",
		"sente l'odore dell'accampamento gnoll prima di vederlo: pelli vecchie, ceneri fredde e qualcosa lasciato troppo a lungo all'aperto.",
	},
	["mul.subzone_enter.02"] = {
		"Una miniera a Mulgore. Ma certo. I goblin troverebbero minerale anche sotto un kodo addormentato.",
		"Carrelli, binari e un cartello contro gli intrusi. Detto da loro, fa ridere.",
	},
	["mul.subzone_enter.03"] = {
		"{subzone}. Acqua pulita in un cerchio di pietre, custodita da chi sa bene quanto vale in mezzo alla pianura.",
		"Un pozzo in mezzo a tutta quest'erba. Quaggiù è quanto di più simile a una piazza.",
	},
	["mul.victory.01"] = {
		"L'erba si richiude sullo scontro come se non fosse mai successo. Mulgore dimentica in fretta.",
		"Finita. Il vento sta già ripettinando l'erba.",
	},
	["mul.victory.02"] = {
		"abbassa l'arma e riprende fiato, mentre un rapace delle pianure scende a cerchi più stretti, pieno di speranza.",
		"si raddrizza nell'erba alta, col fiato corto, mentre un plainstrider osserva da una distanza prudente.",
	},
	["mul.weather_change.01"] = {
		"guarda le nuvole aprirsi sopra le mese, e l'erba di Mulgore accendersi d'oro da un capo all'altro.",
		"osserva il cielo che si apre largo e azzurro sopra la pianura, mentre le ombre delle ultime nuvole scappano via sull'erba.",
	},
	["mul.attack.w02.01"] = {
		"Sta' fermo. La pianura è vasta, ma non fino a quel punto.",
		"Scappa pure. Quaggiù non c'è niente dietro cui nasconderti.",
		"Ecco! Che il vento porti questa ai tuoi simili.",
	},
	["mul.battle.w02.01"] = {
		"Fuori dall'erba, allora. Vediamoti allo scoperto.",
		"Ho visto l'erba muoversi. Avanti, fatti vedere.",
		"Hai scelto la prateria aperta per un agguato. Pessima idea.",
	},
	["mul.battle.w02.02"] = {
		"Uomini-cinghiale. Tutti setole e cattive maniere. Ci vuole una spuntatina.",
		"Giù la lancia, maiale. A Mulgore nessuno ti ha invitato.",
	},
	["mul.battle.w02.03"] = {
		"pianta i piedi nell'erba alta mentre il vento la schiaccia, e si volta ad affrontare quello che ne sbuca.",
		"resta piantato in mezzo all'erba aperta: nessun riparo, e nessuna voglia di cercarne.",
	},
	["mul.battle.w02.04"] = {
		"Ha solo fame. I denti non diventano più piccoli per questo.",
		"I cacciatori della pianura sfiancano la preda finché non crolla. Io invece la faccio breve.",
		"Guarda le spalle, non le fauci. Sono le spalle a dirti quando salta.",
	},
	["mul.lowhp.w02.01"] = {
		"I rapaci girano già in tondo. Non ancora. Non per me.",
		"Respira. Trema la terra, o tremo io. In ogni caso, resta in piedi.",
		"Troppo cielo aperto sopra di me. Preferirei non guardarlo con la schiena nell'erba.",
	},
	["mul.muse.w02.01"] = {
		"Thunder Bluff si alza dalla pianura come una tavola apparecchiata per giganti. Da quaggiù gli ascensori sembrano fili.",
		"Anche dall'altro capo della prateria si vedono le rupi, e il fumo della città che scivola via dalla cima.",
	},
	["mul.muse.w02.02"] = {
		"Oltre le rupi ci sono le Red Rocks, dove i tauren vanno a onorare i loro morti. Lì perfino il vento soffia più piano.",
		"I tauren parlano delle Red Rocks come si parla di una tomba che è anche un focolare: sottovoce, e con riguardo.",
	},
	["mul.muse.w02.03"] = {
		"osserva un cane della prateria spuntare dalla tana, {g:fissarlo|fissarla} indignato e sparire di nuovo.",
		"gira con cautela intorno a un intero villaggio di tane di cani della prateria, mentre una dozzina di testoline si abbassa al suo passaggio.",
		"sente il fischio d'allarme di un cane della prateria, e l'intera colonia sparisce sottoterra in un colpo solo.",
	},
	["mul.quest_complete.w02.01"] = {
		"È fatto. Dite ai mandriani che il sentiero è libero, almeno fino a domani.",
		"Ecco. Un piccolo nodo sciolto, in questa pianura.",
		"Fatto, e volentieri. La pianura è stata generosa con me: è il minimo.",
	},
	["mul.quest_progress.w02.01"] = {
		"Non è ancora finita. Il resto è là fuori nell'erba, e l'erba non dice dove.",
		"Una parte è sistemata. La pianura nasconde bene il resto, ma non per sempre.",
	},
	["mul.victory.w02.01"] = {
		"E i plainstrider non hanno nemmeno alzato la testa. Pubblico difficile.",
		"Ben combattuto, lo dico da me. Quaggiù nessun altro lo farà.",
	},
	["mul.victory.w02.02"] = {
		"La terra se lo riprende. Quaggiù funziona così: nella pianura niente resta sprecato a lungo.",
		"Adesso è immobile. Verranno i rapaci, poi gli scarabei, poi l'erba. Mulgore non butta via niente.",
		"Ha lottato, ha perso. Quaggiù la storia è tutta qui, e la pianura la racconta ogni giorno.",
	},
	["mul.victory.w02.03"] = {
		"pulisce l'arma su un ciuffo d'erba e guarda la pianura, lasciando che il vento asciughi il sudore.",
		"prende un lungo respiro di vento che sa d'erba pulita, e lo scontro è già alle spalle.",
		"si raddrizza e passa l'erba con lo sguardo, in cerca della prossima sagoma che avanzi controvento.",
	},
	["mul.attack.w16.cry.001"] = {
		"Senti la pianura, in questo colpo!",
		"Dall'erba, con sentimento!",
	},
	["mul.attack.w16.cry.002"] = {
		"Saluti dalla pianura!",
		"Un regalo dalla pianura!",
		"Omaggio della pianura!",
	},
	["mul.attack.w16.cry.003"] = {
		"Giù, nell'erba!",
		"Bacia la terra!",
		"Ti lascio alla pianura!",
	},
	["mul.attack.w16.cry.004"] = {
		"Come un kodo contro uno steccato!",
		"Con il peso di un kodo dietro!",
	},
	["mul.attack.w16.cry.005"] = {
		"Adesso, finché l'erba nasconde il gesto.",
		"Rasoterra, nell'erba. Ora.",
	},
	["mul.attack.w16.cry.006"] = {
		"I rapaci mi ringrazieranno dopo!",
		"Qualcosa per i rapaci!",
	},
	["mul.attack.w16.cry.007"] = {
		"si lancia all'attacco, con l'erba che vola via intorno ai piedi.",
		"colpisce dall'erba alta senza un rumore.",
	},
	["mul.attack.w16.cry.008"] = {
		"Che lo sentano anche le mese!",
		"Così forte che lo sentano a Thunder Bluff!",
		"Che rimbombi fino alle rupi!",
	},
	["mul.attack.w16.cry.009"] = {
		"L'erba non ti salva, adesso!",
		"Mettici radici!",
	},
	["mul.attack.w16.cry.010"] = {
		"Alla velocità di un plainstrider!",
		"Prima che un cane della prateria batta ciglio!",
		"Con lo scatto di un puma nell'erba!",
	},
	["mul.attack.w16.cry.011"] = {
		"Come dicono i mandriani: colpisci una volta, colpisci giusto.",
		"Un colpo solo e pulito, come fanno i cacciatori della pianura.",
	},
	["mul.attack.w16.cry.012"] = {
		"Terreno aperto, niente scampo!",
		"Sotto gli occhi delle mese!",
	},
	["mul.battle.w16.plain.001"] = {
		"Terreno morbido sotto l'erba. Chi scivola qui non si rialza in fretta.",
		"Piedi ben piantati, vista libera. Fra noi due solo qualche passo di verde.",
	},
	["mul.battle.w16.plain.002"] = {
		"Occhio alle tane. Mi seccherebbe se a vincere per te fosse un cane della prateria.",
		"Attenzione ai buchi nel prato. Non tifano per nessuno.",
	},
	["mul.battle.w16.plain.003"] = {
		"Impronte di zoccoli, solchi di ruote, vecchie piste di kodo. Resta sulla terra battuta: quella non cede.",
		"La pista è più dura dell'erba ai lati. Combatti sulla pista.",
	},
	["mul.battle.w16.plain.004"] = {
		"si sistema su un tratto d'erba calpestata ai piedi di un lieve pendio, in attesa della prima mossa.",
		"si volta di fronte alla minaccia, il lungo declivio della pianura alle spalle.",
	},
	["mul.battle.w16.plain.005"] = {
		"Hai scelto il campo più largo di Kalimdor per perdere.",
		"Niente mura, niente ripari, nessuno da incolpare. Solo noi due.",
		"Con tutto questo spazio, mi vieni dritto addosso. Che coraggio.",
	},
	["mul.battle.w16.plain.006"] = {
		"Anche in una terra così mite, c'è sempre qualcosa che cerca lo scontro.",
		"Le mandrie continuano a pascolare a un tiro di sasso. Ne hanno visti troppi, di questi, per alzare la testa.",
	},
	["mul.battle.w16.plain.007"] = {
		"I tauren dicono che la Madre Terra guardi ogni filo d'erba, qui. Allora che guardi anche questo.",
		"Sotto lo sguardo della Madre Terra, allora. Pulito e svelto.",
	},
	["mul.battle.w16.plain.008"] = {
		"Non vicino al totem. Qualcuno l'ha intagliato, e non sarò io a ripagarlo.",
		"Lontano dai totem. Se ne butti giù uno, i tauren se la prendono con tutti e due.",
	},
	["mul.battle.w16.plain.009"] = {
		"solleva una nuvola di semi dall'erba mentre accorcia le distanze.",
		"avanza a testa bassa nell'erba che arriva al ginocchio, in fretta e senza rumore.",
		"traccia una linea dritta nell'erba, sparpagliando spighe a ogni passo.",
	},
	["mul.battle.w16.plain.010"] = {
		"Da qui lo vedo arrivare con largo anticipo. Guarda, aspetta, poi muoviti.",
		"In campo aperto il primo errore si vede da lontano. Che non sia il mio.",
	},
	["mul.battle.w16.plain.011"] = {
		"Mulgore è una terra gentile. A me nessuno ha mai chiesto di esserlo.",
		"Colline dolci, gente buona, mandrie lente. E poi ci sono io.",
	},
	["mul.battle.w16.plain.012"] = {
		"lancia un'occhiata alle mese lontane, come per fissarsele in mente, poi si volta verso lo scontro.",
		"si mette con le spalle a un masso isolato, l'unico riparo per un bel tratto.",
	},
	["mul.battle.w16.plain.013"] = {
		"C'è un cielo intero lassù a guardare. Diamogli qualcosa che valga la pena vedere.",
		"Allo scoperto, allora. Niente trucchi, niente angoli.",
		"Affrontami dove le colline possano vederlo.",
	},
	["mul.battle.w16.plain.014"] = {
		"Gli anziani dicono che la pianura ricorda ogni scontro combattuto su di lei. Dalle uno scontro breve.",
		"Che sia breve. Queste colline ne hanno visti abbastanza.",
	},
	["mul.battle.w16.plain.015"] = {
		"Qui? In mezzo all'erba più bella di Kalimdor? E va bene.",
		"Possibile che in questa pianura nessuno si limiti a pascolare?",
		"Fra tutti i bei prati, proprio qui ti metti a fare a botte.",
	},
	["mul.battle.w16.plain.016"] = {
		"sposta il peso nell'erba e saggia il terreno una volta, prima che conti davvero.",
		"si mette in guardia sulla terra morbida, che cede appena.",
	},
	["mul.battle.w16.plain.017"] = {
		"Ridi finché puoi, gnoll. È un verso brutto, e non durerà.",
		"Palemane. Sentivo la puzza della conceria fin dal sentiero.",
	},
	["mul.battle.w16.plain.018"] = {
		"Scuoiatori. Spellano tutto ciò che passa dalla loro rupe. Non me.",
		"Questi gnoll spogliano la pianura di tutto ciò che ha una pelliccia. È ora che qualcuno gli tolga il vizio.",
	},
	["mul.battle.w16.plain.019"] = {
		"Scendi dal cielo, arpia. L'erba sarà il tuo posto.",
		"Tutti quegli strilli da Windfury Ridge, ed era per questo?",
	},
	["mul.battle.w16.plain.020"] = {
		"segue con lo sguardo l'arpia che volteggia in alto, e aspetta la picchiata.",
		"alza gli occhi verso la sagoma che strilla lassù e pianta bene i piedi.",
	},
	["mul.battle.w16.quill.001"] = {
		"Puzzi come un rovo che si è rotolato nel fango. Sbrighiamoci.",
		"Già con le setole dritte? Non ho nemmeno cominciato.",
	},
	["mul.battle.w16.quill.002"] = {
		"Torna nel burrone, Bristleback. La pianura non ha bisogno delle tue spine.",
		"Brambleblade ti sta stretta? Ti trovo io un buco più piccolo.",
	},
	["mul.battle.w16.quill.003"] = {
		"Gli uomini-cinghiale combattono sporco e da vicino. Tieni la distanza, e occhio alle zanne.",
		"Caricano a testa bassa. Fatti da parte e lascia passare la carica.",
	},
	["mul.battle.w16.quill.004"] = {
		"sente i grugniti prima che l'erba si apra, ed è {g:pronto|pronta} quando l'uomo-cinghiale sbuca fuori.",
		"affronta l'uomo-cinghiale arricciando il naso per il tanfo di setole bagnate.",
	},
	["mul.battle.w16.quill.005"] = {
		"Spine, zanne e un caratteraccio. Io di quei tre ne ho uno.",
		"Le tue spine non spaventano nessuno, in questa pianura.",
	},
	["mul.battle.w16.quill.006"] = {
		"Qualunque sia la vecchia lite fra loro e i tauren, per il prossimo minuto è affar mio.",
		"La faida non è mia. Ma è lei che è venuta a cercarmi.",
	},
	["mul.battle.w16.quill.007"] = {
		"Strilli già? Tienine un po' per dopo.",
		"È un grido di guerra, o hai solo fame?",
	},
	["mul.battle.w16.quill.008"] = {
		"scavalca un groviglio di sterpi spinosi trascinati fuori dal burrone, e va incontro alla carica.",
		"si prepara mentre l'uomo-cinghiale abbassa la testa per caricare.",
	},
	["mul.battle.w16.quill.009"] = {
		"Bristleback. Fuori dai rovi e allo scoperto, dove ti vedo bene.",
		"La prossima volta lascia le spine a casa.",
		"Fuori dalla macchia, uomo-cinghiale. Sistemiamola sotto gli occhi di tutti.",
	},
	["mul.battle.w16.quill.010"] = {
		"Basso e pesante, tutto spalle. Non lasciare che ti venga sotto la guardia.",
		"Quel tanfo vuol dire che è vicino. Girati, subito.",
	},
	["mul.battle.w16.quill.011"] = {
		"Corri al burrone e racconta agli altri cosa li aspetta qua fuori.",
		"Un'altra volta porta gli amici. Ti serviranno.",
	},
	["mul.battle.w16.quill.012"] = {
		"squadra l'uomo-cinghiale dagli zoccoli infangati alla cresta irta, per niente {g:impressionato|impressionata}.",
		"accoglie lo strillo dell'uomo-cinghiale con un'occhiata piatta e annoiata.",
	},
	["mul.battle.w16.venture.001"] = {
		"Venture Co.! Il tuo contratto copre anche questa parte?",
		"Spero che la compagnia paghi l'indennità di rischio. Stai per guadagnartela.",
	},
	["mul.battle.w16.venture.002"] = {
		"Ogni ceppo di questa pianura porta il tuo marchio, goblin.",
		"Hai abbattuto alberi. Vediamo come cadi tu.",
		"Conta i ceppi che hai lasciato. Poi conta fino a tre.",
	},
	["mul.battle.w16.venture.003"] = {
		"I goblin non combattono mai gratis. Qualcuno viene pagato per questo, e non sono io.",
		"Uno della compagnia. Stivali da poco, rancore costoso.",
	},
	["mul.battle.w16.venture.004"] = {
		"si mette fra il goblin e il legname accatastato, i tronchi tagliati che sanno ancora di legno verde.",
		"allontana con un calcio un cuneo caduto e si volta verso il goblin.",
	},
	["mul.battle.w16.venture.005"] = {
		"Questa segnatela alla voce perdite.",
		"Quanto vale un goblin, a Mulgore? Scopriamolo.",
	},
	["mul.battle.w16.venture.006"] = {
		"Questa terra non è una cava, e qui non comandi tu.",
		"La miniera, le seghe, i carrelli. Mulgore li ha già pagati abbastanza.",
	},
	["mul.battle.w16.venture.007"] = {
		"Prima la miniera, poi il disboscamento. La pianura si restringe ogni volta che la compagnia manda qualcuno.",
		"Qui nessuno ha chiesto una miniera.",
	},
	["mul.battle.w16.venture.008"] = {
		"Scava da un'altra parte. I tauren questa buca non te l'hanno mai venduta.",
		"Bael'dun? Le tue montagne sono parecchio lontane da qui.",
	},
	["mul.battle.w16.venture.009"] = {
		"Cosa cercano, giù in quella fossa? Qualunque cosa sia, la difenderanno.",
		"Un nano sul suo scavo combatte come se fosse terra di famiglia. Non lo è.",
	},
	["mul.battle.w16.venture.010"] = {
		"scavalca un picchetto da rilevamento piantato nell'erba e va dritto addosso a chi scava.",
		"scalcia via la terra smossa di un cumulo di scavo e si fa sotto.",
	},
	["mul.battle.w16.venture.011"] = {
		"Stacca prima, goblin. Per sempre.",
		"Di' al tuo capo che hai incontrato resistenza.",
	},
	["mul.battle.w16.venture.012"] = {
		"Lascia le seghe. Lascia i carrelli. Lascia Mulgore.",
		"Gli alberi restano. Tu te ne vai.",
	},
	["mul.battle.w16.wild.001"] = {
		"I puma aspettano nell'erba alta con le orecchie basse. Questo ha aspettato troppo.",
		"Felino nell'erba. Guarda la coda: frusta l'aria prima del balzo.",
	},
	["mul.battle.w16.wild.002"] = {
		"Un plainstrider che attacca briga. Davvero, la pianura è piena di meraviglie.",
		"Beccami ancora e vedi dove ti porta, uccellaccio.",
	},
	["mul.battle.w16.wild.003"] = {
		"Dov'è il resto del branco? Qui i lupi cacciano di rado da soli.",
		"Girami intorno quanto vuoi, lupo. Io giro con te.",
	},
	["mul.battle.w16.wild.004"] = {
		"Ehi, rapace! Scendi a combattere per terra, come un uccello con un po' di giudizio.",
		"Tutto artigli e niente pazienza. Chiudiamola qui.",
	},
	["mul.battle.w16.wild.005"] = {
		"si gira verso il cinghiale che raspa il terreno e abbassa le zanne.",
		"pianta i piedi mentre il cinghiale gratta la terra con lo zoccolo.",
	},
	["mul.battle.w16.wild.006"] = {
		"Sta difendendo qualcosa. Una tana, un nido, un piccolo nell'erba. Farò in fretta.",
		"Posto sbagliato, temo. È il suo, non il mio.",
	},
	["mul.battle.w16.wild.007"] = {
		"I cacciatori di qui ringraziano la bestia prima della caccia. Ecco, grazie.",
		"Grazie per la caccia, direbbe un tauren. Io lo dirò dopo.",
	},
	["mul.battle.w16.wild.008"] = {
		"sente un kodo muggire lontano nell'erba, e la mandria comincia ad allontanarsi dallo scontro.",
		"nota i plainstrider che si sparpagliano, zampe lunghe che guizzano nell'erba.",
	},
	["mul.battle.w16.wild.009"] = {
		"Persino i cani della prateria hanno smesso di fischiare. Vuol dire che si fa sul serio.",
		"Tutte le testoline che spuntavano un attimo fa sono sparite in un buco.",
	},
	["mul.battle.w16.wild.010"] = {
		"Perfino le mandrie sanno farsi da parte. Dovevi imparare da loro.",
		"I kodo la rogna la girano alla larga. Tu invece l'hai cercata.",
	},
	["mul.battle.w16.wild.011"] = {
		"Quaggiù tutto o pascola o caccia. Adesso conviene che sia io a cacciare.",
		"Chi pascola e chi caccia. Mulgore non conosce una terza via, quindi scegli.",
	},
	["mul.battle.w16.wild.012"] = {
		"Se c'è un puma che guarda dall'erba, farà bene a prendere appunti.",
		"In quest'erba c'è di sicuro un puma che sta imparando come si fa.",
	},
	["mul.battle.w16.wild.013"] = {
		"sente i grilli ammutolire nell'erba tutt'intorno, mentre lo scontro comincia.",
		"sente la pianura fermarsi per un istante, come se la terra stessa stesse ad ascoltare.",
	},
	["mul.battle.w16.wild.014"] = {
		"Questo è terreno di caccia, e tu hai confuso le parti.",
		"Terreno di caccia. Indovina chi caccia chi.",
	},
	["mul.battle.w16.wild.015"] = {
		"I mandriani dicono che chi sbuca dall'erba alta ha già scelto te. E allora scegli anche tu.",
		"Quello che è sbucato dall'erba ha scelto me. Bene: adesso scelgo io.",
	},
	["mul.journey.w16.land.001"] = {
		"scende sulla terra salda di Mulgore e resta un momento lì, lasciando che la pianura smetta di muoversi.",
		"pianta entrambi i piedi nell'erba e aspetta che il terreno smetta di sembrare sul punto di ondeggiare.",
		"scende tra i semi d'erba e il ronzio degli insetti, con il terreno piacevolmente deciso a restare fermo.",
	},
	["mul.journey.w16.land.002"] = {
		"A terra. L'erba arriva alla cintola e l'orizzonte è dove deve stare, lontano.",
		"Piedi a terra, e Mulgore smette di essere una mappa e diventa un posto, tutto in un colpo.",
	},
	["mul.journey.w16.land.003"] = {
		"Terra. Bene. Il cielo lo ammiro da quaggiù, grazie.",
		"E giù. Le mie gambe vorrebbero scambiare due parole con chi ha inventato il volo.",
		"Finalmente giù. La pianura non sobbalza, ed è una qualità che apprezzo in un posto.",
	},
	["mul.journey.w16.land.004"] = {
		"scende dentro l'odore della pianura: erba schiacciata, polvere e, lontano, il fumo di un fuoco da campo.",
		"atterra e si volta piano tutt'intorno, ritrovando una a una le mese, le piste e le rupi lontane.",
	},
	["mul.journey.w16.land.005"] = {
		"Piedi giù, sacca sistemata. Da qui in avanti, Mulgore si misura di nuovo in passi.",
		"Atterraggio fatto. La parte veloce è finita, e la pianura riprende il suo passo lento.",
	},
	["mul.journey.w16.land.006"] = {
		"atterra sotto lo sguardo mite di un kodo al pascolo lì vicino, che mastica, riflette e torna alla sua erba.",
		"scende accanto a un gruppetto di plainstrider al pascolo, che si sparpagliano in un groviglio di zampe lunghe e poi si fermano a fissare.",
	},
	["mul.journey.w16.land.007"] = {
		"Scendere fa uno strano effetto, per un attimo. Poi l'erba è sotto i piedi e tutto torna a posto.",
		"Un po' {g:incerto|incerta}, poi per niente. La pianura ha un suo modo di tenerti in piedi.",
	},
	["mul.journey.w16.rise.001"] = {
		"La terra mi lascia andare. Sotto, le mandrie di kodo si riducono a lente perline scure infilate nell'erba.",
		"Più in alto, e le mandrie diventano puntini che quasi non si muovono. Da quassù Mulgore se ne sta immobile.",
		"Su, e via. Le mandrie qua sotto diventano una manciata di semi sparsi su un panno verde.",
	},
	["mul.journey.w16.rise.002"] = {
		"si alza sopra la pianura, e Thunder Bluff appare intera: mese unite da ponti di corda, alte sopra ogni cosa.",
		"sale nell'aria aperta mentre le grandi mese scivolano di lato, abbastanza vicine da contarne i totem in cima.",
	},
	["mul.journey.w16.rise.003"] = {
		"Un plainstrider là sotto si mette a correre di fianco per un tratto, poi rinuncia e fa finta di essersi fermato apposta.",
		"Là sotto un cane della prateria si tuffa nella tana mentre gli passo sopra. Niente di personale.",
	},
	["mul.journey.w16.rise.004"] = {
		"guarda i pozzi di Mulgore scorrere là sotto, ognuno un piccolo occhio scuro nell'erba, con i sentieri che vi convergono come i raggi di una ruota.",
		"guarda in giù mentre Stonebull Lake scivola via, una lastra d'acqua piatta in mezzo alla pianura.",
	},
	["mul.journey.w16.rise.005"] = {
		"Da quassù le cicatrici si vedono: i ceppi e i cumuli di scorie della Venture Co., piccoli e brutti su tutto quel verde.",
		"L'altezza non mente. Fa vedere dove hanno tagliato i goblin: una chiazza spoglia nel verde, come un dente che manca.",
	},
	["mul.journey.w16.rise.006"] = {
		"La pianura mi si apre sotto come un palmo teso. Difficile credere che qualcuno la attraversi tutta a piedi.",
		"Tutta quell'erba, e da quassù nessun sentiero sembra lungo. La distanza dipende da dove ti trovi.",
	},
	["mul.journey.w16.rise.007"] = {
		"Su, con calma. Occhio alle mese.",
		"Finalmente via da terra. Mulgore è più bella senza i miei piedi dentro.",
		"Più su! Voglio vedere dove finisce la pianura.",
	},
	["mul.landmark.w16.mark.001"] = {
		"{landmark}. Un accampamento in cima al mondo, o quasi. Chi impara a camminare qui impara a guardare lontano.",
		"Un accampamento alto sopra la pianura, con l'orlo della mesa sempre a pochi passi.",
	},
	["mul.landmark.w16.mark.002"] = {
		"entra nell'accampamento e passa tra le tende, dove nessuno ha fretta e nessuno se ne sta con le mani in mano.",
		"si fa strada nell'accampamento, salutando con un cenno chi alza gli occhi, mentre oltre l'orlo della mesa la pianura si apre larga.",
		"attraversa l'accampamento sotto gli occhi della sua gente, che alza lo sguardo, {g:lo|la} misura e si rimette all'opera.",
	},
	["mul.landmark.w16.mark.003"] = {
		"Pace a questo accampamento. C'è dell'acqua per chi è in cammino?",
		"Buon accampamento. Abbastanza in alto da vedere i guai arrivare da lontano.",
		"Bel trespolo. Spero che qui nessuno sia sonnambulo.",
	},
	["mul.landmark.w16.mark.004"] = {
		"Questo accampamento sta dove la mesa si affaccia su tutto. Qualunque lezione impartita qui ha una vista inclusa.",
		"Alto, quieto, e lontano da qualunque cosa possa metterti fretta. Un buon terreno per imparare.",
	},
	["mul.landmark.w16.mark.005"] = {
		"entra fra le grandi tende di {landmark}, con le pelli dipinte tese su telai alti come alberi.",
		"arriva nel villaggio, e il silenzio della pianura lascia il posto alle voci, allo scricchiolio dei pali delle tende e ai colpi di un mazzuolo.",
		"entra nel villaggio attraverso l'odore di pelli conciate e di fumo di legna, con voci basse e senza fretta da ogni parte.",
	},
	["mul.landmark.w16.mark.006"] = {
		"Un villaggio che sta seduto sulla pianura invece di opporlesi. Niente mura. Pare non averne bisogno.",
		"Niente palizzata, niente cancello, niente fra le tende e l'erba. Il villaggio si fida della pianura, e la pianura sembra meritarselo.",
		"Aperto all'erba da ogni lato. Quaggiù un villaggio è un posto dove la gente si mette d'accordo per smettere di camminare.",
	},
	["mul.landmark.w16.mark.007"] = {
		"Bloodhoof. Odore di fumo e di buona cucina. Potrei fermarmi un po'.",
		"Pace a ogni tenda di questo villaggio. Fa bene entrare da qualche parte.",
		"Che bello vedere tende e facce. C'è un posto dove sedersi?",
	},
	["mul.landmark.w16.mark.008"] = {
		"{landmark} sta all'incrocio di tutte le piste di Mulgore, a quanto pare. Prima o poi ci passano tutti, e quasi tutti si fermano a mangiare.",
		"A metà strada fra l'accampamento sulla mesa e le grandi rupi. Qualunque cosa succeda a Mulgore, la voce arriva qui per prima, probabilmente.",
	},
	["mul.landmark.w16.mark.009"] = {
		"sosta accanto a uno dei totem del villaggio, volti scolpiti impilati uno sull'altro, con gli occhi fissi sulla pianura.",
		"fa una pausa sotto un alto totem al margine del villaggio, i volti intagliati e dipinti ammorbiditi dall'aria aperta.",
	},
	["mul.lowhp.w16.hold.001"] = {
		"Ferita brutta. Tieni i piedi sotto di te: questa terra è gentile, ma non ti regge in piedi.",
		"Troppi colpi presi. Meno passi, ma giusti.",
	},
	["mul.lowhp.w16.hold.002"] = {
		"Questo ha fatto male. Te lo farò pagare.",
		"Ho più testardaggine io di quanti denti hai tu.",
		"Colpiscimi ancora. Vedrai quanto ti costa.",
	},
	["mul.lowhp.w16.hold.003"] = {
		"barcolla, si regge su un ginocchio nell'erba e si rialza, più {g:lento|lenta} di prima.",
		"ondeggia sul terreno morbido, ma resta in piedi.",
	},
	["mul.lowhp.w16.hold.004"] = {
		"Mani che tremano. Va bene. Anche le mani che tremano si chiudono a pugno.",
		"Tremano. Lasciale tremare, e continua a muoverti.",
		"Chiudi il pugno. Stringi forte.",
	},
	["mul.lowhp.w16.hold.005"] = {
		"I mandriani mi troverebbero fra un giorno o due. Preferisco risparmiargli la camminata.",
		"Qualcuno dovrebbe venire fin qui a cercarmi. Meglio non chiederlo a nessuno.",
	},
	["mul.lowhp.w16.hold.006"] = {
		"Mi vuoi nell'erba? Vieni a mettermici tu.",
		"A terra? Io? Impegnati di più.",
		"Stendimi, se ci riesci. Mi rialzo verde d'erba.",
	},
	["mul.lowhp.w16.hold.007"] = {
		"Pensa ai pozzi. Acqua pulita, una lunga bevuta, dopo. Ci dev'essere un dopo.",
		"Acqua fresca da un pozzo di pietra. Tieniti stretto quel pensiero e vai avanti.",
	},
	["mul.lowhp.w16.hold.008"] = {
		"ondeggia sui piedi ben piantati nell'erba, {g:ferito|ferita}, e non cade.",
		"incassa un colpo duro, arretra di tre passi e tiene.",
	},
	["mul.lowhp.w16.hold.009"] = {
		"Ahia. D'accordo, questo colpo lo metto in conto.",
		"Questo lascerà un livido grande come una mesa.",
		"Ahi. Anche Mulgore ha il suo lato cattivo.",
	},
	["mul.lowhp.w16.hold.010"] = {
		"Pensa a qualsiasi cosa tranne il dolore. I kodo che pascolano. Le colline verdi e lente. Qualsiasi cosa.",
		"Il dolore dopo. Per ora, immagina le mandrie che avanzano piano nell'erba.",
	},
	["mul.lowhp.w16.hold.011"] = {
		"Mulgore, reggimi ancora un po'.",
		"Terra sotto di me, resta ferma. Ho bisogno di te.",
	},
	["mul.lowhp.w16.hold.012"] = {
		"Mi fischiano le orecchie come il vento nell'erba. No, sono io. Concentrati.",
		"La pianura pende da un lato. Non è lei, sono io. Raddrizzati.",
	},
	["mul.lowhp.w16.hold.013"] = {
		"Me ne resta abbastanza. Per un pelo, ma abbastanza.",
		"Una ferita non è una sconfitta. Ricordatelo.",
		"Colpo incassato, partita aperta. C'è differenza.",
	},
	["mul.lowhp.w16.hold.014"] = {
		"si inginocchia, stringe un ciuffo d'erba e ci si aggrappa per tirarsi su.",
		"cade su un ginocchio, strappa una manciata d'erba per rialzarsi, e si volta di nuovo verso il nemico.",
	},
	["mul.lowhp.w16.hold.015"] = {
		"Non scappare. In questa pianura tutto corre più veloce di me, e lo sa.",
		"Scappare non serve, qui. In campo aperto vincono sempre i più veloci.",
	},
	["mul.lowhp.w16.hold.016"] = {
		"Ah. Ecco com'è l'erba vista da vicino.",
		"Bel colore, quest'erba. Ne sto vedendo parecchia, adesso.",
	},
	["mul.lowhp.w16.hold.017"] = {
		"La pianura quasi non si accorgerebbe di un'altra sagoma immobile nell'erba. Falle notare qualcos'altro.",
		"Un'altra sagoma immobile nell'erba. Non io. Non così.",
	},
	["mul.lowhp.w16.hold.018"] = {
		"Dovrai finire il lavoro da solo. Io non ti aiuto.",
		"Vuoi vedermi a terra? Te lo devi guadagnare.",
		"Per te non mi sdraio.",
	},
	["mul.lowhp.w16.hold.019"] = {
		"I guerrieri di Bloodhoof mi direbbero lo stesso: pianta i piedi e tieni duro.",
		"Piedi piantati, e tieni la posizione. Qualunque guerriero della pianura lo direbbe.",
	},
	["mul.lowhp.w16.hold.020"] = {
		"si piega su una ferita per un attimo, poi si raddrizza con un grugnito, gli occhi sul nemico.",
		"si piega in due per un istante, poi si tira su di nuovo, a denti stretti.",
	},
	["mul.muse.w16.folk.001"] = {
		"coglie l'odore di pelli in concia che arriva da qualche parte sopravvento, pungente e affumicato, non sgradevole.",
		"arriccia il naso a una zaffata di cuoio in concia: il profumo tipico della pianura.",
		"avverte nell'aria l'aroma affumicato di pelli messe a conciare, da qualche parte lì vicino.",
	},
	["mul.muse.w16.folk.002"] = {
		"I cacciatori tauren ringraziano l'animale prima di scuoiarlo. C'è chi ci ride sopra. Non chi li ha visti farlo.",
		"Quaggiù una caccia finisce con qualche parola sommessa sulla preda. I tauren prendono la carne, ma non la danno per scontata.",
		"Da cacciatori, i tauren uccidono quando devono, poi si fermano e dicono qualcosa alla bestia. Cambia l'aspetto di tutta la faccenda.",
	},
	["mul.muse.w16.folk.003"] = {
		"Chiedi la strada a un tauren e prenditela comoda: te la dirà tutta, con la storia di ogni collina lungo il percorso.",
		"Nessun tauren mette fretta a una frase. Alla fine sai dove vai, e perché quel posto si chiama così.",
		"Mai fare a un tauren una domanda veloce. In pianura non esistono.",
	},
	["mul.muse.w16.folk.004"] = {
		"Gli anziani di Bloodhoof dicono che un tauren che dimentica l'erba presto dimentica la via di casa. Difficile dimenticarla, qui: sta sotto ogni passo.",
		"I mandriani dicono che la pianura ricorda ogni passo che la attraversa. Spero che i miei li ricordi leggeri.",
		"Gli anziani tauren parlano dell'erba come altri parlano della famiglia: qualcosa a cui appartieni prima ancora di sceglierlo.",
	},
	["mul.muse.w16.folk.005"] = {
		"sente un tamburo lento da qualche parte, lontano oltre l'erba, e il suo passo finisce per andargli a tempo.",
		"inclina la testa al battere lontano di un tamburo tauren, troppo distante per capire se chiami a una festa o a un consiglio.",
		"coglie il tonfo debole di un tamburo portato sopra la pianura, regolare come un passo lento.",
	},
	["mul.muse.w16.folk.006"] = {
		"I guerrieri percorrono i sentieri a coppie, senza fretta, la lancia in spalla. Nessuno lo chiamerebbe un muro, ma ne fa il lavoro.",
		"Mulgore non ha mura. Ha dei tauren che notano le cose, e scavalcare quelle è più difficile.",
		"La pianura è sorvegliata alla maniera tauren: niente torri, niente cancelli, solo qualcuno di grosso e tranquillo che per caso sta guardando.",
	},
	["mul.muse.w16.folk.007"] = {
		"Mai rifiutare una seconda scodella a Mulgore. Chi cucina ne porterà una terza, giusto per farti capire.",
		"Lo stufato tauren è fatto soprattutto di pazienza e di kodo. Il resto non lo chiedo, ed è sempre buono.",
		"Quando i tauren ti offrono da mangiare, mangia. Rifiutare dura più del pasto, e perdi comunque.",
	},
	["mul.muse.w16.folk.008"] = {
		"Le facce intagliate sui totem guardano la pianura senza battere ciglio. Chi le ha scolpite ha dato loro tanta pazienza e pochissimo umorismo.",
		"I totem, qui, non sono decorazioni. Qualcuno ci ha speso una stagione intera, e si vede in ogni solco.",
		"Ogni totem sembra aspettare una risposta, e nessuno pare avere fretta di riceverla.",
	},
	["mul.muse.w16.folk.009"] = {
		"risponde al lento cenno di un mandriano di passaggio, che non rallenta né si volta a guardare.",
		"si fa da parte sul sentiero per un tauren carico di un fascio di pali lunghi come un carro, e riceve in cambio un grazie solenne.",
		"scambia un cenno con un tauren sul sentiero: tutto il saluto, senza una parola e senza fermarsi.",
	},
	["mul.muse.w16.folk.010"] = {
		"Gli orchi aiutarono i tauren a respingere i centauri e a raggiungere questa terra, e i tauren non l'hanno mai dimenticato. Nella pianura i debiti si ricordano per generazioni.",
		"C'è chi si chiede cosa leghi i tauren agli orchi. Basta chiedere delle incursioni dei centauri, e di chi arrivò a fermarle.",
		"Prima di Mulgore, i tauren erano braccati dai centauri attraverso le Barrens. Certe amicizie nascono da chi si è fatto vivo quando contava.",
	},
	["mul.muse.w16.folk.011"] = {
		"Il cuoio lavorato dai tauren dura più di qualunque cosa ci si cucia sopra. Chiedilo a qualsiasi mercante di Bloodhoof.",
		"Il cuoio compralo in pianura. Pelle di kodo, lavorata con calma, cucita da chi si aspetta che duri.",
		"Il buon cuoio esce da mani pazienti, e Mulgore ne è piena.",
	},
	["mul.muse.w16.folk.012"] = {
		"I druidi tauren sanno restare seduti nell'erba così a lungo che gli uccelli smettono di farci caso. Ci ho provato. Gli uccelli ci hanno fatto caso.",
		"I druidi di Mulgore ascoltano la terra come un fabbro ascolta il ferro. Io sento solo erba, e forse è proprio quello il punto.",
		"Chissà dove, nell'erba, c'è un druido seduto immobile, e i cani della prateria hanno smesso da un pezzo di badarci.",
	},
	["mul.muse.w16.folk.013"] = {
		"Pane speziato di Mulgore. Pesante abbastanza da tenere aperta una porta, buono abbastanza da fartelo perdonare.",
		"Se qualcuno in pianura ti offre pane speziato, di' di sì. Mastica piano. E poi di' di sì un'altra volta.",
		"Pane speziato della pianura: una pagnotta, tre pasti, e una mascella che sa di aver lavorato.",
	},
	["mul.muse.w16.folk.014"] = {
		"Nessuno, a Mulgore, mi ha chiesto da dove vengo. Mi chiedono se ho mangiato. È una domanda migliore.",
		"Qui uno straniero si giudica da come tratta la terra e le mandrie. È un elenco breve, ed è facile non superarlo.",
		"In questa pianura gli stranieri prima si sfamano, e poi semmai si interrogano.",
	},
	["mul.muse.w16.folk.015"] = {
		"Gli anziani dicono che una promessa fatta in pianura ha per testimone ogni filo d'erba. Di testimoni, quaggiù, ce ne sono parecchi.",
		"Secondo i mandriani, a Mulgore un bugiardo si riconosce perché i kodo non gli stanno vicino. Per sicurezza, dai kodo mi tengo alla larga.",
		"Saggezza da mandriani: l'erba sente ogni giuramento. Il che spiegherebbe perché bisbiglia tanto.",
	},
	["mul.muse.w16.folk.016"] = {
		"Quaggiù la gente saluta da mezzo miglio di distanza. Ricambia, o verranno fin lì a vedere cos'hai che non va.",
		"Le buone maniere di Mulgore: un cenno da lontano, una scodella da vicino, e mai mettere fretta a un mandriano.",
		"Saluta chiunque incroci in pianura. Sono così pochi che ognuno vale.",
	},
	["mul.muse.w16.folk.017"] = {
		"Mercanti orchi sui sentieri, qualche troll, ogni tanto un Reietto che si tiene ben lontano dai fuochi. I tauren fanno posto a tutti noi.",
		"Strana compagnia, quella dell'Orda, e Mulgore la accoglie tutta senza una parola. L'erba non chiede chi la calpesta.",
		"Di tutte le terre dell'Orda, questa è l'unica dove nessuno sembra aver fretta di dimostrare qualcosa.",
	},
	["mul.muse.w16.grass.001"] = {
		"Qui le distanze mentono. Una mesa che sembra a un'ora di cammino ne chiede mezza giornata, e l'erba non lo dice mai.",
		"Niente, in questa pianura, è vicino quanto sembra. Meglio smettere di indovinare e camminare.",
		"Il limite lontano dell'erba si tiene a distanza, per quanto io gli cammini incontro.",
	},
	["mul.muse.w16.grass.002"] = {
		"Winterhoof, Thunderhorn, Wildmane: in questa pianura un pozzo ha un nome, come altrove lo avrebbe un paese.",
		"Quaggiù i veri incroci sono i pozzi. Ogni pista nell'erba, prima o poi, piega verso uno di loro.",
		"Ogni pozzo porta un nome da anziano. Giusto: tengono in vita tutti, e nessuno li ringrazia abbastanza.",
	},
	["mul.muse.w16.grass.003"] = {
		"si toglie una lappola dalla manica, poi un'altra, e rinuncia a contare le restanti.",
		"si scrolla dalle ginocchia una manciata di semi d'erba, e altri ne scendono a prenderne il posto.",
		"si leva i semi da ogni piega dei vestiti: la pianura si fa portare in giro da chiunque.",
	},
	["mul.muse.w16.grass.004"] = {
		"Tutta quest'erba e nemmeno una panchina. Qualcuno dovrebbe parlarne ai tauren.",
		"Un'ora di cammino e il panorama non è cambiato. O mi sono {g:perso|persa}, o Mulgore è molto coerente.",
		"Bel paese. Grande. Molto grande. Ho già detto grande?",
	},
	["mul.muse.w16.grass.005"] = {
		"Stonebull Lake sta in mezzo all'erba come una moneta persa e mai raccolta.",
		"Tanta acqua così dentro la pianura sembra un segreto. Stonebull Lake lo custodisce male: lo sa ogni bestia nel raggio di miglia.",
		"In tutta la pianura, Stonebull Lake è l'unica cosa ferma. Perfino l'erba intorno sembra rallentare.",
	},
	["mul.muse.w16.grass.006"] = {
		"Quaggiù la quiete non è silenzio. È un fruscio d'erba da ogni lato, così costante che me ne accorgo solo quando smette.",
		"La pianura fa un solo suono lungo, un sussurro secco, e dopo un po' diventa il rumore dei pensieri.",
		"Niente muri, niente tetti, niente eco. Una voce, nelle Golden Plains, se ne va per conto suo e si perde senza lasciare traccia.",
	},
	["mul.muse.w16.grass.007"] = {
		"si accovaccia accanto a un ciuffo di peacebloom mezzo nascosto nell'erba, e lo lascia crescere in pace.",
		"nota del silverleaf al riparo di un sasso, piccolo e testardo in mezzo all'erba più alta.",
		"si inginocchia a guardare un rametto di earthroot spuntato dal terreno, poi riprende il cammino senza coglierlo.",
	},
	["mul.muse.w16.grass.008"] = {
		"Sotto l'erba la terra è scura e profonda, ci sparirebbe un pugno intero. Una terra così sfama mandrie da prima che qualcuno ricordi.",
		"Scosta l'erba col piede e sotto trovi terra nera e morbida. Per forza qui tutto cresce grasso e lento.",
		"Il terreno cede appena sotto i piedi, come un letto in cui si è dormito bene.",
	},
	["mul.muse.w16.grass.009"] = {
		"Riempi la borraccia a ogni pozzo che incontri. L'erba sembra rigogliosa, ma a te non darà una goccia.",
		"Tanto verde quaggiù e così poca acqua a giustificarlo. Bevi quando puoi.",
		"Regola della pianura: mai passare oltre un'acqua. Il pozzo successivo è sempre più lontano di quanto credi.",
	},
	["mul.muse.w16.grass.010"] = {
		"Una parte la chiamano Rolling Plains, e il nome è onesto: la terra sale e scende in lunghe onde lente, come un mare che si è scordato di essere bagnato.",
		"Le Rolling Plains si alzano così piano che te ne accorgi solo in cima a un'onda, quando la terra cala da ogni lato.",
		"Certi tratti di Mulgore sono piatti come una tavola. Le Rolling Plains sono la tovaglia dopo che qualcuno l'ha tirata.",
	},
	["mul.muse.w16.grass.011"] = {
		"mastica uno stelo d'erba dolce mentre cammina, senza un motivo che si possa dire.",
		"spezza un lungo filo d'erba e se lo rigira fra due dita strada facendo.",
		"si infila un gambo d'erba all'angolo della bocca e prosegue senza alcuna fretta.",
	},
	["mul.muse.w16.grass.012"] = {
		"Attenzione all'appoggio. L'erba nasconde tane, sassi e ogni tanto qualcosa che dorme, e non avvisa mai.",
		"Camminare a Mulgore è per metà indovinare cosa copre l'erba. Di solito una buca. Di solito.",
		"Sotto tutto quel verde c'è un secondo paese fatto di buche e radici, in attesa di una caviglia.",
	},
	["mul.muse.w16.grass.013"] = {
		"Di notte la pianura diventa nera da un capo all'altro, e ogni fuoco tauren sembra la lanterna di una nave al largo.",
		"La notte toglie il colore all'erba e lascia solo il rumore. È facile girare in tondo, così.",
		"Al buio l'erba è un mare senza riva, e i pochi fuochi accesi sono le uniche isole rimaste.",
	},
	["mul.muse.w16.grass.014"] = {
		"Passa nelle Barrens e quest'erba ti mancherà entro un'ora. Chiedi a chiunque l'abbia fatto.",
		"Mulgore ti vizia. Un passo oltre il confine e le Barrens cominciano a farti pagare ogni filo d'erba.",
		"Goditi il verde finché dura. Oltre il confine di Mulgore la terra diventa avara in un attimo.",
	},
	["mul.muse.w16.grass.015"] = {
		"Da vicino l'erba ha tre colori insieme: verde alla radice, oro lungo il filo, un viola polveroso nei semi.",
		"Da lontano è tutto un unico verde. Chinati, e ogni stelo ha la sua idea di che colore essere.",
		"Nessuno dipinge Mulgore come si deve. Le danno un verde solo, quando ne ha una dozzina che litigano fra loro.",
	},
	["mul.muse.w16.grass.016"] = {
		"volta il viso nel vento della pianura. Ha fatto tanta strada sopra nient'altro che erba, e ne porta l'odore.",
		"sente la spinta costante del vento delle pianure e ci si appoggia un poco, come sembrano fare tutti a Mulgore.",
		"resta lì mentre il lungo vento della pianura gioca coi suoi vestiti: un vento che per miglia non ha attraversato altro che erba.",
	},
	["mul.muse.w16.grass.017"] = {
		"A Mulgore niente ha fretta. Non l'erba, non le mandrie, non la gente. Dopo un po' il mio passo comincia a sembrarmi maleducato.",
		"Questa terra va a un ritmo più lento. Percorrila abbastanza e l'impazienza comincia a sembrare cattiva educazione.",
		"Avere fretta, qui, è come parlare forte in una casa dove dormono tutti.",
	},
	["mul.muse.w16.herd.001"] = {
		"I puma della pianura cacciano bassi, col ventre nell'erba. Se ti va bene, vedi le orecchie un attimo prima del resto della bestia.",
		"Qui i puma non inseguono. Aspettano nell'erba alta finché la distanza non è abbastanza corta da non contare più.",
		"I grandi felini della pianura hanno il colore dell'erba secca, e lo sanno.",
	},
	["mul.muse.w16.herd.002"] = {
		"gira attorno a un ampio cerchio d'erba schiacciata dove un kodo si è sdraiato a riposare, la terra ancora premuta nella sua forma.",
		"segue una pista di orme di kodo larghe come pentole, impresse a fondo nel terreno morbido e tutte dirette dalla stessa parte, senza fretta.",
		"si accovaccia accanto a un'orma di kodo grande abbastanza da farci il bagno a un gatto, ed emette un fischio sommesso.",
	},
	["mul.muse.w16.herd.003"] = {
		"Bel posto. Però guarda dove metti i piedi: i kodo sono generosi in tutti i sensi.",
		"Una verità di Mulgore: più grande è la mandria, più attento dev'essere il passo.",
		"Prima regola della pianura: dove hanno pascolato i kodo, non ci si siede.",
	},
	["mul.muse.w16.herd.004"] = {
		"Quando i plainstrider scappano tutti nella stessa direzione, vale la pena sapere da cosa stanno fuggendo.",
		"I plainstrider si sparpagliano prima che arrivino i guai. Quaggiù sono la cosa più simile a una campana d'allarme.",
		"Guarda gli uccelli, non l'erba. Un plainstrider vede il pericolo molto prima che si mostri.",
	},
	["mul.muse.w16.herd.005"] = {
		"segue con lo sguardo un rapace delle pianure che chiude le ali e piomba nell'erba, per poi risalire con qualcosa di piccolo che scalcia fra gli artigli.",
		"vede un rapace scendere in picchiata e colpire l'erba con forza; un attimo dopo risale soltanto l'uccello.",
		"nota l'improvvisa picchiata di un rapace nell'erba, poco più in là, e il piccolo squittio che subito si spegne.",
	},
	["mul.muse.w16.herd.006"] = {
		"I lupi della prateria seguono le mandrie di kodo come ombre: mai troppo vicini, mai troppo lontani, in attesa che uno resti indietro.",
		"Quaggiù i lupi sono contabili pazienti. Contano la mandria ogni giorno e aspettano che il numero cali di uno.",
		"Ai margini di ogni mandria c'è un lupo della prateria che fa i suoi conti.",
	},
	["mul.muse.w16.herd.007"] = {
		"Cinghiali da battaglia. Cattivi, pelosi e fatti come una botte che porta rancore. Lasciagli spazio.",
		"Se un cinghiale da queste parti abbassa la testa verso di te, non lo fa per cortesia.",
		"I cinghiali di Mulgore hanno due umori: mangiare e caricare. Impara a capire quale hai davanti.",
	},
	["mul.muse.w16.herd.008"] = {
		"A ogni passo qualcosa di piccolo salta fuori dall'erba davanti a me: grilli, cavallette, cose troppo svelte per un nome. La pianura è viva all'altezza delle caviglie.",
		"Guarda in basso abbastanza a lungo e Mulgore diventa un paese indaffarato di scarabei e grilli, tutti in ritardo per qualcosa.",
		"Le grandi bestie si prendono tutta l'attenzione, ma l'erba brulica di vite più piccole, ognuna dietro alla sua faccenda.",
	},
	["mul.muse.w16.herd.009"] = {
		"scorge un plainstrider immobile su una zampa in mezzo all'erba: o dorme, o sta pensando moltissimo.",
		"passa accanto a un plainstrider che {g:lo|la} segue con un occhio tondo e fisso, poi torna a beccare la terra.",
		"sfila accanto a un plainstrider bloccato a metà passo, che sembra aver dimenticato a cosa serva l'altra zampa.",
	},
	["mul.muse.w16.herd.010"] = {
		"I mandriani dicono che un kodo ricorda ogni mano che sia mai stata gentile con lui. Viste le dimensioni di un kodo, conviene essere gentili.",
		"Kodo e tauren camminano insieme da così tanto che verrebbe da pensare che uno abbia insegnato all'altro la pazienza. Nessuno sa dire chi.",
		"Ai loro kodo i tauren parlano come a vecchi amici, e i kodo rispondono nell'unico modo che conoscono: restando.",
	},
	["mul.muse.w16.herd.011"] = {
		"Occhio alle buche dei cani della prateria. Prendi una storta in una di quelle e tutta la colonia salta fuori a guardare.",
		"I cani della prateria hanno scavato mezza Mulgore. Un giorno la pianura sprofonderà di un palmo e daranno la colpa ai kodo.",
		"Attento a dove pianti i piedi: lì sotto qualche cane della prateria ha la porta di casa.",
	},
	["mul.muse.w16.herd.012"] = {
		"Il giorno finisce, e le mandrie cominciano a rientrare verso i villaggi da sole, senza nessuno a guidarle. Tengono orari migliori dei miei.",
		"Se ne va il giorno, e ogni animale della pianura sembra sapere dove dormire, tranne me.",
		"Mentre il giorno si spegne, tutta la pianura volge verso casa: prima le bestie, poi tutti gli altri dietro.",
	},
	["mul.muse.w16.herd.013"] = {
		"osserva un tratto d'erba strappato e rovistato, i solchi profondi delle zanne di cinghiale ancora freschi nella terra.",
		"aggira uno spiazzo di terra rimestata dove i cinghiali hanno scavato in cerca di radici, col loro odore ancora forte.",
		"studia il terreno dove i cinghiali hanno arato l'erba, strappandola fino alle radici in lunghe file sfrangiate.",
	},
	["mul.muse.w16.herd.014"] = {
		"Vicino ai villaggi le bestie al pascolo alzano appena la testa quando passa un tauren. Una pace così si guadagna in generazioni.",
		"Anche se i tauren cacciano in questa pianura, le mandrie non li temono come temono gli gnoll. C'è una lezione, lì dentro.",
		"Le bestie di Mulgore distinguono il cacciatore che prende il necessario da quello che prende tutto. Hanno avuto molto tempo per imparare.",
	},
	["mul.muse.w16.herd.015"] = {
		"Puma sulle alture, puma giù nell'erba. A Mulgore i gatti piacciono davvero tanto.",
		"Tieni d'occhio le rocce sopra di te. Qui i grossi felini amano cominciare un discorso dall'alto.",
		"Ogni sporgenza di Mulgore sembra venire con un puma incluso. Guarda in su prima di guardarti intorno.",
	},
	["mul.muse.w16.herd.016"] = {
		"Un tempo i tauren erano nomadi e seguivano le mandrie attraverso Kalimdor. Qui le mandrie si sono fermate, e loro con esse.",
		"In un punto della loro lunga storia, tauren e kodo hanno deciso nello stesso momento che quest'erba bastava.",
		"Mandrie e mandriani sono arrivati a Mulgore insieme. Nessuno dei due sembra ricordare chi seguisse chi.",
	},
	["mul.muse.w16.herd.017"] = {
		"trasale quando un plainstrider schizza fuori dall'erba proprio sotto i suoi piedi e scappa via strillando, come se l'avessero derubato.",
		"salta indietro mentre qualcosa di pennuto e furibondo esplode dall'erba alta e sparisce prima di avere un nome.",
		"sobbalza quando un plainstrider sbuca da un cespuglio un passo più avanti e fugge di corsa, lamentandosi a gran voce con tutta la pianura.",
	},
	["mul.muse.w16.mesa.001"] = {
		"Vicino ai piedi di Thunder Bluff la città scende a pezzi: un colpo di tamburo, un grido, una tenda di pelle che sbatte lassù.",
		"Thunder Bluff incombe sull'erba come un pensiero trattenuto. Ogni tanto un suono cade dalla cima e atterra molto più in basso.",
		"I suoni scendono dalle rupi con calma, come se la città li calasse con una corda.",
	},
	["mul.muse.w16.mesa.002"] = {
		"Gli ascensori su per la rupe funzionano a corda, legname e un tacito accordo di non pensare alla corda.",
		"Mi piace una città che bisogna volere. Thunder Bluff prima ti fa salire su una piattaforma di legno lungo una parete a picco.",
		"Fai un giro sull'ascensore e capirai perché i tauren camminano così tranquilli. Nient'altro può spaventarli.",
	},
	["mul.muse.w16.mesa.003"] = {
		"piega indietro la testa per seguire il fianco a strisce di una mesa, pietra rossa e ocra impilata a strati come coperte piegate.",
		"percorre con lo sguardo le fasce di roccia colorata sul fianco di una mesa, ogni strato di una diversa sfumatura di ruggine.",
		"studia la parete lontana di una mesa, la pietra deposta a strisce come se qualcuno tenesse il conto da tantissimo tempo.",
	},
	["mul.muse.w16.mesa.004"] = {
		"Su Red Cloud Mesa i tauren crescono i giovani cacciatori sopra il mondo, poi li mandano giù per il lungo sentiero, a conoscerlo.",
		"Red Cloud Mesa se ne sta in disparte a sud: un campo di addestramento con tutta Mulgore distesa sotto, come una lezione.",
		"È in cima a una mesa che i tauren istruiscono i giovani. Prima imparano la terra guardandola; solo dopo la percorrono.",
	},
	["mul.muse.w16.mesa.005"] = {
		"Cairne ha innalzato la nostra città sulle rupi, dove nessun centauro potrà mai più travolgerci. A guardare in su, ci credo.",
		"Ogni volta che le rupi entrano in vista, qualcosa in me si raddrizza un poco. Quella città lassù è nostra.",
		"La pietra di Thunder Bluff tiene in alto la nostra gente, e l'erba qui sotto tiene le nostre mandrie. Fra le due, so dove stare.",
	},
	["mul.muse.w16.mesa.006"] = {
		"Hai perso la strada? Cerca la mesa più grande col fumo in cima e cammina verso di lei. A Mulgore tutto è vicino a Thunder Bluff, più o meno.",
		"La mappa migliore di Mulgore è l'orizzonte. Tieni le rupi dal lato giusto e non puoi sbagliare di molto.",
		"Qui i cartelli non servono. Scegli una mesa, tienitela davanti, e discutici dopo.",
	},
	["mul.muse.w16.mesa.007"] = {
		"alza il pollice a braccio teso per coprire la mesa più vicina. Non ci sta del tutto.",
		"squadra la fila lontana delle mese, come chi prende le misure a una folla di giganti molto pazienti.",
		"misura una mesa lontana fra pollice e indice, poi lascia perdere i conti.",
	},
	["mul.muse.w16.mesa.008"] = {
		"I guerrieri dicono che nessuno sfodera un'arma vicino alle Red Rocks. Non sarò io a scoprire perché.",
		"Certa terra va percorsa in silenzio. I tauren dicono che le Red Rocks sono di quel tipo, e mi fido della loro parola.",
		"Oltre le rupi, le Red Rocks. I tauren abbassano la voce quando nominano il posto, e senza volerlo la abbasso anch'io.",
	},
	["mul.muse.w16.mesa.009"] = {
		"Grida verso una mesa e ti risponde in ritardo, con una voce più bassa. A Mulgore anche l'eco parla come un tauren.",
		"Vicino alle rupi la pietra rimanda la voce lenta e profonda, come se prima ci avesse dovuto pensare.",
		"Anche l'eco, qui, se la prende comoda. Ho salutato quella parete e sto ancora aspettando che finisca.",
	},
	["mul.muse.w16.mesa.010"] = {
		"Le mese spuntano dall'erba come isole, ciascuna con un suo piccolo mondo in cima che la pianura non raggiunge mai.",
		"Ogni cima piatta lassù è un paese a sé: altri uccelli, altra erba, e nessuno a cui chiedere indicazioni.",
		"Dall'erba le mese sembrano spoglie. Salici sopra e trovi un prato intero, che si fa gli affari suoi.",
	},
	["mul.muse.w16.mesa.011"] = {
		"Ponti di corda tesi fra le rupi della città, così in alto che una caduta ti lascerebbe il tempo di pentirtene per bene.",
		"Una città su più mese, legata insieme con ponti di corda. Gente coraggiosa, i tauren, o dal passo molto sicuro.",
		"I ponti di Thunder Bluff ondeggiano quel tanto che basta a ricordare chi comanda, e non è chi ci cammina sopra.",
	},
	["mul.muse.w16.mesa.012"] = {
		"Le mese erano già in piedi molto prima che arrivassero i tauren, e lo saranno quando nessuno darà più loro un nome. In qualche modo, consola.",
		"Una roccia così vecchia non si accorge di niente che le passi accanto. Kodo, re o viandanti, per la pietra sono uguali.",
		"Queste alture guardano l'erba andare e venire da più tempo di quanto esistano parole. Una vita mortale, per loro, vale appena un pomeriggio.",
	},
	["mul.muse.w16.mesa.013"] = {
		"Ogni sentiero che sale su una mesa è lungo il doppio di quanto sembra e largo la metà di quanto vorresti.",
		"Arrampicarsi a Mulgore è semplice: salire è ripido, scendere lo è ancora di più, e in fondo l'erba aspetta comunque.",
		"Sentieri di mesa. Tracciati da gente con gambe più lunghe ed equilibrio migliore di quanto sia lecito.",
	},
	["mul.muse.w16.mesa.014"] = {
		"lancia un'occhiata verso Thunder Bluff, che svetta sulla pianura come la prua di una nave in un mare verde.",
		"distingue la città sulle sue rupi, oltre miglia d'erba: piccola e salda, come un focolare acceso visto da lontano.",
		"trova le rupi della città all'orizzonte senza nemmeno cercarle, come l'ago di una bussola trova il nord.",
	},
	["mul.muse.w16.mesa.015"] = {
		"I tauren tengono la città in alto e le mandrie in basso, e ogni giorno percorrono il sentiero in mezzo. Sembra una buona forma per una vita.",
		"La città sulla roccia, la vita nell'erba. Ai tauren servono entrambe, a quanto pare, e capisco perché.",
		"La pietra in alto per stare al sicuro, l'erba in basso per vivere. I tauren hanno disegnato il loro mondo con due tratti.",
	},
	["mul.muse.w16.mesa.016"] = {
		"Da qualunque altura di Mulgore vedi arrivare i guai con un'ora d'anticipo. I tauren hanno scelto bene il terreno.",
		"Sali su qualsiasi cosa, qui, e tutta la pianura ti si apre davanti. Per forza i tauren hanno costruito in alto: nessuno coglie di sorpresa una mesa.",
		"Alture ed erba aperta. Chi ha pensato questo paese ha pensato prima ai predoni e poi al panorama.",
	},
	["mul.muse.w16.mesa.017"] = {
		"Per sentirsi minuscoli basta mettersi sotto Thunder Bluff e guardare dritto in su. Funziona sempre.",
		"Da sotto, Thunder Bluff è una lezione di umiltà. Da sopra, una lezione su come non sporgersi dal bordo.",
		"Quelle rupi farebbero sentire bassa una montagna. E di montagne ne ho viste.",
	},
	["mul.muse.w16.trespass.001"] = {
		"La Venture Co. guarda Mulgore e vede un listino prezzi. Erba: senza valore. Alberi: legname. Tauren: un intralcio.",
		"C'è un goblin, chissà dove, che ha disegnato tutta questa pianura su una mappa e ha scritto un prezzo su ogni collina.",
		"Per un goblin, un bel panorama è solo terra a cui nessuno ha ancora mandato il conto.",
	},
	["mul.muse.w16.trespass.002"] = {
		"scosta col piede un bullone goblin arrugginito, sperduto nell'erba lontano da qualunque macchina a cui sia mai appartenuto.",
		"raccoglie un brandello di un ordine di lavoro della Venture Co. impigliato a uno stelo, ne legge una riga e lo lascia al vento.",
		"rigira una lattina goblin ammaccata trovata nell'erba, la annusa, e rinuncia a scoprire cosa contenesse.",
	},
	["mul.muse.w16.trespass.003"] = {
		"Ogni albero che i goblin abbattono qui ci ha messo a crescere più di quanto sia vissuto qualunque goblin.",
		"La Venture Co. paga in monete. La pianura paga in erba e acqua. Indovina quale delle due paga ancora l'anno prossimo.",
		"Monete per legname, legname per monete. I goblin non si chiedono mai chi abbia piantato gli alberi.",
	},
	["mul.muse.w16.trespass.004"] = {
		"Per un tauren ogni colpo di piccone a Bael'dun Digsite è un sasso contro una finestra. Per i nani è solo uno scavo. E nessuno dei due ha intenzione di spiegarsi.",
		"I nani di Bael'dun hanno aperto una ferita nell'erba e l'hanno recintata, come se una recinzione bastasse a farla loro.",
		"Quello che i nani chiamano scavo, i tauren lo chiamano cicatrice. Stessa buca, due parole, nessun ponte fra loro.",
	},
	["mul.muse.w16.trespass.005"] = {
		"scavalca un laccio rozzo di corda attorcigliata, nascosto nell'erba: lavoro di gnoll, coi nodi brutti quanto le mani che li hanno stretti.",
		"trova un brandello di pelle conciata male impigliato a una spina, il genere di avanzi che gli gnoll di Palemane Rock si lasciano dietro.",
		"si imbatte in un cerchio d'erba calpestata e qualche osso rosicchiato: gli avanzi di un pasto di gnoll consumato in fretta e furia.",
	},
	["mul.muse.w16.trespass.006"] = {
		"Gli gnoll Palemane prendono più di quanto possano mangiare e scuoiano più di quanto possano indossare. Lo spreco è l'unica cosa che sappiano fare bene.",
		"In pianura gli gnoll uccidono per le pelli e lasciano il resto ai rapaci. I tauren non lo perdonano, e hanno ragione.",
		"Un cacciatore tauren prende una bestia e la usa tutta. Uno gnoll ne prende dieci e usa le pelli. Ecco tutta la contesa.",
	},
	["mul.muse.w16.trespass.007"] = {
		"I Bristleback si sono piantati a Brambleblade Ravine come una spina nel tallone. Per colpa loro ogni mandriano di Mulgore zoppica un poco.",
		"Uomini-cinghiale a Mulgore. Sono saliti dai rovi e hanno deciso che la pianura aveva un buon sapore.",
		"Bristleback in una gola piena di rovi. Spine che abitano fra le spine. Almeno hanno scelto l'indirizzo giusto.",
	},
	["mul.muse.w16.trespass.008"] = {
		"Le arpie tengono le alture di Windfury Ridge. Le senti prima di vederle, e vorresti non averle sentite.",
		"Windfury Ridge sarebbe un'ottima vedetta, se le arpie non la usassero già per strillare contro tutto ciò che si muove.",
		"Su Windfury Ridge le arpie strillano contro la pianura tutto il giorno, e la pianura, saggiamente, le ignora.",
	},
	["mul.muse.w16.trespass.009"] = {
		"La Ravaged Caravan è ancora dove l'hanno colpita: carri rovesciati, casse spaccate e l'erba che cresce fra i raggi delle ruote.",
		"Nessuno ha portato via i resti di quella carovana. Forse li lasciano lì come avvertimento. Forse nessuno ha voglia di toccarli.",
		"I carri di qualcuno, le merci di qualcuno, l'ultimo viaggio di qualcuno. L'erba copre piano la Ravaged Caravan, e nessuno la ferma.",
	},
	["mul.muse.w16.trespass.010"] = {
		"segue due solchi profondi lasciati da un carro nell'erba, la terra viva al loro interno come una cicatrice che non ha deciso se guarire.",
		"attraversa una striscia di terra rivoltata dove ruote pesanti sono passate avanti e indietro, più e più volte, verso gli accampamenti della Venture Co.",
		"attraversa una pista scavata dai carri goblin, terra nuda aperta come una cicatrice nel verde.",
	},
	["mul.muse.w16.trespass.011"] = {
		"I goblin per il legname, i nani per quello che sta sepolto, gli gnoll per le pelli. Mulgore ha un sacco di ospiti che non hanno mai imparato a chiedere.",
		"Chiunque disturbi questa pianura vuole portarsene via un pezzo. I tauren chiedono solo di poterci camminare in pace.",
		"Legname, minerale, pelli: ogni intruso qui ha la sua lista. Quella dei tauren è più corta: andatevene.",
	},
	["mul.muse.w16.trespass.012"] = {
		"Nani che scavano a Mulgore. E poi cosa, tauren minatori sotto Ironforge?",
		"Bael'dun Digsite. Scavate abbastanza a fondo, nani, e magari ritroverete una montagna.",
		"Un nano in pianura con una pala. La mappa di qualcuno era molto sbagliata, o molto avida.",
	},
	["mul.muse.w16.trespass.013"] = {
		"I tauren sono lenti all'ira. La Venture Co. sta mettendo alla prova quanto lenti, e non credo che la risposta le piacerà.",
		"La pazienza è una virtù tauren, ma non è senza fondo. Una di queste stagioni i goblin il fondo lo troveranno.",
		"Una mandria è tranquilla finché non lo è più. I goblin dovrebbero chiedere a un lupo come va a finire.",
	},
	["mul.muse.w16.trespass.014"] = {
		"osserva una macchia di fumo scuro all'orizzonte, troppo unta per un fuoco da campo: quella che sale dovunque un goblin tenga acceso un motore.",
		"annusa un sentore acido d'olio portato dall'aria, da qualche parte verso gli scavi della Venture Co.",
		"nota un filo sottile di fumo nero sopra gli alberi, niente che un tauren brucerebbe mai.",
	},
	["mul.muse.w16.trespass.015"] = {
		"Prima o poi l'erba ricresce sopra tutto: solchi di carri, fuochi spenti, accampamenti di gnoll. A Mulgore basta che gli intrusi se ne vadano.",
		"Ciò che goblin e gnoll combinano qui, la pianura lo ricoprirà in pochi anni. Il difficile è convincerli a smettere.",
		"Dagli tempo e il verde inghiotte ogni errore commesso sopra di lui. La terra è più paziente dei suoi ladri.",
	},
	["mul.muse.w16.trespass.016"] = {
		"La nostra erba, la nostra acqua, i nostri morti che riposano alle Red Rocks. Che i goblin provino a darle un prezzo.",
		"Noi tauren abbiamo attraversato mezza Kalimdor per arrivare a questa terra. Qualche gnoll e una miniera goblin non ci smuoveranno adesso.",
		"Siamo i tauren di Mulgore. Scavatori, bracconieri e taglialegna vanno e vengono; noi restiamo.",
	},
	["mul.muse.w16.trespass.017"] = {
		"I Bristleback si sono accampati in una gola a due passi da dove i tauren addestrano i loro giovani. Audaci. E di solito durano poco.",
		"Gli uomini-cinghiale non si fermano mai in un posto senza renderlo più brutto. Brambleblade Ravine era già piena di spine; adesso è piena di spine e puzza.",
		"Fra tutti i posti da razziare, gli uomini-cinghiale hanno scelto la soglia dei campi d'addestramento tauren. Strana cosa, l'ambizione in un maiale.",
	},
	["mul.muse.w16.wry.001"] = {
		"Erba senza fine, cammino senza fine. Mulgore mantiene le promesse.",
		"Erba a sinistra, erba a destra, erba dritto davanti. Comincio a sospettare un tema.",
		"Qualcuno ha ordinato una gran quantità di verde per questo posto, e nessuno l'ha rimandato indietro.",
	},
	["mul.muse.w16.wry.002"] = {
		"Neanche un albero a cui appoggiarsi per miglia. Mulgore crede nel tenersi dritti.",
		"Nemmeno un sasso su cui sedersi quando ne vuoi uno, e cento in cui inciampare quando non ti servono. L'umorismo di Mulgore.",
		"Spazio in abbondanza per sdraiarsi, quaggiù, e niente di niente su cui sedersi. La pianura ha le sue idee sulla postura.",
	},
	["mul.muse.w16.wry.003"] = {
		"Gli gnoll sghignazzano tutto il giorno. Mi piacerebbe sapere cosa ci sia di tanto divertente a Palemane Rock.",
		"Se dovessi vivere come i Palemane, riderei anch'io. Più che altro per non piangere.",
		"Senti che risatine? Gnoll. Qualunque sia la battuta, non è mai una buona notizia per chi sta lì vicino.",
	},
	["mul.muse.w16.wry.004"] = {
		"Ho provato a contare le mese all'orizzonte. Ho perso il conto, ho ricominciato, l'ho perso un'altra volta. Vince l'orizzonte.",
		"Pessimo posto per imparare l'aritmetica. Troppa erba da contare, troppi pochi punti di riferimento per contarla.",
		"Continuo a contare le mese e a ottenere un numero diverso. O non so contare, o si spostano quando non guardo.",
	},
	["mul.muse.w16.wry.005"] = {
		"Una battuta tauren ci mette un po' ad arrivare. Resta lì, continua a sorridere: sta arrivando.",
		"L'umorismo tauren è come una frana: lento a partire, impossibile da fermare una volta avviato.",
		"Racconta una barzelletta a un tauren e aspetta. La risata è per strada, solo che va dappertutto a piedi.",
	},
	["mul.muse.w16.wry.006"] = {
		"Bloodhoof, Runetotem, Winterhoof. I nomi tauren suonano come se ciascuno fosse stato guadagnato in una carica di mandria.",
		"I nomi tauren sono pieni di zoccoli, corna e totem. Accanto a loro, quasi tutti gli altri nomi sembrano uno starnuto.",
		"In questa pianura un cognome è qualcosa che potresti intagliare su un totem e farebbe ancora la sua figura.",
	},
	["mul.muse.w16.wry.007"] = {
		"parte in linea perfettamente retta attraverso l'erba, dopo un po' si guarda alle spalle e scopre che la traccia piega comunque dolcemente a sinistra.",
		"si avvia attraverso l'erba in linea retta e, chissà come, finisce per disegnare una lunga curva pigra, come tutto il resto in pianura.",
		"punta dritto attraverso l'erba e scivola, passo dopo passo, in un arco ampio e paziente.",
	},
	["mul.muse.w16.wry.008"] = {
		"Ogni creatura della pianura ha uno scopo, dicono i tauren. Mi piacerebbe sentire l'arringa a favore degli gnoll.",
		"La Madre Terra ha fatto ogni cosa per un motivo, dicono i tauren. Il motivo degli gnoll dev'essere una storia lunga.",
		"Ogni bestia ha il suo posto, dice ogni tauren a cui l'ho chiesto. Nessuno però mi ha ancora detto quale sia il posto delle arpie.",
	},
	["mul.muse.w16.wry.009"] = {
		"Qui tutto è a misura di tauren: scodelle come catini, lembi di tenda come vele. Nessuno deve mai chinare la testa.",
		"Il piccolo, i tauren, non lo conoscono. Ciotole piccole, porte piccole, porzioni piccole: niente di tutto questo esiste in pianura.",
		"Tutto ciò che fanno i tauren è su misura di un gigante beneducato. Perfino i cucchiai sembrano remi.",
	},
	["mul.muse.w16.wry.010"] = {
		"La miniera della Venture Co. ha un registro degli incidenti. Solo che nessuno ha il permesso di leggerlo.",
		"Sicurezza in una miniera goblin: metti un elmo, e non metterti mai dove il caposquadra potrebbe venderti.",
		"Lavorare per la Venture Co. dà diritto a una garanzia. Nessuno sa di cosa, ma è scritta nel contratto.",
	},
	["mul.muse.w16.wry.011"] = {
		"Dall'ultimo pozzo mi hanno salutato con un cenno quattro tauren e un plainstrider. Il plainstrider sembrava il più sincero.",
		"Qui i saluti arrivano a lenti cenni del capo. Ne ho fatti così tanti che mi fa male il collo. Paese educato, Mulgore.",
		"Ogni mandriano che passa riceve un cenno e ne restituisce uno. Di questo passo il collo diventerà il mio muscolo più allenato.",
	},
	["mul.muse.w16.wry.012"] = {
		"per poco non va a sbattere contro un totem dipinto piantato al bordo del sentiero, e borbotta delle scuse alla faccia intagliata.",
		"sfiora un totem intagliato a lato del sentiero e mormora un rapido scusa alla sua faccia di legno, non si sa mai.",
		"urta con la spalla un palo totemico e gli fa un cenno per pura abitudine, come a un tauren sulla soglia.",
	},
	["mul.muse.w16.wry.013"] = {
		"Se la pace e la quiete potessero uccidere, Mulgore sarebbe letale. Per fortuna ci pensano solo i puma.",
		"Il posto più tranquillo di Kalimdor, dicono. Si scordano di citare gli gnoll, i goblin e i cinghiali dal brutto carattere.",
		"Paese mite, Mulgore. Tolti i puma, gli gnoll, le arpie e gli uomini-cinghiale, è proprio mite.",
	},
	["mul.muse.w16.wry.014"] = {
		"Niente, qui, si cura del fatto che io sia {g:arrivato|arrivata}. C'è qualcosa di riposante nell'essere {g:ignorato|ignorata} da un intero paesaggio.",
		"L'erba, le mandrie, le mese: nessuno di loro si è accorto di me. La compagnia migliore da parecchio tempo.",
		"Mulgore bada alle sue faccende come se io non ci fossi affatto. E scopro che non mi dispiace.",
	},
	["mul.muse.w16.wry.015"] = {
		"Le arpie rubano tutto ciò che luccica. Se passi vicino a Windfury Ridge, abbottona le tasche.",
		"Sulle alture di Windfury Ridge le arpie collezionano cose lucenti. Peccato che non collezionino anche le buone maniere.",
		"Qualunque oggetto luccicante tu abbia, tienilo lontano dagli occhi della cresta. Le arpie hanno gusto, e nessuno scrupolo.",
	},
	["mul.muse.w16.wry.016"] = {
		"Un tetto sopra la testa, per una volta. Dopo tutta quell'erba aperta, è come portare un cappello di una misura troppo piccolo.",
		"Pareti da ogni lato. Dopo la pianura, anche un posto spazioso sembra un cappotto abbottonato un bottone di troppo.",
		"Finalmente al chiuso, e gli occhi continuano a cercare un orizzonte che non c'è.",
	},
	["mul.muse.w16.wry.017"] = {
		"Chiedi a un tauren quanto manca e ti dirà: qui vicino. Quaggiù vuol dire qualunque cosa si veda.",
		"Mai fidarsi del «qui vicino» di un mandriano. In questa pianura può voler dire due mese e un lago più in là.",
		"A Mulgore le distanze sono di due misure: lì vicino, e sempre lì vicino.",
	},
	["mul.npc_meet.w16.ask.001"] = {
		"Qualcuno con una preoccupazione e la pazienza di non raccontarla di corsa. L'ascolterò tutta.",
		"Sta per arrivare una richiesta. Lo vedo da come vengono scelte le parole, con cura.",
	},
	["mul.npc_meet.w16.ask.002"] = {
		"Hai l'aria di chi ha un problema e una lunga strada da indicare. Dove?",
		"Là fuori c'è qualcosa che non va. Dimmi in che direzione.",
		"Ho un paio di mani libere. Di cosa ha bisogno la pianura?",
	},
	["mul.npc_meet.w16.ask.003"] = {
		"risponde a un lento cenno d'invito e aspetta che la richiesta venga esposta, un fatto semplice dopo l'altro.",
		"si ferma quando si sente chiamare, e ascolta il problema raccontato senza fretta e senza una parola di troppo.",
	},
	["mul.npc_meet.w16.ask.004"] = {
		"Quello sguardo. Qualcuno ha in mente una lunga camminata, e non per sé.",
		"La conosco, questa faccia: sta per arrivare un favore da fare, e ci sarà di mezzo parecchia erba.",
	},
	["mul.npc_meet.w16.guard.001"] = {
		"La guardia osserva l'erba più della gente. Quaggiù i guai arrivano da lì.",
		"Una sentinella che guarda oltre me, verso l'orizzonte. Non sono io la minaccia, e il suo sguardo lo dice.",
	},
	["mul.npc_meet.w16.guard.002"] = {
		"Pace al tuo turno di guardia. C'è qualcosa che dovrei sapere sui sentieri?",
		"Fa piacere vedere la pianura sorvegliata. C'è una strada peggiore delle altre?",
		"Turno tranquillo? Dimmi dove non lo è, e vado a dare un'occhiata.",
	},
	["mul.npc_meet.w16.guard.003"] = {
		"riceve dalla guardia uno sguardo lungo e piatto, misurato e paziente, poi un breve cenno che vuol dire passa.",
		"incrocia gli occhi della guardia, ne ottiene un grugnito e un colpo di mento verso la pianura aperta: è tutto il benvenuto.",
	},
	["mul.npc_meet.w16.guard.004"] = {
		"Una guardia della pianura ha un sacco di orizzonte da sorvegliare e ben poco a cui appoggiarsi. Questa se la cava.",
		"Guardare tutta quell'erba per mestiere. Io in un'ora vedrei cose che non ci sono.",
	},
	["mul.npc_meet.w16.inn.001"] = {
		"Un oste che si muove come se la fretta non esistesse. Nella pianura, forse, non esiste.",
		"L'oste mi misura con un'unica occhiata lenta, poi annuisce, come a dire che vado bene.",
		"Occhi calmi, voce profonda, mani sempre occupate ma senza fretta. Buon segno.",
	},
	["mul.npc_meet.w16.inn.002"] = {
		"Qualcosa di caldo e un angolo al riparo dagli spifferi, se hai l'uno e l'altro.",
		"Pace al tuo fuoco. Prendo quello che bolle in pentola e il primo posto libero.",
		"Qualunque cosa abbia quel profumo, ne vorrei una ciotola.",
	},
	["mul.npc_meet.w16.inn.003"] = {
		"si lascia squadrare dall'oste da capo a piedi, con calma, e poi un cenno della testa {g:gli|le} indica un posto dove riposare.",
		"posa la sacca sotto lo sguardo dell'oste e si sente dire, in pochissime parole, dov'è l'acqua e dov'è il cibo.",
	},
	["mul.npc_meet.w16.inn.004"] = {
		"L'oste dice più o meno quattro parole, e ognuna serve a qualcosa. Avrei da imparare.",
		"Poche parole, tutte su cibo e riposo. Il miglior genere di oste.",
	},
	["mul.npc_meet.w16.teach.001"] = {
		"Qualcuno che insegna e guarda prima di parlare. Ho il sospetto che la lezione sia cominciata appena mi sono {g:avvicinato|avvicinata}.",
		"Quegli occhi ne hanno misurati, di allievi. Chissà cosa vedono adesso.",
	},
	["mul.npc_meet.w16.teach.002"] = {
		"Sono qui per imparare, se vorrai insegnarmi.",
		"Insegnami quello per cui mi credi {g:pronto|pronta}. Sul resto mi fido di te.",
		"C'è sempre altro da imparare. Fammene vedere un po'.",
	},
	["mul.npc_meet.w16.teach.003"] = {
		"resta sotto lo sguardo di chi addestra per un lungo momento silenzioso, come un mandriano che valuta le zampe di un kodo.",
		"sopporta l'esame paziente di chi insegna e alla fine ottiene un piccolo cenno: c'è materiale su cui lavorare.",
	},
	["mul.npc_meet.w16.teach.004"] = {
		"Chi insegna qui ha una calma che fa sembrare possibili anche le parti difficili.",
		"Niente urla, niente spettacolo. Solo qualcuno pronto a insegnare, e la pianura larga quanto un campo d'esercizio.",
	},
	["mul.npc_meet.w16.trade.001"] = {
		"Un banco senza parlantina e senza insistenza. La merce è lì e parla da sola.",
		"Nessuna tiritera, solo merce in mostra e un prezzo se lo chiedo. Mi piace più di quanto pensassi.",
	},
	["mul.npc_meet.w16.trade.002"] = {
		"Cosa vale la pena comprare? Mi fido di quello che mi dici.",
		"Fammi vedere cos'hai. Dicono che nella pianura non si mercanteggia: cercherò di comportarmi bene.",
		"C'è qualcosa che possa servire per una lunga camminata?",
	},
	["mul.npc_meet.w16.trade.003"] = {
		"esamina la merce disposta con cura, mentre chi la vende aspetta a braccia conserte, senza alcuna fretta.",
		"passa una mano sulla merce in mostra e ottiene un cenno paziente da chi sta dietro il banco, come se il tempo non mancasse mai.",
	},
	["mul.npc_meet.w16.trade.004"] = {
		"Tutto a prezzo onesto e niente di rincarato per chi viene da fuori. Continuo a cercare la fregatura.",
		"Non ha nemmeno provato a vendermi la cosa più cara. Quasi mi offendo.",
	},
	["mul.quest_complete.w16.folk.001"] = {
		"I tauren chiedono aiuto come fanno tutto: con calma, senza giri di parole, e solo quando serve davvero.",
		"Qui nessuno chiede due volte o supplica. Dicono cosa non va e si fidano che tu lo veda. Così il lavoro si prende più volentieri.",
		"Chiesto senza giri, fatto senza giri. Mi piace come si tratta, nella pianura.",
	},
	["mul.quest_complete.w16.folk.002"] = {
		"Ecco. Depennalo e pensa a qualcosa di più piacevole.",
		"Fatto. La tua gente può riprendere il suo lavoro lento.",
	},
	["mul.quest_complete.w16.folk.003"] = {
		"riceve un ringraziamento detto con voce profonda e senza fretta, che sembra salire dalla terra stessa.",
		"ascolta il ringraziamento fino in fondo: qui nessuno lo taglia corto, e nessuno mette fretta a chi ascolta.",
	},
	["mul.quest_complete.w16.folk.004"] = {
		"Ogni incarico qui finisce per riguardare le mandrie o l'acqua. La pianura vive di tutte e due, e quello che minaccia l'una o l'altra diventa lavoro per qualcuno.",
		"Mandrie e acqua, acqua e mandrie. Prima o poi ogni preoccupazione di Mulgore parla di una delle due.",
		"Acqua e mandrie. Sotto queste due parole ci sta tutta la lista dei guai della pianura.",
	},
	["mul.quest_complete.w16.folk.005"] = {
		"Se la pianura ha bisogno d'altro, sai dove trovarmi. Probabilmente lontanissimo, a camminare.",
		"Se serve altro, chiama forte. Mulgore è grande, ma una voce arriva lontano.",
		"Se c'è altro da fare, mandami a chiamare. La strada non mi pesa.",
	},
	["mul.quest_complete.w16.folk.006"] = {
		"Gli anziani dicono che alla terra il debito si paga a piccoli pezzi, mai tutto in una volta. Questo mi è parso uno dei pezzi.",
		"Un aiuto piccolo, dato spesso, tiene intera la pianura: così dicono i tauren. Li prendo in parola e continuo a darlo.",
	},
	["mul.quest_complete.w16.folk.007"] = {
		"riceve come ringraziamento una pacca sulla spalla, pesante e amichevole, e barcolla di mezzo passo.",
		"si sente ringraziare con una mano sulla spalla così grande e ferma che pare di avere addosso una collina.",
		"si sente stringere l'avambraccio in segno di grazie, con una presa che lascia il segno e vuole essere un onore.",
	},
	["mul.quest_complete.w16.folk.008"] = {
		"Mulgore è bellissima. Ha solo bisogno di meno gente che cerchi di portarsela via in un sacco.",
		"Che bella terra avete. Peccato che lo pensino anche tutti gli altri.",
		"Erba, acqua, legname, minerale. Tutti vogliono un pezzo di Mulgore, tranne chi ci abita.",
	},
	["mul.quest_complete.w16.folk.009"] = {
		"Là fuori, da qualche parte, un mandriano dormirà un po' più tranquillo. È tutto qui il senso.",
		"Un rammendo piccolo, ma la pianura si rammenda così. In qualche tenda di pelle qualcuno sentirà la differenza.",
	},
	["mul.quest_complete.w16.folk.010"] = {
		"ascolta l'impresa ripetuta ad alta voce, senza ornamenti, come se venisse affidata a una memoria lunga e paziente.",
		"vede segnare il lavoro come concluso con un solo cenno grave, come si rimette una pietra al suo posto.",
	},
	["mul.quest_complete.w16.folk.011"] = {
		"Mandriani, cacciatori, i vecchi accanto ai fuochi: a Mulgore pare che tutti abbiano qualcosa che ha bisogno di un paio di gambe.",
		"Cacciatori a corto di braccia, mandriani a corto di sonno. Alla pianura non mancano mai persone a cui farebbero comodo due mani in più.",
	},
	["mul.quest_complete.w16.folk.012"] = {
		"È fatto. Di' a chi era in pensiero che può smettere.",
		"Finito. Fallo sapere a chi ci perdeva il sonno.",
		"Risolto. Chi stava di guardia per questo può riposare.",
	},
	["mul.quest_complete.w16.folk.013"] = {
		"si accorge, dopo i ringraziamenti, di quanti altri lì attorno aspettavano la notizia, e di come rimettano mano in silenzio alle loro faccende.",
		"raccoglie qualche cenno da chi sta intorno mentre la voce del lavoro concluso gira, senza che nessuno alzi il tono.",
	},
	["mul.quest_complete.w16.folk.014"] = {
		"Qui ogni mano conta: la pianura è grande e quelli che la curano sono pochi.",
		"Mulgore è vasta e chi la custodisce non è tanta gente. Ogni aiuto si somma.",
		"Per tutta quest'erba le mani non bastano mai. Un paio in più è servito.",
	},
	["mul.quest_complete.w16.pay.001"] = {
		"La paga è giusta e nessuno contratta. Nella pianura un prezzo si dice una volta sola, e quello resta.",
		"Niente mercanteggiare, niente conti rifatti. Hanno detto una cifra onesta e l'hanno rispettata. Quasi mi manca la discussione.",
		"Cifra onesta, trattativa zero, nemmeno una parola sul prezzo. Un goblin ci sverrebbe.",
	},
	["mul.quest_complete.w16.pay.002"] = {
		"Uno scambio onesto: le mie gambe per il tuo problema. Ce ne andiamo più leggeri tutti e due.",
		"Il tuo guaio in cambio del mio tempo. Mi pare un affare alla pari.",
		"Il mio camminare per il tuo pensiero. Direi che siamo pari.",
	},
	["mul.quest_complete.w16.pay.003"] = {
		"soppesa nel palmo quello che ha ricevuto, annuisce una volta e lo mette via senza contarlo.",
		"prende a due mani quanto viene offerto, nello stesso modo in cui è stato porto, e lo ripone nella sacca.",
		"fa sparire la ricompensa con un cenno tranquillo, come chi chiude un piccolo conto fra vicini.",
	},
	["mul.quest_complete.w16.pay.004"] = {
		"Una paga modesta. Il lento cenno del capo che l'accompagnava valeva di più, e in nessuna borsa ci sta.",
		"Nella pianura non pagano molto. Pagano con uno sguardo che dice: il debito è segnato. E dura più a lungo.",
	},
	["mul.quest_complete.w16.pay.005"] = {
		"Che generosità. Ne restituirei un po', ma ho già deciso come spenderlo.",
		"Fin troppa gentilezza. Farò finta di protestare, e poi lo tengo.",
		"Davvero? Allora non ti offendo rifiutando.",
	},
	["mul.quest_complete.w16.pay.006"] = {
		"Qualunque sia la paga, i piedi doloranti non li copre. Non li copre mai niente.",
		"La ricompensa è nella sacca e il dolore nelle gambe. Solo uno dei due mi terrà compagnia fino a domani.",
	},
	["mul.quest_complete.w16.pay.007"] = {
		"intasca la paga e si becca un'occhiata lunga e valutativa da un kodo lì accanto, come se conoscesse le tariffe.",
		"ripone la ricompensa sotto lo sguardo di un mandriano di passaggio, convinto che l'affare migliore l'abbia fatto la pianura.",
	},
	["mul.quest_complete.w16.pay.008"] = {
		"L'avrei fatto anche gratis. Meglio non dirlo: insisterebbero ancora di più.",
		"Farsi pagare per questo mi pare strano. Rifiutare, qui, sarebbe più strano ancora, e scortese.",
	},
	["mul.quest_complete.w16.pay.009"] = {
		"Risparmia il discorso. La moneta lo dice già bene.",
		"Non servono parole. Quel sacchetto ringrazia abbastanza.",
		"Bene. I discorsi non sono il mio forte, e a quanto pare nemmeno il tuo.",
	},
	["mul.quest_complete.w16.pay.010"] = {
		"Pagamento completo. Da qualche parte un goblin della Venture Co. lo chiamerebbe un margine pessimo.",
		"Un prezzo giusto, saldato onestamente. Alla Venture Co. non capirebbero mai un accordo così.",
	},
	["mul.quest_complete.w16.pay.011"] = {
		"si inchina appena sulla ricompensa prima di accettarla, come si fa quando un debito si chiude onestamente.",
		"risponde al ringraziamento con un breve inchino, poi mette via la ricompensa.",
	},
	["mul.quest_complete.w16.pay.012"] = {
		"Qualcosa nella sacca, un pasto in vista e nessun debito con nessuno a Mulgore. Un buon punto in cui trovarsi.",
		"La paga in mano e nessun conto aperto nella pianura. Più ricchezza di così non mi serve.",
	},
	["mul.quest_complete.w16.pay.013"] = {
		"Paga presa, grazie ricevute. Ora la pianura può rimettersi a ignorarmi, e a me va benissimo.",
		"I ringraziamenti sono finiti e la pianura ha smesso di badare a me. Giusto così: non lavoravo per farmi notare.",
	},
	["mul.quest_complete.w16.walk.001"] = {
		"Fatto, e il grosso è stato camminare. A Mulgore tutto sta appena oltre la prossima altura.",
		"Finito. Qui metà del lavoro è la strada a piedi: la pianura non lesina le distanze.",
		"Fatto. Adesso il cammino per uscirne, che a Mulgore non è mai corto.",
	},
	["mul.quest_complete.w16.walk.002"] = {
		"si allontana dai ringraziamenti e riprende il sentiero, misurando a occhio la distanza dalla mesa più vicina.",
		"si carica la sacca in spalla e guarda il sentiero battuto che si perde nella pianura aperta, contando già le miglia.",
	},
	["mul.quest_complete.w16.walk.003"] = {
		"Fatto prima che i kodo finissero di brucare. Niente male, per due gambe sole.",
		"Il giro è fatto, e la mandria laggiù non si è spostata di un passo. Direi che è stato rapido.",
	},
	["mul.quest_complete.w16.walk.004"] = {
		"Il bello è la strada dopo: nessun incarico che mi tira, solo erba, distanza e quello che mi va di notare.",
		"Niente da cercare, adesso, niente da portare. La pianura sembra un'altra quando non la stai frugando.",
		"Un po' di strada senza meta. L'erba fa miglior compagnia quando non nasconde niente che mi serva.",
	},
	["mul.quest_complete.w16.walk.005"] = {
		"segue una pista consumata da generazioni di zoccoli, la terra battuta e dura sotto l'erba.",
		"si incammina su un sentiero che le mandrie hanno schiacciato a forza di passarci, liscio e sodo come un pavimento.",
	},
	["mul.quest_complete.w16.walk.006"] = {
		"La prossima volta i guai potrebbero stare un po' più vicini? Lo dico così.",
		"Bel lavoro. Peccato che Mulgore si ostini a sparpagliarlo così lontano.",
		"Dovevi proprio mandarmi in capo alla pianura? Ma certo che sì.",
	},
	["mul.quest_complete.w16.walk.007"] = {
		"Sistemato. La pista per andarsene è uguale a quella per arrivare, solo più leggera.",
		"Finito, e la strada che resta non pesa niente rispetto a quella già fatta.",
	},
	["mul.quest_complete.w16.walk.008"] = {
		"si ferma un attimo dopo i ringraziamenti a guardare un rapace delle pianure girare basso sopra il sentiero.",
		"indugia un momento accanto al sentiero, a guardare un lupo della prateria che scivola lungo il margine lontano dell'erba, per i fatti suoi.",
	},
	["mul.quest_complete.w16.walk.009"] = {
		"Grazie dette, lavoro finito, e il lungo silenzio della pianura si ridistende su tutto.",
		"Le voci si spengono alle mie spalle e prende il sopravvento l'erba. Mulgore è bravissima a fare silenzio.",
		"Alle spalle i ringraziamenti, davanti l'erba, e per un po' nessuno che mi chiami.",
	},
	["mul.quest_complete.w16.walk.010"] = {
		"Fatto. Indicami il prossimo pezzo di Mulgore da attraversare a piedi.",
		"Finito. E adesso da che parte? Da qui ogni direzione sembra lunga.",
		"Sistemato. Il resto dei guai Mulgore lo tiene a una bella camminata di distanza, come al solito.",
	},
	["mul.quest_complete.w16.walk.011"] = {
		"Le mese non si sono mosse mentre avevo da fare. Non lo fanno mai. In qualche modo aiuta, camminare verso qualcosa di così paziente.",
		"Laggiù le mese aspettano, uguali a prima del lavoro e uguali a dopo. Buoni punti per orientarsi.",
	},
	["mul.quest_complete.w16.walk.012"] = {
		"stira la schiena indolenzita dopo la lunga camminata d'andata, poi guarda quella d'uscita con una specie di rassegnazione.",
		"fa ruotare una spalla dolorante e strizza gli occhi verso le miglia d'erba che {g:lo|la} separano da qualunque altro posto.",
	},
	["mul.quest_complete.w16.walk.013"] = {
		"Un kodo l'avrebbe sbrigata in metà tempo, se a qualcuno fosse venuto in mente di chiederglielo.",
		"Un plainstrider fa il doppio di questa strada solo per sport, e nessuno lo ringrazia mai.",
	},
	["mul.quest_progress.w16.done.001"] = {
		"Tutto quanto. Adesso c'è da riportare la notizia attraverso l'erba.",
		"C'è tutto. La strada del rientro pare più corta quando il lavoro è intero.",
		"Completo. Ora bisogna ritrovare chi me l'ha chiesto, ovunque sia in questa pianura.",
	},
	["mul.quest_progress.w16.done.002"] = {
		"spunta l'ultima voce, si raddrizza e si volta verso la strada del rientro.",
		"mette via il lavoro finito insieme al resto e prende la direzione guardando le mese lontane.",
		"si sistema la sacca più in alto sulla spalla e guarda indietro, da dove viene il sentiero.",
	},
	["mul.quest_progress.w16.done.003"] = {
		"Fino all'ultimo pezzo. Il lavoro è finito; la scarpinata per riferirlo è appena cominciata.",
		"Qui ho finito. Laggiù qualcuno aspetta di saperlo, e laggiù è molto lontano.",
	},
	["mul.quest_progress.w16.done.004"] = {
		"Basta così. Quello che si chiedeva alla pianura, la pianura l'ha dato.",
		"Ho finito di cercare. La pianura ha ceduto quello che serviva, e non ho dovuto insistere.",
	},
	["mul.quest_progress.w16.done.005"] = {
		"È tutto. Vado a dirglielo.",
		"Qui ho chiuso. Qualcuno sarà contento.",
	},
	["mul.quest_progress.w16.step.001"] = {
		"E uno. Mulgore è abbastanza grande da nascondere il resto sotto gli occhi di tutti.",
		"Una parte è fatta. Il resto è là fuori, e qui 'là fuori' copre parecchia strada.",
		"Un passo avanti. Poca cosa, ma in questa pianura anche un passo avanti è una bella camminata.",
	},
	["mul.quest_progress.w16.step.002"] = {
		"Ne manca un po'. Se fisso l'erba abbastanza a lungo, forse confessa.",
		"Non è tutto. Un cane della prateria mi guarda contare, con l'aria di chi la sa lunga.",
	},
	["mul.quest_progress.w16.step.003"] = {
		"conta sulle dita, aggrotta la fronte e torna a scrutare l'erba in cerca di quello che manca.",
		"fa il conto di ciò che ha finito e alza gli occhi verso l'altura lontana, dove dev'essere il resto.",
	},
	["mul.quest_progress.w16.step.004"] = {
		"A metà strada. Il sentiero piega verso la prossima altura, e io con lui.",
		"A metà, o quasi. I kodo non hanno fretta e nemmeno io: il resto mi aspetterà.",
	},
	["mul.quest_progress.w16.step.005"] = {
		"C'è altro da fare. I piedi hanno la loro opinione, e non è gentile.",
		"Non ho finito. Le gambe dicono il contrario, ma le gambe non votano.",
		"Manca ancora un pezzo. Il dolore alle ginocchia aspetti il suo turno.",
	},
	["mul.subzone_enter.w16.part.001"] = {
		"cammina sulla sommità della mesa, dove l'erba corre fino all'orlo della rupe e si interrompe di netto, come tagliata col coltello.",
		"segue il bordo della mesa, con la campagna aperta molto più in basso, distesa come una mappa che qualcuno ha dimenticato di ripiegare.",
		"esce sul pianoro alto della mesa, con il vuoto mai lontano da nessun lato.",
	},
	["mul.subzone_enter.w16.part.002"] = {
		"{subzone}. Rovi e segni di uomini-cinghiale dappertutto. I Bristleback le loro case le vogliono spinose.",
		"Un burrone pieno di rovi e di odore di maiale. Quaggiù vive qualcuno che non gradisce visite.",
		"Rovi abbastanza fitti da strappare una pelle, e orme affondate nel fango. Uomini-cinghiale, e tanti.",
	},
	["mul.subzone_enter.w16.part.003"] = {
		"Terra di gnoll. Si capisce dalle ossa e dalla pessima cura della casa.",
		"Gnoll Palemane. Busserei, ma non credo che abbiano porte.",
	},
	["mul.subzone_enter.w16.part.004"] = {
		"si sporge dal bordo del pozzo e sente salire dal buio l'odore freddo dell'acqua profonda.",
		"indugia accanto al pozzo, dove l'erba cresce più verde tutt'intorno, in cerchio, come se lo sapesse.",
	},
	["mul.subzone_enter.w16.part.005"] = {
		"{subzone}. Ha il suono del nome di un clan. In un anno di siccità, quel nome lo si dirà con molta gratitudine.",
		"Un pozzo dove le mandrie bevono a turno, pazienti come una fila al banco del mercato.",
		"Acqua profonda in campo aperto. Quaggiù un pozzo vale più di un muro.",
	},
	["mul.subzone_enter.w16.part.006"] = {
		"Acqua. Bene. Pare che tutto, quaggiù, sia d'accordo: è il posto migliore della pianura.",
		"Acqua pulita e un posto dove sedersi. Quaggiù è una reggia.",
		"Ogni bestia nel raggio di un miglio conosce questo posto. Occhio a dove si mettono i piedi.",
	},
	["mul.subzone_enter.w16.part.007"] = {
		"{subzone}. Chi ha dato il nome a questo posto si è limitato a guardarlo, e ci ha preso.",
		"Erba fino alla cintola e dorata in punta, fin dove mi va di guardare. Il nome non esagera.",
		"Erba aperta in ogni direzione, piatta e generosa. Si capisce perché le mandrie la preferiscano.",
	},
	["mul.subzone_enter.w16.part.008"] = {
		"supera una bassa ondulazione del terreno solo per trovarne un'altra subito dopo, e poi un'altra ancora, come onde lente fatte di terra.",
		"cammina sul lungo saliscendi del terreno, con l'orizzonte che sparisce e riaffiora a ogni passo.",
	},
	["mul.subzone_enter.w16.part.009"] = {
		"scende fino alla riva del lago, dove le canne si affollano nell'acqua bassa e piccoli uccelli ci sfrecciano dentro e fuori.",
		"mette piede sul terreno molle vicino all'acqua, con le canne alte tutt'intorno e la riva opposta bassa e piatta oltre lo specchio del lago.",
		"si accovaccia sul bordo dell'acqua, dove il fango tiene il conto di ogni zoccolo venuto a bere.",
	},
	["mul.subzone_enter.w16.part.010"] = {
		"Le Red Rocks. Abbasso la voce senza averlo deciso. Certi posti lo chiedono.",
		"I tauren portano qui i loro morti, o così ho sentito dire. Camminerò piano e non toccherò niente.",
		"Pietra rossa e un lungo silenzio. Chi riposa qui li merita entrambi.",
	},
	["mul.subzone_enter.w16.part.011"] = {
		"Nani che scavano buche a Mulgore. Un bel viaggio, per una buca.",
		"Cosa cercate là sotto? Lasciate stare. Non voglio sapere di chi è.",
		"Uno scavo su terra tauren. Qualcuno avrà da ridire, e parecchio.",
	},
	["mul.subzone_enter.w16.part.012"] = {
		"Scorie buttate sull'erba buona e un buco nella collina. La Venture Co. è passata di qui, eccome.",
		"Senti che odore? Olio da lanterna e roccia spaccata. Di quello che esce da lì, Mulgore non vedrà un soldo.",
	},
	["mul.subzone_enter.w16.part.013"] = {
		"sale verso la cresta, dove nidi d'arpia fatti di rami e cianfrusaglie si aggrappano alla roccia e voci stridule si rispondono.",
		"si fa strada sulla cresta sassosa sotto le strida delle arpie, con brandelli di stoffa e piume impigliati in ogni sporgenza.",
		"procede rasente la roccia lungo la cresta, scrutando le rupi in alto in cerca di un'arpia che prenda il volo.",
	},
	["mul.subzone_enter.w16.part.014"] = {
		"Qui la terra cambia idea piano. Un po' più di roccia, un po' meno erba, e di colpo sei da un'altra parte.",
		"Passare da una parte di Mulgore all'altra è come voltare pagina in un libro coi margini larghissimi.",
		"Niente recinti, niente mura, niente cancelli. A Mulgore un posto si appoggia piano a quello dopo.",
	},
	["mul.victory.w16.won.001"] = {
		"Un uccello, nascosto nell'erba, riprende a cantare dal punto esatto in cui aveva smesso.",
		"I grilli ricominciano. La pianura non serba rancore.",
		"La pianura riprende i suoi piccoli rumori, uno dopo l'altro.",
	},
	["mul.victory.w16.won.002"] = {
		"Una minaccia in meno per le mandrie.",
		"I mandriani possono dormire un po' più tranquilli.",
		"Un pensiero in meno per chi bada ai kodo.",
	},
	["mul.victory.w16.won.003"] = {
		"si inginocchia un momento nell'erba, tocca la terra e si rialza.",
		"posa per un attimo il palmo sulla terra, come fanno i tauren dopo una caccia.",
	},
	["mul.victory.w16.won.004"] = {
		"Adesso non si muove più. Da qualche parte, una tana o un accampamento resterà ad aspettare.",
		"Chi aspettava alla tana aspetterà a lungo.",
	},
	["mul.victory.w16.won.005"] = {
		"Riposa, adesso. Questa terra è buona per giacerci.",
		"Torna alla Madre Terra, come direbbero i tauren.",
		"Giaci in pace. La pianura ti custodirà.",
	},
	["mul.victory.w16.won.006"] = {
		"Scontro leale, terreno aperto, nessuno dietro cui nascondersi. Questa vittoria me la prendo.",
		"Pulito. Quaggiù non si può barare, quindi questa vale.",
	},
	["mul.victory.w16.won.007"] = {
		"fa lentamente il giro su se stesso nell'erba pestata, ma la pianura non ha altro da offrire.",
		"lascia che la tensione scivoli via dalle spalle e guarda verso le mese lontane.",
	},
	["mul.victory.w16.won.008"] = {
		"Finita. Le mani vogliono continuare a combattere un attimo più di me.",
		"È finita, e le spalle non l'hanno ancora saputo.",
		"Finita. Lascia alle braccia il tempo di crederci.",
	},
	["mul.victory.w16.won.009"] = {
		"Un Bristleback in meno nell'erba alta.",
		"Il burrone sarà più tranquillo, per un po'.",
	},
	["mul.victory.w16.won.010"] = {
		"Qualunque cosa cercassero, resterà sottoterra ancora per un po'.",
		"Un piccone in meno allo scavo. La terra non se ne lamenterà.",
	},
	["mul.victory.w16.won.011"] = {
		"Niente più scuoiature in questa pianura. Non da parte tua.",
		"Hai finito di ridere, gnoll.",
		"La rupe sarà più silenziosa, adesso.",
	},
	["mul.victory.w16.won.012"] = {
		"Un bell'animale, che faceva quel che fanno gli animali. Mi spiace che sia toccato a me.",
		"Voleva il suo pezzo di pianura. Lo capisco meglio di quanto vorrei.",
	},
	["mul.victory.w16.won.013"] = {
		"resta accanto alla bestia immobile un momento più del necessario, senza dire niente.",
		"chiude gli occhi della bestia con due dita, prima di andare avanti.",
	},
	["mul.victory.w16.won.014"] = {
		"Un animale splendido. La pianura è un po' più vuota, e un po' più sicura.",
		"Il puma ha smesso di appostarsi. I mandriani saranno contenti; io non ne sono {g:sicuro|sicura}.",
	},
	["mul.victory.w16.won.015"] = {
		"guarda il resto del branco, se c'è, dileguarsi nell'erba.",
		"tende l'orecchio a un altro ululato e sente solo l'erba che si muove.",
	},
	["mul.victory.w16.won.016"] = {
		"Le mani sono ferme. Bene. Conta più della vittoria.",
		"Mani salde, testa lucida. Il resto siamo solo io e l'erba.",
	},
	["mul.victory.w16.won.017"] = {
		"Madre Terra, riprenditi questa vita con dolcezza.",
		"Torna alla terra, e alla Madre Terra che ti ha fatto.",
	},
	["mul.victory.w16.won.018"] = {
		"solleva la testa verso le rupi lontane, come a fare rapporto.",
		"resta un momento in piedi nell'erba aperta, con l'intera pianura per testimone.",
	},
	["mul.victory.w16.won.019"] = {
		"Nessuna canzone per uno scontro così. Ma la pianura l'ha visto, ed è già qualcosa.",
		"Nessuno ci canterà sopra. Le colline però guardavano.",
	},
	["mul.victory.w16.won.020"] = {
		"Chi è il prossimo? La pianura è grande, e io so aspettare.",
		"Il prossimo. Qui lo spazio non manca.",
		"Qualcun altro? L'erba è tutta libera.",
	},
	["mul.victory.w16.won.021"] = {
		"Lo scontro è stato rapido. Il silenzio dopo ci mette di più.",
		"Finito in fretta. Il silenzio che segue se ne va più piano.",
	},
	["mul.victory.w16.won.022"] = {
		"si siede un momento nell'erba, solo perché c'è.",
		"si accovaccia, strappa un filo d'erba e lo mastica, lo sguardo perso nel vuoto.",
	},
	["mul.victory.w16.won.023"] = {
		"Calma. È finita. Tutti possono tornare a pascolare.",
		"Tutto finito. Le mandrie possono smettere di fingere che non stessero guardando.",
	},
	["mul.victory.w16.won.024"] = {
		"I tauren dicono una parola su ciò che uccidono. Qualunque sia, che basti questo silenzio.",
		"C'è una parola che i tauren pronunciano dopo un'uccisione. Al suo posto, un attimo di silenzio.",
		"Niente parole, allora. Basta un attimo di silenzio.",
	},
	["mul.victory.w16.won.025"] = {
		"Una buca in meno scavata a Mulgore.",
		"Allo scavo mancherà un paio di braccia.",
	},
	["mul.victory.w16.won.026"] = {
		"scioglie le spalle e torna al sentiero, con lo scontro che già rimpicciolisce alle spalle.",
		"riprende il sentiero, lasciandosi dietro un cerchio d'erba schiacciata.",
	},
	["mul.victory.w16.won.027"] = {
		"Una caccia degna. La pianura ti aveva fatto forte.",
		"Bestia forte. Mulgore le cresce bene.",
	},
	["mul.victory.w16.won.028"] = {
		"si massaggia un polso indolenzito e lascia che la quiete della pianura torni a posarsi.",
		"distende una mano rigida e guarda l'erba, mentre torna la quiete.",
	},
	["mul.victory.w16.won.029"] = {
		"Lassù sulle rupi nessuno se n'è accorto. Va bene così.",
		"La città sulla mesa non ha nemmeno abbassato lo sguardo. Certi scontri sono solo tuoi.",
	},
	["mul.victory.w16.won.030"] = {
		"Torna la quiete sulla pianura, per un po'. Bene.",
		"Il sentiero è libero per il prossimo viandante.",
	},
	["mul.victory.w16.wry.001"] = {
		"Alla Venture Co. qualcuno ha appena perso un operaio e guadagnato un modulo da compilare.",
		"La compagnia ne manderà un altro. Ne ha sempre un altro.",
	},
	["mul.victory.w16.wry.002"] = {
		"Contratto rescisso. Niente liquidazione.",
		"Mulgore non firma contratti coi goblin.",
		"Ultimo turno, goblin. Niente straordinari.",
	},
	["mul.victory.w16.wry.003"] = {
		"raccoglie una fattura goblin caduta, la legge e la butta via.",
		"rovescia con un calcio una cassetta degli attrezzi marchiata Venture Co.",
	},
	["mul.victory.w16.wry.004"] = {
		"Un plainstrider a terra. Il resto del gruppo finge di non averlo mai conosciuto.",
		"Gambe lunghe, scontro corto.",
	},
	["mul.victory.w16.wry.005"] = {
		"A terra. Definitivamente.",
		"Dovevi restartene sulla cresta, arpia.",
	},
	["mul.victory.w16.wry.006"] = {
		"A Mulgore si fa così. Credo. Finora nessuno mi ha {g:corretto|corretta}.",
		"È l'usanza del posto? Ha funzionato, quindi direi di sì.",
		"I tauren lo fanno sembrare più facile. Vale lo stesso.",
	},
	["mul.victory.w16.wry.007"] = {
		"I cani della prateria rimettono fuori la testa. Difficile capire se approvano.",
		"Un cane della prateria fischia. Applauso o protesta? Più probabile la protesta.",
	},
	["mul.victory.w16.wry.008"] = {
		"Qualcuno lo dica ai kodo. Vorranno ignorarlo di persona.",
		"Grande notizia per le mandrie. Continueranno a ruminare.",
	},
	["mul.victory.w16.wry.009"] = {
		"si toglie una lappola dalla manica, che si rivela la parte più difficile dello scontro.",
		"trova una spina nello stivale e la guarda più storto del nemico.",
	},
	["mul.victory.w16.wry.010"] = {
		"Vinto. Adesso scopriamo in cosa ho messo il piede nel frattempo.",
		"Vittoria, e uno stivale pieno di fango. Mulgore qualcosa si fa sempre pagare.",
		"Vinto, e ho erba in posti dove l'erba non dovrebbe stare.",
	},
	["mul.victory.w16.wry.011"] = {
		"Se qualcuno chiede, ti ha fatto inciampare l'erba.",
		"Goditi la vista del cielo. Ce n'è in abbondanza.",
		"Almeno l'atterraggio è stato morbido. L'erba serve a questo.",
	},
	["mul.victory.w16.wry.012"] = {
		"Sono {g:sicuro|sicura} che sia la cosa più emozionante successa qui in tutta la settimana.",
		"Gran evento, per Mulgore. Le mandrie non parleranno d'altro.",
	},
	["mul.victory.w16.wry.013"] = {
		"controlla l'equipaggiamento in cerca di danni e trova solo macchie d'erba. Moltissime macchie d'erba.",
		"si spolvera le ginocchia, accigliandosi per le macchie verdi che resteranno.",
	},
	["mul.victory.w16.wry.014"] = {
		"L'aria qui intorno è appena diventata molto più pulita.",
		"Già si sente meno puzza, a Mulgore.",
	},
	["mul.victory.w16.wry.015"] = {
		"Mulgore: erba splendida, gente cordiale, e poi questo.",
		"Nessuno mi aveva detto che la dolce pianura morde.",
		"Pianura graziosa. Abitanti un po' meno.",
	},
	["mul.victory.w16.wry.016"] = {
		"Lo racconterò come uno scontro molto più lungo. Quaggiù nessuno può smentirmi.",
		"Nel racconto saranno stati in tre. La pianura non avrà da ridire.",
	},
	["mul.victory.w16.wry.017"] = {
		"Bene. Ora la pianura può tornare noiosa, che è poi quello che mi piace di lei.",
		"Si torna alla Mulgore tranquilla e un po' noiosa. La noia è sottovalutata.",
	},
	["mul.victory.w16.wry.018"] = {
		"si guarda intorno in cerca di qualcuno con cui vantarsi, e si accontenta di un cane della prateria.",
		"si volta aspettando un applauso, e riceve l'occhiata lenta di un kodo.",
	},
	["mul.weather_change.w16.sky.001"] = {
		"si volta mentre la prima pioggia arriva camminando sulla pianura, schiacciando l'erba davanti a sé in una lunga linea scura.",
		"guarda una cortina di pioggia attraversare l'erba dalla parte delle mese, inghiottendole una dopo l'altra.",
	},
	["mul.weather_change.w16.sky.002"] = {
		"Pioggia su Mulgore. L'erba la beve senza un suono, e le mandrie nemmeno alzano la testa.",
		"Eccola. La pianura aspettava questa pioggia da più tempo di quanto l'aspettassi io.",
		"Finalmente la pioggia. Ogni pozzo della pianura sarà un po' più pieno, e ogni sentiero un po' più fangoso.",
	},
	["mul.weather_change.w16.sky.003"] = {
		"Pioggia. Fa bene all'erba, male a chi ci sta in mezzo.",
		"All'erba serviva da bere. A me non serviva un bagno.",
	},
	["mul.weather_change.w16.sky.004"] = {
		"alza gli occhi mentre il tuono rotola giù dalle mese e l'erba si piega, piatta e argentata, sotto un vento violento.",
		"conta i secondi fra un lampo sulle rupi lontane e il tuono che lo segue, e il conto si fa sempre più corto.",
		"vede un fulmine piantarsi da qualche parte nella pianura aperta, e per un istante tutta la terra diventa bianca.",
	},
	["mul.weather_change.w16.sky.005"] = {
		"Una tempesta su Mulgore, e in tutta la pianura niente più alto di me, a parte le mese. Non è un pensiero rassicurante.",
		"Adesso capisco da dove viene il nome di Thunder Bluff. Tutto il cielo sta litigando sopra le mese.",
		"I fulmini amano l'aperta campagna, e Mulgore non è altro. Stare bassi, continuare a muoversi.",
	},
	["mul.weather_change.w16.sky.006"] = {
		"Ecco, il cielo si schiarisce. Mulgore sembra grande il doppio quando la si vede tutta.",
		"Le nuvole si stanno aprendo. Bene. Mi ero {g:scordato|scordata} di quanto arrivi lontano questa pianura.",
	},
	["mul.weather_change.w16.sky.007"] = {
		"In un attimo la pianura cambia umore. I kodo nemmeno ci fanno caso: hanno già visto di tutto.",
		"Qualcosa nell'aria è cambiato. Quaggiù il cambiamento lo senti prima di saperlo nominare.",
	},
	["mul.weather_change.w16.sky.008"] = {
		"alza la testa mentre tutta la pianura sembra cambiare idea su qualcosa, e l'erba prende all'improvviso un'altra sfumatura.",
		"nota le mandrie lontane voltare la testa tutte insieme, come se Mulgore avesse appena detto qualcosa che solo loro possono sentire.",
	},
]==])
