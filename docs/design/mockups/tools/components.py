"""The addon's windows as HTML, built from the sizes, anchors, colours and texts of AzerothUnspoken/UI/.

Each function returns the HTML of one window placed in a stage. Coordinates: WoW TOPLEFT (x, y) -> left x, top -y.
"""
from mockkit import VOICE, VOICE_COLOR, btn, edit, fs, frame, sel, slider, wow, tooltip

FRAME_BG = (0.05, 0.04, 0.09, 0.95)      # W.Background(frame, 0.05, 0.04, 0.09, 0.95): journal, relations, profile
WIZARD_BG = (0.05, 0.04, 0.09, 0.94)
CHANNEL = {"SAY": "/s", "EMOTE": "/e", "YELL": "/y", "PARTY": "/p", "RAID": "/raid", "GUILD": "/g", "INSTANCE_CHAT": "/i"}

NARRATOR_TEXT = {
    "en": {"proposal_for": "proposal for %s", "sent_to": "sent to %s", "send": "Send", "edit": "Edit",
           "another": "Another", "discard": "Discard", "copy": "To chat", "left": "%d s", "held": "+%d in history"},
    "it": {"proposal_for": "proposta per %s", "sent_to": "inviato in %s", "send": "Invia", "edit": "Modifica",
           "another": "Un'altra", "discard": "Scarta", "copy": "Nella chat", "left": "%d s", "held": "+%d in cronologia"},
}


# ---------------------------------------------------------------------------------------------------------------
# Narrator (UI/NarratorFrame.lua): 440 wide, BOTTOM of UIParent + 240, height = 24 + text + 10 (+30 editor, +28 bar).
# The opacity setting is the background's only, at least 0.55 (#173); the frame alpha is only the fade-out. A waiting
# proposal shows its countdown (`left`, None = until dismissed) and the lines held back while it waits (#176, #177).
# ---------------------------------------------------------------------------------------------------------------
def narrator(left, bottom, speaker, text, lang="en", proposal=None, sent=None, editor=None, editor_sel=False,
             paused=False, alpha=0.8, font=14, fade=1.0, history=None, hover_btn=None, history_alpha=0.8,
             left_s=25, held=0):
    t = NARRATOR_TEXT[lang]
    label = VOICE[lang][speaker]
    if proposal:
        label += " · " + t["proposal_for"] % CHANNEL.get(proposal, proposal)
        if left_s is not None and editor is None:
            label += " · " + t["left"] % left_s
    elif sent:
        label += " · " + t["sent_to"] % CHANNEL.get(sent, sent)
    if held:
        label += " · " + t["held"] % held
    pad = 10 + (30 if editor is not None else 0) + (28 if proposal else 0)
    smalls = (btn("x", 22, 18, right=2, top=1, font=11) + btn("H", 22, 18, right=26, top=1, font=11)
              + btn(">" if paused else "II", 22, 18, right=50, top=1, font=11))
    header = (f'<div class="abs" style="left:0;right:0;top:0;height:20px">'
              + fs(f"|cff{VOICE_COLOR[speaker]}{label}|r", "gfns", mode="trunc", left=8, right=76, top=4,
                   extra=f";font-size:{max(12, font - 2)}px")
              + smalls + "</div>")
    body = (f'<div style="position:relative;padding:24px 8px {pad}px 8px;font-size:{font}px;line-height:1.25;'
            f'color:#fff;text-shadow:1px 1px 0 #000;white-space:pre-wrap">{wow(text)}</div>')
    extra = ""
    if editor is not None:
        extra += edit(editor, 424, 22, focus=True, selected=editor_sel, caret=not editor_sel, left=12, bottom=36)
    if proposal:
        x, bar = 0, []
        for key, w in (("send", 60), ("edit", 72), ("another", 72), ("chan", 50), ("discard", 64), ("copy", 84)):
            label_b = CHANNEL.get(proposal, proposal) if key == "chan" else t[key]
            bar.append(btn(label_b, w, 22, state="hover" if hover_btn == key else "", left=x, top=1))
            x += w + 4
        extra += f'<div class="abs" style="left:8px;right:8px;bottom:6px;height:24px">{"".join(bar)}</div>'
    nar = (f'<div class="f" style="position:relative;width:440px;opacity:{fade:.3f}">'
           f'<div class="bg" style="background:rgba(0,0,0,{max(0.55, alpha):.3f})"></div>{header}{body}{extra}</div>')
    hist = ""
    if history is not None:
        lines = "".join(f'<div style="white-space:pre-wrap">{wow(l)}</div>' for l in history)
        hist = (f'<div class="f" style="position:relative;width:440px;height:190px;margin-bottom:4px">'
                f'<div class="bg" style="background:rgba(0,0,0,{max(0.8, history_alpha):.3f})"></div>'
                f'<div class="abs chatfont" style="left:8px;right:8px;top:8px;bottom:8px;overflow:hidden;display:flex;'
                f'flex-direction:column;justify-content:flex-end;line-height:1.25;text-shadow:1px 1px 0 #000">{lines}</div></div>')
    return (f'<div class="abs" style="left:{left}px;bottom:{bottom}px;width:440px;display:flex;flex-direction:column">'
            f'{hist}{nar}</div>')


