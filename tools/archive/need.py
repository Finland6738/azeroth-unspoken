"""The need of the content waves (C0c, ADR 0050): how many whole texts each pool needs so that a character does not
hear the same text twice in a life of play.

A **pool** is the set of lines one kind of moment draws from: an event and one value of one layer (`place` = a zone, a
capital or an instance; `class`, `race`, `faction`; `mood` = the atmosphere of the zone, m: of the index; `time`,
`weather`, `ctype` = the creature fought; `band` = the level band) or the generic lines of the event. These are the
groups of the selection index (ADR 0024: zone, subzone, mapID, class, race, mood, ctype, time) plus the conditions the
pick checks apart (faction, weather, levelMin/levelMax).

The model (`need_model.json`): the interventions per hour of every event in the open world, a capital and an instance
(measured with the real Narrative Director by `Tests/bench_trial.py --mix`, the rest assumed), scaled to the default
pace; the share of each event a pool of each layer answers; the level path of a character of every race on two routes
of its faction (zones by level band, capitals, dungeons), then the life after level 60 (capitals, endgame zones,
dungeons, raids, battlegrounds).

Each character lives `life_hours` (400) in slots of `slot_hours`. A pool fires, for that character, the interventions
of its event in the slots where its value holds, times its share. Exact repetition can be avoided only if the pool has
at least as many texts as it fires (an exhaustive anti-repetition: today's engine keeps a window of 30 picks per event,
see ADR 0050), so:

- strict need of a pool = the most it fires for any character in the whole life;
- soft need = the most it fires for any character in any `soft_hours` (40) in a row;

and the need of the archive is the sum over the pools: texts are shared between characters, lives are not. The gap of a
pool is its need minus the usable texts it holds today (variants at the default depth), per language.
"""
import collections
import json
import math
import os
import re

import lualit
import packfiles
import store

HERE = os.path.dirname(os.path.abspath(__file__))
MODEL = os.path.join(HERE, "need_model.json")
SETTINGS = ("open", "city", "instance")
# the layers of a pool; the order is the one an intention of today is classified by (its first condition of these)
LAYERS = ("place", "class", "race", "faction", "mood", "time", "weather", "ctype", "band")
KINDS = {"party": "dungeon", "raid": "raid", "pvp": "battleground", "arena": "battleground"}


def load_model(path=MODEL):
    with open(path, encoding="utf-8") as f:
        return json.load(f)


def key(name):
    """The key of a place: its own name in lower-case letters, like an area (ADR 0048)."""
    return re.sub(r"[^a-z]", "", name.lower())


def _call_table(root, rel, call):
    p = packfiles._parser(packfiles.read(os.path.join(root, rel)))
    if not p.skip_to(call):
        return {}
    p.expect("(")
    return lualit.to_python(p.table())


def world(root=store.ROOT):
    """The places of the era (Data/Places.lua) with their mood (Data/Vocabulary.lua): name -> setting, kind, faction."""
    data = _call_table(root, os.path.join("AzerothUnspoken", "Data", "Places.lua"), "RegisterPlaces")
    moods = _call_table(root, os.path.join("AzerothUnspoken", "Data", "Vocabulary.lua"), "RegisterZoneMoods")
    out = {}
    for name, z in (data.get("zones") or {}).items():
        out[name] = {"setting": "city" if z.get("capital") else "open", "kind": "capital" if z.get("capital") else "zone",
                     "faction": z.get("faction"), "map": z.get("map"), "mood": moods.get(name)}
    for name, z in (data.get("instances") or {}).items():
        out[name] = {"setting": "instance", "kind": KINDS.get(z.get("kind"), "dungeon"), "faction": None, "map": z.get("map"),
                     "mood": moods.get(name)}
    return out


# ---- rates ----------------------------------------------------------------------------------------------------------

def rates(model):
    """Interventions per hour of every event in every setting, scaled to the default pace; and the events only some
    classes have (their companions)."""
    measured = (model.get("measured") or {}).get("rates") or {}
    out = {s: dict(measured.get(s) or {}) for s in ("open", "city")}
    out["instance"] = {e: r for e, r in out["open"].items() if e not in model["instance_drop"]}
    only = {}
    for e, a in model["assumed"].items():
        for s in SETTINGS:
            if a.get(s) and e not in out[s]:   # a measured rate wins over an assumed one
                out[s][e] = a[s]
        if a.get("classes"):
            only[e] = set(a["classes"])
    for s, r in out.items():
        total = sum(r.values())
        if total > 0:
            k = model["interventions_per_hour"] / total
            out[s] = {e: v * k for e, v in r.items()}
    return out, only


def shares(model, event):
    """The share of the firings of an event each layer answers; the rest is `generic`."""
    out = {}
    for group in model["layers"]:
        if any(event == e or (e.endswith("*") and event.startswith(e[:-1])) for e in group["events"]):
            out = dict(group["shares"])
            break
    out["generic"] = max(0.0, 1.0 - sum(out.values()))
    return out


