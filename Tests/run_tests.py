"""Test fuori dal gioco di Azeroth Unspoken (Lua 5.1 tramite lupa, come in WoW).

Uso: python -I -X utf8 Tests/run_tests.py [cartella addon]
     (predefinita: AzerothUnspoken accanto alla cartella Tests)
Esce con codice 1 se un controllo fallisce.
"""
import json, re, subprocess, sys, os
from lupa import lua51

HERE = os.path.dirname(os.path.abspath(__file__))
ADDON = os.path.abspath(sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, "..", "AzerothUnspoken"))
ADDON_NAME = os.path.basename(ADDON)
EXAMPLE = os.path.join(os.path.dirname(ADDON), ADDON_NAME + "_Example")
VERSI = os.path.join(os.path.dirname(ADDON), ADDON_NAME + "_Versi")
ROOT = os.path.dirname(ADDON)


def pack_folders():
    """The folders of the download loaded on demand (#85, #101): their .toc declares a language or a region."""
    out = []
    for d in sorted(os.listdir(ROOT)):
        toc = os.path.join(ROOT, d, d + ".toc")
        if d.startswith(ADDON_NAME + "_") and os.path.isfile(toc) and                 "## X-AzerothUnspoken-" in open(toc, encoding="utf-8").read():
            out.append(d)
    return out


PACKS = pack_folders()

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


def load_addon(saved_global=None, saved_char=None, with_example=True, epoch=None, zone=None, packs="all"):
    """Runtime nuovo: finta API, file nell'ordine del .toc con (ADDON, NS), ADDON_LOADED.
    saved_global/saved_char: SavedVariables come testo Lua (/reload: vedi SERIALIZE nel mock);
    epoch: ora del client (secondi), zone: zona in cui il personaggio entra nel mondo.
    packs: "all" = every language and regional folder in memory and every region built (a development install: the
    validator and the selection see the whole database); "lazy" = folders installed as LoadOnDemand, loaded by
    Core/Packs.lua like in the client; "none" = folders not installed."""
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
    if packs != "none":
        lua.globals().INSTALL_PACKS(ROOT.replace("\\", "/"), lua.table_from(PACKS), packs == "all")
    lua.globals().FIRE("ADDON_LOADED", ADDON_NAME)
    if packs == "all":
        lua.eval("function() AzerothUnspoken.Packs:ActivateAll() end")()
    if with_example:
        for f in toc_files(EXAMPLE, ADDON_NAME + "_Example"):
            run_file(lua, os.path.join(EXAMPLE, f), f, ADDON_NAME + "_Example", lua.table())
        lua.globals().FIRE("ADDON_LOADED", ADDON_NAME + "_Example")
    # come il client: ADDON_LOADED di ogni addon, poi PLAYER_LOGIN, poi PLAYER_ENTERING_WORLD
    lua.globals().ENTER_GAME(True, False)
    return lua, lua.globals().AzerothUnspoken


lua, NS = load_addon()
Engine = NS.Engine
G = lua.globals()

# 0) struttura e avvio
def in_toc(f):
    """A file of the database: the phrase texts are in the .toc of their language pack (#85), the rest in the base."""
    f = f.replace("/", chr(92))
    m = re.match(r"^Data[\\](itIT|enUS)[\\](\w+\.lua)$", f)
    if m and not m.group(2).endswith("UI.lua") and m.group(2) != "Interface.lua":
        pack = ADDON_NAME + "_" + m.group(1)
        return m.group(2) in toc_files(os.path.join(ROOT, pack), pack)
    return f in toc_files(ADDON, ADDON_NAME)


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
    check(in_toc(f), f"{f} nel .toc (schema v2, S5)")
for f in ("Systems/NPCAlive.lua", "UI/DialogueFrame.lua", "Data/Dialogues.lua", "Data/RegistryDialogues.lua",
          "Data/itIT/Dialogues.lua", "Data/enUS/Dialogues.lua", "Data/itIT/NPCUI.lua", "Data/enUS/NPCUI.lua"):
    check(in_toc(f), f"{f} nel .toc (NPC Alive, S8)")
for f in ("Systems/Relationships.lua", "UI/RelationsFrame.lua", "Data/Relationships.lua", "Data/RegistryRelations.lua",
          "Data/itIT/Relations.lua", "Data/enUS/Relations.lua", "Data/itIT/RelationsUI.lua", "Data/enUS/RelationsUI.lua"):
    check(in_toc(f), f"{f} nel .toc (relazioni, S6b)")
bindings = open(os.path.join(ADDON, "Bindings.xml"), encoding="utf-8").read()
check('name="AZEROTHUNSPOKEN_SPEAK"' in bindings and "AzerothUnspoken_Speak()" in bindings, "tasto 'pronuncia' in Bindings.xml")
check('name="AZEROTHUNSPOKEN_PAUSE"' in bindings and "AzerothUnspoken_TogglePause()" in bindings, "tasto di pausa in Bindings.xml")
check('name="AZEROTHUNSPOKEN_NPC"' in bindings and "AzerothUnspoken_NPCDialogue()" in bindings, "tasto del dialogo ambientale in Bindings.xml")
check('name="AZEROTHUNSPOKEN_REROLL"' in bindings and "AzerothUnspoken_Reroll()" in bindings, "tasto 'un'altra' in Bindings.xml")
# #183: every action of the proposal bar, the history, the journal and the NPC answers have a key, a function that
# exists after the load and a name in English and in Italian (Core/Bootstrap.lua)
for name_, call_ in (("DISCARD", "AzerothUnspoken_Discard()"), ("EDIT", "AzerothUnspoken_Edit()"),
                     ("CHANNEL", "AzerothUnspoken_Channel()"), ("HISTORY", "AzerothUnspoken_History()"),
                     ("JOURNAL", "AzerothUnspoken_Journal()"), ("ANSWER1", "AzerothUnspoken_NPCAnswer(1)"),
                     ("ANSWER2", "AzerothUnspoken_NPCAnswer(2)"), ("ANSWER3", "AzerothUnspoken_NPCAnswer(3)")):
    check(f'name="AZEROTHUNSPOKEN_{name_}"' in bindings and call_ in bindings, f"key {name_} in Bindings.xml")
boot_ = open(os.path.join(ADDON, "Core", "Bootstrap.lua"), encoding="utf-8").read()
for m_ in re.finditer(r'<Binding name="(\w+)"[^>]*>\s*(\w+)\(', bindings):
    check(G[m_.group(2)] is not None, f"{m_.group(1)}: {m_.group(2)} exists after the load")
    check(boot_.count(f"BINDING_NAME_{m_.group(1)} = ") == 2, f"{m_.group(1)}: a name in English and in Italian")
for f in toc_files(ADDON, ADDON_NAME):
    check(os.path.isfile(os.path.join(ADDON, f.replace("\\", "/"))), f"file del .toc esistente: {f}")
for f in ("Integration\\ChatGateway.lua", "UI\\NarratorFrame.lua", "Systems\\Director.lua", "UI\\Wizard.lua"):
    check(f in toc_files(ADDON, ADDON_NAME), f"{f} nel .toc")
check(os.path.isfile(os.path.join(HERE, "..", "docs", "G1_checklist.md")), "checklist G1 presente")
for d in ("Core", "Engine", "Systems", "Integration", "UI", "Data"):
    check(os.path.isdir(os.path.join(ADDON, d)), f"cartella {d}/")
