# IMMERSION DIRECTOR
## Game Design Document (GDD) — Versione 1.0

**Data:** 28 ottobre 2026  
**Stato:** Specifica di progettazione, non implementazione completata  
**Piattaforma target:** World of Warcraft: Forever, build di riferimento 1.60.1.70658, Interface `16001`  
**Tecnologia:** Addon Lua e interfaccia WoW; dati locali / SavedVariables  
**Lingue iniziali:** Italiano (`itIT`) e inglese (`enUS`)  
**Dipendenze obbligatorie:** Nessuna  
**Integrazione facoltativa:** Total RP 3  
**Profilo iniziale:** Esperienza completa modulare, modalità bilanciata, intensità 50/100  
**Connettività:** Nessuna richiesta Internet diretta, nessun cloud e nessuna IA online. Il social opzionale usa soltanto trasporti addon in-game consentiti dal client.

> **Documento di progetto.** Esempi di dialoghi, identificativi, eventi e API sono materiale di design. La compatibilità effettiva va validata nel client Forever installato. Le funzionalità non dimostrate sono indicate come condizionate o sperimentali.

---

# 1. Executive summary

Immersion Director è un **motore narrativo locale e modulare** che aggiunge profondità interpretativa al normale gameplay di World of Warcraft senza alterare quest, IA server o regole di combattimento. Trasforma eventi osservabili — esplorazione, progressione, interazione con personaggi, ritorni in luoghi conosciuti e scelte narrative volontarie — in pensieri, dialoghi ambientali, ricordi e piccole storie personali.

**Promessa al giocatore:** «Azeroth non diventa più loquace per forza: sembra più consapevole del tuo viaggio».

**Differenziatore:** non una raccolta di emote casuali, ma un **Narrative Director** che decide *se*, *quando*, *perché*, *come* e *a chi* presentare una reazione, con personalità, contesto, memoria, localizzazione e ritmo.

**Vincoli non negoziabili:**

1. Funzionamento completo senza Total RP 3, con integrazioni aggiuntive quando disponibile.
2. Database bilingue locale, curato editorialmente, senza traduzione automatica in-game.
3. Nessuna connessione a siti, servizi o modelli remoti.
4. Il giocatore controlla sempre ciò che viene attribuito al suo personaggio.
5. Non fingere che dialoghi simulati siano comunicazioni reali degli NPC o di altri giocatori.
6. Consenso esplicito per scene condivise e diffusione di contenuti personali.
7. Compatibilità con restrizioni di WoW Forever; nessun aggiramento delle protezioni del client.
8. Prestazioni, discrezione e assenza di spam come obiettivi di prima classe.

# 2. Target e bisogni

## 2.1 Pubblici

- **Esploratore solitario:** vuole atmosfera, monologhi interiori e storia personale anche senza giocatori RP.
- **Roleplayer con Total RP 3:** desidera che il profilo definito in TRP3 influenzi gli spunti narrativi, senza duplicazione dei dati.
- **Roleplayer senza TRP3:** vuole un profilo caratteriale interno semplice e scene locali.
- **Gruppo RP:** desidera inviti e strumenti di co-narrazione consensuale.
- **Giocatore stanco della ripetitività:** vuole che attività familiari acquistino significato, senza interrompere lo svolgimento del gioco.

## 2.2 Obiettivi esperienziali

- **Identità:** «Questa reazione appartiene proprio al mio personaggio».
- **Atmosfera:** «Il luogo ha storia, tensione e carattere».
- **Continuità:** «Il mio viaggio lascia tracce riconoscibili».
- **Relazioni:** «Ho motivi per interagire con gli altri, senza che l'addon reciti al posto loro».
- **Ritmo:** «Posso vivere la narrazione senza essere distratto durante le attività intense».

## 2.3 Non-obiettivi

- Sostituire il sistema di quest Blizzard o crearne di server-side.
- Modificare IA, animazioni o veri dialoghi server degli NPC.
- Simulare azioni attribuite ad altri giocatori senza consenso.
- Garantire trigger su critici, danni, salute nemica o combat log non accessibili.
- Generare prosa in tempo reale tramite IA esterna.
- Automatizzare `/say`, `/yell` o altri canali in violazione delle limitazioni del client.

# 3. Pilastri di game design

1. **Reattività contestuale:** la frase segue eventi e luogo, non un timer cieco.
2. **Autorialità preservata:** il giocatore sceglie identità, limiti e canali.
3. **Silenzio significativo:** spesso l'azione giusta è non dire nulla.
4. **Coerenza del tono:** la voce interiore, il narratore, un mercante e un comandante non parlano allo stesso modo.
5. **Memoria selettiva:** si ricordano momenti importanti, non ogni click.
6. **Progressive disclosure:** semplice per i nuovi utenti, profondo per i roleplayer.
7. **Fruibilità offline:** codice e database vivono nell'installazione locale.
8. **Degradazione elegante:** un'API mancante disabilita un trigger, non l'intero addon.

# 4. Modalità e intensità

## 4.1 Esperienza completa modulare

La modalità raccomandata attiva componenti **indipendenti**:

