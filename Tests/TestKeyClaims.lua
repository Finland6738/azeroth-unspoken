-- Test of the keys shared between packs (#69): scripts, NPCs, places and arcs. A pack that registers a key another
-- pack holds is refused, unless it says `override = true`; the owner registering its own key again is not a conflict.
local NS = ...
local Engine, Validator, N, I, Place, SA, Packs = NS.Engine, NS.Validator, NS.NPCAlive, NS.Interlocutor, NS.Place, NS.StoryArcs, NS.Packs

local function Has(result, code, key)
	for _, list in ipairs({ result.errors, result.warnings }) do
		for _, p in ipairs(list) do
			if p.code == code and (not key or p.id == key) then return p end
		end
	end
	return nil
end

local function Logged(text)
	for _, e in ipairs(NS.Diagnostics.errors) do
		if e.module == "packs" and e.message:find(text, 1, true) then return true end
	end
	return false
end

local function Script(event)
	return { role = "innkeeper", start = "open", nodes = { open = { event = event or "npcd_innkeeper_open" } } }
end

local function Arc(extra)
	local def = { steps = {
		{ from = "LOCKED", to = "DISCOVERED", on = { "level" } },
		{ from = "DISCOVERED", to = "REFLECTED", on = { "level" } },
		{ from = "REFLECTED", to = "RESOLVED", on = { "level" } },
	} }
	for k, v in pairs(extra or {}) do def[k] = v end
	return def
end

local function Text(title) return { title = title, summary = "x", states = {} } end

T.run("the base data holds its keys under its own pack ids, with no conflict", function()
	T.eq(#Packs.collisions, 0, "no conflict among the base files")
	T.eq(Packs.claims["script:innkeeper"], "base_dialogues", "script")
	T.eq(Packs.claims["npc:295"], "base_npcs", "NPC")
	T.eq(Packs.claims["place:zone:Elwynn Forest"], "base_places", "place")
	T.eq(Packs.claims["arc:path"], "base_arcs", "arc")
end)

T.run("scripts: refused, then replaced only with override; the owner may register again", function()
	local baseNodes = 0
	for _ in pairs(N:Script("innkeeper").nodes) do baseNodes = baseNodes + 1 end
	T.eq(baseNodes, 7, "the base innkeeper has seven nodes")

	NS:RegisterDialogues({ pack = "intruder", scripts = { innkeeper = Script() } })
	local after = 0
	for _ in pairs(N:Script("innkeeper").nodes) do after = after + 1 end
	T.eq(after, 7, "refused: the base script is untouched")
	T.ok(Logged("script 'innkeeper': intruder was refused: already registered by base_dialogues"), "logged for /au debug")
	local p = Has(Validator:Run(), "keyCollision", "script:innkeeper")
	T.ok(p and p.msg:find("intruder", 1, true) and p.msg:find("base_dialogues", 1, true), "keyCollision in the validator, with both packs")
	T.ok(p and p.level == "error", "an error")

	-- a free key is taken; the same pack again replaces it quietly
	local n = #Packs.collisions
	NS:RegisterDialogues({ pack = "mine", scripts = { mine1 = Script() } })
	NS:RegisterDialogues({ pack = "mine", scripts = { mine1 = Script("npcd_innkeeper_bye") } })
	T.eq(N.scripts.mine1.nodes.open.event, "npcd_innkeeper_bye", "the owner replaced its own script")
	T.eq(#Packs.collisions, n, "no conflict for the owner")

	-- another pack: refused; override on the entry replaces; the other keys of the call still register
	NS:RegisterDialogues({ pack = "other", scripts = { mine1 = Script("npcd_innkeeper_open"), free1 = Script() } })
	T.eq(N.scripts.mine1.nodes.open.event, "npcd_innkeeper_bye", "refused: still the owner's")
	T.ok(N.scripts.free1 ~= nil, "a free key of the same call is registered")
	local s = Script("npcd_innkeeper_open")
	s.override = true
	NS:RegisterDialogues({ pack = "other", scripts = { mine1 = s } })
	T.eq(N.scripts.mine1.nodes.open.event, "npcd_innkeeper_open", "override on the entry replaced it")
	local w = Has(Validator:Run(), "keyOverride", "script:mine1")
	T.ok(w and w.level == "warning" and w.msg:find("other", 1, true) and w.msg:find("mine", 1, true), "keyOverride warning: who replaced what")
	T.ok(Logged("script 'mine1': other replaces the entry of mine"), "logged for /au debug")
	-- override on the whole call; the owner is now `third`
	NS:RegisterDialogues({ pack = "third", override = true, scripts = { mine1 = Script("npcd_innkeeper_bye") } })
	T.eq(N.scripts.mine1.nodes.open.event, "npcd_innkeeper_bye", "override on the call")
	T.eq(Packs.claims["script:mine1"], "third", "the new owner")
end)

T.run("scripts: a call with no pack id can take a free key, never register it twice", function()
	NS:RegisterDialogues({ scripts = { anon1 = Script() } })
	T.ok(N.scripts.anon1 ~= nil, "a free key")
	NS:RegisterDialogues({ scripts = { anon1 = Script("npcd_innkeeper_bye") } })
	T.eq(N.scripts.anon1.nodes.open.event, "npcd_innkeeper_open", "the second call with no id is refused")
	T.ok(Logged("a pack with no id"), "the notice says there was no id")
end)

T.run("NPCs: the base entry stays, override replaces", function()
	local name = I.npcs[295].name
	NS:RegisterNPCs({ pack = "intruder", [295] = { name = "Impostor", role = "guard" }, [990100] = { name = "Free", role = "guard" } })
	T.eq(I.npcs[295].name, name, "refused")
	T.eq(I.npcs[295].role, "innkeeper", "the role is the base one")
	T.eq(I.npcs[990100].name, "Free", "a free npcID of the same call is registered")
	T.ok(Has(Validator:Run(), "keyCollision", "npc:295"), "keyCollision for the npcID")
	NS:RegisterNPCs({ pack = "mine", [990100] = { name = "Free again", role = "guard" } })
	T.eq(I.npcs[990100].name, "Free", "another pack cannot replace it")
	NS:RegisterNPCs({ pack = "mine", [990100] = { name = "Mine", role = "guard", override = true } })
	T.eq(I.npcs[990100].name, "Mine", "override on the entry")
	NS:RegisterNPCs({ pack = "mine", override = true, [295] = { name = "Farley", role = "innkeeper", speech = "warm" } })
	T.eq(I.npcs[295].speech, "warm", "override on the whole call")
	T.eq(I.npcs[295].temperament, nil, "the entry is replaced as a whole, not merged")
	T.ok(Has(Validator:Run(), "keyOverride", "npc:295"), "keyOverride")
	NS:RegisterNPCs({ pack = "mine", [990100] = { name = "Mine two", role = "guard" } })
	T.eq(I.npcs[990100].name, "Mine two", "the owner registers its own NPC again")
end)

T.run("places: zones, subzones and instances are separate keys; refused, then override", function()
	NS:RegisterPlaces({ pack = "intruder", zones = { ["Elwynn Forest"] = { tags = { "zzzzz_new_tag" } } } })
	T.ok(not Place.zones["Elwynn Forest"].tags.zzzzz_new_tag, "refused: the base zone is untouched")
	T.ok(not Place.TAGS.zzzzz_new_tag, "a refused entry does not add its tags to the known ones")
	T.ok(Has(Validator:Run(), "keyCollision", "place:zone:Elwynn Forest"), "keyCollision")
	-- the same name as a subzone is another key
	NS:RegisterPlaces({ pack = "mine", zones = { ["Valle X"] = { tags = { "forest" } } }, subzones = { ["Valle X"] = { tags = { "dark" } } } })
	T.ok(Place.zones["Valle X"] and Place.subzones["Valle X"], "zone and subzone with the same name do not clash")
	NS:RegisterPlaces({ pack = "mine", zones = { ["Valle X"] = { tags = { "snow" } } } })
	T.ok(Place.zones["Valle X"].tags.snow, "the owner may register again")
	NS:RegisterPlaces({ pack = "other", instances = { ["Valle X"] = { kind = "party", tags = { "dark" } } } })
	T.ok(Place.instances["Valle X"] ~= nil, "an instance is a third key")
	NS:RegisterPlaces({ pack = "other", zones = { ["Valle X"] = { tags = { "desert" } } } })
	T.ok(not Place.zones["Valle X"].tags.desert, "another pack: refused")
	NS:RegisterPlaces({ pack = "other", zones = { ["Valle X"] = { override = true, tags = { "desert" } } } })
	T.ok(Place.zones["Valle X"].tags.desert and not Place.zones["Valle X"].tags.snow, "override replaces as a whole")
	T.ok(Has(Validator:Run(), "keyOverride", "place:zone:Valle X"), "keyOverride")
end)

T.run("arcs: refused with their texts, override replaces, the owner registers again", function()
	NS:RegisterArcs({ pack = "mine", arcs = { kc1 = Arc() }, texts = { it = { kc1 = Text("Mio") } } })
	T.ok(SA.defs.kc1 ~= nil, "a free id")
	T.eq(SA.texts.kc1.it.title, "Mio", "its texts")
	NS:RegisterArcs({ pack = "mine", arcs = { kc1 = Arc() }, texts = { it = { kc1 = Text("Mio due") } } })
	T.eq(SA.texts.kc1.it.title, "Mio due", "the owner registers again")
	local before = #Packs.collisions
	local baseTitle = SA.texts.path.it.title
	NS:RegisterArcs({ pack = "intruder", arcs = { kc1 = Arc(), path = Arc() },
		texts = { it = { kc1 = Text("Rubato"), path = Text("Rubato") } } })
	T.eq(#Packs.collisions, before + 2, "two conflicts, one per arc")
	T.eq(SA.texts.kc1.it.title, "Mio due", "refused: the texts of the arc are not replaced")
	T.eq(SA.texts.path.it.title, baseTitle, "refused: the texts of a base arc are not replaced")
	T.eq(SA.defs.path.pack, "base_arcs", "the base arc is untouched")
	T.ok(Has(Validator:Run(), "keyCollision", "arc:path"), "keyCollision for the arc")
	NS:RegisterArcs({ pack = "other", arcs = { kc1 = Arc({ override = true }) } })
	T.eq(SA.defs.kc1.pack, "other", "override on the arc replaced it")
	T.eq(SA.defs.kc1.override, nil, "the override flag is not kept in the definition")
	T.eq(#SA:Validate(SA.defs.kc1), 0, "and the definition is valid")
	T.ok(Has(Validator:Run(), "keyOverride", "arc:kc1"), "keyOverride")
	NS:RegisterArcs({ pack = "third", override = true, arcs = { kc1 = Arc() } })
	T.eq(SA.defs.kc1.pack, "third", "override on the call")
end)

T.run("the same conflict is listed once", function()
	local n = #Packs.collisions
	NS:RegisterNPCs({ pack = "intruder", [240] = { name = "Impostor" } })
	NS:RegisterNPCs({ pack = "intruder", [240] = { name = "Impostor" } })
	T.eq(#Packs.collisions, n + 1, "one entry for two identical attempts")
end)
