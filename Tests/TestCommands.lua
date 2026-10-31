-- Test dei comandi /au di base (UI/Commands.lua) e dei percorsi di Triggers che i test degli step non coprivano (#56):
-- ogni comando ha un controllo sull'effetto, non solo sul testo stampato; ritorno in vita da fantasma;
-- QUEST_GREETING; fine scontro mentre il giocatore combatte ancora.
local NS = ...
local Engine, Director, Narrator, Gateway, Config = NS.Engine, NS.Director, NS.Narrator, NS.Gateway, NS.Config

local function Cmd(text)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN(text)
	local out = {}
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) == "PRINT:" then table.insert(out, s) end
	end
	return table.concat(out, "\n")
end

local function Fresh()
	NS.db.enabled, NS.paused, NS.db.locale = true, false, "it"
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.db.chance, NS.db.ignored, NS.db.disabledPacks = {}, {}, {}
	NS.db.chat.mode = "PRIVATE"
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	P.zone, P.combat, P.dead, P.ghost, P.hp, P.hpMax, P.target, P.npc = "Durotar", false, false, false, 100, 100, nil, nil
	P.instance = false
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	NS.Pacing:Reset()
	SENT = {}
	ADVANCE(1000)
end

---------------------------------------------------------------------------
-- #132: i nomi dei comandi e degli argomenti sono sempre inglesi, in ogni lingua dell'interfaccia
---------------------------------------------------------------------------
local K, Commands = NS.Keywords, NS.Commands

-- le parole italiane che prima erano alias: nessuna deve più essere una parola chiave
local ITALIAN = { "aiuto", "diario", "relazioni", "relazione", "luogo", "dove", "chi", "parla", "dialogo", "storie", "storia",
	"benvenuto", "annulla", "scarta", "altra", "copia", "dire", "invia", "prova", "evento", "incanta", "ignora", "pulsante",
	"pacchetti", "pacchetto", "valida", "controlla", "memoria", "opzioni", "lingua", "canale", "modo", "intensita",
	"profondita", "pausa", "narratore", "anima", "personalita", "profilo", "saluto", "addio", "brindisi", "pensiero",
	"minaccia", "grido", "battaglia", "preghiera", "vittoria", "ringrazia", "grazie", "scherzo", "battuta", "prob",
	"naturale", "letterario", "elevato", "gruppo", "incursione", "gilda", "istanza", "cronologia", "pulisci",
	"lista", "luoghi", "esporta", "permanente", "elimina", "dimentica", "azzera", "tutto", "tutte", "ricordi", "ordinari",
	"persone", "aggiungi", "rimuovi", "nota", "etichetta", "imposta", "dettaglio", "attrazione", "scegli", "inizia",
	"sospendi", "riprendi", "salta", "disattiva", "attiva", "stato", "spegni", "accendi", "chiudi", "ruolo", "offerta",
	"tratto", "archetipo", "neutro", "evita", "voce", "temperamento", "morale", "curiosita", "fede", "motivazione",
	"ironia", "familiarita", "fiducia", "rispetto", "affetto", "timore", "lealta", "privato", "privata", "anteprima",
	"conferma", "automatico", "automatica", "si", "nessuno", "burbero", "gioviale", "caloroso", "formale", "laconico",
	"locandiere", "mercante", "guardia", "banchiere", "addestratore", "volo", "giocatori", "acceso", "spento" }

