# 0060. Active romance: flirt answers, an affinity table, one beloved and three tone tiers

- Status: Accepted (design, step R0; the engine, the interface, the content and the 18+ pack come in R1-R4, and nothing of
  it has been tried in the game client)
- Date: 2026-11-24 (the owner's decisions of the same day; extends [ADR 0037](0037-romance-with-npcs-opposite-sex-and-the-vow.md))

## Context

[ADR 0037](0037-romance-with-npcs-opposite-sex-and-the-vow.md) gave the addon a **passive** romance: with the optional
attraction axis on, attraction grows by itself, slowly, with a humanoid NPC of the opposite sex who is already a Friend,
and at attraction 80, with the label *beloved*, the character makes a private vow once. The player never does anything
romantic: it happens.

On 2026-11-24 the owner asked for a romance the player **does**: choices, an NPC who can say no, a path with stages,
jealousy and a break-up, and a tone that goes from a glance to an intimate night, with an explicit tier behind an age
question. The owner's decisions, fixed and not reopened here:

1. **Where.** Light flirt answers (one or two, in a colour or with an icon of their own) inside the ambient dialogue
   window when the conditions allow, and a **romance popup** of its own for the big moments (declaration, date, vow).
2. **The NPC's answer.** An affinity table in data decides. It combines the character's race and class, its soul and
   attitude, the NPC's temperament ([ADR 0036](0036-npc-temperament-visible-levels-and-the-first-meeting.md)) and the
   relationship's level and axes. The NPC can **welcome**, stay **cold** or **refuse**, and a refusal does not ruin the
   relationship.
3. **The path.** Stages of **interest**, **courtship**, **declaration** and **vow**; the vow at attraction 80 of ADR 0037
   stays the last stage. **One beloved at a time.** Flirting with another NPC after the vow brings **jealousy**. The
   player can **break up**, which leaves a journal memory.
4. **Tone tiers**, varying with the situation (place, hour, an inn at night, a festival, the stage, the mood), partly at
   random and partly chosen by the player: **tier 1, Courteous** (the default: glances, compliments, walks, gifts in
   words, a declaration, a kiss told in narration); **tier 2, Intimate, fade to black** (inn nights told with modesty,
   then the scene fades); **tier 3, Explicit**, only after an **18+ self-confirmation** that is off by default and takes
   two steps to turn on, like *Share with the account*.
5. **Tier 3 is never in the CurseForge zip** (CurseForge bans NSFW content). It is a separate optional pack, offered only
   as an asset of the GitHub release, silent unless the gate is on. This project writes the mechanism and at most a few
   samples, mature and sensual but never a graphic sexual description; the format lets the owner or others add texts.
6. **The fixed rule of ADR 0037 stays:** humanoid NPCs of the opposite sex only, and nothing of this appears without the
   attraction axis on.

The ground rules of the project apply in full: romance is **narration only**; it never reaches public chat or the Chat
Gateway, never changes a real game window, quest or vendor, and the dialogue keeps its honest label *addon ambient
dialogue* ([ADR 0020](0020-simulated-dialogue-and-real-dialogue-npc-alive.md)). Every number is in data.

One rule of the project collides with point 1: GDD §7.3 says the answers of the ambient dialogue are **neutral**
(questions and actions, never a feeling or a decision put in the character's mouth), and the validator of
`Systems/NPCAlive.lua` enforces it; `editable = true` is its only exception. A flirt answer is, by nature, a feeling.

## Decision

The full specification, with the data shapes, the formula, the screens and the texts to write, is
[`docs/specs/romance.md`](../specs/romance.md) (Italian: [`romance.it.md`](../specs/romance.it.md)). This ADR records the
decisions.

### 1. Who and when: the gates

Active romance shows only when **all** of these hold, checked each time:

- the Relationships module is on, the **attraction axis** is on (`relations.attraction`, off by default) and the new
  setting **Active romance** (`relations.romance.active`, on by default: turning the axis on is the opt-in) is on;
- the character's soul does not avoid the topic **romance** (`avoid` already lists it; a soul that avoids it hears none
  of this, as it already hears no romantic line);
- the NPC passes `R:RomanceEligible` (ADR 0037: sex and creature type read this session, opposite sex, humanoid);
- the NPC is **not excluded** in data: `romance.exclude` lists the npcIDs of children and of anyone the content must never
  court, and a curated entry of `Data/NPCs.lua` can say `romance = false`. This list is mandatory content of R3;
- the NPC is at **Acquaintance** or above (`romance.flirt.minLevel`), holds no grudge against the character (ADR 0041),
  and the moment is calm: out of combat, not dead, no invasive screen, not a `/au talk test` dialogue.

An ambient dialogue opened **from the target** today gives no reading of the NPC's sex (ADR 0037, point 2). R1 reads
`UnitSex` and `UnitCreatureType` of the `target` unit when the dialogue starts from it and the target is that NPC, so the
flirt answers can appear there too.

### 2. Flirt answers: the one validated exception to neutral answers

- Flirt answers are **not** written into the five archetype scripts. They are a list of their own, `flirts`, registered
  with `NS:RegisterDialogues({ pack, flirts = { ... } })` (the same call as the scripts, so a pack can add some). Each has
  an `id`, a `label` in every language, a `kind` (glance, compliment, gift, walk, invite, moment), a stage range, a `tier`
  (1 or 2; 3 only in an 18+ pack), and optional `roles` and `when` conditions.
- The neutrality check of the validator **skips the flirts and only them**. Every other check stays: 70 bytes at most,
  no placeholder, valid UTF-8, both languages, a known `kind`, a valid stage range and tier. A script choice that
  declares `romance = true` is an **error**: the exception cannot leak into the ordinary answers.
- **Why the exception is honest.** GDD §7.3 protects the player from words put in the character's mouth *by the addon*.
  A flirt answer is never the only way forward: the neutral answers of the node are always there, unchanged, and the
  flirt is an extra button the player presses on purpose, marked by colour **and** a heart icon **and** a tooltip that
  says what it is. Nobody flirts by accident, and nobody who does not want romance sees one (the gates of point 1).
- **How many.** At most `romance.flirt.max` flirts in a node (2; 1 before courtship), shown **after** the neutral
  answers, numbered after them (4 and 5; the window grows by 28 units per button). At most one flirt per dialogue: after
  the NPC's reply the flirts leave the node and the conversation goes on with its neutral answers. After a flirt the
  same NPC offers none for `romance.flirt.hours` hours (6).
- **A moment answer.** When a big moment is due (point 4), one flirt slot holds a moment answer instead (for example
  *Ask for a word alone*). Choosing it closes the dialogue and opens the romance popup. **The popup never opens by
  itself**: it always follows a click, or `au romance` with the NPC targeted.

### 3. The NPC's answer: the affinity table

A flirt is answered by a score, every number of it in `Data/Romance.lua` (`romance.affinity`):

`score = base + race + class + soul + relation + stage + situation + mood + momentum + random`

- **race**: the character's race against the NPC's, when the NPC's is known (the curated register, or what the client
  gave): `same` for the same race, then named pairs; an unknown race gives 0;
