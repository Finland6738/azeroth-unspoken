"""The addon's windows as HTML, built from the sizes, anchors, colours and texts of AzerothUnspoken/UI/.

Each function returns the HTML of one window placed in a stage. Coordinates: WoW TOPLEFT (x, y) -> left x, top -y.
"""
import os
import re

from mockkit import VOICE, VOICE_COLOR, btn, edit, fs, frame, sel, slider, style, wow, tooltip

FRAME_BG = (0.05, 0.04, 0.09, 0.95)      # W.Background(frame, 0.05, 0.04, 0.09, 0.95): journal, relations, profile
WIZARD_BG = (0.05, 0.04, 0.09, 0.94)
CHANNEL = {"SAY": "/s", "EMOTE": "/e", "YELL": "/y", "PARTY": "/p", "RAID": "/raid", "GUILD": "/g", "INSTANCE_CHAT": "/i"}

NARRATOR_TEXT = {
    "en": {"proposal": "proposal", "sent_to": "sent to %s", "send": "Send", "edit": "Edit",
           "another": "Another", "discard": "Discard", "copy": "To chat", "left": "%d s", "held": "+%d in history",
           "history": "Recent history"},
    "it": {"proposal": "proposta", "sent_to": "inviato in %s", "send": "Invia", "edit": "Modifica",
           "another": "Un'altra", "discard": "Scarta", "copy": "Nella chat", "left": "%d s", "held": "+%d in cronologia",
           "history": "Cronologia recente"},
}
# UI/NarratorFrame.lua VOICE_TINT and MUTED (#186): the light tint of each voice's text, the rest of the header label
VOICE_TINT = {"narrator": "ece6ff", "inner": "ddf3ff", "character": "fff1cc", "npc": "e3f7d6"}
MUTED = "c8c2d0"
EDGE = "rgba(66,54,82,0.9)"
ICON_REST = "#b8adc7"


def _icon(kind, right, top, hover=False):
    """A ghost icon button, 24 x 24 (#183, #186): pause (two bars), resume (a triangle), history (three lines), close."""
    c = "#fff" if hover else ICON_REST
    bg = "background:rgba(255,255,255,0.12);" if hover else ""
    if kind == "II":
        inner = (f'<i style="position:absolute;left:7.5px;top:6.5px;width:3px;height:11px;background:{c}"></i>'
                 f'<i style="position:absolute;left:13.5px;top:6.5px;width:3px;height:11px;background:{c}"></i>')
    elif kind == "H":
        inner = "".join(f'<i style="position:absolute;left:6px;top:{7 + k * 4}px;width:12px;height:2px;background:{c}"></i>'
                        for k in range(3))
    elif kind == ">":
        inner = (f'<i style="position:absolute;left:7px;top:6px;width:0;height:0;border-top:6px solid transparent;'
                 f'border-bottom:6px solid transparent;border-left:11px solid {c}"></i>')
    else:
        inner = (f'<span style="position:absolute;inset:0;display:flex;align-items:center;justify-content:center;'
                 f'font-size:15px;color:{c};text-shadow:1px 1px 0 #000;padding-bottom:2px">x</span>')
    return f'<div class="abs" style="right:{right}px;top:{top}px;width:24px;height:24px;{bg}">{inner}</div>'


def _flat(text, kind, hover=False):
    """W.FlatButton (UI/Widgets.lua): primary = gold fill, ghost = gold outline, text = no box."""
    if kind == "primary":
        fill = "rgb(148,112,20)" if hover else "rgb(115,87,15)"
        look = f"background:{fill};border:1px solid #c9a326;color:#fff2c4;padding:0 10px"
    elif kind == "ghost":
        look = (f"background:{'rgb(51,41,15)' if hover else 'transparent'};"
                f"border:1px solid rgba(201,163,38,{1 if hover else 0.55});color:#e6d9b8;padding:0 10px")
    else:
        look = f"border:1px solid transparent;color:{'#ffd100' if hover else '#b8a899'};padding:0 4px"
    return (f'<div style="height:24px;box-sizing:border-box;display:flex;align-items:center;font-size:12px;'
            f'white-space:pre;text-shadow:1px 1px 0 #000;{look}">{wow(text)}</div>')


