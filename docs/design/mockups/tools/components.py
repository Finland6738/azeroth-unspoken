"""The windows of Azeroth Unspoken as HTML, on the widgets of tools/mockup_lib.py (UI-ECO step UI-8).

Each function draws one window as AzerothUnspoken/UI/ lays it out today: the W.Window shell (the 52-unit title bar, the
Orbitron title in capitals, the mono subtitle, the close box), the theme's widgets and the tokens of UI/Theme.lua. Every
text of the interface is read from the addon's own locale files through L(); the sample data the caller passes (names,
memories, lines of the phrase packs) is invented or taken from the phrase data. Coordinates: WoW TOPLEFT (x, y) ->
left x, top -y, in the parent's units.
"""
import math
import os
import sys

_ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))))
sys.path.insert(0, os.path.join(_ROOT, "tools"))

import mockup_lib as M  # noqa: E402
from mockup_lib import (L, badge, button, card, chip, choicelist, dialog, editbox, esc, hexed, icon, section,  # noqa: E402,F401
                        segmented, slider, style, switch, table, tabs, text, thinbar, toast, tooltip, window, wow)

CHANNEL = {"SAY": "/s", "EMOTE": "/e", "YELL": "/y", "PARTY": "/p", "RAID": "/raid", "GUILD": "/g", "INSTANCE_CHAT": "/i"}
VOICE_KEY = {"narrator": "voice_narrator", "inner": "voice_inner", "character": "voice_character", "npc": "voice_npc"}


# ---------------------------------------------------------------------------------------------------------------
# contrast over the world (UI/NarratorFrame.lua: WorstContrast, Floor, Ink)
# ---------------------------------------------------------------------------------------------------------------
def _over(fg, alpha, scene):
    return tuple(fg[i] * alpha + scene[i] * (1 - alpha) for i in range(3))


def worst_contrast(theme, token, alpha):
    t = M.THEMES[theme]
    fg = M.rgba(t[token])[:3]
    bg = M.rgba(t["bg"])[:3]
    worst = 99.0
    for scene in ((255, 255, 255), (0, 0, 0)):
        surf = _over(bg, alpha, scene)
        la, lb = M._lum(fg), M._lum(surf)
        la, lb = max(la, lb), min(la, lb)
        worst = min(worst, (la + 0.05) / (lb + 0.05))
    return worst


def floor(theme):
    pct = 55
    while pct < 100 and worst_contrast(theme, "text-1", pct / 100) < 4.5:
        pct += 1
    return pct / 100


def ink(theme, token, alpha):
    return token if worst_contrast(theme, token, alpha) >= 4.5 else "text-1"


def surface(theme, alpha, token="bg"):
    r, g, b, _ = M.rgba(M.THEMES[theme][token])
    return f"rgba({r},{g},{b},{alpha:.3f})"


# ---------------------------------------------------------------------------------------------------------------
# Narrator (UI/NarratorFrame.lua): 440 wide, a Panel (radius 12, `bg` at the opacity setting, never under the floor),
# the 3-unit accent bar inside the corners, a header of max(28, label + 12) with three 24-unit ghost icon buttons,
# the text from PAD 14, a 2-unit time line, the editor (+30) and the proposal bar (+34)
# ---------------------------------------------------------------------------------------------------------------
WIDTH, PAD, ICON, ICON_GAP, MAX_LINES = 440, 14, 24, 6, 12


def _icon_button(kind, right, top, hover=False):
    glyph = {"II": "pause", ">": "play", "H": "history", "x": "cross"}[kind]
    bg = "background:var(--surface-3);" if hover else ""
    color = "var(--text-1)" if hover else "var(--text-2)"
    return (f'<div class="abs" style="right:{right}px;top:{top}px;width:24px;height:24px;border-radius:8px;{bg}'
            f'display:grid;place-items:center;color:{color}">{icon(glyph, 16)}</div>')


def _text_block(s, font, reveal=None, scroll=None):
    if "\n" not in s and reveal is None:
        return wow(s)
    lh = math.ceil(font * 1.25)
    verses = s.split("\n")
    shown = len(verses) if reveal is None else reveal
    out = "".join(f'<div style="flex-shrink:0;min-height:{lh}px{";visibility:hidden" if i >= shown else ""}">'
                  f'{wow(v) if v else "&nbsp;"}</div>' for i, v in enumerate(verses))
    just = "flex-end" if scroll == "end" else "flex-start"
    shift = f"margin-top:-{scroll * lh}px;" if isinstance(scroll, int) else ""
    return (f'<div style="max-height:{MAX_LINES * lh}px;overflow:hidden;display:flex;flex-direction:column;'
            f'justify-content:{just}"><div style="{shift}display:flex;flex-direction:column">{out}</div></div>')


def history_line(time, speaker, s, lang="en", sent=None, theme="nebula", alpha=0.8):
    """Narrator:RefreshHistory: the time in text-2, the voice in its ink, the text; a verse keeps its lines, indented."""
    a = max(floor(theme), 0.8, alpha)
    voice = ink(theme, M.VOICE_TOKENS[speaker], a)
    tag = " " + hexed("text-2", "(" + L(lang, "sent_to", CHANNEL.get(sent, sent)) + ")") if sent else ""
    first, *rest = s.split("\n")
    out = f"{hexed('text-2', time)} {hexed(voice, L(lang, VOICE_KEY[speaker]))} {hexed(voice, first)}{tag}"
    return out + "".join("\n" + hexed(voice, "    " + (line or " ")) for line in rest)


