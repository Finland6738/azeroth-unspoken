"""Trial slice of #102 (A1 §6.2, roadmap R5): repetition and pace of simulated play in Durotar, Orgrimmar, Elwynn
Forest and Stormwind City. Offline, Lua 5.1 through lupa; never shipped.

Usage: python -I -X utf8 Tests/bench_trial.py [--addon DIR] [--sessions 2] [--minutes 90] [--seeds 1,2,3]
                                              [--long HOURS] [--json FILE] [--mix HOURS [--model [FILE]]]

It loads the addon with every pack (English) and plays the three characters of the issue: an orc warrior and a troll
mage in Durotar, a human paladin in Elwynn Forest, each for `--sessions` sessions of `--minutes` minutes (12 hours
apart, the saved memory kept). A session walks a route of subzones through the client's own events (a new area, a
subzone, the weather, rest, death and revival; the hour of the server moves with the clock), with a fight about every
50 seconds outside the cities, the "speak" key every 5 minutes, a death in the first session followed by a return to
the same zone, and a visit to the capital with a rest at the inn. Every event goes through the real Narrative
Director and the real selection; the interventions shown in the narrator are recorded. The rhythm of play is a
hypothesis, as in the analysis A1.

Reported per character, averaged over the seeds:
  - interventions per hour, and the share spoken by the trial packs (`kalimdor_durotar`, `kalimdor_orgrimmar`,
    `eastern_elwynn`, `eastern_stormwind`);
  - texts said twice within a session (the criterion of A1 §6.2: none within 90 minutes) and across the sessions;
  - the minute of the first exact repetition, if any;
  - time of Engine:PickEntry (mean, p95; the in-game target is a p95 under 5 ms).
With --mix H (C0c) it only measures the event mix of a day of play (quests, levels, merchants and flights added to
the route) and, with --model, writes it into the need model of the archive (`cli need`).
With --long H, each character also plays H hours in a row on the same route (the saved memory kept): the first
exact repetition, the share of repeated texts, and per area the trial texts spoken per hour while there. The expected
hours to exhaust an area's own lines are its texts per language divided by that rate (perfect anti-repetition).
"""
import argparse, collections, json, os, statistics, sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import bench_scale as B  # noqa: E402

MODEL = os.path.join(HERE, "..", "tools", "archive", "need_model.json")
TRIAL_PACKS = {"kalimdor_durotar": "Durotar", "kalimdor_orgrimmar": "Orgrimmar", "eastern_elwynn": "Elwynn Forest",
               "eastern_stormwind": "Stormwind City"}

