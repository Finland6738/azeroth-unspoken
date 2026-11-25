# Active romance with NPCs

> English version. The Italian twin is [romance.it.md](romance.it.md); when they differ, fix both.
>
> Specification of step **R0** of active romance. Decision: [ADR 0061](../adr/0061-active-romance-flirt-answers-an-affinity-table-one-beloved-and-three-tone-tiers.md),
> which extends [ADR 0037](../adr/0037-romance-with-npcs-opposite-sex-and-the-vow.md). Steps: [ROADMAP.md](../../ROADMAP.md),
> section "Active romance".
>
> **Status: R1 built (the engine, `Systems/Romance.lua`, `Data/Romance.lua`).** No flirt answer and no moment is offered
> until the interface of R2 says it can draw them; the vow of ADR 0037 keeps happening by itself until then. The
> differences R1 settled are listed in point 21. The mockups are in [`docs/design/mockups/`](../design/mockups/README.md)
> (`romance-*.html`, PNGs in `png/`); they are proposals drawn on the addon's real widgets and tokens, marked *PROPOSED*.

## 1. What this adds, in one paragraph

Today romance happens by itself (ADR 0037). With this, the player **does** it: in the ambient dialogue window, next to
the neutral answers, one or two **flirt answers** may appear, marked by a heart and a colour of their own; the NPC
**welcomes** them, stays **cold** or **refuses**, by an **affinity table** in data. Interest grows into **courtship**; the
big moments (a **declaration**, a **date**, the **vow**) open a **romance popup** of their own, from a click. There is
**one beloved** at a time; flirting with another after the vow brings **jealousy**; the player can **break up**. The tone
goes from **Courteous** (default) to **Intimate** (fade to black), and an **Explicit** tier exists only behind an **18+
gate**, off by default, in a separate pack that CurseForge never receives. All of it is private narration.

## 2. The gates

Active romance appears only when **every** condition holds, checked at each use (`R:RomanceActive(npcID)` in R1):

| Gate | Where it is |
|---|---|
| Relationships module on | `NS.db.modules.relations` |
| Attraction axis on | `relations.attraction` (off by default) |
| Active romance on | `relations.romanceActive` (new, **on** by default) |
| The soul does not avoid *romance* | `Personality` trait `avoid`, value `romance` |
| The NPC is eligible | `R:RomanceEligible(npcID)`: opposite sex, humanoid (ADR 0037) |
| The NPC is not excluded | `romance.exclude` (npcIDs) in `Data/Romance.lua`; `romance = false` in `Data/NPCs.lua` |
| Acquaintance or above, no grudge | `romance.flirt.minLevel`; `rec.foe` (ADR 0041) |
| A calm moment | out of combat, alive, no invasive screen, not a `/au talk test` dialogue |
| The NPC is not resting from the character | `rec.romance.cd` (after refusals) and the break-up rest |

`R.session.kin` gets a reading at the start of an ambient dialogue opened from the target (R1): `R.Kin("target")` when the
target's npcID is the dialogue's NPC.

## 3. The data file: `AzerothUnspoken/Data/Romance.lua`

A new data file, loaded after `Data/Relationships.lua`, merged by `NS.Relationships:RegisterData({ romance = ... })`
into the existing `romance` block (so a pack can change any number). Every value below is the proposed default.

