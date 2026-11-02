-- Tests of the observed GUID as an identity aid (#112, ADR 0047). Identity stays "Name-Realm"; the GUID is kept next to
-- it in `seen.guid`, never shown, and only ever used to ASK the user:
--   - the same name with another GUID is a question ("the same person?"), never a change;
--   - the same GUID under a new name is a proposal to merge, never a merge;
--   - a missing, secret or malformed GUID is unknown: nothing is stored or asked, and the name carries on;
--   - removing a person, forgetting the observations, resetting and turning the aid off drop the GUID;
--   - GUIDs that prove unstable stop being trusted for the session;
--   - saved data: version 9, an older file's GUIDs are not trusted, malformed and duplicate ones are dropped.
-- GUID stability in game is NOT confirmed (#111 stays open): these tests use the mock client only, by the owner's
-- decision of 2026-11-02 to build on the API dump without in-game test gates.
local NS = ...
local Config, R, LM = NS.Config, NS.Relationships, NS.LivingMemory
local Director, Narrator, RelationsFrame = NS.Director, NS.Narrator, NS.RelationsFrame

local A1, A2, A3 = "Player-1-0000AAAA", "Player-1-0000AAA2", "Player-1-0000AAA3"
local B1, C1, D1 = "Player-1-0000BBBB", "Player-1-0000CCCC", "Player-1-0000DDDD"
local ALDRIC = { name = "Aldric", realm = "Stormrage", player = true, guid = A1 }

local offered = {}
local realOffer = Director.Offer
Director.Offer = function(self, event, extra, onResult)
	table.insert(offered, { event = event, extra = extra })
	return realOffer(self, event, extra, onResult)
end

local function Fresh()
	NS.cdb.relationships = nil
	NS.cdb.memories = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	R.readOnly = false
	NS.Diagnostics.errors = {}
	R:Sanitize()
	R:OnInit()
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	NS.db.relations.favours, NS.db.relations.nicknames = false, false
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	R.interaction, R.questGiver, R.questTaker = nil, nil, nil
	P.target, P.npc, P.party, P.group, P.raid = nil, nil, nil, false, false
	P.zone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Durotar", false, false, 100, 100, 1411
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 100, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	offered = {}
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	if NS.Personality then NS.Personality:SetArchetype("neutral") end
	if RelationsFrame then RelationsFrame:Close() end
	SENT = {}
	ADVANCE(20)
end

local function Person(name, axes)
	local rec = R:AddPlayer(name, "user")
	local key = R.PlayerKey(name)
	for axis, v in pairs(axes or {}) do R:SetAxis("player", key, axis, v) end
	return key, rec
end

local function Rec(key) return R:Get("player", key) end
local function Guid(key) local r = R:Data().players[key]; return r and r.seen and r.seen.guid end

local function Deep(v)
	if type(v) ~= "table" then return v end
	local out = {}
	for k, x in pairs(v) do out[k] = Deep(x) end
	return out
end

local function Same(a, b)
	if type(a) ~= type(b) then return false end
	if type(a) ~= "table" then return a == b end
	for k, v in pairs(a) do if not Same(v, b[k]) then return false end end
	for k in pairs(b) do if a[k] == nil then return false end end
	return true
end

local function Count(t) local n = 0; for _ in pairs(t or {}) do n = n + 1 end; return n end

local function JoinGroup(...)
	P.party, P.group = { ... }, true
	FIRE("GROUP_ROSTER_UPDATE")
	ADVANCE(2)
end

local function LeaveGroup()
	P.party, P.group = nil, false
	FIRE("GROUP_ROSTER_UPDATE")
	ADVANCE(2)
end

-- a new login: the session starts again, the saved data stays
local function NewSession()
	R.session = { seen = {}, offered = {}, recognized = {}, prior = {}, proximity = { n = 0, secret = 0 } }
	R.candidates, R.dismissed = {}, {}
	R.groupKeys = nil
end

local function Texts()
	local out = {}
	local function Walk(w)
		for _, c in ipairs(w.children or {}) do
			if c.kind == "FontString" and c:IsShown() then
				local t = c:GetText()
				if t ~= "" then table.insert(out, t) end
			end
			Walk(c)
		end
	end
	if _G.AzerothUnspokenRelations then Walk(_G.AzerothUnspokenRelations) end
	return table.concat(out, "\n")
end
local function Buttons()
	local out = {}
	local function Walk(w)
		for _, c in ipairs(w.children or {}) do
			if c.kind == "Button" and c:IsShown() then table.insert(out, c) end
			Walk(c)
		end
	end
	if _G.AzerothUnspokenRelations then Walk(_G.AzerothUnspokenRelations) end
	return out
end

-- every string in a value, to prove that a GUID is nowhere
local function Contains(v, needle, seen)
	seen = seen or {}
	if type(v) == "string" then return v:find(needle, 1, true) ~= nil end
	if type(v) ~= "table" or seen[v] then return false end
	seen[v] = true
	for k, x in pairs(v) do
		if Contains(k, needle, seen) or Contains(x, needle, seen) then return true end
	end
	return false
end

---------------------------------------------------------------------------
-- The GUID is stored next to the name, for a listed person, from a unit
---------------------------------------------------------------------------
T.run("identity: a listed person's GUID is kept the first time and never again asked about", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 55 })
	T.eq(Guid(key), nil, "adding a person stores no GUID: nothing was observed")
	JoinGroup(ALDRIC)
	T.eq(Guid(key), A1, "the group scan stores the GUID read from the unit")
	T.eq(Rec(key).seen.kinds.group, 1, "the encounter counted as before")
	JoinGroup(ALDRIC, { name = "Zed", realm = "Stormrage", player = true, guid = D1 })
	T.eq(Guid(key), A1, "the same GUID again: unchanged")
	T.eq(#R:IdentityList(), 0, "no question")
	-- the target does the same
	Fresh()
	key = Person("Aldric-Stormrage")
	P.target = ALDRIC
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(1)
	T.eq(Guid(key), A1, "the target stores it too")
	T.eq(Rec(key).seen.kinds.target, 1, "and is observed as before")
	-- a creature or a stranger on the target never stores anything
	Fresh()
	key = Person("Aldric-Stormrage")
	P.target = { name = "Boar", guid = "Creature-0-3134-0-6-1234-0000A2E9A1" }
	FIRE("PLAYER_TARGET_CHANGED")
	T.eq(Guid(key), nil, "a creature's GUID is not a player's")
	T.eq(Count(R:Data().players), 1, "no record was made")
end)

T.run("identity: the same name with a different GUID is a question, never a change", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 55, affection = 45 })
	R:SetNote("player", key, "my friend")
	JoinGroup(ALDRIC)
	LeaveGroup()
	ADVANCE(700)   -- past the gap: the next meeting is a new encounter
	local before = Deep(R:Data().players[key])
	local userBefore = Deep(R.UserOf(Rec(key)))
	-- a character called Aldric, but with another GUID (a deleted and recreated character, say)
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	T.eq(Guid(key), A1, "the stored GUID did not change by itself")
	local list = R:IdentityList()
	T.eq(#list, 1, "one question")
	T.ok(list[1].kind == "guid" and list[1].key == key, "about this person, of the kind guid")
	T.eq(list[1].guid, nil, "the list does not carry the GUID")
	T.ok(Same(R.UserOf(Rec(key)), userBefore), "the user block is untouched")
	T.eq(Rec(key).seen.kinds.group, 2, "the encounter is counted by name, as always")
	T.eq(NS.cdb.relationships.players[key].seen.guid, A1, "still the old GUID in the saved data")
	-- the question does not repeat, and it shows in the People tab
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	T.eq(#R:IdentityList(), 1, "the same question is one question")
	T.eq(R:Stats().identity, 1, "counted in the stats")
	-- yes: the new identity is remembered, nothing else moves
	local ok = R:AcceptIdentity(key)
	T.ok(ok, "accepted")
	T.eq(Guid(key), A2, "the GUID is now the new one")
	T.ok(Same(R.UserOf(Rec(key)), userBefore), "the user block is still untouched")
	T.eq(#R:IdentityList(), 0, "the question is closed")
	T.eq(R:Data().players[key].seen.first, before.seen.first, "the observations are those of before")
	-- no: nothing changes and the question is not asked again this session
	Fresh()
	key = Person("Aldric-Stormrage")
	JoinGroup(ALDRIC); LeaveGroup()
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	T.ok(R:KeepIdentity(key), "kept")
	T.eq(Guid(key), A1, "the old GUID stays")
	LeaveGroup(); JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	T.eq(#R:IdentityList(), 0, "not asked again this session")
	NewSession()
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	T.eq(#R:IdentityList(), 1, "asked again at the next login")
end)

T.run("identity: the same GUID under a new name proposes a merge, never merges", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 60, affection = 30 })
	R:SetNote("player", key, "met at the inn")
	R:SetLabel("player", key, "friend")
	JoinGroup(ALDRIC)
	LeaveGroup()
	local all = Deep(NS.cdb.relationships.players)
	-- the same GUID, now called Aldrik
	JoinGroup({ name = "Aldrik", realm = "Stormrage", player = true, guid = A1 })
	local list = R:IdentityList()
	T.eq(#list, 1, "one proposal")
	T.ok(list[1].kind == "renamed" and list[1].key == key and list[1].newKey == "Aldrik-Stormrage", "Aldric may be Aldrik now")
	T.ok(Same(NS.cdb.relationships.players, all), "the saved players are exactly as before: no merge, no change of user")
	T.eq(R:IsListed("Aldrik-Stormrage"), false, "the new name is not listed")
	-- the private line says there is a question
	local said = false
	for _, m in ipairs(SENT) do if m:find("identit", 1, true) then said = true end end
	T.ok(said, "a private line told the user")
	-- accept: the record moves with everything in it
	local ok, why = R:AcceptIdentity(key)
	T.ok(ok, "accepted: " .. tostring(why))
	T.eq(R:IsListed(key), false, "the old name is gone")
	T.ok(R:IsListed("Aldrik-Stormrage"), "the record lives under the new name")
	T.ok(Same(R.UserOf(Rec("Aldrik-Stormrage")), all[key].user), "with the user's choices as they were")
	T.eq(Rec("Aldrik-Stormrage").seen.kinds.group, 1, "and what was observed")
	T.eq(Guid("Aldrik-Stormrage"), A1, "and the GUID")
	T.eq(#R:IdentityList(), 0, "the proposal is closed")
	-- the new name is already listed: refused, and nothing moves
	Fresh()
	key = Person("Aldric-Stormrage")
	local other = Person("Aldrik-Stormrage")
	JoinGroup(ALDRIC); LeaveGroup()
	R.session.identity = R.session.identity or {}
	R.session.identity["Aldric-Stormrage"] = { kind = "renamed", key = "Aldric-Stormrage", newKey = "Aldrik-Stormrage", guid = A1, t = time() }
	local ok2, why2 = R:AcceptIdentity("Aldric-Stormrage")
	T.ok(not ok2 and why2 == "exists", "a name already in the list refuses the merge")
	T.ok(R:IsListed("Aldric-Stormrage") and R:IsListed(other), "both are still listed")
	-- declined: not asked again
	Fresh()
	key = Person("Aldric-Stormrage")
	JoinGroup(ALDRIC); LeaveGroup()
	JoinGroup({ name = "Aldrik", realm = "Stormrage", player = true, guid = A1 })
	T.ok(R:KeepIdentity(key), "declined")
	LeaveGroup(); JoinGroup({ name = "Aldrik", realm = "Stormrage", player = true, guid = A1 })
	T.eq(#R:IdentityList(), 0, "not proposed again this session")
	T.ok(R:IsListed(key) and not R:IsListed("Aldrik-Stormrage"), "nothing changed")
end)

T.run("identity: a rename follows the shared list too", function()
	Fresh()
	R:SetSetting("sharePlayers", true)
	local key = Person("Aldric-Stormrage", { trust = 40 })
	T.ok(NS.gdb.sharedPlayers.players[key], "the person is in the account's list")
	JoinGroup(ALDRIC); LeaveGroup()
	T.eq(NS.gdb.sharedPlayers.players[key].seen, nil, "the shared layer holds no observations, so no GUID")
	JoinGroup({ name = "Aldrik", realm = "Stormrage", player = true, guid = A1 })
	T.ok(R:AcceptIdentity(key), "accepted")
	T.ok(NS.gdb.sharedPlayers.players["Aldrik-Stormrage"] and not NS.gdb.sharedPlayers.players[key], "the shared record moved too")
	T.eq(Contains(NS.gdb.sharedPlayers, A1), false, "no GUID in the account's data")
	T.eq(R:Get("player", "Aldrik-Stormrage").user.axes.trust, 40, "the choices went with it")
end)

---------------------------------------------------------------------------
-- Unknown GUIDs: missing, secret, malformed
---------------------------------------------------------------------------
T.run("identity: a missing, secret or malformed GUID is unknown and never breaks the name", function()
	Fresh()
	local key = Person("Aldric-Stormrage")
	-- no GUID at all
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true })
	T.eq(Guid(key), nil, "nothing stored without a GUID")
	T.eq(Rec(key).seen.kinds.group, 1, "the encounter counted: the name still identifies")
	-- a secret GUID (the client's secret value)
	LeaveGroup(); ADVANCE(700)
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = MakeSecret() })
	T.eq(Guid(key), nil, "a secret GUID is not stored")
	T.eq(Rec(key).seen.kinds.group, 2, "and the encounter counted")
	-- a secret identity: the unit is not even read
	LeaveGroup()
	SECRET_UNITS = { party1 = true }
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A1 })
	T.eq(Guid(key), nil, "a secret identity stores nothing")
	SECRET_UNITS = {}
	T.eq(R.UnitGuid("party1"), A1, "readable again when the identity is not secret")
	SECRET_UNITS = { party1 = true }
	T.eq(R.UnitGuid("party1"), nil, "a secret identity reads as unknown")
	SECRET_UNITS = {}
	-- malformed values
	for _, bad in ipairs({ "Creature-0-3134-0-6-1234-0000A2E9A1", "", "Player-", ("Player-1-" .. ("A"):rep(60)), 42, true, {} }) do
		T.eq(R.CleanGuid(bad), nil, "not a player GUID: " .. tostring(bad):sub(1, 30))
	end
	T.eq(R.CleanGuid(A1), A1, "a player GUID is kept")
	T.eq(R:NoteGuid(key, nil), nil, "NoteGuid(nil) does nothing")
	T.eq(R:NoteGuid(key, MakeSecret()), nil, "NoteGuid(secret) does nothing")
	-- a stored GUID is not compared with an unknown one: no question
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A1 })
	T.eq(Guid(key), A1, "stored")
	LeaveGroup()
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true })
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = MakeSecret() })
	T.eq(#R:IdentityList(), 0, "unknown against known is no question")
	T.eq(Guid(key), A1, "and the stored GUID stays")
end)

