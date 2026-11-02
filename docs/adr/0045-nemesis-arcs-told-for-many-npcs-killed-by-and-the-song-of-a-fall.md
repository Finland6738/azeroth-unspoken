# 0045. Nemesis: arcs told for many NPCs, who killed the character, and the song of a fall

- Status: Accepted (the detection recipe it builds on, ADR 0035, is **not yet confirmed in game**)
- Date: 2026-11-02 (issue #219, step N7 of the NPC relationships milestone; owner decisions of 2026-11-01 and 2026-11-02)

## Context

The owner asked, in the spirit of Shadow of Mordor, that an elite or rare NPC that kills the character become a
**nemesis**: meeting it again brings lines of the narrator, each further death by its hand deepens the story, and
killing it closes the story with a page in the journal and a **song** in the songbook. At most a few nemeses at a time.
The milestone's ground rules hold: narration only (an NPC never behaves differently in the game), never public chat
(D16), the numbers and lists in data, English and Italian for every string. The songbook keeps ids and times only, never
a text (D19, ADR 0044), and literary pieces are private (ADR 0042).

Two things were missing. The Story Arcs (ADR 0021) tell each arc **once**: one saved item per arc id, opened by a real
event, one or two at a time; a nemesis is one story per NPC, several at once. And nothing read **who killed the
character**: ADR 0035 proposed a recipe (item 5) that N1 (ADR 0041) did not need. On 2026-11-02 the owner decided not to
wait for the in-game run of section N0: N7 is built on the proposed recipe, behind Compat, and what turns out wrong in
play becomes a new issue.

## Decision

1. **An arc told for many NPCs.** An arc definition may declare `instances = n` (1 to 5) with `subject = "npc"`. It is
   then a template: each NPC gets its own story, saved as the item `"<id>#<npcID>"` with the same states and steps
   (`Systems/StoryArcs.lua`, `SA:Def(key)` gives a view of the definition with `id` = the key, `base` = the arc,
   `npcID`). Its stories have **slots of their own** (`instances`), apart from the one or two of `arcs.maxActive`; when
   they are full, a new story waits as "available" and the user can begin it after suspending or skipping another, as
   with any arc. The arc's own item (`"<id>"`) skipped or disabled turns all its stories off
   (`/au stories disable nemesis`). The story's journal title is the text `subjectTitle` with `{name}`, the NPC's name.
   The rules of the lines still name the arc (`arc = { id = "nemesis", state = ... }`): `ctx.arc.id` is the arc,
   `ctx.arc.key` the story.
2. **Two new events that carry an NPC**, both real game events: `slain` (an NPC killed the character) and `fall` (the
   character killed an NPC). With `npc` they are the NPC events: an arc tied to an NPC opens on one of them, and an arc
   told for many NPCs moves only on its NPC's events (or the user's choice). They reach the arcs as the bus events
   `SLAIN_BY` and `FOE_FELL`, with the npcID and the name only.
3. **It may close from any opened state.** In an arc told for many NPCs a step to `RESOLVED` may leave any state after
   `LOCKED`: its NPC can fall at any point of the story. Every other step still goes one state forward, and an ordinary
   arc keeps the rule of ADR 0021.
4. **The nemesis arc** (`Data/Arcs.lua`): `instances = 3`, `topic = "death"` (a character who avoids the topic has no
   nemesis), states `LOCKED -> MARKED -> HAUNTED -> SWORN -> RESOLVED`; `slain` opens it and deepens it twice, `fall`
   closes it from any of the three. Its lines are intentions of `base_arcs` like the others (seven for its steps), plus
   four of the event `nemesis_meet`. Closing leaves the usual permanent memory (`story`, tags `arc`, `done`, `nemesis`).
5. **Who killed the character** (`Systems/Nemesis.lua`, ADR 0035 item 5). The units that hold the character's aggro
   (`UnitThreatSituation` 2 or 3) are read on `UNIT_THREAT_LIST_UPDATE` for the target and the nameplates, and at the
   start of a fight, and kept by GUID for the fight only (at most 16, never saved, never on the bus). On `PLAYER_DEAD`,
   during the fight or within `nemesis.linger` seconds of its end, the killer is the last holder of the last
   `nemesis.holderAge` seconds (10) when the fight had only one; with two or more, the target if it was one of them;
   otherwise nobody. A death with no fight has no killer. The killer becomes a nemesis only when its classification is
   one of `nemesis.classes` (elite, rare, rareelite, worldboss) and the character stands in a place of `nemesis.places`
   (`IsInInstance` type `none`: the open world; a dungeon's elites are many and expected). A hidden identity, a secret
   GUID or an unreadable answer is unknown, and unknown makes no nemesis.
6. **Its fall** (ADR 0035 item 4). A nemesis targeted, or attacking the character, is watched by GUID (at most 16, for
   ten minutes, in memory only). N1's kill sources (`UNIT_DIED`, `PARTY_KILL`, in `Systems/Hostility.lua`, which own
   those events) tell the module when a watched GUID dies, without publishing it: by the character or their pet
   (`PARTY_KILL`), or with the character alone on it (`UNIT_DIED`, or dead as the target at the end of the fight, not
   tapped by others, not in a group). Someone else's kill rules it out. The fall is settled `nemesis.linger` seconds
   later, so a late `PARTY_KILL` still counts.
