"""Command line of the authoring archive (no GUI). Run from anywhere:

    python tools/archive/cli.py <command> [options]

Commands (see CONTRIBUTING.md, "Writing content through the archive"):

    build                 rebuild the database (build/authoring.sqlite) from the pack folders and the overlay
    stats                 counts by state and pack
    list [--state S]      list intentions (default: the drafts)
    search [filters]      by --event, --tag, --theme, --motif, --region, --voice, --text, --pack, --state, --lang
    show ID               one intention with its texts, reviews and history
    drafts FILE.jsonl     add intentions as drafts, one JSON object per line
    submit|reject|approve|retire|restore ID...   move intentions along draft -> review -> approved -> retired
    export                write the pack folders from the approved intentions (and drop them from the overlay)
    check                 prove the round trip: folders -> archive -> folders must give an empty diff
    report                coverage and gap report (issue #88): Markdown, JSON, job summary; never fails the build
"""
import argparse
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import coverage  # noqa: E402
import packfiles  # noqa: E402
import store  # noqa: E402


def newest_input(root, overlay):
    newest = 0.0
    for d in os.listdir(root):
        if d.startswith("AzerothUnspoken") and os.path.isdir(os.path.join(root, d)):
            for base, _, files in os.walk(os.path.join(root, d)):
                for f in files:
                    if f.endswith((".lua", ".toc")):
                        newest = max(newest, os.path.getmtime(os.path.join(base, f)))
    for f in store.OVERLAY_TABLES:
        p = os.path.join(overlay, f)
        if os.path.exists(p):
            newest = max(newest, os.path.getmtime(p))
    return max(newest, os.path.getmtime(os.path.join(HERE, "schema.sql")))


_OPEN = []   # the connections of this run: closed at the end (Windows cannot replace a file that is open)


def open_db(args, rebuild=False):
    """The database, rebuilt when it is missing or older than the folders and the overlay."""
    if not rebuild and os.path.exists(args.db) and os.path.getmtime(args.db) >= newest_input(args.root, args.overlay):
        con = store.connect(args.db)
    else:
        con = store.build_db(args.db, args.root, args.overlay)
        for p in con.report["problems"]:
            print("problem:", p, file=sys.stderr)
    _OPEN.append(con)
    return con


def save(con, args):
    """A change is kept at once in the overlay (text in git); the database is current, so it is touched."""
    store.reindex(con)
    con.commit()
    store.save_overlay(con, args.overlay)
    os.utime(args.db)


def row_line(con, r):
    ev = ",".join(json.loads(r["events"]))
    first = con.execute("SELECT text FROM variant WHERE intention_id = ? ORDER BY lang, ord LIMIT 1", (r["id"],)).fetchone()
    text = (first["text"][:60] + "...") if first and len(first["text"]) > 60 else (first["text"] if first else "")
    return "%-34s %-8s %-9s %-14s %-9s %s" % (r["id"], r["state"], r["speaker"] or "", ev[:14], r["region"] or "-", text)


def query(con, a):
    where, args = [], []
    if a.state:
        where.append("i.state = ?")
        args.append(a.state)
    if a.pack:
        where.append("i.pack_id = ?")
        args.append(a.pack)
    if a.voice:
        where.append("i.speaker = ?")
        args.append(a.voice)
    if a.region:
        if a.region in ("any", "none"):
            where.append("i.region IS NULL")
        else:
            where.append("i.region = ?")
            args.append(a.region)
    if getattr(a, "theme", None):
        where.append("i.theme = ?")
        args.append(a.theme)
    for table, value in (("event", a.event), ("tag", a.tag), ("register", a.register), ("motif", getattr(a, "motif", None))):
        if value:
            where.append("EXISTS (SELECT 1 FROM intention_%s x WHERE x.intention_id = i.id AND x.value LIKE ?)" % table)
            args.append(value.replace("*", "%"))
    if a.text:
        sub = "EXISTS (SELECT 1 FROM variant v WHERE v.intention_id = i.id AND v.text LIKE ?"
        args.append("%" + a.text + "%")
        if a.lang:
            sub += " AND v.lang = ?"
            args.append(a.lang)
        where.append(sub + ")")
    sql = "SELECT i.* FROM intention i" + (" WHERE " + " AND ".join(where) if where else "") + " ORDER BY i.id"
    if a.limit:
        sql += " LIMIT %d" % a.limit
    return con.execute(sql, args).fetchall()