T.run("identity: trade, whisper and the other sources keep working by name, with no GUID", function()
	Fresh()
	local key = Person("Aldric-Stormrage")
	R:Met("Aldric-Stormrage", "trade")
	R:Met("Aldric-Stormrage", "whisper")
	T.eq(Rec(key).seen.count, 2, "counted by name")
	T.eq(Guid(key), nil, "no unit, no GUID")
	T.eq(#R:IdentityList(), 0, "no question")
end)

---------------------------------------------------------------------------
-- Forget flows
---------------------------------------------------------------------------
T.run("identity: forgetting observations, removing and resetting drop the GUID", function()
	-- forget the observations
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 50 })
	JoinGroup(ALDRIC)
	T.eq(Guid(key), A1, "stored")
	local user = Deep(R.UserOf(Rec(key)))
	T.ok(R:ForgetObservations(key), "forgotten")
	T.eq(Guid(key), nil, "the GUID went with the observations")
	T.ok(Same(R.UserOf(Rec(key)), user), "the user's choices stay")
	-- ... and an open question about it
	Fresh()
	key = Person("Aldric-Stormrage")
	JoinGroup(ALDRIC); LeaveGroup()
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	T.eq(#R:IdentityList(), 1, "a question is open")
	R:ForgetObservations(key)
	T.eq(#R:IdentityList(), 0, "forgetting closes it")
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	T.eq(Guid(key), A2, "the next sighting stores the new one: there is nothing to contradict")
	-- remove the person
	Fresh()
	key = Person("Aldric-Stormrage")
	JoinGroup(ALDRIC); LeaveGroup()
	JoinGroup({ name = "Aldrik", realm = "Stormrage", player = true, guid = A1 })
	T.eq(#R:IdentityList(), 1, "a proposal is open")
	T.ok(R:Remove("player", key), "removed")
	T.eq(Contains(NS.cdb.relationships, A1), false, "the GUID is nowhere in the saved data")
	T.eq(#R:IdentityList(), 0, "the proposal went with the person")
	-- reset players
	Fresh()
	key = Person("Aldric-Stormrage")
	JoinGroup(ALDRIC); LeaveGroup()
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	R:Reset("players")
	T.eq(Contains(NS.cdb.relationships, A1), false, "reset: no GUID left")
	T.eq(#R:IdentityList(), 0, "and no question")
	-- the command, and the clear
	Fresh()
	key = Person("Aldric-Stormrage")
	local key2 = Person("Brenna-Stormrage")
	JoinGroup(ALDRIC, { name = "Brenna", realm = "Stormrage", player = true, guid = B1 })
	T.ok(Guid(key) and Guid(key2), "two GUIDs stored")
	SlashCmdList.AZEROTHUNSPOKEN("relationships guid clear")
	T.ok(Guid(key) == nil and Guid(key2) == nil, "/au relationships guid clear drops them all")
	T.ok(R:IsListed(key) and R:IsListed(key2), "the people stay")
end)

T.run("identity: stopping the shared list drops the GUID of a person who only lived on from it", function()
	Fresh()
	local key = "Aldric-Stormrage"
	R:SetSetting("sharePlayers", true)
	local rec = R:AddPlayer(key, "user")
	JoinGroup(ALDRIC)
	T.eq(Guid(key), A1, "stored while the person is in the shared list")
	R:SetSetting("sharePlayers", false)
	NS.db.relations.sharePlayers = false
	R:Data().players[key].via = "shared"
	R:Data().players[key].user = {}
	R:Data().players[key].source = nil
	NS.gdb.sharedPlayers.players[key] = nil
	R:Sanitize()
	T.eq(R:Data().players[key], nil, "an observation record with no list behind it is dropped at load, GUID included")
	T.eq(Contains(NS.cdb.relationships, A1), false, "no GUID left")
end)

---------------------------------------------------------------------------
-- GUIDs that prove unstable
---------------------------------------------------------------------------
T.run("identity: GUIDs that change often are not trusted for the rest of the session", function()
	Fresh()
	local names = { "Aldric", "Brenna", "Cora", "Dara" }
	local base = { A1, B1, C1, D1 }
	local keys = {}
	for i, n in ipairs(names) do keys[i] = Person(n .. "-Stormrage") end
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A1 },
		{ name = "Brenna", realm = "Stormrage", player = true, guid = B1 },
		{ name = "Cora", realm = "Stormrage", player = true, guid = C1 },
		{ name = "Dara", realm = "Stormrage", player = true, guid = D1 })
	for i = 1, 4 do T.eq(Guid(keys[i]), base[i], "stored " .. i) end
	LeaveGroup(); ADVANCE(700)
	-- every GUID is different: the second login of a server that recycles them
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 },
		{ name = "Brenna", realm = "Stormrage", player = true, guid = "Player-1-0000BBB2" },
		{ name = "Cora", realm = "Stormrage", player = true, guid = "Player-1-0000CCC2" },
		{ name = "Dara", realm = "Stormrage", player = true, guid = "Player-1-0000DDD2" })
	T.eq(#R:IdentityList(), 0, "no question is left open: the session stopped trusting GUIDs")
	for i = 1, 4 do T.eq(Guid(keys[i]), base[i], "no GUID was changed " .. i) end
	T.eq(R:Data().players[keys[1]].seen.kinds.group, 2, "the names still count the encounters")
	T.ok(R:Status():find("not trusted", 1, true), "/au debug says so")
	local logged = false
	for _, e in ipairs(NS.Diagnostics.errors or {}) do
		if tostring(e.text or e.message or e):find("GUID", 1, true) then logged = true end
	end
	T.ok(logged, "and the diagnostics too")
	-- a new session trusts them again
	NewSession()
	LeaveGroup()
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	T.eq(#R:IdentityList(), 1, "at the next login the question is asked again")
end)

T.run("identity: at most IDENTITY_MAX questions wait, and the setting turns the aid off", function()
	Fresh()
	local n = R.IDENTITY_MAX + 5
	for i = 1, n do
		local key = ("Old%02d-Stormrage"):format(i)
		Person(key)
		R:NoteGuid(key, ("Player-1-%08X"):format(i))
	end
	-- a rename question for each of them: more than the list holds
	for i = 1, n do R:NoteGuid(("New%02d-Stormrage"):format(i), ("Player-1-%08X"):format(i)) end
	T.eq(Count(R.session.identity), R.IDENTITY_MAX, "the list of questions is bounded")
	local key
	-- off: nothing is read or kept
	Fresh()
	key = Person("Aldric-Stormrage")
	T.eq(R:Setting("guidAid"), true, "on by default")
	SlashCmdList.AZEROTHUNSPOKEN("relationships guid off")
	T.eq(R:Setting("guidAid"), false, "the command turns it off")
	JoinGroup(ALDRIC)
	T.eq(Guid(key), nil, "off: no GUID stored")
	T.eq(R:NoteGuid(key, A1), nil, "off: NoteGuid does nothing")
	SlashCmdList.AZEROTHUNSPOKEN("relationships guid on")
	LeaveGroup(); JoinGroup(ALDRIC)
	T.eq(Guid(key), A1, "on again: stored")
end)

---------------------------------------------------------------------------
-- Saved data: version 9
---------------------------------------------------------------------------
T.run("identity: saved data, version 9: GUIDs of older files are not trusted, bad and duplicate ones are dropped", function()
	Fresh()
	T.eq(R.VERSION, 9, "relationships.version is 9 (#112: seen.guid)")
	T.eq(Config.characterDefaults.relationships.version, 9, "the defaults follow")
	local function Seen(guid) return { first = 1, last = 2, count = 1, guid = guid } end
	-- a version 8 file: the addon never wrote a GUID, so one found there is not trusted
	NS.cdb.relationships = { version = 8, npcs = {}, players = {
		["Aldric-Stormrage"] = { source = "user", user = {}, seen = Seen(A1) },
	} }
	R.readOnly = false
	R:Sanitize()
	local d = NS.cdb.relationships
	T.eq(d.version, 9, "version 8 moves to 9")
	T.eq(d.players["Aldric-Stormrage"].seen.guid, nil, "a GUID in an older file is dropped")
	-- a version 9 file: valid ones stay, malformed ones go, two people never share one
	NS.cdb.relationships = { version = 9, npcs = {}, players = {
		["Aldric-Stormrage"] = { source = "user", user = {}, seen = Seen(A1) },
		["Brenna-Stormrage"] = { source = "user", user = {}, seen = Seen("Creature-0-3134-0-6-1234-0000A2E9A1") },
		["Cora-Stormrage"] = { source = "user", user = {}, seen = Seen(("Player-1-" .. ("B"):rep(80))) },
		["Dara-Stormrage"] = { source = "user", user = {}, seen = Seen(A1) },
		["Eve-Stormrage"] = { source = "user", user = {}, seen = Seen(42) },
		["Fay-Stormrage"] = { source = "user", user = {}, seen = Seen(B1) },
	} }
	R:Sanitize()
	d = NS.cdb.relationships
	T.eq(d.players["Aldric-Stormrage"].seen.guid, A1, "a valid GUID is kept")
	T.eq(d.players["Dara-Stormrage"].seen.guid, nil, "a GUID two people share goes to the first in name order only")
	T.eq(d.players["Brenna-Stormrage"].seen.guid, nil, "a creature's GUID is dropped")
	T.eq(d.players["Cora-Stormrage"].seen.guid, nil, "a too long one too")
	T.eq(d.players["Eve-Stormrage"].seen.guid, nil, "and a number")
	T.eq(d.players["Fay-Stormrage"].seen.guid, B1, "another valid one is kept")
	T.eq(Count(d.players), 6, "no person was dropped for it")
	-- a newer file is read only and left intact
	NS.cdb.relationships = { version = 10, npcs = {}, players = { ["Aldric-Stormrage"] = { user = {}, seen = Seen(A1), future = 1 } } }
	R.readOnly = false
	R:Sanitize()
	T.ok(R.readOnly and NS.cdb.relationships.players["Aldric-Stormrage"].future == 1, "a newer version is read only and intact")
	R.readOnly = false
end)

---------------------------------------------------------------------------
-- The GUID is never shown, exported, spoken or sent
---------------------------------------------------------------------------
T.run("identity: the GUID is never shown, exported, offered to the narrator or sent", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 60 })
	JoinGroup(ALDRIC)
	T.eq(Guid(key), A1, "stored")
	local seenGuid = A1:sub(8)
	T.eq(Contains(R:ExportText(), seenGuid), false, "not in the export")
	T.eq(Contains(R:Status(), seenGuid), false, "not in /au debug")
	T.eq(Contains(R:Resolve("player", Rec(key)), A1), false, "not in the resolved relation")
	T.eq(Contains(R:IdentityList(), A1), false, "not in the identity list")
	T.eq(Contains(offered, A1), false, "not in what the Director was offered")
	T.eq(Contains(NS:BuildContext({ relationSubject = { kind = "player", id = key } }), A1), false, "not in the context of the narrator")
	for _, m in ipairs(SENT) do T.eq(m:find(seenGuid, 1, true), nil, "not in anything sent or printed") end
	RelationsFrame:Open({ kind = "player", key = key })
	T.eq(Texts():find(seenGuid, 1, true), nil, "not in the detail of the window")
	RelationsFrame:Open("list")
	T.eq(Texts():find(seenGuid, 1, true), nil, "not in the list of the window")
	for _, line in ipairs({ "list", "detail Aldric", "export", "identity", "guid" }) do
		SENT = {}
		SlashCmdList.AZEROTHUNSPOKEN("relationships " .. line)
		for _, m in ipairs(SENT) do T.eq(m:find(seenGuid, 1, true), nil, "/au relationships " .. line .. ": no GUID") end
	end
	-- the account's data never holds one
	R:SetSetting("sharePlayers", true)
	R:ShareAll()
	T.eq(Contains(NS.gdb, seenGuid), false, "the account's data has no GUID")
end)