check(G.AzerothUnspokenDB.schemaVersion == 7, "schemaVersion globale")
check(G.AzerothUnspokenCharacterDB.schemaVersion == 7, "schemaVersion per personaggio")
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
# e luogo (S6c) + 7 del pacchetto di esempio; S7 (contenuti Alpha): 803 di base + 7 del pacchetto di esempio;
# S8 (NPC Alive): + 169 battute dei dialoghi ambientali = 972 di base + 7 = 979
# S9 (Story Arcs): + 33 battute degli archi = 1005 di base + 7 = 1012; + 4 battute dei duelli per rapporto (#105) = 1016; + 21 righe di riconoscimento, sentimenti e alleati (#106, #109, #110) = 1037; + 63 del mondo (R3: meteo, ore, luoghi, missioni, reputazione, locanda, volo) = 1100; + 35 di emozioni e tratti forti (R4) = 1135; + 10 delle situazioni composte (#100) + 8 monologhi e 23 loro parti (#99) = 1176; + 5 richiami del primo incontro con un NPC (N2, #214) = 1181; + 2 di una storia d'amore con un NPC (N3, #215) = 1183; + 3 della parola data a un NPC (N4, #216) = 1186; + 4 della reputazione locale (N6, #218) = 1190
check(ids == 1190, f"1190 frasi caricate (trovate {ids})")
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
for folder in (ADDON, EXAMPLE, VERSI) + tuple(os.path.join(ROOT, d) for d in PACKS):
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
        G.ADVANCE(1)   # #185: the lines held during the fight come out half a second after its end
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
for c in ["language", "language en", "test battle", "language itIT", "test greet", "mode preview", "greet", "stats",
          "packs", "chance fishing 100", "mode bogus", "intensity 70", "depth elevated", "channel party",
          "pause", "pause", "narrator", "narrator history", "narrator history", "cancel", "debug"]:
    cmd(c)
out = list(G.SENT.values())
for s_ in out: print("  ", s_[:160].replace(chr(10), " | "))
check(NS.db.locale == "it", "/au language itIT normalizzato a it")
check(NS.db.chat.mode == "PREVIEW", "/au mode preview; una modalità sconosciuta non cambia nulla")
check(NS.db.intensity == 70 and NS.db.proseDepth == "elevated" and NS.db.chat.channel == "PARTY", "/au intensity, depth, channel")
check(NS.paused is False, "/au pause due volte: di nuovo attivo")
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
for word, expected in [("auto", "auto"), ("say", "SAY"), ("s", "SAY"), ("emote", "EMOTE"), ("e", "EMOTE"),
                       ("party", "PARTY"), ("p", "PARTY"), ("raid", "RAID"), ("guild", "GUILD"), ("g", "GUILD"),
                       ("instance", "INSTANCE_CHAT"), ("i", "INSTANCE_CHAT")]:
    NS.db.chat.channel = "SAY" if expected != "SAY" else "EMOTE"
    run_cmd("channel " + word)
    check(NS.db.chat.channel == expected, f"/au channel {word} -> {expected} (trovato {NS.db.chat.channel})")
# l'aiuto elenca gli stessi nomi inglesi in ogni lingua, con la descrizione nella lingua dell'interfaccia
for lang_ in ("it", "en"):
    NS.db.locale = lang_
    help_text = run_cmd("help all")
    for word in ("raid", "/au event", "victory", "/au journal", "/au relationships", "/au channel", "/au mode"):
        check(word in help_text, f"l'aiuto ({lang_}) elenca '{word}'")
    for word in ("/au diario", "/au relazioni", "/au prova", "/au canale", "/au aiuto", "/au benvenuto"):
        check(word not in help_text, f"l'aiuto ({lang_}) non elenca la parola italiana '{word}'")
NS.db.locale = "it"
NS.db.chat.channel = "auto"
out_ = run_cmd("channel xyz")
check("non valido" in out_ and "xyz" in out_ and "raid" in out_ and NS.db.chat.channel == "auto",
      "canale sconosciuto: messaggio con i valori ammessi, impostazione invariata: " + out_)
out_ = run_cmd("depth boh")
check("non valido" in out_ and "elevated" in out_ and NS.db.proseDepth == "literary", "profondità sconosciuta: " + out_)
NS.db.chat.mode = "PRIVATE"
out_ = run_cmd("mode boh")
check("non valido" in out_ and "confirm" in out_ and NS.db.chat.mode == "PRIVATE", "modalità sconosciuta: " + out_)
NS.db.locale = "en"
out_ = run_cmd("channel xyz")
check("invalid value" in out_ and "raid" in out_, "canale sconosciuto in inglese: " + out_)
NS.db.locale = "it"
out_ = run_cmd("channel")   # senza valore: mostra il canale attuale, nessun errore
check("non valido" not in out_, "canale senza valore: solo lo stato")
# ogni comando manuale dell'aiuto produce una frase o un messaggio, mai un errore
for word in ("greet", "farewell", "toast", "muse", "threat", "battlecry", "victory", "pray", "thanks", "jest"):
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
# #192: a window is hidden on the line after its CreateFrame (W.Window does it for every window that uses it), so a Build
# that fails half-way never leaves a frame on screen that blocks the clicks. The windows' files only: the narrator box
# and the speak button are shown on purpose.
win_frames_ = 0
for f_ in ("Widgets.lua", "JournalFrame.lua", "RelationsFrame.lua", "ProfileFrame.lua", "Wizard.lua", "DialogueFrame.lua"):
    src_ = open(os.path.join(ADDON, "UI", f_), encoding="utf-8").read().split("\n")
    for i_, line_ in enumerate(src_):
        m_ = re.match(r'\s*(?:local\s+)?(\w+) = CreateFrame\("\w+", ("AzerothUnspoken\w+"|opts\.name), (UIParent|parent or UIParent)\)', line_)
        if m_:
            win_frames_ += 1
            check(i_ + 1 < len(src_) and src_[i_ + 1].strip().startswith(m_.group(1) + ":Hide()"),
                  f"{f_}:{i_ + 1}: hidden right after CreateFrame (#192)")
    if f_ != "Widgets.lua" and f_ != "DialogueFrame.lua":
        check("W.Window(" in "\n".join(src_), f"{f_}: the window is made by W.Window (#187)")
check(win_frames_ == 2, f"the named frames of the windows: W.Window and the dialogue window ({win_frames_})")
for name in ("TestMock", "TestCompat", "TestConfig", "TestEventBus", "TestContext", "TestChatGateway", "TestNarrator", "TestWizardConsent", "TestWindows",
             "TestDirector", "TestNarrativeDirector", "TestSchema", "TestValidator", "TestSoul", "TestEmotion", "TestMemory", "TestRelations", "TestPlayers", "TestNPCLevels", "TestNPCRomance", "TestPromises", "TestLocalReputation", "TestProximityShared",
             "TestOtherPlace", "TestNPCAlive", "TestArcs", "TestCommands", "TestProfile", "TestProbeCombat", "TestContent", "TestScale",
             "TestSelection", "TestWorld", "TestDynamism", "TestKeyClaims", "TestPacks", "TestKeyboard"):
    # TestPacks: the folders of the download are loaded by Core/Packs.lua like in the client (#85, #101)
    lt, nst = load_addon(packs="lazy" if name == "TestPacks" else "all")
    # un'installazione nuova parte in inglese (#132); i test dei testi sono scritti in italiano, quindi la lingua si
    # imposta a "it" come farebbe un utente. TestConfig prova invece il predefinito, senza toccare la lingua.
    if name not in ("TestConfig", "TestPacks"):
        nst.db.locale = "it"
    if name == "TestScale":
        # R1: il generatore dell'archivio sintetico (solo per i test, mai nel .toc)
        run_file(lt, os.path.join(HERE, "SyntheticArchive.lua"), "SyntheticArchive.lua")
    run_file(lt, os.path.join(HERE, name + ".lua"), name + ".lua", nst)
    t = lt.globals().T
    print(f"  {name}: {t.passed} superati, {t.failed} falliti")
    for f in t.failures.values():
        check(False, f"{name}: {f}")