def cmd_build(a):
    con = open_db(a, rebuild=True)
    n = con.execute("SELECT COUNT(*) FROM intention").fetchone()[0]
    print("built %s: %d intentions" % (os.path.relpath(a.db, a.root), n))
    for s in con.report["skipped"]:
        print("not archived (rules computed by code): %s" % s["path"])
    return 1 if con.report["problems"] else 0


def cmd_stats(a):
    con = open_db(a)
    for r in con.execute("SELECT state, COUNT(*) n FROM intention GROUP BY state ORDER BY state"):
        print("%-9s %d" % (r["state"], r["n"]))
    print()
    for r in con.execute("SELECT pack_id, state, COUNT(*) n FROM intention GROUP BY 1, 2 ORDER BY 1, 2"):
        print("%-26s %-9s %d" % (r["pack_id"], r["state"], r["n"]))
    return 0


def cmd_list(a):
    con = open_db(a)
    if a.cmd == "list" and not a.state:
        a.state = "draft"
    rows = query(con, a)
    for r in rows:
        print(row_line(con, r))
    print("%d intentions" % len(rows), file=sys.stderr)
    return 0


def cmd_show(a):
    con = open_db(a)
    r = con.execute("SELECT * FROM intention WHERE id = ?", (a.id,)).fetchone()
    if r is None:
        print("unknown intention:", a.id, file=sys.stderr)
        return 1
    print("%s  [%s]  pack %s  author %s  origin %s" % (r["id"], r["state"], r["pack_id"], r["author_id"], r["origin"]))
    print(json.dumps(store.get_rule(con, a.id), ensure_ascii=False, indent=2))
    if r["attribution"] or r["invented_lore"]:
        print("invented lore: %s, attribution: %s" % (bool(r["invented_lore"]), r["attribution"] or "(none)"))
    for lang in sorted({v["lang"] for v in con.execute("SELECT lang FROM variant WHERE intention_id = ?", (a.id,))}):
        print(lang + ":")
        for v in store.get_variants(con, a.id, lang):
            print("  - %s%s" % (v["text"], "   (depth %s)" % v["depth"] if v.get("depth") else ""))
    for rv in con.execute("SELECT * FROM review WHERE intention_id = ? ORDER BY id", (a.id,)):
        print("review %s %s by %s: %s" % (rv["date"], rv["verdict"], rv["reviewer"], rv["note"]))
    problems = store.check_content(con, a.id)
    print("approvable" if not problems else "blocks approval: " + "; ".join(problems))
    return 0


def cmd_drafts(a):
    con = open_db(a)
    added, errors = 0, 0
    with open(a.file, encoding="utf-8") as f:
        for n, line in enumerate(f, 1):
            if not line.strip() or line.lstrip().startswith("#"):
                continue
            try:
                store.add_draft(con, json.loads(line), a.author or "ai")
                added += 1
            except (store.ArchiveError, ValueError) as e:
                errors += 1
                print("line %d: %s" % (n, e), file=sys.stderr)
    save(con, a)
    print("%d drafts added, %d refused" % (added, errors))
    return 1 if errors else 0


def cmd_move(a):
    con = open_db(a)
    code = 0
    for id in a.ids:
        try:
            old, new = store.transition(con, a.cmd, id, a.author or os.environ.get("AU_ARCHIVE_AUTHOR", "owner"), a.note or "")
            print("%s: %s -> %s" % (id, old, new))
        except store.ArchiveError as e:
            print(e, file=sys.stderr)
            code = 1
    save(con, a)
    return code


def cmd_export(a):
    con = open_db(a)
    written = store.publish(con, a.root, a.overlay)
    con.commit()
    os.utime(a.db)
    for p in written:
        print("wrote", p)
    print("%d files written" % len(written))
    return 0


def cmd_check(a):
    diffs = store.roundtrip(a.root)
    for p in diffs:
        print("round trip differs:", p, file=sys.stderr)
    canon = store.roundtrip(a.root, canonical=True)
    for i in canon[:20]:
        print("canonical rendering differs:", i, file=sys.stderr)
    print("round trip: %s; canonical rendering: %s" % ("empty diff" if not diffs else "%d files differ" % len(diffs),
                                                       "same data" if not canon else "%d intentions differ" % len(canon)))
    return 1 if diffs or canon else 0