# ---- the lives --------------------------------------------------------------------------------------------------------

def _largest_remainder(weights, n):
    """n slots split by weights, whole numbers that add up to n."""
    total = sum(weights.values()) or 1
    raw = {k: n * w / total for k, w in weights.items()}
    out = {k: int(v) for k, v in raw.items()}
    for k in sorted(raw, key=lambda k: (-(raw[k] - out[k]), k))[:n - sum(out.values())]:
        out[k] += 1
    return out


def _interleave(counts):
    """A sequence of the keys, each `counts[k]` times, spread evenly (smooth weighted round robin)."""
    total, cur, seq = sum(counts.values()), {k: 0 for k in counts}, []
    for _ in range(total):
        for k in counts:
            cur[k] += counts[k]
        best = max(counts, key=lambda k: (cur[k], k))
        cur[best] -= total
        seq.append(best)
    return seq


def _merge(blocks, extras):
    """Zones one after the other, the extras (capital, dungeons) spread among them."""
    total, out, placed, zi = len(blocks) + len(extras), [], 0, 0
    for i in range(total):
        if placed < len(extras) and (i + 1) * len(extras) // total > placed:
            out.append(extras[placed])
            placed += 1
        else:
            out.append(blocks[zi])
            zi += 1
    return out


def characters(model):
    """The typical characters: every race on every route of its faction (the class changes only its class pools and the
    events of companions, so it is a list of the classes the race can be)."""
    out = []
    for race, r in sorted(model["races"].items()):
        f = model["factions"][r["faction"]]
        for route in sorted(f["routes"]):
            out.append({"name": "%s/%s" % (race, route), "race": race, "token": r["token"], "faction": r["faction"],
                        "classes": r["classes"], "start": r["start"], "capital": r["capital"], "next": r["next"],
                        "route": f["routes"][route], "hub": f["hub"], "capitals": f["capitals"],
                        "dungeons10": f["dungeons"].get("10-20", {})})
    return out


def timeline(model, ch, places):
    """The life of a character as slots: (place, band). The level bands in order, then the life at 60."""
    step = model["slot_hours"]
    slots = []
    for band, hours in model["bands"]:
        n = int(round(hours / step))
        if band == "60":
            e = model["endgame"]
            w = collections.Counter()
            others = [c for c in ch["capitals"] if c not in (ch["capital"], ch["hub"])]
            split = e["capital_split"]
            w[ch["capital"]] += e["capitals"] * split["home"]
            w[ch["hub"]] += e["capitals"] * split["hub"]
            for c in others:
                w[c] += e["capitals"] * split["others"] / len(others)
            for kind in ("world", "dungeons", "raids", "battlegrounds"):
                share, where = e[kind]
                for p, x in where.items():
                    w[p] += share * x
            slots += [(p, band) for p in _interleave(_largest_remainder(w, n))]
            continue
        cap, dun = model["capital_share"].get(band, 0), model["dungeon_share"].get(band, 0)
        zones = {ch["start"]: 1.0} if band == "1-10" else ch["next"] if band == "10-20" else ch["route"][band]
        dungeons = ch["dungeons10"] if band == "10-20" else model["dungeons"].get(band, {})
        nz = int(round(n * (1 - cap - dun)))
        nc = int(round(n * cap))
        nd = n - nz - nc if dungeons else 0
        nz = n - nc - nd
        blocks = []
        for z, c in _largest_remainder(zones, nz).items():
            blocks += [z] * c
        caps = {ch["capital"]: 0.6, ch["hub"]: 0.4} if ch["capital"] != ch["hub"] else {ch["hub"]: 1.0}
        extra = collections.Counter(_largest_remainder(caps, nc))
        extra.update(_largest_remainder(dungeons, nd) if nd else {})
        slots += [(p, band) for p in _merge(blocks, _interleave({k: v for k, v in extra.items() if v}))]
    missing = sorted({p for p, _ in slots} - set(places))
    if missing:
        raise ValueError("places of the model not in Data/Places.lua: " + ", ".join(missing))
    return slots


# ---- pools ------------------------------------------------------------------------------------------------------------

def _windows(series, w):
    """The sums of `w` consecutive values (one sum, of all of them, when the series is shorter)."""
    if len(series) <= w:
        return [sum(series)]
    s = sum(series[:w])
    out = [s]
    for i in range(w, len(series)):
        s += series[i] - series[i - w]
        out.append(s)
    return out


