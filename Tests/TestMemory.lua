-- Test dello step S6: Living Memory (Systems/LivingMemory.lua), condizioni di memoria del RuleEngine, guardie degli
-- eventi di richiamo, collegamento al Narrative Director, schema 4 e diario (UI/JournalFrame.lua).
-- La persistenza tra sessioni (/reload) si prova in Tests/run_tests.py con due runtime consecutivi.
local NS = ...
local Engine, Config, LM, ND, Director = NS.Engine, NS.Config, NS.LivingMemory, NS.NarrativeDirector, NS.Director
local Narrator, Pacing, JournalFrame = NS.Narrator, NS.Pacing, NS.JournalFrame

NS.db.locale = "it"
NS.db.proseDepth = "literary"

local DAY = 86400

---------------------------------------------------------------------------
-- Aiuti
---------------------------------------------------------------------------
-- stato pulito: memoria vuota, sessione nuova, narratore muto (l'intensità 0 non ferma la memoria)
local function Fresh()
	NS.cdb.memories = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.target = "Durotar", "", false, false, 100, 100, nil
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 0, "literary"
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.ui.narrator.historySize = 1000
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	if NS.Personality then NS.Personality:SetArchetype("neutral") end
	SENT = {}
end

local function Data() return NS.cdb.memories end

-- entra in una zona: lascia passare il tempo e fa arrivare l'evento del client
local function Leap(seconds)
	ADVANCE(5)
	LEAP(seconds)
end

local function Go(zone, wait)
	if wait and wait >= 600 then Leap(wait) else ADVANCE(wait or 5) end
	P.zone = zone
	FIRE("ZONE_CHANGED_NEW_AREA")
end

local function Kinds(kind)
	local out = {}
	for _, e in ipairs(Data().entries) do
		if not kind or e.kind == kind then table.insert(out, e) end
	end
	return out
end

local function Count(t) local n = 0; for _ in pairs(t) do n = n + 1 end; return n end

local function MemoryCtx(zone)
	if zone then P.zone = zone end
	return NS:BuildContext()
end

local function KeysOf(t)
	local out = {}
	for k in pairs(t) do table.insert(out, k) end
	table.sort(out)
	return table.concat(out, ",")
end

local function Match(when, ctx) return Engine.Match(when, ctx) end

---------------------------------------------------------------------------
-- Eventi insignificanti non lasciano ricordi
---------------------------------------------------------------------------
T.run("nessun ricordo per eventi insignificanti", function()
	Fresh()
	Go("Elwynn Forest")
	local before = #Data().entries
	local session = #LM:SessionList()
	-- clic, bersagli, incantesimi, combattimenti, salute: nulla di tutto ciò è un momento significativo
	for i = 1, 20 do
		P.target = { name = "Lupo " .. i, hostile = true, level = 5, class = "WARRIOR", race = "Orc" }
		FIRE("PLAYER_TARGET_CHANGED")
		ADVANCE(1)
		FIRE("UNIT_SPELLCAST_SUCCEEDED", "player", "g" .. i, 100 + i)
		P.combat = true; FIRE("PLAYER_REGEN_DISABLED"); ADVANCE(8)
		P.combat = false; FIRE("PLAYER_REGEN_ENABLED")
		P.hp = 50; FIRE("UNIT_HEALTH", "player")
		ADVANCE(1)
	end
	P.target = nil
	T.eq(#Data().entries, before, "nessun ricordo nuovo")
	T.eq(#LM:SessionList(), session, "nessun momento nuovo nella sessione")
	-- la stessa zona annunciata di nuovo (bordo di zona, ricarica) non è una visita nuova
	local visits = Data().places["Elwynn Forest"].visits
	ADVANCE(10); FIRE("PLAYER_ENTERING_WORLD", false, true)
	ADVANCE(10); FIRE("ZONE_CHANGED_NEW_AREA")
	T.eq(Data().places["Elwynn Forest"].visits, visits, "stessa zona: stessa visita")
	T.eq(#Data().entries, before, "nessun ricordo per un ingresso ripetuto")
	-- un tipo sconosciuto non entra, un tipo registrato sì
	T.eq(LM:Record({ kind = "boh" }), nil, "tipo sconosciuto rifiutato")
	T.eq(LM:Record("testo"), nil, "specifica sbagliata rifiutata")
	T.ok(LM:RegisterKind("arc_step", 3) and LM.KINDS.arc_step == 3, "un tipo nuovo si registra")
	T.ok(not LM:RegisterKind("Non valido!"), "un nome di tipo non valido è rifiutato")
	T.ok(LM:Record({ kind = "arc_step", source = "addon" }) ~= nil, "il tipo registrato si può usare")
	LM.KINDS.arc_step = nil
end)

---------------------------------------------------------------------------
-- Prima visita e ritorno
---------------------------------------------------------------------------
T.run("prima visita: ricordo con i campi del GDD §7.4", function()
	Fresh()
	local now = time()
	Go("Elwynn Forest")
	local list = Kinds("first_visit")
	-- Durotar all'avvio del test non c'è: Fresh azzera la memoria prima di entrare nella foresta
	T.eq(#list, 1, "un ricordo di prima visita")
	local e = list[1]
	T.ok(e.id >= 1 and math.floor(e.id) == e.id, "id evento")
	T.ok(e.t >= now, "timestamp")
	T.eq(e.zone, "Elwynn Forest", "zona")
	T.eq(e.kind, "first_visit", "tipo")
	T.eq(e.importance, 3, "importanza")
	T.eq(e.tags[1], "visit", "tag")
	T.eq(e.source, "auto", "origine")
	T.eq(e.level, 30, "livello del personaggio")
	T.ok(not e.perm, "non permanente")
	local p = Data().places["Elwynn Forest"]
	T.eq(p.visits, 1, "una visita")
	T.eq(p.deaths, 0, "nessuna morte")

	local ctx = MemoryCtx()
	local m = ctx.memory
	T.ok(m ~= nil, "ctx.memory esiste")
	T.eq(m.firstVisit, true, "prima visita")
	T.eq(m.repeatVisit, false, "non è un ritorno")
	T.eq(m.visits, 1, "visite")
	T.eq(m.lastVisitBad, false, "nessuna visita precedente finita male")
	T.eq(m.daysSinceLastVisit, nil, "nessun giorno dall'ultima visita")
	T.ok(Match({ firstVisit = true }, ctx), "condizione firstVisit")
	T.ok(not Match({ repeatVisit = true }, ctx), "repeatVisit non vale alla prima visita")
	T.ok(Match({ repeatVisit = false }, ctx), "repeatVisit = false vale")
	T.ok(not Match({ lastVisitBad = true }, ctx), "lastVisitBad non vale senza un ricordo")
	T.ok(Match({ visitsMin = 1 }, ctx) and not Match({ visitsMin = 2 }, ctx), "visitsMin")
	T.ok(not Match({ daysSinceLastVisit = 0 }, ctx), "daysSinceLastVisit non vale senza visita precedente")
	T.ok(not Match({ remembered = "first_death" }, ctx), "remembered non vale senza il flag")
	T.eq(LM.session and LM.session.zones, 1, "la sessione conta la zona")
end)

T.run("una capitale è una prima visita più importante", function()
	Fresh()
	Go("Orgrimmar")
	local e = Kinds("first_visit")[1]
	T.eq(e.importance, 4, "importanza della capitale")
	T.ok(e.tags[2] == "capital", "tag capital")
	T.ok(LM:HasFlag("first_capital"), "flag della prima capitale")
	T.ok(Data().places["Orgrimmar"].capital, "luogo segnato come capitale")
	Go("Durotar", 4000)
	Go("Stormwind City", 4000)
	T.ok(Data().places["Stormwind City"].capital, "ogni capitale è segnata")
	T.eq(#Kinds("first_visit"), 3, "due capitali e Durotar")
	T.eq(Count(Data().flags), 1, "il flag first_capital resta uno solo")
end)

T.run("ritorno: visite, giorni, ricordo solo dopo un giorno", function()
	Fresh()
	Go("Elwynn Forest")
	Go("Westfall", 100)
	-- subito di nuovo: stessa visita, nessun ricordo
	Go("Elwynn Forest", 100)
	T.eq(Data().places["Elwynn Forest"].visits, 1, "rientro dopo pochi minuti: stessa visita")
	T.eq(#Kinds("return"), 0, "nessun ricordo di ritorno")

	-- dopo un'ora è una nuova visita, ma resta un momento della sessione
	Go("Westfall", 100)
	Go("Elwynn Forest", 3600)
	T.eq(Data().places["Elwynn Forest"].visits, 2, "rientro dopo un'ora: seconda visita")
	T.eq(#Kinds("return"), 0, "dopo un'ora il ritorno non è salvato")
	local sessionReturns = 0
	for _, e in ipairs(LM:SessionList()) do if e.kind == "return" then sessionReturns = sessionReturns + 1 end end
	T.eq(sessionReturns, 1, "ma compare nella sessione")
	T.ok(LM:SessionList()[1].id < 0, "un momento di sessione ha un id negativo")
	local ctx = MemoryCtx()
	T.eq(ctx.memory.repeatVisit, true, "ritorno")
	T.eq(ctx.memory.firstVisit, false, "non più la prima visita")
	T.eq(ctx.memory.visits, 2, "due visite")

	-- dopo due giorni il ritorno diventa un ricordo
	Go("Westfall", 100)
	Leap(2 * DAY)
	Go("Elwynn Forest", 5)
	T.eq(Data().places["Elwynn Forest"].visits, 3, "terza visita")
	local r = Kinds("return")
	T.eq(#r, 1, "il ritorno dopo due giorni è salvato")
	T.eq(r[1].importance, 2, "importanza del ritorno")
	T.eq(r[1].zone, "Elwynn Forest", "zona del ritorno")
	ctx = MemoryCtx()
	local d = ctx.memory.daysSinceLastVisit
	T.ok(d and d > 1.99 and d < 2.2, "giorni dall'ultima visita: " .. tostring(d))
	T.ok(Match({ daysSinceLastVisit = 1 }, ctx), "daysSinceLastVisit = 1 (almeno)")
	T.ok(not Match({ daysSinceLastVisit = 3 }, ctx), "daysSinceLastVisit = 3 (almeno) non vale")
	T.ok(Match({ daysSinceLastVisit = { 1, 3 } }, ctx), "intervallo 1-3 giorni")
	T.ok(not Match({ daysSinceLastVisit = { 3, 9 } }, ctx), "intervallo 3-9 non vale")
	T.ok(Match({ visitsMin = 3 }, ctx) and Match({ visitsMax = 3 }, ctx) and not Match({ visitsMax = 2 }, ctx), "visitsMin e visitsMax")
	-- l'orologio che torna indietro non rompe nulla
	local saved = Data().places["Elwynn Forest"]
	saved.prev.last = time() + 10 * DAY
	ctx = MemoryCtx()
	-- (lo snapshot è già calcolato: si ricalcola alla prossima visita)
	Go("Westfall", 100)
	saved.last = time() + 5 * DAY
	Go("Elwynn Forest", 3600)
	T.ok(NS.Diagnostics.errors[1] == nil, "nessun errore con l'orologio indietro")
end)

T.run("un luogo noto in cui non ci si trova: si sa quante volte, non com'è andata", function()
	Fresh()
	Go("Elwynn Forest")
	Go("Westfall", 100)
	Go("Elwynn Forest", 3600)
	Go("Westfall", 100)
	local ctx = MemoryCtx("Elwynn Forest")   -- il contesto di un'altra zona (una prova a mano)
	T.eq(ctx.memory.visits, 2, "visite del luogo")
	T.eq(ctx.memory.repeatVisit, nil, "ma nulla sul ritorno")
	T.ok(not Match({ repeatVisit = true }, ctx), "repeatVisit non vale fuori dal luogo")
	P.zone = "Westfall"
	ctx = MemoryCtx("Uldaman")                 -- un luogo mai visitato
	T.eq(ctx.memory.visits, nil, "luogo mai visitato: nessun dato")
	T.ok(not Match({ firstVisit = true }, ctx), "firstVisit non vale per un luogo non tracciato")
end)

---------------------------------------------------------------------------
-- Visite finite male
---------------------------------------------------------------------------
T.run("lastVisitBad dopo una morte", function()
	Fresh()
	Go("Elwynn Forest")
	T.ok(not LM:HasFlag("first_death"), "nessun flag prima della morte")
	ADVANCE(30); FIRE("PLAYER_DEAD")
	local d = Kinds("death")
	T.eq(#d, 1, "un ricordo di morte")
	T.eq(d[1].zone, "Elwynn Forest", "zona della morte")
	T.eq(d[1].importance, 4, "la prima morte pesa di più")
	T.ok(d[1].tags[3] == "first", "tag first")
	T.ok(LM:HasFlag("first_death"), "flag first_death")
	T.eq(Data().places["Elwynn Forest"].deaths, 1, "morti nel luogo")
	-- una seconda morte vicina nella stessa zona è lo stesso ricordo
	ADVANCE(10); FIRE("PLAYER_DEAD")
	T.eq(#Kinds("death"), 1, "due morti ravvicinate: un solo ricordo")
	T.eq(Data().places["Elwynn Forest"].deaths, 2, "ma le morti contano")
	-- una più tardi, per il resto, è un altro ricordo (non più la prima)
	ADVANCE(200); FIRE("PLAYER_DEAD")
	d = Kinds("death")
	T.eq(#d, 2, "una morte dopo 200 secondi è un ricordo nuovo")
	T.eq(d[2].importance, 3, "non è più la prima")

	-- durante la stessa visita non c'è ancora un ritorno
	local ctx = MemoryCtx()
	T.eq(ctx.memory.lastVisitBad, false, "la visita in corso non conta")
	Go("Westfall", 100)
	Go("Elwynn Forest", 3600)
	ctx = MemoryCtx()
	T.eq(ctx.memory.lastVisitBad, true, "l'ultima visita è finita male")
	T.eq(ctx.memory.lastBadKind, "death", "per una morte")
	T.ok(Match({ lastVisitBad = true }, ctx), "lastVisitBad = true")
	T.ok(Match({ lastVisitBad = "death" }, ctx), "lastVisitBad = death")
	T.ok(Match({ lastVisitBad = { "flight", "death" } }, ctx), "lastVisitBad = elenco")
	T.ok(not Match({ lastVisitBad = "flight" }, ctx), "lastVisitBad = flight non vale")
	T.ok(not Match({ lastVisitBad = false }, ctx), "lastVisitBad = false non vale")
	T.ok(Match({ remembered = "first_death" }, ctx), "remembered = first_death")
	T.ok(Match({ remembered = { "boh", "first_death" } }, ctx), "remembered con un elenco")
	T.ok(not Match({ remembered = "boh" }, ctx), "remembered = boh non vale")

	-- una visita senza incidenti cancella l'esito: la volta dopo non finì male
	Go("Westfall", 100)
	Go("Elwynn Forest", 3600)
	ctx = MemoryCtx()
	T.eq(ctx.memory.lastVisitBad, false, "la visita tranquilla ha chiuso la parentesi")
	T.ok(Match({ lastVisitBad = false }, ctx), "lastVisitBad = false vale")
end)

T.run("lastVisitBad dopo una fuga", function()
	Fresh()
	Go("Duskwood")
	-- si lascia la zona in combattimento
	ADVANCE(60)
	P.combat = true
	Go("Elwynn Forest", 1)
	P.combat = false
	local f = Kinds("flight")
	T.eq(#f, 1, "un ricordo di fuga")
	T.eq(f[1].zone, "Duskwood", "la fuga è dalla zona lasciata")
	T.eq(Data().places["Duskwood"].badKind, "flight", "esito della visita: fuga")
	Go("Duskwood", 3600)
	local ctx = MemoryCtx()
	T.ok(Match({ lastVisitBad = true }, ctx) and Match({ lastVisitBad = "flight" }, ctx), "l'ultima visita finì con una fuga")
	T.ok(not Match({ lastVisitBad = "death" }, ctx), "non per una morte")

	-- con poca salute è una fuga, con la salute piena no
	Go("Westfall", 100)
	P.hp = 20
	Go("Elwynn Forest", 100)
	T.eq(#Kinds("flight"), 2, "poca salute: fuga da Westfall")
	P.hp = 100
	Go("Redridge Mountains", 100)
	T.eq(#Kinds("flight"), 2, "salute piena: nessuna fuga")

	-- da morti non è una fuga: la morte è già un esito
	Go("Duskwood", 100)
	P.dead = true; P.hp = 1
	Go("Westfall", 100)
	P.dead = false; P.hp = 100
	T.eq(#Kinds("flight"), 2, "da fantasma non è una fuga")

	-- salute illeggibile (valore segreto): mai una fuga
	Go("Elwynn Forest", 100)
	local realHealth = UnitHealth
	UnitHealth = function() return MakeSecret() end
	Go("Westfall", 100)
	UnitHealth = realHealth
	T.eq(#Kinds("flight"), 2, "salute segreta: nessuna decisione")
	T.ok(NS.Diagnostics.errors[1] == nil, "nessun errore dai valori segreti")
end)

T.run("livelli e traguardi", function()
	Fresh()
	Go("Elwynn Forest")
	P.level = 10
	FIRE("PLAYER_LEVEL_UP", 10)
	ADVANCE(5)
	P.level = 11
	FIRE("PLAYER_LEVEL_UP", 11)
	local l = Kinds("level")
	T.eq(#l, 2, "due livelli")
	local byLevel = {}
	for _, e in ipairs(l) do byLevel[e.level] = e end
	T.eq(byLevel[10].importance, 4, "il decimo livello è un traguardo")
	T.eq(byLevel[10].tags[2], "milestone", "tag milestone")
	T.eq(byLevel[11].importance, 2, "un livello comune")
	T.ok(LM:HasFlag("level_10") and not LM:HasFlag("level_11"), "flag del solo traguardo")
	T.eq(LM.session.levels, 2, "la sessione conta i livelli")
	P.level = 30
end)

---------------------------------------------------------------------------
-- Limiti, compattazione, permanenti
---------------------------------------------------------------------------
T.run("limite di 500 ricordi ordinari e compattazione", function()
	Fresh()
	for i = 1, 600 do
		-- ogni settimo ricordo è importante; i primi tre sono permanenti
		LM:Record({ kind = "level", level = 10, t = 1000 + i, importance = (i % 7 == 0) and 4 or 2, perm = i <= 3 })
	end
	local ordinary, perm, high, oldestLow = 0, 0, 0, false
	local newest = false
	for _, e in ipairs(Data().entries) do
		if e.perm then perm = perm + 1 else ordinary = ordinary + 1 end
		if e.importance == 4 then high = high + 1 end
		if e.t == 1004 then oldestLow = true end
		if e.t == 1600 then newest = true end
	end
	T.ok(ordinary <= LM.MAX_ORDINARY, "ricordi ordinari: " .. ordinary)
	T.ok(ordinary >= LM.COMPACT_TO, "se ne tengono almeno " .. LM.COMPACT_TO .. ": " .. ordinary)
	T.eq(perm, 3, "i permanenti restano")
	T.eq(high, 85, "i ricordi importanti restano tutti")
	T.ok(not oldestLow, "il meno significativo e più vecchio è stato compattato")
	T.ok(newest, "il più recente resta")
	T.ok((Data().stats.compacted or 0) > 0, "la compattazione è contata: " .. tostring(Data().stats.compacted))
	-- gli id restano unici e crescenti
	local seen, last = {}, 0
	for _, e in ipairs(Data().entries) do
		T.ok(not seen[e.id], "id unico " .. e.id)
		seen[e.id] = true
	end
	T.eq(Data().nextId, 601, "nextId prosegue")

	-- tre permanenti più vecchi di tutto sopravvivono a un'altra compattazione
	for i = 601, 1300 do LM:Record({ kind = "level", level = 10, t = 1000 + i, importance = 2 }) end
	perm = 0
	for _, e in ipairs(Data().entries) do if e.perm then perm = perm + 1 end end
	T.eq(perm, 3, "i permanenti sopravvivono a più compattazioni")
	local st = LM:Stats()
	T.ok(st.ordinary <= LM.MAX_ORDINARY and st.permanent == 3, "statistiche coerenti")
end)

T.run("ricordi permanenti", function()
	Fresh()
	local a = LM:Record({ kind = "level", level = 5, importance = 2 })
	local b = LM:Record({ kind = "level", level = 6, importance = 2 })
	T.ok(LM:SetPermanent(a.id), "segna come permanente")
	T.ok(LM:Find(a.id).perm == true, "permanente")
	T.ok(LM:SetPermanent(a.id, false) and not LM:Find(a.id).perm, "si toglie")
	LM:SetPermanent(a.id, true)
	local ok, why = LM:SetPermanent(9999)
	T.ok(not ok and why == "missing", "un ricordo che non c'è")
	-- il limite dei permanenti
	local saved = LM.MAX_PERMANENT
	LM.MAX_PERMANENT = 1
	ok, why = LM:SetPermanent(b.id, true)
	T.ok(not ok and why == "limit", "oltre il limite dei permanenti")
	local c = LM:Record({ kind = "level", level = 7, importance = 2, perm = true })
	T.ok(not c.perm, "un permanente in più alla creazione diventa ordinario")
	LM.MAX_PERMANENT = saved
	-- il reset degli ordinari lascia i permanenti, quello totale no
	local ok2, removed = LM:Reset("ordinary")
	T.ok(ok2 and removed == 2, "azzerati i due ordinari: " .. tostring(removed))
	T.eq(#Data().entries, 1, "resta il permanente")
	T.ok(LM:Delete(a.id), "un permanente si può cancellare di proposito")
	T.eq(#Data().entries, 0, "cancellato")
	LM:Record({ kind = "level", level = 5, importance = 2, perm = true })
	T.ok(LM:Reset("memories"), "azzera tutti i ricordi")
	T.eq(#Data().entries, 0, "anche i permanenti")
end)

T.run("cancellazione selettiva e dimenticare un luogo", function()
	Fresh()
	Go("Elwynn Forest")
	ADVANCE(30); FIRE("PLAYER_DEAD")
	local death = Kinds("death")[1]
	Go("Westfall", 100)
	-- cancellando il ricordo della morte, non si può più citare
	T.ok(LM:Delete(death.id), "cancella il ricordo della morte")
	T.ok(not LM:Delete(death.id), "non due volte")
	T.eq(Data().places["Elwynn Forest"].lastOutcome, nil, "la visita non risulta più finita male")
	Go("Elwynn Forest", 3600)
	T.ok(not Match({ lastVisitBad = true }, MemoryCtx()), "lastVisitBad non vale più")
	T.ok(Match({ remembered = "first_death" }, MemoryCtx()), "il flag è una cosa a parte: si toglie da solo")
	T.ok(LM:ClearFlag("first_death") and not LM:HasFlag("first_death"), "si toglie il flag")
	T.ok(not Match({ remembered = "first_death" }, MemoryCtx()), "remembered non vale più")

	-- dimenticare un luogo: la prossima volta è la prima
	Go("Westfall", 100)
	T.ok(LM:ForgetPlace("Elwynn Forest"), "dimentica il luogo")
	T.ok(not LM:ForgetPlace("Elwynn Forest"), "non due volte")
	Go("Elwynn Forest", 3600)
	local ctx = MemoryCtx()
	T.eq(ctx.memory.firstVisit, true, "di nuovo la prima visita")
	-- dimenticare il luogo in cui si è ora
	T.ok(LM:ForgetPlace("Elwynn Forest"), "dimentica il luogo in cui ci si trova")
	T.ok(not Match({ repeatVisit = true }, MemoryCtx()), "nessun ritorno inventato")
	T.ok(NS.Diagnostics.errors[1] == nil, "nessun errore")
end)

T.run("flag narrativi", function()
	Fresh()
	T.ok(LM:SetFlag("scena_1", "addon"), "imposta un flag")
	T.ok(LM:HasFlag("SCENA_1"), "i nomi non distinguono le maiuscole")
	local t0 = Data().flags.scena_1.t
	ADVANCE(100)
	LM:SetFlag("scena_1", "user")
	T.eq(Data().flags.scena_1.t, t0, "impostarlo di nuovo non cambia il primo momento")
	T.eq(Data().flags.scena_1.source, "addon", "né l'origine")
	T.ok(not LM:SetFlag("non valido"), "spazi non ammessi")
	T.ok(not LM:SetFlag("è"), "solo ASCII")
	T.ok(not LM:SetFlag(string.rep("a", 40)), "nome troppo lungo")
	T.ok(not LM:SetFlag(7), "il nome è una stringa")
	T.eq(table.concat(LM:FlagNames(), ","), "scena_1", "elenco dei flag")
	T.ok(Match({ remembered = "scena_1" }, MemoryCtx()), "una frase può leggere il flag")
	T.ok(LM:ClearFlag("scena_1") and not LM:ClearFlag("scena_1"), "si toglie una volta sola")
end)

---------------------------------------------------------------------------
-- Il richiamo avviene solo con un ricordo vero
---------------------------------------------------------------------------
local function PickIds(event, n, ctx)
	local ids = {}
	for _ = 1, n do
		NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
		local rec = Engine:PickEntry(event, ctx, "say")
		if rec then ids[rec.id] = (ids[rec.id] or 0) + 1 end
	end
	return ids
end

T.run("richiamo solo con un ricordo vero", function()
	Fresh()
	math.randomseed(11)
	Go("Teldrassil")
	-- prima visita: nessun ritorno da raccontare
	local ctx = MemoryCtx()
	T.eq(Engine:PickEntry("memory_return", ctx, "say"), nil, "alla prima visita il richiamo non parla")
	T.ok(not Engine:EventAllowed("memory_return", ctx), "la guardia dice no")
	T.eq(Engine:PickEntry("memory_return", NS:BuildContext({}), "emote"), nil, "nemmeno in emote")
	-- un contesto senza memoria (modulo spento)
	NS.db.modules.memory = false
	T.eq(MemoryCtx().memory, nil, "con il modulo spento ctx.memory non c'è")
	T.eq(Engine:PickEntry("memory_return", MemoryCtx(), "say"), nil, "con il modulo spento non parla")
	NS.db.modules.memory = true
	-- anche un comando manuale non inventa un ricordo
	local cmd = SlashCmdList.AZEROTHUNSPOKEN
	SENT = {}
	cmd("event memory_return")
	T.ok(T.sentContains("nessuna frase adatta"), "/au event memory_return senza ricordo: nessuna frase")

	-- un vero ritorno: ora parla, e dice solo ciò che è vero
	Go("Westfall", 100)
	Go("Teldrassil", 3600)
	ctx = MemoryCtx()
	T.ok(Engine:EventAllowed("memory_return", ctx), "la guardia dà via libera")
	local ids = PickIds("memory_return", 300, ctx)
	local seen = 0
	for id, n in pairs(ids) do
		seen = seen + n
		T.ok(id:find("^mem%.ret%.") ~= nil, "frase di ritorno: " .. id)
		T.ok(id ~= "mem.ret.bad.death" and id ~= "mem.ret.bad.flight" and id ~= "mem.ret.firstdeath",
			"nessuna frase su ricordi che non ci sono: " .. id)
		T.ok(id ~= "mem.ret.often" and id ~= "mem.ret.long", "né sulle visite o sui giorni che non ci sono: " .. id)
	end
	T.ok(seen > 250, "il richiamo parla quasi sempre: " .. seen)
	T.ok(ids["mem.ret.forest.01"] or ids["mem.ret.forest.02"], "in foresta ci sono le frasi della foresta")
	T.ok(not ids["mem.ret.capital"], "e non quelle della capitale")

	-- dopo una morte, e solo allora, possono parlare le frasi della visita finita male
	ADVANCE(30); FIRE("PLAYER_DEAD")
	Go("Westfall", 100)
	Go("Teldrassil", 3600)
	ids = PickIds("memory_return", 600, MemoryCtx())
	T.ok((ids["mem.ret.bad.death"] or 0) > 0, "dopo una morte parla la frase della morte")
	T.ok((ids["mem.ret.firstdeath"] or 0) > 0, "e quella del primo decesso")
	T.ok(not ids["mem.ret.bad.flight"], "ma non quella della fuga")
end)

T.run("prima visita: le frasi di prima volta escono solo la prima volta", function()
	Fresh()
	math.randomseed(5)
	Go("Teldrassil")
	local ctx = MemoryCtx()
	local ids = PickIds("zone", 300, ctx)
	local first = 0
	for id, n in pairs(ids) do if id:find("^mem%.first%.") then first = first + n end end
	T.ok(first > 30, "alla prima visita escono frasi di prima volta: " .. first)
	T.ok((ids["mem.first.forest.01"] or 0) + (ids["mem.first.forest.02"] or 0) > 0, "e quelle della foresta")
	T.ok(not ids["mem.first.capital"], "ma non quella della capitale")
	Go("Westfall", 100)
	Go("Teldrassil", 3600)
	ids = PickIds("zone", 300, MemoryCtx())
	for id in pairs(ids) do T.ok(not id:find("^mem%.first%."), "al ritorno nessuna frase di prima volta: " .. id) end
end)

T.run("il richiamo ha la priorità della memoria e batte l'atmosfera", function()
	Fresh()
	T.eq(ND:Priority("memory_return"), ND.PRIORITY.memory, "priorità del richiamo di memoria")
	T.ok(ND:Priority("memory_return") > ND:Priority("zone"), "il richiamo è sopra l'atmosfera")
	T.ok(ND:Priority("memory_return") < ND:Priority("death"), "ed è sotto un evento eccezionale")
	T.eq(ND.EVENT_MODULE.memory_return, "memory", "segue il modulo memoria")
	T.eq(Engine.CategoryOf and Engine.CategoryOf("memory_return") or Engine.EventCategory("memory_return"), "reflection", "categoria")

	-- flusso completo: primo ingresso (atmosfera di prima volta), poi ritorno (richiamo, che silenzia l'atmosfera)
	NS.db.intensity = 50
	NS.db.chance.zone, NS.db.chance.memory_return = 100, 100
	NS.db.pacing.globalCooldownSeconds = 0
	Pacing:Reset()
	math.randomseed(3)
	local n0 = #Narrator.history
	Go("Teldrassil", 200)
	ADVANCE(4)
	T.eq(#Narrator.history - n0, 1, "alla prima visita parla una sola frase")
	local winner
	for i = #Director.log, 1, -1 do
		if Director.log[i].result == "spoken" then winner = Director.log[i].event break end
	end
	T.eq(winner, "zone", "alla prima visita parla l'atmosfera della zona")

	Go("Westfall", 100)
	ADVANCE(200)
	Pacing:Reset()
	local n1 = #Narrator.history
	Go("Teldrassil", 3600)
	ADVANCE(4)
	T.eq(#Narrator.history - n1, 1, "al ritorno parla una sola frase (nessuna cascata)")
	local results = {}
	for _, e in ipairs(Director.log) do results[e.event] = e.result end
	T.eq(results.memory_return, "spoken", "parla il richiamo di memoria")
	T.eq(results.zone, "outranked", "e l'atmosfera tace")

	-- intensità 0: il narratore tace ma la memoria si scrive comunque
	NS.db.intensity = 0
	local before = #Narrator.history
	local visits = Data().places["Teldrassil"].visits
	Go("Westfall", 100)
	Go("Teldrassil", 3600)
	ADVANCE(4)
	T.eq(#Narrator.history, before, "intensità 0: silenzio")
	T.eq(Data().places["Teldrassil"].visits, visits + 1, "ma la visita è registrata")
	-- pausa immediata: lo stesso
	NS.db.intensity = 50
	NS.paused = true
	Go("Westfall", 100)
	Go("Teldrassil", 3600)
	ADVANCE(4)
	T.eq(#Narrator.history, before, "in pausa: silenzio")
	NS.paused = false
	-- in combattimento al momento del richiamo: nessuna offerta
	Go("Westfall", 100)
	ADVANCE(3600)
	P.zone = "Teldrassil"
	FIRE("ZONE_CHANGED_NEW_AREA")
	P.combat = true
	local queued = #Director.log
	ADVANCE(4)
	P.combat = false
	local after
	for i = queued + 1, #Director.log do if Director.log[i].event == "memory_return" then after = Director.log[i].result end end
	T.eq(after, nil, "in combattimento il richiamo non viene nemmeno offerto")
end)

-- #47: portali, navi, zeppelin, pietra del ritorno, uscita da un'istanza: il client manda PLAYER_ENTERING_WORLD e
-- ZONE_CHANGED_NEW_AREA in un ordine non provato; il ritorno e l'atmosfera partono comunque, una volta sola
T.run("ritorno dopo una schermata di caricamento: qualunque sia l'ordine degli eventi", function()
	for _, order in ipairs({ "world_first", "zone_first", "world_only" }) do
		Fresh()
		NS.db.intensity = 50
		NS.db.chance.zone, NS.db.chance.memory_return = 100, 100
		NS.db.pacing.globalCooldownSeconds = 0
		Pacing:Reset()
		math.randomseed(5)
		Go("Teldrassil", 200)
		Go("Westfall", 100)
		ADVANCE(200)
		Pacing:Reset()
		local visits = Data().places["Teldrassil"].visits
		Leap(3600)
		local n1, queued = #Narrator.history, #Director.log
		LOADING_SCREEN("Teldrassil", order)
		ADVANCE(4)
		T.eq(Data().places["Teldrassil"].visits, visits + 1, order .. ": una visita in più")
		T.eq(#Narrator.history - n1, 1, order .. ": parla una sola frase")
		local results, count = {}, {}
		for i = queued + 1, #Director.log do
			local e = Director.log[i]
			results[e.event] = e.result
			count[e.event] = (count[e.event] or 0) + 1
		end
		T.eq(results.memory_return, "spoken", order .. ": parla il richiamo di memoria")
		T.eq(results.zone, "outranked", order .. ": l'atmosfera tace")
		T.ok((count.memory_return or 0) == 1 and (count.zone or 0) <= 1, order .. ": ogni candidato una volta sola")
	end
	-- una zona nuova dopo la schermata: l'atmosfera, anche solo con PLAYER_ENTERING_WORLD
	Fresh()
	NS.db.intensity = 50
	NS.db.chance.zone = 100
	NS.db.pacing.globalCooldownSeconds = 0
	Pacing:Reset()
	Go("Durotar", 100)
	ADVANCE(10)
	Pacing:Reset()
	local queued = #Director.log
	LOADING_SCREEN("Teldrassil", "world_only")
	ADVANCE(4)
	local zone
	for i = queued + 1, #Director.log do if Director.log[i].event == "zone" then zone = Director.log[i].result end end
	T.eq(zone, "spoken", "zona nuova con solo PLAYER_ENTERING_WORLD: parla l'atmosfera")
	-- l'accesso e la ricarica non sono un ritorno
	Fresh()
	NS.db.intensity = 50
	NS.db.chance.zone, NS.db.chance.memory_return = 100, 100
	Pacing:Reset()
	Go("Teldrassil", 200)
	Leap(7200)
	LM:StartSession()   -- una sessione nuova: nessuna zona attuale
	queued = #Director.log
	P.zone = "Teldrassil"
	ENTER_GAME(true, false)
	ADVANCE(4)
	local offered = false
	for i = queued + 1, #Director.log do
		if Director.log[i].event == "memory_return" or Director.log[i].event == "zone" then offered = true end
	end
	T.ok(not offered, "all'accesso nessun ritorno né atmosfera di zona")
	T.eq(Data().places["Teldrassil"].visits, 2, "ma la visita è registrata")
	-- la prima visita ordinata dei test seguenti riparte pulita
	Fresh()
end)

T.run("il filtro rigido sugli argomenti da evitare vale anche per i richiami", function()
	Fresh()
	Go("Teldrassil")
	ADVANCE(30); FIRE("PLAYER_DEAD")
	Go("Westfall", 100)
	Go("Teldrassil", 3600)
	local ids = PickIds("memory_return", 600, MemoryCtx())
	T.ok((ids["mem.ret.bad.death"] or 0) > 0 and (ids["mem.ret.firstdeath"] or 0) > 0, "senza filtro le frasi sulla morte escono")
	NS.Personality:ToggleTopic("death")
	ids = PickIds("memory_return", 600, MemoryCtx())
	T.ok(not ids["mem.ret.bad.death"] and not ids["mem.ret.firstdeath"], "chi evita la morte non ne sente parlare")
	T.ok(next(ids) ~= nil, "ma il richiamo parla ancora d'altro")
	NS.Personality:SetArchetype("neutral")
end)

T.run("il validatore esige una condizione di memoria sugli eventi di richiamo", function()
	local ok = NS.Validator:Run({ packs = { "base_memory" } })
	T.eq(#ok.errors, 0, "le frasi di base della memoria sono valide")
	T.eq(#ok.warnings, 0, "senza avvisi")
	NS:RegisterPack({ id = "s6_bad", languages = { "itIT" },
		registry = {
			["s6.bad.nocond"] = { event = "memory_return", speaker = "inner", styles = { "intimate" } },
			["s6.bad.other"] = { event = "memory_return", speaker = "inner", styles = { "intimate" }, conditions = { mood = "forest" } },
			["s6.ok.cond"] = { event = "memory_return", speaker = "inner", styles = { "intimate" }, conditions = { lastVisitBad = true } },
			["s6.ok.any"] = { event = "memory_return", speaker = "inner", styles = { "intimate" },
				conditions = { any = { { repeatVisit = true }, { remembered = "x" } } } },
			["s6.bad.any"] = { event = "memory_return", speaker = "inner", styles = { "intimate" },
				conditions = { any = { { repeatVisit = true }, { mood = "forest" } } } },
			["s6.bad.not"] = { event = "memory_return", speaker = "inner", styles = { "intimate" },
				conditions = { ["not"] = { firstVisit = true } } },
			["s6.free"] = { event = "zone", speaker = "inner", styles = { "intimate" }, conditions = { mood = "forest" } },
		},
		texts = { itIT = { ["s6.bad.nocond"] = { "a" }, ["s6.bad.other"] = { "b" }, ["s6.ok.cond"] = { "c" },
			["s6.ok.any"] = { "d" }, ["s6.bad.any"] = { "e" }, ["s6.bad.not"] = { "f" }, ["s6.free"] = { "g" } } } })
	local r = NS.Validator:Run({ packs = { "s6_bad" } })
	local flagged = {}
	for _, p in ipairs(r.errors) do if p.code == "recallWithoutMemory" then flagged[p.id] = true end end
	T.ok(flagged["s6.bad.nocond"] and flagged["s6.bad.other"] and flagged["s6.bad.any"] and flagged["s6.bad.not"],
		"segnalate: " .. KeysOf(flagged))
	T.ok(not flagged["s6.ok.cond"] and not flagged["s6.ok.any"] and not flagged["s6.free"], "le altre vanno bene")
	T.eq(Count(flagged), 4, "solo le quattro senza memoria")
end)

T.run("condizioni di memoria: controllo dei valori", function()
	local function Problems(when) return #Engine.CheckConditions(when) end
	T.eq(Problems({ firstVisit = true, repeatVisit = false, lastVisitBad = "death", visitsMin = 3, visitsMax = 9,
		daysSinceLastVisit = { 1, 5 }, remembered = { "a", "b" } }), 0, "valori giusti")
	T.eq(Problems({ lastVisitBad = true }), 0, "lastVisitBad = true")
	T.eq(Problems({ lastVisitBad = { "death", "flight" } }), 0, "lastVisitBad = elenco")
	T.eq(Problems({ daysSinceLastVisit = 2 }), 0, "daysSinceLastVisit = numero")
	T.ok(Problems({ firstVisit = "sì" }) > 0, "firstVisit vuole un booleano")
	T.ok(Problems({ visitsMin = "molte" }) > 0, "visitsMin vuole un numero")
	T.ok(Problems({ daysSinceLastVisit = { 5, 1 } }) > 0, "intervallo al contrario")
	T.ok(Problems({ daysSinceLastVisit = "tre" }) > 0, "giorni non numerici")
	T.ok(Problems({ daysSinceLastVisit = -1 }) > 0, "giorni negativi")
	T.ok(Problems({ lastVisitBad = 3 }) > 0, "lastVisitBad = numero")
	T.ok(Problems({ remembered = 5 }) > 0, "remembered vuole stringhe")
	T.ok(Problems({ remembered = {} }) > 0, "remembered vuoto")
	T.ok(Engine.UsesMemory({ repeatVisit = true }) and not Engine.UsesMemory({ mood = "forest" }), "UsesMemory")
	T.ok(not Engine.UsesMemory({ firstVisit = false }), "firstVisit = false non garantisce un ricordo")
	T.ok(not Engine.UsesMemory(nil), "senza condizioni")
	-- una condizione malformata vale "falsa" invece di rompere la scelta
	local ctx = { memory = { visits = 2, repeatVisit = true } }
	T.ok(not Engine.SafeMatch({ visitsMin = "x" }, ctx), "visitsMin malformata: falsa")
	T.ok(not Engine.SafeMatch({ daysSinceLastVisit = "x" }, ctx), "daysSinceLastVisit malformata: falsa")
end)

T.run("una guardia che sbaglia o dice no ferma l'evento senza rompere nulla", function()
	Fresh()
	Engine:SetEventGuard("zone", "s6test", function() error("guardia rotta") end)
	NS.Diagnostics.errors = {}
	T.eq(Engine:PickEntry("zone", NS:BuildContext(), "say"), nil, "una guardia rotta equivale a un no")
	T.ok(NS.Diagnostics.errors[1] ~= nil, "l'errore va in diagnostica")
	Engine:SetEventGuard("zone", "s6test", function() return "sì" end)
	T.eq(Engine:PickEntry("zone", NS:BuildContext(), "say"), nil, "solo true è un via libera")
	Engine:SetEventGuard("zone", "s6test", function() return true end)
	T.ok(Engine:PickEntry("zone", NS:BuildContext(), "say") ~= nil, "con un sì l'evento parla")
	Engine:SetEventGuard("zone", "s6test", nil)
	T.ok(Engine:EventAllowed("zone", {}), "senza guardie l'evento è libero")
	NS.Diagnostics.errors = {}
end)

---------------------------------------------------------------------------
-- Privacy
---------------------------------------------------------------------------
-- Unica eccezione (S6b): CHAT_MSG_WHISPER_INFORM, di cui le relazioni leggono solo il nome del destinatario (TestRelations
-- lo verifica: il testo non entra mai nell'envelope, né nei dati salvati). S6c: CHAT_MSG_TEXT_EMOTE, le emote standard
-- del client, di cui l'interlocutore guarda solo se sono rivolte a noi e il mittente (TestOtherPlace lo verifica).
T.run("nessun testo di chat o di whisper nella memoria", function()
	Fresh()
	for event in pairs(NS.EventBus.sources) do
		T.ok(not event:find("^CHAT_MSG") or event == "CHAT_MSG_WHISPER_INFORM" or event == "CHAT_MSG_TEXT_EMOTE",
			"nessuna sorgente di chat: " .. event)
		T.ok(not event:find("WHISPER") or event == "CHAT_MSG_WHISPER_INFORM", "nessuna sorgente di whisper: " .. event)
	end
	-- Record scarta ogni campo che non sia previsto
	local e = LM:Record({ kind = "level", level = 12, text = "ti ho scritto in privato", whisper = "segreto",
		sender = "Altro-Reame", tags = { "ok", "NON VALIDO", "con spazi", "x" } })
	local allowed = { id = true, t = true, zone = true, kind = true, importance = true, tags = true, source = true,
		level = true, perm = true }
	for k in pairs(e) do T.ok(allowed[k], "campo ammesso: " .. k) end
	T.eq(table.concat(e.tags, ","), "ok,x", "solo tag brevi in minuscolo ASCII")
	-- anche dai dati salvati: un campo in più sparisce alla pulizia
	table.insert(Data().entries, { id = 500, t = 5, kind = "death", importance = 3, tags = {}, text = "frase di chat", from = "Tizio" })
	LM:Sanitize()
	for _, x in ipairs(Data().entries) do
		T.ok(x.text == nil and x.from == nil, "nessun testo libero salvato")
	end
	-- niente tag lunghi né più di sei
	local many = LM:Record({ kind = "level", level = 3, tags = { "a", "b", "c", "d", "e", "f", "g", "h", string.rep("z", 30) } })
	T.eq(#many.tags, LM.MAX_TAGS, "al massimo sei tag")
	-- i nomi di zona non superano il limite e non spezzano l'UTF-8
	local long = LM:Record({ kind = "level", level = 3, zone = string.rep("à", 100) })
	T.ok(#long.zone <= LM.ZONE_LEN and #long.zone % 2 == 0, "zona tagliata senza spezzare le lettere accentate")
end)

---------------------------------------------------------------------------
-- Schema dei dati e migrazioni
---------------------------------------------------------------------------
T.run("migrazione dello schema 3: il segnaposto vuoto diventa la memoria", function()
	AzerothUnspokenCharacterDB = { schemaVersion = 3, memory = { uses = { x = 1 } }, personality = {}, memories = {}, arcs = {}, history = {} }
	Config:Load()
	local c = AzerothUnspokenCharacterDB
	T.eq(c.schemaVersion, 7, "versione del personaggio")
	T.eq(c.memories.version, LM.VERSION, "versione della memoria")
	T.ok(type(c.memories.entries) == "table" and type(c.memories.places) == "table" and type(c.memories.flags) == "table"
		and type(c.memories.stats) == "table" and c.memories.nextId == 1, "campi presenti")
	T.eq(c.memory.uses.x, 1, "il resto è intatto")
	LM:StartSession()
	T.eq(LM:Sanitize(), 0, "nessuna voce scartata")
	T.ok(not LM.readOnly, "non è in sola lettura")

	-- rovinata: stringa, numero, booleano
	for _, bad in ipairs({ "testo", 7, true }) do
		AzerothUnspokenCharacterDB = { schemaVersion = 3, memories = bad }
		Config:Load()
		T.eq(AzerothUnspokenCharacterDB.memories.version, LM.VERSION, "memories rovinata (" .. tostring(bad) .. ")")
		T.ok(type(AzerothUnspokenCharacterDB.memories.entries) == "table", "con i campi")
	end
	-- da uno schema ancora più vecchio
	AzerothUnspokenCharacterDB = { schemaVersion = 1, memory = {} }
	Config:Load()
	T.eq(AzerothUnspokenCharacterDB.schemaVersion, 7, "da schema 1")
	T.eq(AzerothUnspokenCharacterDB.memories.version, LM.VERSION, "memoria creata")
	T.ok(Config.migrations.character[4] ~= nil and Config.migrations.global[4] ~= nil, "le migrazioni 4 esistono")
end)

T.run("pulizia dei dati salvati: voci rovinate, doppie, flag e luoghi", function()
	AzerothUnspokenCharacterDB = { schemaVersion = 4, memories = { version = 1, nextId = 2,
		entries = {
			{ id = 5, t = 100, kind = "death", zone = "Elwynn Forest", importance = 3, tags = { "bad" }, source = "auto" },
			{ id = 5, t = 101, kind = "death", importance = 3 },                     -- id doppio
			{ id = 6, t = 90, kind = "level", importance = 99, level = 12.7, perm = true, source = "boh" },
			"una stringa", 7, { id = "x" }, { id = 9 }, { id = 10, t = 1 }, { id = 11, t = 1, kind = "" },
			{ id = -3, t = 1, kind = "death" }, { id = 12, t = "ieri", kind = "death" },
		},
		places = {
			["Elwynn Forest"] = { name = "x", first = 1, last = 2, visits = 0, deaths = -4, lastOutcome = "bad", badKind = "death" },
			["Rotta"] = "no", [3] = { first = 1, last = 1 }, ["Senza date"] = { visits = 3 },
		},
		flags = { first_death = { t = 5, source = "auto" }, vecchio = true, ["non valido"] = { t = 1 }, rotto = 9 },
		stats = { compacted = -5 } } }
	Config:Load()
	LM:StartSession()
	local dropped = LM:Sanitize()
	local m = AzerothUnspokenCharacterDB.memories
	T.ok(dropped >= 8, "voci scartate: " .. dropped)
	T.eq(#m.entries, 2, "restano due ricordi veri")
	T.eq(m.entries[1].id, 6, "ordinati per momento")
	T.eq(m.entries[1].importance, 5, "importanza limitata a 5")
	T.eq(m.entries[1].level, 12, "livello intero")
	T.eq(m.entries[1].source, "auto", "origine sconosciuta -> auto")
	T.ok(m.entries[1].perm, "permanente conservato")
	T.ok(m.nextId > 6, "nextId oltre il massimo: " .. m.nextId)
	local p = m.places["Elwynn Forest"]
	T.ok(p ~= nil and p.visits == 1 and p.deaths == 0 and p.lastOutcome == "bad" and p.badKind == "death", "luogo ripulito")
	T.eq(p.name, "Elwynn Forest", "il nome è la chiave")
	T.ok(m.places["Rotta"] == nil and m.places["Senza date"] == nil, "luoghi rovinati scartati")
	T.ok(m.flags.first_death ~= nil and m.flags.vecchio ~= nil, "flag veri conservati")
	T.ok(m.flags["non valido"] == nil and m.flags.rotto == nil, "flag rovinati scartati")
	T.eq(m.stats.compacted, 0, "contatore negativo azzerato")
	-- la pulizia è idempotente
	T.eq(LM:Sanitize(), 0, "una seconda pulizia non scarta nulla")
end)

T.run("migrazione interna della forma dei dati (versione 0 -> attuale)", function()
	AzerothUnspokenCharacterDB = { schemaVersion = 4, memories = { version = 0 } }
	Config:Load()
	LM:StartSession()
	LM:Sanitize()
	local m = AzerothUnspokenCharacterDB.memories
	T.eq(m.version, LM.VERSION, "versione attuale")
	T.ok(type(m.entries) == "table" and type(m.places) == "table" and m.nextId == 1, "campi creati")
	-- una migrazione futura della forma, in ordine e una volta sola
	local calls = 0
	local base = LM.VERSION
	LM.VERSION = base + 1
	LM.migrations[base + 1] = function(mm) calls = calls + 1; mm.nuovo = true end
	LM:Sanitize()
	T.eq(m.version, base + 1, "versione successiva")
	T.ok(m.nuovo and calls == 1, "migrazione eseguita")
	LM:Sanitize()
	T.eq(calls, 1, "una volta sola")
	-- una migrazione che fallisce lascia la memoria in sola lettura
	LM.VERSION = base + 2
	LM.migrations[base + 2] = function() error("rotta") end
	LM:Sanitize()
	T.ok(LM.readOnly, "migrazione fallita: sola lettura")
	T.eq(m.version, base + 1, "la versione non avanza")
	LM.VERSION, LM.migrations[base + 1], LM.migrations[base + 2] = base, nil, nil
	NS.Diagnostics.errors = {}
end)

T.run("dati di una versione più nuova: sola lettura, nulla si perde", function()
	AzerothUnspokenCharacterDB = { schemaVersion = 4, memories = { version = 99, nextId = 2, futuro = "x",
		entries = { { id = 1, t = 1, kind = "death", importance = 3, tags = {}, nuovoCampo = true } }, places = {}, flags = {}, stats = {} } }
	Config:Load()
	LM:StartSession()
	T.eq(LM:Sanitize(), 0, "nessuna pulizia")
	T.ok(LM.readOnly, "sola lettura")
	T.ok(not LM:Enabled(), "la memoria è spenta")
	T.eq(LM:Record({ kind = "level", level = 3 }), nil, "non registra")
	T.ok(not LM:Delete(1) and not LM:SetPermanent(1) and not LM:SetFlag("x") and not LM:Reset("all"), "non cambia nulla")
	T.ok(not LM:ForgetPlace("x") and not LM:ClearFlag("x"), "nemmeno luoghi e flag")
	local m = AzerothUnspokenCharacterDB.memories
	T.ok(m.version == 99 and m.futuro == "x" and #m.entries == 1 and m.entries[1].nuovoCampo, "i dati sono intatti")
	T.eq(MemoryCtx().memory, nil, "nessun contesto di memoria")
	T.ok(LM:Status():find("read-only", 1, true), "lo stato lo dice")
	T.ok(NS.Diagnostics.errors[1] ~= nil, "se ne scrive in diagnostica")
	-- lo schema del personaggio più nuovo: si lavora su una copia
	AzerothUnspokenCharacterDB = { schemaVersion = 99, memories = { version = 1, nextId = 1, entries = {}, places = {}, flags = {}, stats = {} } }
	Config:Load()
	LM:StartSession()
	LM:Sanitize()
	LM:SetFlag("prova", "user")
	T.eq(next(AzerothUnspokenCharacterDB.memories.flags), nil, "il file salvato non cambia (lavora una copia)")
	LM.readOnly = false
	NS.Diagnostics.errors = {}
end)

---------------------------------------------------------------------------
-- Moduli e interruttori
---------------------------------------------------------------------------
T.run("modulo memoria spento: nessuna registrazione, nessun richiamo", function()
	AzerothUnspokenCharacterDB = nil
	Config:Load()
	Fresh()
	NS.db.modules.memory = false
	T.ok(not LM:Enabled(), "spenta")
	Go("Elwynn Forest")
	ADVANCE(30); FIRE("PLAYER_DEAD")
	FIRE("PLAYER_LEVEL_UP", 20)
	T.eq(#Data().entries, 0, "nessun ricordo")
	T.eq(Count(Data().places), 0, "nessun luogo")
	T.eq(LM:Record({ kind = "level", level = 3 }), nil, "Record non registra")
	T.eq(MemoryCtx().memory, nil, "nessun ctx.memory")
	T.ok(LM:Status():find("off", 1, true), "lo stato dice off")
	-- riacceso: ricomincia, ma la visita non è la prima di un luogo già visto prima dello spegnimento
	NS.db.modules.memory = true
	Go("Westfall", 100)
	T.eq(#Kinds("first_visit"), 1, "riacceso, registra da qui")
	-- il preset "mondo" e gli altri lasciano la memoria accesa
	for _, name in ipairs(Config.PRESET_ORDER) do T.ok(Config.presets[name].memory == true, "preset " .. name .. " con la memoria") end
end)

---------------------------------------------------------------------------
-- Comandi e diario
---------------------------------------------------------------------------
local function Run(cmd)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN(cmd)
	local out = {}
	for _, s in ipairs(SENT) do table.insert(out, (s:gsub("^PRINT: |cff%x%x%x%x%x%x[^|]*|r: ", ""))) end
	return table.concat(out, " | ")
end

local function JFrame() return _G.AzerothUnspokenJournal end

local function Texts(frame)
	local out = {}
	for _, c in ipairs(frame.children) do
		if c.kind == "FontString" then table.insert(out, c:GetText()) end
	end
	return out
end

local function AllText(frame) return table.concat(Texts(frame), "\n") end

local function Buttons(frame, label)
	local out = {}
	for _, c in ipairs(frame.children) do
		if c.kind == "Button" and c:IsShown() and (label == nil or c:GetText() == label) then table.insert(out, c) end
	end
	return out
end

local function Populate()
	Fresh()
	Go("Elwynn Forest")
	ADVANCE(30); FIRE("PLAYER_DEAD")
	Go("Westfall", 100)
	Go("Elwynn Forest", 2 * DAY)
	P.level = 10; FIRE("PLAYER_LEVEL_UP", 10); P.level = 30
end

T.run("/au journal: finestra, schede, elenco", function()
	Populate()
	T.ok(Run("journal") ~= nil, "il comando non dà errori")
	local f = JFrame()
	T.ok(f ~= nil and f:IsShown(), "la finestra si apre")
	T.ok(NS.JournalFrame:IsOpen(), "IsOpen")
	local text = AllText(f)
	T.ok(text:find("Diario del personaggio", 1, true), "titolo in italiano")
	T.ok(text:find("Prima visita: Elwynn Forest", 1, true), "il ricordo di prima visita")
	T.ok(text:find("Morte: Elwynn Forest", 1, true), "il ricordo di morte")
	T.ok(text:find("Livello raggiunto 10", 1, true), "il livello")
	T.ok(text:find("Ritorno: Elwynn Forest", 1, true), "il ritorno")
	T.ok(text:find("%d%d%d%d%-%d%d%-%d%d"), "la data")
	-- le schede
	local tabs = Buttons(f)
	local byText = {}
	for _, b in ipairs(tabs) do byText[b:GetText():gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("[» «]", "")] = b end
	T.ok(byText["Ricordi"] and byText["Luoghi"] and byText["Flag"] and byText["Sessione"], "quattro schede")
	byText["Luoghi"]:Click()
	text = AllText(f)
	T.ok(text:find("Elwynn Forest", 1, true) and text:find("Westfall", 1, true), "i luoghi visitati")
	T.ok(text:find("2 visite", 1, true), "il numero di visite")
	byText["Flag"]:Click()
	text = AllText(f)
	T.ok(text:find("first_death", 1, true) and text:find("level_10", 1, true), "i flag")
	byText["Sessione"]:Click()
	text = AllText(f)
	T.ok(text:find("Solo di questa sessione", 1, true), "la nota della sessione")
	T.ok(text:find("Ritorno", 1, true), "anche il momento solo di sessione")
	T.eq(#Buttons(f, "x"), 0, "la sessione non ha pulsanti di cancellazione")
	-- si richiude con lo stesso comando
	Run("journal")
	T.ok(not f:IsShown(), "lo stesso comando la chiude")
	Run("journal")
	T.ok(f:IsShown(), "di nuovo aperta")
	Run("diary")
	T.ok(f:IsShown(), "diary non è un comando: la finestra resta com'è")
	Run("journal")
	NS.JournalFrame:Close()
end)

T.run("diario: cancellazione e permanenza dai pulsanti", function()
	Populate()
	NS.JournalFrame:Open("memories")
	local f = JFrame()
	local n0 = #Data().entries
	local del = Buttons(f, "x")
	T.eq(#del, n0, "un pulsante di cancellazione per ricordo")
	-- la riga più recente è la prima: cancella la prima
	local first = LM:List()[1]
	del[1]:Click()
	T.eq(#Data().entries, n0 - 1, "il ricordo è cancellato")
	T.ok(not LM:Find(first.id), "proprio quello")
	local pin = Buttons(f, "P")
	local second = LM:List()[1]
	pin[1]:Click()
	T.ok(LM:Find(second.id).perm, "il ricordo è permanente")
	T.ok(AllText(f):find("[P]", 1, true), "segnato con [P]")
	Buttons(f, "P")[1]:Click()
	T.ok(not LM:Find(second.id).perm, "si toglie dallo stesso pulsante")
	-- luoghi: dimenticare
	NS.JournalFrame:Open("places")
	local places = Count(Data().places)
	Buttons(f, "x")[1]:Click()
	T.eq(Count(Data().places), places - 1, "il luogo è dimenticato")
	-- flag: toglierlo
	NS.JournalFrame:Open("flags")
	local flags = Count(Data().flags)
	Buttons(f, "x")[1]:Click()
	T.eq(Count(Data().flags), flags - 1, "il flag è tolto")
	NS.JournalFrame:Close()
end)

T.run("diario: pagine", function()
	Fresh()
	for i = 1, 30 do LM:Record({ kind = "level", level = i, importance = 2, t = 5000 + i }) end
	NS.JournalFrame:Open("memories")
	local f = JFrame()
	T.ok(AllText(f):find("pagina 1 di 3", 1, true), "tre pagine da undici righe")
	local next_ = Buttons(f, ">")[1]
	local prev = Buttons(f, "<")[1]
	T.ok(next_ ~= nil and prev ~= nil, "pulsanti delle pagine")
	T.ok(not prev:IsEnabled(), "dalla prima pagina non si torna indietro")
	next_:Click()
	T.ok(AllText(f):find("pagina 2 di 3", 1, true), "seconda pagina")
	next_:Click(); next_:Click()
	T.ok(AllText(f):find("pagina 3 di 3", 1, true), "non si va oltre l'ultima")
	T.ok(not next_:IsEnabled(), "avanti disattivato")
	-- cancellando fino a restare con una pagina, il numero di pagina rientra
	for _, e in ipairs(LM:List()) do if e.level <= 20 then LM:Delete(e.id) end end
	T.ok(AllText(f):find("pagina 1 di 1", 1, true), "una sola pagina, rientrata: " .. AllText(f):sub(1, 400))
	LM:Reset("all")
	T.ok(AllText(f):find("Niente da mostrare", 1, true), "elenco vuoto")
	NS.JournalFrame:Close()
end)

T.run("diario: schede aggiunte da altri sistemi (S6b, S9)", function()
	Fresh()
	T.ok(JournalFrame:RegisterTab("prova", { label = "mem_tab_flags", rows = function()
		return { { text = "riga di prova", actions = { { label = "!", fn = function() NS.provaClick = true end } } } }
	end }), "si registra una scheda")
	T.ok(not JournalFrame:RegisterTab("rotta", { label = "x" }), "senza righe è rifiutata")
	T.ok(not JournalFrame:RegisterTab(5, {}), "id sbagliato")
	NS.JournalFrame:Open("prova")
	local f = JFrame()
	T.ok(AllText(f):find("riga di prova", 1, true), "la riga compare")
	Buttons(f, "!")[1]:Click()
	T.ok(NS.provaClick, "l'azione funziona")
	NS.provaClick = nil
	-- una scheda con un errore non rompe il diario? Si registra come ogni altra; qui basta che si possa sostituire
	JournalFrame:RegisterTab("prova", { label = "mem_tab_flags", rows = function() return {} end })
	JournalFrame.tabs[#JournalFrame.tabs] = nil
	NS.JournalFrame:Open("memories")
	NS.JournalFrame:Close()
end)

T.run("diario: esportazione testuale manuale", function()
	Populate()
	T.ok(NS.JournalFrame:ShowExport(), "la finestra di esportazione si apre")
	local ex = _G.AzerothUnspokenJournalExport
	T.ok(ex ~= nil and ex:IsShown() and NS.JournalFrame:IsExportOpen(), "visibile")
	local text = ex.box:GetText()
	T.ok(text:find("diario di Garrosh", 1, true), "intestazione con il nome: " .. text:sub(1, 80))
	T.ok(text:find("== Ricordi (", 1, true) and text:find("== Luoghi (", 1, true) and text:find("== Flag (", 1, true), "le tre sezioni")
	T.ok(text:find("Prima visita: Elwynn Forest", 1, true) and text:find("Morte: Elwynn Forest", 1, true), "i ricordi")
	T.ok(text:find("first_death", 1, true), "i flag")
	T.ok(text:find("2 visite", 1, true), "i luoghi")
	T.ok(not text:find("\r", 1, true), "fine riga LF")
	T.ok(ex.box._s.focused and ex.text == text, "il testo è pronto da copiare")
	-- sola lettura: ciò che si scrive viene rimesso com'era
	ex.box._s.text = "cancellato"
	ex.box.scripts.OnTextChanged(ex.box, true)
	T.eq(ex.box:GetText(), text, "il testo digitato dall'utente viene ripristinato")
	ex.box.scripts.OnEscapePressed(ex.box)
	T.ok(not ex:IsShown(), "Esc chiude")
	-- anche dal diario e dal comando
	NS.JournalFrame:Open("memories")
	Buttons(JFrame(), "Esporta")[1]:Click()
	T.ok(ex:IsShown(), "dal pulsante Esporta")
	ex:Hide()
	Run("journal export")
	T.ok(ex:IsShown(), "da /au journal export")
	ex:Hide()
	-- in inglese
	NS.db.locale = "en"
	local en = LM:ExportText()
	T.ok(en:find("journal of Garrosh", 1, true) and en:find("== Memories (", 1, true) and en:find("First visit: Elwynn Forest", 1, true),
		"export in inglese")
	NS.db.locale = "it"
	-- l'esportazione non contiene altro che il diario
	for _, bad in ipairs({ "whisper", "sussurra", "CHAT" }) do T.ok(not text:find(bad, 1, true), "nessun " .. bad) end
	NS.JournalFrame:Close()
end)

T.run("/au journal: sottocomandi", function()
	Populate()
	local out = Run("journal list")
	T.ok(out:find("memoria: ", 1, true) and out:find("ricordi", 1, true), "lista: " .. out)
	T.ok(out:find("Prima visita: Elwynn Forest", 1, true), "la lista mostra i ricordi")
	out = Run("journal places")
	T.ok(out:find("Elwynn Forest", 1, true) and out:find("Westfall", 1, true), "luoghi")
	-- flag
	out = Run("journal flag")
	T.ok(out:find("first_death", 1, true), "elenco dei flag")
	out = Run("journal flag scena_9")
	T.ok(out:find("flag impostato: scena_9", 1, true) and LM:HasFlag("scena_9"), "imposta un flag")
	T.eq(Data().flags.scena_9.source, "user", "origine: utente")
	out = Run("journal flag scena_9")
	T.ok(out:find("flag tolto: scena_9", 1, true) and not LM:HasFlag("scena_9"), "lo toglie")
	out = Run("journal flag non@valido")
	T.ok(out:find("non valido", 1, true) and not LM:HasFlag("non@valido"), "nome non valido")
	-- permanente ed elimina
	local e = LM:List()[1]
	out = Run("journal pin " .. e.id)
	T.ok(LM:Find(e.id).perm and out:find("permanente", 1, true), "permanente: " .. out)
	out = Run("journal pin #" .. e.id)
	T.ok(not LM:Find(e.id).perm, "pin lo toglie")
	out = Run("journal pin 9999")
	T.ok(out:find("non trovato", 1, true), "ricordo inesistente")
	out = Run("journal delete " .. e.id)
	T.ok(not LM:Find(e.id) and out:find("cancellato", 1, true), "elimina")
	out = Run("journal delete " .. e.id)
	T.ok(out:find("non trovato", 1, true), "non due volte")
	-- dimentica
	out = Run("journal forget Westfall")
	T.ok(Data().places.Westfall == nil and out:find("dimenticato", 1, true), "dimentica un luogo")
	out = Run("journal forget Atlantide")
	T.ok(out:find("non trovato", 1, true), "luogo inesistente")
	-- aiuto
	out = Run("journal boh")
	T.ok(out:find("uso: /au journal", 1, true), "aiuto (it, con il comando inglese)")
	-- le parole italiane non sono comandi
	out = Run("diario lista")
	T.ok(out:find("/au journal", 1, true), "diario: suggerisce il comando inglese")
	out = Run("journal lista")
	T.ok(out:find("uso: /au journal", 1, true), "journal lista: l'aiuto con le parole inglesi")
	NS.db.locale = "en"
	out = Run("journal places")
	T.ok(out:find("Elwynn Forest", 1, true), "journal places")
	out = Run("journal boh")
	T.ok(out:find("usage: /au journal", 1, true), "aiuto in inglese")
	NS.db.locale = "it"
	T.ok(NS.Diagnostics.errors[1] == nil, "nessun errore dai comandi")
end)

T.run("/au journal reset: serve una conferma entro 15 secondi", function()
	Populate()
	local n = #Data().entries
	local out = Run("journal reset")
	T.ok(out:find("Per confermare ripeti", 1, true), "chiede conferma: " .. out)
	T.eq(#Data().entries, n, "il primo comando non cancella nulla")
	out = Run("journal reset")
	T.ok(out:find("memoria azzerata", 1, true), "il secondo cancella: " .. out)
	T.eq(#Data().entries, 0, "ricordi azzerati")
	T.eq(Count(Data().places), 0, "luoghi azzerati")
	T.eq(Count(Data().flags), 0, "flag azzerati")
	-- la conferma scade
	Populate()
	Run("journal reset")
	ADVANCE(20)
	out = Run("journal reset")
	T.ok(out:find("Per confermare ripeti", 1, true) and #Data().entries > 0, "scaduta: chiede di nuovo")
	-- parti diverse
	Run("journal reset places")
	T.ok(Count(Data().places) > 0 and #Data().entries > 0, "un altro bersaglio chiede un'altra conferma")
	Run("journal reset places")
	T.eq(Count(Data().places), 0, "azzerati i soli luoghi")
	T.ok(#Data().entries > 0 and Count(Data().flags) > 0, "ricordi e flag restano")
	Run("journal reset flags"); Run("journal reset flags")
	T.eq(Count(Data().flags), 0, "azzerati i soli flag")
	Run("journal reset ordinary"); Run("journal reset ordinary")
	T.eq(#Data().entries, 0, "azzerati i ricordi ordinari")
	T.ok(NS.Diagnostics.errors[1] == nil, "nessun errore")
end)

T.run("diario: pulsante Dimentica tutto con conferma", function()
	Populate()
	NS.JournalFrame:Open("memories")
	local f = JFrame()
	local n = #Data().entries
	local reset = Buttons(f, "Dimentica tutto")[1]
	T.ok(reset ~= nil, "il pulsante c'è")
	reset:Click()
	T.eq(#Data().entries, n, "il primo clic non cancella")
	T.ok(#Buttons(f, "Conferma: dimentica") == 1, "il pulsante chiede conferma")
	ADVANCE(7)
	T.ok(#Buttons(f, "Dimentica tutto") == 1, "dopo qualche secondo torna com'era")
	Buttons(f, "Dimentica tutto")[1]:Click()
	Buttons(f, "Conferma: dimentica")[1]:Click()
	T.eq(#Data().entries, 0, "il secondo clic azzera")
	NS.JournalFrame:Close()
end)

T.run("diario in inglese e con la memoria spenta", function()
	Populate()
	NS.db.locale = "en"
	NS.JournalFrame:Open("memories")
	local f = JFrame()
	local text = AllText(f)
	T.ok(text:find("Character journal", 1, true) and text:find("First visit: Elwynn Forest", 1, true), "diario in inglese")
	T.ok(#Buttons(f, "Export") == 1 and #Buttons(f, "Forget everything") == 1, "pulsanti in inglese")
	NS.JournalFrame:Close()
	NS.db.locale = "it"
	NS.db.modules.memory = false
	local out = Run("journal")
	T.ok(out:find("la memoria è spenta", 1, true), "con la memoria spenta lo dice: " .. out)
	NS.db.modules.memory = true
end)

-- #52: i tetti valgono anche per i dati caricati, non solo quando si aggiunge
T.run("tetti sui dati caricati: permanenti, flag, nomi con le maiuscole", function()
	Fresh()
	local m = Data()
	for i = 1, 260 do
		table.insert(m.entries, { id = i, t = 1000 + i, kind = "level", importance = 1 + i % 5, perm = true, tags = {}, level = i })
	end
	m.nextId = 300
	local total = #m.entries
	LM:Sanitize()
	T.eq(LM:CountPermanent(), LM.MAX_PERMANENT, "i permanenti caricati sono al tetto")
	T.ok(#m.entries >= total - LM:Compact(), "nessun ricordo cancellato dal tetto dei permanenti")
	local keptTop = false
	for _, e in ipairs(m.entries) do if e.perm and e.importance == 5 then keptTop = true end end
	T.ok(keptTop, "i più importanti restano permanenti")
	-- flag: nomi con le maiuscole riportati al minuscolo, tetto ai flag
	Fresh()
	m = Data()
	m.flags = { First_Capital = { t = 5, source = "auto" }, ok_flag = { t = 6, source = "user" } }
	LM:Sanitize()
	T.ok(LM:HasFlag("First_Capital") and LM:HasFlag("first_capital"), "il flag con le maiuscole è raggiungibile")
	T.ok(m.flags.first_capital and not m.flags.First_Capital, "salvato in minuscolo")
	T.ok(LM:ClearFlag("First_Capital") and not LM:HasFlag("first_capital"), "e si può togliere")
	m.flags = {}
	for i = 1, LM.MAX_FLAGS + 50 do m.flags["f_" .. i] = { t = i, source = (i <= 10) and "user" or "auto" } end
	LM:Sanitize()
	local n = 0
	for _ in pairs(m.flags) do n = n + 1 end
	T.eq(n, LM.MAX_FLAGS, "flag al tetto")
	T.ok(m.flags.f_1 and m.flags.f_10, "quelli dell'utente restano")
	T.ok(not m.flags.f_11 and m.flags["f_" .. (LM.MAX_FLAGS + 50)], "si dimenticano i più vecchi automatici")
	T.ok(LM:SetFlag("nuovo_flag", "addon") and LM:HasFlag("nuovo_flag"), "un flag nuovo si imposta")
	n = 0
	for _ in pairs(m.flags) do n = n + 1 end
	T.eq(n, LM.MAX_FLAGS, "e il tetto regge anche quando si aggiunge")
	Fresh()
end)

T.run("/au debug e impostazioni", function()
	Populate()
	local out = Run("debug")
	T.ok(out:find("Living Memory: ", 1, true), "/au debug mostra la memoria")
	T.ok(out:find("places", 1, true) and out:find("in Elwynn Forest", 1, true), "con luoghi e zona attuale: " .. out)
	T.ok(Run("help all"):find("/au journal", 1, true), "l'aiuto elenca /au journal")
	NS.db.locale = "en"
	T.ok(Run("help all"):find("/au journal", 1, true), "l'aiuto inglese elenca /au journal")
	NS.db.locale = "it"
	-- il modulo memoria è ormai attivo nelle impostazioni
	for _, w in ipairs(FindWidgets(function(x) return rawget(x, "Refresh") ~= nil end)) do w:Refresh() end
	local found = FindWidgets(function(x) return x.kind == "Button" and x:GetText() == NS:L("opt_journal") end)
	T.ok(#found >= 1, "il pannello delle impostazioni apre il diario")
	if found[1] then
		found[1]:Click()
		T.ok(NS.JournalFrame:IsOpen(), "dal pannello si apre il diario")
		NS.JournalFrame:Close()
	end
end)

T.run("chiavi d'interfaccia: stesse in italiano e in inglese", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	for k in pairs(it) do
		if k:find("^mem_") or k == "opt_journal" then T.ok(en[k] ~= nil, "manca in inglese: " .. k) end
	end
	for k in pairs(en) do
		if k:find("^mem_") or k == "opt_journal" then T.ok(it[k] ~= nil, "manca in italiano: " .. k) end
	end
	for kind in pairs(LM.KINDS) do
		if kind ~= "story" then T.ok(it["mem_kind_" .. kind] ~= nil, "etichetta del tipo " .. kind) end
	end
	T.ok(it.mem_kind_story ~= nil, "etichetta del tipo story")
end)

T.run("nessun errore intercettato in tutta la prova", function()
	Fresh()
	NS.Diagnostics.errors = {}
	Go("Elwynn Forest"); ADVANCE(30); FIRE("PLAYER_DEAD"); Go("Westfall", 100); Go("Elwynn Forest", 3600)
	T.ok(NS.Diagnostics.errors[1] == nil, "nessun errore")
	-- i campi del contesto sono sola lettura per convenzione ma una tabella nuova a ogni costruzione
	local a, b = NS:BuildContext(), NS:BuildContext()
	T.ok(a.memory ~= b.memory, "ctx.memory è nuovo a ogni costruzione")
	T.ok(a.memory.flags == b.memory.flags, "i flag sono condivisi (sola lettura)")
end)
