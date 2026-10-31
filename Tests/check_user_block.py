"""Source check behind ADR 0026: the software never writes the `user` block of a player record.

A player record keeps what the USER chose (`user`: axes edited by hand, label, feeling, note, tags, traits, role) apart
from what the ADDON observed (`seen`). Only the user-action functions listed below may write the user block. This check
reads every Lua file of the addon and fails if any other function writes it: an assignment to `...user.<field>`, a
`table.insert/remove/sort` on it, or a write through an alias of it (`local user = R.UserOf(rec)`, `local rec, user =
Edit(...)`), so that a future automatic path (an event handler, a suggestion, a decay) cannot change a user choice by
accident. The behaviour test is in Tests/TestPlayers.lua ("the software never writes the user block").

Adding a function to ALLOWED means it is a user action (a button, a slider, a command) or the one-time shaping of
loaded data (migration, sanitizing). It needs a reason, and ADR 0026 says why the list is short.

Usage: python -I -X utf8 Tests/check_user_block.py   (exit code 1 if a check fails)
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)

# (file, top-level function) -> why it may write the user block
ALLOWED = {
    ("Systems/Relationships.lua", "Edit"): "the way to a record the user is changing (every user setter goes through it)",
    ("Systems/Relationships.lua", "R:SetAxis"): "user action: slider, buttons, /au relationships set",
    ("Systems/Relationships.lua", "R:SetLabel"): "user action: label box, /au relationships label",
    ("Systems/Relationships.lua", "R:CycleLabel"): "user action: the label button",
    ("Systems/Relationships.lua", "R:SetNote"): "user action: note box, /au relationships note",
    ("Systems/Relationships.lua", "R:SetTags"): "user action: tags box, /au relationships tags",
    ("Systems/Relationships.lua", "R:SetFeelings"): "user action: /au relationships feeling",
    ("Systems/Relationships.lua", "R:CycleFeeling"): "user action: the feeling buttons",
    ("Systems/Relationships.lua", "R:ApplyFeelingPreset"): "user action: the typical-axes button, feeling ... preset",
    ("Systems/Relationships.lua", "R:AddPlayer"): "user action (or the explicit auto option): creates the empty block",
    ("Systems/Relationships.lua", "R:SetScope"): "user action: the scope button of the detail, /au relationships scope (moves or copies the user block between the character and the shared list)",
    ("Systems/Relationships.lua", "R:CopySharedHere"): "user action: /au relationships share copy (copies the shared choices into this character)",
    ("Systems/Relationships.lua", "R.MigrateV1"): "one-time move of version 1 data into the new shape",
    ("Systems/Relationships.lua", "CleanRecord"): "shapes loaded data: copies what the user chose, adds nothing",
    ("Systems/Relationships.lua", "CleanChoicesInto"): "shapes loaded data: copies what the user chose, adds nothing",
    ("Systems/Interlocutor.lua", "I:SetTrait"): "user action: the trait buttons, /au who trait",
}

# a write through `.user`: `x.user.field = v`, `x.user[...] = v`, `x.user = v`
W_ASSIGN = re.compile(r"\.user(?:\.[A-Za-z_]\w*|\[[^\]]*\])*\s*=(?!=)")
W_TABLE = re.compile(r"table\.(?:insert|remove|sort|wipe)\(\s*[^)\n]*\.user\b")
W_USEROF = re.compile(r"UserOf\([^)\n]*\)(?:\.[A-Za-z_]\w*|\[[^\]]*\])+\s*=(?!=)")
# an alias: `local user = rec.user`, `local user = R.UserOf(rec)`, `local rec, user = Edit(...)`
ALIAS_DECL = re.compile(r"^\s*local\s+([A-Za-z_][\w\s,]*?)\s*=\s*(.+)$")
FUNC_DECL = re.compile(r"^(?:local\s+)?function\s+([A-Za-z_][\w.:]*)\s*\(")


def strip_comment(line):
    out, quote, i = [], None, 0
    while i < len(line):
        c = line[i]
        if quote:
            out.append(c)
            if c == "\\":
                i += 1
                if i < len(line):
                    out.append(line[i])
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


def scan_text(text, label):
    """Findings (label, line number, function, text) of writes to the user block outside ALLOWED."""
    findings = []
    func, aliases = None, set()
    for n, raw in enumerate(text.split("\n"), 1):
        line = strip_comment(raw)
        m = FUNC_DECL.match(line)
        if m:
            func, aliases = m.group(1), set()
        allowed = (label, func) in ALLOWED
        # aliases of the block (and of its sub-tables) declared in this function
        m = ALIAS_DECL.match(line)
        if m:
            names = [x.strip() for x in m.group(1).split(",")]
            rhs = m.group(2).strip().rstrip(";")
            path = r"(?:\.[A-Za-z_]\w*|\[[^\]]*\])*"
            direct = re.fullmatch(r"[\w.\[\]\"']*\.user" + path, rhs)
            via_useof = re.fullmatch(r"(?:[\w.]+\.)?UserOf\([^()]*\)" + path, rhs)
            via_alias = any(re.fullmatch(re.escape(a) + path, rhs) for a in aliases)
            if direct or via_useof or via_alias:
                aliases.update(names[:1])
            elif re.match(r"(?:[\w.]+[.:])?Edit\(", rhs):
                aliases.update(names[1:2])   # `local rec, user = Edit(...)`: the second value is the user block
        if allowed:
            continue
        hit = W_ASSIGN.search(line) or W_TABLE.search(line) or W_USEROF.search(line)
        for a in aliases:
            if hit:
                break
            if re.search(r"\b%s(?:\.[A-Za-z_]\w*|\[[^\]]*\])+\s*=(?!=)" % re.escape(a), line) or \
                    re.search(r"table\.(?:insert|remove|sort|wipe)\(\s*%s\b" % re.escape(a), line):
                hit = True
        if hit and not (ALIAS_DECL.match(line) and not W_ASSIGN.search(line) and not W_TABLE.search(line)):
            findings.append((label, n, func or "(top level)", raw.strip()))
    return findings


def lua_files():
    for folder in sorted(os.listdir(ROOT)):
        path = os.path.join(ROOT, folder)
        if not (folder.startswith("AzerothUnspoken") and os.path.isdir(path)):
            continue
        for base, _, files in os.walk(path):
            for f in sorted(files):
                if f.endswith(".lua"):
                    yield os.path.join(base, f)


def main():
    failures = []

    def check(cond, msg):
        print(("  ok  " if cond else "  FAIL  ") + msg)
        if not cond:
            failures.append(msg)

    print("THE SOFTWARE NEVER WRITES THE USER BLOCK (ADR 0026)")
    # the scanner itself must be able to fail
    bad = "function R:Tick(rec)\n\trec.user.note = 'x'\nend\n"
    check(len(scan_text(bad, "Systems/Other.lua")) == 1, "self-test: a direct write is found")
    bad = "function R:Tick(rec)\n\tlocal user = R.UserOf(rec)\n\tuser.label = 'x'\nend\n"
    check(len(scan_text(bad, "Systems/Other.lua")) == 1, "self-test: a write through an alias is found")
    bad = "function R:Tick(rec)\n\ttable.insert(rec.user.tags, 'x')\nend\n"
    check(len(scan_text(bad, "Systems/Other.lua")) == 1, "self-test: a table write is found")
    good = "function R:Look(rec)\n\tlocal user = R.UserOf(rec)\n\treturn user.label == 'x' and rec.user.note ~= nil\nend\n"
    check(not scan_text(good, "Systems/Other.lua"), "self-test: reading is fine")

    used, total = set(), 0
    for path in lua_files():
        rel = os.path.relpath(path, ROOT).replace("\\", "/")
        rel = rel.split("/", 1)[1] if "/" in rel else rel
        text = open(path, encoding="utf-8").read()
        for finding in scan_text(text, rel):
            total += 1
            check(False, "%s:%d in %s writes the user block outside the user actions: %s" % (rel, finding[1], finding[2], finding[3]))
        for key in ALLOWED:
            if key[0] == rel and re.search(r"^(?:local\s+)?function\s+%s\s*\(" % re.escape(key[1]), text, re.M):
                used.add(key)
    check(total == 0, "no function outside the user actions writes the user block")
    for key in sorted(set(ALLOWED) - used):
        check(False, "ALLOWED lists %s in %s, which does not exist (stale entry)" % (key[1], key[0]))
    check(set(ALLOWED) == used, "every allowed function exists (%d)" % len(ALLOWED))
    print("")
    print("  %d CHECKS FAILED" % len(failures) if failures else "  ok")
    return 1 if failures else 0


if __name__ == "__main__":
    sys.exit(main())
