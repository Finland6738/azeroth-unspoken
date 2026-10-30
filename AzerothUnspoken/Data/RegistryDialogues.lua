-- Le battute dei dialoghi ambientali (step S8, GDD §7.3, §21-B; ADR 0020): ciò che un NPC dice dentro la finestra di
-- UI/DialogueFrame.lua. Sono regole del motore come tutte le altre (voce `npc`, evento `npcd_<ruolo>_<nodo>`), con le
-- stesse condizioni, gli stessi pesi e la stessa anti-ripetizione. Escono SOLO dentro un dialogo (guardia di
-- Systems/NPCAlive.lua): né da /au event né dal Director. I testi stanno in AzerothUnspoken_itIT/Dialogues.lua e
-- AzerothUnspoken_enUS/Dialogues.lua; la struttura dei dialoghi (nodi e risposte) in Data/Dialogues.lua.
--
-- Come si legge la tabella SPEC: per ogni ruolo e nodo, un elenco di "sigle": la voce più un numero.
--   n         battuta neutra del ruolo, per chiunque
--   known     solo se l'NPC è conosciuto (relazione calcolata dalle interazioni vere: `isKnown`)
--   stranger  solo se non lo è
--   again     solo se il giocatore ha già fatto la domanda in un dialogo precedente (flag narrativo)
--   gruff, jovial, warm, formal, terse   il modo di parlare o il temperamento dell'NPC (Data/NPCs.lua o scelta dell'utente)
--   farley, firebrew, gryshka, dughan    un NPC specifico del registro curato (Data/NPCs.lua), per npcID
-- Un NPC burbero e uno gioviale non dicono le stesse cose: le battute con una voce valgono solo per quella voce e
-- pesano di più per chi la ha; quelle neutre restano scritte in modo che reggano ogni carattere.
--
-- Regole editoriali (GDD §5.3, §5.4): un mercante non declama come un re; nessun prezzo, nessuna quest, nessun fatto
-- di cronaca di Azeroth; nessuna promessa che il gioco non mantiene (sconti, stanze, merci); l'NPC non attribuisce al
-- personaggio carattere, passato o decisioni. Le battute non dicono mai di essere le parole dell'NPC vero.
local ADDON, NS = ...

-- npcID verificati nel registro curato (Data/NPCs.lua): le sigle degli NPC specifici
local SPECIFIC = { farley = 295, firebrew = 5111, gryshka = 6929, dughan = 240 }

local STYLES = {
	n = { "everyday" }, known = { "everyday", "intimate" }, stranger = { "everyday" }, again = { "everyday", "ironic" },
	gruff = { "everyday" }, jovial = { "everyday", "ironic" }, warm = { "intimate", "everyday" },
	formal = { "ceremonial" }, terse = { "everyday" },
}
-- ogni ruolo ha il suo flag di "ha già chiesto" per le battute `again` (impostato dalla risposta corrispondente)
local AGAIN = { innkeeper = "npcd_innkeeper_asked_news", merchant = "npcd_merchant_asked_wares" }

---Le condizioni e i tag di una battuta.
---@return table conditions
---@return string[] tags
---@return number weight
local function Spec(role, voice)
	local tag = "other.role:" .. role
	if voice == "n" then
		return { other = { role = role } }, { tag }, 1
	elseif voice == "known" then
		return { other = { role = role }, isKnown = true }, { tag }, 2
	elseif voice == "stranger" then
		return { other = { role = role }, isKnown = false }, { tag }, 1
	elseif voice == "again" then
		return { other = { role = role }, remembered = AGAIN[role] }, { tag }, 2
	elseif voice == "gruff" then
		return { other = { role = role, any = { { temperament = "gruff" }, { speech = { "gruff", "terse" } } } } },
			{ "other.speech:gruff", "other.temperament:gruff" }, 1
	elseif voice == "jovial" then
		return { other = { role = role, any = { { speech = "jovial" }, { temperament = "cheerful" } } } },
			{ "other.speech:jovial", "other.temperament:cheerful" }, 1
	elseif voice == "warm" then
		return { other = { role = role, speech = "warm" } }, { "other.speech:warm" }, 1
	elseif voice == "formal" then
		return { other = { role = role, speech = "formal" } }, { "other.speech:formal" }, 1
	elseif voice == "terse" then
		return { other = { role = role, speech = "terse" } }, { "other.speech:terse" }, 1
	elseif SPECIFIC[voice] then
		return { other = { role = role, npcID = SPECIFIC[voice] } }, { tag }, 3
	end
	error("sigla sconosciuta: " .. tostring(voice))