# ---------------------------------------------------------------------------------------------------------------
# Narrator (UI/NarratorFrame.lua, #186): 440 wide, BOTTOM of UIParent + 240. A 3-unit accent bar in the voice colour,
# voice-tinted text (white when the background is under 0.6), the inner voice in another typeface; the header is
# max(28, label + 12) tall with three ghost icon buttons (24 x 24, 6 apart); height = header + 2 + text + 12 (+30
# editor, +34 bar). The opacity setting is the background's only, at least 0.55 (#173); a thin time line runs out
# instead of a fade (`remaining`, None = not drawn). A waiting proposal shows its countdown (`left_s`, None = until
# dismissed) and the lines held back while it waits (#176, #177); its channel is on the chip of the bar.
# ---------------------------------------------------------------------------------------------------------------
def narrator(left, bottom, speaker, text, lang="en", proposal=None, sent=None, editor=None, editor_sel=False,
             paused=False, alpha=0.8, font=14, remaining=0.7, history=None, hover_btn=None, history_alpha=0.8,
             left_s=25, held=0, key=None):
    t = NARRATOR_TEXT[lang]
    accent = VOICE_COLOR[speaker]
    tint = VOICE_TINT[speaker] if max(0.55, alpha) >= 0.6 else "ffffff"
    meta = []
    if proposal:
        meta.append(t["proposal"])
        if left_s is not None and editor is None:
            meta.append(t["left"] % left_s)
    elif sent:
        meta.append(t["sent_to"] % CHANNEL.get(sent, sent))
    if held:
        meta.append(t["held"] % held)
    label = f"|cff{accent}{VOICE[lang][speaker]}|r" + (f"|cff{MUTED} · {' · '.join(meta)}|r" if meta else "")
    label_size = max(12, font - 2)
    head = max(28, label_size + 12)
    pad = 12 + (30 if editor is not None else 0) + (34 if proposal else 0)
    icon_top = (head - 24) // 2
    header = (f'<div class="abs" style="left:0;right:0;top:0;height:{head}px">'
              + fs(label, "gfns", mode="trunc", left=12, right=94, top=round((head - label_size * 1.25) / 2),
                   extra=f";font-size:{label_size}px")
              + _icon(">" if paused else "II", 64, icon_top, hover_btn == "pause")
              + _icon("H", 34, icon_top, hover_btn == "history")
              + _icon("x", 4, icon_top, hover_btn == "close") + "</div>")
    face = "font-family:var(--chat-font);" if speaker == "inner" else ""
    size = font + 1 if speaker == "inner" else font
    body = (f'<div style="position:relative;padding:{head + 2}px 12px {pad}px 12px;font-size:{size}px;line-height:1.25;'
            f'{face}color:#{tint};text-shadow:1px 1px 0 #000;white-space:pre-wrap">{wow(text)}</div>')
    extra = f'<div class="abs" style="left:0;top:0;bottom:0;width:3px;background:#{accent}"></div>'
    if editor is not None:
        extra += edit(editor, 411, 22, focus=True, selected=editor_sel, caret=not editor_sel, left=17, bottom=40)
    if proposal:
        chan = CHANNEL.get(proposal, proposal)
        edge = f"#{accent}" if hover_btn == "chan" else f"#{accent}99"
        chip = (f'<div style="height:24px;box-sizing:border-box;padding:0 9px;display:flex;align-items:center;gap:8px;'
                f'font-size:12px;color:#{accent};text-shadow:1px 1px 0 #000;border:1px solid {edge}">{wow(chan)}'
                f'<i style="width:0;height:0;border-left:4px solid transparent;border-right:4px solid transparent;'
                f'border-top:4px solid #{accent}"></i></div>')
        send = t["send"] + (f"  |cffd8c79a{key}|r" if key else "")
        right = "".join(_flat(lbl, kind, hover_btn == k) for k, lbl, kind in (
            ("discard", t["discard"], "text"), ("another", t["another"], "ghost"), ("edit", t["edit"], "ghost"),
            ("copy", t["copy"], "ghost"), ("send", send, "primary")))
        extra += (f'<div class="abs" style="left:3px;right:0;bottom:35px;height:1px;background:rgba(66,54,82,0.7)"></div>'
                  f'<div class="abs" style="left:12px;right:8px;bottom:6px;height:24px;display:flex;gap:6px">'
                  f'{chip}<div style="flex:1"></div>{right}</div>')
    elif remaining:
        extra += (f'<div class="abs" style="left:3px;bottom:0;height:2px;width:{437 * remaining:.0f}px;'
                  f'background:#{accent};opacity:0.55"></div>')
    nar = (f'<div class="f" style="position:relative;width:440px;box-sizing:border-box;border:1px solid {EDGE}">'
           f'<div class="bg" style="background:rgba(0,0,0,{max(0.55, alpha):.3f})"></div>{header}{body}{extra}</div>')
    hist = ""
    if history is not None:
        h = 28 + 8 * -(-font * 5 // 4) + 12
        lines = "".join(f'<div style="white-space:pre-wrap">{wow(line)}</div>' for line in history)
        dots = "".join(f'<i style="position:absolute;left:{8 + (k % 2) * 4}px;top:{9 + (k // 2) * 4}px;width:2px;'
                       f'height:2px;background:{ICON_REST}"></i>' for k in range(6))
        hist = (f'<div class="f" style="position:relative;width:440px;height:{h}px;margin-bottom:4px;box-sizing:border-box;'
                f'border:1px solid {EDGE}">'
                f'<div class="bg" style="background:rgba(0,0,0,{max(0.8, history_alpha):.3f})"></div>'
                f'<div class="abs" style="left:0;top:0;right:28px;height:28px">{dots}'
                + fs(t["history"], "gfns", left=22, top=8) + '</div>' + _icon("x", 2, 2)
                + f'<div class="abs" style="left:12px;right:8px;top:30px;bottom:8px;overflow:hidden;display:flex;'
                f'flex-direction:column;justify-content:flex-end;font-size:{font}px;line-height:1.25;'
                f'text-shadow:1px 1px 0 #000">{lines}</div></div>')
    return (f'<div class="abs" style="left:{left}px;bottom:{bottom}px;width:440px;display:flex;flex-direction:column">'
            f'{hist}{nar}</div>')


def history_line(time, speaker, text, lang="en", sent=None):
    tag = f" |cff{MUTED}({NARRATOR_TEXT[lang]['sent_to'] % CHANNEL.get(sent, sent)})|r" if sent else ""
    return f"|cff{MUTED}{time}|r |cff{VOICE_COLOR[speaker]}{VOICE[lang][speaker]}|r |cff{VOICE_TINT[speaker]}{text}|r{tag}"


# ---------------------------------------------------------------------------------------------------------------
# Wizard (UI/Wizard.lua): 480 x 330, CENTER (0, 40), strata DIALOG
# ---------------------------------------------------------------------------------------------------------------
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
           ("storyArcs", True), ("social", False), ("audio", False)]
