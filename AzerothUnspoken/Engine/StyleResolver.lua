-- Azeroth Unspoken: StyleResolver, i registri adatti al momento (GDD §5.1, §5.2, §6 passo 7).
-- Per un evento e un contesto calcola un profilo di stile: i registri ammessi dall'evento e quelli preferiti
-- dall'atmosfera della zona e dalla profondità scelta; la voce (speaker) di ogni frase aggiunge le sue preferenze.
-- Non esclude mai una frase: un registro fuori posto pesa meno (ripiego neutro), così un evento che ha solo frasi
-- di un altro registro non resta muto. Non compone frammenti: decide solo se una cornice e una frase stanno insieme.
local ADDON, NS = ...
local Engine = NS.Engine

---@class AUStyleProfile
---@field event string
---@field allowed? table<string, boolean> registri ammessi dall'evento; nil = tutti
---@field preferred table<string, integer> registro -> quante fonti lo preferiscono (zona, profondità, aggiunte)
---@field mood? string atmosfera della zona
---@field depth? string profondità scelta

---@class AUStyleResolver
local StyleResolver = {}
NS.StyleResolver = StyleResolver
Engine.StyleResolver = StyleResolver

-- un registro che l'evento non prevede pesa così (mai zero: è il ripiego neutro)
StyleResolver.MISMATCH = 0.5
-- ogni fonte che preferisce il registro (zona, profondità, voce) aggiunge questo, fino a tre fonti
StyleResolver.PREFER_BONUS = 0.25
StyleResolver.MAX_SOURCES = 3

local ALL_BUT_EVERYDAY = { "epic", "ironic", "tragic", "ceremonial", "ancient", "intimate" }

-- Registri ammessi per evento. Un evento assente le ammette tutte. I pacchetti ne aggiungono con
-- NS:RegisterEventStyles. Il quotidiano non accompagna la battaglia; l'ironia resta quasi ovunque perché
-- appartiene al carattere (lo step S5 la regolerà con la personalità).
StyleResolver.EVENT_STYLES = {
	battle = ALL_BUT_EVERYDAY, threat = ALL_BUT_EVERYDAY, attack = ALL_BUT_EVERYDAY, lowhp = ALL_BUT_EVERYDAY,
	victory = { "epic", "intimate", "ironic", "tragic", "ceremonial" },
	heal = { "ceremonial", "epic", "intimate", "ironic", "tragic" },
	buff = { "ceremonial", "epic", "intimate", "ironic", "tragic" },
	rezother = { "ceremonial", "epic", "intimate", "ironic", "tragic" },
	death = ALL_BUT_EVERYDAY, rez = ALL_BUT_EVERYDAY, levelup = ALL_BUT_EVERYDAY,
	travel = { "everyday", "ironic", "intimate", "ancient", "epic", "ceremonial" },
	pray = { "ceremonial", "intimate", "tragic", "ancient" },
	jest = { "ironic", "everyday" },
}

-- Registri preferiti dall'atmosfera della zona (ctx.mood, da NS:RegisterZoneMoods). NS:RegisterMoodStyles ne aggiunge.
StyleResolver.MOOD_STYLES = {
	forest = { "ancient" }, jungle = { "ancient" }, plains = { "everyday", "ancient" },
	mountain = { "ancient", "epic" }, snow = { "intimate", "ancient" }, swamp = { "tragic", "everyday" },
	desert = { "epic", "everyday" }, coast = { "everyday", "intimate" },
	dark = { "tragic" }, plague = { "tragic" }, fire = { "tragic", "epic" }, deep = { "tragic", "ancient" },
	ruin = { "ancient", "tragic" }, sacred = { "ceremonial", "ancient" },
	city = { "everyday", "ironic" }, town = { "everyday", "ironic" },
}

-- Registri preferiti dalla profondità (GDD §4.3): il letterario è il punto neutro.
StyleResolver.DEPTH_STYLES = {
	natural = { "everyday", "ironic", "intimate" },
	literary = {},
	elevated = { "ceremonial", "epic", "ancient" },
}

-- Registri preferiti dalla voce (GDD §5.3): il venditore non declama come un antico re.
StyleResolver.SPEAKER_STYLES = {
	narrator = { "ancient", "tragic", "epic" },
	inner = { "intimate" },
	character = {},
	npc = { "everyday", "ironic" },
}

-- Coppie di registri che possono stare nella stessa emote (cornice + frase). Simmetrica.
local NEAR = {
	{ "epic", "ceremonial" }, { "epic", "tragic" }, { "ceremonial", "ancient" }, { "ancient", "intimate" },
	{ "ancient", "tragic" }, { "tragic", "intimate" }, { "intimate", "everyday" }, { "everyday", "ironic" },
}
StyleResolver.NEAR = {}
for _, pair in ipairs(NEAR) do
	local a, b = pair[1], pair[2]
	StyleResolver.NEAR[a] = StyleResolver.NEAR[a] or {}
	StyleResolver.NEAR[b] = StyleResolver.NEAR[b] or {}
	StyleResolver.NEAR[a][b], StyleResolver.NEAR[b][a] = true, true
