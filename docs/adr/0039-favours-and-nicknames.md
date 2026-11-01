# 0039. Favours the game can check, and nicknames from curated lists

- Status: Accepted
- Date: 2026-11-01 (issue #217, step N5 of the NPC relationships milestone; owner decisions of 2026-11-01)

## Context

After N2 (ADR 0036) a bond with an NPC has visible levels, but reaching Friend or Close friend changes only a word in the
window and the tone of the lines. The owner asked, in the spirit of Skyrim's radiant requests, that a close NPC ask
small favours and that a very close one give the character a nickname. The milestone's ground rules hold: narration
only (an NPC never behaves differently in the game), never public chat (D16), templates, lists and numbers in data, both
languages for every line. The addon cannot read what an NPC says, offer real quests or hand out items: a favour can
only be something the client already tells the addon about.

## Decision

1. **A favour is a template the engine can check, not a text.** `favours.templates` in `Data/Relationships.lua` gives an
   id, a kind, the days to do it, the hours to wait before it can be done and, optionally, the roles that ask it. The
   engine knows four kinds, each verified by events it already listens to:
   - `return`: a meeting with the same NPC (`NPC_INTERACT`) from `wait` hours on ("come back tomorrow");
   - `buy`: a purchase from the same NPC (the `BuyMerchantItem` hook of ADR 0018) from `wait` hours on (merchants);
   - `rest`: the character resting (`IsResting`) on the map or zone where it was asked, at a login or reload
     (`PLAYER_ENTERING_WORLD`) or when the rested state begins (`PLAYER_UPDATE_RESTING`), from `wait` hours on
     (innkeepers: "stay the night");
   - `visit`: entering a zone (`ZONE_CHANGED_NEW_AREA` and the login) chosen from `favours.places` (English client zone
     names, on the continent where the character stands according to `Data/Places.lua`, within a level range, not the
     current zone), then the next meeting with the NPC.
   A pack can tune a template or add one of a known kind; an unknown kind is refused.
2. **Who asks, and how often.** A named NPC (a kept name, as for oaths in ADR 0038) at `favours.band` (Friend) or above,
   at a meeting, with `chance`, when it has no open favour, has rested `restDays` since its last one, and the session
   (`perSession`) and the total (`max` open favours) have room. The role (ADR 0036's `R:Temper`) picks the templates; the
   number of favours the NPC already did turns the choice. A favour is asked **only when the private narrator can say
   it** (on, intensity above 0, not paused, no invasive screen, not in combat): a favour nobody heard does not exist.
3. **Done by itself; lapsed without a cost.** A completed favour applies an increment row (`favour_done`, or the
   template's own `reward`) through `R:Affect`, so the temperament counts and it is not a meeting; it leaves a
   `relation_favour` journal memory with tokens and a zone only, and a private notice when the moment allows it (the
   reward and the journal line come even when it does not). A favour not done in its `days` lapses silently and costs
   nothing: a favour is a kindness, not a promise (promises and their cost are ADR 0038).
4. **A nickname is an id from curated lists.** `nicknames` gives lists for deeds (groups with `when` on the counters
   the engine computes: `quests` handed to this NPC, `favours` done for them, the character's `level`, `days` since the
   first meeting), by class token, by race token and for anyone. A named NPC at `nicknames.band` (Close friend) or above
   gives one once, at a meeting, only when the private narrator can say it: the deed groups that hold first, otherwise
   class, race and anyone's together; the npcID picks the entry, so the same NPC always gives the same nickname. The
   record keeps the id (`rec.nick`), never the text, so the language can change; a language with gender writes two forms
   and the character's sex chooses. A `relation_nick` journal memory keeps the id as a token.
5. **Used in the NPC's own lines.** `R:FavourContext` adds `ctx.relNick` (the nickname in the user's language) and
   `ctx.relFavour` for the NPC of the interaction; the placeholder `{nickname}` and the conditions `relNick` and
   `relFavour` (relationship conditions for the validator) let content use them. Five dialogue-window openers greet by
   the nickname and two inner-voice recall lines exist; more come with N9 (#221). With the option off the lines stop
   using it.
6. **Options and the window.** `relations.favours` and `relations.nicknames` (both on). The NPC detail and
   `/au relationships detail` show the nickname, the open favour with its days left and the favours done.
7. **`relationships.version` 5.** The NPC fields `favour = { k, t, e, map?, zone?, s? }`, `favourT`, `favourN`, `quests`
   and `nick` bump the internal version: version 4 data needs no migration, an older addon treats version 5 as read-only
   (ADR 0006), lapsed favours are let go at load, and an NPC with an open favour or a nickname is never compacted.

## Alternatives considered

- **Favours that need reading quest text, items or a gossip choice ("bring me five pelts").** Rejected: the addon does
  not read quest or item text for relationships (ADR 0038), cannot verify an item was given to an NPC, and must never
  imply a reward the game does not give. Only facts the client already reports are used.
- **A cost for a lapsed favour.** Rejected for now: favours are asked by the NPC, not accepted by the player, so missing
  one is not a broken word. A pack can still add a cost later through a new kind if wanted.
- **Favours and nicknames as Director lines.** Rejected for the same reasons as the level notices (ADR 0036): the
  Director's chance could hide the moment that matters, and a narrator line can become a public proposal in some chat
  modes. The recall lines go through the Director as usual.
- **Nicknames built from fragments, or the character's name.** Rejected by ADR 0001 (whole, curated lines) and for
  privacy; curated words in two languages are easier to review for tone and lore.
- **Localized zone names for a visit.** The client is English and its zone names are what the player reads on the map,
  so both languages show the client's zone name.

## Consequences

- Positive: friends ask for something and notice when you do it; close friends name you; nothing needs the real quest
  system, and every number, template, place and nickname is tunable in `Data/Relationships.lua` or a pack.
- Negative or costs: a favour depends on events not yet seen in the real client; the `rest` favour reads "resting on
  that map" as "stayed the night", which a /reload at the inn after the wait also satisfies; a `visit` matches zones by
  their English client name; the nickname lists are short and will want more entries.
- Not verified in the real client: the timing of `PLAYER_UPDATE_RESTING` and `IsResting` at a login, the zone names
  given by `GetRealZoneText` for the destinations, the purchase hook for the `buy` favour, and the feel and frequency of
  the notices (steps N5.1-N5.7 of `docs/G1_checklist.md`).

## References

- Issue #217; ADR 0001, 0006, 0018, 0036, 0038.
- `Systems/Relationships.lua` (`R:MeetFavours`, `R:AskFavour`, `R:CompleteFavour`, `R:FavourPlaceCheck`,
  `R:FavourBought`, `R:GiveNickname`, `R:PickNickname`, `R:FavourContext`, `R:FavourText`), `Data/Relationships.lua`
  (`favours`, `nicknames`, `increments.favour_done`), `Engine/RuleEngine.lua` (`relFavour`, `relNick`),
  `Engine/TemplateRenderer.lua` (`{nickname}`), `Data/RegistryDialogues.lua`, `Data/RegistryRelations.lua`,
  `UI/RelationsFrame.lua`.
- `Tests/TestFavours.lua`.
