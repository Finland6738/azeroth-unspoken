# 0034. Licensing: GPL code, reserved phrases, MIT pack template, CC BY documentation

- Status: Accepted
- Date: 2026-10-31 (issue #2, owner decision after the UI review U1)

## Context

The repository was public without a licence, so by default every right was reserved: nobody could legally reuse,
change or redistribute anything, contributions had no clear terms, and the addon sites ask for a licence at publication.

The project holds works of different kinds: the code (engine, interface, integrations, tests, tools), the phrases and
narrative data (thousands of intentions in two languages, the authoring archive), a pack template meant to be copied,
and the documentation. ADR 0001 already separates the engine from the narrative database.

Blizzard's UI Add-On Development Policy requires add-ons to be free of charge and their code to be visible, not
obfuscated; it requires no particular licence. Donations may be asked for on the distribution sites, never in game.

The owner wants the phrases not to be reused elsewhere, while keeping the project open to testers, translators,
contributors and pack authors. The risks weighed, from the most likely: a re-upload of the addon under another name; the
phrases taken for another product (another addon, a bot, a dataset for machine learning); the project abandoned with no
legal way to continue it; unclear rights on contributions; the engine closed inside someone else's addon.

## Decision

1. **Code: GPL-3.0-or-later** (`LICENSE`). Whoever distributes the code, or a modified version of it, keeps it open under
   the same licence and keeps the copyright notices.
2. **Additional permission for phrase packs** (GPL-3.0 section 7): a pack that uses only the public pack interface of
   `PACK_FORMAT.md`, and copies no code outside the example pack, may have any licence. Third-party packs stay possible.
3. **The name is not licensed** (GPL-3.0 section 7(e)): a modified version distributed to others needs another name and
   must not present itself as the official addon.
4. **Phrases and narrative data: all rights reserved**, with permitted uses (`LICENSE-CONTENT.md`): play with them, change
   them for oneself, quote short extracts, show them in screenshots, videos and streams, propose corrections and
   translations. Copying into other works, redistribution outside the official channels, use as machine-learning data and
   commercial use need written permission. Covered: `AzerothUnspoken/Data/`, the language, regional and verses packs,
   `authoring/`.
5. **Pack template: MIT** (`AzerothUnspoken_Example/LICENSE`): the example pack and `PACK_FORMAT.md` can be copied freely.
6. **Documentation: CC BY 4.0**, so corrections and translations of the manual are easy.
7. **Contributions** (`CONTRIBUTING.md`): code under GPL-3.0-or-later, documentation under CC BY 4.0, and for phrases a
   perpetual, non-exclusive licence to the owner that also allows relicensing, so the owner can change the licence of the
   content later without asking every contributor.
8. Every `.toc` file declares its licence in `## X-License`.

## Touch-ups (2026-11-01)

The owner kept the scheme and added four touch-ups after reviewing an analysis of it.

1. **Text and data mining reservation.** The express reservation of art. 4(3) of EU Directive 2019/790 (art. 70-quater
   of the Italian copyright law) is written as a standalone section of `LICENSE-CONTENT.md` and in every data folder's
   `NOTICE.md`. For machine readers we chose two small root files: **`tdmrep.json`** (the W3C community group's TDM
   Reservation Protocol, `tdm-reservation: 1`, one entry per data folder, with a policy link) and **`ai.txt`**
   (robots.txt-like syntax read by some AI crawlers). Limits, stated plainly: TDMRep is designed for web servers (a
   `/.well-known/tdmrep.json` file, HTTP headers, HTML meta tags) and GitHub serves neither, so most crawlers will never
   read these files; `ai.txt` is a convention with no standard body. The reservation is a declaration of rights, not a
   technical block, and it works through the law, not through the files. Scrapers of GitHub that ignore it are a matter
   for the hosting site's copyright notices. A clear, human-readable statement in the licence is the part that counts.
2. **Contribution agreement actually given.** The pull request template has a required checkbox that the contributor has
   read and agrees to "Licensing of contributions", and external contributors sign off their commits with the
   **Developer Certificate of Origin** (`git commit -s`). An advisory CI job (`dco.yml`) warns when an external pull
   request has commits without sign-off; it is not a required check and skips pull requests by the owner, whose own
   and automated work needs no sign-off.
3. **Data as a separate work.** `LICENSING.md` states that the data files, although Lua tables, are a separate work
   distributed with the GPL program under their own terms, and that the GPL does not extend to them. A `NOTICE.md` in
   each data folder (`AzerothUnspoken/Data/`, the language, regional and verses packs, `authoring/`) names the licence,
   the reservation and the owner. The notices **ship** in the addon folders (the installer copies whole folders; WoW
   ignores files not listed in the `.toc`), because licence terms that travel with the files are clearer.
4. **Records:** this ADR, the changelog and the wiki FAQ.

## Alternatives considered

- **MIT for the code and CC BY-NC 4.0 for the phrases** (the first proposal in issue #2). Rejected: MIT lets anyone close
  the engine inside another addon; CC BY-NC permits copying every phrase into another free addon with a line of credit,
  which is what the owner wants to prevent, and a Creative Commons licence cannot be revoked once granted.
- **All rights reserved for everything.** Rejected: it protects the code's text but not its ideas (no licence does),
  discourages testers, translators and pack authors, and leaves nobody a legal way to continue an abandoned project. The
  code alone is the least valuable and most reproducible part.
- **CC BY-NC-ND for the phrases.** Rejected: it still allows redistributing the phrases verbatim in another free addon.
- **Apache-2.0 for the code.** Considered: it adds a patent grant, which matters little for an addon, and is permissive
  like MIT.

## Consequences

- GitHub detects GPL-3.0 for the repository; the content licence and the name reservation are in `LICENSE-CONTENT.md`
  and `LICENSING.md`.
- A fork of the code is lawful if it keeps the GPL, changes the name and ships its own phrases (or has permission).
- Reserved content can be opened later (for example to CC BY-NC) by the owner alone, thanks to point 7; the reverse is
  not possible for copies already distributed under an open licence.
- Enforcement is by copyright notices to the hosting sites (GitHub, CurseForge, Wago); the git history dates the work.
- Not legal advice: the choice was made by the owner on a written analysis; a specialist can review it if the project
  gains commercial value.
