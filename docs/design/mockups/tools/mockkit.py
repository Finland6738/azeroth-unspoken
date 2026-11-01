"""Small kit shared by the mockup generators (docs/design/mockups/tools).

Everything here draws ORIGINAL stand-ins: an SVG landscape, plain CSS widgets. No Blizzard texture, icon, font or
screenshot is used or copied. 1 CSS pixel = 1 unit of UIParent; positions follow the SetPoint/SetSize calls in
AzerothUnspoken/UI/. Every page carries a caption saying it is an illustrative mockup, not an in-game screenshot.
"""
import html
import os
import random
import re

HERE = os.path.dirname(os.path.abspath(__file__))
MOCKUPS = os.path.dirname(HERE)                      # docs/design/mockups

CAPTION = "Illustrative mockup built from the addon code - not an in-game screenshot."

# colours of the four voices (UI/NarratorFrame.lua VOICE_COLOR)
VOICE_COLOR = {"narrator": "b9a1ff", "inner": "7fd4ff", "character": "ffd36b", "npc": "4fb354"}
VOICE = {
    "en": {"narrator": "Narrator", "inner": "Inner voice", "character": "Character", "npc": "NPC"},
    "it": {"narrator": "Narratore", "inner": "Voce interiore", "character": "Personaggio", "npc": "NPC"},
}
PREFIX = "|cffb48cffAzeroth Unspoken|r: "          # NS:Print (Core/Bootstrap.lua)


# ---------------------------------------------------------------------------------------------------------------
# text
# ---------------------------------------------------------------------------------------------------------------
def esc(s):
    return html.escape(s, quote=False)


def wow(s):
    """Converts a WoW string to HTML the way the client reads its escapes: |cffRRGGBB ... |r colours, || is one bar,
    |n and \\n break the line. A bare "|r" inside a word is swallowed and "|n" breaks it, as in the game (review UI-05)."""
    out, depth = [], 0
    for tok in re.split(r"(\|\||\|c[fF]{2}[0-9a-fA-F]{6}|\|r|\|n)", s):
        if tok == "||":
            out.append("|")
        elif tok == "|n":
            out.append("<br>")
        elif re.fullmatch(r"\|c[fF]{2}[0-9a-fA-F]{6}", tok):
            out.append(f'<span style="color:#{tok[4:]}">')
            depth += 1
        elif tok == "|r":
            if depth:
                out.append("</span>")
                depth -= 1
        else:
            out.append(esc(tok).replace("\n", "<br>"))
    out.append("</span>" * depth)
    return "".join(out)


def style(**p):
    parts = []
    for k, v in p.items():
        if v is None:
            continue
        k = k.replace("_", "-")
        parts.append(f"{k}:{v}px" if isinstance(v, (int, float)) else f"{k}:{v}")
    return ";".join(parts)


# ---------------------------------------------------------------------------------------------------------------
# widgets (positions in the parent's units; WoW TOPLEFT (x, y) -> left x, top -y)
# ---------------------------------------------------------------------------------------------------------------
def fs(text, cls="gfh", mode=None, extra="", **p):
    """A FontString. Without a width it stays on one line; mode='trunc' = SetWordWrap(false) with a width."""
    klass = "fs " + cls
    if mode == "trunc":
        klass += " trunc"
    elif "width" not in p and not ("left" in p and "right" in p):
        klass += " nowrap"
    return f'<div class="{klass}" style="{style(**p)}{extra}">{wow(text)}</div>'


def btn(text, w, h=22, state="", font=12, **p):
    return (f'<div class="btn {state}" style="{style(width=w, height=h, **p)};font-size:{font}px">'
            f'<span class="lbl">{wow(text)}</span></div>')


def edit(text, w, h=22, focus=False, selected=False, caret=False, placeholder=None, **p):
    body = wow(text)
    if selected:
        body = f'<span class="sel">{body}</span>'
    if placeholder and not text:
        body = f'<span class="ph">{esc(placeholder)}</span>'
    if caret:
        body += '<span class="caret"></span>'
    return f'<div class="edit{" focus" if focus else ""}" style="{style(width=w, height=h, **p)}">{body}</div>'


def slider(value, lo, hi, width, **p):
    f = (value - lo) / (hi - lo)
    zero = ""
    if lo < 0 < hi:
        zero = f'<div class="zero" style="left:{width * (-lo) / (hi - lo) - 1:.1f}px"></div>'
    return (f'<div class="slider" style="{style(width=width, **p)}"><div class="bar" style="width:{width}px"></div>'
            f'{zero}<div class="thumb" style="left:{width * f - 4:.1f}px"></div></div>')


