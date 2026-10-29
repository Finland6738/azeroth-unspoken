# Changelog

All notable changes to this project are recorded here.

The format follows [Keep a Changelog 1.1.0](https://keepachangelog.com/en/1.1.0/) and the project intends to follow [semantic versioning](https://semver.org/) from version 1.0 onwards. Until then, 0.x versions may change in ways that are not backward compatible. The v2 data schema of the phrase packs (step S3) is now stable and described in [PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md), but it may still change before 1.0: any changes will be announced here.

No version has been released yet: there are no distribution packages. The version in the `.toc` file is `0.1.0`.

## [Unreleased]

Entries are **grouped by step or activity**, from the most recent to the oldest (milestones M0–M3: S1–S9). Within each group, changes to what already existed (*Changed*) and fixes (*Fixed*) come after the new features. Known limits are at the bottom. The groups for the fix and text-review sessions (Q5, Q6) that run in parallel with this documentation are added above, under their own name.

### Q6 fixes: editorial review of the texts (issues #60–#66)

- **Gender agreement**: NPC lines and character phrases agree using `{g:}` («{g:Bentornato|Bentornata}», «sveglio/sveglia», «stesso/stessa», «basso/bassa»); where the phrase addresses the interlocutor, `{og:}` is used («Lok'tar, {og:fratello|sorella}», «Non sei {og:solo|sola}», «Sta' {og:fermo|ferma}»), always with a neutral variant for when the sex is not known (#61, choice described in the pack guide). Pets and enemies no longer have a fixed gender («bestia mia», «chi mi accompagna», «il nemico»).
- **Recognizable quotations** rewritten in an original way: «Il tempo è denaro», «Forza e onore», «Tenetemi la birra», «il cuore dell'oscurità», the line about the times we live in and the one about the land we belong to.
- **More precise rules**: the orc greetings, Durotar, the "chosen" desert, Elwynn as "home" and the devotee's prayer require the right race or use `{faith_of}`; the phrases against the undead that talk about "those who breathe" exclude the Forsaken. The arena phrases (absent in the classic era) are marked as a future extension.
- **Fewer stereotypes**: half of the dwarf phrases talk about mountains, forge and ancestors instead of beer and beards; trolls no longer call everyone «amico» and the English dialect stays on half of the phrases.
- **English**: uniform American spelling throughout `Data/enUS` (#66); a few ungrammatical or unnatural phrases corrected. The content tests check for British forms and for the neutral variant of `{og:}`.

### Documentation: alignment with M0–M3 (activity D2, issues #57, #58 and #59)

- `README.md` and `README.it.md` rewritten for the state of `main`: all the features (private narrator, Chat Gateway, intensity and depth, personality and Total RP 3, memory and journal, relationships, interlocutor and place, NPC Alive, Story Arcs), the real numbers (1,005 intentions, 2,109 variants per language, four voices), all the commands and aliases, the four key bindings, privacy (relationships, other players' Total RP 3 only with consent, no chat saved, nothing in public chat without a player action) and the project status with the in-game tests still to be done.
- `AzerothUnspoken/PACK_FORMAT.md`: **all the examples are written for an external pack** (`AzerothUnspoken:` and not `NS:`) and are **tested by the test suite**; it describes what happens with an already existing key (script, NPC, place or arc: full replacement, [#69](https://github.com/Finland6738/azeroth-unspoken/issues/69)) and recommends a new key with `extends`; counts updated.
- **`Tests/check_docs.py`** (hooked into `run_tests.py`): loads every `lua` block of the guide marked `<!-- test -->` as an external pack and runs the validator (`<!-- test: error -->` for the examples that are wrong on purpose); checks all relative links in the Markdown files, anchors included.
- `docs/ARCHITECTURE.md`: diagram and table of how the M1–M3 systems hook into the engine, schema versions and per-character data versions, pack API updated (schema v2, `RegisterDialogues`, `RegisterNPCs`, `RegisterPlaces`, `RegisterArcs`...), complete settings, section on what is still missing rewritten.
- `CONTRIBUTING.md`, ADR 0006 (schema 6, internal module versions, rule for newer data) and this `CHANGELOG.md`, reorganized by step (before, the "Added" and "Changed" sections were mixed).

### Q5 fixes (issues #45, #46, #47, #48, #49, #50, #51, #52, #53, #54, #55, #56)
- **#45 privacy**: `rel.npc.rival` is now an inner voice; the validator rejects `{relation}` (which may contain the label written by the user) in public voices, frames and vocabulary (`userTextPublic`); the engine never composes that text into a public phrase, not even from an external pack (`ctx.relationCustom`, `Engine.USER_TEXT`).
- **#46, #50 respect for modules and version**: NPC Alive writes no flags or relationships when memory or relationships are off or read-only (`LM:SetFlag` refuses automatic sources when memory is off); `R:Sanitize` leaves the data of a newer internal version untouched and switches to read-only, with the error in the diagnostics.
- **#49, #52 loaded data**: `Engine:SanitizeMemory` discards malformed anti-repetition entries (and `DecayMemory` removes those of vanished phrases, without touching frames and vocabulary); the button position is checked; the `today` counters of past days, the NPC cap, the cap on permanent memories (`LM:CapPermanent`) and on flags (1000, `LM:CapFlags`) also apply to loaded data; flags with uppercase letters are lowercased.
- **#51 numbers**: `/au cooldown` goes through `Config:Set` (0-3600), `/au prob` discards `nan` and `inf`, a `schemaVersion` that is not an integer, NaN or negative is normalized (`Config:SchemaOf`).
- **#53 diagnostics**: `/au debug`, `/au debug full` and the trace no longer print the names of other players (unknown text fields come out as `<nascosto>`); anti-regression test.
- **#55 send blocked silently**: the real client does not raise an error for a protected send without a gesture; the Chat Gateway listens to `ADDON_ACTION_FORBIDDEN` and `ADDON_ACTION_BLOCKED` (`ACTION_BLOCKED` source of the bus), does not count the send, puts the proposal back on hold and records `last refusal blocked` (`blocked by the client` in `/au debug`). The fake client behaves the same way (`BLOCKED_SENDS`, `SEND_RAISES`, `BLOCK_EVENT_LATE`).
- **#47 return after a loading screen**: `memory_return` and `zone` are also offered with a non-login `PLAYER_ENTERING_WORLD`, whatever the order of events (the fake client has `LOADING_SCREEN` with three orders and `ENTER_GAME`: `PLAYER_LOGIN` before `PLAYER_ENTERING_WORLD`).
- **#48**: in the actions of another person (`other_action`) the relationship (`ctx.relation`, `rel`, `relTraits`, `relName`, `relationLabel`) is that of whoever acted.
- **#54 `Tests/check_api.py`**: using Lua 5.1 bytecode it checks every global read (including functions passed as a value), the widget methods (`object:Method()`) and the `CreateFrame` templates, with reasoned lists for what exists only in FrameXML (`OBJECTS`, `METHODS`, `TEMPLATES`); `Settings.RegisterAddOnCategory` protected.
- **#56 tests**: `Tests/TestCommands.lua` (basic `/au` commands, ghost resurrection with `P.ghost`, `QUEST_GREETING`, end of an encounter in combat), entering the world as an interruption in NPC Alive.
- Data format: no change. Steps 93–98 in `docs/G1_checklist.md`.


### Step S9: Story Arcs, the personal stories

- **`Systems/StoryArcs.lua`**: micro-stories of the character, **not server quests**: no reward, no effect on the game, no change to real NPCs. States `LOCKED → DISCOVERED → REFLECTED → RESOLVED` (an arc can define its own states between the two ends; from one state you can only go to the next). Every step is data: events (`zone` by uiMapID and zone name, `death`, `level`, `npc`, `flag`, `player`), RuleEngine conditions, a wait and, if needed, a player choice. An arc opens and advances **only from a real event** or from a direct choice: time, a command or another system never open or advance anything; one event moves an arc by one step only. [ADR 0021](docs/adr/0021-story-arcs-micro-stories-without-game-effects.md).
- **At most 1–2 active arcs** (`arcs.maxActive`, `/au storie max`): when the slots are full the arc stays "available" and the player starts it. Every arc can be **suspended, skipped or deactivated**, one by one or all together; the «Storie» module turns everything off. The choices (2–3 neutral options, saved as ids) are always made by the player; an arc about a topic the character avoids (`topic`) does not open.
- **Closing with a permanent memory** in Living Memory (`story`, only id and place); every state leaves the flag `arc_<id>_<state>`. Persistence in `cdb.arcs` with **schema 6** (character migration and internal migration, read-only for newer data); the pending choice, the mode and the choices survive `/reload`.
- **Narrative Director**: the events `arc_open`, `arc_step` and `arc_resolve` have "exceptional event" priority and speak **one at a time** (at least 90 seconds between two arc lines), never in combat, while dead, in a raid or battleground; if the moment is not right they wait up to 15 minutes. The state also advances in silence: the journal tells the story. `Director:Offer(event, extra, onResult)` now returns the outcome to whoever proposes.
- **Journal**: «Storie» tab with the stories in progress, those that can begin, the concluded ones and the skipped or deactivated ones; the detail shows the story and **the choices made**. Command `/au storie` (`lista`, `diario`, `scegli`, `inizia`, `sospendi`, `riprendi`, `salta`, `disattiva`, `attiva`, `max`, `on`, `off`, `stato`).
- **Four base arcs**, bilingual: «Il sentiero ritrovato» (the return to the zone where the adventure began), «Un volto noto» (a known NPC, with the S6b relationships), «Il luogo della caduta» (a loss: death and the return) and «Le tre porte» (the journey between the capitals, with a state of its own and a reflection that starts from the player). 33 IT/EN lines (private voices: thought and narrator).
- **Pack format**: `NS:RegisterArcs{ pack, arcs, texts }`, `NS:AddArcTexts`, condition sub-table `arc = { id, state, from, choice, withSubject }`, `arcDone`, `capitalsVisitedMin`; the validator checks definitions, choices, texts per language and lines (`badArc`). The pack guide has the «Story Arcs» section.
- **Tests**: `Tests/TestArcs.lua` (about 2,000 checks: definitions wrong on purpose, legal and illegal transitions, no opening without a real event, limit of active arcs, suspend and skip, all together, postponed lines and no cascades, persistence, migration, journal, command) and the simulated persistence after `/reload` in `run_tests.py`.

### Step S8: NPC Alive, the ambient dialogues (and issues #41 and #42)

- **`Systems/NPCAlive.lua`** and **`UI/DialogueFrame.lua`**: a **simulated** micro-dialogue with an identifiable NPC, in a **separate, discreet window** with the clearly visible label **«dialogo ambientale dell'addon»** (*addon ambient dialogue*), the role and the name, the line and one to three replies, immediate closing (x, `/au npc chiudi`, key binding). The lines **never go to chat** (neither into the narrator nor into the history), the addon **neither calls nor hides** anything of Blizzard's gossip, quest, vendor, flight or training, and the window is placed where it **does not cover** the visible Blizzard windows (and moves if one opens underneath). It is not in `UISpecialFrames`: Esc does not close it together with the NPC's windows. [ADR 0020](docs/adr/0020-simulated-dialogue-and-real-dialogue-npc-alive.md).
- **State machine** `idle → offered → opened → choice → response → ended` with verified transitions. The **offer** starts from a button that appears on a valid interaction (vendor, flight, training, innkeeper, bank, gossip of an NPC in the registry; **never over a quest**), expires after 20 seconds, at most once every three minutes per NPC and window; or from `/au npc` or the assigned key binding. It stops by itself on combat, death, zone change, another NPC, 120 seconds idle.
- **Identity**: no dialogue if it is uncertain or secret. *Specific NPC*: the `npcID` from the GUID is in the curated registry `Data/NPCs.lua` (now also three city guards) or the user has given it a role (`/au npc ruolo <role>`). *Archetype* (innkeeper, vendor, flight master, trainer): only from the **ongoing interaction** that proves it, or from one that already took place with the same NPC in the session; gossip alone is not enough. Never with players, hostile creatures, dead NPCs, an unreadable GUID.
- **Voice**: **169 lines** IT/EN (`base_dialogues`, voice `npc`, events `npcd_<role>_<node>`) for **innkeeper** (vertical slice B of the GDD: opening, news, "tell me more", rest, staying, thanks, farewell), **vendor**, **guard**, **flight master** and **trainer**, plus lines for four specific NPCs (Innkeeper Farley, Innkeeper Firebrew, Innkeeper Gryshka, Marshal Dughan). They are engine rules: they follow the NPC's `speech` and `temperament` (gruff, jovial, warm, formal, laconic) and the relationship (known, unknown, you already asked them for the news), with the same weights and the same anti-repetition. They come out only inside a dialogue (guard on the event); with a window open the spontaneous narrator is silent.
- **Neutral replies**: questions and actions, never a feeling, a character trait or a decision attributed to the character. **Local effects**: a narrative flag (`npcd_<archetype>_<name>`, S6 memory, never a quest), a bit of relationship with the NPC (sources `ambient` and `ambient_talk`, with daily caps; it does not count as a new interaction), an `npc_talk` memory if a reply was given (without text, name or `npcID`). `/au npc prova [burbero|gioviale|caloroso|formale|laconico]`: a test innkeeper that writes nothing.
- **Scripts as data** (`NS:RegisterDialogues`, `Data/Dialogues.lua`): per archetype or per `npc:<npcID>` with `extends`; checked by `NPCAlive:Check()` and by the validator (`badDialogue`). A pack can add them.
- Settings: `npcAlive.autoOffer`, `ui.dialogue` (`fontSize`, `alpha`, `locked`, `pos`); the «Dialoghi NPC» module and `output.npcDialogues` now take effect; command `/au npc` (aliases `dialogo`, `parla`; `prova`, `chiudi`, `ruolo`, `offerta on|off`, `stato`), key binding «Dialogo ambientale con l'NPC» (`AzerothUnspoken_NPCDialogue`), `NPC Alive` line in `/au debug`.
- `Tests/TestNPCAlive.lua` (about 2,000 checks: transitions, full path, expirations and interruptions, uncertain and secret identity, no interference with Blizzard and with chat, position, flag, relationship and memory, voice by character and relationship, anti-repetition, languages, commands, #41 and #42) and, in `run_tests.py`, the **simulated persistence after `/reload`** of the flags, the memory and the conversation; section G3 in `docs/G1_checklist.md`.

*Fixed*
- **#41 gender of the relationship labels**: in Italian the relationship labels have the gender of the person (`amico`/`amica`, `temuto`/`temuta`, `rivale rispettato`/`rispettata`, `compagno`/`compagna d'armi`...). The data write the name with a list `name = { it = { "amico", "amica" }, en = "friend" }`; the form is chosen from `ctx.other.sex` (`Relationships:LabelName(id, sex)`, `Resolve(kind, rec, sex)`), with the masculine as fallback. New placeholder **`{og:masculine|feminine}`** for the gender of the **interlocutor** (`ctx.otherSex`; with unknown sex the variant is discarded), checked by the validator and not included in the placeholder signature.
- **#42 topics to avoid and vocabulary**: vocabulary entries accept `tags` (`topic:blood`, `topic:undead`, `topic:demons`, `topic:death`, `topic:religion`...); the renderer discards the entries that the Soul profile excludes and, if none is left, discards the variant as for missing data. `{cry}` no longer says «Sangue e tuono!» to those who avoid blood; `{foe}` does not name the undead or demons to those who avoid them; `{faith_of}` is silent for those who avoid religion. The validator checks those tags (`badTag`).

### Q3 fixes (issues #9, #13, #21, #23, #26, #37, #38)

- **#26 safe lowercasing**: `NS.Lower` and `NS.Upper` (`Core/Bootstrap.lua`) handle only ASCII letters and the accented ones of the Latin-1 block (À-Þ), without depending on the process locale; they replace `string.lower`/`upper` in commands, context, rules, relationships, memory, place and Chat Gateway. `Traits.Lower` remains as a fallback. `/au intensità` and `/au profondità` also work with uppercase letters.
- **#9 tables and secret health**: `EventBus.lastKey` has a threshold cleanup (256 keys, older than 60 seconds); `SPELL_SENT` no longer uses `castGUID` deduplication; `sentTargets` of `Triggers` keeps at most 16 pending casts (failed and interrupted ones do not accumulate); with secret health `HEALTH_CHANGED` comes out at most once every 30 seconds (`window` option of `Publish`).
- **#21**: with the mouse removed from the box, the fade starts again (the time stops at the start of the fade, not at the end).
- **#23**: the validator warns (`unknownStyle`) when a frame declares an unknown register and when `RegisterEventStyles` or `RegisterMoodStyles` use one.
- **#13 "Un'altra" (Another one)**: `Gateway:Reroll` (**Un'altra** button next to Edit, `/au altra`, assignable key binding `AZEROTHUNSPOKEN_REROLL`) replaces the pending proposal with another phrase for the same event, form and context (the proposal keeps `ctx` and `id`), without sending anything and without spending the Director's budget. It keeps the chosen channel; with only one phrase available the proposal stays as it is and `no_phrase` appears; with the editor open it refuses; the replaced proposal leaves the history. The proposal bar has narrower buttons to fit the sixth one.
- **#37**: in the detail of the Relationships window a selector for role, temperament, morale, goals and way of speaking (click: next value, then "don't know"; `Interlocutor:CycleTrait`/`GetUserTrait`); the window is taller (700). The **Read other players' Total RP 3** switch is in the settings panel and in the Total RP 3 step of the wizard, off by default (`Interlocutor:SetTRP3Consent`, also used by `/au chi trp3`).
- **#38 emotes in other languages**: an emote is directed at us if the target indicated by the client (`playerName2`) is our character, **or** if the text contains the "you" of the client's language (`Interlocutor.YOU_WORDS`: en, de, fr, es, it, pt, ru, ko, zh; hand-written tables, to be tested). The text is discarded immediately, as before.
- Data format: no change (the proposals in memory have two more fields, `ctx` and `id`, never saved). Interface: new IT/EN strings `btn_another`, `tip_another`, `gw_reroll_*`, `rel_trait*`, `opt_trp3_others*`, `wiz_trp3_others_help`.
- Tests: new sections in `TestCompat`, `TestEventBus`, `TestNarrator`, `TestValidator`, `TestChatGateway`, `TestOtherPlace` and `TestRelations`; steps 69–74 in `docs/G1_checklist.md`.

### Step S7: Narrative Alpha content

- **803 base intentions** IT/EN (there were 588; GDD §9.2 target: 300) with **1,711 variants per language** (before: 612, almost always one per intention). Every intention of the common scenes has **at least two variants** per language: combat (`battle`, `victory`, `lowhp`), arriving in a zone, greetings and farewells, rest, return (`memory_return`), death and coming back to life, new level; almost all the others too.
- **Four voices**: external narrator 108 intentions (there were 32), inner voice 235 (there were 167), character 444 and the **NPC voice** with 16 intentions on the `npc_meet` event (simulated lines for innkeeper, vendor, guard, banker, trainer, flight master and quest giver, different by way of speaking and temperament; they stay private).
- **Three depths** (Natural, Literary, Elevated) written specifically for the key moments: arriving in and returning to the forest, forest zones, death, coming back to life, level, victory, low health, main greetings and farewells.
- **Vertical slices A and C**: 10 first-visit phrases in the forest and 12 return phrases in the forest (three voices, Character Soul temperaments, time of day, return after a death or a flight, after many days or many visits); first visit and return for **every mood** (`mood`), for dungeon, raid and battleground; callbacks of the flags `first_death`, `first_capital`, `level_30/40/60` (issue #29, `base_memory` from 14 to 81 intentions).
- **Relationships** (issue #34, `base_relations` from 51 to 83): every label for greeting, farewell, thanks and healing, and at someone's side in battle and victory; players on the list, NPCs with role, disposition, optional attraction axis, gender of the person (`other.sex`). In Italian `{relation}` appears only between quotation marks, as the name of the relationship, and the phrases address the person in a neutral way.
- **Character Soul tags** (issue #27) on almost all base phrases: soft affinities of temperament, morale, faith, motivation, curiosity and irony; `topic:` for death, blood, undead, demons, religion, family, betrayal, love; `req:` only for the few phrases that assert a belief or a past.
- **External narrator** (issue #18): zone moods for every `mood` and time of day, resting in the open, inn and fireplace, gestures in combat, at death, at coming back to life, at greetings and prayers.
- `place`: entering a dungeon, raid, battleground and arena, enemy capital, end of an encounter with a boss won or lost; phrases within 80 bytes in battleground and arena.
- `Tests/TestContent.lua`: content coverage (intentions, variants per event, voices, depths, slices A and C, memory per mood, tags, relationships per label and gender of `{relation}`, 80 bytes in battleground, Forever era, repeated texts, overused words such as «ombra», «destino», «sangue», «antico»).

*Changed*
- Editorial corrections of existing phrases: missing `{g:…}` genders in Italian; relationship phrases addressing the person in a neutral way; `zone.durotar.01` only for the Horde and `zone.dunmorogh.01` only for dwarves and gnomes (they say "home"); the druid no longer claims to have "slept for centuries in the Dream" (it also applied to tauren); `rez.e.03` also holds for the return from the spirit healer; two lines rewritten that recalled well-known quotations (`lowhp.04`, `battle.giant.01`).

### Step S6c: Interlocutor and place

- `Systems/Interlocutor.lua`: **`ctx.other`**, whoever we meet (target, dialogue NPC, whoever sent us an emote, challenged us to a duel or invited us): type, race, class, faction, sex, level, classification, creature type and family, reaction, **role**, **personality** with the same trait model as S5 (temperament, morale; new `goals`, `speech`, `role` with `other` scope), **recent actions** with their timing and the S6b relationship. Sources in order: user (relationship list, `/au chi tratto`) > the other player's **public** Total RP 3 profile with a **separate consent** (`interlocutor.trp3Others`, off by default, `/au chi trp3`) > `Data/NPCs.lua` by `npcID` > role from reliable interactions (merchant, trainer, flight, inn, quest, bank; never from gossip alone) > **weak class tendency** (weight only, never conditions, never morale) > neutral. Secret identity = empty profile. Actions only from reliable events (never from the combat log), kept in memory for the session only.
- `Systems/Place.lua`: **`ctx.place`**, where we are: zone, subzone, uiMapID, continent, tags and themes, territory (`C_PvP.GetZonePVPInfo`, data as fallback), friendly or enemy capital, instance (type, name, id, difficulty from `GetInstanceInfo`), boss encounter (`ENCOUNTER_START`/`END`), group role, battleground state. `Data/Places.lua`: zones, subzones, capitals, dungeons, raids and battlegrounds of the Forever era by English client name, with Classic Era uiMapID and instanceID values **not yet verified** (order: verified number > name > unverified number).
- **RuleEngine**: `when = { other = {…}, place = {…} }` sub-tables with the same operators (lists, `not`, `any`, `func`), `other.actions` within N seconds (`{ "duel", within = 30 }`), `place.tags`, `place.encounter`; validator for fields and values; every field counts toward specificity. Placeholders `{other}`, `{otherrole}`, `{otherrace}`, `{otherclass}`, `{instance}`, `{encounter}`, localized.
- **Narrative Director**: `C` factor per interlocutor (`other.` tag) and place (`place.` tag, short lines in battlegrounds, arenas and against a boss); pacing by instance type (raids and bosses sober, battlegrounds and arenas rarer, inns and cities with more room; exceptional events do not become rarer); a boss encounter is demanding even without `worldboss`; register according to the interlocutor's way of speaking and role.
- New events: `npc_meet`, `other_action`, `encounter_end` (with guards); sources `ENCOUNTER_START`, `ENCOUNTER_END`, `UPDATE_BATTLEFIELD_STATUS`, `BANKFRAME_OPENED`, `DUEL_REQUESTED`, `PARTY_INVITE_REQUEST`, `CHAT_MSG_TEXT_EMOTE` (standard emotes only, only to know whether they are aimed at us; the text is not kept).
- **86 lines** IT/EN (`base_context`): NPCs by role, temperament and way of speaking; greetings by role, homeland (race) and trade (class); actions (duel, invitation, emote, trade, assignment, at our side); dungeon, raid, battleground, arena, hostile and contested territory, friendly and enemy capitals, sanctuaries, ports, neutral cities, inns; end of a boss encounter.
- Commands `/au luogo` (aliases `dove`, `place`) and `/au chi` (aliases `who`, `interlocutore`).
- `Tests/TestOtherPlace.lua` (over 500 checks) and fake client with `C_Map`, `GetInstanceInfo`, `C_PvP`, `UnitGroupRolesAssigned`, `UnitReaction`, `UnitCreatureFamily`, `UnitIsUnit`, battlegrounds and new events.
- [ADR 0019](docs/adr/0019-interlocutor-and-place-ordered-sources-and-places-by-mapid.md); steps 56–64 in `docs/G1_checklist.md` (in Italian).

*Changed*
- **Place memory by uiMapID** (issue #31): the key of a place is `map:<uiMapID>` when the client provides it, the zone name otherwise; internal migration `memories.version` 1 → 2 (names with a verified uiMapID converted, the others adopted on the next visit), the name stays as a label. The bus carries `mapID` in `WORLD_ENTER` and `ZONE_ENTER`.
- `Integration/TotalRP3.lua`: `GetOtherProfile` (another player's public profile, with consent), `CleanPsycho`, `MapPsycho`.
- `Systems/Relationships.lua`: a relationship also keeps the interlocutor's `traits`, `role` and `roleSource`.
- Base lines: 509 → 595 (with the example pack). The automatic `/say` test in `run_tests.py` searches up to 100 fights (the fixed seed changes sequence with every line added).

### Step S6b: Relationships and affinity

- `Systems/Relationships.lua` (module `relations`): the relationship with people on seven **independent axes**, as scales of the S5 trait model (`familiarity`, `trust`, `respect`, `affection`, `loyalty`, `fear`, and `attraction`, **optional and off by default**). Derived labels (stranger, acquaintance, indifferent, friend, comrade in arms, respected rival, enemy, disliked, wary, feared, beloved), the **overall disposition** −100…100 in nine bands and the register by familiarity bands are **data** in `Data/Relationships.lua` (IT and EN); `NS:RegisterRelationData` extends them from packs. A hand-chosen label takes precedence.
- **NPCs automatically** from the `npcID` of the GUID (nothing if it is missing, secret or not a creature): dialogue, quests accepted and turned in, merchant (opening, purchases, sales, repairs with `hooksecurefunc`), flight master, trainer, innkeeper. Increments as data tables, diminishing returns, daily cap per source and axis, slow decay of familiarity only. New events on the bus: `NPC_INTERACT`, `NPC_INTERACT_END`, `QUEST_STATE`.
- **Players chosen by the user**: the system suggests (group, trades, targets with a Total RP 3 profile, private replies) but a player enters the list only through a user action (`R:AddPlayer(name, "user")`); the "register automatically" option is off by default. Sliders, notes, tags, label, deletion, text export. No chat or whisper content is read or saved (for a private reply only the name is read); nothing over the network.
- **Narrator**: `ctx.relation`, `relationLabel`, `disposition`, `dispositionValue`, `rel` (axes), `relationKind`, `isKnown`, `groupRelations`; conditions `relation`, `disposition`, `relationKind`, `isKnown`, `<axis>Min`/`<axis>Max`, `withRelation`; placeholder `{relation}`; **`R` factor** of the weight with the `rel.` scope tags (`rel.relation:friend`, `rel.req:…`, `rel.not:…`); register going from formal to intimate with familiarity; `relation_npc` event (known NPCs) with guard and "memory recall" priority. The validator recognizes the new conditions and reports `relationWithoutRelation`.
- **51 lines** IT/EN (`base_relations`): greetings, farewells, thanks, healing, battle and victory at someone's side, meetings with known NPCs.
- `UI/RelationsFrame.lua` and `/au relazioni` (aliases `relations`, `relationships`; subcommands `lista`, `persone`, `aggiungi`, `scarta`, `rimuovi`, `dettaglio`, `nota`, `tag`, `etichetta`, `imposta`, `esporta`, `auto`, `attrazione`, `reset`): sortable and filterable table, suggested people, detail view with sliders (`Widgets.Slider`), notes, tags and label; two tabs in the Journal (*Relationships*, *People met*); *Relationships* module in the settings and in the wizard; **Relationships** row in `/au debug`. A bond that becomes important leaves a memory in the Journal (tokens only, never names).
- SavedVariables: schema 5 (`cdb.relationships` with its own version; `relations` settings; migration 5).
- `Tests/check_api.py` also reads the NPC sources (`NpcSource`/`EndSource`); the fake client has the gossip, quest, merchant, group, trade and whisper events, the `npc` and `partyN` units, `UnitFullName` and `hooksecurefunc`.
- Tests: `TestRelations` (axes and optional attraction, derivation of labels and disposition, precedence of the hand-set label, increments with diminishing returns and caps, decay, secret values, no player without a user action, no chat text saved, conditions, placeholders, R factor, register, lines by relationship, migration and corrupted data, read-only, window, Journal, commands) and simulated persistence after `/reload` in `run_tests.py`.
- [ADR 0018](docs/adr/0018-multi-axis-relations-automatic-npcs-and-user-chosen-players.md); steps 46–55 in `docs/G1_checklist.md` (in Italian).

*Changed*
- `Engine/Traits.lua`: a trait can have a `scope` (the tag scope in which it is valid); `CheckTag` and `Evaluate` respect it. Traits without a scope are valid in every scope, as before.
- `UI/JournalFrame.lua`: tabs shrink when there are more than four; `ShowExport(text, title)` also shows other texts.
- `UI/Widgets.lua`: `Widgets.Slider`, a draggable slider drawn with textures.
- SavedVariables schema: 4 → 5. Base lines: 458 → 509 (with the example pack).

### Step S6: Living Memory and Journal

- `Systems/LivingMemory.lua` (module `memory`): three levels (episodic for the session, persistent personal in `cdb.memories`, narrative flags). It remembers only significant moments: first visit to a zone, return after a day, visit that ended badly (death, flight), deaths, levels, capitals; never every click, never chat or whisper text. Fields of §7.4: id, moment, zone, type, importance, tags, origin (plus level and permanence).
- Limits: 500 ordinary memories with compaction of the least significant ones, permanent memories (at most 200), places kept separately with visit counts, reset at five targets, versioned migrations (`memories.version`), data from a newer version read-only.
- Honest recall: conditions `firstVisit`, `repeatVisit`, `lastVisitBad` (also `"death"`/`"flight"`), `visitsMin`/`visitsMax`, `daysSinceLastVisit`, `remembered`; `ctx.memory`; event guards (`Engine:SetEventGuard`): a recall event does not speak without a real memory; `LivingMemory:RegisterRecall`; the validator reports `recallWithoutMemory`.
- Event `memory_return` (return to a known place) with the "memory recall" priority of §10: it beats the zone atmosphere at the same moment. 14 example lines IT/EN for first visit and return (forest, capital, death, flight, repeated visits, days away), pack `base_memory`.
- `UI/JournalFrame.lua` and command `/au diario` (aliases `/au journal`, `/au diary`): tabs Memories, Places, Flags and Session (more with `JournalFrame:RegisterTab`), selective deletion, permanent memory, forgetting a place, "Forget everything" with confirmation, text export in a copyable window; subcommands `lista`, `luoghi`, `flag`, `esporta`, `permanente`, `elimina`, `dimentica`, `reset`. **Living Memory** row in `/au debug`; button in the settings panel; the *Memory* module now takes effect.
- SavedVariables: schema 4 (`memories` becomes the memory; character migration 4).
- Tests: `TestMemory` (no memory for insignificant events, first visit, return, `lastVisitBad`, flight, levels, limit and compaction, permanents, deletion, recall only with a real memory, priority in the Director, topics to avoid, privacy, migrations and corrupted data, Journal, export, commands), simulated persistence after `/reload` in `run_tests.py` (two consecutive runtimes, `SERIALIZE` and `LEAP` in the fake client).
- [ADR 0017](docs/adr/0017-living-memory-selective-memories-and-honest-recall.md); steps 39–45 in `docs/G1_checklist.md` (in Italian).

### Step S5: Character Soul and Total RP 3 traits

- `Engine/Traits.lua`: the trait model (`choice`, `scale` with bands, `set`), reusable for the interlocutor (S6c) and for relationships (S6b); `Sanitize`, `Merge` with priority between sources, affinity tags with scopes.
- `Systems/Personality.lua` (Character Soul): eight opt-in traits (temperament, morale, curiosity, faith, motivation, irony, inner voice, topics to avoid), seven archetypes plus the neutral profile, effective profile *explicit choice > Total RP 3 > game data > neutral values*, `ctx.soul`, condition `soul`.
- Weight factor `P` filled in: soft affinity from `trait:value` tags and hard filters `req:`, `not:`, `topic:` (never contradicted); inner voice off excludes thoughts; irony weights ironic registers; temperament, faith and irony shift the preferred registers (`StyleResolver`).
- `UI/ProfileFrame.lua` and command `/au anima` (`lista`, `neutro`, `archetipo`, `trp3 on|off`, `<trait> <value>`, `evita <topic>`; alias `/au soul`): archetype choice, trait editing, immediate change; button in the settings panel.
- `Integration/TotalRP3.lua`: reads only the **public** psychological traits of the player's **own** profile (`characteristics/PS`), with a separate consent (`personality.trp3`, off by default); it switches itself off if the APIs are missing or change; new capability `integration:totalRP3:traits` in `/au debug`.
- 16 example lines with personality affinity in IT and EN (`Data/RegistrySoul.lua`, pack `base_soul`); the validator checks the affinity tags (`badTag`).
- SavedVariables: schema 3 (the character's `personality` with archetype, traits and TRP3 consent; migration from schema 2).
- Tests: `TestSoul` (trait model, neutral profile, archetypes, P factor, hard filters on every line choice, TRP3 present, absent and with changed APIs, priority between sources, SavedVariables migration, command, window).
- [ADR 0016](docs/adr/0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md); steps 32–38 in `docs/G1_checklist.md` (in Italian).

*Changed*
- SavedVariables at schema 3: the character's `personality`, which was an empty placeholder, becomes the Character Soul profile (migration 3; trait values are cleaned up at startup).
- The `/au anima` command and the "Character soul..." button in the settings panel are new; no existing command changes.

### Step S4: Narrative Director

- `Engine/NarrativeDirector.lua`: priorities of GDD §10 (explicit > dialogue > exceptional event > memory > atmosphere), opportunity gate driven by intensity, suspension during cutscenes and movies and in demanding fights (boss, raid, elite in an instance), die roll, ordering of candidates; `NS:SetEventPriority` for packs; `SetRhythm` and `SetDemandCheck` hooks for S6c.
- `Engine/Pacing.lua`: minimum pause between any two interventions (no cascades), global, per-category and per-event pauses, per-category budget over 10 minutes scaled by intensity; session-only state.
- `Systems/Director.lua`: `Director:Offer`/`Resolve` collect the candidates of a moment and let at most one speak; silence is an outcome with its reason; **Narrative Director** row in `/au debug` (budget and latest decisions).
- Weight `W = B × C × P × N × S × R` (`Engine.Factors`, `Engine:Weight`): `P` and `R` neutral, hooks `Engine:SetWeightHook("C"|"P"|"R", name, fn)` for S5, S6b and S6c.
- `Engine/StyleResolver.lua`: registers allowed per event and preferred by zone atmosphere, depth and voice, with a neutral fallback (an out-of-place register weighs less, it is not excluded); frames with `styles` accept only lines of a close register. Pack APIs `RegisterEventStyles` and `RegisterMoodStyles`.
- `Compat:InvasiveScreen` (`InCinematic`, `IsInCinematicScene`, `CinematicFrame`, `MovieFrame`) and the two new capabilities in the matrix.
- Tests: `TestNarrativeDirector` (factors and weight distribution, intensity 0/50/100, pauses, budget, priorities, no cascade, silence, suspension, style fallback, frames, no duplicates in the window), with a fixed seed.
- [ADR 0015](docs/adr/0015-narrative-director-one-intervention-per-moment.md); steps 27–31 in `docs/G1_checklist.md` (in Italian).

*Changed*
- Spontaneous events go through the Narrative Director: probability, pauses and the die roll are no longer in `Systems/Triggers.lua`, and a spontaneous line arrives 0.1 seconds after the event (arbitration window).
- A line requested by the player (command, key) prevents a spontaneous line right after it for 4 seconds.
### Q2 fixes (issues #3, #4, #5, #6, #8, #11, #12, #14, #17, #19)

- **"To chat"** output (`Gateway:CopyToChat`, button next to Send, `/au copia`): the proposal goes into the standard chat box already on the right channel and the player sends it with their own Enter (`Compat:OpenChatWith`, `Compat:CanOpenChat`, capability `api:OpenChat`). To be tested in game (G1, step 20).
- `Gateway:TextFor`/`DisplayFor`: the text sent and the preview in the narrator are suited to the channel.
- `Gateway:SelectAuto`: automatic sending is enabled with two gestures (warning, then confirmation within 10 seconds) from the command, the panel and the wizard; **Automatic sending** row in the panel.
- `Compat:IsMouseOver(frame)` (frame method, falling back to `MouseIsOver`).
- `Config.CHAT_LIMITS`: byte limit per channel, read by the Chat Gateway and the validator.
- Tests: `TestContext` (secret identity), `TestMock` (mock client), regressions in `TestChatGateway`, `TestNarrator`, `TestConfig`, `TestDirector`, `TestValidator` and in the `run_tests.py` commands.
- The mock client has real timers (`C_Timer.After`/`NewTicker` with `ADVANCE`), distinct units for `player` and `target`, `IsInRaid`, and a send that rejects every protected channel without a gesture.

*Changed*
- Automatic sending is not turned on by choosing the `auto` mode: it requires a second confirmation gesture (a cautious decision: it publishes less).

*Fixed*
- **#4** With the proposal editor open, the proposal no longer expires (the wait restarts when it closes); a spontaneous phrase does not replace it; if it disappears anyway, the written text goes back to local chat; Enter with no proposal shows a warning.
- **#5** With a fixed channel, an emote in `/s`, `/p`, `/g`… carries the character's name, and a spoken phrase in `/e` becomes «says: «…»».
- **#8** Cycling through the modes no longer enables automatic sending: a warning and a confirmation are required, everywhere. Automatic is not in the panel's cycle; without consent it behaves like `conferma`.
- **#6** With the target's identity secret, the context contains no data about the target (not even `hostile`); every read of the context goes through `SafeCall`.
- **#3** Data from a newer schema is no longer modified: work is done on a copy.
- **#11** `/au canale incursione` works; an unknown value for `canale`, `profondita` and `chat` gets a reply; the help lists `evento` and `vittoria`; the wizard's help text follows the language; two unused keys removed.
- **#17** The mouse over the frame keeps it visible (the frame's `IsMouseOver` method, present in the Forever dump).
- **#19** The 255-byte limit lives in a single place.

### Step S3: data schema v2, phrase migration, validator (entries added with issue #24)

- Data schema v2: the rule registry is separate from the texts. A rule has `events`, `category`, `speaker` (the four voices), `form`, `styles` (registers), `depth` (natural, literary, elevated), `tags`, `weight`, `cooldown` and `when`; the texts are per language, with several variants per id (`Data/Registry*.lua`, `Data/itIT/`, `Data/enUS/`). The old pack format is converted on load.
- Migration of the 421 base phrases (367 plus the 54 of `Classes.lua`, now in the `.toc`) with voice, register and depth assigned phrase by phrase; frames and vocabulary remain.
- `Engine/Validator.lua` and `/au valida [tutto|pacchetto]`: duplicate ids, missing languages, mismatched placeholders, unknown conditions, empty variants, length per channel, UTF-8, rule consistency.
- `ctx.depth` and `ctx.intensity` in the context, conditions `depth`, `intensityMin`, `intensityMax`; the `S` factor of the weight (`Engine.StyleFactor`) prefers the chosen depth without ever excluding.
- `Tests/check_api.py`: compares the functions and events used with the Forever API dump (skipped with a warning if the dump is missing), with justified exceptions; wired into `run_tests.py`.
- `AzerothUnspoken/PACK_FORMAT.md` guide rewritten for schema v2; the example pack uses the new format.
- A language registered by a pack after loading stays the one chosen by the user (issue #7).
- Tests: `TestSchema` and `TestValidator`; steps 17–19 in `docs/G1_checklist.md`.

### Documentation (task D1)

- Professional `README.md` (English) and `README.it.md` (Italian version).
- `docs/adr/`: fourteen project decisions (ADRs) in MADR format, with an index.
- `docs/ARCHITECTURE.md`: modules, flow of an event, data, extension points, with Mermaid diagrams.
- `CONTRIBUTING.md`, this `CHANGELOG.md` and `docs/README.md` (documentation index).

### Step S2: private narrator and Chat Gateway

- Private narrator (`UI/NarratorFrame.lua`): non-blocking, movable frame, with adjustable duration, opacity and text size, recent history (in memory only), phrase editor and immediate pause.
- Chat Gateway (`Integration/ChatGateway.lua`) with the modes `PRIVATE` (default), `PREVIEW`, `CONFIRM_TO_SEND` and `AUTO_ONLY_IF_ALLOWED`; editing of the proposal before sending; channel choice (`/s`, `/e`, party, raid, guild, instance); flood protection; sending from a gesture only through `Gateway:PlayerAction`.
- Voices (`speaker`) on phrases: `narrator`, `inner`, `character`, `npc`; only the first two can become proposals.
- `Systems/Director.lua`: hook point for the future Narrative Director (intensity, immediate pause, modules).
- First-run wizard (`UI/Wizard.lua`), skippable, reopened with `/au benvenuto`.
- Settings panel: language, intensity, style depth, pause between phrases, chat and channel, narrator frame, modules and presets.
- Commands: `/au chat` (alias `/au modo`), `canale`, `intensita`, `profondita`, `pausa`, `narratore [cronologia|reset|pulisci]`, `benvenuto`, `annulla`.
- `AZEROTHUNSPOKEN_PAUSE` key binding (immediate pause) in `Bindings.xml`.
- Tests: `TestChatGateway`, `TestNarrator`, `TestDirector`; the simulated client has widgets with state.
- In-game test checklist: `docs/G1_checklist.md` (in Italian).

*Changed*
- Compared with the prototype, nothing goes to public chat without a choice by the user: the default output is the private narrator.
- `output.mode` is replaced by `chat.mode` (schema migration from 1 to 2: `self` becomes `PRIVATE`, every other mode becomes `CONFIRM_TO_SEND`; `autoPublicSay` is forced to `false`).
- The prototype's automatic emotes became proposals to be confirmed.

*Removed*
- Automatic publishing to chat as the default behavior.

### Step S1: foundations

- `AzerothUnspoken/` structure (`Core/`, `Engine/`, `Systems/`, `Integration/`, `UI/`, `Data/`) starting from the "Voci di Azeroth" prototype (archived in `archive/`), with its 374 phrases in Italian and English.
- `Core/Compat.lua`: capability matrix (`AVAILABLE`, `MISSING`, `RESTRICTED`), secret values, protected event registration, Forever detection.
- `Core/EventBus.lua`: events normalized into envelopes, with deduplication and an anti-cascade queue.
- `Core/Config.lua`: defaults, merge, validation and migrations by `schemaVersion`.
- `Core/Diagnostics.lua` and `/au debug [full|trace]`: client capabilities, latest events, intercepted errors.
- `/au` and `/unspoken` commands; "speak" button and key binding.
- Optional integration with Total RP 3 (profile name).
- Example pack `AzerothUnspoken_Example`.
- Offline tests with a Lua interpreter and a simulated client (`Tests/`).
- WebStorm configuration (`.luarc.json`) and EmmyLua annotations.
- Technical references ([docs/REFERENCES.md](docs/REFERENCES.md)).

*Changed*
- The language is saved with the packs' short code (`it`, `en`).
- Default global pause set to 45 seconds (previously 40) and the anti-repetition window to at most 30 phrases (previously 40).

### Known limits

- **Tested only outside the game**: tests in the real client (G1, G2, G3) are postponed. See [docs/G1_checklist.md](docs/G1_checklist.md) (in Italian).
- The Narrative Director's numbers (budget, category pauses, style weights) are assumptions to be tuned in game (G1, steps 27–31).
- In the settings, the modules Personal, World, Memory, Relationships, NPC Dialogues, Stories, Chat Proposals and Total RP 3 take effect; Social and Audio are placeholders.
- **Story arcs (S9) have not been tested in the real client**: whether `C_Map` gives the uiMapID of the starting zone (the English name is the fallback), the familiarity thresholds, the levels and the step waits (assumptions), the look of the "Storie" tab, the tone of the 33 lines (G1, steps 84–92).
- **NPC Alive (S8) has not been tested in the real client**: the names of the Blizzard windows that the frame avoids, `GetRect`, the `npc` unit during interactions, the registry's `npcID`s (few, from Classic Era, unverified; [issue #36](https://github.com/Finland6738/azeroth-unspoken/issues/36)) and the tone of the 169 lines are to be tested in game (G3, `docs/G1_checklist.md`).
- The Total RP 3 traits (`PSYCHO_MAP`) use the IDs of the default traits of the installed TRP3 and have not been tested with a real profile. Almost all base phrases have affinity tags since S7 (plus the 26 of `base_soul`); the thresholds and factors of the Character Soul (×1.6, ×0.6, inner voice, irony) are assumptions to be tuned in game (G1, steps 32–38).
- The `uiMapID`s, `instanceID`s and `npcID`s in `Data/Places.lua` and `Data/NPCs.lua` come from Classic Era and are not verified in Forever ([#36](https://github.com/Finland6738/azeroth-unspoken/issues/36)).
- The tone, rhythm and frequency of the phrases are not verified: the tests check structure, counts and rules, not literary quality (G2, G3).
- A pack that registers a key that already exists (script, NPC, place, arc) replaces the base one without a warning ([#69](https://github.com/Finland6738/azeroth-unspoken/issues/69)).
- License to be defined ([issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2)).

[Unreleased]: https://github.com/Finland6738/azeroth-unspoken/commits/main
