"""Cost of proximity in a crowd (#164, ADR 0030 point 5). Offline (lupa); never shipped.

Usage: python -I -X utf8 Tests/bench_proximity.py [--addon DIR] [--plates 300] [--seconds 10] [--tokens 40]
                                                   [--listed 20] [--json FILE]

A synthetic crowd: --plates nameplate events per second for --seconds seconds, spread over --tokens unit tokens
("nameplate1" ... "nameplateN", reused the way the client reuses them), every one a different stranger, plus the mouse
crossing a new stranger every 100 ms. Halfway through, one player who IS on the list appears among them. Proximity is
on. Three scenarios, with the same crowd:
  - empty list, no Total RP 3 consent: there is nobody to find;
  - --listed players on the list: a name must be read to know who is who;
  - the same, with the Total RP 3 consent on (a stranger with a profile can be suggested).
For each one it prints the client calls the addon made (UnitFullName reads, UnitIsPlayer reads), the events published
on the bus, the CPU time of the whole crowd, and whether the listed player was recognised in the crowd and after it (the function must keep
working: filtering must not lose the person the user cares about; in a flood of hundreds a second a single
sighting may be thrown away by the throttle, a later one is not).

The script only uses what both the old and the new code have (the events, the mock's calls and the bus counters), so
the same command gives the numbers before and after a change: point --addon at a copy of the older tree
(`git archive <commit> | tar -x -C <dir>`). The numbers are a projection from lupa on one PC, not a measurement in
the client: the real cost is measured in game with /au prof in a capital (docs/G1_checklist.en.md).
"""
import argparse, json, os, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import bench_scale as B  # noqa: E402

CROWD = r"""
-- returns the counters after the crowd; `listedAt` is when (in seconds) the listed person appears
function RUN_CROWD(plates, seconds, tokens, listed, trp3)
	local R, EventBus = AzerothUnspoken.Relationships, AzerothUnspoken.EventBus
	NS_DB = AzerothUnspoken.db
	AzerothUnspoken.cdb.relationships = nil
	R:Data()
	for i = 1, listed do R:AddPlayer("Friend" .. i .. "-Stormrage", "user") end
	NS_DB.relations.proximity = false
	NS_DB.interlocutor.trp3Others = trp3 == true
	R.session = { seen = {}, offered = {}, recognized = {}, prior = {}, proximity = { n = 0, secret = 0 } }
	R:SetSetting("proximity", true)
	ADVANCE(100)
	P.nameplates = {}
	local reads, playerReads = 0, 0
	local realFull, realIsPlayer = UnitFullName, UnitIsPlayer
	UnitFullName = function(u) reads = reads + 1 return realFull(u) end
	UnitIsPlayer = function(u) playerReads = playerReads + 1 return realIsPlayer(u) end
	local published0, raw0 = EventBus.stats.published, 0
	for _, n in pairs(EventBus.rawSeen) do raw0 = raw0 + n end
	local recognized0 = 0
	local counter = 0
	local friend = { name = "Friend1", realm = "Stormrage", player = true }
	local total = plates * seconds
	local step = 1 / plates
	local mouseEvery = math.floor(plates / 10)
	local appeared = false
	for i = 1, total do
		local slot = (i - 1) % tokens + 1
		counter = counter + 1
		if not appeared and i >= total * 0.9 and listed > 0 then
			P.nameplates[slot] = friend
			appeared = true
		else
			P.nameplates[slot] = { name = "Stranger" .. counter, realm = "Stormrage", player = true }
		end
		FIRE("NAME_PLATE_UNIT_ADDED", "nameplate" .. slot)
		if i % mouseEvery == 0 then
			counter = counter + 1
			P.mouseover = { name = "Stranger" .. counter, realm = "Stormrage", player = true }
			FIRE("UPDATE_MOUSEOVER_UNIT")
		end
		ADVANCE(step)
	end
	local raw1 = 0
	for _, n in pairs(EventBus.rawSeen) do raw1 = raw1 + n end
	local inCrowd = R.session.recognized["Friend1-Stormrage"] ~= nil
	-- the crowd has passed: the same person comes again, the pause since a proposal (if any) is over
	ADVANCE(R.PROXIMITY_GAP + 2)
	P.nameplates[1] = friend
	FIRE("NAME_PLATE_UNIT_ADDED", "nameplate1")
	local after = R.session.recognized["Friend1-Stormrage"] ~= nil
	UnitFullName, UnitIsPlayer = realFull, realIsPlayer
	return reads, playerReads, EventBus.stats.published - published0, raw1 - raw0, inCrowd, after, (R.session.proximity.throttled or 0)
end
"""


def run(addon, plates, seconds, tokens, listed, trp3):
    lua, ns, _ = B.load_addon(addon, "none")
    lua.execute(CROWD)
    t0 = time.perf_counter()
    reads, player_reads, published, raw, in_crowd, after, throttled = lua.globals().RUN_CROWD(plates, seconds, tokens, listed, trp3)
    cpu = time.perf_counter() - t0
    return {"events_from_client": int(raw), "unit_full_name_reads": int(reads), "unit_is_player_reads": int(player_reads),
            "bus_events": int(published), "throttled": int(throttled), "listed_recognised_in_crowd": bool(in_crowd), "listed_recognised_after": bool(after),
            "cpu_ms": round(cpu * 1000, 1)}


def measure(addon, plates=300, seconds=10, tokens=40, listed=20):
    return {
        "empty list": run(addon, plates, seconds, tokens, 0, False),
        f"{listed} listed": run(addon, plates, seconds, tokens, listed, False),
        f"{listed} listed + TRP3 consent": run(addon, plates, seconds, tokens, listed, True),
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--addon", default=os.path.join(HERE, "..", "AzerothUnspoken"))
    ap.add_argument("--plates", type=int, default=300)
    ap.add_argument("--seconds", type=int, default=10)
    ap.add_argument("--tokens", type=int, default=40)
    ap.add_argument("--listed", type=int, default=20)
    ap.add_argument("--json")
    a = ap.parse_args()
    addon = os.path.abspath(a.addon)
    print(f"crowd: {a.plates} nameplate events/s for {a.seconds} s over {a.tokens} tokens, plus the mouse "
          f"(proximity on), addon {addon}")
    result = measure(addon, a.plates, a.seconds, a.tokens, a.listed)
    for scenario, r in result.items():
        print(f"\n{scenario}")
        for k, v in r.items():
            print(f"  {k}: {v}")
    if a.json:
        with open(a.json, "w", encoding="utf-8") as f:
            json.dump(result, f, indent=2)


if __name__ == "__main__":
    main()
