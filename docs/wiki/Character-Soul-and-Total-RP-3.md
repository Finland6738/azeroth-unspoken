# Character Soul and Total RP 3

**Character Soul** is your character's personality as the narrator understands it. It is entirely optional: with no choices, the narrator stays neutral and does not decide who your character is.

This page also explains the character's **emotions** (a mood that events change and time heals, which you can switch off) and how Azeroth Unspoken works with **Total RP 3**, with the consent it asks before reading anything.

## What it is

You can give your character:

- ten **traits**, each an **intensity from 0 to 100**: how idealist or cynical, how pragmatic or dreamy, how optimist or pessimist, and how altruistic, stoic, ambitious, spiritual, patriotic, curious and vengeful your character is;
- a level of **irony**;
- an **inner voice** that is louder or quieter, or silent;
- **topics to avoid**, which never appear in lines;
- or simply a ready-made **archetype**, which fills the traits for you as a starting point.

Traits **can coexist**: a character can be stoic *and* vengeful, cynical *and* altruistic. A trait you leave unset is "unknown", never zero.

Traits **weigh** lines; they never force them. A strongly curious character gets curious thoughts more often, but can still be surprised, and not every line shows every trait. Two choices are strict, though:

- a **topic to avoid** is never mentioned in a line, and a [[personal story|Story-Arcs]] about it never begins;
- an inner voice set to **off** means no inner-voice lines at all.

Personality is saved **per character**. If you chose a personality before this version (one temperament, one faith...), it was converted automatically into intensities that mean the same thing: you do not need to do anything.

## How to use it

### The personality window

Open it with `/au soul` or the **Character soul...** button in the [[settings panel|Settings]]. Close it with **Esc**, the **X** at the top right of its title band or **Close**. There you can:

- pick an **archetype** (click to go to the next one);
- drag the **slider** of each trait (the value is saved when you let go), or click **x** to clear it;
- set the **inner voice**;
- tick topics to avoid (an avoided topic has a full gold edge and a bar under its name);
- reset to a **neutral profile**: it removes every choice of the character (archetype, traits, inner voice, topics to avoid), so it asks twice. The button has the red outline of the actions that lose data; the first click turns it into **Click again: neutral profile**, and a second click within a few seconds confirms. Closing the window cancels;
- turn on **Traits from Total RP 3** (only if Total RP 3 is installed).

Next to each trait, the window shows its value (for the two-sided traits, which side: *cynical*, *balanced*, *idealist*...) and where it comes from: *chosen* (by you), *Total RP 3*, *game* (a hint from game data) or *neutral*.

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
| **Patriot** | `patriot` | Loyal to banner and homeland, steady and ambitious. |
| **Dreamer** | `dreamer` | Head in the clouds, hopeful and curious, idealist to the bone. |

An archetype only fills the sliders. Move any of them afterwards: the profile then shows as *custom (from Disillusioned veteran)*, for example. The inner voice and the topics to avoid are not part of an archetype and stay as you set them.

### Traits and their values

| Trait | Command word | 0 means | 100 means |
|---|---|---|---|
| Cynical - idealist | `idealism` | cynical | idealist |
| Dreamer - pragmatic | `concreteness` | dreamer | pragmatic |
| Pessimist - optimist | `optimism` | pessimist | optimist |
| Altruism | `altruism` | not at all | entirely |
| Stoicism | `stoicism` | not at all | entirely |
| Ambition | `ambition` | not at all | entirely |
| Spirituality | `spirituality` | not at all | entirely |
| Patriotism | `patriotism` | not at all | entirely |
| Curiosity | `curiosity` | not at all | entirely |
| Vengefulness | `vengefulness` | not at all | entirely |
| Irony | `irony` | none | constant |
| Inner voice | `voice` (also `innervoice`) | `off`, `quiet`, `present`, `vivid` | |
| Topics to avoid | `avoid` | `death`, `blood`, `betrayal`, `family`, `religion`, `undead`, `demons`, `romance` | |

A trait takes a number from 0 to 100, or `low`, `mid`, `high`. The old words still work as shortcuts: `/au soul temperament stoic`, `/au soul faith devout` or `/au soul motivation glory` set the matching intensities (stoicism 80, spirituality 90, ambition 80).

The trait names and the values are always the English words above, in every interface language. The interface shows their names in your language, but you type the English ones.

