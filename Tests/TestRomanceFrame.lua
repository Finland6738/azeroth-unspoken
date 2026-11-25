-- Tests of active romance, step R2 (ADR 0061, docs/specs/romance.md point 11): the interface.
--   - the flirt answers in the dialogue window (UI/DialogueFrame.lua): the kind `romance`, the heart, the numbers 4-5
--     and their keys, the tooltip;
--   - the romance popup (UI/RomanceFrame.lua): its states (the moment, the outcome, Close), the date options with their
--     tier chips, the fade to black (and at once with Animations off), Esc, a fight and a loading screen as "Not now",
--     never by itself;
--   - Settings > Romance, the Relationships detail (the stage, End the romance), /au romance, the voice token.
local NS = ...
local Engine, Config, R, I, N, LM = NS.Engine, NS.Config, NS.Relationships, NS.Interlocutor, NS.NPCAlive, NS.LivingMemory
local Ro, RF, DF, Theme = NS.Romance, NS.RomanceFrame, NS.DialogueFrame, NS.Theme
local Narrator, Director = NS.Narrator, NS.Director

local MALE, FEMALE = 2, 3
local DAY = 86400
local MARA, LYRA = 70002, 70001
local ROOT = "AzerothUnspokenRelations"

local function Guid(id) return ("Creature-0-3134-0-6-%d-0000A2E9A1"):format(id) end

NS:RegisterNPCs({ pack = "romui",
	[LYRA] = { name = "Lyra", role = "innkeeper", temperament = "cheerful", race = "Orc" },
	[MARA] = { name = "Mara", role = "innkeeper", race = "Human" },
})
NS:RegisterDialogues({ pack = "romui", flirts = {
	{ id = "glance", kind = "glance", stage = { "none", "vowed" }, tier = 1,
		label = { en = "Hold their gaze a moment longer.", it = "Reggi il suo sguardo un attimo di più." } },
	{ id = "word_alone", kind = "moment", moment = "declaration", stage = { "courtship", "courtship" }, tier = 1,
		label = { en = "Ask for a word alone.", it = "Chiedi una parola in disparte." } },
} })
local function Rule(event, speaker, when)
	return { event = event, speaker = speaker, form = speaker == "narrator" and "say" or nil, styles = { "everyday" }, conditions = when }
end
NS:RegisterPack({ id = "romui_lines", languages = { "enUS", "itIT" },
	events = { npcd_romance_welcome = { category = "social", chance = 0, cooldown = 0 },
		romance_scene = { category = "social", chance = 0, cooldown = 0 } },
	registry = { ["ru.welcome"] = Rule("npcd_romance_welcome", "npc", { romanceTier = 1 }),
		["ru.date.night"] = Rule("romance_scene", "narrator", { romanceTier = 2, romanceMoment = "date", romancePhase = "welcome" }) },
	texts = { enUS = { ["ru.welcome"] = "A warm smile.", ["ru.date.night"] = "The door closes softly behind you both." },
		itIT = { ["ru.welcome"] = "Un sorriso caldo.", ["ru.date.night"] = "La porta si chiude piano alle vostre spalle." } } })

local BASE = Ro.config.affinity.base
local function Fresh()
	NS.cdb.relationships = nil
	NS.cdb.memories = nil
	Config.Merge(Config.characterDefaults, NS.cdb)
	LM.readOnly = false
	LM:StartSession()
	LM:Sanitize()
	R.readOnly = false
	NS.Diagnostics.errors = {}
	R:Sanitize()
	R.candidates, R.dismissed, R.session = {}, {}, { seen = {}, offered = {} }
	R.interaction = nil
	I:OnInit()
	for k, v in pairs(Config.defaults.relations) do NS.db.relations[k] = v end
	NS.db.relations.favours, NS.db.relations.nicknames, NS.db.relations.localNotices, NS.db.relations.levelNotices = false, false, false, false
	NS.db.relations.attraction = true
	for k in pairs(NS.db.modules) do NS.db.modules[k] = (k ~= "audio") end
	NS.db.npcAlive.autoOffer = true
	NS.db.output.npcDialogues, NS.db.output.privateNarrator = true, true
	NS.db.ui.animations = true
	P.target, P.npc, P.combat, P.dead, P.resting, P.hour, P.sex = nil, nil, false, false, false, 14, MALE
	P.zone, P.subzone = "Durotar", ""
	SECRET_UNITS = {}
	NS.db.locale, NS.db.enabled, NS.paused = "en", true, false
	NS.db.intensity = 50
	NS.Gateway:Discard()
	Narrator:Clear()
	Director.queue, Director.log = {}, {}
	NS.Pacing:Reset()
	NS.Personality:SetArchetype("neutral")
	NS.Consent:Reset()
	N:OnInit()
	Ro:OnInit()
	RF:Close()
	FINISH_ANIMATIONS()
	Ro.random = function() return 0.5 end
	Ro.config.affinity.base = BASE
	SENT = {}
	ADVANCE(20)
