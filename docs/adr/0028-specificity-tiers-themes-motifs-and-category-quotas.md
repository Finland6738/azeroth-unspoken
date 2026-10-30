# 0028. Specificity tiers, themes and motifs, and per-session category quotas

- Status: Accepted
- Date: 2026-10-30 (phase R3 of the roadmap after the analyses A1 and A2, tracking issue #131; issues #89, #90 and #91)

## Context

The offline analysis A1 measured, with lupa, that what a player notices as repetition is mostly **structural**, not a lack of phrases. Consecutive lines share almost no words (Jaccard 0.004), but:

- one intervention in three is a spoken line inside a narrative frame, and the frames "says" and "murmurs" cover 36% of the frames used;
- a content word comes back within five interventions in 24% of cases; the same theme as the previous line in 8-9%;
- a phrase written for a place weighs only `1 + 0.35` per condition more than a generic one: with 10-15 eligible `zone` lines of which 1-3 name the place, the place-specific line rarely comes out;
- combat is 38-58% of the interventions of a simulated session; `zone` almost never speaks.

The roadmap fixes the exit of R3 on the offline measure M2: the same theme consecutively under 15%, the frames "says"/"murmurs" under 10%. R1 made the selection scalable and proved it equivalent to the old one ([ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md)); the archive of R2 ([ADR 0027](0027-sqlite-authoring-archive-and-exporter.md)) made it possible to label the existing content at scale. R3 is the first change meant to make the selection **choose differently**.

## Decision

1. **Specificity tiers and an explicit fallback chain** (#89, `Engine/PhraseRegistry.lua`, `Engine/WeightedSelector.lua`).
   - Every rule has a tier: `0` generic, `1` situation or region, `2` zone, `3` subzone, `4` landmark. It is deduced from the conditions at the top level and in `place` (`subzone` 3; `zone`, `place.zone`, `place.mapID` 2; `mood`, `instance`, `instanceType`, `place.continent`, `place.tags`, `place.territory`, the capitals 1; any other condition that narrows the moment, a class, a target, a memory, a relation, 1; `chance`, `depth`, `intensityMin/Max` and anything under `not` count for nothing). A rule can write `tier = 0-4` or a name (`generic`, `situation`, `region`, `zone`, `subzone`, `landmark`); `landmark` is only explicit until landmarks exist (#94). The deduced tier is not stored in the rule: `Engine.Tier(p)` computes it once per conditions table (a weak cache), so the rule table keeps its size.
   - A situation and a region share tier 1 on purpose: a line about the death of the last visit must not lose to a line about the forest.
   - **The pick** (`Engine.TierPool`): among the eligible candidates of the event, the selection keeps those of the most specific tier `T` for which the candidates of tier `T` and above that were **not used recently** are at least `Engine.TIER_MIN` (3), and drops the others; if no tier reaches it, every candidate stays, as before. When the specific lines are used, they become recent and the pool widens one tier at a time: landmark → subzone → zone → region, atmosphere or situation → generic of the event. The anti-repetition window keeps the size computed from all the candidates.
   - **Related-event fallback**: an event can declare `fallback = "<event>"` (`events = { rezother = { fallback = "heal" } }`). When an event has no phrase, `PickEntry` tries its fallback, at most three steps and never an event already tried; the record keeps the event asked (`event`) and says which one spoke (`via`). The guard of the fallback event applies. The base declares `rezother` → `heal` and `threat` → `battle`. The validator rejects a fallback to an unknown event and a cycle. Then silence.
2. **Themes, motifs and the thematic memory of the session** (#90).
   - **Closed vocabularies** in `Data/Themes.lua` (pack `base_direction`): 21 themes (courage, duty, glory, wrath, fear, fatigue, mortality, loss, hope, faith, magic, nature, landscape, home, journey, memory, fellowship, growth, mystery, solitude, humour) and 66 motifs (concrete images: blade, blood, road, bread, wind, roots...). A pack can extend them like registers (`themes = {}`, `motifs = {}`, `NS:RegisterTheme`, `NS:RegisterMotif`). A rule writes `theme = "loss"` (one) and `motifs = { "grave", "rain" }` (zero to three); the validator rejects an unknown theme or motif and more than three motifs (`badTheme`, `badMotif`).
   - **The memory of the session** (`Engine.lines`): the last 12 interventions, with their theme, motifs, voice, frame and opening (the first two words) and the time. It lives only in memory and is **never saved**: ADR 0017 keeps texts out of the SavedVariables, and an opening is a fragment of a text. Each presence weighs less as it ages (it vanishes after `THEME_DECAY`, 30 minutes) and the newest one counts twice, so novelty decays with time and not only at login.
   - **Factor N** gains `Engine.ThemeNovelty`: `1 / (1 + 1.5 × presences of the theme in the last 6)`, `/ (1 + 0.8 × presences of the motifs)`, and `× 0.35` when the phrase would be the third in a row in the same voice (a phrase told in a frame is the narrator's). `Engine.Factors` and the hot `Score` stay equal bit for bit.
   - **Openings**: when a phrase has several usable variants, one that opens like one of the last 8 interventions is used only if every other does too.
   - **Frames tied to register and theme**: a frame can declare `styles` (as before) and `themes` (it tells only phrases of one of them, and weighs ×1.5 for them). A frame used in the last 8 interventions, for any event, weighs `/ (1 + 2 × uses)`. The base frames gain 20 frames for every event, tied to a register or to a theme; "says" and "murmurs" become the plain fallback (weight 0.15, tied to the registers they suit).
   - **The existing content is labelled**: all 828 intentions of the archive (base and regional packs) have a theme, 61% of them motifs. The labels were drafted by AI sessions from the English texts with the rules of CONTRIBUTING (theme = the dominant idea of all the variants; a motif only if the image is in most variants) and reviewed on a sample; they went into the folders through the archive (`export`), whose round trip stays an empty diff. The code-generated packs (arcs, ambient dialogues) are not labelled yet.
3. **Per-session category quotas and hunger** (#91, `Engine/Pacing.lua`, `Engine/NarrativeDirector.lua`, `Systems/Director.lua`).
   - **Data**, in `Data/Themes.lua` or any pack (`quotas = {}`, `hunger = {}`, `NS:SetCategoryQuota`, `NS:SetCategoryHunger`), checked by the validator (`badQuota`, `badHunger`).
   - **Quota**: a category may take at most `share` of the last `window` interventions of the last `span` seconds (combat 40% of 10, spellcraft 30% of 10; span 15 minutes). Explicit interventions (the "speak" key, commands) count in the window, because the share is about what the player hears; they are never refused. The allowance is the share of the interventions in the window counting the new one, never less than half of what the full window allows (two for combat), so a session can open with a fight. Exceptional moments (death, resurrection, level up) are never refused. The refusal reason is `quota:<category>` (in `/au debug` and `/au prof`).
   - **Hunger**: a category silent for a while (exploration ×2 after 10 minutes, reflection ×1.5 after 15) multiplies the chance of its events, growing with the silence up to its `factor`, and goes first among the candidates of the same priority (`ND:Order`).
4. **R1 compatibility switch.** `Engine.R1_COMPAT = true` turns off everything above (tiers, fallback, the novelty of themes, motifs, voices, openings and frames, quotas, hunger). With it, `Tests/trace_picks.py --r1` prints the same 3,000 picks as the engine of R1, on the real database and on a synthetic archive of 3,000 rules (checked with the frames of R1, before they were rewritten). It exists for measurement; nothing in the addon sets it.
5. **Measured**, `Tests/bench_m2.py`: a scripted 3-hour session for two characters and three seeds through the real Director (a zone every 20 minutes, a fight about every 50 seconds, the "speak" key every 5 minutes, a level, a death and a hearthstone now and then). The suite runs it and checks the targets.

   | M2 (offline, lupa) | R1 | R3 |
   |---|---|---|
   | same theme as the previous intervention | 7.7% | 1.8% |
   | "says"/"murmurs" among the framed interventions | 35.8% | 8.1% |
   | interventions inside a frame | 34.5% | 30.3% |
   | a content word already in the 4 previous interventions | 21.9% | 19.4% |
   | same voice three times in a row | 14.7% | 11.3% |
   | combat share | 62.7% | 34.9% |
   | zone lines in 3 hours | 2.0 | 3.8 |

   The R1 column is the same data with `R1_COMPAT` and the frames of R1. `Tests/bench_scale.py` (lupa, one PC): `PickEntry` 0.24 → 0.37 ms on today's database, 1.40 → 1.29 ms at 10,000 entries, 5.1 → 4.7 ms (p95 17.9 → 13.4 ms) at 50,000 entries in one language; memory per entry unchanged for content without theme and motifs, +14% (1,940 → 2,220 bytes) when every entry has both.

## Alternatives considered

- **A bigger specificity bonus** (`C`) instead of tiers. A multiplier still lets ten generic lines outweigh one local line, and any value strong enough to make the local line win would also make it repeat; the tiers make the local line win **until it is recent**, then step aside.
- **Tiers as a hard filter with no threshold.** One place-specific line would speak at every visit and then leave the pool to the generic ones at once; the threshold `TIER_MIN` keeps a small pool at every tier.
- **Saving the thematic memory** with the anti-repetition memory. A theme or a motif is not a text, but an opening is; and the effect that matters (not the same theme twice in a row) lives within minutes. Session-only keeps ADR 0017 untouched and the SavedVariables bounded.
- **Free tags instead of closed vocabularies.** The novelty works only if the same idea always has the same name; closed lists validated at load (and extensible by a pack, like registers) keep that.
- **A hard ban on frames "says" and "murmurs".** They are the only frames that fit any line in a plain register; they stay, light, as a fallback.
- **Counting only spontaneous interventions in the quota.** The player hears the explicit ones too; without them a session where the player presses "speak" often would still be a combat commentary between those lines.
- **Storing the tier in every rule.** One more field crossed the size of the hash part of most conditioned rules (+25% memory per entry at 10,000 entries); computed and cached by conditions table it costs nothing for rules never picked. For the same reason the redundant `tone` field of a rule went (`Engine.Tone(p)` is its first register).

## Consequences

- Positive: the M2 targets of R3 are met offline; place-specific lines speak first where they exist; an event with no phrase can borrow its related event; combat no longer covers two thirds of a session; frames and openings vary; every intention of the archive has a theme. The pick time stays at the level of R1.
- Negative or costs:
  - The selection is no longer equivalent to R1: the seeded traces differ (2,585 of 3,000 picks). `Tests/TestScale.lua` keeps the equivalence of the **eligible** rules (the index against a scan) and now states that the pick changes on purpose; `R1_COMPAT` and `trace_picks.py --r1` keep the old behaviour measurable.
  - Fewer interventions in a combat-heavy session (about 87 instead of 142 in 3 simulated hours), most of the cut on combat lines, `victory` included. Silence is a valid outcome (ADR 0015), but the numbers (quota, window, span, hunger) are hypotheses to tune with the counters of `/au prof` in game.
  - The labels were drafted by AI sessions and reviewed on a sample, not line by line; some motifs come from a minority of the variants. Relabelling is an archive edit (`theme`, `motifs` columns).
  - The tier, novelty and quota constants (`TIER_MIN`, `THEME_PENALTY`, `VOICE_REPEAT`, `FRAME_PENALTY`, the quotas) are tuned on the offline simulation only.
  - The memory per entry grows by up to 14% for content with theme and motifs, which moves the 40 MB target of D3 further away at 50,000 entries (90 MB in one language with every entry labelled, against 77 MB).
  - Not done here: the rule "at most one intervention in n names race, class or emotion explicitly" (A1 §4.1), intentional longer pauses after a strong intervention (#91), soft tags for the other dimensions (#89), labels for the arcs and the ambient dialogues.

## References

- Issues #89, #90, #91 (this ADR), #131 (roadmap), #130 (D1, D3), #94 (landmarks), #81 (`/au prof`).
- `Data/Themes.lua`, `Data/Frames.lua`, `Engine/PhraseRegistry.lua` (`TierOf`, `Tier`, `Tone`, vocabularies, declarations), `Engine/WeightedSelector.lua` (`TierPool`, `ThemeNovelty`, `NoteLine`, `Opening`, `PickEntry`, `PickOwn`), `Engine/Pacing.lua` (`Quota`, `Hunger`), `Engine/NarrativeDirector.lua`, `Engine/Validator.lua`, `tools/archive/` (columns `theme`, `motifs`, `tier`).
- `Tests/TestSelection.lua`, `Tests/TestScale.lua`, `Tests/bench_m2.py`, `Tests/trace_picks.py --r1`, `Tests/bench_scale.py`.
- [ADR 0015](0015-narrative-director-one-intervention-per-moment.md) (silence is valid), [ADR 0017](0017-living-memory-selective-memories-and-honest-recall.md) (no text saved), [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md), [ADR 0027](0027-sqlite-authoring-archive-and-exporter.md).
