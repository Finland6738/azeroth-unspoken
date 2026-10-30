# Azeroth Unspoken: phrase pack format (schema v2)

The engine (`Core\`, `Engine\`, `Systems\`, `Integration\`, `UI\`) contains no texts.
All phrases live in packs: the base rules in `Data\`, their texts in one folder per language
(`AzerothUnspoken_enUS`, `AzerothUnspoken_itIT`), the lines bound to one continent in the regional folders, and
additional packs in separate addons (see the `AzerothUnspoken_Example` folder). Everything works offline, inside the
addon's files. How the language and regional folders are loaded is described in
[Language packs and regional packs](#language-packs-and-regional-packs-loaded-on-demand).

Schema v2 (GDD §9) separates **rules** from **texts**:

- a *rule* says **when** a phrase can appear and **who** speaks: event, category, voice, registers,
  depth, tags, weight, cooldown, conditions. It has an `id` that expresses an intention, the same in every language;
- the *texts* are, for each language, one or more **variants** of that intention: same meaning and same register,
  different rhythm and words.

A pack can add phrases, translations, languages, events, registers and conditions **without touching the engine**.
The previous format (`phrases = { { it=, en= } }`) remains valid and is converted on load (see below).

## Creating a pack

1. Copy `AzerothUnspoken_Example` into `Interface\AddOns\` under a new name, for example `AzerothUnspoken_Nani`.
2. Rename the `.toc` file to match the folder name and keep `## Dependencies: AzerothUnspoken`.
3. Write the rules and texts with `AzerothUnspoken:RegisterPack({...})`.
4. Type `/au validate nani` in game (or `/au validate` for everything): the validator tells you what to fix.

> **In an external pack, always call the APIs from the global `AzerothUnspoken:` object.** In the base database files
> the first line `local ADDON, NS = ...` gives the namespace *of the addon*, and there you write `NS:RegisterNPCs(...)`. In a
> separate addon that same line gives the namespace *of your pack*, which has none of these functions:
> `NS:RegisterDialogues(...)` would give `attempt to call method 'RegisterDialogues' (a nil value)`. All the examples in
> this guide are written for an external pack, and `Tests/check_docs.py` loads them as such (see "Trying the
> examples" at the end).

The typical mistake, in a file of an external pack (this example **does not work**, and is tested as such):

<!-- test: error -->
```lua
local ADDON, NS = ...                  -- NS is the pack's namespace, not the addon's
NS:RegisterDialogues({ scripts = {} }) -- attempt to call method 'RegisterDialogues' (a nil value)
```

A complete, minimal pack (two languages, one rule, one text per language):

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "nani",                    -- unique among all packs
    name = "Frasi dei nani",
    languages = { "itIT", "enUS" }, -- languages every phrase in the pack must have (optional)
    registry = {                    -- the rules, one per id
        ["nani.battle.01"] = { event = "battle", speaker = "character", styles = { "epic" }, conditions = { race = "Dwarf" } },
    },
    texts = {                       -- the texts per language, with variants
        itIT = { ["nani.battle.01"] = { "Le montagne non arretrano!" } },
        enUS = { ["nani.battle.01"] = { "The mountains do not yield!" } },
    },
})
```

Besides `id`, `name`, `languages`, `registry` and `texts`, a pack can have `events` (new events), `frames`
(narrative frames), `vocab` (vocabulary for placeholders) and `styles`, `categories`, `conditions` (new registers, categories and
conditions). They are all optional and described below.

Texts can also live in separate files, one per language, as the base database does
(`Data\Registry*.lua` for the rules, the folders `AzerothUnspoken_itIT\` and `AzerothUnspoken_enUS\` for the texts):

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "nani_testi",
    registry = { ["nanit.battle.01"] = { event = "battle", speaker = "character", styles = { "epic" } } },
})
AzerothUnspoken:AddTexts("itIT", { ["nanit.battle.01"] = { "Le montagne non arretrano!" } }, "nani_testi")
AzerothUnspoken:AddTexts("enUS", { ["nanit.battle.01"] = { "The mountains do not yield!" } }, "nani_testi")
```

The third argument is the id of the pack that carries the texts: if the user turns it off, those texts are no longer used.
Texts can arrive before the rule (file load order does not matter): they wait.

## One rule

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "regola",
    languages = { "itIT", "enUS" },
    registry = {
        ["regola.battle.01"] = {
            event = { "battle", "threat" },         -- one event, or several events
            speaker = "character",                  -- who speaks: narrator | inner | character | npc
            styles = { "epic", "ceremonial" },      -- registers; the first is the main one
            depth = { "natural", "literary" },      -- depths it is written for (absent = all)
            tags = { "forest", "calm" },            -- free labels (affinity, search)
            weight = 2,                             -- relative weight (default 1)
            cooldown = 600,                         -- seconds before it can return (optional)
            conditions = { race = "Dwarf" },        -- conditions (optional; alias: when)
        },
    },
    texts = {
        itIT = { ["regola.battle.01"] = "Le montagne non arretrano!" },
        enUS = { ["regola.battle.01"] = "The mountains do not yield!" },
    },
})
```

| Field | Meaning | If missing |
|---|---|---|
| `event` | event (or list) in which it appears | validator error |
| `category` | category: `combat`, `spellcraft`, `life`, `exploration`, `reflection`, `social` or your own | the event's category, or `general` |
| `speaker` | voice (see below) | inferred from `form` (validator warning) |
| `form` | `say` = spoken, `emote` = third-person narrative, without the name | `emote` for the narrator, `say` for the other voices |
| `styles` | registers (see below) | none (warning) |
| `depth` | `natural`, `literary`, `elevated`: one or more | applies to all |
| `tags` | list of labels: descriptive, or affinity with the character's traits (see below) | none |
| `weight` | number greater than 0 | 1 |
| `cooldown` | seconds (also `cooldownSeconds`) | none |
| `conditions` | table of conditions (also `when`) | always true |

### The texts, with variants

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "varianti",
    languages = { "itIT", "enUS" },
    registry = {
        ["varianti.battle.01"] = { event = "battle", speaker = "character", styles = { "epic" } },
        ["varianti.battle.02"] = { event = "battle", speaker = "character", styles = { "epic" } },
    },
    texts = {
        itIT = {
            ["varianti.battle.01"] = {
                "Le montagne non arretrano!",
                "Né un passo indietro: siamo figli della montagna.",
                { "Come la roccia che ci ha generati, noi non cediamo.", depth = "elevated" },
            },
            ["varianti.battle.02"] = "Una variante sola si può scrivere come stringa.",
        },
        enUS = {
            ["varianti.battle.01"] = {
                "The mountains do not yield!",
                "Not one step back: we are children of the mountain.",
                { "Like the rock that bore us, we do not give way.", depth = "elevated" },
            },
            ["varianti.battle.02"] = "A single variant can be written as a string.",
        },
    },
})
```

- A **variant** is a string, or `{ "text", depth = "elevated" }` (or `{ text = "...", depth = { ... } }`) if it is
  written for a specific depth. Without `depth` it applies to all.
- The engine picks the phrase (weight, conditions, anti-repetition) and then **one variant**: it prefers those written for the
  depth chosen by the user (or with no indication), and **never immediately repeats the last variant used**.
- If a variant has placeholders that are missing from the context, the others are used. That is why a good phrase with
  `{target}` also has a variant without placeholders, which always works (GDD §9.4). The validator requires IT and EN
  to have the same combinations of placeholders.
- Languages are written as `itIT` / `enUS` (or in short form: `it`, `en`). A phrase appears only in the languages in which
  it is written: languages are never mixed.

### Who speaks (`speaker`)

Every phrase has one of the four voices of GDD §5.3, shown in the narrator as a label:

| `speaker` | Voice | Form | In chat |
|---|---|---|---|
| `narrator` | external narrator: atmosphere and actions, does not attribute decisions | emote | can become a proposal (usually `/e`) |
| `inner` | inner voice: thoughts, private | spoken | never in chat |
| `character` | the character's public voice: shorter, inspectable | spoken | can become a proposal (usually `/s`) |
| `npc` | NPC, simulated content (ambient dialogues, S8) | spoken | never in chat |

Phrases **never** go to chat on their own: they reach the private narrator and, only if the user has chosen a Chat Gateway
mode other than the private one, become proposals that the user confirms (see `ROADMAP.md`, S2).
Write as `inner` whatever is a thought, not a line to be said aloud: it will never go to chat.

