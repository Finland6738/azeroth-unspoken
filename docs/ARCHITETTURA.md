# Architettura di Azeroth Unspoken

Questo documento descrive come è fatto l'addon **oggi, su `main`** (versione 0.1.0, step S1 e S2), e dove si aggancia ciò che la [roadmap](../ROADMAP.md) prevede. Le parti non ancora presenti sono indicate come *previste*. Per le motivazioni delle scelte vedi le [ADR](adr/README.md); per la specifica di prodotto, il [GDD](Immersion_Director_GDD_v1.0.md) (§11 è l'architettura Lua).

## Indice

1. [Visione d'insieme](#1-visione-dinsieme)
2. [Moduli e responsabilità](#2-moduli-e-responsabilità)
3. [Flusso di un evento](#3-flusso-di-un-evento)
4. [Come si sceglie una frase](#4-come-si-sceglie-una-frase)
5. [Il Chat Gateway](#5-il-chat-gateway)
6. [Dati e SavedVariables](#6-dati-e-savedvariables)
7. [Punti di estensione](#7-punti-di-estensione)
8. [Cosa è previsto e non c'è ancora](#8-cosa-è-previsto-e-non-cè-ancora)
9. [Limiti noti](#9-limiti-noti)

## 1. Visione d'insieme

L'addon è una catena: il **client** emette un evento, un **bus** lo traduce in un formato uniforme, il **Director** decide se è il momento di parlare, il **motore** sceglie una frase intera dal **database** di pacchetti, il **Chat Gateway** decide dove può andare, e il **narratore privato** la mostra. Ogni API del client passa da **Compat**, che dice che cosa è disponibile, mancante o limitato.

```mermaid
flowchart LR
    subgraph Client["Client WoW Forever"]
        EV["Eventi del gioco"]
        API["API del client"]
        CHAT["Chat (SendChatMessage)"]
    end

    subgraph Core["Core/"]
        COMPAT["Compat<br/>capacità e valori segreti"]
        BUS["EventBus<br/>envelope normalizzati"]
        CFG["Config<br/>SavedVariables e schema"]
        CTX["ContextResolver<br/>contesto di gioco"]
        DIAG["Diagnostics<br/>errori e /au debug"]
    end

    subgraph Sys["Systems/"]
        TRG["Triggers<br/>evento → evento narrativo"]
        DIR["Director<br/>quando parlare"]
    end

    subgraph Eng["Engine/ (senza testi)"]
        REG["PhraseRegistry"]
        RULE["RuleEngine<br/>when"]
        SEL["WeightedSelector"]
        TPL["TemplateRenderer"]
    end

    subgraph Out["Integration/ e UI/"]
        GW["ChatGateway<br/>modalità e invio"]
        NAR["NarratorFrame<br/>narratore privato"]
        TRP["TotalRP3<br/>adattatore facoltativo"]
        UI["Impostazioni, Wizard,<br/>Comandi, Pulsante"]
    end

    DATA[("Data/ e pacchetti<br/>frasi, cornici, vocabolario")]

    EV --> COMPAT --> BUS --> TRG --> DIR
    TRG --> CTX
    API --> COMPAT
    CTX --> TRP
    TRG --> GW
    GW --> SEL
    SEL --> RULE
    SEL --> TPL
    REG --> SEL
    DATA --> REG
    GW --> NAR
    GW --> CHAT
    UI --> GW
    UI --> CFG
    DIAG -. osserva .-> BUS
    DIAG -. osserva .-> COMPAT
```

Principi che reggono tutto il resto:

- **Il motore non contiene testi** ([ADR 0001](adr/0001-motore-e-database-narrativo-separati.md)).
- **Nessuna rete** ([ADR 0002](adr/0002-tutto-offline-senza-ia.md)).
- **Niente in chat senza un'azione del giocatore** ([ADR 0003](adr/0003-narratore-privato-e-chat-gateway.md)).
- **Se una funzione del client manca, si spegne quella funzione, non l'addon** ([ADR 0005](adr/0005-compat-valori-segreti-ed-eventi-difensivi.md)).
- **Un errore in un modulo non ferma gli altri** ([ADR 0014](adr/0014-bus-di-eventi-normalizzati-e-moduli-isolati.md)).

## 2. Moduli e responsabilità

I file si caricano nell'ordine del `.toc` (`AzerothUnspoken/AzerothUnspoken.toc`). Ogni file riceve `ADDON, NS = ...`: `NS` è lo spazio dei nomi dell'addon, esposto anche come globale `AzerothUnspoken`.

| Cartella / file | Responsabilità |
|---|---|
| **`Core/Bootstrap.lua`** | spazio dei nomi `NS`; lingue (`RegisterLanguage`, `NS:L`, `NS:Lang`); `NS:Print`; registro dei moduli (`NS:RegisterModule`); su `ADDON_LOADED` esegue `NS:Initialize`: `Config:Load`, `Compat:Probe`, `EventBus:Start`, poi `OnInit` di ogni modulo, ciascuno isolato da `Diagnostics:Guard`; nomi dei tasti. |
| **`Core/Compat.lua`** | matrice delle capacità (`AVAILABLE`, `MISSING`, `RESTRICTED`); `Query`, `SafeCall`, `IsSecret`, `Readable`; registrazione protetta degli eventi; `GetBuildInfo` (riconosce Forever); restrizioni (`C_RestrictedActions`); identità segrete (`C_Secrets`); sorgente della chat e blocco della chat. |
| **`Core/Diagnostics.lua`** | `Guard` (esecuzione isolata con `xpcall`), registro degli errori (al massimo 30, raggruppati), rapporto `/au debug`, matrice per gruppo. |
| **`Core/Config.lua`** | predefiniti, `Merge`, `Validate`, migrazioni per `schemaVersion`, `Get`/`Set` per percorso, preset dei moduli, modalità e canali del Chat Gateway. Imposta `NS.db` e `NS.cdb`. |
| **`Core/EventBus.lua`** | sorgenti WoW → tipi normalizzati; envelope; deduplicazione; coda anti-cascata; `Publish`, `Subscribe`, `Recent`. |
| **`Core/ContextResolver.lua`** | `NS:BuildContext(extra)`: costruisce il contesto su cui si valutano le condizioni (personaggio, luogo, ora, gruppo, istanza, bersaglio, incantesimo), classifica gli incantesimi, registra le zone e le parole chiave dei pacchetti. |
| **`Engine/PhraseRegistry.lua`** | `RegisterPack`; registra frasi, cornici, vocabolario e traduzioni; indici per evento e per id; speaker provvisorio; statistiche. |
| **`Engine/RuleEngine.lua`** | `Match(when, ctx)`: le condizioni dichiarative (valori, elenchi, `not`, `any`, `func`, intervalli). |
| **`Engine/WeightedSelector.lua`** | idoneità, peso (`weight` × specificità ÷ usi recenti), anti-ripetizione, memoria degli usi, `PickEntry`/`Pick`. |
| **`Engine/TemplateRenderer.lua`** | segnaposto, genere, vocabolario, cornici. Se manca un dato, la frase è scartata. |
| **`Integration/TotalRP3.lua`** | adattatore facoltativo: oggi legge il nome del profilo ([ADR 0004](adr/0004-total-rp-3-facoltativo-con-adattatore.md)). |
| **`Integration/ChatGateway.lua`** | modalità, proposte, canali, invio solo da azione del giocatore, anti-flood, `AzerothUnspoken_Speak`. |
| **`Systems/Director.lua`** | `Director:Evaluate(evento)`: intensità, pausa immediata, moduli attivi. Punto di aggancio del Narrative Director (step S4). |
| **`Systems/Triggers.lua`** | abbonato al bus: trasforma gli eventi normalizzati in eventi narrativi (`battle`, `victory`, `lowhp`, `death`, `rez`, `levelup`, `zone`, `attack`, `heal`, `buff`, `travel`, `rezother`), applica probabilità e pause per evento. |
| **`UI/Widgets.lua`** | piccoli componenti condivisi dell'interfaccia. |
| **`UI/NarratorFrame.lua`** | il narratore privato: riquadro, durata, opacità, cronologia, editor, pulsanti, pausa. |
| **`UI/SpeakButton.lua`** | il pulsante "pronuncia" e il tasto: gesto che conferma il Chat Gateway. |
| **`UI/Wizard.lua`** | procedura guidata del primo avvio (6 passi, 7 con Total RP 3). |
| **`UI/SettingsFrame.lua`** | pannello delle impostazioni (`Settings.RegisterCanvasLayoutCategory`, con ripiego su `InterfaceOptions_AddCategory`). |
| **`UI/Commands.lua`** | `/au` e `/unspoken`. |
| **`Data/<lingua>/Interface.lua`** | testi dell'interfaccia (`itIT`, `enUS`). |
| **`Data/*.lua`** | pacchetti di frasi di base: `Vocabulary`, `Frames`, `Combat`, `Spells`, `Life`, `Exploration`, `Social`. `Data/Classes.lua` (54 frasi) c'è ma **non è ancora nel `.toc`**. |
| **`Bindings.xml`** | tasti `AZEROTHUNSPOKEN_SPEAK` e `AZEROTHUNSPOKEN_PAUSE`. |
| **`AzerothUnspoken_Example/`** | pacchetto di esempio, addon separato con `## Dependencies: AzerothUnspoken`. |
| **`Tests/`** | test fuori dal gioco (lupa) e client simulato ([ADR 0007](adr/0007-test-fuori-gioco-con-lupa-e-mock.md)). |

Direzione delle dipendenze: `Core` non conosce `Engine`, `Systems` né `UI`; `Engine` usa `Core` ma non conosce il Gateway né l'interfaccia; `Integration` e `Systems` usano `Core` ed `Engine`; `UI` usa tutto. Un modulo si trova con `NS.NomeModulo` (ad esempio `NS.Gateway`, `NS.Director`, `NS.Narrator`).

## 3. Flusso di un evento

Il percorso completo, dal client alla frase mostrata (e, solo dopo un gesto, alla chat):

```mermaid
sequenceDiagram
    autonumber
    participant W as Client WoW
    participant B as EventBus
    participant T as Triggers
    participant D as Director
    participant C as ContextResolver
    participant G as ChatGateway
    participant E as Engine
    participant N as NarratorFrame
    actor P as Giocatore

    W->>B: evento (es. PLAYER_REGEN_DISABLED)
    Note over B: OnGameEvent → normalize (isolato da Guard)<br/>valori segreti tolti dal contesto, campo RESTRICTED
    B->>B: envelope + deduplicazione + coda anti-cascata
    B->>T: COMBAT_START (abbonato "triggers")
    T->>T: handler → Fire("battle")
    T->>D: Evaluate("battle")
    D-->>T: allow, chanceMul, cooldownMul (oppure allow = false)
    T->>T: pausa globale e dell'evento, dado sulla probabilità
    T->>C: BuildContext(extra)
    C-->>T: ctx
    T->>G: Narrate("battle", ctx, auto = true)
    G->>E: PickEntry(evento, ctx, forma)
    E-->>G: record: testo, speaker, forma, id
    G->>G: Propose: modalità e voce decidono l'uscita
    G->>N: Present(record)  (sempre)
    N-->>P: frase nel riquadro privato
    opt modalità PREVIEW, CONFIRM_TO_SEND o AUTO e voce pubblica
        G->>G: proposta in attesa (25 s)
        P->>G: clic, tasto o /au dire (PlayerAction)
        G->>W: SendChatMessage (dopo i controlli)
    end
```

I passaggi, in parole:

1. **Client → bus.** `Core/EventBus.lua` registra gli eventi del client tramite `Compat:RegisterEvent` (con controllo di validità, dentro un `pcall`). Ogni sorgente (`EventBus:AddSource`) ha una funzione `normalize` che produce un tipo, un contesto e opzioni (chiave di deduplicazione, campi attesi). La funzione gira dentro `Diagnostics:Guard`.
2. **Envelope.** `NewEnvelope` crea `{ type, timestamp, source, context, fields }`. I valori segreti non entrano nel contesto e il loro campo è `RESTRICTED`; i campi attesi ma assenti sono `MISSING`.
3. **Deduplicazione e coda.** Un doppione (stesso tipo e chiave entro la finestra) si scarta e si conta. Un evento pubblicato mentre se ne consegna un altro va in coda (al massimo 32; oltre 5 secondi di età si scarta).
4. **Consegna.** Ai gestori del tipo e a quelli di `"*"`, ciascuno in `Guard`.
5. **Triggers.** I gestori in `Systems/Triggers.lua` mantengono un po' di stato (inizio del combattimento, zona precedente, bersagli degli incantesimi) e chiamano `Fire(evento, extra)`; alcuni ritardano con `C_Timer.After` per lasciare che il gioco aggiorni lo stato.
6. **Director.** `Allowed(evento)` chiede a `Director:Evaluate`: addon spento, pausa immediata, modulo escluso o intensità 0 → silenzio. Altrimenti il Director restituisce i moltiplicatori di probabilità e pausa, e `Triggers` applica la pausa globale, quella dell'evento e il lancio del dado.
7. **Contesto.** `NS:BuildContext(extra)` raccoglie i dati del momento. Con l'identità del bersaglio segreta non si legge né si confronta alcun dato del bersaglio (resta `targetSecret`); ogni lettura passa da `SafeCall`; il nome del personaggio può venire da Total RP 3.
8. **Gateway e motore.** `Gateway:Narrate` sceglie la forma (parlata o emote) e chiede a `Engine:PickEntry` una frase ([sezione 4](#4-come-si-sceglie-una-frase)). Se non c'è nessuna frase adatta, **non succede nulla**: il silenzio è valido.
9. **Uscita.** `Gateway:Propose` mostra sempre la frase nel narratore. Solo se la modalità lo prevede e la voce può andare in chat, crea anche una **proposta** ([sezione 5](#5-il-chat-gateway)).

**Richieste esplicite.** `/au saluto`, `/au evento`, `/au incanta` e il tasto "pronuncia" non passano dalla probabilità e dalla pausa: chiamano `NS:Trigger`/`Gateway:Narrate` direttamente. Restano comunque soggetti alle regole del Gateway: mai un invio in chat senza un'azione del giocatore.

## 4. Come si sceglie una frase

```mermaid
flowchart TD
    A["PickEntry(evento, ctx, forma)"] --> B["Frasi dell'evento<br/>nella lingua scelta"]
    B --> C{"Idonea?<br/>(pacchetto acceso, pausa propria,<br/>dati dei segnaposto, when)"}
    C -- no --> X["scartata"]
    C -- sì --> D["Peso = weight × (1 + 0,35 × condizioni)<br/>÷ (1 + 0,3 × usi recenti)<br/>× 0,6 se stesso tono dell'ultima"]
    D --> E["Escluse le frasi recenti<br/>(finché ce ne sono altre)"]
    E --> F["Scelta pesata casuale"]
    F --> G["Render: segnaposto, genere,<br/>vocabolario, cornice se emote"]
    G --> H{"Dati mancanti?"}
    H -- sì --> I["peso 0, nuovo tentativo<br/>(fino a 6)"]
    I --> F
    H -- no --> J["Remember: usi, recenti, tono"]
    J --> K["{ text, speaker, form, id, event }"]
```

- **Condizioni** (`when`): vedi [FORMATO_PACCHETTI.md](../AzerothUnspoken/FORMATO_PACCHETTI.md). Più condizioni → frase più specifica → peso maggiore.
- **Memoria**: `NS.cdb.memory` (`uses`, `last`, `recent`, `lastTone`), per personaggio. Gli usi si attenuano a ogni accesso (`DecayMemory`, ×0,75). La finestra delle frasi recenti è circa il 60% di quelle disponibili, al massimo `pacing.recentPhraseWindow` (30).
- **Voce (`speaker`)**: `narrator`, `inner`, `character`, `npc`. Oggi, se un pacchetto non la indica, `say` → `character` ed `emote` → `narrator`. Una frase parlata inserita in una cornice è `narrator`.
- Il silenzio è un esito valido: se nessuna frase è idonea, il motore restituisce `nil`.

## 5. Il Chat Gateway

```mermaid
flowchart TD
    R["Frase scelta (record)"] --> M{"Modalità efficace<br/>(publicChat spento = PRIVATE)"}
    M -- "PRIVATE" --> NAR["Solo narratore"]
    R --> V{"Voce inner o npc?"}
    V -- sì --> NAR
    M -- "PREVIEW / CONFIRM_TO_SEND / AUTO" --> A{"AUTO, evento spontaneo,<br/>autoPublicSay e canale<br/>senza gesto (emote; /say in istanza)?"}
    A -- sì --> S["Gateway:Send (auto)"]
    A -- no --> PR["Proposta in attesa<br/>(25 s) + narratore"]
    PR --> G{"Gesto del giocatore<br/>(clic, tasto, /au dire, Invio)"}
    G -- "PREVIEW, prima volta" --> ED["Apre l'editor"]
    ED --> G
    G -- "conferma" --> S
    S --> CK{"Controlli: testo, canale,<br/>azione, anti-flood, mittente,<br/>blocco chat"}
    CK -- ok --> OUT["Compat chat sender"]
    CK -- rifiutato --> LOG["motivo in Diagnostics<br/>(la proposta resta)"]
```

Regole fisse, verificate dai test (`Tests/TestChatGateway.lua`):

- L'invio da gesto passa solo da `Gateway:PlayerAction(fn)`. Fuori da quell'ambito `Gateway:Send` rifiuta tutto tranne `EMOTE` e, in istanza, `SAY` e `YELL` (`needs_action`).
- Le voci `inner` e `npc` non diventano mai proposte.
- Anti-flood: `floodSeconds` (4), `maxPerMinute` (6), `autoMaxPerMinute` (2); testo di al massimo `Config.CHAT_LIMITS[canale]` byte (255; la stessa tabella è letta dal validatore); proposta in attesa `pendingSeconds` (25), e una nuova sostituisce la vecchia. Con l'editor aperto la proposta non scade e una frase spontanea non la sostituisce.
- Il testo inviato è adattato al canale (`Gateway:TextFor`: emote fuori da `/e` con il nome, parlato in `/e` con «dice: «…»»). In alternativa all'invio, `Gateway:CopyToChat` mette la proposta nella casella della chat standard (`Compat:OpenChatWith`).
- L'invio automatico si attiva solo con due gesti (avviso e conferma entro 10 secondi, `Gateway:SelectAuto`) e non è nel ciclo delle modalità del pannello.
- Canali: `SAY`, `EMOTE`, `YELL`, `PARTY`, `RAID`, `GUILD`, `INSTANCE_CHAT`, con controllo di disponibilità.
- **Ipotesi non ancora misurata in gioco**: quali canali il client accetta senza gesto ([G1](G1_checklist.md), SP-05).

## 6. Dati e SavedVariables

```mermaid
flowchart LR
    subgraph Disk["File salvati (WTF)"]
        G["AzerothUnspokenDB<br/>(account)"]
        C["AzerothUnspokenCharacterDB<br/>(per personaggio)"]
    end
    subgraph Mem["In memoria"]
        DB["NS.db = settings"]
        CDB["NS.cdb"]
        HIS["cronologia del narratore<br/>(mai salvata)"]
    end
    G -- "Config:Load: Migrate, Merge, Validate" --> DB
    C -- "Config:Load" --> CDB
```

| Variabile | Contenuto |
|---|---|
| `AzerothUnspokenDB` | `schemaVersion` (oggi 2) e `settings`: `locale`, `preset`, `intensity`, `proseDepth`, `modules`, `output`, `chat`, `privacy`, `pacing`, `enabled`, `chance`, `ignored`, `disabledPacks`, `ui` (pulsante, wizard fatto, riquadro del narratore: durata, opacità, dimensione, posizione). |
| `AzerothUnspokenCharacterDB` | `schemaVersion`, `memory` (usi, ultime frasi, tono) e, per gli step futuri, `personality`, `memories`, `arcs`, `history` (oggi vuoti). |

- I predefiniti sono in `Config.defaults` e `Config.characterDefaults`; le regole di validità in `Config.rules`.
- Le migrazioni sono `Config.migrations.global[n]` e `.character[n]` ([ADR 0006](adr/0006-savedvariables-e-versioni-dello-schema.md)).
- **Non si salva mai il contenuto della chat.** I campi `privacy.*` (`socialOptIn`, `shareMemories`, `acceptSceneInvites`) esistono già, spenti, per il futuro modulo Social.
- Il resto dello stato (pausa immediata `NS.paused`, proposta in attesa, cronologia, registro degli errori, memoria dell'ultimo invio) vive solo in memoria.

## 7. Punti di estensione

### Per chi scrive pacchetti di frasi (stabile)

Un pacchetto è un addon separato con `## Dependencies: AzerothUnspoken`. L'API è descritta in [FORMATO_PACCHETTI.md](../AzerothUnspoken/FORMATO_PACCHETTI.md) (il formato cambierà con lo schema v2, step S3):

| Chiamata | A che cosa serve |
|---|---|
| `AzerothUnspoken:RegisterPack({ id, name, phrases, frames, vocab, translations })` | aggiunge frasi, cornici narrative, vocabolario e traduzioni |
| `AzerothUnspoken:RegisterLanguage(codice, { name, ui })` | aggiunge una lingua (testi dell'interfaccia) |
| `AzerothUnspoken:AddTranslations(lingua, { [id] = testo })` | traduce frasi di altri pacchetti |
| `AzerothUnspoken:RegisterSpellKeywords({ kind = …, element = …, classElement = … })` | classifica gli incantesimi e ne crea di nuovi tipi (ognuno lancia l'evento omonimo) |
| `AzerothUnspoken:SetEventDefaults(evento, probabilità, pausa)` | probabilità e pausa predefinite di un evento nuovo |
| `AzerothUnspoken:RegisterZoneMoods({ ["Nome zona"] = "atmosfera" })` | atmosfera delle zone, per la condizione `mood` |

Un pacchetto può anche usare `func = function(ctx) … end` nelle condizioni per regole scritte in Lua, con il contesto di `NS:BuildContext`.

### Per macro, altri addon e strumenti (in uso, senza garanzia di stabilità)

| Punto | Uso |
|---|---|
| `/au evento <nome>`, `/au incanta <incantesimo>`, `/au saluto`… | da macro o da altri addon con `SlashCmdList` |
| `AzerothUnspoken:Trigger(evento, extra)` (`NS:Trigger`) | lancia un evento narrativo; esce sempre da narratore e Chat Gateway, **mai in chat da solo** |
| `AzerothUnspoken_Speak()` | il gesto "pronuncia" (anche da tasto o macro) |
| `AzerothUnspoken.EventBus:Subscribe(tipo, proprietario, fn)` | osservare gli eventi normalizzati (envelope) |
| `AzerothUnspoken.EventBus:AddSource(eventoWoW, { normalize, unit })` | tradurre un nuovo evento del client; la registrazione passa da Compat |
| `AzerothUnspoken.Compat` (`caps`, `Query`, `SafeCall`, `Readable`, `IsSecret`) | usare le API del client in modo difensivo |
| `AzerothUnspoken.Gateway:Send(...)` | **fuori da `PlayerAction`** rifiuta tutto tranne emote (e `/say`/`/yell` nelle istanze): chi lo usa non aggira le regole |

Questi punti sono interni: possono cambiare tra una versione e l'altra finché la roadmap è aperta. Solo l'API dei pacchetti è pensata per durare, e i suoi cambiamenti saranno annunciati nel [CHANGELOG](../CHANGELOG.md).

### Per chi scrive un nuovo sistema nell'addon

1. Crea il file nella cartella giusta e aggiungilo al `.toc` **dopo** i moduli da cui dipende.
2. Registra il modulo con `NS:RegisterModule("nome")` e inizializzalo in `OnInit` (isolato da `Guard`).
3. Per ogni API del client nuova: controllala nel dump ([ADR 0010](adr/0010-dump-api-di-forever-come-riferimento.md)), passa da Compat e degrada con eleganza.
4. Per un nuovo evento del client aggiungi una sorgente al bus; non registrare eventi per conto tuo.
5. Per parlare, passa dal Director (se è spontaneo) e dal Gateway (sempre).
6. Dati salvati nuovi: predefiniti in `Config.defaults`, regole in `Config.rules`, migrazione e test.
7. Annota con EmmyLua l'API pubblica e aggiungi le nuove globali a `.luarc.json` (vedi [CONTRIBUTING.md](../CONTRIBUTING.md)).

## 8. Cosa è previsto e non c'è ancora

Dalla [roadmap](../ROADMAP.md); nulla di questo esiste sul `main` attuale.

| Step | Cosa aggiunge | Dove si aggancia |
|---|---|---|
| S3 | schema dati v2: registro delle regole separato dai testi per lingua, `depth` e `speaker` sulle frasi, validatore, `/au validate`, `Tests/check_api.py` | `Engine/PhraseRegistry.lua`, `Data/`, `Tests/` |
| S4 | Narrative Director completo: intensità, budget, priorità, silenzio, StyleResolver, peso `W = B × C × P × N × S` | `Systems/Director.lua` (`Evaluate`) |
| S5 | personalità del personaggio (Character Soul) e adattatore Total RP 3 esteso | `Systems/`, `Integration/TotalRP3.lua` |
| S6 | memoria vissuta e diario | `NS.cdb.memories`, `UI/JournalFrame.lua` |
| S6b | relazioni e affinità con NPC e giocatori | `Systems/Relationships.lua`, `Data/Relationships.lua` |
| S6c | interlocutore (`ctx.other`) e luogo (`ctx.place`) come condizioni | `Systems/Interlocutor.lua`, `Systems/Place.lua`, `Data/NPCs.lua`, `Data/Places.lua` |
| S8 | dialoghi con NPC (finestra, stati, registro) | nuovo modulo e `Data/NPCs.lua` |
| S9 | archi narrativi | `NS.cdb.arcs` |
| S10 | gioco sociale con messaggi addon, consenso e sicurezza | nuovo modulo, `privacy.*` |

## 9. Limiti noti

- **Nulla è stato provato nel client vero.** Tutto è verificato solo con il client simulato; la prova G1 è rimandata ([checklist](G1_checklist.md)).
- La profondità dello stile (`proseDepth`) è salvata, ma nessuna frase la usa.
- Nelle impostazioni solo i moduli `personal`, `world`, `publicChat` e `totalRP3` hanno effetto.
- Lo `speaker` è assegnato con una regola provvisoria (vedi sezione 4) finché non arriva lo schema v2.
- `Data/Classes.lua` (54 frasi) non è ancora nel `.toc`.
- Le probabilità e le pause per evento (`NS.DEFAULT_CHANCE`, `NS.EVENT_COOLDOWN`) vengono dal prototipo; il Narrative Director le sostituirà.
- Le API della matrice delle capacità non sono state controllate nel client della build 70658: vedi `/au debug full` e [RIFERIMENTI.md](RIFERIMENTI.md).
