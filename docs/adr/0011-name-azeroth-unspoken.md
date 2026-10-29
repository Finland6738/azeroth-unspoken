# 0011. The name Azeroth Unspoken

- Status: Accepted
- Date: 2026-10-29 (from [ROADMAP.md](../../ROADMAP.md), the header, and step S1)

## Context

The product specification (GDD) calls the project **Immersion Director**; the prototype was called **Voci di Azeroth**. The first is a generic working name, the second is Italian only, and the project was born bilingual. The name appears in many places: folder, `.toc`, saved variables, commands, interface, documentation, repository.

## Decision

- The product is called **Azeroth Unspoken**, with the tagline *An immersive roleplay companion for World of Warcraft* and the short description (in Italian): "Un compagno narrativo immersivo per World of Warcraft, distintivo e misterioso, che richiama i pensieri e le storie non espresse."
- Where the GDD and the roadmap disagree, the roadmap prevails. The GDD keeps the old name "Immersion Director" and is not rewritten: it is read by substituting the name.
- **Derived identifiers** (stable: changing them would cost data and compatibility):
  - folders `AzerothUnspoken/` and `AzerothUnspoken_Example/`;
  - global namespace `AzerothUnspoken` (public API for packs, macros and diagnostics);
  - SavedVariables `AzerothUnspokenDB` (account) and `AzerothUnspokenCharacterDB` (character);
  - commands `/unspoken` and `/au`;
  - key binding names `AZEROTHUNSPOKEN_SPEAK` and `AZEROTHUNSPOKEN_PAUSE`.
- `/au` and `/unspoken` are not used by the addons installed in the reference client (Details: `/details /dt /de`; Total RP 3: `/trp3`; QuestIT: `/qit`). **It has not been verified** against Blizzard's internal commands or against other addons.
- The prototype stays in `archive/VociDiAzeroth*/` only as a historical reference.
- The name contains "Azeroth", a term from Blizzard's world. The README states that the project is a fan project, independent, and neither affiliated with nor approved by Blizzard.

## Alternatives considered

- **Keeping "Immersion Director".** It describes the directing function, but it is generic, not very distinctive, and easily confused with other products.
- **Keeping "Voci di Azeroth".** Italian only; it does not convey the idea of what remains unspoken.
- **A name with no reference to the game.** Safer from a trademark standpoint, but it loses clarity for people looking for a WoW addon.

## Consequences

- Positive: a single, bilingual name, consistent everywhere; short commands (`/au`).
- Negative: the GDD keeps the old name; changing the identifiers in the future would require a migration of the SavedVariables ([ADR 0006](0006-savedvariables-and-schema-versions.md)); the use of the term "Azeroth" in the name must be watched if the addon is published on distribution platforms.

## References

- [ROADMAP.md](../../ROADMAP.md), [README.md](../../README.md).
- `AzerothUnspoken/AzerothUnspoken.toc`, `UI/Commands.lua`.
