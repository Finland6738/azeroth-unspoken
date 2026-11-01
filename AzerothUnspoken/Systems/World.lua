-- Azeroth Unspoken: il mondo che il client racconta e l'addon non leggeva (R3, #92 #93 #94 #95 #121; ADR 0028).
-- Meteo, giorno e notte, sottozone e punti di riferimento, missioni, reputazione, riposo (locanda) e volo.
--   - Il contesto (NS:BuildContext) riceve ctx.weather, ctx.isDay e ctx.time, ctx.landmark, ctx.quest, ctx.repStanding,
--     ctx.onFlight e ctx.journey: le condizioni delle frasi li leggono (RuleEngine: weather, dayTime, landmark,
--     questActive, questJustCompleted, repStanding, onFlight, journey...).
--   - Gli eventi nuovi sono candidati del Narrative Director (priorità, pacing e budget sono suoi): weather_change, dawn,
--     dusk, subzone_enter, landmark, quest_progress, quest_complete, reputation_change, rest_enter, journey.
-- Nessuna API è stata provata nel client (si prova con /au probe, #82): ogni lettura passa da Compat, e un valore che
-- manca, è segreto o è incoerente vale "non lo so" (ctx.weather = "unknown", ctx.isDay = nil...), mai un valore inventato.
-- Una frase che nomina il meteo o il volo non esce quando la lettura manca (le condizioni sono false per "non lo so").
-- Cosa si ricorda: solo in memoria, per la sessione, e solo numeri e identificatori (id delle missioni, livelli di
-- reputazione). Il testo delle missioni, delle chat e dei dialoghi non si legge e non si conserva.
-- Le sottozone non caricano pacchetti: i pacchetti regionali (ADR 0025) si caricano al cambio di continente, su
-- WORLD_ENTER e ZONE_ENTER, e questo modulo non pubblica né ascolta quegli eventi per caricarli.
local ADDON, NS = ...
local Compat, EventBus = NS.Compat, NS.EventBus
local ND = NS.NarrativeDirector
local AVAILABLE = Compat.AVAILABLE

---@class AUWorldModule
local World = NS:RegisterModule("world")
NS.World = World

World.SETTLE_WEATHER = 3        -- secondi: il meteo deve restare cambiato (la pioggia che va e viene non fa eventi)
World.SETTLE_SUBZONE = 2.5      -- secondi: la sottozona deve restare quella (i confini sfarfallano)
World.SETTLE_REST = 2           -- secondi: il riposo deve restare acceso
World.SETTLE_QUESTS = 1         -- secondi: il registro delle missioni cambia a raffica
World.SETTLE_REPUTATION = 1.5
World.SETTLE_FLIGHT = 0.8       -- secondi tra la perdita del controllo e la lettura di UnitOnTaxi
World.ARRIVAL_QUIET = 6         -- secondi dopo una schermata di caricamento in cui il mondo tace (parla la zona)
World.SUBZONE_MEMORY = 600      -- secondi prima che la stessa sottozona possa parlare di nuovo
World.MAX_SEEN = 200            -- sottozone ricordate al massimo (la sessione non cresce senza limite)
World.QUEST_RECENT = 180        -- secondi in cui una missione appena consegnata conta come "appena completata"
World.PROGRESS_RECENT = 60      -- secondi in cui l'ultimo avanzamento di una missione conta per questionReady
World.REPUTATION_RECENT = 180
World.JOURNEY_RECENT = 180      -- secondi in cui la partenza o l'arrivo di un volo restano nel contesto
World.JOURNEY_MIN = 20          -- un volo più corto di così non ha un arrivo da raccontare
World.TRANSITION_HOURS = 2      -- ore di alba (dopo il passaggio al giorno) e di tramonto (prima di quello alla notte)
World.POLL = 60                 -- secondi tra due letture dell'ora, solo senza DIEL_CYCLE_CHANGED
World.DAWN, World.DUSK = { 5, 8 }, { 18, 21 }   -- soglie fisse di riserva (ore del server), come prima di R3

-- livelli di reputazione (FactionData.reaction, da 1 a 8) in forma neutra
World.STANDING = { "hated", "hostile", "unfriendly", "neutral", "friendly", "honored", "revered", "exalted" }

-- eventi del mondo: appartengono al modulo "world" (si spengono insieme da /au modules); missioni, reputazione e
-- riposo sono personali. quest_complete e reputation_change valgono più dell'atmosfera ordinaria (priorità 2).
for _, event in ipairs({ "weather_change", "dawn", "dusk", "subzone_enter", "landmark", "journey" }) do
	ND.EVENT_MODULE[event] = "world"
end
NS:SetEventPriority("quest_complete", 2)
NS:SetEventPriority("reputation_change", 2)

local function Offer(event, extra)
	if NS.Director then NS.Director:Offer(event, extra) end
end

local function InCombat()
	return Compat.SafeCall("UnitAffectingCombat", "player") == true or Compat.SafeCall("InCombatLockdown") == true
end

local function Hour()
	local h = Compat.SafeCall("GetGameTime")
	return type(h) == "number" and h or nil
end

local function Lower(s) return NS.Lower(s) end

---------------------------------------------------------------------------
-- Stato (solo in memoria, per la sessione)
---------------------------------------------------------------------------
World.landmarks = {}        -- [id] = punto di riferimento
World.bySubzone = {}        -- [sottozona minuscola] = { punto, ... }
World.landmarkIssues = {}   -- problemi dei dati, per il validatore
World.tokens = {}           -- [nome] = numero dell'ultima verifica programmata
World.seen = {}             -- [zona|sottozona] = momento dell'ultima volta che ha parlato
World.seenCount = 0
World.accepts = {}          -- [questID] = quante volte è stata accettata in questa sessione
World.acceptCount = 0

---Azzera lo stato di sessione (per i test e per /reload).
function World:Reset()
	self.weather, self.isDay, self.dawn, self.dusk, self.period = nil, nil, nil, nil, nil
	self.subzoneKey, self.resting, self.enteredAt = nil, nil, nil
	self.seen, self.seenCount = {}, 0
	self.quests, self.accepts, self.acceptCount = nil, {}, 0
	self.completed, self.progress = nil, nil
	self.standings, self.rep = nil, nil
	self.flight, self.journey = nil, nil
	self.tokens = {}
end

-- Programma una verifica dopo `delay` secondi; una nuova richiesta con lo stesso nome sostituisce la precedente.
-- Questo è il debounce: la verifica legge lo stato di allora, non quello dell'evento che l'ha chiesta.
function World:Settle(name, delay, fn)
	local token = (self.tokens[name] or 0) + 1
	self.tokens[name] = token
	local function Run()
		if self.tokens[name] == token then NS.Diagnostics:Guard("world:" .. name, fn, self) end
	end
	if not Compat.After(delay, Run) then Run() end
end

---Il mondo tace: combattimento, o pochi secondi dopo una schermata di caricamento (parla l'evento di zona).
---@return boolean
function World:Quiet()
	if InCombat() then return true end
	return self.enteredAt ~= nil and GetTime() - self.enteredAt < self.ARRIVAL_QUIET
end

---------------------------------------------------------------------------
-- Giorno e notte (#93)
---------------------------------------------------------------------------
local function InRange(h, r)
	if r[1] <= r[2] then return h >= r[1] and h < r[2] end
	return h >= r[1] or h < r[2]    -- a cavallo della mezzanotte
end

---L'ora del giorno: alba, giorno, tramonto o notte. Con la risposta del client (C_DateAndTime.IsDayTime) il giorno è
---quello che il client dice; l'alba e il tramonto sono le ore di transizione (calibrate dall'ultimo passaggio visto,
---altrimenti le soglie fisse). Senza la risposta del client valgono le soglie fisse di prima di R3.
---@param hour? number ora del server (GetGameTime)
---@param isDay? boolean C_DateAndTime.IsDayTime, o nil se non si sa
---@return string
function World:TimeOfDay(hour, isDay)
	if isDay == false then return "night" end
	if isDay == nil then
		local h = hour or 12
		if InRange(h, self.DAWN) then return "dawn" end
		if h >= 8 and h < 18 then return "day" end
		if InRange(h, self.DUSK) then return "dusk" end
		return "night"
	end
	if hour then
		if InRange(hour, self.dawn or self.DAWN) then return "dawn" end
		if InRange(hour, self.dusk or self.DUSK) then return "dusk" end
	end
	return "day"
end

-- un passaggio visto in gioco calibra l'alba e il tramonto: alba = le ore dopo il giorno, tramonto = quelle prima della notte
local function Calibrate(self, isDay, hour)
	if not hour then return end
	local span, h = self.TRANSITION_HOURS, math.floor(hour)
	if isDay then
		self.dawn = { h % 24, (h + span) % 24 }
	else
		self.dusk = { (h - span) % 24, h % 24 }
	end
end

---Il cambio tra giorno e notte: aggiorna lo stato e, se non è il primo valore letto, propone alba o tramonto.
---@param isDay boolean
function World:OnDayNight(isDay)
	local prev = self.isDay
	self.isDay = isDay
	if prev == nil or prev == isDay then return end
	Calibrate(self, isDay, Hour())
	if self:Quiet() then return end
	local period = isDay and "dawn" or "dusk"
	Offer(period, { time = period })
end

-- Senza DIEL_CYCLE_CHANGED si guarda l'ora ogni POLL secondi: alba e tramonto sono le soglie fisse (o del client).
function World:Poll()
	if Compat:IsAvailable("event:DIEL_CYCLE_CHANGED") then return end
	local hour = Hour()
	if not hour then return end
	local period = self:TimeOfDay(hour, Compat:IsDayTime())
	local prev = self.period
	self.period = period
	if prev == nil or prev == period or self:Quiet() then return end
	if period == "dawn" or period == "dusk" then Offer(period, { time = period }) end
end

---------------------------------------------------------------------------
-- Meteo (#92)
---------------------------------------------------------------------------
-- Il meteo cambia solo se resta cambiato per SETTLE_WEATHER secondi; la prima lettura è il punto di partenza, non un
-- cambiamento, e un tipo sconosciuto non cambia nulla.
function World:CheckWeather()
	local kind = Compat:Weather()
	if kind == "unknown" then return end
	local prev = self.weather
	self.weather = kind
	if prev == nil or prev == kind or self:Quiet() then return end
	Offer("weather_change", { weather = kind })
end

---------------------------------------------------------------------------
-- Sottozone e punti di riferimento (#94)
---------------------------------------------------------------------------
---Registra punti di riferimento: { { id, zone, subzone, tags, mapID, x, y, radius, name }, ... } (Data/Landmarks.lua).
---Un punto è una sottozona; con x e y (frazioni 0-1 della mappa) vale solo quando il giocatore è entro `radius`
---(0,02 se manca), e solo dove il client dà la posizione (non nelle istanze). Senza coordinate vale per nome.
---@param list table[]
function NS:RegisterLandmarks(list)
	if type(list) ~= "table" then return end
	for i, e in ipairs(list) do
		local id = type(e) == "table" and e.id
		local problem
		if type(e) ~= "table" then
			problem = "voce non valida"
		elseif type(id) ~= "string" or not id:match("^[A-Za-z0-9_.%-]+$") then
			problem = "id mancante o non valido"
		elseif World.landmarks[id] then
			problem = "id doppio"
		elseif type(e.subzone) ~= "string" or e.subzone == "" then
			problem = "manca la sottozona"
		elseif e.zone ~= nil and type(e.zone) ~= "string" then
			problem = "zone deve essere un testo"
		elseif (e.x ~= nil or e.y ~= nil) and not (type(e.x) == "number" and type(e.y) == "number"
			and e.x >= 0 and e.x <= 1 and e.y >= 0 and e.y <= 1) then
			problem = "x e y devono essere due numeri da 0 a 1"
		elseif e.radius ~= nil and not (type(e.radius) == "number" and e.radius > 0 and e.radius <= 0.5) then
			problem = "radius deve essere un numero maggiore di 0 e al massimo 0,5"
		elseif e.radius ~= nil and e.x == nil then
			problem = "radius senza coordinate"
		elseif e.x ~= nil and e.mapID ~= nil and type(e.mapID) ~= "number" then
			problem = "mapID deve essere un numero"
		elseif e.tags ~= nil and type(e.tags) ~= "table" then
			problem = "tags deve essere un elenco"
		end
		if problem then
			table.insert(World.landmarkIssues, { id = tostring(id or ("#" .. i)), message = problem })
		else
			local lm = { id = id, zone = e.zone, subzone = e.subzone, name = e.name or e.subzone, mapID = e.mapID,
				x = e.x, y = e.y, radius = e.radius or 0.02, tags = {} }
			for _, t in ipairs(e.tags or {}) do
				if type(t) == "string" then lm.tags[t] = true end
			end
			World.landmarks[id] = lm
			local key = Lower(lm.subzone)
			World.bySubzone[key] = World.bySubzone[key] or {}
			table.insert(World.bySubzone[key], lm)
			-- ids e tag sono i valori ammessi della condizione `landmark`
			local values = NS.Engine.CONDITION_VALUES.landmark
			values[id] = true
			for t in pairs(lm.tags) do values[t] = true end
		end
	end
end

---Il punto di riferimento in cui si trova il giocatore: per sottozona e, se il punto ha coordinate, per distanza.
---@param zone? string
---@param subzone? string
---@param mapID? number
---@return table? landmark
function World:LandmarkAt(zone, subzone, mapID)
	if type(subzone) ~= "string" or subzone == "" then return nil end
	local list = self.bySubzone[Lower(subzone)]
	if not list then return nil end
	local plain
	for _, lm in ipairs(list) do
		if lm.zone == nil or zone == nil or Lower(lm.zone) == Lower(zone) then
			if lm.x then
				local x, y = Compat:PlayerPosition(lm.mapID or mapID)
				if x then
					local dx, dy = x - lm.x, y - lm.y
					if dx * dx + dy * dy <= lm.radius * lm.radius then return lm end
				end
			elseif not plain then
				plain = lm
			end
		end
	end
	return plain
end

local function Key(zone, subzone) return (zone or "") .. "|" .. subzone end

-- sottozone già raccontate: una tabella limitata (si butta ciò che è oltre la memoria, poi tutto se serve)
local function Remember(self, key, now)
	if self.seen[key] == nil then
		if self.seenCount >= self.MAX_SEEN then
			for k, t in pairs(self.seen) do
				if now - t >= self.SUBZONE_MEMORY then self.seen[k] = nil; self.seenCount = self.seenCount - 1 end
			end
			if self.seenCount >= self.MAX_SEEN then self.seen, self.seenCount = {}, 0 end
		end
		self.seenCount = self.seenCount + 1
	end
	self.seen[key] = now
end

-- La sottozona è cambiata e ci è rimasta: propone subzone_enter, o landmark se è un punto di riferimento. Chi esce in
-- campo aperto (sottozona vuota) non racconta nulla; la stessa sottozona non parla di nuovo prima di SUBZONE_MEMORY.
function World:CheckSubzone()
	local zone = Compat.SafeCall("GetRealZoneText") or Compat.SafeCall("GetZoneText")
	local sub = Compat.SafeCall("GetSubZoneText")
	if type(sub) ~= "string" or sub == "" then sub = nil end
	local key = sub and Key(zone, sub) or nil
	if key == self.subzoneKey then return end
	self.subzoneKey = key
	if not sub or self:Quiet() then return end
	local now = GetTime()
	local last = self.seen[key]
	if last and now - last < self.SUBZONE_MEMORY then return end
	Remember(self, key, now)
	local mapID = Compat.SafeCall("C_Map.GetBestMapForUnit", "player")
	local lm = self:LandmarkAt(zone, sub, mapID)
	if lm then
		Offer("landmark", { subzone = sub, landmark = lm.id, landmarkName = sub, landmarkTags = lm.tags })
	else
		Offer("subzone_enter", { subzone = sub })
	end
end

---------------------------------------------------------------------------
-- Missioni (#95): solo id e numeri; né il titolo né il testo si leggono
---------------------------------------------------------------------------
local MAX_LOG = 100

-- Un numero finito (non NaN, non infinito)
local function Finite(v)
	return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge
end

-- { [questID] = { ready, objDone, prog } }, il numero di missioni, quelle pronte; oppure nil se qualcosa non si legge
-- (#166): una voce che il client non dà, nega o segna come segreta rende ignoto tutto il registro, non "zero missioni".
local function ReadQuestLog()
	local state, shown = Compat.Query("C_QuestLog.GetNumQuestLogEntries")
	if state ~= AVAILABLE or not Finite(shown) or shown < 0 then return nil end
	local out, count, ready = {}, 0, 0
	for i = 1, math.min(shown, MAX_LOG) do
		local st, info = Compat.Query("C_QuestLog.GetInfo", i)
		if st ~= AVAILABLE or type(info) ~= "table" then return nil end
		local header, id = Compat.Readable(info.isHeader), Compat.Readable(info.questID)
		if type(header) ~= "boolean" then return nil end
		if not header then
			if not Finite(id) then return nil end
			local q = { objDone = 0, prog = 0 }
			local sc, complete = Compat.Query("C_QuestLog.IsComplete", id)
			if sc ~= AVAILABLE or type(complete) ~= "boolean" then return nil end
			q.ready = complete
			local so, objectives = Compat.Query("C_QuestLog.GetQuestObjectives", id)
			if so ~= AVAILABLE or type(objectives) ~= "table" then return nil end
			for _, o in ipairs(objectives) do
				if type(o) == "table" then
					if Compat.Readable(o.finished) == true then q.objDone = q.objDone + 1 end
					local n = Compat.Readable(o.numFulfilled)
					if Finite(n) then q.prog = q.prog + n end
				end
			end
			out[id] = q
			count = count + 1
			if q.ready then ready = ready + 1 end
		end
	end
	return out, count, ready
end

-- Confronta il registro con quello di prima: un obiettivo finito, o una missione pronta per la consegna, è un avanzamento
-- (un solo evento per lettura, la pronta prima). Le missioni nuove e la prima lettura non sono avanzamenti.
function World:ScanQuests()
	local ok, current, count, ready = pcall(ReadQuestLog)
	if not ok or not current then
		-- unknown, not "no quests": no ctx.quest, and the next good reading is a new baseline (no false progress)
		self.quests = nil
		return
	end
	local prev = self.quests
	self.quests = { list = current, count = count, ready = ready }
	if not prev then return end
	local pick, pickReady
	for id, q in pairs(current) do
		local old = prev.list[id]
		if old then
			if q.ready and not old.ready then
				if not pick or not pickReady or id < pick then pick, pickReady = id, true end
			elseif not q.ready and q.objDone > old.objDone and not pickReady then
				if not pick or id < pick then pick = id end
			end
		end
	end
	if pick then
		self.progress = { id = pick, ready = pickReady == true, t = GetTime() }
		if not InCombat() then Offer("quest_progress", { questID = pick }) end
	end
end

local function Remember1(self, id)
	if self.accepts[id] == nil then
		if self.acceptCount >= self.MAX_SEEN then self.accepts, self.acceptCount = {}, 0 end
		self.acceptCount = self.acceptCount + 1
	end
	self.accepts[id] = (self.accepts[id] or 0) + 1
end

-- QUEST_ACCEPTED: una volta in più per questo id (i tentativi di una missione che si riprende)
function World:Accepted(id)
	if type(id) == "number" then Remember1(self, id) end
	self:Settle("quests", self.SETTLE_QUESTS, function() self:ScanQuests() end)
end

-- QUEST_TURNED_IN: la missione è completata; i tentativi sono quante volte è stata accettata (nil se non lo sappiamo)
function World:TurnedIn(id)
	self.completed = { id = type(id) == "number" and id or nil, t = GetTime(),
		attempts = type(id) == "number" and self.accepts[id] or nil }
	self:Settle("quests", self.SETTLE_QUESTS, function() self:ScanQuests() end)
	if not InCombat() then Offer("quest_complete", { questID = self.completed.id }) end
end

---------------------------------------------------------------------------
-- Reputazione (#95): solo i livelli (da Odiato a Esaltato), mai le quantità né i nomi in una frase
---------------------------------------------------------------------------
local function ReadReputation()
	local state, n = Compat.Query("C_Reputation.GetNumFactions")
	if state ~= AVAILABLE or type(n) ~= "number" then return nil end
	local out = {}
	for i = 1, math.min(n, MAX_LOG) do
		local st, data = Compat.Query("C_Reputation.GetFactionDataByIndex", i)
		if st == AVAILABLE and type(data) == "table" and type(data.factionID) == "number"
			and (data.isHeader ~= true or data.isHeaderWithRep == true) then
			local r = data.reaction
			if type(r) == "number" and r >= 1 and r <= #World.STANDING and r == math.floor(r) then out[data.factionID] = r end
		end
	end
	return out
end

-- Un cambio di livello è un evento; le piccole variazioni dentro un livello no. La prima lettura è il punto di partenza.
function World:ScanReputation()
	local ok, current = pcall(ReadReputation)
	if not ok or not current then return end
	local prev = self.standings
	self.standings = current
	if not prev then return end
	local pick, from, to
	for id, r in pairs(current) do
		local old = prev[id]
		if old and old ~= r and (not pick or id < pick) then pick, from, to = id, old, r end
	end
	if not pick then return end
	local direction = to > from and "up" or "down"
	self.rep = { standing = self.STANDING[to], direction = direction, t = GetTime() }
	if not InCombat() then
		Offer("reputation_change", { repStanding = self.rep.standing, repDirection = direction })
	end
end

---------------------------------------------------------------------------
-- Riposo e volo (#121)
---------------------------------------------------------------------------
function World:CheckRest()
	local resting = Compat.SafeCall("IsResting") == true
	local prev = self.resting
	self.resting = resting
	if prev == false and resting and not self:Quiet() then Offer("rest_enter") end
end

-- Un volo comincia quando, dopo aver perso il controllo, UnitOnTaxi dice vero (perdere il controllo è anche un
-- panico o uno stordimento: lì UnitOnTaxi dice falso e non succede nulla). Se UnitOnTaxi manca, nessun volo.
function World:CheckFlightStart()
	if self.flight or Compat:OnTaxi() ~= true then return end
	self.flight = { t = GetTime() }
	self.journey = { stage = "start", t = GetTime() }
	if not InCombat() then Offer("journey") end
end

-- Il volo finisce quando si riprende il controllo e UnitOnTaxi dice falso, o con una schermata di caricamento.
function World:CheckFlightEnd(forced)
	local flight = self.flight
	if not flight then return end
	if not forced and Compat:OnTaxi() ~= false then return end
	self.flight = nil
	local seconds = GetTime() - flight.t
	self.journey = { stage = "arrival", t = GetTime(), seconds = seconds }
	if seconds >= self.JOURNEY_MIN and not InCombat() then Offer("journey") end
end

---------------------------------------------------------------------------
-- Il contesto
---------------------------------------------------------------------------
---Aggiunge al contesto le letture del mondo. Chiamata da NS:BuildContext dopo zona e sottozona.
---@param ctx table
function World:Context(ctx)
	local now = GetTime()
	ctx.weather = Compat:Weather()
	ctx.onFlight = Compat:OnTaxi()

	local lm = self:LandmarkAt(ctx.zone, ctx.subzone, ctx.place and ctx.place.mapID)
	if lm then
		ctx.landmark, ctx.landmarkName, ctx.landmarkTags = lm.id, ctx.subzone, lm.tags
	end

	local q = self.quests
	if q then
		local c = { count = q.count, readyCount = q.ready, active = q.list }
		local done = self.completed
		if done and now - done.t <= self.QUEST_RECENT then
			c.justCompleted, c.completedID, c.attempts = true, done.id, done.attempts
		end
		local p = self.progress
		if p and now - p.t <= self.PROGRESS_RECENT then c.recentProgress, c.progressReady = true, p.ready end
		ctx.quest = c
	elseif self.completed and now - self.completed.t <= self.QUEST_RECENT then
		ctx.quest = { justCompleted = true, completedID = self.completed.id, attempts = self.completed.attempts }
	end

	local rep = self.rep
	if rep and now - rep.t <= self.REPUTATION_RECENT then ctx.repStanding, ctx.repDirection = rep.standing, rep.direction end

	local j = self.journey
	if j and now - j.t <= self.JOURNEY_RECENT then ctx.journey, ctx.journeySeconds = j.stage, j.seconds end
end

---Riepilogo per /au debug.
---@return string
function World:Status()
	local lm = 0
	for _ in pairs(self.landmarks) do lm = lm + 1 end
	local quests = self.quests and tostring(self.quests.count) or "?"
	return ("weather %s, day %s, resting %s, quests %s, flight %s, landmarks %d"):format(
		Compat:Weather(), tostring(Compat:IsDayTime()), tostring(self.resting), quests, tostring(self.flight ~= nil), lm)
end

---------------------------------------------------------------------------
-- Sorgenti: eventi del client -> eventi normalizzati. Sono registrate con Compat: un evento che il client non conosce
-- spegne solo la funzione. QUEST_ACCEPTED e QUEST_TURNED_IN sono già sorgenti di Systems/Relationships.lua (QUEST_STATE):
-- qui si ascolta quello stesso evento normalizzato, non si registra una seconda sorgente.
---------------------------------------------------------------------------
EventBus.dedupWindow.WEATHER_CHANGE = 1
EventBus.dedupWindow.SUBZONE_ENTER = 1

EventBus:AddSource("WEATHER_CHANGED", { normalize = function()
	return "WEATHER_CHANGE", nil, { key = "w" }
end })

EventBus:AddSource("DIEL_CYCLE_CHANGED", { normalize = function(isDay)
	isDay = Compat.Readable(isDay)
	if type(isDay) ~= "boolean" then isDay = nil end
	return "DIEL_CHANGE", { isDay = isDay }, { key = tostring(isDay), window = 30 }
end })

local function Subzone(indoors)
	return function()
		local _, sub = Compat.Query("GetSubZoneText")
		if type(sub) ~= "string" then sub = "" end
		return "SUBZONE_ENTER", { subzone = sub ~= "" and sub or nil, indoors = indoors }, { key = sub }
	end
end
EventBus:AddSource("ZONE_CHANGED", { normalize = Subzone(false) })
EventBus:AddSource("ZONE_CHANGED_INDOORS", { normalize = Subzone(true) })

EventBus:AddSource("PLAYER_UPDATE_RESTING", { normalize = function()
	return "REST_CHANGE", nil, { key = tostring(Compat.SafeCall("IsResting") == true), window = 1 }
end })

EventBus:AddSource("PLAYER_CONTROL_LOST", { normalize = function()
	return "CONTROL_LOST", nil, { key = "lost", window = 1 }
end })
EventBus:AddSource("PLAYER_CONTROL_GAINED", { normalize = function()
	return "CONTROL_GAINED", nil, { key = "gained", window = 1 }
end })

EventBus:AddSource("QUEST_LOG_UPDATE", { normalize = function()
	return "QUEST_LOG_CHANGED", nil, { key = "log", window = 1 }
end })
EventBus:AddSource("QUEST_REMOVED", { normalize = function()
	return "QUEST_LOG_CHANGED", nil, { key = "removed", window = 1 }
end })

EventBus:AddSource("UPDATE_FACTION", { normalize = function()
	return "FACTION_UPDATE", nil, { key = "faction", window = 1 }
end })

---------------------------------------------------------------------------
-- Gestori
---------------------------------------------------------------------------
local handlers = {}

function handlers.WEATHER_CHANGE()
	World:Settle("weather", World.SETTLE_WEATHER, function() World:CheckWeather() end)
end

function handlers.DIEL_CHANGE(env)
	local isDay = env.context.isDay
	if isDay == nil then isDay = Compat:IsDayTime() end
	if isDay ~= nil then World:OnDayNight(isDay) end
end

function handlers.SUBZONE_ENTER()
	World:Settle("subzone", World.SETTLE_SUBZONE, function() World:CheckSubzone() end)
end

function handlers.REST_CHANGE()
	World:Settle("rest", World.SETTLE_REST, function() World:CheckRest() end)
end

function handlers.CONTROL_LOST()
	World:Settle("flightStart", World.SETTLE_FLIGHT, function() World:CheckFlightStart() end)
end

function handlers.CONTROL_GAINED()
	World:Settle("flightEnd", World.SETTLE_FLIGHT, function() World:CheckFlightEnd() end)
end

function handlers.QUEST_LOG_CHANGED()
	World:Settle("quests", World.SETTLE_QUESTS, function() World:ScanQuests() end)
end

function handlers.FACTION_UPDATE()
	World:Settle("reputation", World.SETTLE_REPUTATION, function() World:ScanReputation() end)
end

-- QUEST_ACCEPTED e QUEST_TURNED_IN, normalizzati da Systems/Relationships.lua con l'id della missione (se il client lo dà)
function handlers.QUEST_STATE(env)
	local c = env.context
	if c.state == "accepted" then
		World:Accepted(c.questID)
	elseif c.state == "turned_in" then
		World:TurnedIn(c.questID)
	end
end

-- Una schermata di caricamento (accesso, zona nuova) o un cambio di zona: i punti di partenza si rileggono senza eventi e
-- il mondo tace per ARRIVAL_QUIET secondi (parla l'evento di zona). Questo evento non carica pacchetti: lo fanno
-- Core/Packs.lua con i suoi ascoltatori, al cambio di continente.
local function Arrived()
	World.enteredAt = GetTime()
	local kind = Compat:Weather()
	if kind ~= "unknown" then World.weather = kind end
	World.isDay = Compat:IsDayTime()
	World.resting = Compat.SafeCall("IsResting") == true
	local zone = Compat.SafeCall("GetRealZoneText") or Compat.SafeCall("GetZoneText")
	local sub = Compat.SafeCall("GetSubZoneText")
	World.subzoneKey = (type(sub) == "string" and sub ~= "") and Key(zone, sub) or nil
	-- il registro e la reputazione si leggono un po' dopo, a mondo caricato: sono il punto di partenza
	World:Settle("quests", 5, function() World:ScanQuests() end)
	World:Settle("reputation", 6, function() World:ScanReputation() end)
end

-- una schermata di caricamento chiude un volo (di solito arriva anche il controllo, ma non è detto); il cambio di zona
-- a metà volo no: un volo attraversa zone
function handlers.WORLD_ENTER()
	Arrived()
	World:CheckFlightEnd(true)
end
handlers.ZONE_ENTER = Arrived

for eventType, fn in pairs(handlers) do
	EventBus:Subscribe(eventType, "world", fn)
end

function World:OnInit()
	self:Reset()
	Compat.Ticker(self.POLL, function() NS.Diagnostics:Guard("world:poll", World.Poll, World) end)
end
