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


def load_addon(saved_global=None, saved_char=None, with_example=True, epoch=None, zone=None):
    """Runtime nuovo: finta API, file nell'ordine del .toc con (ADDON, NS), ADDON_LOADED.
    saved_global/saved_char: SavedVariables come testo Lua (/reload: vedi SERIALIZE nel mock);
    epoch: ora del client (secondi), zone: zona in cui il personaggio entra nel mondo."""
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    lua.execute(open(os.path.join(HERE, "MockWoWAPI.lua"), encoding="utf-8").read())
    if epoch is not None:
        lua.execute(f"FAKE_EPOCH = {epoch}")
    if zone is not None:
        lua.execute(f'P.zone = "{zone}"')
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
          "Engine\\Validator.lua", "Engine\\Traits.lua", "Systems\\Personality.lua", "UI\\ProfileFrame.lua",
          "Data\\RegistrySoul.lua", "Data\\itIT\\Soul.lua", "Data\\enUS\\Soul.lua", "Systems\\LivingMemory.lua",
          "UI\\JournalFrame.lua", "Data\\RegistryMemory.lua", "Data\\itIT\\Memory.lua", "Data\\enUS\\Memory.lua"):
    check(f in toc_files(ADDON, ADDON_NAME), f"{f} nel .toc (schema v2, S5)")
for f in ("Systems/Relationships.lua", "UI/RelationsFrame.lua", "Data/Relationships.lua", "Data/RegistryRelations.lua",
          "Data/itIT/Relations.lua", "Data/enUS/Relations.lua", "Data/itIT/RelationsUI.lua", "Data/enUS/RelationsUI.lua"):
    check(f.replace("/", chr(92)) in toc_files(ADDON, ADDON_NAME), f"{f} nel .toc (relazioni, S6b)")
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
check(G.AzerothUnspokenDB.schemaVersion == 5, "schemaVersion globale")
check(G.AzerothUnspokenCharacterDB.schemaVersion == 5, "schemaVersion per personaggio")
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
# 367 frasi di base + 54 delle classi + 16 della personalità + 14 della memoria + 51 delle relazioni + 86 di interlocutore
# e luogo (S6c) + 7 del pacchetto di esempio
check(ids == 595, f"595 frasi caricate (trovate {ids})")
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
check(NS.db.output.autoPublicSay is False, "AUTO_ONLY_IF_ALLOWED da sola non accende autoPublicSay (serve la conferma)")
NS.Gateway.SetMode(NS.Gateway, "AUTO_ONLY_IF_ALLOWED", lua.table(confirmAuto=True))
check(NS.db.output.autoPublicSay is True, "con la conferma esplicita autoPublicSay si accende")
G.SENT = lua.table()
setP(combat=False, instance=False)
# combattimenti ripetuti finché una frase parlata non resta in attesa (il seme è fisso: esito ripetibile)
for i in range(100):
    G.ADVANCE(100)
    setP(combat=True)
    G.FIRE("PLAYER_REGEN_DISABLED")
    G.ADVANCE(30)
    setP(combat=False)
    G.FIRE("PLAYER_REGEN_ENABLED")
    G.ADVANCE(1)   # il Narrative Director risolve i candidati dopo la finestra di arbitraggio
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
# con il seme fisso la sequenza dipende dalle frasi caricate: si continua finché parte un /say (al massimo 60 scontri)
for _ in range(12):
    fight(5)
    if any(s.startswith("SAY:") for s in G.SENT.values()):
        break
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

# issue #11: ogni valore elencato dall'aiuto cambia davvero l'impostazione, uno sconosciuto riceve una risposta
print("\nCOMANDI: ALIAS E VALORI NON VALIDI")
def run_cmd(c):
    G.SENT = lua.table()
    cmd(c)
    return " | ".join(list(G.SENT.values()))
for word, expected in [("auto", "auto"), ("say", "SAY"), ("dire", "SAY"), ("emote", "EMOTE"), ("gruppo", "PARTY"),
                       ("party", "PARTY"), ("incursione", "RAID"), ("raid", "RAID"), ("gilda", "GUILD"),
                       ("guild", "GUILD"), ("istanza", "INSTANCE_CHAT"), ("instance", "INSTANCE_CHAT")]:
    NS.db.chat.channel = "SAY" if expected != "SAY" else "EMOTE"
    run_cmd("canale " + word)
    check(NS.db.chat.channel == expected, f"/au canale {word} -> {expected} (trovato {NS.db.chat.channel})")