def narrator(left, bottom, speaker, s, lang="en", proposal=None, sent=None, editor=None, editor_sel=False,
             paused=False, alpha=0.8, font=14, remaining=0.7, history=None, hover_btn=None, left_s=25, held=0,
             key=None, reveal=None, scroll=None, theme="nebula", channel_hover=False):
    a = max(floor(theme), alpha)
    accent = M.VOICE_TOKENS[speaker]
    voice_ink = ink(theme, accent, a)
    muted = ink(theme, "text-2", a)
    meta = []
    if proposal:
        meta.append(L(lang, "proposal_tag"))
        if left_s is not None and editor is None:
            meta.append(L(lang, "proposal_left", left_s))
    elif sent:
        meta.append(L(lang, "sent_to", CHANNEL.get(sent, sent)))
    if held:
        meta.append(L(lang, "narrator_held", held))
    if paused:
        meta.append(L(lang, "narrator_paused"))
    label = hexed(voice_ink, L(lang, VOICE_KEY[speaker])) + (hexed(muted, " · " + " · ".join(meta)) if meta else "")
    label_size = max(12, font - 2)
    head = max(ICON + 4, label_size + 12)
    extra_h = 12 + (30 if editor is not None else 0) + (34 if proposal else 0)
    icon_top = (head - ICON) // 2
    header = (f'<div style="position:relative;height:{head}px">'
              + text(label, "BodyMedium", None, mode="trunc", left=PAD, top=round((head - label_size * 1.25) / 2),
                     width=WIDTH - PAD - 98, extra=f";font-size:{label_size}px")
              + _icon_button(">" if paused else "II", 8 + 2 * (ICON + ICON_GAP), icon_top, hover_btn == "pause")
              + _icon_button("H", 8 + ICON + ICON_GAP, icon_top, hover_btn == "history")
              + _icon_button("x", 8, icon_top, hover_btn == "close") + "</div>")
    face = f"font-family:{M.FAMILY['inner']};font-size:{font + 1}px;" if speaker == "inner" else f"font-size:{font}px;"
    body = (f'<div style="position:relative;margin:2px {PAD}px {extra_h}px {PAD}px;line-height:1.25;{face}'
            f'color:var(--{voice_ink});white-space:pre-wrap">{_text_block(s, font, reveal, scroll)}</div>')
    parts = [f'<div class="abs" style="left:0;top:12px;bottom:12px;width:3px;background:var(--{accent})"></div>']
    if editor is not None:
        n = len(editor.encode("utf-8"))
        parts.append(editbox(editor, WIDTH - 2 * PAD, 24, focus=True, selected=editor_sel, caret=not editor_sel,
                             left=PAD, bottom=40)
                     + text(L(lang, "gw_bytes", n, 255), "MonoSmall", "text-3", right=PAD + 8, bottom=44))
    if proposal:
        chan = CHANNEL.get(proposal, proposal)
        w_chip = int(len(chan) * 7) + 40
        chip_html = (f'<div class="chip{" hot" if channel_hover else ""}" style="position:relative;height:24px;'
                     f'width:{w_chip}px;justify-content:space-between;padding:0 8px 0 10px">{esc(chan)}{icon("chevron", 12, "text-2")}</div>')
        send = L(lang, "btn_send")
        btns = []
        for k, lbl, kind, pad in (("discard", L(lang, "btn_discard"), "text", 8), ("another", L(lang, "btn_another"), "ghost", 20),
                                  ("edit", L(lang, "btn_edit"), "ghost", 20), ("copy", L(lang, "btn_copy"), "ghost", 20),
                                  ("send", send, "primary", 20)):
            extra = 0 if not (k == "send" and key) else len(key) * 7 + 8
            btns.append(button(lbl, M.fit_width(lbl, 0, 999, pad) + extra, 24, kind, hover=hover_btn == k, inline=True,
                               key=key if k == "send" else None))
        parts.append(f'<div class="abs" style="left:3px;right:0;bottom:35px;height:1px;background:var(--border-subtle)"></div>'
                     f'<div class="abs" style="left:{PAD}px;right:8px;bottom:6px;height:24px;display:flex;gap:6px">'
                     f'{chip_html}<div style="flex:1"></div>{"".join(btns)}</div>')
    elif remaining:
        parts.append(thinbar(remaining, WIDTH - 2 * PAD, 2, accent, left=PAD, bottom=3))
    shadow = "box-shadow:var(--shadow);"
    box = (f'<div style="position:relative;width:{WIDTH}px;border-radius:12px;border:1px solid var(--border);'
           f'background:{surface(theme, a)};{shadow}">{header}{body}{"".join(parts)}</div>')
    hist = ""
    if history is not None:
        ha = max(floor(theme), 0.8, alpha)
        h = ICON + 4 + 8 * math.ceil(font * 1.25) + 12
        dots = "".join(f'<i style="position:absolute;left:{12 + (k % 2) * 4}px;top:{12 + (k // 2) * 4}px;width:2px;'
                       f'height:2px;background:var(--text-2)"></i>' for k in range(6))
        lines = "".join(f'<div style="white-space:pre-wrap">{wow(line)}</div>' for line in history)
        hist = (f'<div style="position:relative;width:{WIDTH}px;height:{h}px;margin-bottom:4px;border-radius:12px;'
                f'border:1px solid var(--border);background:{surface(theme, ha)};{shadow}">{dots}'
                + text(L(lang, "tip_history"), "BodyMedium", "text-1", left=26, top=8)
                + _icon_button("x", 6, 6)
                + f'<div class="abs" style="left:{PAD}px;right:10px;top:{ICON + 10}px;bottom:10px;overflow:hidden;display:flex;'
                f'flex-direction:column;justify-content:flex-end;font-size:{font}px;line-height:1.25">{lines}</div></div>')
    return (f'<div class="abs" data-theme="{theme}" style="left:{left}px;bottom:{bottom}px;width:{WIDTH}px;display:flex;'
            f'flex-direction:column">{hist}{box}</div>')


# ---------------------------------------------------------------------------------------------------------------
# Speak button (UI/SpeakButton.lua): 36 units, a ring (border-strong, accent while lit), a surface-1 disc, the quill;
# a glow while a proposal waits; "Paused" as a warn badge under it, not dimmed with it
# ---------------------------------------------------------------------------------------------------------------
def speak_button(waiting=False, hover=False, paused=False, theme=None, **pos):
    ring = "accent" if (waiting or hover) else "border-strong"
    ink_ = "accent-text" if waiting else ("text-1" if hover else "text-3")
    glow = ("box-shadow:0 0 22px rgba(252,126,70,calc(var(--glow-a) * 1.4));" if waiting else "")
    th = f' data-theme="{theme}"' if theme else ""
    out = (f'<div class="abs"{th} style="{style(width=36, height=36, **pos)};{"opacity:.5;" if paused else ""}">'
           f'<div class="abs" style="inset:0;border-radius:50%;background:var(--{ring});{glow}"></div>'
           f'<div class="abs" style="inset:2px;border-radius:50%;background:var(--surface-1);display:grid;place-items:center">'
           f'{icon("quill", 20, ink_)}</div></div>')
    if paused:
        x = pos.get("left", 0) + 18
        y = pos.get("top", 0) + 40
        out += (f'<div class="abs"{th} style="left:{x}px;top:{y}px;transform:translateX(-50%)">'
                f'{badge(L("en", "paused_badge"), "warn")}</div>')
    return out


# ---------------------------------------------------------------------------------------------------------------
# NPC dialogue (UI/DialogueFrame.lua): 380 wide, a Panel at the dialogue's opacity, the NPC's accent bar, a 36-unit
# header with the "addon ambient dialogue" badge and Close, the title in voice-npc, the line, the answers (24 each)
# ---------------------------------------------------------------------------------------------------------------
def dialogue(left, top, title, line=None, choices=(), lang="en", font=13, alpha=0.92, hover=None, kind="answers",
             theme="nebula"):
    """kind: offered (one primary button "Listen") | answers (numbered secondary buttons) | last (Close)."""
    a = max(floor(theme), alpha)
    y = 36 + 6
    parts = [f'<div class="abs" style="left:0;top:12px;bottom:12px;width:3px;background:var(--voice-npc)"></div>',
             f'<div class="abs" style="left:12px;right:12px;top:35px;height:1px;background:var(--border-subtle)"></div>',
             badge(L(lang, "npc_badge"), "accent", left=14, top=6),
             button(L(lang, "npc_btn_close"), 64, 24, "secondary", right=8, top=6),
             text(title, "BodyMedium", ink(theme, "voice-npc", a), left=14, top=y, width=380 - 22,
                  extra=f";font-size:{font}px")]
    y += math.ceil(font * 1.25) + 6
    if line:
        lines = max(1, math.ceil(len(line) * font * 0.5 / 358))
        parts.append(text("«" + line + "»", "Body", "text-1", left=14, top=y, width=358, extra=f";font-size:{font}px"))
        y += lines * math.ceil(font * 1.25) + 8
    if kind == "offered":
        items = [(L(lang, "npc_btn_open"), "primary")]
    elif kind == "last":
        items = [(L(lang, "npc_btn_close"), "secondary")]
    else:
        items = [(f"{i + 1}. {c}", "secondary") for i, c in enumerate(choices)]
    for i, (lbl, k) in enumerate(items):
        parts.append(button(lbl, 364, 24, k, hover=hover == i, left=8, top=y))
        y += 28
    h = y + 8
    return (f'<div class="abs" data-theme="{theme}" style="left:{left}px;top:{top}px;width:380px;height:{h}px;'
            f'border-radius:12px;border:1px solid var(--border);background:{surface(theme, a)};box-shadow:var(--shadow)">'
            + "".join(parts) + "</div>")


