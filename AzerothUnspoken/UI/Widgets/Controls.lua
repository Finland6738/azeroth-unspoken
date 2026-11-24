-- Azeroth Unspoken: the controls of the NEBULA look (UI-ECO step UI-3; adapted from the sister addon's UI/Widgets.lua and
-- UI/Widgets/Controls.lua): TitleBar, Badge, Chip, Tabs (underline), Segmented (pill selector), Dialog, Toast, EditBox,
-- ChoiceList, Select (a list of its own: no UIDropDownMenu, which taints), Switch and Slider. Ordinary unprotected frames;
-- every colour is a theme token and every text comes in already translated. Lua 5.1. Not tried in the game client.
local ADDON, NS = ...
local W, Theme, Motion, Assets = NS.Widgets, NS.Theme, NS.Motion, NS.Assets

local function Icon(parent, name, size, token, layer)
	local t = parent:CreateTexture(nil, layer or "OVERLAY")
	t:SetTexture(Assets.textures.icons.path)
	t:SetTexCoord(Assets.IconCoords(name))
	t:SetSize(size, size)
	if token then Theme.Tint(t, token) end
	return t
end
W.Icon = Icon

-- --- Badge -----------------------------------------------------------------------------------------------------------

W.BADGE_TONES = { accent = "accent-text", ok = "ok", warn = "warn", err = "err", neutral = "text-2" }

---The alpha of a badge's pill: 16 % on a dark theme (FDCP), 12 % on a light one, where the green text keeps 4.5:1 only
---on a paler pill (Tests/TestLayout.lua).
---@param themeId? string
---@return number
function W.BadgeAlpha(themeId)
	local t = Theme.themes[themeId or Theme.Current()]
	return (t and t.dark) and 0.16 or 0.12
end

local function BadgeFill(region, themeId)
	local r, g, b = Theme.Color(region.auToken or "text-2", themeId)
	region:SetVertexColor(r, g, b, W.BadgeAlpha(themeId))
end

---A pill (24 high) whose width follows its text: the fill is the tone's colour at low alpha, the text the tone's.
---:SetBadge(text, tone).
---@param parent table
---@param text? string
---@param tone? string accent | ok | warn | err | neutral
---@return table badge
function W.Badge(parent, text, tone)
	local f = CreateFrame("Frame", nil, parent)
	f.fill = Theme.Slice(f, "rr_fill_12", nil, "BACKGROUND")
	f.fill:SetAllPoints(f)
	Theme.Call(f.fill, BadgeFill)
	f.label = Theme.NewText(f, "Th", "text-2")
	f.label:SetPoint("CENTER", f, "CENTER", 0, 0)
	function f:SetBadge(newText, newTone)
		self.tone = W.BADGE_TONES[newTone or ""] and newTone or self.tone or "neutral"
		local t = W.BADGE_TONES[self.tone]
		self.fill.auToken = t
		BadgeFill(self.fill, Theme.Current())
		Theme.Text(self.label, t)
		self.label:SetText(newText or "")
		self:SetSize(math.max(24, math.ceil(self.label:GetStringWidth() or 0) + 20), 24)
	end
	f:SetBadge(text, tone or "neutral")
	function f:GetText() return self.label:GetText() end
	return f
end

-- --- TitleBar ----------------------------------------------------------------------------------------------------------

---The title bar of a window: 52 units, surface-1, the addon's round logo with a small accent glow, the title in the display
---font (capitals: Orbitron has no middle dot nor arrows), a mono subtitle, a status chip and the close box (28 units).
---opts: title, subtitle, onClose. :SetStatus(text, tone).
---@param parent table
---@param opts? { title?: string, subtitle?: string, onClose?: fun() }
---@return table bar with .logo, .title, .subtitle, .status, .close
function W.TitleBar(parent, opts)
	opts = opts or {}
	local bar = CreateFrame("Frame", nil, parent)
	bar:SetHeight(W.TITLEBAR)
	bar.fill = Theme.Slice(bar, "rr_fill_12", "surface-1", "BACKGROUND")
	bar.fill:SetAllPoints(bar)
	bar.line = bar:CreateTexture(nil, "BORDER")
	Theme.Fill(bar.line, "border-subtle")
	bar.line:SetPoint("BOTTOMLEFT", bar, "BOTTOMLEFT", 12, 0)
	bar.line:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", -12, 0)
	bar.line:SetHeight(Theme.Px(1))

	bar.logoGlow = Theme.Glow(bar, "glow_s", "accent", { layer = "ARTWORK", alpha = 0.35 })
	bar.logoGlow:SetSize(64, 64)
	bar.logoGlow:SetPoint("LEFT", bar, "LEFT", -2, 0)
	bar.logo = bar:CreateTexture(nil, "OVERLAY")
	bar.logo:SetTexture(Assets.textures.logo_64.path)   -- full colour and already round: never tinted
	bar.logo:SetSize(32, 32)
	bar.logo:SetPoint("LEFT", bar, "LEFT", 14, 0)

	bar.title = Theme.NewText(bar, "DisplaySmall", "text-1")
	bar.title:SetPoint("TOPLEFT", bar, "TOPLEFT", 58, -10)
	bar.title:SetJustifyH("LEFT")
	if bar.title.SetWordWrap then bar.title:SetWordWrap(false) end
	-- Orbitron is written in capitals only; string.upper leaves the accented letters as they are (Orbitron has them)
	local setTitle = bar.title.SetText
	bar.title.SetText = function(self, text) setTitle(self, type(text) == "string" and text:upper() or text) end
	Theme.TextGlow(bar.title, "accent")
	bar.subtitle = Theme.NewText(bar, "MonoSmall", "text-3")
	bar.subtitle:SetPoint("TOPLEFT", bar.title, "BOTTOMLEFT", 0, -4)
	bar.subtitle:SetJustifyH("LEFT")
	if bar.subtitle.SetWordWrap then bar.subtitle:SetWordWrap(false) end

	bar.close = CreateFrame("Button", nil, bar)
	bar.close:SetSize(28, 28)
	bar.close:SetPoint("TOPRIGHT", bar, "TOPRIGHT", -12, -12)
	bar.close.bg = Theme.Slice(bar.close, "rr_fill_8", "surface-3", "BACKGROUND", 0)
	bar.close.bg:SetAllPoints(bar.close)
	bar.close.icon = Icon(bar.close, "cross", 16, "text-2")
	bar.close.icon:SetPoint("CENTER")
	bar.close:HookScript("OnEnter", function(self) Theme.Tint(self.bg, "surface-3", 1); Theme.Tint(self.icon, "text-1") end)
	bar.close:HookScript("OnLeave", function(self) Theme.Tint(self.bg, "surface-3", 0); Theme.Tint(self.icon, "text-2") end)
	if opts.onClose then bar.close:SetScript("OnClick", function() opts.onClose() end) end

	bar.status = W.Badge(bar, "", "neutral")
	bar.status:SetPoint("RIGHT", bar.close, "LEFT", -10, 0)
	bar.status:Hide()
	function bar:SetStatus(text, tone)
		if type(text) ~= "string" or text == "" then self.status:Hide(); return end
		self.status:SetBadge(text, tone)
		self.status:Show()
	end
	bar.title:SetText(opts.title or "")
	bar.subtitle:SetText(opts.subtitle or "")
	return bar
