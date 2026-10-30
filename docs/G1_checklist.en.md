# In-game checklist: R0 measurements, API probe, R1 packs, R3b the world and R4b player relationships (English)

This is the English counterpart of the section **R0** of the in-game checklist [G1_checklist.md](G1_checklist.md), which is written in Italian for the Italian-speaking tester and keeps every other part of the checklist. Same steps, same numbers (R0.1 to R0.13). It belongs to issues #81 (profiling and Director counters) and #82 (probing the vision APIs), phase R0 of the roadmap #131.

**What it is for.** Every number about the speed and memory of the addon was measured outside the game, and many client functions (weather, day and night, quests, reputation, subzones...) are in the API dump but **nobody has verified that they work in the real client**. These steps collect the real numbers and the list of confirmed APIs. The owner decisions D3 (memory and time budget), D5 and D14 are taken from them.

**How it works.** Two commands. They **do not write to chat, do not save anything and never show** other players' names, your character's name or coordinates:

- `/au prof` measures the addon: the time to pick a line (`PickEntry`) and to read the context (`BuildContext`), memory, and how many times the narrator spoke or stayed silent (and why) in this session. `/au prof reset` clears the counters.
- `/au probe` tries the APIs and prints one line each: `AVAILABLE` (the call works), `MISSING` (it does not exist) or `RESTRICTED` (the client hides or refuses it), with a sample value. The **first** run also starts listening to the events (weather, day and night, subzones, quests...) until you restart the game: later runs show **how many times** each event fired. `/au probe reset` clears the counts, `/au probe stop` stops listening.
- To **copy** a result, use `/au prof copy` or `/au probe copy`: they open a box with the text already selected; press **Ctrl+C**, then paste (**Ctrl+V**) into the issue. Lines printed in chat are hard to copy.

The reports are always in **English**, whatever language you chose: they are meant to be pasted into an issue. Read them once before pasting: if you find another player's name, **that is a bug to report** (and delete it from the text).

**How long.** About 30 minutes, plus the waiting time (memory after an hour of play, dusk...). You can do the steps on different days: each step stands alone. **Do only the steps you get the chance to do:** if it does not rain where you play, skip R0.7 and write "no rain".

- **R0.1 · First measurement, right after login.** Enter the game with the test character, wait about a minute, then type `/au prof reset` and straight after `/au probe`.
    - **Expect:** a few confirmation lines, then a list of lines starting with `[AVAILABLE]`, `[RESTRICTED]` or `[MISSING]`, and `Summary: ...` at the end. No red error.
    - **Report:** nothing yet: this step starts listening to the events. If an error appears, a screenshot.
- **R0.2 · Memory and timings after login.** Play 5 minutes as usual (walk, open a map, fight), then type `/au prof copy` and copy the text with Ctrl+C.
    - **Expect:** lines `PickEntry: n=..., p50 ... ms, p95 ... ms`, `BuildContext: ...`, `Memory (this addon): ... KB now` and a `Director:` block with the counters.
    - **Report:** **the whole text**. If it says `Timing: debugprofilestop MISSING` or `Memory ... not read`, that is an important result: report it as it is.
- **R0.3 · Loading time (by hand).** With a stopwatch (or a phone): measure the seconds from pressing **Enter World** to the world appearing. Do it **3 times with the addon on** and **3 times with it off** (from the AddOns list on the character screen; turn it on again afterwards).
    - **Expect:** a small difference.
    - **Report:** the six times in seconds, and whether the disk is an SSD or a hard disk.
- **R0.4 · In a capital** (Orgrimmar, Stormwind, Ironforge, Darnassus...: the busiest you have). Walk for 10 minutes among the crowd, then `/au probe copy` and, as a second copy, `/au prof copy`.
    - **Expect:** the `/au prof` values go up a little. The `event ZONE_CHANGED...` lines may have fired.
    - **Report:** the two texts, and **the name of the city** in the issue (not in the text).
