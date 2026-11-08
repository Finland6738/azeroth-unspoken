# Interface Tour

Every window of Azeroth Unspoken, one picture each, with a line on what it is for and the page that explains it.

> **These pictures are illustrative mockups, not in-game screenshots.** They are drawn from the addon's own code: the
> sizes, colours, buttons and texts of each window, with invented characters and real lines from the phrase database.
> The addon has not been tried in the real game client yet, so what you see in game may differ in small ways. The
> backgrounds are simple drawings; no game art is used.

![Illustrative mockup: an animated tour of every window of the addon](../design/mockups/interface-tour.gif)

*Illustrative mockup: the whole tour as one animation, a few seconds per window.*

Want every case, not one picture per window? The [assets folder](https://github.com/Finland6738/azeroth-unspoken/tree/main/assets) of the repository has one image for each: the narrator box in every voice and prose depth, every step of the first-run guide, each section of the settings, the output of `/au place`, `/au who` and `/au packs`, and the Italian interface.

## The narrator box

![Illustrative mockup: the narrator box in its four voices](../design/mockups/png/narrator-voices.png)

*Illustrative mockup: the four voices (NPC, character, inner voice, narrator), each with its colour bar and tint. Only
you see the box.* See [[The Narrator and the Four Voices|The-Narrator]].

![Illustrative mockup: a long private reading appearing line by line](../design/mockups/png/narrator-reading.png)

*Illustrative mockup: a verse or a song appears one line at a time; the box is as tall as the whole text from the
start.* See [[Literary Forms|Literary-Forms]].

![Illustrative mockup: a reading longer than twelve lines, scrolled to its last line](../design/mockups/png/narrator-reading-scroll.png)

*Illustrative mockup: past twelve lines the text scrolls with the mouse wheel, and the box follows the line just
revealed.*

![Illustrative mockup: the history of recent lines above the narrator box](../design/mockups/png/narrator-history.png)

*Illustrative mockup: the history (the icon with three lines), where a verse keeps its line breaks.*

![Illustrative mockup: three private notices of the narrator](../design/mockups/png/narrator-notices.png)

*Illustrative mockup: private notices, here a bond reaching a new level, a letter waiting and a song in the songbook.
In game they come one at a time.* See [[Relationships]].

![Illustrative mockup: the narrator box with a text size of 20](../design/mockups/png/narrator-large-font.png)

*Illustrative mockup: a larger text size; the top strip grows with the label.* See [[Settings Reference|Settings]].

![Illustrative mockup: the narrator paused](../design/mockups/png/narrator-paused.png)

*Illustrative mockup: the narrator paused, with the dimmed speak button and its "Paused" badge.*

## Lines for chat

![Illustrative mockup: a line proposed for /say, waiting for confirmation](../design/mockups/png/proposal.png)

*Illustrative mockup: a line proposed for chat. Nothing is sent until you press Send (or the speak key).* See
[[Chat Gateway]].

![Illustrative mockup: the proposal open in the editor](../design/mockups/png/proposal-editor.png)

*Illustrative mockup: Edit opens the line in an editor; Enter sends it, Esc keeps it as it was.*

![Illustrative mockup: the speak button and its tooltips](../design/mockups/png/speak-button.png)

*Illustrative mockup: the speak button in private mode, with a proposal waiting, and with the editor option.*

## NPC dialogue

![Illustrative mockup: the ambient dialogue window with an innkeeper](../design/mockups/png/dialogue-line.png)

*Illustrative mockup: a short ambient dialogue with an innkeeper, answered with a click or the keys 1 to 3.* See
[[NPC Dialogues|NPC-Dialogues]].

## The journal

![Illustrative mockup: the journal, Memories tab](../design/mockups/png/journal-memories.png)

*Illustrative mockup: the Memories tab, with a letter, a bond that grew, a companion and a grief among the memories.*
See [[Memory and Journal|Memory-and-Journal]].

![Illustrative mockup: the journal, Stories tab with the nemeses](../design/mockups/png/journal-stories.png)

*Illustrative mockup: the Stories tab, with the stories of two nemeses under their own heading.* See
[[Story Arcs|Story-Arcs]].

![Illustrative mockup: the journal, Songbook tab](../design/mockups/png/journal-songbook.png)

*Illustrative mockup: the Songbook, the verses and songs your character heard, with their marks.* See
[[Literary Forms|Literary-Forms]].

## Relationships

![Illustrative mockup: the Relationships window, list of people](../design/mockups/png/relations-list.png)

*Illustrative mockup: the list of NPCs and players, from the closest bond to a Hated foe.* See [[Relationships]].

![Illustrative mockup: the detail of an NPC](../design/mockups/png/relations-detail-npc.png)

*Illustrative mockup: an NPC's detail, with what the addon knows: level, temperament, first meeting, nickname, a favor,
the town and your title there.*

![Illustrative mockup: the detail of a hated NPC](../design/mockups/png/relations-detail-foe.png)

*Illustrative mockup: a Hated NPC, with a grudge for ever, the mark of a broken oath and a title the town withholds.*

![Illustrative mockup: the People met tab with identity questions](../design/mockups/png/relations-people.png)

*Illustrative mockup: People met, with two questions about a person's identity and three suggestions.*

![Illustrative mockup: the options of the Relationships window](../design/mockups/png/relations-options.png)

*Illustrative mockup: the seventeen options of relationships, each on or off with a click.*

## Your character

![Illustrative mockup: the Character soul window](../design/mockups/png/profile.png)

*Illustrative mockup: personality traits, the inner voice, the culture of origin and the topics to avoid.* See
[[Character Soul and Total RP 3|Character-Soul-and-Total-RP-3]].

## Settings and first run

![Illustrative mockup: the top of the settings panel](../design/mockups/png/settings-top.png)

*Illustrative mockup: the settings panel in the game's options window.* See [[Settings Reference|Settings]].

![Illustrative mockup: the first-run guide, step 1](../design/mockups/png/wizard-1.png)

*Illustrative mockup: the first-run guide opens on the language and a sample of the narrator.* See
[[First-Run Wizard|First-Run-Wizard]].

![Illustrative mockup: the first-run guide, the chat step](../design/mockups/png/wizard-7.png)

*Illustrative mockup: the step that decides what may reach chat; private is the default.*

![Illustrative mockup: the confirmation for automatic sending](../design/mockups/png/consent-auto.png)

*Illustrative mockup: a consent shows its whole warning, and its button waits two seconds before it can be pressed.*
See [[Privacy and Data|Privacy-and-Data]].

## In the chat frame

![Illustrative mockup: /au help in the chat frame](../design/mockups/png/chat-help-window.png)

*Illustrative mockup: `/au help` lists the five groups of commands.* See [[Commands Reference|Commands]].

![Illustrative mockup: /au debug in the chat frame](../design/mockups/png/chat-debug.png)

*Illustrative mockup: `/au debug`, the report to attach to a bug report; the values shown are those of a test
environment, not of a real client.* See [[Troubleshooting]].
