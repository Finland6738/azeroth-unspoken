# First-Run Wizard

The first time you enter the world with Azeroth Unspoken installed, a short setup wizard opens after about three seconds. It helps you choose the most important settings in a minute. Everything it sets can be changed later.

## How to use it

- **Next** goes to the next step, **Back** to the previous one, and **Finish** (on the last step) closes the wizard.
- **Skip** closes it at once and keeps the default settings. The defaults are the safe ones: the narrator stays private and nothing goes to chat.
- You can drag the wizard window to move it.
- Reopen it at any time with `/au wizard`, or with the **Reopen the setup guide** button in the [[settings panel|Settings]].

The wizard opens only once per account. After you finish or skip it, it does not come back by itself.

## The steps

The wizard has **6 steps**, or **7 if Total RP 3 is installed**.

### 1. Language

Choose the language of the narrator's lines and of the addon's interface: **English** or **Italiano**. This does not depend on the language of your game client.

> **Note.** The addon starts in **English**. If you prefer Italian for the interface and the lines, click **Italiano** on this first page. If you skipped the wizard, type `/au language it`. Command names stay English in both languages. See [[Languages]].

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

### 5. Modules

Turn single modules on or off: Personal, World, NPC dialogues, Memory, Relationships, Stories, Social, Audio. Changing a module here makes your preset "Custom".

Modules marked with `*` are not active yet. *Social* and *Audio* are placeholders for future versions: you can set them, but they do nothing today. The Social module will never share anything without your explicit consent.

### 6. Total RP 3 (only if installed)

Two separate choices:

- **Name from Total RP 3** (on by default): the narrator may use your RP profile's first name in lines. It reads your own profile only, and only the name.
- **Read others' Total RP 3** (off by default): with your consent, the addon reads only race, class and personality traits from **other players'** public profiles, so the narrator can react to who is in front of you. Never notes or history.

See [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]].

### 7. Chat and test

Choose what may reach chat:

| Choice | Meaning |
|---|---|
| **Private narrator only** (default) | lines stay in the narrator box; nothing goes to chat |
| **Preview** | your character's lines become proposals; the speak key opens an editor and you send with Enter |
| **Confirm to send** | the proposal is ready; the speak key or button sends it |
| **Automatic (where allowed)** | some lines go out by themselves. It needs a second click within 10 seconds to turn on |

The **Try the narrator** button shows a sample line in the narrator box, so you can see where it appears. See [[Chat Gateway]].

## What you will see

When you click **Finish** or **Skip**, the chat box shows:

> ready. The narrator is private: nothing goes to chat without a gesture from you. /au help for commands, /au wizard to redo the guide.

From now on lines appear in the narrator box while you play.

## Tips

- Not sure? Click **Skip**, then come back later with `/au wizard`. Just remember that the language can be changed at any time with `/au language it` or `/au language en`.
- Start with the default intensity of 50 for an evening, then adjust: lower if the narrator talks too much, higher if you miss it.
