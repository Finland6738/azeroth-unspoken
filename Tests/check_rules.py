"""Tests of the automatic rules of the project (task R1): the docs rule for pull requests, the privacy scanner and the
shape of the GitHub workflows (pinned actions, declared permissions, the required job names).

Usage: python -I -X utf8 Tests/check_rules.py   (exit code 1 if a check fails)
"""
import glob
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(ROOT, "tools"))
sys.path.insert(0, HERE)
import check_pr_docs  # noqa: E402
import check_privacy  # noqa: E402

FAILURES = []


def check(cond, msg):
    if cond:
        print("  ok  " + msg)
    else:
        FAILURES.append(msg)
        print("  FAILED  " + msg)


def docs_rule():
    print("DOCS RULE (tools/check_pr_docs.py)")
    ev = check_pr_docs.evaluate
    code = "AzerothUnspoken/Systems/Director.lua"
    ok, msg = ev([code], [])
    check(not ok, "addon change alone: fails")
    check("CHANGELOG.md" in msg and "docs/wiki/" in msg and "no-docs-needed" in msg,
          "the message says what to update, and mentions the label")
    ok, msg = ev([code, "CHANGELOG.md"], [])
    check(not ok and "CHANGELOG.md:" not in msg and "documentation file" in msg, "CHANGELOG without docs: asks only for the docs")
    ok, msg = ev([code, "docs/ARCHITECTURE.md"], [])
    check(not ok and "CHANGELOG.md:" in msg and "documentation file" not in msg, "docs without CHANGELOG: asks only for the CHANGELOG")
    for doc in ("docs/ARCHITECTURE.md", "docs/wiki/Commands.md", "README.md", "README.it.md", "AzerothUnspoken/PACK_FORMAT.md",
                "docs/adr/0022-x.md"):
        ok, _ = ev([code, "CHANGELOG.md", doc], [])
        check(ok, f"addon + CHANGELOG + {doc}: passes")
    ok, _ = ev(["AzerothUnspoken_Example/Example.lua", "CHANGELOG.md", "README.md"], [])
    check(ok, "the example pack counts as the addon, and passes with CHANGELOG and docs")
    ok, _ = ev(["AzerothUnspoken_Example/Example.lua"], [])
    check(not ok, "example pack change alone: fails")
    ok, msg = ev([code], ["bug", "no-docs-needed"])
    check(ok and "skipped" in msg, "label no-docs-needed: skipped")
    ok, _ = ev(["Tests/TestSoul.lua", "tools/install_addon.py", ".github/workflows/ci.yml", "ROADMAP.md"], [])
    check(ok, "tests, tools, workflows and roadmap only: the rule does not apply")
    ok, _ = ev(["AzerothUnspoken/PACK_FORMAT.md"], [])
    check(ok, "the pack guide alone is documentation, not an addon change")
    ok, _ = ev([code, "CHANGELOG.md", "docs/G1_checklist.md"], [])
    check(ok, "the in-game checklist counts as documentation")
    ok, _ = ev(["AzerothUnspoken\\Core\\Config.lua"], [])
    check(not ok, "backslash paths are normalized")
    ok, _ = ev([], [])
    check(ok, "no files: passes")


def privacy_scanner():
    print("PRIVACY SCANNER (Tests/check_privacy.py)")
    scan = check_privacy.scan_text
    at = "@"
    check(not scan("a.md", "contact someone" + at + "users.noreply.github.com"), "GitHub noreply address allowed")
    check(not scan("a.md", "name" + at + "example.com"), "example domain allowed")
    check(len(scan("a.md", "write to someone" + at + "gmail.com")) == 1, "a real email address is reported")
    check(len(scan("a.md", "C:" + "\\Users\\someone\\x")) == 1, "a Windows user path is reported")
    check(len(scan("a.md", "see /ho" + "me/someone/x")) == 1, "a Unix home path is reported")
    check(not scan("a.md", "runner path /home/runner/work/x"), "the CI runner path is allowed")
    check(len(scan("a.md", "x " + "AppData" + "\\Roaming")) == 1, "an AppData path is reported")
    check(not scan("a.md", "<WoW>\\_forever_\\Interface\\AddOns and ../WoW-Addons"), "the neutral path forms are allowed")


def workflows():
    print("WORKFLOWS (.github/workflows)")
    files = sorted(glob.glob(os.path.join(ROOT, ".github", "workflows", "*.yml")))
    names = {}
    for f in files:
        with open(f, encoding="utf-8", newline="") as fh:
            names[os.path.basename(f)] = fh.read()
    for needed in ("ci.yml", "docs-check.yml", "wiki-sync.yml"):
        check(needed in names, f"{needed} exists")
    for name, text in names.items():
        uses = re.findall(r"^\s*(?:-\s*)?uses:\s*(\S+)", text, re.MULTILINE)
        check(bool(uses), f"{name}: uses actions")
        for u in uses:
            check(re.fullmatch(r"[\w.-]+/[\w./-]+@[0-9a-f]{40}", u) is not None, f"{name}: {u} is pinned to a commit")
        check(re.search(r"^permissions:", text, re.MULTILINE) is not None, f"{name}: declares permissions")
        check("\r" not in text, f"{name}: LF line endings")
    ci = names.get("ci.yml", "")
    check(re.search(r"^on:\n  pull_request:\n  push:\n    branches: \[main\]", ci, re.MULTILINE) is not None,
          "ci.yml runs on pull requests and on pushes to main")
    check("name: Tests" in ci and "AU_API_JSON" in ci and "Atraeau/WoW-Addons" in ci and "run_tests.py" in ci,
          "ci.yml: job Tests, API dump cloned in the runner, full suite")
    check(not os.path.exists(os.path.join(ROOT, "WoW-Addons")), "the API dump is not inside the repository")
    docs = names.get("docs-check.yml", "")
    check("name: Docs rule" in docs and "labeled" in docs and "check_pr_docs.py" in docs, "docs-check.yml: job Docs rule, re-runs on labels")
    wiki = names.get("wiki-sync.yml", "")
    check("contents: write" in wiki and "docs/wiki/**" in wiki and "workflow_dispatch" in wiki and "--warn-if-missing" in wiki,
          "wiki-sync.yml: contents write, docs/wiki paths, manual dispatch, warns when the wiki is missing")
    template = os.path.join(ROOT, ".github", "pull_request_template.md")
    check(os.path.isfile(template), "pull request template exists")
    if os.path.isfile(template):
        with open(template, encoding="utf-8") as fh:
            t = fh.read()
        for word in ("CHANGELOG", "docs/wiki", "Closes #", "G1_checklist", "tests"):
            check(word in t, f"the pull request template mentions {word}")


docs_rule()
privacy_scanner()
workflows()
print("\n" + ("ok" if not FAILURES else f"{len(FAILURES)} FAILED"))
sys.exit(1 if FAILURES else 0)