# a route: (zone, subzone, minutes, fights, rest); a session takes the first minutes of the route, a long run loops it
HORDE_ROUTE = [
    ("Durotar", "Valley of Trials", 15, True, False), ("Durotar", "Burning Blade Coven", 6, True, False),
    ("Durotar", "Razor Hill", 6, False, True), ("Durotar", "Razormane Grounds", 10, True, False),
    ("Durotar", "Drygulch Ravine", 10, True, False), ("Durotar", "Thunder Ridge", 8, True, False),
    ("Orgrimmar", "Valley of Strength", 6, False, True), ("Orgrimmar", "The Drag", 5, False, False),
    ("Orgrimmar", "Valley of Wisdom", 4, False, False), ("Durotar", "Skull Rock", 8, True, False),
    ("Durotar", "Sen'jin Village", 5, False, True), ("Durotar", "Echo Isles", 10, True, False),
    ("Durotar", "Tiragarde Keep", 10, True, False), ("Durotar", "Kolkar Crag", 8, True, False),
    ("Orgrimmar", "Valley of Spirits", 5, False, False), ("Orgrimmar", "Valley of Honor", 5, False, True),
    ("Orgrimmar", "Cleft of Shadow", 4, False, False), ("Durotar", "Southfury Watershed", 8, True, False),
    ("Durotar", "Deadeye Shore", 8, True, False), ("Durotar", "Bladefist Bay", 6, True, False),
]
TROLL_ROUTE = [HORDE_ROUTE[i] for i in (10, 11, 2, 0, 1, 12, 13, 6, 7, 14, 15, 9, 3, 4, 5, 8, 16, 17, 18, 19)]
ALLIANCE_ROUTE = [
    ("Elwynn Forest", "Northshire Valley", 12, True, False), ("Elwynn Forest", "Northshire Abbey", 4, False, False),
    ("Elwynn Forest", "Northshire Vineyards", 8, True, False), ("Elwynn Forest", "Echo Ridge Mine", 8, True, False),
    ("Elwynn Forest", "Goldshire", 6, False, True), ("Elwynn Forest", "Fargodeep Mine", 10, True, False),
    ("Elwynn Forest", "The Stonefield Farm", 6, True, False), ("Elwynn Forest", "Mirror Lake", 6, True, False),
    ("Stormwind City", "Valley of Heroes", 3, False, False), ("Stormwind City", "Trade District", 6, False, True),
    ("Stormwind City", "Cathedral Square", 5, False, False), ("Stormwind City", "Old Town", 4, False, False),
    ("Elwynn Forest", "Jasperlode Mine", 10, True, False), ("Elwynn Forest", "Crystal Lake", 8, True, False),
    ("Elwynn Forest", "Eastvale Logging Camp", 10, True, False), ("Elwynn Forest", "Tower of Azora", 6, True, False),
    ("Elwynn Forest", "Brackwell Pumpkin Patch", 8, True, False), ("Elwynn Forest", "Ridgepoint Tower", 6, True, False),
    ("Stormwind City", "Mage Quarter", 4, False, False), ("Stormwind City", "Dwarven District", 4, False, True),
    ("Stormwind City", "The Park", 4, False, False), ("Stormwind City", "The Canals", 4, False, False),
    ("Elwynn Forest", "Forest's Edge", 8, True, False), ("Elwynn Forest", "Westbrook Garrison", 4, False, False),
    ("Elwynn Forest", "Stone Cairn Lake", 8, True, False), ("Elwynn Forest", "Maclure Vineyards", 6, True, False),
]
CHARACTERS = [
    dict(name="Garrosh", cls="WARRIOR", race="Orc", faction="Horde", sex=2, route=HORDE_ROUTE, die=4,
         spells=("Heroic Strike", "Battle Shout"),
         foes={"Durotar": [("Beast", "Clattering Scorpid"), ("Beast", "Dire Mottled Boar"),
                           ("Humanoid", "Razormane Quilboar"), ("Humanoid", "Burning Blade Cultist"),
                           ("Humanoid", "Kul Tiras Marine"), ("Beast", "Durotar Tiger")]}),
    dict(name="Zul", cls="MAGE", race="Troll", faction="Horde", sex=3, route=TROLL_ROUTE, die=6,
         spells=("Fireball", "Arcane Intellect"),
         foes={"Durotar": [("Beast", "Clattering Scorpid"), ("Humanoid", "Hexed Troll"), ("Beast", "Makrura Clacker"),
                           ("Humanoid", "Kolkar Drudge"), ("Humanoid", "Dustwind Harpy"), ("Beast", "Thunder Lizard")]}),
    dict(name="Aldric", cls="PALADIN", race="Human", faction="Alliance", sex=2, route=ALLIANCE_ROUTE, die=5,
         spells=("Holy Light", "Blessing of Might"),
         foes={"Elwynn Forest": [("Beast", "Timber Wolf"), ("Humanoid", "Kobold Vermin"), ("Humanoid", "Defias Thug"),
                                 ("Humanoid", "Murloc Streamrunner"), ("Humanoid", "Riverpaw Runt"),
                                 ("Beast", "Young Forest Bear")]}),
]

DRIVER = r"""
local ns = ...
local Engine = ns.Engine
ns.db.locale = "en"
SIM = { out = {}, times = {}, hours = {} }
local pick = Engine.PickEntry
Engine.PickEntry = function(self, event, ctx, form, composite)
	local t0 = os.clock()
	local rec = pick(self, event, ctx, form, composite)
	table.insert(SIM.times, (os.clock() - t0) * 1000)
	return rec
end
local propose = ns.Gateway.Propose
ns.Gateway.Propose = function(self, rec, ctx, opts)
	local shown = propose(self, rec, ctx, opts)
	if shown then
		local p = Engine.byId[rec.id]
		table.insert(SIM.out, { id = rec.id, event = rec.event, text = rec.text, pack = p and p.pack or "",
			zone = P.zone, t = SIM.clock, session = SIM.session })
	end
	return shown
end
"""

