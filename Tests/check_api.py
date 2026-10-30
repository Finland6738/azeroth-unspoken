"""Controlla che funzioni ed eventi di WoW usati dall'addon esistano nel dump delle API di Forever.

Legge `docs/api.json` del repository https://github.com/Atraeau/WoW-Addons (dump estratto dal client Forever,
build 70170) e segnala ciò che l'addon usa e il dump non contiene. Assenza nel dump non vuol dire assenza nel
client: le funzioni scritte in Lua da FrameXML (Settings.*...) non compaiono in APIDocumentation, e per quelle
vale una eccezione motivata (vedi EXCEPTIONS). Il dump è consultazione: non se ne copia nulla nel progetto.

Uso:  python -I -X utf8 Tests/check_api.py [--api PERCORSO] [--list] [cartella ...]
  --api    percorso di api.json (altrimenti la variabile AU_API_JSON, altrimenti ../WoW-Addons/docs/api.json)
  --list   stampa anche tutto ciò che è stato trovato e va bene
  cartella cartelle da controllare (predefinite: AzerothUnspoken, AzerothUnspoken_Example e AzerothUnspoken_Versi)

Che cosa controlla:
  1. funzioni chiamate (`Nome(`, `C_Spazio.Funzione(`) e passate per nome a SafeCall/Query/Resolve;
  2. eventi registrati (AddSource, RegisterEvent...);
  3. (Q5, #54) con il bytecode di Lua 5.1 (lupa): ogni identificatore globale che l'addon legge, anche una funzione
     passata come valore senza parentesi (`Flag(UnitIsGhost)`); oggetti e costanti di FrameXML (UIParent, GameTooltip,
     Enum.*...), che non stanno nel dump e vanno elencati in OBJECTS con il motivo;
  4. (Q5, #54) i metodi chiamati con `oggetto:Metodo()` (widget: SimpleFrameAPI, SimpleButtonAPI...), confrontati con
     i nomi dei sistemi senza namespace del dump; ciò che è solo di FrameXML sta in METHODS con il motivo;
  5. i modelli di CreateFrame (`UIPanelButtonTemplate`...), elencati in TEMPLATES.
Ciò che si usa senza che il dump lo confermi e senza una voce motivata è un errore.

Codice di uscita: 0 = tutto presente (o file del dump assente: test SALTATO con un avviso), 1 = usi non spiegati.
"""
import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
DEFAULT_API = "../WoW-Addons/docs/api.json"


def default_api_path():
    """Il dump sta accanto al repository: vale anche dai worktree delle sessioni."""
    roots = [ROOT]
    try:
        import subprocess
        common = subprocess.run(["git", "-C", ROOT, "rev-parse", "--path-format=absolute", "--git-common-dir"],
                                capture_output=True, text=True, check=True).stdout.strip()
        roots.append(os.path.dirname(common))
    except Exception:
        pass
    for r in roots:
        candidate = os.path.normpath(os.path.join(r, DEFAULT_API))
        if os.path.isfile(candidate):
            return candidate
    return os.path.normpath(os.path.join(ROOT, DEFAULT_API))

# --- Lua: ciò che non è WoW --------------------------------------------------------------------------------
LUA_GLOBALS = {
    "assert", "collectgarbage", "error", "getfenv", "getmetatable", "ipairs", "loadstring", "next", "pairs",
    "pcall", "rawequal", "rawget", "rawset", "select", "setfenv", "setmetatable", "tonumber", "tostring", "type",
    "unpack", "xpcall", "require", "print", "string", "table", "math", "os", "io", "coroutine", "debug", "bit",
    "self", "_G", "function", "if", "elseif", "while", "for", "return", "and", "or", "not", "in", "do", "end",
    "then", "else", "local", "repeat", "until", "break", "nil", "true", "false",
}

