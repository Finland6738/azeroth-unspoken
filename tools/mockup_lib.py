"""Building blocks of the Azeroth Unspoken mockups (UI-ECO step UI-8): the tokens of AzerothUnspoken/UI/Theme.lua, the
fonts the addon ships, the widgets of UI/Widgets.lua and UI/Widgets/*.lua as HTML and CSS, and the interface texts read
from the addon's own locale files.

Adapted from the sister addon's tools/mockup_lib.py (same owner, GPL-3.0-or-later): the same idea (pure string helpers,
no browser, no network; a page is HTML on these pieces, rendered later by a headless Chromium) with this addon's tokens,
widgets and windows. Pure Python: the generators are docs/design/mockups/tools/build_mockups.py (the pages of the wiki),
tools/build_assets.py (assets/) and tools/make_mockups.py (docs/specs/mockups/).

Rules of every picture:
- THEMES below must equal Theme.lua token by token, in both themes (Tests/check_mockups.py proves it).
- 1 CSS pixel = 1 unit of UIParent; positions follow the SetPoint/SetSize calls of AzerothUnspoken/UI/.
- Every visible text of the interface comes from the locale files (L()), never typed here; sample data (names, memories)
  is invented and marked as such by the generators.
- Original art only: CSS shapes, inline SVG icons drawn here, the addon's own logo (assets/logo-source.webp) and the
  NEBULA community logo (assets/nebula/, used with its owner's permission). Never Blizzard art.
- What a browser can do and the client cannot (blur, letter spacing) is not used. The glows follow Theme.Glow: only in the
  dark theme, and only where the code puts one.
"""
import html
import os
import re

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
ADDON = os.path.join(ROOT, "AzerothUnspoken")

# ---- tokens: UI/Theme.lua Theme.TOKENS and Theme.themes, the same values ---------------------------------------------
TOKENS = ["bg", "surface-1", "surface-2", "surface-3", "raised", "border-subtle", "border", "border-strong",
          "text-1", "text-2", "text-3", "on-accent", "accent", "accent-hover", "accent-text", "accent-2", "neon", "neon-core",
          "ok", "warn", "err", "highlight", "scrim", "grad-1", "grad-2", "grad-3", "grad-4",
          "voice-narrator", "voice-inner", "voice-character", "voice-npc"]

THEMES = {
    "nebula": {
        "bg": "#0B0612", "surface-1": "#110A1A", "surface-2": "#170F22", "surface-3": "#1E142C", "raised": "#2A1D3B",
        "border-subtle": "rgba(243,238,247,0.08)", "border": "rgba(243,238,247,0.14)", "border-strong": "rgba(243,238,247,0.26)",
        "text-1": "#F3EEF7", "text-2": "#C3B8D1", "text-3": "#9A8FAB", "on-accent": "#1A0710",
        "accent": "#FC7E46", "accent-hover": "#FDA877", "accent-text": "#FC8C46", "accent-2": "#EE4662",
        "neon": "#C45BC4", "neon-core": "#9A2A9A", "ok": "#46C28F", "warn": "#F2B33D", "err": "#FF6369",
        "highlight": "rgba(255,255,255,0.06)", "scrim": "rgba(5,2,10,0.72)",
        "grad-1": "#FC8C46", "grad-2": "#EE4662", "grad-3": "#9A2A9A", "grad-4": "#702AA8",
        "voice-narrator": "#C4B0FF", "voice-inner": "#7FD4FF", "voice-character": "#FFE08A", "voice-npc": "#5BBF66",
    },
    "aurora": {
        "bg": "#F5F8FA", "surface-1": "#FFFFFF", "surface-2": "#EAF0F4", "surface-3": "#E1E9EF", "raised": "#FFFFFF",
        "border-subtle": "rgba(11,27,43,0.07)", "border": "rgba(11,27,43,0.13)", "border-strong": "rgba(11,27,43,0.24)",
        "text-1": "#0B1B2B", "text-2": "#3C4E60", "text-3": "#526476", "on-accent": "#FFFFFF",
        "accent": "#0054B6", "accent-hover": "#003F8A", "accent-text": "#0054B6", "accent-2": "#00766C",
        "neon": "#008F84", "neon-core": "#009A9A", "ok": "#1B7A50", "warn": "#8F5B00", "err": "#C0262D",
        "highlight": "rgba(255,255,255,0.6)", "scrim": "rgba(11,27,43,0.45)",
        "grad-1": "#0054B6", "grad-2": "#007EA8", "grad-3": "#00A89A", "grad-4": "#70C446",
        "voice-narrator": "#4B2BB3", "voice-inner": "#005F8F", "voice-character": "#935E00", "voice-npc": "#0E5A28",
    },
}
THEME_NAMES = {"nebula": "Nebula", "aurora": "Aurora"}
DARK = {"nebula": True, "aurora": False}
VOICE_TOKENS = {"narrator": "voice-narrator", "inner": "voice-inner", "character": "voice-character", "npc": "voice-npc"}


def rgba(value):
    """A token value as (r, g, b, a), 0-255 and 0-1."""
    if value.startswith("#"):
        return int(value[1:3], 16), int(value[3:5], 16), int(value[5:7], 16), 1.0
    r, g, b, a = re.fullmatch(r"rgba\((\d+),(\d+),(\d+),([\d.]+)\)", value).groups()
    return int(r), int(g), int(b), float(a)


def _lum(c):
    def ch(v):
        v /= 255
        return v / 12.92 if v <= 0.03928 else ((v + 0.055) / 1.055) ** 2.4
    return 0.2126 * ch(c[0]) + 0.7152 * ch(c[1]) + 0.0722 * ch(c[2])


def contrast(a, b):
    """WCAG contrast of two opaque token values (the formula of Theme.Contrast)."""
    la, lb = _lum(rgba(a)), _lum(rgba(b))
    la, lb = max(la, lb), min(la, lb)
    return (la + 0.05) / (lb + 0.05)


