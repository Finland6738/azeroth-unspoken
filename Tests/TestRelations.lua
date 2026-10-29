-- Test dello step S6b: relazioni e affinità (Systems/Relationships.lua, Data/Relationships.lua), condizioni e
-- segnaposto nel RuleEngine, fattore R, registro per familiarità, NPC automatici, lista dei giocatori gestita
-- dall'utente, privacy, schema 5, finestra e comandi.
-- La persistenza tra sessioni (/reload) si prova in Tests/run_tests.py con due runtime consecutivi.
local NS = ...
local Engine, Config, R, Traits, LM = NS.Engine, NS.Config, NS.Relationships, NS.Traits, NS.LivingMemory
local Director, Narrator, JournalFrame, RelationsFrame = NS.Director, NS.Narrator, NS.JournalFrame, NS.RelationsFrame

local DAY = 86400

---------------------------------------------------------------------------
-- Aiuti
---------------------------------------------------------------------------
local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end
local function Near(a, b, eps) return type(a) == "number" and math.abs(a - b) <= (eps or 0.01) end
local function Count(t) local n = 0; for _ in pairs(t) do n = n + 1 end; return n end

local function Fresh()
	NS.cdb.relationships = nil
	NS.cdb.memories = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	R.readOnly = false
	NS.Diagnostics.errors = {}
	R:Sanitize()
	R.candidates, R.dismissed, R.session = {}, {}, { seen = {}, offered = {} }
	R.interaction, R.questGiver, R.questTaker, R.group, R.groupDirty = nil, nil, nil, nil, true
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	P.target, P.npc, P.party, P.group, P.raid = nil, nil, nil, false, false
	P.zone, P.combat, P.dead, P.hp, P.hpMax = "Durotar", false, false, 100, 100
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 0, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	if NS.Personality then NS.Personality:SetArchetype("neutral") end
	if RelationsFrame then RelationsFrame:Close() end
	SENT = {}
	ADVANCE(20)
end

-- un'interazione con un NPC: il client lo mette nell'unità "npc" e lancia l'evento
local function Talk(id, name, wowEvent)
	P.npc = { name = name or "Pip", guid = Guid(id) }
	ADVANCE(16)   -- oltre la finestra di deduplicazione dell'evento
	FIRE(wowEvent or "GOSSIP_SHOW")
end

local function Npc(id) return R:Get("npc", id) end

