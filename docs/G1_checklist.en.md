# In-game checklist: R0 measurements, API probe and R1 packs (English)

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
```