# ---- fonts: UI/Theme.lua Theme.fontSpecs; the files are the ones of AzerothUnspoken/Media/Fonts ------------------------
FONT_FILES = [("AU Orbitron", "Orbitron-Bold.ttf", 700), ("AU Outfit", "Outfit-Regular.ttf", 400),
              ("AU Outfit", "Outfit-Medium.ttf", 500), ("AU Outfit", "Outfit-SemiBold.ttf", 600),
              ("AU Mono", "JetBrainsMono-Regular.ttf", 400), ("AU Mono", "JetBrainsMono-Medium.ttf", 500)]
FAMILY = {"display": "'AU Orbitron', 'Bahnschrift', sans-serif", "text": "'AU Outfit', 'Segoe UI', sans-serif",
          "mono": "'AU Mono', 'Cascadia Mono', Consolas, monospace",
          # the inner voice: the client's Arial Narrow (Fonts\\ARIALN.TTF, #186), not shipped by the addon
          "inner": "'Arial Narrow', 'Roboto Condensed', Arial, sans-serif"}
# id -> (family, weight, size)
FONTS = {"Display": ("display", 700, 22), "DisplaySmall": ("display", 700, 15), "H1": ("text", 600, 16),
         "H2": ("text", 600, 14), "Body": ("text", 400, 13), "BodyMedium": ("text", 500, 13), "Small": ("text", 400, 12),
         "Eyebrow": ("text", 500, 12), "Th": ("text", 600, 12), "Tab": ("text", 500, 14), "Button": ("text", 500, 13),
         "Mono": ("mono", 400, 13), "MonoMedium": ("mono", 500, 13), "MonoSmall": ("mono", 400, 12)}

# The base of every file a page loads (fonts, logos): a relative path for the pages kept in the repository (no personal
# path is ever written into a committed file), a file:/// URL for the pages written to a temporary folder.
BASE = ""


def set_base(prefix):
    """prefix: the path from the page to the repository root, ending in '/' ('../../../' or 'file:///E:/.../')."""
    global BASE
    BASE = prefix


def file_url(path):
    return "file:///" + os.path.abspath(path).replace("\\", "/") + ("/" if os.path.isdir(path) else "")


def asset(rel):
    """A file of the repository as the page sees it."""
    return BASE + rel


LOGO = "assets/logo-source.webp"
NEBULA_LOGO = {"nebula": "assets/nebula/nebula-logo-dark.png", "aurora": "assets/nebula/nebula-logo-light.png"}

# ---- the interface texts: Data/<enUS|itIT>/Interface.lua and *UI.lua, read with the real NS:RegisterLanguage -----------
LANGS = {"en": "enUS", "it": "itIT"}
_TEXTS = {}


def _load(lang):
    from lupa import lua51
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    capture = lua.eval("""function(src, name)
        local out = {}
        local NS = { RegisterLanguage = function(_, code, info) out[#out + 1] = { code = code, ui = info.ui or {} } end }
        assert(loadstring(src, name))("AzerothUnspoken", NS)
        return out
    end""")
    table = {}
    folder = os.path.join(ADDON, "Data", LANGS[lang])
    for name in sorted(os.listdir(folder)):
        if name == "Interface.lua" or name.endswith("UI.lua"):
            src = open(os.path.join(folder, name), encoding="utf-8").read()
            regs = capture(src, "@" + name)
            for i in range(1, len(regs) + 1):
                if regs[i]["code"] == lang:
                    for k, v in regs[i]["ui"].items():
                        table[k] = v if isinstance(v, str) else [v[j] for j in range(1, len(v) + 1)]
    return table


def L(lang, key, *args):
    """NS:L(key, ...) in `lang` (en | it): the language's text, else the English one (Core/Bootstrap.lua). A missing key
    is an error here, never a silent fallback: a mockup cannot show a text the addon does not have."""
    for code in (lang, "en"):
        if code not in _TEXTS:
            _TEXTS[code] = _load(code)
    s = _TEXTS[lang].get(key, _TEXTS["en"].get(key))
    if s is None:
        raise KeyError(f"locale key {key!r} is not in Data/enUS or Data/itIT")
    return s % args if args else s


def has_key(key):
    if "en" not in _TEXTS:
        _TEXTS["en"] = _load("en")
    return key in _TEXTS["en"]


# ---- text ----------------------------------------------------------------------------------------------------------
def esc(s):
    return html.escape(str(s), quote=False)


def wow(s):
    """A WoW string as HTML, read the way the client reads its escapes: |cffRRGGBB ... |r colours, || one bar, |n and \\n
    a new line. |c{token} ... |r is a word in a theme colour (W.Hex(token) in the code)."""
    out, depth = [], 0
    for tok in re.split(r"(\|\||\|c[fF]{2}[0-9a-fA-F]{6}|\|c\{[a-z0-9-]+\}|\|r|\|n)", str(s)):
        if tok == "||":
            out.append("|")
        elif tok == "|n":
            out.append("<br>")
        elif re.fullmatch(r"\|c[fF]{2}[0-9a-fA-F]{6}", tok):
            out.append(f'<span style="color:#{tok[4:]}">')
            depth += 1
        elif re.fullmatch(r"\|c\{[a-z0-9-]+\}", tok):
            out.append(f'<span style="color:var(--{tok[3:-1]})">')
            depth += 1
        elif tok == "|r":
            if depth:
                out.append("</span>")
                depth -= 1
        else:
            out.append(esc(tok).replace("\n", "<br>"))
    out.append("</span>" * depth)
    return "".join(out)


def hexed(token, text):
    """W.Hex(token) .. text .. "|r": a word in a theme colour inside a longer text."""
    return "|c{" + token + "}" + text + "|r"


def style(**p):
    parts = []
    for k, v in p.items():
        if v is None:
            continue
        k = k.replace("_", "-")
        parts.append(f"{k}:{v}px" if isinstance(v, (int, float)) else f"{k}:{v}")
    return ";".join(parts)


