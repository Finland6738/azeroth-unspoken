"""Test fuori dal gioco di Azeroth Unspoken (Lua 5.1 tramite lupa, come in WoW).

Uso: python -I -X utf8 Tests/run_tests.py [cartella addon]
     (predefinita: AzerothUnspoken accanto alla cartella Tests)
Esce con codice 1 se un controllo fallisce.
"""
import re, sys, os
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
check(not re.search(r"^\s*Data\\Classes\.lua", toc_text, re.M), "Classes.lua resta fuori dal .toc fino a S3")
for d in ("Core", "Engine", "Systems", "Integration", "UI", "Data"):
    check(os.path.isdir(os.path.join(ADDON, d)), f"cartella {d}/")
check(G.AzerothUnspokenDB.schemaVersion == 1, "schemaVersion globale")
check(G.AzerothUnspokenCharacterDB.schemaVersion == 1, "schemaVersion per personaggio")
check(G.SlashCmdList.AZEROTHUNSPOKEN is not None, "comando registrato")
check(G.SLASH_AZEROTHUNSPOKEN1 == "/unspoken" and G.SLASH_AZEROTHUNSPOKEN2 == "/au", "alias /unspoken e /au")
errors = list(NS.Diagnostics.errors.values())
check(len(errors) == 0, "nessun errore all'avvio: " + "; ".join(str(e.message) for e in errors))
print("  ok" if not FAILURES else "")

# 1) integrità del database
problems = []
ids = 0
langs = ["it", "en"]
for pid, p in Engine.byId.items():
    ids += 1
    for l in langs:
        t = p.text[l]
        if t is None:
            problems.append(f"{pid}: manca '{l}'")
            continue
    a, b = p.text["it"] or "", p.text["en"] or ""
    ta = sorted(re.findall(r"\{(?!g:)[^{}]+\}", a)); tb = sorted(re.findall(r"\{(?!g:)[^{}]+\}", b))
    if ta != tb:
        problems.append(f"{pid}: segnaposto diversi it={ta} en={tb}")
    if p.form == "emote" and re.match(r"[A-Z«\"]", a):
        problems.append(f"{pid}: emote che inizia in maiuscolo")
print(f"\nfrasi: {ids}")
print("problemi:", len(problems))
for x in problems: print("  ", x)
check(ids == 374, f"374 frasi caricate (trovate {ids})")
check(not problems, "database integro")

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
check(NS2.db.output.mode == "self" and NS2.db.output.autoPublicSay is False, "modalità predefinita privata")
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
public = [s for s in sent2 if not s.startswith("PRINT:")]
private = [s for s in sent2 if s.startswith("PRINT:")]
for s_ in sent2: print("  ", s_[:150])
check(not public, "nessun messaggio pubblico con i predefiniti")
check(len(private) >= 4, "le frasi compaiono in anteprima privata")

# 6) flusso reale dagli eventi: combattimento nel mondo aperto, modalità auto
NS.db.locale = "it"; NS.db.output.mode = "auto"; NS.db.chance.battle = 100; NS.db.chance.victory = 100
G.SENT = lua.table()
setP(combat=True, instance=False)
G.ADVANCE(100)
G.FIRE("PLAYER_REGEN_DISABLED")
G.ADVANCE(60)
setP(combat=False)
G.FIRE("PLAYER_REGEN_ENABLED")
NS.db.output.mode = "say"
G.ADVANCE(100)
setP(combat=True)
G.FIRE("PLAYER_REGEN_DISABLED")
print("\nFLUSSO EVENTI")
flow = list(G.SENT.values())
for s in flow: print("  ", s)
pending = NS.GetPending(NS)
print("  in attesa per /say:", pending)
check(any(s.startswith("EMOTE:") for s in flow), "modalità auto: emote nel mondo aperto")
check(not any(s.startswith("SAY:") for s in flow), "nessun /say senza azione del giocatore")
check(pending is not None, "frase in attesa per il tasto")
G.HW = True
G.AzerothUnspoken_Speak()
G.HW = False
after = list(G.SENT.values())[-1]
print("  dopo il tasto:", after)
check(after == "SAY: " + str(pending), "il tasto pronuncia la frase in attesa")

