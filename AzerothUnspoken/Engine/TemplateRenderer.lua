-- Azeroth Unspoken: segnaposto, genere, vocabolario e cornici
local ADDON, NS = ...
local Engine = NS.Engine
local Score, WeightedPick, Remember, KeepFor = Engine.Score, Engine.WeightedPick, Engine.Remember, Engine.KeepFor

-- {player} {target} {spell} {zone} {subzone} {level} {class} {race} {faction}
-- {g:maschile|femminile}   {line} (solo nelle cornici)   {nome_vocabolario}
-- segnaposto -> campo del contesto. Il validatore usa questa tabella per riconoscere i segnaposto ammessi.
local BUILTIN = {
	player = "player", target = "target", spell = "spell", zone = "zone",
	subzone = "subzone", level = "level", class = "classLocal", race = "raceLocal",
	faction = "factionLocal", targettype = "ctypeLocal",
}
Engine.PLACEHOLDERS = BUILTIN

function Engine:Vocab(name, lang, ctx)
	local list = self.vocab[name]
	if not list then return nil end
	local items = {}
	for _, v in ipairs(list) do
		if #Engine.UsableVariants(v.text[lang], ctx) > 0 and not NS.db.disabledPacks[v.pack] and Engine.SafeMatch(v.when, ctx) then
			table.insert(items, { e = v, w = Score(v, "vocab:" .. name, #list) })
		end
	end
	local it = WeightedPick(items, "vocab:" .. name)
	if not it then return nil end
	local text = self:RenderEntry(it.e, lang, ctx, nil, true)
	if text then Remember("vocab:" .. name, it.e.id, KeepFor(#items)) end
	return text
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
function Engine.HasData(text, ctx)
	for tag in text:gmatch("{([^{}]+)}") do
		local field = BUILTIN[tag]
		if field and (ctx[field] == nil or ctx[field] == "") then return false end
	end
	return true
end

---Indici delle varianti di una lista utilizzabili adesso: non vuote, di un pacchetto acceso, con i dati richiesti.
---@param list? AUVariant[]
---@param ctx table
---@return integer[]
function Engine.UsableVariants(list, ctx)
	local out = {}
	for i, v in ipairs(list or {}) do
		if v.ok and not NS.db.disabledPacks[v.pack] and Engine.HasData(v.t, ctx) then
			table.insert(out, i)
		end
	end
	return out
end

---Una variante a caso di una cornice o di una voce di vocabolario, composta; nil se nessuna si compone.
function Engine:RenderEntry(entry, lang, ctx, line, nested)
	local list = entry.text[lang]
	local idx = Engine.UsableVariants(list, ctx)
	while #idx > 0 do
		local k = math.random(#idx)
		local text = self:Render(list[idx[k]].t, lang, ctx, line, nested)
		if text then return text end
		table.remove(idx, k)
	end
	return nil
end