# --- Eccezioni: usate dall'addon, assenti dal dump, e perché va bene ---------------------------------------
# Una voce che finisce con "*" vale per tutto il prefisso.
EXCEPTIONS = {
    "StaticPopupDialogs": "FrameXML: the table of the dialogs; Core/Packs.lua reads it through Compat.Resolve and falls back to a chat message and the settings button when it is missing (#85)",
    "Settings.*": "FrameXML (Lua): il pannello delle impostazioni non è in APIDocumentation; UI/SettingsFrame.lua controlla che esista prima di usarla",
    "SettingsPanel": "FrameXML: frame del pannello, sondato da Compat",
    "InterfaceOptions_AddCategory": "FrameXML: ripiego per il pannello vecchio, chiamato da UI/SettingsFrame.lua solo dopo `elseif InterfaceOptions_AddCategory then`",
    "GetSpellInfo": "assente nel dump di Forever: usata solo come ripiego di C_Spell.GetSpellName, dentro Compat.SafeCall",
    "MouseIsOver": "assente nel dump: solo ripiego di Compat:IsMouseOver, che prima prova il metodo del frame IsMouseOver (nel dump; issue #17)",
    "InterfaceOptionsFrame_OpenToCategory": "FrameXML del pannello vecchio: chiamata solo dopo `if InterfaceOptionsFrame_OpenToCategory and`",
}


# --- (#54) Oggetti, costanti e funzioni di FrameXML che l'addon legge e il dump non elenca --------------------
# Una voce che finisce con "*" vale per tutto il prefisso. Ognuna dice perché è sicura (ripiego, controllo prima
# dell'uso) o che va provata nel client (G1).
OBJECTS = {
    "UIParent": "frame radice di FrameXML: esiste sempre; i frame dell'addon vi si ancorano",
    "GameTooltip": "oggetto di FrameXML: SetOwner/AddLine/SetText (non nel dump) si usano solo dentro OnEnter di un frame; DA PROVARE in G1",
    "DEFAULT_CHAT_FRAME": "frame di chat di FrameXML: NS:Print ripiega su print() se manca",
    "SlashCmdList": "tabella di FrameXML dei comandi /: l'addon vi aggiunge la sua voce",
    "Enum.*": "costanti di FrameXML (Enum.AddOnRestrictionType, Enum.UIMapType): lette solo dopo aver controllato che esistano",
    "LE_PARTY_CATEGORY_INSTANCE": "costante di FrameXML: ripiego su un valore fisso se manca",
    "STANDARD_TEXT_FONT": "costante di FrameXML con il carattere standard",
    "ChatFontNormal": "oggetto font di FrameXML, usato come ripiego del carattere",
    "GameFontHighlight": "oggetto font di FrameXML, usato come ripiego del carattere",
    "WOW_PROJECT_*": "costanti di FrameXML (WOW_PROJECT_ID, WOW_PROJECT_CAMELOT): lette da Compat per riconoscere il client",
    "TRP3_API": "Total RP 3, facoltativo: letto solo se presente (Integration/TotalRP3.lua)",
    "AddOn_TotalRP3*": "Total RP 3, facoltativo: letto solo se presente (Integration/TotalRP3.lua)",
    "date": "libreria standard di Lua esposta da WoW",
    "time": "libreria standard di Lua esposta da WoW",
    "debugstack": "funzione di Lua esposta da WoW, usata dentro pcall per la diagnostica",
}

# Metodi chiamati con `oggetto:Metodo()` che il dump non elenca (sono dei mixin di FrameXML o di GameTooltip)
METHODS = {
    "SetOwner": "GameTooltip (FrameXML): chiamato solo dentro OnEnter, con un frame vero; DA PROVARE in G1",
    "AddLine": "GameTooltip (FrameXML): come SetOwner",
    "ScrollUp": "ScrollingMessageFrame (mixin di FrameXML): il frame del narratore; un errore lo intercetta la diagnostica",
    "ScrollDown": "ScrollingMessageFrame (mixin di FrameXML): come ScrollUp",
    "ScrollToBottom": "ScrollingMessageFrame (mixin di FrameXML): come ScrollUp",
}

# Modelli di CreateFrame che il dump non può elencare (XML di FrameXML)
TEMPLATES = {
    "UIPanelButtonTemplate": "XML di FrameXML: DA PROVARE in G1 (UI/Widgets.lua)",
    "InputBoxTemplate": "XML di FrameXML: UI/Widgets.lua lo prova dentro pcall e ripiega su una casella semplice",
    "UIPanelScrollFrameTemplate": "XML di FrameXML: UI/JournalFrame.lua ripiega su una finestra senza barra",
}

