# 0006. SavedVariables e versioni dello schema

- Stato: accettata
- Data: 2026-10-29 (implementata negli step S1 e S2; decisione della [roadmap](../../ROADMAP.md), S1)

## Contesto

Un addon che salva dati deve poterli far evolvere senza perdere le scelte dell'utente. Le SavedVariables sono file Lua modificabili a mano o danneggiati, e possono venire da una versione più nuova o più vecchia dell'addon. Alcune impostazioni sono dell'account, altre appartengono a un personaggio.

## Decisione

1. **Due variabili salvate** (dichiarate nel `.toc`):
   - `AzerothUnspokenDB` (`## SavedVariables`): `{ schemaVersion, settings = { … } }`, per l'account. Dopo `Config:Load` è `NS.db` (cioè `AzerothUnspokenDB.settings`).
   - `AzerothUnspokenCharacterDB` (`## SavedVariablesPerCharacter`): `{ schemaVersion, memory, personality, memories, arcs, history }`, per personaggio. Dopo il caricamento è `NS.cdb`. Oggi si usa `memory` (anti-ripetizione delle frasi); `personality`, `memories`, `arcs` e `history` sono segnaposto vuoti per gli step S5–S9.
2. **Una versione dello schema** (`Config.SCHEMA_VERSION`, oggi 2), salvata in `schemaVersion` di ciascuna variabile.
3. **Migrazioni a gradini** in `Config.migrations[tipo][n]`: la funzione *n* porta i dati dalla versione *n−1* alla *n*. Si applicano in ordine all'avvio, ognuna dentro `Diagnostics:Guard`. Esempio, la migrazione globale 2 trasforma `output.mode` in `chat.mode` e forza `autoPublicSay = false` ([ADR 0003](0003-narratore-privato-e-chat-gateway.md)). Nessuna migrazione dal prototipo: `VociDiAzerothDB` non si importa, perché non è mai stato usato in gioco.
4. **Predefiniti e validazione**: `Config.Merge(defaults, saved)` aggiunge in modo ricorsivo ciò che manca senza toccare ciò che c'è; `Config:Validate` riporta al predefinito i valori di tipo sbagliato, fuori elenco o fuori intervallo (regole per percorso in `Config.rules`) e raccoglie i problemi in `Config.issues`. Accesso per percorso con `Config:Get`/`Config:Set` (che validano).
5. **Dati da una versione più nuova** (`schemaVersion` maggiore di quella dell'addon): si registra un errore in diagnostica e **la migrazione non parte**. I dati non si modificano: `Config:Load` lavora su una **copia** (`Config.readOnly`) con `Merge` e `Validate`, scartata a fine sessione, e il file salvato resta com'era (correzione Q2, issue #3).
6. **Niente contenuti di chat nei file salvati.** La cronologia del narratore non si salva ([ADR 0003](0003-narratore-privato-e-chat-gateway.md)).
7. **Ogni nuova variabile globale** dell'addon (SavedVariables, `SLASH_*`, `BINDING_*`, funzioni dei tasti) va aggiunta a `diagnostics.globals` in `.luarc.json`.

## Alternative considerate

- **Nessuna versione, solo controlli "se manca la chiave"**. Funziona per le aggiunte, non per rinomine e cambi di significato come `output.mode` → `chat.mode`.
- **Una sola variabile per tutto.** Mescolerebbe impostazioni dell'account e dati del personaggio (memoria, relazioni, ricordi).
- **Resettare le impostazioni a ogni cambio di versione.** Perde le scelte dell'utente.

## Conseguenze

- Positive: le scelte dell'utente sopravvivono agli aggiornamenti; ogni cambio di formato è un passo piccolo e testabile (`Tests/TestConfig.lua` copre la migrazione 1 → 2 e la validazione).
- Negative:
  - ogni modifica allo schema richiede una migrazione e un test;
  - **la scrittura e il ricaricamento reali delle SavedVariables non sono stati provati nel client** (checklist G1, SP-04);
  - con dati di schema più nuovo le impostazioni cambiate in quella sessione non si salvano (si lavora su una copia): è il prezzo di non rovinare i dati della versione più nuova.
- Lo step S6b aggiungerà `AzerothUnspokenCharacterDB.relationships` con la propria versione dello schema e le sue migrazioni.

## Riferimenti

- GDD §11.4, §11.5.
- `Core/Config.lua`, `AzerothUnspoken/AzerothUnspoken.toc`, `.luarc.json`.
