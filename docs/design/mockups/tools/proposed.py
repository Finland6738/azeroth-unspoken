"""PROPOSED mockups: the most important improvements of the UI review (docs/design/UI_REVIEW.md), drawn next to the
current windows. They are proposals, not implemented; every image says so. Original design, no Blizzard art.
"""
from mockkit import esc

VOICES = {"narrator": ("#b9a1ff", "#ece6ff", "Narrator"), "inner": ("#7fd4ff", "#ddf3ff", "Inner voice"),
          "character": ("#ffd36b", "#fff1cc", "Character"), "npc": ("#9be37a", "#e3f7d6", "NPC")}


def nar(left, top, speaker, text, meta="", italic=False, proposal=False, editor=None, remaining=0.6, focus=None):
    c, tint, name = VOICES[speaker]
    body = (f'<div class="pedit">{esc(editor)}<span class="caret" style="display:inline-block;width:1px;height:15px;'
            f'background:#fff;margin-left:1px"></span></div><div class="hint">Enter sends · Esc closes the editor · '
            f'the proposal waits while you type</div>' if editor is not None else
            f'<div class="body" style="color:{tint};{"font-style:italic" if italic else ""}">{esc(text)}</div>')
    bar = ""
    if proposal:
        def b(cls, label, key=None, f=False):
            k = f' <span class="keyhint">{key}</span>' if key else ""
            return f'<div class="pbtn {cls}{" focus" if f else ""}">{label}{k}</div>'
        bar = (f'<div class="bar"><div class="chip" style="border:1px solid {c}99;color:{c}">say ▾</div>'
               f'<div style="flex:1"></div>{b("text", "Discard")}{b("ghost", "Another")}{b("ghost", "Edit")}'
               f'{b("ghost", "To chat")}{b("primary", "Send", "key", focus == "send")}</div>')
    meta_html = f'<span class="meta">· {esc(meta)}</span>' if meta else ""
    tl = "" if proposal or editor is not None else \
        f'<div class="timeline" style="width:{456 * remaining:.0f}px;background:{c};opacity:0.4"></div>'
    return (f'<div class="nar" style="left:{left}px;top:{top}px"><div class="accent" style="background:{c}"></div>'
            f'<div class="head"><span class="voice" style="color:{c}">{name}</span>{meta_html}'
            f'<div class="icons"><span title="pause">❚❚</span><span title="history">☰</span><span title="close">✕</span></div></div>'
            f'{body}{bar}{tl}</div>')


def callout(text, **p):
    pos = ";".join(f"{k}:{v}px" for k, v in p.items())
    return f'<div class="callout" style="{pos}">{esc(text)}</div>'


def narrator_page():
    w, h = 980, 560
    body = ('<div class="p">'
            + nar(40, 40, "narrator", "Elyra stands still a moment as the light drains from between the trunks and the "
                                      "wood fills with crickets.", remaining=0.7)
            + nar(40, 150, "inner", "Shadows stretch long across the ground, and the air cools by a breath.", italic=True,
                  remaining=0.35)
            + nar(40, 250, "character", "“Good evening, if there are still good ones left.”", meta="proposal, waits for you",
                  proposal=True, focus="send")
            + nar(40, 380, "character", "", meta="editing", proposal=True,
                  editor="Good evening, friend, if there are still good ones left.")
            + callout("A voice accent bar and a voice-tinted text: the voice no longer depends on a small coloured label.",
                      left=530, top=48)
            + callout("Inner voice in italics: private thoughts are told apart from sayable lines without colour.",
                      left=530, top=158)
            + callout("Send is the one primary action and shows its key; Discard is a quiet text button. The channel is a chip.",
                      left=530, top=262)
            + callout("While the editor is open the proposal does not expire; the hint names the keys.", left=530, top=400)
            + callout("Thin time line instead of a sudden fade; it stops while hovered. Opacity applies once.",
                      left=530, top=470)
            + "</div>")
    return ("proposed-narrator", "PROPOSED narrator frame", w, h, body, "README / The-Narrator (comparison)")


