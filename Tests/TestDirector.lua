-- Test di Systems/Director.lua (punto di aggancio del Narrative Director) e del suo uso in Triggers
local NS = ...
local Director, Narrator, Gateway = NS.Director, NS.Narrator, NS.Gateway

-- the per-session quotas of the categories (#91) cap combat whatever the intensity and the pauses: these tests measure
-- the gate, the pauses and the dice, so the quotas are off here (Tests/TestSelection.lua tests them)
NS.Engine.QUOTAS = {}

local function Reset()
	SENT = {}
	HW = false
	NS.paused = false
	NS.db.enabled = true
	NS.db.intensity = 50
	NS.db.chat.mode = "PRIVATE"
	NS.db.pacing.globalCooldownSeconds = 45
	NS.db.chance = {}
	-- these tests count the lines of the fights as they are said: "show" (#185 holds them by default, TestChatGateway)
	NS.db.pacing.inCombat = "show"
	Gateway.combatHeld = { lines = {} }
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.ui.narrator.historySize = 100
	Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	ADVANCE(1000)
end

-- l'inizio di un combattimento: la frase di battaglia arriva dopo 0,3 s, a combattimento ancora in corso
local function CombatStart(wait)
	P.combat = true; FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(wait or 1)
end

-- una serie di combattimenti nel mondo aperto: quante frasi produce il narratore?
local function Fights(n)
	local before = #Narrator.history
	for _ = 1, n do
		ADVANCE(200)
		CombatStart()
		P.combat = false; FIRE("PLAYER_REGEN_ENABLED")
	end
	return #Narrator.history - before
end

T.run("scala dell'intensità", function()
	local c, d = Director:Scale(50)
	T.eq(c, 1, "50: probabilità invariata"); T.eq(d, 1, "50: pause invariate")
	c, d = Director:Scale(0)
	T.eq(c, 0, "0: silenzio"); T.eq(d, 1.5, "0: pause lunghe")
	c, d = Director:Scale(100)
	T.eq(c, 2, "100: probabilità doppia"); T.eq(d, 0.5, "100: pause dimezzate")
	c = Director:Scale(250)
	T.eq(c, 2, "limitata a 100")
	c = Director:Scale(-5)
	T.eq(c, 0, "limitata a 0")
	c = Director:Scale(nil)
	T.eq(c, 1, "assente: 50")
end)

T.run("Evaluate", function()
	Reset()
	local v = Director:Evaluate("battle")
	T.ok(v.allow and v.chanceMul == 1 and v.cooldownMul == 1, "intensità 50: via libera")
	NS.db.enabled = false
	v = Director:Evaluate("battle")
	T.ok(not v.allow and v.reason == "disabled", "addon spento")
	NS.db.enabled = true
	NS.paused = true
	v = Director:Evaluate("battle")
	T.ok(not v.allow and v.reason == "paused", "in pausa")
	NS.paused = false
	NS.db.intensity = 0
	v = Director:Evaluate("levelup")
	T.ok(not v.allow and v.reason == "silent", "intensità 0: anche i momenti importanti tacciono")
	NS.db.intensity = 20
	v = Director:Evaluate("battle")
	T.ok(v.allow and v.chanceMul == 0.4, "intensità 20: probabilità 0.4")
	v = Director:Evaluate("levelup")
	T.ok(v.allow and v.chanceMul == 1, "i momenti importanti non scendono sotto il valore medio")
	NS.db.intensity = 50
	NS.db.modules.world = false
	v = Director:Evaluate("zone")
	T.ok(not v.allow and v.reason == "module:world", "modulo Mondo spento: niente luoghi")
	v = Director:Evaluate("battle")
	T.ok(v.allow, "il resto continua")
	NS.db.modules.world, NS.db.modules.personal = true, false
	v = Director:Evaluate("battle")
	T.ok(not v.allow and v.reason == "module:personal", "modulo Personale spento: niente battaglia")
end)

T.run("l'intensità scala la frequenza", function()
	Reset()
	math.randomseed(11)
	NS.db.chance.battle, NS.db.chance.victory = 50, 50
	NS.db.intensity = 20
	local low = Fights(80)
	Reset()
	math.randomseed(11)
	NS.db.chance.battle, NS.db.chance.victory = 50, 50
	NS.db.intensity = 50
	local mid = Fights(80)
	Reset()
	math.randomseed(11)
	NS.db.chance.battle, NS.db.chance.victory = 50, 50
	NS.db.intensity = 100
	local high = Fights(80)
	T.ok(low < mid and mid < high, ("più intensità, più frasi: %d < %d < %d"):format(low, mid, high))
	T.ok(high >= 78, "a 100 la probabilità effettiva è piena (una frase a combattimento): " .. high)
	Reset()
	NS.db.chance.battle, NS.db.chance.victory = 100, 100
	NS.db.intensity = 0
	T.eq(Fights(20), 0, "intensità 0: nessuna frase spontanea")
end)

T.run("la pausa scala con l'intensità", function()
	Reset()
	NS.db.chance.battle, NS.db.chance.victory = 100, 100
	NS.db.pacing.globalCooldownSeconds = 60
	-- due eventi a 40 s l'uno dall'altro: a intensità 50 il secondo è bloccato dalla pausa di 60 s, a 100 passa (30 s)
	local function Pair()
		CombatStart(); P.combat = false
		local n = #Narrator.history
		ADVANCE(39)
		CombatStart(); P.combat = false
		return #Narrator.history - n
	end
	NS.db.intensity = 50
	NS.db.chance.battle = 100
	NS.EVENT_COOLDOWN.battle = 0
	T.eq(Pair(), 0, "intensità 50: la pausa blocca")
	ADVANCE(500)
	NS.db.intensity = 100
	T.eq(Pair(), 1, "intensità 100: pause dimezzate")
end)

T.run("pausa immediata e richieste dirette", function()
	Reset()
	NS.db.chance.battle = 100
	NS.EVENT_COOLDOWN.battle = 0
	NS.db.pacing.globalCooldownSeconds = 0
	Director:SetPaused(true)
	T.eq(Fights(5), 0, "in pausa nessuna frase spontanea")
	T.ok(NS:Trigger("greet"), "le richieste esplicite funzionano")
	Director:SetPaused(false)
	T.ok(Fights(3) > 0, "ripresa")
	local on = Director:TogglePause()
	T.ok(on and NS.paused, "TogglePause accende")
	T.ok(T.sentContains("pausa") or T.sentContains("paused"), "con un messaggio")
	Director:TogglePause()
	T.ok(not NS.paused, "e spegne")
end)

T.run("i moduli filtrano gli eventi", function()
	Reset()
	NS.db.chance.zone, NS.db.chance.battle, NS.db.chance.victory = 100, 100, 100
	NS.db.pacing.globalCooldownSeconds = 0
	NS.EVENT_COOLDOWN.zone, NS.EVENT_COOLDOWN.battle = 0, 0
	NS.db.modules.world = false
	local before = #Narrator.history
	for _, zone in ipairs({ "Duskwood", "Westfall", "Elwynn Forest" }) do
		P.zone = zone
		ADVANCE(200)
		FIRE("ZONE_CHANGED_NEW_AREA")
	end
	T.eq(#Narrator.history, before, "modulo Mondo spento: i luoghi tacciono")
	T.ok(Fights(3) > 0, "ma la battaglia parla")
	NS.db.modules.world = true
	for _, zone in ipairs({ "Duskwood", "Westfall", "Elwynn Forest" }) do
		P.zone = zone
		ADVANCE(200)
		FIRE("ZONE_CHANGED_NEW_AREA")
	end
	T.ok(#Narrator.history > before, "modulo Mondo acceso: i luoghi parlano")
end)

T.run("il percorso automatico non invia mai in chat con i predefiniti", function()
	Reset()
	NS.db.chance.battle, NS.db.chance.victory = 100, 100
	Fights(30)
	for _, s in ipairs(SENT) do
		T.ok(s:find("^PRINT:"), "solo messaggi locali: " .. s)
	end
	T.eq(Gateway:GetPending(), nil, "e nessuna proposta pubblica")
end)

T.run("i ritardi dei trigger: pausa, modalità e combattimento letti alla scadenza (timer veri)", function()
	Reset()
	NS.db.chance.battle, NS.db.chance.levelup, NS.db.chance.rez = 100, 100, 100
	NS.db.pacing.globalCooldownSeconds = 0
	NS.EVENT_COOLDOWN.battle = 0
	local n = #Narrator.history

	-- la frase non arriva subito: serve il tempo
	P.combat = true; FIRE("PLAYER_REGEN_DISABLED")
	T.eq(#Narrator.history, n, "nessuna frase prima dei 0,3 s")
	T.ok(PENDING_TIMERS() >= 1, "il timer è in coda")
	ADVANCE(0.5)
	T.eq(#Narrator.history, n + 1, "la frase arriva dopo l'attesa")
	P.combat = false; FIRE("PLAYER_REGEN_ENABLED")

	-- pausa immediata durante l'attesa: vale al momento di parlare, non a quello dell'evento
	ADVANCE(300)
	n = #Narrator.history
	P.combat = true; FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(0.1)
	Director:SetPaused(true)
	ADVANCE(1)
	T.eq(#Narrator.history, n, "pausa arrivata durante l'attesa: nessuna frase")
	Director:SetPaused(false)
	P.combat = false; FIRE("PLAYER_REGEN_ENABLED")

	-- il combattimento finisce durante l'attesa: nessuna frase di battaglia
	ADVANCE(300)
	n = #Narrator.history
	P.combat = true; FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(0.1)
	P.combat = false; FIRE("PLAYER_REGEN_ENABLED")
	ADVANCE(1)
	T.eq(#Narrator.history, n, "InCombat() si legge alla scadenza: fuori dal combattimento nessuna battaglia")

	-- livello: 1 s di attesa; con la modalità cambiata nel frattempo la frase segue la modalità nuova
	ADVANCE(300)
	n = #Narrator.history
	FIRE("PLAYER_LEVEL_UP", 31)
	T.eq(#Narrator.history, n, "level up: nessuna frase prima di 1 s")
	ADVANCE(0.5)
	T.eq(#Narrator.history, n, "ancora in attesa a 0,5 s")
	ADVANCE(1)
	T.eq(#Narrator.history, n + 1, "arriva dopo 1 s")

	-- intensità azzerata durante l'attesa: silenzio
	ADVANCE(300)
	n = #Narrator.history
	FIRE("PLAYER_LEVEL_UP", 32)
	ADVANCE(0.2)
	NS.db.intensity = 0
	ADVANCE(2)
	T.eq(#Narrator.history, n, "intensità 0 arrivata durante l'attesa: silenzio")
	NS.db.intensity = 50
end)
