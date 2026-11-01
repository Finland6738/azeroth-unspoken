# Azeroth Unspoken

*An immersive roleplay companion for World of Warcraft*

> 🇮🇹 [Versione italiana](README.it.md)

A distinctive, mysterious narrative companion for World of Warcraft that calls back the thoughts and stories left unspoken.

Azeroth Unspoken is an addon for **World of Warcraft: Forever** (Interface `16001`). It bundles a local narrative engine and a database of hand-written lines, in Italian and English, that react to places, events and what your character does: a new zone, a fight, a serious wound, a level gained, a greeting.

> **Status: under development (version 0.1.0 in the `.toc`); features of milestones M0–M3 are written.** The code has only been exercised outside the game, against a simulated client. **No test in the real client has been done yet** (the [G1](docs/G1_checklist.md) checklist, in Italian: tests G1, G2 and G3, 108 numbered steps plus the R sections), so expect surprises. See [Project status](#project-status).
>
> The documentation is in English, except the in-game test checklist ([`docs/G1_checklist.md`](docs/G1_checklist.md)) and the original design specification ([`docs/Immersion_Director_GDD_v1.0.md`](docs/Immersion_Director_GDD_v1.0.md)), both in Italian.

## Contents

- [What it does and does not do](#what-it-does-and-does-not-do)
- [Requirements](#requirements)
- [Installation](#installation)
- [First launch](#first-launch)
- [Commands](#commands)
- [Settings](#settings)
- [Privacy and chat](#privacy-and-chat)
- [Total RP 3](#total-rp-3)
- [Phrase packs](#phrase-packs)
- [Project status](#project-status)
- [Development and tests](#development-and-tests)
- [Documentation](#documentation)
- [Support and feedback](#support-and-feedback)
- [Support the project](#support-the-project)
- [License](#license)
- [Credits](#credits)

## What it does and does not do

**What it does (today, on `main`)**

- **Private narrator.** Listens to a few game events (entering a zone, combat start and end, low health, death and revival, level-up, spells cast, greetings and meetings) and, with a probability and a pause scaled by the intensity you choose, shows you a line that fits the moment in a **box** that only you see: movable, with adjustable duration, opacity and text size, a recent history and an immediate pause.
- **Whole, hand-written lines**, never assembled from random fragments: **1,152 intentions** in the base database, with **2,453 variants per language** (Italian and English). Each intention says the same thing in different words; variants are never repeated back to back. They are split into four voices: *character* 466, *inner voice* 345, *narrator* 156, *NPC* 185. They are organised by event, register (ancient, epic, tragic, intimate, everyday, ironic, ceremonial) and conditions (race, class, zone, time of day, target, group, instance, memories, relationships, interlocutor, place...).
- **Intensity and depth.** Intensity (0–100) says how often the narrator speaks; the style depth (*Natural*, *Literary*, *Elevated*) makes lines written for that tone more likely: for the key moments (arriving in a forest, returning, death, level-up, victory, greetings) there are variants written for all three. Silence is a valid outcome: no cascades of messages, one intervention per moment.
- **Chat Gateway.** If you want, the character's lines become **chat proposals** that you confirm, edit or discard. See [Privacy and chat](#privacy-and-chat).
- **Personality** (Character Soul, optional). Give the character a personality made of intensities from 0 to 100 that can coexist (cynical or idealist, dreamer or pragmatic, pessimist or optimist, altruism, stoicism, ambition, spirituality, patriotism, curiosity, vengefulness), irony, an inner voice and topics to avoid, starting from a ready-made archetype if you like: lines that fit come up more often, and lines that contradict what you ruled out never do. With no choices the narrator stays neutral. With [Total RP 3](#total-rp-3) and a separate consent it can start from your profile's traits. See `/au soul`.
- **Emotions** (optional, on by default). The character has a mood that events change and time heals: worried after a death, serene at an inn, nostalgic on a return. The personality shapes it, and the lines follow it without naming it: no cheerful greeting to a place where you just died. `/au emotion off` switches it off. See `/au emotion`.
- **Memory and journal.** Remembers the character's significant moments (the first time in a zone, a return, a visit that ended badly, deaths, levels) and finds them again in its lines: **only if the memory really exists**. The **journal** (`/au journal`) shows them, lets you delete them or make them permanent, and exports them as text you can copy.
- **Relationships.** Remembers **how you stand with people**: six independent axes (familiarity, trust, respect, affection, fear, loyalty; attraction is optional and off) give a label (stranger, acquaintance, friend, comrade in arms, respected rival, enemy...) and an overall disposition. **NPCs** are worked out automatically (dialogs, quests, merchants, flights, innkeepers); **players** are chosen by you: the addon suggests, and registers no one without your click. The narrator changes tone with the bond, from formal to intimate. For each player the addon keeps **what you chose** (axes, label, feelings in words such as trust or resentment, note, tags) apart from **what it observed** (how many times you met, of which kind, where and when: never what was said), never changes the first by itself, and may recognise a known player now and then. Two options, both **off by default**: recognising known players by **nameplate or mouseover** (this session only, never adds or saves anyone) and a **list shared by your characters** (a warning first; per character stays the default). See `/au relationships`.
- **Interlocutor and place.** Lines change with **who is in front of you** (role, character, race, class, recent actions: a quest just given, a duel, an emote) and **where you are** (zone, friendly or enemy capital, territory, dungeon, raid, battleground, arena, boss encounters). The rhythm adapts: calmer in raids and against bosses, short lines in battlegrounds. See `/au who` and `/au place`.
- **The world around you.** Notices what the game says about the world: the **weather** (rain, snow, a storm, fog), **dawn and dusk**, a new **subzone** and some named places (an inn, a village, a graveyard), your **quests** (a step finished, a quest handed in, more warmly after many tries), a change of **reputation**, **resting** in an inn and the start and end of a **flight**. If the game does not tell the addon something, it says nothing about it; no quest text is ever read or stored. These readings have not been tried in the real client yet.
- **NPC Alive** (ambient dialogues). When you open an NPC's vendor, flight or training window, or talk to a known innkeeper, a small button appears; pressing it (or the dedicated key) opens a separate window labeled **"addon ambient dialogue"**, with a line from the NPC and one to three neutral answers. It is a **simulated** dialogue: it never appears in chat, never touches gossip, quests or vendors, and changes nothing in the game; your choices only leave a flag in the journal. The NPC speaks according to their character (gruff, jovial...) and whether you know them. There are five archetypes (innkeeper, merchant, guard, flight master, trainer) and 169 lines. See `/au talk` (with `test` to try the window without a real NPC).
- **Story Arcs** (personal stories). Four small stories of your character: going back to where the adventure began, a face you meet more and more often, a fall and the return, the journey between capitals. They are tellings, **not quests**: no rewards, no effect on the game. They begin only from a real event, at most two at a time, the choices that matter are yours, and you can suspend, skip or disable them any time (`/au stories`, the journal's "Stories" tab). At the end they leave a memory in the journal.
- A skippable **first-run wizard**, and a **diagnostic** (`/au debug`) that shows what your client lets the addon do.
- Extends through **phrase packs** shipped as separate addons (also dialogues, arcs, places and NPCs), without touching the engine, with a **validator** (`/au validate`) that checks the texts.

**What it does not do**

- It does not connect to the internet: no external service, no AI, no telemetry.
- It does not write to public chat on its own with the default settings, and never without a player action (except `auto` mode, which you choose with a confirmation).
- It does not generate text: it picks among lines that already exist.
- It does not read the combat log and does not base decisions on values the client hides from addons.
- It does not save chat content, nor the text of whispers.
- It does not invent quests or rewards: stories and dialogues are the addon's own tellings, not server quests.

**Planned, not yet present** (see [ROADMAP.md](ROADMAP.md)): social play between players (M4: addon-to-addon messages, only with explicit consent), audio, content up to 1,000 intentions and the 1.0 release (M5). In the settings the *Social* and *Audio* modules can already be seen, but they are placeholders (marked `*`): they do nothing.

## Requirements

- **World of Warcraft: Forever**, `## Interface: 16001`. The reference build is 1.60.1.70658 (English client).
- No mandatory dependency.
- Optional: **Total RP 3**.

Other clients (retail, Classic Era, etc.) are neither supported nor tested. The addon checks the APIs it uses, so a different client should at worst disable features, but that is not guaranteed.

## Installation

There are no packaged releases yet (no release assets, no distribution pages). For now:

1. Download the repository (`Code` → `Download ZIP`, or `git clone https://github.com/Finland6738/azeroth-unspoken`).
2. Copy **every folder whose name starts with `AzerothUnspoken`** into `World of Warcraft\_forever_\Interface\AddOns\`: the addon (`AzerothUnspoken`), the lines of each language (`AzerothUnspoken_enUS`, `AzerothUnspoken_itIT`) and of each continent (`AzerothUnspoken_Kalimdor`, `AzerothUnspoken_EasternKingdoms` and their `_enUS`/`_itIT` folders). The addon loads by itself only the language you chose and only the continent you are on, outside combat: you never pick a folder.
3. Optional: `AzerothUnspoken_Example`, a sample phrase pack (a line for fishing and a few tied to places), and `AzerothUnspoken_Versi`, a prototype pack of literary forms: inscriptions, remembered verses, inn rhymes, road songs, a hymn and a lament, only in your private narrator.
4. On the character selection screen open **AddOns** and make sure every *Azeroth Unspoken* entry is ticked (the language and continent folders are marked *Load on demand*: that is expected).

The `Tests`, `docs` and `archive` folders and the rest of the repository are not needed by the game: do not copy them.

To update, delete every `AzerothUnspoken*` folder and copy the new ones (a new version can add folders). Changing the language of the lines needs a reload of the interface, which the addon offers with a button. Your settings live in `WTF\Account\<account>\SavedVariables\AzerothUnspokenDB.lua` and, per character, in `AzerothUnspokenCharacterDB.lua`: they are left untouched.

## First launch

A few seconds after the game has loaded (and never in combat) a short **guide** appears, with 7 steps (8 if Total RP 3 is present): a welcome with a live sample of the narrator and the language, kind of experience, intensity, style, modules, Total RP 3, what may reach chat, and a last page with the keys, the speak button and where the settings are. Every step can be skipped, and it reopens with `/au wizard`.

With the default settings the addon is **silent towards other players**: lines only appear in the narrator box, at the bottom centre of the screen.

Type `/au` for the list of commands and `/au debug` to check that everything is in order. If something does not work, `/au debug full` prints one line per client capability.

> The addon is **English first**: a new install starts in English, for both the interface and the lines, and Italian is the second language (choose it in the wizard or with `/au language it`; an Italian choice already saved is kept). **Command names and their arguments are always English**, in every interface language: the language changes the descriptions and messages, never the words you type. If you type an Italian word such as `/au diario`, the addon tells you the English command (`/au journal`).

## Commands

The addon answers to `/au` and `/unspoken`. Each command has one English name; the only extra spellings are the short forms `/au lang` and `/au rel`, and the channel names `s`, `e`, `p`, `g`, `i`.

| Command | Effect |
|---|---|
| `/au help [group]` | the groups of commands (`/au` alone does the same); `/au help all` lists every command |
| `/au on` · `/au off` | turns automatic lines on or off |
| `/au pause` | immediate narrator pause, for the session only; again to resume |
| `/au language [it\|en]` | language of lines and interface (short form `/au lang`); the default is English |
| `/au intensity <0-100>` | how often the narrator speaks: 0 = silent for spontaneous events, 50 = balanced, 100 = intense |
| `/au depth natural\|literary\|elevated` | style depth: lines written for that tone weigh more (the others stay possible) |
| `/au mode private\|preview\|confirm\|auto` | what may reach chat; default: `private`. `auto` does not turn on with the first command: it shows a warning and must be repeated after a couple of seconds (within 30) |
| `/au channel auto\|say\|emote\|party\|raid\|guild\|instance` | default channel for proposals (short forms `s`, `e`, `p`, `g`, `i`) |
| `/au speak` | same as the "speak" key: confirms the pending proposal, or makes a new one |
| `/au cancel` | discards the pending proposal |
| `/au another` | another line in place of the pending one, or a new proposal (also the "Another" button of the box) |
| `/au copy` | copies the proposal into the chat box (you send it with Enter): the "To chat" button |
| `/au narrator [history\|reset\|clear]` | no argument shows a sample line; `history` opens recent lines, `reset` moves the box back to the centre, `clear` empties the history |
| `/au greet` · `farewell` · `toast` · `muse` · `threat` · `battlecry` · `pray` · `victory` · `thanks` · `jest` | asks for a line for that moment. It appears as a proposal or in the narrator, depending on the chat mode |
| `/au cast <spell>` | a line for a spell, handy in macros |
| `/au event <name>` | fires an event by name (including ones defined by a pack) |
| `/au test <event>` | preview in the local chat (sends nothing) |
| `/au chance [<event> <0-100>]` | probability of an event; with no arguments lists the values |
| `/au cooldown <seconds>` | minimum pause between two automatic lines |
| `/au ignore <spell>` | a spell no longer produces lines; with no argument lists the ignored ones |
| `/au button [on/off/reset/editor on/off]` | shows, hides or resets the "speak" button; `editor on`: a click opens the editor instead of sending |
| `/au soul` | opens the character personality window. Also `list`, `neutral`, `archetype <id>`, `trp3 on\|off`, `<trait> <0-100>` (`idealism`, `concreteness`, `optimism`, `altruism`, `stoicism`, `ambition`, `spirituality`, `patriotism`, `curiosity`, `vengefulness`, `irony`; `voice`; `-` removes the choice) and `avoid <topic>` |
| `/au emotion` | the character's mood; `on`, `off`, `reset` |
| `/au journal` | opens the character journal (memories, places, flags, session). Also `list`, `places`, `flag <name>`, `export`, `pin <n>`, `delete <n>`, `forget <place>` and `reset [all\|memories\|ordinary\|places\|flags]` (asks for confirmation) |
| `/au stories` | the personal stories: `list`, `journal`, `choose <arc> <option>`, `start`, `suspend`, `resume`, `skip`, `disable`, `enable` (one arc or `all`), `max <1\|2>`, `on`, `off`, `status` |
| `/au relationships` | opens the relationships window (sortable, filterable table, suggested people, detail with sliders, notes and tags); short form `/au rel`. Also `list`, `people`, `add <name>`, `dismiss <name>`, `remove <name\|npc:ID>`, `detail <name>`, `note`, `tags`, `label`, `set <name> <axis> <value>`, `feeling <name> <feeling> [preset]`, `forget <name>`, `export`, `auto on\|off`, `attraction on\|off`, `proximity on\|off`, `share [on\|off\|all\|copy]`, `scope <name> shared\|character`, `reset` |
| `/au place` | where you are according to the addon: zone, uiMapID, territory, tags, instance, encounter, group role (used to verify place data in game) |
| `/au who` | who is in front of you according to the addon (role, character, race, recent actions, bond and the source of each datum). Also `trp3 on\|off` (consent to read the public Total RP 3 profile **of others**) and `trait <trait> <value>` to correct an interlocutor trait by hand |
| `/au talk` | the ambient dialogue with the current NPC, or opens the offer if there is a valid interaction. Also `test` (a test NPC, leaves no trace), `close`, `role <role>` (you say what role the NPC has), `offer on\|off` (the automatic button), `status` |
| `/au packs` · `/au pack <id> on\|off` | lists, or switches phrase packs on and off |
| `/au validate [full\|<pack>]` | the text validator: duplicate ids, missing languages, placeholders, conditions, lengths, tags, scripts and arcs (`full` shows every problem) |
| `/au stats` | how many lines are available, per event |
| `/au memory` | resets the memory of **used lines** (the ones already said, to avoid repeating them; no confirmation). It does not touch the journal's memories: for those use `/au journal reset` |
| `/au options` | opens the settings panel |
| `/au wizard` | reopens the wizard |
| `/au debug [full\|trace]` | diagnostics: client capabilities, latest events, trapped errors; `trace` prints every recognised event, for the session |
| `/au prof [reset\|copy]` | profiling of the session: timings of the line picker, memory, how often the narrator spoke or stayed silent and why; `copy` opens a box to copy it |
| `/au probe [reset\|stop\|copy]` | tries the client APIs the next features need and prints AVAILABLE / MISSING / RESTRICTED with a sample; counts their events for the session |

**Key bindings.** Under *Options → Keybindings → AddOns → Azeroth Unspoken* you can bind four keys: *Confirm and speak the proposed line (or improvise)* (`AZEROTHUNSPOKEN_SPEAK`), *Another line* (`AZEROTHUNSPOKEN_REROLL`), *Pause the narrator immediately* (`AZEROTHUNSPOKEN_PAUSE`) and *Ambient dialogue with the NPC* (`AZEROTHUNSPOKEN_NPC`: opens or closes the dialogue). None has a default key.

## Settings

The panel opens with `/au options` (it is also registered among the game's addon options; that registration has not yet been verified in the real client). It contains:

- **Language** of lines and interface, independent of the client language.
- **Intensity** (0–100) and **style depth** (Natural, Literary, Elevated).
- **Pause between lines** for automatic lines (45 seconds by default).
- **Chat**: the mode and the default channel.
- **Narrator box**: text duration, opacity, size, locked position, history, test.
- **Modules**: Personal, World, NPC dialogues, Memory, Emotions, Relationships, Stories, Social, Chat proposals, Audio (those not yet active, *Social* and *Audio*, are marked `*`), plus the presets *Complete*, *Personal RPG*, *Narrative world* and *Social RP*.
- The "speak" button, the name from Total RP 3 and, with a separate consent, reading other players' public profiles (*Read others' Total RP 3*), the character's personality (`/au soul`), the immediate pause, the wizard.
- Some choices are made **by command only**: the relationship axes and people (`/au relationships`), attraction and automatic registration of players (`/au relationships attraction|auto`), the automatic NPC dialogue offer (`/au talk offer`) and the maximum number of active stories (`/au stories max`).

## Privacy and chat

- **Everything stays on your computer.** The addon opens no connections, downloads nothing and sends no data. There is no active social module either (it is planned, with explicit consent; today the Social module is only a placeholder and does nothing).
- **Chat content is not saved**, and neither are whispers: the addon never keeps the text of a message. Of an emote aimed at you it remembers, for the session only, *that* it arrived (the text is discarded), and of a whisper you sent only the recipient's name, in memory, to suggest them as a person to add.
- **What is saved.** Per account: the settings and, **only if you turn the shared list on** (`/au relationships share on`), the choices you made about players (`AzerothUnspokenDB`, `sharedPlayers`: your choices only, no observations). Per character (`AzerothUnspokenCharacterDB`): the memory of used lines, the chosen personality, the slow and strong part of the mood (numbers and a time only, cleared when emotions are off), the journal's **memories** (places, significant moments, flags), the **relationships** (the NPCs you met and, **only the players you chose yourself**, their name with the *personal* notes, tags and labels you write) and the state of the **stories**. There is no chat text, no dialogue line, and no data about a player you did not add. The journal and the relationships can be erased at any time (`/au journal reset`, `/au relationships reset`). The narrator history lives in memory only and disappears with the session.
- **Relationships.** A player enters the relationships list **only through your click or command**; the "register people I meet automatically" option exists but is off by default. The addon *suggests* (group members, trades, people you replied to), it does not register. Meetings (group, trade, duel, invite, an emote aimed at you, the target) are counted only for people already in the list, as a kind, a place and a time, never any text; **Forget observations** erases them and keeps the person.
- **Others' Total RP 3, only with consent.** The public data (race, class and personality traits) of other players' Total RP 3 profiles is read **only** if you turn on `/au who trp3 on` (or the option in the settings), off by default; never notes, history or private fields, and it is not saved.
- **Nothing reaches chat without a player action.** The *Chat Gateway* has four modes:

| Mode | What happens |
|---|---|
| `private` (default; Italian: privato) | lines stay in the narrator, never in chat |
| `preview` (Italian: anteprima) | the character's lines become proposals; the "speak" key opens the editor and you send with Enter |
| `confirm` (Italian: conferma) | the proposal is ready and a click, a key or `/au speak` sends it; you can edit it, change channel or discard it |
| `auto` | **only if you choose it, with a warning and a confirmation**: emotes go out by themselves and, inside instances, `/say`; everything else stays a proposal |

- The *inner* and *NPC* voices never go to chat. Neither do the ambient dialogues and the personal stories: they stay in the narrator and in their own window.
- There are rate limits (at least 4 seconds between two sends, at most 6 per minute, 2 automatic), a 255-byte cap per message, and nothing is sent while the client's chat lockdown is active.
- The rule "emotes by themselves, `/say` by itself only in instances" is a cautious assumption about the client's behaviour that has **not yet been measured in game**.

The decisions behind this behavior are in the [ADRs](docs/adr/README.md), notably [0002](docs/adr/0002-fully-offline-no-ai.md) and [0003](docs/adr/0003-private-narrator-and-chat-gateway.md).

## Total RP 3

The integration is **optional**: the addon works at 100% without it. If Total RP 3 is present, the addon can read three things, each with its own switch:

1. **Your profile's first name** (*Name from Total RP 3* in the settings, on by default) to use it in lines.
2. **The public personality traits of your profile** (`/au soul trp3 on`, off by default) for the character's personality; a choice you make by hand always comes first.
3. **The public data of other players** (`/au who trp3 on`, or *Read others' Total RP 3* in the settings, off by default; point 1 must be on too): only race, class and personality traits, so the narrator can react to whoever is in front of you. Never notes, history or private fields, and nothing it reads is saved.

The addon writes nothing to Total RP 3. If Total RP 3's APIs are missing or change, the integration switches itself off. See [ADR 0004](docs/adr/0004-total-rp-3-optional-with-adapter.md) and [ADR 0016](docs/adr/0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md).

## Phrase packs

Lines do not live in the engine: they live in packs. The base ones are in `AzerothUnspoken/Data/`; others are added as separate addons that depend on `AzerothUnspoken` (see `AzerothUnspoken_Example`). A pack can add lines, narrative frames, vocabulary, translations, new languages, new events, places, NPCs, dialogues and stories.

The full guide is [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md): it describes data schema v2 (rules separate from texts, variants, voices, registers, depth, personality tags, memory conditions, relationships, interlocutor and place), the ambient dialogues and the personal stories. **The guide's examples are exercised by the tests** as external packs. To write good lines, also read [CONTRIBUTING.md](CONTRIBUTING.md).

## Project status

| What | Status |
|---|---|
| **M0 Foundations**: architecture, compatibility, diagnostics (S1); private narrator, Chat Gateway, settings, wizard (S2) | **done**, tested outside the game only |
| G1 In-game test ([checklist](docs/G1_checklist.md)) | **to do**, postponed: needs the owner with the real client |
| **M1 Narrative Alpha**: data schema v2 and validator (S3), Narrative Director (S4), personality and Total RP 3 (S5), memory and journal (S6), relationships (S6b), interlocutor and place (S6c), Alpha content (S7) | **done**, tested outside the game only |
| G2 In-game test: arriving in the forest and returning (steps 65–68) | **to do** |
| **M2 Living NPC**: NPC Alive, ambient dialogues (S8) | **done**, not tried in game |
| G3 In-game test: the innkeeper (steps 75–83) | **to do** |
| **M3 Personal Stories**: Story Arcs (S9) | **done**, not tried in game (steps 84–92) |
| **R0–R4 and L0 Realism**: measurements and API probe (R0), language and regional packs (R1), the archive (R2), selection variety, the world the client describes and monologues (R3a–R3c), emotions and player relationships (R4, R4b), literary verses (L0) | **done**, not tried in game (the R sections of the checklist, also in [English](docs/G1_checklist.en.md)) |
| M4 Social RP (S10, G4 test with two clients), M5 release 1.0 (S11–S12) | to do |

**What is not verified.** Everything that needs the real client: the client's events and APIs (gossip, vendors, maps, instances, encounters), the place and NPC numbers (`uiMapID`, `instanceID`, `npcID`: they come from the Classic Era numbering, issue [#36](https://github.com/Finland6738/azeroth-unspoken/issues/36)), the real look of the windows, saving of the SavedVariables, the Total RP 3 integration and, above all, **the tone, rhythm and frequency** of the lines: the tests check structure, counts and rules, not literary quality. The in-game tests (G1–G4) are in the [checklist](docs/G1_checklist.md); problems found will become issues labelled `in-game`.

The detailed plan, the steps and notes for developers are in [ROADMAP.md](ROADMAP.md). Notable changes per version are in [CHANGELOG.md](CHANGELOG.md). Known problems and ideas are in the [issues](https://github.com/Finland6738/azeroth-unspoken/issues).

## Development and tests

Repository layout:

| Path | Contents |
|---|---|
| `AzerothUnspoken/` | the addon (`Core/`, `Engine/`, `Systems/`, `Integration/`, `UI/`, `Data/`) |
| `AzerothUnspoken_enUS/`, `AzerothUnspoken_itIT/` | language packs: the texts of the lines in one language, loaded only for the chosen language |
| `AzerothUnspoken_Kalimdor*/`, `AzerothUnspoken_EasternKingdoms*/` | regional packs: the lines bound to one continent (rules, and texts per language), loaded only there |
| `AzerothUnspoken_Example/` | sample phrase pack |
| `AzerothUnspoken_Versi/` | verses pack: a prototype of literary forms (inscriptions, songs, rhymes) |
| `Tests/` | tests that run outside the game |
| `docs/` | specification (GDD), architecture, ADRs, technical references, test checklist |
| `archive/VociDiAzeroth*/` | the original prototype, kept for reference only |
| `ROADMAP.md` | milestones, steps and progress |

**Tests outside the game.** They use [lupa](https://github.com/scoder/lupa), i.e. Lua 5.1 like WoW, and a simulated client (`Tests/MockWoWAPI.lua`). From the project root:

```bash
python -m venv .venv
.venv/Scripts/python -m pip install lupa
.venv/Scripts/python -I -X utf8 Tests/run_tests.py AzerothUnspoken
```

On Linux and macOS the path is `.venv/bin/python`. The command exits with code 1 if a check fails. The `.venv/` folder is local and stays out of the repository.

**Editor.** The project is set up for JetBrains WebStorm with the **EmmyLua** and **WoW Lua Language Server** plugins. `.luarc.json` sets Lua 5.1, the addon's globals and the folders to ignore; WoW's APIs come from the plugin and are not duplicated in the project. Public APIs and data structures are annotated with EmmyLua.

**Forever API dump.** To find out whether a function or event exists in the client we consult the dump in [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons), cloned next to the project (`..\WoW-Addons`) and **never copied** into our repository. See [docs/REFERENCES.md](docs/REFERENCES.md) and [ADR 0010](docs/adr/0010-forever-api-dump-as-reference.md).

To contribute (lines, packs, code, issues) read [CONTRIBUTING.md](CONTRIBUTING.md).

## Documentation

**Player's manual:** the [wiki](https://github.com/Finland6738/azeroth-unspoken/wiki) is a complete user guide (installation, every command and setting, each feature, privacy, troubleshooting, FAQ). Its source is [docs/wiki/](docs/wiki/Home.md).

The full index is [docs/README.md](docs/README.md). Starting points:

- [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md): modules, the flow of an event, data, extension points.
- [docs/adr/README.md](docs/adr/README.md): the project decisions, one per file.
- [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md): the product specification, in Italian (the GDD still calls the product "Immersion Director").
- [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md): how to write a pack.
- [docs/G1_checklist.md](docs/G1_checklist.md): the in-game test checklist, in Italian.

## Support and feedback

- **Bugs and feature requests:** open an issue with one of the [issue forms](https://github.com/Finland6738/azeroth-unspoken/issues/new/choose). The **Bug report** form is for something that does not work as expected (it asks for the addon version, the game client build and language, and what happened); the **Feature request** form is for suggesting a new feature or an improvement, described from the point of view of your roleplay. Do not paste other players' names, whispers, chat logs, account names or folder paths from your PC into an issue: use placeholders such as `<player>` or `<account>`.
- **Feedback, ideas and questions:** use the [Feedback category of GitHub Discussions](https://github.com/Finland6738/azeroth-unspoken/discussions/categories/feedback), for general feedback, open conversations before a formal request, or when you are not sure it is a bug.
- Please write issues and feedback in **English** if you can; Italian is welcome too.

## Support the project

Azeroth Unspoken is free and will stay free: every feature is available to everyone. If you enjoy it and want to support its development, you can buy the author a coffee on [Ko-fi](https://ko-fi.com/finland6738). Donations are entirely optional, they unlock nothing, and the addon never asks for them in the game.

## License

Azeroth Unspoken is free, and its code is open. Its phrases are protected. The full terms are in [LICENSING.md](LICENSING.md); the reasons are in [ADR 0034](docs/adr/0034-licensing-gpl-code-reserved-phrases.md).

- **Code:** [GPL-3.0-or-later](LICENSE). You may study, change and share it; shared versions stay open under the same licence. Phrase packs that use only the public pack interface may have any licence.
- **Phrases and narrative data:** [all rights reserved](LICENSE-CONTENT.md). You may play with them, quote short extracts, show them in screenshots, videos and streams, and propose corrections and translations. Copying them into other works, re-uploading them or using them to train AI systems needs written permission.
- **Example pack and pack guide:** [MIT](AzerothUnspoken_Example/LICENSE), free to copy for your own pack.
- **Documentation:** CC BY 4.0.
- **The name "Azeroth Unspoken"** is not licensed: a modified version shared with others needs another name.

## Credits

- Concept and development: Finland6738.
- Technical references consulted (not copied): [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons) for the Forever API dump; the [Warcraft Wiki](https://warcraft.wiki.gg/wiki/World_of_Warcraft_API) for general API documentation. Full list in [docs/REFERENCES.md](docs/REFERENCES.md).
- [Total RP 3](https://totalrp3.info/) belongs to its authors; Azeroth Unspoken only uses it as an optional integration.
- If [ForeverDB.net](https://foreverdb.net/) data is ever used to prepare local registries, it will be credited here with a visible link.

*World of Warcraft® is a trademark of Blizzard Entertainment, Inc. Azeroth Unspoken is an independent fan project, not affiliated with or endorsed by Blizzard. The lines are original and do not reproduce in-game text.*
