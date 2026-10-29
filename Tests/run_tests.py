"""Test fuori dal gioco di Azeroth Unspoken (Lua 5.1 tramite lupa, come in WoW).

Uso: python -I -X utf8 Tests/run_tests.py [cartella addon]
     (predefinita: AzerothUnspoken accanto alla cartella Tests)
Esce con codice 1 se un controllo fallisce.
"""
import re, subprocess, sys, os
from lupa import lua51

HERE = os.path.dirname(os.path.abspath(__file__))
ADDON = os.path.abspath(sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, "..", "AzerothUnspoken"))
ADDON_NAME = os.path.basename(ADDON)
EXAMPLE = os.path.join(os.path.dirname(ADDON), ADDON_NAME + "_Example")

FAILURES = []
def check(cond, msg):
    if not cond:
        FAILURES.append(msg)
        print("  FALLITO:", msg)
    return cond


def toc_files(folder, name):
    toc = open(os.path.join(folder, name + ".toc"), encoding="utf-8").read().splitlines()
    return [l.strip() for l in toc if l.strip() and not l.lstrip().startswith("#")]


def run_file(lua, path, name, *args):
    src = open(path, encoding="utf-8").read()
    chunk = lua.eval("function(src, name) return assert(loadstring(src, name)) end")(src, "@" + name)
    return chunk(*args)


def load_addon(saved_global=None, saved_char=None, with_example=True):
    """Runtime nuovo: finta API, file nell'ordine del .toc con (ADDON, NS), ADDON_LOADED."""
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    lua.execute(open(os.path.join(HERE, "MockWoWAPI.lua"), encoding="utf-8").read())
    if saved_global is not None:
        lua.execute("AzerothUnspokenDB = " + saved_global)
    if saved_char is not None:
        lua.execute("AzerothUnspokenCharacterDB = " + saved_char)
    ns = lua.table()
    for f in toc_files(ADDON, ADDON_NAME):
        run_file(lua, os.path.join(ADDON, f.replace("\\", "/")), f, ADDON_NAME, ns)
    lua.globals().FIRE("ADDON_LOADED", ADDON_NAME)
    if with_example:
        for f in toc_files(EXAMPLE, ADDON_NAME + "_Example"):
            run_file(lua, os.path.join(EXAMPLE, f), f, ADDON_NAME + "_Example", lua.table())
        lua.globals().FIRE("ADDON_LOADED", ADDON_NAME + "_Example")
    lua.globals().FIRE("PLAYER_ENTERING_WORLD", True, False)
    return lua, lua.globals().AzerothUnspoken


lua, NS = load_addon()
Engine = NS.Engine
G = lua.globals()

# 0) struttura e avvio
print("AVVIO")
toc_text = open(os.path.join(ADDON, ADDON_NAME + ".toc"), encoding="utf-8").read()
check("## Interface: 16001" in toc_text, "Interface 16001 nel .toc")
check("## Title: Azeroth Unspoken" in toc_text, "titolo nel .toc")
check("An immersive roleplay companion for World of Warcraft" in toc_text, "motto in Notes")
check("## SavedVariables: AzerothUnspokenDB" in toc_text, "SavedVariables globali")
check("## SavedVariablesPerCharacter: AzerothUnspokenCharacterDB" in toc_text, "SavedVariables per personaggio")
for f in ("Data\\RegistryCombat.lua", "Data\\RegistryClasses.lua", "Data\\itIT\\Classes.lua", "Data\\enUS\\Classes.lua",
          "Engine\\Validator.lua"):
    check(f in toc_files(ADDON, ADDON_NAME), f"{f} nel .toc (schema v2)")
bindings = open(os.path.join(ADDON, "Bindings.xml"), encoding="utf-8").read()
check('name="AZEROTHUNSPOKEN_SPEAK"' in bindings and "AzerothUnspoken_Speak()" in bindings, "tasto 'pronuncia' in Bindings.xml")
check('name="AZEROTHUNSPOKEN_PAUSE"' in bindings and "AzerothUnspoken_TogglePause()" in bindings, "tasto di pausa in Bindings.xml")
for f in toc_files(ADDON, ADDON_NAME):
    check(os.path.isfile(os.path.join(ADDON, f.replace("\\", "/"))), f"file del .toc esistente: {f}")
for f in ("Integration\\ChatGateway.lua", "UI\\NarratorFrame.lua", "Systems\\Director.lua", "UI\\Wizard.lua"):
    check(f in toc_files(ADDON, ADDON_NAME), f"{f} nel .toc")
