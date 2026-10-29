-- Le battute degli archi narrativi (step S9): regole degli eventi arc_open, arc_step e arc_resolve, una per intenzione.
-- Solo le regole; i testi stanno in Data/itIT/Arcs.lua e Data/enUS/Arcs.lua.
--
-- Come funzionano:
--   - sono pronunciate dal Systems/StoryArcs.lua quando un passo scatta, dal Narrative Director (priorità «evento
--     eccezionale», una sola alla volta); il motore non le fa parlare in nessun altro modo (guardia dell'evento);
--   - ogni regola dichiara l'arco con `arc = { id, state, choice }` (il validatore lo esige): `state` è lo stato appena
--     raggiunto, `choice` una scelta fatta dal giocatore (l'id dell'opzione). Una frase dice solo ciò che la sua condizione
--     garantisce e non attribuisce al personaggio nulla che il giocatore non abbia scelto;
--   - le voci sono private: `inner` (pensiero) e `narrator`. Mai la voce `character`, che può diventare una proposta in chat.
local ADDON, NS = ...

local ALL = { "natural", "literary", "elevated" }

-- una regola di battuta di un arco
local function Rule(event, speaker, arc, styles, extra)
	local r = { event = event, speaker = speaker, styles = styles, depth = ALL, conditions = { arc = arc } }
	for k, v in pairs(extra or {}) do r[k] = v end
	return r
end

local registry = {
	-----------------------------------------------------------------------
	-- Il sentiero ritrovato
	-----------------------------------------------------------------------
	["arc.path.open.i"] = Rule("arc_open", "inner", { id = "path", state = "DISCOVERED" }, { "intimate", "ancient" }),
	["arc.path.open.e"] = Rule("arc_open", "narrator", { id = "path", state = "DISCOVERED" }, { "ancient" }),
	["arc.path.refl.gratitude"] = Rule("arc_step", "inner", { id = "path", state = "REFLECTED", choice = "gratitude" }, { "intimate" }),
	["arc.path.refl.distance"] = Rule("arc_step", "inner", { id = "path", state = "REFLECTED", choice = "distance" }, { "intimate", "everyday" }),
	["arc.path.refl.silence"] = Rule("arc_step", "inner", { id = "path", state = "REFLECTED", choice = "silence" }, { "ancient" }),
	["arc.path.done.gratitude"] = Rule("arc_resolve", "narrator", { id = "path", state = "RESOLVED", choice = "gratitude" }, { "intimate" }),
	["arc.path.done.distance"] = Rule("arc_resolve", "narrator", { id = "path", state = "RESOLVED", choice = "distance" }, { "epic", "intimate" }),
	["arc.path.done.silence"] = Rule("arc_resolve", "narrator", { id = "path", state = "RESOLVED", choice = "silence" }, { "ancient" }),

	-----------------------------------------------------------------------
	-- Un volto noto (legato a un NPC conosciuto: {other} è il suo nome)
	-----------------------------------------------------------------------
	["arc.face.open.i"] = Rule("arc_open", "inner", { id = "knownface", state = "DISCOVERED" }, { "intimate", "everyday" }),
	["arc.face.open.e"] = Rule("arc_open", "narrator", { id = "knownface", state = "DISCOVERED" }, { "intimate" }),
	["arc.face.refl.thank"] = Rule("arc_step", "inner", { id = "knownface", state = "REFLECTED", choice = "thank" }, { "intimate" }),
	["arc.face.refl.remember"] = Rule("arc_step", "inner", { id = "knownface", state = "REFLECTED", choice = "remember" }, { "intimate", "tragic" }),
	["arc.face.refl.distance"] = Rule("arc_step", "inner", { id = "knownface", state = "REFLECTED", choice = "distance" }, { "everyday", "ironic" }),
	["arc.face.done.thank"] = Rule("arc_resolve", "narrator", { id = "knownface", state = "RESOLVED", choice = "thank" }, { "intimate" }),
	["arc.face.done.remember"] = Rule("arc_resolve", "narrator", { id = "knownface", state = "RESOLVED", choice = "remember" }, { "intimate", "ancient" }),
	["arc.face.done.distance"] = Rule("arc_resolve", "narrator", { id = "knownface", state = "RESOLVED", choice = "distance" }, { "everyday" }),

	-----------------------------------------------------------------------
	-- Il luogo della caduta (argomento: la morte, che il Character Soul può far evitare)
	-----------------------------------------------------------------------
	["arc.fall.open.i"] = Rule("arc_open", "inner", { id = "fallen", state = "DISCOVERED" }, { "intimate", "tragic" }, { tags = { "topic:death" } }),
	["arc.fall.open.e"] = Rule("arc_open", "narrator", { id = "fallen", state = "DISCOVERED" }, { "tragic" }, { tags = { "topic:death" } }),
	["arc.fall.refl.silence"] = Rule("arc_step", "inner", { id = "fallen", state = "REFLECTED", choice = "silence" }, { "tragic", "ceremonial" }, { tags = { "topic:death" } }),
	["arc.fall.refl.prepare"] = Rule("arc_step", "inner", { id = "fallen", state = "REFLECTED", choice = "prepare" }, { "everyday" }, { tags = { "topic:death" } }),
	["arc.fall.refl.onward"] = Rule("arc_step", "inner", { id = "fallen", state = "REFLECTED", choice = "onward" }, { "epic", "intimate" }, { tags = { "topic:death" } }),
	["arc.fall.done.silence"] = Rule("arc_resolve", "narrator", { id = "fallen", state = "RESOLVED", choice = "silence" }, { "ceremonial", "intimate" }, { tags = { "topic:death" } }),
	["arc.fall.done.prepare"] = Rule("arc_resolve", "narrator", { id = "fallen", state = "RESOLVED", choice = "prepare" }, { "everyday" }, { tags = { "topic:death" } }),
	["arc.fall.done.onward"] = Rule("arc_resolve", "narrator", { id = "fallen", state = "RESOLVED", choice = "onward" }, { "epic" }, { tags = { "topic:death" } }),

	-----------------------------------------------------------------------
	-- Le tre porte (stati propri: DISCOVERED, JOURNEY, REFLECTED, RESOLVED)
	-----------------------------------------------------------------------
	["arc.gates.open.i"] = Rule("arc_open", "inner", { id = "capitals", state = "DISCOVERED" }, { "intimate", "everyday" }),
	["arc.gates.open.e"] = Rule("arc_open", "narrator", { id = "capitals", state = "DISCOVERED" }, { "ancient", "ceremonial" }),
	["arc.gates.journey.i"] = Rule("arc_step", "inner", { id = "capitals", state = "JOURNEY" }, { "intimate" }),
	["arc.gates.refl.shelter"] = Rule("arc_step", "inner", { id = "capitals", state = "REFLECTED", choice = "shelter" }, { "intimate" }),
	["arc.gates.refl.crossroads"] = Rule("arc_step", "inner", { id = "capitals", state = "REFLECTED", choice = "crossroads" }, { "everyday", "ancient" }),
	["arc.gates.refl.promise"] = Rule("arc_step", "inner", { id = "capitals", state = "REFLECTED", choice = "promise" }, { "epic", "ceremonial" }),
	["arc.gates.done.shelter"] = Rule("arc_resolve", "narrator", { id = "capitals", state = "RESOLVED", choice = "shelter" }, { "intimate" }),
	["arc.gates.done.crossroads"] = Rule("arc_resolve", "narrator", { id = "capitals", state = "RESOLVED", choice = "crossroads" }, { "everyday", "ironic" }),
	["arc.gates.done.promise"] = Rule("arc_resolve", "narrator", { id = "capitals", state = "RESOLVED", choice = "promise" }, { "epic", "ceremonial" }),
}

NS:RegisterPack({
	id = "base_arcs",
	name = "Base: storie personali (Story Arcs)",
	languages = { "itIT", "enUS" },
	-- gli eventi delle battute: né probabilità né pausa propria (decide l'arco, e il Director la priorità e il momento)
	events = {
		arc_open = { category = "reflection", chance = 100, cooldown = 0 },
		arc_step = { category = "reflection", chance = 100, cooldown = 0 },
		arc_resolve = { category = "reflection", chance = 100, cooldown = 0 },
	},
	registry = registry,
})
