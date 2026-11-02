-- Azeroth Unspoken: the compact form of a regional source (C0b, ADR 0049).
-- A regional folder can give its entries as Lua source in a string (RegisterRegionalPack(key, header, source),
-- RegisterRegionalTexts(key, lang, pack, source)) instead of a builder function. WoW cannot unload an addon, so what
-- a visited area leaves in memory until /reload is that source: Core/Packs.lua cuts it into pieces and keeps each piece
-- encoded with a fixed dictionary, then decodes a piece when the area is built again.
-- The code is a substitution done by string.gsub (C code, fast): the frequent words (with the space before them) and
-- the frequent runs of punctuation and blanks of a source become one or two bytes that never appear in a source (the
-- control characters other than tab, line feed and carriage return). A source that holds such a byte is kept as it is.
-- Decoding gives back the exact source, whatever the dictionary: the dictionary only decides how small the pieces are.
-- The dictionaries are data (Data/Codec.lua for the rules, Codec.lua in each language folder for its texts), written
-- by tools/build_codec.py from the content; a missing dictionary only means pieces kept as they are.
local ADDON, NS = ...
local Codec = {}
NS.Codec = Codec

-- the code bytes: SINGLES stand for a whole token, a byte of INTROS starts a pair whose second byte is one of SECONDS
local SINGLES = { 1, 2, 3, 4, 5, 6, 7, 8, 11, 12 }
local INTROS = { 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 127 }
local SECONDS = {}
for _, b in ipairs(SINGLES) do table.insert(SECONDS, b) end
for _, b in ipairs(INTROS) do table.insert(SECONDS, b) end
for b = 128, 255 do table.insert(SECONDS, b) end
Codec.MAX_TOKENS = #SINGLES + #INTROS * #SECONDS

-- patterns (explicit classes: %w depends on the locale): a word with the space before it, a run of anything else
-- (never a code byte), a code
local WORD = " ?[A-Za-z0-9_\128-\255]+"
local RUN = "[^A-Za-z0-9_\128-\255\1-\8\11\12\14-\31\127]+"
local ANY_CODE = "[\1-\8\11\12\14-\31\127]"
local PAIR = "[\14-\31\127][\1-\8\11\12\14-\31\127\128-\255]"
local SINGLE = "[\1-\8\11\12]"

Codec.dicts = {}   -- [kind] = { e = { [token] = code }, d1 = { [code] = token }, d2 = { [code] = token }, n = tokens }

---Registers the dictionary of a kind of source: "rules", or the short code of a language ("en", "it") for its texts.
---The order of the tokens gives their codes (the first ones the single bytes): tools/build_codec.py writes them by the
---bytes they save. A token with a code byte, or shorter than two bytes, is skipped.
---@param kind string
---@param tokens string[]
function NS:RegisterCodec(kind, tokens)
	if type(kind) ~= "string" or type(tokens) ~= "table" then return end
	if kind ~= "rules" then kind = NS.Engine.LangCode(kind) end
	if not kind then return end
	local d = { e = {}, d1 = {}, d2 = {}, n = 0 }
	for _, t in ipairs(tokens) do
		if type(t) == "string" and #t >= 2 and not t:find(ANY_CODE) and not d.e[t] and d.n < Codec.MAX_TOKENS then
			local k, code = d.n, nil
			if k < #SINGLES then
				code = string.char(SINGLES[k + 1])
				d.d1[code] = t
			else
				k = k - #SINGLES
				code = string.char(INTROS[math.floor(k / #SECONDS) + 1], SECONDS[k % #SECONDS + 1])
				d.d2[code] = t
			end
			d.e[t] = code
			d.n = d.n + 1
		end
	end
	Codec.dicts[kind] = d
end

---The encoded form of a piece of source, or nil when it cannot be encoded (no dictionary for the kind, or the source
---holds a code byte): the caller keeps it as it is.
---@param kind string
---@param s string
---@return string?
function Codec.Encode(kind, s)
	local d = Codec.dicts[kind]
	if not d or s:find(ANY_CODE) then return nil end
	return (s:gsub(WORD, d.e):gsub(RUN, d.e))
end

---The source of an encoded piece (Codec.Encode with the same dictionary).
---@param kind string
---@param s string
---@return string
function Codec.Decode(kind, s)
	local d = Codec.dicts[kind]
	return (s:gsub(PAIR, d.d2):gsub(SINGLE, d.d1))
end
