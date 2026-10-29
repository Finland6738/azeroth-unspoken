# 0017. Living Memory: selective memories, honest recall, manual journal

- Status: accepted
- Date: 2026-10-29 (step S6; GDD §7.4, §10, §11.5, §12.2, §21 A and C; ADR 0006, 0014, 0015, 0016)

## Context

Up to S5 the addon's only memory was the anti-repetition memory of lines (`cdb.memory`). The GDD (§7.4) asks for real continuity between sessions: "Your last visit ended badly" is admissible **only** if a matching memory exists. Three levels are needed (episodic for the session, persistent personal, narrative flags), at most 500 ordinary memories per character with compaction, permanent memories, manual text export, reset and versioned migrations. Vertical slice A (arrival in the forest) and C (return to the forest, journal updated) depend on this. Two project constraints weigh more than the others: no indiscriminate saving (and **no transcript of chat or whispers**, no data from other players), and the addon cannot write files.

Steps S6b (relationships) and S6c (interlocutor and place) will use memory and journal, and S9 (story arcs) the flags.

## Decision

1. **Three levels, a single module** (`Systems/LivingMemory.lua`, `NS.LivingMemory`):
   - *session episodic*: the significant moments of this session, in memory only (at most 60), with a negative id; they are not saved and are lost at close;
   - *persistent personal*: `AzerothUnspokenCharacterDB.memories = { version, nextId, entries, places, flags, stats }`;
   - *narrative flags*: `memories.flags[name] = { t, source }`, set by the game (`first_death`, `first_capital`, `level_10`…), by the user (`/au diario flag`) or by other systems (`LM:SetFlag`, for S9).
2. **Only significant moments are remembered**, never every click:
   - **first visit** to a zone (importance 3, 4 for a capital);
   - **return** after at least a day (importance 2, saved); a closer return (but more than 10 minutes after leaving) is a session moment (importance 1) and is not saved; re-entering within 10 minutes, or reloading the interface, **continues the same visit**;
   - **visit that ended badly**: a death (importance 3, 4 for the first) or a **flight**, that is, leaving a zone in combat or with less than 35% health, but not as a corpse and never with an unreadable value (secret values: no decision);
   - **levels** (2; every ten a milestone, 4, with a flag).
   These are already-normalized bus events (`WORLD_ENTER`, `ZONE_ENTER`, `PLAYER_DEATH`, `LEVEL_UP`): memory registers no new client events and does not subscribe to chat.
3. **Memory fields** (§7.4): `id`, `t` (epoch, seconds), `zone`, `kind`, `importance` (1–5), `tags`, `source` (`auto` | `user` | `addon`), plus `level` and `perm`. `Record` copies **only** these fields (short lowercase ASCII tags, at most six, zone at most 64 bytes without splitting UTF-8) and `Sanitize` reapplies them to saved data: no free text, no other field can remain. The GDD's "sharing consent" is not saved until the Social module (S10) exists: absent means *no*.
4. **Places** (`memories.places[zone]`): first and last visit, number of visits, deaths, outcome of the visit and how the previous one ended. They are data separate from the memories: compacting the memories does not remove the knowledge that you have already been to a place. At most 300 places are kept (the least recent are forgotten). The key is the zone name in the client's language (the `mapID`, more robust, will arrive with S6c).
5. **Limits**: at most **500 ordinary memories** (non-permanent). Beyond the limit, **compaction** removes the least significant ones (lowest importance and, on ties, the oldest) down to 450, so it does not repeat on every memory, and counts how many it removed (`stats.compacted`). **Permanent** ones (at most 200) are never compacted. `Reset` has five targets (`all`, `memories`, `ordinary`, `places`, `flags`).
6. **Honest recall**, in three layers:
   - the line conditions `firstVisit`, `repeatVisit`, `lastVisitBad` (`true`/`false` or `"death"`/`"flight"`), `visitsMin`/`visitsMax`, `daysSinceLastVisit` (number = at least, `{ from, to }` = range) and `remembered = "<flag>"` read `ctx.memory`, built only from true data (`LM:Context`); without memory (module off, no data on the place, data from a newer version) every condition is **false**;
   - **recall events** (`LM:RegisterRecall(event, verify)`, currently `memory_return`) have a **guard in the engine** (`Engine:SetEventGuard`, checked by `PickEntry`): if `verify(memory, ctx)` does not confirm the memory, the event produces no line, whatever route requested it, even a manual command;
   - the **validator** (`recallWithoutMemory`) requires every line of a recall event to declare a memory condition (also inside `any`, never only inside `not`).
   Deleting the memory of a death also removes the place's "ended badly" outcome: the addon does not cite what the user has forgotten.
