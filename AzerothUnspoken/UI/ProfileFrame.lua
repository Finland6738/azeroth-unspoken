-- Azeroth Unspoken: finestra del profilo del personaggio (Character Soul, GDD §7.1).
-- Scelta dell'archetipo, modifica dei tratti, argomenti da evitare, consenso a Total RP 3 e profilo neutro.
-- Ogni cambiamento vale subito (le frasi successive usano già il nuovo profilo) e si salva per personaggio.
-- Si apre con /au soul o dal pannello delle impostazioni. Solo pulsanti standard, come il resto dell'interfaccia.
local ADDON, NS = ...
local W = NS.Widgets
local Traits, Personality = NS.Traits, NS.Personality
---@class AUProfileFrame
local ProfileFrame = NS:RegisterModule("profile")
NS.ProfileFrame = ProfileFrame

local frame
local rows = {}        -- [tratto] = { label, value, minus, plus, clear, source }
local topics = {}      -- [argomento] = pulsante
local SCALE_STEP = 10

local function Selected(text, on)
	return on and ("|cff7fff7f» " .. text .. " «|r") or text
end

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
	row.label:SetWidth(130)
	row.label:SetJustifyH("LEFT")
	row.value = W.Button(frame, "", 170, 24, function()
		Change(function()
			if def.kind == "scale" then
				-- il pulsante sul valore imposta il centro la prima volta, poi toglie la scelta
				Personality:SetTrait(id, Explicit(id) == nil and 50 or nil)
			else
				Personality:SetTrait(id, NextChoice(def, Explicit(id)))
			end
		end)
	end)
	row.value:SetPoint("TOPLEFT", 150, y)
	local x = 324
	if def.kind == "scale" then
		row.minus = W.Button(frame, "-", 24, 24, function()
			Change(function()
				local v = Explicit(id) or (Personality:Effective())[id] or 50
				Personality:SetTrait(id, math.max(def.min, v - SCALE_STEP))
			end)
		end)
		row.minus:SetPoint("TOPLEFT", x, y)
		row.plus = W.Button(frame, "+", 24, 24, function()
			Change(function()
				local v = Explicit(id) or (Personality:Effective())[id] or 50
				Personality:SetTrait(id, math.min(def.max, v + SCALE_STEP))
			end)
		end)
		row.plus:SetPoint("TOPLEFT", x + 26, y)
		x = x + 56
	end
	row.clear = W.Button(frame, "x", 24, 24, function() Change(function() Personality:SetTrait(id, nil) end) end)
	row.clear:SetPoint("TOPLEFT", x, y)
	W.Tooltip(row.clear, function() return NS:L("soul_clear_tip") end)
	row.source = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	row.source:SetPoint("TOPLEFT", x + 30, y - 6)
	row.source:SetWidth(110)
	row.source:SetJustifyH("LEFT")
	rows[id] = row
end

local function Build()
	frame = CreateFrame("Frame", "AzerothUnspokenProfile", UIParent)
	frame:SetSize(580, 520)
	frame:SetPoint("CENTER", 0, 20)
	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetClampedToScreen(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
	W.Background(frame, 0.05, 0.04, 0.09, 0.95)

	frame.title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	frame.title:SetPoint("TOPLEFT", 16, -12)
	frame.intro = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.intro:SetPoint("TOPLEFT", 16, -40)
	frame.intro:SetWidth(548)
	frame.intro:SetJustifyH("LEFT")

	-- archetipo
	frame.archLabel = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.archLabel:SetPoint("TOPLEFT", 16, -88)
	frame.archLabel:SetWidth(130)
	frame.archLabel:SetJustifyH("LEFT")
	frame.arch = W.Button(frame, "", 170, 24, function()
		Change(function()
			local list = Personality.archetypes
			local _, i = Personality:GetArchetype(Personality:Profile().archetype)
			Personality:SetArchetype(list[((i or 0) % #list) + 1].id)
		end)
	end)
	frame.arch:SetPoint("TOPLEFT", 150, -83)
	frame.archHelp = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	frame.archHelp:SetPoint("TOPLEFT", 332, -88)
	frame.archHelp:SetWidth(232)
	frame.archHelp:SetJustifyH("LEFT")

	-- tratti (gli argomenti da evitare hanno la loro griglia)
	local y = -120
	for _, id in ipairs(Personality.TRAIT_ORDER) do
		if Traits.defs[id].kind ~= "set" then
			BuildTraitRow(id, y)
			y = y - 30
		end
	end

	-- argomenti da evitare
	frame.avoidTitle = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.avoidTitle:SetPoint("TOPLEFT", 16, y - 6)
	local def = Traits.defs.avoid
	for i, topic in ipairs(def.values) do
		local b = W.Button(frame, "", 132, 24, function() Change(function() Personality:ToggleTopic(topic) end) end)
		local col, row = (i - 1) % 4, math.floor((i - 1) / 4)
		b:SetPoint("TOPLEFT", 16 + col * 138, y - 30 - row * 28)
		topics[topic] = b
	end

	-- consenso a Total RP 3, profilo neutro, chiudi
	frame.trp3 = W.Button(frame, "", 250, 24, function()
		Change(function() Personality:SetTRP3Consent(not Personality:Profile().trp3) end)
	end)
	frame.trp3:SetPoint("BOTTOMLEFT", 16, 50)
	W.Tooltip(frame.trp3, function() return NS:L("soul_trp3_tip") end)
	frame.reset = W.Button(frame, "", 150, 24, function() Change(function() Personality:Reset() end) end)
	frame.reset:SetPoint("BOTTOMLEFT", 16, 16)
	frame.close = W.Button(frame, "", 110, 24, function() ProfileFrame:Close() end)
	frame.close:SetPoint("BOTTOMRIGHT", -16, 16)
	frame:Hide()
end

function ProfileFrame:Refresh()
	if not frame or not frame:IsShown() then return end
	local effective, sources = Personality:Effective()
	local profile = Personality:Profile()
	frame.title:SetText(NS:L("soul_title"))
	frame.intro:SetText(NS:L("soul_intro"))
	frame.archLabel:SetText(NS:L("soul_archetype"))
	frame.arch:SetText(Personality:ArchetypeName(profile.archetype))
	frame.archHelp:SetText(Personality:ArchetypeHelp(profile.archetype))
	for id, row in pairs(rows) do
		local def = Traits.defs[id]
		row.label:SetText(Traits.Name(id))
		local text = Traits.Describe(def, effective)
		row.value:SetText(text or NS:L("soul_none"))
		local src = sources[id]
		row.source:SetText(src and NS:L("soul_src_" .. src) or NS:L("soul_src_neutral"))
		row.clear:SetShown(Explicit(id) ~= nil)
	end
	frame.avoidTitle:SetText(NS:L("soul_avoid_title"))
	local avoided = effective.avoid or {}
	for topic, b in pairs(topics) do
		b:SetText(Selected(Traits.ValueName("avoid", topic), avoided[topic] == true))
	end
	local present = NS.TotalRP3 and NS.TotalRP3:IsPresent()
	frame.trp3:SetShown(present and true or false)
	frame.trp3:SetText(NS:L("soul_trp3_consent") .. ": " .. (profile.trp3 and NS:L("on") or NS:L("off")))
	frame.reset:SetText(NS:L("soul_reset"))
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
