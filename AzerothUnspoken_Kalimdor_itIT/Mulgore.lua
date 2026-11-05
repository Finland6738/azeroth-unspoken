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
]==])
