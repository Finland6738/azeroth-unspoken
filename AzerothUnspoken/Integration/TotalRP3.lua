-- Azeroth Unspoken: adattatore facoltativo per Total RP 3 (ADR 0004, GDD §8).
-- Senza TRP3, o se le sue API cambiano, l'addon funziona lo stesso: ogni lettura è protetta e, se qualcosa non
-- torna, risponde nil. È l'unico file che tocca TRP3, e solo tramite l'API pubblica `AddOn_TotalRP3.Player`
-- (verificata sul codice di TRP3 installato, Core/Player.lua): GetCurrentUser(), :GetFirstName(), :GetInfo(path).
--
-- Cosa legge, e solo del PROPRIO profilo:
--   - il nome (GetFirstName): con l'opzione `modules.totalRP3`;
--   - i tratti psicologici pubblici (`characteristics/PS`, quelli che TRP3 mostra agli altri giocatori), mappati sui
--     tratti del Character Soul: in più serve il consenso del personaggio (`personality.trp3`, /au anima trp3 on).
-- Non legge note, informazioni fuori dal personaggio, storia o altri campi, né il profilo di altri giocatori
-- (quello è lo step S6c, con un altro consenso), e non scrive mai nulla in TRP3. Unica eccezione, per le relazioni
-- (S6b): IsKnownPlayer chiede al registro di TRP3 se conosce un giocatore, per proporlo all'utente. Risponde sì/no:
-- nessun dato del profilo viene letto.
local ADDON, NS = ...
local Compat = NS.Compat
---@class AUTotalRP3
local TotalRP3 = {}
NS.TotalRP3 = TotalRP3

local function CurrentUser()
	local api = AddOn_TotalRP3
	local getUser = type(api) == "table" and type(api.Player) == "table" and api.Player.GetCurrentUser
	if type(getUser) ~= "function" then return nil end
	local ok, user = pcall(getUser)
	if ok and type(user) == "table" then return user end
	return nil
end

-- Tratti psicologici predefiniti di TRP3 (RegisterCharacteristics.lua, PSYCHO_PRESETS): ID -> { sinistra, destra }.
-- V2 va da 0 (tutto a sinistra) a 20 (tutto a destra), 10 è il centro. Solo i tratti che hanno un significato chiaro
-- per il Character Soul sono mappati; gli altri (casto/lussurioso, sincero/ingannatore, asceta/gaudente,
-- caotico/legale, cauto/impulsivo) si ignorano di proposito. Le coppie sono in ordine di priorità: se due tratti
-- TRP3 indicano lo stesso tratto del Soul, vale il primo. Una tabella di dati: se TRP3 cambia, si corregge qui.
TotalRP3.PSYCHO_MAP = {
	{ id = 6, left = { "temperament", "merciful" }, right = { "temperament", "fierce" } },        -- gentile / brutale
	{ id = 11, left = { "temperament", "resolute" } },                                          -- valoroso / codardo
	{ id = 3, left = { "temperament", "merciful" }, right = { "motivation", "vengeance" } },    -- indulgente / vendicativo
	{ id = 8, left = { "morality", "pragmatic" }, right = { "morality", "righteous" } },        -- rinnegato / modello di virtù
	{ id = 7, left = { "faith", "spiritual" }, right = { "faith", "skeptic" } },                -- superstizioso / razionale
	{ id = 4, left = { "motivation", "protection" } },                                          -- altruista / egoista
}
-- distanza minima dal centro (10) perché un tratto TRP3 conti: un valore tiepido non decide il carattere
TotalRP3.PSYCHO_THRESHOLD = 4
TotalRP3.PSYCHO_MAX = 20

function TotalRP3:Probe()
	local user = CurrentUser()
	local state, detail = Compat.MISSING, "AddOn_TotalRP3 not loaded"
	if user then
		if type(user.GetFirstName) == "function" then
			state, detail = Compat.AVAILABLE, "Player.GetCurrentUser():GetFirstName"
		else
			state, detail = Compat.MISSING, "GetFirstName missing"
		end
	elseif AddOn_TotalRP3 then
		detail = "Player.GetCurrentUser unavailable"
	end
	if state == Compat.AVAILABLE and NS.db and not NS.db.modules.totalRP3 then detail = detail .. " (module off)" end
	Compat:SetCap("integration:totalRP3", "integration", state, detail)

	-- tratti psicologici: GetInfo(path) deve esistere e leggere `characteristics/PS` senza errori
	local tstate, tdetail = Compat.MISSING, "AddOn_TotalRP3 not loaded"
	if user then
		if type(user.GetInfo) ~= "function" then
			tdetail = "GetInfo missing"
		else
			local ok, ps = pcall(user.GetInfo, user, "characteristics/PS")
			if ok and (ps == nil or type(ps) == "table") then
				tstate, tdetail = Compat.AVAILABLE, "Player.GetCurrentUser():GetInfo(\"characteristics/PS\")"
			else
				tdetail = ok and ("PS is " .. type(ps)) or "GetInfo raised an error"
			end
		end
	elseif AddOn_TotalRP3 then
		tdetail = "Player.GetCurrentUser unavailable"
	end
	if tstate == Compat.AVAILABLE and not self:HasTraitConsent() then tdetail = tdetail .. " (no consent)" end
	Compat:SetCap("integration:totalRP3:traits", "integration", tstate, tdetail)
	if NS.Personality then NS.Personality:Refresh() end
	return state
