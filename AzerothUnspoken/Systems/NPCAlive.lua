-- Azeroth Unspoken: NPC Alive, i dialoghi ambientali (S8, GDD §7.3, §21-B; ADR 0020).
-- Un micro-dialogo locale con un NPC reale e identificabile: una finestra separata (UI/DialogueFrame.lua), da una a tre
-- risposte, chiusura immediata. È SEMPRE un dialogo simulato dall'addon: la finestra lo dice in chiaro («dialogo
-- ambientale dell'addon»), le battute non compaiono mai nella chat vera, non toccano gossip, quest o commercio di
-- Blizzard e non creano né cambiano missioni. Le scelte possono solo impostare flag narrativi locali (memoria di S6)
-- e muovere un poco la relazione con l'NPC (S6b).
--
-- Macchina a stati:  idle -> offered -> opened -> choice -> response -> ended
--   idle      niente in corso
--   offered   un pulsante propone il dialogo (da un'interazione valida) e scade da solo; oppure il comando lo apre subito
--   opened    la finestra si apre con la battuta d'apertura dell'NPC
--   choice    il giocatore sceglie tra 1 e 3 risposte
--   response  l'NPC risponde (e applica gli effetti della scelta); con altre risposte si torna a `choice`, altrimenti
--             si resta qui finché il giocatore chiude
--   ended     chiuso (motivo in `N.last.reason`); da qui si può riaprire un'offerta
--
-- Identità (nessun dialogo se è incerta o segreta):
--   - NPC specifico: l'npcID dal GUID è nel registro curato (Data/NPCs.lua), o l'utente gli ha dato un ruolo;
--   - archetipo (locandiere, mercante, maestro di volo, addestratore): solo dall'interazione IN CORSO che lo prova
--     (mercante, addestratore, volo, locandiere/binder, banca), mai indovinato dal nome o dall'aspetto;
--   - identità segreta, giocatore, creatura ostile, GUID illeggibile: nessun dialogo.
--
-- Voce: le battute dell'NPC sono regole del motore (speaker "npc") scelte da Engine:PickEntry con il contesto
-- dell'interlocutore (modo di parlare, temperamento, ruolo) e della relazione: stessi pesi, stessa anti-ripetizione,
-- stessi filtri del Character Soul. Le risposte del giocatore sono neutre (domande e azioni, mai un carattere o una
-- decisione morale attribuiti al personaggio) e non vanno mai in chat.
local ADDON, NS = ...
local Engine, Compat = NS.Engine, NS.Compat
local I = NS.Interlocutor

---@class AUDialogueChoice
---@field label table<string, string> testo per lingua ("it", "en"), senza segnaposto
---@field go? string nodo a cui porta; senza `go` il dialogo si chiude subito
---@field flag? string flag narrativo da impostare (nome breve: lo script lo prefissa)
---@field relation? string fonte di incremento della relazione (Data/Relationships.lua)
---@field when? table condizioni della regola: la risposta compare solo se valgono

---@class AUDialogueNode
---@field event string evento delle battute dell'NPC (regole `speaker = "npc"` in Data/RegistryDialogues.lua)
---@field choices? string[] id delle risposte (al massimo 3 compaiono); senza risposte il dialogo finisce qui

---@class AUDialogueScript
---@field role? string archetipo a cui vale
---@field npcID? integer NPC specifico a cui vale
---@field extends? string script di cui riprende nodi e risposte
---@field start string nodo d'apertura
---@field nodes table<string, AUDialogueNode>
---@field choices table<string, AUDialogueChoice>

---@class AUDialogueWho chi parla con noi
---@field kind "npc"|"test"
---@field name? string
---@field npcID? integer
---@field role string
---@field how "registry"|"user"|"interaction"|"test" come si è arrivati al ruolo
---@field scriptKey string "innkeeper" o "npc:295"
---@field sex? string male | female
---@field specific boolean l'NPC è nel registro curato

---@class AUDialogueSession
---@field id integer
---@field who AUDialogueWho
---@field script AUDialogueScript
---@field node? string
---@field line? { text: string, id: string }
---@field chosen integer risposte date
---@field first boolean è il primo dialogo con questo NPC
---@field deadline number scadenza (GetTime)
---@field extra table extra del contesto delle battute
---@field choices { id: string, text: string }[] risposte mostrate adesso

---@class AUNPCAlive
local N = NS:RegisterModule("npcalive")
NS.NPCAlive = N

N.STATES = { "idle", "offered", "opened", "choice", "response", "ended" }
N.TRANSITIONS = {
	idle = { offered = true },
	offered = { opened = true, ended = true },
	opened = { choice = true, ended = true },
	choice = { response = true, ended = true },
	response = { choice = true, ended = true },
	ended = { idle = true, offered = true },
}
N.ACTIVE = { opened = true, choice = true, response = true }

N.OFFER_SECONDS = 20       -- quanto resta il pulsante dell'offerta
N.IDLE_SECONDS = 120       -- senza una scelta il dialogo si chiude da solo
N.OFFER_GAP = 180          -- secondi tra due offerte automatiche per lo stesso NPC (solo sessione)
N.MAX_CHOICES = 3          -- risposte mostrate (GDD §7.3)
N.MAX_TURNS = 12           -- battute al massimo in un dialogo: un copione sbagliato non gira all'infinito
N.LABEL_BYTES = 70         -- lunghezza massima di una risposta
N.FLAG_PREFIX = "npcd_"
-- Risposte che mettono parole in bocca al giocatore (ADR 0020, punto 3): un sentimento, un tratto, una decisione morale, una
-- promessa. Frasi di parole intere, in minuscolo, solo lettere e cifre (l'apostrofo è uno spazio: "I'm afraid" è "i m afraid").
-- Una domanda è sempre neutra; una risposta che il giocatore potrà riscrivere dichiara `editable = true`. È un controllo
-- per i casi evidenti; è la stessa lista di tools/archive/structures.py (Tests/check_archive.py controlla che coincidano).
N.PUTS_WORDS = {
	en = {
		"i feel", "i felt", "i love", "i loved", "i hate", "i hated", "i fear", "i miss", "i regret",
		"i swear", "i promise", "i forgive", "i despise", "i admire", "i envy", "i believe",
		"i will always", "i am afraid", "i m afraid", "i am sad", "i m sad", "i am happy", "i m happy",
		"i am angry", "i m angry", "i am proud", "i m proud", "i am ashamed", "i m ashamed", "i am a",
		"i m a", "i am an", "i m an", "my heart", "my soul", "my fear", "my shame", "my honor",
		"my honour", "never forget"
	},
	it = {
		"mi sento", "amo", "odio", "temo", "ho paura", "mi manca", "mi pento", "giuro", "prometto",
		"perdono", "disprezzo", "ammiro", "invidio", "credo", "sono un", "sono una", "sono triste",
		"sono felice", "sono stanco", "sono stanca", "sono arrabbiato", "sono arrabbiata", "sono fiero",
		"sono fiera", "sono spaventato", "sono spaventata", "non mi fido", "non perdono", "il mio cuore",
		"il mio dolore"
	},
}
-- interazioni che proporranno il dialogo da sole (le quest restano di Blizzard: nessuna offerta sopra una quest)
N.OFFER_KINDS = { gossip = true, merchant = true, taxi = true, trainer = true, binder = true, banker = true }

N.state = "idle"
N.session = nil            -- AUDialogueSession
N.last = nil               -- { reason, chosen, who } dell'ultimo dialogo chiuso
N.scripts = {}             -- [chiave] = AUDialogueScript
N.scriptPack = {}          -- [chiave] = id del pacchetto che li dichiara (se lo dice)
N.resolved = {}            -- cache degli script con `extends` risolto
N.offered = {}             -- [npcID] = GetTime() dell'ultima offerta automatica
N.log = {}                 -- transizioni dell'ultimo dialogo: { stato, motivo }
N.seq = 0

local EMPTY = {}

local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end

local function Cfg() return NS.db and NS.db.npcAlive or EMPTY end

local function Frame() return NS.DialogueFrame end

---------------------------------------------------------------------------
-- Copioni (dati: Data/Dialogues.lua)
---------------------------------------------------------------------------
---Registra i copioni dei dialoghi. `{ scripts = { [chiave] = AUDialogueScript } }`: la chiave è l'archetipo
---("innkeeper") o "npc:<npcID>" per un NPC specifico (che di solito riprende l'archetipo con `extends`).
---`pack` (the id of the pack the scripts belong to) is how the authoring archive files them (#143); the game does not need it.
---@param def { pack?: string, scripts: table<string, AUDialogueScript> }
function NS:RegisterDialogues(def)
	for key, s in pairs(type(def) == "table" and def.scripts or EMPTY) do
		if type(key) == "string" and type(s) == "table" then
			N.scripts[key] = s
			if type(def.pack) == "string" then N.scriptPack[key] = def.pack end
			N.resolved = {}
			-- le battute dei nodi escono solo dentro un dialogo
			for _, node in pairs(s.nodes or EMPTY) do
				if type(node) == "table" and type(node.event) == "string" then N.RegisterDialogueEvent(node.event) end
			end
		end
	end
end

---Il copione con `extends` risolto (nodi e risposte proprie sopra quelli ereditati).
---@param key string
---@return AUDialogueScript?
function N:Script(key)
	if self.resolved[key] then return self.resolved[key] end
	local s = self.scripts[key]
	if not s then return nil end
	local out = { role = s.role, npcID = s.npcID, start = s.start, nodes = {}, choices = {} }
	local base = s.extends and s.extends ~= key and self:Script(s.extends) or nil
	for _, src in ipairs({ base or EMPTY, s }) do
		for id, n in pairs(src.nodes or EMPTY) do out.nodes[id] = n end
		for id, c in pairs(src.choices or EMPTY) do out.choices[id] = c end
	end
	out.start = s.start or (base and base.start)
	self.resolved[key] = out
	return out
end

---Il copione di un NPC: quello specifico se esiste, altrimenti quello dell'archetipo.
---@param npcID? integer
---@param role? string
---@return AUDialogueScript? script
---@return string? key
function N:FindScript(npcID, role)
	if npcID and self.scripts["npc:" .. npcID] then return self:Script("npc:" .. npcID), "npc:" .. npcID end
	if role and self.scripts[role] then return self:Script(role), role end
	return nil
end

---Il nome di un flag narrativo di un copione: "npcd_innkeeper_<flag>" oppure "npcd_295_<flag>".
---@param key string chiave del copione
---@param flag string nome breve
---@return string
function N.FlagName(key, flag)
	local short = key:gsub("^npc:", "")
	return N.FLAG_PREFIX .. short .. "_" .. flag
end

---Una risposta mette parole in bocca al giocatore? (vedi N.PUTS_WORDS; una domanda è sempre neutra)
---@param label string
---@param lang string codice breve ("it", "en")
---@return boolean
function N.PutsWords(label, lang)
	if label:find("?", 1, true) then return false end
	local text = " " .. label:lower():gsub("[^a-z0-9]+", " "):gsub("^ +", ""):gsub(" +$", "") .. " "
	for _, phrase in ipairs(N.PUTS_WORDS[lang] or EMPTY) do
		if text:find(" " .. phrase .. " ", 1, true) then return true end
	end
	return false
end

---Controlla i copioni (per il validatore e i test). Restituisce { level, key, msg }.
---@return { level: string, key: string, msg: string }[]
function N:Check()
	local out = {}
	local function Add(level, key, msg) table.insert(out, { level = level, key = key, msg = msg }) end
	local keys = {}
	for key in pairs(self.scripts) do table.insert(keys, key) end
	table.sort(keys)
	local languages = {}
	for _, code in ipairs(NS.languageOrder) do if code == "it" or code == "en" then table.insert(languages, code) end end
	local R = NS.Relationships
	for _, key in ipairs(keys) do
		local s = self:Script(key)
		local raw = self.scripts[key]
		if raw.extends and not self.scripts[raw.extends] then Add("error", key, "extends '" .. raw.extends .. "' non esiste") end
		if not raw.role and not raw.npcID then Add("error", key, "né role né npcID") end
		if raw.role and not (NS.Traits.defs.role and NS.Traits.defs.role.valid[raw.role]) then
			Add("error", key, "ruolo sconosciuto '" .. tostring(raw.role) .. "'")
		end
		if not s.start or not s.nodes[s.start] then
			Add("error", key, "nodo d'apertura mancante")
		else
			-- raggiungibili dall'apertura
			local seen, stack = {}, { s.start }
			while #stack > 0 do
				local id = table.remove(stack)
				if not seen[id] then
					seen[id] = true
					local node = s.nodes[id]
					for _, cid in ipairs(node and node.choices or EMPTY) do
						local c = s.choices[cid]
						if c and c.go and s.nodes[c.go] then table.insert(stack, c.go) end
					end
				end
			end
			for id in pairs(s.nodes) do
				if not seen[id] then Add("warning", key, "nodo '" .. id .. "' non raggiungibile") end
			end
		end
		for id, node in pairs(s.nodes) do
			if type(node.event) ~= "string" or not Engine.events[node.event] then
				Add("error", key, ("nodo '%s': evento '%s' non dichiarato"):format(id, tostring(node.event)))
			elseif not Engine.byEvent[node.event] or #Engine.byEvent[node.event] == 0 then
				Add("error", key, ("nodo '%s': nessuna battuta per '%s'"):format(id, node.event))
			else
				for _, p in ipairs(Engine.byEvent[node.event]) do
					if p.speaker ~= "npc" then
						Add("error", key, ("battuta '%s' dell'evento '%s' non è della voce npc"):format(p.id, node.event))
					end
				end
			end
			local list = node.choices or EMPTY
			if #list > 6 then Add("warning", key, ("nodo '%s': più di %d risposte, ne compaiono solo le prime"):format(id, self.MAX_CHOICES)) end
			local closes = #list == 0
			for _, cid in ipairs(list) do
				local c = s.choices[cid]
				if not c then
					Add("error", key, ("nodo '%s': risposta '%s' non definita"):format(id, tostring(cid)))
				else
					local target = c.go and s.nodes[c.go]
					if c.go and not target then Add("error", key, ("risposta '%s': nodo '%s' non esiste"):format(cid, c.go)) end
					if not c.go or (target and #(target.choices or EMPTY) == 0) then closes = true end
				end
			end
			if not closes then Add("warning", key, ("nodo '%s': nessuna risposta lo chiude"):format(id)) end
		end
		for cid, c in pairs(s.choices) do
			for _, lang in ipairs(languages) do
				local label = type(c.label) == "table" and c.label[lang]
				if type(label) ~= "string" or label == "" then
					Add("error", key, ("risposta '%s': manca il testo '%s'"):format(cid, lang))
				else
					if #label > self.LABEL_BYTES then Add("error", key, ("risposta '%s' (%s): più di %d byte"):format(cid, lang, self.LABEL_BYTES)) end
					if label:find("[{}]") then Add("error", key, ("risposta '%s' (%s): niente segnaposto nelle risposte"):format(cid, lang)) end
					if not c.editable and N.PutsWords(label, lang) then
						Add("error", key, ("risposta '%s' (%s): mette parole in bocca al giocatore (un sentimento, un tratto, una decisione o una promessa): renderla una domanda o un'azione, o `editable = true`"):format(cid, lang))
					end
					local ok, why = Engine.IsValidUTF8(label)
					if not ok then Add("error", key, ("risposta '%s' (%s): %s"):format(cid, lang, why)) end
				end
			end
			if c.flag then
				local name = self.FlagName(key, c.flag)
				if not c.flag:match("^[a-z0-9_]+$") or #name > (NS.LivingMemory and NS.LivingMemory.FLAG_LEN or 32) then
					Add("error", key, ("risposta '%s': flag '%s' non valido (nome '%s')"):format(cid, c.flag, name))
				end
			end
			if c.relation and not (R and R.config.increments[c.relation]) then
				Add("error", key, ("risposta '%s': fonte di relazione '%s' sconosciuta"):format(cid, c.relation))
			end
			if c.when then
				for _, msg in ipairs(Engine.CheckConditions(c.when)) do Add("error", key, ("risposta '%s': %s"):format(cid, msg)) end
			end
		end
	end
	return out
end

---------------------------------------------------------------------------
-- Stato
---------------------------------------------------------------------------
---@return boolean active un dialogo è aperto (finestra con la battuta dell'NPC)
function N:IsActive()
	return self.ACTIVE[self.state] == true
end

---Passa a un altro stato, solo se la macchina lo ammette.
---@param to string
---@param reason? string
---@return boolean ok
function N:SetState(to, reason)
	local allowed = self.TRANSITIONS[self.state]
	if not (allowed and allowed[to]) then return false end
	self.state = to
	table.insert(self.log, { to, reason })
	while #self.log > 24 do table.remove(self.log, 1) end
	return true
end

local function NewSession(self, who, script)
	self.seq = self.seq + 1
	return { id = self.seq, who = who, script = script, chosen = 0, first = false, choices = {},
		deadline = GetTime() + self.OFFER_SECONDS, extra = nil, turns = 0 }
end

local function Refresh(self)
	local f = Frame()
	if f and f.Render then f:Render(self:View()) end
end

---La vista per la finestra: tutto ciò che serve a disegnarla.
---@return table
function N:View()
	local s = self.session
	if not s or self.state == "idle" or self.state == "ended" then return { state = self.state } end
	local who = s.who
	local choices, lang = {}, NS:Lang()
	for i, c in ipairs(s.choices) do
		-- il testo si sceglie qui, nella lingua di adesso: un cambio di lingua a metà dialogo vale subito
		local def = s.script.choices[c.id]
		local label = def and (def.label[lang] or def.label.en or def.label.it)
		choices[i] = { id = c.id, text = label or c.text }
	end
	return { state = self.state, name = who.name, role = who.role, test = who.kind == "test",
		roleLabel = NS:L("role_" .. who.role), line = s.line and s.line.text, choices = choices,
		canClose = true, seconds = math.max(0, s.deadline - GetTime()) }
end

---Il dialogo è finito (o l'offerta è sparita): effetti di chiusura e finestra nascosta.
---@param reason string closed | finished | offer_expired | idle | combat | death | zone | npc_changed | identity | disabled | no_line
---@return boolean
function N:End(reason)
	if self.state == "idle" or self.state == "ended" then return false end
	local s = self.session
	local was = self.state
	if not self:SetState("ended", reason) then return false end
	if s and self.ACTIVE[was] and s.chosen > 0 and s.who.kind == "npc" then
		self:Remember(s)
		-- una conversazione vera (almeno una risposta) è contata nella relazione: la prossima non è più «la prima»
		local R = NS.Relationships
		-- con le relazioni spente o in sola lettura (dati di una versione più nuova, ADR 0006) non si scrive nulla (#46)
		local rec = R and R:Writable() and R:Get("npc", s.who.npcID)
		if rec then
			rec.talks = (rec.talks or 0) + 1
			R:Changed()
		end
	end
	self.last = { reason = reason, chosen = s and s.chosen or 0, who = s and s.who, state = was }
	self.session = nil
	local f = Frame()
	if f and f.Hide then f:Hide() end
	return true
end

---Un ricordo del dialogo, solo se il giocatore ha risposto almeno una volta: tipo, ruolo e luogo, mai il testo.
---@param s AUDialogueSession
function N:Remember(s)
	local LM = NS.LivingMemory
	if not (LM and LM.Enabled and LM:Enabled()) then return end
	local ok, zone = pcall(function() return Compat.SafeCall("GetRealZoneText") or Compat.SafeCall("GetZoneText") end)
	LM:Record({ kind = "npc_talk", zone = ok and zone or nil, importance = s.first and 2 or 1, tags = { s.who.role, "ambient" },
		source = "addon" })
end
if NS.LivingMemory then NS.LivingMemory:RegisterKind("npc_talk", 1) end

---------------------------------------------------------------------------
-- Identità
---------------------------------------------------------------------------
---Il ruolo di un NPC che si può dare per certo, e come lo si sa. Mai dal nome o dall'aspetto.
---@param o table ctx.other
---@param interaction? { npcID: integer, kind: string }
---@return string? role
---@return string? how
local function ReliableRole(o, interaction)
	if o.sources and o.sources.role == "user" and o.role then return o.role, "user" end
	local entry = o.npcID and I.npcs[o.npcID]
	if entry and entry.role then return entry.role, "registry" end
	if interaction and interaction.npcID == o.npcID and I.ROLE_OF[interaction.kind] then
		return I.ROLE_OF[interaction.kind], "interaction"
	end
	-- lo stesso NPC (stesso npcID dal GUID) ha già dato in questa sessione un'interazione che ne prova il ruolo
	-- (ad esempio il locandiere che ha chiesto di fissare la dimora): il ruolo non cambia tra un gossip e l'altro
	local seen = o.npcID and I.roles[o.npcID]
	if seen then return seen, "interaction" end
	return nil
end

local function FreshInteraction()
	local i = I.interaction
	if i and GetTime() - i.t <= I.INTERACTION_SECONDS and Compat.SafeCall("UnitExists", "npc") == true then return i end
	return nil
end

---Chi si ha davanti, se si può dare un dialogo.
---@param hint? { npcID: integer, name?: string, kind: string, t?: number } interazione appena aperta (da un evento)
---@return AUDialogueWho? who
---@return string? reason no_target | secret | player | hostile | dead | uncertain | no_script
---@return table? ctx contesto con ctx.other
function N:Identify(hint)
	local interaction = hint or FreshInteraction()
	local subject
	if interaction and Compat.SafeCall("UnitExists", "npc") == true then
		subject = { unit = "npc", interaction = { npcID = interaction.npcID, name = interaction.name, kind = interaction.kind,
			t = interaction.t or GetTime() } }
	elseif Compat.SafeCall("UnitExists", "npc") == true then
		-- una finestra di un NPC è aperta ma non so chi sia (GUID segreto o illeggibile): lo si legge com'è, e resta incerto
		subject = { unit = "npc" }
	end
	local ctx = NS:BuildContext({ otherSubject = subject })
	local o = ctx.other
	if type(o) ~= "table" then return nil, "no_target", ctx end
	if o.secret then return nil, "secret", ctx end
	if o.kind == "player" then return nil, "player", ctx end
	if o.kind ~= "npc" or o.hostile then return nil, "hostile", ctx end
	if not o.npcID then return nil, "uncertain", ctx end
	local unit = subject and "npc" or "target"
	if Compat.SafeCall("UnitIsDead", unit) == true then return nil, "dead", ctx end
	local role, how = ReliableRole(o, interaction)
	if not role then return nil, "uncertain", ctx end
	local script, key = self:FindScript(o.npcID, role)
	if not script then return nil, "no_script", ctx end
	return { kind = "npc", name = o.name, npcID = o.npcID, role = role, how = how, scriptKey = key, sex = o.sex,
		specific = I.npcs[o.npcID] ~= nil }, nil, ctx
end

---Un NPC di prova, controllato dall'addon, per provare la finestra senza un NPC vero (GDD §21-B): non scrive né
---flag né relazioni né ricordi.
---@param style? string burbero | gioviale | caloroso | formale | laconico
---@return AUDialogueWho
function N:TestWho(style)
	local STYLES = {
		gruff = { speech = "gruff", temperament = "gruff" }, jovial = { speech = "jovial", temperament = "cheerful" },
		warm = { speech = "warm" }, formal = { speech = "formal" }, terse = { speech = "terse" }, neutral = {},
	}
	local t = STYLES[style or "neutral"] or STYLES.neutral
	return { kind = "test", name = NS:L("npc_test_name"), role = "innkeeper", how = "test", scriptKey = "innkeeper", specific = false,
		sex = "male", testTraits = t }
end

---Il contesto di una battuta. Per un NPC vero la persona è data dal GUID memorizzato, non dall'unità in quel momento:
---il dialogo non dipende da bersaglio o interazione ancora aperti.
---@param s AUDialogueSession
---@return table ctx
function N:ContextFor(s)
	local who = s.who
	local extra = { npcDialogue = true }
	if who.kind == "test" then
		local o = { kind = "npc", name = who.name, role = who.role, sex = who.sex, actions = {}, sources = { role = "test" },
			temperament = who.testTraits.temperament, speech = who.testTraits.speech }
		extra.other, extra.otherTraits = o, { role = o.role, temperament = o.temperament, speech = o.speech }
	else
		extra.otherSubject = { kind = "npc", key = I.Key("npc", who.npcID), name = who.name, npcID = who.npcID, sex = who.sex }
		extra.relationSubject = { kind = "npc", id = who.npcID }
	end
	local ctx = NS:BuildContext(extra)
	if who.kind == "npc" and type(ctx.other) == "table" and not ctx.other.secret then
		-- la persona e il ruolo li ho stabiliti io, con le fonti affidabili: valgono anche se l'unità non c'è più
		ctx.other.role = who.role
		ctx.other.sex = ctx.other.sex or who.sex
	end
	return ctx
end

---------------------------------------------------------------------------
-- Permessi
---------------------------------------------------------------------------
---Si può proporre o aprire un dialogo adesso? `explicit`: lo chiede il giocatore (comando, tasto, pulsante), che
---ignora intensità e pausa del narratore (GDD §4.2: con l'intensità a 0 restano i dialoghi aperti a mano).
---@param explicit boolean
---@return boolean ok
---@return string? reason
function N:Allowed(explicit)
	local db = NS.db
	if not db or not db.enabled then return false, "disabled" end
	if db.modules.npc == false or db.output.npcDialogues == false then return false, "module" end
	if not explicit then
		if NS.paused then return false, "paused" end
		if db.intensity <= 0 then return false, "silent" end
		if Cfg().autoOffer == false then return false, "no_auto" end
	end
	local f = Frame()
	if not (f and f.IsReady and f:IsReady()) then return false, "no_ui" end
	local screen = Compat:InvasiveScreen()
	if screen then return false, "screen:" .. screen end
	if Compat.SafeCall("UnitAffectingCombat", "player") == true or Compat.SafeCall("InCombatLockdown") == true then
		return false, "combat"
	end
	if Compat.SafeCall("UnitIsDeadOrGhost", "player") == true then return false, "dead" end
	return true
end

---------------------------------------------------------------------------
-- Offerta, apertura, scelte, chiusura
---------------------------------------------------------------------------
---Propone il dialogo (stato `offered`): compare il pulsante, che scade da solo.
---@param who AUDialogueWho
---@param opts? { auto?: boolean, kind?: string } `kind`: l'interazione da cui nasce (gossip, merchant...)
---@return boolean ok
---@return string? reason
function N:Offer(who, opts)
	if self.state == "ended" then self:SetState("idle") end
	if self.state ~= "idle" then
		if self.state == "offered" and self.session and self.session.who.npcID == who.npcID and who.kind == "npc" then
			self.session.deadline = GetTime() + self.OFFER_SECONDS   -- la stessa offerta: resta, e si rinnova
			return true
		end
		return false, "busy"
	end
	local script = self:Script(who.scriptKey)
	if not script then return false, "no_script" end
	local s = NewSession(self, who, script)
	s.origin = opts and opts.kind
	self.session, self.log = s, {}
	self:SetState("offered", opts and opts.auto and "auto" or "command")
	if who.npcID and opts and opts.auto then self.offered[who.npcID .. ":" .. tostring(opts.kind)] = GetTime() end
	local id = s.id
	C_Timer.After(self.OFFER_SECONDS, function()
		local cur = N.session
		if cur and cur.id == id and N.state == "offered" and GetTime() >= cur.deadline then N:End("offer_expired") end
	end)
	Refresh(self)
	return true
end

local function Arm(self, s, seconds)
	s.deadline = GetTime() + seconds
	local id = s.id
	C_Timer.After(seconds, function()
		local cur = N.session
		if cur and cur.id == id and N:IsActive() and GetTime() >= cur.deadline then N:End("idle") end
	end)
end

-- sceglie e compone la battuta del nodo; nil se nessuna regola vale
local function PickLine(self, s, node)
	local ctx = self:ContextFor(s)
	local rec = Engine:PickEntry(node.event, ctx, "say")
	if not rec then return nil, ctx end
	return { text = rec.text, id = rec.id }, ctx
end

-- le risposte disponibili adesso nel nodo (al massimo MAX_CHOICES, solo quelle le cui condizioni valgono)
local function ComputeChoices(self, s, node, ctx)
	local out, lang = {}, NS:Lang()
	for _, cid in ipairs(node.choices or EMPTY) do
		local c = s.script.choices[cid]
		if c and Engine.SafeMatch(c.when, ctx) then
			local label = c.label[lang] or c.label.en or c.label.it
			if type(label) == "string" and label ~= "" then
				table.insert(out, { id = cid, text = label })
				if #out >= self.MAX_CHOICES then break end
			end
		end
	end
	return out
end

-- mostra il nodo: battuta e risposte. Ritorna false se non c'è nulla da dire (il dialogo si chiude)
local function ShowNode(self, s, nodeId)
	local node = s.script.nodes[nodeId]
	if not node then return false end
	local line, ctx = PickLine(self, s, node)
	if not line then return false end
	s.node, s.line, s.turns = nodeId, line, s.turns + 1
	s.choices = ComputeChoices(self, s, node, ctx)
	return true
end

---Il giocatore preme il pulsante dell'offerta (o il comando apre direttamente): si apre la finestra.
---@return boolean ok
---@return string? reason
function N:Open()
	if self.state ~= "offered" or not self.session then return false, "not_offered" end
	local s = self.session
	local ok, why = self:Allowed(true)
	if not ok then self:End(why == "combat" and "combat" or "disabled"); return false, why end
	if s.who.kind == "npc" then
		-- l'interazione reale cambia la relazione e conta una volta; un dialogo di prova non scrive niente
		local R = NS.Relationships
		local before = R and R:Get("npc", s.who.npcID)
		s.first = before == nil or (before.talks or 0) == 0
		if R then R:RecordNPC(s.who.npcID, s.who.name, "ambient", true) end
	end
	if not ShowNode(self, s, s.script.start) then
		self:End("no_line")
		return false, "no_line"
	end
	self:SetState("opened")
	if NS.Pacing then NS.Pacing:Note(GetTime()) end   -- il narratore resta in silenzio: è un momento esplicito
	Arm(self, s, self.IDLE_SECONDS)
	Refresh(self)
	if #s.choices == 0 then
		-- un nodo d'apertura senza risposte: si legge e si chiude
		self:SetState("choice")
		self:SetState("response")
	else
		self:SetState("choice")
	end
	Refresh(self)
	return true
end

---Offerta e apertura insieme, da un comando o dal tasto: il gesto del giocatore vale come offerta accettata.
---@param who AUDialogueWho
---@return boolean ok
---@return string? reason
function N:Start(who)
	local ok, why = self:Allowed(true)
	if not ok then return false, why end
	if self.state == "offered" and self.session and who.kind == "npc" and self.session.who.npcID == who.npcID then
		return self:Open()
	end
	if self:IsActive() then return false, "busy" end
	if self.state == "offered" then self:End("closed") end
	ok, why = self:Offer(who, { auto = false })
	if not ok then return false, why end
	return self:Open()
end

---Il giocatore sceglie la risposta `index` (1-3).
---@param index integer
---@return boolean ok
---@return string? reason
function N:Choose(index)
	local s = self.session
	if self.state ~= "choice" or not s then return false, "not_choosing" end
	local picked = s.choices[index]
	if not picked then return false, "no_choice" end
	local choice = s.script.choices[picked.id]
	if not choice then return false, "no_choice" end
	self:SetState("response", picked.id)
	s.chosen = s.chosen + 1
	local who = s.who
	if who.kind == "npc" then
		-- effetti locali: un flag narrativo (memoria di S6, mai una quest) e un po' di relazione
		if choice.flag and NS.LivingMemory and NS.LivingMemory:Enabled() then
			NS.LivingMemory:SetFlag(self.FlagName(who.scriptKey, choice.flag), "addon")
		end
		local R = NS.Relationships
		if choice.relation and R then R:RecordNPC(who.npcID, who.name, choice.relation, true) end
	end
	Arm(self, s, self.IDLE_SECONDS)
	if not choice.go then
		self:End("finished")
		return true
	end
	if s.turns >= self.MAX_TURNS or not ShowNode(self, s, choice.go) then
		self:End(s.turns >= self.MAX_TURNS and "finished" or "no_line")
		return true
	end
	if #s.choices > 0 then self:SetState("choice") end
	Refresh(self)
	return true
end

---Chiude: dal pulsante, dal comando o dal tasto. Un dialogo già in `response` senza risposte è finito.
---@param reason? string
---@return boolean
function N:Close(reason)
	if self.state == "response" and self.session and #self.session.choices == 0 then
		return self:End(reason or "finished")
	end
	return self:End(reason or "closed")
end

---Dall'offerta (stato `offered`) all'apertura, oppure chiude se il dialogo è già aperto: il tasto assegnato.
---@return boolean
function N:Toggle()
	if self:IsActive() then return self:Close("closed") end
	if self.state == "offered" then
		local ok, reason = self:Open()
		if not ok then self:Explain("npc_refused_", reason) end
		return ok
	end
	local who, why = self:Identify()
	if not who then
		self:Explain("npc_no_", why)
		return false
	end
	local ok, reason = self:Start(who)
	if not ok then self:Explain("npc_refused_", reason) end
	return ok
end

---Dice in chat locale perché il dialogo non c'è: `prefix` è "npc_no_" (identità) o "npc_refused_" (permessi).
---@param prefix string
---@param reason? string
function N:Explain(prefix, reason)
	reason = tostring(reason or "unknown"):gsub(":.*$", "")
	local key = prefix .. reason
	if NS:L(key) == key then key = prefix .. "unknown" end
	NS:Print(NS:L(key))
end

-- il tasto assegnato in Opzioni > Comandi > AddOn
function AzerothUnspoken_NPCDialogue()
	if NS.db then N:Toggle() end
end

---------------------------------------------------------------------------
-- Eventi: offerta da un'interazione valida, interruzioni
---------------------------------------------------------------------------
local EventBus = NS.EventBus
local handlers = {}

-- un dialogo dell'NPC vero (gossip, mercante, volo, addestratore, locandiere, banca): si propone il pulsante
function handlers.NPC_INTERACT(env)
	local c = env.context
	if type(c.npcID) ~= "number" then return end
	local s = N.session
	if s and (N:IsActive() or N.state == "offered") and s.who.npcID and s.who.npcID ~= c.npcID then
		N:End("npc_changed")   -- si è passati a un altro NPC: la finestra non resta lì a parlare del vecchio
	end
	-- una quest si apre: l'offerta sparisce (le quest restano di Blizzard, nessuna proposta sopra)
	if (c.kind == "quest_detail" or c.kind == "quest_turnin") and N.state == "offered" then N:End("quest_open") end
	if not N.OFFER_KINDS[c.kind] or N.state ~= "idle" and N.state ~= "ended" then return end
	if not N:Allowed(false) then return end
	-- al massimo una offerta ogni OFFER_GAP secondi per lo stesso NPC e la stessa finestra (dal gossip al mercante, che
	-- è un'altra finestra, se ne può fare un'altra)
	local last = N.offered[c.npcID .. ":" .. c.kind]
	if last and GetTime() - last < N.OFFER_GAP then return end
	local who = N:Identify({ npcID = c.npcID, name = c.npcName, kind = c.kind, t = GetTime() })
	if who then N:Offer(who, { auto = true, kind = c.kind }) end
end

-- la finestra dell'NPC si è chiusa: un'offerta mai accettata sparisce, un dialogo aperto resta (è indipendente)
function handlers.NPC_INTERACT_END(env)
	local s = N.session
	if N.state == "offered" and s and (s.origin == nil or s.origin == env.context.kind) then N:End("closed") end
end

function handlers.TARGET_CHANGED(env)
	-- un bersaglio nuovo toglie l'offerta fatta sul vecchio (se l'offerta nasceva dal bersaglio, non dall'interazione)
	if N.state == "offered" and N.session and not FreshInteraction() then N:End("closed") end
end

function handlers.COMBAT_START() if N:IsActive() or N.state == "offered" then N:End("combat") end end
function handlers.PLAYER_DEATH() if N:IsActive() or N.state == "offered" then N:End("death") end end
function handlers.WORLD_ENTER() if N:IsActive() or N.state == "offered" then N:End("zone") end end
function handlers.ZONE_ENTER() if N:IsActive() or N.state == "offered" then N:End("zone") end end

for eventType, fn in pairs(handlers) do
	EventBus:Subscribe(eventType, "npcalive", fn)
end

---------------------------------------------------------------------------
-- Narrative Director: modulo, ritmo e battute riservate al dialogo
---------------------------------------------------------------------------
-- con una finestra di dialogo aperta il narratore spontaneo tace (nessuna frase sopra il dialogo)
NS.NarrativeDirector:SetRhythm("npcalive", function()
	if N:IsActive() then return 0, 1 end
end)

-- le battute di dialogo (eventi npcd_*) escono solo dentro un dialogo: né da /au event né dal Director
function N.RegisterDialogueEvent(event)
	NS.NarrativeDirector.EVENT_MODULE[event] = "npc"
	Engine:SetEventGuard(event, "npcalive", function(ctx) return ctx.npcDialogue == true end)
end

---------------------------------------------------------------------------
-- Stato per /au debug e comando
---------------------------------------------------------------------------
---@return string
function N:Status()
	local s = self.session
	local last = self.last
	return ("%s%s; last %s; scripts %d"):format(self.state,
		s and (" (" .. tostring(s.who.name or s.who.role) .. ", " .. tostring(s.who.scriptKey) .. ")") or "",
		last and (last.reason .. ", " .. last.chosen .. " answers") or "-", (function()
			local n = 0
			for _ in pairs(self.scripts) do n = n + 1 end
			return n
		end)())
end

local function Say(key, ...) NS:Print(NS:L(key, ...)) end

local TEST_STYLE = NS.Keywords.Register("talk.styles", { gruff = "gruff", jovial = "jovial", warm = "warm",
	formal = "formal", terse = "terse", neutral = "neutral" })

---/au talk [test [style] | close | role <role> | offer [on|off] | status]
---@param rest? string
function N:Command(rest)
	local word, arg = (rest or ""):match("^([^ ]*) *(.*)$")
	word = NS.Lower(word or "")
	arg = NS.Lower(arg or "")
	if word == "close" then
		if not self:Close("closed") then Say("npc_none_open") end
	elseif word == "test" then
		local ok, why = self:Start(self:TestWho(TEST_STYLE[arg]))
		if not ok then self:Explain("npc_refused_", why) end
	elseif word == "role" then
		self:DeclareRole(arg)
	elseif word == "offer" then
		local on
		on = NS.Keywords.OnOff(arg)
		if on == nil then on = not (NS.db.npcAlive.autoOffer ~= false) end
		NS.db.npcAlive.autoOffer = on
		Say(on and "npc_offer_on" or "npc_offer_off")
	elseif word == "status" then
		NS:Print("NPC Alive: " .. self:Status())
	else
		-- il gesto del giocatore apre il dialogo con chi ha davanti (interazione in corso o bersaglio)
		if self:IsActive() then
			Say("npc_already_open")
			return
		end
		local who, why = self:Identify()
		if not who then self:Explain("npc_no_", why); return end
		local ok, reason = self:Start(who)
		if not ok then self:Explain("npc_refused_", reason) end
	end
end

-- nomi dei ruoli nei comandi: sempre in inglese
local ROLE_ALIAS = NS.Keywords.Register("talk.roles", { innkeeper = "innkeeper", merchant = "merchant", guard = "guard",
	flightmaster = "flightmaster", trainer = "trainer", banker = "banker" })

---/au talk role <role>: l'utente dice che l'NPC davanti a lui ha quel ruolo. Vale come classificazione affidabile
---(la scelta dell'utente è la prima fonte, S6c) e si conserva con la relazione dell'NPC.
---@param arg string
---@return boolean ok
function N:DeclareRole(arg)
	local role = ROLE_ALIAS[arg:gsub(" ", "")]
	if not role then Say("npc_role_bad"); return false end
	local ctx = NS:BuildContext()
	local o = ctx.other
	if type(o) ~= "table" or o.secret or o.kind ~= "npc" or not o.npcID then Say("npc_no_uncertain"); return false end
	if not (NS.Relationships and NS.Relationships:Get("npc", o.npcID)) then Say("npc_not_listed"); return false end
	if not I:SetTrait("npc", o.npcID, "role", role) then Say("npc_not_listed"); return false end
	Say("npc_role_set", NS:L("role_" .. role))
	return true
end

function N:OnInit()
	self.state, self.session, self.last, self.offered, self.log = "idle", nil, nil, {}, {}
	local f = Frame()
	if f and f.Hide then f:Hide() end
end
