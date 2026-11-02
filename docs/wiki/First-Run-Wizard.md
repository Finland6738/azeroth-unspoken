# First-Run Wizard

The first time you enter the world with Azeroth Unspoken installed, a short guide opens a few seconds after the game has finished loading (and never while you are in combat: it waits until you are free). It helps you choose the most important settings in a minute, and it tells you where everything else is. Everything it sets can be changed later.

## How to use it

- **Next** goes to the next step, **Back** to the previous one, and **Finish** (on the last step) closes the guide. **Enter** is Next.
- **Every step can be skipped.** **Skip - keep the defaults** (and the **X** at the top right of the title band, and **Esc**) closes the guide at once and keeps what you have chosen so far; everything else stays at its default. The defaults are the safe ones: the narrator stays private and nothing goes to chat.
- The dots under the title show where you are. You can drag the window to move it. It has the same frame as every other window of the addon, and its size follows the **Window scale** setting.
- The texts you read before giving a consent (what may reach chat, reading others' Total RP 3, the social note) are in the normal text size, not the small one.
- It never covers the narrator box: when the narrator needs room (for the test line, for a proposal) the box steps aside for as long as the guide is open.
- Reopen it at any time with `/au wizard`, or with the **Reopen the setup guide** button in the [[settings panel|Settings]].

The guide opens only once per account. After you finish or skip it, it does not come back by itself.

## The steps

The guide has **7 steps**, or **8 if Total RP 3 is installed**. A chosen card has a gold border and a filled square; the card of the default choice says "default".

### 1. Welcome and language

A promise in one sentence: *a private narrator for your character; lines appear only on your screen and nothing reaches chat unless you choose it.* Under it, a **live sample of the narrator**, so you see the box before you change any setting.

Then choose the language of the narrator's lines and of the addon's interface: **English** or **Italiano**. This does not depend on the language of your game client.

> **Note.** The addon starts in **English**. If you prefer Italian for the interface and the lines, choose **Italiano** on this first page. If you skipped the guide, type `/au language it`. Command names stay English in both languages. See [[Languages]].

### 2. What experience do you want?

Choose a preset, a ready-made combination of modules:

| Preset | What it turns on |
|---|---|
| **Complete** (default) | everything: your character, the world, NPCs, memory, stories, relationships |
| **Personal RPG** | your character: thoughts, memories, personal stories (less world and no NPC dialogues) |
| **Narrative world** | places, atmosphere and NPCs, less introspection (no stories) |
| **Social RP** | for playing with others: your character, memory, relationships. Nothing is shared without your consent |

### 3. Intensity

How often the narrator speaks up, from 0 to 100, in steps of 10 with the **-** and **+** buttons. The default, **50**, is the suggested value. A short description tells you what each range feels like. See [[Intensity and Prose Depth|Intensity-and-Depth]].

### 4. Style

How elevated the language is: **Natural**, **Literary** (default) or **Elevated**. Each choice shows an example line. The other styles stay possible, just less likely.

The guide does not ask about **literary forms** (verses, songs, inscriptions, tales in the private narrator): they are on and **rare** by default, about one every 20-30 minutes at intensity 50, never in combat. Change it any time in the settings (**Literary forms**: never, rare, normal) or with `/au literary`. See [[Literary Forms|Literary-Forms]].

### 5. Modules

Turn single modules on or off: Personal, World, NPC dialogues, Memory, Relationships, Stories, Social, Audio. Each card says **On** or **Off** in words. Changing a module here makes your preset "Custom".

Modules marked with `*` are not active yet. *Social* and *Audio* are placeholders for future versions: you can set them, but they do nothing today. The Social module will never share anything without your explicit consent.

### 6. Total RP 3 (only if installed)

Two separate choices:

- **Name from Total RP 3** (on by default): the narrator may use your RP profile's first name in lines. It reads your own profile only, and only the name.
- **Read others' Total RP 3** (off by default): with your consent, the addon reads only race, class and personality traits from **other players'** public profiles, so the narrator can react to who is in front of you. Never notes or history. **Turning it on asks for a confirmation in a dialog** (see below), and it does nothing unless *Name from Total RP 3* is on too: the card says "on, needs Name from Total RP 3" in that case.

See [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]].

### 7. What may reach chat?

One card per mode, with its description inside it:

| Choice | Meaning |
|---|---|
| **Private narrator only** (default) | lines stay on your screen; nothing ever goes to chat |
| **Preview** | the speak key opens the line in an editor and you send it with Enter |
| **Confirm to send** | the speak key or button sends the proposed line in one gesture |
| **Automatic (where allowed)** | emotes, and `/say` in instances, are posted by themselves **in your character's name, visible to everyone nearby**. It needs a separate confirmation |

Choosing **Automatic** does not turn it on: a **confirmation dialog** shows the whole warning, with a **Turn on** button that stays disabled for the first two seconds, so a double-click cannot get through. See [[Chat Gateway]].

The **Try the narrator** button shows a sample line in the narrator box. The box shows the line above every window and steps out from under the guide, so it is always visible.

### 8. Keys, button and settings

The last page tells you where everything is:

- **The four keys** (none is bound until you choose): **Speak** (asks for a line, and sends the proposal when there is one; never in private mode), **Pause** (silences the narrator at once), **Another line** (swaps the proposal) and **NPC** (opens or closes the ambient dialogue). Bind them under *Options > Keybindings > AddOns*; the **Open key bindings** button takes you there when the client allows it.
- **The speak button** sits beside the narrator box (shown by default). Drag it with the right mouse button; `/au button` shows or hides it.
- **The settings:** `/au options` (the **Open settings** button does the same). All commands: `/au help`. This guide again: `/au wizard`.
- A line with **the defaults**, read from the addon's own configuration: intensity, the pause between lines, how long a proposal waits, the chat mode, the speak button, reading others' Total RP 3, proximity and the shared list.

## What you will see

When you click **Finish** or **Skip**, the chat box shows:

> ready. The narrator is private: nothing goes to chat without a gesture from you. /au help for commands, /au wizard to redo the guide.

From now on lines appear in the narrator box while you play.

## Tips

- Not sure? Click **Skip**, then come back later with `/au wizard`. Just remember that the language can be changed at any time with `/au language it` or `/au language en`.
- Start with the default intensity of 50 for an evening, then adjust: lower if the narrator talks too much, higher if you miss it.