- **class**: the character's class against the NPC's role (a guard and a warrior, a trainer of the same class);
- **soul**: the character's trait bands (`low`, `mid`, `high` of `Systems/Personality.lua`) against the NPC's temperament
  (a cheerful NPC likes optimism, a gruff one likes irony); the neutral profile and an NPC with no temperament give 0;
- **relation**: the disposition band (Acquaintance below zero, Deep bond well above) and the axes, weighted (attraction,
  affection, trust up; fear down);
- **stage**: a flirt of a later stage than the NPC has reached costs (`ahead`); a tier-2 flirt outside its situation
  costs more;
- **situation**: an inn at night, a festival, a city, the wild; **mood**: the character's emotional state (ADR 0031);
- **momentum**: each welcome in a row adds a little, up to a cap; **random**: uniform in ±`random`.

`score >= welcome` (60): **welcome**; `score >= cold` (40): **cold**; below: **refuse**. With the defaults a Friend with
no special affinity is welcomed about half the time, a Close friend most of the time, an Acquaintance rarely.

- **Welcome**: attraction (and a little affection) through a new increment row `romance_flirt`, with the diminishing
  returns, the daily cap and the temperament of every other row; the NPC answers warmly.
- **Cold**: nothing changes; the NPC answers politely, without warmth.
- **Refuse**: attraction loses 1 (`romance_refused`), **no other axis, no label and no level change** (attraction does not
  count in the disposition); the NPC offers no flirt for `refuse.hours` (20). Three refusals in a row (`refuse.streak`)
  and the NPC asks for room: no flirt for `refuse.restDays` (5). This is what "a refusal does not ruin the relationship"
  means in numbers.

The NPC's reply is a line of the phrase database (events `npcd_romance_welcome`, `npcd_romance_cold`,
`npcd_romance_refuse`, NPC voice), so it can depend on the temperament, the role, the stage, the tier and the kind of
flirt.

### 4. The path: stages, kept per NPC

