"""The literary forms in the authoring archive (#119, #120, #127, #128; ADR 0043).

The vocabularies of `genre` and `purpose`, the genre x situation matrix and the warning words are read from the base
data (`AzerothUnspoken/Data/Themes.lua`, the `literary` table of its pack), the same table the engine's validator reads;
the facts of a rule are computed here as `Validator.LiteraryFacts` computes them in Lua (Tests/check_archive.py compares
the two on the verses pack). The warning phrases of CONTRIBUTING.md ("Literary forms") live here, shared with
Tests/check_versi.py. Everything in this module gives warnings: the review decides.
"""
import os
import re

import lualit
import packfiles

# echoes of Tolkien, of Blizzard's texts and of famous verses (lower case): a match must be justified in review
WARNING_PHRASES = [
    "road goes ever on", "not all who wander", "all that is gold", "far over the misty", "under the mountain",
    "one ring", "to rule them", "to bind them", "speak, friend", "shall not pass", "where now the horse",
    "man in the moon", "cat and the fiddle", "elbereth", "westward over the sea", "grey havens", "the shadow lies",
    "hole in the ground", "seven stars", "light be with you", "ishnu-alah", "throm-ka", "lok'tar",
    "strength and honor", "for the horde", "for the alliance", "victory or death", "love is patient",
    "ashes to ashes", "ring a ring", "once upon a time",
]

ORIGINS = ("common", "personal")
STANZA_MARK = "{stanzas}"
STANZAS = (3, 6)          # Engine.STANZAS_MIN, STANZAS_MAX
STANZAS_SHOW_MAX = 2      # Engine.STANZAS_SHOW_MAX
FIXED_GENRES = ("song", "formula")   # Engine.FIXED_GENRES: no placeholder
# the editorial review of a piece (#128): draft -> metre and language -> lore -> originality -> approved
REVIEW_STEPS = ("metre", "lore", "originality")
STATUSES = ("pending", "ok", "none")   # `none`: the step does not apply (a piece that names no lore)
LETTER = re.compile(r"[^\W\d_]", re.UNICODE)

_DATA = {}


def data(root):
    """The `literary` table of the base data as Python (genres, purposes, matrix, words); empty lists if missing."""
    if root not in _DATA:
        out = {"genres": [], "purposes": [], "matrix": [], "words": []}
        path = os.path.join(root, "AzerothUnspoken", "Data", "Themes.lua")
        if os.path.exists(path):
            p = packfiles._parser(packfiles.read(path))
            if p.skip_to("RegisterPack"):
                p.expect("(")
                for f in p.table().fields:
                    if f.key == "literary" and isinstance(f.value, lualit.Table):
                        out.update(lualit.to_python(f.value))
        _DATA[root] = out
    return _DATA[root]


def is_literary(rule):
    """A literary form: the tag lore or genre_*, the category lore, a genre or stanzas (Engine.IsLiteraryRule)."""
    tags = rule.get("tags") or []
    return (any(t == "lore" or str(t).startswith("genre_") for t in tags) or rule.get("category") == "lore"
            or rule.get("genre") is not None or rule.get("kind") == "stanzas")


def origin_problem(origin):
    """`common`, `personal` or `culture:<people>` in lower case (D17), else the problem."""
    if not isinstance(origin, str):
        return "origin %r is not a string" % (origin,)
    if origin in ORIGINS or re.fullmatch(r"culture:[a-z][a-z0-9_]*", origin):
        return None
    return "origin %r not valid: common, personal or culture:<people> (lower case)" % origin


def _num(v):
    """A number as Lua's tostring writes it."""
    if isinstance(v, float) and v.is_integer():
        return str(int(v))
    return str(v)


def _condition_facts(facts, when, prefix):
    for k, v in when.items():
        if not isinstance(k, str) or k in ("not", "any", lualit.POS, lualit.LUA):
            continue
        path = prefix + k
        items = None
        if isinstance(v, list):
            items = v
        elif isinstance(v, dict) and lualit.POS in v:
            items = v[lualit.POS]
        if items:
            facts.add(path)
            for x in items:
                if isinstance(x, str):
                    facts.add("%s=%s" % (path, x))
                elif isinstance(x, (int, float)) and not isinstance(x, bool):
                    facts.add("%s=%s" % (path, _num(x)))
        elif isinstance(v, dict):
            if v:
                facts.add(path)
                _condition_facts(facts, v, path + ".")
        elif v is False:
            facts.add(path + "=false")
        elif v is True:
            facts.add(path)
        elif v is not None:
            facts.add(path)
            facts.add("%s=%s" % (path, _num(v) if isinstance(v, (int, float)) else v))


