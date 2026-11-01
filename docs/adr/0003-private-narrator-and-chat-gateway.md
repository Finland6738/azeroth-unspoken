# 0003. Private narrator and Chat Gateway: nothing is sent without a player action

- Status: Accepted
- Date: 2026-10-29 (implemented in step S2; decision of the [roadmap](../../ROADMAP.md), no. 3 and 4)

## Context

The prototype posted automatic emotes to chat whenever something happened. For a roleplay addon this is risky behavior: it makes the character speak without the player's knowledge, it can flood the chat (spam), and it goes against the client's protections, which allow `/say` and `/yell` in the open world only after a user gesture (click, key, command). At the same time, narrative text has value even as private reading alone.

## Decision

1. **Separate private narration from sending to chat.** Every line first appears in the **private narrator** (`UI/NarratorFrame.lua`): a non-blocking box, visible only to the player. The **Chat Gateway** (`Integration/ChatGateway.lua`) decides whether and how a line can become chat text.
2. **Four modes** (`chat.mode`), with `PRIVATE` as the default:
   - `PRIVATE`: narrator only, never proposals.
   - `PREVIEW`: the public line becomes a proposal; the "speak" key opens the editor, and it is sent with Enter.
   - `CONFIRM_TO_SEND`: the proposal is ready and a player gesture sends it.
   - `AUTO_ONLY_IF_ALLOWED`: automatic sending **only** where the client allows it without a gesture (emotes anywhere, `/say` and `/yell` in instances) and **only** with a second consent (`output.autoPublicSay`). Everything else stays a proposal. *Q2 update (issue #8):* consent is not switched on by choosing the mode: it is given with **two gestures** (a warning and a confirmation within 10 seconds, `Gateway:SelectAuto`), the same for command, panel and wizard. *Wave-2 update (issue #178):* the confirmation can no longer be passed by a double-click and the warning is where the player looks: `Core/Consent.lua` shows the whole warning in a confirmation dialog (`StaticPopup`, in chat when the client has none) whose **Turn on** button is disabled for the first 2 seconds; a second gesture counts only after those 2 seconds and within 30 (`Consent.MIN_DELAY`, `Consent.WINDOW`), and one that comes too soon is ignored. The same two steps now protect the account-shared list, proximity and reading other players' Total RP 3 profiles (decisions D11 and D12 of issue #130); turning any of them off is one step. The automatic mode is not in the panel's mode cycle and, without consent, behaves like `CONFIRM_TO_SEND`; every mode change switches it off.
3. **Every line has a voice** (`speaker`): `narrator`, `inner`, `character`, `npc`. The `inner` and `npc` voices **never become proposals**. With the `publicChat` module off, behavior is the same as `PRIVATE`.
   *Q9a update (issues #152, #163):* the voice is not the only thing that keeps a line private. `Gateway:PrivateReason(rec)` is the one central check: a **monologue** (ADR 0032, even in the narrator voice), a line whose rule carries the tag **`lore` or `genre_*`** (a literary form, decision D16 of issue #130) and a line in a private voice can **never** become a proposal, never be rerolled into one and never be sent automatically, in any mode. It reads the record and the rule in `Engine.byId`, so it holds even when a pack's data is wrong, and `Propose`, `Reroll`, `SendPending`, `CopyToChat` and `Send` all ask it. The validator reports a `lore` or `genre_*` tag on a public voice as the error `literaryPublic`.
4. **Sending by player gesture goes only through `Gateway:PlayerAction(fn)`** (click, assigned key, command, Enter in the editor). `Gateway:Send` outside that scope refuses everything except `EMOTE` and, in an instance, `SAY`/`YELL` (reason `needs_action`): a timer or an event cannot send to public chat. Code that sends must go through `Gateway:Send` or `Gateway:SendPending`.
5. **Protections**: a minimum pause of 4 seconds between two sends, at most 6 per minute and 2 automatic ones (`chat.floodSeconds`, `maxPerMinute`, `autoMaxPerMinute`); a proposal waits for 25 seconds (`pendingSeconds`); text of at most `Config.CHAT_LIMITS[channel]` bytes (255, a single table also read by the validator, issue #19) with UTF-8 intact; no sending with chat locked by the client, with an unavailable channel or with empty text; client errors are recorded in diagnostics.
6. **The player controls the line**: they can edit it, change channel (`/s`, `/e`, party, raid, guild, instance) or discard it. An **immediate pause** (key, button, `/au pause`) suspends new lines.
   *Q2 update:* (a) with the **editor open** the proposal does not expire (the wait restarts when it closes), a spontaneous line does not replace it and, if it disappears anyway, the written text goes back to local chat (issue #4); (b) the text that goes out is **suited to the channel** (`Gateway:TextFor`): an emote outside `/e` carries the character's name, a spoken line in `/e` becomes "says, "…"", and the narrator shows what will go out (issue #5); (c) there is an alternative exit **"To chat"** (`Gateway:CopyToChat`, `/au copy`): the proposal, with the same text and truncation, goes into the standard chat box already on the right channel and the player sends it with their own Enter (issue #14). The button is hidden if the client does not offer `ChatFrame_OpenChat`; whether this route works where sending from the addon does not is an unknown for G1.
7. **Migration from the prototype**: schema 2 turns the old `output.mode` into `chat.mode` (`self` → `PRIVATE`, any public mode → `CONFIRM_TO_SEND`) and forces `autoPublicSay = false`. No automatic publishing without a new choice by the user.

## Alternatives considered

- **Publish automatically like the prototype.** Rejected: spam, client protections, the character speaking without the user's knowledge.
- **No exit to chat** (private reading only). Safe, but it takes away a legitimate roleplay use: saying a line chosen by the narrator. The Chat Gateway makes it possible with consent.
- **A single confirmation mode.** Less code, but it covers neither those who want to review the text first (`PREVIEW`) nor those who accept automatic emotes (`AUTO_ONLY_IF_ALLOWED`).
- **Letting other addons send with `Gateway:Send` without constraints.** Rejected: the player-action constraint must hold for everyone.

*Step 0 update ([ADR 0023](0023-english-first-addon-and-english-command-names.md)):* the commands named here are written with their English names, `/au pause` and `/au copy`; the Italian names this ADR first used were removed, and an Italian word now only gets a hint to the English command.

## Consequences

- Positive: the defaults are safe by construction; behavior is verifiable with tests for every combination of mode, form and voice (`Tests/TestChatGateway.lua`); a future Narrative Director can change when to speak without changing how lines go out to chat.
- Negative:
  - the value of a "spoken" line requires a gesture: less fluidity in the `PREVIEW` and `CONFIRM_TO_SEND` modes;
  - **the assumption "without a gesture only emotes and, in instances, `/say`" is cautious and has not been measured in the real client**: it is to be verified in the G1 test ([checklist](../G1_checklist.md) (in Italian), SP-05). If the client turns out to be stricter, the Gateway will report the refusal in diagnostics and the proposal will stay pending.
  - the `speaker` voice is currently derived provisionally from the form (`say` → `character`, `emote` → `narrator`) until schema v2 (step S3) brings it into the data.

## References

- GDD §4.2, §7.7, §14; [ROADMAP.md](../../ROADMAP.md), "Outcome of S2".
- `Integration/ChatGateway.lua`, `UI/NarratorFrame.lua`, `Systems/Director.lua`, `Core/Config.lua`.
- [docs/ARCHITECTURE.md](../ARCHITECTURE.md), [docs/G1_checklist.md](../G1_checklist.md) (in Italian).