| Stage | How it is reached | What it opens |
|---|---|---|
| none | eligible, Acquaintance or above | courteous flirts of the first kinds |
| interest | attraction 5 or more | more kinds of flirt |
| courtship | attraction 25 or more and Friend or above | a second flirt slot; **dates** (popup) |
| declared | a **declaration** the NPC welcomes, offered at attraction 50 or more, Friend or above, no other beloved | this NPC is **the beloved**; tier-2 dates where the situation allows |
| vowed | the **vow**, offered at attraction 80 and label *beloved* (ADR 0037), only to the beloved | the vow lines (`relVowed`); jealousy |
| ended | the player broke up | no flirt for `breakup.restDays` (30), then back to none |

- The stage is **stored**, not derived each time: attraction can fall (jealousy, a refusal) without undoing a
  declaration. Only a break-up moves a stage back.
- **One beloved at a time.** The slot is taken at the declaration and freed only by a break-up. While it is taken, no
  other NPC is offered a declaration or a vow; flirts with others still appear (that is how jealousy happens), and their
  tooltip says that the beloved may hear of it.
- **The vow with active romance.** With *Active romance* on, the vow of ADR 0037 is **offered** as a popup moment to the
  beloved instead of happening by itself, and making it writes the same permanent memory and the same private line. With
  *Active romance* off, ADR 0037 is unchanged (the vow happens by itself, once per NPC).
- **The moments of the popup**: **declaration** (once; after a cold answer it can be asked again after `moment.coldDays`,
  3, after a refusal after `moment.refuseDays`, 7), **date** (from courtship, at most once a day with the same NPC, its
  options chosen by the situation and the allowed tier), **vow** (once).

### 5. Jealousy and the break-up

- **Jealousy** (from the stage `jealousy.from`, `vowed` by the owner's decision; data allows `declared`): a flirt with
  another NPC that the NPC answers (welcome or cold) reaches the beloved for sure when both NPCs share a town
  (`rec.town`, ADR 0040), else with `jealousy.farChance` (0.35). At the next meeting the beloved loses attraction and some
  trust (`romance_jealous`, once per jealousy), opens the dialogue with a jealous line (condition `romanceJealous`, for
  `jealousy.days`, 7), and the journal keeps a line. A welcomed date clears it early. **The NPC never breaks up by
  itself** (a default of this ADR: only the player ends a romance).
- **Break-up**: only the player, from the beloved's detail in the Relationships window (a danger button and a Dialog
  that says what happens) or `au romance end` (the same command twice within 30 seconds). The stage becomes *ended*, the
  slot is free, attraction drops to at most `breakup.attraction` (15) and affection loses `breakup.affection` (5);
  trust, respect and loyalty do not change. A **permanent journal memory** (`relation_breakup`, tokens only, no name, like
  every relationship memory) and one private line of the inner voice. The vow memory, if any, stays: the journal does not
  rewrite the past.

### 6. Tone tiers

- **The allowed tier** is a setting, `relations.romance.tone`: 1 Courteous (default), 2 Intimate, 3 Explicit. 3 can be
  chosen only with the 18+ gate on (point 7).
- **The situation's tier** is 2 when the stage and the moment allow intimacy (declared or vowed, at an inn or rested, at
  night, or at a festival when the world knows one) and the character's mood is not grief; otherwise 1.
- **What is offered**: tiers from 1 to `min(allowed, situation)`. **Partly at random**: lines of the two tiers mix by
  `tone.mix`; **partly chosen**: the date options in the popup carry a chip with their tier, and the player picks.
- **Tier 2 fades to black**: the scene is told with modesty and its last line closes it (the text fades out with
  `NS.Motion`, or at once with *Animations: off*).
- Every rule of romance content carries its tier (`romanceTier`), and the engine never picks a rule above the allowed
  tier, whatever pack it comes from.

### 7. The 18+ gate

- A **consent** of `Core/Consent.lua`, `romance_adult`, the fifth after automatic chat, the shared list, other players'
  Total RP 3 profiles and proximity: the first step shows the warning in a confirmation dialog, the second counts only
  after `Consent.MIN_DELAY` and within `Consent.WINDOW`, and a double-click never confirms. Turning it off is one click.
- The warning says: turn this on only if you are 18 or older; the explicit texts come only from a separate optional pack
  that is not on CurseForge; without that pack nothing changes.
- It is kept in the **account** (`relations.romance.adult`), since age belongs to the player, not to a character.
- Turning it off sets the allowed tier back to 2 at most at once; no `/reload` is needed.

### 8. Tier 3: a separate pack, `AzerothUnspoken_Romance18`

