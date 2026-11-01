-- Tests of N3 (#215): romance with an NPC (Systems/Relationships.lua, Data/Relationships.lua `romance`,
-- Engine/RuleEngine.lua `relVowed`, Data/RegistryRelations.lua, UI/RelationsFrame.lua).
--   - who: a humanoid NPC of the opposite sex, both sexes known; a fixed rule (owner decision), no setting changes it;
--   - how: the optional attraction axis (off by default) grows slowly, only from positive non-merchant interactions with
--     an NPC already at Friend or above, with diminishing returns and a daily cap;
--   - the vow: at the top of the romance a private vow, once per NPC, in the journal (no name) and in the private
--     narrator; never in chat.
local NS = ...
local Engine, Config, R, LM = NS.Engine, NS.Config, NS.Relationships, NS.LivingMemory
local Director, Narrator, RelationsFrame = NS.Director, NS.Narrator, NS.RelationsFrame

local ROOT = "AzerothUnspokenRelations"
local MALE, FEMALE = 2, 3

local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end
local function Near(a, b, eps) return type(a) == "number" and math.abs(a - b) <= (eps or 0.01) end

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
	R.candidates, R.dismissed, R.session = {}, {}, { seen = {}, offered = {} }
	R.interaction, R.questGiver, R.questTaker, R.group, R.groupDirty = nil, nil, nil, nil, true
	NS.Interlocutor.roles = {}
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	NS.db.relations.attraction = true
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	P.target, P.npc, P.party, P.group, P.raid = nil, nil, nil, false, false
	P.zone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Durotar", false, false, 100, 100, nil
	P.level, P.hour, P.isDay, P.sex = 30, 14, nil, MALE
	P.weather = { type = 0, intensity = 0 }
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.output.privateNarrator = true
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	if RelationsFrame then RelationsFrame:Close() end
	SENT = {}
	ADVANCE(20)
end

-- an interaction with an NPC: a humanoid woman unless the test says otherwise
local function Talk(id, name, wowEvent, npc)
	npc = npc or {}
	P.npc = { name = name or "Lyra", guid = Guid(id), sex = npc.sex or FEMALE,
		ctype = npc.ctype == nil and "Humanoid" or (npc.ctype or nil), ctypeID = npc.ctypeID == nil and 7 or (npc.ctypeID or nil) }
	ADVANCE(16)   -- past the deduplication window of the event
	FIRE(wowEvent or "GOSSIP_SHOW")
end

local function Npc(id) return R:Get("npc", id) end

-- an NPC already a Friend (disposition 40), no attraction yet, no counters for today
local function Friend(id, name, npc)
	Talk(id, name, nil, npc)
	local rec = Npc(id)
	rec.affection, rec.trust, rec.familiarity, rec.attraction, rec.today = 60, 40, 50, nil, nil
	local _, band = R:Disposition(R:Axes(rec))
	T.eq(band, "friend", "set up as a Friend")
	return rec
end

local function Notices()
	local out = {}
	for _, h in ipairs(Narrator.history) do
		if h.notice then table.insert(out, h.text) end
	end
	return out
end

local function Entries(kind)
	local out = {}
	for _, e in ipairs(LM.session.entries) do if e.kind == kind then table.insert(out, e) end end
	return out
end

local function ChatSent()
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) ~= "PRINT:" then return s end
	end
	return nil
end

---------------------------------------------------------------------------
-- The data and the setting
---------------------------------------------------------------------------
T.run("romance: the data, and the attraction axis off by default", function()
	local rm = R.config.romance
	T.eq(rm.minLevel, "friend", "from Friend up")
	T.ok(rm.gain.gossip > 0 and rm.gain.quest_turnin > rm.gain.gossip, "a quest handed in weighs more than a chat")
	for _, src in ipairs({ "merchant", "merchant_buy", "merchant_sell", "merchant_repair", "taxi" }) do
		T.eq(rm.gain[src], nil, "no attraction from " .. src)
	end
	T.ok(rm.cap > 0 and rm.cap <= 3 and rm.decay < 1, "slow: a small daily cap and diminishing returns")
	T.ok(rm.humanoid.id == 7 and rm.humanoid.names.Humanoid, "humanoid by id or by name")
	T.ok(rm.vow.attraction > 50 and rm.vow.label == "lover", "the vow is above the lover threshold")
	T.eq(Config.defaults.relations.attraction, false, "the attraction axis is off by default")
	-- no setting about sex exists: the rule is fixed
	for k in pairs(Config.defaults.relations) do
		T.ok(not k:lower():find("sex", 1, true) and not k:lower():find("orient", 1, true) and not k:lower():find("gender", 1, true),
			"no preference setting: " .. k)
	end
end)

