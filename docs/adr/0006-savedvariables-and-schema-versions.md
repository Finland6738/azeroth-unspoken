# 0006. SavedVariables and schema versions

- Status: Accepted
- Date: 2026-10-29 (implemented in steps S1 and S2; decision of the [roadmap](../../ROADMAP.md), S1; updated up to schema 7 and phase R1; newer versions, lost versions and loaded data cleaned: Q9b, #154, #155, #156)

## Context

An addon that saves data must be able to evolve it without losing the user's choices. SavedVariables are Lua files that can be edited by hand or corrupted, and can come from a newer or older version of the addon. Some settings belong to the account, others to a character.

## Decision

1. **Two saved variables** (declared in the `.toc`):
   - `AzerothUnspokenDB` (`## SavedVariables`): `{ schemaVersion, settings = { … } }`, per account. After `Config:Load` it is `NS.db` (that is, `AzerothUnspokenDB.settings`).
   - `AzerothUnspokenCharacterDB` (`## SavedVariablesPerCharacter`): `{ schemaVersion, memory, personality, memories, relationships, arcs, history }`, per character. After loading it is `NS.cdb`. The ones in use are `memory` (line anti-repetition), `personality` (Character Soul, S5, [ADR 0016](0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md)), `memories` (Living Memory, S6, [ADR 0017](0017-living-memory-selective-memories-and-honest-recall.md)), `relationships` (S6b, [ADR 0018](0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md)) and `arcs` (Story Arcs, S9, [ADR 0021](0021-story-arcs-micro-stories-without-game-effects.md)). `history` is the only placeholder still empty.
   - The account settings (`settings`) also include the systems' sections: `relations`, `interlocutor` (`trp3Others`, the consent to read other players' public Total RP 3 profiles, [ADR 0019](0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md)), `npcAlive` (`autoOffer`, [ADR 0020](0020-simulated-dialogue-and-real-dialogue-npc-alive.md)), `arcs` (`maxActive`) and `ui.dialogue`. New sections are added by `Merge`: no migration is needed.
