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
C0b (ADR 0049): --form source (the default) writes the areas as sources, the form of the download, and --form builder as
builder functions (before C0b); --budget is Packs.BUDGET_MS, the share of a frame a change may take (0: in one go), and
--keep the bound Packs.KEEP_KB. A change is then Update and one Packs:Step per frame until it ends: the script reports
the frames of a change and the addon time of each (the clock of the client, debugprofilestop, is the CPU time of
the thread here: wall time on a busy machine counts other programs),
apart for the frames that load a folder (the client reads its files in one call: once per area and session). The same
script measures the engine before C0b (it has no Packs:Step: a change is one frame).

C0e (ADR 0052): --texts asks the projection by area in texts per language, the unit of the need model
(docs/content/NEED.md), for one or more totals: each becomes entries at the mean texts per entry of the synthetic clones,
and --resident-share of them stay resident (the need model plans about 40% of the texts in place pools, which the
area packs hold, and 60% in the generic, situation, class and race pools, which stay in memory). Both modes also
report the memory after the picks (the tiers of the groups of the index are made when a pick first reads them).

C0f (ADR 0053): the client registers only the lines of the character's class and race. With --areas the resident clones
take the class and race pools of the need model (need_shares: about 45% class lines and 34% race lines, weighted by class
and race), the area clones ask no class or race, and --own CLASS/Race (default WARRIOR/Orc) loads them as the client does
for that character; --own all loads every line (the engine before C0f), --own both measures the two in turn. The sources
are cloned in a runtime of the whole database either way, so the two see the same archive. The report adds the rules
left out and the memory right after the resident content is registered with the collector stopped (the compiled chunk).

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


def load_addon(addon, packs="all", locale=None, zone=None, own=None):
    """A fresh runtime with the addon only (like run_tests.load_addon without the example pack).
    packs: "all" = every language and regional folder in memory and every region built; "lazy" = the folders are
    installed as LoadOnDemand and Core/Packs.lua loads them like in the client (only the chosen language, only the
    region of the character); "none" = no folder. locale: language saved before the start ("en", "it"). own: None =
    every line of every class and race (a development install); (class, race) = the character: only its lines are
    registered, as in the client (C0f, ADR 0053)."""
    name = os.path.basename(addon)
    lua = lua51.LuaRuntime(unpack_returned_tuples=True)
    lua.execute(open(os.path.join(HERE, "MockWoWAPI.lua"), encoding="utf-8").read())
    if locale:
        lua.execute(f'AzerothUnspokenDB = {{ schemaVersion = 7, settings = {{ locale = "{locale}" }} }}')
    if zone:
        lua.execute(f'P.zone = "{zone}"')
    if own:
        lua.execute(f'AZEROTHUNSPOKEN_ALL_LINES = nil; P.class, P.race = "{own[0]}", "{own[1]}"')
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
    # C0b: a change of area started at login ends before the measures (it is spread over frames in the client)
    lua.execute("if AzerothUnspoken.Packs.Complete then AzerothUnspoken.Packs:Complete() end")
    base_load = time.perf_counter() - t0
    run_file(lua, os.path.join(HERE, "SyntheticArchive.lua"), "SyntheticArchive.lua")
    return lua, lua.globals().AzerothUnspoken, base_load


def cpu_clock():
    """C0b: a clock in milliseconds of the CPU time of this thread, for the share of a frame and its measure: wall time
    counts the moments the system gave the processor to other programs (on a busy machine a fixed 0.5 ms loop measured
    up to 39 ms), CPU time does not. Windows: the cycles of the thread (QueryThreadCycleTime) at the rate measured here;
    elsewhere time.thread_time."""
    if os.name != "nt":
        return lambda: time.thread_time() * 1000
    import ctypes
    from ctypes import wintypes
    k = ctypes.windll.kernel32
    k.GetCurrentThread.restype = wintypes.HANDLE
    k.QueryThreadCycleTime.argtypes = [wintypes.HANDLE, ctypes.POINTER(ctypes.c_ulonglong)]
    k.QueryThreadCycleTime.restype = wintypes.BOOL
    handle, c = k.GetCurrentThread(), ctypes.c_ulonglong()

    def cycles():
        k.QueryThreadCycleTime(handle, ctypes.byref(c))
        return c.value
    rate = 0.0
    for _ in range(50):
        t0, c0 = time.perf_counter(), cycles()
        x = 0
        for i in range(20000):
            x += i
        t1, c1 = time.perf_counter(), cycles()
        rate = max(rate, (c1 - c0) / ((t1 - t0) * 1000))
    return lambda: cycles() / rate


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
    info["after_picks_kb"] = memory_kb(lua)
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


