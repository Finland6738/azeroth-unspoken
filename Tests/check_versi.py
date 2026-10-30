"""Checks of the verses pack AzerothUnspoken_Versi (step L0, issues #115 and #116; run by run_tests.py).

The pack is loaded **as an external addon**, after the base addon, with its own namespace (like a player who installs
it next to AzerothUnspoken). Then:
1. the .toc and the files: Interface 16001, dependency on AzerothUnspoken, UTF-8 without BOM, LF line endings;
2. the validator (the same code as `/au validate versi`): zero errors and zero warnings;
3. the pieces: 12-16, each with a `lore_test` twin; private voices only (D16); never in combat; cooldown of three to
   seven days; genre and origin tags; one line of at most 255 bytes, no placeholders, verses separated by " / ";
   the mix asked by #115 (inscriptions, returns, inn rhymes, road songs with a natural form, encounters, hymn);
4. never offered to the Chat Gateway: `/au event lore_test` in the "confirm" mode with public chat on reaches the
   private narrator, creates no proposal and sends nothing, in English and in Italian;
5. the real events: the right pieces are candidates at a ruin, a sacred place, a prayer and a Hearthstone, and not
   elsewhere; a used piece waits for its cooldown.

Usage: python -I -X utf8 Tests/check_versi.py [repository folder]. Exits with 1 if something fails.
"""
import os
import sys

from lupa import lua51

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(sys.argv[1]) if len(sys.argv) > 1 else os.path.dirname(HERE)
ADDON = os.path.join(ROOT, "AzerothUnspoken")
PACK_NAME = "AzerothUnspoken_Versi"
PACK = os.path.join(ROOT, PACK_NAME)
DAY = 86400

# The warning phrases of CONTRIBUTING.md, "Literary forms" (lowercase): echoes of Tolkien, of Blizzard's texts and of
# famous verses. A match must be justified in review; in this pack there is none.
WARNING_PHRASES = [
    "road goes ever on", "not all who wander", "all that is gold", "far over the misty", "under the mountain",
    "one ring", "to rule them", "to bind them", "speak, friend", "shall not pass", "where now the horse",
    "man in the moon", "cat and the fiddle", "elbereth", "westward over the sea", "grey havens", "the shadow lies",
    "hole in the ground", "seven stars", "light be with you", "ishnu-alah", "throm-ka", "lok'tar",
    "strength and honor", "for the horde", "for the alliance", "victory or death", "love is patient",
    "ashes to ashes", "ring a ring", "once upon a time",
]

FAILURES = []


def check(cond, msg):
    print(("  ok  " if cond else "  ERROR  ") + msg)
    if not cond:
        FAILURES.append(msg)
    return cond


def toc_files(folder, name):
    lines = open(os.path.join(folder, name + ".toc"), encoding="utf-8").read().splitlines()
    return [l.strip() for l in lines if l.strip() and not l.lstrip().startswith("#")]


def new_runtime(zone=None):
    """Mock API, the base addon in .toc order, then the pack as a separate addon (its own namespace)."""
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    lua.execute(open(os.path.join(HERE, "MockWoWAPI.lua"), encoding="utf-8").read())
    if zone:
        lua.execute(f'P.zone = "{zone}"')
    loader = lua.eval("function(src, name) return assert(loadstring(src, name)) end")
    ns = lua.table()
    for f in toc_files(ADDON, "AzerothUnspoken"):
        src = open(os.path.join(ADDON, f.replace("\\", "/")), encoding="utf-8").read()
        loader(src, "@" + f)("AzerothUnspoken", ns)
    lua.globals().FIRE("ADDON_LOADED", "AzerothUnspoken")
    for f in toc_files(PACK, PACK_NAME):
        src = open(os.path.join(PACK, f.replace("\\", "/")), encoding="utf-8").read()
        loader(src, "@" + f)(PACK_NAME, lua.table())
    lua.globals().FIRE("ADDON_LOADED", PACK_NAME)
    lua.globals().ENTER_GAME(True, False)
    return lua, lua.globals().AzerothUnspoken


