-- Test dello step S9: Story Arcs (Systems/StoryArcs.lua), la condizione `arc` del RuleEngine, gli archi di base
-- (Data/Arcs.lua, Data/RegistryArcs.lua e i testi), la scheda del diario, il comando /au storie, lo schema 6 e il
-- collegamento al Narrative Director. La persistenza tra sessioni (/reload) si prova in Tests/run_tests.py.
local NS = ...
local Engine, Config, SA, LM, R, ND = NS.Engine, NS.Config, NS.StoryArcs, NS.LivingMemory, NS.Relationships, NS.NarrativeDirector
local Director, Narrator, Pacing, JournalFrame, Validator = NS.Director, NS.Narrator, NS.Pacing, NS.JournalFrame, NS.Validator

---------------------------------------------------------------------------
-- Aiuti
---------------------------------------------------------------------------
local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end
local function Count(t) local n = 0; for _ in pairs(t or {}) do n = n + 1 end; return n end

local BASE = { "path", "knownface", "fallen", "capitals" }

local function Fresh()
	-- gli archi di prova di un test non restano per il successivo
	local isBase = {}
	for _, id in ipairs(BASE) do isBase[id] = true end
	for i = #SA.order, 1, -1 do
		local id = SA.order[i]
		if not isBase[id] then
			SA.defs[id], SA.texts[id] = nil, nil
			table.remove(SA.order, i)
		end
	end
	NS.cdb.arcs = nil
	NS.cdb.memories = nil
	NS.cdb.relationships = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	R.readOnly = false
	R:Sanitize()
	R.candidates, R.dismissed, R.session = {}, {}, { seen = {}, offered = {} }
	R.interaction, R.questGiver, R.questTaker, R.group, R.groupDirty = nil, nil, nil, nil, true
	NS.Interlocutor:OnInit()
	NS.Place:OnInit()
	SA.readOnly = false
	SA:OnInit()
	SA.BEAT_GAP = 0
	NS.Diagnostics.errors = {}
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.arcs.maxActive = 2
	NS.db.output.privateNarrator = true
	NS.db.output.npcDialogues = false     -- il dialogo ambientale non deve offrirsi sopra le prove degli archi
	TRP3_API = nil
	P.target, P.npc, P.party, P.group, P.raid, P.cinematic = nil, nil, nil, false, false, false
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.resting, P.mapID = "Durotar", "", false, false, 100, 100, false, nil
	P.instance, P.instanceType, P.instanceName, P.instanceID, P.difficulty = false, nil, nil, nil, nil
	P.level, P.race = 30, "Orc"
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	Pacing:Reset()
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	if NS.Personality then NS.Personality:SetArchetype("neutral") end
	SENT = {}
	ADVANCE(300)
end

-- cambia zona: il tempo che passa (a partire da `wait` secondi: un salto lungo), l'evento del client, la valutazione degli archi
local function Zone(zone, wait)
	if wait and wait >= 600 then
		ADVANCE(5)
		LEAP(wait)
	else
		ADVANCE(wait or 5)
	end
	P.zone = zone
	FIRE("ZONE_CHANGED_NEW_AREA")
	ADVANCE(SA.ZONE_DELAY + 1)
end

local function Item(id) return SA:Item(id) end
local function State(id) return SA:State(id) end

local function Spoken()
	local n = 0
	for _, e in ipairs(Director.log) do
		if e.event:find("^arc_") and e.result == "spoken" then n = n + 1 end
	end
	return n
end

local function LastLine()
	local h = Narrator.history[#Narrator.history]
	return h and h.text, h and h.speaker
end

local function Talk(id, name, wowEvent)
	P.npc = { name = name or "Grik", guid = Guid(id), sex = 2, reaction = 5 }
	ADVANCE(16)
	FIRE(wowEvent or "GOSSIP_SHOW")
	ADVANCE(1)
end

local function Printed()
	local out = {}
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) == "PRINT:" then table.insert(out, s) end
	end
	return table.concat(out, "\n")
end

local function Cmd(text)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN(text)
	return Printed()
end

-- arco di prova: si apre dall'evento `level`, poi due passi (uno con scelta, uno dal giocatore)
local function TestArc(id, extra)
	local def = {
		choices = { pick = { options = { "a", "b" } } },
		steps = {
			{ from = "LOCKED", to = "DISCOVERED", on = { "level" }, when = { levelMin = 1 } },
			{ from = "DISCOVERED", to = "REFLECTED", on = { "player" }, choose = "pick" },
			{ from = "REFLECTED", to = "RESOLVED", on = { "level" } },
		},
	}
	for k, v in pairs(extra or {}) do def[k] = v end
	NS:RegisterArcs({ pack = "t_arcs", arcs = { [id] = def } })
end

-- toglie gli archi di prova dal registro
local function Forget(...)
	for _, id in ipairs({ ... }) do
		SA.defs[id] = nil
		for i = #SA.order, 1, -1 do
			if SA.order[i] == id then table.remove(SA.order, i) end
		end
	end
end

local function Problems(def) return SA:Validate(def) end

local function HasProblem(def, text)
	for _, msg in ipairs(Problems(def)) do
		if msg:find(text, 1, true) then return true end
	end
	return false
end