def narrator_bright_page():
    # the same box over a bright snowfield: background alpha applied once (0.80), text at full opacity
    w, h = 640, 300
    sky = ('<div class="abs" style="inset:0;background:linear-gradient(#9fb8d0,#cfdde8 55%,#e9f0f5 56%,#dce6ee)"></div>')
    body = (sky + '<div class="p">'
            + nar(90, 70, "narrator", "Elyra stands still a moment as the light drains from between the trunks and the "
                                      "wood fills with crickets.", remaining=0.5)
            + nar(90, 180, "inner", "Shadows stretch long across the ground, and the air cools by a breath.", italic=True)
            + "</div>")
    return ("proposed-narrator-bright", "PROPOSED narrator over a bright scene", w, h, body, "The-Narrator (accessibility)")


def journal_page():
    w, h = 760, 600
    tabs = [("Memories", True), ("Places", False), ("Flags", False), ("Session", False), ("Stories", False),
            ("People", False)]
    x, tab_html = 16, ""
    for name, on in tabs:
        width = 16 + len(name) * 7.4
        tab_html += f'<div class="tab{" on" if on else ""}" style="left:{x:.0f}px;top:84px">{name}</div>'
        x += width + 8
    rows = [("Story: The Place of the Fall", "30 Oct, 22:41", True), ("Return: Duskwood", "30 Oct, 22:05", False),
            ("Death: Duskwood", "28 Oct, 21:52", False), ("A chat: Darkshire", "27 Oct, 20:13", False),
            ("Level reached 24", "26 Oct, 19:40", False), ("A bond changes: Westfall", "24 Oct, 21:18", False),
            ("Flight: Lakeshire", "22 Oct, 18:57", False), ("First visit: Duskwood", "21 Oct, 20:30", False),
            ("First visit: Redridge Mountains", "19 Oct, 19:05", False), ("First visit: Westfall", "14 Oct, 21:44", True)]
    row_html = ""
    for i, (text, stamp, pin) in enumerate(rows):
        p = '<span class="pin">◆ kept</span>' if pin else ""
        row_html += (f'<div class="row" style="top:{126 + i * 30}px">{p}<span>{text}</span><span class="stamp">{stamp}</span>'
                     f'<span class="ico" title="keep">◇</span><span class="ico" title="delete">🗑</span></div>')
    win = (f'<div class="win" style="left:40px;top:30px;width:600px;height:540px">'
           f'<div class="band"><span class="title">Character journal</span><span class="meta">14 memories · 9 places</span>'
           f'<span class="x">✕</span></div>'
           f'<div class="abs" style="left:20px;top:50px;width:560px;font-size:11.5px;color:var(--text-2)">Significant moments '
           f'only, never chat text. Keep or delete any of them.</div>'
           + tab_html + '<div class="abs" style="left:16px;right:16px;top:112px;border-top:1px solid var(--rule)"></div>'
           + row_html
           + f'<div class="abs" style="left:16px;bottom:58px;font-size:11px;color:var(--muted)">page 1 of 2</div>'
           + f'<div class="pbtn ghost" style="left:110px;bottom:52px;padding:0 8px">‹</div>'
           + f'<div class="pbtn ghost" style="left:146px;bottom:52px;padding:0 8px">›</div>'
           + f'<div class="abs" style="left:1px;right:1px;bottom:1px;height:44px;border-top:1px solid var(--rule)"></div>'
           + f'<div class="pbtn ghost" style="left:16px;bottom:10px">Export…</div>'
           + f'<div class="pbtn danger" style="left:110px;bottom:10px">Forget everything…</div>'
           + f'<div class="pbtn ghost" style="right:16px;bottom:10px">Close <span class="keyhint">Esc</span></div></div>')
    body = ('<div class="p">' + win
            + callout("One window style for every panel: title band, ✕, Esc closes, a visible edge.", left=650, top=40)
            + callout("Underlined text tabs that fit their labels; relationships move to their own window (one entry point).",
                      left=650, top=110)
            + callout("Icons with tooltips instead of 'P' and 'x'; a kept memory is marked in words, not only gold.",
                      left=650, top=200)
            + callout("Destructive actions open a confirmation dialog that names what is lost.", left=650, top=470)
            + "</div>")
    return ("proposed-journal", "PROPOSED journal window", w, h, body, "Memory-and-Journal (comparison)")