def check_files():
    print("FILES")
    toc = open(os.path.join(PACK, PACK_NAME + ".toc"), encoding="utf-8").read()
    check("## Interface: 16001" in toc, "Interface 16001 in the .toc")
    check("## Dependencies: AzerothUnspoken" in toc, "the .toc depends on AzerothUnspoken")
    files = toc_files(PACK, PACK_NAME)
    check(files and all(os.path.isfile(os.path.join(PACK, f.replace("\\", "/"))) for f in files),
          f"the files of the .toc exist ({', '.join(files)})")
    bad = []
    for name in os.listdir(PACK):
        raw = open(os.path.join(PACK, name), "rb").read()
        try:
            text = raw.decode("utf-8")
        except UnicodeDecodeError:
            bad.append(name + " (not UTF-8)")
            continue
        if raw.startswith(b"\xef\xbb\xbf") or "�" in text or b"\r" in raw:
            bad.append(name + " (BOM, U+FFFD or CR)")
    check(not bad, "UTF-8 without BOM, LF line endings" + ("" if not bad else ": " + "; ".join(bad)))


def check_pack(lua, ns):
    print("\nPACK AND VALIDATOR")
    diag = [str(e.message) for e in ns.Diagnostics.errors.values()]
    check(not diag, "no error in diagnostics after loading the pack" + (f" ({diag})" if diag else ""))
    check(ns.Engine.packs["versi"] is not None, "the pack 'versi' is registered")
    val = lua.eval("function() return AzerothUnspoken.Validator:Run({ packs = { 'versi' } }) end")()
    problems = [f"{p.level} {p.code} {p.id or p.pack} {p.lang or ''} {p.msg}"
                for p in list(val.errors.values()) + list(val.warnings.values())]
    check(len(list(val.errors.values())) == 0, "/au validate versi: zero errors" + ("" if not problems else ": " + "; ".join(problems)))
    check(len(list(val.warnings.values())) == 0, "/au validate versi: zero warnings")
    whole = lua.eval("function() return #AzerothUnspoken.Validator:Run().errors end")()
    check(whole == 0, f"the whole database with the pack: zero errors ({whole})")
    check(ns.Engine.events["lore_test"] is not None, "the event lore_test is declared")
    check(ns.GetChance(ns, "lore_test") == 0, "lore_test is manual only (chance 0)")


PIECES_LUA = """function()
    local E = AzerothUnspoken.Engine
    local out = {}
    for id, p in pairs(E.byId) do
        if p.pack == "versi" then
            local r = { id = id, speaker = p.speaker, form = p.form, cooldown = p.cooldown or -1,
                combat = p.when and p.when.combat, event = table.concat(p.events, ","), tags = {}, texts = {},
                natural = 0, twin = id:find("^versi%.test%.") ~= nil }
            for t in pairs(p.tags) do table.insert(r.tags, t) end
            for lang, list in pairs(p.text) do
                for _, v in ipairs(list) do
                    table.insert(r.texts, { lang = lang, t = v.t })
                    if v.depth and v.depth.natural then r.natural = r.natural + 1 end
                end
            end
            table.insert(out, r)
        end
    end
    return out
end"""


