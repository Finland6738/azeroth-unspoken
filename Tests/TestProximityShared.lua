-- Tests of the second part of the Player relationships milestone (#113 proximity, #114 list shared in the account,
-- ADR 0030):
--   - proximity: off by default; only for players already in the list (or, with the TRP3 consent, people with a TRP3
--     profile as a session suggestion); never creates a record, never saves anything, never reads a secret identity;
--     the guard (once per person and session) and the limits (pause, session budget);
--   - the shared list: off by default and opt-in with a warning; the character layer is the default; how a shared
--     record and a character record of the same person combine (the character's own choices win, as a whole);
--     migration into it and the way back; turning it off loses nothing;
--   - the software never writes a user block, shared or not.
-- The persistence across /reload of the shared list is proved in Tests/run_tests.py.
local NS = ...
local Engine, Config, R, LM = NS.Engine, NS.Config, NS.Relationships, NS.LivingMemory
local Director, Narrator, RelationsFrame, EventBus = NS.Director, NS.Narrator, NS.RelationsFrame, NS.EventBus

---------------------------------------------------------------------------
-- Helpers
---------------------------------------------------------------------------
local offered = {}               -- every candidate the Director was offered
local realOffer = Director.Offer
Director.Offer = function(self, event, extra, onResult)
	table.insert(offered, { event = event, extra = extra })
	return realOffer(self, event, extra, onResult)
end

local function Fresh()
	NS.cdb.relationships = nil
	NS.cdb.memories = nil
	NS.gdb.sharedPlayers = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	R.readOnly = false
	NS.Diagnostics.errors = {}
	R:Sanitize()
	R:OnInit()
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	-- N5 (#217): favours and nicknames have their own tests (TestFavours.lua); here they would add notices
	NS.db.relations.favours, NS.db.relations.nicknames = false, false
	R:ApplyProximity()
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.interlocutor.trp3Others = false
	R.interaction, R.questGiver, R.questTaker = nil, nil, nil
	P.target, P.npc, P.party, P.group, P.raid, P.mouseover, P.nameplates = nil, nil, nil, false, false, nil, nil
	P.zone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Durotar", false, false, 100, 100, 1411
	SECRET_UNITS = {}
	TRP3_API, AddOn_TotalRP3 = nil, nil
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 100, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	offered = {}
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	if RelationsFrame then RelationsFrame:Close() end
	R.PROXIMITY_GAP, R.PROXIMITY_MAX = 60, 10
	SENT = {}
	ADVANCE(20)
end

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

local function Candidates(event)
	local n = 0
	for _, o in ipairs(offered) do if o.event == event then n = n + 1 end end
	return n
end

local function Printed()
	local out = {}
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) == "PRINT:" then table.insert(out, s) end
	end
	return table.concat(out, "\n")
end

local function Cmd(text)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN(text)
	return Printed()
end

local function Person(name, axes)
	local rec = R:AddPlayer(name, "user")
	local key = R.PlayerKey(name)
	for axis, v in pairs(axes or {}) do R:SetAxis("player", key, axis, v) end
	return key, rec
end

local function Rec(key) return R:Get("player", key) end

local ALDRIC = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
local BRENNA = { name = "Brenna", realm = "Stormrage", player = true, guid = "Player-1-0000BBBB" }
local CORA = { name = "Cora", realm = "Stormrage", player = true, guid = "Player-1-0000CCCC" }
local EVE = { name = "Eve", realm = "Stormrage", player = true, guid = "Player-1-0000DDDD" }

local function Nameplate(slot, who)
	P.nameplates = P.nameplates or {}
	P.nameplates[slot] = who
	FIRE("NAME_PLATE_UNIT_ADDED", "nameplate" .. slot)
	ADVANCE(1)
end

local function Mouseover(who)
	P.mouseover = who
	FIRE("UPDATE_MOUSEOVER_UNIT")
	ADVANCE(1)
end

local function ProximityOn()
	R:SetSetting("proximity", true)
end

-- the two steps of a consent (#178): the warning, a pause for reading, then the confirmation
local function Pause() ADVANCE(NS.Consent.MIN_DELAY + 0.5) end

local function SharingOn()
	T.eq(R:StartSharing(), "armed", "the first step only arms")
	T.eq(R:StartSharing(), "wait", "a second step right away (a double-click) does not pass")
	Pause()
	T.eq(R:StartSharing(), "on", "the second step turns it on")
end

-- another character of the same account: its own relationships table (kept between calls), the same account table
local function NewCharacter() return { version = R.VERSION, npcs = {}, players = {} } end

local function AsCharacter(rels, fn)
	local main = NS.cdb.relationships
	NS.cdb.relationships = rels
	local saved = R.session
	R.session = { seen = {}, offered = {}, recognized = {}, prior = {}, proximity = { n = 0, secret = 0 } }
	local ok, err = pcall(fn)
	NS.cdb.relationships = main
	R.session = saved
	if not ok then error(err, 0) end
end

-- a second character of the same account: another character table, the same account table
local function AsOtherCharacter(fn) AsCharacter(NewCharacter(), fn) end

local function Shared() return NS.gdb.sharedPlayers end

local ROOT = "AzerothUnspokenRelations"
local function Under(pred)
	local out = {}
	local function Walk(w)
		for _, c in ipairs(w.children or {}) do
			if pred(c) then table.insert(out, c) end
			Walk(c)
		end
	end
	if _G[ROOT] then Walk(_G[ROOT]) end
	return out
end
local function ButtonWithText(text)
	for _, b in ipairs(Under(function(x) return x.kind == "Button" and x:IsShown() end)) do
		local t = b:GetText()
		if t == text or t:find(text, 1, true) == 1 then return b end
	end
	return nil
end

---------------------------------------------------------------------------
-- #113: proximity
---------------------------------------------------------------------------
T.run("proximity is off by default: the events are not even registered", function()
	Fresh()
	T.eq(Config.defaults.relations.proximity, false, "the default is off")
	T.eq(R:Setting("proximity"), false, "and so is the setting of a new character")
	T.eq(EventBus.sources.NAME_PLATE_UNIT_ADDED, nil, "no nameplate source")
	T.eq(EventBus.sources.UPDATE_MOUSEOVER_UNIT, nil, "no mouseover source")
	local key = Person("Aldric-Stormrage")
	Nameplate(1, ALDRIC)
	Mouseover(ALDRIC)
	T.eq(Candidates("relation_player"), 0, "a listed player on a nameplate or under the mouse is ignored")
	T.eq(R:Nearby("nameplate1"), nil, "even called directly")
	T.eq(Rec(key).seen.count, 0, "nothing observed")
end)

T.run("the option registers the events and turning it off removes them", function()
	Fresh()
	ProximityOn()
	T.ok(EventBus.sources.NAME_PLATE_UNIT_ADDED ~= nil and EventBus.sources.UPDATE_MOUSEOVER_UNIT ~= nil, "both sources registered")
	R:SetSetting("proximity", false)
	T.eq(EventBus.sources.NAME_PLATE_UNIT_ADDED, nil, "nameplate source removed")
	T.eq(EventBus.sources.UPDATE_MOUSEOVER_UNIT, nil, "mouseover source removed")
	local key = Person("Aldric-Stormrage")
	Nameplate(1, ALDRIC)
	T.eq(Candidates("relation_player"), 0, "nothing happens with the option off again")
	T.ok(Rec(key) ~= nil, "the person is still listed")
	-- the command does the same as the checkbox
	T.ok(Cmd("relationships proximity on") ~= "", "the command answers")
	T.eq(R:Setting("proximity"), false, "the first command only asks (#178)")
	Pause()
	Cmd("relationships proximity on")
	T.eq(R:Setting("proximity"), true, "the second command, after a pause, turns it on")
	T.ok(EventBus.sources.NAME_PLATE_UNIT_ADDED ~= nil, "and registers the source")
	Cmd("relationships proximity off")
	T.eq(EventBus.sources.NAME_PLATE_UNIT_ADDED, nil, "and removes it")
end)

T.run("a listed player on a nameplate is recognised once per session, and nothing is written", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 55 })
	R:SetNote("player", key, "Saved me at Tirisfal")
	ProximityOn()
	local before = Deep(NS.cdb.relationships)
	Nameplate(1, ALDRIC)
	T.eq(Candidates("relation_player"), 1, "the Director was offered relation_player")
	T.eq(offered[1].extra.relationSubject.id, key, "for that person")
	T.ok(offered[1].extra.otherSubject.name == "Aldric", "with the first name only")
	-- the same person again, on another nameplate or under the mouse: the guard
	ADVANCE(R.PROXIMITY_GAP + 1)
	Nameplate(2, ALDRIC)
	Mouseover(ALDRIC)
	T.eq(Candidates("relation_player"), 1, "at most once per person and session")
	T.ok(Same(before, NS.cdb.relationships), "not a byte of the saved data changed: no observation, no fact, no count")
	T.eq(Rec(key).seen.count, 0, "no encounter")
	-- joining the group later is also guarded by the same once-per-session rule
	P.party, P.group = { ALDRIC }, true
	FIRE("GROUP_ROSTER_UPDATE"); ADVANCE(2)
	T.eq(Candidates("relation_player"), 1, "the guard is the existing one (shared with the group)")
	T.eq(Rec(key).seen.kinds.group, 1, "the group join is still observed")
end)

