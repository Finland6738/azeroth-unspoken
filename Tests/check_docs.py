"""Controlli sulla documentazione (collegato a run_tests.py).

1. Esempi di PACK_FORMAT.md. Ogni blocco ```lua preceduto da una riga `<!-- test -->` è un pacchetto completo:
   si carica in un runtime nuovo, **come farebbe un pacchetto esterno** (`local ADDON, NS = ...` è il suo spazio dei
   nomi, non quello dell'addon: le API si chiamano da `AzerothUnspoken:`), e dopo di lui il validatore non deve
   segnalare errori per i suoi id. `<!-- test: error -->` segna un esempio sbagliato apposta (deve dare errore).
2. Link relativi: ogni link `[testo](percorso)` dei file Markdown del repository deve puntare a un file o a una cartella
   che esiste; se ha un'àncora (`#titolo`) il titolo deve esistere nel file di destinazione.
3. Wiki (`docs/wiki`, la sola fonte del wiki di GitHub, ADR 0013): ogni link `[[Testo|Pagina]]` o `[testo](Pagina#àncora)`
   punta a una pagina di docs/wiki (e all'àncora, se c'è), ogni pagina è nella barra laterale, e nessuna pagina contiene
   percorsi personali, indirizzi email o parole da sviluppatori.

Uso: python -I -X utf8 Tests/check_docs.py [cartella del repository]. Esce con 1 se qualcosa fallisce.
"""
import os
import re
import sys
from urllib.parse import unquote

from lupa import lua51

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(sys.argv[1]) if len(sys.argv) > 1 else os.path.dirname(HERE)
ADDON = os.path.join(ROOT, "AzerothUnspoken")
GUIDE = os.path.join(ADDON, "PACK_FORMAT.md")
WIKI = os.path.join(ROOT, "docs", "wiki")

FAILURES = []


def check(cond, msg):
    print(("  ok  " if cond else "  ERRORE  ") + msg)
    if not cond:
        FAILURES.append(msg)
    return cond


def toc_files(folder, name):
    lines = open(os.path.join(folder, name + ".toc"), encoding="utf-8").read().splitlines()
    return [l.strip() for l in lines if l.strip() and not l.lstrip().startswith("#")]


def new_runtime():
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    lua.execute(open(os.path.join(HERE, "MockWoWAPI.lua"), encoding="utf-8").read())
    loader = lua.eval("function(src, name) return assert(loadstring(src, name)) end")
    ns = lua.table()
    for f in toc_files(ADDON, "AzerothUnspoken"):
        src = open(os.path.join(ADDON, f.replace("\\", "/")), encoding="utf-8").read()
        loader(src, "@" + f)("AzerothUnspoken", ns)
    lua.globals().FIRE("ADDON_LOADED", "AzerothUnspoken")
    lua.globals().FIRE("PLAYER_ENTERING_WORLD", True, False)
    return lua, loader


def guide_examples():
    """[(riga, atteso, codice)] dei blocchi lua preceduti da <!-- test -->."""
    text = open(GUIDE, encoding="utf-8").read().split("\n")
    out, i = [], 0
    while i < len(text):
        m = re.match(r"^<!-- test(: error)? -->$", text[i].strip())
        if m and i + 1 < len(text) and text[i + 1].startswith("```lua"):
            start, j = i + 2, i + 2
            while j < len(text) and not text[j].startswith("```"):
                j += 1
            out.append((start + 1, "errore" if m.group(1) else "ok", "\n".join(text[start:j])))
            i = j
        i += 1
    return out


