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

> **In un pacchetto esterno chiama sempre le API dall'oggetto globale `AzerothUnspoken:`.** Nei file del database di
> base la prima riga `local ADDON, NS = ...` dà il namespace *dell'addon*, e lì si scrive `NS:RegisterNPCs(...)`. In un
> addon separato quella stessa riga dà il namespace *del tuo pacchetto*, che non ha nessuna di queste funzioni:
> `NS:RegisterDialogues(...)` darebbe `attempt to call method 'RegisterDialogues' (a nil value)`. Tutti gli esempi di
> questa guida sono scritti per un pacchetto esterno, e `Tests/check_docs.py` li carica come tali (vedi «Provare gli
> esempi» in fondo).

L'errore tipico, in un file di un pacchetto esterno (questo esempio **non funziona**, ed è provato come tale):

<!-- prova: errore -->
```lua
local ADDON, NS = ...                  -- NS è il namespace del pacchetto, non dell'addon
NS:RegisterDialogues({ scripts = {} }) -- attempt to call method 'RegisterDialogues' (a nil value)
```

Un pacchetto completo e minimo (due lingue, una regola, un testo per lingua):

<!-- prova -->
```lua
AzerothUnspoken:RegisterPack({
    id = "nani",                    -- unico tra tutti i pacchetti
    name = "Frasi dei nani",
    languages = { "itIT", "enUS" }, -- lingue che ogni frase del pacchetto deve avere (facoltativo)
    registry = {                    -- le regole, una per id
        ["nani.battle.01"] = { event = "battle", speaker = "character", styles = { "epic" }, conditions = { race = "Dwarf" } },
    },
    texts = {                       -- i testi per lingua, con le varianti
        itIT = { ["nani.battle.01"] = { "Le montagne non arretrano!" } },
        enUS = { ["nani.battle.01"] = { "The mountains do not yield!" } },
    },
})
```

Oltre a `id`, `name`, `languages`, `registry` e `texts`, un pacchetto può avere `events` (eventi nuovi), `frames`
(cornici narrative), `vocab` (vocabolario per i segnaposto) e `styles`, `categories`, `conditions` (registri, categorie e
condizioni nuove). Sono tutti facoltativi e descritti più sotto.

I testi possono stare anche in file separati, uno per lingua, come fa il database di base
(`Data\Registry*.lua` per le regole, `Data\itIT\*.lua` e `Data\enUS\*.lua` per i testi):

<!-- prova -->
```lua
AzerothUnspoken:RegisterPack({
    id = "nani_testi",
    registry = { ["nanit.battle.01"] = { event = "battle", speaker = "character", styles = { "epic" } } },
})
AzerothUnspoken:AddTexts("itIT", { ["nanit.battle.01"] = { "Le montagne non arretrano!" } }, "nani_testi")
AzerothUnspoken:AddTexts("enUS", { ["nanit.battle.01"] = { "The mountains do not yield!" } }, "nani_testi")
```

