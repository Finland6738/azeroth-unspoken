# 0042. Literary forms: a category paced on its phrases, line breaks kept in private, long reading in the narrator

- Status: Accepted (offline only: the scroll box, the line-by-line reveal and the history's line breaks are **not yet tried in game**)
- Date: 2026-11-02 (issues #117, #118 and #126; owner decisions D15, D16 and D20 in #130; in-game gates skipped by the owner's decision of 2026-11-02)

## Context

The prototype pack `AzerothUnspoken_Versi` (L0, #115) wrote its verses on one line, separated by `" / "`, because the
engine had three gaps that analysis A2 had found in the code:

1. `Engine:PickEntry` (`Engine/WeightedSelector.lua`) collapsed spaces, tabs **and line breaks** into one space, so a
   verse could never keep its shape, although the validator allows `\n` and the narrator's font string can show it.
   `Gateway:Send` sends one message: a line break reaching `SendChatMessage` was a risk nobody had measured.
2. `NS:RegisterCategory(id)` took no options. A new category got no pause and the default budget (3 interventions in 10
   minutes): far too many for poetry. And the budget belongs to the **event** that speaks (`zone`, `pray`, `travel`),
   while a verse is one phrase among the ordinary lines of that event: the event's budget cannot make the verse rare.
3. The narrator box grew with its text, with no maximum height and no scrolling; a tale of about 600 bytes would cover
   the screen and stay the plain reading time of one line.

The owner decided in #130: literary forms are rare and on by default, about one every 20-30 minutes at intensity 50,
never in combat, with the setting "never / rare / normal" (D15); they never reach public chat, in any mode (D16); long
texts are read in the narrator, taller, with a maximum height, scrolling and line-by-line reveal (D20).

## Decision

1. **A category may have its own pacing, from data.** `NS:RegisterCategory(id, { budget, window, cooldown, minCooldown })`
   (and the pack field `categories = { id = def }`) fills `Engine.CATEGORY_DEFS`: `budget` interventions in `window`
   seconds and `cooldown` seconds between two, both at intensity 50 and scaled like the other categories, never under
   `minCooldown`. `Pacing:Budget`, `Pacing:Window` and `Pacing:CategoryCooldown` read the definition first and the old
   tables (`Pacing.BUDGET`, `CATEGORY_COOLDOWN`, `WINDOW`) after, so the seven base categories behave as before. The
   validator refuses a definition out of range (`badCategory`).
2. **Such a category is paced on its phrases, whatever the event.** Before a spontaneous line is picked, the Director
   asks `Pacing:Closed` for the categories with a definition that cannot speak now (pause running, budget spent) and
   puts the set in `ctx.closed`; `Engine:Eligible` leaves their phrases out of that pick. When one of them speaks on an
   event of another category, `Pacing:RecordPhrase` starts its pause and spends its budget; a phrase asked for (a
   command, `/au event`) starts the pause only. The event keeps its own category, budget and quota: a verse said at a
   ruin is also an exploration line.
3. **The literary category is `lore`.** `Data/Themes.lua` declares it with one piece in 25 minutes, a pause of 20
   minutes and a floor of 10 (`budget = 1, window = 1500, cooldown = 1200, minCooldown = 600`). A rule tagged as a
   literary form (`lore`, `genre_*`: the D16 guard of #163, ADR 0003) gets the category `lore` when it does not name one;
   one that names another category is a validator error (`literaryCategory`). The setting `literary.frequency`
   (`never`, `rare` by default, `normal`; panel row "Literary forms", `/au literary`) scales the category: `normal` is
   twice the budget and half the pause, never under the floor; `never` closes it. `Pacing:LiteraryClosed` closes it
   also during a fight; both hold for explicit requests too (`never` means never; a fight is a fight).
4. **Line breaks are kept in private and never reach chat.** `Engine.NormalizeSpace` replaces the old collapse: runs
   of spaces and tabs become one space, line breaks stay (at most one empty line between stanzas, none at the ends, no
   space around them); a text without a break comes out exactly as before. On the way to chat, `Gateway.OneLine`
   writes `" / "` for every break, in `TextFor` (so the proposal's display shows what chat will get), in `Send` (whoever
   calls it) and in the editor (`SetPendingText`). `Gateway:PrivateReason` also reads the category: a `lore` record or
   rule is private in every mode, whatever its voice or tags. The validator warns about a line break in a public voice
   (`multilinePublic`) and gives a literary form in a private voice the reading limit `Config.CHAT_LIMITS.READING`
   (600 bytes) instead of 400.
5. **Long texts are read in the narrator.** The narrator text sits in a scroll frame: the box is as tall as the whole
   text from the start, up to `MAX_LINES` (12) lines of the chosen size; a longer text scrolls with the mouse wheel,
   which the box takes only while there is more to read (never a click). A text with line breaks appears one line at a
   time: each line after the time to read the one before at the chosen reading speed, plus 0.8 seconds; the box follows
   the newest line unless the player scrolled. "Reduce motion" shows the whole text at once, with the same reading
   time (the base duration plus every line). The history keeps the breaks: one message per line, the later ones
   indented.

## Alternatives considered

- **A `lore` event category only.** The verses speak on `zone`, `pray`, `travel` and the other ordinary events, so an
  event category would need new events and duplicated triggers, or would not apply at all.
- **Rarity by weight or by per-piece cooldown only.** The pieces already have cooldowns of three to seven days, but
  with fifteen pieces and more to come the session rate is unbounded; the user's setting needs one dial.
- **A separate reading window** (the other option of #126). The owner chose the narrator (D20); a second window would
  need its own place, layer and keys.
- **Splitting a verse into several narrator lines.** Each would be an intervention, would compete with the others and
  could be interrupted by a proposal; one record with breaks stays one intervention.

## Consequences

- Positive: a pack can declare a rare category in data, without code; the literary forms are rare by construction and
  the user can turn them off; the D16 guard now holds on the category as well as on the tags; no line break can reach
  `SendChatMessage`; verses keep their shape in the narrator, the NPC dialogue window and the history.
- Positive: the offline pacing simulation (four hours, `lit_muse` offered every minute, `Tests/TestLiterary.lua`) gives
  8 pieces at intensity 50 with at least 30 minutes between two, never two within 10 minutes at intensity 100 or with
  "normal", none with "never" or in combat.
- Negative or costs: one more set per spontaneous pick (`ctx.closed`, usually empty) and one more comparison per phrase
  only when a category is closed. The scroll frame, the mouse wheel over a box that otherwise lets clicks through, the
  reveal timing, line breaks in `ScrollingMessageFrame` and in the NPC dialogue window are **not tried in the client**
  (steps L2.1-L2.6 of `docs/G1_checklist.md`, section L2).
- Interfaces for the next steps: the literary metadata and stanzas (#119, #120, #127, #128) can rely on `\n` and on
  `"\n\n"` as a stanza break kept by `NormalizeSpace`; the songbook and recall frames (#122, #123) can use the category
  `lore`, `Pacing:RecordPhrase` and `Pacing:LiteraryClosed`; the culture of origin (#124) is a condition, untouched here.

## References

- Issues #117, #118, #126; decisions D15, D16, D20 in #130; the D16 guard of #163; analysis A2 §1.5, §1.6, §3.2, §7.6.
- `Engine/Pacing.lua`, `Engine/PhraseRegistry.lua` (`RegisterCategory`, `CATEGORY_DEFS`, `LITERARY_CATEGORY`),
  `Engine/WeightedSelector.lua` (`NormalizeSpace`, `Eligible`), `Systems/Director.lua`, `Integration/ChatGateway.lua`
  (`OneLine`, `PrivateReason`), `Engine/Validator.lua`, `UI/NarratorFrame.lua`, `Data/Themes.lua`, `Core/Config.lua`.
- ADR 0029 (category quotas and hunger), ADR 0032 (monologues are private), `AzerothUnspoken_Versi` (L0).
