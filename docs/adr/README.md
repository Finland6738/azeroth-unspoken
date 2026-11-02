# Project decisions (ADRs)

This is where the architecture and method decisions of Azeroth Unspoken are recorded, one per file, in the [MADR](https://adr.github.io/madr/) format in English: **context**, **decision**, **alternatives considered**, **consequences**.

They exist to remember *why* the project is built a certain way, not only *how*. When a decision changes it is not rewritten: a new one is written that supersedes the old one, and the old one moves to the "superseded" status.

## Index

| No. | Decision | Status |
|---|---|---|
| [0001](0001-engine-and-narrative-database-separated.md) | Engine and narrative database kept separate, with curated rather than generated lines | accepted |
| [0002](0002-fully-offline-no-ai.md) | Fully offline, no artificial intelligence | accepted |
| [0003](0003-private-narrator-and-chat-gateway.md) | Private narrator and Chat Gateway: nothing is sent without a player action | accepted |
| [0004](0004-total-rp-3-optional-with-adapter.md) | Total RP 3 optional, through an adapter | accepted |
| [0005](0005-compat-secret-values-and-defensive-events.md) | Compat, secret values and defensive event registration | accepted |
| [0006](0006-savedvariables-and-schema-versions.md) | SavedVariables and schema versions | accepted |
| [0007](0007-offline-tests-with-lupa-and-mock.md) | Offline tests with lupa and a mock client | accepted |
| [0008](0008-lf-line-endings.md) | LF line endings in all text files | accepted |
| [0009](0009-git-flow-branch-pr-squash.md) | Git flow: one branch per step, pull request, squash merge | accepted |
| [0010](0010-forever-api-dump-as-reference.md) | The Forever API dump as a reference, never copied | accepted |
| [0011](0011-name-azeroth-unspoken.md) | The name Azeroth Unspoken | accepted |
| [0012](0012-languages-chosen-by-user.md) | Languages chosen by the user, independent of the client | accepted |
| [0013](0013-github-wiki.md) | The GitHub wiki: a player's manual generated from `docs/wiki/` | accepted (revised by W1) |
| [0014](0014-normalized-event-bus-and-isolated-modules.md) | Normalized event bus, isolated modules and the Director as the hook point | accepted |
| [0015](0015-narrative-director-one-intervention-per-moment.md) | Narrative Director: one intervention per moment, multiplicative weights, style that weighs but does not exclude | accepted |
| [0016](0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md) | Character Soul: opt-in traits as data, soft affinity and hard filters, Total RP 3 with consent | accepted (amended by ADR 0031) |
| [0017](0017-living-memory-selective-memories-and-honest-recall.md) | Living Memory: selective memories, honest recall, manual journal | accepted |
| [0018](0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md) | Relationships: independent axes, labels as data, automatic NPCs, players chosen by the user | accepted |
| [0019](0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md) | Interlocutor and place: sources in priority order, weak tendencies, places by uiMapID | accepted |
| [0020](0020-simulated-dialogue-and-real-dialogue-npc-alive.md) | NPC Alive: a simulated dialogue is not a real dialogue | accepted |
| [0021](0021-story-arcs-micro-stories-without-game-effects.md) | Story Arcs: micro-stories that do not touch the game | accepted |
| [0022](0022-automatic-rules-ci-docs-check-and-wiki-sync.md) | Automatic rules: CI, a docs check and the wiki sync | accepted |
| [0023](0023-english-first-addon-and-english-command-names.md) | English first: the addon starts in English and command names are always English | accepted |
| [0024](0024-selection-index-compact-registry-and-bounded-memory.md) | Selection index, compact in-memory registry and bounded anti-repetition memory | accepted |
| [0025](0025-language-and-regional-packs-loaded-on-demand.md) | Language packs and regional packs loaded on demand | accepted |
| [0026](0026-player-records-user-choices-apart-from-observations.md) | Player records: what the user chose is kept apart from what the addon observed | accepted |
| [0027](0027-sqlite-authoring-archive-and-exporter.md) | SQLite authoring archive, exporter to the pack folders and coverage reports | accepted |
| [0028](0028-world-variables-weather-day-subzones-quests-reputation-rest-and-flight.md) | World variables: weather, day and night, subzones, quests, reputation, rest and flight | accepted |
| [0029](0029-specificity-tiers-themes-motifs-and-category-quotas.md) | Specificity tiers, themes and motifs, and per-session category quotas | accepted |
| [0030](0030-proximity-session-proposal-and-account-shared-list.md) | Proximity as a session proposal, and a list of people shared by the account's characters | accepted |
| [0031](0031-intensity-traits-emotional-state-and-the-tone-of-a-return.md) | Intensity traits, an emotional state with decay, and the tone of a return | accepted |
| [0032](0032-monologues-of-whole-phrases-and-composite-situations.md) | Monologues of whole phrases, and composite situations of the Director | accepted |
| [0033](0033-keys-shared-between-packs-refused-unless-overridden.md) | Keys shared between packs: refused, unless the pack says `override = true` | accepted |
| [0034](0034-licensing-gpl-code-reserved-phrases.md) | Licensing: GPL code, reserved phrases, MIT pack template, CC BY documentation | accepted |
| [0035](0035-attacks-kills-and-deaths-without-the-combat-log.md) | Attacks, kills and deaths without the combat log: threat, blows and two new unit events | proposed (to confirm in game, #212) |
| [0036](0036-npc-temperament-visible-levels-and-the-first-meeting.md) | NPC temperament, visible levels and the first meeting | accepted |
| [0037](0037-romance-with-npcs-opposite-sex-and-the-vow.md) | Romance with NPCs: opposite sex only, slow attraction and a private vow | accepted |
| [0038](0038-promises-oaths-and-the-oathbreaker-mark.md) | Promises, oaths and the oathbreaker mark | accepted |
| [0039](0039-favours-and-nicknames.md) | Favours the game can check, and nicknames from curated lists | accepted |
| [0040](0040-local-reputation-word-titles-and-rivals.md) | Local reputation: word gets around, honorary titles and NPC rivals | accepted |
| [0041](0041-hostility-grudges-betrayal-witnesses-and-guest-right.md) | Hostility: lasting grudges, betrayal, witnesses and guest-right | accepted |
| [0042](0042-literary-forms-category-pacing-line-breaks-and-long-reading.md) | Literary forms: a category paced on its phrases, line breaks kept in private, long reading in the narrator | accepted |
| [0043](0043-literary-metadata-genre-matrix-interchangeable-stanzas-and-pieces-in-the-archive.md) | Literary metadata, the genre x situation matrix, interchangeable stanzas (the one exception to ADR 0001) and pieces in the archive | accepted |
| [0044](0044-songbook-recall-and-reading-frames-and-the-culture-of-origin.md) | The songbook, recall and reading frames, and the culture of origin chosen by hand | accepted |
| [0045](0045-nemesis-arcs-told-for-many-npcs-killed-by-and-the-song-of-a-fall.md) | Nemesis: arcs told for many NPCs, who killed the character, and the song of a fall | accepted |

## Pending decisions

- [0035](0035-attacks-kills-and-deaths-without-the-combat-log.md): the detection recipe for attacks, kills, deaths and witnesses (N0, #212). It is accepted, changed or rejected after the owner runs section N0 of the in-game checklist.

## How to write a new one

1. Copy the skeleton below into `docs/adr/NNNN-short-title.md`, with the next number (the file name slug is in English).
2. Write it **before or together with** the change that justifies it, not months later.
3. Add it to the index in this file.
4. If it supersedes a previous decision, change the status of that one to "superseded by NNNN" and say so in the new one.

```markdown
# NNNN. Title: the decision in one sentence

- Status: proposed | accepted | superseded by NNNN
- Date: YYYY-MM-DD

## Context

The problem, the constraints and the forces at play.

## Decision

What is done, in the active voice.

## Alternatives considered

- **Alternative A.** Why not.
- **Alternative B.** Why not.

## Consequences

- Positive: …
- Negative or costs: …

## References

Files, issues, GDD sections, other ADRs.
```

ADRs describe the code **as it is on `main`** and what the roadmap plans. What has not yet been tested in the real client is marked as such.