Il terzo argomento è l'id del pacchetto che porta i testi: se l'utente lo spegne, quei testi non si usano più.
I testi possono arrivare prima della regola (l'ordine di caricamento dei file non conta): aspettano.

## Una regola

<!-- prova -->
```lua
AzerothUnspoken:RegisterPack({
    id = "regola",
    languages = { "itIT", "enUS" },
    registry = {
        ["regola.battle.01"] = {
            event = { "battle", "threat" },         -- un evento, oppure più eventi
            speaker = "character",                  -- chi parla: narrator | inner | character | npc
            styles = { "epic", "ceremonial" },      -- registri; il primo è quello principale
            depth = { "natural", "literary" },      -- profondità per cui è scritta (assente = tutte)
            tags = { "forest", "calm" },            -- etichette libere (affinità, ricerca)
            weight = 2,                             -- peso relativo (predefinito 1)
            cooldown = 600,                         -- secondi prima che possa tornare (facoltativo)
            conditions = { race = "Dwarf" },        -- condizioni (facoltative; alias: when)
        },
    },
    texts = {
        itIT = { ["regola.battle.01"] = "Le montagne non arretrano!" },
        enUS = { ["regola.battle.01"] = "The mountains do not yield!" },
    },
})
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

<!-- prova -->
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
| `npc` | NPC, contenuto simulato (dialoghi ambientali, S8) | parlata | mai in chat |

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
| `memory_return` | ritorno in una zona già visitata (richiamo di memoria: solo con un ricordo vero) |
| `attack` | incantesimo o abilità in combattimento |
| `heal`, `buff`, `travel`, `rezother` | cure, benedizioni, viaggi, resurrezione di un compagno |
| `greet`, `farewell`, `toast`, `thanks`, `jest`, `pray`, `muse`, `threat` | comandi manuali (`/au saluto`, ecc.) |
| qualunque nome | `/au evento <nome>` da macro, oppure un evento dichiarato dal pacchetto (vedi sotto) |

Un evento nuovo si dichiara nel pacchetto, con categoria, probabilità (%) e pausa (secondi) predefinite
(le scelte dell'utente con `/au prob` prevalgono):

<!-- prova -->
```lua
AzerothUnspoken:RegisterSpellKeywords({ kind = { fishing = { "fishing", "pesca" } } })  -- incantesimi -> evento "fishing"

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

Ogni incantesimo che contiene quelle parole lancia l'evento `fishing`. Si può dichiarare un evento anche con
`AzerothUnspoken:RegisterEvent("fishing", { category = "exploration", chance = 20, cooldown = 300 })`.
Si possono aggiungere anche zone con `AzerothUnspoken:RegisterZoneMoods({ ["Booty Bay"] = "coast" })`.

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
| `firstVisit`, `repeatVisit` | `true` / `false`: è la prima visita a questa zona, oppure un ritorno (vedi «Memoria» sotto) |
| `lastVisitBad` | `true` / `false`, oppure `"death"` / `"flight"`: la visita precedente a questa zona è finita male, per una morte o una fuga |
| `visitsMin`, `visitsMax` | numero di visite alla zona, questa compresa |
| `daysSinceLastVisit` | giorni dalla fine della visita precedente: un numero (almeno quello) o `{ da, a }` (da incluso, a escluso) |
| `remembered` | un flag narrativo, o un elenco (uno basta): `remembered = "first_death"` |
| `["not"]` | condizioni che devono essere **false**: `["not"] = { race = "Scourge" }` |
| `any` | almeno uno dei gruppi: `any = { { race = "Human" }, { class = "PALADIN" } }` |
| `func` | funzione Lua: `func = function(ctx) return ctx.hp > 0.9 end` |

Una condizione sconosciuta o con un valore sbagliato rende la frase **mai scelta** (non genera errori) e il validatore la segnala.

### Memoria: prima visita, ritorno, ricordi

Le condizioni di memoria (`firstVisit`, `repeatVisit`, `lastVisitBad`, `visitsMin`, `visitsMax`, `daysSinceLastVisit`,
`remembered`) leggono `ctx.memory`, costruito dalla Living Memory (`Systems/LivingMemory.lua`) **solo da ricordi veri**.
Se la memoria è spenta, o non c'è un dato sul luogo, valgono tutte *false*: una frase che cita un ricordo non esce mai
senza quel ricordo. `ctx.memory` ha anche `flags` (i flag narrativi) e `session` (`deaths`, `levels`, `zones`).

- **Prima visita**: usa l'evento `zone` con `firstVisit = true`. È un'atmosfera di zona come le altre, ma solo la prima volta.
- **Ritorno**: l'evento `memory_return` (dichiarato dal pacchetto `base_memory`) è un **richiamo di memoria**: priorità
  «richiamo di memoria» nel Narrative Director (sopra l'atmosfera, sotto gli eventi eccezionali), attivo solo se il
  modulo memoria è acceso e **mai se il ricordo non esiste** (guardia del motore, anche con `/au evento memory_return`).
- **Regola editoriale**: ogni frase di un evento di richiamo deve dichiarare una condizione di memoria (`repeatVisit`,
  `lastVisitBad`, `visitsMin`, `daysSinceLastVisit`, `remembered`, o un `any` in cui ogni gruppo ne ha una). Il validatore
  segnala `recallWithoutMemory` altrimenti. Una frase che dice «l'ultima volta finì male» usa `lastVisitBad`; una che
  parla della prima morte usa `remembered = "first_death"`.
- Un pacchetto può dichiarare **altri** eventi di richiamo con `AzerothUnspoken.LivingMemory:RegisterRecall(evento, function(memoria, ctx) return … end)`
  (la funzione conferma che il ricordo esiste); l'evento va dichiarato anche in `events = { … }`.
- I flag narrativi si impostano con `AzerothUnspoken.LivingMemory:SetFlag("nome")` (lettere ASCII, cifre e `_`, al massimo
  32 caratteri) e li imposta anche il gioco (`first_death`, `first_capital`, `level_10`, `level_20`…).
- Un argomento da evitare (`topic:death`) esclude anche le frasi di richiamo che lo toccano: scrivi il tag come per ogni frase.

### Relazioni: saluti, congedi, compagni, NPC conosciuti

Le condizioni di relazione leggono `ctx.relation` e simili, costruiti dal sistema delle relazioni (`Systems/Relationships.lua`)
per la **persona dell'interazione**: l'NPC con cui si sta parlando (dialogo, mercante...) o il bersaglio. Se la persona non è
nella lista, **valgono tutte false** (tranne `isKnown = false`): una frase che cita un rapporto non esce senza quel rapporto.

| Condizione | Vale se |
|---|---|
| `relation = "friend"` (o un elenco) | l'etichetta in uso è una di quelle: `stranger`, `acquaintance`, `indifferent`, `friend`, `comrade`, `rival`, `enemy`, `disliked`, `wary`, `feared`, `lover` (e quelle aggiunte da pacchetti con `AzerothUnspoken:RegisterRelationData`). Un'etichetta scelta a mano dall'utente ha la precedenza sulla derivata |
| `disposition = "close"` | la disposizione complessiva: `hated`, `enemy`, `unfriendly`, `suspicious`, `neutral`, `acquaintance`, `friend`, `close`, `bond` |
| `trustMin`, `trustMax`, `respectMin`, `affectionMin`, `fearMax`, `loyaltyMin`... | l'asse è almeno / al massimo quel numero: `familiarityMin`, `trust`, `respect`, `affection`, `fear`, `loyalty`, `attraction` (questo solo se l'utente l'ha acceso) |
| `isKnown = true` / `false` | si conosce abbastanza la persona (familiarità minima, o etichetta scelta; un giocatore in lista è sempre noto) / non la si conosce |
| `relationKind = "npc"` (o `"player"`) | la persona è un NPC o un giocatore |
| `withRelation = "friend"` | **un compagno di gruppo** ha quell'etichetta (per la battaglia o la vittoria al fianco di qualcuno) |

- **Segnaposto** `{relation}`: l'etichetta nella lingua scelta (o il testo che l'utente le ha dato), **al genere della persona** quando il nome ne ha uno (`amico`/`amica`, `temuto`/`temuta`; issue #41). Senza una persona la variante è scartata; con una persona di cui non si sa il sesso vale la prima forma (il maschile). I dati di `RegisterRelationData` scrivono il nome con un elenco `name = { it = { "amico", "amica" }, en = "friend" }`. Per accordare un aggettivo alla persona usa `{og:…\|…}`.
- **Tag di affinità con ambito `rel.`** (fattore `R` del peso, stessa grammatica di quelli del Soul): `rel.relation:friend`, `rel.disposition:close`, `rel.trust:high` (fasce `low`/`mid`/`high` degli assi) sono **affinità morbida**; `rel.req:relation:rival` è un **requisito rigido** (senza quel rapporto la frase non esce); `rel.not:relation:enemy` un'**esclusione rigida**. Il validatore segnala (`badTag`) i tag senza ambito per questi tratti.
- **Registro**: con la familiarità il narratore preferisce registri diversi (dal formale `ceremonial` all'intimo `intimate`): i `styles` della frase fanno il resto.
- **Evento `relation_npc`** (dichiarato da `base_relations`): l'incontro con un NPC già conosciuto. Ogni sua frase deve dichiarare una condizione di relazione (`relation`, `isKnown = true`, `relationKind`...): il validatore segnala `relationWithoutRelation` altrimenti. Un pacchetto può dichiarare altri eventi del genere con `AzerothUnspoken.Relationships:RegisterRelationEvent(evento, function(ctx) return … end)`.
- Esempi: `Data/RegistryRelations.lua` (83 frasi IT/EN).

### Interlocutore e luogo: chi incontriamo, dove siamo

Due **sotto-tabelle** leggono `ctx.other` (`Systems/Interlocutor.lua`: il bersaglio, l'NPC con cui si parla, chi ci ha
appena rivolto un'emote o sfidato a duello) e `ctx.place` (`Systems/Place.lua`). Dentro valgono gli stessi operatori del
livello superiore (elenchi, `not`, `any`, `func(oggetto, ctx)`); senza interlocutore o luogo un valore richiesto non
combacia, `campo = false` sì. Ogni campo conta nella specificità della frase.

<!-- prova -->
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
            conditions = { other = { actions = { "duel", within = 30 } } } },   -- un duello chiesto negli ultimi 30 secondi
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

| `other.` | Valori |
|---|---|
| `kind` | `npc`, `player`, `creature` |
| `race`, `class`, `faction`, `sex` | token di gioco (`Orc`, `NightElf`, `Scourge`; `PRIEST`; `Alliance`; `male`/`female`) |
| `levelMin`, `levelMax`, `classification`, `ctype`, `family`, `reaction`, `hostile`, `name` (contenuto), `npcID` | dati di gioco; `reaction`: `hostile`, `unfriendly`, `neutral`, `friendly`, `honored` |
| `role` | `innkeeper`, `merchant`, `guard`, `questgiver`, `trainer`, `flightmaster`, `banker`, `leader`, `civilian` |
| `temperament`, `morality` | i valori del Character Soul (`gruff`, `cheerful`…; `righteous`…) |
| `goals` | `profit`, `duty`, `knowledge`, `faith`, `glory`, `survival`, `family`, `power`, `peace`, `freedom` |
| `speech` | `plain`, `formal`, `gruff`, `warm`, `terse`, `florid`, `cryptic`, `jovial` |
| `actions` | un'azione recente: `quest_offer`, `quest_given`, `quest_done`, `merchant`, `trainer`, `flight`, `innkeeper`, `banker`, `gossip`, `trade`, `group`, `duel`, `invite`, `emote`, `attacks`, `ally`; entro 120 secondi, oppure `{ …, within = secondi }` |
| `relation`, `inGroup`, `secret` | etichetta di S6b; è nel nostro gruppo; l'identità è segreta |

| `place.` | Valori |
|---|---|
| `instanceType` | `none`, `party` (dungeon), `raid`, `pvp` (campo di battaglia), `arena`, `scenario` |
| `territory` | `friendly`, `hostile`, `contested`, `sanctuary`, `combat` |
| `tags` | uno dei tag elencati (`forest`, `ruin`, `sacred`, `cursed`, `capital`, `port`, `deep`, `dragon`, `neutral`, `inn`…: quelli di `Data/Places.lua`) |
| `capital`, `friendlyCapital`, `hostileCapital`, `faction`, `rest` | capitale; della propria fazione o dell'avversaria; chi governa il luogo; riposo nel mondo aperto |
| `encounter`, `lastEncounter` | `true`/`false` (scontro con un boss in corso, o finito da poco) oppure il nome |
| `encounterResult`, `groupRole`, `battleground` | `win`/`wipe`; `tank`/`healer`/`damage`; `none`/`queued`/`active` |
| `zone`, `subzone`, `mapID`, `continent`, `mood`, `instanceName`, `instanceID`, `difficulty` | come li dà il client |

- **Tag di affinità** (fattore `C`): `other.role:innkeeper`, `other.temperament:gruff`, `other.speech:jovial`, `other.goals:profit` (con `req:` e `not:` rigidi) e `place.tag:deep`, `place.instance:raid`, `place.territory:hostile`. Una tendenza di classe (`Data/NPCs.lua`) alza appena il peso di un tag morbido, mai un `req:`.
- **Segnaposto**: `{other}`, `{otherrole}`, `{otherrace}`, `{otherclass}`, `{instance}`, `{encounter}` (vedi sotto).
- **Eventi** (pacchetto `base_context`): `npc_meet` (un NPC dal ruolo riconosciuto), `other_action` (qualcuno compie un'azione verso di noi), `encounter_end` (fine di uno scontro con un boss). Non parlano senza la persona o lo scontro, nemmeno a mano. L'ingresso in un dungeon o in un campo di battaglia è l'evento `zone` con `place = { instanceType = … }`.
- **Ritmo**: in campo di battaglia, in arena e contro un boss le frasi brevi (fino a 80 byte) pesano di più; in incursione il narratore parla meno.
- **Regole editoriali** (GDD §5.3, §5.4): un mercante non declama come un re; razza e classe danno un saluto legato alla terra d'origine o al mestiere, mai un giudizio morale.
- **Dati** dei pacchetti: `AzerothUnspoken:RegisterPlaces{ zones, subzones, instances, continents }` (tag e temi per nome del client; `map`/`id` con `verified = true` solo se provati in gioco), `AzerothUnspoken:RegisterNPCs{ [npcID] = { role, temperament, … } }`, `AzerothUnspoken:RegisterTendencies{ class = { … } }` (mai la morale). Una chiave già registrata (una zona, un `npcID`) **sostituisce** la voce di prima, non la unisce: per aggiungere dati a un luogo del database di base scrivi anche i suoi campi originali.
  Esempio completo:

<!-- prova -->
```lua
AzerothUnspoken:RegisterPlaces({
    zones = { ["Valle di Prova"] = { tags = { "forest", "sacred" }, mood = "forest", continent = "kalimdor" } },
})
AzerothUnspoken:RegisterNPCs({
    [990001] = { name = "Oste di Prova", role = "innkeeper", temperament = "gruff", speech = "terse" },
})
AzerothUnspoken:RegisterTendencies({ class = { PRIEST = { goals = "faith" } } })
```

- Esempi: `Data/RegistryContext.lua` (110 frasi IT/EN).

### Condizioni nuove

Un pacchetto può dichiarare condizioni proprie, per dati che mette nel contesto (`AzerothUnspoken:Trigger(evento, { hasPet = true })`)
o che calcola da sé:

<!-- prova -->
```lua
AzerothUnspoken:RegisterPack({
    id = "animali",
    languages = { "itIT", "enUS" },
    conditions = {
        hasPet = "bool",                                            -- confronta ctx.hasPet con il valore; "bool", "str", "num"...
        petNamed = function(valore, ctx) return ctx.petName == valore end,   -- calcolata
    },
    registry = { ["animali.01"] = { event = "battle", speaker = "character", styles = { "everyday" },
        conditions = { hasPet = true, petNamed = "Brontolo" } } },
    texts = {
        itIT = { ["animali.01"] = "Con Brontolo al fianco, nessuna battaglia è davvero sola." },
        enUS = { ["animali.01"] = "With Grumble at my side, no battle is ever truly alone." },
    },
})
```

oppure `AzerothUnspoken:RegisterCondition("hasPet", nil, "bool")`.

## Dialoghi ambientali (NPC Alive)

I dialoghi con un NPC (step S8, [ADR 0020](../docs/adr/0020-dialogo-simulato-e-dialogo-reale-npc-alive.md)) sono dati come tutto il resto: un pacchetto può aggiungere battute e copioni senza toccare il motore. Sono **simulati**: la finestra lo dichiara («dialogo ambientale dell'addon») e le battute non vanno mai in chat.

**Le battute** sono regole con `speaker = "npc"` e un evento `npcd_<ruolo>_<nodo>` dichiarato dal pacchetto. Escono solo dentro un dialogo: `AzerothUnspoken:RegisterDialogues` mette su ogni evento dei nodi una guardia. Le condizioni sono quelle di sempre (`other = { role, speech, temperament, npcID }`, `isKnown`, `relation`, `remembered`...): così un locandiere burbero e uno gioviale, uno conosciuto e uno sconosciuto, o un NPC specifico per `npcID` dicono cose diverse.

**Il copione** dice quali nodi ci sono e che cosa si può rispondere. Il modo giusto di aggiungere un dialogo da un
pacchetto è una **chiave nuova**, di solito un NPC specifico `npc:<npcID>`, che **estende** il copione dell'archetipo con
`extends` (nodi e risposte proprie stanno sopra quelli ereditati; il resto si eredita). Qui un oste di prova (`npcID`
inventato: nel gioco usa quello vero, da leggere con `/au chi` davanti all'NPC) che apre in modo suo e poi segue il
copione del `innkeeper`:

<!-- prova -->
```lua
AzerothUnspoken:RegisterPack({
    id = "oste_prova",
    languages = { "itIT", "enUS" },
    events = {                                              -- gli eventi dei nodi nuovi
        npcd_oste_open = { category = "social", chance = 100, cooldown = 0 },
    },
    registry = {                                            -- le battute: voce npc, evento del nodo
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
        extends = "innkeeper",           -- il copione di base: nodi `news`, `bye`, risposte `leave`...
        role = "innkeeper", npcID = 990001, start = "open",
        nodes = {
            open = { event = "npcd_oste_open", choices = { "news", "leave" } },   -- il nodo `open` è solo suo
        },
    },
} })
```

Una chiave già registrata (`innkeeper`, `merchant`, `guard`, `flightmaster`, `trainer`, o un `npc:<npcID>` di un altro
pacchetto) **viene sostituita per intero, non unita**: `AzerothUnspoken:RegisterDialogues({ scripts = { innkeeper = … } })`
rimpiazza il copione di base e il locandiere, in tutto il gioco, ha solo i nodi che scrivi tu (nessun avviso). Per
cambiare un archetipo scrivi un copione completo, oppure usa una chiave nuova con `extends`. Lo stesso vale per i
dati di `RegisterNPCs`, `RegisterPlaces` e per un arco con lo stesso id di un altro (vince l'ultimo pacchetto caricato).

Un copione completo con tutti i suoi nodi (così è fatto `Data/Dialogues.lua`):

<!-- prova -->
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
    banker = {                       -- un archetipo nuovo: la chiave è il ruolo
        role = "banker", start = "open",
        nodes = {
            open = { event = "npcd_cantiniere_open", choices = { "news", "leave" } },
            news = { event = "npcd_cantiniere_news", choices = { "leave" } },
            bye  = { event = "npcd_cantiniere_bye" },            -- senza risposte: il dialogo finisce qui
        },
        choices = {
            news  = { label = { it = "Che notizie corrono?", en = "What news is going round?" }, go = "news",
                      flag = "asked_news", relation = "ambient_talk" },
            leave = { label = { it = "Arrivederci.", en = "Farewell." }, go = "bye" },
        },
    },
} })
```

(Le battute possono usare `speech`, `temperament`, `npcID`, `isKnown`, `relation` e `remembered` per distinguere i
caratteri e i rapporti, come fanno quelle di base in `Data/RegistryDialogues.lua`.)

- **Risposte neutre, da una a tre per nodo** (ne compaiono al massimo tre; `when = { … }` ne nasconde una). Domande e azioni, mai un sentimento, un carattere o una decisione morale attribuiti al personaggio; al massimo 70 byte, senza segnaposto, IT ed EN.
- **`flag`**: un flag narrativo locale, che diventa `npcd_<archetipo o npcID>_<nome>` nella memoria di S6 (al massimo 32 caratteri in tutto) e si legge nelle battute con `remembered`. Mai una quest.
- **`relation`**: una fonte di incremento di `Data/Relationships.lua` (`ambient`, `ambient_talk`: poco, con tetti giornalieri).
- Ogni percorso deve poter chiudersi (un nodo senza risposte o una risposta senza `go`).
- L'**identità** non si sceglie dal pacchetto: il dialogo si offre solo per un NPC del registro curato (`AzerothUnspoken:RegisterNPCs`, `Data/NPCs.lua`) o con un ruolo provato da un'interazione o scelto dall'utente. Le regole editoriali: niente prezzi, quest, fatti di cronaca, promesse che il gioco non mantiene.

## Story Arcs (storie personali)

Gli archi (step S9, [ADR 0021](../docs/adr/0021-story-arcs-micro-storie-senza-effetti-sul-gioco.md)) sono micro-storie del personaggio: **non sono quest del server**, non danno ricompense, non cambiano gli NPC veri e non promettono nulla al gioco. Vivono nell'addon: uno stato salvato per personaggio, un racconto nel diario e qualche frase del narratore. Sono dati come tutto il resto: un pacchetto aggiunge archi senza toccare il motore. Gli archi di base sono in `Data/Arcs.lua` (struttura), `Data/RegistryArcs.lua` (battute) e `Data/itIT|enUS/Arcs.lua` (testi).

**Gli stati.** `LOCKED → DISCOVERED → REFLECTED → RESOLVED`. Un arco può definire **stati propri** (`states = { "LOCKED", "DISCOVERED", "JOURNEY", "REFLECTED", "RESOLVED" }`: maiuscole, al massimo 10 lettere, sempre da `LOCKED` a `RESOLVED`) e da uno stato si va **solo al successivo**: niente salti, niente passi indietro.

**I passi.** Ogni passo porta da uno stato al successivo:

Un arco completo (struttura, testi e battute) in un pacchetto esterno. Le due parti che seguono, i testi e le battute,
sono commentate sotto.

<!-- prova -->
```lua
AzerothUnspoken:RegisterArcs({
    pack = "mio_pacchetto",
    arcs = {
        ponte = {                                   -- l'id: minuscole, cifre e _, al massimo 12 caratteri
            choices = { cosa = { options = { "coraggio", "prudenza" } } },     -- da 2 a 3 opzioni, id uguali in ogni lingua
            steps = {
                { from = "LOCKED", to = "DISCOVERED", on = { "zone" },
                  when = { levelMin = 20, place = { any = { { mapID = 1436 }, { zone = "Westfall" } } } } },
                { from = "DISCOVERED", to = "REFLECTED", on = { "zone", "player" }, wait = 300, choose = "cosa" },
                { from = "REFLECTED", to = "RESOLVED", on = { "level" } },
            },
        },
    },
    texts = {                                       -- i testi dell'arco, per lingua (o con AddArcTexts, più sotto)
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

AzerothUnspoken:RegisterPack({                      -- le battute dell'arco (vedi sotto)
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

| Campo del passo | Significato |
|---|---|
| `from`, `to` | stati; `to` è il successivo di `from` in `states` |
| `on` | gli **eventi veri** che lo possono far scattare: `zone` (si entra in una zona, dopo due secondi), `death`, `level`, `npc` (gossip, mercante, volo, addestratore, locandiere, banca: non le quest), `flag` (un flag narrativo nuovo messo da un sistema dell'addon: ad esempio uno dei dialoghi ambientali di S8, con `remembered = "npcd_innkeeper_asked_news"`; non quelli che il giocatore mette a mano né quelli automatici della memoria come `first_death`, che si leggono con `remembered` dentro l'evento `death`, `level` o `zone` che li causa), `player` (una scelta diretta del giocatore, dal diario o con `/au storie scegli`) |
| `when` | condizioni del RuleEngine, valutate sul contesto del momento, le stesse delle frasi (luogo con `place = { mapID, zone, tags, capital }`; memoria con `firstVisit`, `repeatVisit`, `lastVisitBad`, `remembered`; relazioni con `isKnown`, `familiarityMin`, `trustMin`; `other = { role, npcID }`; `levelMin`; `race`), più `arc = { … }` (sotto), `arcDone = "<id>"` (un altro arco è concluso) e `capitalsVisitedMin = n` |
| `wait` | secondi di orologio che devono passare dall'ingresso nello stato di partenza |
| `choose` | il passo aspetta che il giocatore scelga tra le opzioni di `choices[...]`: la scelta è salvata come **id di opzione** |

- **Nessuna apertura senza un evento vero.** L'apertura (`from = "LOCKED"`) ha un evento tra `zone`, `death`, `level`, `npc`, `flag`, mai `player`, e non può chiedere una scelta. Il tempo che passa, un comando o un altro sistema non aprono né fanno avanzare un arco.
- **Un passo per evento, per arco.** Con una scelta in attesa l'arco aspetta il giocatore. I passi `player` non hanno un evento: il diario li offre quando le condizioni e l'attesa valgono. I flag che gli archi stessi lasciano (`arc_…`) non fanno avanzare nulla.
- **`subject = "npc"`**: l'arco si lega al primo NPC che lo apre (evento `npc`, con `when = { other = { role = … }, familiarityMin = … }`). Nei passi dopo, `arc = { withSubject = true }` chiede che l'NPC dell'evento sia lo stesso; nelle battute `{other}` è il suo nome. L'addon legge soltanto il rapporto che tiene già (relazioni di S6b): non cambia nulla dell'NPC.
- **`topic = "death"`** (o un altro argomento del Character Soul): se il personaggio evita quell'argomento, l'arco non si apre né avanza.
- **Posti**: al massimo 1–2 archi attivi (`arcs.maxActive`, `/au storie max <1|2>`). Se un evento d'apertura arriva a posti finiti, l'arco resta «disponibile» e lo avvia il giocatore dal diario.
- **Il giocatore comanda.** Ogni arco si può **sospendere**, **saltare** o **disattivare**, uno per uno o tutti (`/au storie`, diario); il modulo `storyArcs` spegne tutto. Un arco sospeso o saltato si riprende; uno disattivato si riattiva.
- **La chiusura** (`RESOLVED`) lascia un ricordo permanente in Living Memory (`kind = "story"`, tag `arc`, `done` e l'id dell'arco: nessun testo). Ogni stato raggiunto imposta il flag `arc_<id>_<stato>` (minuscolo), che le frasi leggono con `remembered`.
- **Nessun campo per ricompense o effetti**: un campo sconosciuto in un arco o in un passo è un errore del validatore (`reward`, `quest`…).

**I testi dell'arco** (per lingua; nel database di base stanno nei file `Data/<lingua>/…`, in un pacchetto puoi darli come `texts` di `RegisterArcs`, come sopra, o con `AddArcTexts`). Estratto della forma, completa nell'esempio:

```lua
AzerothUnspoken:AddArcTexts("itIT", { ponte = {
    title = "Il ponte",                       -- al massimo 70 byte
    summary = "Una riga o due: di che storia si tratta.",
    stateNames = { JOURNEY = "a metà" },      -- facoltativo: nome degli stati propri (quelli di base li ha già l'addon)
    states = {                                -- il racconto di ogni stato, tranne LOCKED: dice anche che cosa aspetta la storia
        DISCOVERED = "…", REFLECTED = "…", RESOLVED = "…",
    },
    choices = { cosa = { prompt = "La domanda al giocatore",
        options = { coraggio = { label = "Con coraggio", note = "Che cosa resta nel diario." },      -- label: al massimo 70 byte, senza segnaposto
                    prudenza = { label = "Con prudenza", note = "…" } } } },
} })
```

Le opzioni le **sceglie il giocatore**, e il testo non fa dire al personaggio nulla che il giocatore non abbia deciso. Titolo, racconto di ogni stato, domande, etichette e note servono sia in italiano sia in inglese: `/au valida` segnala quelli che mancano (`badArc`).

**Le battute** sono regole degli eventi `arc_open` (primo passo), `arc_step` (passi intermedi) e `arc_resolve` (ultimo passo), che un pacchetto dichiara con `events = { arc_open = { category = "reflection", chance = 100, cooldown = 0 }, … }` (come in `Data/RegistryArcs.lua`). Ogni regola **dichiara l'arco** con la sotto-tabella `arc`, e il validatore lo esige (estratto dal pacchetto `ponte_battute` dell'esempio):

```lua
registry = {
    ["ponte.open.i"] = { event = "arc_open", speaker = "inner", styles = { "intimate" }, depth = { "natural", "literary", "elevated" },
        conditions = { arc = { id = "ponte", state = "DISCOVERED" } } },
    ["ponte.done.coraggio"] = { event = "arc_resolve", speaker = "narrator", styles = { "epic" },
        conditions = { arc = { id = "ponte", state = "RESOLVED", choice = "coraggio" } } },
}
```

| `arc.` | Valori |
|---|---|
| `id` | l'arco (un id sconosciuto è un errore) |
| `state`, `from` | lo stato appena raggiunto, e quello da cui si viene (anche un elenco) |
| `choice` | una delle scelte fatte dal giocatore nell'arco (l'id dell'opzione) |
| `withSubject` | l'NPC dell'evento è quello dell'arco |

- **Voci private**: `inner` e `narrator`. Mai `character`, che in modalità con proposte può diventare una frase in chat.
- Escono dal Narrative Director con la priorità «evento eccezionale», **una sola alla volta** (almeno 90 secondi, `BEAT_GAP`, tra due battute di archi: nessuna cascata). Se il momento non è buono (combattimento, morte, incursione o campo di battaglia, schermata invasiva, pausa) la battuta aspetta fino a 15 minuti; con l'intensità a 0 o il modulo spento tace. **Lo stato avanza comunque e il diario racconta**: il silenzio è un esito valido.
- Non si pronunciano a mano (`/au evento arc_open` non produce nulla): il motore le fa parlare solo per il passo di un arco.
- Regole editoriali (GDD §5.4, §7.5): originali, nessuna lore inventata spacciata per canone, nessuna promessa di conseguenze sul gioco. Niente ricompense, «missione» o «bottino» nei testi.
- Un arco con una definizione sbagliata resta registrato ma non parte mai: `/au valida` dice perché.

## Segnaposto

| Segnaposto | Valore |
|---|---|
| `{player}` | nome del personaggio (quello di Total RP 3, se attivo) |
| `{target}` | bersaglio |
| `{spell}` | incantesimo appena lanciato |
| `{zone}`, `{subzone}` | luogo |
| `{level}`, `{class}`, `{race}`, `{faction}`, `{targettype}` | nella lingua scelta |
| `{relation}` | l'etichetta del rapporto con la persona dell'interazione (relazioni, S6b) |
| `{other}`, `{otherrole}`, `{otherrace}`, `{otherclass}` | l'interlocutore: nome, ruolo, razza e classe nella lingua scelta (o razza e classe personalizzate di Total RP 3) |
| `{instance}`, `{encounter}` | l'istanza e lo scontro con un boss in corso o appena finito |
| `{g:maschile\|femminile}` | variante per genere **del personaggio**: `{g:pronto\|pronta}` |
| `{og:maschile\|femminile}` | variante per genere **dell'interlocutore** (`ctx.other.sex`): `{og:amico\|amica}`. Se il sesso non è noto la variante è scartata; non entra nella firma dei segnaposto (una lingua può non avere genere) |
| `{nome}` | una voce del vocabolario, ad esempio `{cry}` (grido di guerra adatto alla razza) |

Se manca un dato richiesto (per esempio `{target}` senza bersaglio), quella variante viene scartata e il motore ne
sceglie un'altra, o un'altra frase. Non si eseguono mai stringhe Lua contenute nei testi.

## Vocabolario

Brevi formule complete, scelte in base al contesto, che si inseriscono nelle frasi con `{nome}`.
Ogni voce può avere più varianti per lingua:

<!-- prova -->
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

Le voci si **aggiungono** a quelle degli altri pacchetti con lo stesso nome. Il vocabolario non può contenere altro vocabolario né `{line}`.

Una voce può portare dei `tags`, con la stessa grammatica di quelli delle regole: `{ tags = { "topic:blood" }, it = "Sangue e tuono!", en = "Blood and thunder!" }`. Quando il profilo del Character Soul **esclude** quel tag (un argomento da evitare, un `req:` o un `not:` che non vale) la voce non si sceglie mai; se non ne resta nessuna, la variante che usava il segnaposto è scartata come per un dato mancante (issue #42). I tag morbidi (`temperament:...`) non cambiano il peso del vocabolario. Il validatore segnala (`badTag`) i tag sbagliati.

## Cornici narrative

In modalità emote, la parlata di un `character` può essere inserita in una cornice. `{line}` è la frase:

<!-- prova -->
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

Una cornice senza `event` vale per tutti gli eventi; ogni variante deve contenere `{line}`.
Una cornice può indicare i suoi registri (`styles = { "ceremonial" }`): allora accoglie solo frasi di un registro uguale
o vicino (epico e cerimoniale sì, cerimoniale e ironico no). Senza `styles` accoglie ogni frase.
Cornice e frase insieme devono stare nei 255 byte di un messaggio (il validatore avvisa).

## Lingue nuove, traduzioni e testi in più

<!-- prova -->
```lua
AzerothUnspoken:RegisterLanguage("de", { name = "Deutsch", ui = { help = "Befehle: /au ..." } })
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
| `badDialogue` | errore o avviso | un copione di `RegisterDialogues` sbagliato: nodo o risposta mancante, evento senza battute o non della voce `npc`, flag non valido, testo mancante in una lingua, nodo irraggiungibile |
| `badArc` | errore o avviso | un arco di `RegisterArcs` sbagliato: id, stati o passi non validi, scelta non definita, campo sconosciuto (anche una ricompensa), titolo, racconto o scelte mancanti in una lingua; una regola di `arc_open`/`arc_step`/`arc_resolve` senza `arc = { id }` o con uno stato che l'arco non ha; avviso: un passo senza battute (l'arco avanza in silenzio) |
| `badPlaceholder` | errore | segnaposto sconosciuto, genere (`{g:}`, `{og:}`) malformato, graffa non chiusa, `{line}` fuori dalle cornici, vocabolario dentro il vocabolario |
| `frameNoLine` | errore | una cornice senza `{line}` |
| `badCondition` | errore | condizione sconosciuta o con un valore del tipo sbagliato |
| `recallWithoutMemory` | errore | una frase di un evento di richiamo (`memory_return`…) senza una condizione di memoria |
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
   - `P` = personalità del giocatore (Character Soul): affinità morbida, requisiti e argomenti da evitare (vedi «Personalità»); 1 se il profilo è neutro;
   - `N` = novità: ÷ (1 + 0,3 × usi recenti), e ×0,6 se il registro principale è quello dell'ultima frase dello stesso evento;
   - `S` = stile: profondità (×0,3 se la frase è scritta per altre profondità) × registri (StyleResolver, sopra);
   - `R` = relazione con la persona dell'interazione (tag `rel.`, vedi «Relazioni»); 1 senza relazione. Anche l'interlocutore e il luogo pesano, nel fattore `C` (tag `other.` e `place.`);
3. Nessun fattore esclude una frase per ragioni di stile: c'è sempre un ripiego.
4. Le frasi usate di recente (circa il 60% di quelle disponibili, al massimo `pacing.recentPhraseWindow` = 30) sono escluse finché ce ne sono altre.
5. Scelta la frase, sceglie una **variante**: tra quelle della profondità giusta (o senza indicazione), diversa dall'ultima usata.
6. La memoria degli usi e delle varianti si salva tra le sessioni, per personaggio, e gli usi si attenuano a ogni accesso.
7. Prima del motore decide il **Narrative Director** (eventi spontanei, non le richieste esplicite): intensità,
   probabilità per evento (`/au prob`), pause (globale `/au cooldown`, di categoria, di evento), budget per categoria,
   priorità e sospensione durante filmati e combattimenti impegnativi. Un evento nuovo ha la priorità "atmosfera";
   un pacchetto la può cambiare con `AzerothUnspoken:SetEventPriority("fishing", "memory")`
   (`dialogue`, `exceptional`, `memory`, `ambient`). Vedi [docs/ARCHITETTURA.md](../docs/ARCHITETTURA.md).

## Provare gli esempi

Ogni blocco `lua` di questa guida preceduto da una riga `<!-- prova -->` è un pacchetto completo e funzionante.
`Tests/check_docs.py` (lanciato da `Tests/run_tests.py`) li carica **uno dopo l'altro come farebbe un pacchetto esterno**
(`local ADDON, NS = ...` è il suo namespace, le API si chiamano da `AzerothUnspoken:`), esegue il validatore su tutti i
pacchetti e fallisce se uno solo segnala un errore. Un blocco preceduto da `<!-- prova: errore -->` è un esempio sbagliato
apposta, che deve dare errore. Se cambi un esempio, o l'API che usa, i test te lo dicono; se ne aggiungi uno, mettigli
la riga `<!-- prova -->` e id suoi (che non coincidano con quelli degli altri esempi). Lo stesso script controlla i link
relativi di tutti i file Markdown del repository.
