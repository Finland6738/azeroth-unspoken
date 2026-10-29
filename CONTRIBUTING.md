# Contributing to Azeroth Unspoken

Thanks for your interest. This document explains how to report problems, write phrases and packs, change the code and open a pull request.

> **License to be decided.** The project does not have a license yet ([issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2)). Until one is chosen, open an issue first to discuss it if you want to propose a contribution of a certain size.

## Language

From now on, **documentation, ADRs, pull request titles and descriptions, issues and commit messages are written in English.**

- **Code comments** may stay as they are: the existing ones are in Italian. Rewriting existing code comments is out of scope for any change that is not about that; if you think it is worth doing, open an issue. New comments may be in English or in Italian, like the code around them (see [section 7](#7-lua-and-emmylua-style)).
- **In-game text stays bilingual** (Italian and English): phrases, UI labels and messages exist in both languages (see [section 3](#3-writing-phrases)).
- **Two documents stay in Italian**: the in-game checklist [docs/G1_checklist.md](docs/G1_checklist.md) (it is used by the Italian-speaking tester) and the original design spec [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md) (the historical source of the project).

## Contents

1. [Before you start](#1-before-you-start)
2. [Reporting a problem or proposing an idea](#2-reporting-a-problem-or-proposing-an-idea)
3. [Writing phrases](#3-writing-phrases)
4. [Writing a pack](#4-writing-a-pack)
5. [Changing the code](#5-changing-the-code)
6. [Tests](#6-tests)
7. [Lua and EmmyLua style](#7-lua-and-emmylua-style)
8. [Git, issues and pull requests](#8-git-issues-and-pull-requests)
9. [What is not accepted](#9-what-is-not-accepted)

## 1. Before you start

Read, in this order:

1. [README.md](README.md): what the addon does and what it does not do.
2. [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md): modules, flow of an event, extension points.
3. [docs/adr/README.md](docs/adr/README.md): the decisions already taken and the reasons for them. They must not be bypassed: if you think one is wrong, open an issue.
4. [ROADMAP.md](ROADMAP.md): the status, the steps and the working rules.
5. [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md) (in Italian): the product spec (the product is still called "Immersion Director" there; where the GDD and the roadmap disagree, the roadmap wins).

Three non-negotiable principles:

- **Everything offline**, without AI ([ADR 0002](docs/adr/0002-fully-offline-no-ai.md)).
- **Nothing in chat without a player action** ([ADR 0003](docs/adr/0003-private-narrator-and-chat-gateway.md)).
- **The engine contains no texts** ([ADR 0001](docs/adr/0001-engine-and-narrative-database-separated.md)).

## 2. Reporting a problem or proposing an idea

Open an [issue](https://github.com/Finland6738/azeroth-unspoken/issues), written in English. **Search first** to see whether it already exists.

**Labels**: `bug`, `enhancement`, `docs`, `in-game` (to be verified in the client), `content` (phrases), `good first issue`, and a priority `priority:high`, `priority:medium` or `priority:low`.

**A good report** contains:

- the **file and line**, or the function;
- the **expected behavior**;
- the **observed behavior**;
- **how to reproduce it**: an offline test, or the in-game steps;
- for in-game problems: the output of `/au debug full`, the client build and any errors (they show up with `/console scriptErrors 1`).

A work session or a person who finds a problem **outside the current step opens an issue** instead of widening the step.

## 3. Writing phrases

Phrases are the heart of the project. They are **whole, original and curated**: fragments are not assembled at random.

### Format

Data schema v2 separates the **rule** (when and who speaks) from the **texts** (the variants, per language). A phrase is a rule plus its texts:

```lua
AzerothUnspoken:RegisterPack({
    id = "nani",
    languages = { "itIT", "enUS" },
    registry = {
        ["nani.battle.01"] = {
            event = "battle",               -- or several events: { "battle", "threat" }
            speaker = "character",          -- narrator | inner | character | npc
            styles = { "epic" },            -- registers; the first one is the main one
            depth = { "literary" },         -- depth it is written for (absent = all)
            weight = 1,                     -- relative weight (optional)
            cooldown = 600,                 -- seconds before it can come back (optional)
            conditions = { race = "Dwarf" },-- conditions (optional)
        },
    },
    texts = {
        itIT = { ["nani.battle.01"] = { "Le montagne non arretrano!", "Né un passo indietro." } },
        enUS = { ["nani.battle.01"] = { "The mountains do not yield!", "Not one step back." } },
    },
})
```

All the details (events, conditions, personality tags, memory, relationships, interlocutor and place, dialogues, story arcs, placeholders, frames, vocabulary) are in [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md), whose examples are exercised by the tests: always follow the version on `main`. A pack in a **separate** addon calls the APIs from `AzerothUnspoken:`, not from `NS:`.

### Conventions

- **`id`**: `pack.event.NN` (for example `nani.battle.01`); emotes may use `.e.NN`. The id expresses an **intention**, the same in every language. Ids are unique across the whole addon: a duplicate is ignored with a warning. Ids are used by memory and by translations: **do not change them** after publication.
- **Both languages and several variants**: every intention must be written at least in Italian (`itIT`) and in English (`enUS`), and for common scenes with **two or more variants** per language (same meaning and same register, different words and rhythm: the engine does not repeat the last one twice in a row). Languages are never mixed: a phrase only appears in the languages in which it exists. `/au valida` reports missing languages.
- **Emotes** (`narrator` voice, emote form): they start in lowercase and **without the name**; the game prepends the character's name («*Brann* snuda l'arma…», that is "*Brann* draws his weapon…").
- **Depth**: `natural`, `literary`, `elevated`. For key moments write one variant for each (`{ "text", depth = "elevated" }`); a phrase without `depth` applies to all and is never penalized.
- **Placeholders** `{player}`, `{target}`, `{spell}`, `{zone}`, `{subzone}`, `{level}`, `{class}`, `{race}`, `{faction}`, `{targettype}`, gender `{g:pronto|pronta}`, vocabulary `{cry}`. If a datum is missing, the phrase is discarded: there is no need to handle it.
- **Voices** (`speaker`): `narrator` describes the atmosphere and does not attribute decisions to the character; `inner` are private thoughts; `character` is the public voice, shorter; `npc` is simulated content. The `inner` and `npc` voices never go to chat ([ADR 0003](docs/adr/0003-private-narrator-and-chat-gateway.md)).
- **Registers** (`styles`): `ancient`, `epic`, `tragic`, `intimate`, `everyday`, `ironic`, `ceremonial` (GDD §5.1). The engine penalizes two consecutive phrases with the same main register (`lastTone`) and the StyleResolver prefers the ones that suit the event, the zone, the voice and the depth, without ever excluding: you need several registers per event. (The "tones" `eroico`, `solenne`, `ironico`… belong to the prototype format and are converted into registers on load.)
- **Personality**: `tags` with a colon tie the phrase to the character's traits: `temperament:stoic` (soft affinity), `req:faith:devout` (only comes out if the profile says so), `not:…`, `topic:death` (a topic the player can exclude). A phrase that **states** something about the character uses `req:`; one that says it in a certain tone uses the soft affinity; one that touches blood, death, family or religion carries `topic:`.
- **Conditions** (`conditions`, alias `when`): more conditions = more specific phrase = higher weight. Use conditions for what makes the phrase *right* at that moment, not to force it. The memory, relationship, interlocutor and place ones (`firstVisit`, `relation`, `other = {…}`, `place = {…}`) only hold if the datum really exists: a phrase that mentions a memory or a relationship must not be able to come out without it.
- **Length**: public phrases must be kept short. The technical ceiling for a chat message is 255 bytes (accented letters take 2); the Chat Gateway truncates beyond that, with "...".

### Quality rules (GDD §5.4)

Every phrase must follow them. They are the review checklist.

1. **Original texts**, consistent with the setting; **no recognizable quotation copied** (from the game, from books, from other addons or from other authors). Do not copy texts from other projects.
2. **Keep verified lore separate from atmospheric invention**: no false statements about canonical events, and no invented lore presented as canon.
3. **Vary structure and length**; do not always pile up "shadow", "fate", "blood", "ancient". Before adding a phrase, reread the ones for the same event.
4. **Accessible without encyclopedic knowledge**, but with a reward for those who know the lore.
5. **No moral decision imposed by race, faction or class.** A race or a class may suggest an *inclination*, never a mandatory stereotype.
6. **Every public text must be assessed for spam risk and for the length** limit of the channel.
7. **The Italian and English variants preserve *intent* and *register***: they are not mechanical calques.
8. **The right register for the moment** (GDD §5.1): a vendor does not declaim like an ancient king; an insignificant moment does not become an apocalypse every time.
9. **The character does not decide in place of the player** in the narrator's voice (GDD §5.3).

Before opening the PR, reread aloud in both languages.

## 4. Writing a pack

A pack is a separate addon that adds phrases, frames, vocabulary, translations, languages or events, without touching the engine.

1. Copy `AzerothUnspoken_Example` into a new folder (for example `AzerothUnspoken_Nani`).
2. Rename the `.toc` file to the same name as the folder and leave `## Dependencies: AzerothUnspoken`.
3. Write the rules and the texts with `AzerothUnspoken:RegisterPack({ id = "nani", name = "…", languages = { "itIT", "enUS" }, registry = { … }, texts = { itIT = { … }, enUS = { … } } })`. The pack `id` is unique. In a separate addon always call `AzerothUnspoken:` (the `NS` on the first line of the file is the namespace of your pack).
4. Check with `/au valida nani` (duplicate ids, missing languages, placeholders, conditions, lengths, tags) and try it in the client with `/au pacchetti`, `/au info` and `/au prova <event>`.

Besides phrases, a pack can add events, registers, conditions, places, NPCs, **ambient dialogues** and **story arcs**. For scripts use a new key (`npc:<npcID>` with `extends`): an already existing key **replaces** the base script ([#69](https://github.com/Finland6738/azeroth-unspoken/issues/69)).

The complete guide is [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md); if you write or change an example, mark it `<!-- test -->` (or `<!-- test: error -->` for an example that is expected to fail) and `Tests/check_docs.py` loads it as an external pack. A pack must follow the same quality rules as above and must not use the network or send data ([ADR 0002](docs/adr/0002-fully-offline-no-ai.md)).

## 5. Changing the code

1. **Work on an issue** or open one. For big changes, talk about it first.
2. **Respect the architecture**: [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md), section "For those writing a new system inside the addon".
3. **Every client API goes through Compat** and must **degrade gracefully** if it is missing or limited ([ADR 0005](docs/adr/0005-compat-secret-values-and-defensive-events.md)). Before using a new function or event, **check it in the Forever API dump** ([ADR 0010](docs/adr/0010-forever-api-dump-as-reference.md)).
4. **No decision based on secret values** and no use of the combat log.
5. **To speak, go through the Director** (if it is spontaneous) **and through the Chat Gateway** (always). No chat sending from timers or from events.
6. **New saved data**: defaults in `Config.defaults` or `Config.characterDefaults`, rules in `Config.rules`, a **migration** in `Config.migrations` (and `SCHEMA_VERSION` +1) when the shape changes, an **internal version** of the module if the data is complex, `Sanitize` for damaged data, read-only for data from a newer version, and the tests ([ADR 0006](docs/adr/0006-savedvariables-and-schema-versions.md)). Never chat contents.
   To influence the weight, the rhythm or the registers without touching the Director use the **hooks** (`SetWeightHook`, `SetRhythm`, `SetEventGuard`, `RegisterTab`…): see "How the systems hook into the engine" in [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md).
7. **Do not modify the files that another step is touching** (see the roadmap): if in doubt, open an issue.
8. **Features that need the real client**: if you add behaviors to be verified in game, update [docs/G1_checklist.md](docs/G1_checklist.md) (in Italian) and state in the PR what you could not verify.
9. **Update the documentation** in the same PR: `README.md` (English) **and** `README.it.md` (Italian) (commands, numbers, privacy, status), `PACK_FORMAT.md` if the pack API changes, `docs/ARCHITECTURE.md` and an ADR if the decision is new (and the ADR index), and the [CHANGELOG](CHANGELOG.md) in the "Unreleased" section, **in the group of your step** (not at the bottom).

## 6. Tests

The tests run outside the game with lupa (Lua 5.1) and a simulated client ([ADR 0007](docs/adr/0007-offline-tests-with-lupa-and-mock.md)). From the project root:

```bash
python -m venv .venv
.venv/Scripts/python -m pip install lupa
.venv/Scripts/python -I -X utf8 Tests/run_tests.py AzerothUnspoken
```

(On Linux and macOS: `.venv/bin/python`.) The command exits with code 1 if a check fails. **All checks must pass before a PR.**

How to add tests:

- A file `Tests/TestName.lua` receives `NS` as an argument (`local NS = ...`) and uses `T.run("description", function() … end)`, `T.eq(value, expected, "message")` and `T.ok(condition, "message")`. Each file runs in a **fresh runtime**.
- **Register the file** in the list in `Tests/run_tests.py` (the tuple with `TestCompat`, `TestConfig`…).
- If you use a new client API, add it to the mock `Tests/MockWoWAPI.lua`, and also test the "missing API" and "secret value" cases (`MakeSecret()`).
- `Tests/check_api.py` compares the functions and events used with the Forever API dump (it is skipped with a warning if the dump is not there); declare new event sources with **literal strings**, otherwise it does not see them.
- `Tests/check_docs.py` loads the examples of the pack guide as external packs and checks that **all the relative links** of the Markdown files exist (anchors included). A broken link makes the tests fail.
- The counts of phrases and packs are in `Tests/run_tests.py` and in `Tests/TestContent.lua`: if you add content, update them and report the numbers in the README and in the CHANGELOG.
- An offline test **does not prove the client**: state in the PR what remains to be verified in game ([G1](docs/G1_checklist.md)).

## 7. Lua and EmmyLua style

The Lua code is for **Lua 5.1**, like the client. Follow the style of the existing code:

- **Indentation with tabs**; **LF** line endings ([ADR 0008](docs/adr/0008-lf-line-endings.md)); files in UTF-8 without BOM.
- **Comments**: the existing ones are in Italian and may stay as they are (see [Language](#language)); new ones may be in English or in Italian like the surrounding code. Keep them short, explaining the *why* more than the *what*.
- Every file starts with `local ADDON, NS = ...` and **does not create global variables** beyond the declared ones (SavedVariables, `SLASH_*`, `BINDING_*`, key functions, the public API `AzerothUnspoken`). **Every new global must be added to `diagnostics.globals` in `.luarc.json`.**
- Modules register with `NS:RegisterModule("name")` and initialize in `OnInit`.
- Errors are isolated with `NS.Diagnostics:Guard(...)`; client APIs are called with `Compat.Query`/`SafeCall`.
- **Do not use `%s`, `%l`, `%a` or `%w`** in patterns applied to UTF-8 text: with some locale settings they break accented letters. Use explicit classes (for example `[ \t\r\n]`).
- In `.toc` files paths use the backslash (`Core\Compat.lua`).
- Do not duplicate the WoW APIs in the project: the language server plugin provides them.

**EmmyLua.** Annotate public APIs, modules and data structures (context, phrase, configuration, relationship) with `---@class`, `---@field`, `---@param`, `---@return`, so that the IDE completes and checks types. Recommended environment: JetBrains WebStorm with the **EmmyLua** and **WoW Lua Language Server** plugins; `.luarc.json` sets Lua 5.1, the globals and the folders to ignore. For the Forever API definitions you need a clone of the dump next to the project (see [docs/REFERENCES.md](docs/REFERENCES.md)).

**Python.** The tools in `Tests/` are Python 3, run with `-I -X utf8`.

## 8. Git, issues and pull requests

The full flow is in [ADR 0009](docs/adr/0009-git-flow-branch-pr-squash.md). In short:

1. **Branch** started from an up-to-date `main`: `step/sN-name` for steps, `docs/…` or `fix/…` for the rest.
2. **Small commits, with messages in English** that say what and why.
3. **Passing tests** before opening the PR.
4. **Pull request to `main`**, with a title and description (in English) that summarize the change and **what has not been verified** (in particular everything that needs the real client).
5. If it resolves an issue, write `Closes #N` in the description.
6. **Squash merge**, with deletion of the branch.
7. **Never** `--force` on `main`, never rewrite published history, never skip hooks.
8. If `main` changes while you work: update your branch, resolve the conflicts, repeat the tests.

Text files have **LF line endings**: `.gitattributes` enforces it.

## 9. What is not accepted

- Any **network access**, telemetry or external dependency at runtime.
- **Execution of code received** from other players (`loadstring` and the like).
- Code that **bypasses the player's action** to write to chat, or that tries to bypass protected functions, secure actions or the client's restriction system.
- **Saving chat contents** or personal data of other players without an explicit choice by the user.
- **Copying** texts from the game or from other projects, or **files from repositories without a declared license** (like the Atraeau/WoW-Addons dump: it is consulted, not copied).
- Phrases that violate the quality rules in section 3.
- Changes that break the tests or that mix several steps.

Thanks for the help.
