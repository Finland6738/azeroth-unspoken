-- Azeroth Unspoken: scelta pesata, memoria degli usi e anti-ripetizione.
-- La memoria è per personaggio (AzerothUnspokenCharacterDB.memory) e resta tra le sessioni.
local ADDON, NS = ...
local Engine = NS.Engine
local Match = Engine.Match

local function Mem() return NS.cdb.memory end

function Engine:DecayMemory()
	local uses = Mem().uses
	for id, n in pairs(uses) do
		n = n * 0.75
		uses[id] = (n >= 0.2) and n or nil
	end
end

local function IsRecent(key, id)
	local list = Mem().recent[key]
	if not list then return false end
	for _, r in ipairs(list) do
		if r == id then return true end
	end
	return false
end

local function Remember(key, id, keep)
	local mem = Mem()
	mem.recent[key] = mem.recent[key] or {}
	local list = mem.recent[key]
	for i = #list, 1, -1 do
		if list[i] == id then table.remove(list, i) end
	end
	table.insert(list, 1, id)
	while #list > keep do table.remove(list) end
	mem.uses[id] = (mem.uses[id] or 0) + 1
	mem.last[id] = time()
end

-- peso effettivo di una voce, dati il contesto di memoria
local function Score(entry, key, poolSize, lastTone)
	local w = entry.weight * (1 + 0.35 * entry.spec)
	w = w / (1 + 0.3 * (Mem().uses[entry.id] or 0))
	if lastTone and entry.tone and entry.tone == lastTone then w = w * 0.6 end
	return w
end

-- le voci usate di recente restano escluse finché ce ne sono altre disponibili
local function WeightedPick(items, key)
	local pool, total = {}, 0
	for _, it in ipairs(items) do
		if it.w > 0 and not IsRecent(key, it.e.id) then
			table.insert(pool, it)
			total = total + it.w
		end
	end
	if total <= 0 then
		pool = items
		for _, it in ipairs(items) do total = total + it.w end
	end
	if total <= 0 then return nil end
	items = pool
	local r = math.random() * total
	for _, it in ipairs(items) do
		r = r - it.w
		if r <= 0 then return it end
	end
	return items[#items]
end

-- quante voci tenere a memoria: circa il 60% della scelta disponibile,
-- al massimo pacing.recentPhraseWindow
local function KeepFor(n)
	local window = NS.db and NS.db.pacing.recentPhraseWindow or 30
	return math.max(1, math.min(window, math.floor(n * 0.6)))
end

Engine.Score, Engine.WeightedPick, Engine.Remember, Engine.KeepFor = Score, WeightedPick, Remember, KeepFor

---------------------------------------------------------------------------
-- Scelta
---------------------------------------------------------------------------
function Engine:Eligible(list, lang, ctx, form, now)
	local out = {}
	if not list then return out end
	local mem = Mem()
	for _, p in ipairs(list) do
		local text = p.text[lang]
		if text and (not form or p.form == form) and not NS.db.disabledPacks[p.pack]
			and not (p.cooldown and mem.last[p.id] and now - mem.last[p.id] < p.cooldown)
			and Engine.HasData(text, ctx) and Match(p.when, ctx) then
			table.insert(out, p)
		end
	end
	return out
end

local function Capitalize(s)
	-- la prima lettera ASCII in maiuscolo; i caratteri accentati restano come sono
	return (s:gsub("^([ «\"]*)([a-z])", function(sp, c) return sp .. c:upper() end))
end

-- Sceglie e compone una frase. form = "say" | "emote".
-- In forma "emote" si usano le frasi narrative e anche le frasi parlate
-- inserite in una cornice narrativa adatta all'evento.
function Engine:Pick(event, ctx, form)
	local lang = NS:Lang()
	local now = time()
	local list = self.byEvent[event]
	local mem = Mem()
	local lastTone = mem.lastTone[event]

	local items = {}
	local own = self:Eligible(list, lang, ctx, form, now)
	for _, p in ipairs(own) do
		table.insert(items, { e = p, w = Score(p, event, #own, lastTone) })
	end

	local frames
	if form == "emote" then
		frames = self:Eligible(self.frames[event], lang, ctx, nil, now)
		for _, f in ipairs(self:Eligible(self.frames["*"], lang, ctx, nil, now)) do
			table.insert(frames, f)
		end
		if #frames > 0 then
			local says = self:Eligible(list, lang, ctx, "say", now)
			for _, p in ipairs(says) do
				table.insert(items, { e = p, framed = true, w = 0.8 * Score(p, event, #says, lastTone) })
			end
		end
	end

	-- più tentativi: una frase può fallire se manca una voce di vocabolario
	for _ = 1, 6 do
		local it = WeightedPick(items, event)
		if not it then return nil end
		local p = it.e
		local text = self:Render(p.text[lang], lang, ctx)
		if text and it.framed then
			local fitems = {}
			for _, f in ipairs(frames) do
				table.insert(fitems, { e = f, w = Score(f, "frame:" .. event, #frames) })
			end
			local fit = WeightedPick(fitems, "frame:" .. event)
			text = fit and self:Render(fit.e.text[lang], lang, ctx, text)
			if text then Remember("frame:" .. event, fit.e.id, KeepFor(#frames)) end
		end
		if text then
			Remember(event, p.id, KeepFor(#items))
			mem.lastTone[event] = p.tone
			-- classi esplicite: %s in alcune impostazioni locali spezza le lettere accentate
			text = text:gsub("[ \t\n]+", " "):gsub("^ ", ""):gsub(" $", "")
			-- le emote non si toccano: il gioco antepone il nome del personaggio
			if form == "say" then text = Capitalize(text) end
			return text
		end
		it.w = 0
	end
	return nil
end