T.run("#132: ogni parola chiave dei comandi è inglese", function()
	local italian = {}
	for _, w in ipairs(ITALIAN) do italian[w] = true end
	local tables, words = 0, 0
	for name, tbl in pairs(K.registry) do
		tables = tables + 1
		for word in pairs(tbl) do
			words = words + 1
			T.ok(type(word) == "string" and word:find("^[a-z0-9:_%-]+$"), name .. ": '" .. tostring(word) .. "' è ASCII minuscolo")
			T.ok(not italian[word], name .. ": '" .. tostring(word) .. "' non è una parola italiana")
		end
	end
	T.ok(tables >= 20 and words >= 100, "controllate " .. tables .. " tabelle e " .. words .. " parole")
	-- i comandi, le loro forme brevi e le righe dell'aiuto
	local seen = {}
	for _, spec in ipairs(Commands.list) do
		T.ok(spec.name:find("^[a-z0-9]+$") and not italian[spec.name], "comando inglese: " .. spec.name)
		T.ok(type(spec.fn) == "function", spec.name .. ": ha un gestore")
		for _, short in ipairs(spec.short or {}) do
			T.ok(short:find("^[a-z0-9]+$") and not italian[short], spec.name .. ": forma breve inglese '" .. short .. "'")
		end
		seen[spec.name] = true
		if spec.usage then
			T.ok(spec.desc and NS.languages.en.ui[spec.desc] and NS.languages.it.ui[spec.desc], spec.name .. ": descrizione in IT ed EN")
		end
	end
	-- i comandi dell'elenco della #132 ci sono tutti
	for _, name in ipairs({ "help", "journal", "relationships", "place", "who", "talk", "stories", "wizard", "cancel",
		"another", "copy", "speak", "test", "event", "cast", "ignore", "button", "packs", "pack", "validate", "stats",
		"memory", "options", "language", "mode", "channel", "intensity", "depth", "pause", "narrator", "soul", "debug",
		"on", "off", "chance", "cooldown", "greet", "farewell", "toast", "muse", "threat", "battlecry", "pray", "victory",
		"thanks", "jest" }) do
		T.ok(seen[name], "comando presente: " .. name)
	end
	-- nessuna parola italiana è un comando
	for _, w in ipairs(ITALIAN) do T.ok(not Commands.byName[w], "'" .. w .. "' non è un comando") end
end)