def need_shares(path=None):
    """C0f (ADR 0053): the class and race pools of the need model (docs/content/need.json), as shares of the resident
    texts (every pool but the place pools) and weights of each class and race token: {classes: [(token, w)], classShare,
    races: [(token, w)], raceShare}."""
    path = path or os.path.join(HERE, "..", "docs", "content", "need.json")
    need = json.load(open(path, encoding="utf-8"))
    cols = need["pool_columns"]
    by_layer, by_value = {}, {"class": {}, "race": {}}
    for row in need["pools"]:
        d = dict(zip(cols, row)) if isinstance(row, list) else row
        by_layer[d["layer"]] = by_layer.get(d["layer"], 0) + d["need_random"]
        if d["layer"] in by_value:
            by_value[d["layer"]][d["value"]] = by_value[d["layer"]].get(d["value"], 0) + d["need_random"]
    resident = sum(v for k, v in by_layer.items() if k != "place")
    tokens = {r.lower(): r for r in ("Human", "Dwarf", "Gnome", "NightElf", "Orc", "Scourge", "Tauren", "Troll")}
    return {"classes": [(v.upper(), w) for v, w in sorted(by_value["class"].items())],
            "classShare": by_layer["class"] / resident,
            "races": [(tokens.get(v, v), w) for v, w in sorted(by_value["race"].items())],
            "raceShare": by_layer["race"] / resident}


