-- Test dello step S8: NPC Alive (Systems/NPCAlive.lua, UI/DialogueFrame.lua, Data/Dialogues.lua e le battute di
-- Data/RegistryDialogues.lua), più le issue #41 (genere delle etichette di relazione e segnaposto {og:}) e #42 (gli
-- argomenti da evitare filtrano anche il vocabolario).
local NS = ...
local Engine, Config, R, I, N, LM, F = NS.Engine, NS.Config, NS.Relationships, NS.Interlocutor, NS.NPCAlive, NS.LivingMemory,
	NS.DialogueFrame
local Director, Narrator, Pacing, Validator = NS.Director, NS.Narrator, NS.Pacing, NS.Validator

---------------------------------------------------------------------------
-- Aiuti
---------------------------------------------------------------------------
local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end
local function Count(t) local n = 0; for _ in pairs(t or {}) do n = n + 1 end; return n end

-- le funzioni di Blizzard che il dialogo ambientale NON deve mai chiamare (gossip, quest, commercio)
local FORBIDDEN_CALLS = 0
for _, name in ipairs({ "SelectGossipOption", "CloseGossip", "AcceptQuest", "CompleteQuest", "GetQuestReward", "DeclineQuest",
	"CloseMerchant", "SellAllJunkItems", "TakeTaxiNode", "CloseTaxiMap", "BuyTrainerService", "CloseTrainer",
	"ConfirmBinder", "SendChatMessage", "RepairAllItems_NPCAlive" }) do
	_G[name] = function() FORBIDDEN_CALLS = FORBIDDEN_CALLS + 1 end
end
C_GossipInfo = { CloseGossip = function() FORBIDDEN_CALLS = FORBIDDEN_CALLS + 1 end,
	SelectOption = function() FORBIDDEN_CALLS = FORBIDDEN_CALLS + 1 end,
	GetText = function() return "" end }

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
	NS.Place:OnInit()
	NS.Diagnostics.errors = {}
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.interlocutor.trp3Others = false
	NS.db.npcAlive.autoOffer = true
	NS.db.output.npcDialogues = true
	NS.db.output.privateNarrator = true
	TRP3_API, AddOn_TotalRP3 = nil, nil
	P.target, P.npc, P.party, P.group, P.raid, P.cinematic = nil, nil, nil, false, false, false
	P.zone, P.subzone, P.combat, P.dead, P.hp, P.hpMax, P.resting = "Elwynn Forest", "", false, false, 100, 100, false
	P.instance, P.instanceType, P.instanceName, P.instanceID, P.difficulty = false, nil, nil, nil, nil
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused, NS.db.chance = "it", true, false, {}
	NS.db.intensity, NS.db.proseDepth = 50, "literary"
	NS.db.pacing.globalCooldownSeconds = 0
	NS.Gateway:Discard()
	Director.queue, Director.log = {}, {}
	Pacing:Reset()
	NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
	if NS.Personality then NS.Personality:SetArchetype("neutral") end
	UIParent:SetSize(1920, 1080)
	for _, name in ipairs(F.BLIZZARD_FRAMES) do _G[name] = nil end
	F.placed = nil
	NS.db.ui.dialogue.pos = nil
	N:OnInit()
	N.resolved = {}
	FORBIDDEN_CALLS = 0
	SENT = {}
	ADVANCE(300)
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

-- un'interazione con un NPC: il client lo mette nell'unità "npc" e lancia l'evento
local function Talk(id, name, wowEvent, extra)
	local npc = { name = name or "Grik", guid = Guid(id), sex = 2, reaction = 5 }
	for k, v in pairs(extra or {}) do npc[k] = v end
	P.npc = npc
	ADVANCE(16)
	FIRE(wowEvent or "GOSSIP_SHOW")
end

local function States()
	local out = {}
	for _, e in ipairs(N.log) do table.insert(out, e[1]) end
	return table.concat(out, ">")
end

local frame = F:GetFrame()
local function Visible() return frame ~= nil and frame:IsShown() end

local function ButtonByText(text)
	for _, w in ipairs(FindWidgets(function(x) return x.kind == "Button" and x._s.text == text and x.shown end)) do return w end
	return nil
end

-- un NPC specifico del registro curato, con la relazione già creata dal suo gossip
local function RegistryNPC(id, event)
	Talk(id, "NPC " .. id, event or "GOSSIP_SHOW")
end

