# 0037. Romance with NPCs: opposite sex only, slow attraction and a private vow

- Status: Accepted
- Date: 2026-11-01 (issue #215, step N3 of the NPC relationships milestone; owner decisions of 2026-11-01)

## Context

ADR 0018 gave relationships an optional `attraction` axis (off by default) and a `lover` label ("beloved") that needs
it, but nothing ever raised attraction for an NPC: only the user's slider could. The owner asked for a Skyrim-style
romance with NPCs, with the milestone's ground rules (narration only, never public chat, numbers in data), and decided
that romance is **with the opposite sex only, fixed**, after hearing the alternative of a per-character preference.

## Decision

1. **Who: a humanoid NPC of the opposite sex.** `R:RomanceEligible(npcID)` compares `UnitSex("player")` with the sex
   the client gave for the NPC at an interaction, and asks that `UnitCreatureType` says humanoid (its id, 7, or its
   name in data). An unknown or neutral sex, or a creature type the client does not give, means no romance. This is a
   **fixed rule in the engine, not a setting**: there is no preference option, by the owner's decision.
2. **The reading is not saved.** The NPC's sex and creature type are read through Compat at each interaction
   (`InteractionNPC`, the `npc` unit) and kept for the session only (`R.session.kin`). No new field goes into the NPC
   record, so `relationships.version` stays 3. An interaction with no reading this session (a quest handed in to an NPC
   the session never talked to, an ambient dialogue started from the target) gives no attraction.
3. **How: slowly, from Friend up, never from a merchant.** Only with the attraction axis on. In `RecordNPC`, after the
   ordinary gains, `R:Romance` adds attraction when the source is listed in `romance.gain` (`Data/Relationships.lua`:
   chat, quests, the inn, a trainer, the addon's own ambient talk; no merchant source, no flight master), the NPC was
   already at `romance.minLevel` (Friend) before the interaction, and nothing in the interaction was negative. It reuses
   `R:Increment` with a row of its own (`"romance"` in the day's counters): diminishing returns, a small daily cap over
   all sources, the softening near the top, and the NPC's temperament (ADR 0036) on the gain and the cap.
4. **The vow, once per NPC.** When an interaction brings attraction to `romance.vow.attraction` (80) and the derived
   label is `lover`, `R:Vow` writes a **permanent journal memory** (`relation_vow`, tokens only, no name, like every
   relationship memory since ADR 0018) and the private narrator says one line through `Narrator:Notice` naming the NPC,
   never through the Chat Gateway; with the narrator silent or in combat only the journal line is written. The mark is
   `rec.noted.vow`, which the saved data already keeps. A slider the user moved never makes the vow.
5. **Lines.** The condition `relVowed` (a relationship condition for the validator) lets lines speak after the vow;
   two `relation_npc` intentions in Italian and English, rare (weight 0.5) and in the inner voice: `rel.npc.attraction`
   (attraction 30 or more, not yet beloved) and `rel.npc.vowed`. More come with N9 (#221).

## Alternatives considered

- **A per-character preference setting.** Offered to the owner and declined: romance is with the opposite sex only.
- **Saving the NPC's sex and creature type with the record.** It would let a quest handed in to an NPC never talked to
  this session count, but it would bump `relationships.version` (an older addon would then keep the data read-only)
  and keep a reading the client gives again at the next interaction anyway.
- **Attraction in the ordinary increment rows.** Simpler, but every row would then need the sex, humanoid and Friend
  checks; a separate row in data keeps them in one place and lets a pack add a source.
- **The vow as a content line through the Director.** Rejected for the same reason as the level notices (ADR 0036): the
  Director's chance could hide it, and a narrator voice can become a public proposal in some chat modes.

## Consequences

- Positive: the existing beloved lines finally have a way to be reached in play; the romance is rare, slow and private,
  and every number is in data.
- Negative or costs: about seven weeks of daily play with one NPC before the vow, by design; numbers to tune in game.
  A same-sex or non-humanoid NPC never gains attraction by itself, though the user can still move the slider.
- Not verified in the real client: whether `UnitSex("npc")` and `UnitCreatureType("npc")` give values for the NPC of a
  dialogue (steps N3.1-N3.4 of `docs/G1_checklist.md`).

## References

- `Systems/Relationships.lua` (`R.Kin`, `R:RomanceEligible`, `R:Romance`, `R:Vow`, `R:VowText`), `Data/Relationships.lua`
  (`romance`), `Engine/RuleEngine.lua` (`relVowed`), `Data/RegistryRelations.lua`.
- [ADR 0018](0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md),
  [ADR 0036](0036-npc-temperament-visible-levels-and-the-first-meeting.md).
- `Tests/TestNPCRomance.lua`.
