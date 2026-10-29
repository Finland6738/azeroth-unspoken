# Character Soul and Total RP 3

**Character Soul** is your character's personality as the narrator understands it. It is entirely optional: with no choices, the narrator stays neutral and does not decide who your character is.

This page also explains how Azeroth Unspoken works with **Total RP 3**, and the consent it asks before reading anything.

## What it is

You can give your character:

- a **temperament**, a **morality**, a **faith**, a **motivation**;
- a level of **curiosity** and **irony**;
- an **inner voice** that is louder or quieter, or silent;
- **topics to avoid**, which never appear in lines;
- or simply a ready-made **archetype** that sets several traits at once.

Traits **weigh** lines; they never force them. A curious character gets curious thoughts more often, but can still be surprised. Two choices are strict, though:

- a **topic to avoid** is never mentioned in a line, and a [[personal story|Story-Arcs]] about it never begins;
- an inner voice set to **off** means no inner-voice lines at all.

Personality is saved **per character**.

## How to use it

### The personality window

Open it with `/au soul` (aliases `/au anima`, `/au personalita`, `/au profilo`) or the **Character soul...** button in the [[settings panel|Settings]]. There you can:

- pick an **archetype**;
- click each trait to choose a value, or clear it;
- tick topics to avoid;
- reset to a **neutral profile**;
- turn on **Traits from Total RP 3** (only if Total RP 3 is installed).

Next to each trait, the window shows where its value comes from: *chosen* (by you), *Total RP 3*, *game* (a hint from game data) or *neutral*.

### Archetypes

| Archetype | Id | In short |
|---|---|---|
| **Neutral** (default) | `neutral` | No traits: the narrator does not pick the character for you. |
| **Disillusioned veteran** | `veteran` | Stoic and weary, has seen too much to trust promises. |
| **Hopeful traveler** | `traveler` | Cheerful and curious, finds hope at every turn of the road. |
| **Devout guardian** | `guardian` | Merciful and steady in faith, shields those who cannot shield themselves. |
| **Sharp-tongued rogue** | `rogue` | Gruff and pragmatic, irony is the armor. |
| **Scholar** | `scholar` | Stoic, skeptical and endlessly curious: every ruin is a library. |
| **Avenger** | `avenger` | Fierce and conflicted, one reason keeps them walking. |
| **Penitent** | `penitent` | Melancholic and seeking redemption, carries a debt. |

An archetype is a starting point. Change any trait afterwards; if your choices no longer match an archetype, it shows as *Custom*.

### Traits and their values

| Trait | Command word | Values |
|---|---|---|
| Temperament | `temperament` | `resolute`, `merciful`, `stoic`, `cheerful`, `melancholic`, `gruff`, `fierce` |
| Morality | `morality` | `righteous`, `pragmatic`, `conflicted`, `disillusioned`, `hopeful` |
| Curiosity | `curiosity` | a number 0–100, or `low`, `mid` (`medium`), `high` |
| Faith | `faith` | `devout`, `spiritual`, `doubting`, `skeptic` |
| Motivation | `motivation` | `duty`, `vengeance`, `glory`, `knowledge`, `redemption`, `freedom`, `protection` |
| Irony | `irony` | a number 0–100, or `low`, `mid` (`medium`), `high` |
| Inner voice | `voice` (also `innervoice`, `inner`) | `off`, `quiet`, `present`, `vivid` |
| Topics to avoid | `avoid` (also `topic`) | `death`, `blood`, `betrayal`, `family`, `religion`, `undead`, `demons`, `romance` |

Italian command words also work: `temperamento`, `morale`, `curiosita`, `fede`, `motivazione`, `ironia`, `voce`, `evita`.

## Commands

| Command | What it does |
|---|---|
| `/au soul` | opens the personality window |
| `/au soul list` (`lista`, `show`, `mostra`) | prints the current personality |
| `/au soul archetype` (`archetipo`, `arch`) | lists the archetypes |
| `/au soul archetype <id>` | picks an archetype, for example `/au soul archetype scholar` |
| `/au soul <trait>` | shows the current value of a trait |
| `/au soul <trait> <value>` | sets a trait, for example `/au soul faith devout` |
| `/au soul <trait> -` | removes your choice (also `none`) |
| `/au soul avoid <topic>` | adds a topic to avoid, or removes it if already there |
| `/au soul avoid -` | clears all topics to avoid |
| `/au soul neutral` (`neutro`, `reset`) | clears every choice |
| `/au soul trp3 on\|off` | reads traits from your own Total RP 3 profile (see below) |

Every change takes effect at once.

## Examples

```
/au soul archetype veteran
/au soul irony high
/au soul avoid family
/au soul voice quiet
```

A stoic, disillusioned veteran who jokes a lot, never talks about family, and thinks quietly.

## Total RP 3

Total RP 3 is a popular roleplay profile addon. **Azeroth Unspoken works fully without it.** If it is installed, the addon can read three things from it, each with its own switch. It never writes anything to Total RP 3.

| What | Default | How to turn it on or off | Reads |
|---|---|---|---|
| **Name from Total RP 3** | on | panel, wizard | the first name of **your own** profile, used in lines |
| **Traits from Total RP 3** | off | `/au soul trp3 on\|off`, personality window | the public personality traits of **your own** profile |
| **Read others' Total RP 3** | off | panel, wizard, `/au who trp3 on\|off` | race, class and personality traits of **other players'** public profiles |

### Your own traits

With **Traits from Total RP 3** on, a trait you did not choose by hand can come from your Total RP 3 profile. The order is always:

1. what **you chose** in Azeroth Unspoken;
2. your **Total RP 3** profile, if you allowed it;
3. a light hint from **game** data;
4. otherwise **neutral**.

So your own choices always win.

### Other players: consent first

Reading other players' profiles is a separate consent, **off by default**. When you turn it on:

- the addon reads **only** race, class and personality traits from other players' **public** Total RP 3 profiles, so the narrator can react to who is in front of you;
- it **never** reads notes, history, or other private or free-text fields;
- nothing it reads is saved;
- *Name from Total RP 3* must be on too.

Turn it on with `/au who trp3 on`, the **Read others' Total RP 3** row of the [[settings panel|Settings]], or the wizard. Turn it off the same way. See also [[Interlocutor and Place|Interlocutor-and-Place]].

If Total RP 3 is missing, or changes in a way the addon does not understand, the integration simply switches itself off. `/au soul trp3` then says that Total RP 3 is not installed.

## What you will see

- In the window: each trait with its value and source.
- In chat, after a command, a short confirmation such as *"Faith: Devout. Takes effect now."*
- In play: lines that sound more like your character over time. The effect is gentle by design.

## Tips

- Start with an archetype, then adjust one or two traits.
- Use **topics to avoid** for anything you do not want in your roleplay. It is a hard rule, not a preference.
- If your character keeps quiet inside, set the inner voice to `quiet`, or to `off` to remove inner thoughts entirely.
