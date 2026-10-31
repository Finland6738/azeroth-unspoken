"""A reader and a writer for the Lua table literals of the pack files (standard library only).

The pack files are Lua source written by hand. The archive does not run Lua (an addon cannot read a database, and the
authoring tools must work with nothing installed but Python): it reads the *data* of a file, that is the table
constructors made of strings, numbers, booleans and names of local constants, and it keeps the exact source span of
every entry so that an unchanged entry is written back byte for byte (see `packfiles.py`).

Anything else (a function call, an operator, a loop) raises `Unsupported`: a file that computes its rules is not
archived, it stays Lua.
"""
import re


class Unsupported(Exception):
    """The source uses something that is not plain data."""


class Table:
    """A parsed table constructor: `fields` is a list of `Field`, in source order."""
    __slots__ = ("fields", "start", "end")

    def __init__(self, start):
        self.fields = []
        self.start = start
        self.end = start


class RawLua:
    """A piece of code kept as written (a `function ... end` used as a condition): it is data for the archive, never run."""
    __slots__ = ("text",)

    def __init__(self, text):
        self.text = text


class Field:
    """One entry of a table: `key` is None for a positional value, else the key as a Python value."""
    __slots__ = ("key", "value", "start", "end")

    def __init__(self, key, value, start, end):
        self.key, self.value, self.start, self.end = key, value, start, end


_TOKEN = re.compile(r"""
    (?P<ws>\s+)
  | (?P<lcomment>--\[(?P<leq>=*)\[)
  | (?P<comment>--[^\n]*)
  | (?P<lstring>\[(?P<seq>=*)\[)
  | (?P<number>0[xX][0-9a-fA-F]+|\d+\.?\d*(?:[eE][+-]?\d+)?|\.\d+(?:[eE][+-]?\d+)?)
  | (?P<name>[A-Za-z_][A-Za-z0-9_]*)
  | (?P<string>"(?:[^"\\\n]|\\.|\\\n)*"|'(?:[^'\\\n]|\\.|\\\n)*')
  | (?P<punct>\.\.\.|\.\.|==|~=|<=|>=|[{}\[\]()=,;.:+\-*/%^#<>])
""", re.X | re.S)

_ESCAPES = {"a": "\a", "b": "\b", "f": "\f", "n": "\n", "r": "\r", "t": "\t", "v": "\v", "\\": "\\", '"': '"',
            "'": "'", "\n": "\n"}


def _unescape(body):
    if "\\" not in body:
        return body
    out, i = [], 0
    while i < len(body):
        c = body[i]
        if c != "\\":
            out.append(c)
            i += 1
            continue
        i += 1
        c = body[i]
        if c in _ESCAPES:
            out.append(_ESCAPES[c])
            i += 1
        elif c.isdigit():
            j = i
            while j < len(body) and j < i + 3 and body[j].isdigit():
                j += 1
            out.append(chr(int(body[i:j])))
            i = j
        else:
            raise Unsupported("escape \\" + c)
    return "".join(out)


def tokenize(src):
    """Returns the list of tokens (kind, text, start, end); whitespace and comments are skipped."""
    tokens, pos = [], 0
    while pos < len(src):
        m = _TOKEN.match(src, pos)
        if not m:
            raise Unsupported("unexpected character %r at %d" % (src[pos], pos))
        if m.group("lcomment") is not None:
            close = "]" + m.group("leq") + "]"
            end = src.find(close, m.end())
            if end < 0:
                raise Unsupported("unterminated long comment")
            pos = end + len(close)
            continue
        if m.group("lstring") is not None:
            close = "]" + m.group("seq") + "]"
            end = src.find(close, m.end())
            if end < 0:
                raise Unsupported("unterminated long string")
            body = src[m.end():end]
            if body.startswith("\n"):
                body = body[1:]
            tokens.append(("string", body, m.start(), end + len(close)))
            pos = end + len(close)
            continue
        text = m.group(0)
        if m.group("string") is not None:
            tokens.append(("string", _unescape(text[1:-1]), m.start(), m.end()))
        elif m.group("number") is not None:
            tokens.append(("number", text, m.start(), m.end()))
        elif m.group("name") is not None:
            tokens.append(("name", text, m.start(), m.end()))
        elif m.group("punct") is not None:
            tokens.append(("punct", text, m.start(), m.end()))
        pos = m.end()
    return tokens