for lang_ in ("it", "en"):
    NS.db.locale = lang_
    help_text = NS.L(NS, "help")
    for word in ("incursione", "evento", "vittoria") if lang_ == "it" else ("raid", "event", "victory"):
        check(word in help_text, f"l'aiuto ({lang_}) elenca '{word}'")
NS.db.locale = "it"
NS.db.chat.channel = "auto"
out_ = run_cmd("canale xyz")
check("non valido" in out_ and "xyz" in out_ and "incursione" in out_ and NS.db.chat.channel == "auto",
      "canale sconosciuto: messaggio con i valori ammessi, impostazione invariata: " + out_)
out_ = run_cmd("profondita boh")
check("non valido" in out_ and "elevato" in out_ and NS.db.proseDepth == "literary", "profondità sconosciuta: " + out_)
NS.db.chat.mode = "PRIVATE"
out_ = run_cmd("chat boh")
check("non valido" in out_ and "conferma" in out_ and NS.db.chat.mode == "PRIVATE", "modalità sconosciuta: " + out_)
NS.db.locale = "en"
out_ = run_cmd("channel xyz")
check("invalid value" in out_ and "raid" in out_, "canale sconosciuto in inglese: " + out_)
NS.db.locale = "it"
out_ = run_cmd("canale")   # senza valore: mostra il canale attuale, nessun errore
check("non valido" not in out_, "canale senza valore: solo lo stato")
# ogni comando manuale dell'aiuto produce una frase o un messaggio, mai un errore
for word in ("saluto", "addio", "brindisi", "pensiero", "minaccia", "grido", "vittoria", "preghiera", "ringrazia", "scherzo"):
    run_cmd(word)
check(NS.Diagnostics.errors[1] is None, "i comandi dell'aiuto non producono errori")
NS.Gateway.Discard(NS.Gateway)
# chiavi d'interfaccia: IT ed EN hanno le stesse e le inutilizzate sono state rimosse
ui_it = {k for k in G.AzerothUnspoken.languages["it"].ui.keys()}
ui_en = {k for k in G.AzerothUnspoken.languages["en"].ui.keys()}
check(ui_it == ui_en, "IT ed EN hanno le stesse chiavi d'interfaccia: " + str(sorted(ui_it ^ ui_en)))
check("send_error" not in ui_it and "preview" not in ui_it, "chiavi inutilizzate rimosse (#11)")
G.SENT = lua.table()

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
G.ADVANCE(1)   # finestra di arbitraggio del Narrative Director
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
for name in ("TestMock", "TestCompat", "TestConfig", "TestEventBus", "TestContext", "TestChatGateway", "TestNarrator",
             "TestDirector", "TestNarrativeDirector", "TestSchema", "TestValidator", "TestSoul", "TestMemory", "TestRelations",
             "TestOtherPlace"):
    lt, nst = load_addon()
    run_file(lt, os.path.join(HERE, name + ".lua"), name + ".lua", nst)
    t = lt.globals().T
    print(f"  {name}: {t.passed} superati, {t.failed} falliti")
    for f in t.failures.values():
        check(False, f"{name}: {f}")

# 9b) persistenza simulata dopo /reload: le SavedVariables escono da un runtime come testo e rientrano in un altro
print("\nPERSISTENZA DELLA MEMORIA (/reload simulato)")
DAY = 86400
lua1, ns1 = load_addon(with_example=False, zone="Durotar")
g1 = lua1.globals()
ns1.db.intensity = 0
g1.ADVANCE(10); g1.P.zone = "Teldrassil"; g1.FIRE("ZONE_CHANGED_NEW_AREA")
g1.ADVANCE(30); g1.FIRE("PLAYER_DEAD")
g1.ADVANCE(60); g1.P.level = 12; g1.FIRE("PLAYER_LEVEL_UP", 12)
first_id = lua1.eval("function() local l = AzerothUnspoken.LivingMemory:List(); return l[#l].id end")()
check(lua1.eval("function(id) return AzerothUnspoken.LivingMemory:SetPermanent(id) end")(first_id), "memoria: il ricordo si segna permanente")
g1.ADVANCE(120); g1.P.zone = "Darkshore"; g1.FIRE("ZONE_CHANGED_NEW_AREA")
g1.ADVANCE(60)
epoch1 = g1.FAKE_EPOCH
n_entries = lua1.eval("function() return #AzerothUnspokenCharacterDB.memories.entries end")()
max_id = lua1.eval("function() return AzerothUnspokenCharacterDB.memories.nextId - 1 end")()
check(n_entries >= 4, f"memoria: ricordi salvati in sessione ({n_entries})")
saved_char = lua1.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
saved_global = lua1.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
check("Teldrassil" in saved_char and "first_death" in saved_char, "memoria: i dati salvati contengono luogo e flag")
check("whisper" not in saved_char.lower() and "chat" not in saved_char.lower(), "memoria: nessun testo di chat nei dati salvati")

