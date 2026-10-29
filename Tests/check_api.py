"""Controlla che funzioni ed eventi di WoW usati dall'addon esistano nel dump delle API di Forever.

Legge `docs/api.json` del repository https://github.com/Atraeau/WoW-Addons (dump estratto dal client Forever,
build 70170) e segnala ciò che l'addon usa e il dump non contiene. Assenza nel dump non vuol dire assenza nel
client: le funzioni scritte in Lua da FrameXML (Settings.*...) non compaiono in APIDocumentation, e per quelle
vale una eccezione motivata (vedi EXCEPTIONS). Il dump è consultazione: non se ne copia nulla nel progetto.

Uso:  python -I -X utf8 Tests/check_api.py [--api PERCORSO] [--list] [cartella ...]
  --api    percorso di api.json (altrimenti la variabile AU_API_JSON, altrimenti E:/repository/WoW-Addons/docs/api.json)
  --list   stampa anche tutto ciò che è stato trovato e va bene
  cartella cartelle da controllare (predefinite: AzerothUnspoken e AzerothUnspoken_Example)

Codice di uscita: 0 = tutto presente (o file del dump assente: test SALTATO con un avviso), 1 = usi non spiegati.
"""
import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
DEFAULT_API = "E:/repository/WoW-Addons/docs/api.json"

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
    "Settings.*": "FrameXML (Lua): il pannello delle impostazioni non è in APIDocumentation; Compat controlla che esista",
    "SettingsPanel": "FrameXML: frame del pannello, sondato da Compat",
    "InterfaceOptions_AddCategory": "FrameXML: ripiego protetto da Compat per il pannello vecchio",
    "GetSpellInfo": "assente nel dump di Forever: usata solo come ripiego di C_Spell.GetSpellName, dentro Compat.SafeCall",
    "MouseIsOver": "assente nel dump: solo ripiego di Compat:IsMouseOver, che prima prova il metodo del frame IsMouseOver (nel dump; issue #17)",
    "InterfaceOptionsFrame_OpenToCategory": "FrameXML del pannello vecchio: chiamata solo dopo `if InterfaceOptionsFrame_OpenToCategory and`",
}

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
    funcs, events = set(), set()
    for s in d["systems"]:
        ns = s.get("namespace")
        for f in s.get("functions", []):
            funcs.add(f"{ns}.{f['name']}" if ns else f["name"])
        for e in s.get("events", []):
            events.add(e["literalName"])
    for name in d.get("globals", {}):
        funcs.add(name)
    return funcs, events, d.get("meta", {})


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
        # eventi
        for m in re.finditer(r"\b(?:AddSource|NpcSource|EndSource|RegisterEvent|RegisterUnitEvent|IsEventValid)\s*\(\s*(?:[\w.:]+\s*,\s*)?(\"S\d+\")",
                             code):
            name = S(m.group(1))
            if name and re.fullmatch(r"[A-Z][A-Z0-9_]+", name):
                add(events, name, path, m.start(), code)
    return calls, events


def main(argv):
    api = os.environ.get("AU_API_JSON") or DEFAULT_API
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
        folders = [os.path.join(ROOT, "AzerothUnspoken"), os.path.join(ROOT, "AzerothUnspoken_Example")]
    folders = [f for f in folders if os.path.isdir(f)]

    if not os.path.isfile(api):
        print(f"SALTATO: dump delle API non trovato ({api}).")
        print("  Per eseguire il controllo: git clone --depth 1 https://github.com/Atraeau/WoW-Addons E:/repository/WoW-Addons")
        print("  oppure indica il file con --api o con la variabile AU_API_JSON.")
        return 0

    funcs, events, meta = load_dump(api)
    calls, used_events = collect(folders)
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
    if missing or missing_events:
        print("\nCONTROLLO API: usi non presenti nel dump. Verificali nel client e proteggili con Compat, "
              "oppure aggiungi una eccezione motivata in EXCEPTIONS.")
        return 1
    print("\nCONTROLLO API SUPERATO")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