| Modulo | Effetto | Stato iniziale |
|---|---|---|
| Character Soul | Personalità e voce del protagonista | On |
| Living World | Narrazione ambientale e luoghi | On |
| NPC Alive | Dialoghi ambientali simulati | On |
| Living Memory | Ricordi persistenti | On |
| Story Arcs | Micro-storie a stati | On (semplici) |
| Social RP | Inviti e scene condivise | Modulo On; partecipazione opt-in |
| Chat Gateway | Proposte di messaggi in chat | On; invio confermato |
| Total RP 3 Adapter | Metadati RP aggiuntivi | Auto, soltanto se presente |
| Audio | Suoni e voci locali | Off |

I preset **RPG personale**, **Mondo narrativo** e **Social RP** non sono esperienze mutuamente esclusive: sono combinazioni preconfigurate degli stessi moduli.

## 4.2 Intensità narrativa

**Intensità** modifica probabilità di intervento, budget per categoria e frequenza massima, **non** lunghezza delle frasi e **non** il loro stile. A 50/100 il sistema è bilanciato.

| Fascia | Esperienza desiderata | Esempio |
|---|---|---|
| 0 | Narratore silenziato; funzioni esplicite ancora accessibili | Solo dialoghi aperti manualmente |
| 10–20 | Molto discreta | Un pensiero in un luogo importante |
| 30–40 | Discreta | Rari commenti ambientali, evento speciale |
| 50–60 | Bilanciata | Alternanza di atmosfera, NPC, ricordi, intervalli di silenzio |
| 70–80 | Vivace | Maggiore probabilità di scene leggere |
| 90–100 | Intensa | Molti trigger candidati, sempre soggetti ad anti-spam |

**Valori iniziali proposti, da playtestare:** cooldown globale per interventi spontanei 45 s; storico anti-ripetizione 30 ID/varianti; priorità ai momenti importanti; pause durante combattimento impegnativo e schermate invasive; NPC aperti manualmente fuori dal cooldown globale. Non si promette un numero esatto di frasi per minuto.

## 4.3 Profondità stilistica (indipendente dall'intensità)

- **Naturale:** dialogo quotidiano, conciso, credibile.
- **Letterario [default]:** evocativo ma leggibile.
- **Elevato:** solenne e cerimoniale, da riservare a momenti adatti.

Esempio, ingresso nelle rovine:

- Naturale: «Queste mura sono qui da secoli. Chissà chi ci viveva.»
- Letterario: «Le pietre custodiscono ancora le tracce di chi chiamava questo luogo casa.»
- Elevato: «Caddero le torri e tacquero le voci, ma le pietre ancora vegliano sui giorni perduti.»

# 5. Direzione narrativa e ispirazione letteraria

La scrittura richiama **qualità generali** del fantasy epico e del tono eroico di Warcraft, senza imitare in modo puntuale la prosa di autori viventi né riprodurre testi protetti.

## 5.1 Tavolozza dei registri

| Registro | Vocabolario/ritmo | Situazioni |
|---|---|---|
| Antico e contemplativo | Memoria, natura, tempo, speranza, frasi ampie | Foreste, rovine, luoghi sacri |
| Epico ed eroico | Scelte nette, sacrificio, coraggio, frasi incisive | Vittorie, difesa, momenti cruciali |
| Tragico e oscuro | Perdita, prezzo, silenzio, immagini sobrie | Cimiteri, morte, zone corrotte |
| Intimo e riflessivo | Sensazioni personali, dubbi, rimpianti | Ricordi, ritorni, riposo |
| Quotidiano | Lessico semplice, concretezza | Locande, commercianti, villaggi |
| Ironico | Arguzia misurata, caratterizzazione | Alcuni NPC e personalità |
| Cerimoniale | Invocazioni e formule rituali originali | Benedizioni, voti, santuari |

## 5.2 Scelta automatica dello stile

`StyleResolver` assegna al contesto un insieme di registri eleggibili. I filtri combinano: evento, tag della zona, ruolo del parlante, temperamento del protagonista, profondità desiderata, arco narrativo e lingua. Se nessuna frase del registro preferito è disponibile, cade su una variante neutra coerente; non concatena automaticamente frammenti incompatibili.

**Esempio:** contro un non morto, una personalità misericordiosa preferisce tono solenne: «Un tempo anche tu contemplasti le stelle. Che la notte ti conceda infine riposo.»; una personalità risoluta preferisce: «Non lascerò che il tuo tormento travolga anche i vivi.»

## 5.3 Le quattro voci

1. **Narratore esterno:** descrive atmosfera; non attribuisce decisioni al personaggio.
2. **Voce interiore:** pensieri proposti, privati e opzionali, coerenti con il profilo.
3. **Voce pubblica del personaggio:** testi più brevi, sempre ispezionabili/modificabili quando serve.
4. **Voce NPC:** tono legato a ruolo e contesto; etichettata come contenuto simulato.

**Regola editoriale:** un venditore non declama come un antico re; un momento insignificante non diventa ogni volta un'apocalisse.

## 5.4 Regole di qualità testuale

