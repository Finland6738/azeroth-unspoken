"""Scale projection of the engine (R1: #83, #84, #86). Offline, Lua 5.1 through lupa; never shipped.

Usage: python -I -X utf8 Tests/bench_scale.py [--addon DIR] [--sizes 0,10000,50000] [--picks 400] [--seed 1]
                                              [--place-share 0.6] [--langs itIT,enUS] [--json FILE]
                                              [--archive-dir DIR]

For each size it starts a fresh runtime with the addon (no example pack), generates a synthetic archive of that many
rules with Tests/SyntheticArchive.lua (clones of the real rules with unique texts, a share bound to one zone), loads it
as a data file would be loaded (compile + RegisterPack + AddTexts) and reports:
  - load time of the addon itself (all its files and ADDON_LOADED) and of the synthetic archive (compile and
    registration);
  - Lua memory of the whole addon after a full collection, and the cost per synthetic rule;
  - time of Engine:PickEntry over a fixed sequence of events, forms and zones (mean, p95, max);
  - Lua VM instructions per pick over the same sequence (thousands, mean and p95; #157): unlike the times they do not
    depend on the load of the machine, so two versions compare exactly. A call to a C function counts as one.

Compare two versions of the engine on the same archive (#157): the generator clones the rules registered at that
moment, so a version that adds or removes rules generates a different archive (R4 added 35 rules and the archive it
measured was heavier, which looked like a slower engine). With --archive-dir the archive of each size is written there
the first time and read back afterwards: run the older version first, then the newer one with the same folder.

With --areas (C0, ADR 0048) it projects instead a whole archive loaded by area, as Core/Packs.lua loads it in the client:
--total entries in one language, --resident of them always in memory (registered at login like the base content) and
the rest split evenly over the 40 areas of SYNTH_ZONES (22 in the Eastern Kingdoms, 18 in Kalimdor), each area a
regional pack bound to its zone. --layout continent puts every area of a continent in one rules folder and one texts
folder (the layout of the download today); --layout area gives each area its own two folders (X-AzerothUnspoken-Areas).
The character visits every area of Kalimdor, then of the Eastern Kingdoms, then Kalimdor again; the script reports the
memory at login and after each change (after a full collection), the peak of a change (the memory right after it, the
collector stopped during the change), the time of a change (load, drop and build) and the picks in the last area.

The numbers are a projection from lupa on the machine that runs the script, not a measurement in the client: the
working targets of R1 (PickEntry under 5 ms and memory under 40 MB at 50,000 entries) stay hypotheses until the
in-game measurements of /au prof (D3 in #130). The test suite runs a reduced size (see run_tests.py); the full sizes
run on demand with this script. The script works on the engine before and after R1, so the two can be compared.
"""
import argparse, json, os, statistics, subprocess, sys, time
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


def pack_folders(addon):
    """The folders of the download loaded on demand (#85, #101): their .toc declares a language or a region."""
    root, name = os.path.dirname(addon), os.path.basename(addon)
    out = []
    for d in sorted(os.listdir(root)):
        toc = os.path.join(root, d, d + ".toc")
        if d.startswith(name + "_") and os.path.isfile(toc) and "## X-AzerothUnspoken-" in open(toc, encoding="utf-8").read():
            out.append(d)
    return out


def load_addon(addon, packs="all", locale=None, zone=None):
    """A fresh runtime with the addon only (like run_tests.load_addon without the example pack).
    packs: "all" = every language and regional folder in memory and every region built; "lazy" = the folders are
    installed as LoadOnDemand and Core/Packs.lua loads them like in the client (only the chosen language, only the
    region of the character); "none" = no folder. locale: language saved before the start ("en", "it")."""
    name = os.path.basename(addon)
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    lua.execute(open(os.path.join(HERE, "MockWoWAPI.lua"), encoding="utf-8").read())
    if locale:
        lua.execute(f'AzerothUnspokenDB = {{ schemaVersion = 7, settings = {{ locale = "{locale}" }} }}')
    if zone:
        lua.execute(f'P.zone = "{zone}"')
    ns = lua.table()
    t0 = time.perf_counter()
    for f in toc_files(addon, name):
        run_file(lua, os.path.join(addon, f.replace("\\", "/")), f, name, ns)
    if packs != "none":
        lua.globals().INSTALL_PACKS(os.path.dirname(addon).replace("\\", "/"), lua.table_from(pack_folders(addon)),
                                    packs == "all")
    lua.globals().FIRE("ADDON_LOADED", name)
    if packs == "all":
        lua.eval("function() AzerothUnspoken.Packs:ActivateAll() end")()
    lua.globals().ENTER_GAME(True, False)
    base_load = time.perf_counter() - t0
    run_file(lua, os.path.join(HERE, "SyntheticArchive.lua"), "SyntheticArchive.lua")
    return lua, lua.globals().AzerothUnspoken, base_load