## Emotions

Besides a personality, your character has a **mood**. Things that happen move it, and it fades with time:

- a **death** leaves the character worried and heavy-hearted for a while, sometimes angry; getting up again brings resolve;
- coming back to a place where things **went badly** brings the unease back; coming back after a long time brings nostalgia;
- a fight makes the character tense, a victory or a new level lifts the mood;
- an **inn** calms things down; a long flight, dawn, a prayer or a friend's face do too; a landmark can inspire admiration; rain can make the mood heavier.

The emotions are: serene, happy, determined, curious, worried, tense, furious, melancholic, nostalgic and admiring. Each fades at its own pace: tension in a few minutes, worry in about twenty, melancholy in a couple of hours.

Your **personality shapes the mood**: a stoic character is shaken less and more slowly, an optimist worries less, a vengeful one is quicker to anger, a curious one is more easily intrigued.

The narrator lets the mood **colour the lines**, without naming it: after a death you will not hear a cheerful "hello again!" when you come back to the place, and a worried character may notice the bushes that look like an ambush. Most lines stay as they are.

**Switching it off.** Untick **Emotions** in the modules of the [[settings panel|Settings]], or type `/au emotion off`. With emotions off the narrator behaves exactly as it did before they existed, and the saved mood is cleared. `/au emotion on` turns them back on.

**What is saved.** Only the slow emotions (resolve, serenity, nostalgia, melancholy), only when they are strong, as a number and the time it was recorded, so they can carry over to your next session and keep fading while you are away. Never what caused them, never any text. See [[Privacy and Data|Privacy-and-Data]].

| Command | What it does |
|---|---|
| `/au emotion` | shows the current mood, the strongest emotion and what last changed it |
| `/au emotion off` / `on` | switches emotions off (and clears the mood) or on |
| `/au emotion reset` | clears the current mood |

`/au debug` also shows the mood on its **Emotion** line.

## Commands

| Command | What it does |
|---|---|
| `/au soul` | opens the personality window |
| `/au soul list` (`lista`, `show`, `mostra`) | prints the current personality |
| `/au soul archetype` (`archetipo`, `arch`) | lists the archetypes |
| `/au soul archetype <id>` | picks an archetype, for example `/au soul archetype scholar` |
| `/au soul <trait>` | shows the current value of a trait |
| `/au soul <trait> <value>` | sets a trait, for example `/au soul stoicism 75` or `/au soul optimism low` |
| `/au soul <trait> -` | removes your choice (also `none`) |
| `/au soul avoid <topic>` | adds a topic to avoid, or removes it if already there |
| `/au soul avoid -` | clears all topics to avoid |
| `/au soul neutral` (`neutro`, `reset`) | clears every choice |
| `/au soul trp3 on\|off` | reads traits from your own Total RP 3 profile (see below) |

Every change takes effect at once.

## Examples

```
/au soul archetype veteran
/au soul vengefulness 70
/au soul irony high
/au soul avoid family
/au soul voice quiet
```

A stoic, disillusioned veteran who has not forgotten an old wrong, jokes a lot, never talks about family, and thinks quietly.

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

Turn it on with `/au who trp3 on`, the **Read others' Total RP 3** row of the [[settings panel|Settings]], or the wizard. Turning it **on** takes two steps: a confirmation dialog shows the warning, and **Turn on** (or the same click or command again, after a couple of seconds) confirms. Turning it **off** is one step. While *Name from Total RP 3* is off, the row says *on, needs name*: it is on but does nothing yet. See also [[Interlocutor and Place|Interlocutor-and-Place]].

If Total RP 3 is missing, or changes in a way the addon does not understand, the integration simply switches itself off. `/au soul trp3` then says that Total RP 3 is not installed.

## What you will see

- In the window: each trait with its value and source.
- In chat, after a command, a short confirmation such as *"Stoicism: 75 (high). Takes effect now."*
- In play: lines that sound more like your character over time. The effect is gentle by design.

## Tips

- Start with an archetype, then adjust one or two sliders. Leave the traits you have no idea about unset: unknown is better than a guess.
- Use **topics to avoid** for anything you do not want in your roleplay. It is a hard rule, not a preference.
- If your character keeps quiet inside, set the inner voice to `quiet`, or to `off` to remove inner thoughts entirely.