check(os.path.isfile(os.path.join(HERE, "..", "docs", "G1_checklist.md")), "checklist G1 presente")
for d in ("Core", "Engine", "Systems", "Integration", "UI", "Data"):
    check(os.path.isdir(os.path.join(ADDON, d)), f"cartella {d}/")
check(G.AzerothUnspokenDB.schemaVersion == 2, "schemaVersion globale")
check(G.AzerothUnspokenCharacterDB.schemaVersion == 2, "schemaVersion per personaggio")
check(G.SlashCmdList.AZEROTHUNSPOKEN is not None, "comando registrato")
check(G.SLASH_AZEROTHUNSPOKEN1 == "/unspoken" and G.SLASH_AZEROTHUNSPOKEN2 == "/au", "alias /unspoken e /au")
errors = list(NS.Diagnostics.errors.values())
check(len(errors) == 0, "nessun errore all'avvio: " + "; ".join(str(e.message) for e in errors))
print("  ok" if not FAILURES else "")

# 1) integrità del database: il validatore dell'addon (lo stesso codice di /au validate)
print("\nVALIDATORE")
val = lua.eval("function() return AzerothUnspoken.Validator:Run() end")()
errors_ = list(val.errors.values())
warnings_ = list(val.warnings.values())
for pr in errors_ + warnings_:
    print("  ", pr.level, pr.code, pr.id or pr.pack, pr.lang or "", pr.msg)
ids = val.stats.phrases
langs = ["it", "en"]
print(f"frasi: {ids} in {val.stats.packs} pacchetti, {val.stats.variants} varianti, "
      f"{len(errors_)} errori, {len(warnings_)} avvisi")
# 367 frasi di base + 54 delle classi + 7 del pacchetto di esempio
check(ids == 428, f"428 frasi caricate (trovate {ids})")
check(not errors_, "database senza errori del validatore")
check(not warnings_, "database senza avvisi del validatore")
sp = {k: v for k, v in val.stats.speakers.items()}
print("voci:", sp)
check(sp.get("inner", 0) >= 80, "la voce interiore ha testi veri")
check(sp.get("narrator", 0) >= 19 and sp.get("character", 0) >= 250, "narratore e personaggio presenti")
check(sum(sp.values()) == ids, "ogni frase ha una voce")
for d in ("natural", "literary", "elevated"):
    check((val.stats.depths[d] or 0) >= 100, f"profondità {d} coperta")

# i file dell'addon sono UTF-8 valido, senza BOM né carattere di sostituzione, con fine riga LF
data_files = []
for folder in (ADDON, EXAMPLE):
    for root, _, files in os.walk(folder):
        for f_ in files:
            if f_.endswith((".lua", ".toc", ".xml", ".md")):
                data_files.append(os.path.join(root, f_))
bad_files = []
for path_ in data_files:
    raw = open(path_, "rb").read()
    try:
        text_ = raw.decode("utf-8")
    except UnicodeDecodeError:
        bad_files.append(os.path.basename(path_) + " (UTF-8 non valido)")
        continue
    if raw.startswith(b"\xef\xbb\xbf") or "�" in text_ or b"\r" in raw:
        bad_files.append(os.path.basename(path_) + " (BOM, U+FFFD o CR)")
check(not bad_files, "file UTF-8 validi con fine riga LF: " + "; ".join(bad_files))

# regola del progetto: niente %s %l %a %w nei pattern applicati a testo UTF-8
PAT_CALL = re.compile(r':?(?:match|gmatch|gsub)\([^"\n]*?"([^"\n]*)"')
for path_ in data_files:
    if path_.endswith(".lua"):
        for ln_ in open(path_, encoding="utf-8").read().split("\n"):
            code_ = ln_.split("--")[0]
            for m_ in PAT_CALL.finditer(code_):
                if re.search(r"%[slaw]", m_.group(1)):
                    check(False, f"{os.path.basename(path_)}: pattern con classe dipendente dalle impostazioni locali: {m_.group(1)}")
print("  ok" if not FAILURES else "")

# 2) generazione in contesti diversi
def setP(**kw):
    P = G.P
    for k, v in kw.items():
        if isinstance(v, dict):
            t = lua.table()
            for kk, vv in v.items(): t[kk] = vv
            v = t
        P[k] = v

EVENTS = ["battle", "victory", "lowhp", "death", "rez", "levelup", "zone", "attack", "heal",
          "buff", "travel", "rezother", "greet", "farewell", "toast", "muse", "threat", "pray", "thanks", "jest"]
