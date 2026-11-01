"""The addon's windows as HTML, built from the sizes, anchors, colours and texts of AzerothUnspoken/UI/.

Each function returns the HTML of one window placed in a stage. Coordinates: WoW TOPLEFT (x, y) -> left x, top -y.
"""
import os
import re

from mockkit import VOICE, VOICE_COLOR, btn, edit, fs, frame, slider, style, wow, tooltip

CHANNEL = {"SAY": "/s", "EMOTE": "/e", "YELL": "/y", "PARTY": "/p", "RAID": "/raid", "GUILD": "/g", "INSTANCE_CHAT": "/i"}

NARRATOR_TEXT = {
    "en": {"proposal_for": "proposal for %s", "sent_to": "sent to %s", "send": "Send", "edit": "Edit",
           "another": "Another", "discard": "Discard", "copy": "To chat", "left": "%d s", "held": "+%d in history"},
    "it": {"proposal_for": "proposta per %s", "sent_to": "inviato in %s", "send": "Invia", "edit": "Modifica",
           "another": "Un'altra", "discard": "Scarta", "copy": "Nella chat", "left": "%d s", "held": "+%d in cronologia"},
}


# ---------------------------------------------------------------------------------------------------------------
# Narrator (UI/NarratorFrame.lua): 440 wide, BOTTOM of UIParent + 240, height = 24 + text + 10 (+30 editor, +28 bar).
# The opacity setting is the background's only, at least 0.55 (#173); the frame alpha is only the fade-out. A waiting
# proposal shows its countdown (`left`, None = until dismissed) and the lines held back while it waits (#176, #177).
# ---------------------------------------------------------------------------------------------------------------
def narrator(left, bottom, speaker, text, lang="en", proposal=None, sent=None, editor=None, editor_sel=False,
             paused=False, alpha=0.8, font=14, fade=1.0, history=None, hover_btn=None, history_alpha=0.8,
             left_s=25, held=0):
    t = NARRATOR_TEXT[lang]
    label = VOICE[lang][speaker]
    if proposal:
        label += " · " + t["proposal_for"] % CHANNEL.get(proposal, proposal)
        if left_s is not None and editor is None:
            label += " · " + t["left"] % left_s
    elif sent:
        label += " · " + t["sent_to"] % CHANNEL.get(sent, sent)
    if held:
        label += " · " + t["held"] % held
    pad = 10 + (30 if editor is not None else 0) + (28 if proposal else 0)
    smalls = (btn("x", 22, 18, right=2, top=1, font=11) + btn("H", 22, 18, right=26, top=1, font=11)
              + btn(">" if paused else "II", 22, 18, right=50, top=1, font=11))
    header = (f'<div class="abs" style="left:0;right:0;top:0;height:20px">'
              + fs(f"|cff{VOICE_COLOR[speaker]}{label}|r", "gfns", mode="trunc", left=8, right=76, top=4,
                   extra=f";font-size:{max(12, font - 2)}px")
              + smalls + "</div>")
    body = (f'<div style="position:relative;padding:24px 8px {pad}px 8px;font-size:{font}px;line-height:1.25;'
            f'color:#fff;text-shadow:1px 1px 0 #000;white-space:pre-wrap">{wow(text)}</div>')
    extra = ""
    if editor is not None:
        extra += edit(editor, 424, 22, focus=True, selected=editor_sel, caret=not editor_sel, left=12, bottom=36)
    if proposal:
        x, bar = 0, []
        for key, w in (("send", 60), ("edit", 72), ("another", 72), ("chan", 50), ("discard", 64), ("copy", 84)):
            label_b = CHANNEL.get(proposal, proposal) if key == "chan" else t[key]
            bar.append(btn(label_b, w, 22, state="hover" if hover_btn == key else "", left=x, top=1))
            x += w + 4
        extra += f'<div class="abs" style="left:8px;right:8px;bottom:6px;height:24px">{"".join(bar)}</div>'
    nar = (f'<div class="f" style="position:relative;width:440px;opacity:{fade:.3f}">'
           f'<div class="bg" style="background:rgba(0,0,0,{max(0.55, alpha):.3f})"></div>{header}{body}{extra}</div>')
    hist = ""
    if history is not None:
        lines = "".join(f'<div style="white-space:pre-wrap">{wow(l)}</div>' for l in history)
        hist = (f'<div class="f" style="position:relative;width:440px;height:190px;margin-bottom:4px">'
                f'<div class="bg" style="background:rgba(0,0,0,{max(0.8, history_alpha):.3f})"></div>'
                f'<div class="abs chatfont" style="left:8px;right:8px;top:8px;bottom:8px;overflow:hidden;display:flex;'
                f'flex-direction:column;justify-content:flex-end;line-height:1.25;text-shadow:1px 1px 0 #000">{lines}</div></div>')
    return (f'<div class="abs" style="left:{left}px;bottom:{bottom}px;width:440px;display:flex;flex-direction:column">'
            f'{hist}{nar}</div>')


def history_line(time, speaker, text, lang="en", sent=None):
    tag = f" |cff808080({NARRATOR_TEXT[lang]['sent_to'] % CHANNEL.get(sent, sent)})|r" if sent else ""
    return f"|cff808080{time}|r |cff{VOICE_COLOR[speaker]}{VOICE[lang][speaker]}|r {text}{tag}"


# ---------------------------------------------------------------------------------------------------------------
# Interface texts: read from the addon's own locale files, so a mockup can never show a text the addon does not have
# ---------------------------------------------------------------------------------------------------------------
_REPO = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))))
_PAIR = re.compile(r'\b([A-Za-z][A-Za-z0-9_]*) = "((?:[^"\\]|\\.)*)"')
_STR = {}


def ui(lang, key, *args):
    """The interface text `key` in `lang` (en | it) from Data/<lang>/Interface.lua and RelationsUI.lua."""
    if lang not in _STR:
        table = {}
        folder = {"en": "enUS", "it": "itIT"}[lang]
        for name in ("Interface.lua", "RelationsUI.lua"):
            text = open(os.path.join(_REPO, "AzerothUnspoken", "Data", folder, name), encoding="utf-8").read()
            for k, v in _PAIR.findall(text):
                table[k] = v.replace("\\n", "\n").replace('\\"', '"').replace("\\\\", "\\")
        _STR[lang] = table
    s = _STR[lang][key]
    return s % args if args else s