end

local function Talk(id, name)
	P.npc = { name = name, guid = Guid(id), sex = FEMALE, reaction = 5, ctype = "Humanoid", ctypeID = 7 }
	ADVANCE(16)
	FIRE("GOSSIP_SHOW")
end

local AXES = { friend = { affection = 60, trust = 40, familiarity = 50 }, close = { affection = 80, trust = 70, familiarity = 80 } }
local function Meet(id, name, band, attraction)
	Talk(id, name)
	N:End("closed")
	local rec = R:Get("npc", id)
	for k, v in pairs(AXES[band or "friend"]) do rec[k] = v end
	rec.attraction, rec.today = attraction, nil
	return rec
end

local function Open(id, name)
	Talk(id, name)
	if N.state == "offered" then N:Open() else N:Start((N:Identify())) end
end

local function Printed()
	local out = {}
	for _, s in ipairs(SENT) do if type(s) == "string" and s:sub(1, 6) == "PRINT:" then table.insert(out, s) end end
	return table.concat(out, "\n")
end

local function Cmd(text)
	SENT = {}
	SlashCmdList.AZEROTHUNSPOKEN(text)
	return Printed()
end

local function ChatSent()
	for _, s in ipairs(SENT) do if type(s) == "string" and s:sub(1, 6) ~= "PRINT:" then return s end end
	return nil
end

---------------------------------------------------------------------------
-- The voice token
---------------------------------------------------------------------------
T.run("romance R2: the voice token voice-romance in both themes", function()
	T.eq(Theme.VOICE_TOKENS.romance, "voice-romance", "a voice of its own")
	local r, g, b = Theme.Color("voice-romance", "nebula")
	T.eq(("#%02X%02X%02X"):format(math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5)), "#FF7F6E", "coral in Nebula")
	r, g, b = Theme.Color("voice-romance", "aurora")
	T.eq(("#%02X%02X%02X"):format(math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5)), "#A3301F", "brick red in Aurora")
	for _, id in ipairs(Theme.ORDER) do
		local c = { Theme.Color("voice-romance", id) }
		local s = { Theme.Color("surface-3", id) }
		T.ok(Theme.Contrast(c, s) >= 4.5, ("%s: a flirt answer's label on its surface: %.2f"):format(id, Theme.Contrast(c, s)))
	end
	T.ok(NS.Widgets.BUTTON_KINDS.romance.ink == "voice-romance" and NS.Widgets.BUTTON_KINDS.romance.ring == "voice-romance",
		"the button kind romance")
end)

---------------------------------------------------------------------------
-- The dialogue window
---------------------------------------------------------------------------
T.run("romance R2: a flirt answer in the dialogue window: its kind, the heart, number 4, a tooltip", function()
	Fresh()
	T.eq(DF.ROMANCE, true, "the frame tells the engine it can draw flirts")
	T.eq(DF.MAX_BUTTONS, 5, "five buttons at most")
	T.ok(type(BINDING_NAME_AZEROTHUNSPOKEN_ANSWER4) == "string" and type(BINDING_NAME_AZEROTHUNSPOKEN_ANSWER5) == "string",
		"keys for answers 4 and 5")
	Meet(MARA, "Mara", "friend", 0)
	Open(MARA, "Mara")
	local f = DF:GetFrame()
	local flirt, neutral
	for _, b in ipairs(f.shownButtons) do
		if b.romance then flirt = b elseif b.choiceIndex then neutral = b end
	end
	T.ok(flirt ~= nil, "a flirt button is shown")
	T.eq(flirt.style, "romance", "of the kind romance")
	T.ok(flirt.heart:IsShown(), "with the heart")
	T.ok(not neutral.heart:IsShown() and neutral.style == "secondary", "a neutral answer stays plain")
	T.eq(flirt:GetText():sub(1, 3), flirt.choiceIndex .. ". ", "numbered after the neutral answers")
	T.ok(flirt.choiceIndex > neutral.choiceIndex, "after them")
	T.ok(flirt.auTip and flirt.auTip():find("Mara", 1, true) and flirt.auTip():find("welcome", 1, true), "the tooltip says what it is")
	T.eq(neutral.auTip, nil, "a neutral answer has no tooltip of its own")
	-- the key of its number answers it
	Ro.config.affinity.base = 90
	T.ok(DF:Press(flirt.choiceIndex), "its key presses it")
	T.eq(N.session.line.text, "A warm smile.", "the NPC's answer")
	for _, b in ipairs(f.shownButtons) do T.ok(not b.romance, "the flirts leave the window") end
	N:End("closed")
	-- with a beloved who is someone else, the tooltip says they may hear of it
	Fresh()
	local other = Meet(LYRA, "Lyra", "close", 60)
	other.romance = { st = "vowed" }
	R:Data().beloved = LYRA
	Meet(MARA, "Mara", "friend", 0)
	Open(MARA, "Mara")
	for _, b in ipairs(DF:GetFrame().shownButtons) do
		if b.romance then T.ok(b.auTip():find(NS:L("rom_tip_flirt_other", "Mara"), 1, true), "the beloved may hear of it") end
	end
	N:End("closed")
	T.eq(ChatSent(), nil, "nothing in chat")
end)