T.run("mouseover recognises a listed player too", function()
	Fresh()
	local key = Person("Brenna-Stormrage")
	ProximityOn()
	Mouseover(BRENNA)
	T.eq(Candidates("relation_player"), 1, "mouseover: recognised")
	T.eq(offered[1].extra.relationSubject.id, key, "the right person")
end)

T.run("proximity never creates a record, even with 'register by itself' on", function()
	Fresh()
	ProximityOn()
	NS.db.relations.autoRegisterPlayers = true
	local before = Deep(NS.cdb.relationships)
	for slot, who in ipairs({ BRENNA, CORA, EVE }) do Nameplate(slot, who); ADVANCE(R.PROXIMITY_GAP + 1) end
	Mouseover(BRENNA)
	T.eq(Count(NS.cdb.relationships.players), 0, "no record for strangers")
	T.eq(Count(R.candidates), 0, "no suggestion without the Total RP 3 consent")
	T.eq(Candidates("relation_player"), 0, "nothing offered for strangers")
	T.ok(Same(before, NS.cdb.relationships), "nothing saved about them")
	T.eq(NS.gdb.sharedPlayers, nil, "nor in the account")
	-- nothing about a stranger is kept in memory either
	for _, tbl in ipairs({ R.session.seen, R.session.offered, R.session.recognized, R.session.prior, R.dismissed }) do
		T.eq(Count(tbl), 0, "no session table remembers a stranger")
	end
	T.eq(R.session.proximity.n, 0, "and no proposal was counted")
end)

T.run("a secret identity gives nothing and is not read", function()
	Fresh()
	local key = Person("Aldric-Stormrage")
	ProximityOn()
	local reads = 0
	local realFull, realName = UnitFullName, UnitName
	UnitFullName = function(u) if u == "nameplate1" or u == "mouseover" then reads = reads + 1 end return realFull(u) end
	UnitName = function(u) if u == "nameplate1" or u == "mouseover" then reads = reads + 1 end return realName(u) end
	SECRET_UNITS = { nameplate1 = true, mouseover = true }
	Nameplate(1, ALDRIC)
	Mouseover(ALDRIC)
	T.eq(Candidates("relation_player"), 0, "a secret identity: nothing")
	T.eq(reads, 0, "its name was not even asked for")
	T.ok(R.session.proximity.secret >= 1, "it is only counted (for /au debug)")
	T.eq(Rec(key).seen.count, 0, "nothing recorded")
	-- the identity is public: the same person is recognised
	SECRET_UNITS = {}
	Nameplate(1, ALDRIC)
	T.eq(Candidates("relation_player"), 1, "with a public identity the same person is recognised")
	-- values that are secret although the unit check passed (a restriction that starts in between)
	UnitFullName, UnitName = realFull, realName
	R.session.recognized = {}
	ADVANCE(R.PROXIMITY_GAP + 1)
	local n = Candidates("relation_player")
	P.nameplates[2] = { name = MakeSecret(), realm = "Stormrage", player = true }
	local ok = pcall(function() T.eq(R:Nearby("nameplate2"), nil, "secret values: nothing") end)
	T.ok(ok, "secret values raise no error")
	T.eq(Candidates("relation_player"), n, "and nothing is offered")
end)

T.run("limits: a pause between proposals and a budget per session", function()
	Fresh()
	for i, who in ipairs({ ALDRIC, BRENNA, CORA }) do Person(who.name .. "-Stormrage") end
	ProximityOn()
	Nameplate(1, ALDRIC)
	T.eq(Candidates("relation_player"), 1, "the first proposal")
	Nameplate(2, BRENNA)
	T.eq(Candidates("relation_player"), 1, "a second person inside the pause is ignored")
	ADVANCE(R.PROXIMITY_GAP + 1)
	Nameplate(2, BRENNA)
	T.eq(Candidates("relation_player"), 2, "after the pause it is proposed")
	-- the session budget
	R.PROXIMITY_MAX = 3
	ADVANCE(R.PROXIMITY_GAP + 1)
	Nameplate(3, CORA)
	T.eq(Candidates("relation_player"), 3, "the third")
	T.eq(R:ProximityReady(), false, "the budget is spent")
	local dave = Person("Dave-Stormrage")
	ADVANCE(R.PROXIMITY_GAP + 1)
	Nameplate(4, { name = "Dave", realm = "Stormrage", player = true })
	T.eq(Candidates("relation_player"), 3, "no more proposals this session")
	T.eq(R.session.proximity.n, 3, "counted")
	-- a new session starts again
	R:OnInit()
	T.eq(R:ProximityReady(), true, "a new session has a new budget")
end)

T.run("a person already recognised this session costs nothing of the budget", function()
	Fresh()
	Person("Aldric-Stormrage"); Person("Brenna-Stormrage")
	ProximityOn()
	R.PROXIMITY_MAX = 2
	Nameplate(1, ALDRIC)
	for _ = 1, 5 do ADVANCE(R.PROXIMITY_GAP + 1); Nameplate(1, ALDRIC) end
	T.eq(R.session.proximity.n, 1, "only the first sighting counted")
	ADVANCE(R.PROXIMITY_GAP + 1)
	Nameplate(2, BRENNA)
	T.eq(Candidates("relation_player"), 2, "the budget was still there for another person")
end)

T.run("non-players and the character itself are ignored", function()
	Fresh()
	Person("Aldric-Stormrage")
	ProximityOn()
	Nameplate(1, { name = "Boar", guid = "Creature-0-1-2-3-4-5" })
	T.eq(Candidates("relation_player"), 0, "an NPC nameplate: nothing")
	Nameplate(2, { name = "Garrosh", realm = "TestRealm", player = true })
	T.eq(Candidates("relation_player"), 0, "the player's own nameplate: nothing")
	T.eq(R:Nearby("raid1"), nil, "only nameplates and mouseover count")
	T.eq(R:Nearby(nil), nil, "and a missing unit is no error")
end)

T.run("with the Total RP 3 consent a stranger with a profile is only a session suggestion", function()
	Fresh()
	ProximityOn()
	FAKE_TRP3({ unitID = function() return "Eve-Stormrage" end, profiles = { ["Eve-Stormrage"] = {} } })
	Nameplate(1, EVE)
	T.eq(Count(R.candidates), 0, "no consent: nothing")
	NS.db.interlocutor.trp3Others = true
	local before = Deep(NS.cdb.relationships)
	Nameplate(1, EVE)
	T.ok(R.candidates["Eve-Stormrage"] ~= nil and R.candidates["Eve-Stormrage"].source == "proximity", "with consent: a suggestion")
	T.eq(Count(NS.cdb.relationships.players), 0, "not a record")
	T.ok(Same(before, NS.cdb.relationships), "nothing saved")
	T.eq(Candidates("relation_player"), 0, "and the Director was not offered a stranger")
	-- it respects the user's other choices
	R.candidates, R.dismissed = {}, {}
	NS.db.relations.proposePlayers = false
	ADVANCE(R.PROXIMITY_GAP + 1)
	Nameplate(1, EVE)
	T.eq(Count(R.candidates), 0, "'suggest people' off: nothing")
	NS.db.relations.proposePlayers = true
	R:Dismiss("Eve-Stormrage")
	R.dismissed["Eve-Stormrage"] = true
	ADVANCE(R.PROXIMITY_GAP + 1)
	Nameplate(1, EVE)
	T.eq(Count(R.candidates), 0, "a dismissed person is not suggested again")
	-- 'register by itself' does not turn a proximity suggestion into a record
	R.dismissed = {}
	NS.db.relations.autoRegisterPlayers = true
	ADVANCE(R.PROXIMITY_GAP + 1)
	Nameplate(1, EVE)
	T.eq(Count(NS.cdb.relationships.players), 0, "still no record")
	T.ok(R.candidates["Eve-Stormrage"] ~= nil, "only the suggestion")
	-- and adding the suggested person is the user's click: no observation comes from a sighting
	local rec = R:AddPlayer("Eve-Stormrage", "user")
	T.eq(rec.seen.count, 0, "a sighting is not an encounter: nothing is counted when the user adds them")
	TRP3_API, AddOn_TotalRP3 = nil, nil
end)