def check_examples():
    print("ESEMPI DI PACK_FORMAT.md (come pacchetti esterni)")
    examples = guide_examples()
    check(len(examples) >= 10, f"ci sono almeno 10 esempi provati ({len(examples)})")
    lua, loader = new_runtime()
    ns = lua.globals().AzerothUnspoken
    run_pcall = lua.eval("function(f, ...) local ok, err = pcall(f, ...); return ok, tostring(err) end")
    validate = lua.eval("""function()
        local r = AzerothUnspoken.Validator:Run()
        local errs = {}
        for _, e in ipairs(r.errors) do table.insert(errs, tostring(e.code) .. " " .. tostring(e.id or e.pack) .. ": " .. tostring(e.msg)) end
        return table.concat(errs, " | ")
    end""")
    for n, (line, expected, code) in enumerate(examples, 1):
        label = f"esempio alla riga {line}"
        ok, err = run_pcall(loader(code, f"@Esempio{n}.lua"), f"AzerothUnspoken_Esempio{n}", lua.table())
        if expected == "errore":
            check(not ok, f"{label}: dà errore come dichiarato")
            continue
        if not check(ok, f"{label}: si carica" + ("" if ok else f" ({err})")):
            continue
        errs = validate()
        check(not errs, f"{label}: il validatore (tutti i pacchetti) non segnala errori" + (f" ({errs})" if errs else ""))
    present = lua.eval("""function()
        local A = AzerothUnspoken
        return A.Engine.byId["nani.battle.01"] ~= nil, A.Engine.byId["ostep.open.01"] ~= nil,
            A.NPCAlive.scripts["npc:990001"] ~= nil, A.NPCAlive:Script("npc:990001").nodes.news ~= nil,
            A.StoryArcs.defs.ponte ~= nil, A.Engine.vocab.cry ~= nil
    end""")()
    check(all(present), f"le frasi, il copione esteso (con i nodi ereditati), l'arco e il vocabolario degli esempi sono registrati {tuple(present)}")
    base_nodes = lua.eval("function() local n = 0; for _ in pairs(AzerothUnspoken.NPCAlive.scripts.innkeeper.nodes) do n = n + 1 end; return n end")()
    check(base_nodes >= 7, f"il copione di base innkeeper non è stato toccato dagli esempi ({base_nodes} nodi)")
    diag = [str(e.message) for e in ns.Diagnostics.errors.values()]
    check(not diag, "nessun errore in diagnostica dopo gli esempi" + (f" ({diag})" if diag else ""))
    return lua


def slug(title):
    """Àncora come la fa GitHub: minuscole, senza punteggiatura, spazi in trattini."""
    t = re.sub(r"[`*_]", "", title.strip().lower())
    t = re.sub(r"[^\w\- ]", "", t, flags=re.UNICODE)
    return t.replace(" ", "-")


def anchors_of(path, cache={}):
    if path not in cache:
        found, fence = set(), False
        for l in open(path, encoding="utf-8").read().split("\n"):
            if l.startswith("```"):
                fence = not fence
            m = None if fence else re.match(r"^#{1,6} +(.*?)\s*#*$", l)
            if m:
                found.add(slug(m.group(1)))
        cache[path] = found
    return cache[path]


def check_links():
    print("\nLINK RELATIVI NEI FILE MARKDOWN")
    skip = {".git", ".venv", "archive", "node_modules", ".claude"}
    files = []
    for base, dirs, names in os.walk(ROOT):
        # le pagine del wiki si collegano per nome di pagina, non per percorso: le controlla check_wiki
        dirs[:] = [d for d in dirs if d not in skip and os.path.join(base, d) != WIKI]
        files += [os.path.join(base, n) for n in names if n.endswith(".md")]
    bad, total = [], 0
    for path in sorted(files):
        fence = False
        for no, l in enumerate(open(path, encoding="utf-8").read().split("\n"), 1):
            if l.startswith("```"):
                fence = not fence
            if fence:
                continue
            l = re.sub(r"`[^`]*`", "", l)  # il codice in linea non contiene link
            for m in re.finditer(r"\]\(([^)\s]+)\)", l):
                target = m.group(1)
                if re.match(r"^[a-z]+:", target):
                    continue
                total += 1
                name, _, anchor = target.partition("#")
                dest = path if name == "" else os.path.normpath(os.path.join(os.path.dirname(path), unquote(name)))
                rel = os.path.relpath(path, ROOT)
                if not os.path.exists(dest):
                    bad.append(f"{rel}:{no}: {target} (non esiste)")
                elif anchor and dest.endswith(".md") and anchor not in anchors_of(dest):
                    bad.append(f"{rel}:{no}: {target} (àncora mancante)")
    check(not bad, f"{total} link relativi in {len(files)} file, tutti validi" + ("" if not bad else ":\n    " + "\n    ".join(bad)))