def check_pieces(lua, ns):
    print("\nPIECES")
    rows = list(lua.eval(PIECES_LUA)().values())
    real = [r for r in rows if not r.twin]
    twins = [r for r in rows if r.twin]
    check(12 <= len(real) <= 16, f"12-16 pieces ({len(real)})")
    real_keys = {r.id[len("versi."):] for r in real}
    twin_keys = {r.id[len("versi.test."):] for r in twins}
    check(real_keys == twin_keys, "every piece has its lore_test twin, and only those")
    check(all(r.event == "lore_test" for r in twins), "the twins answer only to lore_test")
    check(all("lore_test" not in r.event for r in real), "the real pieces never answer to lore_test")
    check(all(r.speaker in ("inner", "npc") for r in rows), "private voices only, inner or npc (D16)")
    check(all(r.form == "say" for r in rows), "no piece is an emote")
    check(all(r.combat is False for r in rows), "combat = false on every rule")
    check(all(3 * DAY <= r.cooldown <= 7 * DAY for r in real), "cooldown of three to seven days on every piece")
    def tags(r):
        return list(r.tags.values())
    check(all("lore" in tags(r) and any(t.startswith("genre_") for t in tags(r)) and any(t.startswith("origin_") for t in tags(r))
              for r in rows), "tags lore, genre_* and origin_* on every rule")
    long_, multi, holes, verses, langs = [], [], [], [], []
    for r in rows:
        texts = list(r.texts.values())
        if {t.lang for t in texts} != {"en", "it"}:
            langs.append(r.id)
        for t in texts:
            raw = t.t.encode("utf-8")
            if len(raw) > 255:
                long_.append(f"{r.id} {t.lang} ({len(raw)} bytes)")
            if "\n" in t.t or "\r" in t.t:
                multi.append(f"{r.id} {t.lang}")
            if "{" in t.t or "}" in t.t:
                holes.append(f"{r.id} {t.lang}")
    for r in real:
        for t in r.texts.values():
            # the natural form of a road song is prose; every other text is verse
            if r.natural and len(t.t) < 120:
                continue
            if t.t.count(" / ") < 3:
                verses.append(f"{r.id} {t.lang}")
    check(not langs, "English and Italian for every piece" + ("" if not langs else ": " + ", ".join(langs)))
    check(not long_, "every text fits in 255 bytes" + ("" if not long_ else ": " + ", ".join(long_)))
    check(not multi, "one line per text (line breaks come with #117)" + ("" if not multi else ": " + ", ".join(multi)))
    check(not holes, "no placeholders in songs and formulas" + ("" if not holes else ": " + ", ".join(holes)))
    check(not verses, "verses separated by ' / ' (at least four)" + ("" if not verses else ": " + ", ".join(verses)))
    found = [f"{r.id} {t.lang}: {w}" for r in real for t in r.texts.values() for w in WARNING_PHRASES
             if w in t.t.lower()]
    check(not found, "no warning phrase of CONTRIBUTING.md (Literary forms)" + ("" if not found else ": " + ", ".join(found)))
    longest = max(len(t.t.encode("utf-8")) for r in rows for t in r.texts.values())
    print(f"  longest text: {longest} bytes")

    def count(pred):
        return sum(1 for r in real if pred(r))
    check(count(lambda r: r.event == "zone") == 4, "4 inscriptions and formulas on zone (ruin, sacred)")
    check(count(lambda r: r.event == "memory_return") == 3, "3 verses remembered on return")
    check(count(lambda r: "npcd_innkeeper" in r.event) == 2 and all(r.speaker == "npc" for r in real if "npcd_" in r.event),
          "2 inn rhymes in the innkeeper's voice")
    roads = [r for r in real if r.event == "travel"]
    check(len(roads) == 2 and all(r.natural == 2 for r in roads), "2 road songs, each with a natural form in both languages")
    check(count(lambda r: r.event == "other_action") == 2, "2 sayings for an encounter (trust, wariness)")
    check(count(lambda r: r.event == "pray") == 1, "1 hymn on pray")
    check(count(lambda r: r.event == "encounter_end") == 1, "1 lament after a lost boss fight")


# Every record the Gateway receives, and what it made of it: a proposal for the chat or only the private narrator.
SPY_LUA = """function()
    local G = AzerothUnspoken.Gateway
    local log = {}
    local propose = G.Propose
    G.Propose = function(self, rec, ctx, opts)
        local shown = propose(self, rec, ctx, opts)
        table.insert(log, { id = rec.id, event = rec.event, speaker = rec.speaker, text = rec.text, shown = shown,
            proposal = rec.proposal ~= nil, sentTo = rec.sentTo })
        return shown
    end
    return log
end"""


