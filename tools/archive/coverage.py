"""Coverage and gap reports of the authoring archive (issue #88).

The unit counted is the *intention* (decision D2 in #130: one idea with all its variants and translations); the
number of variants (texts) per language is reported alongside. Only the content in the requested state is counted
(default `approved`: what ships).

Metrics, all computed from the archive with no game and no Lua:

- coverage tables: intentions and variants per region, voice, depth, register, language;
- M1 (availability): for every event x context cell, the intentions *eligible* there: the ones of the cell plus the
  generic ones of the event (ADR 0024 groups). Cells under `k` intentions or `k_variants` texts are the gaps;
- M2-style (repetition), proxies that need no simulation: the best pool of texts an event can draw from against the
  window in which a text should not come back (`repeat_window`), and how concentrated the openings of the texts are.
  The full M2 (a seeded run of the engine) stays an offline script; these are the cheap part of it.

Nothing here fails a build: `compute` only returns what is below the thresholds (the CLI prints it as warnings).
"""
import collections
import json
import os
import re

import store

HERE = os.path.dirname(os.path.abspath(__file__))
THRESHOLDS = os.path.join(HERE, "thresholds.json")
DEFAULTS = {"k": 10, "k_events": {}, "k_variants": 20, "repeat_window": 100, "opening_share_max": 0.15,
            "languages_complete": True}


def load_thresholds(path=THRESHOLDS):
    t = dict(DEFAULTS)
    if os.path.exists(path):
        with open(path, encoding="utf-8") as f:
            t.update({k: v for k, v in json.load(f).items() if not k.startswith("_")})
    return t


def opening(text):
    """The first word of a text, lower case, a placeholder kept as it is: what makes two texts start alike."""
    m = re.match(r"\s*(\{[^}]*\}|[\w'’]+)", text)
    return m.group(1).lower() if m else ""