def profile(model, ch, slots, places):
    """What a life holds whatever the event: for each group of slots (all of them; those of a place, a mood, a band, a
    weather) the slots in each setting over the whole life, and the distinct counts over every `soft_hours` in a row.
    The group `all` has three more channels: its slots in a zone without a mood (the mood share falls to the generic)."""
    n, w = len(slots), max(1, int(round(model["soft_hours"] / model["slot_hours"])))
    vec = collections.defaultdict(lambda: [[0.0] * n for _ in SETTINGS])
    allv = [[0.0] * n for _ in range(6)]
    for i, (p, band) in enumerate(slots):
        pl = places[p]
        s = SETTINGS.index(pl["setting"])
        allv[s][i] = 1.0
        if not pl["mood"]:
            allv[3 + s][i] = 1.0
        contested = pl["kind"] == "zone" and not pl["faction"]
        vec[("place", key(p) + ("@" + ch["faction"].lower() if contested else ""))][s][i] = 1.0
        if pl["mood"]:
            vec[("mood", pl["mood"])][s][i] = 1.0
        vec[("band", band)][s][i] = 1.0
        if pl["setting"] != "instance":
            for kind, x in model["weather"].get(pl["mood"] or "", model["weather"]["default"]).items():
                vec[("weather", kind)][s][i] += x
    out = {}
    for g, chans in list(vec.items()) + [(("all", ""), allv)]:
        total = tuple(sum(c) for c in chans)
        out[g] = (total, set(zip(*(tuple(round(x, 6) for x in _windows(c, w)) for c in chans))))
    return out


def _fire(coef, group):
    """(firings in the life, most firings in a window) of a group of slots with these firings per slot and channel."""
    total, windows = group
    return (sum(c * t for c, t in zip(coef, total)), max(sum(c * t for c, t in zip(coef, x)) for x in windows))


def pool_firings(model, ch, prof, rate, only):
    """{(event, layer, value): (firings in the life, most firings in soft_hours)} of one character for every layer but
    the class, and {event: firings} of the event in all (the class pools are those times the class share)."""
    step = model["slot_hours"]
    out, whole = {}, {}
    for ev in sorted({e for r in rate.values() for e in r}):
        if ev in only and not only[ev] & set(ch["classes"]):
            continue
        f = tuple(rate[s].get(ev, 0.0) * step for s in SETTINGS)
        if not any(f):
            continue
        sh = shares(model, ev)
        g, sm, sw = sh["generic"], sh.get("mood", 0), sh.get("weather", 0)
        # a layer that does not hold in a slot (no mood, no weather inside) gives its share to the generic pool there
        out[(ev, "generic", "")] = _fire((f[0] * g, f[1] * g, f[2] * (g + sw), f[0] * sm, f[1] * sm, f[2] * sm),
                                         prof[("all", "")])
        whole[ev] = _fire(f + (0, 0, 0), prof[("all", "")])
        for (layer, value), group in prof.items():
            s = sh.get(layer, 0)
            if s and layer != "all":
                fired = _fire(tuple(x * s for x in f), group)
                if fired[0]:
                    out[(ev, layer, value)] = fired
        for layer, values in (("race", {ch["token"]: 1}), ("faction", {ch["faction"].lower(): 1}), ("time", model["time"]),
                              ("ctype", model["ctype"])):
            s = sh.get(layer, 0)
            for v, x in (values.items() if s else ()):
                out[(ev, layer, v.lower())] = (whole[ev][0] * s * x, whole[ev][1] * s * x)
    return out, whole


def need(model, places):
    """{(event, layer, value): pool} with the strict and soft need (the most any character fires) and the mean rate."""
    rate, only = rates(model)
    pools = {}
    chars = characters(model)
    combos = sum(len(ch["classes"]) for ch in chars)

    def note(k, strict, soft, weight):
        p = pools.get(k)
        if p is None:
            p = pools[k] = {"event": k[0], "layer": k[1], "value": k[2], "strict": 0.0, "soft": 0.0, "per_hour": 0.0}
        p["strict"], p["soft"] = max(p["strict"], strict), max(p["soft"], soft)
        # the mean firings per hour of play over every character: how often a player meets the pool
        p["per_hour"] += strict / weight / model["life_hours"]

    for ch in chars:
        prof = profile(model, ch, timeline(model, ch, places), places)
        fired, whole = pool_firings(model, ch, prof, rate, only)
        for k, (strict, soft) in fired.items():
            note(k, strict, soft, len(chars))
        # the class changes only its own pools and the companions
        for ev, (strict, soft) in whole.items():
            s = shares(model, ev).get("class", 0)
            for cls in ch["classes"] if s else ():
                if ev not in only or cls in only[ev]:
                    note((ev, "class", cls.lower()), strict * s, soft * s, combos)
    floor = model.get("min_firings", 1)
    for p in pools.values():
        p["need_strict"] = int(math.ceil(p["strict"] - 1e-9)) if p["strict"] >= floor else 0
        p["need_soft"] = min(p["need_strict"], int(math.ceil(p["soft"] - 1e-9)) if p["soft"] >= floor else 0)
    return pools, chars