CONTEXTS = [
    dict(name="Garrosh", class_="WARRIOR", race="Orc", faction="Horde", sex=2, zone="Durotar"),
    dict(name="Sylvara", class_="PRIEST", race="Scourge", faction="Horde", sex=3, zone="Tirisfal Glades",
         target=dict(name="Rotting Ghoul", ctype="Undead", hostile=True, level=28)),
    dict(name="Thalia", class_="DRUID", race="NightElf", faction="Alliance", sex=3, zone="Teldrassil", hour=23),
    dict(name="Brann", class_="PALADIN", race="Dwarf", faction="Alliance", sex=2, zone="Dun Morogh",
         target=dict(name="Grukk", ctype="Humanoid", hostile=True, player=True, faction="Horde", level=30, race="Orc", **{"class": "WARRIOR"})),
    dict(name="Fizzle", class_="MAGE", race="Gnome", faction="Alliance", sex=2, zone="Duskwood", hour=6,
         target=dict(name="Onyxia", ctype="Dragonkin", hostile=True, level=-1, cls="worldboss")),
]
leftover = re.compile(r"\{[^{}]*\}")
bad = []
generated = 0
for lang in langs:
    NS.db.locale = lang
    for c in CONTEXTS:
        c = dict(c); c["class"] = c.pop("class_")
        setP(target=None, hour=14)
        setP(**c)
        for ev in EVENTS:
            extra = None
            if ev in ("attack", "heal", "buff", "travel", "rezother"):
                spell = {"attack": "Fireball", "heal": "Flash Heal", "buff": "Power Word: Fortitude",
                         "travel": "Hearthstone", "rezother": "Resurrection"}[ev]
                extra = lua.table(spell=spell)
            ctx = NS.BuildContext(NS, extra)
            for form in ("say", "emote"):
                for _ in range(12):
                    s = Engine.Pick(Engine, ev, ctx, form)
                    if s is None: break
                    generated += 1
                    if leftover.search(s) or "�" in s: bad.append((lang, ev, s))
    print(f"[{lang}] ok")

print("segnaposto rimasti:", len(bad))
for b in bad[:10]: print("  ", b)
check(not bad, "nessun segnaposto rimasto")
check(generated > 1000, f"frasi generate: {generated}")

# 3) anti-ripetizione: 40 frasi di battaglia di fila per un orco guerriero
NS.db.locale = "it"
setP(name="Garrosh", **{"class": "WARRIOR"}, race="Orc", faction="Horde", sex=2, zone="Durotar", target=None)
ctx = NS.BuildContext(NS, None)
seq = [Engine.Pick(Engine, "battle", ctx, "say") for _ in range(40)]
gaps = []
last = {}
for i, s in enumerate(seq):
    if s in last: gaps.append(i - last[s])
    last[s] = i
mingap = min(gaps) if gaps else None
print(f"battaglia: {len(set(seq))} frasi diverse su 40, distanza minima tra ripetizioni: {mingap if gaps else '-'}")
check(len(set(seq)) >= 15, "varietà delle frasi di battaglia")
check(mingap is None or mingap >= 8, "nessuna ripetizione ravvicinata")

# 4) esempi leggibili
def show(lang, ev, form, n, **ctxkw):
    NS.db.locale = lang
    base = dict(target=None, hour=14); base.update(ctxkw); setP(**base)
    ctx = NS.BuildContext(NS, None)
    for _ in range(n):
        print(f"  [{lang} {ev}/{form}] {Engine.Pick(Engine, ev, ctx, form)}")

print("\nESEMPI")
show("it", "battle", "emote", 3, name="Sylvara", **{"class": "PRIEST"}, race="Scourge", sex=3, zone="Tirisfal Glades")
show("en", "zone", "emote", 2, name="Thalia", **{"class": "DRUID"}, race="NightElf", sex=3, zone="Duskwood")
show("it", "muse", "say", 2, name="Thalia", **{"class": "DRUID"}, race="NightElf", sex=3, zone="Teldrassil", hour=23)

# 5) con le impostazioni predefinite nulla va in chat pubblica
print("\nPREDEFINITI: NIENTE CHAT PUBBLICA")
lua2, NS2 = load_addon()
G2 = lua2.globals()
check(NS2.db.chat.mode == "PRIVATE" and NS2.db.output.autoPublicSay is False, "modalità predefinita privata")
check(NS2.db.ui.wizardDone is False, "primo avvio: il wizard non è ancora stato completato")
for ev in ("battle", "victory", "zone", "death", "levelup"):
    NS2.db.chance[ev] = 100
G2.SENT = lua2.table()
for zone in ("Duskwood", "Westfall"):
    G2.P.zone = zone
    G2.ADVANCE(100); G2.FIRE("ZONE_CHANGED_NEW_AREA")
