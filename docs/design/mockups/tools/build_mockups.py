"""Writes the HTML mockups of every window of Azeroth Unspoken into docs/design/mockups/.

    python -I -X utf8 docs/design/mockups/tools/build_mockups.py

The windows are drawn from the sizes, anchors, colours and English (and Italian) texts in AzerothUnspoken/UI/ and the
locale files; the sample data (names, memories, relationships) is invented. Every page says it is an illustrative
mockup, not an in-game screenshot. Then render.py turns them into PNG files with a headless browser.
"""
import os
import re
import sys
import zlib

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from mockkit import (PREFIX, VOICE_COLOR, btn, chat_lines, edit, fs, frame, page, placeholder,  # noqa: E402
                     speak_button, tooltip, wow)
from components import (dialogue, export_window, history_line, journal, narrator, popup, profile,  # noqa: E402
                        relations, settings, ui, wizard)
import proposed  # noqa: E402

PLAYER = "Elyra"   # invented character name

# real lines of the database (enUS and itIT language packs)
L_DUSK_E = "stands still a moment as the light drains from between the trunks and the wood fills with crickets."  # zone.forest.dusk
L_BATTLE = "I did not seek this battle. Nor will I flee it."                       # battle.gen.03
L_RETURN = "Last time, among these trees, I fell. The wood went on rustling as if nothing had happened."  # mem.ret.forest.bad.death
L_INNER = "Shadows stretch long across the ground, and the air cools by a breath."  # mono.zone.dusk.2
L_GREET = "Good evening, if there are still good ones left."                       # greet.05
L_NPC = "Welcome, traveler. There's room by the fire, if the road has worn you down."  # npcd.innkeeper.open.n1
IT_DUSK_E = "resta un momento immobile mentre la luce si ritira tra i tronchi e il bosco si riempie di grilli."
IT_GREET = "Buona sera, se ancora ne esistono di buone."
IT_INNER = "Le ombre si allungano sul terreno, e l'aria si raffredda di un soffio."
_ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))))


def verse(rule_id, lang="en"):
    """The texts of a piece of the verses pack (AzerothUnspoken_Versi/Texts_<lang>.lua), first variant first."""
    folder = os.path.join(_ROOT, "AzerothUnspoken_Versi")
    src = open(os.path.join(folder, "Texts_%s.lua" % {"en": "enUS", "it": "itIT"}[lang]), encoding="utf-8").read()
    block = re.search(r'\["' + re.escape(rule_id) + r'"\] = \{(.*?)\n\t\},', src, re.S).group(1)
    return [m.replace("\\n", "\n").replace('\\"', '"') for m in re.findall(r'"((?:[^"\\]|\\.)*)"', block)]


def song(rule_id, lang="en", stanzas=None):
    """A piece as the narrator says it: a song of stanzas (#127) has its frame and, in their order, `stanzas` of them
    (all when None, as the songbook shows it); the stanzas are apart by an empty line."""
    texts = verse(rule_id, lang)
    if "{stanzas}" not in texts[0]:
        return texts[0]
    chosen = texts[1:] if stanzas is None else [texts[i] for i in stanzas]
    return texts[0].replace("{stanzas}", "\n\n".join(chosen))


INN_RHYME = song("versi.inn.rhyme.01")                    # the innkeeper's voice (npc)
ROAD_SONG = song("versi.road.stanzas.01", stanzas=(1, 2))  # the inner voice, two of the four stanzas
RUIN = song("versi.inscription.ruin.01")                  # the inner voice
RUIN_IT = song("versi.inscription.ruin.01", "it")
NEMESIS_SONG = song("versi.nemesis.song.01")
LAMENT_PET = song("versi.lament.pet.01")
LAMENT_ALLY = song("versi.lament.ally.01")
DWARF_SONG = song("versi.culture.dwarf.01")

INDEX = []   # (file, title, group, meant for)


def add(name, title, w, h, body, group, target, **kw):
    page(name, title, w, h, body, **kw)
    INDEX.append((name, title, group, target, kw.get("kind", "current")))