SESSION = r"""
local ns, ch, minutes, seed, session, startHour, loop, rich = ...
math.randomseed(seed * 100 + session)
SIM.session, SIM.clock = session, 0
P.name, P.class, P.race, P.faction, P.sex, P.level = ch.name, ch.cls, ch.race, ch.faction, ch.sex, 6 + session
local D = ns.Director
local function Advance(s)
	-- the clock of the server moves with play: World polls it every minute and offers dawn and dusk
	local left = s
	while left > 0 do
		local step = math.min(left, 30)
		ADVANCE(step); left = left - step
		SIM.clock = SIM.clock + step
		SIM.hours[P.zone] = (SIM.hours[P.zone] or 0) + step / 3600
		P.hour = math.floor(startHour + SIM.clock / 3600) % 24
	end
end
-- --mix (C0c): the rest of a day of play, through the client's events like the rest: a quest handed in every 9
-- minutes, a level every 3 hours, a merchant at every rest, a flight to and from the capital
local NPC = 0
local function Talk(name, open, close)
	NPC = NPC + 1
	P.npc = { name = name, guid = ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(3000 + NPC % 40), sex = 2, reaction = 5 }
	FIRE(open); Advance(20)
	FIRE(close); P.npc = nil; Advance(2)
end
local nextQuest, nextLevel, quest = 540, 3 * 3600, 0
local function Chores()
	if not rich then return end
	if SIM.clock >= nextQuest then
		quest = quest + 1
		Talk("Quest Giver", "QUEST_COMPLETE", "QUEST_FINISHED")
		FIRE("QUEST_TURNED_IN", 5000 + quest); Advance(5)
		nextQuest = nextQuest + 540
	end
	if SIM.clock >= nextLevel then
		P.level = P.level + 1
		FIRE("PLAYER_LEVEL_UP", P.level); Advance(5)
		nextLevel = nextLevel + 3 * 3600
	end
end
local function Fly()
	Talk("Flight Master", "TAXIMAP_OPENED", "GOSSIP_CLOSED")
	P.onTaxi = true; FIRE("PLAYER_CONTROL_LOST"); Advance(120)
	P.onTaxi = false; FIRE("PLAYER_CONTROL_GAINED"); Advance(5)
end
local function Offer(ev, extra) D:Offer(ev, extra); Advance(0.2) end
local WEATHER = { ["Durotar"] = { "Clear", "Sandstorm", "Clear", "Rain" }, ["Orgrimmar"] = { "Clear", "Sandstorm" },
	["Elwynn Forest"] = { "Clear", "Rain", "Fog", "Storm" }, ["Stormwind City"] = { "Clear", "Rain", "Fog" } }
local function Weather()
	local list = WEATHER[P.zone] or { "Clear" }
	P.weather = { type = list[math.random(#list)], intensity = 0.6 }
	FIRE("WEATHER_CHANGED"); Advance(40)
end
local function Fight(foes)
	local foe = foes[math.random(#foes)]
	P.target = { name = foe[2], level = P.level, hp = 100, hpMax = 100, hostile = true, ctype = foe[1], reaction = 2 }
	P.combat = true
	Offer("battle"); Advance(4)
	Offer("attack", { spell = ch.spells[1], target = foe[2] }); Advance(5)
	if math.random(100) <= 20 then Offer("lowhp"); Advance(3) end
	if ch.cls == "PALADIN" and math.random(100) <= 40 then Offer("heal", { spell = ch.spells[1] }); Advance(3) end
	Advance(6)
	P.combat = false
	P.target = { name = foe[2], level = P.level, hp = 0, hpMax = 100, hostile = true, ctype = foe[1], reaction = 2,
		dead = true }
	Offer("victory", { duration = 18 })
	P.target = nil
end
local nextSpeak, died = 300, false
local i, limit = 0, minutes * 60
while SIM.clock < limit do
	i = i % #ch.route + 1
	local stop = ch.route[i]
	local zone, sub, mins, fights, rest = stop[1], stop[2], stop[3], stop[4], stop[5]
	if P.zone ~= zone then
		if rich and P.zone then Fly() end
		P.zone, P.subzone = zone, sub
		FIRE("ZONE_CHANGED_NEW_AREA"); Advance(25)
	else
		P.subzone = sub
	end
	FIRE("ZONE_CHANGED"); Advance(20)
	if rest then P.resting = true; FIRE("PLAYER_UPDATE_RESTING"); Advance(30) end
	if rich and rest then Talk("Merchant", "MERCHANT_SHOW", "MERCHANT_CLOSED") end
	if math.random(100) <= 25 then Weather() end
	local stopEnd = SIM.clock + mins * 60
	while SIM.clock < stopEnd and SIM.clock < limit do
		if fights then
			Fight(ch.foes[zone] or ch.foes[next(ch.foes)])
			Advance(25 + math.random(20))
		else
			Advance(45)
		end
		if SIM.clock >= nextSpeak then ns.Gateway:Improvise(); nextSpeak = nextSpeak + 300 end
		Chores()
		-- a death in the first session, in the open: the character comes back to the same zone later
		if session == 1 and not died and i == ch.die and fights then
			died = true
			P.dead = true; FIRE("PLAYER_DEAD"); Advance(30)
			P.dead = false; FIRE("PLAYER_UNGHOST"); Advance(5)
			Offer("rez")
			P.hp = 100
			break
		end
	end
	if rest then P.resting = false; FIRE("PLAYER_UPDATE_RESTING"); Advance(5) end
	if not loop and i == #ch.route then break end
end
"""


