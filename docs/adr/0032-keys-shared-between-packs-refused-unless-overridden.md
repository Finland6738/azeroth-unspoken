# 0032. Keys shared between packs: refused, unless the pack says `override = true`

- Status: Accepted
- Date: 2026-10-31 (issue #69, found in the review #58; the Italian gender agreement of #70 and #71 is handled in the same change and described in `PACK_FORMAT.md`)

## Context

Four registrations work by key: `RegisterDialogues` (the archetype, or `npc:<npcID>`), `RegisterNPCs` (the `npcID`), `RegisterPlaces` (the client name of a zone, a subzone or an instance) and `RegisterArcs` (the arc id). Until now the last pack loaded won: a pack that wrote `scripts = { innkeeper = ... }` replaced the whole base script, for the whole game, with no message in the diagnostics and no validator code. Rules (`dupId`) and packs (`RegisterPack` with an id already used) were already refused and reported; these four were not. A pack author who wanted to *extend* a script did not know they had replaced it, and a player had no way to see which pack had changed the innkeeper.

Two things limit the design: the base data and the regional packs register the same keys again on purpose (a regional pack is built again after a return), and the archive of ADR 0027 reads the base files as data, so the registration calls of the base cannot change shape.

## Decision

1. **A key held by another pack is refused.** `Packs:Claim(kind, key, pack, override)` (`Core/Packs.lua`) is the single place that decides. The entry is not registered (the other entries of the same call are), the base data stays, `Diagnostics:Error("packs", ...)` writes the notice that `/au debug` lists, and the validator reports `keyCollision` (an error) with both pack ids.
2. **Replacing is explicit.** `override = true` on the entry, or on the whole call, replaces the entry **as a whole** (never merged). The notice is recorded and the validator reports `keyOverride` (a warning) saying who replaced what. The notice goes through the same `Diagnostics` channel as every other caught problem, so no new screen is needed.
3. **The owner is a pack id.** Each call carries `pack = "id"` (`RegisterArcs` already did; for `RegisterNPCs` it is a text key next to the numeric ones, which cannot clash with an `npcID`). The same pack registering its own key again replaces it silently, which is what a regional pack built again needs. A call with no `pack` is never recognised as an owner: it can take a free key but not register it twice. The base files register under `base_dialogues`, `base_npcs`, `base_places` and `base_arcs`.
4. **Kinds are separate keys.** A zone, a subzone and an instance with the same name are three keys (`place:zone:X`, `place:subzone:X`, `place:instance:X`). A refused arc also loses its `texts` in that call; a refused place does not add its tags to the known ones.
5. **Not changed:** `RegisterRelationData` (labels replace by id, a deliberate and documented choice for data a user already knows), `RegisterPack` (already refused), `AddArcTexts` (a text is added to an arc, it is not an arc).

## Alternatives considered

- **Merge** the entries (nodes and replies of a script, fields of a place). Rejected: a merge hides which pack wrote what, can leave a script with a node that points nowhere, and has no obvious answer for removing a node or a tag. Extending is available explicitly: a new key with `extends`.
- **Keep "the last wins" and only warn.** Rejected: a pack the player installed last would silently decide the innkeeper for the whole game; refusing by default is the safe side, and `override` costs one word.
- **Let an unnamed pack own its keys.** Rejected: it would restore the silent replacement for every pack that does not say who it is.

## Consequences

- Positive: a pack cannot damage the base data by accident; the player can see (`/au debug`, `/au validate`) when a pack replaced something on purpose; pack authors are told how to extend.
- Negative or costs: a pack written before this change that relied on replacing now has its entry refused until the author adds `override = true`; the example packs and the guide are updated. The notice is a Diagnostics entry (the ring keeps the latest 30); the validator keeps the full list for the session.
- Not verified in the real client: nothing here calls the client; it is tested offline (`Tests/TestKeyClaims.lua`).

## References

- Issue #69 (review #58); [ADR 0014](0014-normalized-event-bus-and-isolated-modules.md), [ADR 0019](0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md), [ADR 0020](0020-simulated-dialogue-and-real-dialogue-npc-alive.md), [ADR 0021](0021-story-arcs-micro-stories-without-game-effects.md), [ADR 0025](0025-language-and-regional-packs-loaded-on-demand.md).
- `Core/Packs.lua` (`Claim`, `CheckKeys`), `Systems/NPCAlive.lua`, `Systems/Interlocutor.lua`, `Systems/Place.lua`, `Systems/StoryArcs.lua`, `Engine/Validator.lua`.
- `Tests/TestKeyClaims.lua`, `AzerothUnspoken/PACK_FORMAT.md` ("Keys shared between packs").
