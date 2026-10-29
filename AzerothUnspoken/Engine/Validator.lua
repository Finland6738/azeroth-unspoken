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
	other = 40, otherrole = 24, otherrace = 40, otherclass = 40, instance = 40, encounter = 40 }

-- livelli dei problemi emersi in caricamento (Engine.loadIssues)
local LOAD_LEVEL = { dupId = "error", badId = "error", noEvent = "error", badForm = "error", badSpeaker = "error",
	noSpeaker = "warning", badWeight = "error", badCooldown = "error", badConditions = "error" }

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
		if tag:sub(1, 2) == "g:" then
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

local function Signature(tags)
	local list = {}
	for t in pairs(tags) do table.insert(list, t) end
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
				if code then set[code] = true end
			end
		else
			for _, id in ipairs(pack.ids or {}) do
				for lang, list in pairs(Engine.byId[id].text) do
					for _, var in ipairs(list) do
						if var.pack == pack.id then set[lang] = true end
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
	for _, id in ipairs(ids) do
		local p = Engine.byId[id]
		if InScope(p.pack) then
			local pack = Engine.packs[p.pack]
			packsSeen[p.pack] = true
			local st = result.stats
			st.phrases = st.phrases + 1
			st.speakers[p.speaker] = (st.speakers[p.speaker] or 0) + 1
			st.categories[p.category] = (st.categories[p.category] or 0) + 1
			if p.tone then st.styles[p.tone] = (st.styles[p.tone] or 0) + 1 end
			if p.depthList then
				for _, d in ipairs(p.depthList) do st.depths[d] = (st.depths[d] or 0) + 1 end
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
			for _, d in ipairs(p.depthList or {}) do
				if not Engine.DEPTHS[d] then
					Add("error", "badDepth", p.pack, id, nil, ("profondità '%s' sconosciuta"):format(tostring(d)))
				end
			end
			if p.when then
				for _, msg in ipairs(Engine.CheckConditions(p.when)) do
					Add("error", "badCondition", p.pack, id, nil, msg)
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

			-- testi
			local langs = pack and DeclaredLangs(pack) or {}
			local present = {}
			for lang in pairs(p.text) do present[lang] = true end
			local hasAny = false
			local sigs = {}   -- [lingua] = { [firma] = true }
			local langList = {}
			for lang in pairs(present) do table.insert(langList, lang) end
			table.sort(langList)
			for _, lang in ipairs(langList) do
				local list = p.text[lang]
				local okCount = 0
				sigs[lang] = {}
				for i, var in ipairs(list) do
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
						local info = Analyze(var.t, lang, { vocabBytes = VocabBytes(lang) })
						for _, prob in ipairs(info.problems) do
							Add("error", "badPlaceholder", p.pack, id, lang, ("variante %d: %s"):format(i, prob))
						end
						sigs[lang][Signature(info.tags)] = true
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
				for _, var in ipairs(list or {}) do if var.ok then usable = true; break end end
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
					for _, var in ipairs(list or {}) do if var.ok then usable = true; break end end
					if not usable then
						Add("error", "missingLang", packId, label, lang, ("manca il testo in '%s'"):format(lang))
					end
				end
				if e.when then
					for _, msg in ipairs(Engine.CheckConditions(e.when)) do
						Add("error", "badCondition", packId, label, nil, msg)
					end
				end
				local sigs = {}
				for lang, list in pairs(e.text) do
					sigs[lang] = {}
					for i, var in ipairs(list) do
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
	arg = (arg or ""):lower()
	local full = arg == "full" or arg == "tutto"
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
