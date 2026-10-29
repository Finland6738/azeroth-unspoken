# Documentazione di Azeroth Unspoken

Indice di tutto ciò che si trova in `docs/` e dei documenti collegati nella radice del progetto. **La fonte autorevole della documentazione è questa cartella**, versionata insieme al codice ([ADR 0013](adr/0013-github-wiki.md)).

La documentazione descrive solo ciò che esiste su `main` o che è pianificato in [ROADMAP.md](../ROADMAP.md); le parti pianificate sono indicate come tali.

## Per chi usa l'addon

| Documento | Contenuto |
|---|---|
| [README.md](../README.md) · [README.en.md](../README.en.md) | che cosa fa, requisiti, installazione, primo avvio, comandi, impostazioni, privacy, Total RP 3 |
| [G1_checklist.md](G1_checklist.md) | lista di controllo per provare l'addon nel client vero (spike SP-01…SP-05) |
| [CHANGELOG.md](../CHANGELOG.md) | modifiche rilevanti per versione |

## Per chi scrive frasi e pacchetti

| Documento | Contenuto |
|---|---|
| [AzerothUnspoken/PACK_FORMAT.md](../AzerothUnspoken/PACK_FORMAT.md) | formato dei pacchetti: frasi, eventi, condizioni, segnaposto, vocabolario, cornici, lingue |
| [CONTRIBUTING.md](../CONTRIBUTING.md) | come scrivere frasi buone (regole di qualità), pacchetti, test, stile, PR |
| `AzerothUnspoken_Example/` | pacchetto di esempio da copiare |

## Per chi sviluppa

| Documento | Contenuto |
|---|---|
| [ARCHITECTURE.md](ARCHITECTURE.md) | moduli e responsabilità, flusso di un evento, dati e SavedVariables, punti di estensione (con diagrammi Mermaid) |
| [adr/README.md](adr/README.md) | le decisioni di progetto (ADR), con indice |
| [REFERENCES.md](REFERENCES.md) | fonti tecniche per WoW Forever e il dump delle API |
| [../ROADMAP.md](../ROADMAP.md) | milestone, step, stato di avanzamento, note tra uno step e l'altro |
| [../CONTRIBUTING.md](../CONTRIBUTING.md) | regole di lavoro, test, stile Lua ed EmmyLua, git |

## Specifica di prodotto

| Documento | Contenuto |
|---|---|
| [Immersion_Director_GDD_v1.0.md](Immersion_Director_GDD_v1.0.md) | il Game Design Document. Il prodotto lì si chiama "Immersion Director"; oggi è **Azeroth Unspoken**. Dove GDD e roadmap non coincidono, vale la roadmap |

## Decisioni di progetto (ADR)

| N. | Decisione |
|---|---|
| [0001](adr/0001-engine-and-narrative-database-separated.md) | Motore e database narrativo separati, con frasi curate e non generate |
| [0002](adr/0002-fully-offline-no-ai.md) | Tutto offline, senza intelligenza artificiale |
| [0003](adr/0003-private-narrator-and-chat-gateway.md) | Narratore privato e Chat Gateway |
| [0004](adr/0004-total-rp-3-optional-with-adapter.md) | Total RP 3 facoltativo, con adattatore |
| [0005](adr/0005-compat-secret-values-and-defensive-events.md) | Compat, valori segreti, eventi difensivi |
| [0006](adr/0006-savedvariables-and-schema-versions.md) | SavedVariables e versioni dello schema |
| [0007](adr/0007-offline-tests-with-lupa-and-mock.md) | Test fuori dal gioco con lupa e mock |
| [0008](adr/0008-lf-line-endings.md) | Fine riga LF |
| [0009](adr/0009-git-flow-branch-pr-squash.md) | Flusso git: branch, PR, squash merge |
| [0010](adr/0010-forever-api-dump-as-reference.md) | Dump delle API di Forever come riferimento |
| [0011](adr/0011-name-azeroth-unspoken.md) | Il nome Azeroth Unspoken |
| [0012](adr/0012-languages-chosen-by-user.md) | Lingue scelte dall'utente |
| [0013](adr/0013-github-wiki.md) | La wiki di GitHub |
| [0014](adr/0014-normalized-event-bus-and-isolated-modules.md) | Bus di eventi, moduli isolati, Director |
| [0015](adr/0015-narrative-director-one-intervention-per-moment.md) | Narrative Director: un intervento per momento, peso W, stile |
| [0016](adr/0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md) | Character Soul: tratti opt-in, affinità morbida e filtri rigidi, Total RP 3 con consenso |
| [0017](adr/0017-living-memory-selective-memories-and-honest-recall.md) | Living Memory: ricordi selettivi, richiamo onesto, diario manuale |
| [0018](adr/0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md) | Relazioni: assi indipendenti, etichette come dati, NPC automatici, giocatori scelti dall'utente |
| [0019](adr/0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md) | Interlocutore e luogo: fonti in ordine di priorità, tendenze deboli, luoghi per uiMapID |
| [0020](adr/0020-simulated-dialogue-and-real-dialogue-npc-alive.md) | NPC Alive: un dialogo simulato non è un dialogo reale |
| [0021](adr/0021-story-arcs-micro-stories-without-game-effects.md) | Story Arcs: micro-storie che non toccano il gioco |

## Archivio

`archive/VociDiAzeroth*/` contiene il prototipo originale, conservato solo come riferimento storico. La sua guida ai pacchetti (`archive/VociDiAzeroth/FORMATO_PACCHETTI.md`) è **superata** da quella di `AzerothUnspoken/`.

## Convenzioni della documentazione

- In italiano; il README pubblico ha anche una versione inglese.
- File Markdown con fine riga LF ([ADR 0008](adr/0008-lf-line-endings.md)).
- I diagrammi sono in [Mermaid](https://mermaid.js.org/), che GitHub mostra direttamente.
- Una modifica che cambia un comportamento aggiorna anche la documentazione e il [CHANGELOG](../CHANGELOG.md) nella stessa PR.
- Ciò che non è stato provato nel client vero si dice esplicitamente.
