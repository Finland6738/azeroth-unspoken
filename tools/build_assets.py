"""Builds assets/: one mockup PNG for every case of the Azeroth Unspoken interface, and assets/README.md, its index.

    .venv/Scripts/python -I -X utf8 tools/build_assets.py            (every image)
    .venv/Scripts/python -I -X utf8 tools/build_assets.py <name> ... (only the named images, then the index)

It reuses the mockup toolkit of docs/design/mockups/tools/ (the same windows, colours, sizes and texts, taken from
AzerothUnspoken/UI/ and the locale files, with real lines of the phrase packs) and adds the cases the wiki mockups do
not draw: the three prose depths, the Italian narrator voices and every Italian wizard step, each section of the
settings panel, and the chat output of /au place, /au who, /au packs, /au stats with /au validate and a few setting
commands. The chat lines are captured from the addon itself, loaded the way the offline tests load it.

The HTML pages are written to a temporary folder (docs/design/mockups/ is not touched), then rendered with a headless
Chromium browser (Microsoft Edge on Windows, Chrome or Chromium elsewhere; MOCKUP_BROWSER sets its path). Needs the
packages of docs/design/mockups/requirements.txt (Pillow, lupa). The backgrounds are original SVG drawings: no
Blizzard art, icon, font or screenshot is used.
"""
import os
import shutil
import subprocess
import sys
import tempfile
import time
from concurrent.futures import ThreadPoolExecutor

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
KIT = os.path.join(ROOT, "docs", "design", "mockups", "tools")
ASSETS = os.path.join(ROOT, "assets")
sys.path.insert(0, KIT)

import build_mockups as bm  # noqa: E402
import components  # noqa: E402
import mockkit  # noqa: E402
import render  # noqa: E402
from components import narrator, settings, ui, wizard  # noqa: E402
from mockkit import chat_lines  # noqa: E402

BUILD = tempfile.mkdtemp(prefix="au-assets-")
_page = mockkit.page


def page(name, title, w, h, body, **kw):
    """mockkit.page, writing into the temporary folder."""
    return _page(name, title, w, h, body, out_dir=BUILD, **kw)


bm.page = page   # build_mockups.add() writes through this name

# ---------------------------------------------------------------------------------------------------------------
# the cases the wiki mockups do not draw
# ---------------------------------------------------------------------------------------------------------------
# zone.forest.01 (inner voice), the variants written for each depth: the box is the same, the line changes
DEPTH_LINES = {
    "natural": "Three of me couldn't reach around these trunks. How many winters have they stood through?",
    "literary": "Moss on the roots, sap on the bark. The forest keeps count of the years in its own way.",
    "elevated": "Before the first stone of any throne was laid, these roots were already drinking from the deep earth.",
}
IT_BATTLE = "Non ho cercato questa battaglia. Ma non la fuggirò."   # battle.gen.03 (itIT)
IT_NPC = "Benvenuta, viandante. C'è posto vicino al fuoco, se la strada ti ha stancato."   # npcd.innkeeper.open.n1, to Elyra
WIZ_NAMES = {1: "language", 2: "experience", 3: "intensity", 4: "style", 5: "modules", 6: "total-rp-3",
             7: "chat-and-test", 8: "keys-and-button"}
WIZ_TITLES = {1: "Welcome and language", 2: "Experience", 3: "Intensity", 4: "Style", 5: "Modules",
              6: "Total RP 3", 7: "Chat and test", 8: "Keys, button and settings"}
SECTIONS = ("general", "chat", "narrator", "modules", "privacy")


def stage(name, title, h, scene="dusk", seed=3, caption_extra="", **nk):
    page(name, title, 640, h + 30, narrator(100, 70, **nk), scene=scene, seed=seed, caption_extra=caption_extra)


def build_depths():
    for depth, line in DEPTH_LINES.items():
        stage(f"x-depth-{depth}", f"Narrator box - prose depth {depth.capitalize()}", 300, scene="dusk", seed=4,
              speaker="inner", text=line,
              caption_extra=f"The same moment (arriving in a forest) with the line written for /au depth {depth}.")


