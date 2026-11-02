-- Azeroth Unspoken: verses pack, the `lore_test` twins (step L0, #115). Each piece of Registry.lua gets a twin
-- `versi.test.<key>` on the manual event `lore_test`: the same voice, registers, tags and literary metadata (so a topic
-- the player avoids stays avoided), no other condition, no cooldown, and the same texts. The twins have their own ids,
-- so trying a piece by hand does not spend the real one's cooldown. They are made here, from what the pack registered,
-- so that the archive keeps only the pieces (tools/archive reads Registry.lua and the texts, never this file).
local AU = AzerothUnspoken
local Engine = AU.Engine
local pack = Engine.packs.versi
if not pack then return end

local pieces = {}
for _, id in ipairs(pack.ids or {}) do
	if not id:find("^versi%.test%.") then table.insert(pieces, id) end
end
for _, id in ipairs(pieces) do
	local p = Engine.byId[id]
	local twin = p and Engine:AddEntry(pack, "versi.test." .. id:sub(#"versi." + 1), {
		event = "lore_test", speaker = p.speaker, category = p.category, styles = p.styles,
		depth = p.depthList or (p.depth and Engine.SortedKeys(p.depth)), tags = Engine.SortedKeys(p.tags),
		genre = p.genre, purpose = p.purpose, origin = p.origin, kind = p.kind, show = p.show,
		conditions = { combat = false },
	})
	-- the same lists of variants (read only): a song of stanzas keeps its frame and its stanzas in their order
	if twin then
		for lang, list in pairs(p.text) do twin.text[lang] = list end
		-- #122: trying a twin by hand notes its piece in the songbook, never the twin
		twin.twinOf = id
	end
end
