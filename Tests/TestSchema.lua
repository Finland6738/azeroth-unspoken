-- Test dello schema dati v2: registro delle regole separato dai testi, varianti, profondità,
-- conversione del formato vecchio ed estensioni dei pacchetti (eventi, condizioni, lingue, traduzioni)
local NS = ...
local Engine = NS.Engine

math.randomseed(12345)
NS.db.locale = "it"
NS.db.proseDepth = "literary"

local function Ctx(extra) return NS:BuildContext(extra) end

local function Count(t)
	local n = 0
	for _ in pairs(t) do n = n + 1 end
	return n
end

local function Pick(event, form, extra)
	return Engine:PickEntry(event, Ctx(extra), form or "say")
end

T.run("regola v2: campi, valori predefiniti e testi per lingua", function()
	NS:RegisterPack({
		id = "t_v2", name = "Prova v2",
		registry = {
			["t.v2.full"] = { event = { "t_ev_a", "t_ev_b" }, category = "combat", speaker = "inner",
				styles = { "intimate", "ancient" }, depth = { "natural", "literary" }, tags = { "forest", "calm" },
				weight = 3, cooldown = 90, conditions = { class = "MAGE", hpAbove = 0.5 } },
			["t.v2.min"] = { event = "battle", speaker = "narrator" },
			["t.v2.say"] = { event = "zone", speaker = "character" },
		},
		texts = {
			itIT = { ["t.v2.full"] = { "uno", "due" }, ["t.v2.min"] = "solo una stringa" },
			enUS = { ["t.v2.full"] = { "one", "two" }, ["t.v2.min"] = { "just a string" } },
		},
	})
	local p = Engine.byId["t.v2.full"]
	T.ok(p ~= nil, "frase registrata")
	T.eq(p.pack, "t_v2", "pacchetto")
	T.eq(#p.events, 2, "due eventi"); T.eq(p.events[2], "t_ev_b", "secondo evento")
	T.ok(Engine.byEvent["t_ev_a"][1] == p and Engine.byEvent["t_ev_b"][1] == p, "indice per evento")
	T.eq(p.category, "combat", "categoria"); T.eq(p.speaker, "inner", "voce")
	T.eq(p.form, "say", "la voce interiore non è un'emote")
	T.eq(p.styles[1], "intimate", "registro principale"); T.eq(p.styles[2], "ancient", "registro secondario")
	T.eq(Engine.Tone(p), "intimate", "il tono è il registro principale")
	T.ok(p.depth.natural and p.depth.literary and not p.depth.elevated, "profondità")
	T.ok(p.tags.forest and p.tags.calm, "tag")
	T.eq(p.weight, 3, "peso"); T.eq(p.cooldown, 90, "cooldown")
	T.eq(p.when.class, "MAGE", "condizioni"); T.eq(p.spec, 2, "specificità = numero di condizioni")
	T.eq(#p.text.it, 2, "due varianti in italiano"); T.eq(#p.text.en, 2, "due varianti in inglese")
	T.eq(Engine.VariantText(p.text.it[1]), "uno", "testo della variante"); T.ok(Engine.VariantOk(p.text.it[1]), "variante valida")
	T.eq(type(p.text.it[1]), "string", "una variante semplice resta una stringa (#84)")
	T.ok(not p.legacy, "non è del formato vecchio")

	local m = Engine.byId["t.v2.min"]
	T.eq(m.form, "emote", "il narratore è un'emote per impostazione predefinita")
	T.eq(m.category, "combat", "la categoria viene dall'evento")
	T.eq(m.weight, 1, "peso predefinito"); T.eq(m.spec, 0, "nessuna condizione")
	T.eq(Engine.VariantText(m.text.it[1]), "solo una stringa", "una stringa vale una variante")
	T.eq(Engine.VariantText(m.text.en[1]), "just a string", "elenco di una variante")
	T.eq(Engine.byId["t.v2.say"].form, "say", "il personaggio parla")
	T.eq(Engine.byId["t.v2.say"].category, "exploration", "categoria di zone")
	-- le lingue lunghe e brevi sono la stessa cosa
	T.eq(Engine.LangCode("itIT"), "it", "itIT -> it"); T.eq(Engine.LangCode("de"), "de", "de -> de")
	T.ok(Engine.LangCode("DE") == nil and Engine.LangCode("x") == nil and Engine.LangCode(5) == nil, "non sono lingue")
end)

T.run("formato vecchio convertito in caricamento", function()
	NS:RegisterPack({
		id = "t_legacy", name = "Prova vecchio",
		phrases = {
			{ id = "t.old.01", event = "t_old", tone = "eroico", weight = 2, cooldown = 30, when = { race = "Orc" },
				it = "Per l'Orda!", en = "For the Horde!" },
			{ id = "t.old.02", event = "t_old", form = "emote", tone = "sconosciuto", it = "ride", en = "laughs" },
			{ id = "t.old.03", event = "t_old", speaker = "npc", text = { it = "Benvenuto, viandante.", en = "Welcome, traveller." } },
			{ event = "t_old", it = "senza id", en = "no id" },
		},
	})
	local a = Engine.byId["t.old.01"]
	T.ok(a.legacy, "marcata come formato vecchio")
	T.eq(a.speaker, "character", "say -> personaggio"); T.eq(a.form, "say", "forma")
	T.eq(a.styles[1], "epic", "il tono eroico diventa il registro epic"); T.eq(Engine.Tone(a), "epic", "tono")
	T.eq(a.weight, 2, "peso"); T.eq(a.cooldown, 30, "cooldown"); T.eq(a.when.race, "Orc", "when resta valido")
	T.eq(Engine.VariantText(a.text.it[1]), "Per l'Orda!", "testo it"); T.eq(Engine.VariantText(a.text.en[1]), "For the Horde!", "testo en")
	T.eq(a.category, "general", "evento non dichiarato: categoria generica")
	local e = Engine.byId["t.old.02"]
	T.eq(e.speaker, "narrator", "emote -> narratore"); T.eq(e.styles[1], "sconosciuto", "un tono ignoto resta com'è")
	T.eq(Engine.byId["t.old.03"].speaker, "npc", "speaker esplicito"); T.eq(Engine.VariantText(Engine.byId["t.old.03"].text.en[1]), "Welcome, traveller.", "text = {}")
	T.ok(Engine.byId["t_legacy#1"] ~= nil, "id automatico")
	-- si seleziona come prima
	NS.db.locale = "it"
	local rec = Pick("t_old", "say")
	T.ok(rec ~= nil and rec.speaker ~= nil, "la frase convertita si può scegliere")
end)

T.run("più varianti: tutte escono e non si ripete l'ultima", function()
	NS:RegisterPack({
		id = "t_var", registry = { ["t.var.01"] = { event = "t_var", speaker = "character", styles = { "epic" } } },
		texts = { itIT = { ["t.var.01"] = { "alfa", "beta", "gamma" } } },
	})
	NS.db.locale = "it"
	local seen, prev, repeats = {}, nil, 0
	for _ = 1, 60 do
		local rec = Pick("t_var")
		T.ok(rec ~= nil, "una frase c'è sempre")
		seen[rec.text:lower()] = true
		T.ok(rec.variant ~= nil, "il record dice quale variante")
		if prev == rec.text then repeats = repeats + 1 end
		prev = rec.text
	end
	T.ok(seen.alfa and seen.beta and seen.gamma, "tutte le varianti escono")
	T.eq(repeats, 0, "mai la stessa variante due volte di fila")
	T.ok(NS.cdb.memory.variant["t.var.01"] ~= nil, "la variante usata si ricorda")
	-- la memoria si pota: via le frasi che non esistono più
	NS.cdb.memory.variant["t.fantasma"] = 2
	Engine:DecayMemory()
	T.ok(NS.cdb.memory.variant["t.fantasma"] == nil, "DecayMemory pota le frasi sparite")
	T.ok(NS.cdb.memory.variant["t.var.01"] ~= nil, "e tiene le altre")
	-- memorie salvate prima dello schema v2 non hanno la tabella delle varianti
	NS.cdb.memory.variant = nil
	T.ok(Pick("t_var") ~= nil, "memoria senza 'variant': nessun errore")
end)

T.run("varianti per profondità", function()
	NS:RegisterPack({
		id = "t_depth", registry = { ["t.depth.01"] = { event = "t_depth", speaker = "character", styles = { "epic" } },
			["t.depth.02"] = { event = "t_depth2", speaker = "character", styles = { "epic" } } },
		texts = { itIT = {
			["t.depth.01"] = {
				{ "semplice", depth = "natural" },
				{ text = "letteraria", depth = { "literary" } },
				{ "elevata", depth = "elevated" },
			},
			["t.depth.02"] = { { "solo elevata", depth = "elevated" }, "per tutti" },
		} },
	})
	NS.db.locale = "it"
	for depth, expected in pairs({ natural = "semplice", literary = "letteraria", elevated = "elevata" }) do
		NS.db.proseDepth = depth
		for _ = 1, 8 do T.eq(Pick("t_depth").text, expected:sub(1, 1):upper() .. expected:sub(2), "profondità " .. depth) end
	end
	-- una variante senza profondità vale per tutte; se nessuna combacia si usa comunque una variante (mai silenzio)
	NS.db.proseDepth = "natural"
	for _ = 1, 8 do T.eq(Pick("t_depth2").text, "Per tutti", "natural: la variante libera") end
	NS.db.proseDepth = "elevated"
	local seen = {}
	for _ = 1, 30 do seen[Pick("t_depth2").text] = true end
	T.ok(seen["Solo elevata"] and seen["Per tutti"], "elevated: combaciano entrambe")
	NS.db.proseDepth = "literary"
end)

T.run("fattore di stile sulla profondità", function()
	NS.db.proseDepth = "literary"
	NS:RegisterPack({
		id = "t_style", registry = {
			["t.style.nat"] = { event = "t_style", speaker = "character", depth = "natural" },
			["t.style.lit"] = { event = "t_style", speaker = "character", depth = { "literary", "elevated" } },
			["t.style.any"] = { event = "t_style", speaker = "character" },
		},
		texts = { itIT = { ["t.style.nat"] = "n", ["t.style.lit"] = "l", ["t.style.any"] = "a" } },
	})
	local nat, lit, any = Engine.byId["t.style.nat"], Engine.byId["t.style.lit"], Engine.byId["t.style.any"]
	local ctx = Ctx()
	T.eq(ctx.depth, "literary", "il contesto espone la profondità scelta")
	T.eq(ctx.intensity, NS.db.intensity, "e l'intensità")
	T.eq(Engine.StyleFactor(lit, ctx), 1, "frase della profondità scelta")
	T.eq(Engine.StyleFactor(any, ctx), 1, "frase senza profondità")
	T.eq(Engine.StyleFactor(nat, ctx), Engine.DEPTH_MISMATCH, "frase di un'altra profondità pesa meno")
	T.ok(Engine.DEPTH_MISMATCH > 0 and Engine.DEPTH_MISMATCH < 1, "ma non è esclusa")
	T.eq(Engine.StyleFactor(nat, {}), 1, "senza profondità nel contesto: neutro")
	local wn, wl = Engine.Score(nat, "t_style", 3, nil, ctx), Engine.Score(lit, "t_style", 3, nil, ctx)
	T.ok(math.abs(wn / wl - Engine.DEPTH_MISMATCH) < 1e-9, "il peso scende del fattore")
	NS.db.proseDepth = "natural"
	T.eq(Engine.StyleFactor(nat, Ctx()), 1, "cambiando profondità cambia il fattore")
	T.eq(Engine.StyleFactor(lit, Ctx()), Engine.DEPTH_MISMATCH, "...e l'altra scende")
	-- anche con frasi tutte di un'altra profondità c'è sempre una frase
	NS:RegisterPack({
		id = "t_style2", registry = { ["t.style2.01"] = { event = "t_style2", speaker = "character", depth = "elevated" } },
		texts = { itIT = { ["t.style2.01"] = "solo elevata" } },
	})
	T.ok(Pick("t_style2") ~= nil, "mai silenzio per via della profondità")
	NS.db.proseDepth = "literary"
end)

T.run("condizioni sulla profondità e sull'intensità", function()
	local Match = Engine.Match
	NS.db.proseDepth = "elevated"; NS.db.intensity = 80
	local ctx = Ctx()
	T.ok(Match({ depth = "elevated" }, ctx), "depth uguale")
	T.ok(Match({ depth = { "literary", "elevated" } }, ctx), "depth in elenco")
	T.ok(not Match({ depth = "natural" }, ctx), "depth diversa")
	T.ok(Match({ intensityMin = 70 }, ctx) and not Match({ intensityMin = 90 }, ctx), "intensityMin")
	T.ok(Match({ intensityMax = 80 }, ctx) and not Match({ intensityMax = 79 }, ctx), "intensityMax")
	NS.db.proseDepth = "literary"; NS.db.intensity = 50
end)

T.run("voce: i pensieri non diventano emote", function()
	NS:RegisterPack({
		id = "t_voice", registry = {
			["t.voice.inner"] = { event = "t_voice", speaker = "inner" },
			["t.voice.say"] = { event = "t_voice2", speaker = "character" },
			["t.voice.inner2"] = { event = "t_voice2", speaker = "inner" },
		},
		texts = { itIT = { ["t.voice.inner"] = "un pensiero", ["t.voice.say"] = "una frase", ["t.voice.inner2"] = "altro pensiero" } },
		frames = { { event = { "t_voice", "t_voice2" }, it = "dice: «{line}»" } },
	})
	NS.db.locale = "it"
	T.ok(Pick("t_voice", "emote") == nil, "un pensiero da solo non si racconta in una cornice")
	local rec = Pick("t_voice", "say")
	T.ok(rec and rec.speaker == "inner" and rec.form == "say", "ma esce come voce interiore")
	for _ = 1, 20 do
		local r = Pick("t_voice2", "emote")
		T.ok(r and r.speaker == "narrator" and r.text:find("una frase", 1, true), "in forma emote entra in cornice solo la voce pubblica")
	end
	T.eq(Pick("t_voice2", "say").form, "say", "forma say")
	T.ok(rec.category == "general" and rec.id == "t.voice.inner", "il record porta categoria e id")
end)

T.run("estensioni dei pacchetti: eventi, condizioni, registri, categorie", function()
	NS:RegisterPack({
		id = "t_ext",
		events = { t_fishing = { category = "t_hobby", chance = 33, cooldown = 120 } },
		styles = { "bardic" }, categories = { "t_cat" },
		conditions = {
			hasPet = "bool",
			petNamed = function(v, ctx) return ctx.petName ~= nil and ctx.petName:lower() == v:lower() end,
		},
		registry = {
			["t.ext.01"] = { event = "t_fishing", speaker = "character", styles = { "bardic" }, conditions = { hasPet = true } },
			["t.ext.02"] = { event = "t_fishing", speaker = "character", conditions = { petNamed = "Rex" } },
		},
		texts = { itIT = { ["t.ext.01"] = "col cane", ["t.ext.02"] = "ciao Rex" } },
	})
	T.eq(NS.DEFAULT_CHANCE.t_fishing, 33, "probabilità predefinita dell'evento")
	T.eq(NS.EVENT_COOLDOWN.t_fishing, 120, "pausa predefinita dell'evento")
	T.eq(Engine.byId["t.ext.01"].category, "t_hobby", "la categoria viene dall'evento dichiarato dal pacchetto")
	T.ok(Engine.CATEGORIES.t_hobby and Engine.CATEGORIES.t_cat, "categorie registrate")
	T.ok(Engine.STYLES.bardic, "registro registrato")
	T.ok(Engine.CONDITIONS.hasPet == "bool" and Engine.CONDITIONS.petNamed ~= nil, "condizioni note al motore")
	NS.db.locale = "it"
	T.ok(Pick("t_fishing") == nil, "senza animale e senza nome nessuna frase")
	T.eq(Pick("t_fishing", "say", { hasPet = true }).text, "Col cane", "condizione piana su un campo del contesto")
	T.eq(Pick("t_fishing", "say", { petName = "rex" }).text, "Ciao Rex", "condizione calcolata da funzione")
	-- NS:RegisterEvent diretto
	NS:RegisterEvent("t_direct", { category = "social", chance = 11 })
	T.eq(NS.DEFAULT_CHANCE.t_direct, 11, "RegisterEvent")
	T.eq(Engine.EventCategory("t_direct"), "social", "categoria")
	-- la prova di un utente (/au prob) prevale sul predefinito
	NS.db.chance.t_fishing = 5
	T.eq(NS:GetChance("t_fishing"), 5, "la scelta dell'utente prevale")
	NS.db.chance.t_fishing = nil
end)

T.run("lingue nuove, traduzioni e testi in più, anche prima della regola", function()
	NS:RegisterLanguage("de", { name = "Deutsch", ui = {} })
	-- traduzione di una frase del pacchetto di base: si aggiunge, l'italiano resta
	local p = Engine.byId["battle.gen.12"]
	local it0, en0 = #p.text.it, #p.text.en
	NS:RegisterPack({ id = "t_de", texts = { deDE = { ["battle.gen.12"] = "Keinen Schritt zurück. Keinen einzigen!" } } })
	T.eq(#p.text.de, 1, "tedesco aggiunto"); T.eq(Engine.VariantPack(p.text.de[1], p.pack), "t_de", "con il pacchetto che l'ha portato")
	T.ok(#p.text.it == it0 and #p.text.en == en0, "le altre lingue non cambiano")
	NS.db.locale = "de"
	local r = Pick("battle", "say", { target = nil })
	NS.db.locale = "it"
	T.eq(r and r.text, "Keinen Schritt zurück. Keinen einzigen!", "una lingua nuova si può scegliere")
	-- varianti in più per una frase esistente, senza duplicati
	NS:AddTexts("itIT", { ["battle.gen.12"] = { "Nessun passo indietro. Nessuno!", "Non un passo indietro." } }, "t_more")
	T.eq(#p.text.it, it0 + 1, "una variante nuova; quella identica non si duplica")
	T.eq(Engine.VariantText(p.text.it[it0 + 1]), "Non un passo indietro.", "testo aggiunto")
	T.eq(p.text.it[it0 + 1].pack, "t_more", "con il suo pacchetto")
	-- il vecchio nome dell'API funziona ancora
	NS:AddTranslations("en", { ["battle.gen.12"] = "Not one step back." })
	T.eq(#p.text.en, en0 + 1, "AddTranslations")
	-- testi che arrivano prima della regola
	NS:AddTexts("itIT", { ["t.late.01"] = { "arrivato prima" } }, "t_early")
	T.ok(Engine.pendingTexts["t.late.01"] ~= nil, "in attesa")
	NS:RegisterPack({ id = "t_late", registry = { ["t.late.01"] = { event = "t_late", speaker = "inner" } },
		texts = { itIT = { ["t.late.01"] = "e quello del pacchetto" } } })
	T.ok(Engine.pendingTexts["t.late.01"] == nil, "consegnati alla regola")
	T.eq(#Engine.byId["t.late.01"].text.it, 2, "entrambi i testi")
	-- un pacchetto spento non porta più i suoi testi
	NS.db.disabledPacks.t_more = true
	local seen = {}
	for _ = 1, 30 do seen[Pick("battle", "say", { target = nil }).text] = true end
	T.ok(not seen["Non un passo indietro."], "variante di un pacchetto spento ignorata")
	NS.db.disabledPacks.t_more = nil
	NS.db.disabledPacks.t_late = true
	T.ok(Pick("t_late") == nil, "regola di un pacchetto spento ignorata")
	NS.db.disabledPacks.t_late = nil
	T.ok(Pick("t_late") ~= nil, "riaccesa")
end)

T.run("cornici e vocabolario con più varianti", function()
	NS:RegisterPack({
		id = "t_fv", registry = { ["t.fv.01"] = { event = "t_fv", speaker = "character" } },
		texts = { itIT = { ["t.fv.01"] = "ecco {t_word}" } },
		frames = { { event = "t_fv", it = { "dice: «{line}»", "sussurra: «{line}»" } } },
		vocab = { t_word = { { it = { "una", "due" } }, { it = "tre" } } },
	})
	NS.db.locale = "it"
	local seenWord, seenFrame = {}, {}
	-- the generic frames of the base (#90) compete with the frame of the pack: more picks, and only its two variants
	for _ = 1, 300 do
		local r = Pick("t_fv", "emote")
		T.ok(r ~= nil, "frase incorniciata")
		local w = r.text:match("ecco ([a-z]+)")
		seenWord[w] = true
		local f = r.text:match("^([a-z]+):")
		if f then seenFrame[f] = true end
	end
	T.ok(seenWord.una and seenWord.due and seenWord.tre, "tutte le voci e varianti di vocabolario")
	T.ok(seenFrame.dice and seenFrame.sussurra, "tutte le varianti della cornice")
end)

T.run("problemi di caricamento registrati", function()
	local before = #Engine.loadIssues
	NS:RegisterPack({
		id = "t_dup",
		registry = {
			["battle.gen.01"] = { event = "battle", speaker = "character" },
			["t.dup.badspeaker"] = { event = "t_dup", speaker = "dio" },
			["t.dup.badweight"] = { event = "t_dup", speaker = "inner", weight = -3 },
			["t.dup.noevent"] = { speaker = "inner" },
		},
	})
	T.eq(Engine.byId["battle.gen.01"].pack, "base_combat", "il duplicato non sostituisce l'originale")
	local codes = {}
	for i = before + 1, #Engine.loadIssues do codes[Engine.loadIssues[i].code] = Engine.loadIssues[i].id end
	T.eq(codes.dupId, "battle.gen.01", "id duplicato")
	T.eq(codes.badSpeaker, "t.dup.badspeaker", "speaker non ammesso")
	T.eq(codes.badWeight, "t.dup.badweight", "peso non valido")
	T.eq(codes.noEvent, "t.dup.noevent", "evento mancante")
	T.eq(Engine.byId["t.dup.badspeaker"].speaker, "character", "voce di ripiego")
	T.eq(Engine.byId["t.dup.badweight"].weight, 1, "peso di ripiego")
	T.ok(Engine.loadIssues[1] ~= nil, "elenco consultabile")
end)

T.run("Stats conta le frasi con testo nella lingua", function()
	local total, byEvent = Engine:Stats("it")
	T.ok(total >= 444, "almeno le frasi del database")
	T.ok(byEvent.battle >= 83, "per evento")
	local totalDe = Engine:Stats("de")
	T.eq(totalDe, 1, "una sola frase tradotta in tedesco")
end)

T.run("il database di base ha le tre voci e tutte le profondità", function()
	local by = { narrator = 0, inner = 0, character = 0, npc = 0 }
	local base = 0
	for _, p in pairs(Engine.byId) do
		-- the base database: the base packs and the regional packs of the download (#101)
		if p.pack:sub(1, 5) == "base_" or Engine.packs[p.pack].region then
			base = base + 1
			by[p.speaker] = by[p.speaker] + 1
			T.ok(Engine.SPEAKERS[p.speaker], p.id .. ": voce valida")
			T.ok(#p.styles >= 1 and Engine.STYLES[p.styles[1]], p.id .. ": registro valido")
			T.ok(Engine.CATEGORIES[p.category], p.id .. ": categoria valida")
			if p.form == "emote" then T.eq(p.speaker, "narrator", p.id .. ": le emote sono del narratore") end
			if p.speaker == "inner" then T.eq(p.form, "say", p.id .. ": il pensiero non è un'emote") end
		end
	end
	T.eq(base, 1255, "intenzioni di base: 803 dei contenuti Alpha (S7) + 169 battute dei dialoghi ambientali (S8) + 33 battute degli archi (S9) + 4 duelli per rapporto (#105) + 21 righe di riconoscimento, sentimenti e alleati (#106, #109, #110) + 63 del mondo (R3: meteo, ore, luoghi, missioni, reputazione, locanda, volo) + 35 di emozioni e tratti forti (R4) + 31 dei monologhi, 8 monologhi e 23 parti (#99) + 10 delle situazioni composte (#100) + 5 richiami del primo incontro con un NPC (N2, #214) + 2 di una storia d'amore con un NPC (N3, #215) + 3 della parola data a un NPC (N4, #216) + 7 di favori e soprannomi (N5, #217) + 4 della reputazione locale (N6, #218) + 58 delle relazioni con gli NPC (N9, #221: 45 richiami, 13 aperture dei dialoghi) + 7 dell'ostilità (N1, #213: rancore, tradimento, ospitalità, ritorno a casa); la copertura è in TestContent.lua")
	T.ok(by.inner >= 80 and by.narrator >= 19 and by.character >= 250, "voci: " .. by.inner .. "/" .. by.narrator .. "/" .. by.character)
	T.ok(by.npc >= 12, "la voce NPC parla negli incontri con NPC dal ruolo noto (S7): " .. by.npc)
end)