# Il wiki è un manuale per i giocatori: niente dati personali né contenuti da sviluppatori.
WIKI_PRIVATE = [
    (r"[\w.+-]+@[\w-]+\.[\w.-]+", "indirizzo email"),
    (r"\b[A-Za-z]:[\\/]", "percorso con lettera di unità"),
    (r"[\\/](?:Users|home|Documents and Settings)[\\/]", "percorso personale"),
]
WIKI_FORBIDDEN = ["lupa", "EmmyLua", "MockWoWAPI", "run_tests", "check_docs", "sync_wiki", "ROADMAP", "GDD", "ADR",
                  "Immersion Director", "VociDiAzeroth", "pull request", "git clone", "pip install", ".venv",
                  "local ADDON", "RegisterPack", "SendChatMessage", "worktree"]


def check_wiki():
    print("\nPAGINE DEL WIKI (docs/wiki)")
    pages = {os.path.splitext(n)[0]: os.path.join(WIKI, n) for n in sorted(os.listdir(WIKI)) if n.endswith(".md")}
    check("Home" in pages and "_Sidebar" in pages and "_Footer" in pages, "ci sono Home, _Sidebar e _Footer")
    bad, total, linked = [], 0, set()
    for name, path in pages.items():
        fence = False
        for no, l in enumerate(open(path, encoding="utf-8").read().split("\n"), 1):
            if l.startswith("```"):
                fence = not fence
            if fence:
                continue
            l = re.sub(r"`[^`]*`", "", l)
            # [[Pagina]], [[Testo|Pagina]] e i link Markdown relativi: sul wiki il percorso è il nome della pagina
            targets = [m.group(1).split("|")[-1].strip() for m in re.finditer(r"\[\[([^\]]+)\]\]", l)]
            targets += [m.group(1) for m in re.finditer(r"\]\(([^)\s]+)\)", l) if not re.match(r"^[a-z]+:", m.group(1))]
            for target in targets:
                total += 1
                page, _, anchor = target.partition("#")
                page = page.replace(" ", "-") or name
                where = f"{name}.md:{no}: {target}"
                if page not in pages:
                    bad.append(where + " (pagina inesistente)")
                elif anchor and anchor not in anchors_of(pages[page]):
                    bad.append(where + " (àncora mancante)")
                elif name == "_Sidebar":
                    linked.add(page)
    check(not bad, f"{total} link in {len(pages)} pagine del wiki, tutti validi" + ("" if not bad else ":\n    " + "\n    ".join(bad)))
    missing = sorted(set(pages) - linked - {"_Sidebar", "_Footer"})
    check(not missing, "ogni pagina è nella barra laterale" + (f" (mancano: {missing})" if missing else ""))
    found = []
    for name, path in pages.items():
        raw = open(path, "rb").read()
        if b"\r" in raw:
            found.append(f"{name}.md: fine riga CRLF")
        for no, l in enumerate(raw.decode("utf-8").split("\n"), 1):
            for pattern, what in WIKI_PRIVATE:
                if re.search(pattern, l):
                    found.append(f"{name}.md:{no}: {what}")
            for word in WIKI_FORBIDDEN:
                if re.search(r"(?<![\w.])" + re.escape(word) + r"(?!\w)", l, flags=re.IGNORECASE):
                    found.append(f"{name}.md:{no}: parola vietata '{word}'")
    check(not found, "nessun dato personale né contenuto da sviluppatori nel wiki" + ("" if not found else ":\n    " + "\n    ".join(found)))


if __name__ == "__main__":
    check_examples()
    check_links()
    check_wiki()
    print("\n" + ("DOCUMENTAZIONE A POSTO" if not FAILURES else f"{len(FAILURES)} CONTROLLI FALLITI"))
    sys.exit(1 if FAILURES else 0)