- **R0.5 · In the open world.** Walk for 10 minutes across at least two or three subzones (the names shown at the top of the screen). Then `/au probe copy`.
    - **Expect:** `event ZONE_CHANGED` (and/or `ZONE_CHANGED_INDOORS`, `ZONE_CHANGED_NEW_AREA`) with `fired N times`; `C_AreaPoiInfo.GetAreaPOIForMap` with a number of points of interest.
    - **Report:** the text, and which subzone banners appeared (and whether a new discovery made something different happen: `MAP_EXPLORATION_UPDATED` events).
- **R0.6 · In an instance** (any dungeon, even alone). Right after entering, `/au probe copy`; after a fight, `/au prof copy`.
    - **Expect:** `UnitPosition` with `[instance: party]`: `RESTRICTED ... returned nil` (coordinates hidden) or `AVAILABLE`.
    - **Report:** the `UnitPosition` line and both texts; whether anything stalled during the fights.
- **R0.7 · In rain or snow.** Go where it rains (or snows). Type `/au probe` and read `C_Weather.GetCurrentWeather` and `event WEATHER_CHANGED`. Wait for it to stop, then `/au probe copy`.
    - **Expect:** `-> {intensity=..., type=...}` with a `type` number that changes between clear sky and rain/snow; `Enum.WeatherType` with the type names (`Clear=0, Rain=1...`).
    - **Report:** the text **in the rain** (both at its start and its end) and **under a clear sky**, and what the weather was in each. If `C_Weather` is `MISSING` or `RESTRICTED`, report that.
- **R0.8 · At dusk or dawn.** Stay in a quiet place for a quarter of an hour around dusk (18:00-20:00 game time) or dawn (05:00-07:00), with `/au probe` before and after, then `/au probe copy`.
    - **Expect:** `event DIEL_CYCLE_CHANGED` with `fired N times` and `IsDayTime true/false` changing; `C_DateAndTime.IsDayTime` and the game time `game time HH:MM`.
    - **Report:** the text; the **game time** at which the event fired (the text shows it). If nothing fired, report that.
- **R0.9 · Quests and reputation.** With at least one quest in the log: `/au probe`; accept a new quest and turn one in; `/au probe copy` again. Then select an NPC and a monster, and repeat `/au probe` for each.
    - **Expect:** `C_QuestLog.GetInfo` with the quest fields (`questID=...`; the title is only a length); `event QUEST_ACCEPTED` and `QUEST_TURNED_IN` with their `payload`; `C_Reputation.GetFactionDataByIndex` with the fields (is there a `reaction`?); `UnitReaction ... an index from 1 to 8: yes`.
    - **Report:** the text. If `UnitReaction` says `NO` or the fields are missing, that is an important result.
- **R0.10 · Inn and flight.** Go into an inn (until the resting icon appears) and take a flight (talk to a flight master and leave). Then `/au probe copy`.
    - **Expect:** `event PLAYER_UPDATE_RESTING` and `event TAXIMAP_OPENED` with `fired N times`; `UnitOnTaxi` with `true` if you type it **during** the flight.
    - **Report:** the text; whether `UnitOnTaxi` fails to say `true` while flying.
- **R0.11 · In combat.** With an animal, type `/au probe` **while fighting** (then finish the fight and repeat).
    - **Expect:** `C_AddOns.LoadAddOn: ... [in combat]` and `[out of combat]` in the two texts, and the `C_Secrets...` lines (`-> true/false`) and `C_RestrictedActions...` (`Combat=1` inside, `Combat=0` outside).
    - **Report:** the `LoadAddOn`, `C_Secrets` and `C_RestrictedActions` lines in both cases.
- **R0.12 · After an hour of play.** One hour after login, type `/au prof copy`.
    - **Expect:** `Memory samples (session time): ...` with the sample from the start and the one from now; `spoken per session hour: ...`.
    - **Report:** the text, and whether the game became slower.
