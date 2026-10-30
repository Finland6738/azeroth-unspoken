# Commands Reference

Every command of Azeroth Unspoken. Type them in the chat box, like any other slash command.

## How commands work

- The addon answers to **`/au`** and to **`/unspoken`**. They are the same: `/unspoken journal` equals `/au journal`.
- **Command names and their arguments are always in English, whatever language you chose.** The interface language (see [[Languages]]) changes the descriptions and messages, never the words you type. In Italian, for example, you still type `/au journal`; the addon answers in Italian.
- Commands are not case-sensitive.
- There are no aliases: each command has one name. The only extra spellings are a few short forms, listed in the tables (`/au lang` for `/au language`, `/au rel` for `/au relationships`, and `s`, `e`, `p`, `g`, `i` as channel names).
- Typing `/au` alone or `/au help` prints the list of commands. A word the addon does not know gets a short answer with the closest command, for example "Did you mean `/au journal`?" if you type `/au diario`.
- Commands do not send anything to chat by themselves. A command that produces a line shows it in the narrator box, or as a proposal if you turned chat proposals on (see [[Chat Gateway]]).
- In the tables, `<this>` is a value you fill in, `[this]` is optional, and `a|b` means "a or b".

## Quick list

| Command | Does |
|---|---|
| `/au help` | shows the help (also `/au` alone) |
| `/au on` · `/au off` | turns the addon on or off |
| `/au pause` | pauses the narrator at once |
| `/au options` | opens the settings panel |
| `/au wizard` | reopens the setup wizard |
| `/au language it` | switches to Italian |
| `/au intensity <0-100>` | how often the narrator speaks |
| `/au depth <style>` | how elevated the language is |
| `/au mode <mode>` | what may reach chat |
| `/au speak` | sends the waiting proposal, or makes a new one |
| `/au soul` | your character's personality |
| `/au journal` | your character's journal |
| `/au relationships` | your relationships |
| `/au stories` | your personal stories |
| `/au talk` | the ambient dialogue with an NPC |
| `/au debug` | the diagnostic report |

## General

| Command | What it does |
|---|---|
| `/au help` | Prints the list of commands, with a description in your interface language. The command names are the same in every language. `/au` with nothing after it does the same. |
| `/au on` | Turns the addon back on. |
| `/au off` | Turns the addon off: no spontaneous lines, no NPC dialogues, and stories stop moving. Lines you ask for with a command, and the windows, still work. |
| `/au pause` | Pauses the narrator immediately, for this session only. Type it again to resume. Also available as a key binding. |
| `/au language [code]` (short form `/au lang`) | Sets the language of lines and interface: `en` (English, the default) or `it` (Italian). With no code, lists the available languages. See [[Languages]]. |
| `/au options` | Opens the [[settings panel|Settings]]. |
| `/au wizard` | Reopens the [[setup wizard|First-Run-Wizard]]. |
| `/au button` | Shows or hides the speak button. |

## Narrator style and rhythm

| Command | What it does |
|---|---|
| `/au intensity [0-100]` | Sets how often the narrator speaks. 0 = silent for spontaneous events, 50 = balanced (default), 100 = intense. With no number, shows the current value. |
| `/au depth [natural\|literary\|elevated]` | Sets the style depth (default: literary). With no value, shows the current one. |
| `/au cooldown <seconds>` | The minimum pause between two spontaneous lines, 0 to 3600 seconds (default 45). |
| `/au chance [<event> <0-100>]` | The probability, in percent, that an event produces a line. With no values, lists every event and its probability. Example: `/au chance zone 60`. |
| `/au ignore [<spell>]` | A spell no longer produces lines. Type it again to undo. With no spell name, lists the ignored spells. Example: `/au ignore Hearthstone`. |

See [[Intensity and Prose Depth|Intensity-and-Depth]] for what these mean in play.

## The narrator box

| Command | What it does |
|---|---|
| `/au narrator` | Shows a sample line, so you can see the box. |
| `/au narrator history` | Opens or closes the list of recent lines. |
| `/au narrator reset` | Moves the box back to its default place, near the bottom centre. |
| `/au narrator clear` | Empties the recent history. |

See [[The Narrator and the Four Voices|The-Narrator]].

## Chat and proposals

| Command | What it does |
|---|---|
| `/au mode [mode]` | Sets what may reach chat. Modes: `private` (default), `preview`, `confirm`, `auto` (see the note below). With no mode, shows the current one and explains it. |
| `/au channel [channel]` | The default channel for proposals: `auto` (default), `say` (short form `s`), `emote` (`e`), `party` (`p`), `raid`, `guild` (`g`), `instance` (`i`). |
| `/au speak` | The same as the speak key: sends the waiting proposal (or opens the editor in preview mode). With no proposal, makes a new one that fits the moment. |
| `/au another` | Swaps the waiting proposal for another line for the same moment. Sends nothing. |
| `/au copy` | Copies the proposal into the chat box, on the right channel. You send it with Enter. |
| `/au cancel` | Discards the waiting proposal. |

