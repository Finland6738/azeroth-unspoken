-- Theme: the tokens of docs/specs/ui-style.md (FDCP §2) in two themes, the registry of tinted regions, font objects, the
-- Px() helper and the 9-slice shapes (UI-ECO step UI-2, ADR 0058). Lua 5.1; UI only, no game data. Adapted from the
-- sister addon's UI/Theme.lua: the token names and values are the same; there is no third theme.
-- * Every texture is white; a region that shows a token registers itself (Theme.Tint / Fill / Text / Call ...) and
--   Theme.Apply recolours all of them without /reload. The registry has weak keys: a region that is gone costs nothing
--   (the functions given to Theme.Call must not capture the region they are registered for: they receive it as argument).
-- * A font that fails to load falls back to the game's font; the setting "font: game" forces the fallback.
-- * The four personal settings (Core/Config.lua, account): ui.theme, ui.neon, ui.animations, ui.fontSource.
-- Nothing here has run in the game client: SetFont with the bundled fonts, the 9-slice shapes, the ADD glows and the
-- gradients are predictions until the owner tries them.
local ADDON_NAME, NS = ...
NS = NS or {}

local Theme = NS.RegisterModule and NS:RegisterModule("theme") or {}
NS.Theme = Theme

local Assets = NS.Assets
local Compat = NS.Compat

-- --- tokens ------------------------------------------------------------------------------------------------------------

local function hex(s)
	return { tonumber(s:sub(2, 3), 16) / 255, tonumber(s:sub(4, 5), 16) / 255, tonumber(s:sub(6, 7), 16) / 255, 1 }
end
local function rgba(r, g, b, a) return { r / 255, g / 255, b / 255, a } end

-- Token names, in the order of the spec's table. Every theme defines every one of them (the tests check the parity).
-- The first 27 are the sister addon's, identical on purpose. The last four are this addon's only addition (UI-4, spec
-- section 2.3): one colour per voice of the narrator (narrator, inner voice, character, NPC), chosen to differ in lightness as
-- well as in hue and to keep 4.5:1 on the narrator's surface (Tests/TestLayout.lua). UI-8 compares the mockup tokens with
-- these, so a change here is a deliberate one.
Theme.TOKENS = { "bg", "surface-1", "surface-2", "surface-3", "raised", "border-subtle", "border", "border-strong",
	"text-1", "text-2", "text-3", "on-accent", "accent", "accent-hover", "accent-text", "accent-2", "neon", "neon-core",
	"ok", "warn", "err", "highlight", "scrim", "grad-1", "grad-2", "grad-3", "grad-4",
	"voice-narrator", "voice-inner", "voice-character", "voice-npc" }
Theme.VOICE_TOKENS = { narrator = "voice-narrator", inner = "voice-inner", character = "voice-character", npc = "voice-npc" }