def measure_areas(addon, total, resident, layout, picks, seed, form="source", budget=4.0, keep_kb=None, own=None,
                  shares=None):
    """The projection by area (C0, ADR 0048; C0b, ADR 0049): see the module docstring. C0f (ADR 0053): own = (class,
    race) loads the lines of that character only, as the client does (None: every line, as before C0f); shares (from
    need_shares) gives the resident clones the class and race pools of the need model, and the area clones none."""
    t0 = time.perf_counter()
    # the synthetic sources are cloned from every line (a runtime of the whole database), then loaded as the client
    # loads them: with own, in a runtime that registers the lines of the character only
    gen_lua, gen_ns, base_load = load_addon(addon, "lazy")
    if own:
        lua, ns, base_load = load_addon(addon, "lazy", own=own)
    else:
        lua, ns = gen_lua, gen_ns
    ns.db.locale = "en"
    G = lua.globals()
    # C0b: the clock of the client (debugprofilestop) is the CPU time of this thread here (cpu_clock), for the share of
    # a frame and its measure
    G.debugprofilestop = cpu_clock()
    old_engine = lua.eval("function() return AzerothUnspoken.Packs.Step == nil end")()
    if not old_engine:
        lua.eval("function(b) AzerothUnspoken.Packs.BUDGET_MS = b end")(budget if budget > 0 else float("inf"))
        if keep_kb is not None:
            lua.eval("function(k) AzerothUnspoken.Packs.KEEP_KB = k end")(keep_kb)
    zones = list(G.SYNTH_ZONES.values())
    per_area = (total - resident) // len(zones)
    # the sources are made in Lua and kept in Python until LoadAddOn asks for them: Lua then holds only what the folder
    # leaves (the compiled builders), as in the client
    make = gen_lua.eval("""function(ns, n, area, zone, seed, form, plain)
        return SYNTH_AREA_SOURCES(ns, n, { area = area, zone = zone, seed = seed, form = form, plain = plain })
    end""")
    areas, src = [], {}
    for j, zone in enumerate(zones):
        cont = "eastern" if j < EASTERN_AREAS else "kalimdor"
        area = ns.Place.AreaKey(zone)
        rules, texts = make(gen_ns, per_area, area, zone, seed + j, form, shares is not None)
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
    own_opts = None
    if shares:
        T = gen_lua.table_from
        own_opts = T({"classes": T([T(list(x)) for x in shares["classes"]]), "races": T([T(list(x)) for x in shares["races"]]),
                      "classShare": shares["classShare"], "raceShare": shares["raceShare"]})
    gen, _ = gen_lua.eval("""function(ns, n, seed, own)
        return SYNTH_SOURCE(ns, n, { seed = seed, placeShare = 0.6, langs = { "enUS" }, own = own })
    end""")(gen_ns, resident, seed, own_opts)
    del own_opts
    if own:
        del gen_lua, gen_ns
    # C0f: the memory right after the resident content is registered, the collector stopped (the compiled chunk, and
    # the lines of other classes and races, are garbage then), and the rules it gave
    login_peak_kb, registered = lua.eval("""function(src, ns)
        collectgarbage("collect"); collectgarbage("collect")
        local n0 = ns.Engine.nextOrd
        collectgarbage("stop")
        assert(loadstring(src, '=resident'))(ns)
        local peak = collectgarbage("count")
        collectgarbage("restart")
        -- what WORLD_ENTER does after the login (C0f): the ids of the lines not registered are let go
        if ns.Packs.Settle then ns.Packs:Settle() end
        return peak, ns.Engine.nextOrd - n0
    end""")(gen, ns)
    del gen
    # the journey starts from nothing regional: the area of the login (the real trial slice) is dropped first
    lua.execute("""local Packs = AzerothUnspoken.Packs
        for key in pairs(Packs.active) do Packs:Drop(key) end
        Packs.region, Packs.area = nil, nil""")
    resident_kb = memory_kb(lua)
    setup_s = time.perf_counter() - t0

    # one change: Update, then a Packs:Step per frame until the change ends (C0b; before it, Update did it all), with
    # the time of each frame and whether a folder was loaded in it
    step = lua.eval("""function(zone)
        collectgarbage("collect"); collectgarbage("collect")
        local before = collectgarbage("count")
        collectgarbage("stop")
        P.zone, P.subzone = zone, ""
        local Packs = AzerothUnspoken.Packs
        local frames, loads = {}, {}
        local n0, t0 = #LOAD_CALLS, debugprofilestop()
        Packs:Update()
        frames[1], loads[1] = debugprofilestop() - t0, #LOAD_CALLS - n0
        while Packs.job do
            n0, t0 = #LOAD_CALLS, debugprofilestop()
            Packs:Step()
            table.insert(frames, debugprofilestop() - t0)
            table.insert(loads, #LOAD_CALLS - n0)
        end
        local peak = collectgarbage("count")
        collectgarbage("restart")
        collectgarbage("collect"); collectgarbage("collect")
        local kept = Packs.SourceBytes and Packs:SourceBytes() or 0
        return before, peak, collectgarbage("count"), frames, loads, #LOAD_CALLS, kept
    end""")
    kal = [z for z, _, c in areas if c == "kalimdor"]
    eas = [z for z, _, c in areas if c == "eastern"]
    journey = kal + eas + kal
    rows = []
    for zone in journey:
        before, peak, after, frames, loads, calls, kept = step(zone)
        frames, loads = list(frames.values()), list(loads.values())
        rows.append({"zone": zone, "before_kb": before, "peak_kb": peak, "after_kb": after, "s": sum(frames) / 1000,
                     "frames": frames, "loads": loads, "load_calls": calls, "kept_kb": kept / 1024})
    found, times, kinstr = pick_stats(lua, ns, [journey[-1]], picks, seed)
    after_picks = memory_kb(lua)
    skipped = lua.eval("function(ns) return ns.Engine.ownStats and ns.Engine.ownStats.rules or 0 end")(ns)
    return {"after_picks_kb": after_picks, "total": total, "resident": resident, "per_area": per_area, "areas": len(zones), "layout": layout,
            "own": "/".join(own) if own else None, "login_peak_kb": login_peak_kb, "resident_registered": registered,
            "skipped_rules": skipped,
            "form": form, "budget": budget, "folders": folders, "setup_s": setup_s, "base_load_s": base_load, "resident_kb": resident_kb, "rows": rows,
            "picks": picks,
            "found": found, "pick_mean_ms": statistics.mean(times), "pick_p95_ms": times[int(len(times) * 0.95) - 1],
            "pick_kinstr": statistics.mean(kinstr), "pick_p95_kinstr": kinstr[int(len(kinstr) * 0.95) - 1]}