def build_italian():
    stage("x-it-narrator", "Narrator box - narrator voice (Italian)", 300, seed=3, lang="it", speaker="narrator",
          text=f"{bm.PLAYER} {bm.IT_DUSK_E}")
    stage("x-it-character", "Narrator box - character voice (Italian)", 300, scene="battle", seed=5, lang="it",
          speaker="character", text=f"«{IT_BATTLE}»")
    stage("x-it-npc", "Narrator box - NPC voice (Italian)", 300, scene="warm", seed=6, lang="it", speaker="npc",
          text=IT_NPC)
    for step in range(1, 9):
        page(f"x-it-wizard-{step}", f"First-run guide - {WIZ_TITLES[step]} (Italian)", 680, 600,
             wizard(step, lang="it", trp3=step == 6, left=80, top=50, trp3_others="needs" if step == 6 else ""),
             scene="neutral", seed=30 + step)


def build_settings_sections():
    settings(0, 0)   # fills SETTINGS_SECTION_TOP
    for i, key in enumerate(SECTIONS):
        top = components.SETTINGS_SECTION_TOP["opt_section_" + key]
        page(f"x-settings-{key}", f"Settings panel - {ui('en', 'opt_section_' + key)} section", 720, 720,
             settings(30, 30, view=640, scroll=max(0, top - 4)), scene="neutral", seed=43 + i,
             caption_extra="The panel scrolled to this section, inside the client's options window.")


