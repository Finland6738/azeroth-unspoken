-- Azeroth Unspoken: finestra del profilo del personaggio (Character Soul, GDD §7.1).
-- Scelta dell'archetipo (una preimpostazione), un cursore da 0 a 100 per ogni intensità (R4, #96), voce interiore,
-- the culture of origin (#124: chosen by hand, never from race or class),
-- argomenti da evitare, consenso a Total RP 3 e profilo neutro.
-- Ogni cambiamento vale subito (le frasi successive usano già il nuovo profilo) e si salva per personaggio.
-- Si apre con /au soul o dal pannello delle impostazioni. Il guscio è W.Window (#187): bordo, fascia del titolo, pulsante
-- di chiusura, Esc e scala; pulsanti piatti. "Profilo neutro" toglie ogni scelta: chiede un secondo clic (#190).
local ADDON, NS = ...
local W = NS.Widgets
local Traits, Personality = NS.Traits, NS.Personality
---@class AUProfileFrame
local ProfileFrame = NS:RegisterModule("profile")
NS.ProfileFrame = ProfileFrame

local frame
local rows = {}        -- [tratto] = { label, value | slider + text, clear, source }
local topics = {}      -- [argomento] = pulsante
ProfileFrame.rows = rows   -- per i test
local ROW_HEIGHT = 26
local WIDTH, HEIGHT = 700, 700
local TOP = 118            -- the archetype row, under an introduction of up to four lines (#182)
local SLIDER_STEP = 5       -- #183: the "-", "+" and mouse wheel of a trait slider (0-100)
local CLEAR_X = 556        -- the "x" that removes a choice, the same column on every row
local RESET_SECONDS = 6    -- after the first click on "Neutral profile" there is this long for the second
-- "Neutral profile" waits for a second click (#190); a redraw when the arming expires
local confirmReset = W.Confirm(RESET_SECONDS, function() ProfileFrame:Refresh() end)

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

-- #124 (D17): the culture of origin, chosen by hand and never deduced from race or class. A button that goes through the
-- cultures, as wide as the longest name in the interface language (measured, like the tabs of the journal), the "x"
-- that removes the choice and a note on what it changes
local CULTURE_PAD, CULTURE_MIN = 24, 170
local function BuildCultureRow(y)
	local row = {}
	row.label = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	row.label:SetPoint("TOPLEFT", 16, y - 5)
	row.label:SetWidth(170)
	row.label:SetJustifyH("LEFT")
	row.value = W.FlatButton(frame, "", CULTURE_MIN, 24, function()
		Change(function() Personality:SetCulture(NextCulture(Personality:Culture())) end)
	end)
	row.value:SetPoint("TOPLEFT", 190, y)
	W.Tooltip(row.value, function() return NS:L("soul_culture_tip") end)
	row.clear = W.FlatButton(frame, "x", 24, 24, function() Change(function() Personality:SetCulture(nil) end) end)
	row.clear:SetPoint("TOPLEFT", CLEAR_X, y)
	W.Tooltip(row.clear, function() return NS:L("soul_culture_clear_tip") end)
	row.source = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	row.source:SetPoint("TOPLEFT", CLEAR_X + 30, y - 6)
	row.source:SetWidth(WIDTH - 16 - CLEAR_X - 30)
	row.source:SetJustifyH("LEFT")
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
	return math.max(CULTURE_MIN, math.min(CLEAR_X - 190 - 6, math.ceil(widest) + CULTURE_PAD))
end

local function BuildTraitRow(id, y)
	local def = Traits.defs[id]
	local row = {}
	row.label = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	row.label:SetPoint("TOPLEFT", 16, y - 5)
	row.label:SetWidth(170)
	row.label:SetJustifyH("LEFT")
	local x = 190
	if def.kind == "scale" then
		-- un cursore: il valore cambia mentre si trascina e si salva al rilascio. #183: "-" and "+" at its ends and the
		-- mouse wheel move it by SLIDER_STEP, saved at once
		row.slider = W.Slider(frame, 236, def.min, def.max, function(v, final)
			row.text:SetText(Personality:DescribeTrait(id, { [id] = v }) or "")
			if final then Change(function() Personality:SetTrait(id, v) end) end
		end, { step = SLIDER_STEP, buttons = true })
		row.slider:SetPoint("TOPLEFT", x, y)
		W.Tooltip(row.slider, function() return NS:L("soul_slider_tip") end)
		W.Tooltip(row.slider.minus, function() return NS:L("soul_step_tip", SLIDER_STEP) end)
		W.Tooltip(row.slider.plus, function() return NS:L("soul_step_tip", SLIDER_STEP) end)
		row.text = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
		row.text:SetPoint("TOPLEFT", x + 242, y - 6)
		row.text:SetWidth(120)
		row.text:SetJustifyH("LEFT")
	else
		row.value = W.FlatButton(frame, "", 170, 24, function()
			Change(function() Personality:SetTrait(id, NextChoice(def, Explicit(id))) end)
		end)
		row.value:SetPoint("TOPLEFT", x, y)
	end
	x = CLEAR_X
	row.clear = W.FlatButton(frame, "x", 24, 24, function() Change(function() Personality:SetTrait(id, nil) end) end)
	row.clear:SetPoint("TOPLEFT", x, y)
	W.Tooltip(row.clear, function() return NS:L("soul_clear_tip") end)
	row.source = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	row.source:SetPoint("TOPLEFT", x + 30, y - 6)
	row.source:SetWidth(WIDTH - 16 - x - 30)
	row.source:SetJustifyH("LEFT")
	rows[id] = row
end

local function Build()
	-- the shell (#187): hidden at once (#192), title band, close box, Esc (#174), scale (#182)
	frame = W.Window(UIParent, WIDTH, HEIGHT, "soul_title", { name = "AzerothUnspokenProfile", point = { "CENTER", 0, 20 },
		refresh = function() ProfileFrame:Refresh() end })
	-- a closed window keeps nothing armed (#190)
	frame:SetScript("OnHide", function() confirmReset:Disarm() end)

	-- what the profile does and never does, in the 12-unit font (#182)
	frame.intro = frame:CreateFontString(nil, "ARTWORK", W.TEXT_FONT)
	frame.intro:SetPoint("TOPLEFT", 16, -W.TOP)
	frame.intro:SetWidth(WIDTH - 32)
	frame.intro:SetJustifyH("LEFT")
	-- measures the culture names (#124), never shown; the font of the flat buttons
	frame.measure = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.measure:Hide()

	-- archetipo
	frame.archLabel = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.archLabel:SetPoint("TOPLEFT", 16, -(TOP + 5))
	frame.archLabel:SetWidth(130)
	frame.archLabel:SetJustifyH("LEFT")
	frame.arch = W.FlatButton(frame, "", 170, 24, function()
		Change(function()
			local list = Personality.archetypes
			local profile = Personality:Profile()
			local _, i = Personality:GetArchetype(profile.archetype == "custom" and profile.base or profile.archetype)
			Personality:SetArchetype(list[((i or 0) % #list) + 1].id)
		end)
	end)
	frame.arch:SetPoint("TOPLEFT", 150, -TOP)
	frame.archHelp = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.archHelp:SetPoint("TOPLEFT", 332, -(TOP + 5))
	frame.archHelp:SetWidth(WIDTH - 16 - 332)
	frame.archHelp:SetJustifyH("LEFT")

	-- tratti (gli argomenti da evitare hanno la loro griglia)
	local y = -(TOP + 36)
	for _, id in ipairs(Personality.TRAIT_ORDER) do
		if Traits.defs[id].kind ~= "set" then
			BuildTraitRow(id, y)
			y = y - ROW_HEIGHT
		end
	end
	BuildCultureRow(y)
	y = y - ROW_HEIGHT

	-- argomenti da evitare
	frame.avoidTitle = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.avoidTitle:SetPoint("TOPLEFT", 16, y - 6)
	local def = Traits.defs.avoid
	for i, topic in ipairs(def.values) do
		local b = W.FlatButton(frame, "", 132, 24, function() Change(function() Personality:ToggleTopic(topic) end) end)
		local col, row = (i - 1) % 4, math.floor((i - 1) / 4)
		b:SetPoint("TOPLEFT", 16 + col * 160, y - 30 - row * 28)
		topics[topic] = b
	end

	-- consenso a Total RP 3, profilo neutro, chiudi
	frame.trp3 = W.FlatButton(frame, "", 250, 24, function()
		Change(function() Personality:SetTRP3Consent(not Personality:Profile().trp3) end)
	end)
	frame.trp3:SetPoint("BOTTOMLEFT", 16, 50)
	W.Tooltip(frame.trp3, function() return NS:L("soul_trp3_tip") end)
	-- "Neutral profile" removes every choice of the character: the first click arms it, the second (within a few
	-- seconds) clears the profile (#190), in the style of the actions that lose data (#187)
	frame.reset = W.FlatButton(frame, "", 220, 24, function()
		if confirmReset:Is() then
			confirmReset:Disarm()
			Change(function() Personality:Reset() end)
		else
			confirmReset:Arm()
			ProfileFrame:Refresh()
		end
	end, "danger")
	frame.reset:SetPoint("BOTTOMLEFT", 16, 16)
	W.Tooltip(frame.reset, function() return NS:L(confirmReset:Is() and "soul_reset_confirm_tip" or "soul_reset_tip") end)
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
	frame.archLabel:SetText(NS:L("soul_archetype"))
	frame.arch:SetText(Personality:ArchetypeLabel(profile))
	frame.archHelp:SetText(Personality:ArchetypeHelp(profile.archetype == "custom" and profile.base or profile.archetype))
	for id, row in pairs(rows) do
		row.label:SetText(Traits.Name(id))
		local text = Personality:DescribeTrait(id, effective)
		if row.slider then
			-- senza valore il cursore sta al centro, ma il testo dice che il tratto non è impostato
			row.slider:SetQuiet(effective[id] or 50)
			row.text:SetText(text or NS:L("soul_none"))
		else
			row.value:SetText(text or NS:L("soul_none"))
		end
		local src = sources[id]
		row.source:SetText(src and NS:L("soul_src_" .. src) or NS:L("soul_src_neutral"))
		row.clear:SetShown(Explicit(id) ~= nil)
	end
	-- #124: the culture of origin
	local culture, cr = Personality:Culture(), frame.culture
	cr.label:SetText(NS:L("soul_culture"))
	cr.value:SetWidth(self:CultureWidth())
	cr.value:SetText(culture and Personality:CultureName(culture) or NS:L("soul_none"))
	cr.clear:SetShown(culture ~= nil)
	cr.source:SetText(NS:L(culture and "soul_src_explicit" or "soul_culture_unset"))
	frame.avoidTitle:SetText(NS:L("soul_avoid_title"))
	local avoided = effective.avoid or {}
	-- an avoided topic has a full edge and a bar under its name (#187), not a colour only
	for topic, b in pairs(topics) do
		b:SetText(Traits.ValueName("avoid", topic))
		b:SetSelected(avoided[topic] == true)
	end
	local present = NS.TotalRP3 and NS.TotalRP3:IsPresent()
	frame.trp3:SetShown(present and true or false)
	frame.trp3:SetText(NS:L("soul_trp3_consent") .. ": " .. (profile.trp3 and NS:L("on") or NS:L("off")))
	frame.reset:SetText(NS:L(confirmReset:Is() and "soul_reset_confirm" or "soul_reset"))
	frame.reset:SetArmed(confirmReset:Is())
	frame.close:SetText(NS:L("soul_close"))
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
	confirmReset:Disarm()
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