def texts_per_entry(addon):
    """C0e: the mean texts per entry of the synthetic clones in English (SYNTH_TEXTS_PER_ENTRY)."""
    lua, ns, _ = load_addon(addon, "all")
    return lua.eval("function(ns) return SYNTH_TEXTS_PER_ENTRY(ns, 'enUS') end")(ns)


def pct(xs, q):
    xs = sorted(xs)
    return xs[max(0, int(len(xs) * q + 0.5) - 1)] if xs else 0.0


def print_areas(r):
    rows = r["rows"]
    n_kal = r["areas"] - EASTERN_AREAS
    mb = lambda kb: kb / 1024   # noqa: E731
    changes = rows[1:]
    print(f"layout {r['layout']}, form {r['form']}, budget {r['budget']} ms: {r['folders']} regional folders, "
          f"{r['areas']} areas of {r['per_area']} entries, {r['resident']} resident entries ({r['total']} in all, English only)")
    if r.get("login_peak_kb") is not None:
        print(f"  lines: {'of the character ' + r['own'] + ' only' if r['own'] else 'of every class and race'}; "
              f"{r['resident_registered']} resident entries registered, {r['skipped_rules']} rules not loaded in all; "
              f"memory right after the resident content, collector stopped: {mb(r['login_peak_kb']):.1f} MB")
    print(f"  memory of the base and the resident entries: {mb(r['resident_kb']):.1f} MB; with the first area (its folders "
          f"loaded, the area built): {mb(rows[0]['after_kb']):.1f} MB")
    print(f"  after every area of Kalimdor: {mb(rows[n_kal - 1]['after_kb']):.1f} MB; after the Eastern Kingdoms: "
          f"{mb(rows[r['areas'] - 1]['after_kb']):.1f} MB; at the end of the journey: {mb(rows[-1]['after_kb']):.1f} MB "
          f"(regional sources kept {mb(rows[-1]['kept_kb']):.1f} MB)")
    print(f"  peak of a change: at most {mb(max(x['peak_kb'] - x['before_kb'] for x in changes)):.1f} MB over the memory "
          f"before it; highest memory {mb(max(x['peak_kb'] for x in changes)):.1f} MB")
    ts = sorted(x["s"] * 1000 for x in changes)
    print(f"  change of area, addon time in all: mean {statistics.mean(ts):.0f} ms, p95 {pct(ts, 0.95):.0f} ms, "
          f"max {ts[-1]:.0f} ms (LoadAddOn calls {rows[-1]['load_calls']})")
    plain = [f for x in changes for f, n in zip(x["frames"], x["loads"]) if n == 0]
    loading = [f for x in changes for f, n in zip(x["frames"], x["loads"]) if n > 0]
    nframes = [len(x["frames"]) for x in changes]
    print(f"  frames of a change: mean {statistics.mean(nframes):.0f}, max {max(nframes)}; addon time per frame: mean "
          f"{statistics.mean(plain):.2f} ms, p95 {pct(plain, 0.95):.2f} ms, max {max(plain):.2f} ms"
          + (f"; the {len(loading)} frames that load folders (first visit): mean {statistics.mean(loading):.1f} ms, "
             f"max {max(loading):.1f} ms" if loading else ""))
    print(f"  picks in the last area: mean {r['pick_mean_ms']:.2f} ms, p95 {r['pick_p95_ms']:.2f} ms; "
          f"{r['pick_kinstr']:.1f} thousand instructions (p95 {r['pick_p95_kinstr']:.1f}), {r['found']} of {r['picks']} found; "
          f"memory after the picks {mb(r['after_picks_kb']):.1f} MB")
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
    ap.add_argument("--texts", help="with --areas (C0e): totals in texts per language, comma separated (e.g. "
                    "100000,270000), instead of --total and --resident")
    ap.add_argument("--resident-share", type=float, default=0.6,
                    help="with --texts: the share of the texts that stays resident (the rest is split over the areas)")
    ap.add_argument("--layout", default="continent,area", help="with --areas: continent, area or both")
    ap.add_argument("--form", default="source", choices=("source", "builder"),
                    help="with --areas: the regional entries as a source (C0b, ADR 0049) or as builder functions (before)")
    ap.add_argument("--budget", type=float, default=4.0,
                    help="with --areas: milliseconds of a frame a change may take (Packs.BUDGET_MS); 0 = in one go")
    ap.add_argument("--keep", type=float, help="with --areas: the bound in KB on the sources kept (Packs.KEEP_KB)")
    ap.add_argument("--own", default="WARRIOR/Orc",
                    help="with --areas (C0f, ADR 0053): the character whose lines are loaded, CLASS/Race, as in the client; "
                    "'all' loads every line (before C0f); 'both' measures the character and every line. The resident clones "
                    "then take the class and race pools of the need model (docs/content/need.json), the area clones none")
    ap.add_argument("--json")
    ap.add_argument("--archive-dir", help="write the synthetic archives here, or read them if they are there: two "
                    "versions of the engine then measure the same rules (#157)")
    a = ap.parse_args(argv)
    addon = os.path.abspath(a.addon)
    if a.areas:
        print(f"addon {os.path.basename(addon)} at commit {commit(addon)}")
        rows = []
        totals = [(a.total, a.resident, None)]
        if a.texts:
            tpe = texts_per_entry(addon)
            totals = []
            for t in [int(x) for x in a.texts.split(",") if x.strip()]:
                entries = round(t / tpe)
                totals.append((entries, round(entries * a.resident_share), t))
            print(f"{tpe:.2f} texts per entry (enUS): " + ", ".join(f"{t} texts = {e} entries, {r} resident"
                                                                  for e, r, t in totals))
        shares = need_shares()
        print(f"need model: class pools {shares['classShare']:.1%} and race pools {shares['raceShare']:.1%} of the resident texts")
        owns = {"all": [None], "both": [None, "WARRIOR/Orc"]}.get(a.own, [a.own])
        for total, resident, texts in totals:
            for layout in [l for l in a.layout.split(",") if l]:
                for o in owns:
                    r = measure_areas(addon, total, resident, layout, a.picks, a.seed, a.form, a.budget, a.keep,
                                      tuple(o.split("/")) if o else None, shares)
                    r["texts"] = texts
                    if texts:
                        print(f"{texts} texts per language:")
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
          f"{'kinstr':>8} {'p95 ki':>8} {'found':>6} {'after MB':>9}")
    for size in [int(s) for s in a.sizes.split(",") if s.strip()]:
        r = measure(addon, size, a.picks, a.seed, a.place_share, langs, a.packs, a.archive_dir)
        rows.append(r)
        print(f"{size:>8} {r['base_load_s']:>8.2f} {r['load_s']:>8.2f} {r['memory_kb'] / 1024:>10.1f} {r['per_entry_b']:>8.0f} "
              f"{r['pick_mean_ms']:>8.3f} {r['pick_p95_ms']:>8.3f} {r['pick_max_ms']:>8.3f} "
              f"{r['pick_kinstr']:>8.1f} {r['pick_p95_kinstr']:>8.1f} {r['found']:>6} {r['after_picks_kb'] / 1024:>9.1f}")
        sys.stdout.flush()
    if a.json:
        with open(a.json, "w", encoding="utf-8", newline="\n") as f:
            json.dump(rows, f, indent=1)
    return rows


if __name__ == "__main__":
    main(sys.argv[1:])