# Metodi delle stringhe di Lua (`s:match(...)`): non sono API di WoW
LUA_STRING_METHODS = {"byte", "find", "format", "gmatch", "gsub", "len", "lower", "match", "rep", "reverse", "sub", "upper"}

# ------------------------------------------------------------------------------------------------------------


def strip_lua(src):
    """Toglie i commenti e sostituisce ogni stringa con "S<n>" (testo in `strings`). Restituisce (codice, stringhe)."""
    out, strings = [], []
    i, n = 0, len(src)
    while i < n:
        c = src[i]
        if src.startswith("--", i):
            m = re.match(r"--\[(=*)\[", src[i:])
            if m:
                end = src.find("]" + m.group(1) + "]", i)
                end = n if end < 0 else end + len(m.group(1)) + 2
                out.append("\n" * src.count("\n", i, end))
                i = end
            else:
                j = src.find("\n", i)
                i = n if j < 0 else j
            continue
        if c in "\"'":
            j = i + 1
            while j < n and src[j] != c:
                j += 2 if src[j] == "\\" else 1
            strings.append(src[i + 1:j])
            out.append('"S%d"' % (len(strings) - 1))
            i = j + 1
            continue
        m = re.match(r"\[(=*)\[", src[i:]) if c == "[" else None
        if m:
            end = src.find("]" + m.group(1) + "]", i)
            end = n if end < 0 else end + len(m.group(1)) + 2
            strings.append(src[i + len(m.group(0)):end - len(m.group(1)) - 2])
            out.append('"S%d"' % (len(strings) - 1) + "\n" * src.count("\n", i, end))
            i = end
            continue
        out.append(c)
        i += 1
    return "".join(out), strings


def owned_names(code):
    """Nomi dichiarati dall'addon stesso (variabili, funzioni, parametri, globali): non sono API di WoW."""
    names = set()
    for m in re.finditer(r"\blocal\s+function\s+([A-Za-z_]\w*)", code):
        names.add(m.group(1))
    for m in re.finditer(r"\bfunction\s+([A-Za-z_]\w*)", code):
        names.add(m.group(1))
    for m in re.finditer(r"\blocal\s+([A-Za-z_][\w\s,]*?)\s*(?:=|$|\n)", code):
        for name in re.split(r"\s*,\s*", m.group(1).strip()):
            names.add(name)
    # "local X = X" è un alias di una funzione di WoW: resta un uso dell'API, non una dichiarazione
    for m in re.finditer(r"\blocal\s+([A-Za-z_]\w*)\s*=\s*([A-Za-z_]\w*)\s*(?:\n|$|--)", code):
        if m.group(1) == m.group(2):
            names.discard(m.group(1))
    for m in re.finditer(r"\bfunction\s*[\w.:]*\s*\(([^)]*)\)", code):
        for p in re.split(r"\s*,\s*", m.group(1)):
            if p.strip() and p.strip() != "...":
                names.add(p.strip())
    for m in re.finditer(r"\bfor\s+([\w\s,]+?)\s+in\b", code):
        for p in re.split(r"\s*,\s*", m.group(1)):
            names.add(p.strip())
    for m in re.finditer(r"(?m)^\s*([A-Za-z_]\w*)\s*=[^=]", code):
        names.add(m.group(1))
    return names


def load_dump(path):
    d = json.load(open(path, encoding="utf-8"))
    funcs, events, methods, namespaces = set(), set(), set(), set()
    for s in d["systems"]:
        ns = s.get("namespace")
        if ns:
            namespaces.add(ns)
        for f in s.get("functions", []):
            funcs.add(f"{ns}.{f['name']}" if ns else f["name"])
            if not ns:
                methods.add(f["name"])      # i sistemi senza namespace sono i metodi dei widget (Simple*API...)
        for e in s.get("events", []):
            events.add(e["literalName"])
    for name in d.get("globals", {}):
        funcs.add(name)
    return funcs, events, d.get("meta", {}), methods, namespaces