def memory_kb(lua):
    return lua.eval("function() collectgarbage('collect'); collectgarbage('collect'); return collectgarbage('count') end")()


def commit(addon):
    """The commit of the addon folder, if it is a git checkout (#157: the numbers name the version they measure)."""
    try:
        out = subprocess.run(["git", "-C", addon, "rev-parse", "--short", "HEAD"], capture_output=True, text=True,
                             timeout=10)
        dirty = subprocess.run(["git", "-C", addon, "status", "--porcelain", "--", "."], capture_output=True,
                               text=True, timeout=10).stdout.strip()
        return out.stdout.strip() + ("+changes" if dirty else "") if out.returncode == 0 else "?"
    except (OSError, subprocess.SubprocessError):
        return "?"


def synthetic_source(lua, ns, size, seed, place_share, langs, archive_dir):
    """The source of the synthetic pack and its zones: generated, or read from archive_dir (written there if absent)."""
    path = None
    if archive_dir:
        os.makedirs(archive_dir, exist_ok=True)
        path = os.path.join(archive_dir, f"synthetic_{size}_{'-'.join(langs)}_s{seed}_p{place_share}.lua")
        if os.path.isfile(path):
            return open(path, encoding="utf-8").read(), list(lua.globals().SYNTH_ZONES.values())
    src, meta = lua.eval("""function(ns, n, seed, share, langs)
        return SYNTH_SOURCE(ns, n, { seed = seed, placeShare = share, langs = langs })
    end""")(ns, size, seed, place_share, lua.table_from(list(langs)))
    if path:
        with open(path, "w", encoding="utf-8", newline="\n") as f:
            f.write(src)
    return src, list(meta.zones.values())


def measure(addon, size, picks, seed, place_share, langs=("itIT", "enUS"), packs="all", archive_dir=None):
    lua, ns, base_load = load_addon(addon, packs)
    ns.db.locale = "en"
    G = lua.globals()
    mem0 = memory_kb(lua)
    info = {"size": size, "base_load_s": base_load, "base_memory_kb": mem0}
    zones = ["Durotar"]
    if size > 0:
        src, zones = synthetic_source(lua, ns, size, seed, place_share, langs, archive_dir)
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

    found, times, kinstr = pick_stats(lua, ns, zones, picks, seed)
    info.update({"picks": picks, "found": found, "pick_mean_ms": statistics.mean(times),
                 "pick_p95_ms": times[int(len(times) * 0.95) - 1], "pick_max_ms": times[-1],
                 "pick_kinstr": statistics.mean(kinstr), "pick_p95_kinstr": kinstr[int(len(kinstr) * 0.95) - 1]})
    return info


def pick_stats(lua, ns, zones, picks, seed):
    """The picks of the projection: a fixed sequence of events, forms and zones; the memory of the selection grows as
    in a session. Returns (picks that found a line, sorted times in ms, sorted thousands of instructions)."""
    G = lua.globals()
    pick = lua.eval("""function(ns, event, form, zone, hour)
        P.zone = zone; P.hour = hour
        local ctx = ns:BuildContext()
        return ctx, event, form
    end""")
    do_pick = lua.eval("function(ns, event, ctx, form) return ns.Engine:PickEntry(event, ctx, form) end")
    # the instructions: the same sequence again from the same memory, with a count hook (every 100 instructions)
    count_pick = lua.eval("""function(ns, event, ctx, form)
        local n = 0
        debug.sethook(function() n = n + 1 end, "", 100)
        ns.Engine:PickEntry(event, ctx, form)
        debug.sethook()
        return n / 10
    end""")
    fresh = lua.eval("""function(ns)
        ns.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
        ns.Engine:ResetLines()
    end""")
    found = 0
    times, kinstr = [], []
    for counting in (False, True):
        fresh(ns)
        G.math.randomseed(seed)
        for i in range(picks):
            event, form = EVENTS[i % len(EVENTS)]
            ctx, _, _ = pick(ns, event, form, zones[(i * 7) % len(zones)], (i * 5) % 24)
            if counting:
                kinstr.append(count_pick(ns, event, ctx, form))
                continue
            t0 = time.perf_counter()
            rec = do_pick(ns, event, ctx, form)
            times.append((time.perf_counter() - t0) * 1000)
            if rec is not None:
                found += 1
    times.sort()
    kinstr.sort()
    return found, times, kinstr


EASTERN_AREAS = 22   # the first 22 zones of SYNTH_ZONES are in the Eastern Kingdoms, the other 18 in Kalimdor


