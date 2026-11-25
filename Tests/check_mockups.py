"""The mockups follow the addon (UI-ECO step UI-8): the tokens of tools/mockup_lib.py are the tokens of
AzerothUnspoken/UI/Theme.lua, name by name and value by value, in both themes; the stylesheet of docs/design/mockups is
the one the library writes; every scene of tools/make_mockups.py builds and has its images in docs/specs/mockups.

Theme.lua is read as text (its Theme.TOKENS list and the hex()/rgba() values of each theme), so the check needs no
client. Usage: python -I -X utf8 Tests/check_mockups.py
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(ROOT, "tools"))
sys.path.insert(0, os.path.join(ROOT, "docs", "design", "mockups", "tools"))
THEME = os.path.join(ROOT, "AzerothUnspoken", "UI", "Theme.lua")
FAILURES = []


def check(cond, msg):
    print(("  ok  " if cond else "  FAIL ") + msg)
    if not cond:
        FAILURES.append(msg)


def lua_tokens(src):
    """Theme.TOKENS (in order) and { theme id: { token: (r, g, b, a) } } of Theme.lua."""
    names = re.findall(r'"([a-z0-9-]+)"', re.search(r"Theme\.TOKENS\s*=\s*\{(.*?)\}", src, re.S).group(1))
    body = re.search(r"Theme\.themes\s*=\s*\{(.*)\n\}\n", src, re.S).group(1)
    themes = {}
    for tid, block in re.findall(r"\n\t([a-z]+)\s*=\s*\{(.*?)\n\t\},", body, re.S):
        vals = {}
        for key, kind, args in re.findall(r'(\[?"?[a-z0-9-]+"?\]?)\s*=\s*(hex|rgba)\(([^)]*)\)', block):
            name = key.strip('[]"')
            if kind == "hex":
                h = args.strip().strip('"')
                vals[name] = (int(h[1:3], 16), int(h[3:5], 16), int(h[5:7], 16), 1.0)
            else:
                r, g, b, a = [x.strip() for x in args.split(",")]
                vals[name] = (int(r), int(g), int(b), float(a))
        themes[tid] = vals
    return names, themes


def compare(lib_tokens, lib_themes, names, themes):
    """The differences between the library and Theme.lua, as a list of words."""
    out = []
    if list(lib_tokens) != names:
        out.append(f"token names or order differ: library {len(lib_tokens)}, Theme.lua {len(names)}")
    if set(lib_themes) != set(themes):
        out.append(f"themes differ: library {sorted(lib_themes)}, Theme.lua {sorted(themes)}")
    for tid in sorted(set(lib_themes) & set(themes)):
        for name in names:
            lv = lib_themes[tid].get(name)
            tv = themes[tid].get(name)
            if lv is None or tv is None:
                out.append(f"{tid}.{name} missing in the {'library' if lv is None else 'Theme.lua'}")
                continue
            from mockup_lib import rgba
            a = rgba(lv)
            if a[:3] != tv[:3] or abs(a[3] - tv[3]) > 0.001:
                out.append(f"{tid}.{name}: library {lv}, Theme.lua {tv}")
        extra = set(lib_themes[tid]) - set(names)
        if extra:
            out.append(f"{tid}: tokens only in the library: {sorted(extra)}")
    return out


def main():
    print("MOCKUP TOKENS = Theme.lua TOKENS")
    import mockup_lib as M
    src = open(THEME, encoding="utf-8").read()
    names, themes = lua_tokens(src)
    check(len(names) == 32, f"Theme.TOKENS has {len(names)} names (32: the 27 of the sister addon and 5 voices, ADR 0060)")
    check(sorted(themes) == ["aurora", "nebula"] and all(len(themes[t]) == len(names) for t in themes),
          "Theme.lua defines every token in Nebula and Aurora")
    diff = compare(M.TOKENS, M.THEMES, names, themes)
    check(not diff, "tools/mockup_lib.py has the same 32 tokens and values as Theme.lua, in both themes"
          + ("" if not diff else ":\n    " + "\n    ".join(diff)))
    # self-test: a changed value, a missing token and a renamed one are caught
    bad = {t: dict(v) for t, v in M.THEMES.items()}
    bad["nebula"]["accent"] = "#FC7E47"
    del bad["aurora"]["voice-npc"]
    check(len(compare(M.TOKENS, bad, names, themes)) == 2, "self-test: a changed value and a missing token are reported")
    check(compare(M.TOKENS[:-1] + ["voice-pc"], M.THEMES, names, themes) != [], "self-test: a renamed token is reported")

    print("\nTHE STYLESHEET OF docs/design/mockups")
    M.set_base("../../../")
    css = open(os.path.join(ROOT, "docs", "design", "mockups", "mockups.css"), encoding="utf-8").read()
    check(css == M.css(), "docs/design/mockups/mockups.css is the one tools/mockup_lib.py writes "
                          "(run docs/design/mockups/tools/build_mockups.py)")
    check(re.search(r"[A-Za-z]:[\\/]|file:///", css) is None, "the stylesheet has no absolute path")

    print("\nTHE MOCKUPS OF docs/specs/mockups")
    try:
        import make_mockups
        problems = []
        make_mockups.check(problems)
        check(not problems, f"{len(make_mockups.SCENES)} scenes x 2 themes x 2 languages build, every image is there"
              + ("" if not problems else ":\n    " + "\n    ".join(problems)))
    except ImportError as e:   # lupa is missing outside the test environment
        print(f"  lupa or Pillow is missing ({e}): the scenes were not built")
    print("\n" + ("TUTTI I CONTROLLI SUPERATI" if not FAILURES else f"{len(FAILURES)} CONTROLLI FALLITI"))
    return 1 if FAILURES else 0


if __name__ == "__main__":
    sys.exit(main())
