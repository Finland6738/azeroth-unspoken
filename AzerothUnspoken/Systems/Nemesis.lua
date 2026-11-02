-- Azeroth Unspoken: the nemesis (N7, #219, ADR 0045). An elite or rare NPC that kills the character becomes a nemesis:
-- a story of the arc `nemesis` (Data/Arcs.lua, an arc told once for each NPC, at most `instances` at a time). Meeting it
-- again brings a line of the narrator; each further death by its hand deepens the story; the character's killing it
-- closes the story with its page in the journal and a song of its fall in the songbook.
-- Forever gives addons no combat log (ADR 0005): who killed the character and who fell are read with the recipe of
-- ADR 0035, which is NOT yet confirmed in game (the owner chose on 2026-11-02 to build on it before the N0 run; bugs found
-- in play become new issues). Every read goes through Compat; a hidden identity or a secret GUID means "unknown", and an
-- unknown killer makes no nemesis: the narration stays silent rather than guess.
--   - killed by (ADR 0035, item 5): the last unit the character held the aggro of (UnitThreatSituation 2 or 3, read on
--     UNIT_THREAT_LIST_UPDATE for the target and the nameplates, and at the start of a fight) in the last `holderAge`
--     seconds, when the fight had only one such unit; with more, the target if it was one of them; otherwise unknown.
--     A death with no fight has no killer;
--   - fall (item 4): a nemesis engaged (targeted, or attacking the character) that dies by the character's or their
--     pet's hand (PARTY_KILL), or alone on it (UNIT_DIED, or dead at the end of the fight, not tapped by others and the
--     character not in a group). The kill events are N1's sources (Systems/Hostility.lua), which tell this module when a
--     GUID it watches dies; no GUID reaches the bus;
--   - meeting: targeting a nemesis, or being attacked by one, at most once every `meetGap` seconds for each.
-- What counts (`classes`, `places`), the gaps and the event of the songs are data: `nemesis` in Data/Relationships.lua.
-- Narration only and private: the story moves with real events (the bus events SLAIN_BY and FOE_FELL, which
-- Systems/StoryArcs.lua turns into the steps `slain` and `fall`), its lines go through the Narrative Director to the
-- private narrator, the song goes into the songbook (ids and times only, never text, never chat). Nothing here changes
-- how an NPC behaves in the game, and nothing of a fight is saved: the story's state lives in the arcs' data.
local ADDON, NS = ...
local Compat, EventBus, Engine = NS.Compat, NS.EventBus, NS.Engine
local SafeCall = Compat.SafeCall

---@class AUNemesis
local N = NS:RegisterModule("nemesis")
NS.Nemesis = N

N.MAX_HOLDERS = 16      -- units holding the character's aggro kept for a fight
N.MAX_WATCH = 16        -- nemeses engaged, by GUID, watched for their fall
N.WATCH_AGE = 600       -- seconds a watched GUID is kept after it was last seen
N.MEET_EVENT = "nemesis_meet"

-- the data (Data/Relationships.lua, `nemesis`): the defaults hold when a value is missing or wrong
N.config = {
	arc = "nemesis",                 -- the arc told for each nemesis (Data/Arcs.lua)
	classes = { elite = true, rare = true, rareelite = true, worldboss = true },
	places = { none = true },        -- IsInInstance types where a killer becomes a nemesis ("none": the open world)
	holderAge = 10,                  -- seconds: the last unit attacking the character before the death
	linger = 3,                      -- seconds after a death event before a fall is settled (a late PARTY_KILL)
	meetGap = 1800,                  -- seconds between two meeting lines for the same nemesis
	song = "nemesis_song",           -- the event of the songs of a fall (the verses pack)
}

local EMPTY = {}

