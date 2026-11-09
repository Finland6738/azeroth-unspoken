"""The cost of a pick as the generic pools grow (C0j, ADR 0057). Offline, Lua 5.1 through lupa; never shipped.

Usage: python -I -X utf8 Tests/bench_pool.py [--addon DIR] [--factors 1,4,16] [--events muse,battle,...]
                                             [--hours 1] [--seeds 1,2] [--json FILE]

For each factor it loads the addon as the simulated M2 session does (Tests/bench_m2.py: every pack, English), grows the
generic and situation pools of the events (`--events`, by default the large pools that session asks most: muse, battle,
victory, lowhp, heal, attack) to `factor` times their rules today (Tests/SyntheticArchive.lua: SYNTH_POOL_SOURCE, clones
with their conditions, voices and tiers), and plays the M2 session on them, counting the Lua instructions of every
Engine:PickEntry (a C function counts as one). It reports, per factor, the candidates of `muse` for the first character
and the thousands of instructions per pick (mean and p95), in all and for each grown event.

The content waves grow exactly these pools (ADR 0050: about 80 more waves, most of them generic), so a pick whose cost
follows the size of a pool shows here as a mean that rises with the factor. run_tests.py runs factors 1 and 16 on a
short session and fails when the mean at 16x exceeds pool_flat_ratio (Tests/perf_baseline.json) times the mean at 1x.
"""
import argparse, json, os, statistics, sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import bench_scale as B  # noqa: E402
import bench_m2 as M  # noqa: E402

EVENTS = ["muse", "battle", "victory", "lowhp", "heal", "attack"]

DRIVER = r"""
local ns = ...
local Engine = ns.Engine
ns.db.locale = "en"
POOL = { kinstr = {}, events = {} }
local pick = Engine.PickEntry
Engine.PickEntry = function(self, event, ctx, form, composite)
	local n = 0
	debug.sethook(function() n = n + 1 end, "", 100)
	local rec = pick(self, event, ctx, form, composite)
	debug.sethook()
	POOL.kinstr[#POOL.kinstr + 1] = n / 10
	POOL.events[#POOL.events + 1] = event
	return rec
end
"""

GROW = r"""function(ns, events, copies)
	local src, count = SYNTH_POOL_SOURCE(ns, events, copies)
	assert(loadstring(src, "=synthetic_pool"))(ns)
	return count
end"""

CANDIDATES = r"""function(ns, ch, event, form)
	P.name, P.class, P.race, P.faction, P.level = ch.name, ch.cls, ch.race, ch.faction, 12
	P.zone, P.subzone = ch.zones[1][1], ch.zones[1][2]
	local ctx = ns:BuildContext({ event = event })
	local n = 0
	for _, list in ipairs(ns.Engine:CandidateGroups(event, ctx, form)) do n = n + #list end
	return n
end"""


def table_of(lua, ch):
    t = lua.table_from({k: v for k, v in ch.items() if k not in ("zones", "foes")})
    t.zones = lua.table_from([lua.table_from(z) for z in ch["zones"]])
    t.foes = lua.table_from([lua.table_from(f) for f in ch["foes"]])
    t.spells = lua.table_from(M.SPELLS[ch["cls"]])
    return t


def run(addon, factor, events, hours, seed, ch):
    """One session of one character on pools grown to `factor` times: ([(event, kinstr)], candidates of muse)."""
    lua, ns, _ = B.load_addon(addon)
    G = lua.globals()
    if factor > 1:
        lua.eval(GROW)(ns, lua.table_from(events), factor - 1)
        G.collectgarbage("collect")
    t = table_of(lua, ch)
    cands = lua.eval(CANDIDATES)(ns, t, "muse", "say")
    lua.execute("function __drv(...) " + DRIVER + " end")
    G.__drv(ns)
    lua.execute("function __sess(...) " + M.SESSION + " end")
    G.__sess(ns, t, hours, seed)
    pool = G.POOL
    return list(zip(pool.events.values(), pool.kinstr.values())), cands


def measure(addon, factor, events=EVENTS, hours=1, seeds=(1, 2)):
    picks, cands = [], None
    for seed in seeds:
        for ch in M.CHARACTERS:
            rows, n = run(addon, factor, events, hours, seed, ch)
            picks += rows
            if cands is None:
                cands = n
    ks = sorted(k for _, k in picks)
    out = {"factor": factor, "muse_candidates": cands, "picks": len(ks), "pick_kinstr": statistics.mean(ks),
           "pick_p95_kinstr": ks[int(len(ks) * 0.95) - 1], "by_event": {}}
    for ev in events:
        e = sorted(k for x, k in picks if x == ev)
        if e:
            out["by_event"][ev] = (round(statistics.mean(e), 1), round(e[int(len(e) * 0.95) - 1] if len(e) > 1 else e[0], 1), len(e))
    return out


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--addon", default=os.path.join(HERE, "..", "AzerothUnspoken"))
    ap.add_argument("--factors", default="1,4,16")
    ap.add_argument("--events", default=",".join(EVENTS))
    ap.add_argument("--hours", type=float, default=1)
    ap.add_argument("--seeds", default="1,2")
    ap.add_argument("--json")
    a = ap.parse_args(argv)
    addon = os.path.abspath(a.addon)
    events = a.events.split(",")
    seeds = [int(s) for s in a.seeds.split(",")]
    rows = []
    print(f"pools of {', '.join(events)} grown; M2 session {a.hours} h, seeds {seeds}; thousands of Lua instructions per pick")
    for f in [int(x) for x in a.factors.split(",")]:
        r = measure(addon, f, events, a.hours, seeds)
        rows.append(r)
        evs = "  ".join(f"{e} {m}/{p}" for e, (m, p, _) in r["by_event"].items())
        print(f"  {f:>3}x  muse candidates {r['muse_candidates']:>6}  picks {r['picks']:>4}  mean {r['pick_kinstr']:6.1f}"
              f"  p95 {r['pick_p95_kinstr']:6.1f}  | {evs}")
    if a.json:
        with open(a.json, "w", encoding="utf-8", newline="\n") as f:
            json.dump(rows, f, indent=1)
    return rows


if __name__ == "__main__":
    main(sys.argv[1:])