- An optional addon folder with its own `.toc`: `## Dependencies: AzerothUnspoken`, `## LoadOnDemand: 1` and
  `## X-AzerothUnspoken-Romance: 18`. It registers through the existing pack API (`NS:RegisterPack`,
  `NS:RegisterDialogues`) with `romance18 = true`.
- **Two locks.** The addon **loads** the pack (through Compat, `C_AddOns.LoadAddOn` or `LoadAddOn`) only when the gate is
  on and the allowed tier is 3; and the engine **ignores** every rule and flirt of a `romance18` pack while the gate is
  off, even if the pack was loaded by hand. A `romance18` pack may contain tier-3 content only, and only a `romance18`
  pack may contain tier 3: the validator checks both.
- **Packaging.** `tools/package_release.py` leaves every folder whose `.toc` says `X-AzerothUnspoken-Romance` out of the
  main zip (the one CurseForge receives) and builds it as a zip of its own, attached to the GitHub release only. The
  CurseForge description and the addon's own texts never mention tier 3 beyond the Settings row and its warning.
- **Its texts**: a few samples, mature and sensual, never a graphic sexual description. Its format is documented for the
  owner and others (the same rule format, the conditions `romanceTier = 3`, `romanceStage`, `romanceMoment`), with its
  own licence note.

### 9. The interface (R2)

- **Flirt answers** in the dialogue window: a FlatButton of a new kind *romance*, the addon's own **heart** icon (already
  in the icon sheet) at its left, its label in the new voice token, a tooltip.
- **The romance popup**, `AzerothUnspokenRomance`: built like the narrator box and the Bard's box (a translucent Panel,
  a 3-unit accent bar, the label row with the heart before *Romance* and the NPC's name, the text, a choice bar at the
  bottom), with the badge *addon ambient dialogue*, a tone chip, and 2-3 choice buttons (one primary). Esc or the close
  box means *Not now*, with no cost. It closes when combat starts, never opens by itself, never takes the mouse from the
  game when closed, and keeps its place per character.
- **A voice token of its own**, `voice-romance`: a coral in Nebula (`#FF7F6E`) and a brick red in Aurora (`#A3301F`),
  apart from the Bard's pink in hue and from the NPC's green in lightness; the contrast test of the other voices applies.
  The colour is never the only sign: the heart and the written label carry it too.
- **Settings**, a section **Romance**: *Active romance* (switch), *Tone* (Courteous, Intimate, Explicit 18+; Explicit is
  disabled until the gate is on and the pack is installed), *Explicit texts 18+* (the consent button, *Off* by default),
  and a status line for the pack (*not installed*, *installed*, *loaded*).
- **Commands** (written here without the slash, since they do not exist until R2): `au romance` (the stage with the targeted NPC, the beloved, and the due moment, which it opens),
  `au romance end`, `au romance tone courteous|intimate|explicit`, `au romance adult on|off` (the consent), and
  `au romance on|off`. **No key binding**: every moment starts from a dialogue answer or the command.

### 10. Saved data

- `relationships.version` goes from 9 to **10**: each NPC record may hold `romance = { st, t, rf, cd, jl, dt, mo, endT }`
  (stage, last flirt, refusals in a row, cooldown, jealousy, last date, the next time of each moment, the end) and the
  data holds `beloved` (an npcID). `CleanRecord` drops unknown fields, so an older addon must see these data read-only:
  that is what the version bump does (ADR 0006).
- **Migration**: every NPC with a vow already made (`rec.noted.vow`) becomes *vowed*; the one with the highest attraction
  (then the most recent meeting) becomes the beloved, and any other keeps its vow in the journal with the stage `past`
  (no jealousy, no memory written).
- New memory kinds: `relation_declared` (permanent), `relation_date` (the first date only), `relation_jealous`,
  `relation_breakup` (permanent), `relation_refused` (the first refusal by an NPC only). Tokens only, never a name.

### 11. What stays private

Nothing of romance goes to the Chat Gateway: romance rules may not use the speaker *character* (the one voice the
narrator can propose to chat), the narrator never shows a proposal bar for them, and the flirt labels are never sent
anywhere. The popup and the dialogue say *addon ambient dialogue*. Nothing changes in the game: the NPC behaves as before.

### Smaller defaults picked in this ADR

Each is a number or a word in data or in a setting, and can change without a new decision:

- flirts from **Acquaintance**; at most **2** per node (1 before courtship); **1** per dialogue; **6 h** before the same NPC
  offers flirts again; the window grows to at most **5** answers;
- affinity `base` 50, `random` ±12, `welcome` 60, `cold` 40; refusal −1 attraction, **20 h** of quiet, **3** in a row
  give **5 days** of room;
