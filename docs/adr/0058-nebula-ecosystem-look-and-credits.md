# 0058. The interface adopts the look and credits of the NEBULA ecosystem (FDCP), and replaces the flat bronze look

- Status: Accepted (a plan; nothing built yet, and nothing seen in the game client). Supersedes the flat bronze window look of [#187](https://github.com/Finland6738/azeroth-unspoken/issues/187), which has no ADR of its own
- Date: 2026-11-23 (owner's approval of the UI-ECO plan, step UI-0; tracking issue [#284](https://github.com/Finland6738/azeroth-unspoken/issues/284))

## Context

The UI review (U1, [`docs/design/UI_REVIEW.md`](../design/UI_REVIEW.md)) found that the windows had no frame, no title band and no common look. Issue #187 answered with one window shell, `W.Window`, a 36-unit title band, a thin bronze edge and flat buttons, all on a warm dark palette, `W.PALETTE` in `AzerothUnspoken/UI/Widgets.lua`. It works, it is accessible, and it uses no Blizzard art. It also looks like nothing else.

The same author publishes a second addon for the same client, Finland Dragon Credit Points (FDCP), made for the NEBULA guild community. FDCP built its interface from the community site: violet-black surfaces in steps, an amber-coral accent, three-level borders, rounded 9-slice shapes, Outfit, JetBrains Mono and Orbitron, tabs with a sliding indicator, glows, and animations of 120, 200 and 320 ms. Its decision is [ADR 0004 of FDCP](https://github.com/Finland6738/finland-dragon-credit-points/blob/main/docs/adr/0004-interface-style-of-the-community-site.md) and its reference is [`docs/specs/ui-style.md`](https://github.com/Finland6738/finland-dragon-credit-points/blob/main/docs/specs/ui-style.md) (Italian). FDCP runs on the same client (Interface 16001, Lua 5.1), so every API it uses applies here too. The two addons are one family: a player of one should recognise the other, and both should carry the same credits and the same way to find the community.

The constraints are the project's own: no Blizzard art, no text written in code (every visible string is a locale key, enUS and itIT), no new network access, no protected frames, and the accessibility rules that the UI review established, which must not be lost in a restyle.

## Decision

Azeroth Unspoken adopts the NEBULA look of FDCP: the **same tokens** (names and values), **fonts**, **components** and **animations**, with **Nebula** (dark) as the default theme and **Aurora** (light). The code is copied from FDCP and adapted (names, prefixes, SavedVariables `AzerothUnspokenDB` and `AzerothUnspokenCharacterDB`); there is **no shared library** between the two addons. The look replaces the flat bronze look of #187: `W.PALETTE` and the 36-unit band go away, while the names `W.Window`, `W.FlatButton` and `W.Card` stay, rebuilt on the theme, so that every window takes the new look at once.

The owner approved seven decisions on 2026-11-23 (the seventh was added later the same day):

1. **Separate windows, not one tabbed window.** Azeroth Unspoken keeps its own windows (journal, relationships, character soul, wizard, the narrator and its companions), each on the new shell with a 52-point title bar. FDCP's single main window with tabs does not fit an addon whose centre is a box on the screen.
2. **Logo.** The NEBULA guild logo, round, sits in the title bar. It is used with its owner's permission and is **not covered by the code licence**; `docs/third-party.md` says so.
3. **Themes.** Only **Nebula** (default) and **Aurora**. No third theme for now; the token names are the same as FDCP's, so a theme can be added later as a table of colours.
4. **Languages.** The wiki stays in English, except the About page, which has an Italian twin (`About-it.md`). The UI spec has an Italian twin as well (`docs/specs/ui-style.it.md`). `README.md` and `README.it.md` are both updated.
5. **Ko-fi** appears only on the in-game Info page and in the documents, never as a prompt or a pop-up. The README sentence that says the addon never asks for anything in the game is reworded to say exactly that.
6. **Credits** state the mixed licence of the project ([ADR 0034](0034-licensing-gpl-code-reserved-phrases.md)) and use the public name **Finland**. The ROADMAP rule "in the credits, use Finland6738" becomes "Finland"; the `## Author:` line of the toc stays `Finland6738`, as in FDCP. Real names, emails and personal paths never appear.
7. **The NEBULA community logo in the credits.** The Settings > Info page shows the community logo, in two variants supplied by the owner: a dark-theme one for Nebula and a light-theme one for Aurora, the variant following the active theme and changing with it without `/reload`. It is a different picture from the guild logo of decision 2 (the round one in the title bar): full-colour, never tinted, unlike the white shapes of the theme. It is also used in the READMEs, the wiki About page and the CurseForge text, with the owner's permission, and like the guild logo it is not covered by the code licence (`docs/third-party.md`). The image files enter the repository in step UI-7.

The specification is [`docs/specs/ui-style.md`](../specs/ui-style.md) (Italian twin [`ui-style.it.md`](../specs/ui-style.it.md)). It does not copy FDCP's spec: it points to it as the source and lists only the differences. The work is nine steps, one session and one pull request each, in order (UI-0 to UI-8, in [ROADMAP.md](../../ROADMAP.md)).

### Invariants that must survive

The look changes; these rules, from the UI review (#171-#194), do not. Each step keeps them and its tests prove them.

- **Contrast.** The contrast tests of `Tests/TestLayout.lua` pass in both themes; text keeps at least 4.5:1 and the edge of a control or a slider track at least 3:1 against what it sits on. A glow or a gradient is decoration and is never the only carrier of meaning.
- **Click targets** of at least 24 by 24 units, with a gap between a destructive control and its neighbours.
- **Text** of at least 12 units, and consent and privacy text never smaller. FDCP uses 10 and 11 points for table headers and eyebrows: here they are 12.
- **Selection is never shown by colour alone.** A selected tab, segment, chip or row also has a shape: the 2-point indicator, a raised fill, a tick or a border.
- **Esc closes every window** (`UISpecialFrames`), each window has a close box, and the windows stack and raise as `Windows.lua` makes them (#181).
- **Reduced motion.** An *Animations* setting turns every animation off; with it off, nothing starts and every change is immediate. The only animation of the narrator stays gentle, with no flashing and no typewriter reveal.
- **Narrator legibility.** The opacity setting applies to the background only; the text stays fully opaque, and the effective background stays at 0.55 or more (#173). The four voices differ by a written label and a shape as well as a colour (#186).
- **Window scale** (#182) and the saved position per character keep working.
- **No `UIDropDownMenu`, no protected frame, no reskin of a Blizzard frame**; `GameTooltip` only for items.
- **Fallback fonts.** If a bundled font does not load, the game's own font is used, and a setting chooses the game's fonts outright.

## Alternatives considered

- **Keep the bronze look.** It is accessible and finished, but it makes the two addons of one author look unrelated, and a community that already knows FDCP would find nothing familiar here.
- **One shared UI library for both addons.** It would avoid the copy, but it ties two addons to one release cycle and one load order, adds a hard dependency for the players, and the two have different window models. A copy that is adapted is simpler and keeps each addon standalone.
- **One tabbed main window as in FDCP.** AU's windows are used one at a time and alongside the narrator, which has to stay visible; a single large window would hide it ([#181](https://github.com/Finland6738/azeroth-unspoken/issues/181)).
- **A third theme (FDCP's Drago, the guild logo palette).** There is no demand for it here; the token names are identical, so it can be added later without touching the code that uses them.
- **Restyle only the colours and keep the shell.** The shell is the problem: no rounded shapes, no 9-slice, no animation, no fonts. A palette swap would not look like FDCP either.

## Consequences

- **Positive:** the family looks and reads as one; the tokens, widgets and checks are copied from code that is already written and reviewed; a theme is a table, so the light theme and the contrast tests come with it; the credits and the community link are the same in both addons.
- **Fonts and textures enter the package.** Outfit, JetBrains Mono and Orbitron (SIL OFL 1.1, one `*-OFL.txt` per family, Orbitron whole and unmodified because it has a Reserved Font Name) and about 40 white textures and icons, drawn by FDCP's `make_media.py` (GPL, no third-party art), go into `AzerothUnspoken/Media/`. The release zip grows by a few megabytes; `tools/package_release.py` and `docs/third-party.md` follow. A new font is read only at the next client start, not after `/reload`.
- **The mockups must be regenerated.** `docs/design/mockups`, the 98 PNGs of `assets/`, the README GIF and the wiki's interface tour show the bronze look and become wrong as the steps land; step UI-8 rebuilds them with a generator whose tokens a test compares with `Theme.lua`. Until then they describe the previous look.
- **The licence is stated, not changed.** Code stays GPL-3.0-or-later, phrases and narrative data all rights reserved, the example pack MIT, the documentation CC BY 4.0 (ADR 0034). The fonts keep the OFL, and the NEBULA logo is the one element used by permission outside those licences.
- **Costs and risks:** nine pull requests of UI work, each changing windows that have no in-game test; every API new to this addon (`SetTextureSliceMargins`, `SetGradient`, `AnimationGroup`, ScrollBox) is checked against the Forever API dump, guarded in `Compat.lua` and covered by `Tests/check_api.py`. **Nothing of the look has been seen in the client**: 9-slice quality at fractional scales, glows, fonts and animations are predictions until the owner runs the game.

## References

- Spec: [`docs/specs/ui-style.md`](../specs/ui-style.md) and [`ui-style.it.md`](../specs/ui-style.it.md); source: FDCP's `docs/specs/ui-style.md` and its ADR 0004.
- Tracking issue [#284](https://github.com/Finland6738/azeroth-unspoken/issues/284); the UI review [`docs/design/UI_REVIEW.md`](../design/UI_REVIEW.md) (#171-#194, #187).
- [ADR 0034](0034-licensing-gpl-code-reserved-phrases.md) (licensing), [ADR 0010](0010-forever-api-dump-as-reference.md) (the API dump), [ADR 0023](0023-english-first-addon-and-english-command-names.md) (English first).
