# 0035. Attacks, kills and deaths without the combat log: threat, blows and two new unit events

- Status: proposed (**to confirm in game**: the owner runs section N0 of `docs/G1_checklist.md`, then this ADR is accepted, changed or rejected). On 2026-11-02 the owner decided not to wait for that run: N1 ([ADR 0041](0041-hostility-grudges-betrayal-witnesses-and-guest-right.md), #213) is built on this recipe as proposed, **unconfirmed in game**; so is N7 ([ADR 0045](0045-nemesis-arcs-told-for-many-npcs-killed-by-and-the-song-of-a-fall.md), #219), which uses item 5 (killed by) and item 4 (the fall of a nemesis); what the run or play shows wrong becomes a new issue.
- Date: 2026-11-01

## Context

The NPC relationships milestone (milestone 9) needs three facts about a fight and one about the people around it:

- **attack**: the player struck an NPC first (hostility and betrayal, N1);
- **kill**: an NPC the player fought died, and by whose hand (N1, the nemesis N7, the companion pet N8);
- **killed by**: the player died, and which NPC was attacking at that moment (the nemesis, N7);
- **witnesses**: which NPCs were near when the player attacked (N1);

and a rule for **who counts as named**, since an ordinary wolf should not carry a grudge.

Forever gives addons no combat log: `CombatLogGetCurrentEventInfo` is not in the API dump (build 70170), and the internal and secure variants (`C_CombatLogInternal`, `C_CombatLogSecure`) are not for addons ([ADR 0005](0005-compat-secret-values-and-defensive-events.md), item 9). The event `COMBAT_LOG_EVENT_UNFILTERED` is still listed, with no way to read it. The dump does list what this ADR builds on: `UnitThreatSituation`, `UNIT_THREAT_LIST_UPDATE`, `UNIT_COMBAT`, `PLAYER_ENTER_COMBAT`, `PLAYER_REGEN_DISABLED/ENABLED`, `PLAYER_DEAD`, the nameplate events, `UnitIsDead`, `UnitIsTapDenied`, `UnitClassification`, `UnitIsQuestBoss`, `UnitCreatureType`, `UnitReaction`, `UnitFactionGroup`, `CheckInteractDistance`, and two events of the newer client that the issue did not name: **`UNIT_DIED(unitGUID)`** and **`PARTY_KILL(attackerGUID, targetGUID)`**. GUIDs and identities can be secret values; nothing may be decided on one.

None of this has run on Forever. Step N0 (#212) added the probes (`Core/ProbeCombat.lua`, part of `/au probe`) that report, for the last fights and deaths, which signals came, in which order and with which false positives. The recipe below is what the code of N1, N7 and N8 will follow **if the owner's run confirms it**.

## Decision (proposed)

All reads go through Compat (`SafeCall`, `Query`, `Readable`); a hidden identity (`Compat:IsUnitIdentitySecret`) or a secret GUID means "unknown", never "no". An unknown fact gives no gain and no loss: the narration stays silent rather than guess.

1. **A fight** runs from `PLAYER_REGEN_DISABLED` to `PLAYER_REGEN_ENABLED`, and lingers 3 seconds after it so that a late `PLAYER_DEAD`, `UNIT_DIED` or `PARTY_KILL` still belongs to it.
2. **The engaged units** of a fight are the target at its start when `UnitCanAttack("player", "target")`, plus every unit for which `UnitThreatSituation("player", unit)` gives a number when `UNIT_THREAT_LIST_UPDATE` fires for it (target and nameplates). They are kept by GUID (at most 16), only when the GUID is readable, and never saved.
3. **Who struck first.** In the 3 seconds around the start, the first blow decides: `PLAYER_ENTER_COMBAT` (auto-attack) or `UNIT_SPELLCAST_SENT` for the player means **the player**; `UNIT_COMBAT` on `"player"` with a blow (anything but `HEAL` and `ENERGIZE`) means **the enemy**; `UNIT_COMBAT` on the target alone is "the target was hit", which is the player only when nobody else is fighting it. Only "the player" counts as an attack for N1. A spell cast is weak evidence (a buff counts too), so it counts only when the target was attackable and not already fighting the player (`UnitIsUnit("targettarget", "player")` false).
4. **A kill** is an engaged unit's death: `UNIT_DIED` with an engaged GUID, or `PARTY_KILL` with an engaged victim. The killer is the player when `PARTY_KILL`'s attacker is the player's GUID, the pet when it is `UnitGUID("pet")` (the pet's kill counts for the player in N1 and for the pet in N8), someone else otherwise. **Fallback** when those events are missing or their GUIDs are hidden: at the end of the fight the target is the same unit as at the start, `UnitIsDead("target")` is true and `UnitIsTapDenied("target")` is false; it counts as the player's kill only if the player was the only one engaged with it.
5. **Killed by.** On `PLAYER_DEAD`, the killer is the last unit for which the player's threat situation was 2 or 3 (the player held its aggro, so it was attacking the player) in the last 10 seconds, **when the fight had only one such unit**. With two or more it is the target, if the target was one of them; otherwise unknown. A death with no fight (falling, drowning) has no killer.
6. **Witnesses** are read at the moment of the attack, from the nameplates the client shows (`NAME_PLATE_UNIT_ADDED` and `REMOVED`): a unit that is not a player, not controlled by a player, friendly (`UnitReaction(unit, "player") >= 5`), with a readable npcID, and near (`CheckInteractDistance(unit, 4)`, about 28 yards) when that answers. Friendly nameplates are off by default in the game, so witnesses are a bonus: none seen means nobody is known to have seen, never "nobody saw" for the narration.
7. **Named.** An NPC with a readable npcID is named when `UnitClassification` is `elite`, `rare`, `rareelite` or `worldboss`, or `UnitIsQuestBoss` is true, or it already has a relationship record (`Relationships:Get("npc", npcID)`), or it is in the curated register (`Data/NPCs.lua`). `UnitCreatureType` (id 7, humanoid) and the faction (`UnitReaction`, `UnitFactionGroup`) do not make an NPC named; they choose the kind of story (a betrayed guard, a rival of the other faction, a beast). The lists live in `Data/Relationships.lua` with the other relationship data, not in the engine.

## Open questions for the run in game

- Do `UNIT_DIED` and `PARTY_KILL` fire for addons on Forever, and are their GUIDs readable or secret? If they are missing, item 4 uses its fallback only.
- Does `UNIT_COMBAT` come for the target and the nameplates, or only for the player? Is `PLAYER_ENTER_COMBAT` reliable for auto-attack?
- Does the reaction of a neutral NPC turn hostile before `PLAYER_REGEN_DISABLED`? The probe reads it at the start of the fight; if it has already turned, N1 must read it on `PLAYER_TARGET_CHANGED` instead.
- Do `PLAYER_REGEN_ENABLED` and `PLAYER_DEAD` come in this order on a death, and how far apart?
- Is `CheckInteractDistance` restricted in combat on Forever?
- Are the threat functions hidden in some places (instances, PvP), and does `C_CombatLog.IsCombatLogRestricted` say anything useful?

## Alternatives considered

- **Reading the combat log.** Not possible on Forever (see above).
- **Health watching** (`UNIT_HEALTH` on the target down to 0). It cannot tell who struck, health can be a secret value, and `UnitIsDead` says the same thing more simply.
- **Experience and loot** (`PLAYER_XP_UPDATE`, `LOOT_OPENED`, the XP chat message) as proof of a kill. They depend on the level and the tap, read chat text (which the addon avoids), and say nothing about which NPC died.
- **Counting every NPC as named.** Every wolf would become a nemesis and every guard a grudge: the relationships would be noise.

## Consequences

- Positive: N1, N7 and N8 share one recipe and one set of reads; every fact has an "unknown" that keeps the narration silent rather than wrong; nothing changes how an NPC behaves in game (narration only).
- Negative or costs: the recipe guesses. False positives the probe is meant to measure: area blows on many units (several engaged, item 2), another player's or a group member's blows on the same target (item 3, "the target was hit"), a pet's kill (item 4), a guard who walks by without seeing (item 6). Until the owner's run, this ADR is a proposal; N1's code (`Systems/Hostility.lua`) follows it anyway by the owner's decision of 2026-11-02, reading the witnesses from the nameplate units once at the start of a fight instead of listening to the nameplate events (ADR 0041).

## References

- Issue #212 (N0); issues #213 (N1), #219 (N7), #220 (N8); milestone 9.
- `AzerothUnspoken/Core/ProbeCombat.lua`, `AzerothUnspoken/Core/Probe.lua`, `Tests/TestProbeCombat.lua`; `docs/G1_checklist.md` and `docs/G1_checklist.en.md`, section N0.
- [ADR 0005](0005-compat-secret-values-and-defensive-events.md) (Compat and secret values), [ADR 0010](0010-forever-api-dump-as-reference.md) (the API dump), [ADR 0018](0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md) (relationships by npcID).
