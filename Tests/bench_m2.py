"""M2 repetition metrics of a simulated play session (R3: #89, #90, #91). Offline, Lua 5.1 through lupa; never shipped.

Usage: python -I -X utf8 Tests/bench_m2.py [--addon DIR] [--hours 3] [--seeds 1,2,3] [--r1] [--json FILE]

It loads the addon with every pack (no example pack), in English, and plays a scripted session for each of two
characters (an orc warrior in Durotar, the Barrens, Orgrimmar and Ashenvale; a human paladin in Elwynn, Westfall,
Duskwood and Redridge): a zone every 20 minutes, a fight about every 50 seconds (battle, spells, sometimes low
health, victory), a level every 40 minutes, a death and a hearthstone every hour, and the "speak" key out of combat
every 5 minutes. Every event goes through the real Narrative Director (gate, pacing, quotas, dice) and the real
selection; the interventions shown in the narrator are recorded. The rhythm of play is a hypothesis, as in the
analysis A1 (3 simulated hours).

Reported, averaged over the seeds and the two characters:
  - same theme as the previous intervention (target of the roadmap R3: under 15%);
  - share of the frames "says" and "murmurs" among the framed interventions (target: under 10%), and the share of
    interventions that are a phrase inside a frame;
  - a content word (4 letters or more, not a stop word) of an intervention already used in the 4 before it;
  - same voice three times in a row; share of each category; how many zone, victory and reflection lines spoke;
  - how many interventions were monologues (#99) and lines of a composite situation (#100), and which situations;
  - time of Engine:PickEntry (mean, p95), which must stay close to the R1 numbers.

--r1 switches off what R3 added to the selection and the direction (tiers, fallback, thematic novelty, voice
alternation, frames by theme, quotas, hunger: Engine.R1_COMPAT), so the same data can be measured before and after.
"""
import argparse, json, os, re, statistics, sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import bench_scale as B  # noqa: E402

CHARACTERS = [
    dict(name="Garrosh", cls="WARRIOR", race="Orc", faction="Horde", sex=2,
         zones=[("Durotar", "Razor Hill"), ("The Barrens", "The Crossroads"), ("Orgrimmar", "Valley of Honor"),
                ("Ashenvale", "Splintertree Post")],
         foes=[("Beast", "Bristleback Boar"), ("Humanoid", "Kolkar Raider"), ("Undead", "Rotting Ghoul")]),
    dict(name="Aldric", cls="PALADIN", race="Human", faction="Alliance", sex=2,
         zones=[("Elwynn Forest", "Goldshire"), ("Westfall", "Sentinel Hill"), ("Duskwood", "Darkshire"),
                ("Redridge Mountains", "Lakeshire")],
         foes=[("Humanoid", "Defias Bandit"), ("Beast", "Grey Forest Wolf"), ("Undead", "Skeletal Warder")]),
]
SPELLS = {"WARRIOR": ("Heroic Strike", "Battle Shout"), "PALADIN": ("Holy Light", "Blessing of Might")}

STOP = set("""about above after again against also among another anyone because been before being below between both
could does doing done down during each even ever every from have having here hers herself himself into itself just
like more most much must never once only other ours ourselves over same shall should some such than that their theirs
them themselves then there these they this those through under until upon very want were what when where which while
whom whose will with within without would your yours yourself yourselves still away back know make made come came
take took give gave tell told keep kept look looks seem seems thing things time well again where""".split())
WORD = re.compile(r"[a-z']+")


def content_words(text):
    return {w.strip("'") for w in WORD.findall(text.lower()) if len(w.strip("'")) >= 4 and w.strip("'") not in STOP}


