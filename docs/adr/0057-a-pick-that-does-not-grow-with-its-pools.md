# 0057. A pick that does not grow with its pools: weights read where the pick needs them, and the tiers of a large group kept as it loads

- Status: Accepted (offline tests and projections; nothing measured in the client yet)
- Date: 2026-11-09 (C0j, issue #138; the M2 gate of [ADR 0052](0052-a-bounded-pick.md) trending toward failure over content waves W10-W15; amends ADR 0052 §1.1 and [ADR 0056](0056-pool-shares-the-npc-voice-and-short-lines-in-battle.md))

## Context

ADR 0052 bounded the pick of a large event: each specificity tier keeps at most `SAMPLE_KEEP` (16) rules that hold out of at most `SAMPLE_CHECKS` (48) checked, and `run_tests.py` fails when the simulated M2 session (`Tests/bench_m2.py`) costs more than 1.5 times its reference of 42.7 thousand Lua instructions per pick (64.1). Across the generic waves the M2 pick still climbed: 47.8 after W10, 53.9 after W11, 55.1, 51.5, 53.9 and 56.8 after W15 (p95 88.3), each wave adding 1,000-1,200 generic intentions to `muse`, `battle`, `victory`, `quest_complete`, `subzone_enter`, `journey`, `lowhp`, `heal`, `npc_meet` and smaller pools. About 80 waves are left (ADR 0050: a random gap of 231,729 texts per language), so the gate would have failed within a few waves. `bench_scale` (every line loaded, a fixed sequence of picks) stayed near 31.6 (p95 65.0).

**Profile** (W15 content, `main`, the M2 session with every pick counted, three seeds, 519 picks: mean 52.7, p95 95.6 thousand instructions):

| event, form | picks | mean | share of the cost | checks | candidates | weighed |
|---|---|---|---|---|---|---|
| `muse` emote | 104 | 86.0 | 33% | 88 | 2,317 | 72 |
| `muse` say | 112 | 48.1 | 18% | 59 | 1,982 | 44 |
| `battle` emote | 48 | 77.5 | 13% | 98 | 765 | 63 |
| `battle` say | 45 | 42.6 | 6% | 57 | 645 | 33 |
| `victory` emote / say | 15 / 25 | 77.8 / 41.5 | 8% | 108 / 62 | 630 / 510 | 62 / 33 |

By function (a sampling profiler on the picks): **weighing** (`Score` and its hooks) 46% of the instructions, the bounded sample (`SampledEligible`) 38%, of which the checks 18% and the **split of the groups by tier** (`Engine.Split`) 6%. No pick walked a whole pool in this session: the cost grew because more tiers of more events crossed `SAMPLE_SCAN` and filled their 16 kept rules (an emote of `muse` already weighed 72 rules: 16 per large tier, for the emote and again for the character's spoken lines told in a frame), and because the split of a group, made by the first pick that read it, costs the size of the group.

**A pool grown in place** (`Tests/bench_pool.py`, new: the generic and situation pools of `muse`, `battle`, `victory`, `lowhp`, `heal` and `attack` cloned to 4 and 16 times their rules, the M2 session played on them, every pick counted) showed what the next waves would do on `main`:

| pools | candidates of `muse` (orc, say) | mean | p95 | `muse` mean / p95 |
|---|---|---|---|---|
| 1x (today) | 1,974 | 55.2 | 104.2 | 70.4 / 119.9 |
| 4x | 7,836 | 68.1 | 167.7 | 91.3 / 338.0 |
| 16x | 31,284 | 134.2 | 450.5 | 181.8 / 1,214.9 |

At 16x three quarters of a pick's instructions were `Engine.Split` and `Engine.Tier`: the first pick of each event in a session split groups of tens of thousands of rules. `bench_scale` did not see it because its sequence repeats fifteen events four hundred times: the splits are made in the first fifteen picks and vanish in the mean.

## Decision

### 1. A weight is computed when the pick first reads it (`Engine.Lazy`, `Engine/WeightedSelector.lua`)

The candidates of a pick (`Engine:PickOwn`) no longer carry their weight from the start: each is a table whose `w` is computed by `Score` (or `ScoreMemo`) the first time something reads it, and kept. What reads it:

- `Engine.SharePool` (ADR 0056) reads the preferred candidates only until it finds one outside the window with a weight above 0;
- `Engine.TierPool` (ADR 0051) **counts the fresh candidates of each tier only up to `TIER_MIN`** (3). The levels read those counts only through "more than 0" and sums "at least `TIER_MIN`", which give the same answers with every count capped at `TIER_MIN`: if a tier reaches it the sum does, and otherwise every count is exact. So the same level is drawn, with the same random number;
- `Engine.WeightedPick` reads the weights of the level drawn, the window tested first (a recent rule is not weighed for nothing).

A weight reads the rule, the context, the memory of uses, the last tone and the novelty of the session, none of which changes before the pick is said, and draws no random number (the hooks of place, soul, relations, emotions and interlocutor are pure): reading it late gives the number reading it early gave. **The picks are the same, random number for random number**: `Tests/trace_picks.py` prints the same 3,000 picks as `main`, and the M2 session the same interventions. A pick weighs about 3 rules per tier and the rules of the level drawn instead of every rule kept: an emote of `muse` about 25 instead of 72.

### 2. A large group keeps its tiers as rules join and leave it (`Engine.SPLIT_EAGER`, `Engine/PhraseRegistry.lua`)

1. A group of the index of at least `Engine.SPLIT_EAGER` (64) rules is split by tier **when its rules are registered** (`AddToIndex`, and `EndStaging` for the rules of an area) and extended by each rule added, as `Engine.Split` already extended a split by the rules added after it. The work moves from the first pick that reads the group to the loading of the rules, where it is a few operations per rule: no pick splits a large group. A smaller group is split by the first pick that reads it, as before: at most 64 rules.
2. When a pack is hidden (`HidePack`: an area left, a pack dropped) the split of each group it leaves is **cut in place** (`CutSplit`): its tier lists lose the same rules, walked from the first ord of the pack (the lists are in order of registration, as the groups are). Before, the split was thrown away and the next pick made it again from the whole group.
3. The splits of a pool share (`Engine.SplitShare`, ADR 0056) are **kept with the split of the group**, extended with the rules added since (the share's test asked only of rules it has not seen) and cut with it. Before, they were made again from the whole group whenever the group changed.
4. `SampledEligible` reads the split of each open group once per pick, not once per tier.

The splits hold the same rules in the same order as when they were made by the first pick, so the sample draws the same rules: the trace does not change.

### 3. The cost of a pick is gated against the size of its pools (`Tests/bench_pool.py`, `Tests/run_tests.py`)

`run_tests.py` runs `bench_pool` on today's pools and on pools grown 16 times (1 hour, seed 1; about 70 seconds) and **fails** when the mean pick at 16x costs more than `pool_flat_ratio` (1.25) times the mean at 1x, or its p95 more than `pool_p95_ratio` (1.5) times (`Tests/perf_baseline.json`). On `main` the ratios were 2.5 and 4.2; with this change 0.93-0.99 and about 1.0 over three seeds. A change that makes a pick walk a pool again fails in the PR that makes it, before the waves grow the pools. The M2 reference is reset on purpose (`m2_pick_kinstr` 42.7 → 36.4, `history` says why): the gate keeps failing at 1.5 times it.

### 4. Measured

Offline, lupa on one PC, `main` (W15) → this change, same content; thousands of Lua instructions per pick, mean / p95; times are CPU time.

| measure | `main` | this change |
|---|---|---|
| M2 session (`bench_m2`, 3 hours, three seeds, one pick in five counted) | 56.8 / 88.3, 0.90 ms | **36.4 / 56.0**, 0.69 ms |
| M2 session, every pick counted (519 picks) | 52.7 / 95.6 | 35.5 / 61.5 |
| `bench_pool` 1x / 4x / 16x (two seeds) | 55.2 / 68.1 / 134.2 (p95 104 / 168 / 451) | **34.6 / 33.8 / 33.1** (p95 58.8 / 59.5 / 60.1) |
| `bench_scale --sizes 0` (every line loaded) | 31.6 / 65.0, max 3.3 ms | 24.0 / 48.8, max 0.9 ms |
| `bench_scale --sizes 50000` | 38.1 / 75.6, max 22.7 ms | 28.4 / 58.5, max 1.4 ms |
| by area, 270,000 texts per language (`--areas --texts 270000 --layout area`) | 41.3 / 94.2 | 27.8 / 56.3 |

- The M2 metrics are the same numbers to the last digit (same theme 2.13%, "says" and "murmurs" 3.10%, combat 34.5%): the same picks.
- **Memory**: the splits of every large group, made at load instead of only for the groups a pick read: +0.2 MB with today's lines (37.3 → 37.5 MB, 37.6 → 37.8 after the picks), +0.6 MB at 50,000 synthetic rules (94.5 → 95.1), and by area at 270,000 texts per language +0.5 MB at login (27.3 → 27.8) and +0.7 MB at most (43.0 → 43.7).
- **Load and area changes**: the time to load the synthetic archives and to change area does not grow beyond the noise of the machine (a change of area at 270,000 texts: 168 → 167 ms of addon time in all, 3.37 → 3.40 ms per frame).

## Alternatives considered

- **Choosing the level before sampling** (check only enough rules of each tier to know whether it has `TIER_MIN` fresh ones, then sample the level drawn). It would also cut the checks (about a third of what is left), but the window size (`KeepFor`) and the pool shares read counts from the sample, so the picks would change, and every statistical floor would have to be measured again. The cost no longer grows with the pools without it; it stays possible.
- **Fewer kept rules** (`SAMPLE_KEEP`). It lowers the bound but changes the picks, and the weights would choose among fewer lines.
- **Keeping the tiers in the index itself** (groups by tier instead of a split beside each group) would save the memory of the splits, but every reader of the groups (the exact pick, `Candidates`, the tests and tools) would have to merge the tiers back. The splits cost under 1 MB at 270,000 texts.
- **Splitting a group a slice per pick.** The sample would read a part of the group until the split ended: a bias toward the first rules registered.

## Consequences

- Positive: the cost of a pick no longer follows the size of the pools it draws from, on average or at the 95th percentile, and a gate says so for every PR; a pick is about a third cheaper on today's lines, with the same picks; the first pick of an event after login or after an area change no longer pays for its pools.
- Negative or costs:
  - The splits of every group of at least 64 rules stay in memory (about 0.5-0.7 MB at 270,000 texts per language), and loading the rules splits them.
  - `run_tests.py` runs about 70 seconds longer.
  - The composite pick (#100) still checks every line written for a composite situation of the event (13 today). If a wave writes hundreds of them, they should be sampled like a tier.
  - Waves still break tests that list which line ids a pick may return (W15: `TestPlayers`, `TestOtherPlace`, `TestCompanion`). A common helper was considered and not added: each test judges a different property of the line (the NPC's role, the pet's mood, the feeling), and checking only that the rule holds would repeat the engine's own check.

## References

- Issue #138, PR #273 (W15) and the M2 numbers of W10-W15, [ADR 0050](0050-need-model-near-duplicates-and-content-waves.md), [ADR 0051](0051-tiers-mixed-by-share.md), [ADR 0052](0052-a-bounded-pick.md), [ADR 0056](0056-pool-shares-the-npc-voice-and-short-lines-in-battle.md).
- `AzerothUnspoken/Engine/WeightedSelector.lua` (`Engine.Lazy`, `Engine:PickOwn`, `Engine.TierPool`, `Engine.SharePool`, `WeightedPick`, `Engine:SampledEligible`), `AzerothUnspoken/Engine/PhraseRegistry.lua` (`Engine.SPLIT_EAGER`, `AddToIndex`, `Engine:EndStaging`, `CutSplit`, `Engine.Split`, `Engine.SplitShare`).
- `Tests/bench_pool.py`, `Tests/SyntheticArchive.lua` (`SYNTH_POOL_SOURCE`), `Tests/run_tests.py`, `Tests/perf_baseline.json`, `Tests/TestSelection.lua` (C0j tests).
