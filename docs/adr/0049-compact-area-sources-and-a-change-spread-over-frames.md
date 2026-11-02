# 0049. Compact sources for the regional areas, and a change of area spread over frames

- Status: Accepted (**nothing of it has run in the client**: the checks of a change of zone are in `docs/G1_checklist.md`, section C0, items 9-14; owner decision of 2026-11-02 to finish the development without in-game test gates)
- Date: 2026-11-02 (phase C0b of the content-scale plan, issue #138; follows [ADR 0048](0048-column-store-and-regional-packs-by-area.md) §4; [ADR 0025](0025-language-and-regional-packs-loaded-on-demand.md))

## Context

ADR 0048 builds and drops the regional lines one **area** at a time, and measured with `Tests/bench_scale.py --areas` a projection of 300,000 entries in one language (30,000 resident, 40 areas of 6,750):

- **What visited areas keep.** WoW cannot unload an addon: the files of a regional folder run once, and what they leave stays until `/reload`. They left builder functions, compiled code that weighs about 730 bytes per entry, as much as the rules built from it: **221 MB** after visiting every area of both continents, whatever the layout of the folders.
- **The hitch.** A change of area dropped the old area and built the new one in one go: **1.1-1.5 s** for 6,750 rules, a visible stutter on a border.

ADR 0048 §4 left both open, to be solved before the areas grow past about 2,000-3,000 entries: build an area over several frames, and bound what visited areas keep. The goals of this phase were: well under 100 MB after visiting every area at 300,000 entries, the first area not heavier than before; no frame over about 5-8 ms of addon time on a change; the same picks.

## Decision

### 1. The entries of a regional pack are a source (`Core/Packs.lua`, the folders of the download)

1. A regional file gives its entries as **Lua source in a string** instead of a builder function: `RegisterRegionalPack(key, pack, source)`, where `pack` is the pack without its registry (`id`, `name`, `languages`, declarations) and `source` the entries, `["id"] = { ... },` one after the other; `RegisterRegionalTexts(key, lang, packId, source)` likewise for the texts. The files of the download use a long string, `[==[ ... ]==]`: the entries are written exactly as before (one tab less), readable and reviewable, and the archive reads and writes them inside the string (`tools/archive/packfiles.py`; the round trip is still an empty diff). Builder functions stay accepted (external packs, small packs).
2. When a file runs, only the string is kept: the code of the file is garbage at once. On the first build the source is **cut into pieces** (`Packs.PIECE`, 4 KB: a piece ends where an entry begins), each piece is compiled (`loadstring("return {" .. piece .. "}")`) and read; a piece that is not valid alone (a cut inside an entry, which only a line starting with `[` inside an entry can cause) is read with the next one. The rules of a source are gathered into one registry and registered with `RegisterPack`, so the order of the rules (their ords) is the one of a builder: **the same picks**.
3. Once the area speaks, each piece is **encoded** (`Core/SourceCodec.lua`): `string.gsub` (C code) replaces the frequent tokens, a word with the space before it or a run of punctuation and blanks, with one byte (10 tokens) or two bytes (2,983 tokens), using bytes no source contains (the control characters other than tab, line feed and carriage return; a piece that holds one is kept as written). Decoding is two `gsub` with a table; it gives back the exact piece whatever the dictionary. The dictionaries are data written by `tools/build_codec.py` from the content: `Data/Codec.lua` for the rules, `Codec.lua` in each language folder for its texts (only the chosen language is loaded). A dictionary that is not current only makes pieces a little larger; it is written again when the content has grown.
4. **The bound** (`Packs.KEEP_KB`, 32 MB): when the sources of the keys that are not built pass it, those built least recently (never built first) are released (`Packs:Trim`): their pieces are let go and the area builds without them until `/reload`; `/au packs` names them. Builder functions are not counted and never released (their code cannot be let go).

### 2. A change of area is a job spread over frames (`Core/Packs.lua`, `Engine/PhraseRegistry.lua`)

1. `Packs:Update` (on `WORLD_ENTER` and `ZONE_ENTER`, outside combat) computes what to drop and what to build and starts a **job**, a coroutine; `Packs:Step`, from the `OnUpdate` of a hidden frame, resumes it for at most `Packs.BUDGET_MS` (4 ms) of the frame, measured with `debugprofilestop`, and never in combat. The long loops call `Engine.Pause` between two entries (the rules of a pack, the texts of a map, the rules freed, the pieces read, the pieces encoded, the folders loaded); it yields when the share of the frame is spent. Without a frame (a client that cannot make one) the job is completed at once.
2. **No pick sees a half-built area.** The areas left first leave the selection in one step (`Engine:HidePack`: byEvent and the index; since the ords of a list are in order, only the tail from the pack's first ord is walked) and are then freed between frames (`Engine:FreePack`). The new area is built in **staging** (`Engine:BeginStaging`): its rules get their ords and columns but go to lists of their own; `Engine:EndStaging` appends them to byEvent and the index at once. Every staged ord is above every ord already in the lists (a dropped area gives its ords back before the next is built), so each list stays in order and is the same as after a build in one go. Meanwhile the base lines speak as always.
3. A folder is loaded at most one per frame, and never with a pause inside the client's call (`Packs.hold`): a yield inside `LoadAddOn` would be an error. The client reads a folder's files in one call: that frame cannot be split (§3).
4. A change towards another place stops the job in progress at its last pause; what it built half-way is dropped by the next job, which also finishes what a stopped drop left. `/au packs` shows the area being built and, for the last change, the rules, the ms in all, the frames and the longest frame.

### 3. Measures (lupa, one PC; memory exact, times are machine time)

`Tests/bench_scale.py --areas` (300,000 entries in one language: 30,000 resident, 40 areas of 6,750, each bound to its zone; the character visits every area of Kalimdor, then of the Eastern Kingdoms, then Kalimdor again). **Times are CPU time of the thread** (`debugprofilestop` is the thread's cycles in the bench): on this PC other programs kept the processor at 100%, and in wall time a fixed 0.5 ms loop measured up to 39 ms. `main` was measured again with the same clock and the same script (`--form builder`).

| Folders by area | `main` (builders) | C0b, bound 32 MB | C0b, no bound (`--keep 1000000`) |
|---|---|---|---|
| base and resident entries | 26.0 MB | 26.5 MB | 26.5 MB |
| with the first area | 36.4 MB | **36.2 MB** | 36.2 MB |
| after every area of Kalimdor | 119.4 MB | 68.4 MB | 70.2 MB |
| after every area of both continents | 221.0 MB | **69.0 MB** (64.0 MB at the end) | 117.0 MB |
| regional sources kept | — | 30.8 MB | 79.3 MB (about 308 bytes per entry) |
| a change of area, CPU in all | 490 ms mean, 547 ms p95, one frame | 682 ms mean, 1,022 ms p95 | 921 ms mean, 1,033 ms p95 |
| frames of a change | 1 | 231 mean, 375 at most | 309 mean, 381 at most |
| addon time per frame | 416 ms mean, 581 ms at most | **2.90 ms mean, 3.96 ms p95, 7.76 ms at most** | 2.95 ms mean, 3.97 ms p95, 7.99 ms at most |
| the frame that reads a new area's folder (first visit) | 525 ms mean (with the build) | 11.3 ms mean, 16.2 ms at most | 11.6 ms mean, 19.1 ms at most |

What the numbers say:

- **The goals are met with the bound.** After every area of both continents the addon keeps at most 69.0 MB instead of 221 MB, and the first area costs what it cost (36.2 MB). Without the bound the encoded sources alone reach 79 MB (117 MB in all): encoding keeps about 308 bytes of a synthetic entry against about 730 of compiled code, not enough by itself at this size, so the bound releases the areas visited longest ago (at 300,000 entries, more than half of them by the end of the journey).
- **No frame of a change passes 8 ms**, except the one in which the client reads a new area's folder (11-19 ms here, once per area and session; `LoadAddOn` cannot be split). A change costs more CPU in all than before (about 40% more: decoding, compiling the pieces, the merge of the ids), spread over about 230 frames, about 4 seconds at 60 frames per second for 6,750 entries; the areas of today (about 300 rules) take a few frames.
- **The peak of a change** in the table above is measured with the collector stopped for the whole change, so it is all the garbage of about 230 frames (+75.6 MB here, +45.6 MB on `main`): in the client the incremental collector runs between them.
- **Folders by continent** (`--layout continent`, C0b with the bound): the first area costs 65.6 MB and the frame that reads a continent's folder 234-267 ms, and the bound releases most areas of the continent before they are visited (a source that is loaded but not yet built counts as written). That is §4.
- **Picks unchanged.** `Tests/trace_picks.py` printed byte-identical traces against `main` in the eight configurations of #239 (the trial slice is built from its sources there), and a pick in an area costs the same instructions (103.9 thousand on average over the same 100 picks, on `main` and on C0b). The equivalence tests of `Tests/TestScale.lua` pass; `Tests/TestPacks.lua` checks that a change over frames gives the same rules, ords, texts and lists of the index as a change in one go, that no rule of a half-built area is in the index, that combat stops the job, and that a change towards another place drops what was half-built.
- **On real content** the dictionaries keep 31% of the trial slice's rules source and 42% of its English texts (optimistic: the dictionaries were written from that content; on content they have not seen, about 42% and 60% measured offline). A trial-slice entry is about twice a synthetic one (three long variants), so its kept source is about 430 bytes.

### 4. When the folders must be split by area

Splitting does not change the bound: what visited areas keep is their encoded sources, whatever the layout. It changes two things:

- **the first frame of a continent:** the client reads every file of a folder in one call, and with continent folders that is every source of the continent at once (at 300,000 entries, about 74 MB of source read in one frame and kept as written until each area is built: 234-267 ms, 65.6 MB with the first area, most areas released by the bound before a visit); with folders by area it is one area's files;
- **the memory before any visit:** a source that is loaded but not yet built is kept as written, not encoded.

So the rule of ADR 0048 stays, now for this reason: **a continent's regional folders are split by area when its regional content passes about 10,000 entries per language** (about 5 MB of source per language read in one call). Today's content (583 regional rules) is far from it, and the exporter needs nothing for it yet: an area folder is a folder with `## X-AzerothUnspoken-Areas` (ADR 0048), and the archive reads any folder that declares a region.

## Alternatives considered

- **A packed file written by the exporter** (the sources encoded offline and committed in that form). The same memory at run time, but the files of the download would be unreadable in a diff, and the archive would have to decode and encode them; encoding at run time costs about 2 ms per 8 KB, once per area and session, after the area already speaks.
- **A stronger compression** (an LZ decoder in Lua, or a word dictionary with three-byte codes). Measured offline on the real content: three-byte codes gain 1-3%; an LZ decoder written in Lua would cost far more than two `gsub` per piece on every build.
- **Releasing the oldest areas without a compact form** (a bound only). It bounds the memory, but at 300,000 entries most areas would be released: compact sources keep three times more areas before the bound.
- **Hiding a half-built area with a flag checked by every candidate.** One more check per candidate in every pick; staging costs nothing to the picks.
- **Keeping the old area until the new one is built.** The new area would take ords above the old, which would never be given back: the columns would grow at every change.

## Consequences

- Positive: at 300,000 entries a session that visits every area keeps at most 69 MB instead of 221 MB (the first area unchanged at 36 MB); a change of area no longer stutters (no frame over 8 ms but the one that reads a new folder); no pick ever sees a half-built area; the regional files stay readable and reviewable, and the archive round trip is unchanged; picks are byte-identical.
- Negative or costs:
  - A first visit costs more CPU in all (cutting, compiling and encoding), spread over frames; the lines of a new area start a few frames to a few seconds after the border (the general lines speak meanwhile).
  - The frame in which the client loads a folder cannot be split: at 6,750 entries per area it is 11-19 ms of CPU, once per area and session.
  - Past the bound, an area visited long ago has no regional lines until `/reload`.
  - A regional file is a string of entries: a syntax error is found when the area is built (reported in `/au debug`, the entries before it still load), not when the folder loads; `Tests/run_tests.py` builds every regional file of the download.
  - Nothing has run in the client: the timing of a change, the frames, the memory kept and the release are in `docs/G1_checklist.md` (section C0, items 9-14).

## References

- Issue #138, the content-scale plan of 2026-11-02, ADR 0048 §4, ADR 0025.
- `Core/Packs.lua` (`ReadSource`, `Compact`, `Trim`, `Update`, `Run`, `Step`, `Pause`), `Core/SourceCodec.lua`, `Data/Codec.lua`, `AzerothUnspoken_enUS/Codec.lua`, `AzerothUnspoken_itIT/Codec.lua`, `tools/build_codec.py`, `Engine/PhraseRegistry.lua` (`BeginStaging`, `EndStaging`, `HidePack`, `FreePack`, `Engine.Pause`), `tools/archive/packfiles.py` (the entries of a source).
- `Tests/bench_scale.py --areas` (`--form`, `--budget`, `--keep`), `Tests/SyntheticArchive.lua` (`SYNTH_AREA_SOURCES`, `form = "source"`), `Tests/TestPacks.lua` (the C0b tests), `Tests/check_archive.py`, `Tests/trace_picks.py`.
