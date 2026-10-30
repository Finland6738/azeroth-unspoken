-- Tests of the language packs (#85) and of the regional packs (#101), ADR 0025. run_tests.py loads this file with the
-- folders of the download installed as LoadOnDemand (packs = "lazy"): Core/Packs.lua loads them like in the client.
-- The character starts in Durotar (Kalimdor), with a new installation (English).
local NS = ...
local Engine = NS.Engine
local Packs = NS.Packs

local function Loaded(name)
	return ADDONS[name] ~= nil and ADDONS[name].loaded == true
end

local function Calls(name)
	local n = 0
	for _, c in ipairs(LOAD_CALLS) do if c.name == name then n = n + 1 end end
	return n
end

-- phrases of the base packs with a text in the language
local function WithText(lang)
	local n = 0
	for _, p in pairs(Engine.byId) do
		if p.pack:sub(1, 5) == "base_" and p.text[lang] and #p.text[lang] > 0 then n = n + 1 end
	end
	return n
end

local function Travel(zone)
	ADVANCE(5)
	P.zone = zone
	FIRE("ZONE_CHANGED_NEW_AREA")
	ADVANCE(5)
end

local function Printed(text)
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:find(text, 1, true) then return true end
	end
	return false
end

-- every list of the selection index: no rule of a dropped pack is left behind
local function InIndex(packId)
	for _, byForm in pairs(Engine.index) do
		for _, byKey in pairs(byForm) do
			for _, list in pairs(byKey) do
				for _, p in ipairs(list) do if p.pack == packId then return true end end
			end
		end
	end
	for _, list in pairs(Engine.byEvent) do
		for _, p in ipairs(list) do if p.pack == packId then return true end end
	end
	return false
end

T.run("only the chosen language is loaded", function()
	T.eq(NS:Lang(), "en", "a new installation starts in English")
	T.ok(Loaded("AzerothUnspoken_enUS"), "the English folder is loaded")
	T.ok(not Loaded("AzerothUnspoken_itIT"), "the Italian folder is not")
	T.eq(Calls("AzerothUnspoken_itIT"), 0, "LoadAddOn was never asked for Italian")
	T.ok(WithText("en") > 900, "the English texts are in memory: " .. WithText("en"))
	T.eq(WithText("it"), 0, "no Italian phrase text is in memory")
	T.eq(Packs.textLang, "en", "phrase language at start-up")
	T.eq(NS:TextLang(), "en", "phrases in English")
	-- the interface strings of both languages stay in the base addon (small)
	T.ok(NS.languages.it and NS.languages.it.ui.opt_language ~= nil, "Italian interface strings in the base")
	-- the validator checks only the language in memory: no missing Italian text is reported
	local r = NS.Validator:Run()
	local missing = 0
	for _, pr in ipairs(r.errors) do if pr.code == "missingLang" then missing = missing + 1 end end
	T.eq(missing, 0, "no missingLang for the language not loaded")
	for _, c in ipairs(LOAD_CALLS) do T.ok(not c.combat, "loaded outside combat: " .. c.name) end
end)

T.run("the region of the character is built at login", function()
	T.eq(Packs.region, "kalimdor", "Durotar is in Kalimdor")
	T.ok(Loaded("AzerothUnspoken_Kalimdor") and Loaded("AzerothUnspoken_Kalimdor_enUS"), "Kalimdor rules and English texts")
	T.ok(not Loaded("AzerothUnspoken_Kalimdor_itIT"), "not the Italian texts of Kalimdor")
	T.ok(not Loaded("AzerothUnspoken_EasternKingdoms"), "not the other continent")
	T.ok(Engine.byId["zone.durotar.01"] ~= nil, "a Durotar phrase is registered")
	T.ok(#Engine.byId["zone.durotar.01"].text.en >= 1 and Engine.byId["zone.durotar.01"].text.it == nil, "in English only")
	T.eq(Engine.byId["zone.elwynn.01"], nil, "an Elwynn phrase is not")
	T.eq(Engine.packs.kalimdor_exploration.region, "kalimdor", "the pack knows its region")
end)

T.run("regional content appears and disappears with the zone", function()
	local loads = #LOAD_CALLS
	Travel("Elwynn Forest")
	T.eq(Packs.region, "eastern", "Eastern Kingdoms")
	T.ok(Engine.byId["zone.elwynn.01"] ~= nil, "Elwynn phrase registered")
	T.eq(Engine.byId["zone.durotar.01"], nil, "Durotar phrase dropped")
	T.eq(Engine.packs.kalimdor_exploration, nil, "Kalimdor pack dropped")
	T.ok(not InIndex("kalimdor_exploration"), "no Kalimdor rule left in byEvent or in the index")
	T.ok(Loaded("AzerothUnspoken_Kalimdor"), "the folder itself stays loaded (WoW cannot unload an addon)")
	T.eq(#LOAD_CALLS, loads + 2, "two LoadAddOn: rules and English texts of the Eastern Kingdoms")
	-- the selection sees Elwynn and not Durotar
	P.zone, P.race = "Elwynn Forest", "Human"
	local seen = false
	for _, p in ipairs(Engine:Candidates("zone", NS:BuildContext(), "say")) do
		if p.id == "zone.elwynn.01" then seen = true end
		T.ok(p.pack ~= "kalimdor_exploration", "no Kalimdor candidate in Elwynn")
	end
	T.ok(seen, "zone.elwynn.01 is a candidate in Elwynn")
	P.race = "Orc"
	-- back to Kalimdor: rebuilt from the builders, without a new LoadAddOn
	loads = #LOAD_CALLS
	local builds = Packs.stats.builds
	Travel("Durotar")
	T.eq(Packs.region, "kalimdor", "back in Kalimdor")
	T.ok(Engine.byId["zone.durotar.01"] ~= nil and #Engine.byId["zone.durotar.01"].text.en >= 1, "Durotar rebuilt with its texts")
	T.eq(Engine.byId["zone.elwynn.01"], nil, "Elwynn dropped")
	T.eq(#LOAD_CALLS, loads, "no new LoadAddOn: the folders are already loaded")
	T.eq(Packs.stats.builds, builds + 1, "one build")
	-- a place the addon does not know (no data, no map): what is built stays
	P.mapID = nil
	Travel("Nowhere Special")
	T.eq(Packs.region, "kalimdor", "unknown place: the region stays")
	T.ok(Engine.byId["zone.durotar.01"] ~= nil, "and its phrases")
	Travel("Durotar")
end)

T.run("nothing loads in combat: the step waits", function()
	local loads = #LOAD_CALLS
	P.combat = true
	Travel("Duskwood")
	T.eq(#LOAD_CALLS, loads, "no LoadAddOn in combat")
	T.ok(Engine.byId["zone.durotar.01"] ~= nil, "nothing dropped in combat")
	T.eq(Engine.byId["zone.duskwood.01"], nil, "nothing built in combat")
	T.eq(Packs.waiting, "region", "the region waits for the end of combat")
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	T.eq(Packs.waiting, nil, "done after combat")
	T.ok(Engine.byId["zone.duskwood.01"] ~= nil, "Duskwood built after combat")
	T.eq(Engine.byId["zone.durotar.01"], nil, "Kalimdor dropped after combat")
	for _, c in ipairs(LOAD_CALLS) do T.ok(not c.combat, "every LoadAddOn outside combat: " .. c.name) end
	Travel("Durotar")
end)

T.run("the language step waits for the end of combat too", function()
	local textLang, langs = Packs.textLang, Packs.textLangs
	Packs.textLang, Packs.textLangs = nil, {}
	P.combat = true
	Packs:StartLanguage()
	T.eq(Packs.waiting, "language", "waiting")
	T.eq(Packs.textLang, nil, "no language step in combat")
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	T.eq(Packs.textLang, "en", "done after combat")
	Packs.textLang, Packs.textLangs = textLang, langs
end)

T.run("changing language explains the reload and offers it", function()
	SENT = {}
	local shown, reloaded
	StaticPopupDialogs = {}
	StaticPopup_Show = function(name) shown = name end
	ReloadUI = function() reloaded = true end
	SlashCmdList.AZEROTHUNSPOKEN("language it")
	T.eq(NS:Lang(), "it", "the interface follows at once")
	T.eq(NS:TextLang(), "en", "the phrases stay in English until the reload")
	T.ok(Packs:NeedsReload(), "a reload is needed")
	T.ok(not Loaded("AzerothUnspoken_itIT"), "the Italian folder is not loaded during the session")
	T.ok(Printed("/reload"), "the message explains the reload")
	T.eq(shown, "AZEROTHUNSPOKEN_RELOAD", "the dialog is offered")
	T.ok(not reloaded, "nothing reloads without a click")
	StaticPopupDialogs.AZEROTHUNSPOKEN_RELOAD.OnAccept()
	T.ok(reloaded, "the button reloads")
	-- without StaticPopup: only the message (and the button of the settings)
	StaticPopupDialogs, StaticPopup_Show = nil, nil
	T.eq(Packs:OfferReload(), false, "no dialog without StaticPopup, no error")
	-- a phrase still comes, in English
	NS.db.pacing.globalCooldownSeconds = 0
	local rec = Engine:PickEntry("battle", NS:BuildContext(), "say")
	T.ok(rec ~= nil, "a line is still chosen")
	-- back to English: nothing to reload
	SlashCmdList.AZEROTHUNSPOKEN("language en")
	T.ok(not Packs:NeedsReload(), "English again: no reload")
	ReloadUI = nil
end)

T.run("/au packs shows the folders", function()
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("packs")
	T.ok(Printed("AzerothUnspoken_enUS"), "the English folder is listed")
	T.ok(Printed("AzerothUnspoken_itIT"), "and the Italian one")
	T.ok(Printed("region kalimdor"), "the region is shown")
end)

T.run("a missing language folder: English instead, a clear message, no error", function()
	SENT = {}
	local itIT = ADDONS.AzerothUnspoken_itIT
	ADDONS.AzerothUnspoken_itIT = nil
	local textLang, langs = Packs.textLang, Packs.textLangs
	Packs.textLang, Packs.textLangs, Packs.reported = nil, {}, {}
	NS.db.locale = "it"
	local ok, err = pcall(function() Packs:StartLanguage() end)
	T.ok(ok, "no Lua error: " .. tostring(err))
	T.eq(Packs.status.AzerothUnspoken_itIT, "failed", "the folder failed")
	T.eq(Packs.reason.AzerothUnspoken_itIT, "MISSING", "the client's reason")
	T.eq(Packs.textLang, "en", "English as the fallback")
	T.eq(NS:TextLang(), "en", "phrases in English")
	T.ok(Printed("AzerothUnspoken_itIT") and Printed("MISSING"), "the message names the folder and the reason")
	T.ok(NS.Engine:PickEntry("battle", NS:BuildContext(), "say") ~= nil, "lines still come")
	-- a second start does not repeat the message
	SENT = {}
	Packs.textLang = nil
	Packs:StartLanguage()
	T.ok(not Printed("AzerothUnspoken_itIT"), "the problem is printed once per session")
	ADDONS.AzerothUnspoken_itIT = itIT
	Packs.textLang, Packs.textLangs, Packs.reported = textLang, langs, {}
	Packs.status.AzerothUnspoken_itIT, Packs.reason.AzerothUnspoken_itIT = nil, nil
	NS.db.locale = "en"
end)

T.run("a failed load: disabled, corrupt, raising, no API", function()
	local itIT = ADDONS.AzerothUnspoken_itIT
	for _, case in ipairs({ { fail = "DISABLED", reason = "DISABLED" }, { fail = "CORRUPT", reason = "CORRUPT" },
		{ raise = "boom", reason = "ERROR" } }) do
		ADDONS.AzerothUnspoken_itIT = { meta = itIT.meta, fail = case.fail, raise = case.raise }
		Packs.status.AzerothUnspoken_itIT = nil
		local ok, loaded, reason = pcall(Packs.Load, Packs, "AzerothUnspoken_itIT")
		T.ok(ok, "no Lua error for " .. case.reason)
		T.eq(loaded, false, case.reason .. ": not loaded")
		T.eq(reason, case.reason, case.reason .. ": reason")
	end
	ADDONS.AzerothUnspoken_itIT = itIT
	Packs.status.AzerothUnspoken_itIT = nil
	local load = C_AddOns.LoadAddOn
	C_AddOns.LoadAddOn = nil
	local loaded, reason = Packs:Load("AzerothUnspoken_itIT")
	T.ok(not loaded and reason == "NO_API", "without C_AddOns.LoadAddOn: NO_API")
	C_AddOns.LoadAddOn = load
	Packs.status.AzerothUnspoken_itIT, Packs.reason.AzerothUnspoken_itIT = nil, nil
	-- neither language can be loaded: the narrator is silent, the addon works
	local enUS = ADDONS.AzerothUnspoken_enUS
	ADDONS.AzerothUnspoken_itIT, ADDONS.AzerothUnspoken_enUS = nil, nil
	local textLang, langs, status = Packs.textLang, Packs.textLangs, Packs.status
	Packs.textLang, Packs.textLangs, Packs.status, Packs.reported = nil, {}, {}, {}
	NS.db.locale = "it"
	SENT = {}
	local ok = pcall(function() Packs:StartLanguage() end)
	T.ok(ok, "no Lua error with no language folder")
	T.ok(Printed(NS:L("packs_none")), "the message says the narrator is silent")
	ADDONS.AzerothUnspoken_itIT, ADDONS.AzerothUnspoken_enUS = itIT, enUS
	Packs.textLang, Packs.textLangs, Packs.status, Packs.reported = textLang, langs, status, {}
	NS.db.locale = "en"
end)

T.run("a missing regional folder degrades to the base content", function()
	local folders = {}
	for _, name in ipairs({ "AzerothUnspoken_EasternKingdoms", "AzerothUnspoken_EasternKingdoms_enUS" }) do
		folders[name] = ADDONS[name]
		ADDONS[name] = nil
		Packs.status[name] = nil
	end
	-- the builders of the region were registered when the folder was loaded earlier: forget them, as on a fresh start
	local builders = Packs.builders.eastern
	Packs.builders.eastern = nil
	SENT = {}
	local ok, err = pcall(Travel, "Westfall")
	T.ok(ok, "no Lua error: " .. tostring(err))
	T.eq(Packs.region, "eastern", "the region is known")
	T.ok(Packs.active.eastern ~= nil and #Packs.active.eastern.ids == 0, "built with no regional pack")
	T.ok(not Printed("AzerothUnspoken_EasternKingdoms"), "a folder the client does not know is not an error")
	P.zone = "Westfall"
	T.ok(Engine:PickEntry("battle", NS:BuildContext(), "say") ~= nil, "the base content still speaks")
	for name, a in pairs(folders) do ADDONS[name] = a end
	Packs.builders.eastern = builders
	Travel("Durotar")
end)

T.run("DropPack frees rules, frames and vocabulary of a pack", function()
	NS:RegisterPack({ id = "t_drop", languages = { "enUS" },
		registry = { ["t.drop.1"] = { event = "battle", speaker = "character", styles = { "epic" }, conditions = { zone = "Durotar" } },
			["t.drop.2"] = { event = { "battle", "victory" }, speaker = "inner", styles = { "epic" } } },
		texts = { enUS = { ["t.drop.1"] = "one", ["t.drop.2"] = "two" } },
		frames = { { event = "battle", en = "{line}" } },
		vocab = { t_drop_words = { { en = "word" } } } })
	T.ok(InIndex("t_drop"), "registered")
	local n = Engine:DropPack("t_drop")
	T.eq(n, 2, "two rules dropped")
	T.eq(Engine.byId["t.drop.1"], nil, "byId")
	T.ok(not InIndex("t_drop"), "byEvent and index")
	for _, list in pairs(Engine.frames) do for _, f in ipairs(list) do T.ok(f.pack ~= "t_drop", "frames") end end
	T.eq(#Engine.vocab.t_drop_words, 0, "vocabulary")
	T.eq(Engine.packs.t_drop, nil, "the pack")
	for _, id in ipairs(Engine.packOrder) do T.ok(id ~= "t_drop", "packOrder") end
	T.eq(Engine:DropPack("t_drop"), nil, "dropping twice does nothing")
	-- the same pack can be registered again (a regional pack on the way back)
	NS:RegisterPack({ id = "t_drop", registry = { ["t.drop.1"] = { event = "battle", speaker = "character", styles = { "epic" } } },
		texts = { enUS = { ["t.drop.1"] = "one" } } })
	T.ok(Engine.byId["t.drop.1"] ~= nil, "registered again")
	Engine:DropPack("t_drop")
end)

T.run("an external regional pack declared in its .toc", function()
	-- a pack of a third party: the .toc declares the region and the language, the catalog finds it
	ADD_ADDON("MyRegionPack", { meta = { ["X-AzerothUnspoken-Region"] = "Kalimdor" }, load = function()
		AzerothUnspoken:RegisterRegionalPack("kalimdor", function()
			return { id = "my_kalimdor", registry = { ["my.k.1"] = { event = "zone", speaker = "inner", styles = { "ancient" },
				conditions = { zone = "Durotar" } } } }
		end)
	end })
	ADD_ADDON("MyRegionPack_enUS", { meta = { ["X-AzerothUnspoken-Region"] = "kalimdor", ["X-AzerothUnspoken-Language"] = "enUS" },
		load = function()
			AzerothUnspoken:RegisterRegionalTexts("kalimdor", "enUS", "my_kalimdor", function() return { ["my.k.1"] = "Red earth." } end)
		end })
	Packs:Discover()
	T.eq(Packs.catalog.MyRegionPack.region, "kalimdor", "region from the metadata (lower case)")
	T.eq(Packs.catalog.MyRegionPack_enUS.lang, "en", "language from the metadata")
	Travel("Elwynn Forest")
	Travel("Durotar")
	T.ok(Loaded("MyRegionPack") and Loaded("MyRegionPack_enUS"), "loaded with the region")
	T.ok(Engine.byId["my.k.1"] ~= nil and Engine.VariantText(Engine.byId["my.k.1"].text.en[1]) == "Red earth.", "rule and text")
	T.eq(type(Engine.byId["my.k.1"].text.en[1]), "string", "the text is compact (attributed to its rule's pack)")
end)
