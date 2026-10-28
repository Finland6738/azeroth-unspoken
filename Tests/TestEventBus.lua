-- Test di Core/EventBus.lua: envelope del GDD §11.3, deduplicazione, coda, sorgenti WoW
local NS = ...
local Bus, Compat, Diagnostics = NS.EventBus, NS.Compat, NS.Diagnostics
local A, M, R = Compat.AVAILABLE, Compat.MISSING, Compat.RESTRICTED

local function Last() return Bus.recent[#Bus.recent] end

T.run("envelope", function()
	local got
	Bus:Subscribe("TEST_ENV", "test", function(env) got = env end)
	local env = Bus:Publish("TEST_ENV", { a = 1, hp = MakeSecret() }, { expect = { "a", "b" } })
	T.ok(got == env, "consegnato")
	T.eq(env.type, "TEST_ENV", "type")
	T.eq(env.timestamp, GetTime(), "timestamp")
	T.eq(env.source, "ADDON", "source predefinita")
	T.eq(env.context.a, 1, "contesto")
	T.eq(env.fields.a, A, "campo presente")
	T.eq(env.fields.b, M, "campo atteso assente")
	T.eq(env.context.hp, nil, "valore segreto escluso")
	T.eq(env.fields.hp, R, "campo segreto")
	env = Bus:Publish("TEST_ENV", nil, { source = Bus.SOURCE.USER, fields = { x = R } })
	T.eq(env.source, "USER", "source esplicita")
	T.eq(env.fields.x, R, "stato noto passato dalla sorgente")
end)

T.run("deduplicazione", function()
	local n = 0
	Bus:Subscribe("TEST_DUP", "test", function() n = n + 1 end)
	local before = Bus.stats.deduplicated
	T.ok(Bus:Publish("TEST_DUP", nil, { key = "k" }), "primo")
	T.eq(Bus:Publish("TEST_DUP", nil, { key = "k" }), nil, "doppione scartato")
	T.ok(Bus:Publish("TEST_DUP", nil, { key = "altra" }), "chiave diversa")
	ADVANCE(2)
	T.ok(Bus:Publish("TEST_DUP", nil, { key = "k" }), "dopo la finestra")
	T.ok(Bus:Publish("TEST_DUP") and Bus:Publish("TEST_DUP"), "senza chiave nessuna deduplicazione")
	T.eq(n, 5, "consegne")
	T.eq(Bus.stats.deduplicated, before + 1, "contatore")
	Bus.dedupWindow.TEST_WIN = 10
	T.ok(Bus:Publish("TEST_WIN"), "finestra per tipo")
	T.eq(Bus:Publish("TEST_WIN"), nil, "finestra per tipo: doppione")
end)

T.run("errori isolati", function()
	local reached = false
	Bus:Subscribe("TEST_ERR", "rotto", function() error("gestore rotto") end)
	Bus:Subscribe("TEST_ERR", "sano", function() reached = true end)
	local errors = #Diagnostics.errors
	Bus:Publish("TEST_ERR")
	T.ok(reached, "l'altro gestore riceve l'evento")
	T.eq(#Diagnostics.errors, errors + 1, "errore annotato")
	T.eq(Diagnostics.errors[#Diagnostics.errors].module, "event:TEST_ERR:rotto", "modulo dell'errore")
	Bus:Unsubscribe("TEST_ERR", "rotto")
	Bus:Publish("TEST_ERR")
	T.eq(#Diagnostics.errors, errors + 1, "Unsubscribe")
end)

T.run("coda senza ricorsione", function()
	local order = {}
	Bus:Subscribe("TEST_A", "test", function()
		table.insert(order, "A-inizio")
		Bus:Publish("TEST_B")
		table.insert(order, "A-fine")
	end)
	Bus:Subscribe("TEST_B", "test", function() table.insert(order, "B") end)
	Bus:Publish("TEST_A")
	T.eq(table.concat(order, ","), "A-inizio,A-fine,B", "B dopo A")

	local count, dropped = 0, Bus.stats.dropped
	Bus:Subscribe("TEST_FLOOD", "test", function()
		for i = 1, 40 do Bus:Publish("TEST_ITEM", { i = i }) end
	end)
	Bus:Subscribe("TEST_ITEM", "test", function() count = count + 1 end)
	Bus:Publish("TEST_FLOOD")
	T.eq(count, 32, "coda limitata")
	T.eq(Bus.stats.dropped, dropped + 8, "eventi in eccesso scartati")
end)

T.run("abbonamento a tutti gli eventi", function()
	local seen = {}
	Bus:Subscribe("*", "test", function(env) seen[env.type] = true end)
	Bus:Publish("TEST_STAR1"); Bus:Publish("TEST_STAR2")
	T.ok(seen.TEST_STAR1 and seen.TEST_STAR2, "ricevuti")
	Bus:Unsubscribe("*", "test")
	T.eq(#Bus:Recent(5), 5, "Recent")
	T.eq(Bus:Recent(1)[1].type, "TEST_STAR2", "Recent dal più recente")
end)

T.run("sorgenti WoW", function()
	ADVANCE(10)
	P.zone = "Duskwood"
	FIRE("ZONE_CHANGED_NEW_AREA")
	local env = Last()
	T.eq(env.type, "ZONE_ENTER", "zona normalizzata")
	T.eq(env.source, "WOW_API", "source WoW")
	T.eq(env.context.zone, "Duskwood", "nome della zona")
	T.eq(env.fields.zone, A, "zona disponibile")
	local published = Bus.stats.published
	FIRE("ZONE_CHANGED_NEW_AREA")
	T.eq(Bus.stats.published, published, "stessa zona subito dopo: doppione")
	T.eq(Bus.rawSeen.ZONE_CHANGED_NEW_AREA, 2, "conteggio eventi WoW")

	P.zone = MakeSecret()
	ADVANCE(10)
	FIRE("ZONE_CHANGED_NEW_AREA")
	T.eq(Last().fields.zone, R, "zona nascosta")
	P.zone = "Duskwood"

	ADVANCE(10)
	P.hp = MakeSecret()
	FIRE("UNIT_HEALTH", "player")
	T.eq(Last().type, "HEALTH_CHANGED", "salute")
	T.eq(Last().fields.hp, R, "salute segreta")
	T.eq(Last().context.hp, nil, "nessun valore segreto nel contesto")
	P.hp = 20
	FIRE("UNIT_HEALTH", "player")
	T.eq(Last().context.hp, 0.2, "salute leggibile")
	FIRE("UNIT_HEALTH", "target")
	T.eq(Last().context.hp, 0.2, "altre unità ignorate")
	P.hp = 100

	SPELLS[133] = "Fireball"
	FIRE("UNIT_SPELLCAST_SENT", "player", "Gnoll", "cast-1", 133)
	T.eq(Last().type, "SPELL_SENT", "incantesimo inviato")
	T.eq(Last().context.target, "Gnoll", "bersaglio dell'incantesimo")
	FIRE("UNIT_SPELLCAST_SUCCEEDED", "player", "cast-1", 133)
	T.eq(Last().type, "SPELL_CAST", "incantesimo")
	T.eq(Last().context.spell, "Fireball", "nome dell'incantesimo")
	published = Bus.stats.published
	FIRE("UNIT_SPELLCAST_SUCCEEDED", "player", "cast-1", 133)
	T.eq(Bus.stats.published, published, "stesso castGUID: doppione")

	FIRE("PLAYER_LEVEL_UP", 31)
	T.eq(Last().type, "LEVEL_UP", "livello")
	T.eq(Last().context.level, 31, "nuovo livello")
	FIRE("PLAYER_DEAD")
	T.eq(Last().type, "PLAYER_DEATH", "morte")
	FIRE("PLAYER_ALIVE")
	T.eq(Last().type, "PLAYER_REVIVE", "ritorno in vita")
	FIRE("ADDON_RESTRICTION_STATE_CHANGED", 0, 1)
	T.eq(Last().type, "RESTRICTION_CHANGED", "restrizione")
end)

T.run("sorgente inesistente nel client", function()
	local errors = #Diagnostics.errors
	Bus:AddSource("EVENTO_CHE_NON_ESISTE", { normalize = function() return "MAI" end })
	T.eq(Compat:State("event:EVENTO_CHE_NON_ESISTE"), M, "segnato MISSING")
	T.eq(#Diagnostics.errors, errors, "nessun errore")

	Bus:AddSource("PLAYER_LOGIN", { normalize = function() error("normalizzatore rotto") end })
	FIRE("PLAYER_LOGIN")
	T.eq(#Diagnostics.errors, errors + 1, "errore del normalizzatore isolato")
end)