---------------------------------------------------------------------------
-- Who: opposite sex, humanoid
---------------------------------------------------------------------------
T.run("romance: opposite sex only, for both sexes of the character", function()
	for _, case in ipairs({
		{ me = MALE, npc = FEMALE, ok = true, what = "a man and a woman" },
		{ me = FEMALE, npc = MALE, ok = true, what = "a woman and a man" },
		{ me = MALE, npc = MALE, ok = false, why = "sex", what = "two men" },
		{ me = FEMALE, npc = FEMALE, ok = false, why = "sex", what = "two women" },
		{ me = 1, npc = FEMALE, ok = false, why = "unknown", what = "the character's sex unknown" },
		{ me = MALE, npc = 1, ok = false, why = "unknown", what = "the NPC's sex unknown" },
	}) do
		Fresh()
		P.sex = case.me
		local rec = Friend(5001, "Lyra", { sex = case.npc })
		local ok, why = R:RomanceEligible(5001)
		T.eq(ok, case.ok, case.what .. ": eligible?")
		T.eq(why, case.why, case.what .. ": why")
		Talk(5001, "Lyra", nil, { sex = case.npc })
		if case.ok then
			T.ok((rec.attraction or 0) > 0, case.what .. ": attraction grows (" .. tostring(rec.attraction) .. ")")
		else
			T.eq(rec.attraction, nil, case.what .. ": no attraction")
		end
	end
end)

T.run("romance: humanoid NPCs only", function()
	for _, case in ipairs({
		{ npc = { ctype = "Beast", ctypeID = 1 }, why = "creature", what = "a beast" },
		{ npc = { ctype = "Undead", ctypeID = 6 }, why = "creature", what = "an undead" },
		{ npc = { ctype = "Humanoid", ctypeID = false }, ok = true, what = "humanoid by name only" },
		{ npc = { ctype = false, ctypeID = 7 }, ok = true, what = "humanoid by id only" },
		{ npc = { ctype = false, ctypeID = false }, why = "unknown", what = "the client says nothing" },
	}) do
		Fresh()
		local rec = Friend(5002, "Mara", case.npc)
		local ok, why = R:RomanceEligible(5002)
		T.eq(ok, case.ok == true, case.what .. ": eligible?")
		T.eq(why, case.why, case.what .. ": why")
		Talk(5002, "Mara", nil, case.npc)
		T.eq((rec.attraction or 0) > 0, case.ok == true, case.what .. ": attraction")
	end
	-- an NPC never met this session: nothing known, nothing grows (the reading is not saved)
	Fresh()
	local rec = Friend(5003, "Ilsa")
	R.session.kin = nil
	T.ok(not R:RomanceEligible(5003), "nothing read this session: not eligible")
	R:RecordNPC(5003, "Ilsa", "quest_turnin")
	T.eq(rec.attraction, nil, "a quest handed in without a reading: nothing")
	T.eq(rec.sex, nil, "the sex is not saved with the record"); T.eq(rec.humanoid, nil, "nor the creature type")
	-- a secret identity: no record at all
	Fresh()
	SECRET_UNITS = { npc = true }
	Talk(5004, "Hidden")
	T.eq(Npc(5004), nil, "a secret identity: nothing recorded")
end)