```lua
romance = {
	-- ADR 0037 (unchanged): minLevel, gain, decay, cap, humanoid, vow = { attraction = 80, label = "lover", variants = 3 }
	active = { default = true },
	exclude = { npcIDs = { --[[ R3: children and others never courted ]] } },
	stages = {                                 -- in order; a stage is stored, these are the thresholds to reach it
		{ id = "interest", attraction = 5 },
		{ id = "courtship", attraction = 25, band = "friend" },
		{ id = "declared", moment = "declaration", attraction = 50, band = "friend" },
		{ id = "vowed", moment = "vow" },      -- attraction and label of `vow` above
	},
	flirt = { minLevel = "acquaintance", max = 2, maxEarly = 1, perTalk = 1, hours = 6 },
	affinity = {
		base = 50, random = 12, welcome = 60, cold = 40,
		race = { same = 6, pairs = { Human = { Dwarf = 2, NightElf = 2 }, Orc = { Troll = 3, Tauren = 2 } } },
		class = { guard = { WARRIOR = 4, PALADIN = 4 }, innkeeper = { ROGUE = 2, HUNTER = 2 }, trainer = { same = 6 } },
		soul = {                               -- NPC temperament -> character trait -> band -> points
			cheerful = { optimism = { high = 6, low = -4 }, irony = { high = 2 } },
			gruff = { irony = { high = 4 }, stoicism = { high = 3 }, altruism = { high = -2 } },
			stoic = { stoicism = { high = 5 }, irony = { high = -3 } },
			melancholic = { spirituality = { high = 3 }, optimism = { low = 4, high = -2 } },
			merciful = { altruism = { high = 6 }, vengefulness = { high = -5 } },
			fierce = { vengefulness = { high = 4 }, ambition = { high = 3 }, altruism = { high = -2 } },
			resolute = { ambition = { high = 4 }, patriotism = { high = 3 } },
		},
		relation = {
			band = { acquaintance = -12, friend = 0, close = 8, bond = 14 },
			axes = { attraction = 0.25, affection = 0.10, trust = 0.08, respect = 0.04, fear = -0.15 },
		},
		stage = { ahead = -15, tierOut = -20 },
		situation = { inn_night = 6, festival = 6, city = 0, wild = -3 },
		mood = { happy = 3, serene = 1, admiring = 2, curious = 1, worried = -4, tense = -3, furious = -5, melancholic = -10 },
		momentum = { step = 2, max = 6 },
	},
	refuse = { hours = 20, streak = 3, restDays = 5 },
	moment = { coldDays = 3, refuseDays = 7, dateHours = 20 },
	jealousy = { from = "vowed", farChance = 0.35, days = 7 },
	breakup = { attraction = 15, affection = 5, restDays = 30, confirmSeconds = 30 },
	tone = { default = 1, mix = { [1] = 0.6, [2] = 0.4, [3] = 0.4 }, night = { from = 21, to = 5 } },
	pack18 = { addon = "AzerothUnspoken_Romance18", toc = "X-AzerothUnspoken-Romance" },
}
```

New rows of `increments` (same file as the others, `Data/Relationships.lua`; the temperament scales them like any row):

```lua
romance_flirt = { gain = { attraction = 2, affection = 0.5 }, decay = 0.7, cap = { attraction = 4, affection = 1 } },
romance_date = { gain = { attraction = 3, affection = 1, trust = 1 }, decay = 0.5, cap = { attraction = 3, affection = 1, trust = 1 } },
romance_declared = { gain = { attraction = 4, affection = 3, trust = 2 }, decay = 1 },
romance_refused = { gain = { attraction = -1 }, decay = 1 },
romance_jealous = { gain = { attraction = -4, trust = -3 }, decay = 1 },
romance_breakup = { gain = { affection = -5 }, decay = 1 },
```

With these numbers a player who flirts every day with a Friend and gets about half the answers welcomed reaches
courtship in about a week, the declaration in two or three, the vow in about a month: faster than the seven weeks of the
passive path, by design, and still slow.

## 4. Flirt answers

### 4.1 Format

```lua
NS:RegisterDialogues({
	pack = "base_romance",
	flirts = {
		{ id = "glance", kind = "glance", stage = { "none", "courtship" }, tier = 1,
			label = { en = "Hold their gaze a moment longer.", it = "Reggi il suo sguardo un attimo di più." } },
		{ id = "inn_stay", kind = "invite", stage = { "declared", "vowed" }, tier = 2, roles = { "innkeeper" },
			when = { romanceNight = true },
			label = { en = "Ask whether a room is free tonight, for two.", it = "Chiedi se stanotte c'è una stanza, per due." } },
	},
})
```

- `id`: `[a-z_0-9]`, unique in the pack. `kind`: `glance`, `compliment`, `gift`, `walk`, `invite`, `moment`.
- `stage`: `{ from, to }`, stage ids including `none`. `tier`: 1 or 2 (3 only with `romance18 = true` on the pack).
- `roles` (optional): the NPC roles it fits. `when` (optional): ordinary conditions (`Engine.CheckConditions`).
- `label`: every language of the addon, at most `N.LABEL_BYTES` (70) bytes, no `{placeholder}`, valid UTF-8.
- A `moment` flirt has `moment = "declaration" | "date" | "vow"` and is offered only when that moment is due.

