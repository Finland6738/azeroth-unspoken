# Azeroth Unspoken Documentation

Index of everything in `docs/` and of the related documents in the project root. **The authoritative source of the documentation is this folder**, versioned together with the code ([ADR 0013](adr/0013-github-wiki.md)).

**The documentation is in English**, except for two files, which are in Italian:

- [G1_checklist.md](G1_checklist.md): the in-game checklist for the Italian-speaking tester;
- [Immersion_Director_GDD_v1.0.md](Immersion_Director_GDD_v1.0.md): the original design spec, a historical source.

The documentation describes only what exists on `main` or is planned in [ROADMAP.md](../ROADMAP.md); the planned parts are marked as such.

## For those who use the addon

| Document | Contents |
|---|---|
| [README.md](../README.md) (English) · [README.it.md](../README.it.md) (Italian) | what it does, requirements, installation, first start, commands, settings, privacy, Total RP 3 |
| [wiki/](wiki/Home.md) → [GitHub wiki](https://github.com/Finland6738/azeroth-unspoken/wiki) | the player's manual, in English: one page per feature, every command and setting, privacy, troubleshooting, FAQ, glossary, bug reports and feedback. `docs/wiki/` is its only source; `tools/sync_wiki.py` publishes it |
| [G1_checklist.md](G1_checklist.md) (in Italian) | checklist for testing the addon in the real client (spikes SP-01…SP-05) |
| [CHANGELOG.md](../CHANGELOG.md) | notable changes by version |

## For those who write phrases and packs

| Document | Contents |
|---|---|
| [AzerothUnspoken/PACK_FORMAT.md](../AzerothUnspoken/PACK_FORMAT.md) | pack format: phrases, events, conditions, placeholders, vocabulary, frames, languages |
| [CONTRIBUTING.md](../CONTRIBUTING.md) | how to write good phrases (quality rules), packs, tests, style, PRs, and the language policy |
| `AzerothUnspoken_Example/` | example pack to copy |

## For developers

| Document | Contents |
|---|---|
| [ARCHITECTURE.md](ARCHITECTURE.md) | modules and responsibilities, flow of an event, data and SavedVariables, extension points (with Mermaid diagrams) |
| [adr/README.md](adr/README.md) | the project decisions (ADRs), with an index |
| [REFERENCES.md](REFERENCES.md) | technical sources for WoW Forever and the API dump |
| [../ROADMAP.md](../ROADMAP.md) | milestones, steps, progress status, notes between one step and the next |
| [../CONTRIBUTING.md](../CONTRIBUTING.md) | working rules, tests, Lua and EmmyLua style, git |

## Product specification

| Document | Contents |
|---|---|
| [Immersion_Director_GDD_v1.0.md](Immersion_Director_GDD_v1.0.md) (in Italian) | the Game Design Document. The product is called "Immersion Director" there; today it is **Azeroth Unspoken**. Where the GDD and the roadmap disagree, the roadmap wins |

## Project decisions (ADRs)

| No. | Decision |
|---|---|
| [0001](adr/0001-engine-and-narrative-database-separated.md) | Engine and narrative database kept separate, with curated rather than generated lines |
| [0002](adr/0002-fully-offline-no-ai.md) | Fully offline, no artificial intelligence |
| [0003](adr/0003-private-narrator-and-chat-gateway.md) | Private narrator and Chat Gateway |
| [0004](adr/0004-total-rp-3-optional-with-adapter.md) | Total RP 3 optional, through an adapter |
| [0005](adr/0005-compat-secret-values-and-defensive-events.md) | Compat, secret values, defensive events |
| [0006](adr/0006-savedvariables-and-schema-versions.md) | SavedVariables and schema versions |
| [0007](adr/0007-offline-tests-with-lupa-and-mock.md) | Offline tests with lupa and a mock |
| [0008](adr/0008-lf-line-endings.md) | LF line endings |
| [0009](adr/0009-git-flow-branch-pr-squash.md) | Git flow: branch, PR, squash merge |
| [0010](adr/0010-forever-api-dump-as-reference.md) | The Forever API dump as a reference |
| [0011](adr/0011-name-azeroth-unspoken.md) | The name Azeroth Unspoken |
| [0012](adr/0012-languages-chosen-by-user.md) | Languages chosen by the user |
| [0013](adr/0013-github-wiki.md) | The GitHub wiki: a player's manual generated from `docs/wiki/` |
| [0014](adr/0014-normalized-event-bus-and-isolated-modules.md) | Event bus, isolated modules, Director |
| [0015](adr/0015-narrative-director-one-intervention-per-moment.md) | Narrative Director: one intervention per moment, weight W, style |
| [0016](adr/0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md) | Character Soul: opt-in traits, soft affinity and hard filters, Total RP 3 with consent |
| [0017](adr/0017-living-memory-selective-memories-and-honest-recall.md) | Living Memory: selective memories, honest recall, manual journal |
| [0018](adr/0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md) | Relationships: independent axes, labels as data, automatic NPCs, players chosen by the user |
| [0019](adr/0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md) | Interlocutor and place: sources in priority order, weak tendencies, places by uiMapID |
| [0020](adr/0020-simulated-dialogue-and-real-dialogue-npc-alive.md) | NPC Alive: a simulated dialogue is not a real dialogue |
| [0021](adr/0021-story-arcs-micro-stories-without-game-effects.md) | Story Arcs: micro-stories that do not touch the game |
| [0022](adr/0022-automatic-rules-ci-docs-check-and-wiki-sync.md) | Automatic rules: CI, a docs check and the wiki sync |

## Archive

`archive/VociDiAzeroth*/` contains the original prototype, kept only as a historical reference. Its pack guide (`archive/VociDiAzeroth/FORMATO_PACCHETTI.md`) is **superseded** by the one in `AzerothUnspoken/`.

## Documentation conventions

- Written in English (see the "Language" section of [CONTRIBUTING.md](../CONTRIBUTING.md#language)); the only exceptions are the two Italian files listed at the top. The public README also has an Italian version (`README.it.md`).
- Markdown files with LF line endings ([ADR 0008](adr/0008-lf-line-endings.md)).
- Diagrams are in [Mermaid](https://mermaid.js.org/), which GitHub renders directly.
- A change that alters a behavior also updates the documentation, the player's manual in `docs/wiki/` and the [CHANGELOG](../CHANGELOG.md) in the same PR.
- The manual in `docs/wiki/` is for players: no developer content and no personal data. Pages link to each other with `[[Text|Page-Name]]`; `Tests/check_docs.py` checks the links and the content.
- What has not been tested in the real client is stated explicitly.
