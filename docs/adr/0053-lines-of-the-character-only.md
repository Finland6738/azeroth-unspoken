# 0053. The lines of the character only: class and race lines of other characters are never registered

- Status: Accepted (offline tests and projections; **nothing of it has run in the client**: the checks are in `docs/G1_checklist.en.md` and `docs/G1_checklist.md`, section C0f; owner decision of 2026-11-02 to finish the development without in-game test gates)
- Date: 2026-11-06 (phase C0f of the content-scale plan, issue #138; follows the proposal of [ADR 0052](0052-a-bounded-pick.md) §4; [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md), [ADR 0048](0048-column-store-and-regional-packs-by-area.md), [ADR 0049](0049-compact-area-sources-and-a-change-spread-over-frames.md))

## Context

C0e ([ADR 0052](0052-a-bounded-pick.md)) made the cost of a pick flat, and its projection showed that memory is now the limit at the random need of [ADR 0050](0050-need-model-near-duplicates-and-content-waves.md) (about 270,000 texts per language, about 89 waves still to write): about 59 MB at login and 74 MB after visiting every area, in one language, against the working target of 40 MB of ADR 0024. Most of it is the **resident** lines, those registered at login and always in memory (generic, situation, class and race pools; the place pools are in the area packs of ADR 0048).

In the need model (`docs/content/need.json`, random need), the class pools are 74,560 texts per language and the race pools 56,360, of 164,030 resident texts: **45.5% and 34.4%**, about 80% together. A character needs only one class of nine and one race of eight. Classes and races are not files: a line is a class or race line by its conditions (`conditions = { class = "WARRIOR" }`, `race = "Orc"`), written by every wave in the base packs (`base_classes`, `base_social`, `base_world`...) and in regional packs too.

Two kinds of condition name a class or a race:

- **the player's**: `class` and `race` at the top level of the conditions, matched against `ctx.class` and `ctx.race`, which `NS:BuildContext` reads from `UnitClass("player")` and `UnitRace("player")` and nothing else overrides (no caller of `BuildContext` passes them);
- **another unit's**: `targetClass`, `targetRace` (the target player), `other = { class, race }` (the interlocutor), `{otherclass}`, `{otherrace}`: a dwarf greeted by an orc (`ctx.greet.dwarf`), the class of a target. These must stay.

A character never changes class or race during a session, and logging in with another character reloads the interface: a new Lua state, which loads the addon again.

## Decision

### 1. A rule that can never be said by this character is not registered (`Engine/PhraseRegistry.lua`)

1. At the first rule registered (the base data files run while the addon loads), `Engine:ReadOwn` reads the class and race tokens of the character (the second value of `UnitClass("player")` and `UnitRace("player")`, lower case; a secret or missing value is not read).
2. `Engine:AddEntry` does not register a rule whose conditions ask, **at their top level**, a `class` or a `race` whose plain values (a string or a list of strings, as the index of ADR 0024 reads them) all differ from the character's (`Engine:NotOwn`): `{ class = "MAGE" }` for a warrior, `{ race = { "Human", "Dwarf" } }` for an orc. Everything else is registered as before: a list that includes the character's value, a class or race inside `not`, `any`, `other`, the target's class or race, a condition written in another form, and every rule when neither the class nor the race can be read.
3. Its texts are dropped when they come (`Engine:AddTexts`): the ids not registered are kept per pack (`Engine.skipped`) until no text for them can come any more. For the base content and the packs always loaded that is the first `WORLD_ENTER` after the language step (`Packs:Settle`: every addon has loaded by then, an external pack that adds texts to base lines included); for a regional pack, when the pack is freed (`Engine:FreePack`, the area left). At 270,000 texts per language that is about 47,000 ids for a few seconds at login. Texts that came before their rule (an external pack loaded first) are dropped from the pending texts when the rule's pack registers.
4. `Engine.ownStats` counts the rules and texts left out; `/au packs` prints them with the class and race.

The rule is applied in the engine, to every pack, because the condition is what makes a line a class or race line: the waves, the archive and external packs change nothing. Monologues whose part is left out cannot be said, as before (the part's condition would fail); the Songbook, the Journal and the Gateway already handle an id that is not in the loaded packs.

### 2. Not separate folders or packs by class and race

WoW Forever (Interface 16001) supports load-on-demand folders, and the addon uses them for the languages and the regions (`C_AddOns.LoadAddOn`, ADR 0025 and 0048). They are not the right tool here:

- **The resident result is the same.** WoW cannot unload a folder, and a data file runs once: what decides the memory is what stays registered. The lines of other classes and races are compiled once while their file runs and are garbage right after; only the lines of the character stay.
- **The download would grow by 17 folders of rules and 34 of texts** (nine classes, eight races, two languages), all in the AddOns list, or the base files would need sources keyed by class and race, written and read by the archive (`tools/archive/packfiles.py`, its round trip) and by every wave: a split by file repeats in the layout what the condition already says, and a line written with a class in a regional or external pack would still be resident.
- What a split would save is the **compilation** of the other lines at login (below: the memory right after the resident content, with the collector stopped). In the client the base files are read one at a time (none over 20,000 entries since C0d) and the incremental collector runs between them, so it is a transient of the loading screen. If the in-game numbers (G1 C0f) show it matters, the class and race lines of a base file can become sources keyed by class and race (`RegisterRegionalPack`'s form of ADR 0049, keyed by `class:warrior`), skipped before they are compiled; that is a packaging change on top of this one, not instead of it.

### 3. Development installs keep every line

The tests, the tools and the benches read the whole database (the validator, the coverage, the archive, the traces cycle through characters). They set the global `AZEROTHUNSPOKEN_ALL_LINES` before the addon loads (`Tests/MockWoWAPI.lua` sets it); `Engine.OWN_ONLY` is then false and every rule is registered, as before. The client never sets it. `run_tests.load_addon(own=(class, race))`, `bench_scale.load_addon(own=...)` and `trace_picks.py --character CLASS/Race --own` load one character as the client does.

### 4. Measures (lupa, one PC; memory exact)

**Picks unchanged.** `Tests/trace_picks.py --character X` and `--character X --own` print the same 3,000 picks, byte for byte, for a Warrior Orc (with `--exact` too), a Mage Human and a Priest Scourge: a line left out can never be picked for that character, and the groups of the index its context opens hold the same rules. The tier shares (50/35/15), the specificity preference, the bounded pick of C0e and the anti-repetition do not change; the existing selection and distribution tests run as before (on the whole database).

**Tests** (`Tests/run_tests.py`, "LE FRASI DEL PERSONAGGIO"): nine characters that cover every class and race, each loaded as the client loads it (one language, its starting area): no line of another class or race is resident; every line the character can say is loaded, with all its texts (compared with the whole database); the lines about another unit's class or race stay; the counts of `/au packs` match; no text waits for a rule; the validator finds what it finds with every line; less memory. A warrior orc has no mage or human line, and the greeting for a dwarf fires before a dwarf. A relog to a mage human loads the mage and human lines and no warrior or orc line, speaks without errors with the account's saved data, and the return to the warrior orc loads the same lines as its first session.

**Memory**, `Tests/bench_scale.py --areas --texts 0,100000,270000 --layout area --own both` (one language; folders by area; the resident clones take the class and race pools of the need model, 45.5% and 34.4%, weighted by class and race, the area clones none; a Warrior Orc; `--own all` gives the numbers before this change on the same synthetic content):

| Texts per language | Before (every line) → C0f (the character's) | At login | With the first area | At most, after every area | Highest during a change (collector stopped) |
|---|---|---|---|---|---|
| today (15,494) | 874 rules left out | 9.9 → 9.3 MB | 10.4 → 9.8 MB | 11.0 → 10.4 MB | 20.0 → 19.4 MB |
| 100,000 (24,771 resident entries) | 7,246 of them registered | 26.6 → **15.0 MB** | 27.5 → 16.1 MB | 33.5 → **21.2 MB** | 44.7 → 32.4 MB |
| 270,000 (66,881 resident entries) | 19,577 of them registered | 59.5 → **23.2 MB** | 61.2 → 24.8 MB | 74.6 → **38.4 MB** | 91.2 → 55.0 MB |

- **The target of about 40 MB at 270,000 texts per language is met**: 38.4 MB at most after visiting every area of both continents, 23.2 MB at login. ADR 0052 estimated about 40 MB.
- The memory right after the resident content is registered, with the collector stopped (the synthetic content is one chunk of 66,881 entries here): 449.8 → 290.5 MB at 270,000, 169.4 → 112.7 MB at 100,000. That is the compilation of §2, garbage at once; the client's files are smaller and its collector runs between them.
- Picks in the last area cost the same (39.0 thousand instructions on average, p95 83.9, at 270,000; 36.7 and 75.7 at 100,000), and so does a change of area (about 140 ms of addon time over 36 frames of 3.8 ms on average at 270,000).
- With **folders by continent** (`--layout continent`, the layout of the download today), the first visit of a continent reads every area's source at once: at 270,000 texts per language 59.4 → 23.1 MB at login, 71.6 → **35.2 MB** with the first area (ADR 0052's 70.8 MB was this layout), 81.0 → **44.8 MB** at most after every area, 115.2 → 78.9 MB at the highest during a change with the collector stopped; at 100,000, 26.5 → 14.9, 31.3 → 19.9, 36.1 → 23.8 and 54.5 → 42.2 MB. Under 40 MB at 270,000 needs the folders split by area, as ADR 0049 §4 already plans past about 10,000 regional entries per continent.

**What is left at 270,000** (38.4 MB at most): about 9.3 MB the addon and today's lines; about 13.9 MB the resident lines of the character (19,577 entries, about 710 bytes each: generic, situation pools, its class and its race); about 13.7 MB the encoded sources of the areas visited (the bound `Packs.KEEP_KB` is 32 MB, not reached); about 1.6 MB the area built. What would cut them, **not done here**:

1. **The sources of visited areas** (13.7 MB, growing with the areas to the 32 MB bound): a lower `Packs.KEEP_KB` (an area released comes back only after `/reload`), or sources released and read again from the folder's own files, which WoW does not allow (ADR 0049).
2. **The resident lines of the character** (13.9 MB): the faction lines the same way (`faction` of the player: 5,106 texts per language in the need model, about 3% of the resident), the level-band lines loaded for the current band only (4,811 texts; a band changes in a session, so they would be built like an area), and the texts kept as encoded strings until a pick reads them (ADR 0049's codec, at the cost of a decode per pick).
3. **The addon and today's base lines** (9.3 MB): the base lines are measured above; the code is not a target.

## Alternatives considered

- **Load-on-demand folders, or sources keyed by class and race** (§2): the same memory once loaded, more folders or a change to the archive and every wave, and lines with a class in other packs still resident. Kept as a possible packaging step if the transient at login matters in the client.
- **Registering every line and keeping the others out of the index** (the index already has class and race groups): no memory saved, the point of this change.
- **Reading the class and race at `PLAYER_LOGIN`** and dropping the other lines then: the column store cannot drop single rules from the middle of the ords cheaply (packs keep ranges, ADR 0048), and the base content would be registered whole first. The class and race are read at the first rule instead, and if the client does not give them then, every line is registered (as before) and `/au packs` does not show the line.
- **Filtering the faction too.** Small (about 3% of the resident texts) and listed above with the other next steps.

## Consequences

- Positive: at 270,000 texts per language the addon fits the 40 MB working target with folders by area (38.4 MB at most, 23.2 MB at login, against 74.6 and 59.5; with today's continent folders 44.8 MB at most, against 81.0); at 100,000, 21.2 MB at most. The picks of a character are the same, byte for byte. Nothing changes for the waves, the archive, the need model or external packs: the condition decides.
- Negative or costs:
  - `Engine.byId[id]` is `nil` for a line of another class or race in the client; code that looks up rule ids from saved data or another pack must handle a missing rule (the systems of the addon already do). PACK_FORMAT.md says so.
  - The lines of other classes and races are still compiled once at login and dropped (§2).
  - The in-game validator (`/au validate`) and `/au stats` see only the character's lines; the offline checks see all of them.
  - The offline tools must set `AZEROTHUNSPOKEN_ALL_LINES` to read the whole database (the mock does).
  - It relies on `UnitClass("player")` and `UnitRace("player")` answering while the addon loads, which is expected (the player exists once a character is chosen) but untested in WoW Forever: `docs/G1_checklist.en.md` (and `.md`), section C0f. If they do not answer, nothing is saved and nothing breaks.

## References

- Issue #138, PR #251 (C0e), [ADR 0052](0052-a-bounded-pick.md) §4 (the proposal), [ADR 0050](0050-need-model-near-duplicates-and-content-waves.md) and `docs/content/need.json` (the pools), [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md) (the index and its dimensions), [ADR 0025](0025-language-and-regional-packs-loaded-on-demand.md), [ADR 0048](0048-column-store-and-regional-packs-by-area.md), [ADR 0049](0049-compact-area-sources-and-a-change-spread-over-frames.md).
- `AzerothUnspoken/Engine/PhraseRegistry.lua` (`Engine.OWN_ONLY`, `Engine:ReadOwn`, `Engine:NotOwn`, `Engine.skipped`, `Engine:ForgetSkipped`, `Engine.ownStats`, `Engine:AddEntry`, `Engine:AddTexts`), `AzerothUnspoken/Core/Packs.lua` (`Packs:Settle`, `/au packs`).
- `Tests/run_tests.py` (`load_addon(own=)`, section "LE FRASI DEL PERSONAGGIO"), `Tests/MockWoWAPI.lua` (`AZEROTHUNSPOKEN_ALL_LINES`), `Tests/bench_scale.py` (`--own`, `need_shares`), `Tests/SyntheticArchive.lua` (`opts.own`, `opts.plain`), `Tests/trace_picks.py` (`--character`, `--own`).