def excepted(name):
    for pat in EXCEPTIONS:
        if pat == name or (pat.endswith("*") and name.startswith(pat[:-1])):
            return EXCEPTIONS[pat]
    return None


def collect(folders):
    """Restituisce (usi di funzioni, usi di eventi): { nome: [(file, riga), ...] }."""
    calls, events = {}, {}

    def add(table, name, path, pos, code):
        line = code.count("\n", 0, pos) + 1
        try:
            shown = os.path.relpath(path, ROOT)
        except ValueError:      # un altro disco: percorso intero
            shown = path
        table.setdefault(name, []).append((shown.replace("\\", "/"), line))

    files = []
    for folder in folders:
        for root, _, names in os.walk(folder):
            for f in sorted(names):
                if f.endswith(".lua"):
                    files.append(os.path.join(root, f))
    parsed = {}
    owned = set()
    for path in files:
        code, strings = strip_lua(open(path, encoding="utf-8").read())
        parsed[path] = (code, strings)
        owned |= owned_names(code)

    def string_of(token):
        m = re.fullmatch(r'"S(\d+)"', token)
        return None

    for path, (code, strings) in parsed.items():
        def S(marker):
            m = re.fullmatch(r'"S(\d+)"', marker)
            return strings[int(m.group(1))] if m else None

        # chiamate: Nome(...), A.b.c(...), non precedute da . : o da una lettera
        for m in re.finditer(r"(?<![\w.:])([A-Za-z_]\w*(?:\.[A-Za-z_]\w*)*)\s*\(", code):
            name = m.group(1)
            root = name.split(".")[0]
            if root in LUA_GLOBALS or root in owned:
                continue
            add(calls, name, path, m.start(), code)
        # riferimenti senza chiamata: C_Namespace.Funzione
        for m in re.finditer(r"(?<![\w.:])(C_[A-Za-z]\w*\.[A-Za-z_]\w*)", code):
            if m.group(1).split(".")[0] not in owned:
                add(calls, m.group(1), path, m.start(), code)
        # funzioni passate per nome a SafeCall/Query/pcall, anche come stringa
        for m in re.finditer(r"\b(?:SafeCall|Query|Resolve)\s*\(\s*([A-Za-z_][\w.]*|\"S\d+\")", code):
            tok = m.group(1)
            name = S(tok) if tok.startswith('"') else tok
            if name and re.fullmatch(r"[A-Za-z_]\w*(?:\.[A-Za-z_]\w*)*", name) and name.split(".")[0] not in owned \
                    and name.split(".")[0] not in LUA_GLOBALS and name not in ("nil",):
                add(calls, name, path, m.start(), code)
        # tabella delle API sondate da Compat: { "id", "principale", "alternativa" }
        if path.endswith("Compat.lua"):
            m = re.search(r"local APIS = \{(.*?)\n\}", code, re.S)
            if m:
                for tup in re.finditer(r"\{([^{}]*)\}", m.group(1)):
                    toks = re.findall(r'"S\d+"', tup.group(1))
                    # { "etichetta", "principale", "alternativa" }: l'etichetta non è una funzione se ci sono altri nomi
                    for tok in (toks[1:] if len(toks) > 1 else toks):
                        name = S(tok)
                        if re.fullmatch(r"[A-Za-z_]\w*(?:\.[A-Za-z_]\w*)*", name or ""):
                            add(calls, name, path, m.start() + tup.start(), code)
        # (R0, #82) eventi della sonda: { "NOME_EVENTO", campionatore }, registrati in un ciclo da Core/Probe.lua
        if path.endswith("Probe.lua"):
            m = re.search(r"local EVENT_PROBES = \{(.*?)\n\}", code, re.S)
            if m:
                for tup in re.finditer(r"\{\s*(\"S\d+\")", m.group(1)):
                    name = S(tup.group(1))
                    if name and re.fullmatch(r"[A-Z][A-Z0-9_]+", name):
                        add(events, name, path, m.start() + tup.start(), code)
        # eventi
        for m in re.finditer(r"\b(?:AddSource|NpcSource|EndSource|RegisterEvent|RegisterUnitEvent|IsEventValid)\s*\(\s*(?:[\w.:]+\s*,\s*)?(\"S\d+\")",
                             code):
            name = S(m.group(1))
            if name and re.fullmatch(r"[A-Z][A-Z0-9_]+", name):
                add(events, name, path, m.start(), code)
    return calls, events


