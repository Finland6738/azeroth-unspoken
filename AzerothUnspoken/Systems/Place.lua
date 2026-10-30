-- Azeroth Unspoken: il luogo (S6c, GDD §5.2, §7.2, §10; ADR 0019).
-- ctx.place descrive dove si trova il personaggio: zona e sottozona, uiMapID, continente, tag e temi (Data/Places.lua),
-- territorio (C_PvP.GetZonePVPInfo), capitale e fazione che la governa, tipo di istanza (GetInstanceInfo), scontro con
-- un boss in corso (ENCOUNTER_START/END), ruolo nel gruppo (UnitGroupRolesAssigned) e stato del campo di battaglia.
--   - Le regole lo leggono con `when = { place = { instanceType = "raid", territory = "hostile" } }` (RuleEngine).
--   - Il Narrative Director cambia ritmo con il tipo di istanza (SetRhythm "place"): sobrio in incursione e durante i
--     boss, frasi brevi nei campi di battaglia, più spazio nel mondo aperto e in locanda; uno scontro con un boss è
--     un momento impegnativo (SetDemandCheck "encounter").
--   - Il fattore C del peso premia le frasi con i tag del luogo (`place.tag:forest`, `place.instance:raid`...).
--   - La memoria dei luoghi (Systems/LivingMemory.lua) usa Place.Key: l'uiMapID quando il client lo dà, il nome
--     della zona come ripiego (issue #31).
-- Ogni API passa da Compat: un valore che manca o è segreto vale "non lo so", mai un valore inventato.
local ADDON, NS = ...
local Engine, Traits, Compat = NS.Engine, NS.Traits, NS.Compat

---@class AUPlace ctx.place: dove si trova il personaggio. I campi che il client non dice restano nil.
---@field key? string chiave stabile del luogo: "map:<uiMapID>" oppure il nome della zona (memoria, issue #31)
---@field zone? string nome della zona nel client
---@field subzone? string
---@field mapID? integer uiMapID (C_Map.GetBestMapForUnit)
---@field mapName? string nome della mappa (C_Map.GetMapInfo)
---@field continent? string kalimdor | eastern | ...
---@field tags table<string, boolean> atmosfera e temi (zona, sottozona e istanza insieme)
---@field mood? string atmosfera principale (come ctx.mood)
---@field territory? string friendly | hostile | contested | sanctuary | combat
---@field capital? boolean
---@field faction? string Alliance | Horde: chi governa il luogo
---@field friendlyCapital? boolean una capitale della propria fazione
---@field hostileCapital? boolean una capitale della fazione avversaria
---@field instanceType string none | party | raid | pvp | arena | scenario
---@field instanceName? string
---@field instanceID? integer
---@field difficulty? integer difficultyID
---@field difficultyName? string
---@field encounter? string nome dello scontro con un boss in corso
---@field encounterID? integer
---@field lastEncounter? string nome dell'ultimo scontro finito da poco (ENCOUNTER_RECENT secondi)
---@field encounterResult? string win | wipe (dell'ultimo scontro finito da poco)
---@field groupRole? string tank | healer | damage
---@field battleground string none | queued | active
---@field rest? boolean riposo nel mondo aperto (locanda o città)
---@field source? string come si è riconosciuto il luogo: map | name | map? (numero non verificato) | nil

---@class AUPlaceModule
local Place = NS:RegisterModule("place")
NS.Place = Place

Place.ENCOUNTER_MAX = 1800      -- secondi oltre i quali uno scontro senza ENCOUNTER_END non vale più
Place.ENCOUNTER_RECENT = 120    -- per quanto l'ultimo scontro resta "appena finito" ({encounter}, encounterResult)
Place.ENCOUNTER_DELAY = 4       -- secondi tra la fine di uno scontro e la frase che lo commenta
Place.SHORT_BYTES = 80          -- frase "breve" per i campi di battaglia (byte della variante più corta)
Place.SHORT_MATCH, Place.SHORT_MISMATCH = 1.3, 0.4

-- Ritmo per tipo di luogo: { probabilità, pause } come moltiplicatori del Narrative Director (GDD §4.2, §10).
-- Gli eventi eccezionali (morte, livello...) non diventano più rari: cambia solo la pausa.
Place.RHYTHM = {
	encounter = { 0.25, 2.0 },   -- scontro con un boss: quasi silenzio
	raid = { 0.5, 1.6 },
	party = { 0.8, 1.25 },
	pvp = { 0.7, 1.2 },
	arena = { 0.4, 1.5 },
	scenario = { 0.8, 1.2 },
	rest = { 1.25, 0.8 },        -- locanda o città nel mondo aperto
}

-- i tag noti (per il validatore e per i tratti di ambito place); quelli dei dati si aggiungono
Place.TAGS = {}
Place.zones, Place.byMap, Place.subzones, Place.instances, Place.byInstanceID, Place.continents = {}, {}, {}, {}, {}, {}

Place.INSTANCE_TYPES = { "none", "party", "raid", "pvp", "arena", "scenario" }
Place.TERRITORIES = { "friendly", "hostile", "contested", "sanctuary", "combat" }
-- C_PvP.GetZonePVPInfo -> territorio
local PVP_TYPE = { friendly = "friendly", hostile = "hostile", contested = "contested", sanctuary = "sanctuary",
	combat = "combat", arena = "combat" }
local ROLES = { TANK = "tank", HEALER = "healer", DAMAGER = "damage" }

Place.encounter = nil       -- { id, name, t }: scontro in corso
Place.last = nil            -- { id, name, success, t }: ultimo scontro finito
Place.queue = "none"        -- stato della coda dei campi di battaglia: none | queued

local EMPTY = {}

local function Str(v)
	if type(v) ~= "string" or Compat.IsSecret(v) or v == "" then return nil end
	return v
end

local function Num(v)
	if type(v) ~= "number" or Compat.IsSecret(v) or v ~= v then return nil end
	return v
end

local function AddTags(set, list)
	for _, t in ipairs(list or EMPTY) do
		if type(t) == "string" and t:match("^[a-z_]+$") then set[t] = true end
	end
end

---------------------------------------------------------------------------
-- Dati (Data/Places.lua e pacchetti)
---------------------------------------------------------------------------
local function DefineTraits()
	local tags = {}
	for t in pairs(Place.TAGS) do table.insert(tags, t) end
	table.sort(tags)
	if #tags == 0 then tags = { "town" } end
	-- tag delle frasi con ambito place (fattore C): place.tag:forest, place.instance:raid, place.territory:hostile
	Traits.Define({ id = "placeTag", tag = "tag", kind = "set", values = tags, scope = "place" })
	Traits.Define({ id = "placeInstance", tag = "instance", kind = "choice", values = Place.INSTANCE_TYPES, scope = "place" })
	Traits.Define({ id = "placeTerritory", tag = "territory", kind = "choice", values = Place.TERRITORIES, scope = "place" })
end
Traits.RegisterScope("place")

local function CleanEntry(e)
	if type(e) ~= "table" then return nil end
	local out = { tags = {} }
	AddTags(out.tags, e.tags)
	for t in pairs(out.tags) do Place.TAGS[t] = true end
	if type(e.mood) == "string" then out.mood = e.mood end
	out.map = Num(e.map) and math.floor(e.map) or nil
	out.id = Num(e.id) and math.floor(e.id) or nil
	out.verified = e.verified == true or nil
	if e.faction == "Alliance" or e.faction == "Horde" then out.faction = e.faction end
	out.capital = e.capital == true or nil
	if out.capital then out.tags.capital = true; Place.TAGS.capital = true end
	if type(e.continent) == "string" then out.continent = e.continent end
	if e.kind == "party" or e.kind == "raid" or e.kind == "pvp" or e.kind == "arena" or e.kind == "scenario" then
		out.kind = e.kind
	end
	return out
end

---Registra luoghi: { zones = { [nome] = voce }, subzones = {...}, instances = {...}, continents = { [uiMapID] = token } }.
---Una voce ha tags, mood, map, id, verified, faction, capital, continent, kind (vedi Data/Places.lua).
---@param def table
function NS:RegisterPlaces(def)
	if type(def) ~= "table" then return end
	for name, e in pairs(def.zones or EMPTY) do
		local c = type(name) == "string" and CleanEntry(e)
		if c then
			c.name = name
			Place.zones[name] = c
			if c.map then Place.byMap[c.map] = c end
			-- l'atmosfera principale resta disponibile come ctx.mood (S1-S4)
			if c.mood and not NS.zoneMoods[NS.Lower(name)] then NS.zoneMoods[NS.Lower(name)] = c.mood end
		end
	end
	for name, e in pairs(def.subzones or EMPTY) do
		local c = type(name) == "string" and CleanEntry(e)
		if c then c.name = name; Place.subzones[name] = c end
	end
	for name, e in pairs(def.instances or EMPTY) do
		local c = type(name) == "string" and CleanEntry(e)
		if c then
			c.name = name
			Place.instances[name] = c
			if c.id then Place.byInstanceID[c.id] = c end
			if c.map then Place.byMap[c.map] = c end
		end
	end
	for id, token in pairs(def.continents or EMPTY) do
		if Num(id) and type(token) == "string" then Place.continents[id] = token end
	end
	-- le atmosfere di NS:RegisterZoneMoods sono anche tag
	for _, mood in pairs(NS.zoneMoods) do Place.TAGS[mood] = true end
	DefineTraits()
end

---La voce dei dati per un luogo. Ordine: uiMapID verificato > nome del client > uiMapID non verificato.
---@param mapID? integer
---@param name? string
---@param pool? table zones (predefinito) o instances
---@param byNumber? table byMap (predefinito) o byInstanceID
---@return table? entry
---@return string? source map | name | map?
function Place:Lookup(mapID, name, pool, byNumber)
	pool, byNumber = pool or self.zones, byNumber or self.byMap
	local byId = mapID and byNumber[mapID]
	if byId and byId.verified then return byId, "map" end
	if name and pool[name] then return pool[name], "name" end
	if byId then return byId, "map?" end
	return nil
end

---La chiave stabile di un luogo: "map:<uiMapID>" se il client lo dà, altrimenti il nome della zona (issue #31).
---@param mapID? integer
---@param zone? string
---@return string?
function Place.Key(mapID, zone)
	if Num(mapID) and mapID > 0 then return "map:" .. math.floor(mapID) end
	return Str(zone)
end

---------------------------------------------------------------------------
-- Lettura dal client
---------------------------------------------------------------------------
---uiMapID del personaggio e il continente (risalendo i genitori della mappa fino al tipo Continent).
---@return integer? mapID
---@return string? mapName
---@return string? continent
function Place:ReadMap()
	local mapID = Num(Compat.SafeCall("C_Map.GetBestMapForUnit", "player"))
	if not mapID then return nil end
	local info = Compat.SafeCall("C_Map.GetMapInfo", mapID)
	local mapName = type(info) == "table" and Str(info.name) or nil
	local continentType = Enum and Enum.UIMapType and Enum.UIMapType.Continent or 2
	local id, guard, continent = mapID, 0, nil
	while id and guard < 8 do
		guard = guard + 1
		if self.continents[id] then continent = self.continents[id]; break end
		local i = id == mapID and info or Compat.SafeCall("C_Map.GetMapInfo", id)
		if type(i) ~= "table" then break end
		if i.mapType == continentType then
			continent = self.continents[id] or (Str(i.name) and NS.Lower(i.name):gsub("[^a-z]", "")) or nil
			break
		end
		id = Num(i.parentMapID)
	end
	return mapID, mapName, continent
end

---Stato del campo di battaglia: active (dentro), queued (in coda o con l'invito aperto), none.
---@param instanceType string
---@return string
function Place:Battleground(instanceType)
	if instanceType == "pvp" or instanceType == "arena" then return "active" end
	if Compat.SafeCall("C_PvP.IsBattleground") == true or Compat.SafeCall("C_PvP.IsArena") == true then return "active" end
	return self.queue or "none"
end

---Rilegge la coda dei campi di battaglia (UPDATE_BATTLEFIELD_STATUS). GetBattlefieldStatus è tra le globali del dump.
function Place:ScanQueue()
	local n = Num(Compat.SafeCall("GetMaxBattlefieldID")) or 0
	local state = "none"
	for i = 1, math.min(n, 5) do
		local status = Str(Compat.SafeCall("GetBattlefieldStatus", i))
		if status == "queued" or status == "confirm" then state = "queued" end
	end
	self.queue = state
	return state
end

local function Encounter(self)
	local e = self.encounter
	if e and GetTime() - e.t > self.ENCOUNTER_MAX then self.encounter, e = nil, nil end
	return e
end

---Costruisce ctx.place. Usa ctx.faction (la fazione del personaggio) e ctx.resting se già letti.
---@param ctx? table
---@return AUPlace
function Place:Read(ctx)
	ctx = ctx or EMPTY
	local p = { tags = {} }
	p.zone = Str(Compat.SafeCall("GetRealZoneText")) or Str(Compat.SafeCall("GetZoneText"))
	p.subzone = Str(Compat.SafeCall("GetSubZoneText"))
	p.mapID, p.mapName, p.continent = self:ReadMap()
	p.key = Place.Key(p.mapID, p.zone)

	local inInstance, iType = Compat.SafeCall("IsInInstance")
	-- GetInstanceInfo restituisce otto valori e più (instanceID è l'ottavo): Compat.SafeCall ne porta quattro, quindi
	-- la chiamata è protetta qui; ogni valore passa da Str/Num, che scartano i segreti
	local name, gType, difficulty, difficultyName, instanceID
	local getInfo = Compat.Resolve("GetInstanceInfo")
	if type(getInfo) == "function" then
		local ok, n, t, d, dn, _, _, _, id = pcall(getInfo)
		if ok then name, gType, difficulty, difficultyName, instanceID = n, t, d, dn, id end
	end
	local instanceType = Str(iType) or Str(gType) or "none"
	if inInstance ~= true and instanceType ~= "none" and Str(gType) == nil then instanceType = "none" end
	p.instanceType = instanceType
	if instanceType ~= "none" then
		p.instanceName = Str(name)
		p.instanceID = Num(instanceID)
		p.difficulty = Num(difficulty)
		p.difficultyName = Str(difficultyName)
	end

	local entry, source = self:Lookup(p.mapID, p.zone)
	if instanceType ~= "none" then
		local ie, isrc = self:Lookup(p.instanceID, p.instanceName or p.zone, self.instances, self.byInstanceID)
		if ie then entry, source = ie, isrc end
	end
	p.source = source
	if entry then
		for t in pairs(entry.tags) do p.tags[t] = true end
		p.continent = p.continent or entry.continent
		p.capital = entry.capital
		p.faction = entry.faction
	end
	local sub = p.subzone and self.subzones[p.subzone]
	if sub then for t in pairs(sub.tags) do p.tags[t] = true end end
	-- l'atmosfera principale (come ctx.mood): dati della zona, poi le atmosfere registrate per nome
	p.mood = (entry and entry.mood) or (p.zone and NS.zoneMoods[NS.Lower(p.zone)]) or nil
	if p.mood then p.tags[p.mood] = true end

	-- territorio: il client prima, i dati come ripiego (chi governa la zona rispetto alla fazione del personaggio)
	local pvpType = Compat.SafeCall("C_PvP.GetZonePVPInfo")
	p.territory = PVP_TYPE[Str(pvpType) or ""]
	if not p.territory and instanceType == "none" and ctx.faction then
		if p.faction then
			p.territory = p.faction == ctx.faction and "friendly" or "hostile"
		elseif entry then
			p.territory = "contested"
		end
	end
	if p.capital and p.faction and ctx.faction then
		p.friendlyCapital = p.faction == ctx.faction
		p.hostileCapital = p.faction ~= ctx.faction
	end
	if p.territory == "sanctuary" then p.tags.sanctuary = true end

	local e = Encounter(self)
	if e then p.encounter, p.encounterID = e.name, e.id end
	local last = self.last
	if last and GetTime() - last.t <= self.ENCOUNTER_RECENT then
		p.lastEncounter, p.encounterResult = last.name, last.success and "win" or "wipe"
	end
	p.groupRole = ROLES[Str(Compat.SafeCall("UnitGroupRolesAssigned", "player")) or ""]
	p.battleground = self:Battleground(instanceType)
	p.rest = instanceType == "none" and ctx.resting == true or nil
	return p
end

---Campi piatti per i segnaposto: {instance} e {encounter} (lo scontro in corso o quello appena finito).
---@param ctx table
function Place.Flatten(ctx)
	local p = ctx.place
	if type(p) ~= "table" then return end
	ctx.instanceName = ctx.instanceName or p.instanceName
	ctx.encounterName = ctx.encounterName or p.encounter or p.lastEncounter
end

---Il profilo per i tag di ambito place: { placeTag = { ... }, placeInstance = ..., placeTerritory = ... }.
---@param p AUPlace
---@return AUTraits
function Place.Traits(p)
	if type(p) ~= "table" then return EMPTY end
	return { placeTag = next(p.tags or EMPTY) and p.tags or nil, placeInstance = p.instanceType, placeTerritory = p.territory }
end

---Il tipo di luogo per il ritmo: encounter | raid | party | pvp | arena | scenario | rest | nil (mondo aperto).
---@param p? AUPlace
---@return string?
function Place.RhythmKind(p)
	if type(p) ~= "table" then return nil end
	if p.encounter then return "encounter" end
	if p.instanceType and p.instanceType ~= "none" then return p.instanceType end
	if p.rest or p.tags and p.tags.inn then return "rest" end
	return nil
end

---------------------------------------------------------------------------
-- Narratore: fattore C, ritmo, impegno
---------------------------------------------------------------------------
local function Shortest(entry)
	if entry.shortest ~= nil and entry.shortestLang == NS:Lang() then return entry.shortest end
	local best
	for _, v in ipairs(entry.text and entry.text[NS:Lang()] or EMPTY) do
		local t = NS.Engine.VariantText(v)
		if type(t) == "string" and (not best or #t < best) then best = #t end
	end
	entry.shortest, entry.shortestLang = best or 0, NS:Lang()
	return entry.shortest
end

---Fattore C del luogo: tag `place.` delle frasi, e in campo di battaglia (o contro un boss) le frasi brevi.
---@param entry AUPhrase
---@param ctx table
---@return number
function Place.Factor(entry, ctx)
	local p = ctx.place
	if type(p) ~= "table" then return 1 end
	local f = Traits.Evaluate(entry.tags, ctx.placeTraits or Place.Traits(p), "place")
	local kind = Place.RhythmKind(p)
	if kind == "pvp" or kind == "arena" or kind == "encounter" then
		f = f * (Shortest(entry) <= Place.SHORT_BYTES and Place.SHORT_MATCH or Place.SHORT_MISMATCH)
	end
	return f
end
Engine:SetWeightHook("C", "place", Place.Factor)

NS.NarrativeDirector:SetRhythm("place", function(event, ctx)
	local r = Place.RHYTHM[Place.RhythmKind(ctx.place) or ""]
	if not r then return nil end
	local important = NS.NarrativeDirector:Priority(event) >= NS.NarrativeDirector.PRIORITY.exceptional
	return important and 1 or r[1], r[2]
end)

-- la fine di uno scontro si commenta solo se uno scontro è davvero finito da poco (anche con un comando manuale)
Engine:SetEventGuard("encounter_end", "place", function(ctx)
	return type(ctx.place) == "table" and ctx.place.lastEncounter ~= nil
end)

-- uno scontro con un boss è sempre impegnativo, anche se il boss non è classificato "worldboss"
NS.NarrativeDirector:SetDemandCheck("encounter", function(ctx)
	return type(ctx.place) == "table" and ctx.place.encounter ~= nil
end)

---------------------------------------------------------------------------
-- Eventi del client (verificati sul dump di Forever)
---------------------------------------------------------------------------
local EventBus = NS.EventBus
EventBus.dedupWindow.ENCOUNTER_START = 2
EventBus.dedupWindow.ENCOUNTER_END = 2
EventBus.dedupWindow.BATTLEFIELD_STATUS = 0

EventBus:AddSource("ENCOUNTER_START", { normalize = function(encounterID, encounterName, difficultyID)
	return "ENCOUNTER_START", { encounterID = encounterID, encounterName = encounterName, difficulty = difficultyID },
		{ key = tostring(encounterID), expect = { "encounterName" } }
end })
EventBus:AddSource("ENCOUNTER_END", { normalize = function(encounterID, encounterName, difficultyID, groupSize, success)
	return "ENCOUNTER_END", { encounterID = encounterID, encounterName = encounterName, success = success },
		{ key = tostring(encounterID) }
end })
EventBus:AddSource("UPDATE_BATTLEFIELD_STATUS", { normalize = function(index)
	return "BATTLEFIELD_STATUS", { index = index }
end })

local handlers = {}

function handlers.ENCOUNTER_START(env)
	local c = env.context
	Place.encounter = { id = Num(c.encounterID), name = Str(c.encounterName), t = GetTime() }
end

function handlers.ENCOUNTER_END(env)
	local c = env.context
	local e = Place.encounter
	Place.encounter = nil
	local success = c.success == 1 or c.success == true
	Place.last = { id = Num(c.encounterID), name = Str(c.encounterName) or (e and e.name), success = success, t = GetTime() }
	-- un commento alla fine dello scontro, a combattimento finito (il Director decide se parlare)
	if NS.Director and C_Timer and C_Timer.After then
		C_Timer.After(Place.ENCOUNTER_DELAY, function()
			if Compat.SafeCall("UnitAffectingCombat", "player") ~= true then
				NS.Director:Offer("encounter_end")
			end
		end)
	end
end

function handlers.BATTLEFIELD_STATUS()
	Place:ScanQueue()
end

-- cambiando zona uno scontro rimasto aperto (disconnessione, uscita) non vale più
function handlers.ZONE_ENTER()
	Place.encounter = nil
end
handlers.WORLD_ENTER = handlers.ZONE_ENTER

for eventType, fn in pairs(handlers) do
	EventBus:Subscribe(eventType, "place", fn)
end

---------------------------------------------------------------------------
-- Diagnostica e comando (/au place): mostra ciò che il client dice del luogo, per verificare i numeri in gioco
---------------------------------------------------------------------------
---@return string
function Place:Status()
	local p = self:Read({ faction = Compat.SafeCall("UnitFactionGroup", "player") })
	return ("%s (map %s, %s), %s%s"):format(p.zone or "?", tostring(p.mapID or "-"), p.source or "unknown",
		p.instanceType, p.encounter and (", encounter " .. p.encounter) or "")
end

local SOURCE_KEY = { map = "map", name = "name", ["map?"] = "guess" }

---Righe di descrizione del luogo attuale (comando /au place).
---@return string[]
function Place:Describe()
	local ctx = NS:BuildContext()
	local p = ctx.place or self:Read(ctx)
	local tags = {}
	for t in pairs(p.tags or EMPTY) do table.insert(tags, t) end
	table.sort(tags)
	local out = {
		NS:L("place_zone", p.zone or "?", p.subzone or "-", tostring(p.mapID or "-"), NS:L("place_src_" .. (SOURCE_KEY[p.source or ""] or "none"))),
		NS:L("place_kind", NS:L("place_instance_" .. p.instanceType), p.instanceName or "-", tostring(p.instanceID or "-"), tostring(p.difficulty or "-")),
		NS:L("place_territory", p.territory and NS:L("place_territory_" .. p.territory) or "-", p.continent or "-",
			p.capital and NS:L(p.hostileCapital and "place_capital_hostile" or "place_capital_friendly") or "-"),
		NS:L("place_tags", #tags > 0 and table.concat(tags, ", ") or "-"),
		NS:L("place_state", p.encounter or p.lastEncounter or "-", p.groupRole and NS:L("place_role_" .. p.groupRole) or "-", p.battleground),
	}
	return out
end

function Place:Command()
	for _, line in ipairs(self:Describe()) do NS:Print(line) end
	if NS.Interlocutor then NS.Interlocutor:Command() end
end

function Place:OnInit()
	self.encounter, self.last, self.queue = nil, nil, "none"
	if not next(self.TAGS) then DefineTraits() end
end
