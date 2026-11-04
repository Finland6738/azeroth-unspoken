# 0051. The tiers mixed by share, and data files under Lua's limit of constants

- Status: Accepted (offline tests and projections; nothing measured in the client yet)
- Date: 2026-11-04 (owner decision of 2026-11-04 on the finding of content wave W01, PR #246; issue #138; amends [ADR 0029](0029-specificity-tiers-themes-motifs-and-category-quotas.md) §1 and [ADR 0050](0050-need-model-near-duplicates-and-content-waves.md) §1.3 and §1.5)

## Context

Content wave W01 (PR #246) found two problems that the content waves of ADR 0050 would make worse with every wave.

1. **The generic lines go silent.** `Engine.TierPool` (ADR 0029) kept only the most specific tier that, with the tiers above it, still had `TIER_MIN` (3) candidates not used recently. Generic lines are tier 0; class, race, faction, mood, time, weather and level-band lines tier 1; a zone's own lines tier 2 (a subzone 3, a landmark 4). The anti-repetition window of an event holds at most 30 picks. Once the specific pools of an event hold more than about 33 lines for a character, the window never empties them, and the generic lines of the event, monologues included, are never reached again: after W01 an orc warrior in Durotar has about 55 specific `muse` intentions. The waves fill exactly those specific pools, so every generic pool would go silent one event at a time, while the need model gives the generic pools a share of the firings. The workaround of the trial slice (`tier = 1` on the zone lines of fights, people and manual events, so a zone condition would not silence the class and NPC lines) only moved the problem down one tier.
2. **"constant table overflow".** Lua 5.1 keeps at most 262,143 constants (distinct strings and numbers, `MAXARG_Bx`) in one function, and a data file is one function. `Tests/bench_scale.py --sizes 50000` stopped compiling its synthetic archive (one chunk with 50,000 rules and their texts in two languages: about 300,000 distinct strings). At the owner's target, 270,000-300,000 texts per language, a base texts file would also pass it: the class lines alone are planned at about 100,000 texts per language, each text and each id one constant.

## Decision

### 1. Every level of specificity keeps a share of the picks (`Engine.TierPool`)

1. The tiers form three **levels**: generic (tier 0), situation (tier 1) and place (tiers 2-4). Each level has a share, data in `Engine.TIER_SHARES` (`Engine/WeightedSelector.lua`): **place 50, situation 35, generic 15**.
2. Inside the place level nothing changes: the most specific tier with `TIER_MIN` candidates not used recently, counting the tiers above it, wins with them (landmark → subzone → zone).
3. A level whose candidates not used recently are fewer than `TIER_MIN` competes inside the level below it, which takes its share too (one or two zone lines compete with the class lines, as one or two lines competed with the tier below before). The generic level stands with a single such candidate: it has no level below, and a generic line outside the window must stay reachable.
4. The pick draws one level by share, **renormalised over the levels that have a candidate not used recently**, then picks among that level's candidates exactly as before: weights (`W = B × C × P × N × S × R × E`), the anti-repetition window (still sized from every candidate of the event), the variants. With a single level, or none usable, every candidate stays and no random number is drawn, so an event with only generic lines picks as before.
5. So specific lines stay preferred (when all three levels have fresh lines, the place level is drawn 3.3 times as often as the generic one, the situation level 2.3 times) and **no level with usable lines goes silent**. The fallback to the related event and then silence are unchanged; `Engine.R1_COMPAT` still turns the tiers off.
6. The defaults follow the owner's example of 2026-11-04 (zone 50%, class/race/faction/mood 35%, generic 15%). Subzone and landmark lines share the place level with the zone ones rather than taking a share of their own: they already win inside it while they have three fresh lines, and a fourth share would make the place level grow with every subzone line written.
7. With a single level, `Engine.TIER_SHARES = { [0] = 1 }`, the pick is exactly the one of ADR 0029: `Tests/trace_picks.py --one-level` prints the same 3,000 picks as `main` before this change (checked), and `--r1` still prints those of R1.
8. The `tier = 1` written on the zone lines of fights, people and manual events (trial slice and W01) is no longer needed: new place lines take their deduced tier and the place share. The lines already written keep it and compete in the situation level (`docs/content/WAVES.md`, step 4).

### 2. The need model distributes the firings with the same shares (`tools/archive/need.py`)

1. `need_model.json` gains `tier_shares` (`generic` 0.15, `situation` 0.35, `place` 0.5); `Tests/check_archive.py` checks that they are the engine's.
2. For each event and slot, every level the event plans (`layers`) and that holds in the slot answers its share, renormalised; the generic level always holds. The weights of `layers` now only split the situation share among the situation layers (class, race, faction, mood, time, weather, creature type, level band); a place weight says that the event has place pools.
3. A layer that does not hold in a slot (a mood in a zone without one, the weather inside an instance) leaves its share to the other layers of its level there, or, when none is left, to the other levels; before, it fell to the generic pool. The slots are counted in six channels (the setting, and whether the zone has a mood).
4. **What the model says now** (approved content after W01): strict need 28,938 texts per language (30,347 before), soft 8,893 (7,341), random 270,686 (284,731); gap 6,205 to the soft need, 24,667 to the strict one, 265,351 to the random one; **92 waves** left (96). By layer (strict): place 11,563 (8,455 before), class 7,805 (10,649), race 6,000 (6,776), generic 1,513 (2,058). The place pools grow because place answers 50% of every event that has place pools (the speak key planned 35%, fights 15%); the generic pools shrink because they answered the rest before (60% of `relation_player`, 25% of fights) and now 15%, or 30% where an event has no place pools.

### 3. Data files stay under Lua's limit of constants

1. **The exporter** (`tools/archive/store.py`). A texts file written as a table holds at most `TEXTS_PER_FILE` (20,000) entries: about 70,000 constants in a language, a quarter of the limit. Past it, the new entries of its pack and language go to the next file of the group, then to a new file `<name>_2.lua` (the prelude of the first file, a comment saying why) listed in the folder's `.toc` right after the last one. `NS:AddTexts` merges the texts of a pack from any number of calls, so what is registered does not change. The archive reads the new file back (`discover`, also for `Texts*.lua` of an extra folder) and the round trip stays an empty diff. A file over `packfiles.SAFE_CONSTANTS` (200,000, counted as its distinct strings and numbers) is refused before anything is written.
2. Rules files are not split: a rule is about one constant of its own (its id; registers, tags and conditions repeat), so a base pack would need over 200,000 rules. Regional sources (ADR 0049) are one string each and are compiled by `Packs:ReadSource` a piece at a time; the codec dictionaries (`tools/build_codec.py`) hold at most 2,993 strings by construction.
3. **The synthetic archive** (`Tests/SyntheticArchive.lua`) writes its entries in blocks of `SYNTH_BLOCK` (5,000), each block a function of its own whose table is copied into the registry and the texts registered once, as before.
4. Today the largest data file has 1,668 constants (`AzerothUnspoken_itIT/Classes.lua`); `Tests/check_archive.py` checks every file and the split.

### 4. Measured

- **Picks** (`Tests/trace_picks.py`, 3,000 seeded picks on the real data): 2,787 differ from `main`, by design; by level, generic 38.2% → 50.5%, situation 58.5% → 47.3%, place 3.3% → 2.2% (the trace visits ten zones, few of which have place lines yet). `--one-level` and `--r1` print the same file as `main`.
- **Repetition** (`Tests/bench_trial.py --long 20`, the three characters of the trial slice, 20 hours each, `main` → this change on the same machine): first exact repetition at 3.35 → 4.51 h (orc warrior), 5.09 → 5.68 h (troll mage), 3.75 → 3.85 h (human paladin); texts repeated in 20 hours 19.0% → 12.3%, 16.4% → 13.5%, 21.5% → 14.2%. The generic lines, unreachable before, widen the choice.
- **Scale** (`Tests/bench_scale.py`, one synthetic archive for both versions with `--archive-dir`): 50,000 entries in one language compile again: 42.4 MB (642 B per entry; 38.9 MB and 641 B in ADR 0048, before W01 grew the base from 9.9 to 11.8 MB), a pick 77.4 thousand instructions (p95 139.1) against 76.7 (137.4) with the old tiers, +0.9% for the draw of a level. In both languages 60.6 MB. The 300,000-entry projection by area (`--areas`, which ran before this change too): 37.6 MB with the first area, at most 71.2 MB after every area, a change of area spread over about 184 frames of 3.54 ms on average (p95 4.07 ms, at most 7.71 ms), picks in the last area 70.2 thousand instructions (p95 118.4); ADR 0049 measured 36.2 MB, 69.0 MB and 2.90 / 3.96 / 7.76 ms before W01. With one folder per continent: 67.8 MB with the first area, 60.5 MB after every area, 154-255 ms in the frames that load a continent's folder (ADR 0049: 65.6 MB and 234-267 ms).
- The suite's projection (2,000 entries): 22.6 thousand instructions per pick against the reference of 20.2 (no warning).

## Alternatives considered

- **Stop writing the generic pools** of the events whose specific pools are full (the other option of PR #246). It keeps the old pick, but a character without specific lines (a zone with none yet, a class with few) would still need them, and monologues and literary pieces are mostly generic; the need model would have to know, per character, which pools speak.
- **A larger `TIER_MIN`, or a window counted per tier.** Both only move the point where the generic lines go silent: the waves keep filling the specific pools until any threshold is passed.
- **A specificity bonus on the weight instead of levels** (already declined in ADR 0029): with pools of very different sizes a weight cannot give a level a share; the share of a level would grow with the number of its lines.
- **Shares per event in the data of the events.** Possible later (an event could declare its own `tierShares`), but the model would then have to read them from the Lua data; one table, checked against the model, is simpler while the defaults hold.
- **Base texts as compact sources too**, read piece by piece like the regional ones. It would remove the limit for every file, but it changes the form of every base file and what the login costs; splitting the files keeps them as they are until one is full.

## Consequences

- Positive: the generic lines of every event, monologues included, keep about 15% of the picks wherever they have a line outside the window; specific lines stay preferred. The waves no longer need the `tier = 1` workaround. The need model plans the same mix the engine picks. 50,000 entries compile again, and no exported file can reach Lua's limit.
- Negative or costs:
  - The picks change by design whenever an event has candidates in two or more levels: the seeded traces of `Tests/trace_picks.py` differ from `main` (`--r1` traces do not: the tiers are off there). A tier draw costs one random number per pick with two or more levels.
  - Place lines no longer win every pick while they are fresh: a zone with three or four lines of an event says them in about half the picks of that event (more where the event has no situation lines) until they are in the window, then steps aside. The shares are hypotheses to tune with `/au prof` in game.
  - The `tier = 1` lines written before keep their tier: they compete in the situation level, not the place level, so the model counts them as place pools a little generously.
  - The need changes per pool (place up, class and generic down), so the waves table is regenerated and renumbered.
  - Not done: per-event shares; base texts as sources.

## References

- Issue #138, PR #246 (the finding), owner decision of 2026-11-04.
- `AzerothUnspoken/Engine/WeightedSelector.lua` (`TIER_SHARES`, `TierPool`), `tools/archive/need.py` (`level`, `plan`, `shares`, `channel_shares`), `tools/archive/need_model.json` (`tier_shares`, `layers`), `tools/archive/store.py` (`TEXTS_PER_FILE`, `export_folders`), `tools/archive/packfiles.py` (`constants`, `SAFE_CONSTANTS`), `Tests/SyntheticArchive.lua` (`SYNTH_BLOCK`).
- `Tests/TestSelection.lua`, `Tests/TestScale.lua`, `Tests/TestDynamism.lua`, `Tests/check_archive.py`, `Tests/bench_scale.py`, `Tests/trace_picks.py`.
- [ADR 0029](0029-specificity-tiers-themes-motifs-and-category-quotas.md), [ADR 0048](0048-column-store-and-regional-packs-by-area.md), [ADR 0049](0049-compact-area-sources-and-a-change-spread-over-frames.md), [ADR 0050](0050-need-model-near-duplicates-and-content-waves.md), `docs/content/NEED.md`, `docs/content/WAVES.md`.
