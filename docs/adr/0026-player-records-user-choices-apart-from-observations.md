# 0026. Player records: what the user chose is kept apart from what the addon observed

- Status: Accepted
- Date: 2026-10-30 (first part of the Player relationships milestone, tracking issue #131; issues #107, #108, #109, #106 and #110; decisions D11-D14 in #130; [ADR 0017](0017-living-memory-selective-memories-and-honest-recall.md) and [ADR 0018](0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md))

## Context

Until now a player record mixed two kinds of data in one flat table:

- what the **user** decided: the axes they set, the label, the note, the tags, how they see the person (traits, role);
- what the **addon** noticed: when the person was first and last met and how many times (`first`, `last`, `count`).

The software already never changed a player's axes by itself (`SetAxis` and `AdjustAxis` were called only by the interface and the commands), but nothing in the data or in the tests said so. The owner wants the character to remember other players and to grow a personal story with them, which means more observations (encounters by type, places, shared experiences) and, later, **suggestions** ("this person has stood by you six times: do you feel gratitude?"). Without a clear line, the first automatic feature that touches `trust` would silently overwrite a choice the user made. The owner's decisions in #130 are explicit:

- **D11** only direct interactions count (group, trade, duel, emotes aimed at us, the target), proximity stays optional and off by default, and **no player is ever added without a user action**;
- **D13** a change of feeling may only ever be **proposed**, accepted or rejected by the user; the software never applies it;
- **D12** and **D14** (per character; the GUID only after the in-game identity tests) shape where the data lives and what the hooks look like.

## Decision

1. **Two blocks.** A player record (`relationships.players["Name-Realm"]`) is
   `{ source, noted, user = {...}, seen = {...} }`:
   - `user` holds what the user chose: `axes` (the axes edited by hand, sparse), `label`, `feeling` (up to two words), `note`, `tags`, `traits` and `role` (how they see the person, S6c);
   - `seen` holds what the addon observed: `first`, `last`, `count`, `kinds` (encounters by type), `facts` (a ring of the last 5 short facts) and a reserved `guid` (empty until #112).
   `source` ("user" or "auto": who added the person; a record made only from the shared list has `via = "shared"` instead, ADR 0030) and `noted` (the journal memories already made for a bond) are bookkeeping and stay on the record. **NPC records stay flat**: their axes are computed by the addon from what the user does with them, and the user's choices on an NPC (label, note, tags, feeling, traits) are fields of the same record.
2. **The software never writes `user`.** Only the functions that answer a user action write it: the setters of `Systems/Relationships.lua` (`SetAxis`, `AdjustAxis`, `SetLabel`, `CycleLabel`, `SetNote`, `SetTags`, `SetFeelings`, `CycleFeeling`, `ApplyFeelingPreset`, all behind the single entry point `Edit`), `AddPlayer` (which creates the empty block when the user adds the person), `Interlocutor:SetTrait`, and the two functions that shape data already on disk (`MigrateV1`, `CleanRecord`). Everything automatic (events, the Director, observation, decay, suggestions) writes only `seen`. It is enforced twice:
   - **a behaviour test** (`Tests/TestPlayers.lua`): a record with every kind of choice goes through every automatic path (group, trade, duel, invite, emote, whisper, target, a shared fight, the Director, a long absence, a restart, "forget observations") and its `user` block must be identical afterwards, with a control that proves the comparison can fail;
   - **a source check** (`Tests/check_user_block.py`, run by the test suite): no function outside the short allowed list may assign to, insert into or alias-and-write the user block. A new feature that needs to write it has to add itself to the list with a reason, in review.
3. **Future suggestions are proposals.** A suggestion (for example a feeling the encounters seem to support) is data the addon keeps in `seen` or in the session and shows to the user; accepting it is a user action that calls the same setters. Nothing changes a choice by itself (D13). The criteria for suggesting are still to be decided before any is written.
4. **Two different actions in the window.** "Forget observations" empties `seen` (counts, encounters, facts) and leaves the person and everything chosen; "Remove person" deletes the record. The detail of a player has two sections, "What you chose" and "What the addon observed".
5. **Observations are recorded only for people already in the list** (D11): `R:Observe(name, kind)` ignores anyone else, so a duel, an invite, an emote or a target never creates a record, nor even a suggestion. Group, trade and a private reply still *suggest* a person for this session, as before; a person enters the list only with the user's click, and when the user adds a suggested person, the encounter that proposed them becomes the first observation. The `kinds` are `group`, `trade`, `duel`, `invite`, `emote`, `whisper` and `target` (they update `count` and `last`) and `group_combat` (a fight fought in a group: it updates `last` and the tally by kind, not `count`). The same kind with the same person inside 10 minutes is one encounter.
6. **No text, ever.** A fact is `{ kind, place (map id), zone name, time }`. No chat, whisper or emote text is read into it or saved (a test searches the saved data for the text). Only the addressee of an emote, the name behind a duel or an invite, and the name of a whisper's recipient are read.
7. **Migration.** `relationships.version` goes from 1 to 2. `MigrateV1` moves the flat fields into `user` and `seen` (nothing lost, nothing invented: no kinds, no facts), is idempotent, and returns a record that already has the new shape as it is. Data from a version newer than the addon's still loads read-only and untouched (ADR 0006). Version 2 data cannot be read by an addon of version 1: a downgrade sees `version 2 > 1` and the module turns read-only instead of misreading the blocks.
8. **Feelings and the `ally` label** (#109) are the user's words, in `user`: `feeling` is up to two of `trust`, `liking`, `wariness`, `fear`, `resentment`, `gratitude`. They give the tags `rel.feeling:<id>` (a set trait, so `rel.req:` and `rel.not:` work) and the condition `feeling`. Each feeling has a **preset** of axes (data, `Data/Relationships.lua`) that the user can ask for with a button or a command: it only raises an axis where it is weaker than the preset and never lowers a stronger value the user set. Choosing a feeling does not touch the axes or the label. The `ally` label is `manualOnly`: the addon never derives it, so no existing relation changes label. A `warm` line is dropped for a person with a negative feeling (`wariness`, `fear`, `resentment`) whatever their label is, so the #105 rule holds for the user's words too.
9. **`relation_player`** (#106) is a Director candidate with the "memory" priority and a guard (a listed player). It is offered once per person and session: when a listed player joins the group, when one duels, invites or emotes at the character, and on target only if the user turns on **Recognise on target** (off by default). The Director keeps its budget, moment and chance: silence is a valid outcome, and the observation is recorded either way. The line goes to the private narrator like every other event: no new road to public chat (ADR 0003, ADR 0018 unchanged).
10. **Conditions from the observations** (#110): `relDaysSince`, `relMetHere` and `relShared` read `seen`, but from the state *before the first meeting of the session*, so "nine days since we last met" does not become "0 days" the moment the person is recognised. They are false without a previous meeting, and they count as relationship conditions for the validator.

## Alternatives considered

- **Keep the flat record and rely on convention.** That is how it was: true by habit and unprovable. The first automatic feature that touches an axis would break a user choice without any test noticing.
- **Make `user` read-only with a metatable.** It would catch writes at run time, but a Lua metatable does not survive saving to disk, hides bugs as errors in the middle of a session, and the allowed writers still need an escape hatch. Two tests (one by behaviour, one by source) catch the same mistakes before release.
- **Put observations in a separate table keyed by name** (`seenBy[name]`). Simpler migration, but a person removed from the list would leave orphan observations, and "Forget observations" and "Remove person" would have to coordinate two tables.
- **Split NPC records as well.** NPCs are computed, not chosen: their axes are the addon's output and decay. A block called `user` would be mostly empty and the migration would touch up to 1,000 records for no gain. The accessors (`R.UserOf`, `R.SeenOf`) hide the difference.
- **Count every emote or target change as an encounter.** It would turn the count into noise (one wave per second). The 10-minute gap per kind keeps `count` meaningful and the ring of facts useful.
- **Derive `ally` from the axes.** It would change the label of existing relations, against "existing relations unaffected" in #109, and a label the user gives deliberately is a better signal than a threshold.
- **Recognise the target by default.** Targeting is constant (clicking nameplates, assisting): the narrator would speak on every click. It stays an opt-in; joining a group and an interaction are the natural moments.

## Consequences

- Positive:
  - a user choice can only change through a user action, and the tests say so;
  - the observations can grow (places, shared experiences, later the GUID of #112 and proximity of #113) without touching what the user wrote;
  - the window can show and clear them separately; the export has the counts;
  - "Remove person" and "Forget observations" mean different things.
- Negative or costs:
  - the player records change shape: any code or external tool that read `players[key].trust` or `.note` directly must read `players[key].user...` (the repository's own code and tests were updated; `R.UserOf` and `R.SeenOf` give the right table for both kinds);
  - the allowed list of writers has to be maintained in `Tests/check_user_block.py`;
  - **nothing here has been tried in the real client**: the roster scan after `GROUP_ROSTER_UPDATE`, `UnitFullName` on party and raid members, emotes with a recipient, `C_Map.GetBestMapForUnit` at the moment of an encounter, and how the window looks at its new height (`docs/G1_checklist.md`, section "R4b");
  - the thresholds (10 minutes between encounters of one kind, 5 facts, one candidate per session) are hypotheses to tune in game.

## Hooks left for the next issues

- **#112 (GUID, after the in-game identity tests #111):** `seen.guid` exists and is cleaned on load but nothing writes it. It will be written by the observation code, never shown and never used for an automatic merge; a rename will be asked of the user (D14).
- **#113 (proximity):** done in [ADR 0030](0030-proximity-session-proposal-and-account-shared-list.md): not a new kind in `R.ENCOUNTERS` after all (a sighting is passive and constant), but a session-only proposal through `R:Recognize` that writes nothing.
- **#114 (shared list in the account):** done in [ADR 0030](0030-proximity-session-proposal-and-account-shared-list.md): a separate opt-in store in `AzerothUnspokenDB.sharedPlayers`, the character's own choices winning as a whole. The rule above holds for the shared `user` block too.
- **Suggestions of a change of feeling** (D13): a future module reads `seen` and shows a proposal; accepting calls `SetFeelings` or `SetAxis`, which are user actions. The criteria are still open.

## References

- Issues #107, #108, #109, #106, #110; #130 (D11-D14); tracking issue #131.
- `Systems/Relationships.lua` (record shape, `Observe`, `Recognize`, the setters), `Data/Relationships.lua` (feelings, `ally`), `Engine/RuleEngine.lua` (conditions), `UI/RelationsFrame.lua`, `Data/RegistryRelations.lua` (the `rel.player.*` lines).
- `Tests/TestPlayers.lua`, `Tests/check_user_block.py` and the persistence section of `Tests/run_tests.py`.
- [ADR 0006](0006-savedvariables-and-schema-versions.md), [ADR 0017](0017-living-memory-selective-memories-and-honest-recall.md), [ADR 0018](0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md).
