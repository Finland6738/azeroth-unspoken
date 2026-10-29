"""Privacy check on every file tracked by git: no personal email addresses and no personal paths.

Rule of the project (ROADMAP, "Installation and personal paths"): no real name, email, account name or PC path in
files. Only GitHub noreply addresses are allowed. The check scans text files; the archive of the prototype is
included, because it is public too.

Usage: python -I -X utf8 Tests/check_privacy.py   (from anywhere; exit code 1 if something is found)
"""
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)

# the patterns are built from pieces so that this file does not match itself
EMAIL = re.compile(r"[A-Za-z0-9._%+-]+" + "@" + r"[A-Za-z0-9-]+(?:\.[A-Za-z0-9-]+)*\.[A-Za-z]{2,}")
PATHS = [
    (re.compile(r"\b[A-Za-z]:[\\/]+(?:Users|Documents and Settings)[\\/]"), "Windows user folder"),
    (re.compile(r"(?<![A-Za-z0-9_.])/(?:Users|home)/[A-Za-z0-9._-]+/"), "Unix home folder"),
    (re.compile(r"\bAppData[\\/]"), "AppData folder"),
]
# addresses that are not personal: GitHub noreply, and the reserved example domains
ALLOWED_EMAIL = re.compile(r"@(?:users\.noreply\.github\.com|example\.(?:com|org|net))$", re.IGNORECASE)
# GitHub Actions runner paths in the workflows are not personal
ALLOWED_PATH_TEXT = ("/home/runner/",)
TEXT_EXTENSIONS = (".md", ".lua", ".toc", ".xml", ".py", ".yml", ".yaml", ".json", ".ini", ".txt", ".luarc", ".gitignore",
                   ".gitattributes")


def tracked_files():
    try:
        out = subprocess.run(["git", "-C", ROOT, "ls-files", "-z"], capture_output=True, check=True).stdout
        return [f for f in out.decode("utf-8").split("\0") if f]
    except Exception:
        found = []
        for base, dirs, files in os.walk(ROOT):
            dirs[:] = [d for d in dirs if d not in (".git", ".venv", ".claude", "__pycache__")]
            found += [os.path.relpath(os.path.join(base, f), ROOT).replace("\\", "/") for f in files]
        return found


def scan_text(name, text):
    """Returns the list of problems found in one file's text."""
    problems = []
    for number, line in enumerate(text.split("\n"), 1):
        for m in EMAIL.finditer(line):
            if not ALLOWED_EMAIL.search(m.group(0)):
                problems.append(f"{name}:{number}: email address ({m.group(0)})")
        clean = line
        for allowed in ALLOWED_PATH_TEXT:
            clean = clean.replace(allowed, "")
        for pattern, label in PATHS:
            if pattern.search(clean):
                problems.append(f"{name}:{number}: {label}")
    return problems


def main():
    problems, scanned = [], 0
    for name in tracked_files():
        if not (name.lower().endswith(TEXT_EXTENSIONS) or os.path.basename(name).startswith(".")):
            continue
        path = os.path.join(ROOT, name)
        if not os.path.isfile(path):
            continue
        with open(path, "rb") as f:
            raw = f.read()
        try:
            text = raw.decode("utf-8")
        except UnicodeDecodeError:
            continue
        scanned += 1
        problems += scan_text(name, text)
    if problems:
        print(f"PRIVACY: {len(problems)} problem(s) in {scanned} files:")
        for p in problems[:50]:
            print("  " + p)
        return 1
    print(f"ok  no personal email addresses or paths in {scanned} tracked text files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
