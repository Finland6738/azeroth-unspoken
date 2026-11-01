# Settings Reference

Every setting of Azeroth Unspoken, its default value and where to change it.

## Where settings live

- **The settings panel.** Open it with `/au options`. It is also listed among the game's addon options, under **Azeroth Unspoken**. It has five sections under their headers: **General**, **Chat**, **Narrator**, **Modules** and **Privacy**; scroll to see them all. Each row is a name, with its control next to it: a button that shows the value (click to switch or cycle it), or **-**, the value and **+** for a number. A row of buttons at the end of General and Narrator opens a window or acts once.
- **Commands.** Many settings also have a command. See the [[Commands Reference|Commands]].
- **Windows.** Personality, journal, relationships and stories have their own windows, with their own choices. Every window has a close box (**X**) at the top right and closes with **Esc**; the NPC dialogue window is the exception, because Esc also closes the game's own NPC windows (see [[NPC Dialogues|NPC-Dialogues]]).
- **The wizard.** The [[setup wizard|First-Run-Wizard]] sets the most important ones in one go.

**Per account or per character?** General settings (everything on this page unless noted) are shared by all characters on your account. Personality, memories, relationships and stories belong to **each character**; the only exception is the optional **Share with the account** list of relationships (off by default), which keeps your choices about people in the account.

Changes take effect at once. There is no Save button.

## General

| Setting | Default | Panel row | Command | What it does |
|---|---|---|---|---|
| Addon on/off | on | **Addon** | `/au on`, `/au off` | Off: no spontaneous lines, no NPC dialogues, stories stop. Commands still work. |
| Phrase language | English (`en`) | **Phrase language** (click to cycle) | `/au language it` | Language of lines and interface. Choose it in the wizard or with the command. See [[Languages]]. |
| Intensity | 50 | **Intensity** (- / + by 10) | `/au intensity <0-100>` | How often the narrator speaks. 0 = silent for spontaneous events. |
| Style depth | Literary | **Style depth** (click to cycle) | `/au depth natural\|literary\|elevated` | Which style of line is preferred. |
| Pause between lines | 45 s | **Pause between lines** (cycles 15, 30, 45, 60, 90, 120, 180) | `/au cooldown <0-3600>` | Minimum pause between two spontaneous lines. |
| Window scale | 100% | **Window scale** (- / + by 10%) | — | 80–150%. The size of the journal, export, relationships, character soul, setup guide and NPC dialogue windows. Open windows follow at once. The narrator box has its own **Text size**. |
| Event probability | per event, see below | — | `/au chance <event> <0-100>` | Chance that an event produces a line. |
| Ignored spells | none | — | `/au ignore <spell>` | Spells that never produce lines. |
| Phrase packs on/off | all on | — | `/au pack <id> on\|off` | See [[Phrase Packs|Phrase-Packs]]. |

General ends with buttons that open the **Character journal...**, **Relationships...** and **Character soul...** windows, and **Reopen the setup guide**.

See [[Intensity and Prose Depth|Intensity-and-Depth]] for how intensity, depth and the pause work together.

### Default event probabilities

These are the chances before intensity is applied. Intensity 50 keeps them as they are; lower intensity makes them smaller, higher intensity makes them bigger (up to double at 100). Important moments (death, coming back to life, a level, resurrecting someone) never get rarer than at 50. `/au chance` with no values lists the current ones.

| Event | When | Chance |
|---|---|---|
| `zone` | you enter a new zone | 40% |
| `battle` | a fight starts | 35% |
| `victory` | a fight ends well | 30% |
| `lowhp` | your health gets low | 60% |
| `death` | you die | 85% |
| `rez` | you come back to life | 70% |
| `levelup` | you gain a level | 100% |
| `attack` | you cast an attack spell | 8% |
| `heal` | you cast a heal | 15% |
| `buff` | you cast a buff out of combat | 25% |
| `travel` | you cast a travel spell | 60% |
| `rezother` | you resurrect someone | 80% |
| `weather_change` | the weather changes and stays changed | 60% |
| `dawn`, `dusk` | the game passes from night to day, or from day to night | 50% |
| `subzone_enter` | you enter a new subzone | 30% |
| `landmark` | you enter a named place (an inn, a village, a graveyard...) | 50% |
| `quest_progress` | a quest step is finished, or a quest is ready to hand in | 35% |
| `quest_complete` | you hand in a quest | 75% |
| `reputation_change` | your standing with a faction goes up or down | 70% |
| `rest_enter` | you start resting (an inn, a city) | 55% |
| `journey` | a flight starts or ends | 70% |

Events added by phrase packs have their own default (30% if the pack sets none).

## Chat

