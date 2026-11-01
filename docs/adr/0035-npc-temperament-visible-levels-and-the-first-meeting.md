# 0035. NPC temperament, visible levels and the first meeting

- Status: Accepted
- Date: 2026-11-01 (issue #214, step N2 of the NPC relationships milestone; owner decisions of 2026-11-01)

## Context

ADR 0018 made NPC relationships automatic: each interaction adds points to independent axes, with diminishing returns, a
daily cap and a slow decay of familiarity. Every NPC warmed up at the same pace, the nine disposition bands were only a
word in the window, and nothing remembered how a bond began. The owner asked for a Skyrim-style milestone with three
ground rules: narration only (an NPC never behaves differently in the game), never public chat (D16), and the numbers in
data, not in the engine.

## Decision

1. **Temperament is a multiplier, read from data.** `temperament` in `Data/Relationships.lua` gives a factor by role
   (innkeeper 1.3, guard 0.7...), a factor by personality (the `temperament` trait of the NPC: cheerful, gruff...) and a
   race factor `{ gain, forget }` for the long-lived peoples. A curated `warmth` in `Data/NPCs.lua` replaces role ×
   personality; the race factor always applies. `gain` multiplies every automatic gain **and its daily cap**, both ways
   (otherwise a quick NPC would only reach the same cap sooner); `forget` multiplies the familiarity lost per day and
   divides the days of grace. Both are clamped to `min`…`max`. `R:Temper` is the single place that decides.
2. **The race comes from data or from the client, never guessed.** The curated entry says it; otherwise the race token
   the client gave for the NPC of an interaction is kept with the record (`race`). Without either, no race factor.
3. **The levels are the disposition bands.** No new scale: the nine bands are numbered (Hated 1, Deep bond 9) and the
   window shows the level and the way to the next. A move between bands caused by an interaction (`RecordNPC`) is a
   level change; a slider the user moved is not announced.
4. **A level notice is a system notice, not a content line.** It goes to `Narrator:Notice` (the private narrator, like
   the Story Arcs notices), never through the Chat Gateway, with words from `Data/<lang>/RelationsUI.lua`. It is rare by
   rule (`levels` in the data): a quota per session, quiet hours per NPC saved with the record (`levelT`), held during
   combat and shown when the fight ends, silent when the narrator is (intensity 0, paused, box off), and an option
   (`relations.levelNotices`). A memorable band leaves a `relation_level` journal memory with tokens only (no name),
   described through `LivingMemory:RegisterDescriber`.
5. **The first meeting keeps circumstances, not text.** A new NPC record stores `met = { time, weather, zone, mapID,
   level }`, each read through Compat and left absent when the client does not say it. Recall lines use the conditions
   `relMetLevels`, `relMetDays`, `relMetTime`, `relMetWeather` (relationship conditions for the validator), so the
   content stays curated and data-driven.
6. **`relationships.version` 3.** The new NPC fields bump the internal version: version 2 data needs no migration, and an
   older addon now treats version 3 as read-only (ADR 0006) instead of dropping `met`.

## Alternatives considered

- **Level notices as content lines through the Director.** Rejected for now: the Director's chance and budget could hide
  a change the window already shows, and a narrator voice can become a public proposal in some chat modes. A system
  notice is private by construction. Literary lines for a level change can come later with N9 (#221) as a separate
  `relation_*` event if wanted.
- **A separate "level" scale with its own points.** Rejected: it would duplicate the disposition and drift from it.
- **Temperament on the gain only, not the cap.** Rejected: the daily caps decide the pace over days, so a quick NPC would
  not really be quicker.
- **A race factor for every people.** Rejected: only the long-lived peoples of the setting have a reason to differ, and
  GDD §5.4 excludes moral judgements by race; the factor is about pace, never about warmth or hostility.

## Consequences

- Positive: NPCs feel different (a jovial innkeeper, a gruff smith, a night elf who remembers you for a long time); the
  player sees where a bond stands; recall lines can say "you were still a novice". Everything is tunable in data.
- Negative or costs: numbers that existing tests assumed (the NPC Alive caps of a curated innkeeper) now follow the
  temperament; old NPC records have no first-meeting circumstances (the window says so).
- Not verified in the real client: whether `UnitRace("npc")` gives a race for NPCs, the readings at the first meeting,
  and the feel of the notices (steps N2.1-N2.7 of `docs/G1_checklist.md`).
