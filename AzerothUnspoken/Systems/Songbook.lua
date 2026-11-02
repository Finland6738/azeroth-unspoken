-- Azeroth Unspoken: the songbook (#122, #123, ADR 0044). The literary pieces the character heard or read, and those the
-- user marked as learned by heart, muted or favourite: ids and times only, never a text (owner decision D19 in #130).
-- Per character, bounded (about 300 ids, under 10 KB), with its own version, migration and Sanitize like the other
-- saved modules (ADR 0006). The texts are read from the loaded pack when they are shown: a piece whose pack is gone stays
-- listed by its id until it is forgotten.
--
--   - a literary piece shown (Gateway:Narrate) is noted as heard, with the time (NoteShown); the twins of `lore_test`
--     note their piece;
--   - the Journal has a tab "Songbook" (UI/JournalFrame.lua) with the pieces and their whole text, and the user's marks;
--   - `lore_recall` (#123): a piece the songbook confirms comes back as a memory, in the inner voice, with the same id and
--     the same text, in a recall or reading frame (Data/Frames.lua, `mode`) that takes the place of its attribution. The
--     Director offers it with the quiet moments of Data/Themes.lua (`literary.recall.moments`); a guard keeps it silent
--     when nothing in the songbook can come back (a "heard before" verse only if it was heard);
--   - a muted piece is never chosen again (Engine.muted), a favourite or learned one comes back more often in a recall;
--   - other systems add a piece with Songbook:Add(id, "heard" | "learned") (N7 will add the song of a nemesis's fall).
-- It follows the memory module: with the memory off nothing is noted and nothing comes back. Never in public chat (D16):
-- every record it makes is in the literary category and the inner voice.
local ADDON, NS = ...
local Engine = NS.Engine

---@class AUSongbookData saved per character (AzerothUnspokenCharacterDB.songbook)
---@field version integer
---@field heard table<string, number> [piece id] = time() it was last heard, read or recalled
---@field learned table<string, number> [piece id] = time() the user marked it as learned by heart
---@field muted table<string, number> [piece id] = time() the user muted it: never chosen again
---@field favourite table<string, number> [piece id] = time() the user marked it as a favourite

---@class AUSongbook
local Songbook = NS:RegisterModule("songbook")
NS.Songbook = Songbook

Songbook.VERSION = 1
Songbook.SETS = { "heard", "learned", "muted", "favourite" }
Songbook.MAX_IDS = 300         -- distinct ids in all the sets
Songbook.MAX_BYTES = 10000     -- estimated size in the saved file (Songbook.Bytes)
Songbook.MAX_ID_LEN = 120
Songbook.EVENT = "lore_recall"

Songbook.readOnly = false      -- data written by a newer version: it is read from a copy and never changed (#154)
Songbook.copy, Songbook.copyOf = nil, nil

local function IsTime(v)
	return type(v) == "number" and v == v and v > 0 and v < math.huge
end

---A piece id that may be kept: a string of 1-120 bytes with no control characters.
---@param id any
---@return boolean
function Songbook.ValidId(id)
	return type(id) == "string" and #id > 0 and #id <= Songbook.MAX_ID_LEN and not id:find("%c")
end

---------------------------------------------------------------------------
-- Saved data
---------------------------------------------------------------------------
local function Empty()
	return { version = Songbook.VERSION, heard = {}, learned = {}, muted = {}, favourite = {} }
end

---Brings older data to this version. Version 0 (no version, a damaged one, or an older file) keeps the sets it has:
---Sanitize cleans their entries.
---@param d table
function Songbook:Migrate(d)
	for _, set in ipairs(self.SETS) do
		if type(d[set]) ~= "table" then d[set] = {} end
	end
	d.version = self.VERSION
end

---The saved songbook. From a newer version it is a copy (ADR 0006 §5): read, never written.
---@return AUSongbookData?
function Songbook:Data()
	local c = NS.cdb
	if not c then return nil end
	if type(c.songbook) ~= "table" then c.songbook = Empty() end
	local d = c.songbook
	local v = d.version
	if type(v) == "number" and v > self.VERSION and v < math.huge then
		if self.copyOf ~= d then
			NS.Diagnostics:Error("songbook", ("songbook.version %s > %d: read-only"):format(tostring(v), self.VERSION))
			self.copyOf, self.copy = d, NS.Config.DeepCopy(d)
			for _, set in ipairs(self.SETS) do
				if type(self.copy[set]) ~= "table" then self.copy[set] = {} end
			end
		end
		self.readOnly = true
		return self.copy
	end
	self.readOnly, self.copyOf, self.copy = false, nil, nil
	if not (type(v) == "number" and v == self.VERSION) then self:Migrate(d) end
	for _, set in ipairs(self.SETS) do
		if type(d[set]) ~= "table" then d[set] = {} end
	end
	return d
end

---Can the songbook note pieces? The memory module is on and the data is not from a newer version.
---@return boolean
function Songbook:Enabled()
	return NS.db ~= nil and NS.cdb ~= nil and NS.db.modules.memory ~= false and not (self:Data() and self.readOnly)
end

---The estimated size of the songbook in the saved file, in bytes: each entry is written as `["<id>"] = <time>,` on a
---line of its own, indented.
---@param d table
---@return integer
function Songbook.Bytes(d)
	local n = 64
	for _, set in ipairs(Songbook.SETS) do
		n = n + 16
		for id in pairs(d[set] or {}) do n = n + #tostring(id) + 21 end
	end
	return n
end

---The distinct ids of the songbook, with the time each was last heard or learned.
---@param d table
---@return table<string, number> ids
---@return integer count
function Songbook.Ids(d)
	local out, n = {}, 0
	for _, set in ipairs(Songbook.SETS) do
		for id, t in pairs(d[set] or {}) do
			if out[id] == nil then n = n + 1; out[id] = 0 end
			if (set == "heard" or set == "learned") and t > out[id] then out[id] = t end
		end
	end
	return out, n
end

local function Remove(d, id)
	for _, set in ipairs(Songbook.SETS) do d[set][id] = nil end
end

-- the oldest id among those of `set` that carry none of the marks in `keep`
local function Oldest(d, set, keep)
	local best, bestT
	for id, t in pairs(d[set]) do
		local kept = false
		for _, k in ipairs(keep) do
			if d[k][id] then kept = true; break end
		end
		if not kept and (not bestT or t < bestT or (t == bestT and id < best)) then best, bestT = id, t end
	end
	return best
end

---Keeps the songbook within MAX_IDS and MAX_BYTES: first the pieces only heard go, the oldest first; then the pieces
---learned by heart that are not favourite or muted. The user's marks (muted, favourite) are never dropped here.
---@param d table
---@return integer removed
function Songbook.Trim(d)
	local removed = 0
	while true do
		local _, count = Songbook.Ids(d)
		if count <= Songbook.MAX_IDS and Songbook.Bytes(d) <= Songbook.MAX_BYTES then break end
		local victim = Oldest(d, "heard", { "learned", "favourite", "muted" }) or Oldest(d, "learned", { "favourite", "muted" })
		if not victim then break end
		Remove(d, victim)
		removed = removed + 1
	end
	return removed
end

---Cleans the saved data: unknown fields, ids that are not well formed and times that are not numbers go; a time in the
---future comes back to now (a clock set ahead); then the bounds. Data from a newer version is not touched.
---@return integer dropped
function Songbook:Sanitize()
	local d = self:Data()
	if not d or self.readOnly then
		self:Sync()
		return 0
	end
	local dropped, now = 0, time()
	local known = { version = true }
	for _, set in ipairs(self.SETS) do known[set] = true end
	for key in pairs(d) do
		if not known[key] then
			d[key] = nil
			dropped = dropped + 1
		end
	end
	for _, set in ipairs(self.SETS) do
		local clean = {}
		for id, t in pairs(d[set]) do
			if self.ValidId(id) and IsTime(t) then
				clean[id] = math.min(math.floor(t), now)
			else
				dropped = dropped + 1
			end
		end
		d[set] = clean
	end
	dropped = dropped + self.Trim(d)
	self:Sync()
	return dropped
end

---Tells the engine which pieces are muted (Engine.muted, read by Engine:Eligible).
function Songbook:Sync()
	local d = self:Data()
	Engine.muted = d and next(d.muted) ~= nil and d.muted or nil
end

---------------------------------------------------------------------------
-- Reading the songbook
---------------------------------------------------------------------------
---When the piece was last heard (or learned), nil if the songbook does not have it.
---@param id string
---@return number?
function Songbook:Heard(id)
	local d = self:Data()
	if not d then return nil end
	local h, l = d.heard[id], d.learned[id]
	if h and l then return math.max(h, l) end
	return h or l
end

---@param id string
---@return boolean
function Songbook:IsLearned(id)
	local d = self:Data()
	return d ~= nil and d.learned[id] ~= nil
end

---@param id string
---@return boolean
function Songbook:IsMuted(id)
	local d = self:Data()
	return d ~= nil and d.muted[id] ~= nil
end

---@param id string
---@return boolean
function Songbook:IsFavourite(id)
	local d = self:Data()
	return d ~= nil and d.favourite[id] ~= nil
end

-- the texts of a rule in the language of the texts, or in any language it has
local function TextsOf(p)
	if not p then return nil end
	local list = p.text[NS:TextLang()]
	if list and #list > 0 then return list end
	for _, lang in ipairs(Engine.SortedKeys(p.text)) do
		if #p.text[lang] > 0 then return p.text[lang] end
	end
	return nil
end

---The title of a piece: the first line of its first text (the attribution), without the closing colon. A piece no
---longer in the loaded packs has its id.
---@param id string
---@return string title
---@return boolean present the piece is in a loaded pack
function Songbook:Title(id)
	local list = TextsOf(Engine.byId[id])
	local first = list and list[1] and Engine.VariantText(list[1])
	if type(first) ~= "string" or first == "" then return id, false end
	local line = first:match("^([^\n]*)") or first
	line = line:gsub("[ 	:]+$", "")
	return line ~= "" and line or id, true
end

---The whole text of a piece, as the Journal shows it: the first text with every stanza in place for a song of
---stanzas (#127); placeholders filled for the character when they can be. nil when the piece is not loaded.
---@param id string
---@return string?
function Songbook:FullText(id)
	local p = Engine.byId[id]
	local list = TextsOf(p)
	if not list or not list[1] then return nil end
	local text = Engine.VariantText(list[1])
	if type(text) ~= "string" then return nil end
	if p.kind == "stanzas" then
		local stanzas = {}
		for i = 2, #list do table.insert(stanzas, Engine.VariantText(list[i])) end
		text = text:gsub(Engine.STANZA_MARK:gsub("%p", "%%%0"), function() return table.concat(stanzas, "\n\n") end)
	end
	local ok, rendered = pcall(Engine.Render, Engine, text, NS:TextLang(), NS:BuildContext())
	return Engine.NormalizeSpace(ok and rendered or text)
end

---@class AUSongbookEntry
---@field id string
---@field t number last heard or learned (0 when only marked)
---@field learned boolean
---@field muted boolean
---@field favourite boolean
---@field title string
---@field present boolean the piece is in a loaded pack

---The pieces of the songbook: favourites first, then the most recent.
---@return AUSongbookEntry[]
function Songbook:Entries()
	local d = self:Data()
	local out = {}
	if not d then return out end
	local ids = self.Ids(d)
	for id, t in pairs(ids) do
		local title, present = self:Title(id)
		table.insert(out, { id = id, t = t, learned = d.learned[id] ~= nil, muted = d.muted[id] ~= nil,
			favourite = d.favourite[id] ~= nil, title = title, present = present })
	end
	table.sort(out, function(a, b)
		if a.favourite ~= b.favourite then return a.favourite end
		if a.t ~= b.t then return a.t > b.t end
		return a.id < b.id
	end)
	return out
end

---------------------------------------------------------------------------
-- Writing it
---------------------------------------------------------------------------
---Adds a piece to the songbook (other systems use this: the song of a nemesis's fall, N7). Only a literary piece of a
---loaded pack; its id and the time, never its text.
---@param id string
---@param how? "heard"|"learned" default heard
---@param t? number time() (default now)
---@return boolean ok
---@return string? why off | readonly | unknown | full | bad
function Songbook:Add(id, how, t)
	how = how or "heard"
	if how ~= "heard" and how ~= "learned" then return false, "bad" end
	if not self.ValidId(id) then return false, "bad" end
	local d = self:Data()
	if not d then return false, "off" end
	if self.readOnly then return false, "readonly" end
	if not self:Enabled() then return false, "off" end
	local p = Engine.byId[id]
	if not (p and Engine.IsLiteraryRule(p)) then return false, "unknown" end
	t = IsTime(t) and math.min(math.floor(t), time()) or time()
	d[how][id] = math.max(d[how][id] or 0, t)
	self.Trim(d)
	if d[how][id] == nil then return false, "full" end
	return true
end

---A record shown by the Gateway: a literary piece goes in the songbook as heard (a lore_test twin as its piece).
---@param rec AUPhraseRecord
function Songbook:NoteShown(rec)
	if type(rec) ~= "table" or type(rec.id) ~= "string" then return end
	local p = Engine.byId[rec.id]
	if not (p and Engine.IsLiteraryRule(p)) then return end
	self:Add(p.twinOf or rec.id, "heard")
end

-- a user mark (learned, muted, favourite) on or off; a new mark may need room
local function Mark(self, set, id, on)
	if not self.ValidId(id) then return false, "bad" end
	local d = self:Data()
	if not d then return false, "off" end
	if self.readOnly then return false, "readonly" end
	if on then
		if d[set][id] then return true end
		d[set][id] = time()
		self.Trim(d)
		if d[set][id] == nil then return false, "full" end
		-- a mark with no room left (only marks in the songbook) is not kept
		local _, count = self.Ids(d)
		if count > self.MAX_IDS or self.Bytes(d) > self.MAX_BYTES then
			d[set][id] = nil
			return false, "full"
		end
	else
		d[set][id] = nil
	end
	if set == "muted" then self:Sync() end
	return true
end

---The user marks a piece as learned by heart (or not).
---@param id string
---@param on boolean
---@return boolean ok
---@return string? why
function Songbook:SetLearned(id, on) return Mark(self, "learned", id, on) end

---The user mutes a piece (never chosen again) or lets it speak again.
---@param id string
---@param on boolean
---@return boolean ok
---@return string? why
function Songbook:SetMuted(id, on) return Mark(self, "muted", id, on) end

---The user marks a piece as a favourite (it comes back more often in a recall and heads the list).
---@param id string
---@param on boolean
---@return boolean ok
---@return string? why
function Songbook:SetFavourite(id, on) return Mark(self, "favourite", id, on) end

---Forgets a piece: its id leaves every set.
---@param id string
---@return boolean ok
function Songbook:Forget(id)
	local d = self:Data()
	if not d or self.readOnly or type(id) ~= "string" then return false end
	Remove(d, id)
	self:Sync()
	return true
end

---Forgets every piece.
---@return boolean ok
function Songbook:Reset()
	local d = self:Data()
	if not d or self.readOnly then return false end
	for _, set in ipairs(self.SETS) do d[set] = {} end
	self:Sync()
	return true
end

---------------------------------------------------------------------------
-- The recall (#123): a piece heard before comes back as a memory
---------------------------------------------------------------------------
-- the frames that can bring the piece back: recall for what was heard, reading for what was read, by genre and register
local function FramesFor(p, lang, ctx, now)
	local out = {}
	for _, mode in ipairs({ "recall", "reading" }) do
		for _, f in ipairs(Engine:Eligible(Engine.loreFrames[mode], lang, ctx, nil, now)) do
			if f.genreSet and p.genre and f.genreSet[p.genre] and Engine.StyleResolver:Compatible(f.styles, p.styles) then
				table.insert(out, f)
			end
		end
	end
	return out
end

-- a text the recall can use: more than one line, the first being the attribution
local function HasVerses(list)
	for _, v in ipairs(list or {}) do
		local t = Engine.VariantOk(v) and Engine.VariantText(v)
		if type(t) == "string" and t:find("\n", 1, true) then return true end
	end
	return false
end

---The pieces that may come back now, each with its frames: in the songbook as heard (or learned) at least
---RECALL.minAge seconds ago, not muted, a literary piece of an enabled pack with a text of several lines in the
---language, out of its own cooldown, and with a recall or reading frame of its genre and register.
---@param ctx table
---@return { p: AUPhrase, frames: table[], t: number }[]
function Songbook:Recallable(ctx)
	local out = {}
	local d = self:Data()
	if not d or not self:Enabled() then return out end
	local lang, now = NS:TextLang(), time()
	local mem = NS.cdb.memory
	local disabled = NS.db.disabledPacks or {}
	local minAge = Engine.RECALL.minAge or 0
	for id, t in pairs(self.Ids(d)) do
		local p = Engine.byId[id]
		if t > 0 and now - t >= minAge and not d.muted[id] and p and Engine.IsLiteraryRule(p) and not disabled[p.pack]
			and not (p.cooldown and mem.last[id] and now - mem.last[id] < p.cooldown) and HasVerses(p.text[lang]) then
			local frames = FramesFor(p, lang, ctx, now)
			if #frames > 0 then table.insert(out, { p = p, frames = frames, t = t }) end
		end
	end
	table.sort(out, function(a, b) return a.p.id < b.p.id end)   -- a fixed order: the pick with a seed repeats
	return out
end

---A quick look, with no context, for the Director: could a piece come back at all (the memory on, a piece of a loaded
---pack heard at least RECALL.minAge seconds ago, not muted)? The guard decides with the context.
---@return boolean
function Songbook:HasCandidates()
	if not self:Enabled() then return false end
	local d = self:Data()
	local now, minAge = time(), Engine.RECALL.minAge or 0
	for id, t in pairs(self.Ids(d)) do
		local p = t > 0 and now - t >= minAge and not d.muted[id] and Engine.byId[id]
		if p and p.genre and Engine.IsLiteraryRule(p) then return true end
	end
	return false
end

---May a piece come back now? The guard of lore_recall: the songbook confirms at least one piece heard before, the
---literary forms are open (not "never", not in combat), the inner voice is not silenced.
---@param ctx table
---@return boolean
function Songbook:CanRecall(ctx)
	if not self:Enabled() then return false end
	if NS.Pacing:LiteraryClosed(ctx) then return false end
	if ctx and ctx.closed and ctx.closed[Engine.LITERARY_CATEGORY] then return false end
	local soul = ctx and ctx.soul
	if type(soul) == "table" and soul.innerVoice == "off" then return false end
	return #self:Recallable(ctx) > 0
end

---The picker of lore_recall (Engine.pickers): one piece of the songbook, rendered as usual (variant, stanzas), its first
---line replaced by a recall or reading frame. Same id as the piece (its cooldown, its uses, its variant), the inner
---voice, the literary category: private (D16). The whole text stays within the reading limit.
---@param event string
---@param ctx table
---@param form string
---@return AUPhraseRecord?
function Songbook:Pick(event, ctx, form)
	if form == "emote" then return nil end
	if not self:CanRecall(ctx) then return nil end
	local d = self:Data()
	local lang, now = NS:TextLang(), time()
	local profile = Engine.StyleResolver:Resolve(event, ctx)
	local list = self:Recallable(ctx)
	local items = {}
	local R = Engine.RECALL
	for _, c in ipairs(list) do
		local id = c.p.id
		local w = Engine.Score(c.p, event, #list, nil, ctx, profile, "inner")
		if d.learned[id] then w = w * (R.learned or 1) end
		if d.favourite[id] then w = w * (R.favourite or 1) end
		table.insert(items, { e = c.p, w = w, frames = c.frames })
	end
	local limit = NS.Config.CHAT_LIMITS.READING
	local mem = NS.cdb.memory
	for _ = 1, 6 do
		local it = Engine.WeightedPick(items, event)
		if not it or it.w <= 0 then return nil end
		local p = it.e
		local text, variant
		if p.kind == "stanzas" then
			text, variant = Engine:RenderStanzas(p, lang, ctx)
		else
			text, variant = Engine:RenderPhrase(p, lang, ctx)
		end
		local body = text and text:match("^[^\n]*\n+(.+)$")
		local frame
		if body then
			local st = Engine.NoveltyState()
			local fitems = {}
			for _, f in ipairs(it.frames) do
				local w = Engine.Score(f, "frame:" .. event, #it.frames)
				w = w / (1 + Engine.FRAME_PENALTY * (st.frames[f.id] or 0))
				table.insert(fitems, { e = f, w = w })
			end
			local fit = Engine.WeightedPick(fitems, "frame:" .. event)
			frame = fit and fit.e
			text = frame and Engine:RenderEntry(frame, lang, ctx, body)
			text = text and Engine.NormalizeSpace(text)
			if text and #text > limit then text = nil end
			if text then Engine.Remember("frame:" .. event, frame.id, Engine.KeepFor(#it.frames), frame) end
		else
			text = nil
		end
		if text then
			Engine.Remember(event, p.id, Engine.KeepFor(#items), p)
			if variant and #p.text[lang] > 1 then
				mem.variant = mem.variant or {}
				mem.variant[p.id] = variant
			end
			Engine:NoteLine({ theme = p.theme, motifs = p.motifs, speaker = "inner", frame = frame.id,
				opening = Engine.Opening(Engine.VariantText(frame.text[lang][1])), category = Engine.LITERARY_CATEGORY,
				kind = p.kind })
			return { text = text, speaker = "inner", form = "say", id = p.id, event = event,
				category = Engine.LITERARY_CATEGORY, style = Engine.Tone(p), variant = variant, frame = frame.id,
				kind = p.kind, recall = frame.mode }
		end
		it.w = 0
	end
	return nil
end

Engine:SetPicker(Songbook.EVENT, function(event, ctx, form) return Songbook:Pick(event, ctx, form) end)
-- a "heard before" verse only if the songbook confirms it, whoever asks (the Director, /au event lore_recall)
Engine:SetEventGuard(Songbook.EVENT, "songbook", function(ctx) return Songbook:CanRecall(ctx) end)
NS:SetEventPriority(Songbook.EVENT, "memory")
NS.NarrativeDirector.EVENT_MODULE[Songbook.EVENT] = "memory"

---------------------------------------------------------------------------
-- Text: the command and the listing
---------------------------------------------------------------------------
local WORDS = NS.Keywords.Register("songbook", { list = "list", reset = "reset", open = "open" })

---One line for a piece in the listing of /au songbook list.
---@param e AUSongbookEntry
---@return string
function Songbook:Describe(e)
	local marks = {}
	if e.favourite then table.insert(marks, NS:L("song_mark_favourite")) end
	if e.learned then table.insert(marks, NS:L("song_mark_learned")) end
	if e.muted then table.insert(marks, NS:L("song_mark_muted")) end
	local title = e.present and e.title or NS:L("song_missing", e.id)
	local when = e.t > 0 and NS.LivingMemory.Stamp(e.t) or "-"
	return ("%s  %s%s"):format(title, when, #marks > 0 and (" [" .. table.concat(marks, ", ") .. "]") or "")
end

---Command `/au songbook [list / reset]`: with no argument it opens the Journal on the songbook.
---@param rest string
function Songbook:Command(rest)
	local action = WORDS[NS.Lower(rest or "")]
	if action == nil and (rest or "") == "" then
		if NS.JournalFrame and NS.JournalFrame:Open("songbook") then return end
		action = "list"
	end
	if action == "reset" then
		NS:Print(NS:L(self:Reset() and "song_reset_done" or "song_readonly"))
	elseif action == "list" or action == "open" then
		local list = self:Entries()
		NS:Print(NS:L("song_count", #list))
		for _, e in ipairs(list) do NS:Print("  " .. self:Describe(e)) end
	else
		NS:Print(NS:L("song_help"))
	end
end

function Songbook:OnInit()
	local dropped = self:Sanitize()
	if dropped > 0 then NS.Diagnostics:Error("songbook", ("%d entries dropped or trimmed"):format(dropped)) end
	-- the quiet moments with which the Director offers a recall (Data/Themes.lua, literary.recall.moments)
	for _, ev in ipairs(Engine.RECALL.moments) do
		NS.Director:AddCompanion(ev, self.EVENT, function() return Songbook:HasCandidates() end)
	end
end