# --- (#54) Bytecode di Lua 5.1: ogni lettura di un globale, ogni metodo, ogni stringa -----------------------------
GETGLOBAL, GETTABLE, SETGLOBAL, SELF, MOVE, GETUPVAL, CLOSURE, CALL = 5, 6, 7, 11, 0, 4, 36, 28


class _Reader:
    def __init__(self, b):
        import struct
        self.struct = struct
        self.b, self.p = b, 12
        assert b[:4] == b"\x1bLua" and b[4] == 0x51
        self.sint, self.ssize = b[7], b[8]

    def byte(self):
        v = self.b[self.p]
        self.p += 1
        return v

    def int(self):
        v = int.from_bytes(self.b[self.p:self.p + self.sint], "little")
        self.p += self.sint
        return v

    def size(self):
        v = int.from_bytes(self.b[self.p:self.p + self.ssize], "little")
        self.p += self.ssize
        return v

    def string(self):
        n = self.size()
        if n == 0:
            return None
        v = self.b[self.p:self.p + n - 1]
        self.p += n
        return v.decode("utf-8", "replace")

    def func(self):
        f = {"source": self.string(), "line": self.int()}
        self.int()
        f["nups"] = self.byte()
        self.byte(), self.byte(), self.byte()
        n = self.int()
        f["code"] = [int.from_bytes(self.b[self.p + 4 * i:self.p + 4 * i + 4], "little") for i in range(n)]
        self.p += 4 * n
        k = []
        for _ in range(self.int()):
            t = self.byte()
            if t == 0:
                k.append(None)
            elif t == 1:
                k.append(bool(self.byte()))
            elif t == 3:
                k.append(self.struct.unpack("<d", self.b[self.p:self.p + 8])[0])
                self.p += 8
            elif t == 4:
                k.append(self.string())
        f["k"] = k
        f["protos"] = [self.func() for _ in range(self.int())]
        f["lines"] = [self.int() for _ in range(self.int())]
        for _ in range(self.int()):
            self.string()
            self.int()
            self.int()
        for _ in range(self.int()):
            self.string()
        return f


# istruzioni che scrivono nel registro A senza che ci interessi il valore: il nome tracciato lì non vale più
_WRITES_A = (1, 2, 3, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 29, 37)


def _analyse(f, path, out, upmap):
    reg = {}
    code, k, lines = f["code"], f["k"], f["lines"]
    i = 0
    while i < len(code):
        ins = code[i]
        op, A, C, B, Bx = ins & 63, (ins >> 6) & 255, (ins >> 14) & 511, (ins >> 23) & 511, ins >> 14
        where = (path, lines[i] if i < len(lines) else 0)
        if op == GETGLOBAL:
            reg[A] = k[Bx]
            out["globals"].setdefault(k[Bx], []).append(where)
        elif op == SETGLOBAL:
            out["setglobals"].add(k[Bx])
        elif op == GETUPVAL:
            v = upmap.get(B) if upmap else None
            if v is None:
                reg.pop(A, None)
            else:
                reg[A] = v
        elif op == GETTABLE:
            key = k[C - 256] if C >= 256 else None
            base = reg.get(B)
            if base is not None and isinstance(key, str):
                reg[A] = base + "." + key
                out["globals"].setdefault(reg[A], []).append(where)
            else:
                reg.pop(A, None)
        elif op == SELF:
            key = k[C - 256] if C >= 256 else None
            if isinstance(key, str):
                out["methods"].setdefault(key, []).append(where)
            reg.pop(A, None)
            reg.pop(A + 1, None)
        elif op == MOVE:
            if B in reg:
                reg[A] = reg[B]
            else:
                reg.pop(A, None)
        elif op == CLOSURE:
            child = f["protos"][Bx]
            cm = {}
            for u in range(child["nups"]):
                pi = code[i + 1 + u]
                pop, pB = pi & 63, (pi >> 23) & 511
                if pop == MOVE and pB in reg:
                    cm[u] = reg[pB]
                elif pop == GETUPVAL and upmap and pB in upmap:
                    cm[u] = upmap[pB]
            _analyse(child, path, out, cm)
            reg.pop(A, None)
            i += 1 + child["nups"]
            continue
        elif op == CALL:
            for r in list(reg):
                if r >= A:
                    reg.pop(r)
        elif op in _WRITES_A:
            reg.pop(A, None)
        i += 1
    for v in k:
        if isinstance(v, str):
            out["strings"].setdefault(v, []).append((path, f["line"]))


