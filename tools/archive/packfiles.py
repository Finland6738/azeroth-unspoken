"""The pack folders as the archive sees them: discovery, reading and writing of the Lua data files.

A *rules file* holds one `NS:RegisterPack({ ... registry = { ["id"] = { rule }, ... } })` (base) or one
`AU:RegisterRegionalPack(region, function() return { ... } end)` (regional). A *texts file* holds one
`NS:AddTexts(lang, { ["id"] = { variants } }, packId)` or one `AU:RegisterRegionalTexts(region, lang, packId, function()
return { ... } end)`. Everything else in the file (header comments, the pack's name, other calls) is kept verbatim.

A file is read as `prelude` + chunks + `epilogue`. A chunk is a *gap* (blank lines and comments between entries) or an
*entry* (`["id"] = value,`, its exact source). Writing a file back is the concatenation of its parts, so a file that
did not change comes out byte for byte; an entry whose data changed is rendered again in the canonical style, a new
entry is appended at the end of the table.
"""
import hashlib
import json
import os
import re

import lualit
from lualit import Unsupported

BASE = "AzerothUnspoken"
RULE_KEYS = ("event", "category", "speaker", "form", "styles", "depth", "tags", "weight", "cooldown", "tier", "theme",
             "motifs", "conditions")
VARIANT_KEYS = ("depth",)


class Entry:
    """One entry of a table, as data: `id`, its `data` (Python value), the source `text` and a signature of the data."""

    def __init__(self, id, data, text):
        self.id, self.data, self.text = id, data, text
        self.sig = signature(data)


class SourceFile:
    """A pack file split into prelude, chunks and epilogue (see the module docstring)."""

    def __init__(self, path, role, prelude, epilogue):
        self.path = path          # relative to the repository root, forward slashes
        self.role = role          # "rules" or "texts"
        self.prelude, self.epilogue = prelude, epilogue
        self.chunks = []          # ("gap", None, text) or ("entry", id, text, sig)
        self.pack_id = None
        self.pack_name = None
        self.languages = []
        self.region = None
        self.lang = None
        self.entries = {}         # id -> Entry (the entries of the chunks)


def signature(data):
    """A short hash of a value, independent of the order of keys."""
    return hashlib.sha1(json.dumps(data, sort_keys=True, ensure_ascii=False).encode("utf-8")).hexdigest()[:16]


def read(path):
    with open(path, encoding="utf-8", newline="") as f:
        return f.read()


def write(path, text):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8", newline="") as f:
        f.write(text)


# ---- reading -----------------------------------------------------------------------------------------------------

def _split(src, table, sf, convert):
    """Fills `sf` from the entries of `table` (a parsed `Table` with ["id"] = value fields)."""
    sf.prelude = src[:table.start + 1]
    sf.epilogue = src[table.end - 1:]
    pos = table.start + 1
    for fld in table.fields:
        if not isinstance(fld.key, str):
            raise Unsupported("entry without a string id at %d" % fld.start)
        if pos < fld.start:
            sf.chunks.append(("gap", None, src[pos:fld.start], None))
        data = convert(fld.key, lualit.to_python(fld.value))
        entry = Entry(fld.key, data, src[fld.start:fld.end])
        if fld.key in sf.entries:
            raise Unsupported("id repeated in one file: " + fld.key)
        sf.entries[fld.key] = entry
        sf.chunks.append(("entry", fld.key, entry.text, entry.sig))
        pos = fld.end
    if pos < table.end - 1:
        sf.chunks.append(("gap", None, src[pos:table.end - 1], None))


def rule_data(id, d):
    """The rule record as normalized data: `when` becomes `conditions`, `event` is always a list."""
    if not isinstance(d, dict):
        raise Unsupported("rule %s is not a table" % id)
    out = {}
    for k, v in d.items():
        k = "conditions" if k == "when" else k
        if k in out:
            raise Unsupported("rule %s has both conditions and when" % id)
        out[k] = v
    ev = out.get("event")
    if isinstance(ev, str):
        out["event"] = [ev]
    return out


def variants_data(id, d):
    """The texts of one id and one language as a list of {"text": ..., "depth": ...}."""
    items = [d] if isinstance(d, str) else d
    if not isinstance(items, list):
        raise Unsupported("texts of %s: not a string or a list" % id)
    out = []
    for v in items:
        if isinstance(v, str):
            out.append({"text": v})
        elif isinstance(v, dict) and set(v) <= {lualit.POS, "depth"} and isinstance(v.get(lualit.POS), list) \
                and len(v[lualit.POS]) == 1 and isinstance(v[lualit.POS][0], str):
            item = {"text": v[lualit.POS][0]}
            if "depth" in v:
                item["depth"] = v["depth"]
            out.append(item)
        else:
            raise Unsupported("variant of %s with an unknown shape: %r" % (id, v))
    return out


def _parser(src):
    p = lualit.Parser(src)
    lualit.collect_constants(src, p)
    return p


