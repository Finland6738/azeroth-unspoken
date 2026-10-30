-- Azeroth Unspoken: scelta pesata, memoria degli usi e anti-ripetizione.
-- La memoria è per personaggio (AzerothUnspokenCharacterDB.memory) e resta tra le sessioni.
local ADDON, NS = ...
local Engine = NS.Engine

local function Mem() return NS.cdb.memory end

local function Finite(n) return type(n) == "number" and n == n and n ~= math.huge and n ~= -math.huge end

Engine.RECENT_MAX = 200   -- tetto di una lista di recenti caricata dal file (Remember ne tiene molte meno)

---Ripulisce la memoria di anti-ripetizione caricata dal file (#49, #52): voci malformate scartate come per le memorie
---e le relazioni, così un file rovinato non fa fallire ogni scelta a ogni avvio. Restituisce le voci scartate.
---@return integer dropped
function Engine:SanitizeMemory()
	local mem = NS.cdb and NS.cdb.memory
	if type(mem) ~= "table" then return 0 end
	local dropped = 0
	-- uses e last: id stringa -> numero finito (non negativo)
	for _, field in ipairs({ "uses", "last" }) do
		if type(mem[field]) ~= "table" then mem[field] = {} end
		for id, n in pairs(mem[field]) do
			if type(id) ~= "string" or not Finite(n) or n < 0 then mem[field][id] = nil; dropped = dropped + 1 end
		end
	end
	-- recent: evento -> lista di id stringa
	if type(mem.recent) ~= "table" then mem.recent = {} end
	for key, list in pairs(mem.recent) do
		if type(key) ~= "string" or type(list) ~= "table" then
			mem.recent[key] = nil; dropped = dropped + 1
		else
			local clean = {}
			for _, id in ipairs(list) do
				if type(id) == "string" and #clean < self.RECENT_MAX then table.insert(clean, id) end
			end
			local n = 0
			for _ in pairs(list) do n = n + 1 end
			if n ~= #clean then dropped = dropped + 1 end
			mem.recent[key] = clean
		end
	end
	-- lastTone: evento -> registro (stringa); variant: id -> indice intero positivo
	if type(mem.lastTone) ~= "table" then mem.lastTone = {} end
	for key, tone in pairs(mem.lastTone) do
		if type(key) ~= "string" or type(tone) ~= "string" then mem.lastTone[key] = nil; dropped = dropped + 1 end
	end
	if type(mem.variant) ~= "table" then mem.variant = {} end
	for id, i in pairs(mem.variant) do
		if type(id) ~= "string" or not Finite(i) or i < 1 or i ~= math.floor(i) then mem.variant[id] = nil; dropped = dropped + 1 end
	end
	return dropped
end

---------------------------------------------------------------------------
-- Memoria limitata (#86, ADR 0024): non cresce con il numero di frasi usate
---------------------------------------------------------------------------
-- uses     [id] = usi recenti (fattore N), attenuati a ogni accesso; al massimo USES_MAX voci: oltre, si tolgono le
--          meno usate (a parità, le prime in ordine di id), mai quella appena usata
-- variant  [id] = ultima variante usata: solo per le frasi che sono ancora in uses (va e viene con loro)
-- last     [id] = ultimo uso, solo per le voci con un cooldown e solo finché il cooldown dura
-- recent   [chiave] = finestra degli ultimi id per evento (al massimo pacing.recentPhraseWindow), lastTone [evento]
-- Nessun testo (ADR 0017): solo id, numeri e registri.
Engine.USES_MAX = 512
Engine.USES_TRIM = 384    -- oltre USES_MAX si torna a questo numero, così il taglio non avviene a ogni scelta
-- An id that is not registered at login may belong to a regional pack that is loaded later (#101, ADR 0025): its use
-- decays like the others and its last use is kept for at most DORMANT_LAST_MAX seconds (the longest cooldown of the
-- content is seven days), so a pack that was uninstalled leaves nothing behind for long.
Engine.DORMANT_LAST_MAX = 30 * 86400

-- quante voci ha uses (contate una volta per tabella, poi tenute aggiornate da Remember)
local counted, usesCount = nil, 0
local function CountUses(uses)
	if counted ~= uses then
		counted, usesCount = uses, 0
		for _ in pairs(uses) do usesCount = usesCount + 1 end
	end
	return usesCount
end

---Riporta uses (e con lui variant) entro il tetto: restano le voci più usate.
---@param mem table memoria di anti-ripetizione
---@param keepId? string id da non togliere (quello appena usato)
---@return integer removed
function Engine.TrimUses(mem, keepId)
	local uses = mem.uses
	counted = nil   -- si riconta: qualcuno può aver tolto voci dalla tabella
	if CountUses(uses) <= Engine.USES_MAX then return 0 end
	local list = {}
	for id, n in pairs(uses) do
		if id ~= keepId then table.insert(list, { id = id, n = n }) end
	end
	table.sort(list, function(a, b)
		if a.n ~= b.n then return a.n < b.n end
		return a.id < b.id
	end)
	local removed = 0
	for _, e in ipairs(list) do
		if usesCount <= Engine.USES_TRIM then break end
		uses[e.id] = nil
		if mem.variant then mem.variant[e.id] = nil end
		usesCount, removed = usesCount - 1, removed + 1
	end
	return removed
end

---I cooldown delle voci che esistono adesso (frasi e cornici; il vocabolario non ne ha) e gli id noti.
local function KnownIds()
	local known, cooldown = {}, {}
	for id, p in pairs(Engine.byId) do
		known[id] = true
		cooldown[id] = p.cooldown
	end
	for _, list in pairs(Engine.frames) do
		for _, f in ipairs(list) do
			if f.id then
				known[f.id] = true
				cooldown[f.id] = f.cooldown
			end
		end
	end
	for _, list in pairs(Engine.vocab) do
		for _, v in ipairs(list) do if v.id then known[v.id] = true end end
	end
	return known, cooldown
end

function Engine:DecayMemory()
	local dropped = self:SanitizeMemory()
	if dropped > 0 and NS.Diagnostics then
		NS.Diagnostics:Error("memory", ("anti-ripetizione: %d voci malformate scartate"):format(dropped))
	end
	local mem = Mem()
	local known, cooldown = KnownIds()
	local uses = mem.uses
	-- an id not registered now may be in a regional pack not loaded yet: it decays like the others and goes when it
	-- falls under 0.2 (a few logins) or with the cap
	for id, n in pairs(uses) do
		n = n * 0.75
		uses[id] = (n >= 0.2) and n or nil
	end
	counted = nil
	Engine.TrimUses(mem)
	-- ultimo uso: serve solo al cooldown. Via quelli delle voci senza cooldown (la memoria di prima di #86) e dei
	-- cooldown finiti; quello di una voce non registrata adesso (un pacchetto regionale non ancora caricato, o un
	-- pacchetto disinstallato) resta al massimo DORMANT_LAST_MAX secondi
	local now = time()
	for id, t in pairs(mem.last) do
		local cd = cooldown[id]
		if known[id] then
			if not (type(cd) == "number" and now - t < cd) then mem.last[id] = nil end
		elseif not (now - t < Engine.DORMANT_LAST_MAX) then
			mem.last[id] = nil
		end
	end
	-- ultima variante: solo per le frasi ancora tra gli usi recenti
	for id in pairs(mem.variant) do
		if uses[id] == nil then mem.variant[id] = nil end
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

-- entry: la voce usata (frase, cornice o vocabolario; senza, la frase con quell'id); l'ultimo uso si ricorda solo se
-- ha un cooldown (#86)
local function Remember(key, id, keep, entry)
	entry = entry or Engine.byId[id]
	local mem = Mem()
	mem.recent[key] = mem.recent[key] or {}
	local list = mem.recent[key]
	for i = #list, 1, -1 do
		if list[i] == id then table.remove(list, i) end
	end
	table.insert(list, 1, id)
	while #list > keep do table.remove(list) end
	local uses = mem.uses
	if uses[id] == nil then
		CountUses(uses)
		usesCount = usesCount + 1
	end
	uses[id] = (uses[id] or 0) + 1
	if usesCount > Engine.USES_MAX then Engine.TrimUses(mem, id) end
	if entry and entry.cooldown then mem.last[id] = time() end
end

---------------------------------------------------------------------------
-- Peso W = B x C x P x N x S x R (GDD §10)
---------------------------------------------------------------------------
-- B  peso base della regola (weight)
-- C  attinenza al contesto: 1 + 0,35 per condizione soddisfatta, per gli aggiunti "C" (S6c: interlocutore e luogo)
-- P  affinità caratteriale: neutra (1) finché lo step S5 non aggancia la personalità
-- N  novità: si attenua con gli usi recenti e con lo stesso registro dell'ultima frase dell'evento
-- S  affinità di stile: profondità (StyleFactor) per registri (StyleResolver:Affinity)
-- R  relazione con l'interlocutore: neutra (1) finché lo step S6b non aggancia le relazioni
-- Un fattore 0 esclude la frase (le condizioni la escludono già prima, in Eligible).

-- Fattore S per la sola profondità (GDD §4.3). Una frase scritta per altre profondità non viene esclusa: pesa
-- meno, così non resta mai il silenzio per un evento che ha frasi soltanto di un'altra profondità.
Engine.DEPTH_MISMATCH = 0.3
Engine.SPEC_BONUS = 0.35      -- C: per ogni condizione
Engine.USE_DECAY = 0.3        -- N: per ogni uso recente
Engine.SAME_TONE = 0.6        -- N: stesso registro dell'ultima frase dell'evento

---@param entry AUPhrase
---@param ctx? table
---@return number
function Engine.StyleFactor(entry, ctx)
	local depth = ctx and ctx.depth
	if not depth or not entry.depth then return 1 end
	return entry.depth[depth] and 1 or Engine.DEPTH_MISMATCH
end

-- Agganci dei fattori per gli step futuri: [fattore][nome] = fn(entry, ctx) -> numero >= 0.
-- I risultati dello stesso fattore si moltiplicano. Un aggancio che sbaglia o restituisce un valore non valido
-- vale 1 (neutro) e l'errore va in diagnostica: un sistema rotto non spegne il narratore.
--   C: S6c (interlocutore ctx.other, luogo ctx.place)   P: S5 (personalità)   R: S6b (relazioni; 0 = incoerente)
---@type table<string, table<string, fun(entry: AUPhrase, ctx: table): number>>
Engine.weightHooks = { C = {}, P = {}, R = {} }

---Aggiunge, sostituisce o toglie (fn = nil) un aggancio di un fattore del peso.
---@param factor "C"|"P"|"R"
---@param name string
---@param fn? fun(entry: AUPhrase, ctx: table): number
function Engine:SetWeightHook(factor, name, fn)
	assert(self.weightHooks[factor], "fattore del peso sconosciuto: " .. tostring(factor))
	self.weightHooks[factor][name] = fn
end

local function Hooks(factor, entry, ctx)
	local f = 1
	for name, fn in pairs(Engine.weightHooks[factor]) do
		local ok, v = pcall(fn, entry, ctx)
		if ok and type(v) == "number" and v >= 0 and v == v and v < math.huge then
			f = f * v
		elseif NS.Diagnostics then
			NS.Diagnostics:Error("weight:" .. factor .. ":" .. name, ok and ("valore non valido: " .. tostring(v)) or v)
		end
	end
	return f
end

-- Guardie degli eventi: [evento][nome] = fn(ctx) -> boolean. Se una guardia dice no (o sbaglia), l'evento non
-- produce alcuna frase, qualunque via lo abbia chiesto. Serve ai richiami di memoria: una frase che cita un
-- ricordo esce solo se il ricordo esiste davvero (GDD §7.4), anche con un comando manuale.
---@type table<string, table<string, fun(ctx: table): boolean>>
Engine.eventGuards = {}

---Aggiunge, sostituisce o toglie (fn = nil) la guardia di un evento.
---@param event string
---@param name string
---@param fn? fun(ctx: table): boolean
function Engine:SetEventGuard(event, name, fn)
	self.eventGuards[event] = self.eventGuards[event] or {}
	self.eventGuards[event][name] = fn
end

---Tutte le guardie dell'evento danno il via libera?
---@param event string
---@param ctx table
---@return boolean
function Engine:EventAllowed(event, ctx)
	for name, fn in pairs(self.eventGuards[event] or {}) do
		local ok, res = pcall(fn, ctx)
		if not ok and NS.Diagnostics then NS.Diagnostics:Error("guard:" .. event .. ":" .. name, res) end
		if not (ok and res == true) then return false end
	end
	return true
end

---@class AUWeightFactors
---@field B number
---@field C number
---@field P number
---@field N number
---@field S number
---@field R number
---@field W number il prodotto

---I fattori del peso di una voce. Senza contesto (cornici, vocabolario) C, P, S e R restano neutri tranne la
---specificità.
---@param entry table frase, cornice o voce di vocabolario
---@param lastTone? string registro dell'ultima frase dell'evento
---@param ctx? table
---@param profile? AUStyleProfile profilo di Engine.StyleResolver:Resolve
---@return AUWeightFactors
function Engine.Factors(entry, lastTone, ctx, profile)
	local f = { B = entry.weight, C = 1 + Engine.SPEC_BONUS * (entry.spec or 0), P = 1, S = 1, R = 1 }
	f.N = 1 / (1 + Engine.USE_DECAY * (Mem().uses[entry.id] or 0))
	if lastTone and entry.tone and entry.tone == lastTone then f.N = f.N * Engine.SAME_TONE end
	if ctx then
		f.C = f.C * Hooks("C", entry, ctx)
		f.P = Hooks("P", entry, ctx)
		f.S = Engine.StyleFactor(entry, ctx) * Engine.StyleResolver:Affinity(entry, profile)
		f.R = Hooks("R", entry, ctx)
	end
	f.W = f.B * f.C * f.P * f.N * f.S * f.R
	return f
end

-- peso effettivo di una voce (W), dati la memoria e, per le frasi, il contesto e il profilo di stile. È Factors(...).W
-- senza la tabella dei fattori (#83: si calcola per ogni candidata): stessi conti, nello stesso ordine.
local function Score(entry, key, poolSize, lastTone, ctx, profile)
	local C, P, S, R = 1 + Engine.SPEC_BONUS * (entry.spec or 0), 1, 1, 1
	local N = 1 / (1 + Engine.USE_DECAY * (Mem().uses[entry.id] or 0))
	if lastTone and entry.tone and entry.tone == lastTone then N = N * Engine.SAME_TONE end
	if ctx then
		C = C * Hooks("C", entry, ctx)
		P = Hooks("P", entry, ctx)
		S = Engine.StyleFactor(entry, ctx) * Engine.StyleResolver:Affinity(entry, profile)
		R = Hooks("R", entry, ctx)
	end
	return entry.weight * C * P * N * S * R
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
---Le voci di una lista che valgono adesso: forma, pacchetto acceso, cooldown, una variante utilizzabile, condizioni.
---Per le frasi di un evento la lista è Engine:Candidates (l'indice, #83); con tutto byEvent il risultato è lo stesso.
---@param list? table[]
---@param lang string
---@param ctx table
---@param form? "say"|"emote"
---@param now number
---@return table[]
function Engine:Eligible(list, lang, ctx, form, now)
	local out = {}
	if not list then return out end
	local mem = Mem()
	local disabled = NS.db.disabledPacks
	for _, p in ipairs(list) do
		if (not form or p.form == form) and not disabled[p.pack]
			and not (p.cooldown and mem.last[p.id] and now - mem.last[p.id] < p.cooldown) then
			-- regole con condizioni senza effetti collaterali: prima le condizioni, che escludono di più. Le altre (chance,
			-- func; e le cornici, che non hanno ord) solo dopo i testi, come sempre: la sequenza casuale non cambia
			local ok
			if p.impure or not p.ord then
				ok = Engine.AnyUsable(p.text[lang], ctx, p.speaker, p.pack) and Engine.SafeMatch(p.when, ctx)
			else
				ok = Engine.SafeMatch(p.when, ctx) and Engine.AnyUsable(p.text[lang], ctx, p.speaker, p.pack)
			end
			if ok then table.insert(out, p) end
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
-- PickEntry restituisce { text, speaker, form, id, event } oppure nil; Pick solo il testo.
function Engine:Pick(event, ctx, form)
	local rec = self:PickEntry(event, ctx, form)
	return rec and rec.text
end

---@class AUPhraseRecord
---@field text string frase composta, senza il nome per le emote
---@field speaker string narrator | inner | character | npc
---@field form string say | emote
---@field id string id della frase scelta
---@field event string
---@field category? string categoria della regola (combat, exploration...)
---@field style? string registro principale della regola
---@field variant? integer indice della variante scelta tra i testi della lingua
---@field display? string testo come lo vede il narratore (aggiunto dal Gateway)
---@field channel? string canale scelto dal Gateway
---@field proposal? AUProposal proposta creata dal Gateway
---@field sentTo? string canale in cui è stata inviata

---Compone una variante della frase: tra quelle utilizzabili preferisce le scritte per la profondità scelta
---(o senza indicazione) e non ripete la variante usata per ultima.
---@param p AUPhrase
---@param lang string
---@param ctx table
---@return string? text nil se nessuna variante si compone
---@return integer? index posizione della variante tra i testi della lingua
function Engine:RenderPhrase(p, lang, ctx)
	local list = p.text[lang]
	local idx = Engine.UsableVariants(list, ctx, p.speaker, p.pack)
	local depth = ctx.depth
	if depth and #idx > 1 then
		local fit = {}
		for _, i in ipairs(idx) do
			local d = Engine.VariantDepth(list[i])
			if d == nil or d[depth] then table.insert(fit, i) end
		end
		if #fit > 0 then idx = fit end
	end
	local last = Mem().variant and Mem().variant[p.id]
	if last and #idx > 1 then
		for k = #idx, 1, -1 do
			if idx[k] == last then table.remove(idx, k) end
		end
	end
	while #idx > 0 do
		local k = math.random(#idx)
		local text = self:Render(Engine.VariantText(list[idx[k]]), lang, ctx)
		if text then return text, idx[k] end
		table.remove(idx, k)
	end
	return nil
end

---I fattori del peso di una frase per un evento, come li calcola PickEntry (per i test e /au debug).
---@param p AUPhrase
---@param event string
---@param ctx table
---@return AUWeightFactors
function Engine:Weight(p, event, ctx)
	return Engine.Factors(p, Mem().lastTone[event], ctx, self.StyleResolver:Resolve(event, ctx))
end

---Sceglie e compone una frase.
---@param event string
---@param ctx table contesto di NS:BuildContext
---@param form "say"|"emote"
---@return AUPhraseRecord?
function Engine:PickEntry(event, ctx, form)
	if not self:EventAllowed(event, ctx) then return nil end
	local lang = NS:TextLang()
	local now = time()
	-- solo i gruppi dell'indice che il contesto apre (#83): stesse regole e stesso ordine di tutto byEvent[event]
	local list = self:Candidates(event, ctx, form)
	local mem = Mem()
	local lastTone = mem.lastTone[event]
	-- registri adatti all'evento, alla zona e alla profondità (GDD §5.2)
	local profile = self.StyleResolver:Resolve(event, ctx)

	local items = {}
	local own = self:Eligible(list, lang, ctx, form, now)
	for _, p in ipairs(own) do
		table.insert(items, { e = p, w = Score(p, event, #own, lastTone, ctx, profile) })
	end

	local frames
	if form == "emote" then
		frames = self:Eligible(self.frames[event], lang, ctx, nil, now)
		for _, f in ipairs(self:Eligible(self.frames["*"], lang, ctx, nil, now)) do
			table.insert(frames, f)
		end
		if #frames > 0 then
			-- solo la voce pubblica del personaggio si può raccontare in una cornice:
			-- un pensiero (inner) non diventa un'emote
			local says = {}
			for _, p in ipairs(self:Eligible(self:Candidates(event, ctx, "say"), lang, ctx, "say", now)) do
				if p.speaker == "character" then table.insert(says, p) end
			end
			for _, p in ipairs(says) do
				table.insert(items, { e = p, framed = true, w = 0.8 * Score(p, event, #says, lastTone, ctx, profile) })
			end
		end
	end

	-- più tentativi: una frase può fallire se manca una voce di vocabolario
	for _ = 1, 6 do
		local it = WeightedPick(items, event)
		if not it then return nil end
		local p = it.e
		local text, variant = self:RenderPhrase(p, lang, ctx)
		if text and it.framed then
			-- mai frammenti incompatibili: solo le cornici di un registro vicino a quello della frase
			local fitems = {}
			for _, f in ipairs(frames) do
				if self.StyleResolver:Compatible(f.styles, p.styles) then
					table.insert(fitems, { e = f, w = Score(f, "frame:" .. event, #frames) })
				end
			end
			local fit = WeightedPick(fitems, "frame:" .. event)
			text = fit and self:RenderEntry(fit.e, lang, ctx, text)
			if text then Remember("frame:" .. event, fit.e.id, KeepFor(#frames), fit.e) end
		end
		if text then
			Remember(event, p.id, KeepFor(#items), p)
			mem.lastTone[event] = p.tone
			if #p.text[lang] > 1 then
				mem.variant = mem.variant or {}
				mem.variant[p.id] = variant
			end
			-- classi esplicite: %s in alcune impostazioni locali spezza le lettere accentate
			text = text:gsub("[ \t\n]+", " "):gsub("^ ", ""):gsub(" $", "")
			-- le emote non si toccano: il gioco antepone il nome del personaggio
			if form == "say" then text = Capitalize(text) end
			-- una frase parlata dentro una cornice è raccontata dal narratore
			local speaker = it.framed and "narrator" or p.speaker
			return { text = text, speaker = speaker, form = form, id = p.id, event = event,
				category = p.category, style = p.tone, variant = variant }
		end
		it.w = 0
	end
	return nil
end