> **About `auto`.** `/au mode auto` does not turn automatic sending on at once. It prints a warning, and you must type the same command again **within 10 seconds** to confirm.

See [[Chat Gateway]] for the full picture.

## Asking for a line

These commands ask the addon for a line for a moment you choose. Handy in macros.

| Command | Moment |
|---|---|
| `/au greet [name]` | a greeting |
| `/au farewell [name]` | a farewell |
| `/au toast [name]` | a toast |
| `/au muse` | a thought |
| `/au threat [name]` | a threat |
| `/au battlecry [name]` | a battle cry |
| `/au pray` | a prayer |
| `/au victory` | a victory |
| `/au thanks [name]` | thanks |
| `/au jest [name]` | a joke |

Anything you write after the command is used as the target, for example `/au greet Old Tom`.

| Command | What it does |
|---|---|
| `/au cast <spell>` | A line for a spell: a heal, a resurrection, a travel spell, a buff or an attack, depending on the spell. Example macro: `/cast Flash Heal` then `/au cast Flash Heal`. |
| `/au event <name>` | Asks for a line for any event by name, including events added by phrase packs. Example: `/au event zone`. |
| `/au test [event]` | Prints a preview of a spoken line and an emote for the event, **in your own chat window only**. Sends nothing. With no event, uses `battle`. |

## Your character

| Command | What it does |
|---|---|
| `/au soul` | Opens the personality window. |
| `/au soul list` | Prints the current personality. |
| `/au soul neutral` | Clears every choice: neutral profile. |
| `/au soul archetype [id]` | Picks an archetype: `neutral`, `veteran`, `traveler`, `guardian`, `rogue`, `scholar`, `avenger`, `penitent`. With no id, lists them. |
| `/au soul trp3 on\|off` | Uses the public traits of your own Total RP 3 profile where you made no choice. Off by default. |
| `/au soul <trait> <value>` | Sets a trait. Traits: `temperament`, `morality`, `curiosity`, `faith`, `motivation`, `irony`, `voice` (inner voice). Use `-` (or `none`) as the value to remove a choice. With no value, shows the current one. The values are the English words listed in [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]]. |
| `/au soul avoid <topic>` | Adds or removes a topic to avoid: `death`, `blood`, `betrayal`, `family`, `religion`, `undead`, `demons`, `romance`. `/au soul avoid -` clears them all. |

See [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]] for every value.

## Journal and memory

| Command | What it does |
|---|---|
| `/au journal` | Opens the journal window. |
| `/au journal list` | Prints a summary and the latest 8 memories, with their numbers. |
| `/au journal places` | Prints the places you remember. |
| `/au journal flag [name]` | With a name, sets the flag, or clears it if already set. With no name, lists the flags. Names use letters, digits and `_`. |
| `/au journal export` | Shows the journal as text you can copy. |
| `/au journal pin <n>` | Makes memory number `n` permanent, or no longer permanent. |
| `/au journal delete <n>` | Deletes memory number `n`. |
| `/au journal forget <place>` | Forgets a place: next time it is a first visit again. |
| `/au journal reset [what]` | Erases memory. `what` is `all` (default), `memories`, `ordinary`, `places` or `flags`. Asks you to repeat the command within 15 seconds to confirm. |
| `/au memory` | Clears the list of **lines already used**, so they can come up again soon. It does **not** touch the journal. No confirmation. |

See [[Memory and Journal|Memory-and-Journal]].

## Relationships

| Command | What it does |
|---|---|
| `/au relationships` (short form `/au rel`) | Opens the relationships window. |
| `/au relationships list` | Prints a summary and the 10 most recent relationships. |
| `/au relationships people` | Lists the people the addon suggests this session. |
| `/au relationships add <name>` | Adds a player to your list. |
| `/au relationships dismiss <name>` | Dismisses a suggestion until your next login. |
| `/au relationships remove <name\|npc:ID>` | Deletes a relationship. |
| `/au relationships detail <name>` | Prints one relationship: label, disposition and axes. |
| `/au relationships note <name> <text>` | Writes your private note. |
| `/au relationships tags <name> <tag,...>` | Sets your tags. |
| `/au relationships label <name> <text>` | Sets your own label. |
| `/au relationships set <name> <axis> <value>` | Sets an axis by hand. Axes: `familiarity`, `trust`, `respect`, `affection`, `fear`, `loyalty`, `attraction`. |
| `/au relationships export` | Shows your relationships as text you can copy. |
| `/au relationships auto on\|off` | Registers the players you meet by themselves. Off by default. |
| `/au relationships attraction on\|off` | Turns the optional attraction axis on or off. Off by default. |
| `/au relationships reset [all\|npcs\|players]` | Erases relationships. Asks you to repeat within 15 seconds to confirm. |

