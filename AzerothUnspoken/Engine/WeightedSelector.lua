-- Azeroth Unspoken: scelta pesata, memoria degli usi e anti-ripetizione.
-- La memoria è per personaggio (AzerothUnspokenCharacterDB.memory) e resta tra le sessioni.
local ADDON, NS = ...
local Engine = NS.Engine
-- #138: the columns of the rules (PhraseRegistry, column store). The selection reads them directly; a rule is its ord
local R = Engine.R
local ID, SHAPE, WHEN, STYLES, TAGS, THEME, MOTIFS, IMPURE = R.id, R.shape, R.when, R.styles, R.tags, R.theme, R.motifs,
	R.impure
local TX, TEXT_SPAN = Engine.TX, Engine.TEXT_SPAN

local function Mem() return NS.cdb.memory end
local EMPTY = {}
local find = string.find

local function Finite(n) return type(n) == "number" and n == n and n ~= math.huge and n ~= -math.huge end

Engine.RECENT_MAX = 200   -- tetto di una lista di recenti caricata dal file (Remember ne tiene molte meno)
Engine.COUNT_MAX = 1e6    -- tetto di un contatore di usi caricato dal file: un valore enorme non blocca una frase per sempre (#156)

---Ripulisce la memoria di anti-ripetizione caricata dal file (#49, #52): voci malformate scartate come per le memorie
---e le relazioni, così un file rovinato non fa fallire ogni scelta a ogni avvio. Restituisce le voci scartate e i
---valori riportati nei limiti: un ultimo uso nel futuro (l'orologio era avanti e poi è stato corretto) diventa adesso,
---così il cooldown finisce invece di durare fino a quella data; un contatore enorme torna a COUNT_MAX (#156).
---@return integer dropped
---@return integer clamped
function Engine:SanitizeMemory()
	local mem = NS.cdb and NS.cdb.memory
	if type(mem) ~= "table" then return 0, 0 end
	local dropped, clamped, now = 0, 0, time()
	-- uses e last: id stringa -> numero finito (non negativo)
	for _, field in ipairs({ "uses", "last" }) do
		if type(mem[field]) ~= "table" then mem[field] = {} end
		for id, n in pairs(mem[field]) do
			if type(id) ~= "string" or not Finite(n) or n < 0 then
				mem[field][id] = nil; dropped = dropped + 1
			elseif field == "uses" and n > self.COUNT_MAX then
				mem.uses[id] = self.COUNT_MAX; clamped = clamped + 1
			elseif field == "last" and n > now then
				mem.last[id] = now; clamped = clamped + 1
			end
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
	return dropped, clamped
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
	for id, r in pairs(Engine.ordOf) do
		known[id] = true
		cooldown[id] = SHAPE[r].cooldown
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
	local dropped, clamped = self:SanitizeMemory()
	if dropped > 0 and NS.Diagnostics then
		NS.Diagnostics:Error("memory", ("anti-ripetizione: %d voci malformate scartate"):format(dropped))
	end
	if clamped > 0 and NS.Diagnostics then
		NS.Diagnostics:Error("memory", ("anti-repetition: %d future times or oversized counters brought back inside their limits"):format(clamped))
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

-- entry: la voce usata (frase, cornice o vocabolario; senza, la frase con quell'id); l'ultimo uso si ricorda solo se
-- ha un cooldown (#86)
local function Remember(key, id, keep, entry)
	-- #138: the shape of the rule with that id is enough (it has the cooldown)
	entry = entry or (Engine.ordOf[id] and SHAPE[Engine.ordOf[id]])
	local mem = Mem()
	mem.recent[key] = mem.recent[key] or {}
	local list = mem.recent[key]
	for i = #list, 1, -1 do
		if list[i] == id then table.remove(list, i) end
	end
	table.insert(list, 1, id)
	while #list > keep do table.remove(list) end
	Engine.NoteUse(id, entry)
end

---Counts a use of a voice (factor N) and, if it has a cooldown, its last use. Remember does it for the chosen phrase,
---a monologue (#99) for each of its parts, which are not in the anti-repetition window of an event.
---@param id string
---@param entry? table
function Engine.NoteUse(id, entry)
	local mem = Mem()
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
-- Peso W = B x C x P x N x S x R x E (GDD §10; E da R4)
---------------------------------------------------------------------------
-- B  peso base della regola (weight)
-- C  attinenza al contesto: 1 + 0,35 per condizione soddisfatta, per gli aggiunti "C" (S6c: interlocutore e luogo)
-- P  affinità caratteriale: neutra (1) finché lo step S5 non aggancia la personalità
-- N  novità: si attenua con gli usi recenti e con lo stesso registro dell'ultima frase dell'evento; da R3 (#90) anche
--    con il tema, i motivi e la voce delle ultime frasi della sessione (Engine.ThemeNovelty)
-- S  affinità di stile: profondità (StyleFactor) per registri (StyleResolver:Affinity)
-- R  relazione con l'interlocutore: neutra (1) finché lo step S6b non aggancia le relazioni
-- E  stato emotivo (R4, Systems/Emotion.lua): neutro (1) senza un'emozione dominante o con il modulo spento
-- Un fattore 0 esclude la frase (le condizioni la escludono già prima, in Eligible).

-- Fattore S per la sola profondità (GDD §4.3). Una frase scritta per altre profondità non viene esclusa: pesa
-- meno, così non resta mai il silenzio per un evento che ha frasi soltanto di un'altra profondità.
Engine.DEPTH_MISMATCH = 0.3
Engine.SPEC_BONUS = 0.35      -- C: per ogni condizione
Engine.USE_DECAY = 0.3        -- N: per ogni uso recente
Engine.SAME_TONE = 0.6        -- N: stesso registro dell'ultima frase dell'evento

---------------------------------------------------------------------------
-- Thematic memory of the session (#90, ADR 0029)
---------------------------------------------------------------------------
-- The last interventions of the session, newest first: theme, motifs, voice, frame and opening of each, with the
-- time. It lives only in memory (a /reload starts again) and is never saved: ADR 0017 keeps texts out of the
-- SavedVariables, and the opening is a fragment of a text. Each presence weighs less as it ages (THEME_DECAY
-- seconds to vanish) and the newest weighs LAST_WEIGHT times more, so the novelty decays with time, not only at login.
-- R1_COMPAT = true switches off everything R3 added (tiers, fallback, novelty of themes, motifs, voices, frames and
-- openings, quotas, hunger): the offline benchmark uses it to measure the same data before and after.
Engine.R1_COMPAT = nil
Engine.LINES_MAX = 12          -- interventions remembered
Engine.THEME_WINDOW = 6        -- of which the themes and motifs of the newest THEME_WINDOW count
Engine.THEME_DECAY = 1800      -- seconds after which a presence no longer counts
Engine.LAST_WEIGHT = 2         -- the newest intervention counts this much
Engine.THEME_PENALTY = 1.5     -- N_theme = 1 / (1 + THEME_PENALTY x presences of the theme)
Engine.MOTIF_PENALTY = 0.8     -- N_motif = 1 / (1 + MOTIF_PENALTY x presences of the motifs)
Engine.VOICE_REPEAT = 0.35     -- the same voice as the last two interventions
Engine.FRAME_WINDOW = 8        -- frames: the newest FRAME_WINDOW interventions
Engine.FRAME_PENALTY = 2       -- frame weight / (1 + FRAME_PENALTY x uses of the frame in the window)
Engine.FRAME_THEME_BONUS = 1.5 -- a frame written for the theme of the phrase
Engine.OPENING_WINDOW = 8      -- a variant does not open like the newest OPENING_WINDOW interventions, if it can
Engine.TIER_MIN = 3            -- #89: a tier with fewer non-recent candidates competes with the tier below it
-- #138 (owner decision of 2026-11-04, ADR 0051): the share of the picks of each level of specificity that has usable
-- lines, renormalised over those levels: generic (tier 0), situation (tier 1: class, race, faction, mood, time,
-- weather, level band...), place (the last share: zone, subzone and landmark, tiers 2-4). tools/archive/need_model.json
-- (`tier_shares`) plans the waves with the same numbers (Tests/check_archive.py compares them).
Engine.TIER_SHARES = { [0] = 15, [1] = 35, [2] = 50 }
Engine.MONOLOGUE_WINDOW = 6    -- #99: a monologue weighs less while another one is among the newest interventions
Engine.MONOLOGUE_REPEAT = 0.2  -- ... by this factor

Engine.lines = {}
local lineVersion, novelty = 0, nil

---Forgets the thematic memory of the session (tests, /reload).
function Engine:ResetLines()
	self.lines = {}
	lineVersion, novelty = lineVersion + 1, nil
end

---Opening of a text: its first two words in lower case, punctuation and quotes left out (#90). Explicit classes:
---%a and %w split accented letters with some locale settings.
---@param text? string
---@return string?
function Engine.Opening(text)
	if type(text) ~= "string" then return nil end
	local words = {}
	-- the guillemets go first: as bytes in a class they would also cut letters such as "û"
	text = text:gsub("«", " "):gsub("»", " ")
	for w in text:gmatch("[^ \t\n\",.;:!?%-%(%)]+") do
		if not w:find("^{") then table.insert(words, NS.Lower and NS.Lower(w) or w:lower()) end
		if #words == 2 then break end
	end
	return #words > 0 and table.concat(words, " ") or nil
end

---Remembers an intervention of the session (PickEntry calls it when a phrase is composed).
---@param line { theme?: string, motifs?: string[], speaker?: string, frame?: string, opening?: string, category?: string, kind?: string }
function Engine:NoteLine(line)
	line.at = GetTime()
	table.insert(self.lines, 1, line)
	while #self.lines > self.LINES_MAX do table.remove(self.lines) end
	lineVersion, novelty = lineVersion + 1, nil
end

-- presences of themes, motifs and frames in the window, and the voices of the last two interventions; computed once
-- per pick (the time is the same during one pick)
local function NoveltyState()
	local now = GetTime()
	if novelty and novelty.version == lineVersion and novelty.now == now then return novelty end
	local st = { version = lineVersion, now = now, themes = {}, motifs = {}, frames = {}, openings = {} }
	for i, l in ipairs(Engine.lines) do
		local age = now - (l.at or now)
		local w = math.max(0, 1 - age / Engine.THEME_DECAY) * (i == 1 and Engine.LAST_WEIGHT or 1)
		if w > 0 and i <= Engine.THEME_WINDOW then
			if l.theme then st.themes[l.theme] = (st.themes[l.theme] or 0) + w end
			for _, m in ipairs(l.motifs or EMPTY) do st.motifs[m] = (st.motifs[m] or 0) + w end
		end
		if w > 0 and i <= Engine.FRAME_WINDOW and l.frame then st.frames[l.frame] = (st.frames[l.frame] or 0) + 1 end
		if w > 0 and i <= Engine.OPENING_WINDOW and l.opening then st.openings[l.opening] = true end
		if w > 0 and i <= Engine.MONOLOGUE_WINDOW and l.kind == "monologue" then st.monologue = true end
	end
	local a, b = Engine.lines[1], Engine.lines[2]
	if a and b and a.speaker == b.speaker and now - (b.at or now) < Engine.THEME_DECAY then st.voice = a.speaker end
	novelty = st
	return st
end
Engine.NoveltyState = NoveltyState

---Novelty of a phrase for the session (#90): its theme, its motifs and its voice against the last interventions.
---1 when nothing came back; never 0. `voice` is the voice the phrase will be shown in (a framed phrase: narrator).
---@param entry table
---@param voice? string
---@return number
function Engine.ThemeNovelty(entry, voice)
	if Engine.R1_COMPAT then return 1 end
	local st = NoveltyState()
	local f = 1
	if entry.theme then
		local n = st.themes[entry.theme]
		if n then f = f / (1 + Engine.THEME_PENALTY * n) end
	end
	if entry.motifs then
		local n = 0
		for _, m in ipairs(entry.motifs) do n = n + (st.motifs[m] or 0) end
		if n > 0 then f = f / (1 + Engine.MOTIF_PENALTY * n) end
	end
	if st.voice and st.voice == (voice or entry.speaker) then f = f * Engine.VOICE_REPEAT end
	-- #99: a monologue is a longer moment; two close together would sound like a speech
	if st.monologue and entry.kind == "monologue" then f = f * Engine.MONOLOGUE_REPEAT end
	return f
end

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
--   E: R4 (stato emotivo, Systems/Emotion.lua; 1 quando il modulo è spento)
---@type table<string, table<string, fun(entry: AUPhrase, ctx: table): number>>
Engine.weightHooks = { C = {}, P = {}, R = {}, E = {} }
-- Pure hooks (#157, #138): [factor][name] = true, or fn(ctx) -> true when the hook is pure in that context. A pure
-- hook reads only the context and the rule's descriptive fields (voice, registers, tags, theme, motifs, depth...),
-- never the id, the texts, the conditions or the order of the rule, and draws no random numbers; during one pick it
-- gives the same value for every rule with the same descriptive fields, so the selection computes it once for them
-- (Engine.MEMO).
Engine.weightHookPure = { C = {}, P = {}, R = {}, E = {} }

---Aggiunge, sostituisce o toglie (fn = nil) un aggancio di un fattore del peso.
---@param factor "C"|"P"|"R"|"E"
---@param name string
---@param fn? fun(entry: AUPhrase, ctx: table): number
---@param pure? boolean|fun(ctx: table): boolean the hook is pure (always, or in the contexts where this says so)
function Engine:SetWeightHook(factor, name, fn, pure)
	assert(self.weightHooks[factor], "fattore del peso sconosciuto: " .. tostring(factor))
	self.weightHooks[factor][name] = fn
	self.weightHookPure[factor][name] = fn and (pure == true or type(pure) == "function") and pure or nil
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

-- #138: rule r as a table for Score and the weight hooks, without making a view: one table, loaded with the columns of
-- the rule before each use, with the rule's shape as metatable (entry.speaker reads as on a view). A hook reads it during
-- the call and keeps nothing; it has no texts (a hook that needs them reads Engine.TextRange(entry.ord, lang)).
local cursor = {}
local function Load(r)
	-- without the metatable while it is loaded: a field that was nil would otherwise be written through the shape
	setmetatable(cursor, nil)
	cursor.id, cursor.ord, cursor.when, cursor.styles, cursor.tags = ID[r], r, WHEN[r], STYLES[r], TAGS[r]
	cursor.theme, cursor.motifs = THEME[r], MOTIFS[r]
	return setmetatable(cursor, SHAPE[r])
end

-- Guardie degli eventi: [evento][nome] = fn(ctx) -> boolean. Se una guardia dice no (o sbaglia), l'evento non
-- produce alcuna frase, qualunque via lo abbia chiesto. Serve ai richiami di memoria: una frase che cita un
-- ricordo esce solo se il ricordo esiste davvero (GDD §7.4), anche con un comando manuale.
---@type table<string, table<string, fun(ctx: table): boolean>>
Engine.eventGuards = {}

-- #122, #123 (ADR 0044): events whose lines a system picks itself, [event] = fn(event, ctx, form) -> record or nil. The
-- guards of the event still decide first; the picker returns a record like PickOwn's. The songbook's recall uses it.
---@type table<string, fun(event: string, ctx: table, form: string): AUPhraseRecord?>
Engine.pickers = {}
-- #122: the ids the user muted in the songbook, a set (nil when there is none): never eligible, whatever the event
---@type table<string, any>?
Engine.muted = nil

---Adds, replaces or removes (fn = nil) the picker of an event.
---@param event string
---@param fn? fun(event: string, ctx: table, form: string): AUPhraseRecord?
function Engine:SetPicker(event, fn)
	if type(event) == "string" then self.pickers[event] = type(fn) == "function" and fn or nil end
end

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
---@field E number stato emotivo (R4)
---@field W number il prodotto

---I fattori del peso di una voce. Senza contesto (cornici, vocabolario) C, P, S e R restano neutri tranne la
---specificità.
---@param entry table frase, cornice o voce di vocabolario
---@param lastTone? string registro dell'ultima frase dell'evento
---@param ctx? table
---@param profile? AUStyleProfile profilo di Engine.StyleResolver:Resolve
---@param voice? string voice the phrase is shown in (a framed phrase: narrator); nil = its own
---@return AUWeightFactors
function Engine.Factors(entry, lastTone, ctx, profile, voice)
	entry = Engine.Rule(entry)   -- #138: an ord gives its view
	local f = { B = entry.weight, C = 1 + Engine.SPEC_BONUS * (entry.spec or 0), P = 1, S = 1, R = 1, E = 1 }
	f.N = 1 / (1 + Engine.USE_DECAY * (Mem().uses[entry.id] or 0))
	if lastTone and Engine.Tone(entry) == lastTone then f.N = f.N * Engine.SAME_TONE end
	if ctx then f.N = f.N * Engine.ThemeNovelty(entry, voice) end
	if ctx then
		f.C = f.C * Hooks("C", entry, ctx)
		f.P = Hooks("P", entry, ctx)
		f.S = Engine.StyleFactor(entry, ctx) * Engine.StyleResolver:Affinity(entry, profile)
		f.R = Hooks("R", entry, ctx)
		f.E = Hooks("E", entry, ctx)
	end
	f.W = f.B * f.C * f.P * f.N * f.S * f.R * f.E
	return f
end

-- peso effettivo di una voce (W), dati la memoria e, per le frasi, il contesto e il profilo di stile. È Factors(...).W
-- senza la tabella dei fattori (#83: si calcola per ogni candidata): stessi conti, nello stesso ordine.
local function Score(entry, key, poolSize, lastTone, ctx, profile, voice)
	local C, P, S, R, E = 1 + Engine.SPEC_BONUS * (entry.spec or 0), 1, 1, 1, 1
	local N = 1 / (1 + Engine.USE_DECAY * (Mem().uses[entry.id] or 0))
	if lastTone and Engine.Tone(entry) == lastTone then N = N * Engine.SAME_TONE end
	if ctx then N = N * Engine.ThemeNovelty(entry, voice) end
	if ctx then
		C = C * Hooks("C", entry, ctx)
		P = Hooks("P", entry, ctx)
		S = Engine.StyleFactor(entry, ctx) * Engine.StyleResolver:Affinity(entry, profile)
		R = Hooks("R", entry, ctx)
		E = Hooks("E", entry, ctx)
	end
	return entry.weight * C * P * N * S * R * E
end

-- le voci usate di recente restano escluse finché ce ne sono altre disponibili
local function WeightedPick(items, key, window)
	local pool, total = {}, 0
	-- the window as a set, once, not scanned for every item (#157); C0i: a pool narrowed by a share has its own
	local recent = window
	if not recent then
		recent = {}
		for _, id in ipairs(Mem().recent[key] or EMPTY) do recent[id] = true end
	end
	for _, it in ipairs(items) do
		-- #138: e is a rule's ord, or a frame
		local e = it.e
		if it.w > 0 and not recent[ID[e] or e.id] then
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

Engine.WeightedPick, Engine.Remember, Engine.KeepFor = WeightedPick, Remember, KeepFor
---Score for tests and tools: a rule may be given by its ord (#138).
function Engine.Score(entry, ...)
	return Score(Engine.Rule(entry), ...)
end

---------------------------------------------------------------------------
-- Memo of one pick (#157, #138, ADR 0024)
---------------------------------------------------------------------------
-- During one pick the context, the style profile, the thematic memory and the time do not change. So:
--   - pure conditions (no chance, func or pack condition: the rule is not `impure`) give the same answer for every
--     rule that shares the conditions table (PhraseRegistry interns them): Eligible evaluates them once per table;
--   - every factor of the weight except the novelty of uses (N, per id) depends only on the rule's descriptive fields
--     (its shape, PhraseRegistry, with its registers, tags, theme and motifs) and on the context, as long as the hooks
--     of the factor are pure (Engine.weightHookPure): ScoreMemo computes them once per combination and voice, with the
--     same operations in the same order as Score, so the weights are the same numbers and the picks the same picks.
-- The weights are memoized only when a pick weighs at least MEMO_MIN rules: in a small pick the combinations rarely
-- repeat and the memo would cost more (its tables) than it saves. Engine.MEMO = false switches the memo off, and the
-- check of the groups of the index apart (Engine:EligibleFor): the test of the pick results (TestScale.lua) runs the
-- same picks both ways and requires the same trace.
Engine.MEMO = true
Engine.MEMO_MIN = 128

local NONE = {}   -- memo key of an absent field

-- the factors whose hooks are all pure in this context: [factor] = true
local function PureFactors(ctx)
	local out = {}
	for factor, hooks in pairs(Engine.weightHooks) do
		local pure, all = Engine.weightHookPure[factor] or EMPTY, true
		for name in pairs(hooks) do
			local p = pure[name]
			if type(p) == "function" then
				local ok, res = pcall(p, ctx)
				p = ok and res == true
			end
			if p ~= true then all = false; break end
		end
		out[factor] = all
	end
	return out
end

---A fresh memo for one pick (the part for the weights is made by the first ScoreMemo).
---@return table
function Engine.NewPickMemo()
	return { match = {} }
end

-- the factors of one combination of descriptive fields and voice; C, P, R and E only when every hook of the factor is
-- pure. #138: with all four, also W0, the whole weight of a rule of the combination not used yet (no entry in `uses`):
-- the operations of ScoreMemo below with 0 uses, in the same order, so the same number.
local function ShapeFactors(entry, lastTone, ctx, profile, voice, pure)
	local m = {}
	m.tone = (lastTone and Engine.Tone(entry) == lastTone) and true or false
	m.nov = Engine.ThemeNovelty(entry, voice)
	if pure.C then m.C = (1 + Engine.SPEC_BONUS * (entry.spec or 0)) * Hooks("C", entry, ctx) end
	if pure.P then m.P = Hooks("P", entry, ctx) end
	m.S = Engine.StyleFactor(entry, ctx) * Engine.StyleResolver:Affinity(entry, profile)
	if pure.R then m.R = Hooks("R", entry, ctx) end
	if pure.E then m.E = Hooks("E", entry, ctx) end
	if m.C and m.P and m.R and m.E then
		local N = 1 / (1 + Engine.USE_DECAY * 0)
		if m.tone then N = N * Engine.SAME_TONE end
		N = N * m.nov
		m.W0 = entry.weight * m.C * m.P * N * m.S * m.R * m.E
	end
	return m
end

-- a child of a node of the memo, made when missing
local function Child(node, key)
	local child = node[key]
	if not child then
		child = {}
		node[key] = child
	end
	return child
end

---Score(rule, _, _, lastTone, ctx, profile, voice) with the memo of the pick: the same number.
---@param r integer|AUPhrase the rule's ord (#138), or its view
---@param lastTone? string
---@param ctx table
---@param profile AUStyleProfile
---@param voice? string
---@param memo table Engine.NewPickMemo
---@return number
local function ScoreMemo(r, lastTone, ctx, profile, voice, memo)
	if type(r) ~= "number" then r = r.ord end
	local shape = SHAPE[r]
	if not memo.shapes then
		memo.shapes, memo.pure, memo.uses = {}, PureFactors(ctx), Mem().uses
	end
	-- shape, registers, tags, theme, motifs, voice: the descriptive fields of the rule (all but id, text, when, ord).
	-- #138: the lookups written out, the cheapest way in Lua 5.1 (the memo is asked once per weighed rule)
	local node = memo.shapes[shape] or Child(memo.shapes, shape)
	local key = STYLES[r] or NONE
	node = node[key] or Child(node, key)
	key = TAGS[r] or NONE
	node = node[key] or Child(node, key)
	key = THEME[r] or NONE
	node = node[key] or Child(node, key)
	key = MOTIFS[r] or NONE
	node = node[key] or Child(node, key)
	local m = node[voice or false]
	if not m then
		m = ShapeFactors(Load(r), lastTone, ctx, profile, voice, memo.pure)
		node[voice or false] = m
	end
	local uses = memo.uses[ID[r]]
	if uses == nil and m.W0 then return m.W0 end
	-- the operations of Score, in its order
	local N = 1 / (1 + Engine.USE_DECAY * (uses or 0))
	if m.tone then N = N * Engine.SAME_TONE end
	N = N * m.nov
	local C = m.C or (1 + Engine.SPEC_BONUS * (shape.spec or 0)) * Hooks("C", Load(r), ctx)
	local P = m.P or Hooks("P", Load(r), ctx)
	local R = m.R or Hooks("R", Load(r), ctx)
	local E = m.E or Hooks("E", Load(r), ctx)
	return shape.weight * C * P * N * m.S * R * E
end
Engine.ScoreMemo = ScoreMemo

---------------------------------------------------------------------------
-- Scelta
---------------------------------------------------------------------------
-- #138: the frames (tables without an ord) of a list that hold now: the checks of Eligible, texts before conditions
local function EligibleEntries(list, lang, ctx, form, now, memo, closed, literary, muted)
	local out = {}
	local mem, disabled, AnyUsable = Mem(), NS.db.disabledPacks, Engine.AnyUsable
	for _, p in ipairs(list) do
		local when = p.when
		if not (memo and when ~= nil and memo[when] == false)
			and (not form or p.form == form) and not disabled[p.pack] and p.chainable ~= "only"
			and not (muted and muted[p.id])
			and not (p.cooldown and mem.last[p.id] and now - mem.last[p.id] < p.cooldown)
			and (closed == nil or not closed[p.category]) and (literary == nil or p.category ~= literary)
			and AnyUsable(p.text[lang], ctx, p.speaker, p.pack) and Engine.SafeMatch(when, ctx) then
			table.insert(out, p)
		end
	end
	return out
end

---Le voci di una lista che valgono adesso: forma, pacchetto acceso, cooldown, una variante utilizzabile, condizioni.
---Per le frasi di un evento la lista è Engine:Candidates (l'indice, #83); con tutto byEvent il risultato è lo stesso.
---#138: a list of rules is a list of ords (byEvent, the index) and the result is ords; a list of views (tests, tools)
---gives views, and a list of frames gives frames.
---@param list? (integer|table)[]
---@param lang string
---@param ctx table
---@param form? "say"|"emote"
---@param now number
---@param memo? table answers of pure conditions tables during one pick ([when] = boolean: Engine.NewPickMemo().match)
---@return (integer|table)[]
function Engine:Eligible(list, lang, ctx, form, now, memo)
	local out = {}
	if not list then return out end
	-- #118: the categories with their own pacing that cannot speak in this spontaneous pick (Pacing:Closed), and the
	-- literary forms when the setting says never or the character is fighting (any pick, asked for or not)
	local closed = ctx and ctx.closed
	local literary = NS.Pacing:LiteraryClosed(ctx) and self.LITERARY_CATEGORY or nil
	-- #122: the pieces the user muted in the songbook (Systems/Songbook.lua), nil when there is none
	local muted = self.muted
	local head = list[1]
	if type(head) == "table" then
		if not (head.ord and SHAPE[head.ord]) then
			return EligibleEntries(list, lang, ctx, form, now, memo, closed, literary, muted)
		end
		-- views: the same check on their ords
		local ords = {}
		for i, p in ipairs(list) do ords[i] = p.ord end
		out = self:Eligible(ords, lang, ctx, form, now, memo)
		for i, r in ipairs(out) do out[i] = Engine.Rule(r) end
		return out
	end
	local Check = self:RuleCheck(lang, ctx, form, now, memo, closed, literary, muted)
	for _, r in ipairs(list) do
		if Check(r) then out[#out + 1] = r end
	end
	return out
end

---The check of Eligible for one rule, given by its ord (C0e, ADR 0052: the bounded pick checks the rules it samples
---one at a time). Made once per pick: what the check reads that does not change during the pick is read here.
---@param lang string
---@param ctx table
---@param form? "say"|"emote"
---@param now number
---@param memo? table answers of pure conditions tables during one pick (see Eligible)
---@param closed? table categories closed in this pick (computed from ctx when nil and ctx has them)
---@param literary? string the literary category when it cannot speak
---@param muted? table muted ids
---@return fun(r: integer): any check truthy when the rule holds now
function Engine:RuleCheck(lang, ctx, form, now, memo, closed, literary, muted)
	local engine = self
	local last = Mem().last
	local disabled = NS.db.disabledPacks
	local RuleUsable, SafeMatch = Engine.RuleUsable, Engine.SafeMatch
	local WHEN, SHAPE, ID, IMPURE = WHEN, SHAPE, ID, IMPURE   -- locals: the check reads them for every candidate
	local store = TX[lang]
	local tv, tat = store and store.v, store and store.at
	return function(r)
		local when, p = WHEN[r], SHAPE[r]
		-- #138: conditions already false in this pick end the check at once. Only pure conditions are in the memo, and
		-- purity belongs to the conditions table, so no rule that shares it could have drawn a random number here
		if not (memo and when ~= nil and memo[when] == false)
			and (not form or p.form == form) and not disabled[p.pack] and p.chainable ~= "only" then
			local id = ID[r]
			if not (muted and muted[id])
				and not (p.cooldown and last[id] and now - last[id] < p.cooldown)
				and (closed == nil or not closed[p.category]) and (literary == nil or p.category ~= literary) then
				-- regole con condizioni senza effetti collaterali: prima le condizioni, che escludono di più. Le altre
				-- (chance, func; e le cornici, sopra) solo dopo i testi, come sempre: la sequenza casuale non cambia
				if p.kind == "monologue" then
					-- #99: its conditions, then every part (a whole phrase with its own conditions and texts); off in R1_COMPAT
					return not engine.R1_COMPAT and SafeMatch(when, ctx) and engine:MonologueUsable(r, lang, ctx, now)
				elseif IMPURE[r] then
					return RuleUsable(r, lang, ctx) and SafeMatch(when, ctx)
				end
				local m
				if when == nil then
					m = true
				elseif memo then
					m = memo[when]
					if m == nil then
						m = SafeMatch(when, ctx)
						memo[when] = m
					end
				else
					m = SafeMatch(when, ctx)
				end
				if m then
					-- #138: the common case of RuleUsable, a first variant with no placeholder (its pack, the
					-- rule's, is on); a = count * TEXT_SPAN + first slot, and a count of 0 has no first variant
					local a = tat and tat[r]
					local first = a and a >= TEXT_SPAN and tv[a % TEXT_SPAN]
					return (type(first) == "string" and not find(first, "{", 1, true)) or RuleUsable(r, lang, ctx)
				end
			end
		end
		return false
	end
end

---The eligible rules of an event, as Eligible(Candidates(event, ctx, form)) gives them: the same rules, in the same
---order, with the same random numbers drawn (#138). The groups of the index are checked apart and only their eligible
---rules are merged, so a pick no longer copies a long generic group: of a few thousand candidates, a pick keeps
---a few dozen. This is the same as checking the merged list because only the generic group can hold a rule whose check
---draws random numbers (PhraseRegistry: impure conditions and monologues are never keyed), and it is checked in its
---own order; the keyed groups hold rules with pure conditions, whose answers do not depend on when they are asked.
---@param event string
---@param ctx table
---@param form? "say"|"emote" nil = every form, through Candidates
---@param lang string
---@param now number
---@param memo? table answers of pure conditions tables during one pick (see Eligible)
---@return integer[] ords
function Engine:EligibleFor(event, ctx, form, lang, now, memo)
	-- with Engine.MEMO = false the merged list, as before: the test of the pick results compares the two ways
	if form == nil or Engine.MEMO == false then
		return self:Eligible(self:Candidates(event, ctx, form), lang, ctx, form, now, memo)
	end
	local groups = self:CandidateGroups(event, ctx, form)
	if #groups <= 1 then return self:Eligible(groups[1], lang, ctx, form, now, memo) end
	local outs = {}
	for _, list in ipairs(groups) do
		local out = self:Eligible(list, lang, ctx, form, now, memo)
		-- an empty one adds nothing to the union (and merging it would copy the other)
		if #out > 0 then table.insert(outs, out) end
	end
	if #outs == 0 then return {} end
	return Engine.MergeByOrd(outs)
end

---------------------------------------------------------------------------
-- C0e (ADR 0052): a bounded pick
---------------------------------------------------------------------------
-- Checking and weighing every candidate of an event costs in proportion to the lines written for it, and the content
-- waves (ADR 0050) add lines to the same events for a long time: the generic, situation and capital pools of `muse`
-- would hold thousands. Above SAMPLE_FROM candidates a pick therefore reads each specificity tier apart (the groups of
-- the index split by tier, Engine.Split): a tier of at most SAMPLE_SCAN candidates is checked whole, as before; a
-- larger one is sampled, rules drawn at random without repetition and checked one at a time until SAMPLE_KEEP of them
-- hold, or SAMPLE_CHECKS were checked. A rule in the anti-repetition window is passed over before its check (it could
-- not be picked while fresher ones are there). The weights, the tiers mixed by share, the window and the variants then
-- work on what was kept exactly as on every candidate before. So the cost of a pick has a bound that does not depend
-- on how many lines an event has: at most SAMPLE_CHECKS checks and SAMPLE_KEEP weights per tier.
--   - Every rule that holds has the same chance to be kept, so the pick stays random over all of them; inside the
--     kept ones the weights choose as before.
--   - The tiers are sampled apart, so a few landmark or zone lines beside thousands of generic ones are always seen,
--     and the levels keep their shares (TestSelection checks 50/35/15 statistically).
--   - The anti-repetition window keeps its size from the candidates that hold, estimated in a sampled tier.
--   - When the sample finds nothing (a large event of which almost nothing holds now, or only lines in the window)
--     the pick checks every candidate, as before: no line that could speak goes silent because of the sample.
-- Engine.SAMPLE = false (or R1_COMPAT) checks every candidate always: the reference of the tests.
Engine.SAMPLE = true
Engine.SAMPLE_FROM = 64     -- an event (one form) with at most this many candidates is checked whole
Engine.SAMPLE_SCAN = 24     -- a tier with at most this many candidates is checked whole
Engine.SAMPLE_KEEP = 16     -- rules that hold kept from a larger tier
Engine.SAMPLE_CHECKS = 48   -- rules of a larger tier checked at most
Engine.SAMPLE_DRAWS = 4     -- random draws per check at most (draws of a rule already drawn, or of another speaker)
Engine.SAMPLE_PART_MIN = 2  -- C0i: the least budget (scan, keep) of a part of a tier read apart for a pool share

---The rules that hold of a large event, read by tier with a bounded sample (C0e, see above), or nil when the event has
---at most SAMPLE_FROM candidates, when no tier has more than SAMPLE_SCAN, when sampling is off, or when the sample
---found nothing: then the caller checks every candidate (Engine:EligibleFor).
---@param event string
---@param ctx table
---@param form "say"|"emote"
---@param lang string
---@param now number
---@param memo? table answers of pure conditions tables during one pick (see Eligible)
---@param recent table<string, boolean> the ids in the anti-repetition window of the event
---@param speaker? string only rules of this speaker (the spoken lines told in a frame: "character")
---@return integer[]? ords the rules kept, by tier
---@return number? count the rules that hold, estimated where a tier was sampled (for the window, KeepFor)
function Engine:SampledEligible(event, ctx, form, lang, now, memo, recent, speaker)
	if not self.SAMPLE or self.R1_COMPAT or form == nil then return nil end
	local groups = self:CandidateGroups(event, ctx, form)
	local n = 0
	for _, list in ipairs(groups) do n = n + #list end
	if n <= self.SAMPLE_FROM then return nil end
	-- the lists of each tier, and whether one is large enough to be sampled; if none is, every candidate is checked
	-- in order of registration, as before (the same pick)
	local scan = self.SAMPLE_SCAN
	-- C0i (ADR 0056): the rules a pool share prefers are read apart in each tier, as the tiers are, so three lines of
	-- an NPC's voice or a few short lines beside thousands of others are always seen and can keep their share (the
	-- first share that holds in the context; SharePool applies every one on what was kept). Each part has the budget
	-- of the sample in proportion to its share (at least SAMPLE_PART_MIN), so a pick weighs about as many rules as
	-- without the share.
	local active = Engine.ActiveShares(ctx, event)
	local def = active and active[1].def
	local budget = { 1 }
	if def then
		local sh = math.min(1, active[1].share)
		budget = { sh, 1 - sh }
	end
	local tiers, large = {}, false
	for t = 0, Engine.MAX_TIER do
		for part = 1, #budget do
			local lists, size = {}, 0
			for _, list in ipairs(groups) do
				local seg
				if def then
					local ss = Engine.SplitShare(list, def, lang)
					seg = part == 1 and ss.pref[t] or ss.rest[t]
				else
					seg = Engine.Split(list)[t]
				end
				if #seg > 0 then
					lists[#lists + 1] = seg
					size = size + #seg
				end
			end
			if size > 0 then
				local b, least = budget[part], self.SAMPLE_PART_MIN
				local seg = { lists = lists, size = size, scan = scan, keep = self.SAMPLE_KEEP, checks = self.SAMPLE_CHECKS }
				if b < 1 then
					seg.scan = math.max(least, math.ceil(scan * b))
					seg.keep = math.max(least, math.ceil(seg.keep * b))
					seg.checks = math.max(least * 3, math.ceil(seg.checks * b))
				end
				tiers[#tiers + 1] = seg
				if size > seg.scan then large = true end
			end
		end
	end
	if not large then return nil end
	local closed = ctx and ctx.closed
	local literary = NS.Pacing:LiteraryClosed(ctx) and self.LITERARY_CATEGORY or nil
	local Check = self:RuleCheck(lang, ctx, form, now, memo, closed, literary, self.muted)
	local random = math.random
	local out, count = {}, 0
	for _, tier in ipairs(tiers) do
		local lists, size = tier.lists, tier.size
		local keep, checks = tier.keep, tier.checks
		local draws = checks * self.SAMPLE_DRAWS
		if size <= tier.scan then
			-- a small tier: every rule, in order of registration (a rule in two groups once)
			for _, r in ipairs(Engine.MergeByOrd(lists)) do
				if (not speaker or SHAPE[r].speaker == speaker) and Check(r) then
					out[#out + 1] = r
					count = count + 1
				end
			end
		else
			-- tried: the rules drawn (a rule in two groups of the tier has two positions)
			local tried, ntried, kept, checked, inWindow, drawn = {}, 0, 0, 0, 0, 0
			while kept < keep and checked < checks and drawn < draws and ntried < size do
				drawn = drawn + 1
				-- a position among the lists of the tier
				local j, list = random(size), nil
				for k = 1, #lists do
					list = lists[k]
					if j <= #list then break end
					j = j - #list
				end
				local r = list[j]
				if not tried[r] then
					tried[r] = true
					ntried = ntried + 1
					if not speaker or SHAPE[r].speaker == speaker then
						if recent[ID[r]] then
							inWindow = inWindow + 1
						else
							checked = checked + 1
							if Check(r) then
								out[#out + 1] = r
								kept = kept + 1
							end
						end
					end
				end
			end
			-- the rules of the tier that hold, estimated from the share of the drawn ones that held (those in the
			-- window held when they were said)
			if ntried > 0 then count = count + (kept + inWindow) * size / ntried end
		end
	end
	-- nothing found (a large event of which almost nothing holds now, or only lines in the window): every candidate is
	-- checked, as before, so that no line that could speak goes silent because of the sample
	if #out == 0 then return nil end
	return out, count
end

---The spaces of a composed text (#117): runs of spaces and tabs become one space and line breaks are kept: a verse per
---line, at most one empty line between two stanzas, none at the start or the end, no space around a break. A text with
---no break comes out as before. Explicit classes: %s splits accented letters in some locales.
---@param text string
---@return string
function Engine.NormalizeSpace(text)
	text = text:gsub("\r\n?", "\n"):gsub("[ \t]+", " "):gsub(" ?\n ?", "\n"):gsub("\n\n\n+", "\n\n")
	return (text:gsub("^[ \n]+", ""):gsub("[ \n]+$", ""))
end

local function Capitalize(s)
	-- la prima lettera ASCII in maiuscolo; i caratteri accentati restano come sono
	return (s:gsub("^([ «\"]*)([a-z])", function(sp, c) return sp .. c:upper() end))
end

---------------------------------------------------------------------------
-- Monologues (#99, ADR 0032): two or three whole phrases, one intervention
---------------------------------------------------------------------------
-- A monologue has no texts: it chains the whole phrases named in `parts` (rules with `chainable`), each rendered
-- from its own variants. Nothing is cut or glued inside a phrase (ADR 0001): the parts were written to follow one
-- another, and the validator checks that they share the voice, the register and the theme or a motif.

---Every part of the monologue exists, is chainable, is in an enabled pack, is out of its cooldown, matches its own
---conditions and has a usable variant.
---@param p integer|AUPhrase the monologue's ord (#138) or its view
---@param lang string
---@param ctx table
---@param now number
---@return boolean
function Engine:MonologueUsable(p, lang, ctx, now)
	local parts = (type(p) == "number" and SHAPE[p] or p).parts
	if not parts or #parts < self.MONOLOGUE_MIN_PARTS or #parts > self.MONOLOGUE_MAX_PARTS then return false end
	local mem, disabled = Mem(), NS.db.disabledPacks
	for _, id in ipairs(parts) do
		local r = self.ordOf[id]
		local q = r and SHAPE[r]
		if not q or not q.chainable or q.kind or disabled[q.pack]
			or (q.cooldown and mem.last[id] and now - mem.last[id] < q.cooldown)
			or not Engine.SafeMatch(WHEN[r], ctx) or not Engine.RuleUsable(r, lang, ctx) then
			return false
		end
	end
	return true
end

---The parts of a monologue in the order they are said: as written, or with `order = "free"` the first one and then
---the others shuffled.
---@param p AUPhrase
---@return string[]
function Engine.MonologueOrder(p)
	local out = {}
	for i, id in ipairs(p.parts) do out[i] = id end
	if p.order == "free" then
		for i = #out, 3, -1 do
			local j = math.random(2, i)
			out[i], out[j] = out[j], out[i]
		end
	end
	return out
end

---Renders a monologue: one variant of each part (as RenderPhrase chooses it), joined by a space. The parts after
---the first are whole sentences and start with a capital letter; the first keeps the form of the monologue (an emote
---goes after the character's name).
---@param p AUPhrase
---@param lang string
---@param ctx table
---@return string? text
---@return { id: string, variant: integer }[]? parts
function Engine:RenderMonologue(p, lang, ctx)
	local texts, used = {}, {}
	for i, id in ipairs(Engine.MonologueOrder(p)) do
		local q = self.byId[id]
		local text, variant = self:RenderPhrase(q, lang, ctx)
		if not text then return nil end
		text = text:gsub("[ \t\n]+", " "):gsub("^ ", ""):gsub(" $", "")
		if i > 1 or p.form == "say" then text = Capitalize(text) end
		texts[i], used[i] = text, { id = id, variant = variant }
	end
	return table.concat(texts, " "), used
end

---------------------------------------------------------------------------
-- Interchangeable stanzas (#127, ADR 0043): the one exception to whole phrases
---------------------------------------------------------------------------
-- A song with `kind = "stanzas"` keeps, in each language, its frame as the first variant (the attribution and the
-- fixed refrain, with Engine.STANZA_MARK where the stanzas go) and its stanzas as the others, in the order they were
-- written. One or two stanzas (`show`) are said, always of this song and always in that order; the validator checks
-- that the stanzas were written together (same verse count and metre, the same stanzas in every language, none added
-- by another pack).

---The indices (in the texts of the language) of the stanzas to say: `show` of them, at random but in their declared
---order, avoiding the one that opened the song last time when there is a choice.
---@param p AUPhrase
---@param list AUVariantValue[]
---@return integer[]
function Engine.StanzaChoice(p, list)
	local pool = {}
	for i = 2, #list do
		if Engine.VariantOk(list[i]) and Engine.VariantPack(list[i], p.pack) == p.pack then table.insert(pool, i) end
	end
	local show = math.min(math.max(tonumber(p.show) or 1, 1), Engine.STANZAS_SHOW_MAX, #pool)
	local last = Mem().variant and Mem().variant[p.id]
	if last and #pool > show then
		for k = #pool, 1, -1 do
			if pool[k] == last then table.remove(pool, k) end
		end
	end
	local chosen = {}
	for _ = 1, show do
		table.insert(chosen, table.remove(pool, math.random(#pool)))
	end
	table.sort(chosen)
	return chosen
end

---Renders a song of interchangeable stanzas: the frame with the chosen stanzas in place of the mark, one empty line
---between two stanzas.
---@param p AUPhrase
---@param lang string
---@param ctx table
---@return string? text
---@return integer? first the index of the first stanza said (remembered like a variant)
function Engine:RenderStanzas(p, lang, ctx)
	local list = p.text[lang]
	if not list or not Engine.VariantOk(list[1]) then return nil end
	local frame = Engine.VariantText(list[1])
	local a, b = frame:find(Engine.STANZA_MARK, 1, true)
	local chosen = Engine.StanzaChoice(p, list)
	if not a or #chosen == 0 then return nil end
	local stanzas = {}
	for k, i in ipairs(chosen) do stanzas[k] = Engine.VariantText(list[i]) end
	local text = self:Render(frame:sub(1, a - 1) .. table.concat(stanzas, "\n\n") .. frame:sub(b + 1), lang, ctx)
	if not text then return nil end
	return text, chosen[1]
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
---@field via? string the related event that spoke when `event` had no phrase (#89)
---@field frame? string id of the frame a spoken phrase was told in
---@field kind? "monologue" #99: the record is a monologue
---@field parts? string[] #99: the ids of the parts, in the order they were said
---@field situation? string #100: the composite situation the line was written for
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
	-- C0i (ADR 0056): the variants a system prefers in this context, if the rule has any
	if #idx > 1 and not Engine.R1_COMPAT then
		for _, h in ipairs(Engine.variantPrefs) do
			local ok, test = pcall(h.fn, ctx)
			if ok and type(test) == "function" then
				local fit = {}
				for _, i in ipairs(idx) do
					if test(Engine.VariantText(list[i])) then fit[#fit + 1] = i end
				end
				if #fit > 0 then idx = fit end
			elseif not ok and NS.Diagnostics then
				NS.Diagnostics:Error("variant:" .. h.name, test)
			end
		end
	end
	local last = Mem().variant and Mem().variant[p.id]
	if last and #idx > 1 then
		for k = #idx, 1, -1 do
			if idx[k] == last then table.remove(idx, k) end
		end
	end
	-- #90: a variant that opens like one of the last interventions only if every other does too
	if #idx > 1 and not Engine.R1_COMPAT then
		local used, fresh = NoveltyState().openings, {}
		for _, i in ipairs(idx) do
			if not used[Engine.Opening(Engine.VariantText(list[i]))] then table.insert(fresh, i) end
		end
		if #fresh > 0 then idx = fresh end
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
	return Engine.Factors(Engine.Rule(p), Mem().lastTone[event], ctx, self.StyleResolver:Resolve(event, ctx))
end

---The first situation of ctx.situation that the line's `situation` condition names (#100), for the record and the
---counters.
---@param p AUPhrase
---@param ctx table
---@return string?
function Engine.FirstSituation(p, ctx)
	local want = p.when and p.when.situation
	if want == nil or type(ctx.situation) ~= "table" then return nil end
	for _, id in ipairs(Engine.AsList(want)) do
		if ctx.situation[id] then return id end
	end
	return nil
end

---Specificity tiers (#89, ADR 0029; mixed by share since #138, ADR 0051). The tiers form three levels, as in
---Engine.TIER_SHARES: generic (0), situation (1) and place (2 and up). Inside the place level the most specific tier
---with at least TIER_MIN candidates not used recently wins, with the tiers above it (landmark -> subzone -> zone). Then
---each level with usable lines keeps its share of the picks: one level is drawn by share, renormalised over the
---levels that have a candidate not used recently, and the pick is made among its candidates (weights and
---anti-repetition as before). A level with fewer than TIER_MIN such candidates competes inside the level below it,
---which takes its share too; the generic level stands with a single one, so generic lines never go silent while they
---have one outside the window. With a single level (or none usable) every candidate stays, as before. Then, in
---PickEntry, the related event; then silence. Recent ids still drop out in WeightedPick.
---@param items { e: integer|AUPhrase, w: number }[] e: the rule's ord (#138) or its view
---@param key string key of the anti-repetition window (the event)
---@param window? table<string, boolean> the window of a pool narrowed by a share (Engine.SharePool), as a set
---@return table items the same list, or a new list with the chosen tiers
---@return integer tier the lowest tier kept
function Engine.TierPool(items, key, window)
	-- the recent ids as a set, once
	local recent = window
	if not recent then
		recent = {}
		for _, id in ipairs(Mem().recent[key] or EMPTY) do recent[id] = true end
	end
	local fresh, tiers = {}, {}
	-- #138: the deduced tier once per conditions table in this call (many rules share one, see Engine.Tier)
	local byWhen = {}
	local SHAPE, WHEN, ID = SHAPE, WHEN, ID
	for i, it in ipairs(items) do
		local e = it.e
		-- an ord has a shape in the column; a view (tests) is read as a table
		local s, t, when = SHAPE[e], nil, nil
		if s then
			t, when = s.tier, WHEN[e]
		else
			t, when = e.tier, e.when
		end
		if t == nil then
			if when == nil then
				t = 0
			else
				t = byWhen[when]
				if t == nil then
					t = Engine.Tier(e)
					byWhen[when] = t
				end
			end
		end
		tiers[i] = t
		if it.w > 0 and not recent[ID[e] or e.id] then fresh[t] = (fresh[t] or 0) + 1 end
	end
	local shares, min = Engine.TIER_SHARES, Engine.TIER_MIN
	local top = #shares
	-- the place level: its most specific tier with TIER_MIN fresh candidates, counting those above it
	local floor, n = top, 0
	for t = Engine.MAX_TIER, top, -1 do
		n = n + (fresh[t] or 0)
		if n >= min then floor = t; break end
	end
	-- the bands, from the place level down: a thin level joins the one below with its share
	local bands, hi, accFresh, accShare = {}, top, 0, 0
	for l = top, 0, -1 do
		local f = 0
		if l == top then
			for t = floor, Engine.MAX_TIER do f = f + (fresh[t] or 0) end
		else
			f = fresh[l] or 0
		end
		accFresh = accFresh + f
		if f > 0 then accShare = accShare + (shares[l] or 0) end
		if accFresh >= min or (l == 0 and accFresh > 0) then
			bands[#bands + 1] = { lo = l, hi = hi, share = accShare }
			hi, accFresh, accShare = l - 1, 0, 0
		end
	end
	local band, total = bands[1], 0
	for _, b in ipairs(bands) do total = total + b.share end
	if #bands > 1 and total > 0 then
		local r = math.random() * total
		for _, b in ipairs(bands) do
			r = r - b.share
			band = b
			if r <= 0 then break end
		end
	elseif #bands > 1 then
		band = nil
	end
	-- one level with every tier, or nothing usable: every candidate stays
	if not band or (band.lo == 0 and band.hi == top and floor == top) then return items, 0 end
	local out = {}
	for i, it in ipairs(items) do
		local t = tiers[i]
		local l = t < top and t or top
		if l >= band.lo and l <= band.hi and (l < top or t >= floor) then out[#out + 1] = it end
	end
	return out, band.lo < top and band.lo or floor
end

-- C0i (#138, ADR 0056): pool shares. A system says, for a context, the share of the picks that the candidates it
-- prefers keep, and which candidates it prefers: the voice of the NPC one talks to (NPCAlive), the short lines in a
-- battleground, an arena or a boss fight (Place). A weight cannot hold a share while the pool grows (three gruff lines
-- among thirty, a short line among long ones); a share can, as the tiers of ADR 0051 do. In the order they were set.
-- `test` reads only the rule (and the language of the texts), never the context, so the bounded pick can read the
-- preferred rules of a group apart (Engine.SplitShare, as Engine.Split does for the tiers).
Engine.poolShares = {}

---Adds, replaces or removes (share = nil) a pool share. share(ctx, event) returns nil (no preference in this
---context) or the share (0-1); test(e, lang, ctx?) says whether a rule is preferred, e being its ord (or its view, in
---tests): its answer depends only on the rule and the language, ctx (given during a pick) only lets it keep answers.
---Neither may draw random numbers.
---@param name string
---@param share? fun(ctx: table, event: string): number?
---@param test? fun(e: integer|AUPhrase, lang: string, ctx?: table): boolean
function Engine:SetPoolShare(name, share, test)
	local list = Engine.poolShares
	for i = #list, 1, -1 do
		if list[i].name == name then table.remove(list, i) end
	end
	if type(share) == "function" and type(test) == "function" then
		list[#list + 1] = { name = name, share = share, test = test }
	end
end

---The pool shares that hold in ctx for the event, in order: { def, share }[] (nil: none).
---@param ctx table
---@param event string
---@return table?
function Engine.ActiveShares(ctx, event)
	local out
	for _, h in ipairs(Engine.poolShares) do
		local ok, share = pcall(h.share, ctx, event)
		if not ok then
			if NS.Diagnostics then NS.Diagnostics:Error("share:" .. h.name, share) end
		elseif type(share) == "number" and share > 0 then
			out = out or {}
			out[#out + 1] = { def = h, share = share }
		end
	end
	return out
end

-- the preferred rules of a group by tier, per share (weak keys: a group no longer in the index takes them with it)
local shareSplits = setmetatable({}, { __mode = "k" })

---The rules of a group of the index that a pool share prefers, and the others, by tier (C0i, ADR 0056): pref[t] and
---rest[t], each in the order of the group. Made when a pick first needs them and kept, like Engine.Split; made again
---when the group or its split changed, or the language of the texts.
---@param list integer[] a group of the index
---@param def table a pool share (Engine.poolShares)
---@param lang string
---@return { pref: integer[][], rest: integer[][] }
function Engine.SplitShare(list, def, lang)
	local base = Engine.Split(list)
	local byDef = shareSplits[list]
	if not byDef then
		byDef = {}
		shareSplits[list] = byDef
	end
	local s = byDef[def]
	if s and s.base == base and s.n == base.n and s.lang == lang then return s end
	s = { base = base, n = base.n, lang = lang, pref = {}, rest = {} }
	local test = def.test
	for t = 0, Engine.MAX_TIER do
		local pref, rest = {}, {}
		for _, r in ipairs(base[t]) do
			if test(r, lang) then pref[#pref + 1] = r else rest[#rest + 1] = r end
		end
		s.pref[t], s.rest[t] = pref, rest
	end
	byDef[def] = s
	return s
end

---The pool shares (C0i, ADR 0056), before the tiers: for each share that holds in ctx, when the pool has a candidate
---it prefers outside the anti-repetition window and one it does not, the pick keeps only the preferred candidates
---with the probability of the share; otherwise every candidate stays (so the preferred ones keep at least their share,
---and more when their weights earn it). A random number is drawn only when the choice is real.
---A narrowed pool has the window of its own size: the newest KeepFor(#preferred) of its ids in the event's window (the
---window itself keeps its size from every candidate). Without that, three lines of an NPC's voice among thirty
---candidates would sit in a window of eighteen and could never reach their share.
---@param items { e: integer|AUPhrase, w: number }[]
---@param key string key of the anti-repetition window (the event)
---@param ctx table
---@param lang string the language of the texts
---@return table items the same list or the preferred candidates
---@return table<string, boolean>? window the window of the narrowed pool, as a set (nil: the event's)
function Engine.SharePool(items, key, ctx, lang)
	if #Engine.poolShares == 0 or #items < 2 then return items, nil end
	local active = Engine.ActiveShares(ctx, key)
	if not active then return items, nil end
	local window
	for _, a in ipairs(active) do
		local test = a.def.test
		local pref, ids, other = {}, {}, false
		for _, it in ipairs(items) do
			local e = it.e
			if test(e, lang, ctx) then
				pref[#pref + 1] = it
				ids[ID[e] or e.id] = true
			else
				other = true
			end
		end
		if #pref > 0 and other then
			-- the window of the preferred pool: its newest ids in the event's window
			local own, n, keep = {}, 0, KeepFor(#pref)
			for _, id in ipairs(Mem().recent[key] or EMPTY) do
				if n >= keep then break end
				if ids[id] then own[id], n = true, n + 1 end
			end
			local fresh = false
			for _, it in ipairs(pref) do
				if it.w > 0 and not own[ID[it.e] or it.e.id] then fresh = true; break end
			end
			if fresh and math.random() < a.share then items, window = pref, own end
		end
	end
	return items, window
end

-- C0i (ADR 0056): variant preferences. fn(ctx) returns nil or a test of a variant's text: when a rule has variants
-- that pass it, the variant is drawn among those (a short rule in a battle says its short variant).
Engine.variantPrefs = {}

---Adds, replaces or removes (fn = nil) a variant preference.
---@param name string
---@param fn? fun(ctx: table): (fun(text: string): boolean)?
function Engine:SetVariantPreference(name, fn)
	local list = Engine.variantPrefs
	for i = #list, 1, -1 do
		if list[i].name == name then table.remove(list, i) end
	end
	if type(fn) == "function" then list[#list + 1] = { name = name, fn = fn } end
end

---Sceglie e compone una frase. Se l'evento non ha frasi, prova l'evento affine dichiarato (#89: `fallback`), al
---massimo tre passi e mai un evento già provato; il record dice l'evento chiesto e, in `via`, quello che ha parlato.
---With `composite` (#100) only the lines written for the situations of ctx.situation are candidates, and there is no
---related-event fallback: the caller falls back to the ordinary pick.
---@param event string
---@param ctx table contesto di NS:BuildContext
---@param form "say"|"emote"
---@param composite? boolean
---@return AUPhraseRecord?
function Engine:PickEntry(event, ctx, form, composite)
	if composite then
		if self.R1_COMPAT or type(ctx.situation) ~= "table" then return nil end
		return self:PickOwn(event, ctx, form, true)
	end
	local rec = self:PickOwn(event, ctx, form)
	if rec or self.R1_COMPAT then return rec end
	local tried, ev = { [event] = true }, event
	for _ = 1, 3 do
		local def = self.events[ev]
		ev = def and def.fallback
		if type(ev) ~= "string" or tried[ev] then return nil end
		tried[ev] = true
		rec = self:PickOwn(ev, ctx, form)
		if rec then
			rec.via, rec.event = ev, event
			return rec
		end
	end
	return nil
end

---Sceglie e compone una frase dell'evento, senza ripieghi.
---@param event string
---@param ctx table
---@param form "say"|"emote"
---@param composite? boolean only the lines of a composite situation (#100)
---@return AUPhraseRecord?
function Engine:PickOwn(event, ctx, form, composite)
	if not self:EventAllowed(event, ctx) then return nil end
	-- #122, #123: an event whose lines come from a system, not from rules of its own (lore_recall: the songbook)
	local picker = self.pickers[event]
	if picker then
		if composite then return nil end
		local ok, rec = pcall(picker, event, ctx, form)
		if not ok then
			if NS.Diagnostics then NS.Diagnostics:Error("picker:" .. event, rec) end
			return nil
		end
		return rec
	end
	local lang = NS:TextLang()
	local now = time()
	local r3 = not self.R1_COMPAT
	local mem = Mem()
	local lastTone = mem.lastTone[event]
	-- registri adatti all'evento, alla zona e alla profondità (GDD §5.2)
	local profile = self.StyleResolver:Resolve(event, ctx)
	-- #157, #138: what does not change during the pick is computed once (see Engine.MEMO)
	local memo = self.MEMO and Engine.NewPickMemo() or nil
	local match = memo and memo.match
	-- solo i gruppi dell'indice che il contesto apre (#83): stesse regole e stesso ordine di tutto byEvent[event].
	-- #153: a composite pick keeps only the lines of its situation (C0e: from the split groups)
	-- C0e: the ids in the window of the event, for the bounded pick of a large event
	local recent = {}
	for _, id in ipairs(mem.recent[event] or EMPTY) do recent[id] = true end
	-- the rules that hold, and how many hold (estimated when a large event was sampled, Engine:SampledEligible)
	local function EligibleOf(f, speaker)
		local out, count
		if composite then
			-- C0e: the situational lines of the split groups, not a walk of every candidate
			out = self:Eligible(self:SituationalCandidates(event, ctx, f), lang, ctx, f, now, match)
		else
			out, count = self:SampledEligible(event, ctx, f, lang, now, match, recent, speaker)
			if out then return out, count end
			out = self:EligibleFor(event, ctx, f, lang, now, match)
		end
		if speaker then
			local only = {}
			for _, r in ipairs(out) do
				if SHAPE[r].speaker == speaker then only[#only + 1] = r end
			end
			out = only
		end
		return out, #out
	end

	local items = {}
	local own, held = EligibleOf(form)
	local weights = memo and #own >= self.MEMO_MIN and memo
	-- #138: the candidates are ords; a rule becomes a view only once chosen
	for _, r in ipairs(own) do
		table.insert(items, { e = r, w = weights and ScoreMemo(r, lastTone, ctx, profile, nil, weights)
			or Score(Load(r), event, #own, lastTone, ctx, profile) })
	end

	local frames
	if form == "emote" then
		frames = self:Eligible(self.frames[event], lang, ctx, nil, now, match)
		for _, f in ipairs(self:Eligible(self.frames["*"], lang, ctx, nil, now, match)) do
			table.insert(frames, f)
		end
		if #frames > 0 then
			-- solo la voce pubblica del personaggio si può raccontare in una cornice:
			-- un pensiero (inner) non diventa un'emote
			local says, saysHeld = EligibleOf("say", "character")
			held = held + saysHeld
			local voice = r3 and "narrator" or nil
			weights = memo and #says >= self.MEMO_MIN and memo
			for _, r in ipairs(says) do
				table.insert(items, { e = r, framed = true,
					w = 0.8 * (weights and ScoreMemo(r, lastTone, ctx, profile, voice, weights)
						or Score(Load(r), event, #says, lastTone, ctx, profile, voice)) })
			end
		end
	end

	-- the anti-repetition window keeps its size from every candidate, also when the tiers narrow the pool (#89), and
	-- from every rule that holds when a large event was sampled (C0e: `held` counts them, estimated)
	local keep = KeepFor(math.floor(held + 0.5))
	-- #153: a composite pick weighs only the lines written for its situation (usually two); its line joins the window
	-- of the lead event without cutting what the ordinary picks of that event put there
	if composite then keep = math.max(keep, #(mem.recent[event] or EMPTY)) end
	-- C0i (ADR 0056): the pool shares come before the tiers, which then mix the levels of the preferred candidates
	local window
	if r3 then
		items, window = Engine.SharePool(items, event, ctx, lang)
		items = Engine.TierPool(items, event, window)
	end

	-- più tentativi: una frase può fallire se manca una voce di vocabolario
	for _ = 1, 6 do
		local it = WeightedPick(items, event, window)
		if not it then return nil end
		local p = Engine.Rule(it.e)
		local text, variant, parts
		if p.kind == "monologue" then
			text, parts = self:RenderMonologue(p, lang, ctx)
		elseif p.kind == "stanzas" then
			-- #127: the frame and one or two stanzas; `variant` is the first stanza said (not repeated next time)
			text, variant = self:RenderStanzas(p, lang, ctx)
		else
			text, variant = self:RenderPhrase(p, lang, ctx)
		end
		local frame
		if text and it.framed then
			-- mai frammenti incompatibili: solo le cornici di un registro vicino a quello della frase e, se la cornice
			-- dichiara dei temi (#90), di uno dei suoi temi
			local fitems = {}
			local st = r3 and NoveltyState()
			for _, f in ipairs(frames) do
				if self.StyleResolver:Compatible(f.styles, p.styles)
					and not (r3 and f.themeSet and not (p.theme and f.themeSet[p.theme])) then
					local w = Score(f, "frame:" .. event, #frames)
					if r3 then
						-- #90: a frame used in the last interventions, anywhere, weighs less; one of the theme, more
						w = w / (1 + Engine.FRAME_PENALTY * (st.frames[f.id] or 0))
						if f.themeSet then w = w * Engine.FRAME_THEME_BONUS end
					end
					table.insert(fitems, { e = f, w = w })
				end
			end
			local fit = WeightedPick(fitems, "frame:" .. event)
			frame = fit and fit.e
			text = fit and self:RenderEntry(fit.e, lang, ctx, text)
			if text then Remember("frame:" .. event, fit.e.id, KeepFor(#frames), fit.e) end
		end
		if text then
			Remember(event, p.id, keep, p)
			mem.lastTone[event] = Engine.Tone(p)
			local partIds
			if parts then
				-- #99: each part counts as used and remembers its variant, as if it had been said on its own
				partIds = {}
				for i, part in ipairs(parts) do
					local q = self.byId[part.id]
					Engine.NoteUse(part.id, q)
					if #q.text[lang] > 1 then
						mem.variant = mem.variant or {}
						mem.variant[part.id] = part.variant
					end
					partIds[i] = part.id
				end
			elseif #p.text[lang] > 1 then
				mem.variant = mem.variant or {}
				mem.variant[p.id] = variant
			end
			-- #117: line breaks are kept (verses); the other spaces are normalised
			text = Engine.NormalizeSpace(text)
			-- le emote non si toccano: il gioco antepone il nome del personaggio
			if form == "say" then text = Capitalize(text) end
			-- una frase parlata dentro una cornice è raccontata dal narratore
			local speaker = it.framed and "narrator" or p.speaker
			if r3 then
				local source
				if parts then
					source = self.byId[parts[1].id].text[lang][parts[1].variant]
				elseif p.kind == "stanzas" then
					source = p.text[lang][1]   -- #127: the song opens with its frame
				else
					source = frame and (frame.text[lang] or EMPTY)[1] or p.text[lang][variant]
				end
				self:NoteLine({ theme = p.theme, motifs = p.motifs, speaker = speaker, frame = frame and frame.id,
					opening = Engine.Opening(Engine.VariantText(source)), category = p.category, kind = p.kind })
			end
			return { text = text, speaker = speaker, form = form, id = p.id, event = event,
				category = p.category, style = Engine.Tone(p), variant = variant, frame = frame and frame.id,
				kind = p.kind, parts = partIds, situation = composite and Engine.FirstSituation(p, ctx) or nil }
		end
		it.w = 0
	end
	return nil
end
