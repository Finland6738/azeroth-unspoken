# Mockups of the interface style

> The pictures of [ui-style.md](../ui-style.md) (Italian twin: [ui-style.it.md](../ui-style.it.md)), made by
> [`tools/make_mockups.py`](../../../tools/make_mockups.py) in UI-ECO step UI-8.

**Every image here is an illustrative mockup, not an in-game screenshot.** Each one is drawn from the addon's code: the
sizes and anchors of `AzerothUnspoken/UI/`, the 31 tokens of `UI/Theme.lua` (both themes), the widgets of
`UI/Widgets.lua` and the texts of the locale files (English and Italian). Nothing has been tried in the game client yet:
the fonts, the 9-slice shapes, the glows and the animations may look different there. The characters are invented, the
icons are original drawings, the only pictures are the addon's own logo and the NEBULA community logo (used with its
owner's permission). No Blizzard art.

## How they are made

```
.venv/Scripts/python -I -X utf8 tools/make_mockups.py              every image (8 scenes x 2 themes x 2 languages)
.venv/Scripts/python -I -X utf8 tools/make_mockups.py journal      only the scenes whose name contains the word
.venv/Scripts/python -I -X utf8 tools/make_mockups.py --lang it    only one language
```

- [`tools/mockup_lib.py`](../../../tools/mockup_lib.py) holds the tokens (the same values as `Theme.lua`), the fonts the
  addon ships (Orbitron, Outfit, JetBrains Mono, loaded from `AzerothUnspoken/Media/Fonts/`), the widgets as HTML and CSS
  and `L(lang, key)`, which reads the locale files with the addon's own registration call.
- The windows are the ones of [`docs/design/mockups/tools/components.py`](../../design/mockups/tools/components.py), the
  same code that draws the wiki's pictures and the `assets/` gallery.
- `Tests/check_mockups.py` (part of `Tests/run_tests.py`) fails when a token of the library differs from `Theme.lua`,
  when `docs/design/mockups/mockups.css` is not the one the library writes, when a scene does not build, or when an image
  is missing or left over. `Tests/check_theme_colors.py` fails when a colour is written in `UI/` outside `Theme.lua`.

The files are named `au-<scene>-<theme>-<lang>.webp`: unique names, because the wiki publishes every image in one folder.

## The design system

| Nebula (dark, the default) | Aurora (light) |
|---|---|
| ![Illustrative mockup: the tokens, widgets and fonts of the Nebula theme](au-design-system-nebula-en.webp) | ![Illustrative mockup: the tokens, widgets and fonts of the Aurora theme](au-design-system-aurora-en.webp) |

The 31 tokens: the 27 of the sister addon, with the same names and values, and the four voices of the narrator
(`voice-narrator`, `voice-inner`, `voice-character`, `voice-npc`, spec section 2.3). The buttons are the six kinds of
`W.FlatButton` (primary, secondary, ghost, neon, danger, text); the badges are the five tones of `W.Badge`; Orbitron is
written in capitals only. Italian: [Nebula](au-design-system-nebula-it.webp), [Aurora](au-design-system-aurora-it.webp).

## Every window in both themes

| Scene | Nebula | Aurora |
|---|---|---|
| Narrator box, proposal and speak button | ![Illustrative mockup: the narrator box in Nebula](au-narrator-nebula-en.webp) | ![Illustrative mockup: the narrator box in Aurora](au-narrator-aurora-en.webp) |
| Journal | ![Illustrative mockup: the journal in Nebula](au-journal-nebula-en.webp) | ![Illustrative mockup: the journal in Aurora](au-journal-aurora-en.webp) |
| Relationships | ![Illustrative mockup: the relationships list in Nebula](au-relationships-nebula-en.webp) | ![Illustrative mockup: the relationships list in Aurora](au-relationships-aurora-en.webp) |
| Character soul | ![Illustrative mockup: the character soul in Nebula](au-soul-nebula-en.webp) | ![Illustrative mockup: the character soul in Aurora](au-soul-aurora-en.webp) |
| First-run guide | ![Illustrative mockup: the first-run guide in Nebula](au-wizard-nebula-en.webp) | ![Illustrative mockup: the first-run guide in Aurora](au-wizard-aurora-en.webp) |
| Settings > Info | ![Illustrative mockup: the Info section in Nebula, with the dark NEBULA logo](au-settings-info-nebula-en.webp) | ![Illustrative mockup: the Info section in Aurora, with the light NEBULA logo](au-settings-info-aurora-en.webp) |
| NPC dialogue | ![Illustrative mockup: the NPC dialogue in Nebula](au-dialogue-nebula-en.webp) | ![Illustrative mockup: the NPC dialogue in Aurora](au-dialogue-aurora-en.webp) |

Every scene also exists in Italian: replace `-en` with `-it` in the file name.

## Side by side with the sister addon

Finland Dragon Credit Points (FDCP) is the source of the look ([its spec](https://github.com/Finland6738/finland-dragon-credit-points/blob/main/docs/specs/ui-style.md)).
Its pictures are linked from its own repository; they are not copied here.

| Azeroth Unspoken | FDCP | What is the same, what differs |
|---|---|---|
| ![Illustrative mockup: the design system of Azeroth Unspoken](au-design-system-nebula-en.webp) | ![FDCP mockup: its design system](https://raw.githubusercontent.com/Finland6738/finland-dragon-credit-points/main/docs/specs/mockups/fdcp-design-system-en.webp) | The same 27 tokens and values, the same fonts and button kinds. AU adds the four voice tokens and the `danger` and `text` buttons; FDCP's third theme (Drago) is not here. |
| ![Illustrative mockup: the Info section of Azeroth Unspoken](au-settings-info-nebula-en.webp) | ![FDCP mockup: its Info page](https://raw.githubusercontent.com/Finland6738/finland-dragon-credit-points/main/docs/specs/mockups/fdcp-about-en.webp) | The same credits: made by Finland, the NEBULA community and its logo, the licence, the fan-made notice, the Ko-fi link to copy with Ctrl+C (the addon's only link). In AU it is the seventh section of the client's Settings page, not a tab of the window. |
| ![Illustrative mockup: the journal of Azeroth Unspoken](au-journal-nebula-en.webp) | ![FDCP mockup: its Credits tab](https://raw.githubusercontent.com/Finland6738/finland-dragon-credit-points/main/docs/specs/mockups/fdcp-credits-en.webp) | The same 52-unit title bar (round logo, Orbitron title, mono subtitle, close box), tabs with a 2-unit accent bar, a sortable table with mono numbers in `accent-text`. AU keeps a separate window for each subject (decision 1 of the plan); FDCP has one window with tabs. |
| ![Illustrative mockup: the journal of Azeroth Unspoken in Aurora](au-journal-aurora-en.webp) | ![FDCP mockup: its Credits tab in Aurora](https://raw.githubusercontent.com/Finland6738/finland-dragon-credit-points/main/docs/specs/mockups/fdcp-credits-aurora-en.webp) | The light theme Aurora: the same tokens in both addons. |
| ![Illustrative mockup: the narrator box of Azeroth Unspoken](au-narrator-nebula-en.webp) | ![FDCP mockup: its roll popup](https://raw.githubusercontent.com/Finland6738/finland-dragon-credit-points/main/docs/specs/mockups/fdcp-roll-popup-en.webp) | A frame over the game world: the same panel, primary and ghost buttons. The narrator box is translucent (its opacity is a setting, never under the floor that keeps 4.5:1 over any world) and coloured by the voice on screen. |
