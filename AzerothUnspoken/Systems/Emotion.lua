-- Azeroth Unspoken: the character's emotional state (R4, #97, ADR 0031, owner decision D8).
-- Ten emotions with an intensity from 0 to 1: serene, happy, determined, curious, worried, tense, furious, melancholic,
-- nostalgic, admiring. Appraisal rules in data (Data/Emotions.lua) raise or lower them when something happens (a
-- death, a victory, a return to a place of a bad memory, an inn, a known player, the weather...); the character's
-- personality changes how much (a stoic character rises more slowly). Each emotion fades with its own half-life,
-- computed on demand from GetTime(): no timer runs.
--
-- What the narrator does with it:
--   - ctx.emotion = { dominant = "worried", worried = 0.42, tense = 0.2 } (only emotions above FLOOR);
--   - the conditions `emotion`, `emotionMin`, `emotionMax` (Engine/RuleEngine.lua);
--   - the weight factor E: a line whose emotion (tag `emo:<emotion>`, or a tag implied in the data such as
--     temperament:cheerful) matches a strong emotion weighs more; one that clashes with it (a cheerful line while
--     worried) weighs much less, never zero;
--   - a register preference for the dominant emotion (StyleResolver modifier "emotion").
-- The module can be switched off (modules.emotion, /au emotion off): then ctx.emotion is nil, E is 1 and nothing is
-- saved, so the narrator behaves exactly as before R4. Engine.R1_COMPAT switches it off too.
-- Saved (ADR 0017): only slow emotions above SAVE_MIN, as a number and time(); never text, never a cause.
local ADDON, NS = ...
local Engine, Traits = NS.Engine, NS.Traits

---@class AUEmotionState ctx.emotion
---@field dominant? string the strongest emotion, if at least DOMINANT_MIN
---@field level? number its intensity

---@class AUEmotionRule an appraisal rule (Data/Emotions.lua)
---@field event string narrative event
---@field when? table conditions on the context, as for a line
---@field gain table<string, number> change per emotion, from -1 to 1 (negative: the emotion eases)

---@class AUEmotion
local Emotion = NS:RegisterModule("emotion")
NS.Emotion = Emotion

Emotion.VERSION = 1              -- shape of AzerothUnspokenCharacterDB.emotion
Emotion.LIST = Engine.EMOTIONS
Emotion.SLOW = 1800              -- half-life (s) from which an emotion is slow and may be saved
Emotion.SAVE_MIN = 0.3           -- a slow emotion is saved only from this intensity
Emotion.FLOOR = 0.05             -- under this an emotion is gone (not in ctx.emotion)
Emotion.DOMINANT_MIN = 0.25      -- the strongest emotion is "dominant" from this intensity
Emotion.FULL = 0.6               -- intensity at which an emotion counts in full in the factor E
Emotion.MATCH = 1.6              -- E of a line whose emotion is at FULL
Emotion.CLASH_MIN = 0.15         -- E of a line whose emotion clashes with one at FULL
Emotion.STYLE_MIN = 0.35         -- the dominant emotion moves the registers from this intensity
Emotion.GAIN_MIN, Emotion.GAIN_MAX = 0.25, 2   -- limits of the personality's effect on a rise

-- data (Data/Emotions.lua through Emotion:Register)
Emotion.halfLife = {}            -- [emotion] = seconds
Emotion.appraisals = {}          -- [event] = AUEmotionRule[]
Emotion.modulation = {}          -- [emotion] = { [axis] = coefficient }: rise x (1 + sum coef * (axis - 50) / 50)
Emotion.clash = {}               -- [emotion] = { emotions a line of this emotion clashes with }
Emotion.implied = {}             -- [tag of a line] = emotion the line carries without an emo: tag
Emotion.styles = {}              -- [emotion] = { registers the narrator prefers while it dominates }

-- the state: value v[e] at time t[e] (GetTime); the last cause, for /au debug only (never saved)
Emotion.v, Emotion.t = {}, {}
Emotion.cause = nil

local function Now() return GetTime and GetTime() or 0 end
local function IsNumber(x) return type(x) == "number" and x == x and x > -math.huge and x < math.huge end

---@return boolean
function Emotion:Enabled()
	return NS.db ~= nil and NS.db.modules.emotion ~= false and not Engine.R1_COMPAT
end

