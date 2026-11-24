"""Colours are written only in AzerothUnspoken/UI/Theme.lua (UI-ECO step UI-8, docs/specs/ui-style.md).

Every other file of AzerothUnspoken/UI/ (and UI/Widgets/) takes its colours from a token: Theme.Tint / Fill / Text /
Gradient, W.Hex(token), Theme.Color(token). This check fails on a colour written by hand outside Theme.lua:
  - a WoW colour escape |cffRRGGBB;
  - a "#RRGGBB" string;
  - SetVertexColor / SetColorTexture / SetTextColor / SetShadowColor / SetBackdropColor / SetBackdropBorderColor /
    CreateColor called with a number;
  - a table of three or more numbers between 0 and 1 ({ 0.1, 0.2, 0.3 }).
A justified exception carries the reason on its line: `-- colour-ok: <reason>` (no reason = fail). Comments are not
scanned. Usage: python -I -X utf8 Tests/check_theme_colors.py
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
UI = os.path.join(os.path.dirname(HERE), "AzerothUnspoken", "UI")
THEME = "Theme.lua"

RULES = [
    (re.compile(r"\|c[fF]{2}[0-9a-fA-F]{6}"), "a |cffRRGGBB colour escape"),
    (re.compile(r"[\"']#[0-9a-fA-F]{6}(?:[0-9a-fA-F]{2})?[\"']"), "a #RRGGBB colour"),
    (re.compile(r"\b(?:SetVertexColor|SetColorTexture|SetTextColor|SetShadowColor|SetBackdropColor|SetBackdropBorderColor|"
                r"CreateColor)\s*\(\s*(?:self\s*,\s*)?-?\d"), "a colour call with numbers"),
    (re.compile(r"\{\s*(?:0|1|0?\.\d+|1\.0+)\s*,\s*(?:0|1|0?\.\d+|1\.0+)\s*,\s*(?:0|1|0?\.\d+|1\.0+)\s*[,}]"),
     "a table of colour channels"),
]
ALLOW = re.compile(r"--\s*colour-ok:\s*(\S.*)?$")
FAILURES = []


def check(cond, msg):
    print(("  ok  " if cond else "  FAIL ") + msg)
    if not cond:
        FAILURES.append(msg)


def code_of(line):
    """The line without its comment (a -- outside a string). Long strings and block comments are not used in UI/."""
    out, quote, i = [], None, 0
    while i < len(line):
        c = line[i]
        if quote:
            out.append(c)
            if c == "\\":
                out.append(line[i + 1:i + 2])
                i += 1
            elif c == quote:
                quote = None
        elif c in "\"'":
            quote = c
            out.append(c)
        elif line.startswith("--", i):
            break
        else:
            out.append(c)
        i += 1
    return "".join(out)


def problems_of(text, label):
    found = []
    for no, line in enumerate(text.split("\n"), 1):
        code = code_of(line)
        hits = [what for rx, what in RULES if rx.search(code)]
        if not hits:
            continue
        allow = ALLOW.search(line)
        if allow and (allow.group(1) or "").strip():
            continue
        why = " (an allow-list comment needs a reason)" if allow else ""
        found.append(f"{label}:{no}: {hits[0]}{why}: {line.strip()[:100]}")
    return found


def selftest():
    cases = [
        ('Theme.Tint(t, "accent")', 0), ('t:SetVertexColor(1, 1, 1, 1)', 1), ('t:SetVertexColor(r, g, b, a)', 0),
        ('NS:Print("|cffffffff/s|r")', 1), ('local c = "#FC7E46"', 1), ('local c = { 0.1, 0.2, 0.3, 1 }', 1),
        ('local p = { 16, 24, 32 }', 0), ('t:SetColorTexture(0, 0, 0, .5)', 1), ('NS:Print(W.Hex("ok") .. x)', 0),
        ('t:SetVertexColor(1, 1, 1) -- colour-ok: the white hover layer', 0), ('t:SetVertexColor(1, 1, 1) -- colour-ok:', 1),
        ('-- t:SetVertexColor(1, 1, 1)', 0), ('local s = "a -- |cffffffff b"', 1), ('CreateColor(1, 0.5, 0, 1)', 1),
    ]
    bad = [(src, n) for src, n in cases if len(problems_of(src, "case")) != n]
    check(not bad, f"self-test: {len(cases)} fixed cases" + ("" if not bad else f": wrong on {bad}"))


def main():
    print("COLOURS ONLY IN UI/Theme.lua")
    selftest()
    found, files = [], 0
    for folder in (UI, os.path.join(UI, "Widgets")):
        for name in sorted(os.listdir(folder)):
            if not name.endswith(".lua") or (folder == UI and name == THEME):
                continue
            files += 1
            path = os.path.join(folder, name)
            label = os.path.relpath(path, os.path.dirname(UI)).replace("\\", "/")
            found += problems_of(open(path, encoding="utf-8").read(), label)
    check(files > 10, f"{files} files of UI/ read (Theme.lua excluded)")
    check(not found, "no colour written outside Theme.lua" + ("" if not found else ":\n    " + "\n    ".join(found)))
    print("\n" + ("TUTTI I CONTROLLI SUPERATI" if not FAILURES else f"{len(FAILURES)} CONTROLLI FALLITI"))
    return 1 if FAILURES else 0


if __name__ == "__main__":
    sys.exit(main())