def frame(inner, bg=None, opacity=None, cls="", **p):
    o = f";opacity:{opacity}" if opacity is not None else ""
    b = f'<div class="bg" style="background:rgba({bg[0] * 255:.0f},{bg[1] * 255:.0f},{bg[2] * 255:.0f},{bg[3]:.3f})"></div>' \
        if bg else ""
    return f'<div class="f {cls}" style="{style(**p)}{o}">{b}{inner}</div>'


def tooltip(lines, **p):
    """lines: list of (text, colour hex or None). The first line uses the larger header font."""
    out = []
    for i, (text, colour) in enumerate(lines):
        c = f"color:#{colour}" if colour else "color:#ffd100"
        out.append(f'<div class="{"t1" if i == 0 else "tl"}" style="{c}">{wow(text)}</div>')
    return f'<div class="tooltip" style="{style(**p)}">{"".join(out)}</div>'


def chat_lines(lines, **p):
    body = "".join(f'<div class="line">{wow(l)}</div>' for l in lines)
    return f'<div class="chatframe" style="{style(**p)}">{body}</div>'


def placeholder(text, **p):
    return f'<div class="placeholder" style="{style(**p)}">{esc(text)}</div>'


BOOK_SVG = ("<svg viewBox='0 0 36 36' width='36' height='36' xmlns='http://www.w3.org/2000/svg'>"
            "<defs><linearGradient id='bk' x1='0' y1='0' x2='1' y2='1'><stop offset='0' stop-color='#5a3b8c'/>"
            "<stop offset='1' stop-color='#241238'/></linearGradient></defs>"
            "<rect width='36' height='36' fill='url(#bk)'/>"
            "<path d='M8 10 Q13 8 18 11 Q23 8 28 10 L28 27 Q23 25 18 28 Q13 25 8 27 Z' fill='#efe2c0' stroke='#3b2a14' stroke-width='1'/>"
            "<path d='M18 11 L18 28' stroke='#8a6a3a' stroke-width='1'/>"
            "<path d='M10 14 Q13 13 16 14 M10 17 Q13 16 16 17 M10 20 Q13 19 16 20 M20 14 Q23 13 26 14 M20 17 Q23 16 26 17' "
            "stroke='#9a8a6a' stroke-width='0.8' fill='none'/>"
            "<circle cx='27' cy='9' r='2.2' fill='#ffd36b'/></svg>")


def speak_button(desat=False, glow=False, opacity=1.0, paused=False, **p):
    """paused: the "Paused" badge under the button (#183), at full opacity while the button is dimmed."""
    g = '<div class="glow"></div>' if glow else ""
    btn_ = (f'<div class="speak{" desat" if desat else ""}" style="{style(**p)};opacity:{opacity}">'
            f'<div class="icon">{BOOK_SVG}</div>{g}</div>')
    if not paused:
        return btn_
    badge = f'<div class="speak" style="{style(**p)}"><div class="badge fs gfns">Paused</div></div>'
    return btn_ + badge


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
OVERFLOW_JS = """<script>
// mark the button labels wider than their button: the client does not clip them, they spill over the edges
document.querySelectorAll('.btn').forEach(function (b) {
  var l = b.querySelector('.lbl');
  if (l && l.getBoundingClientRect().width > b.getBoundingClientRect().width - 4) b.classList.add('overflows');
});
</script>"""


def page(name, title, w, h, body, scene="neutral", seed=7, scale=1.5, kind="current", caption_extra="",
         alt=None, out_dir=None, css_href="mockups.css"):
    """Writes <name>.html. kind: current | proposed | none. The size and scale are read by render.py."""
    badge = {"current": '<div class="badge-current">CURRENT (from the code)</div>',
             "proposed": '<div class="badge-proposed">PROPOSED - not implemented</div>', "none": ""}[kind]
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
<div class="stage" style="width:{w}px;height:{h}px" role="img" aria-label="{html.escape(alt)}">
{scene_svg(scene, w, h, seed) if scene else ""}
{body}
{badge}
{cap}
</div>
{OVERFLOW_JS}
</body>
</html>
"""
    path = os.path.join(out_dir or MOCKUPS, name + ".html")
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write(doc)
    return path
