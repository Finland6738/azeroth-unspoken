# Documentazione di Azeroth Unspoken

Indice di tutto ciò che si trova in `docs/` e dei documenti collegati nella radice del progetto. **La fonte autorevole della documentazione è questa cartella**, versionata insieme al codice ([ADR 0013](adr/0013-wiki-github.md)).

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
| [AzerothUnspoken/FORMATO_PACCHETTI.md](../AzerothUnspoken/FORMATO_PACCHETTI.md) | formato dei pacchetti: frasi, eventi, condizioni, segnaposto, vocabolario, cornici, lingue |
| [CONTRIBUTING.md](../CONTRIBUTING.md) | come scrivere frasi buone (regole di qualità), pacchetti, test, stile, PR |
| `AzerothUnspoken_Example/` | pacchetto di esempio da copiare |

## Per chi sviluppa

| Documento | Contenuto |
|---|---|
| [ARCHITETTURA.md](ARCHITETTURA.md) | moduli e responsabilità, flusso di un evento, dati e SavedVariables, punti di estensione (con diagrammi Mermaid) |
| [adr/README.md](adr/README.md) | le decisioni di progetto (ADR), con indice |
| [RIFERIMENTI.md](RIFERIMENTI.md) | fonti tecniche per WoW Forever e il dump delle API |
| [../ROADMAP.md](../ROADMAP.md) | milestone, step, stato di avanzamento, note tra uno step e l'altro |
| [../CONTRIBUTING.md](../CONTRIBUTING.md) | regole di lavoro, test, stile Lua ed EmmyLua, git |

## Specifica di prodotto

| Documento | Contenuto |
|---|---|
| [Immersion_Director_GDD_v1.0.md](Immersion_Director_GDD_v1.0.md) | il Game Design Document. Il prodotto lì si chiama "Immersion Director"; oggi è **Azeroth Unspoken**. Dove GDD e roadmap non coincidono, vale la roadmap |

## Decisioni di progetto (ADR)

| N. | Decisione |
|---|---|
| [0001](adr/0001-motore-e-database-narrativo-separati.md) | Motore e database narrativo separati, con frasi curate e non generate |
| [0002](adr/0002-tutto-offline-senza-ia.md) | Tutto offline, senza intelligenza artificiale |
| [0003](adr/0003-narratore-privato-e-chat-gateway.md) | Narratore privato e Chat Gateway |
| [0004](adr/0004-total-rp-3-facoltativo-con-adattatore.md) | Total RP 3 facoltativo, con adattatore |
| [0005](adr/0005-compat-valori-segreti-ed-eventi-difensivi.md) | Compat, valori segreti, eventi difensivi |
| [0006](adr/0006-savedvariables-e-versioni-dello-schema.md) | SavedVariables e versioni dello schema |
| [0007](adr/0007-test-fuori-gioco-con-lupa-e-mock.md) | Test fuori dal gioco con lupa e mock |
| [0008](adr/0008-fine-riga-lf.md) | Fine riga LF |
| [0009](adr/0009-flusso-git-branch-pr-squash.md) | Flusso git: branch, PR, squash merge |
| [0010](adr/0010-dump-api-di-forever-come-riferimento.md) | Dump delle API di Forever come riferimento |
| [0011](adr/0011-nome-azeroth-unspoken.md) | Il nome Azeroth Unspoken |
| [0012](adr/0012-lingue-scelte-dall-utente.md) | Lingue scelte dall'utente |
| [0013](adr/0013-wiki-github.md) | La wiki di GitHub |
| [0014](adr/0014-bus-di-eventi-normalizzati-e-moduli-isolati.md) | Bus di eventi, moduli isolati, Director |
| [0015](adr/0015-narrative-director-un-intervento-per-momento.md) | Narrative Director: un intervento per momento, peso W, stile |

## Archivio

`archive/VociDiAzeroth*/` contiene il prototipo originale, conservato solo come riferimento storico. La sua guida ai pacchetti (`archive/VociDiAzeroth/FORMATO_PACCHETTI.md`) è **superata** da quella di `AzerothUnspoken/`.

## Convenzioni della documentazione

- In italiano; il README pubblico ha anche una versione inglese.
- File Markdown con fine riga LF ([ADR 0008](adr/0008-fine-riga-lf.md)).
- I diagrammi sono in [Mermaid](https://mermaid.js.org/), che GitHub mostra direttamente.
- Una modifica che cambia un comportamento aggiorna anche la documentazione e il [CHANGELOG](../CHANGELOG.md) nella stessa PR.
- Ciò che non è stato provato nel client vero si dice esplicitamente.