### 4.2 Validator

`N:Check()` gains a `flirts` pass. The neutrality test (`N.PutsWords`) **does not run** on flirts; every other check runs.
New errors: an unknown `kind`, a bad stage range, a tier out of 1-2 (or 3 outside a `romance18` pack, or 1-2 inside one),
a missing language, and **any script choice that declares `romance = true`**.

### 4.3 In the dialogue

`ComputeChoices` (NPCAlive) builds the neutral answers as today, then, if `R:RomanceActive(npcID)` and no flirt was
answered in this dialogue, asks `Romance:Flirts(npcID, node)` for up to `flirt.max` (or `maxEarly` before courtship)
flirts: the due moment's answer first, then the others whose stage, tier (point 9), roles and `when` fit, drawn at random
with the anti-repetition memory of the selector. The view gives each choice `romance = true`, and the frame draws it with
the heart (point 11.1). The numbers continue after the neutral answers (`4.`, `5.`); the keys 1-5 choose them.

Choosing a flirt:

1. `Romance:Answer(npcID, flirt)` computes the outcome (point 5) and applies it (increments, cooldowns, jealousy);
2. the NPC's reply is picked from `npcd_romance_<outcome>` with the context of the flirt (`romanceKind`, `romanceTier`,
   `romanceOutcome`, `romanceStage`) and shown as the node's line;
3. the node's neutral answers stay; the flirts leave for the rest of the dialogue.

Choosing a moment answer closes the dialogue (`End("romance")`) and opens the popup on that moment.

## 5. The affinity score

`Romance:Score(npcID, flirt)` returns the score and its parts (the parts are shown by `au romance why`, for tuning):

| Part | How |
|---|---|
| base | `affinity.base` |
| race | `same` if the NPC's known race equals the character's; else `pairs[mine][theirs]` or `pairs[theirs][mine]`; 0 if unknown |
| class | `class[role][MYCLASS]`, or `class[role].same` when a trainer's class is the character's |
| soul | for the NPC's temperament, the sum over its traits of the character's band value (`low`/`mid`/`high`); 0 if none |
| relation | `band[disposition]` + Σ `axes[a] × value(a)` |
| stage | `ahead` if the flirt's first stage is after the NPC's; `tierOut` if a tier-2 flirt is outside its situation |
| situation | `inn_night` at an inn (or resting) at night; `festival`; `city`; `wild` |
| mood | the character's dominant emotion (ADR 0031), if any |
| momentum | `step` per welcome in a row, at most `max` |
| random | uniform in `[-random, +random]` |

`>= welcome` welcome, `>= cold` cold, otherwise refuse. A worked example with the defaults: a Friend (0) with attraction
20, affection 40, trust 35 (5 + 4 + 2.8 = 11.8), a cheerful NPC and an optimistic character (+6), in a city (0), no
mood: 50 + 11.8 + 6 = **67.8** before the random part, so welcomed unless the random part is below -7.8 (about a third of
the time cold, never refused). The same NPC at Acquaintance with attraction 0: 50 - 12 + 4 + 2.8 + 6 ≈ 51: mostly cold,
sometimes welcomed, rarely refused.

Outcomes:

| Outcome | Effects | NPC line |
|---|---|---|
| welcome | `romance_flirt`; momentum +1; the stage may move up (point 6) | `npcd_romance_welcome` |
| cold | none; momentum back to 0 | `npcd_romance_cold` |
| refuse | `romance_refused`; `cd = now + refuse.hours`; refusals +1 (at `streak`: `cd = now + restDays`); momentum 0; the first refusal by this NPC leaves `relation_refused` in the journal | `npcd_romance_refuse` |

## 6. Stages and moments

Stored in `rec.romance.st`: `none` (no table), `interest`, `courtship`, `declared`, `vowed`, `ended`, `past`.

- After every change of attraction (`RecordNPC`, a flirt, a date) `Romance:Advance(npcID)` moves `none` to `interest` and
  `interest` to `courtship` when their thresholds hold. It never moves a stage down.
- `declared` and `vowed` are reached only through their moments.
- **A moment is due** when: the stage before it is reached, its thresholds hold, `mo[moment]` (the next allowed time) is
  past, and, for a declaration, no other NPC holds the beloved slot; for the vow, this NPC is the beloved.
