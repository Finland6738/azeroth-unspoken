# Azeroth Unspoken: formato dei pacchetti di frasi (schema v2)

Il motore (`Core\`, `Engine\`, `Systems\`, `Integration\`, `UI\`) non contiene testi.
Tutte le frasi stanno nei pacchetti: quelli di base in `Data\`, quelli aggiuntivi in addon separati
(vedi la cartella `AzerothUnspoken_Example`). Tutto funziona offline, dentro i file dell'addon.

Lo schema v2 (GDD §9) separa le **regole** dai **testi**:

- una *regola* dice **quando** una frase può comparire e **chi** parla: evento, categoria, voce, registri,
  profondità, tag, peso, pausa, condizioni. Ha un `id` che esprime un'intenzione, uguale in tutte le lingue;
- i *testi* sono, per ogni lingua, una o più **varianti** di quell'intenzione: stesso significato e stesso registro,
  ritmo e parole diversi.

Un pacchetto può aggiungere frasi, traduzioni, lingue, eventi, registri e condizioni **senza toccare il motore**.
Il formato precedente (`phrases = { { it=, en= } }`) resta valido e viene convertito in caricamento (vedi più sotto).

## Creare un pacchetto

1. Copia `AzerothUnspoken_Example` in `Interface\AddOns\` con un nome nuovo, ad esempio `AzerothUnspoken_Nani`.
2. Rinomina il file `.toc` con lo stesso nome della cartella e lascia `## Dependencies: AzerothUnspoken`.
3. Scrivi le regole e i testi con `AzerothUnspoken:RegisterPack({...})`.
4. Scrivi `/au valida nani` in gioco (o `/au valida` per tutto): il validatore dice cosa correggere.

```lua
AzerothUnspoken:RegisterPack({
    id = "nani",                    -- unico tra tutti i pacchetti
    name = "Frasi dei nani",
    languages = { "itIT", "enUS" }, -- lingue che ogni frase del pacchetto deve avere (facoltativo)
    events = { ... },               -- eventi nuovi (facoltativo)
    registry = { ... },             -- le regole, una per id
    texts = { itIT = { ... }, enUS = { ... } },   -- i testi per lingua, con le varianti
    frames = { ... },               -- cornici narrative (facoltative)
    vocab = { ... },                -- vocabolario per i segnaposto (facoltativo)
    -- styles, categories, conditions: registri, categorie e condizioni nuove (facoltative)
})
```

I testi possono stare anche in file separati, uno per lingua, come fa il database di base
(`Data\Registry*.lua` per le regole, `Data\itIT\*.lua` e `Data\enUS\*.lua` per i testi):

```lua
AzerothUnspoken:AddTexts("itIT", { ["nani.battle.01"] = { "Le montagne non arretrano!" } }, "nani")
```

Il terzo argomento è l'id del pacchetto che porta i testi: se l'utente lo spegne, quei testi non si usano più.
I testi possono arrivare prima della regola (l'ordine di caricamento dei file non conta): aspettano.

## Una regola

```lua
registry = {
    ["nani.battle.01"] = {
        event = "battle",                       -- oppure più eventi: { "battle", "threat" }
        speaker = "character",                  -- chi parla: narrator | inner | character | npc
        styles = { "epic", "ceremonial" },      -- registri; il primo è quello principale
        depth = { "natural", "literary" },      -- profondità per cui è scritta (assente = tutte)
        tags = { "forest", "calm" },            -- etichette libere (affinità, ricerca)
        weight = 2,                             -- peso relativo (predefinito 1)
        cooldown = 600,                         -- secondi prima che possa tornare (facoltativo)
        conditions = { race = "Dwarf" },        -- condizioni (facoltative; alias: when)
    },
},
```

| Campo | Significato | Se manca |
|---|---|---|
| `event` | evento (o elenco) in cui compare | errore del validatore |
| `category` | categoria: `combat`, `spellcraft`, `life`, `exploration`, `reflection`, `social` o una tua | quella dell'evento, o `general` |
| `speaker` | voce (vedi sotto) | dedotta da `form` (avviso del validatore) |
| `form` | `say` = parlata, `emote` = narrativa in terza persona, senza il nome | `emote` per il narratore, `say` per le altre voci |
| `styles` | registri (vedi sotto) | nessuno (avviso) |
| `depth` | `natural`, `literary`, `elevated`: una o più | vale per tutte |
| `tags` | elenco di etichette: descrittive o di affinità con i tratti del personaggio (vedi sotto) | nessuna |
| `weight` | numero maggiore di 0 | 1 |
| `cooldown` | secondi (anche `cooldownSeconds`) | nessuno |
| `conditions` | tabella di condizioni (anche `when`) | sempre vera |

### I testi, con le varianti

```lua
texts = {
    itIT = {
        ["nani.battle.01"] = {
            "Le montagne non arretrano!",
            "Né un passo indietro: siamo figli della montagna.",
            { "Come la roccia che ci ha generati, noi non cediamo.", depth = "elevated" },
        },
        ["nani.battle.02"] = "Una variante sola si può scrivere come stringa.",
    },
    enUS = { ... },
}
```

- Una **variante** è una stringa, oppure `{ "testo", depth = "elevated" }` (o `{ text = "...", depth = { ... } }`) se è
  scritta per una profondità precisa. Senza `depth` vale per tutte.
- Il motore sceglie la frase (peso, condizioni, anti-ripetizione) e poi **una variante**: preferisce quelle scritte per la
  profondità scelta dall'utente (o senza indicazione), e **non ripete mai subito l'ultima variante usata**.
- Se una variante ha dei segnaposto che mancano nel contesto, si usano le altre. Per questo una buona frase con
  `{target}` ha anche una variante senza segnaposto, che funziona sempre (GDD §9.4). Il validatore chiede che IT ed EN
  abbiano le stesse combinazioni di segnaposto.
- Le lingue si scrivono come `itIT` / `enUS` (o in forma breve: `it`, `en`). Una frase compare solo nelle lingue in cui
  è scritta: le lingue non vengono mai mescolate.

### Chi parla (`speaker`)

Ogni frase ha una delle quattro voci del GDD §5.3, mostrata nel narratore come etichetta:

| `speaker` | Voce | Forma | In chat |
|---|---|---|---|
| `narrator` | narratore esterno: atmosfera e azioni, non attribuisce decisioni | emote | può diventare una proposta (di solito `/e`) |
| `inner` | voce interiore: pensieri, privati | parlata | mai in chat |
| `character` | voce pubblica del personaggio: più breve, ispezionabile | parlata | può diventare una proposta (di solito `/s`) |
| `npc` | NPC, contenuto simulato (da S8) | parlata | mai in chat |

Le frasi non vanno **mai** in chat da sole: arrivano al narratore privato e, solo se l'utente ha scelto una
modalità del Chat Gateway diversa da quella privata, diventano proposte che lui conferma (vedi `ROADMAP.md`, S2).
Scrivi come `inner` ciò che è un pensiero, non una frase da dire a voce alta: non andrà mai in chat.

Le **emote** iniziano con la minuscola e senza il nome: il gioco scrive da solo il nome del personaggio
(«*Brann* snuda l'arma...»). Una parlata del `character` si può raccontare dentro una **cornice** quando serve
un'emote; un pensiero (`inner`) non viene mai messo in una cornice.

### Personalità: i tag di affinità

I `tags` senza due punti (`"wry"`, `"heroic"`) sono descrittivi: il motore li ignora. Con i due punti collegano la frase ai tratti del
personaggio del giocatore (Character Soul, opzionale; senza tratti la frase è neutra):

| Tag | Effetto |
|---|---|
| `temperament:stoic` | **affinità morbida**: il peso sale (×1,6) se il profilo ha quel valore, scende (×0,6) se ne ha un altro, non cambia se il tratto non è impostato |
| `req:faith:devout` | **requisito rigido**: la frase esce solo se il profilo ha quel valore. Più `req` dello stesso tratto sono alternative, tratti diversi si sommano. Anche il profilo neutro la esclude |
| `not:faith:devout` | **esclusione rigida**: la frase non esce se il profilo ha quel valore |
| `topic:death` | **argomento da evitare**: la frase non esce se il giocatore ha scelto di evitarlo |

Tratti e valori: `temperament` (`resolute`, `merciful`, `stoic`, `cheerful`, `melancholic`, `gruff`, `fierce`), `morality`
(`righteous`, `pragmatic`, `conflicted`, `disillusioned`, `hopeful`), `curiosity` e `irony` (scale: `low`, `mid`, `high`), `faith`
(`devout`, `spiritual`, `doubting`, `skeptic`), `motivation` (`duty`, `vengeance`, `glory`, `knowledge`, `redemption`, `freedom`,
`protection`), `innerVoice` (`off`, `quiet`, `present`, `vivid`; riguarda le frasi con `speaker = "inner"`) e, per `topic:`,
`death`, `blood`, `betrayal`, `family`, `religion`, `undead`, `demons`, `romance`.

Regola di scrittura: una frase che **afferma** qualcosa del personaggio (la fede, un passato di vendetta) usa `req:`; una che dice
le stesse cose **con un tono** usa l'affinità morbida; una che tocca un argomento delicato (sangue, famiglia) porta `topic:`.
Un registro `ironic` senza tag `irony:` è già pesato dall'ironia del giocatore. Il validatore segnala (`badTag`) i tag di
affinità con un tratto o un valore che non esistono. Esempi in `Data/RegistrySoul.lua`.

### Registri (`styles`) e profondità (`depth`)

I registri sono quelli del GDD §5.1; l'utente non li sceglie: li usa il motore per tenere il tono coerente
(e il Narrative Director, dallo step S4, per sceglierli secondo evento, luogo e personalità).

| Registro | Vocabolario e ritmo | Situazioni |
|---|---|---|
| `ancient` | antico e contemplativo: memoria, natura, tempo | foreste, rovine, luoghi sacri |
| `epic` | epico ed eroico: scelte nette, coraggio | vittorie, difesa, momenti cruciali |
| `tragic` | tragico e oscuro: perdita, silenzio | cimiteri, morte, zone corrotte |
| `intimate` | intimo e riflessivo: dubbi, rimpianti | ricordi, ritorni, riposo |
| `everyday` | quotidiano: lessico semplice, concreto | locande, commercianti, villaggi |
| `ironic` | ironico: arguzia misurata | alcuni NPC e personalità |
| `ceremonial` | cerimoniale: invocazioni e formule rituali | benedizioni, voti, santuari |

Un pacchetto può aggiungere registri con `styles = { "bardico" }` nel pacchetto o `AzerothUnspoken:RegisterStyle("bardico")`;
senza, il validatore segnala un avviso.

Dallo step S4 il **StyleResolver** usa i registri per pesare le frasi (mai per escluderle):
- ogni evento ammette alcuni registri (la battaglia, ad esempio, non il quotidiano); un registro fuori posto pesa la metà;
- l'atmosfera della zona (`forest` → antico, `dark` → tragico, `city` → quotidiano...), la profondità scelta
  (naturale → quotidiano, ironico, intimo; elevato → cerimoniale, epico, antico) e la voce (`inner` → intimo,
  `narrator` → antico, tragico, epico; `npc` → quotidiano, ironico) aggiungono il 25% ciascuna al registro preferito;
- un pacchetto può cambiare le regole: `AzerothUnspoken:RegisterEventStyles("fishing", { "intimate", "ironic" })`
  (registri ammessi per un evento) e `AzerothUnspoken:RegisterMoodStyles({ coast = { "everyday" } })` (registri preferiti
  da un'atmosfera).

La **profondità** (Naturale, Letterario, Elevato) è quella scelta dall'utente (`/au profondita`). Non esclude frasi:
quelle scritte per un'altra profondità **pesano meno** (×0,3), così non resta mai il silenzio perché mancano testi
adatti. Una frase senza `depth` non viene mai penalizzata. Indicativamente: `natural` è diretto e quotidiano,
`literary` è il tono di base, `elevated` è ornato, antico o cerimoniale.

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
| `greet`, `farewell`, `toast`, `thanks`, `jest`, `pray`, `muse`, `threat` | comandi manuali (`/au saluto`, ecc.) |
| qualunque nome | `/au evento <nome>` da macro, oppure un evento dichiarato dal pacchetto (vedi sotto) |

Un evento nuovo si dichiara nel pacchetto, con categoria, probabilità (%) e pausa (secondi) predefinite
(le scelte dell'utente con `/au prob` prevalgono):

```lua
AzerothUnspoken:RegisterSpellKeywords({ kind = { fishing = { "fishing", "pesca" } } })  -- incantesimi -> evento "fishing"

AzerothUnspoken:RegisterPack({
    id = "pesca",
    events = { fishing = { category = "exploration", chance = 20, cooldown = 300 } },
    registry = { ["pesca.01"] = { event = "fishing", speaker = "inner", styles = { "intimate" } } },
    texts = { ... },
})
```

Ogni incantesimo che contiene quelle parole lancia l'evento `fishing`. Si può dichiarare un evento anche con
`AzerothUnspoken:RegisterEvent("fishing", { category = "exploration", chance = 20, cooldown = 300 })`.
Si possono aggiungere anche zone con `RegisterZoneMoods({ ["Booty Bay"] = "coast" })`.

## Condizioni (`conditions`)

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
| `combat`, `dead`, `ghost`, `resting`, `indoors`, `mounted`, `swimming`, `stealth`, `instance` | `true` / `false` |
| `instanceType` | `none`, `party`, `raid`, `pvp`, `arena`, `scenario` |
| `group` | `solo`, `party`, `raid` |
| `zone`, `subzone` | nome della zona o della sottozona, come appare nel client (es. `"Duskwood"`) |
| `mood` | atmosfera della zona: `forest`, `dark`, `plains`, `mountain`, `snow`, `jungle`, `swamp`, `desert`, `fire`, `plague`, `ruin`, `coast`, `sacred`, `deep`, `city`, `town` |
| `time` | `dawn`, `day`, `dusk`, `night` (ora del server) |
| `hour` | intervallo `{ 22, 4 }` (anche a cavallo della mezzanotte) |
| `hasTarget`, `hostile`, `friendly`, `targetPlayer`, `targetDead`, `elite`, `boss`, `rare` | `true` / `false` |
| `ctype` | tipo del bersaglio: `undead`, `demon`, `dragon`, `elemental`, `beast`, `giant`, `mechanical`, `humanoid`, `critter`, `aberration` |
| `targetClass`, `targetRace`, `targetFaction`, `enemyFaction` | il bersaglio è un giocatore: sua classe, razza, fazione; `enemyFaction` se è dell'altra fazione |
| `targetStronger`, `targetWeaker` | il bersaglio è di almeno 3 livelli sopra, o 5 sotto |
| `targetName` | parte del nome del bersaglio |
| `spell` | parte del nome dell'incantesimo (es. `{ "hearthstone", "pietra del ritorno" }`) |
| `spellKind` | `heal`, `buff`, `rez`, `travel`, `taunt`, `shout`, `stealth`, `summon` o un tipo aggiunto |
| `element` | `fire`, `frost`, `shadow`, `holy`, `nature`, `arcane`, `physical` |
| `depth` | la profondità scelta dall'utente: `natural`, `literary`, `elevated` |
| `intensityMin`, `intensityMax` | intensità scelta dall'utente (0–100) |
| `chance` | probabilità in più per questa sola frase, da 0 a 100 |
| `["not"]` | condizioni che devono essere **false**: `["not"] = { race = "Scourge" }` |
| `any` | almeno uno dei gruppi: `any = { { race = "Human" }, { class = "PALADIN" } }` |
| `func` | funzione Lua: `func = function(ctx) return ctx.hp > 0.9 end` |

Una condizione sconosciuta o con un valore sbagliato rende la frase **mai scelta** (non genera errori) e il validatore la segnala.

### Condizioni nuove

Un pacchetto può dichiarare condizioni proprie, per dati che mette nel contesto (`NS:Trigger(evento, { hasPet = true })`)
o che calcola da sé:

```lua
AzerothUnspoken:RegisterPack({
    id = "animali",
    conditions = {
        hasPet = "bool",                                            -- confronta ctx.hasPet con il valore; "bool", "str", "num"...
        petNamed = function(valore, ctx) return ctx.petName == valore end,   -- calcolata
    },
    registry = { ["animali.01"] = { event = "battle", speaker = "character", conditions = { hasPet = true } } },
    ...
})
```

oppure `AzerothUnspoken:RegisterCondition("hasPet", nil, "bool")`.

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

Se manca un dato richiesto (per esempio `{target}` senza bersaglio), quella variante viene scartata e il motore ne
sceglie un'altra, o un'altra frase. Non si eseguono mai stringhe Lua contenute nei testi.

## Vocabolario

Brevi formule complete, scelte in base al contesto, che si inseriscono nelle frasi con `{nome}`.
Ogni voce può avere più varianti per lingua:

```lua
vocab = {
    cry = {
        { when = { race = "Dwarf" }, it = "Per Forgiardente!", en = "For Ironforge!" },
        { it = { "Avanti!", "In marcia!" }, en = { "Onward!", "Forward!" } },
    },
},
```

Le voci si **aggiungono** a quelle degli altri pacchetti con lo stesso nome. Il vocabolario non può contenere altro vocabolario né `{line}`.

## Cornici narrative

In modalità emote, la parlata di un `character` può essere inserita in una cornice. `{line}` è la frase:

```lua
frames = {
    { event = "battle", when = { race = "Dwarf" },
      it = "si sputa sulle mani e grida: «{line}»", en = "spits on {g:his|her} hands and roars, \"{line}\"" },
},
```

Una cornice senza `event` vale per tutti gli eventi; ogni variante deve contenere `{line}`.
Una cornice può indicare i suoi registri (`styles = { "ceremonial" }`): allora accoglie solo frasi di un registro uguale
o vicino (epico e cerimoniale sì, cerimoniale e ironico no). Senza `styles` accoglie ogni frase.
Cornice e frase insieme devono stare nei 255 byte di un messaggio (il validatore avvisa).

## Lingue nuove, traduzioni e testi in più

```lua
AzerothUnspoken:RegisterLanguage("de", { name = "Deutsch", ui = { help = "...", ... } })
AzerothUnspoken:RegisterPack({
    id = "tedesco",
    texts = { deDE = { ["battle.gen.12"] = "Keinen Schritt zurück. Keinen einzigen!" } },
})
```

- I testi per id di **altri pacchetti** (anche di quello di base) si **aggiungono come varianti**: una traduzione porta una
  lingua nuova, un testo in più nella stessa lingua si affianca a quelli esistenti (un testo identico non si duplica).
- I testi mancanti dell'interfaccia ricadono sull'italiano. Vedi `Data\itIT\Interface.lua` per tutte le chiavi.
- Una lingua registrata da un pacchetto resta quella scelta dall'utente da una sessione all'altra.
- Il vecchio nome `AzerothUnspoken:AddTranslations(lingua, mappa)` e il campo `translations` del pacchetto funzionano ancora.

## Formato precedente (convertito in caricamento)

```lua
phrases = {
    { id = "nani.battle.01", event = "battle", form = "say", speaker = "character", tone = "eroico", weight = 1,
      cooldown = 600, when = { race = "Dwarf" },
      it = "Le montagne non arretrano!", en = "The mountains do not yield!" },
},
```

Ogni frase diventa una regola e un testo per ogni lingua (anche `text = { it = ..., en = ... }`, con stringhe o elenchi).
Il valore di `form` e di `speaker` si deduce come prima: `say` → `character`, `emote` → `narrator`. Il vecchio `tone` diventa un registro:

| `tone` | Registro |
|---|---|
| `epico`, `eroico`, `feroce` | `epic` |
| `solenne` | `ceremonial` |
| `oscuro` | `tragic` |
| `malinconico` | `intimate` |
| `ironico` | `ironic` |
| `mistico` | `ancient` |
| altro | resta com'è (il validatore avvisa) |

Il formato precedente non ha `depth`, `tags` né `category` (si usa quella dell'evento): conviene passare allo schema v2 per frasi nuove.
**Attenzione**: nel formato precedente `id` è il campo dell'identificatore, non una lingua: per l'indonesiano scrivi `idID`.

## Validatore

`/au valida` (o `/au validate`) controlla tutti i pacchetti, `/au valida <pacchetto>` uno solo, `/au valida tutto` mostra
anche i problemi oltre i primi dodici. Gli stessi controlli girano nei test fuori dal gioco. Un **errore** va corretto,
un **avviso** è un consiglio.

| Codice | Livello | Significato |
|---|---|---|
| `dupId`, `badId` | errore | id già usato da un altro pacchetto, o non valido (la frase doppia viene ignorata) |
| `noText`, `emptyLang`, `emptyVariant` | errore | nessun testo, tutte le varianti vuote, variante vuota o non stringa |
| `missingLang` | errore | manca il testo in una lingua del pacchetto (`languages`, o quelle in cui il pacchetto scrive) |
| `placeholderMismatch` | errore | IT ed EN non usano le stesse combinazioni di segnaposto |
| `badPlaceholder` | errore | segnaposto sconosciuto, genere malformato, graffa non chiusa, `{line}` fuori dalle cornici, vocabolario dentro il vocabolario |
| `frameNoLine` | errore | una cornice senza `{line}` |
| `badCondition` | errore | condizione sconosciuta o con un valore del tipo sbagliato |
| `tooLong` | errore | oltre 255 byte nel caso peggiore (nomi lunghi nei segnaposto) per `/s`, `/e`, gruppo, gilda...; per i pensieri oltre 400 byte è un avviso |
| `tooLongFramed` | avviso | con la cornice più lunga supera i 255 byte |
| `badUTF8` | errore | testo non UTF-8 valido, carattere di controllo, U+FFFD (testo corrotto) |
| `emoteCase` | errore | un'emote che inizia con la maiuscola o con le virgolette |
| `badSpeaker`, `badForm`, `badDepth`, `badWeight`, `badCooldown`, `badConditions`, `noEvent` | errore | valore non ammesso nella regola (il motore ripiega su un valore valido) |
| `orphanText` | errore | testi per un id che nessun pacchetto ha registrato |
| `noSpeaker`, `noStyle`, `innerEmote` | avviso | voce o registro assenti; un pensiero in forma di emote |
| `unknownEvent`, `unknownCategory`, `unknownStyle`, `unregisteredLanguage` | avviso | evento, categoria o registro non dichiarati; lingua senza `RegisterLanguage` |

I controlli dei contenuti (lore verificata, ortografia, registro del parlante) restano editoriali: il validatore non li fa.

## Come il motore sceglie

1. Raccoglie le frasi dell'evento che hanno almeno una variante utilizzabile nella lingua scelta (non vuota, con i dati
   richiesti, di un pacchetto acceso), che soddisfano le condizioni e il proprio `cooldown`.
2. Peso **W = B × C × P × N × S × R** (GDD §10):
   - `B` = `weight`;
   - `C` = 1 + 0,35 × numero di condizioni (contesto);
   - `P` = personalità, oggi neutra (step S5);
   - `N` = novità: ÷ (1 + 0,3 × usi recenti), e ×0,6 se il registro principale è quello dell'ultima frase dello stesso evento;
   - `S` = stile: profondità (×0,3 se la frase è scritta per altre profondità) × registri (StyleResolver, sopra);
   - `R` = relazione con l'interlocutore, oggi neutra (step S6b).
3. Nessun fattore esclude una frase per ragioni di stile: c'è sempre un ripiego.
4. Le frasi usate di recente (circa il 60% di quelle disponibili, al massimo `pacing.recentPhraseWindow` = 30) sono escluse finché ce ne sono altre.
5. Scelta la frase, sceglie una **variante**: tra quelle della profondità giusta (o senza indicazione), diversa dall'ultima usata.
6. La memoria degli usi e delle varianti si salva tra le sessioni, per personaggio, e gli usi si attenuano a ogni accesso.
7. Prima del motore decide il **Narrative Director** (eventi spontanei, non le richieste esplicite): intensità,
   probabilità per evento (`/au prob`), pause (globale `/au cooldown`, di categoria, di evento), budget per categoria,
   priorità e sospensione durante filmati e combattimenti impegnativi. Un evento nuovo ha la priorità "atmosfera";
   un pacchetto la può cambiare con `AzerothUnspoken:SetEventPriority("fishing", "memory")`
   (`dialogue`, `exceptional`, `memory`, `ambient`). Vedi [docs/ARCHITETTURA.md](../docs/ARCHITETTURA.md).
