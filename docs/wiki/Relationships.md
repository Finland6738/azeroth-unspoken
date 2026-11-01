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

## People who are only nearby (optional, off by default)

Walking past someone is not meeting them, so by default the addon ignores nameplates and the mouseover. If you turn on **Recognise nearby** (the Options tab of the window, or `/au relationships proximity on`), the narrator may recognise a person **already in your list** when their nameplate appears or you point at them, with the same rule as joining a group: **at most once per person per session**, in the private narrator, and silence is always possible. In a crowd the addon looks at only a few people a second (and not at all while your list is empty), so a busy capital costs almost nothing; in a very dense crowd it may miss someone for a moment and see them on the next nameplate or when you point at them. If you also allowed [[reading other players' Total RP 3 profiles|Character-Soul-and-Total-RP-3]], someone who is **not** in your list but has a Total RP 3 profile can appear in *People met* as a suggestion for this session.

What it never does:

- it **never adds anyone** (not even with **Register by itself**) and never writes anything: a sighting is not counted as a meeting, and adding a suggested person later does not turn it into one;
- it keeps **nothing about strangers**, not even in memory;
- it **does not read a person whose identity the game hides** (some situations, such as certain instances, hide names);
- it is limited: at most one proposal a minute and ten per session.

With the option off, the addon does not even listen for those game events.

## Sharing your list between your characters (optional, off by default)

By default each character has **its own list** and its own opinions. If you play several characters on one account, you can turn on **Share with the account**: your **choices** about people (axes, label, feelings, note, tags, how you see them) are then kept in the account and **all your characters use them**. What each character **observed** (when and where it met someone) always stays with that character.

Before you turn it on, read the warning:

- **Privacy:** anyone using this account sees the shared opinions, and the saved file travels with your other saved data.
- **Role play:** your characters would feel the same about the same people. A character cannot "not know" what another chose, unless you tell it to keep its own.

Turning it on takes **two steps** (click, read the warning, click again within 15 seconds, or repeat `/au relationships share on`). Turning it off is **one step and deletes nothing** of the shared list. The only thing that goes is a record one of your characters made just because it met someone who was on the list (no choices of its own: how many times it met them): it is cleaned the next time that character logs in. A person you chose to keep for a character, with your choices, never goes.

How it works:

- **Turning it on moves nothing.** What a character already chose stays its own. From then on, new people you add and new choices go to the account's list.
- **A character's own choices win.** If a character has choices of its own for a person, those count for that character **as a whole** (they are not mixed with the account's, so a character that only wrote a note does not inherit the account's axes). Otherwise the shared choices count.
- **Per person:** in the detail of a player, the button **Choices: shared / Choices: this character** switches it. *This character* gives it a copy of the shared choices to keep and ignores the shared ones from then on. *Shared* moves its choices into the account's list (replacing what was there). `/au relationships scope <name> shared|character` does the same.
- **Move what you already have:** `/au relationships share all` moves the choices of this character into the shared list. Where the account already has choices for a person, **this character's own stay** and nothing is overwritten. You can repeat it.
- **Way back:** before turning it off, `/au relationships share copy` copies the shared choices into this character, so it keeps them. If you turn it off without copying, the shared list stays in the account, unused, and comes back if you turn it on again.
- **Removing** a person while sharing is on removes them from the account's list, for all your characters, and every other character drops what it had noted about them only through the list when it next logs in. `/au relationships reset players` clears only this character's list; `/au relationships reset shared` clears the account's.

## Greetings, farewells and duels follow the relationship

What your character says to someone fits what you feel about them. Warm lines ("old friends around the fire", "so good to see you", "good to run into you again") are **never** used for a person you marked as an **enemy**, **disliked**, **distrusted** (wary) or **feared one**; they get their own greetings and farewells, cold, guarded or tense. A **duel** request is answered differently for a friend (playful), a respected rival (a long-awaited match), an enemy (no words left), a distrusted or feared person (an inner warning) and someone you do not know (the usual banter).

Pack authors: a line tagged `warm` in a greeting, farewell or reaction to an action must exclude those relationships, or the validator reports it (see the pack guide).

## How to use it

Open the window with `/au relationships` or the **Relationships...** button in the [[settings panel|Settings]].

The window is 660 units tall in every view, so it fits the screen at UI scale 1. It has three tabs: **Relationships**, **People met** and **Options**.

**The Relationships tab** is a table with **Name**, **Type** (NPC or Player), **Label**, **Disposition**, **Last seen** and **Encounters**. Click a column header to sort. Filter by **All**, **NPCs** or **Players**, by label, or type in **Search** (Enter gives the keyboard back to the game). A cell that is too long ends with "..."; point at the row to read all of it, and click it to open the person.

**The People met tab** lists this session's suggestions. Add with **+**, or dismiss.

**The detail view** (click a name) has two columns, and for a player a third block underneath. With the shared list on, a **Choices: shared / this character** button sits at the top right. **What you chose**:

- on the left, the axes, with sliders you can adjust;
- **Label**: *Automatic* or *Chosen*. Click to cycle through the labels (including **ally**) and back to automatic, or type your own words in the box below it;
- **Feeling**: up to two feelings in words, and **Typical axes** to set the axes to match the first one;
- on the right, **How you see them**: personality traits of the person (role, temperament, morality, goals, way of speaking) as you see them; *unknown* leaves it to the addon;
- **Note** and **Tags**: private, for you.

The label, note and tags boxes save when you leave them: Enter, a click in another box, another tab, **Back to the list** or **Close**. A text you were typing always goes to the person it was typed for, even if you open someone else from the journal. **Esc** puts back the saved text.

For a player there is a block across the window, **What the addon observed**: first recorded, last seen, the number of encounters by kind and, on the right, the last five facts. At the bottom, next to **Back to the list**, two different buttons:

- **Forget observations** (asks for confirmation) erases only what the addon observed: the counts, the encounters and the facts. The person stays in your list with everything you chose.
- **Remove person** (asks for confirmation) deletes the person and everything about them.

**The Options tab** (point at an option to read what it does):

| Option | Default | What it does |
|---|---|---|
| **Automatic NPCs** | on | works out NPC bonds by itself |
| **Suggest people** | on | suggests players you meet; does not add them |
| **Register by itself** | off | adds the players you meet without asking |
| **Attraction axis** | off | turns on the optional attraction axis |
| **Recognise on target** | off | lets the narrator also recognise a known player when you target them |
| **Recognise nearby** | off | nameplates and mouseover can let the narrator recognise a known player, for this session only; nothing is saved |
| **Share with the account** | off | the choices about people are shared by all your characters (a warning and a second click turn it on) |

Under the options, the privacy note. When you click **Share with the account**, the warning appears below it and the button becomes **Confirm: share** for 15 seconds.

The list, People met and Options tabs also have **Export** (text to copy) and **Forget everything** (with confirmation) at the bottom.

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
| `/au relationships proximity on\|off` | recognise known players by nameplate and mouseover (this session only) |
| `/au relationships share [on\|off\|all\|copy]` | the list shared by your characters: `on` shows the warning, repeat within 15 s to turn it on; `all` moves this character's choices into it; `copy` copies the shared choices into this character; no word shows whether it is on |
| `/au relationships scope <name> shared\|character` | whose choices count for one player |
| `/au relationships reset [all\|npcs\|players\|shared]` | erases relationships (`shared`: the account's list); repeat within 15 s to confirm |

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
- Everything stays on your computer, per character, unless you turn on **Share with the account**: then your choices (not the observations) are kept in the account's file. Erase it with **Forget everything**, `/au relationships reset` or `/au relationships reset shared`.
- **Recognise nearby** writes nothing, never adds a person and never reads a hidden identity.

See [[Privacy and Data|Privacy-and-Data]].

## Settings

| Setting | Default | Where |
|---|---|---|
| Relationships module | on | [[settings panel|Settings]], modules |
| Automatic NPCs | on | relationships window, Options tab |
| Suggest people | on | relationships window, Options tab |
| Register by itself | off | Options tab, `/au relationships auto` |
| Attraction axis | off | Options tab, `/au relationships attraction` |
| Recognise on target | off | Options tab |
| Recognise nearby | off | Options tab, `/au relationships proximity` |
| Share with the account | off | Options tab, `/au relationships share` |

## What you will see

- The window and its three tabs, filling up as you play.
- Lines that change tone with the bond: more formal with strangers, warmer with friends, more intimate with close bonds.
- An occasional memory in the [[journal|Memory-and-Journal]] when a bond changes in a meaningful way.

## Tips

- The list holds up to 1,000 NPCs and 300 players per character (and 300 in the account's shared list). If a saved list is longer than that, the addon cuts it when you log in: people you chose something about are never removed, the others go first, the least observed first, and `/au debug` says it happened.
- Playing several characters and want the same opinions of your friends? Try **Share with the account**, then `/au relationships share all` on the character that has them. Want one character to see a person differently? Use the scope button of that person.
- Players you saved with an older version keep everything: your choices and the old count and last-seen date are moved to the two new sections the first time you log in.
- The journal's **Forget everything** button does not touch relationships: use the relationships window or `/au relationships reset`.
- To correct how the addon sees an NPC, open their detail and set **How you see them**, or stand in front of them and use `/au who trait`. See [[Interlocutor and Place|Interlocutor-and-Place]].
