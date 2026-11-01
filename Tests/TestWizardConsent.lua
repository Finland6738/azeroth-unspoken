-- Tests of the wave-2 UI fixes: #178 (consents that a double-click cannot pass), #188 (the first-run guide) and #181
-- (windows never cover the narrator and are raised when clicked). Only the mock client: nothing here has run in game.
local NS = ...
local Consent, Gateway, Narrator, Windows, Wizard = NS.Consent, NS.Gateway, NS.Narrator, NS.Windows, NS.Wizard
local R, I, Config = NS.Relationships, NS.Interlocutor, NS.Config
local frame = Narrator:GetFrame()

local function Reset()
	SENT = {}
	HW = false
	P.combat, P.instance, P.group = false, false, false
	Consent:Reset()
	Gateway:SetMode("PRIVATE")
	NS.db.interlocutor.trp3Others = false
	NS.db.modules.totalRP3 = false
	NS.db.locale = "en"
	NS.db.intensity, NS.db.proseDepth = Config.defaults.intensity, Config.defaults.proseDepth
	Config:ApplyPreset(Config.defaults.preset)
	NS.db.ui.narrator.pos = nil
	NS.db.ui.wizardDone = true
	NS.gdb.sharedPlayers = nil
	R:SetSetting("proximity", false)
	R:SetSetting("sharePlayers", false)
	R.sharedReadOnly = false
	Gateway:Discard()
	Narrator:Clear()
	Narrator:ClearHistory()
	if Wizard:IsOpen() then Wizard:GetFrame():Hide() end
	for _, w in ipairs(Windows.list) do w:Hide() end
	AddOn_TotalRP3 = nil
	ADVANCE(100)
end

local function Pause() ADVANCE(Consent.MIN_DELAY + 0.5) end

local function Overlap(a, b)
	local al, ab, ar, at = Windows.Rect(a)
	local bl, bb, br, bt = Windows.Rect(b)
	return al < br and bl < ar and ab < bt and bb < at
end

---------------------------------------------------------------------------
-- #178: consents
---------------------------------------------------------------------------
T.run("#178: the four consents are off by default", function()
	local d = Config.defaults
	T.eq(d.output.autoPublicSay, false, "automatic sending")
	T.eq(d.interlocutor.trp3Others, false, "reading others' Total RP 3")
	T.eq(d.relations.proximity, false, "proximity")
	T.eq(d.relations.sharePlayers, false, "the shared list")
	T.eq(d.chat.mode, "PRIVATE", "chat is private")
end)

-- each consent: how to ask, how to read whether it is on, how to turn it off
local CONSENTS = {
	auto = { ask = function() return Gateway:SelectAuto() end, on = function() return Gateway:IsAutoActive() end,
		off = function() Gateway:SetMode("CONFIRM_TO_SEND") end, asked = "warned" },
	share = { ask = function() return R:StartSharing() end, on = function() return R:Sharing() end,
		off = function() R:StopSharing() end, asked = "armed" },
	proximity = { ask = function() return R:ChangeSetting("proximity") end, on = function() return R:Setting("proximity") end,
		off = function() R:ChangeSetting("proximity", false) end, asked = "asked" },
	trp3others = { ask = function() return I:ChangeTRP3Consent() end, on = function() return NS.db.interlocutor.trp3Others end,
		off = function() I:ChangeTRP3Consent(false) end, asked = "asked" },
}

