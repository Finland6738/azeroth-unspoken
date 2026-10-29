# 0013. The GitHub wiki: a player's manual generated from `docs/wiki/`

- Status: Accepted (revised on 2026-10-29 by task W1; the first version said "the wiki is not used for now")
- Date: 2026-10-29

## Context

Task D1 evaluated the GitHub wiki as a place for user guides and decided not to use it for now (see "History" below). Task W1 reopened the question: the project now has many player-facing features (narrator, Chat Gateway, personality, memory, relationships, NPC dialogues, stories) and an audience of roleplayers who are not technical and do not read the repository. They need an exhaustive manual, easy to navigate, with no developer content.

Facts verified on 2026-10-29:

- the Wiki feature is **enabled** on the repository, but the wiki git repository (`…/azeroth-unspoken.wiki.git`) **does not exist yet**: GitHub creates it only after the first page is saved from the web interface, and that cannot be done from a command or a script;
- a GitHub wiki is a **separate git repository**: its pages do not go through the main repository's pull requests and are not tied to an addon version.

## Decision

1. **`docs/wiki/*.md` is the only source of the wiki.** The wiki is a **generated mirror**: no content originates in the wiki. The pages are versioned with the code, reviewed in PRs, and checked by the tests.
2. **The wiki is a user manual for players**, in English: installation, the wizard, every command and setting with defaults, every feature, privacy, troubleshooting, FAQ, glossary, and how to report bugs and feedback. It contains **no developer content** (no code internals, APIs, tests, git or build) and **no sensitive data** (no personal paths, names, emails or account names). It links once to the repository; the pack-writing guide stays in `AzerothUnspoken/PACK_FORMAT.md` and is only linked.
3. **Publishing: `tools/sync_wiki.py`.** It clones the wiki repository, copies `docs/wiki/*.md` with a "generated from docs/wiki, do not edit here" note at the top of every page, removes the pages that are no longer in `docs/wiki/`, commits with the repository's noreply identity and pushes. If the wiki repository does not exist yet, it explains how to create the first page and exits with code 2.
4. **Checks** (`Tests/check_docs.py`): every link between wiki pages (`[[Text|Page]]`, `[text](Page#anchor)`) resolves to a page and an anchor in `docs/wiki/`, every page is in `_Sidebar.md`, and no page contains an email address, a personal path, CRLF line endings or a word from a list of developer terms.
5. **Editing rule.** A change to the addon's behavior updates `docs/wiki/` in the same PR. The automatic sync on every merge to `main` and the CI check that enforces the rule are task **R1**, not part of this decision's first implementation.
6. **Developer documentation stays in `docs/`**, `README.md`, `CONTRIBUTING.md` and `CHANGELOG.md`, as before.

## Alternatives considered

- **Writing the wiki in the browser.** Convenient, but no review, no versions and no tests: the manual and the addon could diverge. Rejected.
- **Keeping the user guide only in the README.** The README is already long and mixes player and developer content; a sidebar-navigated manual reads better for players. Rejected for the manual; the README remains the project's front page.
- **GitHub Pages.** A real site generated from `docs/`. Possible later; the wiki is enough today and needs no build.

## Consequences

- Positive: players get a complete manual with navigation; there is still a single source, reviewed and tested with the code.
- Negative: the manual must be kept in step with every change of behavior (to be enforced by R1); until R1, publishing is a manual run of `tools/sync_wiki.py`.
- The first publication needs one manual step by the owner: create the first wiki page in the browser, once.

## History

The first version of this ADR (task D1, 2026-10-29) decided not to use the wiki for now: the project was at 0.1.0, the pack format was about to change, and the audience read the README. It already stated that, if used, the wiki would be a mirror generated from the repository by `tools/sync_wiki.py`, with a "do not edit here" note. Task W1 applies that rule.

## References

- [docs/README.md](../README.md) (documentation index), [docs/wiki/Home.md](../wiki/Home.md) (the manual's first page).
- ROADMAP: tasks D1, W1, R1.