class Parser:
    """Recursive descent over the tokens of one file. `env` maps the names of local constants to their values."""

    def __init__(self, src, tokens=None):
        self.src = src
        self.tokens = tokenize(src) if tokens is None else tokens
        self.i = 0
        self.env = {}

    def peek(self, k=0):
        j = self.i + k
        return self.tokens[j] if j < len(self.tokens) else ("eof", "", len(self.src), len(self.src))

    def take(self):
        t = self.peek()
        self.i += 1
        return t

    def expect(self, text):
        t = self.take()
        if t[1] != text or t[0] not in ("punct", "name"):
            raise Unsupported("expected %r, found %r at %d" % (text, t[1], t[2]))
        return t

    def value(self):
        """Parses one value; tables come back as `Table`, the rest as Python values."""
        kind, text, start, end = self.peek()
        if kind == "string":
            self.take()
            nxt = self.peek()
            if nxt[1] in ("..", "(", ":", ".") and nxt[0] == "punct":
                raise Unsupported("expression at %d" % start)
            return text
        if kind == "number":
            self.take()
            if self.peek()[0] == "punct" and self.peek()[1] in ("+", "-", "*", "/", "%", "^", ".."):
                raise Unsupported("expression at %d" % start)
            return int(text, 0) if re.fullmatch(r"0[xX][0-9a-fA-F]+|\d+", text) else float(text)
        if kind == "punct" and text == "-" and self.peek(1)[0] == "number":
            self.take()
            n = self.value()
            return -n
        if kind == "name":
            if text in ("true", "false", "nil"):
                self.take()
                return {"true": True, "false": False, "nil": None}[text]
            if text == "function":
                return self.function()
            if self.peek(1)[1] in ("(", ".", ":", "[", "..", "{") and self.peek(1)[0] == "punct":
                raise Unsupported("code at %d: %s" % (start, text))
            self.take()
            nxt = self.peek()
            if nxt[0] == "punct" and nxt[1] in ("+", "-", "*", "/", "%", "^", "..", "==", "~="):
                raise Unsupported("expression at %d" % start)
            if text not in self.env:
                raise Unsupported("unknown name %s at %d" % (text, start))
            return self.env[text]
        if kind == "punct" and text == "{":
            return self.table()
        raise Unsupported("unexpected %r at %d" % (text, start))

    def function(self):
        """`function ... end` as raw text: block openers (`function`, `if`, `do`) against `end`."""
        start = self.take()[2]
        depth = 1
        while depth:
            kind, text, _, end = self.take()
            if kind == "eof":
                raise Unsupported("unterminated function")
            if kind == "name":
                if text in ("function", "if", "do"):
                    depth += 1
                elif text == "end":
                    depth -= 1
        return RawLua(self.src[start:end])

    def table(self):
        _, _, start, _ = self.expect("{")
        t = Table(start)
        while True:
            kind, text, s, e = self.peek()
            if text == "}" and kind == "punct":
                t.end = self.take()[3]
                return t
            if kind == "eof":
                raise Unsupported("unterminated table")
            fstart = s
            if kind == "punct" and text == "[":
                self.take()
                key = self.value()
                if isinstance(key, Table):
                    raise Unsupported("table key")
                self.expect("]")
                self.expect("=")
                val = self.value()
            elif kind == "name" and self.peek(1)[1] == "=" and self.peek(1)[0] == "punct" and text not in ("true", "false", "nil"):
                self.take()
                self.take()
                key = text
                val = self.value()
            else:
                key = None
                val = self.value()
            end = self.tokens[self.i - 1][3]
            if self.peek()[0] == "punct" and self.peek()[1] in (",", ";"):
                end = self.take()[3]
            t.fields.append(Field(key, val, fstart, end))

    def skip_to(self, name):
        """Moves to just after the next token that is the name `name`; returns False when there is none."""
        while self.i < len(self.tokens):
            t = self.take()
            if t[0] == "name" and t[1] == name:
                return True
        return False


POS = "$pos"   # key of the positional part of a table that also has keyed entries
LUA = "$lua"   # key of a piece of raw code


def to_python(v):
    """Table -> list (positional entries) or dict (keyed entries, in source order; a table with both has its positional
    part under "$pos"); raw code -> {"$lua": text}; other values unchanged."""
    if isinstance(v, RawLua):
        return {LUA: v.text}
    if not isinstance(v, Table):
        return v
    if all(f.key is None for f in v.fields):
        return [to_python(f.value) for f in v.fields]
    out = {}
    pos = [to_python(f.value) for f in v.fields if f.key is None]
    if pos:
        out[POS] = pos
    for f in v.fields:
        if f.key is not None:
            out[f.key] = to_python(f.value)
    return out


def collect_constants(src, parser):
    """Top-level `local NAME = <data>` of the file into `parser.env` (what cannot be read as data is ignored)."""
    toks = parser.tokens
    depth = 0
    for k, t in enumerate(toks):
        if t[0] == "punct" and t[1] in "{(":
            depth += 1
        elif t[0] == "punct" and t[1] in "})":
            depth -= 1
        if depth == 0 and t[0] == "name" and t[1] == "local" and k + 2 < len(toks) and toks[k + 1][0] == "name" \
                and toks[k + 2][1] == "=" and toks[k + 1][1] != "function":
            probe = Parser(src, toks)
            probe.env = dict(parser.env)
            probe.i = k + 3
            try:
                v = probe.value()
                if probe.peek()[1] not in (",", "}", ")") and probe.peek()[0] == "punct" and probe.peek()[1] in ("+", "..", "(", "["):
                    continue
                parser.env[toks[k + 1][1]] = to_python(v)
            except Unsupported:
                pass


