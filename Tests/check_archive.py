"""Tests of the authoring archive (tools/archive, issues #87 and #88, ADR 0027).

The guarantee is the round trip: importing the pack folders of this repository into the archive and exporting them
again gives an **empty diff**. Around it: the renderer of new and edited entries, the review flow (only approved
content is exported), the overlay, the search, the coverage report, the need of the content waves and the near duplicates (ADR 0050). Everything runs on temporary copies; the repository
is never written.

Usage: python -I -X utf8 Tests/check_archive.py   (exit code 1 if a check fails)
"""
import contextlib
import io
import json
import os
import re
import shutil
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(ROOT, "tools", "archive"))
import coverage  # noqa: E402
import cli  # noqa: E402
import literary  # noqa: E402
import neardup  # noqa: E402
import need  # noqa: E402
import packfiles  # noqa: E402
import store  # noqa: E402
import structures  # noqa: E402

os.environ["AU_ARCHIVE_NOW"] = "2026-11-01T10:00:00Z"
FAILURES = []


def check(cond, msg):
    if cond:
        print("  ok  " + msg)
    else:
        FAILURES.append(msg)
        print("  FAILED  " + msg)
    return cond


def copy_repo(tmp):
    """The pack folders and the overlay of the repository in a temporary folder."""
    for d in os.listdir(ROOT):
        if d.startswith("AzerothUnspoken") and os.path.isdir(os.path.join(ROOT, d)):
            shutil.copytree(os.path.join(ROOT, d), os.path.join(tmp, d))
    shutil.copytree(os.path.join(ROOT, "authoring"), os.path.join(tmp, "authoring"))
    return tmp, os.path.join(tmp, "authoring")


def lua_syntax_ok(paths):
    """Loads every written Lua file with the Lua 5.1 of lupa (only a syntax check); None when lupa is not installed."""
    try:
        from lupa import lua51
    except ImportError:
        return None
    lua = lua51.LuaRuntime()
    load = lua.eval("function(s, n) local f, e = loadstring(s, n) return f ~= nil, e end")
    bad = []
    for p in paths:
        ok, err = load(packfiles.read(p), "@" + os.path.basename(p))
        if not ok:
            bad.append("%s: %s" % (p, err))
    return bad


def roundtrip():
    print("ROUND TRIP (folders -> archive -> folders)")
    diffs = store.roundtrip(ROOT)
    check(diffs == [], "the export of the imported folders is identical, byte for byte, to every file" +
          ("" if not diffs else " (differ: %s)" % ", ".join(diffs[:5])))
    canon = store.roundtrip(ROOT, canonical=True)
    check(canon == [], "the canonical rendering of every rule and text reads back as the same data" +
          ("" if not canon else " (differ: %s)" % ", ".join(canon[:5])))
    con = store.build_db(":memory:", ROOT, os.path.join(ROOT, "authoring"))
    check(con.report["problems"] == [], "the import has no problems %s" % con.report["problems"][:3])
    n = con.execute("SELECT COUNT(*) FROM intention").fetchone()[0]
    check(n >= 800, "the archive holds the literal rules of the base and the regional packs (%d intentions)" % n)
    check(con.report["skipped"] == [], "no file is left out: no rules are computed by code any more (%s)" %
          sorted(str(s["pack_id"]) for s in con.report["skipped"]))
    check(con.execute("SELECT COUNT(*) FROM intention WHERE pack_id = 'base_arcs'").fetchone()[0] == 52 and
          con.execute("SELECT COUNT(*) FROM intention WHERE pack_id = 'base_dialogues'").fetchone()[0] == 193,
          "the 52 lines of the Story Arcs and the 193 of NPC Alive are archived (#143; 33 + 11 of the nemesis, N7 #219, + 8, N9 #221; 169 + 5 nickname openers, N5 #217, + 13 + 6 openers, N9 #221)")
    ids = {r["id"] for r in con.execute("SELECT id FROM intention")}
    check(all(i in ids for i in ("zone.gen.01", "victory.long.01", "zone.durotar.01", "ctx.act.duel")),
          "rules with code (func), mixed tables and regional rules are all there")
    r = store.get_rule(con, "victory.long.01")
    check("func" in r["conditions"] and "$lua" in r["conditions"]["func"], "a condition with code is kept as raw text")
    check(con.execute("SELECT region FROM intention WHERE id = 'zone.durotar.01'").fetchone()[0] == "kalimdor",
          "a regional rule carries the region of its pack")
    # C0 (ADR 0048): the area of the builder, none for a pack of the whole continent
    areas = {r[0]: r[1] for r in con.execute("SELECT id, area FROM pack WHERE region IS NOT NULL")}
    check(areas.get("kalimdor_orgrimmar") == "durotar" and areas.get("eastern_stormwind") == "elwynnforest"
          and areas.get("kalimdor_exploration") is None,
          "a regional pack carries its area (Orgrimmar is in the area of Durotar), a continent pack none")
    check(store.index_keys({"mood": "forest", "time": "dawn"}) == ["m:forest"] and
          store.index_keys({"race": ["Orc", "Troll"]}) == ["r:orc", "r:troll"] and
          store.index_keys({"chance": 50, "zone": "Durotar"}) == ["*"] and store.index_keys(None) == ["*"] and
          store.index_keys({"place": {"mapID": 1411}}) == ["pm:1411"],
          "the context keys follow the selection index of ADR 0024")
    check(all(r["state"] == "approved" for r in con.execute("SELECT state FROM intention")),
          "everything imported from the folders is approved")


LUA_CAPTURE = """
function()
  local cap = { packs = {}, arcs = {}, dialogues = {}, texts = {}, arcTexts = {} }
  local NS = {}
  function NS:RegisterPack(t) table.insert(cap.packs, t) end
  function NS:RegisterArcs(t) table.insert(cap.arcs, t) end
  function NS:RegisterDialogues(t) table.insert(cap.dialogues, t) end
  function NS:AddTexts(lang, map, pack) table.insert(cap.texts, { lang = lang, map = map, pack = pack }) end
  function NS:AddArcTexts(lang, map, pack) table.insert(cap.arcTexts, { lang = lang, map = map, pack = pack }) end
  return cap, NS
end
"""


def loaded_by_the_game():
    """What the game gets from the data files of the arcs and the dialogues, read by running the Lua (lupa, with a fake
    `NS` that only records what is registered); None when lupa is not installed."""
    try:
        from lupa import lua51
    except ImportError:
        return None
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    cap, NS = lua.eval(LUA_CAPTURE)()
    lua.globals().AzerothUnspoken = NS   # the language folders take the base from this global
    load = lua.eval("function(src, n) return assert(loadstring(src, n)) end")
    for rel in ("AzerothUnspoken/Data/RegistryArcs.lua", "AzerothUnspoken/Data/RegistryDialogues.lua",
                "AzerothUnspoken/Data/Arcs.lua", "AzerothUnspoken/Data/Dialogues.lua",
                "AzerothUnspoken_itIT/Arcs.lua", "AzerothUnspoken_enUS/Arcs.lua",
                "AzerothUnspoken_itIT/Dialogues.lua", "AzerothUnspoken_enUS/Dialogues.lua"):
        load(packfiles.read(os.path.join(ROOT, rel)), "@" + rel)("AzerothUnspoken", NS)

    def conv(v):
        if lua51.lua_type(v) != "table":
            return v
        keys = list(v.keys())
        if not keys:
            return []
        if sorted(keys, key=str) == list(range(1, len(keys) + 1)):
            return [conv(v[i]) for i in range(1, len(keys) + 1)]
        return {str(k): conv(v[k]) for k in keys}
    return {k: [conv(x) for x in cap[k].values()] for k in ("packs", "arcs", "dialogues", "texts", "arcTexts")}


def same(a, b):
    """Equal as data: an empty table is the same empty list or dict, 1 is 1.0."""
    if isinstance(a, dict) and isinstance(b, dict):
        return a.keys() == b.keys() and all(same(a[k], b[k]) for k in a)
    if isinstance(a, list) and isinstance(b, list):
        return len(a) == len(b) and all(same(x, y) for x, y in zip(a, b))
    if a in ([], {}) and b in ([], {}):
        return True
    return a == b


def equivalence():
    """What the game loads from the files that used to build their rules in code is what the archive holds: the same
    registry, events, arcs, dialogue scripts and texts (#143). The reader of the archive never runs Lua, lupa does."""
    print("EQUIVALENCE (the archive holds what the game loads)")
    game = loaded_by_the_game()
    if game is None:
        print("  (lupa is not installed: not checked)")
        return
    con = store.build_db(":memory:", ROOT, os.path.join(ROOT, "authoring"))
    for pack in game["packs"]:
        mine = {r["id"]: store.get_rule(con, r["id"]) for r in con.execute("SELECT id FROM intention WHERE pack_id = ?", (pack["id"],))}
        theirs = {id: packfiles.rule_data(id, d) for id, d in pack["registry"].items()}
        check(sorted(mine) == sorted(theirs) and all(same(json.loads(json.dumps(mine[i])), theirs[i]) for i in theirs),
              "%s: the %d rules the game registers are the rules of the archive, field by field" % (pack["id"], len(theirs)))
        check(len(pack["events"]) >= 3, "%s: its events are declared (%d)" % (pack["id"], len(pack["events"])))
    arcs = game["arcs"][0]["arcs"]
    check(sorted(arcs) == sorted(r[0] for r in con.execute("SELECT id FROM arc")) and
          all(same(arcs[i], store.get_arc(con, i)) for i in arcs), "the %d arcs the game registers are those of the archive" % len(arcs))
    scripts = game["dialogues"][0]["scripts"]
    check(sorted(scripts) == sorted(r[0] for r in con.execute("SELECT key FROM script")) and
          all(same(scripts[k], store.get_script(con, k)) for k in scripts),
          "the %d dialogue scripts the game registers are those of the archive" % len(scripts))
    check(game["dialogues"][0]["pack"] == "base_dialogues" and game["arcs"][0]["pack"] == "base_arcs", "the packs of the structures are declared")
    for t in game["arcTexts"]:
        check(t["pack"] == "base_arcs" and all(same(t["map"][i], store.get_arc_text(con, i, t["lang"])) for i in t["map"]),
              "the journal texts in %s are those of the archive" % t["lang"])
    for t in game["texts"]:
        if t["pack"] not in ("base_arcs", "base_dialogues"):
            continue
        ok = True
        for id, v in t["map"].items():
            lines = v if isinstance(v, list) else [v]
            norm = [{"text": x} if isinstance(x, str) else {"text": x["1"], **({"depth": x["depth"]} if "depth" in x else {})} for x in lines]
            ok = ok and norm == store.get_variants(con, id, t["lang"])
        check(ok, "%s, %s: the %d texts of the lines are those of the archive" % (t["pack"], t["lang"], len(t["map"])))


