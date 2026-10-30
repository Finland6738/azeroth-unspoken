# Installation and Updating

This page explains how to install Azeroth Unspoken, how to check that it loaded, how to update it and how to remove it.

## Requirements

- **World of Warcraft: Forever** (the addon is made for interface version 16001). Other WoW clients, such as retail or Classic Era, are not supported.
- No other addon is required.
- Optional: **Total RP 3**. Azeroth Unspoken works fully without it. See [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]].

## Download

There are no packaged releases yet. To get the addon:

1. Open the [GitHub repository](https://github.com/Finland6738/azeroth-unspoken).
2. Click the green **Code** button, then **Download ZIP**.
3. Unzip the file somewhere on your computer, for example on your desktop.

## Install

1. Close the game, or stay on the character selection screen.
2. Open your game folder and go to `<WoW>\_forever_\Interface\AddOns`. Here `<WoW>` stands for the folder where World of Warcraft is installed on your computer. If the `AddOns` folder does not exist, create it.
3. From the unzipped download, copy the **`AzerothUnspoken`** folder into `AddOns`.
4. Optional: also copy **`AzerothUnspoken_Example`**, a small sample phrase pack (a few lines for fishing and for some places). See [[Phrase Packs|Phrase-Packs]].
5. Start the game. On the character selection screen click **AddOns** and make sure **Azeroth Unspoken** is ticked.

You only need those folders. The other files and folders in the download are for developers: do not copy them into `AddOns`.

After installation the folder should look like this:

```
<WoW>\_forever_\Interface\AddOns\
    AzerothUnspoken\
        AzerothUnspoken.toc
        Core\  Data\  Engine\  Integration\  Systems\  UI\  ...
    AzerothUnspoken_Example\        (optional)
```

> **Tip.** A common mistake is a folder nested one level too deep, such as `AddOns\azeroth-unspoken-main\AzerothUnspoken`. The game only sees folders that sit directly inside `AddOns`.

## Check that it works

Enter the world with a character. You should see:

- after a few seconds, the [[setup wizard|First-Run-Wizard]] (only the first time);
- a small **speak button** with a book icon, a little below the centre of the screen (you can hide it, see [[Settings]]);
- `/au` in the chat box prints the list of commands.

Type `/au debug` to see a short diagnostic report: the addon version, your client and what the client allows the addon to do. See [[Troubleshooting]].

## Update

1. Close the game.
2. Download the new version as above.
3. Delete the old `AzerothUnspoken` folder from `AddOns` and copy the new one in its place. Do the same for any phrase pack you use.

Your settings, journal, relationships and stories are **not** stored in the addon folder, so replacing the folder keeps them. They live in the game's saved-data folder (see [[Privacy and Data|Privacy-and-Data]]).

> **Tip.** Delete the old folder before copying the new one, instead of copying over it. That way no file from an old version is left behind.

## Uninstall

1. Delete the `AzerothUnspoken` folder (and `AzerothUnspoken_Example`, if you installed it) from `AddOns`.
2. If you also want to remove your saved data, delete the files `AzerothUnspokenDB.lua` and `AzerothUnspokenCharacterDB.lua` from the saved-data folders described in [[Privacy and Data|Privacy-and-Data]].

## What you will see

- The first time: the setup wizard, in English unless you pick Italiano on its first page. If you already used Italian, an update keeps it.
- The narrator box, near the bottom centre of the screen, when a line appears. You can move it by dragging.
- The speak button, which you can drag with the right mouse button.

Next: [[First-Run Wizard|First-Run-Wizard]].