G2.ADVANCE(100); G2.P.combat = True; G2.FIRE("PLAYER_REGEN_DISABLED")
G2.ADVANCE(60); G2.P.combat = False; G2.FIRE("PLAYER_REGEN_ENABLED")
G2.ADVANCE(100); G2.FIRE("PLAYER_DEAD"); G2.FIRE("PLAYER_LEVEL_UP", 31)
sent2 = list(G2.SENT.values())
for s_ in sent2: print("  ", s_[:150])
check(not sent2, "nessun messaggio in chat con i predefiniti (nemmeno locale: le frasi stanno nel narratore)")
hist = list(NS2.Narrator.history.values())
for h_ in hist: print("   narratore:", h_.speaker, h_.text)
check(len(hist) >= 4, "le frasi compaiono nel narratore privato")
check(NS2.Gateway.pending is None, "con i predefiniti nessuna proposta pubblica")
check(all(h_.speaker in ("narrator", "character", "inner", "npc") for h_ in hist), "ogni frase ha uno speaker")
shown = lua2.eval("function() return AzerothUnspoken.Narrator:GetFrame().text:GetText() end")()
check(shown is not None and len(shown) > 0, "il riquadro mostra il testo")
G2.HW = True
G2.AzerothUnspoken_Speak()   # senza proposte: improvvisa, e in PRIVATE resta privato
G2.HW = False
check(not list(G2.SENT.values()), "il tasto in modalità privata non scrive in chat")

# 6) flusso reale dagli eventi: combattimento nel mondo aperto, modalità automatica dove permesso
lua.execute("math.randomseed(7)")
NS.db.locale = "it"; NS.db.chance.battle = 100; NS.db.chance.victory = 100; NS.db.pacing.globalCooldownSeconds = 0
NS.Gateway.SetMode(NS.Gateway, "AUTO_ONLY_IF_ALLOWED")
check(NS.db.output.autoPublicSay is True, "AUTO_ONLY_IF_ALLOWED accende autoPublicSay")
G.SENT = lua.table()
setP(combat=False, instance=False)
# combattimenti ripetuti finché una frase parlata non resta in attesa (il seme è fisso: esito ripetibile)
for i in range(40):
    G.ADVANCE(100)
    setP(combat=True)
    G.FIRE("PLAYER_REGEN_DISABLED")
    G.ADVANCE(30)
    setP(combat=False)
    G.FIRE("PLAYER_REGEN_ENABLED")
    if i >= 6 and NS.Gateway.GetPending(NS.Gateway) is not None:
        break
print("\nFLUSSO EVENTI")
flow = list(G.SENT.values())
for s_ in flow[:6]: print("  ", s_)
pending = NS.Gateway.GetPending(NS.Gateway)
print("  proposta in attesa:", pending.text if pending else None)
check(any(s.startswith("EMOTE:") for s in flow), "automatica: le emote partono da sole nel mondo aperto")
check(not any(s.startswith("SAY:") for s in flow), "nessun /say senza azione del giocatore")
check(pending is not None and pending.channel == "SAY", "il parlato resta una proposta per /say")
text = pending.text
G.HW = True
G.AzerothUnspoken_Speak()
G.HW = False
after = list(G.SENT.values())[-1]
print("  dopo il tasto:", after)
check(after == "SAY: " + str(text), "il tasto pronuncia la proposta in attesa")
check(NS.Gateway.GetPending(NS.Gateway) is None, "la proposta inviata non resta in attesa")

# 7) in istanza, senza tasto, /say automatico solo con la modalità automatica e autoPublicSay
setP(instance=True)
def fight(n):
    for i in range(n):
        G.ADVANCE(100); setP(combat=True); G.FIRE("PLAYER_REGEN_DISABLED")
        G.ADVANCE(30); setP(combat=False); G.FIRE("PLAYER_REGEN_ENABLED")
G.SENT = lua.table()
NS.db.output.autoPublicSay = False
fight(10)
check(not any(s.startswith("SAY:") for s in G.SENT.values()), "istanza: niente /say automatico con autoPublicSay = false")
NS.db.output.autoPublicSay = True
G.SENT = lua.table()
fight(14)
check(any(s.startswith("SAY:") for s in G.SENT.values()), "istanza: /say automatico con autoPublicSay = true")
NS.Gateway.SetMode(NS.Gateway, "PRIVATE")
check(NS.db.output.autoPublicSay is False, "tornare a PRIVATE spegne autoPublicSay")
setP(instance=False, combat=False)
NS.Gateway.Discard(NS.Gateway)

