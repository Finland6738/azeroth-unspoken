-- Azeroth Unspoken: the Bard (ADR 0060). The songs, verses and tales the character remembers are shown in the narrator box
-- with the Bard's look (UI/NarratorFrame.lua: the label "Bard", the token voice-bard, the note icon), and the player may
-- share one in chat, line by line.
-- * Which pieces: a literary rule (Engine.IsLiteraryRule) whose genre is verse, song or tale and whose voice is not an
--   NPC's. Inscriptions and formulas (read, not sung) stay in the inner voice; an NPC's song stays in the NPC voice.
-- * Sharing relaxes D16 (#130) for an explicit share only: it starts inside Gateway:PlayerAction (a click or a typed
--   command), never from a timer, an event or the Gateway's automatic mode. The attribution becomes an emote on /e, the
--   verses follow one per message through Gateway:Send (byte limits, flood limits, lockdown, the one-line rule). On /e,
--   and on /s inside an instance, the next message goes by itself at the pace below; on /s in the open world each one
--   needs a click ("Next verse").
-- Nothing here is saved but the three settings (NS.db.bard); a share lives in memory only.
local ADDON, NS = ...
local Bard = NS:RegisterModule("bard")
NS.Bard = Bard

Bard.GENRES = { verse = true, song = true, tale = true }   -- the Bard's forms (Engine.GENRES: the rest stay where they were)
Bard.CHANNELS = NS.Config.BARD_CHANNELS                   -- SAY, EMOTE
Bard.GAP = 4            -- seconds at least between two messages of a share (more when chat.floodSeconds asks for more)
Bard.MAX_IDLE = 120     -- a share waiting this long for a click stops
Bard.TICK = 0.25        -- how often a running share looks at the clock
Bard.listeners = {}

---@class AUBardShare
---@field text string the piece as shown (its first line is the attribution)
---@field genre string
---@field channel string SAY | EMOTE
---@field messages { text: string, channel: string }[]
---@field index integer the next message to send
---@field lastAt number GetTime() of the last message sent
---@field waitSince number GetTime() since which the share waits (for the clock or a click)
Bard.share = nil
---@type { text: string, genre: string, id?: string }?
Bard.last = nil         -- the Bard piece last shown (/au bard sing)

local function Cfg() return NS.db.bard end

local function Trim(s)
	return (s:gsub("^[ \t\r]+", ""):gsub("[ \t\r]+$", ""))
end

---------------------------------------------------------------------------
-- Which pieces are the Bard's
---------------------------------------------------------------------------
---Whether a rule is a Bard piece: literary, of a sung or recited genre, not in an NPC's voice.
---@param p? table a registered rule
---@return boolean
function Bard.IsBardRule(p)
	if type(p) ~= "table" or not NS.Engine.IsLiteraryRule(p) then return false end
	return Bard.GENRES[p.genre] == true and p.speaker ~= "npc"
end

---@return boolean on the Bard box is on (bard.enabled)
function Bard:Enabled()
	return Cfg().enabled ~= false
end

---Whether the narrator shows this record in the Bard's look: the Bard is on and the line comes from a Bard piece.
---@param rec? AUPhraseRecord
---@return boolean
function Bard:Claims(rec)
	if type(rec) ~= "table" or not self:Enabled() or type(rec.id) ~= "string" then return false end
	return Bard.IsBardRule(NS.Engine.byId[rec.id])
end

---The narrator shows a Bard piece: it is the one /au bard sing shares.
---@param rec AUPhraseRecord
function Bard:NoteShown(rec)
	local p = NS.Engine.byId[rec.id]
	self.last = { text = rec.display, genre = p and p.genre or "verse", id = rec.id }
end