-- una persona della lista, con gli assi dati (azione dell'utente)
local function Person(name, axes)
	local rec = R:AddPlayer(name, "user")
	local key = R.PlayerKey(name)
	for axis, v in pairs(axes or {}) do R:SetAxis("player", key, axis, v) end
	return key, rec
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

-- i widget di una finestra (un suo discendente), nell'ordine di creazione, senza doppioni
local ROOT = "AzerothUnspokenRelations"
local function Under(rootName, pred)
	local out = {}
	local function Walk(w)
		for _, c in ipairs(w.children or {}) do
			if pred(c) then table.insert(out, c) end
			Walk(c)
		end
	end
	local root = _G[rootName]
	if root then Walk(root) end
	return out
end

local function Texts(pred, rootName)
	local out = {}
	for _, w in ipairs(Under(rootName or ROOT, function(x) return x.kind == "FontString" and x:IsShown() end)) do
		local t = w:GetText()
		if t ~= "" and (not pred or pred(t)) then table.insert(out, t) end
	end
	return out
end

local function Buttons(rootName)
	return Under(rootName or ROOT, function(x) return x.kind == "Button" and x:IsShown() end)
end

local function ButtonWithText(text, plain, rootName)
	for _, b in ipairs(Buttons(rootName)) do
		local t = b:GetText()
		if t == text or (not plain and t:find(text, 1, true) == 1) then return b end
	end
	return nil
end

local function Boxes()
	return Under(ROOT, function(x) return x.kind == "EditBox" end)
end

---------------------------------------------------------------------------
-- Dati: assi, etichette, disposizione
---------------------------------------------------------------------------
T.run("assi indipendenti, con l'attrazione facoltativa", function()
	Fresh()
	local ids = {}
	for _, a in ipairs(R.axes) do ids[a.id] = a end
	for _, id in ipairs({ "familiarity", "trust", "respect", "affection", "fear", "loyalty", "attraction" }) do
		T.ok(ids[id] ~= nil, "asse " .. id)
		T.ok(ids[id].name.it and ids[id].name.en, "nome IT ed EN di " .. id)
	end
	T.eq(ids.familiarity.min, 0, "familiarità da 0")
	T.eq(ids.trust.min, -100, "fiducia da -100")
	T.eq(ids.affection.min, -100, "affetto da -100: i negativi sono astio")
	T.eq(ids.fear.max, 100, "timore fino a 100")
	T.ok(ids.attraction.optional == true, "l'attrazione è facoltativa")
	T.ok(not NS.db.relations.attraction, "attrazione spenta di base")
	T.eq(#R:ActiveAxes(), 6, "sei assi attivi con l'attrazione spenta")
	R:SetSetting("attraction", true)
	T.eq(#R:ActiveAxes(), 7, "sette con l'attrazione accesa")
	-- gli assi sono scale del modello dei tratti di S5, con fasce per i tag
	T.eq(Traits.defs.trust.kind, "scale", "la fiducia è una scala di Traits")
	T.eq(Traits.Band(Traits.defs.trust, 80), "high", "fiducia alta")
	T.eq(Traits.Band(Traits.defs.trust, -80), "low", "fiducia bassa")
	T.eq(Traits.defs.trust.scope, "rel", "ambito rel")
	T.ok(Traits.defs.relation and Traits.defs.relation.valid.friend, "relation è un tratto con i valori delle etichette")
end)

T.run("etichette derivate: il motore non ne contiene di fisse", function()
	Fresh()
	local function L(axes, attr)
		R:SetSetting("attraction", attr == true)
		local a = { familiarity = 0, trust = 0, respect = 0, affection = 0, fear = 0, loyalty = 0, attraction = attr and 0 or nil }
		for k, v in pairs(axes) do a[k] = v end
		return R:Derive(a)
	end
	T.eq(L({}), "stranger", "familiarità bassa: sconosciuto")
	T.eq(L({ familiarity = 25, trust = 20 }), "acquaintance", "un po' di familiarità: conoscente")
	T.eq(L({ familiarity = 25 }), "indifferent", "valori vicini a zero: indifferente")
	T.eq(L({ familiarity = 40, trust = 40, affection = 40 }), "friend", "fiducia e affetto alti: amico")
	T.eq(L({ familiarity = 60, trust = 70, loyalty = 70, affection = 40 }), "comrade", "fiducia e lealtà alte: compagno d'armi")
	T.eq(L({ familiarity = 40, trust = -20, respect = 70 }), "rival", "fiducia bassa e rispetto alto: rivale rispettato")
	T.eq(L({ familiarity = 40, affection = -80 }), "enemy", "affetto molto negativo: nemico")
	T.eq(L({ familiarity = 40, affection = -80, respect = 90, trust = -50 }), "enemy", "il nemico prevale sul rivale")
	T.eq(L({ fear = 80 }), "feared", "timore alto: temuto")
	T.eq(L({ familiarity = 40, trust = -50 }), "wary", "fiducia molto bassa: diffidente")
	T.eq(L({ familiarity = 40, affection = -40, trust = 10 }), "disliked", "affetto negativo: inviso")
	T.eq(L({ familiarity = 40, trust = 40, affection = 60 }, true), "friend", "senza attrazione alta non c'è innamorato")
	T.eq(L({ familiarity = 40, trust = 40, affection = 60, attraction = 70 }, true), "lover", "affetto e attrazione alti: innamorato")
	-- con l'asse spento la regola dell'innamorato non scatta mai, qualunque valore sia salvato
	R:SetSetting("attraction", false)
	T.eq(R:Resolve("player", { familiarity = 40, trust = 40, affection = 60, attraction = 99 }).label, "friend", "attrazione spenta: l'asse salvato non conta")
	-- ogni etichetta ha nomi IT ed EN e ogni regola cita assi che esistono
	for _, l in ipairs(R.labels) do
		T.ok(l.name.it and l.name.en, "nomi IT ed EN di " .. l.id)
		for axis in pairs(l.when) do T.ok(R.axisById[axis] ~= nil, l.id .. ": asse " .. axis .. " esiste") end
	end
	-- un pacchetto aggiunge un'etichetta senza toccare il codice
	NS:RegisterRelationData({ labels = { { id = "mentor", priority = 85, name = { it = "maestro", en = "mentor" },
		when = { respect = { min = 80 }, trust = { min = 60 } } } } })
	T.eq(R:Derive({ familiarity = 50, trust = 70, respect = 90, affection = 0, loyalty = 0, fear = 0 }), "mentor", "etichetta da pacchetto")
	R.labelById.mentor = nil
	for i, l in ipairs(R.labels) do if l.id == "mentor" then table.remove(R.labels, i); break end end
	T.ok(Engine.CONDITION_VALUES.relation.friend, "il validatore conosce le etichette")
end)

T.run("disposizione complessiva", function()
	Fresh()
	local function D(axes)
		local a = { familiarity = 0, trust = 0, respect = 0, affection = 0, fear = 0, loyalty = 0 }
		for k, v in pairs(axes) do a[k] = v end
		return R:Disposition(a)
	end
	local v, id = D({})
	T.eq(id, "neutral", "tutto a zero: neutrale"); T.ok(Near(v, 0), "valore 0")
	T.eq(select(2, D({ affection = -100, trust = -100, respect = -100, loyalty = -100 })), "hated", "odiato")
	T.eq(select(2, D({ affection = -70, trust = -50, respect = -30, loyalty = -30 })), "enemy", "nemico")
	T.eq(select(2, D({ affection = -50, trust = -30, respect = -10, loyalty = 0 })), "unfriendly", "antipatico")
	T.eq(select(2, D({ trust = -30, affection = -10 })), "suspicious", "sospettoso")
	T.eq(select(2, D({ familiarity = 40, trust = 30, affection = 25, respect = 20, loyalty = 20 })), "acquaintance", "conoscente")
	T.eq(select(2, D({ trust = 60, affection = 60, respect = 40, loyalty = 40 })), "friend", "amico")
	T.eq(select(2, D({ trust = 80, affection = 80, respect = 70, loyalty = 70 })), "close", "grande amico")
	T.eq(select(2, D({ familiarity = 100, trust = 100, affection = 100, respect = 100, loyalty = 100 })), "bond", "legame profondo")
	v = D({ familiarity = 100, trust = 100, affection = 100, respect = 100, loyalty = 100 })
	T.ok(v <= 100 and v > 90, "il valore resta nell'intervallo")
	T.ok(R:DispositionName("bond") == "Legame profondo", "nome IT")
	NS.db.locale = "en"
	T.ok(R:DispositionName("bond") == "Deep bond" and R:LabelName("friend") == "friend", "nomi EN")
	NS.db.locale = "it"
	T.ok(select(1, D({ fear = 100 })) == 0, "il timore non è una valenza")
end)

T.run("l'etichetta scelta a mano ha la precedenza", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { familiarity = 40, trust = 40, affection = 40 })
	local rec = R:Get("player", key)
	T.eq(R:Resolve("player", rec).label, "friend", "derivata: amico")
	T.ok(R:SetLabel("player", key, "nemico"), "scelta a mano con il nome localizzato")
	local info = R:Resolve("player", rec)
	T.eq(info.label, "enemy", "la scelta prevale (id)"); T.ok(info.manual, "segnata come manuale"); T.eq(info.derived, "friend", "la derivata resta")
	T.ok(R:SetLabel("player", key, "Il mio vecchio compagno di taverna"), "testo libero")
	info = R:Resolve("player", rec)
	T.eq(info.label, "friend", "un testo libero non cambia l'etichetta delle regole")
	T.ok(#info.text <= R.LABEL_LEN and info.text:find("^Il mio vecchio"), "ma si mostra al suo posto, accorciato")
	R:SetLabel("player", key, nil)
	T.eq(R:Resolve("player", rec).manual, false, "tolta: di nuovo automatica")
	local seen, ids = {}, R:LabelIds()
	for _ = 1, #ids + 1 do seen[R:CycleLabel("player", key) or "auto"] = true end
	T.ok(seen.auto and seen[ids[1]] and seen[ids[#ids]], "il giro passa per tutte le etichette e torna all'automatica")
end)

---------------------------------------------------------------------------
-- NPC: calcolo automatico
---------------------------------------------------------------------------
T.run("l'identità è l'npcID del GUID", function()
	T.eq(R.NpcID("Creature-0-3134-0-6-1234-0000A2E9A1"), 1234, "creatura")
	T.eq(R.NpcID("Player-1-0000ABCD"), nil, "giocatore")
	T.eq(R.NpcID("Pet-0-3134-0-6-1234-0000A2E9A1"), nil, "famiglio")
	T.eq(R.NpcID("GameObject-0-3134-0-6-1234-0000A2E9A1"), nil, "oggetto")
	T.eq(R.NpcID(nil), nil, "senza GUID")
	T.eq(R.NpcID("Creature-0-3134-0-6-0-0000A2E9A1"), nil, "npcID zero")
	T.eq(R.NpcID(MakeSecret()), nil, "GUID segreto")
	T.eq(R.NpcID(42), nil, "non una stringa")
end)

T.run("nessun dato da valori segreti", function()
	Fresh()
	P.npc = { name = "Pip", guid = MakeSecret() }
	ADVANCE(16); FIRE("GOSSIP_SHOW")
	T.eq(Count(NS.cdb.relationships.npcs), 0, "GUID segreto: nulla")
	P.npc = { name = "Pip", guid = Guid(1234) }
	SECRET_UNITS.npc = true
	ADVANCE(16); FIRE("GOSSIP_SHOW")
	T.eq(Count(NS.cdb.relationships.npcs), 0, "identità segreta (C_Secrets): nulla")
	SECRET_UNITS.npc = nil
	P.npc = { name = MakeSecret(), guid = Guid(1234) }
	ADVANCE(16); FIRE("GOSSIP_SHOW")
	T.ok(Npc(1234) ~= nil and Npc(1234).name == nil, "nome segreto: la relazione c'è ma senza nome")
	-- il contesto non legge un bersaglio segreto
	R:SetAxis("npc", 1234, "trust", 50)
	P.target = { name = "Pip", guid = Guid(1234), ctype = "Humanoid" }
	FIRE("GOSSIP_CLOSED")
	SECRET_UNITS.target = true
	local ctx = NS:BuildContext()
	T.eq(ctx.relation, nil, "bersaglio con identità segreta: nessuna relazione")
	T.eq(ctx.isKnown, false, "e non è 'conosciuto'")
	SECRET_UNITS.target = nil
	ctx = NS:BuildContext()
	T.ok(ctx.relation ~= nil, "bersaglio leggibile: la relazione c'è")
	-- una persona del gruppo con identità segreta non entra nemmeno tra le proposte
	P.party = { { name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" } }
	P.group = true
	SECRET_UNITS.party1 = true
	R.groupDirty = true
	NS:BuildContext()
	T.eq(Count(R.candidates), 0, "gruppo con identità segreta: nessuna proposta")
	-- un asse segreto non esiste: le funzioni di lettura passano da SafeCall
	P.target = nil
end)

T.run("dialogo: familiarità con rendimenti decrescenti e tetto giornaliero", function()
	Fresh()
	Talk(1234, "Pip")
	local rec = Npc(1234)
	T.ok(rec ~= nil, "la relazione nasce dal dialogo")
	T.eq(rec.name, "Pip", "con il nome")
	T.ok(Near(rec.familiarity, 3), "primo dialogo: +3 di familiarità (" .. tostring(rec.familiarity) .. ")")
	T.eq(rec.count, 1, "una interazione")
	Talk(1234)
	local second = rec.familiarity - 3
	T.ok(second > 0 and second < 3 * 0.65, "il secondo vale meno del primo (" .. second .. ")")
	for _ = 1, 12 do Talk(1234) end
	T.ok(rec.familiarity <= 6.0001, "tetto giornaliero della fonte: 6 (" .. rec.familiarity .. ")")
	T.ok(rec.familiarity > 5.5, "e lo raggiunge quasi")
	T.eq(rec.trust, nil, "il dialogo non cambia la fiducia")
	LEAP(DAY + 10)
	local before = rec.familiarity
	Talk(1234)
	T.ok(rec.familiarity > before + 1, "il giorno dopo il tetto riparte (" .. before .. " -> " .. rec.familiarity .. ")")
	-- un doppione entro la finestra di deduplicazione non conta
	local c = rec.count
	FIRE("GOSSIP_SHOW")
	T.eq(rec.count, c, "lo stesso evento entro 4 secondi è un doppione")
	-- un dialogo richiuso e riaperto subito è di nuovo aperto
	FIRE("GOSSIP_CLOSED")
	ADVANCE(5)
	FIRE("GOSSIP_SHOW")
	T.eq(R.interaction and R.interaction.npcID, 1234, "riaprire il dialogo dopo pochi secondi lo riapre")
	-- un'identità illeggibile chiude il dialogo di prima: nessuna relazione sbagliata
	P.npc = { name = "Altro", guid = MakeSecret() }
	ADVANCE(5)
	FIRE("GOSSIP_SHOW")
	T.eq(R.interaction, nil, "NPC illeggibile: nessun dialogo aperto")
end)

T.run("quest: fiducia e rispetto", function()
	Fresh()
	Talk(500, "Capitano Rhea", "QUEST_DETAIL")
	T.eq(Npc(500), nil, "aprire una quest non basta")
	FIRE("QUEST_ACCEPTED", 12345)
	local rec = Npc(500)
	T.ok(rec ~= nil and Near(rec.familiarity, 4) and Near(rec.trust, 3) and Near(rec.respect, 1), "quest accettata: familiarità, fiducia e rispetto")
	FIRE("QUEST_FINISHED")
	Talk(500, "Capitano Rhea", "QUEST_COMPLETE")
	FIRE("QUEST_TURNED_IN", 12345)
	T.ok(rec.trust > 8 and rec.respect > 3.5 and rec.affection and rec.affection > 1.5, "quest consegnata: fiducia, rispetto e un po' d'affetto")
	-- una quest accettata senza un dialogo recente (condivisa, automatica) non va a nessuno
	R.questGiver = nil
	local n = Count(NS.cdb.relationships.npcs)
	FIRE("QUEST_ACCEPTED", 999)
	T.eq(Count(NS.cdb.relationships.npcs), n, "senza un NPC noto, nulla")
	-- l'accettazione usa l'ultimo NPC una volta sola
	Talk(501, "Altro", "QUEST_DETAIL")
	FIRE("QUEST_ACCEPTED", 1); ADVANCE(1); FIRE("QUEST_ACCEPTED", 2)
	T.eq(Npc(501).count, 1, "una quest sola, un solo incremento")
end)

T.run("mercante: acquisti, vendite e riparazioni (hook protetti)", function()
	Fresh()
	for _, id in ipairs({ "hook:BuyMerchantItem", "hook:RepairAllItems", "hook:C_Container.UseContainerItem" }) do
		T.eq(NS.Compat:State(id), "AVAILABLE", "capacità " .. id)
	end
	BuyMerchantItem()
	T.eq(Count(NS.cdb.relationships.npcs), 0, "un acquisto senza mercante aperto non conta")
	Talk(700, "Mercante Dolan", "MERCHANT_SHOW")
	local rec = Npc(700)
	T.ok(rec and Near(rec.familiarity, 2), "apre il mercante: +2 di familiarità")
	local f, t = rec.familiarity, rec.trust or 0
	BuyMerchantItem()
	T.ok(rec.familiarity > f and rec.trust > t, "acquisto: familiarità e fiducia")
	f, t = rec.familiarity, rec.trust
	C_Container.UseContainerItem(0, 1)
	T.ok(rec.familiarity > f and rec.trust > t, "vendita: familiarità e fiducia")
	t = rec.trust
	RepairAllItems()
	T.ok(rec.trust > t + 1, "riparazione: fiducia")
	local c = rec.count
	for _ = 1, 30 do BuyMerchantItem() end
	T.ok(rec.trust <= 1 + 3 + 2 + 0.5 + 3 + 0.001 + 5, "i tetti giornalieri tengono a freno gli acquisti ripetuti")
	FIRE("MERCHANT_CLOSED")
	local before = rec.count
	BuyMerchantItem()
	T.eq(rec.count, before, "a mercante chiuso non conta più")
	T.ok(rec.count > c, "gli acquisti precedenti erano stati contati")
end)

T.run("locandiere, maestro di volo, addestratore", function()
	Fresh()
	Talk(800, "Locandiere", "CONFIRM_BINDER")
	T.ok(Npc(800) and Npc(800).affection and Npc(800).affection > 0, "locandiere: familiarità, fiducia e un po' d'affetto")
	Talk(801, "Maestro di volo", "TAXIMAP_OPENED")
	T.ok(Npc(801) and Near(Npc(801).familiarity, 1), "maestro di volo")
	Talk(802, "Addestratore", "TRAINER_SHOW")
	T.ok(Npc(802) and Npc(802).respect and Npc(802).respect > 1, "addestratore: rispetto")
end)

T.run("impostazione: NPC automatici spenti, modulo spento", function()
	Fresh()
	NS.db.relations.npcAuto = false
	Talk(1234)
	T.eq(Count(NS.cdb.relationships.npcs), 0, "npcAuto spento: nulla")
	NS.db.relations.npcAuto = true
	NS.db.modules.relations = false
	Talk(1234)
	T.eq(Count(NS.cdb.relationships.npcs), 0, "modulo spento: nulla")
	local ctx = NS:BuildContext()
	T.eq(ctx.relation, nil, "modulo spento: nessun contesto")
	T.ok(not R:AddPlayer("Aldric", "user"), "modulo spento: nemmeno la lista")
	NS.db.modules.relations = true
end)

T.run("decadimento lento della familiarità", function()
	Fresh()
	Talk(1234)
	local rec = Npc(1234)
	rec.familiarity, rec.trust, rec.affection = 50, 40, 30
	rec.last = time()
	LEAP(10 * DAY)
	R:Decay(rec, time())
	T.eq(rec.familiarity, 50, "entro 14 giorni non cala")
	LEAP(20 * DAY)   -- 30 giorni dall'ultimo incontro: 16 oltre i 14 di tolleranza
	T.ok(R:Decay(rec, time()), "cala")
	T.ok(Near(rec.familiarity, 50 - 16 * 0.5, 0.6), "mezzo punto al giorno (" .. rec.familiarity .. ")")
	T.eq(rec.trust, 40, "gli altri assi non decadono"); T.eq(rec.affection, 30, "né l'affetto")
	R:Decay(rec, time())
	T.ok(Near(rec.familiarity, 42, 0.6), "ripetere lo stesso giorno non cala due volte")
	rec.familiarity = 4
	LEAP(400 * DAY)
	R:Decay(rec, time())
	T.eq(rec.familiarity, 3, "mai sotto il minimo")
	-- i giocatori non decadono: li decide l'utente
	local key = Person("Aldric-Stormrage", { familiarity = 50 })
	LEAP(400 * DAY)
	R:MaintainAll()
	T.eq(R:Get("player", key).familiarity, 50, "la familiarità di un giocatore non decade")
	-- all'avvio si applica a tutti gli NPC
	rec.familiarity, rec.last, rec.decayDay = 60, time() - 100 * DAY, nil
	R:MaintainAll()
	T.ok(rec.familiarity < 60, "MaintainAll applica il decadimento")
end)

T.run("incrementi: tabelle di dati", function()
	Fresh()
	local inc = R.config.increments
	for _, src in ipairs({ "gossip", "quest_accept", "quest_turnin", "merchant", "merchant_buy", "merchant_sell",
		"merchant_repair", "taxi", "trainer", "binder" }) do
		T.ok(inc[src] and inc[src].gain and inc[src].cap and inc[src].decay, "fonte " .. src)
		for axis in pairs(inc[src].gain) do T.ok(R.axisById[axis] ~= nil, src .. ": asse " .. axis) end
	end
	-- cambiare un numero nei dati cambia il risultato, senza toccare il codice
	local old = inc.gossip.gain.familiarity
	inc.gossip.gain.familiarity = 10
	inc.gossip.cap.familiarity = 100
	Talk(1234)
	T.ok(Near(Npc(1234).familiarity, 10), "incremento regolabile dai dati")
	inc.gossip.gain.familiarity, inc.gossip.cap.familiarity = old, 6
	-- più alto è l'asse, meno cresce
	Fresh()
	local rec = { familiarity = 90, first = 1, last = 1, count = 0 }
	local g = R:Increment(rec, "gossip", time())
	T.ok(g.familiarity < 2, "vicino al massimo si cresce meno (" .. g.familiarity .. ")")
	rec = { familiarity = 100, first = 1, last = 1, count = 0 }
	R:Increment(rec, "gossip", time())
	T.ok(rec.familiarity <= 100, "mai oltre il massimo")
end)

T.run("compattazione degli NPC: si perdono i meno importanti, mai quelli scelti", function()
	Fresh()
	local d = NS.cdb.relationships
	for i = 1, R.MAX_NPCS + 20 do d.npcs[i] = { first = 1, last = i, count = 1, familiarity = (i % 50) + 1 } end
	d.npcs[1] = { first = 1, last = 1, count = 1, familiarity = 1, note = "il mio mentore" }
	R:CompactNPCs()
	T.ok(Count(d.npcs) <= R.COMPACT_NPCS, "al massimo " .. R.COMPACT_NPCS)
	T.ok(d.npcs[1] ~= nil, "un NPC con una nota non si perde")
	T.ok(d.npcs[R.MAX_NPCS + 20] ~= nil, "restano i più recenti e familiari")
end)

---------------------------------------------------------------------------
-- Giocatori: gestiti dall'utente
---------------------------------------------------------------------------
T.run("nessun giocatore entra in lista senza un'azione dell'utente", function()
	Fresh()
	P.party = { { name = "Aldric", realm = "Stormrage", guid = "Player-1-0000AAAA" }, { name = "Brenna", guid = "Player-1-0000BBBB" } }
	P.group = true
	FIRE("GROUP_ROSTER_UPDATE")
	NS:BuildContext()
	T.ok(R.candidates["Aldric-Stormrage"] and R.candidates["Brenna-TestRealm"], "il gruppo diventa una proposta (il reame del personaggio se manca)")
	T.eq(R.candidates["Aldric-Stormrage"].source, "group", "con la fonte")
	T.eq(Count(NS.cdb.relationships.players), 0, "ma nessuno è in lista")
	-- scambio
	P.npc = { name = "Dara", realm = "Stormrage", player = true, guid = "Player-1-0000CCCC" }
	FIRE("TRADE_SHOW")
	T.ok(R.candidates["Dara-Stormrage"] and R.candidates["Dara-Stormrage"].source == "trade", "uno scambio: proposta")
	-- una risposta in privato: solo il nome
	FIRE("CHAT_MSG_WHISPER_INFORM", "ti racconto il piano segreto di stanotte", "Cora-Stormrage", "", "", "Cora", "", 0, 0, "", 0, 99)
	T.ok(R.candidates["Cora-Stormrage"] and R.candidates["Cora-Stormrage"].source == "whisper", "risposta in privato: proposta")
	-- Total RP 3: solo la presenza nel registro
	TRP3_API = { utils = { str = { getUnitID = function() return "Eve-Stormrage" end } },
		register = { isUnitIDKnown = function(id) return id == "Eve-Stormrage" end } }
	P.target = { name = "Eve", realm = "Stormrage", player = true, guid = "Player-1-0000DDDD" }
	ADVANCE(1); FIRE("PLAYER_TARGET_CHANGED")
	T.ok(R.candidates["Eve-Stormrage"] and R.candidates["Eve-Stormrage"].source == "trp3", "bersaglio con profilo TRP3: proposta")
	TRP3_API = nil
	T.eq(Count(NS.cdb.relationships.players), 0, "nessuno in lista, dopo tutte le fonti")
	-- il sistema non può aggiungere da solo: serve source = "user"
	local rec, why = R:AddPlayer("Aldric-Stormrage", "auto")
	T.ok(rec == nil and why == "refused", "AddPlayer con 'auto' è rifiutato se l'opzione è spenta")
	rec, why = R:AddPlayer("Aldric-Stormrage")
	T.ok(rec == nil and why == "refused", "senza fonte è rifiutato")
	rec, why = R:AddPlayer("Aldric-Stormrage", "sistema")
	T.ok(rec == nil and why == "refused", "una fonte inventata è rifiutata")
	T.eq(Count(NS.cdb.relationships.players), 0, "ancora nessuno")
	-- l'azione dell'utente
	rec = R:AddPlayer("Aldric-Stormrage", "user")
	T.ok(rec ~= nil and rec.source == "user", "con un'azione dell'utente entra")
	T.eq(R.candidates["Aldric-Stormrage"], nil, "e non è più una proposta")
	-- scartare
	T.ok(R:Dismiss("Brenna-TestRealm"), "scartata")
	P.party = { { name = "Brenna", guid = "Player-1-0000BBBB" } }
	R.groupDirty = true
	NS:BuildContext()
	T.eq(R.candidates["Brenna-TestRealm"], nil, "una proposta scartata non torna in questa sessione")
end)

T.run("registra automaticamente: opzione spenta di base", function()
	Fresh()
	T.eq(NS.db.relations.autoRegisterPlayers, false, "spenta di base")
	T.eq(NS.db.relations.proposePlayers, true, "le proposte sì")
	NS.db.relations.autoRegisterPlayers = true
	P.party = { { name = "Aldric", realm = "Stormrage" } }
	P.group = true
	R.groupDirty = true
	NS:BuildContext()
	local rec = R:Get("player", "Aldric-Stormrage")
	T.ok(rec ~= nil and rec.source == "auto", "con l'opzione accesa entra, segnato 'auto'")
	NS.db.relations.autoRegisterPlayers = false
	NS.db.relations.proposePlayers = false
	P.party = { { name = "Brenna", realm = "Stormrage" } }
	R.groupDirty = true
	NS:BuildContext()
	T.eq(Count(R.candidates), 0, "senza proposte non c'è nemmeno la proposta")
end)

T.run("nessun testo di chat o di whisper in memoria o sul disco", function()
	Fresh()
	local secret = "ti racconto il piano segreto di stanotte"
	FIRE("CHAT_MSG_WHISPER_INFORM", secret, "Cora-Stormrage", "", "", "Cora", "", 0, 0, "", 0, 99)
	Person("Cora-Stormrage", {})
	R:SetNote("player", "Cora-Stormrage", "conosciuta alla fiera")
	local env
	for _, e in ipairs(NS.EventBus.recent) do if e.type == "WHISPER_SENT" then env = e end end
	T.ok(env ~= nil, "l'evento normalizzato esiste")
	local keys = {}
	for k in pairs(env.context) do table.insert(keys, k) end
	T.ok(#keys == 1 and keys[1] == "name", "l'envelope contiene solo il nome")
	local saved = SERIALIZE(NS.cdb)
	T.ok(not saved:find(secret, 1, true) and not saved:find("segreto", 1, true), "il testo non è nei dati salvati")
	T.ok(not SERIALIZE(NS.EventBus.recent):find("segreto", 1, true), "né negli eventi recenti")
	-- le fonti del bus: solo quelle che servono, nessuna chat pubblica o whisper in entrata
	for event in pairs(NS.EventBus.sources) do
		-- S6c: le emote standard del client (CHAT_MSG_TEXT_EMOTE), solo per sapere chi ci ha rivolto un gesto
		T.ok(not event:find("^CHAT_MSG") or event == "CHAT_MSG_WHISPER_INFORM" or event == "CHAT_MSG_TEXT_EMOTE",
			"nessuna sorgente di chat oltre al destinatario: " .. event)
	end
	-- l'esportazione contiene solo ciò che l'utente ha scritto
	T.ok(R:ExportText():find("conosciuta alla fiera", 1, true) and not R:ExportText():find("segreto", 1, true), "esportazione senza testi di chat")
	-- nessun codice di rete: l'addon non usa SendAddonMessage per le relazioni
	T.eq(SendAddonMessage, nil, "nessun canale di rete nel client finto")
end)

T.run("modifiche dell'utente: assi, nota, tag, etichetta, eliminazione", function()
	Fresh()
	local key = Person("Aldric-Stormrage")
	T.ok(R:SetAxis("player", key, "trust", 55), "cursore fiducia")
	T.eq(R:Get("player", key).trust, 55, "salvato")
	T.ok(R:SetAxis("player", key, "trust", 500), "oltre il limite")
	T.eq(R:Get("player", key).trust, 100, "limitato a 100")
	T.ok(R:SetAxis("player", key, "familiarity", -50) and (R:Get("player", key).familiarity or 0) == 0, "la familiarità non va sotto zero")
	T.ok(not R:SetAxis("player", key, "inesistente", 5), "asse sconosciuto rifiutato")
	T.ok(not R:SetAxis("player", key, "trust", 0 / 0), "NaN rifiutato")
	R:SetAxis("player", key, "trust", 0)
	T.eq(R:Get("player", key).trust, nil, "il valore zero non si salva")
	R:AdjustAxis("player", key, "affection", -30)
	T.eq(R:Get("player", key).affection, -30, "pulsante meno")
	T.ok(R:SetNote("player", key, "Mi ha salvato\nla vita a  Tirisfal"), "nota")
	T.eq(R:Get("player", key).note, "Mi ha salvato la vita a Tirisfal", "controllo e spazi ripuliti")
	R:SetNote("player", key, string.rep("à", 400))
	T.ok(#R:Get("player", key).note <= R.NOTE_LEN and R:Get("player", key).note:sub(-2) == "à", "nota accorciata senza spezzare le lettere")
	R:SetTags("player", key, "gilda, amico di Karl, gilda,uno,due,tre,quattro,cinque")
	local tags = R:Get("player", key).tags
	T.ok(#tags == R.MAX_TAGS and tags[1] == "gilda" and tags[2] == "amico di Karl", "tag: separati, senza doppioni, al massimo sei")
	T.ok(R:Remove("player", key), "eliminazione")
	T.eq(R:Get("player", key), nil, "eliminata")
	T.ok(not R:Remove("player", key), "eliminare di nuovo: no")
	local long = R:AddPlayer(string.rep("x", 200), "user")
	T.ok(long ~= nil and (function() for k in pairs(R:Data().players) do if #k > R.NAME_LEN then return false end end return true end)(), "nome lungo accorciato")
	local rec2, why2 = R:AddPlayer("Garrosh-TestRealm", "user")
	T.ok(rec2 == nil and why2 == "self", "non ci si aggiunge da soli")
	for i = 1, R.MAX_PLAYERS + 5 do R.candidates = {}; R:AddPlayer("P" .. i .. "-Stormrage", "user") end
	T.ok(R:CountPlayers() <= R.MAX_PLAYERS, "limite della lista")
end)

T.run("elenco ordinabile e filtrabile", function()
	Fresh()
	Person("Zeno-Stormrage", { familiarity = 30, trust = 40, affection = 40 })
	Person("Aldo-Stormrage", { familiarity = 10 })
	Talk(1234, "Pip")
	LEAP(10); Talk(1235, "Bruna")
	local function Names(f)
		local out = {}
		for _, row in ipairs(R:Rows(f)) do table.insert(out, row.name) end
		return table.concat(out, ",")
	end
	T.eq(Names({ sort = "name" }), "Aldo-Stormrage,Bruna,Pip,Zeno-Stormrage", "per nome, dalla A alla Z")
	T.eq(Names({ sort = "name", desc = true }), "Zeno-Stormrage,Pip,Bruna,Aldo-Stormrage", "per nome, al contrario")
	T.eq(Names({ kind = "npc", sort = "name" }), "Bruna,Pip", "solo gli NPC")
	T.eq(Names({ kind = "player", sort = "name" }), "Aldo-Stormrage,Zeno-Stormrage", "solo i giocatori")
	T.eq(Names({ label = "friend" }), "Zeno-Stormrage", "per etichetta")
	T.eq(Names({ text = "ald" }), "Aldo-Stormrage", "per parte del nome, senza maiuscole")
	T.eq(Names({ text = "ZENO" }), "Zeno-Stormrage", "anche con le maiuscole")
	T.ok(Names({ sort = "last" }):find("^Bruna"), "per ultima interazione: dalla più recente")
	T.ok(Names({ sort = "familiarity" }):find("^Zeno"), "per familiarità: dalla più alta")
	T.ok(Names({ sort = "disposition" }):find("^Zeno"), "per disposizione: dalla più alta")
	T.eq(#R:Rows(), 4, "senza filtri: tutte")
end)

---------------------------------------------------------------------------
-- Integrazione con il narratore: contesto, condizioni, segnaposto, fattore R, registro
---------------------------------------------------------------------------
T.run("contesto: relation, disposition e assi del bersaglio", function()
	Fresh()
	local ctx = NS:BuildContext()
	T.eq(ctx.isKnown, false, "senza nessuno: sconosciuto"); T.eq(ctx.relation, nil, "nessuna relazione")
	Person("Aldric-Stormrage", { familiarity = 40, trust = 60, affection = 50 })
	P.target = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	ctx = NS:BuildContext()
	T.eq(ctx.relation, "friend", "etichetta del bersaglio"); T.eq(ctx.relationKind, "player", "giocatore")
	T.eq(ctx.relationLabel, "amico", "etichetta localizzata")
	T.eq(ctx.disposition, "friend", "disposizione"); T.ok(ctx.dispositionValue > 30 and ctx.dispositionValue <= 55, "valore")
	T.eq(ctx.rel.trust, 60, "assi: fiducia"); T.eq(ctx.rel.attraction, nil, "attrazione spenta: non c'è")
	T.eq(ctx.isKnown, true, "conosciuto")
	NS.db.locale = "en"
	T.eq(NS:BuildContext().relationLabel, "friend", "etichetta in inglese")
	NS.db.locale = "it"
	-- un NPC: il bersaglio, poi il dialogo aperto
	Talk(1234, "Pip")
	R:SetAxis("npc", 1234, "trust", 80); R:SetAxis("npc", 1234, "affection", 70); R:SetAxis("npc", 1234, "familiarity", 50)
	P.target = { name = "Pip", guid = Guid(1234), ctype = "Humanoid" }
	FIRE("GOSSIP_CLOSED")
	ctx = NS:BuildContext()
	T.eq(ctx.relationKind, "npc", "NPC dal bersaglio"); T.ok(ctx.relation ~= nil, "con la sua relazione")
	P.target = nil
	T.eq(NS:BuildContext().relation, nil, "senza bersaglio né dialogo: nessuna")
	ADVANCE(16); FIRE("GOSSIP_SHOW")
	ctx = NS:BuildContext()
	T.eq(ctx.relationKind, "npc", "NPC dal dialogo aperto")
	FIRE("GOSSIP_CLOSED")
	T.eq(NS:BuildContext().relation, nil, "dialogo chiuso: nessuna")
	-- un soggetto dato (per S8 e per le prove)
	ctx = NS:BuildContext({ relationSubject = { kind = "npc", id = 1234 } })
	T.eq(ctx.relationKind, "npc", "soggetto dato")
	T.eq(NS:BuildContext({ relationSubject = { kind = "npc", id = 99999 } }).relation, nil, "soggetto sconosciuto: nulla")
	-- un bersaglio che non conosciamo
	P.target = { name = "Sconosciuto", guid = Guid(777), ctype = "Humanoid" }
	ctx = NS:BuildContext()
	T.ok(ctx.relation == nil and ctx.isKnown == false, "NPC non in lista: nessuna relazione")
	-- un NPC con un GUID che non è una creatura
	P.target = { name = "Pip", guid = "Vehicle-0-3134-0-6-1234-0000A2E9A1", ctype = "Humanoid" }
	T.eq(NS:BuildContext().relation, nil, "non è una creatura")
	-- con l'attrazione accesa compare l'asse
	P.target = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	R:SetSetting("attraction", true)
	T.eq(NS:BuildContext().rel.attraction, 0, "asse attrazione presente quando è acceso")
	R:SetSetting("attraction", false)
end)

T.run("condizioni delle regole", function()
	Fresh()
	Person("Aldric-Stormrage", { familiarity = 40, trust = 60, affection = 50, respect = 20, fear = 10, loyalty = 30 })
	P.target = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	local ctx = NS:BuildContext()
	local function M(when) return Engine.Match(when, ctx) end
	T.ok(M({ relation = "friend" }), "relation")
	T.ok(M({ relation = { "rival", "friend" } }), "relation: elenco")
	T.ok(not M({ relation = "rival" }), "relation: altra")
	T.ok(M({ disposition = { "friend", "close" } }), "disposition")
	T.ok(M({ trustMin = 50 }) and not M({ trustMin = 61 }), "trustMin")
	T.ok(M({ trustMax = 60 }) and not M({ trustMax = 59 }), "trustMax")
	T.ok(M({ affectionMin = 50, affectionMax = 50 }), "affectionMin/Max")
	T.ok(M({ familiarityMin = 40 }) and not M({ familiarityMin = 41 }), "familiarityMin")
	T.ok(M({ respectMin = 20 }) and M({ fearMax = 10 }) and M({ loyaltyMin = 30 }), "rispetto, timore, lealtà")
	T.ok(not M({ attractionMin = 0 }), "attrazione spenta: nessun valore, la condizione è falsa")
	T.ok(M({ isKnown = true }) and not M({ isKnown = false }), "isKnown")
	T.ok(M({ relationKind = "player" }) and not M({ relationKind = "npc" }), "relationKind")
	T.ok(M({ ["not"] = { relation = "enemy" } }), "operatore not")
	T.ok(M({ any = { { relation = "enemy" }, { trustMin = 10 } } }), "operatore any")
	P.target = nil
	ctx = NS:BuildContext()
	T.ok(not M({ relation = "friend" }) and not M({ trustMin = -100 }) and not M({ familiarityMin = 0 }), "senza persona ogni condizione di relazione è falsa")
	T.ok(M({ isKnown = false }), "isKnown = false vale per chi non si conosce")
	-- gruppo
	R:AddPlayer("Brenna-Stormrage", "user"); R:SetAxis("player", "Brenna-Stormrage", "trust", 60); R:SetAxis("player", "Brenna-Stormrage", "affection", 50)
	R:SetAxis("player", "Brenna-Stormrage", "familiarity", 50)
	P.party = { { name = "Brenna", realm = "Stormrage" } }; P.group = true
	FIRE("GROUP_ROSTER_UPDATE")
	ctx = NS:BuildContext()
	T.ok(M({ withRelation = "friend" }) and not M({ withRelation = "rival" }), "withRelation: un compagno di gruppo")
	P.party, P.group = nil, false
	FIRE("GROUP_ROSTER_UPDATE")
	ctx = NS:BuildContext()
	T.ok(not M({ withRelation = "friend" }), "senza il gruppo, nessun compagno")
	-- il validatore le conosce, e segnala quelle sbagliate
	T.eq(#Engine.CheckConditions({ relation = "friend", trustMin = 5, familiarityMin = 10, isKnown = true, withRelation = "comrade" }), 0, "valide")
	T.ok(#Engine.CheckConditions({ relation = "amicone" }) > 0, "etichetta sconosciuta")
	T.ok(#Engine.CheckConditions({ trustMin = "alto" }) > 0, "tipo sbagliato")
	T.ok(#Engine.CheckConditions({ isKnown = "sì" }) > 0, "isKnown non booleano")
	T.ok(#Engine.CheckConditions({ disposition = "sconosciuta" }) > 0, "disposizione sconosciuta")
	T.ok(Engine.UsesRelation({ relation = "friend" }) and not Engine.UsesRelation({ isKnown = false }) and not Engine.UsesRelation({ mood = "forest" }), "UsesRelation")
end)

T.run("segnaposto {relation}", function()
	Fresh()
	Person("Aldric-Stormrage", { familiarity = 40, trust = 60, affection = 50 })
	P.target = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	local ctx = NS:BuildContext()
	T.eq(Engine:Render("Un {relation} vero.", "it", ctx), "Un amico vero.", "etichetta nel testo")
	R:SetLabel("player", "Aldric-Stormrage", "fratello di spada")
	T.eq(Engine:Render("Un {relation} vero.", "it", NS:BuildContext()), "Un fratello di spada vero.", "anche il testo scelto dall'utente")
	P.target = nil
	T.eq(Engine:Render("Un {relation} vero.", "it", NS:BuildContext()), nil, "senza persona la frase non si compone")
	T.ok(Engine.PLACEHOLDERS.relation == "relationLabel", "il validatore lo conosce")
end)

T.run("fattore R del peso", function()
	Fresh()
	local friend = { tags = { ["rel.req:relation:friend"] = true } }
	local soft = { tags = { ["rel.trust:high"] = true } }
	local plain = { tags = { mystic = true } }
	local ctx = NS:BuildContext()
	T.eq(R.Factor(plain, ctx), 1, "senza persona, una frase senza tag di relazione è neutra")
	T.eq(R.Factor(friend, ctx), 0, "una frase che afferma un'amicizia che non c'è: esclusa")
	T.eq(R.Factor(soft, ctx), 1, "un tag morbido senza persona: neutro")
	Person("Aldric-Stormrage", { familiarity = 40, trust = 60, affection = 50 })
	P.target = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	ctx = NS:BuildContext()
	T.eq(R.Factor(friend, ctx), 1, "con un amico, la frase che lo afferma passa")
	T.eq(R.Factor(soft, ctx), Traits.MATCH, "fiducia alta: la frase sale di peso")
	R:SetAxis("player", "Aldric-Stormrage", "trust", -80)
	ctx = NS:BuildContext()
	T.eq(R.Factor(soft, ctx), Traits.MISMATCH, "fiducia bassa: pesa meno, non è esclusa")
	T.eq(R.Factor({ tags = { ["rel.not:relation:enemy"] = true } }, ctx), 1, "not: non è nemico")
	R:SetAxis("player", "Aldric-Stormrage", "affection", -90)
	ctx = NS:BuildContext()
	T.eq(R.Factor({ tags = { ["rel.not:relation:enemy"] = true } }, ctx), 0, "not: è un nemico, esclusa")
	-- un tag di relazione non tocca il fattore P (ambito diverso) e un tag di personalità non tocca R
	T.eq(Traits.Evaluate({ ["rel.relation:friend"] = true }, { relation = "enemy" }), 1, "senza ambito rel il tag è ignorato")
	T.eq(R.Factor({ tags = { ["temperament:stoic"] = true, ["req:faith:devout"] = true } }, ctx), 1, "tag del Soul: neutri per R")
	-- è agganciato davvero nel peso W di una frase
	local p = Engine.byId["rel.greet.friend"]
	R:SetAxis("player", "Aldric-Stormrage", "trust", 60); R:SetAxis("player", "Aldric-Stormrage", "affection", 50)
	ctx = NS:BuildContext()
	local w = Engine:Weight(p, "greet", ctx)
	T.eq(w.R, Traits.MATCH, "R nel peso di una frase di amicizia"); T.ok(Near(w.W, w.B * w.C * w.P * w.N * w.S * w.R, 1e-9), "W = B x C x P x N x S x R")
	P.target = nil
	ctx = NS:BuildContext()
	T.eq(Engine:Weight(Engine.byId["greet.01"], "greet", ctx).R, 1, "una frase di base resta neutra")
end)

T.run("il registro cambia con la familiarità: dal formale all'intimo", function()
	Fresh()
	local key = Person("Aldric-Stormrage", {})
	P.target = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	local function Prefers(style, familiarity)
		R:SetAxis("player", key, "familiarity", familiarity)
		local profile = Engine.StyleResolver:Resolve("greet", NS:BuildContext())
		return (profile.preferred[style] or 0) > 0
	end
	T.ok(Prefers("ceremonial", 5), "sconosciuto: formale")
	T.ok(not Prefers("intimate", 5), "sconosciuto: non intimo")
	T.ok(Prefers("everyday", 25), "poco noto: quotidiano")
	T.ok(Prefers("ironic", 55), "conosciuto bene: anche ironico")
	T.ok(Prefers("intimate", 85), "intimo con chi si conosce a fondo")
	T.ok(not Prefers("ceremonial", 85), "e non più formale")
	P.target = nil
	local profile = Engine.StyleResolver:Resolve("greet", NS:BuildContext())
	T.ok((profile.preferred.ceremonial or 0) == 0, "senza persona il registro non cambia")
end)

T.run("le frasi del narratore seguono il rapporto", function()
	Fresh()
	math.randomseed(11)
	local function Seen(event, extra, n)
		local ids = {}
		for _ = 1, n or 120 do
			NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
			local rec = Engine:PickEntry(event, NS:BuildContext(extra), "say") or Engine:PickEntry(event, NS:BuildContext(extra), "emote")
			if rec then ids[rec.id] = true end
		end
		return ids
	end
	-- uno sconosciuto: formale
	P.target = { name = "Straniero", guid = "Player-1-0000EEEE", player = true, realm = "Stormrage" }
	local ids = Seen("greet")
	T.ok(ids["rel.greet.unknown"], "uno sconosciuto riceve un saluto formale")
	for id in pairs(ids) do T.ok(not id:find("^rel%.greet%.friend") and not id:find("^rel%.greet%.rival"), "mai un saluto da amico a uno sconosciuto: " .. id) end
	-- un amico
	Person("Aldric-Stormrage", { familiarity = 80, trust = 60, affection = 50 })
	P.target = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	ids = Seen("greet")
	T.ok(ids["rel.greet.friend"] and ids["rel.greet.friend.old"], "un amico: saluti calorosi (anche quello di chi si conosce da tempo)")
	T.ok(not ids["rel.greet.unknown"] and not ids["rel.greet.rival"] and not ids["rel.greet.enemy"], "e nessun saluto formale o ostile")
	ids = Seen("farewell"); T.ok(ids["rel.bye.friend"] and not ids["rel.bye.unknown"], "congedo di un amico")
	ids = Seen("thanks"); T.ok(ids["rel.thanks.friend"] and not ids["rel.thanks.unknown"], "ringraziamento a un amico")
	ids = Seen("heal"); T.ok(ids["rel.heal.friend"] and not ids["rel.heal.enemy"], "una cura a un amico")
	-- un rivale rispettato e un nemico
	R:SetAxis("player", "Aldric-Stormrage", "trust", -20); R:SetAxis("player", "Aldric-Stormrage", "affection", 0)
	R:SetAxis("player", "Aldric-Stormrage", "respect", 70)
	T.eq(NS:BuildContext().relation, "rival", "ora è un rivale rispettato")
	ids = Seen("greet"); T.ok(ids["rel.greet.rival"] and not ids["rel.greet.friend"], "saluto al rivale")
	R:SetAxis("player", "Aldric-Stormrage", "affection", -90)
	ids = Seen("greet"); T.ok(ids["rel.greet.enemy"] and not ids["rel.greet.rival"], "saluto al nemico")
	-- accanto a un compagno di gruppo
	P.target = nil
	R:SetAxis("player", "Aldric-Stormrage", "affection", 50); R:SetAxis("player", "Aldric-Stormrage", "trust", 60)
	P.party = { { name = "Aldric", realm = "Stormrage" } }; P.group = true
	FIRE("GROUP_ROSTER_UPDATE")
	ids = Seen("battle"); T.ok(ids["rel.battle.friend"] or ids["rel.battle.known"], "in battaglia accanto a un amico")
	ids = Seen("victory"); T.ok(ids["rel.victory.friend"], "vittoria accanto a un amico")
	P.party, P.group = nil, false
	FIRE("GROUP_ROSTER_UPDATE")
	ids = Seen("battle")
	for id in pairs(ids) do T.ok(not id:find("^rel%."), "da soli nessuna frase di compagni: " .. id) end
end)

T.run("NPC conosciuti: un richiamo solo con una relazione vera", function()
	Fresh()
	NS.db.intensity = 50
	NS.db.chance.relation_npc = 100
	T.eq(Engine:PickEntry("relation_npc", NS:BuildContext(), "say"), nil, "senza nessuno: silenzio")
	Talk(1234, "Pip")
	T.eq(Engine:PickEntry("relation_npc", NS:BuildContext(), "say"), nil, "un NPC appena incontrato non è ancora 'conosciuto'")
	R:SetAxis("npc", 1234, "familiarity", 45); R:SetAxis("npc", 1234, "trust", 50); R:SetAxis("npc", 1234, "affection", 50)
	local rec = Engine:PickEntry("relation_npc", NS:BuildContext(), "say") or Engine:PickEntry("relation_npc", NS:BuildContext(), "emote")
	T.ok(rec ~= nil and rec.id:find("^rel%.npc%."), "con l'NPC aperto parla (" .. tostring(rec and rec.id) .. ")")
	-- il richiamo parte da solo all'apertura del dialogo, una volta
	FIRE("GOSSIP_CLOSED")
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	Talk(1234, "Pip")
	ADVANCE(1)
	local spoken
	for _, e in ipairs(Director.log) do if e.result == "spoken" then spoken = e.event end end
	T.eq(spoken, "relation_npc", "aprendo il dialogo con un NPC conosciuto il narratore parla")
	T.eq(#Narrator.history, 1, "una sola frase")
	local n = #Director.queue
	FIRE("GOSSIP_CLOSED")
	ADVANCE(16); FIRE("GOSSIP_SHOW")
	ADVANCE(1)
	T.eq(#Narrator.history, 1, "non ripete subito per lo stesso NPC")
	-- il modulo spento tace
	NS.db.modules.relations = false
	R.session.offered = {}
	FIRE("GOSSIP_CLOSED"); Talk(1234, "Pip"); ADVANCE(1)
	T.eq(#Narrator.history, 1, "modulo spento: silenzio")
	NS.db.modules.relations = true
	T.eq(NS.NarrativeDirector:Priority("relation_npc"), NS.NarrativeDirector.PRIORITY.memory, "priorità del richiamo di memoria")
	-- il validatore esige la condizione di relazione per questo evento
	NS:RegisterPack({ id = "t_rel", languages = { "itIT" }, registry = {
		["t.rel.bad"] = { event = "relation_npc", speaker = "inner", styles = { "everyday" } },
		["t.rel.ok"] = { event = "relation_npc", speaker = "inner", styles = { "everyday" }, conditions = { isKnown = true } } },
		texts = { itIT = { ["t.rel.bad"] = { "Ci conosciamo." }, ["t.rel.ok"] = { "Ci conosciamo davvero." } } } })
	local r = NS.Validator:Run({ packs = { "t_rel" } })
	local flagged = {}
	for _, p in ipairs(r.errors) do if p.code == "relationWithoutRelation" then flagged[p.id] = true end end
	T.ok(flagged["t.rel.bad"] and not flagged["t.rel.ok"], "il validatore chiede la condizione di relazione")
end)

T.run("legami importanti nel diario (nessun nome, nessun testo)", function()
	Fresh()
	local key = Person("Aldric-Stormrage", {})
	R:SetAxis("player", key, "familiarity", 40); R:SetAxis("player", key, "trust", 40)
	T.eq(#LM:List(), 0, "ancora conoscente: nessun ricordo")
	R:SetAxis("player", key, "affection", 40)
	local list = LM:List()
	T.eq(#list, 1, "diventa amico: un ricordo")
	T.eq(list[1].kind, "relation", "di tipo relation")
	T.ok(list[1].tags[1] == "player" and list[1].tags[2] == "friend", "con i soli token del tipo e dell'etichetta")
	T.ok(not SERIALIZE(list[1]):find("Aldric", 1, true), "senza il nome")
	R:SetAxis("player", key, "affection", 10); R:SetAxis("player", key, "affection", 45)
	T.eq(#LM:List(), 1, "tornare amico non ripete il ricordo")
	T.eq(NS:L("mem_kind_relation"), "Un legame cambia", "etichetta del diario")
	-- un NPC che diventa compagno d'armi
	Talk(1234, "Pip")
	R:SetAxis("npc", 1234, "familiarity", 60); R:SetAxis("npc", 1234, "trust", 80); R:SetAxis("npc", 1234, "loyalty", 80)
	T.eq(#LM:List(), 2, "un NPC compagno d'armi: un altro ricordo")
	LM:Reset("all")
	T.ok(R:Get("player", key) ~= nil, "azzerare il diario non cancella le relazioni")
end)

---------------------------------------------------------------------------
-- Frasi di base
---------------------------------------------------------------------------
T.run("almeno 40 frasi bilingui legate alle relazioni", function()
	local n, events, speakers = 0, {}, {}
	for id, p in pairs(Engine.byId) do
		if p.pack == "base_relations" then
			n = n + 1
			events[p.events[1]] = (events[p.events[1]] or 0) + 1
			speakers[p.speaker] = true
			T.ok(#(p.text.it or {}) >= 1 and #(p.text.en or {}) >= 1, id .. ": IT ed EN")
			T.ok(p.when and next(p.when) ~= nil, id .. ": dichiara una condizione di relazione")
			for _, lang in ipairs({ "it", "en" }) do
				for _, v in ipairs(p.text[lang]) do
					T.ok(v.ok, id .. " " .. lang .. ": variante valida")
					local text = Engine:Render(v.t, lang, { target = "Pip", relationLabel = "amico", relation = "friend" }, nil)
					T.ok(text ~= nil and not text:find("[{}]"), id .. " " .. lang .. ": si compone")
					T.ok(#v.t < 200, id .. " " .. lang .. ": breve")
				end
			end
		end
	end
	T.ok(n >= 40, "frasi di base per le relazioni: " .. n)
	for _, ev in ipairs({ "greet", "farewell", "thanks", "heal", "battle", "victory", "relation_npc" }) do
		T.ok((events[ev] or 0) >= 4, "abbastanza frasi per " .. ev .. ": " .. (events[ev] or 0))
	end
	T.ok(speakers.character and speakers.inner and speakers.narrator, "tutte le voci")
	local r = NS.Validator:Run({ packs = { "base_relations" } })
	T.eq(#r.errors, 0, "il validatore non trova errori"); T.eq(#r.warnings, 0, "né avvisi")
	-- nessuna frase si ripete identica in italiano
	local seen = {}
	for id, p in pairs(Engine.byId) do
		if p.pack == "base_relations" then
			for _, v in ipairs(p.text.it) do T.ok(not seen[v.t], "testo IT duplicato: " .. v.t); seen[v.t] = true end
		end
	end
end)

---------------------------------------------------------------------------
-- Schema 5, dati rovinati, versioni più nuove
---------------------------------------------------------------------------
T.run("migrazione dello schema 5", function()
	local m = Config.migrations.character[5]
	local db = {}
	m(db); T.eq(db.relationships, nil, "assente: lo crea Merge")
	db = { relationships = "rotto" }; m(db); T.eq(db.relationships, nil, "una stringa riparte da zero")
	db = { relationships = { npcs = "x", players = 5, version = "uno" } }; m(db)
	T.ok(db.relationships.npcs == nil and db.relationships.players == nil and db.relationships.version == 1, "campi rovinati ripuliti")
	-- caricamento completo da uno schema 4
	AzerothUnspokenDB = { schemaVersion = 4, settings = { intensity = 33 } }
	AzerothUnspokenCharacterDB = { schemaVersion = 4, memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} },
		personality = { version = 1, archetype = "veteran", traits = {}, trp3 = false } }
	Config:Load()
	T.eq(AzerothUnspokenCharacterDB.schemaVersion, 6, "personaggio a 5")
	T.eq(AzerothUnspokenDB.schemaVersion, 6, "account a 5")
	local d = AzerothUnspokenCharacterDB.relationships
	T.ok(d and d.version == 1 and next(d.npcs) == nil and next(d.players) == nil, "relazioni vuote create")
	T.eq(NS.db.relations.autoRegisterPlayers, false, "registrazione automatica spenta nelle impostazioni nuove")
	T.eq(NS.db.relations.attraction, false, "attrazione spenta"); T.eq(NS.db.modules.relations, true, "modulo acceso")
	T.eq(NS.db.intensity, 33, "impostazioni precedenti conservate")
	T.eq(AzerothUnspokenCharacterDB.personality.archetype, "veteran", "personalità conservata")
	NS.cdb = NS.cdb   -- (Config:Load ha sostituito NS.db e NS.cdb)
	R:OnInit()
	Fresh()
end)

T.run("dati rovinati: si scartano le voci, non si ferma l'avvio", function()
	Fresh()
	local d = NS.cdb.relationships
	d.npcs = { [-5] = { familiarity = 10 }, ["x"] = {}, [1.5] = {}, [100] = { familiarity = -5, trust = 999, respect = "alto", note = string.rep("x", 900),
		name = 42, tags = { "a", 5, string.rep("t", 99) }, today = { day = "ieri" }, noted = { friend = true, ["Brutto!"] = true } }, [200] = "no" }
	d.players = { ["Aldric-Stormrage"] = { affection = 200, label = string.rep("l", 90) }, [5] = {}, ["x\1y"] = { trust = 1 }, ["Bad"] = 7 }
	local dropped = R:Sanitize()
	T.ok(dropped >= 5, "voci scartate: " .. dropped)
	T.eq(Count(d.npcs), 1, "un solo NPC valido (" .. Count(d.npcs) .. ")")
	local rec = d.npcs[100]
	T.ok(rec.familiarity == nil and rec.trust == 100 and rec.respect == nil, "assi riportati nei limiti o scartati")
	T.ok(#rec.note <= R.NOTE_LEN and rec.name == nil and rec.today == nil, "nota accorciata, nome e contatori non validi scartati")
	T.ok(rec.tags and #rec.tags == 2 and #rec.tags[2] <= R.TAG_LEN, "tag ripuliti")
	T.ok(rec.noted and rec.noted.friend and not rec.noted["Brutto!"], "ricordi già fatti: solo token validi")
	T.ok(d.players["Aldric-Stormrage"].affection == 100 and #d.players["Aldric-Stormrage"].label <= R.LABEL_LEN, "giocatore valido, limitato")
	-- il contesto regge anche a dati strani
	P.target = { name = "Aldric", realm = "Stormrage", player = true, guid = "Player-1-0000AAAA" }
	T.ok(pcall(NS.BuildContext, NS), "il contesto non si rompe")
	NS.cdb.relationships = "rotto"
	T.ok(R:Data() and R:Data().npcs, "una tabella rovinata si ricrea")
end)

T.run("dati di una versione più nuova: si leggono, non si cambiano", function()
	Fresh()
	local key = Person("Aldric-Stormrage", { familiarity = 40, trust = 50, affection = 50 })
	R.readOnly = true
	T.ok(not R:Enabled(), "sola lettura")
	local rec, why = R:AddPlayer("Brenna-Stormrage", "user")
	T.ok(rec == nil and why == "off", "non si aggiunge")
	T.ok(not R:SetAxis("player", key, "trust", 0) and not R:Remove("player", key) and not R:SetNote("player", key, "x"), "non si modifica")
	Talk(1234)
	T.eq(Npc(1234), nil, "gli NPC non si registrano")
	local ctx = NS:BuildContext()
	T.ok(ctx.relation == nil and ctx.isKnown == nil, "il contesto non si arricchisce")
	T.ok(Cmd("relazioni lista"):find("più nuova", 1, true), "il comando lo dice")
	R.readOnly = false
	-- da Config: schema futuro
	AzerothUnspokenCharacterDB = { schemaVersion = 99, relationships = { version = 7, npcs = { [5] = { trust = 10 } }, players = {} } }
	Config:Load()
	T.ok(Config.readOnly.character, "Config lo riconosce")
	R:OnInit()
	T.ok(R.readOnly, "il modulo va in sola lettura")
	T.eq(AzerothUnspokenCharacterDB.relationships.npcs[5].trust, 10, "i dati salvati non sono stati toccati")
	AzerothUnspokenCharacterDB = nil
	Config:Load()
	R:OnInit()
	Fresh()
	NS.Diagnostics.errors = {}
end)

---------------------------------------------------------------------------
-- Finestra e comandi
---------------------------------------------------------------------------
T.run("finestra Relazioni: elenco, dettaglio, cursori, note", function()
	Fresh()
	local zeno = Person("Zeno-Stormrage", { familiarity = 30, trust = 40, affection = 40 })
	Person("Aldo-Stormrage", { familiarity = 10 })
	Talk(1234, "Pip")
	T.ok(RelationsFrame:Open(), "si apre")
	T.ok(RelationsFrame:IsOpen() and RelationsFrame:CurrentView() == "list", "vista elenco")
	local names = Texts(function(t) return t == "Aldo-Stormrage" or t == "Zeno-Stormrage" or t == "Pip" end)
	T.eq(#names, 3, "tre righe nell'elenco")
	T.ok(#Texts(function(t) return t:find("amico", 1, true) end) >= 1, "l'etichetta è nella tabella")
	-- ordinamento dall'intestazione
	local header = ButtonWithText("Nome")
	T.ok(header ~= nil, "intestazione Nome")
	header:Click()
	names = Texts(function(t) return t == "Aldo-Stormrage" or t == "Zeno-Stormrage" or t == "Pip" end)
	T.eq(table.concat(names, ","), "Aldo-Stormrage,Pip,Zeno-Stormrage", "ordinata per nome")
	ButtonWithText("Nome"):Click()
	names = Texts(function(t) return t == "Aldo-Stormrage" or t == "Zeno-Stormrage" or t == "Pip" end)
	T.eq(table.concat(names, ","), "Zeno-Stormrage,Pip,Aldo-Stormrage", "un secondo clic inverte")
	-- filtro per tipo
	ButtonWithText("Tutti"):Click()
	names = Texts(function(t) return t == "Aldo-Stormrage" or t == "Zeno-Stormrage" or t == "Pip" end)
	T.eq(table.concat(names, ","), "Pip", "solo NPC")
	ButtonWithText("NPC", true):Click()
	T.eq(table.concat(Texts(function(t) return t == "Aldo-Stormrage" or t == "Zeno-Stormrage" or t == "Pip" end), ","),
		"Zeno-Stormrage,Aldo-Stormrage", "solo giocatori")
	ButtonWithText("Giocatori", true):Click()   -- torna a tutti
	-- ricerca nel nome
	local boxes = Boxes()
	boxes[1]:SetText("zen"); boxes[1].scripts.OnTextChanged(boxes[1], true)
	names = Texts(function(t) return t == "Aldo-Stormrage" or t == "Zeno-Stormrage" or t == "Pip" end)
	T.eq(table.concat(names, ","), "Zeno-Stormrage", "ricerca per nome")
	boxes[1]:SetText(""); boxes[1].scripts.OnTextChanged(boxes[1], true)
	-- dettaglio
	T.ok(RelationsFrame:SelectSubject("player", zeno), "dettaglio")
	T.eq(RelationsFrame:CurrentView(), "detail", "vista dettaglio")
	local sliders = Under(ROOT, function(w) return rawget(w, "thumb") ~= nil and w:IsShown() end)
	T.eq(#sliders, 6, "sei cursori con l'attrazione spenta")
	sliders[2]:Set(75, false)
	T.eq(R:Get("player", zeno).trust, 40, "durante il trascinamento non si salva")
	sliders[2]:Set(75, true)
	T.eq(R:Get("player", zeno).trust, 75, "al rilascio sì: fiducia")
	sliders[5]:Set(-60, true)
	T.eq(R:Get("player", zeno).fear, nil, "il timore non va sotto lo zero")
	sliders[4]:Set(-100, true)
	T.eq(R:Get("player", zeno).affection, -100, "affetto fino a -100")
	T.ok(#Texts(function(t) return t:find("nemico", 1, true) end) >= 1, "l'etichetta si aggiorna")
	sliders[4]:Set(40, true)
	-- pulsanti - e +
	local minus = {}
	for _, b in ipairs(Buttons()) do if b:GetText() == "-" then table.insert(minus, b) end end
	minus[2]:Click()
	T.eq(R:Get("player", zeno).trust, 65, "pulsante meno: fiducia -10")
	-- nota, tag, etichetta personalizzata
	boxes = Boxes()
	boxes[4]:TypeEnter("Mi deve un favore")
	T.eq(R:Get("player", zeno).note, "Mi deve un favore", "nota")
	boxes[5]:TypeEnter("gilda, fiera")
	T.eq(table.concat(R:Get("player", zeno).tags, "|"), "gilda|fiera", "tag")
	boxes[3]:TypeEnter("fratello di spada")
	T.eq(R:Get("player", zeno).label, "fratello di spada", "etichetta personalizzata")
	T.eq(R:Resolve("player", R:Get("player", zeno)).text, "fratello di spada", "mostrata")
	local auto = ButtonWithText("Scelta:")
	T.ok(auto ~= nil, "il pulsante dell'etichetta mostra la scelta")
	auto:Click()
	T.eq(R:Get("player", zeno).label, R:LabelIds()[1], "il pulsante passa alla prima etichetta")
	for _ = 1, #R:LabelIds() do ButtonWithText("Scelta:"):Click() end
	T.eq(R:Get("player", zeno).label, nil, "e torna all'automatica")
	-- eliminazione con conferma
	ButtonWithText("Elimina questa relazione"):Click()
	T.ok(R:Get("player", zeno) ~= nil, "il primo clic arma soltanto")
	ButtonWithText("Conferma: elimina"):Click()
	T.eq(R:Get("player", zeno), nil, "il secondo elimina")
	T.eq(RelationsFrame:CurrentView(), "list", "si torna all'elenco")
	-- l'attrazione, quando è accesa, ha il suo cursore
	R:SetSetting("attraction", true)
	local aldo = "Aldo-Stormrage"
	RelationsFrame:SelectSubject("player", aldo)
	T.eq(#Under(ROOT, function(w) return rawget(w, "thumb") ~= nil and w:IsShown() end), 7, "sette cursori con l'attrazione accesa")
	R:SetSetting("attraction", false)
	RelationsFrame:Close()
	T.ok(not RelationsFrame:IsOpen(), "si chiude")
	T.ok(NS.cdb.relationships ~= nil and R:Get("player", aldo) ~= nil, "chiudere non cancella nulla")
end)

T.run("finestra: persone incontrate e opzioni", function()
	Fresh()
	P.party = { { name = "Aldric", realm = "Stormrage" }, { name = "Brenna", realm = "Stormrage" } }; P.group = true
	R.groupDirty = true; NS:BuildContext()
	RelationsFrame:Open("people")
	T.eq(RelationsFrame:CurrentView(), "people", "vista persone")
	T.eq(#Texts(function(t) return t:find("Aldric-Stormrage", 1, true) end), 1, "il candidato è elencato")
	T.eq(Count(NS.cdb.relationships.players), 0, "ma non è in lista")
	local plus = {}
	for _, b in ipairs(Buttons()) do if b:GetText() == "+" then table.insert(plus, b) end end
	T.ok(#plus >= 2, "un + per candidato")
	plus[1]:Click()
	T.eq(Count(NS.cdb.relationships.players), 1, "il clic dell'utente lo aggiunge")
	T.ok(R:Get("player", "Aldric-Stormrage") or R:Get("player", "Brenna-Stormrage"), "è proprio uno dei due")
	local x = {}
	for _, b in ipairs(Buttons()) do if b:GetText() == "x" then table.insert(x, b) end end
	x[1]:Click()
	T.eq(Count(R.candidates), 0, "x scarta la proposta")
	-- aggiunta di un nome scritto
	local boxes = Boxes()
	boxes[2]:TypeEnter("Dara-Stormrage")
	T.ok(R:Get("player", "Dara-Stormrage") ~= nil, "un nome scritto dall'utente")
	-- opzioni
	local b = ButtonWithText("Registra da solo")
	T.ok(b ~= nil and b:GetText():find(NS:L("off"), 1, true), "opzione spenta di base")
	b:Click()
	T.eq(NS.db.relations.autoRegisterPlayers, true, "il pulsante la accende")
	ButtonWithText("Registra da solo"):Click()
	T.eq(NS.db.relations.autoRegisterPlayers, false, "e la spegne")
	ButtonWithText("Asse attrazione"):Click()
	T.eq(NS.db.relations.attraction, true, "asse attrazione")
	ButtonWithText("Asse attrazione"):Click()
	-- privacy dichiarata
	T.ok(#Texts(function(t) return t:find("whisper", 1, true) end) >= 1, "la finestra dichiara che non legge chat né whisper")
	RelationsFrame:Close()
end)

T.run("accesso dal diario", function()
	Fresh()
	local ids = {}
	for _, t in ipairs(JournalFrame.tabs) do ids[t.id] = true end
	T.ok(ids.relations and ids.people, "schede Relazioni e Persone incontrate nel diario")
	local key = Person("Aldric-Stormrage", { familiarity = 40, trust = 40, affection = 40 })
	R:Propose("Brenna-Stormrage", "group")
	JournalFrame:Open("relations")
	T.ok(#Texts(function(t) return t:find("Aldric-Stormrage", 1, true) end, "AzerothUnspokenJournal") >= 1, "la relazione è nella scheda")
	local tab
	for _, t in ipairs(JournalFrame.tabs) do if t.id == "relations" then tab = t end end
	local rows = tab.rows()
	T.eq(#rows, 1, "una riga")
	rows[1].actions[1].fn()
	T.ok(RelationsFrame:IsOpen() and RelationsFrame:CurrentView() == "detail", "il pulsante apre il dettaglio")
	RelationsFrame:Close()
	for _, t in ipairs(JournalFrame.tabs) do if t.id == "people" then tab = t end end
	rows = tab.rows()
	T.eq(#rows, 1, "una proposta")
	rows[1].actions[1].fn()
	T.ok(R:Get("player", "Brenna-Stormrage") ~= nil, "aggiungere dal diario è un'azione dell'utente")
	T.eq(#tab.rows(), 0, "la proposta sparisce")
	JournalFrame:Close()
	-- tutte le schede hanno un pulsante dentro la finestra
	JournalFrame:Open("memories")
	local tabsShown = 0
	for _, b in ipairs(Buttons("AzerothUnspokenJournal")) do
		for _, t in ipairs(JournalFrame.tabs) do
			if b:GetText() == NS:L(t.label) or b:GetText():find(NS:L(t.label), 1, true) then tabsShown = tabsShown + 1; break end
		end
	end
	T.ok(tabsShown >= #JournalFrame.tabs, "ogni scheda ha il suo pulsante")
	JournalFrame:Close()
end)

T.run("comandi /au relazioni", function()
	Fresh()
	for _, alias in ipairs({ "relazioni", "relations", "relationships", "relazione" }) do
		RelationsFrame:Close()
		Cmd(alias)
		T.ok(RelationsFrame:IsOpen(), "/au " .. alias .. " apre la finestra")
	end
	RelationsFrame:Close()
	T.ok(Cmd("relazioni aggiungi Aldric-Stormrage"):find("aggiunto", 1, true) and R:Get("player", "Aldric-Stormrage"), "aggiungi")
	T.ok(Cmd("relazioni aggiungi Aldric-Stormrage"):find("già in lista", 1, true), "già in lista")
	T.ok(Cmd("relazioni imposta Aldric-Stormrage fiducia 55"):find("Aldric", 1, true), "imposta")
	T.eq(R:Get("player", "Aldric-Stormrage").trust, 55, "fiducia 55")
	Cmd("relations set Aldric-Stormrage affection 60")
	Cmd("relazioni imposta Aldric lealta 20")
	T.ok(R:Get("player", "Aldric-Stormrage").affection == 60 and R:Get("player", "Aldric-Stormrage").loyalty == 20, "alias EN e nome senza reame")
	T.ok(Cmd("relazioni imposta Aldric boh 3"):find("uso:", 1, true), "asse sconosciuto: l'uso")
	T.ok(Cmd("relazioni imposta Nessuno fiducia 3"):find("non trovato", 1, true), "persona sconosciuta")
	Cmd("relazioni nota Aldric Amico di vecchia data")
	T.eq(R:Get("player", "Aldric-Stormrage").note, "Amico di vecchia data", "nota")
	Cmd("relazioni tag Aldric gilda, fiera")
	T.eq(#R:Get("player", "Aldric-Stormrage").tags, 2, "tag")
	Cmd("relazioni etichetta Aldric rivale rispettato")
	T.eq(R:Get("player", "Aldric-Stormrage").label, "rival", "etichetta per nome")
	T.ok(Cmd("relazioni dettaglio Aldric"):find("rivale rispettato", 1, true), "dettaglio con l'etichetta scelta")
	T.ok(Cmd("relazioni lista"):find("Aldric", 1, true), "lista")
	-- proposte
	R:Propose("Brenna-Stormrage", "group")
	T.ok(Cmd("relazioni persone"):find("Brenna-Stormrage", 1, true), "persone")
	T.ok(Cmd("relazioni scarta Brenna-Stormrage"):find("scartata", 1, true) and not R.candidates["Brenna-Stormrage"], "scarta")
	-- NPC per ID
	Talk(1234, "Pip")
	T.ok(Cmd("relazioni dettaglio npc:1234"):find("Pip", 1, true), "NPC per npcID")
	T.ok(Cmd("relazioni dettaglio Pip"):find("Pip", 1, true), "NPC per nome")
	T.ok(Cmd("relazioni rimuovi npc:1234"):find("eliminata", 1, true) and not Npc(1234), "rimuovi")
	-- opzioni
	T.ok(Cmd("relazioni auto on") ~= "" and NS.db.relations.autoRegisterPlayers, "auto on")
	Cmd("relazioni auto off")
	T.eq(NS.db.relations.autoRegisterPlayers, false, "auto off")
	Cmd("relazioni attrazione on")
	T.eq(NS.db.relations.attraction, true, "attrazione on")
	Cmd("relations attraction off")
	T.eq(NS.db.relations.attraction, false, "attraction off")
	-- esportazione: la finestra di esportazione del diario, con ripiego
	local text = R:ExportText()
	T.ok(text:find("Aldric-Stormrage", 1, true) and text:find("Amico di vecchia data", 1, true), "il testo contiene le note dell'utente")
	Cmd("relazioni esporta")
	T.ok(JournalFrame:IsExportOpen(), "esporta: finestra copiabile")
	-- azzeramento con conferma
	T.ok(Cmd("relazioni reset"):find("ripeti", 1, true) and R:Get("player", "Aldric-Stormrage"), "il primo reset chiede conferma")
	T.ok(Cmd("relazioni reset"):find("azzerate", 1, true) and not R:Get("player", "Aldric-Stormrage"), "il secondo azzera")
	T.ok(Cmd("relazioni boh"):find("uso:", 1, true), "comando sconosciuto: l'aiuto")
	T.ok(Cmd("aiuto"):find("relazioni", 1, true), "l'aiuto generale cita /au relazioni")
	NS.db.locale = "en"
	T.ok(Cmd("relations boh"):find("usage:", 1, true), "aiuto in inglese")
	NS.db.locale = "it"
	T.ok(Cmd("debug"):find("Relationships:", 1, true), "/au debug stampa lo stato delle relazioni")
	T.ok(NS.Diagnostics.errors[1] == nil, "nessun errore dai comandi")
end)

T.run("testi dell'interfaccia: IT ed EN", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local n = 0
	for k in pairs(it) do
		if k:find("^rel_") or k == "module_relations" or k == "opt_relations" or k == "mem_kind_relation" then
			n = n + 1
			T.ok(en[k] ~= nil, "EN ha " .. k)
		end
	end
	for k in pairs(en) do
		if k:find("^rel_") then T.ok(it[k] ~= nil, "IT ha " .. k) end
	end
	T.ok(n >= 60, "chiavi delle relazioni: " .. n)
end)

T.run("#37: tratti e ruolo dell'interlocutore dal dettaglio, consenso TRP3 nelle impostazioni", function()
	Fresh()
	local I = NS.Interlocutor
	local zeno = Person("Zeno-Stormrage", { familiarity = 30 })
	RelationsFrame:Open()
	T.ok(RelationsFrame:SelectSubject("player", zeno), "dettaglio")
	T.eq(#Texts(function(t) return t:find("Come lo vedi", 1, true) end), 1, "titolo della sezione")
	local role = ButtonWithText("Ruolo: ")
	local temperament = ButtonWithText("Temperamento: ")
	T.ok(role and temperament and ButtonWithText("Morale: ") and ButtonWithText("Obiettivi: ") and ButtonWithText("Modo di parlare: "),
		"un selettore per ogni tratto e per il ruolo")
	T.eq(role:GetText(), "Ruolo: non so", "all'inizio: non so")
	role:Click()
	T.eq(R:Get("player", zeno).role, "innkeeper", "primo clic: il primo ruolo")
	T.eq(R:Get("player", zeno).roleSource, "user", "scelto dall'utente")
	T.eq(ButtonWithText("Ruolo: "):GetText(), "Ruolo: Locandiere", "il pulsante mostra il valore")
	for _ = 1, #I.ROLES - 1 do ButtonWithText("Ruolo: "):Click() end
	T.eq(R:Get("player", zeno).role, I.ROLES[#I.ROLES], "gira fino all'ultimo ruolo")
	ButtonWithText("Ruolo: "):Click()
	T.eq(R:Get("player", zeno).role, nil, "poi torna a non so")
	temperament:Click()
	local first = NS.Traits.defs.temperament.values[1]
	T.eq(R:Get("player", zeno).traits.temperament, first, "temperamento")
	T.eq(NS.Interlocutor:GetUserTrait("player", zeno, "temperament"), first, "GetUserTrait")
	-- il valore scelto arriva nel profilo dell'interlocutore (fonte 1)
	P.target = nil
	for _ = 1, #NS.Traits.defs.temperament.values do ButtonWithText("Temperamento: "):Click() end
	T.eq(R:Get("player", zeno).traits, nil, "tornato a non so: nessun tratto salvato")
	-- dato scritto da una versione più nuova: non si cambia
	R.readOnly = true
	T.eq(I:CycleTrait("player", zeno, "speech"), false, "in sola lettura non si scrive")
	R.readOnly = false
	T.eq(I:CycleTrait("player", "Nessuno-Stormrage", "speech"), false, "persona non in lista")
	T.eq(I:CycleTrait("player", zeno, "inesistente"), false, "tratto sconosciuto")
	RelationsFrame:Close()

	-- consenso a leggere il Total RP 3 degli altri: spento di base, nelle impostazioni e con il comando
	T.eq(NS.db.interlocutor.trp3Others, false, "spento di base")
	for _, w in ipairs(FindWidgets(function(w) return w.name == NS.name and w.scripts.OnShow end)) do w.scripts.OnShow() end
	local function Row()
		for _, b in ipairs(FindWidgets(function(w) return w.kind == "Button" and w.scripts.OnClick end)) do
			if (b:GetText() or ""):find("Leggi il Total RP 3 degli altri", 1, true) == 1 then return b end
		end
	end
	local row = Row()
	T.ok(row ~= nil, "la riga è nel pannello delle impostazioni")
	T.ok(row:GetText():find(NS:L("off"), 1, true), "mostra lo stato: spento")
	SENT = {}
	row:Click()
	T.eq(NS.db.interlocutor.trp3Others, true, "il clic accende il consenso")
	T.ok(T.sentContains("letti"), "e lo dice")
	row:Click()
	T.eq(NS.db.interlocutor.trp3Others, false, "il secondo lo spegne")
	SlashCmdList.AZEROTHUNSPOKEN("chi trp3 on")
	T.eq(NS.db.interlocutor.trp3Others, true, "il comando resta valido e coerente")
	T.eq(I:SetTRP3Consent(false), false, "SetTRP3Consent")
	T.eq(NS.db.interlocutor.trp3Others, false, "spento")
end)

T.run("nessun errore intercettato", function()
	local errs = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(errs, tostring(e.id) .. ": " .. tostring(e.message)) end
	T.ok(#errs == 0, "errori: " .. table.concat(errs, "; "))
end)
