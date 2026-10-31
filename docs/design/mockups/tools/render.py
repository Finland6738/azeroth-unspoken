"""Renders every mockup page of docs/design/mockups/*.html to docs/design/mockups/png/ with a headless Chromium browser
(Microsoft Edge on Windows, or Chrome/Chromium elsewhere: set MOCKUP_BROWSER to its path).

    python -I -X utf8 docs/design/mockups/tools/render.py [name ...]

Each page declares its size and scale in <meta name="mockup-size"> and <meta name="mockup-scale">.
"""
import glob
import os
import re
import shutil
import subprocess
import sys
import tempfile
import time

HERE = os.path.dirname(os.path.abspath(__file__))
MOCKUPS = os.path.dirname(HERE)
PNG = os.path.join(MOCKUPS, "png")
CANDIDATES = [os.environ.get("MOCKUP_BROWSER", ""),
              r"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",
              r"C:\Program Files\Microsoft\Edge\Application\msedge.exe",
              shutil.which("msedge") or "", shutil.which("chromium") or "", shutil.which("google-chrome") or ""]


def browser():
    for c in CANDIDATES:
        if c and os.path.isfile(c):
            return c
    sys.exit("no Chromium browser found: set MOCKUP_BROWSER")


def size_of(path):
    text = open(path, encoding="utf-8").read(2000)
    w, h = map(int, re.search(r'mockup-size" content="(\d+)x(\d+)"', text).groups())
    m = re.search(r'mockup-scale" content="([\d.]+)"', text)
    return w, h, float(m.group(1)) if m else 1.0


def render(html, out, exe=None):
    exe = exe or browser()
    w, h, scale = size_of(html)
    url = "file:///" + os.path.abspath(html).replace("\\", "/")
    profile = tempfile.mkdtemp(prefix="au-render-")   # an own profile: no clash with a running browser
    cmd = [exe, "--headless=new", f"--user-data-dir={profile}", "--disable-gpu", "--hide-scrollbars", "--no-first-run", "--disable-extensions",
           f"--force-device-scale-factor={scale}", f"--window-size={w},{h}", "--virtual-time-budget=3000",
           f"--screenshot={os.path.abspath(out)}", url]
    # the browser's launcher can return before its child process has written the file: wait for it, then retry
    if os.path.exists(out):
        os.remove(out)
    for _ in range(3):
        subprocess.run(cmd, capture_output=True, timeout=120)
        deadline = time.time() + 20
        while time.time() < deadline:
            if os.path.exists(out) and os.path.getsize(out) > 0:
                time.sleep(0.5)
                shutil.rmtree(profile, ignore_errors=True)
                return out
            time.sleep(0.25)
    shutil.rmtree(profile, ignore_errors=True)
    raise RuntimeError(f"the browser wrote no screenshot for {html}")


def main(names):
    os.makedirs(PNG, exist_ok=True)
    exe = browser()
    pages = sorted(glob.glob(os.path.join(MOCKUPS, "*.html")))
    pages = [p for p in pages if os.path.basename(p) != "index.html"]
    if names:
        pages = [p for p in pages if os.path.splitext(os.path.basename(p))[0] in names]
    for p in pages:
        name = os.path.splitext(os.path.basename(p))[0]
        render(p, os.path.join(PNG, name + ".png"), exe)
        print("rendered", name)


if __name__ == "__main__":
    main(sys.argv[1:])
