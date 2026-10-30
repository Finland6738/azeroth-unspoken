"""The authoring archive: schema, importer of the pack folders, exporter, the committed overlay and the review flow.

See docs/adr/0026-sqlite-authoring-archive-and-exporter.md. In short:

- the pack folders (`AzerothUnspoken*/`) hold the **approved** content and stay what the game reads;
- `authoring/*.csv` (the overlay) holds what is not approved yet (drafts, content in review, retired content), the
  authors, the reviews and the changelog, as text that diffs well in a pull request;
- the SQLite file is generated from both (`build`) and is never committed;
- `export` writes the pack folders from the **approved** intentions and moves them out of the overlay.
"""
import csv
import datetime
import hashlib
import io
import json
import os
import re
import sqlite3

import lualit
import packfiles
from lualit import Unsupported

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
OVERLAY_DIR = os.path.join(ROOT, "authoring")
DB_PATH = os.path.join(ROOT, "build", "authoring.sqlite")

STATES = ("draft", "review", "approved", "retired")
SPEAKERS = ("narrator", "inner", "character", "npc")
DEPTHS = ("natural", "literary", "elevated")
LEGACY = "legacy"

# the selection index of ADR 0024 (Engine.INDEX_DIMENSIONS): scope, condition, key prefix, kind of value
INDEX_DIMENSIONS = (
    (None, "zone", "z:", str), (None, "subzone", "s:", str), ("place", "mapID", "pm:", (int, float)),
    ("place", "zone", "pz:", str), (None, "class", "c:", str), (None, "race", "r:", str), (None, "mood", "m:", str),
    (None, "ctype", "t:", str), (None, "time", "h:", str),
)

OVERLAY_TABLES = {
    # file: (table, columns, key)
    "authors.csv": ("author", ("id", "name", "kind", "note"), ("id",)),
    "intentions.csv": ("intention", ("id", "pack_id", "state", "author_id", "events", "category", "speaker", "form",
                                     "styles", "depth", "tags", "weight", "cooldown", "conditions", "extra",
                                     "attribution", "invented_lore"), ("id",)),
    "variants.csv": ("variant", ("intention_id", "lang", "ord", "text", "depth"), ("intention_id", "lang", "ord")),
    "reviews.csv": ("review", ("id", "intention_id", "reviewer", "verdict", "note", "date"), ("id",)),
    "changelog.csv": ("changelog", ("id", "date", "author", "action", "intention_id", "from_state", "to_state", "note"), ("id",)),
}
JSON_COLUMNS = {"events", "styles", "depth", "tags", "conditions", "extra"}


class ArchiveError(Exception):
    """A request the archive refuses (unknown id, invalid transition, invalid content)."""


# ---- database ----------------------------------------------------------------------------------------------------

class Archive(sqlite3.Connection):
    """A connection that also carries the report of the import that built it."""
    report = None


def connect(path=":memory:"):
    if path != ":memory:":
        os.makedirs(os.path.dirname(os.path.abspath(path)), exist_ok=True)
    con = sqlite3.connect(path, factory=Archive)
    con.row_factory = sqlite3.Row
    con.execute("PRAGMA foreign_keys = ON")
    return con


def create_schema(con):
    with open(os.path.join(HERE, "schema.sql"), encoding="utf-8") as f:
        con.executescript(f.read())
    con.execute("INSERT INTO meta VALUES ('schema', '1')")


def now():
    """The time stamp of a review or changelog row (UTC, to the second); `AU_ARCHIVE_NOW` fixes it for the tests."""
    return os.environ.get("AU_ARCHIVE_NOW") or datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")


def row_id(*parts):
    """A sortable id: the time stamp and a short hash of what the row is about."""
    stamp = now().replace("-", "").replace(":", "")
    return stamp + "-" + hashlib.sha1("|".join(map(str, parts)).encode("utf-8")).hexdigest()[:10]


