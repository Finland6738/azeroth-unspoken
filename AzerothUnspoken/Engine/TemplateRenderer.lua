-- Azeroth Unspoken: segnaposto, genere, vocabolario e cornici
local ADDON, NS = ...
local Engine = NS.Engine
local Match = Engine.Match
local Score, WeightedPick, Remember, KeepFor = Engine.Score, Engine.WeightedPick, Engine.Remember, Engine.KeepFor

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
function Engine.HasData(text, ctx)
	for tag in text:gmatch("{([^{}]+)}") do
		local field = BUILTIN[tag]
		if field and (ctx[field] == nil or ctx[field] == "") then return false end
	end
	return true
end
