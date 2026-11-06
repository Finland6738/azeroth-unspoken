# 0054. Event rates per class, and the gestures a class makes for itself

- Status: Accepted (offline tests; **nothing of it has run in the client**: the checks are in `docs/G1_checklist.en.md` and `docs/G1_checklist.md`, section C0g; owner decision of 2026-11-02 to finish the development without in-game test gates)
- Date: 2026-11-06 (phase C0g of the content-scale plan, issue #138; found by content wave W05, PR #253; [ADR 0050](0050-need-model-near-duplicates-and-content-waves.md), [ADR 0051](0051-tiers-mixed-by-share.md), [ADR 0053](0053-lines-of-the-character-only.md))

## Context

The need model of [ADR 0050](0050-need-model-near-duplicates-and-content-waves.md) (`tools/archive/need.py`, `need_model.json`) gave every class the same rate for every event: the rates measured by `Tests/bench_trial.py --mix` over three characters (an orc warrior, a troll mage, a human paladin), or assumed. After the scaling to the default pace, that is `heal` 0.44 and `buff` 0.22 interventions per hour in the open world, for every class.

But `heal`, `buff` and `rezother` fire only on the character's **own** cast of a spell that `Data/Vocabulary.lua` classifies (`Systems/Triggers.lua`, `SPELL_CAST`). Wave W05 wrote the warrior's and the rogue's pools and found that they can hardly be heard:

- a warrior or a rogue casts nothing on the `buff` list: Battle Shout is a `shout` (silent out of combat, an attack in combat), poisons and sharpening stones match nothing;
- their `heal` fires only on a healing potion or a healthstone: a bandage casts "First Aid", which matches nothing;
- a warrior, a rogue or a mage cannot raise the dead, yet each had a `rezother` pool of 15 strict and 137 random texts;
- in the trial mix only the paladin heals (in 40% of its fights), so the measured `heal` rate is a third of a paladin's: the model asked a warrior for as many heal lines as a paladin, and a paladin for a third of what it fires.

The next waves of `docs/content/WAVES.md` are class waves (hunter, priest, warlock, mage, then shaman, druid, paladin and rogue), so the per-class cells had to be right first.

### The audit: which class can fire which event, and how

Every event of the class pools was checked against the trigger code. Only `heal`, `buff` and `rezother` depend on the class (the companions' `pet_*` events already did, through `classes`). `battle`, `victory`, `lowhp`, `death`, `rez`, `levelup`, the quests, `muse` and the social commands do not depend on the spells. `attack` fires on any cast in combat, which every class makes in every fight, and its pause of 30 seconds bounds it. `threat` is only a command (`/au threat`).

| class | `heal` fires on | `buff` fires on | `rezother` fires on |
|---|---|---|---|
| Priest | its heals (Heal, Flash Heal, Renew, Prayer of Healing...) | Fortitude, Divine Spirit, Shadow Protection, Power Word: Shield | Resurrection |
| Paladin | Holy Light, Flash of Light, Lay on Hands | the Blessings (5 minutes in Classic) | Redemption |
| Druid | Healing Touch, Rejuvenation, Regrowth, Tranquility | Mark of the Wild, Thorns | Rebirth (in combat, 30 minutes) |
| Shaman | Healing Wave, Lesser Healing Wave, Chain Heal, Healing Stream Totem | Water Breathing only (Lightning Shield is not on the English list) | Ancestral Spirit |
| Warlock | Health Funnel, healthstones, potions | Unending Breath only | the soulstone ("Soulstone Resurrection") |
| Hunter | potions, healthstones; **since C0g** a bandage on itself | **since C0g** its aspects, out of combat | Revive Pet |
| Mage | potions, healthstones; **since C0g** a bandage on itself | Arcane Intellect, Amplify Magic, Dampen Magic | nothing |
| Warrior | potions, healthstones; **since C0g** a bandage on itself | **since C0g** Battle Shout, out of combat | nothing |
| Rogue | potions, healthstones; **since C0g** a bandage on itself | **since C0g** poisons, sharpening stones and weightstones, out of combat | nothing |

A spell of the `buff` list also fires `buff` in combat: the branch of `SPELL_CAST` for kinds that have lines of their own (`NS.Engine.byEvent[kind]`) catches it, and some W05 lines (`combat = true`) count on it. Only `/au cast` turns a buff in combat into an attack. Both stay as they are.

## Decision

### 1. The gestures a class makes for itself (`Data/Vocabulary.lua`, `Systems/Triggers.lua`)

Three new spell kinds in `RegisterSpellKeywords`, after `shout` in the order of the classification, with the English and Italian names as for every other kind (the client of WoW Forever is English; the Italian names are those of the Italian client, as the other entries):

- `bandage`: "First Aid" / "Primo Soccorso";
- `weapon`: the five poisons by their full name ("Instant Poison", "Deadly Poison", "Crippling Poison", "Mind-numbing Poison", "Wound Poison": "Cure Poison" and "Abolish Poison" are not preparations), "Sharpen Blade", "Sharpen Weapon", "Enhance Blunt Weapon" (the sharpening stones and weightstones), and their Italian names;
- `aspect`: "Aspect of the" / "Aspetto d".

`NS.SELF_CASTS` (in `Systems/Triggers.lua`, open to packs) says which event each gesture fires and when. `Triggers:SelfCastEvent(kind, inCombat, target)` applies it:

| kind | event | when | for |
|---|---|---|---|
| `bandage` | `heal` | in or out of combat, **on oneself only** (no target, or the target `UNIT_SPELLCAST_SENT` gives is the character's own name) | warrior, rogue, hunter, mage |
| `shout` | `buff` | out of combat (Battle Shout: no other shout is cast outside a fight) | anyone who shouts (the warrior) |
| `weapon` | `buff` | out of combat | rogue |
| `aspect` | `buff` | out of combat | anyone with an aspect (the hunter) |

When the gesture does not apply (another class, in combat, a bandage on someone else), everything is as before: an attack in combat, silence out of combat. So Battle Shout in combat keeps its attack lines (`spellKind = "shout"`), and no existing behaviour changes.

The classes follow the lines, not the game. The heal lines of the priest, the paladin, the druid, the shaman and the warlock speak of the Light, of nature or of the pact, so a bandage stays silent for them. The warrior's `buff` lines speak of the body growing stronger, not of a blade, so a sharpening stone stays silent for the warrior.

### 2. A bandage or a poison is not magic (`Core/ContextResolver.lua`)

The element of a spell that names none falls back to the class's (`classElement`: holy for a paladin). For a `bandage` or a `weapon` cast it is `physical`, so a paladin's bandage would never pick a line of the Light. (A potion keeps the old fallback.)

### 3. Conditions on the lines the new gestures would make wrong (71 lines, no text changed)

`["not"] = { spellKind = ... }` was added where a line's wording does not fit a gesture now heard. Where a line already had a `not`, the two are joined with `any`, so `not (A or B)`. No text was edited.

- **26 `heal` lines, not on a bandage**: the lines that address someone else ("It is not your day yet. Rise.", "Putting you back together", the `hasTarget`/`friendly` lines, all ten `rel.heal.*`), that speak of light or of a murmured spell (`heal.e.01`, `heal.e.02`), the healer's complaint (`heal.self.01`), `heal.combat.01`, the undead and troll lines about mending another, and one rogue line about the warmth of a potion.
- **20 generic and race `buff` lines, not on a shout, a weapon preparation or an aspect** (18 lines, about a gift to someone else or a sign traced in the air), or **not on a weapon preparation** (2 lines, about new strength in the shoulders or a ward).
- **6 warrior `buff` lines, not on a shout**: the lines that read as a buff received from someone else ("I don't ask where it comes from", "Ooh. Tingles.", "Can I keep this?").
- **19 rogue `buff` lines, not on a weapon preparation**: most of W05's rogue pool reads as a buff received ("Strength I didn't earn", "Help without a lecture", "If I start to glow"). Six lines fit a poison or a stone and stay ("A small edge before the work begins", "Primed for trouble").

The lines with a received buff are now heard by no class: there is no trigger for a buff someone else casts on the character (see Consequences).

### 4. Event rates per class in the need model (`need_model.json`: `class_rates`; `tools/archive/need.py`)

`class_rates` gives, per event, the factor of each class on the event's rate (measured or assumed), and a class not listed has 1. The `classes` of an assumed event (the companions) are factors too: 0 for every other class. `need.rates` returns `{event: {CLASS: factor}}` and refuses a class the model does not know or a negative factor.

- A **class pool** fires at its class's factor. A factor of 0 is a cell the class cannot fire, so it has **no pool** and no need.
- Every **other pool** of a character (generic, race, place...) fires at the largest factor among the classes its race can be, since the need is the most any character fires. Its mean rate (`per_hour`, which orders the units of a wave) uses the mean of the factors.
- The firings are linear in the rate, so the model computes them once per character at factor 1 and scales them. The run time is unchanged.

The factors (all hypotheses except the measured paladin):

| event | Paladin | Priest | Druid | Shaman | Warlock | Hunter | Mage | Warrior | Rogue |
|---|---|---|---|---|---|---|---|---|---|
| `heal` | 3.0 (measured: a third of the trial mix heals) | 3.0 | 2.5 | 2.5 | 0.6 | 0.4 | 0.4 | 0.5 | 0.5 |
| `buff` | 1.2 | 1.0 | 1.0 | 0.15 | 0.1 | 0.8 | 1.0 | 0.6 | 0.3 |
| `rezother` | 2.0 | 2.0 | 0.5 | 2.0 | 0.3 | 0.5 | 0 | 0 | 0 |

The pace scaling stays on the mix: a class that fires an event more speaks a little more than 22.5 interventions per hour (a priest about +1). That is under 5% of any other pool, so the model does not renormalise per class.

### 5. The last wave joins the one before it only if both fit

`need.waves` merged a last wave far under the minimum into the one before it even when the sum passed the maximum of 3,000 texts. The new numbers hit this (3,580). The merge now happens only when the sum fits.

## Consequences

The need per language, before and after (`cli need --write`):

| | before | after |
|---|---|---|
| strict need / gap | 28,938 / **13,476** | 29,482 / **14,195** |
| soft need / gap | 8,893 / **0** | 8,950 / **96** |
| random need / gap | 270,686 / **253,580** | 275,957 / **258,873** |
| waves | 88 | 90 |

The total grows. The model used to average the healers' heals over three characters, two of whom never healed, so it asked a healer for a third of what it fires. Per event, the strict need goes:

- `heal`: 1,000 → 1,707. The priest's and the paladin's class pools go 90 → 268 strict, the druid's and the shaman's 90 → 223, the warrior's and the rogue's 90 → 45, the hunter's and the mage's 90 → 36. The generic and race heal pools triple, because a healer of each race hears them.
- `buff`: 667 → 506. The rogue goes 60 → 18, the shaman 60 → 9, the warlock 60 → 6, the warrior 60 → 36, the hunter 60 → 48; the paladin goes 60 → 72.
- `rezother`: 167 → 165. The warrior, rogue and mage have none (they had 15 strict and 137 random each); the priest, paladin and shaman go 15 → 29.

The gap of the class waves (strict / random, per language):

| class | before | after |
|---|---|---|
| Hunter | 775 / 8,697 | 702 / 7,998 |
| Priest | 708 / 7,998 | 900 / 9,855 |
| Warlock | 760 / 8,563 | 662 / 7,602 |
| Mage | 709 / 7,999 | 643 / 7,349 |
| Shaman | 707 / 7,997 | 803 / 8,932 |
| Druid | 708 / 7,998 | 834 / 9,221 |
| Paladin | 710 / 8,000 | 914 / 9,973 |
| Rogue | 124 / 7,398 | 111 / 6,429 |
| Warrior | 0 / 7,256 | 0 / 6,474 |

A small soft gap (96 texts) reappears in the healers' heal pools and the race heal pools, so the first row of WAVES.md now starts with it.

If the owner prefers the measured mix to stay the mean over the classes (a healer at about 2 instead of 3), dividing the `heal` factors by their mean (about 1.5) brings the total back near the old one. It is one edit in `class_rates`.

**Known limits.**

- **No trigger for a buff someone else casts on the character.** About 25 warrior and rogue lines (and the two warrior `combat = true` buff lines) are written for it and stay unheard. The follow-up is a trigger on the character's auras that knows who cast them. It would also make the warrior and the rogue the main audience of the healers' buffs.
- **Not mapped yet.** Lightning Shield (English), Demon Skin and Demon Armor, the mage armors, Inner Fire and Trueshot Aura are not mapped: the class lines of those classes address a companion. The class waves can map them, with lines conditioned on the new kind.
- **Revive Pet and the soulstone.** Revive Pet (open world) and the warlock's soulstone (put on someone before a death) fire `rezother` with lines about raising a fallen ally. This is unchanged: the hunter's and the warlock's `rezother` pools are small (factor 0.5 and 0.3, instance only).
- **Not confirmed in the client.** The Italian names of the new kinds, the spell name of a poison or a stone, and whether `UNIT_SPELLCAST_SENT` gives the character's own name for a bandage on oneself (G1 section C0g).

## Alternatives considered

- **A new event for weapon preparations** (`prepare`). It needs no line conditions, but the rogue's existing `buff` lines that fit a poison would never be heard, and a new pool waits for a wave. Rejected: the kind is still there (`spellKind = "weapon"`) for lines that want it.
- **The gestures for every class, with conditions on every line that does not fit.** About 85 more lines: every healer's and caster's class `buff` and `heal` line. Rejected: a condition on most of a pool is a sign the gesture does not belong to that class.
- **Battle Shout as a `buff` kind.** It would fire `buff` in combat too (through the pack-kind branch) and take Battle Shout away from the warrior's shout attack lines. Rejected.
