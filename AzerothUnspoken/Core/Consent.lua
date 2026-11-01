-- Azeroth Unspoken: consents that cannot be given by mistake (#178, ADR 0003, D12 and D11 in #130).
-- Four settings need a deliberate yes: automatic sending in chat, the account-shared list, reading other players'
-- Total RP 3 profiles and proximity. Turning one ON takes two steps, and the second one can never be a double-click:
--   1. the player asks (a click, a command): the full warning appears in a confirmation dialog (StaticPopup) with the
--      explicit buttons, or, without StaticPopup, in chat; nothing changes yet;
--   2. the answer counts only after MIN_DELAY seconds (the dialog's Turn on button is disabled until then) and within
--      WINDOW seconds: the same button again, the same command again, or the dialog's Turn on.
-- Turning a consent OFF is always one step. Every consent has an `id` and a definition from the module that owns it:
--   { text = <interface key of the warning>, accept = function() ... end }
local ADDON, NS = ...
local Compat = NS.Compat
---@class AUConsent
local Consent = NS:RegisterModule("consent")
NS.Consent = Consent

Consent.MIN_DELAY = 2   -- seconds the confirmation stays blocked after the warning appears: time to read it
Consent.WINDOW = 30     -- seconds the question stays open (it is asked again after that)

local items = {}        -- [id] = { text, accept }
local asked = {}        -- [id] = GetTime() of the warning
local listeners = {}

local function PopupKey(id) return "AZEROTHUNSPOKEN_CONSENT_" .. id:upper() end

---@param id string
---@param def { text: string, accept: fun() }
function Consent:Register(id, def)
	items[id] = def
end

---Windows that show a consent register a function to redraw it when its state changes with the time.
---@param fn fun()
function Consent:OnChange(fn)
	table.insert(listeners, fn)
end

local function Notify()
	for _, fn in ipairs(listeners) do pcall(fn) end
end

---@param id string
---@return "idle"|"reading"|"ready" state idle: not asked (or expired); reading: the warning is up, not confirmable yet
function Consent:State(id)
	local t = asked[id]
	if not t then return "idle" end
	local elapsed = GetTime() - t
	if elapsed > self.WINDOW then return "idle" end
	if elapsed < self.MIN_DELAY then return "reading" end
	return "ready"
end

---@param id string
---@return boolean open the question is open (reading or ready)
function Consent:IsOpen(id)
	return self:State(id) ~= "idle"
end

local function HidePopup(id)
	local hide = Compat.Resolve("StaticPopup_Hide")
	if type(hide) == "function" then pcall(hide, PopupKey(id)) end
end

---Shows the warning in a confirmation dialog. False when the client has none (the caller falls back to chat).
local function ShowPopup(id, def)
	local dialogs = Compat.Resolve("StaticPopupDialogs")
	local show = Compat.Resolve("StaticPopup_Show")
	if type(dialogs) ~= "table" or type(show) ~= "function" then return false end
	dialogs[PopupKey(id)] = {
		text = NS:L(def.text),
		button1 = NS:L("consent_turn_on"), button2 = NS:L("consent_cancel"),
		-- the confirm button stays disabled while the player reads: a double-click cannot reach it
		OnShow = function(self)
			local b = self and (self.button1 or self.Button1)
			if not b then return end
			pcall(b.Disable, b)
			C_Timer.After(Consent.MIN_DELAY, function()
				if self:IsShown() then pcall(b.Enable, b) end
			end)
		end,
		OnAccept = function() Consent:Confirm(id) end,
		OnCancel = function() Consent:Cancel(id) end,
		timeout = Consent.WINDOW, whileDead = true, hideOnEscape = true, preferredIndex = 3,
	}
	return pcall(show, PopupKey(id)) and true or false
end

---Opens the question: shows the warning, changes nothing.
---@param id string
---@return "asked"|"none" result
function Consent:Ask(id)
	local def = items[id]
	if not def then return "none" end
	asked[id] = GetTime()
	C_Timer.After(self.MIN_DELAY, Notify)
	C_Timer.After(self.WINDOW + 0.5, Notify)
	if not ShowPopup(id, def) then NS:Print(NS:L(def.text)) end
	Notify()
	return "asked"
end

---The answer: counts only when the warning has been up for MIN_DELAY seconds and not longer than WINDOW.
---@param id string
---@return "confirmed"|"wait"|"none" result wait: too early, or nothing was asked
function Consent:Confirm(id)
	local def = items[id]
	if not def then return "none" end
	local state = self:State(id)
	if state == "idle" then return "none" end
	if state == "reading" then return "wait" end
	asked[id] = nil
	HidePopup(id)
	def.accept()
	Notify()
	return "confirmed"
end

---The one entry for a click or a command that wants the consent ON: asks the first time, confirms when the second
---step comes late enough, and ignores a second step that comes too early (the double-click).
---@param id string
---@return "asked"|"wait"|"confirmed"|"none" result
function Consent:Step(id)
	local state = self:State(id)
	if state == "ready" then return self:Confirm(id) end
	if state == "reading" then return "wait" end
	return self:Ask(id)
end

---Withdraws the question (the player chose something else, the consent was turned off, a reset).
---@param id string
function Consent:Cancel(id)
	if asked[id] == nil then return end
	asked[id] = nil
	HidePopup(id)
	Notify()
end

---Forgets every open question (tests, reset).
function Consent:Reset()
	for id in pairs(asked) do self:Cancel(id) end
end
