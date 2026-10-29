# 0001. Engine and narrative database kept separate, with curated rather than generated lines

- Status: Accepted
- Date: 2026-10-29 (the decision comes from the prototype and from the [roadmap](../../ROADMAP.md), "Decisions already made", no. 1)

## Context

A narrative addon lives on its texts. The `VociDiAzeroth` prototype (now in `archive/`) already had an engine that picks lines and a database of 374 lines in Italian and English. Two guarantees were needed: that the code could evolve without rewriting the texts, and that the texts were good (GDD §5.4, §9).

The risk with an addon of this kind is producing lines that are ungrammatical, repetitive or inconsistent with the moment, as happens when fragments are composed at random.

## Decision

1. **The engine contains no text.** `Core/`, `Engine/`, `Systems/`, `Integration/` and `UI/` read only what the packs register with `AzerothUnspoken:RegisterPack`. Interface texts live separately, in `Data/<language>/Interface.lua`.
2. **The database contains whole, hand-written lines.** A line is a complete unit, with its own event, register, weight, pause and conditions. The engine picks it; it does not build it.
3. **Only two mechanisms of controlled variation are allowed**, because they are complete formulas chosen by context: placeholders (`{target}`, `{zone}`, `{g:m|f}`…) and vocabulary (short, whole voices such as a war cry suited to the race), plus the *narrative frames* that frame a spoken line as an emote. Incompatible fragments are never concatenated (GDD §5.2).
4. **Base packs and third-party packs use the same API.** The base ones live in `AzerothUnspoken/Data/`; the others are separate addons that depend on `AzerothUnspoken` (see `AzerothUnspoken_Example` and [PACK_FORMAT.md](../../AzerothUnspoken/PACK_FORMAT.md)).
5. If no line fits an event, **silence is a valid outcome**: nothing is improvised.

## Alternatives considered

- **Generate text by composing fragments** (subject + action + adjective). It gives a lot of variety from little data, but produces lines that sound mechanical, get the gender or register wrong and cannot be reviewed one by one. Rejected.
- **Texts inside the code** (as tables in the engine files). Simple at first, but it rules out third-party packs and independent translations, and mixes the programmer's work with the author's. Rejected.
- **Generation with a language model.** See [ADR 0002](0002-fully-offline-no-ai.md).

## Consequences

- Positive:
  - each line can be reread, corrected and translated on its own;
  - packs can be written without touching the engine;
  - quality is an editorial matter (rules in [CONTRIBUTING.md](../../CONTRIBUTING.md) and GDD §5.4), which the validator planned in step S3 will partly check (duplicate ids, missing languages, mismatched placeholders…).
- Negative:
  - variety depends on how many lines are written: a lot of content is needed (steps S7 and S11 of the roadmap);
  - discipline is needed to keep engine and data separate as features grow (for example, relationship labels will have to live in data, not in code).
- Step S3 introduces a v2 data schema (rule registry separate from the per-language texts) that carries this separation further, without changing the principle.

## References

- GDD §5.2, §5.4, §9, §11.1.
- [docs/ARCHITECTURE.md](../ARCHITECTURE.md), [PACK_FORMAT.md](../../AzerothUnspoken/PACK_FORMAT.md).
- `Engine/PhraseRegistry.lua`, `Engine/WeightedSelector.lua`.