DRIVER = r"""
local ns, r1 = ...
local Engine = ns.Engine
Engine.R1_COMPAT = r1 or nil
ns.db.locale = "en"
ns.db.output = ns.db.output or {}
SIM = { out = {}, times = {}, frame = nil }
-- the frame a framed phrase was told in: the last RenderEntry with a line
local render = Engine.RenderEntry
Engine.RenderEntry = function(self, entry, lang, ctx, line, nested)
	if line and not nested then SIM.frame = entry end
	return render(self, entry, lang, ctx, line, nested)
end
local pick = Engine.PickEntry
Engine.PickEntry = function(self, event, ctx, form, composite)
	SIM.frame = nil
	local t0 = os.clock()
	local rec = pick(self, event, ctx, form, composite)
	table.insert(SIM.times, (os.clock() - t0) * 1000)
	if rec then rec.simFrame = SIM.frame end
	return rec
end
local propose = ns.Gateway.Propose
ns.Gateway.Propose = function(self, rec, ctx, opts)
	local shown = propose(self, rec, ctx, opts)
	if shown then
		local p = Engine.byId[rec.id]
		local f = rec.simFrame
		table.insert(SIM.out, { id = rec.id, event = rec.event, category = rec.category or Engine.EventCategory(rec.event),
			speaker = rec.speaker, text = rec.text, theme = p and p.theme or "", auto = opts and opts.auto or false,
			frame = f and f.id or "", frameText = f and Engine.VariantText((f.text.en or f.text.it)[1]) or "",
			kind = rec.kind or "", situation = rec.situation or "" })
	end
	return shown
end
"""

SESSION = r"""
local ns, ch, hours, seed = ...
math.randomseed(seed)
P.name, P.class, P.race, P.faction, P.sex, P.level = ch.name, ch.cls, ch.race, ch.faction, ch.sex, 12
local D = ns.Director
local function Offer(ev, extra) D:Offer(ev, extra); ADVANCE(0.2) end
local t, nextLevel, nextDeath, nextHearth, nextSpeak = 0, 2400, 3600, 3300, 300
local zi = 0
while t < hours * 3600 do
	-- a new zone every 20 minutes
	if t % 1200 < 50 then
		zi = zi % #ch.zones + 1
		P.zone, P.subzone = ch.zones[zi][1], ch.zones[zi][2]
		P.combat, P.target = false, nil
		Offer("zone"); ADVANCE(20); t = t + 20.2
	end
	-- a fight
	local foe = ch.foes[math.random(#ch.foes)]
	P.target = { name = foe[2], level = P.level, hp = 100, hpMax = 100, hostile = true, ctype = foe[1], reaction = 2 }
	P.combat = true
	Offer("battle"); ADVANCE(4)
	Offer("attack", { spell = ch.spells[1], target = foe[2] }); ADVANCE(5)
	if math.random(100) <= 20 then Offer("lowhp"); ADVANCE(3) end
	if ch.cls == "PALADIN" and math.random(100) <= 40 then Offer("heal", { spell = ch.spells[1] }); ADVANCE(3) end
	ADVANCE(6)
	P.combat, P.target = false, nil
	Offer("victory", { duration = 18 })
	local fight = 18.6
	-- between fights
	local rest = 25 + math.random(20)
	t = t + fight + rest
	if t >= nextLevel then P.level = P.level + 1; Offer("levelup", { level = P.level }); nextLevel = nextLevel + 2400 end
	if t >= nextDeath then
		Offer("death"); ADVANCE(30); Offer("rez"); nextDeath = nextDeath + 3600
	end
	if t >= nextHearth then Offer("travel", { spell = "Hearthstone" }); nextHearth = nextHearth + 3600 end
	if t % 900 < 60 then Offer("buff", { spell = ch.spells[2] }) end
	if t >= nextSpeak then ns.Gateway:Improvise(); nextSpeak = nextSpeak + 300 end
	ADVANCE(rest)
end
"""


def run(addon, ch, hours, seed, r1):
    lua, ns, _ = B.load_addon(addon)
    lua.execute("function __drv(...) " + DRIVER + " end")
    lua.globals().__drv(ns, r1)
    lua.execute("function __sess(...) " + SESSION + " end")
    t = lua.table_from({k: v for k, v in ch.items() if k not in ("zones", "foes")})
    t.zones = lua.table_from([lua.table_from(z) for z in ch["zones"]])
    t.foes = lua.table_from([lua.table_from(f) for f in ch["foes"]])
    t.spells = lua.table_from(SPELLS[ch["cls"]])
    lua.globals().__sess(ns, t, hours, seed)
    sim = lua.globals().SIM
    out = [dict(r.items()) for r in sim.out.values()]
    return out, list(sim.times.values())


