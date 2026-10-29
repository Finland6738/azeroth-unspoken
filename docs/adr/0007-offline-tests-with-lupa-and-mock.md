# 0007. Offline tests with lupa and a mock client

- Status: Accepted
- Date: 2026-10-29

## Context

An addon only runs inside the client, and the client cannot be launched in a continuous integration environment. But most of the logic (line selection, configuration, event bus, Chat Gateway, compatibility) does not depend on the graphics. We want to be able to verify a lot, quickly and repeatably, before touching the game. Development also goes on when the user cannot test in the client (G1 postponed).

## Decision

1. **Tests run outside the game with [lupa](https://github.com/scoder/lupa) in Lua 5.1 mode** (`lupa.lua51`), the same version as the client.
2. **A mock client** (`Tests/MockWoWAPI.lua`) provides the WoW functions the addon uses: units, zones, time, events, frames and widgets with state (`Show/Hide`, text, `Click()`, `TypeEnter()`, `UPDATE(dt)`, `FindWidgets`), chat and `SendChatMessage`. It also simulates the client's difficult behaviors: `MakeSecret()` and `SECRET_UNITS` for secret values, `RESTRICTIONS`, `VALID_EVENTS` (registering an unknown event raises an error), and `GetBuildInfo` for build 1.60.1.70658.
3. **The launcher** (`Tests/run_tests.py`) loads the files in `.toc` order, as the client would, with `ADDON, NS = ...`, and fires `ADDON_LOADED` and `PLAYER_ENTERING_WORLD`. It then runs the checks on the database and on the flow (no public chat with the defaults, events → line, commands) and the `Tests/Test*.lua` files, **each in a fresh runtime**, with `T.run`, `T.eq`, `T.ok` defined in the mock. It exits with code 1 if a check fails.
4. **Command**, from the project root: `.venv/Scripts/python -I -X utf8 Tests/run_tests.py AzerothUnspoken` (the `.venv` environment is local, outside version control; `-I` isolates the interpreter, `-X utf8` forces UTF-8).
5. **Every step adds tests for what it builds** and makes them pass before the PR. New functions that depend on untested APIs are also tested for the "missing API" and "secret value" cases.

## Alternatives considered

- **Testing only in the client.** Slow, not repeatable, and dependent on the user's availability. Rejected as the only way.
- **In-game frameworks** (WoWUnit or similar). Useful, but they do not run without the client and do not cover the file-writing checks.
- **An external Lua 5.1 interpreter with busted or luaunit.** Possible, but lupa installs with a single `pip` even on Windows and lets us write the launcher in Python, for example to read the `.toc`.
- **A full simulator of the WoW interface.** Too expensive: the mock only simulates what is needed.

## Consequences

- Positive: a test cycle of a few seconds; regressions caught immediately; risky behaviors (secret values, blocked chat, nonexistent events) can be tested with forced inputs.
- Negative (important):
  - **a passing test shows that the code is consistent with our assumptions about the client, not that the client respects them**: this is why the G1 test exists ([checklist](../G1_checklist.md), in Italian);
  - the mock must be updated when new APIs are used, and it can diverge from the real client;
  - the drawing of widgets (appearance, dragging, click pass-through) cannot be verified outside the game.
- The repository does not have continuous integration yet: tests are run by hand before every PR.

## References

- GDD §16.1.
- `Tests/run_tests.py`, `Tests/MockWoWAPI.lua`, `Tests/Test*.lua`.
- [CONTRIBUTING.md](../../CONTRIBUTING.md), Tests section.
