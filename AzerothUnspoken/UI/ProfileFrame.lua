-- Azeroth Unspoken: finestra del profilo del personaggio (Character Soul, GDD §7.1).
-- Scelta dell'archetipo (una preimpostazione), un cursore da 0 a 100 per ogni intensità (R4, #96), voce interiore,
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
local WIDTH, HEIGHT = 680, 700
local TOP = 104            -- the archetype row, under an introduction of up to three lines (#182)
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

local function BuildTraitRow(id, y)
	local def = Traits.defs[id]
	local row = {}
	row.label = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	row.label:SetPoint("TOPLEFT", 16, y - 5)
	row.label:SetWidth(170)
	row.label:SetJustifyH("LEFT")
	local x = 190
	if def.kind == "scale" then
		-- un cursore: il valore cambia mentre si trascina e si salva al rilascio
		row.slider = W.Slider(frame, 200, def.min, def.max, function(v, final)
			row.text:SetText(Personality:DescribeTrait(id, { [id] = v }) or "")
			if final then Change(function() Personality:SetTrait(id, v) end) end
		end)
		row.slider:SetPoint("TOPLEFT", x, y - 4)
		W.Tooltip(row.slider, function() return NS:L("soul_slider_tip") end)
		row.text = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
		row.text:SetPoint("TOPLEFT", x + 210, y - 6)
		row.text:SetWidth(120)
		row.text:SetJustifyH("LEFT")
		x = x + 336
	else
		row.value = W.FlatButton(frame, "", 170, 24, function()
			Change(function() Personality:SetTrait(id, NextChoice(def, Explicit(id))) end)
		end)
		row.value:SetPoint("TOPLEFT", x, y)
		x = x + 336
	end
	row.clear = W.FlatButton(frame, "x", 24, 24, function() Change(function() Personality:SetTrait(id, nil) end) end)
	row.clear:SetPoint("TOPLEFT", x, y)
	W.Tooltip(row.clear, function() return NS:L("soul_clear_tip") end)
	row.source = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	row.source:SetPoint("TOPLEFT", x + 30, y - 6)
	row.source:SetWidth(90)
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
	frame.archHelp:SetWidth(332)
	frame.archHelp:SetJustifyH("LEFT")

	-- tratti (gli argomenti da evitare hanno la loro griglia)
	local y = -(TOP + 36)
	for _, id in ipairs(Personality.TRAIT_ORDER) do
		if Traits.defs[id].kind ~= "set" then
			BuildTraitRow(id, y)
			y = y - ROW_HEIGHT
		end
	end

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
