-- Tests of N5 (#217): favours and nicknames (Systems/Relationships.lua, Data/Relationships.lua `favours` and
-- `nicknames`, Engine/RuleEngine.lua, Engine/TemplateRenderer.lua, UI/RelationsFrame.lua), with mocked client events.
--   - a named NPC at Friend or above may ask a small favour the game can check by itself; at most one per NPC, with an
--     expiry; it completes by itself (come back, buy, rest at the inn, visit a zone) with a reward and a journal line;
--   - a named NPC at Close friend or above gives a nickname from curated lists (deeds, class, race), kept per NPC and
--     used in their lines through {nickname};
--   - never in chat, never in combat, only when the private narrator can say it.
local NS = ...
local Engine, Config, R, LM = NS.Engine, NS.Config, NS.Relationships, NS.LivingMemory
local Director, Narrator, RelationsFrame = NS.Director, NS.Narrator, NS.RelationsFrame

local DAY, HOUR = 86400, 3600
local ROOT = "AzerothUnspokenRelations"
local ELWYNN = 1429

local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end

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
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	P.target, P.npc, P.party, P.group, P.raid = nil, nil, nil, false, false
	P.zone, P.combat, P.dead, P.hp, P.hpMax, P.mapID = "Elwynn Forest", false, false, 100, 100, ELWYNN
	P.level, P.hour, P.isDay, P.resting, P.sex = 30, 14, nil, false, 2
	P.class, P.race = "WARRIOR", "Orc"
	P.weather = { type = 0, intensity = 0 }
	SECRET_UNITS = {}
	QUEST_READY, QUEST_GONE, QUEST_DONE, ABANDON_QUEST = {}, {}, {}, nil
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "en", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.output.privateNarrator = true
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	if RelationsFrame then RelationsFrame:Close() end
	-- the chance of a favour is a roll: certain here, so the tests are not left to it (one test checks the roll)
	R.config.favours.chance = 1
	SENT = {}
	ADVANCE(20)
end

-- an interaction with an NPC: the client puts it in the "npc" unit and fires the event
local function Talk(id, name, wowEvent)
	P.npc = { name = name, guid = Guid(id) }
	ADVANCE(16)   -- past the deduplication window of the event
	FIRE(wowEvent or "GOSSIP_SHOW")
	FIRE(wowEvent == "MERCHANT_SHOW" and "MERCHANT_CLOSED" or "GOSSIP_CLOSED")
end

local function Npc(id) return R:Get("npc", id) end

local function Notices()
	local out = {}
	for _, h in ipairs(Narrator.history) do
		if h.notice then table.insert(out, h.text) end
	end
	return out
end

local function LastNotice()
	local n = Notices()
	return n[#n]
end

local function ChatSent()
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) ~= "PRINT:" then return s end
	end
	return nil
end

local function Memories(kind)
	local out = {}
	for _, e in ipairs(LM.session.entries) do if e.kind == kind then table.insert(out, e) end end
	return out
end

-- an NPC set up at a band of disposition, with a name (a first meeting, then the axes), without asking anything yet
local function Bond(id, name, band, role)
	local f, n = NS.db.relations.favours, NS.db.relations.nicknames
	NS.db.relations.favours, NS.db.relations.nicknames = false, false
	Talk(id, name)
	NS.db.relations.favours, NS.db.relations.nicknames = f, n
	local rec = Npc(id)
	local axes = band == "close" and { 70, 70, 50, 80 } or { 60, 50, 30, 60 }
	rec.trust, rec.affection, rec.loyalty, rec.familiarity, rec.today = axes[1], axes[2], axes[3], axes[4], nil
	if role then rec.role = role end
	local _, now = R:Disposition(R:Axes(rec))
	T.eq(now, band, "set up at " .. band)
	return rec
end

-- a favour of a given template, as if it had just been asked
local function Give(rec, id, extra)
	local tpl = R:FavourDef(id)
	rec.favour = { k = id, t = time(), e = time() + tpl.days * DAY }
	for k, v in pairs(extra or {}) do rec.favour[k] = v end
	return rec.favour