def structures_content():
    """The Story Arcs and NPC Alive structures (#143): imported as data, checked, exported with an empty diff; the
    validator refuses what it should; an edited arc or script is rendered again in place and a new one is appended."""
    print("ARCS AND DIALOGUE SCRIPTS (#143)")
    con = store.build_db(":memory:", ROOT, os.path.join(ROOT, "authoring"))
    arcs = [r[0] for r in con.execute("SELECT id FROM arc ORDER BY id")]
    scripts = [r[0] for r in con.execute("SELECT key FROM script ORDER BY key")]
    check(arcs == ["capitals", "fallen", "knownface", "nemesis", "path"], "the five arcs are archived (the nemesis, N7): %s" % arcs)
    check(scripts == ["flightmaster", "guard", "innkeeper", "merchant", "trainer"], "the five dialogue scripts are archived: %s" % scripts)
    check(con.execute("SELECT COUNT(*) FROM arc_text").fetchone()[0] == 10 and
          con.execute("SELECT COUNT(*) FROM arc_step").fetchone()[0] == 19, "the journal texts (two languages) and the 19 steps are there")
    check(con.execute("SELECT COUNT(*) FROM script_node").fetchone()[0] == 27 and
          con.execute("SELECT COUNT(*) FROM script_reply").fetchone()[0] == 22,
          "the nodes and the replies are indexed for queries")
    check([r[0] for r in con.execute("SELECT script_key FROM script_node WHERE event = 'npcd_guard_danger'")] == ["guard"],
          "a node is found by its event")
    path = store.get_arc(con, "path")
    check(path["steps"][0]["when"]["any"][0] == {"race": "Dwarf", "place": {"any": [{"mapID": 1426}, {"zone": "Dun Morogh"}]}} and
          len(path["steps"][1]["when"]["any"]) == 8, "a local constant of data (STARTER_ZONE) is read as the data it holds")
    inn = store.get_script(con, "innkeeper")
    check(inn["choices"]["news"]["label"] == {"it": "Che notizie corrono?", "en": "What news is going round?"} and
          inn["choices"]["news"]["flag"] == "asked_news", "the replies keep their labels per language, flag and relation")
    problems = store.check_structures(con)
    check(problems == [], "the base arcs and scripts pass every check %s" % problems[:3])
    res = coverage.compute(con, coverage.load_thresholds())
    check(res["not_archived"] == 0 and res["structures"]["arcs"] == 5 and res["structures"]["scripts"] == 5 and
          res["structures"]["errors"] == [], "the report counts 0 intentions not archived and the structures")
    md = coverage.to_markdown(res)
    check("Intentions not archived (rules computed by code): **0**" in md and "Story arcs: **5**" in md, "and says so in the headline")

    # ---- the checks, on definitions written to be wrong
    langs = ["itIT", "enUS"]
    texts = {l: store.get_arc_text(con, "capitals", l) for l in langs}
    good = store.get_arc(con, "capitals")
    check(structures.check_arc("capitals", good, texts, langs) == [], "an arc that is right has no problem")

    def arc_problems(mutate, text_langs=langs):
        d = json.loads(json.dumps(good))
        mutate(d)
        return " | ".join(m for lv, ref, m in structures.check_arc("capitals", d, {l: texts[l] for l in text_langs}, langs))
    check("dangling transition" in arc_problems(lambda d: d["steps"][1].update(to="NOWHERE")), "a transition to a state that is not declared")
    lost = arc_problems(lambda d: d["steps"].pop(2))
    check("no step leaves the state JOURNEY" in lost and "unreachable from LOCKED" in lost,
          "a state with no way out, and the one after it unreachable")
    check("only to the next state" in arc_problems(lambda d: d["steps"][0].update(to="JOURNEY")), "no jumps between states")
    check("dangling choice 'nothing'" in arc_problems(lambda d: d["steps"][2].update(choose="nothing")), "a step that asks a choice that is not defined")
    check("unknown event 'tuesday'" in arc_problems(lambda d: d["steps"][0].update(on=["tuesday"])), "an unknown event")
    check("missing the journal texts in enUS" in arc_problems(lambda d: None, ["itIT"]), "a language of the pack without journal texts")
    check("unknown field 'reward'" in arc_problems(lambda d: d.update(reward=1)), "no rewards: an unknown field")
    check("text 'states.JOURNEY' (itIT) missing" in " | ".join(m for _, _, m in structures.check_arc(
        "capitals", good, {"itIT": dict(texts["itIT"], states={}), "enUS": texts["enUS"]}, langs)), "a state without its account")
    check("no line for the event arc_step" in " | ".join(m for _, _, m in structures.check_arc(
        "capitals", good, texts, langs, {("arc_open", "DISCOVERED")})), "a step without a line is a warning: the arc advances in silence")

    raw = {k: store.get_script(con, k) for k in scripts}
    speakers = {json.loads(r["events"])[0]: {"npc"} for r in con.execute("SELECT events FROM intention WHERE pack_id = 'base_dialogues'")}

    def script_problems(mutate, key="innkeeper"):
        d = json.loads(json.dumps(raw))
        mutate(d[key])
        return [(lv, m) for lv, ref, m in structures.check_script(key, d, langs, speakers) if ref == key]
    check(structures.check_script("innkeeper", raw, langs, speakers) == [], "a script that is right has no problem")
    out = script_problems(lambda d: d["nodes"].update(lost={"event": "npcd_innkeeper_open"}))
    check(out == [("warning", "node 'lost' is unreachable from 'open'")], "an unreachable node is found: %s" % out)
    out = script_problems(lambda d: d["choices"]["news"].update(go="nowhere"))
    check(any("dangling transition, the node 'nowhere' does not exist" in m for lv, m in out), "a reply that leads to a node that does not exist")
    out = script_problems(lambda d: d["nodes"]["open"].update(choices=["news", "ghost"]))
    check(any("dangling reply 'ghost'" in m for lv, m in out), "a node that offers a reply that is not defined")
    out = script_problems(lambda d: d["nodes"].update(open={"event": "npcd_innkeeper_open", "choices": ["news"]},
                                                      news={"event": "npcd_innkeeper_news", "choices": ["more"]},
                                                      more={"event": "npcd_innkeeper_more", "choices": ["news"]}))
    check(any("no reply closes the dialogue" in m for lv, m in out), "a loop with no way out is a warning")
    out = script_problems(lambda d: d["choices"]["news"]["label"].pop("en"))
    check(any("missing the text 'en'" in m for lv, m in out), "a reply without a text in a language of the pack")
    out = script_problems(lambda d: d["nodes"]["sit"].update(event="npcd_innkeeper_nothing"))
    check(any("no line for the event 'npcd_innkeeper_nothing'" in m for lv, m in out), "a node whose event nobody speaks")
    out = script_problems(lambda d: d["choices"]["news"].update(label={"it": "Mi sento solo.", "en": "I feel alone."}))
    check(sum("puts words in the player's mouth" in m for lv, m in out) == 2 and all(lv == "error" for lv, m in out),
          "a reply that states a feeling is an error in each language")
    out = script_problems(lambda d: d["choices"]["news"].update(label={"it": "Mi sento solo.", "en": "I feel alone."}, editable=True))
    check(out == [], "unless it is marked editable")
    out = script_problems(lambda d: d["choices"]["news"].update(label={"it": "Ti senti solo, qui?", "en": "Do you feel alone here?"}))
    check(out == [], "a question is neutral, even about a feeling")
    check(structures.neutral("I am looking for a place to rest.", "en") and not structures.neutral("I'm afraid.", "en") and
          structures.neutral("Cerco un posto per riposare.", "it") and not structures.neutral("Ho paura.", "it"),
          "an action is neutral, a feeling is not")
    import re
    lua = packfiles.read(os.path.join(ROOT, "AzerothUnspoken", "Systems", "NPCAlive.lua"))
    block = lua[lua.index("N.PUTS_WORDS = {"):lua.index("N.OFFER_KINDS")]
    in_game = {m.group(1): re.findall(r'"([^"]+)"', m.group(2)) for m in re.finditer(r"(\w+) = \{([^}]*)\}", block.split("{", 1)[1])}
    check(in_game == structures.PUTS_WORDS, "the list of phrases is the game's (Systems/NPCAlive.lua)")

    # ---- an edited arc, a new arc, an edited and a new script, new lines: written in place, round trip empty
    tmp = tempfile.mkdtemp(prefix="au-archive-struct-")
    try:
        root, overlay = copy_repo(tmp)
        db = os.path.join(tmp, "build", "authoring.sqlite")
        c = store.build_db(":memory:", root, overlay)
        before = {p: packfiles.read(os.path.join(root, p)) for p in (r[0] for r in c.execute("SELECT DISTINCT path FROM source_file"))}
        d = store.get_arc(c, "path")
        d["steps"][1]["wait"] = 300
        c.execute("UPDATE arc SET definition = ? WHERE id = 'path'", (store.jdump(d),))
        new_arc = {"choices": {"road": {"options": ["left", "right"]}},
                   "steps": [{"from": "LOCKED", "to": "DISCOVERED", "on": ["level"], "when": {"levelMin": 20}},
                             {"from": "DISCOVERED", "to": "REFLECTED", "on": ["player"], "wait": 60, "choose": "road"},
                             {"from": "REFLECTED", "to": "RESOLVED", "on": ["zone"]}]}
        c.execute("INSERT INTO arc VALUES ('crossing', 'base_arcs', ?)", (store.jdump(new_arc),))
        for lang, t in (("itIT", "Il bivio"), ("enUS", "The Crossing")):
            c.execute("INSERT INTO arc_text VALUES ('crossing', ?, ?)", (lang, store.jdump({
                "title": t, "summary": t + ".", "states": {"DISCOVERED": "a", "REFLECTED": "b", "RESOLVED": "c"},
                "choices": {"road": {"prompt": "Which?", "options": {"left": {"label": "Left", "note": "L."},
                                                                      "right": {"label": "Right", "note": "R."}}}}})))
        sc = store.get_script(c, "guard")
        sc["choices"]["thanks"]["label"]["en"] = "Thanks."
        c.execute("UPDATE script SET definition = ? WHERE key = 'guard'", (store.jdump(sc),))
        c.execute("INSERT INTO script VALUES ('npc:295', 'base_dialogues', ?)", (store.jdump(
            {"npcID": 295, "extends": "innkeeper", "nodes": {"bye": {"event": "npcd_innkeeper_bye"}}}),))
        written = store.export_folders(c, root)
        check(sorted(written) == ["AzerothUnspoken/Data/Arcs.lua", "AzerothUnspoken/Data/Dialogues.lua",
                                  "AzerothUnspoken_enUS/Arcs.lua", "AzerothUnspoken_itIT/Arcs.lua"],
              "only the files that changed are written: %s" % written)
        arcs_lua = packfiles.read(os.path.join(root, "AzerothUnspoken/Data/Arcs.lua"))
        check("wait = 300" in arcs_lua and "wait = 120" not in arcs_lua and "crossing = {" in arcs_lua and
              arcs_lua.count("capitals = {") == 1 and arcs_lua.count("-- Le tre porte") == 1,
              "the edited arc is rendered again in place, the new one is appended, the comments stay")
        dlg = packfiles.read(os.path.join(root, "AzerothUnspoken/Data/Dialogues.lua"))
        check('en = "Thanks."' in dlg and '["npc:295"] = {' in dlg and dlg.count("-- IL LOCANDIERE") == 1, "the same for the scripts")
        en = packfiles.read(os.path.join(root, "AzerothUnspoken_enUS/Arcs.lua"))
        old_en = before["AzerothUnspoken_enUS/Arcs.lua"]
        check(en.count("NS:AddTexts(") == 1 and en.count("NS:AddArcTexts(") == 1 and "crossing = {" in en and
              en.index("crossing = {") < en.index("NS:AddTexts("), "a language file with two tables keeps both, the new journal text in its own")
        check(en[en.index("NS:AddTexts("):] == old_en[old_en.index("NS:AddTexts("):], "and the lines after it are untouched, byte for byte")
        bad = lua_syntax_ok([os.path.join(root, p) for p in written])
        check(bad is None or bad == [], "the files written are valid Lua 5.1")
        check(store.roundtrip(root) == [] and store.roundtrip(root, canonical=True) == [],
              "the written folders round-trip with an empty diff, canonical rendering included")
        again = store.build_db(":memory:", root, overlay)
        check(store.get_arc(again, "crossing") == new_arc and store.get_script(again, "npc:295")["npcID"] == 295 and
              store.get_arc(again, "path")["steps"][1]["wait"] == 300 and again.report["problems"] == [],
              "read back, they are the data that was written")
        again.close()
        c.close()

        # lines of an arc and of a dialogue go through the review flow like any other
        def run(*args):
            with contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
                return cli.main(["--root", root, "--overlay", overlay, "--db", db] + list(args))
        drafts = [
            {"id": "arc.path.refl.test", "pack": "base_arcs", "event": "arc_step", "speaker": "inner", "styles": ["intimate"],
             "depth": ["natural", "literary", "elevated"], "conditions": {"arc": {"id": "path", "state": "REFLECTED", "choice": "silence"}},
             "author": "ai-test", "texts": {"enUS": ["Quiet, here."], "itIT": ["Silenzio, qui."]}},
            {"id": "npcd.innkeeper.sit.test", "pack": "base_dialogues", "event": "npcd_innkeeper_sit", "speaker": "npc",
             "styles": ["everyday"], "tags": ["other.role:innkeeper"], "weight": 1,
             "conditions": {"other": {"role": "innkeeper"}}, "author": "ai-test",
             "texts": {"enUS": ["Sit, sit."], "itIT": ["Siediti pure."]}}]
        with open(os.path.join(tmp, "drafts.jsonl"), "w", encoding="utf-8", newline="\n") as f:
            f.write("\n".join(json.dumps(x) for x in drafts) + "\n")
        check(run("drafts", os.path.join(tmp, "drafts.jsonl")) == 0 and run("approve", "arc.path.refl.test", "npcd.innkeeper.sit.test") == 0 and
              run("export") == 0, "a draft line of an arc and one of a dialogue are approved and exported")
        reg = packfiles.read(os.path.join(root, "AzerothUnspoken/Data/RegistryArcs.lua"))
        check('["arc.path.refl.test"]' in reg and 'choice = "silence"' in reg and
              '"Quiet, here."' in packfiles.read(os.path.join(root, "AzerothUnspoken_enUS/Arcs.lua")) and
              '"Siediti pure."' in packfiles.read(os.path.join(root, "AzerothUnspoken_itIT/Dialogues.lua")),
              "the rules and the texts land in the files of their pack and language, the arc lines after the journal texts")
        check(store.roundtrip(root) == [] and store.roundtrip(root, canonical=True) == [], "still an empty diff")
        check(run("check") == 0, "the `check` command passes on the written folders")
        check(run("arcs") == 0 and run("scripts") == 0 and run("arcs", "path") == 0 and run("scripts", "innkeeper") == 0 and
              run("arcs", "nothing") == 1, "the commands `arcs` and `scripts` list and show them")
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def world_content():
    """The conditions and lines of R3b (weather, day and night, landmarks, quests, reputation, flight; ADR 0028) are
    plain data for the archive: they import, they render in the canonical style, and a new line written through the
    archive with them exports and round-trips with an empty diff."""
    print("WORLD CONDITIONS (ADR 0028)")
    con = store.build_db(":memory:", ROOT, os.path.join(ROOT, "authoring"))
    rows = con.execute("SELECT id FROM intention WHERE pack_id = 'base_world'").fetchall()
    check(len(rows) >= 60, "the world pack is archived, intention by intention (%d)" % len(rows))
    langs = {r[0]: [v["lang"] for v in con.execute("SELECT lang FROM variant WHERE intention_id = ?", (r[0],))] for r in rows}
    check(all(l.count("enUS") >= 2 and l.count("itIT") >= 2 for l in langs.values()),
          "every world intention has at least two variants in each language")
    used = set()
    for r in rows:
        cond = store.get_rule(con, r[0]).get("conditions") or {}
        used.update(cond.keys())
    needed = {"weather", "landmark", "questReady", "questJustCompleted", "questAttemptsMin", "repStanding", "repDirection",
              "onFlight", "journey", "journeyMin"}
    check(needed <= used, "the new conditions are in archived rules (%s missing)" % sorted(needed - used))
    rule = store.get_rule(con, "world.rain.01")
    check(rule["conditions"] == {"weather": "rain", "not": {"indoors": True}}, "a weather condition is data: %s" % rule["conditions"])
    check(store.index_keys({"weather": "rain"}) == ["*"] and store.index_keys({"landmark": "inn"}) == ["*"],
          "the new conditions are not index dimensions: such a rule is in the generic group, as in the engine")
    check(con.execute("SELECT COUNT(*) FROM intention WHERE pack_id = 'base_world' AND state != 'approved'").fetchone()[0] == 0,
          "the world rules are approved content, like the folders")

    tmp = tempfile.mkdtemp(prefix="au-archive-world-")
    try:
        root, overlay = copy_repo(tmp)
        db = os.path.join(tmp, "build", "authoring.sqlite")

        def run(*args):
            with contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
                return cli.main(["--root", root, "--overlay", overlay, "--db", db] + list(args))
        draft = {"id": "world.test.new", "pack": "base_world", "event": "weather_change", "speaker": "inner",
                 "styles": ["intimate"], "depth": ["natural"],
                 "conditions": {"weather": ["snow", "storm"], "dayTime": False, "landmark": "inn", "questActive": [4711, 4712],
                                "repStanding": "honored", "onFlight": False, "journeyMin": 90, "not": {"indoors": True}},
                 "author": "ai-test", "texts": {"enUS": ["Snow on the road, and night coming.", "Snow again."],
                                                "itIT": ["Neve sulla strada, e la notte che viene.", "Ancora neve."]}}
        with open(os.path.join(tmp, "drafts.jsonl"), "w", encoding="utf-8", newline="\n") as f:
            f.write(json.dumps(draft) + "\n")
        check(run("drafts", os.path.join(tmp, "drafts.jsonl")) == 0, "a draft with the new conditions is accepted")
        check(run("approve", "world.test.new") == 0 and run("export") == 0, "it can be approved and exported")
        rules = packfiles.read(os.path.join(root, "AzerothUnspoken", "Data", "RegistryWorld.lua"))
        check('["world.test.new"]' in rules and 'weather = { "snow", "storm" }' in rules and "dayTime = false" in rules and
              "questActive = { 4711, 4712 }" in rules, "the new conditions are written as Lua data")
        check(store.roundtrip(root) == [] and store.roundtrip(root, canonical=True) == [],
              "the written folders round-trip with an empty diff, canonical rendering included")
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def emotion_content():
    """The conditions and tags of R4 (emotions and intensity traits; ADR 0031) are plain data for the archive: the
    lines of base_emotions import, the new conditions are there, a draft with them is checked, exports and round-trips
    with an empty diff, and the list of emotions is the engine's."""
    print("EMOTIONS AND TRAITS (ADR 0031)")
    import re
    src = open(os.path.join(ROOT, "AzerothUnspoken", "Engine", "RuleEngine.lua"), encoding="utf-8").read()
    m = re.search(r"Engine\.EMOTIONS = \{([^}]*)\}", src)
    check(m is not None and tuple(re.findall(r'"([a-z]+)"', m.group(1))) == store.EMOTIONS,
          "the archive knows the emotions of the engine")
    con = store.build_db(":memory:", ROOT, os.path.join(ROOT, "authoring"))
    rows = [r[0] for r in con.execute("SELECT id FROM intention WHERE pack_id = 'base_emotions'")]
    check(len(rows) >= 30, "the emotions pack is archived, intention by intention (%d)" % len(rows))
    used, tags = set(), set()
    for id in rows:
        rule = store.get_rule(con, id)
        used.update((rule.get("conditions") or {}).keys())
        tags.update(t.split(":")[0] for t in rule.get("tags") or [])
        check(store.check_content(con, id) == [], "%s passes the archive checks" % id)
    check({"emotion", "emotionMin", "traitMin", "traitMax"} <= used, "the new conditions are in archived rules")
    check("emo" in tags, "the emo: tags are archived")
    check(store.get_rule(con, "mem.ret.forest.cheerful")["conditions"].get("lastVisitBad") is False,
          "the #98 guard of a cheerful return is data")
    check(store.index_keys({"emotion": "worried"}) == ["*"] and store.index_keys({"traitMin": {"stoicism": 70}}) == ["*"],
          "emotion and trait conditions are not index dimensions")

    tmp = tempfile.mkdtemp(prefix="au-archive-emo-")
    try:
        root, overlay = copy_repo(tmp)
        db = os.path.join(tmp, "build", "authoring.sqlite")

        def run(*args):
            with contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
                return cli.main(["--root", root, "--overlay", overlay, "--db", db] + list(args))
        good = {"id": "emo.test.new", "pack": "base_emotions", "event": "zone", "speaker": "inner",
                "styles": ["intimate"], "depth": ["natural"], "tags": ["emo:tense", "stoicism>=40"], "theme": "fear",
                "conditions": {"emotion": ["tense", "worried"], "emotionMin": {"tense": 0.3}, "traitMax": {"optimism": 40}},
                "author": "ai-test", "texts": {"enUS": ["Every sound is a footstep today.", "Too quiet."],
                                               "itIT": ["Oggi ogni rumore è un passo.", "Troppo silenzio."]}}
        bad = dict(good, id="emo.test.bad", tags=["emo:bored"], conditions={"emotion": "sleepy", "emotionMin": {"tense": 3}})
        with open(os.path.join(tmp, "drafts.jsonl"), "w", encoding="utf-8", newline="\n") as f:
            f.write(json.dumps(good) + "\n" + json.dumps(bad) + "\n")
        run("drafts", os.path.join(tmp, "drafts.jsonl"))
        check(len(store._emotion_problems(bad["tags"], bad["conditions"])) == 3, "unknown emotions are problems for the archive")
        c2 = store.build_db(":memory:", root, overlay)
        check(c2.execute("SELECT 1 FROM intention WHERE id = 'emo.test.bad'").fetchone() is None and
              c2.execute("SELECT 1 FROM intention WHERE id = 'emo.test.new'").fetchone() is not None,
              "the draft with unknown emotions is refused, the good one is kept")
        c2.close()
        check(run("approve", "emo.test.new") == 0 and run("export") == 0, "a line with emotion conditions is approved and exported")
        rules = packfiles.read(os.path.join(root, "AzerothUnspoken", "Data", "RegistryEmotions.lua"))
        check('["emo.test.new"]' in rules and 'emotionMin = { tense = 0.3 }' in rules and '"stoicism>=40"' in rules,
              "the new conditions and tags are written as Lua data")
        check(store.roundtrip(root) == [] and store.roundtrip(root, canonical=True) == [],
              "the written folders round-trip with an empty diff, canonical rendering included")
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def monologue_content():
    """#99 and #100 (ADR 0032): the monologue fields are columns of their own (not `extra`), the `situation` condition is
    data, and the archive refuses a monologue whose parts are not chainable phrases of its voice."""
    print("MONOLOGUES AND COMPOSITE SITUATIONS (ADR 0032)")
    con = store.build_db(":memory:", ROOT, store._no_overlay())
    road = con.execute("SELECT * FROM intention WHERE id = 'mono.muse.road'").fetchone()
    check(road is not None and road["kind"] == "monologue" and store.jload(road["parts"]) == [
        "mono.muse.road.1", "mono.muse.road.2", "mono.muse.road.3"] and road["extra"] is None,
          "a monologue is archived with kind and parts in their own columns")
    stars = con.execute("SELECT part_order FROM intention WHERE id = 'mono.muse.stars'").fetchone()
    check(stars["part_order"] == "free" and store.get_rule(con, "mono.muse.stars")["order"] == "free",
          "the order of the parts is the column part_order and goes back as `order`")
    part = con.execute("SELECT chainable, extra FROM intention WHERE id = 'mono.muse.road.1'").fetchone()
    check(store.jload(part["chainable"]) == "only" and part["extra"] is None, "a part is archived as chainable = only")
    check(con.execute("SELECT COUNT(*) FROM variant WHERE intention_id = 'mono.muse.road'").fetchone()[0] == 0,
          "a monologue has no texts of its own")
    ids = [r["id"] for r in con.execute("SELECT id FROM intention WHERE pack_id IN ('base_monologues', 'base_situations')")]
    check(len(ids) >= 30 and all(store.check_content(con, i) == [] for i in ids),
          "every monologue, part and composite line passes the archive checks (%d)" % len(ids))
    check(store.get_rule(con, "sit.closecall.inner")["conditions"] == {"situation": "close_call"},
          "the condition `situation` is data")
    check(store.index_keys({"situation": "close_call"}) == ["*"], "a composite situation is not an index dimension")
    check(con.execute("SELECT 1 FROM intention WHERE extra IS NOT NULL AND (extra LIKE '%\"parts\"%' OR"
                      " extra LIKE '%\"chainable\"%' OR extra LIKE '%\"kind\"%')").fetchone() is None,
          "no monologue field is left in `extra`")
    store.ensure_author(con, "ai-test")
    refused = []
    for bad in ({"parts": ["zone.gen.01", "mono.muse.road.2"]}, {"parts": ["mono.muse.road.1"]},
                {"speaker": "character", "parts": ["mono.muse.road.1", "mono.muse.road.2"]}):
        d = dict({"id": "mono.test.bad%d" % len(refused), "pack": "base_monologues", "event": "muse", "speaker": "inner",
                  "styles": ["intimate"], "theme": "journey", "kind": "monologue", "author": "ai-test"}, **bad)
        try:
            store.add_draft(con, d)
            refused.append(False)
        except store.ArchiveError:
            refused.append(True)
    check(refused == [True, True, True],
          "a monologue with a part that is not chainable, with one part, or in a public voice is refused")
    good = {"id": "mono.test.good", "pack": "base_monologues", "event": "muse", "speaker": "inner", "styles": ["intimate"],
            "theme": "journey", "motifs": ["road"], "kind": "monologue", "order": "free",
            "parts": ["mono.muse.road.1", "mono.muse.road.2", "mono.muse.road.3"], "author": "ai-test"}
    store.add_draft(con, good)
    check(store.check_content(con, "mono.test.good", "approve") == [] and store.get_rule(con, "mono.test.good")["parts"] ==
          good["parts"], "a monologue made of existing parts can be drafted and approved without texts")
    rendered = packfiles.render_rule("mono.test.good", store.get_rule(con, "mono.test.good"), "\t\t")
    check('kind = "monologue", order = "free", parts = { "mono.muse.road.1"' in rendered,
          "the canonical style writes the monologue fields on their own line")
    con.close()