- Testi originali e coerenti con l'ambientazione; niente citazioni riconoscibili copiate.
- Separare la lore verificata dall'invenzione atmosferica; evitare affermazioni false su eventi canonici.
- Variare struttura e lunghezza; non accumulare sempre «ombra», «destino», «sangue» e «antico».
- Frasi accessibili senza conoscenze enciclopediche, ma con ricompensa per chi conosce la lore.
- Nessuna decisione morale imposta da razza, fazione o classe.
- Ogni testo pubblico va valutato per rischio di spam e lunghezza del canale.
- Le varianti italiane e inglesi devono preservare *intento* e *registro*, non essere calchi meccanici.

# 6. Loop narrativo

1. **Evento rilevabile** → zona, interazione, progressione, azione volontaria.
2. **Normalizzazione** → tipo e dati disponibili, con provenienza.
3. **ContextResolver** → area, profilo, personalità, storia, vincoli di sicurezza.
4. **RuleEngine** → esclude candidati incompatibili.
5. **NarrativeDirector** → budget, cooldown, importanza, opportunità del silenzio.
6. **WeightedSelector** → varietà, pesi, non-ripetizione, scelta della variante.
7. **StyleResolver** → registro e lingua.
8. **OutputGateway** → narratore privato, finestra NPC, anteprima chat, scena sociale.
9. **MemoryWriter** → registra solamente l'esito significativo, ove consentito.

Una scena deve poter terminare senza frase se i dati sono insufficienti o il contesto è sbagliato.

# 7. Sistemi di gioco

## 7.1 Character Soul

**Scopo:** fare percepire il protagonista come individuo, non come sola combinazione di razza e classe.

**Input:** classe, razza, fazione, livello e altre informazioni accessibili; preferenze locali; dati pubblici del proprio profilo TRP3 se presenti e autorizzati.

**Tratti opt-in:** temperamento, morale, curiosità, fede, motivazione, registro, argomenti evitati, grado di ironia, voce interiore.

**Meccanica:** ogni frase reca tag di affinità; i tratti modificano l'eleggibilità e i pesi senza imporre esiti. Il giocatore può adottare un profilo neutro, un archetipo o una personalizzazione completa.

**Esempio:** stesso evento «ritorno in una città»: guerriero disilluso «Ogni strada conduce a casa, ma nessuna riporta indietro ciò che abbiamo perduto»; viaggiatore ottimista «Le sue porte sono ancora aperte. Talvolta basta questo per ritrovare coraggio».

**Criteri di accettazione:** funzionamento senza TRP3; cambio profilo immediato; nessuna frase che contraddica i tag esclusivi impostati; fallback neutro.

## 7.2 Living World

**Scopo:** valorizzare esplorazione, ritmo del viaggio e identità dei luoghi.

**Trigger candidati:** ingresso/cambio zona, scoperta dove verificabile, ritorno a un luogo, transizione città/natura, interazione manuale con punto di interesse. Eventuali dati su ora/meteo solo dopo verifica API.

**Database:** zone con ID validati, temi, atmosfera, livello di specificità, lore verificata e tag contestuali. Precedenza a regole specifiche e poi archetipi generici.

**Esempio:** nella foresta «Questi alberi hanno assistito a più addii di quanti i sentieri sappiano ricordare»; in una locanda «Il calore del fuoco attenua per un momento il peso del cammino».

**Anti-pattern:** descrivere pioggia senza un dato affidabile; affermare eventi attuali non osservati; ripetere il medesimo presagio ogni ingresso.

## 7.3 NPC Alive

**Scopo:** aggiungere brevi micro-dialoghi locali su NPC reali identificabili o su archetipi, senza alterare il dialogo server.

**Tipi:** NPC specifico verificato; archetipo (locandiere, mercante, guardia) solo con classificazione affidabile; nessun dialogo in caso di identità incerta.

**Interazione:** pulsante o comando su bersaglio/interazione valida; finestra separata; 1–3 risposte possibili; chiusura immediata; UI discreta. Il testo sarà chiaramente marcato **«dialogo ambientale dell'addon»**.

**Macchina a stati:** `idle -> offered -> opened -> choice -> response -> ended`; scelte locali possono modificare un flag narrativo, mai una quest ufficiale.

**Esempio:** locandiere: «Le strade sono tranquille solo per chi non le percorre.» Risposte: «Che cosa hai sentito?» / «Cerco riposo.» / «Arrivederci.»

**Limiti:** non simulare messaggi nella vera chat NPC, non creare missioni server, non sovrapporre UI a quest e commercio.

## 7.4 Living Memory

**Scopo:** continuità tra sessioni con ricordi selettivi.

**Tre livelli:** episodico della sessione, personale persistente, flag narrativo legato a scene/arcs.

**Campi:** ID evento, timestamp accessibile, zona, tipo, importanza, tag, origine, eventuale consenso alla condivisione. Evitare trascrizioni di whisper o dati altrui non necessari.

**Regole:** massimo iniziale di 500 ricordi ordinari per personaggio, compattazione dei meno significativi, ricordi contrassegnabili come permanenti, esportazione testuale manuale facoltativa, reset/migrazioni versionate.

