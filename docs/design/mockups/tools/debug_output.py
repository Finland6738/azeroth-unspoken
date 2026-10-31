"""The lines of /au debug as Core/Diagnostics.lua Diagnostics:Report() builds them (short form, not "full").

The order, labels and colours follow the code; the numbers, the client build and the session values are illustrative
(a fresh login on a classic-era client without Total RP 3; nothing has run in the real client yet).
"""
OK, RESTRICTED, MISSING = "|cff40ff40", "|cffffd040", "|cffff8040"   # STATE_COLOR

DEBUG_LINES = [
    "== Azeroth Unspoken 0.1.0: diagnostics ==",
    "Client 1.x.y (build 00000, Jan 1 2026), Interface 16001, WOW_PROJECT_ID 2, Camelot false, Forever true, locale enUS",
    "Configuration: schema 7, locale en, intensity 50, proseDepth literary, paused false",
    "Chat Gateway: mode PRIVATE (effective PRIVATE), autoPublicSay false, channel auto, pending nil, sent 0 "
    "(last minute 0, auto 0), blocked by the client 0, last refusal nil",
    "Narrative Director: budget combat 0/4, exploration 1/3, general 0/2, life 0/2, reflection 1/2, social 0/2, "
    "spellcraft 0/2; last zone",
    "Profile: PickEntry p50 0.12 / p95 0.40 ms; BuildContext p50 0.05 / p95 0.10 ms; memory 3900 KB; Director 2 spoken, "
    "5 silent (/au prof for details)",
    "Living Memory: 14 memories (2 permanent), 9 places, 3 flags; session 4; in Duskwood",
    "Emotion: on; calm; dominant -; last cause -; saved -",
    "Relationships: 9 NPCs, 4 players, 3 candidates; npcAuto true, attraction false, autoRegister false; proximity false "
    "(0 proposed, 0 secret), shared list off",
    "NPC Alive: idle; last -; scripts 6",
    "Story Arcs: 3 arcs (4 registered), active 1/2, available 1, resolved 1, owed 0; last -",
    "World: weather unknown, day nil, resting false, quests 7, flight false, landmarks 3",
    "Capabilities: 71 AVAILABLE, 1 RESTRICTED, 18 MISSING",
    f"  [client] {OK}AVAILABLE|r: forever",
    f"  [api] {OK}AVAILABLE|r: C_Map.GetBestMapForUnit, C_Map.GetMapInfo, C_Timer.After, C_Timer.NewTicker, GetBuildInfo, "
    "GetGameTime, GetInstanceInfo, GetRealZoneText, GetSubZoneText, IsInInstance, IsResting, OpenChat, SendChatMessage, "
    "SettingsPanel, UnitGUID, UnitReaction, hooksecurefunc, ...",
    f"  [api] {MISSING}MISSING|r: C_ChatInfo.InChatMessagingLockdown, C_DateAndTime.IsDayTime, C_Weather.GetCurrentWeather, "
    "issecretvalue, ...",
    f"  [event] {OK}AVAILABLE|r: ADDON_ACTION_BLOCKED, GROUP_ROSTER_UPDATE, PLAYER_DEAD, PLAYER_ENTERING_WORLD, "
    "PLAYER_LEVEL_UP, PLAYER_REGEN_DISABLED, PLAYER_REGEN_ENABLED, PLAYER_TARGET_CHANGED, ZONE_CHANGED, ZONE_CHANGED_NEW_AREA, ...",
    f"  [event] {MISSING}MISSING|r: WEATHER_CHANGED",
    f"  [value] {OK}AVAILABLE|r: mapID, player.health, player.healthMax, player.level, subzone, zone",
    f"  [value] {MISSING}MISSING|r: target.identity",
    f"  [restriction] {MISSING}MISSING|r: ChallengeMode, Combat, Encounter, Map, PvPMatch",
    f"  [chat] {OK}AVAILABLE|r: lockdown, send",
    f"  [chat] {RESTRICTED}RESTRICTED|r: say.openWorld",
    f"  [integration] {MISSING}MISSING|r: totalRP3, totalRP3:traits",
    "Events: 212 published, 9 duplicates dropped, 0 expired in queue",
    "  WoW: PLAYER_ENTERING_WORLD 1, PLAYER_TARGET_CHANGED 18, UNIT_HEALTH 40, ZONE_CHANGED 4, ZONE_CHANGED_NEW_AREA 2",
    "  1234.5 WORLD_ENTER [PLAYER_ENTERING_WORLD] isLogin=true isReload=false",
    "  1236.0 ZONE_ENTER [ZONE_CHANGED_NEW_AREA] subzone=Raven Hill zone=Duskwood",
    "  1240.2 TARGET_CHANGED [PLAYER_TARGET_CHANGED] name=<nascosto>",
    "No caught errors.",
    "Lines: 4182 in the chosen language, from 9 packs.",
]