def metrics(out, times):
    n = len(out)
    m = {"interventions": n}
    if n < 2:
        return m
    same_theme = sum(1 for a, b in zip(out, out[1:]) if a["theme"] and a["theme"] == b["theme"])
    m["same_theme_pct"] = 100 * same_theme / (n - 1)
    framed = [r for r in out if r["frame"]]
    says = [r for r in framed if r["frameText"].startswith(("says,", "murmurs,"))]
    m["framed_pct"] = 100 * len(framed) / n
    m["says_murmurs_pct"] = 100 * len(says) / max(1, len(framed))
    words = [content_words(r["text"]) for r in out]
    rep = sum(1 for i in range(1, n) if words[i] & set().union(*words[max(0, i - 4):i]))
    m["word_repeat_5_pct"] = 100 * rep / (n - 1)
    m["same_voice_3_pct"] = 100 * sum(1 for i in range(2, n) if out[i]["speaker"] == out[i - 1]["speaker"] == out[i - 2]["speaker"]) / (n - 2)
    cats = {}
    for r in out:
        cats[r["category"]] = cats.get(r["category"], 0) + 1
    m["category_pct"] = {k: round(100 * v / n, 1) for k, v in sorted(cats.items())}
    m["zone_lines"] = sum(1 for r in out if r["event"] == "zone")
    m["victory_lines"] = sum(1 for r in out if r["event"] == "victory")
    m["monologues"] = sum(1 for r in out if r["kind"] == "monologue")
    m["composites"] = sum(1 for r in out if r["situation"])
    m["monologue_pct"] = 100 * m["monologues"] / n
    m["composite_pct"] = 100 * m["composites"] / n
    sits = {}
    for r in out:
        if r["situation"]:
            sits[r["situation"]] = sits.get(r["situation"], 0) + 1
    m["situations"] = dict(sorted(sits.items()))
    times = sorted(times)
    m["pick_mean_ms"] = statistics.mean(times)
    m["pick_p95_ms"] = times[int(len(times) * 0.95) - 1]
    return m


def session_metrics(addon, hours=3, seeds=(1, 2, 3), r1=False):
    rows = []
    for seed in seeds:
        for ch in CHARACTERS:
            out, times = run(addon, ch, hours, seed, r1)
            rows.append(metrics(out, times))
    keys = [k for k in rows[0] if isinstance(rows[0][k], (int, float))]
    avg = {k: statistics.mean(r[k] for r in rows) for k in keys}
    cats = {}
    for r in rows:
        for c, v in r.get("category_pct", {}).items():
            cats[c] = cats.get(c, 0) + v / len(rows)
    avg["category_pct"] = {c: round(v, 1) for c, v in sorted(cats.items())}
    sits = {}
    for r in rows:
        for c, v in r.get("situations", {}).items():
            sits[c] = sits.get(c, 0) + v / len(rows)
    avg["situations"] = {c: round(v, 2) for c, v in sorted(sits.items())}
    return avg


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--addon", default=os.path.join(HERE, "..", "AzerothUnspoken"))
    ap.add_argument("--hours", type=float, default=3)
    ap.add_argument("--seeds", default="1,2,3")
    ap.add_argument("--r1", action="store_true", help="switch off the R3 selection and direction (Engine.R1_COMPAT)")
    ap.add_argument("--json")
    a = ap.parse_args(argv)
    m = session_metrics(os.path.abspath(a.addon), a.hours, [int(s) for s in a.seeds.split(",")], a.r1)
    for k, v in m.items():
        print(f"{k:>20}: {v if isinstance(v, dict) else round(v, 3)}")
    if a.json:
        with open(a.json, "w", encoding="utf-8", newline="\n") as f:
            json.dump(m, f, indent=1)
    return m


if __name__ == "__main__":
    main(sys.argv[1:])
