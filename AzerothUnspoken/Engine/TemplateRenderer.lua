-- Azeroth Unspoken: segnaposto, genere, vocabolario e cornici
local ADDON, NS = ...
local Engine = NS.Engine
local Score, WeightedPick, Remember, KeepFor = Engine.Score, Engine.WeightedPick, Engine.Remember, Engine.KeepFor

-- {player} {target} {spell} {zone} {subzone} {level} {class} {race} {faction} {relation} (S6b: l'etichetta del rapporto)
-- {other} {otherrole} {otherrace} {otherclass} {instance} {encounter} (S6c: interlocutore e luogo)
-- {landmark} (R3: il punto di riferimento)
-- {g:maschile|femminile} (genere del personaggio)   {og:maschile|femminile} (genere dell'interlocutore, S8/#41)
-- {line} (solo nelle cornici)   {nome_vocabolario}
-- segnaposto -> campo del contesto. Il validatore usa questa tabella per riconoscere i segnaposto ammessi.
local BUILTIN = {
	player = "player", target = "target", spell = "spell", zone = "zone",
	subzone = "subzone", level = "level", class = "classLocal", race = "raceLocal",
	faction = "factionLocal", targettype = "ctypeLocal", relation = "relationLabel",
	-- S6c: l'interlocutore (nome, ruolo, razza e classe localizzati) e il luogo (istanza, scontro con un boss)
	other = "otherName", otherrole = "otherRoleLocal", otherrace = "otherRaceLocal", otherclass = "otherClassLocal",
	instance = "instanceName", encounter = "encounterName",
	-- R3 (#94): il punto di riferimento in cui si trova il personaggio (Data/Landmarks.lua); senza, la frase non si compone
	landmark = "landmarkName",
}
Engine.PLACEHOLDERS = BUILTIN

-- Segnaposto che possono contenere testo scritto dall'utente (l'etichetta personale di un rapporto, ADR 0018 punto 6) e
-- voci che finiscono in chat pubblica (#45): quel testo resta nel narratore privato, dentro le voci `inner` e `npc`.
-- Il validatore rifiuta {relation} nelle altre; il motore non lo compone mai in una frase pubblica con un testo
-- personale (ctx.relationCustom), anche se un pacchetto esterno lo scrive.
Engine.USER_TEXT = { relation = "relationCustom" }
Engine.PUBLIC_SPEAKERS = { character = true, narrator = true }

-- Una voce di vocabolario con un tag rigido (topic:, req:, not:) che il profilo del Character Soul esclude non si
-- sceglie mai (#42): chi evita il sangue non sente «Sangue e tuono!» neanche dentro una frase che non ne parla.
-- Contano solo i tag che escludono (fattore 0): quelli morbidi non cambiano il peso del vocabolario.
local EMPTY = {}
local function VocabExcluded(v, ctx)
	if not NS.Traits or type(v.tags) ~= "table" or next(v.tags) == nil then return false end
	return NS.Traits.Evaluate(v.tags, ctx.soul or EMPTY) == 0
end

function Engine:Vocab(name, lang, ctx)
	local list = self.vocab[name]
	if not list then return nil end
	local items = {}
	for _, v in ipairs(list) do
		if Engine.AnyUsable(v.text[lang], ctx, "character", v.pack) and not NS.db.disabledPacks[v.pack] and Engine.SafeMatch(v.when, ctx)
			and not VocabExcluded(v, ctx) then
			table.insert(items, { e = v, w = Score(v, "vocab:" .. name, #list) })
		end
	end
	local it = WeightedPick(items, "vocab:" .. name)
	if not it then return nil end
	local text = self:RenderEntry(it.e, lang, ctx, nil, true)
	if text then Remember("vocab:" .. name, it.e.id, KeepFor(#items), it.e) end
	return text
end

-- restituisce nil se manca un dato richiesto: la frase allora non è adatta
function Engine:Render(text, lang, ctx, line, nested)
	local failed = false
	local out = text:gsub("{([^{}]+)}", function(tag)
		if failed then return "" end
		local m, f = tag:match("^g:([^|]*)|(.*)$")
		if m then return (ctx.sex == "female") and f or m end
		-- {og:maschile|femminile}: il genere dell'interlocutore (#41). Senza un sesso noto la variante non si compone.
		local om, of = tag:match("^og:([^|]*)|(.*)$")
		if om then
			if ctx.otherSex == "female" then return of end
			if ctx.otherSex == "male" then return om end
			failed = true
			return ""
		end
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
---@param text string
---@param ctx table
---@param public? boolean la frase è di una voce pubblica (narrator, character): i testi dell'utente non entrano
function Engine.HasData(text, ctx, public)
	if not text:find("{", 1, true) then return true end   -- nessun segnaposto: la via comune, senza pattern
	for tag in text:gmatch("{([^{}]+)}") do
		if public and Engine.USER_TEXT[tag] and ctx[Engine.USER_TEXT[tag]] then return false end
		if tag:match("^og:[^|]*|") and ctx.otherSex ~= "male" and ctx.otherSex ~= "female" then return false end
		local field = BUILTIN[tag]
		if field and (ctx[field] == nil or ctx[field] == "") then return false end
	end
	return true
end

-- una variante (stringa o tabella, #84) è utilizzabile: non vuota, di un pacchetto acceso, con i dati richiesti
local function Usable(v, ctx, public, owner)
	if type(v) == "string" then
		return not NS.db.disabledPacks[owner] and Engine.HasData(v, ctx, public)
	end
	return v.ok and not NS.db.disabledPacks[v.pack] and Engine.HasData(v.t, ctx, public)
end

---Indici delle varianti di una lista utilizzabili adesso: non vuote, di un pacchetto acceso, con i dati richiesti.
---@param list? AUVariantValue[]
---@param ctx table
---@param speaker? string voce della frase: nelle voci pubbliche non si compone un testo scritto dall'utente
---@param owner? string pacchetto della voce (le varianti in forma di stringa sono sue)
---@return integer[]
function Engine.UsableVariants(list, ctx, speaker, owner)
	local out = {}
	local public = Engine.PUBLIC_SPEAKERS[speaker] or false
	for i, v in ipairs(list or EMPTY) do
		if Usable(v, ctx, public, owner) then table.insert(out, i) end
	end
	return out
end

---C'è almeno una variante utilizzabile? Come #UsableVariants(...) > 0, senza creare l'elenco (Eligible, #83).
---@param list? AUVariantValue[]
---@param ctx table
---@param speaker? string
---@param owner? string
---@return boolean
function Engine.AnyUsable(list, ctx, speaker, owner)
	if not list then return false end
	local public = Engine.PUBLIC_SPEAKERS[speaker] or false
	for _, v in ipairs(list) do
		if Usable(v, ctx, public, owner) then return true end
	end
	return false
end

---Una variante a caso di una cornice o di una voce di vocabolario, composta; nil se nessuna si compone.
function Engine:RenderEntry(entry, lang, ctx, line, nested)
	local list = entry.text[lang]
	-- cornici e vocabolario entrano nelle frasi pubbliche: valgono le regole di una voce pubblica
	local idx = Engine.UsableVariants(list, ctx, "character", entry.pack)
	while #idx > 0 do
		local k = math.random(#idx)
		local text = self:Render(Engine.VariantText(list[idx[k]]), lang, ctx, line, nested)
		if text then return text end
		table.remove(idx, k)
	end
	return nil
end