def compute(con, thresholds=None, state="approved"):
    t = dict(DEFAULTS)
    t.update(thresholds or {})
    rows = con.execute("SELECT * FROM intention WHERE state = ?", (state,)).fetchall()
    langs = sorted({r[0] for r in con.execute("SELECT DISTINCT lang FROM variant")})
    pack_langs = {r["id"]: json.loads(r["languages"]) or langs for r in con.execute("SELECT id, languages FROM pack")}
    nvar = collections.defaultdict(lambda: collections.Counter())   # intention -> lang -> variants
    for r in con.execute("SELECT v.intention_id, v.lang, COUNT(*) n FROM variant v JOIN intention i ON i.id = v.intention_id"
                         " WHERE i.state = ? GROUP BY 1, 2", (state,)):
        nvar[r["intention_id"]][r["lang"]] = r["n"]
    res = {"state": state, "thresholds": t, "languages": langs}

    # ---- totals and distributions
    def by(key, many=False):
        c, v = collections.Counter(), collections.defaultdict(collections.Counter)
        for r in rows:
            for k in (key(r) if many else [key(r)]):
                c[k] += 1
                for lang, n in nvar[r["id"]].items():
                    v[k][lang] += n
        return {k: {"intentions": c[k], "variants": dict(v[k])} for k in sorted(c, key=lambda x: (-c[x], str(x)))}

    res["intentions"] = len(rows)
    res["variants"] = {lang: sum(n[lang] for n in nvar.values()) for lang in langs}
    res["by_state"] = {r["state"]: r["n"] for r in con.execute("SELECT state, COUNT(*) n FROM intention GROUP BY state")}
    res["by_region"] = by(lambda r: r["region"] or "(any place)")
    res["by_voice"] = by(lambda r: r["speaker"] or "(none)")
    res["by_depth"] = by(lambda r: json.loads(r["depth"]) if r["depth"] else ["(all)"], many=True)
    res["by_register"] = by(lambda r: json.loads(r["styles"]) if r["styles"] else ["(none)"], many=True)
    res["by_pack"] = by(lambda r: r["pack_id"])
    res["by_event"] = by(lambda r: json.loads(r["events"]), many=True)
    res["skipped"] = json.loads((con.execute("SELECT value FROM meta WHERE key = 'skipped'").fetchone() or ["[]"])[0])

    # ---- M1: event x context cells
    cell = collections.defaultdict(list)   # (event, context key) -> intention ids
    for r in rows:
        for ev in json.loads(r["events"]):
            for key in r["ctx"].split(","):
                cell[(ev, key)].append(r["id"])
    generic = {ev: ids for (ev, key), ids in cell.items() if key == "*"}
    cells = []
    for (ev, key), ids in sorted(cell.items()):
        eligible = set(ids) | set(generic.get(ev, ()))
        item = {"event": ev, "context": key, "intentions": len(ids), "eligible": len(eligible),
                "variants": {lang: sum(nvar[i][lang] for i in eligible) for lang in langs}}
        k = t["k_events"].get(ev, t["k"])
        item["gap"] = item["eligible"] < k or any(n < t["k_variants"] for n in item["variants"].values())
        item["k"] = k
        cells.append(item)
    for ev in sorted({ev for ev, _ in cell} - set(generic)):
        cells.append({"event": ev, "context": "*", "intentions": 0, "eligible": 0, "variants": {l: 0 for l in langs},
                      "gap": True, "k": t["k_events"].get(ev, t["k"])})
    res["cells"] = cells
    res["gaps"] = sorted((c for c in cells if c["gap"]), key=lambda c: (c["eligible"], c["event"], c["context"]))

    # ---- languages every intention of a pack should have
    missing = []
    if t["languages_complete"]:
        for r in rows:
            for lang in pack_langs.get(r["pack_id"], langs):
                if not nvar[r["id"]][lang]:
                    missing.append({"id": r["id"], "lang": lang})
    res["missing_language"] = missing

    # ---- M2-style proxies
    w = t["repeat_window"]
    pools = {}
    for c in cells:
        pools[c["event"]] = max(pools.get(c["event"], 0), min(c["variants"].values()) if c["variants"] else 0)
    res["repeat"] = {"window": w, "pools": dict(sorted(pools.items(), key=lambda kv: kv[1])),
                     "below_window": sorted(ev for ev, n in pools.items() if n < w)}
    openings = {}
    for lang in langs:
        c = collections.Counter(opening(v["text"]) for v in con.execute(
            "SELECT v.text FROM variant v JOIN intention i ON i.id = v.intention_id WHERE i.state = ? AND v.lang = ?",
            (state, lang)))
        total = sum(c.values()) or 1
        openings[lang] = {"total": total, "top": [(w_, n, n / total) for w_, n in c.most_common(5)]}
    res["openings"] = openings
    res["openings_over"] = {lang: [(w_, n, s) for w_, n, s in o["top"] if s > t["opening_share_max"]] for lang, o in openings.items()}
    return res


def _table(header, rows):
    out = ["| " + " | ".join(header) + " |", "|" + "|".join("---" for _ in header) + "|"]
    out += ["| " + " | ".join(str(x) for x in r) + " |" for r in rows]
    return out


