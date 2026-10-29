# 0012. Languages chosen by the user, independent of the client

- Status: Accepted
- Date: 2026-10-29 (from [ROADMAP.md](../../ROADMAP.md), "Decisions already made", no. 1, and the notes of S1)

## Context

The reference WoW Forever client is in English, but the addon was born for Italian players, and roleplay is often done in the language one prefers to read and write. Tying the addon's language to the client's would force people to read English lines even if they want Italian, and vice versa.

## Decision

1. **The language is chosen in the settings** (`settings.locale`) and applies to the lines and to the addon's interface. It does not depend on `GetLocale()`.
2. **The language code is the short one used by packs** (`it`, `en`, `de`…), not the client's (`itIT`). `Config:NormalizeLocale` also accepts `itIT`/`enUS` and `IT`, and maps them to the short code. The GDD (§11.4) used `itIT`; the roadmap prevails.
3. **Initial languages**: Italian and English. If an interface text is missing in the chosen language, **it falls back to Italian**, then to the key itself (`NS:L`).
4. **Languages are never mixed**: a line only appears in the languages it is written in; each line has one text per language (`it = "…"`, `en = "…"`). A line with no text in the chosen language is not eligible.
5. **Languages are extensible through packs**: `AzerothUnspoken:RegisterLanguage("de", { name = "Deutsch", ui = {…} })` adds a language; `AddTranslations(lang, map)` translates lines from other packs. Interface texts live in `Data/<language>/Interface.lua` (`itIT`, `enUS`).
6. **Localized names** of classes, races, factions and creature types (placeholders `{class}`, `{race}`…) come from the language chosen by the user, with the gender form (`{g:maschile|femminile}`), not from the client's.
7. **The IT and EN variants preserve intention and register**; they are not mechanical calques (GDD §5.4).
8. **Exception**: the key binding names in *Options → Keybindings* (`BINDING_NAME_*`; "Comandi" in the Italian client) use the client's language (`GetLocale() == "itIT"` → Italian, otherwise English), because that screen is read before the user chooses the addon's language.

## Alternatives considered

- **Following the client's language.** Simple, but it does not respect the user's preference and makes the addon almost useless for people who play with a client in one language and want to read in another.
- **Mixing languages** (a line in one language, fallback in another). It breaks immersion. Better silence or a different line.
- **A single text file with all the languages.** It does not scale when languages and third-party packs are added.

## Consequences

- Positive: every player reads in the language they prefer; adding a language does not require touching the engine.
- Negative:
  - every new line must be written in at least Italian and English to be complete; whoever writes a new language must translate the existing lines to see them;
  - conditions that depend on names (for example `zone = "Duskwood"`) use the **client's** names (English), not those of the user's language.
- The v2 data schema (step S3) will move the texts per language into separate files (`Data/itIT/`, `Data/enUS/`) with several variants per id, and a validator for missing languages.

## References

- GDD §9.
- `Core/Bootstrap.lua` (`RegisterLanguage`, `NS:L`), `Core/Config.lua` (`NormalizeLocale`), `Data/itIT/Interface.lua`, `Data/enUS/Interface.lua`.
- [PACK_FORMAT.md](../../AzerothUnspoken/PACK_FORMAT.md), "New languages" section.
