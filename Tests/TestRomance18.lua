-- Tests of active romance, step R4 (ADR 0061, docs/specs/romance.md points 12 and 17): the optional 18+ pack
-- AzerothUnspoken_Romance18, installed LoadOnDemand next to the addon like a player who downloads it from the GitHub
-- release (run_tests.py sets REPO_ROOT; the pack is never part of the download the other tests load).
--   - the first lock: nothing loads it without the consent and the tone Explicit;
--   - the second lock: it registers only with the consent on, and is dropped (rules, texts, flirts) when it goes off;
--   - the third lock: only tier 3 in an 18+ pack, tier 3 only there (the validator);
--   - its own validator run is clean, and its lines are picked at tier 3, privately.
local NS = ...
local Engine, R, Ro, Validator = NS.Engine, NS.Relationships, NS.Romance, NS.Validator

local ADDON = "AzerothUnspoken_Romance18"
local PACK = "romance18_base"
local NPC = 70401

local function Count(t) local n = 0; for _ in pairs(t or {}) do n = n + 1 end; return n end
local function Event(p) return p.event or (p.events and p.events[1]) end

local function Flirts18()
	local out = {}
	for _, f in ipairs(Ro.flirts) do if f.pack == PACK then table.insert(out, f) end end
	return out
end

local function Loads()
	local n = 0
	for _, c in ipairs(LOAD_CALLS) do if c.name == ADDON then n = n + 1 end end
	return n
end

local function ConsentOn()
	if Ro:AdultOn() then return end
	Ro:SetAdult(true)
	ADVANCE(NS.Consent.MIN_DELAY + 0.1)
	Ro:SetAdult(true)
end

local function ChatSent()
	for _, m in ipairs(SENT) do
		if type(m) == "string" and m:sub(1, 6) ~= "PRINT:" then return m end
	end
	return nil
end

INSTALL_PACKS(REPO_ROOT, { ADDON }, false)