# 7) in istanza, senza tasto, /say automatico solo se autoPublicSay è attivo
G.SENT = lua.table(); setP(instance=True, combat=True)
G.ADVANCE(100); G.FIRE("PLAYER_REGEN_ENABLED"); G.ADVANCE(100); G.FIRE("PLAYER_REGEN_DISABLED")
check(not any(s.startswith("SAY:") for s in G.SENT.values()), "istanza: niente /say automatico con autoPublicSay = false")
NS.db.output.autoPublicSay = True
G.ADVANCE(100); G.FIRE("PLAYER_REGEN_ENABLED"); G.ADVANCE(100); G.FIRE("PLAYER_REGEN_DISABLED")
check(any(s.startswith("SAY:") for s in G.SENT.values()), "istanza: /say automatico con autoPublicSay = true")
NS.db.output.autoPublicSay = False
setP(instance=False, combat=False)
NS.ClearPending(NS)

print("\nCOMANDI")
cmd = G.SlashCmdList.AZEROTHUNSPOKEN
G.SENT = lua.table()
G.HW = True
for c in ["lingua", "lingua en", "prova battle", "lingua itIT", "prova saluto", "modo emote", "saluto", "info",
          "pacchetti", "prob fishing 100", "modo bogus", "debug"]:
    cmd(c)
G.HW = False
out = list(G.SENT.values())
for s_ in out: print("  ", s_[:160].replace(chr(10), " | "))
check(NS.db.locale == "it", "/au lingua itIT normalizzato a it")
check(any("EMOTE:" in s for s in out), "/au saluto in modalità emote")
check(any("Capacità" in s for s in out), "/au debug stampa la matrice delle capacità")
check(any("Interface 16001" in s for s in out), "/au debug stampa GetBuildInfo")
check(not NS.Diagnostics.errors[1], "nessun errore dai comandi")

print("\nPESCA (pacchetto di esempio)")
G.SENT = lua.table()
NS.db.output.mode = "emote"; NS.db.pacing.globalCooldownSeconds = 0
G.SPELLS[7620] = "Fishing"
setP(combat=False, target=None)
for i in range(3):
    G.ADVANCE(400)
    G.FIRE("UNIT_SPELLCAST_SUCCEEDED", "player", "guid%d" % i, 7620)
fish = list(G.SENT.values())
for s_ in fish: print("  ", s_)
check(len(fish) == 3 and all(s.startswith("EMOTE:") for s in fish), "frasi di pesca dal pacchetto di esempio")

# 8) Classes.lua: fuori dal .toc, ma deve almeno caricarsi (si integra in S3)
lua3, NS3 = load_addon(with_example=False)
before = sum(1 for _ in NS3.Engine.byId.keys())
run_file(lua3, os.path.join(ADDON, "Data", "Classes.lua"), "Data\\Classes.lua", ADDON_NAME, NS3)
classes = sum(1 for _ in NS3.Engine.byId.keys()) - before
print(f"\nClasses.lua (non nel .toc): {classes} frasi caricabili")
check(classes == 54, "Classes.lua contiene 54 frasi")

# 9) test in Lua di Compat, Config, EventBus (un runtime nuovo per file)
print("\nTEST LUA")
for name in ("TestCompat", "TestConfig", "TestEventBus"):
    lt, nst = load_addon()
    run_file(lt, os.path.join(HERE, name + ".lua"), name + ".lua", nst)
    t = lt.globals().T
    print(f"  {name}: {t.passed} superati, {t.failed} falliti")
    for f in t.failures.values():
        check(False, f"{name}: {f}")

print("\n" + ("TUTTI I CONTROLLI SUPERATI" if not FAILURES else f"{len(FAILURES)} CONTROLLI FALLITI"))
sys.exit(1 if FAILURES else 0)
