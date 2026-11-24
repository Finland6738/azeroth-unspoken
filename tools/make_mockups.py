"""Generates the mockups of docs/specs/ui-style.md into docs/specs/mockups/ (UI-ECO step UI-8): the design system of
the two themes and every window of the addon in Nebula and in Aurora, each in English and in Italian.

Adapted from the sister addon's tools/make_mockups.py (same owner, GPL-3.0-or-later): an HTML page per scene, built on
tools/mockup_lib.py (the tokens of UI/Theme.lua, the widgets of UI/Widgets.lua, the texts of the locale files) and on the
windows of docs/design/mockups/tools/components.py, rendered by headless Chrome or Edge and saved as WebP with Pillow.
Nothing has run in the WoW client yet, so every image carries a strip that says "mockup, not an in-game screenshot".
Invented characters; original shapes and icons; the only pictures are the addon's own logo and the NEBULA community logo
of assets/ (used with its owner's permission). Never Blizzard art.

The files are docs/specs/mockups/au-<scene>-<theme>-<lang>.webp (unique names: the wiki publishes every image in one
flat folder). docs/specs/mockups/README.md (the index, with the side-by-side comparison with the sister addon) is
written by hand; check() below is what Tests/check_mockups.py calls.

Usage:
    python -I -X utf8 tools/make_mockups.py               all images
    python -I -X utf8 tools/make_mockups.py journal       only the scenes whose name contains the text
    python -I -X utf8 tools/make_mockups.py --lang en     only one language (en or it)
    python -I -X utf8 tools/make_mockups.py --html        write the HTML pages to a temporary folder instead (no browser)

Needs headless Chrome or Edge (CHROME or MOCKUP_BROWSER overrides the search), Pillow and lupa.
"""
import os
import shutil
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
KIT = os.path.join(ROOT, "docs", "design", "mockups", "tools")
OUT = os.path.join(ROOT, "docs", "specs", "mockups")
sys.path.insert(0, HERE)
sys.path.insert(0, KIT)

import mockup_lib as M  # noqa: E402
import components as C  # noqa: E402
from mockkit import scene_svg  # noqa: E402

W, H, STRIP = 1200, 800, 34
LANGS = ("en", "it")
THEMES = ("nebula", "aurora")
PLAYER = "Elyra"   # invented
LINE = {"en": "stands still a moment as the light drains from between the trunks and the wood fills with crickets.",
        "it": "resta un momento immobile mentre la luce si ritira tra i tronchi e il bosco si riempie di grilli."}
INNER = {"en": "Shadows stretch long across the ground, and the air cools by a breath.",
         "it": "Le ombre si allungano sul terreno, e l'aria si raffredda di un soffio."}
GREET = {"en": "Good evening, if there are still good ones left.", "it": "Buona sera, se ancora ne esistono di buone."}
NPC = {"en": "Welcome, traveler. There's room by the fire, if the road has worn you down.",
       "it": "Benvenuta, viandante. C'è posto vicino al fuoco, se la strada ti ha stancato."}


def T(lang, key, *a):
    return M.L(lang, key, *a)


