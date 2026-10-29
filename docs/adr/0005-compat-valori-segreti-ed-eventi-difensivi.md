# 0005. Compat, valori segreti e registrazione difensiva degli eventi

- Stato: accettata
- Data: 2026-10-29 (implementata nello step S1; decisione della [roadmap](../../ROADMAP.md), n. 4)

## Contesto

Il client di WoW Forever (Interface 16001) può nascondere agli addon alcuni valori (nomi, salute, aure…) trasformandoli in *valori segreti*: non si possono leggere, confrontare né usare per decidere. Alcune azioni sono limitate in combattimento, negli incontri e nel PvP. Le API non sono tutte documentate per questo client, un evento inesistente può far sollevare un errore alla registrazione, e il comportamento reale è noto solo provandolo. Un errore in un gestore non deve fermare l'addon.

## Decisione

1. **Ogni API del client passa da `Core/Compat.lua`.** Compat espone una *matrice delle capacità* (`Compat.caps`) con tre stati: `AVAILABLE`, `MISSING`, `RESTRICTED`. Se una funzione manca o è limitata, si spegne **una funzione**, non l'addon.
2. **Valori segreti**: `Compat.IsSecret(v)` li riconosce (`issecretvalue`, `canaccessvalue`, `issecrettable`); `Compat.Readable(v)` restituisce il valore o `nil`; `Compat.Query(fn, ...)` chiama in modo protetto e restituisce lo stato più i valori, con i segreti convertiti in `nil`; `Compat.SafeCall` è lo stesso senza lo stato. **Nessuna decisione si basa su un valore segreto**: nel contesto non entra, e nel campo `fields` dell'evento il campo vale `RESTRICTED`.
3. **Identità nascoste**: `Compat:IsUnitIdentitySecret(unit)` (`C_Secrets.ShouldUnitIdentityBeSecret`) decide se usare i dati di un bersaglio. *Aggiornamento Q2 (issue #6):* se è segreta, `NS:BuildContext` **non legge né confronta nulla** del bersaglio: il contesto ha solo `hasTarget` e `targetSecret` (niente nome, tipo, classe, razza, fazione, `hostile`, `elite`…), quindi le frasi con `{target}` si scartano e nessuna decisione dipende da un valore nascosto. Ogni altra lettura del contesto passa da `SafeCall`: un dato segreto vale "non lo so" (`nil`), non "falso". Il mock dei test restituisce segreti per le unità in `SECRET_UNITS` e fa sollevare un errore agli usi vietati.
4. **Registrazione difensiva degli eventi**: `Compat:RegisterEvent(frame, evento, unit)` controlla `C_EventUtils.IsEventValid`, registra dentro un `pcall` (con `RegisterUnitEvent` per gli eventi di una sola unità) e annota l'esito nella matrice. Un evento che non si può registrare diventa `MISSING` e non blocca l'avvio.
5. **Isolamento degli errori**: `Diagnostics:Guard(modulo, fn, ...)` esegue con `xpcall`, registra l'errore (al massimo 30, raggruppati) e prosegue. Lo usano l'avvio dei moduli, i comandi, le sorgenti di eventi e i gestori del bus.
6. **Prova al caricamento**: `Compat:Probe()` compila la matrice (client, API, eventi, valori, restrizioni, chat, integrazioni) e `/au debug [full]` la mostra. Serve anche da strumento per gli spike tecnici del GDD (SP-01, SP-02).
7. **Non ci si fida di `WOW_PROJECT_ID`** per scegliere un ramo di compatibilità (nella beta poteva valere 1): si fanno controlli puntuali. Il riconoscimento di Forever (`isForever`) usa `WOW_PROJECT_CAMELOT` oppure Interface 16001–19999.
8. **Niente log di combattimento**: `CombatLogGetCurrentEventInfo` non è nel dump delle API di Forever (GDD §2.3); le reazioni si basano su eventi di gioco normali.

## Alternative considerate

- **Chiamare le API direttamente**, come fa la maggior parte degli addon. Più breve, ma un'API mancante o una limitazione nuova romperebbe l'addon senza spiegare perché.
- **Un solo `pcall` intorno a tutto.** Spegnerebbe l'addon intero a ogni errore e nasconderebbe la causa.
- **Ramificare per `WOW_PROJECT_ID`.** Inaffidabile in Forever (vedi sopra).

## Conseguenze

- Positive: un solo posto da correggere quando il client cambia; diagnostica utile all'utente e a chi sviluppa; test con valori segreti e restrizioni simulati (`Tests/TestCompat.lua`).
- Negative: un livello di indirezione in più (`Compat.Query(...)` invece di una chiamata diretta); **nomi, firme ed esistenza di molte API nella build 70658 non sono stati verificati nel client vero** (`C_RestrictedActions`, `C_Secrets`, `debugstack`, ecc.): si verificano nella prova G1 e nel controllo del dump (vedi [ADR 0010](0010-dump-api-di-forever-come-riferimento.md)).
- Ogni funzione nuova che dipende da un'API non provata deve passare da Compat e **degradare con eleganza** (regola della roadmap, "Prove in gioco rimandate").

## Riferimenti

- GDD §2.3, §3.8, §13, §15; [docs/RIFERIMENTI.md](../RIFERIMENTI.md).
- `Core/Compat.lua`, `Core/Diagnostics.lua`, `Core/EventBus.lua`, `Core/ContextResolver.lua`.
