"""Checks of the arc definitions and the dialogue scripts held by the archive (#143, ADR 0027).

The game checks the same data when it loads (`StoryArcs:Check`, `NPCAlive:Check`, reported by the validator as `badArc` and
`badDialogue`); these checks run on the archive, before anything is written to a pack folder, and add the rule on the words
a reply puts in the player's mouth. Each function returns a list of `(level, ref, message)` with level `error` or `warning`.
Pure functions over the decoded definitions: the database is only read by `store.check_structures`.
"""
import re

TRIGGERS = ("zone", "death", "level", "npc", "flag", "player")
BASE_STATES = ("LOCKED", "DISCOVERED", "REFLECTED", "RESOLVED")
ARC_FIELDS = {"id", "pack", "subject", "topic", "states", "choices", "steps"}
STEP_FIELDS = {"from", "to", "on", "when", "wait", "choose"}
MAX_CHOICES = 3          # replies shown at once (Systems/NPCAlive.lua, GDD 7.3)
LABEL_BYTES = 70         # NPCAlive.LABEL_BYTES: the longest reply
EVENTS = {"open": "arc_open", "step": "arc_step", "resolve": "arc_resolve"}
LANG_CODES = {"itIT": "it", "enUS": "en"}   # the short code a reply label is written under

# Replies that put words in the player's mouth (ADR 0020, item 3): a reply is a question or an action, never a feeling, a
# trait, a moral decision or a promise attributed to the character. It is a lint for the obvious cases, per language, made
# of whole-word phrases (lower case, letters and digits only, so an apostrophe is a space: "I'm afraid" is "i m afraid");
# a question is always neutral, and a reply that the owner means to be the player's own words declares `editable = true`.
# The game checks the same list (`NPCAlive.PUTS_WORDS` in Systems/NPCAlive.lua; Tests/check_archive.py checks the two match).
PUTS_WORDS = {
    "en": ["i feel", "i felt", "i love", "i loved", "i hate", "i hated", "i fear", "i miss", "i regret", "i swear", "i promise",
           "i forgive", "i despise", "i admire", "i envy", "i believe", "i will always", "i am afraid", "i m afraid",
           "i am sad", "i m sad", "i am happy", "i m happy", "i am angry", "i m angry", "i am proud", "i m proud",
           "i am ashamed", "i m ashamed", "i am a", "i m a", "i am an", "i m an", "my heart", "my soul", "my fear",
           "my shame", "my honor", "my honour", "never forget"],
    "it": ["mi sento", "amo", "odio", "temo", "ho paura", "mi manca", "mi pento", "giuro", "prometto", "perdono",
           "disprezzo", "ammiro", "invidio", "credo", "sono un", "sono una", "sono triste", "sono felice", "sono stanco",
           "sono stanca", "sono arrabbiato", "sono arrabbiata", "sono fiero", "sono fiera", "sono spaventato",
           "sono spaventata", "non mi fido", "non perdono", "il mio cuore", "il mio dolore"],
}


def _is_list(v):
    return isinstance(v, list)


def short_langs(languages):
    """The short codes a reply label needs for the languages of a pack (`itIT` -> `it`)."""
    return [LANG_CODES.get(l, l[:2].lower()) for l in languages]


def words(text):
    """The text as the phrase lists see it: lower case, letters and digits only, padded with a space on each side."""
    return " " + " ".join(re.sub(r"[^a-z0-9]+", " ", text.lower()).split()) + " "


def neutral(label, lang):
    """True when a reply label does not put words in the player's mouth: a question, or nothing that states a feeling, a
    trait, a moral decision or a promise (see `PUTS_WORDS`). `lang` is the short code (`it`, `en`)."""
    if "?" in label:
        return True
    w = words(label)
    return not any(" %s " % phrase in w for phrase in PUTS_WORDS.get(lang, ()))


# ---- arcs ----------------------------------------------------------------------------------------------------------

