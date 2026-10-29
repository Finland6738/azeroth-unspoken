-- Azeroth Unspoken: comandi /unspoken e /au
local ADDON, NS = ...

local DEPTH_ALIAS = {
	natural = "natural", naturale = "natural", literary = "literary", letterario = "literary",
	elevated = "elevated", elevato = "elevated",
}
local CHANNEL_ALIAS = {
	auto = "auto", say = "SAY", dire = "SAY", s = "SAY", emote = "EMOTE", e = "EMOTE", me = "EMOTE",
	party = "PARTY", gruppo = "PARTY", p = "PARTY", raid = "RAID", incursione = "RAID", guild = "GUILD", gilda = "GUILD",
	g = "GUILD",
	instance = "INSTANCE_CHAT", istanza = "INSTANCE_CHAT", i = "INSTANCE_CHAT",
}

-- eventi richiamabili a mano, con i nomi in più lingue
local MANUAL = {
	saluto = "greet", greet = "greet", hello = "greet",
	addio = "farewell", farewell = "farewell", bye = "farewell",
	brindisi = "toast", toast = "toast",
	pensiero = "muse", muse = "muse", riflessione = "muse",
	minaccia = "threat", threat = "threat",
	grido = "battle", battlecry = "battle", battaglia = "battle",
	preghiera = "pray", pray = "pray",
	vittoria = "victory", victory = "victory",
	ringrazia = "thanks", thanks = "thanks", grazie = "thanks",
	scherzo = "jest", jest = "jest", battuta = "jest",
}

---------------------------------------------------------------------------
-- Comandi
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
end

local function Debug(arg)
	arg = NS.Lower(arg)
	if arg == "trace" then
		NS.Diagnostics:SetTrace(not NS.Diagnostics.trace)
		NS:Print(NS:L("debug_trace", NS.Diagnostics.trace and NS:L("on") or NS:L("off")))
	else
		NS.Diagnostics:PrintReport(arg == "full" or arg == "tutto")
	end
end

