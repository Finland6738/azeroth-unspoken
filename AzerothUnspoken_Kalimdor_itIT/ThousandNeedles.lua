-- Italian texts of the regional pack kalimdor_thousandneedles (content wave W02). The rules are in AzerothUnspoken_Kalimdor/ThousandNeedles.lua.
local AU = AzerothUnspoken

AU:RegisterRegionalTexts("thousandneedles", "itIT", "kalimdor_thousandneedles", [==[
	["tng.a.attack.01"] = {
		"Tanta strada per questo. Ne valeva la pena!",
		"Smettila di schivare, il riverbero basta e avanza!",
	},
	["tng.a.battle.01"] = {
		"Lontano da casa, ma non dalla mia arma. Fatti sotto!",
		"Niente mura, qui, niente torri. Solo tu e io, allora.",
		"Terreno aperto. Bene. Ti vedo arrivare.",
	},
	["tng.a.battle.02"] = {
		"Un basilisco! Non guardarlo troppo negli occhi.",
		"Una roccia che cammina, e con i denti. Ovvio.",
		"Pelle di cristallo, pessimo carattere. Mira ai punti molli.",
	},
	["tng.a.battle.03"] = {
		"Lontano da ogni avamposto amico. Meglio vincerla, questa.",
		"Il riverbero del sale negli occhi. Se posso, tenerlo alle spalle.",
		"Respira, pianta i piedi e non scivolare sul sale.",
	},
	["tng.a.journey.01"] = {
		"Finalmente coi piedi per terra. Da quaggiù Thousand Needles non sembra più amichevole, solo più vicina.",
		"Fine del viaggio. Tutto ciò che conosco è molto lontano alle mie spalle; davanti ci sono sale e pietra.",
		"Eccomi, dunque. Do all'orizzonte una lunga occhiata, prima di fidarmi.",
	},
	["tng.a.landmark.01"] = {
		"{landmark}. Motori, applausi e odore d'olio bruciato lontano da tutto. Questo baccano quasi lo abbraccerei.",
		"La pista sul sale. Goblin da una parte, gnomi dall'altra, e tutti contenti di vedere un cliente.",
	},
	["tng.a.lowhp.01"] = {
		"Troppo lontano da chiunque verrebbe a cercarmi. Alzati.",
		"Se cado qui, mi terrà il sale e nessun altro. In piedi.",
	},
	["tng.a.lowhp.02"] = {
		"Non su questo sale. Non oggi!",
		"Non ho fatto tutta questa strada per fermarmi qui!",
	},
	["tng.a.muse.01"] = {
		"Nessuno stendardo amico per giorni, in qualunque direzione. Solo sale, caldo e le mie impronte.",
		"Qui il primo amico sta a una lunga camminata e a una speranza testarda di distanza.",
		"I tauren hanno le alture, i centauri i canyon, e a me resta il sale. Che bella compagnia.",
	},
	["tng.a.muse.02"] = {
		"La piana di sale brilla tanto che fa male guardarla. Ogni pochi passi l'orizzonte diventa acqua, poi torna terra.",
		"Terra bianca fino al limite della vista, spaccata a piastrelle. Pare un pavimento che qualcuno ha dimenticato di finire.",
		"Il calore tremola sulla piana finché le rocce lontane sembrano galleggiare. Per forza le hanno dato il nome di quel luccichio.",
	},
	["tng.a.muse.03"] = {
		"Goblin e gnomi che corrono sui razzi in una piana di sale. Ho fatto tanta strada per vedere il mondo, ed eccolo qua.",
		"Là fuori sul sale c'è qualcuno che sta costruendo un modo più veloce per saltare in aria. Auguri.",
	},
	["tng.a.muse.04"] = {
		"Ogni sagoma di tauren sulle creste mi fa scivolare la mano verso la cintura. Abitudine, da queste parti.",
		"Le alture sono dell'Orda. Io resto in basso, tengo la testa china e la mano mai troppo lontana dall'equipaggiamento.",
		"Questa è la loro parte del mondo, e io ci sto senza invito. Le mani restano dove posso usarle.",
	},
	["tng.a.muse.05"] = {
		"si inginocchia a toccare la crosta bianca della piana e si porta alle labbra un dito che sa di sale.",
		"socchiude gli occhi nel riverbero del sale, dove un pennacchio di polvere segna qualcosa di veloce, molto lontano.",
	},
	["tng.a.muse.06"] = {
		"Una lunga strada per arrivare e una lunga strada per andarsene. Alla piana non importa; io conto l'acqua e vado avanti.",
		"Qui conto l'acqua prima delle monete. Le monete non hanno mai tenuto in vita nessuno sul sale.",
	},
	["tng.a.muse.07"] = {
		"Dalla piana gli aghi sembrano una città lontana fatta di torri, e in nessuna c'è una lampada accesa.",
		"Le guglie di pietra stanno al margine del sale come una folla venuta a guardare e mai tornata a casa.",
		"Pietra vecchia, sale bianco, cielo vuoto. Qualunque cosa sia accaduta qui, è accaduta molto prima che qualcuno pensasse a darle un nome.",
	},
	["tng.a.muse.08"] = {
		"Sale negli stivali, sale tra i denti. Un posto delizioso.",
		"La prossima volta che qualcuno mi dice 'subito dopo il canyon', chiedo quanto dopo.",
	},
	["tng.a.npc_meet.01"] = {
		"Un mercante ai confini del mondo, con prezzi all'altezza della distanza.",
		"Qualunque cosa mi serva ce l'hanno, e qualunque cosa abbiano costa il doppio del dovuto. Giusto, così lontano da tutto.",
	},
	["tng.a.npc_meet.02"] = {
		"Serve una mano? Casa è lontana, e un lavoro mi farebbe comodo.",
		"Hai l'aria di chi ha un problema. Ti ascolto.",
	},
	["tng.a.quest_complete.01"] = {
		"Fatto. Adesso qualcuno, da queste parti, deve un favore all'Alleanza.",
		"Finito. Quando racconterete la storia, ricordate chi vi ha dato una mano.",
	},
	["tng.a.quest_complete.02"] = {
		"Pagato in monete e un po' di fiducia. A Thousand Needles sono rare entrambe.",
		"Lavoro fatto, lontano da ogni stendardo dell'Alleanza, e qualche moneta in tasca. Chissà perché, così vale di più.",
		"Un altro favore a degli sconosciuti, un'altra moneta nella borsa. Qui fuori non ci sono che sconosciuti.",
	},
	["tng.a.quest_complete.03"] = {
		"intasca il compenso, poi scuote via il sale dal borsello prima di chiuderlo.",
		"ringrazia con un cenno e si volta di nuovo verso il lungo riverbero bianco della piana.",
	},
	["tng.a.quest_progress.01"] = {
		"Ecco fatto. Adesso la lunga camminata di ritorno attraverso il sale.",
		"Ho tutto quello per cui ero {g:venuto|venuta}. La piana può riprendersi il suo riverbero.",
	},
	["tng.a.subzone_enter.01"] = {
		"si ferma dove il sentiero si allarga, scrutando le creste in cerca di un segno di chi tiene questo tratto di canyon.",
		"rallenta all'imbocco del tratto successivo e controlla le alture, le conche e le vie d'uscita, in quest'ordine.",
		"si ferma dove la pietra cede il passo al terreno aperto, riparandosi gli occhi dal riverbero.",
	},
	["tng.a.victory.01"] = {
		"Fatto. Ora un po' d'acqua, prima che il sale mi secchi del tutto.",
		"È a terra. Il caldo no, ed è il prossimo avversario; prima un sorso d'acqua.",
		"In piedi, e con un po' d'acqua rimasta. Qui fuori la vittoria è tutta lì.",
	},
	["tng.a.victory.02"] = {
		"E questa è una cosa in meno che cerca di mangiarmi a Thousand Needles.",
		"Qualcuno lo dica ai goblin. Possono scommettere sul prossimo.",
		"Riposa lì. Il sale ti conserverà.",
	},
	["tng.a.victory.03"] = {
		"si spazzola la grana bianca dalle maniche e si guarda intorno nella piana vuota, come in attesa di un applauso.",
		"si raddrizza piano nel riverbero, una mano sugli occhi a scrutare l'orizzonte in cerca di quel che verrà.",
	},
	["tng.a.weather_change.01"] = {
		"L'ultima foschia si dissolve, e sotto un cielo vuoto la piana diventa di un bianco accecante da un capo all'altro.",
		"Cielo limpido sopra il sale. Ogni crepa del terreno risalta, e io con lei.",
	},
	["tng.h.attack.01"] = {
		"Per Freewind!",
		"Giù dalla rupe!",
	},
	["tng.h.attack.02"] = {
		"Ecco dell'altro caldo per te.",
		"Occhio al salto!",
	},
	["tng.h.battle.01"] = {
		"Avanti, allora. Di canyon in cui cadere ce n'è in abbondanza.",
		"Occhio al bordo! Le spalle contro la pietra.",
		"Qui fuori nessuno ti sente gridare. E allora che il grido valga qualcosa!",
	},
	["tng.h.battle.02"] = {
		"Galak! Lontano da quegli zoccoli!",
		"Torna al tuo accampamento, centauro. Oppure no, e resta qui per sempre.",
		"Questi canyon non sono vostri, Galak.",
	},
	["tng.h.battle.03"] = {
		"Grimtotem. Ne farei volentieri a meno, ma hai deciso tu per tutti e due.",
		"Stesse rupi, stesso cielo, e tu alzi ancora un'arma. E sia.",
		"Cairne ha teso la mano. Voi avete scelto questo.",
	},
	["tng.h.battle.04"] = {
		"Polvere negli occhi, roccia ai talloni. Una cosa semplice: non cadere.",
		"Terreno aperto, nessun riparo, e qualcosa di furioso in arrivo. Va bene.",
		"Respira. Questo caldo sfianca chiunque abbia delle gambe, non solo me.",
	},
	["tng.h.battle.05"] = {
		"pianta i piedi tra i sassi smossi ai piedi di un ago di roccia, {g:pronto|pronta} a qualunque cosa scenda dal sentiero.",
		"si volta ad affrontare la carica con la parete del canyon alle spalle e una manciata di sassi sotto gli stivali.",
	},
	["tng.h.battle.06"] = {
		"Un altro? Il canyon è proprio generoso, oggi.",
		"Bene. Il paesaggio cominciava ad annoiarmi.",
	},
	["tng.h.journey.01"] = {
		"Via dalla rupe e dentro l'aria aperta. Gli aghi si allontanano come un letto di chiodi visto da un tetto.",
		"Freewind si rimpicciolisce alle mie spalle: qualche tenda e una ragnatela di corde. Da quassù i Galak sembrano formiche.",
	},
	["tng.h.journey.02"] = {
		"scivola giù dalla viverna in cima alla rupe, le gambe rigide, mentre i ponti di corda scricchiolano un saluto.",
		"atterra a Freewind in un turbine di polvere e di voci tauren, e ci mette un momento a ritrovare l'equilibrio.",
	},
	["tng.h.landmark.01"] = {
		"{landmark}. Tende di pelle, ponti di corda, un fuoco acceso e tauren disposti a dividerlo. Qui si riposa.",
		"A Freewind il vento non molla mai, e l'accoglienza nemmeno. Una ciotola, un cenno, un posto accanto al focolare.",
		"Freewind Post. I ponti oscillano, ma la gente che ci cammina sopra no. Un buon posto per riprendere fiato.",
	},
	["tng.h.lowhp.01"] = {
		"Non su questa terra spaccata. Non con gli avvoltoi che già guardano.",
		"Troppo caldo, troppe ferite. Verso le rocce.",
		"La pietra è calda sotto la mano. Preferirei non farne il mio cuscino.",
	},
	["tng.h.lowhp.02"] = {
		"Freewind è una lunga salita. Non ho ancora finito.",
		"Ancora su! Il canyon dovrà impegnarsi di più.",
		"Mi ha preso. Non mi ha {g:fermato|fermata}.",
	},
	["tng.h.muse.01"] = {
		"Aghi di pietra fin dove arriva lo sguardo, ognuno per conto suo. Chi li ha scolpiti aveva molta pazienza e nessun progetto.",
		"Una foresta di roccia senza foglie e senza riparo. Il vento è l'unico che la attraversa apposta.",
		"Ogni guglia, qui, sta dritta come una sentinella a cui nessuno verrà a dare il cambio. Un turno lungo, il suo.",
	},
	["tng.h.muse.02"] = {
		"Freewind Post sta appesa tra una rupe e l'altra a forza di corde e di buona fede. I tauren passano su quei ponti come fosse terra piana.",
		"Chiunque abbia fatto il primo nodo di quei ponti lassù a Freewind, spero fosse sobrio e senza fretta.",
	},
	["tng.h.muse.03"] = {
		"Il fondo del canyon è crepato come un vecchio vaso. Un tempo qui scorreva l'acqua; adesso il suo percorso lo ricorda solo la polvere.",
		"Laggiù, sul fondo del canyon, la terra si spacca in lastre, secca come pane dimenticato per una settimana sul tavolo.",
		"Quaggiù di alto cresce soltanto la pietra. Perfino gli arbusti tengono la testa bassa.",
	},
	["tng.h.muse.04"] = {
		"Mille aghi e nemmeno uno buono per rammendare.",
		"Vorrei proprio sapere chi li ha contati. Io ho perso il conto a quaranta.",
		"Con una moneta per ogni ago potrei comprarmi un canyon un po' meno appuntito.",
	},
	["tng.h.muse.05"] = {
		"Impronte di zoccoli nella polvere, fresche, tutte nella stessa direzione. I Galak non vagano: cavalcano verso una meta.",
		"I Galak guardano il canyon dai loro accampamenti come fosse roba loro. A Freewind la pensano in un altro modo, e io pure.",
		"Là fuori un esploratore centauro mi guarda attraversare questo spiazzo scoperto. Va bene. Che conti pure i miei passi.",
	},
	["tng.h.muse.06"] = {
		"Totem dei Grimtotem sulle alture. Tauren che hanno voltato le spalle a Cairne, e a tutti gli altri insieme a lui.",
		"È dura guardare i Grimtotem. Stesse corna, stesse grandi mani, e dietro gli occhi soltanto muri.",
		"I Grimtotem stanno per conto loro e tengono fuori tutti noi. Tanto tempo fa una strada si è biforcata, e loro hanno preso il ramo più stretto.",
	},
	["tng.h.muse.07"] = {
		"si fa schermo agli occhi e segue una viverna che plana tra le guglie, piccola come una falena contro la pietra.",
		"guarda il vento strappare un filo di polvere dalla cima di un ago di roccia, come fumo da un camino spento.",
		"si ferma ad ascoltare il vento che fischia negli spazi tra le guglie, acuto e sottile, un suono che non finisce mai.",
	},
	["tng.h.muse.08"] = {
		"Il Great Lift ti cala fuori dalle Barrens come un secchio nel pozzo. I tauren che lo manovrano non battono ciglio.",
		"Basta una corsa sul Great Lift e l'erba delle Barrens sparisce, barattata con pietra e calura. Scambio rapido.",
	},
	["tng.h.muse.09"] = {
		"Freewind tiene le alture, e l'Orda tiene Freewind. Mi sembra un buon accordo.",
		"Finché i ponti di Freewind restano su, l'Orda ha un tetto in questo canyon.",
		"Quell'avamposto lassù l'hanno costruito i tauren, e il resto dell'Orda è il benvenuto. Non tutti i popoli dividerebbero così.",
	},
	["tng.h.muse.10"] = {
		"Il sole rimbalza due volte su ogni parete di roccia prima di arrivare a me. Tra poco sarò {g:cotto|cotta} a puntino.",
		"Il caldo sale dalla terra e scende dal cielo, e io sono il pezzo in mezzo che si cuoce.",
		"L'otre pesa meno ogni volta che lo sollevo. Il canyon beve dalla mia bocca.",
	},
	["tng.h.muse.11"] = {
		"Col buio gli aghi diventano neri contro più stelle di quante abbia mai dovuto dividere in un cielo solo.",
		"Quando scende la notte, il calore lascia in fretta la pietra. Strano paese: prima ti cuoce, poi si scorda di te.",
		"Stelle tra le guglie, così tante che gli spazi sembrano affollati. Il canyon è tanto quieto che sento il mio respiro.",
	},
	["tng.h.muse.12"] = {
		"Le arpie fanno il nido nei canyon, da queste parti. Le senti molto prima di vederle, ed è l'unica gentilezza che concedono.",
		"Quegli strilli laggiù tra i canyon? Arpie. Più in là c'è una gola piena di piume e di malumore.",
	},
	["tng.h.muse.13"] = {
		"si accovaccia a raccogliere una pietra piatta, la rigira, e sotto ci trova uno scorpione dalle idee molto chiare.",
		"allontana un sasso dal sentiero con un calcio e lo ascolta rotolare giù, e giù ancora, molto più a lungo del normale.",
	},
	["tng.h.npc_meet.01"] = {
		"trova chi bada alle viverne intento a togliere un lappolo dalla criniera di una bestia, parlandole a voce bassa e paziente.",
		"osserva le viverne muoversi sui posatoi al bordo della rupe, le ali socchiuse al vento caldo che sale dal basso.",
	},
	["tng.h.npc_meet.02"] = {
		"Qualcosa di fresco da bere, e un letto che non dondoli.",
		"C'è dell'acqua? È tutto il giorno che mangio la polvere del canyon.",
	},
	["tng.h.npc_meet.03"] = {
		"Una guardia tauren, immobile come un palo, che sorveglia il canyon invece di me. Mi piace quest'ordine di priorità.",
		"Queste guardie si appoggiano alle armi come se ci fossero cresciute sopra. Dal canyon non sale niente senza che lo vedano.",
	},
	["tng.h.quest_complete.01"] = {
		"Fatto. Freewind resta salda per un altro giorno.",
		"Finito, e l'avamposto è più sicuro per questo. Mi basta.",
		"Un altro piccolo nodo stretto nella corda che tiene insieme questo posto.",
	},
	["tng.h.quest_complete.02"] = {
		"Ecco. Adesso qualcuno mi deve un posto vicino al fuoco.",
		"Tutto fatto! Indicatemi l'acqua e la smetto di parlare.",
		"Finito. Accetto ringraziamenti sotto forma di acqua fresca e di un posto a sedere, se qualcuno offre.",
	},
	["tng.h.quest_complete.03"] = {
		"accetta la ricompensa con un breve cenno e la mette via prima che il vento ci prenda interesse.",
		"soppesa il compenso nel palmo, lo ripone e torna a guardare il canyon, e il vento che lo attraversa.",
	},
	["tng.h.quest_complete.04"] = {
		"Lavoro fatto. Il canyon non se ne accorgerà, ma la gente lassù sulla rupe sì.",
		"Finito. In un posto così grande, ogni piccola riparazione regge qualcosa di più grosso.",
	},
	["tng.h.quest_complete.05"] = {
		"Per l'Orda, e per i tauren che tengono questo avamposto.",
		"Fatto. Oggi a Thousand Needles l'Orda sta un po' più dritta.",
	},
	["tng.h.quest_progress.01"] = {
		"Preso tutto. Adesso si torna da chi aspetta, e ogni passo è in salita.",
		"Raccolto tutto. Il canyon l'ha ceduto a malincuore, come cede ogni cosa.",
		"Qui ho finito. È ora di riportarlo indietro, prima che il caldo si porti via me.",
	},
	["tng.h.subzone_enter.01"] = {
		"arriva al Great Lift, dove grosse funi scricchiolano lungo la parete e le piattaforme salgono e scendono come un respiro lento.",
		"si ferma al Great Lift mentre una piattaforma geme lungo la pietra a strapiombo, carica di casse e di viaggiatori.",
	},
	["tng.h.subzone_enter.02"] = {
		"Un altro tratto di canyon. Stessa pietra, modi diversi di cadermi in testa.",
		"Un'altra curva, un altro gruppo di guglie che si sporge a darmi un'occhiata.",
		"Il sentiero sbuca su un terreno diverso. Prima controllo le alture, poi la strada.",
	},
	["tng.h.victory.01"] = {
		"Freewind può dormire un po' più tranquilla.",
		"Una minaccia in meno sul sentiero per Freewind.",
		"Il canyon è più quieto. Che resti così.",
	},
	["tng.h.victory.02"] = {
		"Cercati una roccia piatta contro una guglia e siediti. Bevi. Poi pensa.",
		"Mi tremano le mani, per il caldo o per lo scontro. Qui è difficile capirlo.",
		"In piedi io, e in piedi la pietra. Diciamo pari.",
	},
	["tng.h.victory.03"] = {
		"pulisce l'arma su un ciuffo d'erba secca e scruta il canyon in cerca della prossima sagoma in movimento.",
		"si appoggia alla roccia calda, il petto che si alza e si abbassa, mentre la polvere dello scontro si posa piano su chi è caduto.",
	},
	["tng.h.victory.04"] = {
		"Qualcosa per gli avvoltoi. Mi giravano sopra da quando sono {g:arrivato|arrivata}.",
		"Così impari ad attaccar briga con questo caldo.",
		"Giù. Il fondo del canyon è più morbido di quanto sembri. No, non è vero.",
	},
	["tng.h.victory.05"] = {
		"Dillo al tuo accampamento: anche il canyon morde.",
		"Un cavaliere in meno per i Galak.",
	},
	["tng.h.weather_change.01"] = {
		"guarda la foschia sollevarsi dal canyon finché gli aghi spiccano netti, rosso e oro, ogni crepa ben visibile.",
		"alza lo sguardo mentre il cielo si apre in un azzurro duro e luminoso sopra le guglie, e ogni ago di pietra vi si staglia netto.",
	},
]==])
