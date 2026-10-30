# Phrase Packs

The lines of Azeroth Unspoken live in **phrase packs**. The addon comes with its own packs, and you can add more: a pack can bring new lines, new events, places, NPCs, dialogues, stories, or even a new language.

## What it is

A phrase pack is a small, separate addon that sits next to Azeroth Unspoken in your `AddOns` folder. It needs Azeroth Unspoken to work, and adds to it without changing it.

- **Built-in packs** come inside the `AzerothUnspoken` folder: combat, exploration, life of the character, social moments, spells, classes, memory, relationships, personality, interlocutor and place, NPC dialogues, stories, frames and vocabulary.
- **Extra packs** are separate folders. The download includes two:
  - **`AzerothUnspoken_Example`**: a few lines for fishing and some lines tied to places;
  - **`AzerothUnspoken_Versi`**, the **verses pack** (id `versi`): a first test of literary forms, with inscriptions, remembered verses, inn rhymes, road songs, sayings, a hymn and a lament, in English and Italian. They only ever appear in your private narrator. See [[Literary Forms|Literary-Forms]].

## Enabling the verses pack

The verses pack is optional. To use it:

1. Copy the `AzerothUnspoken_Versi` folder into `AddOns`, as described below.
2. In game, `/au packs` should list `Verses: literary forms (prototype) (versi) - on`.
3. Type `/au event lore_test` to see one of its pieces straight away.

To stop it without uninstalling, type `/au pack versi off`.

## Installing a pack

1. Close the game.
2. Copy the pack's folder (for example `AzerothUnspoken_Example`) into `<WoW>\_forever_\Interface\AddOns`, next to the `AzerothUnspoken` folder.
3. Start the game. On the character selection screen, click **AddOns** and make sure both **Azeroth Unspoken** and the pack are ticked.
4. In game, type `/au packs` to check that the pack is listed.

Only install packs from people you trust, as with any addon.

To remove a pack, delete its folder from `AddOns`. To update it, replace the folder.

## Turning packs on and off

You do not need to uninstall a pack to stop using it.

| Command | What it does |
|---|---|
| `/au packs` | lists every pack, with its id and whether it is on or off |
| `/au pack <id> on` | turns a pack on |
| `/au pack <id> off` | turns a pack off |
| `/au stats` | how many lines are available in your language, per event |
| `/au validate` | checks all packs for mistakes and prints a summary |
| `/au validate full` | prints every problem found |
| `/au validate <id>` | checks one pack only |

Use the **id** shown by `/au packs`, for example:

```
/au packs
/au pack example off
```

Turning a pack off is remembered for your whole account. Built-in packs can be turned off too, if you want a narrower narrator.

## What you will see

`/au packs` prints one line per pack:

```
Esempio: pesca e luoghi (example) - on
```

The pack's name is shown as its author wrote it, which may be in another language. The id in brackets is what you type.

`/au validate` prints a summary such as this one (your numbers depend on the packs you have):

> Validator: 1005 lines in 15 packs, 2109 variants: 0 errors, 3 warnings.

**Errors** usually mean a line will not work; **warnings** are smaller things, such as a line that is a bit long. If a pack shows errors, tell its author. If a built-in pack shows errors, please [[report it|Reporting-Bugs-and-Feedback]].

## Writing your own pack

Writing packs is for people who like to tinker. The complete guide, with examples, lives in the repository: [PACK_FORMAT.md](https://github.com/Finland6738/azeroth-unspoken/blob/main/AzerothUnspoken/PACK_FORMAT.md). Good lines follow a few quality rules, described in [CONTRIBUTING.md](https://github.com/Finland6738/azeroth-unspoken/blob/main/CONTRIBUTING.md).

## Tips

- After installing a pack, use `/au validate <id>` once to make sure it loaded cleanly.
- If something strange appears after installing a pack, turn the pack off with `/au pack <id> off` and see if the problem goes away.