| Setting | Default | Panel row | Command | What it does |
|---|---|---|---|---|
| Chat mode | Private narrator only | **Chat** (cycles private, preview, confirm) | `/au mode private\|preview\|confirm` | What may reach chat. |
| Automatic sending | off | **Automatic sending**, in the **Privacy** section (a confirmation dialog, then **Turn on**; or click again after a couple of seconds) | `/au mode auto` (twice, a few seconds apart) | Lets some lines go out by themselves, in your character's name, seen by everyone nearby. The row says *off, read first*, then *off, confirm*, then *on*. If the game client blocks an automatic send, nothing goes out by itself for the rest of the session: every line waits for you to confirm it, and the row says *on, held: confirm to send until /reload*. Choosing automatic sending again, or `/reload`, turns it back on. |
| Default channel | automatic | **Default channel** (click to cycle) | `/au channel <channel>` | Where proposals go. Automatic = `/say` for your character's words, `/emote` for the narrator's. To change the channel of the proposal that is waiting, click its channel chip, use the **Next channel** key or type `/au channel next`. |
| Speak button | shown | **'Speak' button** | `/au button` | Shows or hides the speak button. `/au button editor on` makes a click open the editor instead of sending (see [[Chat Gateway]]). |
| Proposal waits | 25 s | **Proposal waits** (click to cycle: 25, 60, 120 s, until dismissed) | — | How long a proposal waits before it expires. The time stops while the mouse is over the narrator box and while you edit the proposal. *Until dismissed*: it waits until you send or discard it. |
| Chat proposals module | on | module **Chat proposals** | — | Off: the same as private mode. |

These limits are fixed and cannot be changed:

| Limit | Value |
|---|---|
| Minimum time between two sends | 4 seconds |
| Sends per minute, any channel | 6 |
| Automatic sends per minute | 2 |
| Longest message | 255 bytes; longer lines are cut with "..." |

See [[Chat Gateway]].

## Narrator box

