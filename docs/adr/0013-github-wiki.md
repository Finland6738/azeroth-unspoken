# 0013. The GitHub wiki: `docs/` remains the source, the wiki is not used for now

- Status: Accepted
- Date: 2026-10-29

## Context

Task D1 asked to evaluate the GitHub wiki as a place for user guides (installation, commands, frequently asked questions, how to write packs). The project's documentation already lives in `docs/`, in the README and in `CONTRIBUTING.md`, all versioned and reviewed in PRs.

Facts verified on 2026-10-29:

- the Wiki feature is **enabled** on the repository (it is GitHub's default setting) but **empty**: the address `…/azeroth-unspoken.wiki.git` answers "Repository not found";
- a GitHub wiki is a **separate git repository**, which only exists after the first page is created from the web interface: it cannot be started from a command or a script;
- wiki pages do not go through the main repository's pull requests: whoever has permission writes directly, with no review and no link to an addon version.

## Decision

1. **The authoritative source of the documentation is `docs/` (plus `README.md`, `README.it.md`, `CONTRIBUTING.md`, `CHANGELOG.md`).** It lives in the repository, is versioned together with the code, goes through PRs, and reads well on GitHub with relative links.
2. **For now the wiki is not used.** No pages are published and `tools/sync_wiki.py` is not created.
3. **If it is needed in the future**, the wiki will only be a **mirror** generated from the files in `docs/` by a script (`tools/sync_wiki.py`), with an "automatically generated: do not edit here" note on every page and editing restricted to collaborators. No content will originate only in the wiki.
4. **When to reconsider**: at step S12 (manual, privacy, troubleshooting, v1.0) or when an audience of non-technical players who do not read the repository appears. At that point: user pages (installation, commands, FAQ, writing packs) generated from the same sources.
5. **Current state of the Wiki feature**: the repository's "Wiki" tab is visible but empty, because of GitHub's default setting. As long as it is not used, the owner can disable it: `gh repo edit --enable-wiki=false`. This is a repository setting and has not been changed by this task.

## Alternatives considered

- **Enabling the wiki and using it as the main documentation.** Convenient to edit from the browser, but separate from the code, with no review and no versions: the documentation and the addon could diverge. Rejected.
- **Enabling the wiki as a mirror right away, with the sync script.** Possible, but:
  - the wiki cannot be created from a script: a page must first be created by hand on the site, so it is a manual step that an automatic task cannot do;
  - the project is at 0.1.0 and the pack format will change with step S3: user guides written now would have to be rewritten almost immediately;
  - it doubles the surface to maintain (Italian and English, two places) for an audience that today reads the README.
  Postponed, not rejected: the rule at point 3 remains valid.
- **GitHub Pages** (a site generated from `docs/`). A better option than the wiki if a real site is needed; not necessary now.

## Consequences

- Positive: a single source, always aligned with the code and reviewed; no synchronization cost.
- Negative: for now there is no showcase for non-technical users; navigating `docs/` on GitHub is less elegant than a wiki with a sidebar, and the user guides are in the README and in `docs/`, mostly in Italian at the time of writing (from L1 on, documentation is written in English).
- The empty Wiki tab stays visible until the owner disables it or uses it.

## References

- [docs/README.md](../README.md) (documentation index), [CONTRIBUTING.md](../../CONTRIBUTING.md).
- ROADMAP: task D1, step S12.