- **Moments**:

| Moment | Due | Choices in the popup | Welcome | Cold | Refuse |
|---|---|---|---|---|---|
| declaration | courtship, attraction 50, Friend+, no beloved | *Speak your heart* / *Not yet* | `declared`, beloved, `romance_declared`, `relation_declared` (permanent) | `mo.declaration = now + coldDays` | `mo.declaration = now + refuseDays`, `romance_refused` |
| date | courtship or later, once per `dateHours` | 2-3 options by situation and tier, each with its tier chip / *Not tonight* | `romance_date`, clears jealousy, `relation_date` the first time | nothing | `romance_refused`, `mo.date = now + dateHours` |
| vow | the beloved, attraction 80, label *beloved* | *Make the vow* / *Not yet* | `vowed`, the vow of ADR 0037 (memory, line) | — (the vow is not scored: the beloved always accepts) | — |

The declaration and the date are scored like a flirt, with the moment's own `stage` part at 0 (a moment is never
"ahead"). *Not yet* and *Not tonight*, Esc and the close box cost nothing and set no time.

## 7. Jealousy and the break-up

- **Jealousy**: when the beloved's stage is at or after `jealousy.from` and another NPC answers a flirt with welcome or
  cold, the beloved gets `jl = now` if both NPCs have the same `town`, else with `farChance`. At the next meeting with the
  beloved (`RecordNPC`), once: `romance_jealous`, a `relation_jealous` journal line, a private inner-voice line; the
  condition `romanceJealous` holds while `now - jl < days × 86400`, so the beloved's dialogue opens with a jealous line
  (`npcd_romance_jealous_open`, NPC voice, ahead of the archetype's open line). A welcomed date sets `jl = nil`.
- **Break-up** (`Romance:BreakUp(npcID)`, only the beloved, only by the player): `st = "ended"`, `endT = now`,
  `beloved = nil`; attraction `min(value, breakup.attraction)`; `romance_breakup`; `relation_breakup` (permanent); one
  inner-voice line (`rel_breakup_N`). From the Relationships window: a *danger* button **End the romance** in the beloved's
  detail and a Dialog (*End the romance with %s? The vow, if made, stays in your journal. You can court again after 30
  days.*). From chat: `au romance end` twice within `breakup.confirmSeconds`. After `restDays`, the stage goes back to
  `none` at the next meeting.

## 8. The popup's scenes

Each moment is told by the narration of the event `romance_scene` with conditions `romanceMoment` (declaration, date,
vow), `romanceTier` (1, 2, 3), `romancePhase` (`open` before the choice, `welcome`, `cold`, `refuse` after it) and
`romanceDate` (the date option chosen: `walk`, `supper`, `stargaze`, `night`, ...). The speaker is `narrator`; the NPC's
words inside the narration are in quotes. A scene is 2-5 sentences. A tier-2 `welcome` scene ends with a closing line
that fades to black (point 9.3).

Date options are data (`romance.dates`), each with a `tier`, a `kind`, and a `when` (for example `night` needs
`romanceNight`, `supper` needs a rested place (an inn or a city), `stargaze` needs a clear night outdoors), and its label in the locale files:

```lua
dates = {
	{ id = "walk", tier = 1 }, { id = "supper", tier = 1, when = { resting = true } },
	{ id = "stargaze", tier = 1, when = { romanceNight = true, indoors = false } },
	{ id = "night", tier = 2, when = { romanceNight = true, resting = true } },
},
```

## 9. Tone tiers

### 9.1 The allowed tier

`relations.romanceTone`: 1 (Courteous, default), 2 (Intimate), 3 (Explicit, only with the gate on **and** the pack
installed; otherwise the setting reads as 2). `au romance tone` and the Settings segment change it.

### 9.2 The situation's tier

`Romance:SituationTier()` is intimate (any tier the player allows, so 2 or 3) when: the NPC's stage is `declared` or `vowed`; and it is night (`tone.night`, the
world's hour) at an inn or rested, **or** a festival is known (a `festival` world variable that R1 adds only if the 1.60.1
API dump has a calendar; without one, never); and the character's mood is not grief. Otherwise 1. A flirt or date of tier `t` is offered when
`t <= min(allowed, situation)`. The grief is the dominant emotion *melancholic* of `Systems/Emotion.lua`. When both tiers fit, their lines mix by `tone.mix`; the player chooses between date
options of different tiers by their chips.