print("\nCOMANDI")
cmd = G.SlashCmdList.AZEROTHUNSPOKEN
G.SENT = lua.table()
for c in ["lingua", "lingua en", "prova battle", "lingua itIT", "prova saluto", "chat anteprima", "saluto", "info",
          "pacchetti", "prob fishing 100", "chat bogus", "intensita 70", "profondita elevato", "canale gruppo",
          "pausa", "pausa", "narratore", "narratore cronologia", "narratore cronologia", "annulla", "debug"]:
    cmd(c)
out = list(G.SENT.values())
for s_ in out: print("  ", s_[:160].replace(chr(10), " | "))
check(NS.db.locale == "it", "/au lingua itIT normalizzato a it")
check(NS.db.chat.mode == "PREVIEW", "/au chat anteprima; una modalità sconosciuta non cambia nulla")
check(NS.db.intensity == 70 and NS.db.proseDepth == "elevated" and NS.db.chat.channel == "PARTY", "/au intensita, profondita, canale")
check(NS.paused is False, "/au pausa due volte: di nuovo attivo")
check(not any(s.startswith("SAY:") or s.startswith("EMOTE:") or s.startswith("PARTY:") for s in out), "i comandi di prova non scrivono in chat")
check(any("Capacità" in s for s in out), "/au debug stampa la matrice delle capacità")
check(any("Interface 16001" in s for s in out), "/au debug stampa GetBuildInfo")
check(any("Chat Gateway: mode PREVIEW" in s for s in out), "/au debug stampa lo stato del Chat Gateway")
check(not NS.Diagnostics.errors[1], "nessun errore dai comandi")
NS.db.chat.channel = "auto"; NS.db.intensity = 50; NS.db.proseDepth = "literary"
NS.Gateway.SetMode(NS.Gateway, "PRIVATE")

print("\nPESCA (pacchetto di esempio)")
G.SENT = lua.table()
NS.db.pacing.globalCooldownSeconds = 0
NS.db.ui.narrator.historySize = 100; NS.Narrator.ClearHistory(NS.Narrator)
n0 = 0
G.SPELLS[7620] = "Fishing"
setP(combat=False, target=None)
for i in range(3):
    G.ADVANCE(400)
    G.FIRE("UNIT_SPELLCAST_SUCCEEDED", "player", "guid%d" % i, 7620)
fishing = [h_.text for h_ in list(NS.Narrator.history.values())[n0:]]
for s_ in fishing: print("  ", s_)
check(len(fishing) == 3, "frasi di pesca dal pacchetto di esempio, nel narratore")
check(not list(G.SENT.values()), "la pesca non scrive in chat con la modalità privata")

# 8) le 54 frasi delle classi fanno parte del database di base (erano fuori dal .toc fino a S2)
cls = [p for p in Engine.byId.values() if p.pack == "base_classes"]
print(f"\nbase_classes: {len(cls)} frasi")
check(len(cls) == 54, "base_classes contiene 54 frasi")
check(all(len(p.text["it"]) >= 1 and len(p.text["en"]) >= 1 for p in cls), "le frasi delle classi hanno IT ed EN")

# 9) test in Lua di Compat, Config, EventBus (un runtime nuovo per file)
print("\nTEST LUA")
for name in ("TestCompat", "TestConfig", "TestEventBus", "TestChatGateway", "TestNarrator", "TestDirector",
             "TestSchema", "TestValidator"):
    lt, nst = load_addon()
    run_file(lt, os.path.join(HERE, name + ".lua"), name + ".lua", nst)
    t = lt.globals().T
    print(f"  {name}: {t.passed} superati, {t.failed} falliti")
    for f in t.failures.values():
        check(False, f"{name}: {f}")

# 10) funzioni ed eventi usati contro il dump delle API di Forever (saltato con un avviso se il dump non c'è)
print("\nAPI DI FOREVER")
proc = subprocess.run([sys.executable, "-I", "-X", "utf8", os.path.join(HERE, "check_api.py"),
                       os.path.join(ADDON), os.path.join(EXAMPLE)], capture_output=True, text=True, encoding="utf-8")
print("\n".join("  " + l for l in proc.stdout.rstrip().split("\n")))
if proc.stdout.startswith("SALTATO"):
    print("  AVVISO: controllo delle API saltato (dump non trovato)")
else:
    check(proc.returncode == 0, "check_api.py: funzioni ed eventi usati presenti nel dump (o con eccezione motivata)")

print("\n" + ("TUTTI I CONTROLLI SUPERATI" if not FAILURES else f"{len(FAILURES)} CONTROLLI FALLITI"))
sys.exit(1 if FAILURES else 0)