def chat_page(name, title, command, lines, caption_extra="", seed=113):
    """A chat frame with the lines a command printed, the command still in the input box under it."""
    w = 900
    rows = sum(1 + len(l) // 150 for l in lines)   # a long line wraps in the 880-unit frame
    h = 94 + rows * 19 + 80   # the frame starts under the "CURRENT" badge
    body = (chat_lines(lines, left=10, top=44, width=880, height=h - 134)
            + f'<div class="chatinput" style="left:10px;top:{h - 80}px;width:880px">/au {command}</div>')
    page(name, title, w, h, body, scene="neutral", seed=seed, scale=1.25,
         caption_extra=caption_extra or "Captured from the addon with the simulated client of the tests.")


def build_chat_more():
    from chat_capture import run, runtime
    lua = runtime()
    # an invented human mage in Goldshire at dusk, an innkeeper of the NPC registry in front of her (id 295, renamed)
    lua.execute('''
        P.name = "Elyra"; P.class = "MAGE"; P.race = "Human"; P.faction = "Alliance"; P.level = 24
        P.zone = "Elwynn Forest"; P.subzone = "Goldshire"; P.hour = 20; P.mapID = 1429; P.mapName = "Elwynn Forest"
        P.continentMap = 1415; P.resting = true
        P.target = { name = "Bram Ashcombe", level = 30, hp = 100, hpMax = 100, reaction = 5, ctype = "Humanoid",
            guid = "Creature-0-1-0-1-295-0000AA", sex = 2, class = "WARRIOR", race = "Human" }
        FIRE("ZONE_CHANGED_NEW_AREA"); FIRE("PLAYER_TARGET_CHANGED")
    ''')
    chat_page("x-chat-place", "/au place in the chat frame", "place", run("place"),
              "Where you are according to the addon, then who is in front of you. Simulated client; the "
              "innkeeper's name is invented.")
    chat_page("x-chat-who", "/au who in the chat frame", "who", run("who"),
              "Who is in front of you, and where each piece of information comes from. Simulated client; the "
              "innkeeper's name is invented.")
    chat_page("x-chat-packs", "/au packs in the chat frame (full output)", "packs", run("packs"),
              "Every phrase pack, then the folders loaded on demand. Simulated client: a development install with "
              "every pack loaded.")
    chat_page("x-chat-stats", "/au stats and /au validate in the chat frame", "validate",
              run("stats") + run("validate"),
              "The lines available in your language by event, then the pack check. Simulated client.")
    lines = []
    for c in ("mode", "intensity 30", "depth elevated", "emotion"):
        lines += ["|cff808080> /au " + c + "|r"] + run(c)
    chat_page("x-chat-settings", "Setting commands in the chat frame", "emotion", lines,
              "/au mode, /au intensity, /au depth and /au emotion each answer with one short line. The grey lines "
              "only mark which command was typed.")


# ---------------------------------------------------------------------------------------------------------------
# the assets: (file name in assets/, page, group, caption)
# ---------------------------------------------------------------------------------------------------------------
ASSETS_LIST = [
    # the narrator box
    ("narrator-box-narrator-voice", "narrator-narrator", "Narrator box",
     "The narrator voice: a third-person line about your character, private to you."),
    ("narrator-box-inner-voice", "narrator-inner", "Narrator box", "The inner voice: your character's thoughts, in its own typeface."),
    ("narrator-box-character-voice", "narrator-character", "Narrator box", "The character voice: something your character could say aloud."),
    ("narrator-box-npc-voice", "narrator-npc", "Narrator box", "The NPC voice, used by the innkeeper's and other NPCs' lines."),
    ("narrator-box-all-voices", "narrator-voices", "Narrator box", "The four voices side by side: accent bar, tint and typeface tell them apart."),
    ("narrator-box-depth-natural", "x-depth-natural", "Narrator box", "Prose depth Natural (`/au depth natural`): everyday and concise."),
    ("narrator-box-depth-literary", "x-depth-literary", "Narrator box", "Prose depth Literary, the default: evocative but readable."),
    ("narrator-box-depth-elevated", "x-depth-elevated", "Narrator box", "Prose depth Elevated: solemn and ceremonial."),
    ("narrator-box-default-position", "narrator-in-context", "Narrator box", "Where the box and the speak button sit on a 1366 x 768 screen."),
    ("narrator-box-paused", "narrator-paused", "Narrator box", "Paused (`/au pause` or the pause key): the header and the speak button say so."),
    ("narrator-box-large-text", "narrator-large-font", "Narrator box", "Text size 20: the header grows with the label."),
    ("narrator-box-private-notices", "narrator-notices", "Narrator box", "Private notices: a bond's level, a letter waiting, a song learned."),
    ("narrator-box-long-reading", "narrator-reading", "Narrator box", "A long private reading (a rhyme, a song), revealed line by line."),
    ("narrator-box-long-reading-scroll", "narrator-reading-scroll", "Narrator box", "A reading longer than twelve lines scrolls inside the box."),
    ("narrator-history", "narrator-history", "Narrator box", "The narrator history, opened from the box's header."),
    # Chat Gateway
    ("chat-gateway-proposal", "proposal", "Chat Gateway", "A proposal waiting for your confirmation before it goes to /s."),
    ("chat-gateway-editor", "proposal-editor", "Chat Gateway", "The editor: change the line before you send it."),
    ("chat-gateway-sent", "proposal-sent", "Chat Gateway", "The line after it was sent to /s."),
    ("chat-gateway-emote-proposal", "proposal-emote", "Chat Gateway", "A narrator line proposed as an emote for /e."),
    ("chat-gateway-held-line", "proposal-held", "Chat Gateway", "A private line arrived while the proposal waits: it goes to the history."),
    ("speak-button", "speak-button", "Chat Gateway", "The speak button and its tooltip in private mode, with a proposal waiting, and with the editor on."),
    ("chat-gateway-automatic-sending-consent", "consent-auto", "Chat Gateway", "Turning on automatic sending asks for consent, with a two-second pause."),
    # first-run wizard
    ("wizard-1-language", "wizard-1", "First-run wizard", "Step 1: welcome and the language of the lines."),
    ("wizard-2-experience", "wizard-2", "First-run wizard", "Step 2: the kind of experience (a preset of modules)."),
    ("wizard-3-intensity", "wizard-3", "First-run wizard", "Step 3: how often the narrator speaks."),
    ("wizard-4-style", "wizard-4", "First-run wizard", "Step 4: the prose depth."),
    ("wizard-5-modules", "wizard-5", "First-run wizard", "Step 5: the modules, one by one."),
    ("wizard-total-rp-3", "wizard-6", "First-run wizard", "The Total RP 3 step, shown only when Total RP 3 is installed (8 steps instead of 7)."),
    ("wizard-6-chat-and-test", "wizard-7", "First-run wizard", "Step 6 of 7: what may reach chat, and a test line."),
    ("wizard-7-keys-and-button", "wizard-8", "First-run wizard", "Step 7 of 7: keys, the speak button and where the settings are."),
    ("wizard-try-the-narrator", "wizard-test-line", "First-run wizard", "\"Try the narrator\": the box steps aside, below the guide."),
    # settings
    ("settings-panel", "settings-top", "Settings", "The settings panel as it opens in the client's options window."),
    ("settings-section-general", "x-settings-general", "Settings", "The General section: language, intensity, depth, literary forms, pause between lines, window scale."),
    ("settings-section-chat", "x-settings-chat", "Settings", "The Chat section: what may reach chat, the default channel, how long a proposal waits, the speak button."),
    ("settings-section-narrator", "x-settings-narrator", "Settings", "The Narrator section: duration, reading speed, opacity, text size, motion, combat, the dialogue window."),
    ("settings-section-modules", "x-settings-modules", "Settings", "The Modules section: each part of the addon on or off."),
    ("settings-section-privacy", "x-settings-privacy", "Settings", "The Privacy section: automatic sending and the Total RP 3 consents."),
    ("settings-panel-unrolled", "settings", "Settings", "The whole panel at once, unrolled."),
    ("settings-language-reload", "settings-reload", "Settings", "After a change of language, the panel asks for a reload."),
    ("language-reload-dialog", "consent-reload", "Settings", "The reload dialog after a change of language."),
    ("settings-total-rp-3-consent", "consent-trp3-others", "Settings", "Reading other players' Total RP 3 profiles asks for consent."),
    # journal
    ("journal-memories", "journal-memories", "Journal", "`/au journal`: the Memories tab."),
    ("journal-places", "journal-places", "Journal", "The Places tab: where you have been, and how it went."),
    ("journal-flags", "journal-flags", "Journal", "The Flags tab: the facts your stories remember."),
    ("journal-session", "journal-session", "Journal", "The Session tab: forgotten when you log out."),
    ("journal-songbook", "journal-songbook", "Journal", "The Songbook: the pieces you have heard or read."),
    ("journal-songbook-piece", "journal-songbook-piece", "Journal", "A piece of the songbook, opened."),
    ("journal-letter", "journal-letter", "Journal", "A letter from an NPC you are close to, with its tooltip."),
    ("journal-row-tooltip", "journal-row-tooltip", "Journal", "A long row shows the whole text in its tooltip."),
    ("journal-empty", "journal-empty", "Journal", "The journal of a new character."),
    ("journal-delete-memory", "journal-delete-armed", "Journal", "Deleting a memory asks for a second click."),
    ("journal-forget-everything", "journal-reset-armed", "Journal", "\"Forget everything\" armed, waiting for the second click."),
    ("journal-memory-off", "journal-memory-off", "Journal", "With the Memory module off the journal is read-only."),
    ("journal-export", "journal-export", "Journal", "The export window: the journal as plain text to copy."),
    # story arcs
    ("story-arcs-list", "journal-stories", "Story Arcs", "The Stories tab: stories under way, the nemeses, those that can begin and the concluded ones."),
    ("story-arcs-choice", "journal-story-detail", "Story Arcs", "A story waiting for your choice."),
    ("story-arcs-nemesis", "journal-nemesis", "Story Arcs", "A nemesis story: a foe that brought you down."),
    # relationships
    ("relationships-list", "relations-list", "Relationships", "`/au relationships`: the people you know."),
    ("relationships-people-met", "relations-people", "Relationships", "People met: suggestions you can add with one click."),
    ("relationships-empty", "relations-empty", "Relationships", "The list of a new character."),
    ("relationships-player-detail", "relations-detail-player", "Relationships", "A player's detail: disposition, feelings, note and traits."),
    ("relationships-npc-detail", "relations-detail-npc", "Relationships", "An NPC's detail: level of the bond, first meeting, nickname, favours, town."),
    ("relationships-hated-npc", "relations-detail-foe", "Relationships", "A hated NPC: a grudge, a broken oath, a title withheld."),
    ("relationships-shared-detail", "relations-detail-shared", "Relationships", "A player's detail with the shared list on."),
    ("relationships-options", "relations-options", "Relationships", "The options of the relationships window."),
    ("relationships-shared-list-consent", "consent-shared-list", "Relationships", "Sharing the list with your account asks for consent."),
    ("relationships-proximity-consent", "consent-proximity", "Relationships", "Recognising nearby people asks for consent."),
    ("journal-relationships", "journal-relationships", "Relationships", "The Relationships tab of the journal."),
    ("journal-people-met", "journal-people", "Relationships", "The People met tab of the journal."),
    # character soul
    ("character-soul", "profile", "Character soul", "`/au soul`: your character's personality."),
    ("character-soul-neutral", "profile-neutral", "Character soul", "A neutral profile: the narrator picks no traits for you."),
    ("character-soul-reset", "profile-reset-armed", "Character soul", "\"Neutral profile\" waits for a second click."),
    # NPC Alive
    ("npc-dialogue-button", "dialogue-offered", "NPC dialogues (NPC Alive)", "Near an NPC, the dialogue window offers its Listen button."),
    ("npc-dialogue-window", "dialogue-line", "NPC dialogues (NPC Alive)", "The NPC's line and up to three answers, numbered."),
    ("npc-dialogue-last-line", "dialogue-last", "NPC dialogues (NPC Alive)", "The last line of a dialogue, with Close."),
    ("npc-dialogue-test", "dialogue-test", "NPC dialogues (NPC Alive)", "`/au talk test`: a test innkeeper, no real NPC."),
    # chat output
    ("chat-help", "chat-help-window", "Chat commands", "`/au help`: the groups of commands."),
    ("chat-help-all", "chat-help", "Chat commands", "`/au help all`: every command."),
    ("chat-place", "x-chat-place", "Chat commands", "`/au place`: where you are according to the addon."),
    ("chat-who", "x-chat-who", "Chat commands", "`/au who`: who is in front of you, and the source of each fact."),
    ("chat-packs", "x-chat-packs", "Chat commands", "`/au packs`: the phrase packs and the folders loaded on demand."),
    ("chat-stats-validate", "x-chat-stats", "Chat commands", "`/au stats` and `/au validate`: lines available and the pack check."),
    ("chat-setting-commands", "x-chat-settings", "Chat commands", "`/au mode`, `/au intensity`, `/au depth`, `/au emotion`: one line each."),
    ("chat-debug", "chat-debug", "Chat commands", "`/au debug`: the report to paste into a bug."),
    # Italian
    ("it-narrator-box-narrator-voice", "x-it-narrator", "Italian interface", "Il narratore, in italiano."),
    ("it-narrator-box-inner-voice", "narrator-inner-it", "Italian interface", "La voce interiore, in italiano."),
    ("it-narrator-box-character-voice", "x-it-character", "Italian interface", "La voce del personaggio, in italiano."),
    ("it-narrator-box-npc-voice", "x-it-npc", "Italian interface", "La voce di un NPC, in italiano."),
    ("it-chat-gateway-proposal", "narrator-it", "Italian interface", "Una proposta per la chat, in italiano."),
    ("it-narrator-box-long-reading", "narrator-reading-it", "Italian interface", "Una lunga lettura privata, in italiano."),
] + [("it-wizard-total-rp-3" if s == 6 else f"it-wizard-{s - (s > 6)}-{WIZ_NAMES[s]}", f"x-it-wizard-{s}",
       "Italian interface", "Guida iniziale: " + ("il passo di Total RP 3" if s == 6 else "passo %d di 7" % (s - (s > 6)))
       + ", in italiano.")
     for s in range(1, 9)]


def write_index():
    groups = {}
    for name, _src, group, caption in ASSETS_LIST:
        groups.setdefault(group, []).append((name, caption))
    out = ["# Interface mockups\n",
           "One image for every case of the Azeroth Unspoken interface, so you can see what the addon looks like before "
           "you install it. *Italiano: un'immagine per ogni caso dell'interfaccia; le immagini in italiano sono nella "
           "sezione [Italian interface](#italian-interface).*\n",
           "These are **illustrative mockups built from the addon code, not in-game screenshots**: the windows, colours, "
           "sizes and texts come from `AzerothUnspoken/UI/` and the locale files, the lines are real lines of the phrase "
           "packs, and the people in the samples are invented. The backgrounds are original "
           "drawings: no Blizzard art, icon, font or screenshot is used.\n",
           "Regenerate them after a change to the interface (see [`tools/build_assets.py`](../tools/build_assets.py)):\n",
           "```\n.venv/Scripts/python -m pip install -r docs/design/mockups/requirements.txt\n"
           ".venv/Scripts/python -I -X utf8 tools/build_assets.py\n```\n",
           "## Contents\n"]
    out += [f"- [{g}](#{g.lower().replace(' ', '-').replace('(', '').replace(')', '')}) ({len(v)})"
            for g, v in groups.items()]
    out.append("")
    for group, items in groups.items():
        out.append(f"## {group}\n")
        out.append("| Image | What it shows |\n|---|---|")
        for name, caption in items:
            out.append(f'| <a href="{name}.png"><img src="{name}.png" width="320" alt="{name}"></a> | '
                       f"**[{name}.png]({name}.png)**<br>{caption} |")
        out.append("")
    with open(os.path.join(ASSETS, "README.md"), "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(out))


def shot(html, out, exe):
    """render.render without its wait: the browser's helper processes keep the captured output pipes open for about a
    minute after the screenshot, so here nothing is captured and the browser is stopped once the file is written."""
    w, h, scale = render.size_of(html)
    url = "file:///" + os.path.abspath(html).replace("\\", "/")
    for _ in range(3):
        profile = tempfile.mkdtemp(prefix="au-render-")
        if os.path.exists(out):
            os.remove(out)
        proc = subprocess.Popen([exe, "--headless=new", f"--user-data-dir={profile}", "--disable-gpu",
                                 "--hide-scrollbars", "--no-first-run", "--disable-extensions",
                                 f"--force-device-scale-factor={scale}", f"--window-size={w},{h}",
                                 "--virtual-time-budget=3000", f"--screenshot={os.path.abspath(out)}", url],
                                stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        deadline, size = time.time() + 60, -1
        while time.time() < deadline:
            if os.path.exists(out) and os.path.getsize(out) > 0:
                if os.path.getsize(out) == size:   # written and no longer growing
                    break
                size = os.path.getsize(out)
            time.sleep(0.4)
        if os.name == "nt":
            subprocess.run(["taskkill", "/T", "/F", "/PID", str(proc.pid)], capture_output=True)
        else:
            proc.kill()
        proc.wait()
        shutil.rmtree(profile, ignore_errors=True)
        if size > 0 and os.path.exists(out):
            return out
    raise RuntimeError(f"the browser wrote no screenshot for {html}")


def main(names):
    shutil.copy(os.path.join(KIT, "..", "mockups.css"), os.path.join(BUILD, "mockups.css"))
    for build in (bm.build_narrator, bm.build_proposal, bm.build_speak_button, bm.build_wizard, bm.build_settings,
                  bm.build_journal, bm.build_relations, bm.build_consent, bm.build_profile, bm.build_dialogue,
                  bm.build_chat, build_depths, build_italian, build_settings_sections, build_chat_more):
        build()
    os.makedirs(ASSETS, exist_ok=True)
    exe = render.browser()
    wanted = [a for a in ASSETS_LIST if not names or a[0] in names]
    def one(item):
        name, src = item[0], item[1]
        shot(os.path.join(BUILD, src + ".html"), os.path.join(ASSETS, name + ".png"), exe)
        print("rendered", name, flush=True)

    with ThreadPoolExecutor(max_workers=4) as pool:
        list(pool.map(one, wanted))
    if not names:   # a full run drops the images no case uses any more
        keep = {a[0] + ".png" for a in ASSETS_LIST}
        for f in os.listdir(ASSETS):
            if f.endswith(".png") and f not in keep:
                os.remove(os.path.join(ASSETS, f))
    write_index()
    shutil.rmtree(BUILD, ignore_errors=True)
    print(f"{len(wanted)} images in assets/, index in assets/README.md")


if __name__ == "__main__":
    main(sys.argv[1:])