def jdump(v):
    return None if v is None else json.dumps(v, ensure_ascii=False, separators=(",", ":"))


def jload(s):
    return None if s is None else json.loads(s)


# ---- the selection index key of a rule (mirrors Engine.IndexKeys) --------------------------------------------------

def _pure(when):
    """No `chance`, no `func`, no code anywhere in the conditions: the rule can be placed in an index group."""
    if isinstance(when, dict):
        if lualit.LUA in when:
            return False
        for k, v in when.items():
            if k in ("chance", "func") or not _pure(v):
                return False
    elif isinstance(when, list):
        return all(_pure(x) for x in when)
    return True


def index_keys(when):
    """The groups of the selection index the conditions put a rule in (ADR 0024); ['*'] = the generic group."""
    if not isinstance(when, dict) or not _pure(when):
        return ["*"]
    for scope, name, prefix, kind in INDEX_DIMENSIONS:
        holder = when.get(scope) if scope else when
        if not isinstance(holder, dict):
            continue
        v = holder.get(name)
        values = v if isinstance(v, list) else [v] if v is not None else []
        if values and all(isinstance(x, kind) and not isinstance(x, bool) for x in values):
            keys = []
            for x in values:
                k = prefix + (x.lower() if isinstance(x, str) else str(x))
                if k not in keys:
                    keys.append(k)
            return keys
    return ["*"]


# ---- intentions ---------------------------------------------------------------------------------------------------

def ensure_author(con, id, name=None, kind="ai", note=""):
    if con.execute("SELECT 1 FROM author WHERE id = ?", (id,)).fetchone() is None:
        con.execute("INSERT INTO author VALUES (?, ?, ?, ?)", (id, name or id, kind, note))


def insert_intention(con, id, pack_id, rule, state="approved", author=LEGACY, attribution="", invented_lore=False,
                     origin="folders"):
    """Inserts one intention from a normalized rule dict (see packfiles.rule_data)."""
    pack = con.execute("SELECT region FROM pack WHERE id = ?", (pack_id,)).fetchone()
    if pack is None:
        raise ArchiveError("unknown pack: %s" % pack_id)
    rule = dict(rule)
    events = rule.pop("event", None) or []
    known = {k: rule.pop(k, None) for k in ("category", "speaker", "form", "styles", "depth", "tags", "weight", "cooldown",
                                            "conditions")}
    extra = dict(rule) or None
    keys = index_keys(known["conditions"])
    con.execute(
        "INSERT INTO intention (id, pack_id, state, author_id, events, category, speaker, form, styles, depth, tags, weight,"
        " cooldown, conditions, extra, ctx, region, attribution, invented_lore, origin) VALUES"
        " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
        (id, pack_id, state, author, jdump(events), known["category"], known["speaker"], known["form"],
         jdump(known["styles"]), jdump(known["depth"]), jdump(known["tags"]), known["weight"], known["cooldown"],
         jdump(known["conditions"]), jdump(extra), ",".join(keys), pack["region"], attribution or "", int(bool(invented_lore)),
         origin))


def set_variants(con, id, lang, variants):
    con.execute("DELETE FROM variant WHERE intention_id = ? AND lang = ?", (id, lang))
    con.executemany("INSERT INTO variant VALUES (?,?,?,?,?)",
                    [(id, lang, i, v["text"], v.get("depth")) for i, v in enumerate(variants)])


def reindex(con, ids=None):
    """Rebuilds the search indexes (intention_event, _register, _depth, _tag) from the JSON of the intentions."""
    where, args = "", ()
    if ids is not None:
        ids = list(ids)
        where, args = " WHERE id IN (%s)" % ",".join("?" * len(ids)), tuple(ids)
        for t in ("event", "register", "depth", "tag"):
            con.execute("DELETE FROM intention_%s WHERE intention_id IN (%s)" % (t, ",".join("?" * len(ids))), args)
    rows = con.execute("SELECT id, events, styles, depth, tags FROM intention" + where, args).fetchall()
    for table, col in (("event", "events"), ("register", "styles"), ("depth", "depth"), ("tag", "tags")):
        con.executemany("INSERT OR IGNORE INTO intention_%s VALUES (?,?,?)" % table,
                        [(r["id"], i, str(v)) for r in rows for i, v in enumerate(jload(r[col]) or [])])


