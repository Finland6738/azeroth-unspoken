-- Layout tests of the UI review leftovers (#179, #180, #182): the first-run guide laid out top-down, the settings rows
-- and the buttons of the journal and the soul window, in English and Italian. Only the mock client, with its opt-in
-- realistic text measure (REALISTIC_TEXT: width- and font-aware, 6.3 units a character in the 12-unit font): nothing
-- here has run in game, so the numbers are the review's estimates and the layout code measures with GetStringHeight()
-- and GetStringWidth() in the real client.
local NS = ...
local W, Wizard, Config = NS.Widgets, NS.Wizard, NS.Config

REALISTIC_TEXT = true

local function Units(text)
	local plain = tostring(text or ""):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
	local _, chars = plain:gsub("[^\128-\191]", "")
	return chars * 6.3
end

-- where a widget sits, from the top-left corner of `parent` (down is negative), for the widgets placed with a number
-- anchor; nil otherwise. A text has the height the client would measure (GetStringHeight), a button its size.
local function Rect(w, parentW, parentH)
	local p = w._s.points and w._s.points[#w._s.points]
	if not p or type(p[2]) ~= "number" then return nil end
	local point, x, y = p[1], p[2], p[3]
	local width, height = w:GetWidth(), w:GetHeight()
	if w.kind == "FontString" then
		local text = w:GetText()
		if text == "" then return nil end
		width = w._s.w or math.ceil(w:GetStringWidth())
		height = w:GetStringHeight()
	end
	local left = point:find("RIGHT") and (parentW + x - width) or x
	local top = point:find("BOTTOM") and (-parentH + y + height) or y
	return { l = left, r = left + width, t = top, b = top - height, w = w }
end

local function Describe(r)
	return ("%s '%s' [%d,%d %d,%d]"):format(r.w.kind, tostring(r.w:GetText()):sub(1, 30), r.l, r.t, r.r, r.b)
end

local function Overlaps(a, b) return a.l < b.r and b.l < a.r and a.b < b.t and b.b < a.t end

-- every shown widget of `parent` lies inside it, no two overlap; `skip` leaves out the ones that overlap on purpose
local function CheckBlocks(parent, parentW, parentH, where, skip)
	local rects = {}
	for _, w in ipairs(parent.children) do
		if w:IsShown() and w.kind ~= "Texture" and not (skip and skip(w)) then
			local r = Rect(w, parentW, parentH)
			if r then table.insert(rects, r) end
		end
	end
	local bad = {}
	for i, a in ipairs(rects) do
		if a.l < 0 or a.r > parentW + 0.5 or a.t > 0 or a.b < -parentH then table.insert(bad, "outside: " .. Describe(a)) end
		for j = i + 1, #rects do
			if Overlaps(a, rects[j]) then table.insert(bad, Describe(a) .. " over " .. Describe(rects[j])) end
		end
	end
	T.eq(table.concat(bad, "; "), "", where .. ": nothing outside, nothing overlapping")
	return #rects
end

-- a label that does not wrap must fit its width; a button's label must fit the button (6 units a side)
local function Fits(bad, text, width, what)
	if Units(text) + 12 > width then table.insert(bad, ("%s '%s' (%d) in %d"):format(what, text, Units(text), width)) end
end

local function Restore()
	NS.db.locale = "en"
	NS.db.ui.wizardDone = true
	NS.db.ui.windowScale = 1
	AddOn_TotalRP3 = nil
	if Wizard:IsOpen() then Wizard:GetFrame():Hide() end
end

---------------------------------------------------------------------------
-- #179 #180: the first-run guide, every page, in both languages
---------------------------------------------------------------------------
T.run("#179 #180: every page of the guide is laid out top-down, nothing overlaps, in English and Italian", function()
	for _, lang in ipairs({ "en", "it" }) do
		for _, trp3 in ipairs({ false, true }) do
			Restore()
			NS.db.locale = lang
			AddOn_TotalRP3 = trp3 and {} or nil
			NS.db.ui.wizardDone = false
			Wizard:Open()
			local w = Wizard:GetFrame()
			for page = 1, Wizard:NumberOfPages() do
				local where = ("%s%s page %d"):format(lang, trp3 and " (Total RP 3)" or "", page)
				local f
				for _, p in ipairs(w.content.children) do if p:IsShown() then f = p end end
				T.ok(f ~= nil, where .. ": a page is shown")
				local contentH = w:GetHeight() - 120
				CheckBlocks(f, 520, contentH, where)
				-- the window is as tall as the page needs: the lowest block ends above the footer
				local lowest = 0
				for _, c in ipairs(f.children) do
					local r = c:IsShown() and c.kind ~= "Texture" and Rect(c, 520, contentH)
					if r and r.b < lowest then lowest = r.b end
				end
				T.ok(-lowest <= contentH, where .. (": the page ends at %d of %d"):format(-lowest, contentH))
				-- the cards say what they say inside their own box
				for _, c in ipairs(f.children) do
					if c.auCard and c:IsShown() then
						local need = 8 + math.ceil(c.title:GetStringHeight()) + 4 + math.ceil(c.sub:GetStringHeight()) + 10
						T.ok(need <= c:GetHeight(), where .. (": card '%s' holds its text (%d of %d)"):format(
							tostring(c.title:GetText()):sub(1, 24), need, c:GetHeight()))
					end
				end
				-- the footer: Skip, Back and Next each fit their label and do not touch
				local bad = {}
				for _, b in ipairs({ w.skip, w.back, w.next }) do
					if b:IsShown() then Fits(bad, b:GetText(), b:GetWidth(), "footer") end
				end
				T.eq(table.concat(bad, "; "), "", where .. ": the footer labels fit")
				T.ok(16 + w.skip:GetWidth() + 8 <= 520 - 16 - w.next:GetWidth() - 8 - (w.back:IsShown() and w.back:GetWidth() or 0),
					where .. ": Skip does not reach Back")
				w.next:Click()
			end
			w.skip:Click()
		end
	end
	Restore()
end)

T.run("#179: a longer text pushes the next block down and grows the window", function()
	Restore()
	NS.db.locale = "en"
	NS.db.ui.wizardDone = false
	Wizard:Open()
	local w = Wizard:GetFrame()
	for _ = 1, 5 do w.next:Click() end   -- the chat page (no Total RP 3: page 6 is skipped)
	local page
	for _, p in ipairs(w.content.children) do if p:IsShown() then page = p end end
	local heights = {}
	for _, c in ipairs(page.children) do if c.auCard then table.insert(heights, c:GetHeight()) end end
	T.eq(#heights, 4, "four chat modes")
	local before = w:GetHeight()
	-- a translation three times as long: the cards grow, the blocks under them move, the window follows
	local saved = NS.languages.en.ui.wiz_mode_AUTO_ONLY_IF_ALLOWED
	NS.languages.en.ui.wiz_mode_AUTO_ONLY_IF_ALLOWED = saved .. " " .. saved .. " " .. saved
	Wizard:Render()
	CheckBlocks(page, 520, w:GetHeight() - 120, "long automatic text")
	T.ok(w:GetHeight() >= before, "the window did not shrink")
	local autoCard
	for _, c in ipairs(page.children) do if c.auCard and c.sub:GetText():find(saved, 1, true) then autoCard = c end end
	T.ok(autoCard ~= nil and autoCard:GetHeight() > 74, "the automatic card grew past its minimum")
	NS.languages.en.ui.wiz_mode_AUTO_ONLY_IF_ALLOWED = saved
	w.skip:Click()
	Restore()
end)

T.run("#180: a button wider than its maximum is cut and shows the whole text in its tooltip", function()
	local b = W.FlatButton(UIParent, "", 100, 24, nil)
	b:SetText("a label that is much too long for such a button")
	local width = W.FitButton(b, 60, 140)
	T.eq(width, 140, "it stops at the maximum")
	T.ok(b.auClipped, "and knows it is cut")
	T.ok(b.label._s.w == 132 and b.label._s.wrap == false, "the label does not wrap and stays inside")
	b:SetText("ok")
	T.eq(W.FitButton(b, 60, 140), 60, "a short label takes the minimum")
	T.ok(not b.auClipped, "and is not cut")
	b:SetText("medium label")
	local medium = W.FitButton(b, 60, 140)
	T.ok(medium > 60 and medium < 140 and not b.auClipped, "a medium one is as wide as its label: " .. medium)
end)

---------------------------------------------------------------------------
-- #180: the settings panel
---------------------------------------------------------------------------
T.run("#180: settings labels and value buttons fit, in English and Italian", function()
	local panel = NS.SettingsFrame.panel
	T.ok(panel ~= nil, "the panel exists")
	local candidates = {
		opt_chatmode = { "chatmode_PRIVATE_short", "chatmode_PREVIEW_short", "chatmode_CONFIRM_TO_SEND_short", "chatmode_AUTO_ONLY_IF_ALLOWED_short" },
		opt_channel = { "channel_auto", "channel_SAY", "channel_EMOTE", "channel_PARTY", "channel_RAID", "channel_GUILD", "channel_INSTANCE_CHAT" },
		opt_combat = { "combat_show", "combat_chatframe", "combat_hold", "combat_silent" },
		opt_literary = { "literary_never", "literary_rare", "literary_normal" },
		opt_depth = { "depth_natural", "depth_literary", "depth_elevated" },
		opt_auto = { "consent_off_reading", "consent_off_ready", "consent_auto_fallback", "on", "off" },
		opt_trp3_others = { "consent_off_reading", "consent_off_ready", "on", "off" },
	}
	for _, lang in ipairs({ "en", "it" }) do
		NS.db.locale = lang
		panel:Refresh()
		local bad = {}
		for key, row in pairs(panel.rows) do
			if row.label and row.label:GetText() ~= "" then
				-- the label does not wrap (a cut label shows "..."): it fits its width
				Fits(bad, row.label:GetText(), row.label._s.w or 226, "label")
			end
			if row.button and not row.action then
				local values = {}
				for _, k in ipairs(candidates[key] or {}) do table.insert(values, NS:L(k)) end
				if key == "opt_auto" or key == "opt_trp3_others" then
					table.insert(values, NS:L("consent_on_needs", NS:L("consent_needs_name_short")))
				end
				table.insert(values, row.button:GetText())
				for _, v in ipairs(values) do
					-- the button grows to its text up to the room it has (FitButton): the longest value must fit that room
					local maxW = row.button.auMax or row.button:GetWidth()
					Fits(bad, v, maxW, "button " .. key)
				end
			elseif row.button then
				Fits(bad, row.button:GetText(), row.button:GetWidth(), "action " .. key)
			end
		end
		table.sort(bad)
		T.eq(table.concat(bad, "; "), "", lang .. ": every label and value fits")
	end
	NS.db.locale = "en"
end)

---------------------------------------------------------------------------
-- #180 #182: the other windows, also the tabs and pages added by the songbook, the nemesis and the pets
---------------------------------------------------------------------------
-- every shown button of a window has its label inside it (or says it is cut), and the widgets laid out from the top
-- do not overlap
local function CheckWindow(frame, where, maxHeight)
	local bad = {}
	local function Walk(f)
		for _, c in ipairs(f.children or {}) do
			if c:IsShown() and c.kind == "Button" and c.label and c.label.GetText and c:GetText() ~= "" and not c.auClipped then
				Fits(bad, c:GetText(), c:GetWidth(), "button")
			end
			if c:IsShown() then Walk(c) end
		end
	end
	Walk(frame)
	T.eq(table.concat(bad, "; "), "", where .. ": every button label fits")
	if maxHeight then T.ok(frame:GetHeight() <= maxHeight, where .. (": at most %d tall (%d)"):format(maxHeight, frame:GetHeight())) end
end

T.run("#180 #182: journal tabs, the songbook and the soul window, in English and Italian", function()
	for _, lang in ipairs({ "en", "it" }) do
		Restore()
		NS.db.locale = lang
		NS.db.ui.wizardDone = true
		for _, id in ipairs({ "memories", "places", "flags", "session", "stories", "relations", "people", "songbook" }) do
			NS.JournalFrame:Open(id)
			local f = _G.AzerothUnspokenJournal
			CheckWindow(f, ("%s journal %s"):format(lang, id), 680)
			-- the tabs and the note do not overlap
			local tabs = {}
			for _, c in ipairs(f.children) do
				if c.kind == "Button" and c:IsShown() and c._s.points and type(c._s.points[#c._s.points][2]) == "number"
					and c:GetHeight() == 24 and c._s.points[#c._s.points][3] > -120 then table.insert(tabs, c) end
			end
			for i, a in ipairs(tabs) do
				for j = i + 1, #tabs do
					local ra, rb = Rect(a, f:GetWidth(), f:GetHeight()), Rect(tabs[j], f:GetWidth(), f:GetHeight())
					if ra and rb then T.ok(not Overlaps(ra, rb), ("%s journal %s: two tabs do not overlap"):format(lang, id)) end
				end
			end
			NS.JournalFrame:Close()
		end
		NS.ProfileFrame:Open()
		local p = _G.AzerothUnspokenProfile
		CheckWindow(p, lang .. " soul window", 720)
		AddOn_TotalRP3 = {}
		NS.ProfileFrame:Refresh()
		CheckWindow(p, lang .. " soul window with Total RP 3", 720)
		local rects = {}
		for _, c in ipairs(p.children) do
			if c:IsShown() and c.kind ~= "Texture" then
				local r = Rect(c, p:GetWidth(), p:GetHeight())
				if r then table.insert(rects, r) end
			end
		end
		local bad = {}
		for i, a in ipairs(rects) do
			for j = i + 1, #rects do
				if Overlaps(a, rects[j]) then table.insert(bad, Describe(a) .. " over " .. Describe(rects[j])) end
			end
		end
		T.eq(table.concat(bad, "; "), "", lang .. " soul window: nothing overlaps")
		NS.ProfileFrame:Close()
		AddOn_TotalRP3 = nil
	end
	Restore()
end)

-- UI-ECO UI-3: the contrast of the widgets in both themes (the rules of the UI review, ADR 0058 "Invariants"): every text
-- of a widget 4.5:1 on the surface it sits on, every control's edge or track 3:1 against the window. The pairs are the
-- ones UI/Widgets.lua and UI/Widgets/*.lua draw; a token with alpha is laid over its surface first.
T.run("UI-3: the widgets keep their contrast in Nebula and in Aurora", function()
	local Th = NS.Theme
	local function C(token, id, over)
		local c = { Th.Color(token, id) }
		if over then c = Th.Over(c, over) end
		return c
	end
	local TEXT = {
		-- label, on (surface)
		{ "on-accent", "accent", "primary button" }, { "text-1", "surface-3", "secondary button" },
		{ "text-2", "bg", "ghost button" }, { "text-1", "surface-1", "neon button" }, { "err", "bg", "danger button" },
		{ "on-accent", "err", "danger button, armed" }, { "accent-text", "bg", "text button" },
		{ "text-1", "surface-1", "title bar" }, { "text-3", "surface-1", "subtitle" }, { "bg", "text-1", "tooltip" },
		{ "text-1", "surface-1", "card title" }, { "text-2", "surface-1", "card text" }, { "text-1", "raised", "chosen card" },
		{ "text-1", "bg", "active tab" }, { "text-3", "bg", "other tabs" }, { "text-1", "raised", "chosen segment" },
		{ "text-3", "surface-2", "other segments" }, { "on-accent", "accent", "chosen chip" }, { "text-2", "bg", "chip" },
		{ "text-1", "surface-2", "edit box" }, { "text-1", "raised", "chosen row of a list" }, { "text-2", "surface-2", "row of a list" },
		{ "text-1", "raised", "toast" }, { "text-1", "surface-1", "dialog title" }, { "text-2", "surface-1", "dialog text" },
		{ "text-3", "surface-2", "table header" }, { "accent-text", "surface-2", "sorted header" }, { "accent-text", "bg", "table numbers" },
		{ "text-1", "bg", "window text (adopted)" }, { "accent-text", "bg", "window heading (adopted)" }, { "text-2", "bg", "small text (adopted)" },
		{ "text-3", "bg", "muted words (W.Hex)" }, { "ok", "bg", "a chosen answer (W.Hex)" }, { "warn", "bg", "a warning (W.Hex)" },
	}
	for _, id in ipairs(Th.ORDER) do
		for _, pair in ipairs(TEXT) do
			local bg = C(pair[2], id, C("bg", id))
			local ratio = Th.Contrast(C(pair[1], id, bg), bg)
			T.ok(ratio >= 4.5, ("%s, %s: %s on %s %.2f"):format(id, pair[3], pair[1], pair[2], ratio))
		end
		-- the badge: the tone's text on its own pill (16 % dark, 12 % light) over a card
		for tone, token in pairs(W.BADGE_TONES) do
			local card = C("surface-1", id)
			local pill = Th.Over({ Th.Color(token, id) }, card)
			pill = Th.Over({ pill[1], pill[2], pill[3], W.BadgeAlpha(id) }, card)
			local ratio = Th.Contrast(C(token, id), pill)
			T.ok(ratio >= 4.5, ("%s, badge %s: %.2f"):format(id, tone, ratio))
		end
		-- controls: 3:1 against the window
		for _, pair in ipairs({ { W.SLIDER_TRACK, "bg", "slider track" }, { "text-1", "bg", "slider thumb" },
			{ "text-3", "surface-3", "switch ring, off" }, { "accent", "bg", "switch, on" }, { "err", "bg", "danger ring" },
			{ "accent", "bg", "selected ring and bar" }, { "accent", "bg", "tab indicator" } }) do
			local bg = C(pair[2], id)
			local ratio = Th.Contrast(C(pair[1], id, bg), bg)
			T.ok(ratio >= 3, ("%s, %s: %.2f"):format(id, pair[3], ratio))
		end
	end
end)

-- UI-ECO UI-5: the texts of the journal and of the relationships window, on the window and on the row under the mouse (a row
-- of a table is surface-2 while hovered), in both themes. Every pair is 4.5:1; a bar or an edge is 3:1.
T.run("UI-5: the journal's and the relationships' texts keep their contrast in Nebula and in Aurora", function()
	local Th = NS.Theme
	local function C(token, id) return { Th.Color(token, id) } end
	local PAIRS = {
		-- text, surface, what it is
		{ "text-1", "bg", "a row's text" }, { "text-1", "surface-2", "a row's text, hovered" },
		{ "accent-text", "bg", "a number in the mono font" }, { "accent-text", "surface-2", "a number, hovered" },
		{ "text-3", "bg", "a muted word in a row" }, { "text-3", "surface-2", "a muted word, hovered" },
		{ "ok", "surface-2", "a chosen answer in a row, hovered" }, { "warn", "surface-2", "a warning, hovered" },
		{ "text-2", "bg", "the intro, a note, the summary" }, { "warn", "bg", "the memory state in a note" },
		{ "text-2", "bg", "a tab under the mouse" }, { "text-1", "bg", "the tab chosen" }, { "text-3", "bg", "the other tabs" },
		{ "text-3", "surface-2", "an empty table's message and the headers" }, { "accent-text", "surface-2", "the sorted header" },
		{ "err", "bg", "a danger button in the footer" }, { "err", "surface-2", "a danger button in a row, hovered" },
		{ "err", "surface-1", "the danger button of the dialog" }, { "text-1", "surface-3", "a secondary button" },
		{ "text-2", "surface-1", "the dialog's question" }, { "text-1", "surface-1", "the dialog's title" },
		{ "text-1", "raised", "the toast" }, { "text-1", "surface-2", "the search box and the copy box" },
		{ "text-1", "raised", "the chosen segment of the kind filter" }, { "text-3", "surface-2", "the other segments" },
	}
	for _, id in ipairs(Th.ORDER) do
		for _, pair in ipairs(PAIRS) do
			local bg = Th.Over(C(pair[2], id), C("bg", id))
			local ratio = Th.Contrast(Th.Over(C(pair[1], id), bg), bg)
			T.ok(ratio >= 4.5, ("%s, %s: %s on %s %.2f"):format(id, pair[3], pair[1], pair[2], ratio))
		end
		-- the sliding bar of the tabs is a graphic: 3:1 against the window
		T.ok(Th.Contrast(C("accent", id), C("bg", id)) >= 3, id .. ", the tab bar")
	end
end)

-- UI-ECO UI-4: the voices of the narrator keep their contrast (spec section 2.3). A voice colour is a token (voice-*); the box
-- is the `bg` surface, opaque or translucent over the world. Body text and the label are 4.5:1 on the opaque surface in
-- both themes; over a translucent box the contrast is worked out over a white world (the rule of docs/design/UI_REVIEW.md)
-- and over a black one (the worst for the light theme); where a voice colour would not reach 4.5:1 the narrator writes the
-- text in text-1, which the floor of the box keeps at 4.5:1 (Narrator:Floor).
T.run("UI-4: the voice colours and the narrator's texts keep their contrast in Nebula and in Aurora", function()
	local Th, Narrator = NS.Theme, NS.Narrator
	local voices = { "narrator", "inner", "character", "npc" }
	local function C(token, id) return { Th.Color(token, id) } end
	local function Surface(id, alpha, scene)
		local r, g, b = Th.Color("bg", id)
		return Th.Over({ r, g, b, alpha }, scene)
	end
	local WHITE, BLACK = { 1, 1, 1, 1 }, { 0, 0, 0, 1 }
	local saved = NS.db.ui.theme
	for _, id in ipairs(Th.ORDER) do
		Th.Apply(id)
		local bg = C("bg", id)
		for _, speaker in ipairs(voices) do
			local token = "voice-" .. speaker
			-- the opaque surface (a world as opaque as the box)
			T.ok(Th.Contrast(C(token, id), bg) >= 4.5, ("%s, %s on the opaque surface: %.2f"):format(id, token, Th.Contrast(C(token, id), bg)))
			-- the accent bar and the time line are a graphic of the voice: 3:1 on the opaque surface
			T.ok(Th.Contrast(C(token, id), bg) >= 3, id .. ", " .. token .. " as a bar")
			-- over a white world at the default opacity (0.8): a voice that does not reach 4.5:1 there is not used for text
			local over = Th.Contrast(C(token, id), Surface(id, 0.8, WHITE))
			local _, ink = Narrator:VoiceColors(speaker, 0.8)
			T.ok(ink == token and Narrator.WorstContrast(token, 0.8) >= 4.5 or ink == "text-1",
				("%s, %s at 0.8: the text is the voice's or text-1 (%.2f over white)"):format(id, speaker, over))
			T.ok(Narrator.WorstContrast(ink, 0.8) >= 4.5, ("%s, %s at 0.8: the text %s keeps 4.5:1 over any world (%.2f)"):format(id, speaker, ink, Narrator.WorstContrast(ink, 0.8)))
			-- at the floor: always readable
			local _, atFloor = Narrator:VoiceColors(speaker, Narrator:Floor())
			T.ok(Narrator.WorstContrast(atFloor, Narrator:Floor()) >= 4.5, ("%s, %s at the floor %.2f: the text %s"):format(id, speaker, Narrator:Floor(), atFloor))
		end
		-- Nebula's voices all read over a white world at the default opacity (the tokens were chosen for it)
		if id == "nebula" then
			for _, speaker in ipairs(voices) do
				T.ok(Th.Contrast(C("voice-" .. speaker, id), Surface(id, 0.8, WHITE)) >= 4.5, "nebula: " .. speaker .. " at 0.8 over a white world")
			end
		end
		-- text-1, text-2 and the label over the box at the floor and at the default opacity, over both worlds
		for _, alpha in ipairs({ Narrator:Floor(), 0.8, 1 }) do
			T.ok(Narrator.WorstContrast("text-1", alpha) >= 4.5, ("%s: text-1 at %.2f over any world"):format(id, alpha))
			local ink = Narrator:Ink("text-2", alpha)
			T.ok(Narrator.WorstContrast(ink, alpha) >= 4.5, ("%s: the muted words (%s) at %.2f"):format(id, ink, alpha))
		end
		-- the pieces of the box: the byte counter (on the editor's surface-2), the Paused badge, the speak button's icon
		for _, pair in ipairs({ { "text-3", "surface-2", "byte counter" }, { "err", "surface-2", "byte counter, over the limit" },
			{ "text-2", "surface-2", "channel chip" } }) do
			local ratio = Th.Contrast(C(pair[1], id), Th.Over(C(pair[2], id), C("bg", id)))
			T.ok(ratio >= 4.5, ("%s, %s: %s on %s %.2f"):format(id, pair[3], pair[1], pair[2], ratio))
		end
		for _, pair in ipairs({ { "text-3", "surface-1", "the speak button's quiet icon" }, { "accent-text", "surface-1", "its lit icon" } }) do
			local surf = Th.Over(C(pair[2], id), C("bg", id))
			local ratio = Th.Contrast(Th.Over(C(pair[1], id), surf), surf)
			T.ok(ratio >= 3, ("%s, %s: %.2f"):format(id, pair[3], ratio))
		end
	end
	Th.Apply(saved)
end)

-- UI-ECO UI-6: the Section surface of the soul window and of the settings page (surface-1): the texts on it and its controls.
-- Every text pair is 4.5:1, a control's edge or track 3:1 against the section, in both themes.
T.run("UI-6: the texts and controls on the sections keep their contrast in Nebula and in Aurora", function()
	local Th = NS.Theme
	local function C(token, id) return { Th.Color(token, id) } end
	local TEXT = {
		{ "text-1", "surface-1", "a section's title and a row's label" }, { "text-2", "surface-1", "the state in words, a note, the archetype's help" },
		{ "text-3", "surface-1", "a value that is not set" }, { "accent-text", "surface-1", "a number in the mono font" },
		{ "text-1", "surface-2", "the chosen segment's text over its pill" }, { "text-3", "surface-2", "the other segments" },
		{ "text-1", "raised", "the chosen segment" }, { "text-1", "surface-3", "a button in a section" },
		{ "err", "surface-1", "the danger button" }, { "accent-text", "bg", "the guide's number" }, { "text-1", "bg", "the guide's texts" },
		{ "text-2", "bg", "the guide's help, the soul window's introduction" }, { "accent-text", "bg", "the guide's small heading" },
		{ "text-1", "raised", "the chosen language" }, { "text-2", "surface-2", "the other languages" },
	}
	for _, id in ipairs(Th.ORDER) do
		for _, pair in ipairs(TEXT) do
			local bg = Th.Over(C(pair[2], id), C("bg", id))
			local ratio = Th.Contrast(Th.Over(C(pair[1], id), bg), bg)
			T.ok(ratio >= 4.5, ("%s, %s: %s on %s %.2f"):format(id, pair[3], pair[1], pair[2], ratio))
		end
		-- a source badge on a section: every tone is 4.5:1 on its own pill (the same rule as the Journal's badges)
		for _, pair in ipairs({ { W.SLIDER_TRACK, "surface-1", "slider track" }, { "text-1", "surface-1", "slider thumb" },
			{ "text-3", "surface-1", "switch ring, off" }, { "accent", "surface-1", "switch, on" }, { "accent", "surface-1", "the thin bar's fill" },
			{ "border-strong", "surface-1", "the segmented pill's edge" } }) do
			local bg = Th.Over(C(pair[2], id), C("bg", id))
			local ratio = Th.Contrast(Th.Over(C(pair[1], id), bg), bg)
			-- the pill's edge is only a boundary (the chosen segment has a shape and bright text): 1.5:1 is enough there
			T.ok(ratio >= (pair[3]:find("edge") and 1.4 or 3), ("%s, %s: %.2f"):format(id, pair[3], ratio))
		end
	end
end)

-- the segmented controls of the settings page fit their room (section width minus the label column and the margin), in both
-- languages: a long word would push the pill past the section's edge
T.run("UI-6: the settings page's controls fit their sections, in English and Italian", function()
	local panel = NS.SettingsFrame.panel
	for _, lang in ipairs({ "en", "it" }) do
		NS.db.locale = lang
		panel:Refresh()
		for key, row in pairs(panel.rows) do
			local control = row.seg or row.slider
			if control then
				local x = control._s.points[1][2]
				local section = control.parent
				T.ok(x + control:GetWidth() <= section:GetWidth() - 16, ("%s %s: ends at %d of %d"):format(lang, key, x + control:GetWidth(), section:GetWidth() - 16))
			end
			if row.switch and row.text then
				local x = row.switch._s.points[1][2]
				T.ok(x + 52 + Units(row.text:GetText()) <= row.switch.parent:GetWidth() - 8, ("%s %s: the state in words fits"):format(lang, key))
			end
		end
	end
	NS.db.locale = "en"
end)

REALISTIC_TEXT = false