7. **§10 priorities**: `LM:RegisterRecall` sets the "memory recall" priority (`NS:SetEventPriority(event, "memory")`) and the `memory` module for the gate. The return to a known place is a `memory_return` candidate offered 3 seconds after entering, like the `zone` atmosphere; in the Director recall (priority 2) beats atmosphere (1) and a single line speaks. The **first visit** is not a recall but atmosphere: it uses the `zone` event with the `firstVisit` condition. Memory is written even at intensity 0 or on pause: the narrator is silent, but the memories are not.
8. **Journal** (`UI/JournalFrame.lua`, `/au diario`, aliases `/au journal` and `/au diary`): *Memories*, *Places*, *Flags* and *Session* tabs, paged list with standard buttons only, selective deletion, permanent memory, forgetting a place, "Forget everything" with confirmation. The tabs are data (`JournalFrame:RegisterTab`): S6b adds relationships to them. **Manual export**: `LM:ExportText` produces the text and a window with a multi-line box, already selected, shows it for Ctrl+C (read-only); if the window cannot be built, the first 40 lines go to local chat.
9. **SavedVariables schema 4**: the character's migration 4 turns the empty placeholder into `memories` (damaged tables restart from zero); `memories.version` has its own migrations (`LM.migrations[n]`) and `LM:Sanitize` discards malformed, duplicate or wrong-field entries and moves `nextId` past the maximum. Data with a newer `memories.version` is **not touched**: memory becomes read-only (no recording, no deletion) and says so in diagnostics. Memory never publishes anything: recalls go through the Director and the Chat Gateway like any other line.
10. **Time**: memories use `time()` (epoch); a clock going backwards does not produce negative days (they count as zero). The end of the current visit is updated every 5 minutes (`C_Timer.NewTicker`, if it exists) so that a disconnect or a `/reload` does not lose the visit; the SavedVariables are written to disk only at `/reload` or at close (GDD §7.4), so after a client crash the memories of the last session may be missing.

## Alternatives considered

- **A memory for every zone entry.** It saturates the limit within a few days and fills the journal with noise. Here close returns stay only in the session and visits are counted in the places.
- **Saving the lines spoken.** Never: it is a transcript of what the narrator wrote and, worse, brings memory closer to chat. What is saved is *what happened*, not *what was said*.
- **A guard only with an automatic condition** (implicitly adding `repeatVisit` to recall lines). It hides the rule from content authors and does not cover a manual command; the guard on the event and the validator's obligation are explicit and tested.
- **Compacting by merging several memories into one summary.** More elegant, but it produces generated text to store and translate; for now the least significant ones are removed and the counts are kept in the places.
- **Exporting to a file.** Not possible: the addon does not write files. The copyable window is the compromise foreseen by the GDD ("manual text export").

## Consequences

- Positive: vertical slice A and C is possible (first visit, return, updated journal) and a memory is never cited if it does not exist; content writers have clear conditions and a validator that guides them; S6b and S9 use journal, flags and guards without touching the Director.
- Negative or costs:
  - the thresholds (10 minutes, one day, 35% health, 500 and 450 memories, importances) are guesses to be tuned with in-game tests ([G1](../G1_checklist.md) (in Italian), steps 39–45);
  - **nothing has been tested in the real client**: neither writing the SavedVariables at `/reload` and at close, nor the zone events of a load, nor the look of the journal window and of the export box;
  - the place key is the zone name in the client's language: changing the client language creates "new" places;
  - flight detection is heuristic (combat or low health at the zone change);
  - data from a newer version makes memory unusable until you return to a compatible version.

## References

- GDD §7.4, §10, §11.5, §12.2, §21.
- `Systems/LivingMemory.lua`, `UI/JournalFrame.lua`, `Engine/RuleEngine.lua` (memory conditions), `Engine/WeightedSelector.lua` (`SetEventGuard`), `Engine/Validator.lua` (`recallWithoutMemory`), `Data/RegistryMemory.lua` (sample lines).
- [ADR 0006](0006-savedvariables-and-schema-versions.md), [ADR 0015](0015-narrative-director-one-intervention-per-moment.md), [ADR 0016](0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md).
- `Tests/TestMemory.lua` and the "memory persistence" section of `Tests/run_tests.py`.