**Recall:** solo quando un evento ricordato è reale e pertinente. «La tua ultima visita finì male» è ammissibile soltanto se esiste un ricordo corrispondente.

**Persistenza:** SavedVariables non garantiscono immediata scrittura su disco; tenere conto del ciclo di salvataggio client.

## 7.5 Story Arcs

**Scopo:** micro-storie personali, non quest server.

**Esempio:** «Il sentiero ritrovato» con stati `LOCKED`, `DISCOVERED`, `REFLECTED`, `RESOLVED`. Apertura con prima visita; avanzamento solo da eventi accessibili o scelta diretta; chiusura con ricordo persistente. Nessuna ricompensa di gioco o modifica a NPC reali.

**Regole:** 1–2 archi attivi per evitare sovraccarico; scene skippabili; niente false promesse di conseguenze server; possibilità di disattivarle.

## 7.6 Social RP

**Scopo:** agevolare RP collaborativo senza impersonare altri giocatori.

**Funzioni:** suggerimenti privati su un target, invito ad una micro-scena, accettazione/rifiuto, risposte predefinite modificabili, chiusura, lista blocchi, preferenze di privacy, supporto gruppo ove consentito.

**Consenso:** la presenza del modulo attivo *non* equivale ad accettazione delle scene o alla condivisione di profili, memoria o parole. L'invio di contenuti pubblici deve richiedere l'azione appropriata del giocatore.

**Trasporto:** solo addon messages in-game dove consentito dal client; versione del protocollo; messaggi compatti; throttling; timeout; gestione disconnessione; nessuna esecuzione di script da payload. La scoperta generalizzata di giocatori vicini e l'uso in istanza **non sono garantiti**: P4 condizionato a prove tecniche.

**Protocollo concettuale:** `HELLO`, `CAPABILITIES`, `SCENE_INVITE`, `SCENE_ACCEPT`, `SCENE_DECLINE`, `SCENE_ACTION`, `SCENE_END`. Non rappresenta API Blizzard.

## 7.7 Chat Gateway

**Scopo:** separare narrazione privata, testo suggerito e invio verso la chat.

**Modalità:** `PRIVATE`, `PREVIEW`, `CONFIRM_TO_SEND`, `AUTO_ONLY_IF_ALLOWED`.

**Policy:** niente invio automatico indiscriminato; applicare restrizioni di canale e contesto; mai aggirare i requisiti di input; proteggere dal flooding; editing della frase prima della pubblicazione; fallback a pannello privato.

**Nota:** chat pubblica «attiva» significa *funzione di proposta disponibile*, non pubblicazione automatica garantita.

## 7.8 Audio e presentazione cinematica (post-v1)

Ritratti, cornici, dissolvenze e suoni **inclusi localmente**. Qualsiasi riproduzione richiede test di API/formati/file e controllo volume. Evitare finestre che bloccano combattimento, movimento e interazione. Nessuna voce generata online.

# 8. Total RP 3: integrazione opzionale

**Stato primario:** l'addon funziona al 100% senza TRP3.

- **TRP3 non installato:** usa identità WoW accessibile e profilo Immersion Director.
- **TRP3 installato e compatibile:** propone di importare/leggere dati pubblici pertinenti dal proprio profilo; nessuna modifica ai dati TRP3 senza consenso.
- **TRP3 aggiornato, disattivato o API cambiate:** disabilita l'adattatore, conserva l'esperienza base.

**Priorità dei dati:** scelta esplicita in Immersion Director > metadati TRP3 consentiti > dati del gioco > valori neutri.

**Principio:** TRP3 descrive il personaggio; Immersion Director orchestra la sua esperienza narrativa. Non duplicare l'editor complesso dei profili TRP3 e non dipendere da API private non documentate.

# 9. Localizzazione e database narrativo

## 9.1 Modello

Le **regole** sono indipendenti dalle **varianti testuali**. Ogni `phraseId` esprime un'intenzione comune a tutte le lingue. Le singole varianti possono avere ritmo e lessico diversi purché mantengano lo stesso significato e contesto.

```lua
ID.Registry = {
  FOREST_RETURN_001 = {
    event = "ZONE_ENTER",
    category = "exploration",
    tags = { "forest", "repeat_visit", "reflective" },
    styles = { "literary", "ancient" },
    speaker = "INNER_VOICE",
    weight = 20,
    cooldownSeconds = 600,
    conditions = { repeatVisit = true },
  },
}

ID.Texts.itIT = {
  FOREST_RETURN_001 = {
    "Conosci questi sentieri; eppure, qualcosa nel loro silenzio è mutato.",
    "Gli alberi sono gli stessi, ma il ricordo del tuo ultimo passaggio è diverso.",
  },
}

ID.Texts.enUS = {
  FOREST_RETURN_001 = {
    "You know these paths, yet something in their silence has changed.",
    "The trees are the same, but the memory of your last passage is different.",
  },
}
```

Questi esempi sono *frammenti di progetto* e presuppongono un namespace inizializzato e un ordine di caricamento valido.

## 9.2 Contenuti iniziali