T.run("identity: the software never writes the user block, with or without GUIDs", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 55, affection = 20 })
	R:SetNote("player", key, "kept")
	R:SetFeelings("player", key, { "trust" })
	local brenna = Person("Brenna-Stormrage", { respect = 30 })
	local function Users() return { Deep(R.UserOf(Rec(key))), Deep(R.UserOf(Rec(brenna))) } end
	local before = Users()
	JoinGroup(ALDRIC, { name = "Brenna", realm = "Stormrage", player = true, guid = B1 })
	LeaveGroup()
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 },
		{ name = "Brennan", realm = "Stormrage", player = true, guid = B1 })
	P.target = { name = "Aldric", realm = "Stormrage", player = true, guid = A2 }
	FIRE("PLAYER_TARGET_CHANGED")
	T.ok(#R:IdentityList() == 2, "two questions are open")
	T.ok(Same(Users(), before), "neither question changed a user block")
	R:KeepIdentity(key)
	T.ok(Same(Users(), before), "declining changes nothing")
	R:AcceptIdentity(brenna)
	T.ok(Same(R.UserOf(Rec("Brennan-Stormrage")), before[2]), "accepting a rename moves the block as it was")
	T.ok(R:IsListed("Brennan-Stormrage"), "listed under the new name")
end)