# Config.defaults, the values the guide states (Wizard:DefaultsLine reads them at run time)
DEFAULTS = {"preset": "complete", "intensity": 50, "proseDepth": "literary", "chatMode": "PRIVATE"}
LANG_NAMES = {"en": "English", "it": "Italiano"}
MODES = ["PRIVATE", "PREVIEW", "CONFIRM_TO_SEND", "AUTO_ONLY_IF_ALLOWED"]
MODULES = [("personal", True), ("world", True), ("npc", True), ("memory", True), ("relations", True),
           ("storyArcs", True), ("social", True), ("audio", False)]   # the "complete" preset (Config.presets)
LIVE = {"personal", "world", "npc", "memory", "relations", "storyArcs"}


# ---------------------------------------------------------------------------------------------------------------
# The shell and the flat buttons of every window (UI/Widgets.lua W.Window, W.FlatWindow, W.FlatButton, #187).
# The colours (W.PALETTE) are in mockups.css: .aw (the window) and .btn.flat (the buttons).
# ---------------------------------------------------------------------------------------------------------------
BAND, TOP = 36, 46          # W.BAND: height of the title band; W.TOP: where the content of a window starts


def flat(text, w, h=24, kind="ghost", selected=False, armed=False, disabled=False, hover=False, cls="", **pos):
    """W.FlatButton. kind: ghost (gold outline, the default) | primary (gold fill) | danger (red outline: an action that
    loses data; `armed` = :SetArmed(true), filled while it waits for its second click) | text (no box, left aligned).
    `selected` = :SetSelected(true), the chosen tab or option: cardOn fill, a full gold edge, a white label and a 2-unit
    gold bar under it. `disabled` = :SetEnabled(false). The label (GameFontNormal) is never clipped: a label wider than
    its button is outlined in red by the page, as with the client's buttons."""
    klass = ["btn", "flat", kind]
    for on, name in ((selected, "sel"), (armed and kind == "danger", "armed"), (disabled, "disabled"), (hover, "hover")):
        if on:
            klass.append(name)
    if cls:
        klass.append(cls)
    bar = '<i class="bar"></i>' if selected else ""
    return (f'<div class="{" ".join(klass)}" style="{style(width=w, height=h, **pos)}">'
            f'<span class="lbl">{wow(text)}</span>{bar}</div>')


def window(left, top, w, h, title, body):
    """W.Window: a warm dark surface (0.06, 0.05, 0.03, 0.97), a 1-unit bronze edge, a title band of 36 with a 1-unit
    rule under it, the title (GameFontNormalLarge) at (16, -11), the close box (a ghost "X", 24 x 22) at TOPRIGHT
    (-8, -7). The content starts at TOP (46). `body` is in the window's units."""
    return (f'<div class="f aw" style="{style(left=left, top=top, width=w, height=h)}">'
            '<div class="aw-band"></div><div class="aw-rule"></div><div class="aw-edge"></div>'
            + fs(title, "gfnl", mode="trunc", left=16, top=11, width=w - 72)
            + flat("X", 24, 22, right=8, top=7) + body + "</div>")


def stack(items, **pos):
    """FontStrings each anchored under the one above (TOPLEFT to BOTTOMLEFT, 0, -gap): items are (text, class, gap);
    an empty text is a hidden string and takes no room."""
    out = "".join(f'<div class="fs {cls}" style="position:relative;margin-top:{gap}px">{wow(text)}</div>'
                  for text, cls, gap in items if text)
    return f'<div class="abs" style="{style(**pos)}">{out}</div>'


def wcard(left, top, w, h, title, sub, on=False, tag=None, font="gfhs"):
    """A card (Widgets.lua W.Card): a gold border and a filled marker when chosen; the text says the rest. `font` is the
    description's font: gfh (W.TEXT_FONT, 12) for the text of a consent (#182), gfhs (10) otherwise."""
    t = title + (f"  |cffffd100({tag})|r" if tag else "")
    return (f'<div class="wcard{" on" if on else ""}" style="{style(left=left, top=top, width=w, height=h)}">'
            f'<div class="wm"></div>{fs(t, "gfn", left=12, top=8, width=w - 42, mode="trunc")}'
            f'{fs(sub, font, left=12, top=27, width=w - 24)}</div>')