---------------------------------------------------------------------------
-- Registro e validazione delle definizioni
---------------------------------------------------------------------------
T.run("gli archi di base sono registrati, validi e con i testi in italiano e inglese", function()
	Fresh()
	for _, id in ipairs(BASE) do
		local def = SA.defs[id]
		T.ok(def ~= nil, id .. ": registrato")
		T.ok(def and not def.bad, id .. ": valido")
		T.eq(#Problems(def), 0, id .. ": nessun problema di definizione")
		for _, lang in ipairs({ "it", "en" }) do
			local t = SA.texts[id] and SA.texts[id][lang]
			T.ok(t and t.title and t.summary, id .. ": titolo e racconto " .. lang)
			for _, s in ipairs(def.states) do
				if s ~= "LOCKED" then T.ok(t and t.states and t.states[s], id .. ": racconto di " .. s .. " (" .. lang .. ")") end
			end
		end
	end
	T.eq(#SA.order, 4, "quattro archi di base")
	local problems = SA:Check()
	local msgs = {}
	for _, p in ipairs(problems) do table.insert(msgs, p.level .. " " .. p.key .. ": " .. p.msg) end
	T.eq(#problems, 0, "nessun problema negli archi: " .. table.concat(msgs, "; "))
	local r = Validator:Run()
	T.eq(#r.errors, 0, "il validatore non trova errori")
	T.eq(#r.warnings, 0, "né avvisi")
	-- ogni passo di ogni arco ha almeno una battuta: la copertura per scelta, in entrambe le lingue
	for _, id in ipairs(BASE) do
		local def = SA.defs[id]
		for i, step in ipairs(def.steps) do
			local event = step.from == "LOCKED" and "arc_open" or (step.to == "RESOLVED" and "arc_resolve" or "arc_step")
			local options = step.choose and def.choices[step.choose].options or { false }
			for _, opt in ipairs(options) do
				for _, lang in ipairs({ "it", "en" }) do
					NS.db.locale = lang
					local choices = {}
					if step.to == "RESOLVED" or step.to == "REFLECTED" then
						-- la scelta dell'arco: la sua chiave è nel passo che la chiede
						for _, s2 in ipairs(def.steps) do
							if s2.choose and (s2.to == step.to or step.to == "RESOLVED") then
								choices[s2.choose] = opt or def.choices[s2.choose].options[1]
							end
						end
					end
					local extra = { arc = { id = id, state = step.to, from = step.from, choices = choices, beat = true, withSubject = false } }
					if def.subject then
						extra.otherSubject = { kind = "npc", key = "npc:295", name = "Innkeeper Farley", npcID = 295 }
						extra.relationSubject = { kind = "npc", id = 295 }
					end
					local ctx = NS:BuildContext(extra)
					local rec = Engine:PickEntry(event, ctx, "say") or Engine:PickEntry(event, ctx, "emote")
					T.ok(rec ~= nil, ("%s passo %d (%s, %s): una battuta in %s"):format(id, i, step.to, tostring(opt), lang))
					if rec then
						T.ok(rec.speaker == "inner" or rec.speaker == "narrator", rec.id .. ": voce privata")
					end
				end
			end
		end
	end
	NS.db.locale = "it"
end)

T.run("una definizione sbagliata apposta viene segnalata", function()
	Fresh()
	local function Def(extra)
		local d = { id = "x", choices = { c = { options = { "a", "b" } } }, steps = {
			{ from = "LOCKED", to = "DISCOVERED", on = { "zone" } },
			{ from = "DISCOVERED", to = "REFLECTED", on = { "zone" } },
			{ from = "REFLECTED", to = "RESOLVED", on = { "zone" } },
		} }
		for k, v in pairs(extra or {}) do d[k] = v end
		return d
	end
	T.eq(#Problems(Def()), 0, "la definizione di partenza è valida")
	T.ok(HasProblem(Def({ id = "Troppo Lungo Per Essere Un Id" }), "id non valido"), "id non valido")
	T.ok(HasProblem(Def({ id = "UPPER" }), "id non valido"), "id in maiuscole")
	T.ok(HasProblem(Def({ reward = { gold = 10 } }), "campo sconosciuto 'reward'"), "nessuna ricompensa: il campo non esiste")
	T.ok(HasProblem(Def({ quest = 12 }), "campo sconosciuto 'quest'"), "nessuna quest: il campo non esiste")
	T.ok(HasProblem(Def({ states = { "DISCOVERED", "RESOLVED" } }), "almeno tre stati"), "pochi stati")
	T.ok(HasProblem(Def({ states = { "OPEN", "X", "RESOLVED" } }), "primo stato deve essere LOCKED"), "primo stato")
	T.ok(HasProblem(Def({ states = { "LOCKED", "X", "END" } }), "ultimo stato deve essere RESOLVED"), "ultimo stato")
	T.ok(HasProblem(Def({ states = { "LOCKED", "x", "RESOLVED" } }), "stato non valido"), "stato in minuscole")
	T.ok(HasProblem(Def({ states = { "LOCKED", "X", "X", "RESOLVED" } }), "ripetuto"), "stato ripetuto")
	T.ok(HasProblem(Def({ subject = "player" }), "subject può essere solo 'npc'"), "subject")
	local d = Def()
	d.steps[2] = { from = "DISCOVERED", to = "RESOLVED", on = { "zone" } }
	T.ok(HasProblem(d, "si va solo allo stato successivo"), "niente salti di stato")
	d = Def()
	d.steps[2] = { from = "REFLECTED", to = "DISCOVERED", on = { "zone" } }
	T.ok(HasProblem(d, "si va solo allo stato successivo"), "niente passi indietro")
	d = Def()
	d.steps[2].on = { "magia" }
	T.ok(HasProblem(d, "evento 'magia' sconosciuto"), "evento sconosciuto")
	d = Def()
	d.steps[2].on = {}
	T.ok(HasProblem(d, "serve almeno un evento"), "nessun evento")
	d = Def()
	d.steps[1].on = { "player" }
	T.ok(HasProblem(d, "non si apre da solo con una scelta"), "l'apertura non può essere del solo giocatore")
	d = Def()
	d.steps[1].choose = "c"
	T.ok(HasProblem(d, "non può chiedere una scelta"), "l'apertura non può chiedere una scelta")
	d = Def({ subject = "npc" })
	T.ok(HasProblem(d, "evento `npc`"), "un arco con soggetto si apre da un evento npc")
	d = Def()
	d.steps[2].choose = "mai"
	T.ok(HasProblem(d, "scelta 'mai' non definita"), "scelta non definita")
	d = Def()
	d.steps[2].when = { bogus = 1 }
	T.ok(HasProblem(d, "condizione sconosciuta"), "condizione sconosciuta in `when`")
	d = Def()
	d.steps[2].when = { arc = { bogus = 1 } }
	T.ok(HasProblem(d, "campo sconosciuto"), "campo sconosciuto in `arc`")
	d = Def()
	d.steps[2].wait = -3
	T.ok(HasProblem(d, "`wait`"), "attesa negativa")
	d = Def()
	d.steps[2].magic = true
	T.ok(HasProblem(d, "campo sconosciuto 'magic'"), "campo sconosciuto in un passo")
	d = Def()
	d.steps[3] = nil
	T.ok(HasProblem(d, "nessun passo parte dallo stato REFLECTED"), "uno stato senza uscita")
	T.ok(HasProblem(Def({ choices = { c = { options = { "a" } } } }), "da 2 a 3 opzioni"), "una sola opzione")
	T.ok(HasProblem(Def({ choices = { c = { options = { "a", "b", "c", "d" } } } }), "da 2 a 3 opzioni"), "quattro opzioni")
	T.ok(HasProblem(Def({ choices = { c = { options = { "a", "a" } } } }), "ripetuta"), "opzione ripetuta")
	T.ok(HasProblem(Def({ choices = { c = { options = { "A b", "c" } } } }), "opzione non valida"), "opzione non valida")
	T.ok(#Problems("x") > 0 and #Problems(nil) > 0, "una definizione che non è una tabella")
	-- un arco sbagliato resta registrato ma non parte mai
	NS:RegisterArcs({ arcs = { zbad = { id = "zbad", reward = 1, steps = { { from = "LOCKED", to = "DISCOVERED", on = { "zone" } } } } } })
	T.ok(SA.defs.zbad and SA.defs.zbad.bad, "l'arco sbagliato è marcato")
	local moved = SA:Fire("zone")
	for _, m in ipairs(moved) do T.ok(m.id ~= "zbad", "l'arco sbagliato non scatta") end
	T.eq(State("zbad"), "LOCKED", "l'arco sbagliato resta chiuso")
	T.eq(Count(Item("zbad") or {}), 0, "e non ha una voce")
	T.ok(#SA:Check() > 0, "il controllo lo segnala")
	Forget("zbad")
	-- id e chiave diversi
	NS:RegisterArcs({ arcs = { zone1 = { id = "zone2", steps = { { from = "LOCKED", to = "DISCOVERED", on = { "zone" } } } } } })
	T.ok(SA.defs.zone1 and SA.defs.zone1.bad, "chiave e id diversi: arco sbagliato")
	Forget("zone1")
end)

T.run("il controllo dei testi segnala le lingue e le scelte mancanti", function()
	Fresh()
	TestArc("tx1")
	local msgs = {}
	for _, p in ipairs(SA:Check()) do if p.key == "tx1" then table.insert(msgs, p.level .. ": " .. p.msg) end end
	local text = table.concat(msgs, "\n")
	T.ok(text:find("mancano i testi 'it'", 1, true) and text:find("mancano i testi 'en'", 1, true), "mancano i testi nelle due lingue")
	NS:AddArcTexts("itIT", { tx1 = { title = "T", summary = "S", states = { DISCOVERED = "a", REFLECTED = "b" },
		choices = { pick = { prompt = "p", options = { a = { label = "A", note = "n" }, b = { label = "{x}", note = "n" } } } } } })
	msgs = {}
	for _, p in ipairs(SA:Check()) do if p.key == "tx1" and p.msg:find("(it)", 1, true) then table.insert(msgs, p.msg) end end
	text = table.concat(msgs, "\n")
	T.ok(text:find("states.RESOLVED", 1, true), "manca il racconto di RESOLVED")
	T.ok(text:find("niente segnaposto nelle opzioni", 1, true), "segnaposto in un'opzione")
	T.ok(text:find("choices.pick.b.label", 1, true) == nil, "l'etichetta c'è (con il segnaposto da segnalare a parte)")
	SA.texts.tx1 = nil
	Forget("tx1")
end)

T.run("le regole degli eventi arc_* dichiarano l'arco: il validatore lo esige", function()
	Fresh()
	NS:RegisterPack({ id = "t_bad_arc", name = "t", languages = { "itIT", "enUS" },
		registry = {
			["t.bad.arc.1"] = { event = "arc_open", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary", "elevated" } },
			["t.bad.arc.2"] = { event = "arc_step", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary", "elevated" },
				conditions = { arc = { id = "path", state = "VOLATILE" } } },
			["t.bad.arc.3"] = { event = "arc_step", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary", "elevated" },
				conditions = { arc = { id = "inesistente" } } },
		},
		texts = { itIT = { ["t.bad.arc.1"] = "a", ["t.bad.arc.2"] = "b", ["t.bad.arc.3"] = "c" },
			enUS = { ["t.bad.arc.1"] = "a", ["t.bad.arc.2"] = "b", ["t.bad.arc.3"] = "c" } } })
	local msgs = {}
	for _, p in ipairs(SA:Check()) do table.insert(msgs, p.key .. ": " .. p.msg) end
	local text = table.concat(msgs, "\n")
	T.ok(text:find("t.bad.arc.1: evento 'arc_open' senza una condizione arc", 1, true), "senza condizione arc")
	T.ok(text:find("t.bad.arc.2: stato 'VOLATILE' sconosciuto nell'arco 'path'", 1, true), "stato sconosciuto")
	local r = Validator:Run({ packs = { "t_bad_arc" } })
	local conditions = {}
	for _, e in ipairs(r.errors) do if e.id == "t.bad.arc.3" then table.insert(conditions, e.msg) end end
	T.ok(#conditions > 0 and conditions[1]:find("inesistente", 1, true), "id di un arco che non esiste: valore sconosciuto")
	NS.db.disabledPacks.t_bad_arc = true     -- le sue regole sbagliate apposta non devono parlare nei test successivi
end)

---------------------------------------------------------------------------
-- Condizioni del RuleEngine: arc, arcDone, capitalsVisitedMin
---------------------------------------------------------------------------
T.run("le condizioni `arc`, `arcDone` e `capitalsVisitedMin`", function()
	Fresh()
	local view = { id = "path", state = "REFLECTED", choices = { reflect = "silence" }, withSubject = true }
	local ctx = { arc = view, arcs = { done = { fallen = true }, active = 1, max = 2 } }
	T.ok(Engine.Match({ arc = { id = "path" } }, ctx), "id")
	T.ok(not Engine.Match({ arc = { id = "fallen" } }, ctx), "altro id")
	T.ok(Engine.Match({ arc = { state = "REFLECTED" } }, ctx) and not Engine.Match({ arc = { state = "RESOLVED" } }, ctx), "stato")
	T.ok(Engine.Match({ arc = { state = { "RESOLVED", "REFLECTED" } } }, ctx), "stato in un elenco")
	T.ok(Engine.Match({ arc = { choice = "silence" } }, ctx), "scelta fatta")
	T.ok(Engine.Match({ arc = { choice = { "gratitude", "silence" } } }, ctx), "scelta in un elenco")
	T.ok(not Engine.Match({ arc = { choice = "gratitude" } }, ctx), "un'altra scelta")
	T.ok(Engine.Match({ arc = { withSubject = true } }, ctx) and not Engine.Match({ arc = { withSubject = false } }, ctx), "soggetto")
	T.ok(not Engine.Match({ arc = { id = "path" } }, {}), "senza ctx.arc ogni campo richiesto è falso")
	T.ok(Engine.Match({ arc = { choice = false } }, { arc = { choices = {} } }) == false or true, "scelte vuote non rompono")
	T.ok(Engine.Match({ arc = { ["not"] = { id = "fallen" } } }, ctx), "not dentro arc")
	T.ok(Engine.Match({ arc = { any = { { id = "x" }, { id = "path" } } } }, ctx), "any dentro arc")
	T.ok(Engine.Match({ arcDone = "fallen" }, ctx) and not Engine.Match({ arcDone = "path" }, ctx), "arcDone")
	T.ok(Engine.Match({ arcDone = { "path", "fallen" } }, ctx), "arcDone in un elenco")
	T.ok(not Engine.Match({ arcDone = "path" }, {}), "arcDone senza ctx.arcs")
	T.eq(#Engine.CheckConditions({ arc = { id = "path", state = "X", choice = "c", withSubject = true } }), 0, "campi di arc noti")
	T.ok(#Engine.CheckConditions({ arc = { id = "inesistente" } }) > 0, "id di arco sconosciuto")
	T.ok(#Engine.CheckConditions({ arc = { bogus = 1 } }) > 0, "campo sconosciuto")
	T.ok(#Engine.CheckConditions({ arc = { withSubject = "si" } }) > 0, "tipo sbagliato")
	T.eq(#Engine.CheckConditions({ arcDone = "path", capitalsVisitedMin = 2 }), 0, "arcDone e capitalsVisitedMin sono condizioni note")
	-- il contesto
	local real = NS:BuildContext()
	T.ok(type(real.arcs) == "table" and real.arcs.max == 2 and real.arcs.active == 0, "ctx.arcs nel contesto")
	-- capitali visitate
	T.eq(SA.CapitalsVisited(), 0, "nessuna capitale")
	Zone("Orgrimmar")
	Zone("Thunder Bluff")
	T.eq(SA.CapitalsVisited(), 2, "due capitali")
	T.ok(Engine.Match({ capitalsVisitedMin = 2 }, {}) and not Engine.Match({ capitalsVisitedMin = 3 }, {}), "capitalsVisitedMin")
end)

---------------------------------------------------------------------------
-- Il sentiero ritrovato: transizioni lecite e illecite, scelta, chiusura con un ricordo
---------------------------------------------------------------------------
T.run("il sentiero ritrovato: dalla prima apertura al ricordo persistente", function()
	Fresh()
	-- nessun evento vero, nessuna apertura: il tempo da solo non apre nulla
	ADVANCE(5000)
	T.eq(State("path"), "LOCKED", "il tempo da solo non apre l'arco")
	T.eq(Count(SA:Data().items), 0, "nessuna voce")
	-- un evento sbagliato, o con condizioni sbagliate, non apre
	P.level = 11
	T.eq(#SA:Fire("zone"), 0, "livello 11: nessuna apertura")
	P.level = 30
	P.zone = "Westfall"
	T.eq(#SA:Fire("zone"), 0, "fuori dalla zona di partenza: nessuna apertura")
	P.zone = "Durotar"
	T.eq(#SA:Fire("level"), 0, "l'evento `level` non apre questo arco")
	T.eq(#SA:Fire("player"), 0, "il giocatore non apre un arco (`player` non è un evento d'apertura)")
	T.eq(#SA:Fire("bogus"), 0, "evento sconosciuto")
	P.race = "Human"
	T.eq(#SA:Fire("zone"), 0, "un'altra razza ha un'altra zona di partenza")
	P.race = "Orc"
	T.eq(State("path"), "LOCKED", "ancora chiuso")
	T.ok(not LM:HasFlag("arc_path_discovered"), "nessun flag")

	-- l'evento vero: si entra in Durotar al livello 30 (il client dà l'uiMapID oppure il nome della zona)
	P.zone = "Orgrimmar"
	Zone("Durotar")
	T.eq(State("path"), "DISCOVERED", "aperto da un evento vero")
	local item = Item("path")
	T.eq(item.mode, "active", "attivo")
	T.ok(item.t.DISCOVERED and item.since == item.t.DISCOVERED, "momento d'apertura")
	T.ok(LM:HasFlag("arc_path_discovered"), "flag narrativo dello stato")
	T.eq(SA:ActiveCount(), 1, "un arco attivo")
	T.eq(Spoken(), 1, "una battuta di apertura")
	local text, speaker = LastLine()
	T.ok(text and (speaker == "inner" or speaker == "narrator"), "voce privata: " .. tostring(speaker))
	T.eq(#SA.owed, 0, "nessuna battuta in attesa")
	local last = Director.log[#Director.log]
	T.eq(last.event, "arc_open", "evento arc_open")
	T.eq(ND:Priority("arc_open"), ND.PRIORITY.exceptional, "priorità: evento eccezionale")

	-- passi illeciti
	T.ok(not SA:Choose("path", "silence"), "non c'è ancora una scelta (attesa non passata)")
	local def = SA.defs.path
	T.eq(select(2, SA:Apply(def, 3, {})), "illegal", "un passo che non parte dallo stato attuale è illecito")
	T.eq(select(2, SA:Apply(def, 1, {})), "illegal", "né si riapre")
	T.eq(select(2, SA:Apply(def, 99, {})), "unknown", "né un passo che non esiste")
	T.ok(not SA:Start("path"), "non si avvia ciò che è già avviato")

	-- passo 2: serve l'attesa (120 s) e la zona di partenza; l'evento dà una scelta in attesa
	T.eq(#SA:Fire("zone"), 0, "troppo presto: l'attesa non è passata")
	ADVANCE(125)
	P.zone = "Westfall"
	T.eq(#SA:Fire("zone"), 0, "fuori dalla zona di partenza non si medita")
	P.zone = "Durotar"
	local moved = SA:Fire("zone")
	T.eq(#moved, 1, "passo 2")
	T.eq(moved[1].result, "pending", "il passo aspetta la scelta del giocatore")
	T.eq(State("path"), "DISCOVERED", "lo stato non cambia da solo")
	T.ok(Item("path").pending ~= nil, "scelta in attesa")
	T.eq(#SA:Fire("zone"), 0, "con una scelta in attesa l'arco non si muove da solo")
	local offer = SA:Offering("path")
	T.ok(offer and offer.pending and #offer.options == 3 and offer.choose == "reflect", "l'offerta ha le tre opzioni")
	T.ok(not SA:Choose("path", "inventata"), "opzione che non esiste")
	T.eq(select(2, SA:Choose("path", "inventata")), "bad_option", "motivo: opzione sbagliata")
	T.ok(not SA:Choose("path"), "senza opzione non si sceglie")
	T.eq(State("path"), "DISCOVERED", "ancora fermo")
	ADVANCE(100)
	T.ok(SA:Choose("path", "gratitude"), "scelta valida")
	item = Item("path")
	T.eq(item.state, "REFLECTED", "meditato")
	T.eq(item.choices.reflect, "gratitude", "la scelta è salvata come id di opzione")
	T.eq(item.pending, nil, "nessuna scelta in attesa")
	T.ok(LM:HasFlag("arc_path_reflected"), "flag")
	ADVANCE(5)
	T.eq(Spoken(), 2, "la battuta della scelta")
	T.eq(Director.log[#Director.log].event, "arc_step", "evento arc_step")
	T.ok(not SA:Choose("path", "silence"), "non si sceglie due volte")

	-- passo 3: si chiude lasciando la zona (dopo l'attesa)
	T.eq(#SA:Fire("zone"), 0, "ancora nella zona di partenza")
	P.zone = "Westfall"
	T.eq(#SA:Fire("zone"), 0, "troppo presto (attesa di 60 s)")
	ADVANCE(65)
	local before = Count(LM:Data().entries)
	T.eq(#SA:Fire("zone"), 1, "passo 3")
	item = Item("path")
	T.eq(item.state, "RESOLVED", "concluso")
	T.ok(item.ended, "momento della chiusura")
	T.ok(LM:HasFlag("arc_path_resolved"), "flag di chiusura")
	T.eq(Count(LM:Data().entries), before + 1, "un ricordo in più")
	local e = LM:Data().entries[#LM:Data().entries]
	T.eq(e.kind, "story", "tipo `story`")
	T.ok(e.perm, "permanente")
	T.eq(e.source, "addon", "origine addon")
	T.ok(e.importance >= LM.PERSIST_MIN, "salvato")
	local tags = table.concat(e.tags, ",")
	T.ok(tags:find("arc", 1, true) and tags:find("path", 1, true), "tag con l'id dell'arco: " .. tags)
	T.eq(item.memoryId, e.id, "l'arco conosce il suo ricordo")
	T.ok(LM:Describe(e):find("Il sentiero ritrovato", 1, true), "il diario descrive il ricordo con il titolo")
	T.eq(SA:Data().stats.resolved, 1, "statistiche")
	T.ok(SA:Context().done.path, "ctx.arcs: concluso")
	T.eq(SA:ActiveCount(), 0, "nessun arco attivo")
	ADVANCE(5)
	T.eq(Director.log[#Director.log].event, "arc_resolve", "evento arc_resolve")
	-- un arco concluso non si muove più
	P.zone = "Durotar"
	T.eq(#SA:Fire("zone"), 0, "concluso: nessun passo")
	T.ok(not SA:Choose("path", "silence"), "concluso: nessuna scelta")
	T.ok(not SA:Skip("path"), "né si salta")
	T.ok(not SA:Suspend("path") and not SA:Disable("path"), "né si sospende o disattiva")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore intercettato")
end)

T.run("la scelta si può fare anche dal giocatore, a un passo `player`", function()
	Fresh()
	Zone("Orgrimmar")
	Zone("Durotar")
	T.eq(State("path"), "DISCOVERED", "aperto")
	T.eq(SA:Offering("path"), nil, "attesa non passata: nessuna offerta")
	ADVANCE(130)
	local offer = SA:Offering("path")
	T.ok(offer and not offer.pending and offer.choose == "reflect", "dopo l'attesa, nella zona giusta, il giocatore può sceglierla")
	P.zone = "Westfall"
	T.eq(SA:Offering("path"), nil, "fuori dalla zona di partenza l'offerta non c'è")
	T.eq(select(2, SA:Choose("path", "silence")), "nothing", "e la scelta è rifiutata")
	P.zone = "Durotar"
	T.ok(SA:Choose("path", "silence"), "scelta dal diario")
	T.eq(State("path"), "REFLECTED", "meditato")
	T.eq(Item("path").choices.reflect, "silence", "scelta salvata")
end)

---------------------------------------------------------------------------
-- Le tre porte: stati propri, capitali visitate, passo solo del giocatore
---------------------------------------------------------------------------
T.run("le tre porte: uno stato proprio e una riflessione solo del giocatore", function()
	Fresh()
	local def = SA.defs.capitals
	T.eq(table.concat(def.states, ","), "LOCKED,DISCOVERED,JOURNEY,REFLECTED,RESOLVED", "stati propri")
	Zone("Orgrimmar")
	T.eq(State("capitals"), "LOCKED", "una capitale non basta")
	Zone("Thunder Bluff")
	T.eq(State("capitals"), "DISCOVERED", "la seconda capitale apre l'arco")
	Zone("Orgrimmar")
	T.eq(State("capitals"), "DISCOVERED", "una capitale già vista non conta due volte")
	Zone("Undercity")
	T.eq(State("capitals"), "JOURNEY", "la terza porta: stato proprio JOURNEY")
	T.ok(LM:HasFlag("arc_capitals_journey"), "flag dello stato proprio")
	T.eq(SA:StateLabel("capitals", "JOURNEY"), "tre porte attraversate", "nome dello stato proprio")
	T.eq(SA:StateLabel("capitals", "DISCOVERED"), "scoperta", "nome di uno stato di base")
	-- la riflessione parte solo dal giocatore, dopo la pausa
	T.eq(#SA:Fire("zone"), 0, "nessun evento fa avanzare il passo del giocatore")
	T.eq(SA:Offering("capitals"), nil, "prima della pausa niente offerta")
	Zone("Durotar", 700)
	T.eq(State("capitals"), "JOURNEY", "uscire dalla capitale non basta")
	P.zone = "Undercity"
	local offer = SA:Offering("capitals")
	T.ok(offer and not offer.pending and #offer.options == 3, "dopo la pausa il giocatore può scegliere")
	T.ok(SA:Choose("capitals", "promise"), "scelta")
	T.eq(State("capitals"), "REFLECTED", "meditato")
	-- la strada aperta chiude
	ADVANCE(30)
	Zone("Orgrimmar")
	T.eq(State("capitals"), "REFLECTED", "in una capitale non si chiude")
	Zone("Durotar", 70)
	T.eq(State("capitals"), "RESOLVED", "in strada si chiude")
	T.ok(LM:HasFlag("arc_capitals_resolved"), "flag")
end)

---------------------------------------------------------------------------
-- Il luogo della caduta: una perdita; argomento che il Character Soul può evitare
---------------------------------------------------------------------------
T.run("il luogo della caduta: apertura dalla morte, ritorno e chiusura con il livello", function()
	Fresh()
	P.level = 9
	P.zone = "Durotar"
	FIRE("ZONE_CHANGED_NEW_AREA")
	ADVANCE(5)
	P.level = 9
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(5)
	T.eq(State("fallen"), "LOCKED", "livello 9: una morte non apre l'arco")
	P.dead = false
	FIRE("PLAYER_ALIVE")
	ADVANCE(100)
	P.level = 30
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(5)
	T.eq(State("fallen"), "DISCOVERED", "la morte apre l'arco")
	T.ok(LM:HasFlag("first_death") and LM:HasFlag("arc_fallen_discovered"), "i flag della morte e dell'arco")
	-- la battuta di apertura aspetta che il personaggio sia vivo
	T.eq(Spoken(), 0, "da morto non parla")
	T.eq(#SA.owed, 1, "la battuta aspetta")
	P.dead = false
	FIRE("PLAYER_ALIVE")
	ADVANCE(30)
	T.eq(Spoken() >= 1, true, "da vivo la battuta arriva")
	T.eq(#SA.owed, 0, "nessuna battuta in attesa")
	-- il ritorno nel luogo della caduta: serve una nuova visita dopo la fine dell'ultima, e l'attesa di 1800 s
	Zone("The Barrens", 700)
	Zone("Durotar", 700)
	T.eq(NS:BuildContext().memory.lastBadKind, "death", "la memoria dice che l'ultima visita è finita male")
	T.eq(State("fallen"), "DISCOVERED", "attesa di 1800 s non passata")
	Zone("The Barrens", 700)
	Zone("Durotar", 1900)
	T.eq(State("fallen"), "DISCOVERED", "la visita precedente non era finita male: non c'è il ritorno nel luogo della caduta")
	-- ripetere la morte per segnare il luogo
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(5)
	P.dead = false
	FIRE("PLAYER_ALIVE")
	Zone("The Barrens", 700)
	ADVANCE(1900)
	Zone("Durotar", 700)
	T.eq(NS:BuildContext().memory.lastBadKind, "death", "ritorno nel luogo dell'ultima caduta")
	T.ok(Item("fallen").pending ~= nil, "il passo aspetta la scelta")
	T.eq(SA:Offering("fallen").choose, "stance", "scelta: come si sta nel luogo")
	T.ok(SA:Choose("fallen", "prepare"), "scelta")
	T.eq(State("fallen"), "REFLECTED", "meditato")
	ADVANCE(5)
	-- livello: attesa di 300 s dopo la meditazione
	FIRE("PLAYER_LEVEL_UP", 31)
	ADVANCE(5)
	T.eq(State("fallen"), "REFLECTED", "troppo presto")
	ADVANCE(310)
	FIRE("PLAYER_LEVEL_UP", 32)
	ADVANCE(5)
	T.eq(State("fallen"), "RESOLVED", "il livello chiude l'arco")
end)

T.run("un argomento evitato dal personaggio: l'arco non si apre", function()
	Fresh()
	NS.Personality:SetTrait("avoid", { death = true })
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(5)
	T.eq(State("fallen"), "LOCKED", "avoid death: l'arco della caduta non si apre")
	T.eq(Count(SA:Data().items), 0, "nessuna voce")
	P.dead = false
	NS.Personality:SetTrait("avoid", nil)
	FIRE("PLAYER_ALIVE")
	ADVANCE(100)
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(5)
	T.eq(State("fallen"), "DISCOVERED", "senza l'argomento evitato si apre")
	-- un argomento evitato dopo l'apertura ferma anche i passi
	NS.Personality:SetTrait("avoid", { death = true })
	P.dead = false
	Zone("The Barrens", 700)
	Zone("Durotar", 1900)
	T.eq(Item("fallen").pending, nil, "evitato: nessun passo avanza")
	NS.Personality:SetTrait("avoid", nil)
end)

---------------------------------------------------------------------------
-- Un volto noto: un NPC conosciuto, con le relazioni di S6b
---------------------------------------------------------------------------
T.run("un volto noto: si lega a un NPC conosciuto e cresce con la familiarità", function()
	Fresh()
	Talk(295, "Innkeeper Farley")
	T.eq(State("knownface"), "LOCKED", "uno sconosciuto non apre l'arco")
	local rec = R:Get("npc", 295)
	T.ok(rec ~= nil, "la relazione esiste")
	rec.familiarity = 20
	Talk(295, "Innkeeper Farley")
	T.eq(State("knownface"), "LOCKED", "familiarità 20: non basta")
	rec.familiarity = 30
	-- un NPC che non ha un ruolo adatto (una guardia) non conta
	Talk(240, "Marshal Dughan")
	R:Get("npc", 240).familiarity = 60
	Talk(240, "Marshal Dughan")
	T.eq(State("knownface"), "LOCKED", "una guardia non ha un ruolo adatto")
	-- quest e interazioni con un giocatore non aprono
	Talk(295, "Innkeeper Farley", "QUEST_DETAIL")
	T.eq(State("knownface"), "LOCKED", "una quest non apre l'arco (restano di Blizzard)")
	Talk(295, "Innkeeper Farley")
	T.eq(State("knownface"), "DISCOVERED", "un NPC conosciuto, con un ruolo, apre l'arco")
	local item = Item("knownface")
	T.eq(item.subject.npcID, 295, "legato a quell'NPC")
	T.eq(item.subject.name, "Innkeeper Farley", "con il suo nome")
	T.ok(LM:HasFlag("arc_knownface_discovered"), "flag")
	local text = LastLine()
	T.ok(text and text:find("Innkeeper Farley", 1, true), "la battuta dice il nome dell'NPC: " .. tostring(text))
	-- passi: solo con lo stesso NPC
	ADVANCE(4000)
	local other = R:Get("npc", 6740) or (function() Talk(6740, "Innkeeper Allison"); return R:Get("npc", 6740) end)()
	other.familiarity = 70
	rec.familiarity = 30
	Talk(6740, "Innkeeper Allison")
	T.eq(State("knownface"), "DISCOVERED", "un altro NPC non fa avanzare l'arco")
	Talk(295, "Innkeeper Farley")
	T.eq(State("knownface"), "DISCOVERED", "familiarità 30: non basta (serve 40)")
	rec.familiarity = 45
	Talk(295, "Innkeeper Farley")
	T.ok(Item("knownface").pending ~= nil, "la scelta aspetta")
	T.eq(SA:Offering("knownface").choose, "feeling", "scelta")
	T.ok(SA:Choose("knownface", "remember"), "scelta")
	T.eq(State("knownface"), "REFLECTED", "meditato")
	ADVANCE(5)
	text = LastLine()
	T.ok(text and text:find("Innkeeper Farley", 1, true), "anche la battuta della scelta dice il nome")
	-- chiusura: attesa di un'ora e familiarità 55
	rec.familiarity = 60
	Talk(295, "Innkeeper Farley")
	T.eq(State("knownface"), "REFLECTED", "troppo presto (un'ora)")
	ADVANCE(3700)
	Talk(295, "Innkeeper Farley")
	T.eq(State("knownface"), "RESOLVED", "il rapporto è maturo: l'arco si chiude")
	-- nessun dato dell'NPC è stato toccato oltre alle relazioni dell'addon
	T.eq(Count(Item("knownface").choices), 1, "una scelta salvata")
end)

---------------------------------------------------------------------------
-- Limite degli archi attivi, sospendere, saltare, disattivare
---------------------------------------------------------------------------
T.run("al massimo due archi attivi: il terzo resta disponibile", function()
	Fresh()
	TestArc("t1"); TestArc("t2"); TestArc("t3")
	local moved = SA:Fire("level")
	local results = {}
	for _, m in ipairs(moved) do results[m.id] = m.result end
	T.eq(results.t1, "moved", "primo arco")
	T.eq(results.t2, "moved", "secondo arco")
	T.eq(results.t3, "waiting", "terzo arco: nessun posto")
	T.eq(SA:ActiveCount(), 2, "due attivi")
	T.eq(State("t3"), "LOCKED", "il terzo resta chiuso")
	T.ok(Item("t3").waiting and Item("t3").waitStep == 1, "ma disponibile")
	local list = SA:Listing()
	T.eq(#list.active, 2, "due nell'elenco degli attivi")
	T.eq(#list.available, 1, "uno tra i disponibili")
	T.eq(list.available[1].id, "t3", "il terzo")
	-- un nuovo evento non lo apre da solo, né apre altro
	T.eq(#SA:Fire("level"), 0, "un secondo evento non cambia nulla (i primi due aspettano la scelta, il terzo il giocatore)")
	T.eq(State("t3"), "LOCKED", "ancora chiuso")
	local ok, why = SA:Start("t3")
	T.ok(not ok and why == "full", "non si avvia senza un posto libero")
	-- sospenderne uno libera un posto
	T.ok(SA:Suspend("t1"), "sospeso")
	T.eq(SA:ActiveCount(), 1, "un attivo")
	T.ok(SA:Start("t3"), "ora il terzo si può avviare")
	T.eq(State("t3"), "DISCOVERED", "avviato dal giocatore")
	T.eq(SA:ActiveCount(), 2, "due attivi")
	ok, why = SA:Resume("t1")
	T.ok(not ok and why == "full", "riprendere t1 non è possibile: posti finiti")
	T.eq(Item("t1").mode, "suspended", "resta sospeso")
	-- un solo posto
	T.ok(SA:SetMaxActive(1), "massimo 1")
	T.eq(NS.db.arcs.maxActive, 1, "salvato")
	T.eq(SA:MaxActive(), 1, "letto")
	T.ok(not SA:HasSlot(), "nessun posto (due attivi, limite 1)")
	T.ok(SA:SetMaxActive(7) and NS.db.arcs.maxActive == 2, "7 diventa 2 (limite)")
	T.ok(SA:SetMaxActive(0) and NS.db.arcs.maxActive == 1, "0 diventa 1 (limite)")
	T.ok(not SA:SetMaxActive("boh"), "valore non numerico")
	NS.db.arcs.maxActive = 2
	Forget("t1", "t2", "t3")
end)

T.run("sospendere, riprendere, saltare, disattivare e riattivare", function()
	Fresh()
	TestArc("t1"); TestArc("t2")
	SA:Fire("level")
	T.eq(SA:ActiveCount(), 2, "due attivi")
	-- sospendere
	T.ok(SA:Suspend("t1"), "sospendi")
	T.eq(Item("t1").mode, "suspended", "sospeso")
	T.eq(State("t1"), "DISCOVERED", "lo stato resta com'è")
	T.eq(SA:ActiveCount(), 1, "non occupa un posto")
	T.ok(not SA:Suspend("t1"), "non si sospende due volte")
	T.ok(not SA:Choose("t1", "a"), "sospeso: nessuna scelta")
	T.eq(SA:Offering("t1"), nil, "sospeso: nessuna offerta")
	T.eq(#SA:Fire("level"), 0, "sospeso: nessun passo")
	T.eq(#SA:Listing().active, 2, "sospeso resta tra gli attivi, segnato come tale")
	T.ok(SA:Resume("t1"), "riprendi")
	T.eq(Item("t1").mode, "active", "attivo")
	T.ok(SA:Choose("t1", "a"), "ora si può scegliere")
	T.eq(State("t1"), "REFLECTED", "avanza")
	-- saltare
	T.ok(SA:Skip("t2"), "salta")
	T.eq(Item("t2").mode, "skipped", "saltato")
	T.eq(SA:ActiveCount(), 1, "non occupa un posto")
	T.ok(Item("t2").ended, "momento del salto")
	T.eq(SA:Data().stats.skipped, 1, "statistiche")
	T.ok(not SA:Skip("t2"), "non si salta due volte")
	T.ok(not SA:Choose("t2", "a"), "saltato: nessuna scelta")
	T.eq(#SA:Fire("level"), 1, "t1 si chiude, t2 saltato no")
	T.eq(State("t2"), "DISCOVERED", "t2 fermo")
	local list = SA:Listing()
	T.eq(#list.skipped, 1, "tra i saltati")
	T.eq(#list.resolved, 1, "e t1 tra i conclusi")
	T.ok(SA:Resume("t2"), "un arco saltato si può riprendere")
	T.eq(Item("t2").mode, "active", "attivo di nuovo")
	T.eq(Item("t2").ended, nil, "senza data di chiusura")
	-- disattivare, anche un arco mai aperto
	T.ok(SA:Disable("t2"), "disattiva")
	T.eq(Item("t2").mode, "off", "disattivato")
	T.eq(SA:ActiveCount(), 0, "nessun attivo")
	T.ok(not SA:Disable("t2"), "non due volte")
	TestArc("t4")
	T.ok(SA:Disable("t4"), "disattivato prima ancora di aprirsi")
	SA:Fire("level")
	T.eq(State("t4"), "LOCKED", "un arco disattivato non si apre all'evento giusto")
	T.ok(SA:Enable("t4"), "riattivato")
	SA:Fire("level")
	T.eq(State("t4"), "DISCOVERED", "ora si apre")
	T.ok(SA:Enable("t2"), "riattiva t2")
	T.eq(Item("t2").mode, "active", "t2 attivo (c'era un posto)")
	T.ok(not SA:Enable("t2"), "già attivo")
	-- riattivare a posti finiti: torna sospeso
	TestArc("t5")
	SA:Disable("t2")
	SA:Fire("level")      -- t5 si apre
	T.eq(SA:ActiveCount(), 2, "t4 e t5 attivi")
	T.ok(SA:Enable("t2"), "riattiva t2")
	T.eq(Item("t2").mode, "suspended", "a posti finiti torna sospeso")
	-- scelte e passi si cancellano
	T.ok(not SA:Suspend("inesistente") and not SA:Skip("inesistente") and not SA:Disable("inesistente"), "arco sconosciuto")
	Forget("t1", "t2", "t4", "t5")
end)

T.run("tutti gli archi insieme: sospendi tutti, salta tutti, spegni il modulo", function()
	Fresh()
	TestArc("t1"); TestArc("t2"); TestArc("t3")
	SA:Fire("level")      -- t1 e t2 attivi, t3 disponibile
	T.eq(SA:ForAll("suspend"), 3, "sospesi tutti (anche il disponibile)")
	T.eq(SA:ActiveCount(), 0, "nessun attivo")
	T.eq(SA:ForAll("suspend"), 0, "niente da sospendere")
	T.ok(SA:Resume("t1") and SA:Resume("t2"), "ripresi due")
	T.eq(SA:ForAll("skip"), 3, "saltati tutti")
	T.eq(Item("t1").mode .. Item("t2").mode .. Item("t3").mode, "skippedskippedskipped", "tutti saltati")
	T.eq(#SA:Listing().skipped, 3, "tutti tra i saltati")
	T.eq(#SA:Fire("level"), 0, "nessun arco si muove")
	-- il modulo spento ferma tutto
	Fresh()
	TestArc("t1")
	SA:SetEnabled(false)
	T.ok(not SA:Enabled(), "spento")
	T.eq(NS.db.modules.storyArcs, false, "il modulo è spento")
	T.eq(#SA:Fire("level"), 0, "modulo spento: nessun passo")
	T.eq(State("t1"), "LOCKED", "nessuna apertura")
	T.ok(not SA:Choose("t1", "a") and not SA:Start("t1"), "né scelte né avvii")
	T.eq(select(2, SA:Choose("t1", "a")), "disabled", "motivo")
	SA:SetEnabled(true)
	T.eq(#SA:Fire("level"), 1, "riacceso: l'arco si apre")
	-- anche il modulo spento a metà non perde lo stato
	SA:SetEnabled(false)
	T.eq(State("t1"), "DISCOVERED", "lo stato resta")
	SA:SetEnabled(true)
	NS.db.enabled = false
	T.ok(not SA:Enabled() and #SA:Fire("level") == 0, "addon spento: nessun passo")
	NS.db.enabled = true
	Forget("t1", "t2", "t3")
end)

---------------------------------------------------------------------------
-- Battute: Narrative Director, priorità, deferimento, nessuna cascata
---------------------------------------------------------------------------
local function BeatPack(ids)
	local registry, it, en = {}, {}, {}
	for _, id in ipairs(ids) do
		registry["t.beat." .. id] = { event = "arc_open", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary", "elevated" },
			conditions = { arc = { id = id, state = "DISCOVERED" } } }
		it["t.beat." .. id] = "battuta di " .. id
		en["t.beat." .. id] = "beat of " .. id
	end
	if not Engine.packs.t_beats then
		NS:RegisterPack({ id = "t_beats", name = "t", languages = { "itIT", "enUS" }, registry = registry, texts = { itIT = it, enUS = en } })
	end
end

T.run("le battute: un momento tranquillo, rimandate se il momento non è buono", function()
	Fresh()
	TestArc("t1"); TestArc("t2")
	BeatPack({ "t1", "t2" })
	-- in combattimento la battuta aspetta, lo stato no
	P.combat = true
	SA:Fire("level")
	ADVANCE(5)
	T.eq(State("t1"), "DISCOVERED", "lo stato avanza anche in combattimento")
	T.eq(Spoken(), 0, "ma il narratore tace")
	T.eq(#SA.owed, 2, "le battute aspettano")
	ADVANCE(100)
	T.eq(Spoken(), 0, "continua a tacere finché dura il combattimento")
	P.combat = false
	FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(5)
	T.eq(Spoken(), 1, "a fine scontro parla una battuta")
	T.eq(#SA.owed, 1, "l'altra aspetta (nessuna cascata: una sola battuta alla volta)")
	ADVANCE(30)
	T.eq(Spoken(), 2, "poi arriva anche l'altra")
	T.eq(#SA.owed, 0, "nessuna battuta in attesa")
	local lines = {}
	for _, h in ipairs(Narrator.history) do table.insert(lines, h.text) end
	local all = NS.Lower(table.concat(lines, "|"))
	T.ok(all:find("battuta di t1", 1, true) and all:find("battuta di t2", 1, true), "entrambe le battute sono state dette: " .. all)
end)

T.run("nessuna cascata: due battute di archi sono separate da BEAT_GAP", function()
	Fresh()
	TestArc("t1"); TestArc("t2")
	BeatPack({ "t1", "t2" })
	SA.BEAT_GAP = 90
	SA.lastBeat = nil
	SA:Fire("level")
	ADVANCE(1)
	T.eq(Spoken(), 1, "la prima battuta")
	ADVANCE(40)
	T.eq(Spoken(), 1, "dopo 40 s la seconda non c'è ancora")
	T.eq(#SA.owed, 1, "è in attesa")
	ADVANCE(60)
	T.eq(Spoken(), 2, "dopo BEAT_GAP anche la seconda")
	SA.BEAT_GAP = 0
	-- il narratore spontaneo non può parlare sopra: il Director dà una sola battuta per momento
	T.eq(#Narrator.history, 2, "due righe in tutto")
end)

T.run("una battuta decade dopo OWED_TTL, ma lo stato resta", function()
	Fresh()
	TestArc("t1")
	BeatPack({ "t1" })
	P.combat = true
	SA:Fire("level")
	ADVANCE(5)
	T.eq(#SA.owed, 1, "in attesa")
	ADVANCE(SA.OWED_TTL + 60)
	T.eq(#SA.owed, 0, "decaduta")
	T.eq(State("t1"), "DISCOVERED", "lo stato resta")
	P.combat = false
	ADVANCE(100)
	T.eq(Spoken(), 0, "non parla più")
end)

T.run("silenzio e pausa: lo stato avanza, la battuta no (o aspetta)", function()
	Fresh()
	TestArc("t1"); TestArc("t2")
	BeatPack({ "t1", "t2" })
	NS.db.intensity = 0
	SA:Fire("level")
	ADVANCE(5)
	T.eq(State("t1"), "DISCOVERED", "intensità 0: lo stato avanza")
	T.eq(Spoken(), 0, "ma il narratore tace")
	T.eq(#SA.owed, 0, "e non resta nulla da dire: il silenzio chiesto vale")
	local log = Director.log[#Director.log]
	T.eq(log.result, "silent", "esito: silenzio")
	Fresh()
	TestArc("t1")
	BeatPack({ "t1" })
	NS.paused = true
	SA:Fire("level")
	ADVANCE(5)
	T.eq(Spoken(), 0, "in pausa non parla")
	T.eq(#SA.owed, 1, "ma la battuta aspetta la fine della pausa")
	NS.paused = false
	ADVANCE(30)
	T.eq(Spoken(), 1, "dopo la pausa parla")
	Fresh()
	TestArc("t1")
	BeatPack({ "t1" })
	NS.db.modules.storyArcs = false
	SA:Fire("level")
	T.eq(#SA.owed, 0, "modulo spento: nessuna battuta")
	NS.db.modules.storyArcs = true
	-- il modulo spento tra il passo e la battuta
	Fresh()
	TestArc("t1")
	BeatPack({ "t1" })
	P.combat = true
	SA:Fire("level")
	NS.db.modules.storyArcs = false
	P.combat = false
	ADVANCE(60)
	T.eq(Spoken(), 0, "nessuna battuta con il modulo spento")
	NS.db.modules.storyArcs = true
	Forget("t1", "t2")
end)

T.run("le battute escono solo dal passo di un arco", function()
	Fresh()
	for _, ev in ipairs({ "arc_open", "arc_step", "arc_resolve" }) do
		T.ok(not NS:Trigger(ev), ev .. ": /au evento non produce nulla")
		T.ok(Engine:PickEntry(ev, NS:BuildContext(), "say") == nil and Engine:PickEntry(ev, NS:BuildContext(), "emote") == nil,
			ev .. ": senza arco nel contesto nessuna frase")
		T.eq(ND:Priority(ev), ND.PRIORITY.exceptional, ev .. ": priorità")
		T.eq(ND.EVENT_MODULE[ev], "storyArcs", ev .. ": modulo")
		T.eq(Engine.events[ev].category, "reflection", ev .. ": categoria")
	end
	local before = #Narrator.history
	Cmd("event arc_open")
	Cmd("test arc_resolve")
	T.eq(#Narrator.history, before, "i comandi manuali non pronunciano battute di archi")
	-- Director:Offer senza vista di arco: nessuna frase
	Director:Offer("arc_open")
	ADVANCE(1)
	T.eq(Director.log[#Director.log].result, "no_phrase", "offerta senza arco: nessuna frase")
	-- chi offre riceve l'esito
	TestArc("t1")
	BeatPack({ "t1" })
	local got
	Director:Offer("arc_open", { arc = { id = "t1", state = "DISCOVERED", choices = {}, beat = true } }, function(r) got = r end)
	ADVANCE(1)
	T.eq(got, "spoken", "l'esito arriva a chi ha offerto")
	-- il gate: modulo spento
	NS.db.modules.storyArcs = false
	T.eq(Director:Evaluate("arc_open", {}).reason, "module:storyArcs", "il gate segue il modulo storyArcs")
	NS.db.modules.storyArcs = true
	Forget("t1")
end)

---------------------------------------------------------------------------
-- Persistenza e migrazione
---------------------------------------------------------------------------
T.run("lo stato salvato ha solo i campi previsti e nessun testo", function()
	Fresh()
	Zone("Orgrimmar")
	Zone("Durotar")
	ADVANCE(130)
	SA:Choose("path", "distance")
	local item = Item("path")
	local allowed = { state = true, mode = true, since = true, t = true, choices = true, subject = true, pending = true, waiting = true,
		waitStep = true, memoryId = true, ended = true }
	for k in pairs(item) do T.ok(allowed[k], "campo salvato previsto: " .. k) end
	local text = SERIALIZE(NS.cdb.arcs)
	for _, lang in ipairs({ "it", "en" }) do
		local t = SA.texts.path[lang]
		T.ok(not text:find(t.title, 1, true) and not text:find(t.summary, 1, true), "nessun testo dell'arco nei dati (" .. lang .. ")")
	end
	local line = LastLine()
	T.ok(line == nil or not text:find(line, 1, true), "nessuna battuta nei dati")
	T.ok(text:find("distance", 1, true), "la scelta è un id di opzione")
	-- i flag hanno nomi validi e corti
	for _, id in ipairs(SA.order) do
		for _, s in ipairs(SA.defs[id].states) do
			local name = SA.FlagName(id, s)
			T.ok(#name <= LM.FLAG_LEN and name:match("^[A-Za-z0-9_]+$"), name .. ": nome di flag valido")
		end
	end
end)

T.run("Sanitize ripulisce i dati rovinati e rispetta le versioni più nuove", function()
	Fresh()
	NS.cdb.arcs = { version = 1, items = {
		path = { state = "ESPLOSO", mode = "boh", since = "x", t = { DISCOVERED = 5, magic = 7, X = "y" }, choices = { reflect = "gratitude", ["Cattivo"] = "x", z = 5 },
			pending = { step = 99 }, memoryId = "x", waiting = "si", extra = "scartato" },
		capitals = { state = "JOURNEY", mode = "suspended", since = 100, t = { JOURNEY = 100 }, choices = {}, ended = 300 },
		fallen = { state = "DISCOVERED", mode = "active", since = 100, t = {}, choices = {}, pending = { step = 2, t = 50 } },
		knownface = { state = "LOCKED", waiting = true, waitStep = 1, since = 0, t = {}, choices = {},
			subject = { npcID = 295, name = "Innkeeper Farley", extra = "x" } },
		sconosciuto = { state = "QUALSIASI", mode = "skipped", since = 1, t = {}, choices = {} },
		["Maiuscole"] = { state = "LOCKED" },
		[5] = { state = "LOCKED" },
		rotto = "x",
	}, stats = { resolved = -4, skipped = "x" } }
	local dropped = SA:Sanitize()
	local items = SA:Data().items
	T.ok(dropped >= 3, "voci scartate: " .. dropped)
	T.eq(items.path.state, "LOCKED", "stato che l'arco non ha: torna a LOCKED")
	T.eq(items.path.mode, "active", "modo sconosciuto: attivo")
	T.eq(items.path.since, 0, "tempo sbagliato: zero")
	T.ok(items.path.t.DISCOVERED == 5 and items.path.t.magic == nil and items.path.t.X == nil, "tempi puliti")
	T.ok(items.path.choices.reflect == "gratitude" and items.path.choices.z == nil and items.path.choices.Cattivo == nil, "scelte pulite")
	T.eq(items.path.pending, nil, "passo in attesa che non esiste: scartato")
	T.eq(items.path.memoryId, nil, "ricordo non valido")
	T.eq(items.path.waiting, nil, "attesa non valida")
	T.eq(items.path.extra, nil, "campi non previsti scartati")
	T.eq(items.capitals.state, "JOURNEY", "uno stato proprio valido resta")
	T.eq(items.capitals.mode, "suspended", "modo valido resta")
	T.eq(items.fallen.pending and items.fallen.pending.step, 2, "un passo in attesa valido resta")
	T.ok(items.knownface.waiting and items.knownface.waitStep == 1, "un arco disponibile resta")
	T.ok(items.knownface.subject and items.knownface.subject.npcID == 295 and items.knownface.subject.extra == nil, "soggetto pulito")
	T.ok(items.sconosciuto ~= nil and items.sconosciuto.mode == "skipped", "un arco non registrato si conserva")
	T.eq(items.Maiuscole, nil, "id non valido scartato")
	T.eq(items.rotto, nil, "voce non tabella scartata")
	T.ok(SA:Data().stats.resolved == 0 and SA:Data().stats.skipped == nil, "statistiche sbagliate riportate nei limiti o scartate")
	T.eq(SA:ActiveCount(), 1, "capitals è sospeso, knownface non è ancora aperto: conta solo fallen")
	-- dati di una versione più nuova: sola lettura, nulla cambia
	NS.cdb.arcs = { version = 99, items = { path = { state = "DISCOVERED", mode = "active", since = 1, t = {}, choices = {}, futuro = true } } }
	SA:Sanitize()
	T.ok(SA.readOnly, "sola lettura")
	T.eq(NS.cdb.arcs.items.path.futuro, true, "i dati futuri non si toccano")
	T.ok(not SA:Skip("path") and not SA:Suspend("path") and not SA:Disable("path"), "nessuna modifica")
	T.eq(select(2, SA:Skip("path")), "readonly", "motivo")
	P.zone = "Westfall"
	T.eq(#SA:Fire("zone"), 0, "nessun passo")
	T.eq(#SA:Fire("level"), 0, "nessun passo (livello)")
	T.ok(not SA:Enabled(), "gli archi non sono attivi")
	SA.readOnly = false
end)

T.run("migrazione dello schema 6 e della forma interna", function()
	local function Load(arcs, version)
		AzerothUnspokenDB = { schemaVersion = version or 5, settings = {} }
		AzerothUnspokenCharacterDB = { schemaVersion = version or 5, arcs = arcs, memory = {} }
		Config:Load()
		return NS.cdb
	end
	local c = Load({})
	T.eq(c.schemaVersion, 7, "versione del personaggio")
	T.ok(type(c.arcs) == "table" and c.arcs.version == 1 and type(c.arcs.items) == "table", "il segnaposto vuoto diventa lo stato degli archi")
	c = Load("rotto")
	T.ok(type(c.arcs) == "table" and c.arcs.version == 1 and next(c.arcs.items) == nil, "un valore rotto riparte da zero")
	c = Load({ qualcosa = 1 })
	T.ok(c.arcs.version == 1 and next(c.arcs.items) == nil, "una tabella senza items riparte da zero")
	c = Load({ items = { path = { state = "DISCOVERED", mode = "active", since = 5, t = {}, choices = {} } } })
	T.eq(c.arcs.version, 1, "senza versione: 1")
	T.eq(c.arcs.items.path.state, "DISCOVERED", "i dati validi restano")
	c = Load({ version = 1, items = { path = { state = "DISCOVERED" } } }, 6)
	T.eq(c.schemaVersion, 7, "schema 6: portato a 7 (#86)")
	c = Load(nil, 1)
	T.eq(c.schemaVersion, 7, "da schema 1")
	T.ok(c.arcs.version == 1, "stato degli archi presente")
	-- le impostazioni nuove
	T.eq(NS.db.arcs.maxActive, 2, "arcs.maxActive predefinito")
	AzerothUnspokenDB = { schemaVersion = 5, settings = { arcs = { maxActive = 9 } } }
	AzerothUnspokenCharacterDB = { schemaVersion = 5 }
	Config:Load()
	T.eq(NS.db.arcs.maxActive, 2, "maxActive fuori limite torna nei limiti")
	AzerothUnspokenDB = { schemaVersion = 5, settings = { arcs = { maxActive = "tanti" } } }
	Config:Load()
	T.eq(NS.db.arcs.maxActive, 2, "maxActive sbagliato torna al predefinito")
	-- dati di una versione più nuova: lavorano su una copia, il file salvato resta com'è
	AzerothUnspokenCharacterDB = { schemaVersion = 77, arcs = { versione = "futura" } }
	Config:Load()
	T.eq(AzerothUnspokenCharacterDB.arcs.versione, "futura", "i dati futuri si conservano")
	T.eq(AzerothUnspokenCharacterDB.schemaVersion, 77, "versione futura conservata")
	-- un arco con l'item migrato funziona
	AzerothUnspokenCharacterDB = { schemaVersion = 5 }
	Config:Load()
	Fresh()
	Zone("Orgrimmar")
	Zone("Durotar")
	T.eq(State("path"), "DISCOVERED", "dopo la migrazione gli archi funzionano")
end)

---------------------------------------------------------------------------
-- Diario e comando
---------------------------------------------------------------------------
local function StoriesTab()
	for _, t in ipairs(JournalFrame.tabs) do
		if t.id == "stories" then return t end
	end
end

local function RowsText(rows)
	local out = {}
	for _, r in ipairs(rows) do table.insert(out, r.text) end
	return table.concat(out, "\n")
end

local function RowWith(rows, text)
	for _, r in ipairs(rows) do
		if r.text:find(text, 1, true) then return r end
	end
end

T.run("il diario ha la scheda delle storie: attive, concluse, saltate, con le scelte fatte", function()
	Fresh()
	local tab = StoriesTab()
	T.ok(tab ~= nil and tab.label == "arc_tab", "scheda registrata")
	T.ok(RowsText(tab.rows()):find("Nessuna storia, per ora", 1, true), "vuoto: lo dice e spiega come cominciano")
	Zone("Orgrimmar")
	Zone("Durotar")
	local text = RowsText(tab.rows())
	T.ok(text:find("Storie in corso (1 di 2)", 1, true), "intestazione degli attivi: " .. text)
	T.ok(text:find("Il sentiero ritrovato", 1, true) and text:find("scoperta", 1, true), "titolo e stato")
	-- il dettaglio con il racconto
	local row = RowWith(tab.rows(), "Il sentiero ritrovato")
	T.ok(row and row.actions and #row.actions == 2, "due azioni: dettaglio e salta")
	row.actions[1].fn()
	local detail = tab.rows()
	text = RowsText(detail)
	T.ok(text:find("Sei di nuovo dove il cammino è cominciato", 1, true), "il racconto")
	T.ok(text:find("Hai ritrovato il luogo da cui è cominciato il tuo cammino", 1, true), "la riga dello stato scoperto")
	T.ok(RowWith(detail, "Torna alle storie"), "riga per tornare")
	T.ok(RowWith(detail, "Sospendi la storia") and RowWith(detail, "Salta la storia") and RowWith(detail, "Disattiva la storia"), "azioni sull'arco")
	-- la scelta dal diario
	ADVANCE(130)
	detail = tab.rows()
	T.ok(RowWith(detail, "Che cosa ti dice, adesso"), "il quesito")
	local pick = RowWith(detail, "Scegli: Ricordare con gratitudine")
	T.ok(pick and pick.actions[1].fn, "le opzioni sono righe con un pulsante")
	pick.actions[1].fn()
	T.eq(State("path"), "REFLECTED", "la scelta dal diario avanza l'arco")
	detail = tab.rows()
	text = RowsText(detail)
	T.ok(text:find("Hai scelto", 1, true) and text:find("Ricordare con gratitudine", 1, true), "le scelte fatte compaiono nel racconto")
	T.ok(text:find("Il ricordo di questo luogo è diventato un grazie", 1, true), "con la loro nota")
	T.ok(text:find("Hai guardato il sentiero con occhi nuovi", 1, true), "e lo stato meditato")
	-- sospendere dal dettaglio
	RowWith(detail, "Sospendi la storia").actions[1].fn()
	T.eq(Item("path").mode, "suspended", "sospesa dal diario")
	detail = tab.rows()
	T.ok(RowWith(detail, "Riprendi la storia"), "ora si può riprendere")
	T.ok(RowsText(detail):find("sospesa", 1, true), "lo stato dice sospesa")
	RowWith(detail, "Riprendi la storia").actions[1].fn()
	T.eq(Item("path").mode, "active", "ripresa")
	-- conclusa
	ADVANCE(65)
	Zone("Westfall", 5)
	T.eq(State("path"), "RESOLVED", "conclusa")
	RowWith(tab.rows(), "Torna alle storie").actions[1].fn()
	local list = tab.rows()
	text = RowsText(list)
	T.ok(text:find("Storie concluse", 1, true) and text:find("Il sentiero ritrovato", 1, true), "tra le concluse")
	RowWith(list, "Il sentiero ritrovato").actions[1].fn()
	text = RowsText(tab.rows())
	T.ok(text:find("Ha lasciato un ricordo permanente", 1, true), "il dettaglio di una conclusa dice del ricordo")
	T.ok(text:find("Hai scelto", 1, true), "e delle scelte")
	RowWith(tab.rows(), "Torna alle storie").actions[1].fn()
	-- saltata
	Fresh()
	Zone("Orgrimmar")
	Zone("Durotar")
	RowWith(tab.rows(), "Il sentiero ritrovato").actions[2].fn()
	T.eq(Item("path").mode, "skipped", "saltata dal diario")
	text = RowsText(tab.rows())
	T.ok(text:find("Storie saltate o disattivate", 1, true) and text:find("saltata", 1, true), "tra le saltate")
	-- in inglese
	NS.db.locale = "en"
	text = RowsText(tab.rows())
	T.ok(text:find("Skipped or disabled stories", 1, true) and text:find("The Path Found Again", 1, true), "anche in inglese")
	NS.db.locale = "it"
	-- l'aggiornamento del diario aperto
	JournalFrame:Open("stories")
	T.ok(JournalFrame:IsOpen(), "il diario si apre sulla scheda")
	JournalFrame:Close()
end)

T.run("il comando /au storie", function()
	Fresh()
	local out = Cmd("stories")
	T.ok(out:find("Nessuna storia visibile", 1, true), "lista vuota: " .. out)
	Zone("Orgrimmar")
	Zone("Durotar")
	out = Cmd("stories list")
	T.ok(out:find("Il sentiero ritrovato (path)", 1, true) and out:find("scoperta", 1, true), "lista: " .. out)
	ADVANCE(130)
	out = Cmd("stories")
	T.ok(out:find("/au stories choose path", 1, true) and out:find("gratitude = Ricordare con gratitudine", 1, true), "indica come scegliere: " .. out)
	out = Cmd("stories choose path nessuna")
	T.ok(out:find("Opzioni", 1, true), "opzione sbagliata: mostra le opzioni")
	T.eq(State("path"), "DISCOVERED", "ancora fermo")
	out = Cmd("stories choose path silence")
	T.ok(out:find("Scelta fatta", 1, true), "scelta fatta: " .. out)
	T.eq(State("path"), "REFLECTED", "avanza")
	T.eq(Item("path").choices.reflect, "silence", "scelta salvata")
	out = Cmd("stories choose Il sentiero ritrovato silence")
	T.ok(out:find("stato in cui non si può", 1, true) or out:find("non aspetta nulla", 1, true), "una seconda scelta è rifiutata con un motivo: " .. out)
	out = Cmd("stories suspend path")
	T.ok(out:find("è sospesa", 1, true), "sospendi: " .. out)
	T.eq(Item("path").mode, "suspended", "sospeso")
	out = Cmd("stories resume path")
	T.ok(out:find("riprende", 1, true) and Item("path").mode == "active", "riprendi: " .. out)
	out = Cmd("stories skip path")
	T.ok(out:find("è saltata", 1, true) and Item("path").mode == "skipped", "salta: " .. out)
	out = Cmd("stories resume path")
	T.eq(Item("path").mode, "active", "un arco saltato si riprende")
	out = Cmd("stories disable path")
	T.ok(out:find("è disattivata", 1, true) and Item("path").mode == "off", "disattiva: " .. out)
	out = Cmd("stories enable path")
	T.ok(out:find("riattivata", 1, true) and Item("path").mode == "active", "attiva: " .. out)
	out = Cmd("stories suspend inesistente")
	T.ok(out:find("Non conosco la storia", 1, true), "arco sconosciuto: " .. out)
	out = Cmd("stories start path")
	T.ok(out:find("non è disponibile", 1, true), "non si avvia ciò che non è disponibile: " .. out)
	out = Cmd("stories suspend all")
	T.ok(out:find("Storie toccate: 1", 1, true), "sospendi tutte: " .. out)
	out = Cmd("stories skip all")
	T.ok(out:find("Storie toccate: 1", 1, true), "salta tutte: " .. out)
	out = Cmd("stories max 1")
	T.ok(out:find("al massimo 1", 1, true) and NS.db.arcs.maxActive == 1, "max: " .. out)
	out = Cmd("stories max 5")
	T.eq(NS.db.arcs.maxActive, 2, "max fuori limite")
	out = Cmd("stories max boh")
	T.ok(out:find("Serve 1 oppure 2", 1, true), "max sbagliato")
	out = Cmd("stories disable all")
	T.ok(out:find("Storie spente", 1, true) and not SA:Enabled(), "disattiva tutte spegne il modulo: " .. out)
	out = Cmd("stories")
	T.ok(out:find("Le storie sono spente", 1, true), "la lista lo dice")
	out = Cmd("stories on")
	T.ok(out:find("Storie accese", 1, true) and SA:Enabled(), "on: " .. out)
	out = Cmd("stories status")
	T.ok(out:find("Story Arcs:", 1, true) and out:find("active", 1, true), "stato: " .. out)
	out = Cmd("stories boh")
	T.ok(out:find("uso: /au stories", 1, true), "aiuto")
	out = Cmd("stories journal")
	T.ok(JournalFrame:IsOpen(), "diario sulla scheda delle storie")
	JournalFrame:Close()
	-- alias in inglese
	out = Cmd("stories")
	T.ok(out ~= "", "alias stories")
	NS.db.locale = "en"
	out = Cmd("stories list")
	T.ok(out:find("The Path Found Again", 1, true), "in inglese: " .. out)
	NS.db.locale = "it"
	-- l'aiuto generale nomina il comando
	out = Cmd("help")
	T.ok(out:find("/au stories", 1, true), "l'aiuto elenca /au stories")
end)

T.run("nessuna apertura senza un evento vero", function()
	Fresh()
	-- nessun comando e nessuna funzione pubblica apre o fa avanzare un arco chiuso
	T.ok(not SA:Start("path"), "Start su un arco chiuso")
	T.eq(select(2, SA:Start("path")), "not_available", "motivo")
	T.ok(not SA:Choose("path", "silence"), "Choose su un arco chiuso")
	Cmd("stories start path")
	Cmd("stories choose path silence")
	Cmd("stories resume path")
	T.eq(State("path"), "LOCKED", "i comandi non aprono")
	-- sospendere, saltare o disattivare un arco mai visto non lo apre
	SA:Skip("path")
	T.eq(State("path"), "LOCKED", "saltare non apre")
	SA:Resume("path")
	T.eq(State("path"), "LOCKED", "riprendere non apre")
	SA:Disable("path")
	SA:Enable("path")
	T.eq(State("path"), "LOCKED", "attivare non apre")
	-- un'offerta ai Director, un evento del bus d'altro tipo, il tempo: nessuna apertura
	NS.EventBus:Publish("ARC_STATE", { id = "path", from = "LOCKED", to = "DISCOVERED" }, { window = 0 })
	NS.EventBus:Publish("NPC_INTERACT", { kind = "quest_detail", npcID = 295, npcName = "X" }, { window = 0 })
	NS.EventBus:Publish("NPC_INTERACT", { kind = "gossip", npcName = "X" }, { window = 0 })    -- senza npcID
	LEAP(100000)
	ADVANCE(5)
	for _, id in ipairs(BASE) do T.eq(State(id), "LOCKED", id .. ": ancora chiuso") end
	T.eq(Count(SA:Data().items) <= 1, true, "nessuna voce, salvo quella creata dai comandi")
	-- le battute senza un passo non escono, e il flag di uno stato non apre l'arco da solo
	LM:SetFlag("arc_path_discovered", "user")
	ADVANCE(5)
	T.eq(State("path"), "LOCKED", "impostare a mano il flag non apre l'arco")
	-- un valore segreto non decide nulla
	SECRET_UNITS = { player = true }
	P.level = 30
	SA:Fire("zone")
	SECRET_UNITS = {}
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore intercettato")
end)

T.run("un arco legato a un NPC non scatta senza l'NPC, e un evento flag può far avanzare un arco", function()
	Fresh()
	-- evento `flag`: un arco di prova reagisce a un flag di un dialogo (S8) senza che NPCAlive lo sappia
	NS:RegisterArcs({ arcs = { tflag = {
		steps = {
			{ from = "LOCKED", to = "DISCOVERED", on = { "flag" }, when = { remembered = "npcd_innkeeper_asked_news" } },
			{ from = "DISCOVERED", to = "REFLECTED", on = { "flag" }, when = { remembered = "tfl_second" } },
			{ from = "REFLECTED", to = "RESOLVED", on = { "flag" }, when = { remembered = "tfl_third" } },
		},
	} } })
	P.zone = "Westfall"
	T.eq(#SA:Fire("zone"), 0, "un evento che non è in `on`")
	LM:SetFlag("altro_flag", "addon")
	ADVANCE(1)
	T.eq(State("tflag"), "LOCKED", "un altro flag non apre")
	LM:SetFlag("npcd_innkeeper_asked_news", "addon")
	ADVANCE(1)
	T.eq(State("tflag"), "DISCOVERED", "il flag del dialogo apre l'arco")
	LM:SetFlag("tfl_second", "addon")
	ADVANCE(1)
	T.eq(State("tflag"), "REFLECTED", "il secondo flag lo fa avanzare di un passo")
	LM:SetFlag("tfl_third", "addon")
	ADVANCE(1)
	T.eq(State("tflag"), "RESOLVED", "il terzo lo chiude")
	-- ogni passo un solo stato alla volta: due flag insieme non saltano uno stato
	Fresh()
	NS:RegisterArcs({ arcs = { tflag = SA.defs.tflag or {
		steps = {
			{ from = "LOCKED", to = "DISCOVERED", on = { "flag" }, when = { remembered = "npcd_innkeeper_asked_news" } },
			{ from = "DISCOVERED", to = "REFLECTED", on = { "flag" }, when = { remembered = "tfl_second" } },
			{ from = "REFLECTED", to = "RESOLVED", on = { "flag" }, when = { remembered = "tfl_third" } },
		},
	} } })
	LM:SetFlag("tfl_second", "addon")
	LM:SetFlag("tfl_third", "addon")
	LM:SetFlag("npcd_innkeeper_asked_news", "addon")
	ADVANCE(1)
	T.eq(State("tflag"), "DISCOVERED", "con tutti i flag già impostati l'arco avanza di un passo per evento")
	Forget("tflag")
end)

T.run("la memoria spenta: l'arco si chiude senza ricordo, senza errori", function()
	Fresh()
	NS.db.modules.memory = false
	Zone("Orgrimmar")
	Zone("Durotar")
	T.eq(State("path"), "DISCOVERED", "l'arco si apre anche senza memoria")
	ADVANCE(130)
	SA:Choose("path", "silence")
	ADVANCE(65)
	Zone("Westfall", 5)
	T.eq(State("path"), "RESOLVED", "si chiude")
	T.eq(Item("path").memoryId, nil, "senza ricordo (la memoria è spenta)")
	T.ok(not LM:HasFlag("arc_path_resolved") and not LM:HasFlag("arc_path_discovered"), "e senza flag: la memoria spenta non riceve scritture")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
	NS.db.modules.memory = true
end)

T.run("la scheda delle impostazioni e il wizard conoscono il modulo Storie", function()
	T.ok(NS.db.modules.storyArcs ~= nil, "modulo storyArcs nelle impostazioni")
	T.eq(NS:L("module_storyArcs"), "Storie", "etichetta italiana")
	NS.db.locale = "en"
	T.eq(NS:L("module_storyArcs"), "Stories", "etichetta inglese")
	NS.db.locale = "it"
	local ids = {}
	for _, p in ipairs(Config.PRESET_ORDER) do ids[p] = Config.presets[p].storyArcs end
	T.ok(ids.complete == true and ids.personal == true and ids.world == false and ids.social == false, "i preset del GDD §4.1")
end)

T.run("testi: nessuna ricompensa né promessa sul gioco, lingue distinte", function()
	local banned = { "ricompens", "premio", "bottino", "missione", "reward", "loot", "experience points", "punti esperienza" }
	local function Check(text, where)
		local l = NS.Lower(text)
		for _, w in ipairs(banned) do T.ok(not l:find(w, 1, true), where .. ": niente '" .. w .. "'") end
	end
	for _, id in ipairs(BASE) do
		for _, lang in ipairs({ "it", "en" }) do
			local t = SA.texts[id][lang]
			Check(t.title, id .. " titolo " .. lang)
			Check(t.summary, id .. " racconto " .. lang)
			for s, line in pairs(t.states) do Check(line, id .. " " .. s .. " " .. lang) end
		end
		T.ok(SA.texts[id].it.title ~= SA.texts[id].en.title, id .. ": titoli diversi nelle due lingue")
	end
	for _, p in pairs(Engine.byEvent.arc_open) do
		for _, lang in ipairs({ "it", "en" }) do
			for _, v in ipairs(p.text[lang] or {}) do
				v = Engine.VariantView(v)
				Check(v.t, p.id)
				T.ok(#v.t <= 400, p.id .. ": entro il limite del narratore")
			end
		end
	end
	for _, ev in ipairs({ "arc_step", "arc_resolve" }) do
		for _, p in pairs(Engine.byEvent[ev]) do
			for _, lang in ipairs({ "it", "en" }) do
				for _, v in ipairs(p.text[lang] or {}) do Check(Engine.VariantText(v), p.id) end
			end
		end
	end
	local n = 0
	for _, ev in ipairs({ "arc_open", "arc_step", "arc_resolve" }) do
		for _, p in ipairs(Engine.byEvent[ev]) do if p.pack == "base_arcs" then n = n + 1 end end
	end
	T.eq(n, 33, "33 battute di base")
end)

T.run("un avviso discreto nel narratore, mai in chat, quando un arco aspetta una scelta o può cominciare", function()
	Fresh()
	TestArc("t1"); TestArc("t2"); TestArc("t3")
	NS.db.chat.mode = "PRIVATE"
	SA:Fire("level")      -- t1 e t2 si aprono, t3 resta disponibile: avviso «può cominciare»
	local shown = Narrator.current and Narrator.current.display
	T.ok(shown and shown:find("Una storia può cominciare", 1, true), "avviso: una storia può cominciare: " .. tostring(shown))
	T.ok(shown and shown:find("t3", 1, true), "con il titolo (qui l'id)")
	for _, s in ipairs(SENT) do
		T.ok(type(s) ~= "string" or not (s:sub(1, 4) == "SAY:" or s:sub(1, 6) == "EMOTE:" or s:sub(1, 6) == "PARTY:"), "nulla in chat")
	end
	-- una scelta in attesa
	Fresh()
	local function TP()
		NS:RegisterArcs({ arcs = { tp = {
			choices = { c = { options = { "a", "b" } } },
			steps = {
				{ from = "LOCKED", to = "DISCOVERED", on = { "level" } },
				{ from = "DISCOVERED", to = "REFLECTED", on = { "level" }, choose = "c" },
				{ from = "REFLECTED", to = "RESOLVED", on = { "level" } },
			},
		} } })
	end
	TP()
	SA:Fire("level")
	Narrator:Clear()
	ADVANCE(10)
	SA:Fire("level")
	shown = Narrator.current and Narrator.current.display
	T.ok(shown and shown:find("attende una tua scelta", 1, true), "avviso: attende una scelta: " .. tostring(shown))
	-- intensità 0 o pausa: nessun avviso (la scelta resta nel diario)
	Fresh()
	TP()
	NS.db.intensity = 0
	Narrator:Clear()
	SA:Fire("level")
	SA:Fire("level")
	T.ok(not (Narrator.current and Narrator.current.display), "intensità 0: nessun avviso")
	T.ok(Item("tp").pending ~= nil, "ma la scelta aspetta")
	NS.db.intensity = 50
	Forget("t1", "t2", "t3", "tp")
end)

T.run("un'altra lingua, un cambio di lingua e un arco senza testi", function()
	Fresh()
	Zone("Orgrimmar")
	Zone("Durotar")
	NS.db.locale = "en"
	local rec = SA:Record("path")
	T.eq(rec.title, "The Path Found Again", "titolo inglese")
	T.eq(rec.stateLabel, "discovered", "stato in inglese")
	NS.db.locale = "it"
	rec = SA:Record("path")
	T.eq(rec.title, "Il sentiero ritrovato", "titolo italiano")
	-- un arco senza testi si mostra con l'id, senza errori
	TestArc("tn")
	SA:Fire("level")
	local r2 = SA:Record("tn")
	T.ok(r2 and r2.title == "tn" and r2.summary == "", "senza testi: l'id come titolo")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
	local rows = StoriesTab().rows()
	T.ok(#rows > 0, "il diario si costruisce lo stesso")
	Forget("tn")
end)

---------------------------------------------------------------------------
-- Casi trovati dalla revisione indipendente
---------------------------------------------------------------------------
T.run("i flag a mano o automatici non muovono gli archi; solo quelli di un sistema dell'addon", function()
	Fresh()
	NS:RegisterArcs({ arcs = { tf = {
		steps = {
			{ from = "LOCKED", to = "DISCOVERED", on = { "flag" }, when = { remembered = "pippo" } },
			{ from = "DISCOVERED", to = "REFLECTED", on = { "flag" }, when = { remembered = "pippo" } },
			{ from = "REFLECTED", to = "RESOLVED", on = { "flag" }, when = { remembered = "pippo" } },
		},
	} } })
	Cmd("journal flag pippo")
	ADVANCE(1)
	T.ok(LM:HasFlag("pippo"), "il flag a mano c'è")
	T.eq(State("tf"), "LOCKED", "un flag messo a mano dal giocatore non apre un arco")
	LM:ClearFlag("pippo")
	LM:SetFlag("pippo", "auto")
	ADVANCE(1)
	T.eq(State("tf"), "LOCKED", "un flag automatico non apre un arco")
	LM:ClearFlag("pippo")
	LM:SetFlag("pippo", "addon")
	ADVANCE(1)
	T.eq(State("tf"), "DISCOVERED", "un flag di un sistema dell'addon sì")
	LM:ClearFlag("pippo")
	LM:SetFlag("pippo", "addon")
	ADVANCE(1)
	T.eq(State("tf"), "REFLECTED", "un solo passo per evento")
	-- un evento vero con il suo flag automatico: un passo solo
	Fresh()
	NS:RegisterArcs({ arcs = { td = {
		steps = {
			{ from = "LOCKED", to = "DISCOVERED", on = { "death" } },
			{ from = "DISCOVERED", to = "REFLECTED", on = { "flag" }, when = { remembered = "first_death" } },
			{ from = "REFLECTED", to = "RESOLVED", on = { "flag" } },
		},
	} } })
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(3)
	T.ok(LM:HasFlag("first_death"), "il flag automatico della morte")
	T.eq(State("td"), "DISCOVERED", "una morte muove l'arco di un solo passo")
end)

T.run("gli archi di un pacchetto caricato dopo l'avvio non perdono la scelta in attesa né la disponibilità", function()
	Fresh()
	NS.cdb.arcs = { version = 1, items = {
		tl1 = { state = "DISCOVERED", mode = "active", since = 10, t = { DISCOVERED = 10 }, choices = {}, pending = { step = 2, t = 10 } },
		tl2 = { state = "LOCKED", mode = "active", since = 0, t = {}, choices = {}, waiting = true, waitStep = 1 },
		tl3 = { state = "ESPLOSO", mode = "active", since = 10, t = {}, choices = {}, pending = { step = 9 } },
	} }
	SA:Sanitize()      -- all'avvio i pacchetti non ci sono ancora
	T.ok(Item("tl1").pending ~= nil and Item("tl2").waiting and Item("tl2").waitStep == 1, "si conservano senza la definizione")
	local def = function()
		return { choices = { c = { options = { "a", "b" } } }, steps = {
			{ from = "LOCKED", to = "DISCOVERED", on = { "level" } },
			{ from = "DISCOVERED", to = "REFLECTED", on = { "level" }, choose = "c" },
			{ from = "REFLECTED", to = "RESOLVED", on = { "level" } },
		} }
	end
	NS:RegisterArcs({ arcs = { tl1 = def(), tl2 = def(), tl3 = def() } })
	T.ok(Item("tl1").pending ~= nil, "con la definizione la scelta in attesa vale")
	T.ok(SA:Choose("tl1", "a"), "e si può fare")
	T.ok(Item("tl2").waiting, "l'arco disponibile resta disponibile")
	T.ok(SA:Start("tl2"), "e si avvia")
	T.eq(Item("tl3").state, "LOCKED", "uno stato che l'arco non ha torna a LOCKED alla registrazione")
	T.eq(Item("tl3").pending, nil, "e il passo in attesa che non esiste cade")
end)

T.run("scegliere o avviare un arco su un argomento evitato non si può; più passi per lo stesso evento", function()
	Fresh()
	NS.db.arcs.maxActive = 1
	TestArc("tx")
	SA:Fire("level")
	NS:RegisterArcs({ arcs = { fallen2 = { topic = "death", steps = {
		{ from = "LOCKED", to = "DISCOVERED", on = { "death" } },
		{ from = "DISCOVERED", to = "REFLECTED", on = { "level" } },
		{ from = "REFLECTED", to = "RESOLVED", on = { "level" } },
	} } } })
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(3)
	P.dead = false
	T.ok(Item("fallen2") and Item("fallen2").waiting, "a posti finiti l'arco è disponibile")
	SA:Suspend("tx")
	NS.Personality:SetTrait("avoid", { death = true })
	local ok, why = SA:Start("fallen2")
	T.ok(not ok and why == "avoided", "l'argomento evitato impedisce anche l'avvio")
	NS.Personality:SetTrait("avoid", nil)
	T.ok(SA:Start("fallen2"), "senza l'argomento evitato si avvia")
	NS.db.arcs.maxActive = 2
	-- due passi dallo stesso stato per lo stesso evento: vale il primo le cui condizioni valgono
	Fresh()
	NS:RegisterArcs({ arcs = { two = { steps = {
		{ from = "LOCKED", to = "DISCOVERED", on = { "level" } },
		{ from = "DISCOVERED", to = "REFLECTED", on = { "zone" }, when = { zone = "Orgrimmar" } },
		{ from = "DISCOVERED", to = "REFLECTED", on = { "zone" }, when = { zone = "Stormwind City" } },
		{ from = "REFLECTED", to = "RESOLVED", on = { "level" } },
	} } } })
	SA:Fire("level")
	P.zone = "Stormwind City"
	SA:Fire("zone")
	T.eq(State("two"), "REFLECTED", "il secondo passo con lo stesso evento è valutato")
end)

T.run("/au storie max sotto gli archi già attivi avvisa; dati di versione futura non si toccano nemmeno leggendoli", function()
	Fresh()
	TestArc("t1"); TestArc("t2")
	SA:Fire("level")
	local out = Cmd("stories max 1")
	T.ok(out:find("restano come sono", 1, true), "avviso: " .. out)
	NS.db.arcs.maxActive = 2
	NS.cdb.arcs = { version = 99, items = "altra forma", stats = 7 }
	SA:Data()
	T.eq(NS.cdb.arcs.items, "altra forma", "leggere non corregge i dati futuri")
	T.eq(NS.cdb.arcs.stats, 7, "né le statistiche")
	SA:Sanitize()
	T.ok(SA.readOnly, "sola lettura")
	SA.readOnly = false
end)