T.run("the user block is never written by proximity (also with the shared list on)", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 55, affection = 45 })
	R:SetNote("player", key, "Saved me"); R:SetFeelings("player", key, { "gratitude" }); R:SetTags("player", key, "guild")
	SharingOn()
	local key2 = Person("Brenna-Stormrage", { respect = 40 })
	R:SetNote("player", key2, "Shared note")
	ProximityOn()
	local userA, userB = Deep(Rec(key).user), Deep(Rec(key2).user)
	local shared = Deep(Shared())
	Nameplate(1, ALDRIC)
	ADVANCE(R.PROXIMITY_GAP + 1)
	Mouseover(BRENNA)
	T.eq(Candidates("relation_player"), 2, "both recognised")
	T.ok(Same(userA, Rec(key).user), "the character's own choices are the same")
	T.ok(Same(userB, Rec(key2).user), "the shared choices are the same")
	T.ok(Same(shared, Shared()), "and the account's list too")
end)

---------------------------------------------------------------------------
-- #114: the list shared in the account
---------------------------------------------------------------------------
T.run("the shared list is off by default and nothing exists in the account", function()
	Fresh()
	T.eq(Config.defaults.relations.sharePlayers, false, "off by default")
	T.eq(R:Sharing(), false, "a new character does not share")
	local key = Person("Aldric-Stormrage", { trust = 55 })
	R:SetNote("player", key, "mine"); R:Observe(key, "group")
	T.eq(NS.gdb.sharedPlayers, nil, "nothing was written to the account")
	T.ok(Rec(key).user.axes.trust == 55 and Rec(key).user.note == "mine", "the record is the character's own")
	T.eq(R:ScopeOf(key), "character", "and its scope is the character")
	T.eq(R:Shared(), nil, "there is no store")
	T.eq(Rec(key).view, nil, "a plain record, not a view")
end)

T.run("turning it on takes a warning and a second step; turning it off deletes nothing", function()
	Fresh()
	T.eq(R:StartSharing(), "armed", "the first call arms")
	T.eq(R:Setting("sharePlayers"), false, "and changes nothing")
	T.ok(R:ShareArmed(), "the confirmation is open")
	T.eq(R:StartSharing(), "wait", "a double-click does not pass: the second step needs a pause (#178)")
	T.eq(R:Setting("sharePlayers"), false, "and still changes nothing")
	ADVANCE(NS.Consent.WINDOW + 1)
	T.ok(not R:ShareArmed(), "it expires")
	T.eq(R:StartSharing(), "armed", "so the next call arms again")
	Pause()
	T.eq(R:StartSharing(), "on", "inside the window, after the pause, the second one turns it on")
	T.eq(R:Sharing(), true, "sharing")
	T.ok(Shared() ~= nil and Shared().version == R.SHARED_VERSION, "the store exists now")
	-- the command shows the warning (privacy and role play)
	R:StopSharing()
	local text = Cmd("relationships share on")
	T.ok(text:find("account", 1, true) and text:find("personaggi", 1, true), "the warning names the account and the characters: " .. text)
	T.eq(R:Sharing(), false, "the first command only warns")
	Cmd("relationships share on")
	T.eq(R:Sharing(), false, "the second one right away does not pass")
	Pause()
	Cmd("relationships share on")
	T.eq(R:Sharing(), true, "the second turns it on")
	local off = Cmd("relationships share off")
	T.eq(R:Sharing(), false, "off in one step")
	T.ok(off:find("cancellato", 1, true), "and the answer says nothing was deleted: " .. off)
	T.ok(Shared() ~= nil, "the store is still there")
end)

T.run("with it on, a person the user adds is shared with the account and their choices go there", function()
	Fresh()
	SharingOn()
	local key = Person("Aldric-Stormrage", { trust = 55 })
	T.ok(Shared().players[key] ~= nil, "the person is in the account's list")
	T.eq(R:ScopeOf(key), "shared", "whose choices count")
	T.eq(Shared().players[key].user.axes.trust, 55, "the axis was written to the shared record")
	T.eq(next(NS.cdb.relationships.players[key].user), nil, "and the character record holds no choices")
	R:SetNote("player", key, "Shared note")
	R:SetFeelings("player", key, { "trust" })
	R:SetLabel("player", key, "ally")
	T.ok(Shared().players[key].user.note == "Shared note" and Shared().players[key].user.feeling[1] == "trust"
		and Shared().players[key].user.label == "ally", "every setter writes the shared record")
	T.eq(next(NS.cdb.relationships.players[key].user), nil, "the character record still has none")
	NS.Interlocutor:SetTrait("player", key, "temperament", "cheerful")
	T.eq(Shared().players[key].user.traits.temperament, "cheerful", "a trait too (Interlocutor:SetTrait)")
	T.eq(Rec(key).user, Shared().players[key].user, "the view reads the shared block itself")
	-- the shared record holds choices only: no observations, no journal flags
	R:Observe(key, "group")
	local sr = Shared().players[key]
	T.ok(sr.seen == nil and sr.noted == nil and sr.first == nil, "no observations in the account's list")
	for k in pairs(sr) do T.ok(k == "source" or k == "user", "shared record field: " .. k) end
	T.eq(NS.cdb.relationships.players[key].seen.count, 1, "the observation is this character's")
end)

T.run("another character of the account sees the shared choices, and not the observations", function()
	Fresh()
	SharingOn()
	local key = Person("Aldric-Stormrage", { trust = 55, affection = 45 })
	R:SetNote("player", key, "Saved me"); R:SetFeelings("player", key, { "gratitude" })
	R:Observe(key, "group"); R:Observe(key, "duel")
	AsOtherCharacter(function()
		T.ok(R:IsListed(key), "listed for the other character")
		local rec = Rec(key)
		T.eq(rec.user.note, "Saved me", "the note is there")
		local info = R:Resolve("player", rec)
		T.eq(info.axes.trust, 55, "and the axes")
		T.eq(info.feelings[1], "gratitude", "and the feeling")
		T.eq(R.SeenOf(rec).count, 0, "but this character has not met them")
		T.eq(Count(NS.cdb.relationships.players), 0, "nor has a record of its own yet")
		local found = false
		for _, row in ipairs(R:Rows({ kind = "player" })) do if row.key == key then found = true end end
		T.ok(found, "it is in the list of people")
		-- a meeting makes a record with only observations
		local r2 = R:Observe(key, "trade")
		T.ok(r2 ~= nil and r2.seen.count == 1 and next(r2.user) == nil, "the first observation makes a record of observations only")
		T.eq(R:ScopeOf(key), "shared", "the choices still come from the account")
		T.eq(R:Resolve("player", Rec(key)).axes.trust, 55, "unchanged")
		-- an edit by the other character changes the account's list, so the first one sees it
		R:SetNote("player", key, "Changed by the alt")
	end)
	T.eq(Rec(key).user.note, "Changed by the alt", "the first character sees the change")
	T.eq(NS.cdb.relationships.players[key].seen.count, 2, "its own observations are untouched")
end)

