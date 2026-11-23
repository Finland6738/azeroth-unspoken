# Interface style: the NEBULA look in Azeroth Unspoken

> English version. The Italian twin is [ui-style.it.md](ui-style.it.md); when they differ, fix both.
>
> Specification of step **UI-0** of the UI-ECO plan. Decision: [ADR 0058](../adr/0058-nebula-ecosystem-look-and-credits.md).
> Tracking issue: [#284](https://github.com/Finland6738/azeroth-unspoken/issues/284). Steps: [ROADMAP.md](../../ROADMAP.md), section "UI-ECO".

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
| Narrator box (`AzerothUnspokenNarrator`) | own frame, not the shell | Panel (translucent, §2.3), voice label and accent bar, ghost buttons, Badge (channel), proposal bar with one primary and one quiet button, ThinBar (time) | UI-4 |
| Narrator history (`AzerothUnspokenNarratorHistory`) | shell, no tabs | DataTable (time, voice, text), ghost buttons | UI-4 |
| Speak button (`AzerothUnspokenButton`) | own frame | circle texture, Badge, own Tooltip, paused state also in words | UI-4 |
| Chat Gateway proposal and editor | inside the narrator box | Badge, EditBox with a byte counter, Button kinds | UI-4 |
| NPC dialogue (`AzerothUnspokenDialogue`) | own frame, **does not close with Esc** (ADR 0020) | Panel, NPC title band labelled "addon ambient dialogue", ChoiceList for the answers | UI-4 |
| Journal (`AzerothUnspokenJournal`) | shell | Tabs (seven, with the sliding indicator), DataTable of memories and places, Segmented sub-tabs, Button, Dialog for irreversible actions, Toast for results | UI-5 |
| Journal export (`AzerothUnspokenJournalExport`) | shell | read-only EditBox with Ctrl+C, Button | UI-5 |
| Relationships (`AzerothUnspokenRelations`) | shell | Tabs (list, people, options), sortable DataTable, Segmented, EditBox, ChoiceList, Chip, Dialog, Toast, the player's detail in two columns | UI-5 |
| Character soul (`AzerothUnspokenProfile`) | shell | Cards, ThinBar for the trait levels, ChoiceList, Chip, Button | UI-6 |
| First-run wizard (`AzerothUnspokenWizard`) | shell | Segmented (language and steps), ChoiceList cards for the consents, Button primary, Dialog | UI-6 |
| Settings (the client's Settings canvas) | **no shell**: the client draws the frame | Cards for the groups, Switch, Slider, Segmented, Button, EditBox; the content is rebuilt on the theme (§2.5) | UI-6 |
| Confirmations, results | Dialog (layer `DIALOG`) and Toast, from the shell's windows | Dialog, Toast | UI-3 |

### 2.3 What is specific to AU

- **The narrator is not a window.** It sits over the game world, with the opacity the player chose. FDCP's rule for a glass look,
  a nearly opaque surface, does not fit it. The narrator keeps the rules of the UI review: the opacity setting applies to the
  background only, the text stays fully opaque, the effective background is at least 0.55 ([#173](https://github.com/Finland6738/azeroth-unspoken/issues/173)), and the
  contrast is computed against a white scene in both themes, as in `docs/design/UI_REVIEW.md`.
- **The four voices** (narrator, inner voice, character, NPC) are AU's only addition to FDCP's token list: one colour token per voice per theme,
  chosen to differ in lightness as well as in hue, and passing the contrast test in Nebula and in Aurora. A voice is
  also told by its written label and by the shape of its accent bar, and the inner voice by italics
  ([#186](https://github.com/Finland6738/azeroth-unspoken/issues/186)); a colour is never the only difference. The Character and NPC colours must be
  told apart by a protanope.
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

The keys that hold the theme, the neon effects, the animations and the font go through `Config` and are named in step UI-2; this table
is completed then. The old `W.PALETTE`, `W.BRAND` and the 36-unit band are removed in UI-3.

### 2.6 The Info page and the credits

FDCP shows its credits on an About tab of its main window. AU has no such tab: the **Info page lives in the client's Settings canvas** (a
page of the addon's category, built from `UI/Windows/About.lua`). A command named `about` (planned for UI-7, so not quoted as a command yet) opens Settings on it, and its `chat` form prints the same
credits to the chat. The page shows the name, the version, the licence (code GPL-3.0-or-later, phrases and narrative data all rights reserved, example
pack MIT, documents CC BY 4.0), the NEBULA site, the GitHub repository and issues, and Ko-fi, each as a read-only box to copy with Ctrl+C. The fan-made
notice (not affiliated with or endorsed by Blizzard Entertainment) is on it. **Ko-fi appears only there and in the documents, never as a prompt.** The
Info page also shows the **NEBULA community logo**, a picture of its own (not the addon's own round logo of the title bar): full-colour and never tinted, in a dark variant
for Nebula and a light variant for Aurora, swapped with the theme without `/reload` ([ADR 0058](../adr/0058-nebula-ecosystem-look-and-credits.md), decision 7). The community logo is used with its owner's permission
and is not covered by the code licence; `docs/third-party.md` says so. The image files arrive in step UI-7.

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
| UI-0 | ADR 0058, this spec and its Italian twin, the ROADMAP section, issue #284 | this one | done (docs only) |
| UI-1 | media: `make_media.py`, `make_fonts.py`, textures, fonts and OFL texts, `UI/Assets.lua`, packaging, `docs/third-party.md` | | to do |
| UI-2 | `UI/Theme.lua`, `UI/Motion.lua`, config keys, theme tests, the check of text written in code | | to do |
| UI-3 | widgets, the 52-point title bar, `W.Window`, Appearance settings | | to do |
| UI-4 | narrator box, speak button, Chat Gateway proposal and editor, dialogue frame | | to do |
| UI-5 | Journal and Relationships | | to do |
| UI-6 | Wizard, Character soul, the Settings canvas | | to do |
| UI-7 | credits: the Info page with the NEBULA community logo (dark and light), the `about` command, README, wiki About page, CurseForge text | | to do |
| UI-8 | mockups and assets regenerated, README GIF, wiki Interface Tour, final status of this spec | | to do |
