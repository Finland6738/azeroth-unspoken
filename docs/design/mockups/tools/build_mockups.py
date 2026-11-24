"""Writes the HTML mockups of every window of Azeroth Unspoken into docs/design/mockups/.

    python -I -X utf8 docs/design/mockups/tools/build_mockups.py

The windows are drawn as AzerothUnspoken/UI/ lays them out (UI-ECO: the NEBULA look, the tokens of UI/Theme.lua, the
widgets of UI/Widgets.lua), on the pieces of tools/mockup_lib.py and docs/design/mockups/tools/components.py. Every
text of the interface is read from the locale files (enUS, itIT); the sample data (names, memories, relationships) is
invented and the lines are lines of the phrase packs. Every page says it is an illustrative mockup, not an in-game
screenshot, and which theme it shows (Nebula, the default, or Aurora). Then render.py turns them into PNG files with a
headless browser. The pages of the UI review's proposals (proposed-*.html) are kept as they were drawn in 2026-10,
with their own review.css: they are history, not the addon.
"""
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from mockkit import MOCKUPS, PREFIX, chat_lines, note, page, placeholder, write_css  # noqa: E402
from components import (L, M, button, dialog, dialogue, export_window, history_line, journal, narrator,  # noqa: E402
                        profile, relations, settings, speak_button, text, tooltip, wizard)

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
BARD_SONG = song("versi.road.song.01")                    # the inner voice, a song: the Bard's (ADR 0060)
BARD_SONG_IT = song("versi.road.song.01", "it")

INDEX = []   # (file, title, group, meant for, kind)


def add(name, title, w, h, body, group, target, **kw):
    page(name, title, w, h, body, **kw)
    INDEX.append((name, title, group, target, kw.get("kind", "current")))