# 9a) M2 repetition metrics of a simulated session (R3: #89, #90, #91, Tests/bench_m2.py): 3 hours, two characters,
# three seeds, through the real Narrative Director. Targets of the roadmap R3: same theme consecutively under 15%,
# the frames "says" and "murmurs" under 10% of the framed interventions; combat under its quota of 40% (with a margin)
print("\nM2 (simulated session)")
sys.path.insert(0, HERE)
import bench_m2  # noqa: E402
m2 = bench_m2.session_metrics(ADDON, hours=3, seeds=(1, 2, 3))
print("  " + ", ".join(f"{k} {round(v, 2)}" for k, v in m2.items() if not isinstance(v, dict)))
print("  categories:", m2["category_pct"])
check(m2["same_theme_pct"] < 15, f"M2: same theme consecutively under 15% ({m2['same_theme_pct']:.1f}%)")
check(m2["says_murmurs_pct"] < 10, f"M2: 'says' and 'murmurs' under 10% of the frames ({m2['says_murmurs_pct']:.1f}%)")
check(m2["category_pct"].get("combat", 0) < 45, f"M2: combat under its quota ({m2['category_pct'].get('combat', 0)}%)")
check(m2["category_pct"].get("exploration", 0) > 0, "M2: exploration speaks")
check(m2["pick_mean_ms"] < 2, f"M2: PickEntry stays fast ({m2['pick_mean_ms']:.2f} ms)")

# 9a-bis) scenario M6 of the analysis A1 (R4: #97, #98, Tests/scenario_return.py): enter Elwynn, die, come back. No
# cheerful or ironic return line for a neutral or a cheerful character; gallows humour only for an ironic one
import scenario_return  # noqa: E402
for profile in ("neutral", "traveler"):
    m6 = scenario_return.run(ADDON, profile, 10, "en")
    check(m6["last_visit_bad"] == 10, f"M6 {profile}: the last visit ended badly in every run")
    check(m6["light_spoken"] == 0 and m6["light_weight_share"] == 0,
          f"M6 {profile}: no light return line after a death ({m6['light_spoken']}, {m6['light_weight_share']:.1%})")

# 9b) language and regional packs from a saved Italian installation (#85, #101): only Italian is loaded, the region
# of the character is built, and the memory is lower than with everything loaded
print("\nPACCHETTI DI LINGUA E REGIONALI")
pl, pn = load_addon('{schemaVersion=7,settings={locale="it"}}', with_example=False, packs="lazy", zone="Elwynn Forest")
loads_ = [c.name for c in pl.globals().LOAD_CALLS.values()]
print("  LoadAddOn:", ", ".join(loads_))
check("AzerothUnspoken_itIT" in loads_ and "AzerothUnspoken_enUS" not in loads_, "solo la cartella italiana è caricata")
check(loads_ == ["AzerothUnspoken_itIT", "AzerothUnspoken_EasternKingdoms", "AzerothUnspoken_EasternKingdoms_itIT"],
      "lingua all'avvio, poi la regione del personaggio (regole e testi in italiano)")
by_lang = pl.eval("""function()
    local it, en = 0, 0
    for _, p in pairs(AzerothUnspoken.Engine.byId) do
        if p.text.it and #p.text.it > 0 then it = it + 1 end
        if p.text.en and #p.text.en > 0 then en = en + 1 end
    end
    return it, en
end""")()
check(by_lang[0] > 900 and by_lang[1] == 0, f"frasi con testo italiano {by_lang[0]}, inglese {by_lang[1]}")
check(pn.Engine.byId["zone.elwynn.01"] is not None and pn.Engine.byId["zone.durotar.01"] is None,
      "frasi di Elwynn sì, di Durotar no")
check(not list(pn.Diagnostics.errors.values()), "nessun errore all'avvio con le cartelle caricate su richiesta")
mem_ = "function() collectgarbage('collect'); collectgarbage('collect'); return collectgarbage('count') end"
mem_lazy = pl.eval(mem_)()
pa, _ = load_addon(with_example=False)
mem_all = pa.eval(mem_)()
pnone, _ = load_addon(with_example=False, packs="none")
mem_none = pnone.eval(mem_)()
print(f"  memoria Lua: base senza cartelle {mem_none / 1024:.2f} MB, una lingua e una regione {mem_lazy / 1024:.2f} MB, "
      f"tutto {mem_all / 1024:.2f} MB")
check(mem_none < mem_lazy < mem_all, "una lingua costa meno di due")

# 9a) proiezione di scala ridotta (R1, #83 #84): un archivio sintetico di 2.000 regole. I tempi si stampano soltanto
# (dipendono dalla macchina); la memoria per regola è un controllo. Le misure complete (10.000 e 50.000 regole) si
# lanciano a mano: python -I -X utf8 Tests/bench_scale.py
print("\nPROIEZIONE DI SCALA (2.000 regole sintetiche; complete: Tests/bench_scale.py)")
sys.path.insert(0, HERE)
import bench_scale  # noqa: E402
proj = bench_scale.measure(ADDON, 2000, 150, 1, 0.6)
print(f"  caricamento {proj['load_s']:.2f} s, memoria {proj['memory_kb'] / 1024:.1f} MB, {proj['per_entry_b']:.0f} B per regola, "
      f"scelta {proj['pick_mean_ms']:.2f} ms (p95 {proj['pick_p95_ms']:.2f} ms)")
check(proj["found"] == proj["picks"], "proiezione: ogni scelta trova una frase")
# prima di R1 una regola costava circa 4.900 B in questa misura (#84 chiede almeno il 22% in meno)
check(proj["per_entry_b"] < 2500, f"proiezione: memoria per regola sotto 2.500 B ({proj['per_entry_b']:.0f})")
# #157: the Lua instructions per pick do not depend on the machine, so a regression shows in the PR that causes it. A
# warning, not a failure: new content changes the number too. After a deliberate change, update the baseline.
with open(os.path.join(HERE, "perf_baseline.json"), encoding="utf-8") as f:
    perf_base = json.load(f)
ki, ki_base = proj["pick_kinstr"], perf_base["pick_kinstr_2000"]
print(f"  istruzioni Lua per scelta: {ki:.1f} mila (p95 {proj['pick_p95_kinstr']:.1f}); riferimento {ki_base:.1f} mila "
      "(Tests/perf_baseline.json)")
if ki > ki_base * perf_base["warn_ratio"]:
    print(f"  WARNING: a pick costs {ki / ki_base:.0%} of the baseline: check the change with Tests/bench_scale.py "
          "--archive-dir (#157)")

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
check(lua3.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 7, "memoria: schema 7 dopo il caricamento")
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
# story notices enter the history too (#177): the cascade check counts the lines only
hist = [e for e in ns3.Narrator.history.values() if not e.notice]
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
check(lua4.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 7, "memoria: dati rovinati migrati")
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
    R:SetFeelings("player", "Aldric-Stormrage", { "gratitude" })
    R:Observe("Aldric-Stormrage", "group")
    R:Observe("Aldric-Stormrage", "group_combat")
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
check(rl2.eval("function() return AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].user.note end")() == "Mi ha salvato la vita", "relazioni: la nota dopo /reload")
check(rl2.eval("function() return AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].user.label end")() == "fratello di spada", "relazioni: l'etichetta scelta dopo /reload")
check(rl2.eval("function() return AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].user.feeling[1] end")() == "gratitude", "relazioni: il sentimento scelto dopo /reload")
check(rl2.eval("function() return AzerothUnspokenCharacterDB.relationships.version end")() == 5, "relazioni: versione 5 dopo /reload")
check(rl2.eval("function() local s = AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].seen; return s.count == 1 and s.kinds.group == 1 and s.kinds.group_combat == 1 and #s.facts == 2 and s.last > 0 end")(), "relazioni: le osservazioni (incontri per tipo e fatti) dopo /reload")
check(rl2.eval("function() return AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].trust end")() is None, "relazioni: nessun campo piatto in un giocatore")
check(rl2.eval("function() return next(AzerothUnspoken.Relationships.candidates) end")() is None, "relazioni: le proposte non sopravvivono alla sessione")
check(not list(rn2.Diagnostics.errors.values()), "relazioni: nessun errore dopo /reload")

