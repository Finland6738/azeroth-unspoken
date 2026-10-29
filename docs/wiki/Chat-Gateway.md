# Chat Gateway

The Chat Gateway decides whether a line stays private or may become something your character says in chat. Its first rule: **nothing reaches public chat without your action.**

## What it is

By default every line stays in the private [[narrator box|The-Narrator]]. If you want, you can let your character's lines become **proposals**: ready-made lines that wait for you to read, edit, change channel and send, or ignore. The addon never posts on your behalf unless you deliberately choose the *automatic* mode, which asks for a confirmation.

Only two [[voices|The-Narrator]] can ever become chat: the **character** voice (as spoken words) and the **narrator** voice (as an emote). The inner voice and NPC voices never go to chat. Neither do [[NPC ambient dialogues|NPC-Dialogues]] and [[personal stories|Story-Arcs]].

## The four modes

| Mode | Command | What happens |
|---|---|---|
| **Private narrator only** (default) | `/au chat private` | Lines appear in the box, visible to you alone. Nothing goes to chat. |
| **Preview** | `/au chat preview` | Your character's lines become proposals. The speak key opens an **editor** with the text: change it if you like and press **Enter** to send. |
| **Confirm to send** | `/au chat confirm` | The proposal is ready. One press of the speak key or button, or `/au speak`, sends it. You can still edit, change channel or discard it first. |
| **Automatic (where allowed)** | `/au chat auto`, twice | Emotes go out by themselves, and `/say` only inside instances. Everything else stays a proposal. A few per minute at most. |

Aliases for the command: `/au mode`, `/au modo`. Mode names: `private` (`privato`, `p`), `preview` (`anteprima`), `confirm` (`conferma`, `send`, `invia`), `auto` (`automatica`, `automatico`).

You can also change the mode in the [[wizard|First-Run-Wizard]] (last step) or in the [[settings panel|Settings]] (**Chat** row).

### Turning on automatic mode

Automatic mode means lines go out in your character's name **without you doing anything**. So it never turns on with one click:

1. Type `/au chat auto` (or click **Automatic sending** in the panel, or the automatic button in the wizard).
2. A warning explains what will happen.
3. Repeat the same command or click again **within 10 seconds** to confirm. Otherwise nothing changes.

To leave automatic mode, choose any other mode, for example `/au chat confirm` or `/au chat private`. Clicking **Automatic sending** while it is on switches you to *Confirm to send*.

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
| Send it | **Send** | speak key, speak button, `/au speak` (`/au say`, `/au send`, `/au dire`, `/au invia`) |
| Edit it | **Edit** (opens the editor; Enter sends, Esc closes) | in preview mode, the speak key opens the editor |
| Get a different line | **Another** | `/au another` (`/au reroll`, `/au altra`) or its key |
| Copy into the chat box | **To chat** | `/au copy` (`/au copia`) |
| Change the channel | the channel button | `/au channel <channel>` sets the default |
| Throw it away | **Discard**, or **x** | `/au cancel` (`/au discard`, `/au annulla`, `/au scarta`) |

**No proposal waiting?** The speak key, button and `/au speak` ask for a new line that fits the moment (a battle cry in combat, a thought otherwise). It comes as a proposal: press again to send it.

**Copy to chat box** puts the line into the game's own chat box, already on the right channel. You read it there and press Enter yourself, or edit it with the normal chat tools. This is the most hands-on way to send.

**Another** never sends anything. If you edited the text, your edited version is printed in your chat window so you do not lose it. You cannot swap the line while the editor is open: close it with Esc first.

### How long a proposal waits

A proposal waits **25 seconds**, and longer while you are editing it. When it expires, nothing is sent. If you had typed something, your text is printed in your chat window.

## Channels

The default channel is **automatic**: your character's words go to `/say` and the narrator's lines go to `/emote`. You can pick a fixed default:

| Channel | Command value | Aliases |
|---|---|---|
| automatic (default) | `auto` | |
| `/say` | `say` | `s`, `dire` |
| `/emote` | `emote` | `e`, `me` |
| party | `party` | `p`, `gruppo` |
| raid | `raid` | `incursione` |
| guild | `guild` | `g`, `gilda` |
| instance | `instance` | `i`, `istanza` |

Command: `/au channel <value>` (`/au canale`). Panel: **Default channel**. If the channel is not available (no party, no guild...), the addon tells you and nothing is sent.

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

**Confirm mode with a key.** Bind *Confirm and speak the proposed line (or improvise)* to a key (Options → Keybindings → AddOns → Azeroth Unspoken), then `/au chat confirm`. When a line you like appears as a proposal, press the key: your character says it.

**Preview mode for careful roleplayers.** `/au chat preview`. Press the key to open the editor, adjust the words to your character's voice, press Enter.

**A greeting in party chat.** `/au channel party`, then `/au greet`, then the speak key.

## Settings

| Setting | Default | Where |
|---|---|---|
| Chat mode | Private narrator only | wizard, panel **Chat**, `/au chat` |
| Automatic sending | off | panel **Automatic sending**, `/au chat auto` twice |
| Default channel | automatic | panel **Default channel**, `/au channel` |
| Chat proposals module | on | panel modules; off works like private mode |

## What you will see

- In private mode: nothing changes, lines stay in the box.
- In preview and confirm modes: proposals in the box with **Send**, **Edit**, **Another**, **Discard**, **To chat** and the channel; the speak button glows.
- After a send: the line in the box is marked *"sent to /say"* (or the channel), and your character's message appears in chat like any other.
- In automatic mode: the occasional emote sent by itself, also marked *"sent to"* in the box.

## Tips

- If you are unsure, stay in **private** mode for a few sessions to get to know the lines, then try **confirm**.
- **To chat** is perfect if you like to add a word or two before sending.
- Your own chat etiquette still applies: the addon limits speed, but you decide what is appropriate where you are.
