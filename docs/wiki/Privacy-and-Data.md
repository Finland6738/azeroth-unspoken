# Privacy and Data

Azeroth Unspoken is built to respect your privacy and that of the people you play with. This page explains what it stores, what it never stores, and how to erase everything.

## The short version

- **Everything stays on your computer.** The addon opens no connections, downloads nothing and sends no data anywhere. There is no AI and no tracking.
- **Nothing reaches public chat without your action**, except in the *automatic* mode you choose and confirm yourself. See [[Chat Gateway]].
- **No chat text is saved**, and no whisper text.
- **No player is recorded unless you choose them.**
- **Other players' Total RP 3 profiles are read only with your consent**, never saved.
- **You can erase everything**, at any time.

## What is stored

The game saves addon data in its own saved-data folder (see [below](#where-the-files-are)). Azeroth Unspoken uses two files.

**For your whole account** (`AzerothUnspokenDB.lua`):

- your [[settings|Settings]]: language, intensity, style, chat mode, modules, narrator box, and so on;
- which phrase packs you turned off, your event probabilities and ignored spells.

**For each character** (`AzerothUnspokenCharacterDB.lua`):

- the list of lines recently used, so the narrator does not repeat itself;
- your character's [[personality|Character-Soul-and-Total-RP-3]];
- the [[journal|Memory-and-Journal]]: significant moments, places visited, flags;
- the [[relationships|Relationships]]: the NPCs you dealt with and, **only for players you chose**, their name with the notes, tags and labels you wrote;
- the state of your [[personal stories|Story-Arcs]].

## What is never stored

- The text of chat messages, whispers or emotes.
- The lines of NPC ambient dialogues.
- Anything about a player you did not add yourself.
- Anything read from other players' Total RP 3 profiles.
- The narrator history: it lives in memory and is gone when you log out.

## What is used only during your session

Some information helps the narrator in the moment and is forgotten when you log out:

- that someone made an emote at you (not its text);
- the name of someone you whispered to, so the addon can **suggest** them as a person to add. It does not add them;
- suggested people, recent actions of the person in front of you, the current encounter.

## Consent switches

| What | Default | Where |
|---|---|---|
| Sending lines to chat | off (private) | [[Chat Gateway]] |
| Automatic sending | off; needs a second confirmation | [[Chat Gateway]] |
| Registering players by themselves | off | [[Relationships]] |
| Your own Total RP 3 name | on | [[Settings]] |
| Your own Total RP 3 traits | off | [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]] |
| Reading other players' Total RP 3 | off | [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]] |

The addon never writes anything to Total RP 3.

Your private notes, tags and own labels on relationships are **never** used in a line that could go to chat.

## Where the files are

On Windows, the game keeps saved data in:

```
<WoW>\_forever_\WTF\Account\<account>\SavedVariables\AzerothUnspokenDB.lua
<WoW>\_forever_\WTF\Account\<account>\<realm>\<character>\SavedVariables\AzerothUnspokenCharacterDB.lua
```

`<WoW>` is your game folder, `<account>` your account folder, `<realm>` and `<character>` the realm and character names. The game writes these files when you log out or reload the interface.

> **Do not share these files publicly.** They contain your character names, the names of players you added and your private notes.

## How to reset

### Inside the game

| What to erase | How |
|---|---|
| Journal (memories, places, flags) | `/au journal reset` (or `memories`, `ordinary`, `places`, `flags`), then the same command again within 15 seconds; or **Forget everything** in the journal |
| Relationships | `/au relationships reset` (or `npcs`, `players`), then again within 15 seconds; or **Forget everything** in the relationships window |
| One memory, place or relationship | the delete buttons in the journal or relationships window, or `/au journal delete <n>`, `/au relationships remove <name>` |
| Personality | `/au soul neutral` |
| Stories | `/au stories skip all`, or turn them off with `/au stories off` |
| Lines recently used | `/au memory` |
| Narrator history | `/au narrator clear` |

### Everything

1. Log out of the game completely.
2. Delete `AzerothUnspokenDB.lua` (all settings) and, for each character you want to reset, `AzerothUnspokenCharacterDB.lua`, from the folders shown above.
3. Log in again. The addon starts fresh and the wizard opens.

Uninstalling the addon does not delete these files by itself: delete them as above if you want them gone.

## Sharing diagnostics safely

`/au debug` prints a report you can paste into a bug report. It does not print other players' names. Still, read it before sharing, and replace any name, account or folder path with a placeholder such as `<player>`. See [[Troubleshooting]] and [[Reporting Bugs and Feedback|Reporting-Bugs-and-Feedback]].