def get_rule(con, id):
    """The rule of an intention as normalized data, the inverse of insert_intention."""
    r = con.execute("SELECT * FROM intention WHERE id = ?", (id,)).fetchone()
    if r is None:
        raise ArchiveError("unknown intention: %s" % id)
    out = {"event": jload(r["events"])}
    for k in ("category", "speaker", "form"):
        if r[k] is not None:
            out[k] = r[k]
    for k in ("styles", "depth", "tags", "conditions"):
        if r[k] is not None:
            out[k] = jload(r[k])
    for k in ("weight", "cooldown"):
        if r[k] is not None:
            out[k] = r[k]
    out.update(jload(r["extra"]) or {})
    return out


def get_variants(con, id, lang):
    out = []
    for v in con.execute("SELECT text, depth FROM variant WHERE intention_id = ? AND lang = ? ORDER BY ord", (id, lang)):
        item = {"text": v["text"]}
        if v["depth"]:
            item["depth"] = v["depth"]
        out.append(item)
    return out


# ---- the pack folders ---------------------------------------------------------------------------------------------

def parse_toc(path):
    meta, files = {}, []
    with open(path, encoding="utf-8") as f:
        for line in f.read().splitlines():
            line = line.strip()
            m = re.match(r"##\s*([^:]+):\s*(.*)$", line)
            if m:
                meta[m.group(1).strip()] = m.group(2).strip()
            elif line and not line.startswith("#"):
                files.append(line.replace("\\", "/"))
    return meta, files


def discover(root):
    """The files of the folders the archive reads: [(role, relative path, region, lang)]. Folders without a language or
    a region (the base, the example, the verses) are read only for the rules of `Data/Registry*.lua` of the base."""
    base = "AzerothUnspoken"
    out = []
    for d in sorted(os.listdir(root)):
        toc = os.path.join(root, d, d + ".toc")
        if not (d.startswith(base) and os.path.isfile(toc)):
            continue
        meta, files = parse_toc(toc)
        lang, region = meta.get("X-AzerothUnspoken-Language"), meta.get("X-AzerothUnspoken-Region")
        if d == base:
            out += [("rules", "%s/%s" % (d, f), None, None) for f in files if re.match(r"Data/Registry[A-Za-z]*\.lua$", f)]
        elif lang:
            out += [("texts", "%s/%s" % (d, f), region, lang) for f in files if f.endswith(".lua")]
        elif region:
            out += [("rules", "%s/%s" % (d, f), region, None) for f in files if f.endswith(".lua")]
    return out