**Emotes** start with a lowercase letter and without the name: the game writes the character's name by itself
(e.g. "*Brann* snuda l'arma...", that is "*Brann* draws his weapon..."). A spoken `character` line can be told inside a **frame** when an emote
is needed; a thought (`inner`) is never put in a frame.

### Personality: affinity tags

`tags` without a colon (`"wry"`, `"heroic"`) are descriptive: the engine ignores them. With a colon they link the phrase to the traits of the
player's character (Character Soul, optional; without traits the phrase is neutral):

| Tag | Effect |
|---|---|
| `temperament:stoic` | **soft affinity**: the weight goes up (×1.6) if the profile has that value, down (×0.6) if it has another one, and does not change if the trait is not set |
| `req:faith:devout` | **hard requirement**: the phrase comes out only if the profile has that value. Several `req` of the same trait are alternatives, different traits add up. The neutral profile excludes it as well |
| `not:faith:devout` | **hard exclusion**: the phrase does not come out if the profile has that value |
| `topic:death` | **topic to avoid**: the phrase does not come out if the player has chosen to avoid it |

Traits and values: `temperament` (`resolute`, `merciful`, `stoic`, `cheerful`, `melancholic`, `gruff`, `fierce`), `morality`
(`righteous`, `pragmatic`, `conflicted`, `disillusioned`, `hopeful`), `curiosity` and `irony` (scales: `low`, `mid`, `high`), `faith`
(`devout`, `spiritual`, `doubting`, `skeptic`), `motivation` (`duty`, `vengeance`, `glory`, `knowledge`, `redemption`, `freedom`,
`protection`), `innerVoice` (`off`, `quiet`, `present`, `vivid`; concerns phrases with `speaker = "inner"`) and, for `topic:`,
`death`, `blood`, `betrayal`, `family`, `religion`, `undead`, `demons`, `romance`.

Writing rule: a phrase that **states** something about the character (faith, a past of vengeance) uses `req:`; one that says
the same things **in a tone** uses soft affinity; one that touches a delicate topic (blood, family) carries `topic:`.
An `ironic` register without an `irony:` tag is already weighted by the player's irony. The validator flags (`badTag`) affinity
tags with a trait or a value that does not exist. Examples in `Data/RegistrySoul.lua`.

### Registers (`styles`) and depth (`depth`)

The registers are those of GDD §5.1; the user does not choose them: the engine uses them to keep the tone consistent
(and the Narrative Director, from step S4, to choose them according to event, place and personality).

| Register | Vocabulary and rhythm | Situations |
|---|---|---|
| `ancient` | ancient and contemplative: memory, nature, time | forests, ruins, sacred places |
| `epic` | epic and heroic: clear choices, courage | victories, defense, crucial moments |
| `tragic` | tragic and dark: loss, silence | graveyards, death, corrupted zones |
| `intimate` | intimate and reflective: doubts, regrets | memories, returns, rest |
| `everyday` | everyday: simple, concrete vocabulary | inns, merchants, villages |
| `ironic` | ironic: measured wit | some NPCs and personalities |
| `ceremonial` | ceremonial: invocations and ritual formulas | blessings, vows, shrines |

A pack can add registers with `styles = { "bardico" }` in the pack or `AzerothUnspoken:RegisterStyle("bardico")`;
without that, the validator reports a warning.

From step S4 the **StyleResolver** uses registers to weight phrases (never to exclude them):
- each event admits some registers (battle, for example, not the everyday one); a misplaced register weighs half;
- the zone's atmosphere (`forest` → ancient, `dark` → tragic, `city` → everyday...), the chosen depth
  (natural → everyday, ironic, intimate; elevated → ceremonial, epic, ancient) and the voice (`inner` → intimate,
  `narrator` → ancient, tragic, epic; `npc` → everyday, ironic) each add 25% to the preferred register;
- a pack can change the rules: `AzerothUnspoken:RegisterEventStyles("fishing", { "intimate", "ironic" })`
  (registers admitted for an event) and `AzerothUnspoken:RegisterMoodStyles({ coast = { "everyday" } })` (registers preferred
  by an atmosphere).

**Depth** (Natural, Literary, Elevated) is the one chosen by the user (`/au depth`). It does not exclude phrases:
those written for another depth **weigh less** (×0.3), so silence never results from a lack of suitable texts.
A phrase without `depth` is never penalized. As a rule of thumb: `natural` is direct and everyday,
`literary` is the base tone, `elevated` is ornate, ancient or ceremonial.

## Events

| Event | When |
|---|---|
| `battle` | start of a combat |
| `victory` | end of a combat that lasted at least 6 seconds |
| `lowhp` | health below 30% (once per combat) |
| `death`, `rez` | death and return to life |
| `levelup` | new level |
| `zone` | entering a new zone |
| `memory_return` | return to an already visited zone (memory recall: only with a real memory) |
| `attack` | spell or ability in combat |
| `heal`, `buff`, `travel`, `rezother` | heals, blessings, journeys, resurrection of a companion |
| `greet`, `farewell`, `toast`, `thanks`, `jest`, `pray`, `muse`, `threat` | manual commands (`/au greet`, etc.) |
| any name | `/au event <name>` from a macro, or an event declared by the pack (see below) |