Theme.themes = {
	nebula = {
		name = "Nebula", dark = true,
		bg = hex("#0B0612"), ["surface-1"] = hex("#110A1A"), ["surface-2"] = hex("#170F22"), ["surface-3"] = hex("#1E142C"),
		raised = hex("#2A1D3B"),
		["border-subtle"] = rgba(243, 238, 247, .08), border = rgba(243, 238, 247, .14), ["border-strong"] = rgba(243, 238, 247, .26),
		["text-1"] = hex("#F3EEF7"), ["text-2"] = hex("#C3B8D1"), ["text-3"] = hex("#9A8FAB"),
		["on-accent"] = hex("#1A0710"), accent = hex("#FC7E46"), ["accent-hover"] = hex("#FDA877"), ["accent-text"] = hex("#FC8C46"),
		["accent-2"] = hex("#EE4662"), neon = hex("#C45BC4"), ["neon-core"] = hex("#9A2A9A"),
		ok = hex("#46C28F"), warn = hex("#F2B33D"), err = hex("#FF6369"),
		highlight = rgba(255, 255, 255, .06), scrim = rgba(5, 2, 10, .72),
		["grad-1"] = hex("#FC8C46"), ["grad-2"] = hex("#EE4662"), ["grad-3"] = hex("#9A2A9A"), ["grad-4"] = hex("#702AA8"),
			-- the voices (light on the dark surface; Character and NPC differ in lightness 1.9:1, for a protanope)
			["voice-narrator"] = hex("#C4B0FF"), ["voice-inner"] = hex("#7FD4FF"), ["voice-character"] = hex("#FFE08A"), ["voice-npc"] = hex("#5BBF66"),
	},
	aurora = {
		name = "Aurora", dark = false,
		bg = hex("#F5F8FA"), ["surface-1"] = hex("#FFFFFF"), ["surface-2"] = hex("#EAF0F4"), ["surface-3"] = hex("#E1E9EF"),
		raised = hex("#FFFFFF"),
		["border-subtle"] = rgba(11, 27, 43, .07), border = rgba(11, 27, 43, .13), ["border-strong"] = rgba(11, 27, 43, .24),
		["text-1"] = hex("#0B1B2B"), ["text-2"] = hex("#3C4E60"), ["text-3"] = hex("#526476"),
		["on-accent"] = hex("#FFFFFF"), accent = hex("#0054B6"), ["accent-hover"] = hex("#003F8A"), ["accent-text"] = hex("#0054B6"),
		["accent-2"] = hex("#00766C"), neon = hex("#008F84"), ["neon-core"] = hex("#009A9A"),   -- the site's #00A89A darkened to 3:1 on the light surface
		ok = hex("#1B7A50"), warn = hex("#8F5B00"), err = hex("#C0262D"),
		highlight = rgba(255, 255, 255, .6), scrim = rgba(11, 27, 43, .45),
		["grad-1"] = hex("#0054B6"), ["grad-2"] = hex("#007EA8"), ["grad-3"] = hex("#00A89A"), ["grad-4"] = hex("#70C446"),
			-- the voices (dark on the light surface; Character and NPC differ in lightness 1.9:1, for a protanope)
			["voice-narrator"] = hex("#4B2BB3"), ["voice-inner"] = hex("#005F8F"), ["voice-character"] = hex("#935E00"), ["voice-npc"] = hex("#0E5A28"),
	},
}

Theme.ORDER = { "nebula", "aurora" }   -- the same ids as Config.THEMES (a test compares them)
Theme.DEFAULT = "nebula"

function Theme.Has(id) return Theme.themes[id] ~= nil end
function Theme.List() return Theme.ORDER end
function Theme.Name(id) return Theme.themes[id] and Theme.themes[id].name or id end

local current = Theme.DEFAULT
function Theme.Current() return current end
function Theme.IsDark() return Theme.themes[current].dark end

-- The colour of a token in the current theme (or of `themeId`): r, g, b, a. An unknown token is magenta, so a typo shows.
function Theme.Color(token, themeId)
	local c = (Theme.themes[themeId or current] or Theme.themes[Theme.DEFAULT])[token]
	if not c then return 1, 0, 1, 1 end
	return c[1], c[2], c[3], c[4]
end

-- --- contrast (WCAG 2.1) -----------------------------------------------------------------------------------------------

local function channel(v)
	if v <= 0.03928 then return v / 12.92 end
	return ((v + 0.055) / 1.055) ^ 2.4
end

-- Relative luminance of an opaque colour {r, g, b} (0-1).
function Theme.Luminance(c)
	return 0.2126 * channel(c[1]) + 0.7152 * channel(c[2]) + 0.0722 * channel(c[3])
end

-- A colour with alpha laid over an opaque one: {r, g, b, 1}.
function Theme.Over(fg, bg)
	local a = fg[4] or 1
	return { fg[1] * a + bg[1] * (1 - a), fg[2] * a + bg[2] * (1 - a), fg[3] * a + bg[3] * (1 - a), 1 }
end

-- The contrast ratio of two opaque colours, 1 to 21.
function Theme.Contrast(a, b)
	local la, lb = Theme.Luminance(a), Theme.Luminance(b)
	if la < lb then la, lb = lb, la end
	return (la + 0.05) / (lb + 0.05)
end

-- --- the registry of tinted regions -----------------------------------------------------------------------------------

local function report(what, err)
	if NS.Diagnostics and NS.Diagnostics.Error then NS.Diagnostics:Error("theme", what .. ": " .. tostring(err):sub(1, 80)) end
end

-- region -> list of { kind, token, ... }. Weak keys: a destroyed or collected region drops out by itself.
local registry = setmetatable({}, { __mode = "k" })

-- Text in the colour of a class stays legible: the class colour is used only when it keeps 4.5:1 on the lightest surface of the
-- dark theme (`raised`); otherwise, and always in the light theme, the text is `text-1` (the square next to it carries the colour).
local CLASS_MIN_CONTRAST = 4.5