def import_folders(con, root):
    """Reads the pack folders into the database as approved intentions. Returns a report dict (counts, skipped files).
    A rules file whose rules are computed by code (a loop, a helper function) is not archived: it stays Lua."""
    ensure_author(con, LEGACY, "Content written before the archive", "legacy")
    files = discover(root)
    skipped, problems, parsed = [], [], []
    rules = {}
    for role, rel, region, lang in files:
        if role != "rules":
            continue
        src = packfiles.read(os.path.join(root, rel))
        try:
            sf = packfiles.parse_rules(rel, src, region)
        except Unsupported as e:
            m = re.search(r'RegisterPack\(\{\s*id\s*=\s*"([^"]+)"', src)
            skipped.append({"path": rel, "pack_id": m.group(1) if m else None,
                            "reason": "the rules are computed by code (%s)" % e})
            continue
        if sf.pack_id in rules:
            problems.append("pack %s is in two rules files" % sf.pack_id)
            continue
        rules[sf.pack_id] = sf
        parsed.append(sf)
    skipped_packs = {s["pack_id"] for s in skipped if s["pack_id"]}
    for sf in parsed:
        con.execute("INSERT INTO pack VALUES (?,?,?,?,?)", (sf.pack_id, sf.pack_name or "", sf.region, jdump(sf.languages), sf.path))
        _store_file(con, sf, sf.pack_id)
        for id, entry in sf.entries.items():
            if con.execute("SELECT 1 FROM intention WHERE id = ?", (id,)).fetchone():
                problems.append("intention %s is in two packs" % id)
                continue
            insert_intention(con, id, sf.pack_id, entry.data)
    skipped_texts = {}
    for role, rel, region, lang in files:
        if role != "texts":
            continue
        try:
            sf = packfiles.parse_texts(rel, packfiles.read(os.path.join(root, rel)), region)
        except Unsupported as e:
            problems.append("%s: %s" % (rel, e))
            continue
        if sf.pack_id in skipped_packs:
            skipped_texts.setdefault(sf.pack_id, {}).setdefault(sf.lang, 0)
            skipped_texts[sf.pack_id][sf.lang] += len(sf.entries)
            continue
        if sf.pack_id not in rules:
            problems.append("%s: texts of an unknown pack %s" % (rel, sf.pack_id))
            continue
        if sf.lang != lang:
            problems.append("%s: language %s in the file, %s in the .toc" % (rel, sf.lang, lang))
        _store_file(con, sf, sf.pack_id)
        for id, entry in sf.entries.items():
            row = con.execute("SELECT pack_id FROM intention WHERE id = ?", (id,)).fetchone()
            if row is None:
                problems.append("%s: texts for the unknown intention %s" % (rel, id))
            elif row["pack_id"] != sf.pack_id:
                problems.append("%s: %s belongs to the pack %s" % (rel, id, row["pack_id"]))
            else:
                if con.execute("SELECT 1 FROM variant WHERE intention_id = ? AND lang = ?", (id, sf.lang)).fetchone():
                    problems.append("%s: texts of %s repeated in %s" % (rel, id, sf.lang))
                    continue
                set_variants(con, id, sf.lang, entry.data)
    for s in skipped:
        s["texts"] = skipped_texts.get(s["pack_id"], {})
    con.execute("INSERT OR REPLACE INTO meta VALUES ('skipped', ?)", (jdump(skipped),))
    con.execute("INSERT OR REPLACE INTO meta VALUES ('problems', ?)", (jdump(problems),))
    return {"skipped": skipped, "problems": problems}


def _store_file(con, sf, pack_id):
    con.execute("INSERT INTO source_file VALUES (?,?,?,?,?,?,?)",
                (sf.path, sf.role, pack_id, sf.region, sf.lang, sf.prelude, sf.epilogue))
    con.executemany("INSERT INTO source_chunk VALUES (?,?,?,?,?,?)",
                    [(sf.path, i, c[0], c[1], c[3], c[2]) for i, c in enumerate(sf.chunks)])


def load_file(con, path):
    """A SourceFile from the database (what export needs to write a file back)."""
    f = con.execute("SELECT * FROM source_file WHERE path = ?", (path,)).fetchone()
    sf = packfiles.SourceFile(path, f["role"], f["prelude"], f["epilogue"])
    sf.pack_id, sf.region, sf.lang = f["pack_id"], f["region"], f["lang"]
    for c in con.execute("SELECT kind, ref, text, sig FROM source_chunk WHERE path = ? ORDER BY seq", (path,)):
        sf.chunks.append((c["kind"], c["ref"], c["text"], c["sig"]))
    return sf


