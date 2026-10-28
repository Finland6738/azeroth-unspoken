-- Voci di Azeroth: motore di selezione delle frasi.
-- Non contiene testi: legge solo ciò che i pacchetti registrano con RegisterPack.
local ADDON, NS = ...
local Engine = {}
NS.Engine = Engine

Engine.packs = {}       -- [id] = pacchetto
Engine.packOrder = {}
Engine.byEvent = {}     -- [evento] = { frase, ... }
Engine.byId = {}        -- [id frase] = frase
Engine.frames = {}      -- [evento o "*"] = { cornice, ... }
Engine.vocab = {}       -- [nome] = { voce, ... }

local function Lower(s) return s and s:lower() or nil end

---------------------------------------------------------------------------
-- Registrazione
---------------------------------------------------------------------------

-- i testi possono stare in entry.text = { it = ..., en = ... } oppure
-- direttamente come chiavi di due lettere: { it = "...", en = "..." }
local function NormalizeText(entry)
	local text = entry.text
	if type(text) == "string" then text = { it = text } end
	text = text or {}
	for k, v in pairs(entry) do
		if type(k) == "string" and type(v) == "string" and k:match("^[a-z][a-z]$") then
			text[k] = v
		end
	end
	entry.text = text
end

-- numero di condizioni: le frasi più specifiche pesano di più
local function Specificity(when)
	if not when then return 0 end
	local n = 0
	for k in pairs(when) do
		if k ~= "chance" then n = n + 1 end
	end
	return n
end

local function AsList(v)
	if type(v) == "table" then return v end
	return { v }
end

function Engine:AddPhrase(pack, p)
	NormalizeText(p)
	p.pack = pack.id
	p.form = p.form or "say"
	p.weight = p.weight or 1
	p.spec = Specificity(p.when)
	if not p.id then
		pack._auto = (pack._auto or 0) + 1
		p.id = pack.id .. "#" .. pack._auto
	end
	if self.byId[p.id] then
		NS:Print(("id duplicato '%s' nel pacchetto '%s'"):format(p.id, pack.id))
		return
	end
	self.byId[p.id] = p
	for _, ev in ipairs(AsList(p.event)) do
		self.byEvent[ev] = self.byEvent[ev] or {}
		table.insert(self.byEvent[ev], p)
	end
end

function Engine:AddFrame(pack, f)
	NormalizeText(f)
	f.pack = pack.id
	f.weight = f.weight or 1
	f.spec = Specificity(f.when)
	pack._autoFrame = (pack._autoFrame or 0) + 1
	f.id = f.id or (pack.id .. "#frame" .. pack._autoFrame)
	for _, ev in ipairs(AsList(f.event or "*")) do
		self.frames[ev] = self.frames[ev] or {}
		table.insert(self.frames[ev], f)
	end
end

function Engine:AddVocab(pack, name, entries)
	self.vocab[name] = self.vocab[name] or {}
	for i, v in ipairs(entries) do
		NormalizeText(v)
		v.pack = pack.id
		v.id = v.id or (pack.id .. "#" .. name .. i)
		v.weight = v.weight or 1
		v.spec = Specificity(v.when)
		table.insert(self.vocab[name], v)
	end
end

-- Traduzioni aggiunte da un altro pacchetto: { [id frase] = "testo" }
function Engine:AddTranslations(lang, map)
	for id, s in pairs(map) do
		local p = self.byId[id]
		if p then
			p.text[lang] = s
		else
			self.pendingTranslations = self.pendingTranslations or {}
			self.pendingTranslations[id] = self.pendingTranslations[id] or {}
			self.pendingTranslations[id][lang] = s
		end
	end
end

--[[ API pubblica. Formato del pacchetto (vedi FORMATO_PACCHETTI.md):
	VociDiAzeroth:RegisterPack({
		id = "mio_pacchetto", name = "Nome leggibile",
		phrases = { { id=, event=, form=, tone=, weight=, cooldown=, when=, it=, en= }, ... },
		frames  = { { event=, when=, it="... «{line}»" }, ... },
		vocab   = { nome = { { when=, it=, en= }, ... } },
		translations = { de = { [id] = "..." } },
	}) ]]
