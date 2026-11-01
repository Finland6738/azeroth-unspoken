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
	T.ok(text:find("schema 7", 1, true), "rapporto: schema")
	T.ok(text:find("Errori intercettati", 1, true), "rapporto: errori")
	-- ogni gruppo contato nei totali compare nel rapporto: "hook" e uno sconosciuto, in coda (#193)
	Compat:SetCap("hook:ProvaHook", "hook", Compat.AVAILABLE, "hooksecurefunc")
	Compat:SetCap("nuovo:ProvaNuovo", "nuovo", Compat.MISSING, "test")
	for _, verbose in ipairs({ true, false }) do
		text = table.concat(Diagnostics:Report(verbose), "\n")
		T.ok(text:find("[hook]", 1, true) and text:find("ProvaHook", 1, true), "rapporto: il gruppo hook")
		T.ok(text:find("[nuovo]", 1, true) and text:find("ProvaNuovo", 1, true), "rapporto: un gruppo non previsto")
	end
	Compat.caps["hook:ProvaHook"], Compat.caps["nuovo:ProvaNuovo"] = nil, nil
	for i = #Compat.capOrder, 1, -1 do
		if Compat.capOrder[i] == "hook:ProvaHook" or Compat.capOrder[i] == "nuovo:ProvaNuovo" then table.remove(Compat.capOrder, i) end
	end
	-- il segnaposto dei testi nascosti è in inglese, come il resto del rapporto
	T.eq(Diagnostics.HIDDEN, "<hidden>", "segnaposto in inglese")

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

	-- le parole dei comandi si leggono anche in maiuscolo
	SlashCmdList.AZEROTHUNSPOKEN("intensity 33")
	T.eq(NS.db.intensity, 33, "/au intensity")
	SlashCmdList.AZEROTHUNSPOKEN("intensity 44")
	T.eq(NS.db.intensity, 44, "/au INTENSITY (maiuscolo)")
	SlashCmdList.AZEROTHUNSPOKEN("depth ELEVATED")
	T.eq(NS.db.proseDepth, "elevated", "/au depth ELEVATED (maiuscolo)")
	SlashCmdList.AZEROTHUNSPOKEN("depth natural")
	SlashCmdList.AZEROTHUNSPOKEN("intensity 50")
end)

-- #166: the timers of the client go through Compat too
T.run("Compat.After and Compat.Ticker: timers that never raise (#166)", function()
	local fired = 0
	T.ok(Compat.After(1, function() fired = fired + 1 end), "scheduled")
	T.eq(fired, 0, "not yet")
	ADVANCE(2)
	T.eq(fired, 1, "fired after the delay")
	T.ok(not Compat.After(1, nil), "no function: nothing scheduled")
	T.ok(Compat.After("x", function() fired = fired + 1 end), "a bad delay counts as 0")
	T.ok(Compat.After(0 / 0, function() fired = fired + 1 end), "a NaN delay counts as 0")
	T.ok(Compat.After(-3, function() fired = fired + 1 end), "a negative delay counts as 0")
	ADVANCE(1)
	T.eq(fired, 4, "the three bad delays fired at once")
	local n = 0
	local ticker = Compat.Ticker(1, function() n = n + 1 end)
	T.ok(ticker ~= nil, "a ticker")
	ADVANCE(3)
	T.ok(n >= 2, "it ticks")
	if ticker and ticker.Cancel then ticker:Cancel() end
	T.eq(Compat.Ticker(1, nil), nil, "no function: no ticker")
	local saved = C_Timer
	C_Timer = nil
	T.eq(Compat.After(1, function() end), false, "without C_Timer: false, not an error")
	T.eq(Compat.Ticker(1, function() end), nil, "without C_Timer: no ticker, not an error")
	C_Timer = { After = function() error("restricted") end, NewTicker = function() error("restricted") end }
	T.eq(Compat.After(1, function() end), false, "a timer that raises: false")
	T.eq(Compat.Ticker(1, function() end), nil, "a ticker that raises: nil")
	C_Timer = saved
end)

T.run("a missing timer API does not stop the addon (#166)", function()
	local saved = C_Timer
	C_Timer = nil
	local ok, err = pcall(function()
		-- Director: the arbitration runs at once without timers
		NS.Director:Offer("zone")
		FIRE("PLAYER_REGEN_DISABLED")
		FIRE("PLAYER_LEVEL_UP", 10)
		FIRE("GROUP_ROSTER_UPDATE")
	end)
	C_Timer = saved
	T.ok(ok, "no Lua error without C_Timer: " .. tostring(err))
end)

T.run("the calls the gateway makes for the group and the instance never raise (#166)", function()
	local names = { "IsInGroup", "IsInRaid", "IsInGuild", "IsInInstance" }
	local saved = {}
	for _, n in ipairs(names) do saved[n] = _G[n] end
	for _, n in ipairs(names) do _G[n] = function() error("restricted") end end
	local ok, err = pcall(function()
		for _, ch in ipairs({ "PARTY", "RAID", "GUILD", "INSTANCE_CHAT", "SAY", "YELL", "EMOTE" }) do
			NS.Gateway:ChannelAvailable(ch)
		end
		NS.Gateway:CycleChannel()
		NS:InInstance()
	end)
	T.ok(ok, "raising group and instance calls: " .. tostring(err))
	T.eq(NS.Gateway:ChannelAvailable("PARTY"), false, "a raising IsInGroup is not a group")
	for _, n in ipairs(names) do _G[n] = function() return MakeSecret() end end
	T.eq(NS.Gateway:ChannelAvailable("RAID"), false, "a secret answer is not a raid")
	T.eq(NS:InInstance(), false, "a secret answer is not an instance")
	for _, n in ipairs(names) do _G[n] = nil end
	T.eq(NS.Gateway:ChannelAvailable("GUILD"), false, "a missing IsInGuild is false")
	T.eq(NS:InInstance(), false, "a missing IsInInstance is false")
	for _, n in ipairs(names) do _G[n] = saved[n] end
end)
