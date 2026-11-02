# 0046. The companion pet, grief, the death of an ally, and letters in the journal

- Status: Accepted (the signals it reads are in the API dump and follow ADR 0035, but are **not confirmed in game**: no in-game probe and no two-client group test was run)
- Date: 2026-11-02 (issues #220 and #125, step N8 of the NPC relationships milestone; owner decisions of 2026-11-01 and 2026-11-02)

## Context

Issue #220 asks for three things: a **companion pet** (a bond with the hunter's or warlock's pet that grows with time
together, and lines on its mood, on being called and dismissed), **grief** (the narrator mourns, once, with a journal
entry, when the pet dies or an NPC the character was close to is found dead) and **letters** (after a long absence, an
NPC the character is close to "writes" a letter that appears in the journal at login: never game mail, never chat).
Issue #125 (proposal L11 of the analysis A2) asks for an event `ally_death`: a group member's death, verified from
`UNIT_DIED` against the GUIDs of the group, never with a secret identity, one lament per loss, behind a guard.

The milestone's ground rules hold: narration only (nothing changes how a pet or an NPC behaves in the game), never public
chat (D16), the numbers and lists in data, English then Italian for every string and line. Laments may be literary
pieces: they go through the literary pipeline and the songbook (ADR 0042-0044), which keeps ids and times only.

Forever gives addons no combat log (ADR 0005). ADR 0035 proposed a recipe for kills and deaths, still to be confirmed by
the owner's run of section N0; #125 asked for a two-client group test. On 2026-11-02 the owner decided to finish the
development without in-game tests: N8 is built on the API dump (build 70170: `UNIT_PET`, `UNIT_HAPPINESS`,
`C_PetInfo.GetPetHappiness`, `UnitIsDead`, `UnitIsDeadOrGhost`, `UnitIsFeignDeath`, `UNIT_DIED`, the party and raid units,
`C_Secrets`), behind Compat, and what play shows wrong becomes a new issue.

## Decision

1. **One module**, `Systems/Companion.lua` (after `Nemesis.lua`), every read through Compat. Its numbers
   and lists are the block `companion` of `Data/Relationships.lua` (routed by `Relationships:RegisterData`, value by
   value, so a pack can tune one). Its narrative events are declared in `base_relations`; each has an **event guard**
   (`ctx.companion` must name it), so only the module makes them speak, never `/au event`. All their lines are in the
   **inner voice** (the Chat Gateway never sends it), so none can reach chat whatever the chat mode.
