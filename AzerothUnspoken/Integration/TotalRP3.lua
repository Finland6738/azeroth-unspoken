-- Azeroth Unspoken: adattatore facoltativo per Total RP 3 (ADR 0004, GDD §8).
-- Senza TRP3, o se le sue API cambiano, l'addon funziona lo stesso: ogni lettura è protetta e, se qualcosa non
-- torna, risponde nil. È l'unico file che tocca TRP3, e solo tramite l'API pubblica `AddOn_TotalRP3.Player`
-- (verificata sul codice di TRP3 installato, Core/Player.lua): GetCurrentUser(), :GetFirstName(), :GetInfo(path).
--
-- Cosa legge, e solo del PROPRIO profilo:
--   - il nome (GetFirstName): con l'opzione `modules.totalRP3`;
--   - i tratti psicologici pubblici (`characteristics/PS`, quelli che TRP3 mostra agli altri giocatori), mappati sui
--     tratti del Character Soul: in più serve il consenso del personaggio (`personality.trp3`, /au soul trp3 on).
-- Non legge note, informazioni fuori dal personaggio, storia o altri campi, e non scrive mai nulla in TRP3.
-- Per le relazioni (S6b): IsKnownPlayer chiede al registro di TRP3 se conosce un giocatore, per proporlo all'utente.
-- Risponde sì/no: nessun dato del profilo viene letto.
-- Per l'interlocutore (S6c): GetOtherProfile legge del profilo PUBBLICO di un altro giocatore (quello che TRP3
-- riceve e mostra a tutti) solo razza e classe personalizzate e i tratti psicologici, con un consenso a parte
-- (`interlocutor.trp3Others`, spento di base, /au who trp3) oltre al modulo `totalRP3`.
-- #191: other players are read through the same public API (`AddOn_TotalRP3.Player.CreateFromUnit(unit)` and the
-- methods of the player object: GetCharacterID, IsCurrentUser, GetProfile, GetCharacteristics, GetCustomRace,
-- GetCustomClass), no longer through the internal `TRP3_API.utils` and `TRP3_API.register`. Every lookup and every call
-- goes through pcall, so a Total RP 3 update that renames or breaks a method makes the reading answer nil, never an
-- error. The player's own roleplay status (IsOutOfCharacter: GetRoleplayStatus, IsInCharacter) can only keep lines
-- private (ChatGateway, `chat.respectOOC`).
local ADDON, NS = ...
local Compat = NS.Compat
---@class AUTotalRP3
local TotalRP3 = {}
NS.TotalRP3 = TotalRP3

-- t[k] inside pcall: a Total RP 3 class is a table with a metatable, and an update could make its __index raise
local function Index(t, k) return t[k] end

---A field of a Total RP 3 table, or nil when it is not a table or reading it raises.
---@param t any
---@param k string
---@return any
local function Field(t, k)
	if type(t) ~= "table" then return nil end
	local ok, v = pcall(Index, t, k)
	if ok then return v end
	return nil
end

-- A static function of `AddOn_TotalRP3.Player` (Core/Player.lua): middleclass serves the statics on the class itself,
-- `static` is the table behind them.
local function Static(name)
	local cls = Field(AddOn_TotalRP3, "Player")
	local f = Field(cls, name)
	if type(f) ~= "function" then f = Field(Field(cls, "static"), name) end
	return type(f) == "function" and f or nil
end

---Calls a method of a Total RP 3 player object inside pcall.
---@param obj any
---@param method string
---@return boolean found the method exists and did not raise
---@return any value
local function Call(obj, method, ...)
	local f = Field(obj, method)
	if type(f) ~= "function" then return false, nil end
	local ok, v = pcall(f, obj, ...)
	if ok then return true, v end
	return false, nil
end

local function CurrentUser()
	local getUser = Static("GetCurrentUser")
	if not getUser then return nil end
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

	-- #191: the roleplay status of the player's own profile (in or out of character), for the OOC hold of the chat
	local sstate, sdetail = Compat.MISSING, "AddOn_TotalRP3 not loaded"
	if user then
		if type(Field(user, "GetRoleplayStatus")) == "function" then
			sstate, sdetail = Compat.AVAILABLE, "Player.GetCurrentUser():GetRoleplayStatus"
		elseif type(Field(user, "IsInCharacter")) == "function" then
			sstate, sdetail = Compat.AVAILABLE, "Player.GetCurrentUser():IsInCharacter"
		else
			sdetail = "GetRoleplayStatus and IsInCharacter missing"
		end
	elseif AddOn_TotalRP3 then
		sdetail = "Player.GetCurrentUser unavailable"
	end
	if sstate == Compat.AVAILABLE and not self:RespectsOOC() then sdetail = sdetail .. " (OOC hold off)" end
	Compat:SetCap("integration:totalRP3:status", "integration", sstate, sdetail)

	-- #191: other players' public profiles, through the public player model only
	local ostate, odetail = Compat.MISSING, "AddOn_TotalRP3 not loaded"
	if Static("CreateFromUnit") then
		ostate, odetail = Compat.AVAILABLE, "Player.CreateFromUnit"
		if not self:HasOtherConsent() then odetail = odetail .. " (no consent)" end
	elseif AddOn_TotalRP3 then
		odetail = "Player.CreateFromUnit unavailable"
	end
	Compat:SetCap("integration:totalRP3:others", "integration", ostate, odetail)
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

