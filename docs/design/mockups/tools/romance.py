"""The PROPOSED mockups of active romance (ADR 0060, step R0): nothing here is built yet.

Each page is drawn on the real widgets and tokens of tools/mockup_lib.py and the windows of components.py, plus what ADR
0060 adds: the voice token `voice-romance` (defined on each page here, not in mockups.css, until UI/Theme.lua has it in
step R2), the flirt answers of the dialogue, the romance popup and the Settings section with the 18+ consent. The interface
texts of romance are proposals in English (the locale files get them in R2-R3); every other text is read from the locale
files. Names are invented. Every page carries the PROPOSED badge.
"""
import math

import mockup_lib as M
from components import (CONTROL_X, LABEL_X, S_CONTENT, S_SEC, dialogue, floor, ink, journal, narrator, surface,
                        _icon_button)
from mockup_lib import L, badge, button, esc, icon, section, segmented, switch, text, tooltip, wow

# the proposed voice token (ADR 0060 §9): coral in Nebula, brick red in Aurora
ROMANCE = {"nebula": "#FF7F6E", "aurora": "#A3301F"}
for _theme, _value in ROMANCE.items():
    M.THEMES[_theme].setdefault("voice-romance", _value)   # for ink(): the contrast test of the voices

NPC = "Maren Holloway"                        # invented
NPC_TITLE = "Innkeeper · " + NPC
L_NPC = "Welcome, traveler. There's room by the fire, if the road has worn you down."  # npcd.innkeeper.open.n1
ANSWERS = ["What news is going round?", "I am looking for a place to rest.", "Farewell."]   # the innkeeper's script
FLIRTS = ["Say the fire is not the warmest thing in the room.", "Hold her gaze a moment longer."]
TIP_FLIRT = f"A romantic answer: {NPC.split()[0]} may welcome it, stay cold or refuse."
REFUSAL = "You're kind. But I'd sooner we kept to the fire and the news, if it's all the same to you."
INNER_REFUSED = "Not every door opens. This one stays a friend's door, and that is no small thing."
TONES = {1: "Courteous", 2: "Intimate", 3: "Explicit"}
CAPTION = "Proposed for ADR 0060 (not built): the romance texts are samples; the names are invented."


def themed_vars(theme, body):
    """The page's own definition of the proposed token, around everything drawn."""
    return f'<div style="--voice-romance:{ROMANCE[theme]}">{body}</div>'


def flirt_button(label, y, hover=False, theme="nebula", width=364, left=8, chip=None):
    """The proposed FlatButton kind `romance`: the secondary surface, a voice-romance border, the heart of the icon sheet
    at 8 units, the label at 28 in voice-romance ink (text-1 when the contrast test fails). chip: a tier word at the right."""
    a = 0.92
    tok = ink(theme, "voice-romance", a)
    bg = "var(--surface-2)" if hover else "var(--surface-3)"
    tier = (f'<span class="badge" style="position:absolute;right:6px;top:2px;height:20px;padding:0 8px;font-size:11px;'
            f'--tone:var(--voice-romance)">{esc(chip)}</span>') if chip else ""
    return (f'<div class="fb secondary" style="left:{left}px;top:{y}px;width:{width}px;height:24px;background:{bg};'
            f'border-color:var(--voice-romance);gap:6px">'
            f'{icon("heart", 14, "voice-romance")}'
            f'<span class="lbl" style="color:var(--{tok})">{esc(label)}</span>{tier}</div>')


def dialogue_flirts(left, top, line, answers, flirts, hover=None, theme="nebula", lang="en", font=13):
    """The dialogue window (components.dialogue) with the flirt answers after the neutral ones, numbered after them."""
    base = dialogue(left, top, NPC_TITLE, line=line, choices=answers, theme=theme, lang=lang)
    # the frame's height as dialogue() works it out, plus 28 per flirt
    y = 36 + 6 + math.ceil(font * 1.25) + 6
    lines = max(1, math.ceil(len(line) * font * 0.5 / 358))
    y += lines * math.ceil(font * 1.25) + 8 + 28 * len(answers)
    extra = "".join(flirt_button(f"{len(answers) + i + 1}. {f}", y + 28 * i, hover == i, theme) for i, f in enumerate(flirts))
    h = y + 28 * len(flirts) + 8
    base = base.replace("height:", f"height:{h}px;--old-h:", 1) if flirts else base
    return base[: base.rfind("</div>")] + extra + "</div>", h


