# 0037. Promises, oaths and the oathbreaker mark

- Status: Accepted
- Date: 2026-11-01 (issue #216, step N4 of the NPC relationships milestone; owner decisions of 2026-11-01)

## Context

Since S6b (ADR 0018) accepting a quest and handing it in raise the axes of the NPC of the quest dialogue, and nothing
else: abandoning a quest, or leaving it open for weeks, says nothing about the character. The owner asked, in the spirit
of Tolkien's oathbreakers, that a quest be a word given to the quest giver, that breaking it cost trust, and that an oath
sworn to a friend be remembered by the NPC and by their city. The milestone's ground rules hold: narration only (an NPC
never behaves differently in the game), never public chat (D16), the numbers in data. The issue asks to store only quest
ids and times.

## Decision

1. **A promise is a quest id and a giver.** `QUEST_ACCEPTED` after an NPC's quest dialogue (the same "NPC of the last
   dialogue" rule as ADR 0018, within `QUEST_SECONDS`) adds `relationships.promises[questID] = { npc, t }`. Without a
   quest id, a giver or automatic NPCs, nothing. No quest title, text or objective is ever read for this. At most
   `promises.max` are kept (the oldest go first) and one older than `promises.maxDays` is let go on load.
2. **Kept, broken or lost, from the client's events.** `QUEST_TURNED_IN` keeps the promise (to whoever it was handed).
   `QUEST_REMOVED` without a turn-in breaks it, but only after `promises.settle` seconds, because the order of the two
   events at a turn-in is not proven; a hook on `C_QuestLog.SetAbandonQuest` / `AbandonQuest` settles it at once when the
   abandon dialog was used, and a quest the client flags as completed (`IsQuestFlaggedCompleted`) is never called
   broken. Without a timer the next quest or NPC event settles it. A promise whose quest the client says is no longer in
   the log (`IsOnQuest` false) is let go without a word: its end happened while the addon was not looking.
   `QUEST_REMOVED` moves from `Systems/World.lua` to the `QUEST_STATE` source of `Systems/Relationships.lua` (one source
   per event), and World rereads the log on the new `removed` state.
3. **The cost is an increment that is not a meeting.** `promise_broken`, `oath_broken` and `oath_kept` are rows of
   `increments` in `Data/Relationships.lua`; `R:Affect` applies them with the NPC's temperament (ADR 0036) without
   moving `last` or `count`. A negative gain is never capped. A level change it causes leaves its journal line; when a
   promise notice was just shown the level notice is not added to it.
4. **An oath is a promise to a named Friend.** If the giver is at the oath band (`promises.oath.band`, Friend) or above
   and is named (a kept name, or with `oath.curated` only the curated register), the promise is an oath and keeps the
   uiMapID where it was sworn: the place where the character stands at the giver's side, their town or city. Breaking it
   sets `oathT` on the NPC record and `relationships.marks[mapID]`, and leaves a `relation_oath` journal memory with
   tokens and a zone only.
5. **Marks fade evenly and weigh only on the addon's own numbers.** The NPC's mark lasts `marks.npcDays` divided by its
   `forget` (the long-lived peoples remember longer); the place's `marks.cityDays`. While a mark lasts, a positive trust
   gain from that NPC is multiplied by down to `marks.npcTrust`, and from anyone met on that map by down to
   `marks.cityTrust`, both fading with the mark. Nothing in the game changes.
6. **The voice is a private system notice.** Reminders (a promise open `remindDays`, met again, not ready to hand in, not
   again for `remindHours`), relief (handed late to the giver), a broken word, an oath remembered by the NPC or by the
   place (once a session each, the place quiet after the NPC has spoken) go through `Narrator:Notice`, never through the
   Director or the Chat Gateway, like the level notices of ADR 0036: `promises.perSession` per session, dropped in
   combat, silent with the narrator silent, and an option (`relations.promiseNotices`). The variants of each kind take
   turns.
7. **Conditions for the content.** `relPromiseDays` and `relOathbroken` are relationship conditions about the NPC of the
   interaction; `oathbreakerHere` needs no person. Three recall intentions for `relation_npc` use them; more come with N9.
8. **`relationships.version` 4.** `promises`, `marks` and the NPC field `oathT` bump the internal version: version 3 data
   needs no migration, and an older addon treats version 4 as read-only (ADR 0006) instead of dropping them. An NPC with
   an open promise or a mark is never dropped by the compaction.

## Alternatives considered

- **Reading the quest log to find the giver or the quest's name.** Rejected: the issue asks for ids and times only, and
  the quest log does not say who gave a quest. The NPC of the quest dialogue is the giver, as for the existing gains.
- **Calling every `QUEST_REMOVED` without a prior turn-in an abandon.** Rejected: if the client sends the removal before
  the turn-in, every quest handed in would count as broken. The short wait, the abandon hooks and the completed flag make
  that mistake unlikely; G1 step N4.3 checks it.
- **Reminders and relief as Director lines.** Rejected for the same reasons as the level notices (ADR 0036): the
  Director's chance could hide the one moment that matters, and a narrator line can become a public proposal in some
  chat modes. Recall lines with the new conditions stay possible through `relation_npc`.
- **A city mark through a faction or a region table.** Rejected for now: no data maps NPCs to cities, and the uiMapID of
  the place where the oath was sworn is the narrowest honest reading. A data table of cities can refine it later.
- **Changing what the NPC offers in game (refusing quests).** Out of scope by the ground rules: narration only.

## Consequences

- Positive: quests become words given; abandoning and lateness have a voice; an oath to a friend matters, and the place
  remembers it for months; all numbers are tunable in `Data/Relationships.lua`; nothing but numbers is kept.
- Negative or costs: the settle wait means a broken word is told a few seconds late when the abandon hooks do not fire;
  a quest accepted without its dialogue (items, shared quests) is a promise to nobody; a map id is coarse (a whole zone
  for a village, maybe a different map inside a capital's building).
- Not verified in the real client: the order of `QUEST_TURNED_IN` and `QUEST_REMOVED`, whether the abandon dialog goes
  through `C_QuestLog.SetAbandonQuest` / `AbandonQuest` in Forever, `IsOnQuest` and `IsQuestFlaggedCompleted` for
  these quests, the map read in capitals, and the feel of the notices (steps N4.1-N4.8 of `docs/G1_checklist.md`).

## References

- Issue #216; ADR 0006, 0018, 0036.
- `Systems/Relationships.lua` (promises and oaths), `Data/Relationships.lua` (`promises`, increments), `Systems/World.lua`
  (`QUEST_STATE` removed), `Engine/RuleEngine.lua` (conditions), `UI/RelationsFrame.lua` (detail, option),
  `Data/RegistryRelations.lua` (recall lines).
- `Tests/TestPromises.lua`.
