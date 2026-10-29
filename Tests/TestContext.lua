-- Test di Core/ContextResolver.lua: nessuna lettura né confronto di dati dell'unità quando l'identità è segreta
-- (issue #6; GDD §15.1, ADR 0005). Il mock dà un valore segreto per ogni dato di identità di un'unità presente in
-- SECRET_UNITS e fa sollevare un errore a ogni uso del segreto in un calcolo o in un confronto d'ordine.
local NS = ...

local TARGET_FIELDS = {
	"target", "targetPlayer", "hostile", "friendly", "targetDead", "ctype", "ctypeLocal", "elite", "boss", "rare",
	"targetClass", "targetRace", "targetFaction", "enemyFaction", "targetStronger", "targetWeaker",
}

local function Target(extra)
	local t = { name = "Grukk", ctype = "Humanoid", hostile = true, player = true, faction = "Horde", level = 30,
		race = "Orc", class = "WARRIOR", cls = "elite" }
	for k, v in pairs(extra or {}) do t[k] = v end
	return t
end

local function Reset()
	SECRET_UNITS = {}
	P.name, P.class, P.race, P.faction, P.sex, P.level = "Brann", "PALADIN", "Dwarf", "Alliance", 2, 30
	P.target = nil
	P.combat, P.instance, P.group, P.raid = false, false, false, false
end

-- nessun valore segreto in nessun punto del contesto
local function NoSecrets(ctx, msg)
	for k, v in pairs(ctx) do
		T.ok(not issecretvalue(v), msg .. ": ctx." .. tostring(k) .. " è un valore segreto")
	end
end

T.run("bersaglio leggibile: i dati ci sono", function()
	Reset()
	P.target = Target()
	local ctx = NS:BuildContext()
	T.ok(ctx.hasTarget, "c'è un bersaglio")
	T.eq(ctx.target, "Grukk", "nome")
	T.ok(ctx.targetPlayer and ctx.hostile and not ctx.friendly, "giocatore ostile")
	T.eq(ctx.targetClass, "WARRIOR", "classe")
	T.eq(ctx.targetRace, "Orc", "razza")
	T.eq(ctx.targetFaction, "Horde", "fazione")
	T.ok(ctx.enemyFaction, "fazione nemica")
	T.eq(ctx.ctype, "humanoid", "tipo di creatura")
	T.ok(ctx.elite and not ctx.boss, "classificazione")
	T.ok(not ctx.targetSecret, "non segreto")
	-- un bersaglio inesistente non lascia nulla
	P.target = nil
	ctx = NS:BuildContext()
	for _, f in ipairs(TARGET_FIELDS) do T.eq(ctx[f], nil, "senza bersaglio: " .. f) end
	T.ok(not ctx.hasTarget, "hasTarget falso")
end)

T.run("#6: identità del bersaglio segreta: nessun campo del bersaglio, nessun segreto nel contesto", function()
	Reset()
	P.target = Target()
	SECRET_UNITS.target = true
	-- il mock fa dare un segreto a ogni dato di identità del bersaglio
	T.ok(issecretvalue(UnitFactionGroup("target")), "il mock restituisce un segreto")
	local ok, ctx = pcall(function() return NS:BuildContext() end)
	T.ok(ok, "BuildContext non solleva errori: " .. tostring(ctx))
	if not ok then return end
	T.ok(ctx.hasTarget, "l'esistenza del bersaglio si sa")
	T.ok(ctx.targetSecret, "segnalato come segreto")
	for _, f in ipairs(TARGET_FIELDS) do T.eq(ctx[f], nil, "ctx." .. f .. " assente") end
	NoSecrets(ctx, "identità segreta")
	-- i dati del giocatore restano
	T.eq(ctx.class, "PALADIN", "classe del giocatore")
	T.eq(ctx.faction, "Alliance", "fazione del giocatore")
	T.eq(ctx.zone, "Durotar", "zona")
end)

T.run("#6: un singolo dato segreto non entra mai in un confronto", function()
	Reset()
	-- l'identità non è segreta per C_Secrets, ma un dato lo è: si legge come "non so", senza errori
	P.target = Target({ faction = MakeSecret(), class = MakeSecret(), race = MakeSecret(), name = MakeSecret(),
		ctype = MakeSecret(), cls = MakeSecret() })
	local ok, ctx = pcall(function() return NS:BuildContext() end)
	T.ok(ok, "nessun errore: " .. tostring(ctx))
	if not ok then return end
	NoSecrets(ctx, "dati segreti")
	T.eq(ctx.targetFaction, nil, "fazione ignota")
	T.ok(not ctx.enemyFaction, "e nessuna decisione 'fazione nemica' presa sul segreto")
	T.eq(ctx.target, nil, "nome ignoto: le frasi con {target} saranno scartate")
	T.ok(ctx.targetPlayer, "il resto si legge")

	-- anche i dati del giocatore
	Reset()
	P.faction = MakeSecret(); P.class = "MAGE"; P.level = MakeSecret()
	ok, ctx = pcall(function() return NS:BuildContext() end)
	T.ok(ok, "dati del giocatore segreti: nessun errore: " .. tostring(ctx))
	if ok then
		NoSecrets(ctx, "giocatore")
		T.eq(ctx.faction, nil, "fazione ignota")
		T.eq(ctx.level, nil, "livello ignoto")
	end
	Reset()
	SECRET_UNITS.player = true
	ok, ctx = pcall(function() return NS:BuildContext() end)
	T.ok(ok, "identità del giocatore segreta: nessun errore: " .. tostring(ctx))
	if ok then NoSecrets(ctx, "giocatore segreto") end
end)

T.run("#6: con l'identità segreta le frasi si compongono lo stesso, senza il bersaglio", function()
	Reset()
	P.target = Target()
	SECRET_UNITS.target = true
	NS.db.locale = "it"
	NS.db.chat.mode = "PRIVATE"
	local ctx = NS:BuildContext()
	local made = 0
	for _, event in ipairs({ "battle", "victory", "threat", "greet" }) do
		for _ = 1, 20 do
			local ok, text = pcall(function() return NS.Engine:Pick(event, ctx, "say") end)
			T.ok(ok, event .. ": nessun errore di selezione: " .. tostring(text))
			if ok and text then
				made = made + 1
				T.ok(not text:find("Grukk", 1, true), "il nome del bersaglio non compare")
				T.ok(not text:find("{", 1, true), "nessun segnaposto rimasto: " .. text)
				T.ok(not text:find("<secret>", 1, true), "nessun segreto nel testo")
			end
		end
	end
	T.ok(made > 10, "frasi comunque composte: " .. made)
	-- l'intero flusso: un evento di battaglia con il bersaglio segreto non solleva errori
	local before = #NS.Diagnostics.errors
	NS.db.chance.battle = 100
	NS.db.pacing.globalCooldownSeconds = 0
	ADVANCE(300)
	P.combat = true
	FIRE("PLAYER_REGEN_DISABLED")
	ADVANCE(1)
	T.eq(#NS.Diagnostics.errors, before, "nessun errore intercettato dal Guard")
	P.combat = false
	SECRET_UNITS = {}
	P.target = nil
end)
