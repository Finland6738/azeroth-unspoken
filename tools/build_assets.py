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


PAGES = {}   # name -> (title, w, h, body, kw): the CurseForge gallery redraws a page without the "CURRENT" badge


def page(name, title, w, h, body, **kw):
    """mockkit.page, writing into the temporary folder."""
    PAGES[name] = (title, w, h, body, kw)
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


# ---------------------------------------------------------------------------------------------------------------
# the CurseForge gallery: a few images in the order of a tour, each with a title and a description in English and
# Italian, ready to paste. The images carry no "CURRENT" badge, only their title and the mockup caption.
# (file name in assets/curseforge/, page, title, description, Italian title, Italian description)
# ---------------------------------------------------------------------------------------------------------------
GALLERY = [
    ("01-a-narrator-only-you-see", "narrator-in-context", "A narrator only you can see",
     "When something happens (a new zone, a fight, a level, dusk in a forest), a small box near the bottom of the "
     "screen shows a hand-written line that fits the moment. Only you see it: nothing goes to chat unless you choose. "
     "It works offline, with no AI.",
     "Un narratore che vedi solo tu",
     "Quando succede qualcosa (una nuova zona, un combattimento, un livello, il tramonto in un bosco), un riquadro "
     "in basso mostra una frase scritta a mano per quel momento. La vedi solo tu: in chat non va nulla, se non lo "
     "scegli tu. Funziona offline, senza IA."),
    ("02-four-voices", "narrator-voices", "Four voices",
     "The narrator, your character's inner voice, your character and the NPCs each have their own colour, and the "
     "inner voice has its own typeface: you can tell at a glance who is speaking.",
     "Quattro voci",
     "Il narratore, la voce interiore, il personaggio e gli NPC hanno ciascuno il proprio colore, e la voce interiore "
     "il proprio carattere: si capisce a colpo d'occhio chi sta parlando."),
    ("03-your-pace-your-style", "x-depth-elevated", "Your pace, your style",
     "Intensity (0-100) sets how often the narrator speaks; the prose depth (Natural, Literary, Elevated) sets its "
     "tone. Here, the Elevated line for arriving in a forest. Silence is fine too: never a flood of messages.",
     "Il tuo ritmo, il tuo stile",
     "L'intensità (0-100) decide quanto spesso parla il narratore; la profondità (Naturale, Letteraria, Elevata) ne "
     "decide il tono. Qui, la frase Elevata per l'arrivo in un bosco. Anche il silenzio va bene: mai una pioggia di "
     "messaggi."),
    ("04-say-it-aloud-if-you-want", "proposal", "Say it aloud, if you want",
     "Choose the confirm mode and a line your character could say becomes a chat proposal: send it, edit it, ask for "
     "another or discard it. Nothing is sent without your click, unless you turn on automatic sending yourself.",
     "Dillo ad alta voce, se vuoi",
     "Con la modalità di conferma, una frase che il tuo personaggio potrebbe dire diventa una proposta per la chat: "
     "inviala, modificala, chiedine un'altra o scartala. Senza il tuo clic non parte nulla, a meno che tu non attivi "
     "l'invio automatico."),
    ("05-edit-before-you-send", "proposal-editor", "Edit before you send",
     "The editor opens on the proposed line: change a word, add a name, then send it to /say or /emote.",
     "Modifica prima di inviare",
     "L'editor si apre sulla frase proposta: cambia una parola, aggiungi un nome, poi inviala in /say o /emote."),
    ("06-songs-rhymes-and-verses", "narrator-reading", "Songs, rhymes and verses",
     "Some moments bring a longer piece, such as an innkeeper's rhyme, a road song or an old inscription, revealed "
     "line by line. The pieces you hear are kept in the journal's songbook.",
     "Canzoni, filastrocche e versi",
     "Alcuni momenti portano un brano più lungo, come la filastrocca di un locandiere, una canzone di strada o "
     "un'antica iscrizione, che appare riga dopo riga. I brani ascoltati restano nel canzoniere del diario."),
    ("07-npc-alive", "dialogue-line", "NPC Alive: ambient dialogues",
     "At a vendor, a flight master or a trainer, or with an innkeeper, a small window offers a short simulated "
     "conversation: a line from the NPC and up to three answers. It is clearly labelled, never goes to chat and "
     "changes nothing in the game.",
     "NPC Alive: dialoghi d'ambiente",
     "Da un mercante, un maestro di volo o un istruttore, o con un locandiere, una piccola finestra propone una breve "
     "conversazione simulata: una battuta dell'NPC e fino a tre risposte. È ben segnalata, non va mai in chat e non "
     "cambia nulla nel gioco."),
    ("08-a-journal-that-remembers", "journal-memories", "A journal that remembers",
     "/au journal lists what your character has lived: first visits, returns, deaths, levels, letters from friends. "
     "Keep a memory, delete it, or export the journal as text. The narrator only recalls what really happened.",
     "Un diario che ricorda",
     "/au journal elenca ciò che il tuo personaggio ha vissuto: prime visite, ritorni, morti, livelli, lettere degli "
     "amici. Tieni un ricordo, cancellalo o esporta il diario come testo. Il narratore ricorda solo ciò che è "
     "successo davvero."),
    ("09-personal-stories", "journal-stories", "Personal stories",
     "Story Arcs are small tellings that begin from real events: a fall and the return, a face you keep meeting, a "
     "foe that keeps bringing you down. They are not quests: no rewards, and you can pause or skip them at any time.",
     "Storie personali",
     "Le Story Arcs sono piccoli racconti che nascono da eventi veri: una caduta e il ritorno, un volto che continui a "
     "incontrare, un nemico che continua ad abbatterti. Non sono missioni: niente ricompense, e puoi sospenderle o "
     "saltarle quando vuoi."),
    ("10-relationships", "relations-detail-npc", "Relationships",
     "The addon remembers how you stand with NPCs and with the players you choose: trust, respect, affection, a bond "
     "from Hated to Deep bond, the first meeting, favours and nicknames. Narration only: no NPC behaves differently "
     "in the game.",
     "Relazioni",
     "L'addon ricorda come stai con gli NPC e con i giocatori che scegli tu: fiducia, rispetto, affetto, un legame da "
     "Odiato a Legame profondo, il primo incontro, i favori e i soprannomi. Solo narrazione: nessun NPC si comporta "
     "diversamente nel gioco."),
    ("11-your-characters-soul", "profile", "Your character's soul",
     "Give your character a personality (idealist or cynical, curious, ambitious, with or without an inner voice), "
     "and the lines that fit come up more often. With Total RP 3 it can start from your profile.",
     "L'anima del personaggio",
     "Dai al tuo personaggio una personalità (idealista o cinico, curioso, ambizioso, con o senza voce interiore) e le "
     "frasi adatte arrivano più spesso. Con Total RP 3 può partire dal tuo profilo."),
    ("12-a-guided-first-launch", "wizard-1", "A guided first launch",
     "A short guide, which you can skip, sets language, experience, intensity, style, modules, chat and keys in "
     "seven steps (eight with Total RP 3), with a test line along the way.",
     "Una guida al primo avvio",
     "Una breve guida, che puoi saltare, imposta lingua, esperienza, intensità, stile, moduli, chat e tasti in sette "
     "passi (otto con Total RP 3), con una frase di prova lungo il percorso."),
    ("13-every-part-on-or-off", "x-settings-modules", "Every part on or off",
     "Each module has its own switch in the settings panel: personal lines, the world, NPC dialogues, memory, "
     "emotions, relationships, stories, chat proposals. Every option is also a slash command (/au help).",
     "Ogni parte, accesa o spenta",
     "Ogni modulo ha il suo interruttore nel pannello delle impostazioni: frasi personali, il mondo, dialoghi con gli "
     "NPC, memoria, emozioni, relazioni, storie, proposte per la chat. Ogni opzione è anche un comando (/au help)."),
    ("14-english-and-italian", "narrator-it", "In English and Italian",
     "Every line and the whole interface exist in English and in Italian. Here, the narrator box and a chat proposal "
     "in Italian.",
     "In inglese e in italiano",
     "Tutte le frasi e tutta l'interfaccia esistono in inglese e in italiano. Qui, il riquadro del narratore e una "
     "proposta per la chat in italiano."),
]
CURSEFORGE = os.path.join(ASSETS, "curseforge")
DESCRIPTION_MAX = 256   # CurseForge accepts at most 256 characters in the description of a gallery image
NOTE_EN = "Images: illustrative mockups built from the addon code, not in-game screenshots."
NOTE_IT = "Immagini: mockup illustrativi costruiti dal codice dell'addon, non screenshot del gioco."