# ---------------------------------------------------------------------------------------------------------------
# Journal (UI/JournalFrame.lua): 760 x 540; the intro (Small text-2), W.Tabs fitted to 728, the note, one DataTable
# (text flex / date 132 mono / actions 196, rows of 28) down to 100 above the bottom; the summary, Export, Forget
# everything (danger) and Close at the bottom; W.Dialog and W.Toast over it
# ---------------------------------------------------------------------------------------------------------------
J_W, J_H, J_INNER = 760, 540, 728
JOURNAL_TABS = [("memories", "mem_tab_memories"), ("places", "mem_tab_places"), ("flags", "mem_tab_flags"),
                ("session", "mem_tab_session"), ("stories", "arc_tab"), ("songbook", "song_tab"),
                ("relations", "rel_tab"), ("people", "rel_tab_people")]


def tab_pad(labels, inner):
    """W.Tabs:Fit(inner): the padding shared out between the tabs, 16 to 32."""
    used = sum(len(t) * 14 * 0.52 for t in labels)
    n = len(labels)
    return int(max(16, min(32, (inner - 4 * (n - 1) - used) / n)))


def _row_actions(acts, lang):
    """RowUpdate: the buttons from the right margin (-8), each as wide as its word (24 to 110), 4 apart."""
    out, x = [], 8
    for label, kind in reversed(acts):
        w = M.fit_width(label, 24, 110)
        out.append(button(label, w, 24, kind, right=x, top=2))
        x += w + 4
    return "".join(out)


def journal(left, top, tab, rows, lang="en", note=None, lock=None, stats=(14, 2, 9, 3), plain=False, sort=("when", True),
            hover=None, tip=None, dialog_=None, toast_=None, theme=None, reset_enabled=True):
    """rows: [(text, when, [(label, kind)])]. note: an extra note under the tabs (else the tab's own). lock: the key of
    the state of the memory (off / read-only), in warn, over the note. dialog_ = (title, text, confirm); toast_ = text."""
    labels = [(i, L(lang, k)) for i, k in JOURNAL_TABS]
    pad = tab_pad([t for _, t in labels], J_INNER)
    notes = {"session": "mem_session_note", "stories": "arc_note", "songbook": "song_note", "relations": "rel_journal_note",
             "people": "rel_people_note"}
    n = note if note is not None else (L(lang, notes[tab]) if tab in notes else "")
    if lock:
        n = hexed("warn", L(lang, lock)) + ("\n" + n if n else "")
    has_when = any(r[1] for r in rows)
    has_acts = any(r[2] for r in rows)
    cols = [("text", L(lang, "mem_col_text"), None, False)]
    if has_when:
        cols.append(("when", L(lang, "mem_col_when"), 132, True))
    if has_acts:
        cols.append(("acts", "", 196, False))
    data = []
    for text_, when, acts in rows:
        data.append({"text": wow(text_), "when": esc(when or ""), "acts": ""})
    rows_html = table(cols, data, J_INNER, sort=None if plain else sort, row_h=28, hover=hover,
                      empty=L(lang, "mem_empty"), show_head=not plain, extra_style="position:relative;flex:1")
    # the action buttons: drawn per row over the table (they belong to the row's frame)
    head = 0 if plain else 30
    acts_html = "".join(f'<div class="abs" style="left:0;right:0;top:{head + i * 28}px;height:28px">'
                        f'{_row_actions(r[2], lang)}</div>' for i, r in enumerate(rows) if r[2])
    flow = (f'<div class="abs" style="left:16px;top:46px;width:{J_INNER}px;bottom:100px;display:flex;flex-direction:column">'
            + f'<div class="f-Small" style="flex:none;color:var(--text-2)">{wow(L(lang, "mem_intro"))}</div>'
            + f'<div style="flex:none;position:relative;height:44px;margin-top:8px">{tabs(labels, tab, pad=pad * 2, left=0, top=0, right=0)}</div>'
            + (f'<div class="f-Small" style="flex:none;color:var(--text-2);margin-top:6px;white-space:pre-wrap">{wow(n)}</div>' if n else "")
            + f'<div style="position:relative;flex:1;min-height:0;overflow:hidden;margin-top:6px">{rows_html}{acts_html}'
            + (tooltip(tip[1], left=40, top=head + tip[0] * 28 + 30) if tip else "") + "</div></div>")
    st = L(lang, "mem_summary", *stats)
    foot = (text(st, "Small", "text-2", mode="trunc", left=16, bottom=56, width=340)
            + button(L(lang, "mem_export"), 110, 24, "secondary", left=16, bottom=16)
            + button(L(lang, "mem_reset"), 170, 24, "danger", disabled=not reset_enabled, left=136, bottom=16)
            + button(L(lang, "mem_close"), 110, 24, "secondary", right=16, bottom=16))
    over = ""
    if toast_:
        over += toast(toast_, "ok", right=16, bottom=48)
    if dialog_:
        over += dialog(J_W, J_H, dialog_[0], dialog_[1], dialog_[2], L(lang, "dlg_cancel"), width=440)
    return window(left, top, J_W, J_H, L(lang, "mem_title"), flow + foot + over, theme=theme)


def export_window(left, top, s, lang="en", theme=None, toast_=True):
    """The journal's export (600 x 440): the help, a surface-2 field with the text selected, a toast, Close."""
    body = (text(L(lang, "mem_export_help"), "Small", "text-2", left=16, top=46, width=568)
            + f'<div class="abs" style="left:12px;top:68px;right:12px;bottom:48px;border-radius:8px;background:var(--surface-2);'
            f'border:1px solid var(--border)"></div>'
            + f'<div class="abs f-Mono" style="left:16px;top:72px;width:540px;bottom:52px;overflow:hidden;white-space:pre-wrap;'
            f'font-size:12px;color:var(--text-1)"><span style="background:color-mix(in srgb, var(--accent) 30%, transparent)">'
            f'{esc(s)}</span></div>'
            + f'<div class="abs" style="right:16px;top:72px;width:8px;height:120px;border-radius:4px;background:var(--surface-3)"></div>'
            + (toast(L(lang, "mem_toast_export"), "ok", width=380, left=16, bottom=6) if toast_ else "")
            + button(L(lang, "mem_close"), 110, 24, "secondary", right=16, bottom=12))
    return window(left, top, 600, 440, L(lang, "mem_export"), body, theme=theme)


