"""Builds docs/design/mockups/narrator-demo.gif: the narrator in action, from rendered HTML frames.

    python -I -X utf8 docs/design/mockups/tools/make_gif.py      (needs Pillow, and the browser of render.py)

A forest at dusk, a battle line, a return after a defeat, an inner thought, then a chat proposal edited and sent on
confirmation. The lines are real lines of the English database; the scenes are original SVG landscapes. Every frame
carries the caption "illustrative mockup, not an in-game screenshot".
"""
import os
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from PIL import Image  # noqa: E402

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


def main():
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


if __name__ == "__main__":
    main()
