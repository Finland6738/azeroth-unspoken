-- Tests of the first part of the Player relationships milestone (#107, #108, #109, #106, #110, ADR 0026):
--   - player records keep what the user chose (`user`) apart from what the addon observed (`seen`), and the software
--     never writes `user` (a behaviour test here and a source check in Tests/check_user_block.py);
--   - encounters by type, counted only for players already in the list, with a ring of short facts and no text;
--   - feelings in words, the `ally` label and the presets of the axes;
--   - the `relation_player` event: a known player recognised once per session, through the Director;
--   - the conditions relDaysSince, relMetHere and relShared;
--   - the three second-encounter scenarios (trust, wariness, resentment).
-- Persistence across /reload and the migration of a saved v1 file are proved in Tests/run_tests.py.
local NS = ...
local Engine, Config, R, Traits, LM = NS.Engine, NS.Config, NS.Relationships, NS.Traits, NS.LivingMemory
local Director, Narrator, RelationsFrame, I = NS.Director, NS.Narrator, NS.RelationsFrame, NS.Interlocutor

local DAY = 86400

---------------------------------------------------------------------------
-- Helpers
---------------------------------------------------------------------------
local offered = {}               -- every candidate the Director was offered: { event, extra }
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

local ALDRIC = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }

local function JoinGroup(...)
	P.party, P.group = { ... }, true
	FIRE("GROUP_ROSTER_UPDATE")
	ADVANCE(2)   -- the scan waits for the end of the roster updates, then the Director's arbitration window
end

local function LeaveGroup()
	P.party, P.group = nil, false
	FIRE("GROUP_ROSTER_UPDATE")
	ADVANCE(2)
end

local function Candidates(event)
	local n = 0
	for _, o in ipairs(offered) do if o.event == event then n = n + 1 end end
	return n
end

local function LogCount(event, result)
	local n = 0
	for _, e in ipairs(Director.log) do
		if e.event == event and (result == nil or e.result == result) then n = n + 1 end
	end
	return n
end

-- the ids of the lines a person can hear for an event (sampled), with anti-repetition reset at every pick
local function Seen(event, extra, n)
	local ids = {}
	for _ = 1, n or 120 do
		NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
		local rec = NS.Gateway:PickRecord(event, NS:BuildContext(extra))
		if rec then ids[rec.id] = true end
	end
	return ids
end

local function Subject(key)
	return { relationSubject = { kind = "player", id = key },
		otherSubject = { kind = "player", key = "player:" .. key, name = key:match("^([^-]+)") } }
end

-- the widgets of the relationships window
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
local function Texts()
	local out = {}
	for _, w in ipairs(Under(function(x) return x.kind == "FontString" and x:IsShown() end)) do
		local t = w:GetText()
		if t ~= "" then table.insert(out, t) end
	end
	return table.concat(out, "\n")
end
local function ButtonWithText(text)
	for _, b in ipairs(Under(function(x) return x.kind == "Button" and x:IsShown() end)) do
		local t = b:GetText()
		if t == text or t:find(text, 1, true) == 1 then return b end
	end
	return nil
end