# ---- what the archive holds -----------------------------------------------------------------------------------------

def _values(v):
    return [x for x in (v if isinstance(v, list) else [v]) if isinstance(x, str)]


def classify(cond, intention_area, places, model):
    """The pools of today an intention belongs to: [(layer, value)], its first layer of LAYERS that its conditions
    name; [("generic", "")] when none."""
    cond = cond if isinstance(cond, dict) else {}
    zones = _values(cond.get("zone")) + _values((cond.get("place") or {}).get("zone") if isinstance(cond.get("place"), dict) else None)
    if isinstance(cond.get("place"), dict) and cond["place"].get("mapID") is not None:
        maps = cond["place"]["mapID"] if isinstance(cond["place"]["mapID"], list) else [cond["place"]["mapID"]]
        zones += [n for n, p in places.items() if p["map"] in maps]
    if not zones and intention_area and (cond.get("subzone") or cond.get("landmark")):
        # a line of a subzone or a landmark of an area pack: the zone of the area
        zones = [n for n, p in places.items() if p["kind"] == "zone" and key(n) == intention_area]
    if zones:
        out = []
        for z in zones:
            pl = places.get(z) or next((p for n, p in places.items() if n.lower() == z.lower()), None)
            k = key(z)
            if pl and pl["kind"] == "zone" and not pl["faction"]:
                fs = [f.lower() for f in _values(cond.get("faction"))] or ["alliance", "horde"]
                out += [("place", k + "@" + f) for f in fs]
            else:
                out.append(("place", k))
        return out
    if cond.get("subzone") or cond.get("landmark"):
        return [("place", "(subzone or landmark without its zone)")]
    for layer, field in (("class", "class"), ("race", "race"), ("faction", "faction"), ("mood", "mood"), ("time", "time"),
                         ("weather", "weather"), ("ctype", "ctype")):
        vs = _values(cond.get(field))
        if vs:
            return [(layer, v.lower()) for v in vs]
    lo, hi = cond.get("levelMin"), cond.get("levelMax")
    if isinstance(lo, (int, float)) or isinstance(hi, (int, float)):
        lo, hi = lo if isinstance(lo, (int, float)) else 1, hi if isinstance(hi, (int, float)) else 60
        return [("band", b) for b, (a, z) in model["band_levels"].items() if a <= hi and z >= lo] or [("generic", "")]
    return [("generic", "")]


def usable(variants, depth):
    """The texts a pick can say at the default depth: the variants of that depth or of none (RenderPhrase), or all of
    them when no variant is."""
    ok = [v for v in variants if not v["depth"] or v["depth"] == depth or (v["depth"].startswith("[") and depth in json.loads(v["depth"]))]
    return len(ok) if ok else len(variants)


def current(con, model, places, state="approved"):
    """{(event, layer, value): {lang: usable texts}} of the intentions in `state` (a monologue part that is only a
    part is not a line, as in the coverage report)."""
    langs = sorted({r[0] for r in con.execute("SELECT DISTINCT lang FROM variant")})
    var = collections.defaultdict(lambda: collections.defaultdict(list))
    for r in con.execute("SELECT v.intention_id, v.lang, v.depth FROM variant v JOIN intention i ON i.id = v.intention_id"
                         " WHERE i.state = ?", (state,)):
        var[r[0]][r[1]].append({"depth": r[2]})
    out = collections.defaultdict(collections.Counter)
    for r in con.execute("SELECT id, events, conditions, area, chainable, kind FROM intention WHERE state = ?", (state,)):
        if store.jload(r["chainable"]) == "only":
            continue
        cells = classify(store.jload(r["conditions"]), r["area"], places, model)
        for ev in json.loads(r["events"]):
            for layer, value in cells:
                for lang in langs:
                    out[(ev, layer, value)][lang] += usable(var[r["id"]][lang], model["default_depth"]) if var[r["id"]][lang] else 0
    return out, langs


# ---- the report -------------------------------------------------------------------------------------------------------

def place_kind(value, places, model):
    """The kind of a place pool for the waves: start, capital, zone, endgame, dungeon, raid, battleground."""
    name = next((n for n in places if key(n) == value.split("@")[0]), None)
    if name is None:
        return "zone"
    pl = places[name]
    if pl["kind"] != "zone":
        return pl["kind"]
    if name in {r["start"] for r in model["races"].values()}:
        return "start"
    if name in model["endgame"]["world"][1] and not any(name in z for f in model["factions"].values()
                                                         for r in f["routes"].values() for b, z in r.items() if b != "50-60"):
        return "endgame"
    return "zone"


