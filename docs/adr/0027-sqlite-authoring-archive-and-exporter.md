# 0027. SQLite authoring archive, exporter to the pack folders and coverage reports

- Status: Accepted
- Date: 2026-10-30 (phase R2 of the roadmap after the analyses A1 and A2, tracking issue #131; issues #87 and #88)
- Updated: 2026-10-31 (issue #143: the Story Arcs and NPC Alive content, 202 intentions and their structures, archived as data; item 9)

## Context

The owner wants 400 or more hours of variety per character (decision D1 in #130): roughly 100,000 to 300,000 texts per language. Today the 1,030 intentions are written by hand as Lua tables in the pack folders ([ADR 0025](0025-language-and-regional-packs-loaded-on-demand.md)). That does not scale to a database of that size, written mostly by AI sessions and curated by one person:

- there is nothing to ask "which event x place has fewer than 10 phrases?" or "which drafts are waiting for review?";
- a draft and an approved line look the same in a Lua file: content can reach the game only by being approved, and Lua has no place for the state;
- the quality measurements of the analysis A1 (M1 availability, M2 repetition) were run by hand, offline, from scripts kept locally.

The decisions of the owner in #130 shape this work: **D2** the unit counted is the *intention* (one idea with all its variants and translations), variant counts are reported alongside; **D6** one author curates, drafts come from AI sessions, and content moves through `draft -> review -> approved -> retired`; **D7** invented lore is attributed to a voice (the field exists in the archive; see the limits); **D4** the folders by language and by continent are loaded automatically (ADR 0025).

Constraints: an addon cannot read a database, so SQLite can only be an **authoring** store outside the game; the game keeps reading the generated Lua folders. The tools must run with nothing installed but Python (CI, the owner's PC, an AI session): standard library only.

## Decision

1. **The archive is authoring only** (`tools/archive/`, Python standard library, `sqlite3`). The game never reads it. The format of the pack folders and the engine do not change, so external packs and `PACK_FORMAT.md` are unaffected.

2. **Source of truth: not the archive yet, a transition in two stages.**
   - **Stage 1 (this ADR).** Each intention lives in exactly one committed place, chosen by its state:
     - **approved** content stays in the **pack folders**, as today, written by hand or by `export`;
     - everything **not approved yet** (drafts, content in review, retired content, an approved edit waiting for `export`), with the authors, the reviews and the changelog, lives in the **overlay** `authoring/*.csv`;
     - the SQLite file is **generated** from both and never committed.

     `export` writes the approved intentions into the folders and takes them out of the overlay, so nothing is ever in two places. When the same id is in both, the overlay wins: that is how an approved intention is edited or retired through the archive.
   - **Stage 2 (later, a decision of the owner).** The approved content moves into `authoring/` too, the folders become generated output and the importer of the folders is retired; this ADR is then superseded on that point (ADR 0025, item 2, says the folders are the source of truth *today*, and stays true until then). It needs: several PRs in which `export` wrote real content with no hand fix of the generated files; one reformat of the folders to the canonical style, in a quiet moment (no other PR touching the data files); the code-generated packs turned into data (done in #143, item 9); and the arc definitions and dialogue scripts in the overlay too (they are approved content of the folders only for now, item 9).
   - **Why not now.** (a) Today's files are hand-formatted and commented in sections; making the database the truth would reformat about 40 files at once, break every open PR that touches them and lose the placement of the comments, for no gain while the content is still few. (b) 202 intentions came from code (`RegistryArcs.lua`, `RegistryDialogues.lua`: loops and helper functions) and could not be in a database (turned into data in #143, item 9). (c) Two copies of a text with a rule for which wins would be needed; one place per state needs none. (d) The tests, the validator and the engine all read the folders: the round trip below gives confidence before anything is flipped.

3. **What the importer reads.** The folders whose `.toc` declares a language or a region, and `Data/Registry*.lua` of the base: rules files (`NS:RegisterPack({ ... registry = { ... } })` and `AU:RegisterRegionalPack`) and texts files (`NS:AddTexts(lang, {...}, packId)` and `AU:RegisterRegionalTexts`). It reads the Lua as **data** with its own reader of table literals (`tools/archive/lualit.py`): strings, numbers, booleans, nested tables, mixed tables (`{ "duel", within = 30 }`), local constants such as `ALL`, and `function ... end` kept as raw text (the single `func` condition of `victory.long.01`). It never runs Lua. A rules file that computes its rules (a helper function, a loop) raises `Unsupported` and is **not archived**: it is listed as such in every report (until #143 these were `base_arcs`, 33 intentions, and `base_dialogues`, 169; there is none now). The example pack and the verses pack are not read. The base is also read for its arc definitions (`Data/Arcs.lua`), dialogue scripts (`Data/Dialogues.lua`) and the journal texts of the arcs in the language folders (item 9).

4. **Schema** (`tools/archive/schema.sql`):

   | Table | Holds |
   |---|---|
   | `intention` | `id`, `pack_id`, `state` (`draft`, `review`, `approved`, `retired`), `author_id`, `events` (JSON list), `category`, `speaker` (the voice), `form`, `styles` (registers), `depth`, `tags`, `weight`, `cooldown`, `conditions` (JSON), `extra` (JSON: rule fields the archive does not model), `ctx` (the selection-index keys of ADR 0024, `*` = generic), `region` (of the pack), `attribution` and `invented_lore` (D7), `origin` (`folders` or `overlay`) |
   | `variant` | `intention_id`, `lang`, `ord`, `text`, `depth`: the texts per language |
   | `pack` | `id`, `name`, `region`, `languages`, `rules_path` |
   | `author` | who writes or reviews (`legacy` for what existed before the archive, `owner`, `ai`, `human`) |
   | `review` | one row per decision: reviewer, verdict (`approved`, `changes`, `retired`, `comment`), note, date |
   | `changelog` | one row per change: date, author, action, intention, from and to state, note |
   | `intention_event`, `_register`, `_depth`, `_tag` | search indexes derived from the JSON of the intention, rebuilt by `reindex` |
   | `arc`, `arc_text`, `arc_step` | a Story Arc: its definition (JSON), its journal texts per language (JSON) and one row per step for queries (#143, item 9) |
   | `script`, `script_node`, `script_reply` | an NPC Alive dialogue script: its definition (JSON) and one row per node and per reply for queries (#143, item 9) |
   | `source_file`, `source_chunk` | the layout of the folders as read (below), one row per table of a file (`part`); generated, never committed |
   | `meta` | schema version, the list of files not archived, import problems |

   Lists and conditions are JSON text in the intention row because that is the value the exporter writes back (an empty list and an absent one differ in the Lua); the link tables only serve queries. The ids of `review` and `changelog` are time stamps plus a short hash, so two branches that add rows rarely touch the same line.

5. **The committed text** is the overlay: `authoring/{authors,intentions,variants,reviews,changelog}.csv`, UTF-8, LF, sorted by key, one row per intention and one per variant. A CSV was chosen over a SQL dump (a dump repeats the schema and its `INSERT` order is noisy), over JSON Lines (a variant is a row, so a text diff is one line) and over one file for everything (the tables diff and merge independently). The SQLite file is a build product (`build/`, ignored by git): a binary file cannot be reviewed in a PR and merges badly.

6. **Importer, exporter and the guarantee.**
   - A file is read as `prelude + chunks + epilogue`: a chunk is a *gap* (blank lines and comments between entries) or an *entry* (`["id"] = value,`, its exact source and a hash of its data). The layout is kept in the database. `export` writes an unchanged entry back from its source, re-renders an entry whose data changed in the **canonical style** (identity on the first line, tags and depth on the second, conditions on the third, as the files are written today), drops an entry that is no longer approved, and appends new ones, in id order, at the end of the table of the file of their pack (and of each language). A file is rewritten only if its text changed.
   - **Only `approved` content is exported.** Drafts, content in review and retired content never reach a folder.
   - **The guarantee**, a CI test (`Tests/check_archive.py`, called by `Tests/run_tests.py`, so inside the required job `Tests`): the export of the imported folders is **identical, byte for byte, to every file of the repository**; the canonical rendering of every rule and text, imported again, gives the same data (it tests the renderer, which new and edited entries go through); a review flow on a temporary copy writes valid Lua 5.1 (loaded with lupa) and rebuilds to the same states.

7. **Review flow and commands** (`python tools/archive/cli.py`, no GUI): `build`, `stats`, `list` (default: the drafts), `search` (by `--event`, `--tag`, `--region`, `--voice`, `--register`, `--text`, `--pack`, `--state`, `--lang`), `show`, `drafts FILE.jsonl` (one JSON object per line: what an AI session produces), `submit`, `reject`, `approve`, `retire`, `restore`, `export`, `check`, `report`. Every change is written at once to the overlay, with a review row and a changelog row. Rules enforced by the archive:
   - a draft must have a valid voice (`narrator`, `inner`, `character`, `npc`), depths, a positive weight, balanced braces in its texts, no repeated variant, a known pack and a language of the pack, and no code in its conditions;
   - `submit` (to review) and `approve` need a text in **every language of the pack**;
   - `approve` also refuses invented lore (`invented_lore`) in a **narrator** line without an `attribution` (D7);
   - transitions: `submit` from draft, `reject` from review (back to draft), `approve` from draft or review, `retire` from draft, review or approved, `restore` from retired (to draft).

8. **Coverage and gap reports** (#88, `tools/archive/coverage.py`, `tools/archive/thresholds.json`, workflow `Content coverage`). Counted in intentions (D2) with the variants per language alongside, for the approved content (or another `--state`):
   - tables per region, voice, depth, register, pack and event;
   - **M1, availability:** for each event x context cell (the context is the first index group of ADR 0024: zone, subzone, map, class, race, mood, creature type, time of day, or generic), the intentions **eligible** there, that is the cell's plus the generic ones of the event, and their texts per language. Cells under `k` intentions (default 10, adjustable per event) or `k_variants` texts per language (default 20) are the gaps, poorest first;
   - intentions missing a text in a language of their pack;
   - **M2-style proxies**, the cheap part, with no simulation: the best pool of texts an event can draw from in any context against the window in which a text should not return (`repeat_window`, 100, from #88), and the concentration of the first words of the texts (a threshold of 15% of a language). The full M2 (a seeded run of the engine: repeats within 100 interventions, lexical similarity, frames) stays the offline script; it needs the game's selection.
   - The CI workflow runs on every change to the content (`AzerothUnspoken/Data/**`, `AzerothUnspoken_*/**`, `authoring/**`, `tools/archive/**`): it prints the report, writes it to the **job summary**, raises one **warning annotation** per breached threshold and keeps the Markdown and JSON as an **artifact**. It **never fails** (`continue-on-error`, no `--strict`) and is not a required check: the thresholds are reported, not blocking, until the owner decides which ones should block.

9. **Arcs and dialogue scripts as data (#143).** The two packs whose rules were built by code are now literal tables, and the structures around them are archived.
   - **What changed in the files, with no change of behaviour.** `RegistryArcs.lua` and `RegistryDialogues.lua` list their 202 rules (the helper `Rule` and the loop over the table of tokens are gone; the legend of the tokens stays in a comment); `Data/Arcs.lua` and `Data/Dialogues.lua` spell out the arcs and the scripts (the helpers `StarterZone`, `Choice`, `Common` and `With` are gone, the shared "starting zone" condition is a local constant of plain data, which the reader understands). `NS:RegisterDialogues` takes a `pack` like `NS:RegisterArcs` (the game ignores it, the archive files the scripts under it) and the base language files pass the pack id to `NS:AddArcTexts`. The engines (`StoryArcs.lua`, `NPCAlive.lua`) are untouched but for that field and one rule: they interpret whatever is registered, so an external pack adds arcs and dialogues the same way.
   - **Equivalence.** The registry, the events, the arcs, the scripts and the texts the game registers were compared, before and after, by running the Lua (lupa) and are the same; the comparison is a permanent test (`Tests/check_archive.py`, "EQUIVALENCE") that runs the Lua files and checks that the archive holds exactly what they register. The tests of NPC Alive and Story Arcs pass unchanged.
   - **Schema.** An arc and a script are stored as the JSON of their definition (that is what the exporter writes back, as for the conditions of a rule), with derived tables for queries (`arc_step`, `script_node`, `script_reply`). A source file is now a list of *parts*, one per table, because a language file of arcs holds two (the journal texts, then the lines); each part keeps the text from the end of the previous one, so the parts concatenate to the file. `export` writes an unchanged entry from its source, renders a changed or new arc, script or journal text in the canonical style (`lualit.pretty`: one step per line, a long condition on its own lines) and appends new ones to the table of their pack.
   - **Validator** (`tools/archive/structures.py`, run by `check` and counted in `report`): for arcs, a transition to a state that is not declared, a jump over a state, a state with no way out or unreachable from `LOCKED`, a choice that is not defined or never asked, an unknown event, an unknown field (no rewards), a missing journal text in a language of the pack, a step with no line (a warning: the arc advances in silence), and a line of an arc event that does not name its arc or a state the arc lacks; for scripts, an unreachable node, a dangling reply or transition, a node whose event nobody speaks (or not in the `npc` voice), a loop with no reply that closes, a missing label in a language of the pack and a reply that **puts words in the player's mouth**. The game runs its own checks on load (`badArc`, `badDialogue`), including the same rule on replies.
   - **Words in the player's mouth** (ADR 0020, item 3, made checkable): a reply is a question or an action. A reply that states a feeling, a trait, a decision or a promise ("I feel...", "I swear...", "Mi sento...", "Ho paura...") is an error, unless it is a question or declares `editable = true` (the player may rewrite it; the engine does not offer editing yet, the field only tells the two apart). It is a lint of whole-word phrases per language (`PUTS_WORDS`, the same list in the archive and in `NPCAlive.lua`, a test checks they match): it catches the obvious cases, the reviewer catches the rest.
   - **What is not done.** Arcs, scripts and journal texts are approved content of the folders: they have no draft or review state and are not in the overlay, so a new arc is written in the folders by hand (and checked). Their lines, being ordinary intentions, do go through the whole flow. Moving the structures to the overlay is part of stage 2.

## Alternatives considered

- **The archive as source of truth now** (generate every folder). Rejected for now: see item 2. The exporter and the round trip are what make the later flip safe.
- **Commit the `.sqlite` file.** A binary diff cannot be reviewed and two branches cannot merge it.
- **A SQL dump of the whole database.** Text, but one big file per change, ordered by insertion, with the schema repeated; the CSV overlay is smaller (only what is not approved) and diffs by row.
- **Import by running the Lua with lupa**, which would also read the code-generated packs. It makes the authoring tools depend on a native module and would give values without the layout (comments, line breaks, order), so the byte-for-byte round trip would be lost. The generated packs stay out until they become data.
- **Reformat the folders to the canonical style first.** It would make the exporter simpler (no layout in the database) but is the large one-time diff that stage 2 reserves for a quiet moment.
- **Normalized tables for arcs and scripts** (one row per step, node, reply and label as the source of truth). Rejected: the exporter would rebuild every definition from rows and a change of the engine's format would need a migration of the schema; the JSON definition is what the game reads, and the derived tables are enough for queries.
- **Moving the journal texts of the arcs to their own file** to avoid files with two tables. Rejected: it would change the layout other open PRs touch; the archive learned to read a file as parts instead.
- **Judging a reply by meaning.** Not possible offline; a list of phrases per language plus the explicit `editable` exception is a cheap guard for the obvious cases, kept next to the data it guards.
- **One review state per language.** A translation lagging behind is visible today as "missing text" in the report; a state per variant can be added when the owner wants translations reviewed apart.

## Consequences

- Positive:
  - The content can be written, searched, reviewed and measured outside the game, one line per text in a PR; only approved content reaches the folders; every folder file still reads as before.
  - The round trip on the archived intentions is an empty diff, and it is in the required CI job. Since #143 that is **every** intention (1,128 on 2026-10-31, 0 not archived), with the 4 arcs (13 steps, journal texts in two languages) and the 5 dialogue scripts (27 nodes, 22 replies).
  - Today's report (828 approved intentions, 1,785 texts per language, 241 event x context cells): 29 cells are under k = 10 intentions or 20 texts (the poorest are `buff`, `jest`, `rezother`, `threat` and `toast` with 6 intentions each), no intention misses a language, and 23 of 26 events have a best pool of texts under 100.
  - Measured on a synthetic overlay: 20,000 approved intentions are written by `export` in about 3 s and imported again (folders to database) in about 11 s, about 0.5 ms per intention (100,000 would take about a minute, once: the generated database is reused until a folder or the overlay changes); the report on 20,800 intentions takes about 1 s.
- Negative or costs:
  - (Until #143.) The archive covered 828 of 1,030 intentions: `base_arcs` and `base_dialogues` were code, not data, and were reported as not archived. They are literal tables now (item 9); what stage 2 still needs for them is the overlay for the arc and script definitions.
  - `attribution` and `invented_lore` live only in the archive: the in-game format has no such field yet, so `export` does not write them and the validator cannot refuse unattributed lore in game; the archive refuses it at `approve`. The exporter will carry the field when the validator gets it.
  - New packs (a new folder, a new continent) are still created by hand once (copy the example pack, add the `.toc`); the archive then fills them. A new intention is added at the end of the table of its pack, not next to related ones (the canonical style has no section comments).
  - "Eligible" counts the cell and the generic group: an upper bound, because it ignores the conditions beyond the first index group (race, mood, time of day together...). The repetition proxies are not the M2 measurement.
  - Two authors who approve in parallel branches touch the same overlay files; rows are sorted and keyed, so most merges are clean, but an edit of the same intention in two branches conflicts like any text.
  - The first stage keeps the layout of the folders in a generated table, so the database is rebuilt, not updated, when a folder changes by hand.

## References

- Issues #87, #88 (this ADR), #143 (arcs and dialogues as data), #128 (literary pieces: `kind = 'piece'` and `piece_meta` can extend the schema), #130 (D1, D2, D4, D6, D7), #131 (roadmap), #85 and #101 (the folders).
- `tools/archive/` (`cli.py`, `store.py`, `packfiles.py`, `lualit.py`, `coverage.py`, `schema.sql`, `thresholds.json`), `authoring/`, `.github/workflows/content-report.yml`, `Tests/check_archive.py`.
- [ADR 0025](0025-language-and-regional-packs-loaded-on-demand.md) (the folders), [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md) (the index groups used as the context of a cell), [ADR 0002](0002-fully-offline-no-ai.md) (no AI in the game: the drafts are written before, outside it), [ADR 0008](0008-lf-line-endings.md) (LF), [ADR 0001](0001-engine-and-narrative-database-separated.md).
