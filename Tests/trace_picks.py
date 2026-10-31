"""Seeded pick trace of the engine, to compare two versions of the addon (R1: #83, #84, #86). Offline; never shipped.

Usage: python -I -X utf8 Tests/trace_picks.py [--addon DIR] [--picks 3000] [--seed 7] [--synthetic N]
                                              [--soul ARCHETYPE] [--emotion NAME=VALUE,...] > trace.txt

It loads the addon (no example pack), seeds math.random and asks Engine:PickEntry for a fixed sequence of events,
forms, languages, zones, subzones, hours, classes, races and targets, keeping the anti-repetition memory between picks
as a session would. Every line is "event form -> id variant text". Two versions of the engine that select the same
way print the same file: R1 was checked this way against the engine before the change (see CHANGELOG.md).
With --synthetic N a synthetic archive of N rules (Tests/SyntheticArchive.lua) is loaded first.
"""
import argparse, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import bench_scale as B  # noqa: E402

ZONES = [("Durotar", ""), ("Elwynn Forest", "Goldshire"), ("Duskwood", "Darkshire"), ("Orgrimmar", "Valley of Honor"),
         ("Moonglade", ""), ("Arathi Highlands", "Stromgarde Keep"), ("The Barrens", "The Crossroads"),
         ("Stranglethorn Vale", "Booty Bay"), ("Teldrassil", "Darnassus"), ("Tirisfal Glades", "Brill")]
CLASSES = [("WARRIOR", "Orc"), ("MAGE", "Human"), ("PRIEST", "Undead"), ("HUNTER", "NightElf"), ("ROGUE", "Gnome")]
EVENTS = B.EVENTS + [("pray", "say"), ("jest", "say"), ("farewell", "say"), ("attack", "say"), ("buff", "emote")]


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--addon", default=os.path.join(HERE, "..", "AzerothUnspoken"))
    ap.add_argument("--picks", type=int, default=3000)
    ap.add_argument("--seed", type=int, default=7)
    ap.add_argument("--synthetic", type=int, default=0)
    ap.add_argument("--uses-max", type=int, help="cap of the anti-repetition uses (#86); a large value compares the "
                    "selection alone with an engine that had no cap")
    ap.add_argument("--r1", action="store_true", help="switch off what R3 added to the selection (Engine.R1_COMPAT): "
                    "the trace must then be the same as the engine of R1 on the same data")
    ap.add_argument("--soul", help="archetype of the character's personality (R4), e.g. veteran; default neutral")
    ap.add_argument("--emotion", help="emotional state at the start (R4), e.g. worried=0.6,tense=0.3; it fades as the "
                    "trace advances the time")
    a = ap.parse_args(argv)
    lua, ns, _ = B.load_addon(os.path.abspath(a.addon))
    if a.r1:
        ns.Engine.R1_COMPAT = True
    if a.soul:
        assert ns.Personality.SetArchetype(ns.Personality, a.soul), "unknown archetype " + a.soul
    for pair in (a.emotion or "").split(","):
        if pair:
            name, value = pair.split("=")
            ns.Emotion.Add(ns.Emotion, name, float(value))
    if a.uses_max and ns.Engine.USES_MAX:
        ns.Engine.USES_MAX, ns.Engine.USES_TRIM = a.uses_max, a.uses_max
    if a.synthetic:
        src, _meta = lua.eval("function(ns, n) return SYNTH_SOURCE(ns, n, { seed = 1 }) end")(ns, a.synthetic)
        lua.eval("function(src, ns) assert(loadstring(src))(ns) end")(src, ns)
    pick = lua.eval("""function(ns, event, form, lang, zone, subzone, hour, class, race, target)
        ns.db.locale = lang
        P.zone, P.subzone, P.hour, P.class, P.race = zone, subzone, hour, class, race
        P.target = target and { name = "Hogger", level = 11, hp = 50, hpMax = 100, hostile = true, ctype = "Humanoid",
            classification = "elite", reaction = 2 } or nil
        local rec = ns.Engine:PickEntry(event, ns:BuildContext(), form)
        if not rec then return "-" end
        return rec.id .. " " .. tostring(rec.variant) .. " " .. rec.text
    end""")
    lua.globals().math.randomseed(a.seed)
    out = sys.stdout
    for i in range(a.picks):
        event, form = EVENTS[i % len(EVENTS)]
        zone, subzone = ZONES[(i // 3) % len(ZONES)]
        cls, race = CLASSES[(i // 7) % len(CLASSES)]
        lang = "it" if (i // 11) % 2 else "en"
        res = pick(ns, event, form, lang, zone, subzone, (i * 5) % 24, cls, race, i % 4 == 0)
        out.write(f"{i} {event} {form} -> {res}\n")
        if i % 50 == 49:
            lua.globals().ADVANCE(600)   # time passes: cooldowns end, as in a session


if __name__ == "__main__":
    main(sys.argv[1:])
