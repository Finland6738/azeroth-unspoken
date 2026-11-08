r"""Build the release package: one zip with every addon folder at its top level, ready to unzip into
`<WoW>\_forever_\Interface\AddOns`.

The zip holds AzerothUnspoken and every AzerothUnspoken_* folder with its own .toc (the same folders as
tools/install_addon.py), and only the files git tracks at the chosen commit, so nothing local slips in.
The version comes from `AzerothUnspoken/AzerothUnspoken.toc` (`## Version:`).

Usage, from the repository root:
  python -I tools/package_release.py            build build/AzerothUnspoken-<version>.zip from HEAD
  python -I tools/package_release.py v0.1.0     build it from a tag or commit
"""
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)


def git(*args, **kw):
    return subprocess.run(["git", "-C", ROOT, *args], check=True, capture_output=True, **kw).stdout


def addon_folders(ref):
    """The addon folders git tracks at ref: AzerothUnspoken and AzerothUnspoken_* with their own .toc."""
    names = git("ls-tree", "--name-only", ref).decode("utf-8").split("\n")
    out = []
    for name in sorted(names):
        if name == "AzerothUnspoken" or name.startswith("AzerothUnspoken_"):
            toc = git("ls-tree", "--name-only", ref, f"{name}/{name}.toc").decode("utf-8").strip()
            if toc:
                out.append(name)
    return out


def version(ref):
    toc = git("show", f"{ref}:AzerothUnspoken/AzerothUnspoken.toc").decode("utf-8")
    m = re.search(r"^## Version:\s*(\S+)", toc, re.M)
    if not m:
        sys.exit("no '## Version:' line in AzerothUnspoken.toc")
    return m.group(1)


def main():
    ref = sys.argv[1] if len(sys.argv) > 1 else "HEAD"
    folders = addon_folders(ref)
    ver = version(ref)
    out_dir = os.path.join(ROOT, "build")
    os.makedirs(out_dir, exist_ok=True)
    out = os.path.join(out_dir, f"AzerothUnspoken-{ver}.zip")
    git("archive", "--format=zip", "-9", "-o", out, ref, *folders)
    size = os.path.getsize(out)
    print(f"{out}: {len(folders)} folders, {size / 1024 / 1024:.1f} MB")
    for f in folders:
        print("  " + f)


if __name__ == "__main__":
    main()