T.run("a person who is only in the shared list is recognised like any other (group and nameplate)", function()
	Fresh()
	SharingOn()
	local key = Person("Aldric-Stormrage", { trust = 60 })
	R:SetFeelings("player", key, { "gratitude" })
	NS.cdb.relationships.players = {}              -- this character never met them: only the account knows
	T.eq(R:IsListed(key), true, "listed through the account")
	local function Logged(result)
		local n = 0
		for _, e in ipairs(Director.log) do if e.event == "relation_player" and (result == nil or e.result == result) then n = n + 1 end end
		return n
	end
	NS.db.chance = { relation_player = 100 }
	P.party, P.group = { ALDRIC }, true
	FIRE("GROUP_ROSTER_UPDATE"); ADVANCE(2)
	T.eq(Candidates("relation_player"), 1, "joining the group offers relation_player")
	T.ok(Logged() >= 1, "the Director dealt with it (spoken or not)")
	T.eq(NS.cdb.relationships.players[key].seen.kinds.group, 1, "the group join is this character's first observation")
	T.eq(next(NS.cdb.relationships.players[key].user), nil, "and its choices stay empty")
	T.eq(#NS.Diagnostics.errors, 0, "no errors")
	-- the context of the line reads the shared choices
	local ctx = NS:BuildContext({ relationSubject = { kind = "player", id = key },
		otherSubject = { kind = "player", key = "player:" .. key, name = "Aldric" } })
	T.eq(ctx.isKnown, true, "known")
	T.ok(ctx.relFeelings and ctx.relFeelings.gratitude, "with the shared feeling")
end)

T.run("precedence: the character's own choices win, as a whole, and are never mixed", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 80 })
	R:SetNote("player", key, "My own note")
	SharingOn()
	-- the account already has other opinions of the same person
	Shared().players[key] = { source = "user", user = { axes = { trust = 10, respect = 60 }, note = "Account note", label = "rival" } }
	T.eq(R:ScopeOf(key), "character", "a record with choices of its own counts")
	local rec = Rec(key)
	T.eq(rec.view, nil, "the real record")
	T.eq(R:Resolve("player", rec).axes.trust, 80, "trust: the character's")
	T.eq(R:Resolve("player", rec).axes.respect, 0, "respect: NOT taken from the shared record (no mixing)")
	T.eq(rec.user.note, "My own note", "note: the character's")
	T.eq(R:Resolve("player", rec).label ~= "rival", true, "label: not the shared 'rival'")
	-- edits go to the character record and leave the shared one alone
	local sharedBefore = Deep(Shared().players[key])
	R:SetNote("player", key, "Edited"); R:SetAxis("player", key, "trust", 70)
	T.ok(Same(sharedBefore, Shared().players[key]), "an edit of a character-scoped person does not touch the account's record")
	T.eq(NS.cdb.relationships.players[key].user.note, "Edited", "it went to the character")
	-- the other character gets the shared ones
	AsOtherCharacter(function()
		local r = Rec(key)
		T.ok(r.view == true and r.user.note == "Account note" and R:Resolve("player", r).axes.trust == 10, "another character: the account's choices")
	end)
	-- explicit scope: share this character's choices
	local ok, replaced = R:SetScope(key, "shared")
	T.ok(ok and replaced == true, "sharing replaces what the account had (and says so)")
	T.eq(Shared().players[key].user.note, "Edited", "the account now has this character's choices")
	T.eq(next(NS.cdb.relationships.players[key].user), nil, "the character record keeps none")
	T.eq(R:ScopeOf(key), "shared", "the scope is shared")
	-- explicit scope: keep my own copy
	ok = R:SetScope(key, "character")
	T.ok(ok, "back to this character only")
	T.eq(R:ScopeOf(key), "character", "its scope is the character")
	T.eq(NS.cdb.relationships.players[key].user.note, "Edited", "with a copy of the shared choices")
	R:SetNote("player", key, "Only mine")
	T.eq(Shared().players[key].user.note, "Edited", "and the account's list does not follow")
	-- an empty copy still counts as the character's own (the scope says so)
	local k2 = Person("Brenna-Stormrage")
	T.eq(R:ScopeOf(k2), "shared", "a new person is shared")
	R:SetScope(k2, "character")
	T.eq(R:ScopeOf(k2), "character", "an empty character copy is still the character's")
	R:SetNote("player", k2, "Private")
	T.eq(Shared().players[k2].user.note, nil, "so its edit stays out of the account")
	-- it does not blank the account's choices when moved back with nothing to move
	Shared().players[k2].user.note = "Account"
	NS.cdb.relationships.players[k2].user = {}
	R:SetScope(k2, "shared")
	T.eq(Shared().players[k2].user.note, "Account", "sharing an empty character copy keeps the account's choices")
	T.ok(not select(1, R:SetScope("Nobody-Nowhere", "shared")), "an unknown person fails")
	T.ok(not R:SetScope(key, "everywhere"), "and so does a bad scope")
end)

T.run("a user action on a person who has a record but no choices writes to the shared list", function()
	Fresh()
	local key = Person("Aldric-Stormrage")
	R:Observe(key, "group")
	SharingOn()
	T.eq(Shared().players[key], nil, "turning it on moved nothing: the record is still only the character's")
	T.eq(R:ScopeOf(key), "character", "listed through the character only")
	R:SetNote("player", key, "First opinion")
	T.eq(Shared().players[key].user.note, "First opinion", "the first choice made while sharing goes to the account")
	T.eq(next(NS.cdb.relationships.players[key].user), nil, "and not to the character")
	T.eq(NS.cdb.relationships.players[key].seen.count, 1, "the observation kept")
	-- an automatic record (register by itself) is the character's own: it is not shared
	NS.db.relations.autoRegisterPlayers = true
	R:AddPlayer("Cora-Stormrage", "auto")
	T.eq(Shared().players["Cora-Stormrage"], nil, "an automatic record is not put in the account's list")
end)

T.run("migration: sharing the character's list moves the choices, keeps what the account has, loses nothing", function()
	Fresh()
	local a = Person("Aldric-Stormrage", { trust = 70 }); R:SetNote("player", a, "A note")
	local b = Person("Brenna-Stormrage", { respect = 40 }); R:SetFeelings("player", b, { "wariness" })
	local c = Person("Cora-Stormrage", { affection = 50 })
	local d = Person("Dave-Stormrage")             -- no choices at all
	R:Observe(a, "group"); R:Observe(b, "duel")
	local infoBefore = {}
	for _, k in ipairs({ a, b, c, d }) do infoBefore[k] = Deep(R:Resolve("player", Rec(k))) end
	local noteBefore = Rec(a).user.note
	SharingOn()
	-- nothing moved by turning it on
	T.eq(Count(Shared().players), 0, "turning it on moves nothing by itself")
	-- the account already holds choices for Brenna (from another character)
	Shared().players[b] = { source = "user", user = { note = "From the alt", axes = { trust = -30 } } }
	local moved, kept = R:ShareAll()
	T.eq(moved, 2, "two moved (Aldric and Cora; Dave has no choices)")
	T.eq(kept, 1, "one kept: Brenna's account choices already existed, this character's own win and stay")
	T.eq(R:ScopeOf(a), "shared", "Aldric is shared now")
	T.eq(Shared().players[a].user.note, noteBefore, "with his note")
	T.eq(next(NS.cdb.relationships.players[a].user), nil, "and the character record holds only observations")
	T.eq(NS.cdb.relationships.players[a].seen.count, 1, "the observations stayed")
	T.eq(R:ScopeOf(b), "character", "Brenna keeps this character's own choices")
	T.eq(Shared().players[b].user.note, "From the alt", "the account's choices for her were not overwritten")
	T.eq(R:Resolve("player", Rec(b)).feelings[1], "wariness", "and this character still feels wariness")
	for _, k in ipairs({ a, c }) do
		local after = R:Resolve("player", Rec(k))
		T.ok(Same(infoBefore[k].axes, after.axes) and after.label == infoBefore[k].label, "the same relation as before: " .. k)
	end
	T.ok(R:IsListed(d), "Dave is still listed")
	-- it can be repeated without harm
	local moved2 = R:ShareAll()
	T.eq(moved2, 0, "nothing is left to move")
	-- the command
	T.ok(Cmd("relationships share all"):find("0", 1, true), "the command answers")
end)

T.run("turning it off loses nothing, and the way back (copy) keeps the choices in the character", function()
	Fresh()
	SharingOn()
	local a = Person("Aldric-Stormrage", { trust = 70 }); R:SetNote("player", a, "Shared note")
	AsOtherCharacter(function()
		local only = Person("Eve-Stormrage", { fear = 40 })      -- the alt adds someone: shared as well
		R:SetNote("player", only, "Alt's note")
	end)
	local sharedBefore = Deep(Shared())
	T.ok(R:IsListed("Eve-Stormrage"), "the first character sees the alt's person")
	-- way back: a copy first
	local copied, skipped = R:CopySharedHere()
	T.eq(copied, 2, "both people copied into this character")
	T.eq(skipped, 0, "none left out")
	T.eq(NS.cdb.relationships.players["Eve-Stormrage"].user.note, "Alt's note", "with their choices")
	T.eq(R:ScopeOf("Eve-Stormrage"), "character", "as the character's own")
	T.ok(Same(sharedBefore, Shared()), "the account's list was not touched")
	-- off
	R:StopSharing()
	T.eq(R:Sharing(), false, "off")
	T.ok(Same(sharedBefore, Shared()), "the account's list is still exactly the same")
	T.ok(R:IsListed("Eve-Stormrage") and R:IsListed(a), "both people are still in this character's list")
	T.eq(Rec(a).user.note, "Shared note", "with the choices")
	T.eq(R:Resolve("player", Rec(a)).axes.trust, 70, "and the axes")
	-- off without a copy: the person only the account knew is not in the list of the character, but the data is kept
	AsOtherCharacter(function()
		T.eq(R:IsListed("Eve-Stormrage"), false, "a character without a copy does not list people while it is off")
		T.eq(Rec(a), nil, "and has no choices of them")
	end)
	R:SetSetting("sharePlayers", true)
	AsOtherCharacter(function()
		T.ok(R:IsListed("Eve-Stormrage"), "turned on again: they are back")
		T.eq(Rec("Eve-Stormrage").user.note, "Alt's note", "with their choices")
	end)
	T.ok(Same(sharedBefore, Shared()), "the account's list never changed")
end)