def zone_band(value, places, model):
    """The first level band whose route lists the place (the order of the zone waves)."""
    name = next((n for n in places if key(n) == value.split("@")[0]), None)
    order = [b for b, _ in model["bands"]]
    best = len(order)
    for r in model["races"].values():
        if name == r["start"]:
            best = 0
        if name in r["next"]:
            best = min(best, 1)
    for f in model["factions"].values():
        for route in f["routes"].values():
            for b, zones in route.items():
                if name in zones:
                    best = min(best, order.index(b))
    for b, ds in list(model["dungeons"].items()) + [(b, d) for f in model["factions"].values() for b, d in f["dungeons"].items()]:
        if name in ds:
            best = min(best, order.index(b))
    return order[best] if best < len(order) else "60"


def condition(layer, value, places, model):
    """The conditions a line of the pool writes (Lua, for the writers)."""
    if layer == "generic":
        return "(none)"
    if layer == "place":
        k, _, faction = value.partition("@")
        name = next((n for n in places if key(n) == k), value)
        return 'zone = "%s"' % name + (', faction = "%s"' % faction.capitalize() if faction else "")
    if layer == "band":
        lo, hi = model["band_levels"][value]
        return "levelMin = %d, levelMax = %d" % (lo, hi) if lo != hi else "levelMin = %d" % lo
    if layer == "class":
        return 'class = "%s"' % value.upper()
    if layer == "race":
        return 'race = "%s"' % next((r["token"] for r in model["races"].values() if r["token"].lower() == value), value)
    if layer == "faction":
        return 'faction = "%s"' % value.capitalize()
    return '%s = "%s"' % (layer, value)


def label(layer, value, places, model):
    """A name for people: the place as the client writes it (and the faction of a contested zone), the class, the race."""
    if layer == "generic":
        return "(generic)"
    if layer == "place":
        k, _, faction = value.partition("@")
        name = next((n for n in places if key(n) == k), value)
        return name + (" (%s)" % faction.capitalize() if faction else "")
    if layer in ("class", "race", "faction"):
        return condition(layer, value, places, model).split('"')[1].capitalize() if layer == "class" else \
            condition(layer, value, places, model).split('"')[1]
    return value


def random_factor(share):
    """How many times its firings a pool must hold so that a uniform random pick (no memory beyond a short window)
    repeats in at most `share` of the picks: 1 - c (1 - e^(-1/c)) = share."""
    lo, hi = 1.0, 1000.0
    for _ in range(60):
        c = (lo + hi) / 2
        if 1 - c * (1 - math.exp(-1 / c)) > share:
            lo = c
        else:
            hi = c
    return hi


def compute(con, root=store.ROOT, model=None, state="approved"):
    model = model or load_model()
    places = world(root)
    pools, chars = need(model, places)
    have, langs = current(con, model, places, state)
    rows = []
    for k in sorted(set(pools) | set(have)):
        p = pools.get(k) or {"event": k[0], "layer": k[1], "value": k[2], "strict": 0.0, "soft": 0.0, "per_hour": 0.0,
                             "need_strict": 0, "need_soft": 0}
        h = have.get(k, {})
        row = {"event": k[0], "layer": k[1], "value": k[2], "per_hour": round(p["per_hour"], 4),
               "need_strict": p["need_strict"], "need_soft": p["need_soft"], "have": {l: h.get(l, 0) for l in langs}}
        row["condition"] = condition(k[1], k[2], places, model)
        row["label"] = label(k[1], k[2], places, model)
        row["gap_strict"] = {l: max(0, row["need_strict"] - row["have"][l]) for l in langs}
        row["gap_soft"] = {l: max(0, row["need_soft"] - row["have"][l]) for l in langs}
        if k[1] == "place":
            row["kind"] = place_kind(k[2], places, model)
            row["band"] = zone_band(k[2], places, model)
        rows.append(row)
    rate, _ = rates(model)
    res = {"model": {k: model[k] for k in ("life_hours", "soft_hours", "slot_hours", "interventions_per_hour", "default_depth")},
           "measured": {k: (model.get("measured") or {}).get(k) for k in ("command", "hours", "per_hour")},
           "state": state, "languages": langs, "characters": [c["name"] for c in chars],
           "class_combinations": sum(len(c["classes"]) for c in chars),
           "rates": {s: {e: round(v, 4) for e, v in sorted(r.items())} for s, r in rate.items()},
           "pools": rows}

    def total(field, sub=None):
        if sub is None:
            return sum(r[field] for r in rows)
        return {l: sum(r[field][l] for r in rows) for l in langs}

    res["totals"] = {"need_strict": total("need_strict"), "need_soft": total("need_soft"),
                     "have": total("have", True), "gap_strict": total("gap_strict", True), "gap_soft": total("gap_soft", True),
                     "pools": sum(1 for r in rows if r["need_strict"]), "surplus": {
                         l: sum(max(0, r["have"][l] - r["need_strict"]) for r in rows) for l in langs}}
    # today's pick is random among the lines not in the window of the event (30): the size a pool needs then
    strict = sum(p["strict"] for p in pools.values() if p["need_strict"])
    res["totals"]["random_pick"] = {"%d%%" % (100 * x): int(round(strict * random_factor(x), -2)) for x in (0.10, 0.05)}
    for name, field in (("by_event", "event"), ("by_layer", "layer")):
        agg = collections.OrderedDict()
        for r in sorted(rows, key=lambda r: -r["need_strict"]):
            a = agg.setdefault(r[field], {"need_strict": 0, "need_soft": 0, "have": collections.Counter(), "gap_strict": collections.Counter()})
            a["need_strict"] += r["need_strict"]
            a["need_soft"] += r["need_soft"]
            a["have"].update(r["have"])
            a["gap_strict"].update(r["gap_strict"])
        res[name] = {k: {"need_strict": v["need_strict"], "need_soft": v["need_soft"], "have": dict(v["have"]),
                         "gap_strict": dict(v["gap_strict"])} for k, v in sorted(agg.items(), key=lambda kv: -kv[1]["need_strict"])}
    areas = collections.defaultdict(lambda: {"need_strict": 0, "need_soft": 0, "have": collections.Counter(),
                                             "gap_strict": collections.Counter()})
    for r in rows:
        if r["layer"] != "place":
            continue
        a = areas[r["value"]]
        a["kind"], a["band"] = r["kind"], r["band"]
        a["need_strict"] += r["need_strict"]
        a["need_soft"] += r["need_soft"]
        a["have"].update(r["have"])
        a["gap_strict"].update(r["gap_strict"])
    res["by_place"] = {k: dict(v, have=dict(v["have"]), gap_strict=dict(v["gap_strict"]))
                       for k, v in sorted(areas.items(), key=lambda kv: -kv[1]["need_strict"])}
    res["waves"] = waves(rows, model, langs)
    return res


