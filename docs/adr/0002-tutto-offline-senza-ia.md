# 0002. Tutto offline, senza intelligenza artificiale

- Stato: accettata
- Data: 2026-10-29 (decisione della [roadmap](../../ROADMAP.md), n. 2, e del GDD §14)

## Contesto

Un compagno narrativo potrebbe sembrare un buon candidato per un modello linguistico in rete: testi sempre nuovi, risposte personalizzate. Ma un addon gira dentro il client di gioco, gestisce dati di un personaggio e, in un'ambientazione di roleplay, anche di altre persone. Il progetto deve essere prevedibile, rispettoso della privacy e utilizzabile dove il client non permette niente di esterno.

## Decisione

- **Nessuna rete**: nessuna chiamata HTTP, nessun socket, nessun download, nessun browser, nessuna telemetria, nessun account esterno, nessuna IA online.
- **Nessun testo generato a runtime**: si sceglie fra frasi esistenti ([ADR 0001](0001-motore-e-database-narrativo-separati.md)).
- **Si espande con pacchetti locali**: file Lua e `.toc`, come ogni addon.
- **Unica comunicazione fra giocatori, in futuro**: i messaggi addon interni al gioco (modulo Social, step S10), disattivati per impostazione predefinita, con consenso esplicito e rilasciati solo dove il trasporto è dimostrato. Nessun codice ricevuto da altri giocatori viene mai eseguito (nessun `loadstring`).
- **Durante lo sviluppo** si possono consultare fonti esterne (il dump delle API, ForeverDB.net per preparare registri locali di NPC e luoghi), ma i risultati entrano nel repository come dati locali, citando la fonte. L'addon in gioco resta offline ([RIFERIMENTI.md](../RIFERIMENTI.md)).

## Alternative considerate

- **Generazione con un modello in rete.** Testi illimitati, ma: dipendenza da un servizio, costi, latenza, rischio di contenuti inappropriati o incoerenti con la lore, invio di dati del giocatore a terzi. Scartata.
- **Modello locale dentro il gioco.** Non realizzabile nell'ambiente degli addon.
- **Un'applicazione esterna che legge le SavedVariables** e prepara nuovi testi. Rompe il principio "l'addon da solo basta" e complica l'installazione. Scartata (si può riconsiderare come strumento di *autore*, non di runtime).

## Conseguenze

- Positive: privacy semplice da spiegare e da verificare (si cerca nel codice l'assenza di accessi di rete); comportamento riproducibile e testabile fuori dal gioco; nessun problema di moderazione di testi generati.
- Negative: i contenuti vanno scritti a mano e mantenuti (si compensa con il sistema di pacchetti e con le regole di qualità); la personalizzazione è limitata alle condizioni previste dal motore.
- Chi contribuisce non deve introdurre dipendenze di rete né strumenti che inviino dati fuori dal client: va rifiutato in revisione.

## Riferimenti

- GDD §2.3 (non-obiettivi), §14 (sicurezza e privacy).
- [README, sezione Privacy](../../README.md#privacy-e-chat).
