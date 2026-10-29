# Azeroth Unspoken

*An immersive roleplay companion for World of Warcraft*

> 🇮🇹 [Versione italiana](README.md)

A distinctive, mysterious narrative companion for World of Warcraft that calls back the thoughts and stories left unspoken.

Azeroth Unspoken is an addon for **World of Warcraft: Forever** (Interface `16001`). It bundles a local narrative engine and a database of hand-written lines, in Italian and English, that react to places, events and what your character does: a new zone, a fight, a serious wound, a level gained, a greeting.

> **Status: under development (version 0.1.0 in the `.toc`); features of milestones M0–M3 are written.** The code has only been exercised outside the game, against a simulated client. **No test in the real client has been done yet** (the [G1](docs/G1_checklist.md) checklist, in Italian: tests G1, G2 and G3, 92 steps in all), so expect surprises. See [Project status](#project-status).
>
> Most of the documentation under `docs/` is written in Italian. This file is the English entry point.

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
- [License](#license)
- [Credits](#credits)

## What it does and does not do

**What it does (today, on `main`)**

- **Private narrator.** Listens to a few game events (entering a zone, combat start and end, low health, death and revival, level-up, spells cast, greetings and meetings) and, with a probability and a pause scaled by the intensity you choose, shows you a line that fits the moment in a **box** that only you see: movable, with adjustable duration, opacity and text size, a recent history and an immediate pause.
- **Whole, hand-written lines**, never assembled from random fragments: **1,005 intentions** in the base database, with **2,109 variants per language** (Italian and English). Each intention says the same thing in different words; variants are never repeated back to back. They are split into four voices: *character* 444, *inner voice* 252, *narrator* 124, *NPC* 185. They are organised by event, register (ancient, epic, tragic, intimate, everyday, ironic, ceremonial) and conditions (race, class, zone, time of day, target, group, instance, memories, relationships, interlocutor, place...).
- **Intensity and depth.** Intensity (0–100) says how often the narrator speaks; the style depth (*Natural*, *Literary*, *Elevated*) makes lines written for that tone more likely: for the key moments (arriving in a forest, returning, death, level-up, victory, greetings) there are variants written for all three. Silence is a valid outcome: no cascades of messages, one intervention per moment.
- **Chat Gateway.** If you want, the character's lines become **chat proposals** that you confirm, edit or discard. See [Privacy and chat](#privacy-and-chat).
- **Personality** (Character Soul, optional). Give the character a personality (temperament, morality, curiosity, faith, motivation, irony, inner voice, topics to avoid, or a ready-made archetype): lines that fit come up more often, and lines that contradict what you ruled out never do. With no choices the narrator stays neutral. With [Total RP 3](#total-rp-3) and a separate consent it can start from your profile's traits. See `/au soul`.
- **Memory and journal.** Remembers the character's significant moments (the first time in a zone, a return, a visit that ended badly, deaths, levels) and finds them again in its lines: **only if the memory really exists**. The **journal** (`/au journal`) shows them, lets you delete them or make them permanent, and exports them as text you can copy.
- **Relationships.** Remembers **how you stand with people**: six independent axes (familiarity, trust, respect, affection, fear, loyalty; attraction is optional and off) give a label (stranger, acquaintance, friend, comrade in arms, respected rival, enemy...) and an overall disposition. **NPCs** are worked out automatically (dialogs, quests, merchants, flights, innkeepers); **players** are chosen by you: the addon suggests, and registers no one without your click. The narrator changes tone with the bond, from formal to intimate. See `/au relations`.
- **Interlocutor and place.** Lines change with **who is in front of you** (role, character, race, class, recent actions: a quest just given, a duel, an emote) and **where you are** (zone, friendly or enemy capital, territory, dungeon, raid, battleground, arena, boss encounters). The rhythm adapts: calmer in raids and against bosses, short lines in battlegrounds. See `/au who` and `/au place`.
- **NPC Alive** (ambient dialogues). When you open an NPC's vendor, flight or training window, or talk to a known innkeeper, a small button appears; pressing it (or the dedicated key) opens a separate window labeled **"addon ambient dialogue"**, with a line from the NPC and one to three neutral answers. It is a **simulated** dialogue: it never appears in chat, never touches gossip, quests or vendors, and changes nothing in the game; your choices only leave a flag in the journal. The NPC speaks according to their character (gruff, jovial...) and whether you know them. There are five archetypes (innkeeper, merchant, guard, flight master, trainer) and 169 lines. See `/au npc` (with `test` to try the window without a real NPC).
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

**Planned, not yet present** (see [ROADMAP.md](ROADMAP.md), in Italian): social play between players (M4: addon-to-addon messages, only with explicit consent), audio, content up to 1,000 intentions and the 1.0 release (M5). In the settings the *Social* and *Audio* modules can already be seen, but they are placeholders (marked `*`): they do nothing.

## Requirements

- **World of Warcraft: Forever**, `## Interface: 16001`. The reference build is 1.60.1.70658 (English client).
- No mandatory dependency.
- Optional: **Total RP 3**.

Other clients (retail, Classic Era, etc.) are neither supported nor tested. The addon checks the APIs it uses, so a different client should at worst disable features, but that is not guaranteed.

## Installation

There are no packaged releases yet (no release assets, no distribution pages). For now:

1. Download the repository (`Code` → `Download ZIP`, or `git clone https://github.com/Finland6738/azeroth-unspoken`).
2. Copy the `AzerothUnspoken` folder into `World of Warcraft\_forever_\Interface\AddOns\`.
3. Optional: also copy `AzerothUnspoken_Example`, a sample phrase pack (a line for fishing and a few tied to places).
4. On the character selection screen open **AddOns** and make sure *Azeroth Unspoken* is ticked.

The `Tests`, `docs` and `archive` folders and the rest of the repository are not needed by the game: do not copy them.

To update, replace the `AzerothUnspoken` folder with the new one. Your settings live in `WTF\Account\<account>\SavedVariables\AzerothUnspokenDB.lua` and, per character, in `AzerothUnspokenCharacterDB.lua`: they are left untouched.

## First launch

A few seconds after you enter the game a **wizard** appears, with 6 steps (7 if Total RP 3 is present): language, kind of experience, intensity, style, modules, Total RP 3, and chat with a sample line. You can skip it at any time and reopen it with `/au benvenuto`.

With the default settings the addon is **silent towards other players**: lines only appear in the narrator box, at the bottom centre of the screen.

Type `/au` for the list of commands and `/au debug` to check that everything is in order. If something does not work, `/au debug full` prints one line per client capability.

> The interface (including command names) is available in Italian and English. Command names are Italian first, with English aliases for almost all of them, shown in parentheses below.

## Commands

The addon answers to `/au` and `/unspoken`.

| Command | Effect |
|---|---|
| `/au` · `/au aiuto` (`help`) | list of commands |
| `/au on` · `/au off` | turns automatic lines on or off |
| `/au pausa` (`pause`) | immediate narrator pause, for the session only; again to resume |
| `/au lingua [it\|en]` (`language`) | language of lines and interface |
| `/au intensita <0-100>` (`intensity`) | how often the narrator speaks: 0 = silent for spontaneous events, 50 = balanced, 100 = intense |
| `/au profondita naturale\|letterario\|elevato` (`depth`) | style depth: lines written for that tone weigh more (the others stay possible) |
| `/au chat privato\|anteprima\|conferma\|auto` (`modo`, `mode`) | what may reach chat; default: `privato` (private). English aliases: `private`, `preview`, `confirm`, `auto`. `auto` does not turn on with the first command: it shows a warning and must be repeated within 10 seconds |
| `/au canale auto\|say\|emote\|gruppo\|incursione\|gilda\|istanza` (`channel`) | default channel for proposals (`party`, `raid`, `guild`, `instance` also work) |
| `/au dire` (`speak`, `invia`, `send`) | same as the "speak" key: confirms the pending proposal, or makes a new one |
| `/au annulla` (`scarta`, `cancel`, `discard`) | discards the pending proposal |
| `/au copia` (`copy`) | copies the proposal into the chat box (you send it with Enter): the "To chat" button |
| `/au narratore [cronologia\|reset\|pulisci]` (`narrator`) | no argument shows a sample line; `cronologia` (`history`) opens recent lines, `reset` moves the box back to the centre, `pulisci` (`clear`) empties the history |
| `/au saluto` · `addio` · `brindisi` · `pensiero` · `minaccia` · `grido` · `preghiera` · `vittoria` · `ringrazia` · `scherzo` | asks for a line for that moment (`greet`, `farewell`, `toast`, `muse`, `threat`, `battlecry`, `pray`, `victory`, `thanks`, `jest`). It appears as a proposal or in the narrator, depending on the chat mode |
| `/au incanta <spell>` (`cast`) | a line for a spell, handy in macros |
| `/au evento <name>` (`event`) | fires an event by name (including ones defined by a pack) |
| `/au prova <event>` (`test`) | preview in the local chat (sends nothing) |
| `/au prob [<event> <0-100>]` (`chance`) | probability of an event; with no arguments lists the values |
| `/au cooldown <seconds>` | minimum pause between two automatic lines |
| `/au ignora <spell>` (`ignore`) | a spell no longer produces lines; with no argument lists the ignored ones |
| `/au pulsante` (`button`) | shows or hides the "speak" button |
| `/au anima` (`soul`, `personalita`, `profilo`) | opens the character personality window. Also `list`, `neutral`, `archetype <id>`, `trp3 on\|off`, `<trait> <value>` (`temperament`, `morality`, `curiosity`, `faith`, `motivation`, `irony`, `voice`; `-` removes the choice) and `avoid <topic>` |
| `/au journal` (`diary`, `diario`) | opens the character journal (memories, places, flags, session). Also `list`, `places`, `flag <name>`, `export`, `pin <n>`, `delete <n>`, `forget <place>` and `reset [all\|memories\|ordinary\|places\|flags]` (asks for confirmation) |
| `/au stories` (`storie`, `arcs`) | the personal stories: `list`, `journal`, `choose <arc> <option>`, `start`, `suspend`, `resume`, `skip`, `disable`, `enable` (one arc or `all`), `max <1\|2>`, `on`, `off`, `status` |
| `/au relations` (`relationships`, `relazioni`, `relazione`, `bonds`) | opens the relationships window (sortable, filterable table, suggested people, detail with sliders, notes and tags). Also `list`, `people`, `add <name>`, `dismiss <name>`, `remove <name\|npc:ID>`, `detail <name>`, `note`, `tags`, `label`, `set <name> <axis> <value>`, `export`, `auto on\|off`, `attraction on\|off`, `reset` |
| `/au place` (`luogo`, `dove`, `where`) | where you are according to the addon: zone, uiMapID, territory, tags, instance, encounter, group role (used to verify place data in game) |
| `/au who` (`chi`, `interlocutore`, `other`) | who is in front of you according to the addon (role, character, race, recent actions, bond and the source of each datum). Also `trp3 on\|off` (consent to read the public Total RP 3 profile **of others**) and `trait <trait> <value>` (`tratto`) to correct an interlocutor trait by hand |
| `/au npc` (`dialogo`, `talk`, `dialogue`) | the ambient dialogue with the current NPC, or opens the offer if there is a valid interaction. Also `test` (`prova`: a test NPC, leaves no trace), `close` (`chiudi`), `role <role>` (`ruolo`: you say what role the NPC has), `offer on\|off` (`offerta`: the automatic button), `status` (`stato`) |
| `/au another` (`altra`, `reroll`) | another line in place of the pending one, or a new proposal (also the "Another" button of the box) |
| `/au packs` · `/au pacchetto <id> on\|off` (`pack`) | lists, or switches phrase packs on and off |
| `/au validate [all\|<pack>]` (`valida`, `controlla`) | the text validator: duplicate ids, missing languages, placeholders, conditions, lengths, tags, scripts and arcs (`tutto` for all) |
| `/au info` (`stats`) | how many lines are available, per event |
| `/au memoria` (`memory`) | resets the memory of **used lines** (the ones already said, to avoid repeating them; no confirmation). It does not touch the journal's memories: for those use `/au journal reset` |
| `/au opzioni` (`options`, `config`) | opens the settings panel |
| `/au benvenuto` (`wizard`, `welcome`) | reopens the wizard |
| `/au debug [full\|trace]` | diagnostics: client capabilities, latest events, trapped errors; `trace` prints every recognised event, for the session |

**Key bindings.** Under *Options → Keybindings → AddOns → Azeroth Unspoken* you can bind four keys: *Confirm and speak the proposed line (or improvise)* (`AZEROTHUNSPOKEN_SPEAK`), *Another line* (`AZEROTHUNSPOKEN_REROLL`), *Pause the narrator immediately* (`AZEROTHUNSPOKEN_PAUSE`) and *Ambient dialogue with the NPC* (`AZEROTHUNSPOKEN_NPC`: opens or closes the dialogue). None has a default key.

## Settings

The panel opens with `/au opzioni` (it is also registered among the game's addon options; that registration has not yet been verified in the real client). It contains:

- **Language** of lines and interface, independent of the client language.
- **Intensity** (0–100) and **style depth** (Natural, Literary, Elevated).
- **Pause between lines** for automatic lines (45 seconds by default).
- **Chat**: the mode and the default channel.
- **Narrator box**: text duration, opacity, size, locked position, history, test.
- **Modules**: Personal, World, NPC dialogues, Memory, Relations, Stories, Social, Chat proposals, Audio (those not yet active, *Social* and *Audio*, are marked `*`), plus the presets *Complete*, *Personal RPG*, *Narrative world* and *Social RP*.
- The "speak" button, the name from Total RP 3 and, with a separate consent, reading other players' public profiles (*Read others' Total RP 3*), the character's personality (`/au soul`), the immediate pause, the wizard.
- Some choices are made **by command only**: the relationship axes and people (`/au relations`), attraction and automatic registration of players (`/au relations attraction|auto`), the automatic NPC dialogue offer (`/au npc offer`) and the maximum number of active stories (`/au stories max`).

## Privacy and chat

- **Everything stays on your computer.** The addon opens no connections, downloads nothing and sends no data. There is no active social module either (it is planned, with explicit consent and off by default).
- **Chat content is not saved**, and neither are whispers: the addon never keeps the text of a message. Of an emote aimed at you it remembers, for the session only, *that* it arrived (the text is discarded), and of a whisper you sent only the recipient's name, in memory, to suggest them as a person to add.
- **What is saved.** Per account: the settings (`AzerothUnspokenDB`). Per character (`AzerothUnspokenCharacterDB`): the memory of used lines, the chosen personality, the journal's **memories** (places, significant moments, flags), the **relationships** (the NPCs you met and, **only the players you chose yourself**, their name with the *personal* notes, tags and labels you write) and the state of the **stories**. There is no chat text, no dialogue line, and no data about a player you did not add. The journal and the relationships can be erased at any time (`/au journal reset`, `/au relations reset`). The narrator history lives in memory only and disappears with the session.
- **Relationships.** A player enters the relationships list **only through your click or command**; the "register people I meet automatically" option exists but is off by default. The addon *suggests* (group members, trades, people you replied to), it does not register.
- **Others' Total RP 3, only with consent.** The public data (race, class and personality traits) of other players' Total RP 3 profiles is read **only** if you turn on `/au who trp3 on` (or the option in the settings), off by default; never notes, history or private fields, and it is not saved.
- **Nothing reaches chat without a player action.** The *Chat Gateway* has four modes:

| Mode | What happens |
|---|---|
| `privato` / private (default) | lines stay in the narrator, never in chat |
| `anteprima` / preview | the character's lines become proposals; the "speak" key opens the editor and you send with Enter |
| `conferma` / confirm | the proposal is ready and a click, a key or `/au dire` sends it; you can edit it, change channel or discard it |
| `auto` | **only if you choose it, with a warning and a confirmation**: emotes go out by themselves and, inside instances, `/say`; everything else stays a proposal |

- The *inner* and *NPC* voices never go to chat. Neither do the ambient dialogues and the personal stories: they stay in the narrator and in their own window.
- There are rate limits (at least 4 seconds between two sends, at most 6 per minute, 2 automatic), a 255-byte cap per message, and nothing is sent while the client's chat lockdown is active.
- The rule "emotes by themselves, `/say` by itself only in instances" is a cautious assumption about the client's behaviour that has **not yet been measured in game**.

The decisions behind this behaviour are in the [ADRs](docs/adr/README.md) (in Italian), notably [0002](docs/adr/0002-fully-offline-no-ai.md) and [0003](docs/adr/0003-private-narrator-and-chat-gateway.md).

## Total RP 3

The integration is **optional**: the addon works at 100% without it. If Total RP 3 is present, the addon can read three things, each with its own switch:

1. **Your profile's first name** (*Name from Total RP 3* in the settings, on by default) to use it in lines.
2. **The public personality traits of your profile** (`/au soul trp3 on`, off by default) for the character's personality; a choice you make by hand always comes first.
3. **The public data of other players** (`/au who trp3 on`, or *Read others' Total RP 3* in the settings, off by default; point 1 must be on too): only race, class and personality traits, so the narrator can react to whoever is in front of you. Never notes, history or private fields, and nothing it reads is saved.

The addon writes nothing to Total RP 3. If Total RP 3's APIs are missing or change, the integration switches itself off. See [ADR 0004](docs/adr/0004-total-rp-3-optional-with-adapter.md) and [ADR 0016](docs/adr/0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md) (in Italian).

## Phrase packs

Lines do not live in the engine: they live in packs. The base ones are in `AzerothUnspoken/Data/`; others are added as separate addons that depend on `AzerothUnspoken` (see `AzerothUnspoken_Example`). A pack can add lines, narrative frames, vocabulary, translations, new languages, new events, places, NPCs, dialogues and stories.

The full guide is [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md) (in Italian): it describes data schema v2 (rules separate from texts, variants, voices, registers, depth, personality tags, memory conditions, relationships, interlocutor and place), the ambient dialogues and the personal stories. **The guide's examples are exercised by the tests** as external packs. To write good lines, also read [CONTRIBUTING.md](CONTRIBUTING.md) (in Italian).

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
| M4 Social RP (S10, G4 test with two clients), M5 release 1.0 (S11–S12) | to do |

**What is not verified.** Everything that needs the real client: the client's events and APIs (gossip, vendors, maps, instances, encounters), the place and NPC numbers (`uiMapID`, `instanceID`, `npcID`: they come from the Classic Era numbering, issue [#36](https://github.com/Finland6738/azeroth-unspoken/issues/36)), the real look of the windows, saving of the SavedVariables, the Total RP 3 integration and, above all, **the tone, rhythm and frequency** of the lines: the tests check structure, counts and rules, not literary quality. The in-game tests (G1–G4) are in the [checklist](docs/G1_checklist.md); problems found will become issues labelled `in-game`.

The detailed plan, the steps and notes for developers are in [ROADMAP.md](ROADMAP.md). Notable changes per version are in [CHANGELOG.md](CHANGELOG.md). Known problems and ideas are in the [issues](https://github.com/Finland6738/azeroth-unspoken/issues).

## Development and tests

Repository layout:

| Path | Contents |
|---|---|
| `AzerothUnspoken/` | the addon (`Core/`, `Engine/`, `Systems/`, `Integration/`, `UI/`, `Data/`) |
| `AzerothUnspoken_Example/` | sample phrase pack |
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

The full index is [docs/README.md](docs/README.md). Starting points (all in Italian):

- [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md): modules, the flow of an event, data, extension points.
- [docs/adr/README.md](docs/adr/README.md): the project decisions, one per file.
- [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md): the product specification (the GDD still calls the product "Immersion Director").
- [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md): how to write a pack.

## License

**License to be defined.** Until one is chosen, default copyright applies: all rights are reserved. The options (code and texts) are discussed in [issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2).

## Credits

- Concept and development: Finland6738.
- Technical references consulted (not copied): [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons) for the Forever API dump; the [Warcraft Wiki](https://warcraft.wiki.gg/wiki/World_of_Warcraft_API) for general API documentation. Full list in [docs/REFERENCES.md](docs/REFERENCES.md).
- [Total RP 3](https://totalrp3.info/) belongs to its authors; Azeroth Unspoken only uses it as an optional integration.
- If [ForeverDB.net](https://foreverdb.net/) data is ever used to prepare local registries, it will be credited here with a visible link.

*World of Warcraft® is a trademark of Blizzard Entertainment, Inc. Azeroth Unspoken is an independent fan project, not affiliated with or endorsed by Blizzard. The lines are original and do not reproduce in-game text.*
