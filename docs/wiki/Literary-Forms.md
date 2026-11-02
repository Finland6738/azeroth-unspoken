# Literary Forms

Now and then the narrator can offer something older than a passing thought: words carved on a ruined lintel, a verse that comes back when you return somewhere, a rhyme an innkeeper sings, a song for the road, a saying about friends, a hymn, a lament after a lost fight.

## Where they come from

For now these pieces come from an optional pack, **Azeroth Unspoken - Verses** (the folder `AzerothUnspoken_Versi`, pack id `versi`). It is a first test with 16 pieces, each written in English and in Italian. Install it like any other pack: see [[Phrase Packs|Phrase-Packs]].

## What they are like

- **Private, always.** They appear only in your narrator, in your character's inner voice or in the voice of the NPC you are talking to. They are never offered for chat and nobody else sees them, whatever your [[Chat Gateway]] mode, even in automatic mode.
- **Rare.** About one piece every 20 to 30 minutes at the default intensity (50), never two within ten minutes at any intensity, never in combat; and each piece comes back at most once every three to seven days. The setting **Literary forms** changes how often (see below).
- **At the right moment only.** The first time you enter a ruin or a holy place; when you return to a place your character remembers; when you sit or ask for news in an innkeeper's [[NPC dialogue|NPC-Dialogues]]; when you use your Hearthstone or travel by spell; on a long ride; when someone you know (a friend, or someone you are wary of) acts toward you; when you pray with `/au pray`; after a lost boss fight.
- **Told, not claimed.** Every song, legend or inscription says who carries it: "worn letters on a fallen lintel", "a proverb from the market stalls", "the kind told to children". These are local color, the sort of thing people say and sing in Azeroth, not the history of the world.
- **One verse per line.** First comes who carries the words (*Worn letters on a fallen lintel:*), then each verse on its own line. The lines appear **one at a time** in the narrator box, each after the time to read the one before, so you can follow a song as it is sung. A long piece (a tale) makes the box taller, up to twelve lines; beyond that, scroll it with the **mouse wheel** over the text. With **Reduce motion** on, the whole piece appears at once. The history keeps the verses on separate lines too. See [[The Narrator|The-Narrator]].
- **The right piece for the moment.** Each piece knows what it is (a verse, a song, a saying, an inscription...), what it is for (to remember, to mourn, to amuse, to keep you company on the road...) and whose it is (something anyone could have heard, or your own). Nobody sings a tavern rhyme in a cursed land or right after a death, an inscription appears where there is stone to carve it, and a piece that speaks of the night comes in the evening or at night. The hymn and the late inn song, for example, come only after dusk.
- **Songs that change.** Some songs have several verses, of which you hear one or two each time, always in their order and always with the same refrain, so a song you have heard before can still surprise you. The walking song of the Verses pack, on a long ride, is the first: four verses, two at a time.
- **Your prose depth counts.** At the *natural* depth the road songs come out as one short sentence, and the other pieces are rarer. See [[Intensity and Prose Depth|Intensity-and-Depth]].
- **Your topics count.** The hymn touches religion and the lament touches death: if you chose to avoid those topics in your character's profile, they do not appear. See [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]].

## Trying them

You do not need to wait for the right place. Type:

```
/au event lore_test
```

Each time, the narrator shows one of the pieces, picked at random, in your language. Trying a piece this way does not use it up: it can still appear by itself later.

## How often: the setting "Literary forms"

In the [[settings panel|Settings]] (General), the row **Literary forms** cycles through three values, or type `/au literary`:

| Value | What it means |
|---|---|
| **Rare** (default) | About one piece every 20-30 minutes at intensity 50, never two within ten minutes. Fewer at a low [[intensity|Intensity-and-Depth]], a little more at a high one. |
| **Normal** | About twice as often, still never two within ten minutes. |
| **Never** | No literary piece at all, not even with `/au event lore_test`. |

They never come during a fight, whatever the setting.

## The songbook

Every piece your character hears or reads goes in the **songbook**: the tab **Songbook** of the [[journal|Memory-and-Journal]], or `/au songbook`. It keeps **which** pieces and **when**, never their words: the words are read from the pack when you open a piece, so a piece whose pack you removed is listed by its name only, until you forget it. Open a piece to read it whole, and:

- **Learn** it by heart, or mark it as a **Favourite**: it comes back to mind more often, and a favourite heads the list;
- **Mute** it: it is never said again, anywhere, until you let it speak again;
- **Forget** it (two clicks): it leaves the songbook and can be heard again.

The songbook keeps at most about 300 pieces (well under 10 KB); when it is full the oldest pieces you only heard make room. `/au songbook list` prints it, `/au songbook reset` empties it. With the memory turned off nothing is noted.

## A verse that comes back

Some hours after you heard a piece, at a quiet moment (resting at an inn, a long ride, dusk, nightfall, a change of weather), it may **come back to mind**: a line such as *A tune I heard somewhere starts up again in my head:* and then its verses, in the inner voice. An inscription comes back as something read (*The words cut in that stone come back to me, letter by letter:*). Only a piece the songbook says you really heard can come back, never in a fight, never in chat, never with the inner voice turned off, and always as rare as the other pieces.

## Your culture of origin

In the [[character soul|Character-Soul-and-Total-RP-3]] you may choose the **culture of origin**: the people your character grew up among. Only your choice counts, never race or class: a human raised among the kaldorei can choose *Kaldorei*. A piece of that culture comes more often; a piece of another culture comes only from someone else's mouth (an innkeeper sings it), never as your character's own; with no culture chosen, only the pieces that belong to no culture are said.

## Turning them off

Choose **Never** (above), or type `/au pack versi off` (and `/au pack versi on` to bring them back), or simply do not install the `AzerothUnspoken_Versi` folder.

## Tell us what you think

This pack is a trial. If a piece sounds wrong, comes at the wrong moment or too often, appears too fast or too slowly line by line, or does not fit in the box, please say so: see [[Reporting Bugs and Feedback|Reporting-Bugs-and-Feedback]].
