-- Tests of the songbook (#122), the recall and reading frames (#123) and the culture of origin (#124), ADR 0044. Owner
-- decisions in #130: D16 (never in public chat), D17 (culture chosen by hand, never deduced), D19 (the songbook keeps
-- ids and times only, never a text).
local NS = ...
local Engine, Validator, Gateway, Songbook, Personality = NS.Engine, NS.Validator, NS.Gateway, NS.Songbook, NS.Personality
local JournalFrame, ProfileFrame, Director = NS.JournalFrame, NS.ProfileFrame, NS.Director
NS.db.locale = "en"

local function Lines(...) return table.concat({ ... }, "\n") end
local TEXTS = {
	["sb.verse"] = { Lines("A verse heard once on the road:", "the road is long and so am I,", "the day is short and so is pay."),
		Lines("Un verso sentito per strada:", "la strada è lunga, e così io,", "il giorno è corto, e la paga.") },
	["sb.song"] = { Lines("We sing this one when the night runs late:", "one for the road and one for the rain,",
		"one for the friend who won't come again."), Lines("Questa la cantiamo a notte fonda:", "una per la strada e una per la pioggia,",
		"una per l'amico che non torna.") },
	["sb.stone"] = { Lines("Worn letters on a fallen lintel:", "we set this stone where none had stood,", "and asked the hill to keep it true."),
		Lines("Lettere consunte su un architrave:", "questa pietra noi posammo,", "e la demmo in pegno al monte.") },
	["sb.dwarf"] = { Lines("A hold song, sung low over the anvil:", "hammer down and hammer true,", "the stone remembers what we do."),
		Lines("Un canto delle rocche, basso sull'incudine:", "batti il maglio, batti giusto,", "la pietra ricorda il nostro gusto.") },
	["sb.dwarf.inner"] = { Lines("A hold song comes to my lips:", "hammer down and hammer true,", "the stone remembers what we do."),
		Lines("Mi sale alle labbra un canto delle rocche:", "batti il maglio, batti giusto,", "la pietra ricorda il nostro gusto.") },
	["sb.only"] = { Lines("A saying, the kind told at a well:", "draw the water, mind the rope,", "a bucket holds more than hope."),
		Lines("Un detto, di quelli da pozzo:", "tira l'acqua, bada alla corda,", "il secchio tiene più della speranza.") },
	["sb.plain"] = { "An ordinary thought.", "Un pensiero qualunque." },
}
local function Lit(extra)
	local r = { event = "sb_muse", speaker = "inner", styles = { "intimate" }, tags = { "lore" }, genre = "verse",
		purpose = "remember", origin = "common", conditions = { combat = false } }
	for k, v in pairs(extra or {}) do r[k] = v end
	return r
end

NS:RegisterEvent("sb_muse", { category = "reflection", chance = 0, cooldown = 0 })
NS:RegisterEvent("sb_only", { category = "reflection", chance = 0, cooldown = 0 })
local registry = {
	["sb.verse"] = Lit(),
	["sb.song"] = Lit({ speaker = "npc", styles = { "everyday" }, genre = "song", purpose = "amuse" }),
	["sb.stone"] = Lit({ styles = { "ancient" }, genre = "epigraph" }),
	["sb.dwarf"] = Lit({ speaker = "npc", styles = { "everyday" }, genre = "song", purpose = "amuse", origin = "culture:dwarf" }),
	["sb.dwarf.inner"] = Lit({ genre = "song", purpose = "amuse", origin = "culture:dwarf" }),
	["sb.only"] = Lit({ event = "sb_only", genre = "formula", purpose = "advise" }),
	["sb.plain"] = { event = "sb_muse", speaker = "inner" },
}
local en, it = {}, {}
for id, t in pairs(TEXTS) do en[id], it[id] = t[1], t[2] end
NS:RegisterPack({ id = "sbtest", languages = { "enUS", "itIT" }, registry = registry, texts = { enUS = en, itIT = it } })

