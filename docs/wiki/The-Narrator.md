# The Narrator and the Four Voices

The narrator is the heart of Azeroth Unspoken: a small box on your screen where lines appear while you play. Only you can see it.

## What it is

While you play, the addon listens for a few moments in your character's life:

- entering a zone, and coming back to a place you know;
- a fight starting and ending, a hard fight, low health;
- death and coming back to life;
- gaining a level;
- casting spells (heals, buffs, travel, attacks, resurrections);
- greetings, meetings, the person in front of you, the place you are in.

For each moment it decides whether to speak. Most of the time it stays silent: silence is a normal, intended outcome. When it speaks, it picks one whole, hand-written line that fits the moment, your character, the place and the people around you, and shows it in the box. There is at most **one line per moment**, never a cascade of messages.

## The four voices

Every line belongs to one of four voices. The box tells them apart in more than one way, so that colour is never the only cue: a thin **bar in the voice's colour** along the left edge, the **text tinted** in that colour, the voice's name at the top, and the **inner voice in a different typeface** (narrower, like handwriting in the margin). The four colours also differ in **lightness**, so Character (light gold) and NPC (a darker green) stay apart for players who do not see red and green well.

| Voice | What it is | Example | Can it go to chat? |
|---|---|---|---|
| **Narrator** | a storyteller describing the scene from outside | *"The road narrows, and the trees lean in to listen."* | yes, as an emote, if you choose to send it |
| **Inner voice** | your character's private thoughts | *"I should not have come back here alone."* | **never** |
| **Character** | words your character could say out loud | *"Well met, friend. The road was kind today."* | yes, as `/say` or on a channel you choose, if you send it |
| **NPC** | something said by a person around you | *"Mind the step, traveller."* | **never** |