end

-- --- Chip --------------------------------------------------------------------------------------------------------------

---A pill with a border (28 high), filled with the accent when selected (the selection is the fill and the ring, not a
---colour of the text only). opts: text, onClick(chip), height, font (a Theme font id, default BodyMedium), pad (28).
---:SetSelected(bool), :IsSelected(), :SetLabel(text), :SetEnabled(bool).
function W.Chip(parent, opts)
	opts = opts or {}
	local c = CreateFrame("Button", nil, parent)
	c:SetHeight(opts.height or 28)
	c.fill = Theme.Slice(c, "rr_fill_12", "surface-2", "BACKGROUND", 0)
	c.fill:SetAllPoints(c)
	c.ring = Theme.Slice(c, "rr_ring_12", "border", "BORDER")
	c.ring:SetAllPoints(c)
	c.label = Theme.NewText(c, opts.font or "BodyMedium", "text-2")
	c.label:SetPoint("CENTER", c, "CENTER", 0, 0)
	function c:Paint()
		if self.selected then
			Theme.Tint(self.fill, "accent", 1)
			Theme.Tint(self.ring, "accent")
			Theme.Text(self.label, "on-accent")
		else
			Theme.Tint(self.fill, "surface-2", self.hot and 1 or 0)
			Theme.Tint(self.ring, self.hot and "border-strong" or "border")
			Theme.Text(self.label, "text-2")
		end
	end
	function c:SetLabel(text)
		self.label:SetText(text or "")
		self:SetWidth(math.max(32, math.ceil(self.label:GetStringWidth() or 0) + (opts.pad or 28)))
	end
	function c:SetSelected(selected) self.selected = selected and true or false; self:Paint() end
	function c:IsSelected() return self.selected == true end
	local setEnabled = c.SetEnabled
	function c:SetEnabled(enabled)
		setEnabled(self, enabled and true or false)
		self:SetAlpha(enabled and 1 or W.DISABLED_ALPHA)
	end
	c:HookScript("OnEnter", function(self) if self:IsEnabled() then self.hot = true; self:Paint() end end)
	c:HookScript("OnLeave", function(self) self.hot = false; self:Paint() end)
	if opts.onClick then c:SetScript("OnClick", function(self) if self:IsEnabled() then opts.onClick(self) end end) end
	c:SetLabel(opts.text)
	c:Paint()
	return c
end

-- --- Tabs (underline) --------------------------------------------------------------------------------------------------

