"""Generates the textures of AzerothUnspoken/Media/ (UI-ECO step UI-1; FDCP docs/specs/ui-style.md sections 3 and 7).

Adapted from Finland Dragon Credit Points (tools/make_media.py), same owner, GPL-3.0.

Every shape is WHITE with an alpha channel: the addon tints it with the colour of a theme token (SetVertexColor), so no
file belongs to a theme. All files are 32-bit uncompressed TGA with power-of-two sizes.

  rr_fill_8/12/18   64x64    filled rounded rectangle, 9-slice (margin = radius)
  rr_ring_8/12/18   64x64    1 px ring of the same shape, 9-slice
  shadow            128x128  blurred rounded rectangle for the soft shadow under windows and cards, 9-slice
  glow_s, glow_l    128x128  blurred rounded rectangle for the neon / amber glow (ADD blend), 9-slice
  pill              64x32    pill (half-circle ends), 9-slice on the left and right
  circle            64x64    filled circle
  blob_radial       128x128  radial fall-off for generated covers and soft spots
  disc_256          256x256  filled circle, large: the emote wheel's disc and dead zone keep a sharp edge (ADR 0059)
  ring_256          256x256  2 px ring of the same circle: the edge of the emote wheel and of its dead zone
  icons             256x256  16 px cells, 49 (ICON_NAMES): chevron, check, cross, skull, shield, sword, info, search, ...
                             the first 40 are FDCP's, then heart, quill, chat, scroll (UI-1) and hand, note, smile, train
                             (the emote wheel, ADR 0059) are this addon's;
                             all drawn with Pillow shapes, except share (ADR 0060), Google's Material Symbols under
                             Apache 2.0, filled from its published path (docs/third-party.md)
  logo_256, logo_64          the addon's own logo from assets/logo-source.webp, with a round mask (full colour, never tinted)
  nebula_dark_256, nebula_light_256   the NEBULA community logo with its word, from assets/nebula/nebula-logo-dark.png (Nebula,
                             the dark theme) and assets/nebula/nebula-logo-light.png (Aurora): the credits on Settings > Info.
                             Full colour, never tinted; the 512x492 art is centred on a transparent square (UI-ECO step UI-7)

Usage: python -X utf8 tools/make_media.py   (needs Pillow; rewrites the files; the committed result is what ships)
The list of files and their slice margins is mirrored in AzerothUnspoken/UI/Assets.lua, which
Tests/check_media.py compares with the folder.
"""
import os
import sys

from PIL import Image, ImageChops, ImageDraw, ImageFilter

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "AzerothUnspoken", "Media")
SS = 4   # supersampling


def white(mask):
    img = Image.new("RGBA", mask.size, (255, 255, 255, 0))
    img.putalpha(mask)
    return img


def rounded(size, radius, inset=0.0, ring=0.0):
    w, h = size
    big = Image.new("L", (w * SS, h * SS), 0)
    d = ImageDraw.Draw(big)
    box = [inset * SS, inset * SS, (w - inset) * SS - 1, (h - inset) * SS - 1]
    d.rounded_rectangle(box, radius=radius * SS, fill=255)
    if ring:
        inner = Image.new("L", big.size, 0)
        di = ImageDraw.Draw(inner)
        k = ring * SS
        di.rounded_rectangle([box[0] + k, box[1] + k, box[2] - k, box[3] - k], radius=max(0, (radius - ring)) * SS, fill=255)
        big = ImageChops.subtract(big, inner)
    return big.resize(size, Image.LANCZOS)


def blurred(size, radius, inset, blur):
    mask = rounded(size, radius, inset)
    return mask.filter(ImageFilter.GaussianBlur(blur))


def circle(size):
    big = Image.new("L", (size * SS, size * SS), 0)
    ImageDraw.Draw(big).ellipse([0, 0, size * SS - 1, size * SS - 1], fill=255)
    return big.resize((size, size), Image.LANCZOS)


def radial(size):
    img = Image.new("L", (size, size), 0)
    c = (size - 1) / 2
    px = img.load()
    for y in range(size):
        for x in range(size):
            d = (((x - c) ** 2 + (y - c) ** 2) ** 0.5) / c
            v = max(0.0, 1.0 - d)
            px[x, y] = int(255 * v * v * (3 - 2 * v))   # smoothstep
    return img


