-- finta API di WoW per provare l'addon fuori dal gioco (WoW Forever, Interface 16001)
SENT = {}
P = {   -- stato del giocatore, modificabile dai test
	name = "Garrosh", class = "WARRIOR", race = "Orc", faction = "Horde", sex = 2, level = 30,
	hp = 100, hpMax = 100, combat = false, zone = "Durotar", subzone = "", hour = 14,
	instance = false, target = nil, dead = false,
}
local now = 1000
function GetTime() return now end
FAKE_EPOCH = 1700000000
time = function() return FAKE_EPOCH end

-- Timer veri: C_Timer.After e NewTicker mettono la funzione in coda con la scadenza; ADVANCE(s) fa
-- passare il tempo ed esegue quelli scaduti nell'ordine, con GetTime() alla loro scadenza.
local timers, timerSeq = {}, 0
local function AddTimer(delay, fn, interval)
	timerSeq = timerSeq + 1
	local t = { at = now + math.max(0, delay), fn = fn, interval = interval, seq = timerSeq }
	table.insert(timers, t)
	return t
end
local function Step(to)
	local best, bi
	for i, t in ipairs(timers) do
		if t.at <= to and (not best or t.at < best.at or (t.at == best.at and t.seq < best.seq)) then best, bi = t, i end
	end
	if not best then return false end
	FAKE_EPOCH = FAKE_EPOCH + (best.at - now)
	now = best.at
	if best.interval and not best.cancelled then
		best.at = best.at + best.interval
	else
		table.remove(timers, bi)
	end
	if not best.cancelled then best.fn() end
	return true
end
function ADVANCE(s)
	local to = now + s
	local guard = 0
	while Step(to) do
		guard = guard + 1
		if guard > 10000 then error("ADVANCE: troppi timer") end
	end
	FAKE_EPOCH = FAKE_EPOCH + (to - now)
	now = to
end
function PENDING_TIMERS() return #timers end
-- Salta un lungo intervallo (ore, giorni) senza eseguire i timer periodici uno a uno: gli intervalli si rimettono in
-- fase. I timer semplici ancora in attesa scadono al prossimo ADVANCE.
function LEAP(s)
	now = now + s
	FAKE_EPOCH = FAKE_EPOCH + s
	for _, t in ipairs(timers) do
		if t.interval then t.at = now + t.interval end
	end
end

-- versione del client
WOW_PROJECT_MAINLINE, WOW_PROJECT_CLASSIC, WOW_PROJECT_CAMELOT = 1, 2, 14
WOW_PROJECT_ID = WOW_PROJECT_CAMELOT
function GetBuildInfo() return "1.60.1", "70658", "Oct 1 2026", 16001 end
function GetLocale() return "enUS" end