def export_folders(con, root, out_root=None, canonical=False):
    """Writes the pack folders from the approved intentions. `root` is where the folders are read for their layout
    (the layout is in the database), `out_root` where they are written (default: `root`). With `canonical`, every
    entry is rendered again instead of being kept as written (used to test the renderer). Returns the paths written."""
    out_root = out_root or root
    written = []
    paths = [r["path"] for r in con.execute("SELECT path FROM source_file ORDER BY path")]
    held = {}   # (pack, lang) -> ids some file of the database holds
    files = {p: load_file(con, p) for p in paths}
    for sf in files.values():
        if sf.role == "texts":
            held.setdefault((sf.pack_id, sf.lang), set()).update(c[1] for c in sf.chunks if c[0] == "entry")
    designated = {}
    for p in paths:
        if files[p].role == "texts":
            designated.setdefault((files[p].pack_id, files[p].lang), p)
    for p in paths:
        sf = files[p]
        if sf.role == "rules":
            current = {r["id"]: get_rule(con, r["id"]) for r in con.execute(
                "SELECT id FROM intention WHERE pack_id = ? AND state = 'approved' ORDER BY id", (sf.pack_id,))}
            render = packfiles.render_rule
        else:
            have = {c[1] for c in sf.chunks if c[0] == "entry"}
            if designated[(sf.pack_id, sf.lang)] == p:
                have |= {r["id"] for r in con.execute(
                    "SELECT DISTINCT intention_id AS id FROM variant v JOIN intention i ON i.id = v.intention_id"
                    " WHERE i.pack_id = ? AND v.lang = ?", (sf.pack_id, sf.lang))} - held[(sf.pack_id, sf.lang)]
            current = {}
            for id in sorted(have):
                row = con.execute("SELECT state FROM intention WHERE id = ?", (id,)).fetchone()
                v = get_variants(con, id, sf.lang)
                if row and row["state"] == "approved" and v:
                    current[id] = v
            render = packfiles.render_variants
        if canonical:
            sf.chunks = [c if c[0] == "gap" else (c[0], c[1], c[2], "-") for c in sf.chunks]
        text = packfiles.build(sf, current, render)
        target = os.path.join(out_root, p)
        if not os.path.exists(target) or packfiles.read(target) != text:
            packfiles.write(target, text)
            written.append(p)
    return written


# ---- the overlay (committed text) ---------------------------------------------------------------------------------

def _csv_text(columns, rows):
    buf = io.StringIO(newline="")
    w = csv.writer(buf, lineterminator="\n")
    w.writerow(columns)
    w.writerows(rows)
    return buf.getvalue()


def overlay_rows(con, name):
    """The rows of one overlay table as lists of strings, sorted by key. The overlay holds the intentions that are not in
    the folders as approved content: drafts, content in review, retired, and approved ones waiting for `export`."""
    table, columns, key = OVERLAY_TABLES[name]
    order = ", ".join(key)
    cols = ", ".join(columns)
    if table == "intention":
        rows = con.execute("SELECT %s FROM intention WHERE state != 'approved' OR origin = 'overlay' ORDER BY %s" % (cols, order))
    elif table == "variant":
        rows = con.execute("SELECT %s FROM variant WHERE intention_id IN (SELECT id FROM intention WHERE state != 'approved'"
                           " OR origin = 'overlay') ORDER BY %s" % (cols, order))
    elif table == "author":
        rows = con.execute("SELECT %s FROM author WHERE id != ? ORDER BY %s" % (cols, order), (LEGACY,))
    else:
        rows = con.execute("SELECT %s FROM %s ORDER BY %s" % (cols, table, order))
    out = []
    for r in rows:
        out.append(["" if r[c] is None else str(r[c]) for c in columns])
    return out


def save_overlay(con, directory=OVERLAY_DIR):
    """Writes the overlay files (LF, UTF-8, sorted): the same database always gives the same text."""
    for name, (table, columns, key) in OVERLAY_TABLES.items():
        rows = overlay_rows(con, name)
        path = os.path.join(directory, name)
        if not rows and not os.path.exists(path):
            continue
        text = _csv_text(columns, rows)
        if not os.path.exists(path) or packfiles.read(path) != text:
            packfiles.write(path, text)