---------------------------------------------------------------------------
-- The popup
---------------------------------------------------------------------------
T.run("romance R2: the declaration in the popup, from the moment answer to the outcome and Close", function()
	Fresh()
	T.ok(RF:IsReady(), "the popup is built")
	T.eq(RF:View().shown, false, "it never opens by itself")
	local rec = Meet(MARA, "Mara", "friend", 55)
	rec.romance = { st = "courtship", dt = time() }
	Open(MARA, "Mara")
	local moment
	for i, c in ipairs(N.session.choices) do if c.moment then moment = i end end
	T.ok(moment ~= nil, "a moment answer in the dialogue")
	N:Choose(moment)
	local v = RF:View()
	T.ok(v.shown and v.moment == "declaration" and v.phase == "open", "the popup opens on the declaration")
	T.eq(v.text, NS:L("rom_scene_declaration_open", "Mara"), "the scene (the interface's own line without content)")
	T.eq(table.concat(v.buttons, "|"), NS:L("rom_btn_declare") .. "|" .. NS:L("rom_btn_not_yet"), "Speak your heart, then Not yet")
	local f = RF:GetFrame()
	T.eq(_G.AzerothUnspokenRomance, f, "its name")
	T.eq(f:GetFrameStrata(), "DIALOG", "over the narrator and the dialogue")
	T.eq(f.label:GetText(), NS:L("rom_label"), "the label Romance")
	T.ok(f.name:GetText():find("Mara", 1, true), "and the NPC's name")
	T.eq(f.badge:GetText(), NS:L("npc_badge"), "the badge: addon ambient dialogue")
	T.ok(f.heart:IsShown(), "the heart in the header")
	T.eq(f.goBtn.style, "primary", "the first choice is primary")
	T.eq(f.waitBtn.style, "text", "Not yet is a text button")
	T.ok(f.goBtn:GetLeft() > f.waitBtn:GetLeft(), "the choices from the right")
	-- the choice
	Ro.config.affinity.base = 90
	f.goBtn:Click()
	v = RF:View()
	T.eq(v.phase, "welcome", "welcomed")
	T.eq(v.text, NS:L("rom_scene_declaration_welcome", "Mara"), "the outcome's scene")
	T.eq(table.concat(v.buttons, "|"), NS:L("rom_btn_close"), "a single Close")
	T.eq(Ro:Beloved(), MARA, "the beloved")
	f.doneBtn:Click()
	FINISH_ANIMATIONS()
	T.eq(RF:View().shown, false, "closed")
	T.eq(ChatSent(), nil, "never chat")
end)

