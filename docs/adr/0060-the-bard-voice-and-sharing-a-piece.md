# 0060. The Bard voice: a box of its own colour for songs and verses, and a share the player asks for

- Status: Accepted (built in one pull request; nothing of it has been tried in the game client)
- Date: 2026-11-24 (the owner's request of the same day, after release 0.3.1)

## Context

The literary forms ([ADR 0043](0043-literary-metadata-genre-matrix-interchangeable-stanzas-and-pieces-in-the-archive.md), [ADR 0044](0044-songbook-recall-and-reading-frames-and-the-culture-of-origin.md),
the pack `AzerothUnspoken_Versi`, 43 pieces in English and Italian) are read in the private narrator box, in the `inner`
or the `npc` voice, one verse per line, revealed one at a time (#126). They are never offered for chat (owner decision
D16, issue #130), and every invented song is attributed to a voice (D7).

The owner asked for a **Bard**: a popup like the narrator's and the inner voice's, in a **different colour**, titled
**"Bard"** ("Bardo" in Italian), that shows the text of songs and poems; and, if the player wants, the piece can be
**shared** in chat.

The look is the NEBULA look of [ADR 0058](0058-nebula-ecosystem-look-and-credits.md) (tokens only, both themes, no text in
code, reduced motion). The Chat Gateway ([ADR 0003](0003-private-narrator-and-chat-gateway.md)) is the only way to chat: a
send outside a player's action is refused for `/say` in the open world, and the flood limits, the byte limits, the chat
lockdown and the Total RP 3 out-of-character hold ([ADR 0004](0004-total-rp-3-optional-with-adapter.md), issue #191) apply to every message.

## Decision

1. **A skin of the narrator box, not a second frame.** A Bard piece is shown by `UI/NarratorFrame.lua` with the Bard's
   look: the label "Bard" / "Bardo" (`voice_bard`), the accent bar, the time line, the label and the text in the token
   `voice-bard`, the `note` icon of the sheet ([ADR 0059](0059-a-radial-emote-wheel-held-on-a-key.md)) before the label,
   and the body typeface (not the inner voice's narrow one). Everything else is the narrator's and stays the same: the
   reveal one line at a time, the scroll past 12 lines, the history (the entry is labelled "Bard" in its colour), the
   pause, "Animations: off" (all lines at once), the place the player chose, the floor of the background. A second frame
   would copy about 900 lines for the same behaviour.
   - The record keeps its `speaker` (`inner` or `npc`): the Gateway's privacy guard reads the speaker and the rule, and
     the Bard does not change it. The box reads `rec.voice = "bard"`, set by `Narrator:Present` when `NS.Bard:Claims(rec)`.
2. **Which pieces are the Bard's** (no new rule field, so the archive, the pack format and the content waves are
   untouched): a literary rule (`Engine.IsLiteraryRule`) whose `genre` is `verse`, `song` or `tale` (`Bard.GENRES`) and
   whose `speaker` is not `npc`. So the songs, rhymes, hymns, laments, verses and tales the character remembers or hums are
   the Bard's; an inscription or a solemn formula (`epigraph`, `formula`) and plain `prose` stay in the inner voice (they
   are read, not sung), and a piece an NPC sings (the innkeeper's rhyme) stays in the NPC voice. A recalled piece
   (`lore_recall`) and a `lore_test` twin follow the rule of their piece. In the pack today: 28 of the 43 pieces.
3. **Tokens.** `voice-bard` joins `Theme.TOKENS` (32 tokens) and `Theme.VOICE_TOKENS`, in both themes: Nebula `#FF8FB8`
   (a rose, 9.4:1 on `bg`), Aurora `#9C1F5E` (a wine red, 7.1:1 on `bg`). Its hue is apart from the narrator's violet, the
   inner voice's cyan, the character's gold and the NPC's green; the label and the icon say "Bard" without colour. Over a
   translucent box the text follows `Narrator:Ink` like every voice (the token where it keeps 4.5:1 over the brightest and
   the darkest world, `text-1` where not). `tools/mockup_lib.py` and `Tests/check_mockups.py` follow (32 tokens).
4. **Settings** (`NS.db.bard`, in the account's saved settings next to `literary`, defaults filled by `Config`):
   `enabled = true` (the Bard box; off: the pieces are shown as before, in the inner or NPC voice), `share = true` (the
   Share bar and the songbook's Share row; off: no button, and `/au bard sing` refuses), `channel = "SAY"` (`SAY` or
   `EMOTE`, the last one chosen). How often pieces come stays `literary.frequency` (`/au literary`, never / rare / normal).
   The Settings window, section General (under Literary forms), gains the two switches and the channel; `/au bard` shows and changes them.
5. **Sharing: only on the player's click or typed command, never automatic.** D16 is **relaxed only for an explicit
   share**: the Gateway still never proposes, sends or copies a literary line by itself (`PrivateReason` is unchanged,
   in every mode, `AUTO_ONLY_IF_ALLOWED` included). The share has its own path, `NS.Bard:Share(text, genre, channel)`:
   - It starts only inside `Gateway:PlayerAction` (the Share button, the songbook's Share row, `/au bard sing`); called
     from anywhere else it refuses (`needs_click`). It refuses in combat, while Total RP 3 holds the player out of
     character, when the module `publicChat` is off, when `bard.share` is off, while another share runs, and for a piece
     with no verse after its attribution (a one-line piece has nothing to sing line by line).
   - **The attribution becomes an emote**: the piece's first line (the private attribution, "A verse I cannot place comes
     back...") is replaced by a locale emote by genre, sent on `/e`: "sings an old song:", "recites a few verses:", "tells
     an old tale:" (`bard_share_song`, `bard_share_verse`, `bard_share_tale`). The verses follow **one per message**, empty
     lines between stanzas skipped: on `/s` as spoken text, on `/e` as `"verse"` (`bard_emote_line`), through
     `Gateway:TextFor` and `Gateway:Send`, so the byte limit (255, cut at a whole character), the flood limits
     (`chat.floodSeconds`, `chat.maxPerMinute`), the lockdown, the one-line rule and the blocked-send report all apply.
   - **Pacing**: a message at most every `max(chat.floodSeconds, Bard.GAP = 4)` seconds, and never past the flood limits:
     when the Gateway says `flood` the share waits and tries again. On `/e`, and on `/s` inside an instance, the client lets
     the next message go without a key press, so the share continues by itself after the first click. On `/s` in the open
     world every message needs a hardware event: the bar shows "Next verse 2/6" and each click sends one. The bar always
     has Stop. While a share runs, its piece stays in the box (its time stops, the label says "sharing on /s") and the
     other lines wait in the history, as behind a proposal. A share stops with Stop or the box's close button, at the
     start of a fight, when Total RP 3 says the player is out of character, after `Bard.MAX_IDLE = 120` seconds waiting
     for a click, or when the game refuses a message for another reason than the flood limits or the lockdown.
   - The sent messages are counted as the player's (`auto = false`), and the songbook is not changed by a share.
6. **The Share icon.** The Share button carries a `share` icon from Google's **Material Symbols** (Outlined, weight 400;
   Apache License 2.0), allowed by the owner on 2026-11-24 and recorded in `docs/third-party.md`. The client cannot draw
   SVG: its published path is kept in `tools/make_media.py` (`MATERIAL`), filled even-odd at 8x and reduced to a 16-unit
   cell of `Media/icons.tga` (cell 49, `Assets.icons`), like the drawn icons. The Bard's label keeps the sheet's own
   drawn `note`. No Blizzard art.
7. **Commands**: `/au bard` (state), `/au bard on|off`, `/au bard share on|off`, `/au bard channel say|emote`,
   `/au bard sing [say|emote]` (shares the Bard piece last shown), `/au bard next`, `/au bard stop`. A typed command is
   the player's action. They make a seventh help group, `bard` (`/au help bard`), with `/au literary` (from `start`) and
   `/au songbook` (from `character`): a group needs three lines or more and the others are full.
8. **The repertoire in the need model** ([ADR 0050](0050-need-model-near-duplicates-and-content-waves.md)): no new
   content in this change. The Bard's repertoire is the literary pool (28 Bard pieces of 43); its size in the need model
   (pieces per culture and situation, so that a frequent player does not hear the same song within a week at "normal") is
   a later content wave, after W30, not part of W21-W30.

## Consequences

- One more voice to keep readable: `voice-bard` is in every contrast test of the voices (`Tests/TestLayout.lua`,
  `Tests/TestTheme.lua`), in the mockup library and in the spec's token table.
- The rule "a literary line never reaches chat" now has one exception, the explicit share, and it lives outside the
  Gateway's proposal path: the Gateway's guards are not weakened, and the share is covered by its own tests (never from a
  timer, a click needed for each `/s` line in the open world, the limits).
- The narrator box gains a second bar (Share) beside the proposal bar; the two are never shown together (a proposal
  holds the box, [#176](https://github.com/Finland6738/azeroth-unspoken/issues/176)).

## Not verified in the client

The colour and the icon on real scenes, the share's chat messages (that `/e` and `/s` in an instance go without a key
press from the timer, the flood limits against the server's own throttle, how other players see the emote and the lines,
Total RP 3's colouring), the Settings rows, the songbook's Share row.
