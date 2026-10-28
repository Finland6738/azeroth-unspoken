# Riferimenti tecnici per WoW Forever

Fonti segnalate dall'utente il 2026-10-29, valutate per il progetto.
Restano valide le regole del GDD (§13, §22): la fonte finale è sempre il client installato (build 1.60.1.70658).

## Fonte principale: Atraeau/WoW-Addons

- Repository: https://github.com/Atraeau/WoW-Addons. Navigatore: https://atraeau.github.io/WoW-Addons/
- Il dump è stato estratto **dal client Forever**, con `APIDocumentation`:
  - build **70170**, Interface 16001, versione 1.60.1, esportato il 2026-10-01;
  - 6.598 funzioni, 1.806 eventi, 797 tipi.
- Il build è poco più vecchio di quello dell'utente (70658), quindi possono esserci differenze minime.
- **Copia locale**, accanto al nostro repository e non dentro: `E:\repository\WoW-Addons`, clonata con `--depth 1`.
  - Il repository non dichiara una licenza: **non copiarne i file nel nostro repository**. Si consulta e basta.
  - È materiale scaricato: si legge, non si eseguono i suoi script.
- File utili:
  - `types/WowForeverAPI.lua`: definizioni per il language server. `.luarc.json` le carica da `../WoW-Addons/types`, per l'autocompletamento in WebStorm;
  - `docs/api.json`: elenco leggibile da macchina con `meta`, `systems` (funzioni, eventi con payload, tabelle) e `globals` (funzioni globali di FrameXML);
  - `docs/api/`: la stessa documentazione in Markdown;
  - `src/WowApiExport`: addon che rigenera il dump. In futuro l'utente potrebbe usarlo per un dump esatto del proprio build 70658: `/apiexport`, poi `/reload`.
- Assenza nel dump ≠ assenza nel client. Le funzioni definite in Lua da FrameXML (ad esempio `Settings.*`, `InterfaceOptions_AddCategory`) non compaiono in `APIDocumentation`. Per quelle valgono Compat e la prova in gioco.

### Verifiche già fatte sul dump (2026-10-29)

| Voce | Esito |
|---|---|
| `UnitName`, `UnitHealth`, `UnitHealthMax`, `UnitGUID`, `UnitCreatureType`, `UnitClassification`, `UnitSex`, `UnitLevel`, `UnitExists`, `UnitIsPlayer`, `UnitCanAttack`, `UnitIsDead(OrGhost)`, `GetRealZoneText`, `GetSubZoneText`, `IsSwimming`, `GetLocale`, `C_Spell.GetSpellName`, `C_ChatInfo.SendChatMessage`, `C_ChatInfo.SendAddonMessage`, `C_ChatInfo.RegisterAddonMessagePrefix`, `C_Map.GetBestMapForUnit`, `C_GossipInfo.GetOptions`, `issecretvalue` | presenti |
| `SendChatMessage`, `hooksecurefunc`, `BuyMerchantItem` | presenti tra le globali |
| `GetSpellInfo` | **assente**: usare `C_Spell.GetSpellName` e le altre funzioni `C_Spell.*` |
| `CombatLogGetCurrentEventInfo` | **assente**: non basare nulla sul log di combattimento (GDD §2.3) |
| `C_Secrets.HasSecretRestrictions`, `C_Secrets.ShouldAurasBeSecret`, `issecrettable`, `hasanysecretvalues`, `canaccesssecrets` | presenti: Compat li usa per sapere se i valori segreti sono attivi |
| `UnitHealth` | il parametro è di tipo `UnitTokenPvPRestrictedForAddOns`: per alcune unità il valore può essere limitato |
| Eventi `UNIT_SPELLCAST_SENT/SUCCEEDED`, `PLAYER_REGEN_DISABLED/ENABLED`, `PLAYER_DEAD`, `PLAYER_ALIVE`, `PLAYER_UNGHOST`, `PLAYER_LEVEL_UP`, `ZONE_CHANGED_NEW_AREA`, `UNIT_HEALTH`, `GOSSIP_SHOW`, `MERCHANT_SHOW`, `QUEST_DETAIL`, `QUEST_COMPLETE`, `QUEST_ACCEPTED`, `QUEST_TURNED_IN`, `CHAT_MSG_ADDON` | presenti, con payload coerenti con il codice |

## Altre fonti

| Fonte | Uso nel progetto |
|---|---|
| https://warcraft.wiki.gg/wiki/World_of_Warcraft_API | Documentazione generale di API ed eventi, utile per la semantica. Riguarda soprattutto il retail: le differenze vanno controllate sul dump di Forever. |
| https://foreverdb.net/developers | API JSON di sola lettura su dati di Forever: quest con l'NPC che le dà e le consegna, venditori con posizione, zone con `uiMapId`, oggetti, incantesimi, dungeon. Utile **solo durante lo sviluppo** (S6b, S8) per preparare registri locali di NPC e luoghi. L'addon in gioco resta offline. Servono una chiave API approvata da ForeverDB, che deve chiedere l'utente, e i limiti di 60 richieste al minuto e 10.000 al giorno. Obbligo di **citare ForeverDB.net con un link visibile** nei crediti, e divieto di presentare i dati come propri. |
| https://wowforeverwiki.org/addons | Panoramica per la comunità. In beta `WOW_PROJECT_ID` poteva valere 1 (Mainline) e i valori di salute risultavano segreti: quindi non ci si fida di `WOW_PROJECT_ID` per il ramo di compatibilità, si fanno controlli puntuali con Compat. |
| https://www.wowhead.com/guide/comprehensive-beginners-guide-for-wow-addon-coding-in-lua-5338 | Guida introduttiva generale. |
| https://www.curseforge.com/wow/addons/luaworkbench | Console ed editor Lua dentro il gioco. Utile all'utente nelle prove G1–G4 per eseguire controlli rapidi. Da installare a mano, è facoltativa. |
| https://www.curseforge.com/wow/addons/toolbox | Strumenti per sviluppatori dentro il gioco. Facoltativa, per le prove. |