end

-- l'addon c'è? (indipendentemente dal consenso dell'utente)
function TotalRP3:IsPresent()
	return AddOn_TotalRP3 ~= nil
end

-- nome del profilo RP del giocatore, se il modulo è attivo e il profilo lo ha
function TotalRP3:GetFirstName()
	if not (NS.db and NS.db.modules.totalRP3) then return nil end
	local user = CurrentUser()
	if not user or type(user.GetFirstName) ~= "function" then return nil end
	local ok, first = pcall(user.GetFirstName, user)
	first = ok and Compat.Readable(first) or nil
	if type(first) == "string" and first ~= "" then return first end
	return nil
end

---TRP3 conosce questo giocatore (ha il suo profilo nel registro)? Solo presenza: nessun dato letto. Serve a proporlo
---all'utente nella lista delle persone incontrate (S6b); false senza TRP3, con il modulo spento o se l'API è cambiata.
---@param unit string
---@return boolean
function TotalRP3:IsKnownPlayer(unit)
	if not (NS.db and NS.db.modules.totalRP3) then return false end
	local api = type(TRP3_API) == "table" and TRP3_API or nil
	local getID = api and type(api.utils) == "table" and type(api.utils.str) == "table" and api.utils.str.getUnitID
	local known = api and type(api.register) == "table" and api.register.isUnitIDKnown
	if type(getID) ~= "function" or type(known) ~= "function" then return false end
	local ok, id = pcall(getID, unit)
	if not ok or type(id) ~= "string" or Compat.IsSecret(id) then return false end
	local ok2, res = pcall(known, id)
	return ok2 and res == true
end

---Il personaggio ha dato il consenso a leggere i suoi tratti pubblici da TRP3 (e l'integrazione è accesa)?
---@return boolean
function TotalRP3:HasTraitConsent()
	local p = NS.cdb and NS.cdb.personality
	return (NS.db and NS.db.modules.totalRP3 == true) and type(p) == "table" and p.trp3 == true
end

---I tratti psicologici pubblici del profilo TRP3 del proprio personaggio, grezzi: { { id =, v = }, ... }.
---nil senza consenso, senza TRP3 o se l'API è cambiata (forma inattesa). Mai un errore.
---@return { id: integer, v: number }[]?
function TotalRP3:ReadPsycho()
	if not self:HasTraitConsent() then return nil end
	local user = CurrentUser()
	if not user or type(user.GetInfo) ~= "function" then return nil end
	local ok, ps = pcall(user.GetInfo, user, "characteristics/PS")
	if not ok or type(ps) ~= "table" then return nil end
	local out = {}
	for _, entry in ipairs(ps) do
		-- solo i tratti predefiniti (con ID numerico) e un valore numerico nell'intervallo di TRP3
		local id, v = type(entry) == "table" and entry.ID, type(entry) == "table" and entry.V2
		if type(id) == "number" and type(v) == "number" and v == v and v >= 0 and v <= self.PSYCHO_MAX then
			table.insert(out, { id = id, v = v })
		end
	end
	return out
end

---I tratti del Character Soul ricavati dal profilo TRP3 del proprio personaggio (vedi PSYCHO_MAP).
---nil senza consenso o senza dati; una tabella vuota se il profilo non dice nulla di decisivo.
---@return AUTraits?
function TotalRP3:GetSoulTraits()
	local read = self:ReadPsycho()
	if not read then return nil end
	local byId = {}
	for _, r in ipairs(read) do byId[r.id] = r.v end
	local traits = {}
	local mid = self.PSYCHO_MAX / 2
	for _, map in ipairs(self.PSYCHO_MAP) do
		local v = byId[map.id]
		if v then
			local pick
			if v <= mid - self.PSYCHO_THRESHOLD then pick = map.left
			elseif v >= mid + self.PSYCHO_THRESHOLD then pick = map.right end
			if pick and traits[pick[1]] == nil then traits[pick[1]] = pick[2] end
		end
	end
	return traits
end