LIVE = {"personal", "world", "npc", "memory", "relations", "storyArcs"}


def wcard(left, top, w, h, title, sub, on=False, tag=None, lang="en"):
    """A card of the guide (Widgets.lua W.Card): a gold border and a filled marker when chosen; the text says the rest."""
    t = title + (f"  |cffffd100({tag})|r" if tag else "")
    return (f'<div class="wcard{" on" if on else ""}" style="{style(left=left, top=top, width=w, height=h)}">'
            f'<div class="wm"></div>{fs(t, "gfn", left=12, top=8, width=w - 42, mode="trunc")}'
            f'{fs(sub, "gfhs", left=12, top=26, width=w - 24)}</div>')


def fbtn(text, w, kind="ghost", h=24, **pos):
    """A flat button of the guide (Widgets.lua W.FlatButton): primary (gold fill), ghost (gold outline), text (no box)."""
    return f'<div class="p"><div class="pbtn {kind}" style="{style(width=w, height=h, **pos)}">{wow(text)}</div></div>'


def popup(left, top, width, height, text, accept, cancel, accept_disabled=True):
    """A client confirmation dialog (StaticPopup) drawn as a plain stand-in: the whole warning, explicit buttons."""
    return (f'<div class="abs" style="{style(left=left, top=top, width=width, height=height)};border:2px solid #7b7b8f;'
            f'border-radius:6px;background:rgba(8,6,14,0.97)">'
            + fs(text, "gfh", left=16, top=14, width=width - 32)
            + btn(accept, 150, 24, left=width // 2 - 156, bottom=14, state="disabled" if accept_disabled else "")
            + btn(cancel, 150, 24, left=width // 2 + 6, bottom=14) + '</div>')


def wizard(step, lang="en", trp3=False, left=0, top=0, mode=0, intensity=50, auto_state="", trp3_others="",
           name_on=False):
    """The first-run guide, 520 x 440 (UI/Wizard.lua). Steps 1..8; 6 (Total RP 3) only when it is installed, 8 is
    the keys page. `mode` is the chosen chat mode (0..3), `auto_state` "" | "reading" | "ready" is the question of
    automatic sending, `trp3_others` "" | "off" | "needs" the state of reading others' profiles."""
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
                 f'<div class="abs" style="left:0;top:0;width:3px;height:46px;background:#b9a1ff"></div>'
                 + fs("|cffb9a1ff" + L("voice_narrator") + "|r", "gfns", left=12, top=6)
                 + fs(L("wiz_sample", "Elyra"), "gfh", left=12, top=22, width=456) + "</div>")
        c.append(fs(L("wiz_language_label"), "gfns", left=20, top=Y + 134))
        for i, code in enumerate(("en", "it")):
            c.append(wcard(20 + i * 252, Y + 154, 236, 56, LANG_NAMES[code], L("wiz_language_card"), on=code == lang))
        c.append(fs(L("wiz_language_help"), "gfhs", left=20, top=Y + 222, width=480))
    elif step == 2:
        c.append(fs(L("wiz_preset_help"), "gfhs", left=20, top=Y + 30, width=480))
        for i, name in enumerate(("complete", "personal", "world", "social")):
            c.append(wcard(20, Y + 54 + i * 58, 480, 52, L("preset_" + name), L("preset_" + name + "_help"),
                           on=name == DEFAULTS["preset"], tag=L("wiz_default_tag") if name == DEFAULTS["preset"] else None))
    elif step == 3:
        c.append(fs(L("wiz_intensity_help"), "gfh", left=20, top=Y + 30, width=480))
        c.append(fbtn("-", 30, h=26, left=20, top=Y + 84))
        c.append(fs(str(intensity), "gfnl", left=62, top=Y + 88, width=60, extra=";text-align:center"))
        c.append(fbtn("+", 30, h=26, left=126, top=Y + 84))
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
            c.append(wcard(20 + (i % 2) * 252, Y + 66 + (i // 2) * 50, 236, 44, nm, L("on" if on else "off").capitalize(), on=on))
        c.append(fs(L("wiz_social_consent"), "gfhs", left=20, top=Y + 270, width=480))
    elif step == 6:
        c.append(fs(L("wiz_trp3_help"), "gfh", left=20, top=Y + 30, width=480))
        c.append(wcard(20, Y + 70, 480, 62, L("opt_rpname"), L("on" if name_on else "off").capitalize(), on=name_on))
        if trp3_others == "needs":
            state, on = L("consent_on_needs", L("opt_rpname")), True
        else:
            state, on = L("off"), False
        c.append(wcard(20, Y + 142, 480, 96, L("opt_trp3_others"), state + ". " + L("wiz_trp3_others_help"), on=on))
    elif step == 7:
        c.append(fs(L("wiz_chat_help"), "gfhs", left=20, top=Y + 26, width=480))
        for i, m in enumerate(MODES):
            sub = L("wiz_mode_" + m)
            if m == "AUTO_ONLY_IF_ALLOWED" and auto_state:
                sub += " " + L("consent_off_" + auto_state)
            c.append(wcard(20, Y + 58 + i * 58, 480, 54, L("chatmode_%s_short" % m), sub, on=i == mode,
                           tag=L("wiz_default_tag") if m == DEFAULTS["chatMode"] else None))
        c.append(fbtn(L("wiz_test"), 200, h=26, left=20, top=Y + 290))
        c.append(fs(L("wiz_test_hint"), "gfhs", left=232, top=Y + 295, width=240))
    elif step == 8:
        lines = [L("wiz_keys_intro")] + [L("wiz_key_" + k) for k in ("speak", "pause", "reroll", "npc")]
        c.append(fs("\n".join(lines), "gfh", left=20, top=Y + 30, width=480))
        c.append(fs(L("wiz_where", L("on")), "gfh", left=20, top=Y + 140, width=480))
        c.append(fs(L("wiz_defaults", 50, 45, 25, L("chatmode_PRIVATE_short"), L("on"), L("off"), L("off"), L("off")),
                    "gfhs", left=20, top=Y + 214, width=480))
        c.append(fbtn(L("wiz_open_bindings"), 200, h=26, left=20, top=Y + 276))
        c.append(fbtn(L("wiz_open_settings"), 200, h=26, left=232, top=Y + 276))
    dots = "".join(
        f'<div class="wdot{" now" if i + 1 == number else (" past" if i + 1 < number else "")}" '
        f'style="left:{260 + (i + 1 - 4.5) * 16 - 4}px"></div>' for i in range(total))
    chrome = ('<div class="p"><div class="abs" style="left:1px;right:1px;top:1px;height:40px;background:#17120a"></div></div>'
              + fs(L("wiz_title"), "gfnl", left=20, top=14)
              + fs(L("wiz_step", number, total), "gfns", left=300, top=18, width=168, extra=";text-align:right")
              + fbtn("x", 24, h=22, right=14, top=12) + dots
              + '<div class="abs" style="left:1px;right:1px;bottom:52px;height:1px;background:#54451a"></div>'
              + fbtn(L("wiz_skip"), 200, "text", left=16, bottom=14)
              + fbtn(L("wiz_finish") if number == total else L("wiz_next"), 110, "primary", right=16, bottom=14)
              + (fbtn(L("wiz_back"), 90, "ghost", right=134, bottom=14) if number > 1 else ""))
    # the window: a warm surface with a thin gold edge, as in the "proposed" design of the UI review
    return (f'<div class="p"><div class="win" style="{style(left=left, top=top, width=520, height=440)};background-color:#0f0c08;'
            f'background-image:none">' + "".join(c) + chrome + '</div></div>')


# ---------------------------------------------------------------------------------------------------------------
# Settings panel (UI/SettingsFrame.lua): a canvas in the client's options window
# ---------------------------------------------------------------------------------------------------------------
def settings(left, top, reload_needed=False, auto_state="off", tooltip_row=None, others_state="off"):
    col = (16, 330)
    out = [fs("Azeroth Unspoken 0.1.0", "gfnl", left=16, top=16)]

    def row(c, i, label, stepper=False, state=""):
        y = 48 + (i - 1) * 26     # ROW = 26 (#177: fourteen rows)
        if stepper:
            out.append(btn(label, 238, 24, left=col[c - 1], top=y))
            out.append(btn("-", 24, 24, left=col[c - 1] + 240, top=y))
            out.append(btn("+", 24, 24, left=col[c - 1] + 266, top=y))
        else:
            out.append(btn(label, 290, 24, left=col[c - 1], top=y, state=state))

    c1 = ["Addon: on", "Phrase language: English", ("Intensity: 50", True), "Style depth: Literary",
          "Pause between lines: 45 s", "Chat: private narrator only", f"Automatic sending: {auto_state}",
          "Default channel: automatic", "Proposal waits: 25 s", "'Speak' button: on", "Name from Total RP 3: on",
          "Pause the narrator", "Reopen the setup guide"]
    c2 = ["Narrator box: on", ("Text duration: 8 s", True), "Reading speed: 14 characters/s",
          ("Background opacity: 80%", True), ("Text size: 14", True), "Reduce motion: off",
          "Position locked: off", "Move the box back to the middle", "History", "Try the narrator",
          "Character soul...", "Character journal...", "Relationships...", f"Read others' Total RP 3: {others_state}"]
    for c, items in ((1, c1), (2, c2)):
        for i, it in enumerate(items, 1):
            label, step = (it if isinstance(it, tuple) else (it, False))
            row(c, i, label, step, state="hover" if tooltip_row == (c, i) else "")
    out.append(fs("Modules (* = coming, not active yet)", "gfn", left=16, top=418))
    mods = ["Personal: on", "World: on", "NPC dialogues: on", "Memory: on", "Emotions: on", "Relationships: on",
            "Stories: on", "Social *: on", "Chat proposals: on", "Audio *: off"]
    for i, m in enumerate(mods):
        out.append(btn(m, 150, 24, left=16 + (i % 4) * 156, top=440 + (i // 4) * 26))
    help_ = ""
    if reload_needed:
        out.append(btn("Reload now", 290, 24, left=330, top=414))
        help_ = ("lines in Italiano arrive with the next reload of the interface: until then they stay in English. "
                 "Type /reload or use the button in the settings.\n\n")
    help_ += ("Private narrator only (default): lines appear in the box and stay visible to you alone. Nothing goes to chat."
              "\n\nLines available in this language: 4182, from 9 packs.\n\nIn the open world WoW only allows /say after a "
              "key press or a click: the addon never writes to chat on its own, except in the 'automatic' mode you chose "
              "yourself. The 'speak' key and the immediate pause are bound under Options > Keybindings > AddOns.\n\nCommands: /au help")
    # #179: under the last row of the module grid (440 + 2 * 26 + 24 + 10), not over it
    out.append(fs(help_, "gfhs", left=16, top=526, width=600))
    return frame("".join(out), left=left, top=top, width=660, height=640)


# ---------------------------------------------------------------------------------------------------------------
# Journal (UI/JournalFrame.lua): 600 x 500; tabs as wide as their text, the note on its own line under them, then up
# to 11 rows of 28 above the pages
# ---------------------------------------------------------------------------------------------------------------
JOURNAL_TABS = [("memories", "Memories"), ("places", "Places"), ("flags", "Flags"), ("session", "Session"),
                ("stories", "Stories"), ("relations", "Relationships"), ("people", "People met")]
JOURNAL_MEMORY_TABS = {"memories", "places", "flags", "session"}
JOURNAL_LOCK = {"off": "Memory is off: turn it on in the settings (the Memory module). You can read the journal, "
                       "not change it.",
                "readonly": "Read-only: saved by a newer version of the addon. You can read the journal, not change it."}

# The layout of JournalFrame:Refresh(), done in the page because it depends on the measured width of the labels
# (GetStringWidth in the client): each tab max(48, text + 24) wide, a new line when 568 units are full; the selected
# tab underlined; the note at the tabs' bottom + 2; the rows from max(112, under the note + 4), as many as fit above 424.
JOURNAL_LAYOUT_JS = """<script>
(function (f) {
  var x = 0, line = 0, mark = f.querySelector('.jmark');
  f.querySelectorAll('.jtab').forEach(function (b) {
    var w = Math.max(48, Math.min(568, Math.ceil(b.querySelector('.lbl').offsetWidth) + 24));
    if (x > 0 && x + w > 568) { x = 0; line++; }
    var top = 78 + line * 28;
    b.style.left = (16 + x) + 'px'; b.style.top = top + 'px'; b.style.width = w + 'px';
    if (b.dataset.sel) { mark.style.left = (20 + x) + 'px'; mark.style.top = (top + 24) + 'px'; mark.style.width = (w - 8) + 'px'; }
    x += w + 4;
  });
  var top = 78 + (line + 1) * 28, note = f.querySelector('.jnote');
  if (note) { note.style.top = (top + 2) + 'px'; top += 2 + Math.ceil(note.offsetHeight) + 4; }
  top = Math.max(112, top);
  var size = Math.min(11, Math.floor((424 - top) / 28));
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
    out = [fs("Character journal", "gfnl", left=16, top=12),
           fs("Your character's memories: only significant moments, never chat text. You can delete them or make them "
              "permanent; the addon cannot write files, so to export them copy the text.", "gfhs", left=16, top=38,
              width=568)]
    for tid, label in JOURNAL_TABS:
        on = tid == tab
        b = btn(f"|cffffffff{label}|r" if on else label, 48, 24, state="hover" if on else "", left=16, top=78)
        out.append(b.replace('class="btn', 'class="btn jtab', 1).replace("<div ", '<div data-sel="1" ', 1) if on
                   else b.replace('class="btn', 'class="btn jtab', 1))
    out.append('<div class="abs jmark" style="height:3px;background:#ffd100"></div>')
    tab_lock = lock if tab in JOURNAL_MEMORY_TABS else None
    note_text = (f"|cffff9040{JOURNAL_LOCK[tab_lock]}|r" + (f"\n{note}" if note else "")) if tab_lock else note
    if note_text:
        out.append(fs(note_text, "gfhs jnote", left=16, top=108, width=568))
    for i, r in enumerate(rows[:11]):
        text, actions = (r if isinstance(r, tuple) else (r, []))
        row = []
        armed_row = confirm is not None and confirm[0] == i
        if armed_row:
            text = f"|cffff9040{confirm[1]}|r {text}"
        row.append(fs(text, "gfh", mode="trunc", left=16, top=6, width=500))
        for k, a in enumerate(actions[:2]):
            label = "OK" if armed_row and a == "x" else a
            row.append(btn(label, 24, 24, left=528 + k * 28, top=0, state="disabled" if tab_lock else ""))
        if tip is not None and tip[0] == i:
            row.append(tooltip([(tip[1], "ffffff")], left=40, bottom=24, max_width=420))
        out.append(f'<div class="abs jrow" style="left:0;width:600px;height:28px;top:112px">{"".join(row)}</div>')
    if not rows:
        out.append(f'<div class="abs jrow" style="left:0;width:600px;height:28px;top:112px">'
                   f'{fs("|cff9d9d9dNothing to show.|r", "gfh", left=16, top=6, width=500)}</div>')
    out.append(btn("<", 28, 24, left=16, bottom=52, state="" if page[0] > 1 else "disabled"))
    out.append(fs(f"page {page[0]} of {page[1]}", "gfn", left=52, bottom=57, width=140))
    out.append(btn(">", 28, 24, left=196, bottom=52, state="" if page[0] < page[1] else "disabled"))
    out.append(fs(stats, "gfhs", right=16, bottom=58, width=340, extra=";text-align:right"))
    out.append(btn("Export", 110, 24, left=16, bottom=16))
    out.append(btn("Confirm: forget" if armed else "Forget everything", 170, 24, left=136, bottom=16,
                   state="disabled" if lock else ""))
    out.append(btn("Close", 110, 24, right=16, bottom=16))
    out.append(JOURNAL_LAYOUT_JS)
    return frame("".join(out), bg=FRAME_BG, left=left, top=top, width=600, height=500)


def export_window(left, top, title, text):
    out = [fs(title, "gfnl", left=16, top=12),
           fs("Select the text and copy it with Ctrl+C. The addon cannot write files.", "gfhs", left=16, top=40, width=568),
           f'<div class="abs chatfont" style="left:16px;top:64px;right:36px;bottom:52px;overflow:hidden;white-space:pre-wrap;'
           f'line-height:1.25"><span class="sel" style="background:#3a5fbf">{wow(text)}</span></div>',
           '<div class="abs" style="right:12px;top:64px;bottom:52px;width:16px;background:rgba(255,255,255,0.08);'
           'border:1px solid #444"><div style="height:40px;background:#666;margin:18px 2px"></div></div>',
           btn("Close", 110, 24, right=16, bottom=16)]
    return frame("".join(out), bg=(0.02, 0.02, 0.05, 0.98), left=left, top=top, width=600, height=440)


# ---------------------------------------------------------------------------------------------------------------
# Relationships (UI/RelationsFrame.lua): 720 x 660 in every view (U1: #171, #172, #179, #180)
# ---------------------------------------------------------------------------------------------------------------
REL_OPTIONS = [("Automatic NPCs", "on"), ("Suggest people", "on"), ("Register by itself", "off"),
               ("Attraction axis", "off"), ("Recognise on target", "off"), ("Recognise nearby", "off"),
               ("Share with the account", "off")]
REL_PRIVACY = "No chat or whisper content is read or saved. Players join the list only through an action of yours."
REL_OPTIONS_HINT = ui("en", "rel_options_hint")   # two lines of 10 px: the consents are explained on screen (#178)
REL_W, REL_H, REL_INNER = 720, 660, 688


def fit(text, lo, hi):
    """The width the addon gives a button: its label (about 6.3 units a character) plus 24, between lo and hi."""
    plain = re.sub(r"\|c[0-9a-fA-F]{8}|\|r", "", text)
    return max(lo, min(hi, round(len(plain) * 6.3) + 24))


def relations(left, top, view, rows=None, cands=None, detail=None, share_armed=False, options=None,
              hover_option=None, candidates=3, hover_row=None, armed=None):
    out = [fs("Relationships", "gfnl", left=16, top=12),
           fs("How you stand with the people you meet: NPCs are worked out automatically (dialogs, quests, merchants), "
              "players are chosen by you. There is never any chat or whisper text here, and nothing goes online.",
              "gfhs", left=16, top=34, width=REL_INNER)]
    x = 16
    for text, on in ((sel("Relationships", view in ("list", "detail")), None),
                     (sel(f"People met ({candidates})", view == "people"), None),
                     (sel("Options", view == "options"), None)):
        w = fit(text, 110, 240)
        out.append(btn(text, w, 24, left=x, top=84))
        x += w + 4
    top_row, row_h, pager = 168, 26, 500
    if view == "list":
        out += [btn("All", fit("All", 100, 130), 22, left=16, top=116),
                btn("Label: any", fit("Label: any", 150, 280), 22, left=152, top=116),
                fs("Search", "gfn", left=436, top=120, width=60, extra=";text-align:right"),
                edit("", 200, 22, left=504, top=116)]
        cols = [("Name", 16, 150), ("Type", 170, 76), ("Label", 250, 124), ("Disposition", 378, 128),
                ("Last seen v", 510, 92), ("Encounters", 606, 98)]
        for name, cx, w in cols:
            out.append(btn(name, w - 2, 20, left=cx, top=144))
        for i, r in enumerate((rows or [])[:12]):
            y = top_row + i * row_h
            # a plain row button (no panel art) that owns its cells; a light stripe every other row, a highlight on hover
            shade = "rgba(179,140,255,0.18)" if hover_row == i else ("rgba(255,255,255,0.04)" if i % 2 else "transparent")
            out.append(f'<div class="abs" style="left:16px;top:{y}px;width:{REL_INNER}px;height:{row_h - 2}px;'
                       f'background:{shade}"></div>')
            for (name, cx, w), cell in zip(cols, r):
                out.append(fs(cell, "gfh", mode="trunc", left=cx + 4, top=y + 6, width=w - 8))
        if not rows:
            out.append(fs("|cff9d9d9dNo relationships yet.|r", "gfh", left=20, top=top_row + 6, width=REL_INNER - 8,
                          mode="trunc"))
    elif view == "people":
        out += [fs("Add a player", "gfn", left=16, top=120, width=120), edit("", 250, 22, left=140, top=116),
                btn("Add to the list", fit("Add to the list", 130, 220), 22, left=398, top=116),
                fs("The addon suggests people you meet (group, trades, Total RP 3 profiles, private replies). No one joins "
                   "the list without your click on +. Suggestions last only for this session.", "gfhs", left=16, top=146,
                   width=REL_INNER)]
        for i, (name, src) in enumerate(cands or []):
            y = 178 + i * row_h
            out.append(fs(f"{name}  |cff9d9d9d{src}|r", "gfh", left=20, top=y + 6, width=600, mode="trunc"))
            out.append(btn("+", 28, 22, left=644, top=y))
            out.append(btn("x", 28, 22, left=676, top=y))
        if not cands:
            out.append(fs("|cff9d9d9dNo suggestions this session.|r", "gfh", left=20, top=184, width=600))
    elif view == "options":
        col_w = (REL_INNER - 16) // 2
        armed = armed or ("share" if share_armed else None)
        for i, (name, state) in enumerate(options or REL_OPTIONS):
            # #178: a question that is open is written in words on its button: "off, read first" for the first
            # couple of seconds, "off, confirm" after
            if (armed == "share" and name.startswith("Share")) or (armed == "proximity" and name.startswith("Recognise nearby")):
                state = ui("en", "consent_off_ready")
            label = f"{name}: {state}"
            out.append(btn(label, col_w, 24, left=16 + (i % 2) * (col_w + 16), top=116 + (i // 2) * 30,
                           state="hover" if hover_option == i else ""))
        # top-down: the hint, the privacy note, then (while it waits for the second click) the shared-list warning
        out += [fs(REL_OPTIONS_HINT, "gfhs", left=16, top=244, width=REL_INNER),
                fs(REL_PRIVACY, "gfhs", left=16, top=282, width=REL_INNER)]
        if armed:
            out.append(fs(ui("en", "consent_%s_text" % armed), "gfh", left=16, top=310, width=REL_INNER))
    elif view == "detail":
        out += detail_widgets(detail)
    if view in ("list", "people"):
        out += [btn("<", 28, 24, left=16, top=pager, state="disabled"),
                fs("page 1 of 1", "gfn", left=52, top=pager + 4, width=140),
                btn(">", 28, 24, left=196, top=pager, state="disabled"),
                fs("relationships: 9 NPCs, 4 players, 3 suggested people.", "gfhs", left=240, top=pager + 4, width=464,
                   extra=";text-align:right")]
    if view != "detail":
        ew = fit("Export", 100, 160)
        out += [btn("Export", ew, 24, left=16, bottom=16),
                btn("Forget everything", fit("Forget everything", 150, 220), 24, left=16 + ew + 8, bottom=16)]
    out.append(btn("Close", fit("Close", 100, 160), 24, right=16, bottom=16))
    return frame("".join(out), bg=FRAME_BG, left=left, top=top, width=REL_W, height=REL_H)


AXES = [("Familiarity", 0, 100), ("Trust", -100, 100), ("Respect", -100, 100), ("Affection", -100, 100),
        ("Fear", 0, 100), ("Loyalty", -100, 100)]


def detail_widgets(d):
    is_player = d["kind"] == "player"
    out = [fs(f"{d['name']}  |cff9d9d9d({'Player' if is_player else 'NPC'})|r", "gfnl", left=16, top=114, width=400),
           fs(f"Label: {d['label']}   Disposition: {d['disposition']}", "gfh", left=16, top=138, width=REL_INNER)]
    if d.get("scope"):
        out.append(btn(d["scope"], fit(d["scope"], 140, 280), 24, right=16, top=110))
    # left column: the axes, the label and the feelings
    out.append(fs("What you chose", "gfn", left=16, top=162, width=340))
    for i, ((name, lo, hi), v) in enumerate(zip(AXES, d["axes"])):
        y = 182 + i * 26
        out += [fs(name, "gfn", left=16, top=y + 5, width=92, mode="trunc"), slider(v, lo, hi, 150, left=112, top=y + 2),
                fs(str(v), "gfh", left=266, top=y + 5, width=34, extra=";text-align:right"),
                btn("-", 24, 22, left=306, top=y), btn("+", 24, 22, left=332, top=y)]
    y = 182 + 7 * 26 + 4      # rows are built for all seven axes; attraction (off) is hidden but keeps its room
    out += [fs("Label", "gfn", left=16, top=y + 5, width=92), btn(d["label_btn"], 244, 24, left=112, top=y),
            edit(d.get("custom", ""), 244, 22, left=112, top=y + 28)]
    y += 58
    out += [fs("Feeling", "gfn", left=16, top=y + 5, width=92), btn(f"Feeling: {d['f1']}", 244, 24, left=112, top=y),
            btn(f"and: {d['f2']}", 120, 24, left=112, top=y + 28), btn("Typical axes", 120, 24, left=236, top=y + 28)]
    # right column: how you see them, then the note and the tags
    out.append(fs("How you see them (shapes the lines; 'unknown' leaves it to the addon)", "gfn", left=372, top=162,
                  width=332))
    y = 196
    for label in d["traits"]:
        out.append(btn(label, 332, 24, left=372, top=y))
        y += 28
    y += 6
    out += [fs("Note", "gfn", left=372, top=y, width=332), edit(d["note"], 332, 22, left=372, top=y + 18),
            fs("Tags", "gfn", left=372, top=y + 48, width=332), edit(d["tags"], 332, 22, left=372, top=y + 66)]
    # the observed block across the window (players only), then the actions in the footer
    x = 16 + fit("Back to the list", 120, 180) + 8
    out.append(btn("Back to the list", fit("Back to the list", 120, 180), 24, left=16, bottom=16))
    if is_player:
        out += [fs("What the addon observed", "gfn", left=16, top=490, width=REL_INNER),
                fs(d["seen_line"], "gfhs", left=16, top=510, width=340),
                fs(d["seen_facts"], "gfhs", left=372, top=510, width=332)]
        forget = d.get("forget", "Forget observations")
        out.append(btn(forget, fit(forget, 150, 210), 24, left=x, bottom=16))
        x += fit(forget, 150, 210) + 8
    delete = d.get("delete", "Remove person")
    out.append(btn(delete, fit(delete, 150, 210), 24, left=x, bottom=16))
    return out


# ---------------------------------------------------------------------------------------------------------------
# Profile (UI/ProfileFrame.lua): 680 x 690
# ---------------------------------------------------------------------------------------------------------------
def profile(left, top, rows, avoided, trp3=True, archetype="Hopeful traveler",
            arch_help="Cheerful and curious, finds hope at every turn of the road."):
    out = [fs("Character soul", "gfnl", left=16, top=12),
           fs("All optional: with no choices the narrator stays neutral. Each trait is an intensity from 0 to 100, and they "
              "can coexist; an archetype only fills the sliders. Traits weigh lines, they never force them; avoided topics "
              "and a silenced inner voice are never contradicted.", "gfhs", left=16, top=40, width=648),
           fs("Archetype", "gfn", left=16, top=88, width=130), btn(archetype, 170, 24, left=150, top=83),
           fs(arch_help, "gfhs", left=332, top=88, width=332)]
    y = 120
    for name, value, text, source, explicit in rows:
        out.append(fs(name, "gfn", left=16, top=y + 5, width=170))
        if value is None:
            out.append(btn(text, 170, 24, left=190, top=y))
        else:
            out += [slider(value, 0, 100, 200, left=190, top=y + 4), fs(text, "gfhs", left=400, top=y + 6, width=120)]
        if explicit:
            out.append(btn("x", 24, 24, left=526, top=y))
        out.append(fs(source, "gfhs", left=556, top=y + 6, width=90))
        y += 26
    out.append(fs("Topics to avoid (never in lines)", "gfn", left=16, top=y + 6))
    topics = ["death", "blood", "betrayal", "family", "religion", "the undead", "demons", "romance"]
    for i, tp in enumerate(topics):
        out.append(btn(sel(tp, tp in avoided), 132, 24, left=16 + (i % 4) * 160, top=y + 30 + (i // 4) * 28))
    if trp3:
        out.append(btn("Traits from Total RP 3: off", 250, 24, left=16, bottom=50))
    out += [btn("Neutral profile", 150, 24, left=16, bottom=16), btn("Close", 110, 24, right=16, bottom=16)]
    return frame("".join(out), bg=FRAME_BG, left=left, top=top, width=680, height=690)


# ---------------------------------------------------------------------------------------------------------------
# NPC dialogue (UI/DialogueFrame.lua): 380 wide, header band, buttons of 22 every 26
# ---------------------------------------------------------------------------------------------------------------
def dialogue(left, top, title, line=None, choices=(), font=13, alpha=0.92, hover=None):
    bg = (0.04, 0.04, 0.07, 0.85 * alpha)
    head = (f'<div class="abs" style="left:0;right:0;top:0;height:22px;background:rgba(77,51,8,0.95)">'
            + fs("|cffffd060addon ambient dialogue|r", "gfns", left=8, top=5) + btn("x", 22, 18, right=2, top=2, font=11)
            + "</div>")
    out = [head, fs(title, "gfh", left=8, right=8, top=28, extra=f";font-size:{font}px")]
    y = 44
    if line:
        out.append(f'<div class="fs gfh" style="left:8px;right:8px;top:48px;font-size:{font}px;white-space:pre-wrap">'
                   f'{wow("«" + line + "»")}</div>')
        # an estimate of the wrapped height of the line at this width (Georgia, ~6.6 px per character at 13 px)
        chars_per_line = int(364 / (font * 0.5))
        n = max(1, -(-len(line) // chars_per_line))
        y += n * round(font * 1.25) + 8
    for i, c in enumerate(choices):
        out.append(btn(c, 364, 22, left=8, top=y, state="hover" if hover == i else ""))
        y += 26
    return frame("".join(out), bg=bg, left=left, top=top, width=380, height=y + 8)
