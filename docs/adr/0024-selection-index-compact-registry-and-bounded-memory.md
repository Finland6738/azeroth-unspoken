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
   - **Migration 7** (character) trims `uses` to the cap and drops the `variant` of phrases no longer in `uses`; `DecayMemory`, when the base addon loads, drops the `last` of entries without a cooldown or with an ended one. Running cooldowns survive. It runs **before** the Example, Versi and regional packs register, so the `last` of an id that is not registered yet is kept for at most `Engine.DORMANT_LAST_MAX` (30 days) instead of for its cooldown ([ADR 0025](0025-language-and-regional-packs-loaded-on-demand.md) §7); it is bounded, and a time in the future is brought back to now at load (#156). No text is ever stored (ADR 0017).
4. **Equivalence, measured.** `Tests/TestScale.lua` compares, on the current database and on a synthetic archive, the indexed selection with a scan of `byEvent` with the old order of checks (same rules, same order, same random draws) for every event, form, language and eight contexts, and checks that `Score` equals `Factors().W` bit for bit. `Tests/trace_picks.py` prints a seeded sequence of 3,000 picks; it gave the same file on the engine before and after R1 (with the uses cap lifted for the synthetic archive, where more than 512 different phrases are used). `Tests/bench_scale.py` with `Tests/SyntheticArchive.lua` projects the cost at 10,000 and 50,000 entries; the suite runs a reduced size (2,000 entries) and checks the memory per entry.

## Update: shapes, shared conditions and the memo of a pick (#157, #138, 2026-10-31)

Issue #157 reported that `PickEntry` had become about 50% slower with R4 (#148). Measured again with a count of Lua VM instructions per pick (deterministic, unlike the times on a busy machine), **most of that step was the benchmark, not the engine**: `Tests/SyntheticArchive.lua` clones rules drawn at random from all the registered rules, so the 35 rules R4 added re-drew every clone and the benchmark measured a different, heavier archive. On the same archive the engine of R4 cost +5% at 10,000 entries (55.4 → 58.4 thousand instructions) and +7% at today's size (16.3 → 17.4 thousand: the weight hook E, the graded `Traits.Evaluate`). `Tests/bench_scale.py` now prints the commit and the instructions per pick, and `--archive-dir` keeps the archive of each size in a folder so two versions measure the same rules; `Tests/run_tests.py` prints the instructions at 2,000 entries and warns above 1.25 times `Tests/perf_baseline.json`.

What changed in the engine, without changing a single pick:

5. **Shared rule shapes.** The fields that repeat across rules (pack, events, voice, form, category, depth, weight, cooldown, specificity, tier, the monologue fields) live in an interned **shape**, the rule's metatable (`__index`). The rule table keeps `id`, `text`, `when`, `ord`, `styles`, `tags`, `theme` and `motifs`: eight slots of its hash part instead of sixteen. Registers, tags, theme and motifs stay in the rule because their combinations are almost unique in written content (with them, the 1,169 base rules would make 1,104 shapes; without, 601). `p.speaker` reads as before; a write to a shape field gives that rule a private copy of its shape (copy on write); `pairs(p)` shows only the rule's own fields (no caller iterates a rule). `Engine.ShapeOf(p)`.
6. **Shared conditions.** Rules whose conditions are the same plain data share one `when` table (958 tables become 461 in the base packs). Shapes and conditions count their rules and `Engine:DropPack` releases them, so a dropped regional pack still frees its tables (ADR 0025). The intern tables are not weak: the collector would walk them whole at every cycle while tens of thousands of rules register.
7. **The memo of one pick** (`Engine.MEMO`, `Engine/WeightedSelector.lua`). During a pick the context, the style profile, the memory of the session and the time do not change, so:
   - `Eligible` answers each shared table of pure conditions once (a rule with `chance`, `func` or a pack condition is evaluated as before, in the same order, so the random sequence is the same);
   - when the pick weighs at least `Engine.MEMO_MIN` (128) rules, `ScoreMemo` computes the factors C, P, S, R, E and the shape part of N once per combination of shape, registers, tags, theme, motifs and voice, with the operations of `Score` in the same order: the same floating-point numbers. In a smaller pick the combinations rarely repeat (the base packs have 739 for 1,169 rules) and the tables of the memo would cost more than they save. A weight hook declares itself **pure** with `Engine:SetWeightHook(factor, name, fn, pure)` (it reads only the context and those descriptive fields, never the id, texts or conditions, and draws no random numbers); a factor with a hook that is not pure is computed for every rule as before. The hooks of the Character Soul, the emotions, the interlocutor and the relations are pure; the one of the place is pure except in a battleground, an arena or a boss fight, where it reads the length of the texts;
   - the union of the index groups is cached per event, form and context keys until the index changes (at most `Engine.MERGED_MAX` lists), and merged two lists at a time;
   - smaller changes: the recent window as a set in `WeightedPick`, the tiers computed once per candidate in `TierPool`, `AnyUsable` without a call per variant, and `Traits.Evaluate` returns at once for an empty profile without a `req:` tag in the scope.
8. **Proof.** `Tests/TestScale.lua` runs the same seeded picks with `Engine.MEMO` off and on (neutral profile; a veteran soul with worry and tension; a rogue with joy and a hook that is not pure) over the base packs and a synthetic archive and requires the same trace. `Tests/trace_picks.py` (with the new `--soul` and `--emotion`) printed byte-identical traces before and after the change in seven configurations: plain, `--r1`, two souls with emotions, and synthetic archives of 3,000 and 5,000 rules with and without `--r1`.

Measured on the same synthetic archive (one language, `--langs enUS`, 400 picks; instructions are exact, times are the median of three alternating runs on a busy PC):

| Entries | Memory before → after | Instructions per pick, mean (p95) | Pick time, mean (p95) |
|---|---|---|---|
| today (1,169 rules) | 5.5 → 5.7 MB | 18.3 → 14.8 thousand (33.2 → 26.6) | 0.68 → 0.49 ms (1.45 → 1.17) |
| 10,000 | 23.3 → 17.2 MB | 74.3 → 46.8 thousand (166 → 102) | 1.66 → 1.16 ms (4.96 → 2.96) |
| 50,000 | 93.9 → 61.6 MB | 301 → 95 thousand (688 → 201) | 7.71 → 3.20 ms (27.0 → 10.9) |

The regional packs (`Tests/bench_packs.py`, 8 regions of 5,000 rules): one region built 8.0 → 6.0 MB over the login memory; after visiting every region and dropping, 27.1 → 25.1 MB; keeping all, 65.2 → 49.1 MB.

Against the working targets at 50,000 entries: the mean pick time stays under 5 ms; the p95 and the memory (40 MB) are still above them (#138 stays open). What remains is mostly proportional to the candidates of a pick (walking about 2,000 generic rules of a frequent event, checking their texts) and to the text of each rule (strings, variant lists, the rule table). A synthetic clone shares its shape with the rule it copies, which real content does less: the memory figure at scale is a lower bound of what shapes save. Costs: registering 50,000 rules takes about 45% more Lua instructions (the keys of shapes and conditions; 4.5 → 6.1 s in lupa); at today's size the base packs use 0.2 MB more (601 shapes for 1,169 rules).

## Alternatives considered

- **A column store** (parallel arrays of strings, conditions as keys, no table per rule), as in the trial of A1 (about 324 bytes per entry). It meets the memory target, but every system reads rules as tables (`p.speaker`, `p.tags`, `p.when`), and so do the tests and external tools: it would change the internal API of the whole addon in one step. Kept as the next lever if the in-game budget (D3) needs it.
- **Shared rule shapes** (a metatable with the fields that many rules share: pack, voice, form, category, registers, tags). It would save about a third of the record, but `pairs` over a rule would no longer show every field and the gain depends on how varied real tags are; left for after the measurements. Adopted in the update above (#138), without registers, tags, theme and motifs, which are too varied in real content.
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