T.run("romance R4: the 18+ pack is installed, not loaded, and silent", function()
	T.eq(Ro.config.pack18.addon, ADDON, "the pack's folder, in the data")
	local installed, loaded = Ro:PackState()
	T.ok(installed and not loaded, "installed, not loaded")
	T.eq(Ro:PackWord(), "installed", "/au romance says installed")
	T.eq(Engine.packs[PACK], nil, "nothing of it in the registry")
	T.eq(#Flirts18(), 0, "no 18+ flirt")
	T.eq(Ro:AllowedTier(), 1, "Courteous by default")
end)

T.run("romance R4: the first lock: nothing loads it without the consent and the tone Explicit", function()
	NS.db.relations.romanceTone = 3   -- a tone 3 saved without the consent (a hand-edited file): still nothing
	T.eq(Ro:LoadPack(), false, "no consent: not loaded")
	ADVANCE(1)
	FIRE("PLAYER_ENTERING_WORLD", false, true)
	T.eq(Loads(), 0, "not at login either")
	NS.db.relations.romanceTone = 1
	T.eq(select(2, Ro:SetTone(3)), "adult", "Explicit needs the consent")
	T.eq(Loads(), 0, "never asked of the client")
end)

T.run("romance R4: the second lock: loaded by hand with the consent off, it registers nothing", function()
	T.ok(C_AddOns.LoadAddOn(ADDON), "the client loads the folder (a player forcing it)")
	T.eq(Engine.packs[PACK], nil, "no rule registered")
	T.eq(Engine.byId["r18.welcome.t3.n1"], nil, "no line")
	T.eq(#Flirts18(), 0, "no flirt")
	T.ok(#Ro.adult >= 4, "its parts wait for the consent (" .. #Ro.adult .. ")")
	for _, part in ipairs(Ro.adult) do T.ok(not part.done, part.pack .. ": waiting") end
	T.eq(Ro:AllowedTier(), 1, "the tone stays where it was")
end)

T.run("romance R4: with the consent on, the pack registers: tier 3 only, romance only", function()
	ConsentOn()
	T.ok(Ro:AdultOn(), "the consent, in two steps")
	T.ok(Ro:SetTone(3), "Explicit chosen")
	T.eq(Ro:AllowedTier(), 3, "Explicit allowed: the consent and the pack")
	T.eq(Ro:PackWord(), "loaded", "/au romance says loaded")
	local pk = Engine.packs[PACK]
	T.ok(pk ~= nil and pk.romance18 == true, "registered, marked romance18")
	local ids = Engine:PackIds(PACK) or {}
	T.eq(#ids, 9, "nine sample rules (a few, by the owner's choice)")
	for _, id in ipairs(ids) do
		local p = Engine.byId[id]
		T.ok(Ro.EVENTS[Event(p)] == true, id .. ": a romance event")
		T.eq(p.when and p.when.romanceTier, 3, id .. ": tier 3")
		T.ok(p.speaker ~= "character", id .. ": never the character's voice")
		for _, lang in ipairs({ "en", "it" }) do
			local n = 0
			for _, v in ipairs(p.text[lang] or {}) do if Engine.VariantOk(v) then n = n + 1 end end
			T.ok(n >= 2, ("%s: %d variants in %s"):format(id, n, lang))
		end
	end
	local flirts = Flirts18()
	T.eq(#flirts, 3, "three 18+ flirts")
	for _, f in ipairs(flirts) do
		T.ok(f.romance18 == true and f.tier == 3, f.key .. ": romance18, tier 3")
		T.ok(Ro.STAGE_INDEX[f.from] >= Ro.STAGE_INDEX.declared, f.key .. ": only once declared")
	end
end)

T.run("romance R4: the pack's own validator run is clean", function()
	local r = Validator:Run({ packs = { PACK } })
	T.eq(#r.errors, 0, "no error: " .. tostring(r.errors[1] and (r.errors[1].id or "") .. " " .. r.errors[1].msg))
	T.eq(#r.warnings, 0, "no warning: " .. tostring(r.warnings[1] and (r.warnings[1].id or "") .. " " .. r.warnings[1].msg))
	local flirtErrors = 0
	for _, p in ipairs(Ro:Check({ "en", "it" }, NS.NPCAlive.LABEL_BYTES or 70)) do
		if p.key:find(PACK, 1, true) then flirtErrors = flirtErrors + 1 end
	end
	T.eq(flirtErrors, 0, "the flirts are valid")
end)

T.run("romance R4: its lines, at tier 3, in private", function()
	R.session.kin = R.session.kin or {}
	R.session.kin[NPC] = { sex = 3, humanoid = true }
	R:RecordNPC(NPC, "Ysolde", "test")
	local rec = R:Get("npc", NPC)
	T.ok(rec ~= nil, "a record for the NPC")
	if not rec then return end
	rec.name = rec.name or "Ysolde"
	rec.romance = { st = "declared" }
	R:Data().beloved = NPC
	local who = { kind = "npc", npcID = NPC, role = "innkeeper" }
	for _, o in ipairs({ "welcome", "cold", "refuse" }) do
		local ctx = NS:BuildContext({ npcDialogue = true })
		ctx.romanceTier = 3
		local line = Ro:Reply(who, { kind = "glance" }, o, ctx)
		T.ok(line and line.id:find("^r18%.") and line.text ~= "", o .. ": a reply of the 18+ pack")
	end
	-- the vow, at an inn at night with the beloved: tier 3 is the cap, and the mix picks it
	P.resting, P.hour = true, 23
	local saved = Ro.random
	Ro.random = function() return 0.999 end
	T.eq(Ro:TierCap(rec, NS:BuildContext()), 3, "declared, an inn at night, Explicit allowed: 3")
	local scene = Ro:Scene(NPC, "vow", "open", NS:BuildContext())
	T.ok(scene and scene.id == "r18.scene.vow.open.t3" and scene.tier == 3, "the vow's scene at tier 3: " .. tostring(scene and scene.id))
	T.ok(scene and not scene.text:find("{", 1, true), "its placeholders filled")
	Ro.random = saved
	T.eq(ChatSent(), nil, "nothing sent to chat")
end)

T.run("romance R4: consent off: the pack is dropped; on again: it comes back", function()
	T.eq(Ro:SetAdult(false), "off", "off in one step")
	T.ok(Ro:AllowedTier() <= 2, "the tone back to 2 at most")
	T.eq(Engine.packs[PACK], nil, "the rules dropped")
	T.eq(Engine.byId["r18.welcome.t3.n1"], nil, "with their texts")
	T.eq(#Flirts18(), 0, "the flirts dropped")
	local ctx = NS:BuildContext({ npcDialogue = true })
	ctx.romanceTier = 3
	local line = Ro:Reply({ kind = "npc", npcID = NPC, role = "innkeeper" }, { kind = "glance" }, "welcome", ctx)
	T.ok(line == nil or not line.id:find("^r18%."), "no 18+ line in any state")
	-- the folder stays loaded in the client (an addon cannot be unloaded): the parts register again with the consent
	ConsentOn()
	T.ok(Engine.packs[PACK] ~= nil, "registered again")
	T.eq(#(Engine:PackIds(PACK) or {}), 9, "the nine rules")
	T.ok(Engine.byId["r18.welcome.t3.n1"] and #(Engine.byId["r18.welcome.t3.n1"].text.en or {}) >= 2, "with their texts")
	T.eq(#Flirts18(), 3, "and the flirts")
	T.eq(#Validator:Run({ packs = { PACK } }).errors, 0, "still valid")
	Ro:SetAdult(false)
end)

T.run("romance R4: the third lock, in the validator", function()
	local function Rule(tier, event)
		return { event = event or "romance_inner", speaker = "inner", styles = { "intimate" }, tags = { "topic:romance" },
			theme = "home", conditions = { romanceTier = tier } }
	end
	local function Codes(pack)
		local codes = {}
		for _, e in ipairs(Validator:Run({ packs = { pack } }).errors) do codes[e.code] = (codes[e.code] or 0) + 1 end
		return codes
	end
	local texts = { enUS = { ["r4v.a"] = "A thought." }, itIT = { ["r4v.a"] = "Un pensiero." } }
	NS:RegisterPack({ id = "r4v1", languages = { "enUS", "itIT" }, registry = { ["r4v.a"] = Rule(3) }, texts = texts })
	T.eq(Codes("r4v1").romance18, 1, "tier 3 outside an 18+ pack")
	Engine:DropPack("r4v1")
	NS:RegisterPack({ id = "r4v2", romance18 = true, languages = { "enUS", "itIT" }, registry = { ["r4v.a"] = Rule(2) },
		texts = texts })
	T.eq(Codes("r4v2").romance18, 1, "tier 2 inside an 18+ pack")
	Engine:DropPack("r4v2")
	NS:RegisterPack({ id = "r4v3", romance18 = true, languages = { "enUS", "itIT" },
		registry = { ["r4v.a"] = { event = "muse", speaker = "inner", styles = { "intimate" }, theme = "home" } }, texts = texts })
	T.eq(Codes("r4v3").romance18, 1, "a line that is not romance inside an 18+ pack")
	Engine:DropPack("r4v3")
	NS:RegisterPack({ id = "r4v4", romance18 = true, languages = { "enUS", "itIT" }, registry = { ["r4v.a"] = Rule(3) },
		texts = texts })
	T.eq(Codes("r4v4").romance18, nil, "tier 3 inside an 18+ pack: fine")
	Engine:DropPack("r4v4")
end)
