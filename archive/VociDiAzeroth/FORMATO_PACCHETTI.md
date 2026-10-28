# Voci di Azeroth: formato dei pacchetti di frasi

Il motore (`Core.lua`, `Engine.lua`, `Context.lua`, `Events.lua`, `UI.lua`) non contiene testi.
Tutte le frasi stanno nei pacchetti: quelli di base in `Data\`, quelli aggiuntivi in addon separati
(vedi la cartella `VociDiAzeroth_Esempio`). Tutto funziona offline, dentro i file dell'addon.

## Creare un pacchetto

1. Copia `VociDiAzeroth_Esempio` in `Interface\AddOns\` con un nome nuovo, ad esempio `VociDiAzeroth_Nani`.
2. Rinomina il file `.toc` con lo stesso nome della cartella e lascia `## Dependencies: VociDiAzeroth`.
3. Scrivi le frasi con `VociDiAzeroth:RegisterPack({...})`.

```lua
VociDiAzeroth:RegisterPack({
    id = "nani",                    -- unico tra tutti i pacchetti
    name = "Frasi dei nani",
    phrases = { ... },              -- frasi
    frames = { ... },               -- cornici narrative (facoltative)
    vocab = { ... },                -- vocabolario per i segnaposto (facoltativo)
    translations = { ... },         -- traduzioni di frasi di altri pacchetti (facoltative)
})
```

## Una frase

```lua
{
    id = "nani.battle.01",          -- unico; serve per la memoria e per le traduzioni
    event = "battle",               -- oppure più eventi: { "battle", "threat" }
    form = "say",                   -- "say" = parlata (predefinita), "emote" = narrativa in terza persona
    tone = "eroico",                -- registro: epico, solenne, oscuro, malinconico, eroico, ironico, feroce, mistico...
    weight = 1,                     -- peso relativo (predefinito 1)
    cooldown = 600,                 -- secondi prima che questa frase possa tornare (facoltativo)
    when = { race = "Dwarf" },      -- condizioni (facoltative)
    it = "Le montagne non arretrano!",
    en = "The mountains do not yield!",
}
```

Ogni lingua è una chiave di due lettere (`it`, `en`, `de`, `fr`...). Una frase compare solo nelle lingue
in cui è scritta: le lingue non vengono mai mescolate.

