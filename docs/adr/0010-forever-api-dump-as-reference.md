# 0010. The Forever API dump as a reference, never copied

- Status: Accepted
- Date: 2026-10-29 (from [docs/REFERENCES.md](../REFERENCES.md))

## Context

Addons for WoW Forever (Interface 16001) use APIs that match neither retail nor Classic Era, and the general public documentation mostly concerns retail. To avoid writing code that calls nonexistent functions we need a reliable source for what the Forever client really exposes. There is a dump extracted from the client itself with `APIDocumentation`, in the public repository [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons): build 70170 (slightly older than the reference build 70658), with 6,598 functions, 1,806 events and 797 types. That repository **declares no license**.

## Decision

1. **The dump is used as a reference to decide what to call**, with the file `docs/api.json` (machine-readable) and the definitions `types/WowForeverAPI.lua`. Before using a new function or event we check there, and then protect it with Compat ([ADR 0005](0005-compat-secret-values-and-defensive-events.md)).
2. **A local copy next to the project, not inside it**: `..\WoW-Addons`, cloned with `git clone --depth 1 https://github.com/Atraeau/WoW-Addons ../WoW-Addons`. **No file from that repository enters ours**: it has no license, so we do not redistribute it. It is only consulted; its scripts are not executed (it is downloaded material).
3. **The IDE reads the definitions from there**: `.luarc.json` links them with `workspace.library: ["../WoW-Addons/types"]`, and the WoW Lua Language Server plugin provides the WoW APIs. They are not duplicated in the project.
4. **Absence from the dump does not mean absence from the client.** Functions defined in Lua by FrameXML (for example `Settings.*`, `InterfaceOptions_AddCategory`) do not appear in `APIDocumentation`. For those, Compat and the in-game test apply.
5. **The final source is always the installed client** (build 1.60.1.70658). In the future we will be able to extract an exact dump of our own build with the `WowApiExport` addon (`/apiexport`, then `/reload`).
6. **An automatic check is planned** in step S3: `Tests/check_api.py` will read the dump (configurable path) and report the functions and events used by the addon that are missing, with allowed exceptions for FrameXML. If the dump is not there, the check will be skipped with a warning.

The checks already done on the dump (2026-10-29) are in the table in [REFERENCES.md](../REFERENCES.md): for example `GetSpellInfo` and `CombatLogGetCurrentEventInfo` turn out to be **absent**, and `UnitHealth` has a restricted parameter type (`UnitTokenPvPRestrictedForAddOns`).

## Alternatives considered

- **Copying the dump into the repository.** Convenient, but without a license it cannot be redistributed. Rejected.
- **Relying on the retail documentation** (Warcraft Wiki). Useful for semantics, but it can differ from the Forever client. Used only as supporting reading.
- **Discovering everything in game.** Slow and dependent on the user; the dump avoids many attempts.
- **Asking the external repository for permission** to include its files. Possible in the future; not necessary as long as consulting it is enough.

## Consequences

- Positive: fewer errors on nonexistent APIs; autocompletion in the IDE; reasoned compatibility choices.
- Negative: dependence on a third-party repository and on a build slightly different from ours; whoever clones the project must also clone the dump by hand if they want autocompletion and the automatic check; the check does not replace testing in the client.

## References

- [docs/REFERENCES.md](../REFERENCES.md), `.luarc.json`.
- GDD §13, §22.