# --- icons: 16 px cells drawn at 8x ---------------------------------------------------------------------------------
CELL, ICON_SS = 16, 8
ICON_NAMES = ["chevron", "check", "cross", "dashed", "skull", "shield", "heal", "sword", "star", "gear", "arrow_up",
              "arrow_down", "lock", "eye", "dot", "plus",
              # M7-1: the rest of the sheet, one row of 16 each (mirrored in UI/Assets.lua)
              "info", "warn", "search", "filter", "copy", "trash", "edit", "calendar", "clock", "user", "users", "crown",
              "coin", "refresh", "download", "upload",
              "bell", "flag", "minus", "gem", "bag", "book", "link", "arrow_left",
              # UI-1: four more for this addon (mirrored in UI/Assets.lua)
              "heart", "quill", "chat", "scroll",
              # ADR 0059: four more for the emote wheel (wave, dance, laugh, train)
              "hand", "note", "smile", "train",
              # ADR 0060: the Bard's Share button, from Google's Material Symbols (MATERIAL below)
              "share"]

# Icons taken from Google's Material Symbols (https://fonts.google.com/icons, Apache License 2.0; docs/third-party.md):
# the path of the Outlined style, weight 400, 24 px, viewBox 0 -960 960 960, as published. Filled even-odd at 8x and
# reduced to the 16 px cell like the drawn icons.
MATERIAL = {
    "share": (
        "M680-80q-50 0-85-35t-35-85q0-6 3-28L282-392q-16 15-37 23.5t-45 8.5q-50 0-85-35t-35-85q0-50 35-85t85-35q24 0 45 "
        "8.5t37 23.5l281-164q-2-7-2.5-13.5T560-760q0-50 35-85t85-35q50 0 85 35t35 85q0 50-35 85t-85 35q-24 0-45-8.5T598-672"
        "L317-508q2 7 2.5 13.5t.5 14.5q0 8-.5 14.5T317-452l281 164q16-15 37-23.5t45-8.5q50 0 85 35t35 85q0 50-35 85t-85 "
        "35Zm0-80q17 0 28.5-11.5T720-200q0-17-11.5-28.5T680-240q-17 0-28.5 11.5T640-200q0 17 11.5 28.5T680-160ZM200-440q17 "
        "0 28.5-11.5T240-480q0-17-11.5-28.5T200-520q-17 0-28.5 11.5T160-480q0 17 11.5 28.5T200-440Zm508.5-291.5Q720-743 "
        "720-760t-11.5-28.5Q697-800 680-800t-28.5 11.5Q640-777 640-760t11.5 28.5Q663-720 680-720t28.5-11.5ZM680-200ZM200-"
        "480Zm480-280Z"),
}


