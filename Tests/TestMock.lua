-- Test del client finto (Tests/MockWoWAPI.lua): serve a far emergere i bug, quindi si prova che si comporti
-- come il client vero dove la differenza nascondeva errori (issue #12): timer veri, unità, incursione, invio protetto.
local NS = ...

-- i timer dell'addon (il ticker del pulsante) sono sempre in coda: si conta rispetto a quelli di partenza
ADVANCE(10)   -- i timer a scatto unico dell'avvio (procedura guidata) sono già scaduti
local BASE = PENDING_TIMERS()

local function ErrorCount()
	local n = 0
	for _, e in ipairs(NS.Diagnostics.errors) do n = n + e.count end
	return n
end

T.run("timer: C_Timer.After scatta solo quando passa il tempo, in ordine", function()
	local log = {}
	C_Timer.After(3, function() table.insert(log, "tre@" .. GetTime()) end)
	C_Timer.After(1, function() table.insert(log, "uno@" .. GetTime()) end)
	C_Timer.After(2, function() table.insert(log, "due@" .. GetTime()) end)
	T.eq(#log, 0, "nulla subito: il timer non è sincrono")
	local t0 = GetTime()
	ADVANCE(1.5)
	T.eq(#log, 1, "dopo 1,5 s è scaduto solo il primo")
	T.eq(log[1], "uno@" .. (t0 + 1), "GetTime() alla scadenza, non alla fine dell'avanzamento")
	ADVANCE(10)
	T.eq(table.concat(log, " "), "uno@" .. (t0 + 1) .. " due@" .. (t0 + 2) .. " tre@" .. (t0 + 3), "ordine di scadenza")
	T.eq(GetTime(), t0 + 11.5, "il tempo è avanzato di quanto richiesto")
	T.eq(PENDING_TIMERS(), BASE, "nessun timer di prova rimasto in coda")
	-- un timer che ne crea un altro: scatta anche quello, se scade nell'intervallo
	local order = {}
	C_Timer.After(1, function()
		table.insert(order, "a")
		C_Timer.After(1, function() table.insert(order, "b") end)
	end)
	ADVANCE(5)
	T.eq(table.concat(order), "ab", "timer annidati")
	-- ritardo zero: scatta al prossimo avanzamento, non subito
	local fired = false
	C_Timer.After(0, function() fired = true end)
	T.ok(not fired, "ritardo 0: non immediato")
	ADVANCE(0)
	T.ok(fired, "ma scatta con ADVANCE(0)")
end)

T.run("timer: NewTicker si ripete e si ferma con Cancel", function()
	local n = 0
	local ticker = C_Timer.NewTicker(2, function() n = n + 1 end)
	ADVANCE(1)
	T.eq(n, 0, "non ancora")
	ADVANCE(1)
	T.eq(n, 1, "dopo 2 s")
	ADVANCE(6)
	T.eq(n, 4, "ogni 2 s")
	ticker:Cancel()
	ADVANCE(10)
	T.eq(n, 4, "fermo dopo Cancel")
	T.eq(PENDING_TIMERS(), BASE, "il ticker non resta in coda")
end)

T.run("l'ora del gioco e il tempo dei timer avanzano insieme", function()
	local e0, g0 = time(), GetTime()
	ADVANCE(90)
	T.eq(time() - e0, 90, "time()")
	T.eq(GetTime() - g0, 90, "GetTime()")
end)

T.run("unità: player e target sono distinti", function()
	local saved = P.target
	P.name, P.class, P.race, P.faction, P.level = "Garrosh", "WARRIOR", "Orc", "Horde", 30
	P.target = { name = "Jaina", class = "MAGE", race = "Human", faction = "Alliance", level = 60, player = true, hostile = true,
		dead = true, ctype = "Humanoid", cls = "elite", guid = "Player-9-0000ABCD" }
	T.eq(UnitName("player"), "Garrosh", "nome del giocatore")
	T.eq(UnitName("target"), "Jaina", "nome del bersaglio")
	T.eq(select(2, UnitClass("player")), "WARRIOR", "classe del giocatore")
	T.eq(select(2, UnitClass("target")), "MAGE", "classe del bersaglio")
	T.eq(UnitFactionGroup("player"), "Horde", "fazione del giocatore")
	T.eq(UnitFactionGroup("target"), "Alliance", "fazione del bersaglio")
	T.eq(UnitLevel("player"), 30, "livello del giocatore")
	T.eq(UnitLevel("target"), 60, "livello del bersaglio")
	T.ok(UnitIsPlayer("player"), "il giocatore è un giocatore")
	T.ok(UnitIsPlayer("target"), "il bersaglio è un giocatore (qui)")
	T.ok(not UnitIsDead("player"), "il giocatore è vivo")
	T.ok(UnitIsDead("target"), "il bersaglio è morto")
	T.ok(UnitCanAttack("player", "target"), "il giocatore può attaccare il bersaglio")
	T.ok(not UnitCanAttack("player", "player"), "non può attaccare se stesso")
	T.eq(UnitGUID("player"), "Player-1-00000001", "GUID del giocatore")
	T.eq(UnitGUID("target"), "Player-9-0000ABCD", "GUID del bersaglio")
	T.eq(UnitCreatureType("player"), nil, "il giocatore non ha un tipo di creatura")
	T.eq(UnitCreatureType("target"), "Humanoid", "tipo del bersaglio")
	T.ok(UnitExists("player") and UnitExists("target"), "esistono")
	T.ok(not UnitExists("focus"), "un'unità sconosciuta non esiste")
	T.eq(UnitName("focus"), nil, "e non ha un nome")
	P.target = nil
	T.ok(not UnitExists("target"), "senza bersaglio non esiste")
	T.eq(UnitName("target"), nil, "e non ha un nome")
	T.eq(UnitClass("target"), nil, "né una classe (nessun errore)")
	T.ok(not UnitIsPlayer("target"), "né è un giocatore")
	-- l'identità segreta restituisce segreti solo per quell'unità
	P.target = { name = "Jaina", class = "MAGE", race = "Human", faction = "Alliance", level = 60, player = true }
	SECRET_UNITS.target = true
	T.ok(issecretvalue(UnitName("target")), "nome del bersaglio segreto")
	T.ok(not issecretvalue(UnitName("player")), "nome del giocatore leggibile")
	SECRET_UNITS = {}
	P.target = saved
	P.name, P.class, P.race, P.faction = "Garrosh", "WARRIOR", "Orc", "Horde"
end)

T.run("un valore segreto usato in un calcolo o in un confronto d'ordine solleva un errore", function()
	local s = MakeSecret()
	T.ok(not pcall(function() return s + 1 end), "somma")
	T.ok(not pcall(function() return s < s end), "confronto d'ordine")
	T.ok(not pcall(function() return s .. "x" end), "concatenazione")
	T.ok(not pcall(function() return s.campo end), "campo")
	T.ok(issecretvalue(s), "ma si riconosce come segreto")
	T.eq(tostring(s), "<secret>", "e si stampa")
end)

T.run("incursione e gruppo", function()
	P.group, P.raid = false, false
	T.ok(not IsInRaid() and not IsInGroup(), "solo")
	P.raid = true
	T.ok(IsInRaid(), "IsInRaid segue P.raid")
	T.ok(NS.Gateway:ChannelAvailable("RAID"), "il canale RAID è disponibile in incursione")
	T.eq(NS:BuildContext().group, "raid", "il contesto lo vede")
	P.raid, P.group = false, true
	T.ok(not IsInRaid() and IsInGroup(), "gruppo senza incursione")
	T.ok(not NS.Gateway:ChannelAvailable("RAID"), "RAID non disponibile")
	T.eq(NS:BuildContext().group, "party", "contesto: gruppo")
	P.group = false
end)

T.run("SendChatMessage: senza gesto passano solo le emote (e /say, /yell nelle istanze)", function()
	local send = C_ChatInfo.SendChatMessage
	HW = false
	P.instance = false
	SENT = {}
	-- come nel client (#55): l'invio vietato non solleva un errore Lua, non ha effetto, conta un blocco e fa partire
	-- ADDON_ACTION_FORBIDDEN con il nome della funzione
	local heard = {}
	local f = CreateFrame("Frame")
	f:RegisterEvent("ADDON_ACTION_FORBIDDEN")
	f:RegisterEvent("ADDON_ACTION_BLOCKED")
	f:SetScript("OnEvent", function(_, ev, who, fn) table.insert(heard, ev .. ":" .. tostring(who) .. ":" .. tostring(fn)) end)
	local function Out()   -- i messaggi usciti in chat (non le stampe dell'addon)
		local n = 0
		for _, s in ipairs(SENT) do if s:sub(1, 6) ~= "PRINT:" then n = n + 1 end end
		return n
	end
	local function Blocked(kind)
		local n, sent = BLOCKED_SENDS, Out()
		T.ok(pcall(send, "x", kind), kind .. ": nessun errore Lua")
		return BLOCKED_SENDS == n + 1 and Out() == sent
	end
	T.ok(pcall(send, "e", "EMOTE") and SENT[1] == "EMOTE: e", "EMOTE senza gesto passa")
	for _, kind in ipairs({ "SAY", "YELL", "PARTY", "RAID", "GUILD", "INSTANCE_CHAT" }) do
		T.ok(Blocked(kind), kind .. " senza gesto: bloccato in silenzio")
	end
	T.eq(#heard, 6, "un evento per ogni invio bloccato")
	T.eq(heard[1], "ADDON_ACTION_FORBIDDEN:AzerothUnspoken:SendChatMessage", "evento con l'addon e la funzione")
	P.instance = true
	T.ok(pcall(send, "x", "SAY"), "SAY in istanza passa")
	T.ok(pcall(send, "x", "YELL"), "YELL in istanza passa")
	for _, kind in ipairs({ "PARTY", "RAID", "GUILD", "INSTANCE_CHAT" }) do
		T.ok(Blocked(kind), kind .. " in istanza senza gesto: bloccato")
	end
	P.instance = false
	HW = true
	local before = BLOCKED_SENDS
	for _, kind in ipairs({ "SAY", "YELL", "PARTY", "RAID", "GUILD", "INSTANCE_CHAT", "EMOTE" }) do
		T.ok(pcall(send, "x", kind), kind .. " con il gesto passa")
	end
	T.eq(BLOCKED_SENDS, before, "con il gesto nessun blocco")
	HW = false
	-- un errore Lua vero del client, a parte
	SEND_RAISES = true
	T.ok(not pcall(send, "x", "EMOTE"), "SEND_RAISES: errore Lua")
	SEND_RAISES = false
	SENT = {}
end)

T.run("se il controllo del Gateway sparisse, il mock fermerebbe comunque i canali protetti", function()
	local Gateway = NS.Gateway
	local saved = Gateway.CanSendWithoutAction
	Gateway.CanSendWithoutAction = function() return true end   -- guasto simulato
	P.instance, P.group, HW = false, true, false
	NS.db.chat.floodSeconds = 1
	Gateway.sendLog = {}
	ADVANCE(10)
	local before, blocked, total = ErrorCount(), BLOCKED_SENDS, Gateway.sentTotal or 0
	local ok, why = Gateway:Send("ciao", "PARTY")
	T.ok(not ok and why == "blocked", "PARTY fuori da un gesto: il client (mock) blocca, e l'addon se ne accorge")
	ok, why = Gateway:Send("ciao", "YELL")
	T.ok(not ok and why == "blocked", "YELL fuori da un gesto nel mondo aperto: bloccato")
	T.eq(BLOCKED_SENDS, blocked + 2, "due invii bloccati dal client")
	T.eq(Gateway.sentTotal or 0, total, "e non contati come inviati")
	T.eq(ErrorCount(), before, "il blocco non è un errore Lua")
	Gateway.CanSendWithoutAction = saved
	P.group = false
end)