def literary_content():
    """#119, #120, #127, #128 (ADR 0043): the verses pack is archived with its literary metadata and the editorial record
    of every piece; drafts of pieces are checked (vocabularies, stanzas), approved only after the review steps in order,
    exported with their metadata, and the export reports the warnings (matrix, words, phrases) without failing."""
    print("LITERARY PIECES (#119, #120, #127, #128)")
    con = store.build_db(":memory:", ROOT, os.path.join(ROOT, "authoring"))
    ids = [r["id"] for r in con.execute("SELECT id FROM intention WHERE pack_id = 'versi' ORDER BY id")]
    check(len(ids) == 43 and not any(i.startswith("versi.test.") for i in ids),
          "the 43 pieces of the verses pack are archived; the lore_test twins are code and stay out (%d)" % len(ids))
    r = store.get_rule(con, "versi.road.stanzas.01")
    check(r["genre"] == "song" and r["purpose"] == "accompany" and r["origin"] == "common" and r["kind"] == "stanzas" and
          r["show"] == 2, "genre, purpose, origin, kind and show are rule fields of their own columns")
    check(con.execute("SELECT COUNT(*) FROM intention WHERE extra LIKE '%genre%' OR extra LIKE '%purpose%'"
                      " OR extra LIKE '%\"show\"%'").fetchone()[0] == 0, "no literary field is left in `extra`")
    check(store.get_variants(con, "versi.road.song.01", "enUS")[0]["depth"] == ["literary", "elevated"],
          "a variant written for two depths keeps its list")
    check(len(store.get_variants(con, "versi.road.stanzas.01", "itIT")) == 5, "a song of stanzas: its frame and four stanzas")
    rows = con.execute("SELECT * FROM piece ORDER BY content_id").fetchall()
    done = [x["content_id"] for x in rows if x["metre_status"] == "ok" and x["lore_status"] == "none" and x["originality_status"] == "ok"]
    # N9 (#221): 21 more pieces, every one waiting for the owner too
    n9 = ["versi.culture.dwarf.01", "versi.culture.forsaken.01", "versi.culture.gnome.01", "versi.culture.human.01",
          "versi.culture.kaldorei.01", "versi.culture.orc.01", "versi.culture.queldorei.01", "versi.culture.tauren.01",
          "versi.culture.troll.01", "versi.inn.saying.orc.01", "versi.inn.stanzas.01", "versi.inn.tale.tauren.01",
          "versi.lament.ally.02", "versi.lament.ally.03", "versi.lament.npc.02", "versi.lament.pet.02",
          "versi.nemesis.song.04", "versi.nemesis.song.05", "versi.nemesis.song.06", "versi.nemesis.song.07",
          "versi.tale.road.01"]
    # #102: two pieces of each area of the trial slice, in the regional packs, waiting for the owner too
    r5 = ["dur.lore.razorhill.saying.01", "dur.lore.senjin.song.01", "elw.lore.abbey.inscription.01",
          "elw.lore.inn.rhyme.01", "org.lore.drag.song.01", "org.lore.honor.formula.01", "sw.lore.canal_song",
          "sw.lore.masons"]
    waiting = sorted(["versi.lament.ally.01", "versi.lament.npc.01", "versi.lament.pet.01", "versi.nemesis.song.01",
                      "versi.nemesis.song.02", "versi.nemesis.song.03", "versi.road.stanzas.01"] + n9 + r5)
    check(len(rows) == 51 and len(done) == 15 and not any(w in done for w in waiting),
          "every piece has its editorial record (authoring/pieces.csv, seen through the view `piece`): the 15 of L0 reviewed, "
          "the song of stanzas (L3), the three songs of a nemesis's fall (N7), the three laments (N8), the 21 pieces of N9 "
          "and the 8 of the trial slice (#102) waiting for the owner")
    report = store.literary_report(con)
    check(report == [(w, "approved, but its review is not complete: metre, lore, originality pending") for w in waiting],
          "the only literary warnings of the repository: the new songs wait for the owner's review (%s)" % report[:5])
    check(all(store.check_content(con, i, "draft") == [] for i in ids), "every piece passes the archive checks")
    con.close()

    # the warnings of literary.py, on samples
    lit = {"event": ["death"], "tags": ["lore"], "genre": "song", "purpose": "amuse", "styles": ["everyday"],
           "conditions": {"place": {"tags": ["cursed"]}, "not": {"time": "night"}}}
    w = literary.warnings(lit, {"enUS": ["A song:\nnot all who wander\nunder the night", "A song:\none"],
                                "itIT": ["Una canzone:\nuno\ndue\ntre", "Una canzone:\nuno"]}, ROOT)
    check(any("matrix row amuse_in_grief" in x for x in w), "the matrix: amuse with a death or a cursed place")
    check(any("names 'night'" in x for x in w), "a warning word without its condition (`not` is no condition)")
    check(any("warning phrase 'not all who wander'" in x for x in w), "a warning phrase of CONTRIBUTING.md")
    check(any("verses per variant" in x for x in w), "the verses across languages")
    ok = dict(lit, event=["zone"], purpose="remember", conditions={"time": "night"})
    check(literary.warnings(ok, {"enUS": ["A song:\nunder the night"], "itIT": ["Canto:\nsotto la notte"]}, ROOT) == [],
          "and none for a piece whose rule asks what it names")
    check("place.tags=cursed" in literary.facts(lit) and "time" not in literary.facts(lit) and "time=night" in literary.facts(ok),
          "the facts of a rule, as the validator reads them")
    check(literary.origin_problem("culture:dwarf") is None and literary.origin_problem("race:orc") and
          literary.origin_problem("culture:Orc"), "origin: common, personal or culture:<people> (D17)")
    cultures = literary.data(ROOT).get("cultures") or []
    check("dwarf" in cultures and literary.origin_problem("culture:dwarf", cultures) is None and
          literary.origin_problem("culture:atlantean", cultures), "#124: only a declared culture, read from Data/Themes.lua")

    tmp = tempfile.mkdtemp(prefix="au-archive-lit-")
    try:
        root, overlay = copy_repo(tmp)
        db = os.path.join(tmp, "build", "authoring.sqlite")
        out = io.StringIO()

        def run(*args):
            with contextlib.redirect_stdout(out), contextlib.redirect_stderr(io.StringIO()):
                return cli.main(["--root", root, "--overlay", overlay, "--db", db, "--author", "ai-test"] + list(args))
        frame = "A test song:\n{stanzas}\n\nSo sing it once,\nand sing it twice."
        st = ["the cat sat on the mat today\nthe dog lay by the door\nthe bird flew high above the hay\nthe fish swam near the shore",
              "the cow stood in the field all day\nthe pig slept in the straw\nthe goat ran up the hill to play\nthe horse stood by the saw",
              "the fox went down the lane at dusk\nthe owl sat on the beam\nthe hare ran past the empty husk\nthe trout lay in the stream"]
        frame_it = "Una canzone di prova:\n{stanzas}\n\nCantala una volta,\ne poi ancora."
        st_it = ["la gatta dorme sopra il tetto\nil cane guarda la via\nil merlo canta sul suo letto\nil pesce nuota via",
                 "la mucca bruca dentro il prato\nil porco dorme al sole\nla capra salta sul selciato\nil mulo non ne vuole",
                 "la volpe scende per la strada\nil gufo veglia in alto\nla lepre corre nella biada\nla trota fa un salto"]
        base = {"pack": "versi", "event": "travel", "speaker": "inner", "styles": ["everyday"], "tags": ["lore", "genre_road_song"],
                "genre": "song", "purpose": "accompany", "origin": "common", "conditions": {"combat": False}}
        lines = [
            dict(base, id="versi.test.draft.song", kind="stanzas", show=1, piece={"meter": "8.6.8.6", "rhyme_scheme": "XAXA",
                 "lines": 4, "stanzas": 3, "refrain": 1, "singable": 1}, texts={"enUS": [frame] + st, "itIT": [frame_it] + st_it}),
            dict(base, id="versi.test.draft.two", kind="stanzas", texts={"enUS": [frame] + st[:2], "itIT": [frame_it] + st_it[:2]}),
            dict(base, id="versi.test.draft.genre", genre="limerick", texts={}),
            dict(base, id="versi.test.draft.race", origin="race:orc", texts={}),
            dict(base, id="versi.test.draft.hole", texts={"enUS": ["A song:\nsing, {player}"], "itIT": ["Canto:\ncanta"]}),
            {"id": "zone.test.purpose", "pack": "base_exploration", "event": "zone", "speaker": "inner", "purpose": "amuse",
             "texts": {}},
        ]
        drafts = os.path.join(tmp, "drafts.jsonl")
        with open(drafts, "w", encoding="utf-8", newline="\n") as f:
            f.write("\n".join(json.dumps(x) for x in lines) + "\n")
        check(run("drafts", drafts) == 1, "drafts of pieces: two stanzas, an unknown genre, a race as origin, a placeholder in a "
              "song, a purpose on a line that is not literary are refused")
        con = store.connect(db)
        check([r[0] for r in con.execute("SELECT id FROM intention WHERE state = 'draft'")] == ["versi.test.draft.song"],
              "the good song of stanzas is kept as a draft")
        m = con.execute("SELECT * FROM piece_meta WHERE intention_id = 'versi.test.draft.song'").fetchone()
        check(m["meter"] == "8.6.8.6" and m["stanzas"] == 3 and m["metre_status"] == "pending",
              "its editorial record starts with the draft, every review step pending")
        con.close()
        check("versi.test.draft.song" in packfiles.read(os.path.join(overlay, "pieces.csv")), "the record is in the overlay")
        check(run("approve", "versi.test.draft.song") == 1, "a piece is not approved before its review")
        check(run("piece", "versi.test.draft.song", "--lore", "none") == 1, "the lore review comes after the metre review")
        check(run("piece", "versi.test.draft.song", "--metre", "ok") == 0 and run("piece", "versi.test.draft.song", "--lore", "none") == 0
              and run("piece", "versi.test.draft.song", "--originality", "ok") == 0, "metre and language, lore, originality, in order")
        check(run("approve", "versi.test.draft.song") == 0, "then it is approved")
        out.truncate(0)
        check(run("export") == 0, "export")
        text = packfiles.read(os.path.join(root, "AzerothUnspoken_Versi", "Registry.lua"))
        check('["versi.test.draft.song"]' in text and 'genre = "song", purpose = "accompany", origin = "common"' in text and
              'kind = "stanzas", show = 1' in text, "the rule is written with its literary metadata and its stanza fields")
        check("{stanzas}" in packfiles.read(os.path.join(root, "AzerothUnspoken_Versi", "Texts_itIT.lua")),
              "its frame and stanzas are written in the texts of each language")
        check("literary pieces: 36 warnings" in out.getvalue() and "originality pending" in out.getvalue(),
              "the export reports the literary warnings (here: the new songs of the repository wait for the owner's review)")
        check(store.roundtrip(root) == [], "the round trip of the exported folders is still an empty diff")
        check(lua_syntax_ok([os.path.join(root, "AzerothUnspoken_Versi", f) for f in ("Registry.lua", "Texts_enUS.lua")]) in
              (None, []), "the written files are valid Lua")
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def file_limits():
    """Lua 5.1 keeps at most 262,143 constants in one function (#138): no data file comes near it, and a texts file that is
    full sends the new entries of its pack and language to a new file listed in the .toc, which round-trips."""
    print("CONSTANTS PER FILE (Lua 5.1: %s per function)" % "{:,}".format(packfiles.LUA_MAX_CONSTANTS))
    worst = max((packfiles.constants(packfiles.read(os.path.join(ROOT, rel))), rel) for _, rel, _, _ in store.discover(ROOT))
    check(worst[0] < packfiles.SAFE_CONSTANTS // 4, "every data file is far under the bound: at most %s constants (%s)" % (
        "{:,}".format(worst[0]), worst[1]))
    synthetic = "\n".join('["syn.%06d"] = { "text %d" },' % (i, i) for i in range(1, 50))
    check(packfiles.constants(synthetic) == 98 and packfiles.constants('x = [==[ "a", "b" ]==]') == 1,
          "the count is the distinct strings and numbers; a source is one string")

    tmp = tempfile.mkdtemp(prefix="au-archive-split-")
    limit = store.TEXTS_PER_FILE
    try:
        root, overlay = copy_repo(tmp)
        db = os.path.join(tmp, "build", "authoring.sqlite")
        world = os.path.join(root, "AzerothUnspoken_enUS", "World.lua")
        held = len(packfiles.parse_texts("World.lua", packfiles.read(world)).entries)

        def run(*args):
            with contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
                return cli.main(["--root", root, "--overlay", overlay, "--db", db] + list(args))
        drafts = [{"id": "world.split.%02d" % i, "pack": "base_world", "event": "weather_change", "speaker": "inner",
                   "styles": ["intimate"], "depth": ["natural"], "conditions": {"weather": "fog"}, "author": "ai-test",
                   "texts": {"enUS": ["Fog %d, and the road gone." % i, "Fog again, %d." % i],
                             "itIT": ["Nebbia %d, e la strada sparita." % i, "Ancora nebbia, %d." % i]}} for i in range(3)]
        with open(os.path.join(tmp, "drafts.jsonl"), "w", encoding="utf-8", newline="\n") as f:
            f.write("".join(json.dumps(d) + "\n" for d in drafts))
        store.TEXTS_PER_FILE = held + 1
        ok = run("drafts", os.path.join(tmp, "drafts.jsonl")) == 0 and \
            run("approve", *["world.split.%02d" % i for i in range(3)]) == 0 and run("export") == 0
        check(ok, "three new lines are approved and exported with a bound of %d entries per texts file" % (held + 1))
        second = os.path.join(root, "AzerothUnspoken_enUS", "World_2.lua")
        texts = packfiles.read(world)
        check('["world.split.00"]' in texts and '["world.split.01"]' not in texts,
              "the full file takes one entry, up to the bound")
        check(os.path.exists(second) and '["world.split.01"]' in packfiles.read(second) and
              packfiles.read(second).startswith("-- Continued from World.lua"),
              "the next ones go to a new file of the same pack and language")
        toc = store.parse_toc(os.path.join(root, "AzerothUnspoken_enUS", "AzerothUnspoken_enUS.toc"))[1]
        check("World_2.lua" in toc and toc.index("World_2.lua") == toc.index("World.lua") + 1,
              "the new file is listed in the .toc right after the first one")
        check(lua_syntax_ok([second]) in (None, []), "it is valid Lua")
        store.TEXTS_PER_FILE = limit
        con = store.build_db(":memory:", root, store._no_overlay())
        check([v["text"] for v in store.get_variants(con, "world.split.02", "enUS")] == ["Fog 2, and the road gone.", "Fog again, 2."],
              "the archive reads the new file back")
        check(store.roundtrip(root) == [] and store.roundtrip(root, canonical=True) == [],
              "the written folders round-trip with an empty diff")
    finally:
        store.TEXTS_PER_FILE = limit
        shutil.rmtree(tmp, ignore_errors=True)