| Tappa | Intenzioni narrative | Lingue | Note |
|---|---:|---|---|
| Prototype 0.1 | 30–50 | IT+EN | Test motore, non promessa di grande varietà |
| Narrative Alpha | 300 | IT+EN | Almeno due varianti per le scene più comuni |
| Release 1.0 | 1.000 | IT+EN | Obiettivo editoriale da validare |
| Espansione | 3.000+ | IT+EN | Pacchetti locali installabili manualmente |

## 9.3 Regole anti-ripetizione

Memoria recente per `phraseId` e variante; cooldown globale, per categoria e per ID; pesi di novità; differenziazione dei registri; esclusione di frasi semanticamente equivalenti in sequenza; opzione di silenzio se nessun candidato valido.

## 9.4 Segnaposto

Consentire esclusivamente variabili approvate, con escape/validazione, ad esempio `{player}`, `{zone}`, `{target}` quando il dato è affidabile. Senza valore valido, usare una variante senza segnaposto. Non eseguire stringhe Lua contenute nel database.

## 9.5 Validatori editoriali

Controllare ID duplicati, lingue mancanti, placeholder discordanti, condizioni sconosciute, varianti vuote, lunghezze massime per output, riferimenti lore non verificati, ortografia e registro del parlante.

# 10. Narrative Director e algoritmo di selezione

Per ogni evento, il direttore costruisce una lista di candidati con filtri rigidi:

1. evento e categoria compatibili;
2. informazioni necessarie presenti e non segrete;
3. regole di profilo soddisfatte;
4. UI/canale disponibile;
5. cooldown e budget rispettati;
6. policy privacy e consenso soddisfatte.

Solo allora calcola un peso indicativo:

\[
W_i = B_i \times C_i \times P_i \times N_i \times S_i
\]

Dove `B` = peso base, `C` = attinenza al contesto, `P` = affinità caratteriale, `N` = novità, `S` = affinità di registro. Il peso è zero per condizioni non soddisfatte. L'intensità agisce soprattutto sul **gate di opportunità** e sul **budget di pacing**, non forzando tutte le probabilità allo stesso livello.

**Priorità degli interventi:** scelta esplicita > dialogo volontario > evento narrativo eccezionale > richiamo di memoria > atmosfera ordinaria. Un evento non può causare cascata di 10 messaggi.

# 11. Architettura Lua

## 11.1 Struttura proposta

```text
ImmersionDirector/
├── ImmersionDirector_Forever.toc
├── Core/
│   ├── Bootstrap.lua
│   ├── Compat.lua
│   ├── Config.lua
│   ├── EventBus.lua
│   ├── ContextResolver.lua
│   └── Diagnostics.lua
├── Engine/
│   ├── NarrativeDirector.lua
│   ├── RuleEngine.lua
│   ├── WeightedSelector.lua
│   ├── Pacing.lua
│   ├── StyleResolver.lua
│   ├── SceneManager.lua
│   └── TemplateRenderer.lua
├── Systems/
│   ├── Personality.lua
│   ├── LivingWorld.lua
│   ├── NPCAlive.lua
│   ├── LivingMemory.lua
│   └── StoryArcs.lua
├── Integration/
│   ├── TotalRP3.lua
│   ├── SocialProtocol.lua
│   └── ChatGateway.lua
├── UI/
│   ├── NarratorFrame.lua
│   ├── DialogueFrame.lua
│   ├── JournalFrame.lua
│   ├── SettingsFrame.lua
│   └── DiagnosticsFrame.lua
├── Data/
│   ├── Registry.lua
│   ├── Rules.lua
│   ├── Zones.lua
│   ├── NPCs.lua
│   ├── itIT/
│   │   ├── Interface.lua
│   │   ├── Exploration.lua
│   │   ├── NPC.lua
│   │   └── Social.lua
│   └── enUS/
│       ├── Interface.lua
│       ├── Exploration.lua
│       ├── NPC.lua
│       └── Social.lua
└── Tests/
    ├── TestDirector.lua
    ├── TestLocalization.lua
    ├── TestSelector.lua
    └── MockWoWAPI.lua
```

`Tests/` è destinata ai test fuori dal client e non necessariamente inclusa nel pacchetto distribuibile. La variante `.toc` definitiva e i metadata si verificano sul client installato.

## 11.2 Responsabilità e contratti

| Componente | Responsabilità | Uscita |
|---|---|---|
| Compat | Capability checks, wrapper su API Forever | Dati accessibili o `unavailable` |
| EventBus | Eventi normalizzati e deduplicati | Event payload |
| ContextResolver | Contesto minimo affidabile | NarrativeContext |
| RuleEngine | Condizioni dichiarative | Candidati validi |
| NarrativeDirector | Budget, opportunità e priorità | Decisione mostra/non mostra |
| StyleResolver | Registro, speaker e profondità | StyleContext |
| WeightedSelector | Scelta pesata e varietà | Phrase ID + variante |
| SceneManager | Stati e dialoghi | SceneState |
| LivingMemory | Persistenza e richiamo | Memory entries |
| ChatGateway | Anteprima e invio autorizzato | Output channel |
| SocialProtocol | Inviti e protocollo fra utenti | Scene messages |

## 11.3 Event envelope

