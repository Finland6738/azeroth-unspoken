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
- **R0.13 · Sending the results.** Open a new issue (<https://github.com/Finland6738/azeroth-unspoken/issues/new/choose>) with the **In-game test result** form: title `[In-game] R0 results`. In **Checklist step numbers** write the steps you did (for example `R0.2, R0.4`), choose the **Result**, and in **What you saw** write the places and moments of the steps. In the last box paste the texts (one below the other, each with a heading such as "R0.4 capital: probe"). **No other players' names** (and, if you wish, not your character's name either); never paths from your PC.
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

## U-api: API robustness and proximity in a crowd (issues #166 and #164)

None of this has been tried in the real client. You need a **crowded capital** (Orgrimmar or Stormwind) and a friend in your list.

- **U-api.1 · Proximity in a crowd.** Add one or two people to your list, turn on **Recognise nearby**, `/au prof reset` (if available), and stay two minutes in a capital full of players with player nameplates on. **Expect:** no visible slowdown (frames per second as with the option off); `/au debug` shows in the relations line how many sightings were **throttled** (hundreds in a crowd) and **0 proposals** until someone from your list comes close; `/au prof` shows no unusual cost for `NAME_PLATE_UNIT_ADDED` or `UPDATE_MOUSEOVER_UNIT`. **Report:** the throttled number after two minutes, the frames per second with the option on and off, and whether `UnitFullName` works on a nameplate unit.
- **U-api.2 · A listed person in the crowd.** With the same option, let a person from your list reach you while many other players are around. **Expect:** they are recognised (once per session) within a few seconds even in the crowd; they may need to come back onto a nameplate or you may need to point at them. **Report:** how long it takes, and whether they stay unrecognised in spite of several appearances.
- **U-api.3 · Nobody listed.** With an empty list and no Total RP 3 consent, the same crowd. **Expect:** `/au debug` shows 0 throttled and 0 secret: not even a name is read. **Report:** any other value.
- **U-api.4 · Relations module off.** Turn the **Relations** module off in the settings (with proximity on) and walk through the crowd. **Expect:** no nameplate or mouseover events for the addon (`/au debug` no longer lists `event:NAME_PLATE_UNIT_ADDED`). **Report:** whether they still appear.
- **U-api.5 · `/au probe` and `/au packs`.** Run `/au probe` after some play, and `/au packs` after travelling between two continents. **Expect:** `/au probe` reaches the **Summary** line with no Lua error even if an API answers oddly; `/au packs` shows no "loaded, but gave no content" folder and no repeated message. If you disabled a folder in the AddOns list, the message appears once, even after many trips. **Report:** any Lua error, and the text of the message if one appears.
- **U-api.6 · Quests.** With an empty quest log and then with some quests, `/au debug`. **Expect:** "quests 0" only when the log is really empty; with quests, the right number. If the client hides the log (for example in a restricted instance) the line shows "quests ?", not 0. **Report:** the value in both cases.

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

## U-windows: one window shell, Esc and the window scale (issues #174, #187, #182, #192 and #190)

English counterpart of the section **U-windows** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Only looks and clicks; the one new API is `UISpecialFrames` (the table of the frames Esc closes). Tried only with the mock client.

- **W1 · Esc and the X.** Open, one at a time, the journal (`/au journal`), the export (**Export** in the journal), relationships (`/au relationships`), the soul (`/au soul`) and the guide (`/au wizard`). Close each with **Esc**, then open it again and close it with the **X** at the top right. **Expect:** Esc closes the window and does **not** open the game menu; on the guide Esc does what Skip does (the end message in chat, and it does not come back at the next login). With an ambient dialogue open (`/au talk`) Esc does **not** close it. **Report:** a window Esc does not close, or the game menu opening over it.
- **W2 · The shell.** Look at the five windows. **Expect:** a warm dark surface, a thin bronze edge, a darker title band with the title in gold, the X at the top right; no Blizzard art. The chosen tab has a full gold edge and a bar under its name; Forget everything, Remove person, Forget observations and Neutral profile have a red outline. **Report:** missing or thick edges, text outside its button (screenshot).
- **W3 · Window scale.** `/au options`, section **General**, **Window scale** at 80% and 150%, with the journal open and with an ambient dialogue open. **Expect:** the open windows change size at once and stay on screen; the narrator box does not change. **Report:** a window that leaves the screen at 150% on a 768-high screen, or jumps after a drag.
- **W4 · The settings panel.** `/au options` in the classic panel and, if present, in the newer one. **Expect:** it opens on the addon's page at the first command; five sections with their headers (General, Chat, Narrator, Modules, Privacy) that scroll; each row has its name on the left and its control on the right; the wheel and the bar scroll down to the help text at the end. **Report:** whether the page opens empty or on another addon; whether it does not scroll; screenshots of the top and the end.
- **W5 · A large ambient dialogue.** In **Narrator**, **NPC dialogue text size** at 24 and **NPC dialogue opacity** at 50%, then `/au talk` near an innkeeper. **Expect:** the name, the line and the answers one under the other, never overlapping; a more transparent background.
- **W6 · Neutral profile.** In `/au soul` choose an archetype, then press **Neutral profile** once and wait 10 seconds; press it twice; press it once and close the window. **Expect:** the first click fills it red and says "Click again: neutral profile", changing nothing; after a few seconds it goes back; two clicks remove every choice; closing the window cancels.
- **W7 · A long export.** With many memories, **Export** in the journal. **Expect:** the text scrolls to its last line; Ctrl+C copies all of it; a short text leaves no empty space to scroll.

## N0: attacks, kills and deaths without the combat log (issue #212)

English counterpart of the section **N0** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers.

**What it is for.** The NPC relationships (milestone 9) need to know when you attack an NPC, kill it or are killed by it, and who saw it: hostility and betrayal (N1), the nemesis (N7) and the companion pet (N8). Forever gives addons **no combat log**, so the addon must guess from ordinary events and unit functions. Nobody knows yet which of them answer on Forever, in which order, and with which false positives. These steps answer that; the answers confirm or change the detection recipe of [ADR 0035](adr/0035-attacks-kills-and-deaths-without-the-combat-log.md) (proposed, to confirm in game). Tried only with the mock client.

**How it works.** `/au probe` (section R0) now has more lines:
- read on your **target** when you type the command: `UnitThreatSituation(player, target)`, `UnitIsDead`, `UnitIsTapDenied`, `UnitClassification`, `UnitIsQuestBoss`, `UnitCreatureType`, `UnitFactionGroup`, `UnitGUID(target) npcID`, `CheckInteractDistance` and **`named (candidate rule, ADR 0035)`**, the addon's guess of whether the NPC counts as "named";
- the events `PLAYER_REGEN_DISABLED` and `ENABLED` (in and out of combat), `PLAYER_ENTER_COMBAT` (auto-attack), `UNIT_SPELLCAST_SENT`, `UNIT_COMBAT` (a blow on a unit), `UNIT_THREAT_LIST_UPDATE`, `UNIT_THREAT_SITUATION_UPDATE`, `UNIT_DIED`, `PARTY_KILL`, `PLAYER_DEAD`, `NAME_PLATE_UNIT_ADDED` and `REMOVED`;
- the lines **`N0 fight N, start`** and **`N0 fight N, end`** (the last 3 fights) and **`N0 death N`** (the last 2 deaths): who struck first, how many units were fighting you, which nameplates were around, whether the target died, and who was attacking you when you died.

No name or GUID: only numbers, flags, the NPC's number (`npcID`, the same on every server: you can look it up on a database site) and fixed client words (`elite`, `WOUND`, `Horde`...). **Before each step type `/au probe reset`** (it clears the fights and deaths), and type `/au probe copy` at the end of the step. Turn on the **nameplates** (key **V** for enemies, **Shift+V** for friends, or Options > Interface > Names), otherwise the witnesses cannot be counted.

**How long.** About 40 minutes, in a starting zone, with a character of any level. Do the steps you can; write "not done" for the others.

- **N0.1 · Start.** Right after you log in, `/au probe`.
    - **Expect:** the new lines above; with no target, the target lines say `no target selected`; `C_CombatLog.IsCombatLogRestricted` with a value; the events are `registered`; `N0 fights seen: 0`.
    - **Report:** the lines that are `MISSING` or `RESTRICTED`.
- **N0.2 · Who counts as named.** Out of combat, select one at a time and type `/au probe` for each: an ordinary animal; a monster with a dragon on its portrait (**elite**); a **rare** if you meet one (silver dragon); the target of a quest "kill X" (**quest boss**, if there is one in the zone); a **guard**; an innkeeper or a vendor you have spoken to (they have a relation record); an NPC of the **other faction** (a guard of an enemy town, a flight master of the other side: target it from far away, there is no need to fight).
    - **Expect:** `UnitClassification` `normal`, `elite`, `rare`, `rareelite` or `worldboss`; `UnitIsQuestBoss` true only for the quest target; `UnitCreatureType` with `humanoid yes` for people; `named` says `named` for the elite, the rare, the quest boss and the NPC you have spoken to, and `not named, ordinary (normal)` for the animal.
    - **Report:** the target lines of each NPC (from `UnitThreatSituation` to `named`), with a heading such as "N0.2 elite", and **which NPCs you think should count as named and do not** (or the other way around).
- **N0.3 · You attack first.** `/au probe reset`. Choose a **yellow** (neutral) animal, which does not attack on its own, select it and strike it with **auto-attack** (right click). Kill it. Then `/au probe copy`. If your character is a caster, repeat with a **spell** as the first blow.
    - **Expect:** `N0 fight 1, start: ... opened by player (swing ...)` (or `(cast ...)` with a spell); at the end `dead yes`, `same unit yes`, `UNIT_DIED engaged 1`, `PARTY_KILL by me 1`.
    - **Report:** the text. Above all: does `opened by` say `player`? Do `UNIT_DIED` and `PARTY_KILL` fire, or are they `hidden`?
- **N0.4 · It attacks you first.** `/au probe reset`. Walk near a **red** monster (aggressive) **without selecting it** and let it strike first. Then select it and kill it. `/au probe copy`.
    - **Expect:** `opened by enemy (hit on player ...)`; `it targets me yes` if you had already selected it when combat started.
    - **Report:** the text, and whether you had selected it before or after the first blow.
- **N0.5 · Two or three at once.** `/au probe reset`. Pull two or three monsters together and kill them (with an area spell if you have one). `/au probe copy`.
    - **Expect:** `N engaged` and `N attacking me` at 2 or 3; `UNIT_DIED engaged` and `PARTY_KILL by me` add up to the dead.
    - **Report:** the text, and how many you killed.
- **N0.6 · Witnesses.** `/au probe reset`. With the friendly nameplates on (**Shift+V**), fight a monster **near guards or people of a village** (a road with patrols, the edge of a town). `/au probe copy`. If an area spell of yours touches a friendly NPC, write so (it should not be possible: the game protects them).
    - **Expect:** `witnesses: N nameplates, N friendly npc, N near` with numbers above zero; `friendly npc hit 0`.
    - **Report:** the text, and how many friendly NPCs you saw around (more or less).
- **N0.7 · Someone else's monster.** If a player is fighting a monster, select it (its nameplate turns grey) and `/au probe`.
    - **Expect:** `UnitIsTapDenied(target): -> true`.
    - **Report:** the target lines. Do not attack the other player's monster if it bothers them.
- **N0.8 · A pet or a group.** Only if your character has a pet (hunter, warlock) or you are in a group: `/au probe reset`, let the pet or a companion strike the last blow of a fight, `/au probe copy`.
    - **Expect:** `PARTY_KILL by me 0, pet 1` (or `other 1` for a companion).
    - **Report:** the text, and who struck the last blow.
- **N0.9 · Your death.** `/au probe reset`. Let a stronger monster kill you (it costs only the run back to your corpse). **Before you release the spirit**, `/au probe copy`.
    - **Expect:** `N0 death 1: during a fight` or `... after the fight ended`; `last unit attacking me npcID ...` with the number of the monster that killed you; `it is my target yes` if you had it selected.
    - **Report:** the text, which monster killed you, and whether it was your target.
- **N0.10 · Sending the results.** Write a **comment on issue #212** (<https://github.com/Finland6738/azeroth-unspoken/issues/212>) with the texts one below the other, each with its heading ("N0.3 attack first", "N0.9 death"...). **No other players' names**; the `npcID` numbers can stay.

## U-keyboard-combat: keyboard, pointer and combat (issues #183 and #185)

English counterpart of the section **U-keyboard-combat** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Keys, sliders, buttons and what happens in combat. No new API: the events of the start and end of a fight (`PLAYER_REGEN_DISABLED`/`ENABLED`) were already used. Tried only with the mock client.

- **K1 · The new keys.** *Options > Keybindings > AddOns > Azeroth Unspoken*: bind Discard, Edit, Next channel, History, Journal and NPC dialogue: answer 1-3. With a proposal waiting (`/au mode confirm`, then `/au greet`) press Next channel, then Edit, then Esc, then Discard. Press History and Journal twice. With `/au talk` near an innkeeper press Answer 1. **Expect:** twelve actions in the list, named in the client's language; each key does what its button does (the channel changes on the chip and chat says "proposal channel: ..."); the answers are numbered 1., 2., 3. and the key picks the one with its number. **Report:** a missing action, a key that does nothing, a red error.
- **K2 · The soul's sliders.** `/au soul`: for one trait click **-** and **+**, then turn the mouse wheel over the bar. **Expect:** the value moves by 5 at each step and stays after closing; the bar stands out from the background; dragging works as before. **Report:** the wheel scrolling something else instead of the slider, a bar that is hard to see (screenshot).
- **K3 · Buttons and words.** Look at the journal (memories, stories), the relationships (list, people) and the NPC dialogue. **Expect:** the row actions are short words (Keep, Delete, Open, Pause, Skip...) that fit their buttons, in Italian too; no button smaller than a small action icon; the NPC dialogue has "Close" at the top. **Report:** words cut or covering the row's text (screenshot).
- **K4 · Paused.** `/au pause`. **Expect:** **Paused** under the speak button, easy to read although the button is dimmed; `/au pause` again removes it.
- **C1 · An ordinary fight.** With the defaults (**In combat: hold until combat ends**) fight an ordinary monster for twenty seconds or so. **Expect:** no line in the box during the fight; half a second after it ends, the victory line (if any) and then the held ones, one after the other (three at most). **Report:** a line that appears in combat, or none after many fights.
- **C2 · The other choices.** `/au combat chat`, then `/au combat show`, then `/au combat silent`, one fight each. **Expect:** *chat*: the lines in your chat window, visible only to you, and the box stays away; *show*: as before; *silent*: nothing during the fight.
- **C3 · Proposals and the editor in combat.** `/au mode preview`, then `/au greet` and press the speak key to open the editor; type something and get attacked. **Expect:** when the fight begins the editor closes and the keys move the character again; the box goes; after the fight the proposal comes back with your text. In combat the speak key with nothing waiting makes up no line and says so in chat. **Report:** an editor that stays open or keeps the keyboard in combat (very important).
- **C4 · A blocked automatic send (optional, SP-05 E).** With automatic sending on, if the client blocks a send (Blizzard's "action blocked" message). **Expect:** chat says "the client blocked an automatic send..."; from then on every line waits for confirmation and Blizzard's message does not come back; the **Automatic sending** row says "on, held"; after `/reload` it is automatic again. **Report:** Blizzard's message coming back a second time in the same session.

## N2: visible levels, the first meeting and the NPC temperament (issue #214)

English counterpart of the section **N2** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Narration only: no NPC changes its behaviour in the game, and nothing goes to chat. APIs already used elsewhere (`UnitRace` on the dialogue's NPC, `C_Weather`, `C_DateAndTime.IsDayTime`, `GetGameTime`, `UnitLevel`); only the use is new. Tried only with the mock client.

- **N2.1 · First meeting.** Talk (gossip) to an NPC you never met, ideally at night or in the rain; then `/au relationships detail npc:<number>` (the number is in `/au relationships list`). **Expect:** "First met: <date>, at night, in the rain, in <zone>, you were level <n>." The weather is missing when the client does not say it; never a wrong weather. **Report:** the exact text, the game time and the weather you saw.
- **N2.2 · The NPC block.** `/au relationships`, open an NPC. **Expect:** under the two columns, **What the addon knows**: "Level 5 of 9: Neutral. Next: Acquaintance (…%).", the temperament line ("Warms up quickly, …" for an innkeeper) and the first meeting on the right; nothing overlaps, nothing leaves the window. **Report:** a screenshot (resolution and scale).
- **N2.3 · Temperament.** On the same day, talk a few times to an innkeeper and to a guard (for example Marshal Dughan in Goldshire) and compare the familiarity in the detail. **Expect:** the innkeeper rises faster and has a higher daily cap; the guard slower.
- **N2.4 · Race.** Talk to a night elf or draenei NPC that is not in the curated list. **Expect:** if the client gives the NPC's race, the detail names it among the reasons of the temperament ("… night elf") and familiarity rises more slowly. **Report:** whether `UnitRace("npc")` gives a race for NPCs (yes/no, which).
- **N2.5 · Level notice.** Take an NPC to the next level with quests handed in (or with `/au relationships set npc:<number> trust 30` and then a chat). **Expect:** a short line in the narrator, for you only: "Something has eased between you and <name> (once Neutral, now Acquaintance)." No line when the slider changed the level. The same NPC does not repeat it for about a day; at most four notices a session.
- **N2.6 · Never in combat.** Hand in a quest that raises a level while in combat (or enter combat just before). **Expect:** nothing during the fight; the line comes as soon as the fight ends. Nothing in chat.
- **N2.7 · Journal.** Take an NPC to **Friend** (or higher). **Expect:** in the journal "A bond grows: Friend (<zone>)", once for that NPC, without its name. With **Level notices** off (Options tab) the narrator line is not there, the journal line is.

## N3: romance with NPCs, opposite sex only, with a vow (issue #215)

English counterpart of the section **N3** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Narration only, private, never in chat. APIs already used elsewhere (`UnitSex`, `UnitCreatureType`, both in the Forever dump); new is reading them on the dialogue's NPC (`npc`). Tried only with the mock client.

- **N3.1 · The readings.** Turn on the attraction axis (`/au relationships attraction on`). Talk to a humanoid NPC of the opposite sex, then to one of your own sex and, if you find one that talks, to a non-humanoid NPC (a beast or an elemental that gives quests). **Report:** whether `UnitSex("npc")` and `UnitCreatureType("npc")` give values for the NPC of a dialogue (type `/run print(UnitSex("npc"), UnitCreatureType("npc"))` with the dialogue open).
- **N3.2 · Growth.** With an NPC of the opposite sex who is already a **Friend** (or after `/au relationships set npc:<number> affection 60` and `trust 40`), talk to them a few times in one day. **Expect:** attraction rises a little (at most about 2 points a day). With an NPC of your own sex, or a merchant you only trade with, it does not move.
- **N3.3 · Below Friend.** With an NPC at Acquaintance, talk a few times. **Expect:** attraction does not move.
- **N3.4 · The vow.** Set `/au relationships set npc:<number> attraction 79` and `affection 60`, then talk to them. **Expect:** one private line in the narrator ("No one hears it, and <name> never will: …" or "A vow, made in silence: …"), nothing in chat; in the journal "A quiet vow, spoken to no one aloud (<zone>)", without the name; the detail says "You made a private vow to them." Talking again never repeats it.
- **N3.5 · The axis off.** Turn the attraction axis off. **Expect:** no attraction, no romance lines, no vow.

## N4: promises, oaths and oathbreakers (issue #216)

English counterpart of the section **N4** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Narration only: no NPC changes its behaviour in the game, and nothing goes to chat. New to the addon, all in the Forever dump: `QUEST_REMOVED`, `C_QuestLog.SetAbandonQuest` / `AbandonQuest` / `GetAbandonQuest` (hooked with `hooksecurefunc`), `C_QuestLog.IsOnQuest`, `C_QuestLog.IsComplete`, `C_QuestLog.IsQuestFlaggedCompleted`. Tried only with the mock client.

- **N4.1 · A promise.** Accept a quest from an NPC who speaks (not from an item), then open the NPC in `/au relationships`. **Expect:** under **What the addon knows**, "Your word: 1 open, the oldest for 0 days.". A quest taken from an item or a sign is a promise to nobody. **Report:** the text; if the line is missing after a quest from an NPC, which NPC and which quest.
- **N4.2 · Abandon.** Abandon that quest from the quest log (the Abandon button and the confirmation). **Expect:** at once, or after three seconds at most, a private narrator line: "You gave <name> your word, and let it fall. ...". In the detail that NPC's trust dropped a few points. **Report:** how long until the line; the `hook:C_QuestLog.AbandonQuest` and `hook:C_QuestLog.SetAbandonQuest` lines of `/au debug` (available or missing).
- **N4.3 · An ordinary turn-in.** Accept a quest and hand it in to its NPC. **Expect:** no line about your word (handed in on time); the promise leaves the detail. **Never** the abandon line for a quest handed in. **Report:** an abandon line after a turn-in (very important: it means `QUEST_TURNED_IN` and `QUEST_REMOVED` do not come in the expected order), and whether the quest went to a different NPC.
- **N4.4 · Reminder and relief.** Keep a quest open for more than a calendar week, then talk to the NPC who gave it, without having finished it. **Expect:** "<name> has waited <n> days for the task you took on, and has not forgotten it." Not again for about a day; nothing when the quest is ready to hand in. Handing it in to that NPC later: "Relief on the face of <name>: <n> days late, but your word held." **Report:** the texts and the days.
- **N4.5 · An oath.** With an NPC who is already a **Friend** (level 6 or more in the detail), accept a quest. **Expect:** the detail says "(1 sworn as an oath)".
- **N4.6 · Oathbreaker.** Abandon that quest. **Expect:** "You swore it to <name>, who trusted you, ..."; the NPC usually drops a level (without a second level line); in the journal "An oath broken (<zone>)", with no names. Talking to that NPC again in the same session: "<name> has not forgotten the oath you broke.", once; the detail says "Remembers the oath you broke (100% of it left)."
- **N4.7 · The city remembers.** In the same zone or city, talk to another NPC. **Expect:** once a session, "<zone> still talks of the oath you broke." (or the second variant). Nothing in another zone. **Report:** the zone name shown (it is the map of `C_Map.GetBestMapForUnit`: inside a building of a capital it may be a different map).
- **N4.8 · Never in combat, never in chat.** Enter combat and talk to an NPC who waits on an old promise (if it happens), then turn off **Promise notices** in the Options tab. **Expect:** no line in combat (it does not wait for the end: it is dropped); with the option off no line, but the promise stays in the detail. Nothing in chat, ever.

## N5: favours and nicknames (issue #217)

English counterpart of the section **N5** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Narration only: no NPC changes its behaviour in the game, and nothing goes to chat. Nothing new from the client: the favours use `NPC_INTERACT`, the `BuyMerchantItem` hook, `PLAYER_UPDATE_RESTING` / `IsResting`, `ZONE_CHANGED_NEW_AREA` and `PLAYER_ENTERING_WORLD` with `GetRealZoneText` and `C_Map.GetBestMapForUnit`, all already used. Tried only with the mock client. A favour is asked with a chance (about one meeting in three), so some steps need a few meetings.

- **N5.1 · A favor asked.** Talk a few times (on different days if needed) to a named NPC who is already a **Friend** (level 6 or more in the detail). **Expect:** sooner or later a private line: "<name> would like to see you again tomorrow. ..." (or another favor); the detail says "A favor asked: ... (<n> days left)." No favor from a stranger, and none in combat. **Report:** the text, how many meetings it took, which NPC (role).
- **N5.2 · Come back tomorrow.** With a "come back" favor open, talk to the NPC again the next day (18 hours or more later). **Expect:** "<name> is glad you came back, as you said you would." (or the second variant); in the journal "A favor done for a friend (<zone>)", with no name; the favor leaves the detail and "Favors done for them: 1." appears.
- **N5.3 · Buy from me.** With a merchant at Friend, wait for the "buy" favor, then on a later visit (an hour or more) buy something from them. **Expect:** "<name> counts the coin twice, ..." right after the purchase. A purchase in the same visit, or from another merchant, does not count. **Report:** whether the line came, and the `hook:BuyMerchantItem` line of `/au debug`.
- **N5.4 · Rest at my inn.** With an innkeeper at Friend, wait for the "rest" favor, log out in that inn and log back in six or more hours later. **Expect:** at the login, "You slept under the roof of <name>, ...". Logging in elsewhere does not count. **Report:** whether `IsResting` is already true at the login (the line comes at once) or only when you step into the inn again.
- **N5.5 · Go and see a zone.** With a "visit" favor ("... if your road ever passes through <zone> ..."), go to that zone. **Expect:** on entering it, "So this is the place <name> wanted you to see: <zone>. ..."; the next time you talk to the NPC, "<name> listens to your tale of <zone> with shining eyes." **Report:** the zone named (it must be on your continent and right for your level) and whether entering it was noticed.
- **N5.6 · A nickname.** Bring a named NPC to **Close friend** (level 8). **Expect:** once, "<name> calls you "<nickname>" now. ..."; the journal says "A nickname: <nickname> (<zone>)"; the detail says "Calls you "<nickname>"."; if the NPC has a dialogue window (innkeeper, merchant, guard, flight master, trainer), its opening line sometimes greets you by the nickname. In Italian (`/au lang it`) the nickname takes the form for your character's sex. **Report:** the nickname and whether it suits the character.
- **N5.7 · Lapse, options, privacy.** Leave a favor undone past its days, then talk to the NPC. Turn **Favors** and **Nicknames** off in the Options tab. **Expect:** the lapsed favor disappears without a line and without the NPC liking you less; with the options off no new favors or nicknames, and the dialogue lines stop using the nickname. Nothing in chat, ever.
## N6: word gets around, honorary titles, rivals (issue #218)

English counterpart of the section **N6** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Narration only: no NPC changes its behaviour in the game, and nothing goes to chat. Read by the addon for this part, already used elsewhere and all in the Forever dump: `GetSubZoneText`, `GetRealZoneText`, `IsInInstance`, `C_Map.GetBestMapForUnit`. Tried with the mock client only.

- **N6.1 · The town.** In Goldshire talk to an NPC, then open them in `/au relationships`. **Expect:** under **What the addon knows**, "Their town: Goldshire, where word of you is ...". Inside the inn (Lion's Pride Inn) the town stays Goldshire. In Stormwind the town is "Stormwind City" in every district. **Report:** the name shown inside the inn and in two districts of a capital; an NPC out in the open must have no town.
- **N6.2 · Word gets around.** Hand in a few quests to an NPC of a village, then talk for the first time to another NPC of the same village. **Expect:** sometimes a private line ("<name> has heard of you before you say a word: the talk in <town> has been kind."); in the new NPC's detail some trust without having done anything with them. An NPC of another village knows nothing. **Report:** whether the line shows, and the new NPC's trust.
- **N6.3 · An honorary title.** Make three NPCs of the same village **Friends** (or hand in many quests there). **Expect:** once, "In <town>, people have begun to call you Friend of <town>."; in the journal "An honorary title: Friend of <town>"; the detail says "There you are Friend of <town>.". Outside the village the narrator does not use it. **Report:** how long it takes, and whether the Italian form follows the character's sex (Amico/Amica).
- **N6.4 · A broken oath withholds the title.** In the village of the title, break an oath (step N4.6). **Expect:** the detail says "There you were ..., but the town withholds it while it remembers a broken oath."
- **N6.5 · Rivals.** Become a **Friend** of Innkeeper Farley (Goldshire), then talk to Innkeeper Allison (Stormwind). **Expect:** once, a jealous line ("A cooler welcome from Innkeeper Allison: word is you favour Innkeeper Farley these days.") and a little less affection in her detail, which says "Rival of: Innkeeper Farley.". The same with Smith Argus and Corina Steele in Goldshire. Nothing the second time. **Report:** the npcIDs from `/au who` if nothing happens (the numbers come from Classic Era).
- **N6.6 · Never in combat, never in chat, one line per meeting.** Turn off **Town notices** in the Options tab. **Expect:** no line with the option off, but the word and the titles stay in the detail and the export; never more than one town line in a meeting; nothing in chat.

## N1: hostility, grudges, betrayal, witnesses and guest-right (issue #213)

English counterpart of the section **N1** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Narration only: no NPC changes its behaviour in the game, and nothing goes to chat. The fight is read **without a combat log** with the recipe of ADR 0035, **not yet confirmed in game** (the owner chose not to wait for section N0): if a step goes wrong, open an issue with what you saw. New reads for this part, all in the Forever dump: `PLAYER_ENTER_COMBAT`, `UNIT_COMBAT`, `UNIT_DIED`, `PARTY_KILL`, `UnitThreatSituation`, `CheckInteractDistance`, `UnitIsTapDenied`, `GetBindLocation`. Tried with the mock client only. Attacking an NPC may cost your life (the guards come): do it where the run back is short.

- **N1.1 · Strike first.** Talk to a **yellow** (neutral) named NPC, such as a vendor of Ratchet or Booty Bay, then select them and strike them with auto-attack. **Expect:** after the fight, a private line ("You struck ... first. That will not be forgotten."); in `/au relationships` the NPC is **Hated** and the detail says "Holds a grudge: ..." and "The grudge is for ever.". **Report:** whether the line comes, how many seconds after, and whether a spell as the first blow gives the same.
- **N1.2 · Who does not count.** Strike any yellow animal; then let a red monster strike you first. **Expect:** no line, no new NPC in the list.
- **N1.3 · A kill.** Kill the NPC of N1.1 (or another yellow named NPC). **Expect:** the kill line ("... fell by your hand."); the detail says "they died by your hand". With a pet striking the last blow, the same.
- **N1.4 · Witnesses.** Turn on the friendly nameplates (**Shift+V**) and repeat N1.1 near other friendly NPCs you know. **Expect:** the detail of a witness you know shows less trust; the next time you talk to another NPC of the town, they already know something. Without friendly nameplates, the town knows nothing.
- **N1.5 · The other faction's city.** Strike first a guard of a village or city of the other faction. **Expect:** "<town> will remember your blade."; no guard in the list one by one.
- **N1.6 · Guest-right.** Bind your hearthstone at a neutral inn (Ratchet, Booty Bay, Gadgetzan), then strike the innkeeper (or someone inside the inn). **Expect:** "You raised your hand under the roof of ..."; the innkeeper is Hated; in the journal "Guest-right broken (<town>)", for good; the innkeeper's detail says "The keeper of your hearth.". **Report:** the text of `GetBindLocation` if the innkeeper is not recognised (`/dump GetBindLocation()`).
- **N1.7 · Coming home.** Stay away from your hearthstone's town for more than five days, then come back. **Expect:** a warm line ("Home again. ..."), or a cold one after N1.6.
- **N1.8 · The options.** Turn off **Eternal grudge**: the detail says how many days the grudge holds. Turn off **Hostility notices**: no line, but the grudge stays. Never anything in chat.

## N7: the nemesis and the songs of its fall (issue #219)

English counterpart of the section **N7** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Narration only: the nemesis fights as it always did, and nothing goes to chat. Who killed you and the nemesis's fall are read **without a combat log** with the recipe of ADR 0035 (items 4 and 5), **not yet confirmed in game** (the owner chose not to wait for section N0): if a step goes wrong, open an issue with what you saw. New reads for this part, all in the Forever dump: `UNIT_THREAT_LIST_UPDATE`, `UnitThreatSituation`, `PLAYER_DEAD`, `UNIT_DIED`, `PARTY_KILL`, `UnitClassification`, `IsInInstance`. The song needs the `AzerothUnspoken_Versi` folder. Tried with the mock client only ([ADR 0045](adr/0045-nemesis-arcs-told-for-many-npcs-killed-by-and-the-song-of-a-fall.md)).

- **N7.1 · A nemesis.** Outside dungeons, get killed by an **elite** monster (the gold dragon on its portrait) you are fighting alone. **Expect:** back alive, a line of the narrator or the inner voice that names it; in the journal, tab **Stories**, the heading **Nemeses (1 of 3)** and the story *The Shadow of <name>*, state *the mark*. **Report:** if no story begins, `/au debug` (the line "Nemesis:") and how many monsters were attacking you.
- **N7.2 · Who does not count.** Get killed by an ordinary monster, then by an elite in a dungeon, then die from a fall. **Expect:** no nemesis.
- **N7.3 · Deeper.** Get killed by the same nemesis twice more. **Expect:** *the long shadow*, then *the feud*, each with its own line.
- **N7.4 · Meeting it again.** More than half an hour later, target the nemesis. **Expect:** a short line that names it; targeting it again right after says nothing.
- **N7.5 · The fall.** Kill the nemesis alone (or with your pet). **Expect:** after the fight the closing line; a private notice (*"The Shadow of <name>" is over. A song of that fall is in your songbook: ...*); in the journal the story among the concluded ones, with its page; in **Songbook** the song, which opens whole. If another player kills it, the story goes on. **Report:** if the fall is not seen (and who struck the last blow), if the song is missing.
- **N7.6 · The choices.** `/au stories disable nemesis`, then get killed by an elite; then `/au stories enable nemesis`. **Expect:** with the nemesis off no story; on again, again. A fourth nemesis waits among the stories that can begin until you suspend one. Never anything in chat.

## N8: the companion pet, grief, the death of an ally and letters (issues #220 and #125)

English counterpart of the section **N8** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Narration only: the pet and the NPCs behave as always, and nothing goes to chat. The pet, the deaths and the group are read from the signals of the Forever dump, **not yet confirmed in game** (the owner chose not to wait for in-game probes or a two-client group test): if a step goes wrong, open an issue with what you saw. New reads for this part, all in the dump: `UNIT_PET`, `UNIT_HAPPINESS`, `C_PetInfo.GetPetHappiness`, `UnitIsDead`, `UnitIsDeadOrGhost`, `UnitIsFeignDeath`, `UNIT_DIED`, the units `party1..4` and `raid1..40`, `C_Secrets`. The laments need the `AzerothUnspoken_Versi` folder. Tried with the mock client only ([ADR 0046](adr/0046-companion-pet-grief-the-death-of-an-ally-and-letters-in-the-journal.md)).

- **N8.1 · The pet.** With a hunter (or a warlock) dismiss the pet, wait a little, call it back. **Expect:** now and then a line of the inner voice that names it, on the call and on the dismissal; not again for twenty minutes; no line when the pet is already there as you enter the game or after a flight. **Report:** `/au debug` (the line "Companion:"): the pet's name and the hours counted.
- **N8.2 · The mood.** As a hunter, let the pet go hungry until it is unhappy, then feed it. **Expect:** a line when the mood changes (at most one every quarter of an hour). A warlock has none.
- **N8.3 · The bond.** Play a couple of hours with the pet out. **Expect:** a line *a familiar presence*; after about 12 hours *a trusted companion*, written in the journal (*The bond with <name> grew: ...*).
- **N8.4 · The pet's grief.** Let the pet die in a fight (or, as a warlock, the demon). **Expect:** after the fight a line that mourns it, once; in the journal *<name> fell*; with the verses, a private notice (*A lament for the one you lost is in your songbook: ...*). Revived and dead again, again. A demon that vanishes as it dies must not look dismissed. **Report:** if the grief is missing, or if the demon's death gives the dismissal line.
- **N8.5 · A dear NPC.** Target, dead, an NPC you are at least *Friend* with (for example after the other faction raided a village), or watch them die while targeted. **Expect:** a line that names them, a page *You mourned <name>* in the journal; not again for a month. A neutral NPC or one you attacked: nothing.
- **N8.6 · An ally (#125).** In a group with another player, let them die beside you (best a friend who lends themselves to it); then try with a hunter who feigns death, and in a battleground. **Expect:** after the fight a line that names them, a page *A companion of the road fell* with no name, a lament in the songbook; only one for a whole group's wipe. Feigned death and battleground: nothing. **Report:** if nothing comes (`UNIT_DIED` for other players might not fire), if it comes for a feigned death.
- **N8.7 · A letter.** With an NPC at least *Close friend* you have not met for three weeks, enter the game. **Expect:** after a few seconds a private notice (*A letter came for you while you were away, from <name>...*); in the journal the whole letter. Never game mail. A /reload brings no letter.
- **N8.8 · The options.** In the relationships window turn off **Companion pet** and **Letters**. **Expect:** no line about the pet (the bond is still counted), no letter. Never anything in chat.

## ID: the observed GUID as an identity aid (issue #112, with the tests of #111)

English counterpart of the section **ID** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. For people already in your list the addon keeps the identity code (GUID) the game gives a player, **never shown**, and uses it only to ask you. Built on the API dump without in-game tests (the owner's decision of 2026-11-02): whether `UnitGUID` answers and stays stable is **not confirmed**, and the answers go in issue #111.

- **ID.1 · It is stored and never shown.** Add a friend from your group (`/au relationships add <name>`), group with them, then open the relationships window, the detail, the export and `/au debug`. **Expect:** no code anywhere. **Report:** whether `/au relationships guid` says the aid is on, and whether anything long like `Player-...` appears.
- **ID.2 · The same person after a relog and days later.** Group with the same friend after logging out and in, and the next day. **Expect:** no question at all (the code is the same). **Report:** if a question appears for a person who did not change: that is the answer to #111 (the code is not stable), with when.
- **ID.3 · Same name, new character.** With a friend who is willing, delete their character and make another with the same name (or use a character of yours on another account), then group. **Expect:** a private line and, in the People tab, a question "this looks like a different character...", with **+** and **x**; nothing changed until you answer. **x** and group again: not asked again until the next login.
- **ID.4 · Rename or transfer.** If a rename or a faction or realm change service exists on Forever, use it on a friend's character, then group. **Expect:** a question "<old> may now be called <new>: merge?"; **+** moves the record with your note and choices; **x** leaves it. **Report:** whether the code changed with the service (the answer to #111 point 2).
- **ID.5 · Hidden identities.** Group in a battleground, an arena, a dungeon and a capital with someone from your list. **Expect:** no error, no question from a hidden identity, the meeting counted by name. **Report:** where the identity was hidden (the answer to #111 point 4).
- **ID.6 · Unstable codes stop the aid.** If ID.2 showed codes changing, group with three or more listed people. **Expect:** after three mismatches the questions stop for the session and `/au debug` says "GUID not trusted this session". **Report:** the line.
- **ID.7 · Forget.** `/au relationships forget <name>`, `remove <name>`, `guid clear`, `guid off`. **Expect:** after each, no question about that person; with `guid off` nothing is stored. Nothing in chat at any step.

## L2: verses on several lines, rare literary forms, long reading (issues #117, #118 and #126)

English counterpart of the section **L2** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Tested with
the mock client only ([ADR 0042](adr/0042-literary-forms-category-pacing-line-breaks-and-long-reading.md)): the owner
chose not to stop for in-game tests. It needs the `AzerothUnspoken_Versi` folder.

- **L2.1 · One verse per line.** `/au event lore_test` a few times. **Expect:** the first line (who carries the words,
  ending with a colon), then the verses **one at a time**, each after the time to read the one before; the box is
  already as tall as the whole piece and does not jump. **Report:** lines that come too fast or too slowly; a verse
  that wraps badly.
- **L2.2 · Wheel and clicks.** Set the text size to 24 and repeat L2.1 until a piece does not fit (more than twelve
  lines). **Expect:** the box stops at twelve lines and the text scrolls with the **mouse wheel** over it; the box
  follows the last line until you scroll it. A click on the text still reaches the game. **Report:** a wheel that does
  nothing, or a text that blocks clicks.
- **L2.3 · Reduce motion.** Turn **Reduce motion** on and repeat L2.1. **Expect:** the whole piece at once, for the same
  time.
- **L2.4 · The history.** Open the history. **Expect:** the piece on several lines, the first with the time and the
  voice, the others indented.
- **L2.5 · Never in chat.** With `/au mode confirm` (and `auto`, if you turned it on) repeat L2.1, and try it in combat.
  **Expect:** no proposal, nothing in chat; in combat no piece at all.
- **L2.6 · How often.** Play an hour with **Literary forms** on *rare* (the default) where the pieces belong (step 106),
  then an hour on *normal*; try *never* with `/au event lore_test`. **Expect:** rare: about one piece every 20-30
  minutes at most, never two within ten minutes; normal: about twice as many; never: none, not even by hand.
  **Report:** how many pieces in an hour and whether the rhythm feels right.

## L3: literary metadata, the right moment, songs of stanzas (issues #119, #120, #127 and #128)

English counterpart of the section **L3** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Tested with
the mock client only ([ADR 0043](adr/0043-literary-metadata-genre-matrix-interchangeable-stanzas-and-pieces-in-the-archive.md)): the owner chose not to stop for in-game tests. It needs the
`AzerothUnspoken_Versi` folder.

- **L3.1 · A song of stanzas.** `/au event lore_test` until the walking song comes (*A walking song comes back...*), a
  few times. **Expect:** the first line, two of the four verses with an empty line between them (always in the same
  order, a different pair from time to time), then the refrain after an empty line; the box scrolls past twelve lines.
  **Report:** a pair that does not make sense together, a refrain that is missing or doubled, a box that cuts the song.
- **L3.2 · The right moment.** Pray (`/au pray`) once by day and once after dusk. **Expect:** the hymn only after dusk
  (it names the night). **Report:** a piece that names something (the night, snow, a return, faith) that is not true
  where and when it comes.
- **L3.3 · On a long ride.** Ride or fly for a few minutes with **Literary forms** on *normal*. **Expect:** now and then
  the walking song at the end of the ride, never in combat, never in chat.

## L4: the songbook, a verse that comes back, the culture of origin (issues #122, #123 and #124)

English counterpart of the section **L4** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. Tested with
the mock client only ([ADR 0044](adr/0044-songbook-recall-and-reading-frames-and-the-culture-of-origin.md)): the owner
chose not to stop for in-game tests. It needs the `AzerothUnspoken_Versi` folder.

- **L4.1 · The songbook.** `/au event lore_test` two or three times, then `/au songbook`. **Expect:** the journal opens
  on **Songbook** with the pieces just heard, by their first line, the newest first; *Open* shows the whole text, one
  verse per row, and *Learn*, *Favourite*, *Mute*, *Forget*. **Report:** a piece missing from the list, a cut or
  garbled text, a tab or a button whose label does not fit.
- **L4.2 · Mute.** Mute a piece, then `/au event lore_test` many times. **Expect:** that piece never again, until it is
  unmuted. **Report:** a muted piece that comes back.
- **L4.3 · A verse comes back.** With pieces heard at least six hours (of play or not) before, rest in an inn or ride a
  long way with **Literary forms** on *normal*. **Expect:** now and then a line like *A tune I heard somewhere starts up
  again in my head:* and the verses of a piece heard before, in the inner voice, in the narrator only, never in combat,
  never in chat. **Report:** a recall of a piece never heard, the attribution of the piece still there, a recall in
  chat.
- **L4.4 · The culture of origin.** `/au soul`, the row **Culture of origin**: click through the cultures, then **x**.
  **Expect:** the button as wide as the longest name, in English and in Italian; nothing chosen at first, whatever the
  race; `/au soul list` shows the choice. **Report:** a name cut, a culture chosen by itself.

## R5: the trial slice, Durotar, Orgrimmar, Elwynn and Stormwind (issue #102)

English counterpart of the section **R5** of [G1_checklist.md](G1_checklist.md). Same steps, same numbers. The lines of
the four areas are in the regional folders (`AzerothUnspoken_Kalimdor`, `AzerothUnspoken_EasternKingdoms` and their
language folders) and were measured offline only (`Tests/bench_trial.py`): this playtest is the second half of #102.
Three characters: an orc warrior and a troll mage starting in Durotar, a human paladin starting in Elwynn Forest; **two
sessions of 90 minutes each**, with `/au prof` at the start and at the end, and **Intensity** left at its default.

- **R5.1 · Arrival and the subzones.** Play from the starting valley outwards. **Expect:** lines about the zone, then
  about the places you cross (Razor Hill, Sen'jin Village, the Echo Isles, Tiragarde Keep; Northshire, Goldshire, the
  mines and the lakes), never a line for another zone. **Report:** a subzone whose lines never come (its name in `/au
  place`: the names are the English client's and unconfirmed, #36), a line about the wrong place.
- **R5.2 · Repetition.** Keep a note of any line you read twice. **Expect:** no line repeated within a 90-minute session.
  **Report:** the repeated line, the minute, and whether it was said in the same place.
- **R5.3 · A death and the return.** Die once in the open, revive, leave the zone and come back. **Expect:** a sober
  return line that remembers the death; no cheerful one. **Report:** a light line after the death.
- **R5.4 · The capital.** Visit Orgrimmar or Stormwind, rest at the inn, walk two or three districts, talk to a guard
  and an innkeeper. **Expect:** city lines (the districts, the inn, the guard's directions) that fit the district.
  **Report:** a direction that is wrong, a line that names a place you are not in.
- **R5.5 · Weather and day.** Note the weather and the hour when a weather or dawn/dusk line comes. **Expect:** the line
  matches what you see. **Report:** rain named under a clear sky, night named at noon.
- **R5.6 · Rating.** Every 15 minutes, rate the last lines: relevant? repetitive? out of character? **Expect:** under 10%
  of the interventions rated out of place. **Report:** the share, and the lines you marked.
- **R5.7 · Measures.** `/au prof` at the end of each session. **Expect:** p95 of `PickEntry` under 5 ms; the memory of
  the addon. **Report:** the interventions per hour, the reasons of silence, the memory and the p95.

## C0: the column store and the packs by area (issue #138, ADR 0048 and 0049)

Nothing of C0 has run in the client: every number is from lupa on one PC. The picks are the same as before (checked
offline); what the client must confirm is the loading. Start with `/au debug` clear and `/au packs` at hand.

1. **Login in Durotar (or Elwynn Forest).** `/au packs`: the first line says `region/area kalimdor/durotar`
   (`eastern/elwynnforest`); the Kalimdor folders (rules and your language) are "loaded", the other continent's are not.
   A line of the area is heard within a few minutes (`/au speak` near a village of the slice).
2. **Walk into Orgrimmar (Stormwind City).** No new area: `/au packs` still says `durotar` (`elwynnforest`), and the
   lines of the capital are heard there. No stutter on the gate.
3. **Walk on to The Barrens (Westfall).** `/au packs`: area `thebarrens` (`westfall`); the line "last change of area"
   shows how many regional rules were built and in how many ms (the client's clock). Note the ms. A Durotar line is no
   longer heard in the Barrens. Did the screen stutter on the border? (yes/no, and how long)
4. **Come back to Durotar.** The area is built again with **no new LoadAddOn** (the loads counter of `/au packs` does
   not grow). The Durotar lines come back.
5. **Change zone in combat** (pull a monster across the border). Nothing is built until the fight ends; then the area
   follows. No Lua error.
6. **Enter a dungeon of the continent (Ragefire Chasm, The Deadmines).** The area stays the one outside (an instance
   is not an area of the data); no error.
7. **Memory.** `/au prof` in Durotar after login, after the Barrens and after coming back: note the KB of the addon
   each time. The area left should not stay: the second and third numbers within a few hundred KB of the first.
8. **Errors.** `/au debug`: no `packs` error, no "loaded, but gave no content" for a folder of the download.

**C0b (ADR 0049): compact sources and a change spread over frames.** This has never run in the client either. The
regional rules are now a source (Lua text in a string) that the addon keeps as encoded pieces; a change of area works
at most 4 ms per frame, outside combat.

9. **The change is not felt.** Cross the Durotar/Barrens border (Elwynn/Westfall) several times on foot and mounted,
   with `/au packs` after each. The line "last change of area" now also says over how many frames and the longest frame:
   note the ms in all, the frames and the longest. A stutter on the border? (yes/no). The longest should stay under
   8 ms, except on the first entry into an area (the client reads the files of the folder in one go).
10. **While the area is prepared.** Right after the border `/au packs` may say "building the lines of ...": in those
    seconds the general lines speak, never a line of a half-built area. No Lua error.
11. **Back and forth quickly.** Cross the border and come back before the preparation ends: in the end `/au packs`
    says the right area and its lines are heard; no error in `/au debug`.
12. **Combat during the preparation.** Enter a new area and attack a monster at once: the preparation stops during the
    fight (the frames in `/au packs` do not grow) and goes on afterwards.
13. **Memory of the areas visited.** After several areas, `/au packs` shows "regional sources kept: N KB": note it with
    the KB of `/au prof`. "areas released" must say `-` (the 32 MB bound is not reached with today's content).
14. **`debugprofilestop`.** If `/au prof` says the client has no `debugprofilestop`, the ms of the changes come from
    `os.clock` (less precise): note it.

**C0e (ADR 0052): a bounded pick.** Never run in the client either. A pick of an event with many lines now reads a
sample of each level of specificity instead of every line, so its cost should not grow with the content waves.

15. **The cost of a pick.** Play an hour in a capital (Orgrimmar or Stormwind City: the events with the most lines)
    with `/au speak` now and then, then `/au prof`. **Expect:** the p95 of `PickEntry` under 5 ms, as before W04, and
    no stutter when a line is said. **Report:** the p95 and the mean of `PickEntry`, and the memory.
16. **Variety and place.** In the same hour: are the lines of the capital (and of a subzone, if you stand in one) still
    heard about half the time, the class and race lines often, the general ones now and then? **Report:** a line
    heard twice within a few minutes, or a level (place, class, general) that never speaks.

**C0f (ADR 0053): the lines of the character only.** Never run in the client either. The addon now keeps only the
lines written for the character's own class and race; it reads them while it loads.

17. **Class and race read at load.** Log in, then `/au packs`. **Expect:** a line "lines of the character only: class
    warrior, race orc (N rules and M texts of other classes and races not loaded)" with your class and race (undead:
    `scourge`). **Report:** the line as printed, or that it is missing (the client did not give the class or race while
    the addon loaded: every line is then kept, as before).
18. **Another character.** Log out, log in with a character of another class and race (another faction if you can),
    `/au packs` again: its own class and race, no Lua error. Speak a few times (`/au speak`) on both: the class lines
    are those of the character playing. **Report:** the memory of `/au prof` on both, and a line of the wrong class or
    race if one is ever heard.

**C0g (ADR 0054): the gestures a class makes for itself.** Never run in the client either. A bandage on yourself is now
a heal for a warrior, a rogue, a hunter or a mage; outside a fight, Battle Shout, a rogue's poison or stone and a
hunter's aspect are a buff. Set `/au chance heal 100` and `/au chance buff 100` for the test, then back (`/au chance heal 15`,
`/au chance buff 25`).

19. **A bandage on yourself.** With a warrior, rogue, hunter or mage, out of combat, use a bandage with no target (or
    yourself targeted). **Expect:** a heal line about mending, never one that speaks to someone else or of the Light.
    Then target another player and bandage them: nothing. **Report:** `/au debug` for both (the event `heal`, or
    nothing), and whether the spell is called "First Aid" in the client.
20. **Battle Shout, poisons, aspects.** Out of combat: a warrior's Battle Shout, a rogue's poison or sharpening stone,
    a hunter's aspect. **Expect:** a buff line each time (none that gives a gift to someone else). In combat, Battle
    Shout is still an attack line about the shout. **Report:** the spell names the client gives (`/au debug`) if a
    gesture stays silent.

**C0h (ADR 0055): a cast on yourself and a cast on someone else.** Never run in the client either. A heal or buff line
that speaks to the one healed or buffed is said only when the spell went to someone else. Keep `/au chance heal 100`
and `/au chance buff 100` for the test.

21. **A potion with a friend targeted.** Target a friendly player and drink a healing potion (or use a healthstone).
    **Expect:** a heal line about yourself, never one that speaks to the friend by name or says "hold still".
    **Report:** `/au debug` (the event `heal`) and the line, if one ever speaks to the friend.
22. **A healer on itself and on a friend.** With a priest, paladin, druid or shaman, target a friend and heal yourself
    (self-cast key, or the friend out of range), then heal the friend. **Expect:** on yourself no line to the friend; on
    the friend the lines to them can be said. **Report:** whether a self-cast heal ever speaks to the friend.

**C0i (ADR 0056): the NPC's voice and the short lines in battle.** Never run in the client either. An NPC's own lines
(its name, its temperament, its manner of speaking) now keep about 60% of a dialogue, and in a battleground, an arena or
a boss fight the short lines keep about 85% of the picks and say their short variant.

23. **A gruff innkeeper.** Open about ten dialogues with Innkeeper Gryshka in Orgrimmar (or another innkeeper with a
    temperament) with `/au talk`. **Expect:** most openings sound like her (gruff, short), never the same line twice
    in a row; a few are the lines every innkeeper says. **Report:** whether her own lines come back too often.
24. **Short lines in a battleground.** In a battleground, with `/au chance battle 100`, fight for a few minutes.
    **Expect:** the battle lines are short (one breath). **Report:** any long line, with `/au debug`.

**C0j (ADR 0057): a pick that does not grow with its pools.** Never run in the client either. The addon now sorts the
lines of each large pool as it loads them, instead of on the first line of each moment, and weighs only the lines it
may say; the lines said are the same.

25. **The first lines after login.** Log in, `/au prof reset`, then fight a few monsters and use `/au speak` a few
    times in the first two minutes, then `/au prof`. **Expect:** the max of `PickEntry` close to its p95 (no first pick
    of several ms), loading no slower than before. **Report:** the mean, p95 and max of `PickEntry`, and the memory.

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
N0 named ................ elite ___  rare ___  quest boss ___  guard ___  innkeeper ___  other faction ___  wrong verdicts ______
N0 attack ............... opened by player (swing/cast)? ___  by enemy? ___  UNIT_DIED fires? ___  PARTY_KILL by me? ___  hidden? ___
N0 several / witnesses .. engaged ___  attacking me ___  witnesses (nameplates/friendly/near) ______  tap denied true? ___
N0 pet / death .......... PARTY_KILL pet/other ___  death: during/after the fight ______  last attacker = the killer? ___
N2 first meeting ........ right time? ___  right or missing weather? ___  zone and level? ___
N2 NPC block ............ level and next? ___  temperament? ___  overlaps? (must be NO) ___
N2 temperament .......... innkeeper faster than guard? ___  NPC race from the client? ______
N2 notices .............. private line? ___  never in combat? ___  after the fight? ___  too many? ___  journal Friend? ___
N3 readings ............. UnitSex("npc") ______  UnitCreatureType("npc") ______
N3 romance .............. grows with a Friend of the opposite sex? ___  not with own sex/merchant/below Friend? ___
N3 vow .................. private line? ___  journal without name? ___  only once? ___  nothing in chat? ___
N4 promise .............. line in the detail? ___  none from an item? ___
N4 abandon .............. private line (after how many s) ______  hook AbandonQuest ______  SetAbandonQuest ______
N4 turn-in .............. abandon line after a turn-in? (must be NO) ___  to another NPC? ___
N4 reminder/relief ...... reminder after 7 days? ___  relief? ___  never when ready? ___
N4 oath ................. "sworn"? ___  broken: line, level down, journal? ___  the NPC remembers? ___  the zone (name) ______
N4 silence .............. none in combat? ___  none with the option off? ___  nothing in chat? ___
N6 town ................. inside the inn ______  in the districts ______  none in the open? ___
N6 word ................. line to a new NPC? ___  trust without doing anything? ___  nothing in another village? ___
N6 title ................ line? ___  journal? ___  right gender? ___  withheld after a broken oath? ___
N6 rivals ............... Allison notices Farley? ___  Corina notices Argus? ___  only once? ___  nothing in chat? ___
N1 strike first ......... line? ___  after (s) ______  with a spell? ___  Hated? ___  animal/monster nothing? ___
N1 kill / witnesses ..... kill line? ___  pet? ___  witness with less trust? ___  the town knows? ___
N1 faction / guest-right  other faction's city? ___  innkeeper recognised? ___  GetBindLocation ______  journal? ___
N1 home / options ....... warm/cold return? ___  eternal grudge off: days? ___  notices off? ___  nothing in chat? ___
N7 nemesis .............. elite: story? ___  ordinary/dungeon/fall nothing? ___  line when alive? ___  how many attacked you ______
N7 meeting / fall ....... line on meeting? ___  fall seen? ___  who struck last ______  song in the songbook? ___  nothing in chat? ___
N8 pet .................. call/dismiss? ___  mood? ___  bond (hours) ______  nothing on entering/after a flight? ___
N8 grief ................ pet? ___  demon not dismissed? ___  dear NPC? ___  lament? ___  journal? ___
N8 ally (#125) .......... line? ___  page with no name? ___  one per wipe? ___  feigned death/battleground nothing? ___
N8 letters / options .... letter at login? ___  in the journal? ___  /reload nothing? ___  options off? ___  nothing in chat? ___
L2 verses ............... one at a time? ___  too fast/slow? ___  wheel? ___  clicks pass? ___  history line breaks? ___
R5 trial slice ......... repeated within 90 min? ___  out of place (%) ______  PickEntry p95 ______  memory (KB) ______
L2 frequency ............ pieces in an hour (rare) ______  (normal) ______  never: none? ___  nothing in chat? ___
C0 areas ............... area in /au packs ______  ms of a change ______  stutter? ___  KB login/after/back ______
C0b frames ............. ms in all ______  frames ______  longest frame ______  stutter? ___  errors? ___
C0b memory ............. sources kept (KB) ______  areas released ______
C0e picks .............. PickEntry mean/p95 (ms) ______  stutter? ___  place/class/general all heard? ___  repeats ______
C0f own lines .......... /au packs class/race ______  rules/texts left out ______  other character ok? ___  KB (1st/2nd) ______
C0g own gestures ....... bandage on self heal? ___  on another silent? ___  Battle Shout/poison/aspect buff? ___  names ______
C0h cast on self ....... potion + friend: line to the friend? ___  self heal + friend: to the friend? ___  heal on friend ok? ___
C0i voice and battle ... innkeeper sounds like herself? ___  too repetitive? ___  battleground lines short? ___
C0j first picks ........ PickEntry mean/p95/max (ms) ______  loading slower? ___  KB ______
```
