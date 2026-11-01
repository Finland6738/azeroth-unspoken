# Licensing

Azeroth Unspoken has **three licences**, one for each kind of work in the repository. In short:

| What | Files | Licence |
|---|---|---|
| **Code**: the engine, the interface, the integrations, tests and tools | everything not listed below, for example `AzerothUnspoken/Core/`, `Engine/`, `Integration/`, `Systems/`, `UI/`, `Bindings.xml`, the `.toc` files, `Tests/`, `tools/`, `.github/`, `docs/design/mockups/tools/` | **GPL-3.0-or-later** ([`LICENSE`](LICENSE)), with an additional permission for phrase packs (below) |
| **Phrases and narrative data** | `AzerothUnspoken/Data/`, `AzerothUnspoken_enUS/`, `AzerothUnspoken_itIT/`, `AzerothUnspoken_EasternKingdoms*/`, `AzerothUnspoken_Kalimdor*/`, `AzerothUnspoken_Versi/`, `authoring/` | **All rights reserved**, with the permitted uses listed in [`LICENSE-CONTENT.md`](LICENSE-CONTENT.md) |
| **Pack template** | `AzerothUnspoken_Example/`, `AzerothUnspoken/PACK_FORMAT.md` | **MIT** ([`AzerothUnspoken_Example/LICENSE`](AzerothUnspoken_Example/LICENSE)) |
| **Documentation** | `README.md`, `README.it.md`, `CONTRIBUTING.md`, `ROADMAP.md`, `CHANGELOG.md`, `LICENSING.md`, `docs/` (wiki, ADRs, design report and mockup images) except its code | **CC BY 4.0** ([legal code](https://creativecommons.org/licenses/by/4.0/legalcode)) |

Copyright © 2026 Finland6738 and the contributors. The reasons for this choice are in
[ADR 0034](docs/adr/0034-licensing-gpl-code-reserved-phrases.md).

## Code: GPL-3.0-or-later

You may use, study, change and share the code under the terms of the GNU General Public License, version 3 or (at your
option) any later version. If you distribute the code or a modified version of it, it must stay under the same licence,
with its source available and the copyright notices kept. The full text is in [`LICENSE`](LICENSE).

### Additional permission for phrase packs (GPL-3.0, section 7)

As an additional permission under section 7 of the GNU General Public License version 3, you may write, distribute and
license **phrase packs** under terms of your choice, provided that a pack interacts with Azeroth Unspoken **only through
the public pack interface** documented in [`AzerothUnspoken/PACK_FORMAT.md`](AzerothUnspoken/PACK_FORMAT.md) (the
`AzerothUnspoken:Register…` and `AddTexts` functions and the documented data formats) and contains no code copied from
Azeroth Unspoken outside `AzerothUnspoken_Example/`. Such a pack is not considered a work based on Azeroth Unspoken. This
permission does not extend to the phrases of the project, which keep their own licence.

### The name is not licensed (GPL-3.0, section 7(e))

The licence does not grant rights to the name **"Azeroth Unspoken"** or to the project's identity. A modified version
that you distribute to others must have a different name, must say that it is modified, and must not present itself as
the official addon or be published under this project's name on addon sites. Distributing the unmodified official release
is not affected.

## Phrases and narrative data: all rights reserved

The phrases, dialogues, stories, verses, vocabulary, places and the other narrative data are the creative core of the
project. They are **not** under an open licence. You may use them as part of the addon, quote short extracts, show them in
screenshots, videos and streams, and propose corrections and translations to this project; anything else needs written
permission. The full terms are in [`LICENSE-CONTENT.md`](LICENSE-CONTENT.md).

A version of the addon built from the GPL code must therefore ship **its own phrases**, unless the owner gives written
permission.

### The data files are a separate work

The phrase and narrative data files, although written as Lua tables so that the addon can load them, are a **separate
work** distributed together with the GPL program, under their own terms (above). Loading them through the public pack
interface does not make them part of the program, and the GPL of the engine does **not** extend to them. Each data
folder carries a `NOTICE.md` that says so, names the licence and the owner (Finland6738) and links
[`LICENSE-CONTENT.md`](LICENSE-CONTENT.md). The notices ship with the addon folders on purpose, so the terms travel with
the files.

### Text and data mining

All rights to text and data mining of the phrases and narrative data are reserved (EU Directive 2019/790, art. 4(3);
Italian copyright law, art. 70-quater): see [`LICENSE-CONTENT.md`](LICENSE-CONTENT.md#reservation-of-text-and-data-mining-rights),
[`tdmrep.json`](tdmrep.json) and [`ai.txt`](ai.txt). It is a reservation of rights, not a technical block.

## Contributions

By opening a pull request you agree to the terms in [CONTRIBUTING.md](CONTRIBUTING.md#licensing-of-contributions): code
under GPL-3.0-or-later, documentation under CC BY 4.0, and for phrases and narrative data a licence to the project owner
that allows them to be distributed with the addon and relicensed in the future. You keep the copyright of what you write.

This is not legal advice: if the project gains commercial value, a specialist should review these terms.

## Third-party names

World of Warcraft®, Azeroth and the names of places and characters of the game are trademarks or works of Blizzard
Entertainment, Inc. Azeroth Unspoken is an independent fan project, not affiliated with or endorsed by Blizzard; these
licences cover only the original work of the project. Total RP 3 belongs to its authors. The addon follows Blizzard's UI
Add-On Development Policy: it is free of charge and its code is visible to everyone.
