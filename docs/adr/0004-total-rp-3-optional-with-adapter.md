# 0004. Total RP 3 optional, through an adapter

- Status: Accepted
- Date: 2026-10-29 (decision of the [roadmap](../../ROADMAP.md), no. 5; the code has existed since step S1, the extension is planned in step S5)

## Context

Total RP 3 (TRP3) is the most widely used roleplay profile addon. A narrative companion benefits from it: character name, personality traits, custom race and class. But not all players use it, and its APIs can change between versions and are not a contract with us. The GDD (§8) requires the addon to work 100% even without it.

## Decision

1. **TRP3 is an optional dependency**: `## OptionalDeps: totalRP3` in the `.toc`, no `Dependencies`. No other file of the addon calls TRP3 directly.
2. **A single point of contact: the adapter** `Integration/TotalRP3.lua` (`NS.TotalRP3`).
   - Every access is protected (`pcall`, type checks), is verified at every startup with `TotalRP3:Probe()` and the result enters the capability matrix (`integration:totalRP3`, visible in `/au debug`).
   - If TRP3 is missing, or `AddOn_TotalRP3.Player.GetCurrentUser` or `GetFirstName` do not exist, the adapter answers `nil` and the addon uses the character's name.
   - The values read go through `Compat.Readable`.
3. **The user decides**: the integration has a switch (`modules.totalRP3`, "Name from Total RP 3" in the settings) and the wizard mentions it at the dedicated step only if TRP3 is present.
4. **What it does**: it reads the **name** (`GetFirstName`) of the player's profile and uses it in lines (`{player}`). From step S5 it also reads the **public psychological traits** of the player's own profile (`GetInfo("characteristics/PS")`), with a separate consent, for the Character Soul with the priority *explicit choice > TRP3 > game data > neutral values* ([ADR 0016](0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md)). Nothing else.
5. **What is planned** (not yet present):
   - step S6c: **public** profile data of a target (custom race and class, traits), with consent, never mandatory.

## Alternatives considered

- **TRP3 mandatory.** It simplifies the code, but excludes those who do not use it and ties the project to an external addon. Rejected.
- **Calling the TRP3 APIs where needed**, without an adapter. Every API change would break several places and diagnostics could not say why. Rejected.
- **Not integrating TRP3.** It loses the main value for the roleplayer audience. Rejected.

## Consequences

- Positive: if TRP3 changes or disappears, at most one file breaks and the capability matrix says so; tests cover presence, absence and an API that raises an error (`Tests/TestCompat.lua`, `Tests/TestNarrator.lua`, which set `AddOn_TotalRP3` by hand).
- Negative: the adapter has to be updated when the TRP3 APIs change; **operation with the real TRP3 has not been tested in game** (G1 checklist, SP-03 step 7).
- Consent and privacy apply to every new read: no data about another player is read or saved without a choice by the user.

## References

- GDD §8.
- `Integration/TotalRP3.lua`, `Core/ContextResolver.lua` (`PlayerName`).
- ADR 0016 (traits read from TRP3).
- ROADMAP: steps S5 and S6c.