---------------------------------------------------------------------------
-- Dati: copioni, battute, validatore
---------------------------------------------------------------------------
T.run("copioni registrati e controllati: nodi, risposte, flag, lingue", function()
	Fresh()
	for _, key in ipairs({ "innkeeper", "merchant", "guard", "flightmaster", "trainer" }) do
		T.ok(N:Script(key) ~= nil, key .. ": copione registrato")
	end
	local problems = N:Check()
	local msgs = {}
	for _, p in ipairs(problems) do table.insert(msgs, p.level .. " " .. p.key .. ": " .. p.msg) end
	T.eq(#problems, 0, "nessun problema nei copioni: " .. table.concat(msgs, "; "))
	local r = Validator:Run()
	T.eq(#r.errors, 0, "il validatore non trova errori")
	T.eq(#r.warnings, 0, "né avvisi")
	-- ogni nodo ha battute, tutte della voce npc e tutte negli eventi npcd_
	for key in pairs(N.scripts) do
		local s = N:Script(key)
		for id, node in pairs(s.nodes) do
			T.ok(node.event:find("^npcd_") ~= nil, key .. "/" .. id .. ": evento npcd_")
			T.ok(#(Engine.byEvent[node.event] or {}) >= 2, key .. "/" .. id .. ": almeno due battute")
			for _, p in ipairs(Engine.byEvent[node.event]) do T.eq(p.speaker, "npc", p.id .. ": voce NPC") end
		end
	end
end)

T.run("un copione sbagliato apposta viene segnalato", function()
	Fresh()
	NS:RegisterDialogues({ scripts = { broken = {
		role = "innkeeper", start = "open",
		nodes = {
			open = { event = "npcd_innkeeper_open", choices = { "a", "b", "missing" } },
			dead_end = { event = "npcd_innkeeper_open" },
			loop = { event = "no_such_event", choices = { "a" } },
		},
		choices = {
			a = { label = { it = "Uno", en = "One" }, go = "nowhere", flag = "this_flag_name_is_far_too_long_for_memory" },
			b = { label = { it = "Due" }, relation = "no_such_source" },
		},
	} } })
	local text = {}
	for _, p in ipairs(N:Check()) do if p.key == "broken" then table.insert(text, p.msg) end end
	local all = table.concat(text, "\n")
	for _, expect in ipairs({ "risposta 'missing' non definita", "nodo 'nowhere' non esiste", "evento 'no_such_event' non dichiarato",
		"flag 'this_flag_name_is_far_too_long_for_memory' non valido", "manca il testo 'en'", "fonte di relazione 'no_such_source'",
		"nodo 'dead_end' non raggiungibile" }) do
		T.ok(all:find(expect, 1, true) ~= nil, "segnalato: " .. expect)
	end
	local r = Validator:Run()
	local found = false
	for _, e in ipairs(r.errors) do if e.code == "badDialogue" and e.id == "broken" then found = true end end
	T.ok(found, "il validatore riporta badDialogue")
	N.scripts.broken, N.resolved = nil, {}
end)

T.run("le risposte sono neutre: 1-3, brevi, senza segnaposto e senza attribuire sentimenti o decisioni", function()
	Fresh()
	local BAD = { "odio", "uccid", "ammazz", "amo ", "ti amo", "giuro", "prometto", "hate", "kill", "murder", "love", "swear",
		"promise", "furios", "angry", "arrabbi" }
	for key in pairs(N.scripts) do
		local s = N:Script(key)
		for nid, node in pairs(s.nodes) do
			T.ok(#(node.choices or {}) <= 3, key .. "/" .. nid .. ": al massimo tre risposte")
		end
		for cid, c in pairs(s.choices) do
			for _, lang in ipairs({ "it", "en" }) do
				local t = c.label[lang]
				T.ok(type(t) == "string" and #t <= N.LABEL_BYTES, key .. "/" .. cid .. " " .. lang .. ": breve")
				T.ok(not t:find("[{}]"), key .. "/" .. cid .. ": nessun segnaposto")
				for _, w in ipairs(BAD) do
					T.ok(not t:lower():find(w, 1, true), key .. "/" .. cid .. " " .. lang .. ": risposta neutra («" .. t .. "» contiene «" .. w .. "»)")
				end
			end
			T.ok(not c.quest and not c.reward, key .. "/" .. cid .. ": nessun effetto sulle quest")
			if c.flag then T.ok(N.FlagName(key, c.flag):find("^npcd_") ~= nil, "i flag di dialogo hanno il prefisso npcd_") end
		end
	end
end)

T.run("una risposta che mette parole in bocca al giocatore è un errore, salvo domande e risposte `editable` (#143)", function()
	Fresh()
	T.ok(N.PutsWords("I feel afraid.", "en"), "un sentimento è segnalato")
	T.ok(N.PutsWords("I'm afraid of the road.", "en"), "anche con l'apostrofo")
	T.ok(N.PutsWords("Mi sento solo.", "it"), "in italiano")
	T.ok(N.PutsWords("Ho paura della strada.", "it"), "una paura")
	T.ok(not N.PutsWords("I am looking for a place to rest.", "en"), "un'azione è neutra")
	T.ok(not N.PutsWords("Cerco un posto per riposare.", "it"), "anche in italiano")
	T.ok(not N.PutsWords("Do you feel the cold too?", "en"), "una domanda è sempre neutra")
	T.ok(not N.PutsWords("I am about to rest.", "en"), "'I am a' vale solo come parola intera")
	NS:RegisterDialogues({ pack = "test_pack", scripts = { voiced = {
		role = "innkeeper", start = "open",
		nodes = { open = { event = "npcd_innkeeper_open", choices = { "sad", "own", "bye" } },
			bye = { event = "npcd_innkeeper_bye" } },
		choices = {
			sad = { label = { it = "Mi sento solo.", en = "I feel alone." }, go = "bye" },
			own = { label = { it = "Giuro di tornare.", en = "I promise to come back." }, go = "bye", editable = true },
			bye = { label = { it = "Arrivederci.", en = "Farewell." }, go = "bye" },
		},
	} } })
	T.eq(N.scriptPack.voiced, "test_pack", "il pacchetto che dichiara il copione è registrato")
	local text = {}
	for _, p in ipairs(N:Check()) do if p.key == "voiced" then table.insert(text, p.level .. " " .. p.msg) end end
	local all = table.concat(text, "\n")
	T.ok(all:find("risposta 'sad' (it)", 1, true) ~= nil and all:find("risposta 'sad' (en)", 1, true) ~= nil,
		"la risposta che dice un sentimento è un errore in entrambe le lingue")
	T.ok(all:find("risposta 'own'", 1, true) == nil, "la risposta `editable` è lasciata stare")
	N.scripts.voiced, N.scriptPack.voiced, N.resolved = nil, nil, {}
end)

T.run("le battute escono solo dentro un dialogo (né da /au evento né dal Director)", function()
	Fresh()
	T.ok(Engine:PickEntry("npcd_innkeeper_open", NS:BuildContext(), "say") == nil, "fuori da un dialogo nessuna battuta")
	local out = Cmd("event npcd_innkeeper_open")
	T.ok(out:find("npcd_innkeeper_open", 1, true) ~= nil, "il comando risponde che non c'è nessuna frase")
	T.eq(#Narrator.history, 0, "il narratore non ha detto nulla")
	local inside = NS:BuildContext({ npcDialogue = true, other = { kind = "npc", role = "innkeeper", sex = "male", actions = {}, sources = {} },
		otherTraits = { role = "innkeeper" } })
	T.ok(Engine:PickEntry("npcd_innkeeper_open", inside, "say") ~= nil, "dentro un dialogo sì")
end)

---------------------------------------------------------------------------
-- Macchina a stati
---------------------------------------------------------------------------
T.run("transizioni ammesse e rifiutate", function()
	Fresh()
	T.eq(N.state, "idle", "si parte da idle")
	T.ok(not N:SetState("opened"), "idle -> opened no")
	T.ok(not N:SetState("choice") and not N:SetState("response") and not N:SetState("ended"), "idle -> altro no")
	T.ok(N:SetState("offered"), "idle -> offered")
	T.ok(not N:SetState("choice") and not N:SetState("response"), "offered -> choice/response no")
	T.ok(N:SetState("opened"), "offered -> opened")
	T.ok(not N:SetState("response") and not N:SetState("offered"), "opened -> response/offered no")
	T.ok(N:SetState("choice"), "opened -> choice")
	T.ok(not N:SetState("opened"), "choice -> opened no")
	T.ok(N:SetState("response"), "choice -> response")
	T.ok(N:SetState("choice"), "response -> choice")
	T.ok(N:SetState("response") and N:SetState("ended"), "response -> ended")
	T.ok(not N:SetState("choice") and not N:SetState("response"), "ended -> choice/response no")
	T.ok(N:SetState("idle"), "ended -> idle")
	-- per ogni stato elenco completo
	for from, list in pairs(N.TRANSITIONS) do
		for _, to in ipairs(N.STATES) do
			N.state = from
			local expected = list[to] == true
			T.eq(N:SetState(to), expected, from .. " -> " .. to)
		end
	end
	T.eq(#N.STATES, 6, "sei stati")
end)

T.run("percorso completo: idle > offered > opened > choice > response > choice > response > ended", function()
	Fresh()
	local who = N:TestWho("gruff")
	T.ok(N:Offer(who), "offerta")
	T.eq(N.state, "offered", "offerta")
	T.ok(Visible(), "il pulsante dell'offerta compare")
	T.ok(frame.openBtn:IsShown(), "pulsante «Ascolta»")
	T.ok(N:Open(), "apertura")
	T.eq(N.state, "choice", "si sceglie")
	local v = N:View()
	T.eq(v.state, "choice", "vista")
	T.ok(v.line ~= nil and v.line ~= "", "l'NPC ha parlato")
	T.eq(#v.choices, 3, "tre risposte all'apertura")
	T.ok(N:Choose(1), "prima scelta")
	T.eq(N.state, "choice", "il nodo successivo ha altre risposte")
	T.ok(N:Choose(2), "seconda scelta (grazie)")
	T.eq(N.state, "response", "ultimo nodo: solo la battuta dell'NPC")
	T.eq(#N.session.choices, 0, "senza altre risposte")
	T.ok(frame.endBtn:IsShown(), "si chiude con un solo pulsante")
	T.ok(N:Close(), "chiusura")
	T.eq(N.state, "ended", "ended")
	T.eq(N.last.reason, "finished", "fine naturale")
	T.eq(States(), "offered>opened>choice>response>choice>response>ended", "percorso delle transizioni")
	T.ok(not Visible(), "la finestra si chiude")
	T.eq(N.session, nil, "nessuna sessione")
end)

T.run("scelte impossibili e chiusura immediata in ogni stato", function()
	Fresh()
	local ok, why = N:Choose(1)
	T.ok(not ok and why == "not_choosing", "nessuna scelta da idle")
	T.ok(not N:Open(), "nessuna apertura da idle")
	T.ok(not N:Close(), "nessuna chiusura da idle")
	N:Start(N:TestWho())
	ok, why = N:Choose(4)
	T.ok(not ok and why == "no_choice", "una quarta risposta non c'è")
	ok, why = N:Choose(0)
	T.ok(not ok and why == "no_choice", "la risposta 0 neanche")
	T.eq(N.state, "choice", "lo stato non cambia")
	T.ok(frame.closeBtn ~= nil, "pulsante di chiusura")
	frame.closeBtn:Click()
	T.eq(N.state, "ended", "la x chiude subito")
	T.eq(N.last.reason, "closed", "chiuso dal giocatore")
	-- anche da un'offerta e da una risposta
	N:Offer(N:TestWho())
	frame.closeBtn:Click()
	T.eq(N.last.reason, "closed", "la x chiude l'offerta")
	N:Start(N:TestWho()); N:Choose(1); N:Close()
	T.eq(N.state, "ended", "chiusura dal nodo di risposta")
	-- un secondo dialogo dopo la chiusura
	T.ok(N:Start(N:TestWho()), "si può riaprire dopo ended")
	T.ok(not N:Start(N:TestWho()), "ma non due insieme")
	N:Close()
end)

T.run("un dialogo senza battute si chiude da sé (no_line)", function()
	Fresh()
	NS:RegisterDialogues({ scripts = { ghost = { role = "banker", start = "open",
		nodes = { open = { event = "npcd_innkeeper_stranger_only", choices = { "x" } } },
		choices = { x = { label = { it = "Sì", en = "Yes" } } } } } })
	-- l'evento non esiste: nessuna battuta, il dialogo finisce senza errori
	local who = { kind = "test", name = "Fantasma", role = "banker", how = "test", scriptKey = "ghost", testTraits = {} }
	local ok, why = N:Start(who)
	T.ok(not ok and why == "no_line", "nessuna battuta: " .. tostring(why))
	T.eq(N.state, "ended", "ended")
	T.eq(N.last.reason, "no_line", "motivo")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
	N.scripts.ghost, N.resolved = nil, {}
end)

T.run("un copione senza una risposta che chiude non gira all'infinito (MAX_TURNS)", function()
	Fresh()
	NS:RegisterDialogues({ scripts = { loopy = { role = "innkeeper", start = "open",
		nodes = { open = { event = "npcd_innkeeper_open", choices = { "again" } } },
		choices = { again = { label = { it = "Ancora", en = "Again" }, go = "open" } } } } })
	local who = { kind = "test", name = "Giro", role = "innkeeper", how = "test", scriptKey = "loopy", testTraits = {} }
	T.ok(N:Start(who), "apertura")
	for _ = 1, N.MAX_TURNS + 3 do
		if N.state == "choice" then N:Choose(1) end
	end
	T.eq(N.state, "ended", "dopo MAX_TURNS finisce")
	T.eq(N.last.reason, "finished", "motivo")
	N.scripts.loopy, N.resolved = nil, {}
end)

---------------------------------------------------------------------------
-- Offerta, scadenza, interruzioni
---------------------------------------------------------------------------
T.run("l'offerta scade da sola e il pulsante sparisce", function()
	Fresh()
	Talk(9100, "Mara", "MERCHANT_SHOW")
	T.eq(N.state, "offered", "mercante: offerta")
	T.ok(Visible(), "pulsante visibile")
	ADVANCE(N.OFFER_SECONDS - 1)
	T.eq(N.state, "offered", "ancora viva")
	ADVANCE(2)
	T.eq(N.state, "ended", "scaduta")
	T.eq(N.last.reason, "offer_expired", "motivo")
	T.ok(not Visible(), "pulsante sparito")
end)

T.run("una nuova offerta per lo stesso NPC non si accumula", function()
	Fresh()
	Talk(9100, "Mara", "MERCHANT_SHOW")
	local id = N.session.id
	T.ok(N:Offer(N.session.who), "stesso NPC")
	T.eq(N.session.id, id, "la stessa offerta, rinnovata")
	T.ok(not N:Offer(N:TestWho()), "un altro NPC non sostituisce un'offerta viva")
end)

T.run("un dialogo aperto e fermo scade dopo IDLE_SECONDS; ogni scelta rinnova l'attesa", function()
	Fresh()
	N:Start(N:TestWho())
	ADVANCE(N.IDLE_SECONDS - 10)
	T.eq(N.state, "choice", "ancora aperto")
	N:Choose(1)
	ADVANCE(N.IDLE_SECONDS - 10)
	T.eq(N.state, "choice", "la scelta ha rinnovato l'attesa")
	ADVANCE(20)
	T.eq(N.state, "ended", "scaduto")
	T.eq(N.last.reason, "idle", "motivo idle")
	T.ok(not Visible(), "finestra chiusa")
	-- un timer vecchio non chiude un dialogo nuovo
	N:SetState("idle")
	N:Start(N:TestWho())
	ADVANCE(5)
	T.eq(N.state, "choice", "il timer del dialogo precedente non vale")
end)

T.run("interruzioni: combattimento, morte, cambio di zona, altro NPC", function()
	for _, case in ipairs({
		{ "combattimento", function() P.combat = true; FIRE("PLAYER_REGEN_DISABLED") end, "combat" },
		{ "morte", function() FIRE("PLAYER_DEAD") end, "death" },
		{ "zona", function() P.zone = "Westfall"; FIRE("ZONE_CHANGED_NEW_AREA") end, "zone" },
		-- una schermata di caricamento (#56): il dialogo non sopravvive al passaggio nel mondo
		{ "ingresso nel mondo", function() FIRE("PLAYER_ENTERING_WORLD", false, false) end, "zone" },
	}) do
		Fresh()
		N:Start(N:TestWho())
		T.eq(N.state, "choice", case[1] .. ": aperto")
		case[2]()
		T.eq(N.state, "ended", case[1] .. ": interrotto")
		T.eq(N.last.reason, case[3], case[1] .. ": motivo")
		T.ok(not Visible(), case[1] .. ": finestra chiusa")
	end
	-- anche un'offerta cade
	Fresh()
	Talk(9100, "Mara", "MERCHANT_SHOW")
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	T.eq(N.last.reason, "combat", "l'offerta cade con il combattimento")
	-- si passa a un altro NPC: il dialogo col vecchio si chiude, e per il nuovo c'è la sua offerta
	Fresh()
	Talk(9100, "Mara", "MERCHANT_SHOW")
	N:Open()
	T.eq(N.state, "choice", "dialogo con Mara")
	Talk(9101, "Dorin", "MERCHANT_SHOW")
	T.eq(N.last.reason, "npc_changed", "altro NPC: il dialogo precedente si chiude")
	T.eq(N.state, "offered", "e compare l'offerta per il nuovo")
	T.eq(N.session.who.npcID, 9101, "per Dorin")
end)

T.run("l'offerta segue l'interazione: il bersaglio non la toglie, la chiusura sì", function()
	Fresh()
	Talk(9100, "Mara", "MERCHANT_SHOW")
	FIRE("PLAYER_TARGET_CHANGED")
	T.eq(N.state, "offered", "con l'interazione aperta un nuovo bersaglio non cambia nulla")
	FIRE("MERCHANT_CLOSED")
	T.eq(N.state, "ended", "la finestra del mercante si chiude: l'offerta sparisce")
	-- ma un dialogo già aperto resta
	Fresh()
	Talk(9100, "Mara", "MERCHANT_SHOW")
	N:Open()
	ADVANCE(5)
	FIRE("MERCHANT_CLOSED")
	T.eq(N.state, "choice", "un dialogo aperto non dipende dalla finestra di Blizzard")
	N:Close()
end)

T.run("dal gossip al mercante la finestra cambia e l'offerta si rinnova; una quest toglie l'offerta", function()
	Fresh()
	Talk(295, "Innkeeper Farley", "GOSSIP_SHOW")
	T.eq(N.state, "offered", "offerta dal gossip")
	FIRE("MERCHANT_CLOSED")
	T.eq(N.state, "offered", "la chiusura di un'altra finestra non la toglie")
	FIRE("GOSSIP_CLOSED")
	T.eq(N.state, "ended", "la chiusura del gossip da cui nasce sì")
	ADVANCE(5)
	FIRE("MERCHANT_SHOW")
	T.eq(N.state, "offered", "il mercante è un'altra finestra: nuova offerta")
	-- una quest si apre sopra: l'offerta sparisce
	Fresh()
	Talk(295, "Innkeeper Farley", "GOSSIP_SHOW")
	ADVANCE(5)
	FIRE("QUEST_DETAIL")
	T.eq(N.state, "ended", "una quest toglie l'offerta")
	T.eq(N.last.reason, "quest_open", "motivo")
	T.eq(FORBIDDEN_CALLS, 0, "nessuna chiamata a Blizzard")
end)

T.run("Esc non chiude la finestra insieme a quelle di Blizzard (non è in UISpecialFrames)", function()
	local special = rawget(_G, "UISpecialFrames")
	local listed = false
	for _, n in ipairs(special or {}) do if n == "AzerothUnspokenDialogue" then listed = true end end
	T.ok(not listed, "fuori da UISpecialFrames")
	T.eq(frame.name, "AzerothUnspokenDialogue", "nome del frame")
end)

---------------------------------------------------------------------------
-- Identità: nessun dialogo se è incerta o segreta; archetipo solo da una classificazione affidabile
---------------------------------------------------------------------------
T.run("archetipo dal mercante in corso, dal volo e dall'addestramento", function()
	for _, case in ipairs({ { "MERCHANT_SHOW", "merchant" }, { "TAXIMAP_OPENED", "flightmaster" }, { "TRAINER_SHOW", "trainer" },
		{ "CONFIRM_BINDER", "innkeeper" } }) do
		Fresh()
		Talk(9500, "Qualcuno", case[1])
		T.eq(N.state, "offered", case[1] .. ": offerta")
		T.eq(N.session.who.role, case[2], case[1] .. ": ruolo")
		T.eq(N.session.who.how, "interaction", case[1] .. ": classificazione dall'interazione")
		T.ok(not N.session.who.specific, case[1] .. ": non è un NPC del registro")
		T.eq(N.session.who.scriptKey, case[2], case[1] .. ": copione dell'archetipo")
	end
end)

T.run("NPC specifico verificato: il registro curato per npcID, anche senza interazione", function()
	Fresh()
	Talk(295, "Innkeeper Farley", "GOSSIP_SHOW")
	T.eq(N.state, "offered", "gossip di Farley")
	T.ok(N.session.who.specific and N.session.who.how == "registry", "NPC specifico dal registro")
	T.eq(N.session.who.role, "innkeeper", "ruolo dal registro")
	N:Close()
	Fresh()
	P.target = { name = "Marshal Dughan", guid = Guid(240), reaction = 5, sex = 2, level = 55 }
	Cmd("talk")
	T.eq(N.state, "choice", "dal bersaglio, senza interazione")
	T.eq(N.session.who.role, "guard", "guardia dal registro")
	T.ok(N.session.who.specific, "specifico")
	T.eq(Printed(), "", "nessun messaggio di rifiuto")
	N:Close()
end)

T.run("identità incerta: nessun dialogo, né da un'offerta né dal comando", function()
	-- gossip di un NPC qualunque: il gossip da solo non dice il ruolo
	Fresh()
	Talk(7777, "Passante", "GOSSIP_SHOW")
	T.eq(N.state, "idle", "gossip di uno sconosciuto: nessuna offerta")
	T.ok(not Visible(), "nessuna finestra")
	local out = Cmd("talk")
	T.ok(out:find(NS:L("npc_no_uncertain"), 1, true) ~= nil, "il comando spiega perché: " .. out)
	T.eq(N.state, "idle", "resta idle")
	-- bersaglio qualunque
	Fresh()
	P.target = { name = "Passante", guid = Guid(7777), reaction = 5, sex = 3 }
	out = Cmd("talk")
	T.ok(out:find(NS:L("npc_no_uncertain"), 1, true) ~= nil, "bersaglio qualunque: incerto")
	T.eq(N.state, "idle", "resta idle")
	-- GUID mancante o illeggibile
	Fresh()
	P.npc = { name = "Senza GUID" }
	ADVANCE(16); FIRE("MERCHANT_SHOW")
	T.eq(N.state, "idle", "senza GUID: nessuna offerta")
	out = Cmd("talk")
	T.ok(out:find(NS:L("npc_no_uncertain"), 1, true) ~= nil, "senza GUID: incerto (" .. out .. ")")
	-- niente davanti
	Fresh()
	out = Cmd("talk")
	T.ok(out:find(NS:L("npc_no_no_target"), 1, true) ~= nil, "nessun NPC")
	-- il ruolo dello stesso NPC non vale per un altro
	Fresh()
	Talk(9500, "Mara", "MERCHANT_SHOW")
	N:Close()
	Talk(9501, "Altra", "GOSSIP_SHOW")
	T.eq(N.state, "ended", "un altro NPC con un semplice gossip non eredita il ruolo")
end)

T.run("identità segreta: nessun dialogo, nessuna lettura", function()
	Fresh()
	SECRET_UNITS = { npc = true }
	Talk(295, "Innkeeper Farley", "GOSSIP_SHOW")
	T.eq(N.state, "idle", "nessuna offerta")
	local out = Cmd("talk")
	T.ok(out:find(NS:L("npc_no_secret"), 1, true) ~= nil, "il comando lo dice: " .. out)
	T.eq(N.state, "idle", "resta idle")
	T.ok(not Visible(), "nessuna finestra")
	-- anche dal bersaglio
	Fresh()
	SECRET_UNITS = { target = true }
	P.target = { name = "Marshal Dughan", guid = Guid(240), reaction = 5 }
	out = Cmd("talk")
	T.ok(out:find(NS:L("npc_no_secret"), 1, true) ~= nil, "bersaglio segreto")
	T.eq(N.state, "idle", "resta idle")
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore intercettato")
	SECRET_UNITS = {}
end)

T.run("giocatori, creature ostili e NPC morti non hanno dialoghi ambientali", function()
	Fresh()
	P.target = { name = "Aldric", realm = "TestRealm", player = true, guid = "Player-1-0000AAAA", sex = 2, class = "PRIEST",
		race = "Human", faction = "Alliance", level = 30, reaction = 5 }
	T.ok(Cmd("talk"):find(NS:L("npc_no_player"), 1, true) ~= nil, "giocatore")
	P.target = { name = "Lupo", guid = Guid(3035), ctype = "Beast", reaction = 2, hostile = true, level = 7 }
	T.ok(Cmd("talk"):find(NS:L("npc_no_hostile"), 1, true) ~= nil, "creatura ostile")
	P.target = { name = "Marshal Dughan", guid = Guid(240), reaction = 5, dead = true }
	T.ok(Cmd("talk"):find(NS:L("npc_no_dead"), 1, true) ~= nil, "NPC morto")
	T.eq(N.state, "idle", "mai un dialogo")
end)

T.run("le quest restano di Blizzard: nessuna offerta sopra una quest", function()
	Fresh()
	Talk(295, "Innkeeper Farley", "QUEST_DETAIL")
	T.eq(N.state, "idle", "QUEST_DETAIL: nessuna offerta")
	Talk(295, "Innkeeper Farley", "QUEST_COMPLETE")
	T.eq(N.state, "idle", "QUEST_COMPLETE: nessuna offerta")
	Talk(240, "Marshal Dughan", "QUEST_PROGRESS")
	T.eq(N.state, "idle", "QUEST_PROGRESS: nessuna offerta")
	T.eq(FORBIDDEN_CALLS, 0, "nessuna funzione di Blizzard chiamata")
end)

T.run("il ruolo detto dall'utente vale come classificazione; lo stesso NPC resta riconosciuto nella sessione", function()
	Fresh()
	Talk(9300, "Oste del Ponte", "GOSSIP_SHOW")
	T.eq(N.state, "idle", "gossip: ancora incerto")
	T.ok(Cmd("talk role cuoco"):find(NS:L("npc_role_bad"), 1, true) ~= nil, "ruolo sconosciuto")
	T.ok(Cmd("talk role innkeeper"):find("locandiere", 1, true) ~= nil, "ruolo accettato")
	T.eq(R:Get("npc", 9300).role, "innkeeper", "salvato con la relazione")
	T.eq(R:Get("npc", 9300).roleSource, "user", "come scelta dell'utente")
	Cmd("talk")
	T.eq(N.state, "choice", "ora il dialogo si apre")
	T.eq(N.session.who.how, "user", "classificazione dell'utente")
	N:Close()
	-- un NPC non in lista non si può classificare
	Fresh()
	P.target = { name = "Sconosciuto", guid = Guid(9301), reaction = 5 }
	T.ok(Cmd("talk role innkeeper"):find(NS:L("npc_not_listed"), 1, true) ~= nil, "non in lista")
	-- il binder prova che è un locandiere; un gossip successivo dello stesso NPC non lo perde
	Fresh()
	Talk(9400, "Oste", "CONFIRM_BINDER")
	T.eq(N.session.who.role, "innkeeper", "binder")
	N:Close()
	ADVANCE(N.OFFER_GAP + 10)
	Talk(9400, "Oste", "GOSSIP_SHOW")
	T.eq(N.state, "offered", "stesso NPC, stessa sessione: ancora un locandiere")
	T.eq(N.session.who.role, "innkeeper", "ruolo")
end)

---------------------------------------------------------------------------
-- Permessi e impostazioni
---------------------------------------------------------------------------
T.run("impostazioni: modulo spento, intensità 0, pausa, filmati, combattimento", function()
	-- modulo spento: né offerta né comando
	Fresh()
	NS.db.modules.npc = false
	Talk(9100, "Mara", "MERCHANT_SHOW")
	T.eq(N.state, "idle", "modulo spento: nessuna offerta")
	T.ok(Cmd("talk"):find(NS:L("npc_refused_module"), 1, true) ~= nil, "il comando lo dice")
	Fresh()
	NS.db.output.npcDialogues = false
	Talk(9100, "Mara", "MERCHANT_SHOW")
	T.eq(N.state, "idle", "dialoghi NPC spenti nell'uscita: nessuna offerta")
	T.ok(not N:Start(N:TestWho()), "e nemmeno aperti a mano")
	-- intensità 0: l'offerta automatica tace, i dialoghi aperti a mano restano (GDD §4.2)
	Fresh()
	NS.db.intensity = 0
	Talk(9100, "Mara", "MERCHANT_SHOW")
	T.eq(N.state, "idle", "intensità 0: nessuna offerta da sola")
	T.ok(N:Start(N:TestWho()), "ma a mano sì")
	N:Close()
	-- pausa del narratore
	Fresh()
	NS.paused = true
	Talk(9100, "Mara", "MERCHANT_SHOW")
	T.eq(N.state, "idle", "in pausa: nessuna offerta da sola")
	T.ok(N:Start(N:TestWho()), "a mano sì")
	N:Close()
	NS.paused = false
	-- offerta automatica spenta: il comando resta
	Fresh()
	T.ok(Cmd("talk offer off"):find(NS:L("npc_offer_off"), 1, true) ~= nil, "comando offerta off")
	T.eq(NS.db.npcAlive.autoOffer, false, "salvata")
	Talk(9100, "Mara", "MERCHANT_SHOW")
	T.eq(N.state, "idle", "nessuna offerta")
	Cmd("talk")
	T.eq(N.state, "choice", "il comando apre il dialogo del mercante in corso")
	N:Close()
	T.ok(Cmd("talk offer on"):find(NS:L("npc_offer_on"), 1, true) ~= nil, "offerta on")
	T.eq(NS.db.npcAlive.autoOffer, true, "riaccesa")
	-- filmato e combattimento
	Fresh()
	P.cinematic = true
	T.ok(not N:Start(N:TestWho()), "non durante un filmato")
	P.cinematic = false
	P.combat = true
	local ok, why = N:Start(N:TestWho())
	T.ok(not ok and why == "combat", "non in combattimento")
	Talk(9100, "Mara", "MERCHANT_SHOW")
	T.eq(N.state, "idle", "nessuna offerta in combattimento")
	P.combat = false
	P.dead = true
	T.ok(not N:Start(N:TestWho()), "non da morti")
	P.dead = false
end)

T.run("limite per NPC delle offerte automatiche; il comando non ne risente", function()
	Fresh()
	Talk(9100, "Mara", "MERCHANT_SHOW")
	N:End("closed")
	ADVANCE(30)
	Talk(9100, "Mara", "MERCHANT_SHOW")
	T.eq(N.state, "ended", "stessa persona dopo pochi secondi: nessuna nuova offerta")
	ADVANCE(N.OFFER_GAP)
	Talk(9100, "Mara", "MERCHANT_SHOW")
	T.eq(N.state, "offered", "dopo OFFER_GAP sì")
	N:End("closed")
	Cmd("talk")
	T.eq(N.state, "choice", "il comando non ha limiti")
	N:Close()
end)

T.run("durante un dialogo il narratore spontaneo tace", function()
	Fresh()
	N:Start(N:TestWho())
	local before = #Narrator.history
	NS.db.chance.muse = 100
	ADVANCE(10)    -- passato l'istante di silenzio dopo l'apertura: da qui tace solo il ritmo del dialogo
	Director:Offer("muse")
	ADVANCE(1)
	T.eq(#Narrator.history, before, "nessuna frase del narratore sopra il dialogo")
	local logged
	for _, l in ipairs(Director.log) do if l.event == "muse" then logged = l end end
	T.ok(logged ~= nil and logged.result == "chance", "il Director ha scartato l'evento: " .. tostring(logged and logged.result))
	N:Close()
end)

---------------------------------------------------------------------------
-- Nessuna interferenza con Blizzard né con la chat
---------------------------------------------------------------------------
T.run("niente in chat, niente nel narratore, niente chiamate a gossip, quest o commercio", function()
	Fresh()
	local history = #Narrator.history
	Talk(295, "Innkeeper Farley", "GOSSIP_SHOW")
	frame.openBtn:Click()
	local lines = { N:View().line }
	for _ = 1, 4 do
		if N.state == "choice" then
			N:Choose(1)
			table.insert(lines, N:View().line)
		end
	end
	N:Close()
	T.ok(#lines >= 3, "il dialogo è andato avanti")
	for _, line in ipairs(lines) do
		for _, s in ipairs(SENT) do
			T.ok(not s:find(line, 1, true), "la battuta non è in chat: " .. line)
		end
	end
	for _, s in ipairs(SENT) do T.ok(s:sub(1, 5) ~= "SAY: " and s:sub(1, 6) ~= "EMOTE:" and s:sub(1, 6) ~= "PARTY:", "nessun invio in chat: " .. s) end
	T.eq(#Narrator.history, history, "il narratore non registra le battute")
	T.eq(NS.Gateway:GetPending(), nil, "nessuna proposta in attesa")
	T.eq(FORBIDDEN_CALLS, 0, "nessuna chiamata a gossip, quest, commercio o chat")
	-- le battute di Blizzard (eventi) non cambiano il dialogo e il dialogo non cambia gli eventi
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
end)

T.run("la finestra non copre le finestre di Blizzard e si sposta se una si apre sotto", function()
	Fresh()
	local touched = 0
	local function Fake(name, l, b, w, h)
		local f = CreateFrame("Frame", name)
		f.GetRect = function() return l, b, w, h end
		for _, m in ipairs({ "Hide", "Show", "SetPoint", "ClearAllPoints", "SetAlpha", "SetParent" }) do
			f[m] = function() touched = touched + 1 end
		end
		f.IsShown = function() return true end
		return f
	end
	-- candidato 1: a destra, a metà altezza
	local w = frame:GetWidth()
	local first = F:Candidates(w, 200)[1]
	Fake("MerchantFrame", first.left - 10, first.bottom - 50, w + 20, 400)
	N:Start(N:TestWho())
	local p = F:GetPlacement()
	T.ok(p ~= nil and p.clear, "una posizione libera")
	local rect = { left = p.left, bottom = p.bottom, width = p.w, height = p.h }
	local m = { left = first.left - 10, bottom = first.bottom - 50, width = w + 20, height = 400 }
	T.ok(not (rect.left < m.left + m.width and m.left < rect.left + rect.width and rect.bottom < m.bottom + m.height
		and m.bottom < rect.bottom + rect.height), "non si sovrappone al mercante")
	T.ok(p.left ~= first.left or p.bottom ~= first.bottom, "ha scelto un'altra posizione")
	N:Close()
	-- una finestra di Blizzard si apre sulla posizione attuale mentre il dialogo è aperto
	Fresh()
	N:Start(N:TestWho())
	local at = F:GetPlacement()
	Fake("GossipFrame", at.left - 5, at.bottom - 5, at.w + 10, at.h + 10)
	UPDATE(1)
	local moved = F:GetPlacement()
	T.ok(moved.left ~= at.left or moved.bottom ~= at.bottom, "la finestra si sposta da sola")
	T.ok(moved.clear, "e finisce in un punto libero")
	N:Close()
	T.eq(touched, 0, "nessun metodo chiamato sulle finestre di Blizzard (niente Show/Hide/SetPoint)")
	T.eq(FORBIDDEN_CALLS, 0, "nessuna chiamata a Blizzard")
	for _, name in ipairs(F.BLIZZARD_FRAMES) do _G[name] = nil end
end)

T.run("la posizione scelta dall'utente si conserva e si azzera", function()
	Fresh()
	N:Start(N:TestWho())
	frame.header.scripts.OnDragStart()
	T.ok(frame._s.moving, "si trascina dall'intestazione")
	frame.GetLeft = function() return 300 end
	frame.GetBottom = function() return 250 end
	frame.header.scripts.OnDragStop()
	T.eq(NS.db.ui.dialogue.pos[3], 300, "posizione salvata (x)")
	T.eq(NS.db.ui.dialogue.pos[4], 250, "posizione salvata (y)")
	N:Close()
	N:SetState("idle")
	N:Start(N:TestWho())
	T.eq(F:GetPlacement().left, 300, "alla prossima apertura è lì")
	N:Close()
	F:ResetPosition()
	T.eq(NS.db.ui.dialogue.pos, nil, "azzerata")
	frame.GetLeft, frame.GetBottom = nil, nil
	NS.db.ui.dialogue.locked = true
	frame._s.moving = false
	N:SetState("idle")
	N:Start(N:TestWho())
	frame.header.scripts.OnDragStart()
	T.ok(not frame._s.moving, "bloccata: non si sposta")
	NS.db.ui.dialogue.locked = false
	N:Close()
end)

---------------------------------------------------------------------------
-- La finestra: etichetta, ruolo, pulsanti, lingue
---------------------------------------------------------------------------
T.run("l'etichetta «dialogo ambientale dell'addon» è sempre visibile, in italiano e in inglese", function()
	Fresh()
	N:Offer(N:TestWho("jovial"))
	T.ok(frame.badge:GetText():find("dialogo ambientale dell'addon", 1, true) ~= nil, "etichetta nell'offerta: " .. frame.badge:GetText())
	N:Open()
	T.ok(frame.badge:GetText():find("dialogo ambientale dell'addon", 1, true) ~= nil, "etichetta nel dialogo")
	T.ok(frame.title:GetText():find("locandiere", 1, true) ~= nil, "il ruolo è nel titolo: " .. frame.title:GetText())
	T.ok(frame.title:GetText():find(NS:L("npc_test_tag"), 1, true) ~= nil, "un dialogo di prova lo dichiara")
	NS.db.locale = "en"
	F:Render(N:View())
	T.ok(frame.badge:GetText():find("addon ambient dialogue", 1, true) ~= nil, "etichetta in inglese: " .. frame.badge:GetText())
	T.ok(frame.title:GetText():find("innkeeper", 1, true) ~= nil, "ruolo in inglese")
	T.ok(frame.choiceButtons[1]._s.text == "1. What news is going round?", "risposte in inglese: " .. tostring(frame.choiceButtons[1]._s.text))
	NS.db.locale = "it"
	F:Render(N:View())
	T.eq(frame.choiceButtons[1]._s.text, "1. Che notizie corrono?", "risposte in italiano")
	T.ok(frame.text:GetText():sub(1, 2) == "«", "la battuta è tra virgolette")
	N:Close()
	T.ok(NS:L("npc_badge_tip"):find("non compare in chat", 1, true) ~= nil, "il suggerimento dice che non va in chat")
end)

T.run("pulsanti: una risposta per scelta, da una a tre, chiusura", function()
	Fresh()
	N:Offer(N:TestWho())
	frame.openBtn:Click()
	T.eq(N.state, "choice", "il pulsante apre")
	local shown = 0
	for _, b in ipairs(frame.choiceButtons) do if b:IsShown() then shown = shown + 1 end end
	T.eq(shown, 3, "tre pulsanti di risposta")
	T.ok(not frame.openBtn:IsShown() and not frame.endBtn:IsShown(), "né «Ascolta» né «Chiudi» a metà dialogo")
	frame.choiceButtons[2]:Click()
	T.eq(N.session.node, "rest", "la seconda risposta porta al riposo")
	T.ok(LM:HasFlag("npcd_innkeeper_asked_rest") == false, "un dialogo di prova non scrive flag")
	shown = 0
	for _, b in ipairs(frame.choiceButtons) do if b:IsShown() then shown = shown + 1 end end
	T.eq(shown, 3, "il riposo ha tre risposte")
	frame.choiceButtons[1]:Click()
	T.eq(N.session.node, "sit", "mi fermo un momento")
	T.eq(#N.session.choices, 0, "senza altre risposte")
	T.ok(frame.endBtn:IsShown(), "pulsante «Chiudi»")
	frame.endBtn:Click()
	T.eq(N.state, "ended", "chiuso")
	-- un nodo con una sola risposta mostra un solo pulsante
	Fresh()
	local flight = { kind = "test", name = "Volo", role = "flightmaster", how = "test", scriptKey = "flightmaster", testTraits = {} }
	N:Start(flight)
	shown = 0
	for _, b in ipairs(frame.choiceButtons) do if b:IsShown() then shown = shown + 1 end end
	T.eq(shown, 2, "il maestro di volo ha due risposte")
	N:Close()
end)

T.run("risposta condizionata: compare solo se le condizioni valgono", function()
	Fresh()
	NS:RegisterDialogues({ scripts = { cond = { role = "innkeeper", start = "open",
		nodes = { open = { event = "npcd_innkeeper_open", choices = { "secret", "plain", "leave" } }, bye = { event = "npcd_innkeeper_bye" } },
		choices = {
			secret = { label = { it = "Solo per chi è conosciuto", en = "Only for the known" }, go = "bye", when = { isKnown = true } },
			plain = { label = { it = "Sempre", en = "Always" }, go = "bye" },
			leave = { label = { it = "Arrivederci.", en = "Farewell." }, go = "bye" },
		} } } })
	local who = { kind = "test", name = "Cond", role = "innkeeper", how = "test", scriptKey = "cond", testTraits = {} }
	N:Start(who)
	T.eq(#N.session.choices, 2, "sconosciuto: due risposte")
	T.eq(N.session.choices[1].id, "plain", "la prima è «Sempre»")
	N:Close()
	N.scripts.cond, N.resolved = nil, {}
end)

T.run("copioni specifici per npcID ed extends", function()
	Fresh()
	NS:RegisterDialogues({ scripts = { ["npc:9999"] = { npcID = 9999, extends = "innkeeper", nodes = {
		sit = { event = "npcd_innkeeper_thanks" } } } } })
	local s = N:Script("npc:9999")
	T.eq(s.start, "open", "riprende l'apertura")
	T.eq(s.nodes.sit.event, "npcd_innkeeper_thanks", "il nodo proprio vale sopra quello ereditato")
	T.eq(N:Script("innkeeper").nodes.sit.event, "npcd_innkeeper_sit", "l'archetipo non cambia")
	local found, key = N:FindScript(9999, "innkeeper")
	T.ok(found == s and key == "npc:9999", "lo specifico vince sull'archetipo")
	T.eq(select(2, N:FindScript(1, "innkeeper")), "innkeeper", "altrimenti l'archetipo")
	T.eq(N.FlagName("npc:9999", "asked_news"), "npcd_9999_asked_news", "flag con l'npcID")
	T.eq(N.FlagName("innkeeper", "asked_news"), "npcd_innkeeper_asked_news", "flag dell'archetipo")
	N.scripts["npc:9999"], N.resolved = nil, {}
end)

---------------------------------------------------------------------------
-- Effetti: flag, relazione, memoria
---------------------------------------------------------------------------
T.run("le scelte impostano flag narrativi locali (memoria di S6), mai altro", function()
	Fresh()
	RegistryNPC(295)
	frame.openBtn:Click()
	T.ok(not LM:HasFlag("npcd_innkeeper_asked_news"), "prima della scelta il flag non c'è")
	N:Choose(1)
	T.ok(LM:HasFlag("npcd_innkeeper_asked_news"), "la scelta lo imposta")
	T.eq(LM.Data and LM:Data().flags["npcd_innkeeper_asked_news"].source, "addon", "fonte: addon")
	N:Choose(1)   -- «Dimmi di più»
	T.ok(LM:HasFlag("npcd_innkeeper_asked_more"), "il secondo flag")
	T.ok(not LM:HasFlag("npcd_innkeeper_asked_rest"), "le scelte non fatte non lasciano flag")
	N:Close()
	for _, name in ipairs(LM:FlagNames()) do
		T.ok(name:find("^npcd_") ~= nil, "solo flag di dialogo: " .. name)
	end
	T.eq(FORBIDDEN_CALLS, 0, "nessuna quest toccata")
	-- gli argomenti dei flag compaiono nel contesto delle frasi
	T.ok(NS:BuildContext().memory.flags["npcd_innkeeper_asked_news"] ~= nil, "ctx.memory.flags")
end)

T.run("la relazione con l'NPC si muove poco e con i tetti giornalieri; l'interazione non si conta due volte", function()
	Fresh()
	RegistryNPC(295)
	local rec = R:Get("npc", 295)
	T.ok(rec ~= nil, "il gossip ha creato la relazione")
	local f0, t0, count = rec.familiarity, rec.trust or 0, rec.count
	frame.openBtn:Click()
	rec = R:Get("npc", 295)
	T.ok(rec.familiarity > f0, "aprire il dialogo alza la familiarità")
	T.eq(rec.count, count, "e non conta come una nuova interazione")
	N:Choose(1)
	T.ok(R:Get("npc", 295).trust > t0, "una domanda con risposta alza la fiducia")
	N:Close()
	for _ = 1, 20 do
		N:SetState("idle")
		N:Start(select(1, N:Identify({ npcID = 295, name = "NPC 295", kind = "gossip" })) or N:TestWho())
		if N.state == "choice" then N:Choose(1) end
		N:Close()
	end
	rec = R:Get("npc", 295)
	-- the caps follow the NPC's temperament (N2, #214): a cheerful innkeeper warms faster than the base numbers
	local k = R:Temper(295, rec).gain
	T.ok(k > 1, "Innkeeper Farley warms quickly (" .. k .. ")")
	T.ok(rec.familiarity - f0 <= (3 + 2.5) * k + 0.01, "tetto giornaliero della familiarità: +" .. (rec.familiarity - f0))
	T.ok(rec.trust - t0 <= (1 + 2.5) * k + 0.01, "tetto giornaliero della fiducia: +" .. (rec.trust - t0))
	T.eq(rec.count, count, "il numero di interazioni non cambia")
	-- un dialogo di prova non tocca nulla
	Fresh()
	N:Start(N:TestWho())
	N:Choose(1)
	N:Close()
	T.eq(Count(R:Data().npcs), 0, "nessuna relazione per l'NPC di prova")
	T.eq(#LM:FlagNames(), 0, "nessun flag")
	T.eq(#LM:List(), 0, "nessun ricordo")
end)

T.run("registrazione automatica degli NPC spenta: nessuna relazione dal dialogo", function()
	Fresh()
	NS.db.relations.npcAuto = false
	RegistryNPC(295)
	T.eq(R:Get("npc", 295), nil, "nessuna relazione dal gossip")
	frame.openBtn:Click()
	N:Choose(1)
	N:Close()
	T.eq(R:Get("npc", 295), nil, "e nemmeno dal dialogo")
	T.ok(LM:HasFlag("npcd_innkeeper_asked_news"), "il flag locale c'è comunque")
	NS.db.relations.npcAuto = true
end)

T.run("#46: con memoria o relazioni spente, o in sola lettura, il dialogo non scrive flag né relazioni", function()
	-- memoria spenta: nessun flag nuovo, la relazione si muove
	Fresh()
	RegistryNPC(295)
	NS.db.modules.memory = false
	frame.openBtn:Click()
	N:Choose(1)
	N:Close()
	T.eq(#LM:FlagNames(), 0, "memoria spenta: nessun flag")
	T.ok(R:Get("npc", 295).talks == 1, "le relazioni accese contano il dialogo")
	T.ok(not LM:SetFlag("x_prova", "addon") and not LM:SetFlag("x_prova", "auto"), "SetFlag rifiuta le fonti automatiche")
	T.ok(LM:SetFlag("x_prova", "user") and LM:HasFlag("x_prova"), "il comando dell'utente resta possibile")
	-- relazioni spente: la relazione già in lista non cambia; la memoria accesa scrive il flag
	Fresh()
	RegistryNPC(295)
	local t0 = R:Get("npc", 295).talks or 0
	local fam0 = R:Get("npc", 295).familiarity
	NS.db.modules.relations = false
	frame.openBtn:Click()
	N:Choose(1)
	N:Close()
	T.eq(R:Get("npc", 295).talks or 0, t0, "relazioni spente: talks non cambia")
	T.eq(R:Get("npc", 295).familiarity, fam0, "e nemmeno la familiarità")
	T.ok(LM:HasFlag("npcd_innkeeper_asked_news"), "la memoria accesa scrive il flag")
	-- relazioni in sola lettura (dati di una versione più nuova): nessuna modifica ai record
	Fresh()
	RegistryNPC(295)
	t0, fam0 = R:Get("npc", 295).talks or 0, R:Get("npc", 295).familiarity
	R.readOnly = true
	frame.openBtn:Click()
	N:Choose(1)
	N:Close()
	T.eq(R:Get("npc", 295).talks or 0, t0, "sola lettura: talks non cambia")
	T.eq(R:Get("npc", 295).familiarity, fam0, "e nemmeno la familiarità")
	T.ok(LM:HasFlag("npcd_innkeeper_asked_news"), "il flag locale si scrive (la memoria non è in sola lettura)")
	R.readOnly = false
	-- memoria in sola lettura: nessun flag
	Fresh()
	RegistryNPC(295)
	LM.readOnly = true
	frame.openBtn:Click()
	N:Choose(1)
	N:Close()
	LM.readOnly = false
	T.eq(#LM:FlagNames(), 0, "memoria in sola lettura: nessun flag")
end)

T.run("un ricordo del dialogo solo se si è risposto, senza testo, senza nome", function()
	Fresh()
	RegistryNPC(295)
	frame.openBtn:Click()
	N:Close()
	local n0 = #LM:List() + #LM:SessionList()
	T.eq(n0, 0, "nessuna risposta: nessun ricordo")
	-- il primo dialogo con una risposta lascia un ricordo salvato (importanza 2)
	N:SetState("idle")
	Cmd("talk")
	N:Choose(1)
	N:Close()
	local list = LM:List()
	local e
	for _, x in ipairs(list) do if x.kind == "npc_talk" then e = x end end
	T.ok(e ~= nil, "ricordo npc_talk")
	T.eq(e.importance, 1 + (R:Get("npc", 295).count <= 1 and 1 or 0), "importanza")
	for k in pairs(e) do
		T.ok(({ id = true, t = true, zone = true, kind = true, importance = true, tags = true, source = true, level = true, perm = true })[k],
			"nessun campo libero nel ricordo: " .. k)
	end
	local flat = table.concat(e.tags, ",")
	T.ok(flat:find("innkeeper", 1, true) and flat:find("ambient", 1, true), "tag: ruolo e ambient")
	T.ok(not flat:find("295", 1, true) and not flat:find("Farley", 1, true), "né npcID né nome nei tag")
	-- il secondo con la stessa persona resta nella sessione
	N:SetState("idle")
	Cmd("talk")
	N:Choose(1)
	N:Close()
	T.ok(#LM:SessionList() >= 1, "il secondo resta nella sessione")
	T.eq(#LM:List(), #list, "senza salvarne un altro")
	-- il diario sa descriverlo
	T.ok(LM:Describe(e):find(NS:L("mem_kind_npc_talk"), 1, true) ~= nil, "descrizione nel diario")
end)

T.run("i dialoghi non entrano nei richiami: nessuna frase del narratore dai dati del dialogo", function()
	Fresh()
	RegistryNPC(295)
	frame.openBtn:Click()
	N:Choose(1)
	N:Close()
	for _, e in ipairs(LM:List()) do
		T.ok(e.zone == nil or #e.zone <= 64, "zona breve")
	end
	T.eq(Count(NS.Diagnostics.errors), 0, "nessun errore")
end)

---------------------------------------------------------------------------
-- Voce: temperamento, modo di parlare, relazione, anti-ripetizione
---------------------------------------------------------------------------
local function Opening(setup, n, node)
	-- gli id delle battute d'apertura scelte in n dialoghi, con l'NPC preparato da setup()
	local seen, order = {}, {}
	for _ = 1, n do
		N:SetState("idle")
		setup()
		local who = N:Identify()
		if who and N:Start(who) then
			local id = N.session.line.id
			seen[id] = (seen[id] or 0) + 1
			table.insert(order, id)
			N:Close()
		end
	end
	return seen, order
end

local function AnyMatch(set, pattern)
	for id in pairs(set) do if id:find(pattern) then return true end end
	return false
end

local function Share(set, pattern)
	local hit, all = 0, 0
	for id, n in pairs(set) do
		all = all + n
		if id:find(pattern) then hit = hit + n end
	end
	return all > 0 and hit / all or 0
end

T.run("la voce segue il temperamento e il modo di parlare: burbero, gioviale, neutro", function()
	Fresh()
	math.randomseed(2026)
	-- Innkeeper Gryshka (npcID 6929): burbera e laconica; Innkeeper Farley (295): gioviale e allegro
	local gruff = Opening(function() Talk(6929, "Innkeeper Gryshka", "GOSSIP_SHOW"); N:End("closed"); P.target = nil end, 80)
	local jovial = Opening(function() Talk(295, "Innkeeper Farley", "GOSSIP_SHOW"); N:End("closed") end, 80)
	N:OnInit()
	local neutral = {}
	for _ = 1, 80 do
		N:SetState("idle")
		if N:Start(N:TestWho()) then
			local id = N.session.line.id
			neutral[id] = (neutral[id] or 0) + 1
			N:Close()
		end
	end
	T.ok(next(gruff) ~= nil and next(jovial) ~= nil and next(neutral) ~= nil, "tutti e tre parlano")
	-- il burbero non dice mai le battute di un altro carattere
	T.ok(not AnyMatch(gruff, "%.jovial") and not AnyMatch(gruff, "%.warm") and not AnyMatch(gruff, "%.farley")
		and not AnyMatch(gruff, "%.firebrew"), "il burbero non è mai gioviale né caloroso né Farley")
	T.ok(not AnyMatch(jovial, "%.gruff") and not AnyMatch(jovial, "%.gryshka") and not AnyMatch(jovial, "%.warm"),
		"il gioviale non è mai burbero")
	T.ok(not AnyMatch(neutral, "%.gruff") and not AnyMatch(neutral, "%.jovial") and not AnyMatch(neutral, "%.warm")
		and not AnyMatch(neutral, "%.farley") and not AnyMatch(neutral, "%.gryshka"), "il neutro usa solo le battute neutre")
	-- ognuno si riconosce nella propria voce
	T.ok(Share(gruff, "%.gruff") + Share(gruff, "%.gryshka") >= 0.4, "il burbero parla spesso da burbero: "
		.. (Share(gruff, "%.gruff") + Share(gruff, "%.gryshka")))
	T.ok(Share(jovial, "%.jovial") + Share(jovial, "%.farley") >= 0.5, "il gioviale parla soprattutto da gioviale: "
		.. (Share(jovial, "%.jovial") + Share(jovial, "%.farley")))
	-- le due voci si distinguono
	local overlap = 0
	for id in pairs(gruff) do if jovial[id] then overlap = overlap + 1 end end
	T.ok(overlap <= 4, "burbero e gioviale non condividono le stesse battute: " .. overlap)
	N:SetState("idle")
end)

T.run("un NPC specifico ha le sue battute, che un altro con lo stesso ruolo non ha", function()
	Fresh()
	math.randomseed(7)
	local farley = Opening(function() Talk(295, "Innkeeper Farley", "GOSSIP_SHOW"); N:End("closed") end, 60)
	T.ok(AnyMatch(farley, "%.farley"), "Farley dice le sue battute")
	local other = Opening(function() Talk(5688, "Innkeeper Renee", "GOSSIP_SHOW"); N:End("closed") end, 60)
	T.ok(next(other) ~= nil and not AnyMatch(other, "%.farley") and not AnyMatch(other, "%.gryshka"), "un altro locandiere no")
	-- la guardia del registro: solo Dughan ha le battute di Dughan
	local function Target(name, id) P.npc, I.interaction = nil, nil; P.target = { name = name, guid = Guid(id), reaction = 5 } end
	local dughan = Opening(function() Target("Marshal Dughan", 240) end, 60)
	T.ok(AnyMatch(dughan, "dughan"), "il maresciallo dice le sue battute")
	local willem = Opening(function() Target("Deputy Willem", 823) end, 60)
	T.ok(next(willem) ~= nil and not AnyMatch(willem, "dughan"), "un altro agente no")
	P.target = nil
end)

T.run("chi è conosciuto e chi no sentono battute diverse", function()
	Fresh()
	math.randomseed(11)
	local function Setup() Talk(5688, "Innkeeper Renee", "GOSSIP_SHOW"); N:End("closed") end
	local strangers = Opening(Setup, 60)
	T.ok(AnyMatch(strangers, "%.stranger"), "da sconosciuto: le battute di chi non conosce")
	T.ok(not AnyMatch(strangers, "%.known"), "e nessuna di chi conosce")
	-- la relazione cresce per davvero: familiarità e fiducia alte
	R:SetAxis("npc", 5688, "familiarity", 60)
	R:SetAxis("npc", 5688, "trust", 40)
	T.ok(R:Resolve("npc", R:Get("npc", 5688)).isKnown, "ora è conosciuto")
	local known = Opening(Setup, 60)
	T.ok(AnyMatch(known, "%.known"), "da conosciuto: le battute di chi conosce")
	T.ok(not AnyMatch(known, "%.stranger"), "e nessuna di chi non conosce")
	-- cambia anche la risposta a «dimmi di più»: lo sconosciuto non riceve confidenze
	R:SetAxis("npc", 5688, "familiarity", 1); R:SetAxis("npc", 5688, "trust", 0)
	N:SetState("idle")
	local who = (N:Identify({ npcID = 5688, name = "Innkeeper Renee", kind = "gossip" }))
	-- con un NPC sconosciuto il nodo «more» ha la battuta da sconosciuto tra le possibili
	local ctx = NS:BuildContext({ npcDialogue = true, otherSubject = { kind = "npc", key = "npc:5688", npcID = 5688 },
		relationSubject = { kind = "npc", id = 5688 } })
	local ids = {}
	for _, p in ipairs(Engine:Eligible(Engine.byEvent.npcd_innkeeper_more, "it", ctx, "say", time())) do ids[p.id] = true end
	T.ok(ids["npcd.innkeeper.more.stranger1"] and not ids["npcd.innkeeper.more.known1"], "«more»: da sconosciuto")
	R:SetAxis("npc", 5688, "familiarity", 70)
	ctx = NS:BuildContext({ npcDialogue = true, otherSubject = { kind = "npc", key = "npc:5688", npcID = 5688 },
		relationSubject = { kind = "npc", id = 5688 } })
	ids = {}
	for _, p in ipairs(Engine:Eligible(Engine.byEvent.npcd_innkeeper_more, "it", ctx, "say", time())) do ids[p.id] = true end
	T.ok(ids["npcd.innkeeper.more.known1"] and not ids["npcd.innkeeper.more.stranger1"], "«more»: da conosciuto")
end)

T.run("chi ha già fatto la domanda se la sente ricordare (flag narrativo)", function()
	Fresh()
	math.randomseed(5)
	local function Setup() Talk(5688, "Innkeeper Renee", "GOSSIP_SHOW"); N:End("closed") end
	local before = Opening(Setup, 50)
	T.ok(not AnyMatch(before, "%.again"), "prima: nessun «di nuovo»")
	LM:SetFlag("npcd_innkeeper_asked_news", "addon")
	local after = Opening(Setup, 50)
	T.ok(AnyMatch(after, "%.again"), "dopo il flag: la battuta che lo ricorda")
end)

T.run("anti-ripetizione: la stessa battuta non torna di seguito; le varianti ruotano", function()
	Fresh()
	math.randomseed(99)
	local ids = {}
	for _ = 1, 30 do
		N:SetState("idle")
		N:Start(N:TestWho())
		table.insert(ids, N.session.line.id)
		N:Close()
	end
	for i = 2, #ids do T.ok(ids[i] ~= ids[i - 1], "nessuna battuta uguale di fila (" .. i .. "): " .. ids[i]) end
	local distinct = {}
	for _, id in ipairs(ids) do distinct[id] = true end
	T.ok(Count(distinct) >= 4, "almeno quattro battute diverse in 30 aperture: " .. Count(distinct))
	-- le varianti dello stesso id non si ripetono di fila
	local variants = {}
	for _ = 1, 40 do
		local ctx = NS:BuildContext({ npcDialogue = true, other = { kind = "npc", role = "innkeeper", sex = "male", actions = {},
			sources = {} }, otherTraits = { role = "innkeeper" } })
		local rec = Engine:PickEntry("npcd_innkeeper_thanks", ctx, "say")
		table.insert(variants, rec.id .. "#" .. tostring(rec.variant))
	end
	local sameTwice = 0
	for i = 2, #variants do if variants[i] == variants[i - 1] then sameTwice = sameTwice + 1 end end
	T.eq(sameTwice, 0, "mai la stessa variante due volte di fila")
end)

T.run("la lingua scelta vale per le battute e per le risposte", function()
	Fresh()
	NS.db.locale = "en"
	N:Start(N:TestWho())
	local line = N.session.line.text
	T.ok(not line:find("[àèéìòù]"), "battuta in inglese: " .. line)
	T.eq(N:View().choices[3].text, "Farewell.", "risposta in inglese")
	N:Close()
	NS.db.locale = "it"
	N:SetState("idle")
	N:Start(N:TestWho())
	T.eq(N:View().choices[3].text, "Arrivederci.", "risposta in italiano")
	N:Close()
end)

T.run("copertura: ogni nodo ha una battuta per ogni carattere, anche senza modo di parlare", function()
	Fresh()
	for key in pairs(N.scripts) do
		local s = N:Script(key)
		for nid, node in pairs(s.nodes) do
			for _, traits in ipairs({ {}, { speech = "gruff", temperament = "gruff" }, { speech = "jovial", temperament = "cheerful" },
				{ speech = "warm" }, { speech = "formal" }, { speech = "terse" } }) do
				local o = { kind = "npc", name = "X", role = s.role, sex = "female", actions = {}, sources = {}, speech = traits.speech,
					temperament = traits.temperament }
				local ctx = NS:BuildContext({ npcDialogue = true, other = o, otherTraits = { role = s.role, speech = traits.speech,
					temperament = traits.temperament } })
				local rec = Engine:PickEntry(node.event, ctx, "say")
				T.ok(rec ~= nil and rec.text ~= "", key .. "/" .. nid .. " (" .. tostring(traits.speech) .. "): c'è una battuta")
			end
		end
	end
end)

---------------------------------------------------------------------------
-- Comando, tasto, diagnostica
---------------------------------------------------------------------------
T.run("comandi: /au npc, prova, chiudi, stato, tasto assegnato, /au debug", function()
	Fresh()
	T.ok(Cmd("talk close"):find(NS:L("npc_none_open"), 1, true) ~= nil, "nessun dialogo da chiudere")
	T.ok(Cmd("talk test gruff") == "", "prova: si apre senza messaggi")
	T.eq(N.state, "choice", "dialogo di prova aperto")
	T.eq(N.session.who.kind, "test", "è un NPC di prova")
	T.ok(Cmd("talk"):find(NS:L("npc_already_open"), 1, true) ~= nil, "uno solo alla volta")
	T.ok(Cmd("talk status"):find("NPC Alive: choice", 1, true) ~= nil, "stato")
	Cmd("talk close")
	T.eq(N.state, "ended", "chiuso dal comando")
	N:SetState("idle")
	Cmd("talk test")
	T.eq(N.state, "choice", "talk test")
	N:Close()
	-- le parole italiane non sono comandi (#132): nessun dialogo
	for _, word in ipairs({ "dialogo", "parla", "npc" }) do
		N:SetState("idle")
		T.ok(Cmd(word .. " prova"):find("/au talk", 1, true), word .. ": suggerisce /au talk")
		T.eq(N.state, "idle", word .. ": nessun dialogo")
	end
	-- il tasto assegnato apre e chiude
	Fresh()
	Talk(9100, "Mara", "MERCHANT_SHOW")
	AzerothUnspoken_NPCDialogue()
	T.eq(N.state, "choice", "il tasto accetta l'offerta")
	AzerothUnspoken_NPCDialogue()
	T.eq(N.state, "ended", "e poi chiude")
	N:SetState("idle")
	-- /au debug lo riporta
	Fresh()
	local report = Cmd("debug")
	T.ok(report:find("NPC Alive: idle", 1, true) ~= nil, "riga NPC Alive in /au debug")
	T.ok(frame ~= nil and not frame:IsShown(), "la finestra è chiusa")
	T.ok(BINDING_NAME_AZEROTHUNSPOKEN_NPC ~= nil, "nome del tasto")
end)

T.run("tutte le chiavi dell'interfaccia dei dialoghi ci sono in italiano e in inglese", function()
	for _, key in ipairs({ "npc_badge", "npc_badge_tip", "npc_btn_open", "npc_btn_close", "npc_tip_close", "npc_test_name",
		"npc_test_tag", "mem_kind_npc_talk", "npc_none_open", "npc_already_open", "npc_offer_on", "npc_offer_off", "npc_role_bad",
		"npc_role_set", "npc_not_listed", "npc_no_no_target", "npc_no_secret", "npc_no_player", "npc_no_hostile", "npc_no_dead",
		"npc_no_uncertain", "npc_no_no_script", "npc_no_unknown", "npc_refused_disabled", "npc_refused_module", "npc_refused_no_ui",
		"npc_refused_screen", "npc_refused_combat", "npc_refused_dead", "npc_refused_busy", "npc_refused_no_line",
		"npc_refused_not_offered", "npc_refused_not_choosing", "npc_refused_no_choice", "npc_refused_no_script",
		"npc_refused_paused", "npc_refused_silent", "npc_refused_no_auto", "npc_refused_unknown" }) do
		T.ok(NS.languages.it.ui[key] ~= nil, key .. ": italiano")
		T.ok(NS.languages.en.ui[key] ~= nil, key .. ": inglese")
	end
	T.ok(NS.languages.it.ui.npc_badge == "dialogo ambientale dell'addon", "etichetta italiana esatta")
	T.ok(NS.languages.en.ui.npc_badge == "addon ambient dialogue", "etichetta inglese")
end)

---------------------------------------------------------------------------
-- #41: genere delle etichette di relazione e segnaposto {og:}
---------------------------------------------------------------------------
T.run("#41: l'etichetta del rapporto prende il genere della persona", function()
	Fresh()
	R:AddPlayer("Brenna-TestRealm", "user")
	R:SetAxis("player", "Brenna-TestRealm", "trust", 60)
	R:SetAxis("player", "Brenna-TestRealm", "affection", 60)
	R:SetAxis("player", "Brenna-TestRealm", "familiarity", 60)
	local rec = R:Get("player", "Brenna-TestRealm")
	T.eq(R:LabelName("friend"), "amico", "senza sesso: la prima forma")
	T.eq(R:LabelName("friend", "male"), "amico", "maschile")
	T.eq(R:LabelName("friend", "female"), "amica", "femminile")
	T.eq(R:Resolve("player", rec, "female").text, "amica", "Resolve con il sesso")
	T.eq(R:Resolve("player", rec).text, "amico", "Resolve senza sesso")
	for _, pair in ipairs({ { "enemy", "nemica" }, { "comrade", "compagna d'armi" }, { "rival", "rivale rispettata" },
		{ "feared", "temuta" }, { "disliked", "invisa" }, { "stranger", "sconosciuta" }, { "lover", "amata" } }) do
		T.eq(R:LabelName(pair[1], "female"), pair[2], pair[1] .. " al femminile")
	end
	T.eq(R:LabelName("wary", "female"), "diffidente", "invariabile")
	-- nel contesto: un'interlocutrice dà «amica», un interlocutore «amico»
	P.target = { name = "Brenna", realm = "TestRealm", player = true, guid = "Player-1-0000B", sex = 3, class = "MAGE", race = "Human",
		faction = "Alliance", level = 30, reaction = 5 }
	local ctx = NS:BuildContext()
	T.eq(ctx.relation, "friend", "etichetta")
	T.eq(ctx.relationLabel, "amica", "ctx.relationLabel al femminile")
	T.eq(Engine:Render("Sei {relation}.", "it", ctx), "Sei amica.", "il segnaposto {relation}")
	P.target.sex = 2
	ctx = NS:BuildContext()
	T.eq(ctx.relationLabel, "amico", "al maschile")
	-- una lingua senza genere (inglese) resta una stringa; un'etichetta scelta a mano non cambia
	NS.db.locale = "en"
	T.eq(R:LabelName("friend", "female"), "friend", "inglese")
	NS.db.locale = "it"
	R:SetLabel("player", "Brenna-TestRealm", "sorella di spada")
	P.target.sex = 3
	T.eq(NS:BuildContext().relationLabel, "sorella di spada", "etichetta personalizzata")
	P.target = nil
end)

T.run("#41: {og:maschile|femminile} dal genere dell'interlocutore", function()
	Fresh()
	local ctx = { otherSex = "female" }
	T.eq(Engine:Render("Sei {og:{amico}|amica}.", "it", ctx), nil, "non si annida")
	T.eq(Engine:Render("Sei {og:amico|amica}.", "it", { otherSex = "female" }), "Sei amica.", "femminile")
	T.eq(Engine:Render("Sei {og:amico|amica}.", "it", { otherSex = "male" }), "Sei amico.", "maschile")
	T.eq(Engine:Render("Sei {og:amico|amica}.", "it", {}), nil, "sesso ignoto: la variante si scarta")
	T.eq(Engine:Render("{g:Benvenuto|Benvenuta}, {og:caro|cara}.", "it", { sex = "female", otherSex = "male" }), "Benvenuta, caro.", "{g:} e {og:} insieme")
	T.ok(not Engine.HasData("Sei {og:amico|amica}.", {}), "HasData: serve il sesso")
	T.ok(Engine.HasData("Sei {og:amico|amica}.", { otherSex = "female" }), "HasData: con il sesso")
	-- ctx.otherSex viene da ctx.other.sex
	P.target = { name = "Mara", guid = Guid(295), sex = 3, reaction = 5 }
	local c = NS:BuildContext()
	T.eq(c.otherSex, "female", "ctx.otherSex")
	P.target.sex = 2
	T.eq(NS:BuildContext().otherSex, "male", "ctx.otherSex maschile")
	P.target = nil
	T.eq(NS:BuildContext().otherSex, nil, "senza interlocutore: nessun sesso")
	-- il validatore lo conosce e ne controlla la forma
	local n = 0
	local function Run(it)
		n = n + 1
		local id = "og" .. n
		NS:RegisterPack({ id = id, languages = { "itIT", "enUS" }, events = { ["og_ev" .. n] = { category = "social" } },
			registry = { [id .. ".a"] = { event = "og_ev" .. n, speaker = "character", styles = { "everyday" } } },
			texts = { itIT = { [id .. ".a"] = it }, enUS = { [id .. ".a"] = "You are a friend." } } })
		return Validator:Run({ packs = { id } })
	end
	local r = Run("Sei {og:amico|amica}.")
	T.eq(#r.errors, 0, "una frase con {og:} è valida: " .. tostring(r.errors[1] and r.errors[1].msg))
	r = Run("Sei {og:amico}.")
	T.ok(#r.errors >= 1 and r.errors[1].code == "badPlaceholder", "{og:} malformato è un errore")
end)

---------------------------------------------------------------------------
-- #42: gli argomenti da evitare filtrano anche il vocabolario
---------------------------------------------------------------------------
T.run("#42: {cry} e {foe} rispettano gli argomenti da evitare", function()
	Fresh()
	math.randomseed(42)
	local P5 = NS.Personality
	local function Sample(name, ctx, n)
		local seen = {}
		for _ = 1, n do
			local v = Engine:Vocab(name, "it", ctx)
			seen[v or "<nil>"] = (seen[v or "<nil>"] or 0) + 1
		end
		return seen
	end
	local orc = { race = "Orc", faction = "Horde", soul = {} }
	T.ok(Sample("cry", orc, 200)["Sangue e tuono!"] ~= nil, "senza filtri il grido dell'orco esce")
	orc.soul = { avoid = { blood = true } }
	local s = Sample("cry", orc, 400)
	T.eq(s["Sangue e tuono!"], nil, "evitando il sangue il grido non esce mai")
	T.ok(Count(s) >= 2, "ma restano altri gridi (" .. Count(s) .. ")")
	-- {foe}: i non morti e i demoni
	local undead = { ctype = "undead", soul = {} }
	T.ok(Sample("foe", undead, 200)["servo del Flagello"] ~= nil, "senza filtri: servo del Flagello")
	undead.soul = { avoid = { undead = true } }
	T.eq(next(Sample("foe", undead, 100)), "<nil>", "evitando i non morti, contro un non morto non resta nessuna voce")
	undead.soul = { avoid = { death = true } }
	s = Sample("foe", undead, 200)
	T.eq(s["cadavere senza riposo"], nil, "evitando la morte: niente cadavere")
	T.ok(s["servo del Flagello"] ~= nil, "resta ciò che non la nomina")
	local demon = { ctype = "demon", soul = { avoid = { demons = true } } }
	T.eq(next(Sample("foe", demon, 100)), "<nil>", "evitando i demoni, nessuna voce contro un demone")
	-- una frase che usa il segnaposto senza voci rimaste si scarta come per un dato mancante
	local ctx = { ctype = "undead", soul = { avoid = { undead = true } } }
	T.eq(Engine:Render("Tu, {foe}!", "it", ctx), nil, "la variante si scarta")
	ctx.soul = {}
	T.ok(Engine:Render("Tu, {foe}!", "it", ctx) ~= nil, "senza filtri si compone")
	-- il profilo non c'è (ctx.soul assente): nessun errore e nessun filtro
	T.ok(Engine:Vocab("cry", "it", { race = "Orc", faction = "Horde" }) ~= nil, "senza ctx.soul")
	-- il profilo reale: /au anima evita sangue
	NS.Personality:ToggleTopic("blood")
	local real = NS:BuildContext({ race = "Orc", faction = "Horde" })
	T.ok(real.soul.avoid and real.soul.avoid.blood, "il profilo del Soul evita il sangue")
	for _ = 1, 200 do
		local v = Engine:Vocab("cry", "it", real)
		T.ok(v ~= "Sangue e tuono!", "dal profilo vero: mai «Sangue e tuono!»")
	end
	NS.Personality:ToggleTopic("blood")
	-- una voce di vocabolario con un tag sbagliato è un errore del validatore
	NS:RegisterPack({ id = "vt42", languages = { "itIT", "enUS" }, vocab = { t42 = { { it = "uno", en = "one", tags = { "topic:nulla" } },
		{ it = "due", en = "two", tags = { "topic:blood" } } } } })
	local r = Validator:Run({ packs = { "vt42" } })
	local bad
	for _, e in ipairs(r.errors) do if e.code == "badTag" then bad = e end end
	T.ok(bad ~= nil, "badTag sulla voce di vocabolario")
	T.eq(#r.errors, 1, "solo il tag sbagliato")
end)

-- #71: in una battuta `npc` la persona dell'interazione è l'NPC stesso: {og:} ne legge il sesso, {g:} quello del giocatore
T.run("#71: {og:} nelle battute degli NPC accorda con l'NPC, {g:} con il giocatore", function()
	Fresh()
	local function Ctx(who)
		local c = N:ContextFor({ who = who })
		c.sex = "male"   -- il giocatore è un uomo
		return c
	end
	local female = Ctx({ kind = "npc", name = "Mara", npcID = 295, role = "innkeeper", sex = "female" })
	local male = Ctx({ kind = "npc", name = "Aldo", npcID = 6740, role = "innkeeper", sex = "male" })
	local unknown = Ctx({ kind = "npc", name = "Ignota", npcID = 5111, role = "innkeeper" })
	T.eq(female.otherSex, "female", "NPC donna: ctx.otherSex")
	T.eq(male.otherSex, "male", "NPC uomo: ctx.otherSex")
	T.eq(unknown.otherSex, nil, "NPC di sesso ignoto: nessun sesso")
	local text = "Con te sono {og:franco|franca}, e tu sei {g:attento|attenta}."
	T.eq(Engine:Render(text, "it", female), "Con te sono franca, e tu sei attento.", "NPC donna, giocatore uomo")
	T.eq(Engine:Render(text, "it", male), "Con te sono franco, e tu sei attento.", "NPC uomo")
	T.eq(Engine:Render(text, "it", unknown), nil, "NPC di sesso ignoto: la variante con {og:} non si compone")
	T.ok(not Engine.HasData(text, unknown), "HasData lo sa prima di comporre")
	-- il dialogo di prova ha un NPC uomo dichiarato
	local test = Ctx(N:TestWho())
	T.eq(test.otherSex, "male", "NPC di prova: uomo")
	-- nessuna battuta di base dà un aggettivo al maschile all'NPC che parla di sé senza segnaposto
	local rule = Engine.byId["npcd.guard.danger.known1"]
	T.ok(rule ~= nil, "la battuta della guardia c'è")
	for i, v in ipairs(rule and rule.text.it or {}) do
		T.ok(not Validator.UnmarkedAgreement(Engine.VariantView(v, rule.pack).t, "it"), "guardia, variante " .. i .. ": nessun accordo senza segnaposto")
	end
end)
