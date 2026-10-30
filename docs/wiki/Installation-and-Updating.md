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
3. From the unzipped download, copy **every folder whose name starts with `AzerothUnspoken`** into `AddOns`. The addon is one download made of several folders, and it needs all of them:
   - **`AzerothUnspoken`**: the addon itself;
   - **`AzerothUnspoken_enUS`** and **`AzerothUnspoken_itIT`**: the lines in English and in Italian;
   - **`AzerothUnspoken_Kalimdor`** and **`AzerothUnspoken_EasternKingdoms`**, each with its `_enUS` and `_itIT` folder: the lines that belong to one continent;
   - **`AzerothUnspoken_Example`**, a small sample phrase pack (a few lines for fishing and for some places), and **`AzerothUnspoken_Versi`**, the verses pack (inscriptions, songs and rhymes, see [[Literary Forms|Literary-Forms]]). These two are optional. See [[Phrase Packs|Phrase-Packs]].
4. Start the game. On the character selection screen click **AddOns** and make sure every **Azeroth Unspoken** entry is ticked. Most of them are marked *Load on demand*: that is expected (see below).

You do not choose anything else. The addon reads **only the language you chose**, never the other one, and reads the lines of a continent **only while you are on it**. It does this by itself, when you log in and when you travel, and never during a fight. Races, classes, weather and situations are not separate folders: they are part of the lines.

The other files and folders in the download are for developers: do not copy them into `AddOns`.

After installation the folder should look like this:

```
<WoW>\_forever_\Interface\AddOns\
    AzerothUnspoken\
        AzerothUnspoken.toc
        Core\  Data\  Engine\  Integration\  Systems\  UI\  ...
    AzerothUnspoken_enUS\
    AzerothUnspoken_itIT\
    AzerothUnspoken_Kalimdor\
    AzerothUnspoken_Kalimdor_enUS\
    AzerothUnspoken_Kalimdor_itIT\
    AzerothUnspoken_EasternKingdoms\
    AzerothUnspoken_EasternKingdoms_enUS\
    AzerothUnspoken_EasternKingdoms_itIT\
    AzerothUnspoken_Example\        (optional)
    AzerothUnspoken_Versi\          (optional)
```

### "Load on demand" in the AddOns list

In the game's AddOns list, the language and continent folders are marked *Load on demand*. It means the game does not read them at login: Azeroth Unspoken asks for the one it needs, when it needs it. Leave them ticked. If one is missing or unticked, the addon says so in the chat and carries on with what it has (see [[Troubleshooting]]).

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
3. Delete **every** old `AzerothUnspoken` folder from `AddOns` (the addon, the language folders, the continent folders and any phrase pack you use) and copy the new ones in their place. A new version can add folders: copy all the folders whose name starts with `AzerothUnspoken`.

Your settings, journal, relationships and stories are **not** stored in the addon folder, so replacing the folder keeps them. They live in the game's saved-data folder (see [[Privacy and Data|Privacy-and-Data]]).

> **Tip.** Delete the old folder before copying the new one, instead of copying over it. That way no file from an old version is left behind.

## Uninstall

1. Delete every folder whose name starts with `AzerothUnspoken` from `AddOns`.
2. If you also want to remove your saved data, delete the files `AzerothUnspokenDB.lua` and `AzerothUnspokenCharacterDB.lua` from the saved-data folders described in [[Privacy and Data|Privacy-and-Data]].

## What you will see

- The first time: the setup wizard, in English unless you pick Italiano on its first page. If you already used Italian, an update keeps it.
- The narrator box, near the bottom centre of the screen, when a line appears. You can move it by dragging.
- The speak button, which you can drag with the right mouse button.

Next: [[First-Run Wizard|First-Run-Wizard]].
