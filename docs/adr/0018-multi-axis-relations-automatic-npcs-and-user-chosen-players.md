# 0018. Relationships: independent axes, labels as data, automatic NPCs, players chosen by the user

- Status: Accepted
- Date: 2026-10-29 (step S6b; GDD §7.4, §10, §14; ADR 0004, 0005, 0014, 0015, 0016, 0017)

## Context

The narrator must write differently depending on the relationship with the person the character is interacting with: formal with a stranger, warm with a friend, tense with a respected rival. A single "friend ↔ enemy" bar does not allow this: a respected rival has *little trust* and *a lot of respect*; a comrade in arms may not be "fond"; an enemy may or may not be feared. We need several independent dimensions and a way of naming the combinations that is not written into the engine.

NPCs are many and reliably identifiable (`npcID` from the GUID): an automatic calculation is possible and useful. Players are not: they are people, they have names the user did not choose to record, and the project never saves chat text or other players' data without an explicit choice (ADR 0004, 0017; GDD §14). S6b, S6c (interlocutor profile) and S8 (NPC Alive) reuse this work.

## Decision

1. **Seven independent axes**, as scales of the S5 trait model (`Traits.Define{ kind = "scale", scope = "rel" }`): `familiarity` 0…100, `trust`, `respect`, `affection`, `loyalty` −100…100, `fear` 0…100 and `attraction` 0…100, **optional and off by default** (`relations.attraction`). An axis that is off has no value, does not enter the context, and the rules that mention it do not fire. Each axis has `low`/`mid`/`high` bands for the line tags. Missing values count as 0 and are not saved.
2. **Labels, disposition, register and increments are data**, in `Data/Relationships.lua` (IT and EN), not in the engine: labels with priorities and conditions on the axes (stranger, acquaintance, indifferent, friend, comrade in arms, respected rival, enemy, disliked, distrusted, feared one, beloved), the **overall disposition** −100…100 (weighted average of affection, trust, respect and loyalty, plus a warmth term for familiarity; nine bands from *Hated* to *Deep bond*), the register by familiarity band, and the increment tables. `NS:RegisterRelationData` lets a pack add labels or axes. The derived label is the first rule, by priority, that holds for all the axes it mentions.
3. **Hand-chosen label**: it takes precedence over the derived one. If it is the id (or the localized name) of a label, the rules use that label; if it is free text (at most 24 bytes) it is shown in place of the name and the rules use the derived label.
4. **Automatic NPCs**: the identity is the `npcID` taken from `Creature-…-npcID-…`; if the GUID is missing, secret, belongs to something else, or the unit's identity is secret (`C_Secrets`), **nothing is recorded**. Sources (events verified on the Forever dump, registered with `Compat:RegisterEvent` and normalized on the bus): dialogue (`GOSSIP_SHOW`, `QUEST_GREETING`), quests accepted and turned in (the NPC of the last dialogue, `QUEST_DETAIL`/`QUEST_COMPLETE`/`QUEST_PROGRESS` then `QUEST_ACCEPTED`/`QUEST_TURNED_IN`), merchant (`MERCHANT_SHOW`, plus `hooksecurefunc` on `BuyMerchantItem`, `RepairAllItems` and `C_Container.UseContainerItem` for purchases, repairs and sales), flight master, trainer, innkeeper. Each source has a row of increments (`gain`, `decay`, `cap`): **diminishing returns** within the day (`gain × decay^n`), a **daily cap** per axis and source, softening near the maximum. **Familiarity decays slowly** (after 14 days without meetings, half a point per day, never below 3) and only for NPCs: the other axes do not, and players do not decay.
5. **Players: only the user decides.** The system **proposes** (`R:Propose`): group members, whoever opens a trade, the target that has a Total RP 3 profile (only presence in the registry: no data is read), whoever received a private reply (name only). Proposals live only in the session; a player enters the list only with `R:AddPlayer(name, "user")` (click on `+`, a typed name, a command). `AddPlayer` rejects any other source, except `"auto"` when the explicit option **"register automatically"** (off by default) is on. The cap is 300 players and 1,000 NPCs (the least familiar and oldest NPCs are lost first, never those with a label, note or tag from the user).
6. **Privacy**: no chat or whisper content is read or saved. The only chat source is `CHAT_MSG_WHISPER_INFORM`, of which the normalizer reads **only the recipient's name** (the text never enters the envelope: a test proves it). Nothing goes over the network; the Social module (S10) will not share anything without explicit consent. Notes and tags are user text, never used in the rules. The journal memories for an important bond (`LivingMemory.Record{ kind = "relation" }`) contain only the type and label tokens, never names.
7. **Narrator**:
   - `NS:BuildContext` adds `ctx.relation` (label), `ctx.relationLabel`, `ctx.disposition`, `ctx.dispositionValue`, `ctx.rel` (axes), `ctx.relationKind`, `ctx.isKnown`, `ctx.relTraits` and `ctx.groupRelations` for the person of the interaction: the NPC being talked to (open dialogue), the target, or `extra.relationSubject`;
   - conditions in the RuleEngine: `relation`, `disposition`, `relationKind`, `isKnown`, `<axis>Min`/`<axis>Max` for each axis, `familiarityMin` and `withRelation` (a group companion with that label, for "fighting side by side"); without a known person every relationship condition is false (except `isKnown = false`); the validator knows them;
   - placeholder `{relation}`;
   - **factor `R`** (`Engine:SetWeightHook("R", "relations")`): tags with `rel.` scope (`rel.relation:friend`, `rel.trust:high`, `rel.req:relation:rival`, `rel.not:relation:enemy`) use the S5 trait grammar: soft affinity (×1.6 / ×0.6), hard requirement and prohibition (0 excludes); without a person, a line that *asserts* a relationship (`req:`) is excluded and the others stay neutral;
   - **register from formal to intimate** (`StyleResolver:SetModifier "relations"`): familiarity and disposition bands prefer different registers (data);
   - event `relation_npc` (meeting a known NPC, "memory recall" priority, `relations` module) with a guard in the engine and a required relationship condition in the validator (`relationWithoutRelation`).