def svg_subpaths(d, steps=12):
    """The subpaths of an SVG path (M L H V C S Q T Z, absolute and relative), curves flattened: lists of (x, y)."""
    import re
    toks = re.findall(r"[MmLlHhVvCcSsQqTtZz]|-?(?:\d+\.?\d*|\.\d+)(?:e-?\d+)?", d)
    out, cur, i = [], [], 0
    x = y = sx = sy = 0.0
    last_c = last_q = None
    cmd = None

    def num():
        nonlocal i
        v = float(toks[i])
        i += 1
        return v

    def bez(pts):
        n = len(pts) - 1
        res = []
        for k in range(1, steps + 1):
            t = k / steps
            if n == 2:
                (x0, y0), (x1, y1), (x2, y2) = pts
                res.append(((1 - t) ** 2 * x0 + 2 * (1 - t) * t * x1 + t * t * x2,
                            (1 - t) ** 2 * y0 + 2 * (1 - t) * t * y1 + t * t * y2))
            else:
                (x0, y0), (x1, y1), (x2, y2), (x3, y3) = pts
                a, b, c, e = (1 - t) ** 3, 3 * (1 - t) ** 2 * t, 3 * (1 - t) * t * t, t ** 3
                res.append((a * x0 + b * x1 + c * x2 + e * x3, a * y0 + b * y1 + c * y2 + e * y3))
        return res

    while i < len(toks):
        if re.match(r"[A-Za-z]", toks[i]):
            cmd = toks[i]
            i += 1
            if cmd in "Zz":
                if cur:
                    out.append(cur)
                cur, x, y = [], sx, sy
                last_c = last_q = None
                continue
        rel = cmd.islower()
        c = cmd.upper()
        ox, oy = (x, y) if rel else (0.0, 0.0)
        if c == "M":
            if cur:
                out.append(cur)
            x, y = ox + num(), oy + num()
            sx, sy, cur = x, y, [(x, y)]
            cmd = "l" if rel else "L"
            last_c = last_q = None
        elif c == "L":
            x, y = ox + num(), oy + num()
            cur.append((x, y))
            last_c = last_q = None
        elif c == "H":
            x = ox + num()
            cur.append((x, y))
            last_c = last_q = None
        elif c == "V":
            y = oy + num()
            cur.append((x, y))
            last_c = last_q = None
        elif c in "CS":
            if c == "C":
                c1 = (ox + num(), oy + num())
            else:
                c1 = (2 * x - last_c[0], 2 * y - last_c[1]) if last_c else (x, y)
            c2 = (ox + num(), oy + num())
            end = (ox + num(), oy + num())
            cur += bez([(x, y), c1, c2, end])
            last_c, last_q = c2, None
            x, y = end
        elif c in "QT":
            if c == "Q":
                c1 = (ox + num(), oy + num())
            else:
                c1 = (2 * x - last_q[0], 2 * y - last_q[1]) if last_q else (x, y)
            end = (ox + num(), oy + num())
            cur += bez([(x, y), c1, end])
            last_q, last_c = c1, None
            x, y = end
        else:
            raise ValueError("unsupported path command " + cmd)
    if cur:
        out.append(cur)
    return out


def draw_material(name):
    """A Material Symbols icon in the 16 px cell: each subpath filled and combined even-odd (the holes stay open)."""
    s = CELL * ICON_SS
    img = Image.new("L", (s, s), 0)
    for sub in svg_subpaths(MATERIAL[name]):
        if len(sub) < 3:
            continue
        layer = Image.new("L", (s, s), 0)
        ImageDraw.Draw(layer).polygon([(px * s / 960, (py + 960) * s / 960) for px, py in sub], fill=255)
        img = ImageChops.logical_xor(img.convert("1"), layer.convert("1")).convert("L")
    return img.resize((CELL, CELL), Image.LANCZOS)