Le **emote** iniziano con la minuscola e senza il nome: il gioco scrive da solo il nome del personaggio
(«*Brann* snuda l'arma...»).

## Eventi

| Evento | Quando |
|---|---|
| `battle` | inizio di un combattimento |
| `victory` | fine di un combattimento durato almeno 6 secondi |
| `lowhp` | salute sotto il 30% (una volta per combattimento) |
| `death`, `rez` | morte e ritorno in vita |
| `levelup` | nuovo livello |
| `zone` | ingresso in una nuova zona |
| `attack` | incantesimo o abilità in combattimento |
| `heal`, `buff`, `travel`, `rezother` | cure, benedizioni, viaggi, resurrezione di un compagno |
| `greet`, `farewell`, `toast`, `thanks`, `jest`, `pray`, `muse`, `threat` | comandi manuali (`/voci saluto`, ecc.) |
| qualunque nome | `/voci evento <nome>` da macro, oppure un tipo di incantesimo nuovo (vedi sotto) |

## Condizioni (`when`)

Tutte le condizioni devono essere vere. Un elenco `{ "A", "B" }` vale come «A oppure B».
Le frasi con più condizioni sono più specifiche e ricevono un peso maggiore.

| Chiave | Valori |
|---|---|
| `class` | `WARRIOR`, `PALADIN`, `HUNTER`, `ROGUE`, `PRIEST`, `SHAMAN`, `MAGE`, `WARLOCK`, `DRUID` |
| `race` | `Human`, `Dwarf`, `NightElf`, `Gnome`, `Orc`, `Scourge` (non morti), `Tauren`, `Troll` |
| `faction` | `Alliance`, `Horde` |
| `sex` | `male`, `female` |
| `levelMin`, `levelMax` | numero |
| `hpBelow`, `hpAbove` | frazione da 0 a 1 (es. `0.3`) |
| `combat`, `resting`, `indoors`, `mounted`, `swimming`, `stealth`, `instance` | `true` / `false` |
| `instanceType` | `none`, `party`, `raid`, `pvp`, `arena` |
| `group` | `solo`, `party`, `raid` |
| `zone` | nome della zona o della sottozona, come appare nel client (es. `"Duskwood"`) |
| `mood` | atmosfera della zona: `forest`, `dark`, `plains`, `mountain`, `snow`, `jungle`, `swamp`, `desert`, `fire`, `plague`, `ruin`, `coast`, `sacred`, `deep`, `city`, `town` |
| `time` | `dawn`, `day`, `dusk`, `night` (ora del server) |
| `hour` | intervallo `{ 22, 4 }` (anche a cavallo della mezzanotte) |
| `hasTarget`, `hostile`, `friendly`, `targetPlayer`, `elite`, `boss`, `rare` | `true` / `false` |
| `ctype` | tipo del bersaglio: `undead`, `demon`, `dragon`, `elemental`, `beast`, `giant`, `mechanical`, `humanoid`, `critter`, `aberration` |
| `enemyFaction` | il bersaglio è un giocatore dell'altra fazione |
| `targetStronger`, `targetWeaker` | il bersaglio è di almeno 3 livelli sopra, o 5 sotto |
| `targetName` | parte del nome del bersaglio |
| `spell` | parte del nome dell'incantesimo (es. `{ "hearthstone", "pietra del ritorno" }`) |
| `spellKind` | `heal`, `buff`, `rez`, `travel`, `taunt`, `shout`, `stealth`, `summon` o un tipo aggiunto |
| `element` | `fire`, `frost`, `shadow`, `holy`, `nature`, `arcane`, `physical` |
| `chance` | probabilità in più per questa sola frase, da 0 a 100 |
| `["not"]` | condizioni che devono essere **false**: `["not"] = { race = "Scourge" }` |
| `any` | almeno uno dei gruppi: `any = { { race = "Human" }, { class = "PALADIN" } }` |
| `func` | funzione Lua: `func = function(ctx) return ctx.hp > 0.9 end` |

## Segnaposto

| Segnaposto | Valore |
|---|---|
| `{player}` | nome del personaggio (quello di Total RP 3, se attivo) |
| `{target}` | bersaglio |
| `{spell}` | incantesimo appena lanciato |
| `{zone}`, `{subzone}` | luogo |
| `{level}`, `{class}`, `{race}`, `{faction}`, `{targettype}` | nella lingua scelta |
| `{g:maschile\|femminile}` | variante per genere: `{g:pronto\|pronta}` |
| `{nome}` | una voce del vocabolario, ad esempio `{cry}` (grido di guerra adatto alla razza) |

Se manca un dato richiesto (per esempio `{target}` senza bersaglio), la frase viene scartata
e il motore ne sceglie un'altra.

## Vocabolario

Brevi formule complete, scelte in base al contesto, che si inseriscono nelle frasi con `{nome}`:

```lua
vocab = {
    cry = {
        { when = { race = "Dwarf" }, it = "Per Forgiardente!", en = "For Ironforge!" },
    },
},
```

Le voci si **aggiungono** a quelle degli altri pacchetti con lo stesso nome.

## Cornici narrative

In modalità emote, una frase parlata può essere inserita in una cornice. `{line}` è la frase:

```lua
frames = {
    { event = "battle", when = { race = "Dwarf" }, it = "si sputa sulle mani e grida: «{line}»", en = "spits on {g:his|her} hands and roars, \"{line}\"" },
},
```

Una cornice senza `event` vale per tutti gli eventi.

## Lingue nuove

```lua
VociDiAzeroth:RegisterLanguage("de", { name = "Deutsch", ui = { help = "...", ... } })
VociDiAzeroth:AddTranslations("de", { ["battle.gen.12"] = "Keinen Schritt zurück!" })
```

I testi dell'interfaccia mancanti ricadono sull'italiano. Vedi `Locales\ui_it.lua` per tutte le chiavi.

## Eventi e tipi di incantesimo nuovi

```lua
VociDiAzeroth:RegisterSpellKeywords({ kind = { fishing = { "fishing", "pesca" } } })
VociDiAzeroth:SetEventDefaults("fishing", 20, 300)   -- probabilità %, pausa in secondi
```

Ogni incantesimo che contiene quelle parole lancia l'evento `fishing`, che userà le frasi con `event = "fishing"`.
Si possono aggiungere anche zone con `RegisterZoneMoods({ ["Booty Bay"] = "coast" })`.

## Come il motore sceglie

1. Raccoglie le frasi dell'evento, nella lingua scelta, che soddisfano le condizioni e il proprio `cooldown`.
2. Peso = `weight` × (1 + 0,35 × numero di condizioni) ÷ (1 + 0,3 × usi recenti).
3. Il tono uguale a quello dell'ultima frase dello stesso evento pesa il 40% in meno.
4. Le frasi usate di recente (circa il 60% di quelle disponibili) sono escluse finché ce ne sono altre.
5. La memoria degli usi si salva tra le sessioni e si attenua a ogni accesso.
6. Fuori dal motore valgono le probabilità per evento (`/voci prob`), la pausa globale (`/voci cooldown`)
   e la pausa propria di ogni evento.
