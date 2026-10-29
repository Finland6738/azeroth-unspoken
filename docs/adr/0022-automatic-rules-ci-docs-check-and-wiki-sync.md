# 0022. Automatic rules: CI, a docs check and the wiki sync

- Status: Accepted
- Date: 2026-10-29 (task R1)

## Context

The project is developed by one owner and by automated sessions, one PR at a time ([ADR 0009](0009-git-flow-branch-pr-squash.md)). Until now the rules were written down and followed by discipline: tests were run by hand before the PR, and the documentation and the player's manual ([ADR 0013](0013-github-wiki.md)) were kept up to date only if the session remembered. Two things drifted or could drift: the tests could be skipped, and `docs/`, `CHANGELOG.md` and `docs/wiki/` could fall behind the code. ADR 0013 left two things to this task: the sync of the wiki on every merge, and the check that enforces "a change of behavior updates `docs/wiki/`".

## Decision

Three GitHub Actions workflows, a PR template, and a protection of `main`.

1. **CI (`.github/workflows/ci.yml`), job `Tests`**, on every pull request and every push to `main`: Ubuntu, Python, `lupa` pinned, then the **whole** suite (`Tests/run_tests.py`), which includes the addon tests, `check_api.py`, the examples and relative links of the docs, the wiki checks, the privacy scan of every tracked file (`Tests/check_privacy.py`) and the checks of the rules themselves (`Tests/check_rules.py`). The public API dump ([ADR 0010](0010-forever-api-dump-as-reference.md)) is shallow-cloned **into the runner's temporary folder only**, never committed, and passed with `AU_API_JSON`. `AU_REQUIRE_API=1` turns a missing dump from a skipped check into a failure, so CI never passes by skipping.
2. **Docs rule (`.github/workflows/docs-check.yml`), job `Docs rule`**, on pull requests (and again when a label is added or removed). The rule is in `tools/check_pr_docs.py`:
   - if the PR changes anything under `AzerothUnspoken/` or `AzerothUnspoken_Example/` (the pack guide `AzerothUnspoken/PACK_FORMAT.md` is documentation and does not count as an addon change), it must **also** change `CHANGELOG.md` **and** at least one of `docs/` (which includes `docs/wiki/`), `README.md`, `README.it.md`, `AzerothUnspoken/PACK_FORMAT.md`;
   - unless the PR has the label **`no-docs-needed`**, for pure refactors or tests only;
   - the failure says exactly what to update. The check cannot know whether a change is user-visible: the PR template asks for the wiki pages explicitly, and the reviewer (the owner or the session itself) answers that.
3. **Wiki sync (`.github/workflows/wiki-sync.yml`)**, on a push to `main` that changes `docs/wiki/**` (or the sync tool or the workflow), and by manual dispatch. It runs `tools/sync_wiki.py` with the workflow token (`permissions: contents: write`) and commits as `github-actions[bot]`. The token goes in an HTTP header, never in a URL. If the wiki repository does not exist yet, the job **passes with a warning**. Runs are serialized (`concurrency`, never cancelled), so two merges in a row publish in order. **The wiki is never edited on GitHub:** a change made there is overwritten by the next sync.
4. **PR template (`.github/pull_request_template.md`)** with the checklist: tests, CHANGELOG, docs, wiki pages, in-game checklist, no personal data, `Closes #N`.
5. **Branch protection on `main`**: the checks `Tests` and `Docs rule` must pass before a merge; **no required reviews** (one maintainer plus automated sessions); the rule applies to administrators too, because the sessions work with the owner's token and would otherwise bypass it; no force pushes; no deletion. Branches do not have to be up to date with `main` (so a green PR is not made stale by another merge), and the squash merge keeps the history linear.
6. **Actions are pinned to a commit** (with the version in a comment), the workflows declare the least permissions they need, and no workflow runs code from a pull request with write access or secrets (`pull_request`, read-only token).

## Alternatives considered

- **Reviews required before merge.** There is nobody to review: the project is maintained by one person and automated sessions. Rejected; CI is the gate.
- **A bot that edits the PR to add the missing docs.** It cannot know what changed for the player. Rejected: a failing check with a precise message is cheaper and honest.
- **Checking that the wiki changed whenever the addon changed.** Too many false positives (a fix that changes nothing visible). The "docs" alternatives plus the label `no-docs-needed` and the PR checklist were chosen instead.
- **Letting the owner bypass the checks as an administrator.** Convenient, but it would also let the automated sessions merge red PRs. The owner can still switch the protection off in the settings in an emergency.
- **Syncing the wiki from a separate workflow run after CI.** The merge to `main` already required green checks; one more layer adds complexity without adding safety.

## Consequences

- Positive: no merge with failing tests; the CHANGELOG and the docs travel with the code; the wiki is published without a manual step and cannot diverge from `docs/wiki/`.
- Negative: a PR that touches the addon needs a CHANGELOG entry and a doc (or the label); the first run of the wiki sync on `main` is the first real proof that the workflow token can push to the wiki; if the wiki repository is deleted, the sync only warns.
- The docs rule runs `tools/check_pr_docs.py` from the pull request itself, so a PR could edit the rule; the owner sees that in the diff. This is accepted for a one-maintainer project.
- What the CI does not prove: anything that needs the real client ([G1](../G1_checklist.md)).

## References

- [CONTRIBUTING.md](../../CONTRIBUTING.md), section 8; [ROADMAP.md](../../ROADMAP.md), "Git flow" and task R1.
- `.github/workflows/`, `.github/pull_request_template.md`, `tools/check_pr_docs.py`, `tools/sync_wiki.py`, `Tests/check_rules.py`, `Tests/check_privacy.py`.
- [ADR 0007](0007-offline-tests-with-lupa-and-mock.md), [ADR 0009](0009-git-flow-branch-pr-squash.md), [ADR 0013](0013-github-wiki.md).