-- valori segreti: MakeSecret() crea un valore che l'addon non deve leggere
SECRET_SET = setmetatable({}, { __mode = "k" })
-- Nel client vero usare un valore segreto in un confronto, un calcolo o una concatenazione solleva un errore:
-- il mock lo imita dove Lua 5.1 lo permette (<, <=, .., aritmetica, #, campi). Con == contro un valore di tipo
-- diverso Lua non chiama nulla: il confronto "riesce" e dà falso, ed è proprio il caso da non lasciar passare.
local function SecretError() error("attempt to use a secret value", 2) end
function MakeSecret()
	local v = setmetatable({}, { __tostring = function() return "<secret>" end,
		__lt = SecretError, __le = SecretError, __concat = SecretError, __len = SecretError,
		__add = SecretError, __sub = SecretError, __mul = SecretError, __div = SecretError,
		__unm = SecretError, __index = SecretError, __call = SecretError })
	SECRET_SET[v] = true
	return v
end
function issecretvalue(v) return SECRET_SET[v] == true end
function canaccessvalue(v) return SECRET_SET[v] ~= true end
function issecrettable(v) return SECRET_SET[v] == true end
SECRET_UNITS = {}
C_Secrets = { ShouldUnitIdentityBeSecret = function(unit) return SECRET_UNITS[unit] == true end }

-- restrizioni del client: RESTRICTIONS.Combat = 1 attiva quella del combattimento
Enum = { AddOnRestrictionType = { Combat = 0, Encounter = 1, ChallengeMode = 2, PvPMatch = 3, Map = 4 },
	UIMapType = { Cosmic = 0, World = 1, Continent = 2, Zone = 3, Dungeon = 4 } }
RESTRICTIONS = {}
C_RestrictedActions = { GetAddOnRestrictionState = function(t)
	for name, v in pairs(Enum.AddOnRestrictionType) do
		if v == t then return RESTRICTIONS[name] or 0 end
	end
	error("bad restriction type")
end }

-- eventi esistenti: registrarne uno sconosciuto solleva un errore, come in alcuni client
VALID_EVENTS = {}
for _, e in ipairs({ "ADDON_LOADED", "PLAYER_LOGIN", "PLAYER_ENTERING_WORLD", "ZONE_CHANGED_NEW_AREA",
	"PLAYER_REGEN_DISABLED", "PLAYER_REGEN_ENABLED", "UNIT_HEALTH", "PLAYER_DEAD", "PLAYER_ALIVE",
	"PLAYER_UNGHOST", "PLAYER_LEVEL_UP", "PLAYER_TARGET_CHANGED", "UNIT_SPELLCAST_SENT",
	"UNIT_SPELLCAST_SUCCEEDED", "ADDON_RESTRICTION_STATE_CHANGED",
	-- relazioni (S6b)
	"GOSSIP_SHOW", "GOSSIP_CLOSED", "QUEST_GREETING", "QUEST_DETAIL", "QUEST_PROGRESS", "QUEST_COMPLETE", "QUEST_FINISHED",
	"QUEST_ACCEPTED", "QUEST_TURNED_IN", "MERCHANT_SHOW", "MERCHANT_CLOSED", "TAXIMAP_OPENED", "TRAINER_SHOW",
	"CONFIRM_BINDER", "GROUP_ROSTER_UPDATE", "TRADE_SHOW", "CHAT_MSG_WHISPER_INFORM",
	-- interlocutore e luogo (S6c)
	"ENCOUNTER_START", "ENCOUNTER_END", "UPDATE_BATTLEFIELD_STATUS", "BANKFRAME_OPENED", "DUEL_REQUESTED",
	"PARTY_INVITE_REQUEST", "CHAT_MSG_TEXT_EMOTE",
	-- azioni protette bloccate (#55)
	"ADDON_ACTION_FORBIDDEN", "ADDON_ACTION_BLOCKED",
	-- sonda delle API (R0, #82)
	"WEATHER_CHANGED", "DIEL_CYCLE_CHANGED", "PLAYER_UPDATE_RESTING", "ZONE_CHANGED", "ZONE_CHANGED_INDOORS",
	"MAP_EXPLORATION_UPDATED", "AREA_POIS_UPDATED", "QUEST_LOG_UPDATE", "UPDATE_FACTION", "FACTION_STANDING_CHANGED",
	-- il mondo (R3)
	"PLAYER_CONTROL_LOST", "PLAYER_CONTROL_GAINED", "QUEST_REMOVED",
	-- proximity (#113)
	"NAME_PLATE_UNIT_ADDED", "UPDATE_MOUSEOVER_UNIT",
	-- attacks, kills and deaths without the combat log (N0, #212)
	"PLAYER_ENTER_COMBAT", "UNIT_COMBAT", "UNIT_THREAT_LIST_UPDATE", "UNIT_THREAT_SITUATION_UPDATE", "UNIT_DIED",
	"PARTY_KILL", "NAME_PLATE_UNIT_REMOVED" }) do
	VALID_EVENTS[e] = true
end
C_EventUtils = { IsEventValid = function(e) return VALID_EVENTS[e] == true end }

-- Le funzioni delle unità leggono P per "player" e P.target per "target"; un'unità inesistente dà nil.
-- Con SECRET_UNITS[unit] i dati di identità sono segreti, come nel client con le restrizioni.
-- "npc" è l'unità con cui si interagisce (P.npc); party1..4 e raid1..40 vengono da P.party e P.raidMembers
local function Subject(u)
	if u == "player" then return P end
	if u == "target" then return P.target end
	if u == "npc" then return P.npc end
	if u == "mouseover" then return P.mouseover end
	if u == "pet" then return P.pet end
	local kind, n = u:match("^(%a+)(%d+)$")
	if kind == "nameplate" and P.nameplates then return P.nameplates[tonumber(n)] end
	if kind == "party" and P.party then return P.party[tonumber(n)] end
	if kind == "raid" and P.raidMembers then return P.raidMembers[tonumber(n)] end
	return nil
end
local function Identity(u, value)
	if value ~= nil and SECRET_UNITS[u] then return MakeSecret() end
	return value
end
function UnitName(u) local t = Subject(u); return t and Identity(u, t.name) end
function UnitFullName(u)
	local t = Subject(u)
	if not t then return nil end
	return Identity(u, t.name), Identity(u, t.realm)
end
function GetNormalizedRealmName() return P.realm or "TestRealm" end
function UnitClass(u)
	local t = Subject(u)
	if not t then return nil end
	local c = t.class
	if u == "player" then return Identity(u, c:lower()), Identity(u, c) end
	return Identity(u, c), Identity(u, c)
end
function UnitRace(u) local t = Subject(u); local r = t and t.race; return Identity(u, r), Identity(u, r) end
function UnitFactionGroup(u) local t = Subject(u); return t and Identity(u, t.faction) end
function UnitSex(u) local t = Subject(u or "player"); return t and t.sex end
function UnitLevel(u) local t = Subject(u); return t and t.level end
function UnitHealth(u) local t = Subject(u); return t and t.hp end
function UnitHealthMax(u) local t = Subject(u); return t and t.hpMax end
function UnitAffectingCombat(u) if u == "player" then return P.combat end local t = Subject(u); return t and t.combat or false end
function InCombatLockdown() return P.combat end
-- P.dead: morto, col corpo a terra; P.ghost: spirito rilasciato (fantasma). Un fantasma non è "dead" per UnitIsDead,
-- ma UnitIsDeadOrGhost lo conta: è il caso di PLAYER_UNGHOST (#56)
function UnitIsDeadOrGhost(u) local t = Subject(u); return t and (t.dead or t.ghost) or false end
function UnitIsGhost(u) local t = Subject(u or "player"); return t and t.ghost == true or false end
function UnitIsDead(u) local t = Subject(u); return t and Identity(u, t.dead or false) end
function IsResting() return P.resting or false end
function IsIndoors() return false end
function IsMounted() return false end
function IsSwimming() return false end
function IsStealthed() return false end
function InCinematic() return P.cinematic == true end
function IsInInstance() return P.instance, P.instance and (P.instanceType or "party") or "none" end
-- S6c: istanza, mappa, territorio, ruolo nel gruppo, campi di battaglia. P.mapID, P.instanceType, P.instanceName,
-- P.instanceID, P.difficulty, P.pvpType, P.role, P.bgQueue = { "queued" }; MAPS[id] = { name, mapType, parentMapID }
MAPS = {
	[947] = { name = "Azeroth", mapType = 1 },
	[1414] = { name = "Kalimdor", mapType = 2, parentMapID = 947 },
	[1415] = { name = "Eastern Kingdoms", mapType = 2, parentMapID = 947 },
}
function GetInstanceInfo()
	if not P.instance then return P.zone, "none", 0, "", 0, 0, false, P.mapInstance or 0, 0, 0, false end
	return P.instanceName or P.zone, P.instanceType or "party", P.difficulty or 1, P.difficultyName or "Normal", 5, 0,
		false, P.instanceID or 0, 5, 0, false
end
C_Map = {
	GetBestMapForUnit = function(u) if u == "player" then return P.mapID end return nil end,
	GetMapInfo = function(id)
		if MAPS[id] then
			local m = MAPS[id]
			return { mapID = id, name = m.name, mapType = m.mapType, parentMapID = m.parentMapID or 0 }
		end
		if id == P.mapID then return { mapID = id, name = P.mapName or P.zone, mapType = 3, parentMapID = P.continentMap or 0 } end
		return nil
	end,
}
C_PvP = {
	GetZonePVPInfo = function() return P.pvpType, false, nil end,
	IsBattleground = function() return P.instance == true and P.instanceType == "pvp" end,
	IsArena = function() return P.instance == true and P.instanceType == "arena" end,
}
function UnitGroupRolesAssigned(u) local t = Subject(u); return t and t.role or "NONE" end
function UnitReaction(u) local t = Subject(u); return t and t.reaction end
function UnitCreatureFamily(u) local t = Subject(u); return t and Identity(u, t.family) end
function UnitIsUnit(a, b)
	if a == "targettarget" and b == "player" then return P.target ~= nil and P.target.targetsPlayer == true end
	return a == b
end
function GetMaxBattlefieldID() return P.bgQueue and #P.bgQueue or 0 end
function GetBattlefieldStatus(i) return P.bgQueue and P.bgQueue[i] or "none" end
function IsInRaid() return P.raid or false end
function IsInGroup() return P.group or false end
function GetRealZoneText() return P.zone end
function GetZoneText() return P.zone end
function GetSubZoneText() return P.subzone end
function GetGameTime() return P.hour, 0 end
function UnitExists(u) return Subject(u) ~= nil end
function UnitIsPlayer(u)
	if u == "player" then return true end
	local t = Subject(u)
	return Identity(u, t and t.player or false)
end
function UnitCanAttack(a, b) local t = Subject(b); if a ~= "player" or not t or b == "player" then return false end return t.hostile or false end
function UnitCreatureType(u) local t = Subject(u); return t and Identity(u, t.ctype), t and t.ctypeID end
function UnitClassification(u) local t = Subject(u); return t and Identity(u, t.cls or "normal") or nil end
-- (N0, #212) t.threat: the player's threat situation on the unit (0..3, nil off its threat list); t.tapDenied,
-- t.questBoss, t.pet (controlled by a player), t.near (CheckInteractDistance); P.combatLogRestricted
function UnitThreatSituation(u, mob)
	if u ~= "player" then return nil end
	local t = Subject(mob)
	return t and t.threat
end
function UnitIsTapDenied(u) local t = Subject(u); return t and t.tapDenied == true or false end
function UnitIsQuestBoss(u) local t = Subject(u); return t and t.questBoss == true or false end
function UnitPlayerControlled(u) local t = Subject(u); return t and (t.player or t.pet) == true or false end
function CheckInteractDistance(u, index) local t = Subject(u); return t and t.near == true or false end
C_CombatLog = { IsCombatLogRestricted = function() return P.combatLogRestricted == true end }
function UnitGUID(u)
	if u == "player" then return "Player-1-00000001" end
	local t = Subject(u)
	return t and Identity(u, t.guid)
end
C_Spell = { GetSpellName = function(id) return SPELLS[id] end }
-- hooksecurefunc come nel client: la funzione originale resta com'è, la nostra parte dopo di lei
function hooksecurefunc(a, b, c)
	local target, name, hook = _G, a, b
	if type(a) == "table" then target, name, hook = a, b, c end
	local orig = target[name]
	if type(orig) ~= "function" then error("hooksecurefunc: " .. tostring(name) .. " non è una funzione") end
	target[name] = function(...)
		local r = { orig(...) }
		hook(...)
		return unpack(r)
	end
end
-- funzioni del mercante, chiamate dai test (gli acquisti, le riparazioni e l'uso degli oggetti delle borse)
function BuyMerchantItem() end
function RepairAllItems() end
C_Container = { UseContainerItem = function() end }
SPELLS = {}
C_Timer = {
	After = function(seconds, f) AddTimer(seconds, f) end,
	NewTicker = function(seconds, f)
		local t = AddTimer(seconds, f, seconds)
		return { Cancel = function() t.cancelled = true; for i, x in ipairs(timers) do if x == t then table.remove(timers, i) break end end end }
	end,
}
CHAT_LOCKDOWN = false
-- Un'azione protetta chiamata senza il gesto del giocatore non solleva un errore Lua nel client (#55): la chiamata non
-- ha effetto, compare il popup e parte ADDON_ACTION_FORBIDDEN o ADDON_ACTION_BLOCKED (isTainted, function).
-- BLOCKED_SENDS conta gli invii bloccati; SEND_RAISES = true imita invece un errore Lua vero del client;
-- BLOCK_EVENT_LATE = true consegna l'evento dopo il ritorno della chiamata (al prossimo giro del timer).
BLOCKED_SENDS = 0
SEND_RAISES = false
BLOCK_EVENT_LATE = false
BLOCK_EVENT = "ADDON_ACTION_FORBIDDEN"   -- o ADDON_ACTION_BLOCKED: il client ne manda uno (non si sa quale, da G1)
local function BlockSend(funcName)
	BLOCKED_SENDS = BLOCKED_SENDS + 1
	local function Notify()
		FIRE(BLOCK_EVENT, "AzerothUnspoken", funcName)
	end
	if BLOCK_EVENT_LATE then C_Timer.After(0, Notify) else Notify() end
end
C_ChatInfo = {
	SendChatMessage = function(text, kind)
		if SEND_RAISES then error("errore Lua del client") end
		-- ipotesi prudente (da confermare in G1): senza un gesto del giocatore passano solo le emote
		-- e, nelle istanze, /say e /yell; i canali di gruppo, di gilda e /say nel mondo aperto no
		if kind ~= "EMOTE" and not HW then
			local openWorldSpeech = (kind == "SAY" or kind == "YELL") and P.instance
			if not openWorldSpeech then
				BlockSend("SendChatMessage")
				return
			end
		end
		table.insert(SENT, kind .. ": " .. text)
	end,
	InChatMessagingLockdown = function() return CHAT_LOCKDOWN end,
}
DEFAULT_CHAT_FRAME = { AddMessage = function(_, m) table.insert(SENT, "PRINT: " .. m) end }
local frames = {}
-- oggetto che accetta qualunque metodo (texture, font, pulsanti...)
local Any
local anyMeta = { __index = function() return function() return Any() end end }
Any = function() return setmetatable({}, anyMeta) end
GameTooltip = Any()
-- FrameXML: the frames Esc hides (#174)
UISpecialFrames = {}

-- Widget con stato minimo: mostra/nasconde, testo, trasparenza, dimensioni, script, figli.
-- I metodi non definiti qui restituiscono un oggetto "qualunque" e non fanno nulla.
local Widget = {}
local widgetMeta = { __index = function(t, k)
	local m = rawget(Widget, k)
	if m then return m end
	-- i metodi di WoW iniziano con la maiuscola; i campi dell'addon (frame.text, frame.bar) no: nil
	if type(k) == "string" and k:match("^[A-Z]") then return function() return Any() end end
	return nil
end }
function Widget:Show() self.shown = true; if self.scripts.OnShow then self.scripts.OnShow(self) end end
function Widget:Hide() self.shown = false; if self.scripts.OnHide then self.scripts.OnHide(self) end end
function Widget:IsShown() return self.shown == true end
-- il mouse è sopra il widget? Lo decide il test con widget._s.mouseOver = true
function Widget:IsMouseOver() return self._s.mouseOver == true end
function Widget:IsVisible() return self.shown == true end
function Widget:SetShown(v) if v then self:Show() else self:Hide() end end
function Widget:SetText(t) self._s.text = t end
function Widget:GetText() return self._s.text or "" end
function Widget:SetAlpha(a) self._s.alpha = a end
function Widget:GetAlpha() return self._s.alpha or 1 end
function Widget:SetSize(w, h) self._s.w, self._s.h = w, h end
function Widget:SetWidth(w) self._s.w = w end
function Widget:SetHeight(h) self._s.h = h end
function Widget:GetWidth() return self._s.w or 100 end
function Widget:GetHeight() return self._s.h or 20 end
function Widget:GetStringHeight() return 14 * (1 + math.floor(#(self._s.text or "") / 60)) end
function Widget:GetStringWidth() return math.min(#(self._s.text or "") * 6, 400) end
function Widget:SetPoint(...) self._s.points = self._s.points or {}; table.insert(self._s.points, { ... }) end
function Widget:ClearAllPoints() self._s.points = nil end
-- come il client: sempre (punto, frame relativo, punto relativo, x, y), qualunque forma abbia avuto SetPoint
function Widget:GetPoint()
	local p = self._s.points and self._s.points[#self._s.points]
	if not p then return "CENTER", UIParent, "CENTER", 0, 0 end
	if type(p[2]) == "table" then return p[1], p[2], p[3] or p[1], p[4] or 0, p[5] or 0 end
	return p[1], self.parent or UIParent, p[1], p[2] or 0, p[3] or 0
end
function Widget:SetScript(k, fn) self.scripts[k] = fn end
function Widget:GetScript(k) return self.scripts[k] end
function Widget:HookScript(k, fn) local old = self.scripts[k]; self.scripts[k] = function(...) if old then old(...) end fn(...) end end
function Widget:SetFont(path, size, flags) self._s.font = { path, size, flags } end
function Widget:GetFont() local f = self._s.font or { "Fonts/FRIZQT__.TTF", 12, "" }; return f[1], f[2], f[3] end
function Widget:SetEnabled(v) self._s.enabled = v end
function Widget:IsEnabled() return self._s.enabled ~= false end
function Widget:Enable() self._s.enabled = true end
function Widget:Disable() self._s.enabled = false end
function Widget:SetChecked(v) self._s.checked = v end
function Widget:GetChecked() return self._s.checked end
function Widget:SetValue(v) self._s.value = v end
function Widget:GetValue() return self._s.value end
function Widget:SetFocus() self._s.focused = true end
function Widget:ClearFocus() self._s.focused = false end
function Widget:HasFocus() return self._s.focused == true end
function Widget:GetParent() return self.parent end
function Widget:CreateFontString() return CreateWidget("FontString", self) end
function Widget:CreateTexture() return CreateWidget("Texture", self) end
function Widget:StartMoving() self._s.moving = true end
function Widget:StopMovingOrSizing() self._s.moving = false end
function Widget:RegisterEvent(e)
	if not VALID_EVENTS[e] then error("Attempt to register unknown event \"" .. tostring(e) .. "\"") end
	self.events[e] = true
	return true
end
function Widget:RegisterUnitEvent(e) return self:RegisterEvent(e) end
function Widget:UnregisterEvent(e) self.events[e] = nil end
function Widget:UnregisterAllEvents() self.events = {} end
-- simula il clic del giocatore su un pulsante
function Widget:Click() if self.scripts.OnClick then self.scripts.OnClick(self, "LeftButton") end end
-- digita e conferma in una casella di testo
function Widget:TypeEnter(text) self._s.text = text; if self.scripts.OnEnterPressed then self.scripts.OnEnterPressed(self) end end

-- Livelli e strati (#181): Raise() porta il widget sopra gli altri; RAISES conta i rialzi in ordine
RAISES = 0
function Widget:SetFrameStrata(v) self._s.strata = v end
function Widget:GetFrameStrata() return self._s.strata or "MEDIUM" end
function Widget:SetFrameLevel(v) self._s.level = v end
function Widget:GetFrameLevel() return self._s.level or 1 end
function Widget:SetToplevel(v) self._s.toplevel = v end
function Widget:IsToplevel() return self._s.toplevel == true end
function Widget:Raise() RAISES = RAISES + 1; self._s.raised = RAISES end
function Widget:GetEffectiveScale() return 1 end
-- #182: the window scale is recorded, not applied to the geometry
function Widget:SetScale(v) self._s.scale = v end
function Widget:GetScale() return self._s.scale or 1 end
-- Geometria minima: un solo punto di ancoraggio e una dimensione (UIParent 1024x768). Altrimenti nil, come un frame
-- non ancora disposto. Serve a provare che le finestre non coprono il narratore.
SCREEN_W, SCREEN_H = 1024, 768
local function PointXY(l, b, r, t, point)
	local x = (point:find("LEFT") and l) or (point:find("RIGHT") and r) or (l + r) / 2
	local y = (point:find("BOTTOM") and b) or (point:find("TOP") and t) or (b + t) / 2
	return x, y
end
local function RectOf(w)
	if w == UIParent then return 0, 0, SCREEN_W, SCREEN_H end
	local pts = w._s.points
	if not pts or #pts ~= 1 or not w._s.w or not w._s.h then return nil end
	local p = pts[1]
	local point, rel, relPoint, x, y = p[1], nil, nil, 0, 0
	if type(p[2]) == "table" then rel, relPoint, x, y = p[2], p[3] or point, p[4] or 0, p[5] or 0
	else x, y = p[2] or 0, p[3] or 0 end
	rel = rel or w.parent or UIParent
	relPoint = relPoint or point
	local rl, rb, rr, rt = RectOf(rel)
	if not rl then return nil end
	local ax, ay = PointXY(rl, rb, rr, rt, relPoint)
	ax, ay = ax + x, ay + y
	local fw, fh = w._s.w, w._s.h
	local left = (point:find("LEFT") and ax) or (point:find("RIGHT") and ax - fw) or ax - fw / 2
	local bottom = (point:find("BOTTOM") and ay) or (point:find("TOP") and ay - fh) or ay - fh / 2
	return left, bottom, left + fw, bottom + fh
end
function Widget:GetRect() local l, b, r, t = RectOf(self); if l then return l, b, r - l, t - b end end
function Widget:GetLeft() local l = RectOf(self); return l end
function Widget:GetBottom() local _, b = RectOf(self); return b end
function Widget:GetRight() local _, _, r = RectOf(self); return r end
function Widget:GetTop() local _, _, _, t = RectOf(self); return t end

function CreateWidget(kind, parent)
	local f = setmetatable({ _s = {}, kind = kind, parent = parent, scripts = {}, events = {}, shown = true, children = {} }, widgetMeta)
	if parent and rawget(parent, "children") then table.insert(parent.children, f) end
	return f
end
function CreateFrame(kind, name, parent)
	local f = CreateWidget(kind or "Frame", parent)
	f.name = name
	if name then _G[name] = f end
	table.insert(frames, f)
	return f
end
UIParent = CreateWidget("Frame")
UIParent._s.w, UIParent._s.h = 1024, 768
-- tutti i widget creati, per i test (cerca per tipo e testo)
function FindWidgets(pred)
	local out = {}
	local function walk(w)
		for _, c in ipairs(w.children or {}) do
			if pred(c) then table.insert(out, c) end
			walk(c)
		end
	end
	for _, f in ipairs(frames) do if pred(f) then table.insert(out, f) end walk(f) end
	return out
end
-- avanza gli OnUpdate dei widget visibili di dt secondi
function UPDATE(dt)
	for _, f in ipairs(frames) do
		if f.shown and f.scripts.OnUpdate then f.scripts.OnUpdate(f, dt) end
	end
end
function FIRE(event, ...)
	for _, f in ipairs(frames) do
		if f.events and f.events[event] and f.scripts.OnEvent then f.scripts.OnEvent(f, event, ...) end
	end
end
-- Schermata di caricamento (portale, nave, zeppelin, pietra del ritorno, uscita da un'istanza): la zona cambia e il
-- client manda PLAYER_ENTERING_WORLD e, di solito, ZONE_CHANGED_NEW_AREA. L'ordine reale in Forever non è provato
-- (#47, da G1): order = "world_first" (PEW poi ZONE), "zone_first" (ZONE poi PEW) o "world_only" (solo PEW).
function LOADING_SCREEN(zone, order, mapID)
	P.zone = zone
	if mapID ~= nil then P.mapID = mapID end
	order = order or "world_first"
	if order == "zone_first" then FIRE("ZONE_CHANGED_NEW_AREA") end
	FIRE("PLAYER_ENTERING_WORLD", false, false)
	if order == "world_first" then FIRE("ZONE_CHANGED_NEW_AREA") end
end
-- L'ordine degli eventi all'avvio del client: ADDON_LOADED di ogni addon, poi PLAYER_LOGIN, poi
-- PLAYER_ENTERING_WORLD (isLogin, isReload); /reload manda gli stessi, con isReload.
function ENTER_GAME(isLogin, isReload)
	FIRE("PLAYER_LOGIN")
	FIRE("PLAYER_ENTERING_WORLD", isLogin ~= false, isReload == true)
end
date = os.date
STANDARD_TEXT_FONT = "Fonts/FRIZQT__.TTF"
function IsInGuild() return P.guild or false end
SlashCmdList = {}
-- #174: the frames Esc closes (FrameXML's CloseSpecialWindows hides every one that is shown)
UISpecialFrames = {}
function PRESS_ESCAPE()
	local closed = false
	for _, name in ipairs(UISpecialFrames) do
		local f = _G[name]
		if f and f:IsShown() then f:Hide(); closed = true end
	end
	return closed
end

-- Profilo e sonda delle API (R0, #81 e #82). Ogni valore si cambia da un test; per provare un'API assente il test la
-- mette a nil. Titoli, nomi e coordinate sono "dati personali" finti: il test controlla che non escano mai.
MEMORY_KB = 6400
function debugprofilestop() return os.clock() * 1000 end
function UpdateAddOnMemoryUsage() end
function GetAddOnMemoryUsage(name) if name == "AzerothUnspoken" then return MEMORY_KB end return 0 end
Enum.WeatherType = { Clear = 0, Rain = 1, Snow = 2, Storm = 3 }
P.weather = { type = 0, intensity = 0 }
-- P.isDay = nil: il client dice giorno tra le 5 e le 21, come le soglie fisse dell'addon; un test lo fissa con true/false
P.isDay = nil
C_Weather = { GetCurrentWeather = function() return P.weather end }
C_DateAndTime = { IsDayTime = function()
	if P.isDay ~= nil then return P.isDay end
	return P.hour >= 5 and P.hour < 21
end }
-- Installed addons (#85, #101): ADDONS[name] = { meta = { [field] = value }, loaded, fail = reason, raise = message,
-- load = function }. LoadAddOn runs load() and then ADDON_LOADED, like the client; LOAD_CALLS records every call
-- with the combat state. The base addon is installed and loaded.
ADDONS = { AzerothUnspoken = { meta = {}, loaded = true } }
ADDON_LIST = { "AzerothUnspoken" }
LOAD_CALLS = {}
function ADD_ADDON(name, def)
	def.meta = def.meta or {}
	if not ADDONS[name] then table.insert(ADDON_LIST, name) end
	ADDONS[name] = def
end
local function AddonName(i) if type(i) == "number" then return ADDON_LIST[i] end return i end
C_AddOns = {
	LoadAddOn = function(name)
		table.insert(LOAD_CALLS, { name = name, combat = P.combat == true })
		local a = ADDONS[AddonName(name)]
		if not a then return false, "MISSING" end
		if a.raise then error(a.raise) end
		if a.fail then return false, a.fail end
		if a.loaded then return true, nil end
		a.loaded = true
		if a.load then a.load() end
		FIRE("ADDON_LOADED", AddonName(name))
		return true, nil
	end,
	IsAddOnLoaded = function(name)
		local a = ADDONS[AddonName(name)]
		local loaded = a ~= nil and a.loaded == true
		return loaded, loaded
	end,
	DoesAddOnExist = function(name) return ADDONS[AddonName(name)] ~= nil end,
	GetNumAddOns = function() return #ADDON_LIST end,
	GetAddOnInfo = function(i)
		local name = AddonName(i)
		if not ADDONS[name] then return nil end
		return name, ADDONS[name].meta.Title or name, "", true, nil, "INSECURE"
	end,
	GetAddOnMetadata = function(name, field)
		local a = ADDONS[AddonName(name)]
		return a and a.meta[field] or nil
	end,
}

-- The folders of the download, read from disk (Lua io): the .toc (metadata and files) and the files in order, with
-- (name, private table) as `...` like the client.
local function ReadFile(path)
	local f = assert(io.open(path, "rb"))
	local s = f:read("*a")
	f:close()
	return s
end
function READ_TOC(dir, name)
	local files, meta = {}, {}
	for line in (ReadFile(dir .. "/" .. name .. ".toc") .. "\n"):gmatch("([^\n]*)\n") do
		line = line:gsub("^[ \t]+", ""):gsub("[ \t\r]+$", "")
		local k, v = line:match("^## ([^:]+):[ \t]*(.-)$")
		if k then
			meta[k] = v
		elseif line ~= "" and line:sub(1, 1) ~= "#" then
			table.insert(files, (line:gsub("\\", "/")))
		end
	end
	return files, meta
end
function RUN_FOLDER(dir, name)
	local files = READ_TOC(dir, name)
	local ns = {}
	for _, f in ipairs(files) do
		local chunk = assert(loadstring(ReadFile(dir .. "/" .. f), "@" .. name .. "/" .. f))
		chunk(name, ns)
	end
end
-- installs the folders `names` (a list) found in `root`, LoadOnDemand as in their .toc; loaded = true runs them now
-- (a test that wants everything in memory, like a development install)
function INSTALL_PACKS(root, names, loaded)
	for _, name in ipairs(names) do
		local dir = root .. "/" .. name
		local _, meta = READ_TOC(dir, name)
		ADD_ADDON(name, { meta = meta, load = function() RUN_FOLDER(dir, name) end })
		if loaded then
			ADDONS[name].loaded = true
			RUN_FOLDER(dir, name)
		end
	end
end
function UnitPosition(u)
	if P.instance or u ~= "player" then return nil end
	return 1234.5, 987.25, 12, 1
end
function UnitOnTaxi() return P.onTaxi or false end
P.pois = { 5001, 5002, 5003 }
C_AreaPoiInfo = { GetAreaPOIForMap = function(map) return P.pois end }
QUESTS = {
	{ title = "Zone header", isHeader = true },
	{ title = "The Secret Of Mirabel", questID = 4711, isHeader = false, level = 12 },
}
-- QUEST_READY[id] = true: la missione è completa; QUEST_OBJECTIVES[id] = elenco di obiettivi (R3, #95)
QUEST_READY, QUEST_OBJECTIVES = {}, {}
C_QuestLog = {
	GetNumQuestLogEntries = function() return #QUESTS, 1 end,
	GetInfo = function(i) return QUESTS[i] end,
	GetQuestObjectives = function(id)
		return QUEST_OBJECTIVES[id] or { { text = "Find Mirabel", type = "object", finished = false, numFulfilled = 0, numRequired = 1 } }
	end,
	IsComplete = function(id) return QUEST_READY[id] == true end,
}
-- posizione sulla mappa: P.pos = { x, y }; nelle istanze il client non la dà
C_Map.GetPlayerMapPosition = function(mapID, unit)
	if P.instance or not P.pos or unit ~= "player" then return nil end
	return { x = P.pos[1], y = P.pos[2] }
end
FACTIONS = { { factionID = 72, name = "Stormwind", reaction = 5, currentStanding = 1200 } }
C_Reputation = {
	GetNumFactions = function() return #FACTIONS end,
	GetFactionDataByIndex = function(i) return FACTIONS[i] end,
}
C_Secrets.HasSecretRestrictions = function() return false end
C_Secrets.ShouldAurasBeSecret = function() return false end
C_Secrets.ShouldCooldownsBeSecret = function() return false end
C_Secrets.ShouldUnitStatsBeSecret = function() return false end

-- Serializza una tabella in testo Lua, come il client fa con le SavedVariables alla chiusura o a /reload:
-- loadstring("return " .. SERIALIZE(t))() la riporta in vita in un runtime nuovo. Chiavi in ordine, cicli non ammessi.
function SERIALIZE(v)
	local t = type(v)
	if t == "string" then return string.format("%q", v) end
	if t == "number" or t == "boolean" or t == "nil" then return tostring(v) end
	if t ~= "table" then error("SERIALIZE: tipo non ammesso " .. t) end
	local keys = {}
	for k in pairs(v) do table.insert(keys, k) end
	table.sort(keys, function(a, b)
		if type(a) == type(b) and (type(a) == "number" or type(a) == "string") then return a < b end
		return type(a) < type(b)
	end)
	local out = {}
	for _, k in ipairs(keys) do
		table.insert(out, "[" .. SERIALIZE(k) .. "]=" .. SERIALIZE(v[k]))
	end
	return "{" .. table.concat(out, ",") .. "}"
end

-- (#191) A fake Total RP 3 with its public player model (Total RP 3 3.5.3, Core/Player.lua and Core/Enums.lua):
-- AddOn_TotalRP3.Player.GetCurrentUser and CreateFromUnit (also under `static`, as middleclass serves them), player
-- objects with the methods the adapter calls. It sets AddOn_TotalRP3 and clears the internal TRP3_API.
--   spec.status    the player's own roleplay status: 1 in character, 2 out of character, nil none
--   spec.first     the first name of the player's own profile
--   spec.profiles  [characterID] = characteristics ({ RA, CL, PS, ... }) of the profiles Total RP 3 knows
--   spec.unitID    function(unit) -> characterID (default: name-realm of the mock unit)
--   spec.broken    CreateFromUnit raises, like an API that changed
--   spec.noStatus  the player object has neither GetRoleplayStatus nor IsInCharacter
-- Returns the fake's counters: reads (reads of profile data), created (player objects made).
function FAKE_TRP3(spec)
	spec = spec or {}
	local state = { reads = 0, created = 0 }
	local selfID = P.name .. "-" .. (P.realm or "TestRealm")
	local profiles = spec.profiles or {}
	local Player = {}
	Player.__index = Player
	local function Data(obj)
		if obj.own then return { FN = spec.first } end
		state.reads = state.reads + 1
		return profiles[obj.id]
	end
	function Player:GetCharacterID() return self.id end
	function Player:IsCurrentUser() return self.id == selfID end
	function Player:GetProfile() if self.own or profiles[self.id] then return {} end end
	function Player:GetCharacteristics() return Data(self) end
	function Player:GetCustomRace() local c = Data(self); return c and c.RA end
	function Player:GetCustomClass() local c = Data(self); return c and c.CL end
	function Player:GetFirstName() return spec.first end
	function Player:GetInfo(path)
		local c = Data(self)
		if path == "characteristics/PS" then return c and c.PS end
		if path == "character/RP" then return self.own and spec.status or nil end
		return "PRIVATE-DATA-" .. path
	end
	if not spec.noStatus then
		function Player:GetRoleplayStatus() return self:GetInfo("character/RP") end
		function Player:IsInCharacter() return self:GetInfo("character/RP") ~= 2 end
	end
	local user = setmetatable({ id = selfID, own = true }, Player)
	local function ID(unit)
		if spec.unitID then return spec.unitID(unit) end
		local name, realm = UnitFullName(unit)
		assert(type(name) == "string", "attempted to construct a Player object from an invalid unit")
		return name .. "-" .. (realm or GetNormalizedRealmName())
	end
	local static = {
		GetCurrentUser = function() return user end,
		CreateFromUnit = function(unit)
			if spec.broken then error("API changed") end
			local id = ID(unit)
			if id == selfID then return user end
			state.created = state.created + 1
			return setmetatable({ id = id }, Player)
		end,
	}
	AddOn_TotalRP3 = setmetatable({ Player = setmetatable({ static = static }, { __index = static }),
		Enums = { ROLEPLAY_STATUS = { IN_CHARACTER = 1, OUT_OF_CHARACTER = 2 } } }, {})
	TRP3_API = nil
	return state
end

-- piccolo framework per i test in Lua (Tests/Test*.lua)
T = { passed = 0, failed = 0, failures = {} }
function T.ok(cond, msg)
	if cond then
		T.passed = T.passed + 1
	else
		T.failed = T.failed + 1
		table.insert(T.failures, (T.current or "?") .. ": " .. tostring(msg or "condizione falsa"))
	end
end
function T.eq(actual, expected, msg)
	T.ok(actual == expected, (msg or "") .. " (atteso " .. tostring(expected) .. ", ottenuto " .. tostring(actual) .. ")")
end
function T.run(name, fn)
	T.current = name
	local ok, err = pcall(fn)
	if not ok then
		T.failed = T.failed + 1
		table.insert(T.failures, name .. ": errore " .. tostring(err))
	end
	T.current = nil
end
function T.sentContains(text)
	for _, s in ipairs(SENT) do
		if s:find(text, 1, true) then return true end
	end
	return false
end
