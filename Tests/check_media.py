"""Offline check of the media of the addon (UI-ECO step UI-1): every file of AzerothUnspoken/Media/ is listed in
AzerothUnspoken/UI/Assets.lua and every path listed there exists; every font family has its OFL text; the textures are
uncompressed 32-bit TGA files of the size the table says, with power-of-two sides; the icon names of the table are those of
tools/make_media.py; the files are binary for git, tracked by git (not ignored) and shipped by the packagers.

Needs nothing but the Python standard library (no Pillow), so it runs in CI.

Usage: python -I -X utf8 Tests/check_media.py   (exit code 1 if a check fails)
"""
import ast
import os
import re
import struct
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
ADDON = os.path.join(ROOT, "AzerothUnspoken")
MEDIA = os.path.join(ADDON, "Media")
ASSETS = os.path.join(ADDON, "UI", "Assets.lua")

FAILURES = []


def check(cond, msg):
    if cond:
        print("  ok  " + msg)
    else:
        FAILURES.append(msg)
        print("  FAILED  " + msg)


def read(path):
    with open(path, encoding="utf-8") as f:
        return f.read()


def listed_files(text):
    """The files named in Assets.lua: `MEDIA .. "x.tga"` and `FONTS .. "x.ttf"`, as paths relative to Media/."""
    out = {}
    for m in re.finditer(r'\b(MEDIA|FONTS)\s*\.\.\s*"([^"]+\.(?:tga|ttf))"', text):
        out[("Fonts/" if m.group(1) == "FONTS" else "") + m.group(2)] = True
    return list(out)


def texture_rows(text):
    """name -> (file, w, h, cell) for each line of Assets.textures."""
    rows = {}
    for m in re.finditer(r'^\s*(\w+)\s*=\s*\{\s*path\s*=\s*MEDIA\s*\.\.\s*"([^"]+)"\s*,\s*w\s*=\s*(\d+)\s*,\s*h\s*=\s*(\d+)(.*)\}',
                         text, re.M):
        cell = re.search(r"cell\s*=\s*(\d+)", m.group(5))
        rows[m.group(1)] = (m.group(2), int(m.group(3)), int(m.group(4)), int(cell.group(1)) if cell else None)
    return rows


def lua_icons(text):
    m = re.search(r"Assets\.icons\s*=\s*\{(.*?)\}", text, re.S)
    return re.findall(r'"(\w+)"', m.group(1)) if m else []


def py_icons():
    tree = ast.parse(read(os.path.join(ROOT, "tools", "make_media.py")))
    for node in tree.body:
        if isinstance(node, ast.Assign) and any(getattr(t, "id", "") == "ICON_NAMES" for t in node.targets):
            return list(ast.literal_eval(node.value))
    return []


def tga_header(path):
    with open(path, "rb") as f:
        h = f.read(18)
    if len(h) < 18:
        return None
    id_len, cmap, kind, _, _, _, _, _, w, hgt, bpp, desc = struct.unpack("<BBBHHBHHHHBB", h)
    return {"kind": kind, "w": w, "h": hgt, "bpp": bpp, "size": os.path.getsize(path), "id_len": id_len, "cmap": cmap}


def pow2(n):
    return n > 0 and n & (n - 1) == 0


def git(*args):
    return subprocess.run(["git", "-C", ROOT, *args], capture_output=True, text=True, encoding="utf-8")