### 9.3 Fade to black

A tier-2 `welcome` scene shows its text, then its last sentence, then the text fades out over 1.5 s (`NS.Motion.FadeOut`)
to the popup's empty surface with the single word *Later.* / *Più tardi.* and the Close button. With *Animations: off* the
last view shows at once.

### 9.4 The rule

Every rule of the romance events (`npcd_romance_*`, `romance_scene`, `romance_inner`) must carry `romanceTier` in its
conditions (the validator checks it). The engine filters by the allowed tier before any weight: a rule above it is never
a candidate.

## 10. The 18+ gate

- `Consent:Register("romance_adult", { text = "consent_romance_adult_text", accept = ... })`; the Settings button and
  `au romance adult on` call `Consent:Step`; *off* is one step and sets the tone to `min(tone, 2)`.
- Warning (English, final wording in R2): *Explicit romance texts (18+). Turn this on only if you are 18 or older and want
  them. They come only from a separate optional pack, AzerothUnspoken_Romance18, which is not on CurseForge; without it,
  nothing changes. Romance stays private: nothing is ever sent to chat. You can turn it off at any time.*
- Kept in the account: `relations.romanceAdult = true`.

## 11. The interface

### 11.1 Flirt answers in the dialogue window

Mockup: `romance-dialogue-flirt` (and `romance-refusal`). The dialogue window (`UI/DialogueFrame.lua`, 380 wide) gains a
FlatButton kind **romance**: the secondary button's surface, a 1-unit `voice-romance` border, the heart of the icon sheet
(14 units, `voice-romance`) 6 units before the centred label, the label in `voice-romance` ink (or `text-1` when the
contrast test fails, as for the voices). The tooltip: *A romantic answer: %s may welcome it, stay cold or refuse.*; with a
beloved: *... Your beloved may hear of it.* The window grows by 28 units per extra button (at most 5 answers).

### 11.2 The romance popup

Mockups: `romance-popup-declaration`, `romance-popup-date`, `romance-popup-aurora`. Built like the narrator box:

- frame `AzerothUnspokenRomance`, 440 wide, height to its content; Panel `bg` at the narrator's opacity (never under the
  floor), radius 12, the ring and the shadow; strata `DIALOG`; movable, its position per character; Esc closes it
  (*Not now*);
- the 3-unit accent bar in `voice-romance` inside the corners;
- the header row: the heart (16 units) at 14, then **Romance** in `voice-romance` and ` · <NPC name>` in `text-2`; at the
  right the tone chip (*Courteous*, *Intimate*, *Explicit*) and the close box;
- the badge *addon ambient dialogue* under the header (the same key as the dialogue, `npc_badge`);
- the scene text in the narrator's size and face, `text-1`; the NPC's words inside it in `voice-npc`;
- the choice bar at the bottom, over a `border-subtle` rule: the choices as buttons, from the right (the first *primary*,
  the others *secondary*, *Not yet* a *text* button); a date's options stack above the bar as full-width *romance*
  buttons, each with a small tier chip at its right;
- after the choice the same box shows the outcome scene and a single *Close* button;
- motion: `Motion.PopIn` 0.15 s on opening, `Motion.FadeOut` 0.1 s on closing; nothing with *Animations: off*;
- closes on combat start (as *Not now*), on leaving the world and on a loading screen; never opens by itself.

### 11.3 Settings: the section *Romance*

Mockup: `romance-settings-gate`. A new section after *Privacy* (README's "Modules" line does not change: it is not a
module):

| Row | Control | Default |
|---|---|---|
| Active romance | Switch; with the attraction axis off it shows *needs the Attraction axis* and is disabled | on |
| Tone | Segmented: Courteous, Intimate, Explicit (18+); Explicit is disabled until the gate is on and the pack installed | Courteous |
| Explicit texts (18+) | button showing *Off*, *Read the warning...*, *Click again to confirm*, *On* (the consent states) | Off |
| 18+ pack | status text: *not installed* / *installed, not loaded* / *loaded* | — |

The confirmation is the client's own dialog (StaticPopup), as for the other consents.

### 11.4 Relationships window and journal

