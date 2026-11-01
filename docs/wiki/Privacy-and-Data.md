# Privacy and Data

Azeroth Unspoken is built to respect your privacy and that of the people you play with. This page explains what it stores, what it never stores, and how to erase everything.

## The short version

- **Everything stays on your computer.** The addon opens no connections, downloads nothing and sends no data anywhere. There is no AI and no tracking.
- **Nothing reaches public chat without your action**, except in the *automatic* mode you choose and confirm yourself. See [[Chat Gateway]].
- **No chat text is saved**, and no whisper text.
- **No player is recorded unless you choose them.** Nameplates and mouseover can never add one, and are off by default.
- **Other players' Total RP 3 profiles are read only with your consent**, never saved, and only through Total RP 3's public functions.
- **You can erase everything**, at any time.

## What is stored

The game saves addon data in its own saved-data folder (see [below](#where-the-files-are)). Azeroth Unspoken uses two files.

**For your whole account** (`AzerothUnspokenDB.lua`):

- your [[settings|Settings]]: language, intensity, style, chat mode, modules, narrator box, and so on;
- which phrase packs you turned off, your event probabilities and ignored spells;
- **only if you turn on [[Share with the account|Relationships]]** (off by default): the **choices** you made about players (name, axes, label, feelings, note, tags, how you see them), shared by all your characters. Never what a character observed, never any text.

**For each character** (`AzerothUnspokenCharacterDB.lua`):

- the list of lines recently used, so the narrator does not repeat itself;
- your character's [[personality|Character-Soul-and-Total-RP-3]]: the intensity of each trait you set (a number from 0 to 100), the archetype it started from and, if you had chosen a personality in an earlier version, those old choices as plain words ("stoic", "devout");
- **only if emotions are on**: the slow, strong part of your character's [[mood|Character-Soul-and-Total-RP-3#emotions]] (resolve, serenity, nostalgia, melancholy), each as **a number and the time** it was recorded. Never what caused it, never any text. Fast emotions (tension, anger, worry...) are never saved. Turning emotions off clears it;
- the [[journal|Memory-and-Journal]]: significant moments, places visited, flags;
- the [[relationships|Relationships]]: the NPCs you dealt with (and the quests you promised them, by number only; the towns where you met them, with what the word of you there adds up to and any honorary title, as numbers and place names) and, **only for players you chose**, their name with the notes, tags, labels and feelings you wrote, kept apart from what the addon observed about them (how many times you met, of which kind, where and when: never what was said);
- the state of your [[personal stories|Story-Arcs]].

When the game loads these files the addon checks them. Numbers out of range, times in the future and lists longer than their limit (300 players, 1,000 NPCs, and so on) are brought back to what is allowed, and `/au debug` lists what was cleaned (never a name). Data written by a newer version of the addon is read but never changed.

## What is never stored

- The text of chat messages, whispers or emotes.
- The lines of NPC ambient dialogues.
- Anything about a player you did not add yourself.
- Anything read from other players' Total RP 3 profiles.
- The narrator history: it lives in memory and is gone when you log out.

## What is used only during your session

Some information helps the narrator in the moment and is forgotten when you log out:

- that someone made an emote at you (not its text);
- people whose nameplate appeared or whom you pointed at, **only if** you turned on *Recognise nearby* (off by default): the addon notes in memory that it already recognised a person from your list, and it keeps nothing about strangers;
- the name of someone you whispered to, so the addon can **suggest** them as a person to add. It does not add them;
- suggested people, recent actions of the person in front of you, the current encounter;
- your character's mood (all emotions) and what last changed it: only the slow, strong emotions are saved (see above).
- what the game said about the world: the weather, whether it is day, your quests (their numbers and whether a step or the whole quest is done, **never their text**), your reputation standings, whether you are resting or on a flight. None of it is saved.

## Consent switches

Four of them are **consents that cannot be given by mistake**: automatic sending, reading others' Total RP 3 profiles, recognising people by nameplate or mouseover, and the shared list. Turning one on takes two steps: a confirmation dialog shows the whole warning, and its **Turn on** button (or a second click, or the same command again) counts only after a couple of seconds, so a double-click never passes. Turning one off is always one step.

| What | Default | Where |
|---|---|---|
| Sending lines to chat | off (private) | [[Chat Gateway]] |
| Automatic sending | off; a warning dialog and a confirmation | [[Chat Gateway]] |
| Registering players by themselves | off | [[Relationships]] |
| Recognising a known player when you target them | off | [[Relationships]] |
| Recognising a known player by nameplate or mouseover | off; a warning dialog and a confirmation | [[Relationships]] |
| Sharing your choices about players between your characters (in the account file) | off; a warning dialog and a confirmation | [[Relationships]] |
| Your own Total RP 3 name | on | [[Settings]] |
| Your own Total RP 3 traits | off | [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]] |
| Reading other players' Total RP 3 | off; a warning dialog and a confirmation | [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]] |
| Staying private while your Total RP 3 status is out of character | on | [[Chat Gateway]] |

The addon never writes anything to Total RP 3.

With *Stay private when out of character* on, the addon asks Total RP 3 only whether **your own** status is in or out
of character, when a line is about to be proposed or sent. The answer is never saved and never shown to anyone: it can
only keep a line private. Other players' profiles are read through Total RP 3's public player functions, never its
internal ones, with the same consent and the same limits as before: race, class and personality traits only.

Your private notes, tags and own labels on relationships are **never** used in a line that could go to chat.

## Where the files are

On Windows, the game keeps saved data in:

```
<WoW>\_forever_\WTF\Account\<account>\SavedVariables\AzerothUnspokenDB.lua
<WoW>\_forever_\WTF\Account\<account>\<realm>\<character>\SavedVariables\AzerothUnspokenCharacterDB.lua
```

`<WoW>` is your game folder, `<account>` your account folder, `<realm>` and `<character>` the realm and character names. The game writes these files when you log out or reload the interface.

> **Do not share these files publicly.** They contain your character names, the names of players you added and your private notes. If you turned on the shared list, the account file contains them too.

## How to reset

### Inside the game

| What to erase | How |
|---|---|
| Journal (memories, places, flags) | `/au journal reset` (or `memories`, `ordinary`, `places`, `flags`), then the same command again within 15 seconds; or **Forget everything** in the journal |
| Relationships | `/au relationships reset` (or `npcs`, `players`), then again within 15 seconds; or **Forget everything** in the relationships window |
| The shared list of the account | `/au relationships reset shared`, then again within 15 seconds (turning the option off keeps it, unused; your other characters drop the records they made only because someone was on it) |
| One memory, place or relationship | the delete buttons in the journal or relationships window, or `/au journal delete <n>`, `/au relationships remove <name>` |
| What the addon observed about one player | **Forget observations** in the relationships window, or `/au relationships forget <name>` (the person and your choices stay) |
| Personality | `/au soul neutral` |
| Mood (emotions) | `/au emotion reset`, or `/au emotion off` to stop it altogether |
| Stories | `/au stories skip all`, or turn them off with `/au stories off` |
| Lines recently used | `/au memory` |
| Narrator history | `/au narrator clear` |

### Everything

1. Log out of the game completely.
2. Delete `AzerothUnspokenDB.lua` (all settings) and, for each character you want to reset, `AzerothUnspokenCharacterDB.lua`, from the folders shown above.
3. Log in again. The addon starts fresh and the wizard opens.

Uninstalling the addon does not delete these files by itself: delete them as above if you want them gone.

## Sharing diagnostics safely

`/au prof` and `/au probe` print reports meant to be pasted into an issue: they show numbers and states only, and keep nothing after you log out. `/au debug` prints a report you can paste into a bug report. It does not print other players' names. Still, read it before sharing, and replace any name, account or folder path with a placeholder such as `<player>`. See [[Troubleshooting]] and [[Reporting Bugs and Feedback|Reporting-Bugs-and-Feedback]].
