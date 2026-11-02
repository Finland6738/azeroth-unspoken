-- Azeroth Unspoken: verses pack (step L0, issue #115). A prototype of literary forms: inscriptions and solemn
-- formulas, verses remembered on return, inn rhymes, road songs, a walking song of stanzas, sayings for an encounter,
-- a hymn and a lament, each in English and Italian. The rules are here, the texts in Texts_enUS.lua and
-- Texts_itIT.lua; all three are written through the authoring archive (tools/archive, CONTRIBUTING.md), which also
-- keeps the editorial record of each piece (metre, rhyme scheme, lore and originality review: authoring/pieces.csv).
--
-- Rules for these texts (CONTRIBUTING.md, "Literary forms"; owner decisions in issue #130):
--   - never in public chat (D16): every piece is spoken by a private voice, `inner` or `npc`;
--   - invented songs and legends are always attributed to a voice (an inscription, a singer, a saying) and never
--     stated as fact (D7); no invented proper names, no canonical character as the author;
--   - culture is never deduced from race (D17): no piece has a race or faction condition; `origin` says whose the
--     piece is (common, personal, culture:<people>), matched against the culture the user chooses (#124);
--   - rare: never in combat, a cooldown of three to seven days per piece, and the literary category `lore` (#118): at
--     most about one piece every 20-30 minutes at intensity 50, following the setting "literary forms";
--   - the literary metadata of #119 on every piece: `genre` (the form), `purpose` (what it is for), `origin`; the
--     genre x situation matrix and the warning words of #120 (Data/Themes.lua) give no warning on this pack;
--   - the attribution on the first line, then one verse per line (#117: real line breaks, read one at a time in the
--     private narrator, #126); at most 255 bytes a variant, well under the reading limit of 600.
--
-- `/au event lore_test` shows one piece at a time, with no condition and no cooldown, to try them all in game: the
-- twins are made by Twins.lua from these rules.
local AU = AzerothUnspoken

AU:RegisterPack({
	id = "versi",
	name = "Verses: literary forms (prototype)",
	languages = { "enUS", "itIT" },
	-- manual only: nothing in the game fires it, and chance 0 keeps the Director away from it
	events = { lore_test = { category = "lore", chance = 0, cooldown = 0 },
		-- N7 (#219): the songs of a nemesis's fall, chosen by Systems/Nemesis.lua (never spoken by the Director)
		nemesis_song = { category = "lore", chance = 0, cooldown = 0 } },
	registry = {
		------------------------------------------------------------------------
		-- Inscriptions and solemn formulas: first visit to a ruin or a sacred place
		------------------------------------------------------------------------
		["versi.inscription.ruin.01"] = { event = "zone", category = "lore", speaker = "inner", styles = { "ancient", "ceremonial" },
			tags = { "lore", "genre_inscription", "origin_carved" }, depth = { "literary", "elevated" }, cooldown = 604800,
			genre = "epigraph", purpose = "remember", origin = "common",
			conditions = { combat = false, firstVisit = true, place = { tags = "ruin" } } },
		["versi.inscription.ruin.02"] = { event = "zone", category = "lore", speaker = "inner", styles = { "ancient", "intimate" },
			tags = { "lore", "genre_formula", "origin_carved" }, depth = { "literary", "elevated" }, cooldown = 604800,
			genre = "epigraph", purpose = "remember", origin = "common",
			conditions = { combat = false, firstVisit = true, place = { tags = "ruin" } } },
		["versi.inscription.sacred.01"] = { event = "zone", category = "lore", speaker = "inner", styles = { "ceremonial", "ancient" },
			tags = { "lore", "genre_formula", "origin_carved" }, depth = { "literary", "elevated" }, cooldown = 604800,
			genre = "epigraph", purpose = "warn", origin = "common",
			conditions = { combat = false, firstVisit = true, place = { tags = "sacred", ["not"] = { tags = { "dark", "cursed" } } } } },
		["versi.inscription.names.01"] = { event = "zone", category = "lore", speaker = "inner", styles = { "ancient", "intimate" },
			tags = { "lore", "genre_inscription", "origin_carved" }, depth = { "literary", "elevated" }, cooldown = 604800,
			genre = "epigraph", purpose = "remember", origin = "common",
			conditions = { combat = false, firstVisit = true, place = { tags = { "ruin", "sacred" } } } },

		------------------------------------------------------------------------
		-- Verses remembered on return (memory_return: each one declares the memory it needs)
		------------------------------------------------------------------------
		["versi.return.verse.01"] = { event = "memory_return", category = "lore", speaker = "inner", styles = { "intimate", "ancient" },
			tags = { "lore", "genre_verse", "origin_remembered" }, depth = { "literary", "elevated" }, cooldown = 432000,
			genre = "verse", purpose = "remember", origin = "common",
			conditions = { combat = false, daysSinceLastVisit = 7, repeatVisit = true } },
		["versi.return.verse.02"] = { event = "memory_return", category = "lore", speaker = "inner", styles = { "intimate", "epic" },
			tags = { "lore", "genre_verse", "origin_sung", "topic:death" }, depth = { "literary", "elevated" }, cooldown = 432000,
			genre = "song", purpose = "advise", origin = "common",
			conditions = { combat = false, lastVisitBad = true } },
		["versi.return.verse.03"] = { event = "memory_return", category = "lore", speaker = "inner", styles = { "intimate", "everyday" },
			tags = { "lore", "genre_nursery_rhyme", "origin_remembered" }, depth = { "natural", "literary" }, cooldown = 432000,
			genre = "verse", purpose = "amuse", origin = "common",
			conditions = { combat = false, visitsMin = 3 } },

		------------------------------------------------------------------------
		-- Inn rhymes: the innkeeper's voice (ambient dialogue, or meeting an innkeeper)
		------------------------------------------------------------------------
		["versi.inn.rhyme.01"] = { event = { "npcd_innkeeper_sit", "npc_meet" }, category = "lore", speaker = "npc", styles = { "everyday", "intimate" },
			tags = { "lore", "genre_inn_rhyme", "origin_sung", "other.role:innkeeper" }, depth = { "natural", "literary" }, cooldown = 259200,
			genre = "song", purpose = "amuse", origin = "common",
			conditions = { combat = false, other = { role = "innkeeper" }, time = { "dusk", "night" } } },
		["versi.inn.rhyme.02"] = { event = "npcd_innkeeper_news", category = "lore", speaker = "npc", styles = { "everyday", "ironic" },
			tags = { "lore", "genre_inn_rhyme", "origin_spoken", "other.role:innkeeper" }, depth = { "natural", "literary" }, cooldown = 259200,
			genre = "verse", purpose = "amuse", origin = "common",
			conditions = { combat = false, other = { role = "innkeeper" } } },

		------------------------------------------------------------------------
		-- Road songs: a journey by spell (travel), with a short form for the natural depth
		------------------------------------------------------------------------
		["versi.road.song.01"] = { event = "travel", category = "lore", speaker = "inner", styles = { "intimate", "everyday" },
			tags = { "lore", "genre_road_song", "origin_sung" }, cooldown = 345600,
			genre = "song", purpose = "accompany", origin = "common",
			conditions = { combat = false, spell = { "hearthstone", "pietra del ritorno" } } },
		["versi.road.song.02"] = { event = "travel", category = "lore", speaker = "inner", styles = { "intimate", "ironic" },
			tags = { "lore", "genre_road_song", "origin_sung" }, cooldown = 345600,
			genre = "song", purpose = "accompany", origin = "common",
			conditions = { combat = false } },

		------------------------------------------------------------------------
		-- A walking song of interchangeable stanzas (#127, ADR 0043): a long ride (journey); the frame holds the
	-- attribution and the refrain, two of the four stanzas are said, in their order
		------------------------------------------------------------------------
		["versi.road.stanzas.01"] = { event = "journey", category = "lore", speaker = "inner", styles = { "everyday", "intimate" },
			tags = { "lore", "genre_road_song", "origin_sung" }, depth = { "literary", "elevated" }, cooldown = 345600,
			genre = "song", purpose = "accompany", origin = "common",
			kind = "stanzas", show = 2,
			conditions = { combat = false } },

		------------------------------------------------------------------------
		-- Sayings for an encounter: someone we know acts toward us (trust, wariness)
		------------------------------------------------------------------------
		["versi.meet.trust.01"] = { event = "other_action", category = "lore", speaker = "inner", styles = { "intimate", "ancient" },
			tags = { "lore", "genre_saying", "origin_spoken", "rel.relation:friend" }, depth = { "literary", "elevated" }, cooldown = 432000,
			genre = "formula", purpose = "advise", origin = "common",
			conditions = { combat = false, other = { actions = { "group", "invite", "trade", "emote", "ally", within = 60 }, relation = { "friend", "comrade" } } } },
		["versi.meet.wary.01"] = { event = "other_action", category = "lore", speaker = "inner", styles = { "ironic", "intimate" },
			tags = { "lore", "genre_proverb", "origin_spoken", "rel.relation:wary" }, depth = { "natural", "literary" }, cooldown = 432000,
			genre = "formula", purpose = "warn", origin = "common",
			conditions = { combat = false, other = { actions = { "trade", "invite", "emote", "group", within = 60 }, relation = { "wary", "rival", "disliked", "feared", "enemy" } } } },

		------------------------------------------------------------------------
		-- Hymn (pray) and lament (a boss fight lost)
		------------------------------------------------------------------------
		["versi.hymn.pray.01"] = { event = "pray", category = "lore", speaker = "inner", styles = { "ceremonial", "intimate" },
			tags = { "lore", "genre_hymn", "origin_sung", "topic:religion", "faith:devout" }, depth = { "literary", "elevated" }, cooldown = 259200,
			genre = "song", purpose = "bless", origin = "common",
			conditions = { combat = false, time = { "dusk", "night" } } },
		["versi.lament.wipe.01"] = { event = "encounter_end", category = "lore", speaker = "inner", styles = { "tragic", "ceremonial" },
			tags = { "lore", "genre_lament", "origin_spoken", "topic:death" }, depth = { "literary", "elevated" }, cooldown = 604800,
			genre = "verse", purpose = "mourn", origin = "common",
			conditions = { combat = false, place = { encounterResult = "wipe" } } },

		------------------------------------------------------------------------
		-- Songs of a nemesis's fall (N7, #219): never spoken here; Systems/Nemesis.lua chooses one when a nemesis falls
		-- by the character's hand and puts it in the songbook (ids and times only). `arc.from` is the state it fell in
		------------------------------------------------------------------------
		["versi.nemesis.song.01"] = { event = "nemesis_song", category = "lore", speaker = "inner", styles = { "epic", "everyday" },
			tags = { "lore", "genre_victory_song", "origin_sung", "topic:death" }, depth = { "literary", "elevated" }, cooldown = 604800,
			genre = "song", purpose = "celebrate", origin = "common",
			conditions = { combat = false, arc = { from = "MARKED", id = "nemesis" } } },
		["versi.nemesis.song.02"] = { event = "nemesis_song", category = "lore", speaker = "inner", styles = { "epic", "tragic" },
			tags = { "lore", "genre_feud_song", "origin_sung", "topic:death" }, depth = { "literary", "elevated" }, cooldown = 604800,
			genre = "song", purpose = "remember", origin = "common",
			conditions = { combat = false, arc = { from = { "HAUNTED", "SWORN" }, id = "nemesis" } } },
		["versi.nemesis.song.03"] = { event = "nemesis_song", category = "lore", speaker = "inner", styles = { "ancient", "tragic" },
			tags = { "lore", "genre_lament", "origin_spoken", "topic:death" }, depth = { "literary", "elevated" }, cooldown = 604800,
			genre = "verse", purpose = "mourn", origin = "common",
			conditions = { combat = false, arc = { id = "nemesis" } } },
	},
})