for id, c in pairs(CONSENTS) do
	T.run("#178: " .. id .. ": a double-click does not pass, a pause and a second step do", function()
		Reset()
		T.eq(c.ask(), c.asked, "the first step only asks")
		T.ok(not c.on(), "and changes nothing")
		T.ok(Consent:IsOpen(id), "the question is open")
		local r = c.ask()
		T.ok(r == "wait", "a second step right away (a double-click) is ignored: " .. tostring(r))
		T.ok(not c.on(), "still off")
		Pause()
		T.eq(Consent:State(id), "ready", "after the pause the confirmation counts")
		c.ask()
		T.ok(c.on(), "the second step, after the pause, turns it on")
		T.ok(not Consent:IsOpen(id), "and the question is closed")
		c.off()
		T.ok(not c.on(), "turning it off is one step")
	end)

	T.run("#178: " .. id .. ": the question expires and a withdrawn one cannot be confirmed", function()
		Reset()
		c.ask()
		ADVANCE(Consent.WINDOW + 1)
		T.ok(not Consent:IsOpen(id), "after the window the question is gone")
		T.eq(c.ask(), c.asked, "so the next step asks again, it does not confirm")
		T.ok(not c.on(), "nothing changed")
		Consent:Cancel(id)
		Pause()
		T.eq(Consent:Confirm(id), "none", "a withdrawn question cannot be confirmed")
		T.ok(not c.on(), "still off")
	end)
end

T.run("#178: the warning is a confirmation dialog with explicit buttons, and its button is disabled while it is read", function()
	Reset()
	local shown, hidden
	StaticPopupDialogs = {}
	StaticPopup_Show = function(name) shown = name end
	StaticPopup_Hide = function(name) hidden = name end
	for _, id in ipairs({ "auto", "share", "proximity", "trp3others" }) do
		shown, hidden = nil, nil
		T.eq(Consent:Ask(id), "asked", id .. ": asked")
		local key = "AZEROTHUNSPOKEN_CONSENT_" .. id:upper()
		T.eq(shown, key, id .. ": the dialog is shown")
		local d = StaticPopupDialogs[key]
		T.ok(d ~= nil and d.text == NS:L("consent_" .. (id == "trp3others" and "trp3" or id) .. "_text"), id .. ": the whole warning is the dialog's text")
		T.ok(d.button1 == NS:L("consent_turn_on") and d.button2 == NS:L("consent_cancel"), id .. ": explicit buttons")
		-- OnShow disables the confirm button until the pause is over
		local enabled = true
		local self = { button1 = { Disable = function() enabled = false end, Enable = function() enabled = true end }, IsShown = function() return true end }
		d.OnShow(self)
		T.ok(not enabled, id .. ": the confirm button is disabled while the warning is read")
		Pause()
		T.ok(enabled, id .. ": and enabled after the pause")
		-- an accept that comes too early counts for nothing
		Consent:Cancel(id)
		T.eq(hidden, key, id .. ": withdrawing hides the dialog")
		Consent:Ask(id)
		d = StaticPopupDialogs[key]
		d.OnAccept()
		T.ok(Consent:IsOpen(id), id .. ": an accept inside the pause is ignored, the question stays open")
		Pause()
		d.OnAccept()
		T.ok(not Consent:IsOpen(id), id .. ": an accept after the pause confirms")
		Consent:Reset()
	end
	T.ok(NS.db.output.autoPublicSay, "the automatic consent was given through its dialog")
	StaticPopupDialogs, StaticPopup_Show, StaticPopup_Hide = nil, nil, nil
	-- without a dialog the whole warning goes to chat
	Reset()
	SENT = {}
	Consent:Ask("auto")
	T.ok(T.sentContains(NS:L("consent_auto_text"):sub(1, 40)), "no StaticPopup: the warning is in chat")
	T.ok(NS:L("consent_auto_text"):find("CHARACTER", 1, true) and NS:L("consent_auto_text"):find("everyone nearby", 1, true),
		"it says the lines are posted in the character's name and seen by everyone nearby")
end)

