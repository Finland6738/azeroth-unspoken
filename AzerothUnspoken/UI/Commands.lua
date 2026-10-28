-- Azeroth Unspoken: comandi /unspoken e /au
local ADDON, NS = ...

local MODES = NS.Config.rules["output.mode"].enum

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
	arg = arg:lower()
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
	cmd = cmd:lower()
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
	elseif cmd == "modo" or cmd == "mode" then
		local m = rest:lower()
		local valid = false
		for _, v in ipairs(MODES) do if v == m then valid = true end end
		if valid then db.output.mode = m end
		NS:Print(NS:L("mode_now", NS:L("mode_" .. db.output.mode)))
	elseif cmd == "dire" or cmd == "speak" or cmd == "say" then
		AzerothUnspoken_Speak()
	elseif cmd == "prova" or cmd == "test" then
		Preview(MANUAL[rest:lower()] or (rest ~= "" and rest:lower()) or "battle")
	elseif cmd == "evento" or cmd == "event" then
		local ev = MANUAL[rest:lower()] or rest:lower()
		if not NS:Trigger(ev, nil, true) then NS:Print(NS:L("no_phrase", ev)) end
	elseif MANUAL[cmd] then
		-- per macro: /cast X e poi /au incanta X, così la frase arriva col tasto
		if not NS:Trigger(MANUAL[cmd], rest ~= "" and { target = rest } or nil, true) then
			NS:Print(NS:L("no_phrase", MANUAL[cmd]))
		end
	elseif cmd == "incanta" or cmd == "cast" then
		local ctx = NS:BuildContext({ spell = rest ~= "" and rest or nil })
		local kind = ctx.spellKind
		local ev = (kind == "heal" and "heal") or (kind == "rez" and "rezother") or (kind == "travel" and "travel")
			or (kind == "buff" and not ctx.combat and "buff") or "attack"
		if not NS:Perform(ev, ctx, true) then NS:Print(NS:L("no_phrase", ev)) end
	elseif cmd == "cooldown" then
		local n = tonumber(rest)
		if n then db.pacing.globalCooldownSeconds = math.max(0, n) end
		NS:Print(NS:L("cooldown_now", db.pacing.globalCooldownSeconds))
	elseif cmd == "prob" or cmd == "chance" then
		local ev, v = rest:match("^([^ ]+) +([^ ]+)$")
		SetChance(ev and (MANUAL[ev:lower()] or ev:lower()), v)
	elseif cmd == "ignora" or cmd == "ignore" then
		if rest == "" then
			for name in pairs(db.ignored) do NS:Print(name) end
		else
			local key = rest:lower()
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
		NS.cdb.memory = { uses = {}, last = {}, recent = {}, lastTone = {} }
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