def lualit_checks():
    print("LUA LITERALS")
    import lualit
    p = lualit.Parser('x = { ["a.b"] = { "one", { "two", depth = "natural" } }, n = -1.5, t = true, ["not"] = { r = 1 } } -- c')
    p.skip_to("x")
    p.expect("=")
    v = lualit.to_python(p.value())
    check(v["a.b"][1] == {lualit.POS: ["two"], "depth": "natural"} and v["n"] == -1.5 and v["t"] is True,
          "tables, nested tables, numbers and booleans are read")
    check(lualit.quote('a "b"\n\\') == '"a \\"b\\"\\n\\\\"' and lualit.literal({"a": [1, "x"], "b c": True}) ==
          '{ a = { 1, "x" }, ["b c"] = true }', "strings and tables are written back as Lua source")
    raised = False
    try:
        q = lualit.Parser('x = { a = f(1) }')
        q.skip_to("x")
        q.expect("=")
        q.value()
    except lualit.Unsupported:
        raised = True
    check(raised, "a function call is refused as not being data")


def review_flow():
    print("REVIEW FLOW (temporary copy)")
    tmp = tempfile.mkdtemp(prefix="au-archive-")
    try:
        root, overlay = copy_repo(tmp)
        db = os.path.join(tmp, "build", "authoring.sqlite")
        def run(*args):
            with contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
                return cli.main(["--root", root, "--overlay", overlay, "--db", db] + list(args))
        drafts = os.path.join(tmp, "drafts.jsonl")
        lines = [
            {"id": "zone.test.new.01", "pack": "base_exploration", "event": "zone", "speaker": "inner", "styles": ["intimate"],
             "depth": ["natural", "literary"], "tags": ["melancholy", "topic:test"], "weight": 2,
             "theme": "nature", "motifs": ["tree", "dawn"],
             "conditions": {"mood": "forest", "any": [{"time": "dawn"}, {"time": "dusk"}]}, "author": "ai-test",
             "texts": {"enUS": ["{zone}. A line written through the archive.", {"text": "Another one.", "depth": "natural"}],
                       "itIT": ["{zone}. Una riga scritta con l'archivio."]}},
            {"id": "zone.test.kal.01", "pack": "kalimdor_exploration", "event": "zone", "speaker": "character",
             "styles": ["epic"], "conditions": {"zone": "Durotar"}, "author": "ai-test",
             "texts": {"enUS": ["Red earth."], "itIT": ["Terra rossa."]}},
            {"id": "zone.test.half", "pack": "base_exploration", "event": "zone", "speaker": "inner", "styles": ["intimate"],
             "author": "ai-test", "texts": {"enUS": ["Only English."]}},
            {"id": "zone.test.lore", "pack": "base_exploration", "event": "zone", "speaker": "narrator", "styles": ["ancient"],
             "invented_lore": True, "author": "ai-test", "texts": {"enUS": ["They say a king sleeps here."], "itIT": ["Dicono che qui dorma un re."]}},
            {"id": "zone.gen.01", "pack": "base_exploration", "event": "zone", "speaker": "inner", "texts": {}},
            {"id": "zone.test.pack", "pack": "no_such_pack", "event": "zone", "speaker": "inner", "texts": {}},
            {"id": "zone.test.voice", "pack": "base_exploration", "event": "zone", "speaker": "bard", "texts": {}},
            {"id": "zone.test.theme", "pack": "base_exploration", "event": "zone", "speaker": "inner", "theme": "boredom",
             "texts": {}},
            {"id": "zone.test.motifs", "pack": "base_exploration", "event": "zone", "speaker": "inner", "theme": "nature",
             "motifs": ["tree", "leaf", "roots", "grass"], "texts": {}},
        ]
        with open(os.path.join(tmp, "drafts.jsonl"), "w", encoding="utf-8", newline="\n") as f:
            f.write("\n".join(json.dumps(x) for x in lines) + "\n")
        check(run("drafts", drafts) == 1, "drafts: the invalid ones (repeated id, unknown pack, unknown voice, unknown theme, "
              "four motifs) are refused")
        con = store.connect(db)
        check(con.execute("SELECT COUNT(*) FROM intention WHERE state = 'draft'").fetchone()[0] == 4, "the four valid drafts are kept")
        check(all(os.path.exists(os.path.join(overlay, f)) for f in store.OVERLAY_TABLES), "the overlay files are written")
        csv_text = packfiles.read(os.path.join(overlay, "intentions.csv"))
        check("\r" not in csv_text and "zone.test.new.01" in csv_text, "the overlay is LF text with one row per intention")
        before = {p: packfiles.read(os.path.join(root, p)) for p in (r["path"] for r in con.execute("SELECT path FROM source_file"))}
        con.close()

        check(run("export") == 0 and all(packfiles.read(os.path.join(root, p)) == t for p, t in before.items()),
              "export with only drafts writes nothing: only approved content is exported")
        check(run("approve", "zone.test.new.01") == 0, "the owner can approve a draft straight away")
        con = store.connect(db)
        check(con.execute("SELECT state FROM intention WHERE id = 'zone.test.new.01'").fetchone()[0] == "approved",
              "its state is approved")
        con.close()
        refused = run("approve", "zone.test.half") == 1
        con = store.connect(db)
        check(refused and con.execute("SELECT state FROM intention WHERE id = 'zone.test.half'").fetchone()[0] == "draft",
              "approval is refused when a language of the pack has no text")
        con.close()
        check(run("approve", "zone.test.lore") == 1, "approval is refused for invented lore in a narrator line without attribution (D7)")
        check(run("submit", "zone.test.kal.01", "zone.test.lore") == 0 and run("reject", "zone.test.lore", "--note", "needs a voice") == 0,
              "submit and reject move a draft through review")
        check(run("approve", "zone.test.kal.01", "--note", "fine") == 0, "an intention in review is approved")
        check(run("retire", "zone.gen.02", "--note", "replaced") == 0, "an approved intention of the folders can be retired")
        check(run("approve", "zone.gen.02") == 1, "a retired intention cannot be approved again, only restored")

        check(run("export") == 0, "export runs")
        con = store.connect(db)
        rules = packfiles.read(os.path.join(root, "AzerothUnspoken", "Data", "RegistryExploration.lua"))
        texts_en = packfiles.read(os.path.join(root, "AzerothUnspoken_enUS", "Exploration.lua"))
        texts_it = packfiles.read(os.path.join(root, "AzerothUnspoken_itIT", "Exploration.lua"))
        kal = packfiles.read(os.path.join(root, "AzerothUnspoken_Kalimdor", "Exploration.lua"))
        kal_en = packfiles.read(os.path.join(root, "AzerothUnspoken_Kalimdor_enUS", "Exploration.lua"))
        check('["zone.test.new.01"] = { event = "zone", speaker = "inner", styles = { "intimate" },' in rules and
              'any = { { time = "dawn" }, { time = "dusk" } }' in rules and "weight = 2" in rules,
              "the approved rule is appended to the rules file of its pack in the canonical style")
        check('theme = "nature", motifs = { "tree", "dawn" }' in rules, "theme and motifs are written on their own line (#90)")
        check('"{zone}. A line written through the archive."' in texts_en and '{ "Another one.", depth = "natural" }' in texts_en and
              "Una riga scritta con l'archivio." in texts_it, "its texts are appended to the file of each language")
        check('["zone.test.kal.01"]' in kal and '"Red earth."' in kal_en, "a regional intention goes to the folders of its region")
        check(kal.index("[==[") < kal.index('["zone.test.kal.01"]') < kal.index("]==]") and
              kal_en.index("[==[") < kal_en.index('"Red earth."') < kal_en.index("]==]"),
              "C0b: in a regional source the new entry is written inside the string of the entries")
        check('["zone.gen.02"]' not in rules and '["zone.gen.02"]' not in texts_en and '["zone.gen.02"]' not in texts_it,
              "the retired intention leaves the rules and the texts of every language")
        check("zone.test.half" not in rules and "zone.test.lore" not in rules, "what is not approved stays out of the folders")
        check(rules.count('["zone.gen.03"]') == 1 and rules.startswith(before["AzerothUnspoken/Data/RegistryExploration.lua"][:200]),
              "the other entries and the comments are untouched")
        bad = lua_syntax_ok([os.path.join(root, p) for p in before])
        check(bad is None or bad == [], "every exported file is valid Lua 5.1%s" % ("" if bad is not None else " (lupa not installed: not checked)"))
        overlay_ids = packfiles.read(os.path.join(overlay, "intentions.csv"))
        check("zone.test.new.01" not in overlay_ids and "zone.test.kal.01" not in overlay_ids and "zone.gen.02" in overlay_ids and
              "zone.test.half" in overlay_ids, "approved content leaves the overlay (it lives in the folders now); retired and drafts stay")
        check("approve" in packfiles.read(os.path.join(overlay, "changelog.csv")) and
              "fine" in packfiles.read(os.path.join(overlay, "reviews.csv")), "the changelog and the reviews keep the history")

        # a new database from the folders and the overlay says the same
        con.close()
        con2 = store.build_db(":memory:", root, overlay)
        states = dict(con2.execute("SELECT id, state FROM intention WHERE id LIKE 'zone.test.%' OR id = 'zone.gen.02'").fetchall())
        check(states == {"zone.test.new.01": "approved", "zone.test.kal.01": "approved", "zone.test.half": "draft",
                         "zone.test.lore": "draft", "zone.gen.02": "retired"}, "rebuilding from the folders and the overlay gives the same states")
        check(store.get_variants(con2, "zone.test.new.01", "enUS")[1] == {"text": "Another one.", "depth": "natural"} and
              store.get_rule(con2, "zone.test.new.01")["conditions"]["any"][1] == {"time": "dusk"} and
              store.get_rule(con2, "zone.test.new.01")["motifs"] == ["tree", "dawn"],
              "what was written reads back as the same data")
        check(store.roundtrip(root) == [], "the written folders still round-trip with an empty diff")

        # an edit of an approved intention through the overlay replaces the folder version, in place
        before_rules = packfiles.read(os.path.join(root, "AzerothUnspoken", "Data", "RegistryExploration.lua"))
        con2.execute("UPDATE intention SET weight = 3, origin = 'overlay' WHERE id = 'zone.gen.03'")
        store.publish(con2, root, overlay)
        after = packfiles.read(os.path.join(root, "AzerothUnspoken", "Data", "RegistryExploration.lua"))
        check(after != before_rules and after.count("weight = 3") == 1 and after.count('["zone.gen.03"]') == 1,
              "an edited approved intention is rendered again where it was")

        # searches
        def loud(*args):
            buf = io.StringIO()
            with contextlib.redirect_stdout(buf):
                cli.main(["--root", root, "--overlay", overlay, "--db", db] + list(args))
            return buf.getvalue()
        text = (loud("search", "--event", "zone", "--tag", "topic:test", "--voice", "inner", "--state", "approved") +
                loud("search", "--text", "red earth", "--lang", "enUS", "--region", "kalimdor") + loud("list"))
        check("zone.test.new.01" in text and "zone.test.kal.01" in text and "zone.test.half" in text,
              "search by event, tag, voice, state, region and text; list shows the drafts")
        shown = loud("show", "zone.test.new.01")
        check("review" in shown and "approvable" in shown and "Another one." in shown, "show prints the rule, the texts and the history")
        a = packfiles.read(os.path.join(overlay, "intentions.csv"))
        con3 = store.connect(db)
        store.save_overlay(con3, overlay)
        con3.close()
        check(packfiles.read(os.path.join(overlay, "intentions.csv")) == a, "saving the overlay twice gives the same text")
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def report():
    print("COVERAGE AND GAP REPORT")
    con = store.build_db(":memory:", ROOT, os.path.join(ROOT, "authoring"))
    th = coverage.load_thresholds()
    check(th["k"] >= 1 and "repeat_window" in th, "the thresholds file loads (tools/archive/thresholds.json)")
    res = coverage.compute(con, th)
    check(res["intentions"] == con.execute("SELECT COUNT(*) FROM intention WHERE state = 'approved'").fetchone()[0],
          "intentions are counted, not texts (%d intentions, texts %s)" % (res["intentions"], res["variants"]))
    check(all(n >= res["intentions"] for n in res["variants"].values()), "variants per language are reported alongside")
    check(len(res["cells"]) > 100 and any(c["context"] != "*" for c in res["cells"]), "event x context cells are built")
    check(all(c["eligible"] >= c["intentions"] for c in res["cells"]), "eligible counts the generic intentions of the event too")
    check(res["gaps"] == sorted(res["gaps"], key=lambda c: (c["eligible"], c["event"], c["context"])), "gaps are listed poorest first")
    strict = coverage.compute(con, dict(th, k=1000))
    loose = coverage.compute(con, dict(th, k=1, k_variants=1))
    check(len(strict["gaps"]) == len(strict["cells"]) and len(loose["gaps"]) < len(res["gaps"]), "the threshold k changes the gaps")
    md = coverage.to_markdown(res)
    check(md.startswith("# Content coverage report") and "## Gaps" in md and "## Repetition" in md and "\r" not in md,
          "the Markdown report has the headline, the tables, the gaps and the repetition proxies")
    check(isinstance(coverage.warnings(res), list) and json.dumps(res) is not None, "warnings are plain strings and the report is JSON")
    check(coverage.compute(con, th, "draft")["intentions"] == 0, "another state can be asked for")
    with tempfile.TemporaryDirectory() as tmp:
        with contextlib.redirect_stdout(io.StringIO()):
            rc = cli.main(["--db", os.path.join(tmp, "a.sqlite"), "report", "--top", "3", "--json", os.path.join(tmp, "r.json"),
                           "--markdown", os.path.join(tmp, "r.md")])
        check(rc == 0 and json.load(open(os.path.join(tmp, "r.json"), encoding="utf-8"))["intentions"] == res["intentions"] and
              os.path.getsize(os.path.join(tmp, "r.md")) > 0, "the command writes the Markdown and the JSON and never fails the build")
        with contextlib.redirect_stdout(io.StringIO()):
            rc = cli.main(["--db", os.path.join(tmp, "a.sqlite"), "report", "--top", "1", "--strict"])
        check(rc == 1, "with --strict a breached threshold fails (not used in CI)")
    print("  headline: %d intentions, texts %s, %d cells, %d under the thresholds, %d events under the repetition window" %
          (res["intentions"], res["variants"], len(res["cells"]), len(res["gaps"]), len(res["repeat"]["below_window"])))