def popup(left, top, width, height, text, accept, cancel, accept_disabled=True):
    """A client confirmation dialog (StaticPopup) drawn as a plain stand-in: the whole warning, explicit buttons."""
    return (f'<div class="abs" style="{style(left=left, top=top, width=width, height=height)};border:2px solid #7b7b8f;'
            f'border-radius:6px;background:rgba(8,6,14,0.97)">'
            + fs(text, "gfh", left=16, top=14, width=width - 32)
            + btn(accept, 150, 24, left=width // 2 - 156, bottom=14, state="disabled" if accept_disabled else "")
            + btn(cancel, 150, 24, left=width // 2 + 6, bottom=14) + '</div>')


# ---------------------------------------------------------------------------------------------------------------
# Wizard (UI/Wizard.lua): 520 x 480, CENTER (0, 40), the W.Window shell; the step count at TOPRIGHT (-44, -15), the
# progress dots at -46, the pages from -64, a rule 52 above the bottom, Skip / Back / Next under it
# ---------------------------------------------------------------------------------------------------------------
WIZ_W, WIZ_H = 520, 480


def wizard(step, lang="en", trp3=False, left=0, top=0, mode=0, intensity=50, auto_state="", trp3_others="",
           name_on=False):
    """The first-run guide (UI/Wizard.lua). Steps 1..8; 6 (Total RP 3) only when it is installed, 8 is the keys page.
    `mode` is the chosen chat mode (0..3), `auto_state` "" | "reading" | "ready" is the question of automatic sending,
    `trp3_others` "" | "off" | "needs" the state of reading others' profiles."""
    L = lambda key, *a: ui(lang, key, *a)  # noqa: E731
    visible = [s for s in range(1, 9) if trp3 or s != 6]
    number, total = visible.index(step) + 1, len(visible)
    c = []   # content: its TOPLEFT is (0, -64) of the window
    Y = 64
    heads = {1: "wiz_step_language", 2: "wiz_step_preset", 3: "wiz_step_intensity", 4: "wiz_step_depth",
             5: "wiz_step_modules", 6: "wiz_step_trp3", 7: "wiz_step_chat", 8: "wiz_step_keys"}
    c.append(fs(L(heads[step]), "gfnl", left=20, top=Y + 2, width=480))
    if step == 1:
        c.append(fs(L("wiz_welcome_text"), "gfh", left=20, top=Y + 30, width=480))
        c.append(f'<div class="abs" style="left:20px;top:{Y + 72}px;width:480px;height:46px;background:rgba(8,5,15,.95)">'
                 f'<div class="abs" style="left:0;top:0;width:3px;height:46px;background:#b48cff"></div>'
                 + fs("|cffb9a1ff" + L("voice_narrator") + "|r", "gfns", left=12, top=6)
                 + fs(L("wiz_sample", "Elyra"), "gfh", left=12, top=22, width=456) + "</div>")
        c.append(fs(L("wiz_language_label"), "gfns", left=20, top=Y + 134))
        for i, code in enumerate(("en", "it")):
            c.append(wcard(20 + i * 244, Y + 154, 236, 56, LANG_NAMES[code], L("wiz_language_card"), on=code == lang))
        c.append(fs(L("wiz_language_help"), "gfhs", left=20, top=Y + 222, width=480))
    elif step == 2:
        c.append(fs(L("wiz_preset_help"), "gfhs", left=20, top=Y + 30, width=480))
        for i, name in enumerate(("complete", "personal", "world", "social")):
            c.append(wcard(20, Y + 54 + i * 58, 480, 52, L("preset_" + name), L("preset_" + name + "_help"),
                           on=name == DEFAULTS["preset"], tag=L("wiz_default_tag") if name == DEFAULTS["preset"] else None))
    elif step == 3:
        c.append(fs(L("wiz_intensity_help"), "gfh", left=20, top=Y + 30, width=480))
        c.append(flat("-", 30, 26, left=20, top=Y + 84))
        c.append(fs(str(intensity), "gfnl", left=62, top=Y + 88, width=60, extra=";text-align:center"))
        c.append(flat("+", 30, 26, left=126, top=Y + 84))
        band = {50: 3}.get(intensity, 3)
        c.append(fs(L("intensity_band_%d" % band) + "\n\n" + L("wiz_suggested"), "gfh", left=20, top=Y + 130, width=480))
    elif step == 4:
        c.append(fs(L("wiz_depth_help"), "gfhs", left=20, top=Y + 30, width=480))
        for i, d in enumerate(("natural", "literary", "elevated")):
            c.append(wcard(20, Y + 62 + i * 76, 480, 70, L("depth_" + d), L("depth_%s_example" % d),
                           on=d == DEFAULTS["proseDepth"], tag=L("wiz_default_tag") if d == DEFAULTS["proseDepth"] else None))
    elif step == 5:
        c.append(fs(L("wiz_modules_help"), "gfhs", left=20, top=Y + 30, width=480))
        for i, (m, on) in enumerate(MODULES):
            nm = L("module_" + m) + ("" if m in LIVE else " *")
            c.append(wcard(20 + (i % 2) * 244, Y + 66 + (i // 2) * 50, 236, 44, nm, L("on" if on else "off").capitalize(), on=on))
        # the text of a consent: W.TEXT_FONT, 12 units (#182)
        c.append(fs(L("wiz_social_consent"), "gfh", left=20, top=Y + 270, width=480))
    elif step == 6:
        c.append(fs(L("wiz_trp3_help"), "gfh", left=20, top=Y + 30, width=480))
        c.append(wcard(20, Y + 70, 480, 62, L("opt_rpname"), L("on" if name_on else "off").capitalize(), on=name_on))
        if trp3_others == "needs":
            state, on = L("consent_on_needs", L("opt_rpname")), True
        else:
            state, on = L("off"), False
        c.append(wcard(20, Y + 142, 480, 112, L("opt_trp3_others"), state + ". " + L("wiz_trp3_others_help"), on=on,
                       font="gfh"))
    elif step == 7:
        c.append(fs(L("wiz_chat_help"), "gfh", left=20, top=Y + 26, width=480))
        y = 74   # under an introduction of up to three lines; automatic sending has the tallest card (#182)
        for i, m in enumerate(MODES):
            sub = L("wiz_mode_" + m)
            if m == "AUTO_ONLY_IF_ALLOWED" and auto_state:
                sub += " " + L("consent_off_" + auto_state)
            h = 74 if m == "AUTO_ONLY_IF_ALLOWED" else 50
            c.append(wcard(20, Y + y, 480, h, L("chatmode_%s_short" % m), sub, on=i == mode, font="gfh",
                           tag=L("wiz_default_tag") if m == DEFAULTS["chatMode"] else None))
            y += h + 4
        c.append(flat(L("wiz_test"), 200, 26, left=20, top=Y + y + 6))
        c.append(fs(L("wiz_test_hint"), "gfhs", left=232, top=Y + y + 11, width=240))
    elif step == 8:
        lines = [L("wiz_keys_intro")] + [L("wiz_key_" + k) for k in ("speak", "pause", "reroll", "npc")]
        c.append(fs("\n".join(lines), "gfh", left=20, top=Y + 30, width=480))
        c.append(fs(L("wiz_where", L("on")), "gfh", left=20, top=Y + 140, width=480))
        c.append(fs(L("wiz_defaults", 50, 45, 25, L("chatmode_PRIVATE_short"), L("on"), L("off"), L("off"), L("off")),
                    "gfhs", left=20, top=Y + 214, width=480))
        c.append(flat(L("wiz_open_bindings"), 200, 26, left=20, top=Y + 276))
        c.append(flat(L("wiz_open_settings"), 200, 26, left=232, top=Y + 276))
    dots = "".join(
        f'<div class="wdot{" now" if i + 1 == number else (" past" if i + 1 < number else "")}" '
        f'style="left:{WIZ_W // 2 + (i + 1 - 4.5) * 16 - 4}px"></div>' for i in range(total))
    chrome = (fs(L("wiz_step", number, total), "gfns", right=44, top=15) + dots
              + '<div class="abs" style="left:1px;right:1px;bottom:52px;height:1px;background:#54451a"></div>'
              + flat(L("wiz_skip"), 200, kind="text", left=16, bottom=14)
              + flat(L("wiz_finish") if number == total else L("wiz_next"), 110, kind="primary", right=16, bottom=14)
              + (flat(L("wiz_back"), 90, right=134, bottom=14) if number > 1 else ""))
    return window(left, top, WIZ_W, WIZ_H, L("wiz_title"), "".join(c) + chrome)


# ---------------------------------------------------------------------------------------------------------------
# Settings panel (UI/SettingsFrame.lua): a canvas in the client's options window. The title at (16, -16); the sections
# scroll in a frame from (0, -44) to BOTTOMRIGHT (-30, 8), content 600 wide. Five sections (General, Chat, Narrator,
# Modules, Privacy): a header (GameFontNormalLarge) and a rule, then rows of 28: a plain label at x 16 and its control
# at x 250 (a 220-wide value button, or "-" / value / "+"), the buttons that open something two on a line (280 wide),
# the modules in two columns of a label and its switch, the help text at the end.
# ---------------------------------------------------------------------------------------------------------------
SET_W, SET_CONTENT_W = 660, 600
SET_LABEL_X, SET_CONTROL_X, SET_CONTROL_W, SET_ROW = 16, 250, 220, 28
SET_ACTION_W, SET_ACTION_GAP = 280, 8
SET_HELP = ("In the open world WoW only allows /say after a key press or a click: the addon never writes to chat on its "
            "own, except in the 'automatic' mode you chose yourself. The 'speak' key and the immediate pause are bound "
            "under Options > Keybindings > AddOns.\n\nCommands: /au help")   # the rest of panel_help (a joined string)
SET_MODULES = [("personal", True), ("world", True), ("npc", True), ("memory", True), ("emotion", True),
               ("relations", True), ("storyArcs", True), ("social", True), ("publicChat", True), ("audio", False)]
SET_LIVE = {"personal", "world", "npc", "memory", "storyArcs", "relations", "emotion", "publicChat"}   # Config.MODULE_LIVE


def settings(left, top, reload_needed=False, auto_state="off", others_state="off", rpname=True, view=None, scroll=0):
    """rpname: "Name from Total RP 3" on. view None: the whole scrolling content, unrolled under the title. view = a height: the panel that tall, its
    content scrolled down by `scroll` units, with the scroll bar of the template."""
    L = lambda key, *a: ui("en", key, *a)  # noqa: E731
    out = []
    y = 4

    def header(key):
        nonlocal y
        out.append(fs(L(key), "gfnl", left=SET_LABEL_X, top=y + 10))
        out.append(f'<div class="abs" style="left:{SET_LABEL_X}px;top:{y + 32}px;width:{SET_CONTENT_W - 2 * SET_LABEL_X}px;'
                   f'height:1px;background:#54451a"></div>')
        y += 42

    def label(text, x=SET_LABEL_X, w=SET_CONTROL_X - SET_LABEL_X - 8):
        out.append(fs(text, "gfh", mode="trunc", left=x, top=y + 6, width=w))

    def toggle(key, value, x=SET_LABEL_X, lw=SET_CONTROL_X - SET_LABEL_X - 8, cx=SET_CONTROL_X, cw=SET_CONTROL_W,
               text=None, **k):
        nonlocal y
        label(text or L(key), x, lw)
        out.append(flat(value, cw, 24, left=cx, top=y, **k))

    def nxt():
        nonlocal y
        y += SET_ROW

    def stepper(key, value):
        label(L(key))
        out.append(flat("-", 24, 24, left=SET_CONTROL_X, top=y))
        out.append(fs(value, "gfh", left=SET_CONTROL_X + 28, top=y + 6, width=SET_CONTROL_W - 56,
                      extra=";text-align:center"))
        out.append(flat("+", 24, 24, left=SET_CONTROL_X + SET_CONTROL_W - 24, top=y))
        nxt()

    def actions(keys):
        nonlocal y
        for i, key in enumerate(keys):
            col = i % 2
            if i > 0 and col == 0:
                y += SET_ROW
            out.append(flat(L(key), SET_ACTION_W, 24, left=SET_LABEL_X + col * (SET_ACTION_W + SET_ACTION_GAP), top=y))
        y += SET_ROW

    header("opt_section_general")
    toggle("opt_enabled", L("on")); nxt()
    toggle("opt_language", "English", cw=130)
    if reload_needed:   # the reload button, beside the language, only while the phrases are still in the old one
        out.append(flat(L("packs_reload_btn"), SET_CONTROL_W - 138, 24, kind="primary", left=SET_CONTROL_X + 138, top=y))
    nxt()
    stepper("opt_intensity", "50")
    toggle("opt_depth", L("depth_literary")); nxt()
    toggle("opt_cooldown", "45 s"); nxt()
    stepper("opt_scale", "100%")
    actions(["opt_journal", "opt_relations", "opt_soul", "opt_wizard"])

    header("opt_section_chat")
    toggle("opt_chatmode", L("chatmode_PRIVATE_short")); nxt()
    toggle("opt_channel", L("channel_auto")); nxt()
    toggle("opt_waits", "25 s"); nxt()
    toggle("opt_button", L("on")); nxt()

    header("opt_section_narrator")
    toggle("opt_narrator", L("on")); nxt()
    stepper("opt_duration", "8 s")
    toggle("opt_reading", L("reading_cps", 14)); nxt()
    stepper("opt_alpha", "80%")
    stepper("opt_fontsize", "14")
    toggle("opt_motion", L("off")); nxt()
    toggle("opt_locked", L("off")); nxt()
    stepper("opt_dialogue_size", "13")
    stepper("opt_dialogue_alpha", "92%")
    actions(["opt_pause", "opt_test", "opt_history", "opt_resetpos"])

    header("opt_section_modules")
    out.append(fs(L("opt_modules_note"), "gfhs", left=SET_LABEL_X, top=y, width=SET_CONTENT_W - 2 * SET_LABEL_X))
    y += 18
    for i, (m, on) in enumerate(SET_MODULES):
        col = i % 2
        x = SET_LABEL_X + col * 292
        name = L("module_" + m) + ("" if m in SET_LIVE else " *")
        toggle("module_" + m, L("on" if on else "off"), x=x, lw=170, cx=x + 176, cw=90, text=name, selected=on)
        if col == 1 or i == len(SET_MODULES) - 1:
            nxt()

    header("opt_section_privacy")
    toggle("opt_auto", auto_state); nxt()
    toggle("opt_trp3_others", others_state); nxt()
    toggle("opt_rpname", L("on" if rpname else "off")); nxt()

    help_ = ""
    if reload_needed:
        help_ = L("packs_reload_needed", "Italiano", "English") + "\n\n"
    help_ += L("chatmode_PRIVATE_help") + "\n\n"
    if others_state != "off" and not rpname:   # reading others' profiles is on, but waits for the name
        help_ += L("consent_trp3_idle") + "\n\n"
    help_ += "Lines available in this language: 4182, from 9 packs.\n\n" + SET_HELP
    # the help text, in the font of a consent (12 units, #182), under the last row: in the flow, so that it sets the
    # height of the content as content:SetHeight(helpTop + help height + 16) does
    out.append(f'<div class="fs gfh" style="position:relative;left:{SET_LABEL_X}px;margin-top:{y + 6}px;'
               f'width:{SET_CONTENT_W - 2 * SET_LABEL_X}px;margin-bottom:16px">{wow(help_)}</div>')
    content = (f'<div style="position:relative;width:{SET_CONTENT_W}px;display:flow-root'
               f'{";top:-%dpx" % scroll if scroll else ""}">{"".join(out)}</div>')
    title = fs("Azeroth Unspoken 0.1.0", "gfnl", left=16, top=16)
    backdrop = '<div class="bg setbg"></div>'
    if view is None:
        return (f'<div class="f" style="{style(left=left, top=top, width=SET_W)}">{backdrop}{title}'
                f'<div style="position:relative;margin-top:44px;padding-bottom:8px">{content}</div></div>')
    vh = view - 44 - 8
    bar = (f'<div class="abs setscroll" style="left:{SET_W - 26}px;top:60px;height:{vh - 32}px">'
           f'<div class="thumb" style="top:{min(vh - 32 - 40, scroll * (vh - 72) / 760):.0f}px"></div></div>')
    return (f'<div class="f" style="{style(left=left, top=top, width=SET_W, height=view)}">{backdrop}{title}'
            f'<div class="abs" style="left:0;top:44px;width:{SET_W - 30}px;height:{vh}px;overflow:hidden">{content}</div>'
            f'{bar}</div>')


# ---------------------------------------------------------------------------------------------------------------
# Journal (UI/JournalFrame.lua): 600 x 520, the W.Window shell. The introduction (12 units) at -46; the tabs under it
# (46 + its height + 10), as wide as their text; the note on its own line under them, then up to 11 rows of 28 above
# the pages (444 from the top)
# ---------------------------------------------------------------------------------------------------------------
JOURNAL_TABS = [("memories", "Memories"), ("places", "Places"), ("flags", "Flags"), ("session", "Session"),
                ("stories", "Stories"), ("relations", "Relationships"), ("people", "People met")]
JOURNAL_MEMORY_TABS = {"memories", "places", "flags", "session"}
JOURNAL_CONFIRM_TABS = {"memories", "places", "flags"}   # their "x" cannot be undone: a second click, the danger style
JOURNAL_LOCK = {"off": "Memory is off: turn it on in the settings (the Memory module). You can read the journal, "
                       "not change it.",
                "readonly": "Read-only: saved by a newer version of the addon. You can read the journal, not change it."}

# The layout of JournalFrame:Refresh(), done in the page because it depends on the measured height of the introduction
# and the width of the labels (GetStringHeight / GetStringWidth in the client): the tabs from 46 + intro + 10, each
# max(48, text + 24) wide, a new line when 568 units are full; the note at the tabs' bottom + 2; the rows from
# max(112, under the note + 4), as many as fit above 444.
JOURNAL_LAYOUT_JS = """<script>
(function (f) {
  var tabTop = 46 + Math.ceil(f.querySelector('.jintro').offsetHeight) + 10, x = 0, line = 0;
  f.querySelectorAll('.jtab').forEach(function (b) {
    var w = Math.max(48, Math.min(568, Math.ceil(b.querySelector('.lbl').offsetWidth) + 24));
    if (x > 0 && x + w > 568) { x = 0; line++; }
    b.style.left = (16 + x) + 'px'; b.style.top = (tabTop + line * 28) + 'px'; b.style.width = w + 'px';
    x += w + 4;
  });
  var top = tabTop + (line + 1) * 28, note = f.querySelector('.jnote');
  if (note) { note.style.top = (top + 2) + 'px'; top += 2 + Math.ceil(note.offsetHeight) + 4; }
  top = Math.max(112, top);
  var size = Math.max(1, Math.min(11, Math.floor((444 - top) / 28)));
  f.querySelectorAll('.jrow').forEach(function (r, i) {
    r.style.top = (top + i * 28) + 'px';
    if (i >= size) r.style.display = 'none';
  });
})(document.currentScript.parentNode);
</script>"""


def journal(left, top, tab, rows, note="", page=(1, 1), stats="memory: 14 memories (2 permanent), 9 places, 3 flags.",
            armed=False, lock=None, confirm=None, tip=None):
    """lock: None | "off" | "readonly" (memory tabs only); confirm: (row index, question) of an armed x;
    tip: (row index, full text) of a cut row under the mouse."""
    L = lambda key, *a: ui("en", key, *a)  # noqa: E731
    out = [fs(L("mem_intro"), "gfh jintro", left=16, top=TOP, width=568)]
    for tid, label in JOURNAL_TABS:
        out.append(flat(label, 48, 24, selected=tid == tab, cls="jtab", left=16, top=TOP))
    tab_lock = lock if tab in JOURNAL_MEMORY_TABS else None
    note_text = (f"|cffff9040{JOURNAL_LOCK[tab_lock]}|r" + (f"\n{note}" if note else "")) if tab_lock else note
    if note_text:
        out.append(fs(note_text, "gfhs jnote", left=16, top=112, width=568))
    for i, r in enumerate(rows[:11]):
        text, actions = (r if isinstance(r, tuple) else (r, []))
        row = []
        armed_row = confirm is not None and confirm[0] == i
        if armed_row:
            text = f"|cffff9040{confirm[1]}|r {text}"
        row.append(fs(text, "gfh", mode="trunc", left=16, top=6, width=500))
        for k, a in enumerate(actions[:2]):
            danger = a == "x" and tab in JOURNAL_CONFIRM_TABS
            on = armed_row and danger
            row.append(flat(L("mem_confirm_btn") if on else a, 24, 24, kind="danger" if danger else "ghost", armed=on,
                            disabled=bool(tab_lock), left=528 + k * 28, top=0))
        if tip is not None and tip[0] == i:
            row.append(tooltip([(tip[1], "ffffff")], left=40, bottom=24, max_width=420))
        out.append(f'<div class="abs jrow" style="left:0;width:600px;height:28px;top:112px">{"".join(row)}</div>')
    if not rows:
        out.append(f'<div class="abs jrow" style="left:0;width:600px;height:28px;top:112px">'
                   f'{fs("|cff9d9d9d" + L("mem_empty") + "|r", "gfh", left=16, top=6, width=500)}</div>')
    out.append(flat(L("mem_prev"), 28, 24, disabled=page[0] <= 1, left=16, bottom=52))
    out.append(fs(L("mem_page", *page), "gfn", left=52, bottom=57, width=140))
    out.append(flat(L("mem_next"), 28, 24, disabled=page[0] >= page[1], left=196, bottom=52))
    out.append(fs(stats, "gfhs", right=16, bottom=58, width=340, extra=";text-align:right"))
    out.append(flat(L("mem_export"), 110, 24, left=16, bottom=16))
    # "Forget everything" loses data: the danger style, filled while it waits for its second click (#187, #190)
    out.append(flat(L("mem_reset_confirm_btn" if armed else "mem_reset"), 170, 24, kind="danger", armed=armed,
                    disabled=bool(lock), left=136, bottom=16))
    out.append(flat(L("mem_close"), 110, 24, right=16, bottom=16))
    out.append(JOURNAL_LAYOUT_JS)
    return window(left, top, 600, 520, L("mem_title"), "".join(out))


def export_window(left, top, title, text):
    """The export window (JournalFrame.lua BuildExport): 600 x 440, the W.Window shell; the help (12 units) at -46,
    the scrolling box from (16, -72) to BOTTOMRIGHT (-36, 52), its scroll bar right of it."""
    out = [fs(ui("en", "mem_export_help"), "gfh", left=16, top=TOP, width=568),
           f'<div class="abs chatfont" style="left:16px;top:72px;right:36px;bottom:52px;overflow:hidden;white-space:pre-wrap;'
           f'line-height:1.25"><span class="sel" style="background:#3a5fbf">{wow(text)}</span></div>',
           '<div class="abs" style="right:12px;top:72px;bottom:52px;width:16px;background:rgba(255,255,255,0.08);'
           'border:1px solid #444"><div style="height:40px;background:#666;margin:18px 2px"></div></div>',
           flat(ui("en", "mem_close"), 110, 24, right=16, bottom=16)]
    return window(left, top, 600, 440, title, "".join(out))


# ---------------------------------------------------------------------------------------------------------------
# Relationships (UI/RelationsFrame.lua): 720 x 660 in every view, the W.Window shell; the introduction (12 units) at
# -46, the tabs at -84 (U1: #171, #172, #179, #180; #187)
# ---------------------------------------------------------------------------------------------------------------
REL_OPTIONS = [("Automatic NPCs", "on"), ("Suggest people", "on"), ("Register by itself", "off"),
               ("Attraction axis", "off"), ("Recognise on target", "off"), ("Recognise nearby", "off"),
               ("Share with the account", "off")]
REL_W, REL_H, REL_INNER = 720, 660, 688


def fit(text, lo, hi):
    """The width the addon gives a button: its label (about 6.3 units a character) plus 24, between lo and hi."""
    plain = re.sub(r"\|c[0-9a-fA-F]{8}|\|r", "", text)
    return max(lo, min(hi, round(len(plain) * 6.3) + 24))


def relations(left, top, view, rows=None, cands=None, detail=None, share_armed=False, options=None,
              hover_option=None, candidates=3, hover_row=None, armed=None, reset_armed=False):
    """armed: the consent whose question is open ("share" | "proximity"); reset_armed: Forget everything armed."""
    R = lambda key, *a: ui("en", key, *a)  # noqa: E731
    out = [fs(R("rel_intro"), "gfh", left=16, top=TOP, width=REL_INNER)]
    x = 16
    # the chosen tab: a full gold edge and a bar under its label (#187), not a colour only
    for text, on in ((R("rel_tab"), view in ("list", "detail")), (f"{R('rel_tab_people')} ({candidates})", view == "people"),
                     (R("rel_tab_options"), view == "options")):
        w = fit(text, 110, 240)
        out.append(flat(text, w, 24, selected=on, left=x, top=84))
        x += w + 4
    top_row, row_h, pager = 168, 26, 500
    if view == "list":
        out += [flat("All", fit("All", 100, 130), 22, left=16, top=116),
                flat("Label: any", fit("Label: any", 150, 280), 22, left=152, top=116),
                fs("Search", "gfn", left=436, top=120, width=60, extra=";text-align:right"),
                edit("", 200, 22, left=504, top=116)]
        cols = [("Name", 16, 150), ("Type", 170, 76), ("Label", 250, 124), ("Disposition", 378, 128),
                ("Last seen v", 510, 92), ("Encounters", 606, 98)]
        for name, cx, w in cols:
            out.append(flat(name, w - 2, 20, left=cx, top=144))
        for i, r in enumerate((rows or [])[:12]):
            y = top_row + i * row_h
            # a plain row button (no panel art) that owns its cells; a light stripe every other row, the brand violet
            # on hover
            shade = "rgba(180,140,255,0.18)" if hover_row == i else ("rgba(255,255,255,0.04)" if i % 2 else "transparent")
            out.append(f'<div class="abs" style="left:16px;top:{y}px;width:{REL_INNER}px;height:{row_h - 2}px;'
                       f'background:{shade}"></div>')
            for (name, cx, w), cell in zip(cols, r):
                out.append(fs(cell, "gfh", mode="trunc", left=cx + 4, top=y + 6, width=w - 8))
        if not rows:
            out.append(fs("|cff9d9d9dNo relationships yet.|r", "gfh", left=20, top=top_row + 6, width=REL_INNER - 8,
                          mode="trunc"))
    elif view == "people":
        out += [fs("Add a player", "gfn", left=16, top=120, width=120), edit("", 250, 22, left=140, top=116),
                flat("Add to the list", fit("Add to the list", 130, 220), 22, left=398, top=116),
                fs(R("rel_people_note"), "gfhs", left=16, top=146, width=REL_INNER)]
        for i, (name, src) in enumerate(cands or []):
            y = 178 + i * row_h
            out.append(fs(f"{name}  |cff9d9d9d{src}|r", "gfh", left=20, top=y + 6, width=600, mode="trunc"))
            out.append(flat("+", 28, 22, left=644, top=y))
            out.append(flat("x", 28, 22, left=676, top=y))
        if not cands:
            out.append(fs("|cff9d9d9dNo suggestions this session.|r", "gfh", left=20, top=184, width=600))
    elif view == "options":
        col_w = (REL_INNER - 16) // 2
        armed = armed or ("share" if share_armed else None)
        for i, (name, state) in enumerate(options or REL_OPTIONS):
            # #178: a question that is open is written in words on its button: "off, read first" for the first
            # couple of seconds, "off, confirm" after
            if (armed == "share" and name.startswith("Share")) or (armed == "proximity" and name.startswith("Recognise nearby")):
                state = R("consent_off_ready")
            out.append(flat(f"{name}: {state}", col_w, 24, hover=hover_option == i,
                            left=16 + (i % 2) * (col_w + 16), top=116 + (i // 2) * 30))
        # top-down, each under the one above, in the 12-unit font (#182): the hint, the privacy note (10 under it),
        # then (while it waits for the second click) the warning of the consent (12 under it)
        out.append(stack([(R("rel_options_hint"), "gfh", 0), (R("rel_privacy"), "gfh", 10),
                          (R("consent_%s_text" % armed) if armed else "", "gfh", 12)], left=16, top=244, width=REL_INNER))
    elif view == "detail":
        out += detail_widgets(detail)
    if view in ("list", "people"):
        out += [flat("<", 28, 24, left=16, top=pager, disabled=True),
                fs("page 1 of 1", "gfn", left=52, top=pager + 4, width=140),
                flat(">", 28, 24, left=196, top=pager, disabled=True),
                fs("relationships: 9 NPCs, 4 players, 3 suggested people.", "gfhs", left=240, top=pager + 4, width=464,
                   extra=";text-align:right")]
    if view != "detail":
        ew = fit(R("rel_export"), 100, 160)
        reset = R("rel_reset_confirm_btn" if reset_armed else "rel_reset")
        out += [flat(R("rel_export"), ew, 24, left=16, bottom=16),
                flat(reset, fit(reset, 150, 220), 24, kind="danger", armed=reset_armed, left=16 + ew + 8, bottom=16)]
    out.append(flat(R("rel_close"), fit(R("rel_close"), 100, 160), 24, right=16, bottom=16))
    return window(left, top, REL_W, REL_H, R("rel_title"), "".join(out))


AXES = [("Familiarity", 0, 100), ("Trust", -100, 100), ("Respect", -100, 100), ("Affection", -100, 100),
        ("Fear", 0, 100), ("Loyalty", -100, 100)]


def detail_widgets(d):
    """The detail of a person; d["forget_armed"] / d["delete_armed"] show the two-click actions waiting (#190)."""
    R = lambda key, *a: ui("en", key, *a)  # noqa: E731
    is_player = d["kind"] == "player"
    out = [fs(f"{d['name']}  |cff9d9d9d({'Player' if is_player else 'NPC'})|r", "gfnl", left=16, top=114, width=400,
              mode="trunc"),
           fs(f"Label: {d['label']}   Disposition: {d['disposition']}", "gfh", left=16, top=138, width=REL_INNER,
              mode="trunc")]
    if d.get("scope"):
        out.append(flat(d["scope"], fit(d["scope"], 140, 280), 24, right=16, top=110))
    # left column: the axes, the label and the feelings
    out.append(fs("What you chose", "gfn", left=16, top=162, width=340))
    for i, ((name, lo, hi), v) in enumerate(zip(AXES, d["axes"])):
        y = 182 + i * 26
        out += [fs(name, "gfn", left=16, top=y + 5, width=92, mode="trunc"), slider(v, lo, hi, 150, left=112, top=y + 2),
                fs(str(v), "gfh", left=266, top=y + 5, width=34, extra=";text-align:right"),
                flat("-", 24, 22, left=306, top=y), flat("+", 24, 22, left=332, top=y)]
    y = 182 + 7 * 26 + 4      # rows are built for all seven axes; attraction (off) is hidden but keeps its room
    out += [fs("Label", "gfn", left=16, top=y + 5, width=92, mode="trunc"), flat(d["label_btn"], 244, 24, left=112, top=y),
            edit(d.get("custom", ""), 244, 22, left=112, top=y + 28)]
    y += 58
    # the second feeling and the typical axes need a first feeling: disabled without one
    no_feeling = d["f1"] == "none"
    out += [fs("Feeling", "gfn", left=16, top=y + 5, width=92, mode="trunc"),
            flat(f"Feeling: {d['f1']}", 244, 24, left=112, top=y),
            flat(f"and: {d['f2']}", 120, 24, disabled=no_feeling, left=112, top=y + 28),
            flat("Typical axes", 120, 24, disabled=no_feeling, left=236, top=y + 28)]
    # right column: how you see them, then the note and the tags
    out.append(fs("How you see them (shapes the lines; 'unknown' leaves it to the addon)", "gfn", left=372, top=162,
                  width=332))
    y = 196
    for label in d["traits"]:
        out.append(flat(label, 332, 24, left=372, top=y))
        y += 28
    y += 6
    out += [fs("Note", "gfn", left=372, top=y, width=332), edit(d["note"], 332, 22, left=372, top=y + 18),
            fs("Tags", "gfn", left=372, top=y + 48, width=332), edit(d["tags"], 332, 22, left=372, top=y + 66)]
    # the observed block across the window (players only), then the actions in the footer: Back, then the two actions
    # that lose data, in the danger style, each filled while it waits for its second click
    back = R("rel_back")
    x = 16 + fit(back, 120, 180) + 8
    out.append(flat(back, fit(back, 120, 180), 24, left=16, bottom=16))
    if is_player:
        out += [fs("What the addon observed", "gfn", left=16, top=490, width=REL_INNER),
                fs(d["seen_line"], "gfhs", left=16, top=510, width=340),
                fs(d["seen_facts"], "gfhs", left=372, top=510, width=332)]
        forget = R("rel_forget_confirm" if d.get("forget_armed") else "rel_forget")
        out.append(flat(forget, fit(forget, 150, 210), 24, kind="danger", armed=d.get("forget_armed", False),
                        left=x, bottom=16))
        x += fit(forget, 150, 210) + 8
    delete = R("rel_delete_confirm" if d.get("delete_armed") else "rel_delete")
    out.append(flat(delete, fit(delete, 150, 210), 24, kind="danger", armed=d.get("delete_armed", False),
                    left=x, bottom=16))
    return out


# ---------------------------------------------------------------------------------------------------------------
# Profile (UI/ProfileFrame.lua): 680 x 700, the W.Window shell; the introduction (12 units) at -46, the archetype row
# at -104, the traits every 26 from -140, the avoided topics, then Total RP 3, Neutral profile and Close at the bottom
# ---------------------------------------------------------------------------------------------------------------
PROFILE_TOP = 104


def profile(left, top, rows, avoided, trp3=True, archetype="Hopeful traveler",
            arch_help="Cheerful and curious, finds hope at every turn of the road.", reset_armed=False):
    """reset_armed: "Neutral profile" after its first click, waiting for the second (#190)."""
    L = lambda key, *a: ui("en", key, *a)  # noqa: E731
    out = [fs(L("soul_intro"), "gfh", left=16, top=TOP, width=648),
           fs(L("soul_archetype"), "gfn", left=16, top=PROFILE_TOP + 5, width=130),
           flat(archetype, 170, 24, left=150, top=PROFILE_TOP),
           fs(arch_help, "gfhs", left=332, top=PROFILE_TOP + 5, width=332)]
    y = PROFILE_TOP + 36
    for name, value, text, source, explicit in rows:
        out.append(fs(name, "gfn", left=16, top=y + 5, width=170, mode="trunc"))
        if value is None:
            out.append(flat(text, 170, 24, left=190, top=y))
        else:
            out += [slider(value, 0, 100, 200, left=190, top=y + 4), fs(text, "gfhs", left=400, top=y + 6, width=120)]
        if explicit:
            out.append(flat("x", 24, 24, left=526, top=y))
        out.append(fs(source, "gfhs", left=556, top=y + 6, width=90))
        y += 26
    out.append(fs(L("soul_avoid_title"), "gfn", left=16, top=y + 6))
    topics = ["death", "blood", "betrayal", "family", "religion", "the undead", "demons", "romance"]
    # an avoided topic: a full edge and a bar under its name (#187), not a colour only
    for i, tp in enumerate(topics):
        out.append(flat(tp, 132, 24, selected=tp in avoided, left=16 + (i % 4) * 160, top=y + 30 + (i // 4) * 28))
    if trp3:
        out.append(flat(L("soul_trp3_consent") + ": " + L("off"), 250, 24, left=16, bottom=50))
    out += [flat(L("soul_reset_confirm" if reset_armed else "soul_reset"), 220, 24, kind="danger", armed=reset_armed,
                 left=16, bottom=16),
            flat(L("soul_close"), 110, 24, right=16, bottom=16)]
    return window(left, top, 680, 700, L("soul_title"), "".join(out))


# ---------------------------------------------------------------------------------------------------------------
# NPC dialogue (UI/DialogueFrame.lua): 380 wide, a header band of 22; the title 6 under it, the line 6 under the title,
# the answers (buttons of 22 every 26) 8 under the line; the height is the last answer + 4 + 8 (#182)
# ---------------------------------------------------------------------------------------------------------------
def dialogue(left, top, title, line=None, choices=(), font=13, alpha=0.92, hover=None):
    bg = (0.04, 0.04, 0.07, 0.85 * alpha)
    head = (f'<div class="abs" style="left:0;right:0;top:0;height:22px;background:rgba(77,51,8,0.95)">'
            + fs("|cffffd060addon ambient dialogue|r", "gfns", left=8, top=5) + btn("x", 22, 18, right=2, top=2, font=11)
            + "</div>")
    # each text under the one above, in the flow, so the measured heights place the answers (Layout)
    flow = [f'<div class="fs gfh" style="position:relative;font-size:{font}px">{wow(title)}</div>']
    if line:
        flow.append(f'<div class="fs gfh" style="position:relative;margin-top:6px;font-size:{font}px">'
                    f'{wow("«" + line + "»")}</div>')
    for i, c in enumerate(choices):
        flow.append(btn(c, 364, 22, state="hover" if hover == i else "", position="relative",
                        margin_top=(8 if line else 6) if i == 0 else 4))
    body = (f'{head}<div style="position:relative;padding:28px 8px 12px 8px">{"".join(flow)}</div>')
    return frame(body, bg=bg, left=left, top=top, width=380)