# a) /reload nella stessa visita (un minuto dopo): la visita continua, non ne comincia una nuova
lua2, ns2 = load_addon(saved_global, saved_char, with_example=False, epoch=epoch1 + 60, zone="Darkshore")
g2 = lua2.globals()
check(lua2.eval("function() return AzerothUnspoken.LivingMemory.readOnly end")() is False, "memoria: dopo /reload non è in sola lettura")
check(lua2.eval("function() return #AzerothUnspokenCharacterDB.memories.entries end")() == n_entries, "memoria: stessi ricordi dopo /reload")
check(lua2.eval("function() return AzerothUnspokenCharacterDB.memories.places.Darkshore.visits end")() == 1, "memoria: /reload nella stessa visita non ne apre una nuova")
check(lua2.eval("function() return AzerothUnspoken:BuildContext().memory.firstVisit end")() is True, "memoria: dopo /reload la prima visita è ancora la prima")
check(lua2.eval("function() return AzerothUnspoken.LivingMemory:HasFlag('first_death') end")() is True, "memoria: il flag sopravvive a /reload")

# b) tre giorni dopo: ritorno nel bosco dove il personaggio è morto
lua3, ns3 = load_addon(saved_global, saved_char, with_example=False, epoch=epoch1 + 3 * DAY, zone="Durotar")
g3 = lua3.globals()
check(lua3.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 5, "memoria: schema 5 dopo il caricamento")
lua3.execute("AzerothUnspoken.db.intensity = 50; AzerothUnspoken.db.chance.zone = 100; AzerothUnspoken.db.chance.memory_return = 100; "
             "AzerothUnspoken.db.pacing.globalCooldownSeconds = 0")
g3.ADVANCE(10); g3.P.zone = "Teldrassil"; g3.FIRE("ZONE_CHANGED_NEW_AREA")
ctxinfo = lua3.eval("""function()
    local m = AzerothUnspoken:BuildContext().memory
    return m.repeatVisit, m.lastVisitBad, m.lastBadKind, m.visits, m.daysSinceLastVisit, m.flags.first_death ~= nil
end""")
rep, bad, kind, visits, days, flag = ctxinfo()
check(rep is True and bad is True and kind == "death", "memoria: il ritorno ricorda che l'ultima visita finì con una morte")
check(visits == 2 and flag is True, "memoria: due visite e flag della prima morte")
check(days is not None and 2.9 < days < 3.2, f"memoria: giorni dall'ultima visita ({days})")
g3.ADVANCE(4)
spoken = lua3.eval("""function()
    for i = #AzerothUnspoken.Director.log, 1, -1 do
        local e = AzerothUnspoken.Director.log[i]
        if e.result == "spoken" then return e.event end
    end
end""")()
check(spoken == "memory_return", f"memoria: al ritorno parla il richiamo di memoria ({spoken})")
hist = list(ns3.Narrator.history.values())
check(len(hist) == 1, "memoria: una sola frase, niente cascata")
print("  frase di ritorno:", hist[0].text if hist else None)
check(lua3.eval("function() return AzerothUnspoken.LivingMemory:Find(%d) ~= nil and AzerothUnspoken.LivingMemory:Find(%d).perm end" % (first_id, first_id))() is True,
      "memoria: il ricordo permanente sopravvive")
# i nuovi ricordi proseguono la numerazione
new_id = lua3.eval("function() local l = AzerothUnspoken.LivingMemory:List(); local m = 0; for _, e in ipairs(l) do if e.id > m then m = e.id end end; return m end")()
check(new_id > max_id, f"memoria: gli id nuovi proseguono ({new_id} > {max_id})")
export_text = lua3.eval("function() return AzerothUnspoken.LivingMemory:ExportText() end")()
check("Teldrassil" in export_text and "Darkshore" in export_text, "memoria: l'esportazione dopo /reload contiene i luoghi")

# c) un personaggio senza dati salvati parte da zero, e dati rovinati non fermano l'avvio
lua4, ns4 = load_addon(saved_global, '{schemaVersion=3,memories={entries="x",places=7,flags={"a"}}}', with_example=False)
check(lua4.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 5, "memoria: dati rovinati migrati")
check(len(list(ns4.Diagnostics.errors.values())) == 0 or all("memory" not in str(e.message) for e in ns4.Diagnostics.errors.values()),
      "memoria: dati rovinati senza errori fatali")
