# Azeroth Unspoken Documentation

Index of everything in `docs/` and of the related documents in the project root. **The authoritative source of the documentation is this folder**, versioned together with the code ([ADR 0013](adr/0013-github-wiki.md)).

**The documentation is in English**, except for two files, which are in Italian:

- [G1_checklist.md](G1_checklist.md): the in-game checklist for the Italian-speaking tester (the English counterpart [G1_checklist.en.md](G1_checklist.en.md) covers the sections R0, R1, R3a, R3b, R4b, R4b2, R4 and R3c);
- [Immersion_Director_GDD_v1.0.md](Immersion_Director_GDD_v1.0.md): the original design spec, a historical source.

The documentation describes only what exists on `main` or is planned in [ROADMAP.md](../ROADMAP.md); the planned parts are marked as such.

## For those who use the addon

| Document | Contents |
|---|---|
| [README.md](../README.md) (English) · [README.it.md](../README.it.md) (Italian) | what it does, requirements, installation, first start, commands, settings, privacy, Total RP 3 |
| [wiki/](wiki/Home.md) → [GitHub wiki](https://github.com/Finland6738/azeroth-unspoken/wiki) | the player's manual, in English: one page per feature, every command and setting, privacy, troubleshooting, FAQ, glossary, bug reports and feedback. `docs/wiki/` is its only source; `tools/sync_wiki.py` publishes it |
| [G1_checklist.md](G1_checklist.md) (in Italian) | checklist for testing the addon in the real client (spikes SP-01…SP-05, and the R0 measurements and API probe) |
| [G1_checklist.en.md](G1_checklist.en.md) | the English counterpart of the R sections of the checklist (R0 measurements with `/au prof` and API probe with `/au probe`, R1, R3a, R3b, R4b, R4b2, R4, R3c), in English |
| [CHANGELOG.md](../CHANGELOG.md) | notable changes by version |

## For those who write phrases and packs

| Document | Contents |
|---|---|
| [AzerothUnspoken/PACK_FORMAT.md](../AzerothUnspoken/PACK_FORMAT.md) | pack format: phrases, events, conditions, placeholders, vocabulary, frames, languages |
| [CONTRIBUTING.md](../CONTRIBUTING.md) | how to write good phrases (quality rules), packs, tests, style, PRs, and the language policy |
| `AzerothUnspoken_Example/` | example pack to copy |
| `AzerothUnspoken_Versi/` | prototype pack of literary forms (inscriptions, songs, rhymes); its editorial rules are in [CONTRIBUTING.md](../CONTRIBUTING.md#literary-forms) |

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

The full list, with the status of each decision, is the index in [adr/README.md](adr/README.md); it is not copied here so that the two cannot drift apart.

## Archive

`archive/VociDiAzeroth*/` contains the original prototype, kept only as a historical reference. Its pack guide (`archive/VociDiAzeroth/FORMATO_PACCHETTI.md`) is **superseded** by the one in `AzerothUnspoken/`.

## Documentation conventions

- Written in English (see the "Language" section of [CONTRIBUTING.md](../CONTRIBUTING.md#language)); the only exceptions are the two Italian files listed at the top. The public README also has an Italian version (`README.it.md`).
- Markdown files with LF line endings ([ADR 0008](adr/0008-lf-line-endings.md)).
- Diagrams are in [Mermaid](https://mermaid.js.org/), which GitHub renders directly.
- A change that alters a behavior also updates the documentation, the player's manual in `docs/wiki/` and the [CHANGELOG](../CHANGELOG.md) in the same PR.
- The manual in `docs/wiki/` is for players: no developer content and no personal data. Pages link to each other with `[[Text|Page-Name]]`; `Tests/check_docs.py` checks the links and the content.
- What has not been tested in the real client is stated explicitly.
