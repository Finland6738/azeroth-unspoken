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

Every line belongs to one of four voices. The box shows which voice is speaking.

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

## How to use it

- **Just play.** Lines come by themselves. Their frequency depends on [[intensity|Intensity-and-Depth]].
- **Move the box.** Drag it with the mouse. Lock it in place from the [[settings panel|Settings]] (**Position locked**). Put it back with `/au narrator reset`.
- **Pause at once.** Click the **||** button on the box, use the pause key, or type `/au pause`. Again to resume. The pause lasts until you resume it or log out.
- **Read again.** Click the **H** button on the box, or type `/au narrator history`, to see recent lines.
- **Hide a line.** Click the **x** button. If a chat proposal was waiting, it is discarded.
- **Ask for a line.** Use the speak key, the speak button or a command such as `/au muse`. See the [[Commands Reference|Commands]].

## Commands

| Command | What it does |
|---|---|
| `/au narrator` | shows a sample line |
| `/au narrator history` | opens or closes the recent lines |
| `/au narrator reset` | moves the box back to its default place |
| `/au narrator clear` | empties the history |
| `/au pause` | pauses or resumes the narrator |
| `/au on` · `/au off` | turns the addon on or off |

## Settings

| Setting | Default |
|---|---|
| Narrator box | on (off: lines appear in your chat window, visible only to you) |
| Text duration | 8 seconds, plus a little for long lines (2–30) |
| Opacity | 85% (20–100%) |
| Text size | 14 (10–28) |
| Position locked | no |
| History | the last 30 lines, this session only |

See the [[Settings Reference|Settings]].

## What you will see

- A dark, semi-transparent box near the bottom centre of the screen.
- At the top of the box, the voice: *Narrator*, *Inner voice*, *Character* or *NPC*.
- The line, which stays for a few seconds and then fades.
- Small buttons: **||** (pause), **H** (history), **x** (hide).
- When a chat proposal is waiting, more buttons appear: **Send**, **Edit**, **Another**, **Discard**, **To chat** and the channel. See [[Chat Gateway]].
- Now and then a discreet notice, for example when a [[personal story|Story-Arcs]] can begin.

## When the narrator stays quiet

The narrator does not speak, by design:

- when it is paused, the addon is off, or intensity is 0;
- during cinematics and similar full-screen moments;
- during demanding fights (boss fights, raids, elite enemies in instances), except for important moments such as a death;
- when a line was shown very recently: there is a pause between lines (45 seconds by default) and a limit per kind of moment;
- when no line fits. A line is never forced.

## Tips

- If you want only the important moments, set intensity to 10–20.
- If you play with the box off, lines appear in your own chat window, marked with the voice. Nobody else sees them.
- The history is lost when you log out. If you want to keep something, write it in your [[journal|Memory-and-Journal]] or in your RP notes.
