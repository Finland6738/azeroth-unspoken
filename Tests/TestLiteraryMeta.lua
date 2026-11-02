-- Tests of the literary metadata (#119), the genre x situation matrix and the warning words (#120) and the songs of
-- interchangeable stanzas (#127, ADR 0043). Owner decisions in #130: D16 (never in public chat: no excerpt), D17 (the
-- origin is matched against the culture the user chooses, never the race).
local NS = ...
local Engine, Validator, Gateway = NS.Engine, NS.Validator, NS.Gateway

NS:RegisterEvent("meta_muse", { category = "reflection", chance = 100, cooldown = 0 })
NS:RegisterEvent("meta_hand", { category = "reflection", chance = 0, cooldown = 0 })
NS.db.locale = "en"

local VERSE = "A verse heard once:\nthe road is long and so am I,\nthe day is short and so is pay;\n"
	.. "the hill is high and so is sky,\nand so I walk and so I stay."
local VERSE_IT = "Un verso sentito una volta:\nla strada è lunga, e così io,\nil giorno è corto, e la paga;\n"
	.. "il colle è alto, e il cielo pio,\ne cammino, e il passo s'allaga."

-- the problems of the rules of a pack, as a set of "E:code:id" and "W:code:id"
local function Problems(packId)
	local val = Validator:Run({ packs = { packId } })
	local out = {}
	for _, p in ipairs(val.errors) do out["E:" .. p.code .. ":" .. tostring(p.id)] = p.msg end
	for _, p in ipairs(val.warnings) do out["W:" .. p.code .. ":" .. tostring(p.id)] = p.msg end
	return out
end

local function Has(set, prefix)
	for k in pairs(set) do if k:find(prefix, 1, true) == 1 then return true end end
	return false
end

-- a test pack: `rules` = { id = rule }, every rule with the same English and Italian verse unless `texts` says
local function Pack(id, rules, texts)
	local en, it = {}, {}
	for rid in pairs(rules) do
		en[rid] = texts and texts.en and texts.en[rid] or VERSE
		it[rid] = texts and texts.it and texts.it[rid] or VERSE_IT
	end
	NS:RegisterPack({ id = id, languages = { "enUS", "itIT" }, registry = rules, texts = { enUS = en, itIT = it } })
	return Problems(id)
end

local function Lit(extra)
	local r = { event = "meta_muse", speaker = "inner", styles = { "intimate" }, tags = { "lore" }, genre = "verse", purpose = "remember",
		origin = "common", conditions = { combat = false } }
	for k, v in pairs(extra or {}) do r[k] = v end
	return r
end

---------------------------------------------------------------------------
-- #119: the fields, carried by the registry
---------------------------------------------------------------------------
T.run("#119: genre, purpose and origin are rule fields with closed vocabularies", function()
	T.ok(Engine.GENRES.song and Engine.GENRES.epigraph and Engine.GENRES.tale, "the genres of Data/Themes.lua")
	T.ok(Engine.PURPOSES.amuse and Engine.PURPOSES.mourn and Engine.PURPOSES.accompany, "the purposes")
	T.ok(#Engine.LITERARY_MATRIX >= 4 and #Engine.LITERARY_WORDS >= 4, "the matrix and the warning words")
	local probs = Pack("meta_fields", { ["meta.f.ok"] = Lit(), ["meta.f.cat"] = Lit({ tags = {} }) })
	local p = Engine.byId["meta.f.ok"]
	T.eq(p.genre, "verse", "genre kept")
	T.eq(p.purpose, "remember", "purpose kept")
	T.eq(p.origin, "common", "origin kept")
	T.ok(Engine.ShapeOf(p) and rawget(p, "genre") == nil, "in the shared shape, not in the rule table (ADR 0024)")
	T.eq(Engine.byId["meta.f.cat"].category, "lore", "a genre alone makes a literary form: category lore")
	T.ok(Engine.IsLiteraryRule(Engine.byId["meta.f.cat"]), "IsLiteraryRule: a genre")
	T.ok(not Has(probs, "E:"), "a rule with valid metadata: no error")
	T.ok(not Has(probs, "W:literaryMeta"), "and no missing-metadata warning")
	NS.db.disabledPacks.meta_fields = true
end)

T.run("#119: the validator refuses unknown values and fields out of place", function()
	local probs = Pack("meta_bad", {
		["meta.b.genre"] = Lit({ genre = "limerick" }),
		["meta.b.purpose"] = Lit({ purpose = "sell" }),
		["meta.b.race"] = Lit({ origin = "race:orc" }),
		["meta.b.case"] = Lit({ origin = "culture:Orc" }),
		["meta.b.plain"] = { event = "meta_muse", speaker = "inner", purpose = "amuse" },
		["meta.b.none"] = { event = "meta_muse", speaker = "inner", tags = { "lore" } },
		["meta.b.song"] = Lit({ genre = "song" }),
		["meta.b.pub"] = Lit({ speaker = "character", tags = {} }),
	}, { en = { ["meta.b.song"] = "A song:\nsing it, {player},\nsing it twice,\nsing it thrice,\nsing it nice." } })
	T.ok(probs["E:badGenre:meta.b.genre"], "an unknown genre: an error")
	T.ok(probs["E:badPurpose:meta.b.purpose"], "an unknown purpose: an error")
	T.ok(probs["E:badOrigin:meta.b.race"], "a race is not an origin (D17): an error")
	T.ok(probs["E:badOrigin:meta.b.case"], "culture:<people> in lower case")
	T.ok(probs["E:literaryField:meta.b.plain"], "purpose on a rule that is not literary: an error")
	T.ok(probs["W:literaryMeta:meta.b.none"], "a literary form without genre, purpose and origin: a warning")
	T.ok(probs["E:literaryPlaceholder:meta.b.song"], "a placeholder in a song: an error")
	T.ok(probs["E:literaryPublic:meta.b.pub"], "a genre in a public voice: an error (D16)")
	T.eq(Validator.OriginProblem("culture:dwarf"), nil, "culture:dwarf is valid while no culture is declared")
	Engine.CULTURES.ironforge = true
	T.ok(Validator.OriginProblem("culture:dwarf") ~= nil, "with declared cultures (#124) an undeclared one is refused")
	T.eq(Validator.OriginProblem("culture:ironforge"), nil, "a declared one is accepted")
	Engine.CULTURES.ironforge = nil
	T.eq(Gateway:PrivateReason({ id = "meta.b.pub", speaker = "character", text = "x" }), "literary",
		"the Gateway keeps a rule with a genre private, whatever its voice (D16)")
	NS.db.disabledPacks.meta_bad = true
end)

T.run("#119: the same number of verses in every language (a warning)", function()
	local probs = Pack("meta_verses", { ["meta.v.same"] = Lit(), ["meta.v.diff"] = Lit() },
		{ it = { ["meta.v.diff"] = "Un verso:\nuno\ndue\ntre" } })
	T.ok(probs["W:verseCount:meta.v.diff"], "four verses in English, three in Italian: a warning")
	T.ok(not probs["W:verseCount:meta.v.same"], "the same count: no warning")
	NS.db.disabledPacks.meta_verses = true
end)

---------------------------------------------------------------------------
-- #120: the matrix and the warning words, warnings only
---------------------------------------------------------------------------
T.run("#120: the genre x situation matrix (positive and negative samples)", function()
	local probs = Pack("meta_matrix", {
		["meta.m.amuse_cursed"] = Lit({ purpose = "amuse", conditions = { combat = false, place = { tags = "cursed" } } }),
		["meta.m.amuse_death"] = Lit({ event = "death", purpose = "amuse" }),
		["meta.m.amuse_ok"] = Lit({ purpose = "amuse" }),
		["meta.m.amuse_not"] = Lit({ purpose = "amuse", conditions = { combat = false, ["not"] = { mood = "dark" } } }),
		["meta.m.mourn_ironic"] = Lit({ purpose = "mourn", styles = { "ironic" } }),
		["meta.m.mourn_ok"] = Lit({ purpose = "mourn", styles = { "tragic" } }),
		["meta.m.epigraph"] = Lit({ genre = "epigraph" }),
		["meta.m.epigraph_ruin"] = Lit({ genre = "epigraph", conditions = { combat = false, place = { tags = { "ruin" } } } }),
		["meta.m.walk"] = Lit({ purpose = "accompany" }),
		["meta.m.walk_ok"] = Lit({ event = "travel", purpose = "accompany" }),
		["meta.m.hand"] = Lit({ event = "meta_hand", genre = "epigraph", purpose = "amuse" }),
	})
	T.ok(probs["W:literaryMatrix:meta.m.amuse_cursed"], "amuse in a cursed place: a warning")
	T.ok(probs["W:literaryMatrix:meta.m.amuse_death"], "amuse right after a death: a warning")
	T.ok(not probs["W:literaryMatrix:meta.m.amuse_ok"], "amuse anywhere else: none")
	T.ok(not probs["W:literaryMatrix:meta.m.amuse_not"], "a `not` condition is not a fact")
	T.ok(probs["W:literaryMatrix:meta.m.mourn_ironic"], "mourn in an ironic register: a warning")
	T.ok(not probs["W:literaryMatrix:meta.m.mourn_ok"], "mourn in a tragic register: none")
	T.ok(probs["W:literaryMatrix:meta.m.epigraph"], "an epigraph without a ruin, a sacred place or a monument: a warning")
	T.ok(not probs["W:literaryMatrix:meta.m.epigraph_ruin"], "an epigraph at a ruin: none")
	T.ok(probs["W:literaryMatrix:meta.m.walk"], "accompany without a journey: a warning")
	T.ok(not probs["W:literaryMatrix:meta.m.walk_ok"], "accompany on travel: none")
	T.ok(not probs["W:literaryMatrix:meta.m.hand"], "a manual event (chance 0) is not judged")
	for k in pairs(probs) do T.ok(not k:find("^E:literaryMatrix"), "the matrix never gives an error") end
	local f = Validator.LiteraryFacts(Engine.byId["meta.m.epigraph_ruin"])
	T.ok(f["place.tags=ruin"] and f["place.tags"] and f["combat=false"] and f["event=meta_muse"] and f["genre=epigraph"],
		"the facts of a rule: conditions with their path, events, metadata")
	NS.db.disabledPacks.meta_matrix = true
end)

T.run("#120: the warning words ask their condition", function()
	local night = "A song:\nthe night is long,\nthe road is cold,\nthe fire is low,\nthe song is old."
	local snow = "A song:\nthe snow is deep,\nthe road is cold,\nthe fire is low,\nthe song is old."
	local back = "A song:\nI made my return,\nthe road is cold,\nthe fire is low,\nthe song is old."
	local faith = "A song:\nkeep faith, they said,\nthe road is cold,\nthe fire is low,\nthe song is old."
	local tonight = "A song:\nthe nightjar sings,\nthe road is cold,\nthe fire is low,\nthe song is old."
	local probs = Pack("meta_words", {
		["meta.w.night"] = Lit(), ["meta.w.night_ok"] = Lit({ conditions = { combat = false, time = { "dusk", "night" } } }),
		["meta.w.snow"] = Lit(), ["meta.w.snow_ok"] = Lit({ conditions = { combat = false, weather = "snow" } }),
		["meta.w.back"] = Lit(), ["meta.w.back_ok"] = Lit({ conditions = { combat = false, repeatVisit = true } }),
		["meta.w.faith"] = Lit(), ["meta.w.faith_ok"] = Lit({ event = "pray" }),
		["meta.w.word"] = Lit(), ["meta.w.hand"] = Lit({ event = "meta_hand" }),
	}, { en = { ["meta.w.night"] = night, ["meta.w.night_ok"] = night, ["meta.w.snow"] = snow, ["meta.w.snow_ok"] = snow,
		["meta.w.back"] = back, ["meta.w.back_ok"] = back, ["meta.w.faith"] = faith, ["meta.w.faith_ok"] = faith,
		["meta.w.word"] = tonight, ["meta.w.hand"] = night } })
	for _, k in ipairs({ "night", "snow", "back", "faith" }) do
		T.ok(probs["W:literaryWord:meta.w." .. k], k .. ": named without its condition, a warning")
		T.ok(not probs["W:literaryWord:meta.w." .. k .. "_ok"], k .. ": with its condition, none")
	end
	T.ok(not probs["W:literaryWord:meta.w.word"], "whole words only: 'nightjar' is not 'night'")
	T.ok(not probs["W:literaryWord:meta.w.hand"], "a manual event is not judged")
	NS.db.disabledPacks.meta_words = true
end)

---------------------------------------------------------------------------
-- #127: songs of interchangeable stanzas
---------------------------------------------------------------------------
local FRAME = "A test song:\n{stanzas}\n\nSo sing it once,\nand sing it twice."
local S = {
	"the cat sat on the mat today\nthe dog lay by the door\nthe bird flew high above the hay\nthe fish swam near the shore",
	"the cow stood in the field all day\nthe pig slept in the straw\nthe goat ran up the hill to play\nthe horse stood by the saw",
	"the fox went down the lane at dusk\nthe owl sat on the beam\nthe hare ran past the empty husk\nthe trout lay in the stream",
	"the mouse ran down the stair at noon\nthe rat lay in the drain\nthe crow sat on the cart too soon\nthe mule walked in the lane",
}
local FRAME_IT = "Una canzone di prova:\n{stanzas}\n\nCantala una volta,\ne poi ancora."
local S_IT = {
	"la gatta dorme sopra il tetto\nil cane guarda la via\nil merlo canta sul suo letto\nil pesce nuota via",
	"la mucca bruca dentro il prato\nil porco dorme al sole\nla capra salta sul selciato\nil mulo non ne vuole",
	"la volpe scende per la strada\nil gufo veglia in alto\nla lepre corre nella biada\nla trota fa un salto",
	"il topo corre per la scala\nil ratto sta nel fosso\nil corvo vola sulla sala\nil mulo non si è mosso",
}

local function Song(id, extra, en, it)
	local r = { event = "meta_hand", speaker = "inner", styles = { "intimate" }, tags = { "lore" }, genre = "song", purpose = "remember",
		origin = "common", kind = "stanzas", show = 2, conditions = { combat = false } }
	for k, v in pairs(extra or {}) do r[k] = v end
	return r, en or { FRAME, S[1], S[2], S[3], S[4] }, it or { FRAME_IT, S_IT[1], S_IT[2], S_IT[3], S_IT[4] }
end

local function SongPack(id, songs)
	local reg, en, it = {}, {}, {}
	for sid, s in pairs(songs) do reg[sid], en[sid], it[sid] = s[1], s[2], s[3] end
	NS:RegisterPack({ id = id, languages = { "enUS", "itIT" }, registry = reg, texts = { enUS = en, itIT = it } })
	return Problems(id)
end

T.run("#127: a song of stanzas is said as its frame with one or two stanzas, in their order", function()
	local probs = SongPack("meta_song", { ["meta.song"] = { Song("meta.song") } })
	local p = Engine.byId["meta.song"]
	T.eq(p.kind, "stanzas", "kind stanzas")
	T.eq(p.show, 2, "show kept")
	T.eq(p.category, "lore", "a literary form")
	for k, msg in pairs(probs) do T.ok(false, "no problem for a good song: " .. k .. " " .. tostring(msg)) end
	local firsts, ordered, separated, seen = {}, true, true, {}
	local prev
	local repeated = false
	for _ = 1, 60 do
		local rec = Engine:PickEntry("meta_hand", NS:BuildContext(), "say")
		T.ok(rec and rec.id == "meta.song", "the song is picked")
		local text = rec.text
		T.ok(text:find("^A test song:\n") and text:find("\n\nSo sing it once,\nand sing it twice.$"), "the frame is kept")
		T.ok(not text:find("{stanzas}", 1, true), "the mark is gone")
		local at = {}
		for i, s in ipairs(S) do
			local a = text:find(s, 1, true)
			if a then table.insert(at, { i = i, a = a }) end
		end
		T.eq(#at, 2, "two stanzas")
		if #at == 2 then
			if at[1].a > at[2].a then ordered = false end
			if not text:find(S[at[1].i] .. "\n\n" .. S[at[2].i], 1, true) then separated = false end
			seen[at[1].i .. "-" .. at[2].i] = true
			if prev == at[1].i then repeated = true end
			prev = at[1].i
			firsts[at[1].i] = true
		end
		ADVANCE(1)
	end
	T.ok(ordered, "always in their declared order")
	T.ok(separated, "an empty line between two stanzas")
	T.ok(not repeated, "the stanza that opened the song last time does not open it again")
	local n = 0
	for _ in pairs(seen) do n = n + 1 end
	T.ok(n >= 3, "several pairs of stanzas come out (" .. n .. ")")
	NS.db.locale = "it"
	local rec = Engine:PickEntry("meta_hand", NS:BuildContext(), "say")
	T.ok(rec and rec.text:find("^Una canzone di prova:\n"), "in Italian, its Italian frame and stanzas")
	NS.db.locale = "en"
	T.eq(Gateway:PrivateReason(rec), "literary", "a song of stanzas never goes to chat (D16)")
	NS.db.disabledPacks.meta_song = true
end)

T.run("#127: the validator refuses mismatched stanzas, frames and mixed songs", function()
	local long = "the cat sat on the mat today and then it went away to sleep upon the rug\nthe dog lay by the door\n"
		.. "the bird flew high above the hay\nthe fish swam near the shore"
	local short = "the cat sat on the mat today\nthe dog lay by the door\nthe bird flew high above the hay"
	local probs = SongPack("meta_songs_bad", {
		["meta.s.count"] = { Song("meta.s.count", nil, { FRAME, S[1], S[2] }, { FRAME_IT, S_IT[1], S_IT[2] }) },
		["meta.s.frame"] = { Song("meta.s.frame", nil, { "A song with no mark:\nla la la", S[1], S[2], S[3] }) },
		["meta.s.verses"] = { Song("meta.s.verses", nil, { FRAME, S[1], short, S[3] }) },
		["meta.s.metre"] = { Song("meta.s.metre", nil, { FRAME, S[1], long, S[3] }) },
		["meta.s.langs"] = { Song("meta.s.langs", nil, { FRAME, S[1], S[2], S[3], S[4] }, { FRAME_IT, S_IT[1], S_IT[2], S_IT[3] }) },
		["meta.s.show"] = { Song("meta.s.show", { show = 3 }) },
		["meta.s.genre"] = { Song("meta.s.genre", { genre = "verse" }) },
		["meta.s.other"] = { Song("meta.s.other", nil, { FRAME, S[4], "the ant walked on the wall today\nthe bee sat on the rose\n"
			.. "the moth flew round the lamp to play\nthe wasp sat on the nose", "the eel lay in the pond all day\nthe crab sat on the sand\n"
			.. "the seal swam out into the bay\nthe frog sat on the land" }) },
	})
	T.ok(probs["E:stanzaCount:meta.s.count"], "two stanzas: at least three")
	T.ok(probs["E:stanzaFrame:meta.s.frame"], "a frame without the mark")
	T.ok(probs["E:stanzaVerses:meta.s.verses"], "a stanza with fewer verses")
	T.ok(probs["E:stanzaMetre:meta.s.metre"], "a stanza in another metre")
	T.ok(not probs["E:stanzaMetre:meta.s.verses"] and not probs["E:stanzaVerses:meta.s.metre"], "each one its own error")
	T.ok(probs["E:stanzaLangs:meta.s.langs"], "four stanzas in English, three in Italian")
	T.ok(probs["E:stanzaShow:meta.s.show"], "show 3: one or two")
	T.ok(probs["E:stanzaGenre:meta.s.genre"], "a song of stanzas is a song")
	T.ok(probs["E:stanzaMix:meta.s.other"], "a stanza of another song: never mixed")
	-- a stanza added by another pack to a good song
	SongPack("meta_song2", { ["meta.song2"] = { Song("meta.song2", nil,
		{ FRAME, (S[1]:gsub("cat", "lynx")), (S[2]:gsub("cow", "ox")), (S[3]:gsub("fox", "wolf")) },
		{ FRAME_IT, (S_IT[1]:gsub("gatta", "lince")), (S_IT[2]:gsub("mucca", "bue")), (S_IT[3]:gsub("volpe", "lupa")) }) } })
	NS:AddTexts("enUS", { ["meta.song2"] = { "the yak stood on the hill today\nthe dog lay by the door\n"
		.. "the bird flew high above the hay\nthe fish swam near the shore" } }, "meta_intruder")
	probs = Problems("meta_song2")
	T.ok(probs["E:stanzaMix:meta.song2"], "a stanza added by another pack: never mixed")
	for _, id in ipairs({ "meta_songs_bad", "meta_song2" }) do NS.db.disabledPacks[id] = true end
	T.ok(NS:RegisterPack({ id = "meta_kind", languages = { "enUS" }, registry = {
		["meta.k.show"] = { event = "meta_hand", speaker = "inner", tags = { "lore" }, show = 1 } },
		texts = { enUS = { ["meta.k.show"] = VERSE } } }) == nil, "registered")
	local bad = false
	for _, p in ipairs(Validator:Run({ packs = { "meta_kind" } }).errors) do
		if p.code == "badKind" and p.id == "meta.k.show" then bad = true end
	end
	T.ok(bad, "show without kind = stanzas: an error")
	NS.db.disabledPacks.meta_kind = true
end)

T.run("#127: the syllable estimate tells one metre from another", function()
	T.eq(Validator.Syllables("the cat sat on the mat today", "en"), 8, "eight in English")
	T.eq(Validator.Syllables("the dog lay by the door", "en"), 6, "six")
	T.eq(Validator.Syllables("will find the way to move", "en"), 6, "a silent final e is not counted")
	T.eq(Validator.Syllables("la cinghia morde la spalla", "it"), 8, "Italian: vowel groups")
	T.ok(Validator.Syllables("e poi dimentica il resto", "it") <= 9, "a synalepha joins two vowels across a space")
	T.eq(#Validator.Verses("one\n\n two \nthree\n"), 3, "the verses: the non-empty lines")
end)

NS.db.locale = "it"
