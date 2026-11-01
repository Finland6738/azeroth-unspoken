-- Azeroth Unspoken: language packs and regional packs (#85, #101, ADR 0025).
-- One download, several folders, fully automatic (decision D4 in #130):
--   - the base addon holds the engine, the rules, frames, vocabulary and the interface strings of every language;
--   - the phrase texts live in one LoadOnDemand folder per language (AzerothUnspoken_enUS, AzerothUnspoken_itIT):
--     at start-up only the folder of the chosen language is loaded, never the others;
--   - a region (a continent) has a folder of rules (AzerothUnspoken_Kalimdor) and one folder of texts per language
--     (AzerothUnspoken_Kalimdor_enUS). They are loaded when the character enters the region and their rules leave the
--     engine's tables when the character leaves it. WoW cannot unload an addon: a regional folder registers builders
--     (functions that return its tables) and the builders run again on the way back. What stays in memory after
--     leaving is the code of the builders with its strings, not the tables built from them.
-- Every load waits for the end of combat. Nothing here asks the user to choose a pack: races, classes, weather and
-- situations are conditions inside the loaded content. Every client call goes through Compat (#82: not yet tested
-- in the client) and a missing or broken folder is reported once, with a fallback, never as a Lua error.
local ADDON, NS = ...
local Compat = NS.Compat
local Packs = NS:RegisterModule("packs")
NS.Packs = Packs

-- metadata of the .toc that declare what a folder holds (also for external packs, see PACK_FORMAT.md)
Packs.META_LANGUAGE = "X-AzerothUnspoken-Language"
Packs.META_REGION = "X-AzerothUnspoken-Region"
Packs.MAX_ADDONS = 1000   -- addons listed at most when looking for packs

-- The folders of the download. They are known even when the client cannot list addons or read their metadata.
Packs.BUILTIN = {
	{ name = ADDON .. "_enUS", lang = "en" },
	{ name = ADDON .. "_itIT", lang = "it" },
	{ name = ADDON .. "_Kalimdor", region = "kalimdor" },
	{ name = ADDON .. "_Kalimdor_enUS", region = "kalimdor", lang = "en" },
	{ name = ADDON .. "_Kalimdor_itIT", region = "kalimdor", lang = "it" },
	{ name = ADDON .. "_EasternKingdoms", region = "eastern" },
	{ name = ADDON .. "_EasternKingdoms_enUS", region = "eastern", lang = "en" },
	{ name = ADDON .. "_EasternKingdoms_itIT", region = "eastern", lang = "it" },
}

---@class AUPackFolder a folder of the download (or of an external pack) that the base addon loads on demand
---@field name string folder (addon) name
---@field lang? string short language code of its phrase texts
---@field region? string region key (the continent token of ctx.place.continent)
---@field builtin? boolean

Packs.catalog = {}      -- [name] = AUPackFolder
Packs.status = {}       -- [name] = "loaded" | "failed"
Packs.reason = {}       -- [name] = reason of the failure (the client's, or NO_API / ERROR)
Packs.textLangs = {}    -- [lang] = true: the phrase texts of that language are in memory
Packs.textLang = nil    -- language of the phrase texts loaded at start-up (nil until the language step ran)
Packs.builders = {}     -- [region] = { rules = { fn, ... }, texts = { [lang] = { { fn =, pack = }, ... } } }
Packs.active = {}       -- [region] = { ids = { pack id, ... }, langs = { [lang] = true } }: built regions
Packs.region = nil      -- region the character is in (nil = not known yet)
Packs.waiting = nil     -- a step that waits for the end of combat: "language" | "region"
Packs.pinned = false    -- ActivateAll: every region stays built (tests and tools)
Packs.stats = { loads = 0, builds = 0, drops = 0, deferred = 0 }
Packs.reported = {}     -- [message key .. name] = true: each problem is printed once per session
Packs.attempts = {}     -- [name] = failed LoadAddOn calls this session (#166)
Packs.empty = {}        -- [name] = true: the folder loaded but registered no content (#166)
Packs.registrations = 0 -- calls to the NS:Add* / NS:Register* functions so far (see WatchRegistrations)

-- A load that failed for one of these reasons cannot succeed later in the session (the folder is not there, is
-- disabled, damaged or for another version): it is not tried again. Any other failure (an error raised by the call, a
-- reason the client gave that is not in the list) gets MAX_ATTEMPTS tries in all.
Packs.PERMANENT = { MISSING = true, DISABLED = true, NO_API = true, CORRUPT = true, INTERFACE_VERSION = true,
	DEP_MISSING = true, DEP_DISABLED = true, DEP_CORRUPT = true, DEP_INTERFACE_VERSION = true }
Packs.MAX_ATTEMPTS = 3

local function InCombat()
	return Compat.SafeCall("InCombatLockdown") == true or Compat.SafeCall("UnitAffectingCombat", "player") == true
end
Packs.InCombat = InCombat

local function RegionKey(v)
	if type(v) ~= "string" then return nil end
	v = NS.Lower(v):gsub("[^a-z_]", "")
	if v == "" then return nil end
	return v
end

local function LangName(code)
	local l = code and NS.languages[code]
	return l and l.name or tostring(code)
end

---------------------------------------------------------------------------
-- Catalog
---------------------------------------------------------------------------
---Builds the catalog: the built-in folders, plus every installed addon that declares a language or a region in its
---.toc (X-AzerothUnspoken-Language, X-AzerothUnspoken-Region). Without the listing APIs only the built-in ones.
function Packs:Discover()
	local catalog = {}
	for _, b in ipairs(self.BUILTIN) do
		catalog[b.name] = { name = b.name, lang = b.lang, region = b.region, builtin = true }
	end
	local state, n = Compat.Query("C_AddOns.GetNumAddOns")
	if state == Compat.AVAILABLE and type(n) == "number" then
		for i = 1, math.min(n, self.MAX_ADDONS) do
			local _, name = Compat.Query("C_AddOns.GetAddOnInfo", i)
			if type(name) == "string" and name ~= ADDON and not catalog[name] then
				local _, lang = Compat.Query("C_AddOns.GetAddOnMetadata", name, self.META_LANGUAGE)
				local _, region = Compat.Query("C_AddOns.GetAddOnMetadata", name, self.META_REGION)
				lang, region = NS.Engine.LangCode(lang), RegionKey(region)
				if lang or region then catalog[name] = { name = name, lang = lang, region = region } end
			end
		end
	end
	self.catalog = catalog
	return catalog
end

-- folders of the catalog that match, in name order (deterministic): region nil = not regional
local function Folders(region, lang)
	local out = {}
	for name, f in pairs(Packs.catalog) do
		if f.region == region and f.lang == lang then table.insert(out, name) end
	end
	table.sort(out)
	return out
end
Packs.Folders = Folders

---Is the folder loaded (by us, by the client because it is not LoadOnDemand, or by a test)?
---@param name string
---@return boolean
function Packs:IsLoaded(name)
	if self.status[name] == "loaded" then return true end
	local state, loadedOrLoading, loaded = Compat.Query("C_AddOns.IsAddOnLoaded", name)
	if state ~= Compat.AVAILABLE then return false end
	if loaded ~= nil then return loaded == true end
	return loadedOrLoading == true
end

---Does the client know the folder? nil if it cannot tell.
---@param name string
---@return boolean?
function Packs:Exists(name)
	local state, exists = Compat.Query("C_AddOns.DoesAddOnExist", name)
	if state ~= Compat.AVAILABLE or type(exists) ~= "boolean" then return nil end
	return exists
end

---Counts the calls to the registration functions of the addon (NS:AddTexts, NS:RegisterPack, NS:RegisterRegionalPack,
---NS:RegisterNPCs...): a folder that registered nothing when it loaded is empty (#166). Wraps the functions that exist
---now, once; the folders load later.
function Packs:WatchRegistrations()
	if self.watching then return end
	self.watching = true
	for key, fn in pairs(NS) do
		if type(key) == "string" and type(fn) == "function" and (key:sub(1, 3) == "Add" or key:sub(1, 8) == "Register") then
			NS[key] = function(...)
				Packs.registrations = Packs.registrations + 1
				return fn(...)
			end
		end
	end
end

-- a folder that failed and cannot succeed now: permanent reason, or too many tries
local function GivenUp(self, name)
	if self.status[name] ~= "failed" then return false end
	return self.PERMANENT[self.reason[name]] == true or (self.attempts[name] or 0) >= self.MAX_ATTEMPTS
end

---Loads a folder with C_AddOns.LoadAddOn. Never in combat (the caller defers). Never raises. A failure that cannot
---change during the session is remembered (no new call on the next region change); a load that works but registers
---nothing is reported once as empty.
---@param name string
---@return boolean ok
---@return string? reason the client's reason (MISSING, DISABLED, DEP_MISSING, CORRUPT, INTERFACE_VERSION...), or
---NO_API when the client has no LoadAddOn, ERROR when the call raised
function Packs:Load(name)
	if self:IsLoaded(name) then
		self.status[name] = "loaded"
		return true
	end
	if GivenUp(self, name) then return false, self.reason[name] end
	local before = self.registrations
	local state, loaded, reason = Compat.Query("C_AddOns.LoadAddOn", name)
	if state == Compat.MISSING then
		reason = "NO_API"
	elseif state ~= Compat.AVAILABLE then
		reason = "ERROR"
	elseif loaded ~= true then
		reason = type(reason) == "string" and reason ~= "" and reason or "UNKNOWN"
	else
		self.status[name], self.reason[name] = "loaded", nil
		self.stats.loads = self.stats.loads + 1
		if self.registrations == before then
			self.empty[name] = true
			self:Report("packs_empty", name, name)
		end
		return true
	end
	self.status[name], self.reason[name] = "failed", reason
	self.attempts[name] = (self.attempts[name] or 0) + 1
	return false, reason
end

-- prints a problem once per session and keeps it in the diagnostics (/au debug)
function Packs:Report(key, name, ...)
	local id = key .. ":" .. tostring(name)
	if self.reported[id] then return end
	self.reported[id] = true
	local msg = NS:L(key, ...)
	NS:Print(msg)
	if NS.Diagnostics then NS.Diagnostics:Error("packs", msg) end
end

---------------------------------------------------------------------------
-- Language (#85)
---------------------------------------------------------------------------
---Is there a folder for the phrase texts of the language? A language added by an external pack that is always
---loaded has none: its texts are already in memory.
---@param lang string
---@return boolean
function Packs:HasLanguagePack(lang)
	return #Folders(nil, lang) > 0
end

---Loads the folders of a language. True if its texts are now in memory.
---@param lang string
---@return boolean ok
---@return string? failed folder that could not be loaded
---@return string? reason
function Packs:LoadLanguage(lang)
	local names = Folders(nil, lang)
	if #names == 0 then
		self.textLangs[lang] = true
		return true
	end
	local ok, failed, why = true, nil, nil
	for _, name in ipairs(names) do
		local loaded, reason = self:Load(name)
		if not loaded then ok, failed, why = false, name, reason end
	end
	-- a folder that did load still gave its texts: the language counts if at least one did
	for _, name in ipairs(names) do
		if self.status[name] == "loaded" then self.textLangs[lang] = true end
	end
	return ok, failed, why
end

---The language step of the start-up: only the chosen language, with English as the fallback.
function Packs:StartLanguage()
	if InCombat() then return self:Defer("language") end
	-- texts already in memory (folders that are not LoadOnDemand, or loaded by a test) count as loaded
	for name, f in pairs(self.catalog) do
		if f.lang and not f.region and self:IsLoaded(name) then
			self.status[name] = "loaded"
			self.textLangs[f.lang] = true
		end
	end
	local lang = NS:Lang()
	local ok, failed, reason = self:LoadLanguage(lang)
	if self.textLangs[lang] then
		self.textLang = lang
		if not ok then self:Report("packs_failed", failed, failed, reason) end
		return
	end
	self:Report("packs_failed", failed, failed or "?", reason or "?")
	if lang ~= "en" and (self:LoadLanguage("en") and self.textLangs.en) then
		self.textLang = "en"
		self:Report("packs_fallback", "en", LangName("en"))
		return
	end
	-- nothing to fall back on: the narrator stays silent for the phrases, the rest of the addon works
	self.textLang = lang
	self:Report("packs_none", lang)
end

---Language of the phrase texts: the chosen one when its texts are in memory, otherwise the one loaded at start-up
---(after a change of language, until /reload; or English when the chosen folder is missing).
---@return string
function Packs:TextLang()
	local lang = NS:Lang()
	if self.textLang == nil or self.textLangs[lang] or not self:HasLanguagePack(lang) then return lang end
	return self.textLang
end

---Are the phrase texts of the language in memory? (The validator checks only these.)
---@param lang string
---@return boolean
function Packs:TextsLoaded(lang)
	if self.textLang == nil then return true end
	return self.textLangs[lang] == true or not self:HasLanguagePack(lang)
end

---After a change of language: the phrases follow at the next /reload.
---@return boolean
function Packs:NeedsReload()
	return self:TextLang() ~= NS:Lang()
end

---Called when the user changes the language (settings, /au language, wizard). Explains that a reload is needed and,
---except in the wizard, offers it with a button: reloading is a player action, it is never done without a click.
---@param quiet? boolean no dialog (the wizard shows the note itself)
function Packs:OnLanguageChanged(quiet)
	if not self:NeedsReload() then return false end
	NS:Print(NS:L("packs_reload_needed", LangName(NS:Lang()), LangName(self:TextLang())))
	if not quiet then self:OfferReload() end
	return true
end

---Shows the reload dialog, if the client has StaticPopup. False if it could not.
---@return boolean
function Packs:OfferReload()
	local dialogs = Compat.Resolve("StaticPopupDialogs")
	local show = Compat.Resolve("StaticPopup_Show")
	if type(dialogs) ~= "table" or type(show) ~= "function" then return false end
	dialogs.AZEROTHUNSPOKEN_RELOAD = {
		text = NS:L("packs_reload_popup", LangName(NS:Lang())),
		button1 = NS:L("packs_reload_btn"), button2 = NS:L("packs_later"),
		OnAccept = function() Packs:Reload() end,
		timeout = 0, whileDead = true, hideOnEscape = true, preferredIndex = 3,
	}
	return pcall(show, "AZEROTHUNSPOKEN_RELOAD") and true or false
end

---Reloads the interface: only from a click (dialog or settings button).
---@return boolean
function Packs:Reload()
	local reload = Compat.Resolve("C_UI.Reload") or Compat.Resolve("ReloadUI")
	if type(reload) ~= "function" then
		NS:Print(NS:L("packs_reload_manual"))
		return false
	end
	return pcall(reload) and true or false
end

---------------------------------------------------------------------------
-- Keys shared between packs (#69)
---------------------------------------------------------------------------
-- Scripts (RegisterDialogues), NPCs (RegisterNPCs), places (RegisterPlaces) and arcs (RegisterArcs) are registered
-- by key. A pack that registers a key another pack already holds is REFUSED (the entry is not registered, a
-- `keyCollision` error goes to /au debug and to the validator) unless it says `override = true`, on the entry or on
-- the whole call: then it replaces the entry, and a `keyOverride` warning records who replaced what. The same pack
-- registering its own key again (a regional pack built again after a return) replaces it silently: it is the owner.
-- A pack with no `pack` id is never recognised as the owner: it can claim a free key but not register it twice.
Packs.KEY_KINDS = { script = "script", npc = "NPC", place = "place", arc = "arc" }
Packs.claims = {}       -- [kind .. ":" .. key] = pack id that holds the key ("" = a pack with no id)
Packs.collisions = {}   -- { code = "keyCollision" | "keyOverride", kind, key, pack, owner } in order, no repeats

---Asks to register `key`. Returns true if the caller may write the entry.
---@param kind string script | npc | place | arc
---@param key string|number
---@param pack? string id of the pack that registers (nil: unnamed)
---@param override? boolean the entry (or the call) asked to replace
---@return boolean allowed
function Packs:Claim(kind, key, pack, override)
	local id = kind .. ":" .. tostring(key)
	local owner = self.claims[id]
	pack = type(pack) == "string" and pack ~= "" and pack or ""
	if owner == nil or (owner == pack and pack ~= "") then
		self.claims[id] = pack
		return true
	end
	local code = override == true and "keyOverride" or "keyCollision"
	local who, other = pack ~= "" and pack or "(a pack with no id)", owner ~= "" and owner or "(a pack with no id)"
	local msg = ("%s '%s': %s %s %s"):format(Packs.KEY_KINDS[kind] or kind, tostring(key), who,
		override == true and "replaces the entry of" or "was refused: already registered by", other)
	local seen = false
	for _, c in ipairs(self.collisions) do
		if c.code == code and c.kind == kind and tostring(c.key) == tostring(key) and c.pack == pack then seen = true end
	end
	if not seen then
		table.insert(self.collisions, { code = code, kind = kind, key = key, pack = pack, owner = owner, msg = msg })
	end
	NS.Diagnostics:Error("packs", msg)
	if override == true then
		self.claims[id] = pack
		return true
	end
	return false
end

---Problems of the shared keys for the validator: { level, code, key, msg }.
---@return { level: string, code: string, key: string, msg: string }[]
function Packs:CheckKeys()
	local out = {}
	for _, c in ipairs(self.collisions) do
		table.insert(out, { level = c.code == "keyCollision" and "error" or "warning", code = c.code,
			key = c.kind .. ":" .. tostring(c.key), msg = c.msg })
	end
	return out
end

---------------------------------------------------------------------------
-- Regions (#101)
---------------------------------------------------------------------------
local function Builders(region)
	local b = Packs.builders[region]
	if not b then
		b = { rules = {}, texts = {} }
		Packs.builders[region] = b
	end
	return b
end

---Registers the rules of a regional pack (called by the regional folder when it is loaded). The builder returns a
---v2 pack table (as for RegisterPack); it runs when the region is entered, and again after a return.
---@param region string region key (the continent token: "kalimdor", "eastern")
---@param builder fun(): table
function NS:RegisterRegionalPack(region, builder)
	region = RegionKey(region)
	if not region or type(builder) ~= "function" then
		NS.Diagnostics:Error("packs", "RegisterRegionalPack: region and builder required")
		return
	end
	table.insert(Builders(region).rules, builder)
	-- a folder loaded while its region is already built (an external pack loaded late): build it now
	local a = Packs.active[region]
	if a then Packs:BuildRules(region, builder, a) end
end

---Registers the texts of a regional pack in one language. The builder returns { [id] = variants } like AddTexts;
---packId is the pack of the rules (its texts stay compact strings, ADR 0024).
---@param region string
---@param lang string "enUS", "itIT" or the short code
---@param packId string
---@param builder fun(): table
function NS:RegisterRegionalTexts(region, lang, packId, builder)
	region, lang = RegionKey(region), NS.Engine.LangCode(lang)
	if not region or not lang or type(builder) ~= "function" then
		NS.Diagnostics:Error("packs", "RegisterRegionalTexts: region, language and builder required")
		return
	end
	local b = Builders(region)
	b.texts[lang] = b.texts[lang] or {}
	local t = { fn = builder, pack = packId }
	table.insert(b.texts[lang], t)
	local a = Packs.active[region]
	if a and a.langs[lang] then Packs:BuildTexts(region, lang, t) end
end

function Packs:BuildRules(region, builder, a)
	local ok, pack = pcall(builder)
	if not ok or type(pack) ~= "table" or type(pack.id) ~= "string" then
		NS.Diagnostics:Error("packs", ("region %s: a rules builder failed: %s"):format(region, tostring(ok and "no pack id" or pack)))
		return
	end
	pack.region = region
	NS:RegisterPack(pack)
	if NS.Engine.packs[pack.id] == pack then table.insert(a.ids, pack.id) end
end

function Packs:BuildTexts(region, lang, t)
	local ok, map = pcall(t.fn)
	if not ok or type(map) ~= "table" then
		NS.Diagnostics:Error("packs", ("region %s: a %s texts builder failed: %s"):format(region, lang, tostring(ok and "not a table" or map)))
		return
	end
	NS:AddTexts(lang, map, t.pack)
end

---Builds a region: its rules, then its texts in the given languages.
---@param region string
---@param langs table<string, boolean>
function Packs:Build(region, langs)
	local a = { ids = {}, langs = langs }
	self.active[region] = a
	local b = self.builders[region]
	if not b then return a end
	for _, fn in ipairs(b.rules) do self:BuildRules(region, fn, a) end
	for _, lang in ipairs(NS.Engine.SortedKeys(langs)) do
		for _, t in ipairs(b.texts[lang] or {}) do self:BuildTexts(region, lang, t) end
	end
	self.stats.builds = self.stats.builds + 1
	return a
end

---Drops a built region from the engine's tables (the folders stay loaded: WoW cannot unload an addon).
---@param region string
function Packs:Drop(region)
	local a = self.active[region]
	if not a then return end
	for _, id in ipairs(a.ids) do NS.Engine:DropPack(id) end
	self.active[region] = nil
	self.stats.drops = self.stats.drops + 1
end

---Enters a region: loads its folders (rules, then texts of the phrase language) and builds it.
---@param region string
function Packs:Enter(region)
	local lang = self:TextLang()
	for _, name in ipairs(Folders(region, nil)) do
		local ok, reason = self:Load(name)
		if not ok and self:Exists(name) ~= false then self:Report("packs_region_failed", name, name, reason) end
	end
	for _, name in ipairs(Folders(region, lang)) do
		local ok, reason = self:Load(name)
		if not ok and self:Exists(name) ~= false then self:Report("packs_region_failed", name, name, reason) end
	end
	-- a missing regional folder is not an error: the base content covers every place
	return self:Build(region, { [lang] = true })
end

---Region of the character now: the continent of ctx.place (map first, then the places data). nil if unknown
---(an instance outside the data, a client without map APIs): then the regions stay as they are.
---@return string?
function Packs:CurrentRegion()
	if not NS.Place then return nil end
	local ok, p = pcall(NS.Place.Read, NS.Place)
	if not ok or type(p) ~= "table" then return nil end
	return RegionKey(p.continent)
end

---Follows the character: the region it is in is built, the others are dropped. In combat it waits.
function Packs:Update()
	if self.pinned or self.textLang == nil then return end
	local region = self:CurrentRegion()
	if region then self.region = region end
	if not self.region then return end
	if InCombat() then return self:Defer("region") end
	for r in pairs(self.active) do
		if r ~= self.region then self:Drop(r) end
	end
	if not self.active[self.region] then self:Enter(self.region) end
end

---Builds every region in every language whose texts were registered (tests, tools such as the validator run offline):
---nothing is dropped afterwards.
function Packs:ActivateAll()
	self.pinned = true
	for _, region in ipairs(NS.Engine.SortedKeys(self.builders)) do
		self:Drop(region)
		local langs = {}
		for lang in pairs(self.builders[region].texts) do langs[lang] = true end
		self:Build(region, langs)
	end
end

---------------------------------------------------------------------------
-- Combat and events
---------------------------------------------------------------------------
---A step waits for the end of combat (PLAYER_REGEN_ENABLED).
---@param step "language"|"region"
function Packs:Defer(step)
	if self.waiting ~= "language" then self.waiting = step end
	self.stats.deferred = self.stats.deferred + 1
end

function Packs:Resume()
	local step = self.waiting
	if not step or InCombat() then return end
	self.waiting = nil
	if step == "language" then self:StartLanguage() end
	self:Update()
end

---Names of the folders loaded so far (for the memory of /au prof).
---@return string[]
function Packs:LoadedFolders()
	local out = {}
	for name, s in pairs(self.status) do
		if s == "loaded" then table.insert(out, name) end
	end
	table.sort(out)
	return out
end

---Lines for /au packs: phrase language, region and the state of every folder of the catalog.
---@return string[]
function Packs:StatusLines()
	local lines = {}
	table.insert(lines, NS:L("packs_state", LangName(self:TextLang()), self.region or "-",
		self.stats.loads, self.stats.builds, self.stats.drops, self.stats.deferred))
	for _, name in ipairs(NS.Engine.SortedKeys(self.catalog)) do
		local f = self.catalog[name]
		local state = self.status[name]
		local text
		if state == "loaded" then
			text = NS:L(self.empty[name] and "packs_loaded_empty" or "packs_loaded")
		elseif state == "failed" then
			text = NS:L("packs_failed_short", tostring(self.reason[name]))
		elseif self:Exists(name) == false then
			text = NS:L("packs_absent")
		else
			text = NS:L("packs_not_loaded")
		end
		local what = f.region and (f.region .. (f.lang and (" " .. f.lang) or "")) or (f.lang or "")
		table.insert(lines, ("%s [%s]: %s"):format(name, what, text))
	end
	return lines
end

function Packs:OnInit()
	self:WatchRegistrations()
	self:Discover()
	self:StartLanguage()
	NS.EventBus:Subscribe("WORLD_ENTER", "packs", function() Packs:Update() end)
	NS.EventBus:Subscribe("ZONE_ENTER", "packs", function() Packs:Update() end)
	NS.EventBus:Subscribe("COMBAT_END", "packs", function() Packs:Resume() end)
end
