# Interface mockups

Illustrative mockups of every window of Azeroth Unspoken, built from the addon code (UI-ECO step UI-8): the sizes and
anchors of `AzerothUnspoken/UI/`, the 31 tokens of `UI/Theme.lua` (Nebula, the default dark theme, and Aurora, the light
one), the widgets of `UI/Widgets.lua`, the fonts the addon ships and the interface texts of `AzerothUnspoken/Data/enUS/`
and `itIT/`, read with the addon's own registration call. The sample data (names, memories, relationships) is invented;
the lines are real lines of the phrase database and of the verses pack. **They are not in-game screenshots**: nothing has
been tested in the real client yet, and every image says so, with the theme it shows.

Rules (from the UI review, [UI_REVIEW.md](../UI_REVIEW.md)): no Blizzard art, icon, font or screenshot; the landscapes are
original SVG drawings and the icons original line drawings; the only pictures are the addon's own logo and the NEBULA
community logo (with its owner's permission). The client's own frames (chat frame, Settings window, confirmation dialog)
are plain grey stand-ins. The `proposed-*` pages are the UI review's proposals of 2026-10, kept as history with their own
`review.css`: they show the old look, never the addon as it is, and the player's manual never uses them.

## What is here

- `*.html`: one page per window or state, on [`mockups.css`](mockups.css) (written by `tools/mockup_lib.py`, never by
  hand); [`index.html`](index.html) lists them by window, with the wiki page each one is meant for. The pages ending in
  `-aurora` show the light theme.
- `png/`: the pages rendered to PNG. The wiki pages show them (see below).
- [`interface-tour.gif`](interface-tour.gif): every window type, a few seconds each, shown near the top of the README.
- [`narrator-demo.gif`](narrator-demo.gif): the narrator in action, from a forest at dusk to a line sent on confirmation.
- `tools/`: the generators. The design system and every window in both themes and both languages are in
  [docs/specs/mockups](../../specs/mockups/README.md), with a side-by-side comparison with the sister addon.

## Rebuilding

From the repository root, with the repository's virtual environment (Windows paths shown; elsewhere `.venv/bin/python`):

```
.venv/Scripts/python -m pip install -r docs/design/mockups/requirements.txt
.venv/Scripts/python -I -X utf8 docs/design/mockups/tools/build_mockups.py
.venv/Scripts/python -I -X utf8 docs/design/mockups/tools/render.py
.venv/Scripts/python -I -X utf8 docs/design/mockups/tools/make_gif.py
```

1. `build_mockups.py` writes the HTML pages and `index.html`. The `/au help` and `/au debug` pages are captured from the
   addon itself by `chat_capture.py`, which loads it the way the offline tests do (lupa and `Tests/MockWoWAPI.lua`), so
   their values are those of the simulated client.
2. `render.py [name ...]` renders the pages (all, or the named ones) to `png/` with a headless Chromium browser:
   Microsoft Edge on Windows, Chrome or Chromium elsewhere; set `MOCKUP_BROWSER` to its path if it is not found.
3. `make_gif.py [narrator] [tour]` builds `narrator-demo.gif` (it renders its own frames with the same browser) and
   `interface-tour.gif` (from `png/`); with no word, both.

The pinned packages are in [`requirements.txt`](requirements.txt): Pillow for the GIFs, lupa for the locale texts and
the chat capture. [`tools/mockup_lib.py`](../../../tools/mockup_lib.py) (at the repository root) holds the tokens, the fonts,
the widgets and the locale reader; `tools/components.py` here draws each window on them; `tools/mockkit.py` holds the page,
the landscapes and the client's stand-ins. `Tests/check_mockups.py` fails when a token differs from `UI/Theme.lua` or when
`mockups.css` is out of date.

## The assets folder

`tools/build_assets.py` (at the repository root) uses these same tools to build [`assets/`](../../../assets/README.md):
one PNG for every case of the interface, with clear names and an index. It writes its pages to a temporary folder,
so it does not change anything here, and adds the cases these pages do not draw (the prose depths, the Italian voices
and wizard steps, each settings section, more chat commands).

## In the wiki

The manual pages in `docs/wiki/` show the PNG files with a relative link, `../design/mockups/png/<name>.png`, so they
also display in the repository. When the wiki is published, `tools/sync_wiki.py` copies each image a page uses into the
wiki's `images/` folder and points the link there. The page "Interface tour" lists every window with its mockup, in the
order of `interface-tour.gif` (the `TOUR` list of `make_gif.py`).
