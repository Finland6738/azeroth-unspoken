"""Writes the HTML mockups of every window of Azeroth Unspoken into docs/design/mockups/.

    python -I -X utf8 docs/design/mockups/tools/build_mockups.py

The windows are drawn from the sizes, anchors, colours and English (and Italian) texts in AzerothUnspoken/UI/ and the
locale files; the sample data (names, memories, relationships) is invented. Every page says it is an illustrative
mockup, not an in-game screenshot. Then render.py turns them into PNG files with a headless browser.
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from mockkit import (PREFIX, VOICE_COLOR, btn, chat_lines, edit, fs, frame, page, placeholder, sel,  # noqa: E402
                     speak_button, tooltip, wow)
from components import (dialogue, export_window, history_line, journal, narrator, profile, relations,  # noqa: E402
                        settings, wizard)
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

INDEX = []   # (file, title, group, meant for)


def add(name, title, w, h, body, group, target, **kw):
    page(name, title, w, h, body, **kw)
    INDEX.append((name, title, group, target, kw.get("kind", "current")))


def stage_narrator(name, title, target, h=300, scene="dusk", seed=3, **nk):
    w = 640
    add(name, title, w, h + 30, narrator((w - 440) // 2, 70, **nk), "Narrator", target, scene=scene, seed=seed)


def build_narrator():
    stage_narrator("narrator-narrator", "Narrator frame - narrator voice", "The-Narrator",
                   speaker="narrator", text=f"{PLAYER} {L_DUSK_E}")
    stage_narrator("narrator-inner", "Narrator frame - inner voice", "The-Narrator",
                   speaker="inner", text=L_INNER, seed=4)
    stage_narrator("narrator-character", "Narrator frame - character voice", "The-Narrator",
                   speaker="character", text=f"«{L_BATTLE}»", scene="battle", seed=5)
    stage_narrator("narrator-npc", "Narrator frame - NPC voice", "The-Narrator",
                   speaker="npc", text=L_NPC, scene="warm", seed=6)
    # all four voices together: the colour is the only cue
    w, h = 640, 520
    body = "".join(narrator((w - 440) // 2, 40 + i * 112, speaker=s, text=t) for i, (s, t) in enumerate((
        ("npc", L_NPC), ("character", f"«{L_BATTLE}»"), ("inner", L_INNER), ("narrator", f"{PLAYER} {L_DUSK_E}"))))
    add("narrator-voices", "Narrator frame - the four voices", w, h, body, "Narrator", "The-Narrator", scene="dusk",
        seed=8, caption_extra="Only the small label colour tells the voices apart.")
    hist = [history_line("21:02", "narrator", f"{PLAYER} {L_DUSK_E}"),
            history_line("21:05", "character", f"«{L_BATTLE}»"),
            history_line("21:09", "inner", L_RETURN),
            history_line("21:12", "inner", L_INNER),
            history_line("21:14", "character", f"«{L_GREET}»", sent="SAY")]
    stage_narrator("narrator-history", "Narrator frame - history open", "The-Narrator", h=470,
                   speaker="inner", text=L_INNER, history=hist)
    # paused: the header shows ">" and the chat says so; the speak button dims
    w, h = 760, 420
    body = (narrator(160, 150, speaker="inner", text=L_INNER, paused=True)
            + chat_lines([PREFIX + "narrator paused. Press the key again (or /au pause) to resume."],
                         left=10, bottom=10, width=430, height=70)
            + speak_button(desat=True, opacity=0.5, left=620, top=90)
            + fs("speak button at 50%", "gfhs", left=590, top=134))
    add("narrator-paused", "Narrator frame - paused", w, h, body, "Narrator", "The-Narrator", scene="dusk", seed=9)
    # in context: the default position on a 1366 x 768 UIParent, with placeholders for the client UI
    w, h = 1366, 768
    body = (placeholder("client chat frame", left=10, bottom=110, width=430, height=180)
            + placeholder("client action bars", left=(w - 1024) // 2, bottom=0, width=1024, height=88)
            + placeholder("client unit frames", left=10, top=10, width=260, height=90)
            + placeholder("client minimap", right=10, top=10, width=150, height=160)
            + narrator((w - 440) // 2, 240, speaker="narrator", text=f"{PLAYER} {L_DUSK_E}")
            + speak_button(desat=True, left=w // 2 - 18, top=h // 2 + 180 - 18))
    add("narrator-in-context", "Narrator frame - default position (1366 x 768)", w, h, body, "Narrator",
        "Home / The-Narrator", scene="dusk", seed=10, scale=1,
        caption_extra="Dashed boxes are neutral placeholders for the client's own UI.")


def build_proposal():
    stage_narrator("proposal", "Chat proposal - waiting for confirmation", "Chat-Gateway", h=320,
                   speaker="character", text=f"«{L_GREET}»", proposal="SAY", hover_btn="send")
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
    w, h = 900, 300
    pending = "Good evening, if there are still good ones left."
    body = (fs("No proposal (desaturated)", "gfn", left=40, top=20)
            + speak_button(desat=True, left=120, top=230)
            + tooltip([("Azeroth Unspoken", None),
                       ("No proposal waiting. Click: the narrator proposes a line that fits the moment.", "cccccc"),
                       ("Left click: confirm and speak. Right-drag: move.", "808080")], left=20, top=60, width=250)
            + fs("Proposal waiting (glow)", "gfn", left=330, top=20)
            + speak_button(glow=True, left=420, top=230)
            + tooltip([("Azeroth Unspoken", None), (pending, "ffffff"), ("Channel: automatic", "b3e6b3"),
                       ("Left click: confirm and speak. Right-drag: move.", "808080")], left=320, top=60, width=250)
            + fs("Paused (50% opacity)", "gfn", left=640, top=20)
            + speak_button(desat=True, opacity=0.5, left=720, top=230)
            + fs("Icon drawn as an original stand-in: the addon uses a\nclient icon texture, which is not reproduced here.",
                 "gfhs", left=620, top=60))
    add("speak-button", "Speak button - idle, waiting, paused", w, h, body, "Speak button", "Chat-Gateway / Commands",
        scene="neutral", seed=12)


def build_wizard():
    w, h = 640, 440
    for step in range(1, 8):
        trp3 = step == 6
        title = f"First-run wizard - step {step}: " + ["Language", "Experience", "Intensity", "Style", "Modules", "Total RP 3", "Chat and test"][step - 1]
        add(f"wizard-{step}", title, w, h, wizard(step, trp3=trp3, left=80, top=50), "Wizard", "First-Run-Wizard",
            scene="neutral", seed=20 + step,
            caption_extra="Total RP 3 installed: 7 steps." if trp3 else "")
    for step in (1, 7):
        add(f"wizard-{step}-it", f"First-run wizard - step {step}: " + ("Language" if step == 1 else "Chat and test") + " (Italian)", w, h,
            wizard(step, lang="it", left=80, top=50), "Wizard", "First-Run-Wizard / Languages", scene="neutral",
            seed=30 + step)
    # "Try the narrator": the wizard (CENTER +40, DIALOG) covers the narrator box (BOTTOM +240, MEDIUM) at 1366 x 768
    W, H = 1366, 768
    body = (narrator((W - 440) // 2, 240, speaker="narrator", text=f"{PLAYER} {L_DUSK_E}")
            + wizard(7, left=(W - 480) // 2, top=(H - 330) // 2 - 40)
            + f'<div class="note" style="left:{(W + 480) // 2 + 10}px;top:{(H + 330) // 2 - 70}px">The test line appears '
              f'under the wizard</div>')
    add("wizard-test-overlap", "Wizard - 'Try the narrator' at 1366 x 768", W, H, body, "Wizard", "First-Run-Wizard",
        scene="dusk", seed=37, scale=1)


def build_settings():
    w, h = 720, 730
    add("settings", "Settings panel", w, h, settings(30, 30), "Settings", "Settings", scene="neutral", seed=40,
        caption_extra="Shown without the client's options window around it.")
    add("settings-reload", "Settings panel - language changed, reload needed", w, h, settings(30, 30, reload_needed=True),
        "Settings", "Settings / Languages", scene="neutral", seed=41)


SAMPLE_MEMORIES = [
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
    stories = [H("Stories under way (1 of 2)"), ("The Place of the Fall: waiting for your choice", ["...", "x"]),
               H("Stories that can begin"), ("The Path Found Again: you can begin it whenever you like", ["...", "x"]),
               H("Concluded stories"), ("A Familiar Face  |cff9d9d9d2026-10-12 20:31|r", ["..."]),
               ("|cff9d9d9dSuspend all stories|r", ["II"]), ("|cff9d9d9dSkip all stories|r", ["x"])]
    note = ("Stories are tellings of your character, not quests: no rewards, no effect on the game. You can suspend, skip "
            "or disable them any time.")
    add("journal-stories", "Journal - Stories", w, h, J("stories", stories, note=note), "Journal", "Story-Arcs",
        seed=54)
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
    people = [("Kesh  |cff9d9d9din your group|r", ["+", "x"]), ("Anwen  |cff9d9d9dhas a Total RP 3 profile|r", ["+", "x"]),
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
            ("Old Fenwick", "NPC", "indifferent", "Neutral (0)", "2026-10-19", "2")]

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
NPC_DETAIL = dict(PLAYER_DETAIL, kind="npc", name="Bram Ashcombe", label="acquaintance", disposition="Acquaintance (18)",
                  axes=[35, 15, 10, 12, 0, 0], label_btn="Automatic: acquaintance", f1="none", f2="none",
                  note="", tags="", traits=["Role: Innkeeper (automatic)", "Temperament: unknown", "Morality: unknown",
                                            "Goals: Profit", "Way of speaking: Warm"])


def build_relations():
    w, h = 800, 740
    add("relations-list", "Relationships - list", w, h, relations(40, 40, "list", rows=REL_ROWS, hover_row=2),
        "Relationships", "Relationships", seed=70,
        caption_extra="Plain rows that own their cells; the hovered row is highlighted.")
    add("relations-people", "Relationships - People met", w, h,
        relations(40, 40, "people", cands=[("Kesh", "in your group"), ("Anwen", "has a Total RP 3 profile"),
                                            ("Dorrik", "a trade")]), "Relationships", "Relationships", seed=71)
    add("relations-empty", "Relationships - empty state", w, h, relations(40, 40, "list", rows=[], candidates=0),
        "Relationships", "Relationships", seed=72)
    add("relations-options", "Relationships - options", w, h, relations(40, 40, "options"), "Relationships",
        "Relationships", seed=76)
    add("relations-detail-player", "Relationships - a player's detail", w, h,
        relations(40, 40, "detail", detail=PLAYER_DETAIL), "Relationships", "Relationships", seed=73,
        caption_extra="660 units tall: it fits a 768-unit screen at UI scale 1.")
    add("relations-detail-npc", "Relationships - an NPC's detail", w, h,
        relations(40, 40, "detail", detail=NPC_DETAIL), "Relationships", "Relationships", seed=74)
    shared = dict(PLAYER_DETAIL, scope="Choices: shared")
    add("relations-detail-shared", "Relationships - player detail with the shared list on", w, h,
        relations(40, 40, "detail", detail=shared), "Relationships", "Relationships", seed=75)


def build_consent():
    w, h = 800, 740
    # shared list: the first click arms the option, and the warning appears under the privacy note
    add("consent-shared-list", "Consent - share relationships with the account", w, h,
        relations(40, 40, "options", share_armed=True), "Consent", "Relationships / Privacy-and-Data", seed=80)
    # proximity: the option and its tooltip
    body = (relations(40, 40, "options", hover_option=5)
            + tooltip([("Nameplates and mouseover can let the narrator recognise a person from your list, and suggest people "
                        "with a Total RP 3 profile if you allowed reading them. For this session only: nothing is saved, no "
                        "one is added. Off by default.", "ffffff")], left=420, top=128, width=300))
    add("consent-proximity", "Consent - recognise nearby people", w, h, body, "Consent",
        "Relationships / Privacy-and-Data", seed=81)
    # automatic sending: warning in chat, then the wizard button asks for a second click
    W, H = 900, 640
    body = (wizard(7, left=210, top=30, auto_armed=True)
            + chat_lines([PREFIX + "WARNING: in automatic mode emotes (always) and /say (in instances) are sent by "
                          "themselves, in your character's name, without you doing anything. Everything else stays a "
                          "proposal to confirm. To turn it on, confirm within 10 seconds."],
                         left=10, bottom=10, width=520, height=150))
    add("consent-auto", "Consent - automatic sending", W, H, body, "Consent", "Chat-Gateway / Privacy-and-Data",
        seed=82)
    # reading other players' Total RP 3: settings row and its tooltip
    body = (settings(30, 30, tooltip_row=(2, 12))
            + tooltip([("With your consent the addon reads, from other players' public Total RP 3 profiles, only race, "
                        "class and psychological traits: never notes, history or texts. Off by default; 'Name from Total "
                        "RP 3' must be on too.", "ffffff")], left=380, top=330, width=290))
    add("consent-trp3-others", "Consent - read other players' Total RP 3", 720, 700, body, "Consent",
        "Character-Soul-and-Total-RP-3 / Privacy-and-Data", seed=83)
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
    add("profile-neutral", "Character soul - neutral profile", 760, 790,
        profile(40, 40, neutral, set(), archetype="Neutral",
                arch_help="No traits: the narrator does not pick the character for you."),
        "Profile", "Character-Soul-and-Total-RP-3", seed=91)


def build_dialogue():
    w, h = 560, 300
    add("dialogue-offered", "NPC dialogue - offered", w, h,
        dialogue(90, 60, "|cff9be37aInnkeeper · Bram Ashcombe|r", choices=["Listen (ambient dialogue)"]),
        "NPC dialogue", "NPC-Dialogues", scene="warm", seed=100)
    add("dialogue-line", "NPC dialogue - a line and the answers", w, h,
        dialogue(90, 40, "|cff9be37aInnkeeper · Bram Ashcombe|r", line=L_NPC,
                 choices=["What news is going round?", "I am looking for a place to rest.", "Farewell."], hover=0),
        "NPC dialogue", "NPC-Dialogues", scene="warm", seed=101)
    add("dialogue-last", "NPC dialogue - last line", w, h,
        dialogue(90, 60, "|cff9be37aInnkeeper · Bram Ashcombe|r",
                 line="You've come to the right place to stop walking. For a while, at least.", choices=["Close"]),
        "NPC dialogue", "NPC-Dialogues", scene="warm", seed=102)
    add("dialogue-test", "NPC dialogue - /au talk test", w, h,
        dialogue(90, 40, "|cff9be37aInnkeeper · Test innkeeper|r · test", line=L_NPC,
                 choices=["What news is going round?", "I am looking for a place to rest.", "Farewell."]),
        "NPC dialogue", "NPC-Dialogues", scene="warm", seed=103)


HELP = [("help", "this list"), ("on | off", "enable or disable automatic lines"),
        ("pause", "pause the narrator immediately (also with the bound key)"),
        ("debug [full|trace]", "diagnostics: client capabilities, recent events, errors"),
        ("prof [reset|copy]", "profiling of this session: timings, memory, Director counters (reset | copy)"),
        ("probe [reset|stop|copy]", "probe the client APIs the next features need and report which work (reset | stop | copy)"),
        ("language [it|en]", "phrase and interface language"), ("intensity <0-100>", "how often the narrator speaks up"),
        ("depth natural|literary|elevated", "how elevated the style is"),
        ("mode private|preview|confirm|auto", "what may reach chat (default: private; auto asks for confirmation)"),
        ("channel auto|say|emote|party|raid|guild|instance", "default chat channel"),
        ("speak", "confirm the waiting proposal (also from a macro or key)"),
        ("another", "swap the pending proposal for another line (sends nothing)"), ("cancel", "discard the proposal"),
        ("copy", "copy the proposal into the chat box (you send it with Enter)"),
        ("narrator [history|reset|clear]", "the narrator box"),
        ("soul [list|neutral|archetype <id>|trp3 on|off|<trait> <value>|avoid <topic>]", "character personality"),
        ("emotion [on|off|reset]", "the character's emotional state: show, switch on or off, reset"),
        ("journal [list|places|flag <name>|export|pin <n>|delete <n>|forget <place>|reset]", "character memory and journal"),
        ("stories [list|journal|choose <arc> <option>|start|suspend|resume|skip|disable|enable <arc|all>|max <1|2>|on|off|status]",
         "the character's personal stories"),
        ("relationships [list|people|add <name>|note <name> <text>|export|...]", "relationships with NPCs and players (short form: rel)"),
        ("place", "where you are: zone, map, tags, territory, instance (to check the place data)"),
        ("who [trp3 on|off|trait <trait> <value>]", "who is in front of you: role, personality, recent actions"),
        ("talk [test [style]|close|role <role>|offer on|off|status]", "ambient dialogue with the NPC in front of you"),
        ("greet | farewell | toast | muse | threat | battlecry | victory | pray | thanks | jest [target]",
         "propose a line for that moment (a name or target is optional)"),
        ("event <name>", "propose a line for an event (battle, zone, muse...)"), ("cast <spell>", "a line for a spell (handy in macros)"),
        ("test <event>", "preview a line in the local chat"), ("chance <event> <0-100>", "probability of an event"),
        ("cooldown <seconds>", "pause between automatic lines"), ("ignore <spell>", "never comment on a spell (again to undo)"),
        ("button", "show or hide the speak button"), ("packs", "list the phrase packs"),
        ("pack <id> on|off", "turn a phrase pack on or off"), ("validate [full|<pack>]", "check the phrase packs (errors and warnings)"),
        ("stats", "how many lines are available"), ("memory", "clear the anti-repetition memory"),
        ("options", "open the settings panel"), ("wizard", "redo the first-run guide")]


def build_chat():
    lines = [PREFIX + "commands (the command names are always in English, whatever the interface language):"]
    lines += [PREFIX + f"/au {u} - {d}" for u, d in HELP]
    w = 900
    h = 40 + len(lines) * 19 + 40
    add("chat-help", "/au help in the chat frame (full output)", w, h,
        chat_lines(lines, left=10, top=10, width=880, height=h - 50), "Chat output", "Commands", seed=110, scale=1.25,
        caption_extra="The default chat window shows only the last ~10 lines of this output.")
    # what the player actually sees: the last lines in a default-sized chat window
    # the middle of the output, where bare "|" separators become escapes: |n breaks the line, |r is swallowed (review UI-05)
    add("chat-help-window", "/au help - lines as the client reads them", 640, 400,
        chat_lines(lines[14:23], left=10, top=40, width=600, height=270)
        + '<div class="chatinput" style="left:10px;top:316px;width:600px">/au help</div>',
        "Chat output", "Commands", seed=111,
        caption_extra="Bare | separators act as escapes: |n breaks lines, |r is swallowed (review UI-05).")
    from debug_output import DEBUG_LINES
    h = 40 + len(DEBUG_LINES) * 19 + 60
    add("chat-debug", "/au debug in the chat frame", w, h,
        chat_lines([PREFIX + l for l in DEBUG_LINES], left=10, top=10, width=880, height=h - 50), "Chat output",
        "Troubleshooting / Reporting-Bugs-and-Feedback", seed=112, scale=1.25,
        caption_extra="Client build values are illustrative.")


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
            ("neutral" if "wizard" in name else "neutral"), seed=hash(name) % 97 + 120,
            caption_extra="Proposal from the UI review, not implemented.")
    write_index()
    print(f"{len(INDEX)} mockups written")
    return INDEX


if __name__ == "__main__":
    main()