8. **Data and schema**: `AzerothUnspokenCharacterDB.relationships = { version, npcs = { [npcID] }, players = { ["Name-Realm"] } }`, with its own version; SavedVariables **schema 5** (character migration 5); settings `relations = { npcAuto, attraction, autoRegisterPlayers, proposePlayers }` and module `relations`. `Sanitize` brings the axes back within limits, shortens notes, tags and labels without breaking UTF-8, and discards malformed entries; data from a newer version becomes read-only.
9. **Interface**: `UI/RelationsFrame.lua` (`/au relationships`): sortable and filterable table (NPCs/players, label, name), proposed people, detail view with sliders (`Widgets.Slider`, drawn with textures), label, note and tags, deletion with confirmation, options, text export in the journal's copyable window; two tabs in the journal (*Relationships*, *People met*).

## Later changes

- [ADR 0026](0026-player-records-user-choices-apart-from-observations.md) (#107-#110) splits a player record into `user` (what the user chose) and `seen` (what the addon observed), adds feelings in words, the `ally` label, the `relation_player` event and the conditions `relDaysSince`, `relMetHere` and `relShared`. Points 3, 5, 7 and 8 above stand, with the player fields (`label`, `note`, `tags`, `first`/`last`/`count`, the axes) now inside those two blocks and `relationships.version` at 2.
- [ADR 0036](0036-npc-temperament-visible-levels-and-the-first-meeting.md) (#214) gives each NPC a temperament (a multiplier on the gains, the daily caps and the decay, from data), keeps the circumstances of the first meeting, and makes the disposition bands visible levels with a rare private notice. `relationships.version` is 3.

## Alternatives considered

- **A single affinity bar.** It does not distinguish the respected rival from the enemy, nor the trusted friend from the likeable acquaintance; and it gives the content nothing finer than the three bands friend/neutral/enemy.
- **Labels in the code.** Every new label or translation would require touching the engine; as data they can be tuned and a pack can add its own.
- **Automatically registering the players one meets.** This is the option the GDD advises against: nobody was chosen, and a list of people would build up without their consent, or the user's. We propose and nothing more; automation is an explicit option.
- **Reading other people's Total RP 3 profiles in order to propose them.** Only presence in the registry is used (`isUnitIDKnown`): no profile data is read, and reading it would require separate consent (S6c).
- **Decay of all axes.** Grudge and trust do not fade with time; only "how well we know each other" dims.
- **Recognizing sales with an event.** There is no sale event; the use of a bag item while the merchant is open is observed, cautiously.

*Step 0 update ([ADR 0023](0023-english-first-addon-and-english-command-names.md)):* the commands named here are written with their English names, `/au relationships`; the Italian names this ADR first used were removed, and an Italian word now only gets a hint to the English command.

## Consequences

- Positive: the narrator can change tone with the relationship; authors write by label, disposition or individual axes; S6c and S8 reuse the NPC registry and the relationships; no player is registered unless the user chooses it.
- Negative or costs:
  - the numbers (increments, caps, label thresholds, disposition weights, decay) are hypotheses to be tuned with in-game tests ([G1](../G1_checklist.md) (in Italian), steps 46–55);
  - **nothing has been tested in the real client**: the gossip, quest and merchant events, the three `hooksecurefunc` hooks, `UnitGUID("npc")` for identity, `UnitFullName` on group companions, the Total RP 3 reply, and the look of the window and sliders;
  - the sale detection is a heuristic; an item used while the merchant is open may be counted as a sale;
  - the quest giver is "the NPC of the last dialogue": a quest accepted without a recent dialogue goes to nobody;
  - the base lines are 51: extended content arrives with S7.

## References

- GDD §7.4, §10, §14.
- `Systems/Relationships.lua`, `Data/Relationships.lua`, `UI/RelationsFrame.lua`, `Engine/RuleEngine.lua` (conditions), `Engine/Traits.lua` (trait scope), `Data/RegistryRelations.lua` (lines).
- [ADR 0004](0004-total-rp-3-optional-with-adapter.md), [ADR 0005](0005-compat-secret-values-and-defensive-events.md), [ADR 0016](0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md), [ADR 0017](0017-living-memory-selective-memories-and-honest-recall.md).
- `Tests/TestRelations.lua` and the "relationship persistence" section of `Tests/run_tests.py`.
