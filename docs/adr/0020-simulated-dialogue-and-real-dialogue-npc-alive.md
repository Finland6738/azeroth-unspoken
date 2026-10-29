# 0020. NPC Alive: un dialogo simulato non è un dialogo reale

- Stato: accettata
- Data: 2026-10-29 (step S8; GDD §5.3, §7.3, §21-B; ADR 0003, 0004, 0005, 0015, 0017, 0018, 0019)

## Contesto

Il GDD (§7.3) vuole «micro-dialoghi locali» con NPC reali identificabili o con archetipi: una finestra, da una a tre risposte, chiusura immediata. Il rischio è confondere ciò che l'addon inventa con ciò che il gioco o un altro giocatore dice davvero. Se una battuta di un locandiere compare nella chat, o ha lo stesso aspetto della finestra di gossip di Blizzard, il giocatore può credere che sia l'NPC vero, che abbia ricevuto un incarico, uno sconto, un'informazione. Se la finestra copre la finestra del mercante, o l'addon chiama una funzione di gossip o di quest, disturba il gioco. E se si indovina chi è un NPC, si attribuiscono a una persona battute che non sono sue (per esempio quelle di un locandiere a chi è solo un passante).

I vincoli di progetto sono già chiari: nulla in chat pubblica senza un gesto del giocatore ([ADR 0003](0003-private-narrator-and-chat-gateway.md)), nessuna decisione su valori segreti ([ADR 0005](0005-compat-secret-values-and-defensive-events.md)), il ruolo di un NPC non si indovina ([ADR 0019](0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md)).

## Decisione

1. **Un dialogo ambientale è sempre dichiarato simulato.** La finestra (`UI/DialogueFrame.lua`) porta in cima, su una fascia di colore diverso dal resto, l'etichetta **«dialogo ambientale dell'addon»** (in inglese *addon ambient dialogue*), con un suggerimento che dice che non sono le parole dell'NPC vero, che non compaiono in chat e che non cambiano missioni, commercio o altre finestre. Un dialogo con l'NPC di prova lo dice anche nel titolo. Il testo del dialogo non ha mai l'aspetto di un messaggio di un NPC (`CHAT_MSG_MONSTER_*`): nessuna battuta è scritta in chat, né nel narratore né nella cronologia.
2. **Mai interferire con Blizzard.** L'addon non chiama funzioni di gossip, quest, commercio, volo o addestramento; non nasconde né sposta finestre di Blizzard; non si registra in `UISpecialFrames` (Esc chiuderebbe anche le finestre dell'NPC). La finestra si mette dove **non copre** le finestre di Blizzard visibili (`GossipFrame`, `QuestFrame`, `MerchantFrame`, `TaxiFrame`, `ClassTrainerFrame`, `BankFrame`, `TradeFrame`, le borse...: si leggono solo se esistono, con `GetRect`), prova più posizioni (quella scelta dall'utente, a destra, in alto, in basso a destra) e ogni mezzo secondo si sposta se una finestra si apre sotto. Sopra una quest l'offerta sparisce; durante un filmato, un combattimento o da morti non c'è dialogo.
3. **Il giocatore decide sempre.** Un dialogo parte solo da un gesto: il pulsante di un'offerta, `/au npc`, il tasto assegnato. L'**offerta** (un piccolo pulsante «Ascolta», `autoOffer`) compare da sola su un'interazione valida, scade dopo 20 secondi, al massimo una volta ogni tre minuti per NPC e finestra, e non c'è con l'intensità a 0 o in pausa; i dialoghi aperti a mano restano sempre possibili (GDD §4.2). Le **risposte** sono neutre: domande e azioni («Che notizie corrono?», «Mi fermo un momento.»), mai un sentimento, un carattere o una decisione morale attribuiti al personaggio, mai un impegno; sono al massimo tre e si chiude in ogni momento con la x.
4. **Macchina a stati** `idle → offered → opened → choice → response → ended` (`Systems/NPCAlive.lua`), con transizioni ammesse in una tabella e rifiutate se fuori ordine. `opened` è l'apertura della finestra con la battuta d'apertura, `choice` l'attesa della scelta, `response` la risposta dell'NPC (con altre risposte si torna a `choice`, senza si chiude). `ended` registra il motivo: `closed`, `finished`, `offer_expired`, `idle` (120 s senza una scelta), `combat`, `death`, `zone`, `npc_changed`, `quest_open`, `no_line`, `disabled`.
5. **Identità**: nessun dialogo se è incerta o segreta.
   - **NPC specifico**: l'`npcID` ricavato dal GUID è nel registro curato `Data/NPCs.lua` (o l'utente gli ha dato un ruolo con `/au npc ruolo` o `/au chi tratto role`).
   - **Archetipo** (locandiere, mercante, maestro di volo, addestratore): solo dall'**interazione in corso** che lo prova (mercante, volo, addestramento, locandiere che fissa la dimora) o da una già avvenuta con lo stesso NPC nella sessione. Il solo gossip non basta; il ruolo non si ricava mai dal nome o dall'aspetto.
   - **Mai** con giocatori, creature ostili, NPC morti, identità segreta (`C_Secrets`), GUID mancante o illeggibile.