# ---- writing -----------------------------------------------------------------------------------------------------

_IDENT = re.compile(r"[A-Za-z_][A-Za-z0-9_]*\Z")
_KEYWORDS = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "if", "in", "local", "nil", "not",
             "or", "repeat", "return", "then", "true", "until", "while"}


def quote(s):
    """A Lua string literal in double quotes."""
    out = ['"']
    for ch in s:
        if ch == "\\":
            out.append("\\\\")
        elif ch == '"':
            out.append('\\"')
        elif ch == "\n":
            out.append("\\n")
        elif ch == "\r":
            out.append("\\r")
        elif ch == "\t":
            out.append("\\t")
        elif ord(ch) < 32:
            out.append("\\%03d" % ord(ch))
        else:
            out.append(ch)
    out.append('"')
    return "".join(out)


def key_source(k):
    """The source of a table key: a bare name when it can be one, else `["..."]`."""
    return k if isinstance(k, str) and _IDENT.match(k) and k not in _KEYWORDS else "[%s]" % literal(k)


def literal(v):
    """One-line Lua source of a Python value (list -> array table, dict -> keyed table)."""
    if isinstance(v, bool):
        return "true" if v else "false"
    if v is None:
        return "nil"
    if isinstance(v, int):
        return str(v)
    if isinstance(v, float):
        return repr(int(v)) if v == int(v) and abs(v) < 1e15 else repr(v)
    if isinstance(v, str):
        return quote(v)
    if isinstance(v, (list, tuple)):
        return "{ " + ", ".join(literal(x) for x in v) + " }" if v else "{}"
    if isinstance(v, dict):
        if not v:
            return "{}"
        if LUA in v:
            return v[LUA]
        parts = [literal(x) for x in v.get(POS, [])]
        for k, x in v.items():
            if k == POS:
                continue
            if isinstance(k, str) and _IDENT.match(k) and k not in _KEYWORDS:
                parts.append("%s = %s" % (k, literal(x)))
            else:
                parts.append("[%s] = %s" % (literal(k), literal(x)))
        return "{ " + ", ".join(parts) + " }"
    raise TypeError("cannot write %r" % (v,))


def _plain(v):
    return not isinstance(v, (dict, list, tuple)) or (isinstance(v, dict) and LUA in v)


def _fields(v):
    """The fields of a dict as (key source or None, value) in order: positional values first, then keyed ones."""
    out = [(None, x) for x in v.get(POS, [])] if isinstance(v, dict) else [(None, x) for x in v]
    if isinstance(v, dict):
        for k, x in v.items():
            if k == POS:
                continue
            out.append((k if isinstance(k, str) and _IDENT.match(k) and k not in _KEYWORDS else "[%s]" % literal(k), x))
    return [(("%s = " % k) if k else "", x) for k, x in out]


def pretty(v, level=0, width=118, block=False, col=0):
    """Source of a value laid out over lines (the canonical style of arcs, dialogue scripts and arc texts): one line when
    it fits in `width` columns from `col`, else a table of tables (or of lists) as a block (one item per line), else a
    table with its short fields packed on the first line and every long or nested field on a line of its own. `level`
    is the indentation (in tabs) of the line the value starts on; `block` forces the block layout (an entry)."""
    if _plain(v) or not v:
        return literal(v)
    one = literal(v)
    if not block and col + len(one) <= width:
        return one
    fields = _fields(v)
    pad = "\t" * (level + 1)
    nested_only = all(not _plain(x) for _, x in fields)
    if block or nested_only:
        lines = [pad + k + pretty(x, level + 1, width, col=len(pad.expandtabs(4)) + len(k)) + "," for k, x in fields]
        return "{\n" + "\n".join(lines) + "\n" + "\t" * level + "}"
    # hanging: the short fields on the first line, the others one per line
    first, rest = [], []
    for k, x in fields:
        lit = literal(x)
        (first if _plain(x) or len(lit) <= 40 else rest).append((k, x, lit))
    lines, cur = [], "{ "
    base = col + 2
    for k, x, lit in first:
        item = k + lit + ","
        if len(cur) > 2 and base + len(cur) + len(item) > width:
            lines.append(cur.rstrip())
            cur = ""
        cur += item + " "
    if len(cur.strip()) > 0 and cur != "{ ":
        lines.append(cur.rstrip())
    for k, x, lit in rest:
        lines.append(k + pretty(x, level + 1, width, col=len(pad.expandtabs(4)) + len(k)) + ",")
    out = lines[0]
    for ln in lines[1:]:
        out += "\n" + pad + ln
    return (out[:-1] if out.endswith(",") else out) + " }"
