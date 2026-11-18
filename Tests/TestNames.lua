-- #281: how the addon names the player's own character (names.player: first | last | both)
-- The resolver (Core/ContextResolver.lua: NS.SplitName, NS:PlayerName), Total RP 3's last name
-- (Integration/TotalRP3.lua), the setting (Core/Config.lua), the narrator and the chat (Integration/ChatGateway.lua),
-- the settings row and /au name.
local NS = ...
local Gateway, Config, TotalRP3, Compat = NS.Gateway, NS.Config, NS.TotalRP3, NS.Compat

local function Reset()
	SENT = {}
	P.name = "Garrosh"
	AddOn_TotalRP3 = nil
	NS.db.modules.totalRP3 = true
	NS.db.names = { player = "both" }
	NS.db.chat.emoteMarkup = false
end

local function Printed(text)
	for _, s in ipairs(SENT) do
		if s:find("^PRINT:") and s:find(text, 1, true) then return true end
	end
	return false
end

T.run("the WoW name split into first name and surname", function()
	local f, l = NS.SplitName("Arthas")
	T.eq(f, "Arthas", "one word: the first name")
	T.eq(l, nil, "one word: no surname")
	f, l = NS.SplitName("Arthas Menethil")
	T.eq(f, "Arthas", "two words: the first name")
	T.eq(l, "Menethil", "two words: the surname")
	f, l = NS.SplitName("  Jaina   Proudmoore  ")
	T.eq(f, "Jaina", "spaces trimmed")
	T.eq(l, "Proudmoore", "repeated spaces collapsed")
	f, l = NS.SplitName("Anduin Llane Wrynn")
	T.eq(f, "Anduin", "three words: the first one is the first name")
	T.eq(l, "Llane Wrynn", "the rest is the surname")
	f, l = NS.SplitName("Élise\tDuchêne")
	T.eq(f, "Élise", "a tab separates too, accented letters stay whole")
	T.eq(l, "Duchêne", "and the accented surname")
	T.eq(NS.SplitName(""), nil, "an empty name: nil")
	T.eq(NS.SplitName("   "), nil, "a blank name: nil")
	T.eq(NS.SplitName(nil), nil, "no name: nil")
	T.eq(NS.SplitName(42), nil, "not a string: nil")
end)

T.run("each of the three choices, with a WoW name", function()
	Reset()
	P.name = "Arthas Menethil"
	T.eq(NS:PlayerName(), "Arthas Menethil", "default both: the whole name")
	NS.db.names.player = "first"
	T.eq(NS:PlayerName(), "Arthas", "first: the first name")
	NS.db.names.player = "last"
	T.eq(NS:PlayerName(), "Menethil", "last: the surname")
	T.eq(NS:BuildContext().player, "Menethil", "the context follows the setting")
	T.eq(NS:PlayerName("both"), "Arthas Menethil", "an explicit style wins over the setting")
	P.name = "Garrosh"
	for _, style in ipairs({ "first", "last", "both" }) do
		NS.db.names.player = style
		T.eq(NS:PlayerName(), "Garrosh", style .. ": a one-word name is always the first name")
	end
	NS.db.names = nil
	T.eq(NS:PlayerName(), "Garrosh", "a missing section does not raise")
	Reset()
end)

T.run("Total RP 3: first and last name", function()
	Reset()
	P.name = "Arthas Menethil"
	FAKE_TRP3({ first = "Lord Arthas", last = "of Lordaeron" })
	T.eq(NS:PlayerName(), "Lord Arthas of Lordaeron", "both: the RP first name and last name")
	NS.db.names.player = "first"
	T.eq(NS:PlayerName(), "Lord Arthas", "first: the RP first name, never split")
	NS.db.names.player = "last"
	T.eq(NS:PlayerName(), "of Lordaeron", "last: the RP last name")
	T.eq(TotalRP3:GetLastName(), "of Lordaeron", "GetLastName reads the profile")
	NS.db.modules.totalRP3 = false
	T.eq(TotalRP3:GetLastName(), nil, "module off: no last name")
	T.eq(NS:PlayerName(), "Menethil", "module off: the WoW name, split")
	Reset()
end)

