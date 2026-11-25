"""Checks of the release packages (tools/package_release.py; ADR 0061, docs/specs/romance.md point 12.3; run by
run_tests.py).

1. In a throwaway git repository (a tree, no commit): the base folder, a regional folder, a language folder and an 18+
   folder (`## X-AzerothUnspoken-Romance: 18`). The main zip, the one CurseForge receives, holds the first three and
   never the 18+ folder; a second zip holds the 18+ folder alone.
2. In this repository: the 18+ pack's .toc is the one of point 12.1 (LoadOnDemand, the Romance field, the dependency),
   and at HEAD (when git tracks the folder) the split puts it out of the main package.
3. The packager never names CurseForge as a place for the second zip.

Usage: python -I -X utf8 Tests/check_package.py. Exits with 1 if something fails.
"""
import os
import shutil
import subprocess
import sys
import tempfile
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(ROOT, "tools"))
import package_release  # noqa: E402

ADULT = "AzerothUnspoken_Romance18"
FAILURES = []


def check(cond, msg):
    print(("  ok  " if cond else "  ERROR  ") + msg)
    if not cond:
        FAILURES.append(msg)
    return cond


def write(root, rel, text):
    path = os.path.join(root, rel)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8", newline="") as f:
        f.write(text)


def tops(path):
    """The top-level folders of a zip."""
    with zipfile.ZipFile(path) as z:
        return sorted({n.split("/")[0] for n in z.namelist() if "/" in n})


def fake_repository(tmp):
    """A git repository with four addon folders and a tree of them (returned): no commit, so no author is needed."""
    subprocess.run(["git", "init", "-q", tmp], check=True)
    subprocess.run(["git", "-C", tmp, "config", "core.autocrlf", "false"], check=True)
    write(tmp, "AzerothUnspoken/AzerothUnspoken.toc", "## Interface: 16001\n## Version: 9.9.9\n\nCore.lua\n")
    write(tmp, "AzerothUnspoken/Core.lua", "-- base\n")
    write(tmp, "AzerothUnspoken_Kalimdor/AzerothUnspoken_Kalimdor.toc",
          "## Interface: 16001\n## LoadOnDemand: 1\n## X-AzerothUnspoken-Region: kalimdor\n\nA.lua\n")
    write(tmp, "AzerothUnspoken_Kalimdor/A.lua", "-- region\n")
    write(tmp, "AzerothUnspoken_enUS/AzerothUnspoken_enUS.toc",
          "## Interface: 16001\n## LoadOnDemand: 1\n## X-AzerothUnspoken-Language: enUS\n\nT.lua\n")
    write(tmp, "AzerothUnspoken_enUS/T.lua", "-- texts\n")
    write(tmp, f"{ADULT}/{ADULT}.toc", "## Interface: 16001\n## Dependencies: AzerothUnspoken\n## LoadOnDemand: 1\n"
          "## X-AzerothUnspoken-Romance: 18\n\nRegistry.lua\n")
    write(tmp, f"{ADULT}/Registry.lua", "-- 18+\n")
    write(tmp, "README.md", "not an addon folder\n")
    subprocess.run(["git", "-C", tmp, "add", "-A"], check=True)
    return subprocess.run(["git", "-C", tmp, "write-tree"], check=True, capture_output=True, text=True).stdout.strip()


def main():
    print("1) the split, in a throwaway repository")
    tmp = tempfile.mkdtemp(prefix="au_package_")
    try:
        tree = fake_repository(tmp)
        main_, adult = package_release.addon_folders(tmp, tree)
        check(main_ == ["AzerothUnspoken", "AzerothUnspoken_Kalimdor", "AzerothUnspoken_enUS"],
              f"the main package's folders: {main_}")
        check(adult == [ADULT], f"the 18+ folders: {adult}")
        out = package_release.build(tmp, tree, os.path.join(tmp, "build"))
        check(len(out) == 2, f"two zips ({len(out)})")
        first, second = out[0], out[-1]
        check(os.path.basename(first[0]) == "AzerothUnspoken-9.9.9.zip" and first[2] == "curseforge",
              f"the main zip: {os.path.basename(first[0])}, for CurseForge")
        check(ADULT not in tops(first[0]), "the main zip has no X-AzerothUnspoken-Romance folder")
        check(tops(first[0]) == main_, f"the main zip holds the other folders: {tops(first[0])}")
        with zipfile.ZipFile(first[0]) as z:
            check(not any("Romance" in n for n in z.namelist()), "not one file of the 18+ pack in the main zip")
        check(os.path.basename(second[0]) == f"{ADULT}-9.9.9.zip" and second[2] == "github",
              f"the second zip: {os.path.basename(second[0])}, for the GitHub release only")
        check(tops(second[0]) == [ADULT], f"the second zip holds the 18+ folder alone: {tops(second[0])}")
        check(package_release.is_adult("## Interface: 16001\n## X-AzerothUnspoken-Romance: 18\n"), "the field is read")
        check(not package_release.is_adult("## X-AzerothUnspoken-Region: kalimdor\n"), "a regional .toc is not 18+")
        check(not package_release.is_adult("## Notes: mentions X-AzerothUnspoken-Romance in passing\n"),
              "only the field itself counts, not a mention in another line")
    finally:
        shutil.rmtree(tmp, ignore_errors=True)

    print("2) this repository")
    toc_path = os.path.join(ROOT, ADULT, ADULT + ".toc")
    if check(os.path.isfile(toc_path), f"{ADULT}/{ADULT}.toc exists"):
        toc = open(toc_path, encoding="utf-8").read()
        check(package_release.is_adult(toc), "its .toc marks it as the 18+ pack")
        for line in ("## Interface: 16001", "## Title: Azeroth Unspoken - Romance 18+", "## Dependencies: AzerothUnspoken",
                     "## LoadOnDemand: 1", "## X-AzerothUnspoken-Romance: 18"):
            check(line in toc.splitlines(), f"its .toc has '{line}' (spec 12.1)")
    tracked = subprocess.run(["git", "-C", ROOT, "ls-tree", "--name-only", "HEAD", f"{ADULT}/{ADULT}.toc"],
                             capture_output=True, text=True).stdout.strip()
    if tracked:
        main_, adult = package_release.addon_folders(ROOT, "HEAD")
        check(ADULT not in main_ and ADULT in adult, "at HEAD the 18+ pack is out of the main package")
        check("AzerothUnspoken" in main_ and len(main_) > 5, f"at HEAD the main package keeps the others ({len(main_)})")
    else:
        print("  (the 18+ folder is not committed yet: the split at HEAD is checked once it is)")

    print("3) where the second zip goes")
    src = open(os.path.join(ROOT, "tools", "package_release.py"), encoding="utf-8").read()
    check("never uploaded to CurseForge" in src and "GitHub release ONLY" in src,
          "the packager says the 18+ zip goes to the GitHub release only")

    print(f"\nPackage check: {len(FAILURES)} failure(s).")
    return 1 if FAILURES else 0


if __name__ == "__main__":
    sys.exit(main())
