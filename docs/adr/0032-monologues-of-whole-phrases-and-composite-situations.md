# 0032. Monologues of whole phrases, and composite situations of the Director

- Status: Accepted
- Date: 2026-10-31 (phase R3 of the roadmap after the analyses A1 and A2, tracking issue #131; issues #99 and #100; completes the Dynamism milestone; builds on [ADR 0001](0001-engine-and-narrative-database-separated.md), [ADR 0015](0015-narrative-director-one-intervention-per-moment.md), [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md), [ADR 0027](0027-sqlite-authoring-archive-and-exporter.md), [ADR 0029](0029-specificity-tiers-themes-motifs-and-category-quotas.md))

## Context

Two limits of the Director were measured by the analysis A1 (§2.1, §2.2, §3.1; proposals A1 #19 and #20):

- **Only NPC dialogues and Story Arcs say more than one phrase.** The narrator and the inner voice always speak one line, so a quiet moment (a thought out of combat, a ridge over a new zone, an inn) can never open into a short train of thought. ADR 0001 forbids random fragments, and templates with slots were evaluated and rejected by A1 as low quality and unsuitable for a recorded voice.
- **When several events coincide, all but one are discarded.** The Director resolves the candidates of a moment in priority order and the first that produces a line wins (ADR 0015: a late line is worse than silence). A victory after a fight at low health, a level reached right after a death, a return in the rain at dusk: each is told as if the other half had not happened. Two similar situations then sound the same whatever else is going on.

The owner's request for this phase: two similar situations should produce different narration depending on what is happening together, without breaking the rule of one intervention per moment and without any concatenation of arbitrary text.

## Decision

### Monologues (#99)

1. **A content type, `kind = "monologue"`.** A rule of the registry with the usual fields (event, voice, registers, depth, tags, theme, motifs, conditions, weight, cooldown) and `parts`: the ids of **two or three whole phrases**, said in that order. `order = "free"` lets the parts after the first change places (the first always opens). A monologue has **no texts of its own**: each part is rendered from its own variants, and the parts are joined by a space.
2. **The parts are whole phrases marked `chainable`.** `chainable = "only"` for a phrase written to go in a monologue, which the engine never says alone (it is not a candidate of its event); `chainable = true` for a phrase that also stands on its own. Nothing is cut or glued inside a phrase (ADR 0001). Every variant of a part must go with every variant of the next one: the writer reads them in all their combinations.
3. **Only private voices.** A monologue speaks as the narrator or the inner voice, never in chat. The first part has the form of the monologue (a narrator emote follows the character's name); the other parts are whole sentences in the form `say` and start with a capital letter. A narrator monologue is therefore "Name pauses where the road crests, and Durotar opens below. Every hill hides another... High up, a hawk turns once over the road and lets it be."
   *Q9a update (issue #152):* "never in chat" is enforced by the Chat Gateway, not left to the voice: a narrator monologue is a narrator line for `PUBLIC_VOICE`, and used to become a proposal. `Gateway:PrivateReason` (ADR 0003) refuses any record with `kind = "monologue"` (or `parts`, or whose rule is a monologue), in every mode and on reroll, even if a pack's data were wrong.
4. **One intervention.** For the Director a monologue is one record: one gate, one die, one slot of the budget and of the quotas, one entry in the narrator, one moment of pacing. It is eligible when its conditions hold and every part exists, is chainable, is in an enabled pack, is out of its cooldown, matches its own conditions and has a usable variant. Each part counts as used (factor N) and remembers its variant, as if it had been said alone. The thematic memory of the session notes the monologue once, with its theme, motifs and the opening of its first part.
5. **Rarer by construction.** A monologue weighs ×0.2 while another one is among the last six interventions (`Engine.MONOLOGUE_WINDOW`, `MONOLOGUE_REPEAT`): two close together would sound like a speech. Otherwise it competes by weight and tier like any line.
6. **Validator rules.** 2-3 parts; `order` fixed or free; private voice; each part exists, is chainable, is not a monologue, is not repeated, speaks with the voice of the monologue, has the right form, a register compatible with the monologue's (`StyleResolver:Compatible`) and **its theme or one of its motifs**; the monologue declares a theme; per language, the longest variant of a part is at most 160 bytes and the longest combination at most 380 bytes; a warning for a monologue in combat or spellcraft and for a `chainable = "only"` phrase no monologue uses; a chainable phrase must be in a private voice.

### Composite situations (#100)

7. **Situations are data** (`situations = {}` in a pack, the base ones in `Data/Themes.lua`, `NS:RegisterSituation`): `{ lead = event, with = { events, all required }, withAny = { events, one required }, within = seconds, when = { conditions on the lead's context } }`. The base declares `close_call` (victory after low health within 30 s), `second_wind` (victory within 4 minutes of a resurrection), `hard_won_level` (level after low health or a death within 3 minutes), `wounded_arrival` (a zone entered within 2 minutes of low health) and `rain_dusk_return` (a return in the rain or a storm at dusk or night).
8. **The Director remembers the events offered** in the last 300 s (at most 24, names and times only, never saved). When the winner of a moment has passed the gate and the die, `Director:Compose` finds the situations it leads: its other events offered in this moment or within `within` seconds (the candidate itself excluded), and the `when` conditions on its context. Their ids go in `ctx.situation`.
9. **Lines written for the situation speak first.** A line asks a situation with the new condition `situation` (one id or a list); its event is the situation's lead. With `ctx.situation` set, the Gateway first tries only those lines (in both forms, no related-event fallback), then the ordinary pick. Outside its situation such a line is never eligible. **With no fitting composite line, the single-winner behaviour of ADR 0015 applies unchanged.**
10. **Still one line.** The composite line is the winner's intervention. The offers it was written for are **merged**, once each: a candidate of the same moment is logged `merged` instead of `outranked` (its `onResult` receives `merged`), and an offer merged into a situation cannot compose the same situation again (a second victory after the same low health is an ordinary victory).
    *Q9a update (issue #153):* a composite pick (`PickOwn` with `composite`) weighs only the lines written for the situation, so its anti-repetition window used to shrink to that pool. It now keeps at least the current length of the window of its lead event.
11. **Measured, logged and switchable.** `/au prof` counts monologues and composite situations; the record carries `kind`, `parts` and `situation`. `Engine.R1_COMPAT` switches off monologues and composition, and the seeded R1 trace is byte-identical to `main`.

### The archive

12. The new rule fields are **columns** of `intention` (`kind`, `parts`, `part_order`, `chainable`), in the overlay CSV, in drafts and in the canonical style (their own line); `situation` is a condition (JSON). The archive refuses a monologue with fewer than two or more than three parts, a part that is not a chainable phrase of the same voice, a monologue or a chainable phrase in a public voice, and fields of a monologue on another rule; a monologue needs no texts. The coverage report does not count a `chainable = "only"` part as a line of its event, nor a monologue as missing a language. The round trip stays an empty diff.

## Alternatives considered

- **Templates with slots, or fragments drawn separately** ("You [verb] the [noun]"). Rejected by ADR 0001 and by the measurements of A1: low quality, incoherent combinations, unsuitable for audio.
- **A monologue as one long text with several variants.** It is a longer phrase, not a sequence: no reuse of whole phrases, no free order, and the anti-repetition cannot see its parts.
- **Variants as lists of parts** (`{ "first.", "second." }` in the texts). It changes the shape of every text file, the archive's variant table and the validator of every language for one feature; a part as a rule reuses everything that exists (variants, depth, placeholders, anti-repetition, archive, coverage).
- **Composing every compatible candidate into a combined text.** It would be a cascade by another name (ADR 0015); one line written for the situation says both halves in the voice of a writer.
- **Context conditions only** (a victory line with `hpBelow`). The health at the moment of the victory is not the fight: a character can heal before the last blow. The events of the last seconds are what happened; conditions remain available through `when`.

## Consequences

- Positive:
  - Two similar moments now sound different depending on what came with them: in a simulated 3-hour session (`Tests/bench_m2.py`, 3 seeds × 2 characters) a composite line speaks about **5 times per session (5.9% of the interventions)**: hard-won level 2.3, close call 1.3, wounded arrival 1.0, second wind 0.3; a monologue about **0.8 times (1%)**, in proportion to the eight written. The other M2 metrics stay where R3 left them (same theme 1.4% -> 0.8%, "says"/"murmurs" 6.3% -> 7.3%, combat 34.8% -> 34.9%), and `PickEntry` keeps the same time (mean 0.58 -> 0.55 ms, p95 1.0 ms, same machine).
  - The rule of one intervention per moment holds, and is now explicit about what was merged.
  - A writer can turn three good thoughts into a train of thought without touching code, and every part stays a reviewable whole phrase.
- Negative or costs:
  - The seeded trace without `R1_COMPAT` changes (new candidates change the random draws); with `R1_COMPAT` it is identical.
  - The frequency of monologues depends on how many are written: eight in the base are a sample. The weights, the window of the monologue penalty and the windows of the situations are offline proposals.
  - The 380-byte limit is a reading length in the narrator, not a chat limit; a recorded voice (#103) may want shorter ones and no placeholders in its parts.
  - A composite line is chosen from what the addon saw being offered: an event the Director never received (because its module is off, or its trigger did not fire in the client) cannot compose.
  - Not tried in the real client: how a monologue reads in the narrator frame, and whether the windows match real fights (steps R3c.1-R3c.5 of `docs/G1_checklist.md`).

## References

- Issues #99, #100; #131 (Dynamism); A1 §2.1, §2.2, §3.1, §10 #19 and #20.
- `Engine/WeightedSelector.lua` (`MonologueUsable`, `MonologueOrder`, `RenderMonologue`, composite picks), `Engine/PhraseRegistry.lua` (fields, `NS:RegisterSituation`), `Engine/RuleEngine.lua` (condition `situation`), `Engine/Validator.lua`, `Systems/Director.lua` (`Compose`, `recent`, `merged`), `Integration/ChatGateway.lua` (`PickRecord`), `Core/Profiler.lua`.
- `Data/Themes.lua` (situations), `Data/RegistrySituations.lua`, `Data/RegistryMonologues.lua` and their texts in the language folders.
- `tools/archive/schema.sql`, `store.py`, `packfiles.py`, `coverage.py`.
- `Tests/TestDynamism.lua`, `Tests/check_archive.py`, `Tests/bench_m2.py`, `Tests/trace_picks.py`.