A new event is declared in the pack, with a default category, chance (%) and cooldown (seconds)
(the user's choices with `/au chance` take precedence):

<!-- test -->
```lua
AzerothUnspoken:RegisterSpellKeywords({ kind = { fishing = { "fishing", "pesca" } } })  -- spells -> "fishing" event

AzerothUnspoken:RegisterPack({
    id = "pesca",
    languages = { "itIT", "enUS" },
    events = { fishing = { category = "exploration", chance = 20, cooldown = 300 } },
    registry = { ["pesca.01"] = { event = "fishing", speaker = "inner", styles = { "intimate" } } },
    texts = {
        itIT = { ["pesca.01"] = "L'acqua non ha fretta. Forse dovrei imparare da lei." },
        enUS = { ["pesca.01"] = "The water is in no hurry. Perhaps I should learn from it." },
    },
})
```

Every spell that contains those words fires the `fishing` event. An event can also be declared with
`AzerothUnspoken:RegisterEvent("fishing", { category = "exploration", chance = 20, cooldown = 300 })`.
Zones can be added as well with `AzerothUnspoken:RegisterZoneMoods({ ["Booty Bay"] = "coast" })`.

## Conditions (`conditions`)

All conditions must be true. A list `{ "A", "B" }` means "A or B".
Phrases with more conditions are more specific and receive a higher weight.

| Key | Values |
|---|---|
| `class` | `WARRIOR`, `PALADIN`, `HUNTER`, `ROGUE`, `PRIEST`, `SHAMAN`, `MAGE`, `WARLOCK`, `DRUID` |
| `race` | `Human`, `Dwarf`, `NightElf`, `Gnome`, `Orc`, `Scourge` (undead), `Tauren`, `Troll` |
| `faction` | `Alliance`, `Horde` |
| `sex` | `male`, `female` |
| `levelMin`, `levelMax` | number |
| `hpBelow`, `hpAbove` | fraction from 0 to 1 (e.g. `0.3`) |
| `combat`, `dead`, `ghost`, `resting`, `indoors`, `mounted`, `swimming`, `stealth`, `instance` | `true` / `false` |
| `instanceType` | `none`, `party`, `raid`, `pvp`, `arena`, `scenario` |
| `group` | `solo`, `party`, `raid` |
| `zone`, `subzone` | name of the zone or subzone, as it appears in the client (e.g. `"Duskwood"`) |
| `mood` | zone atmosphere: `forest`, `dark`, `plains`, `mountain`, `snow`, `jungle`, `swamp`, `desert`, `fire`, `plague`, `ruin`, `coast`, `sacred`, `deep`, `city`, `town` |
| `time` | `dawn`, `day`, `dusk`, `night` (server time) |
| `hour` | range `{ 22, 4 }` (also across midnight) |
| `hasTarget`, `hostile`, `friendly`, `targetPlayer`, `targetDead`, `elite`, `boss`, `rare` | `true` / `false` |
| `ctype` | target type: `undead`, `demon`, `dragon`, `elemental`, `beast`, `giant`, `mechanical`, `humanoid`, `critter`, `aberration` |
| `targetClass`, `targetRace`, `targetFaction`, `enemyFaction` | the target is a player: their class, race, faction; `enemyFaction` if they are of the opposing faction |
| `targetStronger`, `targetWeaker` | the target is at least 3 levels above, or 5 below |
| `targetName` | part of the target's name |
| `spell` | part of the spell's name (e.g. `{ "hearthstone", "pietra del ritorno" }`) |
| `spellKind` | `heal`, `buff`, `rez`, `travel`, `taunt`, `shout`, `stealth`, `summon` or an added kind |
| `element` | `fire`, `frost`, `shadow`, `holy`, `nature`, `arcane`, `physical` |
| `depth` | the depth chosen by the user: `natural`, `literary`, `elevated` |
| `intensityMin`, `intensityMax` | intensity chosen by the user (0–100) |
| `chance` | extra probability for this phrase alone, from 0 to 100 |
| `firstVisit`, `repeatVisit` | `true` / `false`: it is the first visit to this zone, or a return (see "Memory" below) |
| `lastVisitBad` | `true` / `false`, or `"death"` / `"flight"`: the previous visit to this zone ended badly, by a death or a flight |
| `visitsMin`, `visitsMax` | number of visits to the zone, this one included |
| `daysSinceLastVisit` | days since the end of the previous visit: a number (at least that) or `{ from, to }` (from included, to excluded) |
| `remembered` | a narrative flag, or a list (one is enough): `remembered = "first_death"` |
| `["not"]` | conditions that must be **false**: `["not"] = { race = "Scourge" }` |
| `any` | at least one of the groups: `any = { { race = "Human" }, { class = "PALADIN" } }` |
| `func` | Lua function: `func = function(ctx) return ctx.hp > 0.9 end` |

An unknown condition, or one with a wrong value, makes the phrase **never chosen** (it does not raise errors) and the validator reports it.

### Memory: first visit, return, memories

The memory conditions (`firstVisit`, `repeatVisit`, `lastVisitBad`, `visitsMin`, `visitsMax`, `daysSinceLastVisit`,
`remembered`) read `ctx.memory`, built by Living Memory (`Systems/LivingMemory.lua`) **only from real memories**.
If memory is off, or there is no data on the place, they are all *false*: a phrase that cites a memory never comes out
without that memory. `ctx.memory` also has `flags` (the narrative flags) and `session` (`deaths`, `levels`, `zones`).

- **First visit**: use the `zone` event with `firstVisit = true`. It is a zone atmosphere like the others, but only the first time.
- **Return**: the `memory_return` event (declared by the `base_memory` pack) is a **memory recall**: "memory recall"
  priority in the Narrative Director (above atmosphere, below exceptional events), active only if the
  memory module is on and **never if the memory does not exist** (engine guard, even with `/au event memory_return`).
- **Editorial rule**: every phrase of a recall event must declare a memory condition (`repeatVisit`,
  `lastVisitBad`, `visitsMin`, `daysSinceLastVisit`, `remembered`, or an `any` in which every group has one). The validator
  reports `recallWithoutMemory` otherwise. A phrase that says "last time it ended badly" uses `lastVisitBad`; one that
  talks about the first death uses `remembered = "first_death"`.
- A pack can declare **other** recall events with `AzerothUnspoken.LivingMemory:RegisterRecall(event, function(memory, ctx) return … end)`
  (the function confirms that the memory exists); the event must also be declared in `events = { … }`.
- Narrative flags are set with `AzerothUnspoken.LivingMemory:SetFlag("name")` (ASCII letters, digits and `_`, at most
  32 characters) and are also set by the game (`first_death`, `first_capital`, `level_10`, `level_20`…).
- A topic to avoid (`topic:death`) also excludes the recall phrases that touch it: write the tag as for any phrase.

### Relationships: greetings, farewells, companions, known NPCs

The relationship conditions read `ctx.relation` and similar, built by the relationships system (`Systems/Relationships.lua`)
for the **person of the interaction**: the NPC being talked to (dialogue, merchant...) or the target. If the person is not
in the list, **they are all false** (except `isKnown = false`): a phrase that cites a relationship does not come out without that relationship.

| Condition | Holds if |
|---|---|
| `relation = "friend"` (or a list) | the label in use is one of these: `stranger`, `acquaintance`, `indifferent`, `friend`, `comrade`, `rival`, `enemy`, `disliked`, `wary`, `feared`, `lover`, and `ally` (given only by the user, never derived from the axes) (and those added by packs with `AzerothUnspoken:RegisterRelationData`). A label chosen by hand by the user takes precedence over the derived one |
| `disposition = "close"` | the overall disposition: `hated`, `enemy`, `unfriendly`, `suspicious`, `neutral`, `acquaintance`, `friend`, `close`, `bond` |
| `trustMin`, `trustMax`, `respectMin`, `affectionMin`, `fearMax`, `loyaltyMin`... | the axis is at least / at most that number: `familiarityMin`, `trust`, `respect`, `affection`, `fear`, `loyalty`, `attraction` (this one only if the user has turned it on) |
| `isKnown = true` / `false` | the person is known well enough (minimum familiarity, or chosen label; a player in the list is always known) / is not known |
| `relationKind = "npc"` (or `"player"`) | the person is an NPC or a player |
| `withRelation = "friend"` | **a group companion** has that label (for battle or victory beside someone) |
| `feeling = "resentment"` (or a list) | the user chose one of these feelings for the person (up to two): `trust`, `liking`, `wariness`, `fear`, `resentment`, `gratitude`. The user's own words: they do not change the label or the axes by themselves |
| `relDaysSince = 7` or `{ 7, 30 }` | whole days since the **previous** meeting with that player: at least 7, or from 7 up to but not including 30. The state before the first meeting of the session is used, so the days do not drop to 0 the moment the person is recognised. False with no earlier meeting |
| `relMetHere = true` | the previous meeting was in the place where the character is now (the map id, or the zone name when there is none). False with no place on record |
| `relShared = "group_combat"` (or a list) | the addon has recorded that kind of experience with this player: `group`, `trade`, `duel`, `invite`, `emote`, `whisper`, `target` or `group_combat` (a fight fought in a group). Never from chat |

`feeling`, `relDaysSince`, `relMetHere` and `relShared` need a person in the list like the others, and count as a relationship condition for the validator. The last three are for **players** (they come from what the addon observed, `seen`); for an NPC they are false.

- **Placeholder** `{relation}`: the label in the chosen language (or the text the user gave it), **in the person's gender** when the noun has one (`amico`/`amica`, `temuto`/`temuta`; issue #41). Without a person the variant is discarded; with a person whose sex is unknown the first form applies (the masculine). The `RegisterRelationData` data write the noun with a list `name = { it = { "amico", "amica" }, en = "friend" }`. To agree an adjective with the person use `{og:…\|…}`.
- **Affinity tags with the `rel.` scope** (factor `R` of the weight, same grammar as the Soul ones): `rel.relation:friend`, `rel.disposition:close`, `rel.feeling:gratitude` (a person can have two feelings, so this is a set: `rel.req:feeling:fear` asks for it, `rel.not:feeling:resentment` excludes it), `rel.trust:high` (`low`/`mid`/`high` bands of the axes) are **soft affinity**; `rel.req:relation:rival` is a **hard requirement** (without that relationship the phrase does not come out); `rel.not:relation:enemy` a **hard exclusion**. The validator reports (`badTag`) tags without the scope for these traits.
- **Warm lines and relationships (issue #105)**: a phrase tagged `warm` (a friendly line: "old friends", "so good to see you") in the `greet`, `farewell`, `other_action` or `relation_player` events must **exclude the negative relationships** (`enemy`, `disliked`, `wary`, `feared`), otherwise the validator reports `warmWithoutRelation`. Ways to satisfy it: `relation = { "friend", "comrade" }` (any list without the four negatives), `["not"] = { relation = { "enemy", "disliked", "wary", "feared" } }` (also inside `other`), the four tags `rel.not:relation:<label>`, or axis thresholds `affectionMin >= -24`, `trustMin >= -29` and `fearMax <= 59`. A line meant ironically carries the tag `ironic` and is exempt. The weight also drops a `warm` line to zero for a person the user feels `wariness`, `fear` or `resentment` for, whatever the label says (the feeling is the user's word, #109).
- **Register**: with familiarity the narrator prefers different registers (from the formal `ceremonial` to the intimate `intimate`): the phrase's `styles` do the rest.
- **`relation_npc` event** (declared by `base_relations`): meeting an NPC already known. Each of its phrases must declare a relationship condition (`relation`, `isKnown = true`, `relationKind`...): the validator reports `relationWithoutRelation` otherwise. A pack can declare other events of this kind with `AzerothUnspoken.Relationships:RegisterRelationEvent(event, function(ctx) return … end)`.
- **`relation_player` event** (declared by `base_relations`, #106): a known player recognised, with the same "memory" priority. The Director is offered one candidate per person and session, when a listed player joins the group, when one of them duels, invites or emotes at the character, and (only if the user turns it on) when they are the target. Its phrases use `relationKind = "player"` plus `feeling`, `relation`, `relDaysSince`, `relMetHere` or `relShared`, and can use `{other}` (the player's name). Silence stays a valid outcome: the Director's budget, moment and chance still apply, and the meeting is recorded either way.
- Examples: `Data/RegistryRelations.lua` (104 IT/EN phrases; the `rel.player.*` ones show every new condition).

### Interlocutor and place: who we meet, where we are

Two **sub-tables** read `ctx.other` (`Systems/Interlocutor.lua`: the target, the NPC being talked to, whoever has just
directed an emote at us or challenged us to a duel) and `ctx.place` (`Systems/Place.lua`). Inside them the same operators as at the
top level apply (lists, `not`, `any`, `func(object, ctx)`); without an interlocutor or a place a required value
does not match, `field = false` does. Every field counts toward the phrase's specificity.

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "contesto",
    languages = { "itIT", "enUS" },
    registry = {
        ["contesto.inn.01"] = { event = "npc_meet", speaker = "npc", styles = { "everyday" },
            conditions = { other = { role = "innkeeper", any = { { speech = "jovial" }, { temperament = "cheerful" } } } } },
        ["contesto.raid.01"] = { event = "zone", speaker = "inner", styles = { "ancient" },
            conditions = { place = { instanceType = "raid", tags = { "dragon", "fire" } } } },
        ["contesto.duel.01"] = { event = "other_action", speaker = "character", styles = { "epic" },
            conditions = { other = { actions = { "duel", within = 30 } } } },   -- a duel requested in the last 30 seconds
    },
    texts = {
        itIT = { ["contesto.inn.01"] = "Sempre una buona parola, qui, oltre al boccale.",
                 ["contesto.raid.01"] = "Il fuoco ha una voce antica, e oggi parla di noi.",
                 ["contesto.duel.01"] = "Una sfida? Sia: che il migliore resti in piedi." },
        enUS = { ["contesto.inn.01"] = "Always a kind word here, besides the tankard.",
                 ["contesto.raid.01"] = "Fire has an ancient voice, and today it speaks of us.",
                 ["contesto.duel.01"] = "A challenge? So be it: may the better one stay standing." },
    },
})
```

| `other.` | Values |
|---|---|
| `kind` | `npc`, `player`, `creature` |
| `race`, `class`, `faction`, `sex` | game tokens (`Orc`, `NightElf`, `Scourge`; `PRIEST`; `Alliance`; `male`/`female`) |
| `levelMin`, `levelMax`, `classification`, `ctype`, `family`, `reaction`, `hostile`, `name` (contains), `npcID` | game data; `reaction`: `hostile`, `unfriendly`, `neutral`, `friendly`, `honored` |
| `role` | `innkeeper`, `merchant`, `guard`, `questgiver`, `trainer`, `flightmaster`, `banker`, `leader`, `civilian` |
| `temperament`, `morality` | the Character Soul values (`gruff`, `cheerful`…; `righteous`…) |
| `goals` | `profit`, `duty`, `knowledge`, `faith`, `glory`, `survival`, `family`, `power`, `peace`, `freedom` |
| `speech` | `plain`, `formal`, `gruff`, `warm`, `terse`, `florid`, `cryptic`, `jovial` |
| `actions` | a recent action: `quest_offer`, `quest_given`, `quest_done`, `merchant`, `trainer`, `flight`, `innkeeper`, `banker`, `gossip`, `trade`, `group`, `duel`, `invite`, `emote`, `attacks`, `ally`; within 120 seconds, or `{ …, within = seconds }` |
| `relation`, `inGroup`, `secret` | S6b label; is in our group; the identity is secret |

| `place.` | Values |
|---|---|
| `instanceType` | `none`, `party` (dungeon), `raid`, `pvp` (battleground), `arena`, `scenario` |
| `territory` | `friendly`, `hostile`, `contested`, `sanctuary`, `combat` |
| `tags` | one of the listed tags (`forest`, `ruin`, `sacred`, `cursed`, `capital`, `port`, `deep`, `dragon`, `neutral`, `inn`…: those of `Data/Places.lua`) |
| `capital`, `friendlyCapital`, `hostileCapital`, `faction`, `rest` | capital; of one's own faction or the opposing one; who rules the place; rest in the open world |
| `encounter`, `lastEncounter` | `true`/`false` (boss fight in progress, or recently over) or the name |
| `encounterResult`, `groupRole`, `battleground` | `win`/`wipe`; `tank`/`healer`/`damage`; `none`/`queued`/`active` |
| `zone`, `subzone`, `mapID`, `continent`, `mood`, `instanceName`, `instanceID`, `difficulty` | as given by the client |

- **Affinity tags** (factor `C`): `other.role:innkeeper`, `other.temperament:gruff`, `other.speech:jovial`, `other.goals:profit` (with hard `req:` and `not:`) and `place.tag:deep`, `place.instance:raid`, `place.territory:hostile`. A class tendency (`Data/NPCs.lua`) slightly raises the weight of a soft tag, never of a `req:`.
- **Placeholders**: `{other}`, `{otherrole}`, `{otherrace}`, `{otherclass}`, `{instance}`, `{encounter}` (see below).
- **Events** (`base_context` pack): `npc_meet` (an NPC with a recognized role), `other_action` (someone performs an action toward us), `encounter_end` (end of a boss fight). They do not speak without the person or the fight, not even by hand. Entering a dungeon or a battleground is the `zone` event with `place = { instanceType = … }`.
- **Rhythm**: in a battleground, in an arena and against a boss, short phrases (up to 80 bytes) weigh more; in a raid the narrator speaks less.
- **Editorial rules** (GDD §5.3, §5.4): a merchant does not declaim like a king; race and class give a greeting tied to the homeland or the trade, never a moral judgment.
- **Data** of the packs: `AzerothUnspoken:RegisterPlaces{ zones, subzones, instances, continents }` (tags and themes by client name; `map`/`id` with `verified = true` only if tested in game), `AzerothUnspoken:RegisterNPCs{ [npcID] = { role, temperament, … } }`, `AzerothUnspoken:RegisterTendencies{ class = { … } }` (never morality). A key that is already registered (a zone, an `npcID`) **replaces** the previous entry, it does not merge with it: to add data to a place of the base database also write its original fields.
  Complete example:

<!-- test -->
```lua
AzerothUnspoken:RegisterPlaces({
    zones = { ["Valle di Prova"] = { tags = { "forest", "sacred" }, mood = "forest", continent = "kalimdor" } },
})
AzerothUnspoken:RegisterNPCs({
    [990001] = { name = "Oste di Prova", role = "innkeeper", temperament = "gruff", speech = "terse" },
})
AzerothUnspoken:RegisterTendencies({ class = { PRIEST = { goals = "faith" } } })
```

- Examples: `Data/RegistryContext.lua` (110 IT/EN phrases).

### New conditions

A pack can declare its own conditions, for data it puts in the context (`AzerothUnspoken:Trigger(event, { hasPet = true })`)
or that it computes by itself:

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "animali",
    languages = { "itIT", "enUS" },
    conditions = {
        hasPet = "bool",                                            -- compares ctx.hasPet with the value; "bool", "str", "num"...
        petNamed = function(valore, ctx) return ctx.petName == valore end,   -- computed
    },
    registry = { ["animali.01"] = { event = "battle", speaker = "character", styles = { "everyday" },
        conditions = { hasPet = true, petNamed = "Brontolo" } } },
    texts = {
        itIT = { ["animali.01"] = "Con Brontolo al fianco, nessuna battaglia è davvero sola." },
        enUS = { ["animali.01"] = "With Grumble at my side, no battle is ever truly alone." },
    },
})
```

or `AzerothUnspoken:RegisterCondition("hasPet", nil, "bool")`.

## Ambient dialogues (NPC Alive)

Dialogues with an NPC (step S8, [ADR 0020](../docs/adr/0020-simulated-dialogue-and-real-dialogue-npc-alive.md)) are data like everything else: a pack can add lines and scripts without touching the engine. They are **simulated**: the window declares it ("addon ambient dialogue") and the lines never go to chat.

**The lines** are rules with `speaker = "npc"` and an event `npcd_<role>_<node>` declared by the pack. They only come out inside a dialogue: `AzerothUnspoken:RegisterDialogues` puts a guard on every node event. The conditions are the usual ones (`other = { role, speech, temperament, npcID }`, `isKnown`, `relation`, `remembered`...): so a gruff innkeeper and a jovial one, a known one and an unknown one, or a specific NPC by `npcID` say different things.

**The script** says which nodes there are and what can be answered. The right way to add a dialogue from a
pack is a **new key**, usually a specific NPC `npc:<npcID>`, which **extends** the archetype's script with
`extends` (its own nodes and replies sit on top of the inherited ones; everything else is inherited). Here is a test
innkeeper (invented `npcID`: in the game use the real one, which you read with `/au who` in front of the NPC) who opens
in his own way and then follows the `innkeeper` script:

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "oste_prova",
    languages = { "itIT", "enUS" },
    events = {                                              -- the events of the new nodes
        npcd_oste_open = { category = "social", chance = 100, cooldown = 0 },
    },
    registry = {                                            -- the lines: npc voice, node event
        ["ostep.open.01"] = { event = "npcd_oste_open", speaker = "npc", styles = { "everyday" },
            tags = { "other.speech:gruff" },
            conditions = { other = { npcID = 990001, any = { { temperament = "gruff" }, { speech = { "gruff", "terse" } } } } } },
    },
    texts = {
        itIT = { ["ostep.open.01"] = "Siediti, se devi. E se non ordini, almeno non intralciare." },
        enUS = { ["ostep.open.01"] = "Sit down, if you must. And if you're not ordering, at least stay out of the way." },
    },
})
AzerothUnspoken:RegisterNPCs({
    [990001] = { name = "Oste di Prova", role = "innkeeper", temperament = "gruff", speech = "terse" },
})
AzerothUnspoken:RegisterDialogues({ scripts = {
    ["npc:990001"] = {
        extends = "innkeeper",           -- the base script: `news`, `bye` nodes, `leave` replies...
        role = "innkeeper", npcID = 990001, start = "open",
        nodes = {
            open = { event = "npcd_oste_open", choices = { "news", "leave" } },   -- the `open` node is its own
        },
    },
} })
```

A key that is already registered (`innkeeper`, `merchant`, `guard`, `flightmaster`, `trainer`, or an `npc:<npcID>` from
another pack) **is replaced as a whole, not merged**: `AzerothUnspoken:RegisterDialogues({ scripts = { innkeeper = … } })`
replaces the base script, and the innkeeper, across the whole game, has only the nodes you write (no warning). To
change an archetype, write a complete script, or use a new key with `extends`. The same goes for the
data of `RegisterNPCs`, `RegisterPlaces`, and for an arc with the same id as another one (the last pack loaded wins).

A complete script with all its nodes (this is how `Data/Dialogues.lua` is built):

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "cantiniere",
    languages = { "itIT", "enUS" },
    events = {
        npcd_cantiniere_open = { category = "social", chance = 100, cooldown = 0 },
        npcd_cantiniere_news = { category = "social", chance = 100, cooldown = 0 },
        npcd_cantiniere_bye = { category = "social", chance = 100, cooldown = 0 },
    },
    registry = {
        ["cant.open.01"] = { event = "npcd_cantiniere_open", speaker = "npc", styles = { "everyday" },
            conditions = { other = { role = "banker" } } },
        ["cant.news.01"] = { event = "npcd_cantiniere_news", speaker = "npc", styles = { "everyday" },
            conditions = { other = { role = "banker" } } },
        ["cant.bye.01"] = { event = "npcd_cantiniere_bye", speaker = "npc", styles = { "everyday" },
            conditions = { other = { role = "banker" } } },
    },
    texts = {
        itIT = { ["cant.open.01"] = "Dimmi pure, ma ho poco tempo.", ["cant.news.01"] = "Niente di nuovo, per fortuna.",
                 ["cant.bye.01"] = "A presto." },
        enUS = { ["cant.open.01"] = "Go on, but I haven't much time.", ["cant.news.01"] = "Nothing new, thankfully.",
                 ["cant.bye.01"] = "See you soon." },
    },
})
AzerothUnspoken:RegisterDialogues({ scripts = {
    banker = {                       -- a new archetype: the key is the role
        role = "banker", start = "open",
        nodes = {
            open = { event = "npcd_cantiniere_open", choices = { "news", "leave" } },
            news = { event = "npcd_cantiniere_news", choices = { "leave" } },
            bye  = { event = "npcd_cantiniere_bye" },            -- no replies: the dialogue ends here
        },
        choices = {
            news  = { label = { it = "Che notizie corrono?", en = "What news is going round?" }, go = "news",
                      flag = "asked_news", relation = "ambient_talk" },
            leave = { label = { it = "Arrivederci.", en = "Farewell." }, go = "bye" },
        },
    },
} })
```