end

-- Modificatori del profilo per gli step futuri: fn(profile, ctx) può aggiungere preferenze con
-- StyleResolver.Prefer(profile, registro). S5 (temperamento del personaggio), S9 (arco narrativo) e S6c
-- (tag del luogo) si agganciano qui. Un modificatore che sbaglia viene ignorato.
---@type table<string, fun(profile: AUStyleProfile, ctx: table)>
StyleResolver.modifiers = {}

---@param name string
---@param fn? fun(profile: AUStyleProfile, ctx: table) nil per toglierlo
function StyleResolver:SetModifier(name, fn)
	self.modifiers[name] = fn
end

local function ToSet(list)
	if not list then return nil end
	local set = {}
	for _, s in ipairs(list) do set[s] = true end
	return set
end

-- set precalcolati delle voci, per non ricrearli a ogni peso
local SPEAKER_SETS = {}
local function SpeakerSet(speaker)
	local set = SPEAKER_SETS[speaker]
	if set == nil then
		set = ToSet(StyleResolver.SPEAKER_STYLES[speaker]) or false
		SPEAKER_SETS[speaker] = set
	end
	return set or nil
end

---Aggiunge una preferenza al profilo.
---@param profile AUStyleProfile
---@param style string
function StyleResolver.Prefer(profile, style)
	if type(style) == "string" then profile.preferred[style] = (profile.preferred[style] or 0) + 1 end
end

---Il profilo di stile di un evento nel contesto.
---@param event string
---@param ctx? table
---@return AUStyleProfile
function StyleResolver:Resolve(event, ctx)
	ctx = ctx or {}
	---@type AUStyleProfile
	local profile = { event = event, allowed = ToSet(self.EVENT_STYLES[event]), preferred = {},
		mood = ctx.mood, depth = ctx.depth }
	for _, s in ipairs(ctx.mood and self.MOOD_STYLES[ctx.mood] or {}) do StyleResolver.Prefer(profile, s) end
	for _, s in ipairs(ctx.depth and self.DEPTH_STYLES[ctx.depth] or {}) do StyleResolver.Prefer(profile, s) end
	for name, fn in pairs(self.modifiers) do
		local ok, err = pcall(fn, profile, ctx)
		if not ok and NS.Diagnostics then NS.Diagnostics:Error("style:" .. name, err) end
	end
	return profile
end

---Affinità di registro di una frase (la parte "registri" del fattore S; la profondità è Engine.StyleFactor).
---Una frase senza registri è neutra (1). Altrimenti vale il suo registro migliore:
---MISMATCH se l'evento non lo ammette, più PREFER_BONUS per ogni fonte che lo preferisce.
---@param entry { styles?: string[], speaker?: string }
---@param profile? AUStyleProfile
---@return number
function StyleResolver:Affinity(entry, profile)
	local styles = entry.styles
	if not profile or not styles or #styles == 0 then return 1 end
	local voice = SpeakerSet(entry.speaker)
	local best = 0
	for _, s in ipairs(styles) do
		local f = (profile.allowed and not profile.allowed[s]) and self.MISMATCH or 1
		local sources = profile.preferred[s] or 0
		if voice and voice[s] then sources = sources + 1 end
		f = f * (1 + self.PREFER_BONUS * math.min(sources, self.MAX_SOURCES))
		if f > best then best = f end
	end
	return best
end

---Una cornice e una frase possono stare nella stessa emote? Sì se una delle due non ha registri,
---se condividono un registro o se i registri sono vicini (NEAR). Mai l'ironia in una cornice solenne.
---@param a? string[] registri della cornice
---@param b? string[] registri della frase
---@return boolean
function StyleResolver:Compatible(a, b)
	if not a or not b or #a == 0 or #b == 0 then return true end
	for _, x in ipairs(a) do
		for _, y in ipairs(b) do
			if x == y or (self.NEAR[x] and self.NEAR[x][y]) then return true end
		end
	end
	return false
end

---------------------------------------------------------------------------
-- API dei pacchetti
---------------------------------------------------------------------------
---Registri ammessi per un evento (sostituisce l'elenco). nil = tutti.
---@param event string
---@param styles? string[]
function NS:RegisterEventStyles(event, styles)
	if type(event) ~= "string" then return end
	StyleResolver.EVENT_STYLES[event] = type(styles) == "table" and styles or nil
end

---Registri preferiti dalle atmosfere: { forest = { "ancient" }, ... }.
---@param map table<string, string[]>
function NS:RegisterMoodStyles(map)
	for mood, styles in pairs(map or {}) do
		if type(mood) == "string" and type(styles) == "table" then StyleResolver.MOOD_STYLES[mood] = styles end
	end
end