local function classColour(classFile)
	local r, g, b
	if Compat and Compat.ClassColor then r, g, b = Compat:ClassColor(classFile) end
	if not r then return nil end
	if not Theme.IsDark() then return nil end
	local rr, gg, bb = Theme.Color("raised")
	if Theme.Contrast({ r, g, b, 1 }, { rr, gg, bb, 1 }) < CLASS_MIN_CONTRAST then return nil end
	return r, g, b
end

-- The colour of a class for a coloured mark (a square, a bar): the class colour whatever the theme, or nil when the client does not say.
function Theme.ClassColor(classFile)
	if not (Compat and Compat.ClassColor) then return nil end
	return Compat:ClassColor(classFile)
end

local function applyOne(region, entry)
	local kind = entry.kind
	if kind == "vertex" then
		local r, g, b, a = Theme.Color(entry.token)
		region:SetVertexColor(r, g, b, (a or 1) * (entry.alpha or 1))
	elseif kind == "color" then
		local r, g, b, a = Theme.Color(entry.token)
		region:SetColorTexture(r, g, b, (a or 1) * (entry.alpha or 1))
	elseif kind == "text" then
		local r, g, b, a = Theme.Color(entry.token)
		region:SetTextColor(r, g, b, a or 1)
	elseif kind == "rgb" then
		region:SetTextColor(entry.r, entry.g, entry.b, 1)   -- a colour of the game (item quality), not of a theme
	elseif kind == "class" then
		local r, g, b = classColour(entry.class)
		if r then
			region:SetTextColor(r, g, b, 1)
		else
			local tr, tg, tb, ta = Theme.Color("text-1")
			region:SetTextColor(tr, tg, tb, ta or 1)
		end
	elseif kind == "fn" then
		entry.fn(region, current)
	end
end

-- The colour of a text is one thing: a token ("text"), a class colour ("class") or a game colour ("rgb"); setting one
-- replaces the others, so a pooled row that is filled again never keeps the colour of its previous data.
local TEXT_COLOUR = { text = true, class = true, rgb = true }

-- applies one entry; a failing one is reported to the diagnostics and never stops the caller
local function applySafely(region, entry)
	local ok, err = pcall(applyOne, region, entry)
	if not ok then report("apply", err) end
end

