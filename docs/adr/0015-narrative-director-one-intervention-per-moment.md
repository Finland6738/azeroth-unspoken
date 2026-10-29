# 0015. Narrative Director: one intervention per moment, multiplicative weights, style that weighs but does not exclude

- Status: accepted
- Date: 2026-10-29 (step S4; GDD §4.2, §5.2, §6, §10, §15)

## Context

Up to step S3 every narrative event decided on its own whether to speak: probability, global pause and event pause in `Systems/Triggers.lua`, with intensity as a plain multiplier (`Director:Evaluate`, ADR 0014). There were no GDD §10 priorities, no per-category budget, no suspension during demanding moments and no rule against cascades: a death with health already low, or a level-up at the start of a fight, could produce several lines at the same instant. Line weight was a single formula with no room for personality (S5), relationships (S6b), interlocutor and place (S6c). The registers (`styles`) were in the data but nobody used them, and emote frames were chosen without looking at the line's register.

## Decision

1. **Decisions separate from output.** `Engine/NarrativeDirector.lua` (gate, priorities, suspension, ordering) and `Engine/Pacing.lua` (pauses and budget) know nothing about the Chat Gateway. `Systems/Director.lua` collects the candidates and passes the single winner to `Gateway:Narrate`. `Director:Evaluate` remains the S2 hook point, with the same response shape plus `priority` and `category`.
2. **One intervention per moment.** Spontaneous events do not speak immediately: `Director:Offer` queues them and `Director:Resolve`, after a short arbitration window (0.1 s), tries them in priority order. The first one that passes gate, roll and engine speaks; the others stay silent. In addition, pacing enforces `Pacing.MOMENT` (4 s) between any two interventions, even important ones, and an explicit line opens the same moment.
3. **§10 priorities** as numbers: explicit 5, voluntary dialogue 4, exceptional event 3, memory 2, atmosphere 1. Explicit requests do not go through the Director (as before). Exceptional events (death, return to life, level-up, resurrection of a companion) skip the global pause, the category pause and the budget, and their probability does not fall below the medium value; they do not skip the moment or the invasive screens.
4. **Intensity acts on the gate and on the budget**, not on style: probability × intensity/50, pauses × (1.5 − intensity/100), per-category budget × intensity/50 over a 10-minute window. At 0 everything spontaneous stays silent.
5. **Suspension**: during a cinematic or a movie (`InCinematic`, `IsInCinematicScene`, `CinematicFrame`/`MovieFrame` frames, all protected) everything stays silent; during a demanding fight (boss, raid, elite in an instance, added controls) everything that is not exceptional stays silent. Decisions are made only on data already read and readable: a secret value counts as "I don't know", that is, "not demanding".
6. **Multiplicative weight `W = B × C × P × N × S × R`**, computed in `Engine.Factors`. `P` and `R` are neutral; `C`, `P` and `R` have named hooks (`Engine:SetWeightHook`) for S5, S6b and S6c. A hook that fails counts as 1 and ends up in diagnostics; a factor of 0 excludes the line (S6b needs this for lines that are inconsistent with the relationship).
7. **Style weighs and does not exclude.** `Engine/StyleResolver.lua` provides a profile (registers allowed by the event, preferred by zone and depth, plus the line's voice) and an affinity: ×0.5 outside the event, +25% for each preference (at most three). The neutral fallback is therefore automatic: an event with only lines of a "wrong" register still speaks. Frames can have registers and are joined only to lines of the same or a neighboring register: no incompatible fragments.
8. **Pacing state in memory only**, for the session: no new fields in the SavedVariables and no migration.

## Alternatives considered

- **Deciding immediately, event by event (as before), with a minimal pause after each line.** Simpler, but whoever arrives first wins: a low-health line would steal the place of the death line an instant later.
- **A long queue that postpones discarded candidates.** A line delayed by seconds about a past event is worse than silence (GDD §6: a scene may end without a line).
- **Budget and pauses in the SavedVariables.** After a `/reload` a full budget does no harm, while saving client times (`GetTime`) across sessions makes no sense.
- **Registers as a hard filter.** It would have produced unexpected silences until the content (S7) covers every register of every event.
- **Weighted sum of the factors.** With the product a factor of 0 really excludes, and each factor remains readable on its own (`Engine:Weight` returns the breakdown).

## Consequences

- Positive: a single line per moment, readable priorities, `/au debug` shows the budget and the latest decisions with the reason; S5, S6, S6b and S6c hook in without touching the Director (`Engine:SetWeightHook`, `StyleResolver:SetModifier`, `NarrativeDirector:SetRhythm`, `SetDemandCheck`, `NS:SetEventPriority`).
- Negative: 0.1 s of extra delay on every spontaneous line; the numbers (budget, category pauses, style bonuses and penalties) are guesses to be tuned with in-game tests (G1, steps 27–31).
- Offline tests that check a spontaneous line must let the arbitration window pass (`ADVANCE`).

## References

- GDD §4.2, §5.2, §6, §10, §15.2.
- `Engine/NarrativeDirector.lua`, `Engine/Pacing.lua`, `Engine/StyleResolver.lua`, `Engine/WeightedSelector.lua`, `Systems/Director.lua`, `Systems/Triggers.lua`.
- `Tests/TestNarrativeDirector.lua`, `Tests/TestDirector.lua`.
- [ADR 0014](0014-normalized-event-bus-and-isolated-modules.md) (the Director as hook point), [ADR 0005](0005-compat-secret-values-and-defensive-events.md) (secret values).
