# Interface style: the NEBULA look in Azeroth Unspoken

> English version. The Italian twin is [ui-style.it.md](ui-style.it.md); when they differ, fix both.
>
> Specification of step **UI-0** of the UI-ECO plan. Decision: [ADR 0058](../adr/0058-nebula-ecosystem-look-and-credits.md).
> Tracking issue: [#284](https://github.com/Finland6738/azeroth-unspoken/issues/284). Steps: [ROADMAP.md](../../ROADMAP.md), section "UI-ECO".
>
> **Status: final.** Every step of UI-ECO (UI-0 to UI-8) is merged; section 3 lists them. The mockups of this spec (the
> design system and every window in Nebula and Aurora, English and Italian, side by side with the sister addon) are in
> [mockups/](mockups/README.md). Nothing is verified in the game client yet.

## 1. The source, and what this file is

The look of Azeroth Unspoken is the look of Finland Dragon Credit Points (FDCP), the sister addon of the NEBULA community.
FDCP's specification is the source and is **not copied here**:

- in the sister repository checked out next to this one: `../finland-dragon-credit-points/docs/specs/ui-style.md` (Italian);
- on GitHub: [`docs/specs/ui-style.md` of FDCP](https://github.com/Finland6738/finland-dragon-credit-points/blob/main/docs/specs/ui-style.md), with its decision in [ADR 0004](https://github.com/Finland6738/finland-dragon-credit-points/blob/main/docs/adr/0004-interface-style-of-the-community-site.md).

**Read FDCP's spec first.** Its section numbers below are written "FDCP §n". Everything in it applies to this addon, unless this
file says otherwise. This file holds only the **differences**: where Azeroth Unspoken (AU) does something else, and
what is specific to it. A step that needs a token, a component, a texture size, a font rule or a feasibility verdict looks it up
in FDCP; a step that needs to know what AU does differently looks here.

What is taken over unchanged:

| From FDCP | What |
|---|---|
| §2 | the tokens (names and values), forms, shadows, glows, durations, curves, spacing; the text sizes with the exception of §2.4 below |
| §3 | the components and how they are built in the game: white textures tinted at runtime, 9-slice, the theme registry that recolours without `/reload`, own tooltip, own selection list (no `UIDropDownMenu`) |
| §4 | the fonts and their licences (Outfit, JetBrains Mono, Orbitron, SIL OFL 1.1) and the fallback to the game's fonts, with the setting *Font: Addon / Game* |
| §5 | the feasibility verdicts (no background blur, no letter spacing, no spring curves, two-colour gradients) |
| §7 | the textures and the performance rules: at most four regions per card, pooled rows, no permanent `OnUpdate`, no protected frame |

## 2. Differences

### 2.1 Separate windows, not one tabbed window

FDCP has one main window with horizontal tabs (FDCP §6). AU does **not**: it keeps its separate windows, because the narrator
has to stay visible beside them and each window is opened on its own by a command or a button
([#181](https://github.com/Finland6738/azeroth-unspoken/issues/181)). Each window is built by `W.Window` (the name stays) on the FDCP
shell: the 52-point title bar (the addon's own round logo, `assets/logo-source.webp`, the window's name in Orbitron, a mono subtitle, a status chip when the
window has one, the close box), the 12-unit window shape with its ring and shadow, movable, clamped to the screen, Esc closes it, the window scale
of [#182](https://github.com/Finland6738/azeroth-unspoken/issues/182). `Windows.lua` still stacks and raises them and moves the narrator out of the way. A window with
sections uses Tabs (FDCP §3) *inside* itself, never to hold other windows. The position is remembered per character.

### 2.2 The windows and frames of AU, and the components each one uses

Components are those of FDCP §3 (the Button kinds *primary*, *secondary*, *ghost* and *neon*, and AU's two more, *danger* and
*text*). "Shell" is the FDCP window shell of §2.1. The steps are those of the ROADMAP section "UI-ECO".

| Window or frame (global name) | Shell | Components | Step |
|---|---|---|---|
| Narrator box (`AzerothUnspokenNarrator`) | own frame, not the shell | Panel (translucent, §2.3), voice label and accent bar, ghost icon buttons, Chip (channel), proposal bar with one primary button and quiet ones, ThinBar (time) | UI-4 |
| Narrator history (`AzerothUnspokenNarratorHistory`) | own frame (Panel), Esc closes it | a ScrollingMessageFrame (one message per verse; a DataTable would break the verses), a handle to drag it, a ghost close button | UI-4 |
| Speak button (`AzerothUnspokenButton`) | own frame | a disc and a ring (`circle`), the sheet's quill icon, Badge, own Tooltip, paused state also in words | UI-4 |
| Emote wheel (`AzerothUnspokenEmoteWheel`, [ADR 0059](../adr/0059-a-radial-emote-wheel-held-on-a-key.md)) | own frame, `FULLSCREEN_DIALOG`, never takes the mouse | `disc_256` in `surface-1` at 86 % and `ring_256` in `border-strong`; the dead zone in `surface-3` with the sheet's cross; separators in `border-subtle`; icons of the sheet (hand, note, smile, train were added) and Small labels in `text-2`; the lit slice an `accent` shape (`rr_fill_12`) with `on-accent` ink and the view's one glow; a caption (Panel, `surface-2`) that names the lit emote or says Cancel; `Motion.PopIn` 0.15 s from 0.85 and a 0.1 s fade-out | after UI-8 |
| Chat Gateway proposal and editor | inside the narrator box | Chip, FlatButtons, EditBox with a byte counter | UI-4 |
| NPC dialogue (`AzerothUnspokenDialogue`) | own frame, **does not close with Esc** (ADR 0020) | Panel, a Badge "addon ambient dialogue" that is always there, the NPC's title in the voice token, FlatButtons for the answers (a ChoiceList is a radio list: an answer acts at once, so it does not fit) | UI-4 |
| Journal (`AzerothUnspokenJournal`) | shell | Tabs (one for every registered section: eight today, with the sliding indicator), a sortable DataTable of the section's rows, Button, Dialog for irreversible actions, Toast for results; no Segmented here (no section has a filter of its own) | UI-5 |
| Journal export (`AzerothUnspokenJournalExport`) | shell | read-only EditBox with Ctrl+C on a `surface-2` field, Button, Toast | UI-5 |
| Relationships (`AzerothUnspokenRelations`) | shell | Tabs (list, people, options), sortable DataTable, Segmented (kind filter), EditBox, Dialog, Toast, the player's detail in two columns | UI-5 |
| Character soul (`AzerothUnspokenProfile`) | shell | two Sections (a quiet card with a title and a rule), Slider for every trait with its value in the mono font, Badge for where a value comes from, ThinBar for how many traits are chosen, Button (cycling values, topics), Dialog for the neutral profile, Toast | UI-6 |
| First-run wizard (`AzerothUnspokenWizard`) | shell | Segmented (the step indicator, numbered), ChoiceList (the language), Card (single-choice answers and consents), Button primary and secondary, the narrator's sample (UI-4) | UI-6 |
| Settings (the client's Settings canvas) | **no shell**: the client draws the frame | a `bg` surface of its own, a Section for each group, Switch, Segmented, Slider (with its - and +), Button (the choices too long or too many for a segment, and the consents); the content is on the theme (§2.5) | UI-6 |
| Confirmations, results | Dialog (layer `DIALOG`) and Toast, from the shell's windows | Dialog, Toast | UI-3 |

### 2.3 What is specific to AU

- **The narrator is not a window.** It sits over the game world, with the opacity the player chose. FDCP's rule for a glass look,
  a nearly opaque surface, does not fit it. The narrator keeps the rules of the UI review: the opacity setting applies to the
  background only (a Panel in the `bg` token whose fill carries the opacity; the ring, the shadow and the text keep their own),
  the text stays fully opaque, and the effective background is at least 0.55 ([#173](https://github.com/Finland6738/azeroth-unspoken/issues/173)) **and at least what the theme's text
  needs** to keep 4.5:1 over the brightest and the darkest world (`Narrator:Floor()`, worked out from the tokens: 0.6 in Nebula, whose light text
  needs a darker surface; 0.55 in Aurora). The contrast is computed over a white scene in both themes, as in `docs/design/UI_REVIEW.md`, and over a
  black one, which is the worst for Aurora (`Narrator.WorstContrast`).
- **The four voices** (narrator, inner voice, character, NPC) are AU's only addition to FDCP's token list (UI-4): one colour token per voice per theme,
  chosen to differ in lightness as well as in hue, and passing the contrast test in Nebula and in Aurora. A voice is
  also told by its written label, by its accent bar and by the typeface of the inner voice
  ([#186](https://github.com/Finland6738/azeroth-unspoken/issues/186)); a colour is never the only difference. The Character and NPC colours must be
  told apart by a protanope (their luminance ratio is at least 1.8:1 in both themes, `Tests/TestNarrator.lua`).

  | Token | Nebula (dark) | Aurora (light) | Used for |
  |---|---|---|---|
  | `voice-narrator` | `#C4B0FF` | `#4B2BB3` | the bar, the time line, the label and the text of the narrator's lines |
  | `voice-inner` | `#7FD4FF` | `#005F8F` | the inner voice |
  | `voice-character` | `#FFE08A` | `#935E00` | the character's words |
  | `voice-npc` | `#5BBF66` | `#0E5A28` | the NPC's words, and the NPC title of the ambient dialogue |

  The tokens are **4.5:1 or more on the opaque `bg` surface** in both themes (the lowest is Aurora's Character, 5.1). Over a translucent box the
  text is the voice's token **only where it keeps 4.5:1 over the brightest and the darkest world at that opacity** (`Narrator:Ink`), and `text-1`
  otherwise, which the floor above keeps at 4.5:1: Nebula's four voices read in their own colour from 0.8 up, a lower opacity gives `text-1`, and
  Aurora's give `text-1` over a dark world unless the box is opaque. The bar and the time line are always the voice's token (a graphic, 3:1). The
  muted words (`text-2`) follow the same rule. UI-8 compares the mockup tokens with `Theme.TOKENS`, which now has 31 names: FDCP's 27 and these four.
- **Button kinds.** *danger* (an action that loses data: the `err` token for outline and label, never a fill) and *text* (a link-like
  button, for Skip in the wizard). They add no colour token: *danger* uses `err`.
- **Consents.** The text a player reads to give a consent, and every privacy note, is 12 units or more. A consent that is on shows the
  state in words, not only by colour. An irreversible action asks through a Dialog.

### 2.4 No third theme, and the sizes AU does not follow

- **Two themes only**: **Nebula** (dark, the default) and **Aurora** (light). FDCP's third theme, **Drago**, is not built; its column in FDCP §2.1 is
  ignored. The token names are the same, so a theme is still only a table of colours, and a third one can be added without touching a window.
- **No text under 12 units.** FDCP writes eyebrows in 11 pt and table headers in 10 pt (FDCP §2.3). In AU both are 12 (the UI review,
  [#182](https://github.com/Finland6738/azeroth-unspoken/issues/182)); body text is 13, mono numbers 12 or 13. Click targets are at least 24 by 24 units.
- **Density.** FDCP's 36-40 unit table rows stay, with the text at 13.
- **What FDCP has and AU does not**: no Roster, Credits, Progress or Loot windows, no class names with a lit square, no instance covers,
  no site-export screens. Of FDCP's components AU uses what §2.2 lists and nothing more.

### 2.5 Names, files and saved data

| | FDCP | Azeroth Unspoken |
|---|---|---|
| Folder and toc | `FinlandDragonCreditPoints/` | `AzerothUnspoken/` (`AzerothUnspoken.toc`, `## Author: Finland6738` stays) |
| Namespace and prefix | `FDCP` | `AU` (global names `AzerothUnspoken...`, module table `NS`) |
| Saved variables | the addon's own | `AzerothUnspokenDB` (account) and `AzerothUnspokenCharacterDB` (character) |
| UI files | `UI/Assets.lua`, `Theme.lua`, `Motion.lua`, `Widgets.lua`, `Widgets/{Controls,DataTable,ThinBar}.lua`, `Windows/About.lua` | the same names under `AzerothUnspoken/UI/`; the windows keep their files (`JournalFrame.lua`, `RelationsFrame.lua`, ...) |
| Media | `Media/*.tga`, `Media/Fonts/` | `AzerothUnspoken/Media/` and `AzerothUnspoken/Media/Fonts/`, listed in `UI/Assets.lua`, one OFL text per font family |
| Tools | `tools/make_media.py`, `make_fonts.py`, `mockup_lib.py`, `make_mockups.py`, `check_addon.py`, `check_locale.py` | copied and adapted into `tools/` and `Tests/` (the checks join the suite) |
| Text | locale keys | every visible string is a locale key, enUS and itIT ([ADR 0023](../adr/0023-english-first-addon-and-english-command-names.md)); nothing is written in code |

| Personal look settings (UI-2) | the profile of its database (`theme`, `effects`, `animations`, `fontSource`) | `AzerothUnspokenDB.settings.ui`, **in the account** like `windowScale` and not per character: `ui.theme` (`nebula` \| `aurora`), `ui.neon` (glows and shadows, `effects` in FDCP), `ui.animations`, `ui.fontSource` (`addon` \| `game`). Defaults Nebula, on, on, addon; `Config.THEMES` lists the theme ids and `Tests/TestTheme.lua` checks them against `Theme.ORDER`. `Theme.Set(id)` or `Config:Set("ui.theme", id)` switches live. The Settings rows are in Settings > Appearance since UI-3 (below) |
| Window positions (UI-3) | per character | `AzerothUnspokenCharacterDB.windows[<global name>]` = `{ point, relativePoint, x, y }`, written when a window is dragged (by its frame or its title bar), restored the first time it opens in a session; a broken entry is dropped by `Config:Validate`. Settings > Appearance > *Reset window positions* forgets them |

**Widgets and the shell (UI-3).** `UI/Widgets.lua` and `UI/Widgets/{Controls,DataTable,ThinBar}.lua` hold the components of FDCP §3,
every one built on `NS.Theme` and `NS.Motion`: the Button kinds (`W.FlatButton(parent, text, width, height, onClick, kind)`, the default kind is
*secondary*, a boxed button), Card, Badge, Chip, Tabs, Segmented, TitleBar, Dialog, Toast, DataTable, EditBox, ChoiceList, Select, Switch,
Slider, ThinBar and the addon's own Tooltip (inverted: a `text-1` surface, `bg` text; `GameTooltip` stays for the game's items only). The flat
bronze palette (`W.PALETTE`, `W.BRAND`) is gone; the narrator box and the NPC dialogue were rebuilt in UI-4 and `W.LegacyFlatButton`, `W.Button`, `W.Background`, `W.SetBackgroundAlpha` and
`W.SetFontSize` are gone. The 36-unit
band became the 52-unit title bar, which rises 16 units above a window's frame (`W.BAR_ABOVE`), so the contents of every window keep their place
(`W.TOP`, 46 units from the frame's top); `Windows.lua` counts the bar when the narrator steps aside. The
window's name is written in capitals in Orbitron; the mono subtitle is the addon's name and version; `:SetStatus(text, tone)` shows a status
chip. Every text of every window is a theme font with a token since UI-6 (the journal and the relationships window since UI-5), so `W.Adopt`
(the game's gold becomes `accent-text`, its white `text-1`, its small white `text-2`) finds nothing to do; it stays in the window shell as a net, and a coloured word inside a line uses `W.Hex(token)`; the
Settings page has a `bg` surface of its own inside the client's frame, so its texts keep their contrast in Aurora. The narrator's sample in the
wizard is the narrator's own look since UI-4 (a Panel, the accent bar, the text in `voice-narrator`). The DataTable takes the first backend the client has: the ScrollBox with a
linear view and a DataProvider, then a FauxScrollFrame, then a pool of rows scrolled by the wheel (`Core/Compat.lua` makes each one inside
`pcall`; a ScrollBox that fails while it is filled moves the table to the next one for good).

**Animations: one setting (UI-3).** Settings > Appearance has *Theme* (Nebula, Aurora), *Neon effects*, *Animations* and *Fonts* (addon,
game), each live through `Config:Set` without `/reload`. The narrator's older *Reduce motion* row is **folded into Animations**: the row writes
`ui.animations` only. Since UI-4 the narrator box takes its motion from `NS.Motion` (the short fade of its entrance, the time line, the verses
that appear one at a time), and `ui.narrator.reduceMotion` is **neither written nor read any more**: `Theme.AnimationsOn()` reads `ui.animations`
alone, and the migration of `Config:Load` (below) moved a player who had the old setting on to `ui.animations = false`, once. One switch, because
the reason to turn motion off (motion sickness, a slow client) is the same for the narrator and for the windows. The narrator had no fade of
its own to replace since #186 (the box goes when its time line has run out, the frame alpha stays 1: #173); UI-4 adds only the entrance.

**Narrator, speak button, Chat Gateway and dialogue (UI-4).** The narrator box (`UI/NarratorFrame.lua`) is a Panel (radius 12, `bg`, ring, shadow)
with the voice's accent bar along the left edge inside the corners, a label (the voice's name in its colour, then the muted proposal countdown or
channel), three 24-unit ghost icon buttons (pause, history, hide: drawn with textures in `text-2`, `text-1` on hover; the sheet has no pause or
history icon, and the cross is the sheet's), the text in a scroll box as before, a ThinBar for the time (2 units, the voice's token), and for a
proposal a Chip with an arrow for the channel (click: next channel), a quiet *Discard* (kind *text*), *Another*, *Edit* and *To chat* (*ghost*) and
the one primary *Send* with the speak key. The proposal editor is a themed EditBox with a **byte counter** on its right: the bytes the line will take in chat
(`Gateway:TextFor`, so an emote's name or asterisks count) over the channel's limit, in `text-3`, in `err` and with the words "(cut)" over it (never
colour alone); Enter sends and Esc closes it as before. The history (`AzerothUnspokenNarratorHistory`) has the same surface at least 0.8 opaque, a handle, a ghost
close button, Esc, and its inline colours (the voice's name and text, the times) follow the theme. A change of theme or of the font setting
paints the box, the label and the history again (`Theme.OnChange`, `Config:OnChange`). The speak button (`UI/SpeakButton.lua`) is a 36-unit disc
in a ring (`circle`), the sheet's **quill** instead of the game's book icon, an accent ring, a lit icon and an accent glow while a proposal waits,
the addon's own **tooltip** (`W.Tooltip`, the lines one under the other) and a Badge *Paused* under it. The NPC dialogue
(`UI/DialogueFrame.lua`) is a Panel with the NPC's accent bar, the Badge *addon ambient dialogue* in its header (always visible), the title in
`voice-npc`, the answers as *secondary* FlatButtons ("1. ..." and the key as before), *Listen* as the *primary* one, and a fade-in from `NS.Motion`;
it is still not in `UISpecialFrames`: **no Esc** (ADR 0020). Its opacity setting (0.3-1, times 0.85) is raised to the narrator's floor.

**Journal and Relationships (UI-5).** The contents of the two windows are rebuilt on the widgets of UI-3 and need no `W.Adopt` any more (every text is a
`Theme.NewText`: `Tests/TestWindows.lua` checks that `W.Adopt` finds nothing in any view). *Journal* (`UI/JournalFrame.lua`, 760 by 540 units): the
introduction, `W.Tabs` (one tab for every registered section, the 2-unit bar sliding under the chosen one in 200 ms by `Motion.Slide`, at once with
Animations off; `bar:AddTab` adds a section another module registers later), the section's note, and one **sortable DataTable**: a text column
(flexible), a date column (`mono`, in `accent-text`, 104 units) and a column of at most two row buttons (196 units); a section with no dates or no actions gives
that room to the text. There are no pages: the table scrolls (ScrollBox, FauxScrollFrame or the pool with the wheel). A section keeps the order the player
chose while the window is open (`sorts[id]`); the stories and an open song are `plain` (read in their own order): no header, no sort
(`DataTable:SetHeaderShown`, `:SetSortable`, `:ClearSort`). A row of a tab is `{ text, t?, actions? }`: `t` is the date of the entry. An action that cannot be
undone (`confirm = <question key>`, `done = <toast key>`) asks through the window's **W.Dialog** (title: the question; text: "This cannot be undone."; the red
confirm button carries the action's own word; **Esc** cancels the question and nothing else: the Dialog takes the keyboard while it is up and does not let Esc
go on to the client, which would close the window under it) and then says the result in a **W.Toast** (bottom right, over the footer). Closing the
window cancels a question that is open. *Export* has the read-only copy box on a `surface-2` field and a toast at the left of its footer saying the text
is selected. *Relationships* (`UI/RelationsFrame.lua`, 720 by 680 units, the height grows with a longer introduction): `W.Tabs` for list, people
and options (the people tab carries the count of suggestions waiting; the detail of a person belongs to the list tab); in the list a **`W.Segmented`**
(All, NPCs, Players), the label filter, the search box and a sortable DataTable (name, type, label, disposition, last seen and encounters, the dates and counts in mono /
`accent-text`; a first sort by the last meeting, newest first, and the player's own order after it); in the people tab the name box and a sortable DataTable (name,
where the addon saw them, the **+** and **x** buttons); the detail and the options keep their layout with themed texts. Forget observations, Remove person and Forget
everything ask through the Dialog, and say the result in a Toast. The inline coloured words use `W.Hex(token)` and are drawn again by `Refresh`, which the window runs on a theme change.

**The guide, the soul window and the Settings page (UI-6).** The last three surfaces are rebuilt on the widgets of UI-3 and need no `W.Adopt` either
(`Tests/TestWindows.lua` checks every page, in both languages, with and without Total RP 3). `W.Confirm` (the two-click button) is gone: every action
that cannot be undone asks through a Dialog. The widgets gain `W.Section` (a quiet surface-1 card with a title in the H2 font and a rule, for the groups
of a window; `W.Card` stays the selectable one), `W.Segmented:SetItemText/:SetItemShown/:Layout` (the words change with the language, a page the
guide skips has no segment) and a text on every `W.ChoiceList` row. *The guide* (`UI/Wizard.lua`, 520 by 500 units, taller when a page needs it): the
step indicator is a `W.Segmented` of numbered segments under the title bar (the chosen step is the raised, bright one, the status chip says
"step n of N" in words, a click on a number goes to that page: the answers are independent), the language is a `W.ChoiceList`, the other answers
and the consents are single-choice `W.Card`s (marker, ring and raised fill; they carry a description that a plain list row cannot), every text is
`Theme.NewText` with a style (title, body, small, label, number), the consent pages keep their words and their dialogs. *The soul window*
(`UI/ProfileFrame.lua`, 700 wide, about 715 tall): two `W.Section`s, *Archetype and traits* (the archetype, a `W.ThinBar` and "n of 11 traits chosen",
a row for each trait with a `W.Slider` and its "-" and "+", the value in the mono font in `accent-text` and a `W.Badge` that says in words where it
comes from, then the inner voice and the culture of origin) and *Topics to avoid*; the **neutral profile** asks through a `W.Dialog` (Esc cancels it
and only it) and says the result in a `W.Toast` at the top of the window. *The Settings page* (`UI/SettingsFrame.lua`, 640 wide content): one
`W.Section` for each of General, Appearance, Chat, Narrator, Modules, Privacy and Info; an on/off setting is a `W.Switch` with *on* or *off* written next
to it, a choice of two to four short words (theme, fonts, style depth, literary forms, how long a proposal waits) a `W.Segmented`, a number a
`W.Slider` with "-" and "+" (whole percent for a fraction; the wheel scrolls the page and never moves these sliders), and a button that shows the value and
goes to the next for the choices too many or too long for a segment (language, chat mode, channel, pause, reading speed, combat, the character's name)
and for the two consents, which are asked in two steps and say their state in words. There is no `UIDropDownMenu`, and no `W.Select` here: its list
would be clipped by the scrolling canvas. `SettingsFrame.panel.sections` lists the sections; the Info section (UI-7, §2.6) is the last, after Privacy.

**Migration (UI-2).** A player who had turned the narrator's fades off (`ui.narrator.reduceMotion`, [#177](https://github.com/Finland6738/azeroth-unspoken/issues/177)) starts with
`ui.animations = false`: `Config:Load` sets it once, only when `ui.animations` is not in the file yet. The narrator setting still stops the
animations after that (`Theme.AnimationsOn()` reads both), so nothing the player chose is undone. The schema version does not change: `Merge`
adds the new keys and `Validate` brings a wrong theme or font source back to the default.

**Text written in code (UI-2).** `Tests/check_locale.py` (run by `Tests/run_tests.py`) fails when a string literal in `AzerothUnspoken/UI/*.lua` is
visible text: an argument of `SetText`, `Print`, `AddMessage` and the like, the value of a field such as `text`, `title`, `label` or `tooltip`, or
anything that reads like a sentence (two words with a space). A locale key such as `help_depth` is not text. The syntax of a slash command
(`usage = "mode private / preview"`) is English by ADR 0023. A line that holds no text to translate (a format of a command line, a developer
diagnostic) says so with `-- nolocale: the reason`; without a reason it fails. The same check compares the `ui` tables of
`Data/enUS/*UI.lua` and `Data/itIT/*UI.lua` (the same keys, the same `%s` placeholders) and that every `NS:L("key")` of the UI exists.

### 2.6 The Info page and the credits

FDCP shows its credits on an About tab of its main window. AU has no such tab: the **Info page lives in the client's Settings canvas** (a
last section of `UI/SettingsFrame.lua`, `SettingsFrame.LINKS`, `LogoKey` and `ApplyLogo`; AU has no `UI/Windows/About.lua`). `/au about` opens Settings and scrolls to it, and `/au about chat` prints the same
credits and the links to the chat. The page shows the credit to Finland and to the NEBULA community, the licence (code GPL-3.0-or-later, phrases and narrative data all rights reserved, example
pack MIT, documents CC BY 4.0), the fan-made notice (not affiliated with or endorsed by Blizzard Entertainment) and one link, Ko-fi (owner rule 2026-11-24: the addon carries no link to the NEBULA site or the GitHub pages), as a read-only box (`W.EditBox`:
the text is selected when the box takes the keyboard, and a change is put back at once) to copy with Ctrl+C. The texts are laid out in `Refresh`, because their height depends on the language. **Ko-fi appears only there and in the documents, never as a prompt.** The
Info page also shows the **NEBULA community logo**, a picture of its own (not the addon's own round logo of the title bar): full-colour and never tinted, in a dark variant
for Nebula and a light variant for Aurora, swapped with the theme without `/reload` ([ADR 0058](../adr/0058-nebula-ecosystem-look-and-credits.md), decision 7). The community logo is used with its owner's permission
and is not covered by the code licence; `docs/third-party.md` says so. The sources are `assets/nebula/nebula-logo-dark.png` and `-light.png` (cropped to their content); `tools/make_media.py` makes `Media/nebula_dark_256.tga` and `nebula_light_256.tga` (the art centred on a transparent square, 256 by 256), listed in `UI/Assets.lua`. `Theme.Call` swaps the file with the theme; a client that cannot load it shows the word NEBULA instead.

### 2.7 Accessibility invariants

The rules of the UI review (#171-#194) are in [ADR 0058](../adr/0058-nebula-ecosystem-look-and-credits.md), section "Invariants that must survive". They
take precedence over a token or a component of FDCP wherever the two disagree. In short: contrast tests pass in both themes, 24 by 24 click
targets, text of 12 or more, selection never by colour alone, Esc closes every window (except the NPC dialogue), an *Animations: no* setting makes everything immediate,
the narrator's text stays opaque, the window scale and the fallback fonts keep working.

## 3. Status

Each row is filled when its pull request merges. Nothing is verified in the game client until the owner says so: the look, the fonts, the 9-slice
shapes, the glows and the animations are predictions until then.

| Step | What | Pull request | Status |
|---|---|---|---|
| UI-0 | ADR 0058, this spec and its Italian twin, the ROADMAP section, issue #284 | [#285](https://github.com/Finland6738/azeroth-unspoken/pull/285) | done (docs only) |
| UI-1 | media: `make_media.py`, `make_fonts.py`, textures, fonts and OFL texts, `UI/Assets.lua`, packaging, `docs/third-party.md` | [#289](https://github.com/Finland6738/azeroth-unspoken/pull/289) | done: files generated and checked offline; **not tried in the client** (TGA loading, font glyphs) |
| UI-2 | `UI/Theme.lua`, `UI/Motion.lua`, config keys, theme tests, the check of text written in code | [#290](https://github.com/Finland6738/azeroth-unspoken/pull/290) | done: tokens equal FDCP's, switch without reload, contrast of both themes, `Tests/TestTheme.lua` and `Tests/check_locale.py`; **not tried in the client** (`SetFont` with the bundled fonts, 9-slice, ADD glows, gradients, animations) |
| UI-3 | widgets, the 52-point title bar, `W.Window`, Appearance settings | [#291](https://github.com/Finland6738/azeroth-unspoken/pull/291) | done: every widget of FDCP §3 on the theme, the windows on the new shell, positions per character, Settings > Appearance live, Reduce motion folded into Animations, contrast of every widget in both themes (`Tests/TestLayout.lua`), `Tests/TestWidgets.lua`; **not tried in the client** (the look, the fonts, the 9-slice shapes, the glows, the animations, the ScrollBox and the FauxScrollFrame, the position saving) |
| UI-4 | narrator box, speak button, Chat Gateway proposal and editor, dialogue frame, the four voice tokens | [#292](https://github.com/Finland6738/azeroth-unspoken/pull/292) | done: the narrator, the speak button, the proposal bar and editor (with a byte counter) and the NPC dialogue on the theme, `voice-*` tokens in both themes, the floor of the box worked out from the tokens, Reduce motion no longer written or read, `W.LegacyFlatButton`, `W.Button`, `W.Background`, `W.SetBackgroundAlpha` and `W.SetFontSize` removed, contrast of every voice in both themes (`Tests/TestLayout.lua`), `Tests/TestNarrator.lua`; **not tried in the client** (the look, the fonts, the fades, the voice colours on real scenes, the translucency, the editor and its counter, the speak button's tooltip) |
| UI-5 | Journal and Relationships | [#293](https://github.com/Finland6738/azeroth-unspoken/pull/293) | done: tabs with the sliding bar, sortable DataTables with mono numbers (no pages), Segmented kind filter, Dialog and Toast for what cannot be undone and for results, every text a Theme font (no `W.Adopt` in these two windows), `Tests/TestWidgets.lua`, `Tests/TestMemory.lua`, `Tests/TestRelations.lua`, `Tests/TestLayout.lua`; **not tried in the client** (the look, the fonts, the ScrollBox and the FauxScrollFrame, the tab slide, the dialog and its Esc, the toast, sorting) |
| UI-6 | Wizard, Character soul, the Settings canvas | [#294](https://github.com/Finland6738/azeroth-unspoken/pull/294) | done: the guide on a numbered step indicator and a language list, the soul window on two Sections with sliders, badges and a thin bar, the Settings page on Sections with switches, segments and sliders, a Dialog and a Toast for the neutral profile, `W.Confirm` removed, every text a Theme font (no `W.Adopt` left to do in any window), `Tests/TestWindows.lua`, `Tests/TestLayout.lua`, `Tests/TestWidgets.lua`, `Tests/TestWizardConsent.lua`, `Tests/TestSoul.lua`, `Tests/TestNarrator.lua`; **not tried in the client** (the look, the fonts, the numbered indicator and the language list, the sliders and switches in the client's canvas and its scroll bar, the dialog and its Esc, the toast) |
| UI-7 | credits: the Info page with the NEBULA community logo (dark and light), the `about` command, README, wiki About page, CurseForge text | [#295](https://github.com/Finland6738/azeroth-unspoken/pull/295) | done: the Info section (credits, licence, fan-made notice, four copy boxes, the logo of the theme), `/au about` and `/au about chat`, `make_media.py` makes the two full-colour logos, README and wiki credits with `prefers-color-scheme`, `docs/third-party.md`, `Tests/TestWindows.lua`, `TestLayout.lua`, `TestNarrator.lua`; **not tried in the client** (the logo and its TGA loading, the copy boxes and Ctrl+C, the scroll to Info, the swap with the theme) |
| UI-8 | mockups and assets regenerated, README GIF, wiki Interface Tour, final status of this spec | [#298](https://github.com/Finland6738/azeroth-unspoken/pull/298) | done: `tools/mockup_lib.py` (the 31 tokens of `Theme.lua`, the fonts, the widgets, the locale texts) and `tools/make_mockups.py` (`docs/specs/mockups/`: the design system and every window in both themes and languages, side by side with FDCP), the wiki mockups and their index, the `assets/` gallery (with the Appearance and Info sections and Aurora), both GIFs and the Interface Tour redrawn, `Tests/check_mockups.py` (mockup tokens = `Theme.lua`) and `Tests/check_theme_colors.py` (colours only in `Theme.lua`); **not tried in the client**: the mockups are drawn from the code and this spec, not screenshots |
