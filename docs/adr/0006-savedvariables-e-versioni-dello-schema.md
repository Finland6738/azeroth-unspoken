# 0006. SavedVariables e versioni dello schema

- Stato: accettata
- Data: 2026-10-29 (implementata negli step S1 e S2; decisione della [roadmap](../../ROADMAP.md), S1; aggiornata fino allo schema 6 e allo step S9)

## Contesto

Un addon che salva dati deve poterli far evolvere senza perdere le scelte dell'utente. Le SavedVariables sono file Lua modificabili a mano o danneggiati, e possono venire da una versione più nuova o più vecchia dell'addon. Alcune impostazioni sono dell'account, altre appartengono a un personaggio.

## Decisione

1. **Due variabili salvate** (dichiarate nel `.toc`):
   - `AzerothUnspokenDB` (`## SavedVariables`): `{ schemaVersion, settings = { … } }`, per l'account. Dopo `Config:Load` è `NS.db` (cioè `AzerothUnspokenDB.settings`).
   - `AzerothUnspokenCharacterDB` (`## SavedVariablesPerCharacter`): `{ schemaVersion, memory, personality, memories, relationships, arcs, history }`, per personaggio. Dopo il caricamento è `NS.cdb`. Si usano `memory` (anti-ripetizione delle frasi), `personality` (Character Soul, S5, [ADR 0016](0016-character-soul-tratti-opt-in-e-total-rp-3-con-consenso.md)), `memories` (Living Memory, S6, [ADR 0017](0017-living-memory-ricordi-selettivi-e-richiamo-onesto.md)), `relationships` (S6b, [ADR 0018](0018-relazioni-a-piu-assi-npc-automatici-e-giocatori-scelti-dall-utente.md)) e `arcs` (Story Arcs, S9, [ADR 0021](0021-story-arcs-micro-storie-senza-effetti-sul-gioco.md)). `history` è l'unico segnaposto ancora vuoto.
   - Le impostazioni dell'account (`settings`) comprendono anche le sezioni dei sistemi: `relations`, `interlocutor` (`trp3Others`, il consenso a leggere i profili pubblici Total RP 3 degli altri, [ADR 0019](0019-interlocutore-e-luogo-fonti-in-ordine-e-luoghi-per-mapid.md)), `npcAlive` (`autoOffer`, [ADR 0020](0020-dialogo-simulato-e-dialogo-reale-npc-alive.md)), `arcs` (`maxActive`) e `ui.dialogue`. Le sezioni nuove le aggiunge `Merge`: non serve una migrazione.
