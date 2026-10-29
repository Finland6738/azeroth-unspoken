# Commands Reference

Every command of Azeroth Unspoken, with all its aliases. Type them in the chat box, like any other slash command.

## How commands work

- The addon answers to **`/au`** and to **`/unspoken`**. They are the same: `/unspoken journal` equals `/au journal`.
- Commands are not case-sensitive.
- Most commands have an English name and an Italian name, and some have extra short forms. They are all listed below and all work, whatever language you chose.
- Typing `/au` alone, or an unknown command, prints the help list.
- Commands do not send anything to chat by themselves. A command that produces a line shows it in the narrator box, or as a proposal if you turned chat proposals on (see [[Chat Gateway]]).
- In the tables, `<this>` is a value you fill in, `[this]` is optional, and `a|b` means "a or b".

## Quick list

| Command | Does |
|---|---|
| `/au` | shows the help |
| `/au on` · `/au off` | turns the addon on or off |
| `/au pause` | pauses the narrator at once |
| `/au options` | opens the settings panel |
| `/au welcome` | reopens the setup wizard |
| `/au language en` | switches to English |
| `/au intensity <0-100>` | how often the narrator speaks |
| `/au depth <style>` | how elevated the language is |
| `/au chat <mode>` | what may reach chat |
| `/au speak` | sends the waiting proposal, or makes a new one |
| `/au soul` | your character's personality |
| `/au journal` | your character's journal |
| `/au relations` | your relationships |
| `/au stories` | your personal stories |
| `/au npc` | the ambient dialogue with an NPC |
| `/au debug` | the diagnostic report |

## General

| Command | Aliases | What it does |
|---|---|---|
| `/au help` | `/au aiuto`, `/au` with nothing after it | Prints the list of commands. |
| `/au on` | | Turns the addon back on. |
| `/au off` | | Turns the addon off: no spontaneous lines, no NPC dialogues, and stories stop moving. Lines you ask for with a command, and the windows, still work. |
| `/au pause` | `/au pausa` | Pauses the narrator immediately, for this session only. Type it again to resume. Also available as a key binding. |
| `/au language [code]` | `/au lingua`, `/au lang` | Sets the language of lines and interface: `en` (English) or `it` (Italian). With no code, lists the available languages. See [[Languages]]. |
| `/au options` | `/au opzioni`, `/au config` | Opens the [[settings panel|Settings]]. |
| `/au welcome` | `/au wizard`, `/au benvenuto` | Reopens the [[setup wizard|First-Run-Wizard]]. |
| `/au button` | `/au pulsante` | Shows or hides the speak button. |

## Narrator style and rhythm

| Command | Aliases | What it does |
|---|---|---|
| `/au intensity [0-100]` | `/au intensita`, `/au intensità` | Sets how often the narrator speaks. 0 = silent for spontaneous events, 50 = balanced (default), 100 = intense. With no number, shows the current value. |
| `/au depth [natural\|literary\|elevated]` | `/au profondita`, `/au profondità`; values also `naturale`, `letterario`, `elevato` | Sets the style depth (default: literary). With no value, shows the current one. |
| `/au cooldown <seconds>` | | The minimum pause between two spontaneous lines, 0 to 3600 seconds (default 45). |
| `/au chance [<event> <0-100>]` | `/au prob` | The probability, in percent, that an event produces a line. With no values, lists every event and its probability. Example: `/au chance zone 60`. |
| `/au ignore [<spell>]` | `/au ignora` | A spell no longer produces lines. Type it again to undo. With no spell name, lists the ignored spells. Example: `/au ignore Hearthstone`. |

See [[Intensity and Prose Depth|Intensity-and-Depth]] for what these mean in play.

## The narrator box

| Command | Aliases | What it does |
|---|---|---|
| `/au narrator` | `/au narratore` | Shows a sample line, so you can see the box. |
| `/au narrator history` | `cronologia` | Opens or closes the list of recent lines. |
| `/au narrator reset` | | Moves the box back to its default place, near the bottom centre. |
| `/au narrator clear` | `pulisci` | Empties the recent history. |

See [[The Narrator and the Four Voices|The-Narrator]].

## Chat and proposals

