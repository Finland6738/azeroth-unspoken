# Chat Gateway

The Chat Gateway decides whether a line stays private or may become something your character says in chat. Its first rule: **nothing reaches public chat without your action.**

## What it is

By default every line stays in the private [[narrator box|The-Narrator]]. If you want, you can let your character's lines become **proposals**: ready-made lines that wait for you to read, edit, change channel and send, or ignore. The addon never posts on your behalf unless you deliberately choose the *automatic* mode, which asks for a confirmation.

Only two [[voices|The-Narrator]] can ever become chat: the **character** voice (as spoken words) and the **narrator** voice (as an emote). The inner voice and NPC voices never go to chat. Neither do [[NPC ambient dialogues|NPC-Dialogues]] and [[personal stories|Story-Arcs]].

Some lines are private whatever their voice, in every mode (also in automatic mode, and when you press "Another" or "To chat"): the narrator's **monologues**, and **literary forms** (verses, songs, inscriptions: lines tagged `lore` or `genre_*`). They appear in the narrator box and nowhere else.

## The four modes

| Mode | Command | What happens |
|---|---|---|
| **Private narrator only** (default) | `/au mode private` | Lines appear in the box, visible to you alone. Nothing goes to chat. |
| **Preview** | `/au mode preview` | Your character's lines become proposals. The speak key opens an **editor** with the text: change it if you like and press **Enter** to send. |
| **Confirm to send** | `/au mode confirm` | The proposal is ready. One press of the speak key or button, or `/au speak`, sends it. You can still edit, change channel or discard it first. |
| **Automatic (where allowed)** | `/au mode auto`, twice | Emotes go out by themselves, and `/say` only inside instances. Everything else stays a proposal. A few per minute at most. |

The command is `/au mode`. Mode names: `private`, `preview`, `confirm`, `auto`, in every interface language.

You can also change the mode in the [[wizard|First-Run-Wizard]] (last step) or in the [[settings panel|Settings]] (**Chat** row).

### Turning on automatic mode

Automatic mode means lines go out in your character's name **without you doing anything**. So it never turns on with one click:

1. Type `/au mode auto` (or click **Automatic sending** in the panel, or the automatic button in the wizard).
2. A warning explains what will happen.
3. Repeat the same command or click again **within 10 seconds** to confirm. Otherwise nothing changes.

To leave automatic mode, choose any other mode, for example `/au mode confirm` or `/au mode private`. Clicking **Automatic sending** while it is on switches you to *Confirm to send*.

## The open-world `/say` rule

World of Warcraft only lets an addon post to `/say` and `/yell` in the open world right after a key press or a mouse click from you. Azeroth Unspoken follows this rule strictly:

- In every mode, `/say`, `/yell`, party, raid, guild and instance messages are sent only from **your gesture**: the speak key, the speak button, a click on **Send**, Enter in the editor, or a command you typed.
- In automatic mode, only **emotes** go out by themselves everywhere, and **`/say` only inside instances**. Everything else waits as a proposal.
- If the game still refuses a send, nothing goes out, the proposal stays where it is, and a message tells you to press the speak key or button to try again.

> This is a careful reading of what the game allows. How the real client treats addon emotes and instance `/say` has not been measured in game yet, so the addon stays on the safe side.

## Proposals: how to use them

When a proposal is waiting:

- the narrator box shows the line with *"proposal for /say"* (or the channel), and a row of buttons;
- the speak button glows, and its tooltip shows the text and the channel.

| Action | Button on the box | Key or command |
|---|---|---|
| Send it | **Send** | speak key, speak button, `/au speak` |
| Edit it | **Edit** (opens the editor; Enter sends, Esc closes) | in preview mode, the speak key opens the editor |
| Get a different line | **Another** | `/au another` or its key |
| Copy into the chat box | **To chat** | `/au copy` (`/au copy`) |
| Change the channel | the channel button | `/au channel <channel>` sets the default |
| Throw it away | **Discard**, or **x** | `/au cancel` |

**No proposal waiting?** The speak key, button and `/au speak` ask for a new line that fits the moment (a battle cry in combat, a thought otherwise). It comes as a proposal: press again to send it. In private mode it is shown only to you, in the narrator box.

### The speak button

The speak button is a small book icon. It starts **beside the narrator box**, to its right. Drag it with the right mouse button to move it; `/au button reset` puts it back. `/au button` shows or hides it.

Its tooltip says what a left click will do now:

| Situation | The tooltip says |
|---|---|
| Private mode (the default) | nothing is ever sent to chat; a click shows a line for the moment, only to you |
| No proposal waiting | a click proposes a line; nothing is sent yet |
| A proposal is waiting | the line, its channel, and "send this line to chat" |
| A proposal is waiting, preview mode | "open it in the editor, then send it from there" |
| A proposal is waiting, `/au button editor on` | "open it in the editor" |

**The button opens the editor instead of sending.** If you prefer to read every line in the editor before it goes out, type `/au button editor on`. A click on the button then opens the waiting proposal in the editor, and you send it with Enter or **Send**. The speak key and `/au speak` still send at once. `/au button editor off` turns it back off (the default).

**Copy to chat box** puts the line into the game's own chat box, already on the right channel. You read it there and press Enter yourself, or edit it with the normal chat tools. This is the most hands-on way to send.

**Another** never sends anything. If you edited the text, your edited version is printed in your chat window so you do not lose it. You cannot swap the line while the editor is open: close it with Esc first.

### How long a proposal waits

A proposal waits **25 seconds** by default; the label of the narrator box counts the seconds down. You can choose 25, 60 or 120 seconds, or **until dismissed**, with **Proposal waits** in the [[settings panel|Settings]].

- While the mouse is over the narrator box, the time stops; it resumes where it was when you move the mouse away.
- While you are editing the proposal it does not expire, and after you close the editor the wait starts again.
- When it expires, nothing is sent. If you had typed something, your text is printed in your chat window.

### The line you send is the line you see

While a proposal waits, it stays in the narrator box. Another line that arrives meanwhile (a thought of the inner voice, a monologue, a story notice) goes to the history at once and comes to the box only after the proposal is sent, discarded or expired. So the speak key, the speak button, `/au speak` and the **Send** button always send the line on screen, never one that has already left it. If the client blocks a send, the proposal comes back to the box.

## Channels

The default channel is **automatic**: your character's words go to `/say` and the narrator's lines go to `/emote`. You can pick a fixed default:

| Channel | Command value | Short form |
|---|---|---|
| automatic (default) | `auto` | |
| `/say` | `say` | `s` |
| `/emote` | `emote` | `e` |
| party | `party` | `p` |
| raid | `raid` | |
| guild | `guild` | `g` |
| instance | `instance` | `i` |

Command: `/au channel <value>`. Panel: **Default channel**. If the channel is not available (no party, no guild...), the addon tells you and nothing is sent.

When a spoken line is sent as an emote, it is written as *says, "..."* so it still reads naturally.

## Flood protection

To keep chat pleasant for everyone, these limits always apply:

| Limit | Value |
|---|---|
| Minimum time between two sends | 4 seconds |
| Sends per minute, any channel | 6 |
| Automatic sends per minute | 2 |
| Longest message | 255 bytes (longer lines are cut with "...") |

If you try to send too fast, you see *"too fast: wait a few seconds before sending again."* Nothing is sent while the game's chat lockdown is active, and empty messages are never sent.

## Examples

**Confirm mode with a key.** Bind *Confirm and speak the proposed line (or improvise)* to a key (Options → Keybindings → AddOns → Azeroth Unspoken), then `/au mode confirm`. When a line you like appears as a proposal, press the key: your character says it.

**Preview mode for careful roleplayers.** `/au mode preview`. Press the key to open the editor, adjust the words to your character's voice, press Enter.

**A greeting in party chat.** `/au channel party`, then `/au greet`, then the speak key.

## Settings

| Setting | Default | Where |
|---|---|---|
| Chat mode | Private narrator only | wizard, panel **Chat**, `/au mode` |
| Automatic sending | off | panel **Automatic sending**, `/au mode auto` twice |
| Default channel | automatic | panel **Default channel**, `/au channel` |
| Chat proposals module | on | panel modules; off works like private mode |
| Speak button opens the editor | off | `/au button editor on` |

## What you will see

- In private mode: nothing changes, lines stay in the box.
- In preview and confirm modes: proposals in the box with **Send**, **Edit**, **Another**, **Discard**, **To chat** and the channel; the speak button glows.
- After a send: the line in the box is marked *"sent to /say"* (or the channel), and your character's message appears in chat like any other.
- In automatic mode: the occasional emote sent by itself, also marked *"sent to"* in the box.

## Tips

- If you are unsure, stay in **private** mode for a few sessions to get to know the lines, then try **confirm**.
- **To chat** is perfect if you like to add a word or two before sending.
- Your own chat etiquette still applies: the addon limits speed, but you decide what is appropriate where you are.