def history_line(time, speaker, text, lang="en", sent=None):
    tag = f" |cff808080({NARRATOR_TEXT[lang]['sent_to'] % CHANNEL.get(sent, sent)})|r" if sent else ""
    return f"|cff808080{time}|r |cff{VOICE_COLOR[speaker]}{VOICE[lang][speaker]}|r {text}{tag}"


# ---------------------------------------------------------------------------------------------------------------
# Wizard (UI/Wizard.lua): 480 x 330, CENTER (0, 40), strata DIALOG
# ---------------------------------------------------------------------------------------------------------------
WIZ = {
    "en": {"title": "Azeroth Unspoken", "step": "step %d of %d", "skip": "Skip", "back": "Back", "next": "Next",
           "finish": "Finish",
           "steps": ["Language", "What experience do you want?", "Intensity", "Style", "Modules", "Total RP 3",
                     "Chat and test"],
           "language_help": "Which language should the narrator's lines be in? It does not depend on the client language.",
           "preset_help": "These are combinations of the modules: you can change them any time.",
           "presets": [("Complete", "All modules: character, world, NPCs, memory, stories."),
                       ("Personal RPG", "Your character: thoughts, memories, personal stories."),
                       ("Narrative world", "Places, atmosphere and NPCs, less introspection."),
                       ("Social RP", "For playing with others. Nothing is shared without your consent.")],
           "intensity_help": "How often should the narrator speak up? It changes frequency, not length or style.",
           "band3": "50-60 - Balanced: atmosphere, memories and long silences.", "suggested": "(suggested value)",
           "depth_help": "How elevated should the language be? It changes which lines the narrator prefers: the others stay possible, but less likely.",
           "depths": [("Natural", "Everyday and concise. \"These walls have stood for centuries. I wonder who lived here.\""),
                      ("Literary", "Evocative but readable. \"The stones still keep the traces of those who called this place home.\""),
                      ("Elevated", "Solemn and ceremonial. \"The towers fell and the voices went quiet, yet the stones still keep watch over the lost days.\"")],
           "modules_help": "Pick the modules. Those marked * arrive in later versions: you can already set them. The Social module is a placeholder: it shares nothing without your explicit consent.",
           "modules": [("Personal", True, True), ("World", True, True), ("NPC dialogues", True, True),
                       ("Memory", True, True), ("Relationships", True, True), ("Stories", True, True),
                       ("Social", True, False), ("Audio", False, False)],
           "social_consent": "Social RP: joining scenes with other players will always be voluntary (opt-in) and shares no memories or data without your consent.",
           "trp3_help": "Total RP 3 is installed. The addon can use your RP profile's name in lines (yours only, name only). It works 100% without it too.",
           "trp3_btn": "Name from Total RP 3",
           "trp3_others_help": "Optional, off by default: read only race, class and traits from OTHER players' public profiles, so the narrator can react to who is in front of you. Never notes or history.",
           "trp3_others_btn": "Read others' Total RP 3",
           "chat_help": "What may reach chat? By default nothing: the narrator stays private. Whatever you pick, every send in your character's name starts only from a gesture of yours, except in 'automatic'.",
           "modes": [("private narrator only", "Private narrator only (default): lines appear in the box and stay visible to you alone. Nothing goes to chat."),
                     ("preview", "Preview: the character's lines become proposals. The 'speak' key opens the editor, where you can change them and send with Enter."),
                     ("confirm to send", "Confirm to send: the proposal is ready and the 'speak' key or button sends it in one gesture. You can always edit or discard it."),
                     ("automatic (where allowed)", "Automatic where allowed: emotes go out by themselves, and /say in instances; the rest stays a proposal. A few per minute, always. It turns on only with an explicit confirmation.")],
           "confirm_again": "click again to confirm", "test": "Try the narrator"},
    "it": {"title": "Azeroth Unspoken", "step": "passo %d di %d", "skip": "Salta", "back": "Indietro", "next": "Avanti",
           "finish": "Fine",
           "steps": ["Lingua", "Che esperienza vuoi?", "Intensità", "Stile", "Moduli", "Total RP 3", "Chat e prova"],
           "language_help": "In che lingua vuoi leggere le frasi del narratore? Non dipende dalla lingua del client.",
           "preset_help": "Sono combinazioni dei moduli: potrai cambiarle quando vuoi.",
           "presets": [("Completo", "Tutti i moduli: persona, mondo, NPC, memoria, storie."),
                       ("RPG personale", "Il tuo personaggio: pensieri, ricordi, storie personali."),
                       ("Mondo narrativo", "Luoghi, atmosfera e NPC, meno introspezione."),
                       ("Social RP", "Per giocare con altri. Nulla si condivide senza il tuo consenso.")],
           "intensity_help": "Quanto spesso deve farsi sentire il narratore? Cambia la frequenza, non la lunghezza né lo stile.",
           "band3": "50-60 - Bilanciato: atmosfera, ricordi e lunghi silenzi.", "suggested": "(valore consigliato)",
           "depth_help": "Quanto deve essere elevato il linguaggio? Cambia quali frasi il narratore preferisce: le altre restano possibili, ma meno probabili.",
           "depths": [("Naturale", "Quotidiano e conciso. «Queste mura sono qui da secoli. Chissà chi ci viveva.»"),
                      ("Letterario", "Evocativo ma leggibile. «Le pietre custodiscono ancora le tracce di chi chiamava questo luogo casa.»"),
                      ("Elevato", "Solenne e cerimoniale. «Caddero le torri e tacquero le voci, ma le pietre ancora vegliano sui giorni perduti.»")],
           "modules_help": "Scegli i moduli. Quelli con * arriveranno nelle prossime versioni: li puoi già impostare. Il modulo Social è un segnaposto: non condivide nulla senza un tuo consenso esplicito.",
           "modules": [("Personale", True, True), ("Mondo", True, True), ("Dialoghi NPC", True, True),
                       ("Memoria", True, True), ("Relazioni", True, True), ("Storie", True, True),
                       ("Social", True, False), ("Audio", False, False)],
           "social_consent": "Social RP: partecipare a scene con altri giocatori sarà sempre un'adesione volontaria (opt-in) e non condivide ricordi né dati senza il tuo consenso.",
           "trp3_help": "Total RP 3 è installato. L'addon può usare il nome del tuo profilo RP nelle frasi (solo il tuo, solo il nome). Funziona al 100% anche senza.",
           "trp3_btn": "Nome da Total RP 3",
           "trp3_others_help": "Facoltativo, spento di base: leggere dai profili pubblici degli ALTRI giocatori solo razza, classe e tratti, per far reagire il narratore a chi hai davanti. Mai note né storia.",
           "trp3_others_btn": "Leggi il Total RP 3 degli altri",
           "chat_help": "Cosa può arrivare in chat? Per impostazione predefinita nulla: il narratore resta privato. Qualunque modalità scegli, ogni invio a nome del tuo personaggio parte solo da un tuo gesto, tranne in 'automatica'.",
           "modes": [("solo narratore privato", "Solo narratore privato (predefinita): le frasi compaiono nel riquadro e restano visibili solo a te. Nulla va in chat."),
                     ("anteprima", "Anteprima: le frasi del personaggio diventano proposte. Il tasto 'pronuncia' apre l'editor, dove puoi cambiarle e inviarle con Invio."),
                     ("conferma per inviare", "Conferma per inviare: la proposta è pronta, il tasto o il pulsante 'pronuncia' la invia con un solo gesto. Puoi sempre modificarla o scartarla."),
                     ("automatica (dove permesso)", "Automatica dove permesso: le emote partono da sole e il /say nelle istanze; il resto resta una proposta. Poche al minuto, sempre. Si attiva solo con una conferma esplicita.")],
           "confirm_again": "clic di nuovo per confermare", "test": "Prova il narratore"},
}


