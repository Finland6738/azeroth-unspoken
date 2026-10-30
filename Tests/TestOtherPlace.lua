-- Test dello step S6c: interlocutore (Systems/Interlocutor.lua, Data/NPCs.lua) e luogo (Systems/Place.lua,
-- Data/Places.lua), sotto-tabelle `other` e `place` nel RuleEngine, segnaposto nuovi, fattore C, ritmo per tipo di
-- istanza, sorgenti di eventi, privacy, 86 frasi IT/EN e migrazione della memoria dei luoghi al mapID (issue #31).
local NS = ...
local Engine, Config, R, I, Place, LM = NS.Engine, NS.Config, NS.Relationships, NS.Interlocutor, NS.Place, NS.LivingMemory
local ND, Director, Traits, Pacing = NS.NarrativeDirector, NS.Director, NS.Traits, NS.Pacing

---------------------------------------------------------------------------
-- Aiuti
---------------------------------------------------------------------------
local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end
local function Count(t) local n = 0; for _ in pairs(t or {}) do n = n + 1 end; return n end
local function Near(a, b, eps) return type(a) == "number" and math.abs(a - b) <= (eps or 0.001) end

local function Fresh()
	NS.cdb.relationships = nil
	NS.cdb.memories = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	R.readOnly = false
	R:Sanitize()
	R.candidates, R.dismissed, R.session = {}, {}, { seen = {}, offered = {} }
	R.interaction, R.questGiver, R.questTaker, R.group, R.groupDirty = nil, nil, nil, nil, true
	I:OnInit()
	Place:OnInit()
	NS.Diagnostics.errors = {}
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.interlocutor.trp3Others = false
	TRP3_API = nil
	P.target, P.npc, P.party, P.group, P.raid = nil, nil, nil, false, false
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.resting = "Durotar", "", false, false, 100, 100, false
	P.instance, P.instanceType, P.instanceName, P.instanceID, P.difficulty = false, nil, nil, nil, nil
	P.mapID, P.pvpType, P.role, P.bgQueue, P.continentMap = 1411, nil, nil, nil, 1414
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Director.queue, Director.log = {}, {}
	Pacing:Reset()
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	if NS.Personality then NS.Personality:SetArchetype("neutral") end
	SENT = {}
	ADVANCE(20)
end

local function Ctx(extra) return NS:BuildContext(extra) end

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

local function Queued(event)
	for _, c in ipairs(Director.queue) do
		if c.event == event then return c end
	end
	return nil
end

-- il Director ha già valutato l'evento (dopo la finestra di arbitraggio la coda è vuota e resta il registro)
local function Logged(event)
	for _, l in ipairs(Director.log) do
		if l.event == event then return l end
	end
	return nil
end

-- un'interazione con un NPC: il client lo mette nell'unità "npc" e lancia l'evento
local function Talk(id, name, wowEvent)
	P.npc = { name = name or "Grik", guid = Guid(id) }
	ADVANCE(16)
	FIRE(wowEvent or "GOSSIP_SHOW")
end

local function Player(name, extra)
	local t = { name = name, realm = "TestRealm", player = true, guid = "Player-1-0000" .. name, sex = 3,
		class = "PRIEST", race = "Human", faction = "Horde", level = 30 }
	for k, v in pairs(extra or {}) do t[k] = v end
	return t
end

-- un finto Total RP 3 con il profilo pubblico di Aldric
local trpReads
local function FakeTRP3(opts)
	opts = opts or {}
	trpReads = 0
	TRP3_API = {
		utils = { str = { getUnitID = function(unit)
			if opts.broken then error("API cambiata") end
			local t = unit == "target" and P.target
			return t and (t.name .. "-" .. (t.realm or "TestRealm")) or nil
		end } },
		register = {
			isUnitIDKnown = function(id) return id == "Aldric-TestRealm" end,
			getUnitIDCurrentProfile = function(id)
				trpReads = trpReads + 1
				assert(id == "Aldric-TestRealm", "Unknown character")
				return { characteristics = { RA = "|cffff8000Mezzelfo|r delle colline", CL = "Cacciatrice di taglie",
					PS = { { ID = 6, V2 = 2 }, { ID = 8, V2 = 19 }, { ID = 7, V2 = 1 } } } }
			end,
		},
	}
end

---------------------------------------------------------------------------
-- Luogo: lettura, dati, territorio
---------------------------------------------------------------------------
T.run("ctx.place nel mondo aperto: zona, mappa, continente, tag, territorio", function()
	Fresh()
	local p = Ctx().place
	T.eq(p.zone, "Durotar", "zona")
	T.eq(p.mapID, 1411, "uiMapID")
	T.eq(p.key, "map:1411", "chiave stabile")
	T.eq(p.continent, "kalimdor", "continente dal genitore della mappa")
	T.ok(p.tags.desert and p.tags.orcish, "tag dai dati")
	T.eq(p.instanceType, "none", "mondo aperto")
	T.eq(p.territory, "friendly", "territorio dai dati (Orda in Durotar)")
	T.eq(p.source, "name", "riconosciuto per nome: i numeri non sono verificati")
	T.eq(p.battleground, "none", "nessun campo di battaglia")
	-- il client dice il territorio: vale lui
	P.pvpType = "contested"
	T.eq(Ctx().place.territory, "contested", "C_PvP.GetZonePVPInfo prima dei dati")
	P.pvpType = "sanctuary"
	local s = Ctx().place
	T.ok(s.territory == "sanctuary" and s.tags.sanctuary, "santuario")
	-- zona dell'altra fazione e capitale nemica
	P.pvpType = nil
	P.zone, P.mapID = "Stormwind City", 1453
	local c = Ctx().place
	T.ok(c.capital and c.hostileCapital and not c.friendlyCapital, "capitale nemica")
	T.eq(c.territory, "hostile", "territorio ostile")
	P.zone, P.mapID = "Orgrimmar", 1454
	T.ok(Ctx().place.friendlyCapital, "capitale amica")
	-- sottozona con tag propri
	P.zone, P.subzone, P.mapID = "Stranglethorn Vale", "Booty Bay", 1434
	local b = Ctx().place
	T.ok(b.tags.port and b.tags.neutral and b.tags.jungle, "sottozona: tag aggiunti a quelli della zona")
	T.eq(b.territory, "contested", "zona senza fazione: contesa")
end)

T.run("Place:Lookup: mapID verificato > nome > mapID non verificato", function()
	Fresh()
	local e, how = Place:Lookup(1429, "Elwynn Forest")
	T.ok(e and e.name == "Elwynn Forest" and how == "name", "nome")
	e, how = Place:Lookup(1429, "Forêt d'Elwynn")
	T.ok(e and e.name == "Elwynn Forest" and how == "map?", "nome sconosciuto: il numero non verificato come ripiego")
	Place.zones["Elwynn Forest"].verified = true
	e, how = Place:Lookup(1429, "Westfall")
	T.ok(e and e.name == "Elwynn Forest" and how == "map", "un numero verificato vince sul nome")
	Place.zones["Elwynn Forest"].verified = nil
	T.eq(Place:Lookup(nil, "Nessun Luogo"), nil, "luogo sconosciuto")
	T.eq(Place.Key(1429, "Elwynn Forest"), "map:1429", "chiave con il numero")
	T.eq(Place.Key(nil, "Elwynn Forest"), "Elwynn Forest", "chiave per nome come ripiego")
	T.eq(Place.Key(MakeSecret(), MakeSecret()), nil, "valori segreti: nessuna chiave")
end)

T.run("ctx.place senza API: tutto 'non lo so', nessun errore", function()
	Fresh()
	local saved = { C_Map = C_Map, C_PvP = C_PvP, GetInstanceInfo = GetInstanceInfo, UnitGroupRolesAssigned = UnitGroupRolesAssigned }
	C_Map, C_PvP, GetInstanceInfo, UnitGroupRolesAssigned = nil, nil, nil, nil
	local p = Ctx().place
	T.ok(p.mapID == nil and p.key == "Durotar", "senza C_Map: chiave per nome")
	T.eq(p.instanceType, "none", "IsInInstance basta")
	T.eq(p.groupRole, nil, "nessun ruolo")
	T.eq(p.territory, "friendly", "territorio dai dati")
	C_Map, C_PvP, GetInstanceInfo, UnitGroupRolesAssigned = saved.C_Map, saved.C_PvP, saved.GetInstanceInfo, saved.UnitGroupRolesAssigned
	-- valori segreti
	P.mapID = MakeSecret()
	local q = Ctx().place
	T.ok(q.mapID == nil and q.key == "Durotar", "mapID segreto: ignorato")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
end)

T.run("istanze: dungeon, incursione, campo di battaglia, arena, scontro, ruolo, coda", function()
	Fresh()
	P.instance, P.instanceType, P.instanceName, P.instanceID, P.zone, P.mapID = true, "party", "The Deadmines", 36, "The Deadmines", nil
	local d = Ctx().place
	T.ok(d.instanceType == "party" and d.instanceName == "The Deadmines" and d.instanceID == 36, "dungeon da GetInstanceInfo")
	T.ok(d.tags.deep and d.tags.port, "tag del dungeon")
	T.eq(d.difficulty, 1, "difficoltà")
	P.role = "TANK"
	T.eq(Ctx().place.groupRole, "tank", "ruolo nel gruppo")
	P.role = "HEALER"
	T.eq(Ctx().place.groupRole, "healer", "cure")
	P.instanceType, P.instanceName, P.instanceID = "raid", "Molten Core", 409
	T.ok(Ctx().place.tags.fire, "incursione")
	-- scontro con un boss
	FIRE("ENCOUNTER_START", 663, "Lucifron", 9, 40)
	local e = Ctx()
	T.eq(e.place.encounter, "Lucifron", "scontro in corso")
	T.eq(e.encounterName, "Lucifron", "{encounter}")
	ADVANCE(3)
	FIRE("ENCOUNTER_END", 663, "Lucifron", 9, 40, 1)
	local f = Ctx().place
	T.ok(f.encounter == nil and f.lastEncounter == "Lucifron" and f.encounterResult == "win", "scontro vinto")
	ADVANCE(Place.ENCOUNTER_DELAY + 1)
	T.ok(Queued("encounter_end") ~= nil or Logged("encounter_end") ~= nil, "un commento alla fine dello scontro")
	ADVANCE(Place.ENCOUNTER_RECENT + 5)
	T.eq(Ctx().place.lastEncounter, nil, "dopo un po' non è più 'appena finito'")
	FIRE("ENCOUNTER_START", 664, "Magmadar", 9, 40)
	ADVANCE(3)
	FIRE("ENCOUNTER_END", 664, "Magmadar", 9, 40, 0)
	T.eq(Ctx().place.encounterResult, "wipe", "sconfitta")
	-- uno scontro rimasto aperto si chiude cambiando zona
	FIRE("ENCOUNTER_START", 665, "Gehennas", 9, 40)
	ADVANCE(5)
	FIRE("ZONE_CHANGED_NEW_AREA")
	T.eq(Ctx().place.encounter, nil, "cambio di zona: scontro chiuso")
	-- campo di battaglia e arena
	P.instanceType, P.instanceName, P.instanceID, P.zone = "pvp", "Warsong Gulch", 489, "Warsong Gulch"
	local b = Ctx().place
	T.ok(b.instanceType == "pvp" and b.battleground == "active" and b.tags.battlefield, "campo di battaglia")
	P.instanceType, P.instanceName = "arena", "Arena"
	T.eq(Ctx().place.battleground, "active", "arena attiva")
	-- coda dei campi di battaglia
	P.instance, P.instanceType, P.zone, P.mapID = false, nil, "Durotar", 1411
	P.bgQueue = { "queued" }
	FIRE("UPDATE_BATTLEFIELD_STATUS", 1)
	T.eq(Ctx().place.battleground, "queued", "in coda")
	P.bgQueue = { "none" }
	FIRE("UPDATE_BATTLEFIELD_STATUS", 1)
	T.eq(Ctx().place.battleground, "none", "uscito dalla coda")
end)

---------------------------------------------------------------------------
-- Ritmo per tipo di istanza e sospensione
---------------------------------------------------------------------------
local function Gate(event)
	Pacing:Reset()
	return ND:Gate(event or "zone", Ctx(), GetTime())
end

T.run("ritmo: mondo aperto -> dungeon -> incursione -> campo di battaglia -> arena -> locanda", function()
	Fresh()
	local w = Gate()
	T.ok(w.allow and Near(w.chanceMul, 1) and Near(w.cooldownMul, 1), "mondo aperto: valori di base")
	P.instance, P.instanceType, P.instanceName = true, "party", "The Deadmines"
	local d = Gate()
	T.ok(Near(d.chanceMul, Place.RHYTHM.party[1]) and Near(d.cooldownMul, Place.RHYTHM.party[2]), "dungeon")
	P.instanceType, P.instanceName = "raid", "Molten Core"
	local r = Gate()
	T.ok(r.chanceMul < d.chanceMul and r.cooldownMul > d.cooldownMul, "incursione più sobria del dungeon")
	FIRE("ENCOUNTER_START", 663, "Lucifron", 9, 40)
	local e = Gate()
	T.ok(e.chanceMul < r.chanceMul and Near(e.chanceMul, Place.RHYTHM.encounter[1]), "durante il boss quasi silenzio")
	FIRE("ENCOUNTER_END", 663, "Lucifron", 9, 40, 1)
	P.instanceType, P.instanceName = "pvp", "Warsong Gulch"
	local b = Gate()
	T.ok(Near(b.chanceMul, Place.RHYTHM.pvp[1]), "campo di battaglia")
	P.instanceType = "arena"
	T.ok(Near(Gate().chanceMul, Place.RHYTHM.arena[1]), "arena")
	P.instance, P.instanceType, P.resting = false, nil, true
	local inn = Gate()
	T.ok(inn.chanceMul > 1 and inn.cooldownMul < 1, "locanda o città: più spazio")
	-- gli eventi eccezionali non diventano più rari
	P.resting, P.instance, P.instanceType = false, true, "raid"
	local death = Gate("death")
	T.ok(death.chanceMul >= 1, "una morte in incursione resta importante")
	T.ok(death.cooldownMul > 1, "ma le pause si allungano")
end)

T.run("uno scontro con un boss è impegnativo anche senza 'worldboss'", function()
	Fresh()
	P.instance, P.instanceType, P.combat = true, "party", true
	T.ok(not ND:HighDemand(Ctx()), "dungeon, combattimento normale senza élite: non impegnativo")
	FIRE("ENCOUNTER_START", 1, "Edwin VanCleef", 1, 5)
	T.ok(ND:HighDemand(Ctx()), "scontro con un boss: impegnativo")
	local v = Gate("battle")
	T.ok(not v.allow and v.reason == "busy", "il narratore tace (busy)")
	FIRE("ENCOUNTER_END", 1, "Edwin VanCleef", 1, 5, 1)
	P.combat = false
	T.ok(not ND:HighDemand(Ctx()), "finito lo scontro")
end)

T.run("campo di battaglia: le frasi brevi pesano di più (fattore C)", function()
	Fresh()
	-- due frasi senza tag del luogo: una breve e una lunga
	local short, long = Engine.byId["ctx.boss.wipe.again"], Engine.byId["ctx.npc.innkeeper"]
	local world = Ctx()
	T.ok(Near(Place.Factor(short, world), 1) and Near(Place.Factor(long, world), 1), "nel mondo aperto nessuna differenza")
	P.instance, P.instanceType, P.instanceName = true, "pvp", "Arathi Basin"
	local bg = Ctx()
	T.ok(Place.Factor(short, bg) > 1, "breve: più peso")
	T.ok(Place.Factor(long, bg) < 1, "lunga: meno peso")
	-- i tag del luogo: place.instance:pvp combacia, place.instance:raid no
	T.ok(Place.Factor(Engine.byId["ctx.zone.bg"], bg) > Place.Factor(Engine.byId["ctx.zone.raid.respect"], bg), "tag del luogo")
	-- nei combattimenti in campo di battaglia escono quasi solo frasi brevi
	local shortHits = 0
	for _ = 1, 60 do
		NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
		local rec = Engine:PickEntry("battle", bg, "say")
		if rec and #rec.text <= Place.SHORT_BYTES then shortHits = shortHits + 1 end
	end
	T.ok(shortHits >= 45, "frasi brevi in battaglia: " .. shortHits .. "/60")
end)

---------------------------------------------------------------------------
-- Interlocutore: fonti, ruoli, segreti, TRP3
---------------------------------------------------------------------------
T.run("ctx.other dal bersaglio: dati di gioco, tipo, reazione", function()
	Fresh()
	T.eq(Ctx().other, nil, "senza nessuno davanti: nessun interlocutore")
	P.target = Player("Brenna", { class = "MAGE", race = "Troll", level = 28, reaction = 5 })
	local o = Ctx().other
	T.ok(o.kind == "player" and o.name == "Brenna" and o.class == "MAGE" and o.race == "Troll", "giocatore")
	T.ok(o.classLocal == "maga" and o.raceLocal == "troll", "nomi localizzati al femminile: " .. tostring(o.classLocal) .. " " .. tostring(o.raceLocal))
	T.ok(o.faction == "Horde" and o.sex == "female" and o.level == 28 and o.reaction == "friendly", "fazione, sesso, livello, reazione")
	T.eq(o.key, "player:Brenna-TestRealm", "chiave")
	P.target = { name = "Lupo della pianura", guid = Guid(3035), ctype = "Beast", family = "Wolf", cls = "normal", reaction = 2, hostile = true, level = 7 }
	local c = Ctx().other
	T.ok(c.kind == "creature" and c.ctype == "beast" and c.family == "Wolf" and c.npcID == 3035, "creatura")
	T.ok(c.hostile and c.reaction == "hostile" and c.classification == "normal", "ostile")
	P.target = { name = "Guardia di Orgrimmar", guid = Guid(3299), ctype = "Humanoid", reaction = 5, level = 55, cls = "elite" }
	local n = Ctx().other
	T.ok(n.kind == "npc" and n.classification == "elite" and n.role == nil, "NPC: il ruolo non si indovina")
end)

T.run("identità segreta: profilo vuoto", function()
	Fresh()
	P.target = Player("Brenna")
	SECRET_UNITS.target = true
	local ctx = Ctx()
	T.ok(ctx.other ~= nil and ctx.other.secret == true, "segnato come segreto")
	T.ok(ctx.other.name == nil and ctx.other.race == nil and ctx.other.class == nil and ctx.other.kind == nil, "nessun dato")
	T.eq(Count(ctx.otherTraits), 0, "nessun tratto")
	T.eq(ctx.otherName, nil, "nessun segnaposto {other}")
	T.ok(not Engine.Match({ other = { kind = "player" } }, ctx), "le condizioni che chiedono qualcosa non combaciano")
	T.ok(Engine.Match({ other = { secret = true } }, ctx), "si può chiedere se è segreto")
	-- anche l'NPC con cui si parla
	SECRET_UNITS = { npc = true }
	P.target = nil
	Talk(295, "Innkeeper Farley", "CONFIRM_BINDER")
	T.eq(I.interaction, nil, "NPC segreto: nessuna interazione registrata")
	T.eq(Count(I.roles), 0, "nessun ruolo")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
end)

T.run("ruolo solo da interazioni affidabili", function()
	Fresh()
	Talk(5000, "Grik", "GOSSIP_SHOW")
	local g = Ctx().other
	T.ok(g ~= nil and g.kind == "npc" and g.role == nil, "il gossip da solo non dice il ruolo")
	T.ok(g.actions.gossip ~= nil, "ma è un'azione: ci ha parlato")
	T.eq(Queued("npc_meet"), nil, "nessun npc_meet senza ruolo")
	Talk(5000, "Grik", "MERCHANT_SHOW")
	T.eq(Ctx().other.role, "merchant", "mercante")
	T.ok(Queued("npc_meet") ~= nil, "npc_meet offerto")
	FIRE("MERCHANT_CLOSED")
	P.npc = nil
	-- più tardi, come bersaglio: il ruolo ricavato resta (sessione e relazione dell'NPC)
	P.target = { name = "Grik", guid = Guid(5000), ctype = "Humanoid", reaction = 4 }
	T.eq(Ctx().other.role, "merchant", "il ruolo resta per quell'NPC")
	T.eq(R:Get("npc", 5000).role, "merchant", "salvato con la relazione")
	T.eq(R:Get("npc", 5000).roleSource, "auto", "come ruolo automatico")
	-- un altro NPC mai aperto: nessun ruolo
	P.target = { name = "Sconosciuto", guid = Guid(5001), ctype = "Humanoid", reaction = 4 }
	T.eq(Ctx().other.role, nil, "mai indovinato")
	-- le altre interazioni
	P.target = nil
	for wowEvent, role in pairs({ TRAINER_SHOW = "trainer", TAXIMAP_OPENED = "flightmaster", CONFIRM_BINDER = "innkeeper",
		QUEST_DETAIL = "questgiver", BANKFRAME_OPENED = "banker" }) do
		Talk(6000 + #wowEvent, "NPC", wowEvent)
		T.eq(Ctx().other.role, role, wowEvent)
	end
	-- il log di combattimento non c'è tra le sorgenti
	for event in pairs(NS.EventBus.sources) do
		T.ok(not event:find("COMBAT_LOG", 1, true), "nessuna sorgente dal log di combattimento: " .. event)
	end
end)

T.run("priorità delle fonti: utente > TRP3 > registro NPC > ruolo > tendenza > neutro", function()
	Fresh()
	-- NPC del registro (Innkeeper Farley, 295): locandiere, allegro, gioviale, guadagno
	P.target = { name = "Innkeeper Farley", guid = Guid(295), ctype = "Humanoid", reaction = 5 }
	local f = Ctx().other
	T.ok(f.role == "innkeeper" and f.temperament == "cheerful" and f.speech == "jovial" and f.goals == "profit", "registro degli NPC")
	T.eq(f.sources.temperament, "npcs", "fonte: registro")
	-- un'interazione che direbbe un altro ruolo non vince sul registro
	P.target = nil
	Talk(295, "Innkeeper Farley", "MERCHANT_SHOW")
	T.eq(Ctx().other.role, "innkeeper", "il registro vince sul ruolo dell'interazione")
	-- l'utente vince su tutto
	FIRE("MERCHANT_CLOSED")
	P.npc = nil
	P.target = { name = "Innkeeper Farley", guid = Guid(295), ctype = "Humanoid", reaction = 5 }
	R:RecordNPC(295, "Innkeeper Farley", "gossip")
	T.ok(I:SetTrait("npc", 295, "temperament", "melancholic"), "l'utente sceglie il temperamento")
	T.ok(I:SetTrait("npc", 295, "role", "guard"), "e il ruolo")
	local u = Ctx().other
	T.ok(u.temperament == "melancholic" and u.sources.temperament == "user", "utente prima del registro")
	T.ok(u.role == "guard" and u.sources.role == "user", "ruolo dell'utente")
	T.eq(u.speech, "jovial", "il resto dal registro")
	T.ok(not I:SetTrait("npc", 295, "temperament", "furioso"), "valore non valido rifiutato")
	T.ok(not I:SetTrait("npc", 9999, "temperament", "stoic"), "solo per persone della lista")
	-- un ruolo automatico non sovrascrive quello dell'utente
	P.target = nil
	Talk(295, "Innkeeper Farley", "TRAINER_SHOW")
	T.eq(R:Get("npc", 295).role, "guard", "la scelta dell'utente resta")
	FIRE("GOSSIP_CLOSED")
	P.npc = nil

	-- giocatore: utente > TRP3 (con consenso)
	FakeTRP3()
	P.target = Player("Aldric", { class = "HUNTER", race = "Orc", sex = 2 })
	local n = Ctx().other
	T.eq(n.temperament, nil, "senza consenso TRP3 non si legge")
	T.eq(trpReads, 0, "nessuna lettura")
	NS.db.interlocutor.trp3Others = true
	local t = Ctx().other
	T.ok(t.temperament == "merciful" and t.sources.temperament == "trp3", "TRP3: temperamento dai tratti pubblici")
	T.eq(t.morality, "righteous", "TRP3: morale")
	T.eq(t.faith, nil, "solo temperamento e morale di un altro giocatore")
	T.eq(t.raceLocal, "Mezzelfo delle colline", "razza personalizzata, senza codici di colore")
	T.eq(t.classLocal, "Cacciatrice di taglie", "classe personalizzata")
	T.ok(t.race == "Orc" and t.class == "HUNTER", "i token di gioco restano quelli del client")
	R:AddPlayer("Aldric-TestRealm", "user")
	I:SetTrait("player", "Aldric-TestRealm", "temperament", "gruff")
	local a = Ctx().other
	T.ok(a.temperament == "gruff" and a.sources.temperament == "user", "l'utente vince su TRP3")
	T.ok(a.morality == "righteous" and a.sources.morality == "trp3", "TRP3 per ciò che l'utente non ha detto")
	T.ok(a.relation ~= nil, "la relazione di S6b")
	-- il modulo TRP3 spento
	NS.db.modules.totalRP3 = false
	T.eq(Ctx().other.morality, nil, "modulo spento: niente TRP3")
	NS.db.modules.totalRP3 = true
	-- API cambiata: nessun errore, nessun dato
	FakeTRP3({ broken = true })
	R:Remove("player", "Aldric-TestRealm")
	T.eq(Ctx().other.temperament, nil, "API cambiata: nessun dato")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
end)

T.run("nessun obbligo di TRP3", function()
	Fresh()
	TRP3_API, AddOn_TotalRP3 = nil, nil
	NS.db.interlocutor.trp3Others = true
	P.target = Player("Aldric")
	local o = Ctx().other
	T.ok(o ~= nil and o.kind == "player" and o.raceLocal == "umana", "profilo dai dati di gioco")
	T.eq(NS.TotalRP3:GetOtherProfile("target"), nil, "l'adattatore risponde nil")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
end)

T.run("tendenza debole di classe: solo peso, mai condizioni o morale", function()
	Fresh()
	P.target = Player("Brenna", { class = "PRIEST" })
	local ctx = Ctx()
	T.eq(ctx.other.goals, nil, "la tendenza non entra nel profilo")
	T.eq(ctx.other.tendency.goals, "faith", "tendenza registrata")
	T.ok(not Engine.Match({ other = { goals = "faith" } }, ctx), "una condizione non la vede")
	local soft = { tags = { ["other.goals:faith"] = true } }
	local req = { tags = { ["other.req:goals:faith"] = true } }
	local other = { tags = { ["other.goals:power"] = true } }
	T.ok(Near(I.Factor(soft, ctx), I.TENDENCY_MATCH), "affinità morbida: poco più di 1")
	T.eq(I.Factor(req, ctx), 0, "un requisito non è soddisfatto da una tendenza")
	T.ok(Near(I.Factor(other, ctx), 1), "un altro valore non pesa di meno")
	for _, group in ipairs({ "class", "race", "faction" }) do
		for token, t in pairs(I.tendencies[group]) do
			T.eq(t.morality, nil, "nessuna morale per " .. group .. " " .. token)
		end
	end
	T.eq(Count(I.tendencies.race), 0, "nessuna tendenza per razza nei dati di base")
	-- una persona con il tratto detto da una fonte: la tendenza tace
	R:AddPlayer("Brenna-TestRealm", "user")
	I:SetTrait("player", "Brenna-TestRealm", "goals", "power")
	local c2 = Ctx()
	T.ok(c2.other.goals == "power" and (c2.other.tendency == nil or c2.other.tendency.goals == nil), "fonte vera prima della tendenza")
	T.ok(I.Factor(soft, c2) < 1, "e il tag morbido contrario pesa di meno")
end)

---------------------------------------------------------------------------
-- Azioni recenti: eventi affidabili, finestra, privacy
---------------------------------------------------------------------------
T.run("azioni: duello, invito, emote rivolte a noi, scambio, incarico, gruppo, attacco, al nostro fianco", function()
	Fresh()
	FIRE("DUEL_REQUESTED", "Brenna")
	T.ok(I.actions["player:Brenna-TestRealm"] and I.actions["player:Brenna-TestRealm"].duel, "duello")
	local q = Queued("other_action")
	T.ok(q ~= nil and q.extra.otherSubject.key == "player:Brenna-TestRealm", "other_action con la persona come interlocutore")
	local ctx = Ctx(q.extra)
	T.ok(ctx.other.name == "Brenna" and Engine.Match({ other = { actions = "duel" } }, ctx), "condizione other.actions")
	T.ok(Engine.Match({ other = { actions = { "duel", within = 30 } } }, ctx), "entro 30 secondi")
	ADVANCE(40)
	T.ok(not Engine.Match({ other = { actions = { "duel", within = 30 } } }, Ctx(q.extra)), "dopo 40 secondi no")
	T.ok(Engine.Match({ other = { actions = "duel" } }, Ctx(q.extra)), "ma sì nella finestra predefinita")
	ADVANCE(I.ACTION_WINDOW)
	T.ok(not Engine.Match({ other = { actions = "duel" } }, Ctx(q.extra)), "oltre la finestra predefinita no")
	FIRE("PARTY_INVITE_REQUEST", "Cora", false, false, true, true, false, "Player-1-0000C", false)
	T.ok(I.actions["player:Cora-TestRealm"].invite, "invito")
	-- emote standard: solo se rivolte a noi; il testo non resta da nessuna parte
	ADVANCE(5)
	FIRE("CHAT_MSG_TEXT_EMOTE", "Dario waves.", "Dario-TestRealm")
	T.eq(I.actions["player:Dario-TestRealm"], nil, "un'emote generica non conta")
	FIRE("CHAT_MSG_TEXT_EMOTE", "Dario bows before you.", "Dario-TestRealm")
	T.ok(I.actions["player:Dario-TestRealm"].emote, "emote rivolta a noi")
	FIRE("CHAT_MSG_TEXT_EMOTE", "You wave.", "Garrosh-TestRealm")
	T.eq(I.actions["player:Garrosh-TestRealm"], nil, "le proprie emote non contano")
	FIRE("CHAT_MSG_TEXT_EMOTE", MakeSecret(), "Elia-TestRealm")
	T.eq(I.actions["player:Elia-TestRealm"], nil, "testo segreto: ignorato")
	-- senza bersaglio, chi ci ha appena rivolto un gesto è l'interlocutore
	local e = Ctx().other
	T.ok(e ~= nil and e.name == "Dario" and e.actions.emote ~= nil, "autore dell'emote come interlocutore")
	ADVANCE(I.EMOTE_SECONDS + 1)
	T.eq(Ctx().other, nil, "per poco")
	-- #38: senza la parola "you" (altre lingue) vale il destinatario indicato dal client, indipendente dalla lingua
	ADVANCE(5)
	I.actions["player:Dario-TestRealm"] = nil
	FIRE("CHAT_MSG_TEXT_EMOTE", "Dario te saluda.", "Dario-TestRealm")
	T.eq(I.actions["player:Dario-TestRealm"], nil, "client inglese: 'te' non è 'you', nessun destinatario: non si riconosce")
	FIRE("CHAT_MSG_TEXT_EMOTE", "Dario te saluda.", "Dario-TestRealm", "", "", "Garrosh")
	T.ok(I.actions["player:Dario-TestRealm"] and I.actions["player:Dario-TestRealm"].emote, "destinatario = il nostro personaggio")
	I.actions["player:Dario-TestRealm"] = nil
	ADVANCE(5)
	FIRE("CHAT_MSG_TEXT_EMOTE", "Dario saluda.", "Dario-TestRealm", "", "", "Garrosh-TestRealm")
	T.ok(I.actions["player:Dario-TestRealm"], "destinatario con il reame")
	I.actions["player:Dario-TestRealm"] = nil
	ADVANCE(5)
	FIRE("CHAT_MSG_TEXT_EMOTE", "Dario saluda.", "Dario-TestRealm", "", "", "Elia")
	T.eq(I.actions["player:Dario-TestRealm"], nil, "destinatario un altro: non è rivolta a noi")
	FIRE("CHAT_MSG_TEXT_EMOTE", "Dario saluda.", "Dario-TestRealm", "", "", MakeSecret())
	T.eq(I.actions["player:Dario-TestRealm"], nil, "destinatario segreto: ignorato")
	-- tabelle per lingua (best effort, da verificare nei client veri)
	local you = {
		{ "enUS", "Dario bows before you.", true }, { "enGB", "Dario waves at you.", true },
		{ "deDE", "Dario winkt dir zu.", true }, { "deDE", "Dario begrüßt dich.", true },
		{ "frFR", "Dario vous salue.", true }, { "esES", "Dario te saluda.", true }, { "esMX", "Dario te saluda.", true },
		{ "itIT", "Dario ti saluta.", true }, { "itIT", "Dario saluta la folla.", false },
		{ "ptBR", "Dario cumprimenta você.", true }, { "ruRU", "Дарио приветствует вас.", true },
		{ "koKR", "Dario님이 당신에게 손을 흔듭니다.", true }, { "zhCN", "Dario对你挥手。", true },
		{ "zhTW", "Dario對你揮手。", true }, { "enUS", "Dario waves.", false }, { "esES", "Dario saluda.", false },
		{ "itIT", "Dario applaude, TE-TE!", true }, { "xxXX", "Dario you te ti", false },
		{ "enUS", "Dario salutes the youth.", false },
	}
	for _, row in ipairs(you) do
		T.eq(I.TextAddressesYou(row[2], row[1]), row[3], ("%s: %s"):format(row[1], row[2]))
	end
	-- il client in un'altra lingua: l'emote si registra con il testo, senza conservarlo
	local savedLocale = GetLocale
	GetLocale = function() return "itIT" end
	I.actions["player:Dario-TestRealm"] = nil
	ADVANCE(5)
	FIRE("CHAT_MSG_TEXT_EMOTE", "Dario ti saluta.", "Dario-TestRealm")
	T.ok(I.actions["player:Dario-TestRealm"] and I.actions["player:Dario-TestRealm"].emote, "client italiano: l'emote è rivolta a noi")
	GetLocale = savedLocale
	I.actions["player:Dario-TestRealm"] = nil
	ADVANCE(5)
	-- scambio
	P.npc = Player("Fara")
	FIRE("TRADE_SHOW")
	T.ok(I.actions["player:Fara-TestRealm"].trade, "scambio")
	P.npc = nil
	-- incarico affidato e consegnato
	Talk(240, "Marshal Dughan", "QUEST_DETAIL")
	FIRE("QUEST_ACCEPTED", 1, 33)
	T.ok(I.actions["npc:240"].quest_given, "ci ha affidato un incarico")
	T.ok(I.actions["npc:240"].quest_offer, "e prima ce l'ha proposto")
	Talk(240, "Marshal Dughan", "QUEST_COMPLETE")
	FIRE("QUEST_TURNED_IN", 33, 100, 0)
	T.ok(I.actions["npc:240"].quest_done, "incarico consegnato")
	P.npc = nil
	FIRE("QUEST_FINISHED")
	-- gruppo
	P.group, P.party = true, { Player("Gaia") }
	FIRE("GROUP_ROSTER_UPDATE")
	P.target = Player("Gaia")
	local g = Ctx().other
	T.ok(g.inGroup and g.actions.group ~= nil, "è nel nostro gruppo")
	T.ok(Engine.Match({ other = { inGroup = true, actions = "group" } }, Ctx()), "condizioni sul gruppo")
	-- ci attacca: ci ha come bersaglio ed è ostile (letto dall'unità, mai dal log di combattimento)
	P.target = { name = "Bandito", guid = Guid(116), ctype = "Humanoid", reaction = 2, hostile = true, targetsPlayer = true }
	T.ok(Ctx().other.actions.attacks ~= nil, "ci attacca")
	-- combatte al nostro fianco
	P.combat = true
	P.target = Player("Hana", { combat = true })
	T.ok(Ctx().other.actions.ally ~= nil, "combatte al nostro fianco")
	P.combat = false
	-- privacy: nessun testo di emote salvato o negli eventi recenti
	local saved = SERIALIZE(NS.cdb)
	T.ok(not saved:find("bows", 1, true) and not saved:find("waves", 1, true), "nessun testo di emote nei dati salvati")
	T.ok(not SERIALIZE(NS.EventBus.recent):find("bows", 1, true), "né negli eventi recenti")
	T.ok(not saved:find("Dario", 1, true), "le azioni restano nella sessione")
end)

-- #53: i rapporti di diagnostica si condividono (checklist G1): nessun nome di altri giocatori, né nelle righe degli
-- ultimi eventi né nella traccia; il contesto di un evento mostra solo i campi di testo noti e innocui
T.run("diagnostica: i rapporti non contengono i nomi di altri giocatori", function()
	Fresh()
	local D = NS.Diagnostics
	local NAMES = { "Brenna", "Cora", "Dario", "Dara", "Zorak", "Whisperbuddy" }
	local function Leaks(text)
		local found = {}
		for _, n in ipairs(NAMES) do if text:find(n, 1, true) then table.insert(found, n) end end
		return table.concat(found, ",")
	end
	-- la traccia stampa mentre gli eventi arrivano
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("debug trace")
	T.ok(D.trace, "traccia accesa")
	FIRE("DUEL_REQUESTED", "Brenna")
	FIRE("PARTY_INVITE_REQUEST", "Cora", false, false, true, true, false, "Player-1-0000C", false)
	ADVANCE(5)
	FIRE("CHAT_MSG_TEXT_EMOTE", "Dario bows before you.", "Dario-TestRealm")
	P.npc = { name = "Dara", realm = "Stormrage", player = true, guid = "Player-1-0000CCCC" }
	FIRE("TRADE_SHOW")
	FIRE("CHAT_MSG_WHISPER_INFORM", "ciao", "Whisperbuddy-Aggramar", "", "", "Whisperbuddy", "", 0, 0, "", 0, 99)
	FIRE("UNIT_SPELLCAST_SENT", "player", "Zorak", "cast-priv-1", 133)
	local trace = table.concat(SENT, "\n")
	SlashCmdList.AZEROTHUNSPOKEN("debug trace")
	T.ok(not D.trace, "traccia spenta")
	T.ok(trace:find("OTHER_DUEL", 1, true) and trace:find("TRADE_OPENED", 1, true) and trace:find("WHISPER_SENT", 1, true)
		and trace:find("SPELL_SENT", 1, true) and trace:find("OTHER_EMOTE", 1, true), "la traccia mostra gli eventi")
	T.eq(Leaks(trace), "", "la traccia non rivela nomi")
	T.ok(trace:find(D.HIDDEN, 1, true), "i campi nascosti sono segnati")
	-- il rapporto, breve e completo, e il comando
	local report = table.concat(D:Report(true), "\n")
	T.eq(Leaks(report), "", "il rapporto completo non rivela nomi")
	T.ok(report:find("OTHER_DUEL", 1, true), "ma elenca gli eventi recenti")
	T.eq(Leaks(table.concat(D:Report(false), "\n")), "", "né quello breve")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("debug full")
	SlashCmdList.AZEROTHUNSPOKEN("debug")
	T.eq(Leaks(table.concat(SENT, "\n")), "", "né /au debug né /au debug full")
	-- i campi innocui restano leggibili: zona, spell, nome di un flag narrativo
	local env = NS.EventBus:Publish("ZONE_ENTER", { zone = "Durotar", subzone = "Razor Hill", mapID = 1411 }, { key = "t53z" })
	T.ok(D:FormatEnvelope(env):find("zone=Durotar", 1, true), "la zona resta")
	local flag = NS.EventBus:Publish("MEMORY_FLAG", { name = "npcd_prova", source = "addon" }, { key = "t53f", window = 0 })
	T.ok(D:FormatEnvelope(flag):find("name=npcd_prova", 1, true), "il nome di un flag narrativo resta")
	-- un campo di testo nuovo, non previsto, esce nascosto
	local novel = NS.EventBus:Publish("T53_NUOVO", { who = "Brenna", n = 3, ok = true }, { key = "t53n" })
	local line = D:FormatEnvelope(novel)
	T.ok(not line:find("Brenna", 1, true) and line:find("n=3", 1, true) and line:find("ok=true", 1, true), "campo nuovo: testo nascosto, numeri e booleani no")
	-- le SavedVariables restano senza nomi (già vero: verificato qui perché i rapporti non diventino una via di fuga)
	T.eq(Leaks(NS.Compat and tostring(NS.Diagnostics.errors and #NS.Diagnostics.errors) or ""), "", "nessun errore con i nomi")
end)

-- #48: nelle azioni di un'altra persona, l'interlocutore e il rapporto descrivono la stessa persona
T.run("other_action: relazione e interlocutore sono la persona che ha agito, non il bersaglio", function()
	Fresh()
	local d = R:Data()
	local now = time()
	d.players["Alice-TestRealm"] = { first = now, last = now, count = 3, source = "user", affection = -80 }
	d.players["Bob-TestRealm"] = { first = now, last = now, count = 3, source = "user", trust = 60, affection = 60, familiarity = 60 }
	T.eq(R:Resolve("player", d.players["Alice-TestRealm"]).label, "enemy", "Alice è una nemica")
	T.eq(R:Resolve("player", d.players["Bob-TestRealm"]).label, "friend", "Bob è un amico")
	-- bersaglio: Alice; Bob ci saluta con /wave
	P.target = { name = "Alice", realm = "TestRealm", player = true, class = "MAGE", race = "Human", faction = "Horde", level = 30, sex = 3 }
	FIRE("PLAYER_TARGET_CHANGED")
	ADVANCE(5)
	FIRE("CHAT_MSG_TEXT_EMOTE", "Bob waves at you.", "Bob-TestRealm", "", "", "Garrosh")
	local q = Queued("other_action")
	T.ok(q ~= nil and q.extra.otherSubject.kind == "player", "other_action con Bob come persona")
	local ctx = Ctx(q.extra)
	T.eq(ctx.other.name, "Bob", "interlocutore: Bob")
	T.eq(ctx.other.relation, "friend", "con il rapporto di Bob")
	T.eq(ctx.relation, "friend", "ctx.relation è quello di Bob, non di Alice")
	T.eq(ctx.relName, "Bob-TestRealm", "ctx.relName: Bob")
	T.eq(ctx.relTraits.relation, "friend", "ctx.relTraits: Bob")
	T.ok(ctx.rel.trust > 50, "gli assi sono di Bob")
	T.ok(Engine.Match({ relation = "friend" }, ctx) and not Engine.Match({ relation = "enemy" }, ctx), "le condizioni di relazione vedono Bob")
	-- un duello: stessa regola per gli altri eventi
	FIRE("DUEL_REQUESTED", "Alice")
	local q2
	for _, c in ipairs(Director.queue) do if c.event == "other_action" then q2 = c end end   -- Alice è il bersaglio: soggetto = l'unità
	T.ok(q2 ~= nil and q2.extra.otherSubject.unit == "target", "il duello di Alice è un candidato, con il bersaglio come persona")
	local ctx2 = Ctx(q2.extra)
	T.ok(ctx2.other.name == "Alice" and ctx2.relation == "enemy" and ctx2.relName == "Alice-TestRealm", "Alice: nemica, anche come interlocutore")
	-- la persona dell'evento non è in lista: nessun rapporto, e non quello del bersaglio
	local ctx3 = NS:BuildContext({ otherSubject = { kind = "player", key = "player:Carl-TestRealm", name = "Carl" } })
	T.ok(ctx3.relation == nil and ctx3.isKnown == false, "una persona sconosciuta non eredita il rapporto del bersaglio")
	-- quando l'evento riguarda il bersaglio stesso, resta il suo rapporto
	local ctx4 = NS:BuildContext({ otherSubject = { unit = "target" } })
	T.eq(ctx4.relation, "enemy", "otherSubject = bersaglio: il rapporto del bersaglio")
	-- il nome del rapporto è quello di Bob (due persone con la stessa etichetta non si scambiano)
	d.players["Alice-TestRealm"].affection = 60
	d.players["Alice-TestRealm"].trust = 60
	d.players["Alice-TestRealm"].familiarity = 60
	R:SetLabel("player", "Bob-TestRealm", "il mio fratello d'armi")
	T.eq(Ctx(q.extra).relationLabel, "il mio fratello d'armi", "relationLabel: il nome scelto per Bob")
	P.target = nil
end)

T.run("le azioni restano poche e si dimenticano", function()
	Fresh()
	for n = 1, I.MAX_SUBJECTS + 15 do I:Note("player:P" .. n, "trade") end
	T.ok(Count(I.actions) <= I.MAX_SUBJECTS, "al massimo MAX_SUBJECTS persone")
	ADVANCE(I.ACTION_KEEP + 10)
	I:Note("player:Nuovo", "trade")
	T.eq(Count(I.actions), 1, "le vecchie si dimenticano")
end)

---------------------------------------------------------------------------
-- RuleEngine: sotto-tabelle, operatori, validatore, segnaposto
---------------------------------------------------------------------------
T.run("regole con other e place: stessi operatori di oggi", function()
	Fresh()
	P.target = { name = "Innkeeper Farley", guid = Guid(295), ctype = "Humanoid", reaction = 5, level = 30 }
	P.instance, P.instanceType, P.instanceName = false, nil, nil
	P.zone, P.mapID, P.pvpType = "Elwynn Forest", 1429, "hostile"
	local ctx = Ctx()
	local M = function(w) return Engine.Match(w, ctx) end
	T.ok(M({ other = { role = "innkeeper", temperament = "cheerful" } }), "role e temperamento")
	T.ok(M({ other = { role = { "merchant", "innkeeper" } } }), "elenco")
	T.ok(not M({ other = { role = "merchant" } }), "valore diverso")
	T.ok(M({ other = { ["not"] = { temperament = "gruff" } } }), "not")
	T.ok(M({ other = { any = { { speech = "terse" }, { speech = "jovial" } } } }), "any")
	T.ok(M({ other = { func = function(o) return o.npcID == 295 end } }), "func")
	T.ok(M({ other = { levelMin = 20, levelMax = 40 } }), "livello")
	T.ok(M({ other = { name = "farley" } }), "nome contenuto")
	T.ok(M({ place = { territory = "hostile", instanceType = "none" } }), "territorio e istanza")
	T.ok(M({ place = { tags = { "desert", "forest" } } }), "un tag tra quelli elencati")
	T.ok(not M({ place = { tags = "desert" } }), "tag assente")
	T.ok(M({ place = { capital = false, encounter = false } }), "falso = assente")
	T.ok(M({ place = { mapID = 1429 }, other = { kind = "npc" }, hostile = false }), "insieme alle condizioni di sempre")
	T.ok(M({ ["not"] = { place = { instanceType = "raid" } } }), "not al livello superiore")
	T.ok(M({ any = { { place = { instanceType = "raid" } }, { other = { role = "innkeeper" } } } }), "any al livello superiore")
	T.ok(not Engine.SafeMatch({ other = { levelMin = "alto" } }, ctx), "condizione malformata: falsa, senza errore")
	-- senza interlocutore
	P.target = nil
	local none = Ctx()
	T.ok(not Engine.Match({ other = { role = "innkeeper" } }, none), "senza interlocutore: falso")
	T.ok(Engine.Match({ other = { hostile = false } }, none), "campo = false: vero")
	-- specificità: ogni campo conta
	T.eq(Engine.byId["ctx.npc.merchant.profit"].spec, 2, "due campi in other = specificità 2")
end)

T.run("validatore delle sotto-tabelle", function()
	Fresh()
	local C = Engine.CheckConditions
	T.eq(#C({ other = { role = "innkeeper", actions = { "duel", "emote", within = 20 } }, place = { tags = "forest", instanceType = "raid" } }), 0, "condizioni valide")
	T.ok(#C({ other = { role = "pirata" } }) == 1, "ruolo sconosciuto")
	T.ok(#C({ other = { colore = "rosso" } }) == 1, "campo sconosciuto")
	T.ok(#C({ place = { tags = "vulcanico" } }) == 1, "tag non registrato")
	T.ok(#C({ place = { instanceType = "dungeon" } }) == 1, "tipo di istanza sconosciuto")
	T.ok(#C({ other = { actions = { "duel", within = -1 } } }) == 1, "within negativo")
	T.ok(#C({ other = { actions = "abbraccio" } }) == 1, "azione sconosciuta")
	T.ok(#C({ other = "innkeeper" }) == 1, "serve una tabella")
	T.ok(#C({ other = { ["not"] = { role = "pirata" } } }) == 1, "anche dentro not")
	T.eq(#C({ place = { encounter = true, lastEncounter = "Ragnaros" } }), 0, "scontro: vero/falso o nome")
	local r = NS.Validator:Run()
	T.eq(Count(r.errors), 0, "il database di base resta senza errori")
end)

T.run("segnaposto {other} {otherrole} {otherrace} {otherclass} {instance} {encounter}, localizzati", function()
	Fresh()
	P.target = Player("Brenna", { class = "PRIEST", race = "Dwarf", sex = 3 })
	local it = Ctx()
	T.eq(Engine:Render("{other}, {otherrace} {otherclass}", "it", it), "Brenna, nana sacerdotessa", "italiano, al femminile")
	NS.db.locale = "en"
	local en = Ctx()
	T.eq(Engine:Render("{other}, {otherrace} {otherclass}", "en", en), "Brenna, dwarf priestess", "inglese")
	NS.db.locale = "it"
	T.eq(Engine:Render("{otherrole}", "it", it), nil, "senza ruolo la frase non si compone")
	P.target = nil
	Talk(295, "Innkeeper Farley", "CONFIRM_BINDER")
	T.eq(Engine:Render("{otherrole}", "it", Ctx()), "locandiere", "ruolo in italiano")
	NS.db.locale = "en"
	T.eq(Engine:Render("{otherrole}", "en", Ctx()), "innkeeper", "ruolo in inglese")
	NS.db.locale = "it"
	P.npc = nil
	FIRE("GOSSIP_CLOSED")
	P.instance, P.instanceType, P.instanceName = true, "raid", "Molten Core"
	FIRE("ENCOUNTER_START", 672, "Ragnaros", 9, 40)
	T.eq(Engine:Render("{instance}: {encounter}", "it", Ctx()), "Molten Core: Ragnaros", "istanza e scontro")
	T.eq(Engine:Render("{encounter}", "it", Ctx({ encounterName = "Altro" })), "Altro", "il contesto dato prevale")
	for _, k in ipairs({ "other", "otherrole", "otherrace", "otherclass", "instance", "encounter" }) do
		T.ok(Engine.PLACEHOLDERS[k] ~= nil and NS.Validator.WORST[k] ~= nil, "segnaposto noto al validatore: " .. k)
	end
end)

---------------------------------------------------------------------------
-- Frasi
---------------------------------------------------------------------------
T.run("frasi bilingui di interlocutore e luogo (86 di S6c, 114 con S7 e i duelli di #105)", function()
	Fresh()
	local n, byEvent, byWho = 0, {}, { other = 0, place = 0 }
	for id, p in pairs(Engine.byId) do
		if p.pack == "base_context" then
			n = n + 1
			T.ok(#(p.text.it or {}) > 0 and #(p.text.en or {}) > 0, "testi IT ed EN: " .. id)
			byEvent[p.events[1]] = (byEvent[p.events[1]] or 0) + 1
			local w = p.when or {}
			if w.other or w.enemyFaction then byWho.other = byWho.other + 1 end
			if w.place then byWho.place = byWho.place + 1 end
		end
	end
	T.eq(n, 114, "frasi del pacchetto")
	T.ok(byWho.other >= 40 and byWho.place >= 40, ("per interlocutore %d, per luogo %d"):format(byWho.other, byWho.place))
	for _, ev in ipairs({ "npc_meet", "other_action", "encounter_end", "zone", "greet", "battle", "victory" }) do
		T.ok((byEvent[ev] or 0) > 0, "evento coperto: " .. ev)
	end
	for _, needed in ipairs({ "party", "raid", "pvp", "arena" }) do
		local found = false
		for _, p in pairs(Engine.byId) do
			if p.pack == "base_context" and p.when and p.when.place and p.when.place.instanceType == needed then found = true end
		end
		T.ok(found, "luogo coperto: " .. needed)
	end
end)

T.run("le frasi seguono interlocutore e luogo", function()
	Fresh()
	-- un locandiere gioviale: frasi da locandiere, mai da mercante
	Talk(295, "Innkeeper Farley", "CONFIRM_BINDER")
	local ctx = Ctx()
	local ids = {}
	for _, p in ipairs(Engine:Eligible(Engine.byEvent.npc_meet, "it", ctx, nil, time())) do ids[p.id] = true end
	T.ok(ids["ctx.npc.innkeeper"] and ids["ctx.npc.innkeeper.jovial"], "frasi del locandiere gioviale")
	T.ok(not ids["ctx.npc.merchant"] and not ids["ctx.npc.innkeeper.gruff"], "niente mercante, niente burbero")
	T.ok(not ids["ctx.npc.cheerful"], "il generico allegro esclude i locandieri")
	local rec = Engine:PickEntry("npc_meet", ctx, "say")
	T.ok(rec ~= nil and rec.id:find("^ctx%.npcv?%.innkeeper") ~= nil, "scelta: " .. tostring(rec and rec.id))
	P.npc = nil
	FIRE("GOSSIP_CLOSED")
	-- npc_meet senza un NPC dal ruolo noto: silenzio, anche a mano
	T.eq(Engine:PickEntry("npc_meet", Ctx(), "say"), nil, "nessun NPC: nessuna frase")
	-- dungeon: frasi di dungeon
	P.instance, P.instanceType, P.instanceName, P.zone, P.mapID = true, "party", "Shadowfang Keep", "Shadowfang Keep", nil
	local d = Ctx()
	local seen = {}
	for _ = 1, 30 do
		local r = Engine:PickEntry("zone", d, "say")
		if r then seen[r.id] = true end
	end
	local dungeon = 0
	for id in pairs(seen) do if id:find("^ctx%.zone%.dungeon") then dungeon = dungeon + 1 end end
	T.ok(dungeon >= 2, "entrando in un dungeon escono frasi da dungeon: " .. dungeon)
	-- fine scontro: solo con uno scontro finito davvero
	T.eq(Engine:PickEntry("encounter_end", d, "say"), nil, "nessuno scontro: nessuna frase")
	FIRE("ENCOUNTER_START", 1, "Arugal", 1, 5)
	ADVANCE(2)
	FIRE("ENCOUNTER_END", 1, "Arugal", 1, 5, 1)
	local w = Engine:PickEntry("encounter_end", Ctx(), "say")
	T.ok(w ~= nil and w.id:find("^ctx%.boss%.win"), "vittoria sul boss: " .. tostring(w and w.id))
	-- il duello: other_action con la persona
	Fresh()
	FIRE("DUEL_REQUESTED", "Brenna")
	local a = Engine:PickEntry("other_action", Ctx(Queued("other_action").extra), "say")
	T.ok(a ~= nil and a.id:find("^ctx%.act%.duel"), "frase del duello: " .. tostring(a and a.id))
	T.eq(Engine:PickEntry("other_action", Ctx(), "say"), nil, "nessuna azione: nessuna frase")
	-- saluto a una persona della fazione avversaria
	P.target = Player("Ilyas", { faction = "Alliance", race = "Human", class = "WARRIOR", hostile = true })
	local g = Ctx()
	local greet = {}
	for _, p in ipairs(Engine:Eligible(Engine.byEvent.greet, "it", g, nil, time())) do greet[p.id] = true end
	T.ok(greet["ctx.greet.enemy"] and greet["ctx.greet.warrior"], "saluto alla fazione avversaria e al guerriero")
	T.ok(not greet["ctx.greet.human"], "il 'volto di casa' solo tra persone della stessa razza")
end)

---------------------------------------------------------------------------
-- Memoria dei luoghi per mapID (issue #31)
---------------------------------------------------------------------------
local function Kinds(kind)
	local n = 0
	for _, e in ipairs(NS.cdb.memories.entries) do if e.kind == kind then n = n + 1 end end
	return n
end

T.run("#31: lo stesso mapID con un altro nome è lo stesso luogo", function()
	Fresh()
	P.zone, P.mapID = "Elwynn Forest", 1429
	ADVANCE(5); FIRE("ZONE_CHANGED_NEW_AREA")
	local m = NS.cdb.memories
	T.ok(m.places["map:1429"] ~= nil and m.places["map:1429"].name == "Elwynn Forest", "luogo per mapID")
	T.eq(Kinds("first_visit"), 1, "prima visita")
	P.zone, P.mapID = "Westfall", 1436
	ADVANCE(5); FIRE("ZONE_CHANGED_NEW_AREA")
	LEAP(3 * 86400)
	-- lo stesso luogo con il nome di un client in un'altra lingua
	P.zone, P.mapID = "Forêt d'Elwynn", 1429
	ADVANCE(5); FIRE("ZONE_CHANGED_NEW_AREA")
	T.eq(Kinds("first_visit"), 2, "nessuna nuova prima visita (solo Westfall)")
	T.eq(m.places["map:1429"].visits, 2, "è un ritorno")
	T.eq(m.places["map:1429"].name, "Forêt d'Elwynn", "il nome mostrato segue il client")
	T.eq(m.places["Forêt d'Elwynn"], nil, "nessun luogo doppio")
	local ctx = Ctx()
	T.ok(ctx.memory.repeatVisit and ctx.memory.key == "map:1429", "il contesto di memoria riconosce il luogo per chiave")
	-- senza mapID: per nome, come prima
	P.zone, P.mapID = "Durotar", nil
	ADVANCE(5); FIRE("ZONE_CHANGED_NEW_AREA")
	T.ok(m.places["Durotar"] ~= nil and m.places["Durotar"].mapID == nil, "senza mapID il nome è la chiave")
	-- poi il client dà il mapID: il luogo per nome passa al numero (adozione)
	P.zone, P.mapID = "Westfall", 1436
	ADVANCE(5); FIRE("ZONE_CHANGED_NEW_AREA")
	P.zone, P.mapID = "Durotar", 1411
	ADVANCE(700); FIRE("ZONE_CHANGED_NEW_AREA")
	T.ok(m.places["Durotar"] == nil and m.places["map:1411"] ~= nil, "adozione per nome")
	T.eq(m.places["map:1411"].visits, 2, "le visite restano")
	T.eq(Kinds("first_visit"), 3, "nessuna prima visita in più")
	-- dimenticare per nome o per chiave
	T.ok(LM:ForgetPlace("Westfall"), "dimentica per nome")
	T.ok(LM:ForgetPlace("map:1411"), "dimentica per chiave")
	T.eq(m.places["map:1436"], nil, "Westfall dimenticata")
end)

T.run("#31: migrazione versionata della memoria dei luoghi (versione 1 -> 2)", function()
	Fresh()
	Place.zones["Elwynn Forest"].verified = true
	AzerothUnspokenCharacterDB = { schemaVersion = 5, memories = { version = 1, nextId = 3,
		entries = { { id = 1, t = 100, kind = "first_visit", zone = "Elwynn Forest", importance = 3, tags = { "visit" }, source = "auto" },
			{ id = 2, t = 200, kind = "death", zone = "Durotar", importance = 4, tags = { "bad", "death" }, source = "auto" } },
		places = {
			["Elwynn Forest"] = { name = "Elwynn Forest", first = 100, last = 150, arrived = 100, visits = 3, deaths = 1 },
			["Durotar"] = { name = "Durotar", first = 200, last = 300, arrived = 200, visits = 1, deaths = 1, lastOutcome = "bad", badKind = "death", badId = 2 },
		}, flags = { first_death = { t = 200, source = "auto" } }, stats = {} } }
	Config:Load()
	LM:StartSession()
	LM:Sanitize()
	local m = AzerothUnspokenCharacterDB.memories
	T.eq(m.version, 2, "versione 2")
	T.ok(m.places["map:1429"] ~= nil and m.places["Elwynn Forest"] == nil, "nome con mapID verificato: chiave stabile")
	T.ok(m.places["map:1429"].visits == 3 and m.places["map:1429"].deaths == 1 and m.places["map:1429"].mapID == 1429, "dati conservati")
	T.eq(m.places["map:1429"].name, "Elwynn Forest", "il nome resta come etichetta")
	T.ok(m.places["Durotar"] ~= nil and m.places["Durotar"].lastOutcome == "bad", "nome senza mapID verificato: resta, con il suo esito")
	T.eq(#m.entries, 2, "i ricordi sono intatti")
	T.ok(not LM.readOnly, "non in sola lettura")
	T.eq(LM:Sanitize(), 0, "idempotente")
	Place.zones["Elwynn Forest"].verified = nil
	-- due nomi che portano allo stesso numero si uniscono
	Place.zones["Elwynn Forest"].verified = true
	NS:RegisterPlaces({ zones = { ["Elwynn"] = { map = 1429, verified = true, tags = { "forest" } } } })
	local merged = { places = { ["Elwynn Forest"] = { first = 50, last = 80, visits = 2, deaths = 0 },
		["Elwynn"] = { first = 10, last = 90, visits = 1, deaths = 2 } } }
	LM.migrations[2](merged)
	local p = merged.places["map:1429"]
	T.ok(p ~= nil and p.visits == 3 and p.deaths == 2 and p.first == 10 and p.last == 90, "unione: visite e morti sommate, date estreme")
	Place.zones["Elwynn"], Place.zones["Elwynn Forest"].verified = nil, nil
	-- dati malformati: la migrazione non rompe nulla
	local bad = { places = { [7] = "x", ["Rotta"] = "no" } }
	LM.migrations[2](bad)
	T.eq(Count(bad.places), 0, "voci malformate scartate")
	LM.migrations[2]({ places = "x" })
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
end)

---------------------------------------------------------------------------
-- Comandi e diagnostica
---------------------------------------------------------------------------
T.run("/au luogo e /au chi", function()
	Fresh()
	local out = Cmd("place")
	T.ok(out:find("Luogo: Durotar", 1, true) and out:find("1411", 1, true), "/au luogo: zona e mappa")
	T.ok(out:find("mondo aperto", 1, true) and out:find("amico", 1, true), "tipo di istanza e territorio")
	T.ok(out:find("Nessun interlocutore", 1, true), "/au luogo dice anche chi c'è davanti")
	T.ok(Cmd("place"):find("Luogo:", 1, true), "alias dove")
	P.target = { name = "Innkeeper Farley", guid = Guid(295), ctype = "Humanoid", reaction = 5 }
	local who = Cmd("who")
	T.ok(who:find("Innkeeper Farley", 1, true) and who:find("Locandiere", 1, true), "/au chi: nome e ruolo")
	T.ok(who:find("Allegro", 1, true) or who:find("allegro", 1, true), "temperamento: " .. who)
	SECRET_UNITS.target = true
	T.ok(Cmd("who"):find("nascosta", 1, true), "identità segreta")
	SECRET_UNITS = {}
	T.ok(Cmd("who trp3 on"):find("letti", 1, true) and NS.db.interlocutor.trp3Others == true, "consenso TRP3 acceso")
	T.ok(Cmd("who trp3 off"):find("non letti", 1, true) and NS.db.interlocutor.trp3Others == false, "spento")
	-- tratti scelti dall'utente per chi ha davanti (solo se è nella lista delle relazioni)
	P.target = Player("Brenna")
	T.ok(Cmd("who trait speech gruff"):find("relazioni", 1, true), "non in lista: lo dice")
	R:AddPlayer("Brenna-TestRealm", "user")
	T.ok(Cmd("who trait speech gruff"):find("Brusco", 1, true), "tratto impostato")
	local o = Ctx().other
	T.ok(o.speech == "gruff" and o.sources.speech == "user", "fonte: utente")
	T.ok(Cmd("who trait role guard"):find("Guardia", 1, true) and Ctx().other.role == "guard", "ruolo dell'utente")
	T.ok(Cmd("who trait speech -"):find("-", 1, true) and Ctx().other.speech == nil, "tolto")
	T.ok(Cmd("who trait colore rosso"):find("Uso:", 1, true), "tratto sconosciuto: l'uso")
	P.target = { name = "Innkeeper Farley", guid = Guid(295), ctype = "Humanoid", reaction = 5 }
	NS.db.locale = "en"
	T.ok(Cmd("place"):find("Place: Durotar", 1, true), "/au place in inglese")
	T.ok(Cmd("who"):find("Interlocutor:", 1, true), "/au who in inglese")
	NS.db.locale = "it"
	T.ok(Cmd("help"):find("/au place", 1, true) and Cmd("help"):find("/au who", 1, true), "nell'aiuto, con i nomi inglesi")
	T.ok(type(Place:Status()) == "string" and type(I:Status()) == "string", "stato per la diagnostica")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
end)

T.run("chiavi dell'interfaccia IT/EN", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local keys = {}
	for k in pairs(it) do
		if k:find("^place_") or k:find("^other_") or k:find("^role_") or k:find("^trait_goals") or k:find("^trait_speech") or k:find("^trait_role") then
			keys[k] = true
		end
	end
	for k in pairs(en) do
		if k:find("^place_") or k:find("^other_") or k:find("^role_") then keys[k] = true end
	end
	for k in pairs(keys) do T.ok(it[k] ~= nil and en[k] ~= nil, "chiave in entrambe le lingue: " .. k) end
	for _, a in ipairs(I.ACTIONS) do T.ok(it["other_action_" .. a] and en["other_action_" .. a], "azione: " .. a) end
	for _, r in ipairs(I.ROLES) do T.ok(it["role_" .. r] and en["role_" .. r], "ruolo: " .. r) end
	for _, t in ipairs(Place.INSTANCE_TYPES) do T.ok(it["place_instance_" .. t] and en["place_instance_" .. t], "istanza: " .. t) end
	for _, t in ipairs(Place.TERRITORIES) do T.ok(it["place_territory_" .. t] and en["place_territory_" .. t], "territorio: " .. t) end
end)
