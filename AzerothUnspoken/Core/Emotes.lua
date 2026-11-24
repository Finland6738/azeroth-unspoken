-- Emotes: the game's emote list, how one is played, the key of the emote wheel and its two sounds (ADR 0059). Lua 5.1.
-- * The list is read from the client's own strings, EMOTE<n>_TOKEN and EMOTE<n>_CMD1 (the localised command, "/dance"), so
--   an emote that WoW Forever adds appears by itself; a short built-in list stands in when the client has none.
-- * An emote is played with C_ChatInfo.PerformEmote (in the API dump of 1.60.1), else with the older global DoEmote; neither
--   is protected. It is the player's own gesture, made by hand on the wheel, like typing /dance.
-- * The wheel's key (AZEROTHUNSPOKEN_WHEEL in Bindings.xml) ships unbound. BindMiddleButton() binds the middle mouse button
--   to it only when the player asks (two clicks in the Settings), never in combat; nothing here takes a key by itself.
-- * No text is written here: the names of the emotes are the locale keys emote_<TOKEN>, or the client's own command.
-- Not tried in the game client: which strings the client defines, PerformEmote and DoEmote, the bindings and the sound kits.
local ADDON_NAME, NS = ...
NS = NS or {}

local Emotes = {}
NS.Emotes = Emotes

local Compat = NS.Compat

Emotes.BINDING = "AZEROTHUNSPOKEN_WHEEL"
Emotes.MIDDLE = "BUTTON3"
Emotes.MAX_SLICES = 12
Emotes.SCAN_MAX = 1000   -- the client's emote strings are numbered with gaps; 1000 covers every list known

-- The twelve slices of a new wheel, clockwise from the top (the first `ui.wheel.slices` are shown).
Emotes.DEFAULTS = { "WAVE", "DANCE", "BOW", "CHEER", "LAUGH", "TRAIN", "MOO", "SALUTE", "THANK", "KISS", "POINT", "ROAR" }

-- Used only when the client has no EMOTE<n>_TOKEN strings at all: common tokens of the game's emote list.
Emotes.FALLBACK = { "AGREE", "AMAZE", "ANGRY", "APOLOGIZE", "APPLAUD", "BASHFUL", "BECKON", "BEG", "BITE", "BLINK",
	"BLUSH", "BONK", "BORED", "BOUNCE", "BOW", "BRB", "BURP", "BYE", "CACKLE", "CHEER", "CHICKEN", "CHUCKLE", "CLAP",
	"CONFUSED", "CONGRATULATE", "COUGH", "COWER", "CRY", "CURIOUS", "CURTSEY", "DANCE", "DRINK", "EAT", "FLEX", "FROWN",
	"GASP", "GIGGLE", "GLARE", "GLOAT", "GREET", "GRIN", "GROAN", "GROVEL", "GUFFAW", "HAIL", "HELLO", "HUG", "HUNGRY",
	"KISS", "KNEEL", "LAUGH", "LAYDOWN", "LOVE", "MOAN", "MOO", "MOURN", "NO", "NOD", "PANIC", "PEER", "PLEAD", "POINT",
	"POKE", "PRAY", "ROAR", "ROFL", "RUDE", "SALUTE", "SCRATCH", "SHRUG", "SHY", "SIGH", "SIT", "SLEEP", "SNARL", "STAND",
	"STARE", "SURPRISED", "SURRENDER", "TALK", "TAUNT", "THANK", "THREATEN", "TIRED", "TRAIN", "VICTORY", "VIOLIN", "WAVE",
	"WELCOME", "WHISTLE", "WINK", "YAWN" }

