-- Azeroth Unspoken: comandi /unspoken e /au
-- I nomi dei comandi e dei loro argomenti sono sempre in inglese, in ogni lingua dell'interfaccia (#132):
-- si traducono le descrizioni e i messaggi, mai le parole da digitare. Una sola tabella (COMMANDS) li elenca.
local ADDON, NS = ...
local K = NS.Keywords

local Commands = {}
NS.Commands = Commands

local DEPTH_WORDS = K.Register("depth", { natural = "natural", literary = "literary", elevated = "elevated" })
local CHANNEL_WORDS = K.Register("channel", {
	auto = "auto", say = "SAY", s = "SAY", emote = "EMOTE", e = "EMOTE",
	party = "PARTY", p = "PARTY", raid = "RAID", guild = "GUILD", g = "GUILD",
	instance = "INSTANCE_CHAT", i = "INSTANCE_CHAT",
})
local NARRATOR_WORDS = K.Register("narrator", { history = "history", reset = "reset", clear = "clear" })

-- eventi richiamabili a mano: il nome del comando (e dell'argomento di test/event/chance) -> l'evento
local MANUAL = K.Register("manual_events", {
	greet = "greet", farewell = "farewell", toast = "toast", muse = "muse", threat = "threat",
	battlecry = "battle", pray = "pray", victory = "victory", thanks = "thanks", jest = "jest",
})
local MANUAL_ORDER = { "greet", "farewell", "toast", "muse", "threat", "battlecry", "victory", "pray", "thanks", "jest" }

---------------------------------------------------------------------------
-- Gestori
---------------------------------------------------------------------------
local function Preview(event)
	local ctx = NS:BuildContext()
	local say = NS.Engine:Pick(event, ctx, "say")
	local emote = NS.Engine:Pick(event, ctx, "emote")
	if not say and not emote then
		NS:Print(NS:L("no_phrase", event))
		return
	end
	if say then NS:Print("|cffffffff/s|r " .. say) end
	if emote then NS:Print("|cffff8040/e|r " .. (ctx.player or "") .. " " .. emote) end
end

local function SetChance(event, value)
	value = tonumber(value)
	if value and (value ~= value or value == math.huge or value == -math.huge) then value = nil end   -- nan, inf: non sono percentuali
	if not event or not value then
		local keys = {}
		for ev in pairs(NS.DEFAULT_CHANCE) do keys[ev] = true end
		for ev in pairs(NS.db.chance) do keys[ev] = true end
		local list = {}
		for ev in pairs(keys) do table.insert(list, ev) end
		table.sort(list)
		for _, ev in ipairs(list) do NS:Print(ev .. " = " .. NS:GetChance(ev) .. "%") end
		return
	end
	NS.db.chance[event] = math.max(0, math.min(100, value))
	NS:Print(event .. " = " .. NS.db.chance[event] .. "%")
end

local function ListPacks()
	for _, id in ipairs(NS.Engine.packOrder) do
		local p = NS.Engine.packs[id]
		local state = NS.db.disabledPacks[id] and NS:L("off") or NS:L("on")
		NS:Print(("%s (%s) - %s"):format(p.name or id, id, state))
	end
	-- the folders of the download loaded on demand: language and regions (#85, #101)
	for _, line in ipairs(NS.Packs:StatusLines()) do NS:Print(line) end
end

local function Debug(arg)
	arg = NS.Lower(arg)
	if arg == "trace" then
		NS.Diagnostics:SetTrace(not NS.Diagnostics.trace)
		NS:Print(NS:L("debug_trace", NS.Diagnostics.trace and NS:L("on") or NS:L("off")))
	else
		NS.Diagnostics:PrintReport(arg == "full")
	end
end

local function PrintHelp()
	NS:Print(NS:L("help_title"))
	for _, spec in ipairs(Commands.list) do
		if spec.usage then NS:Print(("/au %s - %s"):format(spec.usage, NS:L(spec.desc))) end
	end
end

local function Language(rest, db)
	local code = NS.Config:NormalizeLocale(rest)
	if code then
		db.locale = code
		NS:Print(NS:L("lang_set", NS.languages[code].name))
		NS.Packs:OnLanguageChanged()
	else
		local names = {}
		for _, c in ipairs(NS.languageOrder) do
			table.insert(names, c .. " = " .. NS.languages[c].name)
		end
		NS:Print(NS:L("lang_list", table.concat(names, ", ")))
	end
end

local function Mode(rest, db)
	if rest ~= "" then
		local mode = NS.Gateway:ParseMode(rest)
		if mode == "AUTO_ONLY_IF_ALLOWED" then
			-- l'invio automatico si sceglie con due comandi: il primo avvisa, il secondo (entro 10 s) conferma
			if NS.Gateway:SelectAuto() == "warned" then NS:Print(NS:L("auto_repeat")) end
		elseif mode then
			NS.Gateway:SetMode(mode)
		else
			NS:Print(NS:L("invalid_value", rest, NS:L("values_chat")))
		end
	end
	NS:Print(NS:L("mode_now", NS:L("chatmode_" .. db.chat.mode .. "_short")))
	NS:Print(NS:L("chatmode_" .. db.chat.mode .. "_help"))
end

local function Channel(rest, db)
	local ch = CHANNEL_WORDS[NS.Lower(rest)]
	if ch then
		db.chat.channel = ch
	elseif rest ~= "" then
		NS:Print(NS:L("invalid_value", rest, NS:L("values_channel")))
	end
	NS:Print(NS:L("channel_now", NS:L("channel_" .. db.chat.channel)))
end

local function Intensity(rest, db)
	local n = tonumber(rest)
	if n then NS.Config:Set("intensity", n) end
	NS:Print(NS:L("intensity_now", db.intensity))
end

local function Depth(rest, db)
	local d = DEPTH_WORDS[NS.Lower(rest)]
	if d then
		db.proseDepth = d
	elseif rest ~= "" then
		NS:Print(NS:L("invalid_value", rest, NS:L("values_depth")))
	end
	NS:Print(NS:L("depth_now", NS:L("depth_" .. db.proseDepth)))
end

local function Narrator(rest)
	local a = NARRATOR_WORDS[NS.Lower(rest)]
	if a == "history" then
		NS.Narrator:ToggleHistory()
	elseif a == "reset" then
		NS.Narrator:ResetPosition()
	elseif a == "clear" then
		NS.Narrator:ClearHistory()
	else
		NS.Narrator:ShowTest()
	end
end

local function Cast(rest)
	local ctx = NS:BuildContext({ spell = rest ~= "" and rest or nil })
	local kind = ctx.spellKind
	local ev = (kind == "heal" and "heal") or (kind == "rez" and "rezother") or (kind == "travel" and "travel")
		or (kind == "buff" and not ctx.combat and "buff") or "attack"
	if not NS.Gateway:Narrate(ev, ctx, {}) then NS:Print(NS:L("no_phrase", ev)) end
end

local function Ignore(rest, db)
	if rest == "" then
		for name in pairs(db.ignored) do NS:Print(name) end
	else
		local key = NS.Lower(rest)
		db.ignored[key] = (not db.ignored[key]) or nil
		NS:Print(NS:L(db.ignored[key] and "ignored" or "unignored", rest))
	end
end

local function Pack(rest, db)
	local id, state = rest:match("^([^ ]+) *([^ ]*)$")
	if id and NS.Engine.packs[id] then
		db.disabledPacks[id] = (NS.Lower(state) == "off") or nil
	end
	ListPacks()
end

local function Stats()
	local total, byEvent = NS.Engine:Stats(NS:TextLang())
	NS:Print(NS:L("stats", total, NS.languages[NS:TextLang()].name))
	local keys = {}
	for ev in pairs(byEvent) do table.insert(keys, ev) end
	table.sort(keys)
	local parts = {}
	for _, ev in ipairs(keys) do table.insert(parts, ev .. " " .. byEvent[ev]) end
	NS:Print(table.concat(parts, ", "))
end

---------------------------------------------------------------------------
-- La tabella dei comandi
---------------------------------------------------------------------------
-- name: il comando inglese; short: forme brevi inglesi; fn(rest, db); usage: la riga dell'aiuto (inglese, uguale in
-- ogni lingua); desc: la chiave della descrizione nella lingua dell'interfaccia; noDb: funziona anche se l'avvio è fallito.
---@type { name: string, short?: string[], fn: fun(rest: string, db: table), usage?: string, desc?: string, noDb?: boolean }[]
Commands.list = {
	{ name = "help", fn = function() PrintHelp() end, usage = "help", desc = "help_help" },
	{ name = "on", fn = function(_, db) db.enabled = true; NS:Print(NS:L("enabled")) end, usage = "on | off", desc = "help_on" },
	{ name = "off", fn = function(_, db) db.enabled = false; NS:Print(NS:L("disabled")) end },
	{ name = "pause", fn = function() NS.Director:TogglePause() end, usage = "pause", desc = "help_pause" },
	{ name = "debug", noDb = true, fn = function(rest) Debug(rest) end, usage = "debug [full|trace]", desc = "help_debug" },
	{ name = "prof", noDb = true, fn = function(rest) NS.Profiler:Command(rest) end, usage = "prof [reset|copy]", desc = "help_prof" },
	{ name = "probe", noDb = true, fn = function(rest) NS.Probe:Command(rest) end, usage = "probe [reset|stop|copy]", desc = "help_probe" },
	{ name = "language", short = { "lang" }, fn = Language, usage = "language [it|en]", desc = "help_language" },
	{ name = "intensity", fn = Intensity, usage = "intensity <0-100>", desc = "help_intensity" },
	{ name = "depth", fn = Depth, usage = "depth natural|literary|elevated", desc = "help_depth" },
	{ name = "mode", fn = Mode, usage = "mode private|preview|confirm|auto", desc = "help_mode" },
	{ name = "channel", fn = Channel, usage = "channel auto|say|emote|party|raid|guild|instance", desc = "help_channel" },
	{ name = "speak", fn = function() AzerothUnspoken_Speak() end, usage = "speak", desc = "help_speak" },
	{ name = "another", fn = function() NS.Gateway:Reroll() end, usage = "another", desc = "help_another" },
	{ name = "cancel", fn = function() NS.Gateway:Discard() end, usage = "cancel", desc = "help_cancel" },
	{ name = "copy", fn = function() NS.Gateway:CopyToChat() end, usage = "copy", desc = "help_copy" },
	{ name = "narrator", fn = Narrator, usage = "narrator [history|reset|clear]", desc = "help_narrator" },
	{ name = "soul", fn = function(rest) NS.Personality:Command(rest) end,
		usage = "soul [list|neutral|archetype <id>|trp3 on|off|<trait> <value>|avoid <topic>]", desc = "help_soul" },
	{ name = "emotion", fn = function(rest) NS.Emotion:Command(rest) end, usage = "emotion [on|off|reset]",
		desc = "help_emotion" },
	{ name = "journal", fn = function(rest) NS.LivingMemory:Command(rest) end,
		usage = "journal [list|places|flag <name>|export|pin <n>|delete <n>|forget <place>|reset]", desc = "help_journal" },
	{ name = "stories", fn = function(rest) NS.StoryArcs:Command(rest) end,
		usage = "stories [list|journal|choose <arc> <option>|start|suspend|resume|skip|disable|enable <arc|all>|max <1|2>|on|off|status]",
		desc = "help_stories" },
	{ name = "relationships", short = { "rel" }, fn = function(rest) NS.Relationships:Command(rest) end,
		usage = "relationships [list|people|add <name>|note <name> <text>|export|...]", desc = "help_relationships" },
	{ name = "place", fn = function() NS.Place:Command() end, usage = "place", desc = "help_place" },
	{ name = "who", fn = function(rest) NS.Interlocutor:Command(rest) end,
		usage = "who [trp3 on|off|trait <trait> <value>]", desc = "help_who" },
	{ name = "talk", fn = function(rest) NS.NPCAlive:Command(rest) end,
		usage = "talk [test [style]|close|role <role>|offer on|off|status]", desc = "help_talk" },
	-- gli eventi a mano (greet, farewell...) si aggiungono più sotto
	{ name = "event", fn = function(rest)
		local ev = MANUAL[NS.Lower(rest)] or NS.Lower(rest)
		if not NS:Trigger(ev) then NS:Print(NS:L("no_phrase", ev)) end
	end, usage = "event <name>", desc = "help_event" },
	{ name = "cast", fn = function(rest) Cast(rest) end, usage = "cast <spell>", desc = "help_cast" },
	{ name = "test", fn = function(rest)
		Preview(MANUAL[NS.Lower(rest)] or (rest ~= "" and NS.Lower(rest)) or "battle")
	end, usage = "test <event>", desc = "help_test" },
	{ name = "chance", fn = function(rest)
		local ev, v = rest:match("^([^ ]+) +([^ ]+)$")
		SetChance(ev and (MANUAL[NS.Lower(ev)] or NS.Lower(ev)), v)
	end, usage = "chance <event> <0-100>", desc = "help_chance" },
	{ name = "cooldown", fn = function(rest, db)
		-- stessi limiti delle impostazioni (0-3600): un valore non valido (nan) non cambia nulla
		NS.Config:Set("pacing.globalCooldownSeconds", rest)
		NS:Print(NS:L("cooldown_now", db.pacing.globalCooldownSeconds))
	end, usage = "cooldown <seconds>", desc = "help_cooldown" },
	{ name = "ignore", fn = Ignore, usage = "ignore <spell>", desc = "help_ignore" },
	{ name = "button", fn = function(_, db) db.ui.showButton = not db.ui.showButton; NS.UpdateButton() end,
		usage = "button", desc = "help_button" },
	{ name = "packs", fn = function() ListPacks() end, usage = "packs", desc = "help_packs" },
	{ name = "pack", fn = Pack, usage = "pack <id> on|off", desc = "help_pack" },
	{ name = "validate", fn = function(rest) NS.Validator:Command(rest) end,
		usage = "validate [full|<pack>]", desc = "help_validate" },
	{ name = "stats", fn = function() Stats() end, usage = "stats", desc = "help_stats" },
	{ name = "memory", fn = function()
		NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
		NS:Print(NS:L("memory_reset"))
	end, usage = "memory", desc = "help_memory" },
	{ name = "options", fn = function() NS.OpenSettings() end, usage = "options", desc = "help_options" },
	{ name = "wizard", fn = function() NS.Wizard:Open() end, usage = "wizard", desc = "help_wizard" },
}

-- gli eventi a mano: /au greet, farewell, toast... (per macro: /cast X e poi /au greet X, così la frase arriva col tasto)
do
	local at
	for i, spec in ipairs(Commands.list) do
		if spec.name == "talk" then at = i end
	end
	for n, word in ipairs(MANUAL_ORDER) do
		local event = MANUAL[word]
		local spec = { name = word, event = event, fn = function(rest)
			if not NS:Trigger(event, rest ~= "" and { target = rest } or nil) then NS:Print(NS:L("no_phrase", event)) end
		end }
		if n == 1 then
			spec.usage = "greet | farewell | toast | muse | threat | battlecry | victory | pray | thanks | jest [target]"
			spec.desc = "help_manual"
		end
		table.insert(Commands.list, at + n, spec)
	end
end

-- ricerca per nome o per forma breve; riempita da Build. `words` è la stessa ricerca come tabella di parole
-- chiave (registrata per il controllo "solo inglese").
Commands.byName = {}
Commands.words = K.Register("commands", {})

---Costruisce la ricerca e restituisce i problemi trovati (due comandi con lo stesso nome o la stessa forma breve).
---@return string[] problems
function Commands.Build()
	local problems, by = {}, {}
	local function Add(word, spec)
		if by[word] then
			table.insert(problems, ("'%s' is used by both '%s' and '%s'"):format(word, by[word].name, spec.name))
		else
			by[word] = spec
		end
	end
	for _, spec in ipairs(Commands.list) do
		Add(spec.name, spec)
		for _, short in ipairs(spec.short or {}) do Add(short, spec) end
	end
	Commands.byName = by
	for word in pairs(Commands.words) do Commands.words[word] = nil end
	for word, spec in pairs(by) do Commands.words[word] = spec.name end
	return problems
end

Commands.Build()

---------------------------------------------------------------------------
-- "Forse intendevi...": le vecchie parole italiane non eseguono nulla, ma suggeriscono il comando inglese.
-- Questa tabella serve solo al suggerimento: non è una tabella di comandi.
---------------------------------------------------------------------------
Commands.HINTS = {
	aiuto = "help", diario = "journal", relazioni = "relationships", relazione = "relationships", luogo = "place",
	dove = "place", chi = "who", parla = "talk", dialogo = "talk", npc = "talk", storie = "stories", storia = "stories",
	archi = "stories", benvenuto = "wizard", annulla = "cancel", scarta = "cancel", altra = "another", copia = "copy",
	dire = "speak", invia = "speak", prova = "test", evento = "event", incanta = "cast", ignora = "ignore",
	pulsante = "button", pacchetti = "packs", pacchetto = "pack", valida = "validate", controlla = "validate",
	info = "stats", memoria = "memory", opzioni = "options", lingua = "language", canale = "channel", modo = "mode",
	chat = "mode", intensita = "intensity", ["intensità"] = "intensity", profondita = "depth", ["profondità"] = "depth",
	pausa = "pause", narratore = "narrator", anima = "soul", profilo = "soul", saluto = "greet", addio = "farewell",
	brindisi = "toast", pensiero = "muse", minaccia = "threat", grido = "battlecry", preghiera = "pray",
	vittoria = "victory", ringrazia = "thanks", grazie = "thanks", scherzo = "jest", prob = "chance",
	diary = "journal", relations = "relationships", bonds = "relationships", where = "place", other = "who",
	dialogue = "talk", story = "stories", arcs = "stories", welcome = "wizard", discard = "cancel", reroll = "another",
	send = "speak", say = "speak", config = "options", hello = "greet", bye = "farewell", battle = "battlecry",
}

local function Distance(a, b)
	local prev, cur = {}, {}
	for j = 0, #b do prev[j] = j end
	for i = 1, #a do
		cur[0] = i
		for j = 1, #b do
			local cost = a:sub(i, i) == b:sub(j, j) and 0 or 1
			cur[j] = math.min(prev[j] + 1, cur[j - 1] + 1, prev[j - 1] + cost)
		end
		prev, cur = cur, prev
	end
	return prev[#b]
end

---Il comando inglese più vicino a una parola sconosciuta, o nil.
---@param word string
---@return string|nil
function Commands.Suggest(word)
	if Commands.HINTS[word] then return Commands.HINTS[word] end
	local best, bestDist
	for _, spec in ipairs(Commands.list) do
		local d = Distance(word, spec.name)
		if #word >= 3 and (spec.name:sub(1, #word) == word or d <= 2) and (not bestDist or d < bestDist) then
			best, bestDist = spec.name, d
		end
	end
	return best
end

---------------------------------------------------------------------------
-- Ingresso
---------------------------------------------------------------------------
-- solo spazi ASCII nei pattern: %s può spezzare le lettere accentate
function Commands.Run(msg)
	local cmd, rest = (msg or ""):match("^ *([^ ]*) *(.-) *$")
	cmd = NS.Lower(cmd)
	local db = NS.db
	if cmd == "" then cmd = "help" end
	local spec = Commands.byName[cmd]

	if spec and spec.noDb then
		spec.fn(rest, db)
	elseif not db then
		-- avvio non riuscito: resta disponibile solo la diagnostica
		NS:Print(NS:L("debug_no_db"))
	elseif spec then
		spec.fn(rest, db)
	else
		local hint = Commands.Suggest(cmd)
		if hint then
			NS:Print(NS:L("cmd_unknown_hint", cmd, hint))
		else
			NS:Print(NS:L("cmd_unknown", cmd))
		end
	end
end

SLASH_AZEROTHUNSPOKEN1 = "/unspoken"
SLASH_AZEROTHUNSPOKEN2 = "/au"
SlashCmdList.AZEROTHUNSPOKEN = function(msg)
	NS.Diagnostics:Guard("command", Commands.Run, msg)
end
