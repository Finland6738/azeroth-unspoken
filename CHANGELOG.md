# Changelog

All notable changes to this project are recorded here.

The format follows [Keep a Changelog 1.1.0](https://keepachangelog.com/en/1.1.0/) and the project intends to follow [semantic versioning](https://semver.org/) from version 1.0 onwards. Until then, 0.x versions may change in ways that are not backward compatible. The v2 data schema of the phrase packs (step S3) is now stable and described in [PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md), but it may still change before 1.0: any changes will be announced here.

No version has been released yet: there are no distribution packages. The version in the `.toc` file is `0.1.0`.

## [Unreleased]

### Content wave W08: the dwarf, the tauren, the night elf and the human (issue #138)

The eighth content wave of [docs/content/WAVES.md](docs/content/WAVES.md). Its pools were the first row of the table
after W07: the strict need of the rogue, the priest and the mage leftovers and of the dwarf, the tauren, the night elf
and the human (2,926 texts per language). **1,259 intentions, 3,039 texts per language** (6,078 in both), written by
twelve parallel writer subagents (authors `ai-w08-<unit>`) and passed through the archive (drafts, `cli dups --state
draft` with no exact and no near duplicate, submit, owner sample, approve, export; the round trip is an empty diff). No
literary piece and no `tier` field. The addon goes from 10,070 to **11,329 intentions** and from 24,213 to **27,252
texts per language**.

- **Added: four races**, every event of the race's strict need (`race.<race>.<event>.w08.NNN`): the dwarf 291
  intentions, 701 texts per language; the tauren 281 and 688; the night elf 288 and 699; the human 305 and 709. The
  lines go to the base pack of their event family: muse, subzone and landmark in `base_exploration`; quests, flights,
  rest and reputation in `base_world`; the fight in `base_combat`; heal, buff, attack, resurrection of a companion and
  the hearthstone in `base_spells`; NPC meetings and other players' actions in `base_context`; relations in
  `base_relations`; the manual commands in `base_social`; level-up in `base_life`; a return in `base_memory`; and
  what an innkeeper, merchant, guard, flight master or trainer says to a character of that race in `base_dialogues`
  (speaker `npc`, any NPC of the role, anywhere). Every race line writes `race` at the top level (ADR 0053) and holds
  for every class of the race in Classic, both sexes, any level and any place: no named weapon kind or spell in a
  fight line (a tauren or night elf druid may be in bear form), no family or past invented for the character, sayings
  of a people attributed to a voice (49 intentions are `invented_lore` with an `attribution`).
- **The two halves of a heal and a buff** (ADR 0055): every race heal and buff line writes `castOnSelf`. Lines on
  oneself name no spell, no Light and no prayer (a race heals itself with potions, bandages and healthstones as well),
  except the few that write the gesture (`spellKind = "bandage"`, `spell = "potion"` or `"healthstone"`). Lines to
  the one healed name only what every healer of the race shares: the Light for a dwarf and a human, Elune or plain
  care for a night elf, the Earth Mother for a tauren. Every human line to someone else writes `not` the warlock's
  Health Funnel, which goes to its demon.
- **Added: the rogue, priest and mage leftovers**, in `base_classes` (`cls.<class>.<event>.w08.NNN`): the rogue 42
  intentions, 114 texts per language (low health, abilities, threats, quests, social commands); the priest 14 and 35
  (heal and buff on oneself); the mage 38 and 93 (potions, bandages and healthstones, Arcane Intellect on oneself,
  abilities, threats, quests, social commands).
- **The gap after W08** (per language): soft need 8,947, gap **0**; strict need 29,536, gap **5,821** (was 8,747);
  random need 276,398, gap **250,566** (was 253,605). **87 waves** left (the next is the first row of WAVES.md: the
  strict need of the troll, the undead, the orc and the gnome).
- **Measured.** `bench_scale --sizes 0` (every line loaded): memory 25.4 → 26.4 MB, pick 29.3 → 29.3 thousand Lua
  instructions (p95 55.1 → 55.1). `bench_trial --long 20` over seeds 1, 2 and 3: the orc warrior unchanged; the human
  paladin repeats less (repeats 6.0 → 4.7%, 6.8 → 6.3%, 4.0 → 3.8%; first exact repetition 6.34 → 8.34 h, 7.00 →
  7.34 h, 9.85 → 5.90 h, the noise of single runs); the troll mage (its mage pools) 6.5 → 4.3%, 4.2 → 6.4%, 6.7 →
  5.0% (first repetition 7.26 → 7.26 h, 11.84 → 9.09 h, 7.59 → 9.43 h). `run_tests` M2: pick 52.4 thousand Lua
  instructions (reference 42.7; W07 reported 50.2), CPU 0.67 ms.
- **Tests:** `Tests/run_tests.py` passes (TUTTI I CONTROLLI SUPERATI); counts only: base intentions 11286, lines loaded
  11293, `base_classes` 3430, `base_combat` 483, `base_context` 279, `base_life` 75, `base_dialogues` 277 in the archive.
  The four race return lines are named `mem.ret.<race>.w08.001`, as the memory test asks of every `memory_return` line.
- **Docs:** the owner's review sheet of the wave, [docs/content/reviews/W08.md](docs/content/reviews/W08.md) (25
  intentions, 2%); NEED.md, need.json and the WAVES.md table regenerated; the codec dictionaries rebuilt; ROADMAP,
  README counts, wiki Phrase Packs.
- **Known limits:** the validator's warning words match inside two proper names: "night" in "night elf" / "elfo della
  notte" (a time word) and "thunder" in "Thunder Bluff" (a weather word). In the events that describe the
  surroundings, a line not bound to a place that names them is warned, so the writers said "kaldorei", "my people"
  and "the bluff" there instead. The Italian names of some `spell` conditions of the rogue's and the mage's abilities
  are the writer's best guess; on the English client of WoW Forever only the English name matters.

### Content wave W07: the shaman, the paladin and the druid, and a heal on oneself or on someone else (issue #138)

The seventh content wave of [docs/content/WAVES.md](docs/content/WAVES.md). Its pools were the first row of the table
after C0h ([ADR 0055](docs/adr/0055-a-cast-on-oneself-and-a-cast-on-someone-else.md)): the soft need of the healers'
and the races' heal and buff pools on oneself, the strict need of the generic `heal:self` and `buff:self` pools, and
the strict need of the shaman, the paladin and the druid: **1,121 intentions, 2,651 texts per language** (5,302 in
both), written by eleven parallel writer subagents (authors `ai-w07-<unit>`) and passed through the archive (drafts,
`cli dups --state draft` with no exact and no near duplicate, submit, owner sample, approve, export; the round trip is
an empty diff). No literary piece and no `tier` field. The addon goes from 8,949 to **10,070 intentions** and from
21,562 to **24,213 texts per language**.

- **Added: three classes**, in `base_classes` (`cls.<class>.<event>.w07.NNN`): the shaman 338 intentions, 814 texts per
  language (muse, quests, the fight, Healing Wave, Chain Heal and the Healing Stream Totem, Water Breathing, Ancestral
  Spirit); the paladin 399 and 936 (muse, quests, the fight, Holy Light, Flash of Light and Lay on Hands, the
  Blessings, Redemption); the druid 356 and 837 (muse, quests, the fight in every shape, Healing Touch, Rejuvenation,
  Regrowth and Tranquility, Mark of the Wild and Thorns, Rebirth). Every class line writes `class` at the top level
  ([ADR 0053](docs/adr/0053-lines-of-the-character-only.md)) and holds for every race the class can be in Classic: a
  shaman line may name the Horde but no race, a paladin line the Light and the Alliance but no race, a druid line
  neither faction nor race (no Elune, no Earth Mother); a druid's fight line holds in caster, bear and cat form; a line
  that names an ability or a totem element writes the level it is learned at (`levelMin`).
- **The two halves of a heal and a buff** (ADR 0055). Every heal and buff line of the wave writes `castOnSelf`: the
  lines to the one healed or blessed write `castOnSelf = false` (with `hasTarget` and `friendly` when they address
  them), the lines about one's own wound or one's own preparation `castOnSelf = true`; a self line that names the Light,
  the water, the spirits, nature or a spell also writes `not` a potion or a healthstone, and the few lines about a
  potion or a healthstone write that `spell`. No line of the wave counts in both halves.
- **Added: the generic and race lines on oneself**, in `base_spells`: 19 generic intentions (`heal.w07.NNN` 34 texts,
  `buff.w07.NNN` 12) and 9 race intentions (dwarf, tauren, night elf, troll and human, `race.<race>.heal|buff.w07.NNN`,
  18 texts), all `castOnSelf = true` and neutral about the gesture.
- **The gap after W07** (per language): soft need 8,947, gap **0** (was 25); strict need 29,536, gap **8,747** (was
  11,311); random need 276,398, gap **253,605** (was 256,256). **88 waves** left (the next is the first row of
  WAVES.md: the strict need of the rogue, the priest and the mage, and of the dwarf, tauren, night elf and human).
- **Measured.** `bench_scale --sizes 0` (every line loaded): memory 24.5 → 25.4 MB, pick 29.5 → 29.3 thousand Lua
  instructions (p95 54.7 → 55.1). `bench_trial --long 20`: the orc warrior and the troll mage unchanged; the human
  paladin, whose class pools now speak more, repeats less: over seeds 1, 2 and 3 its first exact repetition comes at
  6.34, 7.00 and 9.85 h (was 6.84, 6.59 and 4.82) and 6.0, 6.8 and 4.0% of its interventions are repeats (was 8.2, 9.7
  and 8.8). `run_tests` M2: pick 50.2 thousand Lua instructions (reference 42.7), CPU 0.65 ms.
- **Tests:** `Tests/run_tests.py` passes (TUTTI I CONTROLLI SUPERATI); counts only: base intentions 10027, lines loaded
  10034, `base_classes` 3336.
- **Docs:** the owner's review sheet of the wave, [docs/content/reviews/W07.md](docs/content/reviews/W07.md) (22
  intentions, 2%); NEED.md, need.json and the WAVES.md table regenerated; the codec dictionaries rebuilt; ROADMAP,
  README counts, wiki Phrase Packs.
- **Known limits:** the Italian names in some `spell` conditions (the paladin's and the shaman's spells, the druid's
  Moonfire, Starfire and Hurricane) are the writers' best guess; on the English client of WoW Forever only the English
  name matters. The paladin's Divine Shield is "Scudo Divino" on an Italian client, and "scudo" is on the Italian list
  of buff words: there it would fire `buff`, and the paladin's buff lines speak of blessings. What `UNIT_SPELLCAST_SENT`
  gives as the target of a warlock's Health Funnel is untested: if it is empty, the warlock's funnel counts as a cast
  on oneself and could pick a generic `heal:self` line (G1 checklist, section C0h).

### C0h: a cast on oneself and a cast on someone else (issue #138, ADR 0055)