---#191: does the chat hold apply? The setting `chat.respectOOC` (on by default), whatever `modules.totalRP3` says: the
---status is only ever used to keep lines private.
---@return boolean
function TotalRP3:RespectsOOC()
	local c = NS.db and NS.db.chat
	return type(c) == "table" and c.respectOOC == true
end

---#191: the player's own Total RP 3 status says "out of character". True only when Total RP 3 says so plainly: without
---Total RP 3, with an unknown status or with an API that changed, the answer is false (the hold never invents an OOC).
---@return boolean
function TotalRP3:IsOutOfCharacter()
	local user = CurrentUser()
	if not user then return false end
	local found, status = Call(user, "GetRoleplayStatus")
	if found then
		local ooc = Field(Field(Field(AddOn_TotalRP3, "Enums"), "ROLEPLAY_STATUS"), "OUT_OF_CHARACTER")
		if type(ooc) ~= "number" then ooc = 2 end   -- Core/Enums.lua: IN_CHARACTER = 1, OUT_OF_CHARACTER = 2
		return type(status) == "number" and status == ooc
	end
	local found2, ic = Call(user, "IsInCharacter")
	return found2 and ic == false
end

---#191: the chat is held because the setting is on and Total RP 3 says the player is out of character.
---@return boolean
function TotalRP3:HoldsChat()
	return self:RespectsOOC() and self:IsOutOfCharacter()
end

---Another player as a Total RP 3 player object, through the public API, or nil: without Total RP 3, with a secret
---identity, for the player's own character or when the API changed. Nothing of the profile is read here.
---@param unit string
---@return table?
local function OtherPlayer(unit)
	if type(unit) ~= "string" or Compat:IsUnitIdentitySecret(unit) then return nil end
	local create = Static("CreateFromUnit")
	if not create then return nil end
	local ok, player = pcall(create, unit)
	if not ok or type(player) ~= "table" then return nil end
	local _, id = Call(player, "GetCharacterID")
	if type(id) ~= "string" or Compat.IsSecret(id) or id == "" then return nil end
	local _, isSelf = Call(player, "IsCurrentUser")
	if isSelf ~= false then return nil end   -- our own character, or a method that no longer answers
	return player
end

-- TRP3 has a profile for this player (its register links the character to one). Only the presence is checked.
local function HasProfile(player)
	local _, profile = Call(player, "GetProfile")
	return type(profile) == "table"
end

---TRP3 conosce questo giocatore (ha il suo profilo nel registro)? Solo presenza: nessun dato letto. Serve a proporlo
---all'utente nella lista delle persone incontrate (S6b); false senza TRP3, con il modulo spento o se l'API è cambiata.
---@param unit string
---@return boolean
function TotalRP3:IsKnownPlayer(unit)
	if not (NS.db and NS.db.modules.totalRP3) then return false end
	local player = OtherPlayer(unit)
	return player ~= nil and HasProfile(player)
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
	if not self:HasOtherConsent() then return nil end
	local player = OtherPlayer(unit)
	if not player or not HasProfile(player) then return nil end
	local _, ch = Call(player, "GetCharacteristics")
	if type(ch) ~= "table" then return nil end
	-- GetCustomRace and GetCustomClass where this version has them, else the same fields of the characteristics
	local foundRace, race = Call(player, "GetCustomRace")
	if not foundRace then race = Field(ch, "RA") end
	local foundClass, class = Call(player, "GetCustomClass")
	if not foundClass then class = Field(ch, "CL") end
	local traits = {}
	for k, v in pairs(self:MapPsycho(self:CleanPsycho(Field(ch, "PS")))) do
		if self.OTHER_TRAITS[k] then traits[k] = v end
	end
	return { race = CleanText(race, self.TEXT_LEN), class = CleanText(class, self.TEXT_LEN), traits = traits }
end
