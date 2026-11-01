# 0025. Language packs and regional packs loaded on demand

- Status: Accepted
- Date: 2026-10-30 (phase R1 of the roadmap after the analyses A1 and A2, tracking issue #131; issues #85 and #101)

## Context

The archive will grow to roughly 100,000-300,000 texts per language (decision D1 in #130). [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md) made the selection and the in-memory format scale, but every text of both languages was still loaded at login: the base addon listed 53 data files, the texts of both languages among them. The owner decided the distribution (D4 in #130):

> One download, several folders, fully automatic after setup. Only the language chosen by the user is loaded, never the others. Regional packs are loaded and swapped automatically when the player changes zone, with no user action. Races, classes, weather and situations are conditions inside the loaded content and never require selecting a pack.

Facts and constraints:

- `C_AddOns.LoadAddOn` is in the API dump of the Forever client (build 70170); the global `LoadAddOn` is not. Nothing has been tried in the real client yet (#82): every call goes through Compat and must degrade.
- WoW cannot unload an addon. A folder loaded on demand stays loaded until `/reload`; only the data it registered can leave the engine's tables and be garbage-collected.
- The memory and time budget (D3) is decided after `/au prof` in the client (#81); until then the R1 working targets are hypotheses.
- Authoring must not get harder, and the coming SQLite exporter (#87) must be able to produce the same files.

## Decision

1. **Folders of the download** (all LoadOnDemand except the base, all `## Dependencies: AzerothUnspoken`):
   - `AzerothUnspoken`: engine, every rule of the base content (`Data/Registry*.lua`), frames, vocabulary, places, dialogue and arc structures, and the **interface strings of every language** (small: a language change must show its windows at once).
   - `AzerothUnspoken_enUS`, `AzerothUnspoken_itIT`: the phrase texts of one language (`## X-AzerothUnspoken-Language: enUS`). The files are the former `Data/enUS/*.lua` and `Data/itIT/*.lua`, moved as they were: the only change is the first line, `local NS = AzerothUnspoken`, because a LoadOnDemand addon has its own `...`.
   - A **region** is a continent token of `ctx.place.continent` (`kalimdor`, `eastern`). It has a folder of rules, `AzerothUnspoken_Kalimdor` (`## X-AzerothUnspoken-Region: kalimdor`), and one folder of texts per language, `AzerothUnspoken_Kalimdor_enUS` (region and language). The rules of a region are written once, like the base rules, and the texts once per language, like the base texts.
   - The first regional split moves the 17 exploration rules that ask for a named zone (`zone = "Durotar"`...) into `kalimdor_exploration` (11) and `eastern_exploration` (6), with the same ids and texts. Generic content stays in the base and language folders.
2. **The folders are the source of truth**, not the output of a build step. The data files keep the same API and the same shape (rules in one file, texts per language in others); only their folder says when they are loaded. A generator would have added a second copy of every text to keep in sync and to check in CI, for no gain while the content is written by hand. The SQLite exporter (#87) will write exactly these folders and files, so its acceptance test stays "export of the current database identical to today's packs".
3. **Language** (`Core/Packs.lua`, module `packs`). At `ADDON_LOADED` of the base, after the configuration, the module loads the folders of the chosen language only, with `C_AddOns.LoadAddOn` through Compat (`IsAddOnLoaded` first: a folder already loaded counts). If the folder is missing or the client refuses it (`MISSING`, `DISABLED`, `CORRUPT`, `INTERFACE_VERSION`..., `NO_API` without the function, `ERROR` if the call raises), it prints the folder and the reason once, keeps it in `/au debug`, and loads English instead; with no language at all, the narrator stays silent and the rest works. `NS:TextLang()` is the language of the phrase texts: the chosen one when its texts are in memory, otherwise the one loaded at start-up. The selection, `/au stats` and the settings use it; the interface uses `NS:Lang()`.
   - A **change of language** switches the interface at once. The phrases follow at the next reload: the settings, `/au language` and the wizard explain it, and offer **Reload now** (a StaticPopup through Compat, and a button in the settings panel while the reload is pending). Reloading is a player action and happens only on a click. Until then the phrases stay in the previous language, so the narrator never goes silent because of a change.
   - The validator checks only the languages whose texts are in memory (`Packs:TextsLoaded`), so `/au validate` in game does not report the other language as missing; offline, the tests load both and check both.
4. **Regions** (`Core/Packs.lua`).
   - A regional folder does not register its tables when it is loaded: it registers **builders**, `AzerothUnspoken:RegisterRegionalPack(region, fn)` (fn returns a v2 pack) and `AzerothUnspoken:RegisterRegionalTexts(region, lang, packId, fn)` (fn returns `{ [id] = variants }`, attributed to the rules' pack so the variants stay compact strings).
   - On `WORLD_ENTER` and `ZONE_ENTER` the module reads the continent (`Place:Read`). If it changed, it **drops** the regions it is not in (`Engine:DropPack` removes their rules, texts, frames and vocabulary from `byId`, `byEvent`, the selection index, `frames` and `vocab`) and **enters** the new one: `LoadAddOn` of its rules folder and of the texts folder of the phrase language (once per session), then it runs the builders. Back in a region already visited, the builders run again with no new `LoadAddOn`.
   - **Never in combat**: in combat (`InCombatLockdown` or `UnitAffectingCombat`) the step waits for `PLAYER_REGEN_ENABLED`. The language step waits the same way after a `/reload` in combat.
   - An unknown place (an instance outside the data, a client without map APIs) keeps what is built. A missing regional folder is not an error: the base content covers every place.
   - **No user action, ever**: no pack selection, no prompt. Races, classes, weather and situations remain conditions inside the content.
5. **Granularity: the continent.** Measured offline with `Tests/bench_packs.py` (lupa, one PC; English only, two variants per rule):

   | Synthetic regional archive | One region built | After visiting every region, dropping | Keeping every region | Build per region change |
   |---|---|---|---|---|
   | 8 regions x 5,000 rules | 8.0 MB | 26.2 MB | 64.3 MB | about 0.2 s |
   | 2 regions x 20,000 rules | 32.6 MB | 42.6 MB | 64.3 MB | about 0.9 s |

   (MB over the login memory of 3.9 MB; `LoadAddOn` calls: 2 per region, only on the first visit.)
   - A dropped region leaves in memory the code of its builders, with the strings (texts, ids, condition values) as constants of the compiled chunk: about 2.6 MB per 5,000 rules, a third of a built region. The tables, two thirds, are freed. So over a long session the memory is "the region you are in + about a third of every region visited", whatever the granularity; a finer granularity only makes the built part smaller.
   - The continent wins today: a change of continent always passes a loading screen (boat, zeppelin, portal, hearthstone), which hides the build (0.9 s offline at 20,000 rules), and it means at most four `LoadAddOn` calls in a session (two continents, rules and texts). A zone group would be crossed on foot, with no loading screen, and its build would need to be spread over several frames.
   - The region key is just a string: zone groups can come later (a map from zone to group, and the build spread over frames) when the archive per continent outgrows the budget D3, with no change to the folder format.
   - *Amendment (#166, third review).* A failure that cannot change during a session (`MISSING`, `DISABLED`, `CORRUPT`, `INTERFACE_VERSION`, the `DEP_*` reasons, `NO_API`) is remembered in `Packs.status`/`Packs.reason` and the folder is not tried again on the next region change (ten changes made 23 `LoadAddOn` calls, now one); any other failure, such as an error raised by the call, gets `Packs.MAX_ATTEMPTS` = 3 tries in all. A folder that loads but registers nothing is **reported once** (`packs_empty`, and `/au packs` says "loaded, but gave no content"): `Packs:WatchRegistrations` wraps the `NS:Add*` and `NS:Register*` functions once at start-up and counts calls, so a load that did not call any of them is empty. Enabling a disabled folder or copying a missing one still needs `/reload`.
6. **External packs** declare what they hold in their `.toc` with `## X-AzerothUnspoken-Language` and `## X-AzerothUnspoken-Region`; `Packs:Discover` lists installed addons (`C_AddOns.GetNumAddOns`, `GetAddOnInfo`, `GetAddOnMetadata`, through Compat) and adds them to the built-in list, which works even without those APIs. A pack that is not LoadOnDemand keeps working as before.
7. **Anti-repetition memory.** At login (`Engine:DecayMemory`) the ids of a regional pack not built yet are unknown: their uses decay like the others and leave under 0.2 (a few logins) or with the cap; their last use is kept at most `Engine.DORMANT_LAST_MAX` (30 days; the longest cooldown of the content is seven days). No schema change.
8. **Tools.** `tools/install_addon.py` installs every `AzerothUnspoken*` folder with a `.toc`. The tests install the folders in the mock (`INSTALL_PACKS`, `C_AddOns` with `LoadAddOn`, `IsAddOnLoaded`, `DoesAddOnExist`, metadata) either all loaded and built (`ActivateAll`: the validator and the selection see the whole database, as before) or LoadOnDemand, loaded by `Core/Packs.lua` as in the client (`Tests/TestPacks.lua`). The docs rule of the PRs covers every `AzerothUnspoken_*` folder.

## Alternatives considered

- **A build step that generates the folders** from the current `Data/` tree. It keeps the old paths, but doubles every text in the repository (source and output), needs a CI check that both agree, and would be replaced by the exporter of #87 anyway.
- **One regional folder per region with every language inside**, each language behind a function. Fewer folders, but the other languages would be compiled and kept as constants: against D4 ("never the others").
- **Regional rules inside the base, only texts regional.** No duplicated folders, but the rule records are most of the memory per entry (ADR 0024): the gain would be small.
- **Registering regional packs directly when loaded, and dropping them on leave.** Frees everything, but a region left could never come back without `/reload`, because a loaded addon cannot run again. The builders cost a third of a region and make the return work.
- **Zone or zone-group granularity now.** Smaller built regions, but more `LoadAddOn` calls and a build while walking; see the numbers above. Kept as the next step if D3 needs it.
- **Switching the phrase language without reload** (loading the new folder at once). Possible, but the old language would stay in memory until `/reload`, and coming back to it would need a reload anyway: simpler and more honest to ask for the reload.

## Consequences

- Positive:
  - Only the chosen language is in memory: with today's database 3.91 MB instead of 4.33 MB (the base without any text is 3.49 MB); at 50,000 synthetic entries 75.6 MB instead of 94.1 MB (`Tests/bench_scale.py --packs lazy --langs enUS`). The SavedVariables are unchanged.
  - Regional content costs memory only where the character is; over a long session that visits eight regions the projection is 26 MB over login instead of 64 MB.
  - The format and the authoring of data files do not change; the exporter of #87 has a clear target.
- Negative or costs:
  - More folders to copy (11 with the example and the verses). The wiki and the in-game messages explain it; a missing folder degrades with a message, never a Lua error.
  - A change of language needs a reload for the phrases.
  - A dropped region still costs about a third of its built size (its builders), and a folder loaded once stays loaded until `/reload`.
  - The load happens at login and on a change of continent; the in-game cost of `LoadAddOn` and of the build is not measured yet (#81, `/au prof`; steps in `docs/G1_checklist.md`).
  - All numbers are projections from lupa on one PC; the 40 MB target of R1 at 50,000 entries is still not met with one language (75.6 MB), see #138.

## References

- Issues #85, #101 (this ADR), #130 (D1, D3, D4), #131 (roadmap), #87 (exporter), #81 and #82 (in-game measurements and API probes), #138 (memory follow-up).
- `Core/Packs.lua`, `Engine/PhraseRegistry.lua` (`Engine:DropPack`), `Engine/WeightedSelector.lua` (`DecayMemory`, `DORMANT_LAST_MAX`), `Engine/Validator.lua` (`DeclaredLangs`), `Core/Bootstrap.lua` (`NS:TextLang`), `UI/SettingsFrame.lua`, `UI/Commands.lua`, `UI/Wizard.lua`, `Core/Profiler.lua` (memory of the loaded folders).
- `Tests/TestPacks.lua`, `Tests/bench_packs.py`, `Tests/bench_scale.py --packs`, `Tests/MockWoWAPI.lua` (`INSTALL_PACKS`, `C_AddOns`), `tools/install_addon.py`, `tools/check_pr_docs.py`.
- [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md) (index and compact format), [ADR 0012](0012-languages-chosen-by-user.md) (languages chosen by the user), [ADR 0005](0005-compat-secret-values-and-defensive-events.md) (Compat), [ADR 0001](0001-engine-and-narrative-database-separated.md) (engine and database separated).
