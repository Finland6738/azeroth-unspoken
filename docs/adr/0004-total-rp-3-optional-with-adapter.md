# 0004. Total RP 3 facoltativo, tramite un adattatore

- Stato: accettata
- Data: 2026-10-29 (decisione della [roadmap](../../ROADMAP.md), n. 5; il codice esiste dallo step S1, l'estensione è prevista nello step S5)

## Contesto

Total RP 3 (TRP3) è l'addon di profili di roleplay più diffuso. Un compagno narrativo ne trae vantaggio: nome del personaggio, tratti caratteriali, razza e classe personalizzate. Ma non tutti i giocatori lo usano, le sue API possono cambiare tra versioni e non sono un contratto con noi. Il GDD (§8) chiede che l'addon funzioni al 100% anche senza.

## Decisione

1. **TRP3 è una dipendenza facoltativa**: `## OptionalDeps: totalRP3` nel `.toc`, nessun `Dependencies`. Nessun altro file dell'addon chiama TRP3 direttamente.
2. **Un solo punto di contatto: l'adattatore** `Integration/TotalRP3.lua` (`NS.TotalRP3`).
   - Ogni accesso è protetto (`pcall`, controllo di tipo), si verifica a ogni avvio con `TotalRP3:Probe()` e il risultato entra nella matrice delle capacità (`integration:totalRP3`, visibile in `/au debug`).
   - Se TRP3 manca, o `AddOn_TotalRP3.Player.GetCurrentUser` o `GetFirstName` non esistono, l'adattatore risponde `nil` e l'addon usa il nome del personaggio.
   - I valori letti passano da `Compat.Readable`.
3. **L'utente decide**: l'integrazione ha un interruttore (`modules.totalRP3`, "Nome da Total RP 3" nelle impostazioni) e il wizard ne parla al passo dedicato solo se TRP3 è presente.
4. **Cosa fa**: legge il **nome** (`GetFirstName`) del profilo del giocatore e lo usa nelle frasi (`{player}`). Dallo step S5 legge anche i **tratti psicologici pubblici** del proprio profilo (`GetInfo("characteristics/PS")`), con un consenso a parte, per il Character Soul con la priorità *scelta esplicita > TRP3 > dati di gioco > valori neutri* ([ADR 0016](0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md)). Nient'altro.
5. **Cosa è previsto** (non ancora presente):
   - step S6c: dati **pubblici** del profilo di un bersaglio (razza e classe personalizzate, tratti), con consenso, mai obbligatori.

## Alternative considerate

- **TRP3 obbligatorio.** Semplifica il codice, ma esclude chi non lo usa e lega il progetto a un addon esterno. Scartata.
- **Chiamare le API di TRP3 dove servono**, senza adattatore. Ogni cambio di API romperebbe più punti e la diagnostica non saprebbe dire perché. Scartata.
- **Non integrare TRP3.** Perde il valore principale per il pubblico dei roleplayer. Scartata.

## Conseguenze

- Positive: se TRP3 cambia o sparisce, si rompe al massimo un file e la matrice delle capacità lo dice; i test coprono la presenza, l'assenza e un'API che solleva un errore (`Tests/TestCompat.lua`, `Tests/TestNarrator.lua`, che impostano `AddOn_TotalRP3` a mano).
- Negative: l'adattatore va aggiornato quando cambiano le API di TRP3; **il funzionamento con il TRP3 vero non è stato provato in gioco** (checklist G1, SP-03 passo 7).
- Il consenso e la privacy valgono per ogni nuova lettura: nessun dato di un altro giocatore si legge o si salva senza una scelta dell'utente.

## Riferimenti

- GDD §8.
- `Integration/TotalRP3.lua`, `Core/ContextResolver.lua` (`PlayerName`).
- ADR 0016 (tratti letti da TRP3).
- ROADMAP: step S5 e S6c.