def need_report():
    print("NEED OF THE CONTENT WAVES (C0c, ADR 0050)")
    con = store.build_db(":memory:", ROOT, os.path.join(ROOT, "authoring"))
    model = need.load_model()
    places = need.world(ROOT)
    check(places["Orgrimmar"]["setting"] == "city" and places["Molten Core"]["kind"] == "raid" and
          places["Durotar"]["mood"] == "desert" and places["Stranglethorn Vale"]["faction"] is None,
          "the places of the era come from Data/Places.lua with their moods (%d places)" % len(places))
    rate, factors = need.rates(model)
    check(all(abs(sum(r.values()) - model["interventions_per_hour"]) < 1e-6 for r in rate.values()),
          "every setting speaks at the default pace (%g interventions per hour)" % model["interventions_per_hour"])
    check(rate["open"]["muse"] > rate["open"]["battle"] > 0 and "weather_change" not in rate["instance"] and
          rate["instance"].get("encounter_end", 0) > 0 and
          {c for c, x in factors["pet_bond"].items() if x} == {"HUNTER"},
          "measured and assumed rates: the speak key and fights in the open, no weather inside, companions by class")
    # C0g (ADR 0054): the events a class changes come with its factor, and what it cannot fire with none
    cf = lambda ev, c: need.class_factor(factors, ev, c)   # noqa: E731
    check(set(need.all_classes(model)) == {"WARRIOR", "PALADIN", "HUNTER", "ROGUE", "PRIEST", "SHAMAN", "MAGE", "WARLOCK",
                                           "DRUID"} and
          all(set(factors[e]) == set(need.all_classes(model)) for e in ("heal", "buff", "rezother")),
          "every class of the era has a factor on heal, buff and rezother")
    check(cf("heal", "PRIEST") > cf("heal", "WARRIOR") > 0 and cf("buff", "PRIEST") > cf("buff", "WARRIOR") > 0 and
          cf("rezother", "WARRIOR") == cf("rezother", "ROGUE") == cf("rezother", "MAGE") == 0 and
          cf("muse", "WARRIOR") == cf("battle", "MAGE") == 1,
          "a healer heals more than a warrior, who heals on bandages and buffs on Battle Shout; no warrior, rogue or mage "
          "raises the dead; the other events are the same for every class")
    try:
        need.rates(dict(model, class_rates={"buff": {"DEATHKNIGHT": 1}}))
        bad = False
    except ValueError:
        bad = True
    check(bad, "a factor for a class the model does not know is refused")
    sh = need.shares(model, "npcd_guard_open")
    check(sh["place"] == 0.5 and abs(sum(sh.values()) - 1) < 1e-9 and need.shares(model, "nemesis_song") == {"generic": 1.0},
          "the shares of a layer group (with a wildcard) add up to one with the generic share")
    # #138 (ADR 0051): the levels of specificity share the firings as the engine mixes them
    lua = packfiles.read(os.path.join(ROOT, "AzerothUnspoken", "Engine", "WeightedSelector.lua"))
    engine = {need.LEVELS[int(k)]: float(v) for k, v in
              re.findall(r"\[(\d)\] = ([\d.]+)", re.search(r"Engine\.TIER_SHARES = \{([^}]*)\}", lua).group(1))}
    total = sum(engine.values())
    check(set(engine) == set(model["tier_shares"]) and
          all(abs(engine[l] / total - model["tier_shares"][l]) < 1e-9 for l in engine),
          "the model plans with the engine's shares of the levels: %s" % model["tier_shares"])
    muse = need.shares(model, "muse")
    sit = sum(v for k, v in muse.items() if need.level(k) == "situation")
    check(abs(muse["place"] - 0.5) < 1e-9 and abs(sit - 0.35) < 1e-9 and abs(muse["generic"] - 0.15) < 1e-9 and
          muse["class"] > muse["mood"], "muse: place 50%, situation 35% split by the weights, generic 15%")
    rel = need.shares(model, "relation_player")
    check("place" not in rel and abs(rel["generic"] - 0.3) < 1e-9,
          "an event with no place pools: situation and generic renormalised (%.0f%% generic)" % (100 * rel["generic"]))
    inside = need.channel_shares(model, "muse")[need.CHANNELS.index((2, False))]
    check("mood" not in inside and "weather" not in inside and abs(sum(inside.values()) - 1) < 1e-9 and
          inside["class"] > muse["class"] and abs(inside["generic"] - 0.15) < 1e-9,
          "a layer that does not hold (no mood, no weather inside) leaves its share to the other layers of its level")
    chars = need.characters(model)
    orc = next(c for c in chars if c["race"] == "Orc")
    slots = need.timeline(model, orc, places)
    check(len(slots) == int(model["life_hours"] / model["slot_hours"]) and slots[0] == ("Durotar", "1-10") and
          slots[-1][1] == "60" and {p for p, _ in slots[:20]} <= {"Durotar", "Orgrimmar"},
          "a life is %d slots: the starting zone first, the life at 60 last" % len(slots))
    check(sum(1 for p, b in slots if b == "60" and places[p]["kind"] == "raid") > 0 and
          sum(1 for p, b in slots if p == "Orgrimmar") > sum(1 for p, b in slots if p == "Undercity") > 0,
          "the endgame visits raids, and the home capital more than the others")
    pools, _ = need.need(model, places)
    check(all(p["need_soft"] <= p["need_strict"] for p in pools.values()), "the soft need of a pool is never above its strict need")
    start = pools[("muse", "place", "mulgore")]
    check(start["need_soft"] == start["need_strict"] > 0, "a starting zone lived in less than 40 hours needs the same in both")
    gen = pools[("muse", "generic", "")]
    check(gen["need_soft"] < gen["need_strict"] / 5, "a generic pool spread over the life needs far less in 40 hours")
    check(("muse", "place", "stranglethornvale@horde") in pools and ("muse", "place", "stranglethornvale@alliance") in pools
          and ("muse", "place", "durotar@horde") not in pools, "a contested zone has a pool per faction, a faction zone one")
    check(("pet_bond", "class", "hunter") in pools and ("pet_bond", "class", "mage") not in pools,
          "the companions speak only for their classes")
    # C0g (ADR 0054): a class pool fires at the factor of its class; a class that cannot fire an event has no pool of it
    hp, hw = pools[("heal", "class", "priest")]["strict"], pools[("heal", "class", "warrior")]["strict"]
    check(abs(hp / hw - cf("heal", "PRIEST") / cf("heal", "WARRIOR")) < 1e-6,
          "the heal pool of the priest fires %.0f times that of the warrior, as their factors" % (hp / hw))
    check(all(("rezother", "class", c) not in pools for c in ("warrior", "rogue", "mage")) and
          ("rezother", "class", "priest") in pools, "no rezother pool for the classes that cannot raise the dead")
    no_buff = dict(model, class_rates=dict(model["class_rates"], buff=dict(model["class_rates"]["buff"], WARRIOR=0)))
    pnb, _ = need.need(no_buff, places)
    check(("buff", "class", "warrior") in pools and ("buff", "class", "warrior") not in pnb and
          pnb[("buff", "class", "rogue")]["strict"] == pools[("buff", "class", "rogue")]["strict"],
          "a warrior that cannot buff gets no buff need; the other classes keep theirs")
    gen = pools[("heal", "generic", "")]["strict"]
    flat = dict(model, class_rates={})
    pflat, _ = need.need(flat, places)
    top = max(model["class_rates"]["heal"].values())
    check(0.8 * top < gen / pflat[("heal", "generic", "")]["strict"] < top + 1e-6,
          "a pool shared by every class (generic heal) fires for the character that fires it most: the healers")
    fast = dict(model, interventions_per_hour=2 * model["interventions_per_hour"])
    p2, _ = need.need(fast, places)
    total = sum(p["need_strict"] for p in pools.values())
    check(1.9 * total < sum(p["need_strict"] for p in p2.values()) < 2.1 * total, "the need grows with the pace")
    # what an intention of today counts for
    cl = lambda c, area=None: need.classify(c, area, places, model)   # noqa: E731
    check(cl({"zone": "Orgrimmar"}) == [("place", "orgrimmar")] and
          cl({"zone": "Stranglethorn Vale"}) == [("place", "stranglethornvale@alliance"), ("place", "stranglethornvale@horde")] and
          cl({"zone": "Ashenvale", "faction": "Horde"}) == [("place", "ashenvale@horde")] and
          cl({"subzone": "Razor Hill"}, "durotar") == [("place", "durotar")] and
          cl({"class": "HUNTER", "time": "night"}) == [("class", "hunter")] and cl({"race": "Scourge"}) == [("race", "scourge")] and
          cl({"levelMin": 45}) == [("band", "40-50"), ("band", "50-60"), ("band", "60")] and
          cl({"relation": "friend"}) == [("generic", "")] and cl(None) == [("generic", "")],
          "an intention counts for the pool of its first condition (zone, class, race... level band) or the generic one")
    check(need.usable([{"depth": None}, {"depth": "natural"}, {"depth": "literary"}], "literary") == 2 and
          need.usable([{"depth": "natural"}, {"depth": "elevated"}], "literary") == 2 and
          need.usable([{"depth": '["literary","elevated"]'}], "literary") == 1,
          "texts usable at the default depth: of that depth or none, all of them when no variant is")
    check(4.5 < need.random_factor(0.10) < 5.0 and 9.5 < need.random_factor(0.05) < 10.0,
          "a random pick needs about 5 times its firings for 10%% of repeats, 10 times for 5%% (%.2f, %.2f)" % (
              need.random_factor(0.10), need.random_factor(0.05)))
    res = need.compute(con, ROOT, model)
    t = res["totals"]
    check(t["need_strict"] > t["need_soft"] > 0 and all(t["gap_strict"][l] <= t["need_strict"] for l in res["languages"]),
          "the report sums the need and the gap per language")
    check(res["by_place"]["durotar"]["have"]["enUS"] > 400 and res["by_place"]["ironforge"]["have"]["enUS"] > 60 and
          res["by_place"]["westfall"]["have"]["enUS"] > 60 and res["by_place"]["moltencore"]["have"]["enUS"] >= 20,
          "the places of the trial slice and of the waves hold their texts (the raids since W04)")
    ws = res["waves"]
    lang = res["languages"][0]
    left = sum(r["need_random"] - r["have"][lang] for r in res["pools"] if r["need_random"] > r["have"][lang])
    check(ws and all(w["texts"] <= model["waves"]["max"] for w in ws) and sum(w["texts"] for w in ws) == left and
          (ws[0]["target"].startswith("soft") or t["gap_soft"][lang] == 0) and ws[-1]["target"].endswith("random"),
          "the waves cover the gap once, soft need first (met since W04), the random one last, none above %d texts "
          "(%d waves)" % (
              model["waves"]["max"], len(ws)))
    order = [x for w in ws for x in w["target"].split("+")]
    check(order == sorted(order, key=need.TARGETS.index), "the waves go soft, then strict, then random")
    check(all(r["need_strict"] <= r["need_random"] for r in res["pools"]) and
          0.9 * t["random_pick"]["5%"] < t["need_random"] < 1.2 * t["random_pick"]["5%"],
          "the random need (owner decision, ADR 0050) is at least the strict one in every pool and sums to the 5%% figure "
          "(%d, %d)" % (t["need_random"], t["random_pick"]["5%"]))
    data = json.loads(need.to_json(res))
    check(data["totals"] == res["totals"] and len(data["pools"]) == len(res["pools"]) and
          data["pool_columns"][-1] == "have_" + res["languages"][-1], "the JSON report holds the pools one per line")
    md = need.to_markdown(res)
    check(md.startswith("# Content need") and "## By place" in md and "\r" not in md, "the Markdown report")
    with tempfile.TemporaryDirectory() as tmp:
        path = os.path.join(tmp, "WAVES.md")
        packfiles.write(path, "# Waves\n\nintro\n\n%s\nold\n%s\n\n## How to run a wave\n" % (need.BEGIN, need.END))
        need.write_waves(path, res)
        text = packfiles.read(path)
        check("intro" in text and "## How to run a wave" in text and "old" not in text and "| W01 |" in text,
              "the table of WAVES.md is replaced between its markers, the text around it kept")
        with contextlib.redirect_stdout(io.StringIO()) as out:
            rc = cli.main(["--db", os.path.join(tmp, "a.sqlite"), "need", "--wave", "W01"])
        check(rc == 0 and "conditions:" in out.getvalue(), "`cli need --wave` prints the pools of a wave")
    committed = os.path.join(ROOT, "docs", "content", "need.json")
    if os.path.exists(committed):
        old = json.load(open(committed, encoding="utf-8"))["totals"]
        if old != json.loads(json.dumps(t)):
            print("warning: docs/content/NEED.md is stale (run `python tools/archive/cli.py need --write`)")
    print("  need per language: strict %d, soft %d, random %d; gap %s; %d waves; random pick %s" % (
        t["need_strict"], t["need_soft"], t["need_random"], t["gap_strict"], len(ws), t["random_pick"]))