T.run("Total RP 3: first name only, none, a broken GetLastName", function()
	Reset()
	P.name = "Arthas Menethil"
	FAKE_TRP3({ first = "Uther" })
	T.eq(NS:PlayerName(), "Uther", "no RP last name: both gives the first name")
	NS.db.names.player = "last"
	T.eq(NS:PlayerName(), "Uther", "no RP last name: last gives the first name, not the WoW surname")
	FAKE_TRP3({ first = "Uther", last = "" })
	T.eq(TotalRP3:GetLastName(), nil, "an empty last name is nil")
	T.eq(NS:PlayerName(), "Uther", "and the first name stays")
	FAKE_TRP3({ first = "Uther", last = "   " })
	T.eq(NS:PlayerName(), "Uther", "a blank last name is no last name")

	NS.db.names = { player = "both" }
	FAKE_TRP3({ last = "Lightbringer" })
	T.eq(NS:PlayerName(), "Arthas Menethil", "no RP first name: the WoW name, whatever the last name")
	FAKE_TRP3({ first = "  ", last = "Lightbringer" })
	T.eq(NS:PlayerName(), "Arthas Menethil", "a blank RP first name: the WoW name")
	FAKE_TRP3({})
	T.eq(NS:PlayerName(), "Arthas Menethil", "an empty profile: the WoW name")

	FAKE_TRP3({ first = "Uther", last = "Lightbringer", lastBroken = true })
	T.eq(TotalRP3:GetLastName(), nil, "a GetLastName that raises: nil, no error")
	T.eq(NS:PlayerName(), "Uther", "and the first name only")
	FAKE_TRP3({ first = "Uther", last = "Lightbringer", noLastName = true })
	T.eq(TotalRP3:GetLastName(), nil, "an older Total RP 3 without GetLastName: nil")
	T.eq(NS:PlayerName(), "Uther", "and the first name only")
	Compat:Probe()
	T.eq(Compat:State("integration:totalRP3"), Compat.AVAILABLE, "the name is still read")
	T.ok(tostring(Compat.caps["integration:totalRP3"].detail):find("GetLastName missing", 1, true),
		"the capability says the last name is missing")
	FAKE_TRP3({ first = "Uther", last = "Lightbringer" })
	Compat:Probe()
	T.ok(tostring(Compat.caps["integration:totalRP3"].detail):find(":GetLastName", 1, true), "and says it is read")

	-- a Total RP 3 whose current user raises: the WoW name, no error
	AddOn_TotalRP3 = { Player = { GetCurrentUser = function() error("API changed") end } }
	T.eq(TotalRP3:GetLastName(), nil, "a broken Total RP 3: no last name")
	T.eq(NS:PlayerName(), "Arthas Menethil", "a broken Total RP 3: the WoW name")
	Reset()
	Compat:Probe()
end)