T.run("romance R2: Not yet, Esc, a fight and a loading screen cost nothing", function()
	for _, case in ipairs({
		{ what = "Not yet", act = function(f) f.waitBtn:Click() end },
		{ what = "the close box", act = function(f) f.closeBox:Click() end },
		{ what = "Esc", act = function(f) f:Hide() end },
		{ what = "a fight", act = function() FIRE("PLAYER_REGEN_DISABLED") end },
		{ what = "a loading screen", act = function() FIRE("PLAYER_ENTERING_WORLD", false, false) end },
	}) do
		Fresh()
		local rec = Meet(MARA, "Mara", "friend", 55)
		rec.romance = { st = "courtship", dt = time() }
		T.ok(RF:Open(MARA, "declaration"), case.what .. ": opened")
		local before = { attraction = rec.attraction, st = rec.romance.st, mo = rec.romance.mo }
		case.act(RF:GetFrame())
		FINISH_ANIMATIONS()
		T.eq(RF:View().shown, false, case.what .. ": closed")
		T.eq(RF.state, nil, case.what .. ": nothing open")
		T.ok(rec.attraction == before.attraction and rec.romance.st == before.st and rec.romance.mo == nil, case.what .. ": nothing changed")
		T.ok(Ro:CanOpen(MARA, "declaration"), case.what .. ": the moment is still there")
		P.combat = false
	end
	-- in a fight it does not open
	Fresh()
	local rec = Meet(MARA, "Mara", "friend", 55)
	rec.romance = { st = "courtship", dt = time() }
	P.combat = true
	T.eq(select(2, RF:Open(MARA, "declaration")), "combat", "not in a fight")
	P.combat = false
	-- a moment that is not due does not open
	rec.romance.st = "interest"
	T.eq(select(2, RF:Open(MARA, "declaration")), "closed", "not due: not opened")
end)

T.run("romance R2: a date: the options with their tier chips, the fade to black", function()
	Fresh()
	local rec = Meet(MARA, "Mara", "friend", 40)
	rec.romance = { st = "declared" }
	R:Data().beloved = MARA
	NS.db.relations.romanceTone = 2
	P.resting, P.hour = true, 23
	IsIndoors = function() return true end
	T.ok(RF:Open(MARA, "date"), "a date opens")
	local v = RF:View()
	T.eq(table.concat(v.options, ","), "walk,supper,night", "the options of an inn at night")
	T.eq(table.concat(v.buttons, "|"), NS:L("rom_btn_not_tonight"), "and Not tonight")
	local f = RF:GetFrame()
	local night
	for _, b in ipairs(f.options) do if b:IsShown() and b.dateId == "night" then night = b end end
	T.eq(night.style, "romance", "a date option is a romance button")
	T.eq(night.chip:GetText(), NS:L("rom_tone_intimate"), "with its tier chip")
	T.eq(night:GetText(), NS:L("rom_date_night"), "and its label")
	-- welcomed, tier 2: the scene, then it fades to black
	Ro.config.affinity.base = 90
	night:Click()
	v = RF:View()
	T.eq(v.phase, "welcome", "welcomed")
	T.eq(v.text, "The door closes softly behind you both.", "the content's scene at tier 2")
	T.eq(v.faded, false, "the scene shows first")
	ADVANCE(RF.FADE_AFTER + 0.1)
	FINISH_ANIMATIONS()
	v = RF:View()
	T.eq(v.faded, true, "then it fades to black")
	T.ok(f.later:IsShown() and f.later:GetText() == NS:L("rom_later"), "Later.")
	T.ok(not f.text:IsShown(), "the scene is gone")
	RF:Close()
	FINISH_ANIMATIONS()
	-- Animations off: the last view at once
	Fresh()
	rec = Meet(MARA, "Mara", "friend", 40)
	rec.romance = { st = "declared" }
	R:Data().beloved = MARA
	NS.db.relations.romanceTone = 2
	NS.db.ui.animations = false
	P.resting, P.hour = true, 23
	RF:Open(MARA, "date")
	Ro.config.affinity.base = 90
	RF:Choose("night")
	T.eq(RF:View().faded, true, "Animations off: Later. at once")
	RF:Close()
	IsIndoors = function() return false end
	NS.db.ui.animations = true
end)

