# Story Arcs

**Story Arcs** are small personal stories of your character. They grow out of real things that happen while you play, unfold over time, and ask you to make the choices that matter.

> Stories are tellings, **not quests**. They give no rewards and have no effect on the game. They are the narrator's way of noticing a thread in your character's life.

## What it is

Each story begins only from a **real event**: going back somewhere, meeting someone again and again, a loss, a journey. It moves through a few states:

**still closed → discovered → pondered → concluded**

At one point the story asks you a question, with a few possible answers. Your answer shapes how it ends. When a story ends, it leaves a **permanent memory** in your [[journal|Memory-and-Journal]].

At most **two stories** are under way at the same time (you can lower it to one).

## The four stories

| Story | Id | How it begins |
|---|---|---|
| **The Path Found Again** | `path` | You go back to the starting zone of your race, after level 12. A story about who you were and who you are. |
| **A Familiar Face** | `knownface` | After level 5, an innkeeper, merchant, trainer, flight master or banker you keep meeting stops being a stranger. It grows as you get to know each other. |
| **The Place of the Fall** | `fallen` | Your first death after level 10. You go back to where you fell, and carry it with you as you go on. It never begins if your character avoids the topic of death. |
| **The Three Gates** | `capitals` | After level 10, having visited two capitals, you walk into a third. A story about what one looks for in passing city gates. |

## How to use it

Stories run by themselves. When something needs you, a discreet notice appears in the narrator box:

> A story can begin: "The Path Found Again". The journal says how (/au stories).

> A story waits for your choice: "The Three Gates" (/au stories journal).

### The Stories tab

Open the [[journal|Memory-and-Journal]] and choose the **Stories** tab, or type `/au stories journal`. You see the stories **under way**, those that **can begin**, those **concluded**, and those **skipped or disabled**. Click a story to see its state, what you chose so far and what it is waiting for. From there you can:

- **Begin the story**, if it can begin;
- **Choose** an answer, when it waits for your choice, or **Go on with the story**;
- **Suspend** it (it stays as it is and frees a slot), **Resume** it;
- **Skip** it;
- **Disable** it (it neither opens nor moves on), or **Enable** it again.

You can also **Suspend all stories** or **Skip all stories**.

## Commands

| Command | Aliases | What it does |
|---|---|---|
| `/au stories` | `/au story`, `/au arcs`, `/au storie`, `/au storia`, `/au archi` | lists your stories (also `list`, `lista`, `elenco`) |
| `/au stories journal` | `diario` | opens the Stories tab |
| `/au stories choose <story> [option]` | `scegli`, `prosegui` | answers a story's question, or moves it on |
| `/au stories start <story>` | `inizia` | begins a story that can begin |
| `/au stories suspend <story\|all>` | `sospendi` | suspends one story, or all |
| `/au stories resume <story>` | `riprendi` | resumes a suspended story |
| `/au stories skip <story\|all>` | `salta` | skips one story, or all |
| `/au stories disable <story\|all>` | `disattiva` | disables a story; `all` turns stories off |
| `/au stories enable <story\|all>` | `attiva` | enables a story; `all` turns stories on |
| `/au stories max <1\|2>` | | how many stories at the same time (default 2) |
| `/au stories on` · `off` | `accendi` · `spegni` | turns all stories on or off |
| `/au stories status` | `stato` | prints the internal state, for troubleshooting |

A story can be named by its id (`path`, `knownface`, `fallen`, `capitals`) or by its title. `all` also accepts `tutte` and `tutti`. `/au stories list` shows the possible answers when a story is waiting, for example:

```
/au stories choose capitals crossroads
```

## Settings

| Setting | Default | Where |
|---|---|---|
| Stories module | on | [[settings panel|Settings]], modules; `/au stories on\|off` |
| Stories at the same time | 2 | `/au stories max <1\|2>` |
| Single stories | all enabled | Stories tab, `/au stories enable\|disable` |

Story progress is saved **per character**.

## Privacy

Stories are private. Their lines stay in the narrator box and never go to chat, and nothing of a story is shared with anyone.

## What you will see

- Rarely, a notice that a story can begin or waits for you.
- Story lines in the narrator box at the key moments.
- In the journal, the Stories tab, and a permanent memory when a story ends.

## Tips

- If you do not want stories at all, turn the **Stories** module off. Nothing else changes.
- If a story touches something you would rather not play, skip or disable it, or add the topic to your [[topics to avoid|Character-Soul-and-Total-RP-3]].
- Some steps wait for time to pass or for you to be in the right place: if a story does not move on, it is probably waiting for that. The story's page in the journal says what it waits for.