def load_overlay(con, directory=OVERLAY_DIR):
    """Reads the overlay into the database; an intention of the overlay replaces the one of the folders with the same id."""
    ensure_author(con, LEGACY, "Content written before the archive", "legacy")
    data = {}
    for name, (table, columns, key) in OVERLAY_TABLES.items():
        path = os.path.join(directory, name)
        if not os.path.exists(path):
            data[name] = []
            continue
        with open(path, encoding="utf-8", newline="") as f:
            reader = csv.reader(f)
            header = next(reader, None)
            if header is not None and tuple(header) != columns:
                raise ArchiveError("%s: unexpected columns %s" % (path, header))
            data[name] = [row for row in reader if row]
    for row in data["authors.csv"]:
        con.execute("INSERT OR REPLACE INTO author VALUES (?,?,?,?)", row)
    _, cols, _ = OVERLAY_TABLES["intentions.csv"]
    replaced = []
    for row in data["intentions.csv"]:
        r = dict(zip(cols, row))
        if con.execute("SELECT 1 FROM intention WHERE id = ?", (r["id"],)).fetchone():
            con.execute("DELETE FROM intention WHERE id = ?", (r["id"],))   # variants and indexes go with it
        rule = {"event": json.loads(r["events"])}
        for k in ("category", "speaker", "form"):
            if r[k] != "":
                rule[k] = r[k]
        for k in ("styles", "depth", "tags", "conditions"):
            if r[k] != "":
                rule[k] = json.loads(r[k])
        for k in ("weight", "cooldown"):
            if r[k] != "":
                rule[k] = json.loads(r[k])
        if r["extra"] != "":
            rule.update(json.loads(r["extra"]))
        ensure_author(con, r["author_id"])
        insert_intention(con, r["id"], r["pack_id"], rule, r["state"], r["author_id"], r["attribution"],
                         r["invented_lore"] == "1", origin="overlay")
        replaced.append(r["id"])
    for row in data["variants.csv"]:
        iid, lang, ord_, text, depth = row
        con.execute("INSERT INTO variant VALUES (?,?,?,?,?)", (iid, lang, int(ord_), text, depth or None))
    for row in data["reviews.csv"]:
        con.execute("INSERT OR REPLACE INTO review VALUES (?,?,?,?,?,?)", row)
    for row in data["changelog.csv"]:
        con.execute("INSERT OR REPLACE INTO changelog VALUES (?,?,?,?,?,?,?,?)", [x if x != "" else None for x in row[:5]] + [
            row[5] or None, row[6] or None, row[7]])
    return replaced


def build_db(path=":memory:", root=ROOT, overlay=OVERLAY_DIR):
    """A fresh database from the pack folders and the overlay. Returns the connection."""
    if path != ":memory:" and os.path.exists(path):
        os.remove(path)
    con = connect(path)
    create_schema(con)
    report = import_folders(con, root)
    replaced = load_overlay(con, overlay)
    reindex(con)
    con.commit()
    con.execute("INSERT OR REPLACE INTO meta VALUES ('overlay_replaced', ?)", (jdump(replaced),))
    con.commit()
    con.report = report
    return con


# ---- the review flow ----------------------------------------------------------------------------------------------

TRANSITIONS = {
    "submit": ("review", ("draft",)),
    "reject": ("draft", ("review",)),
    "approve": ("approved", ("draft", "review")),
    "retire": ("retired", ("draft", "review", "approved")),
    "restore": ("draft", ("retired",)),
}


