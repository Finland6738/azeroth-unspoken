# 0048. A column store for the rules, and regional packs built and dropped by area

- Status: Accepted (**nothing of it has run in the client**: the loading on a change of zone is in `docs/G1_checklist.md`, section C0; owner decision of 2026-11-02 to finish the development without in-game test gates)
- Date: 2026-11-02 (phase C0 of the content-scale plan, issue #138; [ADR 0024](0024-selection-index-compact-registry-and-bounded-memory.md), [ADR 0025](0025-language-and-regional-packs-loaded-on-demand.md))

## Context

The owner's goal is 100,000-300,000 texts per language, 400 hours or more without an exact repetition (D1 in #130). The plan approved on 2026-11-02 starts with a technical phase, C0, before the waves of content:

- **Memory.** At 50,000 synthetic entries in one language the addon used 60.0 MB at the last update of ADR 0024, 69.9 MB on `main` today (the content grew to 1,968 intentions); the working target is 40 MB. ADR 0024 measured why: a rule was a Lua table of eight slots with a shape as metatable, a text table and one list of variants per language, about 600 bytes before its texts. Its update of 2026-11-02 simulated a **column store** (no table per rule) at 34.2-37.8 MB and named it the only lever left.
- **Granularity.** ADR 0025 built a region (a continent) at once. At 300,000 entries a continent is tens of thousands of rules: too much to build, and too much to keep. The unit should be a zone, or a capital with its zone.
- **Constraints.** Picks must not change (ADR 0024: equivalence tests and byte-identical traces). D4 (#130) stays: one download, several folders, only the chosen language in memory, no user action. WoW lists every folder as an addon, cannot unload one, and gives an addon no way to read a file on its own: a file runs only when the `.toc` of a folder that is loaded lists it (`C_AddOns.LoadAddOn`).

## Decision

### 1. A column store for the rules (`Engine/PhraseRegistry.lua`)

1. **A rule is a number, its `ord`** (the order of registration, as before). Its fields are columns of `Engine.R` indexed by `ord`: `id`, `shape` (the shared fields of ADR 0024: pack, events, voice, form, category, depth, weight, cooldown, tier, the monologue and literary fields, and now `twinOf`), `when`, `styles`, `tags`, `theme`, `motifs`, `impure`. `Engine.ordOf[id]` gives the ord. `byEvent`, the groups of the index, `Candidates`, `CandidateGroups`, `EligibleFor` and `Eligible` on a list of ords hold ords.
2. **Texts in one flat array per language.** `Engine.TX[lang].v` holds every variant (a string, or the rare `AUVariant` table); the variants of one rule in one language are contiguous, and `TX[lang].at[r] = count * 2^32 + first slot` (`Engine.TextRange`). A text added later to a rule whose block is not at the top moves the block to the top (the old slots become `false`). A dropped pack frees its slots; free slots at the top go back at once, and the array is rebuilt when more than 4,096 are free and they are half of it.
3. **The selection reads the columns.** `Eligible` (the common case of a first variant with no placeholder read in place), `RuleUsable` (`AnyUsable` on the flat array), `ScoreMemo` (its node found from the columns), `TierPool`, `WeightedPick`. The weight hooks and `Score` still receive a table: one reused table loaded with the columns of the rule and the rule's shape as metatable (`Load` in `WeightedSelector.lua`); a hook reads it during the call and keeps nothing (the place hook no longer caches the length of the texts on the rule). The chosen rule becomes a view once per pick.
4. **Everything else reads views.** `Engine.Rule(r)` and `Engine.byId[id]` give a table like the rule tables before C0: own fields `id`, `ord`, `when`, `styles`, `tags`, `theme`, `motifs`, `impure`, `text = { [lang] = variants }`, and the shape as metatable. It is made on demand and kept in a weak cache, so one rule gives one view while something holds it; a view held while texts are added sees them. A write to a shape field of a view (a test that changes a cooldown, the `twinOf` of a Versi twin) writes the column too, copy on write as before; its text lists are copies, and texts are added with `AddTexts` (or `Engine:CopyTexts`). `pairs(Engine.byId)` shows nothing: `Engine:Rules()`, `Engine:EventRules(ev)` and `Engine:PackIds(packId)` list rules, in order of registration. `Engine:AddEntry` returns the ord. `Engine.Score`, `Engine.Factors`, `Engine:Weight`, `Engine.Tier`, `Engine:MonologueUsable` and `Engine.TierPool` accept an ord or a view; `Eligible` on a list of views gives views.
5. **Packs keep their range of ords** (`pack.first`, `pack.last`) instead of a list of ids. A pack dropped from the top of the ords gives them back, so a region left and the next one entered reuse them and the columns do not grow with every change of area; only the order of the rules counts, never the number.

The migration touched the engine (`PhraseRegistry`, `WeightedSelector`, `TemplateRenderer`), the addon systems that read rule lists (`Companion`, `Nemesis`, `NPCAlive`, `StoryArcs`, `Place`, `Validator`; the Versi twins), and the tests and tools that iterated `byId` or `byEvent` (about 60 places in 25 files).

### 2. Regional packs built and dropped by area (`Core/Packs.lua`, `Systems/Place.lua`)

1. **The area** is a zone, or a capital with the zone around it: `Data/Places.lua` gives a capital the `area` of its zone (Orgrimmar in `durotar`, Stormwind City in `elwynnforest`, Thunder Bluff in `mulgore`, Undercity in `tirisfalglades`, Ironforge in `dunmorogh`, Darnassus in `teldrassil`); any other zone is its own area, the lower-case letters of its English name. `ctx.place.area` carries it.
2. **A builder belongs to an area or to a continent.** `RegisterRegionalPack(key, builder)` and `RegisterRegionalTexts(key, lang, pack, builder)` keep their signature; the key is an area (`durotar`) or a continent (`kalimdor`). On `WORLD_ENTER` and `ZONE_ENTER`, outside combat, `Packs:Update` drops every built key that is neither the current continent nor the current area, **then** builds what is missing: never two areas at once. An unknown area (an instance, a zone outside the data) keeps the area built until the character leaves the continent; subzones never change it. `Packs.lastChange` keeps the last change (key, rules built, ms) for `/au packs`.
3. **Folders stay per continent** (the download keeps its 11 folders). A regional folder may declare `## X-AzerothUnspoken-Areas: durotar, mulgore`: it is then loaded only in one of those areas, instead of on entering the continent. Splitting a continent into folders of areas is a packaging choice of the folders and of the archive, with no change to the engine.
4. **The trial slice** (#241) moves to the areas `durotar` (`kalimdor_durotar`, `kalimdor_orgrimmar`) and `elwynnforest` (`eastern_elwynn`, `eastern_stormwind`); every one of its 583 rules names its zone, so no line changes where it can be said. `kalimdor_exploration` and `eastern_exploration` (17 lines that name zones all over their continent) stay continent packs.
5. **The archive** (`tools/archive`) reads the key of the builder: `pack.area` and `intention.area` (NULL for a continent pack), `cli search --area`, a coverage table by area. The files keep their call verbatim (prelude), so the round trip is still an empty diff.

### 3. Measures (lupa, one PC; instructions and memory are exact, times are machine time)

**Column store**, `Tests/bench_scale.py --langs enUS --archive-dir` (the same synthetic archive for `main` and this change, 400 picks; one language for the archive, the base packs with both, as in ADR 0024):

| Entries | Memory `main` → C0 | Bytes per entry | Instructions per pick, mean (p95) | Pick time, mean (p95) |
|---|---|---|---|---|
| today (1,968 intentions) | 9.5 → 8.3 MB | — | 17.9 → 18.8 thousand (29.9 → 31.3) | — |
| 10,000 | 22.2 → 15.3 MB | 1,331 → 727 | 36.5 → 38.8 thousand (68.9 → 73.1) | — |
| 50,000 | 69.9 → **38.9 MB** | 1,266 → 641 | 66.1 → 69.6 thousand (135.5 → 146.8) | 2.24 → 2.29 ms (5.50 → 7.59) |

Times at 50,000 are the median of three runs of each version on a busy PC (one run of `main` had a p95 of 26 ms): they move with the collector and the machine, the instructions do not. Registering the 10,000-entry archive takes 19.1 million instructions instead of 18.3.

The memory target of 40 MB at 50,000 entries in one language is **met** (#138). A pick costs about 5-10% more instructions: the columns are read through upvalues, a rule is loaded into the table of the hooks once per weighed rule, and the chosen rule becomes a view. `Tests/perf_baseline.json` moves to the new figure at 2,000 entries (`main` measured 19.3 thousand there, already above the old 16.4).

**Picks unchanged.** `Tests/TestScale.lua` (the equivalence of the index with a scan of `byEvent`, `Score` against `Factors` bit for bit, the memo on and off, the groups apart against the merged list) passes on the column store, and `Tests/trace_picks.py` printed byte-identical traces against `main` in the eight configurations of #239: plain, `--r1`, `--soul veteran --emotion worried=0.6,tense=0.3`, `--soul rogue --emotion happy=0.7`, `--synthetic 3000`, `--synthetic 5000 --r1`, `--synthetic 5000 --soul veteran`, `--synthetic 20000 --picks 2000`.

**300,000 entries by area**, `Tests/bench_scale.py --areas` (one language; 30,000 entries resident like the base content, 270,000 in 40 areas of 6,750, each bound to its zone; the character visits every area of Kalimdor, then of the Eastern Kingdoms, then Kalimdor again):

| | Continent folders (4) | Area folders (80) |
|---|---|---|
| base and resident entries | 25.9 MB | 26.0 MB |
| with the first area (folders loaded, area built) | 115.1 MB | **36.4 MB** |
| after every area of Kalimdor | 119.3 MB | 119.4 MB |
| after every area of both continents | 220.9 MB | 221.0 MB |
| peak of a change, over the memory before it | 252.6 MB (the continent compiled) | 46.2 MB |
| change of area (drop + build of 6,750 rules), mean / p95 | 1.11 / 1.50 s (6.2 s for the continent) | 1.16 / 1.44 s |
| pick in an area, mean / p95 | 5.2 / 24.1 ms | 4.0 / 16.2 ms |

What the numbers say:

- **Building by area works**: the tables of one area are built and the area left is freed (the memory after a change is the resident part, the area built and the code below).
- **The code of a loaded folder stays.** The compiled builders cost about 730 bytes per entry, as much as the area built with the column store: after visiting every area, 221 MB whatever the layout. With continent folders this cost comes at once, on entering the continent (115 MB). At 300,000 entries the folders must be per area, and what a long session keeps must be bounded (below).
- **A change of area of 6,750 rules takes about a second** in lupa: too long to happen on foot without a stutter. Today's areas are small (the slice: 286 and 297 rules).
- A pick in an area where every rule of 6,750 is a candidate (the synthetic content binds all of them to one zone) is slower than the ordinary picks; written content spreads its rules over subzones, events and conditions.

### 4. What is decided now, and what waits

- Now: the column store; the area as the unit built and dropped; continent folders, with folders of areas possible through the `.toc`. With today's content (583 regional rules) nothing else is needed: one area is under 0.3 MB built.
- **When a continent's regional content passes about 10,000 entries per language** (about 7 MB of compiled builders, the cost of loading its folders), the folders are split by area (`X-AzerothUnspoken-Areas`; the folder count grows by two or three per area: the AddOns list grows, which is why it waits until it is needed).
- **Before the content reaches about 2,000-3,000 entries per area**, two follow-ups of #138 are needed and are left open: (a) build an area over several frames (or cap the size of an area), so that a change on foot does not stutter; (b) bound the code kept by visited areas: for example release the builders of the areas least recently visited beyond a budget (their lines come back after `/reload`), or keep an area as a compact source compiled on demand. Both change behaviour the owner can see and are decided with the in-game numbers of `/au prof` (D3).

## Alternatives considered

- **Per-zone data files loaded by the addon itself** inside continent folders. Not possible: a WoW addon cannot read or run a file that its `.toc` does not list, and a `.toc` loads all its files at once. The closest is what is done: one folder holds the builders of several areas and the addon builds only one area.
- **One folder per area from now on.** It bounds the memory of the first visit (36 MB instead of 115 MB at 300,000 entries), but makes 80 entries in the AddOns list for content that today has two areas. Deferred to the size given above; the engine already supports it.
- **Views for the selection too** (every rule a view while it is a candidate). Simpler code, but every candidate would allocate a table or call a metamethod per field read: the instructions of a pick would grow far more than 5-10%.
- **Keeping rule tables with four slots, or texts in the rule's array part.** About 80-90 bytes a rule each (ADR 0024): not enough for 40 MB.
- **Registering a regional pack directly and freeing everything on leaving.** Frees the code too, but an area left could never come back without `/reload` (ADR 0025): a decision for the bound of item 4, not a default.

## Consequences

- Positive: 50,000 entries in one language fit in 39 MB (69.9 before); 300,000 entries can be loaded area by area (36 MB at login with folders by area). The picks do not change. External packs and their format do not change; a regional pack can now be bound to an area. The archive knows the area of a pack.
- Negative or costs:
  - Code outside the engine reads rules through views or `Engine.R`: `pairs(Engine.byId)` is empty, the lists of the index hold numbers, a view's text lists are copies, and a write to a field of a view other than a shape field is not kept.
  - A pick costs 5-10% more instructions.
  - A change of area builds on foot; with today's areas a few milliseconds, with large areas a second (item 4).
  - Compiled builders of every loaded folder stay until `/reload`, as in ADR 0025; with the column store they weigh as much as the built tables.
  - Nothing has run in the client: `LoadAddOn` of a folder on a change of zone, the time of a change and the memory are in `docs/G1_checklist.md` (section C0).

## References

- Issue #138 (memory at scale), the content-scale plan of 2026-11-02, #130 (D1, D3, D4), #101, #102 (trial slice), #239 (the eight traces).
- `Engine/PhraseRegistry.lua` (column store, views), `Engine/WeightedSelector.lua` (`Eligible`, `ScoreMemo`, `Load`), `Engine/TemplateRenderer.lua` (`RuleUsable`), `Core/Packs.lua` (`Update`, `LoadFolders`, `AreaSet`), `Systems/Place.lua` (`AreaKey`, `ctx.place.area`), `Data/Places.lua`, `tools/archive/` (area of a pack).
- `Tests/bench_scale.py --areas`, `Tests/SyntheticArchive.lua` (`SYNTH_AREA_SOURCES`), `Tests/TestScale.lua`, `Tests/TestPacks.lua`, `Tests/trace_picks.py`, `Tests/check_archive.py`.
