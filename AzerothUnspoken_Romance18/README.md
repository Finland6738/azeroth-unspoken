# Azeroth Unspoken - Romance 18+

> English version. The Italian twin is [README.it.md](README.it.md); when they differ, fix both.

An **optional** pack for the active romance of Azeroth Unspoken ([ADR 0061](../docs/adr/0061-active-romance-flirt-answers-an-affinity-table-one-beloved-and-three-tone-tiers.md),
[spec](../docs/specs/romance.md), point 12). It holds the lines of the third tone tier, **Explicit**, and it is silent
unless the player turned on the 18+ setting.

- **Where to get it:** only as a separate zip, `AzerothUnspoken_Romance18-<version>.zip`, attached to the releases of the
  project's GitHub repository (the Releases page). It is **never** on CurseForge, and the main zip
  never contains it. Unzip it into `Interface\AddOns` next to `AzerothUnspoken`.
- **How it turns on:** *Settings > Romance > Explicit romance (18+)* (or `/au romance adult on`) asks twice; then the tone
  *Explicit* (`/au romance tone 3`). Only then does the addon load this folder. Turning the 18+ setting off removes the
  pack's lines and flirts from memory at once.
- **What is in it:** a few samples written by the project: three flirt answers and nine lines (NPC replies, the
  scenes of the vow, two thoughts). They are **mature and never graphic**: a closed door, a kiss, a candle going out.
  Heavier texts are not part of this project: they belong to an author's own pack, written in the format below.

Romance is **private narration**. Nothing here is ever sent to chat or to the Chat Gateway, changes a real game window,
quest or vendor, or drops the label *addon ambient dialogue* of the dialogue window and the romance popup.

## The rules for anything written for it

These are not style advice; a pack that breaks them is not one this project will ever link or ship.

1. **Adults only.** Every character is an adult. Nothing may involve, describe, suggest or allude to a minor, a child's
   body or a school age, in any language. Child NPCs are already left out of romance (`romance.exclude` in
   `AzerothUnspoken/Data/Romance.lua`); a pack never names one.
2. **Consent, always.** An advance is invited and welcomed. The NPC may say *no* (`npcd_romance_refuse`) or *not tonight*
   (`npcd_romance_cold`), and a no is respected, by the NPC and by the inner voice. No coercion, no pressure, no
   intoxication, no sleep, no one unable to answer, no "no that means yes", no punishment.
3. **No real people**, no names of players, no URLs, no text copied from the game or from other works.
4. **The character never speaks.** No line is in the character's voice (`speaker = "character"`): the player decides
   what the character does, through the flirt answer they chose.

## The pack's files

```
AzerothUnspoken_Romance18/
  AzerothUnspoken_Romance18.toc
  Registry.lua        the rules
  Flirts.lua          the flirt answers
  Texts_enUS.lua      the English texts
  Texts_itIT.lua      the Italian texts
  README.md           this guide (and README.it.md)
  NOTICE.md           the licence of the texts
```

The `.toc`:

```
## Interface: 16001
## Title: Azeroth Unspoken - Romance 18+
## Notes: Optional explicit romance texts for Azeroth Unspoken. Silent unless the 18+ setting is on.
## Dependencies: AzerothUnspoken
## LoadOnDemand: 1
## X-AzerothUnspoken-Romance: 18
```

`## X-AzerothUnspoken-Romance:` is what keeps a folder out of the main zip (`tools/package_release.py`). The addon
loads only the folder named in `romance.pack18.addon` of `Data/Romance.lua` (`AzerothUnspoken_Romance18`), and allows
the tier *Explicit* only while that folder is loaded. So an author's own pack lives **in this folder**: add your files
(with your own pack id) and list them in the `.toc`, or replace the samples. Then the first lock (nothing loads before
the consent and the tone *Explicit*) holds for your texts too.

## How a part registers: `Register18`

Every file wraps what it registers in `AzerothUnspoken.Romance:Register18(pack, fn)`:

```lua
local AU = AzerothUnspoken
if not (AU and AU.Romance and AU.Romance.Register18) then return end

AU.Romance:Register18("mypack18", function()
	AU:RegisterPack({ id = "mypack18", romance18 = true, languages = { "itIT", "enUS" }, registry = { ... } })
end)
```

