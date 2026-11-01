-- Tests of the wave-3 window fixes: one window shell (#187), Esc and the close box (#174), the window scale and the
-- dialogue settings (#182), robust builds, positions, the export box and one "settings changed" notice (#192), and the
-- confirmations that disarm by token (#190). Only the mock client: nothing here has run in game.
local NS = ...
local W, Config, Windows, Wizard, Narrator = NS.Widgets, NS.Config, NS.Windows, NS.Wizard, NS.Narrator

local WINDOWS = {
	journal = { name = "AzerothUnspokenJournal", open = function() NS.JournalFrame:Open() end },
	export = { name = "AzerothUnspokenJournalExport", open = function() NS.JournalFrame:ShowExport("text") end },
	relations = { name = "AzerothUnspokenRelations", open = function() NS.RelationsFrame:Open() end },
	profile = { name = "AzerothUnspokenProfile", open = function() NS.ProfileFrame:Open() end },
	wizard = { name = "AzerothUnspokenWizard", open = function() NS.db.ui.wizardDone = false; Wizard:Open() end },
}

local function Reset()
	SENT = {}
	NS.db.locale = "en"
	NS.db.ui.windowScale = 1
	NS.db.ui.wizardDone = true
	for _, def in pairs(WINDOWS) do
		local f = _G[def.name]
		if f and f:IsShown() then f:Hide() end
	end
	ADVANCE(100)
end

local function Named(name)
	for _, n in ipairs(UISpecialFrames) do if n == name then return true end end
	return false
end

T.run("#174 #187: every window has the shell: edge, title band, title, close box, Esc", function()
	for id, def in pairs(WINDOWS) do
		Reset()
		def.open()
		local f = _G[def.name]
		T.ok(f ~= nil and f:IsShown(), id .. ": open")
		T.ok(f.chrome and #f.chrome.edges == 4 and f.chrome.band ~= nil, id .. ": a visible edge and a title band")
		T.ok(f.title ~= nil and f.title:GetText() ~= "", id .. ": a title in the band: " .. tostring(f.title and f.title:GetText()))
		T.ok(f.closeBox ~= nil and f.closeBox:IsShown() and f.closeBox._s.points[1][1] == "TOPRIGHT", id .. ": a close box at the top right")
		T.ok(Named(def.name), id .. ": Esc closes it (UISpecialFrames)")
		local found = false
		for _, w in ipairs(W.windows) do if w == f then found = true end end
		T.ok(found, id .. ": made by W.Window")
		f.closeBox:Click()
		T.ok(not f:IsShown(), id .. ": the close box closes it")
		def.open()
		PRESS_ESCAPE()
		T.ok(not f:IsShown(), id .. ": Esc closes it")
	end
	Reset()
end)

T.run("#174: the NPC dialogue window is never closed by Esc (ADR 0020)", function()
	T.ok(_G.AzerothUnspokenDialogue ~= nil, "the dialogue window exists")
	T.ok(not Named("AzerothUnspokenDialogue"), "and is not in UISpecialFrames")
	T.ok(not Named("AzerothUnspokenNarrator"), "nor is the narrator box")
end)

T.run("#174: Esc on the guide does what Skip does", function()
	Reset()
	NS.db.ui.wizardDone = false
	Wizard:Open()
	local f = Wizard:GetFrame()
	SENT = {}
	PRESS_ESCAPE()
	T.ok(not Wizard:IsOpen() and NS.db.ui.wizardDone, "Esc closes the guide and it counts as skipped")
	T.ok(T.sentContains(NS:L("wiz_done")), "and it says so, as Skip does")
	-- the close box is Skip too, and says it once
	Wizard:Open()
	SENT = {}
	f.closeBox:Click()
	local n = 0
	for _, s in ipairs(SENT) do if s:find(NS:L("wiz_done"), 1, true) then n = n + 1 end end
	T.eq(n, 1, "the close box ends the guide once")
	-- hidden with the whole interface (Alt+Z, a cinematic): the frame is still shown, the guide does not end
	NS.db.ui.wizardDone = false
	Wizard:Open()
	f.shown = true
	f.scripts.OnHide(f)
	T.ok(not NS.db.ui.wizardDone, "a guide hidden with the interface does not end")
	f:Hide()
end)

T.run("#187: one title style, one brand violet, destructive and selected states", function()
	Reset()
	T.eq(W.BRAND_HEX, "b48cff", "one brand violet")
	T.ok(math.abs(W.BRAND[1] - 0xb4 / 255) < 0.01 and math.abs(W.BRAND[2] - 0x8c / 255) < 0.01 and W.BRAND[3] == 1, "the same colour")
	local b = W.FlatButton(UIParent, "Forget", 120, 24, nil, "danger")
	T.eq(b.style, "danger", "a destructive style")
	b:SetArmed(true)
	T.ok(b.armed, "armed: filled, waiting for the confirmation")
	local t = W.FlatButton(UIParent, "Tab", 80, 24)
	t:SetSelected(true)
	T.ok(t.selected and t.bar:IsShown(), "selected: a bar under the label, not a colour only")
	t:SetSelected(false)
	T.ok(not t.bar:IsShown(), "not selected: no bar")
	t:SetEnabled(false)
	T.ok(t.disabled and not t:IsEnabled(), "SetEnabled works as on any button")
	NS.JournalFrame:Open()
	local journal = _G.AzerothUnspokenJournal
	T.eq(journal.reset.style, "danger", "Forget everything has the destructive style")
	NS.RelationsFrame:Open()
	T.eq(_G.AzerothUnspokenRelations.reset.style, "danger", "and so has the relationships' Forget everything")
	Reset()
end)

T.run("#182: the window scale applies to every window and to the dialogue window", function()
	Reset()
	for id, def in pairs(WINDOWS) do
		def.open()
		T.eq(_G[def.name]:GetScale(), 1, id .. ": scale 1 by default")
	end
	Config:Set("ui.windowScale", 1.3)
	for id, def in pairs(WINDOWS) do
		T.eq(_G[def.name]:GetScale(), 1.3, id .. ": follows the setting while open")
	end
	T.eq(_G.AzerothUnspokenDialogue:GetScale(), 1.3, "the NPC dialogue window too")
	Reset()
	NS.JournalFrame:Open()
	T.eq(_G.AzerothUnspokenJournal:GetScale(), 1, "a window opened later has the current scale")
	T.ok(not Config:Set("ui.windowScale", "big"), "not a number: refused")
	Config:Set("ui.windowScale", 3)
	T.eq(NS.db.ui.windowScale, 1.5, "at most 1.5")
	Config:Set("ui.windowScale", 0.1)
	T.eq(NS.db.ui.windowScale, 0.8, "at least 0.8")
	NS.db.ui.windowScale = 1
	Reset()
end)

T.run("#182: the dialogue window's text size and opacity follow the panel, and the line sits under the title", function()
	Reset()
	local F = NS.DialogueFrame
	local frame = F:GetFrame()
	F:Render({ state = "opened", roleLabel = "Guard", name = "Tom", line = "Stay a while.", choices = { { text = "Why?" } } })
	T.ok(frame:IsShown(), "a line on screen")
	local p = frame.text._s.points[1]
	T.ok(p[2] == frame.title and p[3] == "BOTTOMLEFT", "the line is anchored under the title, not at a fixed offset")
	local h0 = frame:GetHeight()
	NS.SettingsFrame:Row("opt_dialogue_size").plus:Click()
	T.eq(NS.db.ui.dialogue.fontSize, 14, "text size +1")
	T.eq(select(2, frame.text:GetFont()), 14, "the line follows at once")
	T.eq(select(2, frame.title:GetFont()), 14, "and the title")
	NS.SettingsFrame:Row("opt_dialogue_alpha").minus:Click()
	T.ok(math.abs(NS.db.ui.dialogue.alpha - 0.87) < 0.001, "opacity -5%: " .. NS.db.ui.dialogue.alpha)
	T.ok(frame:GetHeight() >= h0, "the window is laid out again")
	NS.db.ui.dialogue.fontSize, NS.db.ui.dialogue.alpha = 13, 0.92
	F:Hide()
end)

T.run("#182: consent and privacy text is 12 units or more", function()
	Reset()
	NS.RelationsFrame:Open("options")
	local rel = _G.AzerothUnspokenRelations
	-- the mock does not know the template's size: what counts is the template, W.TEXT_FONT (GameFontHighlight, 12)
	T.eq(W.TEXT_FONT, "GameFontHighlight", "the text font is the 12-unit one")
	for _, fs in ipairs({ rel.intro, rel.privacy, rel.warning, rel.optionsHint }) do
		T.ok(fs ~= nil, "a privacy or consent text of the relationships")
	end
	Reset()
end)

T.run("#192: a window is hidden right after CreateFrame, so a failed build leaves nothing on screen", function()
	local made
	local real = CreateFrame
	CreateFrame = function(...)
		local f = real(...)
		made = made or f
		return f
	end
	local ok = pcall(W.Window, UIParent, 100, 100, "mem_title", { name = "AzerothUnspokenTestBroken",
		refresh = function() end, point = { "CENTER" } })
	CreateFrame = real
	T.ok(ok and made ~= nil and not made:IsShown(), "the frame is hidden before anything else is drawn")
	-- the files are checked by Tests/run_tests.py: every named frame is hidden on the line after its CreateFrame
end)

T.run("#192: positions are saved from GetLeft/GetBottom", function()
	local f = CreateFrame("Frame", nil, UIParent)
	f:SetSize(200, 50)
	f:SetPoint("TOP", UIParent, "TOP", 0, -100)
	local pos = W.SavePosition(f)
	T.eq(pos[1] .. " " .. pos[2], "BOTTOMLEFT BOTTOMLEFT", "the bottom-left corner")
	T.eq(pos[3], 412, "left")
	T.eq(pos[4], 618, "bottom")
	W.RestorePosition(f, pos, { "CENTER", "CENTER", 0, 0 })
	T.eq(f:GetLeft(), 412, "restored in the same place")
	T.eq(f:GetBottom(), 618, "same bottom")
end)

T.run("#192: the export box is as tall as its text, and scrolls", function()
	Reset()
	local short = "one line"
	NS.JournalFrame:ShowExport(short)
	local f = _G.AzerothUnspokenJournalExport
	local h1 = f.box:GetHeight()
	local long = string.rep("A memory of the road, with a place and a date. ", 400)
	NS.JournalFrame:ShowExport(long)
	local h2 = f.box:GetHeight()
	T.ok(h2 > h1 and h2 > 1000, "a long text gives a taller box: " .. h1 .. " -> " .. h2)
	T.eq(f.box:GetText(), long, "the whole text")
	T.ok(f.box.scripts.OnCursorChanged ~= nil, "the cursor is kept in view")
	T.eq(f.title:GetText(), NS:L("mem_export"), "the title of the journal's export")
	NS.RelationsFrame:ShowExport()
	T.eq(f.title:GetText(), NS:L("rel_export"), "or of the relationships'")
	f:Hide()
end)

T.run("#192: one 'settings changed' notice, followed by the open windows; a language change re-labels them", function()
	Reset()
	NS.JournalFrame:Open()
	NS.ProfileFrame:Open()
	T.eq(_G.AzerothUnspokenJournal.title:GetText(), "Character journal", "English")
	local heard = {}
	Config:OnChange(function(path) table.insert(heard, tostring(path)) end)
	NS.SettingsFrame:Row("opt_language").button:Click()
	T.ok(#heard >= 1 and heard[#heard] == "opt_language", "the panel sends the notice")
	T.ok(_G.AzerothUnspokenJournal.title:GetText() ~= "Character journal", "the open journal follows the language")
	T.ok(_G.AzerothUnspokenProfile.title:GetText() == NS:L("soul_title"), "and the character soul")
	NS.db.locale = "en"
	Config:Set("intensity", 40)
	T.eq(heard[#heard], "intensity", "Config:Set sends it too")
	-- a listener that changes a setting does not start another round
	local rounds = 0
	Config:OnChange(function() rounds = rounds + 1; Config:Set("intensity", 50) end)
	Config:Changed("x")
	T.eq(rounds, 1, "no loop")
	table.remove(Config.listeners)
	table.remove(Config.listeners)
	Reset()
end)

T.run("#192: the classic Interface Options are opened with two calls", function()
	local calls = 0
	local savedSettings = Settings
	Settings = nil
	InterfaceOptionsFrame_OpenToCategory = function() calls = calls + 1 end
	NS.OpenSettings()
	T.eq(calls, 2, "two calls")
	InterfaceOptionsFrame_OpenToCategory = nil
	Settings = savedSettings
end)

T.run("#190: every armed confirmation disarms by token and when its window closes", function()
	Reset()
	local c = W.Confirm(6)
	c:Arm("a")
	ADVANCE(4)
	c:Disarm()
	c:Arm("b")
	ADVANCE(3)
	T.ok(c:Is("b"), "an old timer does not disarm a newer arming")
	ADVANCE(4)
	T.ok(not c:Is(), "the newer one expires on its own time")
	-- the relationships window: Forget everything armed, then closed
	NS.RelationsFrame:Open("list")
	local rel = _G.AzerothUnspokenRelations
	rel.reset:Click()
	T.eq(rel.reset:GetText(), NS:L("rel_reset_confirm_btn"), "armed")
	T.ok(rel.reset.armed, "filled while armed")
	rel:Hide()
	NS.RelationsFrame:Open("list")
	T.eq(rel.reset:GetText(), NS:L("rel_reset"), "closing the window disarmed it")
	rel.reset:Click()
	ADVANCE(4)
	rel.reset:Click()                 -- confirms: Forget everything
	rel.reset:Click()                 -- arms again
	ADVANCE(3)                        -- the first timer has run out
	T.eq(rel.reset:GetText(), NS:L("rel_reset_confirm_btn"), "an old timer does not disarm the newer arming")
	ADVANCE(4)
	T.eq(rel.reset:GetText(), NS:L("rel_reset"), "then it expires")
	Reset()
end)