def relations_detail_page():
    w, h = 900, 640
    axes = [("Familiarity", 62, 0), ("Trust", 40, -100), ("Respect", 25, -100), ("Affection", 45, -100), ("Fear", 0, 0),
            ("Loyalty", 20, -100)]
    ax = ""
    for i, (name, v, lo) in enumerate(axes):
        f = (v - lo) / (100 - lo)
        ax += (f'<div class="abs" style="left:20px;top:{120 + i * 30}px;font-size:12.5px;color:var(--text-2)">{name}</div>'
               f'<div class="abs" style="left:110px;top:{127 + i * 30}px;width:180px;height:4px;background:#3a3226"></div>'
               f'<div class="abs" style="left:{110 + 180 * f - 5:.0f}px;top:{121 + i * 30}px;width:10px;height:16px;'
               f'background:var(--gold-dim);border-radius:2px"></div>'
               f'<div class="abs" style="left:300px;top:{120 + i * 30}px;font-size:12.5px">{v}</div>')
    seen = ("First recorded 14 Sep · last seen 30 Oct<br>Fought together 12 · group 9 · trade 3 · duel 1 · emote 2"
            "<br><br>30 Oct — fought together (Duskwood)<br>30 Oct — group (Duskwood)<br>27 Oct — trade (Darkshire)")
    win = (f'<div class="win" style="left:30px;top:20px;width:640px;height:600px">'
           f'<div class="band"><span class="title">Torvan</span><span class="meta">player · friend · Friend (34)</span>'
           f'<span class="x">✕</span></div>'
           f'<div class="tab" style="left:16px;top:52px">‹ Relationships</div>'
           f'<div class="tab on" style="left:140px;top:52px">Torvan</div>'
           f'<div class="abs lbl-sc" style="left:20px;top:96px">What you chose</div>' + ax
           + f'<div class="abs lbl-sc" style="left:350px;top:96px">Words</div>'
           + f'<div class="card" style="left:350px;top:116px;width:270px;height:116px;font-size:12.5px;line-height:1.75">'
             f'Label: <b style="color:var(--gold)">friend</b> (chosen)<br>Feelings: trust, gratitude<br>Note: Owes me a drink '
             f'since the Westfall road.<br>Tags: westfall, archer</div>'
           + f'<div class="abs lbl-sc" style="left:350px;top:244px">How you see them</div>'
           + f'<div class="card" style="left:350px;top:264px;width:270px;height:62px;font-size:12px;line-height:1.6;'
             f'color:var(--text-2)">Temperament: cheerful · Goals: freedom<br>Speech: jovial · Role, morality: unknown</div>'
           + f'<div class="abs" style="left:16px;right:16px;top:344px;border-top:1px solid var(--rule)"></div>'
           + f'<div class="abs lbl-sc" style="left:20px;top:356px">What the addon observed (read-only)</div>'
           + f'<div class="abs" style="left:20px;top:378px;width:600px;font-size:12px;line-height:1.5;color:var(--text-2)">{seen}</div>'
           + f'<div class="abs" style="left:1px;right:1px;bottom:1px;height:52px;border-top:1px solid var(--rule)"></div>'
           + f'<div class="pbtn ghost" style="left:16px;bottom:14px">Forget observations…</div>'
           + f'<div class="pbtn danger" style="left:200px;bottom:14px">Remove person…</div>'
           + f'<div class="pbtn ghost" style="right:16px;bottom:14px">Close <span class="keyhint">Esc</span></div></div>')
    body = ('<div class="p">' + win
            + callout("600 units tall: fits a 768-unit screen at UI scale 1 (the current detail is 914).", left=690, top=40)
            + callout("Two columns: the axes left, the words right; editing opens inline on click.", left=690, top=150)
            + callout("Observations in their own read-only block, separated by a rule.", left=690, top=360)
            + callout("Options (automatic NPCs, proximity, shared list) move to the settings, with a dialog for consent.",
                      left=690, top=470)
            + "</div>")
    return ("proposed-relations-detail", "PROPOSED relationship detail", w, h, body, "Relationships (comparison)")


def build():
    return [narrator_page(), narrator_bright_page(), journal_page(),
            relations_detail_page()]