def wizard(step, lang="en", trp3=False, left=0, top=0, auto_armed=False, mode=0, hover_skip=False):
    """step 1..7 (6 = Total RP 3, shown only when it is installed)."""
    t = WIZ[lang]
    total = 7 if trp3 else 6
    number = step if (trp3 or step < 6) else step - 1
    title = f"{t['title']} - {t['step'] % (number, total)}: {t['steps'][step - 1]}"
    c = []   # content: TOPLEFT of the content frame = (0, -36) of the wizard
    if step == 1:
        c.append(fs(t["language_help"], "gfh", left=16, top=8, width=448))
        for i, (name, on) in enumerate((("Italiano", lang == "it"), ("English", lang == "en"))):
            c.append(btn(sel(name, on), 220, 26, left=16, top=60 + i * 32))
    elif step == 2:
        c.append(fs(t["preset_help"], "gfh", left=16, top=8, width=448))
        for i, (name, help_) in enumerate(t["presets"]):
            y = 64 + i * 40
            c.append(btn(sel(name, i == 0), 200, 26, left=16, top=y))
            c.append(fs(help_, "gfhs", left=226, top=y + 13, width=230, extra=";transform:translateY(-50%)"))
    elif step == 3:
        c.append(fs(t["intensity_help"], "gfh", left=16, top=8, width=448))
        c.append(btn("-", 30, 26, left=100, top=106))
        c.append(fs("50", "gfnl", left=150, top=110, width=120))
        c.append(btn("+", 30, 26, left=230, top=106))
        c.append(fs(t["band3"] + "\n\n" + t["suggested"], "gfh", left=16, top=150, width=448))
    elif step == 4:
        c.append(fs(t["depth_help"], "gfh", left=16, top=8, width=448))
        for i, (name, ex) in enumerate(t["depths"]):
            y = 64 + i * 66
            c.append(btn(sel(name, i == 1), 130, 26, left=16, top=y))
            c.append(fs(ex, "gfhs", left=156, top=y - 4, width=300))
    elif step == 5:
        c.append(fs(t["modules_help"], "gfhs", left=16, top=8, width=448))
        for i, (name, on, live) in enumerate(t["modules"]):
            col, row = i % 2, i // 2
            c.append(btn(sel(name + ("" if live else " *"), on), 210, 24, left=16 + col * 226, top=56 + row * 30))
        c.append(fs(t["social_consent"], "gfhs", left=16, top=190, width=448))
    elif step == 6:
        c.append(fs(t["trp3_help"], "gfh", left=16, top=8, width=448))
        c.append(btn(sel(t["trp3_btn"], True), 260, 26, left=16, top=110))
        c.append(fs(t["trp3_others_help"], "gfhs", left=16, top=148, width=448))
        c.append(btn(t["trp3_others_btn"], 260, 26, left=16, top=198))
    elif step == 7:
        c.append(fs(t["chat_help"], "gfhs", left=16, top=8, width=448))
        for i, (short, help_) in enumerate(t["modes"]):
            y = 70 + i * 30
            label = t["confirm_again"] if (i == 3 and auto_armed) else sel(short, i == mode)
            c.append(btn(label, 170, 24, left=16, top=y))
            c.append(fs(help_, "gfhs", left=194, top=y + 12, width=270, extra=";transform:translateY(-50%)"))
        c.append(btn(t["test"], 200, 26, left=16, top=204))
    content = f'<div class="abs" style="left:0;right:0;top:36px;bottom:48px">{"".join(c)}</div>'
    last = step == 7
    chrome = (fs(title, "gfn", left=16, top=12, width=448)
              + btn(t["skip"], 100, 24, left=16, bottom=14, state="hover" if hover_skip else "")
              + btn(t["finish"] if last else t["next"], 110, 24, right=16, bottom=14)
              + (btn(t["back"], 100, 24, right=134, bottom=14) if step > 1 else ""))
    return frame(content + chrome, bg=WIZARD_BG, left=left, top=top, width=480, height=330)


