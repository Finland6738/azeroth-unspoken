-- Frasi legate alle relazioni (Relazioni e affinità, step S6b): saluti, congedi, ringraziamenti, cure, battaglia e
-- vittoria al fianco di qualcuno, incontri con NPC conosciuti. Bastano a provare il sistema; i contenuti estesi
-- arrivano con lo step S7. Solo le regole; i testi stanno in Data/itIT/Relations.lua e Data/enUS/Relations.lua.
--
-- Condizioni di relazione (Engine/RuleEngine.lua, leggono ctx.relation e simili di Systems/Relationships.lua):
--   relation (etichetta: friend, comrade, rival, enemy...), disposition, <asse>Min/<asse>Max, familiarityMin, isKnown,
--   relationKind (npc | player), withRelation (un compagno di gruppo con quell'etichetta)
-- Tag di affinità con ambito `rel.` (Engine/Traits.lua): rel.relation:friend, rel.trust:high, rel.req:relation:rival...
-- Regola editoriale: una frase che cita un rapporto dichiara la condizione che lo garantisce; il validatore lo
-- esige per gli eventi che citano una persona (relation_npc) e il motore non li fa parlare senza una persona nota.
-- Un saluto a una persona sconosciuta (isKnown = false) è formale: il tono cambia con la familiarità.
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_relations",
	name = "Base: relazioni",
	languages = { "itIT", "enUS" },
	-- l'incontro con un NPC conosciuto: priorità "richiamo di memoria" (GDD §10), registrata da Relationships
	events = { relation_npc = { category = "social", chance = 45, cooldown = 180 } },
	registry = {
		["rel.greet.unknown"] = { event = "greet", speaker = "character", styles = { "ceremonial" }, depth = { "literary", "elevated" }, conditions = { isKnown = false, hasTarget = true, friendly = true } },
		["rel.greet.acquaintance"] = { event = "greet", speaker = "character", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "rel.relation:acquaintance" }, conditions = { relation = "acquaintance" } },
		["rel.greet.friend"] = { event = "greet", speaker = "character", styles = { "everyday", "intimate" }, depth = { "natural", "literary" }, tags = { "rel.relation:friend" }, conditions = { relation = "friend" } },
		["rel.greet.friend.old"] = { event = "greet", speaker = "character", styles = { "intimate" }, depth = { "natural", "literary" }, tags = { "rel.familiarity:high" }, conditions = { relation = { "friend", "comrade" }, familiarityMin = 70 } },
		["rel.greet.comrade"] = { event = "greet", speaker = "character", styles = { "epic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:comrade" }, conditions = { relation = "comrade" } },
		["rel.greet.rival"] = { event = "greet", speaker = "character", styles = { "ironic", "ceremonial" }, depth = { "literary" }, tags = { "rel.relation:rival" }, conditions = { relation = "rival" } },
		["rel.greet.lover"] = { event = "greet", speaker = "character", styles = { "intimate" }, depth = { "natural", "literary" }, tags = { "rel.relation:lover" }, conditions = { relation = "lover" } },
		["rel.greet.wary"] = { event = "greet", speaker = "character", styles = { "ceremonial" }, depth = { "literary" }, tags = { "rel.relation:wary", "rel.relation:disliked" }, conditions = { relation = { "wary", "disliked" } } },
		["rel.greet.enemy"] = { event = "greet", speaker = "character", styles = { "tragic", "ceremonial" }, depth = { "literary", "elevated" }, tags = { "rel.relation:enemy" }, conditions = { relation = "enemy" } },
		["rel.greet.feared"] = { event = "greet", speaker = "inner", styles = { "intimate" }, depth = { "literary" }, tags = { "rel.relation:feared", "rel.fear:high" }, conditions = { relation = "feared" } },
		["rel.bye.unknown"] = { event = "farewell", speaker = "character", styles = { "ceremonial" }, depth = { "literary", "elevated" }, conditions = { isKnown = false, hasTarget = true, friendly = true } },
		["rel.bye.acquaintance"] = { event = "farewell", speaker = "character", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "rel.relation:acquaintance" }, conditions = { relation = "acquaintance" } },
		["rel.bye.friend"] = { event = "farewell", speaker = "character", styles = { "everyday", "intimate" }, depth = { "natural", "literary" }, tags = { "rel.relation:friend" }, conditions = { relation = "friend" } },
		["rel.bye.comrade"] = { event = "farewell", speaker = "character", styles = { "epic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:comrade" }, conditions = { relation = "comrade" } },
		["rel.bye.rival"] = { event = "farewell", speaker = "character", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "rel.relation:rival" }, conditions = { relation = "rival" } },
		["rel.bye.lover"] = { event = "farewell", speaker = "character", styles = { "intimate" }, depth = { "natural", "literary" }, tags = { "rel.relation:lover" }, conditions = { relation = "lover" } },
		["rel.bye.hostile"] = { event = "farewell", speaker = "character", styles = { "tragic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:enemy", "rel.relation:disliked", "rel.relation:wary" }, conditions = { relation = { "enemy", "disliked", "wary" } } },
		["rel.thanks.unknown"] = { event = "thanks", speaker = "character", styles = { "ceremonial" }, depth = { "literary", "elevated" }, conditions = { isKnown = false, hasTarget = true, friendly = true } },
		["rel.thanks.friend"] = { event = "thanks", speaker = "character", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "rel.relation:friend" }, conditions = { relation = "friend" } },
		["rel.thanks.comrade"] = { event = "thanks", speaker = "character", styles = { "epic", "everyday" }, depth = { "literary" }, tags = { "rel.relation:comrade" }, conditions = { relation = "comrade" } },
		["rel.thanks.rival"] = { event = "thanks", speaker = "character", styles = { "ironic" }, depth = { "literary" }, tags = { "rel.relation:rival" }, conditions = { relation = "rival" } },
		["rel.thanks.lover"] = { event = "thanks", speaker = "character", styles = { "intimate" }, depth = { "natural", "literary" }, tags = { "rel.relation:lover" }, conditions = { relation = "lover" } },
		["rel.thanks.wary"] = { event = "thanks", speaker = "character", styles = { "ceremonial" }, depth = { "literary" }, tags = { "rel.relation:wary", "rel.relation:disliked" }, conditions = { relation = { "wary", "disliked", "enemy" } } },
		["rel.heal.friend"] = { event = "heal", speaker = "character", styles = { "everyday", "intimate" }, depth = { "natural", "literary" }, tags = { "rel.relation:friend" }, conditions = { relation = "friend" } },
		["rel.heal.comrade"] = { event = "heal", speaker = "character", styles = { "epic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:comrade" }, conditions = { relation = "comrade" } },
		["rel.heal.lover"] = { event = "heal", speaker = "inner", styles = { "intimate" }, depth = { "literary" }, tags = { "rel.relation:lover" }, conditions = { relation = "lover" } },
		["rel.heal.rival"] = { event = "heal", speaker = "character", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "rel.relation:rival" }, conditions = { relation = "rival" } },
		["rel.heal.enemy"] = { event = "heal", speaker = "inner", styles = { "tragic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:enemy" }, conditions = { relation = "enemy" } },
		["rel.heal.unknown"] = { event = "heal", speaker = "character", styles = { "ceremonial" }, depth = { "literary", "elevated" }, conditions = { isKnown = false, hasTarget = true, friendly = true } },
		["rel.battle.friend"] = { event = "battle", speaker = "character", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "rel.relation:friend" }, conditions = { withRelation = "friend" } },
		["rel.battle.comrade"] = { event = "battle", speaker = "character", styles = { "epic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:comrade" }, conditions = { withRelation = "comrade" } },
		["rel.battle.lover"] = { event = "battle", speaker = "inner", styles = { "intimate" }, depth = { "literary" }, tags = { "rel.relation:lover" }, conditions = { withRelation = "lover" } },
		["rel.battle.rival"] = { event = "battle", speaker = "character", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "rel.relation:rival" }, conditions = { withRelation = "rival" } },
		["rel.battle.enemy"] = { event = "battle", speaker = "inner", styles = { "tragic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:enemy" }, conditions = { withRelation = "enemy" } },
		["rel.battle.known"] = { event = "battle", speaker = "narrator", styles = { "ancient", "intimate" }, depth = { "literary", "elevated" }, tags = { "rel.disposition:close" }, conditions = { withRelation = { "friend", "comrade", "lover" } } },
		["rel.victory.friend"] = { event = "victory", speaker = "character", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "rel.relation:friend" }, conditions = { withRelation = "friend" } },
		["rel.victory.comrade"] = { event = "victory", speaker = "character", styles = { "epic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:comrade" }, conditions = { withRelation = "comrade" } },
		["rel.victory.lover"] = { event = "victory", speaker = "inner", styles = { "intimate" }, depth = { "literary" }, tags = { "rel.relation:lover" }, conditions = { withRelation = "lover" } },
		["rel.victory.rival"] = { event = "victory", speaker = "character", styles = { "ironic" }, depth = { "natural", "literary" }, tags = { "rel.relation:rival" }, conditions = { withRelation = "rival" } },
		["rel.npc.acquaintance"] = { event = "relation_npc", speaker = "inner", styles = { "everyday" }, depth = { "natural", "literary" }, tags = { "rel.relation:acquaintance" }, conditions = { relationKind = "npc", relation = "acquaintance" } },
		["rel.npc.indifferent"] = { event = "relation_npc", speaker = "inner", styles = { "everyday", "ironic" }, depth = { "natural", "literary" }, tags = { "rel.relation:indifferent" }, conditions = { relationKind = "npc", relation = "indifferent" } },
		["rel.npc.friend"] = { event = "relation_npc", speaker = "character", styles = { "everyday", "intimate" }, depth = { "natural", "literary" }, tags = { "rel.relation:friend" }, conditions = { relationKind = "npc", relation = "friend" } },
		["rel.npc.friend.old"] = { event = "relation_npc", speaker = "inner", styles = { "intimate", "ancient" }, depth = { "literary" }, tags = { "rel.familiarity:high" }, conditions = { relationKind = "npc", relation = { "friend", "comrade" }, familiarityMin = 70 } },
		["rel.npc.comrade"] = { event = "relation_npc", speaker = "character", styles = { "epic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:comrade" }, conditions = { relationKind = "npc", relation = "comrade" } },
		["rel.npc.rival"] = { event = "relation_npc", speaker = "character", styles = { "ironic" }, depth = { "literary" }, tags = { "rel.relation:rival" }, conditions = { relationKind = "npc", relation = "rival" } },
		["rel.npc.enemy"] = { event = "relation_npc", speaker = "inner", styles = { "tragic" }, depth = { "literary", "elevated" }, tags = { "rel.relation:enemy" }, conditions = { relationKind = "npc", relation = "enemy" } },
		["rel.npc.wary"] = { event = "relation_npc", speaker = "inner", styles = { "everyday", "ironic" }, depth = { "natural", "literary" }, tags = { "rel.relation:wary", "rel.relation:disliked" }, conditions = { relationKind = "npc", relation = { "wary", "disliked" } } },
		["rel.npc.feared"] = { event = "relation_npc", speaker = "inner", styles = { "intimate", "tragic" }, depth = { "literary" }, tags = { "rel.relation:feared" }, conditions = { relationKind = "npc", relation = "feared" } },
		["rel.npc.lover"] = { event = "relation_npc", speaker = "inner", styles = { "intimate" }, depth = { "literary" }, tags = { "rel.relation:lover" }, conditions = { relationKind = "npc", relation = "lover" } },
		["rel.npc.bond"] = { event = "relation_npc", speaker = "narrator", styles = { "ceremonial", "ancient" }, depth = { "literary", "elevated" }, tags = { "rel.disposition:bond" }, conditions = { relationKind = "npc", disposition = "bond" } },
		["rel.npc.known"] = { event = "relation_npc", speaker = "inner", styles = { "everyday" }, depth = { "natural", "literary" }, weight = 0.6, conditions = { relationKind = "npc", isKnown = true } },
	},
})
