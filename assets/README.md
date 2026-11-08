# Interface mockups

One image for every case of the Azeroth Unspoken interface, so you can see what the addon looks like before you install it. *Italiano: un'immagine per ogni caso dell'interfaccia; le immagini in italiano sono nella sezione [Italian interface](#italian-interface).*

These are **illustrative mockups built from the addon code, not in-game screenshots**: the windows, colours, sizes and texts come from `AzerothUnspoken/UI/` and the locale files, the lines are real lines of the phrase packs, and the people in the samples are invented. The backgrounds are original drawings: no Blizzard art, icon, font or screenshot is used.

Regenerate them after a change to the interface (see [`tools/build_assets.py`](../tools/build_assets.py)):

```
.venv/Scripts/python -m pip install -r docs/design/mockups/requirements.txt
.venv/Scripts/python -I -X utf8 tools/build_assets.py
```

For the CurseForge gallery: [curseforge/](curseforge/README.md) has fourteen of these images in the order of a tour, each with a title and a description to paste (English and Italian).

## Contents

- [Narrator box](#narrator-box) (15)
- [Chat Gateway](#chat-gateway) (7)
- [First-run wizard](#first-run-wizard) (9)
- [Settings](#settings) (10)
- [Journal](#journal) (13)
- [Story Arcs](#story-arcs) (3)
- [Relationships](#relationships) (12)
- [Character soul](#character-soul) (3)
- [NPC dialogues (NPC Alive)](#npc-dialogues-npc-alive) (4)
- [Chat commands](#chat-commands) (8)
- [Italian interface](#italian-interface) (14)

## Narrator box

| Image | What it shows |
|---|---|
| <a href="narrator-box-narrator-voice.png"><img src="narrator-box-narrator-voice.png" width="320" alt="narrator-box-narrator-voice"></a> | **[narrator-box-narrator-voice.png](narrator-box-narrator-voice.png)**<br>The narrator voice: a third-person line about your character, private to you. |
| <a href="narrator-box-inner-voice.png"><img src="narrator-box-inner-voice.png" width="320" alt="narrator-box-inner-voice"></a> | **[narrator-box-inner-voice.png](narrator-box-inner-voice.png)**<br>The inner voice: your character's thoughts, in its own typeface. |
| <a href="narrator-box-character-voice.png"><img src="narrator-box-character-voice.png" width="320" alt="narrator-box-character-voice"></a> | **[narrator-box-character-voice.png](narrator-box-character-voice.png)**<br>The character voice: something your character could say aloud. |
| <a href="narrator-box-npc-voice.png"><img src="narrator-box-npc-voice.png" width="320" alt="narrator-box-npc-voice"></a> | **[narrator-box-npc-voice.png](narrator-box-npc-voice.png)**<br>The NPC voice, used by the innkeeper's and other NPCs' lines. |
| <a href="narrator-box-all-voices.png"><img src="narrator-box-all-voices.png" width="320" alt="narrator-box-all-voices"></a> | **[narrator-box-all-voices.png](narrator-box-all-voices.png)**<br>The four voices side by side: accent bar, tint and typeface tell them apart. |
| <a href="narrator-box-depth-natural.png"><img src="narrator-box-depth-natural.png" width="320" alt="narrator-box-depth-natural"></a> | **[narrator-box-depth-natural.png](narrator-box-depth-natural.png)**<br>Prose depth Natural (`/au depth natural`): everyday and concise. |
| <a href="narrator-box-depth-literary.png"><img src="narrator-box-depth-literary.png" width="320" alt="narrator-box-depth-literary"></a> | **[narrator-box-depth-literary.png](narrator-box-depth-literary.png)**<br>Prose depth Literary, the default: evocative but readable. |
| <a href="narrator-box-depth-elevated.png"><img src="narrator-box-depth-elevated.png" width="320" alt="narrator-box-depth-elevated"></a> | **[narrator-box-depth-elevated.png](narrator-box-depth-elevated.png)**<br>Prose depth Elevated: solemn and ceremonial. |
| <a href="narrator-box-default-position.png"><img src="narrator-box-default-position.png" width="320" alt="narrator-box-default-position"></a> | **[narrator-box-default-position.png](narrator-box-default-position.png)**<br>Where the box and the speak button sit on a 1366 x 768 screen. |
| <a href="narrator-box-paused.png"><img src="narrator-box-paused.png" width="320" alt="narrator-box-paused"></a> | **[narrator-box-paused.png](narrator-box-paused.png)**<br>Paused (`/au pause` or the pause key): the header and the speak button say so. |
| <a href="narrator-box-large-text.png"><img src="narrator-box-large-text.png" width="320" alt="narrator-box-large-text"></a> | **[narrator-box-large-text.png](narrator-box-large-text.png)**<br>Text size 20: the header grows with the label. |
| <a href="narrator-box-private-notices.png"><img src="narrator-box-private-notices.png" width="320" alt="narrator-box-private-notices"></a> | **[narrator-box-private-notices.png](narrator-box-private-notices.png)**<br>Private notices: a bond's level, a letter waiting, a song learned. |
| <a href="narrator-box-long-reading.png"><img src="narrator-box-long-reading.png" width="320" alt="narrator-box-long-reading"></a> | **[narrator-box-long-reading.png](narrator-box-long-reading.png)**<br>A long private reading (a rhyme, a song), revealed line by line. |
| <a href="narrator-box-long-reading-scroll.png"><img src="narrator-box-long-reading-scroll.png" width="320" alt="narrator-box-long-reading-scroll"></a> | **[narrator-box-long-reading-scroll.png](narrator-box-long-reading-scroll.png)**<br>A reading longer than twelve lines scrolls inside the box. |
| <a href="narrator-history.png"><img src="narrator-history.png" width="320" alt="narrator-history"></a> | **[narrator-history.png](narrator-history.png)**<br>The narrator history, opened from the box's header. |

## Chat Gateway

| Image | What it shows |
|---|---|
| <a href="chat-gateway-proposal.png"><img src="chat-gateway-proposal.png" width="320" alt="chat-gateway-proposal"></a> | **[chat-gateway-proposal.png](chat-gateway-proposal.png)**<br>A proposal waiting for your confirmation before it goes to /s. |
| <a href="chat-gateway-editor.png"><img src="chat-gateway-editor.png" width="320" alt="chat-gateway-editor"></a> | **[chat-gateway-editor.png](chat-gateway-editor.png)**<br>The editor: change the line before you send it. |
| <a href="chat-gateway-sent.png"><img src="chat-gateway-sent.png" width="320" alt="chat-gateway-sent"></a> | **[chat-gateway-sent.png](chat-gateway-sent.png)**<br>The line after it was sent to /s. |
| <a href="chat-gateway-emote-proposal.png"><img src="chat-gateway-emote-proposal.png" width="320" alt="chat-gateway-emote-proposal"></a> | **[chat-gateway-emote-proposal.png](chat-gateway-emote-proposal.png)**<br>A narrator line proposed as an emote for /e. |
| <a href="chat-gateway-held-line.png"><img src="chat-gateway-held-line.png" width="320" alt="chat-gateway-held-line"></a> | **[chat-gateway-held-line.png](chat-gateway-held-line.png)**<br>A private line arrived while the proposal waits: it goes to the history. |
| <a href="speak-button.png"><img src="speak-button.png" width="320" alt="speak-button"></a> | **[speak-button.png](speak-button.png)**<br>The speak button and its tooltip in private mode, with a proposal waiting, and with the editor on. |
| <a href="chat-gateway-automatic-sending-consent.png"><img src="chat-gateway-automatic-sending-consent.png" width="320" alt="chat-gateway-automatic-sending-consent"></a> | **[chat-gateway-automatic-sending-consent.png](chat-gateway-automatic-sending-consent.png)**<br>Turning on automatic sending asks for consent, with a two-second pause. |

## First-run wizard

| Image | What it shows |
|---|---|
| <a href="wizard-1-language.png"><img src="wizard-1-language.png" width="320" alt="wizard-1-language"></a> | **[wizard-1-language.png](wizard-1-language.png)**<br>Step 1: welcome and the language of the lines. |
| <a href="wizard-2-experience.png"><img src="wizard-2-experience.png" width="320" alt="wizard-2-experience"></a> | **[wizard-2-experience.png](wizard-2-experience.png)**<br>Step 2: the kind of experience (a preset of modules). |
| <a href="wizard-3-intensity.png"><img src="wizard-3-intensity.png" width="320" alt="wizard-3-intensity"></a> | **[wizard-3-intensity.png](wizard-3-intensity.png)**<br>Step 3: how often the narrator speaks. |
| <a href="wizard-4-style.png"><img src="wizard-4-style.png" width="320" alt="wizard-4-style"></a> | **[wizard-4-style.png](wizard-4-style.png)**<br>Step 4: the prose depth. |
| <a href="wizard-5-modules.png"><img src="wizard-5-modules.png" width="320" alt="wizard-5-modules"></a> | **[wizard-5-modules.png](wizard-5-modules.png)**<br>Step 5: the modules, one by one. |
| <a href="wizard-total-rp-3.png"><img src="wizard-total-rp-3.png" width="320" alt="wizard-total-rp-3"></a> | **[wizard-total-rp-3.png](wizard-total-rp-3.png)**<br>The Total RP 3 step, shown only when Total RP 3 is installed (8 steps instead of 7). |
| <a href="wizard-6-chat-and-test.png"><img src="wizard-6-chat-and-test.png" width="320" alt="wizard-6-chat-and-test"></a> | **[wizard-6-chat-and-test.png](wizard-6-chat-and-test.png)**<br>Step 6 of 7: what may reach chat, and a test line. |
| <a href="wizard-7-keys-and-button.png"><img src="wizard-7-keys-and-button.png" width="320" alt="wizard-7-keys-and-button"></a> | **[wizard-7-keys-and-button.png](wizard-7-keys-and-button.png)**<br>Step 7 of 7: keys, the speak button and where the settings are. |
| <a href="wizard-try-the-narrator.png"><img src="wizard-try-the-narrator.png" width="320" alt="wizard-try-the-narrator"></a> | **[wizard-try-the-narrator.png](wizard-try-the-narrator.png)**<br>"Try the narrator": the box steps aside, below the guide. |

## Settings

| Image | What it shows |
|---|---|
| <a href="settings-panel.png"><img src="settings-panel.png" width="320" alt="settings-panel"></a> | **[settings-panel.png](settings-panel.png)**<br>The settings panel as it opens in the client's options window. |
| <a href="settings-section-general.png"><img src="settings-section-general.png" width="320" alt="settings-section-general"></a> | **[settings-section-general.png](settings-section-general.png)**<br>The General section: language, intensity, depth, literary forms, pause between lines, window scale. |
| <a href="settings-section-chat.png"><img src="settings-section-chat.png" width="320" alt="settings-section-chat"></a> | **[settings-section-chat.png](settings-section-chat.png)**<br>The Chat section: what may reach chat, the default channel, how long a proposal waits, the speak button. |
| <a href="settings-section-narrator.png"><img src="settings-section-narrator.png" width="320" alt="settings-section-narrator"></a> | **[settings-section-narrator.png](settings-section-narrator.png)**<br>The Narrator section: duration, reading speed, opacity, text size, motion, combat, the dialogue window. |
| <a href="settings-section-modules.png"><img src="settings-section-modules.png" width="320" alt="settings-section-modules"></a> | **[settings-section-modules.png](settings-section-modules.png)**<br>The Modules section: each part of the addon on or off. |
| <a href="settings-section-privacy.png"><img src="settings-section-privacy.png" width="320" alt="settings-section-privacy"></a> | **[settings-section-privacy.png](settings-section-privacy.png)**<br>The Privacy section: automatic sending and the Total RP 3 consents. |
| <a href="settings-panel-unrolled.png"><img src="settings-panel-unrolled.png" width="320" alt="settings-panel-unrolled"></a> | **[settings-panel-unrolled.png](settings-panel-unrolled.png)**<br>The whole panel at once, unrolled. |
| <a href="settings-language-reload.png"><img src="settings-language-reload.png" width="320" alt="settings-language-reload"></a> | **[settings-language-reload.png](settings-language-reload.png)**<br>After a change of language, the panel asks for a reload. |
| <a href="language-reload-dialog.png"><img src="language-reload-dialog.png" width="320" alt="language-reload-dialog"></a> | **[language-reload-dialog.png](language-reload-dialog.png)**<br>The reload dialog after a change of language. |
| <a href="settings-total-rp-3-consent.png"><img src="settings-total-rp-3-consent.png" width="320" alt="settings-total-rp-3-consent"></a> | **[settings-total-rp-3-consent.png](settings-total-rp-3-consent.png)**<br>Reading other players' Total RP 3 profiles asks for consent. |

## Journal

| Image | What it shows |
|---|---|
| <a href="journal-memories.png"><img src="journal-memories.png" width="320" alt="journal-memories"></a> | **[journal-memories.png](journal-memories.png)**<br>`/au journal`: the Memories tab. |
| <a href="journal-places.png"><img src="journal-places.png" width="320" alt="journal-places"></a> | **[journal-places.png](journal-places.png)**<br>The Places tab: where you have been, and how it went. |
| <a href="journal-flags.png"><img src="journal-flags.png" width="320" alt="journal-flags"></a> | **[journal-flags.png](journal-flags.png)**<br>The Flags tab: the facts your stories remember. |
| <a href="journal-session.png"><img src="journal-session.png" width="320" alt="journal-session"></a> | **[journal-session.png](journal-session.png)**<br>The Session tab: forgotten when you log out. |
| <a href="journal-songbook.png"><img src="journal-songbook.png" width="320" alt="journal-songbook"></a> | **[journal-songbook.png](journal-songbook.png)**<br>The Songbook: the pieces you have heard or read. |
| <a href="journal-songbook-piece.png"><img src="journal-songbook-piece.png" width="320" alt="journal-songbook-piece"></a> | **[journal-songbook-piece.png](journal-songbook-piece.png)**<br>A piece of the songbook, opened. |
| <a href="journal-letter.png"><img src="journal-letter.png" width="320" alt="journal-letter"></a> | **[journal-letter.png](journal-letter.png)**<br>A letter from an NPC you are close to, with its tooltip. |
| <a href="journal-row-tooltip.png"><img src="journal-row-tooltip.png" width="320" alt="journal-row-tooltip"></a> | **[journal-row-tooltip.png](journal-row-tooltip.png)**<br>A long row shows the whole text in its tooltip. |
| <a href="journal-empty.png"><img src="journal-empty.png" width="320" alt="journal-empty"></a> | **[journal-empty.png](journal-empty.png)**<br>The journal of a new character. |
| <a href="journal-delete-memory.png"><img src="journal-delete-memory.png" width="320" alt="journal-delete-memory"></a> | **[journal-delete-memory.png](journal-delete-memory.png)**<br>Deleting a memory asks for a second click. |
| <a href="journal-forget-everything.png"><img src="journal-forget-everything.png" width="320" alt="journal-forget-everything"></a> | **[journal-forget-everything.png](journal-forget-everything.png)**<br>"Forget everything" armed, waiting for the second click. |
| <a href="journal-memory-off.png"><img src="journal-memory-off.png" width="320" alt="journal-memory-off"></a> | **[journal-memory-off.png](journal-memory-off.png)**<br>With the Memory module off the journal is read-only. |
| <a href="journal-export.png"><img src="journal-export.png" width="320" alt="journal-export"></a> | **[journal-export.png](journal-export.png)**<br>The export window: the journal as plain text to copy. |

## Story Arcs

| Image | What it shows |
|---|---|
| <a href="story-arcs-list.png"><img src="story-arcs-list.png" width="320" alt="story-arcs-list"></a> | **[story-arcs-list.png](story-arcs-list.png)**<br>The Stories tab: stories under way, the nemeses, those that can begin and the concluded ones. |
| <a href="story-arcs-choice.png"><img src="story-arcs-choice.png" width="320" alt="story-arcs-choice"></a> | **[story-arcs-choice.png](story-arcs-choice.png)**<br>A story waiting for your choice. |
| <a href="story-arcs-nemesis.png"><img src="story-arcs-nemesis.png" width="320" alt="story-arcs-nemesis"></a> | **[story-arcs-nemesis.png](story-arcs-nemesis.png)**<br>A nemesis story: a foe that brought you down. |

## Relationships

| Image | What it shows |
|---|---|
| <a href="relationships-list.png"><img src="relationships-list.png" width="320" alt="relationships-list"></a> | **[relationships-list.png](relationships-list.png)**<br>`/au relationships`: the people you know. |
| <a href="relationships-people-met.png"><img src="relationships-people-met.png" width="320" alt="relationships-people-met"></a> | **[relationships-people-met.png](relationships-people-met.png)**<br>People met: suggestions you can add with one click. |
| <a href="relationships-empty.png"><img src="relationships-empty.png" width="320" alt="relationships-empty"></a> | **[relationships-empty.png](relationships-empty.png)**<br>The list of a new character. |
| <a href="relationships-player-detail.png"><img src="relationships-player-detail.png" width="320" alt="relationships-player-detail"></a> | **[relationships-player-detail.png](relationships-player-detail.png)**<br>A player's detail: disposition, feelings, note and traits. |
| <a href="relationships-npc-detail.png"><img src="relationships-npc-detail.png" width="320" alt="relationships-npc-detail"></a> | **[relationships-npc-detail.png](relationships-npc-detail.png)**<br>An NPC's detail: level of the bond, first meeting, nickname, favours, town. |
| <a href="relationships-hated-npc.png"><img src="relationships-hated-npc.png" width="320" alt="relationships-hated-npc"></a> | **[relationships-hated-npc.png](relationships-hated-npc.png)**<br>A hated NPC: a grudge, a broken oath, a title withheld. |
| <a href="relationships-shared-detail.png"><img src="relationships-shared-detail.png" width="320" alt="relationships-shared-detail"></a> | **[relationships-shared-detail.png](relationships-shared-detail.png)**<br>A player's detail with the shared list on. |
| <a href="relationships-options.png"><img src="relationships-options.png" width="320" alt="relationships-options"></a> | **[relationships-options.png](relationships-options.png)**<br>The options of the relationships window. |
| <a href="relationships-shared-list-consent.png"><img src="relationships-shared-list-consent.png" width="320" alt="relationships-shared-list-consent"></a> | **[relationships-shared-list-consent.png](relationships-shared-list-consent.png)**<br>Sharing the list with your account asks for consent. |
| <a href="relationships-proximity-consent.png"><img src="relationships-proximity-consent.png" width="320" alt="relationships-proximity-consent"></a> | **[relationships-proximity-consent.png](relationships-proximity-consent.png)**<br>Recognising nearby people asks for consent. |
| <a href="journal-relationships.png"><img src="journal-relationships.png" width="320" alt="journal-relationships"></a> | **[journal-relationships.png](journal-relationships.png)**<br>The Relationships tab of the journal. |
| <a href="journal-people-met.png"><img src="journal-people-met.png" width="320" alt="journal-people-met"></a> | **[journal-people-met.png](journal-people-met.png)**<br>The People met tab of the journal. |

## Character soul

| Image | What it shows |
|---|---|
| <a href="character-soul.png"><img src="character-soul.png" width="320" alt="character-soul"></a> | **[character-soul.png](character-soul.png)**<br>`/au soul`: your character's personality. |
| <a href="character-soul-neutral.png"><img src="character-soul-neutral.png" width="320" alt="character-soul-neutral"></a> | **[character-soul-neutral.png](character-soul-neutral.png)**<br>A neutral profile: the narrator picks no traits for you. |
| <a href="character-soul-reset.png"><img src="character-soul-reset.png" width="320" alt="character-soul-reset"></a> | **[character-soul-reset.png](character-soul-reset.png)**<br>"Neutral profile" waits for a second click. |

## NPC dialogues (NPC Alive)

| Image | What it shows |
|---|---|
| <a href="npc-dialogue-button.png"><img src="npc-dialogue-button.png" width="320" alt="npc-dialogue-button"></a> | **[npc-dialogue-button.png](npc-dialogue-button.png)**<br>Near an NPC, the dialogue window offers its Listen button. |
| <a href="npc-dialogue-window.png"><img src="npc-dialogue-window.png" width="320" alt="npc-dialogue-window"></a> | **[npc-dialogue-window.png](npc-dialogue-window.png)**<br>The NPC's line and up to three answers, numbered. |
| <a href="npc-dialogue-last-line.png"><img src="npc-dialogue-last-line.png" width="320" alt="npc-dialogue-last-line"></a> | **[npc-dialogue-last-line.png](npc-dialogue-last-line.png)**<br>The last line of a dialogue, with Close. |
| <a href="npc-dialogue-test.png"><img src="npc-dialogue-test.png" width="320" alt="npc-dialogue-test"></a> | **[npc-dialogue-test.png](npc-dialogue-test.png)**<br>`/au talk test`: a test innkeeper, no real NPC. |

## Chat commands

| Image | What it shows |
|---|---|
| <a href="chat-help.png"><img src="chat-help.png" width="320" alt="chat-help"></a> | **[chat-help.png](chat-help.png)**<br>`/au help`: the groups of commands. |
| <a href="chat-help-all.png"><img src="chat-help-all.png" width="320" alt="chat-help-all"></a> | **[chat-help-all.png](chat-help-all.png)**<br>`/au help all`: every command. |
| <a href="chat-place.png"><img src="chat-place.png" width="320" alt="chat-place"></a> | **[chat-place.png](chat-place.png)**<br>`/au place`: where you are according to the addon. |
| <a href="chat-who.png"><img src="chat-who.png" width="320" alt="chat-who"></a> | **[chat-who.png](chat-who.png)**<br>`/au who`: who is in front of you, and the source of each fact. |
| <a href="chat-packs.png"><img src="chat-packs.png" width="320" alt="chat-packs"></a> | **[chat-packs.png](chat-packs.png)**<br>`/au packs`: the phrase packs and the folders loaded on demand. |
| <a href="chat-stats-validate.png"><img src="chat-stats-validate.png" width="320" alt="chat-stats-validate"></a> | **[chat-stats-validate.png](chat-stats-validate.png)**<br>`/au stats` and `/au validate`: lines available and the pack check. |
| <a href="chat-setting-commands.png"><img src="chat-setting-commands.png" width="320" alt="chat-setting-commands"></a> | **[chat-setting-commands.png](chat-setting-commands.png)**<br>`/au mode`, `/au intensity`, `/au depth`, `/au emotion`: one line each. |
| <a href="chat-debug.png"><img src="chat-debug.png" width="320" alt="chat-debug"></a> | **[chat-debug.png](chat-debug.png)**<br>`/au debug`: the report to paste into a bug. |

## Italian interface

| Image | What it shows |
|---|---|
| <a href="it-narrator-box-narrator-voice.png"><img src="it-narrator-box-narrator-voice.png" width="320" alt="it-narrator-box-narrator-voice"></a> | **[it-narrator-box-narrator-voice.png](it-narrator-box-narrator-voice.png)**<br>Il narratore, in italiano. |
| <a href="it-narrator-box-inner-voice.png"><img src="it-narrator-box-inner-voice.png" width="320" alt="it-narrator-box-inner-voice"></a> | **[it-narrator-box-inner-voice.png](it-narrator-box-inner-voice.png)**<br>La voce interiore, in italiano. |
| <a href="it-narrator-box-character-voice.png"><img src="it-narrator-box-character-voice.png" width="320" alt="it-narrator-box-character-voice"></a> | **[it-narrator-box-character-voice.png](it-narrator-box-character-voice.png)**<br>La voce del personaggio, in italiano. |
| <a href="it-narrator-box-npc-voice.png"><img src="it-narrator-box-npc-voice.png" width="320" alt="it-narrator-box-npc-voice"></a> | **[it-narrator-box-npc-voice.png](it-narrator-box-npc-voice.png)**<br>La voce di un NPC, in italiano. |
| <a href="it-chat-gateway-proposal.png"><img src="it-chat-gateway-proposal.png" width="320" alt="it-chat-gateway-proposal"></a> | **[it-chat-gateway-proposal.png](it-chat-gateway-proposal.png)**<br>Una proposta per la chat, in italiano. |
| <a href="it-narrator-box-long-reading.png"><img src="it-narrator-box-long-reading.png" width="320" alt="it-narrator-box-long-reading"></a> | **[it-narrator-box-long-reading.png](it-narrator-box-long-reading.png)**<br>Una lunga lettura privata, in italiano. |
| <a href="it-wizard-1-language.png"><img src="it-wizard-1-language.png" width="320" alt="it-wizard-1-language"></a> | **[it-wizard-1-language.png](it-wizard-1-language.png)**<br>Guida iniziale: passo 1 di 7, in italiano. |
| <a href="it-wizard-2-experience.png"><img src="it-wizard-2-experience.png" width="320" alt="it-wizard-2-experience"></a> | **[it-wizard-2-experience.png](it-wizard-2-experience.png)**<br>Guida iniziale: passo 2 di 7, in italiano. |
| <a href="it-wizard-3-intensity.png"><img src="it-wizard-3-intensity.png" width="320" alt="it-wizard-3-intensity"></a> | **[it-wizard-3-intensity.png](it-wizard-3-intensity.png)**<br>Guida iniziale: passo 3 di 7, in italiano. |
| <a href="it-wizard-4-style.png"><img src="it-wizard-4-style.png" width="320" alt="it-wizard-4-style"></a> | **[it-wizard-4-style.png](it-wizard-4-style.png)**<br>Guida iniziale: passo 4 di 7, in italiano. |
| <a href="it-wizard-5-modules.png"><img src="it-wizard-5-modules.png" width="320" alt="it-wizard-5-modules"></a> | **[it-wizard-5-modules.png](it-wizard-5-modules.png)**<br>Guida iniziale: passo 5 di 7, in italiano. |
| <a href="it-wizard-total-rp-3.png"><img src="it-wizard-total-rp-3.png" width="320" alt="it-wizard-total-rp-3"></a> | **[it-wizard-total-rp-3.png](it-wizard-total-rp-3.png)**<br>Guida iniziale: il passo di Total RP 3, in italiano. |
| <a href="it-wizard-6-chat-and-test.png"><img src="it-wizard-6-chat-and-test.png" width="320" alt="it-wizard-6-chat-and-test"></a> | **[it-wizard-6-chat-and-test.png](it-wizard-6-chat-and-test.png)**<br>Guida iniziale: passo 6 di 7, in italiano. |
| <a href="it-wizard-7-keys-and-button.png"><img src="it-wizard-7-keys-and-button.png" width="320" alt="it-wizard-7-keys-and-button"></a> | **[it-wizard-7-keys-and-button.png](it-wizard-7-keys-and-button.png)**<br>Guida iniziale: passo 7 di 7, in italiano. |