# ---------------------------------------------------------------------------------------------------------------
# Relationships (UI/RelationsFrame.lua): 720 x 680; the intro, W.Tabs at 84 (list / people met / options), the views
# from 136: list (Segmented, label filter, search, sortable table), people met (note, table with + and x), options (two
# columns of buttons), a person's detail (axes as sliders, label, feelings, traits, note, tags, what was seen)
# ---------------------------------------------------------------------------------------------------------------
R_W, R_H, R_INNER, VIEW_TOP = 720, 680, 688, 136
REL_OPTIONS = [("npcAuto", "rel_opt_npc", True), ("proposePlayers", "rel_opt_propose", True),
               ("autoRegisterPlayers", "rel_opt_auto", False), ("attraction", "rel_opt_attraction", False),
               ("recognizeTarget", "rel_opt_target", True), ("proximity", "rel_opt_proximity", False),
               ("sharePlayers", "rel_opt_share", False), ("levelNotices", "rel_opt_levels", True),
               ("promiseNotices", "rel_opt_promises", True), ("favours", "rel_opt_favours", True),
               ("nicknames", "rel_opt_nicknames", True), ("localNotices", "rel_opt_local", True),
               ("eternalGrudge", "rel_opt_grudge", True), ("hostilityNotices", "rel_opt_hostility", True),
               ("companion", "rel_opt_companion", True), ("letters", "rel_opt_letters", True), ("guidAid", "rel_opt_guid", True)]
def _axes():
    """The six axes of Data/Relationships.lua, in order, with their names (the optional attraction axis is off)."""
    import re
    src = open(os.path.join(_ROOT, "AzerothUnspoken", "Data", "Relationships.lua"), encoding="utf-8").read()
    found = re.findall(r'\{ id = "(\w+)", min = (-?\d+), max = (\d+), name = \{ it = "([^"]+)", en = "([^"]+)" \}', src)
    axes = [(a, int(lo), int(hi)) for a, lo, hi, _, _ in found if a != "attraction"][:6]
    names = {"en": {a: en for a, _, _, _, en in found}, "it": {a: it for a, _, _, it, _ in found}}
    return axes, names


AXES, AXIS_NAMES = _axes()


def _rel_frame(view, body, lang, people_count=5, stats=(4, 4, 5), theme=None, over="", footer=True):
    labels = [("list", L(lang, "rel_tab")), ("people", f"{L(lang, 'rel_tab_people')} ({people_count})"),
              ("options", L(lang, "rel_tab_options"))]
    tab_on = "list" if view == "detail" else view
    head = (text(L(lang, "rel_intro"), "Small", "text-2", left=16, top=46, width=R_INNER)
            + tabs(labels, tab_on, left=16, top=84, width=R_INNER))
    foot = ""
    if footer:
        foot = (text(L(lang, "rel_summary", *stats), "Small", "text-2", left=16, bottom=56, width=R_INNER)
                + button(L(lang, "rel_export"), 110, 24, "secondary", left=16, bottom=16)
                + button(L(lang, "rel_reset"), 190, 24, "danger", left=134, bottom=16)
                + button(L(lang, "rel_close"), 110, 24, "secondary", right=16, bottom=16))
    return window(0, 0, R_W, R_H, L(lang, "rel_title"), head + body + foot + over, theme=theme)


def relations_list(rows, lang="en", hover=None, kind="all", theme=None, sort=("last", True)):
    """rows: [(name, kind npc|player, label, disposition, last, count, disposition token)]"""
    cols = [("name", L(lang, "rel_col_name"), None, False), ("kind", L(lang, "rel_col_kind"), 76, False),
            ("label", L(lang, "rel_col_label"), 124, False), ("disposition", L(lang, "rel_col_disposition"), 128, False),
            ("last", L(lang, "rel_col_last"), 92, True), ("count", L(lang, "rel_col_count"), 76, True)]
    data = [{"name": esc(n), "kind": esc(L(lang, "rel_kind_" + k)), "label": esc(lab),
             "disposition": f'<span style="color:var(--{tok})">{esc(d)}</span>', "last": esc(last),
             "count": f'<span style="margin-left:auto;padding-right:8px">{c}</span>'}
            for n, k, lab, d, last, c, tok in rows]
    body = (segmented([("all", L(lang, "rel_filter_all")), ("npc", L(lang, "rel_filter_npcs")),
                       ("player", L(lang, "rel_filter_players"))], kind, left=16, top=VIEW_TOP)
            + button(L(lang, "rel_filter_label_any"), 190, 24, "secondary", left=252, top=VIEW_TOP + 4)
            + text(L(lang, "rel_search"), "BodyMedium", "accent-text", left=436, top=VIEW_TOP + 8, width=60,
                   extra=";text-align:right")
            + editbox("", 180, 24, left=504, top=VIEW_TOP + 4)
            + table(cols, data, R_INNER, height=R_H - (VIEW_TOP + 40) - 104, sort=sort, hover=hover,
                    empty=L(lang, "rel_empty"), left=16, top=VIEW_TOP + 40))
    return body


def relations_people(cands, lang="en", theme=None):
    """cands: [(name, source)]: questions about identity first; + and x on every row."""
    cols = [("name", L(lang, "rel_col_name"), None, False), ("source", L(lang, "rel_col_source"), 200, False),
            ("acts", "", 76, False)]
    data = [{"name": wow(n), "source": esc(s or ""), "acts": ""} for n, s in cands]
    acts = "".join(f'<div class="abs" style="left:16px;width:{R_INNER}px;top:{VIEW_TOP + 80 + 30 + i * 32}px;height:32px">'
                   + button("+", 28, 24, "secondary", right=40, top=4) + button("x", 28, 24, "secondary", right=8, top=4)
                   + "</div>" for i in range(len(cands)))
    return (text(L(lang, "rel_add_player"), "BodyMedium", "accent-text", left=16, top=VIEW_TOP + 5, width=110)
            + editbox("", 220, 24, left=130, top=VIEW_TOP)
            + button(L(lang, "rel_add_btn"), 130, 24, "primary", left=358, top=VIEW_TOP)
            + text(L(lang, "rel_people_note"), "Small", "text-2", left=16, top=VIEW_TOP + 38, width=R_INNER)
            + table(cols, data, R_INNER, height=R_H - (VIEW_TOP + 80) - 104, sort=("name", False),
                    empty=L(lang, "rel_no_candidates"), left=16, top=VIEW_TOP + 80) + acts)


