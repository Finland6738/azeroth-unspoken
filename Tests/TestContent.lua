-- Test dei contenuti della Narrative Alpha (step S7, GDD §9.2, §21): numero di intenzioni, varianti per le scene più
-- comuni, quattro voci, tre profondità per i momenti chiave, vertical slice A e C, tag del Character Soul (#27),
-- memoria (#29), relazioni (#34), lunghezze dei canali e alcune regole editoriali del §5.4 controllabili a macchina.
local NS = ...
local Engine = NS.Engine

-- intenzioni del database di base, con il loro primo evento
local BASE = {}
for id, p in pairs(Engine.byId) do
	if p.pack:sub(1, 5) == "base_" then BASE[id] = p end
end

local function Count(t)
	local n = 0
	for _ in pairs(t) do n = n + 1 end
	return n
end

local function HasEvent(p, ev)
	for _, e in ipairs(p.events) do if e == ev then return true end end
	return false
end

local function ByEvent(ev)
	local out = {}
	for id, p in pairs(BASE) do if HasEvent(p, ev) then out[id] = p end end
	return out
end

local function Variants(p, lang)
	local n = 0
	for _, v in ipairs(p.text[lang] or {}) do if v.ok then n = n + 1 end end
	return n
end

-- una variante è usabile a una profondità se non ne dichiara nessuna o la dichiara; la regola deve ammetterla
local function CoversDepth(p, depth, explicit)
	if p.depth and not p.depth[depth] then return false end
	for _, v in ipairs(p.text.it or {}) do
		if v.ok then
			if v.depth and v.depth[depth] then return true end
			if not explicit and not v.depth then return true end
		end
	end
	return false
end

-- tre profondità scritte apposta: una variante naturale, una elevata e una letteraria (o senza indicazione)
local function ThreeDepths(p)
	return CoversDepth(p, "natural", true) and CoversDepth(p, "elevated", true) and CoversDepth(p, "literary", false)
end

local function SoulTagged(p)
	for tag in pairs(p.tags or {}) do
		if type(tag) == "string" and tag:find(":") and not tag:find("^rel%.") and not tag:find("^other%.")
			and not tag:find("^place%.") then
			return true
		end
	end
	return false
end

local function When(p, key) return p.when and p.when[key] end

T.run("almeno 300 intenzioni bilingui, e ognuna ha IT ed EN", function()
	local n = Count(BASE)
	T.ok(n >= 300, "intenzioni di base: " .. n)
	for id, p in pairs(BASE) do
		T.ok(Variants(p, "it") >= 1 and Variants(p, "en") >= 1, id .. ": IT ed EN")
	end
end)

T.run("almeno due varianti per le scene più comuni", function()
	-- combattimento, arrivo in una zona, saluti, riposo, ritorno, morte e ritorno in vita (GDD §9.2)
	for _, ev in ipairs({ "battle", "victory", "lowhp", "zone", "greet", "farewell", "memory_return", "death", "rez",
		"levelup" }) do
		local list, short = ByEvent(ev), {}
		for id, p in pairs(list) do
			if Variants(p, "it") < 2 or Variants(p, "en") < 2 then table.insert(short, id) end
		end
		table.sort(short)
		T.ok(#short == 0, ev .. ": intenzioni con una sola variante: " .. table.concat(short, ", "))
		T.ok(Count(list) >= 8, ev .. ": abbastanza intenzioni (" .. Count(list) .. ")")
	end
	-- il riposo: pensieri con resting = true o luogo di riposo
	local rest = 0
	for id, p in pairs(BASE) do
		local restful = When(p, "resting") == true or (type(When(p, "place")) == "table" and p.when.place.rest == true)
		if restful then
			rest = rest + 1
			T.ok(Variants(p, "it") >= 2 and Variants(p, "en") >= 2, id .. ": riposo con due varianti")
		end
	end
	T.ok(rest >= 4, "intenzioni di riposo: " .. rest)
end)

T.run("le quattro voci, ciascuna dove ha senso", function()
	local by = { narrator = 0, inner = 0, character = 0, npc = 0 }
	for id, p in pairs(BASE) do
		by[p.speaker] = by[p.speaker] + 1
		if p.speaker == "npc" then
			-- la voce NPC esiste solo dove c'è già un uso: l'incontro con un NPC dal ruolo riconosciuto (npc_meet) e le
			-- battute dei dialoghi ambientali (eventi npcd_*, solo dentro la finestra di NPC Alive)
			T.ok(HasEvent(p, "npc_meet") or p.events[1]:find("^npcd_") ~= nil, id .. ": la voce NPC parla solo in npc_meet e nei dialoghi")
			local other = When(p, "other")
			T.ok(type(other) == "table" and (other.role ~= nil or other.any ~= nil), id .. ": l'NPC ha un ruolo dichiarato")
		end
	end
	T.ok(by.narrator >= 80, "narratore esterno: " .. by.narrator)
	T.ok(by.inner >= 150, "voce interiore: " .. by.inner)
	T.ok(by.character >= 300, "voce pubblica del personaggio: " .. by.character)
	T.ok(by.npc >= 12, "voce NPC: " .. by.npc)
	-- il narratore esterno è presente in ogni scena comune (#18)
	for _, ev in ipairs({ "battle", "victory", "lowhp", "zone", "muse", "greet", "farewell", "memory_return", "death",
		"rez", "levelup" }) do
		local n = 0
		for _, p in pairs(ByEvent(ev)) do if p.speaker == "narrator" then n = n + 1 end end
		T.ok(n >= 2, ev .. ": frasi del narratore esterno: " .. n)
	end
end)

T.run("tre profondità per i momenti chiave", function()
	local total = { natural = 0, literary = 0, elevated = 0 }
	for _, p in pairs(BASE) do
		for d in pairs(total) do if CoversDepth(p, d, false) then total[d] = total[d] + 1 end end
	end
	for d, n in pairs(total) do T.ok(n >= 250, "profondità " .. d .. ": " .. n .. " intenzioni") end
	for _, ev in ipairs({ "zone", "memory_return", "death", "rez", "levelup", "battle", "victory", "lowhp" }) do
		local n = 0
		for _, p in pairs(ByEvent(ev)) do if ThreeDepths(p) then n = n + 1 end end
		T.ok(n >= 3, ev .. ": intenzioni con le tre profondità scritte apposta: " .. n)
	end
end)

T.run("vertical slice A: arrivo in foresta", function()
	local voices, three, n = {}, 0, 0
	for id, p in pairs(ByEvent("zone")) do
		if When(p, "firstVisit") == true and When(p, "mood") == "forest" then
			n = n + 1
			voices[p.speaker] = true
			if ThreeDepths(p) then three = three + 1 end
		end
	end
	T.ok(n >= 8, "frasi di prima visita in foresta: " .. n)
	T.ok(voices.narrator and voices.inner and voices.character, "tre voci all'arrivo")
	T.ok(three >= 3, "con le tre profondità: " .. three)
	-- l'atmosfera di foresta senza memoria (il modulo può essere spento): più voci, ognuna con varianti
	local forest = 0
	for _, p in pairs(ByEvent("zone")) do
		if When(p, "mood") == "forest" and When(p, "firstVisit") == nil then forest = forest + 1 end
	end
	T.ok(forest >= 4, "atmosfera di foresta anche senza memoria: " .. forest)
	-- temperamenti del Character Soul all'arrivo
	local temper = {}
	for _, p in pairs(ByEvent("zone")) do
		if When(p, "firstVisit") == true and When(p, "mood") == "forest" then
			for tag in pairs(p.tags) do
				local v = type(tag) == "string" and tag:match("^temperament:(.+)$")
				if v then temper[v] = true end
			end
		end
	end
	T.ok(Count(temper) >= 4, "temperamenti diversi all'arrivo in foresta: " .. Count(temper))
end)

T.run("vertical slice C: ritorno nella foresta, solo con ricordi veri", function()
	local n, voices, three, bad, temper = 0, {}, 0, {}, {}
	for id, p in pairs(ByEvent("memory_return")) do
		T.ok(id:find("^mem%.ret%.") ~= nil, id .. ": nome delle frasi di ritorno")
		local mem = false
		for k in pairs(Engine.MEMORY_CONDITIONS) do if When(p, k) ~= nil then mem = true end end
		T.ok(mem, id .. ": dichiara una condizione di memoria")
		if When(p, "mood") == "forest" then
			n = n + 1
			voices[p.speaker] = true
			if ThreeDepths(p) then three = three + 1 end
			if When(p, "lastVisitBad") then bad[When(p, "lastVisitBad")] = true end
			for tag in pairs(p.tags) do
				local v = type(tag) == "string" and tag:match("^temperament:(.+)$")
				if v then temper[v] = true end
			end
		end
	end
	T.ok(n >= 10, "ritorni in foresta: " .. n)
	T.ok(voices.narrator and voices.inner and voices.character, "tre voci al ritorno")
	T.ok(three >= 3, "con le tre profondità: " .. three)
	T.ok(bad.death and bad.flight, "ritorno dopo una morte e dopo una fuga")
	T.ok(Count(temper) >= 4, "temperamenti diversi al ritorno: " .. Count(temper))
end)

T.run("#29: memoria per ogni atmosfera, istanze e flag", function()
	local moods = { "forest", "dark", "plains", "mountain", "snow", "jungle", "swamp", "desert", "fire", "plague", "ruin",
		"coast", "sacred", "deep", "city", "town" }
	for _, mood in ipairs(moods) do
		local first, back = 0, 0
		for _, p in pairs(BASE) do
			if When(p, "mood") == mood then
				if When(p, "firstVisit") == true then first = first + 1 end
				if HasEvent(p, "memory_return") then back = back + 1 end
			end
		end
		T.ok(first >= 1, mood .. ": prima visita")
		T.ok(back >= 1, mood .. ": ritorno")
	end
	local inst, flags = {}, {}
	for _, p in pairs(BASE) do
		local place = When(p, "place")
		if type(place) == "table" and place.instanceType and (When(p, "firstVisit") or HasEvent(p, "memory_return")) then
			inst[place.instanceType] = true
		end
		for _, f in ipairs(Engine.AsList(When(p, "remembered"))) do flags[f] = true end
	end
	T.ok(inst.party and inst.raid and inst.pvp, "dungeon, incursione e campo di battaglia ricordati")
	T.ok(flags.first_death and flags.first_capital and flags.level_60, "richiami dei flag narrativi")
	-- chi evita la morte non sente ricordi di morte
	for id, p in pairs(ByEvent("memory_return")) do
		if When(p, "lastVisitBad") == "death" or When(p, "remembered") == "first_death" then
			T.ok(p.tags["topic:death"], id .. ": porta topic:death")
		end
	end
end)

T.run("#27: le frasi di base portano i tag del Character Soul", function()
	local tagged, n, untagged = 0, 0, {}
	-- le battute dei dialoghi ambientali (S8) sono dell'NPC e non del personaggio: i tag del Character Soul non le riguardano;
	-- quelle degli archi (S9) seguono le scelte del giocatore (condizione arc.choice), non il carattere dedotto
	for id, p in pairs(BASE) do
		if p.pack ~= "base_dialogues" and p.pack ~= "base_arcs" then n = n + 1 end
		local scoped = false
		for tag in pairs(p.tags) do
			if type(tag) == "string" and (tag:find("^rel%.") or tag:find("^other%.") or tag:find("^place%.")) then scoped = true end
		end
		if SoulTagged(p) then tagged = tagged + 1 elseif not scoped then table.insert(untagged, id) end
	end
	T.ok(tagged / n >= 0.8, ("intenzioni con tag di affinità o di argomento: %d su %d"):format(tagged, n))
	-- argomenti delicati: ogni frase di morte porta topic:death; ogni preghiera topic:religion; ogni amore topic:romance
	for id, p in pairs(ByEvent("death")) do T.ok(p.tags["topic:death"], id .. ": topic:death") end
	for id, p in pairs(ByEvent("pray")) do T.ok(p.tags["topic:religion"], id .. ": topic:religion") end
	for id, p in pairs(BASE) do
		if p.tags["rel.relation:lover"] or When(p, "relation") == "lover" or When(p, "withRelation") == "lover" then
			T.ok(p.tags["topic:romance"], id .. ": topic:romance")
		end
	end
	-- un argomento da evitare non ammutolisce un evento comune: restano frasi senza quel tag
	for _, pair in ipairs({ { "rez", "topic:death" }, { "battle", "topic:blood" }, { "zone", "topic:undead" } }) do
		local free = 0
		for _, p in pairs(ByEvent(pair[1])) do if not p.tags[pair[2]] then free = free + 1 end end
		T.ok(free >= 3, pair[1] .. ": frasi che non toccano " .. pair[2] .. ": " .. free)
	end
	-- req: con parsimonia, così il profilo neutro sente ancora quasi tutto
	local req = 0
	for _, p in pairs(BASE) do
		for tag in pairs(p.tags) do if type(tag) == "string" and tag:find("^req:") then req = req + 1; break end end
	end
	T.ok(req <= n * 0.05, "frasi con un requisito rigido: " .. req)
end)

T.run("#34: relazioni per ogni etichetta, con il genere giusto", function()
	local labels = { "acquaintance", "indifferent", "friend", "comrade", "rival", "enemy", "disliked", "wary", "feared",
		"lover" }
	local function Covered(ev, field, label)
		for _, p in pairs(ByEvent(ev)) do
			if p.pack == "base_relations" then
				for _, v in ipairs(Engine.AsList(When(p, field))) do if v == label then return true end end
			end
		end
		return false
	end
	for _, ev in ipairs({ "greet", "farewell", "thanks", "heal" }) do
		for _, label in ipairs(labels) do T.ok(Covered(ev, "relation", label), ev .. ": " .. label) end
		local stranger = false
		for _, p in pairs(ByEvent(ev)) do if p.pack == "base_relations" and When(p, "isKnown") == false then stranger = true end end
		T.ok(stranger, ev .. ": sconosciuto")
	end
	for _, ev in ipairs({ "battle", "victory" }) do
		for _, label in ipairs({ "acquaintance", "friend", "comrade", "rival", "enemy", "disliked", "wary", "feared", "lover" }) do
			T.ok(Covered(ev, "withRelation", label), ev .. " al fianco di: " .. label)
		end
	end
	local players, gender, attraction = false, {}, false
	for id, p in pairs(BASE) do
		if p.pack == "base_relations" then
			T.ok(Variants(p, "it") >= 2 and Variants(p, "en") >= 2, id .. ": due varianti")
			if When(p, "relationKind") == "player" then players = true end
			if type(When(p, "other")) == "table" and p.when.other.sex then gender[p.when.other.sex] = true end
			if When(p, "attractionMin") then attraction = true end
		end
		-- {relation} in italiano è un nome maschile o neutro: si scrive tra virgolette, come un'etichetta
		for _, v in ipairs(p.text.it or {}) do
			if v.t:find("{relation}", 1, true) then
				T.ok(v.t:find("«{relation}»", 1, true) ~= nil, id .. ": {relation} tra virgolette: " .. v.t)
			end
		end
	end
	T.ok(players, "frasi per i giocatori in lista")
	T.ok(gender.male and gender.female, "frasi per il genere della persona")
	T.ok(attraction, "frasi per l'asse facoltativo dell'attrazione")
end)

T.run("§5.4: canali, lingue, ripetizioni, era di Forever", function()
	local seenIt, overused, total = {}, { ombra = 0, destino = 0, sangue = 0, antico = 0 }, 0
	local FORBIDDEN = { "Outland", "Terre Esterne", "Northrend", "Nordania", "Draenei", "Pandaria", "Pandaren",
		"blood elf", "elfi del sangue", "elfo del sangue", "death knight", "cavaliere della morte", "Shattrath",
		"Cataclysm", "Cataclisma" }
	for id, p in pairs(BASE) do
		local short = false
		local place = When(p, "place")
		if type(place) == "table" then
			for _, t in ipairs(Engine.AsList(place.instanceType)) do if t == "pvp" or t == "arena" then short = true end end
		end
		for _, lang in ipairs({ "it", "en" }) do
			for _, v in ipairs(p.text[lang] or {}) do
				if short and p.speaker ~= "inner" then
					T.ok(#v.t <= 80, id .. " " .. lang .. ": in campo di battaglia al massimo 80 byte: " .. v.t)
				end
				for _, word in ipairs(FORBIDDEN) do
					T.ok(not v.t:lower():find(word:lower(), 1, true), id .. ": fuori dall'era di Forever (" .. word .. ")")
				end
			end
		end
		local en = {}
		for _, v in ipairs(p.text.en or {}) do en[v.t] = true end
		for _, v in ipairs(p.text.it or {}) do
			total = total + 1
			T.ok(not seenIt[v.t], id .. ": testo IT ripetuto altrove: " .. v.t)
			seenIt[v.t] = true
			T.ok(not en[v.t] or #v.t < 12, id .. ": IT ed EN identici: " .. v.t)
			local low = v.t:lower()
			if low:find("ombr") then overused.ombra = overused.ombra + 1 end
			if low:find("destin") then overused.destino = overused.destino + 1 end
			if low:find("sangu") then overused.sangue = overused.sangue + 1 end
			if low:find("antic") then overused.antico = overused.antico + 1 end
		end
	end
	for word, n in pairs(overused) do
		T.ok(n <= total * 0.05, ("«%s» non domina il lessico: %d varianti su %d"):format(word, n, total))
	end
	local r = NS.Validator:Run()
	T.eq(#r.errors, 0, "il validatore non trova errori")
	T.eq(#r.warnings, 0, "né avvisi")
end)

T.run("#61: {og:} ha sempre una variante neutra; #66: l'inglese usa l'ortografia americana", function()
	-- senza il sesso dell'interlocutore una variante con {og:} si scarta: ogni frase ne tiene una senza
	local withOg = 0
	for id, p in pairs(BASE) do
		local og, neutral = false, false
		for _, v in ipairs(p.text.it or {}) do
			if v.t:find("{og:", 1, true) then og = true else neutral = true end
		end
		if og then
			withOg = withOg + 1
			T.ok(neutral, id .. ": con {og:} serve anche una variante neutra")
		end
	end
	T.ok(withOg >= 8, "frasi che si accordano con l'interlocutore: " .. withOg)
	local BRITISH = { "favour", "colour", "honour", "armour", "rumour", "humour", "harbour", "labour", "valour",
		"vigour", "splendour", "neighbour", "centre", "theatre", "sombre", "metre", "traveller", "travelled",
		"travelling", "sulphur", "grey", "practise", "recognise", "realise", "apologise", "organise", "sceptic",
		"defence", "offence", "jewellery", "plough", "mould", "whilst", "amongst", "learnt", "dreamt", "spelt" }
	for id, p in pairs(BASE) do
		for _, v in ipairs(p.text.en or {}) do
			local low = v.t:lower()
			for _, word in ipairs(BRITISH) do
				T.ok(not low:find(word, 1, true), id .. ": ortografia britannica (" .. word .. "): " .. v.t)
			end
		end
	end
end)