def check_content(con, id, stage="approve"):
    """The problems of an intention's content for a stage: "draft" (the shape is valid), "review" (and every language of
    the pack has a text) or "approve" (and invented lore in a narrator line has an attribution, decision D7). An empty
    list means the intention can go to that stage."""
    r = con.execute("SELECT * FROM intention WHERE id = ?", (id,)).fetchone()
    problems = []
    if not jload(r["events"]):
        problems.append("no event")
    if r["speaker"] not in SPEAKERS:
        problems.append("voice must be one of %s" % ", ".join(SPEAKERS))
    for d in jload(r["depth"]) or []:
        if d not in DEPTHS:
            problems.append("unknown depth: %s" % d)
    if r["weight"] is not None and not (isinstance(r["weight"], (int, float)) and r["weight"] > 0):
        problems.append("weight must be greater than 0")
    if r["conditions"] and lualit.LUA in r["conditions"]:
        problems.append("conditions with code cannot be written through the archive")
    pack = con.execute("SELECT languages FROM pack WHERE id = ?", (r["pack_id"],)).fetchone()
    langs = jload(pack["languages"]) or []
    for lang in sorted({v[0] for v in con.execute("SELECT lang FROM variant WHERE intention_id = ?", (id,))} | set(langs)):
        texts = [v["text"] for v in con.execute("SELECT text FROM variant WHERE intention_id = ? AND lang = ?", (id, lang))]
        if not texts and stage != "draft" and lang in langs:
            problems.append("no text in %s" % lang)
        if len(set(texts)) != len(texts):
            problems.append("repeated variant in %s" % lang)
        for t in texts:
            if t != t.strip() or not t:
                problems.append("empty text or spaces around it in %s" % lang)
            if t.count("{") != t.count("}"):
                problems.append("unbalanced braces in %s: %s" % (lang, t[:40]))
    if stage == "approve" and r["invented_lore"] and r["speaker"] == "narrator" and not r["attribution"].strip():
        problems.append("invented lore in a narrator line needs an attribution (decision D7)")
    return problems


def transition(con, action, id, author, note=""):
    """Moves an intention along the review states, with a review row and a changelog row. Refuses what the rules refuse."""
    if action not in TRANSITIONS:
        raise ArchiveError("unknown action: %s" % action)
    r = con.execute("SELECT state FROM intention WHERE id = ?", (id,)).fetchone()
    if r is None:
        raise ArchiveError("unknown intention: %s" % id)
    new, allowed = TRANSITIONS[action]
    if r["state"] not in allowed:
        raise ArchiveError("%s: cannot %s from %s (allowed from: %s)" % (id, action, r["state"], ", ".join(allowed)))
    if action in ("submit", "approve"):
        problems = check_content(con, id, "review" if action == "submit" else "approve")
        if problems:
            raise ArchiveError("%s: %s" % (id, "; ".join(problems)))
    ensure_author(con, author)
    old = r["state"]
    # an approved intention of the folders that changes state becomes a row of the overlay: it keeps its content there
    con.execute("UPDATE intention SET state = ?, origin = 'overlay' WHERE id = ?", (new, id))
    verdict = {"approve": "approved", "reject": "changes", "retire": "retired"}.get(action, "comment")
    con.execute("INSERT INTO review VALUES (?,?,?,?,?,?)", (row_id("r", id, action), id, author, verdict, note, now()))
    con.execute("INSERT INTO changelog VALUES (?,?,?,?,?,?,?,?)",
                (row_id("c", id, action), now(), author, action, id, old, new, note))
    return old, new


