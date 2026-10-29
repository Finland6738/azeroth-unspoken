"""Publish docs/wiki to the GitHub wiki of the repository.

docs/wiki/*.md is the only source of the wiki (ADR 0013). This script:
  1. clones the wiki repository into a temporary folder (or uses --wiki-dir, an existing clone);
  2. copies every docs/wiki/*.md page, with a "generated, do not edit here" note at the top;
  3. removes the wiki pages that are no longer in docs/wiki;
  4. commits with the noreply identity configured in this repository and pushes.

GitHub creates the wiki repository only after the first page is saved from the browser: until then the clone
fails with "Repository not found" and the script exits with code 2.

Usage, from the repository root (or a worktree):
  python tools/sync_wiki.py              publish
  python tools/sync_wiki.py --dry-run    show what would change, without committing or pushing
  python tools/sync_wiki.py --no-push    commit in the clone, do not push (with --wiki-dir to inspect it)
  python tools/sync_wiki.py --wiki-dir <folder>   use an existing clone instead of a temporary one
"""
import glob
import os
import shutil
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
SOURCE = os.path.join(ROOT, "docs", "wiki")
WIKI_URL = "https://github.com/Finland6738/azeroth-unspoken.wiki.git"
NOTE = ("<!-- Generated from docs/wiki in the azeroth-unspoken repository by tools/sync_wiki.py. "
        "Do not edit this page here: changes are overwritten. Edit docs/wiki and open a pull request. -->\n\n")
# estensioni che GitHub mostra come pagine del wiki: quelle che non sono più in docs/wiki si tolgono
PAGE_EXTENSIONS = (".md", ".markdown", ".mediawiki", ".textile", ".rdoc", ".org", ".creole", ".asciidoc", ".rst", ".pod")


def git(args, cwd, check=True):
    return subprocess.run(["git"] + args, cwd=cwd, capture_output=True, text=True, check=check)


def identity():
    """Nome ed email di commit configurati in questo repository: solo un indirizzo noreply di GitHub."""
    name = git(["config", "user.name"], ROOT, check=False).stdout.strip()
    email = git(["config", "user.email"], ROOT, check=False).stdout.strip()
    if not name or not email.endswith("@users.noreply.github.com"):
        raise SystemExit("Commit identity is not a GitHub noreply address: set user.name and user.email first.")
    return name, email


def source_pages():
    pages = {}
    for path in sorted(glob.glob(os.path.join(SOURCE, "*.md"))):
        with open(path, encoding="utf-8") as f:
            text = f.read().replace("\r\n", "\n")
        pages[os.path.basename(path)] = NOTE + text
    if "Home.md" not in pages:
        raise SystemExit("docs/wiki/Home.md is missing: nothing to publish.")
    return pages


def clone(target):
    proc = git(["clone", "--depth", "1", WIKI_URL, target], ROOT, check=False)
    if proc.returncode != 0:
        if "not found" in (proc.stderr + proc.stdout).lower():
            print("The wiki repository does not exist yet. GitHub creates it only after the first page is saved:\n"
                  "open https://github.com/Finland6738/azeroth-unspoken/wiki, click 'Create the first page', save it,\n"
                  "then run this script again.")
            sys.exit(2)
        sys.exit("git clone failed:\n" + proc.stderr)


def apply(pages, wiki):
    """Scrive le pagine e toglie quelle sparite. Restituisce (aggiunte o cambiate, tolte)."""
    changed, removed = [], []
    for name in sorted(os.listdir(wiki)):
        path = os.path.join(wiki, name)
        if os.path.isfile(path) and name.lower().endswith(PAGE_EXTENSIONS) and name not in pages:
            os.remove(path)
            removed.append(name)
    for name, text in pages.items():
        path = os.path.join(wiki, name)
        old = None
        if os.path.isfile(path):
            with open(path, encoding="utf-8") as f:
                old = f.read()
        if old != text:
            with open(path, "w", encoding="utf-8", newline="\n") as f:
                f.write(text)
            changed.append(name)
    return changed, removed


def main(argv):
    dry_run = "--dry-run" in argv
    push = "--no-push" not in argv and not dry_run
    wiki_dir = argv[argv.index("--wiki-dir") + 1] if "--wiki-dir" in argv else None
    name, email = identity()
    pages = source_pages()

    temp = None
    if wiki_dir is None:
        temp = tempfile.mkdtemp(prefix="au-wiki-")
        wiki_dir = os.path.join(temp, "wiki")
        clone(wiki_dir)
    try:
        if dry_run:
            work = os.path.join(tempfile.mkdtemp(prefix="au-wiki-dry-"), "wiki")
            shutil.copytree(wiki_dir, work, ignore=shutil.ignore_patterns(".git"))
        else:
            work = wiki_dir
        changed, removed = apply(pages, work)
        for n in changed:
            print("  write  " + n)
        for n in removed:
            print("  remove " + n)
        if not changed and not removed:
            print("The wiki is already up to date.")
            return 0
        if dry_run:
            print(f"Dry run: {len(changed)} pages to write, {len(removed)} to remove. Nothing committed.")
            return 0
        head = git(["rev-parse", "--short", "HEAD"], ROOT, check=False).stdout.strip() or "unknown"
        git(["add", "-A"], work)
        git(["-c", "user.name=" + name, "-c", "user.email=" + email,
             "commit", "-m", f"Sync from docs/wiki at {head}"], work)
        if push:
            proc = git(["push", "origin", "HEAD"], work, check=False)
            if proc.returncode != 0:
                sys.exit("git push failed:\n" + proc.stderr)
            print(f"Published {len(changed)} pages, removed {len(removed)}: "
                  "https://github.com/Finland6738/azeroth-unspoken/wiki")
        else:
            temp = None   # il clone resta, per guardarlo
            print("Committed in " + work + ", not pushed (--no-push).")
        return 0
    finally:
        if temp is not None:
            shutil.rmtree(temp, ignore_errors=True)


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
