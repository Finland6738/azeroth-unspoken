-- Luoghi dell'era di Forever (S6c, GDD §7.2): tag e temi di zone, sottozone, capitali, dungeon, incursioni e campi di
-- battaglia. Solo dati: li legge Systems/Place.lua (NS:RegisterPlaces), che costruisce ctx.place.
--
-- Chiavi: il NOME del client inglese (quello di GetRealZoneText / GetInstanceInfo nel client dell'utente).
-- `map` è l'uiMapID di C_Map.GetBestMapForUnit e `id` l'instanceID di GetInstanceInfo. I numeri vengono dalla
-- numerazione di Classic Era e NON sono ancora verificati nel client Forever (build 70658): finché una voce non ha
-- `verified = true`, il luogo si riconosce per nome e il numero serve solo come ultimo ripiego (vedi Place:Lookup).
-- La prova si fa in gioco con `/au luogo`, che mostra mapID e instanceID letti dal client (docs/G1_checklist.md).
--
-- Campi: tags (atmosfera e temi), mood (atmosfera principale, come NS:RegisterZoneMoods), continent (kalimdor |
-- eastern), faction (chi governa il luogo: Alliance | Horde; assente = conteso o neutrale), capital (true),
-- kind (solo istanze: party | raid | pvp | arena). Le frasi chiedono i tag con `place = { tags = { ... } }`.
-- Regola del GDD §5.4: i tag descrivono l'atmosfera, non affermano fatti di lore.
local ADDON, NS = ...

NS:RegisterPlaces({
	continents = { [1414] = "kalimdor", [1415] = "eastern" },
	zones = {
		-- Regni Orientali
		["Elwynn Forest"] = { map = 1429, continent = "eastern", faction = "Alliance", tags = { "forest", "farmland" } },
		["Westfall"] = { map = 1436, continent = "eastern", faction = "Alliance", tags = { "plains", "farmland", "coast" } },
		["Redridge Mountains"] = { map = 1433, continent = "eastern", faction = "Alliance", tags = { "mountain", "wilds" } },
		["Duskwood"] = { map = 1431, continent = "eastern", faction = "Alliance", tags = { "dark", "forest", "cursed" } },
		["Dun Morogh"] = { map = 1426, continent = "eastern", faction = "Alliance", tags = { "snow", "mountain", "dwarven" } },
		["Loch Modan"] = { map = 1432, continent = "eastern", faction = "Alliance", tags = { "mountain", "dwarven" } },
		["Wetlands"] = { map = 1437, continent = "eastern", tags = { "swamp", "wilds" } },
		["Tirisfal Glades"] = { map = 1420, continent = "eastern", faction = "Horde", tags = { "dark", "forsaken", "farmland" } },
		["Silverpine Forest"] = { map = 1421, continent = "eastern", faction = "Horde", tags = { "dark", "forest" } },
		["Hillsbrad Foothills"] = { map = 1424, continent = "eastern", tags = { "plains", "farmland" } },
		["Alterac Mountains"] = { map = 1416, continent = "eastern", tags = { "snow", "mountain", "ruin" } },
		["Arathi Highlands"] = { map = 1417, continent = "eastern", tags = { "plains", "ruin" } },
		["The Hinterlands"] = { map = 1425, continent = "eastern", tags = { "forest", "wilds", "troll" } },
		["Western Plaguelands"] = { map = 1422, continent = "eastern", tags = { "plague", "cursed", "farmland" } },
		["Eastern Plaguelands"] = { map = 1423, continent = "eastern", tags = { "plague", "cursed", "undead" } },
		["Badlands"] = { map = 1418, continent = "eastern", tags = { "desert", "wilds" } },
		["Searing Gorge"] = { map = 1427, continent = "eastern", tags = { "fire", "mountain" } },
		["Burning Steppes"] = { map = 1428, continent = "eastern", tags = { "fire", "wilds" } },
		["Deadwind Pass"] = { map = 1430, continent = "eastern", tags = { "dark", "mountain", "cursed" } },
		["Swamp of Sorrows"] = { map = 1435, continent = "eastern", tags = { "swamp", "ruin" } },
		["Blasted Lands"] = { map = 1419, continent = "eastern", tags = { "fire", "wilds", "cursed" } },
		["Stranglethorn Vale"] = { map = 1434, continent = "eastern", tags = { "jungle", "coast", "troll" } },
		["Stormwind City"] = { map = 1453, continent = "eastern", faction = "Alliance", capital = true, tags = { "capital", "human", "port" } },
		["Ironforge"] = { map = 1455, continent = "eastern", faction = "Alliance", capital = true, tags = { "capital", "dwarven", "mountain" } },
		["Undercity"] = { map = 1458, continent = "eastern", faction = "Horde", capital = true, tags = { "capital", "forsaken", "dark" } },
		-- Kalimdor
		["Durotar"] = { map = 1411, continent = "kalimdor", faction = "Horde", tags = { "desert", "orcish" } },
		["Mulgore"] = { map = 1412, continent = "kalimdor", faction = "Horde", tags = { "plains", "tauren" } },
		["The Barrens"] = { map = 1413, continent = "kalimdor", faction = "Horde", tags = { "plains", "wilds" } },
		["Teldrassil"] = { map = 1438, continent = "kalimdor", faction = "Alliance", tags = { "forest", "elven", "sacred" } },
		["Darkshore"] = { map = 1439, continent = "kalimdor", faction = "Alliance", tags = { "coast", "forest", "elven", "ruin" } },
		["Ashenvale"] = { map = 1440, continent = "kalimdor", tags = { "forest", "elven" } },
		["Stonetalon Mountains"] = { map = 1442, continent = "kalimdor", tags = { "mountain", "wilds" } },
		["Thousand Needles"] = { map = 1441, continent = "kalimdor", tags = { "desert", "mountain" } },
		["Desolace"] = { map = 1443, continent = "kalimdor", tags = { "ruin", "wilds" } },
		["Feralas"] = { map = 1444, continent = "kalimdor", tags = { "forest", "elven", "ruin" } },
		["Dustwallow Marsh"] = { map = 1445, continent = "kalimdor", tags = { "swamp", "coast" } },
		["Tanaris"] = { map = 1446, continent = "kalimdor", tags = { "desert", "ruin" } },
		["Azshara"] = { map = 1447, continent = "kalimdor", tags = { "ruin", "coast", "elven" } },
		["Felwood"] = { map = 1448, continent = "kalimdor", tags = { "dark", "forest", "cursed" } },
		["Un'Goro Crater"] = { map = 1449, continent = "kalimdor", tags = { "jungle", "wilds" } },
		["Moonglade"] = { map = 1450, continent = "kalimdor", tags = { "sacred", "forest" } },
		["Silithus"] = { map = 1451, continent = "kalimdor", tags = { "desert", "cursed" } },
		["Winterspring"] = { map = 1452, continent = "kalimdor", tags = { "snow", "mountain", "wilds" } },
		["Orgrimmar"] = { map = 1454, continent = "kalimdor", faction = "Horde", capital = true, tags = { "capital", "orcish", "desert" } },
		["Thunder Bluff"] = { map = 1456, continent = "kalimdor", faction = "Horde", capital = true, tags = { "capital", "tauren", "plains" } },
		["Darnassus"] = { map = 1457, continent = "kalimdor", faction = "Alliance", capital = true, tags = { "capital", "elven", "sacred" } },
	},
	-- sottozone con un'atmosfera propria: le città neutrali e i porti (i tag si aggiungono a quelli della zona)
	subzones = {
		["Booty Bay"] = { tags = { "port", "town", "neutral" } },
		["Ratchet"] = { tags = { "port", "town", "neutral" } },
		["Gadgetzan"] = { tags = { "town", "neutral" } },
		["Everlook"] = { tags = { "town", "neutral" } },
		["Cenarion Hold"] = { tags = { "town", "neutral" } },
		["Goldshire"] = { tags = { "town" } },
		["Lion's Pride Inn"] = { tags = { "inn" } },
		["Razor Hill"] = { tags = { "town" } },
		["Crossroads"] = { tags = { "town" } },
		["Light's Hope Chapel"] = { tags = { "sacred", "neutral" } },
		["Nijel's Point"] = { tags = { "town" } },
	},
	instances = {
		-- dungeon
		["Ragefire Chasm"] = { id = 389, kind = "party", tags = { "fire", "deep" } },
		["Wailing Caverns"] = { id = 43, kind = "party", tags = { "deep", "cursed" } },
		["The Deadmines"] = { id = 36, kind = "party", tags = { "deep", "port" } },
		["Shadowfang Keep"] = { id = 33, kind = "party", tags = { "dark", "cursed" } },
		["The Stockade"] = { id = 34, kind = "party", tags = { "deep", "prison" } },
		["Blackfathom Deeps"] = { id = 48, kind = "party", tags = { "deep", "ruin", "coast" } },
		["Gnomeregan"] = { id = 90, kind = "party", tags = { "deep", "gnomish" } },
		["Razorfen Kraul"] = { id = 47, kind = "party", tags = { "deep", "wilds" } },
		["Scarlet Monastery"] = { id = 189, kind = "party", tags = { "dark", "sacred" } },
		["Razorfen Downs"] = { id = 129, kind = "party", tags = { "deep", "undead" } },
		["Uldaman"] = { id = 70, kind = "party", tags = { "ruin", "deep" } },
		["Zul'Farrak"] = { id = 209, kind = "party", tags = { "desert", "troll", "ruin" } },
		["Maraudon"] = { id = 349, kind = "party", tags = { "deep", "sacred" } },
		["The Temple of Atal'Hakkar"] = { id = 109, kind = "party", tags = { "swamp", "troll", "ruin" } },
		["Blackrock Depths"] = { id = 230, kind = "party", tags = { "fire", "deep", "dwarven" } },
		["Blackrock Spire"] = { id = 229, kind = "party", tags = { "fire", "dragon" } },
		["Dire Maul"] = { id = 429, kind = "party", tags = { "ruin", "elven" } },
		["Stratholme"] = { id = 329, kind = "party", tags = { "plague", "undead", "ruin" } },
		["Scholomance"] = { id = 289, kind = "party", tags = { "dark", "undead" } },
		-- incursioni
		["Molten Core"] = { id = 409, kind = "raid", tags = { "fire", "deep" } },
		["Onyxia's Lair"] = { id = 249, kind = "raid", tags = { "fire", "dragon", "deep" } },
		["Blackwing Lair"] = { id = 469, kind = "raid", tags = { "fire", "dragon" } },
		["Zul'Gurub"] = { id = 309, kind = "raid", tags = { "jungle", "troll", "ruin" } },
		["Ruins of Ahn'Qiraj"] = { id = 509, kind = "raid", tags = { "desert", "ruin", "cursed" } },
		["Ahn'Qiraj"] = { id = 531, kind = "raid", tags = { "desert", "deep", "cursed" } },
		["Naxxramas"] = { id = 533, kind = "raid", tags = { "plague", "undead" } },
		-- campi di battaglia
		["Warsong Gulch"] = { id = 489, map = 1460, kind = "pvp", tags = { "battlefield", "forest" } },
		["Arathi Basin"] = { id = 529, map = 1461, kind = "pvp", tags = { "battlefield", "farmland" } },
		["Alterac Valley"] = { id = 30, map = 1459, kind = "pvp", tags = { "battlefield", "snow", "mountain" } },
	},
})