---tabs: { { id = "people", text = "People" }, ... }. The active tab is text-1 with a 2-unit accent bar under it (the bar
---marks the choice, not the colour only); the others text-3 (text-2 on hover). The bar fades in over 200 ms.
---The 2-unit bar slides from the old tab to the new one in 200 ms (Motion.Slide; at once with animations off).
---:Select(id), :SetTabShown(id, bool), :SetTabText(id, text), :AddTab(id, text), :Fit(maxWidth), :Active(), :Layout(), :Width() (what
---the shown tabs take). onSelect(id) runs after a change.
function W.Tabs(parent, tabs, onSelect)
	local bar = CreateFrame("Frame", nil, parent)
	bar:SetHeight(44)
	bar.buttons, bar.order, bar.hidden = {}, {}, {}
	bar.pad, bar.minW = 32, 64   -- a tab is its text and `pad` units (16 each side), at least `minW` wide; :Fit squeezes them
	bar.line = bar:CreateTexture(nil, "BORDER")
	Theme.Fill(bar.line, "border-subtle")
	bar.line:SetPoint("BOTTOMLEFT", bar, "BOTTOMLEFT", 0, 0)
	bar.line:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", 0, 0)
	bar.line:SetHeight(Theme.Px(1))
	bar.indicator = bar:CreateTexture(nil, "ARTWORK")
	Theme.Fill(bar.indicator, "accent")
	bar.indicator:SetHeight(2)
	bar.indicator:Hide()

	-- the bar rests under the active tab, held by two anchors (so it follows the tab's width)
	local function rest(active)
		bar.indicator:ClearAllPoints()
		bar.indicator:SetPoint("BOTTOMLEFT", active, "BOTTOMLEFT", 8, 0)
		bar.indicator:SetPoint("BOTTOMRIGHT", active, "BOTTOMRIGHT", -8, 0)
		bar.indicator:Show()
	end

	-- slideFrom: the x of the tab the bar leaves (a change of tab), nil when only the layout changed
	local function layout(slideFrom)
		local x = 0
		for _, id in ipairs(bar.order) do
			local b = bar.buttons[id]
			if bar.hidden[id] then
				b:Hide()
			else
				b:Show()
				b:ClearAllPoints()
				b:SetPoint("BOTTOMLEFT", bar, "BOTTOMLEFT", x, 0)
				b.auX = x
				x = x + b:GetWidth() + 4
			end
		end
		bar.used = math.max(x - 4, 0)
		local active = bar.active and bar.buttons[bar.active]
		if active and not bar.hidden[bar.active] then
			if slideFrom and slideFrom ~= active.auX and bar.indicator:IsShown() then
				-- from the old tab's place to the new one: the animation moves it, the end re-anchors it
				bar.indicator:ClearAllPoints()
				bar.indicator:SetPoint("BOTTOMLEFT", bar, "BOTTOMLEFT", slideFrom + 8, 0)
				bar.indicator:SetWidth(math.max(active:GetWidth() - 16, 8))
				Motion.Slide(bar.indicator, active.auX - slideFrom, 0, Motion.BASE, function() rest(active) end)
			else
				rest(active)
			end
		else
			bar.indicator:Hide()
		end
	end

	local function paint()
		for id, b in pairs(bar.buttons) do Theme.Text(b.label, id == bar.active and "text-1" or "text-3") end
	end

	function bar:Select(id)
		if not self.buttons[id] or self.hidden[id] then return false end
		local changed = self.active ~= id
		local old = changed and self.active and self.buttons[self.active]
		self.active = id
		paint()
		layout(old and not self.hidden[old.id] and old.auX or nil)
		if changed and onSelect then onSelect(id) end
		return true
	end
	function bar:Active() return self.active end
	function bar:SetTabShown(id, shown)
		self.hidden[id] = not shown or nil
		if not shown and self.active == id then
			for _, other in ipairs(self.order) do
				if not self.hidden[other] then self:Select(other) break end
			end
		end
		layout()
	end
	function bar:SetTabText(id, text)
		local b = self.buttons[id]
		if not b then return end
		b.label:SetText(text or "")
		b:SetWidth(math.max(self.minW, math.ceil(b.label:GetStringWidth() or 0) + self.pad))
		layout()
	end
	function bar:Layout() layout() end

	---Makes the shown tabs fit in `maxWidth` units when their texts take more: the room around each text goes from 32 down
	---to 16 units (and the least width from 64 to 48), no further; back to the roomy look when they fit. Call it after the
	---texts are set.
	function bar:Fit(maxWidth)
		local n, text = 0, 0
		for _, id in ipairs(self.order) do
			if not self.hidden[id] then
				n = n + 1
				text = text + math.ceil(self.buttons[id].label:GetStringWidth() or 0)
			end
		end
		if n == 0 then return end
		local room = math.floor((maxWidth - 4 * (n - 1) - text) / n)
		self.pad = math.max(16, math.min(32, room))
		self.minW = self.pad < 32 and 48 or 64
		for _, id in ipairs(self.order) do
			local b = self.buttons[id]
			b:SetWidth(math.max(self.minW, math.ceil(b.label:GetStringWidth() or 0) + self.pad))
		end
		layout()
	end
	---The width the shown tabs take (a window checks that they fit).
	function bar:Width() return self.used or 0 end

	---A tab made after the bar (a window whose tabs are registered by other modules); nothing happens if it exists.
	function bar:AddTab(id, text)
		if self.buttons[id] then return false end
		local b = CreateFrame("Button", nil, bar)
		b.id = id
		b.label = Theme.NewText(b, "Tab", "text-3")
		b.label:SetPoint("CENTER", b, "CENTER", 0, 1)
		b.label:SetText(text or "")
		b:SetSize(math.max(self.minW, math.ceil(b.label:GetStringWidth() or 0) + self.pad), 44)
		b:SetScript("OnClick", function() bar:Select(id) end)
		b:HookScript("OnEnter", function(self) if bar.active ~= self.id then Theme.Text(self.label, "text-2") end end)
		b:HookScript("OnLeave", function(self) if bar.active ~= self.id then Theme.Text(self.label, "text-3") end end)
		self.buttons[id] = b
		self.order[#self.order + 1] = id
		layout()
		return true
	end

	for _, t in ipairs(tabs) do bar:AddTab(t.id, t.text) end
	layout()
	return bar
end

-- --- Segmented (pill selector) -----------------------------------------------------------------------------------------

---items: { { id, text } }. A surface-2 pill with the selected segment raised (a shape of its own, not a colour only).
---:Select(id), :Active(), :Clear(), :SetEnabled(bool), :SetItemText(id, text), :SetItemShown(id, bool), :Layout().
---onSelect(id) after a change.
function W.Segmented(parent, items, onSelect)
	local seg = CreateFrame("Frame", nil, parent)
	seg:SetHeight(32)
	seg.fill = Theme.Slice(seg, "rr_fill_12", "surface-2", "BACKGROUND")
	seg.fill:SetAllPoints(seg)
	seg.ring = Theme.Slice(seg, "rr_ring_12", "border", "BORDER")
	seg.ring:SetAllPoints(seg)
	seg.thumb = Theme.Slice(seg, "rr_fill_12", "raised", "ARTWORK")
	seg.thumbRing = Theme.Slice(seg, "rr_ring_12", "border-strong", "ARTWORK", 1)
	seg.thumb:Hide()
	seg.thumbRing:Hide()
	seg.buttons, seg.order = {}, {}

	function seg:Select(id)
		local b = self.buttons[id]
		if not b then return false end
		local changed = self.active ~= id
		self.active = id
		for _, t in ipairs({ self.thumb, self.thumbRing }) do
			t:ClearAllPoints()
			t:SetPoint("TOPLEFT", b, "TOPLEFT", 0, 0)
			t:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", 0, 0)
			t:Show()
		end
		for other, ob in pairs(self.buttons) do Theme.Text(ob.label, other == id and "text-1" or "text-3") end
		if changed and onSelect then onSelect(id) end
		return true
	end
	function seg:Active() return self.active end
	function seg:Clear()
		self.active = nil
		self.thumb:Hide()
		self.thumbRing:Hide()
		for _, ob in pairs(self.buttons) do Theme.Text(ob.label, "text-3") end
	end
	function seg:SetEnabled(enabled)
		self.enabled = enabled ~= false
		self:SetAlpha(self.enabled and 1 or 0.55)
		for _, ob in pairs(self.buttons) do ob:SetEnabled(self.enabled) end
	end

	seg.hidden = {}
	-- the segments are laid out from the left, each as wide as its text; a hidden one takes no room
	function seg:Layout()
		local x = 4
		for _, id in ipairs(self.order) do
			local b = self.buttons[id]
			if self.hidden[id] then
				b:Hide()
			else
				b:Show()
				b:SetWidth(math.max(48, math.ceil(b.label:GetStringWidth() or 0) + 24))
				b:ClearAllPoints()
				b:SetPoint("LEFT", self, "LEFT", x, 0)
				x = x + b:GetWidth() + 2
			end
		end
		self:SetWidth(x + 2)
	end
	---Changes the text of one segment (a language change) and lays the control out again.
	function seg:SetItemText(id, text)
		local b = self.buttons[id]
		if not b then return end
		b.label:SetText(text or "")
		self:Layout()
	end
	---Shows or hides a segment (a step the guide skips); the chosen one is never hidden.
	function seg:SetItemShown(id, shown)
		if not self.buttons[id] then return end
		self.hidden[id] = (not shown and self.active ~= id) or nil
		self:Layout()
	end

	for _, item in ipairs(items) do
		local b = CreateFrame("Button", nil, seg)
		b.label = Theme.NewText(b, "BodyMedium", "text-3")
		b.label:SetPoint("CENTER", b, "CENTER", 0, 0)
		b.label:SetText(item.text or "")
		b:SetSize(48, 24)
		b:SetScript("OnClick", function() seg:Select(item.id) end)
		seg.buttons[item.id] = b
		seg.order[#seg.order + 1] = item.id
	end
	seg:Layout()
	return seg
end

-- --- Dialog --------------------------------------------------------------------------------------------------------------

---A modal base: a dark veil (no blur: the engine has none) over `parent` with a centred card on the DIALOG strata; it
---enters with Motion.Rise (alpha and a 16-unit rise, 320 ms). Esc cancels it (its own key handler, so the window under it stays; its name is also in UISpecialFrames).
---:Ask{ title, text, confirm, cancel, danger, onConfirm, onCancel } fills it with a question and two buttons (the
---labels are locale texts given by the caller) and opens it; :Open(), :Close(), .card.
---@param parent? table
---@param name? string the global name (Esc)
---@param opts? { width?: number, height?: number }
---@return table dialog
function W.Dialog(parent, name, opts)
	opts = opts or {}
	local host = parent or UIParent
	local d = CreateFrame("Frame", name, host)
	d:Hide()
	d:SetAllPoints(host)
	d:SetFrameStrata("DIALOG")
	d:EnableMouse(true)   -- the veil swallows clicks
	d.veil = d:CreateTexture(nil, "BACKGROUND")
	Theme.Fill(d.veil, "scrim")
	d.veil:SetAllPoints(d)
	d.card = CreateFrame("Frame", nil, d)
	d.card:SetSize(opts.width or 420, opts.height or 200)
	d.card:SetPoint("CENTER", d, "CENTER", 0, 0)
	d.card.parts = Theme.Panel(d.card, { radius = 18, fill = "surface-1", border = "border", shadow = true, highlight = true })
	d.content = d.card
	d.title = Theme.NewText(d.card, "H1", "text-1")
	d.title:SetPoint("TOPLEFT", d.card, "TOPLEFT", 20, -18)
	d.title:SetPoint("TOPRIGHT", d.card, "TOPRIGHT", -20, -18)
	d.title:SetJustifyH("LEFT")
	d.text = Theme.NewText(d.card, "Body", "text-2")
	d.text:SetPoint("TOPLEFT", d.title, "BOTTOMLEFT", 0, -10)
	d.text:SetWidth((opts.width or 420) - 40)
	d.text:SetJustifyH("LEFT")
	d.text:SetJustifyV("TOP")
	d.confirm = W.FlatButton(d.card, "", 140, 28, function() d:Answer(true) end, "primary")
	d.confirm:SetPoint("BOTTOMRIGHT", d.card, "BOTTOMRIGHT", -20, 18)
	d.cancel = W.FlatButton(d.card, "", 120, 28, function() d:Answer(false) end, "secondary")
	d.cancel:SetPoint("RIGHT", d.confirm, "LEFT", -10, 0)
	if name then W.CloseOnEscape(name) end
	function d:Open()
		self:Show()
		self:Raise()
		Motion.FadeIn(self.veil, Motion.BASE)
		Motion.Rise(self.card, 16, Motion.SLOW)
	end
	function d:Close() self:Hide() end
	function d:Ask(q)
		q = q or {}
		self.question = q
		self.title:SetText(q.title or "")
		self.text:SetText(q.text or "")
		self.confirm:SetText(q.confirm or "")
		self.cancel:SetText(q.cancel or "")
		self.confirm:SetStyle(q.danger and "danger" or "primary")
		self.confirm:SetArmed(q.danger == true)
		W.FitButton(self.confirm, 100, 220)
		W.FitButton(self.cancel, 90, 200)
		local h = 18 + math.ceil(self.title:GetStringHeight() or 16) + 10 + math.ceil(self.text:GetStringHeight() or 0) + 24 + 28 + 18
		self.card:SetHeight(math.max(opts.height or 160, h))
		self:Open()
	end
	-- the answer: Confirm, Cancel, or Esc and any other way the dialog closes (cancel)
	function d:Answer(yes)
		local q = self.question
		self.question = nil
		self:Hide()
		if q then
			local fn = yes and q.onConfirm or q.onCancel
			if fn then fn() end
		end
	end
	d:SetScript("OnHide", function(self)
		local q = self.question
		self.question = nil
		if q and q.onCancel then q.onCancel() end
	end)
	-- Esc while it asks cancels the question and nothing else: the key does not go on to the game, so the window under the
	-- dialog stays open (the client's own Esc closes every window in UISpecialFrames at once). Any other key goes on.
	d:EnableKeyboard(true)
	if d.SetPropagateKeyboardInput then d:SetPropagateKeyboardInput(true) end
	d:SetScript("OnKeyDown", function(self, key)
		local escape = key == "ESCAPE"
		if self.SetPropagateKeyboardInput then self:SetPropagateKeyboardInput(not escape) end
		if escape then self:Answer(false) end
	end)
	return d
end

-- --- Toast ----------------------------------------------------------------------------------------------------------------

local TONES = { accent = "accent", ok = "ok", warn = "warn", err = "err" }

---A message at the bottom right of `host` (380 wide, raised, a coloured dot and the tone in its words), shown for 4 s and
---faded. :Say(text, tone, seconds), :Dismiss(), :Message().
function W.Toast(host)
	local sb = CreateFrame("Frame", nil, host)
	sb:Hide()
	sb:SetSize(380, 44)
	sb:SetFrameStrata("DIALOG")
	sb:SetPoint("BOTTOMRIGHT", host, "BOTTOMRIGHT", -20, 20)
	sb.parts = Theme.Panel(sb, { radius = 12, fill = "raised", border = "border-strong", shadow = true, highlight = true })
	sb.dot = sb:CreateTexture(nil, "ARTWORK")
	sb.dot:SetTexture(Assets.textures.circle.path)
	sb.dot:SetSize(10, 10)
	sb.dot:SetPoint("LEFT", sb, "LEFT", 16, 0)
	sb.text = Theme.NewText(sb, "Body", "text-1")
	sb.text:SetPoint("LEFT", sb, "LEFT", 36, 0)
	sb.text:SetPoint("RIGHT", sb, "RIGHT", -16, 0)
	sb.text:SetJustifyH("LEFT")
	sb.ticket = 0
	function sb:Say(text, tone, seconds)
		self.ticket = self.ticket + 1
		local mine = self.ticket
		self.text:SetText(text or "")
		Theme.Tint(self.dot, TONES[tone or "accent"] or "accent")
		self:SetHeight(math.max(44, math.ceil(self.text:GetStringHeight() or 14) + 24))
		self:SetFrameLevel((host.GetFrameLevel and host:GetFrameLevel() or 1) + 20)
		Motion.FadeIn(self, Motion.BASE)
		-- without a timer in the client it stays until :Dismiss()
		NS.Compat.After(seconds or 4, function()
			if self.ticket == mine and self:IsShown() then Motion.FadeOut(self, Motion.BASE) end
		end)
	end
	function sb:Dismiss()
		self.ticket = self.ticket + 1
		Motion.Fade(self, 0, 0)
		self:Hide()
		self:SetAlpha(1)
	end
	function sb:Message() return self.text:GetText() end
	return sb
end

-- --- EditBox ------------------------------------------------------------------------------------------------------------

---A one-line field: surface-2 fill, 1-unit ring (accent while it has the keyboard), the body font in text-1. Returns the
---EditBox itself, as before UI-3 (W.EditBox(parent, width, height)); Esc and Enter take the keyboard away unless the
---caller sets its own scripts.
---@param parent table
---@param width number
---@param height? number
---@return table editBox
function W.EditBox(parent, width, height)
	local box = CreateFrame("EditBox", nil, parent)
	box:SetSize(width, math.max(height or 24, 22))
	box:SetAutoFocus(false)
	box.fill = Theme.Slice(box, "rr_fill_8", "surface-2", "BACKGROUND")
	box.fill:SetAllPoints(box)
	box.ring = Theme.Slice(box, "rr_ring_8", "border", "BORDER")
	box.ring:SetAllPoints(box)
	box:SetFontObject(Theme.Font("Body") or ChatFontNormal)
	box:SetTextInsets(8, 8, 0, 0)
	Theme.Text(box, "text-1")
	box.auThemed = true
	box:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
	box:HookScript("OnEditFocusGained", function(self) Theme.Tint(self.ring, "accent") end)
	box:HookScript("OnEditFocusLost", function(self) Theme.Tint(self.ring, "border") end)
	return box
end

-- --- ChoiceList ---------------------------------------------------------------------------------------------------------

---A list of single-choice rows (a radio list) inside a surface-2 field. choices = { { id, text, token? } }; `rows` rows show
---at once and the mouse wheel scrolls the rest. The chosen row has a raised background and a dot (a shape, not a colour
---only). opts: rows (6), rowHeight (24), width, onSelect(id). :SetChoices(list), :Select(id), :Selected(), :Clear(),
---:Count(), :Scroll(delta).
function W.ChoiceList(parent, opts)
	opts = opts or {}
	local rows, rowH = opts.rows or 6, math.max(opts.rowHeight or 24, 24)
	local f = CreateFrame("Frame", nil, parent)
	f:SetSize(opts.width or 240, rows * rowH + 8)
	f.fill = Theme.Slice(f, "rr_fill_8", "surface-2", "BACKGROUND")
	f.fill:SetAllPoints(f)
	f.ring = Theme.Slice(f, "rr_ring_8", "border", "BORDER")
	f.ring:SetAllPoints(f)
	f.choices, f.offset, f.rowH, f.rowsShown = {}, 0, rowH, rows
	f:EnableMouseWheel(true)
	f.rows = {}
	for i = 1, rows do
		local b = CreateFrame("Button", nil, f)
		b:SetHeight(rowH)
		b:SetPoint("TOPLEFT", f, "TOPLEFT", 4, -4 - (i - 1) * rowH)
		b:SetPoint("TOPRIGHT", f, "TOPRIGHT", -4, -4 - (i - 1) * rowH)
		b.mark = b:CreateTexture(nil, "BACKGROUND")
		Theme.Fill(b.mark, "raised", 0)
		b.mark:SetAllPoints(b)
		b.dot = b:CreateTexture(nil, "ARTWORK")
		b.dot:SetTexture(Assets.textures.circle.path)
		Theme.Tint(b.dot, "accent", 0)
		b.dot:SetSize(8, 8)
		b.dot:SetPoint("LEFT", b, "LEFT", 8, 0)
		b.label = Theme.NewText(b, "Body", "text-2")
		b.label:SetPoint("LEFT", b, "LEFT", 24, 0)
		b.label:SetPoint("RIGHT", b, "RIGHT", -6, 0)
		b.label:SetJustifyH("LEFT")
		function b:GetText() return self.label:GetText() end   -- a row says its words (the tests and a screen reader read them)
		b:SetScript("OnClick", function(self) if self.choice then f:Select(self.choice.id) end end)
		b:Hide()
		f.rows[i] = b
	end
	local function paint()
		for i, b in ipairs(f.rows) do
			local c = f.choices[f.offset + i]
			b.choice = c
			if c then
				local on = f.selected ~= nil and c.id == f.selected
				b.label:SetText(c.text or "")
				Theme.Text(b.label, on and "text-1" or c.token or "text-2")
				Theme.Fill(b.mark, "raised", on and 1 or 0)
				Theme.Tint(b.dot, "accent", on and 1 or 0)
				b:Show()
			else
				b:Hide()
			end
		end
	end
	function f:SetChoices(list)
		self.choices = list or {}
		self.offset = 0
		if self.selected ~= nil then
			local found = false
			for _, c in ipairs(self.choices) do if c.id == self.selected then found = true end end
			if not found then self.selected = nil end
		end
		paint()
	end
	function f:Select(id)
		local found = false
		for _, c in ipairs(self.choices) do if c.id == id then found = true end end
		if not found then return false end
		local changed = self.selected ~= id
		self.selected = id
		paint()
		if changed and opts.onSelect then opts.onSelect(id) end
		return true
	end
	function f:Selected() return self.selected end
	function f:Clear() self.selected = nil; paint() end
	function f:Count() return #self.choices end
	function f:Scroll(delta)
		self.offset = math.min(math.max(self.offset + delta, 0), math.max(#self.choices - rows, 0))
		paint()
	end
	f:SetScript("OnMouseWheel", function(self, delta) self:Scroll(-delta * 2) end)
	return f
end

-- --- Select ---------------------------------------------------------------------------------------------------------------

---A field that shows the chosen text; a click opens a ChoiceList under it on the DIALOG strata and a click outside closes
---it. choices = { { id, text, token? } }. opts: width, rows (6), choices, value, onSelect(id), placeholder.
---:SetChoices(list), :Select(id, silent), :Selected(), :Open(), :Close(), :IsOpen().
function W.Select(parent, opts)
	opts = opts or {}
	local sel = CreateFrame("Button", nil, parent)
	sel:SetSize(opts.width or 200, 28)
	sel.fill = Theme.Slice(sel, "rr_fill_8", "surface-2", "BACKGROUND")
	sel.fill:SetAllPoints(sel)
	sel.ring = Theme.Slice(sel, "rr_ring_8", "border", "BORDER")
	sel.ring:SetAllPoints(sel)
	sel.label = Theme.NewText(sel, "Body", "text-1")
	sel.label:SetPoint("LEFT", sel, "LEFT", 10, 0)
	sel.label:SetPoint("RIGHT", sel, "RIGHT", -26, 0)
	sel.label:SetJustifyH("LEFT")
	sel.arrow = Icon(sel, "chevron", 14, "text-3")
	sel.arrow:SetPoint("RIGHT", sel, "RIGHT", -8, 0)
	Motion.Rotate(sel.arrow, -math.pi / 2, 0)   -- the chevron points right in the sheet: down while closed
	sel.choices = opts.choices or {}

	sel.popup = CreateFrame("Frame", nil, sel)
	sel.popup:SetFrameStrata("DIALOG")
	sel.popup:SetToplevel(true)
	sel.popup:SetPoint("TOPLEFT", sel, "BOTTOMLEFT", 0, -4)
	sel.popup:Hide()
	sel.catcher = CreateFrame("Button", nil, sel.popup)
	sel.catcher:SetFrameStrata("DIALOG")
	sel.catcher:SetAllPoints(UIParent)
	sel.catcher:SetFrameLevel(math.max((sel.popup:GetFrameLevel() or 1) - 1, 0))
	sel.catcher:SetScript("OnClick", function() sel:Close() end)
	sel.list = W.ChoiceList(sel.popup, { rows = opts.rows or 6, rowHeight = 24, width = opts.width or 200,
		onSelect = function(id) sel:Select(id) end })
	sel.list:SetPoint("TOPLEFT", sel.popup, "TOPLEFT", 0, 0)
	sel.popup:SetSize(opts.width or 200, (opts.rows or 6) * 24 + 8)
	Theme.Tint(sel.list.ring, "border-strong")

	local function paint()
		local text
		for _, c in ipairs(sel.choices) do if c.id == sel.value then text = c.text end end
		sel.label:SetText(text or opts.placeholder or "")
		Theme.Text(sel.label, text and "text-1" or "text-3")
	end
	function sel:SetChoices(list)
		self.choices = list or {}
		self.list:SetChoices(self.choices)
		local found = false
		for _, c in ipairs(self.choices) do if c.id == self.value then found = true end end
		if not found then self.value = nil end
		paint()
	end
	function sel:Select(id, silent)
		local found = false
		for _, c in ipairs(self.choices) do if c.id == id then found = true end end
		if not found then return false end
		local changed = self.value ~= id
		self.value = id
		self.list:Select(id)
		paint()
		self:Close()
		if changed and not silent and opts.onSelect then opts.onSelect(id) end
		return true
	end
	function sel:Selected() return self.value end
	function sel:IsOpen() return self.popup:IsShown() end
	function sel:Open()
		if not self:IsEnabled() or #self.choices == 0 then return end
		self.popup:Show()
		Motion.FadeIn(self.popup, Motion.BASE)
		Motion.Rotate(self.arrow, math.pi / 2, Motion.BASE)   -- up while open
		Theme.Tint(self.ring, "accent")
	end
	function sel:Close()
		if not self.popup:IsShown() then return end
		self.popup:Hide()
		Motion.Rotate(self.arrow, -math.pi / 2, Motion.BASE)
		Theme.Tint(self.ring, "border")
	end
	sel:SetScript("OnClick", function(self) if self:IsOpen() then self:Close() else self:Open() end end)
	sel:HookScript("OnHide", function(self) self:Close() end)
	sel:SetChoices(sel.choices)
	if opts.value ~= nil then sel:Select(opts.value, true) end
	return sel
end

-- --- Switch ---------------------------------------------------------------------------------------------------------------

---A 44 x 26 pill: the track is surface-3 (accent when on), the thumb a circle that slides in 200 ms; on, the thumb sits on
---the right and the track is filled, so the state is a position as well as a colour. opts: on (bool), onChange(on, user)
---after a click or :SetOn(v) without `silent`. :IsOn(), :SetOn(v, silent), :SetEnabled(bool).
function W.Switch(parent, opts)
	opts = opts or {}
	local b = CreateFrame("CheckButton", nil, parent)
	b:SetSize(44, 26)
	b.track = Theme.Slice(b, "rr_fill_12", "surface-3", "BACKGROUND")
	b.track:SetAllPoints(b)
	b.ring = Theme.Slice(b, "rr_ring_12", "text-3", "BORDER")
	b.ring:SetAllPoints(b)
	b.thumb = b:CreateTexture(nil, "ARTWORK")
	b.thumb:SetTexture(Assets.textures.circle.path)
	b.thumb:SetSize(18, 18)
	Theme.Tint(b.thumb, "text-2")
	b.on = false
	local function thumbAt(x)
		b.thumb:ClearAllPoints()
		b.thumb:SetPoint("LEFT", b, "LEFT", x, 0)
	end
	thumbAt(4)
	local function paint()
		if b.on then
			Theme.Tint(b.track, "accent"); Theme.Tint(b.ring, "accent"); Theme.Tint(b.thumb, "on-accent")
		else
			Theme.Tint(b.track, "surface-3"); Theme.Tint(b.ring, "text-3"); Theme.Tint(b.thumb, "text-2")
		end
	end
	function b:IsOn() return self.on end
	function b:SetOn(v, silent)
		v = v and true or false
		if v == self.on then return end
		self.on = v
		paint()
		local to, from = v and 22 or 4, v and 4 or 22
		Motion.Slide(self.thumb, to - from, 0, Motion.BASE, function() thumbAt(to) end)
		if not silent and opts.onChange then opts.onChange(v, true) end
	end
	local setEnabled = b.SetEnabled
	function b:SetEnabled(enabled)
		setEnabled(self, enabled and true or false)
		self:SetAlpha(enabled and 1 or W.DISABLED_ALPHA)
	end
	b:SetScript("OnClick", function(self)
		if self:IsEnabled() then self:SetOn(not self.on) end
	end)
	if opts.on then b.on = true; paint(); thumbAt(22) else paint() end
	return b
end

-- --- Slider ---------------------------------------------------------------------------------------------------------------

-- The track is text-3 (#183: a control is 3:1 against the window in both themes, Tests/TestKeyboard.lua), the part up to
-- the thumb the accent, the thumb a text-1 circle; a scale with negative values has a mark on zero.
W.SLIDER_TRACK = "text-3"
W.SLIDER_STEP_BUTTON, W.SLIDER_GAP = 24, 4   -- the "-" and "+" of a slider: 24x24 targets (#183)

-- Cursore a trascinamento, solo con texture (nessun modello): una barra, un indicatore e, per le scale con valori negativi,
-- un segno sullo zero. `onChange(valore, finale)` parte a ogni movimento (finale = false) e al rilascio del mouse
-- (finale = true): chi salva i dati lo fa nel secondo caso. Anche i test e la tastiera usano :Set(v, final).
-- #183: the mouse wheel moves it by one step; with `opts.buttons` it carries its own "-" and "+" (24x24) at the ends of
-- `width`, and the track is the space between them; `:Step(n)` moves by n steps, saved at once (final). The frame
-- follows the cursor (OnUpdate) only while the mouse button is down.
---@param parent table
---@param width number the whole width, buttons included
---@param min number
---@param max number
---@param onChange? fun(value: number, final: boolean)
---@param opts? { step?: number, buttons?: boolean }
---@return table slider
function W.Slider(parent, width, min, max, onChange, opts)
	opts = opts or {}
	local s = CreateFrame("Frame", nil, parent)
	s:SetSize(width, opts.buttons and W.SLIDER_STEP_BUTTON or 16)
	s:EnableMouse(true)
	local inset = opts.buttons and (W.SLIDER_STEP_BUTTON + W.SLIDER_GAP + 4) or 0
	s.min, s.max, s.value, s.width, s.inset = min, max, min, width - 2 * inset, inset
	s.step = opts.step or math.max(1, math.floor((max - min) / 20 + 0.5))
	local bar = s:CreateTexture(nil, "BACKGROUND")
	bar:SetPoint("LEFT", s, "LEFT", inset, 0)
	bar:SetSize(s.width, 4)
	Theme.Fill(bar, W.SLIDER_TRACK)
	s.bar = bar
	local origin = (min < 0 and max > 0) and (-min) / (max - min) or 0
	s.fillBar = s:CreateTexture(nil, "BORDER")
	s.fillBar:SetHeight(4)
	Theme.Fill(s.fillBar, "accent")
	if min < 0 and max > 0 then
		local zero = s:CreateTexture(nil, "ARTWORK")
		zero:SetPoint("CENTER", s, "LEFT", inset + s.width * origin, 0)
		zero:SetSize(2, 12)
		Theme.Fill(zero, "text-1")
		s.zero = zero
	end
	local thumb = s:CreateTexture(nil, "OVERLAY")
	thumb:SetTexture(Assets.textures.circle.path)
	thumb:SetSize(14, 14)
	Theme.Tint(thumb, "text-1")
	s.thumb = thumb

	local function Place()
		local f = (s.value - s.min) / (s.max - s.min)
		thumb:ClearAllPoints()
		thumb:SetPoint("CENTER", s, "LEFT", s.inset + s.width * f, 0)
		local a, b = math.min(origin, f), math.max(origin, f)
		s.fillBar:ClearAllPoints()
		s.fillBar:SetPoint("LEFT", s, "LEFT", s.inset + s.width * a, 0)
		s.fillBar:SetWidth(math.max(s.width * (b - a), 1))
		s.fillBar:SetShown(b - a > 0)
	end

	---@param v number
	---@param final? boolean
	function s:Set(v, final)
		v = math.max(self.min, math.min(self.max, math.floor((tonumber(v) or self.min) + 0.5)))
		self.value = v
		Place()
		if onChange then onChange(v, final == true) end
	end
	---Imposta il valore senza chiamare onChange (per ridisegnare la finestra).
	---@param v number
	function s:SetQuiet(v)
		self.value = math.max(self.min, math.min(self.max, tonumber(v) or self.min))
		Place()
	end
	---Moves by `n` steps (the "-" and "+", the wheel) and saves at once.
	---@param n number
	function s:Step(n)
		self:Set(self.value + n * self.step, true)
	end
	local function FromCursor()
		local x = NS.Compat.SafeCall("GetCursorPosition")
		local scale = s:GetEffectiveScale()
		local left = s:GetLeft()
		if type(x) ~= "number" or type(scale) ~= "number" or type(left) ~= "number" or scale == 0 then return nil end
		local f = math.max(0, math.min(1, (x / scale - left - s.inset) / s.width))
		return s.min + f * (s.max - s.min)
	end
	-- #183: follows the cursor only while dragging; idle, the slider costs nothing per frame
	local function Follow()
		local v = FromCursor()
		if v then s:Set(v, false) end
	end
	local function StopFollowing()
		s.dragging = false
		s:SetScript("OnUpdate", nil)
	end
	s:SetScript("OnMouseDown", function()
		s.dragging = true
		s:SetScript("OnUpdate", Follow)
		Follow()
	end)
	s:SetScript("OnMouseUp", function()
		if not s.dragging then return end
		StopFollowing()
		local v = FromCursor()
		s:Set(v or s.value, true)
	end)
	-- a window closed while the button is down ends the drag where it is
	s:SetScript("OnHide", function()
		if s.dragging then
			StopFollowing()
			s:Set(s.value, true)
		end
	end)
	if s.EnableMouseWheel then s:EnableMouseWheel(true) end
	s:SetScript("OnMouseWheel", function(_, delta) s:Step(delta > 0 and 1 or -1) end)
	if opts.buttons then
		s.minus = W.FlatButton(s, "-", W.SLIDER_STEP_BUTTON, W.SLIDER_STEP_BUTTON, function() s:Step(-1) end)
		s.minus:SetPoint("LEFT", s, "LEFT", 0, 0)
		s.plus = W.FlatButton(s, "+", W.SLIDER_STEP_BUTTON, W.SLIDER_STEP_BUTTON, function() s:Step(1) end)
		s.plus:SetPoint("RIGHT", s, "RIGHT", 0, 0)
	end
	Place()
	return s
end