def draw_icon(name):
    if name in MATERIAL:
        return draw_material(name)
    s = CELL * ICON_SS
    img = Image.new("L", (s, s), 0)
    d = ImageDraw.Draw(img)
    u = ICON_SS
    w = int(1.6 * u)
    def pt(x, y):
        return (x * u, y * u)
    if name == "chevron":
        d.line([pt(6, 3), pt(11, 8), pt(6, 13)], fill=255, width=w, joint="curve")
    elif name == "check":
        d.line([pt(3, 8.5), pt(6.5, 12), pt(13, 4.5)], fill=255, width=w, joint="curve")
    elif name == "cross":
        d.line([pt(3.5, 3.5), pt(12.5, 12.5)], fill=255, width=w)
        d.line([pt(12.5, 3.5), pt(3.5, 12.5)], fill=255, width=w)
    elif name == "dashed":
        for k in range(8):
            d.arc([pt(2, 2), pt(14, 14)], start=k * 45, end=k * 45 + 24, fill=255, width=w)
    elif name == "skull":
        d.ellipse([pt(3, 2), pt(13, 11.5)], fill=255)
        d.rectangle([pt(5.5, 9), pt(10.5, 14)], fill=255)
        d.ellipse([pt(4.8, 6), pt(7.2, 8.6)], fill=0)
        d.ellipse([pt(8.8, 6), pt(11.2, 8.6)], fill=0)
        for x in (7, 9):
            d.line([pt(x, 11.5), pt(x, 14)], fill=0, width=int(0.7 * u))
    elif name == "shield":
        d.polygon([pt(8, 1.5), pt(13.5, 3.5), pt(13, 9), pt(8, 14.5), pt(3, 9), pt(2.5, 3.5)], fill=255)
    elif name == "heal":
        d.rectangle([pt(6.2, 2), pt(9.8, 14)], fill=255)
        d.rectangle([pt(2, 6.2), pt(14, 9.8)], fill=255)
    elif name == "sword":
        d.line([pt(3, 13), pt(12.5, 3.5)], fill=255, width=int(2.0 * u))
        d.line([pt(4.5, 8), pt(8, 11.5)], fill=255, width=w)
        d.polygon([pt(12, 2), pt(14.5, 1.5), pt(14, 4)], fill=255)
    elif name == "star":
        import math
        pts = []
        for k in range(10):
            r = 7 if k % 2 == 0 else 3
            a = -math.pi / 2 + k * math.pi / 5
            pts.append(pt(8 + r * math.cos(a), 8.3 + r * math.sin(a)))
        d.polygon(pts, fill=255)
    elif name == "gear":
        d.ellipse([pt(3.5, 3.5), pt(12.5, 12.5)], fill=255)
        for k in range(8):
            import math
            a = k * math.pi / 4
            cx, cy = 8 + 5.6 * math.cos(a), 8 + 5.6 * math.sin(a)
            d.ellipse([pt(cx - 1.3, cy - 1.3), pt(cx + 1.3, cy + 1.3)], fill=255)
        d.ellipse([pt(6, 6), pt(10, 10)], fill=0)
    elif name == "arrow_up":
        d.line([pt(8, 13), pt(8, 3.5)], fill=255, width=w)
        d.line([pt(4, 7), pt(8, 3), pt(12, 7)], fill=255, width=w, joint="curve")
    elif name == "arrow_down":
        d.line([pt(8, 3), pt(8, 12.5)], fill=255, width=w)
        d.line([pt(4, 9), pt(8, 13), pt(12, 9)], fill=255, width=w, joint="curve")
    elif name == "lock":
        d.rounded_rectangle([pt(3.5, 7), pt(12.5, 14)], radius=u, fill=255)
        d.arc([pt(5, 2), pt(11, 10)], start=180, end=360, fill=255, width=w)
        d.line([pt(5, 6), pt(5, 8)], fill=255, width=w)
        d.line([pt(11, 6), pt(11, 8)], fill=255, width=w)
    elif name == "eye":
        d.ellipse([pt(1.5, 4), pt(14.5, 12)], fill=255)
        d.ellipse([pt(5.5, 5), pt(10.5, 11)], fill=0)
        d.ellipse([pt(6.8, 6.3), pt(9.2, 8.7)], fill=255)
    elif name == "dot":
        d.ellipse([pt(5, 5), pt(11, 11)], fill=255)
    elif name == "plus":
        d.line([pt(8, 3), pt(8, 13)], fill=255, width=w)
        d.line([pt(3, 8), pt(13, 8)], fill=255, width=w)
    elif name == "info":
        d.ellipse([pt(2, 2), pt(14, 14)], outline=255, width=w)
        d.line([pt(8, 7), pt(8, 11.5)], fill=255, width=w)
        d.ellipse([pt(7.1, 4.1), pt(8.9, 5.9)], fill=255)
    elif name == "warn":
        d.polygon([pt(8, 1.8), pt(14.5, 13.5), pt(1.5, 13.5)], fill=255)
        d.line([pt(8, 6), pt(8, 9.6)], fill=0, width=int(1.5 * u))
        d.ellipse([pt(7.2, 10.6), pt(8.8, 12.2)], fill=0)
    elif name == "search":
        d.ellipse([pt(2, 2), pt(10.5, 10.5)], outline=255, width=w)
        d.line([pt(9.6, 9.6), pt(14, 14)], fill=255, width=int(1.9 * u))
    elif name == "filter":
        d.polygon([pt(2, 3), pt(14, 3), pt(9.6, 8.4), pt(9.6, 13.5), pt(6.4, 12), pt(6.4, 8.4)], fill=255)
    elif name == "copy":
        d.rounded_rectangle([pt(5.5, 2), pt(13.5, 10.5)], radius=u, outline=255, width=w)
        d.rounded_rectangle([pt(2.5, 5), pt(10.5, 14)], radius=u, fill=0)
        d.rounded_rectangle([pt(2.5, 5), pt(10.5, 14)], radius=u, outline=255, width=w)
    elif name == "trash":
        d.line([pt(2.5, 4), pt(13.5, 4)], fill=255, width=w)
        d.line([pt(6, 4), pt(6, 2.4), pt(10, 2.4), pt(10, 4)], fill=255, width=w, joint="curve")
        d.polygon([pt(3.8, 5.2), pt(12.2, 5.2), pt(11.4, 14), pt(4.6, 14)], fill=255)
        for x in (6.6, 9.4):
            d.line([pt(x, 7), pt(x, 12)], fill=0, width=int(0.8 * u))
    elif name == "edit":
        d.polygon([pt(2.5, 13.5), pt(3.2, 10), pt(11, 2.2), pt(13.8, 5), pt(6, 12.8)], fill=255)
        d.line([pt(9.6, 3.8), pt(12.2, 6.4)], fill=0, width=int(0.8 * u))
    elif name == "calendar":
        d.rounded_rectangle([pt(2, 3.5), pt(14, 14)], radius=int(1.4 * u), outline=255, width=w)
        d.line([pt(2, 7), pt(14, 7)], fill=255, width=w)
        d.line([pt(5, 1.8), pt(5, 4.6)], fill=255, width=w)
        d.line([pt(11, 1.8), pt(11, 4.6)], fill=255, width=w)
    elif name == "clock":
        d.ellipse([pt(2, 2), pt(14, 14)], outline=255, width=w)
        d.line([pt(8, 4.5), pt(8, 8), pt(10.8, 9.6)], fill=255, width=w, joint="curve")
    elif name == "user":
        d.ellipse([pt(5, 2), pt(11, 8)], fill=255)
        d.pieslice([pt(2.5, 9), pt(13.5, 20)], start=180, end=360, fill=255)
    elif name == "users":
        d.ellipse([pt(2.8, 3), pt(7.8, 8)], fill=255)
        d.pieslice([pt(1.2, 9), pt(9.4, 17.2)], start=180, end=360, fill=255)
        d.ellipse([pt(9, 3.6), pt(13.4, 8)], fill=255)
        d.pieslice([pt(8.6, 9.4), pt(15.4, 16.2)], start=180, end=360, fill=255)
    elif name == "crown":
        d.polygon([pt(1.8, 12.5), pt(1.8, 4.6), pt(5.4, 8.2), pt(8, 3), pt(10.6, 8.2), pt(14.2, 4.6), pt(14.2, 12.5)], fill=255)
    elif name == "coin":
        d.ellipse([pt(1.8, 1.8), pt(14.2, 14.2)], outline=255, width=w)
        d.line([pt(8, 4.8), pt(8, 11.2)], fill=255, width=w)
        d.line([pt(5.6, 8), pt(10.4, 8)], fill=255, width=w)
    elif name == "refresh":
        d.arc([pt(2.6, 2.6), pt(13.4, 13.4)], start=40, end=320, fill=255, width=w)
        d.polygon([pt(13.6, 2.2), pt(13.6, 7.4), pt(8.6, 6.2)], fill=255)
    elif name == "download":
        d.line([pt(8, 2.5), pt(8, 10.5)], fill=255, width=w)
        d.line([pt(4.6, 7.4), pt(8, 10.8), pt(11.4, 7.4)], fill=255, width=w, joint="curve")
        d.line([pt(3, 13.5), pt(13, 13.5)], fill=255, width=w)
    elif name == "upload":
        d.line([pt(8, 11), pt(8, 3)], fill=255, width=w)
        d.line([pt(4.6, 6.2), pt(8, 2.8), pt(11.4, 6.2)], fill=255, width=w, joint="curve")
        d.line([pt(3, 13.5), pt(13, 13.5)], fill=255, width=w)
    elif name == "bell":
        d.pieslice([pt(3.4, 2), pt(12.6, 12)], start=180, end=360, fill=255)
        d.polygon([pt(3.4, 7), pt(12.6, 7), pt(14, 12), pt(2, 12)], fill=255)
        d.ellipse([pt(6.4, 12), pt(9.6, 14.8)], fill=255)
    elif name == "flag":
        d.line([pt(3.8, 1.8), pt(3.8, 14.5)], fill=255, width=w)
        d.polygon([pt(4, 2.5), pt(13.5, 2.5), pt(11, 6.2), pt(13.5, 9.8), pt(4, 9.8)], fill=255)
    elif name == "minus":
        d.line([pt(3, 8), pt(13, 8)], fill=255, width=w)
    elif name == "gem":
        d.polygon([pt(1.8, 6), pt(4.8, 2.4), pt(11.2, 2.4), pt(14.2, 6), pt(8, 14)], fill=255)
        d.line([pt(1.8, 6), pt(14.2, 6)], fill=0, width=int(0.7 * u))
    elif name == "bag":
        d.rounded_rectangle([pt(3, 6), pt(13, 14.2)], radius=int(1.6 * u), fill=255)
        d.arc([pt(5.2, 1.8), pt(10.8, 9.6)], start=180, end=360, fill=255, width=w)
    elif name == "book":
        d.rounded_rectangle([pt(2.4, 2.8), pt(13.6, 13.2)], radius=int(1.2 * u), outline=255, width=w)
        d.line([pt(8, 3), pt(8, 13)], fill=255, width=w)
    elif name == "link":
        d.rounded_rectangle([pt(1.6, 5.8), pt(9, 10.2)], radius=int(2.2 * u), outline=255, width=w)
        d.rounded_rectangle([pt(7, 5.8), pt(14.4, 10.2)], radius=int(2.2 * u), outline=255, width=w)
    elif name == "arrow_left":
        d.line([pt(13, 8), pt(3.5, 8)], fill=255, width=w)
        d.line([pt(7.5, 4), pt(3.5, 8), pt(7.5, 12)], fill=255, width=w, joint="curve")
    elif name == "heart":
        d.ellipse([pt(2, 2.6), pt(8.4, 9)], fill=255)
        d.ellipse([pt(7.6, 2.6), pt(14, 9)], fill=255)
        d.polygon([pt(2.3, 6.8), pt(13.7, 6.8), pt(8, 14.2)], fill=255)
    elif name == "quill":
        d.polygon([pt(13.8, 1.8), pt(9.2, 2.8), pt(5.4, 7.4), pt(4.6, 11), pt(7.2, 10.2), pt(12.2, 6.2)], fill=255)
        d.line([pt(2.2, 14.2), pt(9.4, 6.4)], fill=0, width=int(0.8 * u))
        d.line([pt(2, 14.4), pt(5, 11.2)], fill=255, width=w)
    elif name == "chat":
        d.rounded_rectangle([pt(1.8, 2.6), pt(14.2, 11.4)], radius=int(2 * u), fill=255)
        d.polygon([pt(4.4, 10.5), pt(4.4, 14.2), pt(8.6, 10.5)], fill=255)
        for x in (5, 8, 11):
            d.ellipse([pt(x - 0.8, 6), pt(x + 0.8, 7.6)], fill=0)
    elif name == "scroll":
        d.rounded_rectangle([pt(4, 2.6), pt(12.4, 13.4)], radius=int(1.2 * u), fill=255)
        d.ellipse([pt(2.2, 1.8), pt(5.8, 5.4)], outline=255, width=w)
        d.ellipse([pt(10.6, 10.6), pt(14.2, 14.2)], outline=255, width=w)
        for y in (6, 8.2, 10.4):
            d.line([pt(6, y), pt(10.4, y)], fill=0, width=int(0.7 * u))
    elif name == "hand":
        d.rounded_rectangle([pt(4, 7), pt(12.2, 14.4)], radius=int(2.4 * u), fill=255)
        for x, top in ((5.1, 3.2), (7.3, 1.8), (9.5, 2.2), (11.5, 3.8)):
            d.line([pt(x, top), pt(x, 9)], fill=255, width=int(1.7 * u))
            d.ellipse([pt(x - 0.85, top - 0.85), pt(x + 0.85, top + 0.85)], fill=255)
        d.line([pt(4.4, 10.4), pt(2.2, 7.6)], fill=255, width=int(1.7 * u))
    elif name == "note":
        d.ellipse([pt(2.6, 10), pt(7.4, 14)], fill=255)
        d.line([pt(6.6, 12), pt(6.6, 2.4)], fill=255, width=w)
        d.polygon([pt(6.6, 2), pt(12.6, 4.4), pt(12.6, 7.6), pt(6.6, 5.4)], fill=255)
    elif name == "smile":
        d.ellipse([pt(1.8, 1.8), pt(14.2, 14.2)], outline=255, width=w)
        d.ellipse([pt(5, 5.2), pt(6.8, 7.2)], fill=255)
        d.ellipse([pt(9.2, 5.2), pt(11, 7.2)], fill=255)
        d.arc([pt(4.6, 5.4), pt(11.4, 11.8)], start=20, end=160, fill=255, width=w)
    elif name == "train":
        d.rectangle([pt(1.6, 6.6), pt(10.6, 11.4)], fill=255)
        d.rectangle([pt(9, 2.6), pt(14.4, 11.4)], fill=255)
        d.rectangle([pt(10.4, 4), pt(13, 6.6)], fill=0)
        d.rectangle([pt(3, 3.4), pt(5.4, 6.6)], fill=255)
        for x in (4, 8.4, 12.2):
            d.ellipse([pt(x - 1.8, 10.6), pt(x + 1.8, 14.2)], fill=255)
    return img.resize((CELL, CELL), Image.LANCZOS)


