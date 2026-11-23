-- Tests of UI/Assets.lua (UI-ECO step UI-1): the table of textures and fonts loads in the mock client and answers
-- AllPaths and IconCoords. Nothing is drawn: the files are checked offline by Tests/check_media.py, and loading them
-- in the client has not been tried.
local NS = ...
local A = NS.Assets

T.run("the Assets table exists and every path points into the addon's Media folder", function()
	T.ok(A ~= nil, "NS.Assets exists")
	T.eq(A.MEDIA, "Interface\\AddOns\\AzerothUnspoken\\Media\\", "the media folder")
	local paths = A.AllPaths()
	T.ok(#paths >= 21, "at least the 15 textures and the 6 fonts: " .. #paths)
	for _, p in ipairs(paths) do
		T.ok(p:sub(1, #A.MEDIA) == A.MEDIA, "path under Media: " .. p)
		T.ok(p:find("%.tga$") or p:find("%.ttf$"), "a texture or a font: " .. p)
	end
	for i = 2, #paths do T.ok(paths[i - 1] < paths[i], "sorted, no duplicates: " .. paths[i]) end
end)

T.run("every shape that is 9-sliced names its margin and every font has a game font to fall back to", function()
	for _, name in ipairs({ "rr_fill_8", "rr_fill_12", "rr_fill_18", "rr_ring_8", "rr_ring_12", "rr_ring_18", "shadow",
			"glow_s", "glow_l", "pill" }) do
		local t = A.textures[name]
		T.ok(t and t.slice and t.slice > 0 and t.slice * 2 <= math.min(t.w, t.h), name .. ": slice margin leaves a centre")
	end
	T.eq(A.textures.rr_fill_12.slice, 12, "rr_fill_12 margin equals its radius")
	for name, f in pairs(A.fonts) do
		T.ok(f.path and f.fallback, name .. ": a file and a fallback")
	end
	T.eq(A.fonts.display.fallback, "FRIZQT", "the title font falls back to the game's title font")
end)

local function Cell(name, l, r, t, b)
	local L, R, Tp, B = A.IconCoords(name)
	T.ok(L == l and R == r and Tp == t and B == b, name .. ": cell " .. tostring(L) .. "," .. tostring(R) .. "," ..
		tostring(Tp) .. "," .. tostring(B))
end

T.run("IconCoords gives the cell of an icon of the 16-per-row sheet", function()
	T.eq(#A.icons, 44, "44 icons")
	Cell("chevron", 0, 1 / 16, 0, 1 / 16)
	Cell("info", 0, 1 / 16, 1 / 16, 2 / 16)
	Cell("scroll", 11 / 16, 12 / 16, 2 / 16, 3 / 16)
	T.eq(A.IconCoords("no_such_icon"), nil, "an unknown icon has no cell")
end)
