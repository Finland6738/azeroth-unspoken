# 0050. A need model for the content, a near-duplicate check, and the content waves

- Status: Accepted (offline tools; the rates of the model are hypotheses, measured only in the simulated trial slice)
- Date: 2026-11-02 (phase C0c, the last technical step of the content-scale plan approved on 2026-11-02, issue #138; follows [ADR 0048](0048-column-store-and-regional-packs-by-area.md) and [ADR 0049](0049-compact-area-sources-and-a-change-spread-over-frames.md))

## Context

The owner's goal is 100,000-300,000 whole, hand-written texts per language, enough for 400 or more hours per character without an exact repetition ([ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md); [ADR 0001](0001-engine-and-narrative-database-separated.md): no composition from fragments). C0a and C0b made the engine hold 300,000 entries per language. The archive held 1,968 intentions and 4,643 texts per language. Before writing a hundred thousand texts the project needs to know **where** they are needed (which event, place and condition), **how many** each needs, **in which order** to write them, and a guard against the cheapest way to reach a number: texts that differ by a word.

What the engine does with a pool decides what "enough" means:

- the selection index groups the rules of an event by the first of zone, subzone, mapID, class, race, mood, creature type and time that their conditions name (ADR 0024); faction, weather and level are checked apart; a zone condition puts a line at tier 2, a class or race at tier 1, and the most specific tier with three unused lines speaks first (ADR 0029);
- the anti-repetition remembers per event the last `min(30, 60% of the candidates)` rules and, for a rule, only its last variant: beyond that window **the pick is random**. A pool of N texts drawn k times repeats about `k - N (1 - e^(-k/N))` times whatever its size, so no size makes "no repetition in 400 hours" certain;
- the trial slice (R5, PR #241) measured 20-25 interventions per hour at the default pace, a third of them the speak key.

## Decision

### 1. The need model (`tools/archive/need.py`, `tools/archive/need_model.json`, `cli need`)

1. A **pool** is an event and one value of one layer: `place` (a zone, a capital or an instance; a contested zone, one without a faction in `Data/Places.lua`, has a pool per faction), `class`, `race`, `faction`, `mood` (the atmosphere of the zone, `Data/Vocabulary.lua`), `time`, `weather`, `ctype` (the creature fought), `band` (the level band, `levelMin`/`levelMax`), or the generic lines of the event. These are the dimensions the engine indexes, plus the three it checks apart. Voice, temperament and register are weights, not partitions: they are spread inside a pool (WAVES.md), they do not multiply it.
2. **Rates.** `Tests/bench_trial.py --mix H --model` plays the three characters of the trial slice through the real Narrative Director with a quest handed in every 9 minutes, a level every 3 hours, a merchant at every rest and a flight on every change of zone, and writes the interventions per hour of every event in the open world and in a capital (20 hours per character and seed, two seeds: 36.6 and 28.3 interventions per hour before scaling). An instance speaks like the open world without the events of the open (weather, rest, quests...). The events the run does not drive (the social commands, NPC dialogues, groups, companions, arcs, boss kills, dawn and dusk, which come from `DIEL_CYCLE_CHANGED`) have **assumed** rates. Every setting is scaled to **22.5 interventions per hour**, the measured default pace; the measured mix keeps the share of each event.
3. **Shares.** For every group of events the model says which share of its firings a pool of each layer should answer (`layers`): the place events 70% their place, the speak key 35% its place and 10% each class and race, fights 25% the class, 15% the creature, and so on; the rest is the generic pool. This is the **plan of the waves**, not a measure: lines of the same tier share the firings in proportion to the size of their pools, so pools sized by the model give these shares, provided a place line of an event that is not a place event carries `tier = 1` (as the trial slice already does for fights, people and manual events), or it would silence the class and race lines there.
4. **Lives.** A typical character is a race on one of two routes of its faction (16 characters; a class changes only its class pools and the companions: 80 race and class combinations): the starting zone, the zones of the band 10-20 of its race, then the route's zones by level band (10, 22, 30, 38, 45 and 55 hours), with 5-10% of the time in the capitals and 10-15% in the dungeons of the band, then 200 hours at level 60 (35% in the capitals, 20% in the endgame zones, 20% in dungeons, 15% in raids, 10% in battlegrounds). A life is 800 slots of half an hour.
5. **Need.** For a character, a pool fires its event's interventions in the slots where its value holds, times its share (a layer that does not hold in a slot, a mood in a zone without one or the weather inside an instance, gives its share to the generic pool there). The **strict need** of a pool is the most it fires for any character in 400 hours, the **soft need** the most in any 40 hours in a row: a text is shared by every character, a life is not, so the need of the archive is the sum over the pools of the most any character fires. A pool that fires less than once in a life needs nothing.
6. **What the archive has.** An intention counts for the pool of the first condition it names, in the order place (a zone, a map, the area of its pack for a subzone or a landmark), class, race, faction, mood, time, weather, creature, level band; otherwise for the generic pool; with the texts a pick can say at the default depth (`literary`: the variants of that depth or of none). The **gap** of a pool is its need minus what it has, per language.
7. `cli need --write` writes `docs/content/NEED.md`, `docs/content/need.json` (one pool and one wave per line) and the table of `docs/content/WAVES.md`; `cli need --wave W01` prints the pools of a wave with the conditions to write. `Tests/check_archive.py` tests the model and warns when the committed report is stale.

### 2. What the model says (approved content of 2026-11-02)

| | texts per language |
|---|---|
| strict need (no text twice in 400 hours, exhaustive anti-repetition) | **30,347** |
| soft need (none twice in any 40 hours) | **7,341** |
| usable texts today / gap to the strict need | 4,301 / **28,462** |
| gap to the soft need | 6,539 |
| texts beyond the need of their pool | 2,416 |
| today's random pick: at most 10% / 5% of the interventions of 400 hours repeated | **~137,000** / **~284,000** |

The strict need splits as class 10,649, place 8,455, race 6,776, generic 2,058, level band 709, faction 510, creature 382, mood 361, time 227, weather 220; by event the speak key (`muse`) 9,341, `battle` 3,729, `victory` 3,254, `quest_complete` 2,390. A starting zone needs 64 texts (its 9 hours), Orgrimmar and Stormwind City 759 each (home of two races and hub of their faction, most of it in the life at 60), the other capitals 461, an endgame zone about 110 per faction. The `zone` event almost never speaks in the simulation (the subzone, the return and the flight take the moment): its 229 intentions are mostly beyond its need.

**The owner's range of 100,000-300,000 is what today's random pick needs** to keep exact repetitions to 5-10% of 400 hours; an anti-repetition that exhausts a pool before repeating would need about 30,000. This ADR does not change the engine: an exhaustive memory of what each character was told (one bit per text of a pool, about 37 KB per language at 300,000 texts, in the SavedVariables) is a follow-up decision with the memory budget (D3). The waves are planned on the strict need, which both choices need first.

**Owner decision (2026-11-02):** keep today's random pick, with no exhaustive memory of what was said, and write waves up to about 284,000-300,000 texts per language: the figure for at most 5% of exact repeats in 400 hours. `cli need` has a third target, the **random need** of every pool (its strict firings times `random_factor(0.05)`, about 10; `random_repeats` in the model), spread over the pools like the strict need; the waves go on past the strict need up to it (W01 unchanged).

### 3. Near duplicates (`tools/archive/neardup.py`, `cli check`, `cli dups`)

1. A text is normalised to its words (lower case, no punctuation, a placeholder one word). Two texts of one language are **exact duplicates** when their words are the same: `cli check` fails on one, unless every pair of intentions of the group is in `allow_exact` of `tools/archive/thresholds.json` (reviewed twins). Today there are two such groups, the female and male lines of a friend, the same in English: allowed, and the owner may rewrite one.
2. They are **near duplicates** when the Jaccard index of their sets of word 3-grams is at least **0.5**: a warning in `cli check`; **a wave must add none** (`cli dups --state draft`). Today: 6 pairs in English, 4 in Italian (the gendered twins, the guard of Durotar and the grunt of Orgrimmar, two battle cries, two welcomes of an enemy town, an indifferent greeting and farewell).
3. An **opening or closing** of 3 words shared by more than max(10, 0.2% of the texts of at least 5 words) is over-used, a warning. Today: "they say the" (12) and "at a time" (19) in English, "di nuovo qui" and "da qualche parte" (11) in Italian.
4. The index is **prefix filtering**: the shingles of every text sorted rarest first, only the first `len - ceil(0.5 len) + 1` indexed and probed; two texts at 0.5 or more must share one of them, so every pair is found (the test compares it with all pairs). Today's 9,286 texts take under a second; 300,000 synthetic texts of one language (a word chain over today's English, more repetitive than real lines) take about 37 seconds on a loaded PC.

### 4. The waves (`docs/content/WAVES.md`, `cli sample`)

1. A wave is about 2,500 texts per language (2,000-3,000), one session with parallel writer subagents like PR #241. The plan fills the soft need of every pool first, then the strict need; units of work are a place, a class, a race, a mood... or the generic lines of an event, in the order generic, starting zones, capitals, class, race, faction, mood, time, weather, creature, level band, zones by band, dungeons, endgame zones, raids, battlegrounds, the most often met first; after the strict need, the random need (the owner's decision in §2). Today: **11 waves** to the strict need, **97** to the random one (planned on 2026-11-02, about 2,900 texts each). The table is regenerated after every wave; the next wave is always its first row.
2. "How to run a wave" in WAVES.md: author ids `ai-wNN-<unit>`, id prefixes, where the lines go, the writing rules, the archive flow (`drafts`, `dups --state draft` clean, `submit`, review sheets, `approve`, `export`, `check`), the checks to pass, the owner's review.
3. `cli sample` draws a random review sheet (seeded) of about 2% of the chosen intentions (`--state`, `--pack`, `--by` author), at least 10, plus **every literary piece**, which always goes to the owner's review.

## Alternatives considered

- **Running the real engine for 400 hours per character.** It measures what today's content gives, not what a pool needs, and needs content in every zone to be meaningful. The bench measures the mix of events, where the Director's budgets and cooldowns live; the need is then arithmetic, 7 seconds for every pool.
- **Pools for every combination of conditions** (race x class x zone x time...). The engine indexes one dimension per rule, and a product of dimensions explodes the need without the player noticing; layers with shares keep the pools the engine actually draws from.
- **Summing the need over characters.** A text serves every character; summing would count the same line once per character that can hear it.
- **MinHash or embeddings for the near duplicates.** MinHash is approximate and, in pure Python, slower than prefix filtering; embeddings need a model and a dependency, against the offline, standard-library tools of the archive.
- **Blocking near duplicates.** Gendered twins and deliberate echoes between a town and its capital are near duplicates on purpose; a warning that a wave must not add keeps the old ones visible without failing the build.

## Consequences

- Positive: every content session knows the next 2,500 texts to write, their conditions and their counts; the gap and the plan update from the archive; duplicates are caught before review; the owner reviews a sample and every literary piece.
- Negative or costs:
  - The shares, the routes and the assumed rates are hypotheses: the need of a layer moves with its share (the class pools are a third of the strict need because fights give 25% to the class). They are data in one JSON file, meant to be tuned with `/au prof` in game.
  - The strict need assumes an exhaustive anti-repetition the engine does not have; with today's random pick, pools of exactly that size would repeat up to about a third of the interventions of 400 hours (less with the weight that favours rules used less). The waves are useful either way; the choice (more texts, or the memory) is the owner's.
  - The need counts texts, not intentions: a writer chooses how many variants an intention has (two or three, as today), so a wave of 2,500 texts is about 1,000 intentions.
  - `need.json` (0.5 MB) changes with every wave.
  - Near-duplicate candidates are computed at every `cli check`: about half a minute per language at 300,000 texts.


## Update: the shares of the levels (#138, 2026-11-04)

The engine now mixes the levels of specificity by share ([ADR 0051](0051-tiers-mixed-by-share.md)), so the model distributes the firings the same way (`tier_shares` in `need_model.json`: place 50%, situation 35%, generic 15%, renormalised over the levels the event plans; the weights of `layers` split the situation share). §1.3 no longer needs `tier = 1` on the place lines of other events, and in §1.5 a layer that does not hold in a slot leaves its share to the other layers of its level, not to the generic pool. The need after W01 becomes 28,938 texts per language strict, 8,893 soft, 270,686 random (92 waves left; it was 30,347, 7,341, 284,731 and 96).

## References

- `tools/archive/need.py`, `need_model.json`, `neardup.py`, `cli.py` (`need`, `dups`, `sample`, `check`), `thresholds.json` (`near_duplicates`); `Tests/bench_trial.py` (`--mix`), `Tests/check_archive.py` (`need_report`, `near_duplicates`).
- `docs/content/NEED.md`, `docs/content/need.json`, `docs/content/WAVES.md`.
- Issue #138; [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md), [ADR 0027](0027-sqlite-authoring-archive-and-exporter.md), [ADR 0029](0029-specificity-tiers-themes-motifs-and-category-quotas.md), [ADR 0048](0048-column-store-and-regional-packs-by-area.md), [ADR 0049](0049-compact-area-sources-and-a-change-spread-over-frames.md); PR #241 (the trial slice).