def check_arc(id, d, texts, languages, rule_states=None):
    """The problems of one arc definition `d` with its journal texts `texts` ({lang: text dict}) in the languages of its
    pack. `rule_states` is the set of (state, choice) pairs for which an intention speaks (None: not checked)."""
    out = []

    def err(msg):
        out.append(("error", id, msg))

    def warn(msg):
        out.append(("warning", id, msg))
    for k in d:
        if k not in ARC_FIELDS:
            err("unknown field '%s' (arcs have no rewards and no effects on the game)" % k)
    if d.get("id") not in (None, id):
        err("the key '%s' and the id '%s' differ" % (id, d.get("id")))
    states = d.get("states") or list(BASE_STATES)
    if not _is_list(states) or len(states) < 3:
        err("at least three states are needed: LOCKED, one or more in between, RESOLVED")
        return out
    if states[0] != "LOCKED" or states[-1] != "RESOLVED":
        err("the states must start at LOCKED and end at RESOLVED")
    if len(set(states)) != len(states):
        err("a state is repeated")
    choices = d.get("choices") or {}
    if not isinstance(choices, dict):
        err("choices must be a table")
        choices = {}
    for key, c in choices.items():
        opts = c.get("options") if isinstance(c, dict) else None
        if not _is_list(opts) or not 2 <= len(opts) <= 3:
            err("choice '%s': two or three options are needed" % key)
        elif len(set(opts)) != len(opts):
            err("choice '%s': an option is repeated" % key)
    steps = d.get("steps")
    if not _is_list(steps) or not steps:
        err("no steps")
        return out
    outgoing, chosen = {}, set()
    for i, st in enumerate(steps, 1):
        name = "step %d" % i
        if not isinstance(st, dict):
            err("%s is not a table" % name)
            continue
        for k in st:
            if k not in STEP_FIELDS:
                err("%s: unknown field '%s'" % (name, k))
        fr, to = st.get("from"), st.get("to")
        if fr not in states or to not in states:
            err("%s: dangling transition %s -> %s (a state that is not declared)" % (name, fr, to))
        elif states.index(to) != states.index(fr) + 1:
            err("%s: from %s one goes only to the next state, not to %s" % (name, fr, to))
        else:
            outgoing.setdefault(fr, []).append(st)
        on = st.get("on")
        if not _is_list(on) or not on:
            err("%s: at least one event in `on`" % name)
        else:
            for t in on:
                if t not in TRIGGERS:
                    err("%s: unknown event '%s'" % (name, t))
            if fr == "LOCKED" and "player" in on:
                err("%s: an arc does not open by itself on a choice: it needs a real event" % name)
        if st.get("choose") is not None:
            if st["choose"] not in choices:
                err("%s: dangling choice '%s' (not defined in `choices`)" % (name, st["choose"]))
            chosen.add(st["choose"])
            if fr == "LOCKED":
                err("%s: the opening step cannot ask for a choice" % name)
        if st.get("wait") is not None and (isinstance(st["wait"], bool) or not isinstance(st["wait"], (int, float)) or st["wait"] < 0):
            err("%s: `wait` is a number of seconds" % name)
    # the path from LOCKED to RESOLVED: every state must be reached (a state nothing leads to, or that leads nowhere, is dead)
    reach, frontier = {"LOCKED"}, ["LOCKED"]
    while frontier:
        s = frontier.pop()
        for st in outgoing.get(s, []):
            if st.get("to") not in reach:
                reach.add(st["to"])
                frontier.append(st["to"])
    for s in states[:-1]:
        if s not in outgoing:
            err("no step leaves the state %s" % s)
    for s in states:
        if s not in reach:
            err("the state %s is unreachable from LOCKED" % s)
    for key in choices:
        if key not in chosen:
            warn("choice '%s' is never asked by a step" % key)
    # journal texts: every language of the pack, every state, every choice and option
    for lang in languages:
        t = texts.get(lang)
        if not isinstance(t, dict):
            err("missing the journal texts in %s" % lang)
            continue

        def need(value, what, maxlen=None):
            if not isinstance(value, str) or not value.strip():
                err("text '%s' (%s) missing" % (what, lang))
            elif maxlen and len(value.encode("utf-8")) > maxlen:
                err("text '%s' (%s): more than %d bytes" % (what, lang, maxlen))
            elif value.count("{") != value.count("}"):
                err("text '%s' (%s): unbalanced braces" % (what, lang))
        need(t.get("title"), "title", LABEL_BYTES)
        need(t.get("summary"), "summary")
        for s in states:
            if s != "LOCKED":
                need((t.get("states") or {}).get(s), "states.%s" % s)
        for key, c in choices.items():
            tc = (t.get("choices") or {}).get(key) or {}
            need(tc.get("prompt"), "choices.%s.prompt" % key)
            for o in (c.get("options") if isinstance(c, dict) else None) or []:
                to = (tc.get("options") or {}).get(o) or {}
                need(to.get("label"), "choices.%s.%s.label" % (key, o), LABEL_BYTES)
                need(to.get("note"), "choices.%s.%s.note" % (key, o))
                if isinstance(to.get("label"), str) and re.search(r"[{}]", to["label"]):
                    err("option '%s' (%s): no placeholders in the options" % (o, lang))
    for lang in texts:
        if lang not in languages:
            warn("journal texts in %s, which is not a language of the pack" % lang)
    # the lines: a step without a line advances in silence, which is allowed (a warning)
    if rule_states is not None:
        for i, st in enumerate(steps, 1):
            if not isinstance(st, dict) or st.get("to") not in states:
                continue
            ev = EVENTS["open"] if st.get("from") == "LOCKED" else EVENTS["resolve"] if st.get("to") == "RESOLVED" else EVENTS["step"]
            if not any(e == ev and (s is None or s == st["to"]) for e, s in rule_states):
                warn("step %d (%s): no line for the event %s, the arc advances in silence" % (i, st["to"], ev))
    return out


