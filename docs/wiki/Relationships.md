# Relationships

Azeroth Unspoken remembers **how your character stands with people**: the innkeeper who always has a room for you, the merchant you trade with, the companions you choose to remember. The narrator's tone follows the bond, from formal with a stranger to intimate with a close friend.

## What it is

Each relationship has several **independent axes**. Together they give a **label** (what the person is to you) and an overall **disposition** (how warm the bond is).

### The axes

| Axis | Range | Meaning |
|---|---|---|
| **Familiarity** | 0 to 100 | how well you know each other |
| **Trust** | -100 to 100 | whether you rely on them |
| **Respect** | -100 to 100 | how highly you rate them |
| **Affection** | -100 to 100 | how much you like them |
| **Fear** | 0 to 100 | how much they frighten you |
| **Loyalty** | -100 to 100 | how bound you feel to them |
| **Attraction** (optional, off) | 0 to 100 | romantic interest; only if you turn it on |

### Labels

The label is worked out from the axes. The first one that fits, from the top, wins:

| Label | Roughly when |
|---|---|
| **beloved** | high affection and attraction, some trust (needs the attraction axis) |
| **enemy** | very low affection |
| **comrade in arms** | high trust and loyalty, well known |
| **respected rival** | low trust but high respect |
| **feared one** | high fear |
| **friend** | trust, affection and familiarity all good |
| **disliked** | low affection |
| **distrusted** | low trust |
| **indifferent** | known, but every feeling close to zero |
| **acquaintance** | known a little |
| **stranger** | everyone else |

You can always **choose a label yourself**, or write your own words. Your choice comes first.

There is one label the addon never gives by itself: **ally**, for someone who stands on your side for a cause, without the long familiarity of a comrade in arms. Only you can choose it (the label button reaches it), so nobody you already have changes label because of it.

### Disposition

From worst to best: **Hated**, **Hostile**, **Unfriendly**, **Suspicious**, **Neutral**, **Acquaintance**, **Friend**, **Close friend**, **Deep bond**.

## NPCs: automatic

Bonds with NPCs grow **by themselves** from what you actually do together:

- talking to them;
- taking and handing in quests;
- buying, selling and repairing at a merchant;
- flights, inns, training, the bank.

Growth slows down with repetition and has daily limits, so a hundred clicks on a vendor do not make you best friends. If you do not see an NPC for a couple of weeks, familiarity slowly fades, never below a small floor.

## Players: your choice

**No player joins your list without an action of yours.** The addon may **suggest** people you meet:

- members of your group;
- someone you traded with;
- people with a Total RP 3 profile nearby;
- someone you replied to in a whisper (only the name is used, never the text).

Suggestions last for this session only. Add someone with **+** in the *People met* tab or with `/au relationships add <name>`, or dismiss them.

An option to register players by themselves exists (**Register by itself**), but it is **off** by default.

### What you chose, and what the addon observed

Each player in your list has **two parts** that never mix:

- **What you chose**: the axes you set, the label, the **feelings**, your note, your tags and how you see them. **Only you change these.** The addon never edits them on its own, not even to "correct" a number after a long adventure together.
- **What the addon observed**: how many times you met, of which kind, when you last met, and the last five facts (kind, place and date). It only counts meetings with people **already in your list**: a stranger who duels you or waves at you leaves no trace, and is never added.

What it counts, for a player in your list:

| Kind | When |
|---|---|
| **group** | they join your group |
| **trade** | they open a trade with you |
| **duel** | they challenge you |
| **invite** | they invite you to a group |
| **emote** | they use an emote aimed at you |
| **private reply** | you reply to their whisper (only their name is read) |
| **target** | you target them |
| **fought together** | a fight in a group with them (a shared experience: it does not count as an encounter) |

The same kind of meeting with the same person within ten minutes is **one** encounter, so a wave every second does not run up the count. The **Encounters** column of the list shows the number, the detail shows the kinds, and **Export** includes both. **No chat, whisper or emote text is ever stored**: a fact is only a kind, a place and a time.

## Feelings in words

Besides the axes you can say **how you feel** about a person, in words: **trust**, **liking**, **wariness**, **fear**, **resentment** or **gratitude** (up to two). A feeling shapes the lines the narrator writes for them. It does **not** move the axes or change the label by itself: it is your word, nothing more. If you want the axes to follow, press **Typical axes**: it raises the axes to the usual level for the first feeling (it never lowers a stronger value you set), and you can adjust the sliders afterwards.

| Feeling | Typical axes it offers |
|---|---|
| trust | trust up |
| liking | affection and trust up |
| wariness | trust down |
| fear | fear up |
| resentment | affection and trust down |
| gratitude | affection, loyalty and respect up |

Warm lines are **never** used for someone you feel wariness, fear or resentment for, whatever their label says.

## Recognising a person you know

When a player from your list joins your group, challenges you, invites you or uses an emote at you, the narrator may say something about them: a line for what you feel, for how long it has been, for the place where you last met, or for a fight you shared. It happens **at most once per person per session**, in the **private** narrator (never in chat), and silence is always possible: the narrator's usual budget and chance still apply, and the meeting is recorded either way. By default it does **not** happen when you simply target someone; turn on **Recognise on target** if you want that.

## Greetings, farewells and duels follow the relationship

What your character says to someone fits what you feel about them. Warm lines ("old friends around the fire", "so good to see you", "good to run into you again") are **never** used for a person you marked as an **enemy**, **disliked**, **distrusted** (wary) or **feared one**; they get their own greetings and farewells, cold, guarded or tense. A **duel** request is answered differently for a friend (playful), a respected rival (a long-awaited match), an enemy (no words left), a distrusted or feared person (an inner warning) and someone you do not know (the usual banter).