def add_draft(con, d, default_author="ai"):
    """Adds an intention described by a dict (one line of a drafts file, see CONTRIBUTING.md) as a draft."""
    id = d.get("id")
    if not isinstance(id, str) or not re.fullmatch(r"[A-Za-z0-9_][A-Za-z0-9_.-]*", id):
        raise ArchiveError("invalid id: %r" % (id,))
    if con.execute("SELECT 1 FROM intention WHERE id = ?", (id,)).fetchone():
        raise ArchiveError("%s: the id exists already" % id)
    pack = d.get("pack")
    row = con.execute("SELECT languages FROM pack WHERE id = ?", (pack,)).fetchone()
    if row is None:
        raise ArchiveError("%s: unknown pack %r" % (id, pack))
    unknown = set(d) - {"id", "pack", "event", "events", "category", "speaker", "form", "styles", "depth", "tags", "weight",
                        "cooldown", "conditions", "texts", "author", "attribution", "invented_lore"}
    if unknown:
        raise ArchiveError("%s: unknown fields %s" % (id, ", ".join(sorted(unknown))))
    rule = {"event": d.get("event") or d.get("events") or []}
    if isinstance(rule["event"], str):
        rule["event"] = [rule["event"]]
    for k in ("category", "speaker", "form", "styles", "depth", "tags", "weight", "cooldown", "conditions"):
        if d.get(k) is not None:
            rule[k] = d[k]
    texts = d.get("texts") or {}
    langs = jload(row["languages"]) or []
    for lang in texts:
        if langs and lang not in langs:
            raise ArchiveError("%s: language %s is not one of the pack's (%s)" % (id, lang, ", ".join(langs)))
    author = d.get("author") or default_author
    ensure_author(con, author)
    insert_intention(con, id, pack, rule, "draft", author, d.get("attribution", ""), d.get("invented_lore", False), "overlay")
    for lang, items in texts.items():
        variants = []
        for it in items:
            variants.append({"text": it} if isinstance(it, str) else {"text": it["text"], **({"depth": it["depth"]} if it.get("depth") else {})})
        set_variants(con, id, lang, variants)
    reindex(con, [id])
    bad = check_content(con, id, "draft")
    if bad:
        con.execute("DELETE FROM intention WHERE id = ?", (id,))
        raise ArchiveError("%s: %s" % (id, "; ".join(bad)))
    con.execute("INSERT INTO changelog VALUES (?,?,?,?,?,?,?,?)",
                (row_id("c", id, "add"), now(), author, "add", id, None, "draft", ""))
    return id


def publish(con, root=ROOT, overlay=OVERLAY_DIR, out_root=None):
    """Writes the pack folders from the approved intentions, then the overlay without them (they live in the folders now)."""
    written = export_folders(con, root, out_root)
    con.execute("UPDATE intention SET origin = 'folders' WHERE state = 'approved'")
    save_overlay(con, overlay)
    return written


def _no_overlay():
    import tempfile
    return os.path.join(tempfile.gettempdir(), "au-no-overlay-%d" % os.getpid())   # a folder that does not exist


def roundtrip(root=ROOT, canonical=False):
    """Imports the folders (no overlay) and exports them into a temporary copy. Returns the files that differ from
    `root`: the empty list is the guarantee that the archive loses nothing of what is in the folders. With `canonical`
    the entries are rendered again instead of being kept as written, the copy is imported once more and the ids whose
    data changed are returned: it tests the renderer, which new and edited entries go through."""
    import shutil
    import tempfile
    con = build_db(":memory:", root, _no_overlay())
    with tempfile.TemporaryDirectory() as tmp:
        for d in os.listdir(root):
            if d.startswith("AzerothUnspoken") and os.path.isdir(os.path.join(root, d)):
                shutil.copytree(os.path.join(root, d), os.path.join(tmp, d))
        export_folders(con, tmp, canonical=canonical)
        diffs = []
        if canonical:
            again = build_db(":memory:", tmp, _no_overlay())
            langs = [r[0] for r in con.execute("SELECT DISTINCT lang FROM variant")]
            for r in con.execute("SELECT id FROM intention"):
                same = json.dumps(get_rule(con, r["id"]), sort_keys=True) == json.dumps(get_rule(again, r["id"]), sort_keys=True)
                same = same and all(get_variants(con, r["id"], l) == get_variants(again, r["id"], l) for l in langs)
                if not same:
                    diffs.append(r["id"])
            return diffs
        for p in [r["path"] for r in con.execute("SELECT path FROM source_file ORDER BY path")]:
            if packfiles.read(os.path.join(tmp, p)) != packfiles.read(os.path.join(root, p)):
                diffs.append(p)
        return diffs
