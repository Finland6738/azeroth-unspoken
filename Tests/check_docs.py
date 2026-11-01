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
4. (#162) Commands: every `/au ...` quoted in README, the pack guide, CONTRIBUTING and docs/ (not the logs: CHANGELOG,
   ROADMAP, docs/design) is a command of `Commands.list`, with words its keyword table accepts and no old Italian word
   (the deny list of Tests/TestCommands.lua). A line that talks about Italian words may quote one as the example.
5. (#162) A link labelled "ADR NNNN" points to the file of ADR NNNN.
6. (#162) The ADRs are numbered without gaps, each is in docs/adr/README.md with the title of its file, and a "first free
   number" sentence, if there is one, is right.
7. (#162) The "Modules" line of README.md and README.it.md lists the modules of the Settings window, in its order.
Each check of 4-7 is also run on a bad example made on purpose (self_test), which it must refuse.

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
    # the language and regional folders of the download, all in memory (#85, #101)
    root = os.path.dirname(ADDON)
    packs = [d for d in sorted(os.listdir(root)) if d.startswith("AzerothUnspoken_")
             and os.path.isfile(os.path.join(root, d, d + ".toc"))
             and "## X-AzerothUnspoken-" in open(os.path.join(root, d, d + ".toc"), encoding="utf-8").read()]
    lua.globals().INSTALL_PACKS(root.replace(chr(92), "/"), lua.table_from(packs), True)
    lua.globals().FIRE("ADDON_LOADED", "AzerothUnspoken")
    lua.execute("AzerothUnspoken.Packs:ActivateAll()")
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


def markdown_files(*parts, skip=()):
    """The .md files under the given folders (or the given files), sorted."""
    out = []
    for part in parts:
        path = os.path.join(ROOT, part)
        if os.path.isfile(path):
            out.append(path)
            continue
        for base, dirs, names in os.walk(path):
            dirs[:] = [d for d in dirs if os.path.normpath(os.path.join(base, d)) not in
                       [os.path.normpath(os.path.join(ROOT, s)) for s in skip]]
            out += [os.path.join(base, n) for n in names if n.endswith(".md")]
    return sorted(out)


# #162 (Q8): where the commands quoted in the docs are checked. CHANGELOG.md, ROADMAP.md and the design reviews are logs
# of the past and keep the old names on purpose.
COMMAND_DOCS = ("README.md", "README.it.md", "CONTRIBUTING.md", "AzerothUnspoken/PACK_FORMAT.md", "docs")
COMMAND_DOCS_SKIP = ("docs/design",)
# a line that says "Italian" may quote an Italian word as the example of what the addon refuses (`/au diario`)
ITALIAN_EXAMPLE = re.compile(r"italian|italiano|italiana|italiane|did you mean|suggerimento", re.IGNORECASE)


def italian_words():
    """The old Italian command words, from the deny list of Tests/TestCommands.lua (one list for both checks)."""
    src = open(os.path.join(HERE, "TestCommands.lua"), encoding="utf-8").read()
    m = re.search(r"local ITALIAN = \{(.*?)\}", src, flags=re.S)
    return set(re.findall(r'"([^"]+)"', m.group(1)))


def quoted_commands(path):
    """[(line number, line, command text)] of the `/au ...` in inline code and of the lines of code blocks."""
    out, fence = [], False
    for no, l in enumerate(open(path, encoding="utf-8").read().split("\n"), 1):
        if l.startswith("```"):
            fence = not fence
            continue
        if fence:
            m = re.match(r"^\s*(/(?:au|unspoken) .*)$", l)
            if m:
                out.append((no, l, m.group(1)))
            continue
        for m in re.finditer(r"`(/(?:au|unspoken) [^`]+)`", l):
            out.append((no, l, m.group(1)))
    return out


# first words a command takes besides its own keyword table (the table named like the command)
FIRST_WORD_TABLES = {"soul": ("soul.traits", "soul.clear"), "stories": ("stories.actions",), "help": ("help_groups",)}


def command_problems(text, commands, registry, italian):
    """What is wrong with one quoted command: an unknown command, an old Italian word, or a word that the keyword table
    of the command (`<command>` for the first word, `<command>.<first word>` for the second) does not accept. Commands
    without a table (event, test, talk...) are judged only for Italian words; words with capitals or digits,
    placeholders (<x>, [x]) and free text are never judged. Alternatives (a|b, a/b) are judged one by one."""
    words = text.split()[1:]
    if not words:
        return []
    name = words[0].lower()
    if name not in commands:
        return [f"'{name}' is not a command"]
    full = commands[name]
    out = []
    for pos, word in enumerate(words[1:3], 1):
        if pos == 1:
            accepted = set(registry.get(full, set()))
            for extra in FIRST_WORD_TABLES.get(full, ()):
                accepted |= registry.get(extra, set())
            if full == "help":
                accepted |= set(commands)
            label = f"/au {full}"
        else:
            accepted = set(registry.get(f"{full}.{words[1].lower()}", set()))
            if accepted:
                # on/off are understood after any word that takes them (share on, editor on...)
                accepted |= registry.get("on_off.on", set()) | registry.get("on_off.off", set())
            label = f"/au {full} {words[1]}"
        for alt in re.split(r"[|/]", word.replace("\\", "")):
            if alt in italian:
                out.append(f"'{alt}' is an old Italian word")
            elif accepted and re.fullmatch(r"[a-z]+", alt) and alt not in accepted:
                out.append(f"'{alt}' is not a word of {label}")
    return out


def command_tables(lua):
    """The command names (short forms included) with their full name, and the keyword tables, from the addon."""
    names = lua.eval("""function()
        local out = {}
        for name, spec in pairs(AzerothUnspoken.Commands.byName) do out[name] = spec.name end
        return out
    end""")()
    commands = {k: v for k, v in names.items()}
    registry = {name: set(tbl.keys()) for name, tbl in lua.globals().AzerothUnspoken.Keywords.registry.items()}
    return commands, registry


def check_commands(lua):
    print("\nCOMANDI CITATI NEI DOCUMENTI (#162)")
    commands, registry = command_tables(lua)
    italian = italian_words()
    check(len(italian) > 100 and len(commands) > 40, f"{len(italian)} old Italian words and {len(commands)} command names read")
    bad, total = [], 0
    for path in markdown_files(*COMMAND_DOCS, skip=COMMAND_DOCS_SKIP):
        rel = os.path.relpath(path, ROOT).replace(os.sep, "/")
        for no, line, text in quoted_commands(path):
            total += 1
            if ITALIAN_EXAMPLE.search(line):
                continue
            for problem in command_problems(text, commands, registry, italian):
                bad.append(f"{rel}:{no}: `{text}`: {problem}")
    check(not bad, f"{total} commands quoted in the docs, all real" + ("" if not bad else ":\n    " + "\n    ".join(bad)))


ADR_DIR = os.path.join(ROOT, "docs", "adr")


def adr_label_problems(line):
    """[(label number, target file)] of the links of a line whose label "ADR NNNN" is not the number of the file."""
    out = []
    for m in re.finditer(r"\[ADR (\d{4})[^\]]*\]\(([^)\s]+)\)", line):
        target = os.path.basename(m.group(2).partition("#")[0])
        if re.match(r"^\d{4}-", target) and not target.startswith(m.group(1)):
            out.append((m.group(1), target))
    return out


def check_adr_links():
    print("\nETICHETTE DEI LINK ALLE ADR (#162)")
    bad, total = [], 0
    for path in markdown_files(".", skip=(".git", ".venv", "archive", "node_modules", ".claude")):
        for no, l in enumerate(open(path, encoding="utf-8").read().split("\n"), 1):
            total += len(re.findall(r"\[ADR \d{4}[^\]]*\]\([^)\s]*\d{4}-", l))
            for label, target in adr_label_problems(l):
                bad.append(f"{os.path.relpath(path, ROOT)}:{no}: [ADR {label}] points to {target}")
    check(not bad, f"{total} links labelled 'ADR NNNN', each to its own number" + ("" if not bad else ":\n    " + "\n    ".join(bad)))


def adr_index_problems(adr_dir):
    """What is wrong with the ADR folder and its index: a gap or a duplicate number, an ADR missing from the index, an
    index title that is not the file's title, a wrong "first free number"."""
    out = []
    files = sorted(n for n in os.listdir(adr_dir) if re.match(r"^\d{4}-.*\.md$", n))
    numbers = [int(n[:4]) for n in files]
    if numbers != list(range(1, len(numbers) + 1)):
        out.append(f"the numbers are not 0001 to {len(numbers):04d} without gaps: {numbers}")
    index = open(os.path.join(adr_dir, "README.md"), encoding="utf-8").read()
    rows = dict(re.findall(r"^\| \[\d{4}\]\(([^)]+)\) \| (.*?) \|", index, flags=re.M))
    for n in files:
        h1 = open(os.path.join(adr_dir, n), encoding="utf-8").readline().strip()
        title = re.sub(r"^#\s*\d{4}\.\s*", "", h1)
        if n not in rows:
            out.append(f"{n} is not in the index")
        elif rows[n].strip() != title:
            out.append(f"{n}: index '{rows[n].strip()}', file '{title}'")
    m = re.search(r"first free number \(today (\d{4})\)", index)
    if m and int(m.group(1)) != len(numbers) + 1:
        out.append(f"the first free number is {len(numbers) + 1:04d}, the index says {m.group(1)}")
    return out


def check_adr_index():
    print("\nINDICE DELLE ADR (#162)")
    bad = adr_index_problems(ADR_DIR)
    check(not bad, "ADR numbered without gaps, all in docs/adr/README.md with the title of the file"
          + ("" if not bad else ":\n    " + "\n    ".join(bad)))


def module_problems(readme_text, label, expected):
    """None if the README's "Modules" line lists the expected labels in order, else what it lists (or a message)."""
    m = re.search(r"^- \*\*" + label + r"\*\*: (.*?) \(", readme_text, flags=re.M)
    if m is None:
        return f"no '- **{label}**:' line"
    listed = [w.strip() for w in m.group(1).split(",")]
    return None if listed == expected else f"README {listed}, window {expected}"


def module_labels(lua, lang):
    """The labels of the modules in the Settings window (UI/SettingsFrame.lua MODULE_ORDER), in its order."""
    src = open(os.path.join(ADDON, "UI", "SettingsFrame.lua"), encoding="utf-8").read()
    order = re.findall(r'"(\w+)"', re.search(r"local MODULE_ORDER = \{(.*?)\}", src).group(1))
    ui = lua.globals().AzerothUnspoken.languages
    return [str(ui[lang].ui["module_" + k]) for k in order]


def check_modules(lua):
    print("\nMODULI NEL README (#162)")
    for readme, lang, label in (("README.md", "en", "Modules"), ("README.it.md", "it", "Moduli")):
        problem = module_problems(open(os.path.join(ROOT, readme), encoding="utf-8").read(), label, module_labels(lua, lang))
        check(problem is None, f"{readme}: the modules are those of the Settings window, in its order"
              + ("" if problem is None else f" ({problem})"))


def self_test(lua):
    """Each docs check of #162 fails on a bad example made on purpose, and passes on a good one."""
    import tempfile
    print("\nPROVA DEI CONTROLLI SUI DOCUMENTI (#162)")
    commands, registry = command_tables(lua)
    italian = italian_words()
    for text, needle in (("/au pausa", "not a command"), ("/au depth letterario", "Italian"),
                         ("/au mode privato", "Italian"), ("/au depth poetic", "not a word of /au depth"),
                         ("/au journal reset everything", "not a word of /au journal reset"),
                         ("/au relationships reset shared|everyone", "everyone"), ("/au rel shere on", "not a word")):
        found = command_problems(text, commands, registry, italian)
        check(any(needle in p for p in found), f"`{text}` is refused ({found})")
    for text in ("/au depth literary", "/au mode private", "/au soul curiosity high", "/au stories choose <arc> <option>",
                 "/au relationships share on|off", "/au rel reset shared", "/au help chat", "/au help journal",
                 "/au cast Flash Heal", "/au event greet", "/au talk test warm", "/au journal flag Ironforge"):
        found = command_problems(text, commands, registry, italian)
        check(not found, f"`{text}` is accepted" + (f" ({found})" if found else ""))
    check(bool(ITALIAN_EXAMPLE.search("If you type an Italian word such as `/au diario`")), "a line about Italian words may quote one")
    check(adr_label_problems("see [ADR 0028](docs/adr/0029-specificity-tiers.md#x)") == [("0028", "0029-specificity-tiers.md")],
          "a link labelled ADR 0028 to the file 0029 is refused")
    check(not adr_label_problems("see [ADR 0029 §2](../adr/0029-specificity-tiers.md) and [the ADRs](docs/adr/README.md)"),
          "a link labelled with its own number is accepted")
    with tempfile.TemporaryDirectory() as tmp:
        def write(name, text):
            with open(os.path.join(tmp, name), "w", encoding="utf-8", newline="\n") as f:
                f.write(text)
        write("0001-one.md", "# 0001. One\n")
        write("0002-two.md", "# 0002. Two\n")
        write("README.md", "| [0001](0001-one.md) | One | accepted |\n| [0002](0002-two.md) | Two | accepted |\n"
                           "It will get the first free number (today 0003).\n")
        check(not adr_index_problems(tmp), "a complete ADR index is accepted")
        write("0004-four.md", "# 0004. Four\n")
        write("README.md", "| [0001](0001-one.md) | Uno | accepted |\n| [0002](0002-two.md) | Two | accepted |\n"
                           "It will get the first free number (today 0003).\n")
        found = adr_index_problems(tmp)
        check(any("gaps" in p for p in found) and any("0004-four.md is not in the index" in p for p in found)
              and any("index 'Uno'" in p for p in found) and any("first free number" in p for p in found),
              f"a gap, a missing ADR, a wrong title and a wrong first free number are refused ({found})")
    expected = module_labels(lua, "en")
    good = "- **Modules**: " + ", ".join(expected) + " (marks), plus presets.\n"
    check(module_problems(good, "Modules", expected) is None, "a README listing the modules of the window is accepted")
    check(module_problems(good.replace("Relationships", "Relations"), "Modules", expected) is not None,
          "a README with an old module name is refused")
    check(module_problems(good.replace(", Emotions", ""), "Modules", expected) is not None,
          "a README without a module is refused")


if __name__ == "__main__":
    lua = check_examples()
    check_links()
    check_wiki()
    check_commands(lua)
    check_adr_links()
    check_adr_index()
    check_modules(lua)
    self_test(lua)
    print("\n" + ("DOCUMENTAZIONE A POSTO" if not FAILURES else f"{len(FAILURES)} CONTROLLI FALLITI"))
    sys.exit(1 if FAILURES else 0)