# ---------------------------------------------------------------------------------------------------------------
# Settings panel (UI/SettingsFrame.lua): a canvas in the client's options window
# ---------------------------------------------------------------------------------------------------------------
def settings(left, top, reload_needed=False, auto_state="off", tooltip_row=None):
    col = (16, 330)
    out = [fs("Azeroth Unspoken 0.1.0", "gfnl", left=16, top=16)]

    def row(c, i, label, stepper=False, state=""):
        y = 48 + (i - 1) * 26     # ROW = 26 (#177: fourteen rows)
        if stepper:
            out.append(btn(label, 238, 24, left=col[c - 1], top=y))
            out.append(btn("-", 24, 24, left=col[c - 1] + 240, top=y))
            out.append(btn("+", 24, 24, left=col[c - 1] + 266, top=y))
        else:
            out.append(btn(label, 290, 24, left=col[c - 1], top=y, state=state))

    c1 = ["Addon: on", "Phrase language: English", ("Intensity: 50", True), "Style depth: Literary",
          "Pause between lines: 45 s", "Chat: private narrator only", f"Automatic sending: {auto_state}",
          "Default channel: automatic", "Proposal waits: 25 s", "'Speak' button: on", "Name from Total RP 3: on",
          "Pause the narrator", "Reopen the setup guide"]
    c2 = ["Narrator box: on", ("Text duration: 8 s", True), "Reading speed: 14 characters/s",
          ("Background opacity: 80%", True), ("Text size: 14", True), "Reduce motion: off",
          "Position locked: off", "Move the box back to the middle", "History", "Try the narrator",
          "Character soul...", "Character journal...", "Relationships...", "Read others' Total RP 3: off"]
    for c, items in ((1, c1), (2, c2)):
        for i, it in enumerate(items, 1):
            label, step = (it if isinstance(it, tuple) else (it, False))
            row(c, i, label, step, state="hover" if tooltip_row == (c, i) else "")
    out.append(fs("Modules (* = coming, not active yet)", "gfn", left=16, top=418))
    mods = ["Personal: on", "World: on", "NPC dialogues: on", "Memory: on", "Emotions: on", "Relationships: on",
            "Stories: on", "Social *: on", "Chat proposals: on", "Audio *: off"]
    for i, m in enumerate(mods):
        out.append(btn(m, 150, 24, left=16 + (i % 4) * 156, top=440 + (i // 4) * 26))
    help_ = ""
    if reload_needed:
        out.append(btn("Reload now", 290, 24, left=330, top=414))
        help_ = ("lines in Italiano arrive with the next reload of the interface: until then they stay in English. "
                 "Type /reload or use the button in the settings.\n\n")
    help_ += ("Private narrator only (default): lines appear in the box and stay visible to you alone. Nothing goes to chat."
              "\n\nLines available in this language: 4182, from 9 packs.\n\nIn the open world WoW only allows /say after a "
              "key press or a click: the addon never writes to chat on its own, except in the 'automatic' mode you chose "
              "yourself. The 'speak' key and the immediate pause are bound under Options > Keybindings > AddOns.\n\nCommands: /au help")
    # #179: under the last row of the module grid (440 + 2 * 26 + 24 + 10), not over it
    out.append(fs(help_, "gfhs", left=16, top=526, width=600))
    return frame("".join(out), left=left, top=top, width=660, height=640)


# ---------------------------------------------------------------------------------------------------------------
# Journal (UI/JournalFrame.lua): 600 x 500, 11 rows of 28, seven tabs
# ---------------------------------------------------------------------------------------------------------------
JOURNAL_TABS = [("memories", "Memories"), ("places", "Places"), ("flags", "Flags"), ("session", "Session"),
                ("stories", "Stories"), ("relations", "Relationships"), ("people", "People met")]


def journal(left, top, tab, rows, note="", page=(1, 1), stats="memory: 14 memories (2 permanent), 9 places, 3 flags.",
            armed=False):
    out = [fs("Character journal", "gfnl", left=16, top=12),
           fs("Your character's memories: only significant moments, never chat text. You can delete them or make them "
              "permanent; the addon cannot write files, so to export them copy the text.", "gfhs", left=16, top=38,
              width=568)]
    width = min(110, 568 // len(JOURNAL_TABS) - 4)
    for i, (tid, label) in enumerate(JOURNAL_TABS):
        out.append(btn(sel(label, tid == tab), width, 24, left=16 + i * (width + 4), top=78))
    for i, r in enumerate(rows[:11]):
        y = 112 + i * 28
        text, actions = (r if isinstance(r, tuple) else (r, []))
        out.append(fs(text, "gfh", mode="trunc", left=16, top=y + 6, width=500))
        for k, a in enumerate(actions[:2]):
            out.append(btn(a, 24, 24, left=528 + k * 28, top=y))
    if not rows:
        out.append(fs("|cff9d9d9dNothing to show.|r", "gfh", left=16, top=118, width=500))
    out.append(fs(note, "gfhs", left=16, bottom=84, width=568))
    out.append(btn("<", 28, 24, left=16, bottom=52, state="" if page[0] > 1 else "disabled"))
    out.append(fs(f"page {page[0]} of {page[1]}", "gfn", left=52, bottom=57, width=140))
    out.append(btn(">", 28, 24, left=196, bottom=52, state="" if page[0] < page[1] else "disabled"))
    out.append(fs(stats, "gfhs", right=16, bottom=58, width=340, extra=";text-align:right"))
    out.append(btn("Export", 110, 24, left=16, bottom=16))
    out.append(btn("Confirm: forget" if armed else "Forget everything", 170, 24, left=136, bottom=16))
    out.append(btn("Close", 110, 24, right=16, bottom=16))
    return frame("".join(out), bg=FRAME_BG, left=left, top=top, width=600, height=500)


def export_window(left, top, title, text):
    out = [fs(title, "gfnl", left=16, top=12),
           fs("Select the text and copy it with Ctrl+C. The addon cannot write files.", "gfhs", left=16, top=40, width=568),
           f'<div class="abs chatfont" style="left:16px;top:64px;right:36px;bottom:52px;overflow:hidden;white-space:pre-wrap;'
           f'line-height:1.25"><span class="sel" style="background:#3a5fbf">{wow(text)}</span></div>',
           '<div class="abs" style="right:12px;top:64px;bottom:52px;width:16px;background:rgba(255,255,255,0.08);'
           'border:1px solid #444"><div style="height:40px;background:#666;margin:18px 2px"></div></div>',
           btn("Close", 110, 24, right=16, bottom=16)]
    return frame("".join(out), bg=(0.02, 0.02, 0.05, 0.98), left=left, top=top, width=600, height=440)


# ---------------------------------------------------------------------------------------------------------------
# Relationships (UI/RelationsFrame.lua): 640 x 758 (list), 914 (player detail)
# ---------------------------------------------------------------------------------------------------------------
REL_OPTIONS = [("Automatic NPCs", "on"), ("Suggest people", "on"), ("Register by itself", "off"),
               ("Attraction axis", "off"), ("Recognise on target", "off"), ("Recognise nearby", "off"),
               ("Share with the account", "off")]
REL_PRIVACY = "No chat or whisper content is read or saved. Players join the list only through an action of yours."
REL_SHARE_WARNING = ("Shared list. Your choices about people (axes, labels, feelings, notes, tags) would be kept in the account "
                     "and ALL your characters would share the same opinions of them: Privacy: anyone using this account sees "
                     "them, and the file may travel with your saved variables. Role play: a character would feel what another "
                     "one chose. Observations (when and where each character met someone) stay with each character. Choices a "
                     "character already holds stay its own until you share them.")


def relations(left, top, view, height=758, rows=None, cands=None, detail=None, share_armed=False, options=None,
              hover_option=None, candidates=3):
    out = [fs("Relationships", "gfnl", left=16, top=12),
           fs("How you stand with the people you meet: NPCs are worked out automatically (dialogs, quests, merchants), "
              "players are chosen by you. There is never any chat or whisper text here, and nothing goes online.",
              "gfhs", left=16, top=36, width=608),
           btn(sel("Relationships", view != "people"), 150, 24, left=16, top=76),
           btn(sel(f"People met ({candidates})", view == "people"), 190, 24, left=170, top=76)]
    top_row, row_h = 162, 26
    if view == "list":
        out += [btn("All", 130, 22, left=16, top=110), btn("Label: any", 190, 22, left=152, top=110),
                fs("Search", "gfn", left=356, top=114, width=60), edit("", 190, 22, left=420, top=110)]
        cols = [("Name", 16, 140), ("Type", 160, 54), ("Label", 218, 112), ("Disposition", 334, 112),
                ("Last seen v", 450, 84), ("Encounters", 538, 86)]
        for name, x, w in cols:
            out.append(btn(name, w, 20, left=x, top=138))
        for i, r in enumerate((rows or [])[:12]):
            y = top_row + i * row_h
            # the cell texts are regions of the window, the row is a child button: the client draws the child frame
            # above every layer of its parent, so the opaque button is predicted to hide the texts (review UI-01)
            for (name, x, w), cell in zip(cols, r):
                out.append(fs(cell, "gfh", mode="trunc", left=x + 4, top=y + 6, width=w - 8))
            out.append(btn("", 608, row_h - 2, left=16, top=y))
        if not rows:
            out.append(fs("|cff9d9d9dNo relationships yet.|r", "gfh", left=20, top=top_row + 6, width=132, mode="trunc"))
    elif view == "people":
        out += [fs("Add a player", "gfn", left=16, top=114, width=120), edit("", 250, 22, left=140, top=110),
                btn("Add to the list", 130, 22, left=398, top=110),
                fs("The addon suggests people you meet (group, trades, Total RP 3 profiles, private replies). No one joins "
                   "the list without your click on +. Suggestions last only for this session.", "gfhs", left=16, top=138,
                   width=608)]
        for i, (name, src) in enumerate(cands or []):
            y = top_row + i * row_h
            out.append(fs(f"{name}  |cff9d9d9d{src}|r", "gfh", left=20, top=y + 6, width=480))
            out.append(btn("+", 28, 22, left=548, top=y))
            out.append(btn("x", 28, 22, left=580, top=y))
        if not cands:
            out.append(fs("|cff9d9d9dNo suggestions this session.|r", "gfh", left=20, top=top_row + 6, width=480))
    elif view == "detail":
        out += detail_widgets(detail)
    if view != "detail":
        py = top_row + 12 * row_h + 6
        out += [btn("<", 28, 24, left=16, top=py, state="disabled"),
                fs("page 1 of 1", "gfn", left=52, top=py + 4, width=140),
                btn(">", 28, 24, left=196, top=py, state="disabled"),
                fs("relationships: 9 NPCs, 4 players, 3 suggested people.", "gfhs", left=300, top=py + 4, width=324,
                   extra=";text-align:right")]
    opts = options or REL_OPTIONS
    for i, (name, state) in enumerate(opts):
        label = "Confirm: share" if (share_armed and name.startswith("Share")) else f"{name}: {state}"
        out.append(btn(label, 200, 22, left=16 + (i % 3) * 204, bottom=104 - (i // 3) * 28,
                       state="hover" if hover_option == i else ""))
    out.append(fs(REL_SHARE_WARNING if share_armed else REL_PRIVACY, "gfhs", left=16, bottom=132, width=608))
    out += [btn("Export", 110, 24, left=16, bottom=16), btn("Forget everything", 190, 24, left=136, bottom=16),
            btn("Close", 110, 24, right=16, bottom=16)]
    return frame("".join(out), bg=FRAME_BG, left=left, top=top, width=640, height=height)


AXES = [("Familiarity", 0, 100), ("Trust", -100, 100), ("Respect", -100, 100), ("Affection", -100, 100),
        ("Fear", 0, 100), ("Loyalty", -100, 100)]


def detail_widgets(d):
    is_player = d["kind"] == "player"
    out = [fs(f"{d['name']}  |cff9d9d9d({'Player' if is_player else 'NPC'})|r", "gfnl", left=16, top=108, width=608),
           fs(f"Label: {d['label']}   Disposition: {d['disposition']}", "gfh", left=16, top=132, width=608),
           fs("What you chose", "gfn", left=16, top=156, width=608)]
    for i, ((name, lo, hi), v) in enumerate(zip(AXES, d["axes"])):
        y = 176 + i * 26
        out += [fs(name, "gfn", left=16, top=y + 5, width=112), slider(v, lo, hi, 300, left=134, top=y + 2),
                fs(str(v), "gfh", left=444, top=y + 5, width=44, extra=";text-align:right"),
                btn("-", 24, 22, left=496, top=y), btn("+", 24, 22, left=524, top=y)]
    y = 176 + 7 * 26 + 4      # rows are built for all seven axes; attraction (off) is hidden but keeps its room
    out += [fs("Label", "gfn", left=16, top=y + 5, width=112), btn(d["label_btn"], 200, 24, left=134, top=y),
            edit(d.get("custom", ""), 200, 22, left=346, top=y + 1)]
    y += 30
    out += [fs("Feeling", "gfn", left=16, top=y + 5, width=112), btn(f"Feeling: {d['f1']}", 150, 24, left=134, top=y),
            btn(f"and: {d['f2']}", 150, 24, left=288, top=y), btn("Typical axes", 150, 24, left=442, top=y)]
    y += 30
    out += [fs("Note", "gfn", left=16, top=y + 5, width=112), edit(d["note"], 480, 22, left=134, top=y + 1)]
    y += 30
    out += [fs("Tags", "gfn", left=16, top=y + 5, width=112), edit(d["tags"], 480, 22, left=134, top=y + 1)]
    y += 32
    out.append(fs("How you see them (shapes the lines; 'unknown' leaves it to the addon)", "gfn", left=16, top=y + 5,
                  width=608))
    y += 22
    for r, ids in enumerate(d["traits"]):
        for c, label in enumerate(ids):
            out.append(btn(label, 196, 24, left=16 + c * 204, top=y + r * 28))
    y += 2 * 28 + 6
    if is_player:
        out += [fs("What the addon observed", "gfn", left=16, top=y + 2, width=608),
                fs(d["seen_line"], "gfhs", left=16, top=y + 22, width=608),
                fs(d["seen_facts"], "gfhs", left=16, top=y + 52, width=608)]
        y += 124
        out += [btn(d.get("forget", "Forget observations"), 200, 24, left=16, top=y),
                btn(d.get("delete", "Remove person"), 200, 24, left=226, top=y),
                btn("Back to the list", 140, 24, left=436, top=y)]
        if d.get("scope"):
            out.append(btn(d["scope"], 330, 24, left=16, top=y + 32))
    else:
        out += [btn("Remove person", 200, 24, left=16, top=y), btn("Back to the list", 140, 24, left=226, top=y)]
    return out


# ---------------------------------------------------------------------------------------------------------------
# Profile (UI/ProfileFrame.lua): 680 x 690
# ---------------------------------------------------------------------------------------------------------------
def profile(left, top, rows, avoided, trp3=True, archetype="Hopeful traveler",
            arch_help="Cheerful and curious, finds hope at every turn of the road."):
    out = [fs("Character soul", "gfnl", left=16, top=12),
           fs("All optional: with no choices the narrator stays neutral. Each trait is an intensity from 0 to 100, and they "
              "can coexist; an archetype only fills the sliders. Traits weigh lines, they never force them; avoided topics "
              "and a silenced inner voice are never contradicted.", "gfhs", left=16, top=40, width=648),
           fs("Archetype", "gfn", left=16, top=88, width=130), btn(archetype, 170, 24, left=150, top=83),
           fs(arch_help, "gfhs", left=332, top=88, width=332)]
    y = 120
    for name, value, text, source, explicit in rows:
        out.append(fs(name, "gfn", left=16, top=y + 5, width=170))
        if value is None:
            out.append(btn(text, 170, 24, left=190, top=y))
        else:
            out += [slider(value, 0, 100, 200, left=190, top=y + 4), fs(text, "gfhs", left=400, top=y + 6, width=120)]
        if explicit:
            out.append(btn("x", 24, 24, left=526, top=y))
        out.append(fs(source, "gfhs", left=556, top=y + 6, width=90))
        y += 26
    out.append(fs("Topics to avoid (never in lines)", "gfn", left=16, top=y + 6))
    topics = ["death", "blood", "betrayal", "family", "religion", "the undead", "demons", "romance"]
    for i, tp in enumerate(topics):
        out.append(btn(sel(tp, tp in avoided), 132, 24, left=16 + (i % 4) * 160, top=y + 30 + (i // 4) * 28))
    if trp3:
        out.append(btn("Traits from Total RP 3: off", 250, 24, left=16, bottom=50))
    out += [btn("Neutral profile", 150, 24, left=16, bottom=16), btn("Close", 110, 24, right=16, bottom=16)]
    return frame("".join(out), bg=FRAME_BG, left=left, top=top, width=680, height=690)


# ---------------------------------------------------------------------------------------------------------------
# NPC dialogue (UI/DialogueFrame.lua): 380 wide, header band, buttons of 22 every 26
# ---------------------------------------------------------------------------------------------------------------
def dialogue(left, top, title, line=None, choices=(), font=13, alpha=0.92, hover=None):
    bg = (0.04, 0.04, 0.07, 0.85 * alpha)
    head = (f'<div class="abs" style="left:0;right:0;top:0;height:22px;background:rgba(77,51,8,0.95)">'
            + fs("|cffffd060addon ambient dialogue|r", "gfns", left=8, top=5) + btn("x", 22, 18, right=2, top=2, font=11)
            + "</div>")
    out = [head, fs(title, "gfh", left=8, right=8, top=28, extra=f";font-size:{font}px")]
    y = 44
    if line:
        out.append(f'<div class="fs gfh" style="left:8px;right:8px;top:48px;font-size:{font}px;white-space:pre-wrap">'
                   f'{wow("«" + line + "»")}</div>')
        # an estimate of the wrapped height of the line at this width (Georgia, ~6.6 px per character at 13 px)
        chars_per_line = int(364 / (font * 0.5))
        n = max(1, -(-len(line) // chars_per_line))
        y += n * round(font * 1.25) + 8
    for i, c in enumerate(choices):
        out.append(btn(c, 364, 22, left=8, top=y, state="hover" if hover == i else ""))
        y += 26
    return frame("".join(out), bg=bg, left=left, top=top, width=380, height=y + 8)
