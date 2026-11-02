-- Azeroth Unspoken: validatore editoriale dei pacchetti (GDD §9.5, §16.1).
-- Controlla id duplicati, lingue mancanti, segnaposto discordanti, condizioni sconosciute, varianti vuote,
-- lunghezza massima per canale, testo UTF-8 valido e la coerenza della regola (voce, registro, profondità...).
-- Si usa da /au validate e dai test fuori dal gioco. Non scrive nulla e non cambia il registro.
local ADDON, NS = ...
local Engine = NS.Engine
local Validator = {}
NS.Validator = Validator

---@class AUProblem
---@field level "error"|"warning"
---@field code string
---@field pack? string
---@field id? string
---@field lang? string
---@field msg string

---@class AUValidation
---@field errors AUProblem[]
---@field warnings AUProblem[]
---@field stats table

-- byte massimi per canale: è la stessa tabella che usa il Chat Gateway per tagliare (Config.CHAT_LIMITS),
-- così il validatore prevede ciò che il Gateway farà davvero.
---@type table<string, integer>
Validator.LIMITS = NS.Config.CHAT_LIMITS

-- canali in cui può finire il testo di una voce
local CHANNELS = {
	character = { "SAY", "PARTY", "RAID", "GUILD", "INSTANCE_CHAT" },
	narrator = { "EMOTE" },
	inner = { "PRIVATE" },
	npc = { "PRIVATE" },
}

-- ingombro massimo, in byte, dei segnaposto dinamici (nomi lunghi, nella lingua più prolissa)
Validator.WORST = { relation = 40, player = 12, target = 40, spell = 40, zone = 40, subzone = 40, level = 3, class = 20,
	race = 20, faction = 10, targettype = 16,
	-- S6c: interlocutore (razza e classe possono essere testo personalizzato di Total RP 3, fino a 40 byte) e luogo
	other = 40, otherrole = 24, otherrace = 40, otherclass = 40, instance = 40, encounter = 40, landmark = 40 }