---------------------------------------------------------------------------
-- #107: the two blocks
---------------------------------------------------------------------------
T.run("a player record has a user block and a seen block", function()
	Fresh()
	T.eq(R.VERSION, 3, "relationships.version is 3 (N2 #214: met, race)")
	T.eq(NS.cdb.relationships.version, 3, "a new character starts at version 3")
	local key, rec = Person("Aldric-Stormrage", { trust = 55, affection = 45 })
	T.ok(type(rec.user) == "table" and type(rec.seen) == "table", "both blocks exist")
	for _, flat in ipairs({ "first", "last", "count", "trust", "affection", "label", "note", "tags", "traits", "role" }) do
		T.eq(rec[flat], nil, "no flat field '" .. flat .. "' on a player record")
	end
	T.eq(rec.user.axes.trust, 55, "the axes the user set are in user.axes")
	T.eq(rec.seen.count, 0, "adding a player is not an encounter")
	T.eq(rec.seen.last, 0, "nothing was seen yet")
	T.eq(rec.source, "user", "the source stays on the record")
	-- every user action writes only the user block
	local before = Deep(rec.seen)
	R:SetNote("player", key, "Saved me at Tirisfal"); R:SetLabel("player", key, "ally"); R:SetTags("player", key, "guild, fair")
	R:SetFeelings("player", key, { "trust" }); I:SetTrait("player", key, "temperament", "cheerful"); I:SetTrait("player", key, "role", "innkeeper")
	T.eq(rec.user.note, "Saved me at Tirisfal", "note"); T.eq(rec.user.label, "ally", "label"); T.eq(#rec.user.tags, 2, "tags")
	T.eq(rec.user.feeling[1], "trust", "feeling"); T.eq(rec.user.traits.temperament, "cheerful", "traits"); T.eq(rec.user.role, "innkeeper", "role")
	T.ok(Same(rec.seen, before), "user actions never touch seen")
	-- NPC records stay flat
	NS.db.relations.npcAuto = true
	P.npc = { name = "Pip", guid = "Creature-0-3134-0-6-1234-0000A2E9A1" }
	ADVANCE(16); FIRE("GOSSIP_SHOW")
	local npc = R:Get("npc", 1234)
	T.ok(npc ~= nil and npc.user == nil and npc.seen == nil and npc.count >= 1 and (npc.familiarity or 0) > 0, "NPC records keep the flat shape")
end)

T.run("migration of relationships.version 1 to 2", function()
	Fresh()
	NS.cdb.relationships = { version = 1,
		npcs = { [1234] = { first = 1, last = 2, count = 3, familiarity = 40, name = "Pip", label = "friend" } },
		players = {
			["Aldric-Stormrage"] = { first = 100, last = 200, count = 4, source = "user", trust = 55, affection = -20,
				label = "sworn brother", note = "Saved me", tags = { "guild" }, role = "innkeeper", roleSource = "user",
				traits = { temperament = "cheerful" }, noted = { friend = true } },
			["Brenna-Stormrage"] = { first = 5, last = 6, count = 1, source = "auto" },
			["Cora-Stormrage"] = { first = 7, last = 8, count = 2, source = "user", feeling = { "trust" }, mood = "x" },
		} }
	local dropped = R:Sanitize()
	T.eq(dropped, 0, "nothing dropped")
	local d = NS.cdb.relationships
	T.eq(d.version, 3, "the current version now")
	local a = d.players["Aldric-Stormrage"]
	T.eq(a.user.axes.trust, 55, "axes into user.axes"); T.eq(a.user.axes.affection, -20, "negative axis too")
	T.eq(a.user.label, "sworn brother", "label"); T.eq(a.user.note, "Saved me", "note"); T.eq(a.user.tags[1], "guild", "tags")
	T.eq(a.user.role, "innkeeper", "role"); T.eq(a.user.roleSource, "user", "role source"); T.eq(a.user.traits.temperament, "cheerful", "traits")
	T.eq(a.seen.first, 100, "first into seen"); T.eq(a.seen.last, 200, "last into seen"); T.eq(a.seen.count, 4, "count into seen")
	T.ok(Count(a.seen.kinds) == 0 and #a.seen.facts == 0, "nothing invented: no kinds, no facts")
	T.eq(a.source, "user", "source kept"); T.ok(a.noted and a.noted.friend, "journal flags kept")
	for _, flat in ipairs({ "first", "last", "count", "trust", "label", "note", "tags", "traits", "role" }) do T.eq(a[flat], nil, "flat '" .. flat .. "' moved") end
	T.eq(d.players["Brenna-Stormrage"].source, "auto", "an automatic record stays automatic")
	T.eq(d.players["Brenna-Stormrage"].seen.count, 1, "its count moved")
	T.eq(d.players["Cora-Stormrage"].user.feeling[1], "trust", "a feeling written before the migration is kept")
	T.eq(d.players["Cora-Stormrage"].mood, nil, "unknown fields are cleaned like before")
	T.ok(d.npcs[1234].count == 3 and d.npcs[1234].familiarity == 40 and d.npcs[1234].user == nil, "NPCs are untouched")
	-- the resolved relation is the same as before the migration
	T.eq(R:Resolve("player", a).text, "sworn brother", "the resolved label reads the new shape")
	T.eq(R:Resolve("player", a).manual, true, "a hand-chosen label is still manual")
	-- running it again changes nothing
	local snapshot = Deep(d)
	R:Sanitize()
	T.ok(Same(snapshot, NS.cdb.relationships), "idempotent")
	-- a record that already has the new shape is not migrated again
	local rec = { source = "user", user = { axes = { trust = 10 } }, seen = { first = 1, last = 2, count = 1 } }
	T.ok(R.MigrateV1(rec) == rec, "a v2 record is returned as it is")
	-- malformed values inside the new blocks are cleaned
	NS.cdb.relationships = { version = 2, npcs = {}, players = { ["Dara-Stormrage"] = { user = { axes = { trust = 999, fear = "x" },
		feeling = { "trust", "nonsense", "liking", "gratitude" }, note = 5 }, seen = { count = -3, kinds = { group = 2, ["Bad Kind"] = 4, duel = "x" },
		facts = { { k = "group", t = 1, p = 1411, z = "Durotar", text = "never kept" }, { k = 5 }, "x", { k = "trade", t = 2 } } } } } }
	R:Sanitize()
	local dara = NS.cdb.relationships.players["Dara-Stormrage"]
	T.eq(dara.user.axes.trust, 100, "axes limited"); T.eq(dara.user.axes.fear, nil, "bad axis dropped")
	T.ok(#dara.user.feeling == 2 and dara.user.feeling[1] == "trust" and dara.user.feeling[2] == "liking", "at most two known feelings")
	T.eq(dara.user.note, nil, "a bad note is dropped")
	T.eq(dara.seen.count, 0, "negative count"); T.eq(dara.seen.kinds.group, 2, "valid kind kept"); T.eq(dara.seen.kinds["Bad Kind"], nil, "bad kind dropped")
	T.ok(#dara.seen.facts == 2 and dara.seen.facts[1].text == nil, "bad facts dropped and no text field survives")
	-- data from a newer version stays read-only and untouched
	NS.cdb.relationships = { version = 4, npcs = {}, players = { ["Eve-Stormrage"] = { user = { future = true }, seen = { first = 1 }, nickname = "x" } } }
	R.readOnly = false
	R:Sanitize()
	T.ok(R.readOnly and NS.cdb.relationships.players["Eve-Stormrage"].nickname == "x" and NS.cdb.relationships.version == 4, "version 4: read-only, intact")
	Fresh()
end)

-- A record that has everything the user can choose, then every automatic path of the addon runs over it: none may
-- change the user block. This is the test behind ADR 0026 (the source check is Tests/check_user_block.py).
T.run("the software never writes the user block", function()
	Fresh()
	NS.db.relations.proposePlayers = true
	local key = Person("Aldric-Stormrage", { trust = 60, affection = 50, familiarity = 50, fear = 20 })
	R:SetLabel("player", key, "ally"); R:SetFeelings("player", key, { "trust", "gratitude" }); R:SetNote("player", key, "My note")
	R:SetTags("player", key, "guild, fair"); I:SetTrait("player", key, "temperament", "cheerful"); I:SetTrait("player", key, "role", "guard")
	local snapshot = Deep(Rec(key).user)
	T.ok(Count(snapshot) >= 6, "the snapshot holds every kind of choice")

	-- encounters of every kind, the group, a fight, the target, a whisper
	P.mapID = 1411
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" }, { name = "Brenna", guid = "Player-1-0000BBBB" })
	P.npc = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	ADVANCE(16); FIRE("TRADE_SHOW")
	ADVANCE(16); FIRE("DUEL_REQUESTED", "Aldric-Stormrage")
	ADVANCE(16); FIRE("PARTY_INVITE_REQUEST", "Aldric-Stormrage", false, false, true, true, false, "Player-1-0000AAAA", false)
	ADVANCE(16); FIRE("CHAT_MSG_TEXT_EMOTE", "Aldric bows before you.", "Aldric-Stormrage")
	ADVANCE(16); FIRE("CHAT_MSG_WHISPER_INFORM", "a private word", "Aldric-Stormrage", "", "", "Aldric", "", 0, 0, "", 0, 99)
	P.target = ALDRIC; ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED")
	P.combat = true; ADVANCE(16); FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(20); P.combat = false; FIRE("PLAYER_REGEN_ENABLED")
	-- the narrator speaks, the relation enters the context, relation_player and greetings are picked
	NS.db.chance.relation_player = 100
	for _ = 1, 20 do
		NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
		NS.Gateway:PickRecord("relation_player", NS:BuildContext(Subject(key)))
		NS.Gateway:PickRecord("greet", NS:BuildContext())
	end
	-- maintenance, a long absence, a restart of the module
	R:MaintainAll(); LEAP(40 * DAY); R:MaintainAll(); R:Sanitize(); R:ScanGroup(true); R:ScanGroup()
	R:Observe(key, "emote"); R:Observe(key, "group_combat"); R:Recognize(key)
	R:OnInit()
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	-- forgetting what was observed is a user action on `seen`, and leaves the user block alone
	R:ForgetObservations(key)
	T.ok(Rec(key).seen.count == 0, "the observations were forgotten")
	T.ok(Same(Rec(key).user, snapshot), "no automatic path changed the user block")
	T.ok(Count(Rec(key).seen.kinds) == 0, "and forgetting did not touch it either")
	-- the control: a user action does change it, so the comparison can fail
	R:SetNote("player", key, "A different note")
	T.ok(not Same(Rec(key).user, snapshot), "a user action changes it (the test can fail)")
end)

T.run("the window: two sections, and 'Forget observations' is not 'Remove person'", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 55, affection = 45, familiarity = 50 })
	R:SetNote("player", key, "My note"); R:SetFeelings("player", key, { "liking" })
	R:Observe(key, "group"); R:Observe(key, "duel")
	T.ok(RelationsFrame:Open({ kind = "player", key = key }), "the detail opens")
	local text = Texts()
	T.ok(text:find("Cosa hai scelto tu", 1, true), "section: what you chose")
	T.ok(text:find("Cosa ha osservato l'addon", 1, true), "section: what the addon observed")
	T.ok(text:find("Incontri: 2", 1, true), "the observed block shows the encounters: " .. text)
	T.ok(ButtonWithText("Dimentica le osservazioni") ~= nil and ButtonWithText("Rimuovi la persona") ~= nil, "two distinct actions")
	-- forget: asks twice, clears only the observations
	ButtonWithText("Dimentica le osservazioni"):Click()
	T.eq(Rec(key).seen.count, 2, "the first click only arms")
	ButtonWithText("Conferma: dimentica"):Click()
	T.eq(Rec(key).seen.count, 0, "the second forgets the observations")
	T.ok(Count(Rec(key).seen.kinds) == 0 and #Rec(key).seen.facts == 0, "kinds and facts too")
	T.ok(Rec(key).user.note == "My note" and Rec(key).user.axes.trust == 55 and Rec(key).user.feeling[1] == "liking", "everything the user chose is still there")
	T.ok(Texts():find("Ancora nulla di osservato", 1, true), "the window says nothing was observed yet")
	T.eq(RelationsFrame:CurrentView(), "detail", "and stays on the person")
	-- remove: the person goes away
	ButtonWithText("Rimuovi la persona"):Click()
	T.ok(Rec(key) ~= nil, "the first click only arms")
	ButtonWithText("Conferma: rimuovi"):Click()
	T.eq(Rec(key), nil, "the second removes the person")
	-- an NPC has no observed block
	NS.db.relations.npcAuto = true
	P.npc = { name = "Pip", guid = "Creature-0-3134-0-6-1234-0000A2E9A1" }
	ADVANCE(16); FIRE("GOSSIP_SHOW")
	RelationsFrame:Open({ kind = "npc", key = 1234 })
	T.ok(not Texts():find("Cosa ha osservato l'addon", 1, true), "an NPC detail has no observed block")
	T.ok(ButtonWithText("Dimentica le osservazioni") == nil, "and no forget button")
	-- commands
	Fresh()
	key = Person("Aldric-Stormrage")
	R:Observe(key, "trade")
	SlashCmdList.AZEROTHUNSPOKEN("relationships forget Aldric")
	T.eq(Rec(key).seen.count, 0, "/au relationships forget")
	SlashCmdList.AZEROTHUNSPOKEN("relationships feeling Aldric trust gratitude")
	T.ok(#Rec(key).user.feeling == 2, "/au relationships feeling")
	SlashCmdList.AZEROTHUNSPOKEN("relationships feeling Aldric none")
	T.eq(Rec(key).user.feeling, nil, "none clears the feelings")
end)

---------------------------------------------------------------------------
-- #108: encounters by type
---------------------------------------------------------------------------
T.run("each type of encounter updates seen", function()
	Fresh()
	NS.db.relations.proposePlayers = true
	local key = Person("Aldric-Stormrage")
	local function Seen() return Rec(key).seen end
	P.mapID, P.zone = 1411, "Durotar"
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	T.eq(Seen().kinds.group, 1, "group"); T.eq(Seen().count, 1, "count 1"); T.ok(Seen().last <= FAKE_EPOCH and Seen().last >= FAKE_EPOCH - 3, "last = the time of the encounter")
	T.eq(Seen().facts[1].k, "group", "the first fact"); T.eq(Seen().facts[1].p, 1411, "with the place (map)"); T.eq(Seen().facts[1].z, "Durotar", "and the zone")
	P.npc = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	ADVANCE(16); FIRE("TRADE_SHOW")
	T.eq(Seen().kinds.trade, 1, "trade")
	ADVANCE(16); FIRE("DUEL_REQUESTED", "Aldric-Stormrage")
	T.eq(Seen().kinds.duel, 1, "duel")
	ADVANCE(16); FIRE("PARTY_INVITE_REQUEST", "Aldric-Stormrage", false, false, true, true, false, "Player-1-0000AAAA", false)
	T.eq(Seen().kinds.invite, 1, "invite")
	ADVANCE(16); FIRE("CHAT_MSG_TEXT_EMOTE", "Aldric waves.", "Aldric-Stormrage")
	T.eq(Seen().kinds.emote, nil, "an emote not aimed at us does not count")
	ADVANCE(16); FIRE("CHAT_MSG_TEXT_EMOTE", "Aldric bows before you.", "Aldric-Stormrage")
	T.eq(Seen().kinds.emote, 1, "an emote aimed at us counts")
	P.target = ALDRIC; ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED")
	T.eq(Seen().kinds.target, 1, "target (the player is in the list)")
	ADVANCE(16); FIRE("CHAT_MSG_WHISPER_INFORM", "a secret plan", "Aldric-Stormrage", "", "", "Aldric", "", 0, 0, "", 0, 99)
	T.eq(Seen().kinds.whisper, 1, "a private reply (the name only)")
	T.eq(Seen().count, 7, "seven encounters of seven kinds")
	-- a ring of the last facts: at most five, no text
	T.eq(#Seen().facts, R.FACTS, "the ring holds " .. R.FACTS .. " facts")
	T.eq(Seen().facts[#Seen().facts].k, "whisper", "the newest is last")
	for _, f in ipairs(Seen().facts) do
		local keys = 0
		for k in pairs(f) do keys = keys + 1; T.ok(k == "k" or k == "p" or k == "z" or k == "t", "a fact holds only kind, place and time: " .. k) end
		T.ok(type(f.k) == "string" and type(f.t) == "number", "kind and time")
	end
	local saved = SERIALIZE(NS.cdb)
	T.ok(not saved:find("bows", 1, true) and not saved:find("secret plan", 1, true), "no chat or emote text is saved")
	-- the same kind inside the gap is one encounter
	ADVANCE(16); FIRE("DUEL_REQUESTED", "Aldric-Stormrage")
	T.eq(Seen().kinds.duel, 1, "a second duel request inside the gap is the same encounter")
	T.eq(Seen().count, 7, "the count does not change")
	T.eq(Seen().last, FAKE_EPOCH, "but last is refreshed")
	ADVANCE(R.ENCOUNTER_GAP + 5); FIRE("DUEL_REQUESTED", "Aldric-Stormrage")
	T.eq(Seen().kinds.duel, 2, "after the gap it is a new encounter")
	T.eq(Seen().count, 8, "and it counts")
end)

T.run("only players already in the list are recorded", function()
	Fresh()
	NS.db.relations.proposePlayers = true
	-- nobody in the list: duel, invite, emote and target create nothing, not even a suggestion
	P.target = ALDRIC
	FIRE("DUEL_REQUESTED", "Zed-Stormrage")
	ADVANCE(16); FIRE("PARTY_INVITE_REQUEST", "Zed-Stormrage", false, false, true, true, false, "Player-1-0000Z", false)
	ADVANCE(16); FIRE("CHAT_MSG_TEXT_EMOTE", "Zed bows before you.", "Zed-Stormrage")
	ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED")
	T.eq(Count(NS.cdb.relationships.players), 0, "no record was created")
	T.eq(Count(R.candidates), 0, "and nothing was even proposed for these encounters")
	T.eq(Candidates("relation_player"), 0, "no recognition either")
	-- a trade or a group still propose (session only), and the user adds with a click
	P.npc = { name = "Dara", realm = "Stormrage", player = true, guid = "Player-1-0000CCCC" }
	ADVANCE(16); FIRE("TRADE_SHOW")
	T.ok(R.candidates["Dara-Stormrage"] ~= nil, "a trade is proposed")
	T.eq(Count(NS.cdb.relationships.players), 0, "still nobody in the list")
	local rec = R:AddPlayer("Dara-Stormrage", "user")
	T.ok(rec.seen.count == 1 and rec.seen.kinds.trade == 1, "the proposal's encounter becomes the first observation when the user adds the person")
	-- the module off, or in read-only: nothing is recorded
	local key = Person("Aldric-Stormrage")
	NS.db.modules.relations = false
	ADVANCE(16); FIRE("DUEL_REQUESTED", "Aldric-Stormrage")
	T.eq(Rec(key).seen.count, 0, "module off: nothing recorded")
	NS.db.modules.relations = true
	T.eq(R:Observe("Zed-Stormrage", "group"), nil, "Observe ignores a person who is not listed")
	T.eq(R:Observe(R.PlayerKey("Garrosh"), "group"), nil, "and the player's own character")
end)

T.run("a fight shared in a group is a shared experience", function()
	Fresh()
	local key = Person("Aldric-Stormrage")
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	local count = Rec(key).seen.count
	P.combat = true; ADVANCE(16); FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(20); P.combat = false; FIRE("PLAYER_REGEN_ENABLED")
	T.eq(Rec(key).seen.kinds.group_combat, 1, "group_combat in the tally")
	T.eq(Rec(key).seen.count, count, "it is not an encounter: count unchanged")
	T.eq(Rec(key).seen.facts[#Rec(key).seen.facts].k, "group_combat", "but it is a fact")
	-- a fight alone, or after leaving the group, records nothing
	LeaveGroup()
	P.combat = true; ADVANCE(16); FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(700); P.combat = false; FIRE("PLAYER_REGEN_ENABLED")
	T.eq(Rec(key).seen.kinds.group_combat, 1, "no group, no shared fight")
end)

T.run("the list shows an Encounters column and the export has the counts", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 50 })
	R:Observe(key, "group"); R:Observe(key, "trade"); R:Observe(key, "duel")
	RelationsFrame:Open("list")
	T.ok(ButtonWithText("Incontri") ~= nil, "the column header: Incontri")
	local found = false
	for _, w in ipairs(Under(function(x) return x.kind == "FontString" and x:IsShown() end)) do
		if w:GetText() == "3" then found = true end
	end
	T.ok(found, "the row shows 3 encounters")
	local export = R:ExportText()
	T.ok(export:find("Incontri: 3", 1, true), "the export shows the count: " .. export)
	T.ok(export:find("gruppo 1", 1, true) and export:find("scambio 1", 1, true) and export:find("duello 1", 1, true), "and the encounters by type")
	R:SetFeelings("player", key, { "gratitude" })
	T.ok(R:ExportText():find("gratitudine", 1, true), "the export shows the feeling")
	T.ok(not export:find("bows", 1, true), "never a chat text")
	NS.db.locale = "en"
	T.ok(R:ExportText():find("Encounters: 3", 1, true), "in English too")
	NS.db.locale = "it"
	T.eq(R:Rows({ sort = "count", desc = true })[1].key, key, "the table sorts by encounters")
	-- "forget" empties the column without removing the person
	R:ForgetObservations(key)
	T.ok(R:ExportText():find("Incontri: 0", 1, true) and R:Get("player", key) ~= nil, "forgotten: zero encounters, person kept")
end)

---------------------------------------------------------------------------
-- #109: feelings and the ally label
---------------------------------------------------------------------------
T.run("feelings in words and the ally label", function()
	Fresh()
	local ids = {}
	for _, f in ipairs(R.feelings) do table.insert(ids, f.id) end
	T.eq(table.concat(ids, ","), "trust,liking,wariness,fear,resentment,gratitude", "the six feelings, in order")
	for _, id in ipairs(ids) do
		T.ok(R:FeelingName(id) ~= id, "a name for " .. id)
		T.ok(next(R.feelingById[id].preset) ~= nil, "a preset for " .. id)
		T.ok(Engine.CONDITION_VALUES.feeling[id], "the condition value " .. id)
		T.ok(Traits.defs.feeling.valid[id], "the tag value " .. id)
	end
	local key = Person("Aldric-Stormrage", { familiarity = 30 })
	T.ok(R:SetFeelings("player", key, "resentment"), "one feeling as a word")
	T.eq(Rec(key).user.feeling[1], "resentment", "saved")
	T.ok(R:SetFeelings("player", key, { "trust", "liking", "fear" }), "three given")
	T.eq(#Rec(key).user.feeling, 2, "at most two are kept")
	T.ok(not R:SetFeelings("player", key, { "love" }) and #Rec(key).user.feeling == 2, "an unknown feeling is refused")
	T.ok(R:SetFeelings("player", key, nil) and Rec(key).user.feeling == nil, "none clears them")
	-- a feeling shows up in the resolved relation, the traits and the context
	R:SetFeelings("player", key, { "gratitude", "trust" })
	local info = R:Resolve("player", Rec(key))
	T.ok(info.feelings[1] == "gratitude" and info.feelings[2] == "trust", "feelings in order")
	T.ok(info.traits.feeling.gratitude and info.traits.feeling.trust, "a set trait for the tags")
	P.target = ALDRIC
	local ctx = NS:BuildContext()
	T.ok(ctx.relFeelings.gratitude and ctx.relFeelings.trust, "ctx.relFeelings")
	T.ok(Engine.Match({ feeling = "gratitude" }, ctx) and Engine.Match({ feeling = { "fear", "trust" } }, ctx), "the condition `feeling`, any of a list")
	T.ok(not Engine.Match({ feeling = "fear" }, ctx), "and it is false for another feeling")
	T.ok(Engine.Match({ ["not"] = { feeling = "fear" } }, ctx), "not")
	-- the feeling alone does not move the axes or the label
	T.eq(R:Axes(Rec(key)).trust, 0, "the axes did not move"); T.eq(info.label, R:Derive(R:Axes(Rec(key))), "nor the label")
	-- tags: rel.feeling:x is soft, rel.req:feeling and rel.not:feeling are hard
	local function F(tags) return R.Factor({ tags = tags }, ctx) end
	T.ok(F({ ["rel.feeling:gratitude"] = true }) > 1, "a matching feeling tag weighs more")
	T.ok(F({ ["rel.feeling:fear"] = true }) < 1, "a contrasting one weighs less")
	T.eq(F({ ["rel.not:feeling:gratitude"] = true }), 0, "rel.not excludes")
	T.eq(F({ ["rel.req:feeling:fear"] = true }), 0, "rel.req needs it")
	T.ok(F({ ["rel.req:feeling:trust"] = true }) > 0, "and passes when present")
	T.eq(Traits.CheckTag("rel.feeling:resentment"), nil, "the validator knows the tag")
	T.ok(Traits.CheckTag("rel.feeling:love") ~= nil, "and refuses an unknown value")
	T.eq(#Engine.CheckConditions({ feeling = "wariness" }), 0, "the validator knows the condition")
	T.ok(#Engine.CheckConditions({ feeling = "love" }) > 0, "and refuses an unknown feeling")
	T.ok(Engine.UsesRelation({ feeling = "trust" }), "a line with a feeling condition names a relation")
	-- the ally label: only the user gives it
	T.ok(R.labelById.ally ~= nil and R.labelById.ally.manualOnly, "the ally label exists and is manual only")
	T.eq(R:LabelName("ally"), "alleato", "Italian name (male form by default)")
	NS.db.locale = "en"; T.eq(R:LabelName("ally"), "ally", "English name"); NS.db.locale = "it"
	T.eq(R:Derive({ trust = 100, loyalty = 100, affection = 100, respect = 100, familiarity = 100, fear = 0 }), "comrade", "never derived: a comrade stays a comrade")
	T.ok(R:Derive({ trust = 40, loyalty = 40, familiarity = 20, affection = 0, respect = 0 }) ~= "ally", "and a person with those axes is not an ally by themselves")
	R:SetLabel("player", key, "ally")
	T.eq(NS:BuildContext().relation, "ally", "the user chooses it")
	T.eq(NS.Gateway:PickRecord("relation_player", NS:BuildContext(Subject(key))) ~= nil, true, "and the relation_player lines can use it")
	T.ok(Engine.Match({ relation = "ally" }, NS:BuildContext()), "the relation condition accepts ally")
	-- cycling the label reaches ally
	R:SetLabel("player", key, nil)
	local reached = false
	for _ = 1, #R:LabelIds() do if R:CycleLabel("player", key) == "ally" then reached = true end end
	T.ok(reached, "the label button reaches ally")
end)

T.run("the preset of the axes is offered, never applied by itself", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 70, affection = -10 })
	R:SetFeelings("player", key, { "resentment" })
	T.eq(R:Axes(Rec(key)).affection, -10, "choosing the feeling does not touch the axes")
	local ok, changed = R:ApplyFeelingPreset("player", key)
	T.ok(ok and changed.affection ~= nil, "the user asks for the preset")
	T.eq(R:Axes(Rec(key)).affection, R.feelingById.resentment.preset.affection, "affection goes to the typical level")
	T.eq(R:Axes(Rec(key)).trust, -25, "trust goes down to the typical level too (it was weaker in that direction)")
	T.eq(R:Resolve("player", Rec(key)).derived, "enemy", "and the derived label follows")
	-- a stronger value the user set is kept
	R:SetAxis("player", key, "affection", -95)
	R:ApplyFeelingPreset("player", key)
	T.eq(R:Axes(Rec(key)).affection, -95, "a stronger value is not softened")
	-- the preset of the first feeling only
	R:SetFeelings("player", key, { "gratitude", "fear" })
	R:SetAxis("player", key, "loyalty", 0)
	R:ApplyFeelingPreset("player", key)
	T.eq(R:Axes(Rec(key)).loyalty, 35, "the first feeling's preset")
	T.eq(R:Axes(Rec(key)).fear, 0, "not the second's")
	T.ok(not R:ApplyFeelingPreset("player", key) == false, "again: nothing more to raise")
	R:SetFeelings("player", key, nil)
	T.ok(not R:ApplyFeelingPreset("player", key), "no feeling, no preset")
	-- every feeling's preset moves the derived label the way its name says
	local expect = { trust = "acquaintance", liking = "friend", wariness = "wary", fear = "feared", resentment = "enemy", gratitude = "acquaintance" }
	for id, label in pairs(expect) do
		local k2 = Person("Test" .. id .. "-Stormrage")
		R:SetFeelings("player", k2, { id }); R:ApplyFeelingPreset("player", k2)
		T.eq(R:Resolve("player", Rec(k2)).derived, label, id .. " preset gives the label " .. label)
	end
	-- cycling the feeling slots
	local k3 = Person("Cycler-Stormrage")
	T.eq(R:CycleFeeling("player", k3, 2), nil, "the second slot needs the first")
	T.eq(R:CycleFeeling("player", k3, 1), "trust", "slot 1: trust")
	T.eq(R:CycleFeeling("player", k3, 2), "liking", "slot 2: the next one that is not slot 1")
	for _ = 1, 8 do R:CycleFeeling("player", k3, 1) end
	T.ok(Rec(k3).user.feeling == nil or Rec(k3).user.feeling[1] ~= Rec(k3).user.feeling[2], "slots never repeat a feeling")
end)

T.run("a warm line never goes to a negative feeling or relation (coherent with #105)", function()
	Fresh()
	math.randomseed(5)
	local key = Person("Aldric-Stormrage", { familiarity = 60, trust = 60, affection = 50 })
	P.target = ALDRIC
	local ids = Seen("greet")
	T.ok(ids["rel.greet.friend"] or ids["rel.greet.player"], "a friend gets warm lines")
	R:SetFeelings("player", key, { "resentment" })
	ids = Seen("greet")
	for id in pairs(ids) do
		local p = Engine.byId[id]
		T.ok(not (p.tags and p.tags.warm and not p.tags.ironic), "no warm greeting for resentment: " .. id)
	end
	ids = Seen("relation_player", Subject(key))
	for id in pairs(ids) do
		local p = Engine.byId[id]
		T.ok(not (p.tags and p.tags.warm and not p.tags.ironic), "no warm recognition line for resentment: " .. id)
	end
	for _, feeling in ipairs({ "wariness", "fear" }) do
		R:SetFeelings("player", key, { feeling })
		for id in pairs(Seen("greet")) do
			local p = Engine.byId[id]
			T.ok(not (p.tags and p.tags.warm and not p.tags.ironic), "no warm greeting for " .. feeling .. ": " .. id)
		end
	end
	-- the warm feelings are fine
	R:SetFeelings("player", key, { "gratitude" })
	local warm = false
	for id in pairs(Seen("greet")) do if Engine.byId[id].tags and Engine.byId[id].tags.warm then warm = true end end
	T.ok(warm, "gratitude keeps the warm lines")
	-- the validator: a warm relation_player line must exclude the negative relations
	local r = NS.Validator:Run({ packs = { "base_relations" } })
	T.eq(#r.errors, 0, "the shipped lines pass the validator"); T.eq(#r.warnings, 0, "with no warnings")
	NS:RegisterPack({ id = "t_warm", name = "t", languages = { "enUS" }, registry = {
		["t.rp.bad"] = { event = "relation_player", speaker = "inner", styles = { "everyday" }, depth = { "natural" }, tags = { "warm" },
			conditions = { relationKind = "player", isKnown = true } },
		["t.rp.ok"] = { event = "relation_player", speaker = "inner", styles = { "everyday" }, depth = { "natural" }, tags = { "warm" },
			conditions = { relationKind = "player", ["not"] = { relation = { "enemy", "disliked", "wary", "feared" } } } },
	} })
	NS:AddTexts("enUS", { ["t.rp.bad"] = { "Hello {other}.", "Hi {other}." }, ["t.rp.ok"] = { "Hello {other}.", "Hi {other}." } }, "t_warm")
	r = NS.Validator:Run({ packs = { "t_warm" } })
	local bad, good = false, false
	for _, e in ipairs(r.errors) do
		if e.id == "t.rp.bad" and e.code == "warmWithoutRelation" then bad = true end
		if e.id == "t.rp.ok" and e.code == "warmWithoutRelation" then good = true end
	end
	T.ok(bad and not good, "the validator checks relation_player for the #105 rule")
	Engine:DropPack("t_warm")   -- the test packs must not leak into the picks of the tests that follow
end)

T.run("base lines for every feeling, in both languages, at the same quality", function()
	Fresh()
	for _, id in ipairs({ "trust", "liking", "wariness", "fear", "resentment", "gratitude" }) do
		local p = Engine.byId["rel.player." .. id]
		T.ok(p ~= nil, "a base entry for " .. id)
		if p then
			T.eq(p.when.feeling, id, id .. ": the condition")
			T.ok(#p.text.it >= 3 and #p.text.en >= 3, id .. ": at least three variants per language")
			local depths = {}
			for _, lang in ipairs({ "it", "en" }) do
				for _, v in ipairs(p.text[lang]) do
					v = Engine.VariantView(v)
					T.ok(v.ok and #v.t < 220, id .. " " .. lang .. ": valid and short enough")
					for d in pairs(v.depth or {}) do depths[d] = true end
					local text = Engine:Render(v.t, lang, { other = "Pip", otherName = "Pip" }, nil)
					T.ok(text and not text:find("[{}]"), id .. " " .. lang .. ": composes")
				end
			end
			T.ok(depths.natural and depths.elevated, id .. ": a short line and an elevated one")
			T.ok(p.text.it[1] ~= p.text.en[1], id .. ": the Italian is not the English")
		end
	end
	T.ok(R.labelById.ally and Engine.byId["rel.greet.ally"] and Engine.byId["rel.bye.ally"], "greeting and farewell for ally")
end)

---------------------------------------------------------------------------
-- #106: the relation_player event
---------------------------------------------------------------------------
T.run("relation_player is a memory-priority Director candidate with a guard", function()
	Fresh()
	local ND = NS.NarrativeDirector
	T.eq(ND:Priority("relation_player"), ND.PRIORITY.memory, "memory priority")
	T.eq(ND.EVENT_MODULE.relation_player, "relations", "module relations")
	T.ok(R.recalls.relation_player, "a recall event: the validator asks for a relation condition")
	-- the guard: needs a known player
	NS.db.chance.relation_player = 100
	T.eq(Engine:PickEntry("relation_player", NS:BuildContext(), "say"), nil, "nobody: silence")
	P.target = { name = "Straniero", guid = "Player-1-0000EEEE", player = true, realm = "Stormrage" }
	T.eq(Engine:PickEntry("relation_player", NS:BuildContext(), "say"), nil, "an unlisted player: silence")
	Person("Aldric-Stormrage", { trust = 50 })
	P.target = ALDRIC
	local rec = NS.Gateway:PickRecord("relation_player", NS:BuildContext())
	T.ok(rec ~= nil and rec.id:find("^rel%.player%."), "a listed player: a recognition line (" .. tostring(rec and rec.id) .. ")")
	-- an NPC is not a player
	Fresh()
	NS.db.relations.npcAuto = true
	P.npc = { name = "Pip", guid = "Creature-0-3134-0-6-1234-0000A2E9A1" }
	ADVANCE(16); FIRE("GOSSIP_SHOW")
	R:SetAxis("npc", 1234, "familiarity", 45)
	T.eq(Engine:PickEntry("relation_player", NS:BuildContext(), "say"), nil, "a known NPC does not trigger relation_player")
	-- a line without a relation condition is refused by the validator
	NS:RegisterPack({ id = "t_rp", name = "t", languages = { "enUS" }, registry = {
		["t.rp.none"] = { event = "relation_player", speaker = "inner", styles = { "everyday" }, depth = { "natural" } } } })
	NS:AddTexts("enUS", { ["t.rp.none"] = { "A.", "B." } }, "t_rp")
	local r = NS.Validator:Run({ packs = { "t_rp" } })
	local found = false
	for _, e in ipairs(r.errors) do if e.code == "relationWithoutRelation" then found = true end end
	T.ok(found, "a relation_player line without a relation condition is an error")
	Engine:DropPack("t_rp")
end)

T.run("a known player joining the group yields at most one candidate per session", function()
	Fresh()
	NS.db.chance.relation_player = 100
	local key = Person("Aldric-Stormrage", { trust = 60, affection = 50, familiarity = 50 })
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	T.eq(Candidates("relation_player"), 1, "one candidate")
	T.eq(LogCount("relation_player", "spoken"), 1, "the Director let it speak (chance 100)")
	local e = offered[1]
	T.ok(e.extra.relationSubject.id == key and e.extra.otherSubject.key == "player:" .. key, "with the person as subject")
	-- leaving and joining again, a duel, an emote, a trade: no second candidate in this session
	LeaveGroup(); JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	ADVANCE(16); FIRE("DUEL_REQUESTED", "Aldric-Stormrage")
	ADVANCE(16); FIRE("CHAT_MSG_TEXT_EMOTE", "Aldric bows before you.", "Aldric-Stormrage")
	P.npc = ALDRIC; ADVANCE(16); FIRE("TRADE_SHOW"); ADVANCE(2)
	T.eq(Candidates("relation_player"), 1, "still one for the whole session")
	T.ok(Rec(key).seen.kinds.group == 2 or Rec(key).seen.kinds.group == 1, "the observations went on being recorded")
	T.ok(Rec(key).seen.kinds.duel == 1 and Rec(key).seen.kinds.emote == 1 and Rec(key).seen.kinds.trade == 1, "every encounter was recorded")
	-- a new session (the module starts again): the person can be recognised again
	R:OnInit()
	LeaveGroup(); JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	T.eq(Candidates("relation_player"), 2, "a new session, a new candidate")
	-- an unlisted player in the group: no candidate (a proposal at most)
	LeaveGroup(); offered = {}
	JoinGroup({ name = "Brenna", guid = "Player-1-0000BBBB" })
	T.eq(Candidates("relation_player"), 0, "someone who is not in the list is not recognised")
	T.eq(Count(NS.cdb.relationships.players), 1, "and nothing was added")
end)

T.run("recognition by an interaction aimed at us", function()
	Fresh()
	NS.db.chance.relation_player = 100
	local key = Person("Aldric-Stormrage", { trust = 60, affection = 50, familiarity = 50 })
	FIRE("DUEL_REQUESTED", "Aldric-Stormrage")
	ADVANCE(2)
	T.eq(Candidates("relation_player"), 1, "a duel request from a listed player")
	T.eq(Candidates("other_action"), 1, "next to the other_action candidate of the Interlocutor")
	local spoken = 0
	for _, e in ipairs(Director.log) do if e.result == "spoken" then spoken = spoken + 1 end end
	T.ok(spoken <= 1, "at most one of them speaks: " .. spoken)
	T.eq(Rec(key).seen.kinds.duel, 1, "and the duel is recorded")
	-- an invite from another listed player
	local k2 = Person("Brenna-Stormrage")
	ADVANCE(16); FIRE("PARTY_INVITE_REQUEST", "Brenna-Stormrage", false, false, true, true, false, "Player-1-0000B", false)
	ADVANCE(2)
	T.eq(Candidates("relation_player"), 2, "an invite from a listed player")
end)

T.run("the target recognises a known player only if the user turns it on", function()
	Fresh()
	NS.db.chance.relation_player = 100
	T.eq(NS.db.relations.recognizeTarget, false, "off by default")
	local key = Person("Aldric-Stormrage", { trust = 60, affection = 50, familiarity = 50 })
	P.target = ALDRIC; ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED"); ADVANCE(2)
	T.eq(Candidates("relation_player"), 0, "no candidate from the target by default")
	T.eq(Rec(key).seen.kinds.target, 1, "but the target is recorded")
	R:SetSetting("recognizeTarget", true)
	P.target = nil; ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED")
	P.target = ALDRIC; ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED"); ADVANCE(2)
	T.eq(Candidates("relation_player"), 1, "with the option on, one candidate")
	P.target = nil; ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED")
	P.target = ALDRIC; ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED"); ADVANCE(2)
	T.eq(Candidates("relation_player"), 1, "and still only one per session")
	-- an unlisted target never creates anything
	P.target = { name = "Zed", realm = "Stormrage", player = true, guid = "Player-1-0000ZZZZ" }
	ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED"); ADVANCE(2)
	T.eq(Count(NS.cdb.relationships.players), 1, "the target of a stranger adds nobody")
	-- a secret identity is never read (after the gap, so that only the secret stops it)
	SECRET_UNITS = { target = true }
	P.target = ALDRIC; ADVANCE(R.ENCOUNTER_GAP + 5); FIRE("PLAYER_TARGET_CHANGED")
	T.eq(Rec(key).seen.kinds.target, 1, "a secret target is not recorded")
	SECRET_UNITS = {}
	P.target = nil; ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED")
	P.target = ALDRIC; ADVANCE(16); FIRE("PLAYER_TARGET_CHANGED")
	T.eq(Rec(key).seen.kinds.target, 2, "and a readable one is, after the gap")
end)

T.run("silence is a valid outcome and the observations are recorded anyway", function()
	Fresh()
	NS.db.chance.relation_player = 100
	local key = Person("Aldric-Stormrage", { trust = 60, affection = 50, familiarity = 50 })
	-- paused
	NS.paused = true
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	T.eq(LogCount("relation_player", "spoken"), 0, "paused: silence")
	T.eq(Rec(key).seen.kinds.group, 1, "the encounter is recorded")
	NS.paused = false
	-- intensity 0: the narrator is mute for spontaneous events
	R:OnInit(); LeaveGroup(); NS.db.intensity = 0; Director.log = {}
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	T.eq(LogCount("relation_player", "spoken"), 0, "intensity 0: silence")
	T.ok(Rec(key).seen.kinds.group == 2 or Rec(key).seen.count >= 1, "recorded anyway")
	-- the module off for relations: no candidate
	NS.db.intensity = 100; R:OnInit(); LeaveGroup(); Director.log = {}; offered = {}
	NS.db.modules.relations = false
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	T.eq(Candidates("relation_player"), 0, "module off: nothing offered")
	NS.db.modules.relations = true
	-- chance 0: the Director rolls and the narrator stays quiet
	R:OnInit(); LeaveGroup(); NS.db.chance.relation_player = 0; Director.log = {}; offered = {}
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	T.eq(Candidates("relation_player"), 1, "offered")
	T.eq(LogCount("relation_player", "spoken"), 0, "but the dice said no")
end)

T.run("the recognition line stays in the private narrator", function()
	Fresh()
	NS.db.chance.relation_player = 100
	Person("Aldric-Stormrage", { trust = 60, affection = 50, familiarity = 50 })
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	T.eq(LogCount("relation_player", "spoken"), 1, "spoken")
	T.ok(#Narrator.history >= 1 and Narrator.history[#Narrator.history].text ~= "", "in the private narrator")
	for _, s in ipairs(SENT) do
		T.ok(type(s) ~= "string" or not (s:find("^SAY") or s:find("^EMOTE") or s:find("^PARTY") or s:find("^YELL") or s:find("^WHISPER")),
			"nothing went to a chat channel: " .. tostring(s))
	end
	-- every relation_player line is an inner voice: private by construction, like the narrator
	local n = 0
	for id, p in pairs(Engine.byId) do
		if p.events[1] == "relation_player" then
			n = n + 1
			T.eq(p.speaker, "inner", id .. " is an inner voice")
		end
	end
	T.ok(n >= 19, "the relation_player lines were checked: " .. n)
	local pending = NS.Gateway:GetPending()
	T.ok(pending == nil or pending.auto ~= false, "no automatic public send (ADR 0003, 0018 unchanged)")
	-- the sources the module listens to carry no text: only names
	for event, src in pairs(NS.EventBus.sources) do
		T.ok(event ~= "CHAT_MSG_SAY" and event ~= "CHAT_MSG_WHISPER" and event ~= "CHAT_MSG_PARTY", "no public or incoming chat source: " .. event)
	end
end)

---------------------------------------------------------------------------
-- #110: relationship context conditions
---------------------------------------------------------------------------
T.run("relDaysSince, relMetHere and relShared", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { trust = 60, affection = 50, familiarity = 50 })
	P.mapID, P.zone = 1411, "Durotar"
	R:Observe(key, "group")
	R:Observe(key, "group_combat")
	-- a new session, ten days later, in the same place
	LEAP(10 * DAY)
	R:OnInit()
	local sub = Subject(key)
	local ctx = NS:BuildContext(sub)
	T.eq(ctx.relDaysSince, 10, "ten days since the last meeting")
	T.ok(Engine.Match({ relDaysSince = 7 }, ctx), "at least 7")
	T.ok(not Engine.Match({ relDaysSince = 11 }, ctx), "not at least 11")
	T.ok(Engine.Match({ relDaysSince = { 7, 30 } }, ctx) and not Engine.Match({ relDaysSince = { 0, 7 } }, ctx), "a range, upper end excluded")
	T.eq(ctx.relMetHere, true, "the last meeting was here")
	T.ok(Engine.Match({ relMetHere = true }, ctx) and not Engine.Match({ relMetHere = false }, ctx), "relMetHere")
	P.mapID, P.zone = 1412, "Mulgore"
	ctx = NS:BuildContext(sub)
	T.eq(ctx.relMetHere, false, "somewhere else"); T.ok(not Engine.Match({ relMetHere = true }, ctx), "false elsewhere")
	T.ok(Engine.Match({ relShared = "group_combat" }, ctx) and Engine.Match({ relShared = { "duel", "group" } }, ctx), "relShared from what was recorded")
	T.ok(not Engine.Match({ relShared = "duel" }, ctx), "and not what never happened")
	-- the meeting of this session does not change "since the last meeting before it"
	R:Observe(key, "trade")
	ctx = NS:BuildContext(sub)
	T.eq(ctx.relDaysSince, 10, "the state before the session's first meeting is kept (the days do not drop to 0)")
	T.ok(Engine.Match({ relShared = "trade" }, ctx), "while the tally includes the new meeting")
	-- no earlier meeting, or no place: the conditions are false
	local k2 = Person("Brenna-Stormrage")
	local c2 = NS:BuildContext(Subject(k2))
	T.ok(c2.relDaysSince == nil and not Engine.Match({ relDaysSince = 0 }, c2) and not Engine.Match({ relShared = "group" }, c2), "never seen: nothing to say")
	T.eq(c2.relMetHere, nil, "no place known")
	-- zone-name fallback when there is no map id
	P.mapID = nil
	R:Observe(k2, "group"); LEAP(DAY); R:OnInit()
	P.zone = "Durotar"; local c3 = NS:BuildContext(Subject(k2))
	R:Observe(k2, "trade")
	T.ok(c3.relDaysSince == 1, "one day")
	P.mapID = 1411
	-- an NPC or nobody: the conditions are false
	P.target = nil
	local c4 = NS:BuildContext()
	T.ok(not Engine.Match({ relDaysSince = 0 }, c4) and not Engine.Match({ relShared = "group" }, c4) and not Engine.Match({ relMetHere = true }, c4), "nobody: false")
	-- the validator
	T.eq(#Engine.CheckConditions({ relDaysSince = 3, relMetHere = true, relShared = "group_combat" }), 0, "valid")
	T.eq(#Engine.CheckConditions({ relDaysSince = { 1, 9 } }), 0, "a range is valid")
	T.ok(#Engine.CheckConditions({ relShared = "nonsense" }) > 0, "an unknown kind of experience")
	T.ok(#Engine.CheckConditions({ relDaysSince = "x" }) > 0 and #Engine.CheckConditions({ relMetHere = "yes" }) > 0, "wrong types")
	T.ok(Engine.UsesRelation({ relDaysSince = 3 }) and Engine.UsesRelation({ relMetHere = true }) and Engine.UsesRelation({ relShared = "duel" }), "each names a relation")
	for kind in pairs(R.ENCOUNTERS) do T.ok(Engine.CONDITION_VALUES.relShared[kind], "relShared accepts " .. kind) end
	T.ok(Engine.CONDITION_VALUES.relShared.group_combat, "and group_combat")
end)

T.run("examples in the data use the new conditions, and frequency is unchanged", function()
	Fresh()
	math.randomseed(3)
	local uses = { relDaysSince = 0, relMetHere = 0, relShared = 0, feeling = 0 }
	for id, p in pairs(Engine.byId) do
		if p.pack == "base_relations" then
			for k in pairs(uses) do if p.when and p.when[k] ~= nil then uses[k] = uses[k] + 1 end end
		end
	end
	for k, n in pairs(uses) do T.ok(n >= 1, "the data has an example of " .. k .. ": " .. n) end
	local key = Person("Aldric-Stormrage", { trust = 60, affection = 50, familiarity = 50 })
	P.mapID = 1411
	R:Observe(key, "group"); R:Observe(key, "group_combat"); R:Observe(key, "duel")
	LEAP(45 * DAY); R:OnInit()
	local ids = Seen("relation_player", Subject(key), 200)
	T.ok(ids["rel.player.absent.long"], "a long absence is recalled")
	T.ok(ids["rel.player.met_here"], "meeting in the same place is recalled")
	T.ok(ids["rel.player.shared.combat"] and ids["rel.player.shared.duel"], "shared experiences are recalled")
	T.ok(not ids["rel.player.recent"] and not ids["rel.player.absent.weeks"], "and the other durations are not")
	P.mapID = 1412
	ids = Seen("relation_player", Subject(key), 200)
	T.ok(not ids["rel.player.met_here"], "somewhere else: not 'here'")
	-- still one candidate per person and session, however many conditions the lines have
	NS.db.chance.relation_player = 100
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	LeaveGroup(); JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	T.eq(Candidates("relation_player"), 1, "one candidate per person and session")
end)

---------------------------------------------------------------------------
-- The three second-encounter scenarios (trust, wariness, resentment)
---------------------------------------------------------------------------
-- A person the user marked with a feeling (and asked for the preset), met again after some days when they join the
-- group: the recognition line must fit the feeling, and no warm line goes to wariness or resentment.
local SCENARIOS = {
	trust = { ok = { ["rel.player.trust"] = true, ["rel.player.known"] = true, ["rel.player.absent.weeks"] = true,
			["rel.player.met_here"] = true, ["rel.player.shared.combat"] = true, ["rel.player.shared.duel"] = true, ["rel.player.recent"] = true,
			["rel.player.absent.long"] = true, ["rel.player.friend"] = true, ["rel.player.ally"] = true }, must = "rel.player.trust" },
	wariness = { ok = { ["rel.player.wariness"] = true, ["rel.player.wary"] = true, ["rel.player.known"] = true,
			["rel.player.absent.weeks"] = true, ["rel.player.absent.long"] = true, ["rel.player.met_here"] = true, ["rel.player.recent"] = true,
			["rel.player.shared.combat"] = true, ["rel.player.shared.duel"] = true }, must = "rel.player.wariness" },
	resentment = { ok = { ["rel.player.resentment"] = true, ["rel.player.enemy"] = true, ["rel.player.known"] = true,
			["rel.player.absent.weeks"] = true, ["rel.player.absent.long"] = true, ["rel.player.met_here"] = true, ["rel.player.recent"] = true,
			["rel.player.shared.combat"] = true, ["rel.player.shared.duel"] = true }, must = "rel.player.resentment" },
}

local function SecondEncounter(feeling, locale)
	Fresh()
	NS.db.locale = locale or "it"
	math.randomseed(17)
	local key = Person("Aldric-Stormrage", { familiarity = 20 })
	R:SetFeelings("player", key, { feeling })
	R:ApplyFeelingPreset("player", key)
	P.mapID, P.zone = 1411, "Durotar"
	R:Observe(key, "group")                      -- the first encounter
	LEAP(9 * DAY)
	R:OnInit()                                   -- the next session
	NS.db.chance.relation_player = 100
	JoinGroup({ name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" })
	return key
end

for _, feeling in ipairs({ "trust", "wariness", "resentment" }) do
	T.run("second encounter: " .. feeling, function()
		local key = SecondEncounter(feeling)
		local sc = SCENARIOS[feeling]
		T.eq(Candidates("relation_player"), 1, "the second encounter offers one candidate")
		T.eq(LogCount("relation_player", "spoken"), 1, "and the narrator speaks")
		local extra = offered[1].extra
		local seen, texts = {}, {}
		for _ = 1, 150 do
			NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
			local ctx = NS:BuildContext(extra)
			local rec = NS.Gateway:PickRecord("relation_player", ctx)
			if rec then
				seen[rec.id] = true
				texts[rec.id] = NS.Gateway:Display(rec, ctx)
			end
		end
		T.ok(seen[sc.must], "the line for the feeling can be chosen: " .. sc.must)
		for id in pairs(seen) do
			T.ok(sc.ok[id], feeling .. ": the line is coherent with it: " .. id)
			local p = Engine.byId[id]
			if feeling ~= "trust" then
				T.ok(not (p.tags and p.tags.warm and not p.tags.ironic), feeling .. ": not a warm line: " .. id)
			end
		end
		T.ok(NS:BuildContext(extra).relDaysSince == 9, "nine days since the first meeting")
		-- the narrated line itself
		local line = Narrator.history[#Narrator.history]
		T.ok(line ~= nil and line.text ~= "" and not line.text:find("[{}]"), "the narrated line is complete: " .. tostring(line and line.text))
		SCENARIO_LINES = SCENARIO_LINES or {}
		SCENARIO_LINES[feeling] = line and line.text
	end)
end

T.run("the scenarios read well in English too", function()
	for _, feeling in ipairs({ "trust", "wariness", "resentment" }) do
		SecondEncounter(feeling, "en")
		T.eq(LogCount("relation_player", "spoken"), 1, "spoken in English: " .. feeling)
		local line = Narrator.history[#Narrator.history]
		T.ok(line ~= nil and line.text ~= "" and not line.text:find("[{}]") and not line.text:find("Aldric%-"), "an English line: " .. tostring(line and line.text))
		SCENARIO_LINES_EN = SCENARIO_LINES_EN or {}
		SCENARIO_LINES_EN[feeling] = line and line.text
	end
	NS.db.locale = "it"
end)
