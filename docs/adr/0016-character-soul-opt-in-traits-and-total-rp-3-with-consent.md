# 0016. Character Soul: opt-in traits as data, soft affinity and hard filters, Total RP 3 with consent

- Status: accepted
- Date: 2026-10-29 (step S5; GDD §7.1, §8; ADR 0004 and 0015)

## Context

Up to S4 the narrator knew nothing about the player's character: two characters of the same race and class heard the same lines. The GDD (§7.1) asks for optional traits that change eligibility and weights without imposing outcomes, a neutral profile, ready-made archetypes, immediate profile switching and "no line that contradicts exclusive tags". The `P` weight factor and the register preferences were already prepared by S4 as neutral hooks. Steps S6b (relationships) and S6c (interlocutor) will have to describe other subjects with the same tools: an NPC, a person met, the relationship with them.

## Decision

1. **A trait model separate from the character.** `Engine/Traits.lua` knows only definitions (`choice`, `scale` with bands, `set`), profiles (`{ [trait] = value }` with only the traits that are set) and tags. It knows nothing about the player: the Character Soul (`Systems/Personality.lua`) uses it for the character, S6c will use it for `ctx.other` (with its own tag scope, `Traits.RegisterScope`) and S6b for the relationship axes (scales with bands).
2. **Everything is opt-in, the neutral profile is the normal state.** A missing trait means "I don't know", never "false". The neutral profile leaves every factor at 1 and adds no register preferences: the narrator behaves as it did before S5.
3. **Eight traits**: temperament, morality (`morality`), curiosity (scale), faith, motivation, irony (scale), inner voice and topics to avoid (set). Values are data in the definitions, names are in the interface languages (`trait_<trait>_<value>`). Seven archetypes plus the neutral one (disillusioned veteran, optimistic traveler, devout keeper, witty rogue, scholar, avenger, penitent). Choosing an archetype copies its traits into the explicit choices; changing one of them turns the profile into "custom".
4. **Affinity tags on lines, in schema v2.** Tags without a colon remain descriptive (like those of S3). With a colon: `trait:value` is a **soft** affinity (×1.6 if the profile has that value, ×0.6 if it has another, ×1 if the trait is not set; overall factor between 0.15 and 3, never zero); `req:trait:value`, `not:trait:value` and `topic:topic` are **hard filters** that exclude the line (factor 0). Inner voice turned off excludes `inner` lines; the other intensities weigh it (×0.5, ×1, ×1.6). An ironic register without an `irony:` tag is weighed by irony (×0.5, ×1, ×1.5).
5. **A line that asserts something about the character uses `req:`**, one that says it in a certain tone uses soft affinity. This way the neutral profile never hears a past or a creed it did not choose (the devout's prayer, revenge), and no line contradicts an exclusive trait.
6. **Data priority** (GDD §8): explicit choice > Total RP 3 (with consent) > game data > neutral values, trait by trait (`Traits.Merge`). Topics to avoid are **merged** across sources: never contradict what a source forbids. The "game data" layer exists (`Personality:RegisterGameLayer`) but S5 sets no tendency: race, faction and class do not decide character (GDD §5.4); S6c may add weak ones.
7. **Hooks, no change to the Director.** The `P` factor is `Engine:SetWeightHook("P", "soul", ...)`, the register preferences are `StyleResolver:SetModifier("soul", ...)` (temperament, morality, faith and high irony; against an undead, the merciful prefer the solemn register, GDD §5.2). The context exposes `ctx.soul` (only the traits that are set, shared and read-only) and there is the condition `soul = { trait = value | { values } }`. The validator checks every affinity tag (`badTag`).
8. **Total RP 3: only your own public profile, with a separate consent.** The adapter reads `characteristics/PS` (the psychological traits that TRP3 shows to others) with `AddOn_TotalRP3.Player.GetCurrentUser():GetInfo(...)`, verified against the installed TRP3 code, and maps them to Soul traits with a data table (`TotalRP3.PSYCHO_MAP`): only pairs with a clear meaning, only beyond a threshold from the center. It requires the character's consent (`personality.trp3`, `/au anima trp3 on`, off by default) in addition to the `modules.totalRP3` switch. It does not read notes, out-of-character information or other fields, does not read other players' profiles (S6c, with another consent) and never writes to TRP3. If TRP3 is missing, or `GetInfo` does not exist or gives an unexpected shape, it answers `nil` and the `integration:totalRP3:traits` capability goes to `MISSING` with the reason.
9. **SavedVariables**: schema 3. `personality = { version, archetype, traits, trp3 }` per character; migration 3 creates the neutral profile from an empty or damaged placeholder, and `Personality:Sanitize` cleans the values at startup (an unknown value is discarded, a number is clamped). Data from a newer schema is not touched (ADR 0006).

## Alternatives considered

- **All tags as hard exclusions.** A single behavior, but a rich profile would be left without lines until the content (S7) covers every combination. The soft kind gives variety without silences; the hard kind is only for where a contradiction would be an error.
- **An `affinity` field separate from `tags`.** More explicit, but the GDD (§7.1, §9.1) and S3 already put affinity tags in `tags`; existing descriptive tags remain valid without migrating the data.
- **Putting the Total RP 3 traits in a single profile with the choices.** It loses the source (and the GDD priority) and makes it impossible to "go back to TRP3" by removing a choice.
- **Imposing tendencies by race, class or faction** as game data. It contradicts GDD §5.4; the layer exists for S6c, empty in S5.
- **A trait model inside `Personality.lua`.** S6b and S6c would have to copy it or depend on the player's character.

## Consequences

- Positive: the character has a voice of its own without an empty profile changing anything; the hard filters are tested against every line choice; the model is already ready for S6b and S6c (scopes, scales with bands, merging of sources); if TRP3 changes, a table gets fixed.
- Negative: the 16 sample texts are not enough to make the traits *felt* (they arrive with S7, which will also have to label the existing lines); the IDs of the TRP3 default traits (`PSYCHO_MAP`) are those of the installed code and **have not been tested with a real profile** (G1 checklist); the factors 1.6 / 0.6 / 0.5 / 1.5 are guesses to be tuned in game.
- A new trait is added with `Traits.Define` and the interface keys; the engine does not need to change.

## References

- GDD §5.2, §7.1, §8; ADR 0004 (TRP3 adapter), 0006 (SavedVariables), 0015 (weight and style hooks).
- `Engine/Traits.lua`, `Systems/Personality.lua`, `Integration/TotalRP3.lua`, `UI/ProfileFrame.lua`, `Tests/TestSoul.lua`.
- ROADMAP: steps S5, S6b, S6c.