def main():
    print("MEDIA (Tests/check_media.py)")
    check(os.path.isfile(ASSETS), "UI/Assets.lua exists")
    check(os.path.isdir(MEDIA), "Media/ exists")
    if FAILURES:
        return 1
    text = read(ASSETS)
    listed = listed_files(text)
    check(len(listed) > 0, "UI/Assets.lua lists files")

    on_disk = []
    for folder, _, names in os.walk(MEDIA):
        for name in names:
            on_disk.append(os.path.relpath(os.path.join(folder, name), MEDIA).replace(os.sep, "/"))
    for rel in sorted(listed):
        check(rel in on_disk, f"listed in Assets.lua and present: Media/{rel}")
    for rel in sorted(on_disk):
        if rel.startswith("Fonts/") and rel.endswith("-OFL.txt"):
            continue   # licence texts are not assets
        check(rel in listed, f"present and listed in Assets.lua: Media/{rel}")
        check(rel.endswith((".tga", ".ttf", "-OFL.txt")), f"Media/{rel} has a known kind (tga, ttf, OFL text)")

    # fonts: one OFL text per family, and the file is a TrueType font
    families = set()
    for rel in listed:
        if rel.startswith("Fonts/"):
            families.add(os.path.basename(rel).split("-")[0])
            with open(os.path.join(MEDIA, *rel.split("/")), "rb") as f:
                magic = f.read(4)
            check(magic in (b"\x00\x01\x00\x00", b"true"), f"Media/{rel} is a TrueType font")
    check(len(families) >= 3, f"font families found: {sorted(families)}")
    for fam in sorted(families):
        path = os.path.join(MEDIA, "Fonts", fam + "-OFL.txt")
        ok = os.path.isfile(path) and "SIL OPEN FONT LICENSE" in read(path).upper()
        check(ok, f"Media/Fonts/{fam}-OFL.txt is there and is the SIL Open Font License")
    for rel in on_disk:
        if rel.endswith("-OFL.txt"):
            fam = os.path.basename(rel)[:-len("-OFL.txt")]
            check(fam in families, f"the licence Media/{rel} belongs to a font family that ships")

    # textures: uncompressed 32-bit TGA, power-of-two sides, the size the table says
    rows = texture_rows(text)
    check(len(rows) > 0, f"textures read from Assets.lua: {len(rows)}")
    for name, (rel, w, h, cell) in sorted(rows.items()):
        hd = tga_header(os.path.join(MEDIA, rel)) if os.path.isfile(os.path.join(MEDIA, rel)) else None
        check(hd is not None, f"{name}: Media/{rel} is readable")
        if hd is None:
            continue
        check(hd["kind"] == 2 and hd["cmap"] == 0 and hd["bpp"] == 32, f"{name}: uncompressed 32-bit true-colour TGA")
        check((hd["w"], hd["h"]) == (w, h), f"{name}: {hd['w']}x{hd['h']} equals the table ({w}x{h})")
        check(pow2(hd["w"]) and pow2(hd["h"]), f"{name}: power-of-two sides")
        check(hd["size"] >= 18 + hd["id_len"] + hd["w"] * hd["h"] * 4, f"{name}: the pixel data is complete")
        if cell:
            check(w % cell == 0 and h % cell == 0, f"{name}: the sheet is a whole number of {cell}-pixel cells")

    # icons: the names of the table are the cells drawn by tools/make_media.py, in the same order
    icons = lua_icons(text)
    check(icons == py_icons() and len(icons) > 0, f"Assets.icons ({len(icons)}) equals ICON_NAMES of tools/make_media.py")
    check(len(set(icons)) == len(icons), "icon names are unique")
    sheet = rows.get("icons")
    if sheet and sheet[3]:
        check(len(icons) <= (sheet[1] // sheet[3]) * (sheet[2] // sheet[3]), "the icons fit in the sheet")

    # the table is loaded before the widgets
    toc = [l.strip() for l in read(os.path.join(ADDON, "AzerothUnspoken.toc")).splitlines()
           if l.strip() and not l.startswith("#")]
    check("UI\\Assets.lua" in toc and toc.index("UI\\Assets.lua") < toc.index("UI\\Widgets.lua"),
          "UI\\Assets.lua is in the toc, before UI\\Widgets.lua")

    # git and the packagers
    attrs = read(os.path.join(ROOT, ".gitattributes"))
    for ext in ("tga", "ttf"):
        check(re.search(rf"^\*\.{ext}\s+binary\b", attrs, re.M) is not None, f".gitattributes marks *.{ext} as binary")
    check("export-ignore" not in attrs, ".gitattributes does not leave Media/ out of `git archive` (export-ignore)")
    probe = git("check-ignore", "-q", "AzerothUnspoken/Media/icons.tga")
    check(probe.returncode == 1, ".gitignore does not ignore Media/")
    package = read(os.path.join(ROOT, "tools", "package_release.py"))
    check(re.search(r'git\((?:root, )?"archive"', package) is not None, "the release package is built with `git archive` of the addon folders (Media/ comes with them)")
    inst = read(os.path.join(ROOT, "tools", "install_addon.py"))
    check("shutil.copytree(src, dst)" in inst, "install_addon.py copies the whole folder (Media/ included)")

    print(f"\nMedia check: {len(FAILURES)} failure(s).")
    return 1 if FAILURES else 0


if __name__ == "__main__":
    sys.exit(main())