| Command | Aliases | What it does |
|---|---|---|
| `/au chat [mode]` | `/au mode`, `/au modo` | Sets what may reach chat. Modes: `private` (default; also `privato`, `p`), `preview` (`anteprima`), `confirm` (`conferma`, `send`, `invia`), `auto` (`automatica`, `automatico`; see the note below). With no mode, shows the current one and explains it. |
| `/au channel [channel]` | `/au canale` | The default channel for proposals: `auto` (default), `say` (`s`, `dire`), `emote` (`e`, `me`), `party` (`p`, `gruppo`), `raid` (`incursione`), `guild` (`g`, `gilda`), `instance` (`i`, `istanza`). |
| `/au speak` | `/au say`, `/au send`, `/au dire`, `/au invia` | The same as the speak key: sends the waiting proposal (or opens the editor in preview mode). With no proposal, makes a new one that fits the moment. |
| `/au another` | `/au reroll`, `/au altra` | Swaps the waiting proposal for another line for the same moment. Sends nothing. |
| `/au copy` | `/au copia` | Copies the proposal into the chat box, on the right channel. You send it with Enter. |
| `/au cancel` | `/au discard`, `/au annulla`, `/au scarta` | Discards the waiting proposal. |

> **About `auto`.** `/au chat auto` does not turn automatic sending on at once. It prints a warning, and you must type the same command again **within 10 seconds** to confirm.

See [[Chat Gateway]] for the full picture.

## Asking for a line

These commands ask the addon for a line for a moment you choose. Handy in macros.

| Command | Aliases | Moment |
|---|---|---|
| `/au greet [name]` | `/au hello`, `/au saluto` | a greeting |
| `/au farewell [name]` | `/au bye`, `/au addio` | a farewell |
| `/au toast [name]` | `/au brindisi` | a toast |
| `/au muse` | `/au pensiero`, `/au riflessione` | a thought |
| `/au threat [name]` | `/au minaccia` | a threat |
| `/au battlecry [name]` | `/au grido`, `/au battaglia` | a battle cry |
| `/au pray` | `/au preghiera` | a prayer |
| `/au victory` | `/au vittoria` | a victory |
| `/au thanks [name]` | `/au ringrazia`, `/au grazie` | thanks |
| `/au jest [name]` | `/au scherzo`, `/au battuta` | a joke |

Anything you write after the command is used as the target, for example `/au greet Old Tom`.

| Command | Aliases | What it does |
|---|---|---|
| `/au cast <spell>` | `/au incanta` | A line for a spell: a heal, a resurrection, a travel spell, a buff or an attack, depending on the spell. Example macro: `/cast Flash Heal` then `/au cast Flash Heal`. |
| `/au event <name>` | `/au evento` | Asks for a line for any event by name, including events added by phrase packs. Example: `/au event zone`. |
| `/au test [event]` | `/au prova` | Prints a preview of a spoken line and an emote for the event, **in your own chat window only**. Sends nothing. With no event, uses `battle`. |

## Your character

| Command | Aliases | What it does |
|---|---|---|
| `/au soul` | `/au anima`, `/au personalita`, `/au profilo` | Opens the personality window. |
| `/au soul list` | `lista`, `show`, `mostra` | Prints the current personality. |
| `/au soul neutral` | `neutro`, `reset` | Clears every choice: neutral profile. |
| `/au soul archetype [id]` | `archetipo`, `arch` | Picks an archetype: `neutral`, `veteran`, `traveler`, `guardian`, `rogue`, `scholar`, `avenger`, `penitent`. With no id, lists them. |
| `/au soul trp3 on\|off` | values also `yes`, `si`, `no` | Uses the public traits of your own Total RP 3 profile where you made no choice. Off by default. |
| `/au soul <trait> <value>` | | Sets a trait. Traits: `temperament`, `morality`, `curiosity`, `faith`, `motivation`, `irony`, `voice` (inner voice; also `innervoice`, `inner`). Use `-` (or `none`) as the value to remove a choice. With no value, shows the current one. Italian names also work: `temperamento`, `morale`, `curiosita`, `fede`, `motivazione`, `ironia`, `voce`. |
| `/au soul avoid <topic>` | `evita`, `topic` | Adds or removes a topic to avoid: `death`, `blood`, `betrayal`, `family`, `religion`, `undead`, `demons`, `romance`. `/au soul avoid -` clears them all. |

