# 0039. Local reputation: word gets around, honorary titles and NPC rivals

- Status: Accepted
- Date: 2026-11-01 (issue #218, step N6 of the NPC relationships milestone; owner decisions of 2026-11-01)

## Context

Since S6b (ADR 0018) each NPC's relationship is its own: helping the marshal of Goldshire tells the smith next door
nothing. N2 (ADR 0036) gave NPCs a temperament and visible levels, and N4 (ADR 0038) made a broken oath remembered by the
map where it was sworn (`relationships.marks`, a uiMapID). The owner asked, in the spirit of Skyrim, that word of the
character get around a town, that enough esteem in a city earn a local title ("Friend of Goldshire", like a thane), and
that curated rivals notice when the character befriends the other. The milestone's ground rules hold: narration only (an
NPC never behaves differently in the game), never public chat (D16), the numbers and lists in data.

## Decision

1. **A town is where you meet an NPC.** In a capital (`capital` in `Data/Places.lua`) the whole city; elsewhere the
   subzone the client names, with `towns.aliases` folding a building (an inn) into its village. None in the open (no
   subzone) or in an instance. Each NPC keeps the town of its last meeting (`town`); the town keeps the uiMapID read
   there, which is the map of N4's marks: the oath memory is read from there, never copied.
2. **Word gets around as a bounded layer, heard lazily.** A share (`towns.word.share`) of every change an interaction or
   a promise makes to an NPC's value axes (trust, respect, affection, loyalty: not familiarity, not fear) goes to the
   town's `word`, both ways, never beyond `word.limit` per axis. Nothing is written into the other NPCs at that moment:
   each one **hears** the word at their next meeting, taking in only what moved since they last heard it (`heard`),
   multiplied by their temperament; a newcomer hears all of it. The NPC whose change made the word counts its own share
   as heard, so nothing comes back twice. An NPC met in another town takes that town's word as heard (it moved). A
   source in `word.skip` (a rival's spite) does not spread.
3. **Esteem and titles are computed, the title is kept.** The esteem of a town is the sum of its NPCs' dispositions (each
   within `perNpc`) plus `perQuest` per quest turned in there. The highest title of `towns.titles` whose threshold is
   reached, with at least `minNpcs` NPCs known there, is held (`town.title`); a held title is kept while the esteem stays
   above `keep` x its threshold. The first time a title is held (`town.best`), a permanent `relation_title` memory (the
   title and the town, no NPC name) and a private notice.
4. **A broken oath outweighs a title.** While the town's map remembers a broken oath (N4's mark), the title is withheld:
   the narrator does not use it and no new one is given. It comes back when the mark fades.
5. **Rivalries are curated pairs.** `NS:RegisterRivalries` in `Data/NPCs.lua` (both ways, a `kind`): innkeepers who
   compete for the same travellers, the two forges of a village; the addon's own atmospheric reading, never a lore
   claim (GDD §5.4). At a counted meeting with an NPC whose rival is at `rivalries.band` (Friend) or above, the NPC
   notices once for that rival (`rival`): `rival_noticed` on their own axes, and a jealous or ironic line by their
   temperament. A rival no longer close is let go, so growing close again is noticed again.
6. **The voice is a private system notice, one per meeting.** The newcomer's greeting (good or bad word), the title and
   the rival go through `Narrator:Notice` like ADR 0036 and 0038: `towns.perSession` a session, dropped in combat, silent
   with the narrator silent, an option (`relations.localNotices`). During a meeting they wait until it is settled and only
   the most important is shown (title, then rival, then word).
7. **Conditions and a placeholder for the content.** `townTitle` and `townWord` need no person; `relRival` is a
   relationship condition. `{title}` gives the title held where the character stands and is used by inner-voice lines
   only. Four recall intentions for `relation_npc` use them; more come with N9 (#221).
8. **`relationships.version` 5.** `towns` and the NPC fields `town`, `heard`, `rival` bump the internal version: version 4
   data needs no migration, and an older addon treats version 5 as read-only (ADR 0006). At most `towns.max` towns are
   kept (the oldest without a title go first); resetting the NPCs forgets the towns.

## Alternatives considered

- **Pushing the share into every NPC of the town at once.** Rejected: hundreds of writes per interaction, level changes
  nobody witnessed, and no way to give a newcomer the word. Hearing at the next meeting costs nothing and is when the
  narrator can say it.
- **Grouping by uiMapID only, as N4's marks do.** Rejected for the town itself: a whole zone (Elwynn Forest) is not a
  village, and "Friend of Elwynn Forest" is not a thane's title. The map stays the key of the oath memory, read through
  the town.
- **A title from a faction's reputation.** Rejected: the game's reputations already exist and are not about a town's
  people; the title is about the NPCs the addon knows.
- **Titles that change how NPCs or vendors behave.** Out of scope by the ground rules: narration only.

## Consequences

- Positive: a village feels like a community; a title marks a long stay; a rival gives two innkeepers a voice; every
  number and list is data a pack can extend.
- Negative or costs: the town depends on the subzone text of the client, which is coarse at times (a building with its
  own name not in `aliases` is a town of its own); the esteem walks the NPC list at each interaction in a town (at most
  1,000 records); the rival npcIDs come from Classic Era numbering.
- Not verified in the real client: the subzone names in Forever (inns, capitals' districts), whether `IsInInstance` and
  `GetSubZoneText` behave as expected in towns, the npcIDs of the rival pairs, and the feel of the notices (steps
  N6.1-N6.6 of `docs/G1_checklist.md`).

## References

- Issue #218; ADR 0006, 0018, 0036, 0038.
- `Systems/Relationships.lua` (local reputation), `Data/Relationships.lua` (`towns`, `rivalries`, `rival_noticed`),
  `Data/NPCs.lua` (rivalries), `Engine/RuleEngine.lua` (conditions), `Engine/TemplateRenderer.lua` (`{title}`),
  `UI/RelationsFrame.lua` (detail, option), `Data/RegistryRelations.lua` (recall lines).
- `Tests/TestLocalReputation.lua`.