```lua
local event = {
  type = "ZONE_ENTER",
  timestamp = 0,
  source = "WOW_API",
  context = {
    zoneID = 0, -- illustrativo
    repeatVisit = true,
  },
}
```

Per ciascun campo: `available`, `missing`, `restricted`. Non usare dati *secret* come booleani o condizioni; il livello `Compat` deve impedire chiamate non consentite. Gli eventi non supportati devono essere registrati in modo difensivo perché in alcuni client la registrazione di eventi inesistenti solleva un errore.

## 11.4 Configurazione iniziale

```lua
local defaults = {
  locale = "itIT",
  preset = "complete",
  intensity = 50,
  proseDepth = "literary",
  modules = {
    personal = true, world = true, npc = true,
    memory = true, storyArcs = true, social = true,
    publicChat = true, totalRP3 = true, audio = false,
  },
  output = {
    privateNarrator = true,
    npcDialogues = true,
    publicChatPreview = true,
    autoPublicSay = false,
  },
  privacy = {
    socialOptIn = false,
    shareMemories = false,
    acceptSceneInvites = false,
  },
  pacing = {
    globalCooldownSeconds = 45,
    recentPhraseWindow = 30,
    suppressInHighDemand = true,
  },
}
```

La configurazione deve essere sottoposta a validazione, migrazione di schema e merge ricorsivo con preferenze salvate, senza azzeramenti indesiderati.

## 11.5 SavedVariables

```lua
-- Globali
ImmersionDirectorDB = {
  schemaVersion = 1,
  -- settings, moduli, lingua, preferenze globali
}

-- Per personaggio
ImmersionDirectorCharacterDB = {
  personality = {},
  memories = {},
  arcs = {},
  history = {},
}
```

Dimensioni massime e pulizia programmata dei ricordi; nessun salvataggio indiscriminato della chat. Identificativi di personaggio memorizzati solo quando necessari e con politica esplicita.

# 12. Interfaccia utente e UX

## 12.1 Primo avvio (wizard facoltativo)

1. Scelta lingua IT/EN (indipendente dalla lingua client).
2. Scelta preset: Completo, Personale, Mondo, Social (modificabile dopo).
3. Intensità con esempi chiari; 50 suggerito.
4. Scelta profondità: Naturale, Letterario, Elevato.
5. Abilitazione moduli; spiegazione del consenso social.
6. Se TRP3 rilevato, presentare integrazione opzionale.
7. Test narratore privato con frase di prova.

## 12.2 UI principali

- **Narrator Overlay:** piccola area configurabile, non bloccante, con durata automatica e cronologia recente.
- **Dialogue Frame:** ritratto/ruolo, testo e opzioni; etichetta «simulazione locale».
- **Journal:** ricordi, luoghi, archi, flag salvati, cancellazione selettiva.
- **Settings:** lingua, intensità, profondità, moduli, filtri, privacy, chat, accessibilità.
- **Diagnostics:** capability checks, ultimi eventi, errori gestiti, fallback attivi.

**Comandi suggeriti:** `/id`, `/id config`, `/id journal`, `/id pause`, `/id debug` (verificare conflitti comandi). Non sovrascrivere `/rp` utilizzato da altri addon senza scelta esplicita.

## 12.3 Accessibilità e controllo

Testo ridimensionabile, regolazione opacità/durata, scorciatoia per pausa immediata, disattivazione degli effetti audiovisivi, modalità solo-didascalie, possibilità di escludere eventi/zone/categorie, riduzione notifiche in combattimento e istanza.

# 13. Fattibilità tecnica e vincoli Forever

**Quadro di riferimento:** `16001` con API di famiglia Mainline/Camelot; namespace moderni `C_*`; non assumere equivalenza piena con Classic né con Retail standard. Le fonti comunitarie documentano limitazioni ai dati di combattimento, al combat log e in alcuni contesti ai messaggi addon. Queste informazioni sono **punto di partenza**, non sostituiscono il collaudo locale della build 1.60.1.70658.

| Funzionalità | Stima | Verifica richiesta |
|---|---|---|
| UI e finestre Lua | Alta | Frame, template, input |
| Database IT/EN locale | Alta | Caricamento e memoria |
| Direttore e selezione pesata | Alta | Test unitari |
| SavedVariables | Alta | Logout/reload e migrazioni |
| Zona e personaggio | Alta/condizionata | Disponibilità dei singoli campi |
| Level-up e stato morte | Da verificare | Nomi/eventi in build target |
| NPC selezionato e gossip | Da verificare | Identificatori e accesso affidabile |
| Trigger su critici/danni/combat log | Non affidabili come base | Restrizioni secret values |
| TRP3 | Dipende dalle versioni | API pubbliche reali |
| Chat `/say`/`/yell` | Limitata | Richiesta di input, canali, contesti |
| Social tramite addon message | Condizionata | Trasporto, istanza, destinatario |
| Scoperta generica dei player vicini | Non garantita | Escluderla dalla v1 se non dimostrata |
| Audio e ritratti | Opzionale | Formati, API, performance |
| Alterazione vera IA/quest server | Impossibile via addon | Fuori scope |

## 13.1 Spike tecnici obbligatori