# ---- the waves --------------------------------------------------------------------------------------------------------

def _unit(row):
    """The unit of work of a pool: what one writer can hold in mind (a place, a class, a race... or the generic lines
    of an event; the NPC dialogues of one kind of NPC together)."""
    layer = row["layer"]
    if layer == "place":
        return (row["kind"], row["label"])
    if layer == "generic":
        ev = row["event"]
        return ("generic", "_".join(ev.split("_")[:2]) if ev.startswith("npcd_") else ev)
    return (layer, row["label"])


WAVE_POOL = ("event", "layer", "value", "texts", "have", "need", "target")


def waves(rows, model, langs):
    """The ordered waves: the soft need of every pool first, then the strict one; units in the order of kinds of the
    model and, within a kind, the most frequent first (zones by level band); a wave holds about `size` texts per
    language (counted in the first language), never more than `max`."""
    cfg = model["waves"]
    order = {k: i for i, k in enumerate(cfg["order"])}
    lang = langs[0] if langs else None
    bands = [b for b, _ in model["bands"]]
    queue = []
    for target in ("soft", "strict"):
        units = collections.OrderedDict()
        for r in rows:
            done = r["have"].get(lang, 0) if lang else 0
            if target == "strict":
                done = max(done, r["need_soft"])
            todo = r["need_" + target] - done
            if todo <= 0:
                continue
            k = _unit(r)
            u = units.setdefault(k, {"kind": k[0], "name": k[1], "target": target, "texts": 0, "per_hour": 0.0,
                                     "band": r.get("band"), "condition": r["condition"], "pools": []})
            u["texts"] += todo
            u["per_hour"] += r["per_hour"]
            u["pools"].append([r["event"], r["layer"], r["value"], todo, r["have"].get(lang, 0) if lang else 0,
                               r["need_" + target], target])

        def rank(u):
            band = bands.index(u["band"]) if u["kind"] in ("zone", "dungeon") and u["band"] in bands else 0
            return (order.get(u["kind"], len(order)), band, -u["per_hour"], u["name"])

        queue += sorted(units.values(), key=rank)
    plan = []
    for u in queue:
        u["pools"].sort(key=lambda p: -p[3])
        while u["texts"] > 0:
            if not plan or plan[-1]["texts"] >= cfg["size"]:
                plan.append({"texts": 0, "soft": 0, "strict": 0, "units": []})
            w = plan[-1]
            room = cfg["max"] - w["texts"]
            take, part = [], 0
            while u["pools"] and part < room:
                p = u["pools"][0]
                n = min(p[3], room - part)
                take.append(p[:3] + [n] + p[4:])
                part += n
                p[3] -= n
                if not p[3]:
                    u["pools"].pop(0)
            u["texts"] -= part
            w["texts"] += part
            w[u["target"]] += part
            w["units"].append({"kind": u["kind"], "name": u["name"], "target": u["target"], "condition": u["condition"],
                               "texts": part, "pools": take})
    # a last wave far under the minimum joins the one before it
    if len(plan) > 1 and plan[-1]["texts"] < cfg["min"] / 2:
        last = plan.pop()
        for k in ("texts", "soft", "strict"):
            plan[-1][k] += last[k]
        plan[-1]["units"] += last["units"]
    for i, w in enumerate(plan, 1):
        w["id"] = "W%02d" % i
        w["target"] = "+".join(t for t in ("soft", "strict") if w[t])
    return plan