local function Fresh()
	NS.cdb.songbook = nil
	Songbook:Data()
	Songbook:Sync()
	NS.db.modules.memory = true
	NS.db.literary.frequency = "rare"
	P.combat = false
	Personality:Reset()
	Personality:Profile().culture = nil
	Personality:Refresh()
end

local function Ctx() return NS:BuildContext() end

-- every literary piece of a pick of `event`, n times: [id] = count
local function Picks(event, n)
	local out = {}
	for _ = 1, n do
		NS.cdb.memory.recent = {}
		local rec = Engine:PickEntry(event, Ctx(), "say")
		if rec then out[rec.id] = (out[rec.id] or 0) + 1 end
	end
	return out
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

---------------------------------------------------------------------------
-- #122: saved data, ids and times only
---------------------------------------------------------------------------
T.run("#122: a literary piece shown goes in the songbook as an id and a time, never a text", function()
	Fresh()
	T.eq(NS.cdb.songbook.version, 1, "the section exists with its version")
	T.ok(NS:Trigger("sb_only"), "the piece of sb_only is shown")
	T.eq(Songbook:Heard("sb.only"), time(), "noted as heard, with the time")
	Songbook:NoteShown({ id = "sb.plain", text = "An ordinary thought." })
	T.eq(Songbook:Heard("sb.plain"), nil, "a line that is not literary is never noted")
	-- nothing but ids and numbers, and none of the words of the piece
	local saved = SERIALIZE(NS.cdb.songbook)
	T.ok(not saved:find("saying", 1, true) and not saved:find("bucket", 1, true), "no word of the text is saved: " .. saved)
	for _, set in ipairs(Songbook.SETS) do
		for id, t in pairs(NS.cdb.songbook[set]) do
			T.ok(type(id) == "string" and type(t) == "number", "only ids and times in " .. set)
		end
	end
	-- a lore_test twin notes its piece
	local twin = Engine:AddEntry(Engine.packs.sbtest, "sb.test.verse", { event = "sb_only", speaker = "inner", genre = "verse",
		purpose = "remember", origin = "common", tags = { "lore" } })
	twin.twinOf = "sb.verse"
	Songbook:NoteShown({ id = "sb.test.verse" })
	T.ok(Songbook:Heard("sb.verse") ~= nil and Songbook:Heard("sb.test.verse") == nil, "a twin notes its piece, never itself")
end)

T.run("#122: Add, the API for other systems (N7), and the memory module", function()
	Fresh()
	T.ok(Songbook:Add("sb.song", "heard"), "a literary piece of a loaded pack")
	local ok, why = Songbook:Add("sb.plain")
	T.ok(not ok and why == "unknown", "not a literary piece: refused (" .. tostring(why) .. ")")
	ok, why = Songbook:Add("no.such.piece")
	T.ok(not ok and why == "unknown", "not loaded: refused")
	ok, why = Songbook:Add("sb.song", "sung")
	T.ok(not ok and why == "bad", "an unknown way: refused")
	T.ok(Songbook:Add("sb.verse", "learned") and Songbook:IsLearned("sb.verse"), "learned by heart")
	T.ok(Songbook:Add("sb.stone", "heard", time() + 9999) and Songbook:Heard("sb.stone") == time(), "a time in the future is now")
	NS.db.modules.memory = false
	ok, why = Songbook:Add("sb.dwarf")
	T.ok(not ok and why == "off", "the memory off: nothing is noted")
	Songbook:NoteShown({ id = "sb.dwarf" })
	T.eq(Songbook:Heard("sb.dwarf"), nil, "not even a piece shown")
	NS.db.modules.memory = true
end)

