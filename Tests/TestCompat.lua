-- Test di Core/Compat.lua e Core/Diagnostics.lua
local NS = ...
local Compat, Diagnostics = NS.Compat, NS.Diagnostics
local A, M, R = Compat.AVAILABLE, Compat.MISSING, Compat.RESTRICTED

T.run("GetBuildInfo", function()
	local b = Compat:GetBuildInfo()
	T.eq(b.version, "1.60.1", "versione")
	T.eq(b.build, "70658", "build")
	T.eq(b.interface, 16001, "interface")
	T.ok(b.isCamelot, "WOW_PROJECT_CAMELOT riconosciuto")
	T.ok(b.isForever, "client Forever")
	T.eq(Compat:State("client:forever"), A, "capacità client:forever")
end)

T.run("Query e valori segreti", function()
	T.eq(Compat.Query(nil), M, "funzione assente")
	T.eq(Compat.Query("NonEsiste.Davvero"), M, "percorso assente")
	T.eq(Compat.Query(function() error("vietato") end), R, "funzione che fallisce")
	local state, v = Compat.Query(function() return 42 end)
	T.eq(state, A, "valore leggibile")
	T.eq(v, 42, "valore restituito")
	local s2, a, b = Compat.Query(function() return MakeSecret(), "ok" end)
	T.eq(s2, R, "valore segreto")
	T.eq(a, nil, "il segreto diventa nil")
	T.eq(b, "ok", "gli altri valori restano")
	T.ok(Compat.IsSecret(MakeSecret()), "IsSecret")
	T.ok(not Compat.IsSecret(0) and not Compat.IsSecret(false) and not Compat.IsSecret(nil), "non segreti")
	T.eq(Compat.Readable(MakeSecret()), nil, "Readable nasconde il segreto")

	-- client senza le funzioni dei segreti: niente errori, nulla è segreto
	local saved1, saved2, saved3 = issecretvalue, canaccessvalue, issecrettable
	issecretvalue, canaccessvalue, issecrettable = nil, nil, nil
	T.ok(not Compat.IsSecret(MakeSecret()), "senza API dei segreti")
	issecretvalue, canaccessvalue, issecrettable = saved1, saved2, saved3
end)

T.run("registrazione protetta degli eventi", function()
	local f = CreateFrame("Frame")
	T.ok(Compat:RegisterEvent(f, "PLAYER_LOGIN"), "evento valido")
	T.eq(Compat:State("event:PLAYER_LOGIN"), A, "evento valido: AVAILABLE")
	T.ok(not Compat:RegisterEvent(f, "EVENTO_INESISTENTE"), "evento sconosciuto rifiutato")
	T.eq(Compat:State("event:EVENTO_INESISTENTE"), M, "evento sconosciuto: MISSING")

	-- senza C_EventUtils: il pcall intercetta l'errore del client
	local saved = C_EventUtils
	C_EventUtils = nil
	T.ok(not Compat:RegisterEvent(f, "ALTRO_INESISTENTE"), "senza IsEventValid")
	T.eq(Compat:State("event:ALTRO_INESISTENTE"), M, "errore del client: MISSING")
	T.ok(Compat:RegisterEvent(f, "PLAYER_LOGIN", "player"), "RegisterUnitEvent")
	C_EventUtils = saved

	-- gli eventi del bus registrati all'avvio
	T.eq(Compat:State("event:ZONE_CHANGED_NEW_AREA"), A, "evento del bus")
	T.eq(Compat:State("event:UNIT_HEALTH"), A, "evento per unità del bus")
end)

T.run("restrizioni", function()
	T.ok(not Compat:IsRestricted("Combat"), "nessuna restrizione")
	RESTRICTIONS.Combat = 1
	T.ok(Compat:IsRestricted("Combat"), "restrizione di combattimento")
	T.eq(Compat:ActiveRestriction(), "Combat", "restrizione attiva")
	Compat:Probe()
	T.eq(Compat:State("restriction:Combat"), R, "matrice: Combat RESTRICTED")
	T.eq(Compat:State("restriction:Encounter"), A, "matrice: Encounter AVAILABLE")
	RESTRICTIONS.Combat = nil
	local saved = C_RestrictedActions
	C_RestrictedActions = nil
	T.eq(Compat:RestrictionState("Combat"), nil, "API assente")
	Compat:Probe()
	T.eq(Compat:State("restriction:Combat"), M, "matrice: API assente MISSING")
	C_RestrictedActions = saved
	Compat:Probe()
end)

