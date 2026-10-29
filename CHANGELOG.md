# Changelog

Tutte le modifiche rilevanti di questo progetto sono registrate qui.

Il formato segue [Keep a Changelog 1.1.0](https://keepachangelog.com/it-it/1.1.0/) e il progetto intende seguire il [versionamento semantico](https://semver.org/lang/it/) a partire dalla versione 1.0. Fino ad allora le versioni 0.x possono cambiare in modo non retrocompatibile. Lo schema dati v2 dei pacchetti di frasi (step S3) è ora stabile e descritto in [FORMATO_PACCHETTI.md](AzerothUnspoken/FORMATO_PACCHETTI.md), ma può ancora cambiare prima della 1.0: i cambiamenti saranno annunciati qui.

Nessuna versione è stata ancora rilasciata: non ci sono pacchetti di distribuzione. La versione nel file `.toc` è `0.1.0`.

## [Non rilasciato]

Le voci sono **raggruppate per step o attività**, dal più recente al più vecchio (milestone M0–M3: S1–S9). In ogni gruppo le modifiche a ciò che esisteva (*Modificato*) e le correzioni (*Corretto*) stanno sotto le novità. In fondo, i limiti noti. I gruppi delle sessioni di correzione e di revisione dei testi (Q5, Q6) che lavorano in parallelo a questa documentazione si aggiungono qui sopra, con il loro nome.

### Documentazione: allineamento a M0–M3 (attività D2, issue #57, #58 e #59)

- `README.md` e `README.en.md` riscritti per lo stato di `main`: tutte le funzioni (narratore privato, Chat Gateway, intensità e profondità, personalità e Total RP 3, memoria e diario, relazioni, interlocutore e luogo, NPC Alive, Story Arcs), i numeri reali (1.005 intenzioni, 2.109 varianti per lingua, quattro voci), tutti i comandi e gli alias, i quattro tasti, la privacy (relazioni, Total RP 3 degli altri solo con consenso, nessuna chat salvata, nulla in chat pubblica senza un'azione del giocatore) e lo stato del progetto con le prove in gioco ancora da fare.
- `AzerothUnspoken/FORMATO_PACCHETTI.md`: **tutti gli esempi sono scritti per un pacchetto esterno** (`AzerothUnspoken:` e non `NS:`) e sono **provati dai test**; descrive che cosa succede con una chiave già esistente (copione, NPC, luogo o arco: sostituzione per intero, [#69](https://github.com/Finland6738/azeroth-unspoken/issues/69)) e consiglia una chiave nuova con `extends`; conteggi aggiornati.
- **`Tests/check_docs.py`** (collegato a `run_tests.py`): carica ogni blocco `lua` marcato `<!-- prova -->` della guida come un pacchetto esterno e fa girare il validatore (`<!-- prova: errore -->` per gli esempi sbagliati apposta); controlla tutti i link relativi dei file Markdown, àncore comprese.
- `docs/ARCHITETTURA.md`: diagramma e tabella degli agganci dei sistemi di M1–M3 al motore, versioni dello schema e dei dati per personaggio, API dei pacchetti aggiornata (schema v2, `RegisterDialogues`, `RegisterNPCs`, `RegisterPlaces`, `RegisterArcs`...), impostazioni complete, sezione di ciò che manca riscritta.
- `CONTRIBUTING.md`, ADR 0006 (schema 6, versioni interne dei moduli, regola per i dati più nuovi) e questo `CHANGELOG.md`, riordinato per step (prima le sezioni «Aggiunto» e «Modificato» erano mescolate).

### Step S9: Story Arcs, le storie personali

- **`Systems/StoryArcs.lua`**: micro-storie del personaggio, **non quest del server**: nessuna ricompensa, nessun effetto sul gioco, nessuna modifica agli NPC veri. Stati `LOCKED → DISCOVERED → REFLECTED → RESOLVED` (un arco può definirne di propri tra i due estremi; da uno stato si va solo al successivo). Ogni passo è un dato: eventi (`zone` per uiMapID e nome della zona, `death`, `level`, `npc`, `flag`, `player`), condizioni del RuleEngine, attesa e, se serve, una scelta del giocatore. Apertura e avanzamento **solo da un evento vero** o da una scelta diretta: il tempo, un comando o un altro sistema non aprono né fanno avanzare nulla; un evento muove un arco di un solo passo. [ADR 0021](docs/adr/0021-story-arcs-micro-storie-senza-effetti-sul-gioco.md).
- **Al massimo 1–2 archi attivi** (`arcs.maxActive`, `/au storie max`): a posti finiti l'arco resta «disponibile» e lo avvia il giocatore. Ogni arco si può **sospendere, saltare o disattivare**, uno per uno o tutti; il modulo «Storie» spegne tutto. Le scelte (2–3 opzioni neutre, salvate come id) le fa sempre il giocatore; un arco su un argomento che il personaggio evita (`topic`) non si apre.
- **Chiusura con un ricordo permanente** in Living Memory (`story`, solo id e luogo); ogni stato lascia il flag `arc_<id>_<stato>`. Persistenza in `cdb.arcs` con **schema 6** (migrazione del personaggio e migrazione interna, sola lettura per dati più nuovi); la scelta in attesa, il modo e le scelte sopravvivono a `/reload`.
- **Narrative Director**: gli eventi `arc_open`, `arc_step` e `arc_resolve` hanno priorità «evento eccezionale» e parlano **una alla volta** (almeno 90 secondi tra due battute di archi), mai in combattimento, da morti, in incursione o campo di battaglia; se il momento non è buono aspettano fino a 15 minuti. Lo stato avanza anche in silenzio: il diario racconta. `Director:Offer(evento, extra, onResult)` ora restituisce l'esito a chi propone.
- **Diario**: scheda «Storie» con le storie in corso, quelle che possono cominciare, le concluse e le saltate o disattivate; il dettaglio mostra il racconto e **le scelte fatte**. Comando `/au storie` (`lista`, `diario`, `scegli`, `inizia`, `sospendi`, `riprendi`, `salta`, `disattiva`, `attiva`, `max`, `on`, `off`, `stato`).
- **Quattro archi di base**, bilingui: «Il sentiero ritrovato» (il ritorno nella zona da cui è cominciata l'avventura), «Un volto noto» (un NPC conosciuto, con le relazioni di S6b), «Il luogo della caduta» (una perdita: la morte e il ritorno) e «Le tre porte» (il viaggio tra le capitali, con uno stato proprio e una riflessione che parte dal giocatore). 33 battute IT/EN (voci private: pensiero e narratore).
- **Formato dei pacchetti**: `NS:RegisterArcs{ pack, arcs, texts }`, `NS:AddArcTexts`, sotto-tabella di condizioni `arc = { id, state, from, choice, withSubject }`, `arcDone`, `capitalsVisitedMin`; il validatore controlla definizioni, scelte, testi per lingua e battute (`badArc`). La guida ai pacchetti ha la sezione «Story Arcs».
- **Test**: `Tests/TestArcs.lua` (circa 2.000 controlli: definizioni sbagliate apposta, transizioni lecite e illecite, nessuna apertura senza un evento vero, limite degli archi attivi, sospendi e salta, tutti insieme, battute rimandate e senza cascate, persistenza, migrazione, diario, comando) e la persistenza simulata dopo `/reload` in `run_tests.py`.

### Step S8: NPC Alive, i dialoghi ambientali (e le issue #41 e #42)

- **`Systems/NPCAlive.lua`** e **`UI/DialogueFrame.lua`**: un micro-dialogo **simulato** con un NPC identificabile, in una **finestra separata e discreta** con l'etichetta ben visibile **«dialogo ambientale dell'addon»** (*addon ambient dialogue*), il ruolo e il nome, la battuta e da una a tre risposte, chiusura immediata (x, `/au npc chiudi`, tasto). Le battute **non vanno mai in chat** (né nel narratore né nella cronologia), l'addon **non chiama né nasconde** nulla di gossip, quest, commercio, volo o addestramento di Blizzard, e la finestra si mette dove **non copre** le finestre di Blizzard visibili (e si sposta se una si apre sotto). Non è in `UISpecialFrames`: Esc non la chiude insieme a quelle dell'NPC. [ADR 0020](docs/adr/0020-dialogo-simulato-e-dialogo-reale-npc-alive.md).
- **Macchina a stati** `idle → offered → opened → choice → response → ended` con transizioni verificate. L'**offerta** parte da un pulsante che compare su un'interazione valida (mercante, volo, addestramento, locandiere, banca, gossip di un NPC del registro; **mai sopra una quest**), scade dopo 20 secondi, al massimo una volta ogni tre minuti per NPC e finestra; oppure da `/au npc` o dal tasto assegnato. Si interrompe da sola con combattimento, morte, cambio di zona, altro NPC, 120 secondi fermi.
- **Identità**: nessun dialogo se è incerta o segreta. *NPC specifico*: l'`npcID` dal GUID è nel registro curato `Data/NPCs.lua` (ora anche tre guardie di città) o l'utente gli ha dato un ruolo (`/au npc ruolo <ruolo>`). *Archetipo* (locandiere, mercante, maestro di volo, addestratore): solo dall'**interazione in corso** che lo prova, o da una già avvenuta con lo stesso NPC nella sessione; il solo gossip non basta. Mai con giocatori, creature ostili, NPC morti, GUID illeggibile.
- **Voce**: **169 battute** IT/EN (`base_dialogues`, voce `npc`, eventi `npcd_<ruolo>_<nodo>`) per **locandiere** (vertical slice B del GDD: apertura, notizie, «dimmi di più», riposo, fermarsi, grazie, congedo), **mercante**, **guardia**, **maestro di volo** e **addestratore**, più battute di quattro NPC specifici (Innkeeper Farley, Innkeeper Firebrew, Innkeeper Gryshka, Marshal Dughan). Sono regole del motore: seguono `speech` e `temperament` dell'NPC (burbero, gioviale, caloroso, formale, laconico) e la relazione (conosciuto, sconosciuto, già gli hai chiesto le notizie), con gli stessi pesi e la stessa anti-ripetizione. Escono solo dentro un dialogo (guardia sull'evento); con una finestra aperta il narratore spontaneo tace.
- **Risposte neutre**: domande e azioni, mai un sentimento, un carattere o una decisione attribuiti al personaggio. **Effetti locali**: un flag narrativo (`npcd_<archetipo>_<nome>`, memoria di S6, mai una quest), un po' di relazione con l'NPC (fonti `ambient` e `ambient_talk`, con tetti giornalieri; non conta come una nuova interazione), un ricordo `npc_talk` se si è risposto (senza testo, nome o `npcID`). `/au npc prova [burbero|gioviale|caloroso|formale|laconico]`: un locandiere di prova che non scrive nulla.
- **Copioni come dati** (`NS:RegisterDialogues`, `Data/Dialogues.lua`): per archetipo o per `npc:<npcID>` con `extends`; controllati da `NPCAlive:Check()` e dal validatore (`badDialogue`). Un pacchetto può aggiungerne.
- Impostazioni: `npcAlive.autoOffer`, `ui.dialogue` (`fontSize`, `alpha`, `locked`, `pos`); il modulo «Dialoghi NPC» e `output.npcDialogues` ora hanno effetto; comando `/au npc` (alias `dialogo`, `parla`; `prova`, `chiudi`, `ruolo`, `offerta on|off`, `stato`), tasto «Dialogo ambientale con l'NPC» (`AzerothUnspoken_NPCDialogue`), riga `NPC Alive` in `/au debug`.
- `Tests/TestNPCAlive.lua` (circa 2.000 controlli: transizioni, percorso completo, scadenze e interruzioni, identità incerta e segreta, nessuna interferenza con Blizzard e con la chat, posizione, flag, relazione e ricordo, voce per carattere e relazione, anti-ripetizione, lingue, comandi, #41 e #42) e, in `run_tests.py`, la **persistenza simulata dopo `/reload`** dei flag, del ricordo e della conversazione; sezione G3 in `docs/G1_checklist.md`.

*Corretto*
- **#41 genere delle etichette di relazione**: in italiano le etichette dei rapporti hanno il genere della persona (`amico`/`amica`, `temuto`/`temuta`, `rivale rispettato`/`rispettata`, `compagno`/`compagna d'armi`...). I dati scrivono il nome con un elenco `name = { it = { "amico", "amica" }, en = "friend" }`; la forma si sceglie da `ctx.other.sex` (`Relationships:LabelName(id, sesso)`, `Resolve(kind, rec, sesso)`), con il maschile come ripiego. Nuovo segnaposto **`{og:maschile|femminile}`** per il genere dell'**interlocutore** (`ctx.otherSex`; con il sesso ignoto la variante è scartata), controllato dal validatore e non incluso nella firma dei segnaposto.
- **#42 argomenti da evitare e vocabolario**: le voci di vocabolario accettano `tags` (`topic:blood`, `topic:undead`, `topic:demons`, `topic:death`, `topic:religion`...); il renderer scarta le voci che il profilo del Soul esclude e, se non ne resta nessuna, scarta la variante come per un dato mancante. `{cry}` non dice più «Sangue e tuono!» a chi evita il sangue; `{foe}` non nomina i non morti o i demoni a chi li evita; `{faith_of}` tace a chi evita la religione. Il validatore controlla quei tag (`badTag`).

### Correzioni Q3 (issue #9, #13, #21, #23, #26, #37, #38)

- **#26 minuscole sicure**: `NS.Lower` e `NS.Upper` (`Core/Bootstrap.lua`) trattano solo le lettere ASCII e quelle accentate del blocco Latin-1 (À-Þ), senza dipendere dalle impostazioni locali del processo; sostituiscono `string.lower`/`upper` in comandi, contesto, regole, relazioni, memoria, luogo e Chat Gateway. `Traits.Lower` resta come ripiego. `/au intensità` e `/au profondità` valgono anche con le maiuscole.
- **#9 tabelle e salute segreta**: `EventBus.lastKey` ha una pulizia a soglia (256 chiavi, oltre 60 secondi); `SPELL_SENT` non usa più la deduplicazione per `castGUID`; `sentTargets` di `Triggers` tiene al massimo 16 lanci in attesa (i falliti e gli interrotti non si accumulano); con la salute segreta `HEALTH_CHANGED` esce al massimo una volta ogni 30 secondi (opzione `window` di `Publish`).
- **#21**: tolto il mouse dal riquadro, la dissolvenza ricomincia (il tempo si ferma all'inizio della dissolvenza, non alla fine).
- **#23**: il validatore avvisa (`unknownStyle`) quando una cornice dichiara un registro sconosciuto e quando `RegisterEventStyles` o `RegisterMoodStyles` ne usano uno.
- **#13 "Un'altra"**: `Gateway:Reroll` (pulsante **Un'altra** accanto a Modifica, `/au altra`, tasto assegnabile `AZEROTHUNSPOKEN_REROLL`) sostituisce la proposta in attesa con un'altra frase per lo stesso evento, forma e contesto (la proposta conserva `ctx` e `id`), senza inviare nulla e senza spendere il budget del Director. Mantiene il canale scelto; con una sola frase disponibile la proposta resta com'è e compare `no_phrase`; con l'editor aperto rifiuta; la proposta sostituita esce dalla cronologia. La barra della proposta ha pulsanti più stretti per farci stare il sesto.
- **#37**: nel dettaglio della finestra Relazioni un selettore per ruolo, temperamento, morale, obiettivi e modo di parlare (clic: valore successivo, poi «non so»; `Interlocutor:CycleTrait`/`GetUserTrait`); la finestra è più alta (700). L'interruttore **Leggi il Total RP 3 degli altri** è nel pannello delle impostazioni e nel passo Total RP 3 del wizard, spento di base (`Interlocutor:SetTRP3Consent`, usato anche da `/au chi trp3`).
- **#38 emote in altre lingue**: un'emote è rivolta a noi se il destinatario indicato dal client (`playerName2`) è il nostro personaggio, **oppure** se il testo contiene il «te» della lingua del client (`Interlocutor.YOU_WORDS`: en, de, fr, es, it, pt, ru, ko, zh; tabelle scritte a mano, da provare). Il testo si scarta subito, come prima.
- Formato dei dati: nessun cambiamento (le proposte in memoria hanno due campi in più, `ctx` e `id`, mai salvati). Interfaccia: nuove stringhe IT/EN `btn_another`, `tip_another`, `gw_reroll_*`, `rel_trait*`, `opt_trp3_others*`, `wiz_trp3_others_help`.
- Test: nuove sezioni in `TestCompat`, `TestEventBus`, `TestNarrator`, `TestValidator`, `TestChatGateway`, `TestOtherPlace` e `TestRelations`; passi 69–74 in `docs/G1_checklist.md`.

### Step S7: contenuti della Narrative Alpha

- **803 intenzioni** di base IT/EN (erano 588; obiettivo del GDD §9.2: 300) con **1.711 varianti per lingua** (prima 612, quasi sempre una per intenzione). Ogni intenzione delle scene comuni ha **almeno due varianti** per lingua: combattimento (`battle`, `victory`, `lowhp`), arrivo in una zona, saluti e congedi, riposo, ritorno (`memory_return`), morte e ritorno in vita, nuovo livello; quasi tutte le altre pure.
- **Quattro voci**: narratore esterno 108 intenzioni (erano 32), voce interiore 235 (erano 167), personaggio 444 e la **voce NPC** con 16 intenzioni sull'evento `npc_meet` (battute simulate per locandiere, mercante, guardia, banchiere, addestratore, maestro di volo e chi affida incarichi, diverse per modo di parlare e temperamento; restano private).
- **Tre profondità** (Naturale, Letterario, Elevato) scritte apposta per i momenti chiave: arrivo e ritorno in foresta, zone di foresta, morte, ritorno in vita, livello, vittoria, salute bassa, saluti e congedi principali.
- **Vertical slice A e C**: 10 frasi di prima visita in foresta e 12 di ritorno in foresta (tre voci, temperamenti del Character Soul, ora del giorno, ritorno dopo una morte o una fuga, dopo molti giorni o molte visite); prima visita e ritorno per **ogni atmosfera** (`mood`), per dungeon, incursione e campo di battaglia; richiami dei flag `first_death`, `first_capital`, `level_30/40/60` (issue #29, `base_memory` da 14 a 81 intenzioni).
- **Relazioni** (issue #34, `base_relations` da 51 a 83): ogni etichetta per saluto, congedo, ringraziamento e cura, e al fianco di qualcuno in battaglia e vittoria; giocatori in lista, NPC con ruolo, disposizione, asse facoltativo dell'attrazione, genere della persona (`other.sex`). In italiano `{relation}` compare solo tra virgolette, come nome del rapporto, e le frasi si rivolgono alla persona in modo neutro.
- **Tag del Character Soul** (issue #27) su quasi tutte le frasi di base: affinità morbide di temperamento, morale, fede, motivazione, curiosità e ironia; `topic:` per morte, sangue, non morti, demoni, religione, famiglia, tradimento, amore; `req:` solo per le poche frasi che affermano un credo o un passato.
- **Narratore esterno** (issue #18): atmosfere di zona per ogni `mood` e ora del giorno, riposo all'aperto, locanda e camino, gesti in combattimento, alla morte, al ritorno in vita, ai saluti e alle preghiere.
- `place`: ingresso in dungeon, incursione, campo di battaglia e arena, capitale nemica, fine di uno scontro con un boss vinto o perso; frasi entro 80 byte in campo di battaglia e arena.
- `Tests/TestContent.lua`: copertura dei contenuti (intenzioni, varianti per evento, voci, profondità, slice A e C, memoria per atmosfera, tag, relazioni per etichetta e genere di `{relation}`, 80 byte in campo di battaglia, era di Forever, testi ripetuti, parole abusate come «ombra», «destino», «sangue», «antico»).

*Modificato*
- Correzioni editoriali di frasi esistenti: generi `{g:…}` mancanti in italiano; frasi di relazione rivolte alla persona in modo neutro; `zone.durotar.01` solo per l'Orda e `zone.dunmorogh.01` solo per nani e gnomi (dicono «casa»); il druido non afferma più di aver «dormito secoli nel Sogno» (valeva anche per i tauren); `rez.e.03` regge anche il ritorno dallo spirito guaritore; riscritte due battute che ricordavano citazioni note (`lowhp.04`, `battle.giant.01`).

### Step S6c: Interlocutore e luogo

- `Systems/Interlocutor.lua`: **`ctx.other`**, chi incontriamo (bersaglio, NPC del dialogo, chi ci ha rivolto un'emote, sfidato a duello o invitato): tipo, razza, classe, fazione, sesso, livello, classificazione, tipo e famiglia di creatura, reazione, **ruolo**, **personalità** con lo stesso modello di tratti di S5 (temperamento, morale; nuovi `goals`, `speech`, `role` con ambito `other`), **azioni recenti** con il loro momento e la relazione di S6b. Fonti in ordine: utente (lista delle relazioni, `/au chi tratto`) > profilo **pubblico** Total RP 3 dell'altro giocatore con un **consenso a parte** (`interlocutor.trp3Others`, spento di base, `/au chi trp3`) > `Data/NPCs.lua` per `npcID` > ruolo da interazioni affidabili (mercante, addestratore, volo, locanda, quest, banca; mai dal solo gossip) > **tendenza debole** di classe (solo peso, mai condizioni, mai morale) > neutro. Identità segreta = profilo vuoto. Azioni solo da eventi affidabili (mai dal log di combattimento), solo in memoria per la sessione.
- `Systems/Place.lua`: **`ctx.place`**, dove siamo: zona, sottozona, uiMapID, continente, tag e temi, territorio (`C_PvP.GetZonePVPInfo`, dati come ripiego), capitale amica o nemica, istanza (tipo, nome, id, difficoltà da `GetInstanceInfo`), scontro con un boss (`ENCOUNTER_START`/`END`), ruolo nel gruppo, stato del campo di battaglia. `Data/Places.lua`: zone, sottozone, capitali, dungeon, incursioni e campi di battaglia dell'era di Forever per nome del client inglese, con uiMapID e instanceID di Classic Era **non ancora verificati** (ordine: numero verificato > nome > numero non verificato).
- **RuleEngine**: sotto-tabelle `when = { other = {…}, place = {…} }` con gli stessi operatori (elenchi, `not`, `any`, `func`), `other.actions` entro N secondi (`{ "duel", within = 30 }`), `place.tags`, `place.encounter`; validatore dei campi e dei valori; ogni campo conta nella specificità. Segnaposto `{other}`, `{otherrole}`, `{otherrace}`, `{otherclass}`, `{instance}`, `{encounter}`, localizzati.
- **Narrative Director**: fattore `C` per interlocutore (tag `other.`) e luogo (tag `place.`, frasi brevi in campo di battaglia, arena e contro un boss); ritmo per tipo di istanza (incursione e boss sobri, campo di battaglia e arena più rari, locanda e città con più spazio; gli eventi eccezionali non diventano più rari); uno scontro con un boss è impegnativo anche senza `worldboss`; registro secondo modo di parlare e ruolo dell'interlocutore.
- Eventi nuovi: `npc_meet`, `other_action`, `encounter_end` (con guardie); sorgenti `ENCOUNTER_START`, `ENCOUNTER_END`, `UPDATE_BATTLEFIELD_STATUS`, `BANKFRAME_OPENED`, `DUEL_REQUESTED`, `PARTY_INVITE_REQUEST`, `CHAT_MSG_TEXT_EMOTE` (solo emote standard, solo per sapere se sono rivolte a noi; il testo non si conserva).
- **86 frasi** IT/EN (`base_context`): NPC per ruolo, temperamento e modo di parlare; saluti per ruolo, terra d'origine (razza) e mestiere (classe); azioni (duello, invito, emote, scambio, incarico, al nostro fianco); dungeon, incursione, campo di battaglia, arena, territorio ostile e conteso, capitali amiche e nemiche, santuari, porti, città neutrali, locande; fine di uno scontro con un boss.
- Comandi `/au luogo` (alias `dove`, `place`) e `/au chi` (alias `who`, `interlocutore`).
- `Tests/TestOtherPlace.lua` (oltre 500 controlli) e client finto con `C_Map`, `GetInstanceInfo`, `C_PvP`, `UnitGroupRolesAssigned`, `UnitReaction`, `UnitCreatureFamily`, `UnitIsUnit`, campi di battaglia ed eventi nuovi.
- [ADR 0019](docs/adr/0019-interlocutore-e-luogo-fonti-in-ordine-e-luoghi-per-mapid.md); passi 56–64 in `docs/G1_checklist.md`.

*Modificato*
- **Memoria dei luoghi per uiMapID** (issue #31): la chiave di un luogo è `map:<uiMapID>` quando il client lo dà, il nome della zona altrimenti; migrazione interna `memories.version` 1 → 2 (nomi con uiMapID verificato convertiti, gli altri adottati alla prossima visita), il nome resta come etichetta. Il bus porta `mapID` in `WORLD_ENTER` e `ZONE_ENTER`.
- `Integration/TotalRP3.lua`: `GetOtherProfile` (profilo pubblico di un altro giocatore, con consenso), `CleanPsycho`, `MapPsycho`.
- `Systems/Relationships.lua`: una relazione conserva anche `traits`, `role` e `roleSource` dell'interlocutore.
- Frasi di base: 509 → 595 (con il pacchetto di esempio). La prova del `/say` automatico in `run_tests.py` cerca fino a 100 combattimenti (il seme fisso cambia sequenza a ogni frase aggiunta).

### Step S6b: Relazioni e affinità

- `Systems/Relationships.lua` (modulo `relations`): il rapporto con le persone su sette **assi indipendenti**, come scale del modello dei tratti di S5 (`familiarity`, `trust`, `respect`, `affection`, `loyalty`, `fear`, e `attraction`, **facoltativo e spento di base**). Etichette derivate (sconosciuto, conoscente, indifferente, amico, compagno d'armi, rivale rispettato, nemico, inviso, diffidente, temuto, amato), **disposizione complessiva** −100…100 in nove fasce e registro per fasce di familiarità sono **dati** in `Data/Relationships.lua` (IT ed EN); `NS:RegisterRelationData` li estende dai pacchetti. L'etichetta scelta a mano ha la precedenza.
- **NPC in automatico** dall'`npcID` del GUID (nulla se manca, è segreto o non è una creatura): dialogo, quest accettate e consegnate, mercante (apertura, acquisti, vendite, riparazioni con `hooksecurefunc`), maestro di volo, addestratore, locandiere. Incrementi come tabelle di dati, rendimenti decrescenti, tetto giornaliero per fonte e asse, decadimento lento della sola familiarità. Eventi nuovi sul bus: `NPC_INTERACT`, `NPC_INTERACT_END`, `QUEST_STATE`.
- **Giocatori scelti dall'utente**: il sistema propone (gruppo, scambi, bersagli con profilo Total RP 3, risposte in privato) ma un giocatore entra in lista solo con un'azione dell'utente (`R:AddPlayer(nome, "user")`); l'opzione «registra automaticamente» è spenta di base. Cursori, note, tag, etichetta, eliminazione, esportazione testuale. Nessun contenuto di chat o di whisper è letto o salvato (della risposta in privato si legge solo il nome); nulla in rete.
- **Narratore**: `ctx.relation`, `relationLabel`, `disposition`, `dispositionValue`, `rel` (assi), `relationKind`, `isKnown`, `groupRelations`; condizioni `relation`, `disposition`, `relationKind`, `isKnown`, `<asse>Min`/`<asse>Max`, `withRelation`; segnaposto `{relation}`; **fattore `R`** del peso con i tag di ambito `rel.` (`rel.relation:friend`, `rel.req:…`, `rel.not:…`); registro che va dal formale all'intimo con la familiarità; evento `relation_npc` (NPC conosciuti) con guardia e priorità «richiamo di memoria». Il validatore riconosce le condizioni nuove e segnala `relationWithoutRelation`.
- **51 frasi** IT/EN (`base_relations`): saluti, congedi, ringraziamenti, cure, battaglia e vittoria al fianco di qualcuno, incontri con NPC conosciuti.
- `UI/RelationsFrame.lua` e `/au relazioni` (alias `relations`, `relationships`; sottocomandi `lista`, `persone`, `aggiungi`, `scarta`, `rimuovi`, `dettaglio`, `nota`, `tag`, `etichetta`, `imposta`, `esporta`, `auto`, `attrazione`, `reset`): tabella ordinabile e filtrabile, persone proposte, dettaglio con cursori (`Widgets.Slider`), note, tag ed etichetta; due schede nel diario (*Relazioni*, *Persone incontrate*); modulo *Relazioni* nelle impostazioni e nel wizard; riga **Relationships** in `/au debug`. Un legame che diventa importante lascia un ricordo nel diario (solo token, mai nomi).
- SavedVariables: schema 5 (`cdb.relationships` con versione propria; impostazioni `relations`; migrazione 5).
- `Tests/check_api.py` legge anche le fonti degli NPC (`NpcSource`/`EndSource`); il client finto ha gli eventi di gossip, quest, mercante, gruppo, scambio e whisper, le unità `npc` e `partyN`, `UnitFullName` e `hooksecurefunc`.
- Test: `TestRelations` (assi e attrazione facoltativa, derivazione delle etichette e della disposizione, precedenza dell'etichetta a mano, incrementi con rendimenti decrescenti e tetti, decadimento, valori segreti, nessun giocatore senza azione dell'utente, nessun testo di chat salvato, condizioni, segnaposto, fattore R, registro, frasi per rapporto, migrazione e dati rovinati, sola lettura, finestra, diario, comandi) e persistenza simulata dopo `/reload` in `run_tests.py`.
- [ADR 0018](docs/adr/0018-relazioni-a-piu-assi-npc-automatici-e-giocatori-scelti-dall-utente.md); passi 46–55 in `docs/G1_checklist.md`.

*Modificato*
- `Engine/Traits.lua`: un tratto può avere un `scope` (ambito dei tag in cui è valido); `CheckTag` e `Evaluate` lo rispettano. I tratti senza ambito valgono in ogni ambito, come prima.
- `UI/JournalFrame.lua`: le schede si stringono se sono più di quattro; `ShowExport(testo, titolo)` mostra anche altri testi.
- `UI/Widgets.lua`: `Widgets.Slider`, un cursore a trascinamento disegnato con texture.
- Schema delle SavedVariables: 4 → 5. Frasi di base: 458 → 509 (con il pacchetto di esempio).

### Step S6: Living Memory e Diario

- `Systems/LivingMemory.lua` (modulo `memory`): tre livelli (episodico della sessione, personale persistente in `cdb.memories`, flag narrativi). Ricorda solo momenti significativi: prima visita a una zona, ritorno dopo un giorno, visita finita male (morte, fuga), morti, livelli, capitali; mai ogni clic, mai testo di chat o di whisper. Campi del §7.4: id, momento, zona, tipo, importanza, tag, origine (più livello e permanenza).
- Limiti: 500 ricordi ordinari con compattazione dei meno significativi, ricordi permanenti (al massimo 200), luoghi a parte con i conteggi delle visite, reset a cinque bersagli, migrazioni versionate (`memories.version`), dati di una versione più nuova in sola lettura.
- Richiamo onesto: condizioni `firstVisit`, `repeatVisit`, `lastVisitBad` (anche `"death"`/`"flight"`), `visitsMin`/`visitsMax`, `daysSinceLastVisit`, `remembered`; `ctx.memory`; guardie degli eventi (`Engine:SetEventGuard`): un evento di richiamo non parla senza un ricordo vero; `LivingMemory:RegisterRecall`; il validatore segnala `recallWithoutMemory`.
- Evento `memory_return` (ritorno in un luogo noto) con la priorità «richiamo di memoria» del §10: batte l'atmosfera di zona nello stesso momento. 14 frasi di esempio IT/EN per prima visita e ritorno (foresta, capitale, morte, fuga, visite ripetute, giorni lontano), pacchetto `base_memory`.
- `UI/JournalFrame.lua` e comando `/au diario` (alias `/au journal`, `/au diary`): schede Ricordi, Luoghi, Flag e Sessione (altre con `JournalFrame:RegisterTab`), cancellazione selettiva, ricordo permanente, dimenticare un luogo, «Dimentica tutto» con conferma, esportazione testuale in una finestra copiabile; sottocomandi `lista`, `luoghi`, `flag`, `esporta`, `permanente`, `elimina`, `dimentica`, `reset`. Riga **Living Memory** in `/au debug`; pulsante nel pannello delle impostazioni; il modulo *Memoria* ora ha effetto.
- SavedVariables: schema 4 (`memories` diventa la memoria; migrazione 4 del personaggio).
- Test: `TestMemory` (nessun ricordo per eventi insignificanti, prima visita, ritorno, `lastVisitBad`, fuga, livelli, limite e compattazione, permanenti, cancellazione, richiamo solo con un ricordo vero, priorità nel Director, argomenti da evitare, privacy, migrazioni e dati rovinati, diario, esportazione, comandi), persistenza simulata dopo `/reload` in `run_tests.py` (due runtime consecutivi, `SERIALIZE` e `LEAP` nel client finto).
- [ADR 0017](docs/adr/0017-living-memory-ricordi-selettivi-e-richiamo-onesto.md); passi 39–45 in `docs/G1_checklist.md`.

### Step S5: Character Soul e tratti di Total RP 3

- `Engine/Traits.lua`: il modello dei tratti (`choice`, `scale` con fasce, `set`), riusabile per l'interlocutore (S6c) e per le relazioni (S6b); `Sanitize`, `Merge` con la priorità tra le fonti, tag di affinità con ambiti.
- `Systems/Personality.lua` (Character Soul): otto tratti opt-in (temperamento, morale, curiosità, fede, motivazione, ironia, voce interiore, argomenti da evitare), sette archetipi più il profilo neutro, profilo effettivo *scelta esplicita > Total RP 3 > dati di gioco > valori neutri*, `ctx.soul`, condizione `soul`.
- Fattore `P` del peso riempito: affinità morbida dai tag `tratto:valore` e filtri rigidi `req:`, `not:`, `topic:` (mai contraddetti); la voce interiore spenta esclude i pensieri; l'ironia pesa i registri ironici; il temperamento, la fede e l'ironia spostano i registri preferiti (`StyleResolver`).
- `UI/ProfileFrame.lua` e comando `/au anima` (`lista`, `neutro`, `archetipo`, `trp3 on|off`, `<tratto> <valore>`, `evita <argomento>`; alias `/au soul`): scelta dell'archetipo, modifica dei tratti, cambio immediato; pulsante nel pannello delle impostazioni.
- `Integration/TotalRP3.lua`: lettura dei soli tratti psicologici **pubblici** del **proprio** profilo (`characteristics/PS`), con un consenso a parte (`personality.trp3`, spento per impostazione predefinita); si disattiva se le API mancano o cambiano; nuova capacità `integration:totalRP3:traits` in `/au debug`.
- 16 frasi di esempio con affinità di personalità in IT ed EN (`Data/RegistrySoul.lua`, pacchetto `base_soul`); il validatore controlla i tag di affinità (`badTag`).
- SavedVariables: schema 3 (`personality` del personaggio con archetipo, tratti e consenso a TRP3; migrazione dallo schema 2).
- Test: `TestSoul` (modello dei tratti, profilo neutro, archetipi, fattore P, filtri rigidi su ogni scelta di frase, TRP3 presente, assente e con API cambiate, priorità tra le fonti, migrazione delle SavedVariables, comando, finestra).
- [ADR 0016](docs/adr/0016-character-soul-tratti-opt-in-e-total-rp-3-con-consenso.md); passi 32–38 in `docs/G1_checklist.md`.

*Modificato*
- SavedVariables allo schema 3: `personality` del personaggio, che era un segnaposto vuoto, diventa il profilo del Character Soul (migrazione 3; i valori dei tratti si ripuliscono all'avvio).
- Il comando `/au anima` e il pulsante "Anima del personaggio..." nel pannello delle impostazioni sono nuovi; nessun comando esistente cambia.

### Step S4: Narrative Director

- `Engine/NarrativeDirector.lua`: priorità del GDD §10 (esplicito > dialogo > evento eccezionale > memoria > atmosfera), gate di opportunità guidato dall'intensità, sospensione durante cinematiche e filmati e nei combattimenti impegnativi (boss, incursione, élite in istanza), dado, ordine dei candidati; `NS:SetEventPriority` per i pacchetti; agganci `SetRhythm` e `SetDemandCheck` per S6c.
- `Engine/Pacing.lua`: pausa minima tra due interventi qualsiasi (niente cascate), pausa globale, di categoria e di evento, budget per categoria in 10 minuti scalato con l'intensità; stato solo per la sessione.
- `Systems/Director.lua`: `Director:Offer`/`Resolve` raccolgono i candidati di un momento e ne fanno parlare al massimo uno; il silenzio è un esito con il suo motivo; riga **Narrative Director** in `/au debug` (budget e ultime decisioni).
- Peso `W = B × C × P × N × S × R` (`Engine.Factors`, `Engine:Weight`): `P` e `R` neutri, agganci `Engine:SetWeightHook("C"|"P"|"R", nome, fn)` per S5, S6b e S6c.
- `Engine/StyleResolver.lua`: registri ammessi per evento e preferiti da atmosfera della zona, profondità e voce, con ripiego neutro (un registro fuori posto pesa meno, non è escluso); le cornici con `styles` accolgono solo frasi di registro vicino. API dei pacchetti `RegisterEventStyles` e `RegisterMoodStyles`.
- `Compat:InvasiveScreen` (`InCinematic`, `IsInCinematicScene`, `CinematicFrame`, `MovieFrame`) e le due capacità nuove nella matrice.
- Test: `TestNarrativeDirector` (fattori e distribuzione dei pesi, intensità 0/50/100, pause, budget, priorità, nessuna cascata, silenzio, sospensione, ripiego di stile, cornici, nessun duplicato nella finestra), con seme fisso.
- [ADR 0015](docs/adr/0015-narrative-director-un-intervento-per-momento.md); passi 27–31 in `docs/G1_checklist.md`.

*Modificato*
- Gli eventi spontanei passano dal Narrative Director: probabilità, pause e dado non sono più in `Systems/Triggers.lua`, e una frase spontanea arriva 0,1 secondi dopo l'evento (finestra di arbitraggio).
- Una frase chiesta dal giocatore (comando, tasto) impedisce per 4 secondi una frase spontanea subito dopo.

### Correzioni Q2 (issue #3, #4, #5, #6, #8, #11, #12, #14, #17, #19)

- Uscita **"Nella chat"** (`Gateway:CopyToChat`, pulsante accanto a Invia, `/au copia`): la proposta va nella casella della chat standard già sul canale giusto e il giocatore la invia con il suo Invio (`Compat:OpenChatWith`, `Compat:CanOpenChat`, capacità `api:OpenChat`). Da provare in gioco (G1, passo 20).
- `Gateway:TextFor`/`DisplayFor`: il testo inviato e l'anteprima nel narratore sono adatti al canale.
- `Gateway:SelectAuto`: l'invio automatico si attiva con due gesti (avviso, poi conferma entro 10 secondi) da comando, pannello e procedura guidata; riga **Invio automatico** nel pannello.
- `Compat:IsMouseOver(frame)` (metodo del frame, ripiego su `MouseIsOver`).
- `Config.CHAT_LIMITS`: limite di byte per canale, letto dal Chat Gateway e dal validatore.
- Test: `TestContext` (identità segreta), `TestMock` (client finto), regressioni in `TestChatGateway`, `TestNarrator`, `TestConfig`, `TestDirector`, `TestValidator` e nei comandi di `run_tests.py`.
- Il client finto ha timer veri (`C_Timer.After`/`NewTicker` con `ADVANCE`), unità distinte per `player` e `target`, `IsInRaid` e un invio che fa rifiutare ogni canale protetto senza gesto.

*Modificato*
- L'invio automatico non si accende scegliendo la modalità `auto`: richiede un secondo gesto di conferma (decisione prudente: pubblica di meno).

*Corretto*
- **#4** Con l'editor della proposta aperto la proposta non scade più (l'attesa riparte alla chiusura); una frase spontanea non la sostituisce; se sparisce lo stesso, il testo scritto torna in chat locale; Invio senza proposta avvisa.
- **#5** Con un canale fisso un'emote in `/s`, `/p`, `/g`… porta il nome del personaggio e una frase parlata in `/e` diventa «dice: «…»».
- **#8** Scorrere le modalità non attiva più l'invio automatico: serve un avviso e una conferma, ovunque. L'automatica non è nel ciclo del pannello; senza consenso si comporta come `conferma`.
- **#6** Con l'identità del bersaglio segreta il contesto non contiene nessun dato del bersaglio (nemmeno `hostile`); ogni lettura del contesto passa da `SafeCall`.
- **#3** I dati di uno schema più nuovo non si modificano più: si lavora su una copia.
- **#11** `/au canale incursione` funziona; un valore sconosciuto di `canale`, `profondita` e `chat` riceve una risposta; l'aiuto elenca `evento` e `vittoria`; il testo d'aiuto del wizard segue la lingua; rimosse due chiavi inutilizzate.
- **#17** Il mouse sopra il riquadro lo tiene visibile (metodo `IsMouseOver` del frame, presente nel dump di Forever).
- **#19** Il limite di 255 byte è in un solo posto.

### Step S3: schema dati v2, migrazione delle frasi, validatore (voci aggiunte con l'issue #24)

- Schema dati v2: il registro delle regole è separato dai testi. Una regola ha `events`, `category`, `speaker` (le quattro voci), `form`, `styles` (registri), `depth` (naturale, letterario, elevato), `tags`, `weight`, `cooldown` e `when`; i testi stanno per lingua, con più varianti per id (`Data/Registry*.lua`, `Data/itIT/`, `Data/enUS/`). Il formato vecchio dei pacchetti si converte in caricamento.
- Migrazione delle 421 frasi di base (367 più le 54 di `Classes.lua`, ora nel `.toc`) con voce, registro e profondità assegnati frase per frase; cornici e vocabolario restano.
- `Engine/Validator.lua` e `/au valida [tutto|pacchetto]`: id duplicati, lingue mancanti, segnaposto discordanti, condizioni sconosciute, varianti vuote, lunghezza per canale, UTF-8, coerenza della regola.
- `ctx.depth` e `ctx.intensity` nel contesto, condizioni `depth`, `intensityMin`, `intensityMax`; il fattore `S` del peso (`Engine.StyleFactor`) preferisce la profondità scelta senza mai escludere.
- `Tests/check_api.py`: confronta le funzioni e gli eventi usati con il dump delle API di Forever (saltato con un avviso se il dump manca), con eccezioni motivate; collegato a `run_tests.py`.
- Guida `AzerothUnspoken/FORMATO_PACCHETTI.md` riscritta per lo schema v2; il pacchetto di esempio usa il nuovo formato.
- Una lingua registrata da un pacchetto dopo il caricamento resta quella scelta dall'utente (issue #7).
- Test: `TestSchema` e `TestValidator`; passi 17–19 in `docs/G1_checklist.md`.

### Documentazione (attività D1)

- `README.md` professionale e `README.en.md` (versione inglese).
- `docs/adr/`: quattordici decisioni di progetto (ADR) in formato MADR, con indice.
- `docs/ARCHITETTURA.md`: moduli, flusso di un evento, dati, punti di estensione, con diagrammi Mermaid.
- `CONTRIBUTING.md`, questo `CHANGELOG.md` e `docs/README.md` (indice della documentazione).

### Step S2: narratore privato e Chat Gateway

- Narratore privato (`UI/NarratorFrame.lua`): riquadro non bloccante e spostabile, con durata, opacità e dimensione del testo regolabili, cronologia recente (solo in memoria), editor della frase e pausa immediata.
- Chat Gateway (`Integration/ChatGateway.lua`) con le modalità `PRIVATE` (predefinita), `PREVIEW`, `CONFIRM_TO_SEND` e `AUTO_ONLY_IF_ALLOWED`; modifica della proposta prima dell'invio; scelta del canale (`/s`, `/e`, gruppo, incursione, gilda, istanza); protezione dal flood; invio da gesto solo tramite `Gateway:PlayerAction`.
- Voci (`speaker`) sulle frasi: `narrator`, `inner`, `character`, `npc`; solo le prime due possono diventare proposte.
- `Systems/Director.lua`: punto di aggancio del futuro Narrative Director (intensità, pausa immediata, moduli).
- Procedura guidata del primo avvio (`UI/Wizard.lua`), saltabile, riapribile con `/au benvenuto`.
- Pannello delle impostazioni: lingua, intensità, profondità dello stile, pausa tra le frasi, chat e canale, riquadro del narratore, moduli e preset.
- Comandi: `/au chat` (alias `/au modo`), `canale`, `intensita`, `profondita`, `pausa`, `narratore [cronologia|reset|pulisci]`, `benvenuto`, `annulla`.
- Tasto `AZEROTHUNSPOKEN_PAUSE` (pausa immediata) in `Bindings.xml`.
- Test: `TestChatGateway`, `TestNarrator`, `TestDirector`; il client simulato ha widget con stato.
- Checklist di prova in gioco: `docs/G1_checklist.md`.

*Modificato*
- Rispetto al prototipo, nulla va in chat pubblica senza una scelta dell'utente: l'uscita predefinita è il narratore privato.
- `output.mode` è sostituito da `chat.mode` (migrazione di schema da 1 a 2: `self` diventa `PRIVATE`, ogni altra modalità diventa `CONFIRM_TO_SEND`; `autoPublicSay` è forzato a `false`).
- Le emote automatiche del prototipo sono diventate proposte da confermare.

*Rimosso*
- La pubblicazione automatica in chat come comportamento predefinito.

### Step S1: fondamenta

- Struttura `AzerothUnspoken/` (`Core/`, `Engine/`, `Systems/`, `Integration/`, `UI/`, `Data/`) a partire dal prototipo "Voci di Azeroth" (archiviato in `archive/`), con le sue 374 frasi in italiano e inglese.
- `Core/Compat.lua`: matrice delle capacità (`AVAILABLE`, `MISSING`, `RESTRICTED`), valori segreti, registrazione protetta degli eventi, rilevamento di Forever.
- `Core/EventBus.lua`: eventi normalizzati in envelope, con deduplicazione e coda anti-cascata.
- `Core/Config.lua`: predefiniti, merge, validazione e migrazioni per `schemaVersion`.
- `Core/Diagnostics.lua` e `/au debug [full|trace]`: capacità del client, ultimi eventi, errori intercettati.
- Comandi `/au` e `/unspoken`; pulsante e tasto "pronuncia".
- Integrazione facoltativa con Total RP 3 (nome del profilo).
- Pacchetto di esempio `AzerothUnspoken_Example`.
- Test fuori dal gioco con lupa e client simulato (`Tests/`).
- Configurazione per WebStorm (`.luarc.json`) e annotazioni EmmyLua.
- Riferimenti tecnici ([docs/RIFERIMENTI.md](docs/RIFERIMENTI.md)).

*Modificato*
- La lingua si salva con il codice corto dei pacchetti (`it`, `en`).
- Pausa globale predefinita a 45 secondi (prima 40) e finestra anti-ripetizione al massimo di 30 frasi (prima 40).

### Limiti noti

- **Provato solo fuori dal gioco**: le prove nel client vero (G1, G2, G3) sono rimandate. Vedi [docs/G1_checklist.md](docs/G1_checklist.md).
- I numeri del Narrative Director (budget, pause di categoria, pesi di stile) sono ipotesi da regolare in gioco (G1, passi 27–31).
- Nelle impostazioni hanno effetto i moduli Personale, Mondo, Memoria, Relazioni, Dialoghi NPC, Storie, Proposte in chat e Total RP 3; Social e Audio sono segnaposto.
- **Gli archi narrativi (S9) non sono stati provati nel client vero**: se `C_Map` dà l'uiMapID della zona di partenza (il nome inglese è il ripiego), le soglie di familiarità, i livelli e le attese dei passi (ipotesi), l'aspetto della scheda «Storie», il tono delle 33 battute (G1, passi 84–92).
- **NPC Alive (S8) non è stato provato nel client vero**: i nomi delle finestre di Blizzard che la finestra evita, `GetRect`, l'unità `npc` durante le interazioni, gli `npcID` del registro (pochi, di Classic Era, non verificati; [issue #36](https://github.com/Finland6738/azeroth-unspoken/issues/36)) e il tono delle 169 battute sono da provare in gioco (G3, `docs/G1_checklist.md`).
- I tratti di Total RP 3 (`PSYCHO_MAP`) usano gli ID dei tratti predefiniti del TRP3 installato e non sono stati provati con un profilo vero. Quasi tutte le frasi di base hanno tag di affinità dal S7 (in più le 26 di `base_soul`); le soglie e i fattori del Character Soul (×1,6, ×0,6, voce interiore, ironia) sono ipotesi da regolare in gioco (G1, passi 32–38).
- Gli `uiMapID`, gli `instanceID` e gli `npcID` di `Data/Places.lua` e `Data/NPCs.lua` vengono da Classic Era e non sono verificati in Forever ([#36](https://github.com/Finland6738/azeroth-unspoken/issues/36)).
- Il tono, il ritmo e la frequenza delle frasi non sono verificati: i test controllano struttura, conteggi e regole, non la qualità letteraria (G2, G3).
- Un pacchetto che registra una chiave già esistente (copione, NPC, luogo, arco) sostituisce quella di base senza un avviso ([#69](https://github.com/Finland6738/azeroth-unspoken/issues/69)).
- Licenza da definire ([issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2)).

[Non rilasciato]: https://github.com/Finland6738/azeroth-unspoken/commits/main