# b) quaranta giorni dopo: la familiarità dell'NPC cala lentamente, il giocatore dell'utente non cambia
rl3, rn3 = load_addon(saved_global_r, saved_char_r, with_example=False, epoch=epoch_r + 40 * 86400, zone="Durotar")
fam3 = rl3.eval("function() return AzerothUnspokenCharacterDB.relationships.npcs[1234].familiarity end")()
check(fam3 is not None and 0 < npc_fam - fam3 < 20, f"relazioni: la familiarità dell'NPC cala con i giorni ({npc_fam} -> {fam3})")
check(rl3.eval("function() return AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].user.axes.familiarity end")() == 40, "relazioni: un giocatore dell'utente non decade")
check(rl3.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 7, "relazioni: schema 7")
rl3.globals().P.target = rl3.eval("{ name = 'Aldric', realm = 'Stormrage', player = true, guid = 'Player-1-0000AAAA' }")
ctx_label = rl3.eval("function() return AzerothUnspoken:BuildContext().relationLabel end")()
check(ctx_label == "fratello di spada", "relazioni: dopo /reload il contesto usa l'etichetta scelta")

# c) un file di un personaggio con dati rovinati parte lo stesso
rl4, rn4 = load_addon(saved_global_r, '{schemaVersion=4,relationships={npcs="x",players={[5]=1}}}', with_example=False)
check(rl4.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 7, "relazioni: dati rovinati migrati")
check(not any("relations" in str(e.message) for e in rn4.Diagnostics.errors.values()), "relazioni: dati rovinati senza errori fatali")

# d) un file scritto con relationships.version 1 (giocatori piatti) si migra all'avvio nei due blocchi (#107)
v1_char = ("{schemaVersion=7,relationships={version=1,npcs={[1234]={first=1,last=2,count=3,familiarity=40,name='Pip'}},"
           "players={['Aldric-Stormrage']={first=100,last=200,count=4,source='user',trust=55,affection=45,familiarity=40,"
           "note='Mi ha salvato la vita',label='fratello di spada',tags={'gilda'},role='innkeeper',roleSource='user'},"
           "['Brenna-Stormrage']={first=5,last=6,count=1,source='auto'}}}}")
rl5, rn5 = load_addon(saved_global_r, v1_char, with_example=False, zone="Durotar")
def rel5(expr):
    return rl5.eval("function() local d = AzerothUnspokenCharacterDB.relationships; return " + expr + " end")()
check(rel5("d.version") == 5, "relazioni: un file di versione 1 passa alla versione attuale (5)")
check(rel5("d.players['Aldric-Stormrage'].user.axes.trust") == 55 and rel5("d.players['Aldric-Stormrage'].user.axes.affection") == 45, "relazioni v1: gli assi sono in user.axes")
check(rel5("d.players['Aldric-Stormrage'].user.note") == "Mi ha salvato la vita" and rel5("d.players['Aldric-Stormrage'].user.label") == "fratello di spada", "relazioni v1: nota ed etichetta in user")
check(rel5("d.players['Aldric-Stormrage'].user.tags[1]") == "gilda" and rel5("d.players['Aldric-Stormrage'].user.role") == "innkeeper", "relazioni v1: tag e ruolo in user")
check(rel5("d.players['Aldric-Stormrage'].seen.count") == 4 and rel5("d.players['Aldric-Stormrage'].seen.first") == 100 and rel5("d.players['Aldric-Stormrage'].seen.last") == 200, "relazioni v1: first, last e count in seen")
check(rel5("d.players['Aldric-Stormrage'].trust") is None and rel5("d.players['Aldric-Stormrage'].count") is None, "relazioni v1: nessun campo piatto rimasto")
check(rel5("d.players['Brenna-Stormrage'].source") == "auto" and rel5("d.npcs[1234].user") is None and rel5("d.npcs[1234].count") == 3, "relazioni v1: la fonte resta e gli NPC restano piatti")
rl5.globals().P.target = rl5.eval("{ name = 'Aldric', realm = 'Stormrage', player = true, guid = 'Player-1-0000AAAA' }")
check(rl5.eval("function() return AzerothUnspoken:BuildContext().relationLabel end")() == "fratello di spada", "relazioni v1: dopo la migrazione il contesto usa l'etichetta scelta")
check(not any("relations" in str(e.message) for e in rn5.Diagnostics.errors.values()), "relazioni v1: nessun errore")
# la versione 2 salvata di nuovo resta uguale (la migrazione non si ripete)
saved5 = rl5.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
rl6, rn6 = load_addon(saved_global_r, saved5, with_example=False, zone="Durotar")
check(rl6.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB.relationships) end")() == rl5.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB.relationships) end")(), "relazioni v1: salvato e ricaricato, resta uguale")
# un file di una versione piu nuova resta in sola lettura e intatto
newer = "{schemaVersion=7,relationships={version=6,npcs={},players={['Eve-Stormrage']={user={future=true},seen={first=1},nickname='x'}}}}"
rl7, rn7 = load_addon(saved_global_r, newer, with_example=False)
check(rl7.eval("function() return AzerothUnspoken.Relationships.readOnly end")() is True and rl7.eval("function() return AzerothUnspokenCharacterDB.relationships.players['Eve-Stormrage'].nickname end")() == "x", "relazioni v6: sola lettura, dati intatti")

# e) the list shared in the account (R4b2, #114, ADR 0030): in the account file, never in the character's, kept when the
# option is off, and shared with another character of the same account
rs1, rsn1 = load_addon(with_example=False, zone="Durotar")
rs1.execute("""
    local R = AzerothUnspoken.Relationships
    R:AddPlayer('Aldric-Stormrage', 'user'); R:SetNote('player', 'Aldric-Stormrage', 'Mine before sharing'); R:SetAxis('player', 'Aldric-Stormrage', 'trust', 60)
    R:StartSharing(); ADVANCE(3); R:StartSharing()
    R:AddPlayer('Brenna-Stormrage', 'user'); R:SetNote('player', 'Brenna-Stormrage', 'Shared note'); R:SetAxis('player', 'Brenna-Stormrage', 'respect', 55)
    R:Observe('Brenna-Stormrage', 'group')
    assert(R:ShareAll() == 1)
""")
saved_char_s = rs1.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
saved_global_s = rs1.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
epoch_s = rs1.globals().FAKE_EPOCH
check("sharedPlayers" in saved_global_s and "Shared note" in saved_global_s and "Mine before sharing" in saved_global_s, "lista condivisa: le scelte sono nel file dell'account")
check("Shared note" not in saved_char_s and "Mine before sharing" not in saved_char_s, "lista condivisa: le scelte condivise non restano nel file del personaggio")
check("Brenna-Stormrage" in saved_char_s, "lista condivisa: il personaggio tiene le sue osservazioni")
def shr(lua_rt, expr):
    return lua_rt.eval("function() local R = AzerothUnspoken.Relationships; return " + expr + " end")()
