# 0005. Compat, secret values and defensive event registration

- Status: Accepted
- Date: 2026-10-29 (implemented in step S1; decision of the [roadmap](../../ROADMAP.md), no. 4)

## Context

The WoW Forever client (Interface 16001) can hide some values from addons (names, health, auras…) by turning them into *secret values*: they cannot be read, compared or used to make decisions. Some actions are restricted in combat, in encounters and in PvP. Not all APIs are documented for this client, a nonexistent event can make registration raise an error, and the real behavior is known only by trying it. An error in a handler must not stop the addon.

## Decision

1. **Every client API goes through `Core/Compat.lua`.** Compat exposes a *capability matrix* (`Compat.caps`) with three states: `AVAILABLE`, `MISSING`, `RESTRICTED`. If a function is missing or restricted, **one feature** is switched off, not the addon.
2. **Secret values**: `Compat.IsSecret(v)` recognizes them (`issecretvalue`, `canaccessvalue`, `issecrettable`); `Compat.Readable(v)` returns the value or `nil`; `Compat.Query(fn, ...)` calls in a protected way and returns the state plus the values, with secrets converted to `nil`; `Compat.SafeCall` is the same without the state. **No decision is based on a secret value**: it does not enter the context, and in the event's `fields` field the field is `RESTRICTED`.
3. **Hidden identities**: `Compat:IsUnitIdentitySecret(unit)` (`C_Secrets.ShouldUnitIdentityBeSecret`) decides whether to use a target's data. *Q2 update (issue #6):* if it is secret, `NS:BuildContext` **reads and compares nothing** about the target: the context has only `hasTarget` and `targetSecret` (no name, type, class, race, faction, `hostile`, `elite`…), so lines with `{target}` are discarded and no decision depends on a hidden value. Every other context read goes through `SafeCall`: a secret datum means "I don't know" (`nil`), not "false". The test mock returns secrets for the units in `SECRET_UNITS` and raises an error on forbidden uses.
4. **Defensive event registration**: `Compat:RegisterEvent(frame, event, unit)` checks `C_EventUtils.IsEventValid`, registers inside a `pcall` (with `RegisterUnitEvent` for single-unit events) and records the outcome in the matrix. An event that cannot be registered becomes `MISSING` and does not block startup.
5. **Error isolation**: `Diagnostics:Guard(module, fn, ...)` runs with `xpcall`, records the error (at most 30, grouped) and carries on. It is used by module startup, commands, event sources and bus handlers.
6. **Probe at load time**: `Compat:Probe()` fills in the matrix (client, APIs, events, values, restrictions, chat, integrations) and `/au debug [full]` shows it. It also serves as a tool for the GDD's technical spikes (SP-01, SP-02).
7. **`WOW_PROJECT_ID` is not trusted** to choose a compatibility branch (in the beta it could be 1): targeted checks are done instead. Forever detection (`isForever`) uses `WOW_PROJECT_CAMELOT` or Interface 16001–19999.
8. **Timers and the small calls go through Compat too (#166).** `Compat.After(delay, fn)` and `Compat.Ticker(interval, fn)` wrap `C_Timer.After` and `C_Timer.NewTicker`: a missing or raising `C_Timer` gives `false` / `nil` and never an error, and the caller decides whether to run the action at once or give it up. `IsInInstance`, `IsInGroup`, `IsInRaid`, `IsInGuild`, `UnitSex`, `UnitExists`, `GetLocale` and `GetCursorPosition` use `SafeCall` like the rest. A reading that is *unknown* stays unknown: the quest log scan returns nil, not zero, when an entry is hidden or raises, and `/au probe` guards every step so that one unexpected answer costs one line.
9. **No combat log**: `CombatLogGetCurrentEventInfo` is not in the Forever API dump (GDD §2.3); reactions are based on normal game events.

## Alternatives considered

- **Calling the APIs directly**, as most addons do. Shorter, but a missing API or a new restriction would break the addon without explaining why.
- **A single `pcall` around everything.** It would switch off the whole addon on every error and hide the cause.
- **Branching on `WOW_PROJECT_ID`.** Unreliable in Forever (see above).

## Consequences

- Positive: a single place to fix when the client changes; diagnostics useful to the user and to developers; tests with simulated secret values and restrictions (`Tests/TestCompat.lua`).
- Negative: one more level of indirection (`Compat.Query(...)` instead of a direct call); **the names, signatures and existence of many APIs in build 70658 have not been verified in the real client** (`C_RestrictedActions`, `C_Secrets`, `debugstack`, etc.): they are verified in the G1 test and in the dump check (see [ADR 0010](0010-forever-api-dump-as-reference.md)).
- Every new feature that depends on an untested API must go through Compat and **degrade gracefully** (roadmap rule, "Postponed in-game tests").

## References

- GDD §2.3, §3.8, §13, §15; [docs/REFERENCES.md](../REFERENCES.md).
- `Core/Compat.lua`, `Core/Diagnostics.lua`, `Core/EventBus.lua`, `Core/ContextResolver.lua`.
