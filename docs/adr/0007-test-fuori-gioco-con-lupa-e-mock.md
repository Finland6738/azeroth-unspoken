# 0007. Test fuori dal gioco con lupa e un client simulato

- Stato: accettata
- Data: 2026-10-29

## Contesto

Un addon gira solo dentro il client, e il client non si lancia in un ambiente di integrazione continua. Ma la maggior parte della logica (scelta delle frasi, configurazione, bus degli eventi, Chat Gateway, compatibilità) non dipende dalla grafica. Si vuole poter verificare molto, velocemente e ripetibilmente, prima di toccare il gioco. Lo sviluppo procede anche quando l'utente non può provare nel client (G1 rimandata).

## Decisione

1. **I test girano fuori dal gioco con [lupa](https://github.com/scoder/lupa) in modalità Lua 5.1** (`lupa.lua51`), la stessa versione del client.
2. **Un client simulato** (`Tests/MockWoWAPI.lua`) fornisce le funzioni di WoW usate dall'addon: unità, zone, tempo, eventi, frame e widget con stato (`Show/Hide`, testo, `Click()`, `TypeEnter()`, `UPDATE(dt)`, `FindWidgets`), chat e `SendChatMessage`. Simula anche i comportamenti difficili del client: `MakeSecret()` e `SECRET_UNITS` per i valori segreti, `RESTRICTIONS`, `VALID_EVENTS` (registrare un evento sconosciuto dà errore), `GetBuildInfo` della build 1.60.1.70658.
3. **Il lanciatore** (`Tests/run_tests.py`) carica i file nell'ordine del `.toc`, come farebbe il client, con `ADDON, NS = ...`, e spara `ADDON_LOADED` e `PLAYER_ENTERING_WORLD`. Poi esegue i controlli sul database e sul flusso (assenza di chat pubblica con i predefiniti, eventi → frase, comandi) e i file `Tests/Test*.lua`, **ognuno in un runtime nuovo**, con `T.run`, `T.eq`, `T.ok` definiti nel mock. Esce con codice 1 se un controllo fallisce.
4. **Comando**, dalla radice del progetto: `.venv/Scripts/python -I -X utf8 Tests/run_tests.py AzerothUnspoken` (l'ambiente `.venv` è locale, fuori dal controllo di versione; `-I` isola l'interprete, `-X utf8` forza UTF-8).
5. **Ogni step aggiunge test per ciò che costruisce** e li fa passare prima della PR. Le nuove funzioni dipendenti da API non provate si testano anche nel caso "API mancante" e "valore segreto".

## Alternative considerate

- **Provare solo nel client.** Lento, non ripetibile, e dipende dalla disponibilità dell'utente. Scartata come unica via.
- **Framework in gioco** (WoWUnit o simili). Utili, ma non girano senza il client e non coprono i controlli di scrittura sui file.
- **Un interprete Lua 5.1 esterno con busted o luaunit.** Possibile, ma lupa si installa con un solo `pip` anche su Windows e permette di scrivere il lanciatore in Python, ad esempio per leggere il `.toc`.
- **Simulatore completo dell'interfaccia di WoW.** Troppo costoso: il mock simula solo ciò che serve.

## Conseguenze

- Positive: ciclo di prova in pochi secondi; regressioni scoperte subito; i comportamenti rischiosi (valori segreti, chat bloccata, eventi inesistenti) sono testabili con input forzati.
- Negative (importanti):
  - **un test che passa dimostra che il codice è coerente con le nostre ipotesi sul client, non che il client le rispetti**: per questo esiste la prova G1 ([checklist](../G1_checklist.md));
  - il mock va aggiornato quando si usano API nuove, e può divergere dal client vero;
  - il disegno dei widget (aspetto, trascinamento, passaggio dei clic) non è verificabile fuori dal gioco.
- Nel repository non c'è ancora integrazione continua: i test si eseguono a mano prima di ogni PR.

## Riferimenti

- GDD §16.1.
- `Tests/run_tests.py`, `Tests/MockWoWAPI.lua`, `Tests/Test*.lua`.
- [CONTRIBUTING.md](../../CONTRIBUTING.md), sezione Test.