end

local SPEC = {
	innkeeper = {
		open = { "n1", "n2", "n3", "known1", "stranger1", "again1", "gruff1", "gruff2", "jovial1", "jovial2", "warm1", "warm2",
			"farley1", "farley2", "firebrew1", "gryshka1" },
		news = { "n1", "n2", "n3", "gruff1", "jovial1", "warm1", "known1", "farley1" },
		more = { "n1", "n2", "gruff1", "jovial1", "known1", "stranger1" },
		rest = { "n1", "n2", "n3", "gruff1", "jovial1", "warm1", "known1", "gryshka1", "firebrew1" },
		sit = { "n1", "n2", "gruff1", "jovial1" },
		thanks = { "n1", "n2", "gruff1", "jovial1" },
		bye = { "n1", "n2", "gruff1", "jovial1", "warm1", "known1", "farley1" },
	},
	merchant = {
		open = { "n1", "n2", "n3", "known1", "stranger1", "again1", "gruff1", "gruff2", "jovial1", "jovial2", "warm1" },
		wares = { "n1", "n2", "n3", "gruff1", "jovial1", "known1" },
		haggle = { "n1", "n2", "gruff1", "jovial1", "known1", "stranger1" },
		news = { "n1", "n2", "gruff1", "jovial1", "known1" },
		thanks = { "n1", "n2", "gruff1", "jovial1" },
		bye = { "n1", "n2", "gruff1", "jovial1", "known1" },
	},
	guard = {
		open = { "n1", "n2", "n3", "known1", "stranger1", "terse1", "terse2", "formal1", "formal2", "gruff1", "dughan1" },
		danger = { "n1", "n2", "terse1", "formal1", "gruff1", "known1", "dughan1" },
		directions = { "n1", "n2", "terse1", "formal1", "gruff1" },
		thanks = { "n1", "n2", "terse1", "formal1" },
		bye = { "n1", "n2", "terse1", "formal1", "known1", "dughan1" },
	},
	flightmaster = {
		open = { "n1", "n2", "n3", "known1", "jovial1", "gruff1", "terse1" },
		route = { "n1", "n2", "n3", "gruff1", "jovial1" },
		thanks = { "n1", "n2" },
		bye = { "n1", "n2", "jovial1", "gruff1" },
	},
	trainer = {
		open = { "n1", "n2", "n3", "known1", "stranger1", "gruff1", "gruff2", "warm1", "formal1" },
		advice = { "n1", "n2", "n3", "gruff1", "warm1", "formal1" },
		practice = { "n1", "n2", "n3", "gruff1", "warm1" },
		thanks = { "n1", "n2", "gruff1" },
		bye = { "n1", "n2", "gruff1", "known1" },
	},
}

local events, registry = {}, {}
local ROLES, NODES = {}, {}
for role in pairs(SPEC) do table.insert(ROLES, role) end
table.sort(ROLES)
for _, role in ipairs(ROLES) do
	local nodes = {}
	for node in pairs(SPEC[role]) do table.insert(nodes, node) end
	table.sort(nodes)
	for _, node in ipairs(nodes) do
		local event = ("npcd_%s_%s"):format(role, node)
		-- un evento di dialogo: parla solo dentro un dialogo, senza probabilità né pause (le decide il giocatore)
		events[event] = { category = "social", chance = 0, cooldown = 0 }
		for _, token in ipairs(SPEC[role][node]) do
			local voice = token:match("^([a-z]+)%d+$")
			local when, tags, weight = Spec(role, voice)
			registry[("npcd.%s.%s.%s"):format(role, node, token)] = { event = event, speaker = "npc", styles = STYLES[voice] or STYLES.n,
				tags = tags, conditions = when, weight = weight }
		end
	end
end

NS:RegisterPack({
	id = "base_dialogues",
	name = "Base: dialoghi ambientali (NPC Alive)",
	languages = { "itIT", "enUS" },
	events = events,
	registry = registry,
})