- The NPC detail shows the stage (*Interest*, *Courtship*, *Declared*, *Vowed*, *Ended*) next to the label, a heart when
  it is the beloved, and, for the beloved, the danger button **End the romance** (point 7).
- The journal shows the new memory kinds in the Memories tab (mockup `romance-journal`): the declaration, the first date,
  a jealousy, the break-up, the first refusal; texts with no name, from `Data/<lang>/RelationsUI.lua`.

### 11.5 Commands

A new group of `/au help`, **Romance** (at most nine lines). These commands do not exist yet, so this spec writes them
without the slash (`au romance ...`); R2 builds them with the slash and the docs check then holds them to the code.

| Command | What |
|---|---|
| `au romance` | the beloved, the stage with the targeted NPC, and the due moment (opens it) |
| `au romance on\|off` | Active romance |
| `au romance tone courteous\|intimate\|explicit` | the allowed tier |
| `au romance adult on\|off` | the 18+ consent (two steps to turn on) |
| `au romance end` | break up with the beloved (twice within 30 s) |
| `au romance why` | the parts of the last score (for tuning) |

No key binding.

## 12. The tier-3 pack

### 12.1 The folder

```
AzerothUnspoken_Romance18/
  AzerothUnspoken_Romance18.toc
  Registry.lua        -- NS:RegisterPack({ id = "romance18_base", romance18 = true, registry = { ... } })
  Flirts.lua          -- NS:RegisterDialogues({ pack = "romance18_base", romance18 = true, flirts = { ... } })
  Texts_enUS.lua
  Texts_itIT.lua
  README.md           -- how to write texts for it
  NOTICE.md           -- licence of the texts
```

```
## Interface: 16001
## Title: Azeroth Unspoken - Romance 18+
## Notes: Optional explicit romance texts for Azeroth Unspoken. Silent unless the 18+ setting is on.
## Dependencies: AzerothUnspoken
## LoadOnDemand: 1
## X-AzerothUnspoken-Romance: 18
```

### 12.2 The locks

1. **Loading**: at login and when the gate or the tone changes, if the gate is on and the tone is 3, `Romance:LoadPack()`
   calls `Compat` (`C_AddOns.LoadAddOn` or `LoadAddOn`) for the folder of `pack18.addon`. Nothing loads it otherwise.
2. **Silence**: `NS:RegisterPack` and `NS:RegisterDialogues` keep the `romance18` flag on everything the pack registers;
   the engine drops a `romance18` rule or flirt while the gate is off, in any state.
3. **Content**: a `romance18` pack may hold tier 3 only (every rule `romanceTier = 3`, every flirt `tier = 3`), and only a
   `romance18` pack may hold tier 3.

### 12.3 Packaging

`tools/package_release.py` reads each folder's `.toc`; one with `## X-AzerothUnspoken-Romance:` is left out of
`AzerothUnspoken-<version>.zip` (the zip CurseForge receives) and zipped alone as
`AzerothUnspoken_Romance18-<version>.zip`, attached to the GitHub release only. A test proves the main zip never holds it.
The release workflow and its notes say where the second zip goes; the CurseForge description does not mention it.

### 12.4 Writing for it

`AzerothUnspoken_Romance18/README.md` documents: the rule format (the same as `PACK_FORMAT.md`), the events
(`npcd_romance_*`, `romance_scene`, `romance_inner`), the conditions that must or may appear (`romanceTier = 3` always;
`romanceStage`, `romanceMoment`, `romancePhase`, `romanceDate`, `romanceKind`), the flirt format with `tier = 3`, the
rule that nothing in it may involve a minor or non-consent, and how to test it offline. The samples written by this
project are few and mature, never a graphic sexual description; heavier texts are the author's own pack.

## 13. Saved data

`relationships.version` 9 → **10** (`R.VERSION`):

```lua
npcs[npcID].romance = {
	st = "courtship",     -- interest | courtship | declared | vowed | ended | past
	t = 1764000000,       -- last flirt answered
	rf = 1,               -- refusals in a row
	cd = 1764072000,      -- no flirt before this time
	jl = nil,             -- jealousy since
	dt = 1763900000,      -- last date
	mo = { declaration = 1764259200 },   -- next allowed time of a moment
	endT = nil,           -- the break-up
	mm = 2,               -- momentum
	jp = true,            -- the beloved's jealousy waits for the next meeting
}
relationships.beloved = 12345   -- an npcID, or nil
```

