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

SYNTH_ZONES = {
	"Elwynn Forest", "Westfall", "Redridge Mountains", "Duskwood", "Stranglethorn Vale", "Dun Morogh", "Loch Modan",
	"Wetlands", "Arathi Highlands", "Hillsbrad Foothills", "Alterac Mountains", "Silverpine Forest", "Tirisfal Glades",
	"The Hinterlands", "Western Plaguelands", "Eastern Plaguelands", "Badlands", "Searing Gorge", "Burning Steppes",
	"Swamp of Sorrows", "Blasted Lands", "Deadwind Pass", "Durotar", "Mulgore", "The Barrens", "Teldrassil",
	"Darkshore", "Ashenvale", "Stonetalon Mountains", "Desolace", "Thousand Needles", "Dustwallow Marsh", "Feralas",
	"Tanaris", "Un'Goro Crater", "Felwood", "Winterspring", "Azshara", "Silithus", "Moonglade",
}

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

function SYNTH_SOURCE(NS, n, opts)
	opts = opts or {}
	local Engine = NS.Engine
	local seed = opts.seed or 1
	local placeShare = opts.placeShare or 0.6
	local langs = opts.langs or { "itIT", "enUS" }

	-- the base rules, in id order, with texts in every requested language
	local base = {}
	for _, id in ipairs(Engine.SortedKeys(Engine.byId)) do
		local p = Engine.byId[id]
		local ok = #p.events > 0 and not HasFunction(p.when)
		for _, lang in ipairs(langs) do
			local list = p.text[Engine.LangCode(lang)]
			if not list or not VariantText(list[1]) then ok = false end
		end
		if ok then table.insert(base, p) end
	end
	assert(#base > 0, "SYNTH_SOURCE: no base rules")

	-- a small linear congruential generator: independent of math.random, so the archive does not depend on how
	-- many random numbers the engine drew before
	local state = seed
	local function Rand(m)
		state = (state * 1103515245 + 12345) % 2147483648
		return state % m + 1
	end

	local registry, texts = {}, {}
	for _, lang in ipairs(langs) do texts[lang] = {} end
	local events = {}
	for i = 1, n do
		local p = base[Rand(#base)]
		local id = ("syn.%06d"):format(i)
		local when = Copy(p.when)
		if Rand(1000) <= placeShare * 1000 and not (when and (when.zone or when.subzone or when.place)) then
			when = when or {}
			when.zone = SYNTH_ZONES[Rand(#SYNTH_ZONES)]
		end
		registry[id] = {
			event = Copy(p.events), speaker = p.speaker, form = p.form, category = p.category,
			styles = Copy(p.styles), depth = Keys(p.depth), tags = Keys(p.tags), weight = p.weight,
			cooldown = p.cooldown, conditions = when,
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
	local out = { "local NS = ...\n" }
	table.insert(out, ("NS:RegisterPack({ id = %q, name = \"Synthetic archive\", registry = {\n"):format(packId))
	for i = 1, n do
		local id = ("syn.%06d"):format(i)
		table.insert(out, ("[%q] = %s,\n"):format(id, Serialize(registry[id])))
	end
	table.insert(out, "} })\n")
	for _, lang in ipairs(langs) do
		table.insert(out, ("NS:AddTexts(%q, {\n"):format(lang))
		for i = 1, n do
			local id = ("syn.%06d"):format(i)
			table.insert(out, ("[%q] = %s,\n"):format(id, Serialize(texts[lang][id])))
		end
		table.insert(out, ("}, %q)\n"):format(packId))
	end
	return table.concat(out), { pack = packId, zones = SYNTH_ZONES, events = events }
end
