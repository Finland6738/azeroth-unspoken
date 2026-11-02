# Interface mockups

Illustrative mockups of every window of Azeroth Unspoken, built from the addon code: the sizes, anchors, colours and
texts of `AzerothUnspoken/UI/` and of the interface texts in `AzerothUnspoken/Data/enUS/` and `itIT/`. The sample
data (names, memories, relationships) is invented; the lines are real lines of the phrase database and of the verses
pack. **They are not in-game screenshots**: nothing has been tested in the real client yet, and every image says so.

Rules (from the UI review, [UI_REVIEW.md](../UI_REVIEW.md)): no Blizzard art, icon, font or screenshot; the landscapes are
original SVG drawings and the icons original stand-ins; every page carries the caption "illustrative mockup, not an
in-game screenshot". The `proposed-*` pages are proposals of the review, not the addon as it is: the player's manual
never uses them.

## What is here

- `*.html`: one page per window or state, on [`mockups.css`](mockups.css); [`index.html`](index.html) lists them by
  window, with the wiki page each one is meant for.
- `png/`: the pages rendered to PNG. The wiki pages show them (see below).
- [`interface-tour.gif`](interface-tour.gif): every window type, a few seconds each, shown near the top of the README.
- [`narrator-demo.gif`](narrator-demo.gif): the narrator in action, from a forest at dusk to a line sent on confirmation.
- `tools/`: the generators.

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

The pinned packages are in [`requirements.txt`](requirements.txt): Pillow for the GIFs, lupa for the chat capture.
`tools/proposed.py` builds the `proposed-*` pages; `tools/mockkit.py` and `tools/components.py` hold the shared widgets
and the windows.

## In the wiki

The manual pages in `docs/wiki/` show the PNG files with a relative link, `../design/mockups/png/<name>.png`, so they
also display in the repository. When the wiki is published, `tools/sync_wiki.py` copies each image a page uses into the
wiki's `images/` folder and points the link there. The page "Interface tour" lists every window with its mockup, in the
order of `interface-tour.gif` (the `TOUR` list of `make_gif.py`).