def scan_bytecode(folders):
    """Compila ogni .lua con Lua 5.1 (lupa) e raccoglie letture di globali, metodi, stringhe. None se manca lupa."""
    try:
        from lupa import lua51
    except ImportError:
        return None
    lua = lua51.LuaRuntime(encoding=None, unpack_returned_tuples=True)
    dump = lua.eval("function(src, name) local f, err = loadstring(src, name); if not f then return nil, err end; "
                    "return string.dump(f), false end")
    out = {"globals": {}, "setglobals": set(), "methods": {}, "strings": {}}
    for folder in folders:
        for rootdir, _, names in os.walk(folder):
            for n in sorted(names):
                if not n.endswith(".lua"):
                    continue
                path = os.path.join(rootdir, n)
                try:
                    shown = os.path.relpath(path, ROOT).replace("\\", "/")
                except ValueError:
                    shown = path
                b, err = dump(open(path, "rb").read(), b"@" + shown.encode())
                if b is None:
                    print(f"  ERRORE di sintassi in {shown}: {err}")
                    continue
                _analyse(_Reader(b).func(), shown, out, {})
    return out


def owned_fields(folders):
    """Nomi di campi e metodi che l'addon definisce da sé (`function X:Nome`, `X.Nome = ...`, `Nome = function`)."""
    names = set()
    for folder in folders:
        for rootdir, _, files in os.walk(folder):
            for f in files:
                if f.endswith(".lua"):
                    code, _ = strip_lua(open(os.path.join(rootdir, f), encoding="utf-8").read())
                    names.update(re.findall(r"\bfunction\s+[\w.]+[.:](\w+)", code))
                    names.update(re.findall(r"[.:](\w+)\s*=[^=]", code))
                    names.update(re.findall(r"\b(\w+)\s*=\s*function\b", code))
    return names


def classify_bytecode(scan, folders, funcs, methods, namespaces):
    """Confronta ciò che il bytecode ha letto con il dump e con gli elenchi motivati.
    Restituisce { 'globals' | 'methods' | 'templates': { found: [...], explained: {nome: motivo}, missing: {nome: dove} } }."""
    result = {}
    lua_names = LUA_GLOBALS | {"_G"}
    leaves = set(scan["globals"])
    for name in list(leaves):                     # solo le foglie: C_Map non conta se si legge C_Map.GetMapInfo
        parent = name.rsplit(".", 1)[0] if "." in name else None
        if parent in leaves:
            leaves.discard(parent)
    g = {"found": [], "explained": {}, "missing": {}}
    for name in sorted(leaves):
        rootname = name.split(".")[0]
        if rootname in lua_names or rootname in scan["setglobals"] or name in namespaces:
            continue
        reason = None
        for pat in OBJECTS:
            if pat == name or (pat.endswith("*") and name.startswith(pat[:-1])) or pat == rootname:
                reason = OBJECTS[pat]
        if name in funcs:
            g["found"].append(name)
        elif reason or excepted(name):
            g["explained"][name] = reason or excepted(name)
        else:
            g["missing"][name] = scan["globals"][name]
    result["globals"] = g

    owned = owned_fields(folders)
    m = {"found": [], "explained": {}, "missing": {}}
    for name in sorted(scan["methods"]):
        if name in LUA_STRING_METHODS or name in owned:
            continue
        if name in methods or name in funcs:
            m["found"].append(name)
        elif name in METHODS:
            m["explained"][name] = METHODS[name]
        else:
            m["missing"][name] = scan["methods"][name]
    result["methods"] = m

    t = {"found": [], "explained": {}, "missing": {}}
    for name in sorted(n for n in scan["strings"] if re.fullmatch(r"[A-Z]\w*Template", n)):
        if name in TEMPLATES:
            t["explained"][name] = TEMPLATES[name]
        else:
            t["missing"][name] = scan["strings"][name]
    result["templates"] = t
    return result


