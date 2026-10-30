# 0023. English first: the addon starts in English and command names are always English

- Status: Accepted
- Date: 2026-10-30 (Step 0 of the roadmap, issue #132; builds on the language rule of task L1)

## Context

The project rule is "English first, Italian as the secondary language". The documentation followed it since task L1, but the addon did not: the default `locale` was `it`, the base interface texts and the fallback were Italian, and `/au` accepted both Italian and English words, with the Italian ones first in the code, in `/au help`, and in usage and error messages. The wiki and the issues of the next milestone (Scale foundations) refer to commands and defaults, so they have to be written against the final names.

The addon has not been released yet, so no user depends on the Italian command words.

## Decision

1. **Default language `en`** for both the interface and the phrases on a new install. The wizard still opens with the language choice (English, Italiano). Saved settings are never rewritten: a user who already has `locale = "it"` keeps Italian. There is no schema migration, because a saved value is never replaced by a default; a test covers it for every schema.
2. **Command names and arguments are always English, in every interface language.** One command has one name. The only other spellings are English short forms (`/au lang`, `/au rel`; the channel names `s`, `e`, `p`, `g`, `i`). All Italian aliases are removed, and so are English synonyms that were not short forms (`chat`, `relations`, `npc`, `welcome`, `diary`, `say`, ...). The localized names of values (trait values, archetype names) are no longer accepted as arguments: only the English identifiers.
3. **One command table** (`Commands.list` in `UI/Commands.lua`): each English name, its short forms, the handler, the usage line shown by `/au help` and the key of its description. Subcommand and argument words live in small tables registered in `NS.Keywords` (`Core/Keywords.lua`).
4. **Help and messages.** `/au help` is built from the table: the command names are English in every language, the descriptions come from the interface language. Usage and error messages show the English command. An unknown word gets a short hint: the old Italian words (kept only in `Commands.HINTS`, which never run anything) and near misses suggest the English command; anything else points to `/au help`.
5. **Interface strings: English is the base locale and Italian the translation.** `NS:Lang()` falls back to `en`, and `NS:L(key)` falls back to the English text, never to Italian. `en` is always first in `NS.languageOrder`.
6. **Tests** fail if a command or argument keyword is not ASCII lowercase or is on the list of the old Italian words, if two commands collide, if `/au help` does not list every command in both languages, and cover the default language, the kept Italian choice and the fallback.

## Alternatives considered

- **Keep the Italian aliases as hidden synonyms.** It would keep old macros working, but nothing has been released, and every extra spelling would have to be documented, tested and kept in step in two languages. Rejected.
- **Translate command names per language** (`/au diario` in Italian). It makes the manual, the issues and support answers depend on the language of the player. Rejected: names are the contract, descriptions are the translation.
- **A migration that switches `it` to `en`.** It would override a choice the user made. Rejected.
- **Detect the client language for the default.** The addon's language is independent of the client's by design (README, wiki); the wizard asks anyway.

## Consequences

- Positive: one set of names in the code, the docs, the wiki, the issues and support; `/au help` is the same in every language; the table and the keyword test make a stray alias impossible to merge.
- Negative or costs: macros written for a development build with an Italian word stop working (the hint tells the new name); the Italian README and the in-game checklist describe the English commands in Italian.

## References

- Issue #132; [ADR 0013](0013-github-wiki.md) (the manual); wiki pages Commands, Languages, Settings.