POOL_COLUMNS = ("event", "layer", "value", "per_hour", "need_strict", "need_soft")   # then what it has in each language


def to_json(res):
    """The report as JSON, one pool and one wave per line (it diffs row by row): `pools` are lists in the order of
    `pool_columns` (the gap of a pool is its need minus what it has; the conditions of its lines are those of its wave
    unit), the pools of a wave lists in the order of `wave_pool_columns`."""
    def dump(v):
        return json.dumps(v, ensure_ascii=False, separators=(",", ":"))

    langs = res["languages"]
    lines = ["{"]
    for k, v in res.items():
        if k not in ("pools", "waves"):
            lines.append(" %s: %s," % (dump(k), dump(v)))
    lines.append(' "pool_columns": %s,' % dump(list(POOL_COLUMNS) + ["have_" + l for l in langs]))
    lines.append(' "wave_pool_columns": %s,' % dump(WAVE_POOL))
    lines.append(' "pools": [')
    lines.append(",\n".join("  " + dump([r[c] for c in POOL_COLUMNS] + [r["have"][l] for l in langs]) for r in res["pools"]))
    lines.append(" ],")
    lines.append(' "waves": [')
    lines.append(",\n".join("  " + dump(w) for w in res["waves"]))
    lines.append(" ]")
    lines.append("}")
    return "\n".join(lines) + "\n"


def _table(header, rows):
    out = ["| " + " | ".join(header) + " |", "|" + "|".join("---" for _ in header) + "|"]
    out += ["| " + " | ".join(str(x) for x in r) + " |" for r in rows]
    return out


def _fmt(n):
    return "{:,}".format(n)


def to_markdown(res, top=30):
    m, t, langs = res["model"], res["totals"], res["languages"]
    lines = ["# Content need", "",
             "Generated by `python tools/archive/cli.py need --write` from the model `tools/archive/need_model.json` "
             "([ADR 0050](../adr/0050-need-model-near-duplicates-and-content-waves.md)); do not edit by hand. "
             "The machine-readable report is [need.json](need.json); the plan of the waves is [WAVES.md](WAVES.md).", "",
             "**Need** = how many distinct texts per language a pool must hold so that no character hears one of its texts "
             "twice in **%d hours** of play (strict) or in any **%d hours** in a row (soft), at the default pace of **%g** "
             "interventions per hour and the default depth `%s`. It assumes an anti-repetition that exhausts a pool before "
             "repeating (see the ADR: today's engine keeps a window of 30 picks per event). Counted state: `%s`." %
             (m["life_hours"], m["soft_hours"], m["interventions_per_hour"], m["default_depth"], res["state"]), ""]
    lines += ["## Headline", ""]
    lines += _table(["", "texts per language"] + ["have / gap " + l for l in langs], [
        ["strict need (%d h)" % m["life_hours"], "**%s**" % _fmt(t["need_strict"])] +
        ["%s / **%s**" % (_fmt(t["have"][l]), _fmt(t["gap_strict"][l])) for l in langs],
        ["soft need (%d h)" % m["soft_hours"], "**%s**" % _fmt(t["need_soft"])] +
        ["%s / **%s**" % (_fmt(t["have"][l]), _fmt(t["gap_soft"][l])) for l in langs]])
    lines += ["", "- Pools with a need: %s; typical characters: %d (%s), %d race and class combinations." % (
        _fmt(t["pools"]), len(res["characters"]), ", ".join(res["characters"]), res["class_combinations"]),
        "- With **today's pick** (random among the lines of the event not in its window of 30 picks; ADR 0050) the same "
        "pools would need about **%s** texts per language for at most 10%% of the interventions of 400 hours to be "
        "repeats, **%s** for at most 5%%: the owner's range of 100,000-300,000 (ADR 0024). An exhaustive memory of what "
        "was said brings it down to the strict need." % (_fmt(t["random_pick"]["10%"]), _fmt(t["random_pick"]["5%"])),
        "- The need grows in proportion to the pace: at intensity 100 the spontaneous budgets double.",
        "- Texts beyond the strict need of their pool (they still widen the choice): " +
        ", ".join("%s %s" % (l, _fmt(n)) for l, n in t["surplus"].items()) + ".",
        "- Waves planned: **%d** of about %s texts per language ([WAVES.md](WAVES.md))." % (
            len(res["waves"]), _fmt(2500))]
    ms = res["measured"]
    if ms.get("command"):
        lines += ["- Event mix measured by `%s` (%s hours in the open world, %s in a capital; %s and %s interventions per "
                  "hour before the scaling)." % (ms["command"], ms["hours"]["open"], ms["hours"]["city"],
                                                 ms["per_hour"]["open"], ms["per_hour"]["city"])]
    lines += ["", "## By layer", ""]
    lines += _table(["layer", "strict need", "soft need"] + ["have " + l for l in langs] + ["gap " + l for l in langs],
                    [[k, _fmt(v["need_strict"]), _fmt(v["need_soft"])] + [_fmt(v["have"].get(l, 0)) for l in langs] +
                     [_fmt(v["gap_strict"].get(l, 0)) for l in langs] for k, v in res["by_layer"].items()])
    lines += ["", "## By event (the %d largest)" % top, ""]
    lines += _table(["event", "strict need", "soft need"] + ["have " + l for l in langs] + ["gap " + l for l in langs],
                    [[k, _fmt(v["need_strict"]), _fmt(v["need_soft"])] + [_fmt(v["have"].get(l, 0)) for l in langs] +
                     [_fmt(v["gap_strict"].get(l, 0)) for l in langs] for k, v in list(res["by_event"].items())[:top]])
    lines += ["", "## By place", "", "A contested zone has a pool per faction (`@horde`, `@alliance`).", ""]
    lines += _table(["place", "kind", "band", "strict need", "soft need"] + ["have " + l for l in langs] + ["gap " + l for l in langs],
                    [[k, v["kind"], v["band"], _fmt(v["need_strict"]), _fmt(v["need_soft"])] +
                     [_fmt(v["have"].get(l, 0)) for l in langs] + [_fmt(v["gap_strict"].get(l, 0)) for l in langs]
                     for k, v in res["by_place"].items()])
    lines += ["", "## Pools most often met (the %d first)" % top, "",
              "`per hour` = the mean firings per hour of play over every typical character.", ""]
    rows = sorted((r for r in res["pools"] if r["need_strict"]), key=lambda r: -r["per_hour"])[:top]
    lines += _table(["event", "layer", "value", "per hour", "strict", "soft"] + ["have " + l for l in langs],
                    [[r["event"], r["layer"], r["value"] or "-", "%.3f" % r["per_hour"], r["need_strict"], r["need_soft"]] +
                     [r["have"][l] for l in langs] for r in rows])
    lines += ["", "## Rates of the model", "", "Interventions per hour of each event after the scaling (open world, capital, instance).", ""]
    evs = sorted({e for r in res["rates"].values() for e in r}, key=lambda e: -res["rates"]["open"].get(e, 0))
    lines += _table(["event"] + list(res["rates"]), [[e] + ["%.3f" % res["rates"][s].get(e, 0) for s in res["rates"]] for e in evs])
    return "\n".join(lines) + "\n"