- **SP-01:** load del `.toc`, API `GetBuildInfo`, stampa di diagnostica senza errori.
- **SP-02:** prova eventi zona, livello, morte e target; segnare `AVAILABLE/MISSING/RESTRICTED`.
- **SP-03:** prototipo finestre narratore e NPC, test con UI base e TRP3 installato/non installato.
- **SP-04:** SavedVariables per personaggio e ricaricamento.
- **SP-05:** prova sicura invio chat solo per input volontario e canali consentiti.
- **SP-06:** prova protocollo addon con due client, gruppo/istanza, timeout, rifiuto e disconnessione.
- **SP-07:** profiling memoria, CPU, frequenza eventi, tempi di risposta.

# 14. Sicurezza, privacy e fair play

- Nessuna chiamata HTTPS, socket, download, browser, telemetria o account esterno.
- Solo file locali Lua, texture/audio locali ed eventuale messaggistica addon interna a WoW.
- Nessun codice ricevuto da un altro giocatore viene eseguito (`loadstring`, `eval` o equivalenti proibiti).
- Payload social con schema, limiti dimensione, throttling e lista tipi consentiti.
- Consenso sociale disattivato fino a opt-in, anche se il modulo è installato e attivo.
- Memorie personali non condivise senza richiesta esplicita.
- Il pulsante pausa interrompe immediatamente la presentazione di nuove frasi.
- Nessun tentativo di aggirare protected functions, secure actions o restriction engine.
- Distinguere chiaramente i contenuti narrativi originali dai dialoghi reali Blizzard.

# 15. Performance e affidabilità

## 15.1 Principi

- Event-driven, evitare polling per-frame non necessario.
- Pre-indicizzare frasi per categoria/evento; non scandire tutto il database ad ogni trigger.
- Caricare inizialmente soltanto la lingua selezionata **se** il packaging WoW lo consente in modo affidabile; altrimenti caricare entrambe e misurare la memoria.
- Limite per eventi in coda e deduplicazione; drop sicuro di eventi obsoleti.
- Error boundaries per moduli; diagnostica opzionale non rumorosa.
- Nessuna decisione narrativa in dipendenza da valori segreti.

## 15.2 Budget e indicatori (target, non misure)

- Zero errori Lua critici nei test di sessione.
- Nessun duplicato ravvicinato nella finestra anti-ripetizione impostata.
- <2% frasi giudicate fuori contesto nel campione editoriale testato.
- <10% degli interventi giudicati invadenti dai tester.
- Riduzione dei messaggi durante attività impegnative.
- Profiling CPU/memoria prima della release; valori numerici definiti dopo i primi benchmark reali.

# 16. Test e qualità

## 16.1 Test automatici fuori gioco

- Selector: distribuzione pesata, esclusione per cooldown, fallback, seme RNG controllato.
- Locale: copertura ID IT/EN, varianti e placeholder, codifica UTF-8.
- Regole: prerequisiti, priorità, nessuna selezione con contesto insufficiente.
- Scene: percorsi leciti, reset, scadenza, abort.
- SavedVariables: migrazioni, dati corrotti, limite memoria.
- Social: payload malevoli, versioni diverse, duplicati, timeout, consenso.

## 16.2 Test nel gioco

Matrice: con/senza TRP3; IT/EN; nuovi personaggi e veterani; solo e gruppo; mondo aperto e istanza; combattimento e riposo; UI ridimensionata; reload e logout; client aggiornato; modalità con narratore disattivato. Nessuna funzionalità della v1 richiede scanner di prossimità non verificato.

## 16.3 Playtest di immersione

Sessioni cieche A/B con e senza addon per tre profili di utenti (solo, TRP3, non-RP). Misurare: immersione percepita (scala 1–5), senso di continuità, frequenza delle interruzioni, coerenza delle frasi, desiderio di usare nuovamente l'addon, numero di disattivazioni manuali.

# 17. Roadmap e priorità

| Fase | Nome | Scopo | Uscita verificabile |
|---|---|---|---|
| P0 / v0.1 | Technical Prototype | Compatibilità Forever, UI, Config, event bus, 30–50 intenzioni bilingui | Addon carica; pensa in zona; cambia lingua; nessun errore critico |
| P1 / v0.2 | Narrative Alpha | Character Soul, World, selezione, cooldown, memoria | Una sessione solo presenta frasi coerenti e ricordi validi |
| P2 / v0.3 | Living NPC | Registry, dialoghi locali, scelte volontarie | Interazione NPC senza interferire col gossip Blizzard |
| P2 / v0.4 | RP Integration | Adattatore TRP3 opzionale | Base identica con o senza TRP3; extra solo se disponibile |
| P3 / v0.45 | Personal Stories | Scene a stati, diario evoluto | Arco completo salvato/ripreso dopo logout |
| P4 / v0.5 | Social Beta | Inviti, consenso, protocollo | Due utenti scambiano una scena in contesto supportato |
| P5 / v1.0 | Release & Polish | UI, contenuti, QA, accessibilità, tuning | Pacchetto stabile, IT/EN completi, documentazione |
| P6 / futuro | Expansion | Audio, più NPC/scene/lingue, editor pacchetti | Solo dopo stabilità e playtest |