(The lines can use `speech`, `temperament`, `npcID`, `isKnown`, `relation` and `remembered` to tell characters and
relationships apart, as the base ones in `Data/RegistryDialogues.lua` do.)

- **Neutral replies, one to three per node** (at most three appear; `when = { … }` hides one). Questions and actions, never a feeling, a character trait or a moral decision attributed to the character; at most 70 bytes, no placeholders, IT and EN.
- **`flag`**: a local narrative flag, which becomes `npcd_<archetype or npcID>_<name>` in the S6 memory (at most 32 characters in all) and is read in the lines with `remembered`. Never a quest.
- **`relation`**: an increment source from `Data/Relationships.lua` (`ambient`, `ambient_talk`: small, with daily caps).
- Every path must be able to end (a node without replies, or a reply without `go`).
- The **identity** is not chosen by the pack: the dialogue is offered only for an NPC in the curated registry (`AzerothUnspoken:RegisterNPCs`, `Data/NPCs.lua`) or with a role proven by an interaction or chosen by the user. The editorial rules: no prices, quests, news facts, or promises the game does not keep.

## Story Arcs (personal stories)

Arcs (step S9, [ADR 0021](../docs/adr/0021-story-arcs-micro-stories-without-game-effects.md)) are micro-stories of the character: **they are not server quests**, they give no rewards, they do not change the real NPCs and they promise nothing to the game. They live in the addon: a state saved per character, an account in the Journal and a few narrator lines. They are data like everything else: a pack adds arcs without touching the engine. The base arcs are in `Data/Arcs.lua` (structure), `Data/RegistryArcs.lua` (lines) and `Data/itIT|enUS/Arcs.lua` (texts).

