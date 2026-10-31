"""Tests of the authoring archive (tools/archive, issues #87 and #88, ADR 0027).

The guarantee is the round trip: importing the pack folders of this repository into the archive and exporting them
again gives an **empty diff**. Around it: the renderer of new and edited entries, the review flow (only approved
content is exported), the overlay, the search and the coverage report. Everything runs on temporary copies; the repository
is never written.

Usage: python -I -X utf8 Tests/check_archive.py   (exit code 1 if a check fails)
"""
import contextlib
import io
import json
import os
import shutil
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(ROOT, "tools", "archive"))
import coverage  # noqa: E402
import cli  # noqa: E402
import packfiles  # noqa: E402
import store  # noqa: E402

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
    check({s["pack_id"] for s in con.report["skipped"]} == {"base_dialogues", "base_arcs"},
          "only the two packs whose rules are computed by code are left out (%s)" %
          sorted(str(s["pack_id"]) for s in con.report["skipped"]))
    ids = {r["id"] for r in con.execute("SELECT id FROM intention")}
    check(all(i in ids for i in ("zone.gen.01", "victory.long.01", "zone.durotar.01", "ctx.act.duel")),
          "rules with code (func), mixed tables and regional rules are all there")
    r = store.get_rule(con, "victory.long.01")
    check("func" in r["conditions"] and "$lua" in r["conditions"]["func"], "a condition with code is kept as raw text")
    check(con.execute("SELECT region FROM intention WHERE id = 'zone.durotar.01'").fetchone()[0] == "kalimdor",
          "a regional rule carries the region of its pack")
    check(store.index_keys({"mood": "forest", "time": "dawn"}) == ["m:forest"] and
          store.index_keys({"race": ["Orc", "Troll"]}) == ["r:orc", "r:troll"] and
          store.index_keys({"chance": 50, "zone": "Durotar"}) == ["*"] and store.index_keys(None) == ["*"] and
          store.index_keys({"place": {"mapID": 1411}}) == ["pm:1411"],
          "the context keys follow the selection index of ADR 0024")
    check(all(r["state"] == "approved" for r in con.execute("SELECT state FROM intention")),
          "everything imported from the folders is approved")


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


roundtrip()
world_content()
emotion_content()
lualit_checks()
review_flow()
report()
print("\n" + ("ok" if not FAILURES else "%d FAILED" % len(FAILURES)))
sys.exit(1 if FAILURES else 0)