2. **Una versione dello schema** (`Config.SCHEMA_VERSION`, oggi 6), salvata in `schemaVersion` di ciascuna variabile. Le versioni globale e del personaggio avanzano insieme, anche quando una delle due non cambia nulla (la migrazione è allora vuota):

   | Versione | Che cosa cambia |
   |---|---|
   | 1 | struttura iniziale (le impostazioni sotto `settings`) |
   | 2 | `output.mode` diventa `chat.mode` del Chat Gateway (S2) |
   | 3 | `personality` diventa il profilo del Character Soul (S5) |
   | 4 | `memories` diventa la Living Memory (S6) |
   | 5 | `relationships` per NPC e giocatori (S6b) |
   | 6 | `arcs` per gli archi narrativi (S9) |

   I luoghi della memoria passati a una chiave stabile per `uiMapID` (S6c, issue #31) **non** hanno fatto avanzare lo schema: è una versione *interna* di `memories`.
3. **Migrazioni a gradini** in `Config.migrations[tipo][n]`: la funzione *n* porta i dati dalla versione *n−1* alla *n*. Si applicano in ordine all'avvio, ognuna dentro `Diagnostics:Guard`. Esempio, la migrazione globale 2 trasforma `output.mode` in `chat.mode` e forza `autoPublicSay = false` ([ADR 0003](0003-narratore-privato-e-chat-gateway.md)). Nessuna migrazione dal prototipo: `VociDiAzerothDB` non si importa, perché non è mai stato usato in gioco.
   - **Versioni interne dei moduli.** I dati con una forma complessa hanno **anche una versione propria**, con migrazioni e pulizia nel proprio modulo: `personality.version` (1), `memories.version` (2, `LM.migrations[n]`), `relationships.version` (1) e `arcs.version` (1, `SA.migrations`). Servono perché la forma interna può cambiare senza toccare le altre variabili (così il passaggio dei luoghi della memoria all'`uiMapID` è la versione 2 di `memories` e lo schema resta 6). All'avvio ogni modulo esegue le proprie migrazioni e la propria `Sanitize`, che scarta le voci malformate e riporta i valori nei limiti: dati rovinati a mano non rompono l'addon.
4. **Predefiniti e validazione**: `Config.Merge(defaults, saved)` aggiunge in modo ricorsivo ciò che manca senza toccare ciò che c'è; `Config:Validate` riporta al predefinito i valori di tipo sbagliato, fuori elenco o fuori intervallo (regole per percorso in `Config.rules`) e raccoglie i problemi in `Config.issues`. Accesso per percorso con `Config:Get`/`Config:Set` (che validano).
5. **Dati da una versione più nuova** (si è tornati a un addon più vecchio): si registra un errore in diagnostica e **non si modifica nulla**.
   - Per lo **schema** (`schemaVersion` maggiore di quella dell'addon) la migrazione non parte: `Config:Load` lavora su una **copia** (`Config.readOnly`) con `Merge` e `Validate`, scartata a fine sessione, e il file salvato resta com'era (correzione Q2, issue #3).
   - Per la **versione interna di un modulo** (per esempio `memories.version` o `arcs.version` maggiori di quelle note) il modulo passa in **sola lettura**: i dati si leggono, ma non si riscrivono e non si ripuliscono. Vale lo stesso principio, con un errore in diagnostica (ad esempio «arcs.version 2 > 1: sola lettura»).
6. **Niente contenuti di chat nei file salvati.** La cronologia del narratore non si salva ([ADR 0003](0003-narratore-privato-e-chat-gateway.md)).
7. **Ogni nuova variabile globale** dell'addon (SavedVariables, `SLASH_*`, `BINDING_*`, funzioni dei tasti) va aggiunta a `diagnostics.globals` in `.luarc.json`.

## Alternative considerate

- **Nessuna versione, solo controlli "se manca la chiave"**. Funziona per le aggiunte, non per rinomine e cambi di significato come `output.mode` → `chat.mode`.
- **Una sola variabile per tutto.** Mescolerebbe impostazioni dell'account e dati del personaggio (memoria, relazioni, ricordi).
- **Resettare le impostazioni a ogni cambio di versione.** Perde le scelte dell'utente.

## Conseguenze

- Positive: le scelte dell'utente sopravvivono agli aggiornamenti; ogni cambio di formato è un passo piccolo e testabile. `Tests/TestConfig.lua` copre la validazione, il `Merge`, la migrazione 1 → 2 e il comportamento con uno schema più nuovo; ogni modulo con una versione propria ha i suoi test di migrazione e di dati rovinati o futuri (`TestSoul`, `TestMemory`, `TestRelations`, `TestArcs`), e `Tests/run_tests.py` simula il `/reload` passando le SavedVariables da un runtime all'altro, anche dallo schema 5 al 6.
- Negative:
  - ogni modifica allo schema richiede una migrazione e un test;
  - **la scrittura e il ricaricamento reali delle SavedVariables non sono stati provati nel client** (checklist G1, SP-04);
  - con dati di schema più nuovo le impostazioni cambiate in quella sessione non si salvano (si lavora su una copia): è il prezzo di non rovinare i dati della versione più nuova.
- Ogni sistema nuovo che salva dati per personaggio aggiunge una sezione a `characterDefaults`, una migrazione dello schema (e una versione interna se la forma è complessa) e i test dei dati rovinati e futuri: è il costo di una regola che si è dimostrata stabile da S2 a S9.

## Riferimenti

- GDD §11.4, §11.5.
- `Core/Config.lua`, `AzerothUnspoken/AzerothUnspoken.toc`, `.luarc.json`.