def popup(left, top, s, tone=1, choices=(), stack=(), after=None, theme="nebula", lang="en", font=14, faded=None,
          close_label="Close"):
    """The proposed romance popup (ADR 0060 §9, spec §11.2), built like the narrator box: 440 wide, the Panel at the
    narrator's opacity, the 3-unit voice-romance bar, the header (the heart, Romance in voice-romance, the NPC's name in
    text-2, the tone chip, the close box), the badge "addon ambient dialogue", the scene in text-1, and at the bottom the
    choices: `choices` in one bar ([(label, kind)]), `stack` as full-width buttons above it ([(label, tier)]). faded: the
    fade to black of a tier-2 scene, (the text that fades, the word that stays)."""
    a = max(floor(theme), 0.9)
    voice = ink(theme, "voice-romance", a)
    head = 28
    header = (f'<div style="position:relative;height:{head}px">'
              f'<div class="abs" style="left:14px;top:6px">{icon("heart", 16, "voice-romance")}</div>'
              + text(M.hexed(voice, "Romance") + M.hexed("text-2", " · " + NPC), "BodyMedium", None, mode="trunc",
                     left=36, top=6, width=250, extra=";font-size:13px")
              + f'<span class="badge" style="position:absolute;right:40px;top:2px;--tone:var(--voice-romance)">'
              f'{esc(TONES[tone])}</span>'
              + _icon_button("x", 8, 2) + "</div>")
    tag = f'<div style="margin:0 14px 6px 14px">{badge(L(lang, "npc_badge"), "accent")}</div>'
    if faded:
        body_text = (f'<div style="position:relative;margin:2px 14px 0 14px;line-height:1.25;font-size:{font}px;'
                     f'white-space:pre-wrap;color:var(--text-1);-webkit-mask-image:linear-gradient(180deg,rgba(0,0,0,.55),'
                     f'rgba(0,0,0,.08));mask-image:linear-gradient(180deg,rgba(0,0,0,.55),rgba(0,0,0,.08))">{wow(faded[0])}</div>'
                     f'<div style="margin:14px 14px 0 14px;text-align:center;font-size:{font + 2}px;color:var(--text-2);'
                     f'font-style:italic">{esc(faded[1])}</div>')
    else:
        body_text = (f'<div style="position:relative;margin:2px 14px 0 14px;line-height:1.25;font-size:{font}px;'
                     f'white-space:pre-wrap;color:var(--text-1)">{wow(s)}</div>')
    after_html = ""
    if after:
        after_html = (f'<div style="margin:8px 14px 0 14px;line-height:1.25;font-size:{font}px;white-space:pre-wrap;'
                      f'color:var(--{ink(theme, "voice-npc", a)})">{wow(after)}</div>')
    stack_html = "".join(f'<div style="position:relative;height:28px">{flirt_button(lbl, 0, i == 0, theme, width=412, left=14, chip=TONES[t])}</div>'
                         for i, (lbl, t) in enumerate(stack))
    stack_html = f'<div style="margin-top:10px">{stack_html}</div>' if stack else ""
    btns = []
    for lbl, kind in (choices or [(close_label, "secondary")]):
        btns.append(button(lbl, M.fit_width(lbl, 0, 999, 20 if kind != "text" else 8), 24, kind, inline=True))
    bar = (f'<div style="position:relative;height:40px;margin-top:10px">'
           f'<div class="abs" style="left:3px;right:0;top:0;height:1px;background:var(--border-subtle)"></div>'
           f'<div class="abs" style="left:14px;right:8px;bottom:7px;height:24px;display:flex;gap:6px;'
           f'flex-direction:row-reverse">{"".join(btns)}</div></div>')   # the first choice at the right
    box = (f'<div style="position:relative;width:440px;border-radius:12px;border:1px solid var(--border);'
           f'background:{surface(theme, a)};box-shadow:var(--shadow);padding-top:2px">'
           f'<div class="abs" style="left:0;top:12px;bottom:12px;width:3px;background:var(--voice-romance)"></div>'
           f'{header}{tag}{body_text}{after_html}{stack_html}{bar}</div>')
    return f'<div class="abs" data-theme="{theme}" style="left:{left}px;top:{top}px;width:440px">{box}</div>'


