# 0047. The observed GUID as an identity aid for players

- Status: Accepted (**GUID stability is not confirmed in game**: issue #111, the in-game identity tests, stays open for the owner; the design below works without it and is defensive about it)
- Date: 2026-11-02 (issue #112, accepted as written by the owner in #130; owner decision of 2026-11-02 to finish the development without in-game test gates; [ADR 0026](0026-player-records-user-choices-apart-from-observations.md), [ADR 0030](0030-proximity-session-proposal-and-account-shared-list.md), [ADR 0005](0005-compat-secret-values-and-defensive-events.md))

## Context

A player's identity in the list is `Name-Realm` (`R.PlayerKey`). Two things follow, both found by analysis A1 (§7.2, §7.7):

- a character deleted and recreated with the same name is taken for the same person, with the same notes and the same history;
- a rename (or a transfer) breaks the key: the person becomes a stranger and the record is orphaned.

The game gives every player a GUID (`UnitGUID`, the form `Player-<server>-<id>`). Issue #112 proposed keeping it in `seen`, never shown, and **asking** the user in the two cases, never deciding. The owner accepted that as written (decision in #130): changes are only ever suggested. The proposal depended on #111, the in-game tests that would show how long a GUID lasts, how it behaves in secret contexts and when `UnitGUID` answers at all. The owner first wanted the GUID saved only after those tests; on 2026-11-02 they decided to skip the in-game gates and build on the API dump. So this ADR builds the aid **defensively**: the name stays the identity, and every doubt about the GUID resolves to "unknown".

## Decision

1. **Identity stays `Name-Realm`.** Nothing keys, sorts, finds or merges by GUID. The GUID is one more observation: `seen.guid` of the **character's** player record (a `string`, the player GUID form, at most `R.GUID_LEN` = 40 characters). It is **never** in the `user` block, never in the shared list (`AzerothUnspokenDB.sharedPlayers` keeps choices only), never shown (list, detail, summary, export, `/au debug`), never in the context of the narrator, a Director candidate, a prompt or chat. A test walks all of those with a GUID in the data.
2. **Where it is read.** Only from a unit the addon already reads for the encounter: the **group scan** (`party1..4`, `raid1..40`) and the **target**, through `R.UnitGuid(unit)`:
   - `Compat:IsUnitIdentitySecret(unit)` first: a secret identity is not read at all;
   - then `UnitGUID` through `Compat.SafeCall`; a secret value, a non-string, a creature GUID, an empty or too long string reads as **unknown** (`R.CleanGuid`, which checks `Compat.IsSecret` before it looks at the length).
   - **Not** from proximity (ADR 0030 says a sighting writes nothing and asks nothing, and a test proves it), not from trades or whispers (no unit), not from chat or events' payloads.
3. **Unknown is not an error.** A missing, secret or malformed GUID does nothing: nothing is stored, nothing is asked, and the encounter is counted by name exactly as before. An unknown GUID is never compared with a known one.
4. **What is stored.** For a **listed** person with no GUID yet, the first GUID read is stored (`R:NoteGuid`). A GUID that already belongs to another listed person is never stored twice.
5. **Two questions, never a change.** Both live in memory for the session (`R.session.identity`, at most `R.IDENTITY_MAX` = 12, never saved), show in the People tab of the relationships window (a + for yes, an x for no), in `/au relationships identity`, and raise one private line (never chat, not in combat):
   - **Same name, different GUID** (`kind = "guid"`): "this looks like a different character from the one you noted: the same person?". Yes (`R:AcceptIdentity`) replaces the stored GUID; no (`R:KeepIdentity`) keeps it and does not ask again this session. The user's choices and the observations are not touched either way. If the user means "another person", `forget` (ADR 0026) drops the observations, GUID included.
   - **Same GUID, new name** (`kind = "renamed"`): read for anyone on the unit, listed or not, **compared in memory** with the listed people's GUIDs: "Aldric may now be called Aldrik: merge?". Yes **moves** the record to the new name with everything in it (the `user` block as it is, `seen`, `noted`, and the shared record when sharing is on); a name already in the list refuses ("that name is already in your list"). No leaves everything and does not ask again this session. A stranger's name appears only in this question and only while it waits; the GUID of a stranger is never stored.
   - These are **user actions**: `AcceptIdentity` and `KeepIdentity` answer a click or a command. The software never writes `user` (`Tests/check_user_block.py` still passes with an unchanged allowed list: a move of a record is not an edit of its block, and a test compares the blocks before and after).
6. **Defensive against unstable GUIDs.** Because stability is unproven:
   - a session that sees **`R.GUID_UNSTABLE` = 3** same-name mismatches stops using GUIDs until the next login: open questions are dropped, nothing more is stored or asked, `/au debug` says so and the diagnostics log it; the names carry on as if the aid did not exist;
   - the option **Identity code** (`relations.guidAid`, **on** by default, the accepted recommendation) turns reading and storing off; `/au relationships guid on|off`;
   - `/au relationships guid clear` drops every stored GUID (names and choices stay).
7. **Forget flows drop it.** `R:Remove` (the person, in the character's list and, with sharing on, in the account's), `R:ForgetObservations` (the new `seen` has no GUID), `R:Reset("players" | "all")`, `R:ClearGuids` and the loading of a record that only lived on from the shared list (ADR 0030, #155) all drop the GUID and the open questions about the person. Turning the shared list off keeps nothing of the GUID in the account's file, because it was never there.
8. **Saved data: `relationships.version` 9.** `seen.guid` is new in this version. A file of version 8 or older never had one written by the addon, so a `seen.guid` found there is **not trusted** and is dropped on load; in a version 9 file `R.CleanGuid` keeps only well-formed player GUIDs, and **two people never share a GUID** (the first in name order keeps it). A file of a newer version is read only and intact, as before (ADR 0006). The shared list stays at version 1.

## Alternatives considered

- **Wait for #111.** The owner decided to skip in-game gates; the defences (3 above, 6 and 8) are what make building now safe. #111 stays open and its results table, when it comes, tunes `GUID_UNSTABLE` and may justify reading GUIDs from more sources.
- **Key the record by GUID.** It would break every saved list, the shared list and the commands that take a name, and would make an unstable GUID destructive. Rejected: the name stays the key.
- **Merge or update by itself.** Forbidden by the owner's decision (D13 and #112): only a suggestion.
- **Store the GUID of strangers to recognise renames later.** It would keep data about people the user never chose (ADR 0026, 0030). The rename check compares only with the people already in the list.
- **Read GUIDs from nameplates or mouseover.** A sighting writes nothing (ADR 0030); and the cost of a read per nameplate is what ADR 0030's limiter exists to avoid.
- **Show the GUID to help the user decide.** It is meaningless to a person and a small privacy leak in a screenshot. The question says what changed (a name), not the code.

## Consequences

- Positive: a recreated character with a known name, and a rename, no longer pass silently; the cost is a few characters per listed person; the aid turns itself off in a session if GUIDs behave badly.
- Negative or costs: one question per mismatch until the user answers (bounded); a person who is in the list but never seen on a unit never gets a GUID; the shared list does not share the GUID, so each character learns it on its own.
- **Not verified in game:** that `UnitGUID` answers for group members and the target as the dump says, that it is stable across sessions, relogs and name changes, and how it behaves in secret contexts. Section ID of `docs/G1_checklist.md` lists what to try; what play shows wrong becomes a new issue, and #111 is where the owner records the results.

## References

Issues #112, #111, #130, #107; [ADR 0026](0026-player-records-user-choices-apart-from-observations.md), [ADR 0030](0030-proximity-session-proposal-and-account-shared-list.md), [ADR 0005](0005-compat-secret-values-and-defensive-events.md); `Systems/Relationships.lua` (`R.CleanGuid`, `R.UnitGuid`, `R:NoteGuid`, `R:AcceptIdentity`, `R:KeepIdentity`), `Tests/TestIdentity.lua`.
