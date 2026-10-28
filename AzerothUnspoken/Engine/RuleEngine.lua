-- Azeroth Unspoken: condizioni dichiarative delle frasi (when = { ... })
local ADDON, NS = ...
local Engine = NS.Engine
local AsList = Engine.AsList

local Match

local function MatchValue(expected, actual)
	if type(expected) == "table" then
		for _, e in ipairs(expected) do
			if MatchValue(e, actual) then return true end
		end
		return false
	end
	if type(expected) == "boolean" then return (not not actual) == expected end
	if type(expected) == "string" and type(actual) == "string" then
		return expected:lower() == actual:lower()
	end
	return expected == actual
end

-- testo contenuto (senza pattern) in uno dei valori
local function ContainsAny(patterns, value)
	if not value then return false end
	value = value:lower()
	for _, pat in ipairs(AsList(patterns)) do
		if value:find(pat:lower(), 1, true) then return true end
	end
	return false
end

-- regole speciali; tutte le altre chiavi si confrontano con ctx[chiave]
local SPECIAL = {
	hpBelow  = function(v, ctx) return ctx.hp ~= nil and ctx.hp < v end,
	hpAbove  = function(v, ctx) return ctx.hp ~= nil and ctx.hp > v end,
	levelMin = function(v, ctx) return (ctx.level or 0) >= v end,
	levelMax = function(v, ctx) return (ctx.level or 0) <= v end,
	zone     = function(v, ctx) return MatchValue(v, ctx.zone) or MatchValue(v, ctx.subzone) end,
	spell    = function(v, ctx) return ContainsAny(v, ctx.spell) end,
	targetName = function(v, ctx) return ContainsAny(v, ctx.target) end,
	hour     = function(v, ctx)
		local h = ctx.hour or 12
		if v[1] <= v[2] then return h >= v[1] and h < v[2] end
		return h >= v[1] or h < v[2]   -- intervallo a cavallo della mezzanotte
	end,
	chance   = function(v) return math.random(100) <= v end,
	func     = function(v, ctx)
		local ok, res = pcall(v, ctx)
		return ok and res
	end,
	["not"]  = function(v, ctx) return not Match(v, ctx) end,
	any      = function(v, ctx)
		for _, sub in ipairs(v) do
			if Match(sub, ctx) then return true end
		end
		return false
	end,
}

Match = function(when, ctx)
	if not when then return true end
	for k, v in pairs(when) do
		local rule = SPECIAL[k]
		if rule then
			if not rule(v, ctx) then return false end
		elseif not MatchValue(v, ctx[k]) then
			return false
		end
	end
	return true
end
Engine.Match = Match
