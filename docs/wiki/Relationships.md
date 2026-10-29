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

Suggestions last for this session only. Add someone with **+** in the *People met* tab or with `/au relations add <name>`, or dismiss them.

An option to register players by themselves exists (**Register by itself**), but it is **off** by default.

## How to use it

Open the window with `/au relations` (aliases `/au relationships`, `/au bonds`, `/au relazioni`, `/au relazione`) or the **Relationships...** button in the [[settings panel|Settings]].

**The Relationships tab** is a table with **Name**, **Type** (NPC or Player), **Label**, **Disposition** and **Last** (last seen). Click a column header to sort. Filter by **All**, **NPCs** or **Players**, by label, or type in **Search**.

**The People met tab** lists this session's suggestions. Add with **+**, or dismiss.

**The detail view** (click a name) shows:

- the axes, with sliders you can adjust;
- **Label**: *Automatic* or *Chosen*. Click to cycle through the labels and back to automatic, or type your own words in the box next to it;
- **Note** and **Tags**: private, for you;
- **How you see them**: personality traits of the person (temperament, morality, goals, way of speaking, role) as you see them; *unknown* leaves it to the addon;
- **Delete this relationship** (asks for confirmation).

At the bottom of the window:

| Option | Default | What it does |
|---|---|---|
| **Automatic NPCs** | on | works out NPC bonds by itself |
| **Suggest people** | on | suggests players you meet; does not add them |
| **Register by itself** | off | adds the players you meet without asking |
| **Attraction axis** | off | turns on the optional attraction axis |

Also: **Export** (text to copy) and **Forget everything** (with confirmation).

## Commands

| Command | Aliases | What it does |
|---|---|---|
| `/au relations` | see above | opens the window |
| `/au relations list` | `lista` | summary and the 10 most recent |
| `/au relations people` | `candidates`, `persone`, `candidati` | this session's suggestions |
| `/au relations add <name>` | `aggiungi` | adds a player |
| `/au relations dismiss <name>` | `scarta` | dismisses a suggestion |
| `/au relations remove <name\|npc:ID>` | `delete`, `rimuovi`, `elimina` | deletes a relationship |
| `/au relations detail <name>` | `info`, `dettaglio` | prints one relationship |
| `/au relations note <name> <text>` | `nota` | sets your note |
| `/au relations tags <name> <tag,...>` | `tag` | sets your tags |
| `/au relations label <name> <text>` | `etichetta` | sets your own label |
| `/au relations set <name> <axis> <value>` | `imposta` | sets an axis |
| `/au relations export` | `esporta` | text to copy |
| `/au relations auto on\|off` | `automatico` | register players by themselves |
| `/au relations attraction on\|off` | `attrazione` | the attraction axis |
| `/au relations reset [all\|npcs\|players]` | `azzera` | erases relationships; repeat within 15 s to confirm |

Names can be `Name` or `Name-Realm`. NPCs are written `npc:` plus their number, as shown by `/au relations list`. Axis names also work in Italian: `familiarita`, `fiducia`, `rispetto`, `affetto`, `timore`, `lealta`, `attrazione`.

## Examples

```
/au relations add Aria
/au relations note Aria Saved me in the Deadmines. Owes me a drink.
/au relations set Aria trust 60
/au relations label Aria sworn sister
```

## Privacy

- No chat or whisper text is ever read into or saved in relationships.
- Players are in your list only because you put them there (unless you turned on **Register by itself**).
- Your notes, tags and own labels are **private**: they are never used in a line that could go to chat.
- Everything stays on your computer, per character. Erase it with **Forget everything** or `/au relations reset`.

See [[Privacy and Data|Privacy-and-Data]].

## Settings

| Setting | Default | Where |
|---|---|---|
| Relationships module | on | [[settings panel|Settings]], modules |
| Automatic NPCs | on | relationships window |
| Suggest people | on | relationships window |
| Register by itself | off | window, `/au relations auto` |
| Attraction axis | off | window, `/au relations attraction` |

## What you will see

- The window and its two tabs, filling up as you play.
- Lines that change tone with the bond: more formal with strangers, warmer with friends, more intimate with close bonds.
- An occasional memory in the [[journal|Memory-and-Journal]] when a bond changes in a meaningful way.

## Tips

- The list holds up to 1,000 NPCs and 300 players per character.
- The journal's **Forget everything** button does not touch relationships: use the relationships window or `/au relations reset`.
- To correct how the addon sees an NPC, open their detail and set **How you see them**, or stand in front of them and use `/au who trait`. See [[Interlocutor and Place|Interlocutor-and-Place]].