---------------------------------------------------------------------------
-- How: slowly, from Friend up, never from a merchant
---------------------------------------------------------------------------
T.run("romance: attraction grows slowly, only from Friend up and never from a merchant", function()
	-- the axis off: nothing, even with a friend
	Fresh()
	NS.db.relations.attraction = false
	local rec = Friend(5010, "Lyra")
	Talk(5010, "Lyra")
	T.eq(rec.attraction, nil, "the axis off: no attraction")
	-- below Friend: nothing
	Fresh()
	Talk(5011, "Lyra")
	rec = Npc(5011)
	rec.affection, rec.trust, rec.familiarity, rec.today = 20, 20, 40, nil
	local _, band = R:Disposition(R:Axes(rec))
	T.eq(band, "acquaintance", "an acquaintance")
	Talk(5011, "Lyra")
	T.eq(rec.attraction, nil, "an acquaintance: no attraction")
	-- a friend: a little, less each time, up to the daily cap
	Fresh()
	rec = Friend(5012, "Lyra")
	Talk(5012, "Lyra")
	local first = rec.attraction
	T.ok(Near(first, R.config.romance.gain.gossip), "a chat with a friend: +" .. tostring(first))
	Talk(5012, "Lyra")
	T.ok(rec.attraction - first < first, "diminishing returns within the day")
	for _ = 1, 30 do Talk(5012, "Lyra") end
	T.ok(rec.attraction <= R.config.romance.cap + 0.001, "never over the daily cap (" .. rec.attraction .. ")")
	-- the merchant: nothing
	Fresh()
	rec = Friend(5013, "Lyra", nil)
	Talk(5013, "Lyra", "MERCHANT_SHOW")
	T.eq(rec.attraction, nil, "opening the merchant: no attraction")
	R:OnMerchantAction("merchant_buy")
	T.eq(rec.attraction, nil, "buying: no attraction")
	-- an interaction with a negative gain (N1 hostility): nothing
	T.eq(R:Romance(5013, rec, "gossip", time(), 1, "friend", { affection = -2 }), nil, "a negative interaction: nothing")
	-- the user's sliders are the user's: no growth, no vow
	Fresh()
	rec = Friend(5014, "Lyra")
	R:SetAxis("npc", 5014, "attraction", 95)
	T.eq(#Entries("relation_vow"), 0, "a slider never makes the vow")
end)

---------------------------------------------------------------------------
-- The vow
---------------------------------------------------------------------------
T.run("romance: the vow at the top, once per NPC, private, with no name in the journal", function()
	Fresh()
	local rec = Friend(5020, "Lyra")
	rec.attraction = R.config.romance.vow.attraction - 0.2
	T.eq(R:Resolve("npc", rec).derived, "lover", "beloved already")
	Narrator:ClearHistory()
	SENT = {}
	Talk(5020, "Lyra")
	T.ok(rec.attraction >= R.config.romance.vow.attraction, "over the top: " .. rec.attraction)
	T.ok(rec.noted and rec.noted.vow, "noted with the record")
	local vows = Entries("relation_vow")
	T.eq(#vows, 1, "one journal line")
	T.ok(vows[1].perm == true, "a permanent memory")
	T.eq(vows[1].zone, "Durotar", "where it happened")
	local said = LM:Describe(vows[1])
	T.ok(said:find(NS:L("rel_mem_vow"), 1, true) ~= nil, "the journal says it: " .. said)
	T.ok(not said:find("Lyra", 1, true), "no name in the journal")
	local list = Notices()
	T.eq(#list, 1, "one private narrator line")
	T.ok(list[1]:find("Lyra", 1, true) ~= nil, "the narrator names them, privately: " .. tostring(list[1]))
	T.eq(ChatSent(), nil, "never chat")
	-- once per NPC
	rec.today = nil
	Narrator:ClearHistory()
	for _ = 1, 3 do Talk(5020, "Lyra") end
	T.eq(#Entries("relation_vow"), 1, "never twice for the same NPC")
	T.eq(#Notices(), 0, "and no second line")
	-- saved: the mark survives a load
	R:Sanitize()
	T.ok(Npc(5020).noted.vow, "the vow is kept in the saved data")
	-- the context and the condition
	local ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 5020 } })
	T.eq(ctx.relVowed, true, "ctx.relVowed")
	T.ok(Engine.Match({ relVowed = true }, ctx) and not Engine.Match({ relVowed = false }, ctx), "relVowed")
	T.eq(#Engine.CheckConditions({ relVowed = true }), 0, "valid")
	T.ok(#Engine.CheckConditions({ relVowed = "yes" }) > 0, "a wrong type refused")
	T.ok(Engine.UsesRelation({ relVowed = true }), "it names a relation")
	R.interaction, P.npc = nil, nil
	T.ok(not Engine.Match({ relVowed = true }, NS:BuildContext()), "nobody: false")
end)

T.run("romance: the vow in combat or with a silent narrator: only the journal", function()
	for _, case in ipairs({
		{ what = "in combat", set = function() P.combat = true end },
		{ what = "paused", set = function() NS.paused = true end },
		{ what = "intensity 0", set = function() NS.db.intensity = 0 end },
		{ what = "no narrator box", set = function() NS.db.output.privateNarrator = false end },
	}) do
		Fresh()
		local rec = Friend(5030, "Lyra")
		rec.attraction = R.config.romance.vow.attraction - 0.2
		Narrator:ClearHistory()
		case.set()
		Talk(5030, "Lyra")
		T.eq(#Entries("relation_vow"), 1, case.what .. ": the journal line")
		T.eq(#Notices(), 0, case.what .. ": no narrator line")
		NS.paused, P.combat = false, false
	end
end)

T.run("romance: the vow needs the beloved label, not only attraction", function()
	Fresh()
	local rec = Friend(5040, "Lyra")
	rec.affection, rec.trust, rec.familiarity = 45, 60, 60   -- a friend, but affection under the beloved threshold
	rec.attraction = R.config.romance.vow.attraction + 5
	T.ok(R:Resolve("npc", rec).derived ~= "lover", "not beloved")
	Talk(5040, "Lyra")
	T.eq(#Entries("relation_vow"), 0, "no vow")
end)

---------------------------------------------------------------------------
-- The lines, the window, the command, the texts
---------------------------------------------------------------------------
T.run("romance: the recall lines exist and fit their moment", function()
	Fresh()
	local rec = Friend(5050, "Lyra")
	rec.attraction = 35
	local ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 5050 } })
	for _, id in ipairs({ "rel.npc.attraction", "rel.npc.vowed" }) do T.ok(Engine.byId[id] ~= nil, "rule " .. id) end
	local cond = function(id) return Engine.byId[id].when or Engine.byId[id].conditions end
	T.ok(Engine.Match(cond("rel.npc.attraction"), ctx), "the attraction line fits")
	T.ok(not Engine.Match(cond("rel.npc.vowed"), ctx), "the vow line does not, yet")
	rec.noted = { vow = true }
	ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 5050 } })
	T.ok(Engine.Match(cond("rel.npc.vowed"), ctx), "after the vow it does")
	-- with the axis off the attraction line never speaks
	NS.db.relations.attraction = false
	ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 5050 } })
	T.ok(not Engine.Match(cond("rel.npc.attraction"), ctx), "the axis off: silent")
