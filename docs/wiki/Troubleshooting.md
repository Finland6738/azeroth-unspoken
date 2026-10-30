# Troubleshooting

Something does not work as expected? Start here. Most problems have a quick fix.

## First steps

1. Type `/au debug`. If it answers, the addon is loaded. Read the report (see [below](#reading-au-debug)).
2. Make sure the addon is on: `/au on`.
3. Make sure the narrator is not paused: `/au pause` toggles it, and the report says `paused false` when it is running.
4. Reload the interface with `/reload` and try again.

## The addon does not load

**`/au` does nothing, there is no speak button, no wizard.**

- On the character selection screen, click **AddOns** and make sure **Azeroth Unspoken** is ticked.
- If the list says *Out of date* or *Incompatible*, tick **Load out of date AddOns** at the top of the list.
- Check the folder: it must be `<WoW>\_forever_\Interface\AddOns\AzerothUnspoken\`, with the file `AzerothUnspoken.toc` directly inside. A folder nested one level too deep (for example `AddOns\azeroth-unspoken-main\AzerothUnspoken`) is invisible to the game. See [[Installation and Updating|Installation-and-Updating]].
- Make sure you play **WoW Forever**. Other clients are not supported.

## Lua errors

A **Lua error** is the game's message when an addon's code fails. It may appear as a pop-up window, or not at all if error display is off.

- To see errors, type `/console scriptErrors 1` and `/reload`. To hide them again, `/console scriptErrors 0`.
- Azeroth Unspoken catches most of its own errors and keeps working: `/au debug` lists them under **Caught errors**.
- If an error mentions `AzerothUnspoken`, please [[report it|Reporting-Bugs-and-Feedback]] with the full text of the error and the output of `/au debug`.
- If you use an error-catching addon, copy the error from there.

If the addon failed to start completely, most commands answer *"configuration not loaded: start-up failed, see the errors with /au debug"*. `/au debug` still works in that case.

## Nothing happens: no lines appear

The narrator is quiet by design, so first check that it is really silent, not just discreet.

- **Try it:** `/au narrator` shows a sample line. If you see it, the box works.
- **Intensity:** at 0 there are no spontaneous lines. `/au intensity` shows the value; try `/au intensity 50`.
- **Paused:** `/au pause` resumes it.
- **Addon off:** `/au on`.
- **Modules:** in the [[settings panel|Settings]], check that **Personal** and **World** are on.
- **Narrator box off:** if **Narrator box** is off in the settings, lines go to your chat window instead. Look there, or turn the box back on.
- **Box off screen:** `/au narrator reset` brings it back to the bottom centre.
- **Wrong moment:** during boss fights, raids and cinematics the narrator holds back on purpose. Try entering a new zone in the open world.
- **Just unlucky:** lines are chances, not certainties, and there is a pause between them (45 seconds by default). Give it a few minutes, or ask for one: `/au muse`.
- **Packs off:** `/au packs` shows whether built-in packs are on. `/au stats` shows how many lines you have.

## The lines are in the wrong language

The addon starts in English. Type `/au language it` for Italian, or `/au language en` for English. Command names are always English, in both languages. See [[Languages]].

## Lines are not sent to chat

First: **this is the default.** In *private* mode nothing ever goes to chat. Check with `/au mode`.

| What you see | What to do |
|---|---|
| mode is *private narrator only* | choose `/au mode confirm` or `/au mode preview` |
| *nothing to send.* | there is no proposal waiting; press the speak key again to get one |
| *this channel needs an action from you* | `/say` and group channels need your key press or click; use the speak key or button |
| *channel not available right now* | you are not in a party, raid, guild or instance; change channel with `/au channel` |
| *too fast: wait a few seconds* | the flood protection: wait 4 seconds between sends, at most 6 per minute |
| *chat is locked by the client right now* | the game locks chat at times; try again in a moment |
| *the client blocked the send* | the game refused it. Nothing went out, the proposal is still there: press the key or button to try again |
| *the proposal is gone (expired, discarded or replaced)* | proposals wait 25 seconds; ask for a new one |
| only emotes go out in automatic mode | correct: `/say` goes out by itself only inside instances; everything else waits for you |

Also check:

- the **Chat proposals** module is on in the settings;
- the line is from the **character** or **narrator** voice: inner voice and NPC lines never go to chat.

See [[Chat Gateway]].

## The speak key does nothing

- Bind it first: Options → Keybindings → AddOns → Azeroth Unspoken. None of the four keys has a default.
- Check that another addon does not use the same key.
- Try `/au speak`: if that works, the problem is the key binding.

## No NPC dialogue

`/au talk` says why. The most common reasons: no NPC selected, a hostile or unknown NPC, combat, the narrator paused, intensity 0 (the button does not appear by itself), the **NPC dialogues** module off, or the automatic offer off (`/au talk offer on`). Try `/au talk test` to see the window without a real NPC. See [[NPC Dialogues|NPC-Dialogues]].

## The journal or relationships are empty or will not change

- *memory is off* or *relationships are off*: turn the **Memory** or **Relationships** module back on in the settings.
- *the data comes from a newer version of the addon: it can be read, not changed*: you went back to an older version of the addon after using a newer one. Install the newer version again.
- The journal fills slowly by design: only significant moments are kept.

## A window or the box is in the wrong place

- Narrator box: `/au narrator reset`, or **Move the box back to the middle** in the settings.
- The box will not move: **Position locked** is on in the settings.
- Speak button: drag it with the **right** mouse button.
- Wizard, dialogue, journal and other windows: drag them by their title area.

## Reset settings

- **Back to safe chat:** `/au mode private`.
- **Redo the setup:** `/au wizard`.
- **One setting:** set it again; the defaults are in the [[Settings Reference|Settings]].
- **Everything:** log out, delete `AzerothUnspokenDB.lua` (and, if you want, `AzerothUnspokenCharacterDB.lua`) from the saved-data folders, and log in. See [[Privacy and Data|Privacy-and-Data]].

## The addon feels slow, or uses a lot of memory

Type `/au prof`. It shows how long the addon takes to pick a line and to read the situation (a healthy value is a few milliseconds or less), and how much memory it uses. If the numbers look high, or the game stutters when a line appears, type `/au prof copy`, copy the text with **Ctrl+C** and [[report it|Reporting-Bugs-and-Feedback]] together with what you were doing. The report contains no names. See [[Helping with tests|Reporting-Bugs-and-Feedback#helping-with-tests]].

## Reading `/au debug`

`/au debug` prints a short report in your chat window. In order, it shows:

1. the addon version and your client (version, build, language);
2. your main settings: language, intensity, style depth, whether the narrator is paused;
3. the state of the Chat Gateway (mode, channel, sends, the last refusal), the narrator's rhythm, memory, relationships, NPC dialogues and stories;
4. **Capabilities**: what the client allows the addon to do, marked *AVAILABLE*, *RESTRICTED* or *MISSING*;
5. **Events**: the game events seen so far and the last few recognized;
6. **Caught errors**, if any;
7. how many lines are available.

Variants:

| Command | What it does |
|---|---|
| `/au debug` | the short report |
| `/au debug full` | one line per capability, with details |
| `/au debug trace` | prints every recognized event as it happens, until you type it again or log out. Useful to see if the addon notices something |

The report also has a **Profile** line with the latest timings (`/au prof` has the details).

### Sharing it without other players' names

The report does **not** print other players' names: where a name could appear, it shows `<nascosto>` (Italian for "hidden") instead. Before you paste it anywhere:

1. Read it through once.
2. Replace anything personal that remains, such as your own character name, an account name or a folder path, with a placeholder like `<character>`, `<account>` or `<path>`.
3. Paste only the lines that matter, if the report is long.

To copy text from the chat window, you can use an addon that copies chat, or take a screenshot (check it for names too).

## Still stuck?

Ask in the [Feedback discussions](https://github.com/Finland6738/azeroth-unspoken/discussions/categories/feedback) or open a bug report. See [[Reporting Bugs and Feedback|Reporting-Bugs-and-Feedback]].
