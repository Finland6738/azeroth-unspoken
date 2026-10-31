"""Scenario M6 of the analysis A1: return after a defeat (R4: #97, #98). Offline, Lua 5.1 through lupa; never shipped.

Usage: python -I -X utf8 Tests/scenario_return.py [--addon DIR] [--seeds 40] [--lang en] [--json FILE]

For each profile (neutral, the cheerful traveler, the ironic rogue) and each seed, a character enters Elwynn Forest,
dies there, goes to Westfall and comes back after half an hour. Every event goes through the real Narrative Director
(memory_return and zone forced to speak, intensity 100). Reported per profile:
  - the lines spoken on the way back (zone and memory_return), with their count;
  - "light" lines among them: an ironic register or a cheerful tag (temperament:cheerful, emo:happy);
  - the chance that a return line is light at the moment of the return: the share of the total weight W of the
    eligible memory_return lines that light lines hold (0 = never).
It runs on any version of the addon (it does not need the emotion module), so the same scenario can be measured on
the engine before and after R4.
"""
import argparse, json, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import bench_scale as B  # noqa: E402

SCENARIO = r"""
local ns, profile, seed, lang = ...
local Engine, LM = ns.Engine, ns.LivingMemory
math.randomseed(seed)
-- a fresh character: no memories, no anti-repetition memory, calm
ns.cdb.memories = nil
ns.Config.Merge(ns.Config.characterDefaults, ns.cdb)
LM:StartSession()
LM:Sanitize()
ns.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
if Engine.ResetLines then Engine:ResetLines() end
if ns.Emotion then ns.Emotion:Reset() end
ns.Director.queue, ns.Director.log = {}, {}
ns.db.locale = lang
ns.db.enabled, ns.paused, ns.db.intensity = true, false, 100
ns.db.chance = { memory_return = 100, zone = 100 }
if ns.Personality then ns.Personality:SetArchetype(profile) end
local said = {}
local propose = ns.Gateway.Propose
ns.Gateway.Propose = function(self, rec, ctx, opts)
	local shown = propose(self, rec, ctx, opts)
	if shown and rec then table.insert(said, rec.id) end
	return shown
end
local function Go(zone, wait)
	if wait >= 600 then ADVANCE(5); LEAP(wait) else ADVANCE(wait) end
	P.zone = zone
	FIRE("ZONE_CHANGED_NEW_AREA")
end
local function Light(p)
	for _, s in ipairs(p.styles or {}) do if s == "ironic" then return true end end
	return p.tags ~= nil and (p.tags["temperament:cheerful"] == true or p.tags["emo:happy"] == true)
end
Go("Durotar", 30)
Go("Elwynn Forest", 30)
ADVANCE(60); FIRE("PLAYER_DEAD"); ADVANCE(30)
Go("Westfall", 120)
ADVANCE(120)
said = {}
Go("Elwynn Forest", 1800)
ADVANCE(10)
-- the chance of a light return line now: the weights of the eligible lines (the emotions of the return included)
local ctx = ns:BuildContext()
local total, light = 0, 0
for _, p in ipairs(Engine:Eligible(Engine.byEvent.memory_return, lang, ctx, nil, time())) do
	local w = Engine:Weight(p, "memory_return", ctx).W
	total = total + w
	if Light(p) then light = light + w end
end
ns.Gateway.Propose = propose
local out = {}
for _, id in ipairs(said) do
	local p = Engine.byId[id]
	table.insert(out, { id = id, event = p and p.events[1] or "?", light = p ~= nil and Light(p) })
end
return out, total > 0 and light / total or 0, ctx.memory and ctx.memory.lastVisitBad or false
"""


def run(addon, profile, seeds, lang):
    spoken, shares, bad = {}, [], 0
    lua, ns, _ = B.load_addon(addon)
    fn = lua.eval("function(...) " + SCENARIO + " end")
    for seed in range(1, seeds + 1):
        out, share, last_bad = fn(ns, profile, seed, lang)
        shares.append(share)
        bad += 1 if last_bad else 0
        for r in out.values():
            key = (r.event, r.id, bool(r.light))
            spoken[key] = spoken.get(key, 0) + 1
    return {"spoken": sorted(([e, i, l, n] for (e, i, l), n in spoken.items()), key=lambda x: (x[0], -x[3], x[1])),
            "light_spoken": sum(n for (e, i, l), n in spoken.items() if l and e == "memory_return"),
            "light_weight_share": sum(shares) / len(shares), "last_visit_bad": bad, "seeds": seeds}


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--addon", default=os.path.join(HERE, "..", "AzerothUnspoken"))
    ap.add_argument("--seeds", type=int, default=40)
    ap.add_argument("--lang", default="en")
    ap.add_argument("--profiles", default="neutral,traveler,rogue")
    ap.add_argument("--json")
    a = ap.parse_args(argv)
    result = {}
    for profile in a.profiles.split(","):
        r = run(os.path.abspath(a.addon), profile, a.seeds, a.lang)
        result[profile] = r
        print(f"== {profile}: last visit bad in {r['last_visit_bad']}/{r['seeds']} runs; light return lines spoken: "
              f"{r['light_spoken']}; share of the weight of light return lines: {r['light_weight_share']:.1%}")
        for event, id_, light, n in r["spoken"]:
            print(f"   {n:3d}  {event:<14} {id_}{'  (light)' if light else ''}")
    if a.json:
        with open(a.json, "w", encoding="utf-8", newline="\n") as f:
            json.dump(result, f, indent=1)
    return result


if __name__ == "__main__":
    main(sys.argv[1:])
