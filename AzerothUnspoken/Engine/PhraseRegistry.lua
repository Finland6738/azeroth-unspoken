-- Azeroth Unspoken: registro delle frasi, delle cornici e del vocabolario.
-- Il motore non contiene testi: legge solo ciò che i pacchetti registrano con RegisterPack.
local ADDON, NS = ...
local Engine = {}
NS.Engine = Engine

Engine.packs = {}       -- [id] = pacchetto
Engine.packOrder = {}
Engine.byEvent = {}     -- [evento] = { frase, ... }
Engine.byId = {}        -- [id frase] = frase
Engine.frames = {}      -- [evento o "*"] = { cornice, ... }
Engine.vocab = {}       -- [nome] = { voce, ... }

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
Engine.AsList = AsList

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
	AzerothUnspoken:RegisterPack({
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

-- statistiche per /au info
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