T.run("matrice delle capacità", function()
	P.hp = MakeSecret()
	P.target = { name = "Segreto", ctype = "Beast", hostile = true, level = 10 }
	SECRET_UNITS.target = true
	Compat:Probe()
	T.eq(Compat:State("api:GetBuildInfo"), A, "api presente")
	T.eq(Compat:State("api:C_GossipInfo.GetText"), M, "api assente")
	T.eq(Compat:State("api:SendChatMessage"), A, "invio chat con alternativa")
	T.eq(Compat:State("value:player.health"), R, "salute segreta")
	T.eq(Compat:State("value:zone"), A, "zona leggibile")
	T.eq(Compat:State("value:target.identity"), R, "identità del bersaglio segreta")
	T.eq(Compat:State("chat:say.openWorld"), R, "/say nel mondo aperto limitato")
	T.eq(Compat:State("integration:totalRP3"), M, "TRP3 assente")

	-- il contesto non usa i valori segreti
	local ctx = NS:BuildContext()
	T.eq(ctx.hp, nil, "hp segreto escluso dal contesto")
	T.eq(ctx.target, nil, "nome del bersaglio segreto escluso")
	T.ok(ctx.hasTarget, "il bersaglio esiste comunque")
	P.hp, P.target, SECRET_UNITS.target = 100, nil, nil
	Compat:Probe()
	T.eq(Compat:State("value:target.identity"), M, "nessun bersaglio")

	local matrix, totals = Diagnostics:CapabilityMatrix()
	T.ok(matrix.api and matrix.api.AVAILABLE and #matrix.api.AVAILABLE > 10, "gruppo api")
	T.ok(matrix.event and matrix.event.AVAILABLE, "gruppo event")
	T.ok(totals.AVAILABLE > 20 and totals.MISSING > 0 and totals.RESTRICTED > 0, "totali per stato")
end)

T.run("Total RP 3 facoltativo", function()
	T.eq(NS:BuildContext().player, "Garrosh", "senza TRP3: nome del personaggio")
	AddOn_TotalRP3 = { Player = { GetCurrentUser = function()
		return { GetFirstName = function() return "Grommash il Saggio" end }
	end } }
	Compat:Probe()
	T.eq(Compat:State("integration:totalRP3"), A, "TRP3 presente")
	T.eq(NS:BuildContext().player, "Grommash il Saggio", "nome dal profilo TRP3")
	NS.db.modules.totalRP3 = false
	T.eq(NS:BuildContext().player, "Garrosh", "modulo TRP3 spento")
	NS.db.modules.totalRP3 = true
	-- API cambiata: nessun errore, si torna al nome del personaggio
	AddOn_TotalRP3 = { Player = { GetCurrentUser = function() error("API cambiata") end } }
	T.eq(NS:BuildContext().player, "Garrosh", "TRP3 rotto")
	Compat:Probe()
	T.eq(Compat:State("integration:totalRP3"), M, "TRP3 rotto: MISSING")
	AddOn_TotalRP3 = nil
end)

T.run("Diagnostics", function()
	local before = #Diagnostics.errors
	local function Boom() error("boom") end
	local ok = Diagnostics:Guard("test", Boom)
	T.ok(not ok, "Guard intercetta l'errore")
	Diagnostics:Guard("test", Boom)
	T.eq(#Diagnostics.errors, before + 1, "errori uguali raggruppati")
	T.eq(Diagnostics.errors[#Diagnostics.errors].count, 2, "conteggio")
	local ok2, v = Diagnostics:Guard("test", function(a, b) return a + b end, 2, 3)
	T.ok(ok2 and v == 5, "Guard passa argomenti e risultati")
	for i = 1, 40 do Diagnostics:Error("flood", "errore " .. i) end
	T.eq(#Diagnostics.errors, 30, "errori limitati a 30")

	local text = table.concat(Diagnostics:Report(true), "\n")
	T.ok(text:find("Interface 16001", 1, true), "rapporto: build")
	T.ok(text:find("[api]", 1, true) and text:find("[event]", 1, true), "rapporto: gruppi")
	T.ok(text:find("GetBuildInfo", 1, true), "rapporto dettagliato: id delle capacità")
	T.ok(text:find("schema 6", 1, true), "rapporto: schema")
	T.ok(text:find("Errori intercettati", 1, true), "rapporto: errori")

	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("debug")
	T.ok(T.sentContains("Capacità"), "/au debug")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("debug trace")
	FIRE("PLAYER_TARGET_CHANGED")
	T.ok(T.sentContains("TARGET_CHANGED"), "/au debug trace mostra gli eventi")
	SlashCmdList.AZEROTHUNSPOKEN("debug trace")
	T.ok(not Diagnostics.trace, "trace spento")
end)

T.run("minuscole sicure per UTF-8 (issue #26)", function()
	T.eq(NS.Lower("Curiosità"), "curiosità", "lettera accentata intatta")
	T.eq(NS.Lower("INTENSITÀ"), "intensità", "À maiuscola abbassata")
	T.eq(NS.Lower("Élan ÞÖ×"), "élan þö×", "Latin-1 abbassato, × invariato")
	T.eq(NS.Lower("Dun Morogh"), "dun morogh", "ASCII")
	T.eq(NS.Lower("日本 «Ç»"), "日本 «ç»", "altri alfabeti e segni invariati")
	T.eq(NS.Lower(12), "12", "valore non testuale")
	T.eq(NS.Upper("città ÷ é"), "CITTÀ ÷ É", "maiuscole")
	T.eq(NS.Traits.Lower("Perché"), "perché", "Traits.Lower resta valido")

	-- il comando con la lettera accentata funziona anche in maiuscolo
	SlashCmdList.AZEROTHUNSPOKEN("Intensità 33")
	T.eq(NS.db.intensity, 33, "/au intensità")
	SlashCmdList.AZEROTHUNSPOKEN("INTENSITÀ 44")
	T.eq(NS.db.intensity, 44, "/au INTENSITÀ")
	SlashCmdList.AZEROTHUNSPOKEN("profondità ELEVATO")
	T.eq(NS.db.proseDepth, "elevated", "/au profondità")
	SlashCmdList.AZEROTHUNSPOKEN("profondità naturale")
	SlashCmdList.AZEROTHUNSPOKEN("intensità 50")
end)
