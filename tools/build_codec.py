"""Writes the dictionaries of the compact regional sources (C0b, ADR 0049): AzerothUnspoken/Data/Codec.lua for the rules
and Codec.lua in each language folder for its texts.

Usage, from the repository root (or a worktree):
  python -I -X utf8 tools/build_codec.py           write the files
  python -I -X utf8 tools/build_codec.py --check   only say whether they are current (exit 1 if not)

Core/SourceCodec.lua keeps the source of a visited area as pieces in which the frequent tokens are one or two bytes.
A token is what the runtime finds, in its order: a word with the space before it (` ?[A-Za-z0-9_\\x80-\\xff]+`, matched
from left to right like string.gsub), and each run of the other characters between two words. The corpus is the source
of the entries of every rules file (the regional rules and the base registry) and of every texts file of the language,
as the archive reads them (tools/archive). The tokens are ranked by the bytes they save (a single byte for the first
ten, two bytes for the others), ties by their bytes, so the same content always gives the same files. Any dictionary
decodes exactly: a stale one only keeps the pieces a little larger, so the files are written again when the content has
grown, not at every change.
"""
import collections
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(HERE, "archive"))
import packfiles  # noqa: E402
import store  # noqa: E402
from lualit import Unsupported  # noqa: E402

SINGLES = 10                      # Core/SourceCodec.lua: SINGLES
PAIRS = 19 * (10 + 19 + 128)      # INTROS x SECONDS
WORD = re.compile(rb" ?[A-Za-z0-9_\x80-\xff]+")
CODE = re.compile(rb"[\x01-\x08\x0b\x0c\x0e-\x1f\x7f]")
LANGS = {"enUS": "en", "itIT": "it"}


def tokens(data):
    """The tokens of a source as the runtime sees them: the words and the runs between them."""
    out, pos = [], 0
    for m in WORD.finditer(data):
        if m.start() > pos:
            out.append(data[pos:m.start()])
        out.append(m.group())
        pos = m.end()
    if pos < len(data):
        out.append(data[pos:])
    return out


def corpus(role, lang=None):
    """The entries (and the gaps between them) of the files of a role, in the order of the folders."""
    parts = []
    for r, rel, region, file_lang in store.discover(ROOT):
        if r != role or (lang and file_lang != lang):
            continue
        src = packfiles.read(os.path.join(ROOT, rel))
        try:
            sf = (packfiles.parse_rules if role == "rules" else packfiles.parse_texts)(rel, src, region)
        except Unsupported:
            continue
        parts.extend(chunk[2] for chunk in sf.chunks)
    return "".join(parts).encode("utf-8")


def dictionary(data):
    """The tokens worth a code, in the order of their codes."""
    count = collections.Counter(t for t in tokens(data) if len(t) >= 2 and not CODE.search(t))
    pairs = sorted((t for t, n in count.items() if n >= 2 and len(t) > 2), key=lambda t: (-count[t] * (len(t) - 2), t))
    chosen = pairs[:SINGLES + PAIRS]
    # the single bytes go to the tokens that save most with one byte (two-byte tokens may join them)
    singles = sorted((t for t, n in count.items() if n >= 2), key=lambda t: (-count[t] * (len(t) - 1), t))[:SINGLES]
    rest = [t for t in chosen if t not in set(singles)][:PAIRS]
    return singles + rest


def lua_string(t):
    s = t.decode("utf-8")
    return '"' + s.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n").replace("\t", "\\t").replace("\r", "\\r") + '"'


def render(kind, toks, header, prefix):
    lines = [header, prefix, "", "NS:RegisterCodec(%s, {" % lua_string(kind.encode())]
    line = "\t"
    for t in toks:
        item = lua_string(t) + ", "
        if len(line) + len(item) > 118 and line.strip():
            lines.append(line.rstrip())
            line = "\t"
        line += item
    if line.strip():
        lines.append(line.rstrip())
    lines.append("})")
    return "\n".join(lines) + "\n"


HEADER = ("-- The dictionary of the compact regional sources for %s (C0b, ADR 0049; Core/SourceCodec.lua). Written by\n"
          "-- tools/build_codec.py from the content: do not edit by hand. Any dictionary decodes exactly; this one only\n"
          "-- decides how small the sources of the visited areas stay in memory.")


def files():
    out = {}
    out[os.path.join("AzerothUnspoken", "Data", "Codec.lua")] = render(
        "rules", dictionary(corpus("rules")), HEADER % "the rules", "local ADDON, NS = ...")
    for folder_lang, short in LANGS.items():
        out[os.path.join("AzerothUnspoken_" + folder_lang, "Codec.lua")] = render(
            short, dictionary(corpus("texts", folder_lang)), HEADER % ("the texts in " + folder_lang),
            "local NS = AzerothUnspoken   -- language pack (LoadOnDemand, #85): the base addon is loaded first")
    return out


def main(argv):
    stale = []
    for rel, text in files().items():
        path = os.path.join(ROOT, rel)
        current = packfiles.read(path) if os.path.isfile(path) else None
        if current != text:
            stale.append(rel)
            if "--check" not in argv:
                packfiles.write(path, text)
    for rel in stale:
        print(("stale: " if "--check" in argv else "wrote ") + rel.replace(os.sep, "/"))
    if not stale:
        print("the dictionaries are current")
    return 1 if stale and "--check" in argv else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