2. **One schema version** (`Config.SCHEMA_VERSION`, currently 7), saved in the `schemaVersion` of each variable. The global and character versions advance together, even when one of the two changes nothing (the migration is then empty):

   | Version | What changes |
   |---|---|
   | 1 | initial structure (settings under `settings`) |
   | 2 | `output.mode` becomes the Chat Gateway's `chat.mode` (S2) |
   | 3 | `personality` becomes the Character Soul profile (S5) |
   | 4 | `memories` becomes the Living Memory (S6) |
   | 5 | `relationships` for NPCs and players (S6b) |
   | 6 | `arcs` for story arcs (S9) |
   | 7 | bounded anti-repetition `memory`: `uses` capped, `variant` only for phrases in `uses`, `last` only for entries with a running cooldown (R1, #86, [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md)) |

   Memory places moved to a stable key by `uiMapID` (S6c, issue #31) did **not** advance the schema: it is an *internal* version of `memories`.
3. **Step-by-step migrations** in `Config.migrations[type][n]`: function *n* takes the data from version *n−1* to *n*. They are applied in order at startup, each inside `Diagnostics:Guard`. Example: global migration 2 turns `output.mode` into `chat.mode` and forces `autoPublicSay = false` ([ADR 0003](0003-private-narrator-and-chat-gateway.md)). No migration from the prototype: `VociDiAzerothDB` is not imported, because it was never used in game.
   - **Internal module versions.** Data with a complex shape also has **its own version**, with migrations and cleanup in its own module: `personality.version` (1), `memories.version` (2, `LM.migrations[n]`), `relationships.version` (1) and `arcs.version` (1, `SA.migrations`). They exist because the internal shape can change without touching the other variables (so the move of memory places to `uiMapID` is version 2 of `memories` and did not change the schema). At startup each module runs its own migrations and its own `Sanitize`, which discards malformed entries and brings values back within limits: data ruined by hand does not break the addon.
4. **Defaults and validation**: `Config.Merge(defaults, saved)` recursively adds what is missing without touching what is there; `Config:Validate` resets to the default any values of the wrong type, off the list or out of range (rules by path in `Config.rules`) and collects the problems in `Config.issues`. Access by path with `Config:Get`/`Config:Set` (which validate).
5. **Data from a newer version** (the user went back to an older addon): an error is recorded in diagnostics and **nothing is modified**.
   - For the **schema** (`schemaVersion` greater than the addon's) the migration does not run: `Config:Load` works on a **copy** (`Config.readOnly`) with `Merge` and `Validate`, discarded at the end of the session, and the saved file stays as it was (Q2 fix, issue #3).
   - For a **module's internal version** (for example `memories.version` or `arcs.version` greater than the known ones) the module goes **read-only**: the data is read, but not rewritten or cleaned up. The same principle applies, with an error in diagnostics (for example "arcs.version 2 > 1: read-only"). This holds for **every** module that has an internal version: `personality`, `emotion`, `memories`, `relationships`, `arcs` and the account's `sharedPlayers` (#154).
     - `Personality` and `Emotion` read a **copy** of the saved section (`readOnly`); `SetTrait`, `SetArchetype`, `ToggleTopic`, the Total RP 3 consent, `Persist` and `Reset` do nothing, and `/au soul` and `/au emotion` say why. The saved section keeps its version and every field this version does not know.
     - `Config:Load` does not even pass such a section through `Merge` and `Validate`: they would add fields and reset values this version does not know.
   - **A lost or damaged `schemaVersion`** (missing, not a number, negative, NaN or infinite) counts as 0 and the migrations run again, so **a migration must be idempotent on data that already has the current shape** (#154): the global migration 2 acts only on a file that still has `output.mode` (or no `chat` at all), so a consent already given is not taken back, and character migration 3 sets `personality.version = 1` only when there is none. `Personality:Profile` decides by the profile's **shape** (old exclusive choices as strings) when its version is missing or unusable, never by the version alone. Infinity is a damaged value, not a newer schema.
6. **Loaded data is cleaned, not only new data** (#52, #156). Whatever a module reads is brought back inside its limits at start-up, and what was changed is reported in `/au debug` (diagnostics, in English, never a name):
   - **Times** are never in the future: a clock set ahead and then corrected would otherwise freeze a decay or a cooldown for ever. `memory.last` and the emotions' `at` become "now"; so do the first/last times, the facts and the decay day of the relationship records.
   - **Counters** are capped at `Engine.COUNT_MAX` and `Relationships.COUNTER_MAX` (1,000,000). `memory.uses`, the encounter counts and the tally by kind of a player.
   - **Records are rebuilt, not kept whole**: an emotion is `{ v, at }` with `v` from 0 to 1 and nothing else; an archetype that is not a string, or `neutral` with traits, becomes `custom`.
   - **Lists have their limit**: NPCs (#52), players (`MAX_PLAYERS`, 300, character layer, account layer and the union of both with sharing on). Records without user choices go first, the least observed first; a record with choices is **never** dropped, so a list full of them stays over the limit and is only reported.
   - A second load of what was just cleaned changes nothing and reports nothing (a test per module and a chain from schema 0 in `Tests/run_tests.py`).
   - Not covered: the timestamps of the Living Memory entries and places.
7. **No chat content in the saved files.** The narrator's history is not saved ([ADR 0003](0003-private-narrator-and-chat-gateway.md)).
8. **Every new global variable** of the addon (SavedVariables, `SLASH_*`, `BINDING_*`, key functions) must be added to `diagnostics.globals` in `.luarc.json`.

## Alternatives considered

- **No versions, just "if the key is missing" checks**. It works for additions, not for renames and changes of meaning such as `output.mode` → `chat.mode`.
- **A single variable for everything.** It would mix account settings and character data (memory, relationships, memories).
- **Resetting the settings at every version change.** It loses the user's choices.

## Consequences

- Positive: the user's choices survive updates; every format change is a small, testable step. `Tests/TestConfig.lua` covers validation, `Merge`, the 1 → 2 migration and the behavior with a newer schema; every module with its own version has its own migration tests and tests for ruined or future data (`TestSoul`, `TestMemory`, `TestRelations`, `TestArcs`), and `Tests/run_tests.py` simulates `/reload` by passing the SavedVariables from one runtime to another, including from schema 5 to 6.
- Negative:
  - every schema change requires a migration and a test;
  - **the real writing and reloading of the SavedVariables has not been tested in the client** (G1 checklist, SP-04);
  - with newer-schema data, settings changed in that session are not saved (it works on a copy): this is the price of not ruining the newer version's data.
- Every new system that saves per-character data adds a section to `characterDefaults`, a schema migration (and an internal version if the shape is complex), the read-only rule for a newer version, the limits it applies on load and the tests for ruined and future data: this is the cost of a rule that has proven stable from S2 to S9.

## References

- GDD §11.4, §11.5.
- `Core/Config.lua`, `AzerothUnspoken/AzerothUnspoken.toc`, `.luarc.json`.