T.run("#132: due comandi con lo stesso nome o la stessa forma breve si segnalano", function()
	T.eq(#Commands.Build(), 0, "nessuna collisione nella tabella")
	local list = Commands.list
	local ok = pcall(function()
		Commands.list = { { name = "one", fn = function() end, short = { "o" } }, { name = "two", fn = function() end, short = { "o" } },
			{ name = "one", fn = function() end } }
		local problems = Commands.Build()
		T.eq(#problems, 2, "una forma breve e un nome ripetuti: " .. table.concat(problems, "; "))
	end)
	Commands.list = list
	Commands.Build()
	T.ok(ok, "la prova non dà errori")
	T.eq(#Commands.Build(), 0, "tabella ripristinata")
end)

T.run("#132: una parola italiana non esegue nulla e suggerisce il comando inglese", function()
	Fresh()
	local before = NS.db.intensity
	for _, lang in ipairs({ "it", "en" }) do
		NS.db.locale = lang
		local out = Cmd("intensita 10")
		T.ok(out:find("/au intensity", 1, true), lang .. ": 'intensita' suggerisce /au intensity")
		T.eq(NS.db.intensity, before, lang .. ": e non cambia nulla")
		out = Cmd("diario")
		T.ok(out:find("/au journal", 1, true), lang .. ": 'diario' suggerisce /au journal")
		out = Cmd("relazioni lista")
		T.ok(out:find("/au relationships", 1, true), lang .. ": 'relazioni' suggerisce /au relationships")
		out = Cmd("jornal")
		T.ok(out:find("/au journal", 1, true), lang .. ": un errore di battitura suggerisce il comando più vicino")
		out = Cmd("zzzz")
		T.ok(out:find("zzzz", 1, true) and out:find("/au help", 1, true) and not out:find("Did you mean", 1, true)
			and not out:find("Intendevi", 1, true), lang .. ": una parola qualunque rimanda a /au help")
	end
	-- ogni vecchia parola italiana punta a un comando che esiste davvero
	for word, target in pairs(Commands.HINTS) do
		T.ok(Commands.byName[target], word .. " -> " .. target .. " esiste")
		T.ok(not Commands.byName[word], word .. " non è un comando")
	end
	NS.db.locale = "it"
end)

T.run("#132: l'aiuto elenca i nomi inglesi in ogni lingua, con la descrizione nella lingua dell'interfaccia", function()
	Fresh()
	for _, lang in ipairs({ "it", "en" }) do
		NS.db.locale = lang
		local out = Cmd("help all")
		T.ok(out:find(NS.languages[lang].ui.help_help, 1, true), lang .. ": descrizione nella lingua dell'interfaccia")
		for _, spec in ipairs(Commands.list) do
			if spec.usage then T.ok(out:find("/au " .. spec.usage, 1, true), lang .. ": elenca /au " .. spec.usage) end
		end
		T.ok(not out:find("/au diario", 1, true) and not out:find("/au aiuto", 1, true), lang .. ": nessun comando italiano")
		T.eq(Cmd(""), Cmd("help"), lang .. ": /au senza argomenti mostra l'aiuto")
	end
	NS.db.locale = "it"
end)

T.run("#132: l'italiano è una traduzione: le chiavi mancanti ripiegano sull'inglese", function()
	Fresh()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	-- stesse chiavi in IT ed EN
	for k in pairs(en) do T.ok(it[k] ~= nil, "chiave inglese presente in italiano: " .. k) end
	for k in pairs(it) do T.ok(en[k] ~= nil, "chiave italiana presente in inglese: " .. k) end
	local saved = it.help_help
	it.help_help = nil
	NS.db.locale = "it"
	T.eq(NS:L("help_help"), en.help_help, "chiave italiana mancante: testo inglese")
	T.eq(NS:L("chiave_inventata"), "chiave_inventata", "chiave sconosciuta: la chiave stessa")
	it.help_help = saved
	T.ok(NS:L("help_help") ~= en.help_help, "con la chiave: testo italiano")
	NS.db.locale = "xx"
	T.eq(NS:Lang(), "en", "lingua sconosciuta: inglese")
	T.eq(NS:L("help_help"), en.help_help, "lingua sconosciuta: testi inglesi")
	NS.db.locale = nil
	T.eq(NS:Lang(), "en", "nessuna lingua scelta: inglese")
	NS.db.locale = "it"
end)

T.run("#132: l'inglese è la prima scelta della procedura guidata, l'italiano la seconda", function()
	T.eq(NS.languageOrder[1], "en", "inglese per primo")
	T.eq(NS.languageOrder[2], "it", "italiano per secondo")
	T.eq(NS.languages.en.name, "English", "nome inglese")
	T.eq(NS.languages.it.name, "Italiano", "nome italiano")
	-- una lingua aggiunta dopo non scavalca l'inglese
	NS:RegisterLanguage("zz", { name = "Zed", ui = {} })
	T.eq(NS.languageOrder[1], "en", "l'inglese resta primo")
	T.eq(NS.languageOrder[#NS.languageOrder], "zz", "le altre seguono")
	NS.languages.zz = nil
	table.remove(NS.languageOrder)
end)

-- registra gli eventi che il Gateway racconta
local narrated
local function Spy()
	narrated = {}
	if not Gateway.origNarrate then Gateway.origNarrate = Gateway.Narrate end
	Gateway.Narrate = function(self, event, ctx, opts)
		table.insert(narrated, event)
		return Gateway.origNarrate(self, event, ctx, opts)
	end
end
local function Unspy()
	if Gateway.origNarrate then Gateway.Narrate, Gateway.origNarrate = Gateway.origNarrate, nil end
end

local function Logged(event)
	for _, l in ipairs(Director.log) do if l.event == event then return l end end
	return nil
end

T.run("/au incanta: il tipo dell'incantesimo sceglie l'evento", function()
	Fresh()
	Spy()
	for _, case in ipairs({
		{ "Resurrection", "rezother" }, { "Flash Heal", "heal" }, { "Hearthstone", "travel" },
		{ "Power Word: Fortitude", "buff" }, { "Fireball", "attack" },
	}) do
		narrated = {}
		Cmd("cast " .. case[1])
		T.eq(narrated[1], case[2], case[1] .. " -> " .. case[2])
	end
	-- un'intercessione in combattimento non è un buff: diventa un attacco
	P.combat = true
	narrated = {}
	Cmd("cast Power Word: Fortitude")
	T.eq(narrated[1], "attack", "un buff in combattimento: attacco")
	P.combat = false
	Unspy()
end)

T.run("/au pacchetto <id> off: le frasi di quel pacchetto non si scelgono più", function()
	Fresh()
	local function Packs(event)
		local seen, n = {}, 0
		for _ = 1, 60 do
			NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
			local rec = Engine:PickEntry(event, NS:BuildContext(), "say") or Engine:PickEntry(event, NS:BuildContext(), "emote")
			if rec then
				n = n + 1
				seen[Engine.byId[rec.id].pack] = true
			end
		end
		return seen, n
	end
	local before = Packs("battle")
	T.ok(before.base_combat, "con tutti i pacchetti accesi il combattimento parla")
	Cmd("pack base_combat off")
	T.eq(NS.db.disabledPacks.base_combat, true, "il pacchetto è spento")
	local after, n = Packs("battle")
	T.ok(not after.base_combat, "nessuna frase di base_combat")
	T.ok(n > 0, "e altri pacchetti parlano ancora")
	Cmd("pack base_combat on")
	T.eq(NS.db.disabledPacks.base_combat, nil, "on: di nuovo acceso")
	T.ok(Packs("battle").base_combat, "e torna a parlare")
	Cmd("pack inesistente off")
	T.eq(NS.db.disabledPacks.inesistente, nil, "un pacchetto inesistente non si spegne")
end)

T.run("/au memoria, /au ignora, /au cooldown", function()
	Fresh()
	-- memoria: svuota l'anti-ripetizione
	Engine:PickEntry("battle", NS:BuildContext(), "say")
	NS.cdb.memory.uses.x = 3
	Cmd("memory")
	T.eq(next(NS.cdb.memory.uses), nil, "uses vuoto")
	T.eq(next(NS.cdb.memory.recent), nil, "recent vuoto")
	T.eq(next(NS.cdb.memory.last), nil, "last vuoto")
	-- ignora: un incantesimo ignorato non produce nulla
	SPELLS[133] = "Fireball"
	P.combat = true
	Cmd("ignore Fireball")
	T.eq(NS.db.ignored.fireball, true, "ignorato")
	Director.queue, Director.log = {}, {}
	FIRE("UNIT_SPELLCAST_SENT", "player", "Gnoll", "cast-ign-1", 133)
	FIRE("UNIT_SPELLCAST_SUCCEEDED", "player", "cast-ign-1", 133)
	T.eq(#Director.queue, 0, "nessun candidato per l'incantesimo ignorato")
	Cmd("ignore Fireball")
	T.eq(NS.db.ignored.fireball, nil, "di nuovo non ignorato")
	FIRE("UNIT_SPELLCAST_SENT", "player", "Gnoll", "cast-ign-2", 133)
	FIRE("UNIT_SPELLCAST_SUCCEEDED", "player", "cast-ign-2", 133)
	T.ok(#Director.queue >= 1 and Director.queue[#Director.queue].event == "attack", "ora l'incantesimo conta")
	P.combat = false
	-- cooldown: il valore e il messaggio
	local out = Cmd("cooldown 30")
	T.eq(NS.db.pacing.globalCooldownSeconds, 30, "cooldown 30")
	T.ok(out:find("30", 1, true), "il messaggio lo dice")
	Cmd("cooldown 0")
	T.eq(NS.db.pacing.globalCooldownSeconds, 0, "cooldown 0")
end)

T.run("/au off e /au on: il Narrative Director risponde 'disabled'", function()
	Fresh()
	local ctx = NS:BuildContext()
	T.ok(Director:Evaluate("muse", ctx).allow, "con l'addon acceso il Gate lascia passare")
	Cmd("off")
	T.eq(NS.db.enabled, false, "spento")
	local v = Director:Evaluate("muse", NS:BuildContext())
	T.ok(not v.allow and v.reason == "disabled", "il Gate dice disabled")
	Cmd("on")
	T.eq(NS.db.enabled, true, "acceso")
	T.ok(Director:Evaluate("muse", NS:BuildContext()).allow, "e passa di nuovo")
end)

T.run("/au pulsante: mostra o nasconde il pulsante 'pronuncia'", function()
	Fresh()
	local function Button()
		for _, w in ipairs(FindWidgets(function(x) return x.name == "AzerothUnspokenButton" end)) do return w end
	end
	local b = Button()
	T.ok(b ~= nil, "il pulsante esiste")
	NS.db.ui.showButton = true
	NS.UpdateButton()
	T.ok(b.shown, "visibile")
	Cmd("button")
	T.eq(NS.db.ui.showButton, false, "showButton spento")
	T.ok(not b.shown, "e nascosto")
	Cmd("button")
	T.eq(NS.db.ui.showButton, true, "showButton acceso")
	T.ok(b.shown, "di nuovo visibile")
end)

---------------------------------------------------------------------------
-- #175 (UI-05): "|" è il carattere di escape del client. Un "|" nudo in un testo stampato in chat o in una finestra
-- mangia lettere (|r) o va a capo (|n): "/au narrator [history|reset|clear]" diventava "historyeset".
-- Ammessi solo "||" (una barra visibile) e le coppie di colore "|cffxxxxxx ... |r".
---------------------------------------------------------------------------
local function BarePipe(s)
	local i, open = 1, 0
	while true do
		local at = s:find("|", i, true)
		if not at then return nil end
		local nxt = s:sub(at + 1, at + 1)
		if nxt == "|" then
			i = at + 2
		elseif s:find("^c%x%x%x%x%x%x%x%x", at + 1) then
			open, i = open + 1, at + 10
		elseif nxt == "r" and open > 0 then
			open, i = open - 1, at + 2
		else
			return at
		end
	end
end

T.run("#175: nessun '|' nudo nelle righe dell'aiuto e nei testi dell'interfaccia", function()
	Fresh()
	-- il controllo stesso
	T.ok(BarePipe("narrator [history|reset|clear]"), "trova history|reset")
	T.ok(BarePipe("on | off") and BarePipe("note|n") and BarePipe("a |r"), "trova '| ', '|n' e un |r senza colore")
	T.ok(not BarePipe("on || off") and not BarePipe("|cffffffff/s|r x") and not BarePipe("on / off"), "ammette || e i colori")
	-- le righe della tabella dei comandi
	for _, spec in ipairs(Commands.list) do
		if spec.usage then T.ok(not BarePipe(spec.usage), "riga dell'aiuto senza '|' nudo: " .. spec.usage) end
	end
	-- ogni testo dell'interfaccia, in ogni lingua (anche soul_help, mem_help, rel_help, arc_cmd_help...)
	local checked = 0
	local function Walk(lang, path, v)
		if type(v) == "string" then
			checked = checked + 1
			T.ok(not BarePipe(v), lang .. "." .. path .. ": nessun '|' nudo")
		elseif type(v) == "table" then
			for k, x in pairs(v) do Walk(lang, path .. "." .. tostring(k), x) end
		end
	end
	for code, lang in pairs(NS.languages) do Walk(code, "ui", lang.ui) end
	T.ok(checked > 500, "controllati " .. checked .. " testi")
	for _, key in ipairs({ "soul_help", "mem_help", "rel_help", "arc_cmd_help", "rel_scope_usage", "other_trait_bad" }) do
		T.ok(NS.languages.en.ui[key] and NS.languages.it.ui[key], key .. ": c'è in EN e IT")
	end
	-- e l'aiuto come arriva davvero in chat
	for _, lang in ipairs({ "it", "en" }) do
		NS.db.locale = lang
		for _, arg in ipairs({ "", "all", "start", "narrator", "chat", "character", "diagnostics" }) do
			for line in Cmd("help " .. arg):gmatch("[^\n]+") do
				T.ok(not BarePipe(line), lang .. ": /au help " .. arg .. ": " .. line)
			end
		end
	end
	NS.db.locale = "it"
end)

---------------------------------------------------------------------------
-- #189 (UI-19): /au help a gruppi, così una finestra di chat predefinita (circa dieci righe) li mostra per intero
---------------------------------------------------------------------------
local function Lines(out)
	local n = 0
	for _ in out:gmatch("[^\n]+") do n = n + 1 end
	return n
end

T.run("#189: /au help stampa i gruppi, /au help <gruppo> le righe di un gruppo", function()
	Fresh()
	local groups = {}
	for _, g in ipairs(Commands.GROUPS) do groups[g] = true end
	T.eq(#Commands.GROUPS, 5, "cinque gruppi: Start, Narrator, Chat, Character, Diagnostics")
	for _, spec in ipairs(Commands.list) do
		if spec.usage then T.ok(groups[spec.group], spec.name .. ": ha un gruppo (" .. tostring(spec.group) .. ")") end
		if spec.see then T.ok(Commands.byName[spec.see] and Commands.byName[spec.see].usage, spec.name .. ": rimanda a una riga") end
		T.ok(spec.usage or spec.see, spec.name .. ": compare nell'aiuto, da solo o con un altro comando")
	end
	for _, lang in ipairs({ "it", "en" }) do
		NS.db.locale = lang
		local out = Cmd("help")
		T.ok(Lines(out) <= 10, lang .. ": /au help sta in una finestra di chat (" .. Lines(out) .. " righe)")
		for _, g in ipairs(Commands.GROUPS) do
			T.ok(out:find("/au help " .. g .. " - ", 1, true), lang .. ": il gruppo " .. g .. " è elencato")
		end
		T.ok(out:find("/au help all - ", 1, true), lang .. ": e /au help all")
		T.ok(not out:find("/au debug", 1, true), lang .. ": la diagnostica non è nella prima schermata")
		local seen = 0
		for _, g in ipairs(Commands.GROUPS) do
			local text = Cmd("help " .. g)
			T.ok(Lines(text) >= 3 and Lines(text) <= 10, lang .. ": /au help " .. g .. " sta in una finestra (" .. Lines(text) .. " righe)")
			T.ok(text:find(NS:L("help_grp_" .. g), 1, true), lang .. ": il titolo nomina il gruppo " .. g)
			for _, spec in ipairs(Commands.list) do
				if spec.usage and spec.group == g then
					seen = seen + 1
					T.ok(text:find("/au " .. spec.usage, 1, true), lang .. ": " .. g .. " elenca /au " .. spec.name)
				end
			end
		end
		local all = Cmd("help all")
		T.eq(Lines(all), seen + 1, lang .. ": /au help all = tutte le righe dei gruppi, più il titolo")
		T.ok(all:find("/au wizard", 1, true) < all:find("/au debug", 1, true), lang .. ": in /au help all la diagnostica viene in fondo")
		-- un comando: la sua riga; un comando senza riga propria: quella del comando a cui rimanda
		local one = Cmd("help journal")
		T.eq(Lines(one), 1, lang .. ": /au help journal è una riga")
		T.ok(one:find("/au journal [list", 1, true), lang .. ": ed è quella di /au journal")
		T.ok(Cmd("help off"):find("/au on / off", 1, true), lang .. ": /au help off mostra /au on / off")
		T.ok(Cmd("help farewell"):find("/au greet / farewell", 1, true), lang .. ": /au help farewell mostra gli eventi a mano")
		T.eq(Cmd("help CHAT"), Cmd("help chat"), lang .. ": maiuscole e minuscole uguali")
		-- una parola sconosciuta: lo dice, poi i gruppi
		local unknown = Cmd("help boh")
		T.ok(unknown:find("boh", 1, true) and unknown:find("/au help start", 1, true), lang .. ": parola sconosciuta: messaggio e gruppi")
		-- le parole dei gruppi sono inglesi in ogni lingua: in italiano /au help personaggio non è un gruppo
		T.ok(Cmd("help personaggio"):find("/au help character", 1, true), lang .. ": i gruppi si scrivono in inglese")
	end
	NS.db.locale = "it"
	T.ok(Cmd("help chat"):find("Chat (i nomi", 1, true), "it: il titolo del gruppo è in italiano")
	T.ok(NS.Keywords.registry.help_groups.diagnostics, "le parole dei gruppi sono registrate (controllo solo inglese)")
end)

---------------------------------------------------------------------------
-- #189 (UI-19): il pulsante "pronuncia": posto predefinito, suggerimento fedele alla modalità, opzione "apre l'editor"
---------------------------------------------------------------------------
T.run("#189: il pulsante 'pronuncia' dice cosa farà il clic, e può aprire l'editor invece di inviare", function()
	Fresh()
	local Speak = NS.SpeakButton
	local b
	for _, w in ipairs(FindWidgets(function(x) return x.name == "AzerothUnspokenButton" end)) do b = w end
	T.ok(b ~= nil, "il pulsante esiste")
	-- non più al centro dello schermo, sopra il personaggio: accanto al riquadro del narratore
	local d = Speak.DEFAULT_POS
	T.ok(d[1] ~= "CENTER" and d[2] == "BOTTOM" and d[3] >= 220 and d[4] == 240, "posto predefinito accanto al narratore")
	T.eq(NS.db.ui.buttonOpensEditor, false, "l'opzione 'apre l'editor' è spenta di serie")

	local function Tip()
		local out = {}
		for _, line in ipairs(Speak:TooltipLines()) do table.insert(out, line[1]) end
		return table.concat(out, "\n")
	end
	NS.db.locale = "en"
	-- modalità privata: non si invia mai nulla, e il suggerimento non lo promette
	NS.db.chat.mode = "PRIVATE"
	local tip = Tip()
	T.ok(tip:find(NS:L("button_idle_private"), 1, true) and tip:find(NS:L("button_hint_private"), 1, true), "privata: " .. tip)
	T.ok(not tip:lower():find("speak", 1, true) and not tip:lower():find("send", 1, true), "privata: né 'speak' né 'send'")
	-- conferma, senza proposta: propone, non invia
	NS.db.chat.mode = "CONFIRM_TO_SEND"
	T.ok(Tip():find(NS:L("button_hint_new"), 1, true), "conferma senza proposta: propone una frase")
	-- conferma, con una proposta: il clic invia
	NS.Gateway:Propose({ text = "Per l'onore dei miei avi.", form = "say", event = "battle", speaker = "character" },
		{ player = "Thalia" }, {})
	T.ok(NS.Gateway:GetPending() ~= nil, "una proposta in attesa")
	tip = Tip()
	T.ok(tip:find("Per l'onore dei miei avi.", 1, true) and tip:find(NS:L("button_hint_send"), 1, true), "conferma: " .. tip)
	-- anteprima: il primo clic apre l'editor
	NS.db.chat.mode = "PREVIEW"
	T.ok(Tip():find(NS:L("button_hint_review"), 1, true), "anteprima: apre l'editor, poi si invia")
	-- con l'opzione, il clic apre l'editor e non invia
	NS.db.chat.mode = "CONFIRM_TO_SEND"
	T.ok(Cmd("button editor on"):find(NS:L("button_editor_on"), 1, true), "/au button editor on lo conferma")
	T.eq(NS.db.ui.buttonOpensEditor, true, "opzione accesa")
	T.ok(Tip():find(NS:L("button_hint_editor"), 1, true), "il suggerimento lo dice")
	SENT = {}
	HW = true
	b.scripts.OnClick(b)
	HW = false
	T.ok(NS.Narrator:IsEditing(), "il clic apre l'editor")
	T.ok(NS.Gateway:GetPending() ~= nil, "la proposta resta in attesa")
	for _, s in ipairs(SENT) do T.ok(s:find("^PRINT:"), "nulla in chat: " .. s) end
	NS.Narrator:CloseEditor()
	-- il tasto e /au speak inviano comunque
	HW = true
	AzerothUnspoken_Speak()
	HW = false
	T.ok(NS.Gateway:GetPending() == nil, "il tasto invia la proposta")
	local public = 0
	for _, s in ipairs(SENT) do if not s:find("^PRINT:") then public = public + 1 end end
	T.eq(public, 1, "una riga in chat, dal tasto")
	-- senza opzione, il clic invia
	Cmd("button editor off")
	T.eq(NS.db.ui.buttonOpensEditor, false, "opzione spenta")
	ADVANCE(NS.db.chat.floodSeconds + 1)   -- fuori dal limite anti-flood dell'invio di prima
	NS.Gateway:Propose({ text = "Ancora una volta.", form = "say", event = "battle", speaker = "character" },
		{ player = "Thalia" }, {})
	SENT = {}
	HW = true
	b.scripts.OnClick(b)
	HW = false
	T.ok(NS.Gateway:GetPending() == nil and not NS.Narrator:IsEditing(), "il clic invia")
	-- /au button editor senza valore cambia stato; un valore sconosciuto non cambia nulla
	Cmd("button editor")
	T.eq(NS.db.ui.buttonOpensEditor, true, "editor senza valore: acceso")
	T.ok(Cmd("button editor boh"):find("boh", 1, true), "valore sconosciuto: messaggio")
	T.eq(NS.db.ui.buttonOpensEditor, true, "e nessun cambio")
	Cmd("button editor off")
	-- on, off, reset
	Cmd("button off")
	T.ok(not NS.db.ui.showButton and not b.shown, "/au button off lo nasconde")
	Cmd("button off")
	T.ok(not NS.db.ui.showButton, "di nuovo off: resta nascosto")
	Cmd("button on")
	T.ok(NS.db.ui.showButton and b.shown, "/au button on lo mostra")
	NS.db.ui.buttonPos = { "TOPLEFT", "TOPLEFT", 10, -10 }
	NS.db.ui.showButton = false
	T.ok(Cmd("button reset"):find(NS:L("button_reset"), 1, true), "/au button reset lo conferma")
	T.ok(NS.db.ui.buttonPos == nil and NS.db.ui.showButton and b.shown, "reset: posto predefinito, e visibile")
	T.ok(Cmd("button boh"):find("boh", 1, true) and NS.db.ui.showButton, "argomento sconosciuto: messaggio, nessun cambio")
	T.ok(NS.Keywords.registry.button.editor, "le parole di /au button sono registrate")
	NS.db.chat.mode = "PRIVATE"
	NS.Gateway:Discard()
	NS.db.locale = "it"
end)

-- ritorno in vita da fantasma (il percorso più comune in Classic: rilasciare lo spirito e tornare al corpo)
T.run("rez da fantasma: PLAYER_ALIVE da fantasma non basta, PLAYER_UNGHOST sì", function()
	Fresh()
	NS.db.chance.rez = 100
	T.ok(not UnitIsGhost("player"), "all'inizio non è un fantasma")
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(5)
	-- rilascia lo spirito: PLAYER_ALIVE, ma il personaggio è un fantasma
	P.dead, P.ghost = false, true
	T.ok(UnitIsGhost("player") and UnitIsDeadOrGhost("player"), "il mock ha il fantasma")
	FIRE("PLAYER_ALIVE")
	ADVANCE(5)
	T.eq(Logged("rez"), nil, "da fantasma nessuna frase di ritorno in vita")
	-- raggiunge il corpo: PLAYER_UNGHOST
	P.ghost = false
	FIRE("PLAYER_UNGHOST")
	ADVANCE(5)
	local l = Logged("rez")
	T.ok(l ~= nil and l.result == "spoken", "tornato in vita parla la frase 'rez': " .. tostring(l and l.result))
	-- un secondo PLAYER_ALIVE senza una morte non la ripete
	local n = 0
	FIRE("PLAYER_ALIVE")
	ADVANCE(5)
	for _, e in ipairs(Director.log) do if e.event == "rez" then n = n + 1 end end
	T.eq(n, 1, "una sola frase")
	-- il sistema della memoria vede l'evento come un ritorno in vita
	local last
	for i = #NS.EventBus.recent, 1, -1 do
		if NS.EventBus.recent[i].type == "PLAYER_REVIVE" then last = NS.EventBus.recent[i] break end
	end
	T.ok(last ~= nil and last.context.deadOrGhost == false, "PLAYER_REVIVE senza fantasma")
end)

T.run("QUEST_GREETING: un NPC che offre incarichi apre l'interazione", function()
	Fresh()
	P.npc = { name = "Innkeeper Farley", guid = "Creature-0-3134-0-6-295-0000A2E9A1", sex = 2, reaction = 5 }
	ADVANCE(16)
	local before = NS.EventBus.stats.published
	FIRE("QUEST_GREETING")
	T.ok(NS.EventBus.stats.published > before, "evento pubblicato")
	local env
	for i = #NS.EventBus.recent, 1, -1 do
		if NS.EventBus.recent[i].type == "NPC_INTERACT" then env = NS.EventBus.recent[i] break end
	end
	T.ok(env ~= nil and env.context.kind == "gossip" and env.context.npcID == 295, "NPC_INTERACT di tipo gossip con l'NPC")
	T.ok(NS.Relationships:Get("npc", 295) ~= nil, "e l'NPC entra nelle relazioni")
end)

T.run("fine scontro con il giocatore ancora in combattimento: nessun commento", function()
	Fresh()
	NS.db.chance.encounter_end = 100
	P.instance, P.instanceType, P.instanceName = true, "raid", "Molten Core"
	FIRE("ENCOUNTER_START", 663, "Lucifron", 9, 40)
	ADVANCE(3)
	P.combat = true
	FIRE("ENCOUNTER_END", 663, "Lucifron", 9, 40, 1)
	ADVANCE(NS.Place.ENCOUNTER_DELAY + 1)
	T.eq(Logged("encounter_end"), nil, "ancora in combattimento: nessun commento")
	T.eq(#Director.queue, 0, "e nemmeno un candidato")
	-- fuori dal combattimento sì
	P.combat = false
	FIRE("ENCOUNTER_START", 664, "Magmadar", 9, 40)
	ADVANCE(3)
	FIRE("ENCOUNTER_END", 664, "Magmadar", 9, 40, 1)
	ADVANCE(NS.Place.ENCOUNTER_DELAY + 1)
	T.ok(Logged("encounter_end") ~= nil or #Director.queue > 0, "a combattimento finito il commento viene offerto")
	P.instance, P.instanceType, P.instanceName = false, nil, nil
end)