def parse_rules(path, src, region=None):
    """A rules file. Raises `Unsupported` when the rules are computed by code."""
    p = _parser(src)
    regional = p.skip_to("RegisterRegionalPack") if region else p.skip_to("RegisterPack")
    if not regional:
        raise Unsupported("no RegisterPack call")
    if region:
        if not p.skip_to("return"):
            raise Unsupported("no return in the regional builder")
    else:
        p.expect("(")
    pack = p.table()
    registry = None
    sf = SourceFile(path, "rules", "", "")
    sf.region = region
    for f in pack.fields:
        if f.key == "registry" and isinstance(f.value, lualit.Table):
            registry = f.value
        elif f.key in ("id", "name") and isinstance(f.value, str):
            setattr(sf, "pack_id" if f.key == "id" else "pack_name", f.value)
        elif f.key == "languages" and isinstance(f.value, lualit.Table):
            sf.languages = lualit.to_python(f.value)
    if registry is None or sf.pack_id is None:
        raise Unsupported("the pack has no literal registry or no id")
    _split(src, registry, sf, rule_data)
    return sf


def parse_texts(path, src, region=None, lang=None):
    """A texts file (also for a pack whose rules are code: the caller decides what to do with it)."""
    p = _parser(src)
    sf = SourceFile(path, "texts", "", "")
    if region:
        if not p.skip_to("RegisterRegionalTexts"):
            raise Unsupported("no RegisterRegionalTexts call")
        p.expect("(")
        r = p.value()
        p.expect(",")
        sf.lang = p.value()
        p.expect(",")
        sf.pack_id = p.value()
        sf.region = r
        if not p.skip_to("return"):
            raise Unsupported("no return in the regional texts")
        table = p.table()
    else:
        while True:
            if not p.skip_to("AddTexts"):
                raise Unsupported("no AddTexts call")
            if p.peek()[1] == "(":
                break
        p.expect("(")
        sf.lang = p.value()
        p.expect(",")
        table = p.table()
        if p.peek()[1] == ",":
            p.take()
            sf.pack_id = p.value()
    _split(src, table, sf, variants_data)
    return sf


# ---- writing -----------------------------------------------------------------------------------------------------

def render_rule(id, rule, indent):
    """The canonical text of a rule entry (from `["id"]` to the comma, no newline at the end): the identity on the first
    line, then tags, depth, weight and cooldown, then theme, motifs and tier (#89, #90), then the conditions. `indent` is
    the indentation of the entry."""
    first, second, theme, third = [], [], [], []
    ev = rule.get("event")
    if isinstance(ev, list) and len(ev) == 1:
        ev = ev[0]
    if ev is not None:
        first.append("event = " + lualit.literal(ev))
    for k in ("category", "speaker", "form"):
        if k in rule:
            first.append("%s = %s" % (k, lualit.literal(rule[k])))
    if "styles" in rule:
        first.append("styles = " + lualit.literal(rule["styles"]))
    for k in ("tags", "depth", "weight", "cooldown"):
        if k in rule:
            second.append("%s = %s" % (k, lualit.literal(rule[k])))
    for k in ("theme", "motifs", "tier"):
        if k in rule:
            theme.append("%s = %s" % (k, lualit.literal(rule[k])))
    for k in rule:
        if k not in RULE_KEYS:
            second.append("%s = %s" % (k, lualit.literal(rule[k])))
    if "conditions" in rule:
        third.append("conditions = " + lualit.literal(rule["conditions"]))
    lines = [", ".join(g) for g in (first, second, theme, third) if g]
    return "[%s] = { %s }," % (lualit.quote(id), (",\n" + indent + "\t").join(lines))


def render_variants(id, variants, indent):
    """The canonical text of a texts entry: one variant per line."""
    lines = ["[%s] = {" % lualit.quote(id)]
    for v in variants:
        if v.get("depth"):
            lines.append("%s\t{ %s, depth = %s }," % (indent, lualit.quote(v["text"]), lualit.quote(v["depth"])))
        else:
            lines.append("%s\t%s," % (indent, lualit.quote(v["text"])))
    lines.append(indent + "},")
    return "\n".join(lines)


def entry_indent(sf):
    """The indentation of the entries of a file: the one of its first entry, else one level deeper than the table."""
    last = ""
    for kind, ref, text, sig in sf.chunks:
        if kind == "gap":
            last = text
        else:
            return last.rsplit("\n", 1)[-1] if "\n" in last else "\t\t"
    return re.match(r"[ \t]*", sf.prelude.rsplit("\n", 1)[-1]).group(0) + "\t"


def build(sf, current, render):
    """The text of a file holding the entries in `current` (id -> data): an entry that did not change is kept as written
    (its source), one that changed is rendered again, one that is not in `current` is dropped (the comments before it stay
    with the next entry) and the ids the file does not hold are added at the end, in id order."""
    indent = entry_indent(sf)
    parts = [sf.prelude]
    held = set()
    gap = ""
    for kind, ref, text, sig in sf.chunks:
        if kind == "gap":
            gap += text
            continue
        held.add(ref)
        if ref not in current:
            gap = re.sub(r"\n[ \t]*\Z", "", gap)   # the line break that led to the dropped entry
            continue
        parts.append(gap)
        gap = ""
        parts.append(text if signature(current[ref]) == sig else render(ref, current[ref], indent))
    new = sorted(i for i in current if i not in held)
    if new:
        # the whitespace that closes the table (after the last entry) stays last; the new entries go before it
        closing = re.search(r"\n[ \t]*\Z", gap)
        if closing:
            gap = gap[:closing.start()]
            closing = closing.group(0)
        else:
            closing = "\n" + indent[:-1]
        parts.append(gap)
        for i in new:
            parts.append("\n" + indent + render(i, current[i], indent))
        parts.append(closing)
    else:
        parts.append(gap)
    parts.append(sf.epilogue)
    return "".join(parts)
