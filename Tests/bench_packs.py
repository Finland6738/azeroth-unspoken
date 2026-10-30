"""Memory of the language and regional packs over a long session (#85, #101, ADR 0025). Offline (lupa); never shipped.

Usage: python -I -X utf8 Tests/bench_packs.py [--addon DIR] [--regions 8] [--per-region 5000] [--variants 2]
                                             [--rounds 2] [--json FILE]

1. Languages: the Lua memory of the real addon with no language folder, with the chosen language only (what
   Core/Packs.lua loads) and with both languages (the layout before #85).
2. Regions: a synthetic archive of --regions regional packs of --per-region rules each (rules folder + English texts
   folder, LoadOnDemand, like AzerothUnspoken_Kalimdor and AzerothUnspoken_Kalimdor_enUS) is installed, and the
   character travels through every region --rounds times. After every step the script forces a full collection and
   prints the memory, the LoadAddOn calls and the time of the step (load + build + drop). The same journey is then
   made without dropping (Packs.Drop disabled) to show what keeping every visited region would cost.

WoW cannot unload an addon: what a dropped region leaves in memory is the code of its builders, with the strings
(texts, ids, condition values) as constants of the compiled chunk. The tables built from them (rules, variant lists,
index entries) are freed. The numbers are a projection from lupa on one PC, not a measurement in the client: the
budget (D3 in #130) is decided with /au prof in game.
"""
import argparse, json, os, random, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import bench_scale as B  # noqa: E402

WORDS = ("road", "stone", "wind", "ash", "river", "lantern", "ember", "shadow", "hill", "harbour", "bell", "thorn",
         "frost", "dune", "banner", "well", "orchard", "tower", "marsh", "song")
TAGS = ("melancholy", "wry", "heroic", "solemn", "dark", "mystic", "temperament:stoic", "curiosity:high")
EVENTS = ("zone", "travel", "muse", "battle", "victory")