Found by content wave W06 (PR #255): the heal lines that speak to the one being healed relied on a friend being
targeted (`hasTarget`, `friendly`), so a healing potion or a healthstone drunk with a friend targeted could say "Hold
still, {target}..." to the friend, and so could a heal the character cast on itself. Nothing told a cast on oneself from
a cast on someone else.

- **Added: the condition `castOnSelf`** (`true` / `false`). `Triggers.CastOnSelf` reads the target
  `UNIT_SPELLCAST_SENT` gave for the cast, as `NS.SELF_CASTS` already did for the bandage: no target (a potion, a
  healthstone) or the character's own name is a cast on oneself, any other name a cast on someone else. Every cast event
  carries it; the rule engine reads it as a special condition, and an unknown value (any other event) matches neither
  `true` nor `false`. `/au cast` sends the test cast to a friendly target if there is one. The validator knows it.
- **Changed: 78 lines get `castOnSelf = false`, no text changed.** The 48 `heal` and 20 `buff` lines that write
  `hasTarget` and `friendly` (among them the eleven W06 listed: `heal.05`, `heal.w04.001`, `rel.heal.unknown`, the
  dwarf, gnome, human and night elf `heal.001`, `cls.priest.heal.001`, the paladin's, druid's and shaman's `heal.003`),
  and the 10 relation heal lines (`rel.heal.*`), which speak to the target.
- **Changed: the need splits heal and buff by self and other** (`need_model.json`: `cast_on_self`, the share of each
  class's casts on itself, every one a hypothesis; `tools/archive/need.py`). A pool of `heal` or `buff` has a half on
  oneself (`heal:self`) and a half on someone else (`heal:other`); a line with `castOnSelf` counts in its half, one
  without it in both, shared by their firings. A pool never cast on someone else (a warrior's heal, a hunter's aspects)
  keeps the plain event. `cli need --wave` prints the condition of each half, and WAVES.md shows `castOnSelf` among the
  conditions of a wave.
- **The need** (per language): soft gap 0 → **25**, strict gap 11,191 → **11,311**, random gap 255,815 → **256,256**;
  **89 waves** as before. The lines to someone else no longer count for the casts on oneself. The first row of WAVES.md
  is still the next wave: the shaman, the paladin and the druid, their heal pools now in two halves.
- **Tests:** a potion or a healthstone with a friend targeted (priest, paladin, warrior, mage) and a heal or buff cast on
  oneself with a friend targeted never match or pick a line with `castOnSelf = false`; a heal or buff cast on the friend
  still matches them and says one; `/au cast` with and without a friendly target; the split of the need model (the
  shares, the halves, a line counted in both halves).
- **Docs:** ADR 0055, ARCHITECTURE.md, PACK_FORMAT.md (`castOnSelf`), the writing rules of WAVES.md, G1 checklist
  section C0h, wiki Settings, NEED.md, need.json and the WAVES.md table regenerated, ROADMAP.

### Content wave W06: the priest, the hunter, the warlock and the mage, and the heal lines of every gesture (issue #138)

The sixth content wave of [docs/content/WAVES.md](docs/content/WAVES.md). Its pools were the first row of the table
after C0g ([ADR 0054](docs/adr/0054-event-rates-per-class-and-the-gestures-a-class-makes-for-itself.md)): the soft need
of the healers' and the races' heal pools, the strict need of the generic `heal`, `buff` and `rezother` pools, and the
strict need of the priest, the hunter, the warlock and the mage (the mage up to the 3,000 texts of the wave):
**1,226 intentions, 3,058 texts per language** (6,116 in both), written by twelve parallel writer subagents (authors
`ai-w06-<unit>`) and passed through the archive (drafts, `cli dups --state draft` with no exact and no near duplicate,
submit, owner sample, approve, export; the round trip is an empty diff). No literary piece and no `tier` field. The
addon goes from 7,723 to **8,949 intentions** and from 18,504 to **21,562 texts per language**.

- **Added: four classes**, in `base_classes` (`cls.<class>.<event>.w06.NNN`): the priest 359 intentions, 923 texts per
  language (heal, buff, resurrection, muse, quests, the fight); the hunter 285 and 711 (muse, quests, the fight, the
  aspects, bandages and potions, Revive Pet, the companion's call, dismissal, mood, bond and loss); the warlock 278 and
  676 (muse, quests, the fight, Health Funnel, healthstones, the soulstone, the demon's call, dismissal and loss); the
  mage 220 and 563 (muse, quests, Arcane Intellect, Amplify and Dampen Magic, the fight). Every class line writes
  `class` at the top level ([ADR 0053](docs/adr/0053-lines-of-the-character-only.md)) and holds for every race the class
  can be in Classic: a priest line that names the Light writes `not = { race = "NightElf" }`, a line about a body that
  breathes or bleeds warm writes `not = { race = "Scourge" }`, a line about the companion writes `petKind`, and a line
  that names an ability writes the level it is learned at (`levelMin`).
- **Added: the healers' soft need and the heal lines of every gesture.** The paladin, the shaman and the druid get 26
  intentions (53 texts) of heal, buff and resurrection; the seven races with a soft gap 12 intentions (26 texts) of
  heal, in `base_spells` (`race.<race>.heal.w06.NNN`); the generic pools 46 intentions (`heal.w06.NNN` 96 texts,
  `buff.w06.NNN` 6, `rezother.w06.NNN` 4). Since ADR 0054 a heal fires on a healer's spell on anyone, on a potion or a
  healthstone, on a bandage on oneself and on a warlock's Health Funnel, so every line fits all of them or narrows
  itself: a line about one's own wound writes the gesture (`spell = { "potion", "pozione" }`, `spell = "healthstone"`,
  `spellKind = "bandage"`, `spell = "health funnel"`); a line to the one being healed writes `hasTarget`, `friendly`
  and `not` the self-only gestures; a healer's line that names a prayer or a spell writes `not` a potion or a
  healthstone; a generic resurrection line writes `not` Revive Pet and the soulstone; the rest are neutral.
- **Fixed at integration** (the combined check of every writer's files, and the sample read of each writer): one
  Italian warlock line that said "visits I never made" for "guests I never invited".
- **The gap after W06** (per language): soft need 8,950, gap **0** (was 96); strict need 29,482, gap **11,191** (was
  14,195); random need 275,957, gap **255,815** (was 258,873). **89 waves** left (the next is the first row of
  WAVES.md: the strict need of the shaman, the paladin, the druid and the rogue).
- **Measured.** `bench_scale --sizes 0` (every line loaded): memory 22.1 -> 24.4 MB, pick 29.1 -> 29.5 thousand Lua
  instructions (p95 53.3 -> 54.7); in the client only the character's own class lines are kept (ADR 0053).
  `bench_trial --long 20` (seed 1): the troll mage's first exact repetition 6.50 -> 7.26 h (repeated 6.4 -> 6.5%, with
  498 -> 522 interventions), the human paladin's 6.18 -> 6.84 h (7.9 -> 8.2%, 567 -> 583 interventions: its heals now
  speak more often), the orc warrior's unchanged.
- **Tests:** the counts of the base intentions, of the phrases of the validator, of the lines loaded, of `base_classes`
  and of the companion's lines (63 -> 121).
- **Docs:** the owner's review sheet of the wave, [docs/content/reviews/W06.md](docs/content/reviews/W06.md) (25
  intentions, 2%); NEED.md, need.json and the WAVES.md table regenerated; the codec dictionaries rebuilt; ROADMAP,
  README counts, wiki Phrase Packs.
- **Known limits:** the Italian names in some `spell` conditions (aspects, Amplify and Dampen Magic, Shadow
  Protection, Holy Fire, the warlock's spells) are the writers' best guess; on the English client of WoW Forever only
  the English name matters. A heal line to the one being healed (`hasTarget`, `friendly`) can still speak when a healer
  heals itself while a friend is targeted: no condition tells a cast on oneself from a cast on another.

### C0g: event rates per class, and the gestures a class makes for itself (issue #138, ADR 0054)

Found by content wave W05 (PR #253): the need model gave every class the event rates of a three-character mix, but
`heal`, `buff` and `rezother` fire only on the character's own casts of the spells `Data/Vocabulary.lua` classifies, so
the warrior and the rogue could hardly be heard on the `buff` and `heal` lines W05 wrote for them, and the warrior, the
rogue and the mage had `rezother` pools they can never fire.

- **Added: three spell kinds** in `Data/Vocabulary.lua` (English and Italian names): `bandage` (First Aid), `weapon`
  (the five poisons by their full name, sharpening stones, weightstones) and `aspect` (a hunter's aspects).
- **Added: `NS.SELF_CASTS`** in `Systems/Triggers.lua` (`Triggers:SelfCastEvent`): a bandage on oneself fires `heal`
  for a warrior, rogue, hunter or mage (on someone else it stays silent). Out of combat, Battle Shout fires `buff` for
  the warrior, a poison or a stone fires it for the rogue, and an aspect for the hunter. When a gesture does not apply,
  nothing changes: Battle Shout in combat keeps its shout attack lines.
- **Changed:** the element of a bandage or a weapon preparation is `physical`, not the class's: a paladin's bandage
  never picks a line of the Light.
- **Changed: 71 lines get a condition, no text changed.** 26 `heal` lines get `["not"] = { spellKind = "bandage" }`:
  those that speak to someone else, of light or of a spell. 20 generic and race `buff` lines get the condition on the
  new gestures: those about a gift to someone else or a sign in the air. 6 warrior and 19 rogue `buff` lines that read
  as a buff received from someone else get it on Battle Shout or on a weapon preparation. Those 25 lines wait for a
  trigger on buffs cast by others (a follow-up).
- **Changed: the need model is per class** (`need_model.json`: `class_rates`; `tools/archive/need.py`): the factor of
  each class on `heal`, `buff` and `rezother`; 0 = the class cannot fire the event, so it has no pool. A class pool
  fires at its factor, and every other pool at the largest factor of the race's classes. The healers heal at 3 times
  the old mix rate (the measured paladin); the warrior and rogue at 0.5. No warrior, rogue or mage raises the dead.
- **Fixed:** the last wave of the plan joined the one before it even past the maximum of 3,000 texts.
- **The need** (per language): strict 28,938 → **29,482**, gap 13,476 → **14,195**; soft 8,893 → 8,950, gap 0 →
  **96** (the healers' heal pools); random 270,686 → **275,957**, gap 253,580 → **258,873**; waves 88 → **90**. The
  total grows because the old mix gave a healer a third of the heals it fires. Strict need per event: `heal` 1,000 →
  1,707, `buff` 667 → 506, `rezother` 167 → 165. The class waves: Hunter, Warlock and Mage need less, Priest, Paladin,
  Druid and Shaman more (ADR 0054 has the table).
- **Tests:** the new kinds and their Italian names (`Cure Poison` is no weapon preparation), the events every class
  fires on each gesture, in and out of combat, on itself and on someone else; that a conditioned line is never picked
  on a bandage or on Battle Shout, and still is on a buff spell; the class factors of the model, the priest's heal
  pool at six times the warrior's, no `rezother` pool for the warrior, rogue and mage, no `buff` need for a warrior
  that cannot buff, the generic heal pool at the healers' rate.
- **Docs:** ADR 0054, ARCHITECTURE.md, PACK_FORMAT.md (`spellKind`), G1 checklist section C0g, wiki The Narrator and
  Settings, NEED.md, need.json and the WAVES.md table regenerated, ROADMAP.

### Content wave W05: Ironforge, Darnassus, Thunder Bluff and Undercity, the warrior and the rogue (issue #138)

The fifth content wave of [docs/content/WAVES.md](docs/content/WAVES.md) (its pools were the first row of the table
after W04: the strict need of [ADR 0050](docs/adr/0050-need-model-near-duplicates-and-content-waves.md) for the four
capitals with the fewest lines, two texts of Stormwind City, and the first two classes, with the tiers mixed by share
of [ADR 0051](docs/adr/0051-tiers-mixed-by-share.md)): **1,335 intentions, 3,102 texts per language** (6,204 in both),
written by twelve parallel writer subagents (authors `ai-w05-<unit>`) and passed through the archive (drafts,
`cli dups --state draft` with no exact and no near duplicate, submit, owner sample, approve, export; the round trip is
an empty diff). No literary piece and no `tier` field. The addon goes from 6,388 to **7,723 intentions** and from
15,402 to **18,504 texts per language**.

- **Added: four capitals**, in their W01 packs, every event of the city (muse, quests, flights, rest, weather, the
  districts, greetings, prayers and toasts, reputation, the hours, and the first city lines of the NPC dialogues:
  `npcd_innkeeper_*`, `npcd_merchant_*`, `npcd_guard_*`, `npcd_trainer_*`, `npcd_flightmaster_*`): Ironforge
  (`eastern_ironforge`, `ifo.<event>.w05.NNN`, 188 intentions, 436 texts per language), Undercity (`eastern_undercity`,
  `und.`, 195 and 441), Darnassus (`kalimdor_darnassus`, `dar.`, 177 and 431) and Thunder Bluff
  (`kalimdor_thunderbluff`, `thb.`, 190 and 448); and two intentions of Stormwind City (`jest`, `pray`). A capital line
  never assumes a race (a gnome in Ironforge, a tauren in Undercity are as common as the city's own people): the few
  lines of "home" write `race`, the few of a visitor `not = { race }`.
- **Added: the warrior and the rogue**, in `base_classes` (`cls.warrior.<event>.w05.NNN`, `cls.rogue.<event>.w05.NNN`):
  the warrior 319 intentions, 743 texts per language (muse, battle, victory, attack, threat, heal, buff, low health,
  quests, a companion brought back, level, greetings, prayer, reputation); the rogue 264 intentions, 599 texts (muse,
  battle, victory, heal, buff, quests). Every class line writes `class` at the top level, as
  [ADR 0053](docs/adr/0053-lines-of-the-character-only.md) expects (only the character's own class is kept in
  memory); a line that names an ability learned after level 10 writes `levelMin`, no line names a talent, and a foe
  kind is named only with `ctype`.
- **Fixed at integration** (the combined check of every writer's files, and the sample read of each writer): two near
  pairs across writers (a rogue victory and a warrior quest line, a rogue and a warrior heal line), rewritten; the
  Italian "Forsaken" of the Thunder Bluff lines is "Reietti", as in the rest of the archive; sixteen class lines whose
  text claims a body that breathes, sweats or has a racing heart now carry `not = { race = "Scourge" }`.
- **The gap after W05** (per language): soft need 8,893, gap 0; strict need 28,938, gap **13,476** (was 16,478);
  random need 270,686, gap **253,580** (was 256,682). **88 waves** left (the next is the first row of WAVES.md: the
  strict need of the next classes).
- **Measured.** `Tests/bench_scale.py --sizes 0` (every line loaded): memory 19.5 → 22.1 MB, pick 24.9 → 29.0
  thousand Lua instructions (p95 43.8 → 53.3); the client keeps only the lines of the character's class (ADR 0053),
  so a character of another class does not carry the 583 new class lines. `Tests/bench_trial.py --long 20` (seed 1;
  the wave adds lines to the orc warrior's class): first exact repetition orc warrior 5.92 → 7.17 h, repeated share
  7.7 → 5.8%; troll mage and human paladin unchanged (6.50 h, 6.4%; 6.18 h, 8.1%). `run_tests` M2 pick 47.8 thousand
  instructions (reference 42.7), CPU time 0.68 ms.
- **Tests:** the counts of the base intentions, of the phrases of the validator, of the lines loaded and of
  `base_classes`; the relationship test of the narrator in battle beside a friend draws 600 picks instead of 120 (the
  mock character is a warrior, whose own battle and victory pools are much larger now), checked over four seeds.
- **Docs:** the owner's review sheet of the wave, [docs/content/reviews/W05.md](docs/content/reviews/W05.md) (27
  intentions, 2%); NEED.md, need.json and the WAVES.md table regenerated; the codec dictionaries rebuilt; ROADMAP,
  README counts, wiki Phrase Packs.
- **Known limits:** subzone names are those of the English Classic client, not yet confirmed in Forever (#36); some
  lines name districts with both spellings (`"Temple of the Moon"`, `"The Temple of the Moon"`). The hippogryph master
  of Darnassus and the bat handler of Undercity stand outside the city's zone (Rut'theran Village in Teldrassil, the
  ruins in Tirisfal Glades), so the journey lines of these two cities are arrivals on foot after a flight, and their
  `npcd_flightmaster_open` lines can hardly fire.
- **Model finding (not fixed in the wave).** The need model gives every class pool the event rates measured over a
  mix of all classes (`need.json` `rates`: `buff` 0.22 and `heal` 0.44 firings per hour in the open), but `heal` and
  `buff` fire only on the character's own cast of a spell the vocabulary classifies (`Systems/Triggers.lua`,
  `Data/Vocabulary.lua` `kind.heal`/`kind.buff`), and `buff` only out of combat. A warrior or a rogue casts no spell of
  the `buff` list (Battle Shout is a `shout`, poisons match nothing), and its `heal` fires only on a healing potion or a
  healthstone (a bandage is "First Aid"). So the 60 + 60 texts the model asks for the `buff` pools of the warrior and
  the rogue (W05 wrote 55 and 51) can hardly be heard, and their `heal` pools (90 each) fire far less often than the
  model assumes. Worth a per-class rate in the model (or zero for the events a class cannot fire) before the random
  need asks for ten times as many.

### C0f: only the lines of the character's class and race in memory (issue #138, ADR 0053)

C0e left memory as the limit at the random need: about 59 MB at login and 75 MB after visiting every area, in one
language, at 270,000 texts per language, about 80% of the resident lines being class and race lines. The addon now
keeps only those of the character. See [ADR 0053](docs/adr/0053-lines-of-the-character-only.md).

- **Changed: a line of another class or race is never registered.** A rule whose conditions ask, at their top level, a
  `class` or a `race` of the player (a value or a list of values) that leaves out the character's is not registered,
  in any pack (built-in, regional, external), and its texts are dropped when they come (`Engine:NotOwn`,
  `Engine.skipped`, `Engine:AddEntry`, `Engine:AddTexts`). The class and race are read from `UnitClass("player")`
  and `UnitRace("player")` at the first rule (`Engine:ReadOwn`); if the client does not give them, every line is
  kept, as before. The lines about another unit's class or race (`other = { class, race }`, `targetClass`,
  `targetRace`) and those with a class or race inside `not` or `any` stay. Another character is another session (a
  login reloads the interface) and loads its own lines. No new folder or pack: the condition decides, so the waves,
  the archive and external packs change nothing (PACK_FORMAT.md says what it means for a pack).
- **Added:** `/au packs` prints the class and race whose lines are loaded and how many rules and texts of other classes
  and races were left out (`Engine.ownStats`). `Packs:Settle` (on `WORLD_ENTER`) lets go the ids of the base lines left
  out once their texts can no longer come.
- **Memory** (`Tests/bench_scale.py --areas --texts 0,100000,270000 --own both`, one language, folders by area, the
  resident lines with the class and race pools of the need model, a Warrior Orc): at 270,000 texts per language 59.5 →
  23.2 MB at login, 61.2 → 24.8 MB with the first area, 74.6 → **38.4 MB** at most after every area (target about
  40 MB: met); at 100,000, 26.6 → 15.0, 27.5 → 16.1 and 33.5 → 21.2 MB; today 9.9 → 9.3 MB at login (874 rules left
  out). With today's continent folders at 270,000: 35.2 MB with the first area, 44.8 MB at most (ADR 0049 §4 splits
  the folders by area at that size). Picks and changes of area cost the same.
- **Picks unchanged:** `Tests/trace_picks.py --character X` and `--character X --own` print the same 3,000 picks for a
  Warrior Orc (with `--exact` too), a Mage Human and a Priest Scourge.
- **Tests:** `run_tests.py` loads nine characters that cover every class and race as the client does and compares their
  lines with the whole database (no line of another class or race, every line they can say with all its texts, the
  lines about other units kept, the validator unchanged, less memory); a warrior orc has no mage or human line and
  greets a dwarf with the dwarf's line; a relog to a mage human and back loads the right lines each time. Development
  installs keep every line: `Tests/MockWoWAPI.lua` sets `AZEROTHUNSPOKEN_ALL_LINES`; `load_addon(own=(class, race))`,
  `bench_scale.py --own` and `trace_picks.py --character --own` load one character.
- Docs: ADR 0053 (and an update of ADR 0052 §4), ARCHITECTURE.md, PACK_FORMAT.md, G1 checklist section C0f, wiki
  (Installation and Updating, Commands, FAQ).

### C0e: a bounded pick, whatever the number of lines (issue #138, ADR 0052)

Content wave W04 (PR #250) found the cost of a pick growing with the content: every candidate of an event was checked
and weighed, and the waves keep adding lines to the same events. A pick now costs about the same with today's lines
and with the 270,000 texts per language of the random need. See
[ADR 0052](docs/adr/0052-a-bounded-pick.md).

- **Changed: a large event is read tier by tier, and a large tier is sampled.** An event (one form) whose open groups
  of the index hold more than 64 candidates, with a tier of more than 24, is read from the groups split by specificity
  tier (`Engine.Split`, made when a pick first reads a group and extended as rules are appended): a small tier is
  checked whole; a large one is sampled, rules drawn at random without repetition and checked one at a time until 16
  hold or 48 were checked (a line in the anti-repetition window is passed over before its check). The kept rules are
  weighed, mixed by tier (place 50, situation 35, generic 15) and picked exactly as every candidate was before; the
  window keeps its size from the rules that hold, estimated. When the sample keeps nothing, every candidate is checked
  as before, so no line that could speak goes silent. Smaller events pick exactly as before:
  `Tests/trace_picks.py --exact` (`Engine.SAMPLE = false`) and `--r1` print the same 3,000 picks as `main`; the
  default trace differs by design (2,821 of 3,000, the random sequence diverges after the first sampled pick) with the
  same levels (generic 46.2% / 46.0% on `main`, situation 45.6 / 45.9, place 8.1 / 8.1).
- **Changed: the composite pick** (#100, asked first whenever the context has a situation) reads the situational lines
  of the split groups (`Engine:SituationalCandidates`) instead of merging every candidate of the event: the same lines,
  in the same order.
- **Changed: the cost of a pick is gated in Lua instructions.** The simulated M2 session of `run_tests.py`
  (`Tests/bench_m2.py`) counts the instructions of one pick in five and fails above 150% of
  `m2_pick_kinstr` in `Tests/perf_baseline.json`, on any machine. Its time is now the CPU time of the thread (not
  `os.clock`, the wall clock on Windows), as the median over the six runs; above 2 ms it is measured again before the
  check fails. The baselines were reset on purpose and `perf_baseline.json` records why (`history`).
- **Added: `Tests/bench_scale.py --areas --texts 100000,270000`**, the projection by area in texts per language
  (2.42 texts per synthetic entry; `--resident-share` 0.6 of them resident, as the need model plans), and the memory
  after the picks in both modes. `Tests/trace_picks.py --exact`.
- **Measured** (same machine and data, `main` → this change; thousands of Lua instructions per pick, mean / p95):
  - `bench_scale --sizes 0` (today's 15,402 texts per language): 34.4 / 167.0 → 24.9 / 43.7;
  - every line resident, one language (`--sizes 41285,111469`, about 100,000 and 270,000 texts): 48.6 / 273.3 →
    23.3 / 43.8 and 74.6 / 449.4 → 24.3 / 43.4; memory 46.2 → 46.4 MB and 88.8 → 89.2 MB after the picks;
  - by area (`--areas --texts`, 60% resident, the rest over 40 areas): 100,000 texts 81.9 / 340.5 → 37.6 / 81.8
    (1.41 → 0.58 ms, p95 5.05 → 1.18), 270,000 texts 131.8 / 560.7 → 45.1 / 77.0 (2.03 → 0.95 ms, p95 8.15 → 1.96);
    the mean rises 20% from 100,000 to 270,000 while events and tiers cross the sampling thresholds, the p95 does not;
    a change of area is unchanged (64 and 153 ms, spread over frames of about 3.7 ms);
  - the M2 session: 84.1 / 193.8 → 42.7 / 70.6, CPU time 1.24 → 0.71 ms; the suite's projection 34.1 / 174.1 → 24.0 /
    47.2.
- **Memory is the limit at the random need, not the pick.** With every area loaded only while the character is in it,
  270,000 texts per language take about 59 MB at login, 71 MB with an area and at most 74 MB after every area, in one
  language (100,000 texts: 27, 32 and 33 MB), most of it the resident lines (generic, situation, class, race). The class
  and race pools are about 79% of the resident texts in the need model; ADR 0052 proposes, without doing it here, to
  load only the character's class and race lines (packs by class and race, like the area packs): about 40 MB in all at
  270,000 texts per language.
- **Tests:** `Tests/TestSelection.lua`: a pick of an event with 4,005 lines costs about what one of 405 costs (and
  far less than checking every line), the shares of the levels hold within 3 points over 3,000 picks (single picks and
  a session), a session reaches most of 1,000 generic lines, five subzone lines beside thousands are still preferred,
  the window holds 30 lines, a line that holds is found when the sample misses it, rules of a new pack join the tiers
  and those of a dropped one leave them, a tier changed through a view is read, and the composite candidates are those
  of `Engine:Candidates`. Three tests that passed by the luck of the dice (the random numbers of the Lua runtimes of
  the suite are one sequence of the process, so a change anywhere moves them) no longer depend on it: `/au battlecry`
  in a fight may give a thought shown at once instead of a proposal (TestChatGateway, about 30% of the seeds on `main`
  too); a `muse` monologue comes about once in 300 picks, so the search waits 3,000 picks instead of 400; the
  monologue that must win a `rez` pick is taken out of the window of the event and the tiers are one level there, as a
  lone landmark line still gives the generic level about one draw in seven (TestDynamism).
- **Docs:** [ADR 0052](docs/adr/0052-a-bounded-pick.md), [ARCHITECTURE.md](docs/ARCHITECTURE.md) (the selection),
  the in-game checklist (C0e), ROADMAP (C0), the FAQ of the wiki (the cost of a pick).

### Content wave W04: the endgame zones, the raids and battlegrounds, and the end of the soft need (issue #138)

The fourth content wave of [docs/content/WAVES.md](docs/content/WAVES.md) (its pools were the first row of the table
after W03: the rest of the soft need of [ADR 0050](docs/adr/0050-need-model-near-duplicates-and-content-waves.md),
then the strict need of the generic lines and of Orgrimmar and Stormwind City, with the tiers mixed by share of
[ADR 0051](docs/adr/0051-tiers-mixed-by-share.md)): **1,223 intentions, 3,033 texts per language** (6,066 in both),
written by twelve parallel writer subagents (authors `ai-w04-<unit>`) and passed through the archive (drafts,
`cli dups --state draft` with no exact and no near duplicate, submit, owner sample, approve, export; the round trip is
an empty diff). No literary piece and no `tier` field. The addon goes from 5,165 to **6,388 intentions** and from
12,369 to **15,402 texts per language**.

- **Added: five regional packs, one per area**, every zone contested, so every line writes `zone` and `faction`:
  `eastern_westernplaguelands` (`wpl.`), `kalimdor_felwood` (`fel.`), `kalimdor_ungorocrater` (`ung.`),
  `kalimdor_silithus` (`sil.`) and `kalimdor_winterspring` (`wsp.`), Alliance and Horde pools: **377 intentions,
  900 texts per language**; and the Horde pool of the Eastern Plaguelands in its W03 pack (`epl.h.`, 37 intentions, 90
  texts). Every zone of Kalimdor now has an area pack of its own.
- **Added: the first lines of the raids and battlegrounds**, 51 intentions and 122 texts per language: Molten Core,
  Blackwing Lair, Zul'Gurub and Naxxramas, Arathi Basin and Alterac Valley in `eastern_dungeons`; Onyxia's Lair, the
  Ruins of Ahn'Qiraj, Ahn'Qiraj and Warsong Gulch in `kalimdor_dungeons` (`zone = "<instance>"`, no faction: a
  battleground line never assumes the character's side, a raid line never says "we").
- **Added: Orgrimmar and Stormwind City**, 445 intentions and 1,145 texts per language in their packs: the muse of
  the cities, quests, flights, rest, weather, greetings, reputation, and the first city lines of the NPC dialogues
  (`npcd_innkeeper_*`, `npcd_merchant_*`, `npcd_guard_*`, `npcd_trainer_*`, `npcd_flightmaster_*`).
- **Added: generic lines**, 313 intentions and 776 texts per language with no layer condition (true for any
  character, anywhere): 383 texts of `muse` in `base_monologues` and `base_exploration`, quests, subzones, flights,
  weather changes and landmarks in `base_world`, fights in `base_combat`, `base_spells`, `base_relations` and
  `base_context`.
- **Added: 17 landmarks** in `Data/Landmarks.lua` for these zones (Chillwind Camp, the Bulwark, Andorhal, Caer
  Darrow, Talonbranch Glade, Bloodvenom Post, the Emerald Sanctuary, Jaedenar, Marshal's Refuge, Fire Plume Ridge, the
  Lakkari Tar Pits, Cenarion Hold, the Scarab Wall, Southwind Village, Everlook, Starfall Village, Lake Kel'Theril).
- **Fixed at integration** (the combined check of every writer's files, and the sample read of each writer): one near
  pair across writers (the merchants' farewells of the two capitals); the Italian name of Stormwind and Ironforge kept
  in English ("Roccavento", "Forgiardente") in the Stormwind lines, as the brief asks and the other writers did; a
  Horde line of the Eastern Plaguelands that said the Horde had no farms in Lordaeron (untrue for the Forsaken); one
  Italian variant that added a "somewhere" the English did not say; the generic `pet_dismiss` line written with no
  condition now carries `combat = false` (every line of `base_relations` declares one).
- **The gap after W04** (per language): soft need 8,893, gap **0** (was 1,110): the soft need is met; strict need
  28,938, gap **16,478** (was 19,480); random need 270,686, gap **256,682** (was 259,715). **89 waves** left (the next
  is the first row of WAVES.md: the strict need of the other capitals and of the first classes).
- **Measured.** `Tests/bench_scale.py --sizes 0`: memory 17.1 → 19.5 MB, pick 24.1 → 34.4 thousand Lua instructions
  (p95 62.1 → 167.0). `Tests/bench_trial.py --long 20` (seed 1; the wave adds lines to Orgrimmar and
  Stormwind City): first exact repetition orc warrior 4.42 → 8.60 h, troll mage 5.88 → 7.86 h, human paladin 5.76 →
  6.59 h; repeated share 11.3 → 7.9%, 9.3 → 7.6%, 14.2 → 10.1%. The wall-clock pick of the simulated sessions is
  slower (see the engine finding): the M2 check of `run_tests` (mean pick under 2 ms) passed at 1.75 ms in one run and
  failed at 2.47 ms in another on a busy machine, where main itself measures 2.1-2.5 ms.
- **Tests:** the counts (the combat, context and companion lines too); the C0b test of the sources visits all
  thirty-nine areas with lines (98 sources); the frames test still travels to Silithus, which now has a pack of its
  own, so it first lets the drop of that area run over its frames before it looks at the half-built Durotar; the need
  report test accepts a first wave of the strict need once the soft need is met, and expects the lines of Molten Core.
- **Docs:** the owner's review sheet of the wave, [docs/content/reviews/W04.md](docs/content/reviews/W04.md) (24
  intentions, 2%); NEED.md, need.json and the WAVES.md table regenerated; the codec dictionaries rebuilt; ROADMAP,
  README counts, wiki Phrase Packs.
- **Known limits:** subzone, landmark and target names are those of the English Classic client, not yet confirmed in
  Forever (#36). The raid and battleground lines are in the dungeon packs of their continent: inside an instance the
  continent is read from the map's parents, not verified in the client, and if it reads as none the packs built before
  entering stay. A battleground is often joined from the other continent (Warsong Gulch from the Eastern Kingdoms),
  and then its lines are silent until the continent is read. The Horde has no flight master in the Western
  Plaguelands in Classic: its journey lines are arrivals by road.
- **Engine finding (not fixed in the wave).** The pick cost of the scale bench grew by 43% on average and 2.7 times at
  p95 with this wave, much more than W03 (no change with 1,081 intentions): the new lines are generic (the `muse` pool
  went from 65 to 448 texts) and in Orgrimmar, whose pack is built with Durotar, the area the bench plays, so the
  generic level of every pick and the rules of the built area hold many more candidates. The pick seems to grow with the size of the pools of the event it scores; with the
  waves left (most of them generic, capital and class pools of hundreds or thousands of texts) it should be measured
  against the R1 targets before the pools grow much further.

### Content wave W03: fifteen contested zones, the other side of Stranglethorn, and the first lines of the dungeons (issue #138)

The third content wave of [docs/content/WAVES.md](docs/content/WAVES.md) (its pools were the first row of the table
after W02, the soft need of [ADR 0050](docs/adr/0050-need-model-near-duplicates-and-content-waves.md) with the tiers
mixed by share of [ADR 0051](docs/adr/0051-tiers-mixed-by-share.md)): **1,081 intentions, 2,545 texts per language**
(5,090 in both), written by twelve parallel writer subagents (authors `ai-w03-<unit>`) and passed through the archive
(drafts, `cli dups --state draft` with no exact and no near duplicate, submit, owner sample, approve, export; the round
trip is an empty diff). No literary piece and no `tier` field. The addon goes from 4,084 to **5,165 intentions** and
from 9,824 to **12,369 texts per language**.

- **Added: fifteen regional packs, one per area**, every zone contested, so every line writes `zone` and `faction`:
  `kalimdor_desolace` (`des.`), `kalimdor_dustwallowmarsh` (`dwm.`), `kalimdor_moonglade` (`mgl.`, Alliance),
  `kalimdor_azshara` (`azs.`), `kalimdor_tanaris` (`tan.`), `kalimdor_feralas` (`fer.`), `eastern_arathi` (`ara.`),
  `eastern_alterac` (`alt.`), `eastern_badlands` (`bad.`), `eastern_searinggorge` (`sgg.`), `eastern_hinterlands`
  (`hin.`), `eastern_swampofsorrows` (`sos.`), `eastern_blastedlands` (`bla.`), `eastern_burningsteppes` (`bst.`),
  `eastern_easternplaguelands` (`epl.`, Alliance): **902 intentions, 2,147 texts per language** (ids
  `<prefix>.<a|h>.<event>.NN`), and the Alliance pool of Stranglethorn Vale in its W02 pack (`stv.a.`, 43 intentions,
  99 texts).
- **Added: the first lines of the five-player dungeons**, 136 intentions and 299 texts per language for all nineteen
  (Ragefire Chasm to Scholomance), with `zone = "<instance>"` and no faction. They go to one pack per continent,
  `kalimdor_dungeons` and `eastern_dungeons`, built with the continent: an instance has no area of its own
  (ADR 0048), so the continent's packs are the ones kept while the character is inside.
- **Added: 33 landmarks** in `Data/Landmarks.lua` for these zones (Nijel's Point, Shadowprey Village, the Kodo
  Graveyard, Theramore Isle, Brackenwall Village, Nighthaven, Talrendis Point, Valormok, the Ruins of Eldarath,
  Gadgetzan, Steamwheedle Port, Feathermoon Stronghold, Camp Mojache, Refuge Pointe, Hammerfall, Stromgarde Keep,
  Strahnbrad, Dalaran, Kargath, Angor Fortress, Thorium Point, the Cauldron, Aerie Peak, Revantusk Village,
  Jintha'Alor, Stonard, the Pool of Tears, Nethergarde Keep, the Dark Portal, Morgan's Vigil, Flame Crest, Light's Hope
  Chapel, Tyr's Hand).
- **Fixed at integration** (the combined check of every writer's files, and the sample read of each writer): one exact
  and six near pairs across writers, a new over-used Italian opening ("Ancora in piedi" again: six variants reworded),
  two battle lines with `ctype = "dragonkin"` (the engine reduces the client's "Dragonkin" to `dragon`, so they could
  never fire), Alliance cries "For the Wildhammer!" that assumed a Wildhammer character, the Italian name of the
  Explorers' League kept in English as the brief asks, and one Italian tense.
- **The gap after W03** (per language): soft need 8,893, gap **1,110** (was 3,643); strict need 28,938, gap **19,480**
  (was 22,021); random need 270,686, gap **259,715** (was 262,260). **90 waves** left (the next is the first row of
  WAVES.md: the endgame zones, the raids and the rest of the soft need).
- **Measured.** `Tests/bench_scale.py --sizes 0`: memory 14.1 → 17.1 MB, pick 24.2 → 24.1 thousand Lua
  instructions. `bench_trial` is not rerun: the wave adds no line to the areas of the trial slice.
- **Tests:** the counts; the C0b test of the sources visits all thirty-four areas with lines and reads the two
  dungeon files (88 sources).
- **Docs:** the owner's review sheet of the wave, [docs/content/reviews/W03.md](docs/content/reviews/W03.md) (22
  intentions, 2%); NEED.md, need.json and the WAVES.md table regenerated; the codec dictionaries rebuilt; ROADMAP,
  README counts, wiki Phrase Packs.
- **Known limits:** subzone, landmark and target names are those of the English Classic client, not yet confirmed in
  Forever (#36). Inside an instance the continent is read from the map's parents, not verified in the client: if the
  region reads as none, the packs built before entering stay (the dungeon lines of that continent included). The need
  model asks for journey lines in pools whose side has no flight master in Classic (Alterac Mountains, the Alliance in
  the Badlands and the Swamp of Sorrows, the Horde in the Blasted Lands): those lines are arrivals by road.

### Content wave W02: thirteen zones, the level bands, and the rest of the soft need of the homes and layers (issue #138)

The second content wave of [docs/content/WAVES.md](docs/content/WAVES.md), on the soft need of
[ADR 0050](docs/adr/0050-need-model-near-duplicates-and-content-waves.md) with the tiers mixed by share of
[ADR 0051](docs/adr/0051-tiers-mixed-by-share.md): **1,110 intentions, 2,666 texts per language** (5,332 in both),
written by twelve parallel writer subagents (authors `ai-w02-<unit>`) and passed through the archive (drafts,
`cli dups --state draft` with no exact and no near duplicate, submit, owner sample, approve, export; the round trip is an
empty diff). No literary piece and no `tier` field. The addon goes from 2,974 to **4,084 intentions** and from 7,158 to
**9,824 texts per language**.

- **Added: thirteen regional packs, one per area** (each zone is an area of its own): `kalimdor_barrens` (`bar.`),
  `kalimdor_darkshore` (`dks.`), `kalimdor_ashenvale` (`ash.`), `kalimdor_stonetalon` (`stm.`),
  `kalimdor_thousandneedles` (`tng.`), `eastern_lochmodan` (`lmd.`), `eastern_westfall` (`wsf.`), `eastern_redridge`
  (`rdg.`), `eastern_duskwood` (`dsk.`), `eastern_silverpine` (`slp.`), `eastern_wetlands` (`wet.`), `eastern_hillsbrad`
  (`hil.`), `eastern_stranglethorn` (`stv.`): **757 intentions, 1,831 texts per language** (the speak key, fights,
  wounds, quests, subzones, landmarks, flights, NPCs met, weather). A contested zone has a pool per faction (its lines
  write `faction`): Ashenvale, Stonetalon Mountains and Thousand Needles both sides, Hillsbrad Foothills both sides, the
  Wetlands the Alliance and Stranglethorn Vale the Horde (their other side is in the next wave). A line of a zone that
  belongs to one side writes that `faction` when it speaks as one of its people.
- **Added: 21 landmarks** in `Data/Landmarks.lua` for these zones (Camp Taurajo, Auberdine, Astranaar, Splintertree Post,
  Sun Rock Retreat, Stonetalon Peak, Freewind Post, Mirage Raceway, Thelsamar, Stonewrought Dam, Moonbrook, Stonewatch,
  the Sepulcher, Pyrewood Village, Menethil Harbor, Dun Modr, Southshore, Tarren Mill, Grom'gol Base Camp, Booty Bay,
  Nesingwary's Expedition; the Crossroads, Ratchet, Sentinel Hill, Lakeshire, Darkshire and Raven Hill Cemetery were
  there).
- **Added: the level bands** (118 intentions, 303 texts per language, in the base packs of their events): from the green
  beginner of levels 1-10 to the veteran at 60, with no level number, zone, class or race in the text.
- **Added: the rest of the soft need of the homes and layers**: the starting zones and capitals (101 intentions, 245
  texts, ids `<prefix>.<event>.w02.NN`), the classes (20 intentions, 40 texts: heals, blessings, pets), the races (48, 104:
  NPCs met, subzones, landmarks, flights, players), the factions (6, 14), the moods (36, 77) and time, weather, creature
  type and generic lines (24, 52).
- **Editorial rules added in this wave** (the brief of the writers): a text that says in the present that the sun, the
  moon or the stars are out writes `time` (or says it differently); an Italian text keeps the client's English names
  (the Syndicate, the Night Watch, Dark Iron, as Defias); no invented family or past for the character. Fixed at
  integration: six cross-writer near pairs (the writers checked their own files only), a new over-used Italian opening
  ("Ancora in piedi"), lines that claimed more than their conditions (a gnoll that is always a poacher, a quest that is
  always against the elves, a Night Watch helper with no faction), and a second variant for the 27 intentions written
  with one.
- **The gap after W02** (per language): soft need 8,893, gap **3,643** (was 6,205); strict need 28,938, gap **22,021**
  (was 24,667); random need 270,686, gap **262,260** (was 265,351). **91 waves** left (the next is the first row of
  WAVES.md: Stranglethorn for the Alliance, Desolace, Dustwallow Marsh, Arathi, Badlands, Alterac, Tanaris...).
- **Measured.** `Tests/bench_scale.py --sizes 0`: memory 11.8 → 14.1 MB, pick 22.3 → 24.2 thousand Lua instructions
  (bigger pools; the suite's projection 24.7 thousand against the 20.2 reference, no warning). `Tests/bench_trial.py
  --long 20`, over seeds 1-4, main → W02: the share of repeated lines falls for all three characters (orc warrior 12.2 →
  11.9%, troll mage 12.7 → 11.1%, human paladin 14.3 → 13.7%); the first exact repetition comes later for the human
  paladin (3.60 → 5.33 h on average) and a little sooner on average for the orc warrior (5.15 → 4.84 h) and the troll
  mage (5.41 → 5.23 h), within the spread of the seeds (3.5-7.0 h): W02 added only a few lines to Durotar and Orgrimmar.
- **Tests:** the counts; the C0b test of the sources visits all nineteen areas with lines (54 sources); the test of a
  change of area spread over frames goes through Silithus (The Barrens has an area of its own now); `/au packs` may list
  other released areas between Durotar and Kalimdor. Two tests that the order of the picks on Linux made fail in CI are
  made robust (no change to the engine): the share of the "says" and "murmurs" frames in TestSelection was about 9-10%
  in its mix of events since R3a (7.7-10.4% by seed, on `main` too), so it now pools five seeds and keeps a margin
  (under 12%; the R3 target of 10% stays on M2, 6.3%); the speak-key flow of `run_tests.py` waits for a `/say`
  proposal, since an emote kept back by the Gateway's spacing can also wait as one.
- **Docs:** the owner's review sheet of the wave, [docs/content/reviews/W02.md](docs/content/reviews/W02.md) (22
  intentions, 2%); NEED.md, need.json and the WAVES.md table regenerated; the codec dictionaries rebuilt; ROADMAP,
  README counts, wiki Phrase Packs.
- **Known limits:** subzone, landmark and target names are those of the English Classic client, not yet confirmed in
  Forever (#36). The need model puts a `landmark` line with a tag and no zone into no pool, so the generic `landmark`
  pool counts only the untagged line. The Thousand Needles Alliance pool asks for flights, and the Alliance has no flight
  master there in Classic: its journey lines are arrivals.

### The tiers mixed by share, and data files under Lua's limit of constants (issue #138)

Two engine fixes found by content wave W01 (PR #246); owner decision of 2026-11-04 for the first;
[ADR 0051](docs/adr/0051-tiers-mixed-by-share.md).

- **Changed: every level of specificity keeps a share of the picks** (`Engine.TierPool`, `Engine.TIER_SHARES`). The pick
  kept only the most specific tier with three lines not used recently: once the waves filled the class, race and zone
  pools of an event beyond the anti-repetition window (30 picks), its generic lines, monologues included, were never
  reached again (an orc warrior in Durotar after W01). Now the tiers form three levels, **place** (zone, subzone,
  landmark) 50, **situation** (class, race, faction, mood, time, weather, level band...) 35, **generic** 15; the pick
  draws one level by share, renormalised over the levels that have a line not used recently, then weighs its lines as
  before (weights, anti-repetition window and variants unchanged). Inside the place level the most specific tier still
  wins while it has three fresh lines; a level with fewer competes in the level below; the generic level stands with
  one. Specific lines stay preferred and no level with usable lines goes silent. An event with lines in one level only
  picks as before, with no extra random number.
- **Picks change by design.** `Tests/trace_picks.py`: 2,787 of 3,000 seeded picks differ from `main` (generic
  38.2% → 50.5%, situation 58.5% → 47.3%, place 3.3% → 2.2%: the trace's events and places have few place lines yet).
  New options: `--levels` prints that split, `--one-level` (`TIER_SHARES = { [0] = 1 }`) gives back the pick of ADR 0029
  and prints **the same 3,000 picks as `main`**; `--r1` is still identical to `main`. The `tier = 1` the trial slice and W01
  wrote on the zone lines of fights, people and manual events is no longer needed (WAVES.md, step 4); those lines keep it.
- **Changed: the need model plans with the same shares** (`tools/archive/need.py`, `need_model.json` `tier_shares`,
  checked against the engine). Each level the event plans answers its share, renormalised; the weights of `layers` split
  the situation share; a layer that does not hold in a slot (no mood, no weather inside) leaves its share to its level.
  Need per language after W01: strict **28,938** (30,347), soft **8,893** (7,341), random **270,686** (284,731); gap
  6,205 / 24,667 / 265,351; **92 waves** left (96). Place pools grow (8,455 → 11,563 strict), class (10,649 → 7,805) and
  generic pools (2,058 → 1,513) shrink. NEED.md, need.json and the WAVES.md table regenerated.
- **Fixed: "constant table overflow".** Lua 5.1 keeps at most 262,143 constants in one function, and a data file is one.
  - The synthetic archive (`Tests/SyntheticArchive.lua`) writes its entries in blocks of 5,000, each a function of its
    own: `Tests/bench_scale.py --sizes 50000` runs again.
  - The exporter (`tools/archive/store.py`) writes at most 20,000 entries in a texts file (about 70,000 constants);
    past it the new entries of the pack and language go to `<name>_2.lua`, added to the `.toc` after the last file.
    What is registered does not change and the archive reads it back. A file over 200,000 constants is refused before
    anything is written. Today's largest file has 1,668 constants.
- **Measured.**
  - `Tests/bench_scale.py --sizes 0,10000,50000 --langs enUS` (one synthetic archive for both, `--archive-dir`): 50,000
    entries compile and load again: **42.4 MB** (642 B per entry; ADR 0048 measured 38.9 MB and 641 B before W01 grew
    the base from 9.9 to 11.8 MB), a pick **77.4 thousand instructions** (p95 139.1) against 76.7 (137.4) with the old
    tiers on the same archive: +0.9%; 10,000 entries 18.9 MB, 37.4 thousand. Both languages at 50,000: 60.6 MB.
  - `--areas` (300,000 entries in one language, 30,000 resident, 40 areas of 6,750; it ran before this change too):
    folders by area **37.6 MB** with the first area, at most **71.2 MB** after every area, 66.3 MB at the end (sources
    kept 31.7 MB); a change of area about 184 frames of **3.54 ms** on average (p95 4.07, max 7.71 ms; 11.2 ms mean,
    15.9 max in the frames that load a folder); picks in the last area 70.2 thousand instructions (p95 118.4). ADR 0049
    measured 36.2 / 69.0 MB and 2.90 / 3.96 / 7.76 ms before W01. With one folder per continent (the layout of
    the download today): 67.8 MB with the first area, 60.5 MB after every area, the frames that load a continent's folder
    154 ms on average (256 ms at most), as before.
  - `Tests/bench_trial.py --long 20`, the same machine, `main` → this change: first exact repetition orc warrior
    3.35 → **4.51 h**, troll mage 5.09 → **5.68 h**, human paladin 3.75 → **3.85 h**; texts repeated in 20 hours
    19.0% → **12.3%**, 16.4% → **13.5%**, 21.5% → **14.2%**: the generic lines widen the choice again.
  - Run-tests projection: 22.6 thousand instructions per pick against the 20.2 reference, no warning.
- **Tests:** TestSelection (a generic line reachable when the specific pools hold 80 lines; the shares over 2,000 picks,
  renormalised, as data; one level = the old pick), TestScale (a narrowed pool may be the generic level), TestDynamism (the
  monologue test no longer lifts the tiers), TestCompanion (any unhappy pet line, not one variant drawn by luck),
  check_archive (the model's shares are the engine's; the shares by slot; constants per file; the split of a full
  texts file round-trips).
- **Not verified in the client.** The shares are hypotheses to tune with `/au prof`.

### Content wave W01: the other starting areas and capitals, the classes, the races, the factions and the moods (issue #138)

The first content wave of [docs/content/WAVES.md](docs/content/WAVES.md), on the soft need of [ADR 0050](docs/adr/0050-need-model-near-duplicates-and-content-waves.md):
**1,006 intentions, 2,515 texts per language** (5,030 in both), written by ten parallel writer subagents (authors
`ai-w01-<unit>`) and passed through the archive (drafts, `cli dups --state draft` with no exact and no near duplicate,
submit, owner sample, approve, export; the round trip is an empty diff). No literary piece. The addon goes from 1,968 to
**2,974 intentions** and from 4,643 to **7,158 texts per language**.

- **Added: eight regional packs, one per area**, as the trial slice: `eastern_dunmorogh` and `eastern_ironforge` (area
  `dunmorogh`), `eastern_tirisfal` and `eastern_undercity` (`tirisfalglades`), `kalimdor_mulgore` and
  `kalimdor_thunderbluff` (`mulgore`), `kalimdor_teldrassil` and `kalimdor_darnassus` (`teldrassil`): 29-30 intentions and
  64-69 texts per language each (the speak key, quests, subzones, flights, NPCs, fights, weather, rest, returns), ids
  `dmo.`, `ifo.`, `tir.`, `und.`, `mul.`, `thb.`, `tel.`, `dar.`. Durotar, Orgrimmar, Elwynn Forest and Stormwind City get
  their missing flights and quests (25 intentions).
- **Added: five landmarks** in `Data/Landmarks.lua`: Coldridge Valley, Kharanos, Deathknell, Camp Narache, Shadowglen.
- **Added: the lines of every class** (`base_classes`, 418 intentions, 1,079 texts per language: the speak key, battle,
  victory, wounds, attacks, heals, blessings, threats, quests, pets), **of every race** (263 intentions, 683 texts, in the
  base packs of their events), **of both factions** (21 intentions, 52 texts), **of seven moods** (city, fire, desert,
  plague, jungle, plains, dark: 39 intentions, 92 texts) and generic quest and weather lines (7 intentions, 16 texts).
- **Changed: `cli need`** has a third target, the **random need** (owner decision of 2026-11-02, ADR 0050: the pick stays
  random, no exhaustive memory of what was said): every pool needs its strict firings times `random_factor(0.05)`, about
  10, for at most 5% of exact repeats in 400 hours; the waves go soft, then strict, then random. Total **284,731** texts
  per language.
- **The gap after W01** (per language): soft need 7,341, gap **4,038** (was 6,539); strict need 30,347, gap **25,951**
  (was 28,462); random need 284,731, gap **279,155**. **96 waves** left (the next is the first row of WAVES.md).
- **Docs:** the owner's review sheet of the wave, [docs/content/reviews/W01.md](docs/content/reviews/W01.md) (20
  intentions, 2%); NEED.md, need.json and the WAVES.md table regenerated; ADR 0050 (owner decision), ROADMAP, README
  counts, wiki Phrase Packs.
- **Known limits:** subzone names are those of the English Classic client, not yet confirmed in Forever (#36). Some pools
  of the model can hardly fire in the client: the flights of zones without a flight master (Dun Morogh, Mulgore, Elwynn
  Forest, Durotar) and the flight starts of Undercity (the bat handler stands in the ruins, zone Tirisfal Glades).

### C0c: the need of the content, a near-duplicate check, and the plan of the content waves (issue #138)

The last technical step of the content-scale plan: tools that tell the content sessions what to write, how much, in
which order, and that refuse the same text twice. No change to the addon. [ADR 0050](docs/adr/0050-need-model-near-duplicates-and-content-waves.md).

- **Added: `cli need`**, the need model (`tools/archive/need.py`, `need_model.json`): for every event x context pool (a
  place, class, race, faction, mood, time, weather, creature or level band of an event, or its generic lines) the texts
  it needs so that no character hears one twice in 400 hours (strict) or in any 40 (soft), from the measured event mix
  at the default pace (22.5 interventions per hour) and the lives of 16 typical characters (level paths of both
  factions, capitals, dungeons, then 200 hours at level 60), against the usable texts the archive holds. `--write`
  writes [docs/content/NEED.md](docs/content/NEED.md), `docs/content/need.json` and the table of
  [docs/content/WAVES.md](docs/content/WAVES.md); `--wave W01` prints a wave's pools and conditions.
  Today: **30,347** texts per language (strict), **7,341** (soft); gap 28,462 and 6,539. With today's random pick the
  same pools would need about 137,000 texts for at most 10% of repeats in 400 hours, 284,000 for 5%: the owner's range.
- **Added: `Tests/bench_trial.py --mix H [--model]`**: the event mix of a day of play (quests, levels, merchants and
  flights added to the route) through the real Narrative Director, written into the need model.
- **Added: near duplicates** (`tools/archive/neardup.py`): `cli check` fails on an exact duplicate (the same words in one
  language, unless the twins are allowed in `thresholds.json`) and warns of near duplicates (word 3-grams, Jaccard at
  least 0.5) and of over-used 3-word openings and closings; `cli dups --state draft` lists those of a wave's drafts.
  Prefix filtering finds every pair: today's 9,286 texts in under a second, 300,000 synthetic texts in about 37 s.
  Today: 6 near pairs in English and 4 in Italian, 2 allowed exact twins (the female and male lines of a friend).
- **Added: `cli sample`**, a seeded review sheet of about 2% of the chosen intentions with every literary piece.
- **Added: the plan of the content waves** ([docs/content/WAVES.md](docs/content/WAVES.md)): 11 waves of about 2,500
  texts per language, the soft need first, and how to run a wave (authors, ids, archive flow, checks, owner review).

### C0b: compact area sources, and a change of area spread over frames (issue #138)

The follow-up of ADR 0048 §4: what visited areas keep is bounded, and a change of area no longer stutters.
**Nothing has run in the client**: the checks are in `docs/G1_checklist.md`, section C0, items 9-14.
[ADR 0049](docs/adr/0049-compact-area-sources-and-a-change-spread-over-frames.md).

- **Changed: regional files give their entries as a source.** `RegisterRegionalPack(key, pack, source)` and
  `RegisterRegionalTexts(key, lang, packId, source)` take the entries as Lua source in a string (`[==[ ... ]==]`); the
  12 regional files of the download are written that way (the same entries, one tab less: the engine builds exactly the
  same rules, ords, texts and index). Builder functions are still accepted. A source is cut into 4 KB pieces on its
  first build and each piece is kept **encoded** (`Core/SourceCodec.lua`: frequent words and runs of punctuation become
  one or two control bytes with `string.gsub`; dictionaries `Data/Codec.lua` and `Codec.lua` of each language folder,
  written by the new `tools/build_codec.py`). The trial slice keeps 31% (rules) and 42% (English texts) of its source.
- **Added: a bound on what visited areas keep** (`Packs.KEEP_KB`, 32 MB): past it the sources of the areas built least
  recently are let go, and those areas have no regional lines until `/reload`. `/au packs` shows the KB kept and the
  areas let go.
- **Changed: a change of area is spread over frames.** `Packs:Update` starts a job that `Packs:Step` runs from an
  `OnUpdate`, at most 4 ms of a frame (`Packs.BUDGET_MS`), never in combat. The area left leaves the selection at once
  and is freed between frames; the new area is built out of the selection (`Engine:BeginStaging`/`EndStaging`) and
  enters it whole, so no pick sees a half-built area and the general lines speak meanwhile. A change towards another
  place stops the one in progress. `/au packs` shows the frames of the last change and the longest one.
- **Measured** (`Tests/bench_scale.py --areas`, 300,000 entries in one language, folders by area; times are CPU time
  of the thread): with the first area 36.2 MB (36.4 before); after every area of both continents **69.0 MB at most
  (221 MB before)**, the sources kept at the bound (117 MB without it); a frame of a change 2.9 ms on average, 3.96 ms at p95, 7.8 ms at most,
  except the frame in which the client reads a new area's folder (11-16 ms, once per area and session). Picks unchanged:
  `Tests/trace_picks.py` byte-identical to `main` in the eight configurations of #239.
- **Changed: the archive** reads and writes the entries of a source (`tools/archive/packfiles.py`); the round trip is
  still an empty diff, and a new regional entry is written inside the string.
- **Added: `Tests/bench_scale.py --areas --form --budget --keep`**, the frames of a change measured in CPU time (wall
  time on a busy machine counts other programs).
- **Docs:** ADR 0049, update of ADR 0048, ARCHITECTURE, PACK_FORMAT (the source form, the bound, the frames), the wiki
  (Installation and Updating, Phrase Packs, Commands, FAQ), the in-game checklists (section C0, items 9-14), ROADMAP
  (row C0).

### C0: a column store for the rules, and regional packs by area (issue #138)

The first technical phase of the content-scale plan approved on 2026-11-02 (100,000-300,000 texts per language):
the engine can now hold 50,000 entries of one language in under 40 MB, and builds regional lines one area at a time.
**Nothing has run in the client**: the checks are in `docs/G1_checklist.md`, section C0.
[ADR 0048](docs/adr/0048-column-store-and-regional-packs-by-area.md).

- **Changed: rules are stored in columns** (`Engine/PhraseRegistry.lua`): a rule is a number, its `ord`; its fields
  are columns of `Engine.R` and its variants one flat array per language (`Engine.TX`). At 50,000 synthetic entries in
  one language the addon uses **38.9 MB instead of 69.9 MB** (`Tests/bench_scale.py --langs enUS`); at today's size
  8.3 MB instead of 9.5. **No pick changes**: the equivalence tests of `Tests/TestScale.lua` pass, and
  `Tests/trace_picks.py` printed byte-identical traces against `main` in the eight configurations of #239. A pick costs
  about 5-10% more Lua instructions (`Tests/perf_baseline.json`: 16.4 → 20.2 thousand at 2,000 entries; `main` itself
  measured 19.3).
- **Changed (for code and tools that read rules): views.** `Engine.byId[id]` and `Engine.Rule(r)` give a view of a
  rule, a table like the rule tables before; `pairs(Engine.byId)` shows nothing, so `Engine:Rules()`,
  `Engine:EventRules(ev)` and `Engine:PackIds(packId)` list rules. `byEvent`, the index, `Eligible`, `EligibleFor` and
  `Candidates` hold ords; `Engine:AddEntry` returns the ord; `Engine.TextList`, `TextCount`, `TextLangs`, `TextRange`,
  `OrdOf`, `IdOf`, `RuleUsable` and `Engine:CopyTexts` are new. A view's text lists are copies, and only its shape fields
  (a cooldown, `twinOf`) can be written. The systems that read rule lists (companion, nemesis, NPC dialogues, story
  arcs, the place hook, the validator, the Versi twins), the tests and the tools follow.
- **Changed: regional packs are built and dropped by area.** An area is a zone, or a capital with the zone around it
  (`Data/Places.lua`: Orgrimmar is in `durotar`, Stormwind City in `elwynnforest`); `ctx.place.area` carries it. The key
  of `RegisterRegionalPack` and `RegisterRegionalTexts` is now an area or a continent: on a change of zone, outside
  combat, the area left is dropped first and the new one built. The folders stay per continent; a folder may declare
  `## X-AzerothUnspoken-Areas` to be loaded only in its areas. `/au packs` shows the region and the area and the last
  change (rules built, ms).
- **Changed: the trial slice** (#241) is in the areas `durotar` and `elwynnforest`; every one of its 583 rules names
  its zone, so no line changes where it can be heard. The two exploration packs stay packs of their continent.
- **Changed: the archive** reads the area of a regional pack (`pack.area`, `intention.area`, `cli search --area`, a
  coverage table by area); the round trip is still an empty diff.
- **Added: `Tests/bench_scale.py --areas`**, the projection of 300,000 entries in one language loaded by area
  (`SYNTH_AREA_SOURCES` in `Tests/SyntheticArchive.lua`): 26 MB for the base and 30,000 resident entries, 36 MB with
  the first area of 6,750 entries when the folders are per area (115 MB when a whole continent's folder is loaded), a
  change of area of that size in about a second. The numbers and what they ask before the content grows (folders by
  area past about 10,000 entries per continent, a build spread over frames, a bound on the code of visited areas) are
  in ADR 0048.
- **Docs:** ADR 0048, updates of ADR 0024 and 0025, ARCHITECTURE, PACK_FORMAT (areas, the `Areas` field), the wiki
  (Installation and Updating, Commands, Phrase Packs, Interlocutor and Place, FAQ), the in-game checklists (section C0),
  ROADMAP (row C0).

### U2: interface mockups in the wiki and a tour GIF in the README

The last step of the development the owner asked for on 2026-11-02: show the interface. **Every image is an
illustrative mockup built from the addon code, not an in-game screenshot**: nothing has been tested in the real client
yet. No Blizzard art, icon, font or screenshot is used (the rules of the UI review, #195).

- **Changed: the mockups of `docs/design/mockups/`** brought up to date with `main` (81 pages and their PNG files): the
  narrator's long private reading (lines revealed one at a time, at most twelve lines, then scrolling), a verse in the
  history, a larger text size, private notices (a level reached, a letter, a song); the journal's Songbook tab and a
  piece, the nemesis stories, letters, griefs and companions among the memories; the Relationships window with its
  seventeen options, "What the addon knows" of an NPC (level, temperament, first meeting, nickname, favor, town and
  title), a Hated NPC (eternal grudge, the mark of a broken oath, a title withheld) and the identity questions of People
  met; the "Literary forms" row of the settings; the culture of origin in the Character soul window. The lines are real
  lines of the database and of the verses pack.
- **Changed: `/au help` and `/au debug` in the mockups are captured from the addon** (`tools/chat_capture.py`, the
  offline runtime of the tests), so they cannot disagree with the code; `tools/debug_output.py` is gone.
- **Added: `interface-tour.gif`** (21 windows, a few seconds each, about 2 MB), built by `make_gif.py tour` from the PNG
  files, near the top of `README.md` and `README.it.md`. `narrator-demo.gif` stays.
- **Added: the images in the wiki**: the manual pages show the mockups of their windows (The Narrator, Chat Gateway,
  Memory and Journal, Story Arcs, Relationships, First-Run Wizard, Character Soul, NPC Dialogues, Literary Forms,
  Settings, Commands, Troubleshooting, Languages, Home), each with an "illustrative mockup" caption, and a new page
  **Interface Tour** lists every window. `tools/sync_wiki.py` now copies the images a page uses into the wiki's
  `images/` folder; the wiki workflow also runs when the PNG files change. `Tests/check_docs.py` checks that every wiki
  image exists, is not a `proposed-*` review proposal and says "illustrative mockup" in its alternative text.
- **Added: `docs/design/mockups/README.md`** with the commands to rebuild everything, and `requirements.txt` with the
  pinned Pillow and lupa versions.

### R5: the trial slice, Durotar, Orgrimmar, Elwynn and Stormwind (part of issue #102)

The content half of the trial slice proposed by the analysis A1: four starting areas written in depth, to measure what
a place needs before the rest of the world is sized. Drafted by AI sessions in the project's voice (author
`ai-draft-102`) and written through the authoring archive (drafts, review, approval, export; the round trip is still an
empty diff), on the owner's decision of 2026-11-02 to finish development without in-game gates. **The in-game playtest
of #102 (two 90-minute sessions per character) is still to do**: section R5 of `docs/G1_checklist.md`. Tested with the
mock client only.

- **Added: four regional packs**, loaded with their continent and dropped when it is left, like the others (ADR 0025):
  `kalimdor_durotar` (170 intentions, 508 texts per language), `kalimdor_orgrimmar` (116, 346), `eastern_elwynn` (178,
  532) and `eastern_stormwind` (119, 355): **583 intentions and 1,741 texts per language**, in English and Italian.
  The rules are in `AzerothUnspoken_Kalimdor/Durotar.lua`, `Orgrimmar.lua`, `AzerothUnspoken_EasternKingdoms/Elwynn.lua`,
  `Stormwind.lua`, the texts in the language folders of each continent.
- **What they cover**: arrival (first visit, home ground for the area's faction, enemy ground for the other, races,
  weather, time of day, a few moods), returns (after a death, after a flight, after a long absence; light ones only after
  a good visit), every subzone of the slice (Valley of Trials, Razor Hill, Sen'jin Village, the Echo Isles, Tiragarde
  Keep, the ridges and the coast; Northshire, Goldshire and the inn, the mines, the lakes and the farms; the valleys of
  Orgrimmar and the districts of Stormwind), the speak key, weather changes, dawn and dusk, the creatures of each area in
  battle and victory, death and revival, level, quests, rest, the hearthstone and flights, the NPCs by role (guards,
  innkeepers, merchants, trainers, bankers, flight masters, quest givers) and the dialogue nodes of the inn, the guard
  (with directions at district level), the merchant, the trainer and the flight master, the manual events, and **8
  literary pieces** (two per area: a Razor Hill saying, a Sen'jin net-mender's song, an inscription at Northshire Abbey,
  a Goldshire inn rhyme, a trainers' formula of the Valley of Honor, a hawker's song of the Drag, a masons' saying and a
  canal song of Stormwind), their review steps left for the owner (`authoring/pieces.csv`). Races, classes, the faction,
  the weather and the hour are conditions inside the lines, never packs.
- **Place leads where the place is the point**: the lines of arrival, return, subzones, the speak key, weather, dawn,
  dusk, rest and flights take the specificity tier of their place; the lines of fights, people and manual events are
  marked `tier = 1`, so they compete by weight with the lines of a relationship or an NPC's temperament instead of
  silencing them (a victory beside a friend, a gruff innkeeper still sound like themselves in Durotar).
- **Variants serve every depth**: the trial lines keep their depths on the rule and none on the variants, so all three
  variants of a line can be said at any depth (a line with one variant per depth would repeat word for word at the
  default depth) and the variants stay compact strings.
- **Added: `Tests/bench_trial.py`**, the simulated playtest of the issue: an orc warrior and a troll mage in Durotar and
  Orgrimmar, a human paladin in Elwynn and Stormwind, two sessions of 90 minutes each through the client's own events
  (subzones, weather, rest, the hour of the server, a death and the return, a visit to the capital), and optionally a
  long run. Measured (three seeds, default intensity): about 25-28 interventions per hour, 56-63% of them from the trial
  packs; **no text repeated within a 90-minute session** (the criterion of A1 §6.2); 0-0.3 repeated across the two
  sessions (2-2.7 before); in 10 hours of play the first exact repetition comes after 2.8-3.3 hours (2.0-2.3 before)
  and 8-11% of the interventions repeat a text (19-21% before). Every remaining repetition is a line of the speak key
  (`muse`, about a third of the interventions). `PickEntry` p95 about 1 ms.
- **Memory** (offline, lupa): one language and one continent 7.90 MB (7.22 MB before), everything loaded 9.53 MB (7.86
  MB before).
- **Changed: the tests** that relied on a generic line where the slice now has its own (the landmark event at the Lion's
  Pride Inn, the innkeepers' temperament in Elwynn) use a place outside the slice; the counts include the new packs.
- **Added: section R5 of the in-game checklist** (`docs/G1_checklist.md`, `docs/G1_checklist.en.md`) for the owner's
  playtest, and the places with lines of their own in the wiki ([Phrase Packs](docs/wiki/Phrase-Packs.md)).
- The subzone names are those of the English Classic client and are not confirmed in Forever (#36): a wrong name only
  keeps a line silent.

### N9: phrases for the NPC relationships, second part (issue #221)

The content of the steps merged after the first part of N9: hostility (N1), the nemesis (N7), the companion pet, grief
and letters (N8), and the songbook's pieces for every culture of origin. Narration only, and nothing goes to public
chat: the lines are in the inner voice, the openers in the dialogue window, the notices and letters in the private
narrator and the journal, the literary pieces in private voices. Drafted by an AI session in the project's own voice and
written through the authoring archive (drafts, export; the round trip is still an empty diff); the pieces' editorial
records are in `authoring/pieces.csv` with their three review steps left for the owner. Tested with the mock client only.

- **Added: 18 hostility intentions** (`base_relations`, EN and IT, two variants each): the grudge by role (a guard, a
  merchant, a trainer, a quest giver you attacked), an NPC you killed, hatred (Hated) and fear, guest-right broken (a
  stoic voice), the town that heard of a betrayal by role and among friends, the other faction's town at night and in
  an ironic voice, and coming home in the rain, at night, after a long road, or to a town that remembers.
- **Added: 6 dialogue-window openers**: a guard, a merchant and a trainer who hold a grudge, the host whose roof you
  struck, a guard who heard of a betrayal, and an innkeeper who greets you home (`homeReturn`, familiarity 25).
- **Added: 21 intentions for the companion pet and grief**: the pet's call (trusted, hungry, in the rain), dismissal
  (bonded, at night), mood (a happy bonded pet, a new one off to a poor start), a demon growing familiar; grief for a
  new, a trusted pet and in a stoic voice; grief for an NPC by role (guard, merchant, trainer, quest giver), for a
  friend and for the NPC of a private vow; an ally's death for a rival, at night, in a stoic or a devout voice
  (`req:faith:devout`). Every grief line carries `topic:death`.
- **Added: 8 nemesis intentions** (`base_arcs`): the narrator at the second fall (HAUNTED), meetings in an ironic, a
  night-time and a stoic voice (SWORN only, where it counts three falls), an ironic opening, and its fall told in a
  stoic, an ironic and a silent narrator's voice.
- **Added: 21 literary pieces** in the verses pack (43 now): four songs of a nemesis's fall (a hunters' boast; an
  orcish feud chant for a nemesis that fell after three falls, `arc.from = SWORN`; a dwarven hall song; a tauren verse
  of respect), four laments (a kaldorei keening for a beast companion, a forsaken dirge and a troll shore lament for a
  group member, a human wake song for an NPC), one piece of each culture of origin in its own people's inner voice
  (human, dwarf, gnome, kaldorei, quel'dorei, orc, troll, tauren, forsaken), a tauren tale and an orcish saying told by
  an innkeeper (any chosen culture hears them), a common tale of the road, and a second song of interchangeable
  stanzas: the innkeeper's song for a newcomer, four stanzas, one a time. No invented names, every piece attributed to
  a voice, no faith named.
- **Changed: a third wording for the hostility notices** (attack, kill, guest-right, witnesses, the city, coming home
  warm and cold) and **five letters per writer**, with **guards and quest givers** writing as themselves
  (`Data/Relationships.lua`: `hostility.variants` 3, `companion.letters.variants` 5, `letters.roles`).
- **Tests:** `Tests/check_versi.py` allows a tale up to 600 bytes, counts the five innkeeper pieces and the two songs of
  stanzas, and checks that every culture of origin has a piece in its own people's voice; `TestCompanion` checks the
  letters of the two new writers.
- **Counts:** base 1,342 intentions, 1,349 loaded with the example packs (`base_relations` 234, `base_dialogues` 193,
  `base_arcs` 52); the verses pack 43 pieces. Coverage report: 1,385 intentions, 2,902 texts per language (+74 and
  +131).

### Faster picks at scale: the groups of the index checked apart (issue #138)

The p95 pick time at 50,000 entries is now under its 5 ms target, **without changing a single pick**: the same seed and context give the same line ([ADR 0024](docs/adr/0024-selection-index-compact-registry-and-bounded-memory.md), "Update: the groups of the index checked apart"). The memory target (40 MB) is not met and #138 stays open for it.

- **Changed, engine:**
  - **The groups of the index are checked apart.** A pick checks each group its context opens and merges only the eligible rules (`Engine:EligibleFor`, `Engine:CandidateGroups`, `Engine.MergeByOrd`), instead of merging thousands of candidates first. The cache of merged lists (`Engine.MERGED_MAX`) is gone. Only the generic group can hold a rule whose check draws random numbers, so the draws are the same: monologues are now always in the generic group, like rules with `chance` or a function.
  - **Conditions already false end the check at once.** A rule whose (shared) conditions the pick already found false is skipped before any other check.
  - **Cheaper checks, weights and tiers.** The common case of a usable text is read inline; the memo of the weights finds its entry with plain lookups and keeps the whole weight of a rule never used (the same number); `TierPool` deduces each tier once per conditions table.
  - `Engine:Candidates` still returns the merged list, for tests, tools and composite situations.
- **Tests:** `Tests/TestScale.lua` compares the groups checked apart with `Eligible` on the merged candidates (every event, both forms, two languages, eight contexts; the same rules, order and random draws) and checks that no keyed group holds a rule that can draw. The memo-off trace now runs the merged path. Eight `trace_picks.py` configurations (up to 20,000 synthetic rules) are byte-identical to `main`. `Tests/perf_baseline.json` follows the new instruction count.
- **Measured** (`Tests/bench_scale.py --langs enUS --archive-dir`, the same archive, median of three alternating runs; instructions are exact):
  - today's size: 15.3 → 15.2 thousand instructions per pick; 7.7 MB.
  - 10,000 entries: 0.56 → 0.49 ms, p95 1.00 → 0.78 ms (24.0 → 17.7 thousand instructions, p95 55 → 43); 18.3 MB.
  - 50,000 entries: 1.30 → 0.76 ms, p95 3.63 → 2.29 ms (59.1 → 28.4 thousand instructions, p95 187 → 127); 60.0 MB.
- **Known limits:** memory is unchanged (60.0 MB at 50,000 entries against the 40 MB target). Only a column store of the rules (no table per rule) reaches it: simulated at 37.8 MB, it would change how every system reads rules, so it waits for the in-game budget (D3, `/au prof`). The p95 of the previous measurement (10.9 ms) came from a busier machine: on this one `main` took 3.63 ms. Nothing is measured in the client yet.

### UI review leftovers and the community profile (issues #179, #180, #182, #196)

The last open parts of the UI review U1 ([#194](https://github.com/Finland6738/azeroth-unspoken/issues/194)), and the community files of the repository. Mock client only: nothing here has run in the real game (the owner decision of 2026-11-02 skips the in-game gates), so the layout is measured with `GetStringHeight()` and `GetStringWidth()` and the numbers in the tests are the review's estimates.

- **Fixed: the setup guide is laid out top-down (#179).** Every page puts each block under the one above it, measured with `GetStringHeight()`; a card (`W.Card:Fit`) is as tall as its title and description need, and the window grows when a page needs more than 480 units. The "Chat and test" page no longer lets the long automatic-sending text run over the next card or the "Try the narrator" button; the same holds for every other page and for a longer translation.
- **Fixed: buttons are sized from their labels (#180).** New `W.FitButton` (a width between a minimum and a maximum, the label cut and the whole text in the tooltip when it does not fit). The guide's Skip, Back, Next, "Try the narrator", "Open key bindings" and "Open settings" use it (the Italian "Salta - tieni i valori predefiniti" is wider than the old 200 units); so do the value buttons of the settings panel, which grow to their value up to the right margin ("on, held: confirm to send until /reload" did not fit 220 units). The Italian text of that state is a little shorter.
- **Fixed: the Relationships window lays its views under the intro (#182).** The tabs sit under the intro, measured with `GetStringHeight()`, and every view under the tabs; an intro of a third line (a larger client font, a longer translation) moves the tabs and the views down and makes the window taller, instead of running into the tabs. With the usual two lines nothing moves (tabs at 84, window 660).
- **Checked: the windows added since the review** (the journal's songbook tab and the other tabs, the culture of origin in the character soul window, the identity questions in People met, the options view with its new options): every button label fits in English and Italian and nothing laid out from the top overlaps. Nothing needed to change; `Tests/TestLayout.lua` keeps it so.
- **Added: two issue forms and a Code of Conduct (#196).** `.github/ISSUE_TEMPLATE/content_report.yml` (labels `content` and `needs-triage`: the line as shown, language, voice, where and when, what is wrong, the version line of `/au debug`) and `ingame_test.yml` (label `in-game`: client build, addon version, checklist steps, pass / fail / partial, what you saw, the `/au debug` output without names). Every form, including the feature request, repeats the privacy rule. `CODE_OF_CONDUCT.md` is the Contributor Covenant 2.1; its enforcement contact is GitHub's "Report content" or the maintainer through GitHub, never an email address. CONTRIBUTING (section 2) and the wiki page Reporting-Bugs-and-Feedback name the four forms; the checklist step R0.13 uses the in-game form.
- **Tests.** New `Tests/TestLayout.lua` (every page of the guide with and without Total RP 3, in both languages, a longer text pushing the blocks down, `W.FitButton`, the settings labels and values, the journal tabs and the soul window) and a test in `Tests/TestRelations.lua` for a longer intro; the mock has an opt-in realistic text measure (`REALISTIC_TEXT`: width- and font-aware); `Tests/check_rules.py` checks the issue forms (known labels, field ids, the privacy rule, no email address) and the Code of Conduct.
- **Not verified in the real client:** the real width of the labels in the client's fonts (the tests use 6.3 units a character), that `GetStringHeight()` of a text in a never-shown frame is what is drawn, and how the guide looks when it grows (G1: the guide's pages at text sizes and in Italian, the Relationships window with a long intro).

### The observed GUID as an identity aid for players (issue #112)

Part of the Player relationships milestone ([ADR 0047](docs/adr/0047-observed-guid-as-an-identity-aid-for-players.md); accepted as written by the owner in #130). Identity stays `Name-Realm`; the game's GUID of a player is kept next to it, never shown, and only ever used to **ask** you. Owner decision of 2026-11-02 (finish without in-game test gates): built defensively, with **GUID stability not confirmed in game** (#111, the in-game identity tests, stays open); tested with the mock client only (what still needs the real client is section ID of the [in-game checklist](docs/G1_checklist.md)).

- **Added: `seen.guid`.** For a person already in your list the GUID is read (through Compat; a secret identity is not read, a secret, malformed or creature GUID is unknown) from the group scan and the target, and stored the first time. Never shown (list, detail, export, `/au debug`), never in the narrator's context, never in the shared list. Proximity still writes nothing and asks nothing.
- **Added: two questions, never a change.** The same name with another GUID ("the same person?") and the same GUID under a new name ("merge?") become a question in the People tab, in `/au relationships identity` and in one private line; only your answer changes anything: **+** (or `identity accept <name>`) replaces the GUID or moves the record to the new name with everything in it (a name already listed refuses), **x** (or `keep <name>`) leaves it and does not ask again this session. The `user` block is never written by the software.
- **Added: guards for GUIDs that prove unstable.** Three same-name mismatches in a session stop the aid until the next login (logged in `/au debug`); the option **Identity code** (on) and `/au relationships guid on|off` turn it off; `/au relationships guid clear` drops every GUID. Removing a person, forgetting the observations and resetting drop the GUID and the open questions.
- **Changed: saved data `relationships.version` 9.** A version 8 file loads unchanged; a `seen.guid` found in an older file was never written by the addon, so it is not trusted and is dropped; malformed GUIDs go and two people never share one. An older addon reads version 9 only.
- **Docs and tests.** ADR 0047, the wiki (Relationships, Settings, Commands, Privacy and Data), ARCHITECTURE, the README commands, the checklist (section ID, EN/IT) and the roadmap row. New `Tests/TestIdentity.lua` (the same name with another GUID, a rename, secret and malformed GUIDs, forgetting, instability, the saved data, nothing leaking); the tests that fix the version follow it.
- **Not verified in the real client:** that `UnitGUID` answers for group members and the target as the dump says, that it is stable across sessions and renames, and how it behaves in secret contexts (section ID of `docs/G1_checklist.md`).

### N8: the companion pet, grief, the death of an ally and letters (issues #220, #125)

Step N8 of the NPC relationships milestone, with the ally's death of the analysis A2 (L11). A bond with the hunter's or
warlock's pet; the narrator mourns once for the pet, an NPC the character was close to and a group member; close NPCs
write letters to the journal. Owner decisions of 2026-11-01 (narration only, never chat, data-driven) and 2026-11-02
(build on the API dump and ADR 0035 without in-game probes or a two-client group test);
[ADR 0046](docs/adr/0046-companion-pet-grief-the-death-of-an-ally-and-letters-in-the-journal.md). The pet, the deaths
and the group are read from signals of the API dump, **not yet confirmed in game**; tested with the mock client only
(what still needs the real client is section N8 of the [in-game checklist](docs/G1_checklist.md)).

- **Added: the companion pet** (`Systems/Companion.lua`). The hunter's beast or the warlock's demon
  (`UNIT_PET`, its name and family; never another class's pet, never a hidden identity) gets a record by its name, with
  no GUID. The bond grows with the hours the pet is out: *a new companion*, *a familiar presence* (2 h), *a trusted
  companion* (12 h), *a bond beyond words* (40 h); each step says a line (`pet_bond`), the last two leave a permanent
  journal line. Calling and dismissing the pet (`pet_call`, `pet_dismiss`, at most once in 20 minutes each, never on
  entering the world or on a flight) and a change of a hunter's pet's mood (`UNIT_HAPPINESS`, `C_PetInfo.GetPetHappiness`:
  `pet_mood`, at most once in 15 minutes) bring a line. Option **Companion pet** (on).
- **Added: grief.** The narrator mourns once per loss, in the inner voice, after the fight: the pet's death
  (`pet_grief`: `UNIT_DIED` with its GUID, the pet dead on `UNIT_PET`, or a demon that vanished a second before its
  death event), an NPC at Friend or above found dead or dying while targeted (`npc_grief`, never one with a grudge, not
  again for 30 days, three a session), with a journal page each (*Fang fell*, *You mourned Bartleby*, kept for good).
  A grief stirs melancholy, a new bond a little joy (`Data/Emotions.lua`).
- **Added: the death of an ally (`ally_death`, #125).** `UNIT_DIED` compared with the GUIDs of the group (read on the
  roster update, never a secret identity), verified on the same unit (`UnitIsDeadOrGhost`, never a feigned death), in
  the open world, dungeons and raids (never battlegrounds or arenas): one lament per loss, five minutes between two (a
  wipe is one), a quarter of an hour for the same member, six a session. The line may name the member and follow the
  relation the user chose; the journal page (*A companion of the road fell*) keeps no name.
- **Added: laments.** With a grief, a literary piece of the event `lament` whose condition `grief` holds goes into the
  songbook (ids and times only) with a private notice, out of combat and unless the literary forms are *never*. Three
  laments in the verses pack, English then Italian (a hunters' lament for a pet, a small-town mourning verse, a lament of
  travelling companions), written through the authoring archive with metadata and editorial records; their three review
  steps are the owner's.
- **Added: letters.** At login (not a `/reload`), the closest NPC at Close friend or above not met for 21 days, never a
  foe, writes a letter: a permanent journal line read in the user's language (an innkeeper's, a merchant's, a
  trainer's or a friend's, three of each, English and Italian) and a private notice. One a login, one a week, the same
  NPC every 60 days. Never game mail, never chat. Option **Letters** (on).
- **Added: lines.** 23 intentions in `base_relations`, English and Italian, all in the inner voice, the griefs tagged
  `topic:death` (base 1289, loaded 1296). Conditions `petMood`, `petStage`, `petKind`, `grief`; placeholder `{pet}`.
- **Changed:** `relationships.version` **8** (`pets`, `letterT`, NPC `mourned` and `letter`; version 7 loads unchanged,
  an older addon reads it only); `/au relationships reset npcs` clears the pets too. N1's `UNIT_DIED` source also tells
  the new module, by GUID, never on the bus. `/au debug` has a line "Companion:". The relationships window has two more
  options (16).
- **Tests:** `Tests/TestCompanion.lua` (366 checks: the data, the private voices and the guards, the pet's call,
  dismissal, mood and bond, who has no companion, the pet's grief once per death and the demon that vanishes, the NPC's
  grief and who is not mourned, the ally's death verified and guarded (secret identity, secret GUID, feigned death,
  roster changes, battlegrounds, quota, raid), the laments, the letters and their gaps, the saved data, no GUID and no
  ally's name saved); `TestRelations`, `TestSchema`, `TestValidator`, `TestPlayers`, `TestHostility`,
  `TestLocalReputation`, `TestConfig`, `check_archive.py` and `check_versi.py` follow the new version, lines and pieces.
- **Docs:** ADR 0046 (and a note in ADR 0035), PACK_FORMAT (conditions, `{pet}`, the events), ARCHITECTURE, the wiki
  pages Relationships, Memory and Journal, Literary Forms, Settings and Privacy and Data, checklist section N8 (IT/EN),
  README (EN/IT), ROADMAP.

### N7: the nemesis and the songs of its fall (issue #219)

Step N7 of the NPC relationships milestone. An elite or rare NPC that kills the character becomes a nemesis, with a
story of its own that grows at each death by its hand and closes with its fall, and a song of that fall in the
songbook. Owner decisions of 2026-11-01 (narration only, never chat, data-driven) and 2026-11-02 (build on ADR 0035
before the N0 run); [ADR 0045](docs/adr/0045-nemesis-arcs-told-for-many-npcs-killed-by-and-the-song-of-a-fall.md).
Who killed the character and the nemesis's fall are read **without the combat log** with the recipe of
[ADR 0035](docs/adr/0035-attacks-kills-and-deaths-without-the-combat-log.md), **not yet confirmed in game**; tested with
the mock client only (what still needs the real client is section N7 of the [in-game checklist](docs/G1_checklist.md)).

- **Added: arcs told for many NPCs** (`Systems/StoryArcs.lua`). An arc may declare `instances = n` (1-5, with
  `subject = "npc"`): one story per NPC, saved as `"<id>#<npcID>"`, at most `n` at a time with slots of their own (not
  those of `arcs.maxActive`); its stories move only on their NPC's events and may close from any opened state. The arc
  itself skipped or disabled stops all of them. Two new real events for the steps: `slain` (an NPC killed the
  character) and `fall` (the character killed an NPC). Journal texts add `subjectTitle` (`{name}`); the journal lists
  the stories under way under the arc's title with their slots (**Nemeses (1 of 3)**). The archive's arc checks
  (`tools/archive/structures.py`) follow.
- **Added: the nemesis** (`Systems/Nemesis.lua`, the arc `nemesis` in `Data/Arcs.lua`). The killer is the last unit
  that held the character's aggro (`UNIT_THREAT_LIST_UPDATE`, `UnitThreatSituation` 2-3) in the last 10 seconds of the
  fight, when only one did, or the target among several; an elite, rare, rare elite or world boss in the open world
  becomes a nemesis (*The Shadow of <name>*: *the mark*, *the long shadow*, *the feud* at the next deaths). At most
  three. Meeting it again (targeting it, or it attacking) brings a line (`nemesis_meet`, at most once every half hour
  each). Its fall by the character's or their pet's hand, or with the character alone on it (N1's `UNIT_DIED` and
  `PARTY_KILL` sources tell the module, by GUID, never on the bus), closes the story: the closing line, its page in the
  journal, a permanent memory. A character who avoids the topic of death has no nemesis; `/au stories disable nemesis`
  turns them off. All the numbers and lists are data: `nemesis` in `Data/Relationships.lua`. Never in chat, no NPC
  behaves differently.
- **Added: the songs of a fall.** When a nemesis falls, a literary piece of the event `nemesis_song` goes into the
  songbook (`Songbook:Add`, ids and times only) with a private notice of its title, after the fight, unless the literary
  forms are set to *never*. Three songs in the verses pack, English then Italian, attributed to a voice: a hunters'
  victory song (a fall at the first meeting), a feud song (after a long feud), a saying of the hill folk that mourns a
  fallen foe. Written through the authoring archive with their metadata and editorial records; their three review
  steps are the owner's.
- **Added: lines.** 11 intentions in `base_arcs`, English and Italian: 7 for the steps of the nemesis's story and 4 for
  meeting it again (base 1266, loaded 1273).
- **Changed:** `arcs.version` **2** (the items `"<id>#<npcID>"`; version 1 data loads unchanged; an older addon reads
  it only). A story never begun is dropped, the arcs come before the stories in the 100 items, and at most 20 closed
  stories are kept for an arc. `/au debug` has a line "Nemesis:".
- **Tests:** `Tests/TestNemesis.lua` (142 checks: the data, the validator of arcs told for many NPCs, killed by one or
  among several, who does not count, the deeper states and the slots, the meeting and its gap, the fall by the
  character, the pet, alone or by someone else, the song after the fight and with the literary forms off, the user's
  choices, the saved data, nothing in chat, no GUID saved); `TestArcs`, `TestSchema`, `TestValidator`,
  `check_archive.py` and `check_versi.py` follow the new arc, lines and songs.
- **Docs:** ADR 0045 (and notes in ADR 0021 and 0035), PACK_FORMAT (Story Arcs: `instances`, `slain`, `fall`,
  `subjectTitle`, the nemesis data), ARCHITECTURE, the wiki pages Relationships, Story Arcs and Literary Forms,
  checklist section N7 (IT/EN), ROADMAP.

### L4: the songbook, a verse that comes back, the culture of origin (issues #122, #123, #124)

Step L4 of the literary forms milestone. The character now keeps the pieces it heard, a piece can come back as a
memory with the same text, and the user chooses the culture the character grew up in. Owner decisions D16, D17 and D19
of #130; [ADR 0044](docs/adr/0044-songbook-recall-and-reading-frames-and-the-culture-of-origin.md). Tested with the
mock client only (the owner chose to skip the in-game gates); what still needs the real client is in section L4 of the
[in-game checklist](docs/G1_checklist.md).

- **Added: the songbook** (#122, `Systems/Songbook.lua`). `cdb.songbook = { version, heard, learned, muted, favourite }`,
  each a map from a piece id to a time: **never a text** (D19). Per character, at most 300 ids and about 10 KB (the
  oldest pieces only heard go first; the user's marks stay), with its version, migration, `Sanitize` and read-only data
  from a newer version. Every literary piece shown is noted (a `lore_test` twin notes its piece); with the memory off
  nothing is. `Songbook:Add(id, "heard" | "learned")` for other systems (N7: the song of a nemesis's fall).
- **Added: the Journal tab Songbook.** The pieces by their first line, favourites first; a piece opens with its whole
  text read from the loaded pack (a song of stanzas with every stanza) and **Learn**, **Favourite**, **Mute**,
  **Forget** (two clicks). A piece whose pack is not loaded is listed by its id. A **muted** piece is never chosen
  again, by any event. `/au songbook [list / reset]`. English and Italian.
- **Added: recall and reading frames** (#123). Frames with `mode = "recall" | "reading"`, `genres` and `styles`, apart
  from the emote frames; six in `Data/Frames.lua`, first person, English and Italian. The event `lore_recall` brings
  back a piece the songbook confirms (heard at least six hours before, not muted, out of its cooldown), in the inner
  voice and with its own id: the frame takes the place of the piece's first line, the attribution, and the verses
  follow. A guard keeps it silent otherwise; never in combat, never with the literary forms set to *never* or the
  inner voice off, never in chat (D16). The Director offers it with the quiet moments (resting, a journey, dusk, night,
  a change of weather), only when the songbook has a candidate; a favourite or learned piece comes back more often.
  Validator: `loreFrameMode`, `loreFrameEvent`, `loreFrameGenre`, `loreFrameLine`, `recallLength` (errors),
  `recallFrame` (warning).
- **Added: the culture of origin** (#124, D17). A row **Culture of origin** in the character soul (a button as wide as
  the longest culture name, measured, and an `x`) and `/au soul culture <culture / ->`: chosen by hand, never from race
  or class, never from Total RP 3 or an archetype; the neutral profile clears it. Cultures in data
  (`literary.cultures`: human, dwarf, gnome, kaldorei, queldorei, orc, troll, tauren, forsaken); a `culture:<people>`
  origin must name one. A `culture:` piece weighs x1.4 in the chosen culture, x0.8 for another culture heard from
  someone else, 0 for another culture in the first person, and is never said with no culture chosen (only `common` and
  `personal` pieces). `ctx.culture` and the condition `culture`. The archive checks the declared cultures too.
- **Changed:** the Journal has one more tab (in the mock's measures the tabs take one more line, so a page of the
  session holds a row less); the soul window has one more row.
- **Tests:** `Tests/TestSongbook.lua` (240 checks: no text saved, the bounds and the saved size, Sanitize, migration and
  newer versions, mute, the guard of `lore_recall`, one id as a song and a memory, recall and reading frames, the
  Director's companions, the validator, the three cases of the culture factor and the unset culture, the Journal tab,
  the culture button); `Tests/check_archive.py` (declared cultures); `TestSoul`, `TestMemory`, `TestLiteraryMeta`
  follow the new row, tab and cultures.
- **Docs:** ADR 0044, PACK_FORMAT (cultures, the songbook and recall frames, validator codes), CONTRIBUTING (the
  attribution line and culture pieces), ARCHITECTURE, the wiki pages Literary Forms, Memory and Journal, Character Soul
  and Total RP 3, Commands, Privacy and Data, checklist section L4 (IT/EN).

### L3: literary metadata, the right moment, songs of stanzas, pieces in the archive (issues #119, #120, #127, #128)

Step L3 of the literary forms milestone. A literary piece now says what it is, what it is for and whose it is; the
validator warns when it comes at the wrong moment; a song can change its verses from one time to the next; and the
pieces are written and reviewed through the authoring archive. Owner decisions D16 and D17 of #130;
[ADR 0043](docs/adr/0043-literary-metadata-genre-matrix-interchangeable-stanzas-and-pieces-in-the-archive.md). Tested with the mock client only (the owner chose to skip the in-game gates); what still needs the
real client is in section L3 of the [in-game checklist](docs/G1_checklist.md).

- **Added: literary metadata** (#119). Rule fields `genre` (verse, song, formula, epigraph, prose, tale), `purpose`
  (remember, mourn, amuse, accompany, bless, warn, advise, celebrate) and `origin` (`common`, `personal`,
  `culture:<people>`, matched later against the culture the user chooses, never the race: D17). Closed vocabularies in
  `Data/Themes.lua` (`literary`), extendable by a pack; carried in the shared rule shape. A genre makes a rule literary
  (category `lore`, private: the Chat Gateway reads it too). No `excerpt`: literary forms never go to chat (D16).
  Validator: `badGenre`, `badPurpose`, `badOrigin`, `literaryField`, `literaryPlaceholder` (errors), `literaryMeta`,
  `verseCount` (warnings).
- **Added: the genre x situation matrix and the warning words** (#120), as data and as validator **warnings**
  (`literaryMatrix`, `literaryWord`): `amuse` never in a dark, plagued or cursed place or after a death, `mourn` never
  ironic or everyday, an `epigraph` at a ruin, a sacred place, a monument or a landmark, `accompany` on a journey; the
  night, snow, a return and faith (English and Italian) ask their condition.
- **Added: songs of interchangeable stanzas** (#127), the one exception to whole lines (ADR 0001). `kind = "stanzas"`,
  `show` 1 or 2: a frame with the refrain and `{stanzas}`, then three to six stanzas; one or two are said, in their
  order, never the same opening twice in a row. Validator errors for a wrong frame, count, verses, metre (a syllable
  estimate), languages, depth, and for any stanza of another song (`stanza*`).
- **Added: literary pieces in the archive** (#128). Columns `genre`, `purpose`, `piece_origin`, `stanza_show`; the table
  `piece_meta` with the editorial record of every piece (metre, rhyme scheme, verses, stanzas, refrain, lore reference,
  review steps metre -> lore -> originality) in `authoring/pieces.csv`, and the view `piece`; `cli piece`; `approve`
  needs the three steps; `check` and `export` report the warnings (matrix, words, the warning phrases of CONTRIBUTING.md,
  verses, records) without failing; `search --genre --purpose`; variants may keep a list of depths.
- **Changed: the verses pack** (`AzerothUnspoken_Versi`) is written through the archive: `Registry.lua`,
  `Texts_enUS.lua`, `Texts_itIT.lua` (its `Versi.lua` is gone) and `Twins.lua`, which makes the `lore_test` twins in
  code. Every piece has its metadata and its record (the 15 of L0 reviewed in PR #136); a new walking song of four
  stanzas, two at a time, on `journey`, waits for the owner's review. The hymn and the late inn song come only in the
  evening and at night (they name it); the Italian saying of trust has four verses, like the English.
- **Tests:** `Tests/TestLiteraryMeta.lua` (319 checks: fields, vocabularies, matrix and words with positive and negative
  samples, stanzas rendered and refused, the Gateway); `Tests/check_archive.py` (literary pieces: archive, record, review
  order, export, warnings); `Tests/check_versi.py` (metadata, the song of stanzas, the archive sees the same facts as the
  validator).
- **Docs:** ADR 0043 (and a note in ADR 0001), PACK_FORMAT (Literary forms, validator codes, the archive),
  CONTRIBUTING (metadata, the right moment, stanzas, the record and its review), ARCHITECTURE, the wiki page Literary
  Forms, checklist section L3 (IT/EN).

### L2: verses on several lines, rare literary forms, long private reading (issues #117, #118, #126)

Step L2 of the literary forms milestone. The engine now gives verses their shape and their rarity, and the narrator
reads long texts. Owner decisions D15, D16 and D20 of #130;
[ADR 0042](docs/adr/0042-literary-forms-category-pacing-line-breaks-and-long-reading.md). Tested with the mock client
only (the owner chose to skip the in-game gates); what still needs the real client is in section L2 of the
[in-game checklist](docs/G1_checklist.md).

- **Added: categories with their own pacing** (#118). `RegisterCategory(id, { budget, window, cooldown, minCooldown })`
  and the pack field `categories = { id = def }`, in data. Such a category paces its **phrases** on any event: the
  Director leaves them out of a spontaneous pick while the category waits (`Pacing:Closed`, `ctx.closed`). The seven
  base categories keep their tables and behave as before. Validator `badCategory`.
- **Added: the literary category `lore`.** One piece in 25 minutes and a pause of 20 at intensity 50, never two within
  10 minutes at any intensity, never in combat. A rule tagged `lore` or `genre_*` is in `lore` unless it says otherwise
  (validator `literaryCategory`). Offline simulation of four hours: 8 pieces at intensity 50, at least 30 minutes apart.
- **Added: the setting "Literary forms"** (`literary.frequency`: never, rare by default, normal), a row in the
  General section of the panel and `/au literary never|rare|normal`, in English and Italian. Normal doubles the pieces;
  never turns them off, also for `/au event lore_test`.
- **Changed: line breaks are kept** (#117). The selection no longer collapses `\n`: one verse per line, at most one
  empty line between stanzas; a text without a break comes out exactly as before (`Engine.NormalizeSpace`).
- **Changed: nothing literary and no line break reaches chat** (D16). The Chat Gateway's private guard also reads the
  category `lore`, in every mode, automatic included; every text bound for chat (`TextFor`, `Send`, the editor) turns a
  break into `" / "`. Validator warning `multilinePublic` for a break in a public voice.
- **Added: long private reading** (#126, D20). The narrator text is in a scroll box as tall as the whole text, up to
  twelve lines; a longer text scrolls with the mouse wheel (taken only when it overflows, never a click). Verses appear
  one at a time, each after the time to read the one before plus 0.8 s; "Reduce motion" shows them at once with the same
  reading time. The history keeps the line breaks (one message per line, indented). A literary form in a private voice
  may reach 600 bytes (`CHAT_LIMITS.READING`).
- **Changed: the verses pack** (`AzerothUnspoken_Versi`): every piece in the category `lore`, the attribution on the
  first line and one verse per line instead of `" / "`; `lore_test` is a `lore` event. `Tests/check_versi.py` follows.
- **Tests:** `Tests/TestLiterary.lua` (131 checks: category pacing, the validator, line breaks, chat safety in every
  mode, the four-hour pacing simulation, the reveal, scrolling, history and the setting); the mock gives line breaks a
  height and keeps scroll offsets and history messages.
- **Docs:** ADR 0042, PACK_FORMAT (line breaks, `categories`), CONTRIBUTING (literary forms rules 7 and 13 and the
  checklist), ARCHITECTURE, README (EN/IT), the wiki pages Literary Forms, The Narrator, Settings, Commands, Chat
  Gateway and First-Run Wizard, checklist section L2 (IT/EN).

### N1: hostility, grudges, betrayal, witnesses and guest-right (issue #213)

Step N1 of the NPC relationships milestone. Raising a hand against an NPC is now remembered. Narration only: no NPC
behaves differently in the game, and nothing goes to public chat. The fight is read without a combat log, with the
recipe of [ADR 0035](docs/adr/0035-attacks-kills-and-deaths-without-the-combat-log.md), which is **not yet confirmed in
game**: the owner chose to build on it before the N0 run. Decisions:
[ADR 0041](docs/adr/0041-hostility-grudges-betrayal-witnesses-and-guest-right.md). Tested with the mock client only.

- **Added: attacks the character starts** (`Systems/Hostility.lua`). A fight counts when the character struck its
  target first (auto-attack, or a spell at an attackable target not already fighting them). The target is read when it
  is chosen, so a neutral NPC that turns hostile when struck still counts as neutral. Players, pets, a target already
  busy with someone else, mobs that were hostile before the fight (left to the nemesis, N7), hidden identities and other
  units hit by area blows never count. No GUID reaches the event bus.
- **Added: grudges of named NPCs.** Only a named NPC (elite, rare, a quest boss, already known, or curated) remembers
  you one by one: it drops to **Hated** and keeps a grudge (`foe`: times, attacks, kills, host). Ordinary NPCs are never
  recorded. A kill by the character or their pet is remembered too.
- **Added: the "Eternal grudge" option** (`relations.eternalGrudge`, on by default): no meeting, quest or good word lifts
  an attacked NPC out of Hated. Off: the grudge holds 180 days after the last attack, then the gains come at a quarter.
- **Added: witnesses, betrayal and the other faction.** Friendly NPCs near on the nameplates shown are the witnesses; a
  known one thinks less of you, and only then does the word reach the town (N6). A witnessed attack on your own faction
  leaves the town wary for a month (slower trust there). The other faction's town or city remembers you as a foe as a
  whole.
- **Added: guest-right.** The innkeeper who binds the hearth is home. Attacking them, or anyone inside their inn, is the
  gravest betrayal: the whole town knows, a long mark, and a permanent journal line *Guest-right broken*. Coming back to
  the hearth's town after five days or more has its own private line, warm or cold.
- **Added: options, notices, conditions, lines.** Options **Eternal grudge** and **Hostility notices** (one private
  notice per fight, never in combat, never in chat). Conditions `relFoe`, `townBetrayed`, `townFoe`, `homeReturn`. Seven
  inner-voice intentions in English and Italian through the authoring archive (base 1,255, loaded 1,262). The NPC detail
  and `/au relationships detail` show the grudge and the keeper of the hearth.
- **Changed: `relationships.version` 7** (NPC `foe`, `home`, town `betray`, `host`, `foe`). Version 6 data load with no
  migration step. All numbers and lists are in `Data/Relationships.lua` (`hostility`, `increments.attack`,
  `attack_host`, `kill`, `attack_witnessed`).

### N9: phrases for the NPC relationships (part of issue #221)

The content of the NPC relationships milestone for the steps already merged (N2-N6). N1, N7 and N8 get their lines in
their own steps. Narration only, and nothing goes to public chat: the recall lines are in the inner voice, the openers in
the dialogue window, the notices in the private narrator. Drafted by an AI session in the project's own voice and
written through the authoring archive (drafts, export; the round trip is still an empty diff): the owner's review of the
pull request is the approval. Tested with the mock client only.

- **Added: 45 recall intentions for `relation_npc`**, in English and Italian, two or three variants each, by NPC role
  (guard, innkeeper, merchant, trainer, quest giver) and by disposition: the first meeting (at dawn, at dusk, in the fog,
  in a sandstorm, back when you were a novice, a stranger who became a close friend, a long and cold acquaintance);
  romance and the vow, subtle and rare (`topic:romance`, weight 0.5); promises (a long wait, a friend waiting, a new
  promise where an oath was broken) and oaths (remembered by a guard, a warm bond that still holds, a cold one, a town's
  inn and watch); nicknames by role and at Deep bond, favours by role and between close friends; titles (Champion, the
  watch, the inn), the word reaching a newcomer by role, and rivals (jealous, ironic, between two inns).
- **Added: 13 dialogue-window openers** (`npcd.<role>.open.*`): a second greeting by the nickname for each role, a
  welcome for whoever holds a title in the town (guard, innkeeper, merchant, flight master), a cold one after a broken oath, and a newcomer's greeting when the word
  of you is good (innkeeper) or bad (guard). `{title}` stays in the inner voice, as ADR 0040 decided.
- **Changed: a third wording for every private notice** of N2-N6 (a level changed, promises and oaths, the vow, favours,
  nicknames, the word, titles, rivals): `variants` is 3 in `Data/Relationships.lua`, with the texts in
  `Data/<lang>/RelationsUI.lua`.
- **Added: more nicknames**: a second one for each people of the classic game and two more for anyone.
- **Counts:** base 1,248 intentions, 1,255 loaded with the example packs (`base_relations` 165, `base_dialogues` 187).

### N6: local reputation, honorary titles and NPC rivalries (issue #218)

A step of the NPC relationships milestone, after N2 and building on N4's town memory. Narration only: NPCs never change
their behaviour in the game, and nothing goes to public chat. Tested with the mock client only: nothing here has run in
the real client yet (G1, steps N6.1-N6.6). The decisions are in
[ADR 0040](docs/adr/0040-local-reputation-word-titles-and-rivals.md).

- **Added: towns.** An NPC belongs to the town where you meet them: the subzone (an inn counts as its village, through
  `towns.aliases`), or the whole city in a capital. None in the open or in an instance.
- **Added: word gets around.** A quarter of every change an interaction or a promise makes to an NPC's trust, respect,
  affection or loyalty goes to the word of their town, good and bad alike, within a limit (15 per axis). The other NPCs
  there hear it at their next meeting, a newcomer all of it ("Remy has heard of you before you say a word: the talk in
  Goldshire has been kind."), and nobody hears their own share back. A broken promise reaches the giver's town even when
  you are far away.
- **Added: honorary titles.** The esteem of a town (its NPCs' dispositions and the quests turned in there) earns
  **Friend of Goldshire**, then **Champion of Goldshire**, with at least three NPCs who know you. Once: a private line
  and a permanent journal memory with no NPC name ("An honorary title: Friend of Goldshire"). A title is kept until the
  esteem falls well below it; a town that remembers a broken oath (N4) withholds it. New placeholder `{title}`.
- **Added: NPC rivalries.** Curated pairs in `Data/NPCs.lua` (`NS:RegisterRivalries`): five pairs of innkeepers who
  compete for the same travellers and the two forges of Goldshire. Become a Friend of one and the other notices at the
  next meeting, once per rival: a little less warmth (`rival_noticed`, not spread to the town) and a jealous or ironic
  line by their temperament.
- **Added: the notices, the window and an option.** All lines go to the private narrator: at most 3 a session, one per
  meeting (a title first, then a rival, then the word), dropped in combat, silent with the narrator. New option **Town
  notices** (on). The NPC detail and `/au relationships detail` show the town, the word there, your title and the
  rivals; the export lists the towns.
- **Added: conditions and lines.** `townTitle`, `townWord` (no person needed) and `relRival` (a relationship
  condition), with four IT/EN recall intentions for `relation_npc` in the inner voice (base 1,190, loaded 1,197, with N5's).
- **Changed: `relationships.version` is 6** (`towns`, the NPC fields `town`, `heard`, `rival`), after N5's version 5.
  Version 4 and version 5 data need no migration (N5's favours and nicknames are kept); an older addon now leaves
  version 6 data read-only. At most 60 towns are kept. All shares, limits,
  thresholds, titles, aliases and pairs are in `towns`, `rivalries` and `increments` of `Data/Relationships.lua` and in
  `Data/NPCs.lua`.
### N5: favours and nicknames (issue #217)

A step of the NPC relationships milestone, after N2. Narration only: NPCs never change their behaviour in the game, and
nothing goes to public chat. Tested with the mock client only: nothing here has run in the real client yet (G1, steps
N5.1-N5.7). The decisions are in [ADR 0039](docs/adr/0039-favours-and-nicknames.md).

- **Added: favours.** A named NPC at Friend or above may ask a small favour when you meet them, one the game checks by
  itself: come back (a meeting from the next day on), buy from me (merchants: a purchase on a later visit), rest at my
  inn (innkeepers: resting in their town hours later, at a login or when the rested state begins), go and see a zone (on
  the same continent and for the character's level; entering it is noted, the next meeting completes it). It completes
  by itself: a reward row (`favour_done`, not counted as a meeting), a journal line with no name ("A favor done for a
  friend") and a private notice. One open favour per NPC, three in all, two asked a session, three days of rest per NPC
  after one; a favour not done in its days lapses without a word and without a cost. A favour is asked only when the
  private narrator can say it.
- **Added: nicknames.** A named NPC at Close friend or above gives the character a nickname once, from curated EN/IT
  lists: the deeds first (quests handed to that NPC, favours done for them, a long road together), otherwise the
  character's class and race, or one for anyone; in Italian the form follows the character's sex. The private narrator
  says it, the journal keeps it ("A nickname: Anvil"), and the NPC's lines use it through the new placeholder
  `{nickname}` and the condition `relNick`.
- **Added: content.** Five dialogue-window openers that greet by the nickname (flight master, guard, innkeeper,
  merchant, trainer) and two recall intentions for `relation_npc` (`rel.npc.nickname`, `rel.npc.favour.open` with the
  condition `relFavour`), in Italian and English: base 1,186 intentions, 1,193 loaded with the example packs.
- **Added: the window and two options.** The NPC detail and `/au relationships detail` show the nickname, the open
  favour with the days left and the favours done. New options **Favors** and **Nicknames** (both on).
- **Changed: `relationships.version` is 5** (the NPC fields `favour`, `favourT`, `favourN`, `quests`, `nick`). Version 4
  data needs no migration; an older addon now leaves version 5 data read-only. NPCs with an open favour or a nickname are
  never dropped by the compaction. Templates, destinations, lists and every number are in `favours`, `nicknames` and
  `increments` of `Data/Relationships.lua`. In-game English uses the American spelling ("favor"); code and data keep
  "favour".

### N4: promises, oaths and oathbreakers (issue #216)

A step of the NPC relationships milestone, after N2. Narration only: NPCs never change their behaviour in the game, and
nothing goes to public chat. Tested with the mock client only: nothing here has run in the real client yet (G1, steps
N4.1-N4.8). The decisions are in [ADR 0038](docs/adr/0038-promises-oaths-and-the-oathbreaker-mark.md).

- **Added: a quest is a promise.** A quest accepted after an NPC's quest dialogue is a promise to that NPC. Only the quest
  id, the NPC's id and times are kept (`relationships.promises`), never a quest title or text. Handing it in keeps it,
  to whoever it is handed. Abandoning it (`QUEST_REMOVED` with no turn-in, settled after a three-second wait or at once
  through the abandon dialog, never for a quest the client flags as completed) lowers the giver's trust
  (`promise_broken`), without counting as a meeting.
- **Added: reminders and relief.** A promise left open a week or more is recalled when you meet the giver ("Marshal
  Dughan has waited 10 days for the task you took on, and has not forgotten it."), not again for most of a day and never
  while the quest is ready to hand in; a late turn-in to the giver brings relief. A promise whose quest left the log
  unseen is let go without a word.
- **Added: oaths and the oathbreaker mark.** With a named NPC already a Friend or more, a promise is an oath, and keeps
  the map where it was sworn. Keeping it earns a little trust and loyalty (`oath_kept`); breaking it costs far more
  (`oath_broken`, usually a level), leaves a journal line with no name ("An oath broken"), and marks the NPC (about eight
  months, longer for the long-lived peoples) and the map (about three months). While a mark fades, the trust that NPC, or
  anyone met on that map, can give is smaller; the NPC and the place each say they remember, once a session.
- **Added: the notices, the window and an option.** Every line goes to the private narrator (`Narrator:Notice`): at most
  4 a session, dropped in combat, silent with the narrator. New option **Promise notices** (on). The detail of an NPC and
  `/au relationships detail` show the open promises and the mark.
- **Added: conditions and lines.** `relPromiseDays` and `relOathbroken` (relationship conditions) and `oathbreakerHere`
  (the place, no person needed), with three IT/EN recall intentions for `relation_npc`. More come with N9 (#221).
- **Changed: `relationships.version` is 4** (`promises`, `marks`, the NPC field `oathT`). Version 3 data needs no
  migration; an older addon now leaves version 4 data read-only. NPCs with an open promise or a mark are never dropped by
  the compaction. `QUEST_REMOVED` is now normalized by the relationships module (`QUEST_STATE` `removed`); the world
  module still rereads the quest log on it. All gains, days and limits are in `promises` and `increments` of
  `Data/Relationships.lua`.

### N3: romance with NPCs, opposite sex only, with a vow (issue #215)

A step of the NPC relationships milestone (owner decisions of 2026-11-01). Narration only and private: NPCs never change
their behaviour in the game, and nothing goes to chat. Tested with the mock client only (G1, steps N3.1-N3.5).

- **Added: attraction grows by itself, slowly, with the attraction axis on (off by default).** Only with a humanoid NPC
  of the opposite sex (the character's `UnitSex` against the NPC's, its `UnitCreatureType`; both read at the dialogue,
  for the session only, never saved). This is a fixed rule, by the owner's decision: there is no preference setting.
  Only from positive interactions with an NPC that was already a **Friend** or more, and never from a merchant or a
  flight master: a chat, quests, the inn, a trainer, the addon's ambient talk. Diminishing returns, a daily cap of 2
  points and the NPC's temperament, all in `romance` of `Data/Relationships.lua`.
- **Added: the vow.** At the top of a romance (attraction 80 and the **beloved** label) a private vow is written in the
  journal once per NPC, as a permanent memory with no name ("A quiet vow, spoken to no one aloud"), and the private
  narrator says one line naming the NPC (never in combat, never with the narrator silent, never in chat). The NPC detail
  in the Relationships window and `/au relationships detail` say "You made a private vow to them." A slider alone never makes
  the vow.
- **Added: two rare recall intentions** for `relation_npc` in Italian and English, in the inner voice: a growing
  attraction (`rel.npc.attraction`) and after the vow (`rel.npc.vowed`), with the new relationship condition
  `relVowed`. More come with N9 (#221). The decisions are in
  [ADR 0037](docs/adr/0037-romance-with-npcs-opposite-sex-and-the-vow.md).
- **Changed: a scale test** no longer assumes that the first synthetic clone shares its shape with another rule (which
  base rule it copies depends on how many base rules there are).

### N2: visible levels, the first meeting and the NPC temperament (issue #214)

Second step of the NPC relationships milestone (owner decisions of 2026-11-01). Narration only: NPCs never change their
behaviour in the game, and nothing goes to public chat. Tested with the mock client only: nothing here has run in the
real client yet (G1, steps N2.1-N2.7).

- **Added: each NPC warms up at its own pace (the temperament).** A multiplier on every automatic gain and on its daily
  cap, both ways, from `temperament` in `Data/Relationships.lua`: a default by role (innkeeper 1.3, guard 0.7, leader
  0.6, banker 0.85), a factor by personality (cheerful 1.15, gruff 0.8, stoic 0.85...), curated overrides in
  `Data/NPCs.lua` (`warmth`, `forget`) and a race factor in the spirit of the long-lived peoples: night elves and draenei
  warm at 0.75 and forget at half the pace (the days of grace before familiarity fades are doubled), blood elves and
  dwarves a little less so. `Data/NPCs.lua` now gives the race of its NPCs and adds a gruff blacksmith (Smith Argus); the
  race of any other NPC is kept when the client gives it. `R:Temper` explains each multiplier.
- **Added: the first meeting.** A new NPC record keeps `met`: the time of day, the weather when the client says it, the
  zone and the character's level then (tokens, a zone name and numbers; no text). New conditions for the recall lines,
  validated and counted as relationship conditions: `relMetLevels` (levels gained since), `relMetDays`, `relMetTime`,
  `relMetWeather`. Five recall intentions for `relation_npc` in Italian and English ("I was still a novice the first
  time I stood here", the first meeting by night, in the rain, in the snow, months ago). More come with N9 (#221).
- **Added: visible levels.** The nine disposition bands are the levels of a bond (Hated 1, Deep bond 9). When an
  interaction moves an NPC to another level, the private narrator says so in one line (`Narrator:Notice`, never chat):
  at most 4 in a session, the same NPC not again for 20 hours (saved), never in combat (held until the fight ends),
  never with the narrator silent, never for a slider the user moved. Reaching Friend, Close friend or Deep bond, or
  falling to Hostile or Hated, leaves a journal line once per NPC and level, with no name (`relation_level`, "A bond
  grows: Close friend"). The numbers are in `levels` of `Data/Relationships.lua`; a new option, **Level notices** (on),
  turns the lines off.
- **Added: the Relationships window shows the level.** The detail of an NPC has a block of its own, **What the addon
  knows**: the level and the way to the next one, the temperament in words and the first meeting.
  `/au relationships detail` prints the same for an NPC.
- **Changed: `relationships.version` is 3** (`met`, `race` and `levelT` on NPC records). Version 2 data moves to 3 with
  nothing to migrate; an older addon now leaves version 3 data read-only instead of dropping the new fields. The journal
  can describe a kind of memory from its tokens (`LivingMemory:RegisterDescriber`).

### N0: probing attacks, kills and deaths without the combat log (issue #212)

The first step of the NPC relationships milestone. Forever gives addons no combat log, so hostility (N1), the nemesis
(N7) and the companion pet (N8) must learn from ordinary events when the player attacks an NPC, kills it or is killed
by it. This step only measures: nothing in the narration changes. Tested with the mock client only: the owner runs the
new section N0 of the in-game checklist, then [ADR 0035](docs/adr/0035-attacks-kills-and-deaths-without-the-combat-log.md)
is confirmed or changed.

- **Added: N0 probes in `/au probe` (#212).** `Core/ProbeCombat.lua` reads on the target the threat situation, dead,
  tapped by others, classification, quest boss, creature type, faction, npcID and interact distance, and a candidate
  "named" verdict (elite, rare, world boss, quest boss, an NPC with a relationship record or in the curated register).
  From the first `/au probe` it also listens to 12 events (`PLAYER_REGEN_DISABLED/ENABLED`, `PLAYER_ENTER_COMBAT`,
  `UNIT_SPELLCAST_SENT`, `UNIT_COMBAT`, `UNIT_THREAT_LIST_UPDATE`, `UNIT_THREAT_SITUATION_UPDATE`, `UNIT_DIED`,
  `PARTY_KILL`, `PLAYER_DEAD` and the nameplate events) and sums up the last 3 fights and 2 deaths: who struck first,
  how many units were engaged or attacking the player, the friendly nameplates around, whether the target died and by
  whose hand, and which unit was attacking the player at the death. Numbers, flags and fixed client words only, never a
  name or a GUID; nothing is saved. `/au probe reset` also forgets the fights and deaths. Every API was checked against
  the Forever dump; `UNIT_DIED` and `PARTY_KILL` were found there and added beyond the issue's list.
- **Added: ADR 0035 (proposed, to confirm in game)**, the detection recipe for attacks, kills, deaths, witnesses and
  named NPCs, and section N0 of `docs/G1_checklist.md` and `docs/G1_checklist.en.md` (ten steps for the owner).
- **Changed: `Core/Probe.lua` can be extended** by other files (`Probe.AddEvent`, `Probe.ITEMS`, free report lines,
  `Probe.resetHooks`); event samples receive the event's arguments. `Tests/check_api.py` reads the event table of
  `Core/ProbeCombat.lua`; the mock has the new unit functions and events (`Tests/TestProbeCombat.lua`).

### U-keyboard-combat: keys, sliders and targets; what the narrator does in a fight (issues #183, #185)

Fixes from the UI review (UI-13 and UI-15 in [`UI_REVIEW.md`](docs/design/UI_REVIEW.md)). Tested with the mock client
only: nothing here has run in the real client yet (G1, checklist K1-K4 and C1-C4).

- **Added: key bindings for every action of the proposal bar, the history, the journal and the NPC answers (#183).**
  Discard, Edit, Next channel, History, Journal and NPC dialogue: answer 1, 2 and 3 join Speak, Another, Pause and NPC
  dialogue in `Bindings.xml`, with their names in English and Italian. The answers of the NPC dialogue window are
  numbered, and the answer keys press the button with that number (Talk on an offer, Close at the end).
- **Added: `/au channel next` (#183).** Moves the waiting proposal to the next channel, like its channel chip; the
  default channel is not touched.
- **Added: "-", "+" and the mouse wheel on every slider (#183).** The Character Soul's 11 trait sliders carry their own
  "-" and "+" (steps of 5); every slider, the relationship axes too, moves by one step with the mouse wheel. The track is
  lighter, 5.4:1 against the window instead of 1.7:1 (3:1 is the minimum for a control), and a slider follows the cursor
  (`OnUpdate`) only while it is dragged.
- **Changed: every button is a 24-unit target (#183).** The window close box, the relationships' filters, column titles,
  "-" and "+" and add/dismiss, and the NPC dialogue's answers and close button were 18 to 22 units high. The narrator's
  header buttons were already 24x24, 6 apart, and its "x" only hides (#209).
- **Changed: short words instead of single symbols (#183).** The journal's row actions say Keep, Delete, Forget, Clear,
  Open, Pause, Skip, Resume, Start, Go, Pick, Turn off, Add and Dismiss instead of "P", "x", "...", "II", ">", "-" and
  "+", each button as wide as its word; the NPC dialogue's close button says Close. The narrator's header keeps its three
  drawn icons: there is no room for words next to the voice label.
- **Added: a "Paused" badge (#183).** While the narrator is paused the speak button shows **Paused** under it (not dimmed
  with the button), and a line asked for while paused says *paused* in its label.
- **Added: an "In combat" setting (#185).** `pacing.inCombat`, in the Narrator section of the panel and with
  `/au combat show|chat|hold|silent`: what a spontaneous line does during any fight. *Show* is the old behaviour;
  *chat frame only* writes it in the chat window and the history, never in the box; *hold until combat ends*, the
  default, keeps the last three lines and shows them half a second after the fight, one after the other, after the
  victory line; *silent* makes the Narrative Director say nothing in any fight (gate reason `combat`). Demanding fights
  stay muted as before.
- **Changed: a chat proposal waits for the end of the fight, in every setting (#185).** A proposal made by a spontaneous
  event in combat is held until `PLAYER_REGEN_ENABLED`, and one already waiting when the fight begins leaves the screen
  and comes back after it, with its time from then and any text typed. With *show*, a line that automatic mode sends by
  itself still goes out. A line the player asks for with a command is never held.
- **Fixed: the proposal editor took the keyboard in combat (#185).** It never opens in combat (button, key or speak key in
  preview mode, which shows the line in chat instead; a second press sends it as it is), and a fight that begins while it
  is open closes it and keeps the text.
- **Fixed: automatic mode retried after the client blocked a send (#185).** After a blocked automatic send the session
  falls back to "confirm to send" and says so once: nothing more is sent by itself, so the client's "blocked" dialog
  cannot come back. The saved choice stays; `/reload`, or choosing automatic sending again, ends it. The settings row and
  `/au debug` show it.
- **Fixed: the speak key made a battle line in combat (#185).** With nothing waiting, in combat it now makes no line and
  says how many lines wait for the end of the fight, or that `/au battlecry` asks for one.

### U-windows: one window shell, Esc, the window scale and sturdier windows (issues #174, #187, #182, #192, #190)

Fixes from the UI review (UI-04, UI-17, UI-12, UI-22 and the rest of UI-20 in
[`UI_REVIEW.md`](docs/design/UI_REVIEW.md)). Tested with the mock client only: nothing here has run in the real client
yet (G1).

- **Added: one window shell, `W.Window` (#187).** The journal, the export window, the relationships, the character soul
  and the setup guide are made by the same factory in `UI/Widgets.lua`: a warm dark surface with a 1-unit bronze edge, a
  title band with the title in one style, a close box at the top right, Esc, the window scale and a redraw when the
  settings change. No Blizzard art: only coloured textures.
- **Added: Esc closes the addon's windows, and every window has a close box (#174).** The five windows are registered in
  `UISpecialFrames`, so Esc closes them before it opens the game menu. Esc on the setup guide does what Skip does (the
  defaults stay and it does not come back at every login). The NPC dialogue window is never registered (ADR 0020: Esc
  would close Blizzard's NPC windows too). The narrator history is left to the narrator's own work (#186).
- **Added: a "Window scale" setting, 80% to 150% (#182).** `ui.windowScale` (default 1) is applied with `SetScale` to the
  five windows and to the NPC dialogue window, at once while they are open.
- **Added: the NPC dialogue window's text size and opacity are in the settings panel (#182).** They existed in the saved
  settings, but no row or command reached them.
- **Changed: the settings panel is grouped (#187).** Five sections under their headers (General, Chat, Narrator,
  Modules, Privacy), each row a plain label next to its control. A stepper is "-", the value as text and "+": its label is
  no longer a button that does nothing. The sections scroll inside the client's settings page. The consents (automatic
  sending, others' Total RP 3, the name from Total RP 3) are under Privacy.
- **Changed: one visual language (#187).** Flat buttons everywhere in these windows. The chosen tab or option has a full
  gold edge and a bar under its label, not a colour only (the green text inside a red button is gone, and so are the
  "» «" marks of the avoided topics and of the relationships' tabs). One brand violet, `#B48CFF`. The actions that lose
  data (Forget everything, Remove person, Forget observations, Neutral profile, deleting a memory, a place or a flag) have
  their own style: a red outline, filled while they wait for the second click.
- **Changed: the text of a consent or a privacy note is 12 units or more (#182).** The introductions of the journal, the
  relationships and the character soul, the relationships' options, privacy note and warning, the export help, the
  consents of the setup guide and the help of the settings panel. Each text is anchored under the one above: the
  journal's tabs start under its introduction, and in the NPC dialogue window the line sits under the title and the
  answers under the line, so nothing overlaps at large text sizes.
- **Fixed: "Neutral profile" took one click (#190).** It now asks for a second click within 6 seconds, like the other
  actions that lose data. Every armed confirmation (Neutral profile and the three of the relationships) disarms only
  by its own token, so an old timer never cancels a newer confirmation, and all of them disarm when the window closes.
  The journal did it already (#200).
- **Fixed: a failed build could leave a window on screen (#192).** Each window is hidden on the line after its
  `CreateFrame`; `Tests/run_tests.py` checks it.
- **Fixed: saved positions (#192).** `W.SavePosition` stores the bottom-left corner read with `GetLeft`/`GetBottom`, so a
  box that grows grows upwards, never down over the action bars.
- **Fixed: the export box (#192).** It is as tall as its text (measured), not a fixed 1000 units, so a long export
  scrolls to its end and a short one has no empty scroll; the line of the cursor stays in view.
- **Fixed: settings changed in one place did not reach the open windows (#192).** One notice, `Config:Changed` (sent by
  `Config:Set` and by every row of the panel), is followed by the panel, the open windows (scale, title, redraw, so a
  change of language re-labels them), the narrator and the NPC dialogue window. Turning the addon or the narrator box
  off takes the line on screen away.
- **Changed: the NPC's name in the dialogue window is the narrator's NPC green (#186).** `#4FB354`, the same as the NPC
  voice of the narrator box, instead of the old `#9BE37A`.
- **Fixed: the classic Interface Options opened on the wrong page (#192).** They are opened with two calls, as that panel
  needs; the newer Settings panel with one.

### U-narrator-look: the narrator's look (issue #186; history parts of #174 and #182)

The PROPOSED narrator of the UI review (UI-16 in [`UI_REVIEW.md`](docs/design/UI_REVIEW.md),
`proposed-narrator.png`), built with coloured textures and the client's fonts only, no Blizzard art. Tested with the
mock client only: nothing here has run in the real client yet (G1, steps N1–N7 of the checklist).

- **Changed: the voices differ in more than a small label (#186).** A 3-unit bar in the voice colour along the left
  edge, the line tinted in that colour, and the inner voice in another typeface (Arial Narrow, one unit larger), a cue
  that needs no colour. The NPC colour is a darker green (`#4fb354`, was `#9be37a`), so the four accents also differ in
  lightness (L\* 87 Character, 81 Inner, 72 Narrator, 65 NPC): for protanopes Character and NPC were ΔE 6.5 apart, now
  about 19. The tint keeps 4.5:1 over a white scene only with a background of 60% or more; under that the text is
  white.
- **Changed: ghost icon buttons in the header (#186, the target size of #183).** Pause (two bars, a triangle while
  paused), history (three lines) and hide (x) are grey icons with no box until hovered, drawn with textures; each is a
  24×24 target, 6 units apart. They replace the three red letter buttons.
- **Changed: "x" only hides the box (#186, #183).** A waiting proposal is no longer discarded: it stays in the Gateway,
  comes back with the next line, and the speak key first shows it again (a second press sends it), so a line that is
  not on screen is never sent (#176). Text typed in the editor is kept as the proposal's edited text, and the editor never opens in a
  hidden box (the speak button's editor option shows the proposal first). The lines held
  behind the proposal are dropped from the box (they are in the history). `Gateway:Confirm` asks the new
  `Narrator:BringBack` first.
- **Changed: the proposal bar (#186).** The channel is a chip in the voice colour at the left (click to change it); on
  the right a quiet text **Discard**, then **Another**, **Edit**, **To chat** and **Send**, the one primary (gold)
  button, which shows the speak key when one is bound and there is room. The buttons are sized to their text and
  right-aligned, with a rule above the bar. The header no longer repeats the channel: it says *proposal* and the
  countdown (`proposal_tag` replaces `proposal_for`).
- **Changed: a thin time line instead of the fade (#186).** A 2-unit line in the voice colour along the bottom edge
  shrinks as the line's time runs out; when it ends the box goes. The frame alpha stays 1, so the opacity setting is
  still applied once, to the background (#173). The line stops 1.5 s before its end while the box is hovered (#21),
  is not drawn for a waiting proposal (its label counts down) and is off with *Reduce motion*.
- **Fixed: fixed offsets at large text sizes (#182, narrator part).** The header height comes from the label's font
  (at least 28, label + 12), the label stops before the buttons, and the text is anchored under the header instead
  of 24 units from the top, so at size 28 the label no longer runs under the buttons or into the line.
- **Added: the history matches the box (#174, #182, history parts).** The same black surface and edge, the narrator's
  font at the narrator's size (its height follows: eight lines), a close box, **Esc** closes it (`UISpecialFrames`),
  and a drag handle with a grip. Until it is dragged it sits above the box and hides with it; once dragged it keeps its
  own place (`ui.narrator.historyPos`, nil by default) and stays when the box hides. `/au narrator reset` forgets it.
- **Changed: the tooltips.** *x* says the proposal is kept; new tooltips for the history's close box and handle.
- **Docs:** [The Narrator](docs/wiki/The-Narrator.md), [Chat Gateway](docs/wiki/Chat-Gateway.md), the G1 checklist
  (new section U-narrator-look); the narrator component of the mockups, the narrator, proposal and history PNGs and
  `narrator-demo.gif` are regenerated from the new layout.
- **Known limits:** the voice label and the muted header text are still under 4.5:1 over a white scene at the 55%
  minimum background (they pass at the default 80%). The dialogue window still uses the old NPC green; it belongs to
  the window style work (u-windows). The inner voice's typeface needs `Fonts\ARIALN.TTF` in the client (G1 N1).

### Licensing touch-ups (ADR 0034)

- **Added:** an express reservation of text and data mining rights for the phrases and narrative data
  (`LICENSE-CONTENT.md`, `tdmrep.json`, `ai.txt`), stated as a reservation of rights, not a technical block.
- **Added:** a `NOTICE.md` in every data folder (licence, reservation, owner), and a statement in `LICENSING.md` that the
  data files are a separate work not covered by the GPL.
- **Added:** a required licensing checkbox in the pull request template, the Developer Certificate of Origin sign-off
  for external contributors, and an advisory (non-blocking) CI job that warns about missing sign-offs.
- **Changed:** the wiki FAQ explains in plain words what players may do with the phrases.

Entries are **grouped by step or activity**, from the most recent to the oldest (milestones M0–M3: S1–S9). Within each group, changes to what already existed (*Changed*) and fixes (*Fixed*) come after the new features. Known limits are at the bottom. The groups for the fix and text-review sessions (Q5, Q6) that run in parallel with this documentation are added above, under their own name.

### U-trp3: Total RP 3 etiquette (issue #191)

Fixes from the UI review (UI-21 in [`UI_REVIEW.md`](docs/design/UI_REVIEW.md)). Checked against the code of Total RP 3
3.5.3 and tested with the mock client only: nothing here has run in the real client with Total RP 3 yet (G1).

- **Added: the narrator stays private while you are out of character.** When your own Total RP 3 status is *out of
  character*, nothing is proposed for chat and nothing is sent by itself, in any mode; a proposal already waiting is
  dropped, not sent or copied, and the reason is said (`gw_ooc`). The first time a line stays private for this reason
  a message says so. New setting `chat.respectOOC`, **on by default**, with the command `/au trp3 ooc on|off`. The
  status is read through the public API (`GetRoleplayStatus`, then `IsInCharacter`) and counts only when Total RP 3
  says OOC plainly. `/au debug` shows *held by Total RP 3 OOC* and the capability `integration:totalRP3:status`.
- **Added: optional emote markup.** With `chat.emoteMarkup` on (`/au trp3 markup on`, **off by default**), a narrator
  emote sent on `/say` or a group channel is written `*action*`, the roleplay convention that Total RP 3's emote
  detection colours, instead of starting with the character's name. `/emote` is unchanged; the closing asterisk
  survives the 255-byte cut.
- **Changed: other players' profiles are read through Total RP 3's public player model only**
  (`AddOn_TotalRP3.Player.CreateFromUnit` and the player object's methods), no longer through the internal
  `TRP3_API.utils.str.getUnitID`, `TRP3_API.register.isUnitIDKnown` and `getUnitIDCurrentProfile`. Every lookup and
  call is inside `pcall`, so an update of Total RP 3 makes the reading answer nothing, never an error. The consent
  rules do not change: off by default, race, class and traits only. Your own character is never read as "another
  player". New capability `integration:totalRP3:others`.
- **Tests:** a shared fake of Total RP 3's public API (`FAKE_TRP3` in `Tests/MockWoWAPI.lua`); the hold in every mode,
  with a waiting proposal and with a broken API; the markup per channel and its length; the adapter with an internal
  API that raises if touched.
- **Not yet:** the row in the settings panel (the panel is being reorganised in parallel; the command covers both
  settings meanwhile).

### U-wizard: consents, the first-run guide and the windows (issues #178, #188, #181)

Fixes from the UI review (UI-08, UI-18 and UI-11 in [`UI_REVIEW.md`](docs/design/UI_REVIEW.md)). Tested with the mock
client only: nothing here has run in the real client yet (G1).

- **Fixed: a double-click passed the two-step confirmations (#178).** Four consents are turned on in two steps: automatic
  sending in chat, the account-shared list, reading other players' Total RP 3 profiles and proximity (nameplates and
  mouseover). The first step shows the whole warning and changes nothing. The second counts only after **2 seconds**
  and inside **30**: a second click or command that comes too soon is ignored. Turning one off is always one step.
  The new `Core/Consent.lua` is the one place that does it, and `Gateway:SelectAuto`, `Relationships:StartSharing`,
  `Relationships:ChangeSetting` and `Interlocutor:ChangeTRP3Consent` use it.
- **Changed: the warning is where the player looks (#178).** It is a confirmation dialog (`StaticPopup`) with the whole
  warning in plain words (for automatic sending: posted in your character's name, seen by everyone nearby, without
  you pressing anything) and two explicit buttons, **Turn on** (disabled for the first 2 seconds) and **Cancel**.
  Without a dialog in the client, the same text goes to chat. The shared-list warning in the relationships window is
  shorter and in the normal font, under the options. Before this the automatic-sending warning went to the chat frame.
- **Changed: the state of every consent is written in words (#178).** *on*, *off*, and while a question is open *off,
  read first* then *off, confirm*; the rows redraw by themselves when the question opens or expires ("click again to
  confirm" can no longer stay on a button). *Read others' Total RP 3* says *on, needs name* when it is on but
  *Name from Total RP 3* is off, and the settings panel explains it in a line. A line under the relationships options
  now explains proximity and the shared list on screen, not only in tooltips.
- **Changed: the commands follow.** `/au mode auto`, `/au relationships share on`, `/au relationships proximity on`
  and `/au who trp3 on` show the warning the first time and ask to repeat the command after a few seconds (within
  30); a repeat that comes too soon says so. The old 10 and 15 second windows are gone. Italian: the settings row is
  now "Total RP 3 degli altri" (it was "Leggi il Total RP 3 degli altri") so that its state fits the button.
- **Changed: the first-run wizard is a guide, in the flat "proposed" design of the review (#188).** A warm dark surface
  with a thin gold edge and a title band, flat buttons (gold fill for Next, gold outline for the others, a text link
  for Skip) in place of the default red buttons (new `W.FlatWindow`, `W.FlatButton`, `W.Card` in `UI/Widgets.lua`).
  7 steps (8 with Total RP 3), with cards, progress dots, a close
  box, **Enter = Next** and **Esc = Skip**. Page 1 is a welcome with the promise ("a private narrator... nothing
  reaches chat unless you choose it"), a **live sample of the narrator** and the language cards. The chat step has one
  card per mode with its description inside, the default marked, and a plain statement that automatic mode posts in
  the character's name for everyone nearby; its confirmation is the dialog above. A new last page lists the four keys
  (speak, pause, another line, NPC) and says no key is bound until you choose, where the speak button is, `/au options`,
  `/au help` and `/au wizard`, with buttons to open the key bindings and the settings, and a line with **the real
  defaults, read from `Config.defaults`** (`Wizard:DefaultsLine`). Every step can be skipped (Skip, the close box, Esc
  or Next); closing the guide in any way counts as skipped.
- **Fixed: the guide opened at the wrong time and built its pages again at every opening (#188).** It now opens
  3 seconds after `PLAYER_ENTERING_WORLD` and waits while the player is in combat; the pages are built once and every
  text is set again on each render, so a change of language is followed.
- **Fixed: windows covered the narrator and stacked without raising (#181).** The new `UI/Windows.lua` registers the
  wizard, journal, relationships and character soul windows: HIGH strata (below the client's dialogs, so a raised
  window never covers a confirmation), `SetToplevel`, raised when clicked and when opened, and **cascaded** when one
  opens exactly over another (the journal's "..." no longer opens Relationships on top of the journal). Whenever a
  window opens, closes or is dragged the narrator box steps out from under it (below it, else above it) and comes
  back to the player's own place afterwards; its saved place is never changed. While the box carries a proposal or
  the wizard's test line it is above every window. A window too tall for the screen to leave room (660 units on a
  768-unit screen) cannot be avoided: the box is then above it. The ambient dialogue window also keeps clear of the
  box.
- **Added: tests** (`Tests/TestWizardConsent.lua`, and the existing tests updated for the two steps): a double-click
  never passes, for each of the four consents; the dialog's text, buttons and disabled button; expiry; commands; the
  state in words and the dependency; every step skippable; the defaults come from `Config`; pages built once;
  opening in combat; windows registered, raised, cascaded, and the narrator never under them. The mock client gained
  strata, levels, `Raise`, `SetToplevel` and a small layout (`GetLeft`, `GetRect`, a screen of 1024 x 768).
- **Docs:** wiki pages First-Run-Wizard (rewritten), Settings, Chat-Gateway, Commands, Relationships, Privacy-and-Data,
  Character-Soul-and-Total-RP-3 and Interlocutor-and-Place; the README files; `ARCHITECTURE.md`; ADR 0003; the mockups
  (`wizard-1` to `wizard-8`, `wizard-test-line`, the four `consent-*` pages; the proposed wizard pages are gone because
  they are now built); the in-game checklist (section U-wizard).
### U: checks for the classes of problems of the third review (issues #162, #165)

The third review (Q8, #167) found problems that every check passed. These checks would have caught them; each passes
on today's content and is tested on a bad example made on purpose (the lines as they were before #198).

- **Added: four validator warnings for the words of a line against its conditions (#162).** `timeWord`: a line that
  names the time of day ("dusk", "night", "tonight", «stasera») asks a `time` the word fits, in its rule, its monologue
  or its situation ("dusk" is not night, as `rain_dusk_return` once allowed). `visitWord`: a zone line that says "new
  ground" or "first time" asks `firstVisit = true`, one that says "here again" a return. `badVisitDeath`: a line that
  names the death ("where I fell") asks `lastVisitBad = "death"`, because `true` is also a flight.
  `itAgreementOther`: in Italian, the speaker and the other together in the masculine plural («ci siamo incrociati»).
  They are warnings (they read words), and the offline tests ask for none on the base packs.
- **Changed: the Italian agreement warning sees more forms (#162).** `itAgreement` now also reads *esserne*, *mi trovi*,
  the third person of a narrator emote (*resta*, *rimane*, *sta*, *sembra*, *sente*: its subject is the character) and
  *degno*, *vicino*, *fermo*, *fidato*, *seduto*, *fradicio*, *primo*, *ultimo*.
- **Added: docs checks (#162).** `Tests/check_docs.py` checks that every `/au` command quoted in the README, the pack
  guide, `CONTRIBUTING.md` and `docs/` exists, with words its keyword table accepts and no old Italian word; that a
  link labelled "ADR NNNN" points to that ADR; that every ADR is in the index with its own title; and that the README
  lists the modules of the Settings window.
- **Added: `Tests/check_api.py` sees more kinds of use (#165).** Events written in a `*_EVENTS` table (the proximity
  events `NAME_PLATE_UNIT_ADDED` and `UPDATE_MOUSEOVER_UNIT` were never checked), in `event = "..."` fields (the items of
  `/au probe`) and in `event == "..."` comparisons; `_G.X` and the frame names of a `*_FRAMES` table, with a new `FRAMES`
  list of FrameXML frames and why each is safe; every string shaped like an API path (`"C_Map.GetMapInfo"`) and the
  names given to `Value(...)`; methods called as `pcall(frame.Method, frame)`; font names written as strings, with a
  new `FONTS` list. It scans every `AzerothUnspoken*` folder, the language and regional packs included. A mutation test
  in `run_tests.py` makes one typo per kind and expects each to be reported.
- **Fixed: lines the new checks found.** `ctx.zone.rest` said "Tonight" at any hour ("Here nobody asks anything of
  you."); `soul.zone.curious` (every variant meets an unknown land) now asks `firstVisit = true`; four Italian lines
  where the speaker and the other were masculine plural are neutral now (`rel.greet.acquaintance`,
  `rel.greet.unknown`, `rel.npc.friend.old`, `rel.player.absent.long`); the README named the Relationships module
  "Relations".

### U-api: client API robustness and a calmer proximity (issues #166, #164)

Fixes from the third review (Q8, #167). Everything here is tested with the mock client only; the in-game checks are
in `docs/G1_checklist.md` and `docs/G1_checklist.en.md` (section "U-api").

- **Fixed: the quest scan no longer invents "no quests" (#166).** If the client raises, hides (secret) or gives an
  unexpected value for the quest log (a count that is NaN, infinite or negative, an entry that cannot be read, a
  completion or objective call that fails), the log is *unknown*: `ctx.quest` is nil, `questActive = false` and
  `questReady = false` do not match, and the next good reading is a fresh baseline (no false progress). A log that
  the client reads as empty is still zero. The quest title is no longer kept in memory (the comment said it was not).
- **Fixed: `/au probe` can no longer lose the report (#166).** The game time with a minute that is not a number
  raised outside the per-probe guard. Now the header, the event samples and every probe are guarded; a probe that
  raises or gives no valid state is shown as `RESTRICTED` and counted, and the others carry on.
- **Fixed: a pack folder that cannot load is not tried again on every continent change (#166).** A failure that cannot
  change in a session (`MISSING`, `DISABLED`, `CORRUPT`, `INTERFACE_VERSION`, the `DEP_*` reasons, `NO_API`) is
  remembered: ten region changes made 23 `LoadAddOn` calls, now one. Any other failure (an error raised by the call)
  gets three tries in all (`Packs.MAX_ATTEMPTS`).
- **Added: a folder that loads but registers nothing is reported once (#166).** The new message `packs_empty` says
  that the folder gave no content, and `/au packs` shows it as "loaded, but gave no content". It used to be silent.
- **Changed: every client call goes through Compat (#166).** New `Compat.After` and `Compat.Ticker` (timers that
  never raise: a missing `C_Timer` or a raising one gives `false`/`nil`), used by the Director, Triggers, the world,
  memory, NPC dialogues, arcs, places, relationships, the journal, the relations window and the speak button.
  `IsInInstance`, `IsInGroup`, `IsInRaid`, `IsInGuild`, `UnitSex`, `UnitExists`, `GetLocale` and `GetCursorPosition`
  are protected too (a raising `IsInGroup` used to raise a Lua error from the channel button). The first-run
  wizard's own `C_Timer.After` is left for the wizard work (#178).
- **Fixed: a crowd of strangers no longer costs a bus event and a name read each (#164).** With "Recognise nearby" on,
  every nameplate and mouseover was an event and a `UnitFullName` read. Now, before anything is published: a
  constant-time check that there is someone to find (a listed player, or the Total RP 3 consent), a throttle per unit
  token (0.5 s) and a global one (20 lookups a second), and one name read checked against the in-memory list.
  Only a person that can be acted on reaches the bus; one already recognised this session does not. Nothing about
  a stranger is kept (the limiter holds times per unit token and counters). Measured offline with a synthetic crowd
  (`Tests/bench_proximity.py`, 300 nameplate events a second for 10 s over 40 tokens, plus the mouse):

  | Scenario | `UnitFullName` reads, before → after | Bus events, before → after | CPU of the mock run |
  |---|---|---|---|
| empty list | 3101 → 0 | 3101 → 0 | 254 → 64 ms |
| 20 listed | 2790 → 221 | 2790 → 1 | 320 → 108 ms |
| 20 listed + TRP3 consent | 2790 → 221 | 2790 → 1 | 263 → 129 ms |

  The CPU column includes the mock's own cost per event, so it understates the gain. In a flood a single sighting of
  a listed player can be thrown away by the throttle: the next nameplate or mouseover is looked at. `/au debug`
  shows how many sightings were throttled.
- **Fixed: switching the relations module off now unregisters the proximity events (#164).** The settings window and
  the presets call `R:ApplyProximity`, and the sources unregister themselves on the first event after the module
  or the option went off by any other path.

### U: slash-command help and the speak button (issues #175, #189)

Fixes from the UI review (UI-05 and UI-19 in [`UI_REVIEW.md`](docs/design/UI_REVIEW.md)). Not yet checked in the real
client (G1).

- **Fixed: `/au help` and the usage messages lost letters and broke lines (#175).** They separated options with a bare
  `|`, which is the client's escape character: `/au narrator [history|reset|clear]` read "historyeset". Options are now
  separated by ` / ` (and `/` inside an option, as in `trp3 on/off`), in the command table and in `soul_help`,
  `mem_help`, `rel_help`, `rel_scope_usage`, `arc_cmd_help`, `other_trait_bad`, `help_prof` and `help_probe`, in
  English and Italian. A new test fails on a bare `|` in any usage line, in any interface text of any language, and
  in what `/au help` prints. The narrator's pause button glyph is fixed separately.
- **Changed: `/au help` comes in five groups (#189).** `/au help` prints the groups (Start, Narrator, Chat, Character,
  Diagnostics) in eight lines, so a default chat window shows all of it. `/au help <group>` prints one group (ten
  lines at most), `/au help <command>` one command and `/au help all` everything, with the diagnostics last. Group
  names are typed in English, like the commands.
- **Changed: the speak button's tooltip says what a click will do (#189).** In private mode (the default) it says that
  nothing is ever sent and that a click shows a line only to you; it no longer says "confirm and speak". With a
  proposal it says "send", or "open it in the editor" in preview mode.
- **Changed: the speak button's default place** is beside the narrator box, no longer 180 units below the centre of
  the screen, over the character. A button you already moved stays where you put it.
- **Added: `/au button editor on|off`.** With it on, a click on the speak button opens a waiting proposal in the editor
  instead of sending it; the speak key and `/au speak` still send. New setting `ui.buttonOpensEditor`, off by default.
- **Added: `/au button on`, `/au button off` and `/au button reset`** (back to the default place). `/au button` alone
  still shows or hides it, and now says which.

### U-journal: journal window layout, confirmations and memory states (issues #179, #180, #190 and #193)

The journal parts of the UI review (UI-09, UI-10, UI-20, UI-23). Tested with the mock client only: the layout and the
tooltips still need a look in the game (G1).

- **Fixed: the tab note no longer covers the last row (#179).** The note (Session, Stories, Relationships, People
  met) has its own line under the tabs; the list shows as many rows as fit below it (10 with a one-line note).
- **Fixed: tab labels no longer overflow their buttons (#180).** Each tab is as wide as its name, measured in the
  game's font, and the tabs take a second line when they do not fit. The open tab is highlighted and underlined
  instead of only coloured (no more `» «`). A row cut at the window's edge shows its whole text in a tooltip.
- **Fixed: deleting a memory, forgetting a place and clearing a flag ask for a second click (#190).** The **x**
  becomes **OK** and the row asks *"Delete this memory? Click OK:"*; any other click, a few seconds or closing the
  window cancels. Each arming has its own token, so the timer of an old "Forget everything" no longer disarms a newer
  one, and closing the window disarms everything.
- **Fixed: memory off or read-only is shown in the journal (#193).** The memory tabs say *"Memory is off: turn it
  on in the settings"* or *"Read-only: saved by a newer version of the addon"*, and their buttons and **Forget
  everything** are greyed out instead of doing nothing.
- **Fixed: `/au debug` (#193).** Hidden values print `<hidden>` instead of the Italian `<nascosto>`, and the report
  lists the **hook** group (and any group it counts) instead of leaving it out of the lines.
- **Changed:** the wiki pages [Memory and Journal](docs/wiki/Memory-and-Journal.md) and
  [Troubleshooting](docs/wiki/Troubleshooting.md), the G1 checklist, and the journal mockups (`journal-*.png`) and
  `chat-debug.png`, regenerated from the updated component.

### U-content: phrase fixes from the third review (issues #158, #159)

The content findings of the third review (Q8, #167), fixed in the language packs and in the rules. The English
meaning is the reference for every Italian rewrite.

- **Fixed (#158, Italian):**
  - The speaker's gender is now marked with `{g:}` where it was always masculine (`world.fog.01`, `world.sub.03`,
    `world.quest.complete.03`, `world.flight.arrive.e`, `rel.player.fear`); `ctx.act.duel.wary` is rewritten without
    a gendered word, since both the speaker and the challenger were involved.
  - The other person is no longer masculine by default: neutral rewrites of `rel.player.trust`, `rel.player.known`,
    `rel.player.shared.duel` and `rel.player.rival`.
  - Meaning errors: «per l'ultima volta» (now «per la volta scorsa»), «civiltà» (now «cortesia»), «abbassa il
    cappuccio» (now «si cala il cappuccio sugli occhi»), and the calque «il più vicino a casa che la strada arrivi».
  - Thirteen calques reworded (Emotions, Situations, World, Relations, Monologues).
  - Light modernisms: "won on points" and "small print" in both languages, «Secondo round» in Italian.
- **Fixed (#159, texts that claimed more than their conditions):**
  - "New ground" / «Terra nuova» removed from `world.zone.rain`, `sit.woundedarrival.inner` and `emo.zone.curious`,
    which also speak on a return.
  - `mem.ret.emo.bad.worried` no longer names a fall: `lastVisitBad = true` also covers a flight.
  - The situation `rain_dusk_return` is now dusk only (it allowed night, and all its texts describe the light going).
  - `mono.rest.hearth` says nothing about the hour ("Tonight", "until morning"), since it speaks at any time.
  - `mono.zone.crest` and `mono.zone.dusk` now need the outdoors and a zone that is not a city (they could speak on
    entering Ironforge or the Undercity); `world.clear.01` now needs the outdoors like every other weather rule.
  - Monologue parts that read wrong in some orders: `mono.muse.stars.2` names the stars itself, `mono.muse.road.3`
    says "the end of the road".
  - `world.flight.long.e` no longer speaks of "hours" of flight; the `sit.secondwind.say` lines no longer assume the
    enemy just beaten is the one who killed the character.
- **Changed:** `PACK_FORMAT.md` and ADR 0032 describe `rain_dusk_return` at dusk only.
- **Added:** a test of these fixes in `Tests/TestContent.lua`, and the night case in `Tests/TestDynamism.lua`.
- Not changed: the Versi line `inn.rhyme.01` ("the friend who won't come again") keeps its ambiguity without
  `topic:death`, the owner's call in #159. The automatic checks for these classes of problem are #162.
- Nothing was tested in the client: the reworded lines remain to be read in game (G1).

### U-narrator: the narrator box and the chat proposal (#176, #173, #177, parts of #179 and #175)

Fixes from the UI review U1 ([UI_REVIEW.md](docs/design/UI_REVIEW.md): UI-06, UI-03, UI-07, the settings part of UI-09 and the pause glyph of UI-05). Nothing here is tested in the game client yet.

- **Fixed: a proposal could be sent after it had left the narrator (#176).**
  - While the Gateway holds a proposal, the narrator box shows it.
  - A private line, a monologue or a story notice that arrives meanwhile goes to the history at once. The label says how many lines wait ("+1 in history"). They reach the box, oldest first, after the proposal is sent, discarded or expired; a line kept waiting more than two minutes stays only in the history.
  - The speak key, the speak button, `/au speak` and **Send** all read the one pending proposal, which is the line on screen.
  - A send the client blocks puts the proposal back on screen even when another line had taken the box.
  - After a send, the history marks the proposal's own entry (with the edited text), not a line that came after it.
- **Fixed: the opacity was applied twice and faded the text too (#173).**
  - The setting is now the background's opacity only: 55–100%, default 80%. Saved values under 55% become 55%.
  - The text always stays fully opaque; the frame alpha is used only for the fade-out.
  - The voice label is 12 px or more.
  - The panel row reads **Background opacity** and steps by 5%.
- **Fixed: fixed time limits (#177).**
  - The mouse over the narrator box stops the proposal's waiting time, not only the fade; it resumes where it was.
  - New setting **Proposal waits**: 25, 60 or 120 s, or until dismissed (`chat.pendingSeconds`, 0 = until dismissed). The label counts the seconds down.
  - New setting **Reading speed** (`ui.narrator.readingSpeed`, characters a second, default 14, about 0.07 s per UTF-8 character; was 0.03 s per byte).
  - New setting **Reduce motion** (`ui.narrator.reduceMotion`): no fade.
  - Story notices get the normal reading time and a place in the history (marked `notice`).
- **Fixed: the settings help text sat on the third row of module buttons (#179, settings part).** It is anchored under the last row of the module grid. The rows are 26 units apart so that the three new rows fit.
- **Fixed: the pause button showed a single bar (#175, pause glyph).** It reads **II**: `|` is the client's escape character. The `/au help` strings are another session's.
- **Added:** strings `proposal_left`, `narrator_held`, `opt_waits`, `waits_forever`, `opt_reading`, `reading_cps`, `opt_motion` and `opt_motion_tip`, in English and Italian; `opt_alpha` reads "Background opacity".
- **Tests:** `Tests/TestNarrator.lua` covers the held lines and their order, discard and x, the blocked send, the hover pause and countdown, "until dismissed", the reading time in UTF-8 characters, reduce motion, the background opacity and label size, the new settings rows and the help anchor. `Tests/TestChatGateway.lua` covers `SetHovered`, `PendingLeft` and the shared source of truth; `Tests/TestConfig.lua` the new limits.
- **Docs:** [The Narrator](docs/wiki/The-Narrator.md), [Settings](docs/wiki/Settings.md), [Chat Gateway](docs/wiki/Chat-Gateway.md) and [ARCHITECTURE.md](docs/ARCHITECTURE.md). The narrator, proposal and settings mockups are regenerated from the new code.
- **To check in game (G1):** the hover pause with a real mouse, the fade and "reduce motion", the **II** glyph, the label length in Italian with the countdown, and the settings canvas height with fourteen rows.

### U-perf: selection speed and memory (issues #157 and #138)

The selection does less work per pick and the registry uses less memory, **without changing a single pick**: the same seed and context give the same line ([ADR 0024](docs/adr/0024-selection-index-compact-registry-and-bounded-memory.md), "Update").

- **Fixed (#157):** the "50% slower since R4" was mostly the benchmark. `Tests/SyntheticArchive.lua` clones rules drawn from all the registered ones, so the 35 rules R4 added made a different, heavier archive. On the same archive R4 cost +5% at 10,000 entries and +7% at today's size; that cost is gone now.
- **Changed, engine:**
  - **Shared rule shapes.** The fields that repeat across rules (pack, events, voice, form, category, depth, weight, cooldown, specificity, tier, monologue fields) live in one interned table, the rule's metatable. A rule table now holds 8 slots instead of 16. Reading `p.field` is unchanged; a write gives that rule its own copy; `pairs(p)` shows only the rule's own fields.
  - **Shared conditions.** Rules with the same conditions share one table. `Engine:DropPack` releases shapes and conditions.
  - **Memo of one pick** (`Engine.MEMO`). Each shared conditions table is checked once per pick. In a pick that weighs at least 128 rules, the weight factors are computed once per combination of descriptive fields, with the same operations in the same order. The union of the index groups is cached until the index changes. Smaller savings in `WeightedPick`, `TierPool`, `AnyUsable` and `Traits.Evaluate` (an empty profile).
  - `Engine:SetWeightHook(factor, name, fn, pure)`: the new `pure` argument (true, or a function of the context) says that the hook reads only the context and the rule's descriptive fields. The hooks of the soul, emotions, interlocutor and relations are pure. The place hook is pure except in battlegrounds, arenas and boss fights.
- **Changed, tools:**
  - `Tests/bench_scale.py` prints the commit and the Lua instructions per pick (exact, independent of the machine's load).
  - `--archive-dir` keeps the synthetic archives, so two versions measure the same rules.
  - `Tests/trace_picks.py` has `--soul` and `--emotion`.
  - `Tests/run_tests.py` prints the instructions per pick at 2,000 entries and warns above 1.25 times `Tests/perf_baseline.json`.
- **Tests:** `Tests/TestScale.lua` runs the same seeded picks with the memo off and on (neutral; a soul with emotions; a hook that is not pure) and requires the same trace. It also checks shapes, copy on write, shared conditions, the cache and `DropPack`. Seven `trace_picks.py` configurations gave byte-identical traces before and after.
- **Measured** (same archive, one language, median of three runs; instructions are exact):
  - today's size: 0.68 → 0.49 ms per pick (18.3 → 14.8 thousand instructions), 5.5 → 5.7 MB.
  - 10,000 entries: 1.66 → 1.16 ms, p95 4.96 → 2.96 ms; 23.3 → 17.2 MB.
  - 50,000 entries: 7.71 → 3.20 ms, p95 27.0 → 10.9 ms (301 → 95 thousand instructions); 93.9 → 61.6 MB.
  - Regional packs (`bench_packs.py`): one region 8.0 → 6.0 MB; every region kept 65.2 → 49.1 MB.
- **Known limits:** the #138 targets at 50,000 entries are not met yet: p95 under 5 ms and memory under 40 MB. Registering 50,000 rules costs about 45% more Lua instructions. The base packs use 0.2 MB more. Nothing is measured in the client yet (D3, `/au prof`).

### Funding: Ko-fi link

- **Added: `.github/FUNDING.yml`** with the Ko-fi account, so GitHub shows a Sponsor button. A short "Support the project" section in the README (English and Italian) and on the wiki home page. Donations are optional, unlock nothing, and are never requested inside the addon.

### U-relations: the Relationships window fits the screen and shows its list (#171, #172, #184, parts of #179 and #180)

Fixes from the UI review U1 ([UI_REVIEW.md](docs/design/UI_REVIEW.md): UI-01, UI-02, UI-14, and the relationships parts of UI-09 and UI-10). Nothing here is tested in the game client yet.

- **Fixed: the list rows hid their own text (#171).** Each row was a red panel button drawn over the cells. The rows are now plain buttons that own their cells, with a stripe every other row and a highlight under the mouse. A cell that is too long ends with "...", and the row's tooltip shows the whole row.
- **Fixed: the window was taller than the screen (#172).** It was 758 units, and 914 for a player's detail, against 768 at UI scale 1. Every view is now 660 units tall and 720 wide:
  - the detail has two columns (axes, label and feelings on the left; how you see them, note and tags on the right), with the observed block across the window and the person's buttons in the footer;
  - the seven options moved to a new **Options** tab, next to **Relationships** and **People met**.
- **Fixed: the label, note and tags boxes lost text or wrote it on the wrong person (#184).**
  - They now save when they lose focus: Enter, another box, another tab, Back, Close.
  - A draft always goes to the person it was typed for, even when the journal opens someone else.
  - Leaving a box untouched writes nothing, so an empty label box no longer clears a label chosen from the list.
  - Esc puts back the saved text.
  - The search box gives the keyboard back on Enter and when the view changes.
- **Fixed: the shared-list warning grew over the detail's buttons (#179, relationships part).** It now appears in the Options tab, under the privacy note, laid out top-down. The confirmation dialog itself is for wave 2 (#178).
- **Fixed: labels wider than their buttons (#180, relationships part).**
  - The trait buttons are 332 units wide, the label and first feeling buttons 244.
  - The tabs, filters, "Add to the list" and the footer buttons are sized from their text with `GetStringWidth()`.
  - The Type column is 76 units.
  - The label button reads "Chosen: friend" or "Automatic: acquaintance"; "click: change" moved to its tooltip.
- **Added:** strings `rel_tab_options`, `rel_options_hint`, `rel_row_tip`, `rel_custom_tip` and `rel_edit_tip`, in English and Italian.
- **Tests:** `Tests/TestRelations.lua` checks four things in Italian and English:
  - every view is at most 680 units tall;
  - no two widgets overlap and no label is wider than its button;
  - the longest trait, label, feeling and option values fit;
  - the cells belong to their row, and the boxes save on focus loss to the right person.
- **Docs:** [Relationships](docs/wiki/Relationships.md) describes the new layout and the Options tab. The relationships and consent mockups are regenerated from the new layout, with a new `relations-options.png`.

### Licensing (issue #2)

The project now has a licence, chosen by the owner ([ADR 0034](docs/adr/0034-licensing-gpl-code-reserved-phrases.md)).

- **Added: [`LICENSING.md`](LICENSING.md)**, the overview of what each licence covers.
  - **Code:** GPL-3.0-or-later ([`LICENSE`](LICENSE)).
    - An additional permission lets phrase packs that use only the public pack interface have any licence.
    - The name "Azeroth Unspoken" is not licensed: a modified version needs another name.
  - **Phrases and narrative data:** all rights reserved, with permitted uses ([`LICENSE-CONTENT.md`](LICENSE-CONTENT.md)). Covered: `AzerothUnspoken/Data/`, the language, regional and verses packs, and `authoring/`.
  - **Example pack and `PACK_FORMAT.md`:** MIT ([`AzerothUnspoken_Example/LICENSE`](AzerothUnspoken_Example/LICENSE)).
  - **Documentation:** CC BY 4.0.
- **Changed:**
  - Every `.toc` file declares its licence in `## X-License`.
  - The Licence sections of `README.md` and `README.it.md`, and the notice at the top of `PACK_FORMAT.md`.
  - `CONTRIBUTING.md` has a new section, "Licensing of contributions".
  - The wiki FAQ answers "Can I reuse its lines or its code?".
  - The ADR index no longer lists the licence as a pending decision.
- No change to the addon's behaviour.

### U1: UI and UX review and mockups of every window (issues #171-#194)

A review of the interface by an expert panel (frontend, visual design, accessibility, WoW addon UI) and mockups of
every window, made from the code only: nothing has been tested in the real client yet. No addon code changed.

- **Added: [`docs/design/UI_REVIEW.md`](docs/design/UI_REVIEW.md).** 23 findings merged from 94 (1 Critical, 9 High,
  11 Medium, 2 Low), each with file and line and a recommendation, a contrast table computed from the code's colours
  and an English/Italian string-length table. Each finding is a GitHub issue (#171-#193); the outcome is #194.
- **Added: [`docs/design/mockups/`](docs/design/mockups/index.html).** 64 HTML mockups on one shared stylesheet (the
  narrator in each voice, history and pause, the chat proposal and its editor, the speak button, each wizard step in
  English and two in Italian, the settings panel, every journal tab, the relationships window and its details, the
  character soul, the NPC dialogue, the consent screens, `/au help` and `/au debug`), their PNG renders, 6 PROPOSED
  mockups and `narrator-demo.gif`. Original landscapes and stand-in widgets: no Blizzard art, icon, font or
  screenshot. Every image says it is an illustrative mockup, not an in-game screenshot. The generators are in
  `docs/design/mockups/tools/` (headless browser for the PNGs, Pillow for the GIF).
- The README and the wiki are not changed here: the report lists each image and the page it is meant for (U2).

### Q9a: monologues and literary lines never reach public chat (issues #152, #163 and #153)

Fixes from the third review (Q8), the most urgent first ([ADR 0003](docs/adr/0003-private-narrator-and-chat-gateway.md), [ADR 0032](docs/adr/0032-monologues-of-whole-phrases-and-composite-situations.md), owner decision D16 in #130).

- **Fixed: a narrator monologue could become a chat proposal, or be sent automatically** (#152). The Chat Gateway decided from the voice alone, so a narrator monologue (`mono.zone.crest`, `mono.zone.dusk`) was proposed in `PREVIEW` and `CONFIRM_TO_SEND` and could be sent on its own in `AUTO_ONLY_IF_ALLOWED` with the second consent. One central check, `Gateway:PrivateReason(rec)`, now answers for every path to chat: `Propose` (spontaneous lines and the ones you ask for), `Reroll` (an alternative is never a private line), `SendPending`, `CopyToChat` (a private line found in the pending slot is dropped and refused with `private_only`) and `Send` with a proposal. It reads the record **and** the rule it came from (`Engine.byId`), so it holds even when a pack's data is wrong.
- **Fixed: literary forms had no guard** (#163, D16). A line whose rule carries the tag `lore` or a `genre_*` tag is private whatever its voice: it is shown in the narrator and never becomes a proposal. The check reads the tags of the rule, so a narrator or character line from an external pack cannot reach chat.
- **Added: validator error `literaryPublic`** (#163): a `lore` or `genre_*` tag on a line in a public voice (narrator, character). Private voices (inner, npc) stay allowed. The archive refuses the same intention when it is approved or reviewed (`tools/archive/store.py`, `check_content`). Shared definition: `Engine.IsLiteraryTag` and `Engine.HasLiteraryTag`.
- **Fixed: a composite-situation line shrank the anti-repetition window of its event to one entry** (#153). A composite pick weighs only the lines written for its situation, so the window was cut to that pool and the recent victory, levelup or zone lines became eligible again. A composite pick now never trims the window below its current length.
- **Added: `gw_private_only`**, the notice when a private line is refused at sending.
- **Tests:** `Tests/TestChatGateway.lua` (every mode, the key, the copy to the chat box, reroll and the pending slot, with a monologue, a monologue with wrong data, a verses line in each public voice and a composite line that stays ordinary), `Tests/TestValidator.lua` (`literaryPublic` on a planted line), `Tests/TestDynamism.lua` (the window length after composite picks).
- **Still open:** the window of an event is still trimmed to the pool of the current pick for ordinary picks too (a `say` pick shortens what an `emote` pick filled), as noted in #153.

### Q9b fixes: saved data (issues #154, #155 and #156)

Findings of the third review (Q8, #167): whoever loads must respect newer versions and clean what it reads, and records made from the shared list must stay tied to it ([ADR 0006](docs/adr/0006-savedvariables-and-schema-versions.md), [ADR 0030](docs/adr/0030-proximity-session-proposal-and-account-shared-list.md)).

- **Fixed: Personality and Emotion rewrote data from a newer version** (#154). A `personality.version` or `emotion.version` above the known one now makes the module **read-only**: it reads a copy, the saved section keeps its version and every field this version does not know (it used to be saved back as version 2 / 1, with unknown traits, `base` and the archetype lost). `SetTrait`, `SetArchetype`, `ToggleTopic`, the Total RP 3 consent, `Persist` and `Reset` do nothing, `/au soul` and `/au emotion` say why (`soul_readonly`, `emotion_readonly`, English and Italian) and `/au debug` lists the error. `Config:Load` no longer passes such a section through `Merge` and `Validate`.
- **Fixed: a lost or damaged `schemaVersion` migrated the personality again** (#154). Character migration 3 sets `personality.version = 1` only when there is none, global migration 2 acts only on a file that still has `output.mode` (a consent to automatic chat already given is not taken back), and `Personality:Profile` decides by the profile's shape when its version is missing or unusable (`-1`, `0`, `0.5`, a string). Infinity counts as a damaged schema version, like NaN (it used to count as a newer schema and froze both files read-only).
- **Fixed: a record made from the shared list outlived the list** (#155). When a character observes a person who is only on the account's shared list, its record now carries `via = "shared"` and no `source` (it used to copy `source = "user"`, which made a person "added by the user" whom nobody added). Such a record is ignored while the shared record is missing, dropped when that character loads, and dropped at once by the character that turns sharing off. **A record with choices of its own, and every `user` block, are never touched**; a user action that gives the character choices (`SetScope`, `CopySharedHere`) clears `via` and ties the record to the character. Nothing is dropped while the account's list cannot be read (a newer version wrote it). Records already saved by an older version cannot be told apart from people the user added, and stay.
- **Fixed: loaded data was not cleaned** (#156). At start-up the addon now brings back inside their limits, and reports in `/au debug`:
  - **future times**: `memory.last` and the emotions' `at` become now (so a cooldown ends instead of lasting until a date a wrong clock wrote, and a saved emotion decays again); the same for the times, facts and decay day of the relationship records;
  - **huge counters**: `memory.uses`, `seen.count`, `seen.kinds`, `talks` and NPC counts are capped at 1,000,000;
  - **emotion records** are rebuilt as `{ v, at }` with `v` from 0 to 1 (extra fields, such as a 200 KB one, no longer survive);
  - **the list of players** is capped at 300 when loaded, in the character layer, in the account's shared layer (also with sharing off) and in the union of both with sharing on: records without choices go first, the least observed first; a person with choices is never dropped (a list full of them stays over the limit and is reported);
  - an **archetype** that is not a string, or `neutral` with traits, becomes `custom` (it used to become `neutral` with the traits kept).
- **Decided: the dormant path of pack phrases is documented, not changed** (#156, point 3). `DecayMemory` runs when the base addon loads, before the Example, Versi and regional packs register, so their `last` entries are kept for at most 30 days (`Engine.DORMANT_LAST_MAX`, ADR 0025 §7). ADR 0024 and the comment of migration 7 said "when every pack is registered"; both now say what happens. Bounded, and moving the decay later would risk dropping the cooldowns of packs that load on demand.
- **Changed: docs.** ADR 0006 §5 and the new §6 (loaded data is cleaned); ADR 0030 (§11, §13) and ADR 0026 (`via`); ADR 0024; the wiki pages Privacy and Data, Relationships and Troubleshooting (limits and what turning sharing off drops).
- **Tests:** `Tests/run_tests.py` (a real `/reload` of personality v3 and emotion v2 untouched through a session and a second load; a lost `schemaVersion` in four shapes; a chained migration from every schema 0-6 and from no schema at all, with damaged and partial inputs, each with an idempotent second load), `Tests/TestEmotion.lua` (read-only personality and emotion, repaired versions, rebuilt emotions, future `last`, huge `uses`, archetype), `Tests/TestProximityShared.lua` (two characters: removal, sharing off, choices never dropped, a newer account list; the player cap and the counters and times of relationship records), `Tests/TestConfig.lua` (infinity, idempotent migrations, newer sections left alone).
- **Not covered:** the timestamps of the Living Memory entries and places are still taken as saved.
### Q9c: docs and UI text that match the code (issues #160 and #161)

The third review found texts that told the player to type values the commands refuse, a wrong privacy default and developer docs that had drifted.

- **Fixed: the wizard said the Social module "is off by default"** (#160). The default is on and the module is a placeholder: the text (English and Italian) now says that it shares nothing without your explicit consent.
- **Fixed: README and G1 checklist** (#160). The chat modes are `private`, `preview`, `confirm` and `auto` (not the Italian words), the depth values are `natural|literary|elevated`, steps 17-18 ask for "0 errors" instead of exact totals, and step 73 now checks the hint for `/au intensità`.
- **Changed: `/au stories` usage** lists `on`, `off` and `status`; `/au relationships reset` documents `shared` in the wiki.
- **Removed: undocumented argument synonyms** (#160, ADR 0023): `emotion clear`, `soul reset` (use `soul neutral`), `journal flags` (use `journal flag`), `relationships scope <name> this` (use `character`) and `relationships share status` (no argument shows the state).
- **Docs (#161):** ADR 0006 versions and `emotion`, English command names in ADRs 0003 and 0016-0021 with a Step 0 note, links to ADR 0029 labelled correctly, R4 comments cite ADR 0031, counts and lists in the READMEs and ARCHITECTURE, the ADR index, the English checklist scope and the docs rule (every `AzerothUnspoken_*` folder).

### Q7 fixes: shared pack keys, Italian gender agreement, wizard (issues #69, #70, #71 and #77)

Older low-priority issues from the reviews, closed together ([ADR 0033](docs/adr/0033-keys-shared-between-packs-refused-unless-overridden.md)).

- **Changed: a pack that registers a key another pack holds is refused** (#69). It applies to scripts (`RegisterDialogues`), NPCs (`RegisterNPCs`), places (zones, subzones, instances: `RegisterPlaces`) and arcs (`RegisterArcs`), which used to be replaced silently by the last pack loaded. The entry is not registered, the base data stays, `/au debug` lists the notice and `/au validate` reports `keyCollision` (error) with both pack ids. `override = true` on the entry or on the call replaces it on purpose, as a whole, and `/au validate` reports `keyOverride` (warning) with who replaced what. Give each call your `pack` id; the same pack registering its own key again (a regional pack built again) is not a conflict, and a call with no `pack` can take a free key but not register it twice. The base files register under `base_dialogues`, `base_npcs`, `base_places` and `base_arcs`. `PACK_FORMAT.md` ("Keys shared between packs") and the examples are updated, a pack written before this change that relied on replacing needs `override = true`. A refused arc also loses its texts in that call, a refused place does not add its tags.
- **Added: validator code `itAgreement`** (warning, #70, #71): an Italian text with a form of *essere*, *sentire* or *restare* in the first or second person followed by a masculine participle or adjective from a list (stato, venuto, stanco, pronto, sicuro...), outside `{g:}` and `{og:}`. It is strict on purpose, to stay reliable. The whole base content gives none (a test).
- **Fixed: Italian lines that assumed masculine** (#70, #71). The character's own participles take `{g:}` (`Sono {g:stato|stata} su sedili peggiori`, `non mi ha {g:visto|vista}`, `mi hanno {g:trattenuto|trattenuta}`, `non mi ha {g:voluto|voluta}`); a target of unknown sex gets no generic masculine (`chi giace a terra` instead of `il caduto` and `il compagno caduto` in the resurrection emotes, `creatura delle zanne` and `bestia mia` for the beasts, `da dove provieni` for undead and demons, `quanto si è disposti a dare`); the guard that says `Con te posso essere franco` now says `parlare chiaro`. The editorial rule is in `PACK_FORMAT.md` ("Placeholders"). Left as it is: `rel.battle.lover` ("lei, o lui"), neutral on purpose.
- **Checked: `{og:}` in NPC lines** (#71): in a dialogue `ctx.other` is the NPC, so `{og:franco|franca}` gives the NPC's gender and `{g:}` the player's; with the NPC's sex unknown the line is discarded and a neutral variant is used. A test covers a woman NPC, a man NPC, an unknown one and the test NPC.
- **Fixed: the wizard showed NPC dialogues and Stories as not active** (#77). The wizard and the settings panel now read one list, `Config.MODULE_LIVE`, so the `*` appears only for Social and Audio. The note about it is removed from the wiki page of the wizard.
- **Checked: README and wiki commands** (#77). The README documents `/au validate [full|<pack>]` since the English command names (#132), and every command in the README and the wiki exists in `UI/Commands.lua`; nothing to change.
- **Tests:** `Tests/TestKeyClaims.lua` (55 checks: the four registrations, refusal, override on the entry and on the call, the owner registering again, unnamed packs, separate kinds, texts of a refused arc, notices, validator codes), `itAgreement` and the clean base in `Tests/TestValidator.lua`, `{og:}` of NPCs in `Tests/TestNPCAlive.lua`, the module list of the wizard in `Tests/TestNarrator.lua`. The archive round trip is unchanged (an empty diff).

### R3c: monologues and composite situations (issues #99 and #100)

Last part of the Dynamism milestone of the roadmap R3 ([ADR 0032](docs/adr/0032-monologues-of-whole-phrases-and-composite-situations.md); tracking issue #131). Two similar moments can now sound different depending on what comes with them, and a quiet moment can open into a short train of thought, **still with one intervention per moment and only whole, hand-written phrases**. With `Engine.R1_COMPAT` the seeded trace of 3,000 picks (`Tests/trace_picks.py --r1`) is byte-identical to `main`.

- **Added: monologues** (#99). A rule with `kind = "monologue"` and `parts` (two or three ids) is said as one intervention: one gate, one die, one slot of budget and quota, one entry in the narrator. It has no texts of its own: each part is a **whole phrase** with its own variants, marked `chainable` (`"only"` when it is never said alone, `true` when it also stands on its own). `order = "free"` lets the parts after the first change places. Only the **narrator and the inner voice** have monologues, so they never reach chat; a narrator monologue opens with an emote after the character's name and continues with whole sentences. Each part counts as used; a monologue weighs ×0.2 while another one is among the last six interventions.
- **Added: composite situations** (#100). Situations are **data** (`situations = {}` in a pack, `NS:RegisterSituation`; the base ones in `Data/Themes.lua`): `close_call` (a victory after low health in the same fight), `second_wind` (a victory soon after a resurrection), `hard_won_level` (a level right after low health or a death), `wounded_arrival` (a new zone still wounded), `rain_dusk_return` (a return in the rain at dusk or night). The Director remembers the events offered in the last five minutes (names and times, never saved); when the winner of a moment leads a situation, `Director:Compose` puts it in `ctx.situation` and the lines written for it (new condition `situation`) are tried first. **With no fitting line the single winner speaks as before.** The offers it includes are merged once: a candidate of the same moment is logged `merged` (its `onResult` gets `merged`), not `outranked`.
- **Added: validator rules** for monologues (`monologueParts`, `monologueOrder`, `monologuePart`, `monologueVoice`, `monologueForm`, `monologueStyle`, `monologueTheme`, `monologueLength`; warnings `monologueBusy`, `monologueText`, `orphanPart`; load issues `badKind`, `badChainable`) and for situations (`badSituation`, `situationLead`). The weather-word warning knows that a line of `rain_dusk_return` may name the rain.
- **Added: content.** 8 monologues (23 parts, two variants each) for thoughts, arriving in a zone (also at dusk), the inn, a new level and a resurrection, and 10 composite-situation lines (two voices per situation, two or three variants), in English and Italian, in the new packs `base_monologues` and `base_situations` (1,169 base intentions, 1,176 phrases).
- **Added: counters.** `/au prof` reports the monologues and the composite situations of the session; the record of a line carries `kind`, `parts` and `situation`. `Gateway:Narrate` also returns the record it showed.
- **Changed: the archive.** New columns `kind`, `parts`, `part_order` (the rule field `order`) and `chainable` in `intention` and in `authoring/intentions.csv`, read and written by the importer, the exporter (their own line in the canonical style), the overlay and drafts; a draft monologue is refused unless its 2-3 parts are chainable phrases of its own private voice, and needs no texts. The coverage report does not count a part said only in a monologue as a line of its event. The round trip stays an empty diff; `Tests/check_archive.py` has a section for the new fields.
- **Measured** (`Tests/bench_m2.py`, now also reporting monologues and situations; 3 hours, 3 seeds, 2 characters, against `main` on the same machine): a composite line about **5 times per session (5.9% of the interventions**: hard-won level 2.3, close call 1.3, wounded arrival 1.0, second wind 0.3), a monologue about **0.8 times (1%**, in proportion to the eight written); same theme 1.4% -> 0.8%, "says"/"murmurs" 6.3% -> 7.3%, combat 34.8% -> 34.9%; `PickEntry` mean 0.58 -> 0.55 ms, p95 1.0 ms. The seeded trace without `--r1` changes (new candidates change the random draws).
- **Tests:** `Tests/TestDynamism.lua` (a monologue is one record of whole variants in order, parts never alone, fixed and free order, narrator emote then sentences, `R1_COMPAT`, one intervention for the Director, the validator rules; victory after low health gives `close_call` and exactly one line, a candidate of the same moment is merged, no fitting line gives the ordinary winner, windows, order, `withAny` and `when`, no composite line outside its situation, situation validation); `Tests/TestScale.lua`, `TestContent.lua`, `TestChatGateway.lua`, `TestSchema.lua`, `TestValidator.lua` updated for monologues and the new counts.
- **Not verified in the real client**: how a monologue reads in the narrator box, and whether the windows of the situations (30 s, 2-5 minutes) match real fights. Steps R3c.1-R3c.5 of `docs/G1_checklist.md`.

### R2b: Story Arcs and NPC Alive as data in the archive (issue #143)

The 202 intentions that still built their rules in code (`base_arcs`, 33, and `base_dialogues`, 169) and the structures around them are now plain data, so the authoring archive holds **every** intention and the coverage report says **0 not archived** ([ADR 0027](docs/adr/0027-sqlite-authoring-archive-and-exporter.md), item 9). Nothing changes in the game: the registry, events, arcs, dialogue scripts and texts the game registers are the same, checked by running the Lua before and after.

- **Changed: the data files are literal tables.** `Data/RegistryArcs.lua` and `Data/RegistryDialogues.lua` list their rules one by one (the `Rule` helper and the loop over the table of tokens are gone; the legend of the tokens stays in a comment); `Data/Arcs.lua` and `Data/Dialogues.lua` spell out the arcs, the scripts and their replies (the helpers `StarterZone`, `Choice`, `Common` and `With` are gone; the shared starting-zone condition is a local constant of plain data). The engines `Systems/StoryArcs.lua` and `Systems/NPCAlive.lua` stay generic and interpret whatever is registered, so a pack adds arcs and dialogues the same way.
- **Added: `pack` in `NS:RegisterDialogues({ pack, scripts })`** (as in `NS:RegisterArcs`; the game ignores it, the archive files the scripts under it) and the pack id as the third argument of `NS:AddArcTexts` in the base language files.
- **Added: `editable = true` on a dialogue reply**, for a reply the player may rewrite. It is the only exception to the rule that a reply is a neutral question or action.
- **Added: the archive reads, writes and checks the structures.** New tables `arc`, `arc_text`, `arc_step`, `script`, `script_node` and `script_reply`; the importer reads `Data/Arcs.lua`, `Data/Dialogues.lua` and the journal texts of each language folder, the exporter writes them back (unchanged entries byte for byte; a changed or new arc, script or journal text in the canonical style), and a source file can now hold several tables (a language file of arcs has the journal texts and the lines). `python tools/archive/cli.py arcs [ID]` and `scripts [KEY]` list and show them. The round trip is an empty diff over all 1,128 intentions, the 4 arcs (13 steps, journal texts in two languages) and the 5 scripts (27 nodes, 22 replies).
- **Added: validator rules for the new structures** (`tools/archive/structures.py`, run by `check`; the game's own `badArc` and `badDialogue` stay): unreachable nodes and states, dangling transitions and replies, missing languages (journal texts, reply labels), events nobody speaks, a loop that never closes, unknown fields, and **replies that put words in the player's mouth** (a feeling, a trait, a decision or a promise: "I feel...", "I swear...", "Mi sento...", "Ho paura...") unless they are questions or `editable`. The same rule is in `NPCAlive:Check` (`badDialogue`), with the same list of phrases, and a test checks the two lists match.
- **Changed: the coverage report** says how many intentions are not archived (0) and counts the arcs, steps, scripts, nodes and replies with their problems; an error in them is a warning annotation in the CI job.
- **Tests:** `Tests/check_archive.py` has two new sections: "EQUIVALENCE" (runs the Lua of the four data files and the language files with lupa and compares what the game registers with what the archive holds: 202 rules, events, 4 arcs, 5 scripts, journal texts and the texts of the 202 lines in each language) and "ARCS AND DIALOGUE SCRIPTS" (import, indexes, every validator rule on a definition made wrong on purpose, an edited arc and script written in place, a new arc, a new script and new lines exported, the round trip and the canonical rendering over the written folders, the `check`, `arcs` and `scripts` commands). `Tests/TestNPCAlive.lua` has one new test for the rule on replies and the `pack` field. The tests of NPC Alive and Story Arcs pass unchanged.
- **Not done:** the arc definitions, scripts and journal texts are approved content of the folders (no draft or review state, not in the overlay): a new arc is written in the folders by hand and checked. Moving them to the overlay is part of stage 2 of ADR 0027. The list of phrases that detects replies putting words in the player's mouth catches the obvious cases only; the review catches the rest.

### R4: intensity personality, emotions and the tone of a return (issues #96, #97 and #98)

The character now has a personality made of **intensities that coexist** and a **mood** that events change and time heals, and the tone of a return follows how the last visit ended ([ADR 0031](docs/adr/0031-intensity-traits-emotional-state-and-the-tone-of-a-return.md); owner decisions D8 and D9 in #130). **With a neutral profile and a calm mood the narrator chooses exactly as before**: the seeded trace of 3,000 picks (`Tests/trace_picks.py`, with and without `--r1`) is byte-identical to `main`.

- **Added: ten personality axes from 0 to 100** (#96): `idealism` (cynical <-> idealist), `concreteness` (dreamer <-> pragmatic), `optimism` (pessimist <-> optimist), `altruism`, `stoicism`, `ambition`, `spirituality`, `patriotism`, `curiosity`, `vengefulness`, covering the user's twelve features; irony, inner voice and topics to avoid are unchanged. An unset axis is "unknown", never 0. The old choices (`temperament`, `morality`, `faith`, `motivation`) are no longer saved for the character but stay as tag vocabulary, **read from the axes** (`temperament:stoic` = stoicism ≥ 67...), so every existing content tag still applies; the interlocutor (S6c) keeps choosing them.
- **Added: graded affinity and threshold tags.** The soft factor `P` follows the intensity (×1.6 inside a band or past a threshold, ×0.6 at 20 points or more away, in between near the edge); new tags `stoicism>=60`, `req:stoicism>=60`, `not:optimism<=30`; conditions `traitMin` and `traitMax`. Hard exclusions (`req:`, `not:`, topics to avoid, inner voice off) stay rigid.
- **Added: archetypes as editable presets**, plus `patriot` and `dreamer`; editing a slider makes the profile "custom (from ...)". The personality window has a **slider** per trait (saved on release), the side of two-sided traits and an `x` to clear. `/au soul <axis> <0-100|low|mid|high|->`; the old words (`/au soul temperament stoic`) set the matching axes.
- **Changed: saved profiles migrate** (`personality.version` 1 -> 2): an archetype becomes its preset, custom choices become intensities that still satisfy them, the old choices are kept as identifiers in `legacy`; irony, curiosity, inner voice, topics and the Total RP 3 consent are kept. Total RP 3 and the game layers are converted the same way. Tested for every S5 archetype and every old value.
- **Added: the emotional state** (#97, `Systems/Emotion.lua`, `Data/Emotions.lua`): serene, happy, determined, curious, worried, tense, furious, melancholic, nostalgic, admiring, from 0 to 1, each fading with its own half-life (tense 3 minutes ... melancholic 2 hours), computed on demand with no timer. Appraisal rules in data for death, resurrection, low health, battle, victory (a stronger foe), level up, quests, a first visit, a return to a place of a bad memory, a long absence, landmarks, an inn, a long flight, dawn and dusk, prayer, a known friend or enemy, the weather. **The personality modulates them**: a stoic character rises more slowly, an optimist worries less, a vengeful one burns faster.
- **Added: `ctx.emotion`, conditions `emotion`, `emotionMin`, `emotionMax`, and the weight factor `E`** (`W = B×C×P×N×S×R×E`): a line of the dominant emotion (tag `emo:<emotion>`, or `temperament:cheerful`, `:melancholic`, `:fierce`, `:stoic`) weighs up to ×1.6, a line of a clashing one down to ×0.15; the dominant emotion also prefers its registers. Emotion and trait conditions do not raise the specificity tier.
- **Added: `/au emotion [on|off|reset]`**, an **Emotion** line in `/au debug` (state, dominant, last cause, what is saved) and the **Emotions** module in the settings. Off, the narrator behaves as before R4 and the saved mood is cleared; `Engine.R1_COMPAT` switches it off too.
- **Privacy:** only the **slow** emotions (determined, serene, nostalgic, melancholic) at 0.3 or more are saved, as `{ v, at = time() }` in `AzerothUnspokenCharacterDB.emotion`, and decayed at login by the time away. Never the cause, never text (ADR 0017).
- **Fixed: cheerful or ironic lines after a death** (#98). New validator rule `lightReturnAfterBadVisit`: a cheerful or ironic return line must declare `lastVisitBad = false`, and gallows humour about the bad visit must require an ironic character (`req:irony:high`). It found ten lines in the base, all fixed (among them the cheerful forest return of the issue). The guard does not make those lines heavier (`lastVisitBad = false` is not counted in `C`).
- **Added: content.** 35 IT/EN intentions in the new pack `base_emotions` (`Data/RegistryEmotions.lua`, `Emotions.lua` of each language folder), two variants each, for the most common events (zone, return, death, resurrection, battle, low health, victory, level up, inn, prayer, thoughts, rain), conditioned on an emotion or a strong trait; the feeling is implied, never named (1,128 base intentions, 1,135 phrases).
- **Changed: the archive** validates `emo:` tags and the emotion conditions at draft, knows the engine's list of emotions, and the new pack round-trips with an empty diff; `Tests/check_archive.py` covers drafting, exporting and re-importing a line with the new conditions and a threshold tag.
- **Measured.** Scenario M6 of A1 (`Tests/scenario_return.py`, 40 seeds: enter Elwynn, die, come back after 30 minutes; also checked by the suite on 10 seeds): a cheerful or ironic return line was spoken in 9 of 40 runs for a neutral character before R4 (19% of the weight of the eligible return lines) and 11 for the cheerful traveler (24%); now none (0%), and the ironic rogue keeps only the gallows humour written for it. M2 (`Tests/bench_m2.py`) against `main`: same theme 1.8% -> 1.4%, "says"/"murmurs" 8.1% -> 6.3%, combat 34.9% -> 34.8%; `PickEntry` mean 0.74 -> 0.64 ms, p95 1.0 -> 1.2 ms (same machine; noise of a few tenths).
- **Tests:** `Tests/TestEmotion.lua` (about 540 checks: the axes, threshold tags, graded affinity, the migration of every S5 archetype and old value, presets, decay, the personality's modulation, appraisal through the Director, conditions, factor E and registers, module off and `R1_COMPAT`, persistence and malformed data, the commands, the #98 rule, a simulated death with three profiles, the M6 scenario), `Tests/TestSoul.lua` updated to the intensity model, `Tests/scenario_return.py`, the M6 check in `Tests/run_tests.py`, the archive section.
- **Not verified in the real client**: how the mood feels in a real session (all half-lives, gains and thresholds are offline proposals; `/au debug` shows them), the sliders at different interface scales, the migration of a real saved profile. Steps R4.1-R4.6 of `docs/G1_checklist.md`. Not in this change: a Director rhythm that follows the mood, Total RP 3 traits straight to intensities (they still go through the old choices), the culture of origin (#124).

### R4b2: proximity and a list shared in the account (issues #113 and #114)

Second part of the Player relationships milestone ([ADR 0030](docs/adr/0030-proximity-session-proposal-and-account-shared-list.md); decisions D11 and D12 in #130; tracking issue #131). **Both options are off by default.** #111 and #112 (the GUID) wait for the in-game identity tests and are not part of this.

- **Added: recognising people nearby** (#113). With **Recognise nearby** on (`relations.proximity`, `/au relationships proximity on|off`), a **nameplate** or the **mouseover** can offer a player who is **already in the list** to the Narrative Director as `relation_player`, with the existing guard (at most once per person and session) and the Director's own budget and chance. With the Total RP 3 consent of S6c, a person who is not listed but has a TRP3 profile becomes a **session suggestion** in *People met*. It is for this session only: it **never creates a record** (not even with "Register by itself"), **writes nothing** (a sighting is not an encounter: no count, no fact, no `last`), keeps **nothing about strangers**, and **does not read a secret identity** (the unit is dropped before its name is asked for). Limits: 60 seconds between two proposals and 10 per session; a person already recognised costs none of the budget. With the option off the two client events are **not even registered** (new `EventBus:RemoveSource`).
- **Added: a list of people shared by the account's characters** (#114). With **Share with the account** on (`relations.sharePlayers`), the *choices* about people (axes, label, feelings, note, tags, traits, role) live in `AzerothUnspokenDB.sharedPlayers` and every character of the account uses them; the *observations* (`seen`) and the journal flags stay per character. Turning it on needs a **warning (privacy and role play) and a second step**; turning it off is one step and **deletes nothing**. Per character stays the default.
- **Added: how the two combine.** A character record with choices of its own wins **as a whole** (blocks are never mixed field by field); otherwise the shared one counts. Edits go to the block that counts. **Scope per person**: a button in the detail and `/au relationships scope <name> shared|character` move the choices to the account or give the character its own copy. Only user actions put people in the shared list.
- **Added: migration and the way back.** Turning it on moves nothing; `/au relationships share all` moves this character's choices into the shared list (where the account already has choices for a person, the character's own stay, nothing is overwritten) and can be repeated; `/au relationships share copy` copies the shared choices into this character, so turning the option off loses nothing for it. `/au relationships share [on|off]`, `reset shared` (clears the account's list, by name, with confirmation); *Remove person* with sharing on removes from both layers; `reset players` clears the character's records only.
- **Changed: the window** has two more options (**Recognise nearby**, **Share with the account**, with the warning on screen while the confirmation is open), a scope button in the detail of a player when sharing is on, and is 28 pixels taller for the third row of options (the detail of a player 64). `/au debug` shows both options and the proximity counters (proposed, secret).
- **Changed: where code reads a person.** `R:Get("player", key)` may return a **view** (`rec.view`) of the shared choices with this character's observations; the readers (`Resolve`, the window, the export, `Interlocutor`) go through it, `R:IsListed`, `R:ScopeOf` and `R:CharRecord` give the rest. `Config:Load` sets `NS.gdb`, the account-level table.
- **Tests:** `Tests/TestProximityShared.lua` (about 250 checks): off by default and not registered, registered and removed with the option, one recognition per person and session with the saved data byte-for-byte unchanged, mouseover, no record even with "Register by itself", secret identity (the name is not asked for; secret values raise nothing), the pause and the session budget, only players, the TRP3 consent and its limits, the user block never written (also with the shared list), shared list off by default, the warning and the two steps, writes to the shared record, a second character, precedence (as a whole, never mixed, scope in both directions, an empty copy), migration (`share all`, repeatable, nothing overwritten), the way back and off losing nothing, remove and reset, loaded data (cleaned, no observations, a newer version untouched), the window and the commands. The persistence section of `Tests/run_tests.py` saves and reloads the shared list, reads it from a second character and with the option off, and leaves a newer version intact. `Tests/check_user_block.py` knows the two new user actions.
- **Not verified in the real client** (section R4b2 of `docs/G1_checklist.md` and its English counterpart): whether `NAME_PLATE_UNIT_ADDED` and `UPDATE_MOUSEOVER_UNIT` arrive as in the dump, whether `UnitFullName` works on a nameplate unit and how identities behave in secret contexts, the feel of the 60-second pause and the 10-per-session budget, and how the taller window looks. Not in this part: the GUID (#111, #112) and suggestions of a change of feeling (D13).
### Fixes: spell names in Italian lines (#104) and a flaky test (#139)

- **Fixed: no English spell names inside Italian lines** (#104). The client is English, so `{spell}` gave English names ("lanci Fireball"). Rather than ship a translation table of official names that cannot be checked offline, the three Italian lines and the Italian frame that used `{spell}` now say "questo incantesimo" or leave the name out; the English text is unchanged. The validator no longer requires both languages to use `{spell}` together. A test keeps `{spell}` out of the base Italian text. `PACK_FORMAT.md` and the Languages wiki page explain that `{spell}` is the client's name.
- **Fixed: flaky `/au prof` privacy test** (#139). The "no 1234" check could match the digits inside a probe timing; numeric secrets now count only as whole numbers.

### R3a: selection quality, tiers, themes and quotas (issues #89, #90 and #91)

The narrator now varies **what it talks about**, not only the words: a place-specific line comes first where it exists, the same theme, image, voice or opening does not come back at once, "says" and "murmurs" stop framing a third of the emotes, and combat no longer fills the session ([ADR 0029](docs/adr/0029-specificity-tiers-themes-motifs-and-category-quotas.md)). This is the first change of the roadmap meant to make the selection **choose differently** from R1.

- **Added: specificity tiers and an explicit fallback chain** (#89). Every rule has a tier (0 generic, 1 situation or region, 2 zone, 3 subzone, 4 landmark), deduced from its conditions or written as `tier`. The pick keeps the most specific tier that still has three lines not used recently (with the tiers above), and widens one tier at a time as they are used: landmark -> subzone -> zone -> region, atmosphere or situation -> generic of the event. An event with no line can borrow a **related event** declared in data (`events = { rezother = { fallback = "heal" } }`; the base declares `rezother` -> `heal` and `threat` -> `battle`), at most three steps, then silence; the record says `via`. Validator: `badTier`, `badFallback` (unknown event or a cycle).
- **Added: themes, motifs and the thematic memory of the session** (#90). Closed vocabularies in the new `Data/Themes.lua` (pack `base_direction`): 21 themes and 66 motifs, extensible by a pack (`themes = {}`, `motifs = {}`, `RegisterTheme`, `RegisterMotif`); a rule writes `theme` and up to three `motifs`; the validator rejects unknown ones (`badTheme`, `badMotif`). The factor `N` now also weighs the theme and the motifs of the last six interventions, fading in 30 minutes, and the third line in a row in the same voice. A variant does not open with the same two words as the last eight interventions if another can. **This memory lives only in the session and is never saved** (ADR 0017).
- **Added: frames tied to register and theme.** A frame can declare `themes` (it tells only phrases of those themes, and is preferred for them) besides `styles`; a frame used in the last eight interventions, for any event, weighs less. `Data/Frames.lua` gains 20 frames for every event, each tied to a register or a theme (IT/EN, gender-aware); "says" and "murmurs" become a light fallback tied to the registers they suit.
- **Added: per-session category quotas and hunger** (#91), in data (`quotas = {}`, `hunger = {}` in a pack, `SetCategoryQuota`, `SetCategoryHunger`; validator `badQuota`, `badHunger`). Combat may take at most 40% of the last 10 interventions heard in 15 minutes (spellcraft 30%), explicit ones included; never less than two combat lines in a quiet window; death, resurrection and level up are never refused. The refusal reason is `quota:<category>` in `/au debug` and `/au prof`. Exploration (×2 after 10 minutes of silence) and reflection (×1.5 after 15) get **hunger**: a higher chance, and the first turn among candidates of the same priority.
- **Changed: all 891 archived intentions are labelled** with a theme (556 also with motifs), through the archive: the 828 that existed before R3 drafted by AI sessions from the English texts with the rules of CONTRIBUTING, reviewed on a sample; the 63 lines of the world (R3b, `base_world`) tagged by hand after merging it. The arcs and the ambient dialogues (code, not archived) are not labelled yet.
- **Changed: the archive** covers the new fields: columns `theme`, `motifs` (and the search index `intention_motif`) and `tier` in the schema, the overlay CSV, the importer, the exporter (canonical style: theme, motifs and tier on their own line after tags and depth), drafts, `search --theme` and `--motif`, and a check of the vocabularies. **The round trip of the folders is still an empty diff**, also through the canonical renderer.
- **Changed: the main register of a rule is read with `Engine.Tone(p)`**; the field `p.tone` is gone, and the deduced tier is computed when needed (`Engine.Tier(p)`) instead of stored: the rule table keeps its size now that it has a theme and motifs.
- **Changed: the selection equivalence test of R1** (`Tests/TestScale.lua`) now states what still holds (the index gives the same eligible rules as a scan, `Score` equals `Factors().W`) and what changes on purpose (the pick among them), and checks that the tiers only narrow the pool. `Engine.R1_COMPAT = true` turns off all of R3: with it `Tests/trace_picks.py --r1` printed the same 3,000 picks as R1, on the real database and on a synthetic archive.
- **Measured** with the new `Tests/bench_m2.py` (a scripted 3-hour session, two characters, three seeds, through the real Director; run by the suite, which checks the targets), R1 -> R3: same theme as the previous intervention 7.7% -> 1.8% (target < 15%); "says"/"murmurs" among the framed interventions 35.8% -> 8.1% (target < 10%); interventions inside a frame 34.5% -> 30.3%; a content word already in the four previous interventions 21.9% -> 19.4%; same voice three times in a row 14.7% -> 11.3%; combat share 62.7% -> 34.9%; zone lines in 3 hours 2.0 -> 3.8. `PickEntry` (`Tests/bench_scale.py`, lupa): 0.24 -> 0.37 ms on today's database, 1.40 -> 1.29 ms at 10,000 entries, 5.1 -> 4.7 ms (p95 17.9 -> 13.4 ms) at 50,000 entries in one language. Memory per entry is unchanged for content without theme and motifs and +14% (1,940 -> 2,220 bytes) when every entry has both.
- **Tests:** `Tests/TestSelection.lua` (about 100 checks: tier deduction and explicit tiers, the specific tier first and the generic fallback, the window of the whole pool, related events and cycles, the vocabularies and the validator, the labelled content, novelty of theme, motifs and voice and its decay, `Score` = `Factors` with the novelty, consecutive themes before and after, voice alternation, openings, frames by theme and the share of "says"/"murmurs", nothing saved, quotas, span, hunger and a simulated session), the M2 section of `Tests/run_tests.py`, the round trip with the new columns. Tests that measure the Director's pauses and budget run without quotas.
- **Not verified in the real client**: how often the narrator speaks with the quotas and hunger in a real session, and whether the new frames read well in chat. The constants (`TIER_MIN`, the novelty penalties, the quotas, the hunger) are tuned on the offline simulation; the counters of `/au prof` should tune them. Not in this part: the rule "at most one line in n names race, class or emotion", longer pauses after a strong intervention, soft tags for the other dimensions, labels for arcs and dialogues.

### R3b: world variables (issues #92, #93, #94, #95 and #121)

The narrator now notices **what the client tells it**: the weather, whether it is day, the subzone and the landmark, the quest log, reputation standings, rest in an inn and flights ([ADR 0028](docs/adr/0028-world-variables-weather-day-subzones-quests-reputation-rest-and-flight.md); tracking issue #131). **None of these APIs has been tried in the client yet** (`/au probe`, #82): every reading goes through Compat and means "I don't know" when it is missing, restricted or incoherent, and the narrator then behaves as before. No quest or chat text is read or saved; nothing new goes to public chat.

- **Added: weather** (#92). `ctx.weather` (`clear`, `rain`, `snow`, `storm`, `sand`, `fog`, or `unknown`) from `C_Weather.GetCurrentWeather`, read by the name of the `Enum.WeatherType` value; a type the enum does not have, or rain with intensity 0, is `unknown`, never `clear`. The condition `weather`. The event `weather_change` fires when the weather changed and stayed changed for 3 seconds, never for the first reading of the session or the one after a loading screen, never in combat. The validator warns when a text names the weather and its rule has no `weather` condition (events that describe the surroundings, rules not tied to a place).
- **Added: day and night** (#93). `ctx.isDay` from `C_DateAndTime.IsDayTime`; `ctx.time` is night when the client says night, and during the day dawn and dusk are the transition hours (calibrated by the last `DIEL_CYCLE_CHANGED` of the session; the fixed 5-8 and 18-21 until then). Without the client's answer the old fixed thresholds are the fallback, so every `time` condition keeps working. The condition `dayTime` (`true`/`false`); the events `dawn` and `dusk` on `DIEL_CYCLE_CHANGED` (a 60-second poll of the hour when the event does not exist).
- **Added: subzones and landmarks** (#94). `ZONE_CHANGED` and `ZONE_CHANGED_INDOORS` become the event `subzone_enter`, debounced (the subzone must stay for 2.5 seconds, the same one is silent for 10 minutes, not in combat or right after a loading screen) and **never loads a pack**. `Data/Landmarks.lua` (`NS:RegisterLandmarks`) names 16 places inside subzones (`id`, `zone`, `subzone`, `tags`, optional `mapID`, `x`, `y`, `radius` where the position is reliable), validated at load and by `/au validate`. Entering one fires `landmark` instead; the condition `landmark` (an id or a tag) and the placeholder `{landmark}`.
- **Added: quests and reputation** (#95). `ctx.quest` from `C_QuestLog` (ids and counts of numbers only, in memory, for the session) and `ctx.repStanding` / `ctx.repDirection` from `C_Reputation` (the standing, `hated` to `exalted`). Conditions `questActive` (true/false, an id or a list), `questReady`, `questJustCompleted`, `questAttemptsMin` and `repStanding`, `repDirection`. Events: `quest_progress` (an objective finished or a quest ready for turn-in; single kills are not events), `quest_complete` (priority 2; also without `C_QuestLog`) and `reputation_change` (priority 2; a standing changed, never points inside a standing). The existing `QUEST_STATE` event now carries the quest id instead of a second source for the same client events.
- **Added: inns and flights** (#121). `rest_enter` when resting starts and stays (not at login or after a loading screen). `journey` at the start of a flight (`PLAYER_CONTROL_LOST` and then `UnitOnTaxi` true, so a stun is not a flight) and at its arrival (at least 20 seconds); conditions `onFlight`, `journey` (`start`/`arrival`) and `journeyMin` (seconds).
- **Added: content.** 63 new IT/EN intentions in `base_world` (1,093 intentions in the base database, 1,100 phrases with the regional ones), at least two variants each, in `Data/RegistryWorld.lua` and `World.lua` of each language folder: rain, snow, storm, sand, fog and clearing; arriving in the rain, also on a first visit; dawn and dusk (and in a forest); a subzone (generic, in the dark, at night) and landmarks (inn, village, graveyard, camp, mine, abbey, a crossroads); a quest step, a quest ready, done, done after many attempts; each standing up and a fall; an inn and a city; the start of a flight, the arrival, a long journey. Italian lines avoid guessing gender wherever a `{g:...}` form is possible. No invented lore: moods, never facts about a place.
- **Changed: the Director.** The new events have a category (`exploration` or `life`), a default chance and cooldown, the module `world` (weather, dawn, dusk, subzone, landmark, journey) or `personal`, and are subject to the usual gate, pacing and budget. `/au debug` has a **World** line.
- **Changed: `ctx.time`.** `ctx.time` now follows the client when it answers (see above); `Tests/MockWoWAPI.lua` derives day from the hour (5-21) unless a test sets `P.isDay`.
- **Tests:** `Tests/TestWorld.lua` (about 660 checks: the weather by enum names, unreadable, secret, missing and error cases; the fallback and the calibrated time; each event, its debounce, combat, loading screens and login; a stun is not a flight; quests, attempts and ids only; reputation; landmarks by name and by distance; the validator; the Director's category, priority, module, silence and budget), a check in `Tests/TestPacks.lua` that none of these events loads a pack with the packs installed as in the client, and a new section of `Tests/check_archive.py` (the world rules and conditions are archived as data, a draft written through the archive with the new conditions exports, and the folders still round-trip with an empty diff).
- **Not verified in the real client** (section R3b of `docs/G1_checklist.md` and its English counterpart): the values of `Enum.WeatherType` and `C_Weather.GetCurrentWeather`, when `DIEL_CYCLE_CHANGED` fires and how the hours of dawn and dusk compare with the game, the payloads of `QUEST_ACCEPTED`, `QUEST_TURNED_IN` and `QUEST_LOG_UPDATE`, `C_QuestLog` objectives, `FactionData.reaction`, `UnitOnTaxi` and the order of `PLAYER_CONTROL_LOST` and `PLAYER_CONTROL_GAINED` in a flight, `ZONE_CHANGED` at borders, the subzone names of `Data/Landmarks.lua` and `C_Map.GetPlayerMapPosition`. The thresholds (3 seconds for the weather, 2.5 for a subzone, 10 minutes of silence for the same subzone, 20 seconds for a flight, two hours of dawn and dusk) are hypotheses to tune in game.
### R4b: player relationships, first part (issues #106, #107, #108, #109 and #110)

The character remembers the other players the user puts in the list, and keeps **what the user chose** apart from **what the addon observed** ([ADR 0026](docs/adr/0026-player-records-user-choices-apart-from-observations.md); decisions D11-D14 in #130). No player is added without a user action, no chat, whisper or emote text is stored, nothing goes over the network.

- **Added: user choices apart from observations** (#107). A player record is now `{ source, noted, user, seen }`: `user` holds what the user chose (axes edited by hand, label, feeling, note, tags, traits, role), `seen` what the addon observed (`first`, `last`, `count`, encounters by kind, a ring of facts, a reserved `guid`). **The software never writes `user`**: only the user-action functions do (the setters behind `Edit`, `AddPlayer`, `Interlocutor:SetTrait`), proved by a behaviour test over every automatic path and by a source check (`Tests/check_user_block.py`). NPC records stay flat.
- **Changed: `relationships.version` 1 → 2.** `R.MigrateV1` moves the flat player fields into the two blocks when the data loads (nothing lost, nothing invented, idempotent); data from a newer version stays read-only and untouched. A saved version 1 file is migrated in `Tests/run_tests.py` like the earlier schema migrations.
- **Added: two sections and two actions in the window.** The detail of a player shows **What you chose** and **What the addon observed**, with **Forget observations** (empties `seen`, keeps the person and every choice) and **Remove person** (deletes the record), each with a confirmation. The window is taller for players.
- **Added: encounters by type and a visible count** (#108). For a player **already in the list**, `last`, `count` and the tally by kind are updated for a group join, a trade, a duel request, a group invite, an emote aimed at the character, a private reply (the recipient's name only) and the target; a fight in a group is a shared experience (`group_combat`: it updates `last` and the tally, not `count`). The same kind with the same person within 10 minutes is one encounter. A ring of the last 5 facts keeps kind, map id, zone and time, never text. Duels, invites, emotes and targets of people who are not in the list create nothing, not even a suggestion; a person the user adds from a suggestion starts with the encounter that proposed them. New **Encounters** column (sortable) in the relationships window and **Encounters: N (group 3, trade 1...)** in the export.
- **Added: feelings in words and the `ally` label** (#109). Up to two feelings per person (`trust`, `liking`, `wariness`, `fear`, `resentment`, `gratitude`), chosen by the user: tag `rel.feeling:<id>` (a set trait, with `rel.req:` and `rel.not:`), condition `feeling`, a preset of axes the user can ask for (**Typical axes**, `/au relationships feeling <name> <feeling> preset`; it only raises an axis where it is weaker) and the commands `feeling` and `forget`. The label **`ally`** (IT *alleato/alleata*) is manual only: the addon never derives it, so no existing relation changes label. A `warm` line is dropped for a person with wariness, fear or resentment (the #105 rule extended to the user's words), and `relation_player` joins the events whose warm lines must exclude the negative relations (validator).
- **Added: `relation_player` event, a known player recognised** (#106). A Director candidate with the "memory" priority and a guard (`isKnown` and `relationKind = player`), offered **once per person and session** when a listed player joins the group, duels, invites or emotes at the character, and, only if the user turns on the new option **Recognise on target** (`relations.recognizeTarget`, off by default), when they are the target. The Director keeps its budget, moment and chance: silence is a valid outcome and the meeting is recorded either way. The roster is read once, a second after the last `GROUP_ROSTER_UPDATE`. The line goes to the private narrator: no new road to public chat.
- **Added: relationship conditions from the observations** (#110). `relDaysSince` (a number, or `{ min, max }` with the upper end excluded), `relMetHere` and `relShared` (`group`, `trade`, `duel`, `invite`, `emote`, `whisper`, `target`, `group_combat`), validated, read from `seen` and from the state before the first meeting of the session (so "nine days since we last met" does not become 0 the moment the person is recognised). False without a previous meeting.
- **Added: content.** 21 new IT/EN phrases in `base_relations` (1,030 phrases in the base database): a recognition line for each of the six feelings (a short, a literary and an elevated variant each), for ally, friend, rival, enemy, wary, feared and a generic known player, examples of every new condition (a long absence, some weeks, the same day, meeting in the same place, a fight or a duel shared) and a greeting and a farewell for allies. The Italian lines avoid forms that guess the other person's gender.
- **Changed: where code reads a player record.** The repository's own readers (`Resolve`, `Interlocutor`, the window, the export, the tests) use `R.UserOf(rec)` and `R.SeenOf(rec)`, which return the right table for both players and NPCs. A tool that read `players[key].trust` or `.note` directly must read `players[key].user.axes.trust` and `.user.note`.
- **Tests:** `Tests/TestPlayers.lua` (about 570 checks: the record shape, the v1 → v2 migration and its cleaning, the software never writing `user` with a negative control, the window sections and the two actions, every kind of encounter, the 10-minute gap, only listed players, the ring of facts with no text, shared fights, the column and the export, feelings and the `ally` label, presets, warm lines and negative feelings, the validator rules, `relation_player` once per session through the Director with silence, no road to public chat, the three conditions, and the three second-encounter scenarios for trust, wariness and resentment, in both languages), `Tests/check_user_block.py`, the persistence section of `Tests/run_tests.py`, and the existing relationship tests adapted to the two blocks. `Tests/check_versi.py` no longer depends on which text a set yields first (it failed one run in a few).
- **Not verified in the real client** (section R4b of `docs/G1_checklist.md` and its English counterpart): the roster scan after `GROUP_ROSTER_UPDATE`, `UnitFullName` on party and raid members, emotes with a recipient, `C_Map.GetBestMapForUnit` at the moment of an encounter, and how the taller window fits. The thresholds (10 minutes between encounters of one kind, 5 facts, one candidate per session) are hypotheses to tune in game. Not in this part: in-game identity tests (#111), the GUID (#112), proximity (#113) and the shared list (#114).
### R2: authoring archive and coverage reports (issues #87 and #88)

**Content can now be written, reviewed, searched and measured outside the game** ([ADR 0027](docs/adr/0027-sqlite-authoring-archive-and-exporter.md)). The game is unchanged: it still reads the pack folders, and the pack format and the addon files do not change.

- **Added: the authoring archive** (#87), `tools/archive/`, Python standard library only (`sqlite3`). A generated SQLite database (`build/authoring.sqlite`, not committed) holds intentions (rule, events, conditions, voice, registers, depth, tags, weight, cooldown, region, review state, attribution), their variants per language, packs, authors, reviews and a changelog. The unit counted is the **intention**, with the variants per language alongside (D2).
- **Added: importer and exporter.** The importer reads the base and regional pack folders as data (a reader of Lua table literals; no Lua is run) and keeps the layout of every file; the exporter writes the folders from the **approved** intentions. Unchanged entries come back byte for byte, edited ones are rendered again in the canonical style, new ones are appended to the file of their pack and language. **The export of the imported folders is identical to every file of the repository** (a test of the required job `Tests`).
- **Added: the overlay `authoring/*.csv`** (authors, intentions, variants, reviews, changelog): the committed text for everything that is not approved yet, one row per intention and per variant, sorted, so a PR diff reads line by line. Approved content stays in the pack folders, which remain the source of truth until the owner decides the next stage (ADR 0026); `export` moves approved content from the overlay into the folders.
- **Added: review flow and commands** (no GUI), `python tools/archive/cli.py`: `drafts` (JSON Lines written by AI sessions), `list`, `search` (by event, tag, region, voice, register, text, pack, state, language), `show`, `stats`, `submit`, `reject`, `approve`, `retire`, `restore`, `export`, `check`, `report`, `build`. `draft -> review -> approved -> retired` (D6); only `approved` is exported; approval needs a text in every language of the pack and refuses invented lore in a narrator line without an attribution (D7).
- **Added: coverage and gap reports** (#88). `report` prints intentions and texts per region, voice, depth, register and pack; the event x context cells (the index groups of ADR 0024) with fewer than *k* eligible intentions or texts; intentions missing a language; and the cheap part of M1 and M2 (best pool of texts per event against the repetition window of 100, concentration of the first words). Thresholds are in `tools/archive/thresholds.json`.
- **Added: workflow `Content coverage`** (`.github/workflows/content-report.yml`): on every change to the content or the archive tools it prints the report to the job summary, raises a warning annotation per breached threshold and keeps the Markdown and JSON as an artifact. **It reports, it never blocks** (not a required check).
- **Changed: docs.** ADR 0027, `docs/ARCHITECTURE.md` (the folders hold the approved content; the archive), `CONTRIBUTING.md` ("Writing content through the archive"), `PACK_FORMAT.md` (nothing changes for external packs; what keeps a file readable by the archive), the roadmap.
- **Tests:** `Tests/check_archive.py`, run by `Tests/run_tests.py`: the round trip (empty diff), the canonical rendering reading back as the same data, the reader of Lua literals, the whole review flow on a temporary copy (refused drafts, approval rules, only approved exported, a retired line leaving every language, appended entries valid Lua 5.1, rebuild to the same states, an edited line rendered where it was, search), the overlay, the report and its thresholds; `Tests/check_rules.py` checks the new workflow.
- **Measured** (today's database, `tools/archive/cli.py report`): 828 archived intentions, 1,785 texts per language, 241 event x context cells, 29 of them under 10 intentions or 20 texts per language (the poorest, `buff`, `jest`, `rezother`, `threat`, `toast`, have 6 intentions), no intention without a text in a language of its pack, 23 of 26 events with a best pool of texts under 100. On a synthetic overlay of 20,000 approved intentions: `export` about 3 s, import of the folders about 11 s, report about 1 s.
- **Known limits:** 202 intentions (`base_arcs` 33, `base_dialogues` 169) compute their rules in code and are not archived; `attribution` is kept only in the archive (the pack format has no such field yet); "eligible" counts only the first index group of each rule, an upper bound; the repetition numbers are proxies, not the seeded M2 run; a new pack folder is still created by hand once.

### R1: language packs and regional packs (issues #85 and #101)

**One download, several folders, fully automatic** (decision D4 in #130, [ADR 0025](docs/adr/0025-language-and-regional-packs-loaded-on-demand.md)). Only the language chosen by the user is loaded, and the lines of a continent only while the character is there. The user never chooses a folder.

- **Added: language packs** (#85). The phrase texts of the base packs move from `AzerothUnspoken/Data/enUS/` and `Data/itIT/` to the LoadOnDemand folders **`AzerothUnspoken_enUS`** and **`AzerothUnspoken_itIT`** (`## X-AzerothUnspoken-Language`), unchanged except for their first line (`local NS = AzerothUnspoken`). The base addon keeps the engine, every rule, frames, vocabulary and the interface strings of both languages. At login the new module `Core/Packs.lua` loads **only the folder of the chosen language** with `C_AddOns.LoadAddOn` through Compat; the other language is never loaded.
- **Added: missing or broken language folder.** If the folder is missing, disabled or refused by the client (`MISSING`, `DISABLED`, `CORRUPT`, `INTERFACE_VERSION`..., `NO_API`, `ERROR`), the addon prints the folder and the reason once, keeps it in `/au debug`, and uses the English lines instead; with no language folder at all the narrator stays silent and the rest works. Never a Lua error.
- **Changed: changing language.** The interface switches at once; the lines follow at the next reload. The settings, `/au language` and the wizard explain it, and offer **Reload now** (a dialog through Compat, and a button in the settings panel while it is pending). Nothing reloads without a click. Until then the lines stay in the previous language (`NS:TextLang()`), so the narrator never goes silent because of a change.
- **Added: regional packs** (#101). A region is a continent (`kalimdor`, `eastern`): a LoadOnDemand folder of rules (`AzerothUnspoken_Kalimdor`, `AzerothUnspoken_EasternKingdoms`, `## X-AzerothUnspoken-Region`) and one of texts per language (`AzerothUnspoken_Kalimdor_enUS`...). Their files register builders (`AzerothUnspoken:RegisterRegionalPack`, `RegisterRegionalTexts`). When the character enters a continent, outside combat, the base addon loads its folders (rules, and texts of the phrase language) and runs the builders; when it leaves, `Engine:DropPack` removes those rules, texts, frames and vocabulary from the engine's tables so they can be garbage-collected (WoW cannot unload an addon: the folder stays loaded and the builders run again on the way back, with no new `LoadAddOn`). An unknown place keeps what is built; a missing regional folder degrades to the base content.
- **Changed: first regional split.** The 17 exploration lines bound to a named zone move, with the same ids and texts, to `kalimdor_exploration` (11: Ashenvale, Feralas, Durotar, the Barrens, Teldrassil, Mulgore, Silithus, Felwood, Moonglade, Darkshore) and `eastern_exploration` (6: the Hinterlands, Duskwood, Elwynn Forest, Tirisfal Glades, Stranglethorn Vale, Dun Morogh). Generic content stays in the base and language folders. 1,009 intentions in all, as before.
- **Added: nothing loads in combat.** The language step and every region change wait for `PLAYER_REGEN_ENABLED`.
- **Added: external packs can declare a language or a region** in their `.toc` (`## X-AzerothUnspoken-Language: enUS`, `## X-AzerothUnspoken-Region: kalimdor`, with `## LoadOnDemand: 1`): `Packs:Discover` finds them through `C_AddOns.GetNumAddOns`, `GetAddOnInfo` and `GetAddOnMetadata` (through Compat; the built-in folders are known even without them). See `AzerothUnspoken/PACK_FORMAT.md`.
- **Changed: `/au packs`** also lists the folders loaded on demand, each with its state (loaded, not needed now, not installed, could not be loaded and why), the language of the lines, the region and the counters (loads, builds, drops, waits for combat).
- **Changed: `/au prof`** adds the memory of the loaded folders to the memory of the addon.
- **Changed: `/au validate`** checks only the languages whose texts are in memory (the tests load and check both).
- **Changed: anti-repetition memory at login.** An id that is not registered yet may belong to a region not built yet: its uses decay as usual and its last use is kept at most 30 days (`Engine.DORMANT_LAST_MAX`). No schema change.
- **Changed: tools.** `tools/install_addon.py` installs every `AzerothUnspoken*` folder; the docs rule of the PRs covers every `AzerothUnspoken_*` folder; the folders are the source of truth (no build step), and the SQLite exporter (#87) will write them.
- **Tests:** `Tests/TestPacks.lua` (only the chosen language in memory, the region built at login, regional content appearing and disappearing with the zone and leaving no rule in the index, nothing loaded in combat, the reload offered and never automatic, a missing folder, a disabled, corrupt or raising load, no `LoadAddOn`, a missing regional folder, `DropPack`, an external regional pack), a start from a saved Italian installation in `run_tests.py`, the mock `C_AddOns` and `INSTALL_PACKS`, and `Tests/bench_packs.py`. The selection equivalence test of #137 (`TestScale.lua`) passes with every folder loaded.
- **Measured offline** (lupa, one PC):

  | | Lua memory |
  |---|---|
  | today's database, both languages (before) | 4.33 MB |
  | today's database, chosen language only | 3.91 MB (base without texts: 3.49 MB) |
  | +50,000 synthetic entries, both languages | 94.1 MB |
  | +50,000 synthetic entries, chosen language only | 75.6 MB |

  Regions (`Tests/bench_packs.py`, English, two variants per rule): with 8 regions of 5,000 rules, one region built costs 8.0 MB; after visiting all 8, dropping the regions left costs 26.2 MB over login against 64.3 MB keeping them all (a dropped region keeps about a third of its size: the code and strings of its builders); a region change builds in about 0.2 s. With 2 regions of 20,000 rules: 32.6 MB per region, 42.6 MB after both, about 0.9 s per change. Hence the granularity: the continent, whose change always passes a loading screen.
- **Not verified in the client:** `C_AddOns.LoadAddOn`, `IsAddOnLoaded`, `GetAddOnMetadata`, the reload dialog and the change of continent. Steps R1.1 to R1.7 of `docs/G1_checklist.md` (English: `docs/G1_checklist.en.md`).

### R1: scale foundations, index, compact format and bounded memory (issues #83, #84 and #86)

The engine is prepared for an archive of tens of thousands of entries (decision D1 in #130) **without changing what the player sees**: the same seeded sequence of 3,000 picks gives the same phrases, variants and texts before and after the change (`Tests/trace_picks.py`). [ADR 0024](docs/adr/0024-selection-index-compact-registry-and-bounded-memory.md).

- **Added: selection index by event and place** (#83). Every rule is registered in the generic group of its event and form or, when its conditions ask for a zone, subzone, map, class, race, zone mood, creature type or time of day, in the group of each value (`Engine.index`, `Engine.INDEX_DIMENSIONS`). `PickEntry` reads only the generic group and the groups the context opens (`Engine:Candidates`), merged in registration order. Rules with `chance`, `func` or a condition registered by a pack stay generic, so the random numbers drawn are the same; a pack that turns a condition of the engine into a computed one rebuilds the index. The index does not depend on the language, ready for language and regional packs (#85, #101).
- **Changed: compact in-memory format** (#84). `RegisterPack` no longer keeps the pack's source tables (`registry`, `texts`, `phrases`, `frames`, `vocab`); variants are plain strings unless they need more (an empty text, a depth of their own, a text added by another pack); rules share their lists of events, registers, tags and depths. Code that reads texts uses `Engine.VariantText`, `VariantOk`, `VariantDepth`, `VariantPack` or `VariantView`. The pack format and `RegisterPack` do not change; the example pack and the verses pack load as before.
- **Changed: faster weights, same results.** A candidate's weight is computed without a table of factors (bit for bit the same as `Engine.Factors().W`), `NS.Lower` remembers its results for the compared strings (bounded, never a secret value), and the weight hooks skip a tag scope a rule does not use (`Traits.Scopes`).
- **Changed: bounded anti-repetition memory, schema 7** (#86). `cdb.memory.last` is kept only for entries with a `cooldown`, while it runs; `uses` keeps at most 512 entries (the least used go first); `variant` only for phrases still in `uses`. Migration 7 trims the saved memory and the login cleanup drops the last use of entries without a cooldown; running cooldowns survive, no text is stored. A phrase not used for several logins may now repeat its last variant.
- **Changed: data files** `Data/*/Context.lua`, `Dialogues.lua`, `Arcs.lua` and `Soul.lua` pass their pack id to `NS:AddTexts`, so their texts are attributed to their own pack. No text or rule changes.
- **Measured offline** (`Tests/bench_scale.py`, lupa on one PC, synthetic archive of clones of the real rules with unique texts, 60% of the clones bound to one zone, two languages):

  | Entries | Pick, mean (p95) | Lua memory | Per entry | Load of the archive |
  |---|---|---|---|---|
  | 1,012 (today) | 0.61 ms (1.0) → 0.23 ms (0.33) | 6.5 MB → 4.2 MB | | addon 0.20 s → 0.17 s |
  | +10,000 | 5.9 ms (22) → 0.91 ms (1.9) | 53 MB → 22 MB | 4.9 KB → 1.9 KB | 0.55 s → 0.74 s |
  | +50,000 | 23 ms (59) → 4.1 ms (14) | 239 MB → 95 MB | 4.9 KB → 1.9 KB | 3.0 s → 3.8 s |

  With one language (the projection of #85) 50,000 entries take 76 MB. The R1 targets (pick under 5 ms, memory under 40 MB at 50,000 entries) are met for the mean pick time only; they stay hypotheses until the in-game budget is decided (D3) with `/au prof`.
- **Tests:** `Tests/TestScale.lua` (equivalence of the indexed selection with a scan of every rule, same order and same random draws, on the current database and on a synthetic archive, for every event, form, language and eight contexts; `Score` equal to `Factors().W`; index keys; format; bounded memory after 3,000 distinct entries; cooldowns; no text saved; migration from schema 6). `run_tests.py` runs a reduced projection of 2,000 entries and checks the memory per entry; the full sizes run on demand with `Tests/bench_scale.py`. Tests that read variants use the accessors; the schema checks expect 7.
- **Docs:** `docs/ARCHITECTURE.md` (index, format, memory, scale limits), ADR 0024 and the ADR index, ADR 0006 (schema 7), ROADMAP. The wiki does not change: nothing visible to the player changes.
- **Not verified in the client:** time and memory in the real client (`/au prof`); the targets of D3.

### Greetings and actions match the relationship (issue #105)

- **Fixed: a warm greeting could be picked for an enemy.** Measured offline: with the relationship set to *enemy* the explicit greeting could say "the fire is warmer with old friends around it" (`greet.03`), and `rel.greet.player` applied to every known player. The generic warm lines of greetings and farewells (`greet.03`, `greet.08`, `greet.orc.02`, `greet.human.01`, `bye.07`, `bye.tauren.01`, `bye.nelf.01`, `bye.dwarf.01`, `rel.greet.player`, `rel.bye.player`) and the warm reactions to an invitation or an emote now exclude **enemy, disliked, wary and feared** with `not = { relation = ... }`, in the data and not in the engine. Those people still get their own lines (`rel.greet.enemy`, `rel.greet.wary`, `rel.greet.feared`, `rel.bye.hostile`...).
- **Changed: duel lines depend on the relationship.** `ctx.act.duel` (banter) is now for strangers, acquaintances and the indifferent; new lines for a friend, a respected rival, an enemy or disliked person, and a wary or feared one (4 phrases, English and Italian). The inner duel line "with no grudge behind it" no longer comes out for hostile people or rivals.
- **Added: validator rule `warmWithoutRelation`.** A line tagged `warm` (and not `ironic`) in `greet`, `farewell` or `other_action` must exclude the negative relationships; the report names each offending line. New engine helper `Engine.ExcludesNegativeRelation`. Documented in the pack guide.
- **Tests**: second encounter with an enemy, a wary, a disliked and a feared player never gets a warm line (greeting and farewell, by eligibility and by repeated picks), a trusted friend still does; the duel by relationship; the rule catches planted bad lines and accepts the good forms; shipped data passes. Phrase counts updated (+4).
- **Docs**: wiki page Relationships, pack guide.

### Literary forms prototype: verses pack and editorial rules (step L0, issues #115 and #116)

- **Added: the verses pack `AzerothUnspoken_Versi`** (pack id `versi`), a separate addon with `## Dependencies: AzerothUnspoken` and no engine change. 15 original pieces, each re-created in English and Italian with its own metre: 4 inscriptions and solemn formulas (first visit to a ruin or a sacred place), 3 verses remembered on return (`memory_return`, each with its memory condition), 2 inn rhymes in the innkeeper's voice (ambient dialogue nodes `sit` and `news`, and meeting an innkeeper), 2 road songs on `travel` (one only for the Hearthstone) with a short form for the natural depth, 2 sayings for an encounter with someone known (trust, wariness), 1 hymn on `pray` and 1 lament after a lost boss fight.
- **Private only (decision D16 in #130):** every piece is spoken by the `inner` or `npc` voice, so it reaches the private narrator and never becomes a chat proposal. Every invented song, legend or inscription says who carries it (D7); no race or faction condition (D17); no prophecy (D18).
- **Rare (D15):** never in combat, a cooldown of three to seven days per piece, specific conditions instead of weight. Tags `lore`, `genre_*`, `origin_*`, and `topic:death` / `topic:religion` on the lament, the "where you fell" verse and the hymn.
- **Added: manual event `lore_test`.** `/au event lore_test` shows one piece at random, with no condition and no cooldown, through twins with their own ids (`versi.test.*`), so trying a piece does not spend the real one. The event has chance 0: nothing fires it automatically.
- **Form for now:** one line per text, verses separated by " / ", at most 231 bytes (limit 255). Real line breaks are #117; the in-game A/B judgement decides it.
- **Added: editorial rules for literary forms in `CONTRIBUTING.md`** (#116): classic era only, attribution of invented lore, no invented names or languages, prophecies last, culture chosen and never deduced, private voices only, frequency, tags, originality with a list of warning phrases, metre (English and Italian traditional metres), re-creation instead of translation, no placeholders, the one-line form; a review checklist, a new quality rule 10 and a checkbox in the PR template.
- **Changed: `tools/install_addon.py` also installs `AzerothUnspoken_Versi`**, so the owner can try it in game; for players the pack stays optional (do not copy the folder, or `/au pack versi off`). The docs rule (`tools/check_pr_docs.py`) and `Tests/check_api.py` cover the new folder.
- **Tests:** `Tests/check_versi.py`, run by `run_tests.py`, loads the pack as an external addon and checks the .toc, zero validator errors and warnings, 12-16 pieces with their twins, private voices, `combat = false`, cooldowns, tags, both languages, 255 bytes, one line, no placeholders, no warning phrase, the mix of #115, `/au event lore_test` 150 times in the confirm mode with public chat on (always shown, no proposal, nothing sent, in English and Italian), and the right candidates for a ruin, a sacred place, a prayer and a Hearthstone, with the cooldown.
- **Docs:** wiki pages Literary Forms (new), Phrase Packs (enabling the verses pack), Installation and Updating, Commands, sidebar; `README.md`, `README.it.md`, `docs/README.md`, `docs/ARCHITECTURE.md`; steps 104-108 in `docs/G1_checklist.md`.
- **Not verified in the client:** how the pieces read in the narrator, the timing of the real events, and the innkeeper nodes (G3).

### R0: measure in the client, `/au prof` and `/au probe` (issues #81 and #82)

Tools for the owner to run in the real client, so that the decisions D3 (memory and time budget), D5 and D14 are taken on real data (tracking issue #131). **Nothing in it has run in the real client yet**: the numbers and the API states in the tests are those of the simulated client.

- **Added: `/au prof`** (`Core/Profiler.lua`): timings of `Engine:PickEntry` and `NS:BuildContext` with `debugprofilestop` (p50, p95, max and mean over the last 512 calls of each), the memory of the addon (`UpdateAddOnMemoryUsage` and `GetAddOnMemoryUsage`, through Compat; a sample 10 s after login and one per report, so the memory after login and after one hour can be compared), and the **Director counters of the whole session**: candidates, spoken, silent, each silence reason (`chance`, `paused`, `module:*`, `cooldown:*`, `budget:*`, `no_phrase`, `outranked`...), per event, per category and per hour of the session, with the interventions per hour. The Director log still keeps only the last 12 entries; the counters are separate. `/au prof reset` starts again; `/au prof copy` shows the same text in the export box, ready for Ctrl+C. The report is plain English text, with no colour codes and no names.
- **Added: `/au probe`** (`Core/Probe.lua`): checks through Compat `C_Weather.GetCurrentWeather` and `Enum.WeatherType`, `C_DateAndTime.IsDayTime`, `C_AddOns.LoadAddOn` (with whether you are in combat), `UnitPosition` (also in instances), the area POIs of the map, `C_QuestLog`, `C_Reputation`, `UnitReaction` (is it an index 1-8?), `UnitOnTaxi`, `IsResting`, `C_Secrets` and the restriction states, plus the profiling functions, and prints `AVAILABLE`, `MISSING` or `RESTRICTED` with a sample value. The first run listens for 14 events for the session (`WEATHER_CHANGED`, `DIEL_CYCLE_CHANGED`, `PLAYER_UPDATE_RESTING`, the three `ZONE_CHANGED*`, `MAP_EXPLORATION_UPDATED`, `AREA_POIS_UPDATED`, `QUEST_LOG_UPDATE`, `QUEST_ACCEPTED`, `QUEST_TURNED_IN`, `UPDATE_FACTION`, `FACTION_STANDING_CHANGED`, `TAXIMAP_OPENED`) and reports whether each fired, how many times, its payload and what the API said at that moment (for example the weather type each time). `/au probe reset`, `stop` and `copy`. `PlaySoundFile` is not probed: audio was dropped (decision D10).
- **Privacy:** both reports show only numbers, flags and fixed identifiers. Text returned by the client (names, quest titles, chat) appears only as its length; coordinates, GUIDs and the name of the character never appear. Counters keep no text and are bounded (a key beyond 64 distinct ones, or with unexpected characters, is counted as `other`). Nothing is saved between sessions. `/au debug` shows one summary line (**Profile**).
- **Tests**: `Tests/TestProfile.lua` (format of both reports, percentiles from a fake clock, counters beyond the 12-entry log, per hour, bounded keys, reset, copy box, every API of the list probed, events counted with payload and samples, `UnitPosition` in an instance, missing, failing and secret APIs, an unknown event, and that no name, title or coordinate of the mock ever reaches a report). The mock gains the probed APIs. `Tests/check_api.py` now also checks the event names listed in `EVENT_PROBES` against the API dump; every probed name is in the dump (no new exception).
- **In-game checklist**: new section **R0** in `docs/G1_checklist.md` (Italian; steps R0.1 to R0.13: login, memory, loading time with and without the addon, a capital, the open world, an instance, rain or snow, dusk, quests and reputation, inn and flight, combat, after one hour, and how to send the results in an issue with the Bug report form) and its English counterpart `docs/G1_checklist.en.md`.
- **Docs**: wiki pages Commands (new commands), Troubleshooting (slow or heavy addon) and Reporting Bugs and Feedback (new section "Helping with tests"), Privacy and Data; `README.md` and `README.it.md` command tables; `docs/ARCHITECTURE.md` (the two new modules); ROADMAP (row R0).

### English first: default language and English command names (Step 0, issue #132)

- **Changed: the addon starts in English.** A new install (no saved variables) has `locale = "en"`, for both the interface and the lines. The wizard still opens with the language choice, now listing **English** first and **Italiano** second. Saved settings are never touched: a user who already has `locale = "it"` keeps Italian (test for every schema).
- **Changed: command names and arguments are always English, in every interface language.** `/au journal`, `/au relationships`, `/au talk`, `/au stories`, `/au soul`, `/au who`, `/au place`, `/au wizard`, `/au mode`, `/au channel party`, `/au depth natural|literary|elevated`... The interface language translates the descriptions and the messages, never the words you type. In the Italian interface `/au help` still lists the English commands, with Italian descriptions; usage and error messages show the English command.
- **Removed: all the Italian command and argument aliases** (`diario`, `relazioni`, `prova`, `gruppo`, `naturale`, `intensita`, `valida`...), and the English synonyms that were not short forms (`chat`, `relations`, `npc`, `welcome`, `diary`, `say`, `send`...). The remaining extra spellings are the short forms `/au lang` and `/au rel` and the channel names `s`, `e`, `p`, `g`, `i`. The localized names of trait values and archetypes are no longer accepted as arguments, only the English identifiers (`stoic`, `rogue`, `death`...).
- **Added: "did you mean" hint.** An unknown word, in particular an old Italian one, answers with the closest English command, for example "unknown command 'diario'. Did you mean /au journal?". Anything else points to `/au help`.
- **Changed: one command table** (`Commands.list` in `UI/Commands.lua`) instead of the `if cmd == ... or cmd == ...` chains; subcommand words are registered in the new `Core/Keywords.lua`. `/au help` is generated from the table (new interface keys `help_*`, `cmd_unknown*`; the old multi-line `help` key is gone).
- **Changed: English is the base locale and Italian the translation.** `NS:Lang()` and `NS:L()` fall back to English, no longer to Italian; `en` is always first in `NS.languageOrder`. Interface texts that quoted Italian command names now show the English ones.
- **Tests**: a table test fails if any command or argument keyword is not English (ASCII, and none of the old Italian words) or if two commands collide; tests for the default language, the kept Italian choice, the fallback, the help in both languages and the hint; all existing tests moved to the English command names (the per-file harness sets `it` where a test checks Italian texts).
- **Docs**: wiki pages Commands (rewritten), Languages, Settings, First-Run Wizard, FAQ, Troubleshooting and every page that shows a command; `README.md`, `README.it.md` (the English commands described in Italian), the pack guide, `docs/G1_checklist.md`, the architecture and the new [ADR 0023](docs/adr/0023-english-first-addon-and-english-command-names.md).

### Automatic rules: CI, docs check and wiki sync (task R1)

- **Workflow `CI`** (`.github/workflows/ci.yml`, job `Tests`): on every pull request and every push to `main`, Ubuntu with Python and `lupa`, the whole offline suite. The public API dump is shallow-cloned into the runner only (never committed) and passed with `AU_API_JSON`; `AU_REQUIRE_API=1` makes a missing dump a failure instead of a skipped `check_api.py`. Actions are pinned to a commit.
- **Workflow `Docs rule`** (`.github/workflows/docs-check.yml`, job `Docs rule`, rule in `tools/check_pr_docs.py`): a PR that changes `AzerothUnspoken/` or `AzerothUnspoken_Example/` must also change `CHANGELOG.md` and at least one of `docs/` (wiki included), `README.md`, `README.it.md`, `AzerothUnspoken/PACK_FORMAT.md`, unless it has the label `no-docs-needed`. The failure message says what to update.
- **Workflow `Wiki sync`** (`.github/workflows/wiki-sync.yml`): on a push to `main` that changes `docs/wiki/**`, and by manual dispatch, it publishes the wiki with `tools/sync_wiki.py` as `github-actions[bot]`; if the wiki repository does not exist the job passes with a warning. `tools/sync_wiki.py` now reads the token from the environment (in an HTTP header, never in the URL, scrubbed from messages), never prompts, takes the repository from `GITHUB_REPOSITORY` and has `--warn-if-missing`.
- **PR template** (`.github/pull_request_template.md`): tests, CHANGELOG, docs, wiki pages in `docs/wiki/`, in-game checklist, no personal data, `Closes #N`.
- **Tests**: `Tests/check_rules.py` (the docs rule, the privacy scanner and the shape of the workflows) and `Tests/check_privacy.py` (no personal email address or path in any tracked text file), both run by `run_tests.py`.
- **Rules in writing**: ROADMAP ("Documentation and CI rules"), CONTRIBUTING (sections 5, 6 and 8) and the new [ADR 0022](docs/adr/0022-automatic-rules-ci-docs-check-and-wiki-sync.md): every step or fix PR updates CHANGELOG, docs and the wiki pages in the same PR; the wiki is never edited on GitHub; CI must be green before merging. ADR 0009 and ADR 0013 updated.
- **Branch protection on `main`**: the checks `Tests` and `Docs rule` are required (administrators included), no required reviews, no force push, no deletion. New label `no-docs-needed`.

### Wiki: the player's manual (task W1)

- **`docs/wiki/`**: a complete user manual for players, in English, with no developer content and no personal data. 21 pages plus `_Sidebar` and `_Footer`: Home (motto, what the addon does and never does, quick start, one honest note that it has not been tested in the real client yet), installation and updating, the first-run wizard, the complete commands reference (every alias, the four key bindings), the complete settings reference (every default, the presets, the default event probabilities, the fixed chat limits), the narrator and the four voices, intensity and prose depth, the Chat Gateway (modes, confirmation, copy to chat box, flood protection, the open-world `/say` rule), Character Soul and Total RP 3 (consent for reading others' profiles), memory and journal, relationships, interlocutor and place, NPC dialogues (labelled as simulated), story arcs, phrase packs for players (the pack-writing guide is only linked), languages, privacy and data, troubleshooting (Lua errors, `/au debug` and how to share it), FAQ, glossary, and **Reporting bugs and feedback** (the issue forms and the Feedback category of GitHub Discussions, with what to include and what not to include).
- **`tools/sync_wiki.py`**: publishes `docs/wiki/*.md` to the GitHub wiki. It clones the wiki repository, adds a "generated from docs/wiki, do not edit here" note to every page, removes pages no longer in `docs/wiki/`, commits with the repository's noreply identity and pushes; `--dry-run`, `--no-push`, `--wiki-dir`. The wiki repository does not exist until the first page is created in the browser: the script then exits with code 2 ([#76](https://github.com/Finland6738/azeroth-unspoken/issues/76)).
- **`Tests/check_docs.py`** checks the wiki: every `[[Text|Page]]` and `[text](Page#anchor)` link resolves to a page and anchor of `docs/wiki/`, every page is in the sidebar, and no page has an email address, a personal path, CRLF line endings or a developer term. The generic relative-link check skips `docs/wiki/`, whose links are page names.
- **ADR 0013 revised**: `docs/wiki/` is the only source and the wiki a generated player's manual; the sync on every merge is task R1. `docs/README.md`, `README.md` and `README.it.md` link the manual.
- Found while writing the manual: the wizard marks *NPC dialogues* and *Stories* as not active yet, and the README documents `/au validate all` instead of `full` ([#77](https://github.com/Finland6738/azeroth-unspoken/issues/77)).

### Q6 fixes: editorial review of the texts (issues #60–#66)

- **Gender agreement**: NPC lines and character phrases agree using `{g:}` («{g:Bentornato|Bentornata}», «sveglio/sveglia», «stesso/stessa», «basso/bassa»); where the phrase addresses the interlocutor, `{og:}` is used («Lok'tar, {og:fratello|sorella}», «Non sei {og:solo|sola}», «Sta' {og:fermo|ferma}»), always with a neutral variant for when the sex is not known (#61, choice described in the pack guide). Pets and enemies no longer have a fixed gender («bestia mia», «chi mi accompagna», «il nemico»).
- **Recognizable quotations** rewritten in an original way: «Il tempo è denaro», «Forza e onore», «Tenetemi la birra», «il cuore dell'oscurità», the line about the times we live in and the one about the land we belong to.
- **More precise rules**: the orc greetings, Durotar, the "chosen" desert, Elwynn as "home" and the devotee's prayer require the right race or use `{faith_of}`; the phrases against the undead that talk about "those who breathe" exclude the Forsaken. The arena phrases (absent in the classic era) are marked as a future extension.
- **Fewer stereotypes**: half of the dwarf phrases talk about mountains, forge and ancestors instead of beer and beards; trolls no longer call everyone «amico» and the English dialect stays on half of the phrases.
- **English**: uniform American spelling throughout `Data/enUS` (#66); a few ungrammatical or unnatural phrases corrected. The content tests check for British forms and for the neutral variant of `{og:}`.

### Documentation: alignment with M0–M3 (activity D2, issues #57, #58 and #59)

- `README.md` and `README.it.md` rewritten for the state of `main`: all the features (private narrator, Chat Gateway, intensity and depth, personality and Total RP 3, memory and journal, relationships, interlocutor and place, NPC Alive, Story Arcs), the real numbers (1,005 intentions, 2,109 variants per language, four voices), all the commands and aliases, the four key bindings, privacy (relationships, other players' Total RP 3 only with consent, no chat saved, nothing in public chat without a player action) and the project status with the in-game tests still to be done.
- `AzerothUnspoken/PACK_FORMAT.md`: **all the examples are written for an external pack** (`AzerothUnspoken:` and not `NS:`) and are **tested by the test suite**; it describes what happens with an already existing key (script, NPC, place or arc: full replacement, [#69](https://github.com/Finland6738/azeroth-unspoken/issues/69)) and recommends a new key with `extends`; counts updated.
- **`Tests/check_docs.py`** (hooked into `run_tests.py`): loads every `lua` block of the guide marked `<!-- test -->` as an external pack and runs the validator (`<!-- test: error -->` for the examples that are wrong on purpose); checks all relative links in the Markdown files, anchors included.
- `docs/ARCHITECTURE.md`: diagram and table of how the M1–M3 systems hook into the engine, schema versions and per-character data versions, pack API updated (schema v2, `RegisterDialogues`, `RegisterNPCs`, `RegisterPlaces`, `RegisterArcs`...), complete settings, section on what is still missing rewritten.
- `CONTRIBUTING.md`, ADR 0006 (schema 6, internal module versions, rule for newer data) and this `CHANGELOG.md`, reorganized by step (before, the "Added" and "Changed" sections were mixed).

### Q5 fixes (issues #45, #46, #47, #48, #49, #50, #51, #52, #53, #54, #55, #56)
- **#45 privacy**: `rel.npc.rival` is now an inner voice; the validator rejects `{relation}` (which may contain the label written by the user) in public voices, frames and vocabulary (`userTextPublic`); the engine never composes that text into a public phrase, not even from an external pack (`ctx.relationCustom`, `Engine.USER_TEXT`).
- **#46, #50 respect for modules and version**: NPC Alive writes no flags or relationships when memory or relationships are off or read-only (`LM:SetFlag` refuses automatic sources when memory is off); `R:Sanitize` leaves the data of a newer internal version untouched and switches to read-only, with the error in the diagnostics.
- **#49, #52 loaded data**: `Engine:SanitizeMemory` discards malformed anti-repetition entries (and `DecayMemory` removes those of vanished phrases, without touching frames and vocabulary); the button position is checked; the `today` counters of past days, the NPC cap, the cap on permanent memories (`LM:CapPermanent`) and on flags (1000, `LM:CapFlags`) also apply to loaded data; flags with uppercase letters are lowercased.
- **#51 numbers**: `/au cooldown` goes through `Config:Set` (0-3600), `/au prob` discards `nan` and `inf`, a `schemaVersion` that is not an integer, NaN or negative is normalized (`Config:SchemaOf`).
- **#53 diagnostics**: `/au debug`, `/au debug full` and the trace no longer print the names of other players (unknown text fields come out as `<nascosto>`); anti-regression test.
- **#55 send blocked silently**: the real client does not raise an error for a protected send without a gesture; the Chat Gateway listens to `ADDON_ACTION_FORBIDDEN` and `ADDON_ACTION_BLOCKED` (`ACTION_BLOCKED` source of the bus), does not count the send, puts the proposal back on hold and records `last refusal blocked` (`blocked by the client` in `/au debug`). The fake client behaves the same way (`BLOCKED_SENDS`, `SEND_RAISES`, `BLOCK_EVENT_LATE`).
- **#47 return after a loading screen**: `memory_return` and `zone` are also offered with a non-login `PLAYER_ENTERING_WORLD`, whatever the order of events (the fake client has `LOADING_SCREEN` with three orders and `ENTER_GAME`: `PLAYER_LOGIN` before `PLAYER_ENTERING_WORLD`).
- **#48**: in the actions of another person (`other_action`) the relationship (`ctx.relation`, `rel`, `relTraits`, `relName`, `relationLabel`) is that of whoever acted.
- **#54 `Tests/check_api.py`**: using Lua 5.1 bytecode it checks every global read (including functions passed as a value), the widget methods (`object:Method()`) and the `CreateFrame` templates, with reasoned lists for what exists only in FrameXML (`OBJECTS`, `METHODS`, `TEMPLATES`); `Settings.RegisterAddOnCategory` protected.
- **#56 tests**: `Tests/TestCommands.lua` (basic `/au` commands, ghost resurrection with `P.ghost`, `QUEST_GREETING`, end of an encounter in combat), entering the world as an interruption in NPC Alive.
- Data format: no change. Steps 93–98 in `docs/G1_checklist.md`.


### Step S9: Story Arcs, the personal stories

- **`Systems/StoryArcs.lua`**: micro-stories of the character, **not server quests**: no reward, no effect on the game, no change to real NPCs. States `LOCKED → DISCOVERED → REFLECTED → RESOLVED` (an arc can define its own states between the two ends; from one state you can only go to the next). Every step is data: events (`zone` by uiMapID and zone name, `death`, `level`, `npc`, `flag`, `player`), RuleEngine conditions, a wait and, if needed, a player choice. An arc opens and advances **only from a real event** or from a direct choice: time, a command or another system never open or advance anything; one event moves an arc by one step only. [ADR 0021](docs/adr/0021-story-arcs-micro-stories-without-game-effects.md).
- **At most 1–2 active arcs** (`arcs.maxActive`, `/au storie max`): when the slots are full the arc stays "available" and the player starts it. Every arc can be **suspended, skipped or deactivated**, one by one or all together; the «Storie» module turns everything off. The choices (2–3 neutral options, saved as ids) are always made by the player; an arc about a topic the character avoids (`topic`) does not open.
- **Closing with a permanent memory** in Living Memory (`story`, only id and place); every state leaves the flag `arc_<id>_<state>`. Persistence in `cdb.arcs` with **schema 6** (character migration and internal migration, read-only for newer data); the pending choice, the mode and the choices survive `/reload`.
- **Narrative Director**: the events `arc_open`, `arc_step` and `arc_resolve` have "exceptional event" priority and speak **one at a time** (at least 90 seconds between two arc lines), never in combat, while dead, in a raid or battleground; if the moment is not right they wait up to 15 minutes. The state also advances in silence: the journal tells the story. `Director:Offer(event, extra, onResult)` now returns the outcome to whoever proposes.
- **Journal**: «Storie» tab with the stories in progress, those that can begin, the concluded ones and the skipped or deactivated ones; the detail shows the story and **the choices made**. Command `/au storie` (`lista`, `diario`, `scegli`, `inizia`, `sospendi`, `riprendi`, `salta`, `disattiva`, `attiva`, `max`, `on`, `off`, `stato`).
- **Four base arcs**, bilingual: «Il sentiero ritrovato» (the return to the zone where the adventure began), «Un volto noto» (a known NPC, with the S6b relationships), «Il luogo della caduta» (a loss: death and the return) and «Le tre porte» (the journey between the capitals, with a state of its own and a reflection that starts from the player). 33 IT/EN lines (private voices: thought and narrator).
- **Pack format**: `NS:RegisterArcs{ pack, arcs, texts }`, `NS:AddArcTexts`, condition sub-table `arc = { id, state, from, choice, withSubject }`, `arcDone`, `capitalsVisitedMin`; the validator checks definitions, choices, texts per language and lines (`badArc`). The pack guide has the «Story Arcs» section.
- **Tests**: `Tests/TestArcs.lua` (about 2,000 checks: definitions wrong on purpose, legal and illegal transitions, no opening without a real event, limit of active arcs, suspend and skip, all together, postponed lines and no cascades, persistence, migration, journal, command) and the simulated persistence after `/reload` in `run_tests.py`.

### Step S8: NPC Alive, the ambient dialogues (and issues #41 and #42)

- **`Systems/NPCAlive.lua`** and **`UI/DialogueFrame.lua`**: a **simulated** micro-dialogue with an identifiable NPC, in a **separate, discreet window** with the clearly visible label **«dialogo ambientale dell'addon»** (*addon ambient dialogue*), the role and the name, the line and one to three replies, immediate closing (x, `/au npc chiudi`, key binding). The lines **never go to chat** (neither into the narrator nor into the history), the addon **neither calls nor hides** anything of Blizzard's gossip, quest, vendor, flight or training, and the window is placed where it **does not cover** the visible Blizzard windows (and moves if one opens underneath). It is not in `UISpecialFrames`: Esc does not close it together with the NPC's windows. [ADR 0020](docs/adr/0020-simulated-dialogue-and-real-dialogue-npc-alive.md).
- **State machine** `idle → offered → opened → choice → response → ended` with verified transitions. The **offer** starts from a button that appears on a valid interaction (vendor, flight, training, innkeeper, bank, gossip of an NPC in the registry; **never over a quest**), expires after 20 seconds, at most once every three minutes per NPC and window; or from `/au npc` or the assigned key binding. It stops by itself on combat, death, zone change, another NPC, 120 seconds idle.
- **Identity**: no dialogue if it is uncertain or secret. *Specific NPC*: the `npcID` from the GUID is in the curated registry `Data/NPCs.lua` (now also three city guards) or the user has given it a role (`/au npc ruolo <role>`). *Archetype* (innkeeper, vendor, flight master, trainer): only from the **ongoing interaction** that proves it, or from one that already took place with the same NPC in the session; gossip alone is not enough. Never with players, hostile creatures, dead NPCs, an unreadable GUID.
- **Voice**: **169 lines** IT/EN (`base_dialogues`, voice `npc`, events `npcd_<role>_<node>`) for **innkeeper** (vertical slice B of the GDD: opening, news, "tell me more", rest, staying, thanks, farewell), **vendor**, **guard**, **flight master** and **trainer**, plus lines for four specific NPCs (Innkeeper Farley, Innkeeper Firebrew, Innkeeper Gryshka, Marshal Dughan). They are engine rules: they follow the NPC's `speech` and `temperament` (gruff, jovial, warm, formal, laconic) and the relationship (known, unknown, you already asked them for the news), with the same weights and the same anti-repetition. They come out only inside a dialogue (guard on the event); with a window open the spontaneous narrator is silent.
- **Neutral replies**: questions and actions, never a feeling, a character trait or a decision attributed to the character. **Local effects**: a narrative flag (`npcd_<archetype>_<name>`, S6 memory, never a quest), a bit of relationship with the NPC (sources `ambient` and `ambient_talk`, with daily caps; it does not count as a new interaction), an `npc_talk` memory if a reply was given (without text, name or `npcID`). `/au npc prova [burbero|gioviale|caloroso|formale|laconico]`: a test innkeeper that writes nothing.
- **Scripts as data** (`NS:RegisterDialogues`, `Data/Dialogues.lua`): per archetype or per `npc:<npcID>` with `extends`; checked by `NPCAlive:Check()` and by the validator (`badDialogue`). A pack can add them.
- Settings: `npcAlive.autoOffer`, `ui.dialogue` (`fontSize`, `alpha`, `locked`, `pos`); the «Dialoghi NPC» module and `output.npcDialogues` now take effect; command `/au npc` (aliases `dialogo`, `parla`; `prova`, `chiudi`, `ruolo`, `offerta on|off`, `stato`), key binding «Dialogo ambientale con l'NPC» (`AzerothUnspoken_NPCDialogue`), `NPC Alive` line in `/au debug`.
- `Tests/TestNPCAlive.lua` (about 2,000 checks: transitions, full path, expirations and interruptions, uncertain and secret identity, no interference with Blizzard and with chat, position, flag, relationship and memory, voice by character and relationship, anti-repetition, languages, commands, #41 and #42) and, in `run_tests.py`, the **simulated persistence after `/reload`** of the flags, the memory and the conversation; section G3 in `docs/G1_checklist.md`.

*Fixed*
- **#41 gender of the relationship labels**: in Italian the relationship labels have the gender of the person (`amico`/`amica`, `temuto`/`temuta`, `rivale rispettato`/`rispettata`, `compagno`/`compagna d'armi`...). The data write the name with a list `name = { it = { "amico", "amica" }, en = "friend" }`; the form is chosen from `ctx.other.sex` (`Relationships:LabelName(id, sex)`, `Resolve(kind, rec, sex)`), with the masculine as fallback. New placeholder **`{og:masculine|feminine}`** for the gender of the **interlocutor** (`ctx.otherSex`; with unknown sex the variant is discarded), checked by the validator and not included in the placeholder signature.
- **#42 topics to avoid and vocabulary**: vocabulary entries accept `tags` (`topic:blood`, `topic:undead`, `topic:demons`, `topic:death`, `topic:religion`...); the renderer discards the entries that the Soul profile excludes and, if none is left, discards the variant as for missing data. `{cry}` no longer says «Sangue e tuono!» to those who avoid blood; `{foe}` does not name the undead or demons to those who avoid them; `{faith_of}` is silent for those who avoid religion. The validator checks those tags (`badTag`).

### Q3 fixes (issues #9, #13, #21, #23, #26, #37, #38)

- **#26 safe lowercasing**: `NS.Lower` and `NS.Upper` (`Core/Bootstrap.lua`) handle only ASCII letters and the accented ones of the Latin-1 block (À-Þ), without depending on the process locale; they replace `string.lower`/`upper` in commands, context, rules, relationships, memory, place and Chat Gateway. `Traits.Lower` remains as a fallback. `/au intensità` and `/au profondità` also work with uppercase letters.
- **#9 tables and secret health**: `EventBus.lastKey` has a threshold cleanup (256 keys, older than 60 seconds); `SPELL_SENT` no longer uses `castGUID` deduplication; `sentTargets` of `Triggers` keeps at most 16 pending casts (failed and interrupted ones do not accumulate); with secret health `HEALTH_CHANGED` comes out at most once every 30 seconds (`window` option of `Publish`).
- **#21**: with the mouse removed from the box, the fade starts again (the time stops at the start of the fade, not at the end).
- **#23**: the validator warns (`unknownStyle`) when a frame declares an unknown register and when `RegisterEventStyles` or `RegisterMoodStyles` use one.
- **#13 "Un'altra" (Another one)**: `Gateway:Reroll` (**Un'altra** button next to Edit, `/au altra`, assignable key binding `AZEROTHUNSPOKEN_REROLL`) replaces the pending proposal with another phrase for the same event, form and context (the proposal keeps `ctx` and `id`), without sending anything and without spending the Director's budget. It keeps the chosen channel; with only one phrase available the proposal stays as it is and `no_phrase` appears; with the editor open it refuses; the replaced proposal leaves the history. The proposal bar has narrower buttons to fit the sixth one.
- **#37**: in the detail of the Relationships window a selector for role, temperament, morale, goals and way of speaking (click: next value, then "don't know"; `Interlocutor:CycleTrait`/`GetUserTrait`); the window is taller (700). The **Read other players' Total RP 3** switch is in the settings panel and in the Total RP 3 step of the wizard, off by default (`Interlocutor:SetTRP3Consent`, also used by `/au chi trp3`).
- **#38 emotes in other languages**: an emote is directed at us if the target indicated by the client (`playerName2`) is our character, **or** if the text contains the "you" of the client's language (`Interlocutor.YOU_WORDS`: en, de, fr, es, it, pt, ru, ko, zh; hand-written tables, to be tested). The text is discarded immediately, as before.
- Data format: no change (the proposals in memory have two more fields, `ctx` and `id`, never saved). Interface: new IT/EN strings `btn_another`, `tip_another`, `gw_reroll_*`, `rel_trait*`, `opt_trp3_others*`, `wiz_trp3_others_help`.
- Tests: new sections in `TestCompat`, `TestEventBus`, `TestNarrator`, `TestValidator`, `TestChatGateway`, `TestOtherPlace` and `TestRelations`; steps 69–74 in `docs/G1_checklist.md`.

### Step S7: Narrative Alpha content

- **803 base intentions** IT/EN (there were 588; GDD §9.2 target: 300) with **1,711 variants per language** (before: 612, almost always one per intention). Every intention of the common scenes has **at least two variants** per language: combat (`battle`, `victory`, `lowhp`), arriving in a zone, greetings and farewells, rest, return (`memory_return`), death and coming back to life, new level; almost all the others too.
- **Four voices**: external narrator 108 intentions (there were 32), inner voice 235 (there were 167), character 444 and the **NPC voice** with 16 intentions on the `npc_meet` event (simulated lines for innkeeper, vendor, guard, banker, trainer, flight master and quest giver, different by way of speaking and temperament; they stay private).
- **Three depths** (Natural, Literary, Elevated) written specifically for the key moments: arriving in and returning to the forest, forest zones, death, coming back to life, level, victory, low health, main greetings and farewells.
- **Vertical slices A and C**: 10 first-visit phrases in the forest and 12 return phrases in the forest (three voices, Character Soul temperaments, time of day, return after a death or a flight, after many days or many visits); first visit and return for **every mood** (`mood`), for dungeon, raid and battleground; callbacks of the flags `first_death`, `first_capital`, `level_30/40/60` (issue #29, `base_memory` from 14 to 81 intentions).
- **Relationships** (issue #34, `base_relations` from 51 to 83): every label for greeting, farewell, thanks and healing, and at someone's side in battle and victory; players on the list, NPCs with role, disposition, optional attraction axis, gender of the person (`other.sex`). In Italian `{relation}` appears only between quotation marks, as the name of the relationship, and the phrases address the person in a neutral way.
- **Character Soul tags** (issue #27) on almost all base phrases: soft affinities of temperament, morale, faith, motivation, curiosity and irony; `topic:` for death, blood, undead, demons, religion, family, betrayal, love; `req:` only for the few phrases that assert a belief or a past.
- **External narrator** (issue #18): zone moods for every `mood` and time of day, resting in the open, inn and fireplace, gestures in combat, at death, at coming back to life, at greetings and prayers.
- `place`: entering a dungeon, raid, battleground and arena, enemy capital, end of an encounter with a boss won or lost; phrases within 80 bytes in battleground and arena.
- `Tests/TestContent.lua`: content coverage (intentions, variants per event, voices, depths, slices A and C, memory per mood, tags, relationships per label and gender of `{relation}`, 80 bytes in battleground, Forever era, repeated texts, overused words such as «ombra», «destino», «sangue», «antico»).

*Changed*
- Editorial corrections of existing phrases: missing `{g:…}` genders in Italian; relationship phrases addressing the person in a neutral way; `zone.durotar.01` only for the Horde and `zone.dunmorogh.01` only for dwarves and gnomes (they say "home"); the druid no longer claims to have "slept for centuries in the Dream" (it also applied to tauren); `rez.e.03` also holds for the return from the spirit healer; two lines rewritten that recalled well-known quotations (`lowhp.04`, `battle.giant.01`).

### Step S6c: Interlocutor and place

- `Systems/Interlocutor.lua`: **`ctx.other`**, whoever we meet (target, dialogue NPC, whoever sent us an emote, challenged us to a duel or invited us): type, race, class, faction, sex, level, classification, creature type and family, reaction, **role**, **personality** with the same trait model as S5 (temperament, morale; new `goals`, `speech`, `role` with `other` scope), **recent actions** with their timing and the S6b relationship. Sources in order: user (relationship list, `/au chi tratto`) > the other player's **public** Total RP 3 profile with a **separate consent** (`interlocutor.trp3Others`, off by default, `/au chi trp3`) > `Data/NPCs.lua` by `npcID` > role from reliable interactions (merchant, trainer, flight, inn, quest, bank; never from gossip alone) > **weak class tendency** (weight only, never conditions, never morale) > neutral. Secret identity = empty profile. Actions only from reliable events (never from the combat log), kept in memory for the session only.
- `Systems/Place.lua`: **`ctx.place`**, where we are: zone, subzone, uiMapID, continent, tags and themes, territory (`C_PvP.GetZonePVPInfo`, data as fallback), friendly or enemy capital, instance (type, name, id, difficulty from `GetInstanceInfo`), boss encounter (`ENCOUNTER_START`/`END`), group role, battleground state. `Data/Places.lua`: zones, subzones, capitals, dungeons, raids and battlegrounds of the Forever era by English client name, with Classic Era uiMapID and instanceID values **not yet verified** (order: verified number > name > unverified number).
- **RuleEngine**: `when = { other = {…}, place = {…} }` sub-tables with the same operators (lists, `not`, `any`, `func`), `other.actions` within N seconds (`{ "duel", within = 30 }`), `place.tags`, `place.encounter`; validator for fields and values; every field counts toward specificity. Placeholders `{other}`, `{otherrole}`, `{otherrace}`, `{otherclass}`, `{instance}`, `{encounter}`, localized.
- **Narrative Director**: `C` factor per interlocutor (`other.` tag) and place (`place.` tag, short lines in battlegrounds, arenas and against a boss); pacing by instance type (raids and bosses sober, battlegrounds and arenas rarer, inns and cities with more room; exceptional events do not become rarer); a boss encounter is demanding even without `worldboss`; register according to the interlocutor's way of speaking and role.
- New events: `npc_meet`, `other_action`, `encounter_end` (with guards); sources `ENCOUNTER_START`, `ENCOUNTER_END`, `UPDATE_BATTLEFIELD_STATUS`, `BANKFRAME_OPENED`, `DUEL_REQUESTED`, `PARTY_INVITE_REQUEST`, `CHAT_MSG_TEXT_EMOTE` (standard emotes only, only to know whether they are aimed at us; the text is not kept).
- **86 lines** IT/EN (`base_context`): NPCs by role, temperament and way of speaking; greetings by role, homeland (race) and trade (class); actions (duel, invitation, emote, trade, assignment, at our side); dungeon, raid, battleground, arena, hostile and contested territory, friendly and enemy capitals, sanctuaries, ports, neutral cities, inns; end of a boss encounter.
- Commands `/au luogo` (aliases `dove`, `place`) and `/au chi` (aliases `who`, `interlocutore`).
- `Tests/TestOtherPlace.lua` (over 500 checks) and fake client with `C_Map`, `GetInstanceInfo`, `C_PvP`, `UnitGroupRolesAssigned`, `UnitReaction`, `UnitCreatureFamily`, `UnitIsUnit`, battlegrounds and new events.
- [ADR 0019](docs/adr/0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md); steps 56–64 in `docs/G1_checklist.md` (in Italian).

*Changed*
- **Place memory by uiMapID** (issue #31): the key of a place is `map:<uiMapID>` when the client provides it, the zone name otherwise; internal migration `memories.version` 1 → 2 (names with a verified uiMapID converted, the others adopted on the next visit), the name stays as a label. The bus carries `mapID` in `WORLD_ENTER` and `ZONE_ENTER`.
- `Integration/TotalRP3.lua`: `GetOtherProfile` (another player's public profile, with consent), `CleanPsycho`, `MapPsycho`.
- `Systems/Relationships.lua`: a relationship also keeps the interlocutor's `traits`, `role` and `roleSource`.
- Base lines: 509 → 595 (with the example pack). The automatic `/say` test in `run_tests.py` searches up to 100 fights (the fixed seed changes sequence with every line added).

### Step S6b: Relationships and affinity

- `Systems/Relationships.lua` (module `relations`): the relationship with people on seven **independent axes**, as scales of the S5 trait model (`familiarity`, `trust`, `respect`, `affection`, `loyalty`, `fear`, and `attraction`, **optional and off by default**). Derived labels (stranger, acquaintance, indifferent, friend, comrade in arms, respected rival, enemy, disliked, wary, feared, beloved), the **overall disposition** −100…100 in nine bands and the register by familiarity bands are **data** in `Data/Relationships.lua` (IT and EN); `NS:RegisterRelationData` extends them from packs. A hand-chosen label takes precedence.
- **NPCs automatically** from the `npcID` of the GUID (nothing if it is missing, secret or not a creature): dialogue, quests accepted and turned in, merchant (opening, purchases, sales, repairs with `hooksecurefunc`), flight master, trainer, innkeeper. Increments as data tables, diminishing returns, daily cap per source and axis, slow decay of familiarity only. New events on the bus: `NPC_INTERACT`, `NPC_INTERACT_END`, `QUEST_STATE`.
- **Players chosen by the user**: the system suggests (group, trades, targets with a Total RP 3 profile, private replies) but a player enters the list only through a user action (`R:AddPlayer(name, "user")`); the "register automatically" option is off by default. Sliders, notes, tags, label, deletion, text export. No chat or whisper content is read or saved (for a private reply only the name is read); nothing over the network.
- **Narrator**: `ctx.relation`, `relationLabel`, `disposition`, `dispositionValue`, `rel` (axes), `relationKind`, `isKnown`, `groupRelations`; conditions `relation`, `disposition`, `relationKind`, `isKnown`, `<axis>Min`/`<axis>Max`, `withRelation`; placeholder `{relation}`; **`R` factor** of the weight with the `rel.` scope tags (`rel.relation:friend`, `rel.req:…`, `rel.not:…`); register going from formal to intimate with familiarity; `relation_npc` event (known NPCs) with guard and "memory recall" priority. The validator recognizes the new conditions and reports `relationWithoutRelation`.
- **51 lines** IT/EN (`base_relations`): greetings, farewells, thanks, healing, battle and victory at someone's side, meetings with known NPCs.
- `UI/RelationsFrame.lua` and `/au relazioni` (aliases `relations`, `relationships`; subcommands `lista`, `persone`, `aggiungi`, `scarta`, `rimuovi`, `dettaglio`, `nota`, `tag`, `etichetta`, `imposta`, `esporta`, `auto`, `attrazione`, `reset`): sortable and filterable table, suggested people, detail view with sliders (`Widgets.Slider`), notes, tags and label; two tabs in the Journal (*Relationships*, *People met*); *Relationships* module in the settings and in the wizard; **Relationships** row in `/au debug`. A bond that becomes important leaves a memory in the Journal (tokens only, never names).
- SavedVariables: schema 5 (`cdb.relationships` with its own version; `relations` settings; migration 5).
- `Tests/check_api.py` also reads the NPC sources (`NpcSource`/`EndSource`); the fake client has the gossip, quest, merchant, group, trade and whisper events, the `npc` and `partyN` units, `UnitFullName` and `hooksecurefunc`.
- Tests: `TestRelations` (axes and optional attraction, derivation of labels and disposition, precedence of the hand-set label, increments with diminishing returns and caps, decay, secret values, no player without a user action, no chat text saved, conditions, placeholders, R factor, register, lines by relationship, migration and corrupted data, read-only, window, Journal, commands) and simulated persistence after `/reload` in `run_tests.py`.
- [ADR 0018](docs/adr/0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md); steps 46–55 in `docs/G1_checklist.md` (in Italian).

*Changed*
- `Engine/Traits.lua`: a trait can have a `scope` (the tag scope in which it is valid); `CheckTag` and `Evaluate` respect it. Traits without a scope are valid in every scope, as before.
- `UI/JournalFrame.lua`: tabs shrink when there are more than four; `ShowExport(text, title)` also shows other texts.
- `UI/Widgets.lua`: `Widgets.Slider`, a draggable slider drawn with textures.
- SavedVariables schema: 4 → 5. Base lines: 458 → 509 (with the example pack).

### Step S6: Living Memory and Journal

- `Systems/LivingMemory.lua` (module `memory`): three levels (episodic for the session, persistent personal in `cdb.memories`, narrative flags). It remembers only significant moments: first visit to a zone, return after a day, visit that ended badly (death, flight), deaths, levels, capitals; never every click, never chat or whisper text. Fields of §7.4: id, moment, zone, type, importance, tags, origin (plus level and permanence).
- Limits: 500 ordinary memories with compaction of the least significant ones, permanent memories (at most 200), places kept separately with visit counts, reset at five targets, versioned migrations (`memories.version`), data from a newer version read-only.
- Honest recall: conditions `firstVisit`, `repeatVisit`, `lastVisitBad` (also `"death"`/`"flight"`), `visitsMin`/`visitsMax`, `daysSinceLastVisit`, `remembered`; `ctx.memory`; event guards (`Engine:SetEventGuard`): a recall event does not speak without a real memory; `LivingMemory:RegisterRecall`; the validator reports `recallWithoutMemory`.
- Event `memory_return` (return to a known place) with the "memory recall" priority of §10: it beats the zone atmosphere at the same moment. 14 example lines IT/EN for first visit and return (forest, capital, death, flight, repeated visits, days away), pack `base_memory`.
- `UI/JournalFrame.lua` and command `/au diario` (aliases `/au journal`, `/au diary`): tabs Memories, Places, Flags and Session (more with `JournalFrame:RegisterTab`), selective deletion, permanent memory, forgetting a place, "Forget everything" with confirmation, text export in a copyable window; subcommands `lista`, `luoghi`, `flag`, `esporta`, `permanente`, `elimina`, `dimentica`, `reset`. **Living Memory** row in `/au debug`; button in the settings panel; the *Memory* module now takes effect.
- SavedVariables: schema 4 (`memories` becomes the memory; character migration 4).
- Tests: `TestMemory` (no memory for insignificant events, first visit, return, `lastVisitBad`, flight, levels, limit and compaction, permanents, deletion, recall only with a real memory, priority in the Director, topics to avoid, privacy, migrations and corrupted data, Journal, export, commands), simulated persistence after `/reload` in `run_tests.py` (two consecutive runtimes, `SERIALIZE` and `LEAP` in the fake client).
- [ADR 0017](docs/adr/0017-living-memory-selective-memories-and-honest-recall.md); steps 39–45 in `docs/G1_checklist.md` (in Italian).

### Step S5: Character Soul and Total RP 3 traits

- `Engine/Traits.lua`: the trait model (`choice`, `scale` with bands, `set`), reusable for the interlocutor (S6c) and for relationships (S6b); `Sanitize`, `Merge` with priority between sources, affinity tags with scopes.
- `Systems/Personality.lua` (Character Soul): eight opt-in traits (temperament, morale, curiosity, faith, motivation, irony, inner voice, topics to avoid), seven archetypes plus the neutral profile, effective profile *explicit choice > Total RP 3 > game data > neutral values*, `ctx.soul`, condition `soul`.
- Weight factor `P` filled in: soft affinity from `trait:value` tags and hard filters `req:`, `not:`, `topic:` (never contradicted); inner voice off excludes thoughts; irony weights ironic registers; temperament, faith and irony shift the preferred registers (`StyleResolver`).
- `UI/ProfileFrame.lua` and command `/au anima` (`lista`, `neutro`, `archetipo`, `trp3 on|off`, `<trait> <value>`, `evita <topic>`; alias `/au soul`): archetype choice, trait editing, immediate change; button in the settings panel.
- `Integration/TotalRP3.lua`: reads only the **public** psychological traits of the player's **own** profile (`characteristics/PS`), with a separate consent (`personality.trp3`, off by default); it switches itself off if the APIs are missing or change; new capability `integration:totalRP3:traits` in `/au debug`.
- 16 example lines with personality affinity in IT and EN (`Data/RegistrySoul.lua`, pack `base_soul`); the validator checks the affinity tags (`badTag`).
- SavedVariables: schema 3 (the character's `personality` with archetype, traits and TRP3 consent; migration from schema 2).
- Tests: `TestSoul` (trait model, neutral profile, archetypes, P factor, hard filters on every line choice, TRP3 present, absent and with changed APIs, priority between sources, SavedVariables migration, command, window).
- [ADR 0016](docs/adr/0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md); steps 32–38 in `docs/G1_checklist.md` (in Italian).

*Changed*
- SavedVariables at schema 3: the character's `personality`, which was an empty placeholder, becomes the Character Soul profile (migration 3; trait values are cleaned up at startup).
- The `/au anima` command and the "Character soul..." button in the settings panel are new; no existing command changes.

### Step S4: Narrative Director

- `Engine/NarrativeDirector.lua`: priorities of GDD §10 (explicit > dialogue > exceptional event > memory > atmosphere), opportunity gate driven by intensity, suspension during cutscenes and movies and in demanding fights (boss, raid, elite in an instance), die roll, ordering of candidates; `NS:SetEventPriority` for packs; `SetRhythm` and `SetDemandCheck` hooks for S6c.
- `Engine/Pacing.lua`: minimum pause between any two interventions (no cascades), global, per-category and per-event pauses, per-category budget over 10 minutes scaled by intensity; session-only state.
- `Systems/Director.lua`: `Director:Offer`/`Resolve` collect the candidates of a moment and let at most one speak; silence is an outcome with its reason; **Narrative Director** row in `/au debug` (budget and latest decisions).
- Weight `W = B × C × P × N × S × R` (`Engine.Factors`, `Engine:Weight`): `P` and `R` neutral, hooks `Engine:SetWeightHook("C"|"P"|"R", name, fn)` for S5, S6b and S6c.
- `Engine/StyleResolver.lua`: registers allowed per event and preferred by zone atmosphere, depth and voice, with a neutral fallback (an out-of-place register weighs less, it is not excluded); frames with `styles` accept only lines of a close register. Pack APIs `RegisterEventStyles` and `RegisterMoodStyles`.
- `Compat:InvasiveScreen` (`InCinematic`, `IsInCinematicScene`, `CinematicFrame`, `MovieFrame`) and the two new capabilities in the matrix.
- Tests: `TestNarrativeDirector` (factors and weight distribution, intensity 0/50/100, pauses, budget, priorities, no cascade, silence, suspension, style fallback, frames, no duplicates in the window), with a fixed seed.
- [ADR 0015](docs/adr/0015-narrative-director-one-intervention-per-moment.md); steps 27–31 in `docs/G1_checklist.md` (in Italian).

*Changed*
- Spontaneous events go through the Narrative Director: probability, pauses and the die roll are no longer in `Systems/Triggers.lua`, and a spontaneous line arrives 0.1 seconds after the event (arbitration window).
- A line requested by the player (command, key) prevents a spontaneous line right after it for 4 seconds.
### Q2 fixes (issues #3, #4, #5, #6, #8, #11, #12, #14, #17, #19)

- **"To chat"** output (`Gateway:CopyToChat`, button next to Send, `/au copia`): the proposal goes into the standard chat box already on the right channel and the player sends it with their own Enter (`Compat:OpenChatWith`, `Compat:CanOpenChat`, capability `api:OpenChat`). To be tested in game (G1, step 20).
- `Gateway:TextFor`/`DisplayFor`: the text sent and the preview in the narrator are suited to the channel.
- `Gateway:SelectAuto`: automatic sending is enabled with two gestures (warning, then confirmation within 10 seconds) from the command, the panel and the wizard; **Automatic sending** row in the panel.
- `Compat:IsMouseOver(frame)` (frame method, falling back to `MouseIsOver`).
- `Config.CHAT_LIMITS`: byte limit per channel, read by the Chat Gateway and the validator.
- Tests: `TestContext` (secret identity), `TestMock` (mock client), regressions in `TestChatGateway`, `TestNarrator`, `TestConfig`, `TestDirector`, `TestValidator` and in the `run_tests.py` commands.
- The mock client has real timers (`C_Timer.After`/`NewTicker` with `ADVANCE`), distinct units for `player` and `target`, `IsInRaid`, and a send that rejects every protected channel without a gesture.

*Changed*
- Automatic sending is not turned on by choosing the `auto` mode: it requires a second confirmation gesture (a cautious decision: it publishes less).

*Fixed*
- **#4** With the proposal editor open, the proposal no longer expires (the wait restarts when it closes); a spontaneous phrase does not replace it; if it disappears anyway, the written text goes back to local chat; Enter with no proposal shows a warning.
- **#5** With a fixed channel, an emote in `/s`, `/p`, `/g`… carries the character's name, and a spoken phrase in `/e` becomes «says: «…»».
- **#8** Cycling through the modes no longer enables automatic sending: a warning and a confirmation are required, everywhere. Automatic is not in the panel's cycle; without consent it behaves like `conferma`.
- **#6** With the target's identity secret, the context contains no data about the target (not even `hostile`); every read of the context goes through `SafeCall`.
- **#3** Data from a newer schema is no longer modified: work is done on a copy.
- **#11** `/au canale incursione` works; an unknown value for `canale`, `profondita` and `chat` gets a reply; the help lists `evento` and `vittoria`; the wizard's help text follows the language; two unused keys removed.
- **#17** The mouse over the frame keeps it visible (the frame's `IsMouseOver` method, present in the Forever dump).
- **#19** The 255-byte limit lives in a single place.

### Step S3: data schema v2, phrase migration, validator (entries added with issue #24)

- Data schema v2: the rule registry is separate from the texts. A rule has `events`, `category`, `speaker` (the four voices), `form`, `styles` (registers), `depth` (natural, literary, elevated), `tags`, `weight`, `cooldown` and `when`; the texts are per language, with several variants per id (`Data/Registry*.lua`, `Data/itIT/`, `Data/enUS/`). The old pack format is converted on load.
- Migration of the 421 base phrases (367 plus the 54 of `Classes.lua`, now in the `.toc`) with voice, register and depth assigned phrase by phrase; frames and vocabulary remain.
- `Engine/Validator.lua` and `/au valida [tutto|pacchetto]`: duplicate ids, missing languages, mismatched placeholders, unknown conditions, empty variants, length per channel, UTF-8, rule consistency.
- `ctx.depth` and `ctx.intensity` in the context, conditions `depth`, `intensityMin`, `intensityMax`; the `S` factor of the weight (`Engine.StyleFactor`) prefers the chosen depth without ever excluding.
- `Tests/check_api.py`: compares the functions and events used with the Forever API dump (skipped with a warning if the dump is missing), with justified exceptions; wired into `run_tests.py`.
- `AzerothUnspoken/PACK_FORMAT.md` guide rewritten for schema v2; the example pack uses the new format.
- A language registered by a pack after loading stays the one chosen by the user (issue #7).
- Tests: `TestSchema` and `TestValidator`; steps 17–19 in `docs/G1_checklist.md`.

### Documentation (task D1)

- Professional `README.md` (English) and `README.it.md` (Italian version).
- `docs/adr/`: fourteen project decisions (ADRs) in MADR format, with an index.
- `docs/ARCHITECTURE.md`: modules, flow of an event, data, extension points, with Mermaid diagrams.
- `CONTRIBUTING.md`, this `CHANGELOG.md` and `docs/README.md` (documentation index).

### Step S2: private narrator and Chat Gateway

- Private narrator (`UI/NarratorFrame.lua`): non-blocking, movable frame, with adjustable duration, opacity and text size, recent history (in memory only), phrase editor and immediate pause.
- Chat Gateway (`Integration/ChatGateway.lua`) with the modes `PRIVATE` (default), `PREVIEW`, `CONFIRM_TO_SEND` and `AUTO_ONLY_IF_ALLOWED`; editing of the proposal before sending; channel choice (`/s`, `/e`, party, raid, guild, instance); flood protection; sending from a gesture only through `Gateway:PlayerAction`.
- Voices (`speaker`) on phrases: `narrator`, `inner`, `character`, `npc`; only the first two can become proposals.
- `Systems/Director.lua`: hook point for the future Narrative Director (intensity, immediate pause, modules).
- First-run wizard (`UI/Wizard.lua`), skippable, reopened with `/au benvenuto`.
- Settings panel: language, intensity, style depth, pause between phrases, chat and channel, narrator frame, modules and presets.
- Commands: `/au chat` (alias `/au modo`), `canale`, `intensita`, `profondita`, `pausa`, `narratore [cronologia|reset|pulisci]`, `benvenuto`, `annulla`.
- `AZEROTHUNSPOKEN_PAUSE` key binding (immediate pause) in `Bindings.xml`.
- Tests: `TestChatGateway`, `TestNarrator`, `TestDirector`; the simulated client has widgets with state.
- In-game test checklist: `docs/G1_checklist.md` (in Italian).

*Changed*
- Compared with the prototype, nothing goes to public chat without a choice by the user: the default output is the private narrator.
- `output.mode` is replaced by `chat.mode` (schema migration from 1 to 2: `self` becomes `PRIVATE`, every other mode becomes `CONFIRM_TO_SEND`; `autoPublicSay` is forced to `false`).
- The prototype's automatic emotes became proposals to be confirmed.

*Removed*
- Automatic publishing to chat as the default behavior.

### Step S1: foundations

- `AzerothUnspoken/` structure (`Core/`, `Engine/`, `Systems/`, `Integration/`, `UI/`, `Data/`) starting from the "Voci di Azeroth" prototype (archived in `archive/`), with its 374 phrases in Italian and English.
- `Core/Compat.lua`: capability matrix (`AVAILABLE`, `MISSING`, `RESTRICTED`), secret values, protected event registration, Forever detection.
- `Core/EventBus.lua`: events normalized into envelopes, with deduplication and an anti-cascade queue.
- `Core/Config.lua`: defaults, merge, validation and migrations by `schemaVersion`.
- `Core/Diagnostics.lua` and `/au debug [full|trace]`: client capabilities, latest events, intercepted errors.
- `/au` and `/unspoken` commands; "speak" button and key binding.
- Optional integration with Total RP 3 (profile name).
- Example pack `AzerothUnspoken_Example`.
- Offline tests with a Lua interpreter and a simulated client (`Tests/`).
- WebStorm configuration (`.luarc.json`) and EmmyLua annotations.
- Technical references ([docs/REFERENCES.md](docs/REFERENCES.md)).

*Changed*
- The language is saved with the packs' short code (`it`, `en`).
- Default global pause set to 45 seconds (previously 40) and the anti-repetition window to at most 30 phrases (previously 40).

### Known limits

- **Tested only outside the game**: tests in the real client (G1, G2, G3) are postponed. See [docs/G1_checklist.md](docs/G1_checklist.md) (in Italian).
- The Narrative Director's numbers (budget, category pauses, style weights) are assumptions to be tuned in game (G1, steps 27–31).
- In the settings, the modules Personal, World, Memory, Relationships, NPC Dialogues, Stories, Chat Proposals and Total RP 3 take effect; Social and Audio are placeholders.
- **Story arcs (S9) have not been tested in the real client**: whether `C_Map` gives the uiMapID of the starting zone (the English name is the fallback), the familiarity thresholds, the levels and the step waits (assumptions), the look of the "Storie" tab, the tone of the 33 lines (G1, steps 84–92).
- **NPC Alive (S8) has not been tested in the real client**: the names of the Blizzard windows that the frame avoids, `GetRect`, the `npc` unit during interactions, the registry's `npcID`s (few, from Classic Era, unverified; [issue #36](https://github.com/Finland6738/azeroth-unspoken/issues/36)) and the tone of the 169 lines are to be tested in game (G3, `docs/G1_checklist.md`).
- The Total RP 3 traits (`PSYCHO_MAP`) use the IDs of the default traits of the installed TRP3 and have not been tested with a real profile. Almost all base phrases have affinity tags since S7 (plus the 26 of `base_soul`); the thresholds and factors of the Character Soul (×1.6, ×0.6, inner voice, irony) are assumptions to be tuned in game (G1, steps 32–38).
- The `uiMapID`s, `instanceID`s and `npcID`s in `Data/Places.lua` and `Data/NPCs.lua` come from Classic Era and are not verified in Forever ([#36](https://github.com/Finland6738/azeroth-unspoken/issues/36)).
- The tone, rhythm and frequency of the phrases are not verified: the tests check structure, counts and rules, not literary quality (G2, G3).
- A pack that registers a key that already exists (script, NPC, place, arc) replaces the base one without a warning ([#69](https://github.com/Finland6738/azeroth-unspoken/issues/69)).
- License to be defined ([issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2)).

[Unreleased]: https://github.com/Finland6738/azeroth-unspoken/commits/main
