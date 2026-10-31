# Azeroth Unspoken: development roadmap

**Name:** Azeroth Unspoken
**Motto:** *An immersive roleplay companion for World of Warcraft*
**Short description:** An immersive narrative companion for World of Warcraft, distinctive and mysterious, that recalls unspoken thoughts and stories.

The reference specification is [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md) (in Italian).
In place of "Immersion Director", the product is called **Azeroth Unspoken**.
Where the GDD and this file disagree, this file prevails.

## Starting state (before step S1)

- The working prototype was called `VociDiAzeroth/`, now archived in `archive/VociDiAzeroth/` (separate engine and database, 374 IT/EN lines).
  - Engine: `Core.lua`, `Engine.lua`, `Context.lua`, `Events.lua`, `UI.lua`.
  - Data: `Data/*.lua`. Format described in `archive/VociDiAzeroth/FORMATO_PACCHETTI.md`.
  - Example pack: `archive/VociDiAzeroth_Esempio/`.
  - Already in place:
    - weighted selection with specificity, usage and tone;
    - mandatory exclusion of recent lines;
    - memory saved between sessions;
    - declarative conditions, with `not`, `any` and `func`;
    - placeholders `{target}` `{player}` `{spell}` `{zone}`, gender `{g:m|f}`, vocabulary and frames;
    - language chosen by the user;
    - `/voci` commands, settings panel, "speak" button and key.
- `Data/Classes.lua` (now in `AzerothUnspoken/Data/`): 54 class lines already written, **not yet in the `.toc`** and untested. They must be reused in step S3/S7.
- The offline tests (run outside the game) use lupa, that is Lua 5.1 like WoW:
  - files: `Tests/run_tests.py` and `Tests/MockWoWAPI.lua`;
  - local venv in the project root, outside version control: `python -m venv .venv`, then `.venv\Scripts\pip install lupa`;
  - command, from the project root: `.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`. With no argument, `AzerothUnspoken` is used.
- Target client:
  - `<WoW>\_forever_` (build 1.60.1.70658, `## Interface: 16001`, English client, `WOW_PROJECT_ID == WOW_PROJECT_CAMELOT`);
  - addons installed in `...\_forever_\Interface\AddOns`. `totalRP3`, `Details` and `QuestIT` are already there, useful as an API reference.
- The `SpeakinSpell*` folders are the original addon for retail. They served only as a reference and are not part of the repository.

## Decisions already taken

1. The engine and the narrative database stay separate.
   - The database contains whole, curated lines, never fragments combined at random.
   - It is multilingual (IT and EN, expandable) and the language is chosen in the settings, independently of the client.
2. Everything works offline: no network, external API or AI. It is expanded with local packs.
3. **No automatic publishing** to public chat as the default behavior: the private narrator and the Chat Gateway are used (§7.7 of the GDD). The prototype's automatic emotes become proposals.
4. The client's protections are respected:
   - /say and /yell only after a player action;
   - no decision based on secret values;
   - every event is registered defensively.
5. Total RP 3 is optional: the addon works 100% even without it.
6. Original literary style, in the spirit of epic fantasy and the tone of Warcraft, with no copied quotations. Registers and "four voices" as in §5 of the GDD.
7. Steps are run **one at a time**, each in a separate session, because they touch the same files.
8. The project lives in this git repository (remote `https://github.com/Finland6738/azeroth-unspoken`, `gh` authenticated).
   The user has authorized **automatic** commits, pushes and merges, without asking for confirmation: the PC is unattended.

## Rules for every step session

### Git flow (mandatory, automatic)

1. Each step works on its own branch (`step/sN-name`), started from an up-to-date `main`.
2. Small, readable commits during the work, with messages in English.
3. At the end, with the tests passing:
   - `git push -u origin <branch>`;
   - `gh pr create --base main`, with a title and description that summarize the step and what was not verified (the PR template has the checklist);
   - wait for CI to be green (`gh pr checks <number> --watch`);
   - `gh pr merge --squash --delete-branch`, without asking for confirmation.
4. After the merge, update the installation in `AddOns` with the files from `main`.
5. Never `--force` on `main`, never rewrite already published history, never skip the hooks.
6. If the merge fails because of conflicts: align the branch with `main`, resolve, repeat the tests and then merge.
   If that does not work, leave the PR open and explain the problem in the report.

### Documentation and CI rules (task R1, [ADR 0022](docs/adr/0022-automatic-rules-ci-docs-check-and-wiki-sync.md))

- **Every step or fix PR updates, in the same PR:**
  1. `CHANGELOG.md` (the "Unreleased" section, in the group of the step or fix);
  2. the affected documents: `docs/ARCHITECTURE.md`, an ADR (and the index) if a decision changed, `AzerothUnspoken/PACK_FORMAT.md` if the pack API changed, `README.md` and `README.it.md`, `docs/G1_checklist.md` if the behavior needs confirmation in game;
  3. **the affected wiki pages in `docs/wiki/`** for any user-visible change (commands, settings, defaults, behavior, privacy, troubleshooting).
- **The wiki is never edited on GitHub.** `docs/wiki/` is the only source; the workflow `Wiki sync` publishes it on every merge to `main` that changes `docs/wiki/` (or by hand: Actions > Wiki sync > Run workflow). A change made in the browser is overwritten.
- **CI must be green before merging.** The workflow `CI` (job `Tests`) runs the whole offline suite on every PR and on `main`; the workflow `Docs rule` (job `Docs rule`) fails a PR that changes `AzerothUnspoken/` or `AzerothUnspoken_Example/` without also changing `CHANGELOG.md` and at least one of `docs/` (wiki included), `README.md`, `README.it.md`, `AzerothUnspoken/PACK_FORMAT.md`. The label **`no-docs-needed`** skips the docs rule, only for pure refactors or tests. `main` is protected: both checks must pass, no force push, no deletion; no reviews are required.
- If CI fails, fix the cause and push again; never merge red, never skip a check, never disable the protection from a session.

### Language

- From L1 on, **English is the default language** of the project: documentation, ADRs, PR titles and descriptions, issues and commit messages are written in English.
- Code comments may stay as they are. Rewriting the existing code comments is out of scope: open an issue if you think it is worth doing.
- The in-game text stays bilingual (Italian and English), as decided in ADR 0012.
- Kept in Italian on purpose, because they are for the Italian-speaking user: `README.it.md`, the in-game checklist `docs/G1_checklist.md` and the original design spec `docs/Immersion_Director_GDD_v1.0.md` (the historical source).

### Installation and personal paths

- The addon is installed with `python tools/install_addon.py`: it deletes, copies again and compares byte by byte. `--check` only does the comparison.
- The path of the AddOns folder is personal and is **never written in the repository**. It lives in `tools/local.ini` (ignored by git, template in `tools/local.example.ini`) or in the `AU_ADDONS_DIR` variable.
- In the documents, write only neutral forms: `<WoW>\_forever_\...` and `../WoW-Addons` (the API dump next to the repository).
- No real name, email, account name or PC path in files, commits, PRs or issues. In the credits, use Finland6738.

### Work


- Read this file and the GDD sections indicated in the step.
- Work only on the assigned step and leave the rest in working order.
- At the end:
  1. make the offline tests pass, adding tests for what was built;
  2. update the installation in `AddOns`;
  3. update in this file the step's status line and the notes for the next step;
  4. update CHANGELOG, the affected docs and the affected wiki pages in `docs/wiki/` in the same PR (see "Documentation and CI rules");
  5. honestly report what was not verified, in particular everything that requires the real client.
- User's environment: JetBrains WebStorm with the **EmmyLua** and **WoW Lua Language Server** plugins.
  - Annotate with EmmyLua (`---@class`, `---@field`, `---@param`, `---@return`) the public APIs, modules and data structures (context, line, configuration, relationship), so that the IDE completes and type-checks.
  - Every new global variable of the addon (SavedVariables, `SLASH_*`, `BINDING_*`, key functions) must be added to `diagnostics.globals` in `.luarc.json`.
  - The WoW APIs are provided by the plugin: do not duplicate them in the project.
- Technical references: [docs/REFERENCES.md](docs/REFERENCES.md).
  - The Forever API dump (build 70170) is in `../WoW-Addons/docs/api.json`, with the definitions in `types/WowForeverAPI.lua`, linked by `.luarc.json`.
  - Before using a new function or event, check it there and then protect it with Compat.
  - Do not copy files from that repository into ours: it has no declared license.
  - If the local copy is missing: `git clone --depth 1 https://github.com/Atraeau/WoW-Addons ../WoW-Addons`.
- Do not use `%s`, `%l`, `%a` or `%w` in Lua patterns applied to UTF-8 text: with some locale settings they split accented letters. Use explicit classes.

## Milestones and steps

