"""Install every folder of the download into the WoW Forever AddOns folder: AzerothUnspoken and every
AzerothUnspoken_* folder of the repository (the language packs, the regional packs, the example pack and the verses).

The AddOns path is personal and never committed. It is read, in order, from:
  1. the AU_ADDONS_DIR environment variable;
  2. `tools/local.ini` (not versioned; copy `tools/local.example.ini` and edit it).

Usage, from the repository root (or a worktree):
  python tools/install_addon.py          install, then compare byte by byte
  python tools/install_addon.py --check  only compare
"""
import configparser
import filecmp
import os
import shutil
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)


def addon_folders():
    """AzerothUnspoken and every AzerothUnspoken_* folder with its own .toc (one download, several folders: #85, #101)."""
    out = []
    for name in sorted(os.listdir(ROOT)):
        is_addon = name == "AzerothUnspoken" or name.startswith("AzerothUnspoken_")
        if is_addon and os.path.isfile(os.path.join(ROOT, name, name + ".toc")):
            out.append(name)
    return out


def addons_dir():
    env = os.environ.get("AU_ADDONS_DIR")
    if env:
        return env
    ini = os.path.join(HERE, "local.ini")
    if not os.path.isfile(ini):
        # i worktree delle sessioni non hanno il file: si usa quello del repository principale
        try:
            import subprocess
            common = subprocess.run(["git", "-C", ROOT, "rev-parse", "--path-format=absolute", "--git-common-dir"],
                                    capture_output=True, text=True, check=True).stdout.strip()
            ini = os.path.join(os.path.dirname(common), "tools", "local.ini")
        except Exception:
            pass
    if os.path.isfile(ini):
        cfg = configparser.ConfigParser()
        cfg.read(ini, encoding="utf-8")
        return cfg.get("paths", "addons_dir", fallback=None)
    return None


def same_tree(a, b):
    cmp = filecmp.dircmp(a, b)
    if cmp.left_only or cmp.right_only or cmp.diff_files or cmp.funny_files:
        return False
    _, mismatch, errors = filecmp.cmpfiles(a, b, cmp.common_files, shallow=False)
    if mismatch or errors:
        return False
    return all(same_tree(os.path.join(a, d), os.path.join(b, d)) for d in cmp.common_dirs)


def main(argv):
    target = addons_dir()
    if not target or not os.path.isdir(target):
        print("AddOns folder not configured: set AU_ADDONS_DIR or create tools/local.ini from tools/local.example.ini.")
        return 1
    check_only = "--check" in argv
    ok = True
    for name in addon_folders():
        src = os.path.join(ROOT, name)
        dst = os.path.join(target, name)
        if not check_only:
            if os.path.isdir(dst):
                shutil.rmtree(dst)
            shutil.copytree(src, dst)
        same = os.path.isdir(dst) and same_tree(src, dst)
        ok = ok and same
        print(f"{name}: {'identical' if same else 'DIFFERENT'}")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