def play(addon, ch, sessions, minutes, seed, loop=False, rich=False, hours=None):
    """One character: `sessions` sessions of `minutes` minutes in one runtime (the saved memory is kept). `rich` adds
    the quests, levels, merchants and flights of --mix; `hours`, a dict, receives the hours spent in each zone."""
    lua, ns, _ = B.load_addon(addon)
    lua.execute("function __drv(...) " + DRIVER + " end")
    lua.globals().__drv(ns)
    lua.execute("function __sess(...) " + SESSION + " end")
    t = lua.table_from({k: v for k, v in ch.items() if k not in ("route", "foes", "spells")})
    t.route = lua.table_from([lua.table_from(list(r)) for r in ch["route"]])
    t.foes = lua.table_from({z: lua.table_from([lua.table_from(list(f)) for f in fs]) for z, fs in ch["foes"].items()})
    t.spells = lua.table_from(ch["spells"])
    lua.globals().P.zone = ch["route"][0][0]
    for s in range(1, sessions + 1):
        if s > 1:
            lua.globals().ADVANCE(5)
            lua.globals().LEAP(12 * 3600)
        lua.globals().__sess(ns, t, minutes, seed, s, (8 + 7 * seed + 9 * s) % 24, loop, rich)
    sim = lua.globals().SIM
    if hours is not None:
        hours.update(dict(sim.hours.items()))
    out = [dict(r.items()) for r in sim.out.values()]
    return out, list(sim.times.values())


def repeats(out):
    """(texts said again within their session, texts said again across sessions, minute of the first repetition)."""
    within, across, first = 0, 0, None
    seen_session, seen_all = {}, set()
    for r in out:
        key = r["text"]
        s = seen_session.setdefault(r["session"], set())
        if key in s:
            within += 1
            minute = r["t"] / 60
            if first is None:
                first = (r["session"], minute)
        elif key in seen_all:
            across += 1
        s.add(key)
        seen_all.add(key)
    return within, across, first


def character_metrics(out, times, hours):
    n = len(out)
    trial = [r for r in out if r["pack"] in TRIAL_PACKS]
    within, across, first = repeats(out)
    times = sorted(times)
    return {"interventions": n, "per_hour": n / hours, "trial_share_pct": 100 * len(trial) / max(1, n),
            "repeat_within_session": within, "repeat_across_sessions": across,
            "first_repeat": first, "pick_mean_ms": statistics.mean(times) if times else 0,
            "pick_p95_ms": times[int(len(times) * 0.95) - 1] if times else 0}


def long_metrics(out, hours):
    """A long run: first exact repetition, share of repeats, and per area the trial texts spoken per hour there."""
    n = len(out)
    seen, rep, first = set(), 0, None
    for r in out:
        if r["text"] in seen:
            rep += 1
            if first is None:
                first = r["t"] / 3600
        seen.add(r["text"])
    per_area = {}
    for pack, zone in TRIAL_PACKS.items():
        spoken = [r for r in out if r["pack"] == pack]
        time_there = sum(1 for r in out if r["zone"] == zone)
        per_area[pack] = {"spoken": len(spoken), "distinct": len({r["text"] for r in spoken}),
                          "interventions_there": time_there}
    return {"hours": hours, "interventions": n, "first_repeat_hours": first, "repeat_pct": 100 * rep / max(1, n),
            "per_area": per_area}


CAPITALS = ("Orgrimmar", "Stormwind City")


