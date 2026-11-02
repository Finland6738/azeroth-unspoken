"""Builds the two animated GIFs of docs/design/mockups/ (needs Pillow).

    python -I -X utf8 docs/design/mockups/tools/make_gif.py [narrator] [tour]      (no word: both)

narrator-demo.gif: the narrator in action, from HTML frames rendered with the browser of render.py. A forest at dusk, a
battle line, a return after a defeat, an inner thought, then a chat proposal edited and sent on confirmation.

interface-tour.gif: a walk through every window type of the addon, a few seconds each, made from the PNG files of
png/ (run build_mockups.py and render.py first). Each frame has a caption bar with the window's name.

The lines are real lines of the English database; the scenes are original SVG landscapes. Every frame says it is an
illustrative mockup, not an in-game screenshot.
"""
import os
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from PIL import Image, ImageDraw, ImageFont  # noqa: E402

from mockkit import MOCKUPS, chat_lines, page  # noqa: E402
from components import narrator  # noqa: E402
from render import browser, render  # noqa: E402
from build_mockups import L_BATTLE, L_DUSK_E, L_GREET, L_INNER, L_RETURN, PLAYER  # noqa: E402

W, H = 640, 340
SCALE = 1.375                 # 880 x 468 pixels: readable at README width
EDITED = "Good evening, friend, if there are still good ones left."
OUT = os.path.join(MOCKUPS, "narrator-demo.gif")


def step_label(text):
    return (f'<div class="abs" style="left:12px;top:10px;z-index:45;font:bold 13px/1.3 Arial,sans-serif;color:#fff;'
            f'background:rgba(0,0,0,0.6);padding:4px 9px;border-radius:3px">{text}</div>')


def frames():
    """(scene, seed, label, narrator kwargs, extra html, duration ms, time line runs out)"""
    say = {"speaker": "character", "text": f"«{L_GREET}»", "proposal": "SAY"}
    return [
        ("dusk", 3, "1 · Arriving in a forest at dusk", {"speaker": "narrator", "text": f"{PLAYER} {L_DUSK_E}"}, "", 3600, True),
        ("battle", 5, "2 · A battle begins", {"speaker": "character", "text": f"«{L_BATTLE}»"}, "", 2800, True),
        ("night", 6, "3 · Back where the last fight was lost", {"speaker": "inner", "text": L_RETURN}, "", 3800, True),
        ("dusk", 7, "4 · An inner thought", {"speaker": "inner", "text": L_INNER}, "", 3200, True),
        ("dusk", 8, "5 · A line proposed for /say: nothing is sent yet", dict(say, hover_btn="edit"), "", 3000, False),
        ("dusk", 8, "6 · Edit: the line opens in the editor", dict(say, editor=L_GREET, editor_sel=True), "", 1400, False),
        ("dusk", 8, "6 · Edit: the line opens in the editor", dict(say, editor=EDITED), "", 2400, False),
        ("dusk", 8, "7 · Enter confirms: sent to /say", {"speaker": "character", "text": f"«{EDITED}»", "sent": "SAY"},
         chat_lines([f"|cffffffff{PLAYER} says: {EDITED}|r"], left=10, top=48, width=520, height=40), 3600, True),
    ]