end)

T.run("romance: the window and the command say the vow was made", function()
	for _, lang in ipairs({ "it", "en" }) do
		Fresh()
		NS.db.locale = lang
		local rec = Friend(5060, "Lyra")
		RelationsFrame:Open({ kind = "npc", key = 5060 })
		local frame = _G[ROOT]
		T.ok(not frame.dSeenFacts:GetText():find(NS:L("rel_vow_made"), 1, true), lang .. ": no vow yet")
		rec.noted = { vow = true }
		RelationsFrame:Open({ kind = "npc", key = 5060 })
		T.ok(frame.dSeenFacts:GetText():find(NS:L("rel_vow_made"), 1, true) ~= nil, lang .. ": the vow in the window")
		RelationsFrame:Close()
		SENT = {}
		SlashCmdList.AZEROTHUNSPOKEN("relationships detail npc:5060")
		T.ok(table.concat(SENT, "\n"):find(NS:L("rel_vow_made"), 1, true) ~= nil, lang .. ": the vow in the detail")
	end
	NS.db.locale = "it"
end)

T.run("N3: every new interface text in Italian and English", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local keys = { "mem_kind_relation_vow", "rel_mem_vow", "rel_vow_made" }
	for i = 1, R.config.romance.vow.variants do table.insert(keys, "rel_vow_" .. i) end
	for _, k in ipairs(keys) do
		T.ok(type(it[k]) == "string" and it[k] ~= "", "IT has " .. k)
		T.ok(type(en[k]) == "string" and en[k] ~= "", "EN has " .. k)
	end
	for i = 1, R.config.romance.vow.variants do
		local k = "rel_vow_" .. i
		local _, ni = it[k]:gsub("%%s", ""); local _, ne = en[k]:gsub("%%s", "")
		T.ok(ni == 1 and ne == 1, k .. ": one value, the name")
	end
end)

T.run("N3: no error intercepted", function()
	local list = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(list, e.module .. ": " .. tostring(e.message)) end
	T.eq(table.concat(list, "; "), "", "no errors")
end)
