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
Enum = { AddOnRestrictionType = { Combat = 0, Encounter = 1, ChallengeMode = 2, PvPMatch = 3, Map = 4 } }
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
	"UNIT_SPELLCAST_SUCCEEDED", "ADDON_RESTRICTION_STATE_CHANGED" }) do
	VALID_EVENTS[e] = true
end
C_EventUtils = { IsEventValid = function(e) return VALID_EVENTS[e] == true end }

-- Le funzioni delle unità leggono P per "player" e P.target per "target"; un'unità inesistente dà nil.
-- Con SECRET_UNITS[unit] i dati di identità sono segreti, come nel client con le restrizioni.
local function Subject(u)
	if u == "player" then return P end
	if u == "target" then return P.target end
	return nil
end
local function Identity(u, value)
	if value ~= nil and SECRET_UNITS[u] then return MakeSecret() end
	return value
end
function UnitName(u) local t = Subject(u); return t and Identity(u, t.name) end
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
function UnitAffectingCombat(u) if u == "player" then return P.combat end return false end
function InCombatLockdown() return P.combat end
function UnitIsDeadOrGhost(u) local t = Subject(u); return t and t.dead or false end
function UnitIsGhost() return false end
function UnitIsDead(u) local t = Subject(u); return t and Identity(u, t.dead or false) end
function IsResting() return P.resting or false end
function IsIndoors() return false end
function IsMounted() return false end
function IsSwimming() return false end
function IsStealthed() return false end
function IsInInstance() return P.instance, P.instance and "party" or "none" end
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
function UnitCreatureType(u) local t = Subject(u); return t and Identity(u, t.ctype) end
function UnitClassification(u) local t = Subject(u); return t and Identity(u, t.cls or "normal") or nil end
function UnitGUID(u)
	if u == "player" then return "Player-1-00000001" end
	local t = Subject(u)
	return t and Identity(u, t.guid)
end
C_Spell = { GetSpellName = function(id) return SPELLS[id] end }
SPELLS = {}
C_Timer = {
	After = function(seconds, f) AddTimer(seconds, f) end,
	NewTicker = function(seconds, f)
		local t = AddTimer(seconds, f, seconds)
		return { Cancel = function() t.cancelled = true; for i, x in ipairs(timers) do if x == t then table.remove(timers, i) break end end end }
	end,
}
CHAT_LOCKDOWN = false
C_ChatInfo = {
	SendChatMessage = function(text, kind)
		-- ipotesi prudente (da confermare in G1): senza un gesto del giocatore passano solo le emote
		-- e, nelle istanze, /say e /yell; i canali di gruppo, di gilda e /say nel mondo aperto no
		if kind ~= "EMOTE" and not HW then
			local openWorldSpeech = (kind == "SAY" or kind == "YELL") and P.instance
			if not openWorldSpeech then error("ADDON_ACTION_FORBIDDEN") end
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
function Widget:GetPoint() local p = self._s.points and self._s.points[#self._s.points]; if p then return unpack(p) end return "CENTER", UIParent, "CENTER", 0, 0 end
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
-- simula il clic del giocatore su un pulsante
function Widget:Click() if self.scripts.OnClick then self.scripts.OnClick(self, "LeftButton") end end
-- digita e conferma in una casella di testo
function Widget:TypeEnter(text) self._s.text = text; if self.scripts.OnEnterPressed then self.scripts.OnEnterPressed(self) end end

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
date = os.date
STANDARD_TEXT_FONT = "Fonts/FRIZQT__.TTF"
function IsInGuild() return P.guild or false end
SlashCmdList = {}

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