See [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]] for every value.

## Journal and memory

| Command | Aliases | What it does |
|---|---|---|
| `/au journal` | `/au diary`, `/au diario` | Opens the journal window. |
| `/au journal list` | `lista` | Prints a summary and the latest 8 memories, with their numbers. |
| `/au journal places` | `luoghi` | Prints the places you remember. |
| `/au journal flag [name]` | `flags` | With a name, sets the flag, or clears it if already set. With no name, lists the flags. Names use letters, digits and `_`. |
| `/au journal export` | `esporta` | Shows the journal as text you can copy. |
| `/au journal pin <n>` | `perm`, `permanente` | Makes memory number `n` permanent, or no longer permanent. |
| `/au journal delete <n>` | `elimina`, `cancella` | Deletes memory number `n`. |
| `/au journal forget <place>` | `dimentica` | Forgets a place: next time it is a first visit again. |
| `/au journal reset [what]` | `azzera` | Erases memory. `what` is `all` (default), `memories`, `ordinary`, `places` or `flags` (Italian: `tutto`, `ricordi`, `ordinari`, `luoghi`, `flag`). Asks you to repeat the command within 15 seconds to confirm. |
| `/au memory` | `/au memoria` | Clears the list of **lines already used**, so they can come up again soon. It does **not** touch the journal. No confirmation. |

See [[Memory and Journal|Memory-and-Journal]].

## Relationships

| Command | Aliases | What it does |
|---|---|---|
| `/au relations` | `/au relationships`, `/au bonds`, `/au relazioni`, `/au relazione` | Opens the relationships window. |
| `/au relations list` | `lista` | Prints a summary and the 10 most recent relationships. |
| `/au relations people` | `candidates`, `persone`, `candidati` | Lists the people the addon suggests this session. |
| `/au relations add <name>` | `aggiungi` | Adds a player to your list. |
| `/au relations dismiss <name>` | `scarta` | Dismisses a suggestion until your next login. |
| `/au relations remove <name\|npc:ID>` | `delete`, `rimuovi`, `elimina` | Deletes a relationship. |
| `/au relations detail <name>` | `info`, `dettaglio` | Prints one relationship: label, disposition and axes. |
| `/au relations note <name> <text>` | `nota` | Writes your private note. |
| `/au relations tags <name> <tag,...>` | `tag` | Sets your tags. |
| `/au relations label <name> <text>` | `etichetta` | Sets your own label. |
| `/au relations set <name> <axis> <value>` | `imposta` | Sets an axis by hand. Axes: `familiarity`, `trust`, `respect`, `affection`, `fear`, `loyalty`, `attraction` (Italian names also work). |
| `/au relations export` | `esporta` | Shows your relationships as text you can copy. |
| `/au relations auto on\|off` | `automatico` | Registers the players you meet by themselves. Off by default. |
| `/au relations attraction on\|off` | `attrazione` | Turns the optional attraction axis on or off. Off by default. |
| `/au relations reset [all\|npcs\|players]` | `azzera`; values also `tutto`, `giocatori` | Erases relationships. Asks you to repeat within 15 seconds to confirm. |

A name can be `Name` or `Name-Realm`. An NPC is written `npc:` followed by its number, as shown by `/au relations list`. See [[Relationships]].

## Who and where

| Command | Aliases | What it does |
|---|---|---|
| `/au place` | `/au where`, `/au luogo`, `/au dove` | Prints where you are according to the addon (zone, map number, territory, mood, instance, encounter, group role), then who is in front of you. |
| `/au who` | `/au other`, `/au chi`, `/au interlocutore` | Prints who is in front of you according to the addon: role, character, race, recent actions, relationship, and where each piece of information comes from. |
| `/au who trp3 [on\|off]` | | Consent to read other players' public Total RP 3 profiles. With no value, switches it. Off by default. |
| `/au who trait <trait> <value>` | `tratto` | Corrects a trait of the person in front of you (they must be in your relationships list): `temperament`, `morality`, `goals`, `speech`, `role`. `-` clears it. |

