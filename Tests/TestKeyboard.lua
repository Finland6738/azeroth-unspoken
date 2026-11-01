-- Tests of #183 (UI-13): the keys of the proposal bar, the history, the journal and the NPC answers; /au channel next;
-- sliders with "-", "+" and the mouse wheel, a track of 3:1 and no OnUpdate while idle; 24-unit targets; short words
-- instead of single symbols; the "Paused" badge. Only the mock client: nothing here has run in game.
local NS = ...
local W, Gateway, Narrator, Director = NS.Widgets, NS.Gateway, NS.Narrator, NS.Director

local function Reset()
	SENT = {}
	HW = false
	P.combat, P.instance, P.group = false, false, false
	NS.db.locale = "en"
	NS.db.chat.mode, NS.db.chat.channel = "PRIVATE", "auto"
	NS.db.output.privateNarrator = true
	Gateway.combatHeld = { lines = {} }
	Gateway:Discard()
	Director:SetPaused(false)
	Narrator:Clear()
	ADVANCE(100)
end

local function Proposal()
	Gateway:SetMode("CONFIRM_TO_SEND")
	Gateway:Propose({ text = "A line for chat.", form = "say", event = "muse", speaker = "character" },
		{ player = "Garrosh" }, {})
	return Gateway:GetPending()
end

T.run("#183: the keys of the proposal bar: discard, edit, channel", function()
	Reset()
	for _, fn in ipairs({ "AzerothUnspoken_Discard", "AzerothUnspoken_Edit", "AzerothUnspoken_Channel",
		"AzerothUnspoken_History", "AzerothUnspoken_Journal", "AzerothUnspoken_NPCAnswer" }) do
		T.eq(type(_G[fn]), "function", fn)
	end
	for _, key in ipairs({ "DISCARD", "EDIT", "CHANNEL", "HISTORY", "JOURNAL", "ANSWER1", "ANSWER2", "ANSWER3" }) do
		T.eq(type(_G["BINDING_NAME_AZEROTHUNSPOKEN_" .. key]), "string", "name of the key " .. key)
	end
	-- Discard
	T.ok(Proposal() ~= nil, "a proposal waits")
	AzerothUnspoken_Discard()
	T.eq(Gateway:GetPending(), nil, "Discard: gone")
	SENT = {}
	AzerothUnspoken_Discard()
	T.ok(T.sentContains("no proposal waiting"), "Discard with nothing waiting says so")
	-- Channel: /say -> /emote, said in chat; the key and /au channel next do the same
	local p = Proposal()
	T.eq(p.channel, "SAY", "first channel")
	SENT = {}
	AzerothUnspoken_Channel()
	T.eq(p.channel, "EMOTE", "the key: next channel")
	T.ok(T.sentContains("proposal channel: /emote"), "said in chat")
	SlashCmdList.AZEROTHUNSPOKEN("channel next")
	T.eq(p.channel, "SAY", "/au channel next: next again (no group: back to /say)")
	T.eq(NS.db.chat.channel, "auto", "the default channel is not touched")
	Gateway:Discard()
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("channel next")
	T.ok(T.sentContains("no proposal waiting"), "/au channel next with nothing waiting")
	-- Edit
	Proposal()
	AzerothUnspoken_Edit()
	T.ok(Narrator:IsEditing(), "Edit: the editor")
	Narrator:CloseEditor()
	Gateway:Discard()
	SENT = {}
	AzerothUnspoken_Edit()
	T.ok(T.sentContains("no proposal to edit"), "Edit with nothing waiting says so")
	Reset()
end)

T.run("#183: the keys of the history and the journal", function()
	Reset()
	local h = Narrator.historyFrame
	h:Hide()
	AzerothUnspoken_History()
	T.ok(h:IsShown(), "History: open")
	AzerothUnspoken_History()
	T.ok(not h:IsShown(), "History: closed")
	AzerothUnspoken_Journal()
	T.ok(NS.JournalFrame:IsOpen(), "Journal: open")
	AzerothUnspoken_Journal()
	T.ok(not NS.JournalFrame:IsOpen(), "Journal: closed")
	Reset()
end)

