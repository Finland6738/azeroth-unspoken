-- Azeroth Unspoken: the ThinBar of the NEBULA look (UI-ECO step UI-3; adapted from the sister addon's
-- UI/Widgets/ThinBar.lua): a 4-unit bar with a subtle track and a fill in the two-colour gradient of the theme (accent ->
-- accent-2: the engine's SetGradient has two colours). The trait levels of the character soul and the narrator's time
-- line use it (UI-4, UI-6). Lua 5.1. Not tried in the game client.
--   bar = W.ThinBar(parent, { height = 4, width = 200, token = nil }); bar:SetFraction(0..1); bar:GetFraction()
-- With `token` the fill is that one colour (no gradient): the narrator's time line takes the colour of the voice on screen,
-- and bar:SetToken(token) changes it. Without `token` the fill is the theme's gradient.
local ADDON, NS = ...
local W, Theme = NS.Widgets, NS.Theme

function W.ThinBar(parent, opts)
	opts = opts or {}
	local bar = CreateFrame("Frame", nil, parent)
	bar:SetHeight(opts.height or 4)
	if opts.width then bar:SetWidth(opts.width) end
	bar.track = bar:CreateTexture(nil, "BACKGROUND")
	Theme.Fill(bar.track, "border")
	bar.track:SetAllPoints(bar)
	bar.fill = bar:CreateTexture(nil, "ARTWORK")
	Theme.Fill(bar.fill, opts.token or "accent")
	if not opts.token then Theme.Gradient(bar.fill, "accent", "accent-2") end
	bar.fill:SetPoint("TOPLEFT", bar, "TOPLEFT", 0, 0)
	bar.fill:SetPoint("BOTTOMLEFT", bar, "BOTTOMLEFT", 0, 0)
	bar.fraction = 0

	local function paint()
		local w = bar:GetWidth() or 0
		if w <= 1 then w = opts.width or 200 end
		if bar.fraction <= 0 then bar.fill:Hide() else
			bar.fill:SetWidth(math.max(w * bar.fraction, 1))
			bar.fill:Show()
		end
	end
	function bar:SetFraction(f)
		f = tonumber(f) or 0
		if f ~= f then f = 0 end
		self.fraction = math.min(math.max(f, 0), 1)
		paint()
	end
	function bar:GetFraction() return self.fraction end
	-- only for a bar made with `token`: a bar with the gradient keeps it
	function bar:SetToken(token) if opts.token and token then Theme.Fill(self.fill, token) end end
	bar:SetScript("OnSizeChanged", paint)
	paint()
	return bar
end