-- Parole che nominano il meteo di adesso (#92): una frase che le usa dichiara la condizione `weather`, altrimenti esce
-- anche sotto un cielo sereno o con il meteo illeggibile. Solo parole intere, in minuscolo; l'elenco è volutamente corto
-- (un avviso, non un errore) e lascia fuori le parole che si usano per immagini ("tempesta", "nuvole").
Validator.WEATHER_WORDS = {
	en = { "rain", "raining", "rains", "rainy", "drizzle", "downpour", "thunder", "thunderstorm", "snow", "snowing",
		"snowfall", "snowflake", "snowflakes", "flakes", "blizzard", "sandstorm", "fog", "foggy" },
	it = { "pioggia", "piove", "piovere", "pioviggina", "temporale", "tuono", "tuoni", "neve", "nevica", "nevicata",
		"fiocchi", "grandine", "tormenta", "nebbia", "tempesta di sabbia" },
}

-- Il controllo vale per gli eventi in cui un testo descrive ciò che si vede intorno; negli altri (battaglia, incantesimi,
-- saluti, brindisi, pensieri che dicono verità generali come "la pioggia cancella le orme"...) le parole del meteo sono immagini ("il tuono delle armi", "salve") e non si controllano. Una frase
-- legata a un luogo (mood, zone, subzone, place) non si controlla: il luogo dice già com'è il tempo (una zona innevata).
Validator.WEATHER_EVENTS = { zone = true, memory_return = true, weather_change = true, dawn = true, dusk = true,
	subzone_enter = true, landmark = true, journey = true, rest_enter = true, quest_progress = true, quest_complete = true,
	reputation_change = true }

-- #98: what is a return line and what is a light (cheerful or ironic) one
Validator.RETURN_EVENTS = { memory_return = true }
Validator.LIGHT_TAGS = { ["temperament:cheerful"] = true, ["emo:happy"] = true }

---A line spoken when the character comes back to a place: a return event, or a line conditioned on a repeated visit.
---@param p AUPhrase
---@return boolean
function Validator.IsReturnLine(p)
	for _, ev in ipairs(p.events or {}) do
		if Validator.RETURN_EVENTS[ev] then return true end
	end
	local when = p.when
	return type(when) == "table" and (when.repeatVisit == true or when.visitsMin ~= nil)
end

---A cheerful or ironic line: an ironic register, or a tag that makes it cheerful.
---@param p AUPhrase
---@return boolean
function Validator.IsLightLine(p)
	for _, st in ipairs(p.styles or {}) do
		if st == "ironic" then return true end
	end
	for tag in pairs(p.tags or {}) do
		if Validator.LIGHT_TAGS[tag] then return true end
	end
	return false
end

---Is a light return line safe after a bad visit? lastVisitBad = false at the top level, or a line about the bad visit
---(lastVisitBad true, "death" or "flight") that only an ironic character can get.
---@param p AUPhrase
---@return boolean
function Validator.LightReturnGuarded(p)
	local when = type(p.when) == "table" and p.when or {}
	if when.lastVisitBad == false then return true end
	return when.lastVisitBad ~= nil and p.tags ~= nil and p.tags["req:irony:high"] == true
end

local function PlaceBound(when)
	if type(when) ~= "table" then return false end
	for _, k in ipairs({ "mood", "zone", "subzone", "place" }) do
		if when[k] ~= nil and when[k] ~= false then return true end
	end
	if type(when.any) == "table" and #when.any > 0 then
		for _, sub in ipairs(when.any) do
			if not PlaceBound(sub) then return false end
		end
		return true
	end
	return false
end

-- una lettera, anche accentata (byte alti di UTF-8): niente %a, che dipende dalla locale
local LETTER = "[A-Za-z\128-\255]"

-- Accordo senza segnaposto in italiano (#70, #71). Un testo che parla di chi parla o di chi ascolta con un participio o
-- un aggettivo al maschile fuori da {g:} e {og:} suona sbagliato a una personaggia, a un NPC donna o a un bersaglio di
-- sesso ignoto. Il controllo è volutamente stretto, perché è un avviso e non deve scattare a vuoto: una forma di
-- essere, sentire o restare alla prima o seconda persona, seguita (con al più qualche avverbio) da una di queste
-- parole. Elenco corto di forme maschili che hanno una femminile in -a: chi scrive ne aggiunge se serve.
Validator.IT_AGREEMENT_VERBS = { sono = true, ero = true, ["sarò"] = true, sarei = true, sei = true, eri = true,
	sarai = true, saresti = true, essere = true, esserne = true, sento = true, senti = true, sentivo = true,
	sentivi = true, resto = true, resti = true, restavo = true, restavi = true, rimango = true, rimani = true }
-- #162: verbs that agree with the speaker only after "mi" ("che il prossimo mi trovi pronto")
Validator.IT_AGREEMENT_MI_VERBS = { trovi = true, trova = true, ["troverà"] = true, ["troverai"] = true }
-- #162: third-person verbs, checked only in a narrator emote, whose subject is the character (the game puts the name
-- first: "scende a terra e resta fermo")
Validator.IT_AGREEMENT_EMOTE_VERBS = { resta = true, rimane = true, sta = true, sembra = true, sente = true }
Validator.IT_AGREEMENT_ADVERBS = { ["così"] = true, molto = true, troppo = true, ancora = true, sempre = true,
	["già"] = true, davvero = true, quasi = true, proprio = true, ["più"] = true, meno = true, ormai = true, non = true,
	mai = true, ben = true, tanto = true, abbastanza = true, ora = true, adesso = true, mica = true,
	-- "sarò io il primo", "sono l'ultimo"
	io = true, tu = true, il = true, l = true }
Validator.IT_AGREEMENT_WORDS = {}
for w in ("stato stanco pronto sicuro certo grato contento convinto stufo spaventato arrivato tornato venuto nato "
	.. "rimasto cresciuto preoccupato cambiato partito uscito entrato perso ritrovato salvato disposto curioso "
	.. "orgoglioso attento vivo sveglio nascosto fortunato deluso ferito libero innamorato affamato assetato ubriaco "
	.. "sorpreso straniero strisciato morto caduto abituato franco "
	-- #162 (Q8)
	.. "degno vicino fermo fidato seduto fradicio primo ultimo"):gmatch("%S+") do
	Validator.IT_AGREEMENT_WORDS[w] = true
end

-- the words of an Italian text, sentence by sentence: placeholders and punctuation become "|"
local function ItalianWords(text)
	local flat = NS.Lower(text):gsub("{[^{}]*}", " | "):gsub("[%.%?!;:,\"()]", " | ")
	for _, mark in ipairs({ "«", "»", "—", "…" }) do
		flat = flat:gsub(mark, " | ")
	end
	return flat:gmatch("[A-Za-z\128-\255|]+")
end

---La prima forma maschile che si accorda senza segnaposto in un testo italiano, o nil.
---@param text string
---@param lang string codice breve (solo "it" si controlla)
---@param emote? boolean a narrator emote: the third person speaks of the character too (#162)
---@return string? phrase la parola trovata, con il verbo che la regge
function Validator.UnmarkedAgreement(text, lang, emote)
	if lang ~= "it" then return nil end
	-- i segnaposto e la punteggiatura spezzano il discorso ("|"): l'accordo si cerca dentro una frase
	local verb, prev
	for word in ItalianWords(text) do
		if verb and Validator.IT_AGREEMENT_WORDS[word] then return verb .. " " .. word end
		if Validator.IT_AGREEMENT_VERBS[word] or (emote and Validator.IT_AGREEMENT_EMOTE_VERBS[word]) then
			verb = word
		elseif prev == "mi" and Validator.IT_AGREEMENT_MI_VERBS[word] then
			verb = "mi " .. word
		elseif not (verb and Validator.IT_AGREEMENT_ADVERBS[word]) then
			verb = nil
		end
		prev = word
	end
	return nil
end

-- #162: "ci siamo incrociati" speaks of the speaker and the other together, in the masculine plural: wrong when both
-- are women, and {g:} cannot fix it (it knows one sex only). A neutral form is the way ("le nostre strade si sono
-- incrociate"). The participle is any word in -ati, -iti, -uti after a reciprocal "ci" or "vi" with essere.
Validator.IT_RECIPROCAL_VERBS = { siamo = true, eravamo = true, saremo = true, saremmo = true, fossimo = true,
	siete = true, eravate = true, sarete = true }

---The first reciprocal masculine plural ("ci siamo incrociati") of an Italian text, or nil.
---@param text string
---@param lang string short code (only "it" is checked)
---@return string?
function Validator.UnmarkedReciprocal(text, lang)
	if lang ~= "it" then return nil end
	local verb, prev
	for word in ItalianWords(text) do
		if verb and #word > 4 and (word:sub(-3) == "ati" or word:sub(-3) == "iti" or word:sub(-3) == "uti") then
			return verb .. " " .. word
		end
		if (prev == "ci" or prev == "vi") and Validator.IT_RECIPROCAL_VERBS[word] then
			verb = prev .. " " .. word
		elseif not (verb and Validator.IT_AGREEMENT_ADVERBS[word]) then
			verb = nil
		end
		prev = word
	end
	return nil
end

-- #100: a line of a composite situation whose definition asks the weather (rain_dusk_return) names it rightly
local function SituationWeather(p)
	if not p.situational then return false end
	for _, sid in ipairs(Engine.AsList(p.when.situation)) do
		local def = Engine.SITUATIONS[sid]
		if def and type(def.when) == "table" and Engine.UsesWeather(def.when) then return true end
	end
	return false
end

---La prima parola del meteo che il testo nomina, o nil.
---@param text string
---@param lang string codice breve (en, it)
---@return string?
function Validator.WeatherWord(text, lang)
	return Validator.FindWord(text, Validator.WEATHER_WORDS[lang])
end

---The first of the words (whole words or phrases, lower case) that the text contains, or nil.
---@param text string
---@param words? string[]
---@return string?
function Validator.FindWord(text, words)
	if not words then return nil end
	local lower = NS.Lower(text)
	for _, w in ipairs(words) do
		local from = 1
		while true do
			local a, b = lower:find(w, from, true)
			if not a then break end
			local before, after = lower:sub(a - 1, a - 1), lower:sub(b + 1, b + 1)
			if not (before ~= "" and before:find(LETTER)) and not (after ~= "" and after:find(LETTER)) then return w end
			from = b + 1
		end
	end
	return nil
end

-- #162 (Q8): words that name the time of day, and the times (`time` condition: dawn, day, dusk, night) each one
-- fits. A line that names one is said at a time the word allows: its rule, its situation or its monologue asks such a
-- `time`, or it comes from an event that sets it (dawn, dusk). "Night" fits dusk too ("the road will belong to the
-- night"); "dusk" fits dusk only (rain_dusk_return once allowed night while its lines said "the light is failing").
-- Without a time condition the words are checked only in the events that describe the surroundings (WEATHER_EVENTS):
-- in a battle cry "tonight" is bravado. There the words marked `now` ("tonight", "stasera") are always checked, the
-- others not in a line bound to a place (Duskwood is dark at noon). With a time condition every line is checked.
-- A warning: the list is short on purpose ("morning" is left out: "this morning" speaks of the past).
local DAWN, DUSK, NIGHT = { dawn = true }, { dusk = true }, { dusk = true, night = true }
Validator.TIME_WORDS = {
	en = { { "tonight", NIGHT, true }, { "this evening", NIGHT, true }, { "good evening", NIGHT, true },
		{ "dusk", DUSK }, { "twilight", DUSK }, { "sunset", DUSK }, { "nightfall", DUSK },
		{ "night", NIGHT }, { "midnight", NIGHT }, { "dawn", DAWN }, { "sunrise", DAWN }, { "daybreak", DAWN } },
	it = { { "stanotte", NIGHT, true }, { "stasera", NIGHT, true }, { "buonasera", NIGHT, true }, { "buona sera", NIGHT, true },
		{ "crepuscolo", DUSK }, { "tramonto", DUSK }, { "imbrunire", DUSK },
		{ "notte", NIGHT }, { "mezzanotte", NIGHT }, { "alba", DAWN } },
}
-- the events that set the time themselves (Systems/World.lua offers them with `time = period`)
Validator.TIME_EVENTS = { dawn = DAWN, dusk = DUSK }

---The first time-of-day word of a text: the word, the times it fits and whether it says "now".
---@param text string
---@param lang string short code (en, it)
---@return string? word
---@return table<string, boolean>? times
---@return boolean? now
function Validator.TimeWord(text, lang)
	local list = Validator.TIME_WORDS[lang]
	if not list then return nil end
	local words = {}
	for _, e in ipairs(list) do table.insert(words, e[1]) end
	local w = Validator.FindWord(text, words)
	if not w then return nil end
	for _, e in ipairs(list) do
		if e[1] == w then return w, e[2], e[3] == true end
	end
end

-- the times a set of conditions allows: a set, nil (any time) or true (bound, but by hour: not checked)
local function TimesOf(when)
	if type(when) ~= "table" then return nil end
	if when.hour ~= nil then return true end
	if when.time ~= nil and when.time ~= false then
		local set = {}
		for _, t in ipairs(Engine.AsList(when.time)) do set[t] = true end
		return set
	end
	if when.dayTime == true then return { dawn = true, day = true } end
	if when.dayTime == false then return { dusk = true, night = true } end
	if type(when.any) == "table" and #when.any > 0 then
		local set = {}
		for _, sub in ipairs(when.any) do
			local s = TimesOf(sub)
			if s == nil or s == true then return s end
			for t in pairs(s) do set[t] = true end
		end
		return set
	end
	return nil
end

-- the times a line can be said: the conditions of the line, of its monologue and of its situations, and the events
-- that set the time, all together (nil = any time, true = bound by hour)
local function LineTimes(p, owner)
	local allowed
	local function Narrow(set)
		if set == nil or allowed == true then return end
		if set == true then allowed = true; return end
		if allowed == nil then
			allowed = {}
			for t in pairs(set) do allowed[t] = true end
		else
			for t in pairs(allowed) do if not set[t] then allowed[t] = nil end end
		end
	end
	Narrow(TimesOf(p.when))
	if owner then Narrow(TimesOf(owner.when)) end
	if p.situational then
		for _, sid in ipairs(Engine.AsList(p.when.situation)) do
			local def = Engine.SITUATIONS[sid]
			if def then Narrow(TimesOf(def.when)) end
		end
	end
	for _, ev in ipairs(p.events) do Narrow(Validator.TIME_EVENTS[ev]) end
	if owner then
		for _, ev in ipairs(owner.events or {}) do Narrow(Validator.TIME_EVENTS[ev]) end
	end
	return allowed
end

---The time-of-day problem of a variant, or nil: the word it names and why it does not fit (#162).
---@param text string
---@param lang string
---@param allowed table|boolean|nil the times the line can be said (LineTimes)
---@param describes boolean the line describes the surroundings (WEATHER_EVENTS)
---@param placeBound boolean the line is bound to a place (mood, zone, subzone, place)
---@return string? word
---@return string? why
function Validator.TimeProblem(text, lang, allowed, describes, placeBound)
	if allowed == true then return nil end
	local word, fits, now = Validator.TimeWord(text, lang)
	if not word then return nil end
	if allowed == nil then
		if describes and (now or not placeBound) then return word, "the line has no time condition" end
		return nil
	end
	local wrong = {}
	for t in pairs(allowed) do
		if not fits[t] then table.insert(wrong, t) end
	end
	if #wrong > 0 then
		table.sort(wrong)
		return word, "the line can be said at " .. table.concat(wrong, ", ")
	end
	return nil
end

-- #162 (Q8): words that assume a first visit, or a return, in a line about a place. A line of a place event (zone,
-- subzone_enter, landmark) that says "new ground" asks firstVisit = true; one that says "here again" asks a return
-- (repeatVisit, visitsMin...). Lines with another memory condition are left alone: a return line may remember "the
-- first time". A warning; "again" alone is not in the list ("the grass bends and rises again").
Validator.PLACE_EVENTS = { zone = true, subzone_enter = true, landmark = true }
Validator.NOVELTY_WORDS = {
	en = { "new ground", "new place", "first time", "never been", "never set foot", "somewhere new" },
	it = { "terra nuova", "posto nuovo", "prima volta", "mai stato", "mai stata", "mai messo piede", "un posto nuovo" },
}
Validator.RETURN_WORDS = {
	en = { "here again", "back here", "back again", "here i am again" },
	it = { "di nuovo qui", "torno qui", "ancora qui", "eccomi di nuovo", "eccomi qui di nuovo" },
}

-- #162 (Q8): words that name the character's death. lastVisitBad = true is a death or a flight (PACK_FORMAT.md), so a
-- line that names the death asks lastVisitBad = "death". A warning. The Italian forms are written as the texts write
-- them, with {g:}.
Validator.DEATH_WORDS = {
	en = { "where i fell", "i fell", "i died", "my death", "killed me", "i was killed" },
	it = { "sono caduto", "sono caduta", "sono {g:caduto|caduta}", "sono morto", "sono morta", "sono {g:morto|morta}",
		"la mia morte", "mi hanno ucciso", "mi ha ucciso" },
}

-- the conditions of a line together with those of its monologue (a part has none of its own, usually)
local function Merged(p, owner)
	if not owner or type(owner.when) ~= "table" then return p.when or {} end
	local out = {}
	for k, v in pairs(owner.when) do out[k] = v end
	for k, v in pairs(p.when or {}) do out[k] = v end
	return out
end

-- livelli dei problemi emersi in caricamento (Engine.loadIssues)
-- eventi in cui una frase calda deve rispettare la relazione (#105)
local WARM_GUARDED = { greet = true, farewell = true, other_action = true, relation_player = true }

local LOAD_LEVEL = { dupId = "error", badId = "error", noEvent = "error", badForm = "error", badSpeaker = "error",
	noSpeaker = "warning", badWeight = "error", badCooldown = "error", badConditions = "error", badTier = "error",
	badKind = "error", badChainable = "error" }

-- Monologues (#99, ADR 0032): private voices only; byte limits of a part (its longest variant) and of the whole
-- monologue (the sum of the longest variant of each part), per language. A monologue is read in the narrator in one
-- breath: longer than this it becomes a page.
Validator.MONOLOGUE_SPEAKERS = { narrator = true, inner = true }
Validator.MONOLOGUE_PART_MAX = 160
Validator.MONOLOGUE_MAX = 380
-- categories where a monologue would come in the middle of the action
Validator.MONOLOGUE_BUSY = { combat = true, spellcraft = true }

---The problems of a monologue (#99): shape, parts, voice, form, register, theme or motif, length. Each problem is
---{ level, code, lang?, msg }.
---@param p AUPhrase
---@param langs string[] languages to measure
---@return table[]
function Validator.MonologueProblems(p, langs)
	local out = {}
	local function Bad(level, code, msg, lang) table.insert(out, { level = level, code = code, lang = lang, msg = msg }) end
	local parts = p.parts or {}
	if #parts < Engine.MONOLOGUE_MIN_PARTS or #parts > Engine.MONOLOGUE_MAX_PARTS then
		Bad("error", "monologueParts", ("%d parts: a monologue has %d to %d"):format(#parts, Engine.MONOLOGUE_MIN_PARTS,
			Engine.MONOLOGUE_MAX_PARTS))
	end
	if p.order ~= nil and p.order ~= "fixed" and p.order ~= "free" then
		Bad("error", "monologueOrder", ("order '%s' not valid (fixed or free)"):format(tostring(p.order)))
	end
	if not Validator.MONOLOGUE_SPEAKERS[p.speaker] then
		Bad("error", "monologueVoice", ("voice '%s': a monologue is for private voices (narrator, inner)"):format(tostring(p.speaker)))
	end
	if Validator.MONOLOGUE_BUSY[p.category] then
		Bad("warning", "monologueBusy", ("a monologue in the category '%s' comes in the middle of the action"):format(p.category))
	end
	if next(p.text) ~= nil then
		Bad("warning", "monologueText", "a monologue has no texts of its own: the texts of its parts are said")
	end
	local seen, parsed = {}, {}
	for i, id in ipairs(parts) do
		local q = type(id) == "string" and Engine.byId[id] or nil
		if not q then
			Bad("error", "monologuePart", ("part '%s' does not exist"):format(tostring(id)))
		elseif seen[id] then
			Bad("error", "monologuePart", ("part '%s' repeated"):format(id))
		elseif q.kind == "monologue" then
			Bad("error", "monologuePart", ("part '%s' is a monologue"):format(id))
		elseif not q.chainable then
			Bad("error", "monologuePart", ("part '%s' is not marked chainable"):format(id))
		else
			table.insert(parsed, q)
			if q.speaker ~= p.speaker then
				Bad("error", "monologueVoice", ("part '%s' speaks as %s, the monologue as %s"):format(id, q.speaker, p.speaker))
			end
			-- the first part has the form of the monologue (an emote after the name); the others are whole sentences
			local form = i == 1 and p.form or "say"
			if q.form ~= form then
				Bad("error", "monologueForm", ("part %d '%s' must be in the form %s"):format(i, id, form))
			end
			if not Engine.StyleResolver:Compatible(q.styles, p.styles) then
				Bad("error", "monologueStyle", ("part '%s' has a register far from the monologue's"):format(id))
			end
			-- compatible by theme and motif: the theme of the monologue, or one of its motifs
			local fits = q.theme ~= nil and q.theme == p.theme
			for _, m in ipairs(q.motifs or {}) do
				for _, n in ipairs(p.motifs or {}) do
					if m == n then fits = true end
				end
			end
			if not fits then
				Bad("error", "monologueTheme", ("part '%s' shares neither the theme nor a motif of the monologue"):format(id))
			end
		end
		if type(id) == "string" then seen[id] = true end
	end
	if p.theme == nil then Bad("error", "monologueTheme", "a monologue declares its theme") end
	-- length, per language: the longest variant of each part, and their sum
	for _, lang in ipairs(langs) do
		local total = 0
		for _, q in ipairs(parsed) do
			local longest = 0
			for _, var in ipairs(q.text[lang] or {}) do
				local n = #Engine.VariantText(var)
				if n > longest then longest = n end
			end
			if longest > Validator.MONOLOGUE_PART_MAX then
				Bad("error", "monologueLength", ("part '%s': %d bytes, at most %d"):format(q.id, longest,
					Validator.MONOLOGUE_PART_MAX), lang)
			end
			total = total + longest + 1
		end
		if total - 1 > Validator.MONOLOGUE_MAX then
			Bad("error", "monologueLength", ("%d bytes in all, at most %d"):format(total - 1, Validator.MONOLOGUE_MAX), lang)
		end
	end
	return out
end

---------------------------------------------------------------------------
-- Literary metadata, the genre x situation matrix and stanzas (#119, #120, #127, ADR 0043)
---------------------------------------------------------------------------
-- syllables of two corresponding verses of two stanzas may differ by this much: the count is an estimate (vowel
-- groups; in Italian the words of a verse are joined, which counts a synalepha as one syllable)
Validator.METRE_TOLERANCE = 2

---The problem of an `origin` value (#119, D17), or nil: `common`, `personal` or `culture:<people>`, with a people of
---Engine.CULTURES when that list is not empty.
---@param origin any
---@return string?
function Validator.OriginProblem(origin)
	if type(origin) ~= "string" then return ("origin '%s' is not a string"):format(tostring(origin)) end
	if Engine.ORIGINS[origin] then return nil end
	local people = origin:match("^culture:([a-z][a-z0-9_]*)$")
	if not people then
		return ("origin '%s' not valid: common, personal or culture:<people> (lower case)"):format(origin)
	end
	if next(Engine.CULTURES) ~= nil and not Engine.CULTURES[people] then
		return ("origin '%s': '%s' is not a declared culture"):format(origin, people)
	end
	return nil
end

-- the conditions as facts: `name` (asked, not false), `name=value`, `name=false`; `place.` and `other.` in front of the
-- conditions of those tables. `not` and `any` guarantee nothing and are not read.
local function ConditionFacts(facts, when, prefix)
	for k, v in pairs(when) do
		if type(k) == "string" and k ~= "not" and k ~= "any" then
			local path = prefix .. k
			if type(v) == "table" then
				if #v > 0 then
					facts[path] = true
					for _, x in ipairs(v) do
						if type(x) == "string" or type(x) == "number" then facts[path .. "=" .. tostring(x)] = true end
					end
				elseif next(v) ~= nil then
					facts[path] = true
					ConditionFacts(facts, v, path .. ".")
				end
			elseif v == false then
				facts[path .. "=false"] = true
			else
				facts[path] = true
				if v ~= true then facts[path .. "=" .. tostring(v)] = true end
			end
		end
	end
end

---The facts of a rule that the matrix and the warning words read (#120): `event=`, `style=`, `tag=`, `genre=`,
---`purpose=`, `origin=` and its conditions (see Data/Themes.lua, `literary`).
---@param p AUPhrase
---@return table<string, boolean>
function Validator.LiteraryFacts(p)
	local facts = {}
	for _, ev in ipairs(p.events or {}) do facts["event=" .. ev] = true end
	for _, s in ipairs(p.styles or {}) do facts["style=" .. s] = true end
	for t in pairs(p.tags or {}) do facts["tag=" .. t] = true end
	for _, k in ipairs({ "genre", "purpose", "origin" }) do
		if type(p[k]) == "string" then facts[k .. "=" .. p[k]] = true end
	end
	if type(p.when) == "table" then ConditionFacts(facts, p.when, "") end
	return facts
end

local function AnyFact(facts, list)
	for _, f in ipairs(list or {}) do
		if facts[f] then return f end
	end
	return nil
end

---The rows of the genre x situation matrix (#120) that a rule breaks: { row, fact } where `fact` is the forbidden fact
---that holds (a `never` row) or nil (a `needs` row with none of its facts).
---@param p AUPhrase
---@param facts? table<string, boolean>
---@return { row: table, fact?: string }[]
function Validator.MatrixProblems(p, facts)
	facts = facts or Validator.LiteraryFacts(p)
	local out = {}
	for _, row in ipairs(Engine.LITERARY_MATRIX) do
		if (row.genre == nil or row.genre == p.genre) and (row.purpose == nil or row.purpose == p.purpose)
			and (row.genre ~= nil or row.purpose ~= nil) then
			local bad = AnyFact(facts, row.never)
			if bad then
				table.insert(out, { row = row, fact = bad })
			elseif row.needs and not AnyFact(facts, row.needs) then
				table.insert(out, { row = row })
			end
		end
	end
	return out
end

---The first warning word (#120) a text names that the rule's facts do not justify: the word and its entry, or nil.
---@param text string
---@param lang string short code (en, it)
---@param facts table<string, boolean>
---@return string? word
---@return table? entry
function Validator.LiteraryWord(text, lang, facts)
	for _, w in ipairs(Engine.LITERARY_WORDS) do
		if not AnyFact(facts, w.needs) then
			local found = Validator.FindWord(text, w[lang])
			if found then return found, w end
		end
	end
	return nil
end

-- the accented vowels of the Italian texts, as plain vowels (the syllable estimate counts vowel groups)
local ACCENTS = { ["à"] = "a", ["á"] = "a", ["è"] = "e", ["é"] = "e", ["ì"] = "i", ["í"] = "i", ["ò"] = "o", ["ó"] = "o",
	["ù"] = "u", ["ú"] = "u", ["À"] = "a", ["È"] = "e", ["É"] = "e", ["Ì"] = "i", ["Ò"] = "o", ["Ù"] = "u" }

---An estimate of the syllables of a verse (#127): vowel groups. In English a word's final silent e is not counted
---("stone", but not "table" or "be"); in Italian the words are joined first, so two vowels across a space make one
---syllable (synalepha). Good enough to tell stanzas of one metre from stanzas of another, not to scan a verse.
---@param verse string
---@param lang string short code (en, it)
---@return integer
function Validator.Syllables(verse, lang)
	local s = verse:lower()
	for from, to in pairs(ACCENTS) do s = s:gsub(from, to) end
	if lang == "it" then
		s = s:gsub("[^a-z]", "")
		local n = 0
		for _ in s:gmatch("[aeiou]+") do n = n + 1 end
		return n
	end
	local n = 0
	for word in s:gmatch("[a-z']+") do
		word = word:gsub("'", "")
		local k = 0
		for _ in word:gmatch("[aeiouy]+") do k = k + 1 end
		if k > 1 and word:match("[^aeiouyl]e$") then k = k - 1 end
		n = n + math.max(k, word ~= "" and 1 or 0)
	end
	return n
end

-- the verses of a text: its non-empty lines
local function Verses(text)
	local out = {}
	for line in (text .. "\n"):gmatch("([^\n]*)\n") do
		line = line:gsub("^[ \t\r]+", ""):gsub("[ \t\r]+$", "")
		if line ~= "" then table.insert(out, line) end
	end
	return out
end
Validator.Verses = Verses

---The problems of a song of interchangeable stanzas (#127, ADR 0043): its shape, and per language the frame, the
---number of stanzas, their verses and metre, and that every stanza is the song's own. Each problem is
---{ level, code, lang?, msg }. Stanzas shared with another song are found by Validator:Run (it sees every song).
---@param p AUPhrase
---@param langs string[] the languages to check (short codes)
---@return table[]
function Validator.StanzaProblems(p, langs)
	local out = {}
	local function Bad(level, code, msg, lang) table.insert(out, { level = level, code = code, lang = lang, msg = msg }) end
	if p.genre ~= "song" then
		Bad("error", "stanzaGenre", ("a song of stanzas has genre = \"song\", not '%s'"):format(tostring(p.genre)))
	end
	local show = p.show == nil and 1 or p.show
	if type(show) ~= "number" or show ~= math.floor(show) or show < 1 or show > Engine.STANZAS_SHOW_MAX then
		Bad("error", "stanzaShow", ("show '%s': 1 to %d stanzas"):format(tostring(p.show), Engine.STANZAS_SHOW_MAX))
		show = 1
	end
	local shape = {}   -- [lang] = { stanzas, verses per stanza }
	for _, lang in ipairs(langs) do
		local list = p.text[lang] or {}
		if #list > 0 then
			local frame = list[1]
			local ft = Engine.VariantOk(frame) and Engine.VariantText(frame) or ""
			local a, b = ft:find(Engine.STANZA_MARK, 1, true)
			if not a or ft:find(Engine.STANZA_MARK, b + 1, true) then
				Bad("error", "stanzaFrame", ("the first variant is the frame, with %s once"):format(Engine.STANZA_MARK), lang)
			end
			local n = #list - 1
			if n < Engine.STANZAS_MIN or n > Engine.STANZAS_MAX then
				Bad("error", "stanzaCount", ("%d stanzas: a song has %d to %d"):format(n, Engine.STANZAS_MIN, Engine.STANZAS_MAX), lang)
			end
			local verses, metre, longest = nil, nil, {}
			for i = 1, #list do
				local var = list[i]
				if Engine.VariantDepth(var) then
					Bad("error", "stanzaDepth", ("variant %d: the frame and the stanzas have no depth of their own"):format(i), lang)
				end
				if Engine.VariantPack(var, p.pack) ~= p.pack then
					Bad("error", "stanzaMix", ("variant %d comes from the pack '%s': the stanzas of a song are written together"):format(
						i, tostring(Engine.VariantPack(var, p.pack))), lang)
				end
				if i > 1 and Engine.VariantOk(var) then
					local t = Engine.VariantText(var)
					if t:find(Engine.STANZA_MARK, 1, true) then
						Bad("error", "stanzaFrame", ("stanza %d holds %s"):format(i - 1, Engine.STANZA_MARK), lang)
					end
					local vs = Verses(t)
					local counts = {}
					for k, v in ipairs(vs) do counts[k] = Validator.Syllables(v, lang) end
					if not verses then
						verses, metre = #vs, counts
					elseif #vs ~= verses then
						Bad("error", "stanzaVerses", ("stanza %d has %d verses, stanza 1 has %d"):format(i - 1, #vs, verses), lang)
					else
						for k = 1, #vs do
							if math.abs(counts[k] - metre[k]) > Validator.METRE_TOLERANCE then
								Bad("error", "stanzaMetre", ("stanza %d, verse %d: about %d syllables, %d in stanza 1"):format(
									i - 1, k, counts[k], metre[k]), lang)
								break
							end
						end
					end
					table.insert(longest, #t)
				end
			end
			shape[lang] = { n, verses }
			-- the longest reading: the frame with the `show` longest stanzas, an empty line between two
			table.sort(longest, function(x, y) return x > y end)
			local total = #ft - (a and #Engine.STANZA_MARK or 0)
			for k = 1, math.min(show, #longest) do total = total + longest[k] + (k > 1 and 2 or 0) end
			if total > Validator.LIMITS.READING then
				Bad("warning", "tooLong", ("the frame with %d stanzas: up to %d bytes, the READING limit is %d"):format(show, total,
					Validator.LIMITS.READING), lang)
			end
		end
	end
	-- the same stanzas in every language: as many, with as many verses
	local ref, refLang
	for _, lang in ipairs(langs) do
		local s = shape[lang]
		if s then
			if not ref then
				ref, refLang = s, lang
			elseif s[1] ~= ref[1] or s[2] ~= ref[2] then
				Bad("error", "stanzaLangs", ("%d stanzas of %s verses; in %s %d of %s"):format(s[1], tostring(s[2]), refLang,
					ref[1], tostring(ref[2])), lang)
			end
		end
	end
	return out
end

---The problems of a literary form's metadata (#119) and its warnings (#120): the vocabularies, the fields on a rule
---that is not literary, the missing metadata, placeholders in a song or a formula, the verses across languages, the
---matrix and the warning words. Each problem is { level, code, lang?, msg }.
---@param p AUPhrase
---@param langs string[] short language codes of the texts
---@return table[]
function Validator.LiteraryProblems(p, langs)
	local out = {}
	local function Bad(level, code, msg, lang) table.insert(out, { level = level, code = code, lang = lang, msg = msg }) end
	if p.genre ~= nil and not (type(p.genre) == "string" and Engine.GENRES[p.genre]) then
		Bad("error", "badGenre", ("unknown genre '%s' (see Data/Themes.lua, literary)"):format(tostring(p.genre)))
	end
	if p.purpose ~= nil and not (type(p.purpose) == "string" and Engine.PURPOSES[p.purpose]) then
		Bad("error", "badPurpose", ("unknown purpose '%s' (see Data/Themes.lua, literary)"):format(tostring(p.purpose)))
	end
	if p.origin ~= nil then
		local why = Validator.OriginProblem(p.origin)
		if why then Bad("error", "badOrigin", why) end
	end
	if not Engine.IsLiteraryRule(p) then
		if p.purpose ~= nil or p.origin ~= nil then
			Bad("error", "literaryField", "purpose and origin belong to a literary form (a genre, the tag lore or genre_*)")
		end
		return out
	end
	if p.genre == nil or p.purpose == nil or p.origin == nil then
		Bad("warning", "literaryMeta", "a literary form declares its genre, purpose and origin (#119)")
	end
	-- a rule offered only on a manual event (chance 0 by default: lore_test) has no situation to judge
	local manual = #p.events > 0
	for _, ev in ipairs(p.events) do
		if (NS.DEFAULT_CHANCE or {})[ev] ~= 0 then manual = false end
	end
	local facts = Validator.LiteraryFacts(p)
	if not manual then
		for _, m in ipairs(Validator.MatrixProblems(p, facts)) do
			local what = m.row.genre and ("genre " .. m.row.genre) or ("purpose " .. m.row.purpose)
			Bad("warning", "literaryMatrix", m.fact
				and ("%s never with %s (matrix row %s)"):format(what, m.fact, tostring(m.row.id))
				or ("%s asks one of %s (matrix row %s)"):format(what, table.concat(m.row.needs, ", "), tostring(m.row.id)))
		end
	end
	-- the texts: placeholders in a fixed genre, the warning words, the verses across languages
	local fixed = Engine.FIXED_GENRES[p.genre]
	local versesBy = {}
	for _, lang in ipairs(langs) do
		local wordWarned = manual
		local counts = {}
		for i, var in ipairs(p.text[lang] or {}) do
			if Engine.VariantOk(var) then
				local t = Engine.VariantText(var)
				if p.kind == "stanzas" and i == 1 then t = t:gsub("{stanzas}", "") end
				if fixed and t:find("{[^{}]*}") then
					Bad("error", "literaryPlaceholder", ("variant %d: a %s keeps its words, no placeholder"):format(i, p.genre), lang)
				end
				if not wordWarned then
					local word, w = Validator.LiteraryWord(t, lang, facts)
					if word then
						wordWarned = true
						Bad("warning", "literaryWord", ("variant %d names '%s' (%s) but the rule asks none of %s"):format(i, word,
							tostring(w.id), table.concat(w.needs or {}, ", ")), lang)
					end
				end
				-- a natural form in prose is not counted; a song of stanzas is checked by StanzaProblems
				if p.kind ~= "stanzas" then table.insert(counts, #Verses(t)) end
			end
		end
		table.sort(counts)
		versesBy[lang] = table.concat(counts, ",")
	end
	local ref, refLang
	for _, lang in ipairs(langs) do
		if versesBy[lang] and versesBy[lang] ~= "" then
			if not ref then
				ref, refLang = versesBy[lang], lang
			elseif versesBy[lang] ~= ref then
				Bad("warning", "verseCount", ("lines per variant %s, in %s %s: the same number of verses in every language"):format(
					versesBy[lang], refLang, ref), lang)
			end
		end
	end
	return out
end

---------------------------------------------------------------------------
-- UTF-8
---------------------------------------------------------------------------
---Vero se la stringa è UTF-8 ben formato (niente sequenze troncate, sovrabbondanti o surrogati).
---@param s string
---@return boolean ok
---@return string? why
function Engine.IsValidUTF8(s)
	local i, n = 1, #s
	while i <= n do
		local c = s:byte(i)
		local need, lo, hi = 0, 0x80, 0xBF
		if c < 0x80 then
			if (c < 0x20 and c ~= 9 and c ~= 10 and c ~= 13) or c == 0x7F then
				return false, "carattere di controllo"
			end
		elseif c >= 0xC2 and c <= 0xDF then
			need = 1
		elseif c >= 0xE0 and c <= 0xEF then
			need = 2
			if c == 0xE0 then lo = 0xA0 elseif c == 0xED then hi = 0x9F end
		elseif c >= 0xF0 and c <= 0xF4 then
			need = 3
			if c == 0xF0 then lo = 0x90 elseif c == 0xF4 then hi = 0x8F end
		else
			return false, "byte non valido"
		end
		for k = 1, need do
			local d = s:byte(i + k)
			if not d then return false, "sequenza troncata" end
			local l, h = 0x80, 0xBF
			if k == 1 then l, h = lo, hi end
			if d < l or d > h then return false, "sequenza non valida" end
		end
		if need == 2 and c == 0xEF and s:byte(i + 1) == 0xBF and s:byte(i + 2) == 0xBD then
			return false, "carattere di sostituzione U+FFFD (testo corrotto)"
		end
		i = i + 1 + need
	end
	return true
end

---------------------------------------------------------------------------
-- Segnaposto
---------------------------------------------------------------------------
-- Analizza un testo: segnaposto riconosciuti (senza il genere), problemi e ingombro massimo in byte.
-- inFrame: {line} ammesso. nested: dentro il vocabolario (niente altro vocabolario, niente {line}).
local function Analyze(text, lang, opts)
	opts = opts or {}
	local info = { tags = {}, problems = {}, bytes = 0 }
	local bytes = 0
	local rest = text:gsub("{([^{}]+)}", function(tag)
		local m, f = tag:match("^g:([^|]*)|(.*)$")
		if m then
			bytes = bytes + math.max(#m, #f)
			return ""
		end
		-- {og:m|f}: il genere dell'interlocutore (#41); non entra nella firma, perché una lingua può non avere genere
		local om, of = tag:match("^og:([^|]*)|(.*)$")
		if om then
			bytes = bytes + math.max(#om, #of)
			return ""
		end
		if tag:sub(1, 2) == "g:" or tag:sub(1, 3) == "og:" then
			table.insert(info.problems, ("forma di genere malformata '{%s}'"):format(tag))
		elseif tag == "line" then
			if opts.frame then
				bytes = bytes + (opts.lineBytes or 0)
				info.tags["line"] = true
			else
				table.insert(info.problems, "{line} è ammesso solo nelle cornici")
			end
		elseif Engine.PLACEHOLDERS[tag] then
			info.tags[tag] = true
			bytes = bytes + (Validator.WORST[tag] or 20)
		elseif Engine.vocab[tag] then
			if opts.nested then
				table.insert(info.problems, ("vocabolario '{%s}' dentro il vocabolario"):format(tag))
			else
				info.tags[tag] = true
				bytes = bytes + (opts.vocabBytes and opts.vocabBytes(tag) or 40)
			end
		else
			table.insert(info.problems, ("segnaposto sconosciuto '{%s}'"):format(tag))
		end
		return ""
	end)
	if rest:find("[{}]") then table.insert(info.problems, "graffe non bilanciate") end
	info.bytes = bytes + #rest
	return info
end

-- confronta le firme dei segnaposto tra le lingue dichiarate: ogni lingua deve avere le stesse combinazioni
-- (una variante senza segnaposto di ripiego, GDD §9.4, deve esserci in tutte). Restituisce i messaggi.
local function CompareSignatures(sigs, langs)
	local out, ref = {}, nil
	for _, lang in ipairs(langs) do
		if sigs[lang] and next(sigs[lang]) then
			if not ref then
				ref = lang
			else
				local a, b = {}, {}
				for sg in pairs(sigs[ref]) do table.insert(a, "[" .. sg .. "]") end
				for sg in pairs(sigs[lang]) do table.insert(b, "[" .. sg .. "]") end
				table.sort(a); table.sort(b)
				if table.concat(a, " ") ~= table.concat(b, " ") then
					table.insert(out, { lang, ("segnaposto diversi: %s ha %s, %s ha %s"):format(ref,
						table.concat(a, " "), lang, table.concat(b, " ")) })
				end
			end
		end
	end
	return out
end

-- una variante come tabella { t, ok, depth, pack, raw } (#84)
local View = Engine.VariantView

-- {spell} is the client's own name for the spell (#104): a language other than the client's may leave it out, so it
-- does not count when the languages are compared
local function Signature(tags)
	local list = {}
	for t in pairs(tags) do if t ~= "spell" then table.insert(list, t) end end
	table.sort(list)
	return table.concat(list, ",")
end

---------------------------------------------------------------------------
-- Controllo
---------------------------------------------------------------------------
---Valida i pacchetti indicati (tutti se `opts.packs` manca).
---@param opts? { packs?: string[] }
---@return AUValidation
function Validator:Run(opts)
	opts = opts or {}
	local result = { errors = {}, warnings = {}, stats = { phrases = 0, variants = 0, packs = 0, byLang = {},
		speakers = {}, styles = {}, depths = {}, categories = {} } }
	local scope
	if opts.packs then
		scope = {}
		for _, id in ipairs(opts.packs) do scope[id] = true end
	end
	local function InScope(packId) return not scope or scope[packId] end

	local function Add(level, code, pack, id, lang, msg)
		table.insert(level == "error" and result.errors or result.warnings,
			{ level = level, code = code, pack = pack, id = id, lang = lang, msg = msg })
	end

	-- caratteri massimi di una voce di vocabolario in una lingua (con i suoi segnaposto)
	local vocabCache = {}
	local function VocabBytes(lang)
		return function(name)
			local key = lang .. ":" .. name
			if vocabCache[key] then return vocabCache[key] end
			local max = 0
			for _, v in ipairs(Engine.vocab[name] or {}) do
				for _, var in ipairs(v.text[lang] or {}) do
					var = View(var, v.pack)
					if var.ok then max = math.max(max, Analyze(var.t, lang, { nested = true }).bytes) end
				end
			end
			vocabCache[key] = max
			return max
		end
	end

	-- lingue che ogni frase del pacchetto deve avere: quelle dichiarate (languages) oppure, se mancano,
	-- quelle in cui il pacchetto stesso ha scritto dei testi. I testi aggiunti da altri pacchetti non contano.
	local function DeclaredLangs(pack)
		local set = {}
		if pack.languages then
			for _, l in ipairs(pack.languages) do
				local code = Engine.LangCode(l)
				-- only the languages whose phrase texts are in memory: the others are in packs not loaded (#85)
				if code and (not NS.Packs or NS.Packs:TextsLoaded(code)) then set[code] = true end
			end
		else
			for _, id in ipairs(pack.ids or {}) do
				for lang, list in pairs(Engine.byId[id].text) do
					for _, var in ipairs(list) do
						if Engine.VariantPack(var, Engine.byId[id].pack) == pack.id then set[lang] = true end
					end
				end
			end
			for lang in pairs(pack.langsUsed or {}) do set[lang] = true end
		end
		local langs = {}
		for lang in pairs(set) do table.insert(langs, lang) end
		table.sort(langs)
		return langs
	end

	-- punti di riferimento (Data/Landmarks.lua, Systems/World.lua): voci con id, sottozona, coordinate o tag non validi
	if not scope and NS.World then
		for _, issue in ipairs(NS.World.landmarkIssues) do
			Add("error", "badLandmark", nil, issue.id, nil, issue.message)
		end
	end

	-- problemi emersi quando i pacchetti sono stati caricati
	for _, issue in ipairs(Engine.loadIssues) do
		if issue.pack and InScope(issue.pack) then
			Add(LOAD_LEVEL[issue.code] or "error", issue.code, issue.pack, issue.id, nil, issue.msg)
		end
	end

	-- frasi
	local function FrameOverhead(lang, events)
		local max = 0
		for _, key in ipairs({ "*", unpack(events) }) do
			for _, f in ipairs(Engine.frames[key] or {}) do
				for _, var in ipairs(f.text[lang] or {}) do
					var = View(var, f.pack)
					if var.ok then
						max = math.max(max, Analyze(var.t, lang, { frame = true, lineBytes = 0,
							vocabBytes = VocabBytes(lang) }).bytes)
					end
				end
			end
		end
		return max
	end

	local packsSeen = {}
	local ids = Engine.SortedKeys(Engine.byId)
	-- the stanzas of the songs seen so far (#127): [lang .. verses] = { id, list } of the song
	local stanzaOwner = {}
	-- the phrases some monologue uses (#99), with the monologue that uses them
	local chained = {}
	for _, mid in ipairs(ids) do
		local p = Engine.byId[mid]
		if p.kind == "monologue" then
			for _, part in ipairs(p.parts or {}) do chained[part] = chained[part] or p end
		end
	end
	for _, id in ipairs(ids) do
		local p = Engine.byId[id]
		if InScope(p.pack) then
			local pack = Engine.packs[p.pack]
			packsSeen[p.pack] = true
			local st = result.stats
			st.phrases = st.phrases + 1
			st.speakers[p.speaker] = (st.speakers[p.speaker] or 0) + 1
			st.categories[p.category] = (st.categories[p.category] or 0) + 1
			local tone = Engine.Tone(p)
			if tone then st.styles[tone] = (st.styles[tone] or 0) + 1 end
			-- profondità come le ha scritte il pacchetto: l'elenco, se il registro l'ha tenuto (#84), o l'insieme
			local depthList = p.depthList or (p.depth and Engine.SortedKeys(p.depth))
			if depthList then
				for _, d in ipairs(depthList) do st.depths[d] = (st.depths[d] or 0) + 1 end
			else
				st.depths.all = (st.depths.all or 0) + 1
			end

			-- regola
			for _, ev in ipairs(p.events) do
				if not Engine.events[ev] and not (NS.spellKeywords and NS.spellKeywords.kind[ev]) then
					Add("warning", "unknownEvent", p.pack, id, nil,
						("evento '%s' non dichiarato (usa NS:RegisterEvent o events = {} nel pacchetto)"):format(ev))
				end
			end
			if not Engine.CATEGORIES[p.category] then
				Add("warning", "unknownCategory", p.pack, id, nil, ("categoria '%s' sconosciuta"):format(p.category))
			end
			if #p.styles == 0 and not p.legacy then
				Add("warning", "noStyle", p.pack, id, nil, "nessun registro (styles)")
			end
			for _, s in ipairs(p.styles) do
				if not Engine.STYLES[s] then
					Add("warning", "unknownStyle", p.pack, id, nil, ("registro '%s' sconosciuto"):format(s))
				end
			end
			for _, d in ipairs(depthList or {}) do
				if not Engine.DEPTHS[d] then
					Add("error", "badDepth", p.pack, id, nil, ("profondità '%s' sconosciuta"):format(tostring(d)))
				end
			end
			-- themes and motifs (#90): closed vocabularies
			if p.theme ~= nil and not (type(p.theme) == "string" and Engine.THEMES[p.theme]) then
				Add("error", "badTheme", p.pack, id, nil, ("unknown theme '%s' (see Data/Themes.lua)"):format(tostring(p.theme)))
			end
			if p.motifs ~= nil then
				if #p.motifs > Engine.MAX_MOTIFS then
					Add("error", "badMotif", p.pack, id, nil, ("%d motifs: at most %d"):format(#p.motifs, Engine.MAX_MOTIFS))
				end
				for _, m in ipairs(p.motifs) do
					if not (type(m) == "string" and Engine.MOTIFS[m]) then
						Add("error", "badMotif", p.pack, id, nil, ("unknown motif '%s' (see Data/Themes.lua)"):format(tostring(m)))
					end
				end
			end
			if p.when then
				for _, msg in ipairs(Engine.CheckConditions(p.when)) do
					Add("error", "badCondition", p.pack, id, nil, msg)
				end
			end
			-- monologues and their parts (#99)
			if p.kind == "monologue" then
				local langs = pack and DeclaredLangs(pack) or {}
				if #langs == 0 then langs = { "en", "it" } end
				for _, b in ipairs(Validator.MonologueProblems(p, langs)) do Add(b.level, b.code, p.pack, id, b.lang, b.msg) end
			elseif p.chainable == "only" and not chained[id] then
				Add("warning", "orphanPart", p.pack, id, nil, "chainable = \"only\" but no monologue uses it")
			end
			if p.chainable and not Validator.MONOLOGUE_SPEAKERS[p.speaker] then
				Add("error", "monologueVoice", p.pack, id, nil, "a chainable phrase is for private voices (narrator, inner)")
			end
			-- D16 (#163): a literary form (tags lore, genre_*, the category lore, #118, a genre, #119, or stanzas, #127)
			-- never speaks in a public voice, and a monologue is never one
			local literary = Engine.HasLiteraryTag(p.tags) or p.genre ~= nil or p.kind == "stanzas"
			if Engine.PUBLIC_SPEAKERS[p.speaker] then
				if literary or p.category == Engine.LITERARY_CATEGORY then
					Add("error", "literaryPublic", p.pack, id, nil,
						("tag lore or genre_*: a literary form is for private voices (inner, npc), not '%s' (decision D16)"):format(p.speaker))
				end
			end
			-- #118: a literary form is in the literary category, so that it is rare and follows the user's setting
			if literary and p.category ~= Engine.LITERARY_CATEGORY then
				Add("error", "literaryCategory", p.pack, id, nil,
					("tag lore or genre_*: a literary form is in the category '%s', not '%s'"):format(Engine.LITERARY_CATEGORY,
						tostring(p.category)))
			end
			-- #119, #120: the literary metadata, the genre x situation matrix and the warning words; #127: the stanzas
			do
				local textLangs = Engine.SortedKeys(p.text)
				for _, b in ipairs(Validator.LiteraryProblems(p, textLangs)) do Add(b.level, b.code, p.pack, id, b.lang, b.msg) end
				if p.kind == "stanzas" then
					for _, b in ipairs(Validator.StanzaProblems(p, textLangs)) do Add(b.level, b.code, p.pack, id, b.lang, b.msg) end
					-- the stanzas of a song are its own: the same stanza in two songs mixes them (a rule that shares the
					-- very list of texts, like the lore_test twin of a song, is the same song)
					for _, lang in ipairs(textLangs) do
						local list = p.text[lang]
						for i = 2, #list do
							local t = Engine.VariantOk(list[i]) and Engine.VariantText(list[i])
							if t then
								local key = lang .. "\31" .. table.concat(Validator.Verses(t), "\n")
								local other = stanzaOwner[key]
								if other and other.list ~= list then
									Add("error", "stanzaMix", p.pack, id, lang,
										("stanza %d is also a stanza of '%s': never mix the stanzas of two songs"):format(i - 1, other.id))
								end
								stanzaOwner[key] = other or { id = id, list = list }
							end
						end
					end
				end
			end
			-- #100: a line for a composite situation belongs to the situation's lead event
			if p.situational then
				for _, sid in ipairs(Engine.AsList(p.when.situation)) do
					local def = Engine.SITUATIONS[sid]
					local leads = false
					for _, ev in ipairs(p.events) do if def and def.lead == ev then leads = true end end
					if def and not leads then
						Add("error", "situationLead", p.pack, id, nil,
							("situation '%s' is led by '%s', not by the events of this line"):format(sid, tostring(def.lead)))
					end
				end
			end
			-- richiamo di memoria: una frase di un evento di richiamo cita un ricordo, quindi deve dichiarare la
			-- condizione che lo garantisce (firstVisit, repeatVisit, lastVisitBad, remembered...)
			if NS.LivingMemory then
				for _, ev in ipairs(p.events) do
					if NS.LivingMemory.recalls[ev] and not Engine.UsesMemory(p.when) then
						Add("error", "recallWithoutMemory", p.pack, id, nil,
							("evento di richiamo '%s' senza una condizione di memoria"):format(ev))
						break
					end
				end
			end
			-- tone and the last visit (#98): a cheerful or ironic return line must not be eligible after a death or a
			-- flight. It declares lastVisitBad = false, or, if it is gallows humour about that bad visit, it is only for an
			-- ironic character (req:irony:high)
			if Validator.IsReturnLine(p) and Validator.IsLightLine(p) and not Validator.LightReturnGuarded(p) then
				Add("error", "lightReturnAfterBadVisit", p.pack, id, nil,
					"cheerful or ironic return line without lastVisitBad = false (or req:irony:high for a line about the bad visit)")
			end
			-- eventi che citano una persona (relation_npc): la frase dichiara la condizione che garantisce il rapporto
			if NS.Relationships then
				for _, ev in ipairs(p.events) do
					if NS.Relationships.recalls[ev] and not Engine.UsesRelation(p.when) then
						Add("error", "relationWithoutRelation", p.pack, id, nil,
							("evento '%s' senza una condizione di relazione (relation, isKnown, disposition...)"):format(ev))
						break
					end
				end
			end
			-- calore e relazione (#105): una frase calda (tag `warm`) di un saluto, di un congedo o di una reazione a
			-- un'azione deve escludere nemico, inviso, diffidente e temuto, salvo che sia dichiarata ironica (tag `ironic`)
			if p.tags and p.tags.warm and not p.tags.ironic then
				for _, ev in ipairs(p.events) do
					if WARM_GUARDED[ev] and not Engine.ExcludesNegativeRelation(p.when, p.tags) then
						Add("error", "warmWithoutRelation", p.pack, id, nil,
							("frase calda dell'evento '%s' senza esclusione di nemico, inviso, diffidente e temuto (usa relation, not = { relation = ... } o il tag ironic)"):format(ev))
						break
					end
				end
			end
			-- tag di affinità del Character Soul (trait:valore, req:, not:, topic:): tratto e valore devono esistere
			if NS.Traits then
				for tag in pairs(p.tags or {}) do
					local problem = NS.Traits.CheckTag(tag)
					if problem then Add("error", "badTag", p.pack, id, nil, problem) end
				end
			end
			if p.speaker == "inner" and p.form == "emote" then
				Add("warning", "innerEmote", p.pack, id, nil, "una voce interiore non si dice in emote")
			end

			-- testi (a monologue has none: its parts are checked above, #99)
			if p.kind ~= "monologue" then
				-- testi
				local langs = pack and DeclaredLangs(pack) or {}
				local present = {}
				for lang in pairs(p.text) do present[lang] = true end
				local hasAny = false
				local sigs = {}   -- [lingua] = { [firma] = true }
				local langList = {}
				for lang in pairs(present) do table.insert(langList, lang) end
				table.sort(langList)
				-- #162: what the words of the texts are checked against (the monologue counts for its parts)
				local owner = chained[id]
				local when = Merged(p, owner)
				local times = LineTimes(p, owner)
				local describes, placeEvent = false, false
				for _, ev in ipairs(p.events) do
					if Validator.WEATHER_EVENTS[ev] then describes = true end
					if Validator.PLACE_EVENTS[ev] then placeEvent = true end
				end
				for _, ev in ipairs(owner and owner.events or {}) do
					if Validator.WEATHER_EVENTS[ev] then describes = true end
					if Validator.PLACE_EVENTS[ev] then placeEvent = true end
				end
				local placeBound = PlaceBound(when)
				local remembers = Engine.UsesMemory(when)
				local badVisit = when.lastVisitBad == true or when.lastVisitBad == "flight"
				for _, lang in ipairs(langList) do
					local list = p.text[lang]
					local okCount = 0
					local agreementWarned, reciprocalWarned, timeWarned, visitWarned, deathWarned = false, false, false, false, false
					local weatherWarned = Engine.UsesWeather(p.when) or PlaceBound(p.when) or SituationWeather(p)
					if not weatherWarned then
						weatherWarned = true
						for _, ev in ipairs(p.events) do
							if Validator.WEATHER_EVENTS[ev] then weatherWarned = false; break end
						end
					end
					sigs[lang] = {}
					for i, var in ipairs(list) do
						var = View(var, p.pack)
						st.variants = st.variants + 1
						st.byLang[lang] = (st.byLang[lang] or 0) + 1
						if not var.ok then
							Add("error", "emptyVariant", p.pack, id, lang,
								var.raw and ("variante %d non è una stringa (%s)"):format(i, var.raw)
								or ("variante %d vuota"):format(i))
						else
							okCount = okCount + 1
							hasAny = true
							local valid, why = Engine.IsValidUTF8(var.t)
							if not valid then
								Add("error", "badUTF8", p.pack, id, lang, ("variante %d: %s"):format(i, why))
							end
							-- #127: the mark of a song's frame is where its stanzas go, not a placeholder
							local info = Analyze(p.kind == "stanzas" and i == 1 and var.t:gsub("{stanzas}", "") or var.t, lang,
								{ vocabBytes = VocabBytes(lang) })
							for _, prob in ipairs(info.problems) do
								Add("error", "badPlaceholder", p.pack, id, lang, ("variante %d: %s"):format(i, prob))
							end
							sigs[lang][Signature(info.tags)] = true
							-- il meteo nominato senza la condizione che lo garantisce (#92): un avviso per regola e lingua
							if not weatherWarned then
								local word = Validator.WeatherWord(var.t, lang)
								if word then
									weatherWarned = true
									Add("warning", "weatherWord", p.pack, id, lang,
										("variante %d nomina il meteo ('%s') senza la condizione weather: con il meteo illeggibile uscirebbe lo stesso"):format(i, word))
								end
							end
							-- un accordo al maschile fuori da {g:} e {og:} (#70, #71): un avviso per regola e lingua
							if not agreementWarned then
								local found = Validator.UnmarkedAgreement(var.t, lang, p.speaker == "narrator" and p.form == "emote")
								if found then
									agreementWarned = true
									Add("warning", "itAgreement", p.pack, id, lang,
										("variante %d: '%s' si accorda al maschile senza {g:} né {og:}: usa il segnaposto o una forma neutra"):format(i, found))
								end
							end
							-- #162: the speaker and the other together in the masculine plural
							if not reciprocalWarned then
								local found = Validator.UnmarkedReciprocal(var.t, lang)
								if found then
									reciprocalWarned = true
									Add("warning", "itAgreementOther", p.pack, id, lang,
										("variant %d: '%s' is masculine plural for the speaker and the other together, wrong when both are women: use a neutral form"):format(i, found))
								end
							end
							-- #162: a time of day the conditions do not guarantee
							if not timeWarned then
								local word, why = Validator.TimeProblem(var.t, lang, times, describes, placeBound)
								if word then
									timeWarned = true
									Add("warning", "timeWord", p.pack, id, lang,
										("variant %d names the time of day ('%s') but %s: ask a matching time (time = ...)"):format(i, word, why))
								end
							end
							-- #162: a first visit or a return the conditions do not guarantee
							if placeEvent and not visitWarned then
								local novel = not remembers and Validator.FindWord(var.t, Validator.NOVELTY_WORDS[lang])
								local back = (not remembers or when.firstVisit == true)
									and Validator.FindWord(var.t, Validator.RETURN_WORDS[lang])
								if novel then
									visitWarned = true
									Add("warning", "visitWord", p.pack, id, lang,
										("variant %d assumes a first visit ('%s') without firstVisit = true: it also speaks on a return"):format(i, novel))
								elseif back then
									visitWarned = true
									Add("warning", "visitWord", p.pack, id, lang,
										("variant %d assumes a return ('%s') without repeatVisit = true: it also speaks on a first visit"):format(i, back))
								end
							end
							-- #162: a death named where the bad visit may have been a flight
							if badVisit and not deathWarned then
								local word = Validator.FindWord(var.t, Validator.DEATH_WORDS[lang])
								if word then
									deathWarned = true
									Add("warning", "badVisitDeath", p.pack, id, lang,
										("variant %d names a death ('%s') under lastVisitBad = %s, which also means a flight: use lastVisitBad = \"death\""):format(i, word, tostring(when.lastVisitBad)))
								end
							end
							if Engine.PUBLIC_SPEAKERS[p.speaker] then
								for tag in pairs(info.tags) do
									if Engine.USER_TEXT[tag] then
										Add("error", "userTextPublic", p.pack, id, lang,
											("variante %d: {%s} può contenere un testo scritto dall'utente, ammesso solo nelle voci private (inner, npc), non in '%s'"):format(i, tag, p.speaker))
									end
								end
							end
							for d in pairs(var.depth or {}) do
								if not Engine.DEPTHS[d] then
									Add("error", "badDepth", p.pack, id, lang, ("variante %d: profondità '%s' sconosciuta"):format(i, d))
								end
							end
							-- lunghezza: il peggiore dei canali possibili
							local worst, worstCh = info.bytes, nil
							local channels = CHANNELS[p.speaker] or {}
							local limit, limitCh = math.huge, nil
							for _, ch in ipairs(channels) do
								if Validator.LIMITS[ch] < limit then limit, limitCh = Validator.LIMITS[ch], ch end
							end
							-- #126, D20: a literary form in a private voice is read in the narrator: up to READING bytes
							if p.category == Engine.LITERARY_CATEGORY and not Engine.PUBLIC_SPEAKERS[p.speaker] then
								limit, limitCh = Validator.LIMITS.READING, "READING"
							end
							if worst > limit then
								local private = p.speaker == "inner" or p.speaker == "npc"
								Add(private and "warning" or "error", "tooLong", p.pack, id, lang, ("variante %d: fino a %d byte, il limite di %s è %d"):format(i, worst, limitCh, limit))
							end
							-- parlata raccontata in una cornice: cornice più frase nel limite di /e
							if p.speaker == "character" and p.form == "say" then
								local over = FrameOverhead(lang, p.events)
								if over > 0 and worst + over > Validator.LIMITS.EMOTE then
									Add("warning", "tooLongFramed", p.pack, id, lang,
										("variante %d: dentro la cornice più lunga arriva a %d byte (limite %d)"):format(
											i, worst + over, Validator.LIMITS.EMOTE))
								end
							end
							-- #117: line breaks are for the private voices; in chat the Gateway writes " / " instead
							if Engine.PUBLIC_SPEAKERS[p.speaker] and var.t:find("[\r\n]") then
								Add("warning", "multilinePublic", p.pack, id, lang,
									("variant %d: a line break in a public voice becomes \" / \" in chat"):format(i))
							end
							if p.form == "emote" and (var.t:match("^[A-Z\"]") or var.t:sub(1, 2) == "«") then
								Add("error", "emoteCase", p.pack, id, lang,
									("variante %d: l'emote inizia in maiuscolo o con le virgolette (il gioco antepone il nome)"):format(i))
							end
						end
					end
					if okCount == 0 and #list > 0 then
						Add("error", "emptyLang", p.pack, id, lang, "tutte le varianti sono vuote")
					end
				end
				if not hasAny then
					Add("error", "noText", p.pack, id, nil, "nessun testo in nessuna lingua")
				end
				for _, lang in ipairs(langs) do
					local list = p.text[lang]
					local usable = false
					for _, var in ipairs(list or {}) do if Engine.VariantOk(var) then usable = true; break end end
					if not usable then
						Add("error", "missingLang", p.pack, id, lang, ("manca il testo in '%s'"):format(lang))
					end
				end
				-- segnaposto: stesse firme in tutte le lingue dichiarate
				for _, m in ipairs(CompareSignatures(sigs, langs)) do
					Add("error", "placeholderMismatch", p.pack, id, m[1], m[2])
				end
			end
		end
	end

	-- cornici e vocabolario
	for _, packId in ipairs(Engine.packOrder) do
		local pack = Engine.packs[packId]
		if InScope(packId) then
			packsSeen[packId] = true
			local langs = DeclaredLangs(pack)
			local function CheckEntry(kind, e, label)
				for _, lang in ipairs(langs) do
					local list = e.text[lang]
					local usable = false
					for _, var in ipairs(list or {}) do if Engine.VariantOk(var) then usable = true; break end end
					if not usable then
						Add("error", "missingLang", packId, label, lang, ("manca il testo in '%s'"):format(lang))
					end
				end
				if e.when then
					for _, msg in ipairs(Engine.CheckConditions(e.when)) do
						Add("error", "badCondition", packId, label, nil, msg)
					end
				end
				-- tag delle voci di vocabolario (#42): tratto e valore devono esistere, come per le regole
				if kind == "vocab" and NS.Traits then
					for tag in pairs(e.tags or {}) do
						local problem = NS.Traits.CheckTag(tag)
						if problem then Add("error", "badTag", packId, label, nil, problem) end
					end
				end
				local sigs = {}
				for lang, list in pairs(e.text) do
					sigs[lang] = {}
					for i, var in ipairs(list) do
						var = View(var, e.pack)
						if not var.ok then
							Add("error", "emptyVariant", packId, label, lang, ("variante %d vuota"):format(i))
						else
							local valid, why = Engine.IsValidUTF8(var.t)
							if not valid then Add("error", "badUTF8", packId, label, lang, ("variante %d: %s"):format(i, why)) end
							local info = Analyze(var.t, lang, { frame = kind == "frame", nested = kind == "vocab",
								vocabBytes = VocabBytes(lang) })
							for _, prob in ipairs(info.problems) do
								Add("error", "badPlaceholder", packId, label, lang, ("variante %d: %s"):format(i, prob))
							end
							-- una cornice o una voce di vocabolario entra anche nelle frasi pubbliche
							for tag in pairs(info.tags) do
								if Engine.USER_TEXT[tag] then
									Add("error", "userTextPublic", packId, label, lang,
										("variante %d: {%s} può contenere un testo scritto dall'utente, non ammesso in %s (finirebbe in frasi pubbliche)"):format(
											i, tag, kind == "frame" and "una cornice" or "il vocabolario"))
								end
							end
							if kind == "frame" and not info.tags.line then
								Add("error", "frameNoLine", packId, label, lang, ("variante %d: manca {line}"):format(i))
							end
							sigs[lang][Signature(info.tags)] = true
						end
					end
				end
				for _, m in ipairs(CompareSignatures(sigs, langs)) do
					Add("error", "placeholderMismatch", packId, label, m[1], m[2])
				end
			end
			for i, f in ipairs(pack.frameList or {}) do
				for _, ev in ipairs(Engine.AsList(f.event or "*")) do
					if ev ~= "*" and not Engine.events[ev] and not (NS.spellKeywords and NS.spellKeywords.kind[ev]) then
						Add("warning", "unknownEvent", packId, f.id, nil, ("evento '%s' non dichiarato"):format(ev))
					end
				end
				CheckEntry("frame", f, f.id)
				for _, st in ipairs(f.styles or {}) do
					if not Engine.STYLES[st] then
						Add("warning", "unknownStyle", packId, f.id, nil,
							("la cornice dichiara il registro '%s', sconosciuto: non si unirà a nessuna frase"):format(tostring(st)))
					end
				end
				for _, th in ipairs(f.themes or {}) do
					if not (type(th) == "string" and Engine.THEMES[th]) then
						Add("error", "badTheme", packId, f.id, nil, ("unknown theme '%s' in a frame"):format(tostring(th)))
					end
				end
			end
			for _, v in ipairs(pack.vocabList or {}) do
				CheckEntry("vocab", v, v.id)
			end
			for _, lang in ipairs(langs) do
				if not NS.languages[lang] then
					Add("warning", "unregisteredLanguage", packId, nil, lang,
						("lingua '%s' non registrata con RegisterLanguage: le frasi non saranno selezionabili"):format(lang))
				end
			end
		end
	end

	-- direction data (#89, #91): related-event fallbacks, category quotas and hunger
	if not scope then
		for _, ev in ipairs(Engine.SortedKeys(Engine.events)) do
			local fb = Engine.events[ev].fallback
			if fb ~= nil then
				if type(fb) ~= "string" or not Engine.events[fb] then
					Add("error", "badFallback", Engine.events[ev].pack, "event:" .. ev, nil,
						("fallback '%s' is not a declared event"):format(tostring(fb)))
				else
					-- no cycle: following the chain from ev never comes back to ev
					local seen, cur = { [ev] = true }, fb
					while cur and Engine.events[cur] do
						if seen[cur] then
							Add("error", "badFallback", Engine.events[ev].pack, "event:" .. ev, nil,
								("the fallback chain comes back to '%s'"):format(cur))
							break
						end
						seen[cur] = true
						cur = Engine.events[cur].fallback
					end
				end
			end
		end
		for _, cat in ipairs(Engine.SortedKeys(Engine.QUOTAS)) do
			local q = Engine.QUOTAS[cat]
			if type(q) ~= "table" or type(q.share) ~= "number" or q.share <= 0 or q.share > 1
				or (q.window ~= nil and not (type(q.window) == "number" and q.window >= 1))
				or (q.span ~= nil and not (type(q.span) == "number" and q.span > 0)) then
				Add("error", "badQuota", nil, "quota:" .. cat, nil, "a quota needs share 0-1, window >= 1 and span > 0")
			elseif not Engine.CATEGORIES[cat] then
				Add("warning", "unknownCategory", nil, "quota:" .. cat, nil, ("categoria '%s' sconosciuta"):format(cat))
			end
		end
		-- #118: the categories with their own pacing
		for _, cat in ipairs(Engine.SortedKeys(Engine.CATEGORY_DEFS)) do
			local d = Engine.CATEGORY_DEFS[cat]
			local function Num(v, min) return v == nil or (type(v) == "number" and v == v and v >= min and v < math.huge) end
			if type(d) ~= "table" or not Num(d.budget, 1) or not Num(d.window, 1) or not Num(d.cooldown, 0)
				or not Num(d.minCooldown, 0) then
				Add("error", "badCategory", nil, "category:" .. tostring(cat), nil,
					"a category's pacing needs budget >= 1, window >= 1, cooldown >= 0 and minCooldown >= 0 (numbers)")
			end
		end
		for _, cat in ipairs(Engine.SortedKeys(Engine.HUNGER)) do
			local h = Engine.HUNGER[cat]
			if type(h) ~= "table" or type(h.factor) ~= "number" or h.factor < 1 or h.factor > 5
				or (h.after ~= nil and not (type(h.after) == "number" and h.after > 0)) then
				Add("error", "badHunger", nil, "hunger:" .. cat, nil, "hunger needs a factor 1-5 and after > 0")
			elseif not Engine.CATEGORIES[cat] then
				Add("warning", "unknownCategory", nil, "hunger:" .. cat, nil, ("categoria '%s' sconosciuta"):format(cat))
			end
		end
	end

	-- composite situations (#100): a declared lead event, declared events to merge, a window, valid conditions
	if not scope then
		local span = NS.Director and NS.Director.RECENT_SPAN or 300
		for _, sid in ipairs(Engine.SITUATION_ORDER) do
			local def = Engine.SITUATIONS[sid]
			local key = "situation:" .. sid
			if type(def.lead) ~= "string" or not Engine.events[def.lead] then
				Add("error", "badSituation", def.pack, key, nil, ("lead '%s' is not a declared event"):format(tostring(def.lead)))
			end
			local n = 0
			for _, field in ipairs({ "with", "withAny" }) do
				local list = def[field]
				if list ~= nil and type(list) ~= "table" then
					Add("error", "badSituation", def.pack, key, nil, field .. " must be a list of events")
				else
					for _, ev in ipairs(list or {}) do
						n = n + 1
						if type(ev) ~= "string" or not Engine.events[ev] then
							Add("error", "badSituation", def.pack, key, nil, ("%s: '%s' is not a declared event"):format(field, tostring(ev)))
						end
					end
				end
			end
			if def.within ~= nil and not (type(def.within) == "number" and def.within > 0 and def.within <= span) then
				Add("error", "badSituation", def.pack, key, nil, ("within must be 1-%d seconds"):format(span))
			end
			if def.when ~= nil then
				if type(def.when) ~= "table" then
					Add("error", "badSituation", def.pack, key, nil, "when must be a table of conditions")
				else
					for _, msg in ipairs(Engine.CheckConditions(def.when)) do Add("error", "badSituation", def.pack, key, nil, msg) end
				end
			end
			if n == 0 and def.when == nil then
				Add("error", "badSituation", def.pack, key, nil, "a situation needs other events (with, withAny) or conditions (when)")
			end
		end
	end

	-- registri dichiarati con NS:RegisterEventStyles e NS:RegisterMoodStyles (non appartengono a un pacchetto preciso)
	if not scope then
		local SR = Engine.StyleResolver
		local function CheckStyleRegistry(kind, map)
			for _, key in ipairs(Engine.SortedKeys(map)) do
				for _, st in ipairs(map[key]) do
					if not Engine.STYLES[st] then
						Add("warning", "unknownStyle", nil, kind .. ":" .. tostring(key), nil,
							("registro '%s' sconosciuto in RegisterEventStyles/RegisterMoodStyles (%s)"):format(tostring(st), kind))
					end
				end
			end
		end
		if SR then
			CheckStyleRegistry("event", SR.EVENT_STYLES)
			CheckStyleRegistry("mood", SR.MOOD_STYLES)
		end
	end

	-- dialoghi ambientali (S8): nodi, risposte, flag e battute dei copioni
	if not scope and NS.NPCAlive then
		for _, p in ipairs(NS.NPCAlive:Check()) do
			Add(p.level, "badDialogue", nil, p.key, nil, p.msg)
		end
	end

	-- chiavi condivise tra pacchetti (#69): copioni, NPC, luoghi e archi rifiutati o sostituiti
	if not scope and NS.Packs then
		for _, p in ipairs(NS.Packs:CheckKeys()) do
			Add(p.level, p.code, nil, p.key, nil, p.msg)
		end
	end

	-- Story Arcs (S9): definizioni, passi, scelte, testi per lingua e battute degli eventi arc_*
	if not scope and NS.StoryArcs then
		for _, p in ipairs(NS.StoryArcs:Check()) do
			Add(p.level, "badArc", nil, p.key, nil, p.msg)
		end
	end

	-- testi arrivati per frasi che non esistono
	if not scope then
		for _, id in ipairs(Engine.SortedKeys(Engine.pendingTexts)) do
			local langs = Engine.SortedKeys(Engine.pendingTexts[id])
			Add("error", "orphanText", nil, id, nil,
				("testi (%s) per una frase senza regola"):format(table.concat(langs, ", ")))
		end
	end

	for _ in pairs(packsSeen) do result.stats.packs = result.stats.packs + 1 end
	return result
end

---------------------------------------------------------------------------
-- /au validate
---------------------------------------------------------------------------
---Stampa il risultato in chat: il riepilogo e i primi problemi (tutti con `full`).
---@param result AUValidation
---@param full? boolean
function Validator:Print(result, full)
	local st = result.stats
	NS:Print(NS:L("validate_summary", st.phrases, st.packs, st.variants, #result.errors, #result.warnings))
	local shown, max = 0, full and math.huge or 12
	for _, list in ipairs({ result.errors, result.warnings }) do
		for _, pr in ipairs(list) do
			if shown >= max then break end
			shown = shown + 1
			NS:Print(("|cff%s%s|r %s%s: %s"):format(pr.level == "error" and "ff6060" or "ffd060", pr.code,
				pr.id or pr.pack or "?", pr.lang and (" (" .. pr.lang .. ")") or "", pr.msg))
		end
	end
	local total = #result.errors + #result.warnings
	if total > shown then NS:Print(NS:L("validate_more", total - shown)) end
	if total == 0 then NS:Print(NS:L("validate_ok")) end
end

function Validator:Command(arg)
	arg = NS.Lower(arg or "")
	local full = arg == "full"
	local packs
	if arg ~= "" and not full then
		if not Engine.packs[arg] then
			NS:Print(NS:L("validate_nopack", arg))
			return
		end
		packs = { arg }
	end
	self:Print(self:Run({ packs = packs }), full)
end