def relations_options(lang="en", states=None, armed=None):
    states = states or {}
    col_w = (R_INNER - 16) // 2
    out = []
    for i, (key, label, default) in enumerate(REL_OPTIONS):
        on = states.get(key, default)
        lbl = f"{L(lang, label)}: {L(lang, 'on' if on else 'off')}"
        out.append(button(lbl, col_w, 24, "secondary", selected=on, armed=armed == key,
                          left=16 + (i % 2) * (col_w + 16), top=VIEW_TOP + (i // 2) * 30))
    y = VIEW_TOP + math.ceil(len(REL_OPTIONS) / 2) * 30 + 8
    out.append(text(L(lang, "rel_options_hint"), "Small", "text-2", left=16, top=y, width=R_INNER))
    out.append(text(L(lang, "rel_privacy"), "Small", "text-2", left=16, top=y + 58, width=R_INNER))
    return "".join(out)


def relations_detail(d, lang="en"):
    """d: name, summary, scope, label, axes (6 values), label_btn, feeling1, feeling2, traits (5 strings), note, tags,
    seen_line, seen_facts, knows (two texts or None)."""
    cap = lambda s, **p: text(s, "BodyMedium", "accent-text", **p)  # noqa: E731
    out = [text(d["name"], "H1", "text-1", left=16, top=VIEW_TOP, width=400),
           text(d["summary"], "Body", "text-1", mode="trunc", left=16, top=VIEW_TOP + 26, width=R_INNER),
           button(d.get("scope", L(lang, "rel_scope_btn_character")), 220, 24, "secondary", right=16, top=VIEW_TOP - 2),
           cap(L(lang, "rel_section_user"), left=16, top=184, width=340)]
    for i, (axis, lo, hi) in enumerate(AXES):
        y = 184 + 20 + i * 26
        v = d["axes"][i]
        out += [cap(AXIS_NAMES[lang][axis], mode="trunc", left=16, top=y + 5, width=92),
                slider(v, lo, hi, 150, left=112, top=y + 4),
                text(str(v), "Mono", "accent-text", left=266, top=y + 5, width=34, extra=";text-align:right"),
                button("-", 24, 24, "secondary", left=306, top=y), button("+", 24, 24, "secondary", left=332, top=y)]
    y = 184 + 20 + 6 * 26 + 4
    out += [cap(L(lang, "rel_label"), mode="trunc", left=16, top=y + 5, width=92),
            button(d["label_btn"], 244, 24, "secondary", left=112, top=y)]
    y += 28
    out += [editbox(d.get("custom", ""), 244, 22, left=112, top=y)]
    y += 30
    out += [cap(L(lang, "rel_feeling"), mode="trunc", left=16, top=y + 5, width=92),
            button(d["feeling1"], 244, 24, "secondary", left=112, top=y)]
    y += 28
    out += [button(d["feeling2"], 120, 24, "secondary", left=112, top=y),
            button(L(lang, "rel_feeling_preset"), 120, 24, "ghost", left=236, top=y)]
    ry = 184
    out.append(cap(L(lang, "rel_traits_title"), left=372, top=ry, width=332))
    ry += 20
    for t in d["traits"]:
        out.append(button(t, 332, 24, "secondary", left=372, top=ry))
        ry += 28
    ry += 6
    out += [cap(L(lang, "rel_note"), left=372, top=ry, width=332), editbox(d.get("note", ""), 332, 22, left=372, top=ry + 18)]
    ry += 48
    out += [cap(L(lang, "rel_tags"), left=372, top=ry, width=332), editbox(d.get("tags", ""), 332, 22, left=372, top=ry + 18)]
    # what was observed (SEEN_Y 512): for an NPC the same block says what the addon knows (level, temperament, then the
    # first meeting, the nickname, the favours, the town, the grudge: RefreshDetail)
    knows = d.get("knows")
    out += [cap(L(lang, "rel_section_npc" if knows else "rel_section_seen"), left=16, top=512, width=R_INNER),
            text(knows[0] if knows else d["seen_line"], "Small", "text-2", left=16, top=532, width=340),
            text(knows[1] if knows else d["seen_facts"], "Small", "text-2", left=372, top=532, width=332)]
    return "".join(out)


def relations(view, lang="en", rows=None, cands=None, detail=None, hover=None, armed=None, states=None, theme=None,
              left=40, top=40, over="", people_count=5):
    if view == "list":
        body = relations_list(rows or [], lang, hover)
    elif view == "people":
        body = relations_people(cands or [], lang)
    elif view == "options":
        body = relations_options(lang, states, armed)
    else:
        body = relations_detail(detail, lang)
    footer = view != "detail"
    if view == "detail":
        npc = bool(detail.get("knows"))   # an NPC has no observations to forget (dForget hidden)
        body += (button(L(lang, "rel_back"), 150, 24, "secondary", left=16, bottom=16)
                 + ("" if npc else button(L(lang, "rel_forget"), 200, 24, "danger", left=176, bottom=16))
                 + button(L(lang, "rel_delete"), 200, 24, "danger", left=176 if npc else 386, bottom=16)
                 + button(L(lang, "rel_close"), 110, 24, "secondary", right=16, bottom=16))
    html_ = _rel_frame(view, body, lang, people_count=people_count, theme=theme, over=over, footer=footer)
    return f'<div class="abs" style="left:{left}px;top:{top}px">{html_}</div>'


# ---------------------------------------------------------------------------------------------------------------
# Character soul (UI/ProfileFrame.lua): 700 wide, about 715 tall; the intro, a Section (archetype, how many traits are
# chosen with a ThinBar, one row of 26 per trait: label, slider 236 or value button, the value in mono accent-text, the
# "x" at 532, the source badge at 562), a Section of topics to avoid (132-wide buttons, 4 a line), the footer
# ---------------------------------------------------------------------------------------------------------------
P_W = 700
SOURCE_TONE = {"explicit": "accent", "trp3": "ok", "game": "neutral", None: "neutral"}


def profile(rows, avoided, lang="en", trp3=True, archetype=None, arch_help=None, culture="human", chosen=7,
            dialog_=False, toast_=None, theme=None, left=30, top=40):
    """rows: [(trait id, value or None (a value button), shown value, source or None)]."""
    sec_w = P_W - 32
    out = [text(L(lang, "soul_intro"), "Small", "text-2", left=16, top=46, width=668)]
    y = 46 + _lines(L(lang, "soul_intro"), 668, 12) * 15 + 10   # ProfileFrame:Layout: the sections under the measured intro
    # section A
    h = 44 + 34 + 24 + 26 * (len(rows) + 1) + 12
    rows_html = [text(L(lang, "soul_archetype"), "BodyMedium", "text-1", left=16, top=44 + 5, width=150),
                 button(archetype or L(lang, "soul_arch_traveler"), 170, 24, "secondary", left=170, top=44),
                 text(arch_help or "", "Small", "text-2", left=348, top=46, width=300)]
    sy = 44 + 34
    rows_html += [text(L(lang, "soul_progress", chosen, len(rows) + 1), "Small", "text-2", left=16, top=sy + 2, width=190),
                  thinbar(chosen / (len(rows) + 1), 236, 4, left=210, top=sy + 8)]
    sy += 24
    for tid, value, shown, source in rows:
        rows_html.append(text(L(lang, "trait_" + tid), "BodyMedium", "text-1", mode="trunc", left=16, top=sy + 5, width=150))
        if value is None:
            rows_html.append(button(shown, 170, 24, "secondary", left=170, top=sy))
        else:
            rows_html += [slider(value, 0, 100, 236, left=170, top=sy + 4),
                          text(shown, "Mono", "accent-text" if source else "text-3", mode="trunc", left=412, top=sy + 5, width=116)]
        if source == "explicit":
            rows_html.append(button("x", 24, 24, "secondary", left=532, top=sy))
        rows_html.append(f'<div class="abs" style="left:562px;top:{sy}px">{badge(L(lang, "soul_src_" + (source or "neutral")), SOURCE_TONE[source])}</div>')
        sy += 26
    rows_html.append(text(L(lang, "soul_culture"), "BodyMedium", "text-1", left=16, top=sy + 5, width=150))
    rows_html.append(button(L(lang, "culture_" + culture) if culture else L(lang, "soul_none"), 170, 24, "secondary", left=170, top=sy))
    if culture:
        rows_html.append(button("x", 24, 24, "secondary", left=532, top=sy))
    rows_html.append(f'<div class="abs" style="left:562px;top:{sy}px">'
                     f'{badge(L(lang, "soul_src_explicit" if culture else "soul_src_neutral"), "accent" if culture else "neutral")}</div>')
    out.append(section(sec_w, h, L(lang, "soul_section_traits"), "".join(rows_html), left=16, top=y))
    y += h + 10
    topics = ["death", "blood", "betrayal", "family", "religion", "undead", "demons", "romance"]
    t_html = "".join(button(L(lang, "trait_avoid_" + tp) if M.has_key("trait_avoid_" + tp) else tp, 132, 24, "secondary",
                            selected=tp in avoided, left=16 + (i % 4) * 160, top=44 + (i // 4) * 28)
                     for i, tp in enumerate(topics))
    out.append(section(sec_w, 44 + 56 + 12, L(lang, "soul_avoid_title"), t_html, left=16, top=y))
    y += 44 + 56 + 12
    height = y + 48 + 8
    out += [button(L(lang, "soul_reset"), 220, 24, "danger", left=16, bottom=16)]
    if trp3:
        out.append(button(f"{L(lang, 'soul_trp3_consent')}: {L(lang, 'off')}", 250, 24, "secondary", left=248, bottom=16))
    out.append(button(L(lang, "soul_close"), 110, 24, "secondary", right=16, bottom=16))
    if toast_:
        out.append(toast(toast_, "ok", right=16, top=56))
    if dialog_:
        out.append(dialog(P_W, height, L(lang, "soul_reset_dlg"), L(lang, "soul_reset_dlg_text"), L(lang, "soul_reset"),
                          L(lang, "dlg_cancel"), width=440))
    return f'<div class="abs" style="left:{left}px;top:{top}px">' + window(0, 0, P_W, height, L(lang, "soul_title"), "".join(out), theme=theme) + "</div>", height


# ---------------------------------------------------------------------------------------------------------------
# First-run guide (UI/Wizard.lua): 520 x 500 (it grows to fit a page); the numbered Segmented under the title bar (one
# segment a page, a skipped page hidden), the page from 88 laid out top-down (heading H1, texts, cards), a rule 52 above
# the bottom, Skip (text) / Back / Next (primary)
# ---------------------------------------------------------------------------------------------------------------
WIZ_W, WIZ_INNER = 520, 480
DEFAULTS = {"preset": "complete", "intensity": 50, "proseDepth": "literary", "chatMode": "PRIVATE"}
LANG_NAMES = {"en": "English", "it": "Italiano"}
MODES = ["PRIVATE", "PREVIEW", "CONFIRM_TO_SEND", "AUTO_ONLY_IF_ALLOWED"]
MODULES = [("personal", True), ("world", True), ("npc", True), ("memory", True), ("relations", True),
           ("storyArcs", True), ("social", True), ("audio", False)]
LIVE = {"personal", "world", "npc", "memory", "relations", "storyArcs"}


def fcard(title, sub, on=False, tag=None, big=False, width=WIZ_INNER, min_h=0, extra=""):
    """A W.Card in the page's flow (Card:Fit: title, 4, the description, 10)."""
    t = title + (f"  {hexed('accent-text', '(' + tag + ')')}" if tag else "")
    return (f'<div class="card{" on" if on else ""}" style="position:relative;width:{width}px;min-height:{min_h}px;'
            f'padding:8px 30px 10px 12px;{extra}"><div class="mk"></div>'
            f'<div class="f-BodyMedium" style="color:var(--text-1);white-space:pre;overflow:hidden">{wow(t)}</div>'
            f'<div class="{"f-Body" if big else "f-Small"}" style="color:var(--text-2);margin-top:4px;white-space:pre-wrap">'
            f'{wow(sub)}</div></div>')


def ftext(s, style_="body", width=WIZ_INNER):
    font, token = {"body": ("Body", "text-1"), "small": ("Small", "text-2"), "label": ("Eyebrow", "accent-text"),
                   "title": ("H1", "text-1"), "number": ("MonoMedium", "accent-text")}[style_]
    return (f'<div class="f-{font}" style="color:var(--{token});width:{width}px;white-space:pre-wrap">{wow(s)}</div>')


def wizard(step, lang="en", trp3=False, left=0, top=0, mode=0, intensity=50, auto_state="", trp3_others="",
           name_on=False, theme=None, height=None, over=""):
    T = lambda key, *a: L(lang, key, *a)  # noqa: E731
    visible = [s for s in range(1, 9) if trp3 or s != 6]
    number, total = visible.index(step) + 1, len(visible)
    heads = {1: "wiz_step_language", 2: "wiz_step_preset", 3: "wiz_step_intensity", 4: "wiz_step_depth",
             5: "wiz_step_modules", 6: "wiz_step_trp3", 7: "wiz_step_chat", 8: "wiz_step_keys"}
    c = [ftext(T(heads[step]), "title")]
    if step == 1:
        c.append(ftext(T("wiz_welcome_text")))
        c.append(f'<div style="position:relative;width:{WIZ_INNER}px;min-height:52px;border-radius:12px;background:var(--bg);'
                 f'border:1px solid var(--border-strong);padding:7px 12px 8px 14px">'
                 f'<div class="abs" style="left:0;top:12px;bottom:12px;width:3px;background:var(--voice-narrator)"></div>'
                 f'<div class="f-BodyMedium" style="color:var(--voice-narrator)">{esc(T("voice_narrator"))}</div>'
                 f'<div class="f-Body" style="color:var(--voice-narrator)">{esc(T("wiz_sample", "Elyra"))}</div></div>')
        c.append(ftext(T("wiz_language_label"), "label"))
        c.append(f'<div style="position:relative;height:64px">'
                 + choicelist([(code, LANG_NAMES[code]) for code in ("en", "it")], lang, WIZ_INNER, rows=2, row_h=28, left=0, top=0)
                 + "</div>")
        c.append(ftext(T("wiz_language_help"), "small"))
    elif step == 2:
        c.append(ftext(T("wiz_preset_help"), "small"))
        for name in ("complete", "personal", "world", "social"):
            d = name == DEFAULTS["preset"]
            c.append(fcard(T("preset_" + name), T("preset_" + name + "_help"), on=d, tag=T("wiz_default_tag") if d else None))
    elif step == 3:
        c.append(ftext(T("wiz_intensity_help")))
        c.append(f'<div style="position:relative;height:30px">' + button("-", 30, 26, "secondary", left=0, top=0)
                 + text(str(intensity), "MonoMedium", "accent-text", left=36, top=4, width=60, extra=";text-align:center")
                 + button("+", 30, 26, "secondary", left=102, top=0) + "</div>")
        c.append(ftext(T("intensity_band_3") + "\n\n" + T("wiz_suggested")))
    elif step == 4:
        c.append(ftext(T("wiz_depth_help"), "small"))
        for dep in ("natural", "literary", "elevated"):
            d = dep == DEFAULTS["proseDepth"]
            c.append(fcard(T("depth_" + dep), T(f"depth_{dep}_example"), on=d, tag=T("wiz_default_tag") if d else None, min_h=70))
    elif step == 5:
        c.append(ftext(T("wiz_modules_help"), "small"))
        cards = "".join(fcard(T("module_" + m) + ("" if m in LIVE else " *"), T("on" if on else "off"), on=on,
                              width=(WIZ_INNER - 8) // 2, min_h=44) for m, on in MODULES)
        c.append(f'<div style="display:flex;flex-wrap:wrap;gap:8px;width:{WIZ_INNER}px">{cards}</div>')
        c.append(ftext(T("wiz_social_consent")))
    elif step == 6:
        c.append(ftext(T("wiz_trp3_help")))
        c.append(fcard(T("opt_rpname"), T("on" if name_on else "off"), on=name_on, min_h=62))
        if trp3_others == "needs":
            state, on = T("consent_on_needs", T("opt_rpname")), True
        else:
            state, on = T("off"), False
        c.append(fcard(T("opt_trp3_others"), state + ". " + T("wiz_trp3_others_help"), on=on, big=True, min_h=112))
    elif step == 7:
        c.append(ftext(T("wiz_chat_help")))
        for i, m in enumerate(MODES):
            sub = T("wiz_mode_" + m)
            if m == "AUTO_ONLY_IF_ALLOWED" and auto_state:
                sub += " " + T("consent_off_" + auto_state)
            c.append(fcard(T(f"chatmode_{m}_short"), sub, on=i == mode, big=True,
                           tag=T("wiz_default_tag") if m == DEFAULTS["chatMode"] else None,
                           min_h=74 if m == "AUTO_ONLY_IF_ALLOWED" else 50, extra="margin-bottom:-4px"))
        c.append(f'<div style="position:relative;height:30px;margin-top:4px">' + button(T("wiz_test"), 200, 26, "secondary", left=0, top=0)
                 + text(T("wiz_test_hint"), "Small", "text-2", left=212, top=4, width=268) + "</div>")
    elif step == 8:
        c.append(ftext("\n".join([T("wiz_keys_intro")] + [T("wiz_key_" + k) for k in ("speak", "pause", "reroll", "npc")])))
        c.append(ftext(T("wiz_where", T("on"))))
        c.append(ftext(T("wiz_defaults", 50, 45, 25, T("chatmode_PRIVATE_short"), T("on"), T("off"), T("off"), T("off")), "small"))
        c.append(f'<div style="position:relative;height:28px">' + button(T("wiz_open_bindings"), 200, 26, "secondary", left=0, top=0)
                 + button(T("wiz_open_settings"), 200, 26, "secondary", left=208, top=0) + "</div>")
    h = height or {1: 500, 2: 500, 3: 500, 4: 500, 5: 520, 6: 500, 7: 560, 8: 500}[step]
    steps = [(str(i + 1), str(i + 1)) for i in range(total)]
    content = (f'<div class="abs" style="left:20px;top:88px;width:{WIZ_INNER}px;display:flex;flex-direction:column;gap:8px">'
               + "".join(c) + "</div>")
    chrome = (f'<div class="abs" style="left:0;right:0;top:44px;display:flex;justify-content:center">'
              f'{segmented(steps, str(number), inline=True)}</div>'
              + '<div class="abs" style="left:1px;right:1px;bottom:52px;height:1px;background:var(--border)"></div>'
              + button(T("wiz_skip"), 200, 24, "text", left=16, bottom=14)
              + button(T("wiz_finish") if number == total else T("wiz_next"), 110, 24, "primary", right=16, bottom=14)
              + (button(T("wiz_back"), 90, 24, "secondary", right=134, bottom=14) if number > 1 else ""))
    win = window(0, 0, WIZ_W, h, T("wiz_title"), content + chrome + over, status=T("wiz_step", number, total), theme=theme)
    return f'<div class="abs" style="left:{left}px;top:{top}px">{win}</div>'


# ---------------------------------------------------------------------------------------------------------------
# Settings (UI/SettingsFrame.lua): a canvas in the client's Settings window; the title (H1) at (16, 16), the content
# (640 wide) scrolls under it in seven W.Sections (General, Appearance, Chat, Narrator, Modules, Privacy, Info): a label
# (BodyMedium) at 16 and its control at 240 (a Switch with its word, a Segmented, a value button 220 wide, a slider 220
# with its value in mono), the buttons that open something two on a line (280 wide). Info: the made-by line and the
# NEBULA thanks beside the 96-unit NEBULA logo (dark art on Nebula, light on Aurora), licence, notice and hint, four
# read-only boxes with the links.
# ---------------------------------------------------------------------------------------------------------------
S_CONTENT, S_SEC, LABEL_X, CONTROL_X = 640, 608, 16, 240
SECTION_TOP = {}
SETTINGS_SECTIONS = ("general", "look", "chat", "narrator", "modules", "privacy", "info")
S_MODULES = ["personal", "world", "npc", "memory", "emotion", "relations", "storyArcs", "social", "publicChat", "audio"]
S_MODULES_ON = {"personal", "world", "npc", "memory", "emotion", "relations", "storyArcs", "social"}
S_LIVE = {"personal", "world", "npc", "memory", "storyArcs", "relations", "emotion", "publicChat"}
LINKS = [("repo", "https://github.com/Finland6738/azeroth-unspoken"),
         ("issues", "https://github.com/Finland6738/azeroth-unspoken/issues"),
         ("site", "https://nebula-community.github.io/giochi/wow-forever/"), ("kofi", "https://ko-fi.com/finland6738")]


def _lines(s, width, size=13):
    return sum(max(1, math.ceil(len(part) * size * 0.5 / width)) for part in s.split("\n"))


def settings_content(lang="en", theme="nebula", reload_needed=False, others_state=None, auto_state=None, rpname=True):
    T = lambda key, *a: L(lang, key, *a)  # noqa: E731
    out, cy = [], 4
    on_off = lambda v: T("on" if v else "off")  # noqa: E731

    def label(key, sy, x=LABEL_X, w=CONTROL_X - LABEL_X - 8):
        return text(T(key), "BodyMedium", "text-1", mode="trunc", left=x, top=sy + 5, width=w)

    def sec(key, rows_fn):
        nonlocal cy
        SECTION_TOP[key] = cy
        parts, sy = rows_fn(W_SECTION_TOP)
        out.append(section(S_SEC, sy + 16, T("opt_section_" + key), parts, left=16, top=cy))
        cy += sy + 16 + 10

    def sw(key, on, sy, x=LABEL_X, cx=CONTROL_X, lw=None):
        return (label(key, sy, x, lw or (cx - x - 8)) + switch(on, left=cx, top=sy - 1)
                + text(on_off(on), "Body", "text-2", left=cx + 52, top=sy + 5, width=90))

    def toggle(key, value, sy):
        return label(key, sy) + button(value, 220, 24, "secondary", left=CONTROL_X, top=sy)

    def seg(key, items, active, sy):
        return label(key, sy) + segmented(items, active, left=CONTROL_X, top=sy - 3)

    def slide(key, v, lo, hi, shown, sy):
        return label(key, sy) + slider(v, lo, hi, 220, left=CONTROL_X, top=sy + 4) + \
            text(shown, "Mono", "accent-text", left=CONTROL_X + 232, top=sy + 5, width=90)

    def actions(keys, sy):
        html_, n = "", 0
        for i, k in enumerate(keys):
            col = i % 2
            html_ += button(T(k), 280, 24, "secondary", left=LABEL_X + col * 288, top=sy)
            if col == 1 or i == len(keys) - 1:
                sy += 28
        return html_, sy

    def general(sy):
        p = sw("opt_enabled", True, sy)
        sy += 28
        p += toggle("opt_language", LANG_NAMES[lang], sy)
        if reload_needed:
            p += button(T("packs_reload_btn"), 82, 24, "primary", left=CONTROL_X + 228, top=sy)
        sy += 28
        p += slide("opt_intensity", 50, 0, 100, "50", sy)
        sy += 28
        p += seg("opt_depth", [(d, T("depth_" + d)) for d in ("natural", "literary", "elevated")], "literary", sy)
        sy += 36
        p += seg("opt_literary", [(f, T("literary_" + f)) for f in ("never", "rare", "normal")], "normal", sy)
        sy += 36
        p += toggle("opt_cooldown", "45 s", sy)
        sy += 28
        p += slide("opt_scale", 100, 80, 150, "100%", sy)
        sy += 28
        a, sy = actions(["opt_journal", "opt_relations", "opt_soul", "opt_wizard"], sy)
        return p + a, sy

    def look(sy):
        p = seg("opt_theme", [("nebula", T("theme_nebula")), ("aurora", T("theme_aurora"))], theme, sy)
        sy += 36
        p += sw("opt_neon", True, sy)
        sy += 28
        p += sw("opt_motion", True, sy)
        sy += 28
        p += seg("opt_font", [("addon", T("font_addon")), ("game", T("font_game"))], "addon", sy)
        sy += 36
        a, sy = actions(["opt_resetwindows"], sy)
        return p + a, sy

    def chat(sy):
        p = toggle("opt_chatmode", T("chatmode_PRIVATE_short"), sy)
        sy += 28
        p += toggle("opt_channel", T("channel_auto"), sy)
        sy += 28
        p += seg("opt_waits", [("25", "25 s"), ("60", "60 s"), ("120", "120 s"), ("0", T("waits_forever"))], "25", sy)
        sy += 36
        p += sw("opt_button", True, sy)
        sy += 28
        return p, sy

    def narrator_(sy):
        p = sw("opt_narrator", True, sy)
        sy += 28
        p += slide("opt_duration", 8, 2, 30, "8 s", sy)
        sy += 28
        p += toggle("opt_reading", T("reading_cps", 14), sy)
        sy += 28
        p += slide("opt_alpha", 80, 55, 100, "80%", sy)
        sy += 28
        p += slide("opt_fontsize", 14, 10, 28, "14", sy)
        sy += 28
        p += sw("opt_locked", False, sy)
        sy += 28
        p += toggle("opt_combat", T("combat_hold"), sy)
        sy += 28
        p += slide("opt_dialogue_size", 13, 10, 24, "13", sy)
        sy += 28
        p += slide("opt_dialogue_alpha", 92, 30, 100, "92%", sy)
        sy += 28
        a, sy = actions(["opt_pause", "opt_test", "opt_history", "opt_resetpos"], sy)
        return p + a, sy

    def modules(sy):
        p = text(T("opt_modules_note"), "Small", "text-2", left=LABEL_X, top=sy, width=S_SEC - 32)
        sy += 20
        for i, m in enumerate(S_MODULES):
            col = i % 2
            x = LABEL_X + col * 292
            name = T("module_" + m) + ("" if m in S_LIVE else " *")
            p += (text(name, "BodyMedium", "text-1", mode="trunc", left=x, top=sy + 5, width=150)
                  + switch(m in S_MODULES_ON, left=x + 160, top=sy - 1)
                  + text(on_off(m in S_MODULES_ON), "Body", "text-2", left=x + 212, top=sy + 5, width=70))
            if col == 1:
                sy += 28
        return p, sy

    def privacy(sy):
        p = toggle("opt_auto", T("consent_off_" + auto_state) if auto_state else T("off"), sy)
        sy += 28
        p += toggle("opt_trp3_others", others_state or T("off"), sy)
        sy += 28
        p += sw("opt_rpname", rpname, sy)
        sy += 28
        p += toggle("opt_namestyle", T("namestyle_first"), sy)
        sy += 28
        return p, sy

    def info(sy):
        top = sy
        p = ""
        for key, font, tok in (("info_made_by", "BodyMedium", "text-1"), ("info_nebula", "Body", "text-2")):
            p += text(T(key), font, tok, left=LABEL_X, top=sy, width=464)
            sy += _lines(T(key), 464) * 17 + 6
        p += (f'<img class="abs" alt="NEBULA" src="{M.asset(M.NEBULA_LOGO[theme])}" '
              f'style="right:{LABEL_X}px;top:{top + 2}px;width:96px;height:96px;object-fit:contain">')
        sy = max(sy, top + 2 + 96 + 8)
        for key in ("info_licence", "info_fanmade", "info_copy_hint"):
            p += text(T(key), "Small", "text-3", left=LABEL_X, top=sy, width=576)
            sy += _lines(T(key), 576, 12) * 15 + 6
        sy += 4
        for lid, url in LINKS:
            p += label("opt_link_" + lid, sy) + editbox(url, S_SEC - CONTROL_X - LABEL_X, 24, left=CONTROL_X, top=sy, font="Body")
            sy += 28
        return p, sy

    for key, fn in (("general", general), ("look", look), ("chat", chat), ("narrator", narrator_), ("modules", modules),
                    ("privacy", privacy), ("info", info)):
        sec(key, fn)
    help_ = T("panel_help", 1291, 9)
    if reload_needed:
        help_ = hexed("warn", T("packs_reload_needed", LANG_NAMES["it" if lang == "en" else "en"], LANG_NAMES[lang])) + "\n\n" + help_
    out.append(text(help_, "Body", "text-2", left=LABEL_X, top=cy + 2, width=S_CONTENT - 32))
    cy += 2 + _lines(help_, S_CONTENT - 32) * 17 + 16
    return "".join(out), cy


W_SECTION_TOP = 44


def settings(left, top, lang="en", theme="nebula", view=None, scroll=0, over="", **kw):
    """The page inside a plain stand-in of the client's Settings window. view: the height of the canvas that shows
    (None: unrolled, the whole content at once); scroll: how far the content is scrolled."""
    content, h = settings_content(lang, theme, **kw)
    canvas_h = view if view else h + 44 + 8
    inner = (text(f"{M.SUBTITLE.replace('  ', ' ')}", "H1", "text-1", left=16, top=16)
             + f'<div class="abs" style="left:0;top:44px;width:{S_CONTENT}px;bottom:8px;overflow:hidden">'
             + f'<div class="abs" style="left:0;top:{-scroll}px;width:{S_CONTENT}px;height:{h}px">{content}</div></div>')
    bar = ""
    if view:
        frac = min(1, (view - 52) / h)
        pos = (scroll / max(1, h - (view - 52))) * (1 - frac)
        bar = (f'<div class="scrollbar" style="left:{170 + S_CONTENT + 12}px;top:{36 + 48}px;height:{view - 60}px">'
               f'<i style="top:{pos * 100:.1f}%;height:{frac * 100:.1f}%"></i></div>')
    canvas = (f'<div class="abs" data-theme="{theme}" style="left:170px;top:36px;width:{S_CONTENT + 30}px;height:{canvas_h}px;'
              f'background:var(--bg);border-radius:6px">{inner}</div>')
    client = (f'<div class="client" style="left:{left}px;top:{top}px;width:{S_CONTENT + 30 + 180}px;height:{canvas_h + 46}px">'
              f'<div class="nav"><i></i><i></i><b>Azeroth Unspoken</b><i></i></div>{canvas}{bar}{over}</div>')
    return client, canvas_h + 46