- stage thresholds **5 / 25 / 50 / 80** of attraction; Friend for courtship and declaration;
- a declaration asked again after **3 days** (cold) or **7 days** (refused); a date at most **once a day** per NPC;
- jealousy from the **vow**, sure in the same town, **0.35** elsewhere, lasting **7 days**; the NPC never leaves by itself;
- break-up: attraction to **15** at most, affection −**5**, **30 days** before courting again; the vow memory stays;
- *Active romance* **on** by default (the attraction axis, off by default, is the opt-in); tone **Courteous**; the gate
  **off** and in the account;
- the popup has **no key binding** and never opens by itself; Esc means *Not now*;
- children and other NPCs the content must never court are excluded **by list** in data (`romance.exclude`, R3 fills it);
- `voice-romance` coral `#FF7F6E` (Nebula) and brick `#A3301F` (Aurora); the heart of the icon sheet, no new icon.

## Alternatives considered

- **Flirt answers written into each archetype script.** Five scripts, every pack's scripts too, and the exception to
  neutral answers scattered through all of them. One list of flirts, injected by the engine after the neutral answers,
  keeps the exception in one place and works for any script a pack adds.
- **Mark a flirt only by colour.** Rejected: a colour is never the only sign in this addon (ADR 0058); the heart and the
  tooltip carry it too.
- **Open the popup by itself when a moment is due.** It would interrupt play and the player did not ask; a moment
  answer in the dialogue or the command keeps it a choice (ADR 0020: an explicit moment).
- **Derive the stage from attraction each time.** Simpler, but a jealousy or a refusal could then undo a declaration;
  stored stages move back only through a break-up.
- **Let the NPC break up after repeated jealousy.** Possible later, by data; the owner asked only for the player's
  break-up, and an NPC that leaves on its own would be the harshest effect in the addon.
- **Ship tier 3 inside the main addon, hidden behind the gate.** CurseForge would still receive the texts; a separate
  pack outside the CurseForge zip is the only way to honour its rules.
- **Keep the 18+ gate per character.** Age belongs to the player; one answer for the account.
- **Same-sex or non-humanoid romance as an option.** Excluded by the owner's fixed rule (ADR 0037); not reopened.

## Consequences

- Positive: romance becomes something the player does, with a real chance of a no; the passive path of ADR 0037 still
  works for whoever keeps *Active romance* off; the exception to neutral answers is narrow, validated and visible; tier 3
  can exist without ever touching CurseForge.
- Negative or costs: a new data file, a new frame and token, a Settings section, a consent, a saved-data version, five
  memory kinds, new conditions and events, a separate pack and its packaging, and a large amount of content in two
  languages (R3). Many numbers to tune in game.
- Not verified in the real client (to be listed in `docs/G1_checklist.md` by each step): whether `UnitSex` and
  `UnitCreatureType` answer for the `target` of a dialogue; how the popup and the longer dialogue window look; whether
  `C_AddOns.LoadAddOn` or `LoadAddOn` loads a LoadOnDemand pack in 1.60.1; the timing of the fade to black.

## References

- Spec: [`docs/specs/romance.md`](../specs/romance.md); mockups: `docs/design/mockups/romance-*.html` and their PNGs.
- [ADR 0037](0037-romance-with-npcs-opposite-sex-and-the-vow.md) (passive romance, the vow), [ADR 0036](0036-npc-temperament-visible-levels-and-the-first-meeting.md)
  (temperament), [ADR 0020](0020-simulated-dialogue-and-real-dialogue-npc-alive.md) (ambient dialogue),
  [ADR 0031](0031-intensity-traits-emotional-state-and-the-tone-of-a-return.md) (soul traits and mood),
  [ADR 0040](0040-local-reputation-word-titles-and-rivals.md) (towns), [ADR 0041](0041-hostility-grudges-betrayal-witnesses-and-guest-right.md)
  (grudges), [ADR 0006](0006-savedvariables-and-schema-versions.md) (versions), [ADR 0025](0025-language-and-regional-packs-loaded-on-demand.md)
  (packs loaded on demand), [ADR 0058](0058-nebula-ecosystem-look-and-credits.md) (look), [ADR 0003](0003-private-narrator-and-chat-gateway.md)
  (private narrator).
- Code to build on: `Systems/Relationships.lua` (`R:RomanceEligible`, `R:Romance`, `R:Vow`), `Data/Relationships.lua`
  (`romance`), `Systems/NPCAlive.lua` (the validator), `Core/Consent.lua`, `Engine/RuleEngine.lua` (`relVowed`),
  `tools/package_release.py`.