Pack authors: a line tagged `warm` in a greeting, farewell or reaction to an action must exclude those relationships, or the validator reports it (see the pack guide).

## How to use it

Open the window with `/au relationships` or the **Relationships...** button in the [[settings panel|Settings]].

**The Relationships tab** is a table with **Name**, **Type** (NPC or Player), **Label**, **Disposition**, **Last seen** and **Encounters**. Click a column header to sort. Filter by **All**, **NPCs** or **Players**, by label, or type in **Search**.

**The People met tab** lists this session's suggestions. Add with **+**, or dismiss.

**The detail view** (click a name) has two sections. **What you chose**:

- the axes, with sliders you can adjust;
- **Label**: *Automatic* or *Chosen*. Click to cycle through the labels (including **ally**) and back to automatic, or type your own words in the box next to it;
- **Feeling**: up to two feelings in words, and **Typical axes** to set the axes to match the first one;
- **Note** and **Tags**: private, for you;
- **How you see them**: personality traits of the person (temperament, morality, goals, way of speaking, role) as you see them; *unknown* leaves it to the addon.

For a player there is a second section, **What the addon observed**: first recorded, last seen, the number of encounters by kind and the last five facts. And two different buttons:

- **Forget observations** (asks for confirmation) erases only what the addon observed: the counts, the encounters and the facts. The person stays in your list with everything you chose.
- **Remove person** (asks for confirmation) deletes the person and everything about them.

At the bottom of the window:

| Option | Default | What it does |
|---|---|---|
| **Automatic NPCs** | on | works out NPC bonds by itself |
| **Suggest people** | on | suggests players you meet; does not add them |
| **Register by itself** | off | adds the players you meet without asking |
| **Attraction axis** | off | turns on the optional attraction axis |
| **Recognise on target** | off | lets the narrator also recognise a known player when you target them |

Also: **Export** (text to copy) and **Forget everything** (with confirmation).

## Commands

| Command | What it does |
|---|---|
| `/au relationships` | opens the window |
| `/au relationships list` | summary and the 10 most recent |
| `/au relationships people` | this session's suggestions |
| `/au relationships add <name>` | adds a player |
| `/au relationships dismiss <name>` | dismisses a suggestion |
| `/au relationships remove <name\|npc:ID>` | deletes a relationship |
| `/au relationships detail <name>` | prints one relationship |
| `/au relationships note <name> <text>` | sets your note |
| `/au relationships tags <name> <tag,...>` | sets your tags |
| `/au relationships label <name> <text>` | sets your own label |
| `/au relationships set <name> <axis> <value>` | sets an axis |
| `/au relationships feeling <name> <feeling> [<feeling>] [preset]` | sets up to two feelings (`trust`, `liking`, `wariness`, `fear`, `resentment`, `gratitude`; `none` clears them); `preset` also sets the typical axes |
| `/au relationships forget <name>` | forgets what the addon observed about a player (keeps the person and your choices) |
| `/au relationships export` | text to copy |
| `/au relationships auto on\|off` | register players by themselves |
| `/au relationships attraction on\|off` | the attraction axis |
| `/au relationships reset [all\|npcs\|players]` | erases relationships; repeat within 15 s to confirm |

Names can be `Name` or `Name-Realm`. NPCs are written `npc:` plus their number, as shown by `/au relationships list`. The axis names are always the English ones: `familiarity`, `trust`, `respect`, `affection`, `fear`, `loyalty`, `attraction`.

## Examples

```
/au relationships add Aria
/au relationships note Aria Saved me in the Deadmines. Owes me a drink.
/au relationships set Aria trust 60
/au relationships label Aria sworn sister
/au relationships feeling Aria gratitude preset
```

## Privacy

- No chat, whisper or emote text is ever read into or saved in relationships. The meetings the addon counts are only a kind, a place and a time.
- Players are in your list only because you put them there (unless you turned on **Register by itself**). Meetings are recorded only for people **already** in your list.
- What the addon observed is kept apart from what you chose, and never changes it.
- Your notes, tags and own labels are **private**: they are never used in a line that could go to chat.
- Everything stays on your computer, per character. Erase it with **Forget everything** or `/au relationships reset`.

See [[Privacy and Data|Privacy-and-Data]].

## Settings

| Setting | Default | Where |
|---|---|---|
| Relationships module | on | [[settings panel|Settings]], modules |
| Automatic NPCs | on | relationships window |
| Suggest people | on | relationships window |
| Register by itself | off | window, `/au relationships auto` |
| Attraction axis | off | window, `/au relationships attraction` |
| Recognise on target | off | window |

## What you will see

- The window and its two tabs, filling up as you play.
- Lines that change tone with the bond: more formal with strangers, warmer with friends, more intimate with close bonds.
- An occasional memory in the [[journal|Memory-and-Journal]] when a bond changes in a meaningful way.

## Tips

- The list holds up to 1,000 NPCs and 300 players per character.
- Players you saved with an older version keep everything: your choices and the old count and last-seen date are moved to the two new sections the first time you log in.
- The journal's **Forget everything** button does not touch relationships: use the relationships window or `/au relationships reset`.
- To correct how the addon sees an NPC, open their detail and set **How you see them**, or stand in front of them and use `/au who trait`. See [[Interlocutor and Place|Interlocutor-and-Place]].