**The states.** `LOCKED → DISCOVERED → REFLECTED → RESOLVED`. An arc can define **its own states** (`states = { "LOCKED", "DISCOVERED", "JOURNEY", "REFLECTED", "RESOLVED" }`: uppercase, at most 10 letters, always from `LOCKED` to `RESOLVED`) and from one state you go **only to the next**: no jumps, no steps back.

**The steps.** Each step leads from one state to the next:

A complete arc (structure, texts and lines) in an external pack. The two parts that follow, the texts and the lines,
are discussed below.

<!-- test -->
```lua
AzerothUnspoken:RegisterArcs({
    pack = "mio_pacchetto",
    arcs = {
        ponte = {                                   -- the id: lowercase, digits and _, at most 12 characters
            choices = { cosa = { options = { "coraggio", "prudenza" } } },     -- 2 to 3 options, same ids in every language
            steps = {
                { from = "LOCKED", to = "DISCOVERED", on = { "zone" },
                  when = { levelMin = 20, place = { any = { { mapID = 1436 }, { zone = "Westfall" } } } } },
                { from = "DISCOVERED", to = "REFLECTED", on = { "zone", "player" }, wait = 300, choose = "cosa" },
                { from = "REFLECTED", to = "RESOLVED", on = { "level" } },
            },
        },
    },
    texts = {                                       -- the arc's texts, per language (or with AddArcTexts, further below)
        itIT = { ponte = {
            title = "Il ponte",
            summary = "Un ponte vecchio, e una scelta su come attraversarlo.",
            states = {
                DISCOVERED = "Hai ritrovato il ponte. Aspetta, come sempre.",
                REFLECTED = "Hai deciso come attraversarlo.",
                RESOLVED = "Dall'altra parte, il ponte è solo un ponte.",
            },
            choices = { cosa = { prompt = "Come lo attraversi?",
                options = { coraggio = { label = "Con coraggio", note = "Hai scelto di non guardare giù." },
                            prudenza = { label = "Con prudenza", note = "Hai scelto di provare ogni asse." } } } },
        } },
        enUS = { ponte = {
            title = "The bridge",
            summary = "An old bridge, and a choice about how to cross it.",
            states = {
                DISCOVERED = "You found the bridge again. It waits, as ever.",
                REFLECTED = "You decided how to cross it.",
                RESOLVED = "On the other side, the bridge is just a bridge.",
            },
            choices = { cosa = { prompt = "How do you cross it?",
                options = { coraggio = { label = "With courage", note = "You chose not to look down." },
                            prudenza = { label = "With care", note = "You chose to test every plank." } } } },
        } },
    },
})

AzerothUnspoken:RegisterPack({                      -- the arc's lines (see below)
    id = "ponte_battute",
    languages = { "itIT", "enUS" },
    events = {
        arc_open = { category = "reflection", chance = 100, cooldown = 0 },
        arc_step = { category = "reflection", chance = 100, cooldown = 0 },
        arc_resolve = { category = "reflection", chance = 100, cooldown = 0 },
    },
    registry = {
        ["ponte.open.i"] = { event = "arc_open", speaker = "inner", styles = { "intimate" },
            depth = { "natural", "literary", "elevated" }, conditions = { arc = { id = "ponte", state = "DISCOVERED" } } },
        ["ponte.step.e"] = { event = "arc_step", speaker = "narrator", styles = { "ancient" },
            conditions = { arc = { id = "ponte", state = "REFLECTED" } } },
        ["ponte.done.coraggio"] = { event = "arc_resolve", speaker = "narrator", styles = { "epic" },
            conditions = { arc = { id = "ponte", state = "RESOLVED", choice = "coraggio" } } },
        ["ponte.done.prudenza"] = { event = "arc_resolve", speaker = "narrator", styles = { "intimate" },
            conditions = { arc = { id = "ponte", state = "RESOLVED", choice = "prudenza" } } },
    },
    texts = {
        itIT = { ["ponte.open.i"] = "Il ponte è ancora lì. Chissà da quanto mi aspettava.",
                 ["ponte.step.e"] = "guarda il ponte a lungo, poi muove il primo passo.",
                 ["ponte.done.coraggio"] = "attraversa a testa alta, senza voltarsi.",
                 ["ponte.done.prudenza"] = "attraversa piano, tavola dopo tavola, e non perde nulla." },
        enUS = { ["ponte.open.i"] = "The bridge is still there. Who knows how long it has been waiting for me.",
                 ["ponte.step.e"] = "looks at the bridge for a long while, then takes the first step.",
                 ["ponte.done.coraggio"] = "crosses with head held high, without looking back.",
                 ["ponte.done.prudenza"] = "crosses slowly, plank by plank, and loses nothing." },
    },
})
```