def measure_areas(addon, total, resident, layout, picks, seed):
    """The projection by area (C0, ADR 0048): see the module docstring."""
    t0 = time.perf_counter()
    lua, ns, base_load = load_addon(addon, "lazy")
    ns.db.locale = "en"
    G = lua.globals()
    zones = list(G.SYNTH_ZONES.values())
    per_area = (total - resident) // len(zones)
    # the sources are made in Lua and kept in Python until LoadAddOn asks for them: Lua then holds only what the folder
    # leaves (the compiled builders), as in the client
    make = lua.eval("""function(ns, n, area, zone, seed)
        return SYNTH_AREA_SOURCES(ns, n, { area = area, zone = zone, seed = seed })
    end""")
    areas, src = [], {}
    for j, zone in enumerate(zones):
        cont = "eastern" if j < EASTERN_AREAS else "kalimdor"
        area = ns.Place.AreaKey(zone)
        rules, texts = make(ns, per_area, area, zone, seed + j)
        areas.append((zone, area, cont))
        src[area] = (rules, texts)
    G.FETCH_SOURCE = lambda key, part: src[key][0 if part == "rules" else 1]
    G.RUN_AREA_PART = lua.eval("""function(key, part, name)
        assert(loadstring(FETCH_SOURCE(key, part), "=" .. name))()
    end""")
    install = lua.eval("""function(name, region, lang, areas, keys, part)
        local meta = { ["X-AzerothUnspoken-Region"] = region, ["X-AzerothUnspoken-Language"] = lang,
            ["X-AzerothUnspoken-Areas"] = areas }
        ADD_ADDON(name, { meta = meta, load = function()
            for _, key in ipairs(keys) do RUN_AREA_PART(key, part, name .. "/" .. key) end
        end })
    end""")
    folders = 0
    if layout == "continent":
        for cont in ("eastern", "kalimdor"):
            keys = lua.table_from([a for _, a, c in areas if c == cont])
            install("SynthAreas_" + cont, cont, None, None, keys, "rules")
            install("SynthAreas_" + cont + "_enUS", cont, "enUS", None, keys, "texts")
            folders += 2
    else:
        for _, area, cont in areas:
            keys = lua.table_from([area])
            install("SynthArea_" + area, cont, None, area, keys, "rules")
            install("SynthArea_" + area + "_enUS", cont, "enUS", area, keys, "texts")
            folders += 2
    lua.execute("AzerothUnspoken.Packs:Discover()")
    # the resident content, registered at login like the base content
    gen, _ = lua.eval("""function(ns, n, seed)
        return SYNTH_SOURCE(ns, n, { seed = seed, placeShare = 0.6, langs = { "enUS" } })
    end""")(ns, resident, seed)
    lua.eval("function(src, ns) assert(loadstring(src, '=resident'))(ns) end")(gen, ns)
    del gen
    # the journey starts from nothing regional: the area of the login (the real trial slice) is dropped first
    lua.execute("""local Packs = AzerothUnspoken.Packs
        for key in pairs(Packs.active) do Packs:Drop(key) end
        Packs.region, Packs.area = nil, nil""")
    resident_kb = memory_kb(lua)
    setup_s = time.perf_counter() - t0

    step = lua.eval("""function(zone)
        collectgarbage("collect"); collectgarbage("collect")
        local before = collectgarbage("count")
        collectgarbage("stop")
        P.zone, P.subzone = zone, ""
        local t0 = os.clock()
        AzerothUnspoken.Packs:Update()
        local s = os.clock() - t0
        local peak = collectgarbage("count")
        collectgarbage("restart")
        collectgarbage("collect"); collectgarbage("collect")
        return before, peak, collectgarbage("count"), s, #LOAD_CALLS
    end""")
    kal = [z for z, _, c in areas if c == "kalimdor"]
    eas = [z for z, _, c in areas if c == "eastern"]
    journey = kal + eas + kal
    rows = []
    for zone in journey:
        before, peak, after, s, loads = step(zone)
        rows.append({"zone": zone, "before_kb": before, "peak_kb": peak, "after_kb": after, "s": s, "loads": loads})
    found, times, kinstr = pick_stats(lua, ns, [journey[-1]], picks, seed)
    return {"total": total, "resident": resident, "per_area": per_area, "areas": len(zones), "layout": layout,
            "folders": folders, "setup_s": setup_s, "base_load_s": base_load, "resident_kb": resident_kb, "rows": rows,
            "picks": picks,
            "found": found, "pick_mean_ms": statistics.mean(times), "pick_p95_ms": times[int(len(times) * 0.95) - 1],
            "pick_kinstr": statistics.mean(kinstr), "pick_p95_kinstr": kinstr[int(len(kinstr) * 0.95) - 1]}