T.run("#183: NPC answers 1-3 press the buttons the dialogue window shows, numbered", function()
	Reset()
	local N, F = NS.NPCAlive, NS.DialogueFrame
	local frame = F:GetFrame()
	T.eq(F:Press(1), false, "closed window: nothing")
	SlashCmdList.AZEROTHUNSPOKEN("talk test")
	T.ok(frame:IsShown() and N.state == "choice", "a test dialogue with answers")
	local shown = {}
	for _, b in ipairs(frame.choiceButtons) do if b:IsShown() then table.insert(shown, b) end end
	T.ok(#shown >= 2, "at least two answers")
	for i, b in ipairs(shown) do T.eq(b:GetText():sub(1, 3), i .. ". ", "answer " .. i .. " numbered") end
	local turns = N.session.chosen
	AzerothUnspoken_NPCAnswer(#shown + 1 <= 3 and 3 or 2)
	AzerothUnspoken_NPCAnswer(1)
	T.ok(N.session == nil or N.session.chosen >= turns + 1, "answer 1 chosen by its key")
	-- every button of the window is a 24-unit target, the close button a word
	T.eq(frame.closeBtn:GetText(), NS:L("npc_btn_close"), "Close in words")
	T.ok(frame.closeBtn:GetHeight() >= 24 and frame.closeBtn:GetWidth() >= 24, "close: 24 units")
	for _, b in ipairs(frame.choiceButtons) do T.ok(b:GetHeight() >= 24, "answer buttons: 24 units") end
	N:Close("closed")
	Reset()
end)

T.run("#183: sliders: - and +, the mouse wheel, a 3:1 track, OnUpdate only while dragging", function()
	Reset()
	T.ok(W.Contrast(W.SLIDER_TRACK, W.PALETTE.surface) >= 3,
		"the track against the window: " .. string.format("%.2f", W.Contrast(W.SLIDER_TRACK, W.PALETTE.surface)))
	T.ok(W.Contrast({ 1, 1, 1 }, { 0, 0, 0 }) > 20.9, "the contrast formula")
	local P_ = NS.Personality
	NS.ProfileFrame:Open()
	local rows = NS.ProfileFrame.rows
	local sliders = 0
	for _, id in ipairs(P_.TRAIT_ORDER) do
		local row = rows[id]
		if row and row.slider then
			sliders = sliders + 1
			local s = row.slider
			T.ok(s.minus and s.plus, id .. ": - and +")
			T.ok(s.minus:GetHeight() >= 24 and s.minus:GetWidth() >= 24, id .. ": 24-unit steps")
			T.eq(s:GetScript("OnUpdate"), nil, id .. ": no OnUpdate while idle")
		end
	end
	local scales = 0
	for _, tid in ipairs(P_.TRAIT_ORDER) do if NS.Traits.defs[tid].kind == "scale" then scales = scales + 1 end end
	T.ok(sliders >= 11 and sliders == scales, "every trait slider of the Character Soul (" .. sliders .. ")")
	local id = "optimism"
	local s = rows[id].slider
	P_:SetTrait(id, 50)
	NS.ProfileFrame:Refresh()
	s.plus:Click()
	T.eq(P_:Profile().traits[id], 55, "+ steps by 5 and saves")
	s.minus:Click(); s.minus:Click()
	T.eq(P_:Profile().traits[id], 45, "- steps back")
	s.scripts.OnMouseWheel(s, 1)
	T.eq(P_:Profile().traits[id], 50, "the wheel up")
	s.scripts.OnMouseWheel(s, -1)
	T.eq(P_:Profile().traits[id], 45, "the wheel down")
	P_:SetTrait(id, 100)
	NS.ProfileFrame:Refresh()
	s.plus:Click()
	T.eq(P_:Profile().traits[id], 100, "never above the maximum")
	-- dragging: OnUpdate only between the mouse down and up (or the window closing)
	s.scripts.OnMouseDown(s)
	T.ok(s:GetScript("OnUpdate") ~= nil, "dragging: OnUpdate set")
	s.scripts.OnMouseUp(s)
	T.eq(s:GetScript("OnUpdate"), nil, "released: OnUpdate removed")
	s.scripts.OnMouseDown(s)
	s.scripts.OnHide(s)
	T.eq(s:GetScript("OnUpdate"), nil, "hidden while dragging: removed")
	T.ok(not s.dragging, "and the drag ends")
	P_:SetTrait(id, nil)
	NS.ProfileFrame:Close()
	-- the relationship sliders keep their own - and +, and take the wheel
	local R = NS.Relationships
	local slider = W.Slider(UIParent, 150, -100, 100, nil, { step = R.SLIDER_STEP })
	slider:SetQuiet(0)
	slider.scripts.OnMouseWheel(slider, 1)
	T.eq(slider.value, R.SLIDER_STEP, "a slider without buttons takes the wheel")
	T.eq(slider.minus, nil, "and has no buttons of its own")
	Reset()
end)

T.run("#183: every button of the windows and the narrator is a 24-unit target", function()
	Reset()
	NS.JournalFrame:Open()
	NS.RelationsFrame:Open()
	NS.ProfileFrame:Open()
	NS.db.ui.wizardDone = false
	NS.Wizard:Open()
	local small = {}
	for _, b in ipairs(FindWidgets(function(w) return w.kind == "Button" and w.scripts.OnClick ~= nil end)) do
		local w, h = b._s.w, b._s.h
		if (w and w < 24) or (h and h < 24) then table.insert(small, tostring(b:GetText()) .. " " .. tostring(w) .. "x" .. tostring(h)) end
	end
	T.eq(#small, 0, "no button under 24 units: " .. table.concat(small, ", "))
	NS.JournalFrame:Close()
	NS.RelationsFrame:Close()
	NS.ProfileFrame:Close()
	NS.Wizard:Finish()
	Reset()
end)

T.run("#183: the journal's row actions are short words, as wide as their word", function()
	Reset()
	local LM = NS.LivingMemory
	LM:Record({ kind = "first_visit", zone = "Elwynn Forest" })
	NS.JournalFrame:Open("memories")
	local row = NS.JournalFrame.rows[1]
	local labels = {}
	for k = 1, 2 do
		local b = row.b[k]
		if b:IsShown() then
			table.insert(labels, b:GetText())
			T.ok(#b:GetText() > 1, "a word, not a symbol: " .. b:GetText())
			T.ok(b:GetWidth() >= 24 and b:GetWidth() >= #b:GetText() * 6, b:GetText() .. ": as wide as its word")
		end
	end
	T.ok(#labels > 0, "the row has actions: " .. table.concat(labels, ", "))
	T.ok(row.width < 568 and row.width > 300, "the text takes the rest of the row (" .. tostring(row.width) .. ")")
	-- the stories tab: Open, Skip, Pause instead of "...", "x", "II"
	local text = {}
	for _, t in ipairs(NS.JournalFrame.tabs) do
		if t.id == "stories" then
			for _, r in ipairs(t.rows()) do
				for _, a in ipairs(r.actions or {}) do text[a.label] = true end
			end
		end
	end
	for _, symbol in ipairs({ "...", "x", "II", ">", "-", "P", "+" }) do T.ok(not text[symbol], "no '" .. symbol .. "' in the stories") end
	NS.JournalFrame:Close()
	Reset()
end)

T.run("#183: the paused state in words: the speak button's badge and the narrator's label", function()
	Reset()
	local button = _G.AzerothUnspokenButton
	T.ok(not button.badge:IsShown(), "running: no badge")
	Director:SetPaused(true)
	T.ok(button.badge:IsShown(), "paused: the badge")
	T.eq(button.badgeText:GetText(), "Paused", "in words")
	T.eq(button:GetAlpha(), 0.5, "the button is still dimmed")
	-- a line asked for while paused says so in its label
	NS:Trigger("muse")
	local f = Narrator:GetFrame()
	T.ok(f:IsShown() and f.label:GetText():find("paused", 1, true), "the narrator's label: " .. tostring(f.label:GetText()))
	NS.db.locale = "it"
	NS.UpdateButton()
	T.eq(button.badgeText:GetText(), "In pausa", "in Italian")
	Director:SetPaused(false)
	T.ok(not button.badge:IsShown(), "resumed: no badge")
	Reset()
end)

T.run("#185: /au combat shows and sets the In combat setting; the settings row cycles it", function()
	Reset()
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("combat")
	T.ok(T.sentContains("in combat: hold until combat ends"), "the default, in words")
	SlashCmdList.AZEROTHUNSPOKEN("combat chat")
	T.eq(NS.db.pacing.inCombat, "chatframe", "chat = chat frame only")
	SlashCmdList.AZEROTHUNSPOKEN("combat silent")
	T.eq(NS.db.pacing.inCombat, "silent", "silent")
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN("combat loud")
	T.eq(NS.db.pacing.inCombat, "silent", "an unknown word changes nothing")
	T.ok(T.sentContains("invalid value"), "and says so")
	local row = NS.SettingsFrame:Row("opt_combat")
	T.ok(row ~= nil and row.button ~= nil, "a row in the settings")
	row.button:Click()
	T.eq(NS.db.pacing.inCombat, "show", "the row cycles: silent -> show")
	NS.SettingsFrame.panel:Refresh()
	T.eq(row.button:GetText(), "show", "the row says the value")
	NS.db.pacing.inCombat = "hold"
	Reset()
end)