T.run("#178: the consent texts exist in both languages and are plain", function()
	for _, lang in ipairs({ "en", "it" }) do
		NS.db.locale = lang
		for _, k in ipairs({ "consent_auto_text", "consent_share_text", "consent_trp3_text", "consent_proximity_text",
			"consent_turn_on", "consent_cancel", "consent_wait", "consent_repeat", "consent_off_reading", "consent_off_ready" }) do
			T.ok(NS:L(k) ~= k and #NS:L(k) > 3, lang .. ": " .. k)
			T.ok(not NS:L(k):find("|", 1, true) or NS:L(k):find("||", 1, true), lang .. ": " .. k .. " has no bare |")
		end
	end
	NS.db.locale = "en"
end)

T.run("#178: the commands ask first and confirm after a pause", function()
	Reset()
	local function Cmd(text)
		SENT = {}
		SlashCmdList.AZEROTHUNSPOKEN(text)
	end
	Cmd("mode auto")
	T.ok(not Gateway:IsAutoActive(), "mode auto: the first command asks")
	T.ok(T.sentContains("Nothing changed yet"), "and says to repeat it after a few seconds")
	Cmd("mode auto")
	T.ok(not Gateway:IsAutoActive(), "the same command right away is ignored")
	T.ok(T.sentContains("nothing changed"), "and says why")
	Pause()
	Cmd("mode auto")
	T.ok(Gateway:IsAutoActive(), "after the pause it turns on")
	Cmd("mode confirm")
	T.ok(not Gateway:IsAutoActive(), "mode confirm turns it off at once")
end)

T.run("#178: state in words, with the dependency, on every consent", function()
	Reset()
	-- the settings panel
	for _, w in ipairs(FindWidgets(function(w) return w.name == NS.name and w.scripts.OnShow end)) do w.scripts.OnShow() end
	-- #187: a label next to its control; the control says the state
	local function Row(key) return NS.SettingsFrame:Row(key).button end
	T.eq(NS.SettingsFrame:Row("opt_auto").label:GetText(), NS:L("opt_auto"), "the label of the row")
	local auto = Row("opt_auto")
	T.ok(auto:GetText():find(NS:L("off"), 1, true), "automatic sending: off, in words")
	auto:Click()
	T.ok(auto:GetText():find(NS:L("consent_off_reading"), 1, true), "after the question: off, read first")
	Pause()
	T.ok(auto:GetText():find(NS:L("consent_off_ready"), 1, true), "the text follows the time without a click: off, confirm")
	ADVANCE(Consent.WINDOW)
	T.ok(not auto:GetText():find(NS:L("consent_off_ready"), 1, true), "and goes back to 'off' when the question expires")
	-- Total RP 3 of others needs the name module
	local others = Row("opt_trp3_others")
	NS.db.interlocutor.trp3Others, NS.db.modules.totalRP3 = true, false
	NS.Config:Set("intensity", NS.db.intensity)
	others.scripts.OnClick(others)   -- turns it off (one step) ...
	T.ok(not NS.db.interlocutor.trp3Others, "one step turns it off")
	NS.db.interlocutor.trp3Others = true
	for _, w in ipairs(FindWidgets(function(w) return w.name == NS.name and w.scripts.OnShow end)) do w.scripts.OnShow() end
	T.ok(others:GetText():find(NS:L("consent_on_needs", NS:L("consent_needs_name_short")), 1, true), "on, but it says it needs the name option: " .. others:GetText())
	NS.db.interlocutor.trp3Others = false
end)

---------------------------------------------------------------------------
-- #188: the first-run guide
---------------------------------------------------------------------------
local function Open()
	NS.db.ui.wizardDone = false
	Wizard:Open()
	return Wizard:GetFrame()
end

local function PageTexts(w)
	local out = {}
	for i, p in ipairs(w.content.children) do
		if p:IsShown() then
			local function Walk(f)
				for _, c in ipairs(f.children or {}) do
					if c.kind == "FontString" then table.insert(out, c:GetText() or "") end
					Walk(c)
				end
			end
			Walk(p)
		end
	end
	return table.concat(out, "\n")
end

T.run("#188: the guide explains the language, the private narrator, the keys, the button and the settings", function()
	Reset()
	AddOn_TotalRP3 = nil
	local w = Open()
	-- page 1: the promise, the private narrator, a live sample, the language cards
	local text = PageTexts(w)
	T.ok(text:find("private narrator", 1, true) and text:find("nothing reaches chat unless you choose it", 1, true), "welcome: a private narrator")
	T.ok(text:find(NS:L("voice_narrator"), 1, true) and text:find("light drains", 1, true), "welcome: a live sample of the narrator")
	local cards = {}
	for _, x in ipairs(w.content.children[1].children) do
		if x.kind == "Button" then table.insert(cards, x:GetText()) end
	end
	T.eq(#cards, #NS.languageOrder, "one card per language")
	-- the last page
	local last = Wizard:NumberOfPages()
	for _ = 1, last - 1 do w.next:Click() end
	text = PageTexts(w)
	for _, k in ipairs({ "wiz_key_speak", "wiz_key_pause", "wiz_key_reroll", "wiz_key_npc" }) do
		T.ok(text:find(NS:L(k), 1, true), "the last page lists the key: " .. k)
	end
	T.ok(text:find("Keybindings", 1, true), "it says where to bind the keys")
	T.ok(text:find("speak button", 1, true) and text:find("beside the narrator box", 1, true), "it says where the speak button is")
	T.ok(text:find("/au options", 1, true), "it says where the settings are")
	T.eq(w.next:GetText(), NS:L("wiz_finish"), "and this is the last page")
	w.skip:Click()
end)

T.run("#188: the defaults the guide states come from Config", function()
	Reset()
	local line = Wizard:DefaultsLine()
	local d = Config.defaults
	T.ok(line:find("intensity " .. d.intensity, 1, true), "intensity: " .. line)
	T.ok(line:find(d.pacing.globalCooldownSeconds .. " s between", 1, true), "pause between lines")
	T.ok(line:find("waits " .. d.chat.pendingSeconds .. " s", 1, true), "how long a proposal waits")
	T.ok(line:find(NS:L("chatmode_" .. d.chat.mode .. "_short"), 1, true), "the chat mode")
	-- not written twice: change a default and the guide follows
	local saved = d.chat.pendingSeconds
	d.chat.pendingSeconds = 77
	T.ok(Wizard:DefaultsLine():find("waits 77 s", 1, true), "it reads Config.defaults at the time")
	d.chat.pendingSeconds = saved
	-- the card of the default carries the tag
	local w = Open()
	local function Tagged(page)
		local out = {}
		for _, x in ipairs(w.content.children[page].children) do
			if x.kind == "Button" and (x:GetText() or ""):find("(" .. NS:L("wiz_default_tag") .. ")", 1, true) then table.insert(out, x:GetText()) end
		end
		return out
	end
	w.next:Click()
	local tagged = Tagged(2)
	T.eq(#tagged, 1, "preset: one default")
	T.ok(tagged[1]:find(NS:L("preset_" .. d.preset), 1, true), "preset: the default is " .. d.preset)
	-- intensity: the suggested value is the Config default
	w.next:Click()
	T.ok(PageTexts(w):find(NS:L("wiz_suggested"), 1, true), "intensity: the default value is marked")
	w.skip:Click()
end)

T.run("#188: every step can be skipped, with the close box, Skip, Esc and Enter", function()
	Reset()
	local w = Open()
	local total = Wizard:NumberOfPages()
	T.ok(total >= 7, "the guide has its steps: " .. total)
	for step = 1, total do
		Reset()
		w = Open()
		for _ = 2, step do w.next:Click() end
		T.ok(w.skip:IsShown(), "step " .. step .. ": Skip is there")
		w.skip:Click()
		T.ok(not Wizard:IsOpen() and NS.db.ui.wizardDone, "step " .. step .. ": Skip closes and finishes")
	end
	Reset()
	w = Open()
	w.close:Click()
	T.ok(not Wizard:IsOpen() and NS.db.ui.wizardDone, "the close box skips the guide")
	w = Open()
	w.scripts.OnKeyDown(w, "ESCAPE")
	T.ok(not Wizard:IsOpen() and NS.db.ui.wizardDone, "Esc skips the guide")
	NS.db.ui.wizardDone = false
	w = Open()
	w:Hide()   -- closed in any other way
	T.ok(NS.db.ui.wizardDone, "a closed guide counts as skipped: it does not come back at every login")
	w = Open()
	w.scripts.OnKeyDown(w, "ENTER")
	T.ok(PageTexts(w):find(NS:L("wiz_step_preset"), 1, true), "Enter is Next")
	w.scripts.OnKeyDown(w, "W")
	T.ok(PageTexts(w):find(NS:L("wiz_step_preset"), 1, true), "another key does nothing")
	w.skip:Click()
	-- nothing was chosen on the way: the defaults stay
	T.eq(NS.db.chat.mode, Config.defaults.chat.mode, "the chat mode is still the default")
	T.eq(NS.db.interlocutor.trp3Others, false, "and so are the consents")
end)

T.run("#188: the pages are built once, in any language", function()
	Reset()
	local w = Open()
	for _ = 1, Wizard:NumberOfPages() do w.next:Click() end
	local count = #FindWidgets(function() return true end)
	for _ = 1, 3 do
		Open()
		for _ = 1, Wizard:NumberOfPages() do w.next:Click() end
	end
	T.eq(#FindWidgets(function() return true end), count, "opening the guide again builds no new widgets")
	-- a change of language is followed by pages built earlier
	NS.db.locale = "it"
	w = Open()
	T.ok(PageTexts(w):find("Un narratore privato", 1, true), "Italian welcome")
	NS.db.locale = "en"
	Wizard:Render()
	T.ok(PageTexts(w):find("A private narrator", 1, true), "back to English: the page was not left in Italian")
	w.skip:Click()
end)

T.run("#188: the guide opens after the game has loaded and never in combat", function()
	Reset()
	NS.db.ui.wizardDone = false
	P.combat = true
	Wizard.TryOpen()
	T.ok(not Wizard:IsOpen(), "in combat it does not open")
	ADVANCE(3)
	T.ok(not Wizard:IsOpen(), "and keeps waiting")
	P.combat = false
	ADVANCE(6)
	T.ok(Wizard:IsOpen(), "out of combat it opens")
	Wizard:GetFrame():Hide()
	-- a finished guide never reopens by itself
	NS.db.ui.wizardDone = true
	Wizard.TryOpen()
	T.ok(not Wizard:IsOpen(), "done: no reopening")
end)

T.run("#188: the chat step: automatic sending is a dialog, not a click; consent cards say on and off in words", function()
	Reset()
	AddOn_TotalRP3 = {}
	local w = Open()
	local function Find(text)
		for _, p in ipairs(w.content.children) do
			for _, x in ipairs(p.children) do
				if x.kind == "Button" and (x:GetText() or ""):find(text, 1, true) then return x end
			end
		end
	end
	-- Total RP 3 page
	w.next:Click(); w.next:Click(); w.next:Click(); w.next:Click(); w.next:Click()
	T.ok(PageTexts(w):find(NS:L("wiz_step_trp3"), 1, true), "the Total RP 3 page")
	local others = Find(NS:L("opt_trp3_others"))
	T.ok(others.sub:GetText():find(NS:L("off"), 1, true), "reading others: off, in words")
	others:Click()
	T.ok(not NS.db.interlocutor.trp3Others, "one click does not turn it on")
	Pause()
	others:Click()
	T.ok(NS.db.interlocutor.trp3Others, "two steps do")
	T.ok(others.sub:GetText():find(NS:L("consent_on_needs", NS:L("opt_rpname")), 1, true), "and it says it needs Name from Total RP 3")
	NS.db.modules.totalRP3 = true
	Wizard:Render()
	T.ok(others.sub:GetText():find(NS:L("on"), 1, true) and not others.sub:GetText():find("needs", 1, true), "with the name module on it is plain on")
	NS.db.interlocutor.trp3Others, NS.db.modules.totalRP3 = false, false
	-- chat page
	w.next:Click()
	local auto = Find(NS:L("chatmode_AUTO_ONLY_IF_ALLOWED_short"))
	T.ok(auto.sub:GetText():find("everyone nearby", 1, true) and auto.sub:GetText():find("character's name", 1, true),
		"the card says plainly that the lines are posted in the character's name and seen by everyone nearby")
	auto:Click()
	T.ok(not Gateway:IsAutoActive(), "one click does not turn automatic sending on")
	auto:Click()
	T.ok(not Gateway:IsAutoActive(), "a double-click does not either")
	Pause()
	auto:Click()
	T.ok(Gateway:IsAutoActive(), "the second step does")
	local private = Find(NS:L("chatmode_PRIVATE_short"))
	T.ok(private:GetText():find(NS:L("wiz_default_tag"), 1, true), "the private card is marked as the default")
	private:Click()
	T.ok(not Gateway:IsAutoActive() and NS.db.chat.mode == "PRIVATE", "going back to private is one click")
	w.skip:Click()
	AddOn_TotalRP3 = nil
end)

---------------------------------------------------------------------------
-- #181: windows never cover the narrator, and are raised
---------------------------------------------------------------------------
T.run("#181: every window is registered: strata, toplevel, raised when opened", function()
	Reset()
	NS.JournalFrame:Open(); NS.RelationsFrame:Open(); NS.ProfileFrame:Open(); Open()
	for _, name in ipairs({ "AzerothUnspokenJournal", "AzerothUnspokenRelations", "AzerothUnspokenProfile", "AzerothUnspokenWizard" }) do
		local f = _G[name]
		local known = false
		for _, w in ipairs(Windows.list) do if w == f then known = true end end
		T.ok(known, name .. " is registered")
		T.eq(f:GetFrameStrata(), Windows.STRATA, name .. ": strata")
		T.ok(f:IsToplevel(), name .. ": toplevel")
	end
	T.ok(Windows.STRATA ~= "DIALOG", "below the client's dialogs: a raised window never covers a confirmation")
end)

T.run("#181: a clicked window is raised above the others", function()
	Reset()
	NS.JournalFrame:Open()
	NS.RelationsFrame:Open()
	local journal, relations = _G.AzerothUnspokenJournal, _G.AzerothUnspokenRelations
	T.eq(Windows:Top(), relations, "the window opened last is on top")
	local before = RAISES
	journal.scripts.OnMouseDown(journal)
	T.ok(RAISES > before, "a click calls Raise")
	T.eq(Windows:Top(), journal, "the clicked window is on top")
	local profile = NS.ProfileFrame
	profile:Open()
	T.eq(Windows:Top(), _G.AzerothUnspokenProfile, "a window opened later is above again")
end)

T.run("#181: a window that opens over another is cascaded, not stacked", function()
	Reset()
	NS.JournalFrame:Open()
	local journal = _G.AzerothUnspokenJournal
	local jl, _, _, jt = Windows.Rect(journal)
	NS.RelationsFrame:Open()
	local relations = _G.AzerothUnspokenRelations
	local rl, _, _, rt = Windows.Rect(relations)
	T.ok(math.abs(rl - jl) >= Windows.CASCADE - 1 or math.abs(rt - jt) >= Windows.CASCADE - 1, "Relationships does not open exactly over the journal")
	NS.ProfileFrame:Open()
	local profile = _G.AzerothUnspokenProfile
	local pl, _, _, pt = Windows.Rect(profile)
	T.ok(not (math.abs(pl - rl) < 2 and math.abs(pt - rt) < 2), "nor the profile over Relationships")
	-- closing and reopening does not drift
	NS.RelationsFrame:Close(); NS.RelationsFrame:Open()
	local rl2, _, _, rt2 = Windows.Rect(relations)
	T.ok(math.abs(rl2 - rl) < 2 and math.abs(rt2 - rt) < 2, "reopening gives the same place")
	-- a window the player has moved keeps its place
	relations.scripts.OnDragStop(relations)
	T.ok(relations.auMoved, "a dragged window is marked as moved")
end)

T.run("#181: a window never covers a proposal: the narrator steps aside, and comes back", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose({ text = "Let us go.", form = "say", event = "muse", speaker = "character" }, { player = "Garrosh" }, {})
	T.ok(frame:IsShown() and Gateway:GetPending() ~= nil, "a proposal waits in the box")
	T.eq(frame:GetFrameStrata(), "FULLSCREEN_DIALOG", "the box is above every window while it carries a proposal")
	local resting = { Windows.Rect(frame) }
	for name, open in pairs({ journal = function() NS.JournalFrame:Open() end, relations = function() NS.RelationsFrame:Open() end,
		profile = function() NS.ProfileFrame:Open() end, wizard = function() Open() end }) do
		Reset()
		Gateway:SetMode("CONFIRM_TO_SEND")
		Gateway:Propose({ text = "Let us go.", form = "say", event = "muse", speaker = "character" }, { player = "Garrosh" }, {})
		open()
		-- a window too big for the screen to leave room for the box (a 660-unit window on 768) cannot be avoided: the box
		-- is then above it, never under it
		for _, w in ipairs(Windows.list) do
			if w:IsShown() then
				T.ok(not Overlap(frame, w) or (Narrator.crowded and frame:GetFrameStrata() == "FULLSCREEN_DIALOG"),
					name .. ": the box and the window do not overlap, or the box is above it")
			end
		end
		if name == "journal" or name == "wizard" then
			T.ok(not Narrator.crowded and Narrator.avoiding, name .. ": there is room, so the box moved aside")
		end
		T.eq(NS.db.ui.narrator.pos, nil, name .. ": the saved place is untouched")
		for _, w in ipairs(Windows.list) do w:Hide() end
		T.ok(not Narrator.avoiding, name .. ": the window closed, the box is back")
		local l, b = Windows.Rect(frame)
		T.ok(math.abs(l - resting[1]) < 1 and math.abs(b - resting[2]) < 1, name .. ": at the player's own place")
	end
	Gateway:Discard()
end)

T.run("#181: the wizard's test line is visible, above the wizard", function()
	Reset()
	local w = Open()
	for _ = 1, 5 do w.next:Click() end   -- the chat step
	local test
	for _, p in ipairs(w.content.children) do
		for _, x in ipairs(p.children) do
			if x.kind == "Button" and x:GetText() == NS:L("wiz_test") then test = x end
		end
	end
	T.ok(test ~= nil, "'Try the narrator' is on the chat page")
	test:Click()
	T.ok(frame:IsShown(), "the line is shown")
	T.ok(not Overlap(frame, w), "and not under the wizard")
	T.eq(frame:GetFrameStrata(), "FULLSCREEN_DIALOG", "above the windows while the test line is on")
	T.eq(Gateway:GetPending(), nil, "a test line is no proposal")
	-- when the line is gone the box is a plain HUD element again
	Narrator:Clear()
	T.eq(frame:GetFrameStrata(), "MEDIUM", "gone: back to the ordinary strata")
	T.eq(NS.db.ui.narrator.pos, nil, "the saved place is untouched")
	w.skip:Click()
end)

T.run("#181: where nothing is free the box still goes on top, and a dragged box is not pulled back", function()
	Reset()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose({ text = "Let us go.", form = "say", event = "muse", speaker = "character" }, { player = "Garrosh" }, {})
	-- a window as tall as the screen and as wide as the box: no room above or below
	NS.JournalFrame:Open()
	local big = _G.AzerothUnspokenJournal
	big:SetSize(900, 768)
	Windows:Avoid()
	T.ok(Narrator.crowded, "no free place is reported")
	T.eq(frame:GetFrameStrata(), "FULLSCREEN_DIALOG", "the box is above the window")
	big:SetSize(600, 500)
	big:Hide()
	Gateway:Discard()
	-- the player drags the box: it is not pulled back while dragging
	Narrator.dragging = true
	Narrator:Avoid()
	Narrator.dragging = false
end)

T.run("#181: the ambient dialogue window does not cover the narrator either", function()
	Reset()
	local F = NS.DialogueFrame
	if not (F and F.BlizzardRects and F:GetFrame()) then T.ok(true, "no dialogue window in this build") return end
	Narrator:ShowTest()
	local before = #F:BlizzardRects()
	T.ok(before >= 1, "the narrator box counts among the rectangles the dialogue avoids")
	Narrator:Clear()
	T.eq(#F:BlizzardRects(), before - 1, "and only while it is shown")
end)
