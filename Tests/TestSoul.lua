-- Test dello step S5: modello dei tratti (Engine/Traits.lua), Character Soul (Systems/Personality.lua), fattore P
-- del peso, filtri rigidi, adattatore Total RP 3 (Integration/TotalRP3.lua), migrazione delle SavedVariables,
-- comando /au anima e finestra del profilo. Ogni prova che usa il caso fissa il seme del generatore.
local NS = ...
local Engine, Traits, Personality, Config = NS.Engine, NS.Traits, NS.Personality, NS.Config
local TotalRP3, Compat, SR = NS.TotalRP3, NS.Compat, NS.StyleResolver

NS.db.locale = "it"
NS.db.proseDepth = "literary"

local function Near(a, b, eps) return math.abs(a - b) < (eps or 1e-9) end

local function Reset()
	AddOn_TotalRP3 = nil
	NS.db.locale = "it"
	NS.db.modules.totalRP3 = true
	Personality:SetArchetype("neutral")
	Personality:SetTRP3Consent(false)
	for _, name in ipairs({ unpack(Personality.gameOrder) }) do Personality:RegisterGameLayer(name, nil) end
	Personality:Refresh()
	NS.Diagnostics.errors = {}
	SENT = {}
end

---------------------------------------------------------------------------
-- Pacchetto di prova: eventi propri, così il database di base non entra nei conteggi
---------------------------------------------------------------------------
for _, ev in ipairs({ "s5soft", "s5hard", "s5only", "s5cond", "s5inner", "s5irony", "s5dist" }) do
	NS:RegisterEvent(ev, { category = "reflection" })
end
local registry, texts = {}, {}
local function Add(id, def)
	def.speaker = def.speaker or "character"
	registry[id] = def
	texts[id] = id
end
Add("s5.stoic", { event = "s5soft", tags = { "temperament:stoic" } })
Add("s5.cheer", { event = "s5soft", tags = { "temperament:cheerful" } })
Add("s5.plain", { event = "s5soft" })
Add("s5.two", { event = "s5soft", tags = { "temperament:stoic", "morality:disillusioned" } })
Add("s5.desc", { event = "s5soft", tags = { "wry", "faith", "heroic" } })        -- tag descrittivi: ignorati dal modello
Add("s5.curious", { event = "s5soft", tags = { "curiosity:high" } })
Add("s5.irhigh", { event = "s5irony", tags = { "irony:high" } })
Add("s5.irlow", { event = "s5irony", tags = { "irony:low" } })
Add("s5.wry", { event = "s5irony", styles = { "ironic" } })                      -- registro ironico, nessun tag
Add("s5.wrytag", { event = "s5irony", styles = { "ironic" }, tags = { "irony:low" } })
Add("s5.h.death", { event = "s5hard", tags = { "topic:death" } })
Add("s5.h.undead", { event = "s5hard", tags = { "topic:undead", "topic:death" } })
Add("s5.h.notdev", { event = "s5hard", tags = { "not:faith:devout" } })
Add("s5.h.reqdev", { event = "s5hard", tags = { "req:faith:devout" } })
Add("s5.h.reqalt", { event = "s5hard", tags = { "req:faith:devout", "req:faith:spiritual" } })
Add("s5.h.reqtwo", { event = "s5hard", tags = { "req:faith:devout", "req:motivation:duty" } })
Add("s5.h.plain", { event = "s5hard" })
Add("s5.only", { event = "s5only", tags = { "topic:family" } })
Add("s5.cond", { event = "s5cond", conditions = { soul = { temperament = "stoic" } } })
Add("s5.cond2", { event = "s5cond", conditions = { soul = { faith = { "devout", "spiritual" } } } })
Add("s5.in", { event = "s5inner", speaker = "inner" })
Add("s5.ch", { event = "s5inner", speaker = "character" })
Add("s5.d.a", { event = "s5dist", tags = { "temperament:stoic" } })
Add("s5.d.b", { event = "s5dist", tags = { "temperament:cheerful" } })
Add("s5.d.c", { event = "s5dist", tags = { "topic:death" } })
NS:RegisterPack({ id = "s5test", registry = registry, texts = { itIT = texts } })

local function Soul(traits) return { soul = traits or {} } end
-- un vecchio valore a scelta (temperament:stoic) vale per un profilo fatto di intensità? (R4: si legge dagli assi)
local function HasV(soul, trait, value) return Traits.Has(Traits.defs[trait], soul, value) end
local function P(id, event, ctx) return Engine:Weight(Engine.byId[id], event, ctx).P end