end

-- some hours pass (the epoch moves; no periodic timer runs hour by hour)
local function Hours(h)
	LEAP(h * HOUR)
	ADVANCE(1)
end

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------
T.run("favours and nicknames: the numbers and the lists are data", function()
	Fresh()
	local cf, cn = R.config.favours, R.config.nicknames
	T.eq(cf.band, "friend", "favours from Friend up")
	T.eq(cn.band, "close", "nicknames from Close friend up")
	T.ok(cf.max >= 1 and cf.perSession >= 1 and cf.restDays >= 1 and cf.variants >= 2, "limits, rest, variants")
	local kinds = {}
	for _, t in ipairs(cf.templates) do
		kinds[t.kind] = true
		T.ok(t.days > 0 and t.wait >= 0, t.id .. ": a time to do it")
	end
	for _, k in ipairs({ "return", "buy", "rest", "visit" }) do T.ok(kinds[k], "a template of kind " .. k) end
	T.ok(R:FavourDef("buy").roles.merchant and R:FavourDef("rest").roles.innkeeper, "buy and rest by role")
	T.ok(R.config.increments.favour_done.gain.trust > 0, "the reward is a row of increments")
	-- every destination is a zone of Data/Places.lua (which gives its continent)
	for _, p in ipairs(cf.places) do
		T.ok(NS.Place.zones[p.zone] ~= nil and NS.Place.zones[p.zone].continent ~= nil, p.zone .. ": a known zone")
		T.ok(p.min <= p.max, p.zone .. ": a level range")
	end
	-- nicknames: every class and race of the era, lists for deeds and for anyone
	for _, c in ipairs({ "WARRIOR", "PALADIN", "HUNTER", "ROGUE", "PRIEST", "SHAMAN", "MAGE", "WARLOCK", "DRUID" }) do
		T.ok(#(cn.classes[c] or {}) >= 1, "nicknames for " .. c)
	end
	for _, r in ipairs({ "Human", "Dwarf", "NightElf", "Gnome", "Orc", "Scourge", "Tauren", "Troll" }) do
		T.ok(#(cn.races[r] or {}) >= 1, "nicknames for " .. r)
	end
	T.ok(#cn.deeds >= 2 and #cn.any >= 1, "nicknames for deeds and for anyone")
	for id, e in pairs(R.nickById) do
		T.ok(type(e.en) == "string" and e.en ~= "", id .. ": English")
		T.ok(type(e.it) == "string" or (type(e.it) == "table" and #e.it == 2), id .. ": Italian, one form or two")
	end
	-- a pack may add a template; an unknown kind or a bad band is refused
	R:RegisterData({ favours = { band = "nonsense", templates = { { id = "dance", kind = "dance", days = 2 },
		{ id = "come_again", kind = "return", days = 2, wait = 2 } } } })
	T.eq(cf.band, "friend", "an unknown band refused")
	T.eq(R:FavourDef("dance"), nil, "an unknown kind refused")
	T.ok(R:FavourDef("come_again") ~= nil, "a template added")
	for i = #cf.templates, 1, -1 do if cf.templates[i].id == "come_again" then table.remove(cf.templates, i) end end
end)

T.run("favours and nicknames: every interface text in Italian and English", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local keys = { "mem_kind_relation_favour", "rel_mem_favour", "mem_kind_relation_nick", "rel_mem_nick",
		"rel_favour_line", "rel_favours_done", "rel_nick_line", "rel_opt_favours", "rel_opt_favours_tip",
		"rel_opt_nicknames", "rel_opt_nicknames_tip" }
	local prefixes = { "rel_favour_there_", "rel_nick_given_" }
	for _, t in ipairs(R.config.favours.templates) do
		table.insert(keys, "rel_favour_what_" .. t.id)
		table.insert(prefixes, "rel_favour_ask_" .. t.id .. "_")
		table.insert(prefixes, "rel_favour_done_" .. t.id .. "_")
	end
	for _, prefix in ipairs(prefixes) do
		for i = 1, R.config.favours.variants do table.insert(keys, prefix .. i) end
	end
	for _, k in ipairs(keys) do
		T.ok(type(it[k]) == "string" and it[k] ~= "", "IT has " .. k)
		T.ok(type(en[k]) == "string" and en[k] ~= "", "EN has " .. k)
		if type(it[k]) == "string" and type(en[k]) == "string" then
			local _, si = it[k]:gsub("%%[sd]", ""); local _, se = en[k]:gsub("%%[sd]", "")
			T.eq(si, se, k .. ": the same values in both languages")
		end
	end
end)

---------------------------------------------------------------------------
-- Asking a favour
---------------------------------------------------------------------------
T.run("a named Friend asks a favour at a meeting; a stranger does not", function()
	Fresh()
	Talk(8001, "Tomas")
	T.eq(Npc(8001).favour, nil, "a stranger asks nothing")
	local rec = Bond(8002, "Elsa", "friend")
	Talk(8002, "Elsa")
	local f = rec.favour
	T.ok(f ~= nil, "a Friend asks a favour")
	T.ok(R:FavourDef(f.k) ~= nil and f.e > f.t, "a template, and an expiry")
	T.ok(f.e - f.t == R:FavourDef(f.k).days * DAY, "the expiry is the template's days")
	local text = LastNotice()
	T.ok(text ~= nil and text:find("Elsa", 1, true) ~= nil, "the private narrator says it, naming the NPC: " .. tostring(text))
	T.eq(ChatSent(), nil, "nothing in chat")
	-- at most one open favour with this NPC
	local before = #Notices()
	Talk(8002, "Elsa")
	T.ok(rec.favour.t == f.t, "the same favour")
	T.eq(#Notices(), before, "nothing new asked")
	-- without a name (an NPC whose name the client did not give), nothing
	local anon = Bond(8003, nil, "friend")
	anon.name = nil
	Talk(8003, nil)
	T.eq(anon.favour, nil, "an NPC without a name asks nothing")
end)

T.run("favours: the role picks the templates, a visit needs somewhere to go", function()
	Fresh()
	local merchant = Bond(8010, "Mara", "friend", "merchant")
	local inn = Bond(8011, "Renn", "friend", "innkeeper")
	local guard = Bond(8012, "Brom", "friend", "guard")
	-- the merchant's turns include "buy", the innkeeper's "rest"; the guard asks neither
	local seen = {}
	for rot = 0, 5 do
		for _, e in ipairs({ { 8010, merchant }, { 8011, inn }, { 8012, guard } }) do
			e[2].favour, e[2].favourT, e[2].favourN = nil, nil, rot
			R.session.favours = nil
			local f = R:AskFavour(e[1], e[2])
			if f then seen[e[2].role .. ":" .. f.k] = true end
		end
	end
	T.ok(seen["merchant:buy"] and seen["innkeeper:rest"], "buy from a merchant, rest at an inn")
	T.ok(not seen["guard:buy"] and not seen["guard:rest"], "a guard asks neither")
	-- the zones of a visit: on this continent, for the level, not here
	local places = R:FavourPlaces()
	T.ok(#places > 0, "somewhere to go")
	for _, z in ipairs(places) do
		T.eq(NS.Place.zones[z].continent, "eastern", z .. ": on the continent where you stand")
		T.ok(z ~= "Elwynn Forest", "not the zone you are in")
	end
	local found = {}
	for _, z in ipairs(places) do found[z] = true end
	T.ok(found["Duskwood"] and not found["Westfall"] and not found["Durotar"], "for level 30: Duskwood, not Westfall or Durotar")
end)

T.run("favours: limits by session, in all, the rest after a favour, the option, the narrator, combat", function()
	Fresh()
	local cf = R.config.favours
	local recs = {}
	for i = 1, 4 do recs[i] = Bond(8020 + i, "Friend" .. i, "friend") end
	for i = 1, 4 do Talk(8020 + i, "Friend" .. i) end
	local open = 0
	for i = 1, 4 do if recs[i].favour then open = open + 1 end end
	T.eq(open, math.min(cf.perSession, cf.max), "no more than the session allows")
	-- a new session: up to `max` open in all
	R.session.favours = nil
	for i = 1, 4 do Talk(8020 + i, "Friend" .. i) end
	open = 0
	for i = 1, 4 do if recs[i].favour then open = open + 1 end end
	T.eq(open, cf.max, "no more than `max` open in all")
	-- after a favour the NPC rests `restDays`
	local rec = Bond(8030, "Ilse", "friend")
	for i = 1, 4 do recs[i].favour = nil end
	rec.favourT = time() - (cf.restDays - 1) * DAY
	R.session.favours = nil
	Talk(8030, "Ilse")
	T.eq(rec.favour, nil, "resting: nothing asked")
	rec.favourT = time() - (cf.restDays + 1) * DAY
	Talk(8030, "Ilse")
	T.ok(rec.favour ~= nil, "rested: a favour asked")
	-- the option off, the narrator silent, combat: nothing is asked (a favour nobody heard is not asked)
	local function NoAsk(why)
		rec.favour, rec.favourT = nil, nil
		R.session.favours = nil
		Talk(8030, "Ilse")
		T.eq(rec.favour, nil, why)
	end
	NS.db.relations.favours = false; NoAsk("the option off"); NS.db.relations.favours = true
	NS.db.intensity = 0; NoAsk("the narrator silent"); NS.db.intensity = 50
	NS.paused = true; NoAsk("paused"); NS.paused = false
	P.combat = true; NoAsk("in combat"); P.combat = false
	-- the roll: with chance 0, never
	cf.chance = 0
	NoAsk("chance 0")
	cf.chance = 1
end)

---------------------------------------------------------------------------
-- Completing a favour
---------------------------------------------------------------------------
T.run("come back: done at a meeting from its wait on, with a reward and a journal line", function()
	Fresh()
	local rec = Bond(8040, "Elsa", "friend")
	local f = Give(rec, "return")
	local wait = R:FavourDef("return").wait
	local ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 8040 } })
	T.eq(ctx.relFavour, true, "ctx.relFavour while it is open")
	Hours(wait - 2)
	Talk(8040, "Elsa")
	T.ok(rec.favour ~= nil, "too soon: still open")
	Hours(3)
	local trust, affection = rec.trust, rec.affection
	SENT = {}
	Talk(8040, "Elsa")
	T.eq(rec.favour, nil, "done")
	T.eq(rec.favourN, 1, "one favour done"); T.eq(rec.favourT, time(), "and when")
	T.ok(rec.trust > trust and rec.affection > affection, "the reward raised trust and affection")
	local mem = Memories("relation_favour")
	T.eq(#mem, 1, "a journal line")
	T.eq(mem[1].tags[1], "npc", "a relationship memory"); T.eq(mem[1].tags[2], "return", "with the template, no name")
	T.eq(LM:Describe(mem[1]):find("Elsa", 1, true), nil, "no name in the journal")
	T.ok(LastNotice():find("Elsa", 1, true) ~= nil, "the private narrator says it: " .. LastNotice())
	T.eq(ChatSent(), nil, "nothing in chat")
	ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 8040 } })
	T.eq(ctx.relFavour, nil, "no ctx.relFavour after it")
	-- done in combat or with the narrator silent: the journal and the reward, no notice
	rec.favourT = nil
	Give(rec, "return")
	Hours(wait + 1)
	NS.db.intensity = 0
	local n = #Notices()
	Talk(8040, "Elsa")
	NS.db.intensity = 50
	T.eq(rec.favour, nil, "done all the same")
	T.eq(#Notices(), n, "no notice with the narrator silent")
	T.eq(#Memories("relation_favour"), 2, "the journal line all the same")
end)

T.run("buy from me: a purchase from that merchant, from its wait on", function()
	Fresh()
	local rec = Bond(8050, "Mara", "friend", "merchant")
	Give(rec, "buy")
	local function Buy(id, name)
		P.npc = { name = name, guid = Guid(id) }
		ADVANCE(16)
		FIRE("MERCHANT_SHOW")
		BuyMerchantItem(1, 1)
		FIRE("MERCHANT_CLOSED")
	end
	Buy(8050, "Mara")
	T.ok(rec.favour ~= nil, "a purchase in the same visit is too soon")
	Hours(R:FavourDef("buy").wait + 1)
	Bond(8051, "Other", "friend", "merchant")
	Buy(8051, "Other")
	T.ok(rec.favour ~= nil, "a purchase from someone else does not count")
	Buy(8050, "Mara")
	T.eq(rec.favour, nil, "a purchase from that merchant: done")
	T.eq(#Memories("relation_favour"), 1, "a journal line")
end)

T.run("rest at my inn: resting where it was asked, from its wait on", function()
	Fresh()
	local rec = Bond(8060, "Renn", "friend", "innkeeper")
	P.zone, P.mapID = "Elwynn Forest", ELWYNN
	Give(rec, "rest", { map = ELWYNN, zone = "Elwynn Forest" })
	P.resting = true
	FIRE("PLAYER_UPDATE_RESTING")
	T.ok(rec.favour ~= nil, "at once: too soon")
	Hours(R:FavourDef("rest").wait + 1)
	-- resting somewhere else does not count
	P.zone, P.mapID = "Westfall", 1436
	ADVANCE(2); FIRE("PLAYER_UPDATE_RESTING")
	FIRE("PLAYER_ENTERING_WORLD", true, false)
	T.ok(rec.favour ~= nil, "resting in another zone: still open")
	-- a login in the inn's town, resting: the night was spent there
	P.zone, P.mapID = "Elwynn Forest", ELWYNN
	ADVANCE(2)
	FIRE("PLAYER_ENTERING_WORLD", true, false)
	T.eq(rec.favour, nil, "a login resting where it was asked: done")
	T.eq(rec.favourN, 1, "counted")
	-- not resting: nothing
	rec.favourT = nil
	Give(rec, "rest", { map = ELWYNN, zone = "Elwynn Forest" })
	Hours(R:FavourDef("rest").wait + 1)
	P.resting = false
	ADVANCE(2); FIRE("PLAYER_ENTERING_WORLD", false, true)
	T.ok(rec.favour ~= nil, "not resting: still open")
	P.resting = true
	ADVANCE(2); FIRE("PLAYER_UPDATE_RESTING")
	T.eq(rec.favour, nil, "the rested state begins there: done")
end)

T.run("visit a zone: entering it is noted, the next meeting completes it", function()
	Fresh()
	local rec = Bond(8070, "Elsa", "friend")
	Give(rec, "visit", { zone = "Duskwood" })
	T.ok(NS.languages.en.ui.rel_favour_what_visit:find("%s", 1, true) ~= nil, "the zone in the description")
	Talk(8070, "Elsa")
	T.ok(rec.favour ~= nil and not rec.favour.s, "not there yet: still open")
	P.zone, P.mapID = "Westfall", 1436
	ADVANCE(2); FIRE("ZONE_CHANGED_NEW_AREA")
	T.ok(not rec.favour.s, "another zone does not count")
	P.zone, P.mapID = "Duskwood", 1431
	ADVANCE(2); FIRE("ZONE_CHANGED_NEW_AREA")
	T.eq(rec.favour.s, true, "there: noted")
	T.ok(LastNotice():find("Duskwood", 1, true) ~= nil and LastNotice():find("Elsa", 1, true) ~= nil,
		"a notice names the NPC and the zone: " .. LastNotice())
	P.zone, P.mapID = "Elwynn Forest", ELWYNN
	ADVANCE(2); FIRE("ZONE_CHANGED_NEW_AREA")
	Talk(8070, "Elsa")
	T.eq(rec.favour, nil, "back to the NPC: done")
	T.ok(LastNotice():find("Duskwood", 1, true) ~= nil, "the tale of the zone: " .. LastNotice())
end)

T.run("a favour not done in time lapses without a word and without a cost", function()
	Fresh()
	local rec = Bond(8080, "Elsa", "friend")
	local f = Give(rec, "return")
	local trust, n = rec.trust, #Notices()
	LEAP((R:FavourDef("return").days + 1) * DAY)
	ADVANCE(1)
	R.config.favours.chance = 0      -- nothing new asked at the meeting below
	Talk(8080, "Elsa")
	T.eq(rec.favour, nil, "lapsed")
	T.eq(rec.favourT, f.e, "it ended at its expiry")
	T.eq(rec.favourN, nil, "not counted as done")
	T.ok(rec.trust >= trust, "no cost")
	T.eq(#Notices(), n, "no word")
	T.eq(#Memories("relation_favour"), 0, "no journal line")
	-- on load too (MaintainAll)
	Give(rec, "return")
	LEAP((R:FavourDef("return").days + 1) * DAY)
	R:MaintainAll()
	T.eq(rec.favour, nil, "lapsed while away")
	R.config.favours.chance = 1
end)

---------------------------------------------------------------------------
-- Nicknames
---------------------------------------------------------------------------
T.run("a named Close friend gives a nickname once: the narrator says it, the journal keeps it", function()
	Fresh()
	local friend = Bond(8100, "Elsa", "friend")
	friend.favourT = time()     -- resting from favours: the meeting below can only bring a nickname
	Talk(8100, "Elsa")
	T.eq(friend.nick, nil, "a Friend gives no nickname")
	local rec = Bond(8101, "Hilda", "close")
	rec.favourT = time()
	SENT = {}
	Talk(8101, "Hilda")
	T.ok(rec.nick ~= nil, "a Close friend gives one")
	local name = R:NickName(rec.nick)
	T.ok(name ~= nil and LastNotice():find(name, 1, true) ~= nil and LastNotice():find("Hilda", 1, true) ~= nil,
		"the notice names the NPC and the nickname: " .. tostring(LastNotice()))
	T.eq(ChatSent(), nil, "nothing in chat")
	local mem = Memories("relation_nick")
	T.eq(#mem, 1, "a journal line")
	T.ok(LM:Describe(mem[1]):find(name, 1, true) ~= nil and LM:Describe(mem[1]):find("Hilda", 1, true) == nil,
		"the nickname, no name: " .. LM:Describe(mem[1]))
	-- once
	local nick, n = rec.nick, #Notices()
	Talk(8101, "Hilda")
	T.eq(rec.nick, nick, "kept"); T.eq(#Notices(), n, "not given again")
	-- from the class and race lists (a warrior orc) or anyone's, the same each time for the same NPC
	local pool = {}
	for _, list in ipairs({ R.config.nicknames.classes.WARRIOR, R.config.nicknames.races.Orc, R.config.nicknames.any }) do
		for _, e in ipairs(list) do pool[e.id] = true end
	end
	T.ok(pool[nick], "from the warrior, orc or anyone's lists: " .. nick)
	T.eq(R:PickNickname(8101, rec).id, nick, "the same NPC, the same pick")
	-- the option off, the narrator silent: not given
	local other = Bond(8102, "Gunn", "close")
	other.favourT = time()
	NS.db.relations.nicknames = false; Talk(8102, "Gunn"); NS.db.relations.nicknames = true
	T.eq(other.nick, nil, "the option off")
	NS.db.intensity = 0; Talk(8102, "Gunn"); NS.db.intensity = 50
	T.eq(other.nick, nil, "a nickname nobody heard is not given")
end)

T.run("nicknames: deeds first, then class and race; the Italian form follows the character's sex", function()
	Fresh()
	local rec = Bond(8110, "Hilda", "close")
	rec.quests = 8
	local e = R:PickNickname(8110, rec)
	local deed = {}
	for _, g in ipairs(R.config.nicknames.deeds) do
		if g.when.quests then for _, x in ipairs(g.names) do deed[x.id] = true end end
	end
	T.ok(deed[e.id], "quests handed in: a nickname for the deed (" .. e.id .. ")")
	rec.quests = nil
	P.class, P.race = "MAGE", "Gnome"
	local pool = {}
	for _, list in ipairs({ R.config.nicknames.classes.MAGE, R.config.nicknames.races.Gnome, R.config.nicknames.any }) do
		for _, x in ipairs(list) do pool[x.id] = true end
	end
	for id = 8110, 8120 do T.ok(pool[R:PickNickname(id, rec).id], "a gnome mage's lists") end
	-- quests are counted by turning in to the NPC
	Talk(8110, "Hilda", "QUEST_COMPLETE")
	FIRE("QUEST_TURNED_IN", 77, 100, 0)
	T.eq(rec.quests, 1, "a quest handed to the NPC is counted")
	-- gendered Italian
	NS.db.locale = "it"
	rec.nick = "errand_runner"
	P.sex = 2
	T.eq(R:NickName("errand_runner"), "Galoppino", "masculine")
	P.sex = 3
	T.eq(R:NickName("errand_runner"), "Galoppina", "feminine")
	NS.db.locale = "en"
	T.eq(R:NickName("errand_runner"), "Errand-Runner", "English")
	T.eq(R:NickName("no_such_nickname"), nil, "an id the data does not have")
end)

T.run("the nickname in the NPC's lines: {nickname}, the condition relNick, the dialogue window", function()
	Fresh()
	local rec = Bond(5688, "Innkeeper Renee", "close", "innkeeper")
	local function Ctx()
		return NS:BuildContext({ npcDialogue = true, otherSubject = { kind = "npc", key = "npc:5688", npcID = 5688 },
			relationSubject = { kind = "npc", id = 5688 } })
	end
	local function Ids(ctx)
		local ids = {}
		for _, p in ipairs(Engine:Eligible(Engine.byEvent.npcd_innkeeper_open, "en", ctx, "say", time())) do ids[p.id] = true end
		return ids
	end
	T.eq(Ctx().relNick, nil, "no nickname yet")
	T.ok(not Ids(Ctx())["npcd.innkeeper.open.nick1"], "the nickname opener waits for a nickname")
	rec.nick = "anvil"
	local ctx = Ctx()
	T.eq(ctx.relNick, "Anvil", "ctx.relNick")
	T.ok(Ids(ctx)["npcd.innkeeper.open.nick1"], "the nickname opener now")
	local entry = Engine.byId["npcd.innkeeper.open.nick1"]
	for _, lang in ipairs({ "en", "it" }) do
		for _, v in ipairs(entry.text[lang]) do
			local text = Engine:Render(Engine.VariantView(v).t, lang, ctx)
			T.ok(text ~= nil and text:find("Anvil", 1, true) ~= nil and not text:find("[{}]"), lang .. ": " .. tostring(text))
		end
	end
	T.ok(Engine.SafeMatch(Engine.byId["rel.npc.nickname"].when, ctx), "the recall line of the inner voice")
	for _, role in ipairs({ "flightmaster", "guard", "innkeeper", "merchant", "trainer" }) do
		T.ok(Engine.byId["npcd." .. role .. ".open.nick1"] ~= nil, role .. ": a nickname opener")
	end
	-- the option off: the lines do not use it
	NS.db.relations.nicknames = false
	T.eq(Ctx().relNick, nil, "the option off: no nickname in the lines")
end)

---------------------------------------------------------------------------
-- Saved data, the window, the command
---------------------------------------------------------------------------
T.run("favours and nicknames are saved with the NPC, cleaned, and keep the NPC in the list", function()
	Fresh()
	local rec = Bond(8200, "Elsa", "friend")
	Give(rec, "visit", { zone = "Duskwood", s = true })
	rec.favourN, rec.quests, rec.nick, rec.favourT = 2, 9, "anvil", time() - DAY
	R:Sanitize()
	rec = Npc(8200)
	T.eq(NS.cdb.relationships.version, 5, "relationships.version 5")
	T.ok(rec.favour and rec.favour.k == "visit" and rec.favour.zone == "Duskwood" and rec.favour.s == true, "the favour kept")
	T.ok(rec.favourN == 2 and rec.quests == 9 and rec.nick == "anvil" and rec.favourT == time() - DAY, "the counters and the nickname")
	-- malformed fields are dropped
	rec.favour = { k = "Bad Id!", t = 1, e = 2 }
	rec.nick, rec.favourN, rec.quests = "Not An Id", -3, "x"
	R:Sanitize()
	rec = Npc(8200)
	T.ok(rec.favour == nil and rec.nick == nil and rec.favourN == nil and rec.quests == nil, "malformed fields dropped")
	-- a favour from the future is brought back
	rec.favour = { k = "return", t = time() + 99 * DAY, e = time() + 100 * DAY }
	R:Sanitize()
	T.ok(Npc(8200).favour.t <= time(), "times in the past")
	-- the compaction keeps an NPC with a favour or a nickname
	local d = NS.cdb.relationships
	for i = 1, R.MAX_NPCS + 5 do d.npcs[100000 + i] = { first = 1, last = 1, count = 1, familiarity = 90 } end
	d.npcs[200001] = { first = 1, last = 1, count = 1, nick = "anvil" }
	d.npcs[200002] = { first = 1, last = 1, count = 1, favour = { k = "return", t = time(), e = time() + DAY } }
	R:CompactNPCs()
	T.ok(d.npcs[200001] ~= nil and d.npcs[200002] ~= nil, "kept through the compaction")
end)

T.run("the Relationships window and the detail command show the nickname and the favour", function()
	for _, lang in ipairs({ "it", "en" }) do
		Fresh()
		NS.db.locale = lang
		local rec = Bond(8300, "Hilda", "close")
		rec.nick, rec.favourN = "anvil", 2
		Give(rec, "visit", { zone = "Duskwood" })
		RelationsFrame:Open({ kind = "npc", key = 8300 })
		local facts = _G[ROOT].dSeenFacts:GetText()
		T.ok(facts:find(NS:L("rel_nick_line", R:NickName("anvil")), 1, true) ~= nil, lang .. ": the nickname: " .. facts)
		T.ok(facts:find("Duskwood", 1, true) ~= nil, lang .. ": the open favour")
		T.ok(facts:find(NS:L("rel_favours_done", 2), 1, true) ~= nil, lang .. ": the favours done")
		RelationsFrame:Open("options")
		for _, key in ipairs({ "favours", "nicknames" }) do
			local opt
			for _, o in ipairs(_G[ROOT].options) do if o.key == key then opt = o end end
			T.ok(opt ~= nil, lang .. ": an option for " .. key)
			opt.button:Click()
			T.eq(NS.db.relations[key], false, lang .. ": " .. key .. " off with a click")
			opt.button:Click()
			T.eq(NS.db.relations[key], true, lang .. ": on again")
		end
		RelationsFrame:Close()
	end
	Fresh()
	local rec = Bond(8301, "Hilda", "close")
	rec.nick = "anvil"
	Give(rec, "return")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("relationships detail npc:8301")
	local out = table.concat(SENT, "\n")
	T.ok(out:find('Calls you "Anvil"', 1, true) ~= nil, "the nickname in the detail: " .. out)
	T.ok(out:find("A favor asked: come back to see them", 1, true) ~= nil, "the favour in the detail: " .. out)
end)

T.run("N5: no error intercepted", function()
	local list = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(list, e.module .. ": " .. tostring(e.message)) end
	T.eq(table.concat(list, "; "), "", "no errors")
	NS.db.locale = "it"
end)