# ---- the scenes -----------------------------------------------------------------------------------------------------
def design_system(lang, theme):
    th = M.THEMES[theme]
    sw = "".join(f'<div class="swatch"><div style="background:{th[k]}"></div><p>{k}<br>{th[k]}</p></div>' for k in M.TOKENS)
    kinds = [("primary", T(lang, "btn_send")), ("secondary", T(lang, "mem_export")), ("ghost", T(lang, "btn_edit")),
             ("neon", "Neon"), ("danger", T(lang, "mem_reset")), ("text", T(lang, "btn_discard"))]
    buttons = "".join(M.button(lbl, M.fit_width(lbl, 64, 200, 28), 28, k, inline=True) for k, lbl in kinds)
    badges = "".join((M.badge(T(lang, "soul_src_explicit"), "accent"), M.badge(T(lang, "soul_src_trp3"), "ok"),
                      M.badge(T(lang, "paused_badge"), "warn"), M.badge(T(lang, "mem_reset"), "err"),
                      M.badge(T(lang, "soul_src_neutral"))))
    voices = "".join(f'<span class="f-BodyMedium" style="color:var(--{tok})">{M.esc(T(lang, C.VOICE_KEY[v]))}</span>'
                     for v, tok in M.VOICE_TOKENS.items())
    body = f"""
<div class="abs" style="left:24px;top:62px;right:24px;display:flex;flex-direction:column;gap:14px">
<div style="display:flex;align-items:flex-end;gap:16px"><div><div class="f-Eyebrow" style="color:var(--accent-text)">DESIGN SYSTEM</div>
<div class="f-H1" style="font-size:22px;margin-top:4px">{M.esc(T(lang, "theme_" + theme))} · 31 tokens</div></div><span style="flex:1"></span>
<div class="f-Display" style="color:var(--accent-text);text-transform:uppercase">Azeroth Unspoken</div></div>
<div style="display:grid;grid-template-columns:repeat(8,1fr);gap:7px">{sw}</div>
<div class="thin" style="position:relative;width:100%;height:6px"><i style="width:100%"></i></div>
<div style="display:flex;gap:10px;align-items:center">{buttons}<span style="position:relative;width:44px;height:26px">{M.switch(True, left=0, top=0)}</span></div>
<div style="display:flex;gap:8px;align-items:center;flex-wrap:wrap">{badges}{M.chip("/s", inline=True, arrow=True, h=24)}
{M.segmented([("n", T(lang, "depth_natural")), ("l", T(lang, "depth_literary")), ("e", T(lang, "depth_elevated"))], "l", inline=True)}
<span style="display:inline-flex;gap:18px;margin-left:10px">{voices}</span></div>
<div style="display:flex;gap:28px;align-items:flex-end">
<div><div class="f-Eyebrow" style="color:var(--accent-text)">DISPLAY · ORBITRON</div><div class="f-Display" style="text-transform:uppercase;margin-top:4px">{M.esc(T(lang, "mem_title"))}</div></div>
<div><div class="f-Eyebrow" style="color:var(--accent-text)">TEXT · OUTFIT</div><div class="f-H1" style="margin-top:4px">{M.esc(T(lang, "soul_section_traits"))}</div></div>
<div><div class="f-Eyebrow" style="color:var(--accent-text)">NUMBERS · JETBRAINS MONO</div><div class="f-Mono" style="color:var(--accent-text);font-size:18px;margin-top:4px">2026-11-24 · 64 · {M.VERSION}</div></div></div>
</div>"""
    return M.window(40, 56, W - 80, H - 120, "Azeroth Unspoken", body, status=T(lang, "theme_" + theme), tone="accent",
                    theme=theme)


def narrator_scene(lang, theme):
    return (C.narrator(380, 420, "narrator", f"{PLAYER} {LINE[lang]}", lang=lang, theme=theme)
            + C.narrator(380, 300, "inner", INNER[lang], lang=lang, theme=theme)
            + C.narrator(380, 110, "character", f"«{GREET[lang]}»", lang=lang, proposal="SAY", left_s=18, theme=theme)
            + C.speak_button(waiting=True, left=840, top=H - 110 - 36, theme=theme))