def stage_narrator(name, title, target, h=300, scene="dusk", seed=3, caption_extra="", **nk):
    w = 640
    add(name, title, w, h + 30, narrator((w - 440) // 2, 70, **nk), "Narrator", target, scene=scene, seed=seed,
        caption_extra=caption_extra)


def build_narrator():
    stage_narrator("narrator-narrator", "Narrator frame - narrator voice", "The-Narrator",
                   speaker="narrator", text=f"{PLAYER} {L_DUSK_E}")
    stage_narrator("narrator-inner", "Narrator frame - inner voice", "The-Narrator",
                   speaker="inner", text=L_INNER, seed=4)
    stage_narrator("narrator-character", "Narrator frame - character voice", "The-Narrator",
                   speaker="character", text=f"«{L_BATTLE}»", scene="battle", seed=5)
    stage_narrator("narrator-npc", "Narrator frame - NPC voice", "The-Narrator",
                   speaker="npc", text=L_NPC, scene="warm", seed=6)
    # all four voices together: accent bar, tinted text, the inner voice's typeface, lightness (#186)
    w, h = 640, 560
    body = "".join(narrator((w - 440) // 2, 70 + i * 112, speaker=s, text=t) for i, (s, t) in enumerate((
        ("npc", L_NPC), ("character", f"«{L_BATTLE}»"), ("inner", L_INNER), ("narrator", f"{PLAYER} {L_DUSK_E}"))))
    add("narrator-voices", "Narrator frame - the four voices", w, h, body, "Narrator", "The-Narrator", scene="dusk",
        seed=8, caption_extra="Accent bar, tinted text, typeface (inner voice) and lightness tell the voices apart.")
    hist = [history_line("21:02", "narrator", f"{PLAYER} {L_DUSK_E}"),
            history_line("21:05", "character", f"«{L_BATTLE}»"),
            history_line("21:09", "inner", L_RETURN),
            history_line("21:12", "inner", L_INNER),
            history_line("21:14", "character", f"«{L_GREET}»", sent="SAY"),
            history_line("21:20", "inner", RUIN)]
    stage_narrator("narrator-history", "Narrator frame - history open", "The-Narrator", h=470,
                   speaker="inner", text=L_INNER, history=hist,
                   caption_extra="A text with line breaks keeps them in the history, the later lines indented.")
    # #126: a long private reading. The box is as tall as the whole text from the start; the lines appear one at a time
    stage_narrator("narrator-reading", "Narrator - a long private reading, line by line", "The-Narrator / Literary-Forms",
                   h=330, scene="warm", seed=13, speaker="npc", text=INN_RHYME, reveal=3, remaining=0.85,
                   caption_extra="Three of five lines shown so far: each next line comes after the time to read the one "
                                 "before.")
    stage_narrator("narrator-reading-scroll", "Narrator - a reading longer than twelve lines", "The-Narrator / Literary-Forms",
                   h=400, scene="night", seed=14, speaker="inner", text=ROAD_SONG, scroll="end", remaining=0.3,
                   caption_extra="At most twelve lines: the rest scrolls with the mouse wheel, and the box follows the "
                                 "line just revealed.")
    stage_narrator("narrator-reading-it", "Narrator - a long private reading (Italian)", "Languages / Literary-Forms",
                   h=330, seed=15, lang="it", speaker="inner", text=RUIN_IT, remaining=0.6)
    # the header is sized from the font: max(28, label + 12) units (#182)
    stage_narrator("narrator-large-font", "Narrator frame - text size 20", "The-Narrator / Settings", h=330, seed=16,
                   speaker="narrator", text=f"{PLAYER} {L_DUSK_E}", font=20,
                   caption_extra="The header grows with the label of a larger text size.")
    # private notices: a level of a bond (N2), a letter waiting in the journal (N8), a song in the songbook (N7)
    w, h = 640, 470
    notices = (("narrator", ui("en", "rel_level_up_1", "Bram Ashcombe", "Acquaintance", "Friend")),
               ("narrator", ui("en", "rel_letter_notice", "Sister Odile")),
               ("narrator", ui("en", "nemesis_song_notice", "The Shadow of Old Greyjaw", NEMESIS_SONG.split(":")[0])))
    body = "".join(narrator((w - 440) // 2, 70 + i * 120, speaker=sp, text=t, remaining=0.9 - i * 0.25)
                   for i, (sp, t) in enumerate(notices))
    add("narrator-notices", "Narrator - private notices", w, h, body, "Narrator", "The-Narrator / Relationships",
        scene="dusk", seed=17, caption_extra="A level reached, a letter waiting, a song in the songbook: private, "
                                             "never in chat. Shown one at a time in the game.")
    # paused: the header shows ">" and the chat says so; the speak button dims and says "Paused" under it (#183)
    w, h = 760, 420
    body = (narrator(160, 150, speaker="inner", text=L_INNER, paused=True)
            + chat_lines([PREFIX + "narrator paused. Press the key again (or /au pause) to resume."],
                         left=10, bottom=10, width=430, height=70)
            + speak_button(desat=True, opacity=0.5, paused=True, left=620, top=90)
            + fs("speak button at 50%, its badge at full opacity", "gfhs", left=560, top=152))
    add("narrator-paused", "Narrator frame - paused", w, h, body, "Narrator", "The-Narrator", scene="dusk", seed=9)
    # in context: the default position on a 1366 x 768 UIParent, with placeholders for the client UI
    w, h = 1366, 768
    body = (placeholder("client chat frame", left=10, bottom=110, width=430, height=180)
            + placeholder("client action bars", left=(w - 1024) // 2, bottom=0, width=1024, height=88)
            + placeholder("client unit frames", left=10, top=10, width=260, height=90)
            + placeholder("client minimap", right=10, top=10, width=150, height=160)
            + narrator((w - 440) // 2, 240, speaker="narrator", text=f"{PLAYER} {L_DUSK_E}")
            # the speak button: beside the narrator box (BOTTOMLEFT at BOTTOM +236, +240; review UI-19, #189)
            + speak_button(desat=True, left=w // 2 + 236, top=h - 240 - 36))
    add("narrator-in-context", "Narrator frame - default position (1366 x 768)", w, h, body, "Narrator",
        "Home / The-Narrator", scene="dusk", seed=10, scale=1,
        caption_extra="Dashed boxes are neutral placeholders for the client's own UI.")


def build_proposal():
    stage_narrator("proposal", "Chat proposal - waiting for confirmation", "Chat-Gateway", h=320,
                   speaker="character", text=f"«{L_GREET}»", proposal="SAY", hover_btn="send", left_s=18)
    # #176: a private line arrived while the proposal waits: it is in the history, the proposal stays on screen
    stage_narrator("proposal-held", "Chat proposal - a private line waits in the history", "Chat-Gateway", h=320,
                   speaker="character", text=f"«{L_GREET}»", proposal="SAY", left_s=12, held=1, seed=12)
    stage_narrator("proposal-editor", "Chat proposal - editor open", "Chat-Gateway", h=340,
                   speaker="character", text=f"«{L_GREET}»", proposal="SAY",
                   editor="Good evening, friend, if there are still good ones left.")
    stage_narrator("proposal-sent", "Chat proposal - sent to /s", "Chat-Gateway", h=300,
                   speaker="character", text="«Good evening, friend, if there are still good ones left.»", sent="SAY")
    stage_narrator("proposal-emote", "Chat proposal - narrator emote for /e", "Chat-Gateway", h=320,
                   speaker="narrator", text=f"{PLAYER} {L_DUSK_E}", proposal="EMOTE", seed=11)
    # Italian
    stage_narrator("narrator-it", "Narrator frame - Italian", "Languages / The-Narrator", h=320, lang="it",
                   speaker="character", text=f"«{IT_GREET}»", proposal="SAY")
    stage_narrator("narrator-inner-it", "Narrator frame - Italian inner voice", "Languages", lang="it",
                   speaker="inner", text=IT_INNER, seed=4)


def build_speak_button():
    # the tooltip follows the mode (UI/SpeakButton.lua TooltipLines, review UI-19, #189)
    w, h = 900, 300
    pending = "Good evening, if there are still good ones left."
    body = (fs("Private mode, the default (desaturated)", "gfn", left=40, top=20)
            + speak_button(desat=True, left=120, top=230)
            + tooltip([("Azeroth Unspoken", None),
                       ("Private mode: nothing is ever sent to chat. Click: the narrator shows a line that fits the "
                        "moment, only to you.", "cccccc"),
                       ("Right-drag: move. What may reach chat: /au mode.", "808080")], left=20, top=60, width=250)
            + fs("Confirm mode, proposal waiting (glow)", "gfn", left=330, top=20)
            + speak_button(glow=True, left=420, top=230)
            + tooltip([("Azeroth Unspoken", None), (pending, "ffffff"), ("Channel: automatic", "b3e6b3"),
                       ("Left click: send this line to chat. Right-drag: move.", "808080")], left=320, top=60, width=250)
            + fs("/au button editor on", "gfn", left=640, top=20)
            + speak_button(glow=True, left=720, top=230)
            + tooltip([("Azeroth Unspoken", None), (pending, "ffffff"), ("Channel: automatic", "b3e6b3"),
                       ("Left click: open it in the editor (/au button editor off: send at once). Right-drag: move.",
                        "808080")], left=620, top=60, width=250))
    add("speak-button", "Speak button - private mode, proposal waiting, editor option", w, h, body, "Speak button",
        "Chat-Gateway / Commands", scene="neutral", seed=12,
        caption_extra="Icon drawn as an original stand-in: the addon uses a client icon texture, not reproduced here.")


def build_wizard():
    w, h = 680, 600
    names = ["Welcome and language", "Experience", "Intensity", "Style", "Modules", "Total RP 3", "Chat and test",
             "Keys, button and settings"]
    for step in range(1, 9):
        trp3 = step == 6
        add(f"wizard-{step}", f"First-run guide - step {step}: {names[step - 1]}", w, h,
            wizard(step, trp3=trp3, left=80, top=50, trp3_others="needs" if trp3 else ""), "Wizard", "First-Run-Wizard",
            scene="neutral", seed=20 + step,
            caption_extra="Shown only when Total RP 3 is installed: 8 steps, otherwise 7." if trp3 else "")
    for step in (1, 7, 8):
        add(f"wizard-{step}-it", f"First-run guide - step {step}: {names[step - 1]} (Italian)", w, h,
            wizard(step, lang="it", trp3=False, left=80, top=50), "Wizard", "First-Run-Wizard / Languages",
            scene="neutral", seed=30 + step)
    # "Try the narrator" (#181): the narrator box steps aside, below the guide, and is above it; 1366 x 768
    W, H = 1366, 768
    gl, gt = (W - 520) // 2, (H - 480) // 2 - 40
    below = 98    # the guide's bottom edge is 184 up; the box (about 78 high) sits GAP (8) under it
    body = (wizard(7, left=gl, top=gt)
            + narrator((W - 440) // 2, below, speaker="narrator", text=f"{PLAYER} {L_DUSK_E}")
            + f'<div class="note" style="left:{gl + 520 + 10}px;top:{gt + 330}px">The narrator box steps aside, '
              f'below the guide, and is above every window while it shows the test line</div>')
    add("wizard-test-line", "Guide - 'Try the narrator' at 1366 x 768", W, H, body, "Wizard", "First-Run-Wizard",
        scene="dusk", seed=37, scale=1)


def build_settings():
    # the five sections scroll inside the client's settings canvas: drawn here unrolled, the whole content at once
    w = 720
    add("settings", "Settings panel - the five sections (unrolled)", w, 1420, settings(30, 30), "Settings", "Settings",
        scene="neutral", seed=40, scale=1,
        caption_extra="The sections scroll inside the client's options window: shown unrolled, on a plain stand-in.")
    add("settings-reload", "Settings panel - language changed, reload needed (unrolled)", w, 1530,
        settings(30, 30, reload_needed=True), "Settings", "Settings / Languages", scene="neutral", seed=41, scale=1)
    # what fits in the canvas at once: the top of the panel, with the scroll bar
    add("settings-top", "Settings panel - the top of the scrolling canvas", w, 720, settings(30, 30, view=640),
        "Settings", "Settings", scene="neutral", seed=42)


D = lambda s: "  |cff9d9d9d" + s + "|r"  # noqa: E731   the time stamp of a row (LM.Stamp)
LETTER = ui("en", "rel_letter_questgiver_2", "Sister Odile")
SAMPLE_MEMORIES = [
    (LETTER + D("2026-11-01 19:02"), ["P", "x"]),                                           # N8 letter
    (ui("en", "rel_mem_level_up", "Bram Ashcombe") + D("2026-10-31 21:40"), ["P", "x"]),     # N2 a level of a bond
    (ui("en", "rel_mem_pet_bond", "Ember", ui("en", "rel_pet_stage_trusted")) + D("2026-10-31 20:15"), ["P", "x"]),
    (ui("en", "rel_mem_grief_npc", "Old Fenwick") + " (Darkshire)" + D("2026-10-30 23:02"), ["P", "x"]),
    ("|cffffd200[P]|r " + ui("en", "rel_mem_title", "Friend of Darkshire") + D("2026-10-30 22:50"), ["P", "x"]),
    ("|cffffd200[P]|r Story: The Place of the Fall  |cff9d9d9d2026-10-30 22:41|r", ["P", "x"]),
    ("Return: Duskwood  |cff9d9d9d2026-10-30 22:05|r", ["P", "x"]),
    ("Death: Duskwood  |cff9d9d9d2026-10-28 21:52|r", ["P", "x"]),
    ("A chat: Darkshire  |cff9d9d9d2026-10-27 20:13|r", ["P", "x"]),
    ("Level reached 24  |cff9d9d9d2026-10-26 19:40|r", ["P", "x"]),
    ("A bond changes: Westfall  |cff9d9d9d2026-10-24 21:18|r", ["P", "x"]),
    ("Flight: Lakeshire  |cff9d9d9d2026-10-22 18:57|r", ["P", "x"]),
    ("First visit: Duskwood  |cff9d9d9d2026-10-21 20:30|r", ["P", "x"]),
    ("First visit: Redridge Mountains  |cff9d9d9d2026-10-19 19:05|r", ["P", "x"]),
    ("|cffffd200[P]|r First visit: Westfall  |cff9d9d9d2026-10-14 21:44|r", ["P", "x"]),
    ("Level reached 20  |cff9d9d9d2026-10-12 20:02|r", ["P", "x"]),
]


def build_journal():
    w, h = 680, 610
    J = lambda tab, rows, **k: journal(40, 40, tab, rows, **k)  # noqa: E731
    add("journal-memories", "Journal - Memories", w, h, J("memories", SAMPLE_MEMORIES, page=(1, 2)), "Journal",
        "Memory-and-Journal", seed=50)
    places = [("Duskwood - 4 visits - ended badly  |cff9d9d9d2026-10-30 22:05|r", ["x"]),
              ("Darkshire - 3 visits  |cff9d9d9d2026-10-27 20:13|r", ["x"]),
              ("Lakeshire - 2 visits  |cff9d9d9d2026-10-22 18:57|r", ["x"]),
              ("Redridge Mountains - 2 visits  |cff9d9d9d2026-10-19 19:05|r", ["x"]),
              ("Stormwind City * - 9 visits  |cff9d9d9d2026-10-18 22:31|r", ["x"]),
              ("Westfall - 5 visits  |cff9d9d9d2026-10-14 21:44|r", ["x"]),
              ("Goldshire - 6 visits  |cff9d9d9d2026-10-09 19:12|r", ["x"])]
    add("journal-places", "Journal - Places", w, h, J("places", places), "Journal", "Memory-and-Journal", seed=51)
    flags = [("met_the_hermit  |cff9d9d9d2026-10-21 19:02|r", ["x"]), ("swore_by_the_lake  |cff9d9d9d2026-10-22 19:10|r", ["x"]),
             ("lost_the_old_blade  |cff9d9d9d2026-10-28 21:52|r", ["x"])]
    add("journal-flags", "Journal - Flags", w, h, J("flags", flags), "Journal", "Memory-and-Journal", seed=52)
    session = [f"Return: Duskwood  |cff9d9d9d2026-10-31 20:{m:02d}|r" for m in (2, 9)] + \
        ["A chat: Darkshire  |cff9d9d9d2026-10-31 20:18|r", "Flight: Darkshire  |cff9d9d9d2026-10-31 20:31|r"]
    add("journal-session", "Journal - Session", w, h,
        J("session", session, note="This session only: forgotten when you log out."), "Journal", "Memory-and-Journal",
        seed=53)
    H = lambda s: "|cffffd200" + s + "|r"  # noqa: E731
    # N7 (#219): the stories of an arc told for many NPCs (the nemeses), under the arc's title with their own slots
    stories = [H("Stories under way (1 of 2)"), ("The Place of the Fall: waiting for your choice", ["...", "x"]),
               H(ui("en", "arc_hdr_many", "Nemeses", 2, 3)),
               (ui("en", "arc_row", "The Shadow of Old Greyjaw", "the long shadow"), ["...", "x"]),
               (ui("en", "arc_row", "The Shadow of the Ashen Stalker", "the mark"), ["...", "x"]),
               H("Stories that can begin"), ("The Path Found Again: you can begin it whenever you like", ["...", "x"]),
               H("Concluded stories"), ("A Familiar Face  |cff9d9d9d2026-10-12 20:31|r", ["..."]),
               ("|cff9d9d9dSuspend all stories|r", ["II"]), ("|cff9d9d9dSkip all stories|r", ["x"])]
    note = ui("en", "arc_note")
    add("journal-stories", "Journal - Stories, with the nemeses", w, h, J("stories", stories, note=note, page=(1, 2)),
        "Journal", "Story-Arcs", seed=54)
    nemesis = [("< Back to stories", ["<"]), H("The Shadow of Old Greyjaw"),
               "Some foes are not forgotten once the fight is over. One of them cut your road short, and its shadow",
               "now falls across the miles ahead: a story that grows each time it brings you down, and ends only with",
               "its fall.",
               "|cff9d9d9dState: the long shadow (under way)|r",
               "|cffcfcfcfthe mark|r  |cff9d9d9d2026-10-24 21:10|r",
               "|cffcfcfcfthe long shadow|r  |cff9d9d9d2026-10-29 22:31|r",
               "   It has brought you down twice. The road keeps leading you back its way: the story deepens with",
               "   every fall, and ends only with its own.",
               ("Suspend the story", ["II"])]
    add("journal-nemesis", "Journal - a nemesis story", w, h, J("stories", nemesis, note=note), "Journal",
        "Story-Arcs", seed=64, caption_extra="Old Greyjaw is an invented foe.")
    # #122: the songbook (the pieces heard or read: ids and times only, the words read from the loaded pack)
    title = lambda t: t.split("\n")[0].rstrip(": ")  # noqa: E731   Songbook:Title, the first line
    marks = lambda *m: "  |cff9d9d9d[" + ", ".join(m) + "]|r"  # noqa: E731
    pieces = [("|cffffd200*|r " + title(NEMESIS_SONG) + D("2026-11-01 21:12") + marks("favourite"), ["Open", "!Forget"]),
              (title(LAMENT_PET) + D("2026-10-31 20:44") + marks("by heart"), ["Open", "!Forget"]),
              (title(INN_RHYME) + D("2026-10-30 22:20"), ["Open", "!Forget"]),
              (title(ROAD_SONG) + D("2026-10-29 18:03"), ["Open", "!Forget"]),
              ("|cff9d9d9d" + title(DWARF_SONG) + "|r" + D("2026-10-27 23:40") + marks("muted"), ["Open", "!Forget"]),
              (title(RUIN) + D("2026-10-21 20:30"), ["Open", "!Forget"])]
    add("journal-songbook", "Journal - Songbook", w, h, J("songbook", pieces, note=ui("en", "song_note")), "Journal",
        "Literary-Forms / Memory-and-Journal", seed=65)
    verses = ["   " + l if l else "" for l in NEMESIS_SONG.split("\n")]
    piece = ([("< Back to stories", ["<"]), H(title(NEMESIS_SONG))] + verses
             + ["|cff9d9d9dLast heard: 2026-11-01 21:12|r", (ui("en", "song_state_heard"), ["Learn"]),
                (ui("en", "song_state_favourite"), ["Unmark"])])
    add("journal-songbook-piece", "Journal - a piece of the songbook", w, h,
        J("songbook", piece, note=ui("en", "song_note"), page=(1, 2)), "Journal", "Literary-Forms", seed=66,
        caption_extra="The second page has 'It may come back' (Mute) and 'Forget this piece'.")
    add("journal-letter", "Journal - a letter and its tooltip", w, h,
        J("memories", SAMPLE_MEMORIES, page=(1, 2), tip=(0, LETTER + D("2026-11-01 19:02"))), "Journal",
        "Relationships / Memory-and-Journal", seed=67,
        caption_extra="A letter from an NPC you are close to waits in the journal: never game mail, never chat.")
    detail = [("< Back to stories", ["<"]), H("The Place of the Fall"),
              "A fall leaves a mark on the place where it happened. A short story about going back, and about what you",
              "carry with you when you go on.",
              "|cff9d9d9dState: discovered (under way)|r",
              "|cffcfcfcfdiscovered|r  |cff9d9d9d2026-10-28 21:52|r",
              "   There was a fall, and then a return to your feet. The place waits to be seen",
              "   again: the story goes on when you go back.",
              H("Now that you are here again: how do you stand in this place?"),
              ("Choose: A moment of silence", [">"]), ("Choose: Put in order what I carry", [">"]),
              ("Choose: Go on without looking back", [">"])]
    add("journal-story-detail", "Journal - a story", w, h, J("stories", detail, note=note, page=(1, 2)), "Journal",
        "Story-Arcs", seed=55)
    rel = [("Torvan  friend  |cff9d9d9dFriend (34)|r", ["..."]), ("Bram Ashcombe  acquaintance  |cff9d9d9dAcquaintance (18)|r", ["..."]),
           ("Mirelle  respected rival  |cff9d9d9dNeutral (6)|r", ["..."]), ("Captain Harlow  acquaintance  |cff9d9d9dNeutral (11)|r", ["..."])]
    add("journal-relationships", "Journal - Relationships tab", w, h,
        J("relations", rel, note="The 'Forget everything' button of this window does not touch relationships: manage them in /au relationships."),
        "Journal", "Relationships", seed=56)
    people = [(ui("en", "rel_id_guid", "Torvan"), ["+", "x"]),   # #112: a question about identity comes first
              ("Kesh  |cff9d9d9din your group|r", ["+", "x"]), ("Anwen  |cff9d9d9dhas a Total RP 3 profile|r", ["+", "x"]),
              ("Dorrik  |cff9d9d9da trade|r", ["+", "x"])]
    add("journal-people", "Journal - People met tab", w, h,
        J("people", people, note="The addon suggests people you meet (group, trades, Total RP 3 profiles, private replies). No one joins the list without your click on +. Suggestions last only for this session."),
        "Journal", "Relationships", seed=57)
    add("journal-empty", "Journal - empty state", w, h,
        J("memories", [], stats="memory: 0 memories (0 permanent), 0 places, 0 flags."), "Journal", "Memory-and-Journal",
        seed=58)
    add("journal-reset-armed", "Journal - 'Forget everything' armed", w, h, J("memories", SAMPLE_MEMORIES[:5], armed=True),
        "Journal", "Memory-and-Journal", seed=59)
    add("journal-delete-armed", "Journal - deleting a memory asks for OK", w, h,
        J("memories", SAMPLE_MEMORIES, page=(1, 2), confirm=(1, "Delete this memory? Click OK:")), "Journal",
        "Memory-and-Journal", seed=61)
    add("journal-memory-off", "Journal - memory off", w, h, J("memories", SAMPLE_MEMORIES, page=(1, 2), lock="off"),
        "Journal", "Memory-and-Journal / Troubleshooting", seed=62)
    long_story = ("|cffffd200[P]|r Story: The Place of the Fall, where the road bends towards the lake and the old "
                  "watchtower  |cff9d9d9d2026-10-30 22:41|r")
    add("journal-row-tooltip", "Journal - a long row and its tooltip", w, h,
        J("memories", [(long_story, ["P", "x"])] + SAMPLE_MEMORIES[1:], page=(1, 2),
          tip=(0, "|cffffd200[P]|r Story: The Place of the Fall, where the road bends towards the lake and the old "
                  "watchtower  |cff9d9d9d2026-10-30 22:41|r")), "Journal", "Memory-and-Journal", seed=63)
    export = ("Azeroth Unspoken - journal of Elyra (exported 2026-10-31 21:20)\n\n"
              "[P] Story: The Place of the Fall - 2026-10-30 22:41\nReturn: Duskwood - 2026-10-30 22:05\n"
              "Death: Duskwood - 2026-10-28 21:52\nA chat: Darkshire - 2026-10-27 20:13\nLevel reached 24 - 2026-10-26 19:40\n\n"
              "Places\nDuskwood - 4 visits - ended badly\nDarkshire - 3 visits\nLakeshire - 2 visits\n\nFlags\nmet_the_hermit\n")
    add("journal-export", "Journal - export window", w, 520, export_window(40, 40, "Export", export), "Journal",
        "Memory-and-Journal", seed=60)


REL_ROWS = [("Torvan", "Player", "friend", "Friend (34)", "2026-10-30", "27"),
            ("Bram Ashcombe", "NPC", "acquaintance", "Acquaintance (18)", "2026-10-30", "6"),
            ("Mirelle", "Player", "respected rival", "Neutral (6)", "2026-10-29", "9"),
            ("Captain Harlow", "NPC", "acquaintance", "Neutral (11)", "2026-10-27", "4"),
            ("Sister Odile", "NPC", "friend", "Friend (41)", "2026-10-24", "11"),
            ("Kesh", "Player", "comrade in arms", "Close friend (58)", "2026-10-22", "31"),
            ("Old Fenwick", "NPC", "indifferent", "Neutral (0)", "2026-10-19", "2"),
            ("Warden Kessick", "NPC", "enemy", "Hated (-82)", "2026-10-18", "5")]

PLAYER_DETAIL = {
    "kind": "player", "name": "Torvan", "label": "friend", "disposition": "Friend (34)",
    "axes": [62, 40, 25, 45, 0, 20], "label_btn": "Chosen: friend", "custom": "",
    "f1": "trust", "f2": "gratitude", "note": "Owes me a drink since the Westfall road.", "tags": "westfall, archer",
    "traits": ["Role: unknown", "Temperament: Cheerful", "Morality: unknown", "Goals: Freedom",
               "Way of speaking: Plain (automatic)"],
    "seen_line": "First recorded: 2026-09-14. Last seen: 2026-10-30. Encounters: fought together 12, group 9, trade 3, duel 1, emote 2.",
    "seen_facts": "Recent:\n2026-10-30  fought together  (Duskwood)\n2026-10-30  group  (Duskwood)\n2026-10-27  trade  (Darkshire)\n"
                  "2026-10-24  emote\n2026-10-22  duel  (Westfall)",
}
R_ = lambda key, *a: ui("en", key, *a)  # noqa: E731
# "What the addon knows" of an NPC (RelationsFrame RefreshDetail): left, the level and the temperament; right, the
# first meeting, then the nickname and the favours (N5), the town and its title (N6), the word given (N4), the grudge (N1)
NPC_DETAIL = dict(PLAYER_DETAIL, kind="npc", name="Bram Ashcombe", label="friend", disposition="Friend (41)",
                  axes=[72, 45, 30, 50, 0, 20], label_btn="Automatic: friend", f1="none", f2="none",
                  note="", tags="", traits=["Role: Innkeeper (automatic)", "Temperament: Cheerful", "Morality: unknown",
                                            "Goals: Profit", "Way of speaking: Warm"],
                  knows=(R_("rel_level_line", 7, 9, "Friend", "Close friend", 44) + "\n"
                         + R_("rel_pace_line", R_("rel_pace_quick"), R_("rel_pace_slow"), " (innkeeper, Cheerful)"),
                         R_("rel_met_details", "2026-09-14", ", ".join((R_("rel_met_time_dusk"), R_("rel_met_weather_rain"),
                                                                       R_("rel_met_zone", "Duskwood"), R_("rel_met_level", 21))))
                         + "\n" + R_("rel_nick_line", "Good Turn") + " "
                         + R_("rel_favour_line", R_("rel_favour_what_rest"), 2) + " " + R_("rel_favours_done", 3)
                         + "\n" + R_("rel_town_line", "Darkshire", R_("rel_word_good"), 64) + " "
                         + R_("rel_title_held", "Friend of Darkshire")))
FOE_DETAIL = dict(NPC_DETAIL, name="Warden Kessick", label="enemy", disposition="Hated (-82)",
                  axes=[48, -90, -70, -85, 30, -60], label_btn="Automatic: enemy",
                  traits=["Role: Guard (automatic)", "Temperament: Stern", "Morality: unknown", "Goals: Order",
                          "Way of speaking: Curt"],
                  knows=(R_("rel_level_line", 1, 9, "Hated", "Hostile", 30) + "\n"
                         + R_("rel_pace_line", R_("rel_pace_slow"), R_("rel_pace_slow"), " (guard, Stern)"),
                         R_("rel_met_details", "2026-10-02", ", ".join((R_("rel_met_time_day"), R_("rel_met_zone", "Lakeshire"),
                                                                       R_("rel_met_level", 19))))
                         + "\n" + R_("rel_oath_mark", 60)
                         + "\n" + R_("rel_town_line", "Lakeshire", R_("rel_word_bad"), -35) + " "
                         + R_("rel_title_withheld", "Friend of Lakeshire")
                         + "\n" + R_("rel_foe_line_attacked", 12, 2) + " " + R_("rel_grudge_eternal") + " "
                         + R_("rel_town_betrayed", "Lakeshire")))


def build_relations():
    w, h = 800, 740
    add("relations-list", "Relationships - list", w, h, relations(40, 40, "list", rows=REL_ROWS, hover_row=2),
        "Relationships", "Relationships", seed=70,
        caption_extra="Plain rows that own their cells; the hovered row is highlighted.")
    add("relations-people", "Relationships - People met", w, h,
        relations(40, 40, "people", candidates=5,
                  cands=[(R_("rel_id_guid", "Torvan"), None), (R_("rel_id_renamed", "Mirelle", "Mirellia"), None),
                         ("Kesh", "in your group"), ("Anwen", "has a Total RP 3 profile"), ("Dorrik", "a trade")]),
        "Relationships", "Relationships", seed=71,
        caption_extra="Questions about identity come first: + says it is the same person, x changes nothing.")
    add("relations-empty", "Relationships - empty state", w, h, relations(40, 40, "list", rows=[], candidates=0),
        "Relationships", "Relationships", seed=72)
    add("relations-options", "Relationships - options", w, h, relations(40, 40, "options"), "Relationships",
        "Relationships", seed=76)
    add("relations-detail-player", "Relationships - a player's detail", w, h,
        relations(40, 40, "detail", detail=PLAYER_DETAIL), "Relationships", "Relationships", seed=73,
        caption_extra="660 units tall: it fits a 768-unit screen at UI scale 1.")
    add("relations-detail-npc", "Relationships - an NPC's detail", w, h,
        relations(40, 40, "detail", detail=NPC_DETAIL), "Relationships", "Relationships", seed=74,
        caption_extra="What the addon knows: level, temperament, first meeting, nickname, favor, town and title.")
    add("relations-detail-foe", "Relationships - a hated NPC", w, h,
        relations(40, 40, "detail", detail=FOE_DETAIL), "Relationships", "Relationships", seed=77,
        caption_extra="A grudge for ever, the mark of a broken oath, a title withheld. Narration only: no NPC behaves "
                      "differently in the game.")
    shared = dict(PLAYER_DETAIL, scope="Choices: shared")
    add("relations-detail-shared", "Relationships - player detail with the shared list on", w, h,
        relations(40, 40, "detail", detail=shared), "Relationships", "Relationships", seed=75)


def build_consent():
    w, h = 800, 740
    # shared list (#178): the first click asks; the button says "off, confirm" once the pause is over; the whole warning
    # sits in the window, next to the buttons, in the normal font; the client's own dialog repeats it
    body = (relations(40, 40, "options", armed="share")
            + popup(150, 470, 500, 190, ui("en", "consent_share_text"), ui("en", "consent_turn_on"), ui("en", "consent_cancel"),
                    accept_disabled=False))
    add("consent-shared-list", "Consent - share relationships with the account", w, h, body, "Consent",
        "Relationships / Privacy-and-Data", seed=80)
    # proximity: the same two steps
    body = (relations(40, 40, "options", armed="proximity")
            + popup(150, 470, 500, 170, ui("en", "consent_proximity_text"), ui("en", "consent_turn_on"),
                    ui("en", "consent_cancel"), accept_disabled=False))
    add("consent-proximity", "Consent - recognise nearby people", w, h, body, "Consent",
        "Relationships / Privacy-and-Data", seed=81)
    # automatic sending: the chat step of the guide, and the dialog with the whole warning; its button is disabled
    # while it is read (about two seconds), so a double-click cannot reach it
    W, H = 900, 640
    body = (wizard(7, left=30, top=60, auto_state="reading")
            + popup(520, 150, 340, 250, ui("en", "consent_auto_text"), ui("en", "consent_turn_on"), ui("en", "consent_cancel")))
    add("consent-auto", "Consent - automatic sending", W, H, body, "Consent", "Chat-Gateway / Privacy-and-Data",
        seed=82, caption_extra="The Turn on button is disabled for the first two seconds.")
    # reading other players' Total RP 3: the state in words, with the dependency, and the dialog
    body = (settings(30, 30, others_state=ui("en", "consent_on_needs", ui("en", "consent_needs_name_short")),
                     rpname=False, view=640, scroll=740)
            + popup(120, 450, 420, 200, ui("en", "consent_trp3_text"), ui("en", "consent_turn_on"), ui("en", "consent_cancel"),
                    accept_disabled=False))
    add("consent-trp3-others", "Consent - read other players' Total RP 3", 720, 700, body, "Consent",
        "Character-Soul-and-Total-RP-3 / Privacy-and-Data", seed=83,
        caption_extra="Behind the dialog, the settings row after the consent was given with 'Name from Total RP 3' off.")
    # reload after a change of language (StaticPopup stand-in)
    W, H = 640, 300
    pop = frame(fs("Azeroth Unspoken: the lines in Italiano need a reload of the interface. Reload now?", "gfh", left=20,
                   top=20, width=280, extra=";text-align:center")
                + btn("Reload now", 128, 22, left=24, bottom=16) + btn("Later", 128, 22, right=24, bottom=16),
                bg=(0.02, 0.02, 0.04, 0.92), left=160, top=40, width=320, height=110,
                cls="").replace('class="f "', 'class="f " ')
    pop = pop.replace('<div class="f "', '<div class="f " style="border:2px solid #7b7b8f;border-radius:6px" ', 1) \
        if False else pop
    body = (f'<div class="abs" style="left:158px;top:38px;width:324px;height:114px;border:2px solid #7b7b8f;'
            f'border-radius:6px"></div>' + pop
            + fs("Client dialog (StaticPopup) drawn as a plain stand-in.", "gfhs", left=160, top=170))
    add("consent-reload", "Language change - reload dialog", W, H, body, "Consent", "Languages", seed=84)


def build_profile():
    rows = [("Cynical - idealist", 64, "64 (idealist)", "chosen", True),
            ("Dreamer - pragmatic", 40, "40 (balanced)", "chosen", True),
            ("Pessimist - optimist", 78, "78 (optimist)", "chosen", True),
            ("Altruism", 70, "70 (high)", "chosen", True), ("Stoicism", 50, "not set", "neutral", False),
            ("Ambition", 35, "35 (medium)", "chosen", True), ("Spirituality", 50, "not set", "neutral", False),
            ("Patriotism", 50, "not set", "neutral", False), ("Curiosity", 85, "85 (high)", "chosen", True),
            ("Vengefulness", 50, "not set", "neutral", False), ("Irony", 30, "30 (medium)", "Total RP 3", False),
            ("Inner voice", None, "present", "chosen", True)]
    add("profile", "Character soul - personality", 760, 790, profile(40, 40, rows, {"blood"}), "Profile",
        "Character-Soul-and-Total-RP-3", seed=90)
    neutral = [(r[0], None if r[1] is None else 50, "not set", "neutral", False) for r in rows]
    # "Neutral profile" clears every choice: the first click arms it (filled, in words), the second clears (#190)
    add("profile-reset-armed", "Character soul - 'Neutral profile' waits for a second click", 760, 790,
        profile(40, 40, rows, {"blood"}, reset_armed=True), "Profile", "Character-Soul-and-Total-RP-3", seed=92)
    add("profile-neutral", "Character soul - neutral profile", 760, 790,
        profile(40, 40, neutral, set(), archetype="Neutral", culture=None,
                arch_help="No traits: the narrator does not pick the character for you."),
        "Profile", "Character-Soul-and-Total-RP-3", seed=91)


def build_dialogue():
    w, h = 560, 300
    add("dialogue-offered", "NPC dialogue - offered", w, h,
        dialogue(90, 60, "|cff4fb354Innkeeper · Bram Ashcombe|r", choices=["Listen (ambient dialogue)"]),
        "NPC dialogue", "NPC-Dialogues", scene="warm", seed=100)
    add("dialogue-line", "NPC dialogue - a line and the answers", w, h,
        dialogue(90, 40, "|cff4fb354Innkeeper · Bram Ashcombe|r", line=L_NPC,
                 choices=["What news is going round?", "I am looking for a place to rest.", "Farewell."], hover=0),
        "NPC dialogue", "NPC-Dialogues", scene="warm", seed=101)
    add("dialogue-last", "NPC dialogue - last line", w, h,
        dialogue(90, 60, "|cff4fb354Innkeeper · Bram Ashcombe|r",
                 line="You've come to the right place to stop walking. For a while, at least.", choices=["Close"],
                 numbered=False),
        "NPC dialogue", "NPC-Dialogues", scene="warm", seed=102)
    add("dialogue-test", "NPC dialogue - /au talk test", w, h,
        dialogue(90, 40, "|cff4fb354Innkeeper · Test innkeeper|r · test", line=L_NPC,
                 choices=["What news is going round?", "I am looking for a place to rest.", "Farewell."]),
        "NPC dialogue", "NPC-Dialogues", scene="warm", seed=103)


def build_chat():
    # the lines come from the addon itself (chat_capture.py: UI/Commands.lua and Core/Diagnostics.lua under the
    # simulated client of the tests), so a mockup cannot disagree with the code
    from chat_capture import run
    # /au help: the groups, in a default-sized chat window (about ten lines): all of it is visible (review UI-19, #189)
    add("chat-help-window", "/au help - the groups, in a default chat window", 640, 400,
        chat_lines(run("help"), left=10, top=40, width=600, height=270)
        + '<div class="chatinput" style="left:10px;top:316px;width:600px">/au help</div>',
        "Chat output", "Commands", seed=111,
        caption_extra="The whole output fits in a default chat window. Options use \" / \", never a bare | (UI-05).")
    # /au help all: every group, the diagnostics last
    lines = run("help all")
    w = 900
    h = 40 + len(lines) * 19 + 40
    add("chat-help", "/au help all in the chat frame (full output)", w, h,
        chat_lines(lines, left=10, top=10, width=880, height=h - 50), "Chat output", "Commands", seed=110, scale=1.25,
        caption_extra="/au help prints only the groups; /au help <group> prints one group.")
    lines = run("debug")
    h = 40 + len(lines) * 19 + 200
    add("chat-debug", "/au debug in the chat frame", w, h,
        chat_lines(lines, left=10, top=10, width=880, height=h - 50), "Chat output",
        "Troubleshooting / Reporting-Bugs-and-Feedback", seed=112, scale=1.25,
        caption_extra="Captured from the addon with the simulated client of the tests: the client values are not "
                      "those of a real client.")


def write_index():
    groups = {}
    for name, title, group, target, kind in INDEX:
        groups.setdefault(group, []).append((name, title, target, kind))
    parts = []
    for group, items in groups.items():
        parts.append(f"<h2>{group}</h2><ul>")
        for name, title, target, kind in items:
            tag = " <em>(proposed)</em>" if kind == "proposed" else ""
            parts.append(f'<li><a href="{name}.html">{title}</a>{tag} - <a href="png/{name}.png">PNG</a> '
                         f'<small>for: {target}</small></li>')
        parts.append("</ul>")
    doc = f"""<!doctype html>
<html lang="en"><head><meta charset="utf-8"><title>Azeroth Unspoken - UI mockups</title>
<style>body{{font:15px/1.5 Georgia,serif;max-width:900px;margin:24px auto;padding:0 16px;background:#14111c;color:#eee}}
a{{color:#ffd36b}}h2{{color:#b9a1ff;border-bottom:1px solid #333}}small{{color:#999}}</style></head><body>
<h1>Azeroth Unspoken - UI mockups</h1>
<p>Illustrative mockups built from the addon code (sizes, anchors, colours and texts of <code>AzerothUnspoken/UI/</code>).
They are <strong>not in-game screenshots</strong>: nothing has been tested in the real client yet. No Blizzard art,
icon, font or screenshot is used. The review is in <a href="../UI_REVIEW.md">UI_REVIEW.md</a>.</p>
{''.join(parts)}
</body></html>
"""
    with open(os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "index.html"), "w",
              encoding="utf-8", newline="\n") as f:
        f.write(doc)


def main():
    build_narrator()
    build_proposal()
    build_speak_button()
    build_wizard()
    build_settings()
    build_journal()
    build_relations()
    build_consent()
    build_profile()
    build_dialogue()
    build_chat()
    for name, title, w, h, body, target in proposed.build():
        add(name, title, w, h, body, "Proposed", target, kind="proposed", scene="dusk" if "narrator" in name else
            ("neutral" if "wizard" in name else "neutral"), seed=zlib.crc32(name.encode()) % 97 + 120,
            caption_extra="Proposal from the UI review, not implemented.")
    write_index()
    print(f"{len(INDEX)} mockups written")
    return INDEX


if __name__ == "__main__":
    main()