def cmd_report(a):
    con = open_db(a)
    th = coverage.load_thresholds(a.thresholds) if a.thresholds else coverage.load_thresholds()
    if a.k is not None:
        th["k"] = a.k
    res = coverage.compute(con, th, a.state or "approved")
    md = coverage.to_markdown(res, a.top)
    print(md)
    for w in coverage.warnings(res):
        print("::warning title=Content coverage::%s" % w if os.environ.get("GITHUB_ACTIONS") else "warning: " + w)
    if a.summary:
        with open(a.summary, "a", encoding="utf-8", newline="") as f:
            f.write(md)
    if a.markdown:
        packfiles.write(a.markdown, md)
    if a.json:
        packfiles.write(a.json, json.dumps(res, ensure_ascii=False, indent=1) + "\n")
    return 1 if (a.strict and coverage.warnings(res)) else 0


def main(argv=None):
    ap = argparse.ArgumentParser(prog="archive", description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--root", default=store.ROOT, help="repository root (the pack folders)")
    ap.add_argument("--overlay", default=store.OVERLAY_DIR, help="folder of the committed overlay (authoring/)")
    ap.add_argument("--db", default=store.DB_PATH, help="the generated SQLite file")
    ap.add_argument("--author", help="author of the change (default: owner, or $AU_ARCHIVE_AUTHOR)")
    sub = ap.add_subparsers(dest="cmd", required=True)
    sub.add_parser("build").set_defaults(fn=cmd_build)
    sub.add_parser("stats").set_defaults(fn=cmd_stats)
    for name in ("list", "search"):
        p = sub.add_parser(name)
        p.add_argument("--state", choices=store.STATES)
        p.add_argument("--pack")
        p.add_argument("--event", help="event name; * is a wildcard")
        p.add_argument("--tag", help="tag; * is a wildcard (e.g. 'topic:*')")
        p.add_argument("--register")
        p.add_argument("--theme", help="theme of the closed vocabulary (#90)")
        p.add_argument("--motif", help="motif; * is a wildcard")
        p.add_argument("--region", help="continent token of the pack, or 'any' for content of every place")
        p.add_argument("--voice", choices=store.SPEAKERS)
        p.add_argument("--text", help="text contained in a variant")
        p.add_argument("--lang")
        p.add_argument("--limit", type=int)
        p.set_defaults(fn=cmd_list)
    p = sub.add_parser("show")
    p.add_argument("id")
    p.set_defaults(fn=cmd_show)
    p = sub.add_parser("drafts")
    p.add_argument("file")
    p.add_argument("--author", default=argparse.SUPPRESS, help="author of the drafts that do not name one (default: ai)")
    p.set_defaults(fn=cmd_drafts)
    for name in store.TRANSITIONS:
        p = sub.add_parser(name)
        p.add_argument("ids", nargs="+")
        p.add_argument("--note", help="the reason, kept in the review and the changelog")
        p.add_argument("--author", default=argparse.SUPPRESS, help="who decides (default: owner, or $AU_ARCHIVE_AUTHOR)")
        p.set_defaults(fn=cmd_move)
    sub.add_parser("export").set_defaults(fn=cmd_export)
    sub.add_parser("check").set_defaults(fn=cmd_check)
    p = sub.add_parser("report")
    p.add_argument("--k", type=int, help="minimum eligible intentions per event x context cell")
    p.add_argument("--state", choices=store.STATES)
    p.add_argument("--thresholds", help="JSON file (default: tools/archive/thresholds.json)")
    p.add_argument("--top", type=int, default=25, help="rows of the long tables")
    p.add_argument("--summary", help="append the Markdown here (the GitHub job summary)")
    p.add_argument("--markdown", help="write the Markdown report here")
    p.add_argument("--json", help="write the full report as JSON here")
    p.add_argument("--strict", action="store_true", help="exit 1 when a threshold is breached (not used in CI)")
    p.set_defaults(fn=cmd_report)
    a = ap.parse_args(argv)
    for attr in ("state", "pack", "event", "tag", "register", "theme", "motif", "region", "voice", "text", "lang", "limit"):
        if not hasattr(a, attr):
            setattr(a, attr, None)
    try:
        return a.fn(a)
    finally:
        while _OPEN:
            _OPEN.pop().close()


if __name__ == "__main__":
    sys.exit(main())