- **R0.13 · Sending the results.** Open a new issue (<https://github.com/Finland6738/azeroth-unspoken/issues/new/choose>) with the **Bug report** form: title `[Bug] R0 in-game results` (it is not a bug: the form is the one we have). In **What happened?** write "Not a bug: R0 measurements (#81, #82)". In **Steps to reproduce** write the places and moments of the steps you did. In **Lua errors or diagnostics** paste the texts (one below the other, each with a heading such as "R0.4 capital: probe") of the steps you did. **No other players' names** (and, if you wish, not your character's name either); never paths from your PC.
    - **Expect:** the reports have no names, but read them once more.
    - **Report:** the link of the issue.

## R1: language and regional packs (issues #85 and #101)

Same steps as the section **R1** of [G1_checklist.md](G1_checklist.md) (R1.1 to R1.7).

**What it is for.** The addon is now one download with several folders: the lines of each language are in a folder of their own (`AzerothUnspoken_enUS`, `AzerothUnspoken_itIT`) and the lines tied to one continent in others (`AzerothUnspoken_Kalimdor`, `AzerothUnspoken_EasternKingdoms` and their `_enUS`/`_itIT`). The addon loads by itself **only the chosen language** and **only the continent you are on**, outside combat, with `C_AddOns.LoadAddOn`: nobody has tried it in the real client yet. `/au packs` shows the state of every folder: `loaded`, `not loaded (not needed now)`, `not installed`, `could not be loaded (reason)`; its first line gives the language of the lines, the region and the counters (loads, builds, drops, waits for combat).

- **R1.1 · Installation and first login.** Copy **every** `AzerothUnspoken*` folder of the download into `AddOns` (delete the old ones first). On the character selection screen open **AddOns**: the language and continent folders must be ticked and marked *Load on demand*. Enter the game in **Kalimdor** with **English** chosen (`/au language en` and `/reload` if needed) and type `/au packs`.
    - **Expect:** no red error; `AzerothUnspoken_enUS ... loaded`, `AzerothUnspoken_itIT ... not loaded`; `region kalimdor`; `AzerothUnspoken_Kalimdor` and `AzerothUnspoken_Kalimdor_enUS` `loaded`, the `EasternKingdoms` folders `not loaded`.
    - **Report:** the lines of `/au packs`; if a folder says `could not be loaded`, the reason in brackets.
- **R1.2 · Memory at login.** After a minute type `/au prof copy`.
    - **Expect:** the memory (it now adds up the addon and the loaded folders).
    - **Report:** the text.
- **R1.3 · Changing language and reloading.** In the settings click **Phrase language** until **Italiano**.
    - **Expect:** the windows switch to Italian at once; a chat message explains that the lines come with the next reload; a box with **Reload now** and **Later** appears, and the panel shows a **Reload now** button. Before clicking, `/au muse` still gives an English line. Click **Reload now**: after the reload `/au packs` shows the Italian folder loaded and the English one not loaded (the words are Italian now), and the lines are Italian.
    - **Report:** whether the box appears (or only the chat message), whether the button reloads, the lines of `/au packs` afterwards.
- **R1.4 · Changing continent.** Out of combat take a boat, a zeppelin or a portal to the **other continent**. On arrival type `/au packs`; then go back and repeat.
    - **Expect:** on arrival `region eastern` (or `kalimdor`) and the two folders of the new continent `loaded`; on the way back the loads do not grow (the folders stay loaded), builds and drops do. No freeze beyond the loading screen.
    - **Report:** the lines of `/au packs` both ways; if you noticed a freeze, when and how long.
- **R1.5 · Combat.** During a fight type `/reload`. When the fight is over, type `/au packs`.
    - **Expect:** no error; after the fight the language folder is `loaded` and the waits for combat counter is at least 1. If the fight ends before the game is ready again, the counter may stay at 0: note it.
    - **Report:** the first line of `/au packs`.
- **R1.6 · A missing folder.** With Italian chosen, untick `Azeroth Unspoken - Italian phrases` on the character selection screen and enter.
    - **Expect:** once in chat, the message that the folder `AzerothUnspoken_itIT` could not be loaded `(DISABLED)` (in Italian) and that the lines stay in English; the lines come in English, the windows stay Italian; no red error. Tick it again afterwards.
    - **Report:** the exact message (the reason in brackets).
- **R1.7 · Memory after both continents.** After visiting both continents (R1.4), type `/au prof copy`.
    - **Expect:** the memory grows little compared with R1.2 (today the regional packs are small).
    - **Report:** the text.

## R4b: relationships with other players (issues #106, #107, #108, #109 and #110)

Same steps as the section **R4b** of [G1_checklist.md](G1_checklist.md) (R4b.1 to R4b.9).

**What it is for.** The character remembers the other players you put in your list: a person's detail now has two parts, **"What you chose"** (axes, label, feelings, note, tags: only you change them) and **"What the addon observed"** (how many encounters, of which kind, the last five facts with place and date, never any text). You need **a second player** (a friend, or another copy of the game of yours) and, if possible, a group. All of it is tested outside the game with a fake API; here we check that the real client sends the right events (`GROUP_ROSTER_UPDATE`, `UnitFullName` on companions, emotes with a recipient, `C_Map.GetBestMapForUnit`) and that the window, now taller, fits on screen.

- **R4b.1 · Adding a person.** Open `/au relationships`, the **People met** tab (or type the name in **Add a player**), then open the person.
    - **Expect:** two sections, "What you chose" and "What the addon observed" (at first "Nothing observed yet"); at the bottom **Forget observations**, **Remove person** and **Back to the list**; the whole window fits on screen and no texts overlap.
    - **Report:** anything that leaves the edges or overlaps (resolution and UI scale).
- **R4b.2 · The group.** Join a group with the person (or have them join). Check the detail again.
    - **Expect:** **Encounters: 1 (group 1)**, "Last seen" today and a fact "group (zone name)". If you leave and rejoin at once, the count does **not** go up (same kind within ten minutes).
    - **Report:** the text of the section and the zone shown.
- **R4b.3 · Duel, invite, trade, emote.** Have them request a duel (decline it), invite you, open a trade and wave at you with an emote aimed at you (`/wave` on your character).
    - **Expect:** each kind shows in the list of encounters. An emote **not** aimed at you does not count. Someone who is **not** in the list appears nowhere (not even as a suggestion, except group and trade).
    - **Report:** which kinds were counted; whether an emote aimed at you was not recognised.
- **R4b.4 · The target.** Target the person. Then, in the window, turn on **Recognise on target** and repeat (clear the target and select it again).
    - **Expect:** the target counts as an encounter (kind "target") even with the option off; only with it on can the narrator say a recognition line, **at most once per person per session**.
    - **Report:** whether the line appeared in the private narrator and how many times.
- **R4b.5 · Recognition.** `/au chance relation_player 100`, then leave the group and join again with the person (new session: `/reload` first).
    - **Expect:** a line from the **private** narrator (never in chat). If you chose a feeling (R4b.6) the line mirrors it; with more than nine days since the last time, it sometimes recalls the absence.
    - **Report:** the line and whether it makes sense for the person.
- **R4b.6 · Feelings.** In the detail choose a feeling (**trust**, **liking**, **wariness**, **fear**, **resentment**, **gratitude**) and, if you like, **Typical axes**. Also try the label **ally** with the label button.
    - **Expect:** the feeling changes neither the axes nor the label by itself; **Typical axes** does, and you can adjust the sliders afterwards. With wariness, fear or resentment no warm line ("so good to see you again") comes out for that person.
    - **Report:** one line per feeling.
- **R4b.7 · Forget or remove.** **Forget observations** (click, then confirm), then **Remove person**.
    - **Expect:** the first only zeroes the encounters and facts; note, label, feelings and axes stay. The second deletes the person.
    - **Report:** whether the two actions are easy to confuse.
- **R4b.8 · A fight together.** Fight with the person in a group.
    - **Expect:** the detail shows "fought together 1" (it does not raise the number of encounters).
    - **Report:** the text.
- **R4b.9 · Export.** Press **Export**.
    - **Expect:** one line per person with **Encounters: N (group 1, ...)**, feeling, tags and note; no chat text.
    - **Report:** the text.

## R3b: the world the client describes (issues #92, #93, #94, #95 and #121)

Same steps as the section **R3b** of [G1_checklist.md](G1_checklist.md) (R3b.1 to R3b.9).

**What it is for.** The narrator now reads the weather, day and night, the subzone, quests, reputation, rest and flights. **None of these APIs has ever been tried in the client**: the addon always reads them behind a guard and, if they do not answer, stays silent on that subject. This test tells whether they answer, and with which values. First run `/au probe` (section R0) and keep the result: the real values of the weather, `DIEL_CYCLE_CHANGED`, quests, reputation and flights are there. The **World** line of `/au debug` shows what the addon reads now (weather, day, rest, quests, flight, landmarks).

- **R3b.1 · The weather.** With `/au probe` in rain, in snow and under a clear sky (for example Dun Morogh or Durotar, whichever weather you find) look at `C_Weather.GetCurrentWeather` and `Enum.WeatherType`. Then `/au debug` and read **World: weather ...**.
    - **Expect:** `rain` in rain, `snow` in snow, `clear` under a clear sky. If you see `unknown` while the weather has visibly changed, the names of the values of `Enum.WeatherType` are not the ones expected: report them.
    - **Report:** the `type` and `intensity` in the three cases, the names in `Enum.WeatherType`, and what `/au debug` shows.
- **R3b.2 · The weather changes.** `/au chance weather_change 100`. Stay somewhere open until the weather changes (or change zone to another weather).
    - **Expect:** after a few seconds a line from the narrator about the new weather (rain beginning, snow, the sky clearing), **not** in the first seconds after a loading screen (the zone speaks, and its line can name the weather you find) and never in combat. A shower that comes and goes in a few seconds makes no line.
    - **Report:** does `WEATHER_CHANGED` arrive? how many times? the line, and whether it names a different weather than the one you see.
- **R3b.3 · Day and night.** `/au chance dawn 100` and `/au chance dusk 100`. Wait for a dawn and a dusk (or watch the hour with `/au probe`).
    - **Expect:** one line at dawn and one at dusk, **one only** per change. In `/au probe`, `C_DateAndTime.IsDayTime` changes at the same moment as `DIEL_CYCLE_CHANGED`.
    - **Report:** at what game hour `DIEL_CYCLE_CHANGED` arrives at dawn and at dusk, and whether `IsDayTime` changes with it. Are the addon's dawn and dusk hours (two hours after and before the change) right, or too long?
- **R3b.4 · Subzones.** `/au chance subzone_enter 100` and `/au chance landmark 100`. Walk into a village (for example Goldshire and the Lion's Pride Inn, or Razor Hill) and go back and forth along a border.
    - **Expect:** a line entering a new subzone; none if you leave and come back to the same one within ten minutes; **one only** if the border flickers. For a place with a known name the line is about the place (inn, village, graveyard...) and shows the name the client gives.
    - **Report:** do `ZONE_CHANGED` and `ZONE_CHANGED_INDOORS` arrive? with `/au place` compare the subzone name with `Data/Landmarks.lua`: list the names that do **not** match. Also check `/au packs`: the pack loads must **not** go up when you change subzone (only the continent does).
- **R3b.5 · Quests.** Accept a quest, finish an objective, finish it all, hand it in. Then abandon one and take it again three times, and hand it in.
    - **Expect:** a line when an objective is finished and when the quest is ready (not on every kill); a line at hand-in; after the repeated tries (three acceptances in the same session) a more relieved line. No quest text in any line, and no quest data in the saved files.
    - **Report:** the arguments of `QUEST_ACCEPTED` and `QUEST_TURNED_IN` (with `/au probe`), whether `QUEST_LOG_UPDATE` arrives in bursts, and whether the lines appear at the right moment.
- **R3b.6 · Reputation.** Gain reputation until a standing changes (for example Neutral to Friendly). Lose it, if you can, until it drops.
    - **Expect:** a line at the change of standing (and at a drop); none for points gained inside the same standing. No faction name in the line.
    - **Report:** `FactionData.reaction` for the standing (1 to 8? with `/au probe`), how often `UPDATE_FACTION` arrives, and the lines.
- **R3b.7 · The inn.** `/au chance rest_enter 100`. Walk into an inn (the resting icon appears).
    - **Expect:** a line when you enter; **no** line if you log in already inside the inn or after a loading screen into a city. In an inn the line is about being indoors, in a city about the streets.
    - **Report:** does `PLAYER_UPDATE_RESTING` arrive? how many times? the line, and whether `IsIndoors` is true in the inn.
- **R3b.8 · The flight.** `/au chance journey 100`. Take a flight (gryphon, wyvern...): start, wait, arrive. Then get feared or stunned by a monster **outside** a flight.
    - **Expect:** a line at the start and one at the arrival (more relieved if the flight was long, two minutes or more); **no** line for the fear or the stun. A flight that crosses several zones does not end halfway.
    - **Report:** the order of the events (`PLAYER_CONTROL_LOST`, `UnitOnTaxi`, `PLAYER_CONTROL_GAINED`) with `/au probe` and `/au debug` during the flight, and whether `UnitOnTaxi` is true for the whole flight.
- **R3b.9 · Silence.** In combat, with the narrator paused or at intensity 0, and with the **World** module off (settings panel).
    - **Expect:** none of these lines in combat; none at intensity 0; with the World module off, no line about weather, dawn, dusk, subzone, places or flights (quests, reputation and rest stay: they are personal).
    - **Report:** any line that comes out when it should not.

## Summary form (copy and fill in)

```
R0 first measurement .... memory (KB) ______  PickEntry p50/p95 ______  BuildContext p50/p95 ______  debugprofilestop? ___
R0 loading .............. with addon (s) ______  without addon (s) ______
R0 capital / open world . capital ______  subzones: ZONE_CHANGED events? ___  POIs (number) ______
R0 instance ............. UnitPosition: AVAILABLE/RESTRICTED? ___  prof inside ok? ___
R0 weather .............. Enum.WeatherType ______  type in rain ___  in snow ___  clear ___  WEATHER_CHANGED fires? ___
R0 day and night ........ DIEL_CYCLE_CHANGED fires? ___  game time ______  IsDayTime changes? ___
R0 quests / reputation .. QUEST_ACCEPTED ___  QUEST_TURNED_IN (payload) ______  reaction 1-8? ___
R0 inn and flight ....... PLAYER_UPDATE_RESTING ___  TAXIMAP_OPENED ___  UnitOnTaxi true in flight? ___
R0 combat ............... LoadAddOn in combat ______  Combat=1 inside? ___
R0 after an hour ........ memory (KB) ______  slowdowns? ___
R0 other players' names . in the reports? (must be NO) ___  issue ______
R1 login ................ folders "load on demand"? ___  /au packs: enUS loaded ___ itIT not loaded ___ region ______
R1 memory ............... at login (KB) ______  after both continents (KB) ______
R1 language ............. message ___  Reload box? ___  after /reload Italian loaded, English not? ___
R1 continent ............ on arrival region ______  back: loads unchanged? ___  freezes? ___
R1 combat ............... /reload in combat: errors? ___  waits for combat ______
R1 missing folder ....... message (reason) ______  lines in English? ___  red errors? (must be NO) ___
R4b window ............... sections ok? ___  fits on screen? ___ (resolution/scale ______)
R4b encounters .......... group ___  trade ___  duel ___  invite ___  emote ___  target ___  fought together ___
R4b recognition ......... one line per session? ___  private? ___  mirrors the feeling? ___
R4b feelings ............ no warm line with wariness/fear/resentment? ___  ally ok? ___
R4b forget/remove ....... two distinct actions? ___  export ok? ___
R3b weather ............. Enum.WeatherType ______  type rain ___ snow ___ clear ___  unknown? ___  WEATHER_CHANGED fires? ___
R3b day and night ....... DIEL_CYCLE_CHANGED at dawn (hour) ______  at dusk (hour) ______  IsDayTime together? ___
R3b subzones ............ ZONE_CHANGED ___  ZONE_CHANGED_INDOORS ___  names that differ in Landmarks ______  packs loaded? (must be NO) ___
R3b quests .............. QUEST_ACCEPTED (arguments) ______  QUEST_TURNED_IN ______  lines at the right moments? ___  many tries? ___
R3b reputation .......... reaction 1-8? ___  one line per change of standing? ___  UPDATE_FACTION in bursts? ___
R3b inn / flight ........ PLAYER_UPDATE_RESTING ___  rest_enter only on entering? ___  flight: CONTROL_LOST/UnitOnTaxi/CONTROL_GAINED ______  fear = no flight? ___
R3b silence ............. none in combat? ___  World module off? ___
```