See [[Interlocutor and Place|Interlocutor-and-Place]].

## NPC dialogues

| Command | Aliases | What it does |
|---|---|---|
| `/au npc` | `/au talk`, `/au dialogue`, `/au dialogo`, `/au parla` | Opens the ambient dialogue with the NPC in front of you. |
| `/au npc test [style]` | `prova` | Opens a dialogue with a test innkeeper, with no real NPC. It leaves no trace. Optional style: `gruff`, `jovial`, `warm`, `formal`, `terse`, `neutral`. |
| `/au npc close` | `chiudi` | Closes the open dialogue. |
| `/au npc role <role>` | `ruolo` | Tells the addon what role the NPC in front of you has: `innkeeper`, `merchant`, `guard`, `flightmaster`, `trainer`, `banker`. |
| `/au npc offer [on\|off]` | `offerta` | Whether the dialogue button appears by itself. On by default. With no value, switches it. |
| `/au npc status` | `stato` | Prints the dialogue state, for troubleshooting. |

See [[NPC Dialogues|NPC-Dialogues]].

## Personal stories

| Command | Aliases | What it does |
|---|---|---|
| `/au stories` | `/au story`, `/au arcs`, `/au storie`, `/au storia`, `/au archi` | Lists your stories. Same as `/au stories list` (`lista`, `elenco`). |
| `/au stories journal` | `diario` | Opens the Stories tab of the journal. |
| `/au stories choose <story> [option]` | `scegli`, `prosegui` | Makes a choice in a story waiting for you, or moves it on. |
| `/au stories start <story>` | `inizia` | Begins a story that is available. |
| `/au stories suspend <story\|all>` | `sospendi` | Suspends a story: it stays as it is and frees a slot. |
| `/au stories resume <story>` | `riprendi` | Resumes a suspended story. |
| `/au stories skip <story\|all>` | `salta` | Skips a story. |
| `/au stories disable <story\|all>` | `disattiva` | Disables a story (with `all`: turns all stories off). |
| `/au stories enable <story\|all>` | `attiva` | Enables a story again (with `all`: turns stories on). |
| `/au stories max <1\|2>` | | How many stories can be under way together (default 2). |
| `/au stories on` · `/au stories off` | `accendi`, `spegni` | Turns all stories on or off. |
| `/au stories status` | `stato` | Prints the stories' state, for troubleshooting. |

A story is named by its id or its title: `path`, `knownface`, `fallen`, `capitals`. `all` also accepts `tutte` and `tutti`. See [[Story Arcs|Story-Arcs]].

## Phrase packs

| Command | Aliases | What it does |
|---|---|---|
| `/au packs` | `/au pacchetti` | Lists the phrase packs and whether each is on or off. |
| `/au pack <id> on\|off` | `/au pacchetto` | Turns a pack on or off. |
| `/au validate [full\|<pack>]` | `/au valida`, `/au controlla`; `full` also `tutto` | Checks the phrase packs for mistakes and prints a summary. `full` prints every problem; a pack id checks only that pack. |
| `/au stats` | `/au info` | How many lines are available in your language, per event. |

See [[Phrase Packs|Phrase-Packs]].

## Diagnostics

| Command | What it does |
|---|---|
| `/au debug` | A short diagnostic report: version, client, settings, what the client allows, recent events, caught errors. |
| `/au debug full` | The same, with one line per client capability (`tutto` also works). |
| `/au debug trace` | Prints every event the addon recognizes, until you type it again or log out. |

`/au debug` works even when the addon failed to start. See [[Troubleshooting]].

## Key bindings

Open the game menu, then **Options → Keybindings → AddOns → Azeroth Unspoken**. Four actions can be bound. None has a key by default.

| Action | What it does |
|---|---|
| **Confirm and speak the proposed line (or improvise)** | the same as `/au speak` |
| **Swap the proposed line for another one** | the same as `/au another` |
| **Pause the narrator immediately (toggle)** | the same as `/au pause` |
| **Ambient dialogue with the NPC (open/close)** | opens or closes the NPC dialogue |

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