def build_narrator():
    exe = browser()
    tmp = tempfile.mkdtemp(prefix="au-gif-")
    css = "file:///" + os.path.join(MOCKUPS, "mockups.css").replace("\\", "/")
    images = []   # (PIL image, duration)
    n = 0
    for scene, seed, label, nk, extra, ms, runs_out in frames():
        # #186: no fade; the thin time line along the bottom edge runs out, then the box goes
        for left, dur in ([(0.9, ms)] + ([(0.3, 320), (0.06, 200)] if runs_out else [])):
            n += 1
            body = narrator((W - 440) // 2, 70, remaining=left, **nk) + extra + step_label(label)
            path = page(f"f{n:02d}", "Narrator in action", W, H, body, scene=scene, seed=seed, scale=SCALE, kind="none",
                        out_dir=tmp, css_href=css)
            png = render(path, path[:-5] + ".png", exe)
            images.append((Image.open(png).convert("RGB"), dur))
    # a palette per frame keeps the small coloured voice labels (a shared palette greys them out)
    pal = [im.quantize(colors=256, method=Image.Quantize.MEDIANCUT, dither=Image.Dither.FLOYDSTEINBERG)
           for im, _ in images]
    pal[0].save(OUT, save_all=True, append_images=pal[1:], duration=[d for _, d in images], loop=0, optimize=True,
                disposal=1)
    print(f"{OUT}: {len(pal)} frames, {os.path.getsize(OUT) / 1024:.0f} KB")


# ---------------------------------------------------------------------------------------------------------------
# The interface tour: one frame per window type, from png/. The same list, in the same order, is the wiki page
# "Interface tour" (docs/wiki/Interface-Tour.md). (png name, caption, seconds, rows of the PNG to keep from the top)
# ---------------------------------------------------------------------------------------------------------------
TOUR = [
    ("narrator-voices", "The narrator box: four voices, seen only by you", 3.5, None),
    ("proposal", "A line proposed for chat: nothing is sent until you confirm", 3.5, None),
    ("proposal-editor", "Edit opens the line in an editor before sending", 3.0, None),
    ("narrator-reading", "A long private reading appears line by line", 3.5, None),
    ("narrator-history", "The history of recent lines", 3.0, None),
    ("narrator-notices", "Private notices: a bond, a letter, a song", 3.5, None),
    ("dialogue-line", "Ambient dialogue with an NPC", 3.0, None),
    ("journal-memories", "Journal: memories, letters and griefs", 3.5, None),
    ("journal-stories", "Journal: stories, with the nemeses", 3.0, None),
    ("journal-songbook", "Journal: the songbook", 3.0, None),
    ("relations-list", "Relationships: the list", 3.0, None),
    ("relations-detail-npc", "Relationships: an NPC's detail", 3.5, None),
    ("relations-options", "Relationships: options", 3.0, None),
    ("profile", "Character soul: personality and culture of origin", 3.5, None),
    ("settings-top", "Settings panel", 3.0, None),
    ("wizard-1", "First-run guide: welcome and language", 3.0, None),
    ("wizard-7", "First-run guide: what may reach chat", 3.0, None),
    ("consent-auto", "A consent: the whole warning, then Turn on", 3.0, None),
    ("speak-button", "The speak button and its tooltip", 3.0, None),
    ("chat-help-window", "/au help in the chat frame", 3.0, None),
    ("chat-debug", "/au debug: diagnostics in the chat frame", 3.0, 900),
]
TOUR_OUT = os.path.join(MOCKUPS, "interface-tour.gif")
TOUR_W, TOUR_H, BAR = 960, 720, 40          # readable at README width; the bar holds the caption
NOTE = "Illustrative mockup, not an in-game screenshot"


def tour_frame(n, total, name, caption, keep):
    img = Image.open(os.path.join(MOCKUPS, "png", name + ".png")).convert("RGB")
    if keep:
        img = img.crop((0, 0, img.width, min(img.height, keep)))
    area_h = TOUR_H - BAR
    f = min(TOUR_W / img.width, area_h / img.height, 1.0)
    img = img.resize((round(img.width * f), round(img.height * f)), Image.Resampling.LANCZOS)
    out = Image.new("RGB", (TOUR_W, TOUR_H), (14, 11, 20))
    out.paste(img, ((TOUR_W - img.width) // 2, BAR + (area_h - img.height) // 2))
    d = ImageDraw.Draw(out)
    d.rectangle((0, 0, TOUR_W, BAR - 1), fill=(30, 22, 44))
    d.line((0, BAR - 1, TOUR_W, BAR - 1), fill=(180, 140, 255))
    big, small = ImageFont.load_default(size=19), ImageFont.load_default(size=14)
    d.text((14, BAR // 2), f"{n}/{total}  {caption}", font=big, fill=(255, 233, 168), anchor="lm")
    d.text((TOUR_W - 14, BAR // 2), NOTE, font=small, fill=(200, 194, 208), anchor="rm")
    return out


def build_tour():
    frames, durations = [], []
    for i, (name, caption, seconds, keep) in enumerate(TOUR, 1):
        frames.append(tour_frame(i, len(TOUR), name, caption, keep))
        durations.append(int(seconds * 1000))
    # a palette per frame, no dithering: flat windows stay sharp and the file small
    pal = [im.quantize(colors=128, method=Image.Quantize.MEDIANCUT, dither=Image.Dither.NONE) for im in frames]
    pal[0].save(TOUR_OUT, save_all=True, append_images=pal[1:], duration=durations, loop=0, optimize=True, disposal=1)
    print(f"{TOUR_OUT}: {len(pal)} frames, {os.path.getsize(TOUR_OUT) / 1024:.0f} KB")


def main(words):
    words = words or ["narrator", "tour"]
    if "narrator" in words:
        build_narrator()
    if "tour" in words:
        build_tour()


if __name__ == "__main__":
    main(sys.argv[1:])