def to_markdown(res, top=25):
    t, langs = res["thresholds"], res["languages"]
    lines = ["# Content coverage report", "",
             "State counted: `%s`. The unit is the **intention** (one idea with all its variants and translations); texts "
             "(variants) per language are shown alongside. Thresholds are reported, not blocking." % res["state"], ""]
    lines += ["## Headline", ""]
    lines += ["- Intentions: **%d** (%s)" % (res["intentions"], ", ".join("%s %d" % kv for kv in sorted(res["by_state"].items())))]
    lines += ["- Texts (variants): " + ", ".join("%s **%d**" % (l, n) for l, n in res["variants"].items())]
    nev = len({c["event"] for c in res["cells"]})
    lines += ["- Event x context cells: %d, events: %d" % (len(res["cells"]), nev)]
    lines += ["- Cells under the thresholds (k = %d intentions, %d texts per language): **%d**" %
              (t["k"], t["k_variants"], len(res["gaps"]))]
    lines += ["- Intentions missing a text in a language of their pack: **%d**" % len(res["missing_language"])]
    lines += ["- Events whose best pool of texts is under the repetition window (%d): **%d** of %d" %
              (res["repeat"]["window"], len(res["repeat"]["below_window"]), nev)]
    for s in res["skipped"]:
        n = max(s["texts"].values()) if s["texts"] else 0
        lines += ["- Not archived (rules computed by code): `%s`, about %d intentions" % (s["pack_id"] or s["path"], n)]
    lines += [""]
    for title, key in (("By region", "by_region"), ("By voice", "by_voice"), ("By depth", "by_depth"),
                       ("By register", "by_register"), ("By pack", "by_pack")):
        lines += ["## " + title, ""]
        lines += _table(["", "intentions"] + ["texts " + l for l in langs],
                        [[k, v["intentions"]] + [v["variants"].get(l, 0) for l in langs] for k, v in res[key].items()])
        lines += [""]
    lines += ["## Gaps: event x context cells under the thresholds (%d, the %d poorest)" % (len(res["gaps"]), min(top, len(res["gaps"]))), "",
              "`eligible` = intentions of the cell plus the generic ones of the event (ADR 0024 groups).", ""]
    lines += _table(["event", "context", "intentions", "eligible", "k"] + ["texts " + l for l in langs],
                    [[c["event"], "`%s`" % c["context"], c["intentions"], c["eligible"], c["k"]] +
                     [c["variants"].get(l, 0) for l in langs] for c in res["gaps"][:top]])
    lines += ["", "## Repetition (M2-style proxies)", "",
              "Best pool of texts an event can draw from in any context, per language (the smaller one), against the "
              "window of %d interventions in which a text should not return. Events under the window cannot avoid a repeat "
              "there even with perfect anti-repetition." % res["repeat"]["window"], ""]
    lines += _table(["event", "best pool"], list(res["repeat"]["pools"].items())[:top])
    lines += ["", "Openings: the most common first words of the texts (share of all texts of the language; the threshold is %.0f%%)." %
              (100 * t["opening_share_max"]), ""]
    for lang, o in res["openings"].items():
        lines += ["- `%s`: " % lang + ", ".join("`%s` %.1f%%" % (w_, 100 * s) for w_, n, s in o["top"])]
    if res["missing_language"]:
        lines += ["", "## Missing texts", ""] + ["- `%s` in %s" % (m["id"], m["lang"]) for m in res["missing_language"][:top]]
    return "\n".join(lines) + "\n"


def warnings(res):
    """The breaches of the thresholds as one-line messages (the CI prints them as warnings, nothing fails)."""
    t = res["thresholds"]
    out = []
    if res["gaps"]:
        out.append("%d event x context cells are under the thresholds (k = %d intentions, %d texts); the poorest: %s" %
                   (len(res["gaps"]), t["k"], t["k_variants"],
                    ", ".join("%s/%s (%d)" % (c["event"], c["context"], c["eligible"]) for c in res["gaps"][:5])))
    if res["missing_language"]:
        out.append("%d intentions miss a text in a language of their pack" % len(res["missing_language"]))
    if res["repeat"]["below_window"]:
        out.append("%d events have a best pool of texts under the repetition window of %d" %
                   (len(res["repeat"]["below_window"]), res["repeat"]["window"]))
    for lang, over in res["openings_over"].items():
        for w_, n, s in over:
            out.append("%s: %.0f%% of the texts start with `%s` (threshold %.0f%%)" % (lang, 100 * s, w_, 100 * t["opening_share_max"]))
    return out