def facts(rule):
    """The facts of a rule the matrix and the words read (Validator.LiteraryFacts)."""
    out = set()
    for ev in rule.get("event") or []:
        out.add("event=" + ev)
    for s in rule.get("styles") or []:
        out.add("style=" + s)
    for t in rule.get("tags") or []:
        out.add("tag=" + str(t))
    for k in ("genre", "purpose", "origin"):
        if isinstance(rule.get(k), str):
            out.add("%s=%s" % (k, rule[k]))
    if isinstance(rule.get("conditions"), dict):
        _condition_facts(out, rule["conditions"], "")
    return out


def find_word(text, words):
    """The first of `words` the text holds as a whole word (Validator.FindWord), or None."""
    low = text.lower()
    for w in words or []:
        start = 0
        while True:
            a = low.find(w, start)
            if a < 0:
                break
            b = a + len(w)
            before, after = low[a - 1:a] if a else "", low[b:b + 1]
            if not (before and LETTER.match(before)) and not (after and LETTER.match(after)):
                return w
            start = b
    return None


def verses(text):
    """The non-empty lines of a text."""
    return [l.strip() for l in text.split("\n") if l.strip()]


def warnings(rule, texts, root):
    """The warnings of one literary piece: the matrix (#120), the warning words (#120), the warning phrases of
    CONTRIBUTING.md (#128) and the verses across languages (#119). `texts` is {lang: [text, ...]} with full language
    codes (enUS) or short ones (en). Returns a list of messages."""
    lit = data(root)
    out = []
    f = facts(rule)
    for row in lit.get("matrix") or []:
        if row.get("genre") is None and row.get("purpose") is None:
            continue
        if row.get("genre") not in (None, rule.get("genre")) or row.get("purpose") not in (None, rule.get("purpose")):
            continue
        what = ("genre " + row["genre"]) if row.get("genre") else ("purpose " + row["purpose"])
        bad = next((x for x in row.get("never") or [] if x in f), None)
        if bad:
            out.append("%s never with %s (matrix row %s)" % (what, bad, row.get("id")))
        elif row.get("needs") and not any(x in f for x in row["needs"]):
            out.append("%s asks one of %s (matrix row %s)" % (what, ", ".join(row["needs"]), row.get("id")))
    counts = {}
    for lang in sorted(texts):
        short = lang[:2]
        warned = False
        for i, t in enumerate(texts[lang]):
            plain = t.replace(STANZA_MARK, "") if rule.get("kind") == "stanzas" and i == 0 else t
            if not warned:
                for w in lit.get("words") or []:
                    if any(x in f for x in w.get("needs") or []):
                        continue
                    word = find_word(plain, w.get(short))
                    if word:
                        warned = True
                        out.append("%s: variant %d names '%s' (%s) but the rule asks none of %s" % (
                            lang, i + 1, word, w.get("id"), ", ".join(w.get("needs") or [])))
                        break
            low = plain.lower()
            for phrase in WARNING_PHRASES:
                if phrase in low:
                    out.append("%s: variant %d holds the warning phrase '%s' (CONTRIBUTING.md, Literary forms)" % (
                        lang, i + 1, phrase))
        if rule.get("kind") != "stanzas":
            counts[lang] = sorted(len(verses(t)) for t in texts[lang])
    ref = None
    for lang in sorted(counts):
        if ref is None:
            ref = (lang, counts[lang])
        elif counts[lang] != ref[1]:
            out.append("%s: verses per variant %s, in %s %s: the same number in every language" % (
                lang, counts[lang], ref[0], ref[1]))
    return out


def stanza_shape(texts):
    """The shape of a song of stanzas in one language: (number of stanzas, verses of the first stanza)."""
    stanzas = texts[1:]
    return len(stanzas), (len(verses(stanzas[0])) if stanzas else 0)