local function Clock() return (GetTime and GetTime()) or 0 end
local function IsNumber(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end

-- a readable name of the client, trimmed, at most NAME_LEN bytes; nil otherwise
local function Text(s)
	if type(s) ~= "string" or Compat.IsSecret(s) then return nil end
	s = s:gsub("^[ \t\r\n]+", ""):gsub("[ \t\r\n]+$", "")
	if s == "" or #s > NS.Relationships.NAME_LEN then return nil end
	return s
end

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------
---The `nemesis` block of Data/Relationships.lua (value by value, so a pack can tune one).
---@param def table
function N:RegisterData(def)
	if type(def) ~= "table" then return end
	local c = self.config
	if type(def.arc) == "string" and def.arc:match("^[a-z][a-z0-9_]*$") then c.arc = def.arc end
	if type(def.song) == "string" and def.song:match("^[a-z][a-z0-9_]*$") then c.song = def.song end
	for _, k in ipairs({ "holderAge", "linger", "meetGap" }) do
		if IsNumber(def[k]) and def[k] >= 0 then c[k] = def[k] end
	end
	for _, part in ipairs({ "classes", "places" }) do
		if type(def[part]) == "table" then
			local set = {}
			for k, v in pairs(def[part]) do
				if type(k) == "string" and v == true then set[k] = true end
			end
			c[part] = set
		end
	end
end

---------------------------------------------------------------------------
-- State (this session only)
---------------------------------------------------------------------------
function N:Reset()
	self.fight = nil        -- { t0, holders = { [guid] = snapshot }, n, ended? }
	self.holder = nil       -- the last unit holding the character's aggro: a snapshot with its time
	self.watch = {}         -- [guid] = { npcID, name, t, killed? }: nemeses engaged, watched for their fall
	self.nWatch = 0
	self.met = {}           -- [npcID] = GetTime() of the last meeting line
	self.songs = {}         -- songs of a fall waiting for the end of the fight: { key, from }
	self.log = {}           -- the last facts, for /au debug: { what, npcID }
end
N:Reset()

local function Log(what, npcID)
	table.insert(N.log, { what = what, npcID = npcID })
	while #N.log > 8 do table.remove(N.log, 1) end
end

---Does the module watch now? Story Arcs on (and writable), the nemesis arc registered and valid, and the arc as a whole
---not skipped or disabled by the user (/au stories disable nemesis).
---@return boolean
function N:Watching()
	local SA = NS.StoryArcs
	local def = SA and SA.defs[self.config.arc]
	return def ~= nil and not def.bad and def.instances ~= nil and SA:Enabled() and SA:Mode(self.config.arc) == "active"
end

---The story of an NPC, when it is a nemesis now: the arc's key and its saved item (opened, not closed, active).
---@param npcID integer
---@return string? key
---@return table? item
function N:Story(npcID)
	if not IsNumber(npcID) or not self:Watching() then return nil end
	local SA = NS.StoryArcs
	local key = SA.InstanceKey(self.config.arc, npcID)
	local item = SA:Item(key)
	if item and item.mode == "active" and item.state ~= "LOCKED" and item.state ~= "RESOLVED" then return key, item end
	return nil
end

---------------------------------------------------------------------------
-- Reading the units (ADR 0035)
---------------------------------------------------------------------------
---What a unit is, read now: nil for a player, a pet, a hidden identity or anything without a readable npcID. Nothing here
---is saved.
---@param unit string
---@return { guid: string, npcID: integer, name?: string, cls?: string }?
function N.Snapshot(unit)
	if SafeCall("UnitExists", unit) ~= true or Compat:IsUnitIdentitySecret(unit) then return nil end
	if SafeCall("UnitIsPlayer", unit) ~= false or SafeCall("UnitPlayerControlled", unit) ~= false then return nil end
	local guid = Compat.Readable(SafeCall("UnitGUID", unit))
	local id = type(guid) == "string" and NS.Relationships.NpcID(guid) or nil
	if not id then return nil end
	local cls = SafeCall("UnitClassification", unit)
	return { guid = guid, npcID = id, name = Text(SafeCall("UnitName", unit)),
		cls = type(cls) == "string" and not Compat.IsSecret(cls) and cls or nil }
end

---Can this killer become a nemesis? A classification of `classes` (elite, rare...), where the character stands is a
---place of `places` (the open world: a dungeon's elites are many and expected).
---@param snap table
---@return boolean
function N:Worthy(snap)
	if not (snap and snap.cls and self.config.classes[snap.cls]) then return false end
	local _, kind = SafeCall("IsInInstance")
	kind = type(kind) == "string" and kind or "none"
	return self.config.places[kind] == true
end

-- a nemesis engaged: its GUID is watched for its fall
local function Engage(snap)
	local w = N.watch[snap.guid]
	if w then
		w.t = Clock()
		return
	end
	if N.nWatch >= N.MAX_WATCH then
		-- the oldest one goes
		local old, oldT
		for guid, x in pairs(N.watch) do
			if not oldT or x.t < oldT then old, oldT = guid, x.t end
		end
		if old then N.watch[old] = nil; N.nWatch = N.nWatch - 1 end
	end
	N.watch[snap.guid] = { npcID = snap.npcID, name = snap.name, t = Clock() }
	N.nWatch = N.nWatch + 1
end

---Is this GUID a nemesis being watched (N1's kill sources ask)?
---@param guid string
---@return boolean
function N:Watches(guid)
	local w = type(guid) == "string" and self.watch[guid]
	if not w then return false end
	if Clock() - w.t > self.WATCH_AGE then
		self.watch[guid] = nil
		self.nWatch = self.nWatch - 1
		return false
	end
	return true
end

---------------------------------------------------------------------------
-- Meeting a nemesis again
---------------------------------------------------------------------------
---A line of the narrator when the character meets a nemesis again (the event nemesis_meet, through the Director), at
---most once every `meetGap` seconds for each.
---@param snap table
---@return boolean offered
function N:Meet(snap)
	local key, item = self:Story(snap.npcID)
	if not key then return false end
	Engage(snap)
	local now = Clock()
	local last = self.met[snap.npcID]
	if last and now - last < self.config.meetGap then return false end
	self.met[snap.npcID] = now
	local view = NS.StoryArcs:View(key)
	view.meet = true
	local name = item.subject and item.subject.name or snap.name
	local extra = { arc = view, relationSubject = { kind = "npc", id = snap.npcID } }
	if NS.Interlocutor then
		extra.otherSubject = { kind = "npc", key = NS.Interlocutor.Key("npc", snap.npcID), name = name, npcID = snap.npcID }
	end
	Log("meet", snap.npcID)
	NS.Director:Offer(self.MEET_EVENT, extra)
	return true
end

---------------------------------------------------------------------------
-- The fight: who holds the character's aggro
---------------------------------------------------------------------------
local function NewFight()
	N.fight = { t0 = Clock(), holders = {}, n = 0 }
	return N.fight
end

-- the fight in progress, or the one that ended a moment ago (a death may come just after PLAYER_REGEN_ENABLED)
local function Current()
	local f = N.fight
	if f and (not f.ended or Clock() - f.ended <= N.config.linger) then return f end
	return nil
end

---A unit holds the character's aggro (threat 2 or 3): it is attacking them. Kept for the fight (by GUID, never saved);
---a nemesis among them is met and watched.
---@param unit string
function N:Hold(unit)
	-- a unit already holding in this fight only gets its time renewed (threat updates come often)
	local f = Current() or NewFight()
	local guid = Compat.Readable(SafeCall("UnitGUID", unit))
	local known = type(guid) == "string" and f.holders[guid]
	if known then
		known.t = Clock()
		self.holder = known
		return
	end
	local snap = N.Snapshot(unit)
	if not snap then return end
	snap.t = Clock()
	self.holder = snap
	if f.n < self.MAX_HOLDERS then
		f.holders[snap.guid] = snap
		f.n = f.n + 1
	end
	self:Meet(snap)
end

-- the player's threat situation on a unit: a number, or nil (not on its list, hidden)
local function Threat(unit)
	local v = SafeCall("UnitThreatSituation", "player", unit)
	return IsNumber(v) and v or nil
end

---Who killed the character (ADR 0035, item 5), or nil when it cannot be told.
---@return table? snapshot
function N:Killer()
	local f = Current()
	local h = self.holder
	if not (f and h and Clock() - h.t <= self.config.holderAge and f.holders[h.guid]) then return nil end
	if f.n <= 1 then return h end
	-- two or more were attacking: the target, if it was one of them
	local guid = Compat.Readable(SafeCall("UnitGUID", "target"))
	local held = type(guid) == "string" and f.holders[guid]
	if held and Clock() - held.t <= self.config.holderAge then return held end
	return nil
end

---The character died: a worthy killer becomes a nemesis, or deepens the story it already has (SLAIN_BY on the bus).
---@return integer? npcID
function N:Slain()
	if not self:Watching() then return nil end
	local k = self:Killer()
	self.holder = nil
	if not (k and self:Worthy(k)) then return nil end
	-- the meeting line waits: the death has its own
	self.met[k.npcID] = Clock()
	Engage(k)
	Log("slain", k.npcID)
	EventBus:Publish("SLAIN_BY", { npcID = k.npcID, name = k.name }, { window = 0 })
	return k.npcID
end

---------------------------------------------------------------------------
-- The fall
---------------------------------------------------------------------------
local function Settle(guid)
	local w = N.watch[guid]
	if not w then return end
	w.settling = nil
	if not w.killed then return end
	N.watch[guid] = nil
	N.nWatch = N.nWatch - 1
	if not N:Story(w.npcID) then return end
	Log("fall", w.npcID)
	EventBus:Publish("FOE_FELL", { npcID = w.npcID, name = w.name }, { window = 0 })
end

---A watched nemesis died: by whom ("me", "pet", "other", "hidden", or "unknown" for UNIT_DIED). N1's kill sources
---(Systems/Hostility.lua, UNIT_DIED and PARTY_KILL) call this for a GUID this module watches, so no GUID reaches the bus.
---Settled `linger` seconds later, so that a late PARTY_KILL still counts.
---@param guid string
---@param by string
function N:Died(guid, by)
	local w = self.watch[guid]
	if not w then return end
	if by == "me" or by == "pet" then
		w.killed = true
	elseif by == "unknown" and SafeCall("IsInGroup") ~= true and SafeCall("UnitIsTapDenied", "target") ~= true then
		-- UNIT_DIED says nothing of the killer: the character alone on a target nobody else tapped
		w.killed = w.killed or "alone"
	elseif by == "other" then
		if w.killed ~= true then w.killed = false end
	end
	if w.settling then return end
	w.settling = true
	if not Compat.After(self.config.linger, function() Settle(guid) end) then Settle(guid) end
end

---The fight is over: a watched nemesis dead as the target, with no death event, counts when the character was alone on
---it (not tapped by others, not in a group).
function N:FightEnded()
	local f = self.fight
	if f and not f.ended then f.ended = Clock() end
	local guid = Compat.Readable(SafeCall("UnitGUID", "target"))
	local w = type(guid) == "string" and self.watch[guid]
	if w and w.killed == nil and not w.settling and SafeCall("UnitIsDead", "target") == true
		and SafeCall("UnitIsTapDenied", "target") == false and SafeCall("IsInGroup") ~= true then
		self:Died(guid, "unknown")
	end
	self:SingPending()
end

---------------------------------------------------------------------------
-- The song of the fall
---------------------------------------------------------------------------
-- a quiet private notice (never chat): only with the private narrator on and the addon speaking
local function Notice(text)
	local db = NS.db
	if not (db and NS.Narrator and NS.Narrator.Notice) or NS.paused or db.intensity <= 0 or not db.output.privateNarrator then return end
	NS.Narrator:Notice(text)
end

---Chooses the song of a nemesis's fall: a literary piece of the event `song` (the verses pack) whose conditions hold for
---the story (ctx.arc: the arc, `from` the state it fell in), in the language, preferring one the songbook does not have.
---@param key string the story
---@param from string the state before the fall
---@return string? id
function N:PickSong(key, from)
	local SA = NS.StoryArcs
	local view = SA:View(key)
	if not view then return nil end
	view.from, view.state = from, "RESOLVED"
	local item = SA:Item(key)
	local extra = { arc = view }
	if item and item.subject and NS.Interlocutor then
		extra.otherSubject = { kind = "npc", key = NS.Interlocutor.Key("npc", item.subject.npcID), name = item.subject.name,
			npcID = item.subject.npcID }
	end
	local ctx = NS:BuildContext(extra)
	local fresh, known = {}, {}
	for _, p in ipairs(Engine:Eligible(Engine.byEvent[self.config.song], NS:TextLang(), ctx, nil, time())) do
		if Engine.IsLiteraryRule(p) then
			table.insert(NS.Songbook:Heard(p.id) and known or fresh, p.id)
		end
	end
	local list = #fresh > 0 and fresh or known
	if #list == 0 then return nil end
	table.sort(list)
	return list[math.random(#list)]
end

---A song is made of the fall: into the songbook (its id and the time), and a private notice with its title.
---@param key string
---@param from string
---@return string? id
function N:Sing(key, from)
	local Songbook = NS.Songbook
	if not (Songbook and Songbook:Enabled()) then return nil end
	local id = self:PickSong(key, from)
	if not id then return nil end
	local ok = Songbook:Add(id, "heard")
	if not ok then return nil end
	Log("song", select(2, NS.StoryArcs.SplitKey(key)))
	Notice(NS:L("nemesis_song_notice", NS.StoryArcs:Title(key), (Songbook:Title(id))))
	return id
end

---The songs waiting for the end of a fight (the literary forms do not speak in combat).
function N:SingPending()
	if #self.songs == 0 then return end
	if SafeCall("UnitAffectingCombat", "player") == true then return end
	local list = self.songs
	self.songs = {}
	for _, s in ipairs(list) do NS.Diagnostics:Guard("nemesis:song", self.Sing, self, s.key, s.from) end
end

---------------------------------------------------------------------------
-- Events
---------------------------------------------------------------------------
-- No GUID reaches the bus: the threat source reads the unit at once and publishes nothing (a holder is kept here).
EventBus:AddSource("UNIT_THREAT_LIST_UPDATE", { normalize = function(unit)
	if type(unit) ~= "string" or Compat.IsSecret(unit) or not N:Watching() then return nil end
	if unit ~= "target" and not unit:match("^nameplate%d+$") then return nil end
	local th = Threat(unit)
	if th and th >= 2 then N:Hold(unit) end
	return nil
end })

local handlers = {}

function handlers.COMBAT_START()
	if not N:Watching() then return end
	-- a threat update may have come a moment before PLAYER_REGEN_DISABLED: that fight is this one
	local f = N.fight
	if not f or f.ended then NewFight() end
	local th = Threat("target")
	if th and th >= 2 then N:Hold("target") end
end

function handlers.COMBAT_END()
	N:FightEnded()
end

function handlers.TARGET_CHANGED()
	if not N:Watching() then return end
	local snap = N.Snapshot("target")
	if snap and N:Story(snap.npcID) then N:Meet(snap) end
end

function handlers.PLAYER_DEATH()
	N:Slain()
end

function handlers.PLAYER_REVIVE()
	N:SingPending()
end

-- a nemesis's story closed with its fall: a song of it
function handlers.ARC_STATE(env)
	local c = env.context
	if c.base ~= N.config.arc or c.to ~= "RESOLVED" then return end
	table.insert(N.songs, { key = c.id, from = c.from })
	N:SingPending()
end

for eventType, fn in pairs(handlers) do
	EventBus:Subscribe(eventType, "nemesis", fn)
end

---@return string
function N:Status()
	local live = 0
	local SA = NS.StoryArcs
	if SA and SA.defs[self.config.arc] then live = SA:InstanceCount(self.config.arc) end
	local last = self.log[#self.log]
	return ("watching %s, nemeses %d, holders %d, watched %d, songs waiting %d; last %s"):format(tostring(self:Watching()),
		live, self.fight and self.fight.n or 0, self.nWatch, #self.songs,
		last and (last.what .. " " .. tostring(last.npcID)) or "-")
end

function N:OnInit()
	self:Reset()
	-- a line of a meeting only from here: nemesis_meet speaks with a story's view (ctx.arc.meet), never from /au event
	Engine:SetEventGuard(self.MEET_EVENT, "nemesis", function(ctx)
		return type(ctx.arc) == "table" and ctx.arc.meet == true
	end)
	-- the songs of a fall are chosen here, never spoken by the Director or by /au event
	Engine:SetEventGuard(self.config.song, "nemesis", function() return false end)
	NS:SetEventPriority(self.MEET_EVENT, "exceptional")
	NS.NarrativeDirector.EVENT_MODULE[self.MEET_EVENT] = "storyArcs"
end