# ---- the stylesheet -------------------------------------------------------------------------------------------------
def token_vars(theme):
    return "".join(f"--{k}:{v};" for k, v in THEMES[theme].items())


def css():
    """The stylesheet of every page: the two themes (a page or a window picks one with data-theme), the fonts, the
    widgets. Written once into the folder of the pages (docs/design/mockups/mockups.css)."""
    faces = "\n".join(f"@font-face {{ font-family: {fam!r}; src: url('{asset('AzerothUnspoken/Media/Fonts/' + f)}'); "
                      f"font-weight: {w}; }}".replace('"', "'") for fam, f, w in FONT_FILES)
    fonts = "\n".join(f".f-{fid} {{ font: {w} {size}px/1.25 {FAMILY[fam]}; }}" for fid, (fam, w, size) in FONTS.items())
    return f"""/* Generated by tools/mockup_lib.py (UI-ECO UI-8): do not edit by hand. Tokens = AzerothUnspoken/UI/Theme.lua. */
{faces}
:root, [data-theme="nebula"] {{ {token_vars("nebula")} --glow-a: .35; --shadow: 0 24px 60px -20px rgba(0,0,0,.75); }}
[data-theme="aurora"] {{ {token_vars("aurora")} --glow-a: 0; --shadow: 0 18px 40px -18px rgba(11,27,43,.35); }}
* {{ box-sizing: border-box; margin: 0; padding: 0; }}
body {{ background: #0d0a12; font: 400 13px/1.25 {FAMILY['text']}; color: var(--text-1); }}
.stage {{ position: relative; overflow: hidden; color: var(--text-1); font: 400 13px/1.25 {FAMILY['text']}; }}
.stage > svg.scene {{ position: absolute; inset: 0; width: 100%; height: 100%; }}
.abs {{ position: absolute; }}
.fs {{ position: absolute; white-space: pre-wrap; overflow-wrap: break-word; }}
.fs.nowrap {{ white-space: pre; }}
.fs.trunc {{ white-space: pre; overflow: hidden; text-overflow: clip; }}
{fonts}
.upper {{ text-transform: uppercase; }}
/* the caption strip of every page: the mockup's own frame, not a part of the addon */
.caption {{ position: absolute; left: 0; right: 0; bottom: 0; padding: 6px 12px; background: rgba(0,0,0,.82); color: #cfc8d8;
  font: 11px/1.35 'Segoe UI', sans-serif; z-index: 50; }}
.caption b {{ color: #fff; letter-spacing: .08em; }}
.badge-current {{ position: absolute; top: 8px; right: 8px; padding: 3px 8px; border-radius: 4px; background: rgba(0,0,0,.75);
  color: #9be3b4; font: 600 10px/1.2 'Segoe UI', sans-serif; letter-spacing: .1em; z-index: 50; }}
.badge-proposed {{ position: absolute; top: 8px; right: 8px; padding: 3px 8px; border-radius: 4px; background: rgba(60,20,20,.85);
  color: #ffb4a8; font: 600 10px/1.2 'Segoe UI', sans-serif; letter-spacing: .1em; z-index: 50; }}
.note {{ position: absolute; max-width: 230px; padding: 8px 10px; border-radius: 6px; background: rgba(0,0,0,.78);
  border: 1px dashed rgba(255,255,255,.45); color: #f2efe6; font: 12px/1.35 'Segoe UI', sans-serif; z-index: 40; }}
/* ---- surfaces: Theme.Panel (radius 8, 12, 18; fill, ring, shadow when neon is on, 1 px highlight) ---- */
.panel {{ position: absolute; border-radius: 12px; background: var(--surface-1); border: 1px solid var(--border-subtle); }}
.panel.hl {{ box-shadow: inset 0 1px 0 var(--highlight); }}
.panel.shadow {{ box-shadow: inset 0 1px 0 var(--highlight), var(--shadow); }}
/* ---- the window shell: W.Window + W.TitleBar (52 units, 16 of them above the frame; contents from W.TOP = 46) ---- */
.win {{ position: absolute; }}
.win > .chrome {{ position: absolute; left: 0; right: 0; top: -16px; bottom: 0; border-radius: 12px; background: var(--bg);
  border: 1px solid var(--border); box-shadow: var(--shadow); }}
.tbar {{ position: absolute; left: 0; right: 0; top: -16px; height: 52px; border-radius: 12px; background: var(--surface-1); z-index: 2; }}
.tbar::after {{ content: ""; position: absolute; left: 12px; right: 12px; bottom: 0; height: 1px; background: var(--border-subtle); }}
.tbar .logo {{ position: absolute; left: 14px; top: 10px; width: 32px; height: 32px; border-radius: 50%;
  box-shadow: 0 0 16px rgba(252,126,70,var(--glow-a)); }}
.tbar .ttl {{ position: absolute; left: 58px; top: 10px; white-space: pre; overflow: hidden; color: var(--text-1);
  text-transform: uppercase; }}
[data-theme="nebula"] .tbar .ttl, .tbar .ttl.glow {{ text-shadow: 0 0 10px color-mix(in srgb, var(--accent) 45%, transparent); }}
[data-theme="aurora"] .tbar .ttl {{ text-shadow: none; }}
.tbar .sub {{ position: absolute; left: 58px; top: 33px; white-space: pre; color: var(--text-3); }}
.tbar .x {{ position: absolute; right: 12px; top: 12px; width: 28px; height: 28px; border-radius: 8px; display: grid;
  place-items: center; color: var(--text-2); }}
.tbar .x.hover {{ background: var(--surface-3); color: var(--text-1); }}
.tbar .status {{ position: absolute; right: 50px; top: 14px; }}
.win > .body {{ position: absolute; inset: 0; }}
/* ---- W.FlatButton: primary | secondary | ghost | neon | danger | text (radius 8; hover 8 % white, pressed 12 %) ---- */
.fb {{ position: absolute; display: flex; align-items: center; justify-content: center; border-radius: 8px; white-space: pre;
  font: 500 13px/1 {FAMILY['text']}; color: var(--text-1); border: 1px solid transparent; }}
.fb.inline {{ position: relative; }}
.fb.secondary {{ background: var(--surface-3); border-color: var(--border); }}
.fb.primary {{ background: linear-gradient(90deg, var(--accent), var(--accent-2)); color: var(--on-accent);
  box-shadow: 0 0 18px rgba(252,126,70,calc(var(--glow-a) * .85)); }}
.fb.ghost {{ color: var(--text-2); }}
.fb.ghost.hover, .fb.ghost.sel {{ background: var(--surface-3); }}
.fb.neon {{ background: var(--surface-1); border-color: var(--neon); box-shadow: 0 0 16px color-mix(in srgb, var(--neon) calc(var(--glow-a) * 140%), transparent); }}
.fb.danger {{ color: var(--err); border-color: var(--err); }}
.fb.danger.armed {{ background: var(--err); color: var(--on-accent); }}
.fb.text {{ justify-content: flex-start; padding-left: 2px; color: var(--accent-text); }}
.fb.text.hover {{ color: var(--accent-hover); }}
.fb.sel {{ border-color: var(--accent); }}
.fb.sel.ghost, .fb.sel.secondary {{ color: var(--text-1); }}
.fb.sel::after {{ content: ""; position: absolute; left: 6px; right: 6px; bottom: 2px; height: 2px; background: var(--accent); }}
.fb.hover:not(.text)::before {{ content: ""; position: absolute; inset: -1px; border-radius: 8px; background: rgba(255,255,255,.08); }}
.fb.disabled {{ opacity: .45; }}
.fb .key {{ color: inherit; opacity: .8; margin-left: 6px; font: 400 12px/1 {FAMILY['mono']}; }}
.fb.clipped .lbl {{ overflow: hidden; text-overflow: clip; max-width: calc(100% - 8px); }}
/* ---- W.Badge (24 high, a pill of the tone at 16 % dark / 12 % light), W.Chip (28, a ring; filled when chosen) ---- */
.badge {{ display: inline-flex; align-items: center; justify-content: center; height: 24px; min-width: 24px; padding: 0 10px;
  border-radius: 12px; font: 600 12px/1 {FAMILY['text']}; white-space: pre; --tone: var(--text-2); color: var(--tone);
  background: color-mix(in srgb, var(--tone) 16%, transparent); }}
[data-theme="aurora"] .badge {{ background: color-mix(in srgb, var(--tone) 12%, transparent); }}
.badge.accent {{ --tone: var(--accent-text); }} .badge.ok {{ --tone: var(--ok); }} .badge.warn {{ --tone: var(--warn); }}
.badge.err {{ --tone: var(--err); }}
.badge.abs {{ position: absolute; }}
.chip {{ position: absolute; display: flex; align-items: center; justify-content: center; gap: 8px; height: 28px; padding: 0 14px;
  border-radius: 14px; border: 1px solid var(--border); color: var(--text-2); font: 500 13px/1 {FAMILY['text']}; white-space: pre; }}
.chip.inline {{ position: relative; }}
.chip.hot {{ background: var(--surface-2); border-color: var(--border-strong); }}
.chip.on {{ background: var(--accent); border-color: var(--accent); color: var(--on-accent); }}
/* ---- W.Tabs (44 high, label Tab text-3, the chosen one text-1 with a 2 unit accent bar inset 8) ---- */
.tabs {{ position: absolute; height: 44px; display: flex; gap: 4px; align-items: stretch; }}
.tabs::after {{ content: ""; position: absolute; left: 0; right: 0; bottom: 0; height: 1px; background: var(--border-subtle); }}
.tab {{ position: relative; display: flex; align-items: center; justify-content: center; padding: 1px var(--tab-pad, 16px) 0;
  min-width: var(--tab-min, 64px); font: 500 14px/1 {FAMILY['text']}; color: var(--text-3); white-space: pre; }}
.tab.on {{ color: var(--text-1); }}
.tab.on::after {{ content: ""; position: absolute; left: 8px; right: 8px; bottom: 0; height: 2px; background: var(--accent); z-index: 1; }}
/* ---- W.Segmented (32 high, surface-2 radius 12, the chosen item raised with a border-strong ring) ---- */
.seg {{ position: absolute; height: 32px; display: flex; gap: 0; padding: 4px; border-radius: 12px; background: var(--surface-2);
  border: 1px solid var(--border); }}
.seg.inline {{ position: relative; }}
.seg span {{ display: flex; align-items: center; justify-content: center; min-width: 48px; height: 22px; padding: 0 12px;
  border-radius: 9px; font: 500 13px/1 {FAMILY['text']}; color: var(--text-3); white-space: pre; border: 1px solid transparent; }}
.seg span.on {{ background: var(--raised); border-color: var(--border-strong); color: var(--text-1); }}
/* ---- W.Switch (44 x 26), W.Slider (track 4, thumb 14, zero mark), W.ThinBar, W.EditBox, W.ChoiceList ---- */
.sw {{ position: absolute; width: 44px; height: 26px; border-radius: 13px; background: var(--surface-3); border: 1px solid var(--text-3); }}
.sw::after {{ content: ""; position: absolute; top: 3px; left: 3px; width: 18px; height: 18px; border-radius: 50%; background: var(--text-2); }}
.sw.on {{ background: var(--accent); border-color: var(--accent); }} .sw.on::after {{ left: 21px; background: var(--on-accent); }}
.slider {{ position: absolute; height: 16px; }}
.slider .track {{ position: absolute; top: 6px; height: 4px; border-radius: 2px; background: var(--text-3); }}
.slider .fill {{ position: absolute; top: 6px; height: 4px; border-radius: 2px; background: var(--accent); }}
.slider .zero {{ position: absolute; top: 2px; width: 2px; height: 12px; background: var(--text-1); }}
.slider .thumb {{ position: absolute; top: 1px; width: 14px; height: 14px; border-radius: 50%; background: var(--text-1);
  box-shadow: 0 0 0 1px rgba(0,0,0,.25); }}
.thin {{ position: absolute; background: var(--border); overflow: hidden; }}
.thin i {{ position: absolute; left: 0; top: 0; bottom: 0; background: linear-gradient(90deg, var(--accent), var(--accent-2)); }}
.edit {{ position: absolute; display: flex; align-items: center; padding: 0 8px; border-radius: 8px; background: var(--surface-2);
  border: 1px solid var(--border); font: 400 13px/1.25 {FAMILY['text']}; color: var(--text-1); white-space: pre; overflow: hidden; }}
.edit.focus {{ border-color: var(--accent); }}
.edit.multi {{ align-items: flex-start; padding: 8px; white-space: pre-wrap; }}
.edit .ph {{ color: var(--text-3); }}
.edit .sel {{ background: color-mix(in srgb, var(--accent) 35%, transparent); }}
.edit .caret {{ display: inline-block; width: 1px; height: 15px; margin-left: 1px; background: var(--text-1); vertical-align: -3px; }}
.choices {{ position: absolute; padding: 4px; border-radius: 12px; background: var(--surface-2); border: 1px solid var(--border); }}
.choices .row {{ position: relative; height: 24px; display: flex; align-items: center; padding-left: 24px; border-radius: 8px;
  color: var(--text-2); font: 400 13px/1 {FAMILY['text']}; white-space: pre; }}
.choices .row.on {{ background: var(--raised); color: var(--text-1); }}
.choices .row.on::before {{ content: ""; position: absolute; left: 8px; top: 8px; width: 8px; height: 8px; border-radius: 50%; background: var(--accent); }}
/* ---- W.Section (surface-1 radius 12, title H2 at 16,14, a rule at 36), W.Card (selectable: raised + accent ring + marker) ---- */
.section {{ position: absolute; border-radius: 12px; background: var(--surface-1); border: 1px solid var(--border-subtle);
  box-shadow: inset 0 1px 0 var(--highlight); }}
.section > .st {{ position: absolute; left: 16px; right: 16px; top: 14px; white-space: pre; overflow: hidden; }}
.section > .rule {{ position: absolute; left: 16px; right: 16px; top: 36px; height: 1px; background: var(--border-subtle); }}
.card {{ position: absolute; border-radius: 12px; background: var(--surface-1); border: 1px solid var(--border-subtle);
  box-shadow: inset 0 1px 0 var(--highlight); }}
.card.on {{ background: var(--raised); border-color: var(--accent); }}
.card.hover {{ border-color: var(--border-strong); }}
.card .mk {{ position: absolute; right: 12px; top: 12px; width: 12px; height: 12px; border-radius: 50%; border: 1.5px solid var(--text-3); }}
.card.on .mk {{ border: 0; background: var(--accent); }}
/* ---- W.DataTable (header 28 on surface-2 outside the list; rows 32 with a subtle rule; mono cells in accent-text) ---- */
.dt {{ position: absolute; }}
.dt .head {{ position: absolute; left: 0; right: 0; top: 0; height: 28px; border-radius: 8px; background: var(--surface-2); }}
.dt .th {{ position: absolute; top: 0; height: 28px; display: flex; align-items: center; font: 600 12px/1 {FAMILY['text']};
  color: var(--text-3); white-space: pre; }}
.dt .th.sorted {{ color: var(--accent-text); }}
.dt .row {{ position: absolute; left: 0; right: 0; border-bottom: 1px solid var(--border-subtle); }}
.dt .row.hover {{ background: var(--surface-2); }}
.dt .td {{ position: absolute; top: 0; bottom: 0; display: flex; align-items: center; font: 400 13px/1.25 {FAMILY['text']};
  color: var(--text-1); white-space: pre; overflow: hidden; }}
.dt .td.wrap {{ white-space: normal; }}
.dt .td.mono {{ font: 400 13px/1 {FAMILY['mono']}; color: var(--accent-text); }}
.dt .empty {{ position: absolute; left: 0; right: 0; text-align: center; color: var(--text-3); }}
/* ---- W.Dialog (scrim veil, card radius 18), W.Toast (380 x 44, raised), the addon's tooltip (inverted) ---- */
.veil {{ position: absolute; inset: 0; background: var(--scrim); z-index: 20; }}
.veil.top {{ top: -16px; border-radius: 12px; }}
.dlg {{ position: absolute; border-radius: 18px; background: var(--surface-1); border: 1px solid var(--border);
  box-shadow: inset 0 1px 0 var(--highlight), var(--shadow); z-index: 21; }}
.toast {{ position: absolute; min-height: 44px; display: flex; align-items: center; padding: 12px 16px 12px 36px; border-radius: 12px;
  background: var(--raised); border: 1px solid var(--border-strong); box-shadow: inset 0 1px 0 var(--highlight), var(--shadow);
  font: 400 13px/1.25 {FAMILY['text']}; color: var(--text-1); z-index: 22; }}
.toast::before {{ content: ""; position: absolute; left: 16px; top: calc(50% - 5px); width: 10px; height: 10px; border-radius: 50%;
  background: var(--tone, var(--accent)); }}
.tip {{ position: absolute; max-width: 300px; padding: 8px 10px; border-radius: 8px; background: var(--text-1); color: var(--bg);
  border: 1px solid var(--border-strong); font: 400 13px/1.25 {FAMILY['text']}; box-shadow: 0 8px 24px -8px rgba(0,0,0,.5); z-index: 30; white-space: pre-wrap; }}
/* ---- the game's own pieces drawn as plain stand-ins (the chat frame, the client's Settings window) ---- */
.chatframe {{ position: absolute; padding: 6px 8px; background: rgba(0,0,0,.42); font: 14px/1.35 Arial, sans-serif; color: #fff;
  text-shadow: 1px 1px 0 #000; overflow: hidden; display: flex; flex-direction: column; justify-content: flex-end; }}
.chatinput {{ position: absolute; height: 26px; padding: 4px 8px; background: rgba(0,0,0,.6); border: 1px solid #555;
  font: 14px/1.2 Arial, sans-serif; color: #fff; }}
.client {{ position: absolute; border-radius: 6px; background: #141414; border: 1px solid #4a4a4a; box-shadow: 0 10px 30px rgba(0,0,0,.6); }}
.client .ct {{ position: absolute; left: 14px; top: 10px; color: #ffd100; font: 15px/1.2 Arial, sans-serif; }}
.client .nav {{ position: absolute; left: 10px; top: 40px; width: 150px; bottom: 10px; background: #1c1c1c; border-radius: 4px;
  color: #d0d0d0; font: 13px/1.9 Arial, sans-serif; padding: 6px 10px; }}
.client .nav b {{ color: #fff; font-weight: normal; display: block; background: #333; margin: 4px -10px; padding: 0 10px; }}
.client .nav i {{ display: block; height: 10px; margin: 9px 0; width: 70%; border-radius: 3px; background: #333; }}
.client .scrollbar {{ position: absolute; width: 8px; border-radius: 4px; background: #2a2a2a; }}
.client .scrollbar i {{ position: absolute; left: 0; right: 0; border-radius: 4px; background: #6a6a6a; }}
.speak {{ position: absolute; width: 40px; height: 40px; }}
.speak .disc {{ position: absolute; inset: 0; border-radius: 50%; background: var(--surface-1); border: 1px solid var(--border-strong);
  display: grid; place-items: center; color: var(--text-1); }}
.speak.on .disc {{ border: 2px solid var(--accent); box-shadow: 0 0 18px rgba(252,126,70,calc(var(--glow-a) * 1.4)); }}
.speak.dim {{ opacity: .45; }}
/* ---- the design-system and comparison boards (docs/specs/mockups) ---- */
.swatch {{ border-radius: 10px; border: 1px solid var(--border-subtle); overflow: hidden; font: 400 11px/1.3 {FAMILY['mono']}; }}
.swatch > div {{ height: 30px; }}
.swatch p {{ padding: 5px 7px; color: var(--text-2); background: var(--surface-1); white-space: nowrap; overflow: hidden; }}
"""