def main(argv):
    api = os.environ.get("AU_API_JSON") or default_api_path()
    folders, show_all = [], False
    it = iter(argv)
    for a in it:
        if a == "--api":
            api = next(it)
        elif a == "--list":
            show_all = True
        else:
            folders.append(os.path.abspath(a))
    if not folders:
        folders = [os.path.join(ROOT, "AzerothUnspoken"), os.path.join(ROOT, "AzerothUnspoken_Example"),
                   os.path.join(ROOT, "AzerothUnspoken_Versi")]
    folders = [f for f in folders if os.path.isdir(f)]

    if not os.path.isfile(api):
        print(f"SALTATO: dump delle API non trovato ({api}).")
        print("  Per eseguire il controllo: git clone --depth 1 https://github.com/Atraeau/WoW-Addons ../WoW-Addons")
        print("  oppure indica il file con --api o con la variabile AU_API_JSON.")
        return 0

    funcs, events, meta, methods, namespaces = load_dump(api)
    calls, used_events = collect(folders)
    for ns in namespaces:                       # `Compat.SafeCall(C_Spell and C_Spell.GetSpellName, ...)`: C_Spell non è una funzione
        calls.pop(ns, None)
    print(f"Dump: build {meta.get('build')}, Interface {meta.get('interface')}, {len(funcs)} funzioni, {len(events)} eventi.")

    missing, explained, found = {}, {}, []
    for name, where in sorted(calls.items()):
        if name in funcs:
            found.append(name)
        elif excepted(name):
            explained[name] = where
        else:
            missing[name] = where
    missing_events = {n: w for n, w in sorted(used_events.items()) if n not in events}

    print(f"Funzioni usate: {len(calls)} ({len(found)} nel dump, {len(explained)} con eccezione, {len(missing)} da spiegare).")
    print(f"Eventi usati: {len(used_events)} ({len(used_events) - len(missing_events)} nel dump, {len(missing_events)} assenti).")
    if show_all:
        print("  nel dump:", ", ".join(found))
        print("  eventi:", ", ".join(sorted(used_events)))
    for name, where in explained.items():
        print(f"  eccezione  {name}: {excepted(name)}  [{where[0][0]}:{where[0][1]}]")
    for name, where in missing.items():
        print(f"  MANCA  funzione {name}  [{', '.join(f'{f}:{l}' for f, l in where[:3])}]")
    for name, where in missing_events.items():
        print(f"  MANCA  evento {name}  [{', '.join(f'{f}:{l}' for f, l in where[:3])}]")
    # (#54) bytecode: funzioni passate come valore, oggetti di FrameXML, metodi dei widget, modelli
    bad = bool(missing or missing_events)
    scan = scan_bytecode(folders)
    if scan is None:
        print("Bytecode: SALTATO (lupa non installata: pip install lupa nel venv del progetto).")
    else:
        res = classify_bytecode(scan, folders, funcs, methods, namespaces)
        for key, title, label in (("globals", "Globali letti", "globale"), ("methods", "Metodi usati", "metodo"),
                                  ("templates", "Modelli di CreateFrame", "modello")):
            r = res[key]
            print(f"{title}: {len(r['found'])} nel dump, {len(r['explained'])} con motivo, {len(r['missing'])} da spiegare.")
            if show_all and r["found"]:
                print("  nel dump:", ", ".join(r["found"]))
            for name, why in r["explained"].items():
                print(f"  motivo  {label} {name}: {why}")
            for name, where in r["missing"].items():
                print(f"  MANCA  {label} {name}  [{', '.join(f'{f}:{l}' for f, l in where[:3])}]")
            bad = bad or bool(r["missing"])
    if bad:
        print("\nCONTROLLO API: usi non presenti nel dump. Verificali nel client e proteggili con Compat, "
              "oppure aggiungi una eccezione motivata in EXCEPTIONS.")
        return 1
    print("\nCONTROLLO API SUPERATO")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