---------------------------------------------------------------------------
-- Settings > Romance
---------------------------------------------------------------------------
T.run("romance R2: Settings > Romance: Active romance, the tone, the 18+ consent, the pack", function()
	Fresh()
	local S = NS.SettingsFrame
	local panel = S.panel
	T.ok(S:Row("opt_romance_active") and S:Row("opt_romance_active").switch, "the Active romance switch")
	T.ok(S:Row("opt_romance_tone") and S:Row("opt_romance_tone").seg, "the tone")
	T.ok(S:Row("opt_romance_adult") and S:Row("opt_romance_adult").button, "the 18+ consent")
	T.ok(S:Row("opt_romance_pack") and S:Row("opt_romance_pack").status, "the pack's state")
	local found
	for _, h in ipairs(panel.headers) do if h.key == "opt_section_romance" then found = h end end
	T.ok(found ~= nil, "a section Romance")
	local order = {}
	for i, h in ipairs(panel.headers) do order[h.key] = i end
	T.ok(order.opt_section_romance == order.opt_section_privacy + 1, "right after Privacy")
	panel:Refresh()
	local row = S:Row("opt_romance_active")
	T.eq(row.text:GetText(), NS:L("on"), "on by default")
	-- the attraction axis off: disabled, it says why
	NS.db.relations.attraction = false
	panel:Refresh()
	T.eq(row.text:GetText(), NS:L("rom_needs_attraction"), "needs the Attraction axis")
	T.ok(row.switch.disabled or (row.switch.IsEnabled and not row.switch:IsEnabled()), "and disabled")
	NS.db.relations.attraction = true
	panel:Refresh()
	-- the tone: Courteous; Explicit disabled without the consent
	local tone = S:Row("opt_romance_tone")
	T.eq(tone.seg:Active(), 1, "Courteous")
	T.ok(tone.seg.buttons[3]:GetAlpha() < 1, "Explicit disabled without the consent")
	tone.seg:Select(2)
	T.eq(NS.db.relations.romanceTone, 2, "Intimate chosen")
	-- the consent: two steps
	local adult = S:Row("opt_romance_adult")
	T.eq(adult.button:GetText(), NS:L("off"), "the consent off")
	adult.button:Click()
	panel:Refresh()
	T.eq(adult.button:GetText(), NS:L("consent_off_reading"), "the warning is up")
	adult.button:Click()
	T.eq(Ro:AdultOn(), false, "a double click does nothing")
	ADVANCE(NS.Consent.MIN_DELAY + 0.1)
	adult.button:Click()
	T.eq(Ro:AdultOn(), true, "the second step turns it on")
	panel:Refresh()
	T.eq(tone.seg.buttons[3]:GetAlpha(), 1, "Explicit can be chosen")
	tone.seg:Select(3)
	T.eq(NS.db.relations.romanceTone, 3, "Explicit chosen")
	T.eq(S:Row("opt_romance_pack").text:GetText(), NS:L("rom_pack_missing"), "the pack: not installed")
	adult.button:Click()
	T.eq(Ro:AdultOn(), false, "off in one click")
	T.eq(NS.db.relations.romanceTone, 2, "the tone back to Intimate")
	for _, k in ipairs({ "opt_section_romance", "opt_romance_active", "opt_romance_tone", "opt_romance_adult", "opt_romance_pack" }) do
		T.ok(NS:L(k) ~= k, "a text for " .. k)
	end
end)

---------------------------------------------------------------------------
-- The Relationships window
---------------------------------------------------------------------------
T.run("romance R2: the Relationships detail shows the stage, and End the romance for the beloved", function()
	Fresh()
	local rec = Meet(MARA, "Mara", "close", 85)
	rec.romance, rec.noted = { st = "vowed" }, { vow = true }
	R:Data().beloved = MARA
	local other = Meet(LYRA, "Lyra", "friend", 10)
	other.romance = { st = "interest" }
	local RFr = NS.RelationsFrame
	RFr:Open({ kind = "npc", key = LYRA })
	local frame = _G[ROOT]
	T.ok(frame.dSeenFacts:GetText():find(NS:L("rel_rom_stage", NS:L("rom_stage_interest")), 1, true), "the stage of another")
	T.ok(not frame.dEndRomance:IsShown(), "no End the romance for another")
	RFr:Open({ kind = "npc", key = MARA })
	T.ok(frame.dSeenFacts:GetText():find(NS:L("rel_rom_beloved"), 1, true), "the beloved is said")
	T.ok(frame.dEndRomance:IsShown(), "End the romance for the beloved")
	T.eq(frame.dEndRomance.style, "danger", "a danger button")
	frame.dEndRomance:Click()
	T.ok(frame.dialog:IsShown(), "a Dialog asks first")
	frame.dialog.cancel:Click()
	T.eq(Ro:Beloved(), MARA, "cancel: nothing ends")
	frame.dEndRomance:Click()
	frame.dialog.confirm:Click()
	T.eq(Ro:Beloved(), nil, "confirmed: the romance ends")
	T.eq(rec.romance.st, "ended", "ended")
	T.ok(not frame.dEndRomance:IsShown(), "the button goes")
	RFr:Close()
end)