# ---- icons: original line drawings (the in-game ones are Media/icons.tga, drawn by tools/make_media.py) --------------
ICONS = {
    "cross": '<path d="M17 7 7 17"/><path d="m7 7 10 10"/>',
    "chevron": '<path d="m7 10 5 5 5-5"/>',
    "check": '<path d="M19 7 10 16l-4-4"/>',
    "pause": '<path d="M9 6v12"/><path d="M15 6v12"/>',
    "play": '<path d="M8 6v12l10-6z" fill="currentColor"/>',
    "history": '<path d="M6 8h12"/><path d="M6 12h12"/><path d="M6 16h12"/>',
    "quill": '<path d="M19 4c-6 1-10 5-12 12l-1 4 4-1c7-2 11-6 12-12"/><path d="M7 16 15 8"/>',
    "dots": ('<circle cx="9" cy="8" r="1" fill="currentColor"/><circle cx="13" cy="8" r="1" fill="currentColor"/>'
             '<circle cx="9" cy="12" r="1" fill="currentColor"/><circle cx="13" cy="12" r="1" fill="currentColor"/>'
             '<circle cx="9" cy="16" r="1" fill="currentColor"/><circle cx="13" cy="16" r="1" fill="currentColor"/>'),
    "plus": '<path d="M12 6v12"/><path d="M6 12h12"/>',
    "minus": '<path d="M6 12h12"/>',
    "star": '<path d="m12 4 2.4 5 5.6.7-4.1 3.8 1 5.5L12 16.3 7.1 19l1-5.5L4 9.7l5.6-.7z"/>',
    "heart": '<path d="M12 19s-7-4.4-7-9.5A3.8 3.8 0 0 1 12 7a3.8 3.8 0 0 1 7 2.5C19 14.6 12 19 12 19z"/>',
    # the emote wheel (ADR 0059): line versions of the sheet's cells the wheel uses
    "hand": '<path d="M8 13V6.5a1.5 1.5 0 0 1 3 0V12"/><path d="M11 11.5V5a1.5 1.5 0 0 1 3 0v6.5"/>'
            '<path d="M14 11.5V6.5a1.5 1.5 0 0 1 3 0V14a6 6 0 0 1-6 6h-.5a6 6 0 0 1-4.8-2.4L4 15a1.6 1.6 0 0 1 2.4-2.1L8 14.5"/>',
    "note": '<path d="M10 18V5l8-2v4l-8 2"/><circle cx="7" cy="18" r="3"/>',
    "smile": '<circle cx="12" cy="12" r="8.5"/><path d="M8.5 14a4.5 4.5 0 0 0 7 0"/><path d="M9 9.5h.01"/><path d="M15 9.5h.01"/>',
    "train": '<rect x="3" y="10" width="11" height="6" rx="1"/><path d="M14 16V6h6v10z"/><path d="M5 10V7h3v3"/>'
             '<circle cx="6" cy="18" r="2"/><circle cx="11" cy="18" r="2"/><circle cx="17" cy="18" r="2"/>',
    "crown": '<path d="m4 8 4 4 4-6 4 6 4-4-1.5 10h-13z"/>',
    "bell": '<path d="M6 16V11a6 6 0 0 1 12 0v5l1.5 2h-15z"/><path d="M10 20a2 2 0 0 0 4 0"/>',
    "flag": '<path d="M5 21V4"/><path d="M5 4h11l-2 4 2 4H5"/>',
    "arrow_up": '<path d="M12 19V5"/><path d="m6 11 6-6 6 6"/>',
    "warn": '<path d="M12 4 2.5 20h19z"/><path d="M12 10v4"/><path d="M12 17h.01"/>',
    "chat": '<path d="M4 6a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H9l-4 4v-4H6a2 2 0 0 1-2-2z"/>',
}