def check_lore_test():
    print("\nLORE_TEST AND THE CHAT GATEWAY")
    for locale in ("en", "it"):
        lua, ns = new_runtime()
        g = lua.globals()
        ns.db.locale = locale
        ns.db.modules.publicChat = True
        ns.db.chat.mode = "CONFIRM_TO_SEND"
        log = lua.eval(SPY_LUA)()
        g.SENT = lua.table()
        for _ in range(150):
            g.SlashCmdList.AZEROTHUNSPOKEN("event lore_test")
            g.ADVANCE(5)
        recs = [r for r in log.values() if r.event == "lore_test"]
        seen = {str(r.text) for r in recs}
        public = [s for s in g.SENT.values() if not str(s).startswith("PRINT:")]
        check(len(recs) == 150 and all(r.shown for r in recs),
              f"[{locale}] /au event lore_test shows a piece every time ({len(recs)}/150)")
        check(all(str(r.id).startswith("versi.test.") and r.speaker in ("inner", "npc") for r in recs),
              f"[{locale}] only the pack's pieces, in a private voice")
        check(not any(r.proposal or r.sentTo for r in recs),
              f"[{locale}] no proposal for the Chat Gateway, even in the confirm mode")
        check(not public, f"[{locale}] nothing sent to chat" + ("" if not public else f": {public[:2]}"))
        check(len(seen) >= 15, f"[{locale}] every piece comes out by hand ({len(seen)} different texts)")
        sample = next(iter(seen), "")
        italian = any(w in sample for w in ("è", "à", "ò", "ù", "il ", "la ", "che "))
        check(" / " in sample and (italian if locale == "it" else not italian),
              f"[{locale}] in the chosen language: {sample[:60]}...")
        diag = [str(e.message) for e in ns.Diagnostics.errors.values()]
        check(not diag, f"[{locale}] no error in diagnostics" + (f" ({diag})" if diag else ""))


CANDIDATES_LUA = """function(event, extra, form)
    local A = AzerothUnspoken
    local ctx = A:BuildContext(extra)
    local out = {}
    for _, p in ipairs(A.Engine:Eligible(A.Engine.byEvent[event], A:Lang(), ctx, form or "say", time())) do
        if p.pack == "versi" then out[p.id] = true end
    end
    return out
end"""


def check_events():
    print("\nREAL EVENTS")
    # first visit to a ruin (Arathi Highlands) and to a sacred place (Moonglade); a plain zone has no inscription
    for zone, expect, absent in (
            ("Arathi Highlands", {"versi.inscription.ruin.01", "versi.inscription.ruin.02", "versi.inscription.names.01"},
             {"versi.inscription.sacred.01"}),
            ("Moonglade", {"versi.inscription.sacred.01", "versi.inscription.names.01"},
             {"versi.inscription.ruin.01", "versi.inscription.ruin.02"}),
            ("Durotar", set(), {"versi.inscription.ruin.01", "versi.inscription.sacred.01", "versi.inscription.names.01"})):
        lua, ns = new_runtime(zone="Elwynn Forest")
        g = lua.globals()
        g.ADVANCE(30)
        g.P.zone = zone
        g.FIRE("ZONE_CHANGED_NEW_AREA")
        got = set(lua.eval(CANDIDATES_LUA)("zone", None).keys())
        check(expect <= got and not (absent & got), f"first visit to {zone}: candidates {sorted(got) or 'none'}")
    lua, ns = new_runtime()
    cand = lua.eval(CANDIDATES_LUA)
    check("versi.hymn.pray.01" in set(cand("pray", None).keys()), "the hymn is a candidate for pray")
    extra = lua.eval("function() return { spell = 'Hearthstone', spellKind = 'travel' } end")()
    got = set(cand("travel", extra).keys())
    check({"versi.road.song.01", "versi.road.song.02"} <= got, "both road songs are candidates for a Hearthstone")
    extra = lua.eval("function() return { spell = 'Teleport: Orgrimmar', spellKind = 'travel' } end")()
    got = set(cand("travel", extra).keys())
    check("versi.road.song.02" in got and "versi.road.song.01" not in got, "the pocket-stone song only for a Hearthstone")
    check(not set(cand("encounter_end", None).keys()), "no lament without a lost boss fight")
    check(not set(cand("other_action", None).keys()), "no saying without someone known acting toward us")
    check(not set(cand("memory_return", None).keys()), "no remembered verse without a memory")
    lua.eval("function() AzerothUnspoken.Engine.Remember('pray', 'versi.hymn.pray.01', 5) end")()
    check("versi.hymn.pray.01" not in set(cand("pray", None).keys()), "a used piece waits for its cooldown")
    lua.globals().LEAP(3 * DAY + 60)
    check("versi.hymn.pray.01" in set(cand("pray", None).keys()), "and comes back after it")


if __name__ == "__main__":
    check_files()
    lua_, ns_ = new_runtime()
    check_pack(lua_, ns_)
    check_pieces(lua_, ns_)
    check_lore_test()
    check_events()
    print("\n" + ("VERSES PACK OK" if not FAILURES else f"{len(FAILURES)} CHECKS FAILED"))
    sys.exit(1 if FAILURES else 0)
