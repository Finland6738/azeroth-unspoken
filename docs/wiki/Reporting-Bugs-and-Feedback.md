# Reporting Bugs and Feedback

Your reports and ideas shape Azeroth Unspoken. Since the addon has not yet been tested in the real game client, **every report from a real play session is especially valuable.**

There are two places to write, depending on what you want to say.

| You want to... | Use |
|---|---|
| report something that does not work | a **Bug report** issue |
| suggest a new feature or an improvement | a **Feature request** issue |
| share impressions, ask a question, discuss an idea, or you are not sure it is a bug | the **Feedback** category of GitHub Discussions |

Both need a free GitHub account. Please write in **English** if you can; Italian is welcome too.

## Bug reports and feature requests

Open the [issue forms](https://github.com/Finland6738/azeroth-unspoken/issues/new/choose) and choose one.

### Bug report

For something that does not work as expected. The form asks for:

| Field | What to write | Where to find it |
|---|---|---|
| **Addon version** | for example `0.1.0` | the first line of `/au debug`, or the AddOns list |
| **Game client** | build and client language, for example `1.60.1.70658, English` | the second line of `/au debug` |
| **Addon language** | English or Italiano | |
| **Is Total RP 3 installed?** | Yes or No | |
| **What happened?** | what you saw, and what you expected instead | |
| **Steps to reproduce** | where you were, what you did, which command or setting you used | |
| **Lua errors or diagnostics** (optional) | the text of any Lua error, or the output of `/au debug` | see [[Troubleshooting]] |

**A good bug report** is specific. For example:

> **What happened?** After `/au mode confirm`, pressing the speak key in Goldshire printed "this channel needs an action from you" and nothing was sent. I expected my character to say the proposed line.
>
> **Steps to reproduce:** 1. `/au mode confirm` 2. Wait for a character line in the narrator box 3. Press the bound speak key.

Helpful extras:

- the output of `/au debug` (or `/au debug full` for client problems);
- for a wrong place or zone, the output of `/au place`;
- for a wrong person, the output of `/au who`;
- for a phrase pack problem, the output of `/au validate full`;
- a screenshot, if the problem is visual.

### Feature request

For a new feature or an improvement. The form asks:

- **What would you like?** Describe it from the point of view of your roleplay.
- **Why would it help?** The moment in game where you missed it.
- **Example** (optional): a line, a scene or a setting you have in mind.

## Feedback discussions

For everything else, use the [Feedback category of GitHub Discussions](https://github.com/Finland6738/azeroth-unspoken/discussions/categories/feedback):

- how the narrator feels in play: too chatty, too quiet, just right;
- the tone of the lines: a line that felt wrong for your race, class or the place, or one you loved;
- questions about how something works;
- ideas you want to talk over before writing a formal request;
- anything you are not sure is a bug.

Feedback on **tone, rhythm and frequency** is the hardest thing to get without real players, and the most useful. A short note such as *"in Duskwood at intensity 50 I got three lines in ten minutes, the second felt too cheerful"* helps a lot.

## Helping with tests

The addon has not been tested in the real game client yet, so two commands collect what the real client does. You do not need technical knowledge: you run a command in a specific place and paste what it prints into an issue.

1. **Measure.** After you have played for a few minutes, type `/au prof copy`. A box opens with the text selected: press **Ctrl+C**. It shows how long the addon takes, its memory and how often the narrator spoke or stayed silent.
2. **Probe.** Right after you log in, type `/au probe` once (it starts counting events such as weather changes and day and night). Then go about your play. In the places the guide asks for (a capital, the open world, a dungeon, rain or snow, dusk) type `/au probe copy` and press **Ctrl+C**.
3. **Share.** Open a [Bug report](https://github.com/Finland6738/azeroth-unspoken/issues/new/choose) (it is not a bug: the form is the one we have), write "Not a bug: measurements" in **What happened?**, say where you were in **Steps to reproduce**, and paste the text into **Lua errors or diagnostics**. Put a short heading above each paste, such as "capital" or "rain".

Both reports are in English and contain **no player names, no character name and no coordinates**: they show numbers, `AVAILABLE`/`MISSING`/`RESTRICTED` and, for texts, only their length. Still read them once before pasting, and replace anything personal with a placeholder. If you ever find another player's name in one of them, that is a bug: please report it.

The full list of places and what to look for is in the in-game checklist in the project's `docs` folder (English version: `G1_checklist.en.md`). See [[Commands Reference|Commands]] for the commands and [[Troubleshooting]] if something looks wrong.

## What NOT to include

Please protect your privacy and that of other players. **Do not paste:**

- **other players' names**: replace them with `<player>`;
- whispers, chat logs or the text of other people's messages;
- your **account name**: use `<account>`;
- **folder paths** from your computer: use `<WoW>` for the game folder, as in `<WoW>\_forever_\Interface\AddOns`;
- your saved-data files (`AzerothUnspokenDB.lua`, `AzerothUnspokenCharacterDB.lua`): they contain names and your private notes;
- passwords, emails or anything you would not post in public.

Your own character's name is your choice; if in doubt, use `<character>`.

`/au debug` already hides other players' names, but read it once before posting. See [[Troubleshooting]].

## What happens next

Reports are read and labelled. Bugs that are confirmed get fixed in a later version. You may be asked a follow-up question in the issue, so keep an eye on your GitHub notifications.

Thank you for helping Azeroth Unspoken find its voice.
