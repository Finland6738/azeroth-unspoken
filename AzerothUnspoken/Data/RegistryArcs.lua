-- Le battute degli archi narrativi (step S9): regole degli eventi arc_open, arc_step e arc_resolve, una per intenzione.
-- Solo le regole, come dati letterali (#143: l'archivio li legge e li riscrive senza differenze); i testi stanno in AzerothUnspoken_itIT/Arcs.lua e AzerothUnspoken_enUS/Arcs.lua.
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
	registry = {
		---------------------------------------------------------------------------
		-- Il sentiero ritrovato
		---------------------------------------------------------------------------
		["arc.path.open.i"] = { event = "arc_open", speaker = "inner", styles = { "intimate", "ancient" },
			depth = ALL,
			conditions = { arc = { id = "path", state = "DISCOVERED" } } },
		["arc.path.open.e"] = { event = "arc_open", speaker = "narrator", styles = { "ancient" },
			depth = ALL,
			conditions = { arc = { id = "path", state = "DISCOVERED" } } },
		["arc.path.refl.distance"] = { event = "arc_step", speaker = "inner", styles = { "intimate", "everyday" },
			depth = ALL,
			conditions = { arc = { choice = "distance", id = "path", state = "REFLECTED" } } },
		["arc.path.refl.gratitude"] = { event = "arc_step", speaker = "inner", styles = { "intimate" },
			depth = ALL,
			conditions = { arc = { choice = "gratitude", id = "path", state = "REFLECTED" } } },
		["arc.path.refl.silence"] = { event = "arc_step", speaker = "inner", styles = { "ancient" },
			depth = ALL,
			conditions = { arc = { choice = "silence", id = "path", state = "REFLECTED" } } },
		["arc.path.done.distance"] = { event = "arc_resolve", speaker = "narrator", styles = { "epic", "intimate" },
			depth = ALL,
			conditions = { arc = { choice = "distance", id = "path", state = "RESOLVED" } } },
		["arc.path.done.gratitude"] = { event = "arc_resolve", speaker = "narrator", styles = { "intimate" },
			depth = ALL,
			conditions = { arc = { choice = "gratitude", id = "path", state = "RESOLVED" } } },
		["arc.path.done.silence"] = { event = "arc_resolve", speaker = "narrator", styles = { "ancient" },
			depth = ALL,
			conditions = { arc = { choice = "silence", id = "path", state = "RESOLVED" } } },

		---------------------------------------------------------------------------
		-- Un volto noto (legato a un NPC conosciuto: {other} è il suo nome)
		---------------------------------------------------------------------------
		["arc.face.open.i"] = { event = "arc_open", speaker = "inner", styles = { "intimate", "everyday" },
			depth = ALL,
			conditions = { arc = { id = "knownface", state = "DISCOVERED" } } },
		["arc.face.open.e"] = { event = "arc_open", speaker = "narrator", styles = { "intimate" },
			depth = ALL,
			conditions = { arc = { id = "knownface", state = "DISCOVERED" } } },
		["arc.face.refl.distance"] = { event = "arc_step", speaker = "inner", styles = { "everyday", "ironic" },
			depth = ALL,
			conditions = { arc = { choice = "distance", id = "knownface", state = "REFLECTED" } } },
		["arc.face.refl.remember"] = { event = "arc_step", speaker = "inner", styles = { "intimate", "tragic" },
			depth = ALL,
			conditions = { arc = { choice = "remember", id = "knownface", state = "REFLECTED" } } },
		["arc.face.refl.thank"] = { event = "arc_step", speaker = "inner", styles = { "intimate" },
			depth = ALL,
			conditions = { arc = { choice = "thank", id = "knownface", state = "REFLECTED" } } },
		["arc.face.done.distance"] = { event = "arc_resolve", speaker = "narrator", styles = { "everyday" },
			depth = ALL,
			conditions = { arc = { choice = "distance", id = "knownface", state = "RESOLVED" } } },
		["arc.face.done.remember"] = { event = "arc_resolve", speaker = "narrator", styles = { "intimate", "ancient" },
			depth = ALL,
			conditions = { arc = { choice = "remember", id = "knownface", state = "RESOLVED" } } },
		["arc.face.done.thank"] = { event = "arc_resolve", speaker = "narrator", styles = { "intimate" },
			depth = ALL,
			conditions = { arc = { choice = "thank", id = "knownface", state = "RESOLVED" } } },

		---------------------------------------------------------------------------
		-- Il luogo della caduta (argomento: la morte, che il Character Soul può far evitare)
		---------------------------------------------------------------------------
		["arc.fall.open.i"] = { event = "arc_open", speaker = "inner", styles = { "intimate", "tragic" },
			tags = { "topic:death" }, depth = ALL,
			conditions = { arc = { id = "fallen", state = "DISCOVERED" } } },
		["arc.fall.open.e"] = { event = "arc_open", speaker = "narrator", styles = { "tragic" },
			tags = { "topic:death" }, depth = ALL,
			conditions = { arc = { id = "fallen", state = "DISCOVERED" } } },
		["arc.fall.refl.onward"] = { event = "arc_step", speaker = "inner", styles = { "epic", "intimate" },
			tags = { "topic:death" }, depth = ALL,
			conditions = { arc = { choice = "onward", id = "fallen", state = "REFLECTED" } } },
		["arc.fall.refl.prepare"] = { event = "arc_step", speaker = "inner", styles = { "everyday" },
			tags = { "topic:death" }, depth = ALL,
			conditions = { arc = { choice = "prepare", id = "fallen", state = "REFLECTED" } } },
		["arc.fall.refl.silence"] = { event = "arc_step", speaker = "inner", styles = { "tragic", "ceremonial" },
			tags = { "topic:death" }, depth = ALL,
			conditions = { arc = { choice = "silence", id = "fallen", state = "REFLECTED" } } },
		["arc.fall.done.onward"] = { event = "arc_resolve", speaker = "narrator", styles = { "epic" },
			tags = { "topic:death" }, depth = ALL,
			conditions = { arc = { choice = "onward", id = "fallen", state = "RESOLVED" } } },
		["arc.fall.done.prepare"] = { event = "arc_resolve", speaker = "narrator", styles = { "everyday" },
			tags = { "topic:death" }, depth = ALL,
			conditions = { arc = { choice = "prepare", id = "fallen", state = "RESOLVED" } } },
		["arc.fall.done.silence"] = { event = "arc_resolve", speaker = "narrator", styles = { "ceremonial", "intimate" },
			tags = { "topic:death" }, depth = ALL,
			conditions = { arc = { choice = "silence", id = "fallen", state = "RESOLVED" } } },

		---------------------------------------------------------------------------
		-- Le tre porte (stati propri: DISCOVERED, JOURNEY, REFLECTED, RESOLVED)
		---------------------------------------------------------------------------
		["arc.gates.open.i"] = { event = "arc_open", speaker = "inner", styles = { "intimate", "everyday" },
			depth = ALL,
			conditions = { arc = { id = "capitals", state = "DISCOVERED" } } },
		["arc.gates.open.e"] = { event = "arc_open", speaker = "narrator", styles = { "ancient", "ceremonial" },
			depth = ALL,
			conditions = { arc = { id = "capitals", state = "DISCOVERED" } } },
		["arc.gates.journey.i"] = { event = "arc_step", speaker = "inner", styles = { "intimate" },
			depth = ALL,
			conditions = { arc = { id = "capitals", state = "JOURNEY" } } },
		["arc.gates.refl.crossroads"] = { event = "arc_step", speaker = "inner", styles = { "everyday", "ancient" },
			depth = ALL,
			conditions = { arc = { choice = "crossroads", id = "capitals", state = "REFLECTED" } } },
		["arc.gates.refl.promise"] = { event = "arc_step", speaker = "inner", styles = { "epic", "ceremonial" },
			depth = ALL,
			conditions = { arc = { choice = "promise", id = "capitals", state = "REFLECTED" } } },
		["arc.gates.refl.shelter"] = { event = "arc_step", speaker = "inner", styles = { "intimate" },
			depth = ALL,
			conditions = { arc = { choice = "shelter", id = "capitals", state = "REFLECTED" } } },
		["arc.gates.done.crossroads"] = { event = "arc_resolve", speaker = "narrator", styles = { "everyday", "ironic" },
			depth = ALL,
			conditions = { arc = { choice = "crossroads", id = "capitals", state = "RESOLVED" } } },
		["arc.gates.done.promise"] = { event = "arc_resolve", speaker = "narrator", styles = { "epic", "ceremonial" },
			depth = ALL,
			conditions = { arc = { choice = "promise", id = "capitals", state = "RESOLVED" } } },
		["arc.gates.done.shelter"] = { event = "arc_resolve", speaker = "narrator", styles = { "intimate" },
			depth = ALL,
			conditions = { arc = { choice = "shelter", id = "capitals", state = "RESOLVED" } } },
	},
})