`CleanRecord` keeps `romance` through `R.CleanRomance` (known stages only, times in the past or `cd`/`mo` in the near
future, small counters), and `beloved` only if that NPC exists with stage `declared` or `vowed`. Migration 9 → 10 as in
the ADR (point 10). Account settings: `relations.romanceActive = true`, `relations.romanceTone = 1`, `relations.romanceAdult = false`.

## 14. New engine pieces

- **Conditions** (`Engine/RuleEngine.lua`, relationship conditions for the validator): `romanceStage`, `romanceTier`,
  `romanceOutcome`, `romanceMoment`, `romancePhase`, `romanceDate`, `romanceKind`, `romanceJealous`, `romanceNight`,
  `romanceBeloved` (the NPC is the beloved), `romanceOther` (the character has a beloved who is not this NPC).
- **Events**: `npcd_romance_welcome`, `npcd_romance_cold`, `npcd_romance_refuse`, `npcd_romance_jealous_open` (NPC voice,
  dialogue), `romance_scene` (narrator, popup), `romance_inner` (inner voice: after a flirt, at an inn at night thinking
  of the beloved, after a break-up).
- **Memory kinds**: `relation_declared` (permanent), `relation_date`, `relation_jealous`, `relation_breakup` (permanent),
  `relation_refused`.
- **Module**: `Systems/Romance.lua` (`NS.Romance`), on top of `NS.Relationships`, so `Relationships.lua` (over 3,000
  lines) does not grow further; it owns the gates, the score, the stages, the moments, jealousy, the break-up, the tone
  and the pack loading. The popup is `UI/RomanceFrame.lua`.

## 15. Content to write (R3, Italian and English, tiers 1-2)

Writer subagents on Opus. Proposed amounts per language (variants included):

| What | Amount |
|---|---|
| flirt answers (labels) | about 40, all kinds, tiers 1-2, some per role |
| NPC replies (welcome, cold, refuse) | about 240: 3 outcomes × 2 tiers × the 7 temperaments and a generic set × the roles that matter (innkeeper, guard, merchant, trainer, questgiver), 2-3 variants |
| jealous openings | about 20 |
| popup scenes | about 90: 3 moments × phases × tiers, the date options |
| inner voice | about 60 |
| journal memories and notices | about 30 keys |
| `romance.exclude` | the child NPCs of the curated register and of the capitals, by npcID |

Every text is courteous or modest (tier 2 fades to black), never public, never about a minor.

## 16. Privacy

Romance rules cannot use the speaker `character` (validator error); the narrator never offers a chat proposal for a
romance event; the popup and the dialogue keep the badge *addon ambient dialogue*; journal memories hold tokens, never a
name; nothing is sent, nothing changes in the game.

## 17. Tests (per step)

- **R1**: `Tests/TestNPCRomance.lua` (the gates, ADR 0037 unchanged with Active romance off), new `Tests/TestRomance.lua`
  (score parts and outcomes with a fixed random, each stage and moment, one beloved, jealousy same town and far, break-up,
  tone selection, the gate locks, migration 9 → 10 and cleaning), `TestValidator` (the flirt exception and its errors).
