# Intensity and Prose Depth

Two settings shape how the narrator feels: **intensity** says how often it speaks, **prose depth** says in what style. They are independent: a quiet narrator can be solemn, and a lively one can be plain.

## Intensity

Intensity goes from **0 to 100**. The default is **50**.

| Value | What it feels like |
|---|---|
| **0** | Narrator silent: it speaks only when you ask. |
| **10–20** | Very discreet: one thought in important places. |
| **30–40** | Discreet: rare ambient comments and the odd special event. |
| **50–60** | Balanced: atmosphere, memories and long silences. *(suggested)* |
| **70–80** | Lively: more light scenes. |
| **90–100** | Intense: many chances, always with the anti-spam pauses. |

Intensity changes **how often**, not how long or in what style:

- at 50 every moment has its normal chance;
- below 50 chances shrink and pauses grow; above 50 chances grow (up to double at 100) and pauses shrink;
- important moments (death, coming back to life, a new level, resurrecting someone) never become rarer than at 50;
- at **0**, no spontaneous line appears at all, not even for important moments, and NPC dialogue buttons do not appear by themselves. Commands such as `/au muse` and the speak key still work.

### How to change it

- Wizard, step 3 (- and + by 10).
- Settings panel, **Intensity** (- and + by 10).
- `/au intensity <0-100>`, for example `/au intensity 30`. With no number, it shows the current value.

## Prose depth

Prose depth is the style of the lines. The default is **Literary**.

| Depth | Style | Example |
|---|---|---|
| **Natural** | everyday and concise | *"These walls have stood for centuries. I wonder who lived here."* |
| **Literary** | evocative but readable | *"The stones still keep the traces of those who called this place home."* |
| **Elevated** | solemn and ceremonial | *"The towers fell and the voices went quiet, yet the stones still keep watch over the lost days."* |

Depth is a preference, not a filter: lines written for your depth become more likely, the others stay possible. For the key moments (arriving in a forest, returning somewhere, death, a level, a victory, greetings) there are lines written for all three depths.

### How to change it

- Wizard, step 4.
- Settings panel, **Style depth** (click to cycle).
- `/au depth natural|literary|elevated`.

## Fine tuning

| Tool | Default | Command | What it does |
|---|---|---|---|
| Pause between lines | 45 s | `/au cooldown <seconds>` (0–3600), or the panel (15–180) | Minimum pause between two spontaneous lines. Important moments ignore it. |
| Event probability | per event | `/au chance <event> <0-100>` | The chance for one kind of moment. `/au chance` lists them all. |
| Ignored spells | none | `/au ignore <spell>` | Stops one spell from producing lines. |
| Pause | — | `/au pause` or the pause key | Silence now, for this session. |

The default chances are listed in the [[Settings Reference|Settings]].

## Examples

- **"It talks too much in dungeons."** Lower intensity to 30. In demanding fights the narrator already holds back.
- **"I only want my character's big moments."** Set intensity to 10 and `/au chance attack 0`.
- **"I love zone arrivals."** `/au chance zone 80`.
- **"My mount spell triggers lines."** `/au ignore` followed by the spell name, as it appears in your spellbook.
- **"I want grand, epic prose."** `/au depth elevated`.

## What you will see

Changing intensity or depth prints a short confirmation in your chat window, for example:

> intensity: 30 (0 = narrator silent for spontaneous events, 50 = balanced, 100 = intense)

The effect shows over the next minutes of play. Intensity is a probability, so two evenings at the same value can still feel a little different.
