# 0019. Interlocutor and place: sources in priority order, weak tendencies, places by uiMapID

- Status: Accepted
- Date: 2026-10-29 (step S6c; GDD §5.2, §5.3, §5.4, §7.1, §7.2, §10; ADR 0004, 0005, 0015, 0016, 0017, 0018; issue #31)

## Context

Lines must change depending on **who we meet** (personality, recent actions, race, class, goals, role) and **where we are** (region, territory, dungeon, raid, battleground, arena). S5 describes *our* character, S6b the *relationship*; what is missing is the profile of the other person and a place richer than the zone name.

There are three risks. First: information about another person comes from sources of different reliability (the user, another player's Total RP 3 profile, curated data, game data), and a guessed piece of information is worse than none. Second: race, faction and class tempt one to deduce a character, and the GDD (§5.4) forbids any moral decision imposed by these data. Third: the S6 place memory uses the zone name as its key, which changes with the client language (issue #31), and the Forever uiMapIDs have not yet been verified in the real client.

## Decision

1. **`ctx.other`** (`Systems/Interlocutor.lua`) describes the target, the NPC of the current interaction, or whoever has just directed an emote at us, challenged us to a duel or invited us (passed as `extra.otherSubject`). Game fields read by Compat: `kind` (npc, player, creature), `race`, `class`, `faction`, `sex`, `level`, `classification`, `ctype`, `family`, `reaction`, `hostile`; then `role`, `temperament`, `morality`, `goals`, `speech`, `actions`, `relation`.
2. **Same trait model as S5** (`Engine/Traits.lua`): temperament and morality are the Character Soul definitions; `goals`, `speech` and `role` are new traits with `scope = "other"`. Line tags are written `other.temperament:gruff`, `other.role:innkeeper`, `other.req:…`, `other.not:…` and weigh in **factor C** (`Engine:SetWeightHook("C", "other")`).
3. **Sources in priority order**, merged with `Traits.Merge` (for each trait the first source that states it wins):
   1. the user, in the S6b relationships list (`rec.traits`, `rec.role` with `roleSource = "user"`; `Interlocutor:SetTrait`);
   2. the Total RP 3 **public profile** of another player, with **separate consent** (`interlocutor.trp3Others`, off by default, `/au who trp3`): only custom race and class (short text, no codes) and the psychological traits, of which temperament and morality are kept; never notes, history or other fields;
   3. the curated registry `Data/NPCs.lua` by `npcID` (shared with S8); for canonical characters, the role only;
   4. the role derived **only** from a reliable interaction: merchant, trainer, flight master, innkeeper, quest, bank (`BANKFRAME_OPENED`). Gossip alone does not tell the role; a role is never guessed. The derived role is kept in the NPC's relationship (`roleSource = "auto"`), never above a user choice;
   5. a **weak class tendency** (race and faction are empty in the base data): it does not enter `ctx.other` or the conditions, a `req:` does not see it, and it only shifts the weight of lines with the matching tag (×1.15, never below 1). Tendencies never touch morality (`RegisterTendencies` discards it);
   6. neutral: an absent trait means "I don't know".
4. **Recent actions only from reliable events**, never from the combat log: dialogue, quest offer and turn-in, merchant, trainer, flight, inn, bank, trade (`TRADE_SHOW`), group (`GROUP_ROSTER_UPDATE`), duel (`DUEL_REQUESTED`), invitation (`PARTY_INVITE_REQUEST`), standard emotes directed at us (`CHAT_MSG_TEXT_EMOTE`: we only check whether the client-generated text contains the word "you", then discard it; custom emotes are not read), and, by reading the target, "attacks us" (hostile and has us as its target) and "fights at our side". Actions carry the moment they occurred, stay only in the session (at most 60 people, 15 minutes) and are never saved.
5. **Secret identity** (`C_Secrets.ShouldUnitIdentityBeSecret`): `ctx.other = { secret = true }` and nothing else.
6. **`ctx.place`** (`Systems/Place.lua`): zone and subzone, `mapID` and continent (`C_Map`), tags and themes, atmosphere, territory (`C_PvP.GetZonePVPInfo`, with the data as a fallback), capital and the faction that rules it (friendly or enemy capital), instance type, name, id and difficulty (`GetInstanceInfo`), boss encounter (`ENCOUNTER_START`/`END`), group role (`UnitGroupRolesAssigned`), battleground state (`UPDATE_BATTLEFIELD_STATUS`, `C_PvP.IsBattleground`).
7. **`Data/Places.lua`** uses the English client name as its key and annotates the Classic Era uiMapIDs and instanceIDs **as unverified**. `Place:Lookup` searches in this order: verified uiMapID (`verified = true`) > name > unverified uiMapID (last-resort fallback, flagged by `/au place`). Verification is done in game with `/au place`.
8. **Place memory by stable key** (#31): the key is `"map:<uiMapID>"` when the client provides it, otherwise the name. **Versioned** internal migration (`memories.version` 2): a name that the data knows with a verified uiMapID is moved to the number immediately (two names with the same number are merged); the others keep the name and are **adopted** on the first visit that brings the uiMapID. The name remains as a label and follows the client language.
9. **Rules**: sub-tables `when = { other = {…}, place = {…} }` with the same operators as the top level (lists, `not`, `any`, `func`), `other.actions` with a window (`"duel"`, `{ "duel", within = 30 }`), `place.tags` (any one of the tags), `place.encounter`/`lastEncounter` (true/false or a name). The validator checks fields, types and values. Placeholders `{other}`, `{otherrole}`, `{otherrace}`, `{otherclass}`, `{instance}`, `{encounter}`, localized.
10. **Rhythm** (`NarrativeDirector:SetRhythm("place")`): raid ×0.5 probability and ×1.6 pauses, boss encounter ×0.25/×2, dungeon ×0.8/×1.25, battleground ×0.7/×1.2, arena ×0.4/×1.5, inn or city in the open world ×1.25/×0.8; exceptional events do not become rarer. In battlegrounds, arenas and against a boss, factor C rewards short lines (≤ 80 bytes). A boss encounter is demanding even without the `worldboss` classification (`SetDemandCheck("encounter")`). The register follows the interlocutor's `speech` and `role` (`StyleResolver:SetModifier("other")`).
11. **New events**: `npc_meet` (an NPC with a recognized role, `npc` module), `other_action` (an action toward us), `encounter_end` (end of a boss encounter); each with a guard in the engine, so it does not speak without the person or the encounter, not even by hand.

## Alternatives considered

- **Indexing places by the data's uiMapID**: rejected until the numbers are verified; the key comes from the client, the data serve only for tags and themes.
- **Race and faction tendencies** (for example a typical temperament): rejected in the base data. They remain possible for packs, always weak and never on morality.
- **Reading the text of all emotes**: rejected; only standard emotes, and only to know whether they are directed at us.
- **Saving recent actions**: rejected for privacy; the role, which is a fact about the world and not about a person, is saved with the NPC's relationship.

*Step 0 update ([ADR 0023](0023-english-first-addon-and-english-command-names.md)):* the commands named here are written with their English names, `/au who` and `/au place`; the Italian names this ADR first used were removed, and an Italian word now only gets a hint to the English command.

## Consequences

- Lines can ask for a role, a temperament, a race or a class, a recent action, an instance type, a territory or a place tag; S7 will use them.
- `Data/Places.lua` and `Data/NPCs.lua` must be verified in game (`/au place`, `/au who`); until they are, nothing breaks: a wrong entry simply does not fire.
- The `CHAT_MSG_TEXT_EMOTE` check works only with the English client (the word "you"): with a client in another language the "emote" action is not recorded.
- The place memory of an existing character stays by name until the next visit with a uiMapID; the user loses nothing.
