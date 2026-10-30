-- Frasi del mondo che il client racconta (R3, #92 #93 #94 #95 #121; ADR 0028): meteo, alba e tramonto, sottozone e punti
-- di riferimento, missioni, reputazione, locanda e volo. Solo le regole; i testi stanno in
-- AzerothUnspoken_itIT/World.lua e AzerothUnspoken_enUS/World.lua.
--
-- Condizioni nuove (Engine/RuleEngine.lua, le legge Systems/World.lua):
--   weather = "rain" | "snow" | "storm" | "sand" | "fog" | "clear"   (il meteo letto dal client)
--   dayTime = true | false          (C_DateAndTime.IsDayTime); alba e tramonto sono `time = "dawn"` e `time = "dusk"`
--   landmark = "<id o tag>"         (Data/Landmarks.lua: il punto di riferimento in cui si è)
--   questActive, questReady, questJustCompleted, questAttemptsMin        (le missioni, solo id e numeri)
--   repStanding = "honored", repDirection = "up" | "down"                (l'ultimo cambio di livello di reputazione)
--   onFlight = true | false, journey = "start" | "arrival", journeyMin = <secondi>   (il volo)
-- Regola editoriale: una frase che nomina il meteo o il volo dichiara la condizione che lo garantisce (il validatore
-- avvisa se manca): con l'API illeggibile la condizione è falsa e la frase non esce. Niente lore inventata: se
-- serve, la voce la attribuisce a qualcuno ("si dice che...") e mai il narratore come fatto (D7 in #130).
local ADDON, NS = ...

local ALL = { "natural", "literary", "elevated" }

NS:RegisterPack({
	id = "base_world",
	name = "Base: il mondo (meteo, ore, luoghi, missioni, reputazione, locanda, volo)",
	languages = { "itIT", "enUS" },
	events = {
		-- il meteo cambia e resta cambiato; mai in combattimento, mai nei primi secondi dopo un caricamento
		weather_change = { category = "exploration", chance = 60, cooldown = 300 },
		-- il client passa dalla notte al giorno (alba) o dal giorno alla notte (tramonto)
		dawn = { category = "exploration", chance = 50, cooldown = 600 },
		dusk = { category = "exploration", chance = 50, cooldown = 600 },
		-- una sottozona nuova (la stessa non parla di nuovo per dieci minuti), o un punto di riferimento
		subzone_enter = { category = "exploration", chance = 30, cooldown = 120 },
		landmark = { category = "exploration", chance = 50, cooldown = 180 },
		-- un obiettivo finito o una missione pronta; una missione consegnata (priorità maggiore dell'atmosfera)
		quest_progress = { category = "life", chance = 35, cooldown = 120 },
		quest_complete = { category = "life", chance = 75, cooldown = 60 },
		-- un cambio di livello di reputazione, in su o in giù (le piccole variazioni non contano)
		reputation_change = { category = "life", chance = 70, cooldown = 120 },
		-- il riposo comincia (locanda o città); non all'accesso né dopo un caricamento
		rest_enter = { category = "life", chance = 55, cooldown = 600 },
		-- la partenza e l'arrivo di un volo
		journey = { category = "exploration", chance = 70, cooldown = 120 },
	},
	registry = {
		-------------------------------------------------------------------
		-- meteo: cambia (weather_change)
		-------------------------------------------------------------------
		["world.rain.01"] = { event = "weather_change", speaker = "inner", styles = { "intimate" },
			tags = { "melancholy", "temperament:melancholic" }, depth = ALL,
			conditions = { weather = "rain", ["not"] = { indoors = true } } },
		["world.rain.02"] = { event = "weather_change", speaker = "character", styles = { "ironic" },
			tags = { "wry", "temperament:cheerful" }, depth = { "natural", "literary" },
			conditions = { weather = "rain", ["not"] = { indoors = true } } },
		["world.rain.e"] = { event = "weather_change", speaker = "narrator", styles = { "ancient" },
			tags = { "calm", "temperament:stoic" }, depth = ALL, conditions = { weather = "rain", ["not"] = { indoors = true } } },
		["world.snow.01"] = { event = "weather_change", speaker = "inner", styles = { "intimate" },
			tags = { "melancholy", "temperament:stoic" }, depth = ALL,
			conditions = { weather = "snow", ["not"] = { indoors = true } } },
		["world.snow.e"] = { event = "weather_change", speaker = "narrator", styles = { "ancient" },
			tags = { "calm", "temperament:stoic" }, depth = ALL, conditions = { weather = "snow", ["not"] = { indoors = true } } },
		["world.storm.01"] = { event = "weather_change", speaker = "character", styles = { "epic" },
			tags = { "temperament:resolute" }, depth = { "literary", "elevated" },
			conditions = { weather = "storm", ["not"] = { indoors = true } } },
		["world.storm.e"] = { event = "weather_change", speaker = "narrator", styles = { "tragic" },
			tags = { "dark", "temperament:stoic" }, depth = ALL, conditions = { weather = "storm", ["not"] = { indoors = true } } },
		["world.sand.e"] = { event = "weather_change", speaker = "narrator", styles = { "everyday" },
			tags = { "temperament:gruff" }, depth = ALL, conditions = { weather = "sand", ["not"] = { indoors = true } } },
		["world.fog.01"] = { event = "weather_change", speaker = "inner", styles = { "intimate", "ancient" },
			tags = { "mystic", "curiosity:high" }, depth = ALL,
			conditions = { weather = "fog", ["not"] = { indoors = true } } },
		["world.clear.01"] = { event = "weather_change", speaker = "inner", styles = { "intimate" },
			tags = { "calm", "morality:hopeful" }, depth = ALL, conditions = { weather = "clear" } },
		["world.clear.e"] = { event = "weather_change", speaker = "narrator", styles = { "ancient" },
			tags = { "calm", "morality:hopeful" }, depth = ALL, conditions = { weather = "clear", ["not"] = { indoors = true } } },

		-- arrivare con il tempo che c'è: l'evento di zona legge il meteo (ci si arriva già dentro)
		["world.zone.rain"] = { event = "zone", speaker = "inner", styles = { "intimate" },
			tags = { "melancholy", "curiosity:high" }, depth = ALL,
			conditions = { weather = "rain", ["not"] = { indoors = true } } },
		["world.zone.rain.first"] = { event = "zone", speaker = "inner", styles = { "intimate", "ancient" },
			tags = { "calm", "curiosity:high" }, depth = ALL,
			conditions = { weather = "rain", firstVisit = true, ["not"] = { indoors = true } } },
		["world.zone.snow"] = { event = "zone", speaker = "narrator", styles = { "ancient" },
			tags = { "calm", "temperament:stoic" }, depth = ALL, conditions = { weather = "snow", ["not"] = { indoors = true } } },

		-------------------------------------------------------------------
		-- alba e tramonto (dawn, dusk)
		-------------------------------------------------------------------
		["world.dawn.01"] = { event = "dawn", speaker = "inner", styles = { "intimate" },
			tags = { "calm", "morality:hopeful" }, depth = ALL },
		["world.dawn.e"] = { event = "dawn", speaker = "narrator", styles = { "ancient" },
			tags = { "calm", "morality:hopeful" }, depth = ALL },
		["world.dawn.forest"] = { event = "dawn", speaker = "inner", styles = { "ancient", "intimate" },
			tags = { "calm", "mystic", "faith:spiritual" }, depth = ALL, conditions = { mood = "forest" } },
		["world.dusk.01"] = { event = "dusk", speaker = "inner", styles = { "intimate" },
			tags = { "melancholy", "temperament:melancholic" }, depth = ALL },
		["world.dusk.e"] = { event = "dusk", speaker = "narrator", styles = { "ancient" },
			tags = { "calm", "temperament:melancholic" }, depth = ALL },
		["world.dusk.forest"] = { event = "dusk", speaker = "inner", styles = { "ancient", "tragic" },
			tags = { "dark", "motivation:protection" }, depth = ALL, conditions = { mood = "forest" } },

		-------------------------------------------------------------------
		-- sottozone (subzone_enter): {subzone} è il nome dato dal client
		-------------------------------------------------------------------
		["world.sub.01"] = { event = "subzone_enter", speaker = "narrator", styles = { "everyday" },
			tags = { "calm", "curiosity:mid" }, depth = ALL },
		["world.sub.02"] = { event = "subzone_enter", speaker = "inner", styles = { "intimate" },
			tags = { "curiosity:high" }, depth = ALL },
		["world.sub.03"] = { event = "subzone_enter", speaker = "inner", styles = { "everyday" },
			tags = { "curiosity:high", "temperament:cheerful" }, depth = { "natural", "literary" } },
		["world.sub.04"] = { event = "subzone_enter", speaker = "character", styles = { "ironic" },
			tags = { "wry", "temperament:gruff" }, depth = { "natural", "literary" } },
		["world.sub.dark"] = { event = "subzone_enter", speaker = "inner", styles = { "tragic" },
			tags = { "dark", "temperament:stoic" }, depth = { "literary", "elevated" }, conditions = { mood = "dark" } },
		["world.sub.night"] = { event = "subzone_enter", speaker = "inner", styles = { "tragic", "intimate" },
			tags = { "dark", "melancholy", "temperament:melancholic" }, depth = ALL, conditions = { time = "night" } },

		-------------------------------------------------------------------
		-- punti di riferimento (landmark): {landmark} è il nome dato dal client
		-------------------------------------------------------------------
		["world.lm.inn"] = { event = "landmark", speaker = "narrator", styles = { "everyday", "intimate" },
			tags = { "calm", "temperament:cheerful" }, depth = ALL, conditions = { landmark = "inn" } },
		["world.lm.inn.inner"] = { event = "landmark", speaker = "inner", styles = { "everyday" },
			tags = { "calm", "temperament:cheerful" }, depth = { "natural", "literary" },
			conditions = { landmark = "inn" } },
		["world.lm.village"] = { event = "landmark", speaker = "inner", styles = { "intimate", "everyday" },
			tags = { "melancholy", "topic:family" }, depth = ALL, conditions = { landmark = "village" } },
		["world.lm.village.e"] = { event = "landmark", speaker = "narrator", styles = { "everyday" },
			tags = { "calm", "temperament:cheerful" }, depth = ALL, conditions = { landmark = "village" } },
		["world.lm.graveyard"] = { event = "landmark", speaker = "narrator", styles = { "tragic", "ancient" },
			tags = { "dark", "topic:death", "temperament:stoic" }, depth = { "literary", "elevated" },
			conditions = { landmark = "graveyard" } },
		["world.lm.graveyard.inner"] = { event = "landmark", speaker = "inner", styles = { "tragic" },
			tags = { "dark", "topic:death", "temperament:melancholic" }, depth = { "literary", "elevated" },
			conditions = { landmark = "graveyard" } },
		["world.lm.camp"] = { event = "landmark", speaker = "inner", styles = { "everyday" },
			tags = { "calm", "temperament:cheerful" }, depth = { "natural", "literary" },
			conditions = { landmark = "camp" } },
		["world.lm.mine"] = { event = "landmark", speaker = "inner", styles = { "tragic", "everyday" },
			tags = { "dark", "temperament:gruff" }, depth = { "natural", "literary" },
			conditions = { landmark = "mine" } },
		["world.lm.abbey"] = { event = "landmark", speaker = "inner", styles = { "ancient", "ceremonial" },
			tags = { "solemn", "faith:spiritual" }, depth = { "literary", "elevated" },
			conditions = { landmark = "abbey" } },
		["world.lm.crossroads"] = { event = "landmark", speaker = "inner", styles = { "ancient", "intimate" },
			tags = { "curiosity:high", "motivation:freedom" }, depth = ALL,
			conditions = { landmark = "barrens.the_crossroads" } },

		-------------------------------------------------------------------
		-- missioni (quest_progress, quest_complete)
		-------------------------------------------------------------------
		["world.quest.progress.01"] = { event = "quest_progress", speaker = "inner", styles = { "everyday", "intimate" },
			tags = { "temperament:stoic", "motivation:duty" }, depth = ALL, conditions = { questReady = false } },
		["world.quest.progress.e"] = { event = "quest_progress", speaker = "narrator", styles = { "everyday" },
			tags = { "calm", "motivation:duty" }, depth = ALL, conditions = { questReady = false } },
		["world.quest.ready.01"] = { event = "quest_progress", speaker = "inner", styles = { "intimate" },
			tags = { "calm", "motivation:duty" }, depth = ALL, conditions = { questReady = true } },
		["world.quest.ready.02"] = { event = "quest_progress", speaker = "character", styles = { "epic", "everyday" },
			tags = { "temperament:resolute" }, depth = { "natural", "literary" }, conditions = { questReady = true } },
		["world.quest.complete.01"] = { event = "quest_complete", speaker = "inner", styles = { "intimate" },
			tags = { "calm", "motivation:duty" }, depth = ALL, conditions = { questJustCompleted = true } },
		["world.quest.complete.02"] = { event = "quest_complete", speaker = "narrator", styles = { "everyday", "ancient" },
			tags = { "calm", "motivation:duty" }, depth = ALL, conditions = { questJustCompleted = true } },
		["world.quest.complete.03"] = { event = "quest_complete", speaker = "character", styles = { "epic" },
			tags = { "temperament:resolute", "motivation:glory" }, depth = { "literary", "elevated" },
			conditions = { questJustCompleted = true } },
		-- una missione consegnata dopo molti tentativi (accettata almeno tre volte in questa sessione)
		["world.quest.again.01"] = { event = "quest_complete", speaker = "inner", styles = { "ironic", "intimate" },
			tags = { "wry", "temperament:stoic" }, depth = { "natural", "literary" },
			conditions = { questJustCompleted = true, questAttemptsMin = 3 } },
		["world.quest.again.e"] = { event = "quest_complete", speaker = "narrator", styles = { "everyday", "intimate" },
			tags = { "calm", "temperament:stoic" }, depth = ALL, conditions = { questJustCompleted = true, questAttemptsMin = 3 } },

		-------------------------------------------------------------------
		-- reputazione (reputation_change): il livello raggiunto
		-------------------------------------------------------------------
		["world.rep.up.neutral"] = { event = "reputation_change", speaker = "inner", styles = { "intimate", "everyday" },
			tags = { "calm", "morality:hopeful" }, depth = ALL,
			conditions = { repStanding = "neutral", repDirection = "up" } },
		["world.rep.up.friendly"] = { event = "reputation_change", speaker = "inner", styles = { "intimate" },
			tags = { "calm", "temperament:cheerful" }, depth = ALL,
			conditions = { repStanding = "friendly", repDirection = "up" } },
		["world.rep.up.honored"] = { event = "reputation_change", speaker = "inner", styles = { "ceremonial", "intimate" },
			tags = { "solemn", "motivation:duty" }, depth = ALL,
			conditions = { repStanding = "honored", repDirection = "up" } },
		["world.rep.up.revered"] = { event = "reputation_change", speaker = "character", styles = { "epic", "ceremonial" },
			tags = { "solemn", "motivation:glory" }, depth = { "literary", "elevated" },
			conditions = { repStanding = "revered", repDirection = "up" } },
		["world.rep.up.exalted"] = { event = "reputation_change", speaker = "inner", styles = { "epic", "ancient" },
			tags = { "solemn", "motivation:glory" }, depth = { "literary", "elevated" },
			conditions = { repStanding = "exalted", repDirection = "up" } },
		["world.rep.down.cold"] = { event = "reputation_change", speaker = "inner", styles = { "tragic", "intimate" },
			tags = { "dark", "melancholy", "temperament:melancholic" }, depth = ALL,
			conditions = { repStanding = { "unfriendly", "hostile", "hated" }, repDirection = "down" } },
		["world.rep.down.e"] = { event = "reputation_change", speaker = "narrator", styles = { "tragic" },
			tags = { "temperament:stoic" }, depth = ALL,
			conditions = { repStanding = { "unfriendly", "hostile", "hated" }, repDirection = "down" } },

		-------------------------------------------------------------------
		-- riposo (rest_enter): al chiuso è la locanda, all'aperto è la città
		-------------------------------------------------------------------
		["world.rest.inn.01"] = { event = "rest_enter", speaker = "inner", styles = { "everyday", "intimate" },
			tags = { "calm", "temperament:cheerful" }, depth = ALL, conditions = { indoors = true } },
		["world.rest.inn.e"] = { event = "rest_enter", speaker = "narrator", styles = { "everyday", "intimate" },
			tags = { "calm", "temperament:cheerful" }, depth = ALL, conditions = { indoors = true } },
		["world.rest.town.01"] = { event = "rest_enter", speaker = "inner", styles = { "intimate" },
			tags = { "calm", "melancholy", "temperament:melancholic" }, depth = ALL, conditions = { ["not"] = { indoors = true } } },
		["world.rest.town.e"] = { event = "rest_enter", speaker = "narrator", styles = { "everyday" },
			tags = { "calm", "temperament:stoic" }, depth = ALL, conditions = { ["not"] = { indoors = true } } },

		-------------------------------------------------------------------
		-- volo (journey): partenza e arrivo
		-------------------------------------------------------------------
		["world.flight.start.01"] = { event = "journey", speaker = "inner", styles = { "intimate", "ancient" },
			tags = { "curiosity:high", "motivation:freedom" }, depth = ALL,
			conditions = { journey = "start", onFlight = true } },
		["world.flight.start.e"] = { event = "journey", speaker = "narrator", styles = { "ancient", "epic" },
			tags = { "calm", "curiosity:high" }, depth = ALL, conditions = { journey = "start", onFlight = true } },
		["world.flight.start.02"] = { event = "journey", speaker = "character", styles = { "ironic" },
			tags = { "wry", "temperament:cheerful" }, depth = { "natural", "literary" },
			conditions = { journey = "start", onFlight = true } },
		["world.flight.arrive.01"] = { event = "journey", speaker = "inner", styles = { "everyday", "intimate" },
			tags = { "calm", "temperament:cheerful" }, depth = ALL, conditions = { journey = "arrival", onFlight = false } },
		["world.flight.arrive.e"] = { event = "journey", speaker = "narrator", styles = { "everyday" },
			tags = { "calm", "temperament:stoic" }, depth = ALL, conditions = { journey = "arrival", onFlight = false } },
		["world.flight.long.01"] = { event = "journey", speaker = "inner", styles = { "intimate", "ancient" },
			tags = { "melancholy", "curiosity:high" }, depth = ALL,
			conditions = { journey = "arrival", onFlight = false, journeyMin = 120 } },
		["world.flight.long.e"] = { event = "journey", speaker = "narrator", styles = { "ancient" },
			tags = { "calm", "curiosity:mid" }, depth = ALL, conditions = { journey = "arrival", onFlight = false, journeyMin = 120 } },
	},
})