T.run("removing a person and resetting", function()
	Fresh()
	SharingOn()
	local a = Person("Aldric-Stormrage", { trust = 70 })
	local b = Person("Brenna-Stormrage", { trust = 20 })
	R:SetScope(b, "character")
	R:SetNote("player", b, "mine")
	-- reset players: this character's list only
	local n = R:Reset("players")
	T.ok(n >= 2, "this character's records were erased")
	T.ok(Shared().players[a] ~= nil and Shared().players[b] ~= nil, "the account's list is untouched by 'reset players'")
	T.ok(R:IsListed(a), "the shared person is still listed")
	-- remove: with sharing on it is removed from the account's list
	T.ok(R:Remove("player", a), "removed")
	T.eq(Shared().players[a], nil, "gone from the account's list")
	T.eq(R:IsListed(a), false, "and from the list")
	-- reset shared: only by name
	T.ok(R:Reset("shared") >= 1, "'reset shared' clears the account's list")
	T.eq(Count(Shared().players), 0, "it is empty")
	-- remove with sharing off leaves the account's list
	R:SetSetting("sharePlayers", true)
	local c = Person("Cora-Stormrage", { trust = 30 })
	R:StopSharing()
	local sharedBefore = Deep(Shared())
	R:Remove("player", c)
	T.ok(Same(sharedBefore, Shared()), "removing a person with sharing off does not touch the account's list")
	-- the command words
	T.ok(Cmd("relationships reset shared"):find("shared", 1, true), "the command asks for a confirmation by name")
end)

T.run("the software never writes a user block, shared or character", function()
	Fresh()
	SharingOn()
	local a = Person("Aldric-Stormrage", { trust = 55 }); R:SetNote("player", a, "Shared"); R:SetFeelings("player", a, { "trust" })
	local b = Person("Brenna-Stormrage", { respect = 40 }); R:SetScope(b, "character"); R:SetNote("player", b, "Own")
	local userA, userB, shared = Deep(R:Get("player", a).user), Deep(R:Get("player", b).user), Deep(Shared())
	-- every automatic path
	P.party, P.group = { ALDRIC, BRENNA }, true
	FIRE("GROUP_ROSTER_UPDATE"); ADVANCE(2)
	P.target = ALDRIC; ADVANCE(1); FIRE("PLAYER_TARGET_CHANGED")
	P.npc = BRENNA; FIRE("TRADE_SHOW")
	FIRE("PLAYER_REGEN_DISABLED"); FIRE("PLAYER_REGEN_ENABLED")
	R:Observe(a, "duel"); R:Observe(b, "emote"); R:Recognize(a)
	ProximityOn()
	Nameplate(1, ALDRIC); ADVANCE(R.PROXIMITY_GAP + 1); Mouseover(BRENNA)
	LEAP(40 * 86400)
	R:MaintainAll()
	R:Sanitize()
	T.ok(Same(userA, R:Get("player", a).user), "the shared user block is the same")
	T.ok(Same(userB, R:Get("player", b).user), "the character's user block is the same")
	T.ok(Same(shared, Shared()), "the account's list is exactly the same")
	T.ok(R:Get("player", a).seen ~= nil and R.SeenOf(R:Get("player", a)).count >= 1, "while the observations did move")
	-- the control: a user action changes it
	R:SetNote("player", a, "Changed")
	T.ok(not Same(shared, Shared()), "a user action changes the shared block (the test can fail)")
end)

T.run("loaded data: the shared list is cleaned, strips observations and a newer version is left alone", function()
	Fresh()
	NS.gdb.sharedPlayers = { version = 1, players = {
		["Aldric-Stormrage"] = { source = "user", user = { axes = { trust = 900, bogus = 3 }, note = "Hi", tags = { "x" } },
			seen = { first = 1, last = 2, count = 99 }, noted = { friend = true }, first = 5 },
		["bad name!"] = "text", [42] = { user = {} }, ["Brenna-Stormrage"] = { user = "oops" } } }
	local dropped = R:SanitizeShared()
	T.ok(dropped >= 2, "malformed entries dropped: " .. dropped)
	local sr = NS.gdb.sharedPlayers.players["Aldric-Stormrage"]
	T.ok(sr ~= nil and sr.seen == nil and sr.noted == nil and sr.first == nil, "observations are not kept in the account's list")
	T.eq(sr.user.axes.trust, 100, "an axis is brought back into its limits")
	T.eq(sr.user.axes.bogus, nil, "an unknown axis is dropped")
	T.eq(sr.user.note, "Hi", "a note stays")
	T.eq(NS.gdb.sharedPlayers.players["Brenna-Stormrage"].user.note, nil, "a broken user block becomes empty")
	-- a newer version: read nothing, change nothing
	local newer = { version = R.SHARED_VERSION + 1, players = { ["Aldric-Stormrage"] = { user = { note = "from the future", extra = true } } } }
	NS.gdb.sharedPlayers = newer
	local snapshot = Deep(newer)
	R:SanitizeShared()
	T.eq(R.sharedReadOnly, true, "marked unusable")
	R:SetSetting("sharePlayers", true)
	T.eq(R:Sharing(), false, "so it does not share")
	R:StartSharing(); Pause()
	T.eq(R:StartSharing(), "on", "the option itself is the user's")
	T.eq(R:IsListed("Aldric-Stormrage"), false, "and its people are not listed")
	local rec = R:AddPlayer("Cora-Stormrage", "user")
	T.ok(rec ~= nil, "the character's own list still works")
	T.ok(Same(snapshot, NS.gdb.sharedPlayers), "the newer data is exactly as it was")
	R.sharedReadOnly = false
end)

T.run("the window: the options and the scope button", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 55 })
	RelationsFrame:Open("options")   -- U1 (#172): the options have a tab of their own
	local proximity, share = ButtonWithText(NS:L("rel_opt_proximity")), ButtonWithText(NS:L("rel_opt_share"))
	T.ok(proximity ~= nil and share ~= nil, "both options are in the window")
	T.ok(proximity:GetText():find(NS:L("off"), 1, true), "proximity shows 'off'")
	proximity:Click()
	T.eq(R:Setting("proximity"), false, "one click only asks (#178)")
	T.ok(proximity:GetText():find(NS:L("consent_off_reading"), 1, true), "the button says: off, read first")
	proximity:Click()
	T.eq(R:Setting("proximity"), false, "a double-click does not pass")
	Pause()
	T.ok(proximity:GetText():find(NS:L("consent_off_ready"), 1, true), "after the pause it says: off, confirm")
	proximity:Click()
	T.eq(R:Setting("proximity"), true, "the second click turns proximity on")
	T.ok(EventBus.sources.NAME_PLATE_UNIT_ADDED ~= nil, "and registers the events")
	-- the shared list: two clicks, the warning in between
	share:Click()
	T.eq(R:Sharing(), false, "one click does not turn it on")
	local texts = {}
	for _, w in ipairs(Under(function(x) return x.kind == "FontString" and x:IsShown() end)) do table.insert(texts, w:GetText()) end
	T.ok(table.concat(texts, "\n"):find(NS:L("consent_share_text"):sub(1, 30), 1, true), "the warning is on screen")
	share:Click()
	T.eq(R:Sharing(), false, "a double-click does not turn it on")
	Pause()
	share:Click()
	T.eq(R:Sharing(), true, "the second click, after a pause, turns it on")
	-- the detail of a person: the scope button
	RelationsFrame:Open({ kind = "player", key = key })
	local scope = ButtonWithText(NS:L("rel_scope_btn_character"))
	T.ok(scope ~= nil, "a person the character keeps for itself shows 'this character'")
	scope:Click()
	T.eq(R:ScopeOf(key), "shared", "the click shares their choices")
	T.ok(ButtonWithText(NS:L("rel_scope_btn_shared")) ~= nil, "and the button says so")
	ButtonWithText(NS:L("rel_scope_btn_shared")):Click()
	T.eq(R:ScopeOf(key), "character", "another click goes back")
	-- an NPC has no scope button; with sharing off a player has none either
	R:StopSharing()
	RelationsFrame:Open({ kind = "player", key = key })
	T.eq(ButtonWithText(NS:L("rel_scope_btn_character")), nil, "no scope button with the shared list off")
	T.eq(ButtonWithText(NS:L("rel_scope_btn_shared")), nil, "neither")
end)

