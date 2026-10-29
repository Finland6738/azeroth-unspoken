# 0009. Git flow: one branch per step, pull request, squash merge

- Status: Accepted
- Date: 2026-10-29 (from [ROADMAP.md](../../ROADMAP.md), "Rules for every step session" and "Decisions already made", nos. 7 and 8)

## Context

The project is developed in steps, one at a time, often by different work sessions (even in parallel on different things, such as data and review) and sometimes without the owner being in front of the computer. We need a readable history, the ability to review every step before it enters `main`, and rules that can be followed automatically without doing damage. The repository is public: `github.com/Finland6738/azeroth-unspoken`.

## Decision

1. **`main` is always in working condition**: the tests pass.
2. **Each step works in its own branch, started from an up-to-date `main`.**
   - Roadmap steps: `step/sN-name` (example: `step/s2-narratore`).
   - Cross-cutting activities and fixes: a prefix that states the type, for example `docs/…`, `fix/…`, `review/…` (automatic sessions may use a prefix of their own).
3. **Small, readable commits, with messages in Italian**, saying *what* and *why*. (From L1 on, commit messages, PRs and issues are written in English.)
4. **When a step is finished, with the tests passing**: `git push -u origin <branch>`, then `gh pr create --base main` with a title and description that summarize the step **and what has not been verified** (in particular everything that requires the real client); then `gh pr merge --squash --delete-branch`.
5. **Squash merge**: each PR becomes a single commit on `main`; the history of `main` is one line per step.
6. **After the merge**, the installation in `AddOns` is updated with the files from `main`.
7. **Never** `--force` on `main`, never rewrite already published history, never skip the hooks (`--no-verify`).
8. **Conflicts**: align the branch with `main`, resolve them, repeat the tests, then merge. If that is not possible, **the PR stays open** and the problem is explained in the report.
9. **Issues** (labels `bug`, `enhancement`, `docs`, `in-game`, `content`, `good first issue`, `priority:high|medium|low`) give file and line, expected and observed behavior, and how to reproduce. A PR that fixes an issue closes it with `Closes #N`. Whoever finds a problem outside their own step **opens an issue** instead of widening the step.
10. **Authorized automation**: the owner has authorized automatic commits, pushes, PRs and merges because the PC is unattended. Choices that belong to the owner, such as the license, are not made autonomously: an issue is opened with the options ([#2](https://github.com/Finland6738/azeroth-unspoken/issues/2)).

## Alternatives considered

- **Direct commits to `main`.** No review, no description of unverified things. Rejected.
- **Merge commits or rebase.** They keep every intermediate commit, but in a project with many sessions the history of `main` becomes long and noisy. Squash keeps one commit per PR; the details stay in the PR.
- **Full git flow** (develop, release, hotfix). Excessive for a project with a single owner and a release that has not started yet.
- **Several steps in the same branch.** Steps touch the same files: keeping them separate avoids conflicts and makes it possible to revert just one.

## Consequences

- Positive: one PR per step with its honest report; readable `main`; unverified things are declared.
- Negative: squash loses the intermediate commits (they stay in the PR); discipline is needed to avoid leaving branches open for a long time.
- **There is no continuous integration yet**: tests are run by hand before the PR (see [ADR 0007](0007-offline-tests-with-lupa-and-mock.md)). Adding it is a possible improvement.
- If `main` is already checked out in another worktree, `gh pr merge` may fail to do the local checkout: the merge on GitHub has happened anyway, and must be verified there.

## References

- [ROADMAP.md](../../ROADMAP.md), [CONTRIBUTING.md](../../CONTRIBUTING.md).