def build_gallery():
    long_ = [(g[0], lang, len(d)) for g in GALLERY for lang, d in (("en", g[3]), ("it", g[5]))
             if len(d) > DESCRIPTION_MAX]
    if long_:
        sys.exit(f"gallery descriptions over {DESCRIPTION_MAX} characters (CurseForge's limit): {long_}")
    for name, src, title, *_ in GALLERY:
        _t, w, h, body, kw = PAGES[src]
        kw = dict(kw, kind="none", caption_extra="")
        _page("g-" + name, title, w, h, body, out_dir=BUILD, **kw)


def write_gallery_index():
    fence = lambda text: "```text\n" + text + "\n```\n"  # noqa: E731   GitHub shows a copy button on a fence
    out = ["# CurseForge gallery\n",
           "A short tour of Azeroth Unspoken for the project's gallery on CurseForge, in the order to upload it. For each "
           "image: the title and the description to paste, in English and in Italian (each description is at most "
           f"{DESCRIPTION_MAX} characters, CurseForge's limit: the build stops on a longer one). The images are the mockups of "
           "[the assets folder](../README.md) without the \"CURRENT\" badge; each still says it is a mockup.\n",
           "A line for the project description, so that nobody takes the gallery for screenshots:\n",
           fence(NOTE_EN), fence(NOTE_IT),
           "Regenerate with `.venv/Scripts/python -I -X utf8 tools/build_assets.py` (the texts are in its `GALLERY` "
           "list).\n"]
    for name, _src, title, desc, title_it, desc_it in GALLERY:
        out += [f"## {name}.png\n", f'<a href="{name}.png"><img src="{name}.png" width="480" alt="{title}"></a>\n',
                "**Title**\n", fence(title), f"**Description** ({len(desc)} characters)\n", fence(desc),
                "**Titolo**\n", fence(title_it), f"**Descrizione** ({len(desc_it)} caratteri)\n", fence(desc_it)]
    with open(os.path.join(CURSEFORGE, "README.md"), "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(out))


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
           "For the CurseForge gallery: [curseforge/](curseforge/README.md) has fourteen of these images in the "
           "order of a tour, each with a title and a description to paste (English and Italian).\n",
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
                  bm.build_chat, build_depths, build_italian, build_settings_sections, build_chat_more,
                  build_gallery):
        build()
    os.makedirs(CURSEFORGE, exist_ok=True)
    exe = render.browser()
    jobs = [(name, src) for name, src, *_ in ASSETS_LIST] + [("curseforge/" + g[0], "g-" + g[0]) for g in GALLERY]
    wanted = [j for j in jobs if not names or j[0] in names]

    def one(job):
        name, src = job
        shot(os.path.join(BUILD, src + ".html"), os.path.join(ASSETS, name + ".png"), exe)
        print("rendered", name, flush=True)

    with ThreadPoolExecutor(max_workers=4) as pool:
        list(pool.map(one, wanted))
    if not names:   # a full run drops the images no case uses any more
        keep = {j[0] + ".png" for j in jobs}
        for folder, prefix in ((ASSETS, ""), (CURSEFORGE, "curseforge/")):
            for f in os.listdir(folder):
                if f.endswith(".png") and prefix + f not in keep:
                    os.remove(os.path.join(folder, f))
    write_index()
    write_gallery_index()
    shutil.rmtree(BUILD, ignore_errors=True)
    print(f"{len(wanted)} images in assets/, index in assets/README.md")


if __name__ == "__main__":
    main(sys.argv[1:])