def mix(addon, hours, seeds):
    """--mix (C0c): the interventions per hour of each event in the open world and in a capital, from `hours` hours of
    play per character and seed with the quests, levels, merchants and flights of a day of play. The need model of the
    archive (`tools/archive/need_model.json`, `cli need`) reads it as its measured rates."""
    counts = {"open": collections.Counter(), "city": collections.Counter()}
    time = {"open": 0.0, "city": 0.0}
    for ch in CHARACTERS:
        for seed in seeds:
            spent = {}
            out, _ = play(addon, ch, 1, hours * 60, seed, loop=True, rich=True, hours=spent)
            for r in out:
                counts["city" if r["zone"] in CAPITALS else "open"][r["event"]] += 1
            for zone, h in spent.items():
                time["city" if zone in CAPITALS else "open"] += h
    return {"command": "python -I -X utf8 Tests/bench_trial.py --mix %g --seeds %s --model" % (hours, ",".join(map(str, seeds))),
            "hours": {k: round(v, 2) for k, v in time.items()},
            "per_hour": {k: round(sum(c.values()) / max(time[k], 1e-9), 3) for k, c in counts.items()},
            "rates": {k: {e: round(n / max(time[k], 1e-9), 4) for e, n in sorted(c.items())} for k, c in counts.items()}}


def pack_sizes(addon):
    """Intentions and English texts of each trial pack (the measure counts the language the simulation speaks)."""
    lua, ns, _ = B.load_addon(addon)
    sizes = {}
    for id_ in ns.Engine.ordOf:
        p = ns.Engine.byId[id_]
        if p.pack in TRIAL_PACKS:
            s = sizes.setdefault(p.pack, [0, 0])
            s[0] += 1
            s[1] += len(list((p.text.en or {}).values())) if p.text.en else 0
    return {k: {"intentions": v[0], "texts_en": v[1]} for k, v in sizes.items()}


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--addon", default=os.path.join(HERE, "..", "AzerothUnspoken"))
    ap.add_argument("--sessions", type=int, default=2)
    ap.add_argument("--minutes", type=float, default=90)
    ap.add_argument("--seeds", default="1,2,3")
    ap.add_argument("--long", type=float, default=0, help="also play this many hours in a row per character")
    ap.add_argument("--json")
    ap.add_argument("--mix", type=float, default=0, help="only measure the event mix: this many hours per character and seed")
    ap.add_argument("--model", nargs="?", const=MODEL, help="with --mix: write the rates into this need model "
                    "(default tools/archive/need_model.json)")
    a = ap.parse_args(argv)
    addon = os.path.abspath(a.addon)
    seeds = [int(s) for s in a.seeds.split(",")]
    if a.mix:
        m = mix(addon, a.mix, seeds)
        print(json.dumps(m, indent=1))
        if a.model:
            with open(a.model, encoding="utf-8") as f:
                model = json.load(f)
            model["measured"] = m
            with open(a.model, "w", encoding="utf-8", newline="\n") as f:
                f.write(json.dumps(model, ensure_ascii=False, indent=1) + "\n")
            print("wrote", a.model)
        return m
    result = {"sizes": pack_sizes(addon), "characters": {}, "long": {}}
    print("trial packs:", result["sizes"])
    for ch in CHARACTERS:
        rows = []
        for seed in seeds:
            out, times = play(addon, ch, a.sessions, a.minutes, seed)
            rows.append(character_metrics(out, times, a.sessions * a.minutes / 60))
        avg = {k: statistics.mean(r[k] for r in rows) for k in rows[0] if isinstance(rows[0][k], (int, float))}
        avg["first_repeat"] = [r["first_repeat"] for r in rows]
        label = "%s %s" % (ch["race"].lower(), ch["cls"].lower())
        result["characters"][label] = avg
        print("== %s (%d x %g min, seeds %s)" % (label, a.sessions, a.minutes, a.seeds))
        for k, v in avg.items():
            print("  %24s: %s" % (k, round(v, 2) if isinstance(v, float) else v))
        if a.long:
            out, _ = play(addon, ch, 1, a.long * 60, seeds[0], loop=True)
            lm = long_metrics(out, a.long)
            result["long"][label] = lm
            print("  long run %g h: %d interventions, first exact repetition at %s h, repeated %.1f%%" % (
                a.long, lm["interventions"], None if lm["first_repeat_hours"] is None else round(lm["first_repeat_hours"], 2),
                lm["repeat_pct"]))
            for pack, v in lm["per_area"].items():
                if v["interventions_there"]:
                    print("    %-20s spoken %d (%d distinct) of %d interventions there" % (
                        pack, v["spoken"], v["distinct"], v["interventions_there"]))
    if a.json:
        with open(a.json, "w", encoding="utf-8", newline="\n") as f:
            json.dump(result, f, indent=1, default=str)
    return result


if __name__ == "__main__":
    main(sys.argv[1:])
