"""Small kit shared by the mockup generators (docs/design/mockups/tools).

Everything here draws ORIGINAL stand-ins: an SVG landscape, the client's chat frame as a plain box. The addon's own
widgets, tokens and fonts come from tools/mockup_lib.py (UI-ECO step UI-8). No Blizzard texture, icon, font or
screenshot is used or copied. 1 CSS pixel = 1 unit of UIParent; positions follow the SetPoint/SetSize calls in
AzerothUnspoken/UI/. Every page carries a caption saying it is an illustrative mockup, not an in-game screenshot.
"""
import html
import os
import random
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
MOCKUPS = os.path.dirname(HERE)                      # docs/design/mockups
ROOT = os.path.dirname(os.path.dirname(os.path.dirname(MOCKUPS)))
sys.path.insert(0, os.path.join(ROOT, "tools"))

import mockup_lib as M  # noqa: E402
from mockup_lib import esc, style, wow  # noqa: E402,F401

M.set_base("../../../")   # the pages of docs/design/mockups load the fonts and logos of the repository by a relative path

CAPTION = "Illustrative mockup built from the addon code - not an in-game screenshot."
PREFIX = "|cffb48cffAzeroth Unspoken|r: "          # NS:Print (Core/Bootstrap.lua)


def write_css(folder):
    """mockups.css, generated from tools/mockup_lib.py (the tokens of UI/Theme.lua)."""
    with open(os.path.join(folder, "mockups.css"), "w", encoding="utf-8", newline="\n") as f:
        f.write(M.css())


# ---------------------------------------------------------------------------------------------------------------
# text and the game's own pieces (the widgets of the addon are in tools/mockup_lib.py)
# ---------------------------------------------------------------------------------------------------------------
def chat_lines(lines, **p):
    """The client's chat frame, a plain stand-in: the lines the addon printed (|c colours read as in the game)."""
    body = "".join(f'<div class="line">{wow(l)}</div>' for l in lines)
    return f'<div class="chatframe" style="{style(**p)}">{body}</div>'


def placeholder(s, **p):
    return (f'<div class="abs" style="{style(**p)};border:1px dashed rgba(255,255,255,.45);background:rgba(0,0,0,.25);'
            f'display:grid;place-items:center;color:#ddd;font:12px Segoe UI,sans-serif">{esc(s)}</div>')


def note(s, **p):
    """A note of the mockup itself (dashed, in the mockup's own font): never a text of the addon."""
    return f'<div class="note" style="{style(**p)}">{esc(s)}</div>'


# ---------------------------------------------------------------------------------------------------------------
# landscapes (original SVG, deterministic)
# ---------------------------------------------------------------------------------------------------------------
SCENES = {
    "dusk": {"sky": [("0", "#1c1430"), ("0.42", "#4a2a4f"), ("0.72", "#a8504a"), ("1", "#efa35c")],
             "sun": "#ffcf86", "layers": ["#4b2d47", "#33203a", "#21152a", "#120c18"]},
    "neutral": {"sky": [("0", "#141c27"), ("0.55", "#2e3e52"), ("1", "#66798a")],
                "sun": "#c9d4dc", "layers": ["#3a4a5a", "#2a3644", "#1c2530", "#10161d"]},
    "battle": {"sky": [("0", "#160c10"), ("0.5", "#4a1717"), ("1", "#b5442b")],
               "sun": "#ff9a5a", "layers": ["#4a2422", "#331818", "#221010", "#140909"]},
    "night": {"sky": [("0", "#070a16"), ("0.6", "#141d38"), ("1", "#2b3a5e")],
              "sun": "#dfe8ff", "layers": ["#1d2740", "#151d31", "#0e1424", "#080c17"]},
    "warm": {"sky": [("0", "#1e140c"), ("0.6", "#4a3220"), ("1", "#8a6038")],
             "sun": "#ffd9a0", "layers": ["#4a3524", "#35261a", "#241a12", "#15100b"]},
}


def _pine(x, base, h, w):
    pts = []
    for k in range(3):
        top = base - h + k * h * 0.28
        bot = base - h * 0.45 + k * h * 0.22
        half = w * (0.45 + k * 0.28) / 2
        pts.append(f"M{x:.1f},{top:.1f} L{x - half:.1f},{bot:.1f} L{x + half:.1f},{bot:.1f} Z")
    pts.append(f"M{x - w * 0.06:.1f},{base - h * 0.2:.1f} h{w * 0.12:.1f} v{h * 0.2:.1f} h{-w * 0.12:.1f} Z")
    return " ".join(pts)