def near_duplicates():
    print("NEAR DUPLICATES (C0c, ADR 0050)")
    check(neardup.words("Lok'tar, {name}! The road—again.") == ["lok'tar", "{name}", "the", "road", "again"],
          "a text is its words, a placeholder one word")
    items = [
        ("a.1", 0, "approved", "The wind comes down from the hills and finds the road empty."),
        ("a.2", 0, "approved", "The wind comes down from the hills and finds the road full."),       # near (0.8)
        ("a.3", 0, "approved", "the WIND comes down from the hills, and finds the road empty!"),     # exact of a.1
        ("a.4", 0, "approved", "Nothing here sounds like the others at all, I promise you."),
        ("t.f", 0, "approved", "My friend, at last."), ("t.m", 0, "approved", "My friend, at last."),  # allowed twins
        ("a.5", 0, "draft", "A wolf howls somewhere behind the old farm and then stops."),
        ("a.6", 0, "approved", "A wolf howls somewhere behind the old mill and then stops."),        # near, with a draft
    ]
    r = neardup.find(items, {"allow_exact": [["t.f", "t.m"]]})
    check([sorted(e["ids"]) for e in r["exact"] if not e["allowed"]] == [["a.1", "a.3"]] and
          [e["ids"] for e in r["exact"] if e["allowed"]] == [["t.f", "t.m"]],
          "exact duplicates are found whatever the case and punctuation; reviewed twins are allowed")
    pairs = {(p["a"], p["b"]) for p in r["near"]}
    check(("a.1", "a.2") in pairs and ("a.2", "a.3") in pairs and ("a.5", "a.6") in pairs and ("a.1", "a.3") not in pairs and
          not any("a.4" in p for p in pairs), "near duplicates over the threshold, an exact one not twice, a different text never")
    only = neardup.find(items, {"allow_exact": [["t.f", "t.m"]]}, only={"a.5"})
    check({(p["a"], p["b"]) for p in only["near"]} == {("a.5", "a.6")} and not only["exact"],
          "with `only` the pairs of the chosen intentions alone (the drafts of a wave)")
    same = [("o%d" % i, 0, "approved", "They say the river %s %s %s." % (w, w * 2, w * 3)) for i, w in
            enumerate(("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"))]
    check(neardup.find(same)["openings"] == [("they say the", 12)], "an opening shared by more than ten texts is over-used")
    # prefix filtering finds every pair a full comparison finds
    import random
    rnd = random.Random(7)
    vocab = ["road", "wind", "blade", "hill", "fire", "night", "old", "the", "a", "of", "and", "comes", "falls", "home",
             "song", "stone", "water", "dark", "light", "still"]
    texts = []
    for i in range(300):
        base = [rnd.choice(vocab) for _ in range(rnd.randint(4, 14))]
        texts.append(("r%d" % i, 0, "approved", " ".join(base)))
        if i % 10 == 0:
            base[rnd.randrange(len(base))] = "changed"
            texts.append(("r%dx" % i, 0, "approved", " ".join(base)))
    fast = {(p["a"], p["b"]) for p in neardup.find(texts)["near"]}
    sh = [neardup.shingles(neardup.words(t[3]), 3) for t in texts]
    full = set()
    for i in range(len(texts)):
        for j in range(i):
            if sh[i] and sh[j] and " ".join(neardup.words(texts[i][3])) != " ".join(neardup.words(texts[j][3])):
                if len(sh[i] & sh[j]) / len(sh[i] | sh[j]) >= 0.5:
                    full.add((texts[j][0], texts[i][0]))
    check(fast == full and len(full) >= 10, "the index finds the same %d pairs as comparing every pair" % len(full))
    con = store.build_db(":memory:", ROOT, os.path.join(ROOT, "authoring"))
    opts = coverage.load_thresholds()["near_duplicates"]
    res = neardup.check(con, opts)
    check(all(e["allowed"] for r_ in res.values() for e in r_["exact"]), "today's archive has no exact duplicate but reviewed twins")
    print("  today: " + "; ".join("%s %d texts, %d exact (allowed), %d near pairs at %.2f, %d openings and %d closings over %d" % (
        l, r_["texts"], len(r_["exact"]), len(r_["near"]), opts["jaccard"], len(r_["openings"]), len(r_["closings"]),
        r_["edge_limit"]) for l, r_ in res.items()))
    with tempfile.TemporaryDirectory() as tmp:
        with contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
            ok = cli.main(["--db", os.path.join(tmp, "a.sqlite"), "dups", "--state", "approved", "--limit", "1"])
            sheet = os.path.join(tmp, "sheet.md")
            sampled = cli.main(["--db", os.path.join(tmp, "a.sqlite"), "sample", "--pack", "kalimdor_durotar", "--out", sheet])
        text = packfiles.read(sheet)
        check(ok == 0, "`cli dups` passes on today's archive")
        check(sampled == 0 and text.startswith("# Review sheet") and text.count("\n## ") >= 10 and "(literary piece: owner review)" in text,
              "`cli sample` draws a review sheet with every literary piece of the choice")


roundtrip()
equivalence()
structures_content()
world_content()
emotion_content()
monologue_content()
literary_content()
file_limits()
lualit_checks()
review_flow()
report()
need_report()
near_duplicates()
print("\n" + ("ok" if not FAILURES else "%d FAILED" % len(FAILURES)))
sys.exit(1 if FAILURES else 0)
