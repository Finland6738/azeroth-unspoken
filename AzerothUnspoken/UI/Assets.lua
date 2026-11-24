-- Assets: the one table of every texture and font file of the addon (docs/specs/ui-style.md, FDCP §3, §4, §7). Lua 5.1.
-- Tests/check_media.py checks that every path below exists in Media/ and that every file of Media/ is listed here.
-- The shapes are white: the theme tints them (UI/Theme.lua, step UI-2). `slice` is the 9-slice margin in texels. The two
-- logos are full colour and are never tinted. Nothing uses this table yet (step UI-1): the widgets arrive in UI-2 and UI-3.
local ADDON_NAME, NS = ...
NS = NS or {}

local Assets = {}
NS.Assets = Assets

local MEDIA = "Interface\\AddOns\\" .. ADDON_NAME .. "\\Media\\"
Assets.MEDIA = MEDIA

Assets.textures = {
	rr_fill_8  = { path = MEDIA .. "rr_fill_8.tga",  w = 64,  h = 64,  slice = 8 },
	rr_fill_12 = { path = MEDIA .. "rr_fill_12.tga", w = 64,  h = 64,  slice = 12 },
	rr_fill_18 = { path = MEDIA .. "rr_fill_18.tga", w = 64,  h = 64,  slice = 18 },
	rr_ring_8  = { path = MEDIA .. "rr_ring_8.tga",  w = 64,  h = 64,  slice = 8 },
	rr_ring_12 = { path = MEDIA .. "rr_ring_12.tga", w = 64,  h = 64,  slice = 12 },
	rr_ring_18 = { path = MEDIA .. "rr_ring_18.tga", w = 64,  h = 64,  slice = 18 },
	shadow     = { path = MEDIA .. "shadow.tga",     w = 128, h = 128, slice = 48 },
	glow_s     = { path = MEDIA .. "glow_s.tga",     w = 128, h = 128, slice = 48 },
	glow_l     = { path = MEDIA .. "glow_l.tga",     w = 128, h = 128, slice = 56 },
	pill       = { path = MEDIA .. "pill.tga",       w = 64,  h = 32,  slice = 16 },
	circle     = { path = MEDIA .. "circle.tga",     w = 64,  h = 64 },
	blob_radial = { path = MEDIA .. "blob_radial.tga", w = 128, h = 128 },
	icons      = { path = MEDIA .. "icons.tga",      w = 256, h = 256, cell = 16 },
	-- the addon's own logo (assets/logo-source.webp), cut round, full colour
	logo_256   = { path = MEDIA .. "logo_256.tga",   w = 256, h = 256 },
	logo_64    = { path = MEDIA .. "logo_64.tga",    w = 64,  h = 64 },
	-- the NEBULA community logo (assets/nebula/): the dark-theme art for Nebula, the light-theme art for Aurora; full colour,
	-- never tinted, used with its owner's permission (docs/third-party.md); shown on Settings > Info
	nebula_dark_256  = { path = MEDIA .. "nebula_dark_256.tga",  w = 256, h = 256 },
	nebula_light_256 = { path = MEDIA .. "nebula_light_256.tga", w = 256, h = 256 },
}

-- Cells of the icon sheet, in the order of tools/make_media.py (16 per row).
-- 44 icons, drawn for this addon (docs/third-party.md): FDCP's 40, then heart, quill, chat, scroll.
Assets.icons = { "chevron", "check", "cross", "dashed", "skull", "shield", "heal", "sword", "star", "gear", "arrow_up",
	"arrow_down", "lock", "eye", "dot", "plus",
	"info", "warn", "search", "filter", "copy", "trash", "edit", "calendar", "clock", "user", "users", "crown",
	"coin", "refresh", "download", "upload",
	"bell", "flag", "minus", "gem", "bag", "book", "link", "arrow_left",
	"heart", "quill", "chat", "scroll" }

-- Fonts. Orbitron ships whole (it declares a Reserved Font Name): it is used for the title only, in capitals, and has
-- no middle dot or arrow. `fallback` is the game font used when SetFont fails or the user chose the game fonts.
local FONTS = MEDIA .. "Fonts\\"
Assets.fonts = {
	display      = { path = FONTS .. "Orbitron-Bold.ttf",        fallback = "FRIZQT" },
	text         = { path = FONTS .. "Outfit-Regular.ttf",       fallback = "STANDARD" },
	textMedium   = { path = FONTS .. "Outfit-Medium.ttf",        fallback = "STANDARD" },
	textSemiBold = { path = FONTS .. "Outfit-SemiBold.ttf",      fallback = "STANDARD" },
	mono         = { path = FONTS .. "JetBrainsMono-Regular.ttf", fallback = "STANDARD" },
	monoMedium   = { path = FONTS .. "JetBrainsMono-Medium.ttf", fallback = "STANDARD" },
}

-- Every file path of the table, for the offline check and the probes.
function Assets.AllPaths()
	local out = {}
	for _, t in pairs(Assets.textures) do out[#out + 1] = t.path end
	for _, f in pairs(Assets.fonts) do out[#out + 1] = f.path end
	table.sort(out)
	return out
end

-- Texture coordinates of an icon of the sheet: left, right, top, bottom.
function Assets.IconCoords(name)
	for i, n in ipairs(Assets.icons) do
		if n == name then
			local sheet = Assets.textures.icons
			local per = sheet.w / sheet.cell
			local col, row = (i - 1) % per, math.floor((i - 1) / per)
			local s = sheet.cell / sheet.w
			return col * s, (col + 1) * s, row * s, (row + 1) * s
		end
	end
end
