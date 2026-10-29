# Azeroth Unspoken

*An immersive roleplay companion for World of Warcraft*

> 🇮🇹 [Versione italiana](README.md)

A distinctive, mysterious narrative companion for World of Warcraft that calls back the thoughts and stories left unspoken.

Azeroth Unspoken is an addon for **World of Warcraft: Forever** (Interface `16001`). It bundles a local narrative engine and a database of hand-written lines, in Italian and English, that react to places, events and what your character does: a new zone, a fight, a serious wound, a level gained, a greeting.

> **Status: version 0.1.0, under development.** The code has only been exercised outside the game, against a simulated client. The test in the real client (the [G1](docs/G1_checklist.md) checklist, in Italian) has not been done yet, so expect surprises. See [Project status](#project-status).
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

**What it does (today, in version 0.1.0)**

- Listens to a few game events (entering a zone, combat start and end, low health, death and revival, level-up, spells cast) and, with a probability and a pause scaled by the intensity you choose, shows you a line that fits the moment.
- Lines are **whole and hand-written**, never assembled from random fragments: 374 lines in Italian and English, 354 spoken and 20 narrative, organised by event, tone and conditions (race, class, zone, time of day, target, group, instance…).
- Shows them in a private **narrator box** that only you see: movable, with adjustable duration, opacity and text size, a recent history and an immediate pause.
- Remembers which lines were used recently to avoid repetition (the memory is saved per character).
- If you want, turns the character's lines into **chat proposals** that you confirm, edit or discard. See [Privacy and chat](#privacy-and-chat).
- If you want, gives the character a **personality** (temperament, morality, curiosity, faith, motivation, irony, inner voice, topics to avoid, or a ready-made archetype): lines that fit come up more often, and lines that contradict what you ruled out never do. All optional; with no choices the narrator stays neutral. See `/au soul`.
- Walks you through a skippable first-run wizard.
- Has a diagnostic (`/au debug`) that shows what your client lets the addon do.
- Extends through **phrase packs** shipped as separate addons, without touching the engine.

**What it does not do**

- It does not connect to the internet: no external service, no AI, no telemetry.
- It does not write to public chat on its own with the default settings.
- It does not generate text: it picks among lines that already exist.
- It does not read the combat log and does not base decisions on values the client hides from addons.
- It does not save chat content.

**Planned, not yet present** (see [ROADMAP.md](ROADMAP.md), in Italian): memories and journal, relationships with NPCs and players, interlocutor and place as conditions for lines, NPC dialogues, multi-chapter stories, social play between players, content up to 1,000 intentions. In the settings some modules (NPC, memory, stories, social, audio) can already be switched on or off, but they are placeholders: today only the *Personal*, *World*, *Chat proposals* and *Total RP 3* modules have any effect. The style depth (Natural, Literary, Elevated) is saved too, but **no line uses it yet**.

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
| `/au profondita naturale\|letterario\|elevato` (`depth`) | style depth (saved, but no line uses it today) |
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
| `/au anima` (`soul`) | opens the character personality window. Also `list`, `neutral`, `archetype <id>`, `trp3 on\|off`, `<trait> <value>` (`temperament`, `morality`, `curiosity`, `faith`, `motivation`, `irony`, `voice`; `-` removes the choice) and `avoid <topic>` |
| `/au pacchetti` (`packs`) · `/au pacchetto <id> on\|off` (`pack`) | lists, or switches phrase packs on and off |
| `/au info` (`stats`) | how many lines are available, per event |
| `/au memoria` (`memory`) | resets the memory of used lines (no confirmation) |
| `/au opzioni` (`options`, `config`) | opens the settings panel |
| `/au benvenuto` (`wizard`, `welcome`) | reopens the wizard |
| `/au debug [full\|trace]` | diagnostics: client capabilities, latest events, trapped errors; `trace` prints every recognised event, for the session |

**Key bindings.** Under *Options → Keybindings → AddOns → Azeroth Unspoken* you can bind two keys: *Confirm and speak the proposed line (or improvise)* and *Pause the narrator immediately*.

## Settings

The panel opens with `/au opzioni` (it is also registered among the game's addon options; that registration has not yet been verified in the real client). It contains:

- **Language** of lines and interface, independent of the client language.
- **Intensity** (0–100) and **style depth** (Natural, Literary, Elevated).
- **Pause between lines** for automatic lines (45 seconds by default).
- **Chat**: the mode and the default channel.
- **Narrator box**: text duration, opacity, size, locked position, history, test.
- **Modules**: Personal, World, NPC dialogues, Memory, Stories, Social, Chat proposals, Audio (those not yet active are marked `*`), plus the presets *Complete*, *Personal RPG*, *Narrative world* and *Social RP*.
- The "speak" button, the name from Total RP 3, the immediate pause, the wizard.

## Privacy and chat

- **Everything stays on your computer.** The addon opens no connections, downloads nothing and sends no data. There is no active social module either (it is planned, with explicit consent and off by default).
- **Chat content is not saved.** The saved files hold settings (account-wide) and the memory of used lines (per character). The narrator history lives in memory only and disappears with the session.
- **Nothing reaches chat without a player action.** The *Chat Gateway* has four modes:

| Mode | What happens |
|---|---|
| `privato` / private (default) | lines stay in the narrator, never in chat |
| `anteprima` / preview | the character's lines become proposals; the "speak" key opens the editor and you send with Enter |
| `conferma` / confirm | the proposal is ready and a click, a key or `/au dire` sends it; you can edit it, change channel or discard it |
| `auto` | **only if you choose it, with a warning and a confirmation**: emotes go out by themselves and, inside instances, `/say`; everything else stays a proposal |

- The *inner* and *NPC* voices never go to chat.
- There are rate limits (at least 4 seconds between two sends, at most 6 per minute, 2 automatic), a 255-byte cap per message, and nothing is sent while the client's chat lockdown is active.
- The rule "emotes by themselves, `/say` by itself only in instances" is a cautious assumption about the client's behaviour that has **not yet been measured in game**.

The decisions behind this behaviour are in the [ADRs](docs/adr/README.md) (in Italian), notably [0002](docs/adr/0002-tutto-offline-senza-ia.md) and [0003](docs/adr/0003-narratore-privato-e-chat-gateway.md).

## Total RP 3

The integration is **optional**: the addon works at 100% without it. If Total RP 3 is present and the module is on (*Name from Total RP 3* in the settings), the addon reads **your profile's first name** to use it in lines. With a separate consent (`/au soul trp3 on`, off by default) it also reads the **public personality traits of your profile** for the character's personality; a choice you make by hand always comes first. It reads only **your own** profile, never notes or private fields, and writes nothing to Total RP 3. If Total RP 3's APIs are missing or change, the integration switches itself off. Public data of other players is planned, always with consent. See [ADR 0004](docs/adr/0004-total-rp-3-facoltativo-con-adattatore.md).

## Phrase packs

Lines do not live in the engine: they live in packs. The base ones are in `AzerothUnspoken/Data/`; others are added as separate addons that depend on `AzerothUnspoken` (see `AzerothUnspoken_Example`). A pack can add lines, narrative frames, vocabulary, translations, new languages and even new events.

The full guide is [AzerothUnspoken/FORMATO_PACCHETTI.md](AzerothUnspoken/FORMATO_PACCHETTI.md) (in Italian). The format will change with data schema v2 (roadmap step S3), and the guide will be updated accordingly. To write good lines, also read [CONTRIBUTING.md](CONTRIBUTING.md) (in Italian).

## Project status

| What | Status |
|---|---|
| M0 Foundations: architecture, compatibility, diagnostics (S1), private narrator, Chat Gateway, settings, wizard (S2) | **done**, tested outside the game only |
| G1 In-game test ([checklist](docs/G1_checklist.md)) | **postponed**: needs the owner with the real client |
| M1 Narrative Alpha: data schema v2, Narrative Director, personality, memory, relationships, interlocutor and place, 300 intentions | in progress / to do |
| M2–M5: NPCs, stories, social, release 1.0 | to do |

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

**Forever API dump.** To find out whether a function or event exists in the client we consult the dump in [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons), cloned next to the project (`E:\repository\WoW-Addons`) and **never copied** into our repository. See [docs/RIFERIMENTI.md](docs/RIFERIMENTI.md) and [ADR 0010](docs/adr/0010-dump-api-di-forever-come-riferimento.md).

To contribute (lines, packs, code, issues) read [CONTRIBUTING.md](CONTRIBUTING.md).

## Documentation

The full index is [docs/README.md](docs/README.md). Starting points (all in Italian):

- [docs/ARCHITETTURA.md](docs/ARCHITETTURA.md): modules, the flow of an event, data, extension points.
- [docs/adr/README.md](docs/adr/README.md): the project decisions, one per file.
- [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md): the product specification (the GDD still calls the product "Immersion Director").
- [AzerothUnspoken/FORMATO_PACCHETTI.md](AzerothUnspoken/FORMATO_PACCHETTI.md): how to write a pack.

## License

**License to be defined.** Until one is chosen, default copyright applies: all rights are reserved. The options (code and texts) are discussed in [issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2).

## Credits

- Concept and development: Daniel Polo.
- Technical references consulted (not copied): [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons) for the Forever API dump; the [Warcraft Wiki](https://warcraft.wiki.gg/wiki/World_of_Warcraft_API) for general API documentation. Full list in [docs/RIFERIMENTI.md](docs/RIFERIMENTI.md).
- [Total RP 3](https://totalrp3.info/) belongs to its authors; Azeroth Unspoken only uses it as an optional integration.
- If [ForeverDB.net](https://foreverdb.net/) data is ever used to prepare local registries, it will be credited here with a visible link.

*World of Warcraft® is a trademark of Blizzard Entertainment, Inc. Azeroth Unspoken is an independent fan project, not affiliated with or endorsed by Blizzard. The lines are original and do not reproduce in-game text.*
