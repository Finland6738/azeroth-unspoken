# FAQ

Quick answers to common questions.

## General

**What is Azeroth Unspoken, in one sentence?**
A private narrator for your roleplay: it shows hand-written lines that fit what your character is living, and lets you say some of them in chat if you want. See [[Home]].

**Is it free?**
Yes. It is a fan project.

**Can I reuse its lines or its code?**
The code is open (GPL-3.0): you may study it, change it and share it, as long as shared versions stay open and use another name. The lines are protected: you may quote a few of them, show them in screenshots, videos and streams, and suggest corrections or translations, but copying them elsewhere needs the author's permission. You may write your own phrase pack under any licence, starting from the example pack. In plain words: you may **play** with the lines, **edit them for yourself** on your own computer, **quote** a few of them with credit, and **show** them in screenshots, videos and streams (also monetised). You may **not** copy them into another addon, mod, bot, website or book, re-upload them, use them to train or test AI systems, or use them commercially, without written permission. The lines are not available for text and data mining either (a legal reservation of rights, not a technical block). The details are in the [licensing page](https://github.com/Finland6738/azeroth-unspoken/blob/main/LICENSING.md).

**Which game versions does it work with?**
World of Warcraft: Forever. Other clients are not supported.

**Has it been tested in game?**
Not yet in the real client: so far it has been tested outside the game, against a simulated client. That is why your [[reports|Reporting-Bugs-and-Feedback]] are especially valuable right now.

**Does it use AI or the internet?**
No. It is fully offline. Every line was written by a person, and the addon only picks among them.

**Does it slow the game down?**
It is designed to be light: it listens to a few events and does little work. If you notice a slowdown, please report it.

## Chat and other players

**Will it post in chat without me knowing?**
No. By default nothing ever goes to chat. Even with chat proposals on, a line goes out only when you press a key, click or type a command. The one exception is the *automatic* mode, which you must choose and confirm. See [[Chat Gateway]].

**Can other players see the narrator?**
No. The narrator box is only on your screen.

**Can other players see my journal or relationships?**
No. They stay on your computer. Nothing is shared.

**Does it need Total RP 3?**
No. It works fully without it. If you have it, it can use your profile's name and, if you allow it, your traits. See [[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]].

**Does it read other people's Total RP 3 profiles?**
Only if you turn that on (it is off by default), and only race, class and personality traits. Never notes or history, and nothing is saved.

## Using it

**Can I use the addon in Italian?**
Yes. The addon starts in English. Click **Italiano** in the setup wizard or type `/au language it`: the interface and the lines switch to Italian. The command names stay English (`/au journal`, not `/au diario`). See [[Languages]].

**The narrator talks too much. / Too little.**
Change the intensity: `/au intensity 30` for less, `/au intensity 70` for more. See [[Intensity and Prose Depth|Intensity-and-Depth]].

**Why does the narrator say less during long fights?**
Fights may take at most about four of every ten lines you hear, so places and thoughts get their turn too; death, resurrection and a new level always speak. See [[how it keeps things varied|The-Narrator#how-it-keeps-things-varied]].

**How do I silence it right now?**
`/au pause`, the **||** button on the box, or the pause key. Again to resume.

**How do I make my character say a line?**
Turn on chat proposals with `/au mode confirm`, bind the speak key, and press it when a line you like is proposed. See [[Chat Gateway]].

**Can I change a line before sending it?**
Yes: **Edit** on the box, or preview mode (`/au mode preview`), or **To chat**, which puts it in the chat box for you to finish.

**Can I use it in macros?**
Yes. For example `/au cast Flash Heal` after `/cast Flash Heal`, or `/au greet`, `/au toast`. See the [[Commands Reference|Commands]].

**Why didn't the narrator recall my first visit here?**
It only recalls memories that really exist, and not every time. Check the journal with `/au journal`. See [[Memory and Journal|Memory-and-Journal]].

**Are the NPC dialogues real?**
No. They are simulated by the addon and clearly labelled. They change nothing in the game. See [[NPC Dialogues|NPC-Dialogues]].

**Do stories give rewards?**
No. They are personal tellings, not quests. See [[Story Arcs|Story-Arcs]].

**Can I turn off a feature I do not like?**
Yes. Every big feature is a module you can turn off in the [[settings panel|Settings]]: NPC dialogues, Memory, Relationships, Stories, Chat proposals.

## Data

**Will I lose my journal when I update?**
No. Your data is not in the addon folder. See [[Installation and Updating|Installation-and-Updating]].

**How do I erase everything?**
See [[Privacy and Data|Privacy-and-Data]].

**Can I move my journal to another computer?**
Your data travels with the game's saved-data files. You can also export the journal as text with `/au journal export`.

## Helping out

**I found a bug. / I have an idea.**
Wonderful. See [[Reporting Bugs and Feedback|Reporting-Bugs-and-Feedback]].

**Can I write my own lines?**
Yes, with a phrase pack. See [[Phrase Packs|Phrase-Packs]].
