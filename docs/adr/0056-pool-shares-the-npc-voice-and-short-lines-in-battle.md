# 0056. Pool shares: the NPC's voice and the short lines in battle

- Status: Accepted (offline tests; **nothing of it has run in the client**: the checks are in `docs/G1_checklist.en.md` and `docs/G1_checklist.md`, section C0i; owner decision of 2026-11-02 to finish the development without in-game test gates)
- Date: 2026-11-06 (phase C0i of the content-scale plan, issue #138; found by content wave W09, PR #261; [ADR 0051](0051-tiers-mixed-by-share.md), [ADR 0052](0052-a-bounded-pick.md))

## Context

Content wave W09 adds about 2,700 troll, Forsaken, orc and gnome lines per language. With it, two statistical tests failed on Linux, where Lua's random sequence differs from Windows:

- **Short lines in a battleground** (`TestOtherPlace`): 41 of 60 picks were short, floor 45. `Place.Factor` weighed a rule by its **shortest** variant (1.3 if at most 80 bytes, else 0.4). A rule with a short and a long variant got the boost, then the variant was drawn among all of them: 14% of the picks in Arathi Basin were a boosted rule that said its long variant. The expected share was 0.83 on `main` and 0.81 with W09: a weight ratio holds a share only while the mix of short and long lines stays the same.
- **The voice of a gruff innkeeper** (`TestNPCAlive`): Gryshka spoke as herself in 36% of her openings, floor 40%. Her three own lines (one by `npcID`, two by temperament) compete in the same tier with the four lines of every innkeeper and, since W09, two lines for an orc character. The expected share was 0.43 on `main` and 0.37 with W09.

Both shares were falling as the archive grows (ADR 0050 plans about 270,000 texts per language), and both had two more limits that a weight cannot fix:

- **The window.** The anti-repetition window keeps about 60% of the candidates (`KeepFor`, at most 30). Three voice lines among nine candidates sit in a window of five, so they can never be more than 3/6 of the picks; among forty candidates, 3/25.
- **The sample.** Above 64 candidates the bounded pick of ADR 0052 samples 16 rules of a large tier. Three voice lines among sixty-six are usually not in the sample at all: with sixty more innkeeper lines the voice share fell to 0.09.

## Decision

### 1. Pool shares

A system can say, for a context, that some candidates keep a share of the picks: `Engine:SetPoolShare(name, share, test)`.

- `share(ctx, event)` gives the share (0-1), or nil when the system has no preference in this context.
- `test(e, lang, ctx)` says whether a rule is preferred. Its answer depends only on the rule and the language of the texts; the context of a pick, when given, only lets it keep answers.

In `PickOwn`, before the tiers, `Engine.SharePool` looks at each share that holds. When the pool has a preferred candidate outside the window and one that is not preferred, the pick keeps only the preferred candidates with the probability of the share. Otherwise every candidate stays. So the preferred lines keep **at least** their share, and more when their weights earn it. A random number is drawn only when the choice is real, so every other pick is unchanged. The tiers (ADR 0051) then mix the levels of the preferred candidates.

### 2. A window of its own

A narrowed pool uses the window of its own size: the newest `KeepFor(#preferred)` of its ids in the event's window. The event's window itself keeps its size from every candidate. Three voice lines get a window of one: never the same line twice in a row, and the voice can reach its share.

### 3. The sample reads the preferred rules apart

`Engine:SampledEligible` splits each tier into the rules the first active share prefers and the others, and samples the two parts apart, as it already does for the tiers. `Engine.SplitShare` makes these parts per group of the index when a pick first needs them and keeps them, like `Engine.Split`. It makes them again when the group or its split changes, or the language. So a few preferred lines beside thousands of others are always seen. Each part gets the budget of the sample (`SAMPLE_SCAN`, `SAMPLE_KEEP`, `SAMPLE_CHECKS`) in proportion to its share, at least `Engine.SAMPLE_PART_MIN` (2): a pick weighs about as many rules as without the share.

### 4. The voice of the NPC

`NPCAlive` sets the share `npcalive.voice`. In a dialogue, the lines whose `other` conditions ask who the NPC is or how it is keep `NPCAlive.VOICE_SHARE` (**0.6**) of the picks:

- `npcID`, `name`, `temperament`, `morality`, `goals` or `speech` (`NPCAlive.VOICE_KEYS`), also inside `any` or `all`.
- The role alone is not a voice: every innkeeper has it.
- `NPCAlive.IsVoice` answers once per conditions table (ADR 0024).

The lines of the role, of the character's race, class and faction, and of the zone keep the rest. The test of the voice did not need a new tier. A tier is about the place and the situation of the character, and an NPC's voice is neither. A share keeps the voice whatever tier its lines and the others are in.

### 5. Short lines in battle

`Place` sets the share `place.short`. In a battleground, an arena or a boss fight, the lines with a variant of at most `Place.SHORT_BYTES` (80) bytes keep `Place.SHORT_SHARE` (**0.85**) of the picks. `Place.Factor` still weighs them 1.3 and the others 0.4.

A **variant preference** (`Engine:SetVariantPreference`) makes such a line say a short variant there. `Engine:RenderPhrase` draws among the variants that pass it, when the rule has any, before the anti-repetition of variants and openings.

`Place.HasShort` reads the texts in the column store without copying them, and keeps the answer per context during a pick. A rule with no texts of its own (a monologue, stanzas) is no longer counted as short: before, its length read as 0.

### 6. The tests

- The two tests keep their floors: 45 of 60 and 0.4. The engine now gives far more than the floors, under any random sequence.
- `TestOtherPlace` adds three hundred long battle lines: at least `SHORT_SHARE - 0.1` of 120 picks are still short. A rule with a short and a long variant says only the short one in a battleground, and both in the open world.
- `TestNPCAlive` adds sixty innkeeper lines of the role and of the orc race: Gryshka still speaks as herself in at least `VOICE_SHARE - 0.1` of 600 openings, never twice the same line in a row.
- Each fixture pack is dropped at the end of its test.

## Numbers

Expected shares (3,000 picks or 800 openings), `main` → W09, before → after C0i:

| | `main` before | W09 before | `main` after | W09 after |
|---|---|---|---|---|
| short lines in Arathi Basin (floor 0.75) | 0.83 | 0.81 | 0.99 | 0.99 |
| Gryshka's voice in Ashenvale (floor 0.4) | 0.43 | 0.37 | 0.67 | 0.66 |

On W09 with C0i, under 12 random seeds (a stand-in for another platform's sequence), both test files pass every time. The lowest values were: short lines 0.95 (floor 0.75), the gruff voice 0.59 (0.4), the jovial voice 0.64 (0.5). With the fixtures, the short lines stayed at 0.96 or more among three hundred long ones (floor 0.75) and the voice at 0.57 or more among sixty more innkeeper lines (floor 0.5).

Cost and memory (`Tests/bench_scale.py`, `main` and C0i on the same synthetic archive, Lua instructions per pick in thousands, mean / p95; `--battle` makes every pick in Arathi Basin):

| | `main` | C0i |
|---|---|---|
| open world, 50,000 entries | 37.2 / 75.1 | 37.8 / 76.0 |
| battleground, 50,000 entries | 41.1 / 81.6 | 42.4 / 79.1 |
| battleground, 270,000 texts by area (Warrior Orc) | 45.5 / 106.6 | 47.2 / 99.8 |
| memory at 270,000 by area: login, after every area, after the picks | 23.6, 39.1, 39.4 MB | 23.6, 39.1, 39.7 MB |

In a battleground the two parts of a tier share the budget of the sample in proportion to the share (`Engine.SAMPLE_PART_MIN` at least), so a pick weighs about as many rules as before. With a full budget for each part the pick cost 58% more at 270,000 texts. The 0.3 MB are the preferred parts of the battle groups, kept like the tiers.

## Consequences

- An NPC with a temperament, a manner of speaking or lines of its own keeps its voice however many role, race, class, faction or zone lines the waves add. A wave that writes lines for an NPC's role does not need to count the NPC's own lines.
- In a battleground, an arena or a boss fight the lines stay short as the archive grows. A battle rule can have a long variant for the open world and a short one for the fight. Writers no longer need to keep every variant of a battle pool under 80 bytes.
- An NPC with fewer voice lines than three hears them more often than before. That is the point of a voice; a curated NPC or temperament with one or two lines may need more lines.
- Other systems can use pool shares when a small set of lines must stay heard as the archive grows.
- Untested in the client: how often a gruff innkeeper's own lines come back in a session, and whether the battle lines feel short enough. See the G1 checklist, section C0i.