T.run("identity: proximity writes nothing, GUID included, and asks nothing", function()
	Fresh()
	local key = Person("Aldric-Stormrage")
	JoinGroup(ALDRIC); LeaveGroup()
	local before = Deep(NS.cdb.relationships.players)
	R:SetSetting("proximity", true)
	-- the listed person on a nameplate, with another GUID, and the same GUID under another name
	P.nameplates = { [1] = { name = "Aldric", realm = "Stormrage", player = true, guid = A2 },
		[2] = { name = "Aldrik", realm = "Stormrage", player = true, guid = A1 } }
	R:Nearby("nameplate1")
	R:Nearby("nameplate2")
	T.ok(Same(NS.cdb.relationships.players, before), "a sighting does not touch the records")
	T.eq(#R:IdentityList(), 0, "and asks nothing: proximity is not an encounter")
	P.nameplates = nil
end)

---------------------------------------------------------------------------
-- The user answers: the window and the commands
---------------------------------------------------------------------------
T.run("identity: the People tab and the commands answer the questions", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 40 })
	JoinGroup(ALDRIC); LeaveGroup()
	JoinGroup({ name = "Aldric", realm = "Stormrage", player = true, guid = A2 })
	RelationsFrame:Open("people")
	T.ok(Texts():find("Aldric-Stormrage", 1, true), "the question names the person")
	local plus
	for _, b in ipairs(Buttons()) do if b:GetText() == "+" then plus = plus or b end end
	T.ok(plus ~= nil, "a + to say yes")
	plus:Click()
	T.eq(Guid(key), A2, "the click accepts: the new GUID is kept")
	T.eq(#R:IdentityList(), 0, "the question is closed")
	-- a rename through the window
	Fresh()
	key = Person("Aldric-Stormrage", { trust = 40 })
	JoinGroup(ALDRIC); LeaveGroup()
	JoinGroup({ name = "Aldrik", realm = "Stormrage", player = true, guid = A1 })
	RelationsFrame:Open("people")
	T.ok(Texts():find("Aldrik-Stormrage", 1, true), "the proposal names both")
	local xs = {}
	for _, b in ipairs(Buttons()) do if b:GetText() == "x" then table.insert(xs, b) end end
	T.ok(#xs >= 1, "an x to say no")
	xs[1]:Click()
	T.ok(R:IsListed(key) and #R:IdentityList() == 0, "the x keeps things as they are")
	-- commands
	Fresh()
	key = Person("Aldric-Stormrage", { trust = 40 })
	JoinGroup(ALDRIC); LeaveGroup()
	JoinGroup({ name = "Aldrik", realm = "Stormrage", player = true, guid = A1 })
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("relationships identity")
	local listed = false
	for _, m in ipairs(SENT) do if m:find("Aldrik-Stormrage", 1, true) then listed = true end end
	T.ok(listed, "/au relationships identity lists the questions")
	SlashCmdList.AZEROTHUNSPOKEN("relationships identity keep Aldric")
	T.ok(R:IsListed(key), "keep leaves the record")
	NewSession()
	JoinGroup({ name = "Aldrik", realm = "Stormrage", player = true, guid = A1 })
	SlashCmdList.AZEROTHUNSPOKEN("relationships identity accept Aldric")
	T.ok(R:IsListed("Aldrik-Stormrage") and not R:IsListed(key), "accept moves the record")
	-- the option is in the options view, in both languages
	RelationsFrame:Open("options")
	T.ok(Texts():find("Codice d'identit", 1, true), "the option is shown (Italian)")
	NS.db.locale = "en"
	RelationsFrame:Open("options")
	T.ok(Texts():find("Identity code", 1, true), "the option is shown (English)")
	NS.db.locale = "it"
end)

T.run("identity: every string exists in English and Italian", function()
	local ids = { "rel_opt_guid", "rel_opt_guid_tip", "rel_id_guid", "rel_id_renamed", "rel_id_notice", "rel_id_accept_guid_tip",
		"rel_id_accept_renamed_tip", "rel_id_keep_tip", "rel_id_none", "rel_id_usage", "rel_id_accepted", "rel_id_failed",
		"rel_id_why_missing", "rel_id_why_exists", "rel_id_why_gone", "rel_id_kept", "rel_guid_now", "rel_guid_cleared" }
	for _, lang in ipairs({ "en", "it" }) do
		NS.db.locale = lang
		for _, id in ipairs(ids) do
			local text = NS:L(id, 1, 2)
			T.ok(type(text) == "string" and text ~= id and text ~= "", lang .. " " .. id)
		end
	end
	NS.db.locale = "it"
	T.ok(NS:L("rel_id_guid", "Aldric"):find("Aldric", 1, true), "the question names the person")
end)
