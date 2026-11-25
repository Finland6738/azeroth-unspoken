r"""Build the release packages: zips with the addon folders at their top level, ready to unzip into
`<WoW>\_forever_\Interface\AddOns`.

- `AzerothUnspoken-<version>.zip`, the main package (the one CurseForge receives): AzerothUnspoken and every
  AzerothUnspoken_* folder with its own .toc (the same folders as tools/install_addon.py), EXCEPT a folder whose .toc
  has `## X-AzerothUnspoken-Romance:` (the optional 18+ pack of ADR 0061).
- `<folder>-<version>.zip` for each such folder (today `AzerothUnspoken_Romance18-<version>.zip`): attached to the
  GitHub release only, never uploaded to CurseForge.

Only the files git tracks at the chosen commit go in, so nothing local slips in. The version comes from
`AzerothUnspoken/AzerothUnspoken.toc` (`## Version:`).

Usage, from the repository root:
  python -I tools/package_release.py            build the zips in build/ from HEAD
  python -I tools/package_release.py v0.1.0     build them from a tag or commit
"""
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)

# a folder whose .toc has this field is an 18+ pack: never in the main package (docs/specs/romance.md, point 12.3)
ADULT_FIELD = "X-AzerothUnspoken-Romance"


def git(root, *args):
    return subprocess.run(["git", "-C", root, *args], check=True, capture_output=True).stdout


def toc_text(root, ref, name):
    """The .toc of a folder at ref, or None if git does not track one."""
    path = f"{name}/{name}.toc"
    if not git(root, "ls-tree", "--name-only", ref, path).decode("utf-8").strip():
        return None
    return git(root, "show", f"{ref}:{path}").decode("utf-8")


def is_adult(toc):
    """Does a .toc mark an 18+ pack (`## X-AzerothUnspoken-Romance: ...`)?"""
    return re.search(rf"^\s*##\s*{re.escape(ADULT_FIELD)}\s*:", toc or "", re.M) is not None


def addon_folders(root, ref):
    """The addon folders git tracks at ref, split: (main, adult). main: AzerothUnspoken and AzerothUnspoken_* with
    their own .toc; adult: the ones whose .toc is an 18+ pack's."""
    names = git(root, "ls-tree", "--name-only", ref).decode("utf-8").split("\n")
    main, adult = [], []
    for name in sorted(names):
        if name == "AzerothUnspoken" or name.startswith("AzerothUnspoken_"):
            toc = toc_text(root, ref, name)
            if toc is None:
                continue
            (adult if is_adult(toc) else main).append(name)
    return main, adult


def version(root, ref):
    toc = git(root, "show", f"{ref}:AzerothUnspoken/AzerothUnspoken.toc").decode("utf-8")
    m = re.search(r"^## Version:\s*(\S+)", toc, re.M)
    if not m:
        sys.exit("no '## Version:' line in AzerothUnspoken.toc")
    return m.group(1)


def build(root=ROOT, ref="HEAD", out_dir=None):
    """Builds the zips. Returns [(path, folders, where)]: where is "curseforge" for the main package (it goes to
    CurseForge and to the GitHub release) and "github" for an 18+ pack (the GitHub release only)."""
    main, adult = addon_folders(root, ref)
    ver = version(root, ref)
    out_dir = out_dir or os.path.join(root, "build")
    os.makedirs(out_dir, exist_ok=True)
    out = []
    path = os.path.join(out_dir, f"AzerothUnspoken-{ver}.zip")
    git(root, "archive", "--format=zip", "-9", "-o", path, ref, *main)
    out.append((path, main, "curseforge"))
    for name in adult:
        path = os.path.join(out_dir, f"{name}-{ver}.zip")
        git(root, "archive", "--format=zip", "-9", "-o", path, ref, name)
        out.append((path, [name], "github"))
    return out


def main():
    ref = sys.argv[1] if len(sys.argv) > 1 else "HEAD"
    for path, folders, where in build(ROOT, ref):
        size = os.path.getsize(path)
        note = "CurseForge and the GitHub release" if where == "curseforge" else "the GitHub release ONLY, never CurseForge"
        print(f"{path}: {len(folders)} folders, {size / 1024 / 1024:.1f} MB -> {note}")
        for f in folders:
            print("  " + f)


if __name__ == "__main__":
    main()
