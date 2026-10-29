# Technical references for WoW Forever

Sources pointed out by the user on 2026-10-29, assessed for the project.
The GDD rules (§13, §22) still apply: the final source is always the installed client (build 1.60.1.70658).

## Main source: Atraeau/WoW-Addons

- Repository: https://github.com/Atraeau/WoW-Addons. Browser: https://atraeau.github.io/WoW-Addons/
- The dump was extracted **from the Forever client**, with `APIDocumentation`:
  - build **70170**, Interface 16001, version 1.60.1, exported on 2026-10-01;
  - 6,598 functions, 1,806 events, 797 types.
- The build is slightly older than the user's (70658), so there may be minor differences.
- **Local copy**, next to our repository and not inside it: `..\WoW-Addons`, cloned with `--depth 1`.
  - The repository does not declare a license: **do not copy its files into our repository**. It is only consulted.
  - It is downloaded material: it is read, its scripts are not executed.
- Useful files:
  - `types/WowForeverAPI.lua`: definitions for the language server. `.luarc.json` loads them from `../WoW-Addons/types`, for autocompletion in WebStorm;
  - `docs/api.json`: machine-readable list with `meta`, `systems` (functions, events with payload, tables) and `globals` (FrameXML global functions);
  - `docs/api/`: the same documentation in Markdown;
  - `src/WowApiExport`: addon that regenerates the dump. In the future the user could use it for an exact dump of their own build 70658: `/apiexport`, then `/reload`.
- Absence from the dump ≠ absence from the client. Functions defined in Lua by FrameXML (for example `Settings.*`, `InterfaceOptions_AddCategory`) do not appear in `APIDocumentation`. For those, Compat and the in-game test apply.

### Checks already done on the dump (2026-10-29)

| Item | Result |
|---|---|
| `UnitName`, `UnitHealth`, `UnitHealthMax`, `UnitGUID`, `UnitCreatureType`, `UnitClassification`, `UnitSex`, `UnitLevel`, `UnitExists`, `UnitIsPlayer`, `UnitCanAttack`, `UnitIsDead(OrGhost)`, `GetRealZoneText`, `GetSubZoneText`, `IsSwimming`, `GetLocale`, `C_Spell.GetSpellName`, `C_ChatInfo.SendChatMessage`, `C_ChatInfo.SendAddonMessage`, `C_ChatInfo.RegisterAddonMessagePrefix`, `C_Map.GetBestMapForUnit`, `C_GossipInfo.GetOptions`, `issecretvalue` | present |
| `SendChatMessage`, `hooksecurefunc`, `BuyMerchantItem` | present among the globals |
| `GetSpellInfo` | **absent**: use `C_Spell.GetSpellName` and the other `C_Spell.*` functions |
| `CombatLogGetCurrentEventInfo` | **absent**: do not base anything on the combat log (GDD §2.3) |
| `C_Secrets.HasSecretRestrictions`, `C_Secrets.ShouldAurasBeSecret`, `issecrettable`, `hasanysecretvalues`, `canaccesssecrets` | present: Compat uses them to know whether secret values are active |
| `UnitHealth` | the parameter is of type `UnitTokenPvPRestrictedForAddOns`: for some units the value may be limited |
| Events `UNIT_SPELLCAST_SENT/SUCCEEDED`, `PLAYER_REGEN_DISABLED/ENABLED`, `PLAYER_DEAD`, `PLAYER_ALIVE`, `PLAYER_UNGHOST`, `PLAYER_LEVEL_UP`, `ZONE_CHANGED_NEW_AREA`, `UNIT_HEALTH`, `GOSSIP_SHOW`, `MERCHANT_SHOW`, `QUEST_DETAIL`, `QUEST_COMPLETE`, `QUEST_ACCEPTED`, `QUEST_TURNED_IN`, `CHAT_MSG_ADDON` | present, with payloads consistent with the code |

## Other sources

| Source | Use in the project |
|---|---|
| https://warcraft.wiki.gg/wiki/World_of_Warcraft_API | General documentation of APIs and events, useful for semantics. It mainly covers retail: differences must be checked against the Forever dump. |
| https://foreverdb.net/developers | Read-only JSON API on Forever data: quests with the NPC who gives and receives them, vendors with position, zones with `uiMapId`, objects, spells, dungeons. Useful **only during development** (S6b, S8) to prepare local registries of NPCs and places. The in-game addon stays offline. It requires an API key approved by ForeverDB, which the user must ask for, and has limits of 60 requests per minute and 10,000 per day. It is mandatory to **credit ForeverDB.net with a visible link** in the credits, and it is forbidden to present the data as our own. |
| https://wowforeverwiki.org/addons | Overview for the community. In beta `WOW_PROJECT_ID` could be 1 (Mainline) and health values turned out to be secret: so `WOW_PROJECT_ID` is not trusted for the compatibility branch, and targeted checks are made with Compat. |
| https://www.wowhead.com/guide/comprehensive-beginners-guide-for-wow-addon-coding-in-lua-5338 | General introductory guide. |
| https://www.curseforge.com/wow/addons/luaworkbench | In-game Lua console and editor. Useful to the user in the G1–G4 tests for running quick checks. To be installed by hand, optional. |
| https://www.curseforge.com/wow/addons/toolbox | In-game developer tools. Optional, for the tests. |
