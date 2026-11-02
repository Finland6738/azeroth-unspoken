# 0044. The songbook, recall and reading frames, and the culture of origin chosen by hand

- Status: Accepted (offline only: the Journal tab, the culture button and a recall in the narrator are **not yet tried in game**)
- Date: 2026-11-02 (issues #122, #123 and #124; owner decisions D16, D17 and D19 in #130; in-game gates skipped by the owner's decision of 2026-11-02)

## Context

After L3 ([ADR 0043](0043-literary-metadata-genre-matrix-interchangeable-stanzas-and-pieces-in-the-archive.md)) a
literary piece says what it is, what it is for and whose it is, but the character forgets it the moment it is said,
and `origin = "culture:<people>"` is matched against nothing. Analysis A2 asked for three things:

1. a **songbook**: what the character heard or read, so that a piece can come back, and a place in the Journal to read
   it again (#122);
2. **recall and reading frames**: "a verse comes to mind:", "the words cut in that stone come back:", so that a text
   is a song and a memory without being written twice (#123). The frames of the engine only framed a spoken line in an
   emote, and "a thought never goes in a frame";
3. a **culture of origin** in the profile, with a factor "owns / listens" (#124).

The owner decided in #130: literary forms never go to public chat (D16), so no command proposes an excerpt of a learned piece in chat; the
culture is chosen by hand, never deduced from race (D17); the songbook keeps ids and timestamps only, never a text
(D19). The recommendations of the three issues were accepted as written.

## Decision

1. **The songbook is a saved module of its own** (`cdb.songbook`, `Systems/Songbook.lua`): `{ version = 1, heard,
   learned, muted, favourite }`, each a map from a piece id to a `time()`. Never a text: the Journal reads the words
   from the loaded pack when it shows them, so a piece whose pack is gone is listed by its id ("no longer in the loaded
   packs") until the user forgets it. Per character, like the memories ([ADR 0017](0017-living-memory-selective-memories-and-honest-recall.md)).
   Bounded: at most 300 distinct ids and an estimated 10,000 bytes in the saved file, whichever comes first (with
   long ids the bytes decide, at about 200); over the bound the oldest pieces only heard go first, then the oldest
   learned ones; muted and favourite pieces are the user's marks and are never dropped (a new mark with no room left is
   refused). A version, a migration (no version or an older one: the sets are kept and cleaned), `Sanitize` (bad ids,
   bad or future times, unknown fields) and read-only data from a newer version, like the other modules
   ([ADR 0006](0006-savedvariables-and-schema-versions.md)).
2. **What goes in.** Every literary piece the Chat Gateway shows is noted as heard, with the time (a `lore_test` twin
   notes its piece: `twinOf`). Other systems use `Songbook:Add(id, "heard" | "learned")` for a literary piece of a
   loaded pack: N7 will add the song of a nemesis's fall. The songbook follows the memory module: with the memory off
   nothing is noted and nothing comes back.
3. **The user's marks**, in the Journal tab **Songbook** (`JournalFrame:RegisterTab`): the list (favourites first,
   then the most recent, by the first line of the piece, its attribution), and a detail with the whole text read from
   the pack (a song of stanzas with every stanza), *Learn* (by heart), *Favourite*, *Mute* and *Forget* (two clicks). A
   **muted** piece is never chosen again, by any event (`Engine.muted`, read by `Engine:Eligible`). A **favourite** or
   **learned** piece comes back more often in a recall (x2 and x1.5, `literary.recall`). `/au songbook [list / reset]`.
4. **Recall and reading frames** (#123) are frames with a `mode`: `recall` (a piece heard: said or sung) or `reading`
   (a piece read: carved or written), the `genres` they bring back and their `styles`. They are kept apart from the
   emote frames (`Engine.loreFrames`): never an emote. The text of a frame is its own line and `{line}` on the next one.
   The piece is rendered as usual (its variant, its stanzas), and the frame takes the place of its **first line, the
   attribution**, which is a separate line by the rule of the literary forms (CONTRIBUTING.md): the verses are whole,
   nothing is composed inside a line ([ADR 0001](0001-engine-and-narrative-database-separated.md)). One id: the recall
   is the same rule, with its cooldown, uses and variant; a song sung by an innkeeper comes back in the character's
   inner voice. Six base frames in `Data/Frames.lua`, first person, English and Italian.
5. **`lore_recall`** is an event of the literary category with no rules: a **picker** (`Engine:SetPicker`) chooses
   among the pieces of the songbook and a **guard** keeps it silent unless the songbook confirms one ("a 'heard
   before' verse only if the songbook confirms it"): heard at least `minAge` (six hours) ago, not muted, of an enabled
   pack, out of its cooldown, with a text of several lines in the language and a frame of its genre and of a register
   compatible with its own (`StyleResolver:Compatible`); the literary forms open (not *never*, not in combat) and the
   inner voice not silenced. The weight is the ordinary one (`Engine.Score`: the soul, the culture, novelty) times the
   marks. The Director offers it together with the quiet moments of `literary.recall.moments` (`rest_enter`,
   `journey`, `dusk`, `night`, `weather_change`) through **companions** (`Director:AddCompanion`), only when the
   songbook has a candidate; it is still one intervention per moment, with the pacing of the category `lore`
   ([ADR 0042](0042-literary-forms-category-pacing-line-breaks-and-long-reading.md)). Its record is in the inner voice
   and the literary category: private in every mode (D16).
6. **The validator** checks the frames and the pieces. Errors: a mode other than `recall` or `reading`
   (`loreFrameMode`), an event on such a frame (`loreFrameEvent`), no genre or an unknown one (`loreFrameGenre`),
   `{line}` not on a line of its own (`loreFrameLine`), and a piece whose longest frame with its longest verses goes
   over the reading limit of 600 bytes (`recallLength`). Warning: a piece with a genre and a private voice that no frame
   of its genre and register can bring back (`recallFrame`).
7. **The culture of origin** (#124, D17) is `personality.culture`, a field of the profile apart from the traits (an
   optional field: the profile stays version 2): no archetype sets it, Total RP 3 and the game layers never give it,
   race and class are never read, the neutral profile clears it. The cultures are data (`literary.cultures` in
   `Data/Themes.lua`: human, dwarf, gnome, kaldorei, queldorei, orc, troll, tauren, forsaken), extendable by a pack;
   once some are declared, `origin = "culture:<people>"` must name one (validator and archive). The factor of a
   `culture:` piece is a weight hook `C` (`Personality.CultureFactor`, pure): **x1.4** for the chosen culture, **x0.8**
   for another culture in a voice that is not the character's (an NPC sings it, the narrator reads it), **0** for
   another culture in the first person (inner, character); **no culture chosen: 0 for every `culture:` piece**, so only
   the pieces with no culture speak (`common`, and `personal`, which is the character's own and belongs to no
   culture). The numbers are data (`literary.culture`). The context has `ctx.culture` and a rule may ask
   `conditions = { culture = "dwarf" }`. The soul window has a row **Culture of origin**: a button that goes through
   the cultures, as wide as the longest name in the interface language (measured with `GetStringWidth`), and an `x`;
   `/au soul culture <culture / ->`.

## Alternatives considered

- **A command proposing an excerpt of a learned piece in chat** (the "sing" command proposed in #122). Refused by D16: literary forms never reach chat.
- **Texts in the songbook**, so that a piece outlives its pack. Refused by D19; the id is enough to find it again, and
  a missing pack is said plainly.
- **The songbook inside the living memory** (`cdb.memories`). Its entries are moments with an importance and a decay;
  a piece is an id with marks, and the user handles it apart. A module of its own keeps both simple.
- **Learned by itself after N hearings.** A learned piece is something the user says about the character; it is a
  mark, and other systems may add one through the API.
- **The recall frame wrapping the whole piece**, attribution included. The attribution is in the voice of who said it
  ("We sing this one when the night runs late:"), wrong in a memory; the frame takes its place instead.
- **A separate copy of each piece for the inner voice.** That is the text written twice that #123 wanted to avoid.
- **Culture as a trait of the soul** (`Traits.Define`). A trait is merged with Total RP 3 and the game, set by
  archetypes, evaluated by tags and checked before the packs declare their cultures; a plain field chosen by hand has
  none of those risks.
- **Unset culture as "every culture at x0.8".** The issue asks that only common pieces speak until the user chooses.

## Consequences

- Positive: a piece once heard can come back as a memory, with the same text and id, framed in the right register;
  the user can read, keep, favour or silence what the character heard; the songbook stays small and holds no text;
  `culture:` pieces have a meaning, chosen by the user; N7 has an API for the songs of a nemesis's fall.
- Negative or costs: one more saved section (under 10 KB); a recall needs a piece with an attribution line and a frame
  of its genre (the validator warns otherwise); companions add a candidate to some quiet moments; the culture names are
  interface strings in two languages. A recall in the narrator, the Journal tab and the culture button are **not tried
  in the client** (steps L4.1-L4.4 of `docs/G1_checklist.md`).
- The Journal has one more tab: in the mock's measures the tabs take one more line, so a page of the session holds a
  row less.

## References

- Issues #122, #123, #124; decisions D16, D17, D19 in #130; analysis A2 §2.3, §4.4, §4.5, §4.6, §7.6.
- `Systems/Songbook.lua`, `Systems/Personality.lua` (`Culture`, `SetCulture`, `CultureFactor`), `Systems/Director.lua`
  (`AddCompanion`), `Engine/WeightedSelector.lua` (`SetPicker`, `Engine.muted`), `Engine/PhraseRegistry.lua`
  (`loreFrames`, `CULTURES`, `CULTURE_ORDER`, `CULTURE_FACTORS`, `RECALL`), `Engine/Validator.lua`
  (`LoreFrameProblems`, `RecallProblems`), `Data/Frames.lua`, `Data/Themes.lua` (`literary.cultures`, `culture`,
  `recall`; the event `lore_recall`), `UI/JournalFrame.lua` (tab `songbook`), `UI/ProfileFrame.lua` (the culture row),
  `tools/archive/literary.py` (`origin_problem` with the declared cultures).
- ADR 0001, ADR 0006, ADR 0016 (the character soul), ADR 0017, ADR 0042, ADR 0043.