**Ordine critico:** verificare prima il client, poi valore narrativo, poi dialoghi NPC, poi integrazioni e social. Il rischio più grande è costruire troppe funzionalità prima di validare il ritmo e la coerenza delle frasi.

# 18. Rischi e mitigazioni

| Rischio | Impatto | Mitigazione |
|---|---|---|
| API mutate o secret values | Alto | Compat + capability matrix + fallback |
| Spam narrativo | Alto | Pacing, silenzio, preferenze per categoria |
| Frasi incoerenti con lore o situazione | Alto | Review editoriale, tag e fonti |
| Doppiaggio/effetti invadenti | Medio | Off default, audio locale e controllo |
| Scrittura troppo ampollosa | Alto | Quattro voci, registri e profondità indipendenti |
| Social RP abusivo | Alto | Opt-in, blocco, rate limit, nessuna impersonificazione |
| TRP3 assente/incompatibile | Medio | Adapter opzionale, profilo interno |
| Crescita SavedVariables | Medio | Cap, compattazione e reset |
| Troppe traduzioni manuali | Medio | ID, tooling e QA bilingue |
| Scope creep | Alto | Milestone con exit criteria misurabili |

# 19. Definition of Done per v1.0

- [ ] Installazione su Forever target senza modificare il client.
- [ ] Nessuna dipendenza obbligatoria da TRP3.
- [ ] Italiano e inglese selezionabili dall'utente; UI e narrativa localizzate.
- [ ] Profilo completo modulare funzionante con intensità 50 e profondità letteraria.
- [ ] Motore di selezione non banale, cooldown e anti-ripetizione testati.
- [ ] Narratore privato, Character Soul, Living World e Memory affidabili.
- [ ] NPC Alive usabile e marcato come simulazione locale.
- [ ] Story arcs semplici persistenti.
- [ ] Integrazione TRP3 testata o disabilitata elegantemente nelle versioni non compatibili.
- [ ] Social RP rilasciato solo dove il trasporto è dimostrato; consenso esplicito.
- [ ] Chat pubblica sotto controllo del giocatore e conforme alle restrizioni.
- [ ] Contenuti originali IT/EN revisionati e validator senza errori.
- [ ] Nessuna funzione di Internet esterno o codice scaricato.
- [ ] Profiling e playtest superati con metriche pubblicate.
- [ ] Manuale installazione, comandi, privacy e troubleshooting.

# 20. Open questions da risolvere con prototipo, non con supposizioni

1. Eventi e callback esatti accessibili nella build 1.60.1.70658 per zona, progressione, target e interazione.
2. Identificativi NPC sufficientemente stabili e pubblici per collegare contenuti specifici.
3. Impatto esatto delle restrizioni dei secret values sul context resolver.
4. Compatibilità dell'installazione TRP3 effettivamente disponibile e API pubbliche utilizzabili.
5. Trasporto social consentito fra due client in mondo aperto, gruppi, istanze e su layer differenti.
6. Modalità chat consentite nei diversi contesti e come realizzare il percorso di conferma UI.
7. Budget memoria effettivo dei database narrativi caricati.
8. Scelta editoriale di 10–20 zone/NPC pilota per il vertical slice.

# 21. Vertical slice raccomandato

La prima dimostrazione convincente deve coprire **tre micro-esperienze**:

**A. Arrivo nella foresta** — rilevamento zona → scelta frase IT/EN coerente con tono e personalità → narratore privato → cooldown.

**B. Dialogo al locandiere** — NPC riconoscibile o NPC test controllato → pulsante dialogo → due scelte → battuta locale → chiusura senza interferire con WoW.

**C. Ritorno nella foresta** — SavedVariables hanno memorizzato la prima visita → nuovo ingresso → frase di ricordo originale → journal aggiornato.

Se queste esperienze sono convincenti con l'intensità 50, le fondamenta del prodotto sono valide. L'espansione social segue dopo, non prima.

# 22. Riferimenti tecnici da verificare durante lo sviluppo

- WoW Forever API, snapshot client / build 70170: https://atraeau.github.io/WoW-Addons/
- Forever addon kit, test comunitari: https://github.com/Thunderz96/forever-addon-kit
- Delta UI/API Forever: https://github.com/Osso/wow-ui-sim/blob/master/docs/wowforever-1.60.1-ui-api-deltas.md
- ForeverMeta, guida addon e Interface (fonte comunitaria): https://forevermeta.me/it/guides/wow-forever-addons-interface
- Total RP 3, progetto e documentazione: https://github.com/Total-RP/Total-RP-3

Le fonti comunitarie possono riferirsi a snapshot precedenti alla build target: la fonte finale per l'esistenza e la sicurezza di ciascuna API resta il client effettivamente installato.

---

## Manifesto finale

**Immersion Director non serve a far parlare Azeroth in continuazione. Serve a dare presenza, memoria e significato al viaggio del personaggio.** La qualità non sarà misurata dal numero di messaggi, ma dalla frequenza con cui il giocatore sentirà che una frase, un incontro o un ricordo appartengono davvero alla sua storia.
