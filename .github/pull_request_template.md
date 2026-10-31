<!--
Write the title and the description in English. Say what changed and WHY, and say honestly what you did NOT verify
(in particular everything that needs the real game client).
-->

## What and why

<!-- A short summary of the change. -->

## Not verified

<!-- Everything that could not be checked offline (the real client, real Total RP 3...). Write "nothing" if so. -->

## Checklist

Every step or fix PR updates the CHANGELOG, the affected docs and the affected wiki pages **in the same PR**
([CONTRIBUTING.md](../CONTRIBUTING.md), section 8). The wiki is never edited on GitHub: it is published from `docs/wiki/`.

- [ ] The tests pass: `python -I -X utf8 Tests/run_tests.py AzerothUnspoken` (CI must also be green before merging).
- [ ] `CHANGELOG.md` is updated, in the "Unreleased" section, in the group of this step or fix.
- [ ] The docs are updated: `docs/ARCHITECTURE.md`, an ADR in `docs/adr/` if a decision changed (and the ADR index), `AzerothUnspoken/PACK_FORMAT.md` if the pack API changed, `README.md` **and** `README.it.md` for commands, numbers, privacy and status.
- [ ] **The wiki pages in `docs/wiki/` are updated for any user-visible change** (commands, settings, defaults, behavior, privacy, troubleshooting).
- [ ] `docs/G1_checklist.md` is updated if the behavior needs confirmation in the real client.
- [ ] Literary forms (inscriptions, songs, rhymes, hymns, laments) pass the review checklist of [CONTRIBUTING.md](../CONTRIBUTING.md#literary-forms): attributed, original, metre counted, private voice only.
- [ ] No personal data anywhere: no names, emails or personal paths (only `Finland6738` and noreply addresses).
- [ ] If the PR is a pure refactor or tests only and nothing needs documenting: the label `no-docs-needed` is set (otherwise the "Docs rule" check fails for changes under `AzerothUnspoken/` or any other `AzerothUnspoken_*` folder).

Closes #