def icon(name, size=16, token="currentColor", stroke=2):
    color = token if token == "currentColor" else f"var(--{token})"
    return (f'<svg width="{size}" height="{size}" viewBox="0 0 24 24" fill="none" stroke="{color}" stroke-width="{stroke}" '
            f'stroke-linecap="round" stroke-linejoin="round" style="flex:none;color:{color}">{ICONS[name]}</svg>')


# ---- widgets ------------------------------------------------------------------------------------------------------------
def text(s, font="Body", token="text-1", mode=None, upper=False, extra="", **pos):
    """A FontString made with Theme.NewText(parent, font, token). Without a width it stays on one line; mode='trunc' is
    SetWordWrap(false) with a width."""
    klass = f"fs f-{font}"
    if upper:
        klass += " upper"
    if mode == "trunc":
        klass += " trunc"
    elif "width" not in pos and not ("left" in pos and "right" in pos):
        klass += " nowrap"
    color = f"color:var(--{token});" if token else ""
    return f'<div class="{klass}" style="{color}{style(**pos)}{extra}">{wow(s)}</div>'


def button(label, w, h=24, kind="secondary", selected=False, armed=False, disabled=False, hover=False, key=None,
           clipped=False, inline=False, **pos):
    klass = ["fb", kind]
    for on, name in ((selected, "sel"), (armed and kind == "danger", "armed"), (disabled, "disabled"), (hover, "hover"),
                     (clipped, "clipped"), (inline, "inline")):
        if on:
            klass.append(name)
    k = f'<span class="key">{esc(key)}</span>' if key else ""
    return f'<div class="{" ".join(klass)}" style="{style(width=w, height=h, **pos)}"><span class="lbl">{wow(label)}</span>{k}</div>'