def region_key(i):
    # region keys are letters and underscores (Core/Packs.lua drops anything else)
    return "synth_" + "abcdefghijklmnopqrstuvwxyz"[i % 26] * (1 + i // 26)


def sources(i, n, variants, rng):
    """Lua source of the rules folder and of the English texts folder of synthetic region i."""
    key = region_key(i)
    rules, texts = [], []
    for k in range(n):
        rid = f"syn.{key}.{k:05d}"
        ev = EVENTS[k % len(EVENTS)]
        tag = TAGS[k % len(TAGS)]
        zone = f"Synthetic Zone {key} {k % 12}"
        rules.append(f'["{rid}"] = {{ event = "{ev}", speaker = "inner", styles = {{ "intimate" }}, tags = {{ "{tag}" }}, '
                     f'conditions = {{ zone = "{zone}" }} }},')
        vs = []
        for v in range(variants):
            words = " ".join(rng.choice(WORDS) for _ in range(9 + rng.randrange(8)))
            vs.append(f'"The {words}, {key} {k} {v}."')
        texts.append(f'["{rid}"] = {{ {", ".join(vs)} }},')
    rules_src = (f'AzerothUnspoken:RegisterRegionalPack("{key}", function() return {{ id = "{key}_synthetic", '
                 f'registry = {{\n' + "\n".join(rules) + "\n} } end)\n")
    texts_src = (f'AzerothUnspoken:RegisterRegionalTexts("{key}", "enUS", "{key}_synthetic", function() return {{\n'
                 + "\n".join(texts) + "\n} end)\n")
    return key, rules_src, texts_src


def setup(addon, regions, per_region, variants, seed):
    lua, ns, _ = B.load_addon(addon, "lazy")
    G = lua.globals()
    # the sources stay in Python until LoadAddOn asks for them: Lua sees only the compiled chunk, as in the client
    src = {}
    G.FETCH_SOURCE = lambda name: src.pop(name)
    install = lua.eval("""function(name, region, lang)
        local meta = { ["X-AzerothUnspoken-Region"] = region, ["X-AzerothUnspoken-Language"] = lang }
        ADD_ADDON(name, { meta = meta, load = function() assert(loadstring(FETCH_SOURCE(name), "=" .. name))() end })
    end""")
    rng = random.Random(seed)
    keys = []
    for i in range(regions):
        key, rsrc, tsrc = sources(i, per_region, variants, rng)
        src["Synth_" + key], src["Synth_" + key + "_enUS"] = rsrc, tsrc
        install("Synth_" + key, key, None)
        install("Synth_" + key + "_enUS", key, "enUS")
        keys.append(key)
    lua.execute("""
        local Packs = AzerothUnspoken.Packs
        Packs:Discover()
        CUR_REGION = nil
        Packs.CurrentRegion = function() return CUR_REGION end
    """)
    return lua, ns, keys


def journey(lua, keys, rounds, drop=True):
    G = lua.globals()
    if not drop:
        lua.execute("AzerothUnspoken.Packs.Drop = function() end")
    update = lua.eval("function(r) CUR_REGION = r; local t0 = os.clock(); AzerothUnspoken.Packs:Update(); return os.clock() - t0 end")
    mem = lambda: B.memory_kb(lua)
    rows = [{"step": "login (base, English, Kalimdor)", "kb": mem(), "loads": len(list(G.LOAD_CALLS.values())), "s": 0}]
    for rnd in range(rounds):
        for key in keys:
            s = update(key)
            rows.append({"step": f"round {rnd + 1}: enter {key}", "kb": mem(),
                         "loads": len(list(G.LOAD_CALLS.values())), "s": s})
    return rows


def languages(addon):
    out = {}
    for label, packs, locale in (("no language folder", "none", None), ("chosen language only (English)", "lazy", "en"),
                                 ("chosen language only (Italian)", "lazy", "it"), ("both languages", "all", None)):
        lua, _, _ = B.load_addon(addon, packs, locale=locale)
        out[label] = B.memory_kb(lua)
    return out


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--addon", default=os.path.join(HERE, "..", "AzerothUnspoken"))
    ap.add_argument("--regions", type=int, default=8)
    ap.add_argument("--per-region", type=int, default=5000)
    ap.add_argument("--variants", type=int, default=2)
    ap.add_argument("--rounds", type=int, default=2)
    ap.add_argument("--seed", type=int, default=1)
    ap.add_argument("--json")
    a = ap.parse_args(argv)
    addon = os.path.abspath(a.addon)

    print("LANGUAGES (real database, Lua memory after a full collection)")
    langs = languages(addon)
    for label, kb in langs.items():
        print(f"  {label:<34} {kb / 1024:8.2f} MB")

    print(f"\nREGIONS: {a.regions} synthetic regions x {a.per_region} rules x {a.variants} English variants, "
          f"{a.rounds} rounds")
    result = {"languages": langs, "regions": a.regions, "per_region": a.per_region, "variants": a.variants}
    for drop in (True, False):
        t0 = time.perf_counter()
        lua, _, keys = setup(addon, a.regions, a.per_region, a.variants, a.seed)
        setup_s = time.perf_counter() - t0
        rows = journey(lua, keys, a.rounds, drop)
        title = "dropping the region left (Core/Packs.lua)" if drop else "keeping every region visited (no drop)"
        print(f"\n  {title} (setup {setup_s:.1f} s)")
        print(f"  {'step':<34} {'memory MB':>10} {'LoadAddOn':>10} {'step s':>8}")
        for r in rows:
            print(f"  {r['step']:<34} {r['kb'] / 1024:>10.1f} {r['loads']:>10} {r['s']:>8.2f}")
        result["drop" if drop else "keep"] = rows
        sys.stdout.flush()
    d, k = result["drop"], result["keep"]
    base = d[0]["kb"]
    first_round = d[1:1 + a.regions]
    built = max(r["kb"] for r in first_round) - base
    print("\nSUMMARY")
    print(f"  one region built: about {(d[1]['kb'] - base) / 1024:.1f} MB over the login memory")
    print(f"  after visiting every region, dropping: {(d[a.regions]['kb'] - base) / 1024:.1f} MB over login "
          f"(the region you are in plus the builders of the others)")
    print(f"  after visiting every region, keeping all: {(k[a.regions]['kb'] - base) / 1024:.1f} MB over login")
    print(f"  second round: {(d[-1]['kb'] - base) / 1024:.1f} MB over login, LoadAddOn calls {d[-1]['loads']} "
          f"(no new load after the first round)")
    result["summary"] = {"base_kb": base, "max_first_round_kb": built}
    if a.json:
        with open(a.json, "w", encoding="utf-8", newline="\n") as f:
            json.dump(result, f, indent=1)
    return result


if __name__ == "__main__":
    main(sys.argv[1:])