`fn` runs only while the 18+ consent is on. When the player turns the consent off, the engine drops everything the pack
registered (rules, their texts, flirts); when the player turns it on again, `fn` runs again. Build the tables **inside**
`fn` (the engine empties a registered pack's tables). Never call `RegisterPack` or `RegisterDialogues` outside it.

## The rules (`Registry.lua`)

The rule format is the one of [`PACK_FORMAT.md`](../AzerothUnspoken/PACK_FORMAT.md) (*One rule*, *Conditions*),
with `romance18 = true` on the pack. An 18+ pack declares no events of its own: it uses the six events of active
romance, which the base addon declares.

| Event | Speaker | What it is | Bytes |
|---|---|---|---|
| `npcd_romance_welcome` | `npc` | the NPC welcomes the flirt, in the dialogue window | 255 |
| `npcd_romance_cold` | `npc` | the NPC says *not now*, kindly | 255 |
| `npcd_romance_refuse` | `npc` | the NPC says *no* | 255 |
| `npcd_romance_jealous_open` | `npc` | the beloved's jealous opening (picked at tier 1 only: an 18+ pack has no use for it) | 255 |
| `romance_scene` | `narrator`, `form = "say"` | the prose of the romance popup (the moments `declaration`, `date`, `vow`) | 600 |
| `romance_inner` | `inner` | the character's private thought after a flirt | 255 |

The byte limits count UTF-8 bytes, with `{other}` filled; Italian accented letters take two.

### Conditions

| Condition | | Meaning |
|---|---|---|
| `romanceTier = 3` | **must** | on every rule. The validator refuses a rule of an 18+ pack without it, with another tier, or on an event that is not one of the six (error `romance18`); and refuses tier 3 in any pack without `romance18 = true` |
| `romanceStage` | may | the stage with the NPC: `declared` or `vowed` are the only stages where tier 3 can happen (the situation's tier, spec 9.2) |
| `romanceMoment` | may | `vow` (the only moment that can reach tier 3: a declaration happens before the stage `declared`, a date takes the tier of its option, 1 or 2) |
| `romancePhase` | may | `open`, `welcome` (after the vow, always `welcome`) |
| `romanceDate` | may | the date option (`walk`, `supper`, `stargaze`, `night`): today no option is tier 3, so a tier-3 rule with it is never picked |
| `romanceKind` | may | the kind of flirt answered: `glance`, `compliment`, `gift`, `walk`, `invite`, `moment` |
| `romanceOutcome` | may | for `romance_inner`: the answer the thought follows, `welcome`, `cold`, `refuse` (or a list) |
| `romanceBeloved`, `romanceOther`, `romanceNight` | may | the NPC is the beloved; the character has another beloved; the night of romance |
| `other = { temperament = ..., role = ... }` | may | the NPC's temperament and role, as in the base romance lines |

Any other condition of `PACK_FORMAT.md` may appear too. A scene names the NPC with `{other}`; the Italian agrees with
the character with `{g:m|f}` and with the NPC with `{og:m|f}`. The NPC's replies must fit an NPC of either sex.

```lua
["mypack18.welcome.t3.n1"] = { event = "npcd_romance_welcome", speaker = "npc", styles = { "intimate" },
	tags = { "topic:romance" }, theme = "home", weight = 1,
	conditions = { romanceTier = 3 } },
["mypack18.scene.vow.welcome.t3"] = { event = "romance_scene", speaker = "narrator", form = "say",
	styles = { "intimate" }, tags = { "topic:romance" }, theme = "home",
	conditions = { romanceTier = 3, romanceMoment = "vow", romancePhase = "welcome" } },
```

A welcomed scene of tier 2 or 3 **fades to black** in the popup after its text: write it so it ends on a closing line.

### Texts

```lua
AU.Romance:Register18("mypack18", function()
	AU:AddTexts("enUS", { ["mypack18.welcome.t3.n1"] = { "First variant.", "Second variant." } }, "mypack18")
end)
```

Two or three variants per rule and language; every language of the pack (`languages`) for every rule.

## The flirt answers (`Flirts.lua`)

The format of spec point 4.1 and `PACK_FORMAT.md` (*Ambient dialogues*), with `romance18 = true` and `tier = 3`:

```lua
AU.Romance:Register18("mypack18", function()
	AU:RegisterDialogues({ pack = "mypack18", romance18 = true, flirts = {
		{ id = "stay_night", kind = "invite", stage = { "declared", "vowed" }, tier = 3, when = { romanceNight = true },
			label = { en = "Ask them to stay the night with you.", it = "Chiedi di restare con te stanotte." } },
	} })
end)
```

- `id`: `a-z`, `0-9`, `_`, unique in the pack. `kind`: `glance`, `compliment`, `gift`, `walk`, `invite` (a `moment`
  answer is the base addon's).
- `stage = { from, to }`: `declared` and `vowed` (tier 3 is never offered earlier).
- `tier = 3`, always (tiers 1 and 2 inside an 18+ pack are an error).
- `label`: what the player does, at most 70 bytes, no `{placeholder}`, in every language of the addon (English and
  Italian).
- `roles`, `when`: optional, as in the base flirts.

The NPC answers it with a line of `npcd_romance_<outcome>`. An 18+ flirt is offered only when every gate of active
romance holds, the 18+ consent is on, the tone is *Explicit*, and the moment is intimate (a declared or vowed NPC, at
night at an inn or rested).

## How to test it offline

You need Python 3 and `lupa` (`pip install lupa`), from a clone of the repository.

1. Put your files in `AzerothUnspoken_Romance18/` and list them in its `.toc`.
2. `python -I -X utf8 Tests/run_tests.py AzerothUnspoken`: the whole suite. Its test `TestRomance18` installs
   `AzerothUnspoken_Romance18` like a player does, checks the three locks and runs the validator on the samples. To
   check your own pack the same way, copy `Tests/TestRomance18.lua`, change `PACK` and the counts, and add its name to
   the list of tests in `run_tests.py`.
3. `python -I -X utf8 Tests/check_package.py`: the main zip never holds a folder marked `X-AzerothUnspoken-Romance`.

In game, with the pack installed and the 18+ setting on: `/au validate mypack18` runs the same validator, and
`/au romance why` tells what the last flirt scored and at which tier.

## Licence

The sample texts of this folder are phrases and narrative data: see [NOTICE.md](NOTICE.md) and
[LICENSING.md](../LICENSING.md). The texts you write for your own pack are yours.