The inner voice and the NPC voice always stay private, whatever you choose in the [[Chat Gateway]]. You can turn the inner voice down or off in your [[character's personality|Character-Soul-and-Total-RP-3]].

## How it keeps things varied

The narrator tries not to sound like a combat commentary or a broken record:

- **Lines about the place come first.** Where there are lines written for the zone or the spot you are in, you hear those before the general ones; once you have heard them, the general ones take turns again.
- **Not the same thing twice in a row.** It avoids coming back at once to the same idea (a loss, a joke, the road), the same images (a blade, the rain), the same voice three times in a row, and lines that open with the same words. This memory lasts only for the session and is never saved.
- **Gestures change.** When a spoken line is told as an emote, the gesture around it changes with the tone and the subject of the line, rather than "says" every time.
- **Fights do not take over.** Fighting may fill at most about four lines in ten of what you hear; death, coming back to life and a new level always get their line. Exploring and quiet thoughts, when they have been silent for a while, get a better chance to speak.

If the narrator seems quiet during long fights, this is why: silence is a normal outcome. `/au debug` shows the reason of the last decisions (for example `quota:combat`).

## When two things happen together

Sometimes two moments come together, and the narrator tells them **as one**, in a line written for that combination:

- a **victory after nearly falling** in the same fight: *"Still standing. I am not entirely sure how."* instead of an ordinary victory;
- a **victory soon after coming back to life**;
- a **new level right after a hard fight or a death**: *"So that is what it cost."*;
- arriving in a **new zone still wounded** from a fight;
- **coming back** to a place you know **in the rain, as the light goes**.

It is still **one line**: the other moment does not get a line of its own afterwards. In a typical evening of play this happens a handful of times; the rest of the time each moment speaks for itself, as before. `/au prof` counts these moments.

## Short monologues

Now and then, in a quiet moment (a thought you ask for, arriving somewhere, an inn, after a new level or coming back to life), the narrator or your inner voice says **two or three sentences in a row** instead of one: a short train of thought, in one entry of the box.

> *"The road has a way of emptying the head. I let it. My boots know this world better than any map I have bought. Somewhere ahead there is a fire I have not sat at yet."*

They are rare on purpose, never in combat, and **never go to chat**: only the narrator and the inner voice have them. Each sentence is written whole; the addon never assembles words.

## Verses and long texts

A [[literary form|Literary-Forms]] (a verse, a song, an inscription, a tale) keeps its **line breaks**: one verse per line. The lines appear **one at a time**, each after the time to read the one before at your reading speed, plus a short pause. The box is as tall as the whole piece from the start, so it does not jump as the lines come, up to **twelve lines** of your text size. A longer piece scrolls: move the **mouse wheel** over the text (the box follows the newest line until you scroll it yourself). The text still lets your clicks pass through to the game. With **Reduce motion** on, the whole piece appears at once. The history shows the verses on separate lines, the later ones indented.

These pieces are private: they are never offered for chat.

## How to use it

- **Just play.** Lines come by themselves. Their frequency depends on [[intensity|Intensity-and-Depth]].
- **Move the box.** Drag it with the mouse. Lock it in place from the [[settings panel|Settings]] (**Position locked**). Put it back with `/au narrator reset`.
- **Windows never hide it.** When the guide, the journal, the relationships or the character window open on top of the box, the box steps out from under them (below, or above) and goes back to your own place when they close; the place you chose is never changed. While it shows a chat proposal or the guide's test line it is above every window. A window too big for the screen to leave room (relationships on a 768-unit-high screen) cannot be avoided, so the box stays above it. Windows you click come to the front, and a window that opens over another one is shifted a little.
- **Pause at once.** Click the pause button (two bars) on the box, use the pause key, or type `/au pause`. Again to resume. The pause lasts until you resume it or log out. While paused, the speak button is dimmed and shows **Paused** under it, and a line you ask for says *paused* in its label.
- **Use the keyboard.** Every action has a key you can bind (none by default): speak, another line, discard, edit, next channel, pause, history, journal and the NPC answers. See [[Commands Reference|Commands#key-bindings]].
- **Keep a line on screen.** Put the mouse over the box: the line stays as long as the mouse is there (the time line stops just before its end), and a waiting chat proposal stops counting down.
- **Read again.** Click the history button (three lines) on the box, or type `/au narrator history`, to see recent lines. The history has the same dark surface as the box and follows its text size. Close it with its **x** or with **Esc**. Drag it by its top strip (the dots) to put it somewhere else: from then on it keeps that place and stays open when the box hides; until you drag it, it sits above the box and hides with it. `/au narrator reset` puts both back.
- **Hide a line.** Click the **x** button. It only hides the box: a waiting chat proposal is **not** discarded. It comes back with the next line, and the speak key first shows it again (a second press sends it), so nothing is ever sent that is not on screen. To throw a proposal away, use **Discard** in its bar.
- **Ask for a line.** Use the speak key, the speak button or a command such as `/au muse`. See the [[Commands Reference|Commands]].

## Commands

| Command | What it does |
|---|---|
| `/au narrator` | shows a sample line |
| `/au narrator history` | opens or closes the recent lines |
| `/au narrator reset` | moves the box back to its default place |
| `/au narrator clear` | empties the history |
| `/au pause` | pauses or resumes the narrator |
| `/au combat show\|chat\|hold\|silent` | what the narrator does during a fight (see [In combat](#in-combat)) |
| `/au on` · `/au off` | turns the addon on or off |

## Settings

| Setting | Default |
|---|---|
| Narrator box | on (off: lines appear in your chat window, visible only to you) |
| Text duration | 8 seconds, plus the time to read the line (2–30) |
| Reading speed | 14 characters a second (8, 11, 14, 18 or 24): a 140-character line stays 8 + 10 = 18 seconds. A piece with several lines adds a short pause (0.8 s) after each line |
| Background opacity | 80% (55–100%); the text itself is always fully opaque |
| Reduce motion | off (on: no time line; the box appears and disappears; verses appear all at once) |
| Text size | 14 (10–28) |
| Position locked | no |
| In combat | hold until combat ends (show, chat frame only, hold, silent) |
| History | the last 30 lines, this session only |

See the [[Settings Reference|Settings]].

## What you will see

- A dark, semi-transparent box near the bottom centre of the screen, with a thin bar in the voice's colour on its left
  edge.
- At the top of the box, the voice: *Narrator*, *Inner voice*, *Character* or *NPC*. The top strip grows with the text
  size, so a large label never runs under the buttons or into the line.
- The line, tinted in the voice's colour (white when the background is lighter than 60%, where a tint would be harder
  to read). It stays long enough to be read; a **thin time line** along the bottom edge shows how long it has left,
  and when it runs out the box goes. Nothing fades: the darkness of the box is a setting, applied once, and the text is
  never faded by it.
- Three quiet icon buttons at the top right, light grey until you point at them: **pause** (two bars; a triangle while
  paused), **history** (three lines) and **x** (hide). Each is a 24-unit square, with a little space between them.
- When a chat proposal is waiting, a bar appears under the line: on the left a **chip** with the channel (click it to
  change channel), then a quiet **Discard**, **Another**, **Edit**, **To chat** and **Send**, the one gold button,
  which also shows the speak key when you have bound one. The label says *proposal* and counts down the seconds it
  still waits. See [[Chat Gateway]].
- While a proposal waits, it stays in the box: other lines (a thought, a story notice) go to the history at once, the label says how many (for example *+1 in history*), and they come to the box after you send or discard the proposal, or when it expires. A line kept waiting more than two minutes stays only in the history.
- Now and then a discreet notice, for example when a [[personal story|Story-Arcs]] can begin. It stays as long as any other line and is kept in the history.

## What it reacts to

Besides your fights, deaths and new zones, the narrator now also notices what the game says about the world around you:

- the **weather**: rain, snow, a storm, a sandstorm or fog beginning or ending, and the weather you arrive in;
- **dawn and dusk**, from the game's own day and night;
- a **new subzone**, and **named places** such as an inn, a village, a graveyard or a mine (see [[Interlocutor and Place|Interlocutor-and-Place]]);
- your **quests**: a step finished, a quest ready to hand in, a quest handed in (more warmly after many attempts), and a change of **reputation** with a faction;
- **resting** in an inn or a city;
- the **start and the end of a flight**.

These are ordinary moments: they follow the same pauses, limits and chance as everything else (see [[Settings Reference|Settings]]), they belong to the *World* module (weather, dawn, dusk, places, flights) or to the *Personal* one (quests, reputation, rest), and they are never spoken in combat. If the game does not tell the addon something (for example if the weather cannot be read), the narrator simply does not mention it: it never guesses.

## In combat

An ordinary fight is not the moment to read. The **In combat** setting (in the Narrator section of the [[settings panel|Settings]], or `/au combat`) says what a spontaneous line does during any fight:

| Setting | During the fight | After it |
|---|---|---|
| **Show** | in the box, as before | — |
| **Chat frame only** | written in your chat window, visible only to you, and in the history; the box stays away | — |
| **Hold until combat ends** (default) | nothing on screen | the last three lines of the fight, one after the other, half a second after it ends (after the line of the victory, if there is one); older ones are dropped, and a line held more than five minutes too |
| **Silent** | no spontaneous line at all | — |

In every setting:

- a **chat proposal waits for the end of the fight**: the proposal bar never comes up in combat, and a proposal that was waiting when the fight began leaves the screen and comes back after it, with its time from then and any text you had typed;
- the **editor never opens in combat** (it takes every key): a fight that begins while you edit closes it and keeps your text;
- the **speak key makes no new line in combat**: with nothing waiting it says how many lines wait for the end of the fight, or how to ask for one (`/au battlecry`);
- a line you ask for yourself with a command is never held.

Demanding fights (a boss, a raid, an elite enemy in an instance) were already silent, except for important moments such as a death; they still are.

## When the narrator stays quiet

The narrator does not speak, by design:

- when it is paused, the addon is off, or intensity is 0;
- during cinematics and similar full-screen moments;
- during demanding fights (boss fights, raids, elite enemies in instances), except for important moments such as a death; and during every fight with **In combat: silent** (see [In combat](#in-combat));
- when a line was shown very recently: there is a pause between lines (45 seconds by default) and a limit per kind of moment;
- when no line fits. A line is never forced.

## Tips

- If you want only the important moments, set intensity to 10–20.
- If you play with the box off, lines appear in your own chat window, marked with the voice. Nobody else sees them.
- The history is lost when you log out. If you want to keep something, write it in your [[journal|Memory-and-Journal]] or in your RP notes.