BEGIN, END = "<!-- waves:begin (generated by `cli need --write`) -->", "<!-- waves:end -->"


def waves_markdown(res):
    """The table of the waves, written between the markers of WAVES.md."""
    ws = res["waves"]
    lines = [BEGIN, "", "Total: **%d waves**, %s texts per language to the soft need then %s more to the strict one "
             "(counted in `%s`; every wave is written in every language)." % (
                 len(ws), _fmt(sum(w["soft"] for w in ws)), _fmt(sum(w["strict"] for w in ws)),
                 res["languages"][0] if res["languages"] else "-"), ""]

    def conditions(w):
        kinds = []
        for u in w["units"]:
            c = "(none)" if u["kind"] == "generic" else ", ".join(re.findall(r"(\w+) =", u["condition"]))
            if c not in kinds:
                kinds.append(c)
        return "; ".join("`%s`" % c for c in kinds)

    def units(w, n=12):
        names = ["%s %s (%s)" % (u["kind"], u["name"], _fmt(u["texts"])) for u in w["units"]]
        return "; ".join(names[:n]) + ("; and %d more" % (len(names) - n) if len(names) > n else "")

    lines += _table(["wave", "target", "texts", "units (texts)", "conditions"],
                    [[w["id"], w["target"], _fmt(w["texts"]), units(w), conditions(w)] for w in ws])
    lines += ["", "The pools of every wave are in [need.json](need.json) (`waves`); `cli need --wave W01` prints one.",
              "", END]
    return "\n".join(lines)


def write_waves(path, res):
    """Replaces the generated part of WAVES.md, keeping the text around it."""
    text = packfiles.read(path) if os.path.exists(path) else "# Content waves\n\n" + BEGIN + "\n" + END + "\n"
    a, b = text.find(BEGIN), text.find(END)
    if a < 0 or b < 0:
        text = text.rstrip("\n") + "\n\n" + BEGIN + "\n" + END + "\n"
        a, b = text.find(BEGIN), text.find(END)
    packfiles.write(path, text[:a] + waves_markdown(res) + text[b + len(END):])
