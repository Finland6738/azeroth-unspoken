# UI and UX review (U1)

A review of the addon's interface by a panel of four experts, with mockups of every window. It covers accessibility,
aesthetics and UX, and was made from the code only. **Nothing has been tested in the real client yet.** The findings
are predictions from the code (sizes, anchors, colours, strings), and so are the mockups: each one says it is an
illustrative mockup, not an in-game screenshot.

- Branch reviewed: `main` at the Q9c commit (version 0.1.0, Interface 16001).
- Scope: `AzerothUnspoken/UI/` (Commands, DialogueFrame, JournalFrame, NarratorFrame, ProfileFrame, RelationsFrame,
  SettingsFrame, SpeakButton, Widgets, Wizard), the Chat Gateway proposal and editor
  (`AzerothUnspoken/Integration/ChatGateway.lua`), the interface strings (`AzerothUnspoken/Data/enUS/`,
  `AzerothUnspoken/Data/itIT/`), the defaults (`AzerothUnspoken/Core/Config.lua`), the bindings, the wiki, the
  architecture and ADR 0003.
- Outcome issue: [UI review: outcome (#194)](https://github.com/Finland6738/azeroth-unspoken/issues/194)

## The panel

| Role | Focus | Raw findings |
|---|---|---|
| Senior frontend developer | frame lifecycle, layout robustness, state sync, input focus, API use | 24 (1 Critical, 2 High, 8 Medium, 13 Low) |
| UI and visual designer | classic look without Blizzard art, hierarchy, spacing, consistency, immersion | 25 (1 Critical, 5 High, 11 Medium, 8 Low) |
| Accessibility specialist | contrast (computed WCAG ratios), scaling, keyboard, timing, motion, consent | 22 (5 High, 12 Medium, 5 Low) |
| WoW addon UI expert | classic-era conventions, Esc, bindings, chat output, combat, TRP3 etiquette | 23 (3 High, 10 Medium, 10 Low) |

The 94 raw findings overlap heavily. They are merged below into **23 findings**: **1 Critical, 9 High, 11 Medium,
2 Low**. Each merged finding lists the source IDs of the panel (FE, VD, A11Y, WOW) and the GitHub issue that tracks
it. Severity is the highest given by a panel member, unless the merged finding was narrowed.

## What already works

- Every consent defaults to the safe value: chat mode `PRIVATE`, `autoPublicSay = false`, proximity, shared list and
  other players' Total RP 3 all off (`AzerothUnspoken/Core/Config.lua:122-164`). Each can be turned off again with one
  click, and turning the shared list off deletes nothing.
- Each voice has a written label as well as a colour (`AzerothUnspoken/UI/NarratorFrame.lua:145-151`). The proposal
  text in the narrator is exactly what other players will see (`AzerothUnspoken/Integration/ChatGateway.lua:244-252`).
- Hovering the narrator keeps it on screen. There is a history, and the box can be turned off, in which case lines go
  to the chat frame.
- The only animation is a 1.5 s fade-out: no flashing, no typewriter reveal.
- The opaque windows (journal, relationships, profile, wizard) pass WCAG AA easily: 6.5:1 or better.
- Key bindings have a header and names (`BINDING_HEADER_AZEROTHUNSPOKEN` and `BINDING_NAME_*` in
  `AzerothUnspoken/Core/Bootstrap.lua:24-36`). The panel is registered in the client's options, with a fallback.
- No frame is protected, so there is no combat-lockdown or taint risk. Chat sends that need a key press or a click
  happen only from one.
- The NPC dialogue window is labelled "addon ambient dialogue" on a distinct band, places itself away from Blizzard's
  windows, and on purpose does not close with Esc (ADR 0020).

## Findings by severity

### Critical

#### UI-01. The relationships list hides its own text

- **Where:** `AzerothUnspoken/UI/RelationsFrame.lua:115-123` (row button), `:121` and `:55-60` (cell texts created on
  the window).
- **What:** each list row is a 608 px red `UIPanelButtonTemplate` button, a child frame of the window. The six cell
  texts are regions of the window. The client draws a child frame above every layer of its parent, so the opaque
  button is predicted to cover the name, type, label, disposition, date and count. The list would show twelve blank
  red bars. Only the empty state shows, because the button is hidden then.
- **Recommendation:** create the cells on the row button, or make the rows plain buttons with a highlight texture and
  no panel art (the usual list-row pattern).
- **Sources:** FE-01, VD-01. **Labels:** bug, priority:high. **Issue:** [#171](https://github.com/Finland6738/azeroth-unspoken/issues/171)
- **Mockup:** `relations-list.png` showed the predicted result; since the fix it shows the plain rows that own their cells.

### High

#### UI-02. The relationships window is taller than the screen

- **Where:** `AzerothUnspoken/UI/RelationsFrame.lua:29` (`HEIGHT_LIST, HEIGHT_PLAYER = 758, 914`), `:320`, `:578`.
- **What:** at UI scale 1 the screen is 768 units tall. A player's detail is 914 units, so the options (including the
  consent toggles "Recognise nearby" and "Share with the account"), Export, Forget everything and Close fall off the
  bottom. `SetClampedToScreen` cannot clamp a frame taller than the screen. The list view is 758 units, almost the
  full height, with about 128 units of empty space between the pager and the options.
- **Recommendation:** keep every window at 680 units or less. Put the detail body in a scroll frame or in two columns,
  and move the seven options to the settings or to their own tab. See `proposed-relations-detail.png`.
- **Sources:** FE-02, VD-02, A11Y-04, WOW-02. **Labels:** bug, accessibility, priority:high. **Issue:** [#172](https://github.com/Finland6738/azeroth-unspoken/issues/172)

#### UI-03. Narrator opacity is applied twice: the text fades too and fails contrast over bright scenes

- **Where:** `AzerothUnspoken/UI/NarratorFrame.lua:102`, `:409`, `:418`; default `AzerothUnspoken/Core/Config.lua:181`,
  range `:223`.
- **What:** the background is set to `0.65 × alpha`, then the whole frame to `alpha`. At the default 85% the
  background is 0.47 opaque and the white text is drawn at 0.85. Over a bright scene (snow, sky, spell effects) the
  text reaches **3.06:1** (fails AA). At 50% opacity it is 1.22:1; at the 20% minimum it is 1.01–1.66:1, unreadable.
  The 11 px voice labels reach only 1.5–2.2:1 over bright scenes. The panel says "Opacity: 85%" while the box is under
  half opaque.
- **Recommendation:** apply the setting to the background only, keep the text at full opacity, and use the frame alpha
  only for the fade-out. Keep the effective background at 0.55 or more (white text then stays at 4.5:1 or more over a
  white scene). Draw the voice label at 12 px or more. An optional "Outline text" toggle helps too.
- **Sources:** A11Y-01, A11Y-02, VD-07, FE-14. **Labels:** bug, accessibility, priority:high. **Issue:** [#173](https://github.com/Finland6738/azeroth-unspoken/issues/173)
- **Mockups:** `narrator-*.png` (current), `proposed-narrator-bright.png`.

#### UI-04. Esc closes no window, and most windows have no close box

- **Where:** no `UISpecialFrames` entry anywhere (only the deliberate exclusion at
  `AzerothUnspoken/UI/DialogueFrame.lua:8`). Frames: `AzerothUnspoken/UI/Wizard.lua:258`, `JournalFrame.lua:303`,
  `:455`, `RelationsFrame.lua:319`, `ProfileFrame.lua:80`, `NarratorFrame.lua:280`.
- **What:** Esc opens the game menu over the journal, relationships, character soul, export and wizard windows,
  including the wizard that opens by itself at the first login (`Wizard.lua:313-317`). Close is only a button at the
  bottom right, which is off screen in UI-02. The narrator history has no close control at all and stays on screen
  after the box fades (`NarratorFrame.lua:279-301`, `:73-77`).
- **Recommendation:** register every named window in `UISpecialFrames` (not the dialogue window). Esc on the wizard
  should do what Skip does. Add a close box at the top right of every window and of the history, and a key binding to
  toggle the history.
- **Sources:** A11Y-06, A11Y-07, WOW-03, FE-04, FE-15. **Labels:** bug, accessibility, priority:high. **Issue:** [#174](https://github.com/Finland6738/azeroth-unspoken/issues/174)

#### UI-05. `/au help` and the pause button contain raw `|` escapes

- **Where:** `AzerothUnspoken/UI/Commands.lua:202-230` (usage strings), `:77-82`; `AzerothUnspoken/Core/Bootstrap.lua:136-138`;
  `AzerothUnspoken/UI/NarratorFrame.lua:154`, `:344`; also `soul_help` in `AzerothUnspoken/Data/enUS/Interface.lua`.
- **What:** `|` is the client's escape character. The usage strings separate options with a bare `|`: `|n` (in
  "neutral", "note") starts a new line and `|r` (in "reset", "raid", "role", "resume") is swallowed, so
  `/au narrator [history|reset|clear]` reads "historyeset". `|c`, `|t` and `|a` may garble more. `/au help` is the
  main discovery surface. The narrator's pause button `SetText("||")` shows a single bar.
- **Recommendation:** write the separators as `" / "` or `||`, use a pause glyph that is not `|`, and add a test that
  fails on a bare `|` in any usage or help string.
- **Sources:** WOW-01, WOW-16. **Labels:** bug, priority:high. **Issue:** [#175](https://github.com/Finland6738/azeroth-unspoken/issues/175)
- **Mockups:** `chat-help.png`, `chat-help-window.png`.

#### UI-06. A proposal can be sent after it has left the narrator

- **Where:** `AzerothUnspoken/UI/NarratorFrame.lua:174-181` (`Reveal`), `:187-204`;
  `AzerothUnspoken/Integration/ChatGateway.lua:603-606`.
- **What:** when a private line, a monologue or a story notice arrives while a chat proposal is waiting, `Reveal` sets
  `Narrator.proposal = nil`: the Send bar disappears and the box fades. The Gateway still holds the proposal for 25 s
  or more, so the speak key, the speak button or `/au speak` can send a public line that is no longer on screen.
- **Recommendation:** draw the bar from `Gateway:GetPending()`, not from the current record, or hold other lines back
  until the proposal is resolved. The speak button, its tooltip and the narrator must agree on one source of truth.
- **Sources:** FE-03. **Labels:** bug, priority:high. **Issue:** [#176](https://github.com/Finland6738/azeroth-unspoken/issues/176)

#### UI-07. Fixed time limits: proposals expire after 25 s even while hovered, and reading time is short

- **Where:** `AzerothUnspoken/Integration/ChatGateway.lua:450-458`; `AzerothUnspoken/UI/NarratorFrame.lua:195`,
  `:199-204`, `:404-416`; `AzerothUnspoken/Core/Config.lua:128`, `:180`; `AzerothUnspoken/Systems/StoryArcs.lua:640-645`.
- **What:** `GetPending()` drops the proposal after `pendingSeconds` (25), and the hover hold calls that same function,
  so hovering keeps the box but not the proposal. No panel row or command sets the value (fails WCAG 2.2.1). Display
  time is 8 s plus 0.03 s per byte (about 33 characters per second, against about 15 for comfortable reading and 8–12
  for dyslexic or second-language readers). Story notices get about 5 s, ignore the duration setting and never reach
  the history. There is no "reduce motion" switch for the fade.
- **Recommendation:** pause expiry while the mouse is over the box; add "Proposal waits: 25 / 60 / 120 s / until
  dismissed" and a visible countdown; raise the factor to about 0.07 s per UTF-8 character with a "Reading speed"
  setting and a "Keep until I close it" option; give notices the normal duration and a place in the history; add an
  optional "Reduce motion" (no fade).
- **Sources:** A11Y-11, A11Y-12, A11Y-13, A11Y-14. **Labels:** accessibility, enhancement, priority:high.
  **Issue:** [#177](https://github.com/Finland6738/azeroth-unspoken/issues/177)

#### UI-08. Consents: a double-click passes the two-step confirmations, and the warnings are not where the player looks

- **Where:** `AzerothUnspoken/Integration/ChatGateway.lua:159-181` (automatic sending, warning printed at `:173`);
  `AzerothUnspoken/Systems/Relationships.lua:1806-1820`, `AzerothUnspoken/UI/RelationsFrame.lua:352-355`, `:599`
  (shared list); `AzerothUnspoken/UI/Wizard.lua:15-17`, `:140`, `:163-164`, `:173-176`, `:189-191`;
  `AzerothUnspoken/UI/SettingsFrame.lua:94-100`, `:131-136`; `AzerothUnspoken/Integration/TotalRP3.lua:191`.
- **What:**
  - Automatic chat sending and the account-shared list both use "click, then click again within 10 s / 15 s" with no
    minimum delay: a double-click turns them on before the warning can be read.
  - The automatic-sending warning goes to the chat frame, usually hidden behind the settings panel or not where the
    player looks during the wizard. The wizard's short help does not say the lines are posted in the character's name
    and seen by everyone nearby.
  - The shared-list warning is shown in the window, but as 475 characters (521 in Italian) of 10 px text.
  - In the wizard, yes/no consents show "on" only as green text between » «; the settings panel writes ": on/off".
  - "Read others' Total RP 3: on" can be on while doing nothing (it also needs "Name from Total RP 3"); this is
    explained only in a tooltip. Proximity and the shared list are explained only in tooltips, which a keyboard user
    cannot reach.
  - "click again to confirm" can stay on the button after the 10 s window has passed.
- **Recommendation:** use a confirmation dialog (`StaticPopup`, as `Packs:OfferReload` already does) with the full
  warning in plain words ("posted in your character's name, visible to everyone nearby, without you pressing
  anything") and explicit buttons. Write the state in words on every consent toggle, show the dependency ("on, needs
  Name from Total RP 3"), and put a one-line explanation under each consent instead of a tooltip.
- **Sources:** A11Y-16, A11Y-17, WOW-17. **Labels:** bug, accessibility, priority:high. **Issue:** [#178](https://github.com/Finland6738/azeroth-unspoken/issues/178)
- **Mockups:** `consent-auto.png`, `consent-shared-list.png`, `consent-trp3-others.png`, `consent-proximity.png`.

#### UI-09. Text overlaps buttons and other text in four places

- **Where and what:**
  - Settings: the help text is anchored at y −474 (`AzerothUnspoken/UI/SettingsFrame.lua:162-165`), on top of the
    third row of module buttons (−466 to −490, `:141-150`). The text runs 2 to 7 lines and the canvas has no scroll.
  - Wizard, "Chat and test": 3–4-line descriptions centred on buttons 30 units apart overlap each other, the longest
    being the automatic mode's (`AzerothUnspoken/UI/Wizard.lua:172-186`).
  - Journal: the tab note is anchored at the bottom (`AzerothUnspoken/UI/JournalFrame.lua:324-325`) and grows over
    row 11 (and row 10 in Italian) on the Session, Stories, Relationships and People tabs.
  - Relationships: the shared-list warning, anchored at the bottom (`AzerothUnspoken/UI/RelationsFrame.lua:366-369`,
    `:599`), grows over the Remove and Back buttons of the detail; the "Recent" facts end 0–2 units above them.
- **Recommendation:** lay windows out top-down, each block anchored to the previous one and measured with
  `GetStringHeight()`; give the journal note its own line under the tabs or use 10 rows when a note is set; show only
  the selected chat mode's help (as the settings panel does), or one card per mode.
- **Sources:** VD-03, VD-05, VD-12, VD-13, FE-07, FE-08, FE-09, A11Y-19. **Labels:** bug, priority:high.
  **Issue:** [#179](https://github.com/Finland6738/azeroth-unspoken/issues/179)
- **Mockups:** `settings.png`, `wizard-7.png`, `journal-stories.png`, `consent-shared-list.png`.

#### UI-10. Labels overflow their buttons in English and Italian

- **Where:** `AzerothUnspoken/UI/JournalFrame.lua:286-299` (seven tabs of 77 px); `AzerothUnspoken/UI/Wizard.lua:173`
  (170 px); `AzerothUnspoken/UI/RelationsFrame.lua:191`, `:248`, `:351`, `:139`, `:26`; `AzerothUnspoken/UI/SettingsFrame.lua:94`,
  `:142`; rows `JournalFrame.lua:265-269`, `RelationsFrame.lua:120-122`.
- **What:** `UIPanelButtonTemplate` neither wraps nor shrinks its label. Estimates from font metrics: the journal tabs
  overflow in both languages ("» Relationships «", "Persone incontrate", every selected tab); the wizard's automatic
  button ("» automatic (where allowed) «", "clic di nuovo per confermare"); the Relationships trait and label buttons
  ("Way of speaking: Plain (automatic)", "Automatic: acquaintance (click: choose)"); and, in Italian, three
  consent-related options ("Condividi con l'account: spento", "Riconosci chi è vicino: spento", "Riconosci al
  bersaglio: spento"). Long journal rows and table cells are cut with no tooltip.
- **Recommendation:** measure with `GetStringWidth()` and size buttons from it (with a maximum and a tooltip); use
  underlined text tabs, two rows or a dropdown when there are more than five tabs; shorten the Italian labels; add a
  tooltip with the full row text; test every window in both languages at the longest strings.
- **Sources:** VD-04, VD-20, FE-10, A11Y-18, A11Y-21, WOW-20. **Labels:** bug, accessibility, priority:high.
  **Issue:** [#180](https://github.com/Finland6738/azeroth-unspoken/issues/180)
- **Mockups:** dashed red outlines mark the predicted overflows in `journal-*.png`, `wizard-7.png`, `wizard-7-it.png`.

### Medium

#### UI-11. Windows cover the narrator, including the wizard's own "Try the narrator", and stack without raising

- **Where:** `AzerothUnspoken/UI/Wizard.lua:185`, `:259-261`; `AzerothUnspoken/UI/NarratorFrame.lua:17`, `:306`;
  `AzerothUnspoken/UI/JournalFrame.lua:305-306`, `ProfileFrame.lua:82-83`, `RelationsFrame.lua:321-322`, `:714-716`.
- **What:** the wizard (centre +40, DIALOG) covers the narrator (bottom +240, MEDIUM): its test line shows only as a
  strip of about 19 units. The journal, relationships and character soul windows are DIALOG and centred, so they hide
  a pending proposal while the speak key still sends it. Those three share strata, level and centre with no
  `SetToplevel` or `Raise`: the journal's "..." opens Relationships exactly on top of it and their buttons interleave.
- **Recommendation:** raise the narrator while it carries a proposal or a test line; anchor the test line under the
  wizard, or move the wizard up; call `SetToplevel(true)` and `Raise()` on open and cascade default positions.
- **Sources:** VD-06, WOW-04, WOW-19, FE-05, FE-06. **Labels:** bug, priority:medium. **Issue:** [#181](https://github.com/Finland6738/azeroth-unspoken/issues/181)
- **Mockup:** `wizard-test-overlap.png`.

#### UI-12. No scale for the windows, small consent text, and fixed offsets that break at large text sizes

- **Where:** no `SetScale` in `AzerothUnspoken/UI/`; small font for long texts at `Wizard.lua:123`, `:135`, `:156`,
  `:170`, `RelationsFrame.lua:332`, `:366`, `JournalFrame.lua:317`, `ProfileFrame.lua:94`; `NarratorFrame.lua:101`,
  `:317`, `:329-331`, `:348`; `DialogueFrame.lua:142-154`, `:204-205`, `:270-280`; `Config.lua:186-190`, `:224-227`.
- **What:** only the narrator text can be resized (10–28). Other windows have fixed fonts and pixel layouts, and the
  texts a player reads to give consent use the 10 px font. The narrator header is a fixed 20 units while its label grows
  to 25 at size 28, and runs under the buttons; the dialogue window's title and line collide from about size 19. The
  dialogue font size and opacity exist but no panel row or command reaches them. The history ignores the narrator size.
- **Recommendation:** add a "Window scale" setting (0.8–1.5) applied with `SetScale`; use 12 px or more for consent and
  privacy text; derive header heights from the font and anchor each text to the one above; expose the dialogue
  settings; let the history follow the narrator size.
- **Sources:** A11Y-05, VD-11, FE-16, FE-24, VD-18. **Labels:** accessibility, enhancement, priority:medium.
  **Issue:** [#182](https://github.com/Finland6738/azeroth-unspoken/issues/182)

#### UI-13. Keyboard and pointer: missing bindings, mouse-only sliders, small targets next to a destructive one

- **Where:** `AzerothUnspoken/Bindings.xml:1-14`; `AzerothUnspoken/UI/NarratorFrame.lua:333-345`, `:388-398`;
  `AzerothUnspoken/UI/DialogueFrame.lua:264`, `:283-290`; `AzerothUnspoken/UI/Widgets.lua:81-149`;
  `AzerothUnspoken/UI/ProfileFrame.lua:51-56`; `AzerothUnspoken/UI/RelationsFrame.lua:64`, `:72`, `:96`.
- **What:** Discard, Edit (in confirm mode), change channel, To chat, history and the NPC answers have no binding;
  changing a pending proposal's channel is mouse-only. The narrator header buttons are 22×18 and 2 units apart, and the
  "x" hides the box **and discards the proposal**, next to Pause. The 13 Character Soul sliders have no −/+ and no
  wheel or keyboard step; their track is 1.6–1.8:1 against the window (non-text contrast needs 3:1). Several controls
  are single symbols explained only by a tooltip ("H", "P", "II", "..."), and the paused state shows only as a speak
  button at 50% alpha. Sliders run an `OnUpdate` every frame even when idle.
- **Recommendation:** add bindings for Discard, Edit, Channel, History, Journal and NPC answers 1–3, plus
  `/au channel next`; make header buttons 24×24 with 6 units between them and make "x" only hide; add −/+ and wheel
  steps to every slider and lighten the track to about (0.55, 0.50, 0.70); use short words where space allows and a
  "Paused" badge; set the slider `OnUpdate` only while dragging.
- **Sources:** A11Y-08, A11Y-09, A11Y-10, A11Y-20, FE-23. **Labels:** accessibility, enhancement, priority:medium.
  **Issue:** [#183](https://github.com/Finland6738/azeroth-unspoken/issues/183)

#### UI-14. Edit boxes lose text or write it onto the wrong person

- **Where:** `AzerothUnspoken/UI/RelationsFrame.lua:84-93`, `:199-241`, `:524-535`, `:618-624`;
  `AzerothUnspoken/UI/NarratorFrame.lua:357-370`; `AzerothUnspoken/Integration/ChatGateway.lua:84-91`, `:470-478`.
- **What:** the relationship label, note and tags save only on Enter; text left by Back, Close or a click is lost.
  A focused box keeps its text when another person is opened (through the journal's "..."), and Enter then writes the
  draft onto the new person. The search box keeps keyboard focus after Enter. In the proposal editor, Enter on an empty
  text prints "the proposal is gone" although it is still pending, and `SetMaxLetters(240)` counts characters while the
  chat limit is 255 bytes, so accented Italian text is clipped with "..." without warning.
- **Recommendation:** clear focus on every view change and commit on focus loss to the person captured on focus gain
  (or show Save/Revert); give the search box `OnEnterPressed = ClearFocus`; separate "empty" from "expired"; use
  `SetMaxBytes` per channel or a live byte counter.
- **Sources:** FE-11, FE-12, FE-13. **Labels:** bug, priority:medium. **Issue:** [#184](https://github.com/Finland6738/azeroth-unspoken/issues/184)

#### UI-15. Combat: lines interrupt ordinary fights, the preview editor takes the keyboard, and automatic mode retries after a block

- **Where:** `AzerothUnspoken/Engine/NarrativeDirector.lua:100-104`, `:134`; `AzerothUnspoken/Engine/Pacing.lua:36`, `:42`;
  `AzerothUnspoken/Integration/ChatGateway.lua:383-418`, `:609-626`, `:712`, `:727-731`; `AzerothUnspoken/UI/NarratorFrame.lua:17`,
  `:246-259`.
- **What:** only demanding combat (a boss, a raid, an elite in an instance) is muted; ordinary combat has the largest
  line budget (6 per 10 minutes at intensity 50, 15 s apart) with the box over the centre of the play area. In preview
  mode the speak key opens an editor that takes all keyboard input, in combat too. If the client blocks an automatic
  send, its "blocked" dialog appears, automatic mode stays on and retries, so the dialog can come back. Speak with
  nothing pending makes a new battle line.
- **Recommendation:** add "In combat: show / chat frame only / hold until combat ends / silent"; hold proposals until
  `PLAYER_REGEN_ENABLED`; never open the editor in combat; after a block, fall back to "confirm to send" for the
  session and say so.
- **Sources:** A11Y-15, WOW-05, WOW-06. **Labels:** enhancement, accessibility, priority:medium. **Issue:** [#185](https://github.com/Finland6738/azeroth-unspoken/issues/185)

#### UI-16. The narrator's look: voices differ only by a small label, red letter buttons, a flat proposal bar

- **Where:** `AzerothUnspoken/UI/NarratorFrame.lua:21-23`, `:110-119`, `:151-152`, `:279-301`, `:333-347`, `:355-356`,
  `:374-398`; `AzerothUnspoken/UI/DialogueFrame.lua:21`.
- **What:** the core experience looks like a debug panel. The line is white for every voice; only an 11 px label is
  coloured, so a private thought and a sayable line look the same. For protanopes Character `#ffd36b` and NPC `#9be37a`
  are almost the same colour (ΔE 6.5). The header has three saturated red letter buttons; the proposal bar has six
  identical red buttons filling 422 of 424 units, with Send (irreversible) looking like Discard and the channel
  repeated in the header. The history has a different surface and font, and the editor has uneven margins.
- **Recommendation:** a 3-unit accent bar in the voice colour, voice-tinted body text, italics for the inner voice;
  ghost icon buttons; a channel chip, one primary Send and a quiet Discard; a thin time line instead of a sudden fade;
  a palette that also differs in lightness. See `proposed-narrator.png`.
- **Sources:** VD-08, VD-09, VD-10, VD-21, VD-23, A11Y-03. **Labels:** enhancement, accessibility, priority:medium.
  **Issue:** [#186](https://github.com/Finland6738/azeroth-unspoken/issues/186)

#### UI-17. Windows have no frame or title band, and the visual language is inconsistent

- **Where:** `AzerothUnspoken/UI/JournalFrame.lua:313`, `:351-366`, `:409`; `AzerothUnspoken/UI/RelationsFrame.lua:264-297`,
  `:329`, `:372-387`; `AzerothUnspoken/UI/ProfileFrame.lua:90-92`, `:146-147`; `AzerothUnspoken/UI/Wizard.lua:15-17`,
  `:232`, `:268-270`; `AzerothUnspoken/UI/SettingsFrame.lua:46`, `:54-73`, `:138-156`; `AzerothUnspoken/Core/Bootstrap.lua:137`;
  `AzerothUnspoken/UI/Widgets.lua:99`.
- **What:** windows are flat `#0D0A17` slabs with no border, title band or close box; the same background meets the
  same background where they stack. Titles are 16 pt except the wizard's 12 pt "brand - step - page" line. The selected
  state is green text inside a red button. There are three slightly different brand violets (`#B48CFF`, `#B9A1FF`,
  `#B38CFF`). Destructive actions (Forget everything, Remove person) look like every other button. The settings panel
  is a wall of 40 "Label: value" red buttons with no section headers, and the stepper labels are buttons that do
  nothing.
- **Recommendation:** one `W.Window(parent, w, h, title)` factory with a 1-unit bronze edge, a title band, a close box
  and Esc; one title style; a selected state that is not only colour (border, tick); one brand violet; a distinct
  destructive style that opens a confirmation; settings grouped under headers (General, Chat, Narrator, Modules,
  Privacy) with plain labels next to their controls.
- **Sources:** VD-14, VD-15, VD-17, VD-19, VD-22, VD-25, WOW-11. **Labels:** enhancement, priority:medium. **Issue:** [#187](https://github.com/Finland6738/azeroth-unspoken/issues/187)
- **Mockups:** `proposed-journal.png`, `proposed-relations-detail.png`.

#### UI-18. First run: a bare language picker that never mentions the bindings, the button or the panel

- **Where:** `AzerothUnspoken/UI/Wizard.lua:32-49`, `:78-87`, `:239-255`, `:257-289`, `:301`, `:313-318`.
- **What:** the first page is two red buttons; nothing says what the addon does or shows the narrator before any
  setting. The guide never mentions the key bindings, the speak button or `/au options`. It opens 3 s after load even in
  combat or on a loading screen, and each `/au wizard` builds a new set of pages without freeing the old ones. The
  intensity control is off the grid.
- **Recommendation:** a welcome page with a one-sentence promise, a live narrator sample and language cards; a last
  page with "Bind the speak and pause keys", "Where the button is", "Settings: /au options"; open after
  `PLAYER_ENTERING_WORLD` and outside combat; build pages once. See `proposed-wizard.png` and
  `proposed-wizard-chat.png`.
- **Sources:** VD-16, VD-24, WOW-09, FE-20. **Labels:** enhancement, priority:medium. **Issue:** [#188](https://github.com/Finland6738/azeroth-unspoken/issues/188)

#### UI-19. Discoverability: no launcher, a mid-screen speak button that says "speak" in private mode, a flat `/au help`

- **Where:** `AzerothUnspoken/AzerothUnspoken.toc:10`; `AzerothUnspoken/Core/Config.lua:177`;
  `AzerothUnspoken/UI/SpeakButton.lua:26-79`; `AzerothUnspoken/Data/enUS/Interface.lua:25-26`;
  `AzerothUnspoken/UI/Commands.lua:77-82`, `:197-282`; `AzerothUnspoken/UI/NarratorFrame.lua:16-17`.
- **What:** there is no minimap or LDB launcher, the usual way players find an addon's windows. The speak button is
  shown by default 180 units below the centre, near the character, and its tooltip says "confirm and speak" in the
  default private mode where nothing is ever sent; in confirm mode one click sends a public line. `/au help` prints 40
  lines in table order with debugging commands near the top, so a default chat window shows only the last ten. At 4:3
  the narrator's default position sits over the action bars of some layouts.
- **Recommendation:** an optional LDB/minimap launcher (journal, relationships, soul, settings); hide the speak button
  in private mode or show an accurate tooltip; an option "Button opens the editor instead of sending"; `/au help` in
  short groups (Start, Narrator, Chat, Character, Diagnostics) with `/au help <group>`.
- **Sources:** WOW-07, WOW-08, WOW-10, WOW-21, A11Y-22. **Labels:** enhancement, priority:medium. **Issue:** [#189](https://github.com/Finland6738/azeroth-unspoken/issues/189)
- **Mockups:** `speak-button.png`, `chat-help.png`, `narrator-in-context.png`.

#### UI-20. One-click irreversible actions, and confirmation timers that cancel a newer confirmation

- **Where:** `AzerothUnspoken/UI/JournalFrame.lua:78-82`, `:95`, `:107`, `:351-363`; `AzerothUnspoken/UI/ProfileFrame.lua:144`;
  `AzerothUnspoken/UI/RelationsFrame.lua:264-293`, `:372-384`.
- **What:** deleting a memory, forgetting a place, clearing a flag and "Neutral profile" take one click and cannot be
  undone. The two-click confirmations schedule a 6 s disarm on every arming click: arm, confirm, arm again, and the old
  timer disarms the new one early. Armed states survive closing the window.
- **Recommendation:** confirm or offer undo for single deletions and the neutral profile; disarm only the matching arm
  (a token) and clear armed states `OnHide`.
- **Sources:** WOW-12, FE-19. **Labels:** bug, priority:medium. **Issue:** [#190](https://github.com/Finland6738/azeroth-unspoken/issues/190)

#### UI-21. Total RP 3 etiquette: IC/OOC ignored, internal API, emotes outside /e without RP markup

- **Where:** `AzerothUnspoken/Integration/TotalRP3.lua:107-114`, `:215-232` (whole file has no IC/OOC check);
  `AzerothUnspoken/Integration/ChatGateway.lua:231-242`.
- **What:** the narrator proposes in-character lines while the player's Total RP 3 status is "out of character". Other
  players' profiles are read through internal functions that may change between Total RP 3 versions. An emote sent on
  /say or /party has no RP markup (`*...*`), the convention RP readers expect.
- **Recommendation:** when Total RP 3 says OOC, keep the narrator private and propose nothing; read through the public
  API where one exists and guard the rest; wrap emotes sent outside /e in the usual markup (optional).
- **Sources:** WOW-13, WOW-22, WOW-23. **Labels:** enhancement, priority:medium. **Issue:** [#191](https://github.com/Finland6738/azeroth-unspoken/issues/191)

### Low

#### UI-22. Robustness: a failed build leaves a frame on screen, positions, the export box, settings sync

- **Where:** `AzerothUnspoken/UI/RelationsFrame.lua:319-388`, `:661-667`; `AzerothUnspoken/UI/JournalFrame.lua:303-367`,
  `:421-427`, `:476-491`; `AzerothUnspoken/UI/ProfileFrame.lua:80-148`; `AzerothUnspoken/UI/Widgets.lua:152-155`;
  `AzerothUnspoken/UI/NarratorFrame.lua:323-326`; `AzerothUnspoken/UI/SpeakButton.lua:54-58`;
  `AzerothUnspoken/UI/SettingsFrame.lua:20-25`, `:181`, `:192-198`.
- **What:** `frame:Hide()` is the last line of each `Build`: if anything before it fails, the named frame stays shown and
  blocks clicks. The narrator saves the raw `GetPoint()` after a drag, so it may then grow downward over the action bars.
  The export box has a fixed 1000-unit height. The settings panel refreshes only on show; a language change re-labels
  only the panel; turning the addon or the narrator off does not hide the current line. Opening the classic Interface
  Options needs two calls.
- **Recommendation:** hide right after `CreateFrame`; store BOTTOM offsets from `GetLeft`/`GetBottom`; use a scrolling
  edit pattern; one "settings changed" event that every open window follows; call the classic open function twice.
- **Sources:** FE-17, FE-18, FE-21, FE-22, WOW-18. **Labels:** bug, priority:low. **Issue:** [#192](https://github.com/Finland6738/azeroth-unspoken/issues/192)

#### UI-23. Empty and error states: the journal hides read-only and module-off, the debug report has an Italian word

- **Where:** `AzerothUnspoken/UI/JournalFrame.lua:71-119`, `:371-411`; `AzerothUnspoken/Systems/LivingMemory.lua:522-523`;
  `AzerothUnspoken/Core/Diagnostics.lua:47`, `:72`, `:103-190`.
- **What:** with memory off or its data read-only (a newer version), the journal shows "Nothing to show." and the
  buttons silently do nothing. `/au debug` prints `<nascosto>` (Italian) for hidden values and leaves out the "hook"
  group that it counts in the totals.
- **Recommendation:** show "Memory is off: turn it on in the settings" and "Read-only: saved by a newer version" in the
  window and disable the actions; translate the placeholder; list every counted group.
- **Sources:** WOW-14, WOW-15. **Labels:** bug, priority:low. **Issue:** [#193](https://github.com/Finland6738/azeroth-unspoken/issues/193)

## Contrast (computed from the code's colours)

Assumptions: straight alpha blending in sRGB; the game world behind the box is pure white (snow, sky; the worst case),
light grey (200) or black; for the narrator, background alpha `0.65 × α × α` and text alpha `α`. AA needs 4.5:1 at these
sizes. Font shadows are not counted.

| Element | Colour | Over bright | Over grey | Over dark | AA |
|---|---|---|---|---|---|
| Narrator text, default 85% (`NarratorFrame.lua:102`, `:347`) | `#ffffff` | **3.06** | **4.44** | 14.84 | fails on bright scenes |
| Narrator text, 50% | `#ffffff` | **1.22** | **1.60** | 5.28 | fails on bright scenes |
| Narrator text, 20% minimum | `#ffffff` | **1.01** | **1.13** | **1.66** | fails |
| Narrator text at 100% | `#ffffff` | 6.98 | 9.44 | 21.00 | passes |
| Voice label Narrator / Inner / Character / NPC (11 px) | `#b9a1ff` `#7fd4ff` `#ffd36b` `#9be37a` | **1.52 / 1.95 / 2.23 / 2.07** | 2.2–3.2 | 7.0–10.6 | fails on bright scenes |
| History time and "sent to" (`NarratorFrame.lua:66-67`) | `#808080` | **1.99** | **2.63** | 5.32 | fails on bright scenes |
| Dialogue line and NPC title (`DialogueFrame.lua:206`, `:21`) | `#ffffff`, `#9be37a` | 10.37, 6.74 | 12.44, 8.10 | 19.98, 13.00 | passes |
| Windows: white text, gold labels, muted `#9d9d9d` | | 17.75, 12.16, 6.55 | 18.21, 12.47, 6.72 | 19.64, 13.45, 7.24 | passes |
| Slider track against a window (non-text, needs 3:1, `Widgets.lua:89`) | (0.25, 0.22, 0.35) | | | 1.63–1.80 | **fails** |

## English and Italian string lengths (riskiest first)

Capacity is estimated from the button width and an average of 6.3 units per character of the 12 pt game font; check in
the client with `GetStringWidth()`.

| Control | Width | English as shown | Italian as shown | Risk |
|---|---|---|---|---|
| Journal tabs (`JournalFrame.lua:289`) | 77 | "» Relationships «", "People met" | "» Relazioni «", "Persone incontrate" | overflow, both |
| Relationships trait buttons (`RelationsFrame.lua:248`) | 196 | "Way of speaking: Plain (automatic)" | "Temperamento: Misericordioso (automatico)" | overflow, both |
| Relationships label button (`RelationsFrame.lua:191`) | 200 | "Automatic: acquaintance (click: choose)" | "Automatica: conoscente (clic: scegli)" | overflow, both |
| Wizard automatic sending (`Wizard.lua:173`) | 170 | "» automatic (where allowed) «" | "» automatica (dove permesso) «", "clic di nuovo per confermare" | overflow, both |
| Relationships consent options (`RelationsFrame.lua:351`) | 200 | "Share with the account: off" | "Condividi con l'account: spento", "Riconosci chi è vicino: spento" | overflow, Italian |
| Settings module grid (`SettingsFrame.lua:142`) | 150 | "Chat proposals: off" | "Proposte in chat: spento" | overflow, Italian |
| Settings automatic sending, armed (`SettingsFrame.lua:94`) | 290 | "Automatic sending: click again to confirm" | "Invio automatico: clic di nuovo per confermare" | overflow, Italian |
| Relationships "Add to the list" (`RelationsFrame.lua:139`) | 130 | "Add to the list" | "Aggiungi alla lista" | overflow, Italian |
| Narrator proposal bar (`NarratorFrame.lua:388-398`) | 60–84 | "Send", "Edit", "To chat" | "Invia", "Modifica", "Nella chat" | fits, tight in Italian |

## Mockups

All mockups are in [`docs/design/mockups/`](mockups/index.html): one HTML file per screen, one shared stylesheet
([`mockups.css`](mockups/mockups.css)), and the PNG renders in `mockups/png/`. They are built by
`mockups/tools/build_mockups.py` from the sizes, anchors, colours and English texts of the code (Italian for the narrator
and the wizard), rendered by `mockups/tools/render.py` with a headless browser, and the GIF is assembled by
`mockups/tools/make_gif.py` (Pillow). The sample data (names, memories, relationships) is invented; the lines are real
lines of the database.

How they are drawn:
- 1 CSS pixel = 1 unit of UIParent. Backgrounds are original SVG landscapes (dusk forest, battle, night, warm interior,
  neutral). **No Blizzard texture, icon, font or screenshot is used.** The client's standard widgets (panel buttons,
  input boxes, tooltips, the chat frame, the reload popup) are plain original stand-ins of the same size. The speak
  button's icon is an original book glyph: the addon itself uses a client icon texture, which is not reproduced.
- Fonts: a system serif (Georgia) stands in for the game font, Arial for the chat font. Widths are therefore close but
  not exact.
- Every image carries a corner caption "Illustrative mockup built from the addon code - not an in-game screenshot" and a
  badge: **CURRENT (from the code)** or **PROPOSED - not implemented**. Each HTML page repeats this in its alt text.
- Predicted defects are drawn as the code would produce them: hidden list texts (UI-01), overlaps (UI-09), the
  single-bar pause button and the broken `/au help` lines (UI-05). A dashed red outline marks a button label wider than
  its button (UI-10).

### Images and the page each one is meant for

The follow-up session U2 embeds them in the README and the wiki. "Comparison" means the image is useful next to the
current one, in the review or an issue, more than in the player's manual.

| Image (`docs/design/mockups/png/`) | Shows | Meant for |
|---|---|---|
| `../narrator-demo.gif` | the narrator in action: dusk arrival, battle line, return after a defeat, inner thought, a proposal edited and sent | README (top), Home |
| `narrator-narrator.png`, `narrator-inner.png`, `narrator-character.png`, `narrator-npc.png` | one line in each voice | The-Narrator |
| `narrator-voices.png` | the four voices together | The-Narrator |
| `narrator-history.png` | the history panel open | The-Narrator |
| `narrator-paused.png` | paused: the header, the chat note, the dimmed speak button | The-Narrator |
| `narrator-in-context.png` | the default position on a 1366×768 screen | Home, The-Narrator |
| `narrator-it.png`, `narrator-inner-it.png` | the narrator in Italian | Languages, README.it |
| `proposal.png`, `proposal-held.png`, `proposal-editor.png`, `proposal-sent.png`, `proposal-emote.png` | a chat proposal (with its countdown), a proposal with a private line held in the history (#176), its editor, after sending, an emote proposal | Chat-Gateway |
| `speak-button.png` | the speak button idle, waiting and paused, with tooltips | Chat-Gateway, Commands |
| `wizard-1.png` … `wizard-8.png` | each step of the first-run guide as rebuilt for UI-18 (step 6 only with Total RP 3) | First-Run-Wizard |
| `wizard-1-it.png`, `wizard-7-it.png`, `wizard-8-it.png` | guide steps in Italian | First-Run-Wizard, Languages |
| `wizard-test-line.png` | "Try the narrator" after the fix of UI-11: the box steps aside, below the guide | First-Run-Wizard (UI-11, fixed) |
| `settings.png`, `settings-reload.png` | the settings panel, and after a change of language | Settings, Languages |
| `journal-memories.png`, `journal-places.png`, `journal-flags.png`, `journal-session.png` | the journal tabs | Memory-and-Journal |
| `journal-stories.png`, `journal-story-detail.png` | the stories tab and a story with its choice | Story-Arcs |
| `journal-relationships.png`, `journal-people.png` | the relationships and people tabs of the journal | Relationships |
| `journal-empty.png`, `journal-reset-armed.png`, `journal-export.png` | empty state, "Forget everything" armed, the export window | Memory-and-Journal, Privacy-and-Data |
| `relations-list.png`, `relations-people.png`, `relations-empty.png`, `relations-options.png` | the relationships list (fixed, UI-01), people met, empty, the options tab | Relationships |
| `relations-detail-player.png`, `relations-detail-npc.png`, `relations-detail-shared.png` | a player's detail in two columns, 660 units tall (UI-02 fixed), an NPC's, with the shared list | Relationships |
| `consent-auto.png`, `consent-shared-list.png`, `consent-trp3-others.png`, `consent-proximity.png` | the consent screens | Privacy-and-Data, Chat-Gateway, Relationships, Character-Soul-and-Total-RP-3 |
| `consent-reload.png` | the reload dialog after a change of language | Languages |
| `profile.png`, `profile-neutral.png` | character soul with choices, and neutral | Character-Soul-and-Total-RP-3 |
| `dialogue-offered.png`, `dialogue-line.png`, `dialogue-last.png`, `dialogue-test.png` | the NPC dialogue: offered, a line with answers, the last line, `/au talk test` | NPC-Dialogues |
| `chat-help.png`, `chat-help-window.png` | `/au help` in full and as the client reads the escapes | Commands |
| `chat-debug.png` | `/au debug` | Troubleshooting, Reporting-Bugs-and-Feedback |
| `proposed-narrator.png`, `proposed-narrator-bright.png` | PROPOSED narrator: voice accent, hierarchy, editor, bright scene | comparison (UI-03, UI-16) |
| `proposed-journal.png` | PROPOSED window style on the journal | comparison (UI-04, UI-10, UI-17) |
| `proposed-relations-detail.png` | PROPOSED relationship detail that fits 768 units | comparison (UI-02) |

Notes for U2:
- Use the PNG files and the GIF as they are; the alt text should repeat "illustrative mockup, not an in-game
  screenshot".
- The proposed images are not the addon's current look: keep them out of the player's manual until implemented.
- Regenerate after a UI change: `python -I -X utf8 docs/design/mockups/tools/build_mockups.py`, then
  `python -I -X utf8 docs/design/mockups/tools/render.py` and, with Pillow, `python -X utf8 docs/design/mockups/tools/make_gif.py`.
