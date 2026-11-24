-- Tests of the widgets of the NEBULA look (UI-ECO step UI-3): the button kinds, the window shell (52-unit title bar,
-- logo, capitals, subtitle, status chip, close box, Esc, the position kept per character), the theme switch that
-- recolours every widget and the texts it adopts, the addon's own tooltip, the controls (Tabs, Segmented, Chip, Badge,
-- ChoiceList, Select, Switch, Slider, EditBox, Dialog, Toast, ThinBar) and the DataTable with its three backends.
-- Only the mock client: nothing here has run in the game, so the look, the fonts, the 9-slice shapes, the glows, the
-- animations, the ScrollBox and the FauxScrollFrame are predictions until the owner tries them.
local NS = ...
local W, Theme, Config = NS.Widgets, NS.Theme, NS.Config

local function Near(a, b) return math.abs(a - b) < 1e-6 end
local function Is(c, token, id)
	local r, g, b = Theme.Color(token, id)
	return c ~= nil and Near(c[1], r) and Near(c[2], g) and Near(c[3], b)
end

local function Reset()
	NS.db.ui.theme, NS.db.ui.neon, NS.db.ui.animations, NS.db.ui.fontSource = "nebula", true, true, "addon"
	NS.db.ui.narrator.reduceMotion = false
	Theme.Apply("nebula")
	FINISH_ANIMATIONS()
end

---------------------------------------------------------------------------
-- buttons
---------------------------------------------------------------------------
T.run("UI-3: the six button kinds, the default boxed kind, selected and armed in shapes", function()
	Reset()
	for _, kind in ipairs({ "primary", "secondary", "ghost", "neon", "danger", "text" }) do
		T.ok(W.BUTTON_KINDS[kind] ~= nil, kind .. ": a kind")
		local b = W.FlatButton(UIParent, "Go", 100, 24, nil, kind)
		T.eq(b.style, kind, kind .. ": made")
		T.ok(Is(b.label._s.textColor, W.BUTTON_KINDS[kind].ink), kind .. ": the label in its token")
	end
	local d = W.FlatButton(UIParent, "Go", 100, 24)
	T.eq(d.style, "secondary", "no kind: secondary, a boxed button")
	T.ok(d.fill:IsShown() and d.ring:IsShown(), "with a fill and a ring")
	local p = W.FlatButton(UIParent, "Go", 100, 24, nil, "primary")
	T.ok(p.fill._s.gradient ~= nil and p.fill._s.gradient[1] == "HORIZONTAL", "primary: the accent gradient")
	T.ok(p.glow ~= nil and p.glow._glow, "primary: the accent glow")
	local t = W.FlatButton(UIParent, "Skip", 100, 24, nil, "text")
	T.ok(not t.fill:IsShown() and not t.ring:IsShown(), "text: no box")
	T.eq(t.label._s.points[1][1], "LEFT", "text: the label on the left")
	local g = W.FlatButton(UIParent, "Tab", 100, 24, nil, "ghost")
	g:SetSelected(true)
	T.ok(g.bar:IsShown() and Is(g.ring._s.vertex, "accent") and g.ring:IsShown(), "selected: the accent ring and a bar, not a colour only")
	local x = W.FlatButton(UIParent, "Forget", 100, 24, nil, "danger")
	x:SetArmed(true)
	T.ok(x.fill:IsShown() and Is(x.fill._s.vertex, "err") and Is(x.label._s.textColor, "on-accent"), "danger armed: filled with err")
	x:SetStyle("secondary")
	T.eq(x.style, "secondary", "SetStyle changes the kind")
	T.ok(not x.fill._s.gradient or x.style ~= "primary", "and a gradient only for primary")
	x:SetStyle("text")
	T.eq(x.style, "secondary", "a boxed button never becomes a text one")
	x:SetEnabled(false)
	T.ok(x.disabled and not x:IsEnabled() and x:GetAlpha() == W.DISABLED_ALPHA, "disabled: dimmed")
	-- hover and pressed: the white layer fades to 8 % and 12 %
	d.scripts.OnEnter(d)
	FINISH_ANIMATIONS()
	T.ok(Near(d.over:GetAlpha(), W.HOVER), "hover: 8 %")
	d.scripts.OnMouseDown(d)
	FINISH_ANIMATIONS()
	T.ok(Near(d.over:GetAlpha(), W.PRESSED), "pressed: 12 %")
	d.scripts.OnMouseUp(d); d.scripts.OnLeave(d)
	FINISH_ANIMATIONS()
	T.ok(Near(d.over:GetAlpha(), 0), "left: none")
end)