rs2, rsn2 = load_addon(saved_global_s, saved_char_s, with_example=False, epoch=epoch_s + 60, zone="Durotar")
check(shr(rs2, "R:Sharing()") is True and shr(rs2, "R:Get('player', 'Brenna-Stormrage').user.note") == "Shared note", "lista condivisa: dopo /reload le scelte e l'opzione ci sono")
check(shr(rs2, "R:Get('player', 'Aldric-Stormrage').user.axes.trust") == 60 and shr(rs2, "R:ScopeOf('Aldric-Stormrage')") == "shared", "lista condivisa: la migrazione (ShareAll) sopravvive a /reload")
check(shr(rs2, "R:Get('player', 'Brenna-Stormrage').seen.count") == 1, "lista condivisa: le osservazioni restano del personaggio")
check(not list(rsn2.Diagnostics.errors.values()), "lista condivisa: nessun errore dopo /reload")
# another character of the same account: the account file with a new character file
rs3, rsn3 = load_addon(saved_global_s, None, with_example=False, epoch=epoch_s + 120, zone="Durotar")
check(shr(rs3, "R:IsListed('Brenna-Stormrage') and R:IsListed('Aldric-Stormrage')") is True, "lista condivisa: un altro personaggio vede le persone dell'account")
check(shr(rs3, "R:Get('player', 'Brenna-Stormrage').user.note") == "Shared note" and shr(rs3, "R:Get('player', 'Brenna-Stormrage').seen.count") == 0, "lista condivisa: vede le scelte, non le osservazioni")
check(shr(rs3, "next(AzerothUnspokenCharacterDB.relationships.players)") is None, "lista condivisa: non ha record propri finche' non incontra qualcuno")
# the option off in the account: nothing is deleted, nothing is listed from it
rs2.execute("AzerothUnspoken.Relationships:StopSharing()")
saved_global_off = rs2.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
rs4, rsn4 = load_addon(saved_global_off, None, with_example=False, epoch=epoch_s + 180, zone="Durotar")
check(shr(rs4, "R:Sharing()") is False and shr(rs4, "R:IsListed('Brenna-Stormrage')") is False, "lista condivisa: spenta, non elenca nessuno")
check(rs4.eval("function() return AzerothUnspokenDB.sharedPlayers.players['Brenna-Stormrage'].user.note end")() == "Shared note", "lista condivisa: spenta, i dati dell'account restano")
# a file of a newer version is left alone
rs1.execute("AzerothUnspokenDB.sharedPlayers.version = 9")
newer_g = rs1.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
rs5, rsn5 = load_addon(newer_g, None, with_example=False)
check(shr(rs5, "R.sharedReadOnly") is True and shr(rs5, "R:Sharing()") is False, "lista condivisa: una versione piu' nuova non si usa")
check(rs5.eval("function() return AzerothUnspokenDB.sharedPlayers.version end")() == 9 and shr(rs5, "AzerothUnspokenDB.sharedPlayers.players['Brenna-Stormrage'].user.note") == "Shared note", "lista condivisa: una versione piu' nuova resta intatta")
print("  ok" if not FAILURES else "")


# 9c-bis) SavedVariables of every age: newer versions untouched, lost versions, chained migrations (Q9b, #154, #155, #156)
print("\nSAVED DATA: NEWER VERSIONS, LOST VERSIONS, MIGRATIONS FROM SCHEMA 0 (/reload simulato)")
def ser(lua_rt, expr):
    return lua_rt.eval("function() return SERIALIZE(" + expr + ") end")()

def lit(lua_rt, text):
    """What SERIALIZE gives for a literal table, to compare a saved section with the input without reading it field by field."""
    return ser(lua_rt, text)

def errors_of(addon_ns):
    return [str(e.message) for e in addon_ns.Diagnostics.errors.values()]

SAVED_EPOCH = 1700000000

# a) personality and emotion written by a newer version stay exactly as they are, through a second load too
personality_v3 = "{version=3,archetype='futurist',base='futurist',traits={idealism=70,resolve=80,avoid={death=true,spiders=true}}}"
emotion_v2 = "{version=2,values={nostalgic={v=0.9,at=100,extra='x'}},newField=true}"
newer_pe = "{schemaVersion=7,personality=" + personality_v3 + ",emotion=" + emotion_v2 + "}"
ln1, nn1 = load_addon(saved_global_r, newer_pe, with_example=False, packs="none", epoch=SAVED_EPOCH)
check(ln1.eval("function() return AzerothUnspoken.Personality.readOnly end")() is True, "personality v3: read-only")
check(ln1.eval("function() return AzerothUnspoken.Emotion.readOnly end")() is True, "emotion v2: read-only")
check(ser(ln1, "AzerothUnspokenCharacterDB.personality") == lit(ln1, personality_v3), "personality v3: the saved data is exactly as it was")
check(ser(ln1, "AzerothUnspokenCharacterDB.emotion") == lit(ln1, emotion_v2), "emotion v2: the saved data is exactly as it was")
ln1.execute("""
    local P, E = AzerothUnspoken.Personality, AzerothUnspoken.Emotion
    P:SetTrait('irony', 10); P:SetArchetype('neutral'); P:ToggleTopic('death'); P:SetTRP3Consent(true)
    E:Add('melancholic', 0.9); E:Persist(); E:Reset()
    AzerothUnspoken.Director:Offer('death')
""")
ln1.globals().ADVANCE(5)
check(ser(ln1, "AzerothUnspokenCharacterDB.personality") == lit(ln1, personality_v3), "personality v3: a session of trying to change it leaves it as it was")
check(ser(ln1, "AzerothUnspokenCharacterDB.emotion") == lit(ln1, emotion_v2), "emotion v2: a session with a death leaves it as it was")
check(any("personality.version 3 > 2" in m for m in errors_of(nn1)) and any("emotion.version 2 > 1" in m for m in errors_of(nn1)),
      "newer module versions: diagnostics say read-only")