7. **Meeting it again.** Targeting a nemesis, or a nemesis attacking the character, offers the event `nemesis_meet` to
   the Narrative Director (priority "exceptional", module `storyArcs`) with the story's view (`ctx.arc`, `meet = true`)
   and the nemesis as `{other}`, at most once every `nemesis.meetGap` seconds (1800) for each; not right after the
   death, which has its own line. A guard keeps the event silent otherwise (no `/au event nemesis_meet`).
8. **The song of a fall.** When a nemesis's story closes, the module chooses a literary piece of the event
   `nemesis.song` (`nemesis_song`, in the verses pack, chance 0 and a guard that never lets it speak) whose conditions
   hold for the story (`arc.from` is the state it fell in), in the language, out of combat and with the literary forms
   not set to *never*, preferring one the songbook does not have yet. It goes into the songbook with
   `Songbook:Add(id, "heard")` (ids and times only), and a private notice gives its title. Three songs, English then
   Italian, in the project's own style (a victory song after one meeting, a feud song after a long feud, a saying that
   mourns a fallen foe), attributed to a voice, written through the authoring archive with their metadata
   (genre, purpose, origin) and editorial records; their three review steps are the owner's. Without the verses pack
   there is no song, and the story still closes.
9. **Saved data.** `arcs.version` 2: the items `"<id>#<npcID>"` (the NPC's id and name in `subject`, as `knownface`
   already did). Version 1 data is valid as it is; the number changes because an older addon would drop those items, so
   it now reads them only. A story never begun is dropped, the arcs come before the stories when the 100 items are
   counted, and at most `KEEP_CLOSED` (20) closed or skipped stories are kept for an arc (the oldest go first).

## Alternatives considered

- **Fixed slot arcs** (`nemesis_1`, `nemesis_2`, `nemesis_3`). A slot that closes is closed for ever (an arc is told
  once), so a fourth nemesis could never come; every place that lists arcs would need to know they are one thing.
- **The nemesis in the relationship records** (a `bane` field beside N1's `foe`). It would create records for hostile
  mobs, which the relationships keep only for people met (ADR 0018), and still leave the story to be told elsewhere.
- **Speaking the song at the fall.** A whole song right after the closing line of the arc is too much at once, and the
  fight may still be going on. The songbook keeps it, the notice says so, and the recall of ADR 0044 may bring it back.
- **Waiting for the N0 run.** The owner chose not to (2026-11-02).

## Consequences

- Positive: the arcs can tell a story per NPC for any future system (the companion pet, N8, or a rival); the nemesis
  has no game effect and no field for one; everything it decides is data (`nemesis` in `Data/Relationships.lua`, the
  arc in `Data/Arcs.lua`); unknown facts stay silent.
- Negative or costs: the recipe guesses. A death to a pack of elites where the target was not among the attackers makes
  no nemesis; a nemesis killed by an area spell while it was not the target, with no `UNIT_DIED` or `PARTY_KILL`, is
  missed; in a group, only a `PARTY_KILL` by the character or their pet counts. Until the owner's run these are
  unconfirmed, and section N7 of the in-game checklist lists what to try. The arcs' data has a new version.

## References

- Issue #219 (N7); #212 (N0), #213 (N1), #122 (the songbook); milestone 9.
- [ADR 0021](0021-story-arcs-micro-stories-without-game-effects.md) (Story Arcs), [ADR 0035](0035-attacks-kills-and-deaths-without-the-combat-log.md) (the detection recipe), [ADR 0041](0041-hostility-grudges-betrayal-witnesses-and-guest-right.md) (N1's kill sources), [ADR 0043](0043-literary-metadata-genre-matrix-interchangeable-stanzas-and-pieces-in-the-archive.md) (pieces in the archive), [ADR 0044](0044-songbook-recall-and-reading-frames-and-the-culture-of-origin.md) (the songbook).
- `AzerothUnspoken/Systems/Nemesis.lua`, `AzerothUnspoken/Systems/StoryArcs.lua`, `AzerothUnspoken/Data/Arcs.lua`, `AzerothUnspoken/Data/Relationships.lua` (`nemesis`), `AzerothUnspoken_Versi/Registry.lua`, `Tests/TestNemesis.lua`.