---------------------------------------------------------------------------
-- /au romance
---------------------------------------------------------------------------
T.run("romance R2: /au romance: the state, on and off, the tone, the consent, the break-up twice, why", function()
	Fresh()
	T.ok(Cmd("romance"):find(NS:L("rom_status_none"), 1, true), "no beloved")
	Cmd("romance off")
	T.eq(NS.db.relations.romanceActive, false, "off")
	Cmd("romance on")
	T.eq(NS.db.relations.romanceActive, true, "on")
	Cmd("romance tone intimate")
	T.eq(NS.db.relations.romanceTone, 2, "tone intimate")
	T.ok(Cmd("romance tone explicit"):find(NS:L("rom_tone_needs_adult"), 1, true), "explicit needs the consent")
	T.eq(NS.db.relations.romanceTone, 2, "unchanged")
	T.ok(Cmd("romance tone loud"):find("courteous, intimate, explicit", 1, true), "an unknown tone: the values")
	Cmd("romance adult on")
	T.eq(Ro:AdultOn(), false, "the first step only warns")
	ADVANCE(NS.Consent.MIN_DELAY + 0.1)
	Cmd("romance adult on")
	T.eq(Ro:AdultOn(), true, "the second step")
	Cmd("romance adult off")
	T.eq(Ro:AdultOn(), false, "off at once")
	-- the targeted NPC: the stage, and the due moment opens
	local rec = Meet(MARA, "Mara", "friend", 55)
	rec.romance = { st = "courtship", dt = time() }
	P.npc = nil
	P.target = { name = "Mara", guid = Guid(MARA), sex = FEMALE, reaction = 5, ctype = "Humanoid", ctypeID = 7 }
	local out = Cmd("romance")
	T.ok(out:find(NS:L("rom_status_target", "Mara", NS:L("rom_stage_courtship")), 1, true), "the stage with the target")
	T.ok(RF:View().shown and RF:View().moment == "declaration", "the due moment opens")
	Ro.config.affinity.base = 90
	RF:Choose()
	RF:Close()
	-- why: the parts of the last score
	out = Cmd("romance why")
	T.ok(out:find("Mara", 1, true) and out:find("base", 1, true), "why: the parts")
	-- the break-up: twice within 30 seconds
	out = Cmd("romance end")
	T.ok(out:find("Mara", 1, true), "the first time asks")
	T.eq(Ro:Beloved(), MARA, "nothing ended yet")
	ADVANCE(31)
	Cmd("romance end")
	T.eq(Ro:Beloved(), MARA, "too late: it asks again")
	out = Cmd("romance end")
	T.eq(Ro:Beloved(), nil, "the second time within 30 s ends it")
	T.ok(out:find(NS:L("rom_end_done", "Mara"), 1, true), "said")
	T.ok(Cmd("romance end"):find(NS:L("rom_end_none"), 1, true), "no beloved left")
	T.ok(Cmd("romance dance"):find(NS:L("values_romance"), 1, true), "an unknown word: the values")
	P.target = nil
	T.eq(ChatSent(), nil, "nothing in chat")
	-- the help lists it under Character
	T.ok(Cmd("help character"):find("/au romance", 1, true), "/au help character lists /au romance")
end)

T.run("romance R2: every new interface text in English and Italian, no link", function()
	local it, en = NS.languages.it.ui, NS.languages.en.ui
	local n = 0
	for k, v in pairs(en) do
		if k:match("^rom_") or k:match("^rel_rom_") or k:match("^opt_romance") or k == "opt_section_romance" or k == "help_romance" then
			n = n + 1
			T.ok(type(it[k]) == "string" and it[k] ~= "", "IT has " .. k)
			local _, ne = v:gsub("%%[sd]", ""); local _, ni = (it[k] or ""):gsub("%%[sd]", "")
			T.eq(ni, ne, k .. ": the same values")
			T.ok(not v:find("http", 1, true) and not (it[k] or ""):find("http", 1, true), "no link in " .. k)
		end
	end
	T.ok(n > 60, "the texts of R2: " .. n)
end)

T.run("romance R2: no error intercepted", function()
	Ro.config.affinity.base = BASE
	local list = {}
	for _, e in pairs(NS.Diagnostics.errors) do table.insert(list, e.module .. ": " .. tostring(e.message)) end
	T.eq(table.concat(list, "; "), "", "no errors")
end)
