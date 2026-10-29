-- Azeroth Unspoken: adattatore facoltativo per Total RP 3 (ADR 0004, GDD §8).
-- Senza TRP3, o se le sue API cambiano, l'addon funziona lo stesso: ogni lettura è protetta e, se qualcosa non
-- torna, risponde nil. È l'unico file che tocca TRP3, e solo tramite l'API pubblica `AddOn_TotalRP3.Player`
-- (verificata sul codice di TRP3 installato, Core/Player.lua): GetCurrentUser(), :GetFirstName(), :GetInfo(path).
--
-- Cosa legge, e solo del PROPRIO profilo:
--   - il nome (GetFirstName): con l'opzione `modules.totalRP3`;
--   - i tratti psicologici pubblici (`characteristics/PS`, quelli che TRP3 mostra agli altri giocatori), mappati sui
--     tratti del Character Soul: in più serve il consenso del personaggio (`personality.trp3`, /au anima trp3 on).
-- Non legge note, informazioni fuori dal personaggio, storia o altri campi, e non scrive mai nulla in TRP3.
-- Per le relazioni (S6b): IsKnownPlayer chiede al registro di TRP3 se conosce un giocatore, per proporlo all'utente.
-- Risponde sì/no: nessun dato del profilo viene letto.
-- Per l'interlocutore (S6c): GetOtherProfile legge del profilo PUBBLICO di un altro giocatore (quello che TRP3
-- riceve e mostra a tutti) solo razza e classe personalizzate e i tratti psicologici, con un consenso a parte
-- (`interlocutor.trp3Others`, spento di base, /au chi trp3) oltre al modulo `totalRP3`.
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
	return self:CleanPsycho(ps)
end

---I tratti del Character Soul ricavati dal profilo TRP3 del proprio personaggio (vedi PSYCHO_MAP).
---nil senza consenso o senza dati; una tabella vuota se il profilo non dice nulla di decisivo.
---@return AUTraits?
function TotalRP3:GetSoulTraits()
	local read = self:ReadPsycho()
	if not read then return nil end
	return self:MapPsycho(read)
end

---Valori grezzi di `characteristics/PS` ripuliti: solo i tratti predefiniti (ID numerico) con un valore nell'intervallo.
---@param ps any
---@return { id: integer, v: number }[]
function TotalRP3:CleanPsycho(ps)
	local out = {}
	if type(ps) ~= "table" then return out end
	for _, entry in ipairs(ps) do
		local id, v = type(entry) == "table" and entry.ID, type(entry) == "table" and entry.V2
		if type(id) == "number" and type(v) == "number" and v == v and v >= 0 and v <= self.PSYCHO_MAX then
			table.insert(out, { id = id, v = v })
		end
	end
	return out
end

---I tratti ricavati da valori psicologici già ripuliti (PSYCHO_MAP e soglia dal centro).
---@param read { id: integer, v: number }[]
---@return AUTraits
function TotalRP3:MapPsycho(read)
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

---------------------------------------------------------------------------
-- Profilo pubblico di un altro giocatore (S6c)
---------------------------------------------------------------------------
TotalRP3.TEXT_LEN = 40           -- razza e classe personalizzate: testo breve, senza codici di colore
-- dei tratti psicologici di un altro giocatore si tengono solo quelli che descrivono come si presenta agli altri
TotalRP3.OTHER_TRAITS = { temperament = true, morality = true }

---L'utente ha acconsentito a leggere i profili pubblici TRP3 degli altri giocatori (e l'integrazione è accesa)?
---@return boolean
function TotalRP3:HasOtherConsent()
	local s = NS.db and NS.db.interlocutor
	return (NS.db and NS.db.modules.totalRP3 == true) and type(s) == "table" and s.trp3Others == true
end

local function CleanText(v, n)
	if type(v) ~= "string" or Compat.IsSecret(v) then return nil end
	-- via i codici di colore e di formato (|c...|r, |T...|t) e i caratteri di controllo (classi esplicite: niente %c)
	v = v:gsub("|c" .. ("[0-9A-Fa-f]"):rep(8), ""):gsub("|r", ""):gsub("|T[^|]*|t", ""):gsub("|", ""):gsub("[%z\1-\31\127]", "")
	v = v:gsub("^ +", ""):gsub(" +$", "")
	if v == "" then return nil end
	if #v > n then
		local cut = n
		-- non spezzare una lettera UTF-8: indietro fino all'inizio di un carattere
		while cut > 0 and v:byte(cut + 1) and v:byte(cut + 1) >= 128 and v:byte(cut + 1) < 192 do cut = cut - 1 end
		v = v:sub(1, cut)
	end
	return v
end

---Il profilo pubblico TRP3 di un altro giocatore: { race, class, traits }. nil senza consenso, senza TRP3, se TRP3
---non lo conosce, con l'identità segreta o se l'API è cambiata. Mai un errore, mai una scrittura.
---@param unit string
---@return { race?: string, class?: string, traits: AUTraits }?
function TotalRP3:GetOtherProfile(unit)
	if not self:HasOtherConsent() or Compat:IsUnitIdentitySecret(unit) then return nil end
	local api = type(TRP3_API) == "table" and TRP3_API or nil
	local getID = api and type(api.utils) == "table" and type(api.utils.str) == "table" and api.utils.str.getUnitID
	local reg = api and type(api.register) == "table" and api.register or nil
	local known = reg and reg.isUnitIDKnown
	local getProfile = reg and reg.getUnitIDCurrentProfile
	if type(getID) ~= "function" or type(known) ~= "function" or type(getProfile) ~= "function" then return nil end
	local ok, id = pcall(getID, unit)
	if not ok or type(id) ~= "string" or Compat.IsSecret(id) then return nil end
	local ok2, isKnown = pcall(known, id)
	if not ok2 or isKnown ~= true then return nil end
	local ok3, profile = pcall(getProfile, id)
	if not ok3 or type(profile) ~= "table" or type(profile.characteristics) ~= "table" then return nil end
	local ch = profile.characteristics
	local traits = {}
	for k, v in pairs(self:MapPsycho(self:CleanPsycho(ch.PS))) do
		if self.OTHER_TRAITS[k] then traits[k] = v end
	end
	return { race = CleanText(ch.RA, self.TEXT_LEN), class = CleanText(ch.CL, self.TEXT_LEN), traits = traits }
end
