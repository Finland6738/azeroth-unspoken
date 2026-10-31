-- Gli archi narrativi di base (step S9, GDD §7.5; ADR 0021): quattro micro-storie personali. Solo la struttura: gli stati,
-- i passi con i loro eventi e le loro condizioni. Le battute del narratore sono regole in Data/RegistryArcs.lua; i testi
-- (titolo, racconto per stato, scelte) e le battute stanno in AzerothUnspoken_itIT/Arcs.lua e AzerothUnspoken_enUS/Arcs.lua.
-- Un pacchetto aggiunge archi con NS:RegisterArcs{ pack, arcs, texts } (stessa forma, vedi PACK_FORMAT.md, «Story Arcs»).
--
-- Dati letterali, non codice (#143): nessuna funzione costruisce gli archi, così l'archivio (tools/archive) li legge, li
-- controlla e li riscrive senza differenze. Una costante locale con dati (STARTER_ZONE) è ammessa: si legge come dato.
--
-- Regole (GDD §7.5): nessuna ricompensa e nessun effetto sul gioco (la definizione non ha campi per averli); ogni passo
-- scatta da un evento vero (luogo, memoria, relazione, flag, livello, morte) o dalla scelta del giocatore; ciò che si
-- attribuisce al personaggio, in una scelta, lo decide il giocatore; nessuna lore inventata spacciata per canone.
--
-- Condizioni: i luoghi si leggono per uiMapID e, in più, per nome della zona (client inglese): gli uiMapID di
-- Data/Places.lua non sono ancora verificati in Forever e C_Map può dare la mappa figlia di una sottozona; chi vince tra
-- i due basta. Il personaggio comincia in una zona che dipende dalla sua razza (era classica).
local ADDON, NS = ...

-- «sono nella zona in cui è cominciata l'avventura della mia razza» (token di UnitRace, nome della zona nel client
-- inglese e uiMapID di Classic Era): l'elenco per `any`, scritto per esteso perché i dati non si calcolano (#143)
local STARTER_ZONE = {
	{ race = "Dwarf", place = { any = { { mapID = 1426 }, { zone = "Dun Morogh" } } } },
	{ race = "Gnome", place = { any = { { mapID = 1426 }, { zone = "Dun Morogh" } } } },
	{ race = "Human", place = { any = { { mapID = 1429 }, { zone = "Elwynn Forest" } } } },
	{ race = "NightElf", place = { any = { { mapID = 1438 }, { zone = "Teldrassil" } } } },
	{ race = "Orc", place = { any = { { mapID = 1411 }, { zone = "Durotar" } } } },
	{ race = "Scourge", place = { any = { { mapID = 1420 }, { zone = "Tirisfal Glades" } } } },
	{ race = "Tauren", place = { any = { { mapID = 1412 }, { zone = "Mulgore" } } } },
	{ race = "Troll", place = { any = { { mapID = 1411 }, { zone = "Durotar" } } } },
}

NS:RegisterArcs({
	pack = "base_arcs",
	arcs = {
		---------------------------------------------------------------------------
		-- Il sentiero ritrovato (GDD §7.5): il ritorno nel luogo da cui è cominciata l'avventura.
		-- Si apre tornando nella zona di partenza della propria razza dopo il livello 12, si medita lì (con una scelta,
		-- dal diario o dal cambio di sottozona) e si chiude lasciandola per riprendere la strada.
		---------------------------------------------------------------------------
		path = {
			choices = { reflect = { options = { "gratitude", "distance", "silence" } } },
			steps = {
				{ from = "LOCKED", to = "DISCOVERED", on = { "zone" }, when = { levelMin = 12, any = STARTER_ZONE } },
				{ from = "DISCOVERED", to = "REFLECTED", on = { "zone", "player" }, wait = 120, choose = "reflect",
					when = { any = STARTER_ZONE } },
				{ from = "REFLECTED", to = "RESOLVED", on = { "zone" }, wait = 60, when = { ["not"] = { any = STARTER_ZONE } } },
			},
		},

		---------------------------------------------------------------------------
		-- Un volto noto: un NPC che si incontra sempre più spesso (relazioni di S6b). L'arco si lega al primo NPC conosciuto
		-- (locandiere, mercante, addestratore, maestro di volo, banchiere) e cresce con la familiarità: nessun dato
		-- dell'NPC cambia, si legge soltanto il rapporto che l'addon già tiene.
		---------------------------------------------------------------------------
		knownface = {
			subject = "npc",
			choices = { feeling = { options = { "thank", "remember", "distance" } } },
			steps = {
				{ from = "LOCKED", to = "DISCOVERED", on = { "npc" }, when = { levelMin = 5, relationKind = "npc", familiarityMin = 25,
					other = { kind = "npc", role = { "innkeeper", "merchant", "trainer", "flightmaster", "banker" } } } },
				{ from = "DISCOVERED", to = "REFLECTED", on = { "npc" }, wait = 3600, choose = "feeling",
					when = { arc = { withSubject = true }, familiarityMin = 40 } },
				{ from = "REFLECTED", to = "RESOLVED", on = { "npc" }, wait = 3600,
					when = { arc = { withSubject = true }, familiarityMin = 55 } },
			},
		},

		---------------------------------------------------------------------------
		-- Il luogo della caduta: una perdita. Si apre alla prima morte dopo il livello 10 (se il personaggio non evita
		-- l'argomento), si medita tornando nel luogo in cui la visita è finita male e si chiude con il livello successivo.
		---------------------------------------------------------------------------
		fallen = {
			topic = "death",
			choices = { stance = { options = { "silence", "prepare", "onward" } } },
			steps = {
				{ from = "LOCKED", to = "DISCOVERED", on = { "death" }, when = { levelMin = 10 } },
				{ from = "DISCOVERED", to = "REFLECTED", on = { "zone" }, wait = 1800, choose = "stance",
					when = { repeatVisit = true, lastVisitBad = "death" } },
				{ from = "REFLECTED", to = "RESOLVED", on = { "level" }, wait = 300 },
			},
		},

		---------------------------------------------------------------------------
		-- Le tre porte: il viaggio tra le capitali, con uno stato proprio (JOURNEY). Dalla seconda capitale alla terza,
		-- poi una riflessione che parte solo dal giocatore (dal diario, dopo una pausa) e la strada aperta.
		---------------------------------------------------------------------------
		capitals = {
			states = { "LOCKED", "DISCOVERED", "JOURNEY", "REFLECTED", "RESOLVED" },
			choices = { meaning = { options = { "shelter", "crossroads", "promise" } } },
			steps = {
				{ from = "LOCKED", to = "DISCOVERED", on = { "zone" },
					when = { levelMin = 10, capitalsVisitedMin = 2, place = { capital = true } } },
				{ from = "DISCOVERED", to = "JOURNEY", on = { "zone" },
					when = { capitalsVisitedMin = 3, place = { capital = true } } },
				{ from = "JOURNEY", to = "REFLECTED", on = { "player" }, wait = 600, choose = "meaning" },
				{ from = "REFLECTED", to = "RESOLVED", on = { "zone" }, wait = 60, when = { place = { capital = false } } },
			},
		},
	},
})