| Step field | Meaning |
|---|---|
| `from`, `to` | states; `to` is the one after `from` in `states` |
| `on` | the **real events** that can trigger it: `zone` (you enter a zone, after two seconds), `death`, `level`, `npc` (gossip, vendor, flight, trainer, innkeeper, bank: not quests), `flag` (a new narrative flag set by an addon system: for example one of the S8 ambient dialogues, with `remembered = "npcd_innkeeper_asked_news"`; not the ones the player sets by hand, nor the automatic memory ones such as `first_death`, which are read with `remembered` inside the `death`, `level` or `zone` event that causes them), `player` (a direct choice by the player, from the Journal or with `/au stories choose`) |
| `when` | RuleEngine conditions, evaluated on the context of the moment, the same as for phrases (place with `place = { mapID, zone, tags, capital }`; memory with `firstVisit`, `repeatVisit`, `lastVisitBad`, `remembered`; relationships with `isKnown`, `familiarityMin`, `trustMin`; `other = { role, npcID }`; `levelMin`; `race`), plus `arc = { … }` (below), `arcDone = "<id>"` (another arc is finished) and `capitalsVisitedMin = n` |
| `wait` | clock seconds that must pass since entering the starting state |
| `choose` | the step waits for the player to choose among the options of `choices[...]`: the choice is saved as the **option id** |

- **No opening without a real event.** The opening (`from = "LOCKED"`) has one event among `zone`, `death`, `level`, `npc`, `flag`, never `player`, and cannot ask for a choice. Time passing, a command or another system neither opens nor advances an arc.
- **One step per event, per arc.** With a choice pending the arc waits for the player. `player` steps have no event: the Journal offers them when the conditions and the wait hold. The flags that the arcs themselves leave (`arc_…`) advance nothing.
- **`subject = "npc"`**: the arc binds to the first NPC that opens it (`npc` event, with `when = { other = { role = … }, familiarityMin = … }`). In the later steps, `arc = { withSubject = true }` asks that the event's NPC be the same one; in the lines `{other}` is its name. The addon only reads the relationship it already keeps (S6b relationships): it changes nothing about the NPC.
- **`topic = "death"`** (or another Character Soul topic): if the character avoids that topic, the arc neither opens nor advances.
- **Slots**: at most 1–2 active arcs (`arcs.maxActive`, `/au stories max <1|2>`). If an opening event arrives when the slots are full, the arc stays "available" and the player starts it from the Journal.
- **The player is in control.** Every arc can be **suspended**, **skipped** or **disabled**, one by one or all at once (`/au stories`, Journal); the `storyArcs` module turns everything off. A suspended or skipped arc can be resumed; a disabled one can be re-enabled.
- **The ending** (`RESOLVED`) leaves a permanent memory in Living Memory (`kind = "story"`, tags `arc`, `done` and the arc id: no text). Every state reached sets the flag `arc_<id>_<state>` (lowercase), which phrases read with `remembered`.
- **No field for rewards or effects**: an unknown field in an arc or a step is a validator error (`reward`, `quest`…).

**The arc's texts** (per language; in the base database they are in the `Data/<language>/…` files, in a pack you can give them as `texts` of `RegisterArcs`, as above, or with `AddArcTexts`). An excerpt of the shape, complete in the example:

```lua
AzerothUnspoken:AddArcTexts("itIT", { ponte = {
    title = "Il ponte",                       -- at most 70 bytes
    summary = "Una riga o due: di che storia si tratta.",
    stateNames = { JOURNEY = "a metà" },      -- optional: the names of custom states (the addon already has the base ones)
    states = {                                -- the account of each state, except LOCKED: it also says what the story is waiting for
        DISCOVERED = "…", REFLECTED = "…", RESOLVED = "…",
    },
    choices = { cosa = { prompt = "La domanda al giocatore",
        options = { coraggio = { label = "Con coraggio", note = "Che cosa resta nel diario." },      -- label: at most 70 bytes, no placeholders
                    prudenza = { label = "Con prudenza", note = "…" } } } },
} })
```

The options are **chosen by the player**, and the text does not make the character say anything the player did not decide. Title, account of each state, questions, labels and notes are needed in both Italian and English: `/au validate` reports the ones that are missing (`badArc`).

**The lines** are rules of the events `arc_open` (first step), `arc_step` (intermediate steps) and `arc_resolve` (last step), which a pack declares with `events = { arc_open = { category = "reflection", chance = 100, cooldown = 0 }, … }` (as in `Data/RegistryArcs.lua`). Each rule **declares the arc** with the `arc` sub-table, and the validator requires it (excerpt from the `ponte_battute` pack of the example):

```lua
registry = {
    ["ponte.open.i"] = { event = "arc_open", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary", "elevated" },
        conditions = { arc = { id = "ponte", state = "DISCOVERED" } } },
    ["ponte.done.coraggio"] = { event = "arc_resolve", speaker = "narrator", styles = { "epic" },
        conditions = { arc = { id = "ponte", state = "RESOLVED", choice = "coraggio" } } },
}
```

| `arc.` | Values |
|---|---|
| `id` | the arc (an unknown id is an error) |
| `state`, `from` | the state just reached, and the one it came from (a list is also accepted) |
| `choice` | one of the choices the player made in the arc (the option id) |
| `withSubject` | the event's NPC is the arc's NPC |

- **Private voices**: `inner` and `narrator`. Never `character`, which in proposal mode can become a phrase in chat.
- They come out of the Narrative Director with the "exceptional event" priority, **one at a time** (at least 90 seconds, `BEAT_GAP`, between two arc lines: no cascade). If the moment is not a good one (combat, death, raid or battleground, intrusive screen, pause) the line waits for up to 15 minutes; with intensity at 0 or the module off it stays silent. **The state advances anyway and the Journal tells the story**: silence is a valid outcome.
- They are not spoken by hand (`/au event arc_open` produces nothing): the engine makes them speak only for an arc's step.
- Editorial rules (GDD §5.4, §7.5): original, no invented lore passed off as canon, no promise of consequences on the game. No rewards, "mission" or "loot" in the texts.
- An arc with a wrong definition stays registered but never starts: `/au validate` says why.