| Step | Milestone | Content | Model / effort | Status |
|---|---|---|---|---|
| S1 | M0 Foundations (v0.1) | Renaming, GDD architecture, Compat, diagnostics | Opus · high | done on 2026-10-28 (offline tests passed; real client not tested) |
| S2 | M0 | Private narrator, Chat Gateway, settings, wizard | Sonnet · high | done on 2026-10-29 (offline tests passed; real client not tested) |
| ✋ G1 | M0 | **User's in-game test**: spikes SP-01…SP-05, with `docs/G1_checklist.md` (in Italian) | user | **postponed**: the user is not available and asked to proceed autonomously (2026-10-29). To do on their return, together with G2 |
| S3 | M1 Narrative Alpha (v0.2) | Data schema v2, line migration, validator | Sonnet · high | done on 2026-10-29 (offline tests passed; real client not tested) |
| S4 | M1 | Narrative Director: intensity, pacing, priority, silence, StyleResolver | Opus · medium | done on 2026-10-29 (offline tests passed; real client not tested) |
| S5 | M1 | Character Soul (personality) and Total RP 3 adapter | Sonnet · high | done on 2026-10-29 (offline tests passed; real client and real TRP3 not tested) |
| S6 | M1 | Living Memory and Journal | Sonnet · high | done on 2026-10-29 (offline tests passed; real client not tested) |
| S6b | M1 | Relationships and affinity: automatic NPCs, people met, influence on the narrator | Sonnet · high | done on 2026-10-29 (offline tests passed; real client not tested) |
| S6c | M1 | Interlocutor (personality, actions, race, class, goals, role) and place (region, territory, dungeon/raid/BG/arena) | Opus · medium | done on 2026-10-29 (offline tests passed; real client, real TRP3 and place numbers not tested) |
| S7 | M1 | Alpha content: 300 intentions, at least 2 variants | Opus · high | done on 2026-10-29 (803 intentions, 1,711 variants per language; offline tests passed; in-game tone not tested) |
| ✋ G2 | M1 | **In-game test**: vertical slice A (arrival in the forest) and C (return) | user | to do |
| S8 | M2 Living NPC (v0.3) | NPC Alive: dialogue window, states, NPC register, archetypes | Sonnet · high | done on 2026-10-29 (169 IT/EN lines, 5 archetypes; closes #41 and #42; offline tests passed; real client not tested) |
| ✋ G3 | M2 | **In-game test**: vertical slice B (innkeeper), steps 75–83 of `docs/G1_checklist.md` | user | to do (postponed like G1 and G2) |
| S9 | M3 Personal Stories (v0.45) | Story Arcs with states and an evolved journal | Sonnet · high | done on 2026-10-29 (4 bilingual arcs, 33 IT/EN lines; offline tests passed; real client not tested) |
| S10 | M4 Social Beta (v0.5) | Social RP: addon protocol, consent, safety | Opus · high | to do |
| ✋ G4 | M4 | **Test with two clients** (SP-06) | user | to do |
| S11 | M5 Release (v1.0) | Content up to 1,000 intentions (also across several sessions) | Opus · high | to do |
| S12 | M5 | Polish: accessibility, profiling, manual, privacy, troubleshooting, DoD | Sonnet · medium | to do |

### Postponed in-game tests

By the user's decision (2026-10-29), development proceeds without waiting for G1. As a consequence:
- every new feature that depends on an API not yet tested in the client must be protected by Compat and must degrade gracefully (GDD §3.8);
- `docs/G1_checklist.md` must be updated by the steps that add behaviors to be verified in game;
- problems found in game will become issues with the `in-game` label.

### Cross-cutting activities

| Activity | Content | Model / effort | Status |
|---|---|---|---|
| D1 | Documentation: professional README, ADRs in `docs/adr/`, architecture, pack guide, CONTRIBUTING, CHANGELOG, evaluation of the GitHub wiki | Sonnet · high | done on 2026-10-29 (README it/en, 14 ADRs, architecture, CONTRIBUTING, CHANGELOG, `docs/README.md`; wiki: not used for now, ADR 0013; license to be chosen, issue #2; the S3 pack guide only needs to be linked) |
| D2 | Documentation aligned with M0–M3: README IT/EN, pack guide with examples tested by the tests as external packs (`Tests/check_docs.py`, which also checks relative links), architecture, per-step CHANGELOG, CONTRIBUTING, ADR 0006; closes #57, #58, #59 | Sonnet · high | done on 2026-10-29 (opens #69: an already registered key replaces the base data) |
| Q1 | Code and documentation review: bugs and improvements opened as GitHub issues, without changing the code | Opus · medium | to do |
| Qn | Fixing the most important `bug` issues, one session per group of related issues, between one step and the next | Sonnet · high | recurring. Q2 done: #3, #4, #5, #6, #8, #11, #12, #14, #17, #19 (2026-10-29; offline tests passed; to test in game: G1 steps 20–26). Q3 done: #26, #9, #21, #23, #13, #37, #38 (2026-10-29; offline tests passed; to test in game: G1 steps 69–74). Q5 done: #45, #46, #47, #48, #49, #50, #51, #52, #53, #54, #55, #56 (2026-10-29; offline tests passed; to test in game: G1 steps 93–98) |
| P1 | Privacy cleanup: author email and local paths removed from the files and from the git history (rewrite and force-push, coordinated when no step branch is open); noreply identity for every commit | main session | done on 2026-10-29: personal paths removed from the files (76c8064), noreply identity for future commits, install script with `tools/local.ini`. The git history **stays unchanged** by the user's choice |
| L1 | English as the default language of the project documentation: README.md in English (with README.it.md), ROADMAP, ADRs, architecture, pack format guide, CONTRIBUTING, CHANGELOG. From then on, PRs, issues and commits are in English. The user's in-game checklists also stay in Italian | Sonnet · high | done on 2026-10-29 (README.md in English with README.it.md and a "Support and feedback" section; ROADMAP, 21 ADRs with English slugs, `docs/ARCHITECTURE.md`, `docs/REFERENCES.md`, `AzerothUnspoken/PACK_FORMAT.md`, CONTRIBUTING, CHANGELOG, `docs/README.md` in English; language rule added; `docs/G1_checklist.md` and the GDD stay in Italian; existing code comments are not rewritten) |
| W1 | GitHub wiki: user manual in English, exhaustive and non-technical, written in `docs/wiki/` and published to the wiki. No sensitive data, no developer content. Includes a "Reporting bugs and feedback" page: issue forms (`.github/ISSUE_TEMPLATE/`) and the Feedback category of GitHub Discussions | Opus · medium | done on 2026-10-29: 21 pages plus sidebar and footer in `docs/wiki/`, `tools/sync_wiki.py`, wiki checks in `Tests/check_docs.py`, ADR 0013 revised. **Not yet published**: the wiki repository exists only after the owner creates the first page in the browser ([#76](https://github.com/Finland6738/azeroth-unspoken/issues/76)); then run `python tools/sync_wiki.py`. Mismatches found: [#77](https://github.com/Finland6738/azeroth-unspoken/issues/77) |
| R1 | Automatic rules: CI with the tests on every PR, a docs check that blocks a PR changing the addon without updating CHANGELOG and docs/wiki, wiki synced from `docs/wiki/` on every merge to main, PR template | Sonnet · high | done on 2026-10-29: workflows `CI` (job `Tests`), `Docs rule` and `Wiki sync` in `.github/workflows/`, `tools/check_pr_docs.py`, `Tests/check_rules.py` and `Tests/check_privacy.py`, PR template, label `no-docs-needed`, rules written in this file and in CONTRIBUTING, [ADR 0022](docs/adr/0022-automatic-rules-ci-docs-check-and-wiki-sync.md); branch protection on `main` requires `Tests` and `Docs rule` (see ADR 0022). The wiki repository already exists (#76 closed): the first run of `Wiki sync` on `main` is the first real proof that the workflow token can push to it |
| L0 | Literary forms prototype (issues #115, #116; tracking #131): pack `AzerothUnspoken_Versi` with 15 IT/EN pieces in private voices, manual event `lore_test`, editorial rules for literary forms in CONTRIBUTING | Opus · high | done on 2026-10-30 (offline tests passed, `Tests/check_versi.py`; real client not tested: the A/B judgement on one line with " / " versus real line breaks, steps 104–108 of `docs/G1_checklist.md`, decides #117) |
| R0 | Measure in game (tracking issue #131): `/au prof` (timings of `PickEntry` and `BuildContext`, addon memory, Director counters of the whole session; #81) and `/au probe` (weather, day and night, subzones, quests, reputation, flight, resting, secrets; AVAILABLE / MISSING / RESTRICTED and event counters; #82), with section R0 of the in-game checklist (`docs/G1_checklist.md`, English counterpart `docs/G1_checklist.en.md`) | Sonnet · high | tools done on 2026-10-30 (offline tests passed). **The measurements themselves are for the owner in the real client**: the decisions D3 (budget), D5 and D14 are taken on those numbers, and the table of confirmed APIs goes into `docs/` after the in-game run |
| R1 (scale) | Scale foundations, first part (tracking issue #131; not the cross-cutting R1 above): selection index by event and place (#83), compact in-memory format (#84), bounded anti-repetition memory and schema 7 (#86), synthetic archive and offline projection (`Tests/bench_scale.py`), [ADR 0024](docs/adr/0024-selection-index-compact-registry-and-bounded-memory.md) | Opus · high | done on 2026-10-30 (offline tests passed; same seeded picks as before the change). Projection at 50,000 entries: 4.1 ms per pick on average (p95 14 ms), 95 MB with two languages: the 40 MB target is not met yet. Language packs (#85) and regional packs (#101) done on 2026-10-30 in a separate session (see the next row); in-game numbers with `/au prof` decide D3 |
| R1 (packs) | Language packs (#85) and regional LoadOnDemand packs (#101), decision D4: one download with several folders (`AzerothUnspoken_enUS`, `AzerothUnspoken_itIT`, `AzerothUnspoken_Kalimdor`, `AzerothUnspoken_EasternKingdoms` and their texts per language), `Core/Packs.lua` loads only the chosen language and the continent of the character, outside combat; `Engine:DropPack`; [ADR 0025](docs/adr/0025-language-and-regional-packs-loaded-on-demand.md) | Opus · high | done on 2026-10-30 (offline tests passed). One language: 3.91 MB instead of 4.33 MB today, 75.6 MB instead of 94.1 MB at 50,000 entries; regions dropped when left (8 regions x 5,000 rules: 26 MB instead of 64 MB after visiting all). **Not tried in the client**: `LoadAddOn` and the change of continent, steps R1.1-R1.7 of `docs/G1_checklist.md`. Next: #138 (memory) |
| R2 | Authoring archive (#87) and coverage and gap reports (#88): `tools/archive/` (SQLite from the pack folders and the overlay `authoring/*.csv`, importer, exporter of the approved content, review flow `draft -> review -> approved -> retired`, search and `report` commands), round trip folders -> archive -> folders with an empty diff as a CI test, workflow `Content coverage` (thresholds reported, not blocking), [ADR 0027](docs/adr/0027-sqlite-authoring-archive-and-exporter.md) | Opus · high | done on 2026-10-30 (offline tests passed). 828 of the 1,030 intentions are archived (the rules of `base_arcs` and `base_dialogues` are code); report: 29 event x context cells under k = 10, 23 of 26 events with a best pool under 100 texts. The archive stays a transition (folders = approved content) until the owner decides stage 2. Next: R3 (dynamism); turning the code-generated packs into data |
| R3a | Selection quality: specificity tiers and the related-event fallback (#89), closed vocabularies of themes and motifs with a thematic memory of the session, voice alternation, openings and frames tied to register and theme (#90), per-session category quotas and hunger (#91), all 891 archived intentions labelled, `Tests/bench_m2.py`, [ADR 0028](docs/adr/0029-specificity-tiers-themes-motifs-and-category-quotas.md) | Opus · high | done on 2026-10-30 (offline tests passed). M2 on a simulated 3-hour session: same theme consecutively 7.7% -> 1.8%, "says"/"murmurs" frames 35.8% -> 8.1%, combat share 62.7% -> 34.9%; pick time at the level of R1. Quotas, hunger and novelty constants are hypotheses to tune with `/au prof` in game. Next: R3b (world: #92-#95, #121), labels for arcs and dialogues |
| R3b (world) | World variables, second part of R3 (tracking issue #131; issues #92, #93, #94, #95, #121): weather, day and night from the client with a fallback, subzone and landmark events, quests and reputation in the context, `rest_enter` and `journey`, the conditions `weather`, `dayTime`, `landmark`, `questActive`, `questReady`, `questJustCompleted`, `questAttemptsMin`, `repStanding`, `repDirection`, `onFlight`, `journey`, `journeyMin`, `Systems/World.lua`, `Data/Landmarks.lua`, 63 new IT/EN intentions, [ADR 0028](docs/adr/0028-world-variables-weather-day-subzones-quests-reputation-rest-and-flight.md) | Sonnet · high | done on 2026-10-30 (offline tests passed; the archive round trip is an empty diff). **Not tried in the client**: every API above (`/au probe`, #82), steps R3b.1-R3b.9 of `docs/G1_checklist.md`. Parallel work on selection (#89, #90, #91) is separate |
| R4b (players) | Player relationships, first part (tracking issue #131; issues #107, #108, #109, #106, #110, decisions D11-D14 in #130): player records with a `user` block (what the user chose, never written by the software) apart from a `seen` block (encounters by type, last facts, no text), `relationships.version` 2 with a migration, encounters counted only for people already in the list, feelings in words and the manual `ally` label, the `relation_player` event (once per person and session, silence allowed) and the conditions `relDaysSince`, `relMetHere`, `relShared`, [ADR 0026](docs/adr/0026-player-records-user-choices-apart-from-observations.md) | Sonnet · high | done on 2026-10-30 (offline tests passed). **Not tried in the client**: the roster scan, emotes with a recipient, map ids and the taller window, steps R4b.1-R4b.9 of `docs/G1_checklist.md`. Left for later: #111 (identity tests, by the owner), #112 (GUID); #113 and #114 are in R4b2 |
| R4b2 (players) | Player relationships, second part (tracking issue #131; issues #113, #114, decisions D11 and D12 in #130): **recognising people nearby** by nameplate and mouseover (off by default, session only, players already in the list or, with the TRP3 consent, a suggestion; never a record, never saved, no secret identity read; 60 s pause and 10 per session; the events are registered only while the option is on), and an **opt-in list shared by the account's characters** (`AzerothUnspokenDB.sharedPlayers`, off by default, a warning and two steps to turn on; the character's own choices win as a whole; `share all`, `share copy`, `scope`; turning it off deletes nothing), [ADR 0030](docs/adr/0030-proximity-session-proposal-and-account-shared-list.md) | Sonnet · high | done on 2026-10-31 (offline tests passed). **Not tried in the client**: nameplate and mouseover events and `UnitFullName` on their units, secret contexts, the 60 s and 10 limits, the taller window, steps R4b2.1-R4b2.11 of `docs/G1_checklist.md`. Left for later: #111, #112 (GUID), suggestions of a change of feeling (D13) |
| R4 (emotions) | Emotions and personality (tracking issue #131; issues #96, #97, #98; decisions D8 and D9 in #130): ten personality axes from 0 to 100 with graded affinity, threshold tags and `traitMin`/`traitMax`, the S5 choices derived from the axes, archetypes as presets, migration of saved profiles (`personality.version` 2), sliders; `Systems/Emotion.lua` with ten emotions, appraisal rules in `Data/Emotions.lua` modulated by the personality, decay by half-life, `ctx.emotion`, conditions `emotion`/`emotionMin`/`emotionMax`, the weight factor `E`, `/au emotion`, persistence of slow strong emotions only; the validator rule `lightReturnAfterBadVisit` and ten return lines fixed; 35 IT/EN intentions (`base_emotions`), [ADR 0031](docs/adr/0031-intensity-traits-emotional-state-and-the-tone-of-a-return.md) | Opus · high | done on 2026-10-31 (offline tests passed; the archive round trip is an empty diff; the seeded trace of a neutral profile is identical to `main`). Scenario M6 (return after a death): light return lines 9/40 -> 0/40 for a neutral character. **Not tried in the client**: steps R4.1-R4.6 of `docs/G1_checklist.md`; all emotion constants are offline proposals. Next: a Director rhythm that follows the mood, culture of origin (#124) |
| R3c (dynamism) | Monologues and composite situations, last part of the Dynamism milestone (tracking issue #131; issues #99, #100): a `monologue` content type (`kind`, `parts`, `order`) made of two or three whole phrases marked `chainable`, for the narrator and the inner voice only, one intervention for the Director; composite situations as data (`situations = {}` in `Data/Themes.lua`: `lead`, `with`, `withAny`, `within`, `when`), composed by `Director:Compose` from the candidates and the events of the last seconds, with the condition `situation` and the lines written for them tried first, merged candidates logged `merged`; validator rules, archive columns `kind`, `parts`, `part_order`, `chainable`; 8 monologues (23 parts) and 10 composite lines IT/EN, `Tests/TestDynamism.lua`, [ADR 0032](docs/adr/0032-monologues-of-whole-phrases-and-composite-situations.md) | Opus · high | done on 2026-10-31 (offline tests passed; the archive round trip is an empty diff; the seeded R1 trace is byte-identical to `main`). M2 on a simulated 3-hour session: a composite line about 5 times (5.9% of the interventions), a monologue about 0.8 times (1%); pick time unchanged (0.58 -> 0.55 ms). **Not tried in the client**: steps R3c.1-R3c.5 of `docs/G1_checklist.md`; the windows of the situations and the monologue penalty are offline proposals. Next: more monologues and situations through the archive |

### GitHub issues

- Labels: `bug`, `enhancement`, `docs`, `in-game` (to be verified in the client), `content` (lines), `good first issue`, `priority:high|medium|low`.
- Every issue gives the file and line, or the function, the expected behavior and the observed one, and how to reproduce it (offline test or in-game steps).
- Steps and fixes that resolve an issue close it from the PR (`Closes #N`). A session that finds a problem outside its own step opens an issue instead of widening the step.
### S1: rename and architecture (GDD §3, §11, §13, §14, §15)
- Create `AzerothUnspoken/` with the `Core/ Engine/ Systems/ Integration/ UI/ Data/` structure of §11.1, adapted: `Tests/` stays at the project root, outside the package.
  - Move the prototype's engine and database there without losing any function.
- `.toc`:
  - title "Azeroth Unspoken" and the motto in `## Notes`;
  - Interface 16001;
  - SavedVariables `AzerothUnspokenDB` (global) and `AzerothUnspokenCharacterDB` (per character), with `schemaVersion` and a migration function;
  - there is no need to migrate the data of `VociDiAzerothDB`: the prototype was never used in game.
- Commands `/unspoken` and `/au`: check that they do not conflict with the installed addons.
- `Core/Compat.lua`:
  - availability checks with `AVAILABLE`/`MISSING`/`RESTRICTED` status;
  - protected event registration;
  - wrapper for secret values;
  - `GetBuildInfo`.
- `Core/EventBus.lua`: normalized and deduplicated events, in the envelope format of §11.3.
- `Core/Config.lua`:
  - defaults of §11.4 (intensity 50, `literary` depth, modules, privacy, pacing);
  - recursive merge and validation.
- `Core/Diagnostics.lua` and `/au debug`: capability matrix, latest events, intercepted errors. This serves the SP-01/SP-02 spike.
- For the API checks, the sources of GDD §22 can be used, verified where possible against the files of the installed addons.
- Remove `VociDiAzeroth` and `VociDiAzeroth_Esempio` from `AddOns` and install `AzerothUnspoken`.
  - The example pack becomes `AzerothUnspoken_Example`.
  - The prototype's source folders stay in the project as an archive.
- **Done when:** the new addon has all the prototype's functions, the tests pass adapted to the new paths, `/au debug` produces a capability matrix and this file is updated.

#### Outcome of S1 and notes for S2
- **Where the code lives** (`AzerothUnspoken/`, load order in the `.toc`):
  - `Core/Bootstrap.lua`: the `NS` namespace (global `AzerothUnspoken`), languages, `NS:L`, `NS:Print`, `NS:RegisterModule(name)`. On `ADDON_LOADED` it calls, in order, `Config:Load`, `Compat:Probe`, `EventBus:Start` and then the `OnInit` of each module, isolated by `Diagnostics:Guard`.
  - `Core/Compat.lua`: `AVAILABLE`/`MISSING`/`RESTRICTED` states in `Compat.caps`; `Compat.Query(fn, ...)` (status plus values, secrets become nil), `SafeCall`, `IsSecret`, `Readable`; `RegisterEvent(frame, event, unit)` with `C_EventUtils.IsEventValid` and `pcall`; `GetBuildInfo` (recognizes `WOW_PROJECT_CAMELOT`); `IsRestricted(kind)` on `C_RestrictedActions`; `IsUnitIdentitySecret(unit)` on `C_Secrets`; `GetChatSender`, `InChatLockdown`, `GetSpellName`. These APIs appear in the code of the installed Details (`Details_Camelot.toc`) and TRP3, but none has been tested in the client.
  - `Core/Diagnostics.lua`: `Guard`, `Error` (at most 30, grouped), `Report`, `CapabilityMatrix`. Commands: `/au debug`, `/au debug full` (one line per capability, with the detail) and `/au debug trace` (prints every normalized event, for the session only).
  - `Core/Config.lua`: the defaults of §11.4 plus those of the prototype, `Merge`, `Validate` (types, lists, limits), `Migrate` by `schemaVersion` (`Config.SCHEMA_VERSION = 1`, `Config.migrations.global/character[n]`), `Get/Set` by path. `NS.db` = `AzerothUnspokenDB.settings` (account), `NS.cdb` = `AzerothUnspokenCharacterDB` (phrase memory, plus empty `personality`, `memories`, `arcs`, `history` for S5–S9).
  - `Core/EventBus.lua`: `Publish(type, context, {key, expect, fields, source})` creates the envelope `{type, timestamp, source, context, fields}`. It deduplicates by type and key, with `dedupWindow` (1 s by default, own windows for some types). It has a queue of 32 events for nested publications and discards those older than 5 s. You subscribe with `Subscribe(type or "*", owner, fn)`. WoW sources → types: `WORLD_ENTER`, `ZONE_ENTER`, `COMBAT_START/END`, `HEALTH_CHANGED`, `PLAYER_DEATH`, `PLAYER_REVIVE`, `LEVEL_UP`, `TARGET_CHANGED`, `SPELL_SENT`, `SPELL_CAST`, `RESTRICTION_CHANGED`.
  - `Core/ContextResolver.lua`: the prototype's `NS:BuildContext`. It uses Compat, skips the target's name if `C_Secrets` hides it, and takes the RP name from `Integration/TotalRP3.lua`.
  - `Engine/`: `PhraseRegistry` (RegisterPack, translations, statistics), `RuleEngine` (`when`), `WeightedSelector` (memory, weight, anti-repetition, `Pick`), `TemplateRenderer` (placeholders, vocabulary, frames). Logic unchanged. The only difference: the anti-repetition window is capped by `pacing.recentPhraseWindow` (30) instead of 40.
  - `Systems/Triggers.lua`: the reactions of the prototype's `Events.lua`, subscribed to the bus (probability, pauses, `NS:SetEventDefaults`). S4 replaces them with the Narrative Director.
  - `Integration/ChatGateway.lua`: the prototype's output (`NS:Perform`, pending phrase, `AzerothUnspoken_Speak`, `NS:Trigger`). **S2 turns it into the real Chat Gateway**: the `PRIVATE`/`PREVIEW`/`CONFIRM_TO_SEND`/`AUTO_ONLY_IF_ALLOWED` modes replace `output.mode`, with a schema migration to version 2.
  - `UI/SpeakButton.lua`, `UI/SettingsFrame.lua`, `UI/Commands.lua` (`/unspoken` and `/au`, with the same Italian and English subcommands as `/voci`). `Bindings.xml`: `AZEROTHUNSPOKEN_SPEAK`.
  - `Data/itIT/Interface.lua`, `Data/enUS/Interface.lua` (interface texts); `Data/*.lua` (374 phrases); `Data/Classes.lua` copied but **outside the `.toc`**: it loads without errors, 54 phrases, to be integrated in S3.
- **Choices S2 must know about:**
  - The language is `settings.locale` and uses the short code of the packs (`"it"`, `"en"`), not `"itIT"` as in §11.4. `Config:NormalizeLocale` also accepts `itIT`/`enUS`.
  - **Default output:** `output.mode = "self"`, that is, only a private preview in the local chat, and `output.autoPublicSay = false`. Compared with the prototype, nothing goes to public chat without a choice by the user. Even in an instance, `/say` fires on its own only with `autoPublicSay = true`. The `auto`/`emote` modes still publish automatic emotes, but only if the user chooses them: S2 must turn them into proposals.
  - The global cooldown is `pacing.globalCooldownSeconds` (45 s, previously 40). The "name from TRP3" option is `modules.totalRP3`. The button is in `settings.ui.showButton` and `settings.ui.buttonPos`.
  - The example pack now has `id = "example"`. The motto is in `## Notes`.
  - The `/au` command is not used by the installed addons (Details: `/details /dt /de`, TRP3: `/trp3`, QuestIT: `/qit`). It was not checked against Blizzard's internal commands.
- **Tests:** from the project root, `.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`. It exits with code 1 if a check fails. It covers the database, generation, anti-repetition, the absence of public chat with the defaults, the events → /say flow with the key, and the commands (including `/au debug`). It also runs `Tests/TestCompat.lua`, `TestConfig.lua` and `TestEventBus.lua`, each in a fresh runtime, with `T.run/T.eq/T.ok` defined in the mock. The mock has `MakeSecret()`, `SECRET_UNITS`, `RESTRICTIONS`, `VALID_EVENTS` (registering an unknown event gives an error) and `GetBuildInfo` = 1.60.1/70658/16001.
- **Not verified without the client** (to be tested in G1): actual loading of the `.toc` and of the SavedVariables (SP-01, SP-04); names, signatures and existence of the matrix events and APIs in build 70658 (SP-02); `debugstack`, the `Settings` panel, the button, the binding; actual behavior of secret values and restrictions; the real TRP3.

### S2: private narrator and Chat Gateway (GDD §4, §5.3, §7.7, §12)
- `UI/NarratorFrame.lua`:
  - discreet, non-blocking, movable panel;
  - adjustable duration, opacity and text size;
  - recent history;
  - immediate pause key.
- `Integration/ChatGateway.lua`:
  - modes `PRIVATE` (default), `PREVIEW`, `CONFIRM_TO_SEND`, `AUTO_ONLY_IF_ALLOWED`;
  - the phrase can be edited before sending;
  - the channel can be chosen (say, emote, party...);
  - flood protection;
  - never bypass the requirement of a player action.
- Every phrase has a `speaker`. Until schema v2 exists, the provisional rule is: `say` → the character's public voice, `emote` → narrator. In private mode it appears in the narrator with a label for the voice.
- Settings:
  - language, intensity (0–100), depth (Natural/Literary/Elevated), modules, chat mode, pause;
  - first-run wizard as in §12.1, skippable.
- The prototype's button and the "speak" key become the Chat Gateway's confirmation.
- **Done when:** with the default settings nothing is published to chat without a player action, the phrases appear in the private narrator and the tests cover the Chat Gateway modes.

#### Outcome of S2 and notes for S3
- **Where the code lives** (order in the `.toc`: `Integration\ChatGateway`, `Systems\Director`, `Systems\Triggers`, `UI\Widgets`, `UI\NarratorFrame`, `UI\SpeakButton`, `UI\Wizard`, `UI\SettingsFrame`, `UI\Commands`):
  - `Integration/ChatGateway.lua` (`NS.Gateway`):
    - modes `chat.mode`: `PRIVATE` (default), `PREVIEW`, `CONFIRM_TO_SEND`, `AUTO_ONLY_IF_ALLOWED`. `output.mode` no longer exists (schema migration 1 → 2: `self` → `PRIVATE`, any other value → `CONFIRM_TO_SEND`, `autoPublicSay` forced to `false`).
    - `PRIVATE`: narrator only, never proposals. `PREVIEW`: the public phrase becomes a proposal and the "speak" key opens the editor (send with Enter). `CONFIRM_TO_SEND`: the key or the button sends the proposal. `AUTO_ONLY_IF_ALLOWED`: only the emote fires on its own (anywhere) and `/say`/`/yell` in instances, and only with `output.autoPublicSay` (second consent, turned on by `Gateway:SetMode`); the rest stays a proposal.
    - The `inner` and `npc` voices never become proposals. The `publicChat` module turned off is equivalent to `PRIVATE`.
    - **Sending from a player gesture goes only through `Gateway:PlayerAction(fn)`** (click, key, command, Enter in the editor). `Gateway:Send` outside that scope refuses everything except `EMOTE` and, in an instance, `SAY`/`YELL` (reason `needs_action`): a timer or an event cannot send to public chat. New code that sends must go through `Gateway:Send`/`SendPending`.
    - Anti-flood: `chat.floodSeconds` (4) between two sends, `chat.maxPerMinute` (6), `chat.autoMaxPerMinute` (2). A proposal stays pending for `chat.pendingSeconds` (25); a new one replaces the old one. Text of at most 255 bytes (UTF-8 intact). It refuses when chat is locked down, when the channel is not available, and on a client error (logged in diagnostics, the proposal stays).
    - Entry points: `Gateway:Narrate(event, ctx, {auto, form, privateOnly})`, `Gateway:Propose(rec, ctx, opts)`, `Gateway:Confirm()` (= `AzerothUnspoken_Speak`, key and button), `Gateway:Improvise()`, `NS:Trigger(event, extra)`. `NS:Perform`, `NS:SetPending`, `NS:GetPending` and the `hw` parameter no longer exist.
  - `Engine`: `Engine:PickEntry(event, ctx, form)` returns `{ text, speaker, form, id, event }`; `Engine:Pick` returns only the text. The provisional `speaker` is assigned in `AddPhrase`: `say` → `character`, `emote` → `narrator`; a pack may specify it (`narrator`/`inner`/`character`/`npc`), unknown values fall back to the rule. A phrase spoken inside a frame is `narrator`. The 374 phrases are 354 spoken and 20 narrative.
  - `UI/NarratorFrame.lua` (`NS.Narrator`): `Present(rec)`, `Notice(text)`, `Clear`, `Refresh`, `OpenEditor`, `ToggleHistory`, `ShowTest`, `ApplySettings`, `ResetPosition`. The history is in memory only (`ui.narrator.historySize`, 30), never saved, and it is not `cdb.history`. With `output.privateNarrator = false`, or if the panel cannot be built, the phrases go to the local chat. Only the header and the buttons receive the mouse.
  - `Systems/Director.lua` (`NS.Director`) is **the hook point for S4**: `Director:Evaluate(event)` → `{ allow, chanceMul, cooldownMul }` or `{ allow = false, reason }`. Today: intensity 0 = silence for spontaneous events, probability = `intensity / 50`, pauses = `1.5 − intensity / 100`, events in `NS.BYPASS_GLOBAL` do not go below 1; immediate pause (`NS.paused`, session only); the `personal` and `world` modules, when turned off, filter the events (`Director.EVENT_MODULE`, default `personal`). `Triggers.lua` only calls `Evaluate`. S4 replaces its body (gate, budget, priority, `P`/`S` factors, then `R` in S6b) and may switch to `Gateway:PickRecord`/`Narrate`. Explicit requests (`/au saluto`, key, `Trigger`) ignore pause and intensity, as per GDD §4.2.
  - `Core/Config.lua`: `SCHEMA_VERSION = 2`; new sections `chat`, `ui.narrator`, `ui.wizardDone`; `Config.CHAT_MODES`, `CHAT_CHANNELS`, `presets`, `ApplyPreset`. `output.publicChatPreview` remains but does nothing (the switch is the `publicChat` module).
  - `UI/Wizard.lua`: 7 steps as in §12.1, the 6th only if `AddOn_TotalRP3` exists; "Skip" always available; it reopens with `/au benvenuto`. `UI/SettingsFrame.lua`: language, intensity, depth, pause between phrases, chat and channel, narrator (duration, opacity, text, lock, history, test), modules, immediate pause. Only `personal`, `world`, `publicChat` and `totalRP3` have an effect today; the other modules can be set but are marked with `*`.
  - New commands: `/au chat`, `canale`, `intensita`, `profondita`, `pausa`, `narratore [cronologia|reset|pulisci]`, `benvenuto`, `annulla`; `/au modo` is an alias of `/au chat`. New key in `Bindings.xml`: `AZEROTHUNSPOKEN_PAUSE` (`AzerothUnspoken_TogglePause`). `/au debug` also prints the `Chat Gateway` line.
- **What S3 must know:**
  - the depth (`proseDepth`) is saved and chosen in the wizard, but **no phrase uses it yet**: schema v2 must carry `depth` on the phrases and the context must expose `ctx.depth` (and perhaps `ctx.intensity`) for the conditions;
  - schema v2 must keep the `PickEntry` contract and the semantics of `speaker` (the Gateway uses `rec.form` to choose `/s` or `/e` and to display the text, and `rec.speaker` to decide whether it can go out to chat);
  - with only 20 narrative texts out of 374 the narrator almost always speaks with the character's voice: S3/S7 must balance the voices and really give texts to `inner`;
  - the validator should check the allowed `speaker` values;
  - the interface texts are in `Data/itIT/Interface.lua` and `Data/enUS/Interface.lua` (keys `gw_*`, `voice_*`, `wiz_*`, `chatmode_*`).
- **Tests** (from the project root: `.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): besides those of S1, `TestChatGateway.lua` (modes, editing, channels, flood, no send without an action for every combination of mode, form and voice), `TestNarrator.lua` (panel, duration, history, pause, editor, buttons, settings, wizard) and `TestDirector.lua` (intensity scale, pause, modules). `TestConfig.lua` covers the 1 → 2 migration. The mock now has widgets with state (`Show/Hide`, text, `Click()`, `TypeEnter()`, `UPDATE(dt)`, `FindWidgets`): lowercase fields are `nil`, uppercase methods do nothing.
- **Not verified without the client** (to be tested in G1, see `docs/G1_checklist.md` (in Italian)):
  - that `SendChatMessage` from a click, from an assigned key, from a typed command and from Enter in the edit box is really accepted for `/say` in the open world, and that the party, guild and instance channels work;
  - that the automatic emotes (`AUTO_ONLY_IF_ALLOWED` mode) are not blocked by the client and that `/say` in an instance fires without a gesture: the rule "emote always, `/say` only in an instance" is a cautious hypothesis, not a measurement;
  - the real look of the panel, of the `UIPanelButtonTemplate` buttons, of the text box (`InputBoxTemplate`, with fallback), of the history's `ScrollingMessageFrame`, dragging, clicks passing through the text, the fade;
  - the registration of the panel in the interface (`Settings.RegisterCanvasLayoutCategory`) and the space of the controls in two columns;
  - the key names in Options > Key Bindings and that the keys really give a hardware event;
  - saving the new settings and the panel's position across sessions.

### G1: in-game test (user)
The user runs spikes SP-01…SP-05 of the GDD following the checklist [docs/G1_checklist.md](docs/G1_checklist.md) (in Italian), written in step S2, and reports errors and the results of `/au debug`. **The following steps wait for this outcome.**

### S3: data schema v2 and validator (GDD §9)
- Rule registry separated from the texts:
  - `Data/Registry*.lua` for id, event, category, speaker, styles, depth, tags, weight, cooldown and conditions;
  - texts per language in `Data/itIT/`, `Data/enUS/`, with several variants per id.
- The pack API accepts the new format. The old format is converted on load or with a one-off script.
- Migrate the 374 phrases and `Classes.lua`:
  - assign speaker, register and depth phrase by phrase, with judgment;
  - the frames and the vocabulary stay, as variants.
- Validator (offline tests plus `/au validate`): duplicate ids, missing languages, mismatched placeholders, unknown conditions, empty variants, maximum length per channel.
- Update the pack format guide.
- Add `Tests/check_api.py`: it reads `../WoW-Addons/docs/api.json` (configurable path) and reports the functions and events used by the addon that are not in the dump. There are allowed exceptions for FrameXML, such as `Settings.*`. If the dump is not there, the test is skipped with a warning.

#### Outcome of S3 and notes for S4
- **What is there** (full guide: [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md)):
  - `Engine/PhraseRegistry.lua`: schema v2. A rule (`AUPhrase`) has `events`, `category`, `speaker`, `form`, `styles` (the first is `tone`), `depth`, `tags`, `weight`, `cooldown`, `when` (alias `conditions`) and `text[language] = { variants }`, with variants `{ t, ok, depth, pack }`. `Engine.byId` and `Engine.byEvent` as before.
  - Pack API: `RegisterPack{ registry, texts, events, styles, categories, conditions, languages, frames, vocab }`; `NS:AddTexts(language, map, pack)` (alias `AddTranslations`), `NS:RegisterEvent`, `RegisterStyle`, `RegisterCategory`, `RegisterCondition`. Texts for ids of other packs are added as variants; those that arrive before the rule wait. The old format (`phrases` with `it=`/`en=`/`tone`/`when`) is converted on load (`tone` → register, for example `eroico` → `epic`).
  - Data: `Data/Registry{Combat,Spells,Life,Exploration,Social,Classes}.lua` (rules), `Data/itIT/*.lua` and `Data/enUS/*.lua` (texts). The ids are the same as before. Vocabulary and frames stay in `Vocabulary.lua` and `Frames.lua` with `it=`/`en=` (also lists of variants). `Classes.lua` is in the `.toc`: 54 phrases.
  - Numbers: the roadmap's "374 phrases" were 367 base + 7 from the example pack; now there are 421 base (367 + 54) + 7 = **428**. Base voices: character 306, inner voice 96, narrator 19, NPC 0. Voice and register assignment was done phrase by phrase (thoughts and observations → `inner`; quips, threats, greetings → `character`; actions → `narrator`); depths are assigned with rules based on length and register and not phrase by phrase: they are to be reviewed in S7.
  - `Engine/Validator.lua` (`NS.Validator:Run{ packs }` → `{ errors, warnings, stats }`, `/au valida [tutto|pacchetto]`): duplicate ids, missing languages, mismatched placeholders (with fallback without placeholders), unknown or malformed conditions, empty variants, length per channel (255 bytes, worst case of the placeholders), UTF-8, voices/registers/depths/events. The base database has 0 errors and 0 warnings.
  - `Tests/check_api.py` (linked to `run_tests.py`): reads `../WoW-Addons/docs/api.json` (`--api` or `AU_API_JSON`), skips with a warning if it is missing. Justified exceptions for `Settings.*`, `InterfaceOptions*`, `GetSpellInfo` and `MouseIsOver` (issue #17).
- **What S4 must know:**
  - `ctx.depth` and `ctx.intensity` are in the context; the `depth`, `intensityMin`, `intensityMax` conditions work. The **S** factor of the weight is `Engine.StyleFactor(phrase, ctx)` (1 if the depth matches or is missing, `Engine.DEPTH_MISMATCH` = 0.3 otherwise; never an exclusion) and is already inside `Score`: S4's StyleResolver must **add the registers** (`p.styles`), not redo the depth.
  - `PickEntry` also returns `category`, `style` and `variant`. The categories are those of the events (`combat`, `spellcraft`, `life`, `exploration`, `reflection`, `social`): `Engine.events[event].category` and `Engine.CATEGORIES` for the budgets.
  - Contract unchanged: `rec.form` and `rec.speaker`. Only the `character` voice can be told in a frame; a thought (`inner`) goes out only in `say` form, and never becomes a chat proposal.
  - A malformed condition counts as "false" (`Engine.SafeMatch`); the selection is not interrupted.
  - Variants are not repeated back to back (`cdb.memory.variant`).
  - A language registered by a pack after loading stays the chosen one (closes issue #7).
- **Opened by S3:** #17 (`MouseIsOver`, `bug` `in-game`), #18 (few narrator texts, only one variant per phrase: `content`, for S7), #19 (255-byte limit duplicated between Gateway and validator, `enhancement`).
- **Tests:** `.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken` also runs `TestSchema.lua` (registry, variants, depth, conversion of the old format, extensions, languages) and `TestValidator.lua` (each check with a deliberately wrong pack, `/au valida`), the UTF-8/LF check of the files and `check_api.py`.
- **Not verified without the client** (added to `docs/G1_checklist.md`, steps 17–19): that the text files are read as UTF-8 (correct accents), that `/au valida` gives 428 phrases and 0 errors in the real client, that depth changes the feel of the texts. The absence of `MouseIsOver` and the rest of `check_api.py` refer to the dump (build 70170), not to build 70658.
### S4: Narrative Director (GDD §4.2, §5.2, §6, §10, §15)
- Opportunity gate driven by intensity; budget per category; priorities from §10; silence as a valid outcome; no message cascades.
- Weight `W = B × C × P × N × S`. The `P` (personality) and `S` (style) hooks start neutral and are filled in during steps S5 and S2/S3.
- StyleResolver: registers allowed per event, zone, voice and depth, with a neutral fallback.
- Suspension during demanding fights and invasive screens.
- Tests with a controlled RNG seed: distribution, cooldown, fallback, no duplicates within the window.

#### Outcome of S4 and notes for S5
- **Where the code lives** (order in the `.toc`: `Engine\StyleResolver` before `WeightedSelector`; `Engine\Pacing` and `Engine\NarrativeDirector` after `Validator`):
  - `Engine/NarrativeDirector.lua` (`NS.NarrativeDirector`): `PRIORITY` (explicit 5, dialogue 4, exceptional 3, memory 2, ambient 1), `EVENT_PRIORITY`, `Priority(event)`, `NS:SetEventPriority(event, level)`; `Scale(intensity)` (probability × intensity/50, pauses × (1.5 − intensity/100)); `Gate(event, ctx, now)` → `AUVerdict { allow, reason, chanceMul, cooldownMul, priority, category }`; `Roll` (die roll with `NS:GetChance`); `HighDemand(ctx)` (in combat with a boss, in a raid, elite in an instance); `Order`; hooks `SetRhythm(name, fn(event, ctx) → chanceMul, cooldownMul)` and `SetDemandCheck(name, fn(ctx) → bool)`.
  - `Engine/Pacing.lua` (`NS.Pacing`): `MOMENT` (4 s between any two interventions, explicit ones included), global pause (`pacing.globalCooldownSeconds`), `CATEGORY_COOLDOWN`, `NS.EVENT_COOLDOWN`, `BUDGET` per category in `WINDOW` (600 s) × intensity/50. Exceptional events skip the global pause, the category and the budget, but not the moment. State is in memory only (no migration). `Record`, `Note` (explicit: opens the moment, no budget), `Status`, `Reset`.
  - `Systems/Director.lua`: `Offer(event, extra)` queues; after `ARBITRATION` (0.1 s) `Resolve` tries the candidates in priority order (context → `Evaluate` → die roll → `Gateway:Narrate`): the first one that produces a line speaks, the others stay silent. `Evaluate(event, ctx)` is the gate (S2 shape unchanged, plus `priority`/`category`). `Director.log` and `Director:Status()` → **Narrative Director** row in `/au debug`. `Triggers.Fire` = `Director:Offer`.
  - `Engine/WeightedSelector.lua`: `W = B × C × P × N × S × R` in `Engine.Factors(entry, lastTone, ctx, profile)`; `Engine:Weight(phrase, event, ctx)` returns the breakdown. Hooks `Engine:SetWeightHook("C"|"P"|"R", name, fn(entry, ctx) → number ≥ 0)`: values for the same factor are multiplied, a failing one counts as 1 and goes to diagnostics, 0 excludes the phrase.
  - `Engine/StyleResolver.lua` (`NS.StyleResolver`): `Resolve(event, ctx)` → profile (`allowed` per event, `preferred` from `ctx.mood` and `ctx.depth`), `Affinity(phrase, profile)` (×0.5 outside the event, +25% per preference, counting the voice too, at most three), `Compatible(frameRegisters, phraseRegisters)` (frames with `styles` only with equal or close registers), `SetModifier(name, fn(profile, ctx))` with `StyleResolver.Prefer`. Pack API: `RegisterEventStyles`, `RegisterMoodStyles`.
  - `Core/Compat.lua`: `InvasiveScreen()` and the capabilities `api:InCinematic`, `api:IsInCinematicScene`. The mock has `InCinematic` (`P.cinematic`).
- **What S5 needs to know:**
  - personality enters the weight with `Engine:SetWeightHook("P", "soul", function(phrase, ctx) ... end)`: read the phrases' affinity tags (`phrase.tags`) and return a multiplier; for exclusive traits ("never contradicted") return **0**, which excludes the phrase;
  - temperament can shift the registers with `NS.StyleResolver:SetModifier("soul", function(profile, ctx) NS.StyleResolver.Prefer(profile, "ceremonial") end)` (GDD §5.2 example: merciful → solemn);
  - the context does not have the traits yet: expose them in `ctx` (for example `ctx.soul`) in `NS:BuildContext`, so that conditions and hooks read the same source;
  - the phrases and their `tags` come from S3: today no phrase has personality tags (S7 will write them);
  - do not touch `Systems/Director.lua` for personality: everything goes through the hooks.
- **For S6, S6b, S6c:** S6 registers memory recalls as events with `NS:SetEventPriority(event, "memory")`; S6b uses the `R` hook; S6c uses the `C` hook, `SetRhythm` (rhythm by instance type) and `SetDemandCheck` (`ENCOUNTER_START`; today a dungeon boss without a `worldboss` classification does not suspend the narrator).
- **Tests** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestNarrativeDirector.lua` (151 checks, fixed seed) plus the others; `TestDirector.lua` remains valid. Tests that expect a spontaneous phrase must let the arbitration window pass (`ADVANCE`).
- **Not verified without the client** (added to `docs/G1_checklist.md` (in Italian), steps 27–31): whether the rhythm feels pleasant (budgets and pauses are guesses), whether `InCinematic`/`IsInCinematicScene` exist and respond in build 70658, whether `CinematicFrame`/`MovieFrame` are the right frames, whether bosses and elites are recognized (`UnitClassification`).

### S5: Character Soul and Total RP 3 (GDD §7.1, §8)
- Opt-in traits: temperament, morality, curiosity, faith, motivation, irony, topics to avoid, inner voice. Ready-made archetypes and a neutral profile.
- Affinity tags on phrases; exclusive traits are never contradicted.
- Profile interface.
- TRP3 adapter:
  - reads only public data from the player's own profile, with consent;
  - disables itself if the APIs are missing or have changed;
  - priority: explicit choice > TRP3 > game data > neutral values.

#### Outcome of S5 and notes for S6, S6b, S6c
- **Where the code lives** (in the `.toc`: `Engine\Traits` before `Validator`; `Systems\Personality` before `Director`; `UI\ProfileFrame` before `SettingsFrame`; `Data\RegistrySoul` and the `Soul.lua` texts):
  - `Engine/Traits.lua` (`NS.Traits`), **the reusable model**: `Traits.Define{ id, kind = "choice"|"scale"|"set", values | min/max/bands, tag, exclusive }`; a profile is `{ [trait] = value }` with only the traits that are set (absent = "unknown"); `Sanitize`, `Copy`, `IsEmpty`, `IsSet`, `Has`, `Band`; `Merge(layers)` (for each trait the first layer that sets it wins, sets are merged); tags `ParseTag`/`CheckTag`/`Evaluate(tags, profile, scope)` → factor (0 = excluded); `RegisterScope(name)`; `Name`, `ValueName`, `Describe`, `ParseValue`, `Lower` (lowercase for ASCII only).
  - `Systems/Personality.lua` (`NS.Personality`): the eight traits (`temperament`, `morality`, `curiosity`, `faith`, `motivation`, `irony`, `avoid`, `innerVoice`), `archetypes` (`RegisterArchetype`), `Profile()` (saved data in `cdb.personality = { version, archetype, traits, trp3 }`), `Sanitize`, `Effective()` → `traits, sources` (`explicit` > `trp3` > `game` choice; cached, `Refresh()` invalidates it), `SetArchetype`, `SetTrait`, `ToggleTopic`, `Reset`, `SetTRP3Consent`, `RegisterGameLayer(name, fn)`, `Factor(phrase, ctx)` (the `P` factor), `ExcludedBy`, `Summary`, `Command`. It hooks `Engine:SetWeightHook("P", "soul", ...)`, `StyleResolver:SetModifier("soul", ...)` and the `soul` condition. `ctx.soul` = effective profile (shared table, read-only) in `NS:BuildContext`.
  - `Integration/TotalRP3.lua`: besides `GetFirstName`, `HasTraitConsent`, `ReadPsycho` (only `characteristics/PS` of the player's own profile, controlled shape) and `GetSoulTraits` (`PSYCHO_MAP` map + threshold from the center). Capability `integration:totalRP3:traits`. No other file touches TRP3.
  - `UI/ProfileFrame.lua` (`NS.ProfileFrame`: `Open`, `Close`, `Toggle`, `Refresh`), command `/au anima` (aliases `soul`, `personalita`, `profilo`), row in the settings panel.
  - `Data/RegistrySoul.lua` + `Data/itIT/Soul.lua` + `Data/enUS/Soul.lua`: pack `base_soul`, 16 example phrases. The base phrases (421) **do not have affinity tags yet**: S7 will write them.
  - SavedVariables **schema 3** (`Config.SCHEMA_VERSION`); character migration 3; `Validator` reports `badTag`.
- **Affinity tags** (in the rule's `tags`; without a colon they are descriptive): soft `trait:value` (×1.6 matches / ×0.6 other value / 1 not set, clamped to 0.15–3); `req:trait:value` (drops out only if the profile says so; even the neutral profile excludes it), `not:trait:value` and `topic:topic` are hard. Rule for S7: a phrase that **asserts** something about the character uses `req:`, one that merely says it in a certain tone uses soft affinity. With the inner voice off, `inner` phrases are excluded; irony weights `ironic` registers without `irony:` tags. Details in `PACK_FORMAT.md` and [ADR 0016](docs/adr/0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md).
- **What S6b (relationships) needs to know:** the axes are `Traits` scales (`Traits.Define{ id = "trust", kind = "scale", min = -100, max = 100, bands = ... }`); derived labels can use the bands. The `R` factor is free (S5 does not touch it): `Engine:SetWeightHook("R", ...)`. Merging several sources is `Traits.Merge`.
- **What S6c (interlocutor) needs to know:** the interlocutor's profile (`temperament`, `morality`, `goals`, `speech`) can reuse the S5 definitions (`Traits.defs.temperament`...) or add its own; tags that concern it are written with a scope (`Traits.RegisterScope("other")`, tag `other.temperament:gruff`) and evaluated with `Traits.Evaluate(phrase.tags, ctx.other_traits, "other")` inside the `C` hook. The Soul's "game data" layer is ready (`Personality:RegisterGameLayer`) but **empty**: race, faction and class do not decide character (GDD §5.4); S6c may add weak tendencies. Another player's public data needs a **separate consent** (ADR 0004): today the adapter never creates `Player` objects for others (`CreateFromCharacterID` is not called).
- **For S6:** nothing new; memory can read `ctx.soul` (for example a death memory is not recalled if `avoid.death`: the hard filter applies to every phrase with `topic:death`, but a memory recall that does not go through phrases must check `ctx.soul.avoid` itself).
- **Found and not fixed outside S5:** `string.lower` alters accented letters (UTF-8) with some locale settings (tested in lupa): `UI/Commands.lua` and `Core/ContextResolver.lua` use it on text that may contain them (aliases such as `intensità`); S5 uses `Traits.Lower`. Opened as issue #26. Another S5 issue: #27 (label the base phrases with affinity tags, for S7).
- **Tests** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestSoul.lua` (about 1,500 checks: trait model, neutral profile (P = 1 for every phrase without `req:`), archetypes, P factor and distribution with a fixed seed, hard filters with 40 seeds and a full profile, `soul` condition, registers, TRP3 present/absent/API changed/malformed data, source priority, schema 2 migration, corrupted and future data, command, window, IT/EN keys, validator). `run_tests.py` now expects 444 phrases and schema 3; the check of the automatic `/say` in an instance searches until one is sent (with the fixed seed the sequence changes with every phrase added).
- **Not verified without the client** (added to `docs/G1_checklist.md` (in Italian), steps 32–38): the look and space of the profile window; that a profile change is audible in the phrases (with only 16 example phrases the difference is small); **real Total RP 3**: that `GetInfo("characteristics/PS")` gives the traits, that the IDs of the default traits (`PSYCHO_MAP`) and the 0–20 scale are those of the TRP3 in use; the factors and thresholds are guesses.

### S6: Living Memory and Journal (GDD §7.4, §11.5, §12.2)
- Three levels: episodic, persistent, narrative flags.
- First visit, return, last visit ended badly, deaths, levels.
- At most 500 memories, with compaction, permanent memories and reset.
- Recall happens only if a real memory exists: add conditions such as `repeatVisit` and `lastVisitBad`.
- `UI/JournalFrame.lua`: memories, places and flags, with selective deletion and manual text export.

#### Outcome of S6 and notes for S6b, S6c, S7
- **Where the code lives** (in the `.toc`: `Systems\LivingMemory` after `Systems\Triggers`; `UI\JournalFrame` before `SettingsFrame`; `Data\RegistryMemory` and the `Memory.lua` texts after those of the Soul):
  - `Systems/LivingMemory.lua` (`NS.LivingMemory`, module `memory`): `Record{ kind, zone, importance, tags, source, perm, level, t }` (only these fields), `RegisterKind(kind, importance)`, `Delete`, `SetPermanent`, `ForgetPlace`, `Reset(all|memories|ordinary|places|flags)`, `SetFlag`/`ClearFlag`/`HasFlag`/`FlagNames`, `EnterZone`/`LeaveZone`/`OnDeath`/`OnLevel`, `Context(ctx)` (= `ctx.memory`), `RegisterRecall(event, check)`, `List`/`Places`/`SessionList`/`Stats`, `ExportText`, `Describe`, `Status`, `Command`. Constants at the top of the file (`MAX_ORDINARY` 500, `COMPACT_TO` 450, `MAX_PERMANENT` 200, `MAX_PLACES` 300, `PERSIST_MIN` 2, `VISIT_GAP` 600 s, `RETURN_GAP` one day, `FLIGHT_HP` 0.35, `DEATH_GAP` 60 s).
  - Data in `cdb.memories = { version, nextId, entries, places, flags, stats }`; `memories.version` (1) has its own migrations (`LM.migrations[n]`); `Sanitize` cleans up at startup; a newer version = read-only. **SavedVariables schema 4** (character migration 4).
  - **Memories**: first visit (3, capital city 4), return (2 after a day, 1 and session-only if sooner), death (3, the first 4, with flag `first_death`), flight (3), level (2, every tenth 4 with flag `level_<n>`). Important ones are saved (`PERSIST_MIN`), the others stay in the session's episodic memory (negative id, at most 60). Places (`memories.places[zone]`) keep the counts and the outcome of the visit (`prev` = how the previous one ended) and are independent of compaction.
  - **Honest recall**: conditions in `Engine/RuleEngine.lua` (`firstVisit`, `repeatVisit`, `lastVisitBad` also `"death"`/`"flight"`, `visitsMin`/`visitsMax`, `daysSinceLastVisit` number or `{from, to}`, `remembered`), `ctx.memory` in `NS:BuildContext`, **event guards** `Engine:SetEventGuard(event, name, fn)` (checked by `PickEntry`), validator `recallWithoutMemory`. Event `memory_return` (priority `memory` in the Director, module `memory`, probability 70, pause 600 s) offered 3 s after the return; the first visit is the `zone` event with `firstVisit`.
  - **Journal**: `UI/JournalFrame.lua`, `/au diario` (aliases `journal`, `diary`; subcommands `lista`, `luoghi`, `flag`, `esporta`, `permanente`, `elimina`, `dimentica`, `reset` with confirmation). Tabs as data: `JournalFrame:RegisterTab(id, { label, rows, note })` with rows `{ text, actions = { { label, tip, fn } } }`. Export in a window with a multi-line box (fallback: 40 lines in local chat).
  - 14 example phrases IT/EN (`base_memory`): 5 for first visit, 9 for return. Base total: 458 phrases with the example pack.
- **What S6b (relationships) needs to know:**
  - relationships live in `cdb.relationships` with **their own version**; a schema 5 migration is needed (add a `[5]` in `Config.migrations` and `SCHEMA_VERSION = 5`, as S6 did with 4);
  - the Journal already hosts tabs: add a "Relationships" tab (label «Relazioni» in Italian) with `JournalFrame:RegisterTab("relations", {...})` (and perhaps "People met"); `/au relazioni` can open the Journal on that tab with `JournalFrame:Open("relations")`;
  - an important moment in a relationship (first meeting, a betrayal) can be a memory: `LivingMemory:RegisterKind("relation", 3)` and `Record{ kind = "relation", tags = {...}, source = "addon" }`; do **not** save names or chat text inside a memory (`Record` discards every other field and `tags` accepts only short lowercase ASCII tokens);
  - a recall tied to a relationship is registered with `LivingMemory:RegisterRecall("relation_...", function(memory, ctx) ... end)` and **must** check that the relationship really exists; the `R` factor is free (`Engine:SetWeightHook("R", ...)`);
  - deaths and levels are not tied to an NPC: the identity (`npcID` from the GUID) is not in the memories.
- **What S6c (interlocutor and place) needs to know:**
  - places are indexed by the zone **name** in the client ([issue #31](https://github.com/Finland6738/azeroth-unspoken/issues/31)): when `Systems/Place.lua` verifies the `mapID`s, it migrates `memories.places` (`LM.migrations[2]`, internal version 2) to a stable key;
  - `ctx.place` and `ctx.memory` are independent: a phrase can ask for `when = { place = {...}, firstVisit = true }`; `ctx.memory.zone` is the name of the context's zone;
  - `NarrativeDirector:SetRhythm` also applies to `memory_return` (it is an event like the others): the sober rhythm in raids affects it.
- **What S7 (content) needs to know:** the memory conditions are in the pack guide (`PACK_FORMAT.md`, "Memory"); every `memory_return` phrase declares a memory condition (otherwise `recallWithoutMemory`); recalls that touch on death carry `topic:death`; extended content is in [issue #29](https://github.com/Finland6738/azeroth-unspoken/issues/29). First-visit atmosphere is written with `event = "zone"` and `firstVisit = true`.
- **Tests** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestMemory.lua` (over a thousand checks: no memory for insignificant events, first visit with the §7.4 fields, capital cities, return (same visit, one hour, two days), `lastVisitBad` for death and flight (also with secret health), levels, 500 limit and compaction, permanent memories, selective deletion, flags, recall only with a real memory (guard, manual command, module off), priority and no cascade in the Director, topics to avoid, validator, privacy, migrations and corrupted or future data, Journal, export, commands, reset with confirmation) and, in `run_tests.py`, the **simulated persistence after `/reload`** (two runtimes, `SERIALIZE`, `epoch` and `zone` of `load_addon`). The mock client has `SERIALIZE(table)` and `LEAP(seconds)` (skips a long interval without running the periodic timers: `ADVANCE` of days exceeds the timer limit because the button has a 2 s timer).
- **Not verified without the client** (added to `docs/G1_checklist.md` (in Italian), steps 39–45, and [issue #30](https://github.com/Finland6738/azeroth-unspoken/issues/30)): the real writing of the SavedVariables at `/reload` and on exit; the order and content of `PLAYER_ENTERING_WORLD`/`ZONE_CHANGED_NEW_AREA` on a load; flight (heuristic); the look of the Journal and of the export window (scrolling, selection, Ctrl+C); `C_Timer.NewTicker`; the thresholds and the frequency of recalls.

### S6b: relationships and affinities (user request of 2026-10-29; GDD §7.4, §10, §14)

Goal: the narrator writes differently depending on the relationship between the character and the NPC or player they interact with.
Examples: a formal tone with a stranger, a warm one with a friend, a tense one with a respected rival.

**Data model**, in `Systems/Relationships.lua`:
- The data lives in `AzerothUnspokenCharacterDB.relationships = { npcs = { [npcID] = ... }, players = { ["Name-Realm"] = ... } }`, with a schema version and migrations.
- The axes are independent; there is no single friend/enemy bar:

  | Axis | Range | Notes |
  |---|---|---|
  | `familiarity` | 0…100 | how well they know each other |
  | `trust` | −100…100 | trust |
  | `respect` | −100…100 | respect |
  | `affection` | −100…100 | negative values indicate resentment or hatred |
  | `fear` | 0…100 | fear |
  | `loyalty` | −100…100 | loyalty |
  | `attraction` | 0…100 | **optional axis, off by default**, can be enabled in the settings |

- The **derived narrative labels** are defined as data in `Data/Relationships.lua`, with rules and IT/EN names. The engine contains no fixed labels. Examples:
  - high trust and affection → friend;
  - high trust and loyalty → comrade in arms;
  - high affection and attraction → in love;
  - low trust and high respect → respected rival;
  - very negative affection → enemy;
  - values close to zero → indifferent;
  - low familiarity → stranger.
- There is also an **overall disposition** on a −100…100 scale: Hated, Enemy, Disliked, Suspicious, Neutral, Acquaintance, Friend, Great friend, Deep bond. It is derived from the axes and is used for summaries and simple conditions.
- Each relationship keeps: first and last interaction, number of interactions, free-form notes, tags and a hand-picked label, which takes precedence over the derived one.

**NPCs, automatic calculation:**
- The identity is the `npcID` taken from the GUID (`Creature-…-npcID-…`). If the GUID is missing, secret, or not a creature, nothing is recorded.
- Sources, to be verified in Compat with protected event registration:
  - dialogues (`GOSSIP_SHOW`): familiarity;
  - quests accepted and turned in (the NPC from `QUEST_DETAIL`/`QUEST_COMPLETE`, then `QUEST_ACCEPTED`/`QUEST_TURNED_IN`): trust and respect;
  - purchases, sales and repairs at the merchant (`MERCHANT_SHOW`/`MERCHANT_CLOSED`, `hooksecurefunc` on `BuyMerchantItem`, sales detected cautiously): familiarity and trust;
  - innkeeper, flight master, trainer, where detectable.
- Diminishing returns and a daily cap per interaction type. Familiarity slowly decays over time, the other axes do not.
- The increments are data tables, adjustable without touching the code.

**Players, managed by the user:**
- A "People met" list.
- The system **suggests** candidates: group members, trades, targets with a TRP3 profile, people answered in a private message.
- A player enters the list **only through a user action**. Alternatively there is an explicit "automatically register the people I meet" option, off by default.
- The user edits the axes with sliders; adds notes, tags and a custom label; deletes; exports as text.
- Privacy:
  - no chat or whisper content is saved;
  - no data is sent over the network;
  - the Social module (S10) will share something only with explicit consent.

**Integration with the narrator:**
- The context exposes `relation` (derived label), `disposition` and the individual axes of the target or of the NPC of the current interaction.
- New conditions in the RuleEngine:
  - `relation = { "friend", "rival" }`;
  - `trustMin`, `trustMax`, `affectionMin`, `affectionMax` and the equivalents for every axis;
  - `familiarityMin`, `isKnown`.
- New placeholder `{relation}`, with the localized label.
- Additional weight factor `R` in the Narrative Director: lines consistent with the relationship gain weight, inconsistent ones are excluded.
- The register changes with familiarity: from formal to intimate.
- At least 40 bilingual lines tied to relationships, for greetings, farewells, thanks, healing, fighting at someone's side and meetings with known NPCs.

**Interface:** a "Relationships" window with a sortable, filterable table (NPCs/players, label, last interaction), a detail view with sliders and notes, reachable from `/au relazioni` and from the Journal.

**Tests:**
- derivation of the labels;
- automatic increments with caps and decay;
- schema migration;
- no registration of players without a user action;
- no data taken from secret values.

**Dependencies:** after S6, because it uses memory and the Journal. Before S7, because the content will use the new conditions. S8 (NPC Alive) reuses the NPC registry and the relationships.

#### Outcome of S6b and notes for S6c, S7, S8
- **Where the code lives** (in the `.toc`: `Systems\Relationships` after `LivingMemory`; `UI\RelationsFrame` after `JournalFrame`; `Data\Relationships` after `Frames`; `Data\RegistryRelations`, the `Relations.lua` texts and the `RelationsUI.lua` strings at the end):
  - `Systems/Relationships.lua` (`NS.Relationships`, module `relations`): `RegisterData` (axes, labels, disposition, register, increments, `decay`, `memorable`), `Derive`, `Disposition`, `Resolve(kind, rec)` → `AURelationInfo`, `Get`/`Data`/`Sanitize`, `RecordNPC(npcID, name, source)`, `Increment`, `Decay`, `AddPlayer(name, "user"|"auto")` (rejects any other source), `Propose`/`Candidates`/`Dismiss`, `SetAxis`/`AdjustAxis`/`SetLabel`/`CycleLabel`/`SetNote`/`SetTags`/`Remove`/`Reset`, `Rows(filter)`, `Subject(ctx, extra)`, `Context(ctx, extra)`, `Factor` (factor `R`), `RegisterRelationEvent`, `ExportText`, `Status`, `Command`. Constants at the top of the file (`MAX_NPCS` 1000, `MAX_PLAYERS` 300, `MAX_CANDIDATES` 40, `KNOWN_GAP` 600 s...).
  - `Data/Relationships.lua`: **all the numbers** (label thresholds, disposition weights, `knownMin` 15, register, increments, caps, decay 14 days / 0.5 per day / minimum 3).
  - Data in `cdb.relationships = { version, npcs = { [npcID] }, players = { ["Name-Realm"] } }`; settings `db.relations = { npcAuto, attraction, autoRegisterPlayers, proposePlayers }`; module `relations`. **SavedVariables schema 5**.
  - Bus: `NPC_INTERACT { kind = gossip|quest_detail|quest_turnin|merchant|taxi|trainer|binder, npcID, npcName }`, `NPC_INTERACT_END`, `QUEST_STATE { state }`, `GROUP_CHANGED`, `TRADE_OPENED { name }`, `WHISPER_SENT { name }` (name only). There is no text of any message.
  - Engine: `Engine.RegisterRelationAxis`, `Engine.UsesRelation`, `Engine.RELATION_CONDITIONS`; conditions `relation`, `disposition`, `relationKind`, `isKnown`, `withRelation`, `<axis>Min`/`<axis>Max`; placeholder `{relation}` (field `relationLabel`); `Traits.Define{ scope = "rel" }` and `Traits.RegisterScope("rel")`; hook `R` "relations" and `StyleResolver` modifier "relations"; validator: `relationWithoutRelation`.
  - `UI/RelationsFrame.lua` (`NS.RelationsFrame`: `Open(view | { kind, key })`, `Close`, `Toggle`, `ShowView`, `SelectSubject`, `AddPlayer`, `ShowExport`, `Refresh`); `Widgets.Slider(parent, width, min, max, onChange(value, final))`; two Journal tabs (`relations`, `people`); `JournalFrame:ShowExport(text, titleKey)`.
  - 51 lines in `base_relations` (greetings 10, farewells 7, thanks 6, healing 6, battle 6, victory 4, known NPCs 12), event `relation_npc` (probability 45, pause 180 s).
- **What S6c (interlocutor and place) needs to know:**
  - the **role** of an NPC can already be derived from reliable sources: `NPC_INTERACT.kind` (`merchant`, `trainer`, `taxi`, `binder` = innkeeper, `gossip`, quest). `R.interaction = { npcID, name, kind, t }` is the NPC being talked to now; `R:Subject(ctx, extra)` gives the person of the interaction (open NPC, target or `extra.relationSubject`); `R.NpcID(guid)` is the only point that reads a GUID;
  - `ctx.relation` and the other fields sit at the top level of the context; `ctx.other.relation` can simply copy it. Source 1 of the priority list (user data) is `cdb.relationships.players[key]` (with `note`, `tags`, `label`, never chat text);
  - the actions `Group`, `trade` and `private reply` are already bus events (`GROUP_CHANGED`, `TRADE_OPENED`, `WHISPER_SENT`); for `DUEL_REQUESTED`, `PARTY_INVITE_REQUEST` and emotes new sources are needed (the events are in the dump);
  - **tag scopes**: `rel` exists (traits with `scope = "rel"`). An `other` scope with the S5 traits (without `scope`) works as is; traits with a `scope` apply only in their own scope;
  - the `C` factor and `SetRhythm`/`SetDemandCheck` are free; `R` and the `relations` modifier are already taken;
  - new event sources are declared with `NpcSource`/`EndSource` or `AddSource` with **literal strings**, otherwise `check_api.py` does not see them;
  - `JournalFrame` now tightens the tabs: you can add more without touching the width.
- **What S7 (content) needs to know:** the relationship conditions and tags are in the pack guide (`PACK_FORMAT.md`, "Relationships"); a `relation_npc` line always declares a relationship condition; the `{relation}` placeholder is masculine/neutral in Italian (the labels are nouns: «amico», «compagno d'armi»): write lines that work with every label or declare the right one ([issue #34]). The 51 lines are enough to test the system.
- **What S8 (NPC Alive) needs to know:** `cdb.relationships.npcs[npcID]` is the registry of NPCs already met (`name`, axes, `count`, `last`); `RecordNPC` creates a relationship only with a real interaction; `R:Resolve("npc", rec)` gives the label and disposition for the simulated line.
- **Tests** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestRelations.lua` (over 1,200 checks: axes and attraction, derivation of labels and disposition, precedence of the hand-picked choice, GUIDs and secret values, increments (diminishing returns, cap, the next day), quests, merchant and hooks, innkeeper/flight/trainer, settings, decay, data tables, compaction, suggestions without a list, `auto` off, privacy (no text saved, not even in events), user edits, sortable list, context, conditions, `{relation}`, factor R, register, lines per relationship, `relation_npc`, memory in the Journal, 51 IT/EN lines, migration 5, damaged data, read-only, window, Journal tabs, commands, IT/EN keys), the simulated persistence after `/reload` in `run_tests.py` and the API dump check.
- **Not verified without the client** (added to `docs/G1_checklist.md` (in Italian), steps 46–55, [issue #33]): **everything** that depends on the real client: that `GOSSIP_SHOW`, `QUEST_*`, `MERCHANT_*`, `TAXIMAP_OPENED`, `TRAINER_SHOW`, `CONFIRM_BINDER` really arrive with a readable `UnitGUID("npc")`; that the three `hooksecurefunc` (purchase, sale, repair) fire and that the sale (use of an item with the merchant open) is recognized; `UnitFullName` on group mates; `TRP3_API.register.isUnitIDKnown` and `utils.str.getUnitID` in Total RP 3; the look of the window, the sliders (`GetCursorPosition`) and the text boxes; the tone of the 51 lines; the numbers of the increments and thresholds (hypotheses).

### S6c: interlocutor and place (user request of 2026-10-29; GDD §5.2, §5.3, §7.1, §7.2, §10)

Goal: the lines change depending on **who we meet** and **where we are**.
- Who we meet: personality and character, recent actions, race, class, goals, role.
- Where we are: region, territory, instance type (dungeon, raid, battleground, arena).

This step completes S5, where the personality is that of *our own* character, and S6b, where the *relationship* is defined.

**A. Interlocutor profile** (`Systems/Interlocutor.lua`). The context exposes `ctx.other`: the target, the NPC of the current interaction, a group member or the author of an emote directed at us.

| Field | Content |
|---|---|
| `kind` | `npc`, `player`, `creature` |
| `race`, `class`, `faction`, `sex`, `level` | for players from the game or from TRP3; for NPCs where available |
| `classification`, `ctype`, `family` | elite, rare, boss; creature type; family (`UnitCreatureFamily`) |
| `reaction` | from hostile to friendly (`UnitReaction`) |
| `role` | innkeeper, merchant, guard, quest giver, trainer, flight master, banker, chief, civilian… |
| `temperament`, `morality`, `goals`, `speech` | personality. Uses **the same trait model as S5** and the values of the S6b relationships table |
| `actions` | recent observed actions: gave us a quest, traded with us, is in our group, challenged us to a duel, directed an emote at us, attacks us, fights our same enemy. Each with the moment it happened |
| `relation` | S6b label, if one exists |

- **Sources, in priority order:**
  1. data entered by the user (S6b people list);
  2. the target's **public** TRP3 profile (custom race and class, character traits), with consent and a protected adapter;
  3. a curated NPC registry by `npcID` in `Data/NPCs.lua` (personality, goals, way of speaking), shared with S8;
  4. role archetype, reliably derived from gossip, merchant, quest, trainer or flight (never guessed);
  5. typical values for race, class and faction, as a **weak tendency** and not as an imposed stereotype (GDD §5.4: "no moral decision imposed by race, faction or class");
  6. neutral values.
- Actions are derived only from reliable events: `GOSSIP_SHOW`, `QUEST_*`, `MERCHANT_*`, `TRADE_SHOW`, `GROUP_ROSTER_UPDATE`, `DUEL_REQUESTED`, `PARTY_INVITE_REQUEST`, `CHAT_MSG_TEXT_EMOTE` directed at us, `PLAYER_TARGET_CHANGED`. Never from the combat log. If the identity is secret (`C_Secrets.ShouldUnitIdentityBeSecret`) the profile stays empty.

**B. Place** (`Systems/Place.lua`). The context exposes `ctx.place`:

| Field | Content |
|---|---|
| `zone`, `subzone`, `mapID`, `continent` | from `C_Map.GetBestMapForUnit` / `C_Map.GetMapInfo` |
| `tags` | atmosphere and themes: forest, ruins, sacred, cursed, capital, harbor… Evolution of `zoneMoods`, with a registry by `mapID` where verified and the name as fallback |
| `territory` | friendly, hostile, contested, sanctuary, combat (`C_PvP.GetZonePVPInfo`) |
| `capital`, `faction` | capital and faction owning the place |
| `instanceType` | `none`, `party` (dungeon), `raid`, `pvp` (battleground), `arena`, `scenario` |
| `instanceName`, `instanceID`, `difficulty` | from `GetInstanceInfo` |
| `encounter` | boss fight in progress (`ENCOUNTER_START`/`END`), with the name |
| `groupRole` | role in the group: tank, healer, damage (`UnitGroupRolesAssigned`) |
| `battleground` | battleground state (`UPDATE_BATTLEFIELD_STATUS`, `C_PvP.IsBattleground`) |

- `Data/Places.lua` contains tags, themes and key phrases for the zones, capitals, dungeons, raids and battlegrounds of the Forever era, with English-client names and verified `mapID`s.

**C. Rules and line selection.**
- The RuleEngine accepts sub-tables:
  - `when = { other = { role = "innkeeper", temperament = "gruff" } }`;
  - `when = { place = { instanceType = "raid", territory = "hostile" } }`.
  - The same operators as today apply (lists, `not`, `any`, `func`) and `other.actions` contains a recent action within N seconds.
- New placeholders: `{other}` (name), `{otherrole}`, `{otherrace}`, `{otherclass}`, `{instance}`, `{encounter}`, localized.
- Narrative Director: the context factor `C` rewards lines consistent with the interlocutor and the place. The rhythm changes with the instance type:
  - more sober in raids and during boss fights;
  - short lines in battlegrounds;
  - more room in the open world and in inns.
- **NPC voice** (for S8): the simulated lines follow the NPC's `speech` and `temperament`. Example: a gruff innkeeper and a jovial one do not say the same things.

**D. Content:** at least 80 bilingual lines.
- For the interlocutor: by role, temperament, race or class, and actions such as "just gave us a quest" or "fought at our side".
- For the place: dungeon, raid, battleground, arena, hostile territory, enemy or friendly capital, sanctuaries.
- Every line follows the rules of §5.4.

**Tests:**
- priority of the sources;
- role derived only from reliable events;
- secret identity → empty profile;
- no TRP3 requirement;
- rules with `other` and `place`;
- transition from open world to dungeon, raid and battleground, with the rhythm changing.

**Dependencies:** after S5 (trait model) and S6b (relationships and people list). Before S7, because the Alpha content will also use these conditions. S8 reuses `Data/NPCs.lua` and the interlocutor profile.

#### Outcome of S6c and notes for S7, S8
- **Where the code lives** (in the `.toc`: `Systems\Place` before `LivingMemory`, `Systems\Interlocutor` after `Relationships`; `Data\Places` and `Data\NPCs` after `Data\Relationships`; `Data\RegistryContext`, the `Context.lua` texts and the `ContextUI.lua` strings at the end; [ADR 0019](docs/adr/0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md)):
  - `Systems/Place.lua` (`NS.Place`, module `place`): `Read(ctx)` → `ctx.place` (`AUPlace`: `key`, `zone`, `subzone`, `mapID`, `continent`, `tags`, `mood`, `territory`, `capital`, `faction`, `friendlyCapital`, `hostileCapital`, `instanceType`, `instanceName`, `instanceID`, `difficulty`, `encounter`, `lastEncounter`, `encounterResult`, `groupRole`, `battleground`, `rest`, `source`); `Lookup(mapID, name)` (verified uiMapID > name > unverified uiMapID), `Key(mapID, zone)` (`"map:<id>"` or the name), `Factor` (factor `C`: `place.` tags and short lines ≤ 80 bytes in battlegrounds, arenas and against a boss), `RHYTHM` (rhythm per instance type, via `SetRhythm "place"`), `SetDemandCheck "encounter"`, event `encounter_end` (guard: an encounter that just ended), `Describe`/`Command` (`/au luogo`). `NS:RegisterPlaces{ zones, subzones, instances, continents }`.
  - `Systems/Interlocutor.lua` (`NS.Interlocutor`, module `interlocutor`): `Build`/`Context` → `ctx.other` (`AUOther`) and `ctx.otherTraits`; sources in the order user > public TRP3 (consent `interlocutor.trp3Others`) > `Data/NPCs.lua` > role from reliable interactions (`ROLE_OF`) > weak tendency (`tendency`, weight only) > neutral; `Note`/`Actions`/`HasAction` (actions kept in memory for the session, `ACTION_WINDOW` 120 s, `ACTION_KEEP` 900 s, `MAX_SUBJECTS` 60), `SetTrait(kind, id, trait, value)`, `Factor` (factor `C`, `other.` tags), register modifier `other` (way of speaking and role), events `npc_meet` (module `npc`) and `other_action` with guards, `Describe`/`Command` (`/au chi [trp3 on|off|tratto <trait> <value>]`). New traits with scope `other`: `goals`, `speech`, `role`; `temperament` and `morality` are those of the Soul. `NS:RegisterNPCs`, `NS:RegisterTendencies` (morality is discarded).
  - New sources on the bus: `ENCOUNTER_START`, `ENCOUNTER_END`, `BATTLEFIELD_STATUS` (`UPDATE_BATTLEFIELD_STATUS`), `NPC_INTERACT { kind = "banker" }` (`BANKFRAME_OPENED`), `OTHER_DUEL`, `OTHER_INVITE`, `OTHER_EMOTE` (`CHAT_MSG_TEXT_EMOTE`: only standard emotes directed at us, the text is discarded); `WORLD_ENTER`/`ZONE_ENTER` carry `mapID`.
  - Engine: `other`/`place` sub-tables (`Engine.MatchSub`, `Engine.SUB_FIELDS`, `Engine.SUB_VALUES`, validator `CheckSub`); every field counts toward specificity; placeholders `{other}` `{otherrole}` `{otherrace}` `{otherclass}` `{instance}` `{encounter}` (fields `otherName`, `otherRoleLocal`, `otherRaceLocal`, `otherClassLocal`, `instanceName`, `encounterName`; `Validator.WORST`).
  - `Integration/TotalRP3.lua`: `GetOtherProfile(unit)` (only `characteristics.RA`, `CL`, `PS` of the public profile, temperament and morality), `HasOtherConsent`, `CleanPsycho`, `MapPsycho`. `Systems/Relationships.lua` keeps `traits`, `role`, `roleSource` in the relationships.
  - **Place memory by uiMapID** (closes #31): `memories.version` 2, key `map:<id>` or name, migration `LM.migrations[2]` (names with a verified uiMapID converted, duplicates merged), adoption by name on the first visit with a uiMapID, `LM:FindPlace(keyOrName)`, `ForgetPlace` by key or name, `ctx.memory.key`. SavedVariables schema **unchanged** (5).
  - 86 IT/EN lines in `base_context` (by interlocutor 45, by place 41). Base total: 595 lines with the sample pack.
- **What S7 (content) needs to know:**
  - the conditions are in `PACK_FORMAT.md` ("Interlocutor and place"): `other = { role, temperament, speech, goals, race, class, kind, actions = { …, within = n }, relation }`, `place = { instanceType, territory, tags, friendlyCapital, hostileCapital, encounter, encounterResult, groupRole, rest }`; the `other.…`/`place.…` tags weigh in the `C` factor;
  - entering a dungeon, a raid or a battleground is the `zone` event with `place = { instanceType = … }`; during boss fights the narrator stays silent: boss lines go on `encounter_end`; in battlegrounds and arenas short lines (≤ 80 bytes) are needed or they weigh less;
  - a greeting by race or class speaks of the homeland or the trade, never of a morality (GDD §5.4); for the canonical characters in `Data/NPCs.lua` there is only the role;
  - the available place tags are those of `Data/Places.lua` (the validator rejects an unregistered tag); for a new tag, add it to the data first;
  - `npc_meet` speaks only with an NPC of a recognized role and `other_action` only with a recent action: a line of those events must declare the condition (`other = { role = … }` or `other = { actions = … }`), even if the validator does not require it today.
- **What S8 (NPC Alive) needs to know:** `Data/NPCs.lua` is the registry (`I.npcs[npcID]`: `role`, `temperament`, `speech`, `goals`); `ctx.other` gives the role and voice of the open NPC; `Interlocutor.ROLE_OF` says which interactions make an archetype reliable; `I.SPEECH_STYLES`/`ROLE_STYLES` are the registry of the `npc` voice.
- **Opened by S6c:** [#36](https://github.com/Finland6738/azeroth-unspoken/issues/36) (verify uiMapID, instanceID and npcID in game, `in-game`), [#37](https://github.com/Finland6738/azeroth-unspoken/issues/37) (interlocutor traits and TRP3 consent in the interface), [#38](https://github.com/Finland6738/azeroth-unspoken/issues/38) (emotes directed at us only with the English client). #26 (`string.lower` and UTF-8) remains open: the new code uses `Traits.Lower`.
- **Tests** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestOtherPlace.lua` (over 530 checks: place in the open world, order of `Lookup`, missing APIs and secret values, instances, encounters, battleground queue, rhythm from open world to dungeon, raid, boss, battleground, arena and inn, engagement during bosses, short lines, interlocutor from target and NPC, secret identity, role only from reliable interactions, source priority with a fake TRP3, no TRP3 requirement, weak tendency, actions and their window, emote privacy, `other`/`place` rules with all operators, validator, IT/EN placeholders, 86 lines, line selection by interlocutor and place, #31 and migration 1 → 2, commands, IT/EN keys) plus `check_api.py`. `TestMemory` and `TestRelations` allow `CHAT_MSG_TEXT_EMOTE` among the chat sources.
- **Not verified without the client** (added to `docs/G1_checklist.md` (in Italian), steps 56–64): **all the numbers** in `Data/Places.lua` and `Data/NPCs.lua` (#36); that `C_Map.GetBestMapForUnit`/`GetMapInfo`, `GetInstanceInfo`, `C_PvP.GetZonePVPInfo`, `C_PvP.IsBattleground`/`IsArena`, `GetBattlefieldStatus`, `UnitGroupRolesAssigned`, `UnitReaction`, `UnitCreatureFamily`, `UnitIsUnit` respond as in the dump; that `ENCOUNTER_START`/`END`, `UPDATE_BATTLEFIELD_STATUS`, `BANKFRAME_OPENED`, `DUEL_REQUESTED`, `PARTY_INVITE_REQUEST` and `CHAT_MSG_TEXT_EMOTE` arrive with those parameters; Total RP 3's `TRP3_API.register.getUnitIDCurrentProfile`; the tone of the 86 lines; the rhythm numbers (hypotheses).

### S7: Alpha content (GDD §5, §9.2, §21)
- 300 bilingual intentions; at least 2 variants for the most common scenes; all four voices; three depths for key moments.
- Cover vertical slices A and C in depth.
- Follow the quality rules of §5.4: variety of vocabulary and length, no invented lore passed off as canon.


#### Outcome of S7 and notes for G2, S8
- **Numbers** (base database, without the example pack; `Tests/TestContent.lua` checks them):
  - **803 intentions** (were 588), **1,711 variants per language** (were 612). All the intentions of `battle`, `victory`, `lowhp`, `zone`, `greet`, `farewell`, `memory_return`, `death`, `rez`, `levelup` and rest have at least 2 IT and EN variants; of the others, only 9 spell lines are left with a single variant.
  - Voices: character 444, inner voice 235, external narrator 108 (were 32), **NPC 16** (only `npc_meet`, always with `other.role`).
  - Depths allowed by the rules: natural 378, literary 754, elevated 301; variants written on purpose for all three on arriving in and returning to the forest, forest zones, death, coming back to life, level, victory, low health, main greetings and farewells.
  - Per pack: combat 139, interlocutor and place 110, exploration 101, relationships 83, memory 81, spells 73, social 73, life 63, classes 54, personality 26.
- **Vertical slices A and C** (`Data/RegistryMemory.lua`): 10 first-visit intentions in the forest and 12 return ones, with three voices, temperaments (stoic, cheerful, fierce, melancholic, gruff, merciful), time of day, return after death or flight, after 7 days or 5 visits; first visit and return for every `mood`, dungeon, raid and battleground; flags `first_death`, `first_capital`, `level_30/40/60`. All `memory_return` lines start with `mem.ret.` (required by `TestMemory`).
- **Issues closed:** #18 (narrator and variants), #27 (Soul tags: 756 intentions out of 803 have at least one tag with a colon; `topic:death` on every `death` line, `topic:religion` on every `pray`, `topic:romance` on every love line; `req:` on fewer than 5%), #29 (memory), #34 (relationships for every label; `{relation}` in Italian only between quotation marks; lines for `other.sex`, players, NPCs with a role, disposition, attraction).
- **Opened by S7:** [#41](https://github.com/Finland6738/azeroth-unspoken/issues/41) (gender of the relationship labels and gender placeholders for the interlocutor: today `{g:}` applies only to the character), [#42](https://github.com/Finland6738/azeroth-unspoken/issues/42) (the `topic:` tags do not filter the vocabulary: `{cry}` and `{foe}` can bring blood, the undead or demons).
- **Editorial corrections** to existing lines: missing `{g:}` genders, `zone.durotar.01` Horde only, `zone.dunmorogh.01` dwarves and gnomes only, the druid no longer says they slept for centuries in the Dream, `rez.e.03` also works for the spirit healer, two lines that recalled well-known quotations rewritten.
- **For G2** (steps 65–68 in `docs/G1_checklist.md`, in Italian): arrival in the forest with the three depths and two archetypes; return after 10 minutes, after a death and after a flight; one hour of play to judge repetitions, lines that feel off and frequency; the NPC voice. Tone, perceived length and rhythm are **not verified**: the tests check structure, counts and rules, not literary quality.
- **For S8 (NPC Alive):** the 16 `ctx.npcv.*` intentions (voice `npc`, `Data/RegistryContext.lua`) are already lines per role, way of speaking and temperament: the dialogue window can reuse them as the innkeeper's first line (vertical slice B). Guards speak only if the role comes from `Data/NPCs.lua` (two NPCs today): S8 can derive the role reliably for them too. A condition "inside an inn with the innkeeper" is missing (`place.rest` holds in every rest area); the lines as written work in both cases.
- **Tests** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestContent.lua` (intentions, variants per event, voices and where the NPC voice speaks, depths, slices A and C, memory per atmosphere and flag, tags and sensitive topics, relationships per label and `{relation}` between quotation marks, 80 bytes in battleground and arena, words outside the Forever era, repeated IT texts or texts identical to the English, overused words under 5%, validator at zero); counts updated in `run_tests.py` (810 lines with the example), `TestSchema`, `TestValidator`, `TestOtherPlace`; `TestChatGateway` accepts the `npc` voice (spoken, private).

### S8: NPC Alive (GDD §7.3, §21-B)
- Dialogue window labeled "addon ambient dialogue".
- States `idle → offered → opened → choice → response → ended`.
- NPC registry by `npcID` taken from the GUID, verified.
- Archetypes (innkeeper, merchant, guard) only with a reliable classification, for example the gossip or merchant events; no dialogue if the identity is uncertain.
- The window must not interfere with Blizzard's gossip.

#### Outcome of S8 and notes for S9
- **Where the code lives** (in the `.toc`: `Systems\NPCAlive` after `Systems\Interlocutor`; `UI\DialogueFrame` after `UI\RelationsFrame`; `Data\RegistryDialogues` and `Data\Dialogues` after `Data\RegistryContext`, the `Dialogues.lua` texts and the `NPCUI.lua` strings; [ADR 0020](docs/adr/0020-simulated-dialogue-and-real-dialogue-npc-alive.md)):
  - `Systems/NPCAlive.lua` (`NS.NPCAlive`): the state machine (`STATES`, `TRANSITIONS`, `SetState` rejects anything out of order; `N.log` keeps the path of the last dialogue), `Offer`/`Open`/`Choose`/`Close`/`End(reason)`, `Start` (offer and open together, for the command), `Toggle` (the key), `View()` (what the window draws), `Identify(hint?)` → `who, reason`, `Allowed(explicit)`, `TestWho(style)` (test NPC), `ContextFor(session)`, `Check()` (script check, used by the validator as `badDialogue`), `Status()`, `Command` (`/au npc`), `DeclareRole` (`/au npc role`), `NS:RegisterDialogues{ scripts }`, `N.FlagName(key, flag)`. Constants at the top of the file (`OFFER_SECONDS` 20, `IDLE_SECONDS` 120, `OFFER_GAP` 180, `MAX_TURNS` 12, `MAX_CHOICES` 3, `OFFER_KINDS`).
  - `UI/DialogueFrame.lua` (`NS.DialogueFrame`): `Render(view)`, `Place(force)` and `Candidates` (positions that do not cover the windows in `BLIZZARD_FRAMES`, checked with `GetRect` only if they exist), `GetPlacement`, `ResetPosition`, `ApplySettings`; the `npc_badge` label is always on the band at the top. No dialogue logic.
  - `Data/Dialogues.lua`: the five scripts (`innkeeper`, `merchant`, `guard`, `flightmaster`, `trainer`); `Data/RegistryDialogues.lua`: the lines, generated from a `SPEC` table of codes (`n`, `known`, `stranger`, `again`, `gruff`, `jovial`, `warm`, `formal`, `terse`, `farley`, `firebrew`, `gryshka`, `dughan`); texts in `Data/itIT|enUS/Dialogues.lua`. The ids are `npcd.<role>.<node>.<code><n>`, the events `npcd_<role>_<node>`.
  - For **issue #41**: `Relationships:LabelName(id, sex)`, `Resolve(kind, rec, sex)`, the names in `Data/Relationships.lua` as `it = { "amico", "amica" }`, placeholder `{og:m|f}` (`ctx.otherSex`, in `TemplateRenderer`, `HasData` and `Validator`). For **issue #42**: the `tags` on the entries of `Data/Vocabulary.lua` (`topic:blood`, `topic:undead`, `topic:death`, `topic:demons`, `topic:religion`), filtered in `Engine:Vocab` with `Traits.Evaluate`, `badTag` for the vocabulary too.
  - New settings: `npcAlive.autoOffer`, `ui.dialogue` (`fontSize`, `alpha`, `locked`, `pos`); SavedVariables schema **unchanged** (5). In an NPC's relationship the `talks` field counts the conversations with at least one answer (it feeds the memory's "the first time").
- **Numbers**: 169 new base lines (972 base intentions, 979 with the example): innkeeper 54, merchant 37, guard 33, flight master 18, trainer 27 (of which specific: Farley 4, Firebrew 2, Gryshka 2, Dughan 3), all with two IT and EN variants (a few with three). Three city guards in the registry (npcID 68, 5595, 3296: **not verified**).
- **Decisions to know** (details in the ADR): gossip alone does not give an archetype; the role holds if the current interaction proves it, the curated registry or the user (`/au npc role`) does, or if the same NPC has already proved it in the session; the window never goes into `UISpecialFrames` and never calls anything from Blizzard; lines come out only inside a dialogue (guard on the event, `ctx.npcDialogue`); a test dialogue writes nothing; the offer has a limit per NPC *and* per window (from gossip to merchant another one can be made).
- **What S9 (Story Arcs) needs to know:**
  - the narrative flags (`LivingMemory:SetFlag`, names `npcd_...`) and `remembered` are the way a dialogue can advance an arc: an arc can react to a dialogue flag (or set one) without touching NPCAlive; a dialogue's choices must never unlock an arc's state on their own unless the arc declares it;
  - for an NPC that is part of an arc: a script `npc:<npcID>` with `extends` and lines with `other = { npcID = … }`; `NS:RegisterDialogues` and `NS:RegisterNPCs` allow it from a pack;
  - `LivingMemory:RegisterKind` for the arcs' memories; the journal already has registrable tabs (`JournalFrame:RegisterTab`);
  - the Director recognizes the "dialogue" priority (4) for voluntary moments: the events of an arc opened by the player can use it; the `npcd_*` events do not go through there.
- **Tests** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestNPCAlive.lua` (about 2,000 checks: scripts and validator, neutral answers, allowed and rejected transitions, full path, expiry of the offer and of the dialogue, interruptions, uncertain/secret/player/hostile/dead identity, role declared by the user, settings (module, intensity 0, pause, cinematic, combat), no chat and no call to Blizzard (`FORBIDDEN_CALLS`), position that avoids the fake Blizzard windows and corrects itself, IT/EN label, flags, relationship with the caps, memory without text, voice for gruff/jovial/neutral, specific NPCs, known/unknown, "again", anti-repetition, coverage per character, commands, #41 and #42); in `run_tests.py` 979 lines and the **simulated persistence after `/reload`** of the dialogues (flag, memory, relationship, no line saved, test NPC without traces). The fake client now has a resizable `UIParent`; the tests write `FakeBlizzard` with `GetRect`.
- **Not verified without the client** (added to `docs/G1_checklist.md`, steps 75–83, for G3): that `UnitExists("npc")` and `UnitGUID("npc")` during gossip, merchant, flight, training and inn give the right NPC; the names and sizes of Blizzard's windows (`GossipFrame`, `MerchantFrame`...) and `GetRect`; the look of the window and of long buttons; whether the offer is not annoying; the registry's `npcID` numbers (#36); the tone of the 169 lines and how well they tell the characters apart; the relationship caps (hypothesis).
- **Opened by S8:** no new issues; #36 remains (data numbers, now also the guards' `npcID`s) and #30/#33 (in-game tests). Possible follow-ups, not urgent: an option in the settings panel for the automatic offer (today only `/au npc offer`), more innkeepers and guards in the registry after the in-game check, a banker and a profession trainer with a script.

### S9: Story Arcs (GDD §7.5)
- State-based arcs (`LOCKED → DISCOVERED → REFLECTED → RESOLVED`), at most 1–2 active, skippable and disableable.
- They persist after logout and integrate with the journal. Write 3–5 example arcs.

#### Outcome of S9 and notes for S10
- **Where the code lives** (in the `.toc`: `Systems\StoryArcs` after `Systems\NPCAlive`; `Data\RegistryArcs` and `Data\Arcs` after `Data\Dialogues`, the `Arcs.lua` texts and the `ArcsUI.lua` strings; the "Stories" tab is in `UI\JournalFrame.lua`; [ADR 0021](docs/adr/0021-story-arcs-micro-stories-without-game-effects.md)):
  - `Systems/StoryArcs.lua` (`NS.StoryArcs`, module `storyarcs`): `NS:RegisterArcs{ pack, arcs, texts }`, `NS:AddArcTexts`, `Validate(def)`, `Fire(event, extra)` (subscribed to the bus: `ZONE_ENTER`/`WORLD_ENTER` after 2 s, `PLAYER_DEATH`, `LEVEL_UP`, `NPC_INTERACT` without a quest, `MEMORY_FLAG` only if the flag is set by an addon system: not the manual ones nor the automatic ones of the memory, nor the `arc_…` ones), `Apply(def, step, opts)` (the only point that changes state; rejects anything that does not start from the current state), `Choose`/`Offering`/`Start`, `Suspend`/`Resume`/`Skip`/`Disable`/`Enable`/`ForAll`/`SetEnabled`, `Conclude` (permanent `story` memory), `QueueBeat`/`Flush`/`OnBeatResult` (the lines, one at a time), `Context()` (`ctx.arcs`), `Record`/`Listing` (for the journal), `Sanitize`/`migrations`, `Check()` (for the validator), `Command` (`/au stories`). Constants at the top of the file (`BEAT_GAP` 90 s, `OWED_TTL` 900 s, `ZONE_DELAY` 2 s, `MAX_ITEMS` 100).
  - Data in `cdb.arcs = { version, items = { [id] = { state, mode, since, t, choices, subject, pending, waiting, waitStep, memoryId, ended } }, stats }`; setting `arcs.maxActive` (1–2). **SavedVariables schema 6** (character migration 6; `arcs.version` 1 with internal migrations).
  - **Steps** (data): `{ from, to, on = { zone|death|level|npc|flag|player }, when, wait, choose }`; base or custom states (from one you only go to the next); the opening cannot be `player` nor ask for a choice; an event moves an arc by one step only; unknown fields (a reward, a quest) are an error. `subject = "npc"` binds the arc to the first known NPC; `topic = "death"` does not open it if the Soul avoids the topic.
  - **Engine**: condition sub-table `arc = { id, state, from, choice, withSubject }`, `arcDone`, `capitalsVisitedMin` (`Engine/RuleEngine.lua`, value validator); `ctx.arcs` in `BuildContext`; `LivingMemory:SetFlag` publishes `MEMORY_FLAG` (the name only) on the bus; `Director:Offer(event, extra, onResult)` returns the outcome; `LM:Describe` shows the arc's title in the `story` memory.
  - **Lines**: events `arc_open`/`arc_step`/`arc_resolve` (`Data/RegistryArcs.lua`, pack `base_arcs`), "exceptional" priority, module `storyArcs`, guard `ctx.arc.beat`; private voices (`inner`, `narrator`). The validator (`badArc`) requires `arc = { id }` in every rule of these events.
  - **Journal**: "Stories" tab (under way, available, concluded, skipped or disabled) with detail, choices made and controls; `JournalFrame:Open("stories")`. A discreet notice in the narrator ("waits for your choice", "can begin"), never in chat.
- **Four base arcs** (`Data/Arcs.lua`): `path` "The Path Found Again" (the race's starting zone, level 12, choice between gratitude, measure and silence, closing on leaving the zone), `knownface` "A Familiar Face" (NPC with a role and familiarity 25 → 40 with a choice → 55), `fallen` "The Place of the Fall" (death from level 10, return to the place where the visit ended badly, choice, closing with the level; topic `death`), `capitals` "The Three Gates" (second capital → third, custom state `JOURNEY`, reflection by the player only after 10 minutes, closing in the street). 33 IT/EN lines (1,005 base intentions, 1,012 with the example).
- **Decisions to know** (details in the ADR): arcs never open by themselves without an event (neither with a command nor with time); when the slots are full the arc stays "available" and the player starts it; the state advances even when the line stays silent (the journal tells it); choices are option ids, never text; the `arc_<id>_<state>` flags do not advance other arcs in the same event; pending lines do not survive `/reload`.
- **What S10 (Social RP) needs to know:**
  - arcs are **private**: nothing of an arc, neither a `story` memory, nor a choice, nor an NPC's name, enters an addon message without a separate consent; `privacy.shareMemories` (off) is the intended switch for memories;
  - on the bus there is `ARC_STATE { id, from, to }` (only id and states): S10 can use it for a shared scene, but a scene must not advance another player's arc; the only way to move an arc is an event of one's own character or the player's choice (`SA:Fire`, `SA:Choose`);
  - the `storyArcs` module and `arcs.maxActive` also apply to social scenes that wish to tie in with an arc;
  - `Director:Offer` now accepts an `onResult` function: it serves those who need to know whether a line came out (S10's scenes, which have their own invitation, can use it so as not to lose a postponed invitation).
- **Opened by S9:** no new blocking issues. Possible follow-ups, not urgent: a control for `arcs.maxActive` in the settings panel (today `/au stories max`); arcs tied to other sources (professions, reputations, discovery of places, when the APIs are proven); an option to let an available arc start by itself; more arcs after the in-game test. #36 remains (data numbers) and #30/#33 (in-game tests).
- **Tests** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestArcs.lua` (about 2,000 checks: the base arcs and their coverage of lines per choice and language, deliberately wrong definitions, `arc`/`arcDone`/`capitalsVisitedMin` conditions, legal and illegal transitions for every arc, no opening without a real event, time/commands/manual flags that do not open, limit on active arcs, suspend/resume/skip/disable/enable and "all", module off, postponed lines (combat, death, pause, silence, `OWED_TTL`) and without cascades (`BEAT_GAP`), no manual line, saved data without texts, `Sanitize` with damaged and future data, migration 6, journal and command in Italian and English, narrator notices) and, in `run_tests.py`, the **simulated persistence after `/reload`** (pending choice, choice made, closing and permanent memory, skipped and suspended arc, migration from schema 5). Counts updated (schema 6, 1,012 lines, 14 base packs).
- **Not verified without the client** (added to `docs/G1_checklist.md`, steps 84–92): that `C_Map.GetBestMapForUnit` gives the starting zone's uiMapID (there is the English name as a fallback) and that subzones (Northshire, Coldridge...) are recognized; that the capitals are recognized by `ctx.place`; the rhythm (`BEAT_GAP`, waits, familiarity thresholds 25/40/55, levels 12 and 10): these are hypotheses; the look of the "Stories" tab (long rows broken by hand, 24-pixel buttons with ">", "II", "x", "-"); the tone of the 33 lines and of the choices; that the memory and the pending choice survive `/reload` and closing in the real client.

### S10: Social RP (GDD §7.6, §14)
- Addon messages with protocol version, schema, size limits, throttling and timeout.
- Opt-in off by default; block list; no execution of received code.
- Scene invitations, acceptance and refusal, actions, closing.
- Release only where the transport is proven.

### S11–S12: release 1.0 (GDD §16, §19)
- Content up to 1,000 intentions.
- Accessibility, optional audio (off), profiling, manual, privacy, troubleshooting.
- Tick off the Definition of Done.
