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

T.run("#174 #187 UI-3: every window has the shell: shape, 52-unit title bar, title, close box, Esc", function()
	for id, def in pairs(WINDOWS) do
		Reset()
		def.open()
		local f = _G[def.name]
		T.ok(f ~= nil and f:IsShown(), id .. ": open")
		T.ok(f.chrome and f.chrome.fill and f.chrome.ring and f.chrome.band ~= nil, id .. ": the window's shape and a title bar")
		T.eq(f.titleBar:GetHeight(), 52, id .. ": the title bar is 52 units")
		T.eq(f.titleBar.logo._s.texture, NS.Assets.textures.logo_64.path, id .. ": the addon's round logo")
		T.ok(f.title ~= nil and f.title:GetText() ~= "", id .. ": a title in the band: " .. tostring(f.title and f.title:GetText()))
		T.eq(f.title:GetText(), f.title:GetText():upper(), id .. ": the title in capitals (Orbitron)")
		T.ok(f.subtitle:GetText():find(NS.version, 1, true) ~= nil, id .. ": the mono subtitle")
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

T.run("#187 UI-3: the theme's colours, destructive and selected states", function()
	Reset()
	T.eq(W.PALETTE, nil, "the flat bronze palette is gone (UI-3)")
	T.eq(W.BRAND, nil, "and the brand violet")
	local b = W.FlatButton(UIParent, "Forget", 120, 24, nil, "danger")
	T.eq(b.style, "danger", "a destructive style")
	T.eq(b.ring._s.vertex[1], (NS.Theme.Color("err")), "its ring is the err token")
	T.ok(not b.fill:IsShown(), "no fill while it waits")
	b:SetArmed(true)
	T.ok(b.armed and b.fill:IsShown(), "armed: filled, waiting for the confirmation")
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

T.run("UI-4: the NPC dialogue is on the theme: a Panel, the Badge that is always there, the NPC voice token, FlatButtons, no Esc", function()
	Reset()
	local F = NS.DialogueFrame
	local Th = NS.Theme
	local frame = F:GetFrame()
	local function Is(c, token, id)
		local r, g, b = Th.Color(token, id)
		return c ~= nil and math.abs(c[1] - r) < 1e-6 and math.abs(c[2] - g) < 1e-6 and math.abs(c[3] - b) < 1e-6
	end
	NS.db.locale = "en"
	-- an offer: the Badge says it is the addon's, and "Listen" is the primary button
	F:Render({ state = "offered", roleLabel = "Guard", name = "Tom" })
	T.ok(frame:IsShown() and frame.badge:IsShown(), "the label is on screen")
	T.eq(frame.badge:GetText(), NS:L("npc_badge"), "it says: addon ambient dialogue")
	T.eq(frame.openBtn.style, "primary", "Listen is the primary button")
	T.ok(frame.parts and frame.parts.fill and frame.parts.ring and frame.parts.shadow, "a Panel with a ring and a shadow")
	T.ok(Is(frame.accent._s.colorTex, "voice-npc"), "the NPC's accent bar in the voice token")
	-- a line with three answers: numbered FlatButtons of 24 units, never the game's button template
	F:Render({ state = "opened", roleLabel = "Guard", name = "Tom", line = "Stay a while.",
		choices = { { text = "Why?" }, { text = "Where?" }, { text = "Who?" } } })
	for i = 1, 3 do
		local b = frame.choiceButtons[i]
		T.eq(b.style, "secondary", "answer " .. i .. ": a secondary button")
		T.ok(b:IsShown() and b:GetHeight() >= 24, "shown, 24 units")
		T.ok(b.fill ~= nil and b.ring ~= nil and b.label ~= nil, "built by W.FlatButton")
	end
	T.eq(frame.closeBtn.style, "secondary", "Close is a button with a word")
	T.ok(frame.closeBtn:GetHeight() >= 24 and frame.closeBtn:GetWidth() >= 24, "24 units")
	-- the title is in the NPC voice's token (or text-1 where the voice would not read over a thin surface)
	local title = frame.title._s.textColor
	T.ok(Is(title, "voice-npc") or Is(title, "text-1"), "the title: the NPC voice or text-1")
	T.ok(frame.title.auThemed and frame.text.auThemed, "every text has a token")
	-- opacity: the setting, never under the narrator's floor (text-1 keeps 4.5:1)
	NS.db.ui.dialogue.alpha = 0.3
	F:ApplySettings()
	T.eq(select(4, frame.bg:GetVertexColor()), NS.Narrator:Floor(), "a thin setting is raised to the floor")
	NS.db.ui.dialogue.alpha = 1
	F:ApplySettings()
	T.ok(math.abs(select(4, frame.bg:GetVertexColor()) - 0.85) < 1e-6, "full opacity is 0.85, as before")
	NS.db.ui.dialogue.alpha = 0.92
	-- the theme changes it without /reload
	Th.Set("aurora")
	T.ok(Is(frame.bg._s.vertex, "bg", "aurora"), "Aurora: the surface")
	T.ok(Is(frame.accent._s.colorTex, "voice-npc", "aurora"), "and the bar of Aurora's NPC voice")
	Th.Set("nebula")
	-- no Esc: it is not in UISpecialFrames (ADR 0020), and Esc on a button does nothing to it
	T.ok(not Named("AzerothUnspokenDialogue"), "no Esc")
	-- the keys answer as before
	local seen, original = nil, NS.NPCAlive.Choose
	NS.NPCAlive.Choose = function(_, n) seen = n; return true end
	T.ok(F:Press(2) and seen == 2, "the key 2 presses the second answer")
	NS.NPCAlive.Choose = original
	NS.db.locale = "it"
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
	T.eq(f.title:GetText(), NS:L("mem_export"):upper(), "the title of the journal's export")
	NS.RelationsFrame:ShowExport()
	T.eq(f.title:GetText(), NS:L("rel_export"):upper(), "or of the relationships'")
	f:Hide()
end)

T.run("#192: one 'settings changed' notice, followed by the open windows; a language change re-labels them", function()
	Reset()
	NS.JournalFrame:Open()
	NS.ProfileFrame:Open()
	T.eq(_G.AzerothUnspokenJournal.title:GetText(), "CHARACTER JOURNAL", "English, in capitals")
	local heard = {}
	Config:OnChange(function(path) table.insert(heard, tostring(path)) end)
	NS.SettingsFrame:Row("opt_language").button:Click()
	T.ok(#heard >= 1 and heard[#heard] == "opt_language", "the panel sends the notice")
	T.ok(_G.AzerothUnspokenJournal.title:GetText() ~= "CHARACTER JOURNAL", "the open journal follows the language")
	T.ok(_G.AzerothUnspokenProfile.title:GetText() == NS:L("soul_title"):upper(), "and the character soul")
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

T.run("#190: every armed confirmation disarms by token (W.Confirm); the windows' Dialogs end when the window closes (UI-5)", function()
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
	-- UI-5: the relationships window asks through a Dialog; closing the window cancels the question, and it never comes back
	NS.RelationsFrame:Open("list")
	local rel = _G.AzerothUnspokenRelations
	rel.reset:Click()
	T.ok(rel.dialog:IsShown() and rel.dialog.confirm.style == "danger", "asks")
	rel:Hide()
	T.ok(not rel.dialog:IsShown(), "closing the window cancelled the question")
	NS.RelationsFrame:Open("list")
	T.ok(not rel.dialog:IsShown(), "and it is not there when the window opens again")
	local R = NS.Relationships
	R:AddPlayer("Dara-Stormrage", "user")
	rel.reset:Click()
	rel.dialog.cancel:Click()
	T.ok(R:Get("player", "Dara-Stormrage") ~= nil, "Cancel forgets nothing")
	rel.reset:Click()
	rel.dialog.confirm:Click()
	T.ok(R:Get("player", "Dara-Stormrage") == nil, "Confirm forgets everything")
	T.ok(rel.toast:IsShown() and rel.toast:Message() == NS:L("rel_toast_reset"), "and a Toast says so")
	rel:Hide()
	T.ok(not rel.toast:IsShown(), "closing the window takes the toast away")
	Reset()
end)

-- UI-ECO UI-5: the journal, its export and the relationships window have a theme font and a token on every text, so W.Adopt
-- (the bridge of UI-3) finds nothing to do in them, in any view; and what is drawn with W.Hex follows a theme change.
T.run("UI-5: the journal and the relationships window need no W.Adopt, and follow the theme", function()
	Reset()
	local LM, R = NS.LivingMemory, NS.Relationships
	LM:Record({ kind = "first_visit", zone = "Elwynn Forest" })
	LM:SetPermanent(LM:List()[1].id)
	R:AddPlayer("Dara-Stormrage", "user")
	R:Propose("Brenna-Stormrage", "group")
	local function Clean(f, where) T.eq(W.Adopt(f), 0, where .. ": no text is left for W.Adopt") end
	for _, tab in ipairs(NS.JournalFrame.tabs) do
		NS.JournalFrame:Open(tab.id)
		Clean(_G.AzerothUnspokenJournal, "journal " .. tab.id)
	end
	NS.JournalFrame:ShowExport("text")
	Clean(_G.AzerothUnspokenJournalExport, "the export window")
	for _, where in ipairs({ "list", "people", "options", { kind = "player", key = "Dara-Stormrage" } }) do
		NS.RelationsFrame:Open(where)
		Clean(_G.AzerothUnspokenRelations, "relationships " .. (type(where) == "table" and "detail" or where))
	end
	-- the dialog and the toast are made of themed texts too
	local rel = _G.AzerothUnspokenRelations
	rel.dialog:Ask({ title = "a", text = "b", confirm = "c", cancel = "d" })
	rel.dialog:Hide()
	Clean(rel, "relationships with a dialog")
	-- a theme change redraws the words coloured by W.Hex without a /reload (the window's refresh)
	NS.JournalFrame:Open("memories")
	local journal = _G.AzerothUnspokenJournal
	local function FirstRowText() return journal.table:VisibleRows()[1].cells[1]:GetText() end
	T.ok(FirstRowText():find(W.Hex("accent-text") .. "[P]", 1, true) ~= nil, "nebula: the [P] mark in nebula's accent-text")
	local nebula = W.Hex("accent-text")
	Config:Set("ui.theme", "aurora")
	T.ok(W.Hex("accent-text") ~= nebula, "the two themes have different accent-text")
	T.ok(FirstRowText():find(W.Hex("accent-text") .. "[P]", 1, true) ~= nil, "aurora: the same row, redrawn in aurora's accent-text")
	Config:Set("ui.theme", "nebula")
	NS.JournalFrame:Close()
	NS.RelationsFrame:Close()
	Reset()
end)
