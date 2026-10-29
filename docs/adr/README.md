# Decisioni di progetto (ADR)

Qui sono registrate le decisioni di architettura e di metodo di Azeroth Unspoken, una per file, nel formato [MADR](https://adr.github.io/madr/) in italiano: **contesto**, **decisione**, **alternative considerate**, **conseguenze**.

Servono a ricordare *perché* il progetto è fatto in un certo modo, non solo *come*. Quando una decisione cambia non si riscrive: se ne scrive una nuova che sostituisce la vecchia, e la vecchia passa allo stato "sostituita".

## Indice

| N. | Decisione | Stato |
|---|---|---|
| [0001](0001-engine-and-narrative-database-separated.md) | Motore e database narrativo separati, con frasi curate e non generate | accettata |
| [0002](0002-fully-offline-no-ai.md) | Tutto offline, senza intelligenza artificiale | accettata |
| [0003](0003-private-narrator-and-chat-gateway.md) | Narratore privato e Chat Gateway: nessun invio senza un'azione del giocatore | accettata |
| [0004](0004-total-rp-3-optional-with-adapter.md) | Total RP 3 facoltativo, tramite un adattatore | accettata |
| [0005](0005-compat-secret-values-and-defensive-events.md) | Compat, valori segreti e registrazione difensiva degli eventi | accettata |
| [0006](0006-savedvariables-and-schema-versions.md) | SavedVariables e versioni dello schema | accettata |
| [0007](0007-offline-tests-with-lupa-and-mock.md) | Test fuori dal gioco con lupa e un client simulato | accettata |
| [0008](0008-lf-line-endings.md) | Fine riga LF in tutti i file di testo | accettata |
| [0009](0009-git-flow-branch-pr-squash.md) | Flusso git: un branch per step, pull request, squash merge | accettata |
| [0010](0010-forever-api-dump-as-reference.md) | Il dump delle API di Forever come riferimento, mai copiato | accettata |
| [0011](0011-name-azeroth-unspoken.md) | Il nome Azeroth Unspoken | accettata |
| [0012](0012-languages-chosen-by-user.md) | Lingue scelte dall'utente, indipendenti dal client | accettata |
| [0013](0013-github-wiki.md) | La wiki di GitHub: `docs/` resta la fonte, la wiki non si usa per ora | accettata |
| [0014](0014-normalized-event-bus-and-isolated-modules.md) | Bus di eventi normalizzati, moduli isolati e Director come punto di aggancio | accettata |
| [0015](0015-narrative-director-one-intervention-per-moment.md) | Narrative Director: un intervento per momento, pesi moltiplicativi, stile che pesa e non esclude | accettata |
| [0016](0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md) | Character Soul: tratti opt-in come dati, affinità morbida e filtri rigidi, Total RP 3 con consenso | accettata |
| [0017](0017-living-memory-selective-memories-and-honest-recall.md) | Living Memory: ricordi selettivi, richiamo onesto, diario manuale | accettata |
| [0018](0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md) | Relazioni: assi indipendenti, etichette come dati, NPC automatici, giocatori scelti dall'utente | accettata |
| [0019](0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md) | Interlocutore e luogo: fonti in ordine di priorità, tendenze deboli, luoghi per uiMapID | accettata |
| [0020](0020-simulated-dialogue-and-real-dialogue-npc-alive.md) | NPC Alive: un dialogo simulato non è un dialogo reale | accettata |
| [0021](0021-story-arcs-micro-stories-without-game-effects.md) | Story Arcs: micro-storie che non toccano il gioco | accettata |

## Decisioni in sospeso

- **Licenza** di codice e testi: [issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2). Quando sarà presa, avrà il primo numero libero (oggi 0022).

## Come scriverne una nuova

1. Copia lo scheletro qui sotto in `docs/adr/NNNN-titolo-breve.md`, con il numero successivo.
2. Scrivila **prima o insieme** al cambiamento che giustifica, non dopo mesi.
3. Aggiungila all'indice di questo file.
4. Se sostituisce una decisione precedente, cambia lo stato di quella in "sostituita da NNNN" e indicalo nella nuova.

```markdown
# NNNN. Titolo: la decisione in una frase

- Stato: proposta | accettata | sostituita da NNNN
- Data: AAAA-MM-GG

## Contesto

Il problema, i vincoli e le forze in gioco.

## Decisione

Che cosa si fa, in forma attiva.

## Alternative considerate

- **Alternativa A.** Perché no.
- **Alternativa B.** Perché no.

## Conseguenze

- Positive: …
- Negative o costi: …

## Riferimenti

File, issue, sezioni del GDD, altre ADR.
```

Le ADR descrivono il codice **com'è su `main`** e ciò che la roadmap prevede. Ciò che non è ancora stato provato nel client vero è indicato come tale.
