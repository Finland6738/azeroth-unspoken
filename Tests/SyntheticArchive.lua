-- Synthetic archive for the scale projection (#83, #84, R1). Offline only: never listed in a .toc, never shipped.
-- It clones the rules already registered (their events, voices, registers, tags and conditions), gives each clone a
-- new id and unique texts (Lua interns strings: repeated texts would hide their memory), and moves a share of the
-- clones to one place, as regional content would be written (#101). It reads only fields that the engine keeps in
-- every version, so the same generator measures the engine before and after the change.
--
-- SYNTH_SOURCE(NS, n, opts) returns the Lua source of a pack with n rules, written like the data files (one
-- RegisterPack with the registry, one AddTexts per language), so that loading it measures compiling as well; the chunk
-- takes NS as its argument. It also returns { pack = id, zones = {...}, events = { [event] = rules } }.
--   opts.seed (integer, default 1)         generator seed: the same seed gives the same archive
--   opts.placeShare (0..1, default 0.6)    share of clones bound to one zone (the rest keep their own conditions)
--   opts.langs (default { "itIT", "enUS" }) languages written for every clone
--   opts.own (C0f, ADR 0053) { classes = { { "WARRIOR", weight }, ... }, classShare = 0..1, races = { { "Orc", weight },
--     ... }, raceShare = 0..1 }: the class and race of the player that a clone asks are drawn again, so that these shares
--     of the clones are lines of one class or one race (weighted), as the need model plans the resident pools, and the
--     others ask neither (the lines about another unit, `other` or the target, are kept)

SYNTH_ZONES = {
	"Elwynn Forest", "Westfall", "Redridge Mountains", "Duskwood", "Stranglethorn Vale", "Dun Morogh", "Loch Modan",
	"Wetlands", "Arathi Highlands", "Hillsbrad Foothills", "Alterac Mountains", "Silverpine Forest", "Tirisfal Glades",
	"The Hinterlands", "Western Plaguelands", "Eastern Plaguelands", "Badlands", "Searing Gorge", "Burning Steppes",
	"Swamp of Sorrows", "Blasted Lands", "Deadwind Pass", "Durotar", "Mulgore", "The Barrens", "Teldrassil",
	"Darkshore", "Ashenvale", "Stonetalon Mountains", "Desolace", "Thousand Needles", "Dustwallow Marsh", "Feralas",
	"Tanaris", "Un'Goro Crater", "Felwood", "Winterspring", "Azshara", "Silithus", "Moonglade",
}
-- entries per function of a generated chunk (see SYNTH_SOURCE): far under Lua's 262,143 constants per function
SYNTH_BLOCK = 5000

local function Keys(set)
	if type(set) ~= "table" then return nil end
	local out = {}
	for k, v in pairs(set) do
		if v == true and type(k) == "string" then table.insert(out, k) end
	end
	table.sort(out)
	return #out > 0 and out or nil
end

local function Copy(v)
	if type(v) ~= "table" then return v end
	local out = {}
	for k, x in pairs(v) do out[k] = Copy(x) end
	return out
end

local KEYWORDS = {}
for w in ("and break do else elseif end false for function if in local nil not or repeat return then true until while"):gmatch("[a-z]+") do
	KEYWORDS[w] = true
end

-- Lua source of a value (strings, numbers, booleans and tables of them; keys in a stable order)
local function Serialize(v)
	local t = type(v)
	if t == "string" then return ("%q"):format(v) end
	if t == "number" or t == "boolean" or t == "nil" then return tostring(v) end
	assert(t == "table", "SYNTH_SOURCE: cannot write a " .. t)
	local parts, n = {}, #v
	for i = 1, n do table.insert(parts, Serialize(v[i])) end
	local keys = {}
	for k in pairs(v) do
		if not (type(k) == "number" and k >= 1 and k <= n and k == math.floor(k)) then table.insert(keys, k) end
	end
	table.sort(keys, function(a, b) return tostring(a) < tostring(b) end)
	for _, k in ipairs(keys) do
		local key = (type(k) == "string" and k:match("^[%a_][%w_]*$") and not KEYWORDS[k]) and k or ("[" .. Serialize(k) .. "]")
		table.insert(parts, key .. " = " .. Serialize(v[k]))
	end
	return "{ " .. table.concat(parts, ", ") .. " }"
end

-- conditions with a function (func, a computed condition) cannot be written as data: those rules are not cloned
local function HasFunction(v)
	if type(v) == "function" then return true end
	if type(v) ~= "table" then return false end
	for _, x in pairs(v) do
		if HasFunction(x) then return true end
	end
	return false
end

-- the text of a variant, whatever its in-memory form (a table { t = } before #84, a string or a table after)
local function VariantText(v)
	if type(v) == "string" then return v end
	if type(v) == "table" and type(v.t) == "string" and v.t ~= "" then return v.t end
	return nil
end

-- the base rules, in id order, with texts in every requested language
local function BaseRules(Engine, langs)
	local base = {}
	for _, id in ipairs(Engine.SortedKeys(Engine.ordOf)) do
		local p = Engine.byId[id]
		local ok = #p.events > 0 and not HasFunction(p.when)
		for _, lang in ipairs(langs) do
			local list = p.text[Engine.LangCode(lang)]
			if not list or not VariantText(list[1]) then ok = false end
		end
		if ok then table.insert(base, p) end
	end
	assert(#base > 0, "SYNTH_SOURCE: no base rules")
	return base
end

-- C0e (ADR 0052): the mean number of texts (variants) of an entry of the archive in one language, so a projection can
-- be asked in texts per language, the unit of the need model (docs/content/NEED.md)
function SYNTH_TEXTS_PER_ENTRY(NS, lang)
	local base = BaseRules(NS.Engine, { lang or "enUS" })
	local texts = 0
	for _, p in ipairs(base) do
		for _, v in ipairs(p.text[NS.Engine.LangCode(lang or "enUS")]) do
			if VariantText(v) then texts = texts + 1 end
		end
	end
	return texts / #base
end

function SYNTH_SOURCE(NS, n, opts)
	opts = opts or {}
	local Engine = NS.Engine
	local seed = opts.seed or 1
	local placeShare = opts.placeShare or 0.6
	local langs = opts.langs or { "itIT", "enUS" }
	local base = BaseRules(Engine, langs)

	-- a small linear congruential generator: independent of math.random, so the archive does not depend on how
	-- many random numbers the engine drew before
	local state = seed
	local function Rand(m)
		state = (state * 1103515245 + 12345) % 2147483648
		return state % m + 1
	end

	-- a weighted pick from { { value, weight }, ... }
	local function Weighted(list)
		local total = 0
		for _, x in ipairs(list) do total = total + x[2] end
		local at = (Rand(1000000) - 1) / 1000000 * total
		for _, x in ipairs(list) do
			at = at - x[2]
			if at < 0 then return x[1] end
		end
		return list[#list][1]
	end
	local own = opts.own

	local registry, texts = {}, {}
	for _, lang in ipairs(langs) do texts[lang] = {} end
	local events = {}
	for i = 1, n do
		local p = base[Rand(#base)]
		local id = ("syn.%06d"):format(i)
		local when = Copy(p.when)
		if own then
			when = when or {}
			when.class, when.race = nil, nil
			local x = (Rand(1000000) - 1) / 1000000
			if x < own.classShare then
				when.class = Weighted(own.classes)
			elseif x < own.classShare + own.raceShare then
				when.race = Weighted(own.races)
			end
			if next(when) == nil then when = nil end
		end
		if Rand(1000) <= placeShare * 1000 and not (when and (when.zone or when.subzone or when.place)) then
			when = when or {}
			when.zone = SYNTH_ZONES[Rand(#SYNTH_ZONES)]
		end
		registry[id] = {
			event = Copy(p.events), speaker = p.speaker, form = p.form, category = p.category,
			styles = Copy(p.styles), depth = Keys(p.depth), tags = Keys(p.tags), weight = p.weight,
			cooldown = p.cooldown, conditions = when, theme = p.theme, motifs = Copy(p.motifs),
		}
		for _, ev in ipairs(p.events) do events[ev] = (events[ev] or 0) + 1 end
		for _, lang in ipairs(langs) do
			local out = {}
			for k, v in ipairs(p.text[Engine.LangCode(lang)]) do
				local t = VariantText(v)
				-- unique text: the clone number goes into the text, as a different phrase would
				if t then table.insert(out, t .. " [" .. i .. "." .. k .. "]") end
			end
			texts[lang][id] = out
		end
	end

	local packId = "synthetic_" .. n
	-- Lua 5.1 keeps at most 262,143 constants in one function (MAXARG_Bx), and every id and text is one: past about
	-- 40,000 rules in two languages one chunk would not compile ("constant table overflow"). Each block of SYNTH_BLOCK
	-- entries is a function of its own, whose table is copied into the one registered: the same registry and the same
	-- texts as a single table.
	local out = { "local NS = ...\n", "local function Put(into, t) for k, v in pairs(t) do into[k] = v end end\n",
		"local registry = {}\n" }
	local function Blocks(var, entry)
		for first = 1, n, SYNTH_BLOCK do
			table.insert(out, ("Put(%s, (function() return {\n"):format(var))
			for i = first, math.min(n, first + SYNTH_BLOCK - 1) do
				local id = ("syn.%06d"):format(i)
				table.insert(out, ("[%q] = %s,\n"):format(id, Serialize(entry(id))))
			end
			table.insert(out, "} end)())\n")
		end
	end
	Blocks("registry", function(id) return registry[id] end)
	table.insert(out, ("NS:RegisterPack({ id = %q, name = \"Synthetic archive\", registry = registry })\n"):format(packId))
	for _, lang in ipairs(langs) do
		table.insert(out, "local texts = {}\n")
		Blocks("texts", function(id) return texts[lang][id] end)
		table.insert(out, ("NS:AddTexts(%q, texts, %q)\n"):format(lang, packId))
	end
	return table.concat(out), { pack = packId, zones = SYNTH_ZONES, events = events }
end

-- C0 (ADR 0048): the sources of one regional area, as the folders write them. SYNTH_AREA_SOURCES(NS, n, opts) returns
-- the rules (AzerothUnspoken:RegisterRegionalPack(area, builder)) and the texts of one language
-- (AzerothUnspoken:RegisterRegionalTexts(area, lang, pack, builder)) of n clones bound to the zone of the area: the
-- clone keeps its conditions, with the zone of the area in place of any place it asked.
--   opts.area, opts.zone (required), opts.seed (default 1), opts.lang (default "enUS"), opts.prefix (default the area)
--   opts.form "builder" (default: a builder function, as before C0b) or "source" (the entries in a string, ADR 0049)
--   opts.plain (C0f, ADR 0053): the clones ask no class or race of the player (the place pools of the need model)
function SYNTH_AREA_SOURCES(NS, n, opts)
	local Engine = NS.Engine
	local lang = opts.lang or "enUS"
	local base = BaseRules(Engine, { lang })
	local prefix = opts.prefix or opts.area
	local state = opts.seed or 1
	local function Rand(m)
		state = (state * 1103515245 + 12345) % 2147483648
		return state % m + 1
	end
	local packId = "synth_" .. prefix
	local rules, texts = {}, {}
	for i = 1, n do
		local p = base[Rand(#base)]
		local id = ("syn.%s.%06d"):format(prefix, i)
		local when = Copy(p.when) or {}
		when.zone, when.subzone, when.place, when.landmark = opts.zone, nil, nil, nil
		if opts.plain then when.class, when.race = nil, nil end
		table.insert(rules, ("[%q] = %s,\n"):format(id, Serialize({
			event = Copy(p.events), speaker = p.speaker, form = p.form, category = p.category,
			styles = Copy(p.styles), depth = Keys(p.depth), tags = Keys(p.tags), weight = p.weight,
			cooldown = p.cooldown, conditions = when, theme = p.theme, motifs = Copy(p.motifs),
		})))
		local out = {}
		for k, v in ipairs(p.text[Engine.LangCode(lang)]) do
			local t = VariantText(v)
			if t then table.insert(out, t .. " [" .. prefix .. i .. "." .. k .. "]") end
		end
		table.insert(texts, ("[%q] = %s,\n"):format(id, Serialize(out)))
	end
	if opts.form == "source" then
		-- C0b (ADR 0049): the entries as a source, as the folders of the download write them
		local rulesSrc = ("AzerothUnspoken:RegisterRegionalPack(%q, { id = %q, languages = { %q } }, [==[\n")
			:format(opts.area, packId, lang) .. table.concat(rules) .. "]==])\n"
		local textsSrc = ("AzerothUnspoken:RegisterRegionalTexts(%q, %q, %q, [==[\n"):format(opts.area, lang, packId)
			.. table.concat(texts) .. "]==])\n"
		return rulesSrc, textsSrc
	end
	local rulesSrc = ("AzerothUnspoken:RegisterRegionalPack(%q, function() return { id = %q, languages = { %q }, registry = {\n")
		:format(opts.area, packId, lang) .. table.concat(rules) .. "} } end)\n"
	local textsSrc = ("AzerothUnspoken:RegisterRegionalTexts(%q, %q, %q, function() return {\n"):format(opts.area, lang, packId)
		.. table.concat(texts) .. "} end)\n"
	return rulesSrc, textsSrc
end

-- C0j (ADR 0057): the pools of some events grown in place. SYNTH_POOL_SOURCE(NS, events, copies, opts) returns the
-- source of a pack (as SYNTH_SOURCE writes it, one language) with `copies` clones of every rule of those events whose
-- specificity tier is in opts.tiers (default { 0, 1 }: the generic and situation pools, which the content waves grow
-- and which stay in memory), each clone keeping its conditions, voice, form, registers, tags, theme and motifs, asked
-- only for the events of the list, with unique texts. So a pool of the character holds (1 + copies) times its rules,
-- in the same proportions of tiers, voices and conditions: the shape a pool takes as the waves write it. Rules with a
-- function in their conditions, monologues and stanzas are not cloned. Also returns { [event] = clones }.
--   opts.lang (default "enUS"), opts.tiers (a list of tiers), opts.prefix (default "pool")
function SYNTH_POOL_SOURCE(NS, events, copies, opts)
	opts = opts or {}
	local Engine = NS.Engine
	local lang = opts.lang or "enUS"
	local code = Engine.LangCode(lang)
	local prefix = opts.prefix or "pool"
	local want, tiers = {}, {}
	for _, ev in ipairs(events) do want[ev] = true end
	for _, t in ipairs(opts.tiers or { 0, 1 }) do tiers[t] = true end
	local registry, texts, n, count = {}, {}, 0, {}
	for _, id in ipairs(Engine.SortedKeys(Engine.ordOf)) do
		local p = Engine.byId[id]
		local evs = {}
		for _, ev in ipairs(p.events or {}) do
			if want[ev] then evs[#evs + 1] = ev end
		end
		local list = p.text[code]
		if #evs > 0 and p.kind == nil and not HasFunction(p.when) and tiers[Engine.Tier(p)] and list
			and VariantText(list[1]) then
			for c = 1, copies do
				n = n + 1
				local cid = ("syn.%s.%07d"):format(prefix, n)
				registry[cid] = {
					event = evs, speaker = p.speaker, form = p.form, category = p.category, tier = p.tier,
					styles = Copy(p.styles), depth = Keys(p.depth), tags = Keys(p.tags), weight = p.weight,
					cooldown = p.cooldown, conditions = Copy(p.when), theme = p.theme, motifs = Copy(p.motifs),
				}
				local out = {}
				for k, v in ipairs(list) do
					local t = VariantText(v)
					if t then out[#out + 1] = t .. " [" .. n .. "." .. k .. "]" end
				end
				texts[cid] = out
				for _, ev in ipairs(evs) do count[ev] = (count[ev] or 0) + 1 end
			end
		end
	end
	local packId = "synthetic_pool_" .. prefix
	local out = { "local NS = ...\n", "local function Put(into, t) for k, v in pairs(t) do into[k] = v end end\n",
		"local registry, texts = {}, {}\n" }
	local ids = Engine.SortedKeys(registry)
	local function Blocks(var, of)
		for first = 1, #ids, SYNTH_BLOCK do
			out[#out + 1] = ("Put(%s, (function() return {\n"):format(var)
			for i = first, math.min(#ids, first + SYNTH_BLOCK - 1) do
				out[#out + 1] = ("[%q] = %s,\n"):format(ids[i], Serialize(of[ids[i]]))
			end
			out[#out + 1] = "} end)())\n"
		end
	end
	Blocks("registry", registry)
	out[#out + 1] = ("NS:RegisterPack({ id = %q, name = \"Synthetic pools\", registry = registry })\n"):format(packId)
	Blocks("texts", texts)
	out[#out + 1] = ("NS:AddTexts(%q, texts, %q)\n"):format(lang, packId)
	return table.concat(out), count
end