def badge(label, tone="neutral", **pos):
    klass = "badge" + ("" if tone == "neutral" else " " + tone) + (" abs" if pos else "")
    return f'<span class="{klass}" style="{style(**pos)}">{wow(label)}</span>'


def chip(label, selected=False, hot=False, h=28, arrow=False, inline=False, font=None, **pos):
    klass = "chip" + (" on" if selected else "") + (" hot" if hot else "") + (" inline" if inline else "")
    a = icon("chevron", 12) if arrow else ""
    f = f"font-size:{FONTS[font][2]}px;" if font else ""
    return f'<div class="{klass}" style="{f}{style(height=h, **pos)}">{wow(label)}{a}</div>'


def tabs(items, active, pad=32, **pos):
    """W.Tabs: items = [(id, text)]; each tab max(minW, text + pad) wide, 4 apart; pad 32 (minW 64) or squeezed by :Fit."""
    tmin = 64 if pad >= 32 else 48
    cells = "".join(f'<div class="tab{" on" if i == active else ""}">{wow(t)}</div>' for i, t in items)
    return f'<div class="tabs" style="--tab-pad:{pad // 2}px;--tab-min:{tmin}px;{style(**pos)}">{cells}</div>'


def segmented(items, active, inline=False, **pos):
    cells = "".join(f'<span class="{"on" if i == active else ""}">{wow(t)}</span>' for i, t in items)
    return f'<div class="seg{" inline" if inline else ""}" style="{style(**pos)}">{cells}</div>'