## Placeholders

| Placeholder | Value |
|---|---|
| `{player}` | the character's name (the Total RP 3 one, if active) |
| `{target}` | target |
| `{spell}` | the spell just cast |
| `{zone}`, `{subzone}` | place |
| `{level}`, `{class}`, `{race}`, `{faction}`, `{targettype}` | in the chosen language |
| `{relation}` | the label of the relationship with the person of the interaction (relationships, S6b) |
| `{other}`, `{otherrole}`, `{otherrace}`, `{otherclass}` | the interlocutor: name, role, race and class in the chosen language (or the custom race and class from Total RP 3) |
| `{instance}`, `{encounter}` | the instance and the boss fight in progress or just finished |
| `{g:masculine\|feminine}` | gender variant **of the character**: `{g:pronto\|pronta}` |
| `{og:masculine\|feminine}` | gender variant **of the interlocutor** (`ctx.other.sex`): `{og:amico\|amica}`. If the sex is not known the variant is discarded; it does not enter the placeholder signature (a language may have no gender) |
| `{name}` | a vocabulary entry, for example `{cry}` (a war cry suited to the race) |

**Gender: who speaks and to whom** (issue #61). `{g:}` agrees with the character who speaks or thinks (in NPC lines,
with the character the NPC is addressing); `{og:}` agrees with the person of the interaction (`ctx.other`: whoever is
greeted, healed, or stands beside you in battle). The rules:
- use `{og:}` only where the phrase really addresses the interlocutor or talks about them: `{og:Ben trovato|Ben trovata}`
  ("well met"), `Non sei {og:solo|sola}` ("you are not alone"), `Sta' {og:fermo|ferma}` ("stay still"). Never for pets,
  enemies or creatures, whose sex is not known: for them choose words without agreement («bestia mia», "my beast";
  «chi mi accompagna», "whoever accompanies me"; «il nemico», "the enemy");
- every phrase with `{og:}` keeps **at least one variant without `{og:}`**, written in a neutral form (common-gender
  nouns such as «viandante» ("wayfarer") or «ospite» ("guest"), no agreeing adjectives or participles), because without
  the interlocutor's sex the variants with `{og:}` are discarded. The content test checks this;
- before `{og:}` try the neutral form: «Alla prossima» ("see you next time") instead of «Alla prossima, compagno»
  ("see you next time, companion"). If it sounds natural, that is enough;
- English usually does not need it: `{og:}` does not enter the placeholder signature, so Italian can use it
  even if English does not.

The English of the base packs follows **American spelling**, the same as the client (`color`, `honor`, `traveler`,
`recognize`, `gray`): the content test flags the most common British forms (issue #66).

If a required piece of data is missing (for example `{target}` without a target), that variant is discarded and the engine
picks another one, or another phrase. Lua strings contained in the texts are never executed.

## Vocabulary

Short complete formulas, chosen according to the context, that are inserted into phrases with `{name}`.
Each entry can have several variants per language:

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "vocabolario",
    languages = { "itIT", "enUS" },
    vocab = {
        cry = {
            { when = { race = "Dwarf" }, it = "Per Forgiardente!", en = "For Ironforge!" },
            { it = { "Avanti!", "In marcia!" }, en = { "Onward!", "Forward!" } },
        },
    },
    registry = { ["vocab.battle.01"] = { event = "battle", speaker = "character", styles = { "epic" } } },
    texts = {
        itIT = { ["vocab.battle.01"] = { "{cry} Non ci fermeranno.", "Non ci fermeranno." } },
        enUS = { ["vocab.battle.01"] = { "{cry} They will not stop us.", "They will not stop us." } },
    },
})
```

Entries are **added** to those of other packs with the same name. The vocabulary cannot contain other vocabulary or `{line}`.

An entry can carry `tags`, with the same grammar as those of rules: `{ tags = { "topic:blood" }, it = "Sangue e tuono!", en = "Blood and thunder!" }`. When the Character Soul profile **excludes** that tag (a topic to avoid, a `req:` or a `not:` that does not hold) the entry is never chosen; if none is left, the variant that used the placeholder is discarded as for a missing piece of data (issue #42). Soft tags (`temperament:...`) do not change the vocabulary weight. The validator reports (`badTag`) wrong tags.

## Narrative frames

In emote mode, a `character`'s speech can be placed inside a frame. `{line}` is the phrase:

<!-- test -->
```lua
AzerothUnspoken:RegisterPack({
    id = "cornici",
    languages = { "itIT", "enUS" },
    frames = {
        { event = "battle", when = { race = "Dwarf" },
          it = "si sputa sulle mani e grida: «{line}»", en = "spits on {g:his|her} hands and roars, \"{line}\"" },
    },
})
```

A frame without `event` applies to all events; every variant must contain `{line}`.
A frame can state its registers (`styles = { "ceremonial" }`): then it accepts only phrases of the same or a nearby
register (epic and ceremonial yes, ceremonial and ironic no). Without `styles` it accepts every phrase.
Frame and phrase together must fit within the 255 bytes of a message (the validator warns).

## New languages, translations and extra texts

<!-- test -->
```lua
AzerothUnspoken:RegisterLanguage("de", { name = "Deutsch", ui = { help_title = "Befehle (die Namen bleiben englisch):" } })
AzerothUnspoken:RegisterPack({
    id = "tedesco",
    texts = { deDE = { ["battle.gen.12"] = "Keinen Schritt zurück. Keinen einzigen!" } },
})
```

- Texts for ids of **other packs** (including the base one) are **added as variants**: a translation brings a new
  language, an extra text in the same language sits alongside the existing ones (an identical text is not duplicated).
- Missing interface texts fall back to English (the base language of the addon). See `Data\enUS\Interface.lua` for all the keys. Command names are never translated: only the descriptions and messages are, so a language pack adds `help_*` descriptions and messages, not command words.
- A language registered by a pack stays the one chosen by the user from one session to the next.
- The old name `AzerothUnspoken:AddTranslations(language, map)` and the pack field `translations` still work.

## Language packs and regional packs (loaded on demand)

The download is one addon made of several folders (#85, #101). The base addon loads **only the language folder of
the language chosen by the user**, and the folders of a **region** (a continent) only while the character is there,
outside combat. The user never chooses a folder. The same mechanism is open to external packs: a pack says what it
holds in its `.toc`, and the base addon finds it.

| `.toc` field | Meaning |
|---|---|
| `## LoadOnDemand: 1` | the client does not load the folder at login; Azeroth Unspoken does, when needed |
| `## X-AzerothUnspoken-Language: enUS` | the folder holds phrase texts in that language (`enUS`, `itIT`, `deDE`...) |
| `## X-AzerothUnspoken-Region: kalimdor` | the folder belongs to that region: the continent token of `place.continent` (`kalimdor`, `eastern`) |

A **language pack** (language, no region) is a list of `AddTexts` files, like `AzerothUnspoken_enUS`:

```
## Interface: 16001
## Title: Azeroth Unspoken - English phrases
## Dependencies: AzerothUnspoken
## LoadOnDemand: 1
## X-AzerothUnspoken-Language: enUS

Combat.lua
```