function NS:RegisterPack(pack)
	assert(type(pack) == "table" and pack.id, "RegisterPack: serve un id")
	if Engine.packs[pack.id] then
		NS:Print(("pacchetto '%s' già registrato"):format(pack.id))
		return
	end
	Engine.packs[pack.id] = pack
	table.insert(Engine.packOrder, pack.id)
	for _, p in ipairs(pack.phrases or {}) do Engine:AddPhrase(pack, p) end
	for _, f in ipairs(pack.frames or {}) do Engine:AddFrame(pack, f) end
	for name, entries in pairs(pack.vocab or {}) do Engine:AddVocab(pack, name, entries) end
	for lang, map in pairs(pack.translations or {}) do Engine:AddTranslations(lang, map) end
	-- traduzioni arrivate prima delle frasi
	if Engine.pendingTranslations then
		for id, langs in pairs(Engine.pendingTranslations) do
			local p = Engine.byId[id]
			if p then
				for lang, s in pairs(langs) do p.text[lang] = s end
				Engine.pendingTranslations[id] = nil
			end
		end
	end
end

function NS:AddTranslations(lang, map) Engine:AddTranslations(lang, map) end

---------------------------------------------------------------------------
-- Condizioni
---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
-- Memoria: uso, cooldown, anti-ripetizione (salvata tra le sessioni)
---------------------------------------------------------------------------
local function Mem() return NS.db.memory end

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

-- quante voci tenere a memoria: circa il 60% della scelta disponibile
local function KeepFor(n)
	return math.max(1, math.min(40, math.floor(n * 0.6)))
end

---------------------------------------------------------------------------
-- Segnaposto
---------------------------------------------------------------------------
-- {player} {target} {spell} {zone} {subzone} {level} {class} {race} {faction}
-- {g:maschile|femminile}   {line} (solo nelle cornici)   {nome_vocabolario}
local BUILTIN = {
	player = "player", target = "target", spell = "spell", zone = "zone",
	subzone = "subzone", level = "level", class = "classLocal", race = "raceLocal",
	faction = "factionLocal", targettype = "ctypeLocal",
}

function Engine:Vocab(name, lang, ctx)
	local list = self.vocab[name]
	if not list then return nil end
	local items = {}
	for _, v in ipairs(list) do
		if v.text[lang] and not NS.db.disabledPacks[v.pack] and Match(v.when, ctx) then
			table.insert(items, { e = v, w = Score(v, "vocab:" .. name, #list) })
		end
	end
	local it = WeightedPick(items, "vocab:" .. name)
	if not it then return nil end
	Remember("vocab:" .. name, it.e.id, KeepFor(#items))
	return self:Render(it.e.text[lang], lang, ctx, nil, true)
end

-- restituisce nil se manca un dato richiesto: la frase allora non è adatta
function Engine:Render(text, lang, ctx, line, nested)
	local failed = false
	local out = text:gsub("{([^{}]+)}", function(tag)
		if failed then return "" end
		local m, f = tag:match("^g:([^|]*)|(.*)$")
		if m then return (ctx.sex == "female") and f or m end
		if tag == "line" then
			if line then return line end
			failed = true
			return ""
		end
		local field = BUILTIN[tag]
		if field then
			local v = ctx[field]
			if v == nil or v == "" then failed = true; return "" end
			return tostring(v)
		end
		if nested then failed = true; return "" end  -- niente vocabolario dentro il vocabolario
		local v = self:Vocab(tag, lang, ctx)
		if not v then failed = true; return "" end
		return v
	end)
	if failed then return nil end
	return out
end

-- controllo veloce dei dati richiesti, senza consumare vocabolario
local function HasData(text, ctx)
	for tag in text:gmatch("{([^{}]+)}") do
		local field = BUILTIN[tag]
		if field and (ctx[field] == nil or ctx[field] == "") then return false end
	end
	return true
end

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
			and HasData(text, ctx) and Match(p.when, ctx) then
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

-- statistiche per /voci info
function Engine:Stats(lang)
	local byEvent, total = {}, 0
	for ev, list in pairs(self.byEvent) do
		local n = 0
		for _, p in ipairs(list) do
			if p.text[lang] then n = n + 1 end
		end
		byEvent[ev] = n
	end
	for _, p in pairs(self.byId) do
		if p.text[lang] then total = total + 1 end
	end
	return total, byEvent
end
