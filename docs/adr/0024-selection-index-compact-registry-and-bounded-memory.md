# 0024. Selection index, compact in-memory registry and bounded anti-repetition memory

- Status: Accepted
- Date: 2026-10-30 (phase R1 of the roadmap after the analyses A1 and A2, tracking issue #131; issues #83, #84 and #86)

## Context

The owner wants 400 or more hours of variety per character (decision D1 in #130), that is an archive of roughly 100,000 to 300,000 texts per language. The offline analysis A1 measured with lupa that the engine of steps S3 to S9 does not scale:

- `Engine:Eligible` scanned every rule of the event at every pick (`byEvent[event]`): 15 to 58 ms per pick at 10,000 synthetic entries, several hundred milliseconds at 300,000;
- each entry cost about 3.2 KB of Lua memory (two languages), because every variant was a table `{ t, ok, depth, pack, raw }`, every rule had its own lists and sets, and `RegisterPack` kept the source tables (`pack.registry`, `pack.texts`) alive after normalizing them (about 22% of the memory);
- the anti-repetition memory saved the last use of every phrase ever used (`cdb.memory.last`), and the last variant of every phrase with more than one, so the SavedVariables grew with the number of entries used.

R1 builds the foundations without changing what the player sees. The packaging into language packs (#85) and regional LoadOnDemand packs (#101, decision D4) comes later and must be able to reuse this design. The time and memory budget (D3) is still to be decided with the in-game measurements of `/au prof` (R0, #81); the working targets are `PickEntry` under 5 ms and memory under 40 MB at 50,000 entries.

## Decision

1. **Selection index by event and place** (`Engine.index`, `Engine:Candidates`, `Engine.IndexKeys`, `Engine.ContextKeys`, all in `Engine/PhraseRegistry.lua`).
   - At registration every rule goes, for each of its events and for its form (`say`, `emote`), into one or more groups. The group is chosen from the **first** equality condition its `when` asks at the top level, in the order of `Engine.INDEX_DIMENSIONS`: `zone` (key `z:<zone>`), `subzone`, `place.mapID`, `place.zone`, `class`, `race`, `mood`, `ctype`, `time`. One key per listed value, lower case like the comparison of `RuleEngine`. A rule with none of them goes into the generic group `*`.
   - A rule whose conditions can draw random numbers or run code (`chance`, `func`, a condition registered by a pack, anywhere in `when`) always stays generic. `Engine.PURE_CONDITIONS` (in `RuleEngine.lua`) lists the conditions of the engine without side effects; when a pack turns one of them into a computed condition, `NS:RegisterCondition` rebuilds the index (`Engine:RebuildIndex`).
   - `PickEntry` asks `Engine:Candidates(event, ctx, form)`: the generic group and the groups whose keys the context opens (its zone and subzone, map, class, race, mood, creature type, time of day), merged in **registration order** (`p.ord`). The result is the part of `byEvent[event]` whose conditions can be true, in the same order. `Eligible` then applies the same checks as before.
   - Because the rules left out are exactly those whose conditions are false, and they have no side effects, the eligible rules, their order and the random numbers drawn are the same as with a scan of `byEvent`. In `Eligible`, a rule without side effects now checks its conditions before its texts (they exclude more); a rule with `chance` or `func`, and a frame, keeps the old order (texts first), so the random sequence does not change.
   - `byEvent` stays: it is the full list used by the validator, the arcs, the ambient dialogue and the tests.
   - The index does not depend on the language or on the pack. A language pack (#85) or a regional pack (#101) adds its rules to the same groups when it registers; a regional pack of `zone`-bound rules fills only the groups of its zones. The exporter of the authoring archive (#87) can compute the same keys with the same rules.
2. **Compact in-memory format** (#84).
   - `RegisterPack` drops `pack.registry`, `pack.texts`, `pack.translations`, `pack.phrases`, `pack.frames` and `pack.vocab` after registration. The pack stays in `Engine.packs` with its id, name, languages, declarations and the lists the validator reads (`ids`, `frameList`, `vocabList`, `langsUsed`).
   - A variant is a **plain string** when its text is valid, it has no depth of its own and it was written by the pack that owns the rule, frame or vocabulary entry. The rare variants that need more (an empty or non-string text kept for the validator, a depth of their own, a text added by another pack) keep the `AUVariant` table. Code reads variants only through `Engine.VariantText`, `VariantOk`, `VariantDepth`, `VariantPack` and, for tools, `VariantView`.
   - Rules with the same events, registers, tags or depth share one read-only table for them; an empty tag set is one shared table. `depthList` is kept only when the list says more than the set (values that are not strings, repeated values).
   - The base data files that called `NS:AddTexts` without a pack id (context, dialogues, arcs, soul) now pass it, so their texts are attributed to their own pack and can be strings. No phrase or rule changes.
   - Weights are computed without a table per candidate (`Score` is `Factors(...).W` with the same operations in the same order), `NS.Lower` remembers its results for the strings the conditions compare (at most 4,096, never a secret value), and `Traits.Evaluate` remembers per tag set which scopes it has, so the weight hooks skip a scope a rule has no tag for.
   - The public pack API (`RegisterPack`, the v2 pack format) does not change.
3. **Bounded anti-repetition memory** (#86), schema 7.
   - `cdb.memory.last` holds the last use **only for entries with a `cooldown`**, and only while the cooldown runs: `Remember` writes it only for them and `DecayMemory` drops the others at login.
   - `cdb.memory.uses` (the novelty factor `N`) keeps its meaning and its decay (×0.75 at every login), with a cap: beyond `Engine.USES_MAX` (512) entries the least used ones go (ties in id order, never the one just used) until `Engine.USES_TRIM` (384) remain.
   - `cdb.memory.variant` (the last variant used) is kept only for phrases still in `uses`: it comes and goes with them.
   - `cdb.memory.recent` (the window of the last ids per event, at most `pacing.recentPhraseWindow`) and `lastTone` (per event) are unchanged: they were already bounded by the number of events.
   - **Migration 7** (character) trims `uses` to the cap and drops the `variant` of phrases no longer in `uses`; `DecayMemory`, at login when every pack is registered, drops the `last` of entries without a cooldown or with an ended one. Running cooldowns survive. No text is ever stored (ADR 0017).
4. **Equivalence, measured.** `Tests/TestScale.lua` compares, on the current database and on a synthetic archive, the indexed selection with a scan of `byEvent` with the old order of checks (same rules, same order, same random draws) for every event, form, language and eight contexts, and checks that `Score` equals `Factors().W` bit for bit. `Tests/trace_picks.py` prints a seeded sequence of 3,000 picks; it gave the same file on the engine before and after R1 (with the uses cap lifted for the synthetic archive, where more than 512 different phrases are used). `Tests/bench_scale.py` with `Tests/SyntheticArchive.lua` projects the cost at 10,000 and 50,000 entries; the suite runs a reduced size (2,000 entries) and checks the memory per entry.

## Alternatives considered

- **A column store** (parallel arrays of strings, conditions as keys, no table per rule), as in the trial of A1 (about 324 bytes per entry). It meets the memory target, but every system reads rules as tables (`p.speaker`, `p.tags`, `p.when`), and so do the tests and external tools: it would change the internal API of the whole addon in one step. Kept as the next lever if the in-game budget (D3) needs it.
- **Shared rule shapes** (a metatable with the fields that many rules share: pack, voice, form, category, registers, tags). It would save about a third of the record, but `pairs` over a rule would no longer show every field and the gain depends on how varied real tags are; left for after the measurements.
- **A sampled generic group** (draw a bounded random subset of a large generic group). It bounds the time of every pick, but it changes which rules can be chosen: not allowed in R1, which must not change what the player sees.
- **Replacing `uses` with counts in the recent window.** It changes the weights (`N`), so the selection; the cap keeps the weights identical below 512 different phrases used between logins.

## Consequences

- Positive: at the current size (1,012 rules) the addon uses 4.2 MB instead of 6.5 MB of Lua memory and a pick takes about 0.2 ms instead of 0.6 ms (lupa, offline). At 50,000 synthetic entries: 94.7 MB instead of 239 MB (1.9 KB per entry instead of 4.9 KB) and 4.1 ms per pick on average instead of 23 ms (p95 14 ms instead of 59 ms). The SavedVariables of the anti-repetition memory no longer grow with the number of phrases used.
- Negative or costs:
  - The memory target (40 MB at 50,000 entries) is **not met**: with one language loaded (#85) the projection is 76 MB. The record of a rule (about 0.7 KB) and the per-language lists are what remains; see the alternatives.
  - The p95 of a pick at 50,000 entries (14 ms) is above 5 ms: events with hundreds of generic rules spend their time weighing every eligible rule (the weight hooks). The mean is under the target.
  - Registering 50,000 entries takes about 25% longer (3.8 s instead of 3.0 s), for the index keys and the shared tables.
  - A phrase not used for several logins may repeat its last variant, and beyond 512 different phrases used between logins the least used lose their novelty penalty early. Both are rare and documented; they are the price of a bounded memory.
  - Code outside the engine must read variants through the accessors; `p.text[lang][i].t` no longer works for most variants.
  - All numbers are projections from lupa on one PC; the targets stay hypotheses until D3 is decided with `/au prof` in the client.

## References

- Issues #83, #84, #86 (this ADR), #85 and #101 (packaging, next), #87 (exporter), #81 (`/au prof`), #130 (D1, D3, D4), #131 (roadmap).
- `Engine/PhraseRegistry.lua` (index, format), `Engine/RuleEngine.lua` (`PURE_CONDITIONS`), `Engine/WeightedSelector.lua` (`Eligible`, `Score`, memory), `Engine/TemplateRenderer.lua` (`AnyUsable`), `Engine/Traits.lua` (`Scopes`), `Core/Bootstrap.lua` (`NS.Lower`), `Core/Config.lua` (migration 7).
- `Tests/TestScale.lua`, `Tests/SyntheticArchive.lua`, `Tests/bench_scale.py`, `Tests/trace_picks.py`.
- [ADR 0006](0006-savedvariables-and-schema-versions.md) (schema versions), [ADR 0017](0017-living-memory-selective-memories-and-honest-recall.md) (no text saved), [ADR 0001](0001-engine-and-narrative-database-separated.md) (engine and database separated).
