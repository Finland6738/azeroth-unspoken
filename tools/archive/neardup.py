"""Near-duplicate texts (C0c, ADR 0050): two texts of one language too alike for a player to hear them as two.

- A text is normalised to its words: lower case, punctuation dropped, an apostrophe inside a word kept, a placeholder
  (`{name}`, `{g:a|b}`) one word as it is written.
- **Exact duplicates**: texts of one language with the same words, reported as groups. They block `cli check` (a pool
  that holds the same text twice does not hold two texts), unless every pair of intentions of the group is in
  `allow_exact` of the thresholds (reviewed twins). The same text twice in one intention is never allowed.
- **Near duplicates**: the Jaccard index of the sets of word n-grams (shingles, `n` words; a text shorter than `n` is
  one shingle) is at least `jaccard`. Candidates come from an inverted index of the rarest shingles of each text
  (prefix filtering: two sets with a Jaccard of at least t share one of the first len - ceil(t len) + 1 shingles of
  each, sorted rarest first), so the check finds every pair and stays fast at 300,000 texts.
  They are warnings: the writers of a wave must not add any (`cli dups --state draft`).
- **Openings and closings**: the first and the last `edge` words of the texts of at least `edge_min_words` words; one
  shared by more than max(`edge_min`, `edge_share` x the texts of the language) is over-used (a warning).
"""
import collections
import math
import re

TOKEN = re.compile(r"\{[^}]*\}|[^\W\d_]+(?:['’][^\W\d_]+)*", re.UNICODE)
DEFAULTS = {"n": 3, "jaccard": 0.5, "edge": 3, "edge_min_words": 5, "edge_min": 10, "edge_share": 0.002,
            "allow_exact": []}


def words(text):
    return [m.group(0).lower().replace("’", "'") for m in TOKEN.finditer(text)]


def shingles(w, n):
    if len(w) < n:
        return frozenset([tuple(w)]) if w else frozenset()
    return frozenset(tuple(w[i:i + n]) for i in range(len(w) - n + 1))


def texts(con, states=("draft", "review", "approved")):
    """{lang: [(intention, ord, state, text)]} of the intentions in `states`."""
    out = collections.defaultdict(list)
    q = ("SELECT v.intention_id, v.ord, v.lang, v.text, i.state FROM variant v JOIN intention i ON i.id = v.intention_id"
         " WHERE i.state IN (%s) ORDER BY v.lang, v.intention_id, v.ord" % ",".join("?" * len(states)))
    for r in con.execute(q, tuple(states)):
        out[r[2]].append((r[0], r[1], r[4], r[3]))
    return out


def find(items, opts=None, only=None):
    """Exact and near duplicates, over-used openings and closings among `items` [(intention, ord, state, text)] of one
    language. `only`: report just the pairs with at least one intention in this set (the drafts of a wave)."""
    o = dict(DEFAULTS)
    o.update(opts or {})
    allowed = {frozenset(p) for p in o["allow_exact"]}
    ws = [words(t[3]) for t in items]
    sh = [shingles(w, o["n"]) for w in ws]
    exact, near = [], []
    keep = (lambda a, b: True) if only is None else (lambda a, b: items[a][0] in only or items[b][0] in only)
    norm = [" ".join(w) for w in ws]
    same = collections.defaultdict(list)
    for i, k in enumerate(norm):
        if k:
            same[k].append(i)
    for group in same.values():
        if len(group) < 2:
            continue
        ids = [items[i][0] for i in group]
        if only is not None and not any(x in only for x in ids):
            continue
        pairs = {frozenset((a, b)) for x, a in enumerate(ids) for b in ids[x + 1:] if a != b}
        exact.append({"ids": ids, "text": items[group[0]][3], "allowed": bool(pairs) and pairs <= allowed})
    # prefix filtering: with the shingles of every text sorted rarest first, two texts with a Jaccard of at least t share
    # a shingle among the first len - ceil(t * len) + 1 of each; only those are indexed and probed
    t = o["jaccard"]
    ids, freq = {}, collections.Counter()
    sets = []
    for s in sh:
        x = {ids.setdefault(g, len(ids)) for g in s}
        freq.update(x)
        sets.append(x)
    post = collections.defaultdict(list)
    size = [len(x) for x in sets]
    for i, x in enumerate(sets):
        nx = size[i]
        if not nx:
            continue
        order = sorted(x, key=lambda g: (freq[g], g))
        prefix = order[:nx - math.ceil(t * nx - 1e-9) + 1]
        lo, hi = t * nx, nx / t   # a set outside these sizes cannot reach t with this one
        seen = set()
        for g in prefix:
            for j in post[g]:
                if j in seen:
                    continue
                seen.add(j)
                ny = size[j]
                if ny < lo or ny > hi or norm[i] == norm[j] or not keep(j, i):
                    continue
                inter = len(x & sets[j])
                jac = inter / (nx + ny - inter)
                if jac >= t:
                    near.append({"a": items[j][0], "b": items[i][0], "jaccard": round(jac, 3), "text_a": items[j][3],
                                 "text_b": items[i][3]})
            post[g].append(i)
    near.sort(key=lambda p: (-p["jaccard"], p["a"], p["b"]))
    long = [w for w in ws if len(w) >= o["edge_min_words"]]
    limit = max(o["edge_min"], int(o["edge_share"] * len(long)))
    edges = {}
    for name, cut in (("openings", lambda w: w[:o["edge"]]), ("closings", lambda w: w[-o["edge"]:])):
        c = collections.Counter(" ".join(cut(w)) for w in long)
        edges[name] = [(k, n) for k, n in c.most_common() if n > limit]
    return {"texts": len(items), "exact": exact, "near": near, "edge_limit": limit, **edges}


def check(con, opts=None, states=("draft", "review", "approved"), only=None):
    """find() for every language: {lang: result}."""
    return {lang: find(items, opts, only) for lang, items in sorted(texts(con, states).items())}