T.run("commands: scope, share all, share copy and status", function()
	Fresh()
	T.ok(Cmd("relationships share"):find("lista condivisa", 1, true), "status with no argument")
	T.ok(Cmd("relationships share all"):find("share on", 1, true), "share all needs the option on")
	Cmd("relationships share on"); Cmd("relationships share on")
	T.eq(R:Sharing(), false, "two commands in a row do not pass (#178)")
	Pause()
	Cmd("relationships share on")
	T.eq(R:Sharing(), true, "on")
	local key = Person("Aldric-Stormrage", { trust = 55 })
	T.ok(Cmd("relationships scope Aldric character"):find("Aldric", 1, true), "scope character")
	T.eq(R:ScopeOf(key), "character", "done")
	Cmd("relationships scope Aldric shared")
	T.eq(R:ScopeOf(key), "shared", "and back")
	T.ok(Cmd("relationships scope Aldric"):find("scope", 1, true), "a missing word shows the usage")
	T.ok(Cmd("relationships scope Nobody shared"):find("Nobody", 1, true), "an unknown person is reported")
	T.ok(Cmd("relationships share copy"):find("1", 1, true), "copy answers")
	T.ok(Cmd("relationships detail Aldric") ~= "", "the detail still works")
	T.eq(#NS.Diagnostics.errors, 0, "no errors from the commands")
	T.ok(R:Status():find("shared list on", 1, true) and R:Status():find("proximity false", 1, true), "/au debug shows both options: " .. R:Status())
end)

T.run("the shared list and the export", function()
	Fresh()
	SharingOn()
	local key = Person("Aldric-Stormrage", { trust = 55 }); R:SetNote("player", key, "A shared note")
	local text = R:ExportText()
	T.ok(text:find("Aldric-Stormrage", 1, true) and text:find("A shared note", 1, true), "the export has the effective choices")
	T.ok(not text:find("seen=", 1, true), "and no raw table")
end)

---------------------------------------------------------------------------
-- #155: a record made from the shared list stays tied to it
---------------------------------------------------------------------------
local function ErrorsAbout(text)
	local n = 0
	for _, e in ipairs(NS.Diagnostics.errors) do
		if e.message:find(text, 1, true) then n = n + 1 end
	end
	return n
end

T.run("#155: observing a person who is only in the shared list makes a record that depends on it", function()
	Fresh()
	SharingOn()
	local key = Person("Brenna-Stormrage", { trust = 60 })
	local b = NewCharacter()
	AsCharacter(b, function()
		R:Observe(key, "group")
		local rec = NS.cdb.relationships.players[key]
		T.eq(rec.via, "shared", "marked as coming from the shared list")
		T.eq(rec.source, nil, "and it does not copy the source: nobody added her here")
		T.eq(next(rec.user), nil, "with no choices of its own")
		T.eq(rec.seen.count, 1, "only the observation")
		T.eq(R:IsListed(key), true, "listed through the account")
		T.eq(R:Get("player", key).source, "user", "the effective source is the account's")
	end)
end)

T.run("#155: removing the person clears the observation record of every other character", function()
	Fresh()
	SharingOn()
	local key = Person("Brenna-Stormrage", { trust = 60 })
	local b = NewCharacter()
	AsCharacter(b, function() R:Observe(key, "group") end)
	T.ok(R:Remove("player", key), "A removes her")
	T.eq(Shared().players[key], nil, "gone from the account's list")
	AsCharacter(b, function()
		T.eq(NS.cdb.relationships.players[key] ~= nil, true, "the record is still in B's file until B loads")
		T.eq(R:IsListed(key), false, "but B no longer lists her")
		T.eq(R:ScopeOf(key), nil, "she has no scope")
		T.eq(R:Get("player", key), nil, "no record to read")
		T.eq(R:CountPlayers(), 0, "and she does not count toward the limit")
		T.eq(R:Observe(key, "group"), nil, "an encounter with her records nothing")
		T.eq(NS.cdb.relationships.players[key].seen.count, 1, "the leftover record is not touched")
		for _, row in ipairs(R:Rows({})) do T.ok(row.key ~= key, "she is not in the rows") end
		NS.Diagnostics.errors = {}
		R:Sanitize()
		T.eq(NS.cdb.relationships.players[key], nil, "B's next load drops the leftover")
		T.eq(ErrorsAbout("left the shared list"), 1, "and /au debug says so")
	end)
end)

T.run("#155: turning sharing off clears the observation records that came from it, not the people the character added", function()
	Fresh()
	SharingOn()
	local mine = Person("Aldric-Stormrage", { trust = 40 })       -- added with sharing on: it is in both layers
	local b = NewCharacter()
	AsCharacter(b, function() R:Observe(mine, "group") end)
	R:StopSharing()
	T.eq(R:IsListed(mine), true, "A still lists the person A added")
	T.ok(Shared().players[mine] ~= nil, "the account's list is kept")
	AsCharacter(b, function()
		T.eq(R:IsListed(mine), false, "B lists nobody while sharing is off")
		R:Sanitize()
		T.eq(next(NS.cdb.relationships.players), nil, "and B's observation records are gone")
	end)
	-- turned on again, the person comes back from the account, with no observations of B's
	R:SetSetting("sharePlayers", true)
	AsCharacter(b, function()
		T.eq(R:IsListed(mine), true, "back through the account")
		T.eq(R:Get("player", mine).seen.count, 0, "with no past observations")
	end)
end)

T.run("#155: the character that turns sharing off drops its own shared-only records at once", function()
	Fresh()
	SharingOn()
	local key = Person("Brenna-Stormrage", { trust = 60 })
	NS.cdb.relationships.players = {}                     -- this character only knows her through the account
	R:Observe(key, "group")
	T.eq(NS.cdb.relationships.players[key].via, "shared", "a record made from the shared list")
	R:StopSharing()
	T.eq(NS.cdb.relationships.players[key], nil, "dropped when sharing stops")
	T.eq(R:IsListed(key), false, "and she is not listed")
end)

T.run("#155: choices are never dropped, and acting on the person ties the record to the character", function()
	Fresh()
	SharingOn()
	local key = Person("Brenna-Stormrage", { trust = 60 })
	R:SetNote("player", key, "Shared note")
	local b = NewCharacter()
	AsCharacter(b, function()
		R:Observe(key, "group")
		T.eq(R:SetScope(key, "character"), true, "B keeps her on its own")
		local rec = NS.cdb.relationships.players[key]
		T.eq(rec.via, nil, "no longer tied to the shared list")
		T.eq(rec.source, "user", "with the source of the shared record")
		T.eq(rec.user.note, "Shared note", "and a copy of the choices")
	end)
	R:Remove("player", key)
	AsCharacter(b, function()
		local before = Deep(NS.cdb.relationships.players[key].user)
		T.eq(R:IsListed(key), true, "B keeps the person it chose to keep")
		R:Sanitize()
		T.ok(Same(before, NS.cdb.relationships.players[key].user), "its choices are untouched")
		T.eq(NS.cdb.relationships.players[key].seen.count, 1, "and so are its observations")
	end)
	-- the way back also ties every record to the character
	Fresh()
	SharingOn()
	local k2 = Person("Cora-Stormrage", { trust = 30 })
	local c = NewCharacter()
	AsCharacter(c, function()
		R:Observe(k2, "group")
		T.eq(NS.cdb.relationships.players[k2].via, "shared", "observed through the account")
		T.eq(R:CopySharedHere(), 1, "copy")
		T.eq(NS.cdb.relationships.players[k2].via, nil, "a copy is the character's own")
		R:StopSharing()
		T.eq(R:IsListed(k2), true, "and it survives the end of sharing")
	end)
end)

T.run("#155: a record with choices is never pruned, and nothing is pruned while the account's list is unreadable", function()
	Fresh()
	SharingOn()
	local key = Person("Brenna-Stormrage", { trust = 60 })
	local b = NewCharacter()
	AsCharacter(b, function() R:Observe(key, "group") end)
	-- a hand-made record that says "shared" but holds a choice
	b.players["Cora-Stormrage"] = { via = "shared", user = { note = "kept" }, seen = { first = 1, last = 2, count = 1, kinds = {}, facts = {} } }
	R:Remove("player", key)
	AsCharacter(b, function()
		R:Sanitize()
		T.eq(b.players[key], nil, "the shared-only record of the removed person is gone")
		T.eq(b.players["Cora-Stormrage"].user.note, "kept", "the one with a choice stays")
	end)
	-- a newer version wrote the account's list: it goes unused, and nothing that depends on it is dropped
	local other = Person("Dora-Stormrage")
	local d = NewCharacter()
	AsCharacter(d, function() R:Observe(other, "group") end)
	Shared().version = 99
	AsCharacter(d, function()
		R:Sanitize()
		T.eq(R.sharedReadOnly, true, "the account's list is not used")
		T.ok(d.players[other] ~= nil, "the record is kept, not dropped")
		T.eq(R:IsListed(other), false, "and ignored")
	end)
end)

---------------------------------------------------------------------------
-- #156: the list of people is capped when it is loaded
---------------------------------------------------------------------------
T.run("#156: loaded players over the limit are dropped, those without choices first, and /au debug says so", function()
	Fresh()
	local players = {}
	for i = 1, R.MAX_PLAYERS + 100 do
		players[("P%04d-Stormrage"):format(i)] = { user = {}, seen = { first = 1, last = i, count = i % 7, kinds = {}, facts = {} } }
	end
	-- the ones with choices are the least observed: they must still survive
	for i = 1, 5 do
		players[("C%d-Stormrage"):format(i)] = { source = "user", user = { note = "kept " .. i }, seen = { first = 1, last = 0, count = 0, kinds = {}, facts = {} } }
	end
	NS.cdb.relationships.players = players
	NS.Diagnostics.errors = {}
	R:Sanitize()
	T.eq(Count(NS.cdb.relationships.players), R.MAX_PLAYERS, "the list is back at the limit")
	for i = 1, 5 do T.ok(NS.cdb.relationships.players[("C%d-Stormrage"):format(i)], "a person with choices survives " .. i) end
	T.eq(ErrorsAbout("over the limit of 300 dropped"), 1, "/au debug reports it")
	local before = Deep(NS.cdb.relationships.players)
	NS.Diagnostics.errors = {}
	R:Sanitize()
	T.ok(Same(before, NS.cdb.relationships.players), "a second load changes nothing")
	T.eq(#NS.Diagnostics.errors, 0, "and reports nothing")
end)

T.run("#156: people who all hold choices are never dropped, only reported", function()
	Fresh()
	local players = {}
	for i = 1, R.MAX_PLAYERS + 20 do
		players[("P%04d-Stormrage"):format(i)] = { source = "user", user = { note = "n" .. i }, seen = { first = 1, last = 1, count = 1, kinds = {}, facts = {} } }
	end
	NS.cdb.relationships.players = players
	NS.Diagnostics.errors = {}
	R:Sanitize()
	T.eq(Count(NS.cdb.relationships.players), R.MAX_PLAYERS + 20, "nobody who holds a choice is dropped")
	T.eq(ErrorsAbout("they hold choices"), 1, "but it is reported")
end)

T.run("#156: both layers together stay within the limit with sharing on, and the account's list alone with it off", function()
	Fresh()
	SharingOn()
	local own, shared = {}, {}
	for i = 1, 200 do own[("A%04d-Stormrage"):format(i)] = { user = {}, seen = { first = 1, last = i, count = 1, kinds = {}, facts = {} } } end
	for i = 1, 200 do shared[("B%04d-Stormrage"):format(i)] = { source = "user", user = {} } end
	shared["Keep-Stormrage"] = { source = "user", user = { note = "kept" } }
	NS.cdb.relationships.players = own
	Shared().players = shared
	NS.Diagnostics.errors = {}
	R:Sanitize()
	T.eq(R:CountPlayers(), R.MAX_PLAYERS, "400 people in both layers: back to 300")
	T.ok(Shared().players["Keep-Stormrage"] ~= nil, "the shared person with a choice survives")
	-- the account's list is capped by itself, even with sharing off
	Fresh()
	local many = {}
	for i = 1, 700 do many[("B%04d-Stormrage"):format(i)] = { source = "user", user = {} } end
	NS.gdb.sharedPlayers = { version = R.SHARED_VERSION, players = many }
	NS.Diagnostics.errors = {}
	R:Sanitize()
	T.eq(Count(Shared().players), R.MAX_PLAYERS, "700 shared records: 300 are kept")
	T.eq(ErrorsAbout("shared players over the limit"), 1, "and it is reported")
end)

T.run("#156: loaded times in the future and huge counters are brought back inside their limits", function()
	Fresh()
	local now = time()
	NS.cdb.relationships.players = {
		["Aldric-Stormrage"] = { source = "user", user = {}, seen = { first = now + 1e9, last = now + 2e9, count = 1e300,
			kinds = { trade = 1e300, group = 2 }, facts = { { k = "group", t = now + 5e9 } } } },
	}
	NS.cdb.relationships.npcs = { [1234] = { first = now + 1e9, last = now + 1e9, count = 1e300, talks = 1e300, decayDay = 1e12, name = "Pip" } }
	NS.Diagnostics.errors = {}
	R:Sanitize()
	local seen = NS.cdb.relationships.players["Aldric-Stormrage"].seen
	T.ok(seen.first <= now and seen.last <= now and seen.facts[1].t <= now, "player times are not in the future")
	T.eq(seen.count, R.COUNTER_MAX, "the count is capped"); T.eq(seen.kinds.trade, R.COUNTER_MAX, "and so is the tally"); T.eq(seen.kinds.group, 2, "a normal one is kept")
	local npc = NS.cdb.relationships.npcs[1234]
	T.ok(npc.first <= now and npc.last <= now, "NPC times are not in the future")
	T.ok(npc.count == R.COUNTER_MAX and npc.talks == R.COUNTER_MAX, "NPC counters are capped")
	T.ok(npc.decayDay <= math.floor(now / R.DAY), "the decay day is not in the future")
	T.eq(ErrorsAbout("brought back inside their limits"), 1, "/au debug reports it once")
	local before = Deep(NS.cdb.relationships)
	NS.Diagnostics.errors = {}
	R:Sanitize()
	T.ok(Same(before, NS.cdb.relationships), "a second load changes nothing")
	T.eq(#NS.Diagnostics.errors, 0, "and reports nothing")
end)

---------------------------------------------------------------------------
-- #164: a crowd of strangers costs (almost) nothing: no bus event and no name read before the list is checked
---------------------------------------------------------------------------
-- a crowd: `n` different strangers on the nameplates within `seconds`, spread over `slots` unit tokens
local function Crowd(n, seconds, slots)
	P.nameplates = P.nameplates or {}
	for i = 1, n do
		local slot = (i - 1) % slots + 1
		P.nameplates[slot] = { name = "Stranger" .. i, realm = "Stormrage", player = true }
		FIRE("NAME_PLATE_UNIT_ADDED", "nameplate" .. slot)
		ADVANCE(seconds / n)
	end
end

-- counts the reads of names (and the events published) while fn runs
local function Cost(fn)
	local reads, plays = 0, 0
	local realFull, realIsPlayer = UnitFullName, UnitIsPlayer
	UnitFullName = function(u) reads = reads + 1; return realFull(u) end
	UnitIsPlayer = function(u) plays = plays + 1; return realIsPlayer(u) end
	local published = EventBus.stats.published
	local ok, err = pcall(fn)
	UnitFullName, UnitIsPlayer = realFull, realIsPlayer
	if not ok then error(err, 0) end
	return reads, plays, EventBus.stats.published - published
end

T.run("a crowd of strangers with an empty list: no name read, no event (#164)", function()
	Fresh()
	ProximityOn()
	local reads, plays, published = Cost(function() Crowd(200, 1, 40) end)
	T.eq(reads, 0, "no name read: there is nobody to find")
	T.eq(plays, 0, "not even UnitIsPlayer")
	T.eq(published, 0, "no event on the bus")
	T.eq(R.session.proximity.throttled or 0, 0, "and nothing to throttle")
	-- the Total RP 3 consent gives proximity someone to find: the cheap check no longer ends it
	NS.db.interlocutor.trp3Others = true
	T.ok(R:ProximityHasTargets(), "with the consent there is someone to find")
	NS.db.interlocutor.trp3Others = false
	T.ok(not R:ProximityHasTargets(), "and without it there is not")
	Person("Aldric-Stormrage")
	T.ok(R:ProximityHasTargets(), "a listed player is someone to find")
end)

T.run("a crowd of strangers with a list: a bounded number of reads, no event (#164)", function()
	Fresh()
	for i = 1, 20 do Person("Friend" .. i .. "-Stormrage") end
	ProximityOn()
	local reads, _, published = Cost(function() Crowd(200, 1, 40) end)
	T.ok(reads <= R.PROXIMITY_BURST + R.PROXIMITY_LOOKUPS * 1 + 1, "names read: " .. reads .. " of 200 sightings in one second")
	T.eq(published, 0, "no event: a stranger never reaches the bus")
	T.ok((R.session.proximity.throttled or 0) >= 200 - reads - 1, "the rest were throttled, and counted")
	T.eq(Candidates("relation_player"), 0, "and nobody was offered")
	-- a longer flood: the rate holds
	reads = Cost(function() Crowd(2000, 10, 40) end)
	T.ok(reads <= R.PROXIMITY_LOOKUPS * 10 + R.PROXIMITY_BURST + 1, "ten seconds of 200 a second: " .. reads .. " reads")
	-- the crowd is gone: a listed player shows up and is recognised
	ADVANCE(5)
	P.nameplates[3] = { name = "Friend7", realm = "Stormrage", player = true }
	FIRE("NAME_PLATE_UNIT_ADDED", "nameplate3")
	ADVANCE(1)
	T.eq(Candidates("relation_player"), 1, "the listed player is still recognised after the crowd")
	T.eq(offered[1].extra.relationSubject.id, "Friend7-Stormrage", "the right one")
end)

T.run("the same unit is looked at again only after a short gap (#164)", function()
	Fresh()
	Person("Aldric-Stormrage"); Person("Brenna-Stormrage")
	ProximityOn()
	local reads = Cost(function()
		for _ = 1, 30 do
			P.nameplates = { [1] = { name = "Stranger", realm = "Stormrage", player = true } }
			FIRE("NAME_PLATE_UNIT_ADDED", "nameplate1")
			ADVANCE(0.01)
		end
	end)
	T.eq(reads, 1, "30 events of one token in 0.3 s: one lookup")
	ADVANCE(R.PROXIMITY_UNIT_GAP + 0.1)
	reads = Cost(function()
		FIRE("NAME_PLATE_UNIT_ADDED", "nameplate1")
		P.mouseover = { name = "Stranger", realm = "Stormrage", player = true }
		for _ = 1, 10 do FIRE("UPDATE_MOUSEOVER_UNIT"); ADVANCE(0.01) end
	end)
	T.eq(reads, 2, "after the gap the plate is read again, and the mouse once (its own token)")
	-- the limiter keeps times per unit token and counters, never a name or a person
	local p = R.session.proximity
	local function Walk(v, depth)
		T.ok(depth < 4, "the limiter state is shallow")
		if type(v) == "string" then T.ok(not v:find("Stranger") and not v:find("Aldric"), "no name in the limiter state: " .. v) end
		if type(v) == "table" then for k, x in pairs(v) do Walk(k, depth + 1); Walk(x, depth + 1) end end
	end
	Walk(p, 0)
	for token in pairs(p.units) do T.ok(token:match("^nameplate%d+$") or token == "mouseover", "only unit tokens: " .. token) end
end)

T.run("a listed player is recognised in a mixed crowd, and once only (#164)", function()
	Fresh()
	Person("Aldric-Stormrage")
	ProximityOn()
	P.nameplates = { [1] = ALDRIC }
	local published = EventBus.stats.published
	FIRE("NAME_PLATE_UNIT_ADDED", "nameplate1")
	ADVANCE(1)
	T.eq(Candidates("relation_player"), 1, "recognised")
	T.eq(EventBus.stats.published - published, 1, "through one event")
	-- the same person again and again: already recognised, so nothing is published
	published = EventBus.stats.published
	for _ = 1, 20 do
		ADVANCE(1)
		FIRE("NAME_PLATE_UNIT_ADDED", "nameplate1")
	end
	T.eq(EventBus.stats.published - published, 0, "an already recognised person is not an event")
	T.eq(Candidates("relation_player"), 1, "and not offered again")
end)

T.run("a name that cannot be read costs a few lookups, not an event each (#164)", function()
	Fresh()
	Person("Aldric-Stormrage")
	ProximityOn()
	local realFull = UnitFullName
	UnitFullName = function() return nil end
	local published = EventBus.stats.published
	for i = 1, 30 do
		P.nameplates = { [(i % 5) + 1] = { name = "X", realm = "Y", player = true } }
		FIRE("NAME_PLATE_UNIT_ADDED", "nameplate" .. ((i % 5) + 1))
		ADVANCE(0.1)
	end
	UnitFullName = realFull
	T.eq(EventBus.stats.published - published, 0, "30 sightings with a failing UnitFullName: no event (it was 63)")
	-- secret values are no name: no event
	UnitFullName = function() return MakeSecret(), MakeSecret() end
	P.nameplates = {}
	for i = 1, 5 do P.nameplates[i] = { name = "X", realm = "Y", player = true } end
	for i = 1, 5 do
		FIRE("NAME_PLATE_UNIT_ADDED", "nameplate" .. i)
		ADVANCE(0.6)
	end
	UnitFullName = realFull
	T.eq(EventBus.stats.published - published, 0, "secret names: no event")
end)

T.run("with the Total RP 3 consent a stranger without a profile is not an event (#164)", function()
	Fresh()
	ProximityOn()
	NS.db.interlocutor.trp3Others = true
	FAKE_TRP3({ unitID = function() return "Eve-Stormrage" end })
	local published = EventBus.stats.published
	Crowd(30, 3, 10)
	T.eq(EventBus.stats.published - published, 0, "strangers with no profile: nothing on the bus")
	FAKE_TRP3({ unitID = function() return "Eve-Stormrage" end, profiles = { ["Eve-Stormrage"] = {} } })
	ADVANCE(2)
	P.nameplates = { [1] = EVE }
	FIRE("NAME_PLATE_UNIT_ADDED", "nameplate1")
	T.ok(R.candidates["Eve-Stormrage"] ~= nil, "a stranger who has a profile is still suggested")
	T.eq(Count(NS.cdb.relationships.players), 0, "and not a record")
	TRP3_API, AddOn_TotalRP3 = nil, nil
end)

T.run("the events follow the relations module, not only the option (#164)", function()
	Fresh()
	Person("Aldric-Stormrage")
	ProximityOn()
	T.ok(EventBus.sources.NAME_PLATE_UNIT_ADDED ~= nil, "registered")
	-- the module is switched off without calling ApplyProximity (the wizard, an old code path): the next event heals it
	NS.db.modules.relations = false
	P.nameplates = { [1] = ALDRIC }
	local published = EventBus.stats.published
	FIRE("NAME_PLATE_UNIT_ADDED", "nameplate1")
	T.eq(EventBus.stats.published - published, 0, "nothing is published with the module off")
	T.eq(EventBus.sources.NAME_PLATE_UNIT_ADDED, nil, "the nameplate source is removed")
	T.eq(EventBus.sources.UPDATE_MOUSEOVER_UNIT, nil, "and the mouseover one")
	-- the module comes back through a preset: the option is still on, so the events are registered again
	Config:ApplyPreset("complete")
	T.eq(NS.db.modules.relations, true, "the preset turns the module on")
	T.ok(EventBus.sources.NAME_PLATE_UNIT_ADDED ~= nil and EventBus.sources.UPDATE_MOUSEOVER_UNIT ~= nil, "registered again")
	NS.db.modules.relations = false
	R:ApplyProximity()
	T.eq(EventBus.sources.NAME_PLATE_UNIT_ADDED, nil, "ApplyProximity removes them with the module off")
	NS.db.modules.relations = true
	R:ApplyProximity()
	T.ok(EventBus.sources.NAME_PLATE_UNIT_ADDED ~= nil, "and registers them with it on")
end)

T.run("/au debug shows how many sightings were throttled (#164)", function()
	Fresh()
	for i = 1, 5 do Person("Friend" .. i .. "-Stormrage") end
	ProximityOn()
	Crowd(100, 1, 40)
	T.ok(R:Status():find("throttled", 1, true) ~= nil, "the status line has the counter: " .. R:Status())
	T.ok((R.session.proximity.throttled or 0) > 0, "and it is not zero")
end)