---------------------------------------------------------------------------
-- Modello dei tratti
---------------------------------------------------------------------------
T.run("tratti: definizioni dello schema", function()
	local order = Personality.TRAIT_ORDER
	T.eq(#order, 13, "dieci assi, ironia, voce interiore e argomenti (R4)")
	for _, id in ipairs({ "temperament", "morality", "curiosity", "faith", "motivation", "irony", "avoid", "innerVoice",
		"idealism", "concreteness", "optimism", "altruism", "stoicism", "ambition", "spirituality", "patriotism", "vengefulness" }) do
		T.ok(Traits.defs[id] ~= nil, "tratto " .. id)
	end
	T.eq(Traits.defs.temperament.kind, "choice", "temperamento: scelta")
	T.eq(Traits.defs.irony.kind, "scale", "ironia: scala")
	T.eq(Traits.defs.avoid.kind, "set", "argomenti da evitare: insieme")
	T.ok(Traits.defs.avoid.exclusive and Traits.defs.avoid.tag == "topic", "gli argomenti sono esclusivi, tag topic:")
	T.eq(Traits.Band(Traits.defs.irony, 0), "low", "fascia bassa")
	T.eq(Traits.Band(Traits.defs.irony, 33), "low", "estremo incluso")
	T.eq(Traits.Band(Traits.defs.irony, 34), "mid", "fascia media")
	T.eq(Traits.Band(Traits.defs.irony, 100), "high", "fascia alta")
	T.eq(Traits.Band(Traits.defs.irony, "x"), nil, "valore non numerico")
	T.ok(not pcall(Traits.Define, { id = "x", kind = "boh" }), "tipo sconosciuto rifiutato")
	T.ok(not pcall(Traits.Define, { id = "x", kind = "scale", min = 0, max = 10, bands = { { "a", 5 }, { "b", 3 } } }), "fasce non crescenti")
end)

T.run("tratti: il modello è riusabile per altri profili (S6b, S6c)", function()
	-- una scala come un asse delle relazioni, un'altra tabella di tratti, un altro ambito di tag
	Traits.Define({ id = "trusty", kind = "scale", min = -100, max = 100,
		bands = { { "foe", -34 }, { "neutral", 33 }, { "friend", 100 } } })
	Traits.RegisterScope("other")
	local profile = { trusty = 60 }
	T.ok(Traits.Has(Traits.defs.trusty, profile, "friend"), "fascia di una scala con intervallo negativo")
	T.eq(Traits.Band(Traits.defs.trusty, -100), "foe", "estremo inferiore")
	local f = Traits.Evaluate({ ["other.trusty:friend"] = true }, profile, "other")
	T.ok(Near(f, Traits.MATCH), "tag con ambito: affinità")
	f = Traits.Evaluate({ ["other.trusty:friend"] = true }, profile)
	T.eq(f, 1, "senza l'ambito il tag non conta")
	f = Traits.Evaluate({ ["other.req:trusty:foe"] = true, ["other.trusty:foe"] = true }, profile, "other")
	T.ok(f ~= nil, "tag con modalità e ambito")
	T.eq(select(1, Traits.Evaluate({ ["req:trusty:foe"] = true }, profile)), 0, "req su un altro profilo")
	Traits.defs.trusty, Traits.tagIndex.trusty = nil, nil
	for i, id in ipairs(Traits.order) do if id == "trusty" then table.remove(Traits.order, i); break end end
end)

T.run("tratti: pulizia dei dati", function()
	local clean, dropped = Traits.Sanitize({ temperament = "stoic", irony = 150, curiosity = -5, faith = "boh",
		foo = 1, avoid = { death = true, bogus = true, blood = false }, innerVoice = 7, morality = "hopeful" })
	T.eq(clean.temperament, "stoic", "valore valido")
	T.eq(clean.irony, 100, "scala limitata al massimo")
	T.eq(clean.curiosity, 0, "scala limitata al minimo")
	T.eq(clean.faith, nil, "valore sconosciuto scartato")
	T.eq(clean.foo, nil, "tratto sconosciuto scartato")
	T.eq(clean.innerVoice, nil, "tipo sbagliato scartato")
	T.ok(clean.avoid.death and not clean.avoid.bogus and not clean.avoid.blood, "insieme filtrato")
	T.ok(dropped >= 4, "scarti contati: " .. dropped)
	T.ok(next((Traits.Sanitize("rotto"))) == nil and next((Traits.Sanitize(nil))) == nil, "dati rovinati: profilo vuoto")
	local nan = 0 / 0
	T.eq((Traits.Sanitize({ irony = nan })).irony, nil, "NaN scartato")
	local a = { avoid = { death = true } }
	local b = Traits.Copy(a)
	b.avoid.blood = true
	T.ok(a.avoid.blood == nil, "Copy è profonda")
end)

T.run("tratti: grammatica dei tag", function()
	T.eq(Traits.ParseTag("wry"), nil, "tag descrittivo senza due punti")
	T.eq(Traits.ParseTag("heroic"), nil, "tag descrittivo")
	local t = Traits.ParseTag("temperament:stoic")
	T.ok(t and t.mode == "affinity" and t.name == "temperament" and t.value == "stoic" and t.scope == "", "affinità")
	t = Traits.ParseTag("req:faith:devout")
	T.ok(t and t.mode == "req" and t.name == "faith" and t.value == "devout", "req")
	t = Traits.ParseTag("not:faith:devout")
	T.ok(t and t.mode == "not", "not")
	t = Traits.ParseTag("topic:death")
	T.ok(t and t.name == "topic" and t.value == "death", "topic")
	t = Traits.ParseTag("other.req:faith:devout")
	T.ok(t and t.scope == "other" and t.mode == "req", "ambito")
	T.eq(Traits.CheckTag("wry"), nil, "descrittivo valido")
	T.eq(Traits.CheckTag("temperament:stoic"), nil, "affinità valida")
	T.eq(Traits.CheckTag("topic:death"), nil, "topic valido")
	T.ok(Traits.CheckTag("mood:stoic"), "tratto sconosciuto")
	T.ok(Traits.CheckTag("temperament:boh"), "valore sconosciuto")
	T.ok(Traits.CheckTag("temperament:"), "malformato")
	T.ok(Traits.CheckTag("req:topic:death"), "req su un tratto già esclusivo")
	T.ok(Traits.CheckTag("zzz.temperament:stoic"), "ambito sconosciuto")
	T.ok(Traits.CheckTag(42), "non è una stringa")
end)

T.run("tratti: priorità tra le fonti e unione degli insiemi", function()
	local eff, src = Traits.Merge({
		{ name = "explicit", traits = { temperament = "stoic", avoid = { death = true } } },
		{ name = "trp3", traits = { temperament = "cheerful", faith = "skeptic", avoid = { blood = true } } },
		{ name = "game", traits = { faith = "devout", curiosity = 80 } },
	})
	T.eq(eff.temperament, "stoic", "la scelta esplicita vince")
	T.eq(src.temperament, "explicit", "fonte esplicita")
	T.eq(eff.faith, "skeptic", "poi Total RP 3")
	T.eq(src.faith, "trp3", "fonte TRP3")
	T.eq(eff.curiosity, 80, "poi i dati di gioco")
	T.eq(src.curiosity, "game", "fonte di gioco")
	T.eq(eff.irony, nil, "il resto è neutro")
	T.eq(src.irony, nil, "nessuna fonte")
	T.ok(eff.avoid.death and eff.avoid.blood, "gli argomenti da evitare si uniscono: mai contraddire una fonte")
	T.ok(Traits.IsEmpty({}) and not Traits.IsEmpty({ irony = 0 }), "IsEmpty")
	T.ok(Traits.IsEmpty({ avoid = {} }), "un insieme vuoto è neutro")
end)

T.run("tratti: nomi localizzati e input", function()
	NS.db.locale = "it"
	T.eq(Traits.Name("temperament"), "Temperamento", "nome IT")
	T.eq(Traits.ValueName("temperament", "stoic"), "Stoico", "valore IT")
	T.eq(Traits.ValueName("temperament", "inventato"), "inventato", "valore senza nome: ripiego")
	NS.db.locale = "en"
	T.eq(Traits.Name("temperament"), "Temperament", "nome EN")
	T.eq(Traits.ValueName("faith", "devout"), "Devout", "valore EN")
	NS.db.locale = "it"
	local d = Traits.defs
	T.eq(Traits.ParseValue(d.temperament, "stoico"), nil, "il nome localizzato non è una parola dei comandi (#132)")
	T.eq(Traits.ParseValue(d.temperament, "STOIC"), "stoic", "identificatore, maiuscole")
	T.eq(Traits.ParseValue(d.temperament, "boh"), nil, "sconosciuto")
	T.eq(Traits.ParseValue(d.irony, "70"), 70, "numero")
	T.eq(Traits.ParseValue(d.irony, "500"), 100, "numero limitato")
	T.eq(Traits.Band(d.irony, Traits.ParseValue(d.irony, "high")), "high", "fascia per identificatore inglese")
	T.eq(Traits.ParseValue(d.irony, "alta"), nil, "la fascia in italiano non è una parola dei comandi")
	T.eq(Traits.Band(d.irony, Traits.ParseValue(d.irony, "low")), "low", "fascia per identificatore")
	T.eq(Traits.ParseValue(d.avoid, "death"), "death", "argomento")
	T.eq(Traits.ParseValue(d.avoid, "morte"), nil, "argomento in italiano: no")
	T.eq(Traits.Describe(d.irony, { irony = 70 }), "70 (alta)", "descrizione di una scala")
	T.eq(Traits.Describe(d.avoid, { avoid = { death = true, blood = true } }), "morte, sangue", "descrizione di un insieme")
	T.eq(Traits.Describe(d.faith, {}), nil, "tratto non impostato")
end)

---------------------------------------------------------------------------
-- Profilo neutro
---------------------------------------------------------------------------
T.run("profilo neutro: nulla cambia", function()
	Reset()
	local p = NS.cdb.personality
	T.ok(type(p) == "table" and p.archetype == "neutral" and next(p.traits) == nil and p.trp3 == false, "predefiniti del personaggio")
	T.ok(Personality:IsNeutral(), "profilo effettivo vuoto")
	local ctx = NS:BuildContext()
	T.ok(type(ctx.soul) == "table" and next(ctx.soul) == nil, "ctx.soul esiste ed è vuoto")
	-- ogni frase del database di base senza requisiti ha P = 1
	local checked, req = 0, 0
	for id, ph in pairs(Engine.byId) do
		local hasReq = false
		for tag in pairs(ph.tags) do if tag:sub(1, 4) == "req:" then hasReq = true end end
		if hasReq then
			req = req + 1
			T.eq(Personality.Factor(ph, ctx), 0, id .. ": un requisito non si soddisfa col profilo neutro")
		else
			checked = checked + 1
			if Personality.Factor(ph, ctx) ~= 1 then T.ok(false, id .. ": P deve valere 1 col profilo neutro") end
		end
	end
	T.ok(checked > 400 and req >= 6, ("frasi controllate: %d, con requisito: %d"):format(checked, req))
	local f = Engine:Weight(Engine.byId["s5.stoic"], "s5soft", ctx)
	T.eq(f.P, 1, "affinità morbida neutra")
	T.ok(Near(f.W, f.B * f.C * f.P * f.N * f.S * f.R), "W resta il prodotto dei sei fattori")
	-- nessun tratto: nessuna preferenza di registro aggiunta dall'anima
	local profile = SR:Resolve("battle", ctx)
	local mod = SR.modifiers.soul
	SR:SetModifier("soul", nil)
	local bare = SR:Resolve("battle", ctx)
	SR:SetModifier("soul", mod)
	for k, v in pairs(profile.preferred) do T.eq(v, bare.preferred[k], "registro " .. k .. " invariato") end
end)

T.run("profilo neutro: la scelta delle frasi non esclude nulla di neutro", function()
	Reset()
	math.randomseed(11)
	local seen = {}
	for _ = 1, 300 do
		local rec = Engine:PickEntry("s5soft", NS:BuildContext(), "say")
		if rec then seen[rec.id] = true end
		NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	end
	T.ok(seen["s5.stoic"] and seen["s5.cheer"] and seen["s5.plain"] and seen["s5.two"], "tutte le frasi senza requisito escono")
end)

---------------------------------------------------------------------------
-- Archetipi
---------------------------------------------------------------------------
T.run("archetipi: pronti, validi e immediati", function()
	Reset()
	T.ok(#Personality.archetypes >= 8, "neutro più sette archetipi")
	T.eq(Personality.archetypes[1].id, "neutral", "il neutro è il primo")
	for _, a in ipairs(Personality.archetypes) do
		local clean, dropped = Traits.Sanitize(a.traits)
		T.eq(dropped, 0, a.id .. ": nessun valore scartato")
		T.ok(NS:L("soul_arch_" .. a.id) ~= "soul_arch_" .. a.id, a.id .. ": nome IT")
		T.ok(NS:L("soul_arch_" .. a.id .. "_help") ~= "soul_arch_" .. a.id .. "_help", a.id .. ": descrizione IT")
		NS.db.locale = "en"
		T.ok(NS:L("soul_arch_" .. a.id) ~= "soul_arch_" .. a.id, a.id .. ": nome EN")
		NS.db.locale = "it"
		T.ok(Personality:SetArchetype(a.id), a.id .. ": si sceglie")
		T.eq(NS.cdb.personality.archetype, a.id, a.id .. ": salvato")
		local eff = Personality:Effective()
		for k, v in pairs(clean) do
			if type(v) ~= "table" then T.eq(eff[k], v, a.id .. ": " .. k) end
		end
	end
	T.ok(not Personality:SetArchetype("inesistente"), "archetipo sconosciuto rifiutato")
	-- il cambio vale subito, e un archetipo si copia (non si modifica con le scelte successive)
	Personality:SetArchetype("veteran")
	T.ok(HasV(NS:BuildContext().soul, "temperament", "stoic"), "il contesto vede subito l'archetipo")
	Personality:SetArchetype("traveler")
	T.ok(HasV(NS:BuildContext().soul, "temperament", "cheerful"), "e subito il successivo")
	Personality:SetTrait("optimism", 30)
	T.eq(NS.cdb.personality.archetype, "custom", "una modifica rende il profilo personalizzato")
	T.eq(NS.cdb.personality.base, "traveler", "e ricorda la preimpostazione da cui è partito")
	T.eq(Personality:GetArchetype("traveler").traits.optimism, 80, "l'archetipo non cambia")
	Personality:Reset()
	T.eq(NS.cdb.personality.archetype, "neutral", "profilo neutro")
	T.ok(Personality:IsNeutral(), "senza tratti")
	-- un archetipo in più da un pacchetto
	T.ok(Personality:RegisterArchetype("s5mine", { temperament = "gruff", irony = 999, foo = 1 }, { name = "Mio" }), "archetipo registrato")
	T.eq(Personality:GetArchetype("s5mine").traits.irony, 100, "i suoi tratti si puliscono")
	T.eq(Personality:ArchetypeName("s5mine"), "Mio", "nome di ripiego")
	T.ok(not Personality:RegisterArchetype("custom", {}), "custom è riservato")
	table.remove(Personality.archetypes)
end)

T.run("tratti: modifica delle scelte", function()
	Reset()
	T.ok(Personality:SetTrait("stoicism", 70), "imposta")
	T.ok(not Personality:SetTrait("stoicism", "boh"), "valore sbagliato rifiutato")
	T.eq(NS.cdb.personality.traits.stoicism, 70, "il rifiuto non cambia nulla")
	T.ok(Personality:SetTrait("temperament", "stoic"), "una vecchia scelta imposta il suo asse")
	T.eq(NS.cdb.personality.traits.stoicism, 80, "stoico: stoicismo 80")
	T.eq(NS.cdb.personality.traits.temperament, nil, "il vecchio tratto non si salva")
	T.ok(not Personality:SetTrait("temperament", "boh"), "vecchio valore sbagliato rifiutato")
	T.ok(not Personality:SetTrait("inventato", "x"), "tratto sconosciuto")
	T.ok(Personality:SetTrait("irony", 250), "scala limitata")
	T.eq(NS.cdb.personality.traits.irony, 100, "100")
	T.eq(Personality:ToggleTopic("death"), true, "argomento aggiunto")
	T.eq(Personality:ToggleTopic("blood"), true, "un secondo")
	T.eq(Personality:ToggleTopic("death"), false, "tolto")
	T.ok(NS.cdb.personality.traits.avoid.blood and not NS.cdb.personality.traits.avoid.death, "stato dell'insieme")
	T.eq(Personality:ToggleTopic("boh"), nil, "argomento sconosciuto")
	T.ok(Personality:SetTrait("stoicism", nil), "toglie la scelta")
	T.eq(NS.cdb.personality.traits.stoicism, nil, "tolta")
	Personality:ToggleTopic("blood"); Personality:SetTrait("irony", nil)
	T.eq(NS.cdb.personality.archetype, "neutral", "senza scelte il profilo torna neutro")
end)

---------------------------------------------------------------------------
-- Fattore P: affinità morbida
---------------------------------------------------------------------------
T.run("fattore P: affinità dei tag", function()
	Reset()
	local stoic = Soul({ temperament = "stoic" })
	T.ok(Near(P("s5.stoic", "s5soft", stoic), Traits.MATCH), "stesso valore: sale")
	T.ok(Near(P("s5.cheer", "s5soft", stoic), Traits.MISMATCH), "altro valore: scende")
	T.eq(P("s5.plain", "s5soft", stoic), 1, "frase senza tag: neutra")
	T.eq(P("s5.desc", "s5soft", stoic), 1, "tag descrittivi ignorati")
	T.eq(P("s5.stoic", "s5soft", Soul({ faith = "devout" })), 1, "tratto non impostato: neutro")
	-- due tratti: i fattori si moltiplicano, entro i limiti
	T.ok(Near(P("s5.two", "s5soft", Soul({ temperament = "stoic", morality = "disillusioned" })), Traits.MATCH ^ 2), "due corrispondenze")
	T.ok(Near(P("s5.two", "s5soft", Soul({ temperament = "stoic", morality = "hopeful" })), Traits.MATCH * Traits.MISMATCH), "una e un contrasto")
	T.ok(Near(P("s5.two", "s5soft", Soul({ temperament = "gruff", morality = "hopeful" })), Traits.MISMATCH ^ 2), "due contrasti")
	-- scale: per fascia
	T.ok(Near(P("s5.curious", "s5soft", Soul({ curiosity = 90 })), Traits.MATCH), "scala: fascia alta")
	T.ok(Near(P("s5.curious", "s5soft", Soul({ curiosity = 10 })), Traits.MISMATCH), "scala: fascia bassa")
	T.eq(P("s5.curious", "s5soft", Soul({ irony = 10 })), 1, "altra scala non impostata")
	-- nessun tratto azzera una frase con la sola affinità morbida
	for _, trait in ipairs({ "gruff", "fierce", "resolute" }) do
		T.ok(P("s5.stoic", "s5soft", Soul({ temperament = trait })) > 0, "mai zero: " .. trait)
	end
	-- il fattore sta nel prodotto W
	local ctx = NS:BuildContext()
	ctx.soul = { temperament = "stoic" }
	local f = Engine:Weight(Engine.byId["s5.stoic"], "s5soft", ctx)
	T.ok(Near(f.W, f.B * f.C * f.P * f.N * f.S * f.R) and Near(f.P, Traits.MATCH), "P dentro W")
end)

T.run("fattore P: ironia e voce interiore", function()
	Reset()
	local function PI(id, soul) return P(id, "s5irony", Soul(soul)) end
	T.ok(Near(PI("s5.irhigh", { irony = 90 }), Traits.MATCH), "tag irony:high con ironia alta")
	T.ok(Near(PI("s5.irhigh", { irony = 10 }), Traits.MISMATCH), "tag irony:high con ironia bassa")
	T.ok(Near(PI("s5.irlow", { irony = 10 }), Traits.MATCH), "tag irony:low con ironia bassa")
	-- registro ironico senza tag: l'ironia lo pesa lo stesso
	T.ok(Near(PI("s5.wry", { irony = 90 }), Personality.IRONY_FACTOR.high), "registro ironico, ironia alta")
	T.ok(Near(PI("s5.wry", { irony = 50 }), Personality.IRONY_FACTOR.mid), "ironia media")
	T.ok(Near(PI("s5.wry", { irony = 5 }), Personality.IRONY_FACTOR.low), "ironia bassa")
	T.eq(PI("s5.wry", { temperament = "stoic" }), 1, "ironia non impostata: neutro")
	T.ok(Near(PI("s5.wrytag", { irony = 5 }), Traits.MATCH), "un tag esplicito prevale sulla regola del registro")
	-- voce interiore
	local function PV(id, v) return P(id, "s5inner", Soul({ innerVoice = v })) end
	T.eq(PV("s5.in", "off"), 0, "voce interiore spenta: i pensieri sono esclusi")
	T.eq(PV("s5.ch", "off"), 1, "ma non la voce del personaggio")
	T.ok(Near(PV("s5.in", "quiet"), Personality.INNER_FACTOR.quiet), "discreta")
	T.eq(PV("s5.in", "present"), 1, "presente")
	T.ok(Near(PV("s5.in", "vivid"), Personality.INNER_FACTOR.vivid), "vivida")
end)

T.run("fattore P: la distribuzione segue i pesi (seme fisso)", function()
	Reset()
	math.randomseed(777)
	Personality:SetTrait("temperament", "stoic")
	Personality:SetTrait("optimism", 20)
	local ctx = NS:BuildContext()
	local items, total = {}, 0
	for _, id in ipairs({ "s5.d.a", "s5.d.b" }) do
		local w = Engine:Weight(Engine.byId[id], "s5dist", ctx).W
		table.insert(items, { e = Engine.byId[id], w = w })
		total = total + w
	end
	local hits, N = {}, 6000
	for _ = 1, N do
		local it = Engine.WeightedPick(items, "s5dist:distribution")
		hits[it.e.id] = (hits[it.e.id] or 0) + 1
	end
	for _, it in ipairs(items) do
		T.ok(math.abs(it.w / total - (hits[it.e.id] or 0) / N) < 0.02, it.e.id .. ": frequenza attesa")
	end
	T.ok(hits["s5.d.a"] > hits["s5.d.b"] * 2, "la frase in affinità esce più di 2 volte l'altra")
	-- col profilo neutro sono pari
	Reset()
	local ctxN = NS:BuildContext()
	T.ok(Near(Engine:Weight(Engine.byId["s5.d.a"], "s5dist", ctxN).W, Engine:Weight(Engine.byId["s5.d.b"], "s5dist", ctxN).W), "neutro: pesi pari")
end)

---------------------------------------------------------------------------
-- Filtri rigidi: i tratti esclusivi non si contraddicono mai
---------------------------------------------------------------------------
T.run("filtri rigidi: argomenti da evitare", function()
	Reset()
	local avoidDeath = Soul({ avoid = { death = true } })
	T.eq(P("s5.h.death", "s5hard", avoidDeath), 0, "topic:death esclusa")
	T.eq(P("s5.h.undead", "s5hard", avoidDeath), 0, "anche con un solo argomento in comune")
	T.eq(P("s5.h.plain", "s5hard", avoidDeath), 1, "le altre no")
	T.eq(P("s5.h.undead", "s5hard", Soul({ avoid = { undead = true } })), 0, "l'altro argomento della stessa frase")
	T.eq(P("s5.h.death", "s5hard", Soul({ avoid = { blood = true } })), 1, "un altro argomento: non esclusa")
	T.eq(P("s5.h.death", "s5hard", Soul({ temperament = "stoic" })), 1, "senza argomenti evitati: non esclusa")
	T.eq(Personality:ExcludedBy(Engine.byId["s5.h.death"], { avoid = { death = true } }), "topic:death", "il motivo")
	-- la scelta delle frasi non la restituisce mai, per qualunque seme
	Personality:ToggleTopic("death")
	for seed = 1, 40 do
		math.randomseed(seed)
		NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
		for _ = 1, 25 do
			local rec = Engine:PickEntry("s5hard", NS:BuildContext(), "say")
			T.ok(rec == nil or (rec.id ~= "s5.h.death" and rec.id ~= "s5.h.undead"), "mai una frase che tocca la morte")
			NS.cdb.memory.recent = {}
		end
	end
end)

T.run("filtri rigidi: not, req e alternative", function()
	Reset()
	local devout, skeptic = Soul({ faith = "devout" }), Soul({ faith = "skeptic" })
	T.eq(P("s5.h.notdev", "s5hard", devout), 0, "not:faith:devout esclusa per un devoto")
	T.eq(P("s5.h.notdev", "s5hard", skeptic), 1, "non per uno scettico")
	T.eq(P("s5.h.notdev", "s5hard", Soul()), 1, "non per il neutro")
	T.eq(P("s5.h.reqdev", "s5hard", devout), 1, "req: soddisfatto")
	T.eq(P("s5.h.reqdev", "s5hard", skeptic), 0, "req: non soddisfatto")
	T.eq(P("s5.h.reqdev", "s5hard", Soul()), 0, "req: il neutro non lo soddisfa")
	T.eq(P("s5.h.reqalt", "s5hard", Soul({ faith = "spiritual" })), 1, "più req dello stesso tratto sono alternative")
	T.eq(P("s5.h.reqalt", "s5hard", skeptic), 0, "nessuna alternativa soddisfatta")
	T.eq(P("s5.h.reqtwo", "s5hard", Soul({ faith = "devout" })), 0, "req di tratti diversi si sommano")
	T.eq(P("s5.h.reqtwo", "s5hard", Soul({ faith = "devout", motivation = "duty" })), 1, "entrambi soddisfatti")
	T.eq(Personality:ExcludedBy(Engine.byId["s5.h.reqdev"], {}), "req:faith:devout", "motivo di un req")
	T.eq(Personality:ExcludedBy(Engine.byId["s5.in"], { innerVoice = "off" }), "innerVoice:off", "motivo della voce interiore")
	T.eq(Personality:ExcludedBy(Engine.byId["s5.ch"], { innerVoice = "off" }), nil, "il personaggio non è escluso")
end)

T.run("filtri rigidi: nessuna contraddizione, e il silenzio è un esito valido", function()
	Reset()
	Personality:ToggleTopic("family")
	math.randomseed(5)
	T.eq(Engine:PickEntry("s5only", NS:BuildContext(), "say"), nil, "tutte le frasi escluse: nessuna frase (silenzio)")
	-- profilo completo: per ogni frase del database di base mai una frase esclusa
	Personality:SetArchetype("guardian")
	Personality:ToggleTopic("death"); Personality:ToggleTopic("blood"); Personality:ToggleTopic("religion")
	Personality:SetTrait("innerVoice", "off")
	local soul = NS:BuildContext().soul
	local bad = {}
	for _, ev in ipairs({ "battle", "death", "lowhp", "muse", "pray", "zone", "victory", "greet", "thanks" }) do
		for seed = 1, 6 do
			math.randomseed(seed)
			NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
			for _ = 1, 20 do
				local ctx = NS:BuildContext()
				for _, form in ipairs({ "say", "emote" }) do
					local rec = Engine:PickEntry(ev, ctx, form)
					if rec then
						local ph = Engine.byId[rec.id]
						if Personality:ExcludedBy(ph, soul) then table.insert(bad, rec.id) end
						if ph.speaker == "inner" and rec.speaker == "inner" then table.insert(bad, rec.id .. " (voce interiore spenta)") end
					end
				end
				NS.cdb.memory.recent = {}
			end
		end
	end
	T.eq(#bad, 0, "frasi escluse uscite: " .. table.concat(bad, ", "))
end)

T.run("filtri rigidi: i requisiti delle frasi di esempio del database", function()
	Reset()
	local function Ids(soul)
		local out = {}
		for id, ph in pairs(Engine.byId) do
			if id:sub(1, 5) == "soul." and Personality.Factor(ph, Soul(soul)) > 0 then out[id] = true end
		end
		return out
	end
	local neutral = Ids({})
	T.ok(not neutral["soul.pray.devout"] and not neutral["soul.muse.vengeance"] and not neutral["soul.zone.veteran"], "neutro: nessuna frase che afferma qualcosa")
	T.ok(neutral["soul.muse.family"] and neutral["soul.greet.cheerful"] and neutral["soul.death.wry"], "neutro: le frasi senza requisito")
	local devout = Ids({ faith = "devout" })
	T.ok(devout["soul.pray.devout"] and not devout["soul.pray.skeptic"], "devoto")
	local avoiding = Ids({ avoid = { family = true, death = true, blood = true, religion = true, undead = true } })
	T.ok(not avoiding["soul.muse.family"] and not avoiding["soul.lowhp.blood"] and not avoiding["soul.battle.merciful"]
		and not avoiding["soul.battle.resolute"] and not avoiding["soul.pray.devout"], "argomenti evitati")
	local vet = Ids({ morality = "disillusioned" })
	T.ok(vet["soul.zone.veteran"] and not vet["soul.zone.hopeful"], "disilluso")
end)

---------------------------------------------------------------------------
-- Condizione, registri, contesto
---------------------------------------------------------------------------
T.run("condizione soul e ctx.soul", function()
	Reset()
	local function Eligible(event)
		local out = {}
		for _, p in ipairs(Engine:Eligible(Engine.byEvent[event], "it", NS:BuildContext(), nil, time())) do out[p.id] = true end
		return out
	end
	local e = Eligible("s5cond")
	T.ok(not e["s5.cond"] and not e["s5.cond2"], "profilo neutro: nessuna delle due")
	Personality:SetTrait("temperament", "stoic")
	e = Eligible("s5cond")
	T.ok(e["s5.cond"] and not e["s5.cond2"], "temperamento stoico")
	Personality:SetTrait("faith", "spiritual")
	T.ok(Eligible("s5cond")["s5.cond2"], "un elenco di valori")
	T.eq(NS:BuildContext().soul.spirituality, 70, "ctx.soul: l'asse")
	T.ok(HasV(NS:BuildContext().soul, "faith", "spiritual"), "e il vecchio valore che se ne legge")
	T.ok(Engine.CONDITIONS.soul ~= nil, "condizione dichiarata")
	T.eq(#Engine.CheckConditions({ soul = { temperament = "stoic" } }), 0, "il validatore la accetta")
	T.ok(not Engine.SafeMatch({ soul = "boh" }, NS:BuildContext()), "una condizione malformata vale falsa")
end)

T.run("registri: il temperamento sposta le preferenze (GDD §5.2)", function()
	Reset()
	local function Pref(soul, ctxExtra)
		local ctx = NS:BuildContext(ctxExtra)
		ctx.soul = soul
		return SR:Resolve("battle", ctx).preferred
	end
	local base = Pref({})
	T.ok(Pref({ temperament = "merciful" }).ceremonial == (base.ceremonial or 0) + 1, "misericordioso: solenne")
	T.ok(Pref({ temperament = "resolute" }).epic == (base.epic or 0) + 1, "risoluto: epico")
	local undead = Pref({ temperament = "merciful" }, { ctype = "undead" })
	T.ok(undead.ceremonial == (Pref({}, { ctype = "undead" }).ceremonial or 0) + 2, "contro un non morto il solenne pesa di più")
	T.ok(Pref({ faith = "devout" }).ceremonial == (base.ceremonial or 0) + 1, "fede: cerimoniale")
	T.ok(Pref({ irony = 90 }).ironic == (base.ironic or 0) + 1, "ironia alta: ironico")
	T.eq(Pref({ irony = 10 }).ironic, base.ironic, "ironia bassa: nessuna spinta")
	-- l'effetto arriva ai pesi: una frase solenne conta di più per un misericordioso
	local ph = Engine.byId["soul.battle.merciful"]
	local ctxN = NS:BuildContext({ ctype = "undead" })
	local ctxM = NS:BuildContext({ ctype = "undead" })
	ctxM.soul = { temperament = "merciful" }
	T.ok(Engine:Weight(ph, "battle", ctxM).S > Engine:Weight(ph, "battle", ctxN).S, "S sale con il registro preferito")
	T.ok(Engine:Weight(ph, "battle", ctxM).P > 1 and Engine:Weight(ph, "battle", ctxN).P == 1, "e P con l'affinità")
end)

T.run("un aggancio che sbaglia non ferma il narratore", function()
	Reset()
	Personality:SetTrait("temperament", "stoic")
	local calls = 0
	Personality:RegisterGameLayer("rotto", function() calls = calls + 1; error("boom") end)
	local eff = Personality:Effective()
	T.eq(eff.stoicism, 80, "il resto funziona")
	T.ok(#NS.Diagnostics.errors >= 1, "errore in diagnostica")
	Personality:RegisterGameLayer("rotto", nil)
	Personality:RegisterGameLayer("storto", function() return "non una tabella" end)
	T.eq(Personality:Effective().stoicism, 80, "un valore sbagliato è ignorato")
	Personality:RegisterGameLayer("storto", nil)
end)

---------------------------------------------------------------------------
-- Total RP 3
---------------------------------------------------------------------------
local calls
local function MockTRP3(ps, opts)
	opts = opts or {}
	calls = { paths = {}, created = 0, names = 0 }
	local user = {}
	function user:GetFirstName() calls.names = calls.names + 1; return "Thrall" end
	if not opts.noInfo then
		function user:GetInfo(path)
			table.insert(calls.paths, path)
			if opts.infoError then error("API cambiata") end
			if path == "characteristics/PS" then return ps end
			return "DATO-PRIVATO-" .. path
		end
	end
	AddOn_TotalRP3 = { Player = {
		GetCurrentUser = function() return user end,
		CreateFromCharacterID = function() calls.created = calls.created + 1 end,
	} }
	Compat:Probe()
	Personality:Refresh()
end

local PS_MIX = { { ID = 6, V2 = 2 }, { ID = 7, V2 = 18 }, { ID = 11, V2 = 3 }, { ID = 3, V2 = 17 }, { ID = 9, V2 = 20 },
	{ ID = 2, V2 = 20 } }

T.run("Total RP 3 assente: l'anima funziona lo stesso", function()
	Reset()
	Compat:Probe()
	T.eq(Compat:State("integration:totalRP3"), Compat.MISSING, "integrazione assente")
	T.eq(Compat:State("integration:totalRP3:traits"), Compat.MISSING, "tratti assenti")
	T.ok(not TotalRP3:IsPresent(), "non presente")
	T.eq(TotalRP3:GetSoulTraits(), nil, "nessun tratto")
	T.eq(TotalRP3:ReadPsycho(), nil, "nessun dato")
	Personality:SetTRP3Consent(true)
	Personality:SetTrait("temperament", "stoic")
	T.eq(Personality:Effective().stoicism, 80, "le scelte esplicite restano")
	T.eq(#NS.Diagnostics.errors, 0, "nessun errore")
	SlashCmdList.AZEROTHUNSPOKEN("soul trp3 on")
	T.ok(T.sentContains("non è installato"), "il comando spiega che manca")
end)

T.run("Total RP 3: serve il consenso, e solo il proprio profilo pubblico", function()
	Reset()
	MockTRP3(PS_MIX)
	T.eq(Compat:State("integration:totalRP3"), Compat.AVAILABLE, "integrazione disponibile")
	T.eq(Compat:State("integration:totalRP3:traits"), Compat.AVAILABLE, "tratti disponibili")
	T.ok(Compat.caps["integration:totalRP3:traits"].detail:find("no consent", 1, true), "la diagnostica dice che manca il consenso")
	-- senza consenso nessuna lettura
	T.eq(TotalRP3:GetSoulTraits(), nil, "senza consenso: nulla")
	T.eq(#calls.paths, 1, "solo la sonda ha toccato GetInfo")
	local before = #calls.paths
	T.ok(Personality:IsNeutral(), "il profilo resta neutro senza consenso")
	T.eq(#calls.paths, before, "nessuna lettura dei tratti senza consenso")
	-- con il consenso, ma con il modulo spento
	Personality:SetTRP3Consent(true)
	NS.db.modules.totalRP3 = false
	T.eq(TotalRP3:GetSoulTraits(), nil, "modulo Total RP 3 spento: nulla")
	NS.db.modules.totalRP3 = true
	-- consenso e modulo: legge
	calls.paths = {}
	Personality:Refresh()
	local eff, src = Personality:Effective()
	T.ok(HasV(eff, "temperament", "merciful"), "gentile -> misericordioso (il primo tratto vince)")
	T.ok(HasV(eff, "faith", "skeptic"), "razionale -> scettico")
	T.ok(HasV(eff, "motivation", "vengeance"), "vendicativo (17) -> vendetta")
	T.eq(eff.temperament, nil, "il profilo effettivo ha intensità, non scelte (R4)")
	T.eq(src.altruism, "trp3", "fonte TRP3")
	T.eq(src.spirituality, "trp3", "fonte TRP3")
	-- cosa ha toccato: solo characteristics/PS, solo dell'utente corrente, mai gli altri
	for _, path in ipairs(calls.paths) do T.eq(path, "characteristics/PS", "solo i tratti psicologici pubblici") end
	T.eq(calls.created, 0, "mai il profilo di un altro giocatore")
	local seen = false
	for _, path in ipairs(calls.paths) do seen = seen or path == "characteristics/PS" end
	T.ok(seen, "ha letto i tratti")
end)

T.run("Total RP 3: mappa dei tratti e soglie", function()
	Reset()
	Personality:SetTRP3Consent(true)
	-- 3 = indulgente/vendicativo: 17 -> vendetta
	MockTRP3({ { ID = 3, V2 = 17 } })
	T.eq(TotalRP3:GetSoulTraits().motivation, "vengeance", "vendicativo -> vendetta")
	MockTRP3({ { ID = 3, V2 = 3 } })
	T.eq(TotalRP3:GetSoulTraits().temperament, "merciful", "indulgente -> misericordioso")
	-- valori tiepidi (vicino al centro) non decidono il carattere
	MockTRP3({ { ID = 6, V2 = 9 }, { ID = 7, V2 = 11 }, { ID = 11, V2 = 10 } })
	T.ok(next(TotalRP3:GetSoulTraits()) == nil, "valori tiepidi ignorati")
	-- i tratti senza una corrispondenza chiara non entrano
	MockTRP3({ { ID = 2, V2 = 20 }, { ID = 5, V2 = 0 }, { ID = 10, V2 = 20 }, { ID = 1, V2 = 20 }, { ID = 9, V2 = 0 } })
	T.ok(next(TotalRP3:GetSoulTraits()) == nil, "casto/lussurioso, sincero, asceta, caotico, cauto: non mappati")
	-- il primo tratto TRP3 che indica un tratto del Soul vince
	MockTRP3({ { ID = 11, V2 = 0 }, { ID = 6, V2 = 20 } })
	T.eq(TotalRP3:GetSoulTraits().temperament, "fierce", "ordine di priorità della tabella: brutale prima di valoroso")
	-- dati malformati: scartati, mai un errore
	MockTRP3({ { ID = "x", V2 = 0 }, { ID = 6 }, { ID = 6, V2 = 99 }, { ID = 6, V2 = -3 }, "stringa", 42, { ID = 6, V2 = 0 / 0 }, { ID = 7, V2 = 19 } })
	local traits = TotalRP3:GetSoulTraits()
	T.eq(traits.faith, "skeptic", "la voce valida passa")
	T.eq(traits.temperament, nil, "le voci malformate no")
	T.eq(#TotalRP3:ReadPsycho(), 1, "una sola voce valida")
	T.eq(#NS.Diagnostics.errors, 0, "nessun errore")
	-- profilo senza tratti
	MockTRP3(nil)
	T.ok(next(TotalRP3:GetSoulTraits() or {}) == nil, "senza tratti")
	T.eq(Compat:State("integration:totalRP3:traits"), Compat.AVAILABLE, "disponibile anche senza tratti")
end)

T.run("priorità: scelta esplicita > Total RP 3 > dati di gioco > valori neutri", function()
	Reset()
	Personality:SetTRP3Consent(true)
	MockTRP3({ { ID = 6, V2 = 0 }, { ID = 7, V2 = 20 } })       -- misericordioso, scettico
	Personality:RegisterGameLayer("prova", function() return { faith = "devout", curiosity = 80, temperament = "fierce" } end)
	Personality:SetTrait("temperament", "gruff")                  -- scelta esplicita: altruismo 25
	local eff, src = Personality:Effective()
	T.ok(HasV(eff, "temperament", "gruff") and not HasV(eff, "temperament", "merciful"), "esplicito batte TRP3 e gioco")
	T.eq(src.altruism, "explicit", "fonte esplicita")
	T.ok(HasV(eff, "faith", "skeptic"), "TRP3 batte il gioco")
	T.eq(src.spirituality, "trp3", "fonte TRP3")
	T.eq(eff.curiosity, 80, "il gioco riempie i vuoti")
	T.eq(src.curiosity, "game", "fonte di gioco")
	T.eq(eff.irony, nil, "il resto è neutro")
	T.eq(src.irony, nil, "nessuna fonte")
	-- togliere la scelta fa riemergere il livello sotto
	Personality:SetTrait("altruism", nil)
	T.ok(HasV(Personality:Effective(), "temperament", "merciful"), "tolta la scelta: TRP3")
	-- togliere il consenso fa riemergere il gioco
	Personality:SetTRP3Consent(false)
	eff, src = Personality:Effective()
	T.ok(HasV(eff, "faith", "devout"), "senza consenso: dati di gioco")
	T.ok(HasV(eff, "temperament", "fierce"), "senza consenso: il gioco")
	-- e senza nulla, valori neutri
	Personality:RegisterGameLayer("prova", nil)
	T.ok(Personality:IsNeutral(), "valori neutri")
	-- il riepilogo dice la fonte di ogni tratto
	Personality:SetTRP3Consent(true)
	Personality:SetTrait("irony", 70)
	local text = table.concat(Personality:Summary(), "\n")
	T.ok(text:find("Ironia: 70 (alta) (scelta)", 1, true), "riepilogo: scelta")
	T.ok(text:find("Spiritualità: 10 (scarsa) (Total RP 3)", 1, true), "riepilogo: TRP3")
	T.ok(text:find("Curiosità: non impostato (neutro)", 1, true), "riepilogo: neutro")
end)

T.run("Total RP 3: API cambiata, si disattiva con eleganza", function()
	Reset()
	Personality:SetTRP3Consent(true)
	Personality:SetTrait("temperament", "stoic")
	-- 1) manca GetInfo
	MockTRP3(PS_MIX, { noInfo = true })
	T.eq(Compat:State("integration:totalRP3"), Compat.AVAILABLE, "il nome si legge ancora")
	T.eq(Compat:State("integration:totalRP3:traits"), Compat.MISSING, "i tratti non più")
	T.ok(Compat.caps["integration:totalRP3:traits"].detail:find("GetInfo missing", 1, true), "il motivo in diagnostica")
	T.eq(TotalRP3:GetSoulTraits(), nil, "nessun tratto")
	T.eq(Personality:Effective().stoicism, 80, "le scelte restano")
	-- 2) GetInfo solleva un errore
	MockTRP3(PS_MIX, { infoError = true })
	T.eq(Compat:State("integration:totalRP3:traits"), Compat.MISSING, "errore: tratti non disponibili")
	T.eq(TotalRP3:GetSoulTraits(), nil, "errore: nessun tratto")
	T.eq(Personality:Effective().stoicism, 80, "nessuna eccezione")
	-- 3) forma inattesa dei dati
	MockTRP3("non una tabella")
	T.eq(Compat:State("integration:totalRP3:traits"), Compat.MISSING, "forma inattesa: tratti non disponibili")
	T.eq(TotalRP3:GetSoulTraits(), nil, "forma inattesa: nessun tratto")
	-- 4) GetCurrentUser solleva un errore o restituisce altro
	AddOn_TotalRP3 = { Player = { GetCurrentUser = function() error("API cambiata") end } }
	Compat:Probe()
	T.eq(Compat:State("integration:totalRP3"), Compat.MISSING, "GetCurrentUser rotto")
	T.eq(Compat:State("integration:totalRP3:traits"), Compat.MISSING, "e i tratti")
	T.eq(TotalRP3:GetSoulTraits(), nil, "nessun tratto")
	AddOn_TotalRP3 = { Player = { GetCurrentUser = function() return "stringa" end } }
	Compat:Probe()
	T.eq(TotalRP3:GetSoulTraits(), nil, "utente non valido")
	AddOn_TotalRP3 = { Player = "altro" }
	Compat:Probe()
	T.eq(TotalRP3:GetSoulTraits(), nil, "Player non è una tabella")
	AddOn_TotalRP3 = {}
	Compat:Probe()
	T.eq(TotalRP3:GetSoulTraits(), nil, "API vuota")
	T.eq(TotalRP3:GetFirstName(), nil, "e nemmeno il nome")
	T.eq(NS:BuildContext().player, "Garrosh", "si torna al nome del personaggio")
	T.eq(Personality:Effective().stoicism, 80, "le scelte esplicite restano sempre")
	T.eq(#NS.Diagnostics.errors, 0, "nessun errore intercettato: tutto è protetto")
	-- 5) il profilo cambia in gioco: la cache si rinnova
	MockTRP3({ { ID = 7, V2 = 0 } })
	Personality:SetTrait("stoicism", nil)
	T.ok(HasV(Personality:Effective(), "faith", "spiritual"), "superstizioso -> spirituale")
	MockTRP3({ { ID = 7, V2 = 20 } })
	T.ok(HasV(Personality:Effective(), "faith", "skeptic"), "dopo la sonda si rilegge")
	AddOn_TotalRP3 = nil
end)

T.run("Total RP 3: il nome resta com'era e passa dal suo interruttore", function()
	Reset()
	MockTRP3(PS_MIX)
	T.eq(NS:BuildContext().player, "Thrall", "nome dal profilo")
	NS.db.modules.totalRP3 = false
	T.eq(NS:BuildContext().player, "Garrosh", "modulo spento")
	NS.db.modules.totalRP3 = true
	AddOn_TotalRP3 = nil
end)

---------------------------------------------------------------------------
-- SavedVariables e migrazione
---------------------------------------------------------------------------
T.run("SavedVariables: migrazione dallo schema 2", function()
	Reset()
	-- come lo lasciava S4: personality è una tabella vuota
	AzerothUnspokenDB = { schemaVersion = 2, settings = { intensity = 33 } }
	AzerothUnspokenCharacterDB = { schemaVersion = 2, memory = { uses = { x = 2 } }, personality = {}, memories = {}, arcs = {}, history = {} }
	Config:Load()
	local c = AzerothUnspokenCharacterDB
	T.eq(c.schemaVersion, 7, "versione del personaggio")
	T.eq(AzerothUnspokenDB.schemaVersion, 7, "versione globale")
	T.ok(c.personality.version == 1 and c.personality.archetype == "neutral" and c.personality.trp3 == false
		and type(c.personality.traits) == "table" and next(c.personality.traits) == nil, "personality con i campi nuovi")
	T.eq(c.memory.uses.x, 2, "il resto è intatto")
	T.eq(NS.db.intensity, 33, "impostazioni intatte")
	T.ok(Personality:IsNeutral(), "profilo neutro")
	-- ancora più vecchio, senza il campo
	AzerothUnspokenCharacterDB = { schemaVersion = 1, memory = {} }
	Config:Load()
	T.eq(AzerothUnspokenCharacterDB.schemaVersion, 7, "da schema 1")
	T.eq(AzerothUnspokenCharacterDB.personality.archetype, "neutral", "personality creata")
	-- una personality rovinata
	for _, bad in ipairs({ "testo", 7, true }) do
		AzerothUnspokenCharacterDB = { schemaVersion = 2, personality = bad }
		Config:Load()
		T.eq(AzerothUnspokenCharacterDB.personality.archetype, "neutral", "personality rovinata (" .. tostring(bad) .. ")")
	end
	AzerothUnspokenCharacterDB = { schemaVersion = 2, personality = { traits = "x", archetype = 5, trp3 = "sì" } }
	Config:Load()
	local p = AzerothUnspokenCharacterDB.personality
	T.ok(type(p.traits) == "table" and p.archetype == "neutral" and p.trp3 == false, "campi del tipo sbagliato ripristinati")
	T.eq(#NS.Diagnostics.errors, 0, "nessun errore")
end)

T.run("SavedVariables: valori dei tratti ripuliti all'avvio", function()
	Reset()
	AzerothUnspokenCharacterDB = { schemaVersion = 3, personality = { version = 1, archetype = "custom", trp3 = true,
		traits = { temperament = "stoic", irony = 500, faith = "boh", foo = 1, avoid = { death = true, bogus = true } } } }
	Config:Load()
	local dropped = Personality:Sanitize()
	local t = NS.cdb.personality.traits
	T.ok(dropped >= 2, "scarti: " .. dropped)
	T.ok(t.stoicism == 80 and t.irony == 100 and t.faith == nil and t.foo == nil and t.temperament == nil,
		"valori ripuliti e convertiti in intensità (versione 2)")
	T.eq(NS.cdb.personality.version, 2, "versione 2")
	T.eq(NS.cdb.personality.legacy.temperament, "stoic", "la scelta di prima resta come identificatore")
	T.ok(t.avoid.death and not t.avoid.bogus, "insieme ripulito")
	T.eq(NS.cdb.personality.trp3, true, "il consenso salvato resta")
	T.eq(Personality:Effective().irony, 100, "il profilo effettivo usa i dati ripuliti")
	-- un archetipo salvato che non esiste più
	NS.cdb.personality.archetype = "sparito"
	Personality:Sanitize()
	T.eq(NS.cdb.personality.archetype, "custom", "archetipo sconosciuto: personalizzato (ha tratti)")
	NS.cdb.personality = { traits = {}, archetype = "sparito" }
	Personality:Sanitize()
	T.eq(NS.cdb.personality.archetype, "neutral", "archetipo sconosciuto senza tratti: neutro")
	-- le scelte sopravvivono a un nuovo caricamento (come tra due sessioni)
	Personality:SetArchetype("scholar")
	Personality:ToggleTopic("betrayal")
	Config:Load()
	Personality:Sanitize()
	T.eq(NS.cdb.personality.archetype, "custom", "ricaricato: profilo personalizzato")
	T.ok(HasV(Personality:Effective(), "motivation", "knowledge"), "ricaricato: le scelte ci sono")
	T.eq(NS.cdb.personality.traits.curiosity, 95, "ricaricato: le intensità ci sono")
	T.ok(Personality:Effective().avoid.betrayal, "ricaricato: argomento evitato")
	-- dati di uno schema più nuovo: non si toccano
	AzerothUnspokenCharacterDB = { schemaVersion = 99, personality = { traits = { temperament = "inventato" }, nuovo = true } }
	Config:Load()
	T.eq(AzerothUnspokenCharacterDB.schemaVersion, 99, "versione futura conservata")
	T.eq(AzerothUnspokenCharacterDB.personality.traits.temperament, "inventato", "dati futuri non riscritti")
	Personality:Sanitize()
	T.eq(AzerothUnspokenCharacterDB.personality.traits.temperament, "inventato", "nemmeno dalla pulizia")
	AzerothUnspokenCharacterDB = nil
	Config:Load()
	Personality:Sanitize()
end)

---------------------------------------------------------------------------
-- Comando /au anima
---------------------------------------------------------------------------
local function Cmd(c)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN(c)
	return table.concat(SENT, " | ")
end

T.run("comando /au anima", function()
	Reset()
	NS.db.locale = "it"
	T.ok(Cmd("soul list"):find("archetipo: Neutro", 1, true), "lista: archetipo")
	T.ok(Cmd("soul archetype"):find("veteran = Veterano disilluso", 1, true), "elenco degli archetipi")
	T.ok(Cmd("soul archetype veteran"):find("Veterano disilluso", 1, true), "sceglie un archetipo")
	T.ok(HasV(Personality:Effective(), "morality", "disillusioned"), "vale subito")
	T.ok(Cmd("soul archetype rogue"):find("Furfante arguto", 1, true), "sceglie un altro archetipo")
	T.ok(HasV(Personality:Effective(), "temperament", "gruff"), "archetipo rogue")
	T.ok(Cmd("soul archetype Furfante arguto"):find("non valido", 1, true), "il nome localizzato non è un comando")
	T.ok(Cmd("soul archetype boh"):find("non valido", 1, true), "archetipo sconosciuto")
	T.ok(Cmd("soul temperament stoico"):find("non valido", 1, true), "il nome italiano non è un valore")
	T.ok(Cmd("soul temperament stoic"):find("Stoico", 1, true), "temperamento per identificatore")
	T.eq(NS.cdb.personality.traits.stoicism, 80, "salvato come intensità")
	T.eq(NS.cdb.personality.archetype, "custom", "diventa personalizzato")
	Cmd("soul irony 70")
	T.eq(NS.cdb.personality.traits.irony, 70, "ironia numerica")
	Cmd("soul irony low")
	T.eq(Traits.Band(Traits.defs.irony, NS.cdb.personality.traits.irony), "low", "ironia per fascia")
	T.ok(Cmd("soul faith boh"):find("non valido", 1, true), "valore sbagliato: messaggio")
	T.ok(Cmd("soul faith"):find("Fede:", 1, true), "senza valore: mostra lo stato")
	Cmd("soul faith devout")
	T.eq(NS.cdb.personality.traits.spirituality, 90, "fede")
	T.ok(Cmd("soul faith"):find("Devoto", 1, true), "lo stato si legge dagli assi")
	Cmd("soul faith -")
	T.eq(NS.cdb.personality.traits.spirituality, nil, "'-' toglie la scelta")
	Cmd("soul stoicism 35")
	T.eq(NS.cdb.personality.traits.stoicism, 35, "un asse per numero")
	T.ok(Cmd("soul idealism 15"):find("cinico", 1, true), "un asse bipolare dice il suo polo")
	T.ok(Cmd("soul avoid death"):find("eviti: morte", 1, true), "argomento aggiunto")
	T.ok(NS.cdb.personality.traits.avoid.death, "salvato")
	T.ok(Cmd("soul avoid death"):find("non eviti più: morte", 1, true), "e tolto")
	T.ok(Cmd("soul avoid boh"):find("non valido", 1, true), "argomento sconosciuto")
	Cmd("soul voice off")
	T.eq(NS.cdb.personality.traits.innerVoice, "off", "voce interiore")
	Cmd("soul motivation glory")
	T.eq(NS.cdb.personality.traits.ambition, 80, "identificatore inglese")
	Cmd("soul morality hopeful")
	T.eq(NS.cdb.personality.traits.optimism, 80, "morale")
	Cmd("soul curiosity 80")
	T.eq(NS.cdb.personality.traits.curiosity, 80, "curiosità")
	T.ok(Cmd("soul boh"):find("uso:", 1, true), "comando sconosciuto: aiuto")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("help all")
	T.ok(T.sentContains("/au soul"), "l'aiuto (it) elenca /au soul, in inglese")
	T.ok(not T.sentContains("/au anima"), "e non /au anima")
	Cmd("soul neutral")
	T.ok(Personality:IsNeutral() and NS.cdb.personality.archetype == "neutral", "neutro")
	-- inglese
	NS.db.locale = "en"
	Cmd("soul temperament cheerful")
	T.eq(NS.cdb.personality.traits.optimism, 80, "/au soul in inglese")
	T.ok(Cmd("soul list"):find("Pessimist - optimist: 80 (optimist)", 1, true), "riepilogo in inglese")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("help all")
	T.ok(T.sentContains("/au soul"), "aiuto in inglese")
	Cmd("soul avoid blood")
	T.ok(NS.cdb.personality.traits.avoid.blood, "evita in inglese")
	NS.db.locale = "it"
	T.eq(#NS.Diagnostics.errors, 0, "nessun errore")
	for _, s in ipairs(SENT) do T.ok(s:find("^PRINT:"), "i comandi non scrivono in chat: " .. s) end
	-- l'intero effetto passa dal comando alle frasi
	Reset()
	Cmd("soul avoid blood")
	local ph = Engine.byId["soul.lowhp.blood"]
	T.eq(Personality.Factor(ph, NS:BuildContext()), 0, "dal comando al filtro rigido")
	Cmd("soul trp3 on")
end)

T.run("comando /au anima con Total RP 3", function()
	Reset()
	MockTRP3({ { ID = 6, V2 = 0 } })
	T.ok(Cmd("soul trp3"):find("tratti da Total RP 3: spento", 1, true), "stato del consenso")
	T.eq(NS.cdb.personality.trp3, false, "spento per impostazione predefinita")
	Cmd("soul trp3 on")
	T.eq(NS.cdb.personality.trp3, true, "consenso dato")
	T.ok(HasV(Personality:Effective(), "temperament", "merciful"), "i tratti si leggono")
	Cmd("soul trp3 off")
	T.eq(NS.cdb.personality.trp3, false, "consenso tolto")
	T.ok(Personality:IsNeutral(), "e il profilo torna neutro")
	AddOn_TotalRP3 = nil
end)

---------------------------------------------------------------------------
-- Finestra del profilo
---------------------------------------------------------------------------
local function ProfileButtons()
	local f = _G.AzerothUnspokenProfile
	local out = {}
	for _, c in ipairs(f.children) do
		if c.kind == "Button" then table.insert(out, c) end
	end
	return f, out
end

T.run("finestra del profilo", function()
	Reset()
	T.ok(not NS.ProfileFrame:IsOpen(), "chiusa all'inizio")
	Cmd("soul")
	T.ok(NS.ProfileFrame:IsOpen(), "/au anima la apre")
	local f, b = ProfileButtons()
	T.eq(#b, 26, "pulsanti: chiusura in alto, archetipo, una x per scala, voce interiore, argomenti, consenso, neutro, chiudi")
	T.ok(b[1] == f.closeBox, "#174: the close box at the top right comes first")
	T.ok(f.title:GetText():find("Anima del personaggio", 1, true), "titolo")
	-- archetipo: ogni clic passa al successivo e vale subito
	local seen = { [NS.cdb.personality.archetype] = true }
	for i = 1, #Personality.archetypes do
		f.arch:Click()
		seen[NS.cdb.personality.archetype] = true
	end
	T.eq(NS.cdb.personality.archetype, "neutral", "dopo un giro si torna al neutro")
	T.ok(seen.veteran and seen.penitent and seen.dreamer, "ha visitato gli archetipi")
	f.arch:Click()
	T.eq(NS.cdb.personality.archetype, "veteran", "primo archetipo")
	T.ok(f.arch:GetText():find("Veterano", 1, true) and f.archHelp:GetText():find("Stoico", 1, true), "nome e descrizione")
	T.ok(HasV(NS:BuildContext().soul, "temperament", "stoic"), "cambio immediato nel contesto")
	-- i cursori (R4): il valore si salva al rilascio, il testo cambia mentre si trascina
	local rows = NS.ProfileFrame.rows
	T.ok(rows.stoicism.slider and rows.idealism.slider and rows.irony.slider, "un cursore per ogni scala")
	T.ok(rows.idealism.text:GetText():find("cinico", 1, true), "un asse bipolare mostra il polo")
	rows.stoicism.slider:Set(36, false)
	T.eq(NS.cdb.personality.traits.stoicism, 80, "mentre si trascina non si salva")
	T.ok(rows.stoicism.text:GetText():find("36", 1, true), "ma il testo segue")
	rows.stoicism.slider:Set(35, true)
	T.eq(NS.cdb.personality.traits.stoicism, 35, "al rilascio si salva")
	T.eq(NS.cdb.personality.archetype, "custom", "personalizzato")
	T.ok(f.arch:GetText():find("Veterano", 1, true), "partito dal veterano")
	T.ok(not HasV(NS:BuildContext().soul, "temperament", "stoic"), "e il contesto lo vede")
	rows.stoicism.clear:Click()
	T.eq(NS.cdb.personality.traits.stoicism, nil, "x toglie la scelta")
	T.ok(rows.stoicism.text:GetText():find("non impostato", 1, true), "senza valore: non impostato")
	-- voce interiore: il valore successivo, fino a togliere la scelta
	local voiceValue = b[14]
	voiceValue:Click()
	T.eq(NS.cdb.personality.traits.innerVoice, "off", "il clic cambia il valore")
	-- argomenti da evitare
	local topicButtons = { unpack(b, 16, 23) }
	T.eq(#topicButtons, 8, "otto argomenti")
	topicButtons[1]:Click()
	T.ok(NS.cdb.personality.traits.avoid.death, "argomento acceso")
	T.ok(topicButtons[1]:GetText():find("morte", 1, true) and topicButtons[1].selected and topicButtons[1].bar:IsShown(),
		"evidenziato con il bordo e la barra, non solo con un colore (#187)")
	topicButtons[1]:Click()
	T.eq(NS.cdb.personality.traits.avoid, nil, "argomento spento")
	-- Total RP 3: il consenso si vede solo se c'è Total RP 3
	T.ok(not f.trp3:IsShown(), "senza Total RP 3 il consenso non si mostra")
	MockTRP3({ { ID = 6, V2 = 0 } })
	NS.ProfileFrame:Refresh()
	T.ok(f.trp3:IsShown(), "con Total RP 3 sì")
	f.trp3:Click()
	T.eq(NS.cdb.personality.trp3, true, "consenso dalla finestra")
	T.ok(HasV(Personality:Effective(), "temperament", "merciful"), "tratti letti")
	f.trp3:Click()
	T.eq(NS.cdb.personality.trp3, false, "e tolto")
	AddOn_TotalRP3 = nil
	-- profilo neutro (#190): il primo clic arma, il secondo azzera; un timer vecchio non disarma un armamento nuovo
	Personality:SetTrait("irony", 70)
	f.reset:Click()
	T.ok(not Personality:IsNeutral(), "#190: the first click only arms")
	T.eq(f.reset:GetText(), NS:L("soul_reset_confirm"), "the button asks for the second click")
	T.ok(f.reset.armed and f.reset.style == "danger", "in the style of the destructive actions, filled while armed")
	ADVANCE(4)
	f.reset:Click()
	T.ok(Personality:IsNeutral(), "profilo neutro dalla finestra")
	Personality:SetTrait("irony", 70)
	f.reset:Click()                  -- arms again
	ADVANCE(3)                       -- the first arming's timer (6 s from its click) has run out by now
	T.ok(f.reset.armed, "#190: an old timer does not disarm a newer arming")
	ADVANCE(4)
	NS.ProfileFrame:Refresh()
	T.ok(not f.reset.armed, "the arming expires by itself")
	f.reset:Click()
	f.close:Click()
	Cmd("soul")
	T.ok(not f.reset.armed and not Personality:IsNeutral(), "#190: closing the window disarms it")
	Cmd("soul")
	Personality:Reset()
	Cmd("soul")
	f.close:Click()
	T.ok(not NS.ProfileFrame:IsOpen(), "chiusa")
	Cmd("soul")
	Cmd("soul")
	T.ok(not NS.ProfileFrame:IsOpen(), "il comando apre e chiude")
	-- inglese
	NS.db.locale = "en"
	Cmd("soul")
	T.ok(f.title:GetText():find("Character soul", 1, true), "titolo in inglese")
	f.close:Click()
	NS.db.locale = "it"
	T.eq(#NS.Diagnostics.errors, 0, "nessun errore")
	for _, s in ipairs(SENT) do T.ok(s:find("^PRINT:"), "nessun invio in chat") end
	-- dal pannello delle impostazioni
	local opened = false
	for _, w in ipairs(FindWidgets(function(x) return rawget(x, "Refresh") ~= nil end)) do w:Refresh() end
	local found = FindWidgets(function(x) return x.kind == "Button" and x:GetText() == NS:L("opt_soul") end)
	T.ok(#found >= 1, "il pulsante c'è")
	if found[1] then
		found[1]:Click()
		opened = NS.ProfileFrame:IsOpen()
	end
	T.ok(opened, "il pulsante del pannello delle impostazioni la apre")
	NS.ProfileFrame:Close()
end)

T.run("interfaccia: chiavi complete in italiano e in inglese", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local function Count(t, prefix) local n = 0; for k in pairs(t) do if k:sub(1, #prefix) == prefix then n = n + 1 end end return n end
	T.eq(Count(it, "trait_"), Count(en, "trait_"), "stesse chiavi trait_")
	T.eq(Count(it, "soul_"), Count(en, "soul_"), "stesse chiavi soul_")
	for _, id in ipairs(Personality.TRAIT_ORDER) do
		local def = Traits.defs[id]
		T.ok(it["trait_" .. id] and en["trait_" .. id], id .. ": nome")
		for _, v in ipairs(def.values or {}) do T.ok(it["trait_" .. id .. "_" .. v] and en["trait_" .. id .. "_" .. v], id .. "/" .. v) end
		for _, band in ipairs(def.bands or {}) do T.ok(it["trait_" .. id .. "_" .. band[1]], id .. "/" .. band[1]) end
	end
end)

T.run("validatore: i tag di affinità", function()
	Reset()
	local r = NS.Validator:Run({ packs = { "base_soul", "s5test" } })
	T.eq(#r.errors, 0, "nessun errore nei pacchetti di prova")
	NS:RegisterPack({ id = "s5bad", languages = { "itIT" }, registry = {
		["s5.bad.trait"] = { event = "s5soft", speaker = "character", tags = { "mood:stoic" } },
		["s5.bad.value"] = { event = "s5soft", speaker = "character", tags = { "temperament:boh" } },
		["s5.bad.req"] = { event = "s5soft", speaker = "character", tags = { "req:topic:death" } },
		["s5.good"] = { event = "s5soft", speaker = "character", tags = { "wry", "temperament:stoic" } },
	}, texts = { itIT = { ["s5.bad.trait"] = "a", ["s5.bad.value"] = "b", ["s5.bad.req"] = "c", ["s5.good"] = "d" } } })
	r = NS.Validator:Run({ packs = { "s5bad" } })
	local codes = {}
	for _, e in ipairs(r.errors) do if e.code == "badTag" then codes[e.id] = true end end
	T.ok(codes["s5.bad.trait"] and codes["s5.bad.value"] and codes["s5.bad.req"], "tratto, valore e req sbagliati segnalati")
	T.ok(not codes["s5.good"], "un tag valido o descrittivo passa")
end)