---------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------
---Adds emotion data: half-lives, appraisal rules, personality modulation, clashes, implied tags, registers. Several
---calls add up (a pack can add rules); invalid entries are skipped and reported to diagnostics.
---@param def { halfLife?: table, appraisals?: AUEmotionRule[], modulation?: table, clash?: table, implied?: table, styles?: table }
---@return integer bad entries skipped
function Emotion:Register(def)
	local bad = 0
	local valid = Engine.EMOTION_SET
	local function Skip(what)
		bad = bad + 1
		if NS.Diagnostics then NS.Diagnostics:Error("emotion:data", what) end
	end
	for e, s in pairs(def.halfLife or {}) do
		if valid[e] and IsNumber(s) and s > 0 then self.halfLife[e] = s else Skip("halfLife " .. tostring(e)) end
	end
	for i, rule in ipairs(def.appraisals or {}) do
		local ok = type(rule) == "table" and type(rule.event) == "string" and type(rule.gain) == "table"
			and (rule.when == nil or (type(rule.when) == "table" and #Engine.CheckConditions(rule.when) == 0))
		if ok then
			for e, g in pairs(rule.gain) do
				if not (valid[e] and IsNumber(g) and g >= -1 and g <= 1) then ok = false end
			end
		end
		if ok then
			self.appraisals[rule.event] = self.appraisals[rule.event] or {}
			table.insert(self.appraisals[rule.event], rule)
		else
			Skip("appraisal " .. i .. " " .. tostring(type(rule) == "table" and rule.event))
		end
	end
	for e, map in pairs(def.modulation or {}) do
		if valid[e] and type(map) == "table" then
			self.modulation[e] = self.modulation[e] or {}
			for axis, c in pairs(map) do
				local d = Traits.defs[axis]
				if d and d.kind == "scale" and IsNumber(c) then self.modulation[e][axis] = c else Skip("modulation " .. e .. "." .. tostring(axis)) end
			end
		else
			Skip("modulation " .. tostring(e))
		end
	end
	for e, list in pairs(def.clash or {}) do
		if valid[e] and type(list) == "table" then
			local clean = {}
			for _, o in ipairs(list) do if valid[o] and o ~= e then table.insert(clean, o) end end
			self.clash[e] = clean
		else
			Skip("clash " .. tostring(e))
		end
	end
	for tag, e in pairs(def.implied or {}) do
		if type(tag) == "string" and valid[e] then self.implied[tag] = e else Skip("implied " .. tostring(tag)) end
	end
	for e, list in pairs(def.styles or {}) do
		if valid[e] and type(list) == "table" then self.styles[e] = list else Skip("styles " .. tostring(e)) end
	end
	return bad
end

-- `emo:<emotion>` is a tag of a line the trait model does not know: the validator accepts it if the emotion exists
Traits.foreign.emo = function(value)
	return not Engine.EMOTION_SET[value] and ("emozione '" .. tostring(value) .. "' sconosciuta") or nil
end

---------------------------------------------------------------------------
-- State
---------------------------------------------------------------------------
---Intensity of an emotion now (decayed from its last change).
---@param e string
---@param now? number GetTime()
---@return number
function Emotion:Value(e, now)
	local v = self.v[e]
	if not v or v <= 0 then return 0 end
	local half = self.halfLife[e] or 600
	return v * 0.5 ^ (math.max(0, (now or Now()) - (self.t[e] or 0)) / half)
end

---How much the personality changes a rise of an emotion (1 with a neutral profile).
---@param e string
---@param soul? AUTraits
---@return number
function Emotion:Gain(e, soul)
	local map = self.modulation[e]
	if not map then return 1 end
	soul = soul or (NS.Personality and NS.Personality:Effective()) or {}
	local f = 1
	for axis, c in pairs(map) do
		local x = soul[axis]
		if type(x) == "number" then f = f + c * (x - 50) / 50 end
	end
	return math.max(self.GAIN_MIN, math.min(self.GAIN_MAX, f))
end

---Changes an emotion by `delta` (a rise is modulated by the personality, an easing is not).
---@param e string
---@param delta number
---@param now? number
---@param soul? AUTraits
function Emotion:Add(e, delta, now, soul)
	if not Engine.EMOTION_SET[e] or not IsNumber(delta) then return end
	now = now or Now()
	if delta > 0 then delta = delta * self:Gain(e, soul) end
	local v = math.max(0, math.min(1, self:Value(e, now) + delta))
	if v < self.FLOOR then v = 0 end
	self.v[e], self.t[e] = v > 0 and v or nil, v > 0 and now or nil
end

---The appraisal of an event: its rules (with conditions on the context) change the emotions. Called by the Director
---for every spontaneous event, before the context of its line is built, so the line already feels it.
---@param event string
---@param extra? table values for the context, as for Director:Offer
---@param ctx? table the context, if already built
---@return boolean changed
function Emotion:Appraise(event, extra, ctx)
	if not self:Enabled() then return false end
	local rules = self.appraisals[event]
	if not rules then return false end
	local now, soul, changed = Now(), NS.Personality and NS.Personality:Effective() or {}, false
	for _, rule in ipairs(rules) do
		if rule.when and not ctx then ctx = NS:BuildContext(extra) end
		if not rule.when or Engine.SafeMatch(rule.when, ctx) then
			for e, g in pairs(rule.gain) do self:Add(e, g, now, soul) end
			changed = true
		end
	end
	if changed then
		self.cause = { event = event, at = now }
		self:Persist()
	end
	return changed
end

---The context of the emotions (ctx.emotion). nil if the module is off.
---@return AUEmotionState?
function Emotion:Context()
	if not self:Enabled() then return nil end
	local now, out, best, bestV = Now(), {}, nil, 0
	for _, e in ipairs(self.LIST) do
		local v = self.v[e] and self:Value(e, now) or 0
		if v >= self.FLOOR then
			out[e] = v
			if v > bestV then best, bestV = e, v end
		end
	end
	if best and bestV >= self.DOMINANT_MIN then out.dominant, out.level = best, bestV end
	return out
end

---Clears the state (and what is saved). Nothing happens while the saved data is read-only (newer version).
function Emotion:Reset()
	local data = self:Data()
	if self.readOnly then return end
	self.v, self.t, self.cause = {}, {}, nil
	if data then data.values = {} end
end

---------------------------------------------------------------------------
-- Saved data: AzerothUnspokenCharacterDB.emotion = { version, values = { [emotion] = { v, at } } }
---------------------------------------------------------------------------
Emotion.readOnly = false         -- data written by a newer version: it is read from a copy and never changed (#154)
Emotion.copy, Emotion.copyOf = nil, nil

---The saved record. From a newer version it is a copy (ADR 0006 §5): the file keeps what it has, `readOnly` is set
---and Persist and Reset do nothing.
---@return table?
function Emotion:Data()
	local c = NS.cdb
	if not c then return nil end
	if type(c.emotion) ~= "table" then c.emotion = { version = self.VERSION, values = {} } end
	local d = c.emotion
	local v = d.version
	if type(v) == "number" and v > self.VERSION and v < math.huge then
		if self.copyOf ~= d then
			NS.Diagnostics:Error("emotion", ("emotion.version %s > %d: read-only"):format(tostring(v), self.VERSION))
			self.copyOf, self.copy = d, NS.Config.DeepCopy(d)
		end
		self.readOnly = true
		if type(self.copy.values) ~= "table" then self.copy.values = {} end
		return self.copy
	end
	self.readOnly, self.copyOf, self.copy = false, nil, nil
	if type(d.values) ~= "table" then d.values = {} end
	d.version = self.VERSION
	return d
end

---Saves the slow, strong emotions as a number and time() (owner decision D8). Called after every appraisal: the
---saved moment is the moment of the value, so the decay continues across a logout.
function Emotion:Persist()
	local d = self:Data()
	if not d or self.readOnly then return end
	local values, now, wall = {}, Now(), time()
	if self:Enabled() then
		for _, e in ipairs(self.LIST) do
			if (self.halfLife[e] or 0) >= self.SLOW then
				local v = self:Value(e, now)
				if v >= self.SAVE_MIN then values[e] = { v = math.floor(v * 1000 + 0.5) / 1000, at = wall } end
			end
		end
	end
	d.values = values
end

---Reads the saved emotions, decayed by the time spent away. Malformed entries are dropped; what is kept is rebuilt as
---`{ v, at }` with v inside 0-1 and a time that is not in the future (a clock set ahead and then corrected would give
---no decay at all), so nothing else a damaged file held survives (#156).
---@return integer dropped
---@return integer clamped values or times brought back inside their limits
function Emotion:Load()
	local d = self:Data()
	if not d then return 0, 0 end
	local dropped, clamped, kept, now, wall = 0, 0, {}, Now(), time()
	self.v, self.t = {}, {}
	for e, rec in pairs(d.values) do
		local half = Engine.EMOTION_SET[e] and self.halfLife[e]
		if half and half >= self.SLOW and type(rec) == "table" and IsNumber(rec.v) and IsNumber(rec.at) then
			local value, at = math.max(0, math.min(1, rec.v)), rec.at
			if value ~= rec.v then clamped = clamped + 1 end
			if at > wall then at, clamped = wall, clamped + 1 end
			local v = value * 0.5 ^ ((wall - at) / half)
			if v >= self.FLOOR and self:Enabled() then
				self.v[e], self.t[e] = v, now
				kept[e] = { v = value, at = at }
			end
		else
			dropped = dropped + 1
		end
	end
	if not self.readOnly then d.values = self:Enabled() and kept or {} end
	return dropped, clamped
end

---------------------------------------------------------------------------
-- The narrator: factor E, registers
---------------------------------------------------------------------------
-- the emotions a line carries, remembered per tag set (the tag sets of the lines are shared and do not change, #84)
local impliedOf = setmetatable({}, { __mode = "k" })

local function Implied(tags)
	local hit = impliedOf[tags]
	if hit ~= nil then return hit end
	local list = false
	for tag in pairs(tags) do
		local e = tag:match("^emo:([a-z]+)$") or Emotion.implied[tag]
		if e and Engine.EMOTION_SET[e] then
			list = list or {}
			table.insert(list, e)
		end
	end
	impliedOf[tags] = list
	return list
end
Emotion.Implied = Implied

---Factor E of a line (never 0). 1 without a dominant emotion, or for a line that carries no emotion.
---@param entry AUPhrase
---@param ctx table
---@return number
function Emotion.Factor(entry, ctx)
	local emo = ctx and ctx.emotion
	if type(emo) ~= "table" or not emo.dominant or not entry.tags then return 1 end
	local list = Implied(entry.tags)
	if not list then return 1 end
	local f, full = 1, Emotion.FULL
	for _, e in ipairs(list) do
		f = f * (1 + (Emotion.MATCH - 1) * math.min(1, (emo[e] or 0) / full))
		local worst = 0
		for _, o in ipairs(Emotion.clash[e] or {}) do
			local s = math.min(1, (emo[o] or 0) / full)
			if s > worst then worst = s end
		end
		f = f * (1 - (1 - Emotion.CLASH_MIN) * worst)
	end
	return f
end

Engine:SetWeightHook("E", "emotion", Emotion.Factor, true)   -- pure: only the tags of the line (#157)

NS.StyleResolver:SetModifier("emotion", function(profile, ctx)
	local emo = ctx and ctx.emotion
	if type(emo) ~= "table" or not emo.dominant or (emo.level or 0) < Emotion.STYLE_MIN then return end
	for _, style in ipairs(Emotion.styles[emo.dominant] or {}) do NS.StyleResolver.Prefer(profile, style) end
end)

---------------------------------------------------------------------------
-- Text: /au debug and /au emotion
---------------------------------------------------------------------------
---One line for /au debug: on/off, the emotions above FLOOR, the dominant one, the last cause, what is saved.
---@return string
function Emotion:Status()
	if not self:Enabled() then return "off" end
	local ctx, parts = self:Context(), {}
	for _, e in ipairs(self.LIST) do
		if ctx[e] then table.insert(parts, ("%s %.2f"):format(e, ctx[e])) end
	end
	local saved = {}
	local d = self:Data()
	for _, e in ipairs(self.LIST) do
		if d and d.values[e] then table.insert(saved, e) end
	end
	local cause = self.cause and ("%s %ds ago"):format(self.cause.event, math.floor(Now() - self.cause.at)) or "-"
	return ("on; %s; dominant %s; last cause %s; saved %s"):format(#parts > 0 and table.concat(parts, ", ") or "calm",
		ctx.dominant or "-", cause, #saved > 0 and table.concat(saved, ", ") or "-")
end

local WORDS = NS.Keywords.Register("emotion", { on = "on", off = "off", reset = "reset" })

---Command `/au emotion [on|off|reset]`: with no argument it shows the state.
---@param rest string
function Emotion:Command(rest)
	local action = WORDS[NS.Lower(rest or "")]
	if action == "on" or action == "off" then
		NS.db.modules.emotion = action == "on"
		if action == "off" then self:Reset() end
		NS:Print(NS:L(action == "on" and "emotion_on" or "emotion_off"))
	elseif action == "reset" then
		self:Data()
		if self.readOnly then
			NS:Print(NS:L("emotion_readonly"))
		else
			self:Reset()
			NS:Print(NS:L("emotion_reset"))
		end
	end
	NS:Print(NS:L("emotion_state", self:Status()))
end

function Emotion:OnInit()
	local dropped, clamped = self:Load()
	if dropped > 0 then NS.Diagnostics:Error("emotion", ("%d voci malformate scartate"):format(dropped)) end
	if clamped > 0 then NS.Diagnostics:Error("emotion", ("%d values or times brought back inside their limits"):format(clamped)) end
end