def print_areas(r):
    rows = r["rows"]
    n_kal = r["areas"] - EASTERN_AREAS
    mb = lambda kb: kb / 1024   # noqa: E731
    changes = rows[1:]
    print(f"layout {r['layout']}: {r['folders']} regional folders, {r['areas']} areas of {r['per_area']} entries, "
          f"{r['resident']} resident entries ({r['total']} in all, English only)")
    print(f"  memory of the base and the resident entries: {mb(r['resident_kb']):.1f} MB; with the first area (its folders "
          f"loaded, the area built): {mb(rows[0]['after_kb']):.1f} MB")
    print(f"  after every area of Kalimdor: {mb(rows[n_kal - 1]['after_kb']):.1f} MB; after the Eastern Kingdoms: "
          f"{mb(rows[r['areas'] - 1]['after_kb']):.1f} MB; at the end of the journey: {mb(rows[-1]['after_kb']):.1f} MB")
    print(f"  peak of a change: at most {mb(max(x['peak_kb'] - x['before_kb'] for x in changes)):.1f} MB over the memory "
          f"before it; highest memory {mb(max(x['peak_kb'] for x in changes)):.1f} MB")
    ts = sorted(x["s"] * 1000 for x in changes)
    print(f"  change of area: mean {statistics.mean(ts):.0f} ms, p95 {ts[int(len(ts) * 0.95) - 1]:.0f} ms, "
          f"max {ts[-1]:.0f} ms (LoadAddOn calls {rows[-1]['loads']})")
    print(f"  picks in the last area: mean {r['pick_mean_ms']:.2f} ms, p95 {r['pick_p95_ms']:.2f} ms; "
          f"{r['pick_kinstr']:.1f} thousand instructions (p95 {r['pick_p95_kinstr']:.1f}), {r['found']} of {r['picks']} found")
    sys.stdout.flush()


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--addon", default=os.path.join(HERE, "..", "AzerothUnspoken"))
    ap.add_argument("--sizes", default="0,10000,50000")
    ap.add_argument("--picks", type=int, default=400)
    ap.add_argument("--seed", type=int, default=1)
    ap.add_argument("--place-share", type=float, default=0.6)
    ap.add_argument("--langs", default="itIT,enUS",
                    help="languages of the synthetic texts (enUS alone projects one loaded language, #85)")
    ap.add_argument("--packs", default="all", choices=("all", "lazy"),
                    help="all = both languages and every region in memory; lazy = only what Core/Packs.lua loads (the "
                    "chosen language, English, and the region of the character), as in the client")
    ap.add_argument("--areas", action="store_true", help="C0 (ADR 0048): the projection by area (see above)")
    ap.add_argument("--total", type=int, default=300000, help="with --areas: entries in all (one language)")
    ap.add_argument("--resident", type=int, default=30000, help="with --areas: entries always in memory")
    ap.add_argument("--layout", default="continent,area", help="with --areas: continent, area or both")
    ap.add_argument("--json")
    ap.add_argument("--archive-dir", help="write the synthetic archives here, or read them if they are there: two "
                    "versions of the engine then measure the same rules (#157)")
    a = ap.parse_args(argv)
    addon = os.path.abspath(a.addon)
    if a.areas:
        print(f"addon {os.path.basename(addon)} at commit {commit(addon)}")
        rows = []
        for layout in [l for l in a.layout.split(",") if l]:
            r = measure_areas(addon, a.total, a.resident, layout, a.picks, a.seed)
            print_areas(r)
            rows.append(r)
        if a.json:
            with open(a.json, "w", encoding="utf-8", newline="\n") as f:
                json.dump(rows, f, indent=1)
        return rows
    rows = []
    langs = tuple(l for l in a.langs.split(",") if l)
    print(f"addon {os.path.basename(addon)} at commit {commit(addon)}")
    print(f"{'entries':>8} {'addon s':>8} {'load s':>8} {'memory MB':>10} {'B/entry':>8} {'pick ms':>8} {'p95 ms':>8} {'max ms':>8} "
          f"{'kinstr':>8} {'p95 ki':>8} {'found':>6}")
    for size in [int(s) for s in a.sizes.split(",") if s.strip()]:
        r = measure(addon, size, a.picks, a.seed, a.place_share, langs, a.packs, a.archive_dir)
        rows.append(r)
        print(f"{size:>8} {r['base_load_s']:>8.2f} {r['load_s']:>8.2f} {r['memory_kb'] / 1024:>10.1f} {r['per_entry_b']:>8.0f} "
              f"{r['pick_mean_ms']:>8.3f} {r['pick_p95_ms']:>8.3f} {r['pick_max_ms']:>8.3f} "
              f"{r['pick_kinstr']:>8.1f} {r['pick_p95_kinstr']:>8.1f} {r['found']:>6}")
        sys.stdout.flush()
    if a.json:
        with open(a.json, "w", encoding="utf-8", newline="\n") as f:
            json.dump(rows, f, indent=1)
    return rows


if __name__ == "__main__":
    main(sys.argv[1:])
