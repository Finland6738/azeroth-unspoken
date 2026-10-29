# NPC Dialogues

**NPC Alive** adds small **ambient dialogues** with the NPCs you deal with: a few words with the innkeeper, a remark from a merchant, a guard's warning.

> **These dialogues are simulated.** They are written by the addon, not spoken by the real NPC. They never appear in chat, never change quests, vendors, gossip or any game window, and have no effect on the game. The window always carries the label **"addon ambient dialogue"** so there is no confusion.

## What it is

When you deal with an NPC, the addon may offer a short exchange: the NPC says a line, and you pick one of one to three neutral answers. The conversation can go on for a few steps, then ends.

There are five kinds of NPC: **innkeeper**, **merchant**, **guard**, **flight master** and **trainer**, with 169 lines in all. The NPC speaks according to their character (gruff, jovial, warm, formal, terse...) and according to whether **you know each other**: a stranger is greeted differently from a regular customer.

## How to use it

### When the offer appears

A small button, **Listen (ambient dialogue)**, appears when you:

- open an NPC's **vendor**, **flight** or **training** window;
- talk to an **innkeeper** you already know.

Click it to open the dialogue. If you ignore it, it goes away by itself after about 20 seconds.

### Opening it yourself

- Target an NPC and type `/au npc` (aliases `/au talk`, `/au dialogue`, `/au dialogo`, `/au parla`).
- Or bind the key **Ambient dialogue with the NPC (open/close)** under Options → Keybindings → AddOns → Azeroth Unspoken.

### In the dialogue window

- Read the NPC's line.
- Click one of the answers to reply.
- Click **Close**, use the key again, or type `/au npc close` to end it.
- Drag the window to move it. It tries not to cover the game's own windows.

The dialogue closes by itself if combat starts, you die, you change zone, you turn to another NPC, or you do not answer for two minutes.

## When there is no dialogue

The addon tells you why when it cannot open a dialogue. The most common reasons:

| Message | Meaning |
|---|---|
| *No NPC in front of you* | select an NPC, or open their vendor, flight or training window |
| *Ambient dialogues are only with NPCs* | never with other players |
| *There is no dialogue with a hostile creature* | only friendly NPCs talk |
| *I am not sure who this is, and I will not guess* | open their window first, or say their role with `/au npc role <role>` |
| *I do not have a dialogue for this NPC yet* | this kind of NPC has no lines yet |
| *Not during combat* / *Not during a cinematic* / *Not while dead* | try again later |
| *The narrator is paused* | resume with `/au pause` |
| *Intensity is zero: dialogues open only by hand* | at intensity 0 the button does not appear by itself, but `/au npc` still works |
| *NPC dialogues are off* | turn the **NPC dialogues** module back on in the settings |

## Commands

| Command | Aliases | What it does |
|---|---|---|
| `/au npc` | `/au talk`, `/au dialogue`, `/au dialogo`, `/au parla` | opens the dialogue with the NPC in front of you |
| `/au npc test [style]` | `prova` | opens a dialogue with a **test innkeeper**, without a real NPC; leaves no trace. Styles: `gruff`, `jovial`, `warm`, `formal`, `terse`, `neutral` |
| `/au npc close` | `chiudi` | closes the dialogue |
| `/au npc role <role>` | `ruolo` | tells the addon the role of the NPC in front of you: `innkeeper`, `merchant`, `guard`, `flightmaster`, `trainer`, `banker` |
| `/au npc offer [on\|off]` | `offerta` | whether the button appears by itself; with no value, switches it |
| `/au npc status` | `stato` | prints the current state, for troubleshooting |

`/au npc role` works for NPCs already in your [[relationships|Relationships]] list: talk to them once through the normal game dialogue first.

## What it leaves behind

The dialogue itself is not saved: no line of it is kept. When it ends, it may leave:

- a small **flag** and a short memory (*"A chat"*) in your [[journal|Memory-and-Journal]];
- a small change in your **relationship** with that NPC.

Nothing else changes, in the game or in the addon. If the Memory or Relationships module is off, nothing is written there.

## Settings

| Setting | Default | Where |
|---|---|---|
| NPC dialogues module | on | [[settings panel|Settings]], modules |
| Automatic offer | on | `/au npc offer on\|off` |
| Key binding | none | Options → Keybindings → AddOns |

## Examples

- Try it anywhere: `/au npc test jovial`.
- Your favourite innkeeper is not recognized: target them and type `/au npc role innkeeper`.
- You prefer to open dialogues only by hand: `/au npc offer off`, then use the key.

## What you will see

- The small **Listen (ambient dialogue)** button next to the NPC's window.
- A separate dialogue window with the NPC's name, the label **addon ambient dialogue**, the NPC's line and your answers.
- Nothing in chat.