T.run("UI-3: every widget button is a 24-unit target, every text 12 units or more", function()
	Reset()
	local host = CreateFrame("Frame", nil, UIParent)
	W.Tabs(host, { { id = "a", text = "A" }, { id = "b", text = "Bb" } })
	W.Segmented(host, { { id = "x", text = "X" }, { id = "y", text = "Y" } })
	W.Chip(host, { text = "c" })
	W.ChoiceList(host, { rows = 3 }):SetChoices({ { id = 1, text = "one" } })
	W.TitleBar(host, {})
	W.Dialog(host, nil)
	W.DataTable(host, { { id = "n", title = "N", width = 10, text = function(d) return d end } }, { pool = 3, rowHeight = 10, headerHeight = 10 })
	W.Slider(host, 200, 0, 10, nil, { buttons = true })
	local small, tiny = {}, {}
	local function walk(f)
		for _, c in ipairs(f.children or {}) do
			if c.kind == "Button" and ((c._s.w and c._s.w < 24) or (c._s.h and c._s.h < 24)) and c.scripts.OnClick then
				table.insert(small, tostring(c._s.w) .. "x" .. tostring(c._s.h))
			end
			if c.kind == "FontString" and c._s.fontObj then
				local size = c:FontSize()
				if size < 12 then table.insert(tiny, tostring(size)) end
			end
			walk(c)
		end
	end
	walk(host)
	T.eq(#small, 0, "no clickable button under 24x24: " .. table.concat(small, ", "))
	T.eq(#tiny, 0, "no text under 12: " .. table.concat(tiny, ", "))
end)

---------------------------------------------------------------------------
-- the window shell
---------------------------------------------------------------------------
T.run("UI-3: the shell: 52-unit bar above the frame, logo, capitals, subtitle, status chip, close box, Esc", function()
	Reset()
	local f = W.Window(UIParent, 400, 300, "mem_title", { name = "AzerothUnspokenTestShell", point = { "CENTER", 10, 20 } })
	T.ok(not f:IsShown(), "hidden when made")
	f:Show()
	T.eq(f.titleBar:GetHeight(), W.TITLEBAR, "52 units")
	T.eq(W.TITLEBAR - W.BAND, W.BAR_ABOVE, "the bar rises above the frame by the difference")
	local p = f.titleBar._s.points[1]
	T.ok(p[1] == "TOPLEFT" and p[2] == f and p[5] == W.BAR_ABOVE, "anchored above the frame's top, so the contents keep their place")
	T.eq(f.auTopExtra, W.BAR_ABOVE, "the windows' layering counts the bar")
	T.eq(f.title:GetText(), NS:L("mem_title"):upper(), "the window's name in capitals")
	T.eq(f.title._s.fontObj, Theme.Font("DisplaySmall"), "in the display font (Orbitron)")
	T.eq(f.subtitle._s.fontObj, Theme.Font("MonoSmall"), "a mono subtitle")
	T.ok(f.subtitle:GetText():find(NS.version, 1, true) ~= nil, "with the version")
	T.eq(f.titleBar.logo._s.texture, NS.Assets.textures.logo_64.path, "the addon's own round logo")
	T.eq(f.titleBar.logo._s.vertex, nil, "never tinted")
	T.ok(not f.titleBar.status:IsShown(), "no status chip until one is set")
	f:SetStatus("2/7", "accent")
	T.ok(f.titleBar.status:IsShown() and f.titleBar.status.label:GetText() == "2/7", "a status chip")
	f:SetStatus(nil)
	T.ok(not f.titleBar.status:IsShown(), "and it goes away")
	T.ok(f.closeBox:GetWidth() >= 24 and f.closeBox:GetHeight() >= 24, "the close box is a 24-unit target")
	f.closeBox:Click()
	T.ok(not f:IsShown(), "the close box closes it")
	f:Show()
	PRESS_ESCAPE()
	T.ok(not f:IsShown(), "Esc closes it")
	-- the window's shape covers the bar too
	local fp = f.chrome.fill._s.points
	T.ok(fp[1][1] == "TOPLEFT" and fp[1][5] == W.BAR_ABOVE, "the shape starts at the top of the bar")
	T.ok(f.chrome.shadow ~= nil, "a soft shadow")
end)

T.run("UI-3: a window keeps its place for this character, and Reset window positions forgets it", function()
	Reset()
	NS.cdb.windows = {}
	local f = W.Window(UIParent, 300, 200, "mem_title", { name = "AzerothUnspokenTestPlace", point = { "CENTER", 0, 0 } })
	f:Show()
	f:ClearAllPoints()
	f:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 40, 60)
	f.titleBar.scripts.OnDragStart(f.titleBar)
	f.titleBar.scripts.OnDragStop(f.titleBar)
	local saved = NS.cdb.windows.AzerothUnspokenTestPlace
	T.ok(saved ~= nil and saved[3] == 40 and saved[4] == 60, "dragged by its title bar: saved for this character")
	T.ok(f.auMoved, "and counted as moved (no cascade)")
	T.eq(#Config:Validate(NS.cdb, Config.characterDefaults, "character"), 0, "a valid entry of the character's data")
	-- the next session: the frame is made again and opens where it was left
	local g = W.Window(UIParent, 300, 200, "mem_title", { name = "AzerothUnspokenTestPlace", point = { "CENTER", 0, 0 } })
	g:Show()
	T.eq(g:GetLeft(), 40, "restored: left")
	T.eq(g:GetBottom(), 60, "restored: bottom")
	-- a broken entry is dropped by the validation and the window opens at its first place
	NS.cdb.windows.AzerothUnspokenBroken = { "BOTTOMLEFT", "BOTTOMLEFT", 0 / 0, 4 }
	Config:Validate(NS.cdb, Config.characterDefaults, "character")
	T.eq(NS.cdb.windows.AzerothUnspokenBroken, nil, "a broken position is removed")
	W.ResetPositions()
	T.eq(next(NS.cdb.windows), nil, "Reset window positions forgets every place")
	T.eq(g._s.points[1][1], "CENTER", "and the window goes back to its first place")
	f:Hide(); g:Hide()
	NS.cdb.windows = {}
end)

T.run("UI-3: the windows' texts take the theme's colours; the narrator's sample keeps its own", function()
	Reset()
	local f = W.Window(UIParent, 300, 200, "mem_title", { name = "AzerothUnspokenTestAdopt" })
	local gold = f:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	local white = f:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	local small = f:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	local keep = CreateFrame("Frame", nil, f)
	keep.auKeepColours = true
	local sample = keep:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	local edit = CreateFrame("EditBox", nil, f)
	f:Show()
	T.ok(Is(gold._s.textColor, "accent-text"), "the game's gold becomes accent-text")
	T.ok(Is(white._s.textColor, "text-1"), "the game's white becomes text-1")
	T.ok(Is(small._s.textColor, "text-2"), "the small white becomes text-2")
	T.ok(Is(edit._s.textColor, "text-1"), "an edit box's text too")
	T.eq(sample._s.textColor, nil, "a frame that keeps its colours is left alone")
	T.eq(W.Adopt(f), 0, "a second pass adopts nothing new")
	Config:Set("ui.theme", "aurora")
	T.ok(Is(white._s.textColor, "text-1", "aurora") and Is(gold._s.textColor, "accent-text", "aurora"), "Aurora recolours them without a reload")
	T.ok(Is(f.chrome.fill._s.vertex, "bg", "aurora"), "and the window's surface")
	T.ok(Is(f.title._s.textColor, "text-1", "aurora"), "and its title")
	Config:Set("ui.theme", "nebula")
	T.ok(Is(white._s.textColor, "text-1", "nebula"), "back to Nebula")
	T.eq(W.Hex("text-3"), ("|cff%02x%02x%02x"):format(0x9a, 0x8f, 0xab), "W.Hex: the colour code of a token in the current theme")
	f:Hide()
end)

T.run("UI-3: a theme switch recolours every widget, the neon setting hides the glows", function()
	Reset()
	local host = CreateFrame("Frame", nil, UIParent)
	local b = W.FlatButton(host, "Go", 100, 24, nil, "primary")
	local s = W.FlatButton(host, "Go", 100, 24)
	local card = W.Card(host, 200, 60)
	local tabs = W.Tabs(host, { { id = "a", text = "A" }, { id = "b", text = "B" } })
	tabs:Select("a")
	local chip = W.Chip(host, { text = "c" })
	local sw = W.Switch(host, { on = true })
	local bar = W.ThinBar(host, { width = 100 })
	bar:SetFraction(0.5)
	Config:Set("ui.theme", "aurora")
	T.ok(Is(s.fill._s.vertex, "surface-3", "aurora") and Is(s.label._s.textColor, "text-1", "aurora"), "secondary button")
	T.ok(Is(b.label._s.textColor, "on-accent", "aurora"), "primary label")
	local gr = b.fill._s.gradient
	local ar = Theme.Color("accent", "aurora")
	T.ok(gr and (gr[2].r or gr[2][1]) and Near(gr[2].r or 0, ar), "primary gradient in Aurora's accent")
	T.ok(Is(card.parts.fill._s.vertex, "surface-1", "aurora") and Is(card.title._s.textColor, "text-1", "aurora"), "card")
	T.ok(Is(tabs.indicator._s.colorTex, "accent", "aurora"), "tab indicator")
	T.ok(Is(chip.ring._s.vertex, "border", "aurora"), "chip")
	T.ok(Is(sw.track._s.vertex, "accent", "aurora"), "switch on")
	T.ok(Is(bar.fill._s.colorTex, "accent", "aurora"), "thin bar")
	T.eq(b.glow._s.blend, "BLEND", "a glow is a soft shadow in the light theme")
	Config:Set("ui.theme", "nebula")
	T.eq(b.glow._s.blend, "ADD", "and additive in the dark one")
	Config:Set("ui.neon", false)
	T.ok(not b.glow:IsShown(), "neon off: no glow")
	Config:Set("ui.neon", true)
	T.ok(b.glow:IsShown(), "neon on: back")
end)

T.run("UI-3: the addon's own tooltip, and a clipped button shows its whole label", function()
	Reset()
	local b = W.FlatButton(UIParent, "Go", 100, 24)
	W.Tooltip(b, "First")
	W.Tooltip(b, function() return "Second" end)
	b.scripts.OnEnter(b)
	T.eq(W.TipText(), "Second", "the text given last")
	T.ok(b.hover, "the button's own hover is kept")
	b.scripts.OnLeave(b)
	T.eq(W.TipText(), "", "hidden on leave")
	local long = W.FlatButton(UIParent, string.rep("word ", 30), 60, 24)
	W.FitButton(long, 60, 120)
	T.ok(long.auClipped, "a label wider than the room is cut")
	long.scripts.OnEnter(long)
	T.eq(W.TipText(), string.rep("word ", 30), "and the tooltip has it all")
	long.scripts.OnLeave(long)
	W.ShowTip(b, "")
	T.eq(W.TipText(), "", "an empty text shows nothing")
end)

---------------------------------------------------------------------------
-- controls
---------------------------------------------------------------------------
T.run("UI-3: Tabs, Segmented, Chip, Badge, ChoiceList, Select, Switch, EditBox", function()
	Reset()
	local host = CreateFrame("Frame", nil, UIParent)
	local picked
	local tabs = W.Tabs(host, { { id = "a", text = "Alpha" }, { id = "b", text = "Beta" } }, function(id) picked = id end)
	T.ok(tabs:Select("b") and picked == "b" and tabs:Active() == "b", "a tab is chosen")
	T.ok(tabs.indicator:IsShown(), "with the 2-unit bar under it")
	T.ok(Is(tabs.buttons.b.label._s.textColor, "text-1") and Is(tabs.buttons.a.label._s.textColor, "text-3"), "active text-1, others text-3")
	tabs:SetTabShown("b", false)
	T.eq(tabs:Active(), "a", "hiding the active tab moves to another")
	local seg = W.Segmented(host, { { id = 1, text = "One" }, { id = 2, text = "Two" } })
	seg:Select(2)
	T.ok(seg.thumb:IsShown() and seg.thumbRing:IsShown() and seg:Active() == 2, "a raised segment with its ring")
	seg:Clear()
	T.ok(not seg.thumb:IsShown() and seg:Active() == nil, "none")
	local chip = W.Chip(host, { text = "Tag", onClick = function(c) c:SetSelected(not c:IsSelected()) end })
	chip:Click()
	T.ok(chip:IsSelected() and Is(chip.fill._s.vertex, "accent"), "a chip: filled when selected")
	local badge = W.Badge(host, "Live", "ok")
	T.ok(Is(badge.label._s.textColor, "ok") and badge:GetWidth() >= 24 and badge:GetHeight() == 24, "a badge")
	local chosen
	local list = W.ChoiceList(host, { rows = 2, onSelect = function(id) chosen = id end })
	list:SetChoices({ { id = "x", text = "X" }, { id = "y", text = "Y" }, { id = "z", text = "Z" } })
	list.rows[2]:Click()
	T.eq(chosen, "y", "a row is chosen")
	T.ok(list.rows[2].dot._s.vertex[4] == 1 and list.rows[1].dot._s.vertex[4] == 0, "a dot marks it, not a colour only")
	list:Scroll(1)
	T.eq(list.rows[2].choice.id, "z", "the wheel scrolls")
	local sel = W.Select(host, { choices = { { id = 1, text = "One" }, { id = 2, text = "Two" } }, placeholder = "-" })
	T.eq(sel.label:GetText(), "-", "the placeholder")
	sel:Click()
	T.ok(sel:IsOpen(), "opens")
	sel.list.rows[2]:Click()
	T.ok(sel:Selected() == 2 and not sel:IsOpen() and sel.label:GetText() == "Two", "a choice closes it")
	local changes = {}
	local sw = W.Switch(host, { onChange = function(on) table.insert(changes, on) end })
	sw:Click()
	FINISH_ANIMATIONS()
	T.ok(sw:IsOn() and changes[1] == true, "the switch turns on")
	T.eq(sw.thumb._s.points[1][4], 22, "its thumb on the right: a position, not a colour only")
	local box = W.EditBox(host, 120, 24)
	T.eq(box.kind, "EditBox", "W.EditBox is still the edit box itself")
	box.scripts.OnEditFocusGained(box)
	T.ok(Is(box.ring._s.vertex, "accent"), "focus: the accent ring")
	box.scripts.OnEditFocusLost(box)
	T.ok(Is(box.ring._s.vertex, "border"), "and back")
	box:SetFocus()
	box.scripts.OnEscapePressed(box)
	T.ok(not box:HasFocus(), "Esc gives the keyboard back")
end)

T.run("UI-3: the Dialog asks, Esc cancels; the Toast fades after its time", function()
	Reset()
	local host = CreateFrame("Frame", nil, UIParent)
	local d = W.Dialog(host, "AzerothUnspokenTestDialog")
	T.ok(not d:IsShown(), "hidden when made")
	local said = {}
	local function Ask(danger)
		d:Ask({ title = "Forget?", text = "Gone for good.", confirm = "Forget", cancel = "Keep", danger = danger,
			onConfirm = function() table.insert(said, "yes") end, onCancel = function() table.insert(said, "no") end })
	end
	Ask(true)
	T.ok(d:IsShown() and d:GetFrameStrata() == "DIALOG", "on the DIALOG layer")
	T.eq(d.confirm.style, "danger", "an irreversible answer is a danger button")
	d.confirm:Click()
	T.eq(said[1], "yes", "confirmed")
	T.ok(not d:IsShown(), "and closed")
	Ask(false)
	T.eq(d.confirm.style, "primary", "a plain question")
	PRESS_ESCAPE()
	T.eq(said[2], "no", "Esc cancels")
	Ask(false)
	d.cancel:Click()
	T.eq(said[3], "no", "Cancel cancels")
	T.eq(#said, 3, "one answer each time")
	local toast = W.Toast(host)
	toast:Say("Saved", "ok", 4)
	FINISH_ANIMATIONS()
	T.ok(toast:IsShown() and toast:Message() == "Saved" and Is(toast.dot._s.vertex, "ok"), "a toast")
	ADVANCE(5)
	FINISH_ANIMATIONS()
	T.ok(not toast:IsShown(), "gone after its time")
	toast:Say("Again")
	toast:Dismiss()
	T.ok(not toast:IsShown(), "dismissed at once")
end)

-- UI-ECO UI-5: the tabs' bar slides, a tab can be added later, the DataTable can sort in one column or in none, hide its
-- header and clear its sort, and the Dialog's Esc cancels without closing the window under it.
T.run("UI-5: the tab bar slides from the old tab to the new one, and rests under it", function()
	Reset()
	local host = CreateFrame("Frame", nil, UIParent)
	local picked = {}
	local tabs = W.Tabs(host, { { id = "a", text = "Alpha" }, { id = "b", text = "Beta" } }, function(id) table.insert(picked, id) end)
	T.ok(tabs:Select("a"), "the first tab")
	T.eq(tabs.indicator._s.points[1][2], tabs.buttons.a, "the bar rests under it")
	T.eq(tabs.buttons.b.auX, tabs.buttons.a:GetWidth() + 4, "the tabs follow each other, 4 units apart")
	tabs:Select("b")
	-- the animation: the bar starts where it was (under a, as wide as b's bar) and moves by the distance between the tabs
	T.eq(tabs.indicator._s.points[1][2], tabs, "while it slides it is anchored to the bar, at the old tab's place")
	T.eq(tabs.indicator._s.points[1][4], 8, "starting at the left of the old tab, with its 8-unit inset")
	T.ok(PLAYING_GROUPS ~= nil and next(PLAYING_GROUPS) ~= nil, "a Translation is playing")
	FINISH_ANIMATIONS()
	T.eq(tabs.indicator._s.points[#tabs.indicator._s.points][2], tabs.buttons.b, "at the end it rests under b")
	T.eq(tabs:Width(), tabs.buttons.a:GetWidth() + tabs.buttons.b:GetWidth() + 4, "the width the tabs take")
	-- animations off: at once, with no group
	Config:Set("ui.animations", false)
	tabs:Select("a")
	T.eq(tabs.indicator._s.points[#tabs.indicator._s.points][2], tabs.buttons.a, "animations off: under a at once")
	Config:Set("ui.animations", true)
	-- too many tabs for the room: the room around each text goes from 32 to 16 units, no further, and back when they fit
	tabs:SetTabText("a", "A rather long name")
	tabs:SetTabText("b", "Another long name")
	local roomy = tabs:Width()
	tabs:Fit(roomy - 20)
	T.ok(tabs.pad < 32 and tabs.pad >= 16 and tabs:Width() <= roomy - 20, "Fit squeezes the tabs to the room: " .. tabs:Width() .. " <= " .. (roomy - 20))
	tabs:Fit(10)
	T.eq(tabs.pad, 16, "but no further than 16 units around a text")
	tabs:Fit(2000)
	T.eq(tabs.pad, 32, "and the roomy look when there is room")
	-- a tab added later (a window whose tabs other modules register), no duplicate
	T.ok(tabs:AddTab("c", "Gamma") and not tabs:AddTab("c", "Gamma"), "a new tab, once")
	tabs:SetTabText("c", "Gamma")
	T.ok(tabs.buttons.c:IsShown() and tabs.buttons.c.auX > tabs.buttons.b.auX, "after the others")
	tabs:Select("c")
	FINISH_ANIMATIONS()
	T.eq(picked[#picked], "c", "and it can be chosen")
end)

T.run("UI-5: the DataTable: no sort, one column that does not sort, a header that hides", function()
	Reset()
	local columns = {
		{ id = "name", title = "Name", flex = 1, text = function(d) return d.name end },
		{ id = "n", title = "Count", width = 80, mono = true, align = "RIGHT", text = function(d) return d.n end },
		{ id = "acts", title = "", width = 40, sortable = false, text = function() return "" end },
	}
	local t = W.DataTable(UIParent, columns, { pool = 6 })
	local data = { { name = "b", n = 2 }, { name = "a", n = 3 }, { name = "c", n = 1 } }
	t:SetData(data)
	T.eq(t:GetSort(), nil, "no sort at first: the order of the data")
	T.eq(t:VisibleRows()[1].data.name, "b", "as given")
	t.heads[2]:Click()
	T.eq(t:GetSort(), "n", "sorted by a column")
	t:ClearSort()
	T.eq(t:GetSort(), nil, "ClearSort: no column is the sorted one")
	T.ok(not t.heads[2].arrow:IsShown() and Is(t.heads[2].label._s.textColor, "text-3"), "no arrow, the header quiet again")
	T.eq(t:VisibleRows()[1].data.name, "b", "and the rows are in the order of the data")
	-- the column that does not sort has no click
	t.heads[3]:Click()
	T.eq(t:GetSort(), nil, "a column with sortable = false does nothing")
	-- a view read in order: nothing sorts
	t:SetSortable(false)
	t.heads[1]:Click()
	T.eq(t:GetSort(), nil, "SetSortable(false): the headers do not sort")
	t:SetSortable(true)
	t.heads[1]:Click()
	T.eq(t:GetSort(), "name", "and sort again when it is true")
	-- a hidden header: the list rises to the top
	t:SetHeaderShown(false)
	T.ok(not t.head:IsShown(), "the header is hidden")
	local p = t.list._s.points[1]
	T.ok(p[2] == t and p[3] == "TOPLEFT", "the list starts at the top of the table")
	t:SetHeaderShown(true)
	T.ok(t.head:IsShown() and t.list._s.points[1][2] == t.head, "and goes back under the header")
	-- the sorted data keeps its order across SetData; the empty text shows when there is nothing
	t:SetEmptyText("Nothing")
	t:SetData({})
	T.ok(t.empty:IsShown() and t.empty:GetText() == "Nothing", "the empty text")
end)

T.run("UI-5: the Dialog's Esc cancels the question and the key goes no further", function()
	Reset()
	local host = CreateFrame("Frame", nil, UIParent)
	local d = W.Dialog(host, "AzerothUnspokenTestDialog2")
	local said = {}
	d:Ask({ title = "Forget?", text = "Gone.", confirm = "Forget", cancel = "Keep", danger = true,
		onConfirm = function() table.insert(said, "yes") end, onCancel = function() table.insert(said, "no") end })
	T.ok(d._s.keyboard == true, "the dialog takes the keyboard while it is up")
	d.scripts.OnKeyDown(d, "A")
	T.ok(d:IsShown() and d._s.propagate == true, "another key goes on to the game")
	d.scripts.OnKeyDown(d, "ESCAPE")
	T.ok(not d:IsShown() and d._s.propagate == false, "Esc closes the dialog and stays with it")
	T.eq(table.concat(said, ","), "no", "as a cancel, once")
	-- a window under it stays open: the dialog hides itself, not the window
	local win = CreateFrame("Frame", nil, UIParent)
	win:Show()
	local d2 = W.Dialog(win, nil)
	d2:Ask({ title = "x", text = "y", confirm = "Yes", cancel = "No" })
	d2.scripts.OnKeyDown(d2, "ESCAPE")
	T.ok(win:IsShown() and not d2:IsShown(), "the window under the dialog stays")
end)

T.run("UI-3: Animations off makes every widget immediate", function()
	Reset()
	Config:Set("ui.animations", false)
	local host = CreateFrame("Frame", nil, UIParent)
	local b = W.FlatButton(host, "Go", 100, 24)
	b.scripts.OnEnter(b)
	T.ok(Near(b.over:GetAlpha(), W.HOVER), "hover at once")
	local sw = W.Switch(host, {})
	sw:Click()
	T.eq(sw.thumb._s.points[1][4], 22, "the switch at once")
	local d = W.Dialog(host)
	d:Open()
	T.eq(d.card:GetAlpha(), 1, "the dialog at once")
	Config:Set("ui.animations", true)
end)

T.run("UI-3: the Slider's track keeps 3:1 and the value fills from zero", function()
	Reset()
	local s = W.Slider(UIParent, 200, -100, 100, nil, {})
	s:SetQuiet(50)
	T.ok(s.zero ~= nil, "a mark on zero")
	T.ok(s.fillBar:IsShown() and Near(s.fillBar:GetWidth(), 50), "filled from zero to the value")
	s:SetQuiet(0)
	T.ok(not s.fillBar:IsShown(), "nothing at zero")
	T.ok(Is(s.bar._s.colorTex, W.SLIDER_TRACK), "the track in its token")
end)

---------------------------------------------------------------------------
-- the DataTable
---------------------------------------------------------------------------
local COLUMNS = {
	{ id = "name", title = "Name", flex = 1, text = function(d) return d.name end },
	{ id = "n", title = "Count", width = 80, mono = true, align = "RIGHT", text = function(d) return d.n end },
}
local function Data(n)
	local out = {}
	for i = 1, n do out[i] = { name = "Row " .. string.char(64 + (i % 26) + 1), n = i } end
	return out
end

T.run("UI-3: the DataTable (pool): header outside the list, sort with an arrow, mono numbers, scroll", function()
	Reset()
	local clicked
	local t = W.DataTable(UIParent, COLUMNS, { pool = 5, onRowClick = function(d) clicked = d end })
	T.eq(t:Backend(), "pool", "the mock has no ScrollBox and no FauxScrollFrame: the pool")
	T.eq(t.heads[1].label:GetText(), "NAME", "headers in capitals")
	t:SetEmptyText("Nothing")
	t:SetData({})
	T.ok(t.empty:IsShown(), "an empty table says so")
	t:SetData(Data(12))
	T.eq(#t:VisibleRows(), 5, "five rows from the pool")
	T.ok(t:SortBy("n", true), "sort by a column")
	T.eq(t:VisibleRows()[1].data.n, 12, "descending")
	T.ok(t.heads[2].arrow:IsShown() and Is(t.heads[2].label._s.textColor, "accent-text"), "the sorted column: accent-text and an arrow")
	T.ok(not t.heads[1].arrow:IsShown(), "only that one")
	t.heads[2]:Click()
	T.eq(t:VisibleRows()[1].data.n, 1, "a second click: ascending")
	local cell = t:VisibleRows()[1].cells[2]
	T.ok(cell._s.fontObj == Theme.Font("Mono") and Is(cell._s.textColor, "accent-text"), "numbers in mono, accent-text")
	t:SetOffset(3)
	T.eq(t:VisibleRows()[1].data.n, 4, "scrolled")
	t.list.scripts.OnMouseWheel(t.list, 1)
	T.eq(t:VisibleRows()[1].data.n, 1, "the wheel")
	t:VisibleRows()[2]:Click()
	T.eq(clicked and clicked.n, 2, "a row click gives its data")
	Config:Set("ui.theme", "aurora")
	T.ok(Is(t.head.fill._s.vertex, "surface-2", "aurora"), "the header follows the theme")
	Config:Set("ui.theme", "nebula")
end)

T.run("UI-3: the DataTable uses the FauxScrollFrame when the client has it", function()
	Reset()
	local updates, scrolled = {}, 0
	FauxScrollFrame_Update = function(frame, total, shown, h) table.insert(updates, { total, shown, h }) end
	FauxScrollFrame_OnVerticalScroll = function(frame, value, h, fn) frame.offset = math.floor(value / h + 0.5); scrolled = scrolled + 1; fn() end
	FauxScrollFrame_GetOffset = function(frame) return frame.offset or 0 end
	T.eq(W.TableBackend(), "faux", "chosen")
	local t = W.DataTable(UIParent, COLUMNS, { pool = 5 })
	T.eq(t:Backend(), "faux", "the table uses it")
	T.ok(t.scroll ~= nil and t.scroll.name ~= nil, "a named scroll frame (the template names its parts)")
	t:SetData(Data(20))
	T.ok(#updates >= 1 and updates[#updates][1] == 20 and updates[#updates][2] == 5, "the scroll bar knows 20 rows, 5 shown")
	t.scroll.scripts.OnVerticalScroll(t.scroll, 6 * t.rowH)
	T.eq(t:VisibleRows()[1].data.n, 7, "dragging the bar scrolls the rows")
	FauxScrollFrame_Update, FauxScrollFrame_OnVerticalScroll, FauxScrollFrame_GetOffset = nil, nil, nil
end)

T.run("UI-3: the DataTable uses the ScrollBox and a DataProvider, and falls back when it fails", function()
	Reset()
	local made = {}
	CreateScrollBoxListLinearView = function()
		local v = {}
		function v:SetElementExtent(h) self.extent = h end
		function v:SetElementInitializer(kind, fn) self.kind, self.init = kind, fn end
		return v
	end
	CreateDataProvider = function(list) return { list = list } end
	local realCreate = CreateFrame
	CreateFrame = function(kind, name, parent, template)
		local f = realCreate(kind, name, parent, template)
		if template == "WowScrollBoxList" then
			table.insert(made, f)
			f.frames = {}
			function f:Init(view) self.view = view end
			function f:SetDataProvider(dp)
				if self.broken then error("broken ScrollBox") end
				self.dp = dp
				for i, d in ipairs(dp.list) do
					self.frames[i] = self.frames[i] or realCreate(self.view.kind, nil, self)
					self.view.init(self.frames[i], d)
				end
			end
			function f:ForEachFrame(fn) for _, r in ipairs(self.frames) do fn(r) end end
		end
		return f
	end
	T.eq(W.TableBackend(), "scrollbox", "chosen first")
	local t = W.DataTable(UIParent, COLUMNS, {})
	T.eq(t:Backend(), "scrollbox", "the table uses it")
	T.eq(made[1].view.extent, t.rowH, "rows of the table's height")
	t:SetData(Data(3))
	T.eq(#made[1].dp.list, 3, "the data goes through a DataProvider")
	T.eq(#t:VisibleRows(), 3, "and the ScrollBox's frames are the rows")
	T.eq(t:VisibleRows()[1].cells[1]:GetText(), "Row B", "filled by the initializer")
	made[1].broken = true
	t:SetData(Data(4))
	T.eq(t:Backend(), "pool", "a failing ScrollBox moves the table to the next backend for good")
	T.eq(#t:VisibleRows(), 4, "and the rows still show")
	CreateFrame = realCreate
	CreateScrollBoxListLinearView, CreateDataProvider = nil, nil
	T.eq(W.TableBackend(), "pool", "the mock is clean again")
end)