def settings_romance(theme="nebula", gate="reading"):
    """The proposed Settings section Romance, in a plain stand-in of the client's Settings window (as components.settings
    draws it), scrolled to the section."""
    T = lambda key: L("en", key)  # noqa: E731
    sy = 44
    p = (text("Active romance", "BodyMedium", "text-1", left=LABEL_X, top=sy + 5, width=CONTROL_X - LABEL_X - 8)
         + switch(True, left=CONTROL_X, top=sy - 1) + text(T("on"), "Body", "text-2", left=CONTROL_X + 52, top=sy + 5, width=90))
    sy += 28
    p += (text("Tone", "BodyMedium", "text-1", left=LABEL_X, top=sy + 5, width=200)
          + segmented([(1, "Courteous"), (2, "Intimate"), (3, M.hexed("text-3", "Explicit (18+)"))], 1,
                      left=CONTROL_X, top=sy - 3))   # Explicit disabled: its word in text-3
    sy += 36
    state = {"off": T("off"), "reading": "Read the warning...", "ready": "Click again to confirm", "on": T("on")}[gate]
    p += (text("Explicit texts (18+)", "BodyMedium", "text-1", left=LABEL_X, top=sy + 5, width=200)
          + button(state, 220, 24, "secondary", left=CONTROL_X, top=sy))
    sy += 28
    p += (text("18+ pack", "BodyMedium", "text-1", left=LABEL_X, top=sy + 5, width=200)
          + text("not installed", "Body", "text-2", left=CONTROL_X, top=sy + 5, width=300))
    sy += 28
    p += text("Romance needs the Attraction axis (Relationships > Options). Nothing of it is ever sent to chat.", "Small",
              "text-3", left=LABEL_X, top=sy + 4, width=S_SEC - 32)
    sy += 24
    sec = section(S_SEC, sy + 16, "Romance", p, left=16, top=4)
    prev = ""   # the section scrolled to the top of the canvas
    h = sy + 16 + 60
    canvas = (f'<div class="abs" data-theme="{theme}" style="left:170px;top:36px;width:{S_CONTENT + 30}px;height:{h + 52}px;'
              f'background:var(--bg);border-radius:6px">'
              + text(M.SUBTITLE.replace("  ", " "), "H1", "text-1", left=16, top=16)
              + f'<div class="abs" style="left:0;top:44px;width:{S_CONTENT}px;bottom:8px;overflow:hidden">'
              f'<div class="abs" style="left:0;top:30px;width:{S_CONTENT}px;height:{h}px">{prev}{sec}</div></div></div>')
    return (f'<div class="client" style="left:20px;top:20px;width:{S_CONTENT + 30 + 180}px;height:{h + 52 + 46}px">'
            f'<div class="nav"><i></i><i></i><b>Azeroth Unspoken</b><i></i></div>{canvas}</div>'), h + 52 + 46


CONSENT = ("Explicit romance texts (18+).\n\nTurn this on only if you are 18 or older and want them. They come only from "
           "a separate optional pack, AzerothUnspoken_Romance18, which is not on CurseForge; without it, nothing changes. "
           "Romance stays private: nothing is ever sent to chat. You can turn it off at any time.")

ROMANCE_MEMORIES = [
    (M.hexed("accent-text", "[P]") + " A romance ended: Goldshire", "2026-11-22 23:10"),
    ("A jealousy: Goldshire", "2026-11-19 21:02"),
    ("A walk, the first: Elwynn Forest", "2026-11-12 20:31"),
    (M.hexed("accent-text", "[P]") + " A declaration, welcomed: Goldshire", "2026-11-09 22:47"),
    ("A gentle no: Stormwind City", "2026-11-03 19:20"),
    ("Return: Duskwood", "2026-11-02 22:05"),
    ("A chat: Goldshire", "2026-11-01 20:13"),
]


