-- Test dei comandi /au di base (UI/Commands.lua) e dei percorsi di Triggers che i test degli step non coprivano (#56):
-- ogni comando ha un controllo sull'effetto, non solo sul testo stampato; ritorno in vita da fantasma;
-- QUEST_GREETING; fine scontro mentre il giocatore combatte ancora.
local NS = ...
local Engine, Director, Narrator, Gateway, Config = NS.Engine, NS.Director, NS.Narrator, NS.Gateway, NS.Config

local function Cmd(text)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN(text)
	local out = {}
	for _, s in ipairs(SENT) do
		if type(s) == "string" and s:sub(1, 6) == "PRINT:" then table.insert(out, s) end
	end
	return table.concat(out, "\n")
end

local function Fresh()
	NS.db.enabled, NS.paused, NS.db.locale = true, false, "it"
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.db.chance, NS.db.ignored, NS.db.disabledPacks = {}, {}, {}
	NS.db.chat.mode = "PRIVATE"
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	P.zone, P.combat, P.dead, P.ghost, P.hp, P.hpMax, P.target, P.npc = "Durotar", false, false, false, 100, 100, nil, nil
	P.instance = false
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	Director.queue, Director.log = {}, {}
	NS.Pacing:Reset()
	SENT = {}
	ADVANCE(1000)
end

-- registra gli eventi che il Gateway racconta
local narrated
local function Spy()
	narrated = {}
	if not Gateway.origNarrate then Gateway.origNarrate = Gateway.Narrate end
	Gateway.Narrate = function(self, event, ctx, opts)
		table.insert(narrated, event)
		return Gateway.origNarrate(self, event, ctx, opts)
	end
end
local function Unspy()
	if Gateway.origNarrate then Gateway.Narrate, Gateway.origNarrate = Gateway.origNarrate, nil end
end

local function Logged(event)
	for _, l in ipairs(Director.log) do if l.event == event then return l end end
	return nil
end

T.run("/au incanta: il tipo dell'incantesimo sceglie l'evento", function()
	Fresh()
	Spy()
	for _, case in ipairs({
		{ "Resurrection", "rezother" }, { "Flash Heal", "heal" }, { "Hearthstone", "travel" },
		{ "Power Word: Fortitude", "buff" }, { "Fireball", "attack" },
	}) do
		narrated = {}
		Cmd("incanta " .. case[1])
		T.eq(narrated[1], case[2], case[1] .. " -> " .. case[2])
	end
	-- un'intercessione in combattimento non è un buff: diventa un attacco
	P.combat = true
	narrated = {}
	Cmd("incanta Power Word: Fortitude")
	T.eq(narrated[1], "attack", "un buff in combattimento: attacco")
	P.combat = false
	Unspy()
end)

T.run("/au pacchetto <id> off: le frasi di quel pacchetto non si scelgono più", function()
	Fresh()
	local function Packs(event)
		local seen, n = {}, 0
		for _ = 1, 60 do
			NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
			local rec = Engine:PickEntry(event, NS:BuildContext(), "say") or Engine:PickEntry(event, NS:BuildContext(), "emote")
			if rec then
				n = n + 1
				seen[Engine.byId[rec.id].pack] = true
			end
		end
		return seen, n
	end
	local before = Packs("battle")
	T.ok(before.base_combat, "con tutti i pacchetti accesi il combattimento parla")
	Cmd("pacchetto base_combat off")
	T.eq(NS.db.disabledPacks.base_combat, true, "il pacchetto è spento")
	local after, n = Packs("battle")
	T.ok(not after.base_combat, "nessuna frase di base_combat")
	T.ok(n > 0, "e altri pacchetti parlano ancora")
	Cmd("pacchetto base_combat on")
	T.eq(NS.db.disabledPacks.base_combat, nil, "on: di nuovo acceso")
	T.ok(Packs("battle").base_combat, "e torna a parlare")
	Cmd("pacchetto inesistente off")
	T.eq(NS.db.disabledPacks.inesistente, nil, "un pacchetto inesistente non si spegne")
end)

T.run("/au memoria, /au ignora, /au cooldown", function()
	Fresh()
	-- memoria: svuota l'anti-ripetizione
	Engine:PickEntry("battle", NS:BuildContext(), "say")
	NS.cdb.memory.uses.x = 3
	Cmd("memoria")
	T.eq(next(NS.cdb.memory.uses), nil, "uses vuoto")
	T.eq(next(NS.cdb.memory.recent), nil, "recent vuoto")
	T.eq(next(NS.cdb.memory.last), nil, "last vuoto")
	-- ignora: un incantesimo ignorato non produce nulla
	SPELLS[133] = "Fireball"
	P.combat = true
	Cmd("ignora Fireball")
	T.eq(NS.db.ignored.fireball, true, "ignorato")
	Director.queue, Director.log = {}, {}
	FIRE("UNIT_SPELLCAST_SENT", "player", "Gnoll", "cast-ign-1", 133)
	FIRE("UNIT_SPELLCAST_SUCCEEDED", "player", "cast-ign-1", 133)
	T.eq(#Director.queue, 0, "nessun candidato per l'incantesimo ignorato")
	Cmd("ignora Fireball")
	T.eq(NS.db.ignored.fireball, nil, "di nuovo non ignorato")
	FIRE("UNIT_SPELLCAST_SENT", "player", "Gnoll", "cast-ign-2", 133)
	FIRE("UNIT_SPELLCAST_SUCCEEDED", "player", "cast-ign-2", 133)
	T.ok(#Director.queue >= 1 and Director.queue[#Director.queue].event == "attack", "ora l'incantesimo conta")
	P.combat = false
	-- cooldown: il valore e il messaggio
	local out = Cmd("cooldown 30")
	T.eq(NS.db.pacing.globalCooldownSeconds, 30, "cooldown 30")
	T.ok(out:find("30", 1, true), "il messaggio lo dice")
	Cmd("cooldown 0")
	T.eq(NS.db.pacing.globalCooldownSeconds, 0, "cooldown 0")
end)

T.run("/au off e /au on: il Narrative Director risponde 'disabled'", function()
	Fresh()
	local ctx = NS:BuildContext()
	T.ok(Director:Evaluate("muse", ctx).allow, "con l'addon acceso il Gate lascia passare")
	Cmd("off")
	T.eq(NS.db.enabled, false, "spento")
	local v = Director:Evaluate("muse", NS:BuildContext())
	T.ok(not v.allow and v.reason == "disabled", "il Gate dice disabled")
	Cmd("on")
	T.eq(NS.db.enabled, true, "acceso")
	T.ok(Director:Evaluate("muse", NS:BuildContext()).allow, "e passa di nuovo")
end)

T.run("/au pulsante: mostra o nasconde il pulsante 'pronuncia'", function()
	Fresh()
	local function Button()
		for _, w in ipairs(FindWidgets(function(x) return x.name == "AzerothUnspokenButton" end)) do return w end
	end
	local b = Button()
	T.ok(b ~= nil, "il pulsante esiste")
	NS.db.ui.showButton = true
	NS.UpdateButton()
	T.ok(b.shown, "visibile")
	Cmd("pulsante")
	T.eq(NS.db.ui.showButton, false, "showButton spento")
	T.ok(not b.shown, "e nascosto")
	Cmd("pulsante")
	T.eq(NS.db.ui.showButton, true, "showButton acceso")
	T.ok(b.shown, "di nuovo visibile")
end)

-- ritorno in vita da fantasma (il percorso più comune in Classic: rilasciare lo spirito e tornare al corpo)
T.run("rez da fantasma: PLAYER_ALIVE da fantasma non basta, PLAYER_UNGHOST sì", function()
	Fresh()
	NS.db.chance.rez = 100
	T.ok(not UnitIsGhost("player"), "all'inizio non è un fantasma")
	P.dead = true
	FIRE("PLAYER_DEAD")
	ADVANCE(5)
	-- rilascia lo spirito: PLAYER_ALIVE, ma il personaggio è un fantasma
	P.dead, P.ghost = false, true
	T.ok(UnitIsGhost("player") and UnitIsDeadOrGhost("player"), "il mock ha il fantasma")
	FIRE("PLAYER_ALIVE")
	ADVANCE(5)
	T.eq(Logged("rez"), nil, "da fantasma nessuna frase di ritorno in vita")
	-- raggiunge il corpo: PLAYER_UNGHOST
	P.ghost = false
	FIRE("PLAYER_UNGHOST")
	ADVANCE(5)
	local l = Logged("rez")
	T.ok(l ~= nil and l.result == "spoken", "tornato in vita parla la frase 'rez': " .. tostring(l and l.result))
	-- un secondo PLAYER_ALIVE senza una morte non la ripete
	local n = 0
	FIRE("PLAYER_ALIVE")
	ADVANCE(5)
	for _, e in ipairs(Director.log) do if e.event == "rez" then n = n + 1 end end
	T.eq(n, 1, "una sola frase")
	-- il sistema della memoria vede l'evento come un ritorno in vita
	local last
	for i = #NS.EventBus.recent, 1, -1 do
		if NS.EventBus.recent[i].type == "PLAYER_REVIVE" then last = NS.EventBus.recent[i] break end
	end
	T.ok(last ~= nil and last.context.deadOrGhost == false, "PLAYER_REVIVE senza fantasma")
end)

T.run("QUEST_GREETING: un NPC che offre incarichi apre l'interazione", function()
	Fresh()
	P.npc = { name = "Innkeeper Farley", guid = "Creature-0-3134-0-6-295-0000A2E9A1", sex = 2, reaction = 5 }
	ADVANCE(16)
	local before = NS.EventBus.stats.published
	FIRE("QUEST_GREETING")
	T.ok(NS.EventBus.stats.published > before, "evento pubblicato")
	local env
	for i = #NS.EventBus.recent, 1, -1 do
		if NS.EventBus.recent[i].type == "NPC_INTERACT" then env = NS.EventBus.recent[i] break end
	end
	T.ok(env ~= nil and env.context.kind == "gossip" and env.context.npcID == 295, "NPC_INTERACT di tipo gossip con l'NPC")
	T.ok(NS.Relationships:Get("npc", 295) ~= nil, "e l'NPC entra nelle relazioni")
end)

T.run("fine scontro con il giocatore ancora in combattimento: nessun commento", function()
	Fresh()
	NS.db.chance.encounter_end = 100
	P.instance, P.instanceType, P.instanceName = true, "raid", "Molten Core"
	FIRE("ENCOUNTER_START", 663, "Lucifron", 9, 40)
	ADVANCE(3)
	P.combat = true
	FIRE("ENCOUNTER_END", 663, "Lucifron", 9, 40, 1)
	ADVANCE(NS.Place.ENCOUNTER_DELAY + 1)
	T.eq(Logged("encounter_end"), nil, "ancora in combattimento: nessun commento")
	T.eq(#Director.queue, 0, "e nemmeno un candidato")
	-- fuori dal combattimento sì
	P.combat = false
	FIRE("ENCOUNTER_START", 664, "Magmadar", 9, 40)
	ADVANCE(3)
	FIRE("ENCOUNTER_END", 664, "Magmadar", 9, 40, 1)
	ADVANCE(NS.Place.ENCOUNTER_DELAY + 1)
	T.ok(Logged("encounter_end") ~= nil or #Director.queue > 0, "a combattimento finito il commento viene offerto")
	P.instance, P.instanceType, P.instanceName = false, nil, nil
end)
