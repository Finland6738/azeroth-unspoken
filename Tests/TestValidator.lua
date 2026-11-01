-- Test del validatore editoriale (Engine/Validator.lua): ogni controllo con un pacchetto sbagliato apposta
local NS = ...
local Engine, Validator = NS.Engine, NS.Validator

local n = 0
-- registra un pacchetto di prova e restituisce il risultato del validatore, ristretto a quel pacchetto
local function Validate(def)
	n = n + 1
	def.id = "v" .. n
	NS:RegisterPack(def)
	return Validator:Run({ packs = { def.id } }), def.id
end

-- ci sono problemi con quel codice (e, se indicato, per quell'id / lingua)?
local function Has(result, code, id, lang)
	for _, list in ipairs({ result.errors, result.warnings }) do
		for _, p in ipairs(list) do
			if p.code == code and (not id or p.id == id) and (not lang or p.lang == lang) then return p end
		end
	end
	return nil
end

local function IsError(result, code)
	for _, p in ipairs(result.errors) do if p.code == code then return true end end
	return false
end

local function Clean(result, msg)
	local all = {}
	for _, list in ipairs({ result.errors, result.warnings }) do
		for _, p in ipairs(list) do table.insert(all, p.code .. ":" .. tostring(p.id) .. ":" .. p.msg) end
	end
	T.ok(#result.errors == 0 and #result.warnings == 0, msg .. " (" .. table.concat(all, "; ") .. ")")
end

local function Good(extra)
	local e = { event = "battle", speaker = "character", styles = { "epic" } }
	for k, v in pairs(extra or {}) do e[k] = v end
	return e
end

T.run("un pacchetto corretto non dà problemi", function()
	local r = Validate({
		languages = { "itIT", "enUS" },
		registry = {
			["ok.1"] = Good({ conditions = { class = "MAGE", hpBelow = 0.3, hour = { 22, 4 }, ["not"] = { race = "Orc" },
				any = { { sex = "male" }, { faction = "Horde" } }, chance = 50, func = function() return true end } }),
			["ok.2"] = Good({ speaker = "inner", depth = { "natural", "elevated" }, tags = { "x" } }),
			["ok.3"] = Good({ speaker = "narrator" }),
		},
		texts = {
			itIT = { ["ok.1"] = { "Ciao {target}, {g:pronto|pronta}!", "Ciao!" }, ["ok.2"] = "pensiero «bello» à è ì ò ù",
				["ok.3"] = "alza lo sguardo." },
			enUS = { ["ok.1"] = { "Hi {target}, {g:ready|ready}!", "Hi!" }, ["ok.2"] = "a fine thought",
				["ok.3"] = "raises {g:his|her} eyes." },
		},
	})
	Clean(r, "pacchetto corretto")
	T.eq(r.stats.phrases, 3, "tre frasi"); T.eq(r.stats.variants, 8, "otto varianti")
	T.eq(r.stats.speakers.inner, 1, "statistiche per voce")
end)

T.run("id duplicati", function()
	local r = Validate({ registry = { ["battle.gen.01"] = Good(), ["dup.ok"] = Good() },
		texts = { itIT = { ["dup.ok"] = "a" } } })
	T.ok(Has(r, "dupId", "battle.gen.01"), "id già usato da un altro pacchetto")
	T.ok(IsError(r, "dupId"), "è un errore")
	-- lo stesso id due volte nello stesso pacchetto, nel formato vecchio
	local r2 = Validate({ phrases = { { id = "dup.old", event = "battle", it = "uno" }, { id = "dup.old", event = "battle", it = "due" } } })
	T.ok(Has(r2, "dupId", "dup.old"), "duplicato nel formato vecchio")
end)

T.run("lingue mancanti", function()
	local r = Validate({ languages = { "itIT", "enUS" }, registry = { ["l.1"] = Good(), ["l.2"] = Good() },
		texts = { itIT = { ["l.1"] = "a", ["l.2"] = "b" }, enUS = { ["l.1"] = "a" } } })
	T.ok(Has(r, "missingLang", "l.2", "en"), "l.2 senza inglese")
	T.ok(not Has(r, "missingLang", "l.1"), "l.1 completa")
	-- senza languages: valgono le lingue in cui il pacchetto stesso ha scritto dei testi
	local r2 = Validate({ registry = { ["l.3"] = Good(), ["l.4"] = Good() },
		texts = { itIT = { ["l.3"] = "a", ["l.4"] = "b" }, enUS = { ["l.3"] = "a" } } })
	T.ok(Has(r2, "missingLang", "l.4", "en"), "lingua dedotta dai testi del pacchetto")
	-- una traduzione portata da un altro pacchetto non obbliga il pacchetto di origine
	local r3 = Validate({ registry = { ["l.5"] = Good() }, texts = { itIT = { ["l.5"] = "a" } } })
	NS:RegisterPack({ id = "v_tr", texts = { enUS = { ["l.5"] = "a" } } })
	Clean(r3, "il pacchetto con solo l'italiano è valido")
	T.ok(not Has(Validator:Run({ packs = { "v_tr" } }), "orphanText"), "il pacchetto di traduzioni non ha frasi proprie")
	-- nessun testo
	local r4 = Validate({ registry = { ["l.6"] = Good() } })
	T.ok(Has(r4, "noText", "l.6"), "nessun testo in nessuna lingua")
	-- lingua dichiarata ma non registrata
	local r5 = Validate({ languages = { "xxXX" }, registry = { ["l.7"] = Good() }, texts = { xxXX = { ["l.7"] = "testo" } } })
	T.ok(Has(r5, "unregisteredLanguage", nil, "xx"), "lingua non registrata: avviso")
end)

T.run("segnaposto", function()
	local r = Validate({ languages = { "itIT", "enUS" },
		registry = { ["p.1"] = Good(), ["p.2"] = Good(), ["p.3"] = Good(), ["p.4"] = Good(), ["p.5"] = Good(), ["p.6"] = Good(),
			["p.7"] = Good(), ["p.8"] = Good() },
		texts = {
			itIT = { ["p.1"] = "Ciao {target}", ["p.2"] = { "Ciao {target}", "Ciao" }, ["p.3"] = "{foo} sconosciuto",
				["p.4"] = "{g:solo} malformato", ["p.5"] = "graffa {target aperta", ["p.6"] = "{line} fuori cornice",
				["p.7"] = "{zone} e {player}", ["p.8"] = "in {zone}" },
			enUS = { ["p.1"] = "Hi", ["p.2"] = { "Hi {target}", "Hi" }, ["p.3"] = "{foo} unknown",
				["p.4"] = "{g:alone} malformed", ["p.5"] = "brace {target open", ["p.6"] = "{line} outside",
				["p.7"] = "{player} and {zone}", ["p.8"] = "in {zone} and {player}" },
		} })
	T.ok(Has(r, "placeholderMismatch", "p.1"), "target solo in italiano")
	T.ok(not Has(r, "placeholderMismatch", "p.2"), "variante di ripiego senza segnaposto in entrambe: va bene")
	T.ok(Has(r, "badPlaceholder", "p.3", "it"), "segnaposto sconosciuto")
	T.ok(Has(r, "badPlaceholder", "p.4", "it"), "genere malformato")
	T.ok(Has(r, "badPlaceholder", "p.5", "it"), "graffa non chiusa")
	T.ok(Has(r, "badPlaceholder", "p.6", "it"), "{line} fuori da una cornice")
	T.ok(not Has(r, "placeholderMismatch", "p.7"), "stessi segnaposto in ordine diverso")
	T.ok(Has(r, "placeholderMismatch", "p.8"), "player in più in inglese")
	T.ok(Has(r, "placeholderMismatch", "p.8").msg:find("it", 1, true), "il messaggio dice le lingue")
	-- il vocabolario è un segnaposto valido, ma solo se esiste
	NS:RegisterPack({ id = "v_voc", vocab = { vword = { { it = "parola", en = "word" } } } })
	local r2 = Validate({ languages = { "itIT", "enUS" }, registry = { ["p.9"] = Good(), ["p.10"] = Good() },
		texts = { itIT = { ["p.9"] = "dico {vword}", ["p.10"] = "dico {nonesiste}" },
			enUS = { ["p.9"] = "I say {vword}", ["p.10"] = "I say {nonesiste}" } } })
	T.ok(not Has(r2, "badPlaceholder", "p.9"), "voce di vocabolario esistente")
	T.ok(Has(r2, "badPlaceholder", "p.10"), "voce di vocabolario inesistente")
end)

T.run("condizioni sconosciute o malformate", function()
	local r = Validate({ languages = { "itIT" },
		registry = {
			["c.1"] = Good({ conditions = { colour = "red" } }),
			["c.2"] = Good({ conditions = { hpBelow = "molto" } }),
			["c.3"] = Good({ conditions = { ["not"] = { fantasia = true } } }),
			["c.4"] = Good({ conditions = { sex = "robot" } }),
			["c.5"] = Good({ conditions = { hour = { 22 } } }),
			["c.6"] = Good({ conditions = { any = { { class = "MAGE" }, { inesistente = 1 } } } }),
			["c.7"] = Good({ conditions = { combat = "yes" } }),
			["c.8"] = Good({ conditions = { levelMin = 10, mood = "forest", time = { "night", "dusk" } } }),
			["c.9"] = Good({ conditions = { time = "tramonto" } }),
			["c.10"] = Good({ conditions = { mood = "nuvoloso" } }),
			["c.11"] = Good({ conditions = { chance = 150 } }),
			["c.12"] = Good({ conditions = { func = "non una funzione" } }),
		},
		texts = { itIT = { ["c.1"] = "a", ["c.2"] = "a", ["c.3"] = "a", ["c.4"] = "a", ["c.5"] = "a", ["c.6"] = "a",
			["c.7"] = "a", ["c.8"] = "a", ["c.9"] = "a", ["c.10"] = "a", ["c.11"] = "a", ["c.12"] = "a" } } })
	for _, id in ipairs({ "c.1", "c.2", "c.3", "c.4", "c.5", "c.6", "c.7", "c.9", "c.10", "c.11", "c.12" }) do
		T.ok(Has(r, "badCondition", id), id .. ": condizione sbagliata segnalata")
	end
	T.ok(not Has(r, "badCondition", "c.8"), "c.8: condizioni valide")
	local p = Has(r, "badCondition", "c.3")
	T.ok(p and p.msg:find("fantasia", 1, true), "il messaggio nomina la condizione dentro 'not'")
	T.ok(Has(r, "badCondition", "c.6").msg:find("inesistente", 1, true), "e dentro 'any'")
end)

T.run("varianti vuote", function()
	local r = Validate({ languages = { "itIT", "enUS" },
		registry = { ["e.1"] = Good(), ["e.2"] = Good(), ["e.3"] = Good() },
		texts = {
			itIT = { ["e.1"] = { "buona", "" }, ["e.2"] = { "   \t " }, ["e.3"] = { "ok", 42 } },
			enUS = { ["e.1"] = "good", ["e.2"] = "x", ["e.3"] = "ok" },
		} })
	T.ok(Has(r, "emptyVariant", "e.1", "it"), "variante vuota")
	T.ok(Has(r, "emptyVariant", "e.2", "it"), "variante di soli spazi")
	T.ok(Has(r, "emptyLang", "e.2", "it"), "tutte vuote")
	T.ok(Has(r, "missingLang", "e.2", "it"), "e quindi la lingua manca")
	T.ok(Has(r, "emptyVariant", "e.3", "it") and Has(r, "emptyVariant", "e.3", "it").msg:find("number", 1, true), "variante non stringa")
	-- la variante vuota non viene mai scelta
	NS.db.locale = "it"
	for _ = 1, 20 do
		local rec = Engine:PickEntry("battle", NS:BuildContext(), "say")
		T.ok(rec == nil or rec.text ~= "", "nessuna frase vuota")
	end
end)

T.run("lunghezza massima per canale", function()
	local function Bytes(s) return #s end
	local r = Validate({ languages = { "itIT" },
		registry = {
			["n.ok"] = Good(), ["n.limit"] = Good(), ["n.over"] = Good(), ["n.bytes"] = Good(),
			["n.expand"] = Good(), ["n.inner"] = Good({ speaker = "inner" }), ["n.emote"] = Good({ speaker = "narrator" }),
			["n.inner.ok"] = Good({ speaker = "inner" }),
		},
		texts = { itIT = {
			["n.ok"] = string.rep("a", 100),
			["n.limit"] = string.rep("a", 255),
			["n.over"] = string.rep("a", 256),
			["n.bytes"] = string.rep("è", 130),                       -- 130 caratteri, 260 byte
			["n.expand"] = string.rep("a", 230) .. " {target}",         -- 238 + il nome del bersaglio più lungo
			["n.inner"] = string.rep("a", 450),
			["n.emote"] = string.rep("a", 300),
			["n.inner.ok"] = string.rep("a", 300),
		} } })
	T.eq(Bytes(string.rep("è", 130)), 260, "sanity: byte, non caratteri")
	T.ok(not Has(r, "tooLong", "n.ok"), "100 byte: va bene")
	T.ok(not Has(r, "tooLong", "n.limit"), "255 byte: al limite, va bene")
	T.ok(IsError(r, "tooLong") and Has(r, "tooLong", "n.over"), "256 byte: troppo lunga")
	T.ok(Has(r, "tooLong", "n.bytes"), "conta i byte, non i caratteri")
	T.ok(Has(r, "tooLong", "n.expand"), "conta i segnaposto al caso peggiore")
	T.ok(Has(r, "tooLong", "n.emote"), "anche l'emote ha il limite")
	local inner = Has(r, "tooLong", "n.inner")
	T.ok(inner and inner.level == "warning", "il pensiero privato è solo un avviso, oltre i 400 byte")
	T.ok(not Has(r, "tooLong", "n.inner.ok"), "300 byte in privato: va bene")
	T.eq(Validator.LIMITS.SAY, 255, "limite di /say")
	-- parlata dentro la cornice più lunga: avviso
	NS:RegisterPack({ id = "v_frame", frames = { { event = "t_long", it = string.rep("c", 80) .. " «{line}»" } } })
	local r2 = Validate({ languages = { "itIT" }, registry = { ["n.framed"] = Good({ event = "t_long" }) },
		texts = { itIT = { ["n.framed"] = string.rep("a", 200) } } })
	NS:RegisterEvent("t_long")
	local r3 = Validator:Run({ packs = { "v" .. n } })
	T.ok(Has(r3, "tooLongFramed", "n.framed"), "con la cornice supera il limite dell'emote")
	T.ok(not Has(r3, "tooLong", "n.framed"), "ma da sola va bene")
end)

T.run("UTF-8", function()
	local ok = Engine.IsValidUTF8
	T.ok(ok("abc àèìòù « » € 😀"), "testo valido")
	T.ok(ok("\226\130\172"), "euro a tre byte")
	T.ok(not ok("abc\255"), "byte 0xFF")
	T.ok(not ok("\192\128"), "sequenza sovrabbondante")
	T.ok(not ok("\226\130"), "sequenza troncata")
	T.ok(not ok("\237\160\128"), "surrogato")
	T.ok(not ok("\244\144\128\128"), "oltre U+10FFFF")
	T.ok(not ok("a\128b"), "continuazione isolata")
	local good, why = ok("x\239\191\189y")
	T.ok(not good and why:find("FFFD", 1, true), "carattere di sostituzione")
	T.ok(not ok("a\1b") and not ok("a\127b"), "caratteri di controllo")
	T.ok(ok("a\nb\tc"), "a capo e tabulazione sono ammessi")
	local r = Validate({ languages = { "itIT" }, registry = { ["u.1"] = Good(), ["u.2"] = Good(), ["u.3"] = Good() },
		texts = { itIT = { ["u.1"] = "bad \255 byte", ["u.2"] = "corrotto \239\191\189", ["u.3"] = "è tutto à posto" } } })
	T.ok(Has(r, "badUTF8", "u.1"), "byte non valido nei testi")
	T.ok(Has(r, "badUTF8", "u.2"), "U+FFFD nei testi")
	T.ok(not Has(r, "badUTF8", "u.3"), "accenti validi")
end)

T.run("regola: voce, forma, registro, profondità, evento", function()
	local r = Validate({ languages = { "itIT" },
		registry = {
			["r.badspeaker"] = Good({ speaker = "dio" }),
			["r.nospeaker"] = { event = "battle", styles = { "epic" } },
			["r.innermote"] = Good({ speaker = "inner", form = "emote" }),
			["r.badform"] = Good({ form = "shout" }),
			["r.badstyle"] = Good({ styles = { "sbilenco" } }),
			["r.nostyle"] = { event = "battle", speaker = "character" },
			["r.baddepth"] = Good({ depth = { "natural", "profondo" } }),
			["r.badevent"] = Good({ event = "evento_non_dichiarato" }),
			["r.badcat"] = Good({ category = "mistero" }),
			["r.badweight"] = Good({ weight = 0 }),
			["r.badcd"] = Good({ cooldown = -5 }),
			["r.upper"] = Good({ speaker = "narrator" }),
			["r.quote"] = Good({ speaker = "narrator" }),
			["r.fine"] = Good({ speaker = "narrator" }),
		},
		texts = { itIT = {
			["r.badspeaker"] = "a", ["r.nospeaker"] = "a", ["r.innermote"] = "a", ["r.badform"] = "a", ["r.badstyle"] = "a",
			["r.nostyle"] = "a", ["r.baddepth"] = "a", ["r.badevent"] = "a", ["r.badcat"] = "a", ["r.badweight"] = "a",
			["r.badcd"] = "a", ["r.upper"] = "Alza lo sguardo.", ["r.quote"] = "«dice» qualcosa", ["r.fine"] = "alza lo sguardo.",
		} } })
	T.ok(IsError(r, "badSpeaker") and Has(r, "badSpeaker", "r.badspeaker"), "speaker non ammesso: errore")
	T.eq(Engine.byId["r.badspeaker"].speaker, "character", "e il motore ripiega su una voce valida")
	local ns = Has(r, "noSpeaker", "r.nospeaker")
	T.ok(ns and ns.level == "warning", "speaker assente: avviso")
	T.ok(Has(r, "innerEmote", "r.innermote"), "voce interiore in emote")
	T.ok(Has(r, "badForm", "r.badform"), "forma sconosciuta")
	local st = Has(r, "unknownStyle", "r.badstyle")
	T.ok(st and st.level == "warning", "registro sconosciuto: avviso")
	T.ok(Has(r, "noStyle", "r.nostyle"), "registro assente (formato v2)")
	T.ok(Has(r, "badDepth", "r.baddepth"), "profondità sconosciuta")
	T.ok(Has(r, "unknownEvent", "r.badevent"), "evento non dichiarato")
	T.ok(Has(r, "unknownCategory", "r.badcat"), "categoria sconosciuta")
	T.ok(Has(r, "badWeight", "r.badweight"), "peso non valido")
	T.ok(Has(r, "badCooldown", "r.badcd"), "cooldown negativo")
	T.ok(Has(r, "emoteCase", "r.upper"), "emote in maiuscolo")
	T.ok(Has(r, "emoteCase", "r.quote"), "emote che inizia con le virgolette")
	T.ok(not Has(r, "emoteCase", "r.fine"), "emote corretta")
	-- un evento di un tipo di incantesimo e uno dichiarato dal pacchetto sono noti
	NS:RegisterSpellKeywords({ kind = { vspellkind = { "vspellkind" } } })
	local r2 = Validate({ languages = { "itIT" }, events = { v_dichiarato = { category = "social" } },
		registry = { ["r.k1"] = Good({ event = "vspellkind" }), ["r.k2"] = Good({ event = "v_dichiarato" }) },
		texts = { itIT = { ["r.k1"] = "a", ["r.k2"] = "a" } } })
	Clean(r2, "eventi di tipo incantesimo e dichiarati")
end)

T.run("cornici e vocabolario", function()
	local r = Validate({ languages = { "itIT", "enUS" },
		frames = {
			{ id = "f.ok", event = "battle", it = "dice: «{line}»", en = "says \"{line}\"" },
			{ id = "f.noline", event = "battle", it = "tace.", en = "is silent." },
			{ id = "f.missing", event = "battle", it = "dice: «{line}»" },
			{ id = "f.unknown", event = "evento_strano", it = "{line}", en = "{line}" },
			{ id = "f.badcond", event = "battle", when = { colore = 1 }, it = "{line}", en = "{line}" },
		},
		vocab = { vtest = {
			{ id = "v.ok", it = "una parola", en = "a word" },
			{ id = "v.line", it = "con {line}", en = "with {line}" },
			{ id = "v.nested", it = "dentro {vtest}", en = "inside {vtest}" },
			{ id = "v.missing", it = "solo italiano" },
			{ id = "v.empty", it = "", en = "x" },
		} } })
	T.ok(not Has(r, nil, "f.ok") and not Has(r, "frameNoLine", "f.ok"), "cornice corretta")
	T.ok(Has(r, "frameNoLine", "f.noline"), "cornice senza {line}")
	T.ok(Has(r, "missingLang", "f.missing", "en"), "cornice senza inglese")
	T.ok(Has(r, "unknownEvent", "f.unknown"), "cornice per un evento ignoto")
	T.ok(Has(r, "badCondition", "f.badcond"), "condizione sbagliata in una cornice")
	T.ok(Has(r, "badPlaceholder", "v.line"), "{line} dentro il vocabolario")
	T.ok(Has(r, "badPlaceholder", "v.nested"), "vocabolario dentro il vocabolario")
	T.ok(Has(r, "missingLang", "v.missing", "en"), "voce senza inglese")
	T.ok(Has(r, "emptyVariant", "v.empty", "it"), "voce vuota")
	T.ok(not Has(r, "badPlaceholder", "v.ok"), "voce corretta")
end)

-- #45: un testo scritto dall'utente (l'etichetta personale di un rapporto, {relation}) resta nelle voci private
T.run("testo dell'utente: solo nelle voci private", function()
	local r = Validate({ languages = { "itIT", "enUS" },
		registry = {
			["u.say"] = Good({ speaker = "character" }), ["u.emote"] = Good({ speaker = "narrator", form = "emote" }),
			["u.inner"] = Good({ speaker = "inner" }), ["u.npc"] = Good({ speaker = "npc" }),
		},
		texts = {
			itIT = { ["u.say"] = "Sul diario c'è «{relation}».", ["u.emote"] = "ripensa a «{relation}».",
				["u.inner"] = "Sul diario c'è «{relation}».", ["u.npc"] = "Sul diario c'è «{relation}»." },
			enUS = { ["u.say"] = "The diary says \"{relation}\".", ["u.emote"] = "thinks of \"{relation}\".",
				["u.inner"] = "The diary says \"{relation}\".", ["u.npc"] = "The diary says \"{relation}\"." },
		},
		frames = { { id = "u.frame", event = "battle", it = "dice di «{relation}»: «{line}»", en = "says of {relation}: \"{line}\"" } },
		vocab = { utest = { { id = "u.voc", it = "il {relation}", en = "the {relation}" } } } })
	T.ok(Has(r, "userTextPublic", "u.say", "it") and Has(r, "userTextPublic", "u.say", "en"), "voce character: rifiutata")
	T.ok(Has(r, "userTextPublic", "u.emote"), "voce narrator: rifiutata")
	T.ok(not Has(r, "userTextPublic", "u.inner") and not Has(r, "userTextPublic", "u.npc"), "voci private: ammesse")
	T.ok(Has(r, "userTextPublic", "u.frame"), "una cornice entra nelle frasi pubbliche: rifiutata")
	T.ok(Has(r, "userTextPublic", "u.voc"), "anche il vocabolario")
	T.ok(IsError(r, "userTextPublic"), "è un errore")
	-- il database di base non ne ha nessuno
	local packs = {}
	for _, id in ipairs(Engine.packOrder) do
		if id:sub(1, 5) == "base_" or Engine.packs[id].region then table.insert(packs, id) end
	end
	T.ok(not Has(Validator:Run({ packs = packs }), "userTextPublic"), "nessuna frase di base lo viola")
	-- ogni segnaposto che può contenere un testo dell'utente è un segnaposto vero
	for tag in pairs(Engine.USER_TEXT) do T.ok(Engine.PLACEHOLDERS[tag], "{" .. tag .. "} esiste") end
end)

T.run("testi senza regola e perimetro del controllo", function()
	NS:AddTexts("itIT", { ["orfano.1"] = "senza regola" }, "v_orfano")
	local full = Validator:Run()
	T.ok(Has(full, "orphanText", "orfano.1"), "testo per una frase che non esiste")
	local scoped = Validator:Run({ packs = { "base_combat" } })
	T.ok(not Has(scoped, "orphanText"), "la prova su un solo pacchetto non guarda gli orfani")
	T.eq(scoped.stats.packs, 1, "un solo pacchetto"); T.eq(scoped.stats.phrases, 139, "le 139 frasi di combattimento")
	-- gli errori di un pacchetto non compaiono nel controllo di un altro
	local r = Validate({ registry = { ["s.1"] = Good() } })
	T.ok(Has(r, "noText", "s.1"), "il pacchetto con l'errore lo vede")
	T.ok(not Has(Validator:Run({ packs = { "base_combat" } }), "noText", "s.1"), "gli altri no")
	Engine.pendingTexts["orfano.1"] = nil
end)

T.run("il database di base non ha né errori né avvisi", function()
	local packs = {}
	for _, id in ipairs(Engine.packOrder) do
		if id:sub(1, 5) == "base_" or Engine.packs[id].region then table.insert(packs, id) end
	end
	T.eq(#packs, 21, "diciannove pacchetti di base (quattordici di frasi, cornici, vocabolario, temi e regia #90, il mondo di R3, le emozioni di R4, le situazioni composte #100 e i monologhi #99) e due regionali (#101)")
	local r = Validator:Run({ packs = packs })
	Clean(r, "database di base")
	-- the 8 monologues (#99) have no texts of their own: their 23 parts have two variants each
	T.eq(r.stats.phrases, 1190, "1190 frasi"); T.ok(r.stats.variants >= 4 * (1190 - 8), "almeno due varianti IT e due EN per frase")
end)

T.run("/au validate", function()
	SENT = {}
	local cmd = SlashCmdList.AZEROTHUNSPOKEN
	cmd("validate base_combat")
	local out = table.concat(SENT, "\n")
	T.ok(out:find("Validatore: 139 frasi in 1 pacchetti", 1, true), "riepilogo: " .. out)
	T.ok(out:find("0 errori, 0 avvisi", 1, true), "senza problemi")
	T.ok(out:find("Nessun problema trovato.", 1, true), "messaggio finale")
	SENT = {}
	cmd("validate pacchetto_che_non_esiste")
	T.ok(table.concat(SENT, "\n"):find("pacchetto sconosciuto", 1, true), "pacchetto sconosciuto")
	-- con problemi: mostra i primi e il resto
	NS:RegisterPack({ id = "v_bad", registry = (function()
		local reg = {}
		for i = 1, 20 do reg["bad." .. i] = Good() end
		return reg
	end)() })
	SENT = {}
	cmd("validate v_bad")
	out = table.concat(SENT, "\n")
	T.ok(out:find("20 errori", 1, true), "venti errori")
	T.ok(out:find("noText", 1, true), "mostra il codice")
	T.ok(out:find("altri 8", 1, true), "ne mostra 12 e riassume gli altri")
	SENT = {}
	cmd("validate full")
	T.ok(not table.concat(SENT, "\n"):find("altri", 1, true), "con 'full' li mostra tutti")
	NS.db.locale = "en"
	SENT = {}
	cmd("validate base_life")
	T.ok(table.concat(SENT, "\n"):find("Validator: 63 lines", 1, true), "testi nella lingua scelta")
	NS.db.locale = "it"
end)

T.run("#19: i limiti vengono da Config.CHAT_LIMITS, la stessa tabella del Chat Gateway", function()
	local Config = NS.Config
	T.ok(Validator.LIMITS == Config.CHAT_LIMITS, "stessa tabella")
	local saved = Config.CHAT_LIMITS.SAY
	local texts = { itIT = { ["lim.a"] = string.rep("a", 100), ["lim.b"] = string.rep("a", 100) } }
	local r = Validate({ languages = { "itIT" }, registry = { ["lim.a"] = Good() }, texts = texts })
	T.ok(not Has(r, "tooLong", "lim.a"), "con 255 byte la frase da 100 va bene")
	Config.CHAT_LIMITS.SAY = 50
	r = Validate({ languages = { "itIT" }, registry = { ["lim.b"] = Good() }, texts = texts })
	T.ok(Has(r, "tooLong", "lim.b"), "con il limite di /say a 50 la stessa frase è troppo lunga")
	Config.CHAT_LIMITS.SAY = saved
end)

T.run("#23: registri sbagliati nelle cornici, in RegisterEventStyles e in RegisterMoodStyles", function()
	local r = Validate({ languages = { "itIT" }, registry = { ["fr.a"] = Good() }, texts = { itIT = { ["fr.a"] = "a" } },
		frames = { { id = "fr.cornice", event = "battle", styles = { "epic", "ceremonal" },
			text = { itIT = "Dice: «{line}»" } },
			{ id = "fr.buona", event = "battle", styles = { "epic" }, text = { itIT = "Dice: «{line}»" } } } })
	local w = Has(r, "unknownStyle", "fr.cornice")
	T.ok(w and w.level == "warning" and w.msg:find("ceremonal", 1, true), "cornice con un registro sconosciuto: avviso")
	T.ok(not Has(r, "unknownStyle", "fr.buona"), "cornice con un registro valido: nessun avviso")

	local SR = Engine.StyleResolver
	local savedEvent, savedMood = SR.EVENT_STYLES.vtest, SR.MOOD_STYLES.vmood
	NS:RegisterEventStyles("vtest", { "epic", "tragik" })
	NS:RegisterMoodStyles({ vmood = { "ancient", "anciant" } })
	local all = Validator:Run()
	local e = Has(all, "unknownStyle", "event:vtest")
	T.ok(e and e.msg:find("tragik", 1, true), "RegisterEventStyles con un registro sconosciuto")
	local m = Has(all, "unknownStyle", "mood:vmood")
	T.ok(m and m.msg:find("anciant", 1, true), "RegisterMoodStyles con un registro sconosciuto")
	T.ok(not Has(Validator:Run({ packs = { "v1" } }), "unknownStyle", "event:vtest"), "ristretto a un pacchetto: non si controllano")
	NS:RegisterStyle("tragik")
	T.ok(not Has(Validator:Run(), "unknownStyle", "event:vtest"), "un registro dichiarato con RegisterStyle è valido")
	Engine.STYLES.tragik = nil
	SR.EVENT_STYLES.vtest, SR.MOOD_STYLES.vmood = savedEvent, savedMood
	T.ok(not Has(Validator:Run(), "unknownStyle", "mood:vmood"), "ripulito")
end)

T.run("#70, #71: un accordo al maschile fuori da {g:} e {og:} in italiano si segnala", function()
	local U = Validator.UnmarkedAgreement
	for _, text in ipairs({ "Sono stanco.", "Ora sono abbastanza pronto per guai più grossi.", "Torna da dove sei venuto, e non voltarti.",
		"Con te posso essere franco.", "Mi sento così stanco, non so.", "Non sono più stato lo stesso." }) do
		T.ok(U(text, "it") ~= nil, "segnalato: " .. text)
	end
	T.eq(U("Sono stanco, davvero.", "it"), "sono stanco", "la forma trovata")
	for _, text in ipairs({ "Sono {g:stanco|stanca}.", "Con te posso parlare chiaro.", "Sono io.", "Sono solo di passaggio.",
		"Il tuo coraggio è stato notato.", "Sei forte.", "Sono. Stanco.", "Non sono {og:stato|stata} io.",
		"Lo sei già, {og:stanco|stanca}.", "Chi è stato qui non torna." }) do
		T.ok(U(text, "it") == nil, "non segnalato: " .. text)
	end
	T.ok(U("I am tired and I was alone, a man.", "en") == nil, "l'inglese non si controlla")

	local r = Validate({
		languages = { "itIT", "enUS" },
		registry = { ["ag.bad"] = Good(), ["ag.good"] = Good() },
		texts = {
			itIT = { ["ag.bad"] = { "Una frase pulita.", "Sono stanco di aspettare." }, ["ag.good"] = { "Sono {g:stanco|stanca} di aspettare." } },
			enUS = { ["ag.bad"] = "I am tired of waiting.", ["ag.good"] = "I am tired of waiting." },
		},
	})
	local w = Has(r, "itAgreement", "ag.bad", "it")
	T.ok(w and w.level == "warning" and w.msg:find("variante 2", 1, true), "avviso per la variante 2, in italiano")
	T.ok(not Has(r, "itAgreement", "ag.bad", "en"), "nessun avviso in inglese")
	T.ok(not Has(r, "itAgreement", "ag.good"), "con il segnaposto non c'è avviso")
end)

T.run("#70, #71: i testi italiani di base non hanno accordi senza segnaposto né chiavi in conflitto", function()
	local r = Validator:Run()
	for _, list in ipairs({ r.errors, r.warnings }) do
		for _, p in ipairs(list) do
			T.ok(p.code ~= "itAgreement" or (p.id or ""):find("^ag%.") ~= nil, "accordo senza segnaposto: " .. tostring(p.id) .. ": " .. p.msg)
			T.ok(p.code ~= "keyCollision" and p.code ~= "keyOverride", "chiave condivisa: " .. p.msg)
		end
	end
end)

T.run("#163 (D16): a literary form in a public voice is an error", function()
	local texts = { itIT = { ["lt.a"] = "inno", ["lt.b"] = "canto", ["lt.c"] = "iscrizione", ["lt.d"] = "ok", ["lt.e"] = "voce" } }
	local r = Validate({ languages = { "itIT" }, registry = {
		["lt.a"] = Good({ speaker = "narrator", tags = { "lore", "genre_hymn" } }),
		["lt.b"] = Good({ speaker = "character", tags = { "genre_song" } }),
		["lt.c"] = Good({ speaker = "inner", tags = { "lore", "genre_inscription" } }),
		["lt.d"] = Good({ speaker = "character", tags = { "wry" } }),
		["lt.e"] = Good({ speaker = "npc", tags = { "genre_verse" } }),
	}, texts = texts })
	local p = Has(r, "literaryPublic", "lt.a")
	T.ok(p and p.level == "error" and p.msg:find("D16", 1, true), "narrator + lore: error")
	T.ok(Has(r, "literaryPublic", "lt.b"), "character + genre_*: error")
	T.ok(not Has(r, "literaryPublic", "lt.c"), "inner: allowed")
	T.ok(not Has(r, "literaryPublic", "lt.e"), "npc: allowed")
	T.ok(not Has(r, "literaryPublic", "lt.d"), "an ordinary tag: no error")
end)

-- #162: the classes of problems found by the third review (Q8). Each check passes on the shipped texts (run_tests.py
-- asks a validator without warnings) and catches the lines as they were before #198.
T.run("#162: Italian agreement with the speaker, in the forms Q8 found", function()
	local U = Validator.UnmarkedAgreement
	for _, text in ipairs({
		"Resterà dov'è finché non sarò abbastanza vicino da vederla.",          -- world.fog.01
		"Cercherò di esserne degno.",                                          -- world.sub.03
		"Che il prossimo mi trovi pronto altrettanto.",                        -- world.quest.complete.03
		"Non sarò io il primo a guardare {other}, né l'ultimo a distogliere lo sguardo.", -- rel.player.fear
		"Una sfida da uno di cui non mi sono mai fidato.",                     -- ctx.act.duel.wary
	}) do
		T.ok(U(text, "it") ~= nil, "flagged: " .. text)
	end
	T.eq(U("Che il prossimo mi trovi pronto.", "it"), "mi trovi pronto", "the form found, with its 'mi'")
	-- world.flight.arrive.e: the third person speaks of the character only in a narrator emote
	local emote = "scende a terra e resta fermo un momento."
	T.eq(U(emote, "it", true), "resta fermo", "a narrator emote: the third person is the character")
	T.eq(U(emote, "it"), nil, "elsewhere the third person is someone else")
	for _, text in ipairs({ "Cercherò di esserne {g:degno|degna}.", "Che il prossimo mi trovi altrettanto {g:pronto|pronta}.",
		"Il lupo mi trova.", "Ci vediamo al primo bivio.", "Il primo passo è il più duro." }) do
		T.ok(U(text, "it") == nil, "not flagged: " .. text)
	end
	T.eq(U("lancia la lenza e resta immobile.", "it", true), nil, "'immobile' is the same in both genders")
	T.eq(U("guarda il cielo: ciò che è caduto non torna.", "it", true), nil, "'è' is not a verb of the character")

	local r = Validate({
		languages = { "itIT" },
		registry = { ["ag2.emote"] = Good({ speaker = "narrator", form = "emote" }), ["ag2.say"] = Good() },
		texts = { itIT = { ["ag2.emote"] = emote, ["ag2.say"] = "Il cavallo resta fermo." } },
	})
	local w = Has(r, "itAgreement", "ag2.emote", "it")
	T.ok(w and w.level == "warning", "a narrator emote with 'resta fermo': warning")
	T.ok(not Has(r, "itAgreement", "ag2.say"), "a spoken line with a third person: no warning")
end)

T.run("#162: Italian agreement of the speaker and the other together", function()
	local U = Validator.UnmarkedReciprocal
	T.eq(U("Ci siamo già incrociati.", "it"), "ci siamo incrociati", "rel.player.known")
	T.eq(U("{other}. Ci siamo affrontati in duello, e ne porto il segno.", "it"), "ci siamo affrontati", "rel.player.shared.duel")
	T.ok(U("Ci eravamo lasciati male.", "it") ~= nil, "ci eravamo ...ati")
	for _, text in ipairs({ "Le nostre strade si sono già incrociate.", "Ci siamo tutti.", "Ci conosciamo già.",
		"Siamo arrivati fin qui.", "Ci siamo, finalmente." }) do
		T.ok(U(text, "it") == nil, "not flagged: " .. text)
	end
	T.eq(U("We have crossed paths before.", "en"), nil, "English is not checked")
	local r = Validate({
		languages = { "itIT" },
		registry = { ["rc.bad"] = Good(), ["rc.good"] = Good() },
		texts = { itIT = { ["rc.bad"] = { "Salute.", "Ci siamo già incrociati." }, ["rc.good"] = "Le nostre strade si sono già incrociate." } },
	})
	local w = Has(r, "itAgreementOther", "rc.bad", "it")
	T.ok(w and w.level == "warning" and w.msg:find("variant 2", 1, true), "warning for variant 2")
	T.ok(not Has(r, "itAgreementOther", "rc.good"), "a neutral form: no warning")
end)

T.run("#162: time-of-day words against the conditions", function()
	T.eq((Validator.TimeWord("Tonight I am.", "en")), "tonight", "a 'now' word")
	T.eq((Validator.TimeWord("The days get shorter.", "en")), nil, "no word")
	T.eq((Validator.TimeWord("Nightfall comes.", "en")), "nightfall", "whole words only")
	-- rain_dusk_return allowed night while its texts said dusk (Q8, #159); mono.rest.hearth said "Tonight" at any hour
	NS:RegisterSituation("vtest_dusk_night", { lead = "memory_return", when = { time = { "dusk", "night" } } }, "base_direction")
	local r = Validate({
		languages = { "enUS", "itIT" },
		registry = {
			["tw.sit"] = Good({ event = "memory_return", speaker = "narrator", form = "emote",
				conditions = { repeatVisit = true, situation = "vtest_dusk_night" } }),
			["tw.list"] = Good({ event = "memory_return", speaker = "inner", conditions = { repeatVisit = true, time = { "dusk", "night" } } }),
			["tw.dusk"] = Good({ event = "memory_return", speaker = "inner", conditions = { repeatVisit = true, time = "dusk" } }),
			["tw.night"] = Good({ event = "zone", speaker = "inner", conditions = { time = "dusk" } }),
			["tw.rest"] = Good({ event = "rest_enter", speaker = "inner", conditions = { indoors = true } }),
			["tw.place"] = Good({ event = "zone", speaker = "inner", conditions = { zone = "Duskwood" } }),
			["tw.placenow"] = Good({ event = "zone", speaker = "inner", conditions = { place = { rest = true } } }),
			["tw.battle"] = Good(),
			["tw.event"] = Good({ event = "dusk", speaker = "inner" }),
			["tw.hour"] = Good({ event = "zone", speaker = "inner", conditions = { hour = { 18, 22 } } }),
		},
		texts = {
			enUS = { ["tw.sit"] = "walks the familiar road through the wet dusk.", ["tw.list"] = "The light is failing, and so is the dusk.",
				["tw.dusk"] = "Dusk again.", ["tw.night"] = "Soon the road will belong to the night.",
				["tw.rest"] = { "A fire, a chair.", "As if I were anyone. Tonight I am." },
				["tw.place"] = "Even at noon, you walk through dusk here.", ["tw.placenow"] = "Tonight nobody asks anything of you.",
				["tw.battle"] = "Let the bards sing of this tonight!", ["tw.event"] = "Dusk, and the lamps.", ["tw.hour"] = "Dusk." },
			itIT = { ["tw.sit"] = "percorre la strada nota nel crepuscolo bagnato.", ["tw.list"] = "La luce cala nel crepuscolo.",
				["tw.dusk"] = "Di nuovo il crepuscolo.", ["tw.night"] = "Presto la strada sarà della notte.",
				["tw.rest"] = { "Un fuoco, una sedia.", "Come se fossi chiunque. Stasera lo sono." },
				["tw.place"] = "Anche a mezzogiorno qui si cammina al crepuscolo.", ["tw.placenow"] = "Stanotte nessuno ti chiede niente.",
				["tw.battle"] = "Che i bardi ne cantino stanotte!", ["tw.event"] = "Il crepuscolo, e le lanterne.", ["tw.hour"] = "Il crepuscolo." },
		},
	})
	for _, lang in ipairs({ "en", "it" }) do
		local w = Has(r, "timeWord", "tw.sit", lang)
		T.ok(w and w.level == "warning" and w.msg:find("night", 1, true), "a situation that allows night, a dusk text: warning (" .. lang .. ")")
		T.ok(Has(r, "timeWord", "tw.list", lang), "a time list wider than the word: warning (" .. lang .. ")")
		T.ok(Has(r, "timeWord", "tw.rest", lang), "'tonight' at any hour in a describing event: warning (" .. lang .. ")")
		T.ok(Has(r, "timeWord", "tw.placenow", lang), "'tonight' in a line bound to a place: still a warning (" .. lang .. ")")
		for _, id in ipairs({ "tw.dusk", "tw.night", "tw.place", "tw.battle", "tw.event", "tw.hour" }) do
			T.ok(not Has(r, "timeWord", id, lang), "no warning for " .. id .. " (" .. lang .. ")")
		end
	end
	Engine.SITUATIONS.vtest_dusk_night = nil
	Engine.CONDITION_VALUES.situation.vtest_dusk_night = nil
	for i, sid in ipairs(Engine.SITUATION_ORDER) do
		if sid == "vtest_dusk_night" then table.remove(Engine.SITUATION_ORDER, i); break end
	end
end)

T.run("#162: a monologue part is checked against the monologue's conditions", function()
	local r = Validate({
		languages = { "enUS" },
		registry = {
			["tm2.hearth"] = { event = "rest_enter", speaker = "inner", styles = { "intimate" }, theme = "journey",
				kind = "monologue", parts = { "tm2.p1", "tm2.p2" }, conditions = { indoors = true } },
			["tm2.stars"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey",
				kind = "monologue", parts = { "tm2.p3", "tm2.p4" }, conditions = { time = "night" } },
			["tm2.p1"] = { event = "rest_enter", speaker = "inner", styles = { "intimate" }, theme = "journey", chainable = "only" },
			["tm2.p2"] = { event = "rest_enter", speaker = "inner", styles = { "intimate" }, theme = "journey", chainable = "only" },
			["tm2.p3"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey", chainable = "only" },
			["tm2.p4"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "journey", chainable = "only" },
		},
		texts = { enUS = { ["tm2.p1"] = "A fire, a chair.", ["tm2.p2"] = "As if I were anyone. Tonight I am.",
			["tm2.p3"] = "Night at last.", ["tm2.p4"] = "Tonight the stars are close." } },
	})
	T.ok(Has(r, "timeWord", "tm2.p2", "en"), "a part says 'tonight' in a monologue of any hour: warning")
	T.ok(not Has(r, "timeWord", "tm2.p3", "en") and not Has(r, "timeWord", "tm2.p4", "en"),
		"parts that say 'night' and 'tonight' in a night monologue: no warning")
end)

T.run("#162: words of a first visit or a return against the visit conditions", function()
	local r = Validate({
		languages = { "enUS", "itIT" },
		registry = {
			["vw.rain"] = Good({ event = "zone", speaker = "inner", conditions = { weather = "rain" } }),
			["vw.first"] = Good({ event = "zone", speaker = "inner", conditions = { firstVisit = true } }),
			["vw.back"] = Good({ event = "subzone_enter", speaker = "inner" }),
			["vw.firstback"] = Good({ event = "zone", speaker = "inner", conditions = { firstVisit = true } }),
			["vw.recall"] = Good({ event = "zone", speaker = "inner", conditions = { repeatVisit = true } }),
			["vw.battle"] = Good(),
		},
		texts = {
			enUS = { ["vw.rain"] = "New ground, and rain upon it.", ["vw.first"] = "New ground. Eyes open.",
				["vw.back"] = "Back here, among the stalls.", ["vw.firstback"] = { "A road.", "Here again, it seems." },
				["vw.recall"] = "I remember the first time I saw these walls.", ["vw.battle"] = "First time I fight one of these." },
			itIT = { ["vw.rain"] = "Terra nuova, e la pioggia sopra.", ["vw.first"] = "Terra nuova. Occhi aperti.",
				["vw.back"] = "Di nuovo qui, tra le bancarelle.", ["vw.firstback"] = { "Una strada.", "Di nuovo qui, a quanto pare." },
				["vw.recall"] = "Ricordo la prima volta che vidi queste mura.", ["vw.battle"] = "Prima volta che ne affronto uno." },
		},
	})
	for _, lang in ipairs({ "en", "it" }) do
		local w = Has(r, "visitWord", "vw.rain", lang)
		T.ok(w and w.level == "warning" and w.msg:find("firstVisit", 1, true), "world.zone.rain before #198: warning (" .. lang .. ")")
		T.ok(Has(r, "visitWord", "vw.back", lang), "a return word without a return: warning (" .. lang .. ")")
		local f = Has(r, "visitWord", "vw.firstback", lang)
		T.ok(f and f.msg:find("variant 2", 1, true), "a return word on a first visit: warning (" .. lang .. ")")
		for _, id in ipairs({ "vw.first", "vw.recall", "vw.battle" }) do
			T.ok(not Has(r, "visitWord", id, lang), "no warning for " .. id .. " (" .. lang .. ")")
		end
	end
end)

T.run("#162: a death named under lastVisitBad = true (which is also a flight)", function()
	local r = Validate({
		languages = { "enUS", "itIT" },
		registry = {
			["dv.bad"] = Good({ event = "memory_return", speaker = "inner", conditions = { lastVisitBad = true } }),
			["dv.flight"] = Good({ event = "memory_return", speaker = "inner", conditions = { lastVisitBad = "flight" } }),
			["dv.death"] = Good({ event = "memory_return", speaker = "inner", conditions = { lastVisitBad = "death" } }),
			["dv.vague"] = Good({ event = "memory_return", speaker = "inner", conditions = { lastVisitBad = true } }),
		},
		texts = {
			enUS = { ["dv.bad"] = "Here again. I remember exactly where I fell.", ["dv.flight"] = "I died here, once.",
				["dv.death"] = "I remember exactly where I fell.", ["dv.vague"] = "Here again. I remember exactly where it went wrong." },
			itIT = { ["dv.bad"] = "Di nuovo qui. Ricordo esattamente dove sono {g:caduto|caduta}.", ["dv.flight"] = "Qui sono {g:morto|morta}, una volta.",
				["dv.death"] = "Ricordo esattamente dove sono {g:caduto|caduta}.", ["dv.vague"] = "Di nuovo qui. Ricordo esattamente dove è andata storta." },
		},
	})
	for _, lang in ipairs({ "en", "it" }) do
		local w = Has(r, "badVisitDeath", "dv.bad", lang)
		T.ok(w and w.level == "warning" and w.msg:find("death", 1, true), "mem.ret.emo.bad.worried before #198: warning (" .. lang .. ")")
		T.ok(Has(r, "badVisitDeath", "dv.flight", lang), "a death under lastVisitBad = \"flight\": warning (" .. lang .. ")")
		T.ok(not Has(r, "badVisitDeath", "dv.death", lang), "lastVisitBad = \"death\": no warning (" .. lang .. ")")
		T.ok(not Has(r, "badVisitDeath", "dv.vague", lang), "a line that fits both: no warning (" .. lang .. ")")
	end
end)

T.run("#162: the shipped texts pass the new checks", function()
	local NEW = { itAgreement = true, itAgreementOther = true, timeWord = true, visitWord = true, badVisitDeath = true }
	for _, p in ipairs(Validator:Run().warnings) do
		-- the packs of this file are v1, v2...
		if NEW[p.code] and not (p.pack or ""):find("^v%d+$") then
			T.ok(false, "shipped line: " .. tostring(p.id) .. " " .. p.code .. ": " .. p.msg)
		end
	end
end)