-- The icon of an emote on the wheel: a cell of the addon's icon sheet (UI/Assets.lua). Any other emote shows `chat`.
Emotes.ICONS = {
	WAVE = "hand", HELLO = "hand", GREET = "hand", BYE = "hand", WELCOME = "hand", BECKON = "hand", HAIL = "hand",
	DANCE = "note", VIOLIN = "note", WHISTLE = "note",
	LAUGH = "smile", GIGGLE = "smile", CHUCKLE = "smile", GRIN = "smile", ROFL = "smile", GUFFAW = "smile", HAPPY = "smile",
	CHEER = "star", VICTORY = "star", APPLAUD = "star", CLAP = "star", CONGRATULATE = "star",
	BOW = "crown", CURTSEY = "crown", KNEEL = "crown",
	TRAIN = "train", MOO = "bell", SALUTE = "flag", THANK = "check", AGREE = "check", NOD = "check", NO = "cross",
	KISS = "heart", LOVE = "heart", HUG = "heart", BLUSH = "heart",
	POINT = "arrow_up", ROAR = "warn", THREATEN = "warn", ANGRY = "warn", SNARL = "warn", TAUNT = "sword", FLEX = "shield",
	PRAY = "book", SIT = "clock", SLEEP = "clock", TIRED = "clock", YAWN = "clock", EAT = "bag", DRINK = "bag",
	TALK = "chat", CRY = "dot", MOURN = "dot", SURRENDER = "flag", CHICKEN = "skull",
}

-- The sounds of the wheel: a client sound kit by name (the SOUNDKIT table of the game), with its usual id as the fallback.
Emotes.SOUNDS = {
	tick = { kit = "U_CHAT_SCROLL_BUTTON", id = 1115 },
	confirm = { kit = "IG_MAINMENU_OPTION_CHECKBOX_ON", id = 856 },
}

local function upper(s) return (NS.Upper and NS.Upper(s)) or s:upper() end

---Whether a string has the shape of an emote token ("DANCE", "RASPBERRY", "FORTHEALLIANCE").
---@param token any
---@return boolean
function Emotes.IsToken(token)
	return type(token) == "string" and token:match("^[A-Z][A-Z0-9_]*$") ~= nil and #token <= 40
end

-- --- the list of the client ---------------------------------------------------------------------------------------------

local list, byToken, byCommand   -- built once, on first use

local function global(name)
	local ok, v = pcall(function() return _G[name] end)
	if ok then return v end
	return nil
end

