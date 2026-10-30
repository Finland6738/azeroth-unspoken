# Interlocutor and Place

Lines change with **who is in front of you** (the interlocutor) and **where you are** (the place). A greeting to a gruff guard in an enemy capital does not sound like a greeting to a jovial innkeeper at home.

## Who you meet

The interlocutor is the person you are dealing with: your target, or the NPC whose window you opened. The addon looks at:

- **who they are**: NPC, player or creature, race, class, level;
- **their role**, for NPCs: innkeeper, merchant, guard, quest giver, trainer, flight master, banker, leader, townsfolk;
- **their character**: temperament, morality, goals (profit, duty, knowledge, faith, glory, survival, family, power, peace, freedom) and way of speaking (plain, formal, gruff, warm, terse, florid, cryptic, jovial);
- **what they just did**: offered or gave you a task, received a finished task, opened their shop, trained you, offered a flight, gave you lodging, opened the bank, talked to you, traded with you, joined your group, challenged you to a duel, invited you to a group, made a gesture at you, attacked you, fought at your side;
- **your relationship** with them (see [[Relationships]]).

### Where this information comes from

The addon uses sources in a fixed order. The first one that says something wins:

1. **Your choice.** What you set with `/au who trait`, `/au talk role` or in the relationship's detail.
2. **Total RP 3**, for other players, only if you gave consent (see below).
3. **The addon's own data** about well-known NPCs.
4. **A light tendency** from class or race. It is only a weak hint, never a rule.

If nothing is known, the person is **neutral**. A role is only assigned from something reliable, such as their vendor or flight window opening: the addon does not guess. If the game hides who someone is, the addon does not use that person at all.

### Other players' Total RP 3 profiles

With your consent (**off** by default), the addon can read the **public** race, class and personality traits of other players' Total RP 3 profiles. It never reads notes, history or free text, and it saves nothing. Turn it on with `/au who trp3 on`, or **Read others' Total RP 3** in the [[settings panel|Settings]]. See [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]].

### Emotes aimed at you

If someone makes an emote at you (a wave, a bow), the addon notes **that** it happened, for this session only, so the narrator can react. The text of the emote is thrown away.

## Where you are

The addon recognizes:

- the **zone** and the map;
- the **territory**: friendly, hostile, contested, sanctuary or combat zone;
- whether you are in a **capital**, friendly or enemy;
- the **mood and themes** of the place (for example forest, farmland, coast, mountain, dark, cursed);
- the **instance type**: open world, dungeon, raid, battleground, arena or scenario;
- a **boss encounter** in progress, and your **group role** (tank, healer, damage).

### Instance types and rhythm

The narrator adapts to the place:

| Where | How the narrator behaves |
|---|---|
| **Open world** | normal rhythm |
| **Inn or city, in the open world** | a little more talkative: a good place for quiet, social lines |
| **Dungeon** | a little calmer |
| **Scenario** | a little calmer |
| **Battleground** | calmer, with short lines fit for a fast pace |
| **Raid** | about half as talkative; during demanding fights only important moments speak |
| **Arena** | much calmer, with short lines (arenas may not exist in your game version) |
| **Boss encounter** | almost silent until the fight is over |

Important moments, such as a death or a new level, are never made rarer by the place.

## Commands

| Command | What it does |
|---|---|
| `/au place` | prints where you are, then who is in front of you |
| `/au who` | prints who is in front of you |
| `/au who trp3 [on\|off]` | consent to read others' public Total RP 3 profiles; with no value, switches it |
| `/au who trait <trait> <value>` | corrects a trait of the person in front of you; `-` clears it |

For `/au who trait`, the traits are `temperament`, `morality`, `goals`, `speech` and `role`. The person must already be in your [[relationships list|Relationships]]. Examples:

```
/au who trait speech gruff
/au who trait role guard
/au who trait goals -
```

To tell the addon an NPC's role, you can also use `/au talk role <role>` (see [[NPC Dialogues|NPC-Dialogues]]).

## What you will see

`/au place` prints a few lines like these (the details depend on where you are):

```
Place: Elwynn Forest (Goldshire), map 1429, recognized by map number
Instance: open world, - (id -, difficulty -)
Territory: friendly; continent eastern; capital -
Mood and themes: farmland, forest
Encounter: -; group role: damage; battleground: none
```

The first line also says how the place was recognized: *by map number*, *by name*, *by an unverified map number* or *with no data*. A place recognized by name or with no data still works, with fewer details.

`/au who` prints the person's name and type, race, class and level, their character (or *neutral*), recent actions and your relationship, with the source of each piece of information. If no one is in front of you, it says so.

## Tips

- If a line feels wrong for a person, check `/au who`: maybe the addon has the wrong idea about their character. Correct it with `/au who trait`.
- `/au place` is the best way to report a place the addon does not know well. See [[Reporting Bugs and Feedback|Reporting-Bugs-and-Feedback]].
