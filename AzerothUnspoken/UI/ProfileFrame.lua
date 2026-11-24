-- Azeroth Unspoken: finestra del profilo del personaggio (Character Soul, GDD §7.1).
-- Scelta dell'archetipo (una preimpostazione), un cursore da 0 a 100 per ogni intensità (R4, #96), voce interiore,
-- the culture of origin (#124: chosen by hand, never from race or class),
-- argomenti da evitare, consenso a Total RP 3 e profilo neutro.
-- Ogni cambiamento vale subito (le frasi successive usano già il nuovo profilo) e si salva per personaggio.
-- Si apre con /au soul o dal pannello delle impostazioni. Il guscio è W.Window (#187): bordo, fascia del titolo, pulsante
-- di chiusura, Esc e scala. UI-6 (UI-ECO): the contents are on the theme: two W.Sections (archetype and traits; topics to
-- avoid), every text a Theme font with a token (no W.Adopt), the value of a trait in the mono font and `accent-text`, the
-- source of a choice a W.Badge, a W.ThinBar for how many traits the player has chosen. "Neutral profile" removes every
-- choice: it asks through a W.Dialog (Esc cancels it and only it) and says the result in a W.Toast (#190, UI-6).
local ADDON, NS = ...
local W = NS.Widgets
local Theme = NS.Theme
local Traits, Personality = NS.Traits, NS.Personality
---@class AUProfileFrame
local ProfileFrame = NS:RegisterModule("profile")
NS.ProfileFrame = ProfileFrame

local frame
local rows = {}        -- [tratto] = { label, value | slider + text, clear, source }
local topics = {}      -- [argomento] = pulsante
ProfileFrame.rows = rows   -- per i test
local ROW_HEIGHT = 26
local WIDTH = 700
local SECTION_W = WIDTH - 32   -- the two sections, 16 units from each edge
local SLIDER_STEP = 5       -- #183: the "-", "+" and mouse wheel of a trait slider (0-100)
local CONTROL_X = 170       -- the control of a row (the slider, the value button), inside its section
local TEXT_X = 412          -- the value of a slider as text
local CLEAR_X = 532         -- the "x" that removes a choice, the same column on every row
local SOURCE_X = 562        -- the badge that says where a value comes from
local HEADER_ROW = 34       -- the archetype row (its help may take two lines)
local PROGRESS_ROW = 24     -- how many traits the player chose
local TRAITS_BOTTOM = 12    -- the space under the last row of a section
local FOOT = 48             -- the buttons at the bottom of the window and the space around them
local SOURCE_TONE = { explicit = "accent", trp3 = "ok", game = "neutral" }   -- a tone and always the word too

-- dalla scelta esplicita al valore successivo (e infine a nessuna scelta)
local function NextChoice(def, current)
	if current == nil then return def.values[1] end
	for i, v in ipairs(def.values) do
		if v == current then return def.values[i + 1] end   -- dopo l'ultimo: nil = scelta tolta
	end
	return def.values[1]
end

local function Explicit(id)
	return Personality:Profile().traits[id]
end

local function Change(fn)
	fn()
	ProfileFrame:Refresh()
end

-- #124: the next culture of origin in Engine.CULTURE_ORDER (after the last: none)
local function NextCulture(current)
	local list = NS.Engine.CULTURE_ORDER
	if current == nil then return list[1] end
	for i, c in ipairs(list) do
		if c == current then return list[i + 1] end
	end
	return list[1]
end

-- a label of a row: the trait's name, in the medium weight
local function RowLabel(parent, y)
	local fs = Theme.NewText(parent, "BodyMedium", "text-1")
	fs:SetPoint("TOPLEFT", 16, -(y + 5))
	fs:SetWidth(CONTROL_X - 16 - 8)
	fs:SetJustifyH("LEFT")
	if fs.SetWordWrap then fs:SetWordWrap(false) end
	return fs
end

-- where a value comes from: a badge with the word (chosen, Total RP 3, game, neutral)
local function SourceBadge(parent, y)
	local b = W.Badge(parent, "", "neutral")
	b:SetPoint("TOPLEFT", SOURCE_X, -(y - 1))
	return b
end

-- #124 (D17): the culture of origin, chosen by hand and never deduced from race or class. A button that goes through the
-- cultures, as wide as the longest name in the interface language (measured, like the tabs of the journal), the "x"
-- that removes the choice and a note on what it changes
local CULTURE_PAD, CULTURE_MIN = 24, 170
local function BuildCultureRow(sec, y)
	local row = {}
	row.label = RowLabel(sec, y)
	row.value = W.FlatButton(sec, "", CULTURE_MIN, 24, function()
		Change(function() Personality:SetCulture(NextCulture(Personality:Culture())) end)
	end)
	row.value:SetPoint("TOPLEFT", CONTROL_X, -y)
	W.Tooltip(row.value, function() return NS:L("soul_culture_tip") end)
	row.clear = W.FlatButton(sec, "x", 24, 24, function() Change(function() Personality:SetCulture(nil) end) end)
	row.clear:SetPoint("TOPLEFT", CLEAR_X, -y)
	W.Tooltip(row.clear, function() return NS:L("soul_culture_clear_tip") end)
	row.source = SourceBadge(sec, y + 4)
	-- no culture chosen: a short note in words instead of the badge ("only common pieces" is too long for a badge)
	row.note = Theme.NewText(sec, "Small", "text-2")
	row.note:SetPoint("TOPLEFT", SOURCE_X, -(y + 1))
	row.note:SetWidth(SECTION_W - SOURCE_X - 10)
	row.note:SetJustifyH("LEFT")
	row.note:SetJustifyV("TOP")
	frame.culture = row
end

---The width of the culture button: the longest culture name (or "not set") in the font of the buttons, plus a margin,
---between CULTURE_MIN and the "x" column.
---@return number
function ProfileFrame:CultureWidth()
	if not frame then return CULTURE_MIN end
	local widest = 0
	local names = { NS:L("soul_none") }
	for _, c in ipairs(NS.Engine.CULTURE_ORDER) do table.insert(names, Personality:CultureName(c)) end
	for _, name in ipairs(names) do
		frame.measure:SetText(name)
		local w = frame.measure:GetStringWidth() or 0
		-- a client that does not measure hidden texts: about 7 units a character
		if w <= 0 then w = #name * 7 end
		if w > widest then widest = w end
	end
	return math.max(CULTURE_MIN, math.min(CLEAR_X - CONTROL_X - 6, math.ceil(widest) + CULTURE_PAD))
end

local function BuildTraitRow(sec, id, y)
	local def = Traits.defs[id]
	local row = {}
	row.label = RowLabel(sec, y)
	if def.kind == "scale" then
		-- un cursore: il valore cambia mentre si trascina e si salva al rilascio. #183: "-" and "+" at its ends and the
		-- mouse wheel move it by SLIDER_STEP, saved at once
		row.slider = W.Slider(sec, 236, def.min, def.max, function(v, final)
			row.text:SetText(Personality:DescribeTrait(id, { [id] = v }) or "")
			if final then Change(function() Personality:SetTrait(id, v) end) end
		end, { step = SLIDER_STEP, buttons = true })
		row.slider:SetPoint("TOPLEFT", CONTROL_X, -y)
		W.Tooltip(row.slider, function() return NS:L("soul_slider_tip") end)
		W.Tooltip(row.slider.minus, function() return NS:L("soul_step_tip", SLIDER_STEP) end)
		W.Tooltip(row.slider.plus, function() return NS:L("soul_step_tip", SLIDER_STEP) end)
		-- the number (and its pole) in the mono font and the accent text colour
		row.text = Theme.NewText(sec, "Mono", "accent-text")
		row.text:SetPoint("TOPLEFT", TEXT_X, -(y + 5))
		row.text:SetWidth(CLEAR_X - TEXT_X - 6)
		row.text:SetJustifyH("LEFT")
		if row.text.SetWordWrap then row.text:SetWordWrap(false) end
	else
		row.value = W.FlatButton(sec, "", 170, 24, function()
			Change(function() Personality:SetTrait(id, NextChoice(def, Explicit(id))) end)
		end)
		row.value:SetPoint("TOPLEFT", CONTROL_X, -y)
	end
	row.clear = W.FlatButton(sec, "x", 24, 24, function() Change(function() Personality:SetTrait(id, nil) end) end)
	row.clear:SetPoint("TOPLEFT", CLEAR_X, -y)
	W.Tooltip(row.clear, function() return NS:L("soul_clear_tip") end)
	row.source = SourceBadge(sec, y + 4)
	rows[id] = row
end

-- the height of section A, from what it holds: the header, the archetype row, the count, a row for each trait, the culture
local function TraitsHeight()
	local n = 1   -- the culture row
	for _, id in ipairs(Personality.TRAIT_ORDER) do if Traits.defs[id].kind ~= "set" then n = n + 1 end end
	return W.SECTION_TOP + HEADER_ROW + PROGRESS_ROW + n * ROW_HEIGHT + TRAITS_BOTTOM
end

local TOPIC_ROWS, TOPIC_COLS = 2, 4
local function AvoidHeight() return W.SECTION_TOP + TOPIC_ROWS * 28 + TRAITS_BOTTOM - 4 end

---Puts the two sections under the introduction, whatever its height, and gives the window the height they need.
function ProfileFrame:Layout()
	if not frame then return end
	local h = math.ceil(frame.intro:GetStringHeight() or 0)
	if h <= 0 then h = 45 end
	local top = W.TOP + h + 10
	frame.traits:ClearAllPoints()
	frame.traits:SetPoint("TOPLEFT", frame, "TOPLEFT", 16, -top)
	frame.avoid:ClearAllPoints()
	frame.avoid:SetPoint("TOPLEFT", frame, "TOPLEFT", 16, -(top + frame.traits:GetHeight() + 8))
	frame:SetHeight(top + frame.traits:GetHeight() + 8 + frame.avoid:GetHeight() + FOOT)
end

local function Build()
	-- the shell (#187): hidden at once (#192), title band, close box, Esc (#174), scale (#182)
	frame = W.Window(UIParent, WIDTH, 720, "soul_title", { name = "AzerothUnspokenProfile", point = { "CENTER", 0, 20 },
		refresh = function() ProfileFrame:Refresh() end })
	-- a closed window keeps nothing open: a question that waits is cancelled, the toast goes (#190, UI-6)
	frame:SetScript("OnHide", function()
		if frame.dialog:IsShown() then frame.dialog:Hide() end
		frame.toast:Dismiss()
	end)

	-- what the profile does and never does, in the 12-unit font (#182)
	frame.intro = Theme.NewText(frame, "Small", "text-2")
	frame.intro:SetPoint("TOPLEFT", 16, -W.TOP)
	frame.intro:SetWidth(WIDTH - 32)
	frame.intro:SetJustifyH("LEFT")
	frame.intro:SetJustifyV("TOP")
	-- measures the culture names (#124), never shown; the font of the flat buttons
	frame.measure = Theme.NewText(frame, "Button", "text-1")
	frame.measure:Hide()

	-- section A: the archetype, how many traits are chosen, a row for each trait, the inner voice and the culture of origin
	local sec = W.Section(frame, SECTION_W, TraitsHeight())
	frame.traits = sec
	local y = W.SECTION_TOP
	-- archetipo
	frame.archLabel = RowLabel(sec, y)
	frame.arch = W.FlatButton(sec, "", 170, 24, function()
		Change(function()
			local list = Personality.archetypes
			local profile = Personality:Profile()
			local _, i = Personality:GetArchetype(profile.archetype == "custom" and profile.base or profile.archetype)
			Personality:SetArchetype(list[((i or 0) % #list) + 1].id)
		end)
	end)
	frame.arch:SetPoint("TOPLEFT", CONTROL_X, -y)
	frame.archHelp = Theme.NewText(sec, "Small", "text-2")
	frame.archHelp:SetPoint("TOPLEFT", CONTROL_X + 178, -(y + 2))
	frame.archHelp:SetWidth(SECTION_W - CONTROL_X - 178 - 16)
	frame.archHelp:SetJustifyH("LEFT")
	frame.archHelp:SetJustifyV("TOP")
	y = y + HEADER_ROW
	-- how many of the traits the player chose: a number and a thin bar (the rest come from Total RP 3, the game or stay neutral)
	frame.progress = Theme.NewText(sec, "Small", "text-2")
	frame.progress:SetPoint("TOPLEFT", 16, -(y + 2))
	frame.progress:SetWidth(CONTROL_X + 60)
	frame.progress:SetJustifyH("LEFT")
	if frame.progress.SetWordWrap then frame.progress:SetWordWrap(false) end
	frame.progressBar = W.ThinBar(sec, { height = 4, width = 236 })
	frame.progressBar:SetPoint("TOPLEFT", CONTROL_X + 40, -(y + 8))
	y = y + PROGRESS_ROW

	-- tratti (gli argomenti da evitare hanno la loro griglia)
	for _, id in ipairs(Personality.TRAIT_ORDER) do
		if Traits.defs[id].kind ~= "set" then
			BuildTraitRow(sec, id, y)
			y = y + ROW_HEIGHT
		end
	end
	BuildCultureRow(sec, y)

	-- section B: the topics to avoid
	local avoid = W.Section(frame, SECTION_W, AvoidHeight())
	frame.avoid = avoid
	frame.avoidTitle = avoid.title
	local def = Traits.defs.avoid
	for i, topic in ipairs(def.values) do
		local b = W.FlatButton(avoid, "", 132, 24, function() Change(function() Personality:ToggleTopic(topic) end) end)
		local col, row = (i - 1) % TOPIC_COLS, math.floor((i - 1) / TOPIC_COLS)
		b:SetPoint("TOPLEFT", 16 + col * 160, -(W.SECTION_TOP + row * 28))
		topics[topic] = b
	end

	-- profilo neutro, consenso a Total RP 3, chiudi
	-- "Neutral profile" removes every choice of the character: it asks through a Dialog (#190, UI-6), in the style of the
	-- actions that lose data (#187), and the result is a Toast
	frame.dialog = W.Dialog(frame, "AzerothUnspokenProfileDialog", { width = 440 })
	frame.toast = W.Toast(frame)
	frame.toast:ClearAllPoints()
	frame.toast:SetPoint("TOP", frame, "TOP", 0, -(W.TOP + 4))
	frame.reset = W.FlatButton(frame, "", 220, 24, function()
		frame.dialog:Ask({ title = NS:L("soul_reset_dlg"), text = NS:L("soul_reset_dlg_text"), confirm = NS:L("soul_reset"),
			cancel = NS:L("dlg_cancel"), danger = true, onConfirm = function()
				Change(function() Personality:Reset() end)
				frame.toast:Say(NS:L("soul_toast_reset"), "ok")
			end })
	end, "danger")
	frame.reset:SetPoint("BOTTOMLEFT", 16, 16)
	W.Tooltip(frame.reset, function() return NS:L("soul_reset_tip") end)
	frame.trp3 = W.FlatButton(frame, "", 250, 24, function()
		Change(function() Personality:SetTRP3Consent(not Personality:Profile().trp3) end)
	end)
	frame.trp3:SetPoint("BOTTOMLEFT", 16 + 220 + 12, 16)
	W.Tooltip(frame.trp3, function() return NS:L("soul_trp3_tip") end)
	frame.close = W.FlatButton(frame, "", 110, 24, function() ProfileFrame:Close() end)
	frame.close:SetPoint("BOTTOMRIGHT", -16, 16)
	NS.Windows:Register(frame)   -- #181
end

function ProfileFrame:Refresh()
	if not frame or not frame:IsShown() then return end
	local effective, sources = Personality:Effective()
	local profile = Personality:Profile()
	frame.title:SetText(NS:L("soul_title"))
	frame.intro:SetText(NS:L("soul_intro"))
	frame.traits:SetTitle(NS:L("soul_section_traits"))
	frame.avoid:SetTitle(NS:L("soul_avoid_title"))
	frame.archLabel:SetText(NS:L("soul_archetype"))
	frame.arch:SetText(Personality:ArchetypeLabel(profile))
	frame.archHelp:SetText(Personality:ArchetypeHelp(profile.archetype == "custom" and profile.base or profile.archetype))
	local chosen, total = 0, 0
	for id, row in pairs(rows) do
		row.label:SetText(Traits.Name(id))
		local text = Personality:DescribeTrait(id, effective)
		if row.slider then
			total = total + 1
			if Explicit(id) ~= nil then chosen = chosen + 1 end
			-- senza valore il cursore sta al centro, ma il testo dice che il tratto non è impostato
			row.slider:SetQuiet(effective[id] or 50)
			row.text:SetText(text or NS:L("soul_none"))
			Theme.Text(row.text, text and "accent-text" or "text-3")
		else
			row.value:SetText(text or NS:L("soul_none"))
		end
		local src = sources[id]
		row.source:SetBadge(src and NS:L("soul_src_" .. src) or NS:L("soul_src_neutral"), SOURCE_TONE[src or ""] or "neutral")
		row.clear:SetShown(Explicit(id) ~= nil)
	end
	frame.progress:SetText(NS:L("soul_progress", chosen, total))
	frame.progressBar:SetFraction(total > 0 and chosen / total or 0)
	-- #124: the culture of origin
	local culture, cr = Personality:Culture(), frame.culture
	cr.label:SetText(NS:L("soul_culture"))
	cr.value:SetWidth(self:CultureWidth())
	cr.value:SetText(culture and Personality:CultureName(culture) or NS:L("soul_none"))
	cr.clear:SetShown(culture ~= nil)
	cr.source:SetShown(culture ~= nil)
	cr.note:SetShown(culture == nil)
	if culture then cr.source:SetBadge(NS:L("soul_src_explicit"), "accent") else cr.note:SetText(NS:L("soul_culture_unset")) end
	local avoided = effective.avoid or {}
	-- an avoided topic has a full edge and a bar under its name (#187), not a colour only
	for topic, b in pairs(topics) do
		b:SetText(Traits.ValueName("avoid", topic))
		b:SetSelected(avoided[topic] == true)
	end
	local present = NS.TotalRP3 and NS.TotalRP3:IsPresent()
	frame.trp3:SetShown(present and true or false)
	frame.trp3:SetText(NS:L("soul_trp3_consent") .. ": " .. (profile.trp3 and NS:L("on") or NS:L("off")))
	frame.reset:SetText(NS:L("soul_reset"))
	frame.close:SetText(NS:L("soul_close"))
	self:Layout()
end

function ProfileFrame:IsOpen()
	return frame ~= nil and frame:IsShown()
end

---@return boolean opened
function ProfileFrame:Open()
	if not frame then
		local ok, err = pcall(Build)
		if not ok then
			frame = nil
			NS.Diagnostics:Error("profile", tostring(err))
			return false
		end
	end
	frame.dialog:Hide()
	frame.toast:Dismiss()
	frame:Show()
	self:Refresh()
	return true
end

function ProfileFrame:Close()
	if frame then frame:Hide() end
end

---Apre o chiude la finestra. false se non si può costruire (i comandi ripiegano sul testo).
---@return boolean handled
function ProfileFrame:Toggle()
	if self:IsOpen() then
		self:Close()
		return true
	end
	return self:Open()
end