def build(add, client_popup):
    """Writes the seven pages (spec §19) through build_mockups' add() and its stand-in of the client's dialog."""
    group, target = "Active romance (proposed, ADR 0060)", "Relationships / NPC-Dialogues"

    # 1. flirt answers in the dialogue
    body, h = dialogue_flirts(90, 30, L_NPC, ANSWERS, FLIRTS, hover=0)
    body += tooltip(TIP_FLIRT, left=150, top=30 + h + 6)
    add("romance-dialogue-flirt", "Romance - flirt answers in the dialogue", 560, 450, themed_vars("nebula", body), group,
        target, scene="warm", seed=301, kind="proposed",
        caption_extra="Two flirt answers after the three neutral ones: the heart, the coral border and words, a tooltip. " + CAPTION)

    # 2. a refusal: the NPC's line, the neutral answers stay, the inner voice notes it
    body, _ = dialogue_flirts(100, 24, REFUSAL, ["Tell me more.", "Thank you.", "Farewell."], [])
    body += narrator(100, 96, speaker="inner", s=INNER_REFUSED, remaining=0.6)
    add("romance-refusal", "Romance - a refusal", 640, 470, themed_vars("nebula", body), group, target, scene="warm",
        seed=302, kind="proposed",
        caption_extra="A refusal costs 1 attraction and nothing else; the flirts leave, the conversation goes on. " + CAPTION)

    # 3. the declaration
    s = ("The common room has emptied. Maren dries the same cup for the third time and does not look up. When at last she "
         "does, she only waits, as if she already knows what you came back to say.")
    body = popup(100, 60, s, 1, choices=[("Speak your heart", "primary"), ("Not yet", "text")])
    add("romance-popup-declaration", "Romance popup - the declaration", 640, 360, themed_vars("nebula", body), group,
        "Relationships", scene="dusk", seed=303, kind="proposed",
        caption_extra="Opened from a moment answer of the dialogue, never by itself; Esc means Not yet. " + CAPTION)

    # 4. a date at an inn at night: three options with their tier chips
    s = ("Night has settled over Goldshire and the last song has gone quiet. Maren unties her apron and hangs it by the "
         "hearth. «The kitchen is closed,» she says. «I am not, not yet.»")
    body = popup(100, 40, s, 2, stack=[("A walk along the stream", 1), ("Supper by the fire", 1), ("Stay the night", 2)],
                 choices=[("Not tonight", "text")])
    add("romance-popup-date", "Romance popup - a date at the inn, at night", 640, 420, themed_vars("nebula", body), group,
        "Relationships", scene="dusk", seed=304, kind="proposed",
        caption_extra="The options follow the situation and the allowed tone; their chips say the tier. " + CAPTION)

    # 5. after a welcomed tier-2 date: fade to black, light theme
    faded = ("She takes the candle from the table and does not let go of your hand on the stairs. The door closes softly "
             "behind you both, and the inn goes on with its night.", "Later.")
    body = popup(100, 60, "", 2, faded=faded, theme="aurora")
    add("romance-popup-aurora", "Romance popup - fade to black (Aurora)", 640, 340, themed_vars("aurora", body), group,
        "Relationships / Settings", scene="neutral", seed=305, theme="aurora", kind="proposed",
        caption_extra="Tier 2 is told with modesty, then the text fades out and one word stays. " + CAPTION)

    # 6. the Settings section and the client's confirmation dialog of the 18+ consent
    html_, h = settings_romance("nebula", gate="reading")
    html_ += client_popup(220, h + 40, 460, 210, CONSENT, L("en", "consent_turn_on"), L("en", "consent_cancel"), True)
    add("romance-settings-gate", "Settings - Romance and the 18+ consent", 900, h + 40 + 210 + 90, themed_vars("nebula", html_),
        group, "Settings / Privacy-and-Data", scene="neutral", seed=306, scale=1.25, kind="proposed",
        caption_extra="Off by default, kept in the account; Turn on is disabled for two seconds; Explicit stays disabled "
                      "until the gate is on and the separate pack is installed. " + CAPTION)

    # 7. the journal with the romance memories
    rows = [(t, w, [(L("en", "act_keep"), "secondary"), (L("en", "act_delete"), "danger")]) for t, w in ROMANCE_MEMORIES]
    body = journal(40, 56, "memories", rows)
    add("romance-journal", "Journal - romance memories", 840, 640, themed_vars("nebula", body), group, "Memory-and-Journal",
        seed=307, kind="proposed",
        caption_extra="[P] marks a permanent memory: the declaration and the break-up; no memory holds a name. " + CAPTION)