6. **La voce dell'NPC** è fatta di regole del motore (`speaker = "npc"`, eventi `npcd_<ruolo>_<nodo>`) scelte da `Engine:PickEntry` con il contesto dell'interlocutore (modo di parlare, temperamento, ruolo) e della relazione (conosciuto o no): stessi pesi, stessa anti-ripetizione, stesso validatore delle altre frasi. Escono solo dentro un dialogo (una guardia sull'evento): né `/au evento` né il Director possono produrle. Con una finestra aperta il narratore spontaneo tace (`SetRhythm("npcalive")`).
7. **Effetti locali, limitati e dichiarati.** Una risposta può impostare un **flag narrativo** (`npcd_<archetipo>_<nome>`, memoria di S6: serve alle battute successive con `remembered`) e muovere poco la relazione con l'NPC (fonti `ambient` e `ambient_talk` di `Data/Relationships.lua`, con tetti giornalieri; non conta come una nuova interazione). Una conversazione con almeno una risposta lascia un ricordo `npc_talk` (importanza 2 la prima volta, 1 poi): solo ruolo, luogo e tag, **mai** il testo, il nome o l'`npcID`. Mai una quest, un oggetto, un prezzo, un effetto sul gioco. L'NPC di prova (`/au npc prova`) non scrive nulla.
8. **Contenuti**: le battute non nominano prezzi, quest o fatti di cronaca, non promettono ciò che il gioco non mantiene (sconti, stanze, merci) e non dicono di essere le parole dell'NPC vero. I copioni (nodi, risposte, flag) sono dati in `Data/Dialogues.lua`, controllati da `NPCAlive:Check()` e dal validatore (`badDialogue`).

## Alternative considerate

- **Ripiego nella chat locale** (le battute come messaggi dell'NPC con un prefisso): scartata. Somiglia troppo a un messaggio vero e finisce nella cronologia della chat.
- **Mettere un pulsante dentro la finestra di gossip di Blizzard**: scartata. Significherebbe modificare o ancorare qualcosa alle sue finestre, che cambiano da una build all'altra.
- **Indovinare l'archetipo dal nome o dalle opzioni del gossip**: scartata. Un locandiere è tale per il suo ruolo, non per come si chiama; il ruolo vero lo dicono il registro, l'interazione o l'utente.
- **Risposte libere o scritte dal giocatore**: scartata per ora; le risposte neutre bastano a non mettere parole in bocca al personaggio. Una risposta modificabile si valuterà con il gioco sociale (S10).
- **Un fattore a parte per ogni NPC specifico**: scartata. Le battute di un NPC del registro sono regole con `other = { npcID = … }` e peso maggiore; la macchina a stati è la stessa.

## Conseguenze

- Positive: il giocatore sa sempre che cosa è inventato e che cosa è vero; Blizzard non è toccata; un'identità incerta non produce mai battute false; le voci di un locandiere burbero e di uno gioviale si distinguono e variano senza ripetersi; il modello di dati (copioni, regole, flag) è quello dei pacchetti e un pacchetto può aggiungere i suoi.
- Negative o costi: pochi NPC hanno un ruolo certo (il registro è corto e **i suoi numeri non sono verificati** in Forever: [issue #36](https://github.com/Finland6738/azeroth-unspoken/issues/36)); un locandiere fuori dal registro si riconosce solo con l'interazione per fissare la dimora o con `/au npc ruolo locandiere`. La posizione della finestra e il rilevamento delle finestre di Blizzard usano nomi di FrameXML che nel client vero non sono ancora stati provati (G3).

## Riferimenti

`Systems/NPCAlive.lua`, `UI/DialogueFrame.lua`, `Data/Dialogues.lua`, `Data/RegistryDialogues.lua`, `Data/NPCs.lua`; `Tests/TestNPCAlive.lua`; GDD §5.3, §7.3, §21-B; [`docs/G1_checklist.md`](../G1_checklist.md) (G3); issue #36.