A name can be `Name` or `Name-Realm`. An NPC is written `npc:` followed by its number, as shown by `/au relationships list`. See [[Relationships]].

## Who and where

| Command | What it does |
|---|---|
| `/au place` | Prints where you are according to the addon (zone, map number, territory, mood, instance, encounter, group role), then who is in front of you. |
| `/au who` | Prints who is in front of you according to the addon: role, character, race, recent actions, relationship, and where each piece of information comes from. |
| `/au who trp3 [on\|off]` | Consent to read other players' public Total RP 3 profiles. With no value, switches it. Off by default. |
| `/au who trait <trait> <value>` | Corrects a trait of the person in front of you (they must be in your relationships list): `temperament`, `morality`, `goals`, `speech`, `role`. `-` clears it. |

See [[Interlocutor and Place|Interlocutor-and-Place]].

## NPC dialogues

| Command | What it does |
|---|---|
| `/au talk` | Opens the ambient dialogue with the NPC in front of you. |
| `/au talk test [style]` | Opens a dialogue with a test innkeeper, with no real NPC. It leaves no trace. Optional style: `gruff`, `jovial`, `warm`, `formal`, `terse`, `neutral`. |
| `/au talk close` | Closes the open dialogue. |
| `/au talk role <role>` | Tells the addon what role the NPC in front of you has: `innkeeper`, `merchant`, `guard`, `flightmaster`, `trainer`, `banker`. |
| `/au talk offer [on\|off]` | Whether the dialogue button appears by itself. On by default. With no value, switches it. |
| `/au talk status` | Prints the dialogue state, for troubleshooting. |

See [[NPC Dialogues|NPC-Dialogues]].

## Personal stories

| Command | What it does |
|---|---|
| `/au stories` | Lists your stories. Same as `/au stories list`. |
| `/au stories journal` | Opens the Stories tab of the journal. |
| `/au stories choose <story> [option]` | Makes a choice in a story waiting for you, or moves it on. |
| `/au stories start <story>` | Begins a story that is available. |
| `/au stories suspend <story\|all>` | Suspends a story: it stays as it is and frees a slot. |
| `/au stories resume <story>` | Resumes a suspended story. |
| `/au stories skip <story\|all>` | Skips a story. |
| `/au stories disable <story\|all>` | Disables a story (with `all`: turns all stories off). |
| `/au stories enable <story\|all>` | Enables a story again (with `all`: turns stories on). |
| `/au stories max <1\|2>` | How many stories can be under way together (default 2). |
| `/au stories on` · `/au stories off` | Turns all stories on or off. |
| `/au stories status` | Prints the stories' state, for troubleshooting. |

A story is named by its id or its title: `path`, `knownface`, `fallen`, `capitals`. See [[Story Arcs|Story-Arcs]].

## Phrase packs

| Command | What it does |
|---|---|
| `/au packs` | Lists the phrase packs and whether each is on or off. |
| `/au pack <id> on\|off` | Turns a pack on or off. |
| `/au validate [full\|<pack>]` | Checks the phrase packs for mistakes and prints a summary. `full` prints every problem; a pack id checks only that pack. |
| `/au stats` | How many lines are available in your language, per event. |

See [[Phrase Packs|Phrase-Packs]].

## Diagnostics

| Command | What it does |
|---|---|
| `/au debug` | A short diagnostic report: version, client, settings, what the client allows, recent events, caught errors. |
| `/au debug full` | The same, with one line per client capability. |
| `/au debug trace` | Prints every event the addon recognizes, until you type it again or log out. |

`/au debug` works even when the addon failed to start. See [[Troubleshooting]].

## If you used an older build

Earlier development builds also accepted Italian command names and a few English synonyms (`/au chat`, `/au relations`, `/au npc`, `/au welcome`...). They were removed before the first release: each command now has one English name. Type the old word and the addon tells you the new one.

## Key bindings

Open the game menu, then **Options → Keybindings → AddOns → Azeroth Unspoken**. Four actions can be bound. None has a key by default.

| Action | What it does |
|---|---|
| **Confirm and speak the proposed line (or improvise)** | the same as `/au speak` |
| **Swap the proposed line for another one** | the same as `/au another` |
| **Pause the narrator immediately (toggle)** | the same as `/au pause` |
| **Ambient dialogue with the NPC (open/close)** | opens or closes the NPC dialogue |

The names of the actions follow your game client's language (Italian clients see them in Italian).

## Macro examples

A heal with a line. The line appears as a proposal (or in the narrator box, in private mode); press the speak key to send it:

```
/cast Flash Heal
/au cast Flash Heal
```

A toast at the inn, then the speak key to send it:

```
/au toast
```