print("  ok" if not FAILURES else "")

# 9c) persistenza simulata delle relazioni: NPC calcolati dall'addon, giocatori scelti dall'utente, decadimento lento
print("\nPERSISTENZA DELLE RELAZIONI (/reload simulato)")
rl1, rn1 = load_addon(with_example=False, zone="Durotar")
rg1 = rl1.globals()
rg1.P.npc = rl1.eval("{ name = 'Pip', guid = 'Creature-0-3134-0-6-1234-0000A2E9A1' }")
for _ in range(3):
    rg1.ADVANCE(20)
    rg1.FIRE("GOSSIP_SHOW")
rl1.execute("""
    local R = AzerothUnspoken.Relationships
    R:AddPlayer("Aldric-Stormrage", "user")
    R:SetAxis("player", "Aldric-Stormrage", "trust", 55)
    R:SetAxis("player", "Aldric-Stormrage", "affection", 45)
    R:SetAxis("player", "Aldric-Stormrage", "familiarity", 40)
    R:SetNote("player", "Aldric-Stormrage", "Mi ha salvato la vita")
    R:SetLabel("player", "Aldric-Stormrage", "fratello di spada")
    R:Propose("Brenna-Stormrage", "group")
""")
npc_fam = rl1.eval("function() return AzerothUnspokenCharacterDB.relationships.npcs[1234].familiarity end")()
check(npc_fam is not None and 4 < npc_fam <= 6, f"relazioni: familiarità dell'NPC dopo tre dialoghi ({npc_fam})")
saved_char_r = rl1.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
saved_global_r = rl1.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
epoch_r = rg1.FAKE_EPOCH
check("Aldric-Stormrage" in saved_char_r and "Mi ha salvato la vita" in saved_char_r, "relazioni: i dati dell'utente sono salvati")
check("Brenna" not in saved_char_r, "relazioni: una proposta non viene mai salvata")
check("Pip" in saved_char_r and "1234" in saved_char_r, "relazioni: l'NPC è salvato con il suo npcID")

# a) /reload subito dopo: tutto com'era, nessun decadimento
rl2, rn2 = load_addon(saved_global_r, saved_char_r, with_example=False, epoch=epoch_r + 60, zone="Durotar")
d2 = rl2.eval("function() return AzerothUnspokenCharacterDB.relationships end")()
check(rl2.eval("function() return AzerothUnspokenCharacterDB.relationships.npcs[1234].familiarity end")() == npc_fam, "relazioni: nessun decadimento subito dopo /reload")
check(rl2.eval("function() return AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].note end")() == "Mi ha salvato la vita", "relazioni: la nota dopo /reload")
check(rl2.eval("function() return AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].label end")() == "fratello di spada", "relazioni: l'etichetta scelta dopo /reload")
check(rl2.eval("function() return next(AzerothUnspoken.Relationships.candidates) end")() is None, "relazioni: le proposte non sopravvivono alla sessione")
check(not list(rn2.Diagnostics.errors.values()), "relazioni: nessun errore dopo /reload")

# b) quaranta giorni dopo: la familiarità dell'NPC cala lentamente, il giocatore dell'utente non cambia
rl3, rn3 = load_addon(saved_global_r, saved_char_r, with_example=False, epoch=epoch_r + 40 * 86400, zone="Durotar")
fam3 = rl3.eval("function() return AzerothUnspokenCharacterDB.relationships.npcs[1234].familiarity end")()
check(fam3 is not None and 0 < npc_fam - fam3 < 20, f"relazioni: la familiarità dell'NPC cala con i giorni ({npc_fam} -> {fam3})")
check(rl3.eval("function() return AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].familiarity end")() == 40, "relazioni: un giocatore dell'utente non decade")
check(rl3.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 5, "relazioni: schema 5")
rl3.globals().P.target = rl3.eval("{ name = 'Aldric', realm = 'Stormrage', player = true, guid = 'Player-1-0000AAAA' }")
ctx_label = rl3.eval("function() return AzerothUnspoken:BuildContext().relationLabel end")()
check(ctx_label == "fratello di spada", "relazioni: dopo /reload il contesto usa l'etichetta scelta")

# c) un file di un personaggio con dati rovinati parte lo stesso
rl4, rn4 = load_addon(saved_global_r, '{schemaVersion=4,relationships={npcs="x",players={[5]=1}}}', with_example=False)
check(rl4.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 5, "relazioni: dati rovinati migrati")
check(not any("relations" in str(e.message) for e in rn4.Diagnostics.errors.values()), "relazioni: dati rovinati senza errori fatali")
print("  ok" if not FAILURES else "")

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
