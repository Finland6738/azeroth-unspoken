# 0030. Proximity as a session proposal, and a list of people shared by the account's characters

- Status: Accepted
- Date: 2026-10-31 (second part of the Player relationships milestone, tracking issue #131; issues #113 and #114; decisions D11, D12 and D13 in #130; [ADR 0026](0026-player-records-user-choices-apart-from-observations.md), [ADR 0014](0014-normalized-event-bus-and-isolated-modules.md), [ADR 0005](0005-compat-secret-values-and-defensive-events.md))

## Context

Part 1 (ADR 0026) separated what the user chose from what the addon observed and fixed the rules: a record needs a user action, observations are kept only for people already in the list, nothing is saved from chat. Two things were left, both with an owner decision in #130:

- **D11, proximity.** Nameplates and mouseover show people the character walks past without any interaction. The owner accepts them only as an **optional**, **off by default**, **session-only** proposal for people **already known**, never creating a record by itself.
- **D12, one list or one per character.** An account with several characters may want the same opinions of the same people, but every character is also a role-play identity: sharing is an **opt-in** with a privacy and role-play warning, and per character stays the default.
- **D13** (a change of feeling is only ever suggested) is unchanged here: no suggestion is written yet and the criteria are still open.

Both touch what the narrator may do with a person's name, so the rules are written first and proved by tests.

## Decision

### Proximity (#113)

1. **A setting, off by default** (`relations.proximity`, the checkbox "Recognise nearby", `/au relationships proximity on|off`). While it is off the addon does not even register the two client events: `Systems/Relationships.lua` adds the sources `NAME_PLATE_UNIT_ADDED` and `UPDATE_MOUSEOVER_UNIT` to the bus when the option turns on and removes them (the new `EventBus:RemoveSource`) when it turns off. They fire very often, so an option that is off must cost nothing.
2. **What it does.**
   - A player **already in the list** (this character's, or, with the shared list on, the account's) is offered to the Narrative Director as `relation_player` through `R:Recognize`, the same candidate and **the same guard as joining a group**: at most once per person and session. The Director keeps its budget, moment and chance; silence is a valid outcome.
   - With the **Total RP 3 consent of S6c** (`interlocutor.trp3Others`), a person who is not listed but has a TRP3 profile becomes a **session suggestion** (`source = "proximity"`, memory only, shown in *People met*), like a target with a profile. It respects "Suggest people" and dismissals.
3. **What it never does.**
   - It never creates a record, whatever "Register by itself" says (`R:Suggest` is the lower half of `R:Propose` and never registers).
   - It never writes **anything**: not a count, not a fact, not `last`. A sighting is not an encounter: when the user later adds a suggested person, nothing from the sighting becomes their first observation.
   - It keeps **nothing about a stranger**, not even in memory: no cache of names, no list of "already checked" people.
   - It does not touch the `user` block (it is not on the allowed list of ADR 0026, and a test runs it over full records).
4. **Secret identities.** If `C_Secrets.ShouldUnitIdentityBeSecret(unit)` is true, the unit is dropped before its name is asked for (a test counts the calls); a name or realm that comes back secret is dropped too. Both are only counted for `/au debug`.
5. **Limits** (constants, hypotheses to tune in game): a pause of **60 s** between two proximity proposals (`R.PROXIMITY_GAP`) and **10 per session** (`R.PROXIMITY_MAX`). A person already recognised this session costs none of the budget. The sources ask `R:ProximityReady()` before publishing anything, so a busy city does not flood the bus.
   - *Amendment (#164, third review).* The pause and the budget apply only after a successful proposal, so on their own they did nothing about strangers: 200 unlisted players on nameplates in one second made 200 name reads and 200 bus events. The source now filters **before** publishing and before reading a name: (a) `R:ProximityHasTargets()`, a constant-time check that the list (the character's or the shared one) is not empty or the TRP3 consent is on, so with nobody to find a crowd costs nothing; (b) `R:ProximityAllow(unit)`, a time per unit token (`R.PROXIMITY_UNIT_GAP` = 0.5 s) and a global bucket (`R.PROXIMITY_LOOKUPS` = 20 a second, `R.PROXIMITY_BURST` = 20); (c) one name read, checked against the in-memory list. Only a listed person not yet recognised this session (or, with the consent, someone with a TRP3 profile) becomes a `PROXIMITY_UNIT`. The limiter keeps times per unit token ("nameplate7", "mouseover") and counters, never a name or a GUID, so point 3 holds. The accepted cost: in a flood a single sighting of a listed person can be thrown away, and the next nameplate or mouseover is looked at (proximity is best effort). Measured offline with a synthetic crowd of 300 nameplate events a second for 10 seconds (`Tests/bench_proximity.py`): name reads 3,100 → 0 with an empty list and 2,790 → 221 with 20 listed players; bus events 3,100 → 0 and 2,790 → 1. The real cost is measured in game with `/au prof` in a capital (`docs/G1_checklist.md`, "U-api").
   - The sources also unregister themselves when the relations module is found off, and `R:ApplyProximity` is called when the module changes (settings window, presets).
6. **The guard is shared**: a sighting before a group join uses the person's one recognition of the session. It is the literal reading of "the existing guard" and keeps the narrator from speaking about the same person twice whichever way they meet.

### The shared list (#114)

7. **Two layers.**
   - The **character layer** (`cdb.relationships.players`, version 2) is always there, is the default, and always holds this character's observations (`seen`) and `noted`.
   - The **shared layer** is `AzerothUnspokenDB.sharedPlayers = { version = 1, players = { ["Name-Realm"] = { source, user } } }`: choices only, **no observations, no journal flags**. It is created only when the user turns the option on (`relations.sharePlayers`, off by default) and sanitised on load with the same cleaning as the character's (`R:SanitizeShared`).
   - A shared list written by a newer version is left untouched and not used (like ADR 0006); the setting stays the user's.
8. **Turning it on needs a warning and two steps.** The first click or `/au relationships share on` shows the warning (privacy: anyone using the account sees the opinions and the file travels with the saved variables; role play: a character would feel what another chose) and opens a 15-second confirmation; the second step turns it on. Turning it **off** is one step and **deletes nothing**.
9. **How a shared and a character record of the same person combine: the character's own choices win, as a whole.**
   - A character record has **choices of its own** if its `user` block is not empty or it says `scope = "character"`. Then its block is the person's `user`, and the shared one is ignored for that person.
   - Otherwise the shared block counts (a read view whose `user` is the shared block itself and whose `seen` is this character's).
   - The two blocks are **never mixed field by field**: a character that set only a note does not inherit the account's axes. Field-by-field merging would make "zero" impossible to say (an axis at 0 is stored as missing) and would make it hard to tell where a value came from.
10. **Where a user action writes.** To the block that counts: the character's if it has choices of its own, else the shared record (made on demand by `R:Adopt`, which also covers `Interlocutor:SetTrait`). So with sharing on, the first choice about a person who has no choices of their own goes to the account; a person whose character record already has choices keeps them per character until the user shares them. **The user can switch either way** (`R:SetScope`, the button in the detail, `/au relationships scope <name> shared|character`): *character* gives this character a copy of the shared choices to keep and ignores the shared ones from then on; *shared* moves the character's choices into the account's record (replacing what was there, and says so) and leaves the character record with observations only.
11. **Who gets into the shared list.** Only a user action: adding a person while sharing is on, `R:SetScope`, `R:ShareAll`. A record made by "Register by itself" stays with its character; an observation of a person who is only in the shared list makes a character record with **empty choices** (`R:CharRecord`), so there is somewhere to keep what this character saw. That record carries `via = "shared"` and **no `source`**: it is not a person this character's user added, and it lives only as long as the shared record does (#155). It is ignored (`IsListed`, `PlayerKeys`, `Get`) and dropped at the next load when the shared record is gone or sharing is off, and dropped at once by the character that turns sharing off; a record that holds choices is never dropped. A user action that gives the character choices of its own (`R:SetScope(..., "character")`, `R:CopySharedHere`) clears `via` and takes the source from the shared record, so the person then stands on their own. The account's list and every `user` block are never touched by this.
12. **Migration.** Turning the option on moves **nothing**. `R:ShareAll` (`/au relationships share all`) moves the choices of this character into the shared list for people the account has no choices for, and **keeps this character's own choices** for those it has (they win; nothing is overwritten). It is repeatable. The way back is `R:CopySharedHere` (`/au relationships share copy`): every shared person gets a character record with the shared choices copied as the character's own, so turning the option off loses nothing for that character. **Off** keeps the account's list exactly as it was (a test compares it), unused, until the option is turned on again or it is cleared with `/au relationships reset shared`.
13. **Remove and reset.** *Remove person* with sharing on removes the person from both layers (they are the same list, and the tooltip says so). *Reset players* clears this character's records only; *reset shared* clears the account's list, by name, with the usual confirmation. With sharing off, removing a person never touches the account's list. The observation records that other characters made only through the list go when those characters next load (see 11).
14. **Counts and the list** are the union of the layers (`PlayerKeys`); `R:Get("player", key)` returns the real record, or the view; every reader that used `UserOf`/`SeenOf` keeps working.
15. **The rule of ADR 0026 holds for the shared block too**: the software never writes a user block. `R:SetScope` and `R:CopySharedHere` join the allowed list of `Tests/check_user_block.py` as user actions; `TestProximityShared.lua` runs the automatic paths (group, target, trade, combat, recognition, proximity, a long absence, a reload) over character and shared blocks and compares them, with a control that proves the comparison can fail.

## Alternatives considered

- **Share only the people, with per-field precedence.** Rejected, see 9.
- **Copy on turning on / move everything.** It would publish every opinion to the account without a click per person, and turning off could not tell what came from where. The explicit `share all` is the migration.
- **Share the observations too.** The warning says characters would share opinions; sharing *what each character lived* would make every alt "remember" meetings it never had, and the journal memories (`noted`) are per character already.
- **Record proximity as an encounter kind.** The hook in ADR 0026 suggested a new kind in `R.ENCOUNTERS`. A sighting is passive and constant (a nameplate appears many times a minute), it would turn `count` into noise and write to disk, against "session-only". Proximity writes nothing instead.
- **A guard of its own for proximity.** It would let the narrator recognise the same person twice in a session (nameplate, then group). The existing guard is what the issue asks for.
- **A cache of "checked" names to save lookups.** It would keep strangers' names in memory. The checks are cheap (a unit token, `UnitFullName`, a table lookup) and the sources already stop at the budget.
- **Always register the events and test the setting in the handler.** Simpler, but the client would call the addon for every nameplate for a feature that is off.

## Consequences

- Positive: both options are off by default and cost nothing; proximity cannot create or change anything, which the tests prove; the shared list can be turned on, tried, switched per person and turned off without losing data; the data model is two small, whole blocks with one rule.
- Negative or costs:
  - one more layer to reason about (`Get` may return a view; `rec.view` marks it; writes go through `Edit`/`Adopt`);
  - characters that share a list share opinions, which is the point and is warned about; a user who wants one character to differ uses `scope character`;
  - an empty character copy still counts as the character's own (`scope = "character"`), and an edit that empties a character's block makes the shared one count again;
  - **nothing here has been tried in the real client**: whether `NAME_PLATE_UNIT_ADDED` and `UPDATE_MOUSEOVER_UNIT` arrive as in the dump, whether `UnitFullName` works on a nameplate unit, how identities behave in secret contexts, and whether 60 s and 10 per session feel right (`docs/G1_checklist.md`, section "R4b2").

## Hooks left for the next issues

- **#112 (GUID, after the in-game identity tests #111):** unchanged; `seen.guid` stays reserved and per character.
- **Suggestions of a change of feeling** (D13): unchanged. A future module reads `seen` and shows a proposal; accepting calls a setter, which writes the block that counts.

## References

- Issues #113, #114; #130 (D11-D13); tracking issue #131.
- `Systems/Relationships.lua` (the shared layer, `Nearby`, `ApplyProximity`), `Core/EventBus.lua` (`RemoveSource`), `Core/Config.lua` (`sharedPlayers`, `NS.gdb`, the two settings), `UI/RelationsFrame.lua`.
- `Tests/TestProximityShared.lua`, `Tests/check_user_block.py`, the persistence section of `Tests/run_tests.py`.
- [ADR 0005](0005-compat-secret-values-and-defensive-events.md), [ADR 0006](0006-savedvariables-and-schema-versions.md), [ADR 0014](0014-normalized-event-bus-and-isolated-modules.md), [ADR 0026](0026-player-records-user-choices-apart-from-observations.md).
