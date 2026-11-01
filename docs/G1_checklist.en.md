# In-game checklist, English counterpart: R0 to R4, R3c and U-wizard (measurements, API probe, packs, selection, world, players, emotions, monologues, consents, first-run guide, windows)

This is the English counterpart of the sections **R0, R1, R3a, R3b, R4b, R4b2, R4, R3c and U-wizard** of the in-game checklist [G1_checklist.md](G1_checklist.md), which is written in Italian for the Italian-speaking tester and keeps every other part of the checklist. Same steps, same numbers. It belongs to issues #81 (profiling and Director counters) and #82 (probing the vision APIs), phase R0 of the roadmap #131.

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

## R4b2: proximity and a shared list (issues #113 and #114)

Same steps as the section **R4b2** of [G1_checklist.md](G1_checklist.md) (R4b2.1 to R4b2.11).

**What it is for.** Two options, **both off by default**. **Recognise nearby**: nameplates and mouseover can let the narrator recognise a person **already in your list** (and, with the consent to read other players' Total RP 3 profiles, suggest people who have one), for this session only, adding and saving nothing. **Share with the account**: your **choices** about people (not the observations) live in the account and all your characters use them. You need **a second player** (or crowds around you, in a city) and, for sharing, **two characters** of the same account. All of it is tested outside the game with a fake API; here we check that the real client sends the events and that the window, now taller, fits on screen.

- **R4b2.1 · Off by default.** Read the relationships line of `/au debug`: it must say **proximity false** and **shared list off**. Walk through a busy city and mouse over someone. **Expect:** no recognition line, nobody new; the narrator behaves as before. **Report:** any change with the option off.
- **R4b2.2 · Nameplates.** Add a friend (or your second character) to the list, then turn on **Recognise nearby** (the window, or `/au relationships proximity on`) and `/au chance relation_player 100`. Let them see you with player nameplates on, also at a distance. **Expect:** one recognition line in the **private** narrator (never in chat), **once per person per session**, at most one proposal a minute; in the person's detail the **encounters do not go up** and no new fact appears. **Report:** whether the line appeared, after how long, and whether `/au debug` shows **proximity true (1 proposed, ...)**.
- **R4b2.3 · Mouseover.** With the option on, mouse over another person **in your list** (a 3D model in the world, not only the nameplate). **Expect:** the same behaviour. **Report:** whether `UPDATE_MOUSEOVER_UNIT` fails to arrive in some cases (interface frames, group).
- **R4b2.4 · Strangers.** With the option on, walk past people **not** in your list. **Expect:** nothing at all: nobody added, no suggestion (except step 5), no text. Turn on **Register by itself**: even so nobody joins the list. **Report:** anyone who appeared by themselves.
- **R4b2.5 · Total RP 3 profiles.** With Total RP 3, the consent to other players' profiles on (`/au who trp3 on` or the settings panel), and the profile of someone **not in your list** in its registry, walk close to them with the option on. **Expect:** they appear in **People met** as a suggestion ("near you (Total RP 3 profile)"); they are **not** added; gone next session. Without the consent, nothing. **Report:** whether they appear, and whether `UnitFullName` works on a nameplate unit.
- **R4b2.6 · Secret identities.** Where the game hides names (a restricted instance, if you find one), with the option on. **Expect:** no line, no Lua error; `/au debug` counts the secret identities (**secret**) with no names. **Report:** any error and where.
- **R4b2.7 · The limit.** Walk among several people **in your list** (if you have more than one). **Expect:** at most one proposal a minute and ten per session; someone already recognised costs nothing; `/reload` starts over. **Report:** whether 60 seconds feels too short or too long.
- **R4b2.8 · Shared list: turning it on.** In the window press **Share with the account** (or `/au relationships share on`). **Expect:** a **warning** (privacy and role play) in a confirmation dialog and in the window; the button says "off, read first" and then "off, confirm"; only the second click, after a couple of seconds and within 30 (issue #178), turns it on. The window fits on screen with three rows of options. **Report:** the warning text if it is cut off or overlaps.
- **R4b2.9 · Sharing.** With character A add a person and write a note; then `/au relationships share all` for the people A already had. Log in with character B (same account). **Expect:** B sees A's people and **choices** (note, axes, feelings) but **not** A's encounters; B's first meeting with the person creates its own. A change made by B shows in A after switching back. **Report:** whether the account data saves and reloads between characters (`AzerothUnspokenDB.lua`).
- **R4b2.10 · The choices button.** In a person's detail press **Choices: shared** / **Choices: this character**. **Expect:** "this character" keeps a copy of the choices and stops following the shared ones; "shared" puts them back in the account (replacing what was there). With the shared list off the button is absent. **Report:** whether the button fits in the window and the text is clear.
- **R4b2.11 · Turning it off without losing anything.** `/au relationships share copy`, then `/au relationships share off`, then `/reload`. **Expect:** the character keeps its choices; the account file keeps the list (`sharedPlayers`); `share on` twice brings it back as it was. `/au relationships reset shared` erases it (with confirmation). **Report:** any data lost.

## R3a: variety of the selection (issues #89, #90 and #91)

Same steps as the section **R3a** of [G1_checklist.md](G1_checklist.md) (R3a.1 to R3a.3).

**What it is for.** The narrator now prefers the lines of the place where they exist, does not come back at once to the same theme, image or voice, varies the gesture of the emotes and keeps fights under about four lines in ten. All of it is measured outside the game on a simulated session; here we check that the rhythm feels right in the real game. One hour of normal play (quests and fights) and `/au prof` are enough.

- **R3a.1 · One hour of play.** Play one hour without changing the settings, then type `/au prof`.
    - **Expect:** `quota:combat` among the reasons of silence a few times; death, resurrection and a new level always speak; entering a new zone, exploration sometimes speaks.
    - **Report:** the lines of `/au prof` about categories and reasons; whether the narrator felt too quiet or too talkative in fights.
- **R3a.2 · Lines of the place.** Enter Elwynn Forest (or a zone of your region with lines of its own) and ask `/au muse` or wait for the arrival.
    - **Expect:** the first lines are about the place; after a few, the general ones come back too.
    - **Report:** the lines seen and whether they fit the place.
- **R3a.3 · The emotes.** With `/au mode confirm` and many emotes in the narrator, look at the gestures before the quoted lines.
    - **Expect:** varied gestures that fit the tone; "says" and "murmurs" rare.
    - **Report:** a gesture that clashes with the line (copy the text).
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

## R4: intensity personality and emotions (issues #96, #97 and #98)

Test with a character that had chosen a personality before this version, if you have one.

- **R4.1 · The profile conversion.** Log in with a character that had an archetype or chosen traits. Type `/au soul list`.
    - **Expect:** the traits became intensities from 0 to 100 that mean the same (a stoic has stoicism 80, a devout one spirituality 90...); irony, curiosity, inner voice, topics to avoid and the consent to Total RP 3 stayed. No error in `/au debug`.
    - **Report:** the summary, and whether anything you had chosen was lost.
- **R4.2 · The sliders.** `/au soul`. Drag the slider of two traits, then press the **x** of one. Change archetype with the button at the top.
    - **Expect:** the value changes while you drag and is saved when you let go; two-sided traits say the side (cynical, balanced, idealist...); the x makes the trait "not set" again. After an edit the archetype shows as "custom (from ...)". The window fits the screen and the sliders are easy to grab.
    - **Report:** whether the slider follows the mouse at your interface scale (______), whether the window goes off screen, and any cut text.
- **R4.3 · The mood after a death.** `/au chance memory_return 100`. Die in a zone, resurrect, leave the zone and come back after at least ten minutes. Then type `/au emotion` and `/au debug`.
    - **Expect:** after the death `/au emotion` shows a worried or melancholic mood, with "last cause death"; on the return the recall line is **not** cheerful or joking (no "Hello, trees!"): it is cautious, determined or bitter. The **Emotion** line of `/au debug` shows the same emotions.
    - **Report:** the lines of the return, and the mood `/au emotion` shows after the death, on the return and half an hour later.
- **R4.4 · The inn and the passing time.** After R4.3, walk into an inn (`/au chance rest_enter 100`). Then log out and back in after an hour or more.
    - **Expect:** at the inn the tension drops and the mood turns serene; at the new login the fast emotions are gone and only the slow ones (melancholy, nostalgia...) remain, weaker. In the character's saved file (`AzerothUnspokenCharacterDB.lua`, section `emotion`) there are only numbers and a time, no text.
    - **Report:** `/au emotion` before and after, and the `emotion` section of the saved file.
- **R4.5 · The character shapes the mood.** Choose the `scholar` archetype (very stoic) and die again; then the `avenger` archetype (vengeful) and die again.
    - **Expect:** the stoic is shaken less (lower values in `/au emotion`); the vengeful one gets angrier (higher furious) and may have harder lines.
    - **Report:** the values of `/au emotion` in both cases.
- **R4.6 · Switching emotions off.** `/au emotion off` (or the **Emotions** module in the panel). Die and come back again.
    - **Expect:** `/au emotion` says "off", `/au debug` shows "Emotion: off", the narrator works as before and nothing is left in the `emotion` section of the saved file. `/au emotion on` turns them back on.
    - **Report:** any line that seems tied to the mood while emotions are off.

## R3c: monologues and composite situations (issues #99 and #100)

No new API: this checks how the lines read and whether the windows of the situations match real fights. `/au prof` counts the monologues and the composite situations of the session.

- **R3c.1 · An inner monologue.** Out of combat press the "speak" key (or `/au speak`) about ten times, a few minutes apart.
    - **Expect:** now and then, not often, the narrator shows a thought of two or three whole sentences that follow one another (the road, an old scar, the stars at night). One narrator entry, never in chat, not even with automatic sending. No sentence is cut and they read as one thought.
    - **Report:** the monologues you saw, any combination of sentences that does not fit, and whether it takes too much room in the narrator window.
- **R3c.2 · A narrator monologue.** `/au chance zone 100`. Enter a few new zones, one of them at dusk.
    - **Expect:** sometimes the entry starts with the character's name and a gesture ("Garrosh pauses where the road crests...") and goes on with one or two sentences of description. At dusk the one about the failing light may come.
    - **Report:** the text, and whether the name and the first sentence read well together.
- **R3c.3 · A close call.** `/au chance victory 100` and `/au chance lowhp 100`. Fight until you are below a third of your health and win within half a minute. Then `/au debug` and `/au prof`.
    - **Expect:** the victory line is about having barely made it ("Still standing..."), not an ordinary victory. One line for the victory. `/au prof` shows "composite situations 1 (close_call 1)". If both lines come in the same moment, `/au debug` shows `lowhp=merged`.
    - **Report:** the line, how long passed between the low health and the victory, and whether the line came (if not, whether half a minute is too short).
- **R3c.4 · A hard-won level.** Level up within three minutes of a death or of a fight at low health.
    - **Expect:** the level line is about the price paid ("So that is what it cost..."), not an ordinary level.
    - **Report:** the line, and whether the situation was recognised after a death.
- **R3c.5 · A return in the rain at dusk.** Needs the weather of R3b. `/au chance memory_return 100`. Come back to a zone you visited while it rains, at dusk or at night.
    - **Expect:** the return line speaks of the rain and the going light. Under a clear sky or by day it never comes.
    - **Report:** the line, the weather read (`/au debug`) and the game time.


## U-wizard: consents, the first-run guide and the windows (issues #178, #188 and #181)

English counterpart of the section **U-wizard** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. No new API: it is everything the player sees and clicks, so far tried only with the mock client. You need two characters (a new one, to see the first run) and, for the Total RP 3 steps, Total RP 3 installed. To redo the first run: `/au wizard`.

- **U1 · The guide opens at the right time.** With a character that has never seen the guide, enter the game. Repeat entering **in combat** if you can (`/reload` during a fight). **Expect:** the guide appears a few seconds after the loading ends, **never over the loading screen**, and waits for combat to end. It appears once. **Report:** when it appeared; whether it appeared in combat or over the loading screen.
- **U2 · The first page.** **Expect:** "Welcome, traveller", a sentence saying the narrator is **private** and nothing reaches chat unless you choose it, a **live sample of the narrator** with your name, the language **cards** (the choice has a gold border and a filled square), dots under the title and "step 1 of 7". A change of language changes the whole page at once. **Report:** cut or overlapping text; a screenshot in English and Italian.
- **U3 · Skipping.** Try **Skip - keep the defaults**, the **x**, **Esc** and **Enter** (it must be Next), at page 1, page 4 and the last page. **Expect:** Skip, x and Esc close the guide, keep what you chose and leave the rest at its default, and it does not return at the next login; Enter goes to the next page; the movement keys are **not** blocked while it is open. **Report:** whether Esc opens the game menu instead; whether the movement keys stop working with the guide open (a serious bug).
- **U4 · What may reach chat.** At the chat step click **automatic (where allowed)**. **Expect:** the card says emotes and `/say` in instances are posted by themselves **in your character's name, visible to everyone nearby**; the click does **not** turn it on: a **confirmation dialog** shows the whole warning with **Turn on** and **Cancel**, and **Turn on** is **disabled for the first 2 seconds**. Double-click quickly on the card or on **Turn on**: it must not turn on. After the pause **Turn on** works; **Cancel** (or Esc) leaves everything as it was. **Report:** whether the dialog is **above** the guide, whether **Turn on** is really disabled at first, whether a double-click turns it on (a serious bug), a screenshot.
- **U5 · Try the narrator.** On the same step press **Try the narrator**. **Expect:** the narrator box shows the test line **in full and above the guide**, **not** covered by it: it moves below (or above) the guide, and returns to its own place when the guide closes. **Report:** whether the line is fully visible; where the box went; whether it came back, and whether its saved place changed.
- **U6 · The last page.** **Expect:** the **four keys** (speak, pause, another line, NPC) explained, "no key is bound until you choose", where the speak button is (beside the narrator box), `/au options`, `/au help`, `/au wizard`, and **the defaults** (intensity 50, 45 s between lines, a proposal waits 25 s, private chat, button on, others' Total RP 3 off, proximity off, shared list off). **Open key bindings** opens the key bindings (or says where they are); **Open settings** opens the panel. **Report:** whether the defaults written match the real ones; whether both buttons work.
- **U7 · Others' Total RP 3.** With Total RP 3 installed (the guide's Total RP 3 step, or the **Read others' Total RP 3** row of `/au options`). **Expect:** the first click shows the dialog with the warning (race, class and traits only, never notes or history); the row says "off, read first" then "off, confirm"; a double-click does not turn it on; **Turn on** after the pause does. With **Name from Total RP 3** off, the row says **"on, needs name"** and a line under the panel explains it. Turning it off is one click. **Report:** the text of the row (cut? overlapping?) in Italian and English.
- **U8 · Shared list and proximity.** Open `/au relationships`, tab **Options**. Click **Share with the account**, then **Recognise nearby**. **Expect:** for each one the confirmation dialog with the warning and, in the window, the same warning under the privacy note, in the normal font (not tiny). The button says "off, read first" then "off, confirm". A double-click turns nothing on; after the pause it does. Turning off is one click and deletes nothing. **Report:** cut text; whether the line under the options that explains the two consents is readable.
- **U9 · The commands.** `/au mode auto`, `/au relationships share on`, `/au relationships proximity on`, `/au who trp3 on`, each **three times**: the second right away, the third after a few seconds. **Expect:** the first shows the warning and "repeat after a few seconds"; the second right away: "nothing changed, read first"; the third, after the pause and **within 30 seconds**, turns it on. After 30 seconds the question lapses. **Report:** whether the command shows a confirmation dialog or text in chat.
- **U10 · Windows do not cover the narrator.** Make a proposal appear (`/au mode confirm`, then the speak key or button until one shows). Open, one after the other: the journal (`/au journal`), relationships (`/au relationships`), the soul (`/au soul`), the guide (`/au wizard`). **Expect:** with the proposal waiting the narrator box **never stays under** a window: it moves below or above it, or, if the window is too big for the screen (relationships and soul at 768 high), stays **above** it with the **Send / Edit / Discard** bar reachable. When the windows are closed it goes back to where you put it. **Report:** for each window: covered? moved? above? your resolution and UI scale.
- **U11 · Windows are raised.** Open the journal and, from it, with the "..." button, relationships. Click the journal behind, then relationships, then the soul (`/au soul`). **Expect:** the clicked window comes to the **front**; the second window does **not** open exactly over the first (it is shifted down and to the right) and their buttons do not mix. A window you moved stays where you put it. **Report:** whether a window stays behind another after a click; whether a window ever appears **over** the consent dialog (it must not).
- **U12 · The ambient dialogue.** Open a dialogue with an NPC (`/au talk` or the button) while the narrator shows a line. **Expect:** the dialogue window does not cover the narrator box. **Report:** whether they overlap.

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
R3a hour ................ quota:combat seen? ___  too quiet in fights? ___  death/level always? ___
R3a place/emotes ........ place lines first? ___  gestures fit? ___  "says" rare? ___
R3b weather ............. Enum.WeatherType ______  type rain ___ snow ___ clear ___  unknown? ___  WEATHER_CHANGED fires? ___
R3b day and night ....... DIEL_CYCLE_CHANGED at dawn (hour) ______  at dusk (hour) ______  IsDayTime together? ___
R3b subzones ............ ZONE_CHANGED ___  ZONE_CHANGED_INDOORS ___  names that differ in Landmarks ______  packs loaded? (must be NO) ___
R3b quests .............. QUEST_ACCEPTED (arguments) ______  QUEST_TURNED_IN ______  lines at the right moments? ___  many tries? ___
R3b reputation .......... reaction 1-8? ___  one line per change of standing? ___  UPDATE_FACTION in bursts? ___
R3b inn / flight ........ PLAYER_UPDATE_RESTING ___  rest_enter only on entering? ___  flight: CONTROL_LOST/UnitOnTaxi/CONTROL_GAINED ______  fear = no flight? ___
R3b silence ............. none in combat? ___  World module off? ___
R4 conversion ........... traits converted? ___  anything lost? ___  errors? ___
R4 sliders .............. follow the mouse? ___  window on screen? ___ (scale ______)
R4 death and return ..... mood after the death ______  cheerful return line? (must be NO) ___
R4 inn/new login ........ serene at the inn? ___  only slow emotions saved? ___  text in the file? (must be NO) ___
R4 character ............ stoic calmer? ___  vengeful angrier? ___
R4 off .................. off in /au debug? ___  file empty? ___
R3c monologues .......... seen (how many) ______  combinations that do not fit ______  never in chat? ___
R3c situations .......... close call ___  hard-won level ___  return in the rain ___  only one line? ___  seconds from low health to victory ______
```