def logo_round(size):
    """The addon's own logo (assets/logo-source.webp, no transparency) cut to a circle: the title bar and the credits show
    it round. Full colour, anti-aliased edge, never tinted."""
    logo = Image.open(os.path.join(ROOT, "assets", "logo-source.webp")).convert("RGBA")
    img = logo.resize((size, size), Image.LANCZOS)
    img.putalpha(circle(size))
    return img


def nebula_logo(variant, size=256):
    """The NEBULA community logo (assets/nebula/nebula-logo-<variant>.png, the owner's art cropped to its content box, 512x492 RGBA):
    centred on a transparent square, then scaled. Full colour, never tinted; the file is used with its owner's permission and is
    not covered by the code licence (docs/third-party.md)."""
    art = Image.open(os.path.join(ROOT, "assets", "nebula", f"nebula-logo-{variant}.png")).convert("RGBA")
    side = max(art.size)
    square = Image.new("RGBA", (side, side), (0, 0, 0, 0))
    square.paste(art, ((side - art.width) // 2, (side - art.height) // 2))
    return square.resize((size, size), Image.LANCZOS)


def save(img, name):
    path = os.path.join(OUT, name + ".tga")
    img.save(path, compression=None)   # uncompressed 32-bit
    return path


def main():
    os.makedirs(OUT, exist_ok=True)
    made = []
    for r in (8, 12, 18):
        made.append(save(white(rounded((64, 64), r)), f"rr_fill_{r}"))
        made.append(save(white(rounded((64, 64), r, ring=1.0)), f"rr_ring_{r}"))
    made.append(save(white(blurred((128, 128), 18, 40, 9)), "shadow"))
    made.append(save(white(blurred((128, 128), 14, 46, 5)), "glow_s"))
    made.append(save(white(blurred((128, 128), 20, 34, 12)), "glow_l"))
    made.append(save(white(rounded((64, 32), 16)), "pill"))
    made.append(save(white(circle(64)), "circle"))
    made.append(save(white(radial(128)), "blob_radial"))
    made.append(save(white(circle(256)), "disc_256"))
    made.append(save(white(rounded((256, 256), 128, ring=2.0)), "ring_256"))
    sheet = Image.new("L", (256, 256), 0)
    for i, name in enumerate(ICON_NAMES):
        sheet.paste(draw_icon(name), ((i % 16) * CELL, (i // 16) * CELL))
    made.append(save(white(sheet), "icons"))
    for size in (256, 64):
        made.append(save(logo_round(size), f"logo_{size}"))
    for variant in ("dark", "light"):
        made.append(save(nebula_logo(variant), f"nebula_{variant}_256"))
    total = 0
    for p in made:
        n = os.path.getsize(p)
        total += n
        print(f"{os.path.relpath(p, ROOT)}: {n} bytes")
    print(f"total {total} bytes")
    return 0


if __name__ == "__main__":
    sys.exit(main())
