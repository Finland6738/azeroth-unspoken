# Contributing to Azeroth Unspoken

Thanks for your interest. This document explains how to report problems, write phrases and packs, change the code and open a pull request.

> **License to be decided.** The project does not have a license yet ([issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2)). Until one is chosen, open an issue first to discuss it if you want to propose a contribution of a certain size.

## Language

From now on, **documentation, ADRs, pull request titles and descriptions, issues and commit messages are written in English.**

- **Code comments** may stay as they are: the existing ones are in Italian. Rewriting existing code comments is out of scope for any change that is not about that; if you think it is worth doing, open an issue. New comments may be in English or in Italian, like the code around them (see [section 7](#7-lua-and-emmylua-style)).
- **In-game text stays bilingual** (Italian and English): phrases, UI labels and messages exist in both languages (see [section 3](#3-writing-phrases)). **English is the base language** (the default on a new install and the fallback of a missing translation) and Italian the translation. **Command names and their arguments are always English**, in every interface language ([ADR 0023](docs/adr/0023-english-first-addon-and-english-command-names.md)): a new command goes in `Commands.list` with an English name, and its description goes in both locales.
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

**Where the base content lives** (one download, several folders: [ADR 0025](docs/adr/0025-language-and-regional-packs-loaded-on-demand.md)). The rules of the base packs are in `AzerothUnspoken/Data/Registry*.lua`; their texts are in the language folders, `AzerothUnspoken_enUS/<Pack>.lua` and `AzerothUnspoken_itIT/<Pack>.lua` (only the chosen language is loaded in game). A line that only makes sense in one continent (a `zone` or `place` condition of that continent) goes into the regional folders: rules in `AzerothUnspoken_Kalimdor/` or `AzerothUnspoken_EasternKingdoms/`, texts in their `_enUS` and `_itIT` folders, written inside the builder functions already there. Everything else stays generic. Never make a pack for a race, a class or the weather: those are conditions.

All the details (events, conditions, personality tags, memory, relationships, interlocutor and place, dialogues, story arcs, placeholders, frames, vocabulary, language and regional packs) are in [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md), whose examples are exercised by the tests: always follow the version on `main`. A pack in a **separate** addon calls the APIs from `AzerothUnspoken:`, not from `NS:`.

### Conventions

- **`id`**: `pack.event.NN` (for example `nani.battle.01`); emotes may use `.e.NN`. The id expresses an **intention**, the same in every language. Ids are unique across the whole addon: a duplicate is ignored with a warning. Ids are used by memory and by translations: **do not change them** after publication.
- **Both languages and several variants**: every intention must be written at least in Italian (`itIT`) and in English (`enUS`), and for common scenes with **two or more variants** per language (same meaning and same register, different words and rhythm: the engine does not repeat the last one twice in a row). Languages are never mixed: a phrase only appears in the languages in which it exists. `/au validate` reports missing languages.
- **Emotes** (`narrator` voice, emote form): they start in lowercase and **without the name**; the game prepends the character's name («*Brann* snuda l'arma…», that is "*Brann* draws his weapon…").
- **Depth**: `natural`, `literary`, `elevated`. For key moments write one variant for each (`{ "text", depth = "elevated" }`); a phrase without `depth` applies to all and is never penalized.
- **Placeholders** `{player}`, `{target}`, `{spell}`, `{zone}`, `{subzone}`, `{level}`, `{class}`, `{race}`, `{faction}`, `{targettype}`, gender `{g:pronto|pronta}`, vocabulary `{cry}`. If a datum is missing, the phrase is discarded: there is no need to handle it.
- **Voices** (`speaker`): `narrator` describes the atmosphere and does not attribute decisions to the character; `inner` are private thoughts; `character` is the public voice, shorter; `npc` is simulated content. The `inner` and `npc` voices never go to chat ([ADR 0003](docs/adr/0003-private-narrator-and-chat-gateway.md)).
- **Registers** (`styles`): `ancient`, `epic`, `tragic`, `intimate`, `everyday`, `ironic`, `ceremonial` (GDD §5.1). The engine penalizes two consecutive phrases with the same main register (`lastTone`) and the StyleResolver prefers the ones that suit the event, the zone, the voice and the depth, without ever excluding: you need several registers per event. (The "tones" `eroico`, `solenne`, `ironico`… belong to the prototype format and are converted into registers on load.)
- **Personality**: `tags` with a colon tie the phrase to the character's traits: `temperament:stoic` or `stoicism:high` (soft affinity, graded by the intensity of the axis), `stoicism>=60` (soft affinity with a threshold), `req:faith:devout` (only comes out if the profile says so), `not:…`, `topic:death` (a topic the player can exclude). A phrase that **states** something about the character uses `req:`; one that says it in a certain tone uses the soft affinity; one that touches blood, death, family or religion carries `topic:`. A phrase only a strong trait would say is gated with `conditions = { traitMin = { stoicism = 70 } }`. See [Emotion-aware lines](#emotion-aware-lines).
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
10. **Literary forms** (inscriptions, songs, rhymes, hymns, laments, sayings) also follow the stricter rules of the next section, and the review uses its checklist.

Before opening the PR, reread aloud in both languages.

### Themes and motifs

Every intention declares **one theme** and **zero to three motifs** (`theme = "loss", motifs = { "grave", "rain" }`), from the closed vocabularies of [`AzerothUnspoken/Data/Themes.lua`](AzerothUnspoken/Data/Themes.lua), where each theme has a one-line meaning. The engine uses them to keep the same idea and the same images from coming back too soon ([ADR 0028](docs/adr/0029-specificity-tiers-themes-motifs-and-category-quotas.md)); the validator rejects a name that is not in the lists. How to choose:

- **Theme = the dominant idea of all the variants together** (they share meaning and register), not of the event. A joke in a fight is `humour`, not `courage`; a battle cry of resolve is `courage`, a taunt full of hate `wrath`; weariness or wounds `fatigue`; one's own death `mortality`, the dead and grief `loss`; a prayer `faith`; what a place looks like `landscape`, the living wild `nature`; friends, hospitality and greetings among them `fellowship`; a return `home` or `memory`. Pick the most specific that fits, never one that does not; if two fit, take the one a listener would name first.
- **Motif = a concrete image that is literally in most of the variants** (at least half): a word or an unmistakable picture. `blade` when a sword, a blade, steel or a dagger is named; `blood` when blood is; `road` for a road, a path or a way; `ale` for ale, beer or a tankard; `light` for a light you could see. An idea is not a motif: courage, fate and silence have no motif. No image, no motif: an empty list is a fine answer. At most three, the most prominent first.
- **Be consistent**: the same image always gets the same motif, across packs. Before tagging, `python tools/archive/cli.py search --motif blade` shows how it is used.
- **Use them to vary**, as the quality rule 3 asks: if an event already has many lines with `blood` and `shadow`, write the next one about something else. `python tools/archive/cli.py search --event battle --theme courage` shows how crowded a theme is.
- **A new theme or motif** is a change to `Data/Themes.lua` (with its meaning) in its own PR, or a declaration in an external pack (`themes = {}`, `motifs = {}`): never a misspelling that the validator would reject.
- **Drafts written by AI sessions** carry `theme` and `motifs` like the other fields; the reviewer checks them with the texts. The 828 intentions that existed before R3 were labelled this way (the 63 lines of the world of R3b by hand), drafted by AI sessions and reviewed on a sample: fix a label you find wrong with an archive edit or by hand in the rules file.
- **Tiers** (`tier`) need no tagging: the engine deduces them from the conditions (place-specific above situation-specific above generic). For a place, write **at least three** intentions if they should lead there; one or two compete with the generic ones.

### Emotion-aware lines

Since R4 the character has an **emotional state** (worried after a death, serene at an inn, nostalgic on a return; [ADR 0031](docs/adr/0031-intensity-traits-emotional-state-and-the-tone-of-a-return.md)) and a personality made of **intensities** (stoic 80, vengeful 70 at once). Lines can follow both; the examples are in [`Data/RegistryEmotions.lua`](AzerothUnspoken/Data/RegistryEmotions.lua).

- **Show, never name.** The emotion and the trait are *implied* by what the character notices or does, not stated. Not "I'm worried", but "I keep my hand near the hilt"; not "I'm so happy", but "That one I'll tell at the inn". A line that names its feeling is sent back in review (quality rule 3: vary structure, and trust the reader).
- **Condition and tag.** A line written for a mood declares it: `conditions = { emotion = "worried" }` (the dominant emotion, or a list), or `emotionMin = { melancholic = 0.3 }` for a softer one, **and** the tag `emo:worried`, so the weight follows the strength of the mood. A line for a strong trait uses `traitMin` / `traitMax`, not a `req:` tag (a condition keeps it out entirely for a neutral profile).
- **Not every line.** A character does not show every trait or the mood in every line: most lines stay neutral, and an emotion line is one more choice for the moment, not a replacement. Write them for the most common events (zone, return, death, resurrection, battle, victory, level up, inn, thoughts) and keep them few per event.
- **Cheerful and ironic returns.** A cheerful or ironic return line must declare `lastVisitBad = false`: it must never answer a death or a flight there (#98, validator `lightReturnAfterBadVisit`). Gallows humour *about* the bad visit is for ironic characters only: `req:irony:high`.
- **Italian**: as everywhere, use the gender form `{g:...|...}` where the speaker's gender shows ("sono {g:tornato|tornata}").
- **Emotions**: `serene`, `happy`, `determined`, `curious`, `worried`, `tense`, `furious`, `melancholic`, `nostalgic`, `admiring`. **Axes** (0-100): `idealism` (cynical <-> idealist), `concreteness` (dreamer <-> pragmatic), `optimism` (pessimist <-> optimist), `altruism`, `stoicism`, `ambition`, `spirituality`, `patriotism`, `curiosity`, `vengefulness`.
- With the emotion module off, lines conditioned on an emotion never come out: the rest of the event must still read well without them.

### Literary forms

Inscriptions, solemn formulas, remembered verses, inn rhymes, road songs, proverbs, hymns and laments carry more weight than an ordinary line: a reader takes a verse as something the world itself holds. The validator cannot judge most of what matters here, so these rules are checked in review. They apply the owner's decisions in [issue #130](https://github.com/Finland6738/azeroth-unspoken/issues/130) (**D7** lore sources, **D15** frequency, **D16** public chat, **D17** culture, **D18** prophecies). The first pack written under them is `AzerothUnspoken_Versi` ([issue #115](https://github.com/Finland6738/azeroth-unspoken/issues/115)).

**Setting and lore**

1. **Classic era only.** Write only what a character of the classic game (levels 1-60) can know: its places, peoples, faiths, creatures and objects. Nothing from later expansions. Canonical names are spelled as in the client and used correctly.
2. **Invented lore is always attributed (D7).** Local legends, songs, tales, proverbs and inscriptions may be invented, but every one is carried by a voice: an inscription, a singer, "it is said", "a proverb from the market stalls", "a rhyme told to children". The text says where the words come from ("Worn letters on a fallen lintel: ..."). The narrator never states an invented legend as fact.
3. **No invented proper names and no invented languages.** An invented song has no named author, hero or place. A canonical name needs a reference a reviewer can check (a quest, an in-game book, an NPC's text), written in the PR until a metadata field exists ([#119](https://github.com/Finland6738/azeroth-unspoken/issues/119)). Never attribute an invented song to a canonical character ("the song Thrall sang"). No words in made-up tongues, and no phrases in the game's own languages.
4. **Prophecies come last (D18).** None for now. When they arrive they are attributed to a voice, never stated as truth, and get a lore review.
5. **Culture is chosen, never deduced (D17).** No race or faction condition decides which songs a character knows. Until the culture of origin exists in the profile ([#124](https://github.com/Finland6738/azeroth-unspoken/issues/124)), write pieces any character could have heard, and address no faith by name in a hymn.

**Voice and frequency**

6. **Never in public chat (D16).** A literary piece is spoken by a private voice only: `inner` (what the character reads, remembers or hums) or `npc` (an NPC sings or recites in an ambient dialogue). Never `narrator` or `character`, which can become chat proposals; no chat excerpt either. `Tests/check_versi.py` checks it for the verses pack.
7. **Rare (D15).** `combat = false` on every rule, a cooldown of three to seven days per piece (`cooldown = 3 * DAY` ... `7 * DAY`), and conditions that make the moment right (first visit, a return with a real memory, a known person, a lost boss fight) rather than a high weight.
8. **Tags.** `lore`, one `genre_*` tag (`genre_inscription`, `genre_formula`, `genre_verse`, `genre_nursery_rhyme`, `genre_inn_rhyme`, `genre_road_song`, `genre_saying`, `genre_proverb`, `genre_hymn`, `genre_lament`) and one `origin_*` tag (`origin_carved`, `origin_sung`, `origin_spoken`, `origin_remembered`), plus `topic:death` or `topic:religion` where the piece touches them, so that a player who avoids the topic never sees it. Do not use a colon in the genre and origin tags: a colon makes an affinity tag.

**Writing**

9. **Originality.** Original texts only: no recognizable line, structure or rhythm taken from Tolkien or other fantasy authors, from Blizzard's texts (quests, books, NPC greetings), from hymns, nursery rhymes, scripture or famous poems. Read every piece aloud and ask "does this remind me of something?". If the answer is yes, rewrite it. **Warning phrases**: a match is not forbidden by itself, but the review must justify it.
   - Tolkien: "the road goes ever on", "not all who wander", "all that is gold", "far over the misty", "under the mountain", "one ring", "to rule them / to bind them", "speak, friend", "you shall not pass", "where now the horse", "the man in the moon", "the cat and the fiddle", "Elbereth", "westward over the sea", "the grey havens", "the shadow lies", "in a hole in the ground", "seven stars and seven stones"; a walking song built on the fire, the bed and the road round the corner; an "ubi sunt" catalogue ("where is the horse? where is the rider?").
   - Blizzard and the game's greetings: "Light be with you", "Ishnu-alah", "Throm-ka", "Lok'tar ogar", "Strength and honor", "For the Horde", "For the Alliance", "Victory or death", any sentence of a quest text or an in-game book.
   - Elsewhere: "love is patient, love is kind", "ashes to ashes", "ring a ring o' roses", "once upon a time" as the opening of a legend.
10. **Metre.** Every piece has a metre, checked line by line (syllables and stresses) in the review.
    - English: trochaic tetrameter (seven or eight syllables, "Rumor walks in muddy boots"), iambic tetrameter or pentameter, common metre for hymns (8-6-8-6), dactylic lines for drinking songs.
    - Italian: the traditional metres, counting the synalepha: settenario, ottonario, decasillabo, endecasillabo. Rhyme is welcome, not required; mix metres in one piece only on purpose.
11. **Re-create, do not translate.** English and Italian are two poems with the same intention, register and length, each with its own metre; images and rhymes may differ ("three times the kettle knows where you rest" / "alla terza, anche il boccale sa già come bevi il vino"). English is American English ([#66](https://github.com/Finland6738/azeroth-unspoken/issues/66)).
12. **No placeholders** in songs and formulas (`{player}`, `{zone}`, `{target}`...): a song does not know the name of whoever hums it.
13. **Form today.** One line per text, verses separated by `" / "`, at most 255 bytes in every language, frame included. Real line breaks come with [#117](https://github.com/Finland6738/azeroth-unspoken/issues/117).

**Review checklist for a literary piece**

- [ ] Classic era only; canonical names correct, with a checkable reference.
- [ ] Attributed to a voice; nothing invented is stated as fact; no prophecy.
- [ ] No invented name or language; no song credited to a canonical character.
- [ ] `inner` or `npc` only; `combat = false`; cooldown of three to seven days; no race or faction condition.
- [ ] `lore`, `genre_*`, `origin_*` and the `topic:` tags it needs.
- [ ] Read aloud in both languages; no warning phrase, or a reason for it; nothing it "reminds you of".
- [ ] Metre counted line by line in both languages; the Italian is a re-creation, not a calque.
- [ ] No placeholders; one line with `" / "`; 255 bytes at most; `/au validate` and the tests pass.

### Writing content through the archive

Content can be written, reviewed and measured outside the game with the **authoring archive** ([ADR 0027](docs/adr/0027-sqlite-authoring-archive-and-exporter.md)). It needs only Python 3 (no other package). The game never reads the archive: it reads the pack folders, which the archive writes. Writing directly in the Lua files is still allowed (and is how approved lines are fixed by hand); both ways end in the same folders.

Where a line lives, by state (**one place at a time**): `approved` in the pack folders; `draft`, `review` and `retired` (and an approved line waiting for `export`) in `authoring/*.csv`, text that diffs row by row. The SQLite file (`build/authoring.sqlite`) is generated and ignored by git.

**Review states** (decision D6): `draft -> review -> approved -> retired`. One person curates and approves; drafts come from AI sessions. **An AI session writes drafts only: it never approves, retires or exports.**

1. **Write drafts** as JSON Lines, one intention per line (an AI session produces exactly this; a line starting with `#` is a comment):

   ```json
   {"id": "zone.felwood.02", "pack": "kalimdor_exploration", "event": "zone", "speaker": "inner", "styles": ["intimate"], "depth": ["natural", "literary"], "tags": ["melancholy", "topic:demons"], "theme": "nature", "motifs": ["leaf"], "weight": 1, "conditions": {"zone": "Felwood"}, "author": "ai-draft-1", "texts": {"enUS": ["{zone}. The leaves keep their color, and that is the worst of it.", {"text": "Green is not always a good sign.", "depth": "natural"}], "itIT": ["{zone}. Le foglie conservano il colore, ed è la cosa peggiore."]}}
   ```

   Fields: `id` (new, unique), `pack` (an existing pack id, which also decides the region and the files), `event` (one or a list), `speaker` (`narrator`, `inner`, `character`, `npc`), `styles` (registers), `depth`, `tags`, `theme` and `motifs` (see [Themes and motifs](#themes-and-motifs)), `tier` (rarely), `weight`, `cooldown`, `conditions` (a table of the conditions of [PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md); no code), `texts` (per language, a string or `{"text": ..., "depth": ...}`), `author`, and for invented legends `invented_lore` and `attribution` (who says it: "it is said", the singer, the inscription).
2. `python tools/archive/cli.py drafts new.jsonl` adds them as drafts (a line that is not valid is refused with the reason, the others are kept) and writes `authoring/`. Then `list`, `search --event zone --tag "topic:*" --region kalimdor --text felwood`, `show ID` and `stats` to look around.
3. **Review:** `submit ID` (to `review`: needs a text in every language of the pack), `reject ID --note "why"` (back to `draft`), `approve ID` (needs the same, and refuses invented lore in a narrator line without an attribution: **no invented legend without a voice**, decision D7), `retire ID --note "why"`, `restore ID`. Each change is a row in `authoring/reviews.csv` and `authoring/changelog.csv`; pass `--author NAME` (or set `AU_ARCHIVE_AUTHOR`).
4. **Publish:** `python tools/archive/cli.py export` writes the approved lines into the pack folders (appended to the rules file of their pack and to the texts file of each language, in the canonical style; a retired line leaves them) and takes them out of `authoring/`. `python tools/archive/cli.py check` proves that importing the folders and exporting them again changes nothing.
5. Update the counts the tests and the README report (see [section 6](#6-tests)), run the tests, and open the PR with the changed folders and `authoring/` together.
6. **`python tools/archive/cli.py report`** prints the coverage and gap report: intentions (the unit counted) and texts per region, voice, depth and register, the event x context cells under *k* intentions, and the repetition proxies. Thresholds are in `tools/archive/thresholds.json` and are only reported, never blocking; the CI job `Content coverage` runs it on every change to the content and keeps it as a job summary and an artifact.

7. **The lines of a Story Arc and of an NPC Alive dialogue are intentions like any other** (#143): packs `base_arcs` and `base_dialogues`, with the events `arc_open`, `arc_step`, `arc_resolve` (condition `arc = { id, state, choice }`) and `npcd_<role>_<node>` (voice `npc`). Draft them as above; `python tools/archive/cli.py search --pack base_dialogues --event npcd_innkeeper_open` shows what a node can already say.
8. **The arcs and the dialogue scripts themselves** (states, steps and journal texts; nodes and replies) are data in the folders (`Data/Arcs.lua`, `Data/Dialogues.lua`, `Arcs.lua` of each language) and are edited there by hand, as literal tables (see [PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md): no helper function builds them). `python tools/archive/cli.py arcs [ID]` and `scripts [KEY]` list and show them, and `check` validates them: unreachable states and nodes, dangling transitions and replies, missing languages, and replies that put words in the player's mouth (a feeling, a trait, a decision or a promise: neutral questions and actions only, unless the reply declares `editable = true`).

The quality rules of this section and the review checklist for literary forms apply to drafts exactly as to hand-written lines.

## 4. Writing a pack

A pack is a separate addon that adds phrases, frames, vocabulary, translations, languages or events, without touching the engine.

1. Copy `AzerothUnspoken_Example` into a new folder (for example `AzerothUnspoken_Nani`).
2. Rename the `.toc` file to the same name as the folder and leave `## Dependencies: AzerothUnspoken`.
3. Write the rules and the texts with `AzerothUnspoken:RegisterPack({ id = "nani", name = "…", languages = { "itIT", "enUS" }, registry = { … }, texts = { itIT = { … }, enUS = { … } } })`. The pack `id` is unique. In a separate addon always call `AzerothUnspoken:` (the `NS` on the first line of the file is the namespace of your pack).
4. Check with `/au validate nani` (duplicate ids, missing languages, placeholders, conditions, lengths, tags) and try it in the client with `/au packs`, `/au stats` and `/au test <event>`.

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
9. **Update the documentation** in the same PR: `README.md` (English) **and** `README.it.md` (Italian) (commands, numbers, privacy, status), `PACK_FORMAT.md` if the pack API changes, `docs/ARCHITECTURE.md` and an ADR if the decision is new (and the ADR index), and the [CHANGELOG](CHANGELOG.md) in the "Unreleased" section, **in the group of your step** (not at the bottom). **Also update the wiki pages in `docs/wiki/`** for any user-visible change (commands, settings, defaults, behavior, privacy, troubleshooting): they are the player's manual and the only source of the GitHub wiki. The `Docs rule` check enforces the CHANGELOG and docs part (section 8).

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
- `Tests/check_archive.py` tests the authoring archive (`tools/archive/`): importing the pack folders and exporting them again must give an **empty diff**, the review flow, the overlay and the coverage report; it runs inside `run_tests.py`. If you change a data file, keep it a literal table (see [PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md)) so that the archive can still read it: since #143 that includes the rules and the structures of the Story Arcs and NPC Alive, and the test also runs the Lua of those files (lupa) and compares what the game registers with what the archive holds.
- `Tests/bench_m2.py` plays a simulated 3-hour session through the real Director and reports the M2 repetition metrics (same theme twice in a row, the share of the frames "says"/"murmurs", repeated content words, voices, categories, pick time); `run_tests.py` runs it and checks the targets of R3. `--r1` measures the same data with the selection of R1 (`Engine.R1_COMPAT`); `Tests/trace_picks.py --r1` prints a seeded trace to compare two versions of the engine. A change to the selection or the frames shows up there first.
- `Tests/check_privacy.py` scans every tracked text file for email addresses (only GitHub noreply ones are allowed) and personal paths; `Tests/check_rules.py` tests the docs rule and the workflows (actions pinned to a commit, permissions declared). Both run inside `run_tests.py`.
- **CI runs the same command** on every PR and on `main` ([section 8](#8-git-issues-and-pull-requests)): the Forever API dump is cloned into the runner only, so `check_api.py` is not skipped there. Locally, `AU_REQUIRE_API=1` makes a missing dump a failure too.
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
3. **Passing tests** before opening the PR (`Tests/run_tests.py`).
   **Every step or fix PR updates, in the same PR: `CHANGELOG.md`, the affected docs and the affected wiki pages in `docs/wiki/`** ([section 5, point 9](#5-changing-the-code)). The PR template has the checklist.
4. **Pull request to `main`**, with a title and description (in English) that summarize the change and **what has not been verified** (in particular everything that needs the real client).
5. If it resolves an issue, write `Closes #N` in the description.
6. **CI must be green before merging**, then **squash merge**, with deletion of the branch (`gh pr merge --squash --delete-branch`). The checks are:
   - **`Tests`** (workflow `CI`): the whole offline suite, including `check_api.py` and the docs, wiki and privacy checks;
   - **`Docs rule`**: a PR that changes `AzerothUnspoken/` or `AzerothUnspoken_Example/` must also change `CHANGELOG.md` **and** at least one of `docs/` (wiki included), `README.md`, `README.it.md`, `AzerothUnspoken/PACK_FORMAT.md`. For a pure refactor or tests only, the owner or the session adds the label **`no-docs-needed`** and the check runs again.
   `main` is protected: both checks are required (administrators included), no reviews are required, no force push, no deletion. Never merge red and never disable a check ([ADR 0022](docs/adr/0022-automatic-rules-ci-docs-check-and-wiki-sync.md)).
7. **Never** `--force` on `main`, never rewrite published history, never skip hooks.
8. If `main` changes while you work: update your branch, resolve the conflicts, repeat the tests.

Text files have **LF line endings**: `.gitattributes` enforces it.

**The wiki is never edited on GitHub.** The GitHub wiki is a mirror of `docs/wiki/`: after a merge to `main` that changes `docs/wiki/`, the workflow `Wiki sync` publishes it with `tools/sync_wiki.py` (as `github-actions[bot]`), and anything edited in the browser is overwritten. To change the manual, edit `docs/wiki/` in a pull request. A manual run is possible from Actions > Wiki sync > Run workflow.

## 9. What is not accepted

- Any **network access**, telemetry or external dependency at runtime.
- **Execution of code received** from other players (`loadstring` and the like).
- Code that **bypasses the player's action** to write to chat, or that tries to bypass protected functions, secure actions or the client's restriction system.
- **Saving chat contents** or personal data of other players without an explicit choice by the user.
- **Copying** texts from the game or from other projects, or **files from repositories without a declared license** (like the Atraeau/WoW-Addons dump: it is consulted, not copied).
- Phrases that violate the quality rules in section 3.
- Changes that break the tests or that mix several steps.

Thanks for the help.