---------------------------------------------------------------------------
-- The messages of a share
---------------------------------------------------------------------------
---The emote that replaces the attribution and the verses of a piece: nil when the piece has no verse after its first
---line (a one-line piece is not sung line by line). Empty lines between stanzas are left out.
---@param text? string
---@param genre? string
---@return string? emote
---@return string[]? verses
function Bard.Parts(text, genre)
	if type(text) ~= "string" then return nil end
	local verses, first = {}, true
	for line in (text .. "\n"):gmatch("([^\n]*)\n") do
		if first then
			first = false
		else
			line = Trim(line)
			if line ~= "" then table.insert(verses, line) end
		end
	end
	if #verses == 0 then return nil end
	local key = Bard.GENRES[genre] and ("bard_share_" .. genre) or "bard_share_verse"
	return NS:L(key), verses
end

---The chat messages of a share, each one as Gateway:Send will send it (one line, at most the channel's bytes): the
---emote on /e, then the verses on the chosen channel (on /e as a quoted line after the character's name).
---@param text string
---@param genre? string
---@param channel string SAY | EMOTE
---@return { text: string, channel: string }[]? messages nil when there is nothing to sing
function Bard:Messages(text, genre, channel)
	local emote, verses = Bard.Parts(text, genre)
	if not emote then return nil end
	local G, limits = NS.Gateway, NS.Config.CHAT_LIMITS
	local out = { { text = NS.Clip(G:TextFor("emote", emote, "EMOTE"), limits.EMOTE), channel = "EMOTE" } }
	for _, v in ipairs(verses) do
		local line
		if channel == "EMOTE" then
			line = G:TextFor("emote", NS:L("bard_emote_line", v), "EMOTE")
		else
			line = G:TextFor("say", v, channel)
		end
		table.insert(out, { text = NS.Clip(line, limits[channel] or 255), channel = channel })
	end
	return out
end

---------------------------------------------------------------------------
-- Sharing
---------------------------------------------------------------------------
local function Changed()
	for _, fn in ipairs(Bard.listeners) do NS.Diagnostics:Guard("bard", fn) end
end

---@param fn fun() called when a share starts, moves on or ends
function Bard:OnChange(fn) table.insert(self.listeners, fn) end

---@param channel? string
---@return string? channel SAY | EMOTE, or nil for anything else
function Bard.Channel(channel)
	for _, c in ipairs(Bard.CHANNELS) do
		if c == channel then return c end
	end
	return nil
end

---Whether a piece can be shared now.
---@param text? string
---@param genre? string
---@return boolean ok
---@return string? why off | private | combat | ooc | busy | proposal | short
function Bard:CanShare(text, genre)
	if not Cfg().share then return false, "off" end
	if not NS.db.modules.publicChat then return false, "private" end
	if NS.Gateway:InCombat() then return false, "combat" end
	if NS.Gateway:HeldOOC() then return false, "ooc" end
	if self.share then return false, "busy" end
	if NS.Gateway:GetPending() then return false, "proposal" end
	if not Bard.Parts(text, genre) then return false, "short" end
	return true
end

---Whether the next message of the running share waits for a click (on /s in the open world every message needs one).
---@return boolean
function Bard:NeedsClick()
	local s = self.share
	local m = s and s.messages[s.index]
	return m ~= nil and not NS.Gateway:CanSendWithoutAction(m.channel)
end

---The progress of the running share: the next message's number and the count (the emote included); nil when none runs.
---@return integer? next
---@return integer? total
function Bard:Progress()
	local s = self.share
	if not s then return nil end
	return s.index, #s.messages
end

---Whether the running share is the one of this text.
---@param text? string
---@return boolean
function Bard:IsSharing(text)
	return self.share ~= nil and (text == nil or self.share.text == text)
end

---The pause before the next message: Bard.GAP, or the Gateway's own floodSeconds when larger.
---@return number seconds
function Bard:Gap()
	return math.max(Bard.GAP, NS.db.chat.floodSeconds or 0)
end

---Ends the running share, with a word in chat when it stops before the end.
---@param why? string done | stop | combat | idle | ooc | failed
function Bard:Stop(why)
	if not self.share then return end
	self.share = nil
	if why and why ~= "done" then NS:Print(NS:L("bard_share_stopped_" .. why)) end
	Changed()
end

-- sends the next message: true when it went, or false and why it must wait (flood, lockdown, needs_action) or stopped
local function SendNext(self)
	local s = self.share
	local m = s and s.messages[s.index]
	if not m then return false, "none" end
	local ok, why = NS.Gateway:Send(m.text, m.channel)
	if ok then
		s.index, s.lastAt, s.waitSince = s.index + 1, GetTime(), GetTime()
		if s.index > #s.messages then self:Stop("done") else Changed() end
		return true
	end
	-- the flood limits and the chat lockdown pass; needs_action (the client wants a click) waits for one
	if why == "flood" or why == "lockdown" or why == "needs_action" then return false, why end
	-- anything else ends the share
	NS.Gateway:Report(why, m.channel)
	self:Stop("failed")
	return false, why
end

---Starts sharing a piece: only from the player's click or typed command (inside Gateway:PlayerAction). The first message,
---the emote, goes at once.
---@param text string the piece as shown
---@param genre? string
---@param channel? string SAY | EMOTE (default: the setting bard.channel)
---@return boolean ok
---@return string? why needs_click | bad_channel | the reasons of CanShare
function Bard:Share(text, genre, channel)
	-- ADR 0060: never automatic. A timer, an event or the Gateway's automatic mode is not inside PlayerAction
	if not NS.Gateway.inPlayerAction then return false, "needs_click" end
	channel = Bard.Channel(channel or Cfg().channel)
	if not channel then return false, "bad_channel" end
	local ok, why = self:CanShare(text, genre)
	if not ok then return false, why end
	Cfg().channel = channel
	local now = GetTime()
	self.share = { text = text, genre = genre or "verse", channel = channel, messages = self:Messages(text, genre, channel),
		index = 1, lastAt = now - self:Gap(), waitSince = now }
	Changed()
	local sent, err = SendNext(self)
	if not sent then
		-- the first message could not go (flood, lockdown): nothing was said, so nothing is under way
		if self.share then
			self.share = nil
			Changed()
		end
		return false, err
	end
	return true
end

---"Next verse": the player's click sends the next message (on /s in the open world, where each one needs a click).
---@return boolean sent
---@return string? why none | wait | the reasons of Gateway:Send
function Bard:Next()
	local s = self.share
	if not s then return false, "none" end
	if not NS.Gateway.inPlayerAction then return false, "needs_click" end
	if GetTime() - s.lastAt < self:Gap() then return false, "wait" end
	return SendNext(self)
end

---The clock of a running share: in combat or out of character it stops; when the pause is over, a message the client
---lets go without a click goes; a share waiting too long for a click stops.
---@param now? number
function Bard:Tick(now)
	local s = self.share
	if not s then return end
	now = now or GetTime()
	if NS.Gateway:InCombat() then return self:Stop("combat") end
	if NS.Gateway:HeldOOC() then return self:Stop("ooc") end
	if self:NeedsClick() then
		if now - s.waitSince > Bard.MAX_IDLE then self:Stop("idle") end
		return
	end
	if now - s.lastAt >= self:Gap() then SendNext(self) end
end

---From the songbook (ADR 0060): a piece heard before is shown again in the Bard's box and shared on `channel`. Only from
---the player's click (the songbook's Share row runs it inside Gateway:PlayerAction).
---@param id string a piece of the songbook
---@param channel? string SAY | EMOTE
---@return boolean ok
---@return string? why unknown | the reasons of Share
function Bard:ShareFromSongbook(id, channel)
	if not NS.Gateway.inPlayerAction then return false, "needs_click" end
	local p = NS.Engine.byId[id]
	local text = NS.Songbook and NS.Songbook:FullText(id)
	if not (Bard.IsBardRule(p) and text) then return false, "unknown" end
	local ok, why = self:CanShare(text, p.genre)
	if not ok then return false, why end
	if NS.Narrator then
		NS.Narrator:Present({ id = id, speaker = p.speaker, display = text, text = text, category = p.category,
			event = "songbook", voice = "bard" })
	end
	return self:Share(text, p.genre, channel)
end

---------------------------------------------------------------------------
-- /au bard
---------------------------------------------------------------------------
local WORDS = NS.Keywords.Register("bard", {
	on = "on", off = "off", share = "share", channel = "channel", sing = "sing", next = "next", stop = "stop",
	say = "SAY", s = "SAY", emote = "EMOTE", e = "EMOTE",
})

local function OnOff(word)
	return NS.Keywords.OnOff(word)
end

---Says why a share did not start or move on.
---@param why? string
local EXPLAINED = { off = true, private = true, combat = true, ooc = true, busy = true, proposal = true, short = true,
	needs_click = true, bad_channel = true, none = true, wait = true, flood = true, lockdown = true, needs_action = true }
function Bard:Explain(why)
	if not why then return end
	NS:Print(NS:L("bard_why_" .. (EXPLAINED[why] and why or "failed")))
end

---The state of the Bard in chat: the box, the Share button and its channel.
function Bard:Status()
	local c = Cfg()
	NS:Print(NS:L("bard_now", NS:L(c.enabled and "on" or "off"), NS:L(c.share and "on" or "off"),
		NS:L("channel_" .. c.channel)))
end

---/au bard [on|off | share on|off | channel say|emote | sing [say|emote] | next | stop]
---@param rest? string
function Bard:Command(rest)
	local a, b = NS.Lower(rest or ""):match("^([^ %c]*)[ %c]*(.-)$")
	local w = WORDS[a]
	if a == "" then
		return self:Status()
	elseif w == "on" or w == "off" then
		NS.Config:Set("bard.enabled", w == "on")
	elseif w == "share" then
		local v = OnOff(b)
		if v == nil then return NS:Print(NS:L("invalid_value", b, NS:L("values_on_off"))) end
		NS.Config:Set("bard.share", v)
	elseif w == "channel" then
		local c = Bard.Channel(WORDS[b])
		if not c then return NS:Print(NS:L("invalid_value", b, NS:L("values_bard_channel"))) end
		NS.Config:Set("bard.channel", c)
	elseif w == "sing" then
		local last = self.last
		if not last then return NS:Print(NS:L("bard_nothing")) end
		local channel = b ~= "" and Bard.Channel(WORDS[b]) or nil
		if b ~= "" and not channel then return NS:Print(NS:L("invalid_value", b, NS:L("values_bard_channel"))) end
		-- a typed command is the player's action
		local ok, why = NS.Gateway:PlayerAction(function() return self:Share(last.text, last.genre, channel) end)
		if not ok then self:Explain(why) end
		return
	elseif w == "next" then
		local ok, why = NS.Gateway:PlayerAction(function() return self:Next() end)
		if not ok then self:Explain(why) end
		return
	elseif w == "stop" then
		if not self.share then return NS:Print(NS:L("bard_why_none")) end
		return self:Stop("stop")
	else
		return NS:Print(NS:L("invalid_value", rest, NS:L("values_bard")))
	end
	self:Status()
end

function Bard:OnInit()
	-- the clock of a share: a hidden frame's OnUpdate, a few times a second, only while a share runs
	local ok, f = pcall(CreateFrame, "Frame")
	if not ok or not f then return end
	local acc = 0
	f:SetScript("OnUpdate", function(_, dt)
		if not Bard.share then acc = 0 return end
		acc = acc + (dt or 0)
		if acc < Bard.TICK then return end
		acc = 0
		NS.Diagnostics:Guard("bard", Bard.Tick, Bard)
	end)
	self.clock = f
end