Its files start with `local NS = AzerothUnspoken` (a LoadOnDemand addon gets its own `...`, not the addon's) and then
call `NS:AddTexts("enUS", { ... }, "base_combat")` as before. Only the folder of the chosen language is loaded; if it
is missing, the base addon says so and uses English. A pack that is not LoadOnDemand (no `LoadOnDemand` line, like the
example pack) is loaded by the client at login and keeps working as it always did, with every language inside.

A **regional pack** is a folder of rules (region, no language) and one folder of texts per language (region and
language). The files do not register their tables directly: they register **builders**, functions that return them.
The base addon runs them when the character enters the region, drops the rules when the character leaves it, and runs
them again on the way back (WoW cannot unload an addon, so the folder itself stays loaded until `/reload`):

<!-- test -->
```lua
-- AzerothUnspoken_Nani_Kalimdor/Rules.lua (## X-AzerothUnspoken-Region: kalimdor)
AzerothUnspoken:RegisterRegionalPack("kalimdor", function()
    return {
        id = "nani_kalimdor",
        languages = { "itIT", "enUS" },
        registry = {
            ["nanir.zone.01"] = { event = "zone", speaker = "inner", styles = { "intimate" }, conditions = { zone = "Durotar" } },
        },
    }
end)
-- AzerothUnspoken_Nani_Kalimdor_enUS/Texts.lua (## X-AzerothUnspoken-Region: kalimdor and Language: enUS)
AzerothUnspoken:RegisterRegionalTexts("kalimdor", "enUS", "nani_kalimdor", function()
    return { ["nanir.zone.01"] = { "Red dust, and not one stone that remembers a dwarf." } }
end)
-- AzerothUnspoken_Nani_Kalimdor_itIT/Texts.lua (## X-AzerothUnspoken-Region: kalimdor and Language: itIT)
AzerothUnspoken:RegisterRegionalTexts("kalimdor", "itIT", "nani_kalimdor", function()
    return { ["nanir.zone.01"] = { "Polvere rossa, e nemmeno una pietra che ricordi un nano." } }
end)
```

- `RegisterRegionalPack(region, builder)`: the builder returns a v2 pack (`id`, `registry`, optional `languages`,
  `frames`, `vocab`); its `id` must be unique. `RegisterRegionalTexts(region, language, packId, builder)`: the builder
  returns `{ [id] = variants }`, like `AddTexts`; `packId` is the pack of the rules (the texts then cost the least memory).
- Put in a regional pack only what is bound to the region: rules with `zone`, `subzone` or `place` conditions of that
  continent. Generic lines stay in a language pack or in an ordinary pack, available everywhere. Races, classes,
  weather and situations are conditions, never a pack of their own.
- The ids keep their anti-repetition memory while the region is not loaded: at login an unknown id keeps its uses
  (they fade as usual) and its last use for at most 30 days.
- A missing regional folder is not an error: the lines that hold everywhere are used. `/au packs` lists every folder
  with its state; `/au validate` checks the packs and the languages that are loaded now.

## Authoring archive (nothing changes for external packs)

The base folders and the regional folders are read and written by the authoring archive (`tools/archive/`, ADR 0027), a
tool outside the game: it imports them, and writes the **approved** content back. The format described in this guide does
not change, and an external pack does not need the archive. To stay readable by it, a base or regional file keeps the shape
shown above: one `RegisterPack` (or `RegisterRegionalPack`) whose `registry` is a literal table of `["id"] = { ... }`, and
one `AddTexts` (or `RegisterRegionalTexts`) per language file with literal variants. A file that computes its rules in code
still works in the game, but it is left out of the archive and of its reports.

## Previous format (converted on load)

```lua
phrases = {
    { id = "nani.battle.01", event = "battle", form = "say", speaker = "character", tone = "eroico", weight = 1,
      cooldown = 600, when = { race = "Dwarf" },
      it = "Le montagne non arretrano!", en = "The mountains do not yield!" },
},
```

Each phrase becomes a rule and a text for each language (also `text = { it = ..., en = ... }`, with strings or lists).
The value of `form` and of `speaker` is deduced as before: `say` → `character`, `emote` → `narrator`. The old `tone` becomes a register:

| `tone` | Register |
|---|---|
| `epico`, `eroico`, `feroce` | `epic` |
| `solenne` | `ceremonial` |
| `oscuro` | `tragic` |
| `malinconico` | `intimate` |
| `ironico` | `ironic` |
| `mistico` | `ancient` |
| other | stays as it is (the validator warns) |

The previous format has no `depth`, `tags` or `category` (the event's one is used): it is better to move to schema v2 for new phrases.
**Warning**: in the previous format `id` is the identifier field, not a language: for Indonesian write `idID`.

## Validator

`/au validate` checks all packs, `/au validate <pack>` just one, `/au validate full` also shows
the problems beyond the first twelve. The same checks run in the offline tests. An **error** must be fixed,
a **warning** is advice.

| Code | Level | Meaning |
|---|---|---|
| `dupId`, `badId` | error | id already used by another pack, or not valid (the duplicate phrase is ignored) |
| `noText`, `emptyLang`, `emptyVariant` | error | no text, all variants empty, empty or non-string variant |
| `missingLang` | error | the text is missing in a language of the pack (`languages`, or those the pack writes in) |
| `placeholderMismatch` | error | IT and EN do not use the same placeholder combinations |
| `badDialogue` | error or warning | a wrong `RegisterDialogues` script: missing node or reply, event without lines or not of the `npc` voice, invalid flag, text missing in a language, unreachable node |
| `badArc` | error or warning | a wrong `RegisterArcs` arc: invalid id, states or steps, undefined choice, unknown field (including a reward), title, account or choices missing in a language; an `arc_open`/`arc_step`/`arc_resolve` rule without `arc = { id }` or with a state the arc does not have; warning: a step without lines (the arc advances in silence) |
| `badPlaceholder` | error | unknown placeholder, malformed gender (`{g:}`, `{og:}`), unclosed brace, `{line}` outside frames, vocabulary inside vocabulary |
| `frameNoLine` | error | a frame without `{line}` |
| `badCondition` | error | unknown condition or one with a value of the wrong type |
| `recallWithoutMemory` | error | a phrase of a recall event (`memory_return`…) without a memory condition |
| `tooLong` | error | over 255 bytes in the worst case (long names in placeholders) for `/s`, `/e`, party, guild...; for thoughts, over 400 bytes is a warning |
| `tooLongFramed` | warning | with the longest frame it exceeds 255 bytes |
| `badUTF8` | error | text that is not valid UTF-8, control character, U+FFFD (corrupted text) |
| `emoteCase` | error | an emote that starts with a capital letter or with quotation marks |
| `badSpeaker`, `badForm`, `badDepth`, `badWeight`, `badCooldown`, `badConditions`, `noEvent` | error | value not allowed in the rule (the engine falls back to a valid value) |
| `orphanText` | error | texts for an id that no pack has registered |
| `noSpeaker`, `noStyle`, `innerEmote` | warning | missing voice or register; a thought in the form of an emote |
| `unknownEvent`, `unknownCategory`, `unknownStyle`, `unregisteredLanguage` | warning | undeclared event, category or register; language without `RegisterLanguage` |

Content checks (verified lore, spelling, the speaker's register) remain editorial: the validator does not do them.

## How the engine chooses

1. It gathers the event's phrases that have at least one usable variant in the chosen language (not empty, with the
   required data, from an enabled pack), that satisfy the conditions and their own `cooldown`.
2. Weight **W = B × C × P × N × S × R** (GDD §10):
   - `B` = `weight`;
   - `C` = 1 + 0.35 × number of conditions (context);
   - `P` = the player's personality (Character Soul): soft affinity, requirements and topics to avoid (see "Personality"); 1 if the profile is neutral;
   - `N` = novelty: ÷ (1 + 0.3 × recent uses), and ×0.6 if the main register is the same as that of the last phrase of the same event;
   - `S` = style: depth (×0.3 if the phrase is written for other depths) × registers (StyleResolver, above);
   - `R` = relationship with the person of the interaction (`rel.` tags, see "Relationships"); 1 without a relationship. The interlocutor and the place also weigh in, in the `C` factor (`other.` and `place.` tags);
3. No factor excludes a phrase for reasons of style: there is always a fallback.
4. Recently used phrases (about 60% of those available, at most `pacing.recentPhraseWindow` = 30) are excluded as long as there are others.
5. Once the phrase is chosen, it chooses a **variant**: among those of the right depth (or with no indication), different from the last one used.
6. The memory of uses and variants is saved between sessions, per character, and uses fade at every access.
7. Before the engine, the **Narrative Director** decides (spontaneous events, not explicit requests): intensity,
   probability per event (`/au chance`), pauses (global `/au cooldown`, per category, per event), budget per category,
   priority and suspension during cutscenes and demanding combat. A new event has the "ambient" priority;
   a pack can change it with `AzerothUnspoken:SetEventPriority("fishing", "memory")`
   (`dialogue`, `exceptional`, `memory`, `ambient`). See [docs/ARCHITECTURE.md](../docs/ARCHITECTURE.md).

## Trying the examples

Every `lua` block in this guide preceded by a `<!-- test -->` line is a complete, working pack.
`Tests/check_docs.py` (launched by `Tests/run_tests.py`) loads them **one after another as an external pack would**
(`local ADDON, NS = ...` is its namespace, the APIs are called from `AzerothUnspoken:`), runs the validator on all the
packs and fails if even one reports an error. A block preceded by `<!-- test: error -->` is an example that is wrong
on purpose and must produce an error. If you change an example, or the API it uses, the tests will tell you; if you add one,
give it the `<!-- test -->` line and ids of its own (that do not coincide with those of the other examples). The same script checks the relative
links of all the Markdown files in the repository.
