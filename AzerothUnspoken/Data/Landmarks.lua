-- Punti di riferimento (R3, #94; ADR 0028): luoghi con un nome, dentro una sottozona, che il narratore riconosce quando
-- ci si entra (evento `landmark`) e che le frasi chiedono con la condizione `landmark = "<id o tag>"` e con il
-- segnaposto {landmark}. Solo dati: li legge Systems/World.lua (NS:RegisterLandmarks), che li controlla.
--
-- Gerarchia: continente > regione > zona > sottozona > punto di riferimento. Il continente e la zona stanno già in
-- Data/Places.lua; qui si aggiunge l'ultimo livello.
--
-- Campi:
--   id        testo stabile, uguale in ogni lingua, tipo "elwynn.goldshire" (lettere, numeri, punto, trattino);
--   zone      nome della zona nel client inglese (come GetRealZoneText), come in Data/Places.lua;
--   subzone   nome della sottozona nel client inglese (come GetSubZoneText). Il confronto è per nome, senza maiuscole;
--   tags      che genere di luogo è (village, inn, graveyard, camp, mine, ruin...): le frasi li chiedono come l'id;
--   x, y, radius, mapID   FACOLTATIVI, solo dove la posizione è affidabile: frazioni 0-1 della mappa (uiMapID mapID, o
--             quella di C_Map.GetBestMapForUnit) e il raggio. Con le coordinate il punto vale solo se il giocatore è
--             entro il raggio, e solo dove il client dà la posizione (C_Map.GetPlayerMapPosition non la dà nelle
--             istanze); senza, vale per nome. Nessun punto qui le usa ancora: servono misure fatte in gioco.
--   name      nome da mostrare, se diverso dalla sottozona. {landmark} mostra comunque il nome che dà il client.
-- I nomi vengono dal client inglese di Classic Era e NON sono ancora verificati in Forever (/au place, #36): un nome
-- sbagliato non fa danni, il punto semplicemente non si riconosce e parla l'evento `subzone_enter`.
-- Regola del GDD §5.4: i tag descrivono il luogo, non affermano fatti di lore.
local ADDON, NS = ...

NS:RegisterLandmarks({
	-- Regni Orientali
	{ id = "elwynn.goldshire", zone = "Elwynn Forest", subzone = "Goldshire", tags = { "village" } },
	{ id = "elwynn.lions_pride_inn", zone = "Elwynn Forest", subzone = "Lion's Pride Inn", tags = { "inn" } },
	{ id = "elwynn.northshire_abbey", zone = "Elwynn Forest", subzone = "Northshire Abbey", tags = { "abbey" } },
	{ id = "elwynn.fargodeep_mine", zone = "Elwynn Forest", subzone = "Fargodeep Mine", tags = { "mine" } },
	{ id = "westfall.sentinel_hill", zone = "Westfall", subzone = "Sentinel Hill", tags = { "village", "watch" } },
	{ id = "redridge.lakeshire", zone = "Redridge Mountains", subzone = "Lakeshire", tags = { "village" } },
	{ id = "duskwood.darkshire", zone = "Duskwood", subzone = "Darkshire", tags = { "village" } },
	{ id = "duskwood.raven_hill_cemetery", zone = "Duskwood", subzone = "Raven Hill Cemetery", tags = { "graveyard" } },
	{ id = "tirisfal.brill", zone = "Tirisfal Glades", subzone = "Brill", tags = { "village" } },
	{ id = "tirisfal.deathknell", zone = "Tirisfal Glades", subzone = "Deathknell", tags = { "village", "graveyard" } },
	{ id = "dunmorogh.coldridge_valley", zone = "Dun Morogh", subzone = "Coldridge Valley", tags = { "camp" } },
	{ id = "dunmorogh.kharanos", zone = "Dun Morogh", subzone = "Kharanos", tags = { "village" } },
	{ id = "lochmodan.thelsamar", zone = "Loch Modan", subzone = "Thelsamar", tags = { "village" } },
	{ id = "lochmodan.stonewrought_dam", zone = "Loch Modan", subzone = "Stonewrought Dam", tags = { "watch" } },
	{ id = "westfall.moonbrook", zone = "Westfall", subzone = "Moonbrook", tags = { "village", "ruin" } },
	{ id = "redridge.stonewatch", zone = "Redridge Mountains", subzone = "Stonewatch", tags = { "watch" } },
	{ id = "silverpine.the_sepulcher", zone = "Silverpine Forest", subzone = "The Sepulcher", tags = { "camp", "graveyard" } },
	{ id = "silverpine.pyrewood_village", zone = "Silverpine Forest", subzone = "Pyrewood Village", tags = { "village" } },
	{ id = "wetlands.menethil_harbor", zone = "Wetlands", subzone = "Menethil Harbor", tags = { "village", "port" } },
	{ id = "wetlands.dun_modr", zone = "Wetlands", subzone = "Dun Modr", tags = { "ruin" } },
	{ id = "hillsbrad.southshore", zone = "Hillsbrad Foothills", subzone = "Southshore", tags = { "village", "coast" } },
	{ id = "hillsbrad.tarren_mill", zone = "Hillsbrad Foothills", subzone = "Tarren Mill", tags = { "village" } },
	{ id = "stranglethorn.gromgol", zone = "Stranglethorn Vale", subzone = "Grom'gol Base Camp", tags = { "camp" } },
	{ id = "stranglethorn.booty_bay", zone = "Stranglethorn Vale", subzone = "Booty Bay", tags = { "village", "port" } },
	{ id = "stranglethorn.nesingwarys_expedition", zone = "Stranglethorn Vale", subzone = "Nesingwary's Expedition", tags = { "camp" } },
	{ id = "arathi.refuge_pointe", zone = "Arathi Highlands", subzone = "Refuge Pointe", tags = { "camp", "watch" } },
	{ id = "arathi.hammerfall", zone = "Arathi Highlands", subzone = "Hammerfall", tags = { "camp" } },
	{ id = "arathi.stromgarde_keep", zone = "Arathi Highlands", subzone = "Stromgarde Keep", tags = { "ruin", "keep" } },
	{ id = "alterac.strahnbrad", zone = "Alterac Mountains", subzone = "Strahnbrad", tags = { "village", "ruin" } },
	{ id = "alterac.dalaran", zone = "Alterac Mountains", subzone = "Dalaran", tags = { "ruin" } },
	{ id = "badlands.kargath", zone = "Badlands", subzone = "Kargath", tags = { "camp" } },
	{ id = "badlands.angor_fortress", zone = "Badlands", subzone = "Angor Fortress", tags = { "ruin", "keep" } },
	{ id = "searinggorge.thorium_point", zone = "Searing Gorge", subzone = "Thorium Point", tags = { "camp" } },
	{ id = "searinggorge.the_cauldron", zone = "Searing Gorge", subzone = "The Cauldron", tags = { "mine" } },
	{ id = "hinterlands.aerie_peak", zone = "The Hinterlands", subzone = "Aerie Peak", tags = { "village" } },
	{ id = "hinterlands.revantusk_village", zone = "The Hinterlands", subzone = "Revantusk Village", tags = { "village", "coast" } },
	{ id = "hinterlands.jinthaalor", zone = "The Hinterlands", subzone = "Jintha'Alor", tags = { "ruin" } },
	{ id = "swampofsorrows.stonard", zone = "Swamp of Sorrows", subzone = "Stonard", tags = { "village", "camp" } },
	{ id = "swampofsorrows.pool_of_tears", zone = "Swamp of Sorrows", subzone = "Pool of Tears", tags = { "ruin" } },
	{ id = "blastedlands.nethergarde_keep", zone = "Blasted Lands", subzone = "Nethergarde Keep", tags = { "keep", "watch" } },
	{ id = "blastedlands.the_dark_portal", zone = "Blasted Lands", subzone = "The Dark Portal", tags = { "ruin" } },
	{ id = "burningsteppes.morgans_vigil", zone = "Burning Steppes", subzone = "Morgan's Vigil", tags = { "camp", "watch" } },
	{ id = "burningsteppes.flame_crest", zone = "Burning Steppes", subzone = "Flame Crest", tags = { "camp" } },
	{ id = "easternplaguelands.lights_hope_chapel", zone = "Eastern Plaguelands", subzone = "Light's Hope Chapel", tags = { "chapel", "camp" } },
	{ id = "easternplaguelands.tyrs_hand", zone = "Eastern Plaguelands", subzone = "Tyr's Hand", tags = { "ruin" } },
	-- Kalimdor
	{ id = "durotar.razor_hill", zone = "Durotar", subzone = "Razor Hill", tags = { "village", "camp" } },
	{ id = "durotar.senjin_village", zone = "Durotar", subzone = "Sen'jin Village", tags = { "village", "coast" } },
	{ id = "durotar.valley_of_trials", zone = "Durotar", subzone = "Valley of Trials", tags = { "camp" } },
	{ id = "barrens.the_crossroads", zone = "The Barrens", subzone = "The Crossroads", tags = { "village", "camp" } },
	{ id = "barrens.ratchet", zone = "The Barrens", subzone = "Ratchet", tags = { "village", "port" } },
	{ id = "teldrassil.dolanaar", zone = "Teldrassil", subzone = "Dolanaar", tags = { "village" } },
	{ id = "mulgore.bloodhoof_village", zone = "Mulgore", subzone = "Bloodhoof Village", tags = { "village" } },
	{ id = "mulgore.camp_narache", zone = "Mulgore", subzone = "Camp Narache", tags = { "camp" } },
	{ id = "teldrassil.shadowglen", zone = "Teldrassil", subzone = "Shadowglen", tags = { "camp" } },
	{ id = "barrens.camp_taurajo", zone = "The Barrens", subzone = "Camp Taurajo", tags = { "camp" } },
	{ id = "darkshore.auberdine", zone = "Darkshore", subzone = "Auberdine", tags = { "village", "port" } },
	{ id = "ashenvale.astranaar", zone = "Ashenvale", subzone = "Astranaar", tags = { "village" } },
	{ id = "ashenvale.splintertree_post", zone = "Ashenvale", subzone = "Splintertree Post", tags = { "camp" } },
	{ id = "stonetalon.sun_rock_retreat", zone = "Stonetalon Mountains", subzone = "Sun Rock Retreat", tags = { "camp" } },
	{ id = "stonetalon.stonetalon_peak", zone = "Stonetalon Mountains", subzone = "Stonetalon Peak", tags = { "camp" } },
	{ id = "thousandneedles.freewind_post", zone = "Thousand Needles", subzone = "Freewind Post", tags = { "village", "camp" } },
	{ id = "thousandneedles.mirage_raceway", zone = "Thousand Needles", subzone = "Mirage Raceway", tags = { "camp" } },
	{ id = "desolace.nijels_point", zone = "Desolace", subzone = "Nijel's Point", tags = { "camp" } },
	{ id = "desolace.shadowprey_village", zone = "Desolace", subzone = "Shadowprey Village", tags = { "village", "coast" } },
	{ id = "desolace.kodo_graveyard", zone = "Desolace", subzone = "Kodo Graveyard", tags = { "graveyard" } },
	{ id = "dustwallow.theramore_isle", zone = "Dustwallow Marsh", subzone = "Theramore Isle", tags = { "village", "port", "keep" } },
	{ id = "dustwallow.brackenwall_village", zone = "Dustwallow Marsh", subzone = "Brackenwall Village", tags = { "village", "camp" } },
	{ id = "moonglade.nighthaven", zone = "Moonglade", subzone = "Nighthaven", tags = { "village" } },
	{ id = "azshara.talrendis_point", zone = "Azshara", subzone = "Talrendis Point", tags = { "camp" } },
	{ id = "azshara.valormok", zone = "Azshara", subzone = "Valormok", tags = { "camp" } },
	{ id = "azshara.ruins_of_eldarath", zone = "Azshara", subzone = "Ruins of Eldarath", tags = { "ruin" } },
	{ id = "tanaris.gadgetzan", zone = "Tanaris", subzone = "Gadgetzan", tags = { "village" } },
	{ id = "tanaris.steamwheedle_port", zone = "Tanaris", subzone = "Steamwheedle Port", tags = { "village", "port" } },
	{ id = "feralas.feathermoon_stronghold", zone = "Feralas", subzone = "Feathermoon Stronghold", tags = { "keep", "coast" } },
	{ id = "feralas.camp_mojache", zone = "Feralas", subzone = "Camp Mojache", tags = { "camp" } },
})