saved_n1 = ln1.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
ln2, nn2 = load_addon(saved_global_r, saved_n1, with_example=False, packs="none", epoch=SAVED_EPOCH)
check(ln2.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")() == saved_n1, "newer module versions: the second load is identical")

# b) a lost or damaged schemaVersion does not convert a version 2 personality again
for lost in ("nil", "-1", "1e309", "0/0"):
    sv = "" if lost == "nil" else "schemaVersion=" + lost + ","
    lost_char = ("{" + sv + "personality={version=2,archetype='custom',legacy={temperament='stoic'},"
                 "traits={stoicism=95,irony=40},trp3=false}}")
    ll, ln_ = load_addon(saved_global_r, lost_char, with_example=False, packs="none", epoch=SAVED_EPOCH)
    check(ll.eval("function() return AzerothUnspokenCharacterDB.personality.traits.stoicism end")() == 95, f"schemaVersion {lost}: the edited intensity stays")
    check(ll.eval("function() return AzerothUnspokenCharacterDB.personality.legacy.temperament end")() == "stoic", f"schemaVersion {lost}: the legacy choice stays")
    check(ll.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 7, f"schemaVersion {lost}: the schema is written again")
    check(ll.eval("function() return AzerothUnspoken.Config.readOnly.character end")() is False, f"schemaVersion {lost}: not read-only")

# c) a chained migration from schema 0 to the current one, with partial and damaged inputs; the second load is idempotent
def corrupt_global(schema):
    if schema <= 1:
        settings = "{output={mode='say',autoPublicSay=true},intensity=61,locale='en'}"
    else:
        settings = "{chat={mode='AUTO_ONLY_IF_ALLOWED'},output={autoPublicSay=true},intensity=61,locale='en'}"
    return "{schemaVersion=" + str(schema) + ",settings=" + settings + "}"

def corrupt_char(schema):
    sv = "" if schema is None else "schemaVersion=" + str(schema) + ","
    return ("{" + sv + "memory='junk',"
            "personality={version=1,archetype=5,traits={temperament='gruff',irony=150,avoid={death=true,bogus=true}},trp3='yes'},"
            "memories={},"
            "relationships={version=1,npcs='x',players={['Aldric-Stormrage']={first=1e18,last=1e19,count=1e300,source='user',note='kept',trust=55,tags='x'},bad=5}},"
            "arcs={},"
            "emotion={version=1,values={nostalgic={v=7,at=1e15,junk='xxxx'},bored={v=1,at=1}}}}")

for schema in range(0, 7):
    label = f"schema {schema}"
    lm1, nm1 = load_addon(corrupt_global(schema), corrupt_char(schema), with_example=False, packs="none", epoch=SAVED_EPOCH)
    def c1(expr, rt=lm1):
        return rt.eval("function() return " + expr + " end")()
    check(c1("AzerothUnspokenDB.schemaVersion") == 7 and c1("AzerothUnspokenCharacterDB.schemaVersion") == 7, f"{label}: both files reach schema 7")
    if schema <= 1:
        check(c1("AzerothUnspokenDB.settings.chat.mode") == "CONFIRM_TO_SEND" and c1("AzerothUnspokenDB.settings.output.autoPublicSay") is False,
              f"{label}: output.mode becomes chat.mode, with no automatic public chat")
    else:
        check(c1("AzerothUnspokenDB.settings.chat.mode") == "AUTO_ONLY_IF_ALLOWED" and c1("AzerothUnspokenDB.settings.output.autoPublicSay") is True,
              f"{label}: a consent already given is not taken back")
    check(c1("AzerothUnspokenDB.settings.intensity") == 61, f"{label}: the settings are kept")
    check(c1("AzerothUnspokenCharacterDB.personality.version") == 2 and c1("AzerothUnspokenCharacterDB.personality.traits.altruism") == 25,
          f"{label}: the version 1 personality is converted")
    check(c1("AzerothUnspokenCharacterDB.personality.traits.irony") == 100 and c1("AzerothUnspokenCharacterDB.personality.traits.avoid.bogus") is None
          and c1("AzerothUnspokenCharacterDB.personality.traits.avoid.death") is True, f"{label}: personality values are cleaned")
    check(c1("AzerothUnspokenCharacterDB.personality.archetype") == "custom" and c1("AzerothUnspokenCharacterDB.personality.trp3") is False,
          f"{label}: a damaged archetype and consent give a coherent profile")
    check(c1("AzerothUnspokenCharacterDB.relationships.version") == 5 and c1("AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].user.axes.trust") == 55
          and c1("AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].user.note") == "kept", f"{label}: the player record is migrated with its choices")
    check(c1("AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].seen.last") <= SAVED_EPOCH
          and c1("AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].seen.first") <= SAVED_EPOCH,
          f"{label}: times in the future are brought back")
    check(c1("AzerothUnspokenCharacterDB.relationships.players['Aldric-Stormrage'].seen.count") == 1000000, f"{label}: a huge counter is capped")
    check(c1("AzerothUnspokenCharacterDB.relationships.players.bad") is None, f"{label}: a damaged record is dropped")
    check(c1("AzerothUnspokenCharacterDB.emotion.values.nostalgic.v") == 1 and c1("AzerothUnspokenCharacterDB.emotion.values.nostalgic.at") <= SAVED_EPOCH
          and c1("AzerothUnspokenCharacterDB.emotion.values.nostalgic.junk") is None and c1("AzerothUnspokenCharacterDB.emotion.values.bored") is None,
          f"{label}: the emotion is rebuilt")
    check(c1("type(AzerothUnspokenCharacterDB.memory)") == "table" and c1("AzerothUnspokenCharacterDB.memory.uses") is not None, f"{label}: a damaged memory is replaced")
    check(not any(str(e.module).startswith(("migrate", "init")) for e in nm1.Diagnostics.errors.values()), f"{label}: no migration or start-up error")
    saved_g1 = lm1.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
    saved_c1 = lm1.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
    lm2, nm2 = load_addon(saved_g1, saved_c1, with_example=False, packs="none", epoch=SAVED_EPOCH)
    check(lm2.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")() == saved_c1, f"{label}: the second load of the character file is identical")
    check(lm2.eval("function() return SERIALIZE(AzerothUnspokenDB) end")() == saved_g1, f"{label}: the second load of the account file is identical")
    check(not errors_of(nm2) or all("brought back" not in m and "dropped" not in m for m in errors_of(nm2)), f"{label}: the second load has nothing left to clean")

# the same damaged character file with no schemaVersion at all (lost): it goes through every migration and ends the same way
lm3, nm3 = load_addon(corrupt_global(0), corrupt_char(None), with_example=False, packs="none", epoch=SAVED_EPOCH)
check(lm3.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 7, "a character file without schemaVersion reaches schema 7")
saved_c3 = lm3.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
lm4, nm4 = load_addon(lm3.eval("function() return SERIALIZE(AzerothUnspokenDB) end")(), saved_c3, with_example=False, packs="none", epoch=SAVED_EPOCH)
check(lm4.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")() == saved_c3, "and its second load is identical")
print("  ok" if not FAILURES else "")

# 9d) persistenza dei dialoghi ambientali (S8): i flag e il ricordo sopravvivono a /reload, il dialogo no
print("\nPERSISTENZA DEI DIALOGHI AMBIENTALI (/reload simulato)")
dl1, dn1 = load_addon(with_example=False, zone="Elwynn Forest")
dg1 = dl1.globals()
dg1.P.npc = dl1.eval("{ name = 'Innkeeper Farley', guid = 'Creature-0-3134-0-6-295-0000A2E9A1', sex = 2, reaction = 5 }")
dg1.ADVANCE(20)
dg1.FIRE("GOSSIP_SHOW")
check(dl1.eval("function() return AzerothUnspoken.NPCAlive.state end")() == "offered", "dialoghi: l'offerta compare dal gossip di un NPC del registro")
dl1.execute("""
    local N = AzerothUnspoken.NPCAlive
    N:Open()
    _G.FIRST_LINE = N.session.line.text
    N:Choose(1)    -- «Che notizie corrono?»
    N:Choose(1)    -- «Dimmi di più.»
    _G.SECOND_LINE = N.session.line.text
    N:Close()
""")
first_line, second_line = dg1.FIRST_LINE, dg1.SECOND_LINE
check(dl1.eval("function() return AzerothUnspoken.LivingMemory:HasFlag('npcd_innkeeper_asked_news') end")(), "dialoghi: il flag è impostato")
saved_char_d = dl1.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
saved_global_d = dl1.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
epoch_d = dg1.FAKE_EPOCH
check("npcd_innkeeper_asked_news" in saved_char_d and "npcd_innkeeper_asked_more" in saved_char_d, "dialoghi: i flag sono nelle SavedVariables")
check("npc_talk" in saved_char_d, "dialoghi: il ricordo della chiacchierata è salvato")
check(first_line not in saved_char_d and second_line not in saved_char_d, "dialoghi: nessuna battuta è salvata")
check("Farley" not in saved_char_d.replace("Innkeeper Farley", ""), "dialoghi: il nome non è nel ricordo")
dl2, dn2 = load_addon(saved_global_d, saved_char_d, with_example=False, epoch=epoch_d + 120, zone="Elwynn Forest")
check(dl2.eval("function() return AzerothUnspoken.LivingMemory:HasFlag('npcd_innkeeper_asked_news') end")(), "dialoghi: il flag dopo /reload")
check(dl2.eval("function() return AzerothUnspoken.LivingMemory:HasFlag('npcd_innkeeper_asked_more') end")(), "dialoghi: il secondo flag dopo /reload")
check(dl2.eval("function() return AzerothUnspoken.NPCAlive.state end")() == "idle", "dialoghi: dopo /reload nessun dialogo in corso")
check(not dl2.eval("function() return AzerothUnspoken.DialogueFrame:GetFrame():IsShown() end")(), "dialoghi: la finestra è chiusa")
check(dl2.eval("function() return AzerothUnspokenCharacterDB.relationships.npcs[295].talks end")() == 1, "dialoghi: la conversazione è contata nella relazione")
dl2.globals().P.npc = dl2.eval("{ name = 'Innkeeper Farley', guid = 'Creature-0-3134-0-6-295-0000A2E9A1', sex = 2, reaction = 5 }")
again = dl2.eval("""function()
    local NS = AzerothUnspoken
    local ctx = NS:BuildContext({ npcDialogue = true, otherSubject = { kind = 'npc', key = 'npc:295', npcID = 295 },
        relationSubject = { kind = 'npc', id = 295 } })
    local found = false
    for _, p in ipairs(NS.Engine:Eligible(NS.Engine.byEvent.npcd_innkeeper_open, 'it', ctx, 'say', time())) do
        if p.id == 'npcd.innkeeper.open.again1' then found = true end
    end
    return found
end""")()
check(again, "dialoghi: dopo /reload l'NPC ricorda che gli hai già chiesto le notizie")
check(not any("npc" in str(e.message).lower() and "dialog" in str(e.message).lower() for e in dn2.Diagnostics.errors.values()),
      "dialoghi: nessun errore dopo /reload")
# un dialogo di prova non lascia traccia
dl3, dn3 = load_addon(with_example=False, zone="Elwynn Forest")
dl3.execute("local N = AzerothUnspoken.NPCAlive; N:Start(N:TestWho()); N:Choose(1); N:Choose(1); N:Close()")
saved_char_t = dl3.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
check('["flags"]={}' in saved_char_t and "npc_talk" not in saved_char_t and "asked_news" not in saved_char_t,
      "dialoghi: l'NPC di prova non scrive flag né ricordi")
print("  ok" if not FAILURES else "")

# 9e) persistenza degli archi (S9): lo stato, la scelta in attesa, la scelta fatta e il ricordo sopravvivono a /reload
print("\nPERSISTENZA DEGLI ARCHI (/reload simulato)")
def arc_state(lua_, id_):
    return lua_.eval("function() return AzerothUnspoken.StoryArcs:State('%s') end" % id_)()
def arc_item(lua_, id_, field):
    return lua_.eval("function() local i = AzerothUnspoken.StoryArcs:Item('%s'); return i and i.%s end" % (id_, field))()
ar1, an1 = load_addon(with_example=False, zone="Durotar")
ag1 = ar1.globals()
ag1.ADVANCE(8)
check(arc_state(ar1, "path") == "DISCOVERED", "archi: il sentiero si apre entrando in Durotar da orco di livello 30")
ag1.ADVANCE(130)
ar1.execute("AzerothUnspoken.StoryArcs:Fire('zone')")
check(arc_item(ar1, "path", "pending") is not None, "archi: la scelta aspetta il giocatore")
saved_char_a = ar1.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
saved_global_a = ar1.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
epoch_a = ag1.FAKE_EPOCH
check("arc_path_discovered" in saved_char_a, "archi: il flag dello stato è nelle SavedVariables")
check('["arcs"]' in saved_char_a and '["path"]' in saved_char_a, "archi: lo stato dell'arco è salvato")
# /reload: tutto com'era, nessuna battuta ripetuta
ar2, an2 = load_addon(saved_global_a, saved_char_a, with_example=False, epoch=epoch_a + 30, zone="Durotar")
ag2 = ar2.globals()
ag2.ADVANCE(8)
check(arc_state(ar2, "path") == "DISCOVERED", "archi: dopo /reload lo stato è lo stesso")
check(arc_item(ar2, "path", "pending") is not None, "archi: dopo /reload la scelta aspetta ancora")
check(ar2.eval("function() return AzerothUnspoken.StoryArcs.readOnly end")() is False, "archi: dopo /reload non sono in sola lettura")
check(ar2.eval("function() local n = 0; for _, e in ipairs(AzerothUnspoken.Director.log) do if e.event:find('^arc_') then n = n + 1 end end; return n end")() == 0,
      "archi: dopo /reload nessuna battuta ripetuta")
check(ar2.eval("function() return AzerothUnspoken.StoryArcs:ActiveCount() end")() == 1, "archi: dopo /reload un arco attivo")
check(ar2.eval("function() return (AzerothUnspoken.StoryArcs:Choose('path', 'gratitude')) end")() is True, "archi: la scelta dopo /reload")
saved_char_b = ar2.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
saved_global_b = ar2.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
epoch_b = ag2.FAKE_EPOCH
# un secondo /reload: la scelta fatta resta, e la chiusura arriva uscendo dalla zona (dopo l'attesa)
ar3, an3 = load_addon(saved_global_b, saved_char_b, with_example=False, epoch=epoch_b + 300, zone="Durotar")
ag3 = ar3.globals()
ag3.ADVANCE(8)
check(arc_state(ar3, "path") == "REFLECTED", "archi: l'arco meditato dopo un secondo /reload")
check(ar3.eval("function() return AzerothUnspoken.StoryArcs:Item('path').choices.reflect end")() == "gratitude", "archi: la scelta del giocatore è salvata")
ag3.P.zone = "Westfall"
ag3.FIRE("ZONE_CHANGED_NEW_AREA")
ag3.ADVANCE(8)
check(arc_state(ar3, "path") == "RESOLVED", "archi: uscendo dalla zona l'arco si chiude")
saved_char_c = ar3.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
saved_global_c = ar3.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
epoch_c = ag3.FAKE_EPOCH
check('"story"' in saved_char_c and "path" in saved_char_c, "archi: il ricordo di chiusura è salvato")
check(ar3.eval("function() local e = AzerothUnspokenCharacterDB.memories.entries; for _, x in ipairs(e) do if x.kind == 'story' then return x.perm == true end end end")() is True,
      "archi: il ricordo è permanente")
text_it = ar3.eval("function() return AzerothUnspoken.StoryArcs.texts.path.it.title end")()
check(text_it not in saved_char_c, "archi: nessun testo dell'arco nelle SavedVariables")
# dopo la chiusura un /reload non riapre né ripete nulla, anche tornando nella zona di partenza
ar4, an4 = load_addon(saved_global_c, saved_char_c, with_example=False, epoch=epoch_c + 86400, zone="Durotar")
ag4 = ar4.globals()
ag4.ADVANCE(8)
check(arc_state(ar4, "path") == "RESOLVED", "archi: un arco concluso resta concluso dopo /reload e un ritorno nella zona")
check(ar4.eval("function() return AzerothUnspoken.StoryArcs:Context().done.path end")() is True, "archi: ctx.arcs lo sa")
check(not list(an4.Diagnostics.errors.values()), "archi: nessun errore dopo /reload")
# saltare e sospendere restano dopo /reload e non si riprendono da soli
ar5, an5 = load_addon(with_example=False, zone="Durotar")
ag5 = ar5.globals()
ag5.ADVANCE(8)
ar5.execute("AzerothUnspoken.StoryArcs:Skip('path')")
saved_char_d = ar5.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
saved_global_d = ar5.eval("function() return SERIALIZE(AzerothUnspokenDB) end")()
ar6, an6 = load_addon(saved_global_d, saved_char_d, with_example=False, epoch=ag5.FAKE_EPOCH + 600, zone="Durotar")
ar6.globals().ADVANCE(8)
check(arc_item(ar6, "path", "mode") == "skipped", "archi: un arco saltato resta saltato dopo /reload")
check(ar6.eval("function() return AzerothUnspoken.StoryArcs:ActiveCount() end")() == 0, "archi: nessun arco attivo")
ar6.execute("AzerothUnspoken.StoryArcs:Resume('path'); AzerothUnspoken.StoryArcs:Suspend('path')")
saved_char_e = ar6.eval("function() return SERIALIZE(AzerothUnspokenCharacterDB) end")()
ar7, an7 = load_addon(saved_global_d, saved_char_e, with_example=False, epoch=ar6.globals().FAKE_EPOCH + 600, zone="Durotar")
ar7.globals().ADVANCE(8)
check(arc_item(ar7, "path", "mode") == "suspended", "archi: un arco sospeso resta sospeso dopo /reload")
# un personaggio dell'epoca precedente (schema 5, segnaposto vuoto) migra senza perdere nulla
ar8, an8 = load_addon(saved_global_d, '{schemaVersion=5,memory={uses={},last={},recent={},lastTone={},variant={}},arcs={},history={}}',
                      with_example=False, zone="Durotar")
check(ar8.eval("function() return AzerothUnspokenCharacterDB.schemaVersion end")() == 7, "archi: migrazione dallo schema 5 al 7")
check(ar8.eval("function() return AzerothUnspokenCharacterDB.arcs.version end")() == 1, "archi: lo stato degli archi nasce dal segnaposto")
ar8.globals().ADVANCE(8)
check(arc_state(ar8, "path") == "DISCOVERED", "archi: dopo la migrazione gli archi si aprono")
print("  ok" if not FAILURES else "")

# 10) funzioni ed eventi usati contro il dump delle API di Forever (saltato con un avviso se il dump non c'è)
print("\nAPI DI FOREVER")
# #165: also the language and regional folders (they have no API calls today: the check keeps it so)
proc = subprocess.run([sys.executable, "-I", "-X", "utf8", os.path.join(HERE, "check_api.py"),
                       os.path.join(ADDON), os.path.join(EXAMPLE), os.path.join(VERSI)] + [os.path.join(ROOT, d) for d in PACKS],
                      capture_output=True, text=True, encoding="utf-8")
print("\n".join("  " + l for l in proc.stdout.rstrip().split("\n")))
if proc.stdout.startswith("SALTATO"):
    print("  AVVISO: controllo delle API saltato (dump non trovato)")
    # in CI (AU_REQUIRE_API=1) un dump mancante è un errore: un controllo saltato non deve passare per verde
    check(not os.environ.get("AU_REQUIRE_API"), "AU_REQUIRE_API: il dump delle API deve esserci (check_api.py è stato saltato)")
else:
    check(proc.returncode == 0, "check_api.py: funzioni ed eventi usati presenti nel dump (o con eccezione motivata)")

# #54: il controllo vede anche funzioni passate come valore, oggetti di FrameXML, metodi dei widget e modelli
if not proc.stdout.startswith("SALTATO"):
    import tempfile
    with tempfile.TemporaryDirectory() as tmp:
        with open(os.path.join(tmp, "Cattivo.lua"), "w", encoding="utf-8", newline="\n") as f_:
            f_.write("local function Flag(fn) return fn end\n"
                     "local a = Flag(UnitIsFooBarBaz)\n"            # funzione di WoW inesistente, passata senza parentesi
                     "local b = NuovoOggettoDiFrameXML\n"           # oggetto globale mai spiegato
                     "local c = CreateFrame('Frame', nil, UIParent, 'ModelloInventatoTemplate')\n"
                     "GameTooltip:MetodoInesistente()\n"
                     "local d = C_Map.FunzioneInesistente\n")
        bad_proc = subprocess.run([sys.executable, "-I", "-X", "utf8", os.path.join(HERE, "check_api.py"), tmp],
                                  capture_output=True, text=True, encoding="utf-8")
    out_ = bad_proc.stdout
    check(bad_proc.returncode == 1, "check_api.py rifiuta un file con usi non spiegati")
    for needle in ("UnitIsFooBarBaz", "NuovoOggettoDiFrameXML", "ModelloInventatoTemplate", "MetodoInesistente",
                   "C_Map.FunzioneInesistente"):
        check("MANCA" in out_ and needle in out_, f"check_api.py segnala {needle}")

# #165: the kinds of use the third review (Q8) found unseen, one mutation each (a typo of a real use)
if not proc.stdout.startswith("SALTATO"):
    with tempfile.TemporaryDirectory() as tmp:
        with open(os.path.join(tmp, "Mutato.lua"), "w", encoding="utf-8", newline="\n") as f_:
            f_.write("local R = {}\n"
                     "R.PROXIMITY_EVENTS = { NAME_PLATE_UNIT_ADDED_TYPO = 'nameplate', UPDATE_MOUSEOVER_UNIT = 'mouseover' }\n"
                     "local PROBES = { { event = 'WEATHER_CHANGED_TYPO' }, { event = 'ZONE_CHANGED' } }\n"
                     "local function OnEvent(_, event) if event == 'PLAYER_ENTERING_WORLD_TYPO' then return end end\n"
                     "local m = _G.MerchantFrameTypo\n"
                     "local g = _G['GossipFrameTypo']\n"
                     "local INVASIVE_FRAMES = { 'CinematicFrameTypo', 'MovieFrame' }\n"
                     "local function Value(id, fn) return id, fn end\n"
                     "Value('player.health', 'UnitHealthTypo')\n"
                     "Value('x', 'C_Nope.UnitHealthMax')\n"
                     "local h = { 'C_Map.GetBestMapForUnitTypo', 'C_Map.GetBestMapForUnit' }\n"
                     "local frame = CreateFrame('Frame')\n"
                     "pcall(frame.RegisterEventTypo, frame, 'ADDON_LOADED')\n"
                     "pcall(frame.RegisterEvent, frame, 'ADDON_LOADED')\n"
                     "local fs = frame:CreateFontString(nil, 'OVERLAY', 'GameFontNormalLargeTypo')\n"
                     "fs:SetFontObject('GameFontNormal')\n")
        mut = subprocess.run([sys.executable, "-I", "-X", "utf8", os.path.join(HERE, "check_api.py"), tmp],
                             capture_output=True, text=True, encoding="utf-8")
    missing_lines = [l for l in mut.stdout.split("\n") if "MANCA" in l]
    check(mut.returncode == 1, "check_api.py rifiuta le mutazioni della #165")
    for needle in ("NAME_PLATE_UNIT_ADDED_TYPO", "WEATHER_CHANGED_TYPO", "PLAYER_ENTERING_WORLD_TYPO", "MerchantFrameTypo",
                   "GossipFrameTypo", "CinematicFrameTypo", "UnitHealthTypo", "C_Nope.UnitHealthMax",
                   "C_Map.GetBestMapForUnitTypo", "RegisterEventTypo", "GameFontNormalLargeTypo"):
        check(any(needle in l for l in missing_lines), f"check_api.py segnala {needle} (#165)")
    for good in ("UPDATE_MOUSEOVER_UNIT", "ZONE_CHANGED", "MovieFrame", "C_Map.GetBestMapForUnit ", "RegisterEvent ",
                 "GameFontNormal "):
        check(not any(good in l + " " for l in missing_lines), f"check_api.py accetta l'uso giusto {good.strip()} (#165)")

# 11) documentazione: gli esempi di PACK_FORMAT.md come pacchetti esterni e i link relativi dei file Markdown
print("\nDOCUMENTAZIONE")
proc = subprocess.run([sys.executable, "-I", "-X", "utf8", os.path.join(HERE, "check_docs.py"), os.path.dirname(ADDON)],
                      capture_output=True, text=True, encoding="utf-8")
print("\n".join("  " + l for l in proc.stdout.rstrip().split("\n") if "  ok  esempio" not in l))
check(proc.returncode == 0, "check_docs.py: esempi della guida ai pacchetti e link relativi validi")

# 11b) pacchetto dei versi (L0, #115): caricato come pacchetto esterno, validatore, voci private, lore_test
print("\nPACCHETTO DEI VERSI")
proc = subprocess.run([sys.executable, "-I", "-X", "utf8", os.path.join(HERE, "check_versi.py"), os.path.dirname(ADDON)],
                      capture_output=True, text=True, encoding="utf-8")
print("\n".join("  " + l for l in proc.stdout.rstrip().split("\n") if not l.startswith("  ok  ")))
check(proc.returncode == 0, "check_versi.py: il pacchetto dei versi si carica, è valido e resta privato")

# 12) regole automatiche (R1): regola dei documenti per le PR, privacy dei file tracciati, forma dei workflow
print("\nREGOLE DEL PROGETTO")
for script in ("check_rules.py", "check_privacy.py", "check_user_block.py"):
    proc = subprocess.run([sys.executable, "-I", "-X", "utf8", os.path.join(HERE, script)],
                          capture_output=True, text=True, encoding="utf-8")
    print("\n".join("  " + l for l in proc.stdout.rstrip().split("\n") if "  ok  " not in l))
    check(proc.returncode == 0, f"{script}: regole del progetto rispettate")

# 13) archivio di scrittura (R2, #87 e #88): round trip cartelle -> archivio -> cartelle a differenza vuota, flusso di
#     revisione, overlay e rapporto di copertura (tools/archive, ADR 0027)
print("\nARCHIVIO DI SCRITTURA")
proc = subprocess.run([sys.executable, "-I", "-X", "utf8", os.path.join(HERE, "check_archive.py")],
                      capture_output=True, text=True, encoding="utf-8")
print("\n".join("  " + l for l in proc.stdout.rstrip().split("\n") if l.strip() and "  ok  " not in l and
                not l.startswith(("warning:", "|", "#", "- ", "`", "State", "Best", "Openings", "eligible"))))
check(proc.returncode == 0, "check_archive.py: round trip a differenza vuota, flusso di revisione e rapporto di copertura")

print("\n" + ("TUTTI I CONTROLLI SUPERATI" if not FAILURES else f"{len(FAILURES)} CONTROLLI FALLITI"))
sys.exit(1 if FAILURES else 0)
