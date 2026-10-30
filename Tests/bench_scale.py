"""Scale projection of the engine (R1: #83, #84, #86). Offline, Lua 5.1 through lupa; never shipped.

Usage: python -I -X utf8 Tests/bench_scale.py [--addon DIR] [--sizes 0,10000,50000] [--picks 400] [--seed 1]
                                              [--place-share 0.6] [--langs itIT,enUS] [--json FILE]

For each size it starts a fresh runtime with the addon (no example pack), generates a synthetic archive of that many
rules with Tests/SyntheticArchive.lua (clones of the real rules with unique texts, a share bound to one zone), loads it
as a data file would be loaded (compile + RegisterPack + AddTexts) and reports:
  - load time of the addon itself (all its files and ADDON_LOADED) and of the synthetic archive (compile and
    registration);
  - Lua memory of the whole addon after a full collection, and the cost per synthetic rule;
  - time of Engine:PickEntry over a fixed sequence of events, forms and zones (mean, p95, max).

The numbers are a projection from lupa on the machine that runs the script, not a measurement in the client: the
working targets of R1 (PickEntry under 5 ms and memory under 40 MB at 50,000 entries) stay hypotheses until the
in-game measurements of /au prof (D3 in #130). The test suite runs a reduced size (see run_tests.py); the full sizes
run on demand with this script. The script works on the engine before and after R1, so the two can be compared.
"""
import argparse, json, os, statistics, sys, time
from lupa import lua51

HERE = os.path.dirname(os.path.abspath(__file__))

EVENTS = [("battle", "say"), ("battle", "emote"), ("threat", "say"), ("victory", "say"), ("victory", "emote"),
          ("lowhp", "say"), ("zone", "emote"), ("zone", "say"), ("travel", "emote"), ("muse", "say"),
          ("greet", "say"), ("heal", "say"), ("death", "emote"), ("levelup", "say"), ("rez", "say")]


def toc_files(folder, name):
    toc = open(os.path.join(folder, name + ".toc"), encoding="utf-8").read().splitlines()
    return [l.strip() for l in toc if l.strip() and not l.lstrip().startswith("#")]


def run_file(lua, path, name, *args):
    src = open(path, encoding="utf-8").read()
    chunk = lua.eval("function(src, name) return assert(loadstring(src, name)) end")(src, "@" + name)
    return chunk(*args)


def load_addon(addon):
    """A fresh runtime with the addon only (like run_tests.load_addon without the example pack)."""
    name = os.path.basename(addon)
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    lua.execute(open(os.path.join(HERE, "MockWoWAPI.lua"), encoding="utf-8").read())
    ns = lua.table()
    t0 = time.perf_counter()
    for f in toc_files(addon, name):
        run_file(lua, os.path.join(addon, f.replace("\\", "/")), f, name, ns)
    lua.globals().FIRE("ADDON_LOADED", name)
    lua.globals().ENTER_GAME(True, False)
    base_load = time.perf_counter() - t0
    run_file(lua, os.path.join(HERE, "SyntheticArchive.lua"), "SyntheticArchive.lua")
    return lua, lua.globals().AzerothUnspoken, base_load


def memory_kb(lua):
    return lua.eval("function() collectgarbage('collect'); collectgarbage('collect'); return collectgarbage('count') end")()


def measure(addon, size, picks, seed, place_share, langs=("itIT", "enUS")):
    lua, ns, base_load = load_addon(addon)
    ns.db.locale = "en"
    G = lua.globals()
    mem0 = memory_kb(lua)
    info = {"size": size, "base_load_s": base_load, "base_memory_kb": mem0}
    zones = ["Durotar"]
    if size > 0:
        src, meta = lua.eval("""function(ns, n, seed, share, langs)
            return SYNTH_SOURCE(ns, n, { seed = seed, placeShare = share, langs = langs })
        end""")(ns, size, seed, place_share, lua.table_from(list(langs)))
        zones = list(meta.zones.values())
        mem_src = memory_kb(lua)
        load = lua.eval("""function(src, ns)
            local t0 = os.clock()
            local chunk = assert(loadstring(src, "=synthetic"))
            local t1 = os.clock()
            chunk(ns)
            return t1 - t0, os.clock() - t1
        end""")
        compile_s, register_s = load(src, ns)
        del src
        G.collectgarbage("collect")
        mem1 = memory_kb(lua)
        # the source string was alive in mem_src and is gone in mem1: compare with the memory before the source
        info.update({"compile_s": compile_s, "register_s": register_s, "load_s": compile_s + register_s,
                     "memory_kb": mem1, "per_entry_b": (mem1 - mem0) * 1024 / size, "source_kb": mem_src - mem0})
    else:
        info.update({"compile_s": 0, "register_s": 0, "load_s": 0, "memory_kb": mem0, "per_entry_b": 0})

    # picks: a fixed sequence of events, forms and zones; the memory of the selection grows as in a session
    pick = lua.eval("""function(ns, event, form, zone, hour)
        P.zone = zone; P.hour = hour
        local ctx = ns:BuildContext()
        return ctx, event, form
    end""")
    do_pick = lua.eval("function(ns, event, ctx, form) return ns.Engine:PickEntry(event, ctx, form) end")
    G.math.randomseed(seed)
    times, found = [], 0
    for i in range(picks):
        event, form = EVENTS[i % len(EVENTS)]
        ctx, _, _ = pick(ns, event, form, zones[(i * 7) % len(zones)], (i * 5) % 24)
        t0 = time.perf_counter()
        rec = do_pick(ns, event, ctx, form)
        times.append((time.perf_counter() - t0) * 1000)
        if rec is not None:
            found += 1
    times.sort()
    info.update({"picks": picks, "found": found, "pick_mean_ms": statistics.mean(times),
                 "pick_p95_ms": times[int(len(times) * 0.95) - 1], "pick_max_ms": times[-1]})
    return info


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--addon", default=os.path.join(HERE, "..", "AzerothUnspoken"))
    ap.add_argument("--sizes", default="0,10000,50000")
    ap.add_argument("--picks", type=int, default=400)
    ap.add_argument("--seed", type=int, default=1)
    ap.add_argument("--place-share", type=float, default=0.6)
    ap.add_argument("--langs", default="itIT,enUS",
                    help="languages of the synthetic texts (enUS alone projects one loaded language, #85)")
    ap.add_argument("--json")
    a = ap.parse_args(argv)
    addon = os.path.abspath(a.addon)
    rows = []
    langs = tuple(l for l in a.langs.split(",") if l)
    print(f"{'entries':>8} {'addon s':>8} {'load s':>8} {'memory MB':>10} {'B/entry':>8} {'pick ms':>8} {'p95 ms':>8} {'max ms':>8} {'found':>6}")
    for size in [int(s) for s in a.sizes.split(",") if s.strip()]:
        r = measure(addon, size, a.picks, a.seed, a.place_share, langs)
        rows.append(r)
        print(f"{size:>8} {r['base_load_s']:>8.2f} {r['load_s']:>8.2f} {r['memory_kb'] / 1024:>10.1f} {r['per_entry_b']:>8.0f} "
              f"{r['pick_mean_ms']:>8.3f} {r['pick_p95_ms']:>8.3f} {r['pick_max_ms']:>8.3f} {r['found']:>6}")
        sys.stdout.flush()
    if a.json:
        with open(a.json, "w", encoding="utf-8", newline="\n") as f:
            json.dump(rows, f, indent=1)
    return rows


if __name__ == "__main__":
    main(sys.argv[1:])