T.run("#122: bounded: about 300 ids, under 10 KB; the user's marks stay", function()
	Fresh()
	local d = NS.cdb.songbook
	local base = time() - 100000
	for i = 1, 450 do d.heard[("pack.some.long.piece.identifier.%04d"):format(i)] = base + i end
	d.learned["pack.some.long.piece.identifier.0001"] = base
	d.favourite["pack.some.long.piece.identifier.0002"] = base
	d.muted["pack.some.long.piece.identifier.0003"] = base
	local removed = Songbook.Trim(d)
	local _, count = Songbook.Ids(d)
	T.ok(removed > 0 and count <= Songbook.MAX_IDS, "trimmed to the bound of ids (" .. count .. ")")
	T.ok(Songbook.Bytes(d) <= Songbook.MAX_BYTES, "within the estimated bytes (" .. Songbook.Bytes(d) .. ")")
	local wow = "AzerothUnspokenCharacterDB = { songbook = " .. SERIALIZE(d) .. " }"
	T.ok(#wow < 10240, "and the saved text is under 10 KB (" .. #wow .. " bytes)")
	T.ok(d.learned["pack.some.long.piece.identifier.0001"] and d.favourite["pack.some.long.piece.identifier.0002"]
		and d.muted["pack.some.long.piece.identifier.0003"], "learned, favourite and muted pieces are kept")
	T.ok(d.heard["pack.some.long.piece.identifier.0450"] and not d.heard["pack.some.long.piece.identifier.0010"],
		"the oldest pieces only heard go first")
	-- short ids: the bound of ids decides
	Fresh()
	d = NS.cdb.songbook
	for i = 1, 350 do d.heard["p" .. i] = base + i end
	Songbook.Trim(d)
	local _, n = Songbook.Ids(d)
	T.eq(n, Songbook.MAX_IDS, "about 300 ids")
	-- a mark with no room left is refused
	Fresh()
	d = NS.cdb.songbook
	for i = 1, Songbook.MAX_IDS do d.favourite["f" .. i] = base end
	local ok, why = Songbook:SetMuted("sb.song", true)
	T.ok(not ok and why == "full" and not d.muted["sb.song"], "a full songbook of marks refuses a new one")
end)

T.run("#122: Sanitize, migration and newer versions", function()
	Fresh()
	NS.cdb.songbook = { heard = { ["sb.verse"] = time() - 10, [7] = 1, ["bad\nid"] = 1, ["sb.song"] = "yesterday",
		["sb.stone"] = time() + 5000, [("x"):rep(200)] = 1 }, learned = "nope", extra = { text = "Words" } }
	local dropped = Songbook:Sanitize()
	local d = NS.cdb.songbook
	T.eq(d.version, 1, "a songbook with no version is migrated to version 1")
	T.ok(d.heard["sb.verse"] == time() - 10, "a good entry is kept")
	T.ok(d.heard["sb.stone"] == time(), "a time in the future comes back to now")
	T.ok(d.heard["sb.song"] == nil and d.heard[7] == nil and d.heard["bad\nid"] == nil, "bad ids and times go")
	T.ok(type(d.learned) == "table" and next(d.learned) == nil, "a damaged set starts empty")
	T.ok(d.extra == nil, "an unknown field goes (it could hold a text)")
	T.ok(dropped >= 5, "the dropped entries are counted (" .. dropped .. ")")
	-- a newer version: read from a copy, never written
	NS.cdb.songbook = { version = 9, heard = { ["sb.verse"] = 5 }, muted = { ["sb.song"] = 5 }, future = true }
	T.eq(Songbook:Sanitize(), 0, "nothing cleaned")
	T.ok(Songbook.readOnly, "read-only")
	local ok, why = Songbook:Add("sb.stone")
	T.ok(not ok and why == "readonly", "nothing added")
	T.ok(not Songbook:SetFavourite("sb.verse", true), "no mark")
	T.ok(NS.cdb.songbook.future == true and NS.cdb.songbook.heard["sb.stone"] == nil, "the file keeps what it had")
	T.ok(Engine.muted and Engine.muted["sb.song"], "its mutes are still honoured")
	-- /reload with the newer data: Config leaves the section as it is
	Fresh()
	T.ok(not Songbook.readOnly, "a fresh songbook is writable again")
end)

---------------------------------------------------------------------------
-- #122: muted and favourite pieces
---------------------------------------------------------------------------
T.run("#122: a muted piece is never chosen; unmuted it speaks again", function()
	Fresh()
	local before = Picks("sb_only", 5)
	T.ok((before["sb.only"] or 0) > 0, "the piece speaks")
	T.ok(Songbook:SetMuted("sb.only", true), "muted")
	T.ok(Engine.muted and Engine.muted["sb.only"], "the engine knows")
	T.eq(next(Picks("sb_only", 20)), nil, "never chosen, not even asked for")
	T.ok(Songbook:SetMuted("sb.only", false) and Engine.muted == nil, "unmuted")
	T.ok((Picks("sb_only", 5)["sb.only"] or 0) > 0, "it speaks again")
end)

---------------------------------------------------------------------------
-- #123: the recall, the guard, the frames
---------------------------------------------------------------------------
T.run("#123: lore_recall only with a piece the songbook confirms (the guard)", function()
	Fresh()
	T.ok(not Engine:EventAllowed("lore_recall", Ctx()), "an empty songbook: the guard says no")
	T.eq(Engine:PickEntry("lore_recall", Ctx(), "say"), nil, "no recall, even asked for by hand")
	Songbook:Add("sb.verse")
	T.eq(Engine:PickEntry("lore_recall", Ctx(), "say"), nil, "heard a moment ago: too soon to come back")
	LEAP(Engine.RECALL.minAge + 60)
	T.ok(Engine:EventAllowed("lore_recall", Ctx()), "heard long enough ago: allowed")
	local rec = Engine:PickEntry("lore_recall", Ctx(), "say")
	T.ok(rec and rec.id == "sb.verse", "the piece comes back with its own id")
	T.eq(rec and rec.speaker, "inner", "in the inner voice")
	T.eq(rec and rec.category, "lore", "a literary form")
	T.ok(rec and rec.frame and rec.frame:find("^frame%.recall") ~= nil, "in a recall frame: " .. tostring(rec and rec.frame))
	T.ok(rec and not rec.text:find("A verse heard once", 1, true), "the attribution gives way to the frame")
	T.ok(rec and rec.text:find("the road is long and so am I,\nthe day is short and so is pay.", 1, true),
		"the verses, one per line: " .. tostring(rec and rec.text))
	T.ok(rec and rec.text:find("^[^\n]+:\n") ~= nil, "the frame's line first")
	T.eq(Gateway:PrivateReason(rec), "literary", "private in every mode (D16)")
	T.eq(Engine:PickEntry("lore_recall", Ctx(), "emote"), nil, "never an emote")
	-- the guard's cases
	P.combat = true
	T.ok(not Engine:EventAllowed("lore_recall", Ctx()), "never in combat")
	P.combat = false
	NS.db.literary.frequency = "never"
	T.ok(not Engine:EventAllowed("lore_recall", Ctx()), "literary forms: never")
	NS.db.literary.frequency = "rare"
	Personality:SetTrait("innerVoice", "off")
	T.ok(not Engine:EventAllowed("lore_recall", Ctx()), "the inner voice silenced")
	Personality:SetTrait("innerVoice", nil)
	NS.db.modules.memory = false
	T.ok(not Engine:EventAllowed("lore_recall", Ctx()), "the memory off")
	NS.db.modules.memory = true
	Songbook:SetMuted("sb.verse", true)
	T.ok(not Engine:EventAllowed("lore_recall", Ctx()), "a muted piece never comes back")
end)

T.run("#123: one id, a song and a memory; an inscription comes back in a reading frame", function()
	Fresh()
	Songbook:Add("sb.song")
	Songbook:Add("sb.stone")
	LEAP(Engine.RECALL.minAge + 60)
	local seen, modes = {}, {}
	for _ = 1, 40 do
		NS.cdb.memory.recent = {}
		local rec = Engine:PickEntry("lore_recall", Ctx(), "say")
		if rec then
			seen[rec.id] = true
			modes[rec.id] = rec.recall
			local lines = {}
			for l in rec.text:gmatch("[^\n]+") do table.insert(lines, l) end
			T.eq(#lines, 3, "the frame's line and the two verses")
		end
	end
	T.ok(seen["sb.song"] and seen["sb.stone"], "both pieces come back")
	T.eq(modes["sb.song"], "recall", "a song heard: a recall frame")
	T.eq(modes["sb.stone"], "reading", "an inscription read: a reading frame")
	-- the npc's song keeps its own voice when it is sung, and its id is the same
	local sung = Engine:PickEntry("sb_muse", Ctx(), "say")
	T.ok(sung ~= nil, "the ordinary pick still works")
	T.eq(Engine.byId["sb.song"].speaker, "npc", "the rule keeps its voice: the memory only frames it")
	-- favourite and learned weigh more
	Fresh()
	Songbook:Add("sb.song")
	Songbook:Add("sb.stone")
	Songbook:SetFavourite("sb.stone", true)
	LEAP(Engine.RECALL.minAge + 60)
	local n = { ["sb.song"] = 0, ["sb.stone"] = 0 }
	math.randomseed(7)
	for _ = 1, 200 do
		NS.cdb.memory.recent = {}
		NS.cdb.memory.uses = {}
		local rec = Engine:PickEntry("lore_recall", Ctx(), "say")
		if rec then n[rec.id] = n[rec.id] + 1 end
	end
	T.ok(n["sb.stone"] > n["sb.song"], ("a favourite comes back more often (%d vs %d)"):format(n["sb.stone"], n["sb.song"]))
end)

T.run("#122: the Director offers lore_recall with the quiet moments", function()
	Fresh()
	local list = Director.companions.rest_enter or {}
	T.ok(#list == 1 and list[1].event == "lore_recall", "rest_enter brings lore_recall")
	local function Offered()
		Director.queue, Director.pendingResolve = {}, true
		Director:Offer("rest_enter")
		local events = {}
		for _, c in ipairs(Director.queue) do events[c.event] = true end
		return events
	end
	local events = Offered()
	T.ok(events.rest_enter and not events.lore_recall, "an empty songbook: no recall offered (the log stays quiet)")
	Songbook:Add("sb.song")
	T.ok(not Offered().lore_recall, "a piece heard a moment ago: not yet")
	LEAP(Engine.RECALL.minAge + 60)
	events = Offered()
	T.ok(events.rest_enter and events.lore_recall, "a piece heard long ago: both are candidates of the same moment")
	T.eq(NS.NarrativeDirector:Priority("lore_recall"), NS.NarrativeDirector.PRIORITY.memory, "with the priority of a recall")
	Director.queue, Director.pendingResolve = {}, false
end)

T.run("#123: the validator checks the frames, the registers and the length", function()
	local val = Validator:Run({ packs = { "base_frames" } })
	for _, p in ipairs(val.errors) do T.ok(false, "base frames: " .. p.code .. " " .. tostring(p.id) .. " " .. p.msg) end
	T.eq(#Engine.loreFrames.recall + #Engine.loreFrames.reading, 6, "six recall and reading frames")
	for _, list in pairs(Engine.frames) do
		for _, f in ipairs(list) do T.ok(f.mode == nil, "never among the emote frames: " .. tostring(f.id)) end
	end
	NS:RegisterPack({ id = "sbframes", languages = { "enUS", "itIT" }, literary = { genres = { "riddle" } },
		frames = {
			{ id = "sb.f.mode", mode = "dream", genres = { "verse" }, en = "In a dream:\n{line}", it = "In sogno:\n{line}" },
			{ id = "sb.f.genre", mode = "recall", en = "Back:\n{line}", it = "Torna:\n{line}" },
			{ id = "sb.f.event", mode = "recall", event = "zone", genres = { "verse" }, en = "Back:\n{line}", it = "Torna:\n{line}" },
			{ id = "sb.f.line", mode = "recall", genres = { "verse" }, en = "Back: {line}", it = "Torna: {line}" },
		} })
	local probs = {}
	val = Validator:Run({ packs = { "sbframes" } })
	for _, p in ipairs(val.errors) do probs[p.code .. ":" .. tostring(p.id)] = true end
	T.ok(probs["loreFrameMode:sb.f.mode"], "an unknown mode")
	T.ok(probs["loreFrameGenre:sb.f.genre"], "no genre")
	T.ok(probs["loreFrameEvent:sb.f.event"], "an event")
	T.ok(probs["loreFrameLine:sb.f.line"], "{line} not on a line of its own")
	Engine:DropPack("sbframes")
	-- a piece with no frame of its genre, and one too long as a memory
	local long = "A long one:\n" .. ("a verse of the long song that goes on and on, "):rep(12)
	NS:RegisterPack({ id = "sbrecall", languages = { "enUS", "itIT" }, literary = { genres = { "riddle" } }, registry = {
		["sb.r.riddle"] = Lit({ genre = "riddle" }),
		["sb.r.long"] = Lit(),
		["sb.r.ok"] = Lit(),
	}, texts = { enUS = { ["sb.r.riddle"] = TEXTS["sb.verse"][1], ["sb.r.long"] = long, ["sb.r.ok"] = TEXTS["sb.verse"][1] },
		itIT = { ["sb.r.riddle"] = TEXTS["sb.verse"][2], ["sb.r.long"] = long, ["sb.r.ok"] = TEXTS["sb.verse"][2] } } })
	probs = {}
	val = Validator:Run({ packs = { "sbrecall" } })
	for _, p in ipairs(val.errors) do probs["E:" .. p.code .. ":" .. tostring(p.id)] = true end
	for _, p in ipairs(val.warnings) do probs["W:" .. p.code .. ":" .. tostring(p.id)] = true end
	T.ok(probs["W:recallFrame:sb.r.riddle"], "no frame for the genre: a warning")
	T.ok(probs["E:recallLength:sb.r.long"], "frame and verses over the reading limit: an error")
	T.ok(not probs["W:recallFrame:sb.r.ok"] and not probs["E:recallLength:sb.r.ok"], "a fitting piece: nothing")
	local wrong = Validator.RecallProblems({ genre = "verse", speaker = "inner", styles = { "ironic" }, tags = { lore = true },
		category = "lore", events = {}, text = {} }, {})
	T.ok(#wrong == 0 or wrong[1].code ~= "recallFrame", "an ironic verse finds the everyday frames (near registers)")
	Engine:DropPack("sbrecall")
end)

---------------------------------------------------------------------------
-- #124: the culture of origin
---------------------------------------------------------------------------
T.run("#124: the culture is chosen by hand, never deduced", function()
	Fresh()
	T.ok(Engine.CULTURES.dwarf and Engine.CULTURES.kaldorei and #Engine.CULTURE_ORDER == 9, "the cultures of Data/Themes.lua")
	T.eq(Personality:Culture(), nil, "not chosen: none, whatever the race")
	T.eq(Ctx().culture, nil, "the context has none")
	for _, race in ipairs({ "Dwarf", "Orc", "NightElf" }) do
		P.race = race
		T.eq(Ctx().culture, nil, "never from the race " .. race)
	end
	P.race = "Human"
	T.ok(not Personality:SetCulture("klingon"), "an undeclared culture is refused")
	T.ok(Personality:SetCulture("dwarf"), "a declared one is chosen")
	T.eq(Ctx().culture, "dwarf", "the context has it")
	T.eq(NS.cdb.personality.culture, "dwarf", "saved in the profile, apart from the traits")
	T.eq(NS.cdb.personality.traits.culture, nil, "not a trait")
	T.ok(Personality:SetArchetype("veteran") and Personality:Culture() == "dwarf", "an archetype does not change it")
	Personality:Reset()
	T.eq(Personality:Culture(), nil, "the neutral profile clears it")
	NS.cdb.personality.culture = "Not A Culture"
	T.ok(Personality:Sanitize() >= 1 and NS.cdb.personality.culture == nil, "a malformed one is dropped")
	NS.cdb.personality.culture = "atlantean"
	Personality:Sanitize()
	T.eq(NS.cdb.personality.culture, "atlantean", "one no pack declares yet is kept (a pack may declare it later)")
	T.eq(Personality:Culture(), nil, "but not used")
	NS.cdb.personality.culture = nil
end)

T.run("#124: the factor: x1.4 own, x0.8 another heard, 0 another in the first person; unset only common", function()
	Fresh()
	local F = Personality.CultureFactor
	local npc, inner, common = Engine.byId["sb.dwarf"], Engine.byId["sb.dwarf.inner"], Engine.byId["sb.verse"]
	local ctx = { culture = nil }
	T.eq(F(npc, ctx), 0, "unset: no culture piece, even heard")
	T.eq(F(inner, ctx), 0, "unset: no culture piece in the first person")
	T.eq(F(common, ctx), 1, "unset: the common pieces as before")
	ctx.culture = "dwarf"
	T.eq(F(npc, ctx), 1.4, "own culture, heard: x1.4")
	T.eq(F(inner, ctx), 1.4, "own culture, first person: x1.4")
	ctx.culture = "orc"
	T.eq(F(npc, ctx), 0.8, "another culture heard from an NPC: x0.8")
	T.eq(F(inner, ctx), 0, "another culture in the first person: 0")
	T.eq(F(common, ctx), 1, "a common piece: 1")
	-- in the pick
	local picks = Picks("sb_muse", 120)
	T.ok(not picks["sb.dwarf"] and not picks["sb.dwarf.inner"], "unset: never a dwarven piece")
	Personality:SetCulture("orc")
	picks = Picks("sb_muse", 300)
	T.ok(not picks["sb.dwarf.inner"], "another culture: never in the first person")
	T.ok((picks["sb.dwarf"] or 0) > 0, "but heard from an NPC")
	Personality:SetCulture("dwarf")
	picks = Picks("sb_muse", 300)
	T.ok((picks["sb.dwarf.inner"] or 0) > 0, "its own culture, in the first person too")
	-- the condition
	T.ok(Engine.SafeMatch({ culture = "dwarf" }, Ctx()), "condition culture = dwarf")
	T.ok(Engine.SafeMatch({ culture = { "orc", "dwarf" } }, Ctx()), "condition culture = a list")
	T.ok(not Engine.SafeMatch({ culture = "orc" }, Ctx()), "another culture: no")
	-- Total RP 3 and the game never give it
	Personality:RegisterGameLayer("sbtest", function() return { culture = "orc", stoicism = 70 } end)
	T.eq(Personality:Culture(), "dwarf", "a game layer does not change it")
	T.eq((Personality:Effective()).culture, nil, "and it is not a trait of the effective profile")
	Personality:RegisterGameLayer("sbtest", nil)
end)

T.run("#124: /au soul culture and the summary", function()
	Fresh()
	local out = Cmd("soul culture dwarf")
	T.ok(out:find("Dwarven holds", 1, true), "set: " .. out)
	out = Cmd("soul culture")
	T.ok(out:find("Culture of origin: Dwarven holds", 1, true), "shown: " .. out)
	out = Cmd("soul culture elf")
	T.ok(out:find("kaldorei", 1, true), "an unknown one lists the cultures: " .. out)
	out = Cmd("soul list")
	T.ok(out:find("Culture of origin", 1, true), "in the summary: " .. out)
	out = Cmd("soul culture -")
	T.eq(Personality:Culture(), nil, "cleared")
end)

---------------------------------------------------------------------------
-- The interface: the Journal tab and the culture picker
---------------------------------------------------------------------------
local function RowsText(rows)
	local out = {}
	for _, r in ipairs(rows) do table.insert(out, r.text) end
	return table.concat(out, "\n")
end

local function Tab(id)
	for _, t in ipairs(JournalFrame.tabs) do
		if t.id == id then return t end
	end
end

T.run("#122: the Songbook tab lists the pieces, reads their text from the pack, keeps a missing one", function()
	Fresh()
	local tab = Tab("songbook")
	T.ok(tab ~= nil, "the tab exists")
	T.ok(RowsText(tab.rows()):find("No piece yet", 1, true), "empty: a word on what it will hold")
	Songbook:Add("sb.song")
	Songbook:Add("sb.stone")
	NS.cdb.songbook.heard["gone.piece.01"] = time() - 50
	Songbook:SetFavourite("sb.stone", true)
	local rows = tab.rows()
	T.ok(rows[1].text:find("Worn letters on a fallen lintel", 1, true), "a favourite first, by its attribution: " .. rows[1].text)
	T.ok(RowsText(rows):find("We sing this one when the night runs late", 1, true), "the title is the first line")
	T.ok(RowsText(rows):find("gone.piece.01: no longer in the loaded packs", 1, true), "a piece no longer in the pack, by its id")
	T.ok(not RowsText(rows):find("one for the road", 1, true), "the list has no verses")
	-- open a piece: the whole text, verse by verse, and the marks
	JournalFrame:OpenPiece("sb.song")
	rows = tab.rows()
	local text = RowsText(rows)
	T.ok(text:find("one for the road and one for the rain,", 1, true) and text:find("one for the friend", 1, true),
		"the whole text, read from the pack: " .. text)
	local learn
	for _, r in ipairs(rows) do
		if r.actions and r.actions[1].label == "Learn" then learn = r.actions[1] end
	end
	T.ok(learn ~= nil, "a row to learn it by heart")
	learn.fn()
	T.ok(Songbook:IsLearned("sb.song"), "learned")
	-- a missing piece opens too
	JournalFrame:OpenPiece("gone.piece.01")
	T.ok(RowsText(tab.rows()):find("its words are not here", 1, true), "its words are not here")
	-- the window draws it
	T.ok(JournalFrame:IsOpen(), "the journal is open on the songbook")
	JournalFrame:Close()
	local out = Cmd("songbook list")
	T.ok(out:find("songbook: 3 pieces", 1, true), "the listing: " .. out)
	-- in Italian
	NS.db.locale = "it"
	T.ok(Tab("songbook").label == "song_tab" and NS:L("song_tab") == "Canzoniere", "the tab in Italian")
	NS.db.locale = "en"
end)

T.run("#124: the culture picker in the soul window, as wide as its longest name", function()
	Fresh()
	T.ok(ProfileFrame:Open(), "the window opens")
	local w = ProfileFrame:CultureWidth()
	T.ok(w >= 170 and w <= 556 - 190, "the width of the button stays in its column (" .. w .. ")")
	local culture = _G.AzerothUnspokenProfile and _G.AzerothUnspokenProfile.culture
	T.ok(culture and culture.value, "the culture row exists")
	T.eq(culture.value:GetText(), "not set", "not set at first")
	T.ok(not culture.clear:IsShown(), "nothing to clear")
	culture.value:Click()
	T.eq(Personality:Culture(), Engine.CULTURE_ORDER[1], "a click chooses the first culture")
	T.eq(culture.value:GetText(), Personality:CultureName(Engine.CULTURE_ORDER[1]), "and shows it")
	T.ok(culture.clear:IsShown(), "it can be cleared")
	culture.value:Click()
	T.eq(Personality:Culture(), Engine.CULTURE_ORDER[2], "the next one")
	culture.clear:Click()
	T.eq(Personality:Culture(), nil, "cleared")
	ProfileFrame:Close()
end)