-- solo spazi ASCII nei pattern: %s può spezzare le lettere accentate
local function Command(msg)
	local cmd, rest = (msg or ""):match("^ *([^ ]*) *(.-) *$")
	cmd = NS.Lower(cmd)
	local db = NS.db

	if cmd == "debug" then
		Debug(rest)
	elseif not db then
		-- avvio non riuscito: resta disponibile solo la diagnostica
		NS:Print(NS:L("debug_no_db"))
	elseif cmd == "" or cmd == "aiuto" or cmd == "help" then
		NS:Print(NS:L("help"))
	elseif cmd == "on" then
		db.enabled = true; NS:Print(NS:L("enabled"))
	elseif cmd == "off" then
		db.enabled = false; NS:Print(NS:L("disabled"))
	elseif cmd == "lingua" or cmd == "language" or cmd == "lang" then
		local code = NS.Config:NormalizeLocale(rest)
		if code then
			db.locale = code
			NS:Print(NS:L("lang_set", NS.languages[code].name))
		else
			local names = {}
			for _, c in ipairs(NS.languageOrder) do
				table.insert(names, c .. " = " .. NS.languages[c].name)
			end
			NS:Print(NS:L("lang_list", table.concat(names, ", ")))
		end
	elseif cmd == "chat" or cmd == "modo" or cmd == "mode" then
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
	elseif cmd == "canale" or cmd == "channel" then
		local ch = CHANNEL_ALIAS[NS.Lower(rest)]
		if ch then
			db.chat.channel = ch
		elseif rest ~= "" then
			NS:Print(NS:L("invalid_value", rest, NS:L("values_channel")))
		end
		NS:Print(NS:L("channel_now", NS:L("channel_" .. db.chat.channel)))
	elseif cmd == "intensita" or cmd == "intensità" or cmd == "intensity" then
		local n = tonumber(rest)
		if n then NS.Config:Set("intensity", n) end
		NS:Print(NS:L("intensity_now", db.intensity))
	elseif cmd == "profondita" or cmd == "profondità" or cmd == "depth" then
		local d = DEPTH_ALIAS[NS.Lower(rest)]
		if d then
			db.proseDepth = d
		elseif rest ~= "" then
			NS:Print(NS:L("invalid_value", rest, NS:L("values_depth")))
		end
		NS:Print(NS:L("depth_now", NS:L("depth_" .. db.proseDepth)))
	elseif cmd == "pausa" or cmd == "pause" then
		NS.Director:TogglePause()
	elseif cmd == "narratore" or cmd == "narrator" then
		local a = NS.Lower(rest)
		if a == "cronologia" or a == "history" then
			NS.Narrator:ToggleHistory()
		elseif a == "reset" then
			NS.Narrator:ResetPosition()
		elseif a == "pulisci" or a == "clear" then
			NS.Narrator:ClearHistory()
		else
			NS.Narrator:ShowTest()
		end
	elseif cmd == "anima" or cmd == "soul" or cmd == "personalita" or cmd == "profilo" then
		NS.Personality:Command(rest)
	elseif cmd == "diario" or cmd == "journal" or cmd == "diary" then
		NS.LivingMemory:Command(rest)
	elseif cmd == "relazioni" or cmd == "relazione" or cmd == "relations" or cmd == "relationships"
		or cmd == "bonds" then
		NS.Relationships:Command(rest)
	elseif cmd == "luogo" or cmd == "place" or cmd == "dove" or cmd == "where" then
		NS.Place:Command()
	elseif cmd == "chi" or cmd == "who" or cmd == "interlocutore" or cmd == "other" then
		NS.Interlocutor:Command(rest)
	elseif cmd == "npc" or cmd == "dialogo" or cmd == "parla" or cmd == "talk" or cmd == "dialogue" then
		NS.NPCAlive:Command(rest)
	elseif cmd == "storie" or cmd == "storia" or cmd == "stories" or cmd == "story" or cmd == "archi" or cmd == "arcs" then
		NS.StoryArcs:Command(rest)
	elseif cmd == "benvenuto" or cmd == "wizard" or cmd == "welcome" then
		NS.Wizard:Open()
	elseif cmd == "annulla" or cmd == "scarta" or cmd == "cancel" or cmd == "discard" then
		NS.Gateway:Discard()
	elseif cmd == "altra" or cmd == "another" or cmd == "reroll" then
		NS.Gateway:Reroll()
	elseif cmd == "copia" or cmd == "copy" then
		NS.Gateway:CopyToChat()
	elseif cmd == "dire" or cmd == "speak" or cmd == "say" or cmd == "invia" or cmd == "send" then
		AzerothUnspoken_Speak()
	elseif cmd == "prova" or cmd == "test" then
		Preview(MANUAL[NS.Lower(rest)] or (rest ~= "" and NS.Lower(rest)) or "battle")
	elseif cmd == "evento" or cmd == "event" then
		local ev = MANUAL[NS.Lower(rest)] or NS.Lower(rest)
		if not NS:Trigger(ev) then NS:Print(NS:L("no_phrase", ev)) end
	elseif MANUAL[cmd] then
		-- per macro: /cast X e poi /au incanta X, così la frase arriva col tasto
		if not NS:Trigger(MANUAL[cmd], rest ~= "" and { target = rest } or nil) then
			NS:Print(NS:L("no_phrase", MANUAL[cmd]))
		end
	elseif cmd == "incanta" or cmd == "cast" then
		local ctx = NS:BuildContext({ spell = rest ~= "" and rest or nil })
		local kind = ctx.spellKind
		local ev = (kind == "heal" and "heal") or (kind == "rez" and "rezother") or (kind == "travel" and "travel")
			or (kind == "buff" and not ctx.combat and "buff") or "attack"
		if not NS.Gateway:Narrate(ev, ctx, {}) then NS:Print(NS:L("no_phrase", ev)) end
	elseif cmd == "cooldown" then
		-- stessi limiti delle impostazioni (0-3600): un valore non valido (nan) non cambia nulla
		NS.Config:Set("pacing.globalCooldownSeconds", rest)
		NS:Print(NS:L("cooldown_now", db.pacing.globalCooldownSeconds))
	elseif cmd == "prob" or cmd == "chance" then
		local ev, v = rest:match("^([^ ]+) +([^ ]+)$")
		SetChance(ev and (MANUAL[NS.Lower(ev)] or NS.Lower(ev)), v)
	elseif cmd == "ignora" or cmd == "ignore" then
		if rest == "" then
			for name in pairs(db.ignored) do NS:Print(name) end
		else
			local key = NS.Lower(rest)
			db.ignored[key] = (not db.ignored[key]) or nil
			NS:Print(NS:L(db.ignored[key] and "ignored" or "unignored", rest))
		end
	elseif cmd == "pulsante" or cmd == "button" then
		db.ui.showButton = not db.ui.showButton
		NS.UpdateButton()
	elseif cmd == "pacchetti" or cmd == "packs" then
		ListPacks()
	elseif cmd == "pacchetto" or cmd == "pack" then
		local id, state = rest:match("^([^ ]+) *([^ ]*)$")
		if id and NS.Engine.packs[id] then
			db.disabledPacks[id] = (state == "off") or nil
		end
		ListPacks()
	elseif cmd == "valida" or cmd == "validate" or cmd == "controlla" then
		NS.Validator:Command(rest)
	elseif cmd == "info" or cmd == "stats" then
		local total, byEvent = NS.Engine:Stats(NS:Lang())
		NS:Print(NS:L("stats", total, NS.languages[NS:Lang()].name))
		local keys = {}
		for ev in pairs(byEvent) do table.insert(keys, ev) end
		table.sort(keys)
		local parts = {}
		for _, ev in ipairs(keys) do table.insert(parts, ev .. " " .. byEvent[ev]) end
		NS:Print(table.concat(parts, ", "))
	elseif cmd == "memoria" or cmd == "memory" then
		NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {}, variant = {} }
		NS:Print(NS:L("memory_reset"))
	elseif cmd == "opzioni" or cmd == "options" or cmd == "config" then
		NS.OpenSettings()
	else
		NS:Print(NS:L("help"))
	end
end

SLASH_AZEROTHUNSPOKEN1 = "/unspoken"
SLASH_AZEROTHUNSPOKEN2 = "/au"
SlashCmdList.AZEROTHUNSPOKEN = function(msg)
	NS.Diagnostics:Guard("command", Command, msg)
end