2. **The companion pet.** `UNIT_PET` for the player (a new source) reads the pet: only when the character is a hunter
   (a beast) or a warlock (a demon), with a readable name and no secret identity. A pet is recognised by its name, kind
   and family; its record (`relationships.pets[n]`: name, kind, family, first and last seen, hours together, the bond's
   stage, deaths) holds **no GUID**; at most `pet.max` (20) are kept. The hours the pet is out are counted when it comes,
   goes and at the end of each fight (at most 6 hours in one step). The bond's stages are data (`new`, `familiar` at 2
   hours, `trusted` at 12, `bonded` at 40): a new stage offers `pet_bond`, and a memorable one (`trusted`, `bonded`)
   leaves a permanent journal line. A pet appearing is a **call** (`pet_call`) unless the character just entered the
   world (`pet.settle`) or is on a flight; a pet going away alive is a **dismissal** (`pet_dismiss`) one second later
   (time for a demon's `UNIT_DIED` to arrive) unless the character is dead; a change of `C_PetInfo.GetPetHappiness` on
   `UNIT_HAPPINESS` (a new source; hunters only, a demon has no happiness) is a **mood** (`pet_mood`). Calls,
   dismissals and moods speak at most once in `pet.callGap` / `pet.moodGap` seconds for each pet. The option
   **Companion pet** (`relations.companion`, on) silences them and the pet's grief; the bond is counted anyway.
3. **Grief, once per loss.** The narrator mourns with a line in the inner voice (priority "exceptional"), a journal page
   and, when one fits, a lament (decision 6). A grief that comes during a fight, or while the character is dead, waits
   for the fight to end or the character to come back (at most four wait). Every grief line is tagged `topic:death`, and
   a grief stirs the character's melancholy (`Data/Emotions.lua`, [ADR 0031](0031-intensity-traits-emotional-state-and-the-tone-of-a-return.md)).
   - **The pet** (`pet_grief`): `UNIT_DIED` with the pet's GUID, or the pet dead on `UNIT_PET` (a corpse), or a pet
     that went away and whose GUID dies within a second (a demon). Once per death: a revived pet can be mourned again.
     A pet found already dead on entering the world was not seen dying, and is not mourned.
   - **An NPC** (`npc_grief`): an NPC with a record at `grief.band` (Friend) or above, never one with a grudge (N1),
     targeted while dead, or dying while targeted (`UNIT_DIED` with the target's GUID). Not again for `grief.againDays`
     (30) for the same NPC (`mourned` on the record), at most `grief.perSession` (3) a session. The journal page is
     permanent and names the NPC from the record when it is shown.
4. **The death of an ally (#125, `ally_death`).** The group is read on `GROUP_ROSTER_UPDATE` and on entering the world:
   the GUID of each member the client shows (`party1..4`, or `raid1..40` without the character), never a secret
   identity or GUID, in memory only. A `UNIT_DIED` with one of those GUIDs is a loss **only when verified**: the same
   unit still has that GUID (else the roster is read again and nothing is told), its identity is not hidden, it is dead
   or a ghost (`UnitIsDeadOrGhost`), it is not feigning (`UnitIsFeignDeath`), and the character stands in a place of
   `ally.places` (the open world, dungeons and raids; never battlegrounds or arenas, where deaths are routine). The
   **guard**: one lament per loss; `ally.gap` (300) seconds between two (a wipe is one lament), `ally.allyGap` (900) for
   the same member, `ally.perSession` (6). The line may name the member (`{other}`, for this session only) and use the
   relation the user chose for them; the journal page says "a companion of the road" and keeps **no name**.
5. **One source per event.** `UNIT_DIED` belongs to N1 (`Systems/Hostility.lua`): its source now also hands every
   readable GUID to `Companion:Died`, which checks the pet, the group and the target. Nothing of it reaches the bus.
6. **Laments.** With a grief, the module chooses a literary piece of the event `lament` (in the verses pack: chance 0
   and a guard that never lets it speak) whose condition `grief` (`pet`, `npc`, `ally`) holds, in the language, out of
   combat and with the literary forms not *never*, preferring one the songbook does not have. It goes into the songbook
   with `Songbook:Add(id, "heard")` and a private notice gives its title. Three laments, English then Italian, in the
   project's own style, written through the authoring archive with metadata and editorial records; their three review
   steps are the owner's. Without the verses pack there is no lament, and the grief still speaks.
7. **Letters.** At login (not a `/reload`), eight seconds after entering the world, the NPCs that may write are those
   with a name kept, at `letters.band` (Close friend) or above, never a foe, not met for `letters.absenceDays` (21) days
   and not written for `letters.npcDays` (60): the closest writes, at most `letters.perLogin` (1), `letters.gapDays` (7)
   after the last letter. A letter is a permanent journal line of the kind `letter` whose tokens are the NPC's id, a role
   (the roles of `letters.roles`: innkeeper, merchant, trainer, and since N9 (#221) guard and quest giver; else `any`) and a variant: the text (`rel_letter_<role>_<n>` in
   `Data/<lang>/RelationsUI.lua`) is read when the journal shows it, with the NPC's name from the record. A private
   notice says a letter is waiting. The option **Letters** (`relations.letters`, on) turns them off.
8. **Conditions and a placeholder.** `petMood` (`unhappy`, `content`, `happy`), `petStage` (the stages of the data),
   `petKind` (`beast`, `demon`) and `grief` (`pet`, `npc`, `ally`); `{pet}`, the pet's name (the pet out now, or the
   one a line is about). None needs a person.
9. **Saved data.** `relationships.version` 8: `pets`, `letterT` (the last letter), and on NPC records `mourned` and
   `letter` (times). Version 7 data is valid as it is; the number changes because an older addon would drop the new
   fields, so it now reads them only. `/au relationships reset npcs` clears the pets and the letters' time too.

## Alternatives considered

- **A Story Arc per pet** (ADR 0045's arcs told for many NPCs). A pet is not an NPC record, its bond has no steps the
  user chooses, and its stages are better counted than told; the journal lines and the lines of the events suffice.
- **Real in-game mail for letters.** Forbidden by the issue: the addon never sends anything, and a letter must not look
  like a message from a person.
- **Health watching of the group** (`UNIT_HEALTH` to 0 on the party units). The bus owns `UNIT_HEALTH` for the player
  only, health can be secret, and `UnitIsDeadOrGhost` after `UNIT_DIED` says the same thing more simply.
- **Saving the group's GUIDs or names** to tell a loss later. Not needed: a loss is told at once, and nothing of another
  player is kept (ADR 0018).
- **Waiting for the N0 run and a two-client test.** The owner chose not to (2026-11-02).

## Consequences

- Positive: the pet, griefs and letters have no game effect and no field for one; every number and list is data; an
  unknown fact (a secret identity or GUID, an unverified death) stays silent; nothing of another player is saved.
- Negative or costs: the signals are unconfirmed in game. A pet dismissed by a flight path or a zone change may look
  like a dismissal (the settle time and the flight check cover the common cases); if `UNIT_DIED` does not fire on
  Forever, a group member's death is never told and a demon's death looks like a dismissal; a pet found dead is not
  mourned; a hunter's Feign Death on a member is excluded only if `UnitIsFeignDeath` answers. Section N8 of the in-game
  checklist lists what to try. The relationships' data has a new version.

## References

- Issues #220 (N8), #125 (A2 L11); #212 (N0), #213 (N1), #219 (N7), #122 (the songbook); milestone 9.
- [ADR 0005](0005-compat-secret-values-and-defensive-events.md) (Compat and secret values), [ADR 0018](0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md) (relationships), [ADR 0035](0035-attacks-kills-and-deaths-without-the-combat-log.md) (the detection recipe), [ADR 0041](0041-hostility-grudges-betrayal-witnesses-and-guest-right.md) (N1's sources), [ADR 0042](0042-literary-forms-category-pacing-line-breaks-and-long-reading.md) (literary forms), [ADR 0044](0044-songbook-recall-and-reading-frames-and-the-culture-of-origin.md) (the songbook), [ADR 0045](0045-nemesis-arcs-told-for-many-npcs-killed-by-and-the-song-of-a-fall.md) (the nemesis).
- `AzerothUnspoken/Systems/Companion.lua`, `AzerothUnspoken/Systems/Hostility.lua`, `AzerothUnspoken/Data/Relationships.lua` (`companion`), `AzerothUnspoken/Data/RegistryRelations.lua`, `AzerothUnspoken_Versi/Registry.lua`, `Tests/TestCompanion.lua`.