def journal_scene(lang, theme):
    def acts(*keys):
        return [(T(lang, k), "danger" if k in ("act_delete", "act_forget") else "secondary") for k in keys]
    rows = [(T(lang, "rel_letter_questgiver_2", "Sister Odile"), "2026-11-01 19:02", acts("act_keep", "act_delete")),
            (T(lang, "rel_mem_level_up", "Bram Ashcombe"), "2026-10-31 21:40", acts("act_keep", "act_delete")),
            (T(lang, "rel_mem_pet_bond", "Ember", T(lang, "rel_pet_stage_trusted")), "2026-10-31 20:15", acts("act_keep", "act_delete")),
            (T(lang, "rel_mem_grief_npc", "Old Fenwick"), "2026-10-30 23:02", acts("act_keep", "act_delete")),
            (M.hexed("accent-text", "[P]") + " " + T(lang, "rel_mem_title", "Friend of Darkshire"), "2026-10-30 22:50",
             acts("act_keep", "act_delete"))]
    return C.journal((W - 760) // 2, 100, "memories", rows, lang=lang, theme=theme, toast_=T(lang, "mem_toast_deleted"))


def relations_scene(lang, theme):
    rows = [("Torvan", "player", "friend", "Friend (34)", "2026-10-30", 27, "ok"),
            ("Bram Ashcombe", "npc", "acquaintance", "Acquaintance (18)", "2026-10-30", 6, "text-1"),
            ("Mirelle", "player", "rival", "Neutral (6)", "2026-10-29", 9, "text-2"),
            ("Warden Kessick", "npc", "enemy", "Hated (-82)", "2026-10-18", 5, "err")]
    return C.relations("list", lang=lang, rows=rows, hover=1, theme=theme, left=(W - 720) // 2, top=60)


def soul_scene(lang, theme):
    rows = [("idealism", 64, "64", "explicit"), ("optimism", 78, "78", "explicit"), ("altruism", 70, "70", "explicit"),
            ("stoicism", 50, T(lang, "soul_none"), None), ("curiosity", 85, "85", "explicit"), ("irony", 30, "30", "trp3"),
            ("innerVoice", None, T(lang, "trait_innerVoice_present"), "explicit")]
    html_, _h = C.profile(rows, {"blood"}, lang=lang, theme=theme, left=(W - 700) // 2, top=40,
                          archetype=T(lang, "soul_arch_traveler"), chosen=6)
    return html_


def wizard_scene(lang, theme):
    return C.wizard(4, lang=lang, theme=theme, left=(W - 520) // 2, top=70)


def settings_scene(lang, theme):
    C.settings(0, 0, lang=lang, theme=theme)
    html_, _h = C.settings(80, 40, lang=lang, theme=theme, view=H - 120, scroll=C.SECTION_TOP["info"] - 4)
    return html_


def dialogue_scene(lang, theme):
    answers = {"en": ["What news is going round?", "I am looking for a place to rest.", "Farewell."],
               "it": ["Che notizie girano?", "Cerco un posto dove riposare.", "Addio."]}[lang]
    title = {"en": "Innkeeper · Bram Ashcombe", "it": "Locandiere · Bram Ashcombe"}[lang]
    return C.dialogue((W - 380) // 2, 260, title, line=NPC[lang], choices=answers, lang=lang, hover=0, theme=theme)


# name, caption (en, it), function, scenery of the world behind
SCENES = [
    ("design-system", ("Tokens, widgets and fonts of the theme", "Token, widget e font del tema"), design_system, None),
    ("narrator", ("The narrator box: three voices, a proposal for /say, the speak button",
                  "Il riquadro del narratore: tre voci, una proposta per /say, il pulsante per parlare"), narrator_scene, "dusk"),
    ("journal", ("The journal: tabs, a sortable table, row actions, a toast",
                 "Il diario: schede, una tabella ordinabile, azioni di riga, un avviso"), journal_scene, "neutral"),
    ("relationships", ("Relationships: filters, search and the sortable list", "Relazioni: filtri, ricerca e l'elenco ordinabile"),
     relations_scene, "neutral"),
    ("soul", ("Character soul: sections, sliders, source badges, topics to avoid",
              "Anima del personaggio: sezioni, cursori, badge della fonte, argomenti da evitare"), soul_scene, "neutral"),
    ("wizard", ("First-run guide: the numbered steps and the cards", "Guida al primo avvio: i passi numerati e le schede"),
     wizard_scene, "neutral"),
    ("settings-info", ("Settings > Info: who made it, the NEBULA community and its logo, the links to copy",
                       "Impostazioni > Info: chi l'ha fatto, la community NEBULA e il suo logo, i link da copiare"),
     settings_scene, "neutral"),
    ("dialogue", ("Ambient NPC dialogue: the badge, the NPC voice, numbered answers",
                  "Dialogo ambientale con un PNG: il badge, la voce del PNG, risposte numerate"), dialogue_scene, "warm"),
]


def filename(name, theme, lang):
    return f"au-{name}-{theme}-{lang}.webp"


def build(name, caption, fn, scenery, theme, lang):
    """The HTML page of one scene in one theme and language."""
    body = fn(lang, theme)
    cap = caption[0] if lang == "en" else caption[1]
    strip = ("MOCKUP · NOT A GAME SCREENSHOT", "Nothing verified in the game yet") if lang == "en" else \
            ("MOCKUP · NON È UNO SCREENSHOT", "Nulla ancora verificato in gioco")
    world = scene_svg(scenery, W, H, seed=sum(map(ord, name))) if scenery else ""
    bg = "#05030A" if theme == "nebula" else "#C9D3DB"
    return f"""<!doctype html><html lang="{lang}"><head><meta charset="utf-8"><title>{name}</title><style>{M.css()}
.dp {{ height: {STRIP}px; display: flex; align-items: center; gap: 14px; padding: 0 16px; background: #000; color: #bbb;
  font: 12px/1 'Segoe UI', sans-serif; }} .dp b {{ color: #fff; letter-spacing: .12em; white-space: nowrap; }} .dp .r {{ margin-left: auto; color: #888; }}
.dp span {{ white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }}
</style></head><body style="margin:0;background:{bg}"><div class="stage" data-theme="{theme}" style="width:{W}px;height:{H}px;background:{bg}">
{world}{body}</div><div class="dp"><b>{strip[0]}</b><span>{M.esc(cap)} · {M.THEME_NAMES[theme]}</span><span class="r">{strip[1]}</span></div></body></html>"""


def find_browser():
    pf, pf86 = os.environ.get("ProgramFiles", ""), os.environ.get("ProgramFiles(x86)", "")
    for p in [os.environ.get("CHROME", ""), os.environ.get("MOCKUP_BROWSER", ""),
              os.path.join(pf, "Google", "Chrome", "Application", "chrome.exe"),
              os.path.join(pf86, "Microsoft", "Edge", "Application", "msedge.exe"),
              os.path.join(pf, "Microsoft", "Edge", "Application", "msedge.exe"), "/usr/bin/google-chrome", "/usr/bin/chromium"]:
        if p and os.path.exists(p):
            return p
    for n in ("google-chrome", "chromium", "chrome", "msedge"):
        if shutil.which(n):
            return shutil.which(n)
    sys.exit("No Chrome or Edge found: set the CHROME environment variable to its path.")


def check(problems):
    """Called by Tests/check_mockups.py (no browser): every scene builds in both themes and languages, every image is
    there, and no image is left that the generator does not make."""
    try:
        M.set_base(M.file_url(ROOT))
        names = [s[0] for s in SCENES]
        if len(names) != len(set(names)):
            problems.append("tools/make_mockups.py: two scenes have the same name")
        for name, caption, fn, scenery in SCENES:
            for theme in THEMES:
                for lang in LANGS:
                    if len(build(name, caption, fn, scenery, theme, lang)) < 4000:
                        problems.append(f"tools/make_mockups.py: the scene {name} ({theme}, {lang}) is almost empty")
                    if not os.path.isfile(os.path.join(OUT, filename(name, theme, lang))):
                        problems.append(f"docs/specs/mockups/{filename(name, theme, lang)} is missing: run tools/make_mockups.py")
        known = {filename(s[0], t, lang) for s in SCENES for t in THEMES for lang in LANGS}
        for f in sorted(os.listdir(OUT)) if os.path.isdir(OUT) else []:
            if f.endswith(".webp") and f not in known:
                problems.append(f"docs/specs/mockups/{f} is not made by tools/make_mockups.py (an obsolete image: delete it)")
    except Exception as e:  # noqa: BLE001 - a broken generator is a problem to report, not a crash
        problems.append(f"tools/make_mockups.py: the scenes do not build: {type(e).__name__}: {e}")


def main():
    argv = sys.argv[1:]
    langs = LANGS
    if "--lang" in argv:
        i = argv.index("--lang")
        langs = (argv[i + 1],)
        del argv[i:i + 2]
    only = next((a for a in argv if not a.startswith("--")), "")
    html_only = "--html" in argv
    M.set_base(M.file_url(ROOT))   # the pages live in a temporary folder: fonts and logos by absolute file URL
    os.makedirs(OUT, exist_ok=True)
    chrome = None if html_only else find_browser()
    tmp = tempfile.mkdtemp(prefix="au-specs-mockups-")
    try:
        for name, caption, fn, scenery in SCENES:
            if only and only not in name:
                continue
            for theme in THEMES:
                for lang in langs:
                    base = filename(name, theme, lang)[:-5]
                    src = os.path.join(tmp, base + ".html")
                    with open(src, "w", encoding="utf-8", newline="\n") as f:
                        f.write(build(name, caption, fn, scenery, theme, lang))
                    if chrome is None:
                        print(src)
                        continue
                    png = os.path.join(tmp, base + ".png")
                    profile = tempfile.mkdtemp(prefix="au-chrome-")
                    subprocess.run([chrome, "--headless=new", f"--user-data-dir={profile}", "--disable-gpu",
                                    "--hide-scrollbars", "--force-device-scale-factor=1", "--allow-file-access-from-files",
                                    f"--window-size={W},{H + STRIP}", "--virtual-time-budget=3000", f"--screenshot={png}",
                                    "file:///" + src.replace("\\", "/")],
                                   stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, timeout=120)
                    shutil.rmtree(profile, ignore_errors=True)
                    from PIL import Image
                    out = os.path.join(OUT, base + ".webp")
                    Image.open(png).convert("RGB").save(out, "WEBP", quality=82, method=6)
                    print(f"{base}.webp  {os.path.getsize(out) // 1024} KB", flush=True)
    finally:
        if not html_only:
            shutil.rmtree(tmp, ignore_errors=True)


if __name__ == "__main__":
    main()