def scene_svg(kind, w, h, seed=7, trees=True):
    sc = SCENES[kind]
    rnd = random.Random(seed)
    stops = "".join(f'<stop offset="{o}" stop-color="{c}"/>' for o, c in sc["sky"])
    parts = [f'<svg class="scene" viewBox="0 0 {w} {h}" preserveAspectRatio="none" xmlns="http://www.w3.org/2000/svg">',
             f'<defs><linearGradient id="sky{seed}" x1="0" y1="0" x2="0" y2="1">{stops}</linearGradient>',
             f'<radialGradient id="sun{seed}" cx="0.5" cy="0.5" r="0.5"><stop offset="0" stop-color="{sc["sun"]}" stop-opacity="0.9"/>'
             f'<stop offset="1" stop-color="{sc["sun"]}" stop-opacity="0"/></radialGradient></defs>',
             f'<rect width="{w}" height="{h}" fill="url(#sky{seed})"/>',
             f'<circle cx="{w * 0.68:.0f}" cy="{h * 0.62:.0f}" r="{max(w, h) * 0.22:.0f}" fill="url(#sun{seed})"/>']
    if kind == "night":
        for _ in range(int(w * h / 9000)):
            parts.append(f'<circle cx="{rnd.uniform(0, w):.0f}" cy="{rnd.uniform(0, h * 0.55):.0f}" r="{rnd.uniform(0.4, 1.3):.1f}" '
                         f'fill="#fff" opacity="{rnd.uniform(0.3, 0.9):.2f}"/>')
    for li, colour in enumerate(sc["layers"]):
        horizon = h * (0.58 + li * 0.1)
        amp = h * (0.05 - li * 0.008)
        pts = [f"M0,{h}"]
        step = w / 12
        phase = rnd.uniform(0, 6.28)
        import math
        for i in range(13):
            x = i * step
            y = horizon - amp * (0.6 + 0.4 * math.sin(phase + i * 0.9)) + rnd.uniform(-amp * 0.3, amp * 0.3)
            pts.append(f"L{x:.0f},{y:.0f}")
        pts.append(f"L{w},{h} Z")
        parts.append(f'<path d="{" ".join(pts)}" fill="{colour}"/>')
        if trees and li >= 1:
            n = int(w / (90 - li * 18))
            for _ in range(n):
                x = rnd.uniform(-20, w + 20)
                th = rnd.uniform(40, 80) * (0.7 + li * 0.45) * h / 768
                tw = th * rnd.uniform(0.38, 0.5)
                base = horizon + rnd.uniform(0, h * 0.04)
                parts.append(f'<path d="{_pine(x, base, th, tw)}" fill="{colour}"/>')
    parts.append("</svg>")
    return "".join(parts)


# ---------------------------------------------------------------------------------------------------------------
# pages
# ---------------------------------------------------------------------------------------------------------------
def page(name, title, w, h, body, scene="neutral", seed=7, scale=1.5, kind="current", caption_extra="",
         alt=None, out_dir=None, css_href="mockups.css", theme="nebula"):
    """Writes <name>.html. kind: current | proposed (a design not built yet, such as ADR 0061's romance) | none. theme: nebula | aurora (the addon's two themes). The size and scale
    are read by render.py."""
    badge = {"current": f'<div class="badge-current">CURRENT (from the code) - {M.THEME_NAMES[theme].upper()}</div>',
             "proposed": f'<div class="badge-proposed">PROPOSED (a design, not built yet) - {M.THEME_NAMES[theme].upper()}</div>',
             "none": ""}[kind]
    cap = f'<div class="caption"><b>{esc(title)}</b> - {esc(CAPTION)}{(" " + esc(caption_extra)) if caption_extra else ""}</div>'
    alt = alt or f"{title}. {CAPTION}"
    doc = f"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width={w}">
<meta name="mockup-size" content="{w}x{h}">
<meta name="mockup-scale" content="{scale}">
<meta name="description" content="{html.escape(alt)}">
<title>{esc(title)} - Azeroth Unspoken mockup</title>
<link rel="stylesheet" href="{css_href}">
</head>
<body>
<div class="stage" data-theme="{theme}" style="width:{w}px;height:{h}px" role="img" aria-label="{html.escape(alt)}">
{scene_svg(scene, w, h, seed) if scene else ""}
{body}
{badge}
{cap}
</div>
</body>
</html>
"""
    path = os.path.join(out_dir or MOCKUPS, name + ".html")
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write(doc)
    return path
