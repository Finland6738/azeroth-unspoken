"""Docs rule for pull requests (task R1).

A PR that changes the addon (AzerothUnspoken/, AzerothUnspoken_Example/ or AzerothUnspoken_Versi/) must also change CHANGELOG.md and at
least one documentation file, unless it carries the label `no-docs-needed` (pure refactors, tests only).

Used by .github/workflows/docs-check.yml; the rule itself is plain Python so the tests can exercise it.

Usage:
  python tools/check_pr_docs.py --files changed.txt [--labels labels.txt]
  changed.txt: one changed path per line (as given by the GitHub API, forward slashes);
  labels.txt:  one label name per line.
Exit code 0 = rule satisfied (or not applicable), 1 = something to update.
"""
import argparse
import sys

ADDON_DIRS = ("AzerothUnspoken/", "AzerothUnspoken_Example/", "AzerothUnspoken_Versi/")
# the pack guide lives inside the addon folder but it is documentation, not addon behavior
DOC_ONLY_IN_ADDON = ("AzerothUnspoken/PACK_FORMAT.md",)
CHANGELOG = "CHANGELOG.md"
DOC_FILES = ("README.md", "README.it.md", "AzerothUnspoken/PACK_FORMAT.md")
DOC_DIRS = ("docs/",)   # includes docs/wiki/
SKIP_LABEL = "no-docs-needed"


def is_addon_change(path):
    return path.startswith(ADDON_DIRS) and path not in DOC_ONLY_IN_ADDON


def is_doc(path):
    return path in DOC_FILES or path.startswith(DOC_DIRS)


def evaluate(files, labels):
    """Returns (ok, message). `message` explains what to update when ok is False."""
    files = [f.strip().replace("\\", "/") for f in files if f.strip()]
    addon = [f for f in files if is_addon_change(f)]
    if not addon:
        return True, "No change under AzerothUnspoken/, AzerothUnspoken_Example/ or AzerothUnspoken_Versi/: the docs rule does not apply."
    if SKIP_LABEL in labels:
        return True, f"Label `{SKIP_LABEL}` is set: the docs rule is skipped ({len(addon)} addon files changed)."
    missing = []
    if CHANGELOG not in files:
        missing.append(
            "CHANGELOG.md: add an entry in the \"Unreleased\" section, in the group of your step or fix "
            "(not at the bottom).")
    if not any(is_doc(f) for f in files):
        missing.append(
            "at least one documentation file, whichever describes what you changed: docs/ (ARCHITECTURE.md, an ADR "
            "in docs/adr/, G1_checklist.md), docs/wiki/ (the player's manual: required for any user-visible change), "
            "README.md and README.it.md (commands, numbers, privacy, status) or AzerothUnspoken/PACK_FORMAT.md "
            "(pack API).")
    if not missing:
        return True, "The PR changes the addon and also updates CHANGELOG.md and the documentation."
    shown = ", ".join(addon[:5]) + (f" and {len(addon) - 5} more" if len(addon) > 5 else "")
    lines = [f"This PR changes the addon ({shown}) but the documentation is not up to date. Please also update:"]
    lines += [f"  - {m}" for m in missing]
    lines += ["",
              "Every step or fix PR updates CHANGELOG, the affected docs and the affected wiki pages in docs/wiki/ "
              "in the same PR (see CONTRIBUTING.md, section 8).",
              f"If this PR is a pure refactor or tests only and nothing needs documenting, add the label "
              f"`{SKIP_LABEL}` to the PR: the check runs again by itself."]
    return False, "\n".join(lines)


def read_lines(path):
    if not path:
        return []
    with open(path, encoding="utf-8") as f:
        return [l.strip() for l in f.read().splitlines() if l.strip()]


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--files", required=True, help="file with the changed paths, one per line")
    ap.add_argument("--labels", help="file with the PR labels, one per line")
    args = ap.parse_args(argv)
    ok, message = evaluate(read_lines(args.files), read_lines(args.labels))
    print(message)
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
