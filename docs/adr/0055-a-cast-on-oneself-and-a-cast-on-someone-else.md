# 0055. A cast on oneself and a cast on someone else

- Status: Accepted (offline tests; **nothing of it has run in the client**: the checks are in `docs/G1_checklist.en.md` and `docs/G1_checklist.md`, section C0h; owner decision of 2026-11-02 to finish the development without in-game test gates)
- Date: 2026-11-06 (phase C0h of the content-scale plan, issue #138; found by content wave W06, PR #255; [ADR 0050](0050-need-model-near-duplicates-and-content-waves.md), [ADR 0054](0054-event-rates-per-class-and-the-gestures-a-class-makes-for-itself.md))

## Context

`heal` and `buff` fire on the character's own casts (`Systems/Triggers.lua`, [ADR 0054](0054-event-rates-per-class-and-the-gestures-a-class-makes-for-itself.md)). Some of their lines speak to the one healed or buffed ("Hold still, {target}..."). Until now they relied on `hasTarget = true` and `friendly = true`, and on `not = { spellKind = "bandage" }` since ADR 0054. That says a friend is **targeted**. It does not say the spell **went** to the friend:

- A healing potion or a healthstone fires `heal` too (the name contains "heal"). With a friend targeted, a "to you" line could speak to the friend while the character drinks.
- A healer who heals itself with a friend targeted (a self-cast key, or the friend out of range) heard the same lines.

W06 found eleven such old lines (`heal.05`, `heal.w04.001`, `rel.heal.unknown`, the dwarf, gnome, human and night elf `heal.001`, `cls.priest.heal.001` and the paladin's, druid's and shaman's `heal.003`). W06's own lines excluded the potion and the healthstone by name. A list of item names does not cover a self-cast heal, and every future line would need to repeat it. The next wave (W07) writes the paladin's, the shaman's and the druid's heal pools, about 2,500 lines, so this came first.

## Decision

### 1. The condition `castOnSelf`

`castOnSelf = true` or `false`: the cast that fired the event went to the character itself, or to someone else.

- `Triggers.CastOnSelf(target)` reads the target that `UNIT_SPELLCAST_SENT` gave for the cast, the same way `NS.SELF_CASTS` already did for the bandage. No target (a potion, a healthstone, a spell without a target) or the character's own name is a cast on oneself. Any other name is a cast on someone else. When the character's own name cannot be read, it is unknown.
- `SPELL_CAST` puts it in the event's context (`extra.castOnSelf`). `Triggers:SelfCastEvent` uses the same function, so a bandage keeps its rule: on oneself only.
- The rule engine reads it as a special condition. **Unknown matches neither `true` nor `false`**: only a cast of the character knows it, so a line that asks for it is never said on another event, or when the target was unreadable. A value that cannot be read is "I don't know", never "false" (ADR 0005).
- `/au cast <spell>` sends the test cast where the game would: to a friendly target if there is one, else to oneself.
- The validator knows the condition (`Engine.CONDITIONS.castOnSelf = "bool"`). The column store, the compact area sources (ADR 0048, ADR 0049) and the archive keep conditions as plain data, so nothing else changes there. The codec dictionary still decodes it as it is.

### 2. The old lines

**78 lines** (no text changed) get `castOnSelf = false`:

- 69 heal and buff lines that write `hasTarget = true` and `friendly = true`: the ones W06 listed, the generic and race "to you" buff lines, and W06's own lines to the one healed or buffed;
- the 9 other relation heal lines (`rel.heal.friend`, `rel.heal.comrade`...): the relation is the one with the target, and the line speaks to it.

`castOnSelf = false` replaces the potion and healthstone exclusion as the cleaner rule: it also covers a self-cast heal and any item added later. The older exclusions stay where they are (they do no harm). A heal line said to no one, or to oneself, stays without the condition and is heard either way.

### 3. The need: a heal or a buff has two halves

`need_model.json` gets `cast_on_self`: the share of each class's `heal` and `buff` casts that go to itself (a class not listed: 1, always on itself). Every share is a hypothesis to tune:

| | priest | paladin | druid | shaman | warlock | mage | warrior, rogue, hunter |
|---|---|---|---|---|---|---|---|
| `heal` | 0.5 | 0.6 | 0.6 | 0.6 | 0.5 (Health Funnel goes to the demon) | 1 | 1 (bandage, potion, healthstone) |
| `buff` | 0.5 | 0.6 | 0.6 | 0.7 | 0.5 | 0.6 | 1 (Battle Shout, poisons, aspects) |

`tools/archive/need.py` splits each pool of these events into `<event>:self` and `<event>:other`, by the factor of each class times its share:

- A line with `castOnSelf = true` counts in the `:self` half, one with `castOnSelf = false` in the `:other` half.
- A line without the condition counts in both halves, shared by their firings: it is heard on either kind of cast.
- A pool that is (almost) never cast on someone else keeps the plain event, for example the warrior's heal or the hunter's aspects. Its lines with `castOnSelf = false` never count in it.
- `cli need --wave` prints the condition each half writes. The conditions column of `WAVES.md` shows `castOnSelf`.

The need after C0h (per language): soft gap **25** (was 0), strict gap **11,311** (was 11,191), random gap **256,256** (was 255,815), **89 waves** as before. The lines to someone else no longer count for the casts on oneself, so a few self halves have a small gap again. The first row of `WAVES.md` is still the next wave: the paladin, the shaman and the druid, now with their heal pools split into the two halves (Shaman `heal:self` 134 and `heal:other` 90 strict).

## Consequences

- A potion or a healthstone with a friend targeted never speaks to the friend. Neither does a heal or a buff that the character casts on itself. A heal or a buff cast on the friend still does.
- Writers of heal and buff lines: a line to the one healed or buffed writes `castOnSelf = false` (with `hasTarget` and `friendly` if it names them). A line about one's own wound or one's own preparation writes `castOnSelf = true`, or the gesture (`spellKind = "bandage"`, `spell = "potion"`). A line that fits both writes neither.
- A buff someone else casts **on** the character still fires nothing (ADR 0054). `castOnSelf` is about the character's own casts.
- Untested in the client: what `UNIT_SPELLCAST_SENT` gives as the target for a potion, a healthstone and a self-cast heal on WoW Forever (empty, nil or the character's name all count as on oneself). See the G1 checklist, section C0h.
