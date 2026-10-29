-- Frasi di esempio per la Living Memory (step S6): prima visita a una zona (vertical slice A) e ritorno in un luogo già
-- visitato (vertical slice C). Bastano a provare il sistema; i contenuti estesi arrivano con lo step S7.
-- Solo le regole; i testi stanno in Data/itIT/Memory.lua e Data/enUS/Memory.lua.
--
-- Condizioni di memoria (Engine/RuleEngine.lua, leggono ctx.memory di Systems/LivingMemory.lua):
--   firstVisit, repeatVisit, lastVisitBad (true o "death"/"flight"), visitsMin, visitsMax, daysSinceLastVisit,
--   remembered = "<flag>"
-- Regola editoriale: una frase che cita un ricordo dichiara la condizione che lo garantisce. Il validatore lo esige per
-- gli eventi di richiamo (memory_return), e il motore non li fa parlare senza un ricordo vero (Engine:SetEventGuard).
local ADDON, NS = ...

NS:RegisterPack({
	id = "base_memory",
	name = "Base: memoria",
	languages = { "itIT", "enUS" },
	-- il richiamo del ritorno in un luogo noto: priorità "richiamo di memoria" (GDD §10), registrata da LivingMemory
	events = { memory_return = { category = "reflection", chance = 70, cooldown = 600 } },
	registry = {
		-- prima visita a una zona: l'evento è lo stesso dell'atmosfera di zona, ma la condizione lo rende una prima volta
		["mem.first.forest.01"] = { event = "zone", speaker = "inner", styles = { "ancient" }, tags = { "mystic" },
			depth = { "literary", "elevated" }, conditions = { firstVisit = true, mood = "forest" } },
		["mem.first.forest.02"] = { event = "zone", speaker = "character", styles = { "intimate" },
			depth = { "natural", "literary" }, conditions = { firstVisit = true, mood = "forest" } },
		["mem.first.gen.01"] = { event = "zone", speaker = "inner", styles = { "intimate" },
			depth = { "natural", "literary" }, conditions = { firstVisit = true } },
		["mem.first.gen.02"] = { event = "zone", speaker = "character", styles = { "epic" },
			depth = { "natural", "literary" }, conditions = { firstVisit = true } },
		["mem.first.capital"] = { event = "zone", speaker = "inner", styles = { "ceremonial" },
			depth = { "literary", "elevated" }, conditions = { firstVisit = true, mood = "city" } },

		-- ritorno in un luogo già visitato
		["mem.ret.gen"] = { event = "memory_return", speaker = "inner", styles = { "intimate" },
			depth = { "natural", "literary" }, conditions = { repeatVisit = true } },
		["mem.ret.forest.01"] = { event = "memory_return", speaker = "inner", styles = { "ancient", "intimate" },
			tags = { "mystic" }, depth = { "literary", "elevated" }, conditions = { repeatVisit = true, mood = "forest" } },
		["mem.ret.forest.02"] = { event = "memory_return", speaker = "character", styles = { "intimate" },
			depth = { "natural", "literary" }, conditions = { repeatVisit = true, mood = "forest" } },
		["mem.ret.capital"] = { event = "memory_return", speaker = "inner", styles = { "everyday", "intimate" },
			depth = { "natural", "literary" }, conditions = { repeatVisit = true, mood = "city" } },
		["mem.ret.long"] = { event = "memory_return", speaker = "inner", styles = { "ancient" },
			depth = { "literary", "elevated" }, conditions = { repeatVisit = true, daysSinceLastVisit = 3 } },
		["mem.ret.often"] = { event = "memory_return", speaker = "character", styles = { "everyday" },
			depth = { "natural", "literary" }, conditions = { visitsMin = 5 } },
		-- l'ultima visita è finita male: solo se esiste il ricordo (morte o fuga)
		["mem.ret.bad.death"] = { event = "memory_return", speaker = "inner", styles = { "tragic" },
			tags = { "topic:death" }, depth = { "literary", "elevated" }, conditions = { lastVisitBad = "death" } },
		["mem.ret.bad.flight"] = { event = "memory_return", speaker = "inner", styles = { "intimate" },
			depth = { "natural", "literary" }, conditions = { lastVisitBad = "flight" } },
		-- un flag narrativo: il primo decesso del personaggio
		["mem.ret.firstdeath"] = { event = "memory_return", speaker = "inner", styles = { "tragic" },
			tags = { "topic:death" }, depth = { "literary", "elevated" },
			conditions = { repeatVisit = true, remembered = "first_death" } },
	},
})
