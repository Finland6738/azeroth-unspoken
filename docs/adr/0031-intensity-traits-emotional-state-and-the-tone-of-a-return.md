# 0031. Intensity traits, an emotional state with decay, and the tone of a return

- Status: Accepted
- Date: 2026-10-31 (phase R4 of the roadmap after the analyses A1 and A2, tracking issue #131; issues #96, #97 and #98; owner decisions D8 and D9 in #130; amends [ADR 0016](0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md); [ADR 0017](0017-living-memory-selective-memories-and-honest-recall.md), [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md), [ADR 0027](0027-sqlite-authoring-archive-and-exporter.md), [ADR 0029](0029-specificity-tiers-themes-motifs-and-category-quotas.md))

## Context

The Character Soul of S5 (ADR 0016) describes a character with **exclusive choices**: one temperament, one morality, one faith, one motivation, plus two scales (curiosity, irony). The user's own list of twelve features (altruistic, cynical, pragmatic, dreamer, idealist, pessimist, stoic, ambitious, spiritual, patriotic, curious, vengeful) describes **coexisting intensities**: a character can be stoic and vengeful at once, which a choice cannot say. The analysis A1 (§5.1-§5.3) also measured that the profile changes only 5-30% of the effective choices of a zone.

Nothing in the addon had a **mood**. The tone of a line depended on fixed traits, the register of the event and the atmosphere of the zone, so the narrator could not be shaken by a death and calm down at an inn. The user's ten emotions (serene, happy, determined, curious, worried, tense, furious, melancholic, nostalgic, admiring) were not modelled.

The analysis also found an incoherent tone (#98, verified in data): after a death in Elwynn Forest the return line `mem.ret.forest.cheerful` ("Hello, trees! Did you miss me?") was still eligible, because it asked only `repeatVisit` and `mood = forest`.

Owner decisions in #130: **D9**, traits with an intensity from 0 to 100, archetypes as editable presets, automatic migration of the current profile; **D8**, an emotional state with decay, visible in `/au debug`, a module that can be switched off, and only slow and strong emotions saved, as values and `time()`, never text.

## Decision

### Traits as intensities (#96)

1. **Ten axes from 0 to 100** (`Systems/Personality.lua`, `Personality.AXES`), defined as `scale` traits with the bands of S5 (low 0-33, mid 34-66, high 67-100). Three are bipolar, because two words of the list are the two ends of one line: `idealism` (cynical <-> idealist), `concreteness` (dreamer <-> pragmatic), `optimism` (pessimist <-> optimist). Seven are unipolar: `altruism`, `stoicism`, `ambition`, `spirituality`, `patriotism`, `curiosity` (the S5 scale), `vengefulness`. `irony`, `innerVoice` and the topics to avoid stay as they were. An axis that is not set is still "I don't know", never 0.
2. **The old choices become derived values.** `temperament`, `morality`, `faith` and `motivation` stay defined (the content uses them as tags, and the interlocutor of S6c still chooses a temperament and a morality), but each value declares a rule on an axis (`derive`: `temperament:stoic` is `stoicism >= 67`, `faith:skeptic` is `spirituality <= 20`, `morality:conflicted` is `idealism` 34-66...). A profile that has not chosen the trait but has the axis reads the value from there; a profile that chose it (an NPC) keeps reading the choice. So every tag written before R4 keeps working, and the existing content needs no edit.
3. **Graded soft affinity** (`Engine/Traits.lua`). For a band, a threshold or a derived value the profile has a *degree* from 0 to 1: 1 inside (or past the threshold), 0 at `EDGE` (20) points or more away, linear in between. The soft factor goes from `MISMATCH` (0.6) to `MATCH` (1.6) with the degree (exactly the old values at 0 and 1). Several tags of one trait are alternatives (the best degree counts). Hard tags (`req:`, `not:`, `topic:`) stay rigid: they hold only at degree 1.
4. **Threshold tags and conditions.** Tags `stoicism>=60`, `req:stoicism>=60`, `not:optimism<=30` on any scale; conditions `traitMin` / `traitMax` (`{ ambition = 75 }`). A line that only a strong trait may say uses a **condition**, not a `req:` tag: a condition keeps it out of the candidates of a neutral profile, while a tag leaves it a candidate of weight 0 that still counts in the anti-repetition window. The neutral profile then picks exactly as before (measured: the seeded trace of 3,000 picks is byte-identical to `main`).
5. **Archetypes are presets.** Each of the seven S5 archetypes (plus `patriot` and `dreamer`) is a set of intensities. Choosing one fills the sliders; editing a slider makes the profile `custom` and remembers the preset it started from (`base`, shown as "custom (from Veteran)"). The inner voice and the topics to avoid are not part of a preset and survive a change of archetype.
6. **Migration** (`personality.version` 1 -> 2, `Personality:Migrate`, run on the first read). A saved archetype becomes its preset; custom choices go through `Personality.MIGRATION` (e.g. `temperament = "stoic"` -> `stoicism = 80`), each value chosen so that its own `derive` rule holds; if two choices touch the same axis the first one wins, in the order temperament, morality, faith, motivation. Irony, curiosity, inner voice, topics, consent to Total RP 3 and the archetype id are kept; the old choices are kept in `legacy` as identifiers (never text). Total RP 3 and the game layers still produce old choices and are converted the same way. `/au soul temperament stoic` still works: it sets the matching axes.
7. **Interface.** `UI/ProfileFrame.lua` shows a slider (0-100, saved when released) per scale, the pole for bipolar axes, and an `x` that removes the value. `/au soul <axis> <0-100|low|mid|high|->`.

### The emotional state (#97)

8. **A module** (`Systems/Emotion.lua`, data in `Data/Emotions.lua`): ten emotions in [0, 1], each stored as a value and the `GetTime()` of its last change. The current value is `v x 0.5^(elapsed / half-life)`, computed when asked: **no timer runs**. Half-lives (a first proposal, to tune in game): tense 3 min, furious and admiring 5, curious 10, happy 15, worried 20, determined and serene 30, nostalgic 60, melancholic 120.
9. **Appraisal rules in data.** `{ event, when?, gain = { emotion = -1..1 } }`; every rule of an event whose conditions hold applies. They cover defeat (death, resurrection, low health), fights and victories (a stronger foe, an encounter, a level, a quest), places (a first visit; entering or coming back to a place whose last visit ended badly; a return after days; a landmark; a graveyard), rest and the road (an inn, a long flight, dawn, dusk, prayer), people (a friend, a rival or an enemy recognised), and the weather. The Director appraises every spontaneous event in `Director:Offer`, **before** its line is chosen and whether or not anything is said.
10. **The personality modulates the appraisal.** A rise is multiplied by `1 + sum(coefficient x (axis - 50) / 50)`, between 0.25 and 2 (`modulation` in data): a stoic character rises more slowly in fury, tension, worry and joy; an optimist worries less; a vengeful one burns faster; a curious one is more curious. An easing is not modulated.
11. **What the narrator does with it.** `ctx.emotion` holds the emotions above 0.05 and the `dominant` one (from 0.25). Conditions `emotion` (the dominant one, or a list), `emotionMin`, `emotionMax`. A new weight factor **`E`** (`W = B x C x P x N x S x R x E`): a line carries an emotion through a tag `emo:<emotion>` or an old tag that implies one (`temperament:cheerful` is happy, `temperament:melancholic` melancholic, `temperament:fierce` furious, `temperament:stoic` serene; `implied` in data); while an emotion dominates, a line of that emotion weighs up to x1.6, a line of a clashing emotion (`clash` in data: happy clashes with worried, melancholic, furious, tense...) down to x0.15, never 0. Without a dominant emotion E is 1. The dominant emotion from 0.35 also adds a register preference (melancholic: tragic, intimate; determined: epic...). Emotion and trait conditions do not raise the specificity tier (ADR 0029): those lines compete by weight with the lines of their place.
12. **Persistence (D8).** After every appraisal the slow emotions (half-life of 30 minutes or more: determined, serene, nostalgic, melancholic) at 0.3 or more are written to `AzerothUnspokenCharacterDB.emotion.values` as `{ v, at = time() }`; nothing else, never the cause, never text. At login they are read and decayed by the time spent away. Fast emotions die with the session.
13. **It can be switched off** (module `emotion` in the settings, `/au emotion off`). Off, `ctx.emotion` is nil, every emotion condition is false (no line written for an emotion is ever eligible), E is 1, the appraisals do nothing and the saved values are cleared. `Engine.R1_COMPAT` switches it off too. `/au debug` and `/au emotion` show the state, the dominant emotion, the last cause and what is saved.

### The tone of a return (#98)

14. **Validator rule `lightReturnAfterBadVisit`.** A return line (event `memory_return`, or conditions with `repeatVisit = true` or `visitsMin`) that is light (an `ironic` register, or a `temperament:cheerful` / `emo:happy` tag) must declare `lastVisitBad = false`; a light line about the bad visit itself (`lastVisitBad = true`, `"death"` or `"flight"`) is gallows humour and must require an ironic character (`req:irony:high`). The rule found ten lines in the base, all fixed: eight got the guard, two became `req:irony:high`. `lastVisitBad = false` does not count as a condition for the specificity weight `C`: the guard does not make those lines heavier.

## Alternatives considered

- **Keep the exclusive choices and add the missing ones** (a `cynicism` choice...). It cannot say "stoic and vengeful", which is the point of the user's list.
- **Rewrite every content tag in axis form.** The derived values give the same result with no edit of 900 lines, and keep the interlocutor's choices working.
- **Twelve unipolar axes, one per word of the list.** Cynical/idealist, dreamer/pragmatic and pessimist/optimist are opposites: two sliders for one line would allow contradictory profiles and double the work of the writers.
- **A timer that decays the emotions.** On-demand decay from `GetTime()` costs nothing between events and cannot drift.
- **Save every emotion, or the cause.** D8: only slow and strong emotions, only numbers. A fast emotion saved at logout would come back stale; the cause is a description of what happened, which ADR 0017 keeps in the Living Memory, not here.
- **Exclude the light return lines in the engine** (a hard rule on tones). A validator rule keeps the data explicit and lets gallows humour exist for the characters who want it.

## Consequences

- Positive:
  - The personality the user described can be expressed; S5 profiles migrate without losing what the user chose (tested for every S5 archetype and every single old value); old content tags still apply.
  - **A neutral profile and a calm state change nothing**: `Tests/trace_picks.py` (3,000 seeded picks, with and without `--r1`) prints the same file as `main` with this change.
  - Scenario M6 of A1 (`Tests/scenario_return.py`, 40 seeds: enter Elwynn, die, come back after 30 minutes): a light return line was spoken in 9 of 40 runs for a neutral character before R4 (19% of the weight of the eligible return lines), 11 for the cheerful traveler (24%); after R4 none (0%). The ironic rogue keeps only the gallows humour written for it. The suite checks it.
  - M2 (`Tests/bench_m2.py`, against `main` on the same machine): same theme 1.8% -> 1.4%, "says"/"murmurs" 8.1% -> 6.3%, combat 34.9% -> 34.8%; `PickEntry` mean 0.74 -> 0.64 ms, p95 1.0 -> 1.2 ms (noise of a few tenths between runs).
  - 35 new IT/EN intentions (`base_emotions`) follow the emotions and the strong traits at the most common events, implying the feeling instead of naming it.
- Negative or costs:
  - All the numbers (half-lives, gains, modulation, thresholds, the `EDGE` of the affinity) are proposals tuned offline; they need a real session (`/au debug` shows the state). The Director does not yet change its rhythm with the mood (A1 proposed it).
  - A profile v1 whose choices contradicted each other (e.g. cheerful and seeking redemption) keeps the first; the tag of the second may not apply any more. Such a profile can be adjusted with the sliders.
  - Total RP 3's psychological traits still go through the old choices (one value per pair, then the conversion), not straight to intensities.
  - The culture of origin (D17, #124) is not part of this change.

## References

- Issues #96, #97, #98; #130 (D8, D9); #131.
- `Engine/Traits.lua`, `Systems/Personality.lua`, `Systems/Emotion.lua`, `Data/Emotions.lua`, `Data/RegistryEmotions.lua`, `Engine/RuleEngine.lua` (conditions), `Engine/WeightedSelector.lua` (factor E), `Engine/Validator.lua` (`lightReturnAfterBadVisit`), `UI/ProfileFrame.lua`.
- `Tests/TestEmotion.lua`, `Tests/TestSoul.lua`, `Tests/scenario_return.py`, `Tests/bench_m2.py`, `Tests/trace_picks.py`.
- GDD §5.4 (quality of the lines), §7.1 (Character Soul), §10 (the weight).
