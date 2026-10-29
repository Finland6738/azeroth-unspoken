# 0014. Normalized event bus, isolated modules and the Director as the hook point

- Status: Accepted
- Date: 2026-10-29 (implemented in steps S1 and S2; GDD §11.2, §11.3)

## Context

The prototype reacted directly to client events, in a single file (`Events.lua`). With more systems coming (Narrative Director, personality, memory, relationships, NPCs) we need a structure in which game events are translated into a single format, systems can be added without touching one another, an error does not stop the others, and the decision of "when to speak" lives in a single place.

## Decision

1. **An event bus** (`Core/EventBus.lua`). Every client event is translated by a *source* (`EventBus:AddSource`) into a uniform **envelope**:
   ```
   { type, timestamp, source, context = { … }, fields = { [field] = AVAILABLE | MISSING | RESTRICTED } }
   ```
   with `source` among `WOW_API`, `USER`, `ADDON`, `SIMULATED`. The current types: `WORLD_ENTER`, `ZONE_ENTER`, `COMBAT_START`, `COMBAT_END`, `HEALTH_CHANGED`, `PLAYER_DEATH`, `PLAYER_REVIVE`, `LEVEL_UP`, `TARGET_CHANGED`, `SPELL_SENT`, `SPELL_CAST`, `RESTRICTION_CHANGED`.
2. **Deduplication**: the same type and the same key within a window (`dedupWindow`, 1 second by default, with their own windows for some types) are not published twice. Secret values do not enter the context: the field ends up `RESTRICTED` ([ADR 0005](0005-compat-secret-values-and-defensive-events.md)).
3. **No cascades**: a handler that publishes in turn puts the event in a queue (at most 32 events; those older than 5 seconds are discarded).
4. **Subscription**: `EventBus:Subscribe(type or "*", owner, fn)`. Every handler runs inside `Diagnostics:Guard`: an error is logged and the other handlers continue.
5. **Modules**: every system registers with `NS:RegisterModule(name)` and has an optional `OnInit`. `NS:Initialize` (on `ADDON_LOADED`) runs, in order, `Config:Load`, `Compat:Probe`, `EventBus:Start` and the `OnInit` of every module, each one isolated.
6. **The Director is the only point that decides whether to intervene.** `Systems/Triggers.lua` translates bus events into narrative events (`battle`, `victory`, `zone`…) and for each one asks `Director:Evaluate(event)`, which answers `{ allow, chanceMul, cooldownMul }` or `{ allow = false, reason }`. Today the Director applies the intensity, the immediate pause and the active modules; step S4 replaced its body with the full Narrative Director without changing the shape of the answer ([ADR 0015](0015-narrative-director-one-intervention-per-moment.md)).
7. **Output goes through the Chat Gateway** ([ADR 0003](0003-private-narrator-and-chat-gateway.md)): systems never write to chat on their own.

## Alternatives considered

- **Registering client events in every module.** Simpler at the start, but every module would duplicate the handling of secret values, the deduplication and the event checks, and diagnostics would have no single observation point.
- **A plug-in system with free callbacks.** Too permissive: an error in one plug-in would stop the others.
- **Leaving the decision to speak inside `Triggers`.** This is what the prototype did; it would make it hard to add budget, priorities and silence.

## Consequences

- Positive: traceability (`/au debug` shows the latest events, the counts and the discarded duplicates; `/au debug trace` prints them); error isolation; new systems are added by subscribing to the bus; the "when" logic is in one place.
- Negative: one level of indirection between client event and line; the envelope format is an internal contract that must be maintained carefully when fields are added.
- The event types planned for future steps (gossip, quest, merchant, group…) do not exist yet: they must be added as sources, with a check in Compat.

## References

- GDD §6, §10, §11.2, §11.3.
- `Core/EventBus.lua`, `Core/Bootstrap.lua`, `Systems/Triggers.lua`, `Systems/Director.lua`.
- [docs/ARCHITECTURE.md](../ARCHITECTURE.md).