---Reads the emote list from the client: { { token, command } } in the client's order, the command without its slash
---(nil when the client gives none). Falls back to Emotes.FALLBACK when the client has no strings. Built once.
---@return table list
---@return boolean fromClient
function Emotes:List()
	if list then return list, self.fromClient end
	list, byToken, byCommand = {}, {}, {}
	for i = 1, Emotes.SCAN_MAX do
		local token = global("EMOTE" .. i .. "_TOKEN")
		if Emotes.IsToken(token) and not byToken[token] then
			local cmd = global("EMOTE" .. i .. "_CMD1")
			cmd = type(cmd) == "string" and cmd:match("^/?(%S+)$") or nil
			local e = { token = token, command = cmd }
			list[#list + 1] = e
			byToken[token] = e
			if cmd then byCommand[NS.Lower and NS.Lower(cmd) or cmd:lower()] = e end
			-- every other command of the same emote ("/bye", "/goodbye", "/farewell") is accepted too
			for k = 2, 6 do
				local other = global("EMOTE" .. i .. "_CMD" .. k)
				other = type(other) == "string" and other:match("^/?(%S+)$") or nil
				if other then byCommand[NS.Lower and NS.Lower(other) or other:lower()] = e end
			end
		end
	end
	self.fromClient = #list > 0
	if not self.fromClient then
		for _, token in ipairs(Emotes.FALLBACK) do
			local e = { token = token }
			list[#list + 1] = e
			byToken[token] = e
		end
	end
	return list, self.fromClient
end

---Forgets the list (the tests, or a client that defines its strings late); the next call reads it again.
function Emotes:Reset() list, byToken, byCommand = nil, nil, nil end

---Whether the client lists the token (always true for a well-formed token when the client lists nothing).
---@param token string
---@return boolean
function Emotes:Knows(token)
	self:List()
	return byToken[token] ~= nil
end

---The token of a word the player typed: a token ("DANCE", "dance") or a command ("/dance", "dance", "/ballo"). nil when
---it is neither in the list nor, with the client listing nothing, shaped like a token.
---@param word string
---@return string? token
function Emotes:Resolve(word)
	if type(word) ~= "string" then return nil end
	word = word:match("^%s*/?(%S+)%s*$")
	if not word then return nil end
	self:List()
	local e = byCommand[NS.Lower and NS.Lower(word) or word:lower()]
	if e then return e.token end
	local token = upper(word)
	if byToken[token] then return token end
	return nil
end

---The name of an emote for the wheel and the settings: the locale key emote_<TOKEN>, else the client's command without the
---slash, else the token itself.
---@param token string
---@return string
function Emotes:Label(token)
	if type(token) ~= "string" then return "" end
	local key = "emote_" .. token
	local s = NS.L and NS:L(key)
	if s and s ~= key then return s end
	self:List()
	local e = byToken[token]
	if e and e.command then return e.command end
	return token
end

---The command of an emote as the client knows it ("/dance"), or nil.
---@param token string
---@return string?
function Emotes:Command(token)
	self:List()
	local e = byToken[token]
	return e and e.command and ("/" .. e.command) or nil
end

---The icon of an emote: the name of a cell of the icon sheet.
---@param token string
---@return string
function Emotes.Icon(token)
	return Emotes.ICONS[token] or "chat"
end

---The next (step 1) or previous (step -1) emote of the list after `token`; the first one when `token` is not listed.
---@param token string
---@param step? number
---@return string
function Emotes:Step(token, step)
	local l = self:List()
	step = step or 1
	for i, e in ipairs(l) do
		if e.token == token then return l[((i - 1 + step) % #l) + 1].token end
	end
	return l[1].token
end

-- --- the slices of the wheel --------------------------------------------------------------------------------------------

local function wheel() return NS.db and NS.db.ui and NS.db.ui.wheel end

---The number of slices (4-12).
---@return number
function Emotes:Slices()
	local w = wheel()
	local n = w and tonumber(w.slices) or 8
	if not n or n ~= n then n = 8 end
	return math.max(4, math.min(Emotes.MAX_SLICES, math.floor(n + 0.5)))
end

---The token of a slice (1-12): the saved one, or the default of that slice when the saved one is missing or malformed.
---@param i number
---@return string
function Emotes:SliceToken(i)
	local w = wheel()
	local t = w and type(w.emotes) == "table" and w.emotes[i]
	if Emotes.IsToken(t) then return t end
	return Emotes.DEFAULTS[i] or Emotes.DEFAULTS[1]
end

---Puts an emote in a slice. Returns ok.
---@param i number 1-12
---@param token string
---@return boolean
function Emotes:SetSlice(i, token)
	local w = wheel()
	i = tonumber(i)
	if not w or not i or i ~= math.floor(i) or i < 1 or i > Emotes.MAX_SLICES or not Emotes.IsToken(token) then return false end
	if type(w.emotes) ~= "table" then w.emotes = {} end
	w.emotes[i] = token
	if NS.Config then NS.Config:Changed("ui.wheel.emotes") end
	return true
end

---Puts the default emote back in every slice.
function Emotes:ResetSlices()
	local w = wheel()
	if not w then return end
	w.emotes = {}
	for i, t in ipairs(Emotes.DEFAULTS) do w.emotes[i] = t end
	if NS.Config then NS.Config:Changed("ui.wheel.emotes") end
end

-- --- playing an emote ---------------------------------------------------------------------------------------------------

---Plays an emote: C_ChatInfo.PerformEmote when the client has it, else DoEmote. Returns true when a call was made without
---an error (the client may still refuse the emote: a dead character cannot dance).
---@param token string
---@return boolean
function Emotes:Perform(token)
	if not Emotes.IsToken(token) then return false end
	local perform = Compat.Resolve("C_ChatInfo.PerformEmote")
	if type(perform) == "function" then
		local ok = pcall(perform, token)
		if ok then return true end
	end
	local doEmote = Compat.Resolve("DoEmote")
	if type(doEmote) == "function" then
		return pcall(doEmote, token) and true or false
	end
	return false
end

-- --- sounds -------------------------------------------------------------------------------------------------------------

---Plays a sound of the wheel ("tick" or "confirm") unless the sounds are off. Returns true when the client took it.
---@param which string
---@return boolean
function Emotes:Sound(which)
	local w = wheel()
	if w and w.sounds == false then return false end
	local s = Emotes.SOUNDS[which]
	if not s then return false end
	local kits = Compat.Resolve("SOUNDKIT")
	local id = type(kits) == "table" and tonumber(kits[s.kit]) or s.id
	local play = Compat.Resolve("PlaySound")
	if type(play) == "function" and pcall(play, id, "SFX") then return true end
	play = Compat.Resolve("C_Sound.PlaySound")
	if type(play) == "function" and pcall(play, id) then return true end
	return false
end

-- --- the key ------------------------------------------------------------------------------------------------------------

---The keys bound to the wheel (none, one or two), as the client names them ("BUTTON3", "SHIFT-F").
---@return table keys
function Emotes:BoundKeys()
	local out = {}
	local a, b = Compat.SafeCall("GetBindingKey", Emotes.BINDING)
	if type(a) == "string" and a ~= "" then out[#out + 1] = a end
	if type(b) == "string" and b ~= "" then out[#out + 1] = b end
	return out
end

---What a key does now: the name of its binding, or nil when it is free.
---@param key string
---@return string?
function Emotes:ActionOf(key)
	local action = Compat.SafeCall("GetBindingAction", key)
	if type(action) ~= "string" or action == "" then return nil end
	return action
end

---Whether the middle mouse button opens the wheel.
---@return boolean
function Emotes:MiddleBound()
	return self:ActionOf(Emotes.MIDDLE) == Emotes.BINDING
end

local function save()
	local set = Compat.SafeCall("GetCurrentBindingSet")
	local saveBindings = Compat.Resolve("SaveBindings")
	if type(saveBindings) ~= "function" then return false end
	return pcall(saveBindings, set or 1) and true or false
end

---Binds the middle mouse button to the wheel, at the player's request only. Returns "ok", "combat" (never in combat:
---the client refuses binding changes there) or "failed".
---@return string
function Emotes:BindMiddleButton()
	if Compat.SafeCall("InCombatLockdown") then return "combat" end
	local set = Compat.Resolve("SetBinding")
	if type(set) ~= "function" then return "failed" end
	local ok, res = pcall(set, Emotes.MIDDLE, Emotes.BINDING)
	if not ok or res == false then return "failed" end
	save()
	return "ok"
end

---Gives the middle mouse button back: it no longer opens the wheel (it does nothing until the player binds it again).
---Returns "ok", "combat", "none" (it was not the wheel's) or "failed".
---@return string
function Emotes:UnbindMiddleButton()
	if not self:MiddleBound() then return "none" end
	if Compat.SafeCall("InCombatLockdown") then return "combat" end
	local set = Compat.Resolve("SetBinding")
	if type(set) ~= "function" then return "failed" end
	local ok, res = pcall(set, Emotes.MIDDLE)
	if not ok or res == false then return "failed" end
	save()
	return "ok"
end

-- --- the state of a key -------------------------------------------------------------------------------------------------

-- The mouse buttons as IsMouseButtonDown names them.
Emotes.MOUSE_BUTTONS = { BUTTON1 = "LeftButton", BUTTON2 = "RightButton", BUTTON3 = "MiddleButton", BUTTON4 = "Button4",
	BUTTON5 = "Button5" }

---The key of a binding without its modifiers: "SHIFT-BUTTON3" -> "BUTTON3", "CTRL-F" -> "F".
---@param key string
---@return string
function Emotes.BaseKey(key)
	if type(key) ~= "string" then return "" end
	return key:match("([^%-]+)$") or key
end

---Whether the client says a key is held: true, false, or nil when it cannot tell (a wheel turn, a missing function).
---@param key string
---@return boolean?
function Emotes.IsHeld(key)
	local base = Emotes.BaseKey(key)
	if base == "" or base:find("^MOUSEWHEEL") then return nil end
	local button = Emotes.MOUSE_BUTTONS[base]
	local down
	if button then
		down = Compat.SafeCall("IsMouseButtonDown", button)
	else
		down = Compat.SafeCall("IsKeyDown", base)
	end
	if down == nil then return nil end
	return down and true or false
end
