"""Publish docs/wiki to the GitHub wiki of the repository.

docs/wiki/*.md is the only source of the wiki (ADR 0013). This script:
  1. clones the wiki repository into a temporary folder (or uses --wiki-dir, an existing clone);
  2. copies every docs/wiki/*.md page, with a "generated, do not edit here" note at the top;
  3. removes the wiki pages that are no longer in docs/wiki;
  4. commits with the noreply identity configured in this repository and pushes.

GitHub creates the wiki repository only after the first page is saved from the browser: until then the clone
fails with "Repository not found" and the script exits with code 2 (or 0 with --warn-if-missing).

In GitHub Actions (.github/workflows/wiki-sync.yml) it runs without prompts: the token comes from the environment
(GITHUB_TOKEN or WIKI_TOKEN), the repository from GITHUB_REPOSITORY and the commits are made by github-actions[bot].
The token is passed in an HTTP header, never in the URL, and it is removed from any message that is printed.

Usage, from the repository root (or a worktree):
  python tools/sync_wiki.py              publish
  python tools/sync_wiki.py --dry-run    show what would change, without committing or pushing
  python tools/sync_wiki.py --no-push    commit in the clone, do not push (with --wiki-dir to inspect it)
  python tools/sync_wiki.py --wiki-dir <folder>   use an existing clone instead of a temporary one
  python tools/sync_wiki.py --warn-if-missing     if the wiki repository does not exist yet: warn and exit 0 (CI)
"""
import base64
import glob
import os
import shutil
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
SOURCE = os.path.join(ROOT, "docs", "wiki")
DEFAULT_REPOSITORY = "Finland6738/azeroth-unspoken"
BOT_NAME = "github-actions[bot]"
BOT_EMAIL = "41898282+github-actions[bot]@users.noreply.github.com"
NOTE = ("<!-- Generated from docs/wiki in the azeroth-unspoken repository by tools/sync_wiki.py. "
        "Do not edit this page here: changes are overwritten. Edit docs/wiki and open a pull request. -->\n\n")
# estensioni che GitHub mostra come pagine del wiki: quelle che non sono più in docs/wiki si tolgono
PAGE_EXTENSIONS = (".md", ".markdown", ".mediawiki", ".textile", ".rdoc", ".org", ".creole", ".asciidoc", ".rst", ".pod")


def repository():
    return os.environ.get("GITHUB_REPOSITORY") or DEFAULT_REPOSITORY


def wiki_url():
    return f"https://github.com/{repository()}.wiki.git"


def token():
    return os.environ.get("WIKI_TOKEN") or os.environ.get("GITHUB_TOKEN") or ""


def scrub(text):
    """Toglie il token da un testo prima di stamparlo (GitHub Actions lo maschera già, ma non ci si affida solo a quello)."""
    t = token()
    if t:
        text = text.replace(t, "***").replace(base64.b64encode(("x-access-token:" + t).encode()).decode(), "***")
    return text


def auth_args():
    """Con un token nell'ambiente: intestazione HTTP di autenticazione, non nell'URL e non nel file di configurazione."""
    t = token()
    if not t:
        return []
    basic = base64.b64encode(("x-access-token:" + t).encode()).decode()
    return ["-c", "http.https://github.com/.extraheader=AUTHORIZATION: basic " + basic]


def git(args, cwd, check=True, auth=False):
    env = dict(os.environ, GIT_TERMINAL_PROMPT="0")   # mai domande interattive
    cmd = ["git"] + (auth_args() if auth else []) + args
    return subprocess.run(cmd, cwd=cwd, capture_output=True, text=True, check=check, env=env)


def identity():
    """Nome ed email di commit. In GitHub Actions: github-actions[bot]; altrimenti quelli configurati in questo
    repository, purché siano un indirizzo noreply di GitHub."""
    if os.environ.get("GITHUB_ACTIONS") == "true":
        return BOT_NAME, BOT_EMAIL
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


def clone(target, warn_if_missing=False):
    """Clona il wiki. Restituisce False solo se il wiki non esiste ancora e warn_if_missing è attivo."""
    proc = git(["clone", "--depth", "1", wiki_url(), target], ROOT, check=False, auth=True)
    if proc.returncode != 0:
        out = (proc.stderr + proc.stdout).lower()
        if "not found" in out or "does not exist" in out:
            how = (f"The wiki repository does not exist yet. GitHub creates it only after the first page is saved: "
                   f"open https://github.com/{repository()}/wiki, click 'Create the first page', save it, "
                   f"then run this script (or the 'Wiki sync' workflow) again. See issue #76.")
            if warn_if_missing:
                if os.environ.get("GITHUB_ACTIONS") == "true":
                    print("::warning title=Wiki not published yet::" + how)
                else:
                    print("WARNING: " + how)
                print("Nothing was published. This is not an error: the manual stays in docs/wiki until the wiki exists.")
                return False
            print(how)
            sys.exit(2)
        sys.exit("git clone failed:\n" + scrub(proc.stderr))
    return True


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
    warn_if_missing = "--warn-if-missing" in argv
    name, email = identity()
    pages = source_pages()

    temp = None
    if wiki_dir is None:
        temp = tempfile.mkdtemp(prefix="au-wiki-")
        wiki_dir = os.path.join(temp, "wiki")
        if not clone(wiki_dir, warn_if_missing):
            shutil.rmtree(temp, ignore_errors=True)
            return 0
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
        head = (os.environ.get("GITHUB_SHA") or "")[:7] or git(["rev-parse", "--short", "HEAD"], ROOT, check=False).stdout.strip() or "unknown"
        git(["add", "-A"], work)
        git(["-c", "user.name=" + name, "-c", "user.email=" + email,
             "commit", "-m", f"Sync from docs/wiki at {head}"], work)
        if push:
            proc = git(["push", "origin", "HEAD"], work, check=False, auth=True)
            if proc.returncode != 0:
                sys.exit("git push failed:\n" + scrub(proc.stderr))
            print(f"Published {len(changed)} pages, removed {len(removed)}: https://github.com/{repository()}/wiki")
        else:
            temp = None   # il clone resta, per guardarlo
            print("Committed in " + work + ", not pushed (--no-push).")
        return 0
    finally:
        if temp is not None:
            shutil.rmtree(temp, ignore_errors=True)


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