T.run("the setting: default, validation, saved values", function()
	Reset()
	T.eq(Config.defaults.names.player, "both", "the default is both")
	T.ok(Config:Set("names.player", "last"), "Set accepts last")
	T.eq(NS.db.names.player, "last", "saved")
	T.ok(not Config:Set("names.player", "nickname"), "Set refuses an unknown value")
	T.eq(NS.db.names.player, "last", "and keeps the previous one")

	-- saved files: no section (written before #281), a known value, an unknown value, a wrong type
	local g, c = AzerothUnspokenDB, AzerothUnspokenCharacterDB
	local db, cdb, gdb = NS.db, NS.cdb, NS.gdb
	local function LoadWith(settings, schema)
		AzerothUnspokenDB = { schemaVersion = schema or Config.SCHEMA_VERSION, settings = settings }
		AzerothUnspokenCharacterDB = { schemaVersion = Config.SCHEMA_VERSION }
		Config:Load()
		return NS.db.names.player, Config.issues
	end
	local function Has(issues, text)
		for _, s in ipairs(issues) do if s:find(text, 1, true) then return true end end
		return false
	end
	local v, issues = LoadWith({ locale = "en" }, 6)
	T.eq(v, "both", "an older file without the section gets both")
	T.ok(not Has(issues, "names.player"), "and that is not a problem to report")
	v = LoadWith({ names = { player = "first" } })
	T.eq(v, "first", "a saved first stays")
	v = LoadWith({ names = { player = "last" } })
	T.eq(v, "last", "a saved last stays")
	v, issues = LoadWith({ names = { player = "full" } })
	T.eq(v, "both", "an unknown value goes back to both")
	T.ok(Has(issues, "names.player: full -> both"), "and is reported")
	v = LoadWith({ names = { player = 3 } })
	T.eq(v, "both", "a wrong type goes back to both")
	v = LoadWith({ names = "both" })
	T.eq(v, "both", "a section that is not a table is rebuilt")
	AzerothUnspokenDB, AzerothUnspokenCharacterDB = g, c
	NS.db, NS.cdb, NS.gdb = db, cdb, gdb
	Reset()
end)

T.run("the narrator and the chat with a two-word name", function()
	Reset()
	P.name = "Arthas Menethil"
	local rec = { text = "sighs.", form = "emote", speaker = "narrator" }
	T.eq(Gateway:Display(rec, NS:BuildContext()), "Arthas Menethil sighs.", "narrator, both")
	NS.db.names.player = "first"
	T.eq(Gateway:Display(rec, NS:BuildContext()), "Arthas sighs.", "narrator, first")
	NS.db.names.player = "last"
	T.eq(Gateway:Display(rec, NS:BuildContext()), "Menethil sighs.", "narrator, last")

	NS.db.names = { player = "both" }
	T.eq(Gateway:TextFor("emote", "sighs.", "SAY", NS:BuildContext().player), "Arthas Menethil sighs.",
		"an emote on /say carries the whole name")
	NS.db.names.player = "first"
	T.eq(Gateway:TextFor("emote", "sighs.", "PARTY"), "Arthas sighs.", "without a name given, the setting decides")
	NS.db.names.player = "last"
	T.eq(Gateway:TextFor("emote", "sighs.", "SAY", ""), "Menethil sighs.", "an empty name given: the setting decides")
	T.eq(Gateway:TextFor("emote", "sighs.", "EMOTE"), "sighs.", "on /e the game writes the name itself")
	NS.db.chat.emoteMarkup = true
	T.eq(Gateway:TextFor("emote", "sighs.", "SAY"), "*sighs.*", "with the *markup* no name is written")

	NS.db.chat.emoteMarkup = false
	NS.db.names = { player = "both" }
	FAKE_TRP3({ first = "Uther", last = "Lightbringer" })
	T.eq(Gateway:Display(rec, NS:BuildContext()), "Uther Lightbringer sighs.", "narrator, Total RP 3 first and last name")
	T.eq(Gateway:TextFor("emote", "sighs.", "SAY"), "Uther Lightbringer sighs.", "chat, Total RP 3 first and last name")
	Reset()
end)

T.run("the settings row and /au name", function()
	Reset()
	P.name = "Arthas Menethil"
	local row = NS.SettingsFrame:Row("opt_namestyle")
	T.ok(row and row.button, "the row is in the settings")
	T.ok(NS.languages.en.ui.opt_namestyle and NS.languages.it.ui.opt_namestyle, "its label in English and Italian")
	T.ok(NS.languages.en.ui.opt_namestyle_tip and NS.languages.it.ui.opt_namestyle_tip, "its tip in English and Italian")
	for _, style in ipairs(Config.NAME_STYLES) do
		T.ok(NS.languages.en.ui["namestyle_" .. style] and NS.languages.it.ui["namestyle_" .. style],
			style .. ": the value in English and Italian")
	end
	row.button:Click()
	T.eq(NS.db.names.player, "first", "both -> first")
	row.button:Click()
	T.eq(NS.db.names.player, "last", "first -> last")
	row.button:Click()
	T.eq(NS.db.names.player, "both", "last -> both")

	SENT = {}
	NS.Commands.Run("name first")
	T.eq(NS.db.names.player, "first", "/au name first")
	T.ok(Printed("Arthas"), "it says the resulting name")
	SENT = {}
	NS.Commands.Run("name last")
	T.eq(NS.db.names.player, "last", "/au name last")
	T.ok(Printed("Menethil"), "it says the surname")
	NS.Commands.Run("name both")
	T.eq(NS.db.names.player, "both", "/au name both")
	SENT = {}
	NS.Commands.Run("name")
	T.eq(NS.db.names.player, "both", "without an argument nothing changes")
	T.ok(Printed("Arthas Menethil"), "it shows the choice and the name")
	SENT = {}
	NS.Commands.Run("name nickname")
	T.eq(NS.db.names.player, "both", "an unknown value changes nothing")
	T.ok(Printed("first, last, both"), "and lists the values")
	T.ok(NS.Keywords.registry.name.last, "the words of /au name are registered (English only)")
	Reset()
end)