def stage_narrator(name, title, target, h=300, scene="dusk", seed=3, caption_extra="", theme="nebula", group="Narrator", **nk):
    w = 640
    add(name, title, w, h + 30, narrator((w - 440) // 2, 70, theme=theme, **nk), group, target, scene=scene, seed=seed,
        caption_extra=caption_extra, theme=theme)


def client_popup(left, top, width, height, s, accept, cancel, accept_disabled=False):
    """The client's own confirmation dialog (StaticPopup, Core/Consent.lua), drawn as a plain grey stand-in with the
    addon's warning and its two explicit buttons. It is the game's frame, not a widget of the addon: not on the theme."""
    def b(label, x, off):
        return (f'<div class="abs" style="left:{x}px;bottom:14px;width:150px;height:24px;border:1px solid #777;'
                f'border-radius:4px;background:#3a3a3a;color:{"#888" if off else "#ffd100"};display:grid;place-items:center;'
                f'font:13px Arial,sans-serif">{M.esc(label)}</div>')
    return (f'<div class="abs" style="left:{left}px;top:{top}px;width:{width}px;height:{height}px;border:2px solid #7b7b8f;'
            f'border-radius:6px;background:rgba(8,6,14,.97);z-index:30">'
            f'<div class="abs" style="left:16px;top:14px;right:16px;color:#fff;font:13px/1.35 Arial,sans-serif;'
            f'white-space:pre-wrap;text-align:center">{M.esc(s)}</div>'
            + b(accept, width // 2 - 156, accept_disabled) + b(cancel, width // 2 + 6, False) + "</div>")


def build_narrator():
    stage_narrator("narrator-narrator", "Narrator box - narrator voice", "The-Narrator", speaker="narrator",
                   s=f"{PLAYER} {L_DUSK_E}")
    stage_narrator("narrator-inner", "Narrator box - inner voice", "The-Narrator", speaker="inner", s=L_INNER, seed=4)
    stage_narrator("narrator-character", "Narrator box - character voice", "The-Narrator", speaker="character",
                   s=f"«{L_BATTLE}»", scene="battle", seed=5)
    stage_narrator("narrator-npc", "Narrator box - NPC voice", "The-Narrator", speaker="npc", s=L_NPC, scene="warm", seed=6)
    w, h = 640, 560
    body = "".join(narrator((w - 440) // 2, 70 + i * 112, speaker=sp, s=t) for i, (sp, t) in enumerate((
        ("npc", L_NPC), ("character", f"«{L_BATTLE}»"), ("inner", L_INNER), ("narrator", f"{PLAYER} {L_DUSK_E}"))))
    add("narrator-voices", "Narrator box - the four voices", w, h, body, "Narrator", "The-Narrator", scene="dusk", seed=8,
        caption_extra="The voice tokens of the theme (voice-npc, voice-character, voice-inner, voice-narrator) on the accent "
                      "bar, the label and the text; the inner voice in another typeface.")
    hist = [history_line("21:02", "narrator", f"{PLAYER} {L_DUSK_E}"), history_line("21:05", "character", f"«{L_BATTLE}»"),
            history_line("21:09", "inner", L_RETURN), history_line("21:12", "inner", L_INNER),
            history_line("21:14", "character", f"«{L_GREET}»", sent="SAY"), history_line("21:20", "inner", RUIN)]
    stage_narrator("narrator-history", "Narrator box - history open", "The-Narrator", h=470, speaker="inner", s=L_INNER,
                   history=hist, caption_extra="A text with line breaks keeps them in the history, the later lines indented.")
    stage_narrator("narrator-reading", "Narrator - a long private reading, line by line", "The-Narrator / Literary-Forms",
                   h=330, scene="warm", seed=13, speaker="npc", s=INN_RHYME, reveal=3, remaining=0.85,
                   caption_extra="Three of five lines shown so far: each next line comes after the time to read the one before.")
    stage_narrator("narrator-reading-scroll", "Narrator - a reading longer than twelve lines", "The-Narrator / Literary-Forms",
                   h=400, scene="night", seed=14, speaker="inner", s=ROAD_SONG, scroll="end", remaining=0.3,
                   caption_extra="At most twelve lines: the rest scrolls with the mouse wheel, and the box follows the line "
                                 "just revealed.")
    stage_narrator("narrator-reading-it", "Narrator - a long private reading (Italian)", "Languages / Literary-Forms",
                   h=330, seed=15, lang="it", speaker="inner", s=RUIN_IT, remaining=0.6)
    # ADR 0060: the Bard's box (a song the character remembers), its Share bar, a share under way; both themes, both languages
    stage_narrator("narrator-bard", "Narrator - the Bard's box", "Literary-Forms / The-Narrator", h=330, scene="dusk",
                   seed=21, speaker="bard", s=BARD_SONG, reveal=3, share={"channel": "SAY", "progress": None},
                   caption_extra="A song in the Bard's colour (voice-bard), the note before the label, one verse at a time; "
                                 "Share sings it in chat, only on a click.")
    stage_narrator("narrator-bard-aurora", "Narrator - the Bard's box (Aurora)", "Literary-Forms / Interface-Tour", h=330,
                   scene="neutral", seed=22, speaker="bard", s=BARD_SONG, share={"channel": "EMOTE", "progress": None},
                   theme="aurora")
    stage_narrator("narrator-bard-sharing", "Narrator - the Bard sharing a song", "Literary-Forms / Chat-Gateway", h=330,
                   scene="warm", seed=23, speaker="bard", s=BARD_SONG, share={"channel": "SAY", "progress": (2, 5)},
                   caption_extra="The emote and the first verse are in chat; on /say in the open world each next verse needs "
                                 "a click, Stop ends the share.")
    stage_narrator("narrator-bard-it", "Narrator - the Bard's box (Italian)", "Languages / Literary-Forms", h=330,
                   seed=24, lang="it", speaker="bard", s=BARD_SONG_IT, share={"channel": "SAY", "progress": None})
    stage_narrator("narrator-bard-it-aurora", "Narrator - the Bard sharing (Italian, Aurora)", "Languages / Literary-Forms",
                   h=330, scene="neutral", seed=25, lang="it", speaker="bard", s=BARD_SONG_IT, theme="aurora",
                   share={"channel": "EMOTE", "progress": (3, 5)})
    stage_narrator("narrator-large-font", "Narrator box - text size 20", "The-Narrator / Settings", h=330, seed=16,
                   speaker="narrator", s=f"{PLAYER} {L_DUSK_E}", font=20,
                   caption_extra="The header grows with the label of a larger text size: max(28, label + 12) units.")
    w, h = 640, 470
    notices = (L("en", "rel_level_up_1", "Bram Ashcombe", "Acquaintance", "Friend"), L("en", "rel_letter_notice", "Sister Odile"),
               L("en", "nemesis_song_notice", "The Shadow of Old Greyjaw", NEMESIS_SONG.split(":")[0]))
    body = "".join(narrator((w - 440) // 2, 70 + i * 120, speaker="narrator", s=t, remaining=0.9 - i * 0.25)
                   for i, t in enumerate(notices))
    add("narrator-notices", "Narrator - private notices", w, h, body, "Narrator", "The-Narrator / Relationships",
        scene="dusk", seed=17, caption_extra="A level reached, a letter waiting, a song in the songbook: private, never in "
                                             "chat. Shown one at a time in the game; the names are invented.")
    w, h = 760, 420
    body = (narrator(160, 150, speaker="inner", s=L_INNER, paused=True)
            + chat_lines([PREFIX + L("en", "paused_on")], left=10, bottom=10, width=430, height=60)
            + speak_button(paused=True, left=640, top=90)
            + note("The speak button at 50 %, its badge at full opacity", left=560, top=180))
    add("narrator-paused", "Narrator box - paused", w, h, body, "Narrator", "The-Narrator", scene="dusk", seed=9)
    w, h = 1366, 768
    body = (placeholder("client chat frame", left=10, bottom=110, width=430, height=180)
            + placeholder("client action bars", left=(w - 1024) // 2, bottom=0, width=1024, height=88)
            + placeholder("client unit frames", left=10, top=10, width=260, height=90)
            + placeholder("client minimap", right=10, top=10, width=150, height=160)
            + narrator((w - 440) // 2, 240, speaker="narrator", s=f"{PLAYER} {L_DUSK_E}")
            + speak_button(left=w // 2 + 236, top=h - 240 - 36))
    add("narrator-in-context", "Narrator box - default position (1366 x 768)", w, h, body, "Narrator", "Home / The-Narrator",
        scene="dusk", seed=10, scale=1, caption_extra="Dashed boxes are neutral placeholders for the client's own UI.")


def build_proposal():
    stage_narrator("proposal", "Chat proposal - waiting for confirmation", "Chat-Gateway", h=320, speaker="character",
                   s=f"«{L_GREET}»", proposal="SAY", hover_btn="send", left_s=18)
    stage_narrator("proposal-held", "Chat proposal - a private line waits in the history", "Chat-Gateway", h=320,
                   speaker="character", s=f"«{L_GREET}»", proposal="SAY", left_s=12, held=1, seed=12)
    stage_narrator("proposal-editor", "Chat proposal - editor open", "Chat-Gateway", h=340, speaker="character",
                   s=f"«{L_GREET}»", proposal="SAY", editor="Good evening, friend, if there are still good ones left.")
    stage_narrator("proposal-sent", "Chat proposal - sent to /s", "Chat-Gateway", h=300, speaker="character",
                   s="«Good evening, friend, if there are still good ones left.»", sent="SAY")
    stage_narrator("proposal-emote", "Chat proposal - narrator emote for /e", "Chat-Gateway", h=320, speaker="narrator",
                   s=f"{PLAYER} {L_DUSK_E}", proposal="EMOTE", seed=11)
    stage_narrator("narrator-it", "Narrator box - Italian", "Languages / The-Narrator", h=320, lang="it", speaker="character",
                   s=f"«{IT_GREET}»", proposal="SAY")
    stage_narrator("narrator-inner-it", "Narrator box - Italian inner voice", "Languages", lang="it", speaker="inner",
                   s=IT_INNER, seed=4)


def speak_tip(lang, pending=None, hint="button_hint_send"):
    """SpeakButton:TooltipLines: the name, the line or the mode, the channel, what the click does."""
    lines = [M.SUBTITLE.split("  ")[0]]
    if pending:
        lines += [pending, L(lang, "button_channel", L(lang, "channel_auto"))]
    else:
        lines.append(L(lang, "button_idle_private"))
        hint = "button_hint_private"
    lines.append(L(lang, hint))
    return "\n".join(lines)


def build_speak_button(theme="nebula", name="speak-button"):
    w, h = 900, 320
    cap = lambda s, x: text(s, "BodyMedium", None, left=x, top=20, extra=";color:#fff;text-shadow:1px 1px 0 #000")  # noqa: E731
    tip = lambda s, x: f'<div data-theme="{theme}">' + tooltip(s, left=x, top=60) + "</div>"  # noqa: E731
    body = (cap(L("en", "chatmode_PRIVATE_short"), 40) + speak_button(left=120, top=250, theme=theme)
            + tip(speak_tip("en"), 20)
            + cap(L("en", "chatmode_CONFIRM_TO_SEND_short"), 330) + speak_button(waiting=True, left=420, top=250, theme=theme)
            + tip(speak_tip("en", L_GREET), 320)
            + cap("/au button editor", 640) + speak_button(waiting=True, hover=True, left=720, top=250, theme=theme)
            + tip(speak_tip("en", L_GREET, "button_hint_editor"), 620))
    add(name, "Speak button - private mode, proposal waiting, editor option", w, h, body,
        "Speak button" if theme == "nebula" else "Aurora theme", "Chat-Gateway / Commands", scene="neutral", seed=12,
        theme=theme, caption_extra="The addon's own tooltip (inverted: a text-1 surface, bg text); the quill is an original icon.")


WIZ_NAMES = ["Welcome and language", "Experience", "Intensity", "Style", "Modules", "Total RP 3", "Chat and test",
             "Keys, button and settings"]


def build_wizard():
    w, h = 680, 680
    for step in range(1, 9):
        trp3 = step == 6
        add(f"wizard-{step}", f"First-run guide - step {step}: {WIZ_NAMES[step - 1]}", w, h,
            wizard(step, trp3=trp3, left=80, top=60, trp3_others="needs" if trp3 else ""), "Wizard", "First-Run-Wizard",
            scene="neutral", seed=20 + step,
            caption_extra="Shown only when Total RP 3 is installed: 8 steps, otherwise 7." if trp3 else "")
    for step in (1, 7, 8):
        add(f"wizard-{step}-it", f"First-run guide - step {step}: {WIZ_NAMES[step - 1]} (Italian)", w, h,
            wizard(step, lang="it", left=80, top=60), "Wizard", "First-Run-Wizard / Languages", scene="neutral",
            seed=30 + step)
    W, H = 1366, 768
    gl, gt = (W - 520) // 2, 40
    body = (wizard(7, left=gl, top=gt)
            + narrator((W - 440) // 2, 30, speaker="narrator", s=f"{PLAYER} {L_DUSK_E}")
            + note("The narrator box steps aside, below the guide, and is above every window while it shows the test line",
                   left=gl + 520 + 14, top=gt + 330))
    add("wizard-test-line", "Guide - 'Try the narrator' at 1366 x 768", W, H, body, "Wizard", "First-Run-Wizard",
        scene="dusk", seed=37, scale=1)


def settings_page(name, title, target, seed, view=None, scroll=0, theme="nebula", lang="en", caption_extra="",
                  group="Settings", **kw):
    html_, h = settings(20, 20, lang=lang, theme=theme, view=view, scroll=scroll, **kw)
    add(name, title, 900, h + 40, html_, group, target, scene="neutral", seed=seed, scale=1 if not view else 1.25,
        theme=theme, caption_extra=caption_extra)


def build_settings():
    settings_page("settings", "Settings - the eight sections (unrolled)", "Settings", 40,
                  caption_extra="The sections scroll inside the client's Settings window (a plain stand-in): shown unrolled.")
    settings_page("settings-reload", "Settings - language changed, reload needed (unrolled)", "Settings / Languages", 41,
                  reload_needed=True)
    settings_page("settings-top", "Settings - the top of the scrolling canvas", "Settings", 42, view=600)
    import components
    settings(0, 0)   # fills components.SECTION_TOP
    settings_page("settings-info", "Settings - the Info section (UI-7)", "Settings / About", 44, view=600,
                  scroll=components.SECTION_TOP["info"] - 4,
                  caption_extra="The NEBULA community logo in its dark art (Nebula); the light art shows in Aurora.")


def build_wheel():
    """The emote wheel (ADR 0059): held on its key, a slice lit, the cancel zone, twelve slices, Aurora, its Settings."""
    import components
    w, h = 900, 560
    cases = [
        ("emote-wheel", "Emote wheel - held, the cursor on Dance (eight slices)", "nebula", 8, 2, (36, 48), "en", 51),
        ("emote-wheel-cancel", "Emote wheel - the cursor in the cancel zone", "nebula", 8, None, (8, -6), "en", 52),
        ("emote-wheel-12", "Emote wheel - twelve slices, the cursor on Kiss", "nebula", 12, 10, (-72, 12), "en", 53),
        ("emote-wheel-it", "Emote wheel - held, the cursor on Dance (Italian)", "nebula", 8, 2, (36, 48), "it", 54),
        ("emote-wheel-aurora", "Emote wheel - held, the cursor on Dance (Aurora)", "aurora", 8, 2, (36, 48), "en", 55),
        ("emote-wheel-preset", "Emote wheel - a preset of the player's, 'Tavern', the cursor on Cheer", "nebula", 8, 3,
         (50, -8), "en", 57),
    ]
    TAVERN = ["WAVE", "BOW", "CHEER", "LAUGH", "DANCE", "KISS", "THANK", "MOO"]
    for name, title, theme, n, lit, cursor, lang, seed in cases:
        r = max(140, 16 * n)
        add(name, title, w, h, components.emote_wheel(w // 2, 40 + r, lang=lang, theme=theme, slices=n, lit=lit,
                                                      cursor=cursor,
                                                      emotes=TAVERN if name == "emote-wheel-preset" else None,
                                                      preset="Tavern" if name == "emote-wheel-preset" else None), "Emote wheel" if theme == "nebula" else "Aurora theme",
            "Emote-Wheel", scene="dusk", seed=seed, theme=theme,
            caption_extra="Released on a slice, it plays that emote; released in the centre, nothing. The cursor arrow is "
                          "the game's; the wheel never takes the mouse.")
    settings(0, 0)   # fills components.SECTION_TOP
    settings_page("settings-wheel", "Settings - the Emote wheel section", "Settings / Emote-Wheel", 56, view=600,
                  scroll=components.SECTION_TOP["wheel"] - 4)


LETTER = L("en", "rel_letter_questgiver_2", "Sister Odile")


def act(*keys):
    """Row actions: (label, kind) with the words of the code (act_*); an action that asks first has the danger style."""
    danger = {"act_delete", "act_forget", "act_clear"}
    return [(L("en", k), "danger" if k in danger else "secondary") for k in keys]


KD = ("act_keep", "act_delete")
BACK = (L("en", "arc_back"), "", act("act_go"))   # the first row of a story or a piece: back to the list
SAMPLE_MEMORIES = [
    (LETTER, "2026-11-01 19:02", act(*KD)),
    (L("en", "rel_mem_level_up", "Bram Ashcombe"), "2026-10-31 21:40", act(*KD)),
    (L("en", "rel_mem_pet_bond", "Ember", L("en", "rel_pet_stage_trusted")), "2026-10-31 20:15", act(*KD)),
    (L("en", "rel_mem_grief_npc", "Old Fenwick") + " (Darkshire)", "2026-10-30 23:02", act(*KD)),
    (M.hexed("accent-text", "[P]") + " " + L("en", "rel_mem_title", "Friend of Darkshire"), "2026-10-30 22:50", act(*KD)),
    ("Return: Duskwood", "2026-10-30 22:05", act(*KD)),
    ("Death: Duskwood", "2026-10-28 21:52", act(*KD)),
    ("A chat: Darkshire", "2026-10-27 20:13", act(*KD)),
    ("Level reached 24", "2026-10-26 19:40", act(*KD)),
    ("A bond changes: Westfall", "2026-10-24 21:18", act(*KD)),
    ("Flight: Lakeshire", "2026-10-22 18:57", act(*KD)),
    ("First visit: Duskwood", "2026-10-21 20:30", act(*KD)),
]


def themed(name, theme):
    return name + ("" if theme == "nebula" else "-" + theme)


def build_journal(theme="nebula", only=None):
    w, h = 840, 640
    J = lambda tab, rows, **k: journal(40, 56, tab, rows, theme=theme, **k)  # noqa: E731

    def j(name, title, body, target, seed, **kw):
        if only is None or name in only:
            add(themed(name, theme), title, w, h, body, "Journal" if theme == "nebula" else "Aurora theme", target, seed=seed,
                theme=theme, **kw)
    j("journal-memories", "Journal - Memories", J("memories", SAMPLE_MEMORIES), "Memory-and-Journal", 50,
      caption_extra="Sample memories (invented names), formatted with the addon's own texts.")
    if only is not None:
        return
    places = [("Duskwood - 4 visits - ended badly", "2026-10-30 22:05", act("act_forget")),
              ("Darkshire - 3 visits", "2026-10-27 20:13", act("act_forget")),
              ("Lakeshire - 2 visits", "2026-10-22 18:57", act("act_forget")),
              ("Stormwind City - 9 visits", "2026-10-18 22:31", act("act_forget")),
              ("Westfall - 5 visits", "2026-10-14 21:44", act("act_forget")),
              ("Goldshire - 6 visits", "2026-10-09 19:12", act("act_forget"))]
    j("journal-places", "Journal - Places", J("places", places), "Memory-and-Journal", 51)
    flags = [("met_the_hermit", "2026-10-21 19:02", act("act_clear")), ("swore_by_the_lake", "2026-10-22 19:10", act("act_clear")),
             ("lost_the_old_blade", "2026-10-28 21:52", act("act_clear"))]
    j("journal-flags", "Journal - Flags", J("flags", flags), "Memory-and-Journal", 52)
    session = [("Return: Duskwood", "2026-10-31 20:02", []), ("Return: Duskwood", "2026-10-31 20:09", []),
               ("A chat: Darkshire", "2026-10-31 20:18", []), ("Flight: Darkshire", "2026-10-31 20:31", [])]
    j("journal-session", "Journal - Session", J("session", session), "Memory-and-Journal", 53)
    H = lambda s: M.hexed("accent-text", s)  # noqa: E731
    stories = [(H(L("en", "arc_hdr_active", 1, 2)), "", []),
               ("The Place of the Fall: " + L("en", "arc_state_DISCOVERED"), "", act("act_open", "act_skip")),
               (H(L("en", "arc_hdr_many", "Nemeses", 2, 3)), "", []),
               (L("en", "arc_row", "The Shadow of Old Greyjaw", "the long shadow"), "", act("act_open", "act_skip")),
               (L("en", "arc_row", "The Shadow of the Ashen Stalker", "the mark"), "", act("act_open", "act_skip")),
               (H(L("en", "arc_hdr_available")), "", []), ("The Path Found Again", "", act("act_start", "act_skip")),
               (H(L("en", "arc_hdr_resolved")), "", []), ("A Familiar Face", "", act("act_open"))]
    j("journal-stories", "Journal - Stories, with the nemeses", J("stories", stories, plain=True), "Story-Arcs", 54,
      caption_extra="Read in order: no header, no sorting. Story names are examples.")
    nemesis = [BACK, (H("The Shadow of Old Greyjaw"), "", []),
               ("Some foes are not forgotten once the fight is over. One of them cut your road short,", "", []),
               ("and its shadow now falls across the miles ahead: it grows each time it brings you down.", "", []),
               (M.hexed("text-3", "the mark  2026-10-24 21:10"), "", []),
               (M.hexed("text-3", "the long shadow  2026-10-29 22:31"), "", []),
               ("It has brought you down twice. The road keeps leading you back its way.", "", []),
               ("", "", act("act_pause"))]
    j("journal-nemesis", "Journal - a nemesis story", J("stories", nemesis, plain=True), "Story-Arcs", 64,
      caption_extra="Old Greyjaw is an invented foe.")
    title = lambda t: t.split("\n")[0].rstrip(": ")  # noqa: E731
    pieces = [(H("*") + " " + title(NEMESIS_SONG), "2026-11-01 21:12", act("act_open", "act_forget")),
              (title(LAMENT_PET), "2026-10-31 20:44", act("act_open", "act_forget")),
              (title(INN_RHYME), "2026-10-30 22:20", act("act_open", "act_forget")),
              (title(ROAD_SONG), "2026-10-29 18:03", act("act_open", "act_forget")),
              (M.hexed("text-3", title(DWARF_SONG)), "2026-10-27 23:40", act("act_open", "act_forget")),
              (title(RUIN), "2026-10-21 20:30", act("act_open", "act_forget"))]
    j("journal-songbook", "Journal - Songbook", J("songbook", pieces), "Literary-Forms / Memory-and-Journal", 65)
    verses = [("   " + v if v else " ", "", []) for v in NEMESIS_SONG.split("\n")]
    piece = [BACK, (H(title(NEMESIS_SONG)), "", [])] + verses + [
        (L("en", "song_state_heard"), "", act("act_learn")), (L("en", "song_state_favourite"), "", act("act_unfavourite"))]
    j("journal-songbook-piece", "Journal - a piece of the songbook", J("songbook", piece, plain=True), "Literary-Forms", 66)
    j("journal-letter", "Journal - a letter and its tooltip", J("memories", SAMPLE_MEMORIES, tip=(0, LETTER)),
      "Relationships / Memory-and-Journal", 67,
      caption_extra="A letter from an NPC you are close to waits in the journal: never game mail, never chat.")
    detail = [BACK, (H("The Place of the Fall"), "", []),
              ("A fall leaves a mark on the place where it happened. A short story about going back.", "", []),
              (M.hexed("text-3", "discovered  2026-10-28 21:52"), "", []),
              (H("Now that you are here again: how do you stand in this place?"), "", []),
              ("A moment of silence", "", act("act_pick")), ("Put in order what I carry", "", act("act_pick")),
              ("Go on without looking back", "", act("act_pick"))]
    j("journal-story-detail", "Journal - a story", J("stories", detail, plain=True), "Story-Arcs", 55,
      caption_extra="The story and its choices are examples of the arcs data.")
    rel = [("Torvan  friend  " + M.hexed("text-3", "Friend (34)"), "2026-10-30 21:10", act("act_open")),
           ("Bram Ashcombe  acquaintance  " + M.hexed("text-3", "Acquaintance (18)"), "2026-10-30 20:44", act("act_open")),
           ("Mirelle  respected rival  " + M.hexed("text-3", "Neutral (6)"), "2026-10-29 22:02", act("act_open")),
           ("Captain Harlow  acquaintance  " + M.hexed("text-3", "Neutral (11)"), "2026-10-27 19:30", act("act_open"))]
    j("journal-relationships", "Journal - Relationships tab", J("relations", rel), "Relationships", 56)
    people = [(L("en", "rel_id_guid", "Torvan"), "", act("act_add", "act_dismiss")),
              ("Kesh", "", act("act_add", "act_dismiss")), ("Anwen", "", act("act_add", "act_dismiss")),
              ("Dorrik", "", act("act_add", "act_dismiss"))]
    j("journal-people", "Journal - People met tab", J("people", people), "Relationships", 57)
    j("journal-empty", "Journal - empty state", J("memories", [], stats=(0, 0, 0, 0)), "Memory-and-Journal", 58)
    j("journal-reset-armed", "Journal - 'Forget everything' asks first", J("memories", SAMPLE_MEMORIES[:6], dialog_=(
        L("en", "mem_reset_dlg_title"), L("en", "mem_reset_dlg_text"), L("en", "mem_reset"))), "Memory-and-Journal", 59,
      caption_extra="W.Dialog over the window: Esc or Cancel keeps everything.")
    j("journal-delete-armed", "Journal - deleting a memory asks first", J("memories", SAMPLE_MEMORIES, dialog_=(
        L("en", "mem_confirm_delete"), L("en", "dlg_undone"), L("en", "act_delete"))), "Memory-and-Journal", 61)
    j("journal-memory-off", "Journal - memory off", J("memories", SAMPLE_MEMORIES[:8], lock="mem_state_off", reset_enabled=False),
      "Memory-and-Journal / Troubleshooting", 62)
    long_story = (M.hexed("accent-text", "[P]") + " Story: The Place of the Fall, where the road bends towards the lake and "
                  "the old watchtower stands")
    j("journal-row-tooltip", "Journal - a long row and its tooltip",
      J("memories", [(long_story, "2026-10-30 22:41", act(*KD))] + SAMPLE_MEMORIES[1:],
        tip=(0, long_story), toast_=L("en", "mem_toast_deleted")), "Memory-and-Journal", 63,
      caption_extra="A row cut at its column shows the whole text in the tooltip; a result is said by a toast.")
    export = (L("en", "mem_export_title", PLAYER, "2026-10-31 21:20") + "\n\n[P] Story: The Place of the Fall - 2026-10-30 22:41\n"
              "Return: Duskwood - 2026-10-30 22:05\nDeath: Duskwood - 2026-10-28 21:52\nA chat: Darkshire - 2026-10-27 20:13\n"
              "Level reached 24 - 2026-10-26 19:40\n\nPlaces\nDuskwood - 4 visits - ended badly\nDarkshire - 3 visits\n")
    add(themed("journal-export", theme), "Journal - export window", 680, 540, export_window(40, 56, export, theme=theme),
        "Journal", "Memory-and-Journal", seed=60, theme=theme)


REL_ROWS = [("Torvan", "player", "friend", "Friend (34)", "2026-10-30", 27, "ok"),
            ("Bram Ashcombe", "npc", "acquaintance", "Acquaintance (18)", "2026-10-30", 6, "text-1"),
            ("Mirelle", "player", "respected rival", "Neutral (6)", "2026-10-29", 9, "text-2"),
            ("Captain Harlow", "npc", "acquaintance", "Neutral (11)", "2026-10-27", 4, "text-2"),
            ("Sister Odile", "npc", "friend", "Friend (41)", "2026-10-24", 11, "ok"),
            ("Kesh", "player", "comrade in arms", "Close friend (58)", "2026-10-22", 31, "ok"),
            ("Old Fenwick", "npc", "indifferent", "Neutral (0)", "2026-10-19", 2, "text-2"),
            ("Warden Kessick", "npc", "enemy", "Hated (-82)", "2026-10-18", 5, "err")]
R_ = lambda key, *a: L("en", key, *a)  # noqa: E731
PLAYER_DETAIL = {
    "name": "Torvan", "summary": R_("rel_kind_player") + " · friend · Friend (34)", "axes": [62, 40, 25, 45, 0, 20],
    "label_btn": R_("rel_label_set", "friend"), "feeling1": R_("rel_feeling_btn", "trust"),
    "feeling2": R_("rel_feeling_btn2", "gratitude"), "note": "Owes me a drink since the Westfall road.", "tags": "westfall, archer",
    "traits": ["Role: unknown", "Temperament: Cheerful", "Morality: unknown", "Goals: Freedom", "Way of speaking: Plain (automatic)"],
    "seen_line": "First recorded: 2026-09-14. Last seen: 2026-10-30. Fought together 12, group 9, trade 3.",
    "seen_facts": "2026-10-30  fought together  (Duskwood)\n2026-10-30  group  (Duskwood)\n2026-10-27  trade  (Darkshire)",
}
NPC_DETAIL = dict(PLAYER_DETAIL, name="Bram Ashcombe", summary=R_("rel_kind_npc") + " · friend · Friend (41)",
                  axes=[72, 45, 30, 50, 0, 20], label_btn=R_("rel_label_auto", "friend"),
                  feeling1=R_("rel_feeling_btn", R_("rel_feeling_none")), feeling2=R_("rel_feeling_btn2", R_("rel_feeling_none")),
                  note="", tags="",
                  traits=["Role: Innkeeper (automatic)", "Temperament: Cheerful", "Morality: unknown", "Goals: Profit",
                          "Way of speaking: Warm"],
                  knows=(R_("rel_level_line", 7, 9, "Friend", "Close friend", 44) + "\n"
                         + R_("rel_pace_line", R_("rel_pace_quick"), R_("rel_pace_slow"), " (innkeeper, Cheerful)"),
                         R_("rel_nick_line", "Good Turn") + " " + R_("rel_favour_line", R_("rel_favour_what_rest"), 2)
                         + "\n" + R_("rel_town_line", "Darkshire", R_("rel_word_good"), 64) + " "
                         + R_("rel_title_held", "Friend of Darkshire")))
FOE_DETAIL = dict(NPC_DETAIL, name="Warden Kessick", summary=R_("rel_kind_npc") + " · enemy · Hated (-82)",
                  axes=[48, -90, -70, -85, 30, -60], label_btn=R_("rel_label_auto", "enemy"),
                  traits=["Role: Guard (automatic)", "Temperament: Stern", "Morality: unknown", "Goals: Order",
                          "Way of speaking: Curt"],
                  knows=(R_("rel_level_line", 1, 9, "Hated", "Hostile", 30) + "\n" + R_("rel_oath_mark", 60),
                         R_("rel_foe_line_attacked", 12, 2) + " " + R_("rel_grudge_eternal") + "\n"
                         + R_("rel_town_line", "Lakeshire", R_("rel_word_bad"), -35) + " "
                         + R_("rel_title_withheld", "Friend of Lakeshire")))


def build_relations(theme="nebula", only=None):
    w, h = 800, 780

    def r(name, title, body, seed, caption_extra=""):
        if only is None or name in only:
            add(themed(name, theme), title, w, h, body, "Relationships" if theme == "nebula" else "Aurora theme",
                "Relationships", seed=seed, theme=theme, caption_extra=caption_extra)
    r("relations-list", "Relationships - list", relations("list", rows=REL_ROWS, hover=2, theme=theme, top=56), 70,
      "A sortable table (the last meeting first); the hovered row is highlighted. Invented names.")
    if only is not None:
        return
    cands = [(R_("rel_id_guid", "Torvan"), ""), (R_("rel_id_renamed", "Mirelle", "Mirellia"), ""),
             ("Kesh", R_("rel_src_group")), ("Anwen", R_("rel_src_trp3")), ("Dorrik", R_("rel_src_trade"))]
    r("relations-people", "Relationships - People met", relations("people", cands=cands, theme=theme, top=56), 71,
      "Questions about identity come first: + says it is the same person, x changes nothing.")
    r("relations-empty", "Relationships - empty state", relations("list", rows=[], theme=theme, top=56, people_count=0), 72)
    r("relations-options", "Relationships - options", relations("options", theme=theme, top=56), 76)
    r("relations-detail-player", "Relationships - a player's detail",
      relations("detail", detail=PLAYER_DETAIL, theme=theme, top=56), 73, "680 units tall: it fits a 768-unit screen at UI scale 1.")
    r("relations-detail-npc", "Relationships - an NPC's detail", relations("detail", detail=NPC_DETAIL, theme=theme, top=56), 74,
      "What the addon knows: level, temperament, nickname, favor, town and title.")
    r("relations-detail-foe", "Relationships - a hated NPC", relations("detail", detail=FOE_DETAIL, theme=theme, top=56), 77,
      "A grudge for ever, the mark of a broken oath, a title withheld. Narration only.")
    shared = dict(PLAYER_DETAIL, scope=R_("rel_scope_btn_shared"))
    r("relations-detail-shared", "Relationships - player detail with the shared list on",
      relations("detail", detail=shared, theme=theme, top=56), 75)


def privacy_scroll():
    import components
    settings(0, 0)   # fills components.SECTION_TOP
    return max(0, components.SECTION_TOP["privacy"] - 4)


def build_consent():
    w, h = 800, 780
    body = relations("options", armed="sharePlayers", top=56) + client_popup(
        150, 470, 500, 200, L("en", "consent_share_text"), L("en", "consent_turn_on"), L("en", "consent_cancel"))
    add("consent-shared-list", "Consent - share relationships with the account", w, h, body, "Consent",
        "Relationships / Privacy-and-Data", seed=80, caption_extra="The client's own dialog (a plain stand-in) asks first.")
    body = relations("options", armed="proximity", top=56) + client_popup(
        150, 470, 500, 180, L("en", "consent_proximity_text"), L("en", "consent_turn_on"), L("en", "consent_cancel"))
    add("consent-proximity", "Consent - recognise nearby people", w, h, body, "Consent", "Relationships / Privacy-and-Data", seed=81)
    body = wizard(7, left=30, top=60, auto_state="reading") + client_popup(
        520, 150, 340, 260, L("en", "consent_auto_text"), L("en", "consent_turn_on"), L("en", "consent_cancel"), True)
    add("consent-auto", "Consent - automatic sending", 900, 680, body, "Consent", "Chat-Gateway / Privacy-and-Data", seed=82,
        caption_extra="The Turn on button is disabled for the first two seconds.")
    html_, hh = settings(20, 20, view=600, scroll=privacy_scroll(), rpname=False,
                         others_state=L("en", "consent_on_needs", L("en", "consent_needs_name_short")),
                         over=client_popup(180, 300, 440, 220, L("en", "consent_trp3_text"), L("en", "consent_turn_on"),
                                           L("en", "consent_cancel")))
    add("consent-trp3-others", "Consent - read other players' Total RP 3", 900, hh + 40, html_, "Consent",
        "Character-Soul-and-Total-RP-3 / Privacy-and-Data", seed=83, scale=1.25,
        caption_extra="Behind the dialog, the settings row after the consent was given with 'Name from Total RP 3' off.")
    body = client_popup(140, 50, 360, 130, L("en", "packs_reload_needed", "Italiano", "English"), L("en", "packs_reload_btn"),
                        L("en", "packs_later"))
    add("consent-reload", "Language change - reload dialog", 640, 300, body, "Consent", "Languages", seed=84,
        caption_extra="The client's dialog (StaticPopup), drawn as a plain stand-in.")


PROFILE_ROWS = [("idealism", 64, "64", "explicit"), ("concreteness", 40, "40", "explicit"), ("optimism", 78, "78", "explicit"),
                ("altruism", 70, "70", "explicit"), ("stoicism", 50, None, None), ("ambition", 35, "35", "explicit"),
                ("spirituality", 50, None, None), ("patriotism", 50, None, None), ("curiosity", 85, "85", "explicit"),
                ("vengefulness", 50, None, None), ("irony", 30, "30", "trp3"), ("innerVoice", None, "trait_innerVoice_present", "explicit")]


def profile_rows(lang, rows, neutral=False):
    out = []
    for tid, v, shown, src in rows:
        if neutral:
            out.append((tid, None if v is None else 50, L(lang, "soul_none"), None))
        elif v is None:
            out.append((tid, None, L(lang, shown) if shown else L(lang, "soul_none"), src))
        else:
            out.append((tid, v, shown or L(lang, "soul_none"), src))
    return out


def build_profile(theme="nebula", only=None):
    def p(name, title, seed, neutral=False, **kw):
        if only is None or name in only:
            html_, h = profile(profile_rows("en", PROFILE_ROWS, neutral), set() if neutral else {"blood"}, theme=theme, **kw)
            add(themed(name, theme), title, 760, h + 90, html_, "Profile" if theme == "nebula" else "Aurora theme",
                "Character-Soul-and-Total-RP-3", seed=seed, theme=theme)
    p("profile", "Character soul - personality", 90, arch_help=L("en", "soul_arch_from", L("en", "soul_arch_traveler")))
    if only is not None:
        return
    p("profile-reset-armed", "Character soul - 'Neutral profile' asks first", 92, dialog_=True)
    p("profile-neutral", "Character soul - neutral profile", 91, neutral=True, archetype=L("en", "soul_arch_neutral"),
      culture=None, chosen=0, toast_=L("en", "soul_toast_reset"))


NPC_TITLE = "Innkeeper · Bram Ashcombe"   # the role comes from the NPC registry, the name is invented
ANSWERS = ["What news is going round?", "I am looking for a place to rest.", "Farewell."]   # lines of the NPC dialogue data


def build_dialogue(theme="nebula", only=None):
    w, h = 560, 300

    def d(name, label, body, seed):
        if only is None or name in only:
            add(themed(name, theme), label, w, h, body, "NPC dialogue" if theme == "nebula" else "Aurora theme",
                "NPC-Dialogues", scene="warm", seed=seed, theme=theme,
                caption_extra="The answers are lines of the NPC dialogue data; the innkeeper's name is invented.")
    d("dialogue-line", "NPC dialogue - a line and the answers",
      dialogue(90, 40, NPC_TITLE, line=L_NPC, choices=ANSWERS, hover=0, theme=theme), 101)
    if only is not None:
        return
    d("dialogue-offered", "NPC dialogue - offered", dialogue(90, 60, NPC_TITLE, kind="offered", theme=theme), 100)
    d("dialogue-last", "NPC dialogue - last line",
      dialogue(90, 60, NPC_TITLE, kind="last", line="You've come to the right place to stop walking. For a while, at least.",
               theme=theme), 102)
    d("dialogue-test", "NPC dialogue - /au talk test",
      dialogue(90, 40, NPC_TITLE + " · " + L("en", "npc_test_tag"), line=L_NPC, choices=ANSWERS, theme=theme), 103)


def build_chat():
    from chat_capture import run
    add("chat-help-window", "/au help - the groups, in a default chat window", 640, 400,
        chat_lines(run("help"), left=10, top=40, width=600, height=270)
        + '<div class="chatinput" style="left:10px;top:316px;width:600px">/au help</div>', "Chat output", "Commands", seed=111,
        caption_extra="The whole output fits in a default chat window. Options use \" / \", never a bare | (UI-05).")
    lines = run("help all")
    w = 900
    h = 40 + len(lines) * 19 + 40
    add("chat-help", "/au help all in the chat frame (full output)", w, h, chat_lines(lines, left=10, top=10, width=880, height=h - 50),
        "Chat output", "Commands", seed=110, scale=1.25, caption_extra="/au help prints only the groups; /au help <group> prints one group.")
    lines = run("debug")
    h = 40 + len(lines) * 19 + 200
    add("chat-debug", "/au debug in the chat frame", w, h, chat_lines(lines, left=10, top=10, width=880, height=h - 50),
        "Chat output", "Troubleshooting / Reporting-Bugs-and-Feedback", seed=112, scale=1.25,
        caption_extra="Captured from the addon with the simulated client of the tests: the client values are not those of a real client.")


def build_aurora():
    """The same windows in the light theme Aurora (Settings > Appearance > Theme)."""
    stage_narrator("narrator-voices-aurora", "Narrator box - narrator voice (Aurora)", "Settings", speaker="narrator",
                   s=f"{PLAYER} {L_DUSK_E}", theme="aurora", group="Aurora theme")
    stage_narrator("proposal-aurora", "Chat proposal (Aurora)", "Settings", h=320, speaker="character", s=f"«{L_GREET}»",
                   proposal="SAY", left_s=18, theme="aurora", group="Aurora theme")
    build_speak_button("aurora", "speak-button-aurora")
    build_journal("aurora", only={"journal-memories"})
    build_relations("aurora", only={"relations-list"})
    build_profile("aurora", only={"profile"})
    build_dialogue("aurora", only={"dialogue-line"})
    add("wizard-1-aurora", "First-run guide - step 1 (Aurora)", 680, 680, wizard(1, left=80, top=60, theme="aurora"),
        "Aurora theme", "First-Run-Wizard", scene="neutral", seed=21, theme="aurora")
    settings_page("settings-aurora", "Settings - the eight sections (Aurora, unrolled)", "Settings", 43, theme="aurora",
                  group="Aurora theme")


def write_index():
    groups = {}
    for name, title, group, target, kind in INDEX:
        groups.setdefault(group, []).append((name, title, target, kind))
    parts = []
    for group, items in groups.items():
        parts.append(f"<h2>{group}</h2><ul>")
        for name, title, target, kind in items:
            parts.append(f'<li><a href="{name}.html">{title}</a> - <a href="png/{name}.png">PNG</a> <small>for: {target}</small></li>')
        parts.append("</ul>")
    proposed = sorted(f[:-5] for f in os.listdir(MOCKUPS) if f.startswith("proposed-") and f.endswith(".html"))
    parts.append("<h2>Proposals of the UI review (2026-10, history)</h2><ul>")
    parts += [f'<li><a href="{n}.html">{n}</a> - <a href="png/{n}.png">PNG</a> <em>(a proposal of the review, drawn in the '
              f'old look; never built as drawn)</em></li>' for n in proposed]
    parts.append("</ul>")
    doc = f"""<!doctype html>
<html lang="en"><head><meta charset="utf-8"><title>Azeroth Unspoken - UI mockups</title>
<link rel="stylesheet" href="mockups.css">
<style>body{{max-width:900px;margin:24px auto;padding:0 16px;background:var(--bg);color:var(--text-1);font:15px/1.5 'AU Outfit',sans-serif}}
a{{color:var(--accent-text)}}h1{{font:700 22px 'AU Orbitron',sans-serif;text-transform:uppercase}}
h2{{color:var(--voice-narrator);border-bottom:1px solid var(--border)}}small,em{{color:var(--text-3)}}</style></head><body data-theme="nebula">
<h1>Azeroth Unspoken - UI mockups</h1>
<p>Illustrative mockups built from the addon code: the sizes and anchors of <code>AzerothUnspoken/UI/</code>, the tokens of
<code>UI/Theme.lua</code> (Nebula, the default, and Aurora), the widgets of <code>UI/Widgets.lua</code> and the texts of the
locale files. They are <strong>not in-game screenshots</strong>: nothing has been tested in the real client yet. No Blizzard
art, icon, font or screenshot is used. The design system and the comparison with the sister addon are in
<a href="../../specs/mockups/README.md">docs/specs/mockups</a>.</p>
{''.join(parts)}
</body></html>
"""
    with open(os.path.join(MOCKUPS, "index.html"), "w", encoding="utf-8", newline="\n") as f:
        f.write(doc)


def main():
    write_css(MOCKUPS)
    for build in (build_narrator, build_proposal, build_speak_button, build_wizard, build_settings, build_journal,
                  build_relations, build_consent, build_profile, build_dialogue, build_chat, build_wheel, build_aurora):
        build()
    write_index()
    print(f"{len(INDEX)} mockups written")
    return INDEX


if __name__ == "__main__":
    main()