def switch(on, **pos):
    return f'<div class="sw{" on" if on else ""}" style="{style(**pos)}"></div>'


def slider(value, lo, hi, width, inset=7, **pos):
    """W.Slider: a 4-unit track (text-3), the fill from zero (or from the low end) in accent, a 14-unit thumb."""
    span = width - 2 * inset
    f = (value - lo) / (hi - lo)
    origin = (-lo / (hi - lo)) if lo < 0 < hi else 0
    a, b = sorted((origin, f))
    zero = f'<div class="zero" style="left:{inset + span * origin - 1:.1f}px"></div>' if lo < 0 < hi else ""
    return (f'<div class="slider" style="{style(width=width, **pos)}"><div class="track" style="left:{inset}px;width:{span}px"></div>'
            f'<div class="fill" style="left:{inset + span * a:.1f}px;width:{span * (b - a):.1f}px"></div>{zero}'
            f'<div class="thumb" style="left:{inset + span * f - 7:.1f}px"></div></div>')


def thinbar(fraction, width, h=4, token=None, **pos):
    fill = f"background:var(--{token})" if token else ""
    return (f'<div class="thin" style="{style(width=width, height=h, **pos)}">'
            f'<i style="width:{max(0, min(1, fraction)) * 100:.1f}%;{fill}"></i></div>')


def editbox(value, w, h=24, focus=False, selected=False, caret=False, placeholder=None, multi=False, font=None, **pos):
    body = wow(value)
    if selected:
        body = f'<span class="sel">{body}</span>'
    if placeholder and not value:
        body = f'<span class="ph">{esc(placeholder)}</span>'
    if caret:
        body += '<span class="caret"></span>'
    f = ""
    if font:
        fam, wt, size = FONTS[font]
        f = f"font:{wt} {size}px/1.3 {FAMILY[fam]};"
    klass = "edit" + (" focus" if focus else "") + (" multi" if multi else "")
    return f'<div class="{klass}" style="{f}{style(width=w, height=h, **pos)}">{body}</div>'


def choicelist(items, selected, width, rows=6, row_h=24, **pos):
    cells = "".join(f'<div class="row{" on" if i == selected else ""}">{wow(t)}</div>' for i, t in items[:rows])
    return f'<div class="choices" style="{style(width=width, height=rows * row_h + 8, **pos)}">{cells}</div>'


def section(w, h, title, body="", **pos):
    """W.Section: the rows go inside, from W.SECTION_TOP (44) down."""
    t = (f'<div class="st f-H2">{wow(title)}</div><div class="rule"></div>') if title else ""
    return f'<div class="section" style="{style(width=w, height=h, **pos)}">{t}{body}</div>'