| Setting | Default | Panel row | Range |
|---|---|---|---|
| Narrator box on/off | on | **Narrator box** | Off: lines appear in your chat window instead, visible only to you. |
| Text duration | 8 s | **Text duration** (- / + by 1) | 2–30 s. The base time; the reading time of the line is added to it. |
| Reading speed | 14 characters/s | **Reading speed** (click to cycle) | 8, 11, 14, 18 or 24 characters a second. Each line stays the text duration plus its length divided by this speed: slower = longer on screen. |
| Background opacity | 80% | **Background opacity** (- / + by 5%) | 55–100%. Only the box's background: the text always stays fully opaque, so it stays readable over bright scenes. |
| Text size | 14 | **Text size** (- / + by 1) | 10–28. The voice label is 12 or more. |
| Reduce motion | off | **Reduce motion** | On: the box appears and disappears without fading. |
| Position locked | no | **Position locked** | Locked: the box cannot be dragged. |
| In combat | hold until combat ends | **In combat** (click to cycle) | `/au combat show\|chat\|hold\|silent`. What a spontaneous line does during a fight. **Show**: as before, in the box. **Chat frame only**: written in your chat window (visible only to you) and in the history, not in the box. **Hold until combat ends** (default): nothing on screen during the fight; the last three lines come after it, one after the other. **Silent**: no spontaneous line during any fight. In every setting a chat proposal waits for the end of the fight, the editor never opens in combat, and lines you ask for yourself (a command) are never held. See [[The Narrator and the Four Voices\|The-Narrator#in-combat]]. |
| Position | near the bottom centre | **Move the box back to the middle** | Drag the box to move it. `/au narrator reset` also resets it. The place is saved by the box's bottom-left corner, so a longer line makes the box grow upwards, never down over the action bars. |
| History | 30 lines | **History** (opens the list) | This session only. |
| NPC dialogue text size | 13 | **NPC dialogue text size** (- / + by 1) | 10–24. The text of the [[NPC dialogue window|NPC-Dialogues]]: its title, line and answers are laid out again for the new size. |
| NPC dialogue opacity | 92% | **NPC dialogue opacity** (- / + by 5%) | 30–100%. The background of the NPC dialogue window. |

The Narrator section ends with **Pause the narrator** (**Resume the narrator** while paused; also `/au pause`, for this session only), **Try the narrator**, which shows a sample line, **History** and **Move the box back to the middle**. Turning the **Narrator box** or the **Addon** off takes the line on screen away at once. See [[The Narrator and the Four Voices|The-Narrator]].

## Modules

Modules are big switches for whole features. All are on by default, except Audio.

| Module | Default | What it controls |
|---|---|---|
| **Personal** | on | spontaneous lines about you: fights, low health, death, coming back, levels, spells, quests, reputation, rest in an inn |
| **World** | on | spontaneous lines about the world: entering a zone, travelling, the weather, dawn and dusk, subzones and named places, flights |
| **NPC dialogues** | on | [[NPC ambient dialogues|NPC-Dialogues]] |
| **Memory** | on | the [[journal and memories|Memory-and-Journal]] |
| **Emotions** | on | your character's [[mood|Character-Soul-and-Total-RP-3#emotions]]: events change it, time heals it, lines follow it. Off = the narrator as before, and the saved mood is cleared. Also `/au emotion on\|off` |
| **Relationships** | on | [[relationships|Relationships]] with NPCs and players |
| **Stories** | on | [[personal stories|Story-Arcs]] |
| **Social** `*` | on | not active yet: a placeholder for future social play |
| **Chat proposals** | on | the [[Chat Gateway]]; off = private only |
| **Audio** `*` | off | not active yet: a placeholder |

Modules marked `*` do nothing in this version. In the panel each module is a name and an **on**/**off** button; a module that is on has a full gold edge and a bar under its state.

### Presets

A preset sets several modules at once. Choose one in the wizard. Changing a single module makes the preset "Custom". Presets do not change Chat proposals, Emotions, Audio or Total RP 3.

| Preset | Personal | World | NPC dialogues | Memory | Relationships | Stories | Social |
|---|---|---|---|---|---|---|---|
| **Complete** (default) | on | on | on | on | on | on | on |
| **Personal RPG** | on | off | off | on | on | on | off |
| **Narrative world** | off | on | on | on | on | off | off |
| **Social RP** | on | off | off | on | on | off | on |

## Privacy and Total RP 3

The panel's **Privacy** section has the three choices about what may leave your screen or be read from others: **Automatic sending** (see [Chat](#chat)), **Read others' Total RP 3** and **Name from Total RP 3**. Under them, in the normal text size, the panel explains the chat mode you chose and any consent that waits for something.

| Setting | Default | Where | What it does |
|---|---|---|---|
| Name from Total RP 3 | on | panel **Name from Total RP 3**, wizard | Uses your own RP profile's first name in lines. |
| Traits from Total RP 3 | off | `/au soul trp3 on`, personality window | Uses your own profile's public personality traits where you made no choice. |
| Read others' Total RP 3 | off | panel **Read others' Total RP 3**, wizard, `/au who trp3 on` | Reads race, class and traits from other players' public profiles. Turning it on asks for a confirmation (like automatic sending). Needs *Name from Total RP 3* on too: with that off the row says *on, needs name* and a line under the panel explains it. |

See [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]].

## Personality (per character)

| Setting | Default | Where |
|---|---|---|
| Archetype | Neutral | `/au soul archetype <id>`, personality window (panel button **Character soul...**) |
| Traits | none chosen | `/au soul <trait> <0-100>`, the sliders of the personality window |
| Topics to avoid | none | `/au soul avoid <topic>`, personality window |

## Memory (per character)

The journal opens from the panel button **Character journal...** or `/au journal`. It has no switches besides the Memory module; you manage the memories themselves. See [[Memory and Journal|Memory-and-Journal]].

## Relationships

| Setting | Default | Where | What it does |
|---|---|---|---|
| Automatic NPCs | on | relationships window | Works out your standing with NPCs by itself. |
| Suggest people | on | relationships window | Suggests players you meet. It does not add them. |
| Register by itself | off | relationships window, `/au relationships auto on\|off` | Adds the players you meet without asking. |
| Attraction axis | off | relationships window, `/au relationships attraction on\|off` | Turns on the optional attraction axis. |
| Recognise on target | off | relationships window | Lets the narrator also recognise a known player when you target them (joining your group or an interaction already do). |
| Recognise nearby | off | relationships window, `/au relationships proximity on\|off` | Nameplates and mouseover can let the narrator recognise a player already in your list (and suggest people with a Total RP 3 profile if you allowed reading them). Turning it on asks for a confirmation. This session only: nothing is saved and no one is added. |
| Share with the account | off | relationships window, `/au relationships share on\|off` | Keeps your choices about people in the account and shares them between your characters. Turning it on shows a warning in a confirmation dialog (privacy, role play) and needs a second step; turning it off deletes nothing. |
| Level notices | on | relationships window | A short private line when an NPC moves to another level. Rare, never in combat, never in chat. |
| Promise notices | on | relationships window | A short private line when an NPC reminds you of a quest you promised, is relieved by a late one, or remembers an oath you broke. Rare, never in combat, never in chat. The promises are kept either way. |

The window opens from the panel button **Relationships...** or `/au relationships`. See [[Relationships]].

## NPC dialogues

| Setting | Default | Where | What it does |
|---|---|---|---|
| Automatic offer | on | `/au talk offer on\|off` | The dialogue button appears by itself when you open a vendor, flight or training window, or talk to a known innkeeper. |

The dialogue window can be dragged. Its text size, opacity and scale are in the panel (see [Narrator box](#narrator-box) and [General](#general)). See [[NPC Dialogues|NPC-Dialogues]].

## Stories (per character, except the maximum)

| Setting | Default | Where |
|---|---|---|
| Stories under way at the same time | 2 | `/au stories max <1\|2>` |
| Single stories on/off | all on | `/au stories enable\|disable <story>`, the journal's Stories tab |

## Resetting settings

There is no single "reset all settings" button. To start over:

- **Back to safe chat:** `/au mode private`.
- **One value:** set it again with its command or panel row (the defaults are on this page).
- **Everything, for all characters:** log out, delete `AzerothUnspokenDB.lua` from the account's saved-data folder, and log in again. The wizard opens again. See [[Privacy and Data|Privacy-and-Data]] and [[Troubleshooting]].
