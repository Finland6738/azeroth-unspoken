# 0043. Literary metadata, the genre x situation matrix, interchangeable stanzas (the one exception to ADR 0001) and pieces in the archive

- Status: Accepted (offline only: a song of stanzas in the narrator is **not yet tried in game**)
- Date: 2026-11-02 (issues #119, #120, #127 and #128; owner decisions D16 and D17 in #130; in-game gates skipped by the owner's decision of 2026-11-02)

## Context

After L2 ([ADR 0042](0042-literary-forms-category-pacing-line-breaks-and-long-reading.md)) a literary form keeps its
line breaks, is rare and never reaches chat, but the engine still knows nothing about it beyond the tags `lore` and
`genre_*`. Analysis A2 found four gaps:

1. `PhraseRegistry` rebuilds a rule field by field, so a field like `genre` was silently dropped; nothing said what a
   piece is (a song, an inscription, a saying), what it is for, or whose it is.
2. Nothing stopped a tavern rhyme in a cursed land, a lament in an ironic register, an inscription with no stone, or a
   verse that names the night at noon.
3. Songs repeat: one fixed text per piece wears out, and the only alternative, composing text from fragments, is what
   [ADR 0001](0001-engine-and-narrative-database-separated.md) refuses.
4. The authoring archive ([ADR 0027](0027-sqlite-authoring-archive-and-exporter.md)) could not read the verses pack
   (its rules were built by a loop) and had no place for what a piece needs in review: metre, rhyme scheme, lore and
   originality.

The owner decided in #130: literary forms never go to public chat, so a public **excerpt** has no use and is dropped
(D16, which removes the `excerpt` field of #119 and the `excerpt_from`/`excerpt_to` columns of #128); the `origin` of a
piece is matched against a culture the user chooses by hand (#124, next step), never against race (D17).

## Decision

1. **Three rule fields with closed vocabularies** (#119). `genre` (`verse`, `song`, `formula`, `epigraph`, `prose`,
   `tale`), `purpose` (`remember`, `mourn`, `amuse`, `accompany`, `bless`, `warn`, `advise`, `celebrate`) and `origin`
   (`common`, `personal`, `culture:<people>` in lower case). The vocabularies are data: the `literary` table of the pack
   in `Data/Themes.lua` (`genres`, `purposes`), which a pack may extend like themes (`NS:RegisterLiterary`). The
   registry carries the fields in the shared rule shape (ADR 0024), so they cost nothing to the rules that have none. A
   genre makes a rule a literary form: it gets the category `lore` (ADR 0042), the Chat Gateway keeps it private
   (`Engine.IsLiteraryRule`, read by `PrivateReason`), the validator refuses it in a public voice. `Engine.CULTURES` is
   empty until #124: any lower-case people is accepted, then only the declared ones. No `excerpt` (D16).
2. **Validator rules for the metadata.** Errors: an unknown genre, purpose or origin (`badGenre`, `badPurpose`,
   `badOrigin`), `purpose` or `origin` on a rule that is not literary (`literaryField`), a placeholder in a `song` or a
   `formula` (`literaryPlaceholder`: the words of a song keep their metre). Warnings: a literary form without its three
   fields (`literaryMeta`), a different number of verses in two languages (`verseCount`). The whole text of a private
   piece keeps the reading limit of 600 bytes (ADR 0042), distinct from the chat limit.
3. **The genre x situation matrix and the warning words are data, and give warnings only** (#120). Both read the
   *facts* of a rule: `event=`, `style=`, `tag=`, `genre=`, `purpose=` and its conditions as `name` or `name=value`
   (`place.tags=ruin`); `not` and `any` guarantee nothing and are not read. A matrix row says which facts a genre or a
   purpose must never have (`amuse` never with a dark, plagued or cursed place, a death or a resurrection; `mourn` never
   ironic or everyday) or must have at least one of (`epigraph` at a ruin, a sacred place, a monument or a landmark;
   `accompany` on `travel` or `journey`). A warning word (night, snow, return, faith, in English and Italian, whole
   words) asks one of its facts (a time, the weather, a memory, a prayer). Rules offered only on a manual event (chance
   0 by default, like `lore_test`) have no situation to judge and are skipped. Warnings, not errors: a piece may break a
   row on purpose; the review says why.
4. **Interchangeable stanzas, the one exception to ADR 0001** (#127). A rule with `kind = "stanzas"` is one song: in
   each language its first variant is the **frame** (the attribution and the fixed refrain, with `{stanzas}` once where
   the stanzas go) and the other variants are its **stanzas**, three to six, in the order they were written. `show`
   (1 or 2) stanzas are said, chosen at random, always in their declared order, with an empty line between two, and the
   stanza that opened the song last time does not open it next time when there is a choice
   (`Engine:RenderStanzas`, `Engine.StanzaChoice`). The exception is bounded by the validator, all errors: the genre is
   `song` (`stanzaGenre`); the frame holds the mark once and a stanza never (`stanzaFrame`); three to six stanzas
   (`stanzaCount`); every stanza has as many verses as the first (`stanzaVerses`) and, verse by verse, about as many
   syllables (`stanzaMetre`: an estimate by vowel groups, the words of an Italian verse joined so that a synalepha counts
   once, within two syllables); the same number of stanzas of the same length in every language (`stanzaLangs`); no
   depth of their own; and **never a stanza of another song**: a stanza added by another pack, or the same stanza in
   two songs, is refused (`stanzaMix`; a rule that shares the very list of texts, like a `lore_test` twin, is the same
   song). Each stanza is self-sufficient: a review rule (CONTRIBUTING.md), not a check.
5. **Pieces in the archive** (#128). The rule fields are columns of the intention (`genre`, `purpose`, `piece_origin`,
   `stanza_show`), exported with the rule on a line of their own. What the game never reads is the **editorial record**
   of a piece, table `piece_meta` (metre, rhyme scheme, verses, stanzas, refrain, singable, lore reference, three review
   statuses and a note), kept in the overlay for every piece, approved ones too (`authoring/pieces.csv`); the view
   `piece` shows both as analysis A2 described them. A piece is a literary intention with a record, not a new
   `content.kind`. A draft of a piece starts its record with every step pending; `cli piece` sets the fields and the
   steps in order, **metre and language -> lore (`none` when it names no lore) -> originality**, each a changelog row,
   and `approve` refuses a piece whose steps are not done. `cli check` and `cli export` print the warnings of the pieces:
   the matrix, the warning words, the warning phrases of CONTRIBUTING.md, the verses across languages, a missing or
   inconsistent record, an approved piece whose review is not complete. They never fail the build.
6. **The verses pack is written through the archive.** `AzerothUnspoken_Versi` is now `Registry.lua` (a literal
   registry), `Texts_enUS.lua` and `Texts_itIT.lua` (read by the archive like the language folders) and `Twins.lua`,
   which makes the `lore_test` twins from the registered pieces in code (so the archive keeps only the pieces). Every
   piece has its metadata and its record; one walking song of four interchangeable stanzas joins it. The round trip of
   the archive is still an empty diff.

## Alternatives considered

- **An `excerpt` for chat.** Dropped by D16: literary forms never go to chat, so an excerpt would only be a second text
  to keep in step.
- **Genre and purpose as tags.** Tags are open and are read by the affinity of the Character Soul; a closed vocabulary
  needs a field the validator can check.
- **The matrix as validator errors.** A lament may be ironic on purpose; a hard rule would push authors to work around
  it. Warnings keep the decision in review.
- **The matrix in code, twice (Lua and Python).** One data table in `Data/Themes.lua`, read by the engine and by
  `tools/archive/literary.py`; `Tests/check_versi.py` checks that both see the same facts of every piece.
- **Stanzas as separate rules, chained like a monologue.** A monologue joins whole phrases that each stand alone; a
  song's stanzas belong to one song, so they live in one rule, which makes mixing two songs impossible by construction
  (the validator catches the rest).
- **A free-form `meter` field checked by the engine.** The metre is declared in the record for the reviewer; the engine
  only compares the stanzas with each other.
- **Excerpt columns and a `content.kind = 'piece'`** in the archive. Without D16's excerpt there is nothing to cut; a
  piece is an intention with a record, so every other tool of the archive (search, review, export) works unchanged.

## Consequences

- Positive: a piece says what it is, what it is for and whose it is; #124 can match `origin` against the user's
  culture without touching the packs; the validator catches the pairings and the words A2 listed, as warnings; songs
  repeat less without any composed text; the verses pack is in the archive with an editorial record, and new pieces go
  through the review the owner asked for.
- Negative or costs: four more shape fields (nil for almost every rule); the syllable estimate is rough (a stanza in
  another metre is caught, a scansion is not); one more overlay file; the twins of the verses pack are made by code
  that reads the engine's registry after the pack is registered. A song of stanzas in the narrator (two stanzas and a
  refrain, up to about fourteen lines, scrolling past twelve) is **not tried in the client** (step L3.1 of
  `docs/G1_checklist.md`).
- The new walking song is in the folders with its record but waits for the owner's three review steps (an AI session
  fills the fields of a record, never a step): `cli check` reports it until `cli piece versi.road.stanzas.01 --metre ok`,
  `--lore none` and `--originality ok`. The fifteen pieces of L0 were reviewed with their pack (PR #136): their record
  says so, under the author `legacy`.

## References

- Issues #119, #120, #127, #128; decisions D16, D17 in #130; analysis A2 §2.1, §4.3, §4.6, §6.1, §6.2, §7.6.
- `Data/Themes.lua` (`literary`), `Engine/PhraseRegistry.lua` (`GENRES`, `PURPOSES`, `ORIGINS`, `CULTURES`,
  `IsLiteraryRule`, `RegisterLiterary`, `STANZA_MARK`), `Engine/WeightedSelector.lua` (`RenderStanzas`,
  `StanzaChoice`), `Engine/Validator.lua` (`LiteraryProblems`, `StanzaProblems`, `LiteraryFacts`, `MatrixProblems`,
  `LiteraryWord`, `Syllables`), `Integration/ChatGateway.lua` (`PrivateReason`), `tools/archive/` (`schema.sql`,
  `store.py`, `literary.py`, `cli.py piece`), `AzerothUnspoken_Versi/`.
- ADR 0001 (whole lines; this ADR is its one exception), ADR 0024 (shapes), ADR 0027 (the archive), ADR 0029 (closed
  vocabularies), ADR 0032 (monologues), ADR 0042 (the literary category and line breaks).
