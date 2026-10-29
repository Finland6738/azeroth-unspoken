# 0002. Fully offline, no artificial intelligence

- Status: Accepted
- Date: 2026-10-29 (decision of the [roadmap](../../ROADMAP.md), no. 2, and of GDD §14)

## Context

A narrative companion might seem a good candidate for an online language model: always-new texts, personalized answers. But an addon runs inside the game client, handles data about a character and, in a roleplay setting, about other people too. The project must be predictable, respectful of privacy and usable where the client allows nothing external.

## Decision

- **No network**: no HTTP calls, no sockets, no downloads, no browser, no telemetry, no external accounts, no online AI.
- **No text generated at runtime**: lines are chosen among existing ones ([ADR 0001](0001-engine-and-narrative-database-separated.md)).
- **It expands with local packs**: Lua files and `.toc`, like any addon.
- **The only communication between players, in the future**: the game's internal addon messages (Social module, step S10), disabled by default, with explicit consent and released only where the transport is proven. No code received from other players is ever executed (no `loadstring`).
- **During development** external sources may be consulted (the API dump, ForeverDB.net to prepare local registries of NPCs and places), but the results enter the repository as local data, citing the source. The in-game addon stays offline ([REFERENCES.md](../REFERENCES.md)).

## Alternatives considered

- **Generation with an online model.** Unlimited texts, but: dependence on a service, costs, latency, the risk of inappropriate content or content inconsistent with the lore, and sending player data to third parties. Rejected.
- **A local model inside the game.** Not feasible in the addon environment.
- **An external application that reads the SavedVariables** and prepares new texts. It breaks the principle "the addon alone is enough" and complicates installation. Rejected (it can be reconsidered as an *author* tool, not a runtime one).

## Consequences

- Positive: privacy that is simple to explain and to verify (search the code for the absence of network access); behavior that is reproducible and testable outside the game; no moderation problem with generated text.
- Negative: content has to be written by hand and maintained (offset by the pack system and the quality rules); personalization is limited to the conditions the engine provides.
- Contributors must not introduce network dependencies or tools that send data out of the client: such changes are to be rejected in review.

## References

- GDD §2.3 (non-goals), §14 (security and privacy).
- [README, Privacy section](../../README.md#privacy-and-chat).
