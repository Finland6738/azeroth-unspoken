# Languages

Azeroth Unspoken speaks **English** and **Italian**. Every line exists in both languages, and so does the interface.

## How it works

- The addon's language is **your choice**, independent of the language of your game client. You can play an English client with Italian lines, or the other way round.
- The language covers both the narrator's lines and the addon's own texts (windows, buttons, messages).
- **The addon starts in English**, for both the interface and the lines. English is the base language of the addon and Italian is the secondary one. Choose Italian on the first page of the [[setup wizard|First-Run-Wizard]], or type `/au language it`.
- **If you already chose Italian**, an update keeps it: the saved choice is never changed.
- **Command names are always English**, in both languages (see below).
- The setting is shared by all characters on your account.
- Phrase packs can add more languages. A new language appears in the list as soon as its pack is installed.
- **Spell names are not translated.** The game client gives the addon the spell name in the client's own language, so an English client reports English names. The curated Italian lines therefore never name the spell ("questo incantesimo" instead): an English name would stand out in the middle of an Italian sentence.
- Only the language you chose is read into memory. The download contains both, and you do not need to delete the other one.

## How to change it

| Where | How |
|---|---|
| Wizard | step 1, click **English** or **Italiano** |
| Settings panel | **Phrase language** (click to cycle) |
| Command | `/au language it` or `/au language en` |

Short form: `/au lang`. With no code, `/au language` lists the available languages:

> available languages: en = English, it = Italiano. Usage: /au language <code>

### After a change: reload the interface

The windows, buttons and messages switch at once. **The lines need a reload of the interface.** To save memory, the addon reads the lines of the chosen language only, from its own folder (`AzerothUnspoken_enUS` or `AzerothUnspoken_itIT`), and the other language is never loaded. When you change language:

- the addon explains it in the chat and shows a box with a **Reload now** button (and a **Later** button);
- the settings panel shows the same **Reload now** button until you reload;
- you can also type `/reload` whenever you like.

Until you reload, the lines keep coming in the previous language. Nothing reloads without your click.

If the folder of the chosen language is missing, the addon says so once in the chat and keeps the lines in English (see [[Troubleshooting]]).

## Commands are always in English

The language you choose changes what the addon **says**: lines, windows, buttons, messages, and the descriptions in `/au help`. It never changes what you **type**. Command names and their arguments are English in every language: `/au journal`, `/au pause`, `/au channel party`, `/au depth literary`. With Italian chosen, `/au help` still lists `/au journal`, with the description in Italian.

There are no Italian command names. If you type one, for example `/au diario`, the addon answers with the English command to use: "Did you mean `/au journal`?". The full list is in the [[Commands Reference|Commands]].

In the same way, any text the addon shows that is missing in Italian is shown in English: English is the base and Italian the translation.

## Key bindings

The names of the [[key bindings|Commands]] in the game's Keybindings screen follow your **game client's** language (English or Italian), because the game reads them before the addon knows your choice.

## Tips

- If you want the interface and the lines in Italian, click **Italiano** in the wizard or type `/au language it`. The choice is kept for all your characters.
- Some names shown by the addon, such as phrase pack names, are written by their authors and may stay in one language.
- If you are bilingual, try the other language now and then: the lines are written separately in each language, not translated word by word.