- **R2**: `Tests/TestRomanceFrame.lua` (the popup's states, Esc and combat, the fade), the dialogue with flirts, the
  Settings section, the commands and the help group, the token in `check_mockups`, the mockups and assets rendered.
- **R3**: the content counts in `run_tests.py`, `TestSchema`, `TestValidator`; every romance rule carries `romanceTier`.
- **R4**: the pack registers only with the gate, the packaging test (the main zip has no `X-AzerothUnspoken-Romance`
  folder; the second zip has it), the pack's own validator run.

## 18. Steps

| Step | Files (main) | Done when |
|---|---|---|
| R0 | ADR 0061, this spec and its twin, seven mockups, ROADMAP, CHANGELOG | docs merged |
| R1 | `Systems/Romance.lua`, `Data/Romance.lua`, `Data/Relationships.lua`, `Systems/Relationships.lua` (version 10, cleaning, migration, kin from the target), `Systems/NPCAlive.lua` (flirts, validator), `Engine/RuleEngine.lua`, `Core/Consent.lua` use, `Core/Config.lua`, tests, wiki, G1 | tests pass |
| R2 | `UI/RomanceFrame.lua`, `UI/DialogueFrame.lua`, `UI/SettingsFrame.lua`, `UI/RelationsFrame.lua`, `UI/Commands.lua`, `UI/Theme.lua` (`voice-romance`), locale files, mockups and assets, wiki | tests and mockup checks pass |
| R3 | `Data/RegistryRomance.lua`, `AzerothUnspoken_enUS|itIT/Romance.lua`, `Data/<lang>/RelationsUI.lua`, the flirts, `romance.exclude` | counts and validator pass |
| R4 | `AzerothUnspoken_Romance18/`, `tools/package_release.py`, the release workflow, its README, tests | packaging test passes |

## 19. Mockups (R0)

| Page | Shows |
|---|---|
| `romance-dialogue-flirt` | the dialogue window with three neutral answers and two flirt answers (heart, colour), one hovered with its tooltip |
| `romance-refusal` | the NPC's refusal as the dialogue's line, the neutral answers still there, the inner voice in the narrator box |
| `romance-popup-declaration` | the popup at the declaration: the scene, *Speak your heart* and *Not yet* |
| `romance-popup-date` | the popup at a date at an inn at night: three options with their tier chips and *Not tonight* |
| `romance-popup-aurora` | the popup after a welcomed date, fading to black, in the light theme |
| `romance-settings-gate` | the Settings section *Romance* and the client's confirmation dialog of the 18+ consent |
| `romance-journal` | the journal's Memories tab with a declaration, a jealousy and a break-up |

## 20. Not verified in the game client

Everything; in particular: `UnitSex` and `UnitCreatureType` for the dialogue's `target`; the dialogue window with five
answers; the popup's strata over the narrator and the dialogue; Esc on the popup; the fade to black's timing;
`C_AddOns.LoadAddOn` or `LoadAddOn` for a LoadOnDemand folder in 1.60.1; whether a festival can be known at all.

## 21. What step R1 settled

The engine (`Systems/Romance.lua`, `NS.Romance`) follows this spec, with these details fixed while building it:

- **Settings** are flat keys of the account's `relations`: `romanceActive` (on), `romanceTone` (1-3, checked by
  `Config.rules`), `romanceAdult` (off).
- **The interface decides when anything shows.** Flirt answers are offered only when the dialogue frame says it can draw
  them (`NS.DialogueFrame.ROMANCE = true`, set by R2), moment answers only when the popup exists (`NS.RomanceFrame.Open`).
  Until then the vow of ADR 0037 happens by itself, as before; with Active romance on, the NPC of that vow becomes the
  beloved (stage `vowed`) when the slot is free. With the popup, the vow waits for its moment (`R:RomanceHoldsVow`).
- **A flirt one stage ahead** of the NPC may be offered (never past courtship), and costs `affinity.stage.ahead`.
- **An intimate situation** allows every tier the player allows (2, or 3 with the consent and the pack); otherwise 1.
  The grief that keeps the tone courteous is the dominant emotion *melancholic*; `affinity.mood` is keyed by the emotions
  of `Systems/Emotion.lua`. `tone.mix` has a weight for tier 3 too.
- **Jealousy in the same town** needs both towns known (`rec.town`); an unknown town counts as far. The waiting jealousy
  is `jp`; it is told at the next meeting (`R:RomanceMet`). A stage `none` is never saved; `ended` goes back to `none` at
  the first meeting after `breakup.restDays`.
- **The temperament** scales the romance rows like every other row: a refusal costs 1 point of attraction times the NPC's
  temperament.
- **The popup's scenes** are prose: their rules have the speaker `narrator` and `form = "say"`.
- **The validator**: a flirt's problems are `badDialogue` errors on the key `flirt:<pack>:<id>`; a romance rule without
  `romanceTier` is `romanceTier`, one in the character's voice `romanceVoice`.
- **For R2**: `Romance:Flirts`, `Romance:Answer`, `Romance:Reply`, `Romance:DueMoment`, `Romance:DateOptions`,
  `Romance:Decide`, `Romance:Scene`, `Romance:BreakUp`, `Romance:SetTone`, `Romance:SetAdult`, `Romance:PackState`,
  `Romance:Status` and the last score in `Romance.session.last` (for `au romance why`). The 18+ pack is loaded through
  `NS.Packs:Load`.
