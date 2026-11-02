# 0041. Hostility: lasting grudges, betrayal, witnesses and guest-right

- Status: Accepted (the detection recipe it builds on, ADR 0035, is **not yet confirmed in game**)
- Date: 2026-11-02 (issue #213, step N1 of the NPC relationships milestone; owner decisions of 2026-11-01 and 2026-11-02)

## Context

Until N1 an NPC's relationship could only be built up by meetings, quests and words kept or broken (ADR 0018, 0036,
0038). The owner asked, in the spirit of Skyrim, that raising a hand against an NPC be remembered: a named NPC you
attack hates you, your own faction takes it as betrayal, the other faction's city remembers you as an enemy, and the
innkeeper of your hearth is home, so attacking them is the gravest betrayal (Tolkien's guest-right). The milestone's
ground rules hold: narration only (an NPC never behaves differently in the game), never public chat (D16), the numbers
and lists in data, English and Italian for every string.

Forever gives addons no combat log (ADR 0005). ADR 0035 proposed a recipe from ordinary events and unit functions and
step N0 (#212) added the probes to confirm it. On 2026-11-02 the owner decided not to wait for that run: N1 is built on
the proposed recipe, behind Compat and `issecretvalue`, and what turns out wrong in play becomes a new issue.

## Decision

1. **An attack is a fight the character started on its target** (ADR 0035, items 1 and 3). A fight runs from
   `PLAYER_REGEN_DISABLED` to `PLAYER_REGEN_ENABLED`. The first blow in the `hostility.opening` seconds around its start
   decides: `PLAYER_ENTER_COMBAT` (auto-attack), or `UNIT_SPELLCAST_SENT` at a target that `UnitCanAttack` allows and
   that is not already fighting the character, means the character; a blow on the character (`UNIT_COMBAT` on
   `"player"`) means the other one. Only the target at the start counts, and only when it was engaged (on the
   character's threat list, `UnitThreatSituation`, or hit, `UNIT_COMBAT` on `"target"`). Never counted: players, pets
   (`UnitPlayerControlled`), a target that was already fighting someone else when chosen, a hidden identity, a target
   without an npcID, other units hit by area blows.
2. **The target is read when it is chosen.** `PLAYER_TARGET_CHANGED` takes a snapshot (reaction, faction,
   classification, quest boss, busy in combat) in memory only; the fight uses it when its target is the same GUID, so a
   neutral NPC that turns hostile when struck is still read as it was (ADR 0035, open question 3).
3. **Three stories, by the victim before the fight.** The opposite faction (`UnitFactionGroup` Alliance or Horde, not
   the character's): **foe**. The own faction, or friendly before the fight (reaction 5 or more): **betrayal**. A
   humanoid (`UnitCreatureType`, the id of `romance.humanoid`) otherwise not hostile (reaction `hostility.reaction`, 4,
   or more): **neutral**; hunting a yellow beast is not hostility. A mob hostile before the fight belongs to the nemesis
   (N7, #219) and is ignored here; an unreadable faction, reaction or creature type is unknown, and unknown is silent.
4. **Only named NPCs remember one by one.** Named is ADR 0035's rule, from data: a classification of
   `hostility.named.classes` (elite, rare, rareelite, worldboss), a quest boss, an NPC the addon already knows, or one of
   the curated register. An attacked named NPC (of a betrayal or a neutral story) gets a record if it had none (not a
   meeting: `count` stays), takes `increments.attack` and drops to `hostility.grudge.drop` (Hated), and keeps a grudge
   (`foe`: times, attacks, kills, host). Ordinary NPCs are never recorded, so the 1,000-NPC cap is not filled by wolves;
   a grudge is never compacted away.
5. **The eternal grudge.** With the option `relations.eternalGrudge` (on by default, owner decision) no automatic gain
   (a meeting, a quest, good word heard in the town) lifts a trust, affection, loyalty or respect value above
   `grudge.ceiling`, which is still Hated, for ever. With it off the ceiling holds `grudge.graceDays` (180) after the last
   attack, then every positive gain of those axes is multiplied by `grudge.redeem` (0.25): redemption is possible, rare
   and slow. Familiarity and fear are free: they know you, they hate you. The user's own sliders are never held down.
6. **A kill** is the target's death by the character's or their pet's hand (`PARTY_KILL`), or its death with the
   character alone on it (`UNIT_DIED`, or `UnitIsDead` at the end of the fight, not tapped by others, not in a group);
   someone else's kill rules the fallback out. The fact is settled `hostility.linger` seconds after the fight, so a late
   event still belongs to it. A kill adds `increments.kill` and counts in the grudge. No GUID is ever published on the
   event bus: the sources compare it with the watched fight and publish only what it means.
7. **Witnesses decide whether the town hears.** At the start of the fight the nameplate units shown (`nameplate1`..60,
   read once, not listened to: proximity owns the nameplate events, ADR 0030) that are friendly NPCs, not players or
   pets, and near (`CheckInteractDistance`, index `witnesses.near`) when the client says so, are the witnesses (at most
   `witnesses.max`). A witness the addon already knows takes `attack_witnessed`; unknown ones are not recorded. Only when
   someone saw it does the word reach the town: `hostility.word[kind]` is added to N6's town word within its limit (the
   attack's own rows are in `towns.word.skip`, so nothing spreads twice), and the NPCs there hear it at their next
   meeting (ADR 0040). Friendly nameplates are off by default in the game: none seen means nobody is known to have
   seen, so the town stays silent.
8. **Betrayal leaves a mark on the town.** A witnessed betrayal sets `town.betray`: for `hostility.betrayal.days` (30),
   fading, the trust anyone met there can gain is multiplied by down to `betrayal.trust` (with N4's oath marks; the
   factors multiply).
9. **The opposite faction remembers as a whole.** A foe story records `town.foe = { t, n }` on the town or city where it
   happened (no NPC one by one, no witness needed), for `hostility.foe.days` after the last attack; in the open there is
   no town to remember it.
10. **Guest-right.** The innkeeper who binds the hearth (`CONFIRM_BINDER`) is home: `relationships.home` keeps their
   npcID, their town and their inn (the subzone the client names there). It counts while `GetBindLocation` names the inn
   or the town (or does not answer). Attacking the host, or anyone inside their inn when the inn has a name of its own,
   is the gravest betrayal: `attack_host` on the host, the whole town knows without witnesses (`word.host`), a mark of
   `host.days` (120, trust down to `host.trust`), a permanent `relation_host` journal line (the town, no name).
11. **Coming home.** Entering the hearth's town after `home.awayDays` (5) days or more away gives a private line, warm,
   or cold while the town remembers that the host was struck; the condition `homeReturn` holds `home.minutes`.
12. **The voice.** One private notice per fight (host, kill, attack, witnesses, city), through `Narrator:Notice` like
   ADR 0036, 0038 and 0040: `hostility.perSession` a session, never in combat, silent with the narrator silent, an option
   (`relations.hostilityNotices`). The journal keeps the existing `memorable.enemy` line when a bond turns, and the
   guest-right line. Conditions for the content: `relFoe` (attacked, killed, host; a relationship condition),
   `townBetrayed`, `townFoe`, `homeReturn` (no person needed).
13. **`relationships.version` 7.** The NPC field `foe`, `relationships.home` and the town fields `betray`, `host`,
   `foe`, after N6's version 6. Version 6 data need no migration; an older addon treats version 7 as read-only
   (ADR 0006). Memories that have faded are let go when loaded; resetting the NPCs forgets the hearth.

## Alternatives considered

- **Waiting for the N0 run in game.** The owner's decision of 2026-11-02 was to build now; every reading has an
  "unknown" that keeps the narration silent, and the recipe is isolated in `Systems/Hostility.lua`.
- **Listening to the nameplate events for witnesses.** Rejected: proximity (ADR 0030) adds and removes those sources
  with its option; reading the nameplate units once at the start of a fight costs at most sixty cheap calls.
- **Recording every NPC attacked.** Rejected (ADR 0035): every wolf would carry a grudge and fill the cap.
- **Hostile mobs too.** Left to the nemesis (N7, #219): a mob that was already hostile is not a betrayal.
- **Making a grudge change how NPCs behave.** Out of scope by the ground rules: narration only.

## Consequences

- Positive: a raised hand is remembered by the one struck, by those who saw it and by the town; the hearth gives the
  innkeeper a weight of their own; every number and list is data a pack can tune.
- Negative or costs: the recipe guesses (ADR 0035): a spell cast is weak evidence, a group member's pull may look like
  the character's when nobody else is on the target, `UNIT_COMBAT` is listened to always (it is cheap: the source drops
  every unit but the character and the target at once). Friendly nameplates are off by default, so witnesses are rare
  unless the player turns them on.
- Not verified in the real client: the whole recipe (ADR 0035's open questions), `GetBindLocation`'s text on Forever,
  whether neutral NPCs of the own faction can be attacked at all, and the feel of the notices (`docs/G1_checklist.md`,
  section N1).

## References

- Issue #213; issues #212 (N0), #219 (N7), #218 (N6); ADR 0005, 0006, 0018, 0030, 0035, 0036, 0038, 0040.
- `Systems/Hostility.lua`, `Systems/Relationships.lua` (hooks), `Data/Relationships.lua` (`hostility`,
  `increments.attack...`), `Engine/RuleEngine.lua` (conditions), `UI/RelationsFrame.lua` (options, detail),
  `Data/RegistryRelations.lua` (lines).
- `Tests/TestHostility.lua`.