def card(title, sub, w, h, on=False, hover=False, tag=None, big=False, **pos):
    """W.Card: title BodyMedium at (12, 8), up to the marker; the description under it (Small, or Body for a consent)."""
    t = title + (f"  {hexed('accent-text', '(' + tag + ')')}" if tag else "")
    klass = "card" + (" on" if on else "") + (" hover" if hover and not on else "")
    return (f'<div class="{klass}" style="{style(width=w, height=h, **pos)}"><div class="mk"></div>'
            + text(t, "BodyMedium", "text-1", mode="trunc", left=12, top=8, width=w - 42)
            + text(sub, "Body" if big else "Small", "text-2", left=12, top=8 + 17 + 4, width=w - 24) + "</div>")


def table(columns, rows, width, height=None, sort=None, row_h=32, head_h=28, hover=None, empty=None, show_head=True,
          extra_style="", **pos):
    """W.DataTable. columns = [(id, title, width or None (flex), mono)]; rows = [{id: html text}]. sort = (id, desc)."""
    fixed = sum(c[2] for c in columns if c[2])
    flex = max(1, sum(1 for c in columns if not c[2]))
    x, cols = 8, []
    for cid, title, cw, mono in columns:
        w_ = cw or (width - 16 - fixed) / flex
        cols.append((cid, title, x, w_, mono))
        x += w_
    out = []
    top = 0
    if show_head:
        out.append('<div class="head"></div>')
        for cid, title, cx, cw, _ in cols:
            on = sort and sort[0] == cid
            arrow = (f'<span style="margin-left:4px;display:inline-flex;transform:rotate({0 if sort[1] else 180}deg)">'
                     f'{icon("chevron", 12, "accent-text")}</span>') if on else ""
            out.append(f'<div class="th{" sorted" if on else ""}" style="left:{cx:.0f}px;width:{cw:.0f}px">{wow(title)}{arrow}</div>')
        top = head_h + 2
    for i, r in enumerate(rows):
        cells = "".join(f'<div class="td{" mono" if mono else ""}" style="left:{cx:.0f}px;width:{cw - 6:.0f}px">{r.get(cid, "")}</div>'
                        for cid, _, cx, cw, mono in cols)
        out.append(f'<div class="row{" hover" if hover == i else ""}" style="top:{top + i * row_h}px;height:{row_h}px">{cells}</div>')
    if not rows and empty:
        out.append(f'<div class="empty f-Body" style="top:{top + 24}px">{wow(empty)}</div>')
    hh = height if height is not None else top + len(rows) * row_h
    return f'<div class="dt" style="{style(width=width, height=hh, **pos)};{extra_style}">{"".join(out)}</div>'


def dialog(host_w, host_h, title, body, confirm, cancel, danger=True, width=420, height=None, top_veil=True):
    """W.Dialog inside a window: the scrim over the whole window (title bar included), a card in the middle: the title H1
    at (20, 18), the text Body text-2 under it, the confirm button bottom-right (danger or primary) and Cancel left of it."""
    lines = max(1, -(-len(body) // 62))
    h = height or max(160, 18 + 20 + 10 + lines * 17 + 24 + 28 + 18)
    left, top = (host_w - width) // 2, (host_h - h) // 2
    return (f'<div class="veil{" top" if top_veil else ""}"></div>'
            f'<div class="dlg" style="{style(left=left, top=top, width=width, height=h)}">'
            + text(title, "H1", "text-1", left=20, top=18, width=width - 40)
            + text(body, "Body", "text-2", left=20, top=48, width=width - 40)
            + button(confirm, max(96, len(confirm) * 8 + 28), 28, "danger" if danger else "primary", armed=danger,
                     right=20, bottom=18)
            + button(cancel, max(96, len(cancel) * 8 + 28), 28, "secondary", right=20 + max(96, len(confirm) * 8 + 28) + 10,
                     bottom=18) + "</div>")


TONE_TOKEN = {"accent": "accent", "ok": "ok", "warn": "warn", "err": "err", "neutral": "text-2"}


def toast(message, tone="ok", width=380, **pos):
    return (f'<div class="toast" style="--tone:var(--{TONE_TOKEN.get(tone, "accent")});{style(width=width, **pos)}">'
            f'{wow(message)}</div>')


def tooltip(s, **pos):
    return f'<div class="tip" style="{style(**pos)}">{wow(s)}</div>'


VERSION = re.search(r"## Version:\s*(\S+)", open(os.path.join(ADDON, "AzerothUnspoken.toc"), encoding="utf-8").read()).group(1)
SUBTITLE = f"Azeroth Unspoken  {VERSION}"   # f.subtitle:SetText(NS.name .. "  " .. NS.version)


def window(left, top, w, h, title, body, status=None, tone="neutral", close_hover=False, theme=None, extra=""):
    """W.Window: the frame at (left, top) w x h; the 52-unit title bar rises 16 above it (W.BAR_ABOVE); `body` is laid in
    the frame's units, the contents from W.TOP (46). `title` is the window's name, written in capitals (Orbitron)."""
    th = f' data-theme="{theme}"' if theme else ""
    st = badge(status, tone) if status else ""
    return (f'<div class="win"{th} style="{style(left=left, top=top, width=w, height=h)}"><div class="chrome"></div>'
            f'<div class="tbar"><img class="logo" src="{asset(LOGO)}" alt="">'
            f'<div class="ttl f-DisplaySmall" style="width:{max(w - 140, 40)}px">{esc(title)}</div>'
            f'<div class="sub f-MonoSmall">{esc(SUBTITLE)}</div>'
            f'<div class="status">{st}</div><div class="x{" hover" if close_hover else ""}">{icon("cross", 16)}</div></div>'
            f'<div class="body">{body}</div>{extra}</div>')


def fit_width(label, lo, hi, pad=24, size=13):
    """W.FitButton: the label measured (about 0.55 em a character in Outfit), plus pad, between lo and hi."""
    return max(lo, min(hi, int(len(re.sub(r"\|c\{[^}]*\}|\|c[fF]{2}\w{6}|\|r", "", label)) * size * 0.55) + pad))
