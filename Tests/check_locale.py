"""Offline check of the interface texts and of the "no text written in code" rule (UI-ECO step UI-2; adapted from the
sister addon's tools/check_locale.py).

Rules:
  1. Parity. The interface texts of the addon are `ui` tables registered with NS:RegisterLanguage("en" | "it", ...) in
     Data/<enUS|itIT>/*.lua. Each English file has an Italian twin with exactly the same keys (and the same keys inside a
     nested table) and every string has the same printf placeholders (%s %d ...), in any order.
  2. Keys exist. Every literal key given to NS:L("key", ...) or Q:L("key") in the UI files exists in the English table (a
     missing key would show the key itself and hide the typo).
  3. No visible text is written in AzerothUnspoken/UI/*.lua: a string literal that is an argument of a text call
     (SetText, Print, AddLine, AddMessage, SendChatMessage...), the value of a field such as text/title/label/tooltip,
     or that reads like a sentence (two words with a space), fails. A key shaped like `help_depth` is not text. The
     syntax of a slash command (`usage = "mode private / preview"`) is English by ADR 0023 and not translated.
     A line that really holds no text (a format string, a developer diagnostic) says so with a comment
     `-- nolocale: the reason`; a `nolocale` without a reason fails.
  The check runs fixed cases of rule 3 on itself first, so a broken checker is reported.

Needs `lupa` (the test runner has it) to read the Lua tables. Usage: python -I -X utf8 Tests/check_locale.py
(exit code 1 if a check fails; also called by Tests/run_tests.py).
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
ADDON = os.path.join(ROOT, "AzerothUnspoken")
UI_DIR = os.path.join(ADDON, "UI")
LANGS = (("en", "enUS"), ("it", "itIT"))

SINKS = (r"(?:SetText|SetFormattedText|Print|AddLine|AddDoubleLine|AddMessage|SendChatMessage|print|SetTitle|"
         r"SetStatusText|SetLabel|SetTooltipText|SetNotice)")
FIELDS = r"(?:text|title|label|tooltip|desc|description|header|message|msg|name_text|hint)"
WORD = r"[A-Za-zÀ-ɏ]{2,}"
PLACEHOLDER = r"%[\-\d\.]*[sdfxqc%]"
COLOUR = r"\|c[0-9a-fA-F]{2}(?:[0-9a-fA-F]{6}|%s)|\|r|\|T[^|]*\|t"
KEY = re.compile(r"^[A-Za-z][A-Za-z0-9]*(?:_[A-Za-z0-9]+)+$")   # help_depth, mem_tab_places: a locale key, not text

FAILURES = []


def check(cond, msg):
    if cond:
        print("  ok  " + msg)
    else:
        FAILURES.append(msg)
        print("  FAILED  " + msg)


def read(path):
    with open(path, encoding="utf-8") as f:
        return f.read()


def tokens(source):
    """Yields (line, kind, text, position) for every string literal of a Lua source, skipping comments. Literals on a
    line that has a `-- nolocale: reason` comment come with kind 'exempt', on a line with a bare `-- nolocale` with kind
    'noreason'."""
    exempt, bare = set(), set()
    for m in re.finditer(r"--\s*nolocale\b(\s*:\s*\S)?", source):
        line = source.count("\n", 0, m.start()) + 1
        (exempt if m.group(1) else bare).add(line)
    i, n, line = 0, len(source), 1
    while i < n:
        c = source[i]
        if c == "\n":
            line += 1
            i += 1
        elif source.startswith("--", i):
            m = re.match(r"--\[(=*)\[", source[i:])
            if m:
                close = "]" + m.group(1) + "]"
                end = source.find(close, i)
                end = n if end < 0 else end + len(close)
                line += source.count("\n", i, end)
                i = end
            else:
                end = source.find("\n", i)
                i = n if end < 0 else end
        elif c in "\"'":
            j, buf = i + 1, []
            while j < n and source[j] != c and source[j] != "\n":
                if source[j] == "\\" and j + 1 < n:
                    buf.append(source[j:j + 2])
                    j += 2
                else:
                    buf.append(source[j])
                    j += 1
            yield line, ("exempt" if line in exempt else "noreason" if line in bare else "string"), "".join(buf), i
            i = j + 1
        elif c == "[" and re.match(r"\[=*\[", source[i:]):
            m = re.match(r"\[(=*)\[", source[i:])
            close = "]" + m.group(1) + "]"
            end = source.find(close, i)
            end = n if end < 0 else end + len(close)
            yield line, ("exempt" if line in exempt else "noreason" if line in bare else "string"), source[i:end], i
            line += source.count("\n", i, end)
            i = end
        else:
            i += 1


def words_of(text):
    return re.findall(WORD, re.sub(PLACEHOLDER + "|" + COLOUR + r"|\\[nrt]", "", text))


def find_hardcoded(source, label):
    """The hard-coded visible text of one UI file: a list of 'label:line: message'."""
    problems = []
    for line, kind, text, pos in tokens(source):
        if kind == "exempt":
            continue
        words = words_of(text)
        if kind == "noreason":
            if words:
                problems.append(f"{label}:{line}: `-- nolocale` needs a reason: `-- nolocale: why this is not text`")
            continue
        if not words or KEY.match(text):
            continue
        before = source[:pos]
        before = before[before.rfind("\n") + 1:]
        if re.search(r"\busage\s*=\s*$", before):
            continue   # the syntax of a slash command is English (ADR 0023)
        sink = re.search(SINKS + r"\s*\(\s*(?:[^,()]*,\s*)?$", before)
        field = re.search(r"\b" + FIELDS + r"\s*=\s*$", before)
        sentence = len(words) >= 2 and " " in text
        if sink or field or sentence:
            problems.append(f"{label}:{line}: hard-coded visible text {text[:40]!r}: use a locale key (NS:L(\"key\"))")
    return problems


CASES = [   # (source, number of problems expected)
    ('frame:SetText("Hello world")', 1),
    ('frame:SetText(NS:L("hello"))', 0),
    ('local t = { title = "Credits" }', 1),
    ('local t = { title = "mem_tab_places" }', 0),
    ('local t = { name = "CREDITS_LIST" }', 0),
    ('x = "Two words"', 1),
    ('x = "READ_ONLY"', 0),
    ('x = "Interface\\\\Icons\\\\INV_Misc_Coin_01"', 0),
    ('x = "Two words" -- nolocale: a developer diagnostic', 0),
    ('x = "Two words" -- nolocale', 1),
    ('-- frame:SetText("Hello world")', 0),
    ('x = "%s: %d"', 0),
    ('x = ("|cff%s%s|r %s |cff%s%s|r"):format(a, b, c, d, e)', 0),
    ('{ usage = "mode private / preview", desc = "help_mode" }', 0),
    ('self:Print("Done")', 1),
    ('x = [[Long text here]]', 1),
    ('self:Print(NS:L("done"):format("x"))', 0),
    ('h.messages:AddMessage("Saved now")', 1),
]


def selftest():
    for source, expected in CASES:
        got = len(find_hardcoded(source, "case"))
        check(got == expected, f"check_locale: {source!r} gives {got} problem(s), expected {expected}")


def placeholders(text):
    return sorted(re.findall(r"%[\-\d\.]*[sdfxqc]", text))


def load_languages():
    """{ code: { file: ui table as nested dicts } } read with the real registration call, file by file."""
    from lupa import lua51
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    capture = lua.eval("""function(src, name)
        local out = {}
        local NS = { RegisterLanguage = function(_, code, info) out[#out + 1] = { code = code, ui = info.ui or {} } end }
        assert(loadstring(src, name))("AzerothUnspoken", NS)
        return out
    end""")
    result = {}
    for code, folder in LANGS:
        result[code] = {}
        base = os.path.join(ADDON, "Data", folder)
        for name in sorted(os.listdir(base)):
            if not name.endswith(".lua") or not (name == "Interface.lua" or name.endswith("UI.lua")):
                continue
            regs = capture(read(os.path.join(base, name)), "@" + name)
            flat = {}
            for i in range(1, len(regs) + 1):
                reg = regs[i]
                if reg["code"] == code:
                    flat.update(flatten(reg["ui"]))
            result[code][name] = flat
    return result


def is_list(table):
    keys = list(table.keys())
    return bool(keys) and all(isinstance(k, (int, float)) for k in keys)


def flatten(table, prefix=""):
    """A Lua table as { "a.b": value } with the keys joined by dots (list indexes as [n])."""
    out = {}
    for k, v in table.items():
        key = f"{prefix}{k}" if not prefix else f"{prefix}.{k}"
        if isinstance(k, (int, float)):
            key = f"{prefix}[{int(k)}]"
        if hasattr(v, "items"):
            if is_list(v):
                out[key] = "[list]"   # a gendered noun: {"priest", "priestess"}; the other language may give one word
            else:
                out.update(flatten(v, key))
        else:
            out[key] = v
    return out


def check_parity(langs):
    en, it = langs["en"], langs["it"]
    check(set(en) == set(it), "every English interface file has an Italian twin: " + ", ".join(sorted(en)))
    total = 0
    for name in sorted(set(en) & set(it)):
        a, b = en[name], it[name]
        missing_it = sorted(set(a) - set(b))
        missing_en = sorted(set(b) - set(a))
        check(not missing_it, f"{name}: every English key is in Italian (missing: {missing_it[:6]})")
        check(not missing_en, f"{name}: every Italian key is in English (extra: {missing_en[:6]})")
        bad = []
        for key in sorted(set(a) & set(b)):
            total += 1
            if isinstance(a[key], str) and isinstance(b[key], str):
                if placeholders(a[key]) != placeholders(b[key]):
                    bad.append(f"{key}: {placeholders(a[key])} / {placeholders(b[key])}")
            elif "[list]" in (a[key], b[key]):
                pass   # one language has a masculine and a feminine form, the other only one word
            elif type(a[key]) is not type(b[key]):
                bad.append(f"{key}: different types")
        check(not bad, f"{name}: same placeholders in both languages ({'; '.join(bad[:4])})")
    return total


def check_keys_exist(langs):
    keys = set()
    for table in langs["en"].values():
        keys.update(k.split(".")[0] for k in table)
    unknown = []
    for name in sorted(os.listdir(UI_DIR)):
        if not name.endswith(".lua"):
            continue
        for m in re.finditer(r"[:.]L\(\s*\"([A-Za-z0-9_]+)\"\s*[,)]", read(os.path.join(UI_DIR, name))):
            if m.group(1) not in keys:
                unknown.append(f"UI/{name}: {m.group(1)}")
    check(not unknown, f"every literal key of NS:L() in UI/ is in the English texts ({'; '.join(unknown[:6])})")


def check_hardcoded():
    files, problems = 0, []
    for name in sorted(os.listdir(UI_DIR)):
        if name.endswith(".lua"):
            files += 1
            problems.extend(find_hardcoded(read(os.path.join(UI_DIR, name)), "UI/" + name))
    for p in problems:
        print("    " + p)
    check(not problems, f"no visible text written in the {files} UI files ({len(problems)} problem(s))")


def main():
    selftest()
    try:
        langs = load_languages()
    except ImportError:
        print("  lupa is missing: the parity checks were skipped")
        langs = None
    if langs:
        total = check_parity(langs)
        print(f"  {total} keys compared")
        check_keys_exist(langs)
    check_hardcoded()
    print(f"Locale check: {len(FAILURES)} problem(s).")
    return 1 if FAILURES else 0


if __name__ == "__main__":
    sys.exit(main())