# ---- dialogue scripts ----------------------------------------------------------------------------------------------

def resolve_script(key, scripts, seen=()):
    """The script with `extends` resolved (own nodes and replies over the inherited ones), like `NPCAlive:Script`."""
    s = scripts.get(key) or {}
    base = {}
    if s.get("extends") and s["extends"] != key and s["extends"] in scripts and s["extends"] not in seen:
        base = resolve_script(s["extends"], scripts, seen + (key,))
    out = {"role": s.get("role"), "npcID": s.get("npcID"), "start": s.get("start") or base.get("start"),
           "nodes": dict(base.get("nodes", {})), "choices": dict(base.get("choices", {}))}
    out["nodes"].update(s.get("nodes") or {})
    out["choices"].update(s.get("choices") or {})
    return out


def check_script(key, scripts, languages, event_speakers, roles=None, relations=None):
    """The problems of one dialogue script. `scripts` maps every key to its raw definition (for `extends`),
    `event_speakers` maps an event to the set of voices of the intentions that speak it (an event with none is a node that
    says nothing), `roles` is the set of valid roles (None: not checked), `relations` the valid relation sources."""
    out = []

    def err(msg):
        out.append(("error", key, msg))

    def warn(msg):
        out.append(("warning", key, msg))
    raw = scripts[key]
    if raw.get("extends") and raw["extends"] not in scripts:
        err("extends '%s' does not exist" % raw["extends"])
    if not raw.get("role") and raw.get("npcID") is None:
        err("neither role nor npcID")
    if roles is not None and raw.get("role") and raw["role"] not in roles:
        err("unknown role '%s'" % raw["role"])
    s = resolve_script(key, scripts)
    nodes, replies = s["nodes"], s["choices"]
    if not s["start"] or s["start"] not in nodes:
        err("the opening node is missing")
    else:
        seen, stack = set(), [s["start"]]
        while stack:
            n = stack.pop()
            if n in seen:
                continue
            seen.add(n)
            for rid in (nodes.get(n) or {}).get("choices") or []:
                go = (replies.get(rid) or {}).get("go")
                if go in nodes:
                    stack.append(go)
        for n in nodes:
            if n not in seen:
                warn("node '%s' is unreachable from '%s'" % (n, s["start"]))
    for n, node in nodes.items():
        if not isinstance(node, dict) or not isinstance(node.get("event"), str):
            err("node '%s': no event" % n)
            continue
        speakers = event_speakers.get(node["event"])
        if not speakers:
            err("node '%s': no line for the event '%s'" % (n, node["event"]))
        elif speakers != {"npc"}:
            err("node '%s': the event '%s' has lines that are not of the npc voice" % (n, node["event"]))
        lst = node.get("choices") or []
        if len(lst) > MAX_CHOICES:
            warn("node '%s': more than %d replies, only the first ones show" % (n, MAX_CHOICES))
        closes = not lst
        for rid in lst:
            r = replies.get(rid)
            if r is None:
                err("node '%s': dangling reply '%s' (not defined)" % (n, rid))
                continue
            target = nodes.get(r.get("go")) if r.get("go") else None
            if r.get("go") and target is None:
                err("reply '%s': dangling transition, the node '%s' does not exist" % (rid, r["go"]))
            if not r.get("go") or (target is not None and not (target.get("choices") or [])):
                closes = True
        if not closes:
            warn("node '%s': no reply closes the dialogue" % n)
    codes = short_langs(languages)
    for rid, r in replies.items():
        label = r.get("label") if isinstance(r, dict) else None
        for code in codes:
            text = label.get(code) if isinstance(label, dict) else None
            if not isinstance(text, str) or not text.strip():
                err("reply '%s': missing the text '%s'" % (rid, code))
                continue
            if len(text.encode("utf-8")) > LABEL_BYTES:
                err("reply '%s' (%s): more than %d bytes" % (rid, code, LABEL_BYTES))
            if re.search(r"[{}]", text):
                err("reply '%s' (%s): no placeholders in the replies" % (rid, code))
            if not neutral(text, code) and not r.get("editable"):
                err("reply '%s' (%s) puts words in the player's mouth (a feeling, a trait, a decision or a promise): make it "
                    "a question or an action, or mark it `editable = true`" % (rid, code))
        if isinstance(label, dict):
            for code in label:
                if code not in codes:
                    warn("reply '%s': text in '%s', which is not a language of the pack" % (rid, code))
        flag = r.get("flag") if isinstance(r, dict) else None
        if flag is not None and not re.fullmatch(r"[a-z0-9_]+", str(flag)):
            err("reply '%s': invalid flag '%s'" % (rid, flag))
        rel = r.get("relation") if isinstance(r, dict) else None
        if rel is not None and relations is not None and rel not in relations:
            err("reply '%s': unknown relation source '%s'" % (rid, rel))
    return out
