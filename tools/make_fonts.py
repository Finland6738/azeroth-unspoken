"""Builds the fonts of AzerothUnspoken/Media/Fonts/ (UI-ECO step UI-1; FDCP docs/specs/ui-style.md section 4).

Adapted from Finland Dragon Credit Points (tools/make_fonts.py), same owner, GPL-3.0; the files are the same as FDCP's.

  * Outfit (Regular, Medium, SemiBold) and JetBrains Mono (Regular, Medium): static instances cut from the variable
    fonts of the google/fonts repository (the OFL.txt of each family is copied next to them), reduced to the Latin
    subset the addon needs (Latin-1, Latin Extended-A, punctuation, arrows, middle dot). Neither family declares a
    Reserved Font Name, so a modified (subset) file may keep the name.
  * Orbitron Bold: the file of the original author (theleagueof/orbitron), shipped WHOLE AND UNMODIFIED, because its
    OFL.txt declares the Reserved Font Name "Orbitron" (a modified version could not use it). It has the Italian
    accented letters; it has no middle dot or arrow, so those are never set in Orbitron.

Usage: python -X utf8 tools/make_fonts.py [work-dir]
  Downloads the sources into work-dir (default: a temporary folder; needs network and the fontTools package) and
  writes the files. The committed result is what ships; run this only to rebuild it. Not part of CI.
"""
import os
import sys
import tempfile
import urllib.request

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "AzerothUnspoken", "Media", "Fonts")
GF = "https://raw.githubusercontent.com/google/fonts/main/ofl/"
LEAGUE = "https://raw.githubusercontent.com/theleagueof/orbitron/master/"
UNICODES = (list(range(0x20, 0x7F)) + list(range(0xA0, 0x180)) + [0x2013, 0x2014, 0x2018, 0x2019, 0x201C, 0x201D, 0x2022,
            0x2026, 0x20AC, 0x2190, 0x2191, 0x2192, 0x2193, 0x2212, 0x00B7, 0x25B2, 0x25BC])


def fetch(url, path):
    if not os.path.isfile(path):
        urllib.request.urlretrieve(url, path)
    return path


def instance(variable, wght, out, family, style):
    from fontTools import subset
    from fontTools.ttLib import TTFont
    from fontTools.varLib import instancer
    font = instancer.instantiateVariableFont(TTFont(variable), {"wght": wght})
    opts = subset.Options()
    opts.layout_features = ["kern", "liga", "calt", "tnum", "ccmp", "locl"]
    opts.name_IDs = [0, 1, 2, 3, 4, 5, 6, 13, 14]
    opts.notdef_outline = True
    opts.hinting = False
    sub = subset.Subsetter(opts)
    sub.populate(unicodes=UNICODES)
    sub.subset(font)
    for rec in list(font["name"].names):
        if rec.nameID in (1, 16):
            rec.string = family
        elif rec.nameID in (2, 17):
            rec.string = style
        elif rec.nameID == 4:
            rec.string = family + " " + style
        elif rec.nameID == 6:
            rec.string = (family + "-" + style).replace(" ", "")
    font["OS/2"].usWeightClass = int(wght)
    font.save(out)


def main():
    work = sys.argv[1] if len(sys.argv) > 1 else tempfile.mkdtemp(prefix="au-fonts-")
    os.makedirs(work, exist_ok=True)
    os.makedirs(OUT, exist_ok=True)
    outfit = fetch(GF + "outfit/Outfit%5Bwght%5D.ttf", os.path.join(work, "outfit.ttf"))
    mono = fetch(GF + "jetbrainsmono/JetBrainsMono%5Bwght%5D.ttf", os.path.join(work, "jbm.ttf"))
    for name, url in (("Outfit", GF + "outfit/OFL.txt"), ("JetBrainsMono", GF + "jetbrainsmono/OFL.txt")):
        fetch(url, os.path.join(work, name + "-OFL.txt"))
    for style, w in (("Regular", 400), ("Medium", 500), ("SemiBold", 600)):
        instance(outfit, w, os.path.join(OUT, f"Outfit-{style}.ttf"), "Outfit", style)
    for style, w in (("Regular", 400), ("Medium", 500)):
        instance(mono, w, os.path.join(OUT, f"JetBrainsMono-{style}.ttf"), "JetBrains Mono", style)
    for name in ("Outfit", "JetBrainsMono"):
        with open(os.path.join(work, name + "-OFL.txt"), "rb") as f, open(os.path.join(OUT, name + "-OFL.txt"), "wb") as g:
            g.write(f.read().replace(b"\r\n", b"\n"))
    fetch(LEAGUE + "Orbitron%20Bold.ttf", os.path.join(work, "orbitron-bold.ttf"))
    fetch(LEAGUE + "Open%20Font%20License.markdown", os.path.join(work, "Orbitron-OFL.txt"))
    with open(os.path.join(work, "orbitron-bold.ttf"), "rb") as f, open(os.path.join(OUT, "Orbitron-Bold.ttf"), "wb") as g:
        g.write(f.read())
    with open(os.path.join(work, "Orbitron-OFL.txt"), "rb") as f, open(os.path.join(OUT, "Orbitron-OFL.txt"), "wb") as g:
        g.write(f.read().replace(b"\r\n", b"\n"))
    for name in sorted(os.listdir(OUT)):
        print(f"{name}: {os.path.getsize(os.path.join(OUT, name))} bytes")


if __name__ == "__main__":
    main()
