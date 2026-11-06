# 0052. A bounded pick: large events sampled by tier, and the cost of a pick gated in instructions

- Status: Accepted (offline tests and projections; nothing measured in the client yet); the memory proposal of §4 is done in [ADR 0053](0053-lines-of-the-character-only.md)
- Date: 2026-11-06 (the engine finding of content wave W04, PR #250; issue #138; amends [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md) and [ADR 0051](0051-tiers-mixed-by-share.md) §1.4)

## Context

Content wave W04 (PR #250) added about 3,000 texts per language, many of them generic, `muse` and capital lines, and the cost of a pick grew with them: `Tests/bench_scale.py --sizes 0` went from 24.1 to 34.4 thousand Lua instructions per pick on average and from 62.1 to 167.0 at the 95th percentile, `run_tests.py` warned that a pick cost 169% of its reference, and the wall-clock check of the simulated M2 session (mean pick under 2 ms) passed at 1.75 ms in one run and failed at 2.47 ms in another on a busy machine. The archive held about 15,400 texts per language; the owner's target is about 270,000 ([ADR 0050](0050-need-model-near-duplicates-and-content-waves.md)), about 89 more waves.

Profiling the pick (`Engine:PickOwn`) on the W04 content showed where the cost is: every candidate of the event that the index opens is **checked** (`Engine:Eligible`: form, pack, cooldown, conditions, a usable variant) and every rule that holds is **weighed** (`Score` or `ScoreMemo`: the novelty of uses, theme and motifs, the style, the weight hooks of place, soul, relations and emotions). Weighing costs about twice the check, and both are paid once per candidate: an orc in Durotar asking for `muse` read 265 candidates, `battle` 97. The index (ADR 0024) keeps the zone, class, race, mood, creature-type and time lines of other contexts out, but the generic group of an event, which also holds faction, level-band, relation and other unindexed situation lines, and the keyed groups of the character's own zone, class and race grow with every wave. At the random need an event like `muse` would hold thousands of candidates for one character, and a pick would cost hundreds of thousands of instructions.

The tier mix of ADR 0051 (`Engine.TierPool`), the anti-repetition window and the memory of uses were not the cause: each is a pass over the weighed items (2-3 thousand instructions), cheap once there are few of them. The composite pick (#100, asked first by the Gateway whenever the context has a situation) merged every candidate of the event to keep the situational ones: a walk of the whole event per pick too.

## Decision

### 1. A large event is read by tier, with a bounded sample (`Engine:SampledEligible`, `Engine/WeightedSelector.lua`)

1. The groups of the index are **split by specificity tier** (`Engine.Split`, `Engine/PhraseRegistry.lua`): for each group, the ords of each tier 0-4 and those written for a composite situation, in the order of the group. A split is made when a pick first reads the group and kept until the group changes (a rule registered, the rules of an area merged by `EndStaging`, a pack hidden), in a table with weak keys: the work is done once per group and change, not per pick.
2. An event (one form) whose open groups hold at most `Engine.SAMPLE_FROM` (64) candidates, or whose every tier holds at most `Engine.SAMPLE_SCAN` (24), is checked whole, as before: the **same pick** as before this change, rule for rule and random number for random number.
3. Otherwise each tier is read apart. A tier of at most `SAMPLE_SCAN` candidates is checked whole, in order of registration. A larger tier is **sampled**: positions drawn at random among its lists, a rule drawn twice passed over, until `Engine.SAMPLE_KEEP` (16) rules hold, or `Engine.SAMPLE_CHECKS` (48) were checked, or `SAMPLE_CHECKS × Engine.SAMPLE_DRAWS` (192) positions were drawn. A rule in the anti-repetition window of the event is passed over before its check: it could not be picked while fresher lines are there.
4. The kept rules then go through the pick exactly as every candidate did before: the weights (`W = B × C × P × N × S × R × E`), the tiers mixed by share (`Engine.TierPool`, ADR 0051), the window and the variants. So:
   - **the pick stays random**: every rule that holds has the same chance to be kept, and the weights choose among the kept ones as before;
   - **the tier shares and the specificity preference hold**: the tiers are sampled apart, so five landmark or subzone lines beside thousands of generic ones are always seen, and the place level still narrows from landmark to zone;
   - **the conditions hold**: only checked rules are kept;
   - **the anti-repetition window keeps its size** from the rules that hold (`KeepFor`), estimated in a sampled tier as the share of the drawn rules that held (those in the window counted as holding) times the size of the tier.
5. **Fallback.** When the sample keeps nothing (a large event of which almost nothing holds in this context, or whose lines are all in the window) every candidate is checked, as before, so no line that could speak goes silent because of the sample. A rare line in a large tier of which almost nothing else holds is found by the sample with a probability that grows with `SAMPLE_CHECKS`; when the other levels have lines, its level then gives its share to them more often than before. The content waves write pools whose lines mostly hold for the characters they are written for, so this is the rare case, and it is the price of a bound.
6. The spoken lines told in a frame (emote picks) are sampled the same way, keeping only the character's voice.
7. **The composite pick** reads the situational lines of the split groups (`Engine:SituationalCandidates`): the same rules, in the same order, as the situational rules of `Engine:Candidates`, without walking the event.
8. `Engine.SAMPLE = false` (and `Engine.R1_COMPAT`) checks every candidate always: the reference of the tests. The memo of one pick (`Engine.MEMO`, #157) does not change a sampled pick either: TestScale still requires the same trace with the memo on and off.

So the cost of a pick has a bound that does not depend on how many lines an event has: at most `SAMPLE_CHECKS` checks and `SAMPLE_KEEP` weights for each large tier, plus the small tiers, plus the constant work of the pick (the style profile, the tier draw, the variant, the record).

### 2. The cost of a pick is gated in instructions (`Tests/run_tests.py`, `Tests/bench_m2.py`, `Tests/perf_baseline.json`)

1. The simulated M2 session counts the Lua instructions of one pick in five (`COUNT_EVERY`) and times the others. `run_tests.py` **fails** when the mean instructions of a pick exceed `m2_fail_ratio` (1.5) times `m2_pick_kinstr` of `Tests/perf_baseline.json`: the number does not depend on the machine, so a regression fails in the PR that causes it, on any machine.
2. The time is the **CPU time of the thread** (`bench_scale.cpu_clock`: on Windows the cycles of the thread), not `os.clock`, which on Windows is the wall clock with a resolution of a millisecond: a busy machine counted the time other programs took. The check uses the **median** over the six runs of the session of their mean pick, so one run slowed by the machine moves nothing; above 2 ms it measures again on two one-hour sessions and fails only if that is over 2 ms too. A real regression of the time that the instructions do not show (work in C functions, which count as one instruction) still fails.
3. The scale projection of the suite (2,000 synthetic rules) keeps its warning above 125% of `pick_kinstr_2000`. Both references were reset in this change on purpose; `perf_baseline.json` now says why each was set, in `history`.

### 3. The scale projection in texts per language (`Tests/bench_scale.py --texts`)

`--areas --texts 100000,270000` projects the archive by area at totals given in texts per language, the unit of the need model: each becomes entries at the mean texts per entry of the synthetic clones (2.42 in English), and `--resident-share` (0.6) of them stay resident, the share the need model plans in generic, situation, class and race pools (the place pools, about 40%, are in the area packs). Both modes report the memory after the picks too (the splits are made then).

### 4. Measured

Offline, lupa on one PC, `main` → this change on the same machine and the same data (the synthetic archives of one size are the same file for both, `--archive-dir`). Lua instructions in thousands per pick, mean / p95; times in ms.

| projection | `main` | this change |
|---|---|---|
| today's content, 15,402 texts per language (`bench_scale --sizes 0`) | 34.4 / 167.0 | 24.9 / 43.7 |
| every line resident, about 100,000 texts per language (41,285 entries, `--sizes`, English) | 48.6 / 273.3, 0.74 ms (p95 3.61) | 23.3 / 43.8, 0.45 ms (p95 0.99) |
| every line resident, about 270,000 texts per language (111,469 entries) | 74.6 / 449.4, 1.17 ms (p95 6.60) | 24.3 / 43.4, 0.43 ms (p95 0.84) |
| by area, 100,000 texts per language (`--areas --texts`, 60% resident, 40 areas of 412 entries) | 81.9 / 340.5, 1.41 ms (p95 5.05) | 37.6 / 81.8, 0.58 ms (p95 1.18) |
| by area, 270,000 texts per language (40 areas of 1,114 entries) | 131.8 / 560.7, 2.03 ms (p95 8.15) | 45.1 / 77.0, 0.95 ms (p95 1.96) |
| the simulated M2 session (`bench_m2`, CPU time) | 84.1 / 193.8, 1.24 ms | 42.7 / 70.6, 0.71 ms |
| the suite's projection (2,000 synthetic rules) | 34.1 / 174.1 | 24.0 / 47.2 |

- **The pick is flat where every tier is large**, and rises a little until it is: by area, from 100,000 to 270,000 texts the mean grows 20% while the candidates of the events grow 2.3 times (`muse` 1,037 → 2,385 for the character, `threat` 40 → 84), because events and tiers that were checked whole cross `SAMPLE_FROM` and `SAMPLE_SCAN` and are then sampled; the p95 does not grow. `main` grows 61% (p95 65%) over the same range and 3.8 times from today's content.
- **The splits** cost about 0.4 MB with every line resident at 270,000 texts (88.8 → 89.2 MB after the picks), 0.2 MB by area; they are made once per group, the first time a pick reads it (a share of the first pick of each event in a session, about the cost of one pick of `main` for the largest group), and extended when an area adds rules to a group.
- **Building an area** does not change (the area builds of ADR 0049 are not touched), at 100,000 texts per language: a change of area of about 64 ms spread over 17 frames of 3.65 ms on average (p95 4.21, at most 5.94), 10.8 ms in the frames that read a folder for the first time (at most 16.0); at 270,000: 153 ms over 41 frames (at most 79) of 3.69 ms (p95 4.10, at most 4.64), 23.1 ms (at most 42.2) when a folder is read the first time.
- **Memory, in one language** (by area): at 100,000 texts per language 27.3 MB at login, 32.2 MB with the first area, at most 33.0 MB after every area; at 270,000, 58.9 MB at login, 70.8 MB with the first area, at most 73.6 MB after every area (13.8 MB of them the sources of the areas visited), and up to 115 MB at the peak of a change while the collector is stopped (it is not in the client). The same on `main`: this change does not touch the storage.
- Picks: `Tests/trace_picks.py --exact` and `--r1` print the same 3,000 picks as `main`; the default trace differs in 2,821 of them (after the first sampled pick the random sequence diverges) with the same levels: generic 46.2% (`main` 46.0%), situation 45.6% (45.9%), place 8.1% (8.1%). The M2 targets hold: same theme consecutively 2.9% (2.7% on `main`), "says" and "murmurs" 4.8% (5.0%), combat 34.7% (34.8%).

**Memory is the limit at the random need, not the pick.** About 74 MB for one language at 270,000 texts per language is past the 40 MB working target of ADR 0024 for 50,000 entries, and most of it is the resident lines, about 50 MB. In the need model the class and race pools are about 79% of the resident texts (strict need: class 7,805 and race 6,000 of 17,375), and a character needs only its own class (one of nine) and race (one of eight). **Proposal** (not done here): class and race packs loaded for the character only, as the area packs are for its area; the resident lines would fall to about 15 MB and the whole addon to about 40 MB at 270,000 texts per language. The need model and the waves do not change: the lines stay in the same pools.

## Update: the memory proposal (C0f, 2026-11-06)

The proposal above is done in [ADR 0053](0053-lines-of-the-character-only.md), without packs by class and race: a rule whose top-level `class` or `race` leaves out the character's is not registered, in any pack, and its texts are dropped. The same projection (folders by area, one language, the resident clones with the class and race pools of the need model, a Warrior Orc): at 270,000 texts per language 59.5 → 23.2 MB at login and 74.6 → 38.4 MB at most after every area; at 100,000, 26.6 → 15.0 and 33.5 → 21.2 MB. The picks of a character are byte-identical.

## Alternatives considered

- **More dimensions in the index** (faction, level band, combat). They would keep more lines out of the generic group, but the groups of the character's own zone, class and race keep growing with the waves: it moves the line, it does not bound it. They can still be added later, and they make the sample find more lines that hold.
- **A cache of the eligible rules per event and context.** The conditions read dozens of fields of the context (combat, time, weather, health, emotions, relations, the target...), so a key that is exact is about as costly as the check, and one that is not would give lines whose conditions fail.
- **Rejection sampling over the weights** (draw a rule, accept it with probability W / Wmax). Exact in distribution, but the weight has no useful upper bound (the hooks of place, soul and emotions multiply it) and an unlucky bound makes it slow; the sample of `SAMPLE_KEEP` rules weighed as before keeps the weights' effect without one.
- **Weighing only a sample of the eligible rules, checking all of them.** Checking is about a third of the cost: still linear.
- **Fewer kept rules.** `SAMPLE_KEEP` = 16 per tier keeps the novelty factors (theme, motifs, voice, tone, uses) choosing among enough lines; the cost of a pick is already flat with it.

## Consequences

- Positive: a pick costs about the same with today's lines and with the random need's, and so does its 95th percentile; the composite pick no longer walks the event; the wall-clock check no longer fails on a busy machine, while a regression in instructions now fails on any machine.
- Negative or costs:
  - The picks of a large event change by design: a seeded trace (`Tests/trace_picks.py`) differs from `main` where an event has more than 64 candidates and a tier more than 24. Small events pick exactly as before.
  - Inside a sampled tier the weights choose among 16 lines, not among all: a line of large weight is a little less favoured than before against the many it no longer meets in every pick; every line that holds has the same chance to be met.
  - A rare line in a large tier of lines that do not hold is reached less often (§1.5).
  - The splits of the groups of the index cost memory once made: about one ord per rule and group read (measured below).
  - **Memory, not the pick, is the limit at the random need** (§4): about 74 MB in one language at 270,000 texts per language, most of it the resident lines (generic, situation, class, race), always in memory. Loading the class and race lines of the character only (packs by class and race, like the area packs) would bring it to about 40 MB; it is proposed, not done here.

## References

- PR #250 (the finding), issue #138, [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md), [ADR 0048](0048-column-store-and-regional-packs-by-area.md), [ADR 0049](0049-compact-area-sources-and-a-change-spread-over-frames.md), [ADR 0050](0050-need-model-near-duplicates-and-content-waves.md), [ADR 0051](0051-tiers-mixed-by-share.md).
- `AzerothUnspoken/Engine/WeightedSelector.lua` (`SAMPLE`, `SAMPLE_FROM`, `SAMPLE_SCAN`, `SAMPLE_KEEP`, `SAMPLE_CHECKS`, `SAMPLE_DRAWS`, `Engine:SampledEligible`, `Engine:RuleCheck`, `Engine:PickOwn`), `AzerothUnspoken/Engine/PhraseRegistry.lua` (`Engine.Split`, `Engine:SituationalCandidates`).
- `Tests/TestSelection.lua` (C0e tests), `Tests/TestScale.lua`, `Tests/bench_scale.py` (`--texts`, `--resident-share`), `Tests/bench_m2.py` (`COUNT_EVERY`, `pick_kinstr`, `pick_mean_ms_median`), `Tests/run_tests.py`, `Tests/perf_baseline.json`, `Tests/SyntheticArchive.lua` (`SYNTH_TEXTS_PER_ENTRY`).