local function add(region, entry)
	local list = registry[region]
	if not list then list = {}; registry[region] = list end
	-- one entry per kind: registering again replaces the token (a button that changes style)
	for i, e in ipairs(list) do
		if e.kind ~= "fn" and (e.kind == entry.kind or (TEXT_COLOUR[e.kind] and TEXT_COLOUR[entry.kind])) then
			list[i] = entry; applySafely(region, entry); return region
		end
	end
	list[#list + 1] = entry
	applySafely(region, entry)
	return region
end

-- A white texture shows `token` through SetVertexColor; `alpha` multiplies the token's own alpha.
function Theme.Tint(region, token, alpha) return add(region, { kind = "vertex", token = token, alpha = alpha }) end
-- A solid-colour texture (SetColorTexture) in `token`.
function Theme.Fill(region, token, alpha) return add(region, { kind = "color", token = token, alpha = alpha }) end
-- A FontString (or font object) coloured with `token`.
-- A text coloured by the theme is marked (`auThemed`), so UI/Widgets.lua W.Adopt leaves it as it is.
function Theme.Text(region, token) region.auThemed = true; return add(region, { kind = "text", token = token }) end
-- A FontString in a colour of the game (r, g, b in 0..1): the item quality. It survives Apply.
function Theme.TextRGB(region, r, g, b) region.auThemed = true; return add(region, { kind = "rgb", r = r, g = g, b = b }) end
-- A player's name: the class colour (read from the client, never written here) on the dark theme when it stays legible,
-- `text-1` otherwise.
function Theme.ClassText(region, classFile) region.auThemed = true; return add(region, { kind = "class", class = classFile }) end
-- A free function fn(region, themeId) that sets whatever a token cannot (a gradient, a blend mode); runs now and on Apply.
function Theme.Call(region, fn) return add(region, { kind = "fn", fn = fn }) end

function Theme.Count()
	local n = 0
	for _ in pairs(registry) do n = n + 1 end
	return n
end

-- --- the personal settings ---------------------------------------------------------------------------------------------

local function setting(path, default)
	local cfg = NS.Config
	local v = cfg and cfg.Get and cfg:Get(path)
	if v == nil then return default end
	return v
end

-- "Neon effects" (glows and shadows), on by default; a client without a database yet answers the default.
function Theme.NeonOn() return setting("ui.neon", true) ~= false end
-- "Animations", on by default: the one switch of every motion of the addon, the narrator's included. A player who had turned
-- the narrator's fades off (ui.narrator.reduceMotion, #177) was moved to ui.animations = false once, by Config:Load; the old
-- key is no longer read.
function Theme.AnimationsOn()
	return setting("ui.animations", true) ~= false
end
function Theme.FontSource()
	local v = setting("ui.fontSource", "addon")
	return v == "game" and "game" or "addon"
end

-- A soft glow of Media/glow_s or glow_l behind `parent`, white and tinted with `token`. The dark theme adds it to the picture
-- (blend mode ADD, the site's neon); the light theme draws it as an ordinary soft shadow at half strength. It is hidden with
-- "neon: off". opts: layer, alpha. Returns the texture; the caller anchors it. One neon element per view (spec §3).
function Theme.Glow(parent, key, token, opts)
	opts = opts or {}
	local tex = Theme.Slice(parent, key, token, opts.layer or "BACKGROUND", opts.alpha or 0.4)   -- no token: the caller tints it
	tex._glow = true
	Theme.Call(tex, function(region, id)
		local dark = Theme.themes[id].dark
		if region.SetBlendMode then region:SetBlendMode(dark and "ADD" or "BLEND") end
		region:SetAlpha(dark and 1 or 0.5)
		region:SetShown(Theme.NeonOn() and region._want ~= false)
		region._additive = dark
	end)
	return tex
end

-- Shows or hides a glow on purpose (the one neon element of a view): it still disappears with "neon: off".
function Theme.GlowShow(tex, shown)
	tex._want = shown and true or false
	tex:SetShown(tex._want and Theme.NeonOn())
end

-- A text glow for the one display title of a view: a coloured shadow of the font, dark theme and neon on only.
function Theme.TextGlow(fs, token)
	Theme.Call(fs, function(region, id)
		local on = Theme.themes[id].dark and Theme.NeonOn()
		local r, g, b = Theme.Color(token or "accent", id)
		if region.SetShadowColor then region:SetShadowColor(r, g, b, on and 0.55 or 0) end
		if region.SetShadowOffset then region:SetShadowOffset(0, on and -1 or 0) end
		region._glowing = on
	end)
end

-- A colour given to SetGradient: an object of the game when it has CreateColor, a table with the same fields otherwise.
local function gradientColor(token, id)
	local r, g, b, a = Theme.Color(token, id)
	local create = Compat and Compat.Resolve("CreateColor")
	if type(create) == "function" then return create(r, g, b, a) end
	return { r = r, g = g, b = b, a = a }
end

-- A gradient of two tokens on a white texture (the game's SetGradient has two colours: spec §5), recoloured by Apply.
function Theme.Gradient(region, fromToken, toToken, orientation)
	Theme.Call(region, function(r, id)
		if r.SetGradient then r:SetGradient(orientation or "HORIZONTAL", gradientColor(fromToken, id), gradientColor(toToken, id)) end
	end)
	return region
end

-- --- applying and switching the theme --------------------------------------------------------------------------------

local listeners = {}

-- fn(themeId) runs after every Apply; a failing listener is reported and does not stop the others.
function Theme.OnChange(fn)
	listeners[#listeners + 1] = fn
end

-- Recolours every registered region (and the glows and shadows, which follow the neon setting); with an id it switches the
-- theme first. Returns true when the theme exists.
function Theme.Apply(id)
	if id ~= nil then
		if not Theme.themes[id] then return false end
		current = id
	end
	for region, list in pairs(registry) do
		for _, entry in ipairs(list) do
			applySafely(region, entry)
		end
	end
	for _, fn in ipairs(listeners) do
		local ok, err = pcall(fn, current)
		if not ok then report("listener", err) end
	end
	return true
end

-- Reads the saved theme (account settings) and applies it; called at start and when the settings change.
function Theme.Load()
	local id = setting("ui.theme", Theme.DEFAULT)
	if not Theme.themes[id] then id = Theme.DEFAULT end
	return Theme.Apply(id)
end

-- Saves and applies a theme. Returns ok, and false when the theme does not exist or the setting cannot be written.
function Theme.Set(id)
	if not Theme.themes[id] then return false end
	local cfg = NS.Config
	if cfg and NS.db then
		return cfg:Set("ui.theme", id) and true or false   -- Set tells the listeners, and the one below applies it
	end
	Theme.Apply(id)   -- no database yet (the first frames of a load): only the session changes
	return true
end

-- --- Px and snapping ---------------------------------------------------------------------------------------------------

-- One physical pixel in UI units of `frame` (UIParent by default): lines of 1 px stay sharp at any UI scale.
function Theme.PixelSize(frame)
	frame = frame or UIParent
	local scale = frame and frame.GetEffectiveScale and frame:GetEffectiveScale() or 1
	if type(scale) ~= "number" or scale <= 0 then scale = 1 end
	local physical = Compat and Compat.PhysicalScreenHeight and Compat:PhysicalScreenHeight() or nil
	return (768 / (physical or 768)) / scale
end

function Theme.Px(n, frame) return (n or 1) * Theme.PixelSize(frame) end

-- Turns off the engine's pixel snapping for a texture (thin lines at fractional scales); each call is guarded.
function Theme.Crisp(texture)
	if texture.SetSnapToPixelGrid then texture:SetSnapToPixelGrid(false) end
	if texture.SetTexelSnappingBias then texture:SetTexelSnappingBias(0) end
	return texture
end

-- --- fonts -------------------------------------------------------------------------------------------------------------

-- Font objects: id -> { key of Assets.fonts, size }. Names are AzerothUnspokenFont<Id>. No text under 12 units (the UI review, #182).
Theme.fontSpecs = {
	Display = { "display", 22 }, DisplaySmall = { "display", 15 },
	H1 = { "textSemiBold", 16 }, H2 = { "textSemiBold", 14 },
	Body = { "text", 13 }, BodyMedium = { "textMedium", 13 }, Small = { "text", 12 },
	Eyebrow = { "textMedium", 12 }, Th = { "textSemiBold", 12 }, Tab = { "textMedium", 14 }, Button = { "textMedium", 13 },
	Mono = { "mono", 13 }, MonoMedium = { "monoMedium", 13 }, MonoSmall = { "mono", 12 },
}
Theme.fontStatus = {}   -- id -> "addon" | "game"
Theme.fontObjects = {}  -- id -> font object

local function setFont(obj, path, size)
	local ok, result = pcall(obj.SetFont, obj, path, size, "")
	return ok and result ~= false
end

-- Builds or refreshes every font object. `source` is "addon" (the files of Media/Fonts) or "game"; a file that does not
-- load falls back to the game font for that object. Returns the number of objects that use the game font.
function Theme.SetupFonts(source)
	source = source or Theme.FontSource()
	local fallbacks = 0
	for id, spec in pairs(Theme.fontSpecs) do
		local asset = Assets.fonts[spec[1]]
		local obj = Theme.fontObjects[id]
		if not obj then
			obj = Compat and Compat.CreateFont and Compat:CreateFont("AzerothUnspokenFont" .. id) or nil
			Theme.fontObjects[id] = obj or nil
		end
		if obj then
			local addon = false
			if source ~= "game" and Compat:FontLoads(asset.path, spec[2]) ~= false then
				addon = setFont(obj, asset.path, spec[2])
			end
			if not addon then
				setFont(obj, Compat:GameFontPath(asset.fallback), spec[2])
				Theme.fontStatus[id] = "game"
				fallbacks = fallbacks + 1
			else
				Theme.fontStatus[id] = "addon"
			end
		end
	end
	return fallbacks
end

function Theme.Font(id) return Theme.fontObjects[id] or Theme.fontObjects.Body end
function Theme.FontName(id) return "AzerothUnspokenFont" .. id end

-- A FontString of `parent` in font `id` and colour `token` (registered).
function Theme.NewText(parent, id, token, layer)
	local fs = parent:CreateFontString(nil, layer or "OVERLAY")
	-- UI-3: a client without CreateFont still gets a font on every text (a FontString with no font cannot show one)
	if Theme.fontObjects[id] then fs:SetFontObject(Theme.fontObjects[id]) else fs:SetFontObject("GameFontHighlight") end
	Theme.Text(fs, token or "text-1")
	return fs
end

-- --- shapes: 9-slice fills, rings, shadows and glows --------------------------------------------------------------------

local SLICE_STRETCHED = (Enum and Enum.UITextureSliceMode and Enum.UITextureSliceMode.Stretched) or 0

-- A 9-slice texture of the Media sheet `key` on `parent`: white, tinted with `token`.
function Theme.Slice(parent, key, token, layer, alpha)
	local a = Assets.textures[key]
	local tex = parent:CreateTexture(nil, layer or "BACKGROUND")
	tex:SetTexture(a.path)
	if a.slice and tex.SetTextureSliceMargins then
		tex:SetTextureSliceMargins(a.slice, a.slice, a.slice, a.slice)
		if tex.SetTextureSliceMode then tex:SetTextureSliceMode(SLICE_STRETCHED) end
	end
	Theme.Crisp(tex)
	tex._asset = key
	if token then Theme.Tint(tex, token, alpha) end
	return tex
end

local RADII = { [8] = true, [12] = true, [18] = true }

-- Fill + 1 px ring (+ optional shadow and highlight line) behind `frame`: returns the table of the regions. opts: radius
-- (8|12|18), fill token, border token, shadow (bool), shadowAlpha, highlight (bool).
function Theme.Panel(frame, opts)
	opts = opts or {}
	local r = RADII[opts.radius] and opts.radius or 12
	local p = {}
	if opts.shadow then
		p.shadow = Theme.Slice(frame, "shadow", "scrim", "BACKGROUND", opts.shadowAlpha or 0.6)
		p.shadow:SetPoint("TOPLEFT", frame, "TOPLEFT", -24, 16)
		p.shadow:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 24, -32)
		Theme.Call(p.shadow, function(region) region:SetShown(Theme.NeonOn()) end)   -- "neon: off" is flat
	end
	if opts.fill ~= false then
		p.fill = Theme.Slice(frame, "rr_fill_" .. r, opts.fill or "surface-1", "BACKGROUND")
		p.fill:SetAllPoints(frame)
	end
	if opts.border ~= false then
		p.ring = Theme.Slice(frame, "rr_ring_" .. r, opts.border or "border", "BORDER")
		p.ring:SetAllPoints(frame)
	end
	if opts.highlight then
		-- "on the dark the depth comes from the light": a 1 px line of `highlight` along the top edge, inside the corners
		p.highlight = frame:CreateTexture(nil, "BORDER", nil, 1)
		Theme.Fill(p.highlight, "highlight")
		Theme.Crisp(p.highlight)
		p.highlight:SetPoint("TOPLEFT", frame, "TOPLEFT", r, -1)
		p.highlight:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -r, -1)
		p.highlight:SetHeight(Theme.Px(1, frame))
	end
	return p
end

-- --- start and follow the settings ---------------------------------------------------------------------------------

-- Config:Set("ui.theme" | "ui.neon" | "ui.fontSource", ...) and Config:Changed() (a profile reset) reach here: the theme is
-- applied again (this also redraws the glows, shadows and text glows, which read the neon setting) and the fonts are rebuilt.
if NS.Config and NS.Config.OnChange then
	NS.Config:OnChange(function(path)
		if path == nil or path == "ui.theme" or path == "ui.neon" then Theme.Load() end
		if path == nil or path == "ui.fontSource" then Theme.SetupFonts() end
	end)
end

-- The saved settings exist once Config:Load has run: fonts first, then the theme.
function Theme:OnInit()
	Theme.SetupFonts()
	Theme.Load()
end

-- What the client answered about the things the look depends on (a probe for /au debug later, spec §7). Nothing here is a verdict:
-- the owner reads the lines in game.
function Theme.Probes()
	local res = {}
	local probe = Theme.probeFrame
	if not probe and CreateFrame then
		probe = CreateFrame("Frame")
		Theme.probeFrame = probe
		probe:Hide()
	end
	local tex = probe and probe:CreateTexture(nil, "BACKGROUND")
	res.slicing = tex ~= nil and tex.SetTextureSliceMargins ~= nil
	res.addBlend = tex ~= nil and tex.SetBlendMode ~= nil
	res.gradient = tex ~= nil and tex.SetGradient ~= nil
	res.animations = probe ~= nil and probe.CreateAnimationGroup ~= nil
	res.pixel = Theme.PixelSize()
	res.scale = UIParent and UIParent:GetEffectiveScale() or 1
	local game = 0
	for _, status in pairs(Theme.fontStatus) do
		if status == "game" then game = game + 1 end
	end
	res.fontsOnGame = game
	return res
end
