-- Test dello step S4: Narrative Director (gate, priorità, pacing, silenzio, sospensione), peso
-- W = B x C x P x N x S x R e StyleResolver. Ogni prova che usa il caso fissa il seme del generatore.
local NS = ...
local Engine, Director, ND, Pacing, SR = NS.Engine, NS.Director, NS.NarrativeDirector, NS.Pacing, NS.StyleResolver
local Narrator, Gateway = NS.Narrator, NS.Gateway

NS.db.locale = "it"
NS.db.proseDepth = "literary"

local function Near(a, b, eps) return math.abs(a - b) < (eps or 1e-9) end

local function Reset()
	SENT = {}
	P.cinematic, P.combat = false, false
	NS.paused = false
	NS.db.enabled = true
	NS.db.intensity = 50
	NS.db.proseDepth = "literary"
	NS.db.chat.mode = "PRIVATE"
	NS.db.pacing.globalCooldownSeconds = 45
	NS.db.pacing.suppressInHighDemand = true
	NS.db.chance = {}
	-- these tests count the lines of the fights as they are said: "show" (#185 holds them by default, TestChatGateway)
	NS.db.pacing.inCombat = "show"
	Gateway.combatHeld = { lines = {} }
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.ui.narrator.historySize = 1000
	Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	ADVANCE(1000)
	Pacing:Reset()
end

-- Offre un evento spontaneo e lascia passare la finestra di arbitraggio: true se ha parlato
local function Spoken(fn)
	local n = #Narrator.history
	fn()
	ADVANCE(1)
	return #Narrator.history - n
end

local function LastLog(event)
	for i = #Director.log, 1, -1 do
		if Director.log[i].event == event then return Director.log[i].result end
	end
	return nil
end

-- l'ultimo evento che ha parlato, dal registro delle decisioni
local function Winner()
	for i = #Director.log, 1, -1 do
		if Director.log[i].result == "spoken" then return Director.log[i].event end
	end
	return nil
end

-- pacchetto di prova: eventi propri, così il database di base non entra nei conteggi
NS:RegisterEvent("s4w", { category = "reflection" })
NS:RegisterEvent("s4dup", { category = "reflection" })
NS:RegisterEvent("s4fb", { category = "reflection" })
NS:RegisterEvent("s4fr", { category = "reflection" })
NS:RegisterEvent("s4id", { category = "reflection" })
NS:RegisterEvent("s4mem", { category = "reflection" })
local registry, texts = {}, {}
local function Add(id, def, text)
	registry[id] = def
	texts[id] = text or id
end
Add("s4.w1", { event = "s4w", speaker = "character", weight = 1 })
Add("s4.w3", { event = "s4w", speaker = "character", weight = 3 })
Add("s4.spec", { event = "s4w", speaker = "character", conditions = { class = "WARRIOR" } })
Add("s4.nat", { event = "s4w", speaker = "character", depth = "natural" })
Add("s4.epic", { event = "s4w", speaker = "character", styles = { "epic" } })
Add("s4.daily", { event = "s4w", speaker = "character", styles = { "everyday" } })
for i = 1, 10 do Add(("s4.dup%02d"):format(i), { event = "s4dup", speaker = "character" }) end
Add("s4.fb.daily", { event = "s4fb", speaker = "character", styles = { "everyday" } })
Add("s4.fb.joke", { event = "s4fb", speaker = "character", styles = { "ironic" } })
Add("s4.fr.joke", { event = "s4fr", speaker = "character", styles = { "ironic" } }, "battuta")
Add("s4.fr.vow", { event = "s4fr", speaker = "character", styles = { "epic" } }, "giuramento")
Add("s4.id", { event = "s4id", speaker = "character", cooldown = 100 })
Add("s4.mem", { event = "s4mem", speaker = "inner" })
NS:RegisterPack({
	id = "s4test", registry = registry, texts = { itIT = texts },
	frames = {
		{ event = "s4fr", styles = { "ceremonial" }, it = "leva la mano in un gesto solenne: «{line}»" },
	},
})
NS:RegisterEventStyles("s4fb", { "epic" })

---------------------------------------------------------------------------
-- Peso W = B x C x P x N x S x R
---------------------------------------------------------------------------
T.run("peso: i sei fattori", function()
	Reset()
	local ctx = NS:BuildContext()
	local f = Engine:Weight(Engine.byId["s4.w3"], "s4w", ctx)
	T.eq(f.B, 3, "B è il peso della regola")
	T.eq(f.C, 1, "C senza condizioni"); T.eq(f.P, 1, "P neutro (S5)"); T.eq(f.R, 1, "R neutro (S6b)")
	T.eq(f.N, 1, "N senza usi"); T.eq(f.S, 1, "S senza profondità né registri")
	T.ok(Near(f.W, 3), "W = 3")
	f = Engine:Weight(Engine.byId["s4.spec"], "s4w", ctx)
	T.ok(Near(f.C, 1 + Engine.SPEC_BONUS), "C cresce con le condizioni")
	f = Engine:Weight(Engine.byId["s4.nat"], "s4w", ctx)
	T.ok(Near(f.S, Engine.DEPTH_MISMATCH), "S: profondità diversa")
	-- N: usi e stesso registro dell'ultima frase
	Engine.Remember("s4w", "s4.w1", 1)
	f = Engine:Weight(Engine.byId["s4.w1"], "s4w", ctx)
	T.ok(Near(f.N, 1 / (1 + Engine.USE_DECAY)), "N scende con gli usi")
	NS.cdb.memory.lastTone.s4w = "epic"
	f = Engine:Weight(Engine.byId["s4.epic"], "s4w", ctx)
	T.ok(Near(f.N, Engine.SAME_TONE), "N scende con lo stesso registro dell'ultima frase")
	NS.cdb.memory.lastTone.s4w = nil
	NS.cdb.memory.uses["s4.w1"] = nil
	f = Engine:Weight(Engine.byId["s4.w3"], "s4w", ctx)
	T.ok(Near(f.W, f.B * f.C * f.P * f.N * f.S * f.R), "W è il prodotto")
end)

T.run("peso: distribuzione con seme fisso", function()
	Reset()
	math.randomseed(4242)
	local ctx = NS:BuildContext()
	local items, total = {}, 0
	for _, id in ipairs({ "s4.w1", "s4.w3", "s4.spec", "s4.nat" }) do
		local w = Engine:Weight(Engine.byId[id], "s4w", ctx).W
		table.insert(items, { e = Engine.byId[id], w = w })
		total = total + w
	end
	local hits, N = {}, 6000
	for _ = 1, N do
		local it = Engine.WeightedPick(items, "s4w:distribution")   -- chiave senza memoria: niente esclusioni
		hits[it.e.id] = (hits[it.e.id] or 0) + 1
	end
	for _, it in ipairs(items) do
		local expected, got = it.w / total, (hits[it.e.id] or 0) / N
		T.ok(math.abs(expected - got) < 0.02, ("%s: frequenza %.3f, attesa %.3f"):format(it.e.id, got, expected))
	end
	T.ok((hits["s4.w3"] or 0) > (hits["s4.w1"] or 0) * 2, "il peso 3 esce circa il triplo del peso 1")
end)

T.run("peso: agganci P, R e C per S5, S6b e S6c", function()
	Reset()
	math.randomseed(77)
	local ctx = NS:BuildContext()
	Engine:SetWeightHook("P", "test", function(e) return e.id == "s4.w1" and 2 or 1 end)
	T.eq(Engine:Weight(Engine.byId["s4.w1"], "s4w", ctx).P, 2, "P da un aggancio")
	Engine:SetWeightHook("R", "test", function(e) return e.id == "s4.w3" and 0 or 1 end)
	T.eq(Engine:Weight(Engine.byId["s4.w3"], "s4w", ctx).W, 0, "R = 0 esclude la frase (relazione incoerente)")
	local seen = false
	for _ = 1, 60 do
		local rec = Engine:PickEntry("s4w", ctx, "say")
		if rec and rec.id == "s4.w3" then seen = true end
	end
	T.ok(not seen, "la frase esclusa da R non esce mai")
	Engine:SetWeightHook("C", "test", function() return 1.5 end)
	T.ok(Near(Engine:Weight(Engine.byId["s4.w1"], "s4w", ctx).C, 1.5), "C da un aggancio (interlocutore, luogo)")
	Engine:SetWeightHook("C", "test", function() error("rotto") end)
	Engine:SetWeightHook("P", "test", function() return "non un numero" end)
	local f = Engine:Weight(Engine.byId["s4.w1"], "s4w", ctx)
	T.ok(f.C == 1 and f.P == 1, "un aggancio rotto vale neutro")
	local logged = false
	for _, e in ipairs(NS.Diagnostics.errors) do
		if e.module == "weight:C:test" then logged = true end
	end
	T.ok(logged, "e l'errore va in diagnostica")
	Engine:SetWeightHook("C", "test", nil)
	Engine:SetWeightHook("P", "test", nil)
	Engine:SetWeightHook("R", "test", nil)
	T.eq(Engine:Weight(Engine.byId["s4.w3"], "s4w", ctx).R, 1, "tolti gli agganci, tutto neutro")
	T.ok(not pcall(Engine.SetWeightHook, Engine, "X", "test", function() return 1 end), "fattore sconosciuto rifiutato")
end)

---------------------------------------------------------------------------
-- StyleResolver
---------------------------------------------------------------------------
T.run("StyleResolver: evento, zona, voce e profondità", function()
	Reset()
	local profile = SR:Resolve("battle", { mood = "dark", depth = "elevated" })
	T.ok(profile.allowed and not profile.allowed.everyday and profile.allowed.epic, "la battaglia non ammette il quotidiano")
	T.eq(profile.preferred.tragic, 1, "zona oscura: tragico")
	T.eq(profile.preferred.epic, 1, "profondità elevata: epico")
	T.eq(SR:Affinity({ styles = { "everyday" }, speaker = "character" }, profile), SR.MISMATCH,
		"registro fuori evento: pesa meno, non escluso")
	T.ok(Near(SR:Affinity({ styles = { "tragic" }, speaker = "narrator" }, profile), 1 + 2 * SR.PREFER_BONUS),
		"tragico del narratore in una zona oscura: due preferenze")
	T.eq(SR:Affinity({ styles = {}, speaker = "character" }, profile), 1, "frase senza registri: neutra")
	T.eq(SR:Affinity({ styles = { "epic" } }, nil), 1, "senza profilo: neutra")
	T.ok(Near(SR:Affinity({ styles = { "everyday", "epic" }, speaker = "character" }, profile), 1 + SR.PREFER_BONUS),
		"vale il registro migliore della frase")
	local inner = SR:Affinity({ styles = { "intimate" }, speaker = "inner" }, SR:Resolve("zone", {}))
	T.ok(Near(inner, 1 + SR.PREFER_BONUS), "la voce interiore preferisce l'intimo")
	local natural = SR:Resolve("zone", { depth = "natural", mood = "city" })
	T.eq(natural.preferred.everyday, 2, "naturale in città: quotidiano due volte")
	T.eq(SR:Resolve("zone", { depth = "literary" }).allowed, nil, "il luogo ammette tutti i registri")
	-- un modificatore (S5, S9) aggiunge preferenze; uno rotto è ignorato
	SR:SetModifier("test", function(p) SR.Prefer(p, "ironic") end)
	SR:SetModifier("rotto", function() error("no") end)
	T.eq(SR:Resolve("zone", {}).preferred.ironic, 1, "modificatore applicato")
	SR:SetModifier("test", nil); SR:SetModifier("rotto", nil)
end)

T.run("StyleResolver: compatibilità di cornice e frase", function()
	T.ok(not SR:Compatible({ "ceremonial" }, { "ironic" }), "niente ironia in una cornice solenne")
	T.ok(SR:Compatible({ "ceremonial" }, { "epic" }), "solenne ed epico stanno insieme")
	T.ok(SR:Compatible({ "everyday" }, { "ironic" }), "quotidiano e ironico")
	T.ok(SR:Compatible(nil, { "ironic" }) and SR:Compatible({ "epic" }, {}), "una parte senza registri è neutra")
	T.ok(SR:Compatible({ "tragic", "epic" }, { "epic" }), "registro condiviso")
end)

T.run("StyleResolver: ripiego neutro e mai frammenti incompatibili", function()
	Reset()
	math.randomseed(31)
	local ctx = NS:BuildContext()
	-- s4fb ammette solo l'epico, ma ha soltanto frasi quotidiane e ironiche: non resta muto
	for _ = 1, 30 do
		T.ok(Engine:PickEntry("s4fb", ctx, "say") ~= nil, "ripiego: una frase c'è sempre")
	end
	local fb = Engine:Weight(Engine.byId["s4.fb.daily"], "s4fb", { depth = "literary" }).S
	T.eq(fb, SR.MISMATCH, "pesa come ripiego")
	-- cornice solenne: mai con la battuta, a volte con il giuramento
	local framedJoke, framedVow = 0, 0
	for _ = 1, 200 do
		local rec = Engine:PickEntry("s4fr", ctx, "emote")
		if rec and rec.text:find("gesto solenne", 1, true) then
			if rec.text:find("battuta", 1, true) then framedJoke = framedJoke + 1 end
			if rec.text:find("giuramento", 1, true) then framedVow = framedVow + 1 end
		end
	end
	T.eq(framedJoke, 0, "la battuta non finisce nella cornice solenne")
	T.ok(framedVow > 0, "il giuramento sì: " .. framedVow)
end)

---------------------------------------------------------------------------
-- Gate di opportunità e intensità
---------------------------------------------------------------------------
local function Rate(intensity, n)
	Reset()
	math.randomseed(2024)
	NS.db.intensity = intensity
	NS.db.chance.battle = 50
	local spoken = 0
	for _ = 1, n do
		spoken = spoken + Spoken(function() Director:Offer("battle") end)
		ADVANCE(1000)
	end
	return spoken
end

T.run("gate: intensità 0, 50 e 100", function()
	local n = 200
	local r0, r50, r100 = Rate(0, n), Rate(50, n), Rate(100, n)
	T.eq(r0, 0, "intensità 0: silenzio")
	T.ok(r50 > n * 0.38 and r50 < n * 0.62, ("intensità 50: circa la probabilità dell'evento (%d/%d)"):format(r50, n))
	T.eq(r100, n, "intensità 100: probabilità doppia (50% -> 100%)")
	Reset()
	NS.db.intensity = 0
	local v = Director:Evaluate("levelup")
	T.ok(not v.allow and v.reason == "silent", "intensità 0: anche i momenti importanti tacciono")
	T.ok(NS:Trigger("greet"), "le richieste esplicite restano disponibili")
	ADVANCE(Pacing.MOMENT + 1)
	NS.db.intensity = 20
	v = Director:Evaluate("levelup")
	T.eq(v.chanceMul, 1, "i momenti importanti non scendono sotto il valore medio")
	T.eq(v.priority, ND.PRIORITY.exceptional, "e hanno la loro priorità")
	-- un aggancio del ritmo (S6c) può azzerare l'opportunità
	Reset()
	ND:SetRhythm("test", function() return 0, 1 end)
	NS.db.chance.battle = 100
	T.eq(Spoken(function() Director:Offer("battle") end), 0, "ritmo a zero: silenzio")
	ND:SetRhythm("test", nil)
	T.eq(Spoken(function() Director:Offer("battle") end), 1, "ritmo neutro: parla")
end)

---------------------------------------------------------------------------
-- Pause e budget
---------------------------------------------------------------------------
T.run("pause: momento, globale, categoria, evento e id", function()
	Reset()
	NS.db.pacing.globalCooldownSeconds = 0
	Pacing:Record("battle", "combat", GetTime())
	T.eq(Director:Evaluate("death").reason, "moment", "subito dopo un intervento: nemmeno i momenti importanti")
	ADVANCE(Pacing.MOMENT + 1)
	T.eq(Director:Evaluate("victory").reason, "cooldown:category", "stessa categoria: pausa di categoria")
	T.ok(Director:Evaluate("zone").allow, "un'altra categoria passa")
	ADVANCE(Pacing.CATEGORY_COOLDOWN.combat - Pacing.MOMENT)
	T.eq(Director:Evaluate("battle").reason, "cooldown:event", "stesso evento: pausa dell'evento")
	T.ok(Director:Evaluate("victory").allow, "passata la pausa di categoria")
	ADVANCE(NS.EVENT_COOLDOWN.battle)
	T.ok(Director:Evaluate("battle").allow, "passata la pausa dell'evento")

	Reset()
	Pacing:Record("zone", "exploration", GetTime())
	ADVANCE(Pacing.MOMENT + 1)
	T.eq(Director:Evaluate("battle").reason, "cooldown:global", "pausa globale")
	T.ok(Director:Evaluate("levelup").allow, "i momenti importanti saltano la pausa globale")
	NS.db.intensity = 100
	ADVANCE(NS.db.pacing.globalCooldownSeconds * 0.5)
	T.ok(Director:Evaluate("battle").allow, "a intensità 100 la pausa globale è dimezzata")

	-- una frase esplicita apre il momento
	Reset()
	T.ok(NS:Trigger("greet"), "richiesta esplicita")
	T.eq(Director:Evaluate("battle").reason, "moment", "niente frase spontanea subito dopo")
	T.eq(Pacing:Spent("social", GetTime()), 0, "ma l'esplicito non consuma budget")

	-- pausa per id (campo cooldown della regola), valida anche per le richieste esplicite
	Reset()
	local ctx = NS:BuildContext()
	T.ok(Engine:PickEntry("s4id", ctx, "say") ~= nil, "la frase esce")
	T.eq(Engine:PickEntry("s4id", ctx, "say"), nil, "dentro la sua pausa no: silenzio")
	ADVANCE(101)
	T.ok(Engine:PickEntry("s4id", ctx, "say") ~= nil, "passata la pausa torna")
end)

T.run("budget per categoria, scalato con l'intensità", function()
	local savedCat, savedEv = Pacing.CATEGORY_COOLDOWN.combat, NS.EVENT_COOLDOWN.battle
	-- the per-session quotas (#91) are tested on their own below
	local quotas = NS.Engine.QUOTAS
	NS.Engine.QUOTAS = {}
	local function Run(intensity)
		Reset()
		math.randomseed(5)
		NS.db.intensity = intensity
		NS.db.pacing.globalCooldownSeconds = 0
		Pacing.CATEGORY_COOLDOWN.combat, NS.EVENT_COOLDOWN.battle = 0, 0
		NS.db.chance.battle = 100
		local n = 0
		for _ = 1, 50 do   -- un'offerta ogni 10 s: 500 s, dentro la finestra
			n = n + Spoken(function() Director:Offer("battle") end)
			ADVANCE(9)
		end
		return n
	end
	T.eq(Run(50), Pacing:Budget("combat", 50), "intensità 50: il budget di combattimento")
	T.eq(LastLog("battle"), "budget:combat", "poi il motivo è il budget")
	T.eq(Run(100), Pacing:Budget("combat", 100), "intensità 100: budget doppio")
	T.eq(Pacing:Budget("combat", 25), 3, "intensità 25: metà")
	T.eq(Pacing:Budget("combat", 0), 0, "intensità 0: nessun budget")
	-- la finestra scorre
	ADVANCE(Pacing.WINDOW)
	T.eq(Pacing:Spent("combat", GetTime()), 0, "dopo la finestra il budget torna pieno")
	-- i momenti importanti non consumano il budget ordinario e non ne sono bloccati
	Run(50)
	NS.db.chance.levelup = 100
	T.eq(Spoken(function() Director:Offer("levelup") end), 1, "budget esaurito: il livello parla lo stesso")
	Pacing.CATEGORY_COOLDOWN.combat, NS.EVENT_COOLDOWN.battle = savedCat, savedEv
	NS.Engine.QUOTAS = quotas
end)

---------------------------------------------------------------------------
-- Priorità, nessuna cascata, silenzio
---------------------------------------------------------------------------
T.run("priorità del §10 e un solo intervento per momento", function()
	Reset()
	NS.db.chance.battle, NS.db.chance.levelup, NS.db.chance.zone = 100, 100, 100
	local n = Spoken(function()
		Director:Offer("battle"); Director:Offer("zone"); Director:Offer("levelup")
	end)
	T.eq(n, 1, "tre candidati nello stesso momento: una frase")
	T.eq(Winner(), "levelup", "vince l'evento eccezionale")
	T.eq(LastLog("battle"), "outranked", "la battaglia tace")
	T.eq(LastLog("zone"), "outranked", "il luogo tace")
	-- ordine completo: esplicito > dialogo > eccezionale > memoria > atmosfera
	NS:SetEventPriority("s4mem", "memory")
	T.eq(ND:Priority("s4mem"), ND.PRIORITY.memory, "priorità registrata per nome")
	local list = ND:Order({
		{ event = "a", priority = ND.PRIORITY.ambient, seq = 1 },
		{ event = "m", priority = ND.PRIORITY.memory, seq = 2 },
		{ event = "x", priority = ND.PRIORITY.exceptional, seq = 3 },
		{ event = "d", priority = ND.PRIORITY.dialogue, seq = 4 },
		{ event = "e", priority = ND.PRIORITY.explicit, seq = 5 },
		{ event = "a2", priority = ND.PRIORITY.ambient, seq = 0 },
	})
	local order = {}
	for _, c in ipairs(list) do table.insert(order, c.event) end
	T.eq(table.concat(order, " "), "e d x m a2 a", "ordine delle priorità, poi di arrivo")
	T.eq(ND:Priority("greet"), ND.PRIORITY.dialogue, "i dialoghi sociali sono dialogo volontario")
	T.eq(ND:Priority("battle"), ND.PRIORITY.ambient, "la battaglia è atmosfera")
	-- memoria batte atmosfera
	Reset()
	NS.db.chance.s4mem, NS.db.chance.zone = 100, 100
	Spoken(function() Director:Offer("zone"); Director:Offer("s4mem") end)
	T.eq(Winner(), "s4mem", "il richiamo di memoria batte l'atmosfera")
	-- se il più importante non trova una frase, parla il successivo: sempre uno solo
	Reset()
	NS.db.chance.battle, NS.db.chance.s4none = 100, 100
	NS:SetEventPriority("s4none", "exceptional")
	T.eq(Spoken(function() Director:Offer("s4none"); Director:Offer("battle") end), 1, "un intervento")
	T.eq(LastLog("s4none"), "no_phrase", "l'evento senza frasi tace")
	T.eq(Winner(), "battle", "parla il successivo")
end)

T.run("nessuna cascata", function()
	Reset()
	NS.db.pacing.globalCooldownSeconds = 0
	local events = { "battle", "victory", "lowhp", "death", "rez", "levelup", "zone", "heal", "buff", "travel" }
	for _, ev in ipairs(events) do NS.db.chance[ev] = 100 end
	local n = Spoken(function()
		for _, ev in ipairs(events) do Director:Offer(ev, { spell = "Heal", target = "Thrall" }) end
	end)
	T.eq(n, 1, "dieci eventi nello stesso momento: una frase sola")
	n = Spoken(function() Director:Offer("death") end)
	T.eq(n, 0, "un altro evento subito dopo: tace (momento)")
	-- dal client: morte con salute bassa nello stesso istante
	Reset()
	NS.db.chance.lowhp, NS.db.chance.death = 100, 100
	n = #Narrator.history
	P.combat = true
	P.hp = 10; FIRE("UNIT_HEALTH", "player")
	P.dead = true; FIRE("PLAYER_DEAD")
	ADVANCE(2)
	T.eq(#Narrator.history - n, 1, "salute bassa e morte insieme: una frase")
	T.eq(Winner(), "death", "ed è quella della morte")
	P.dead, P.hp, P.combat = false, 100, false
end)

T.run("il silenzio è un esito valido", function()
	Reset()
	NS.db.chance.s4empty = 100
	T.eq(Spoken(function() Director:Offer("s4empty") end), 0, "evento senza frasi: silenzio")
	T.eq(LastLog("s4empty"), "no_phrase", "con il motivo")
	T.eq(Director:Resolve(), nil, "nessun candidato: nessuna frase")
	NS.db.chance.battle = 0
	T.eq(Spoken(function() Director:Offer("battle") end), 0, "probabilità 0: silenzio")
	T.eq(LastLog("battle"), "chance", "il dado ha detto no")
	T.eq(#(Pacing.spent.combat or {}), 0, "il silenzio non consuma budget")
end)

---------------------------------------------------------------------------
-- Sospensione
---------------------------------------------------------------------------
T.run("sospensione: schermate invasive e combattimento impegnativo", function()
	Reset()
	P.cinematic = true
	T.eq(Director:Evaluate("battle").reason, "screen:cinematic", "cinematica: silenzio")
	T.eq(Director:Evaluate("levelup").reason, "screen:cinematic", "anche per i momenti importanti")
	P.cinematic = false
	MovieFrame = { IsShown = function() return true end }
	T.eq(Director:Evaluate("battle").reason, "screen:MovieFrame", "filmato aperto")
	MovieFrame = { IsShown = function() error("rotto") end }
	T.ok(Director:Evaluate("battle").allow, "un frame che sbaglia non blocca")
	MovieFrame = nil

	local boss = { combat = true, boss = true }
	T.eq(Director:Evaluate("battle", boss).reason, "busy", "contro un boss l'atmosfera tace")
	T.ok(Director:Evaluate("death", boss).allow, "un evento eccezionale passa")
	T.eq(Director:Evaluate("battle", { combat = true, instanceType = "raid" }).reason, "busy", "in raid")
	T.eq(Director:Evaluate("battle", { combat = true, elite = true, instance = true }).reason, "busy",
		"élite in istanza")
	T.ok(Director:Evaluate("battle", { combat = true, elite = true }).allow, "élite nel mondo aperto: no")
	T.ok(Director:Evaluate("battle", { combat = false, boss = true }).allow, "fuori dal combattimento: no")
	NS.db.pacing.suppressInHighDemand = false
	T.ok(Director:Evaluate("battle", boss).allow, "con la sospensione spenta passa")
	NS.db.pacing.suppressInHighDemand = true
	ND:SetDemandCheck("test", function(ctx) return ctx.encounter == true end)
	T.eq(Director:Evaluate("battle", { combat = true, encounter = true }).reason, "busy", "controllo aggiunto (S6c)")
	ND:SetDemandCheck("test", nil)

	-- dal client: battaglia contro un boss
	Reset()
	NS.db.chance.battle = 100
	P.target = { name = "Hogger", cls = "worldboss", level = -1, hostile = true }
	local n = #Narrator.history
	P.combat = true; FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(1)
	T.eq(#Narrator.history, n, "contro un boss nessuna frase di battaglia")
	T.eq(LastLog("battle"), "busy", "motivo: impegno")
	P.combat = false; FIRE("PLAYER_REGEN_ENABLED")
	P.target = nil
end)

---------------------------------------------------------------------------
-- Anti-ripetizione
---------------------------------------------------------------------------
T.run("nessun duplicato nella finestra", function()
	Reset()
	math.randomseed(99)
	local ctx = NS:BuildContext()
	local keep = Engine.KeepFor(10)
	T.eq(keep, 6, "dieci frasi: finestra di sei")
	local seen, dup = {}, 0
	for i = 1, 300 do
		local rec = Engine:PickEntry("s4dup", ctx, "say")
		for k = math.max(1, i - keep), i - 1 do
			if seen[k] == rec.id then dup = dup + 1 end
		end
		seen[i] = rec.id
	end
	T.eq(dup, 0, "nessun id ripetuto entro la finestra in 300 scelte")
	-- con le frasi vere di un evento affollato
	Reset()
	math.randomseed(100)
	ctx = NS:BuildContext({ target = "Thrall" })
	local list, repeats = {}, 0
	for i = 1, 120 do
		local rec = Engine:PickEntry("battle", ctx, "say")
		if rec then
			for k = math.max(1, #list - 4), #list do
				if list[k] == rec.id then repeats = repeats + 1 end
			end
			table.insert(list, rec.id)
		end
	end
	T.ok(#list >= 100, "la battaglia ha sempre una frase")
	T.eq(repeats, 0, "battaglia: nessuna ripetizione nelle ultime cinque")
end)

T.run("contratto di S2: Evaluate", function()
	Reset()
	local v = Director:Evaluate("battle")
	T.ok(v.allow and v.chanceMul == 1 and v.cooldownMul == 1, "via libera con i moltiplicatori")
	T.eq(v.category, "combat", "categoria"); T.eq(v.priority, ND.PRIORITY.ambient, "priorità")
	T.ok(Director:Status():find("combat 0/6", 1, true) ~= nil, "riepilogo per /au debug: " .. Director:Status())
	T.ok(table.concat(NS.Diagnostics:Report(), " "):find("Narrative Director", 1, true) ~= nil, "/au debug mostra il Director")
end)
