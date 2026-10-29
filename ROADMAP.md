# Azeroth Unspoken: roadmap di sviluppo

**Nome:** Azeroth Unspoken
**Motto:** *An immersive roleplay companion for World of Warcraft*
**Descrizione breve:** Un compagno narrativo immersivo per World of Warcraft, distintivo e misterioso, che richiama i pensieri e le storie non espresse.

La specifica di riferimento è [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md).
Al posto di "Immersion Director", il prodotto si chiama **Azeroth Unspoken**.
Dove il GDD e questo file non coincidono, vale questo file.

## Stato di partenza (prima dello step S1)

- Il prototipo funzionante si chiamava `VociDiAzeroth/`, ora archiviato in `archive/VociDiAzeroth/` (motore e database separati, 374 frasi IT/EN).
  - Motore: `Core.lua`, `Engine.lua`, `Context.lua`, `Events.lua`, `UI.lua`.
  - Dati: `Data/*.lua`. Formato descritto in `archive/VociDiAzeroth/FORMATO_PACCHETTI.md`.
  - Pacchetto di esempio: `archive/VociDiAzeroth_Esempio/`.
  - Già presenti:
    - selezione pesata con specificità, usi e tono;
    - esclusione obbligatoria delle frasi recenti;
    - memoria salvata tra le sessioni;
    - condizioni dichiarative, con `not`, `any` e `func`;
    - segnaposto `{target}` `{player}` `{spell}` `{zone}`, genere `{g:m|f}`, vocabolario e cornici;
    - lingua scelta dall'utente;
    - comandi `/voci`, pannello delle impostazioni, pulsante e tasto "pronuncia".
- `Data/Classes.lua` (ora in `AzerothUnspoken/Data/`): 54 frasi di classe già scritte, **non ancora nel `.toc`** e non testate. Vanno riusate nello step S3/S7.
- I test fuori dal gioco usano lupa, cioè Lua 5.1 come WoW:
  - file: `Tests/run_tests.py` e `Tests/MockWoWAPI.lua`;
  - venv locale nella radice del progetto, fuori dal controllo di versione: `python -m venv .venv`, poi `.venv\Scripts\pip install lupa`;
  - comando, dalla radice del progetto: `.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`. Senza argomento si usa `AzerothUnspoken`.
- Client target:
  - `E:\Blizzard\World of Warcraft\_forever_` (build 1.60.1.70658, `## Interface: 16001`, client in inglese, `WOW_PROJECT_ID == WOW_PROJECT_CAMELOT`);
  - addon installati in `...\_forever_\Interface\AddOns`. Lì ci sono già `totalRP3`, `Details` e `QuestIT`, utili come riferimento per le API.
- Le cartelle `SpeakinSpell*` sono l'addon originale per retail. Servivano solo come riferimento e non entrano nel repository.

## Decisioni già prese

1. Il motore e il database narrativo restano separati.
   - Il database contiene frasi intere e curate, mai frammenti combinati a caso.
   - È multilingua (IT ed EN, espandibile) e la lingua si sceglie nelle impostazioni, indipendentemente dal client.
2. Tutto funziona offline: nessuna rete, API esterna o IA. Si espande con pacchetti locali.
3. **Nessuna pubblicazione automatica** in chat pubblica come comportamento predefinito: si usano il narratore privato e il Chat Gateway (§7.7 del GDD). Le emote automatiche del prototipo si trasformano in proposte.
4. Si rispettano le protezioni del client:
   - /say e /yell solo dopo un'azione del giocatore;
   - nessuna decisione basata su valori segreti;
   - ogni evento si registra in modo difensivo.
5. Total RP 3 è facoltativo: l'addon funziona al 100% anche senza.
6. Stile letterario originale, nello spirito del fantasy epico e del tono di Warcraft, senza citazioni copiate. Registri e "quattro voci" come nel §5 del GDD.
7. Gli step si eseguono **uno alla volta**, ognuno in una sessione separata, perché toccano gli stessi file.
8. Il progetto vive nel repository git `E:/repository/azeroth-unspoken` (remote `https://github.com/Finland6738/azeroth-unspoken`, `gh` autenticato).
   L'utente ha autorizzato commit, push e merge **automatici**, senza chiedere conferma: il PC non è presidiato.

## Regole per ogni sessione di step

### Flusso git (obbligatorio, automatico)

1. Ogni step lavora sul proprio branch (`step/sN-nome`), partito da `main` aggiornato.
2. Commit piccoli e leggibili durante il lavoro, con messaggi in italiano.
3. Alla fine, con i test superati:
   - `git push -u origin <branch>`;
   - `gh pr create --base main`, con titolo e descrizione che riassumono lo step e ciò che non è stato verificato;
   - `gh pr merge --squash --delete-branch`, senza chiedere conferma.
4. Dopo il merge, aggiornare l'installazione in `AddOns` con i file di `main`.
5. Mai `--force` su `main`, mai riscrivere la storia già pubblicata, mai saltare gli hook.
6. Se il merge fallisce per conflitti: allineare il branch a `main`, risolvere, ripetere i test e poi fare il merge.
   Se non si riesce, lasciare la PR aperta e spiegare il problema nel resoconto.

### Lavoro


- Leggere questo file e le sezioni del GDD indicate nello step.
- Lavorare solo sullo step assegnato e lasciare il resto in condizioni funzionanti.
- Alla fine:
  1. far passare i test fuori dal gioco, aggiungendo test per ciò che si è costruito;
  2. aggiornare l'installazione in `AddOns`;
  3. aggiornare in questo file la riga di stato dello step e le note per lo step successivo;
  4. riportare con onestà ciò che non è stato verificato, in particolare tutto ciò che richiede il client vero.
- Ambiente dell'utente: JetBrains WebStorm con i plugin **EmmyLua** e **WoW Lua Language Server**.
  - Annotare con EmmyLua (`---@class`, `---@field`, `---@param`, `---@return`) le API pubbliche, i moduli e le strutture dati (contesto, frase, configurazione, relazione), così l'IDE completa e controlla i tipi.
  - Ogni nuova variabile globale dell'addon (SavedVariables, `SLASH_*`, `BINDING_*`, funzioni dei tasti) va aggiunta a `diagnostics.globals` in `.luarc.json`.
  - Le API di WoW sono fornite dal plugin: non duplicarle nel progetto.
- Riferimenti tecnici: [docs/RIFERIMENTI.md](docs/RIFERIMENTI.md).
  - Il dump delle API di Forever (build 70170) è in `E:/repository/WoW-Addons/docs/api.json`, con le definizioni in `types/WowForeverAPI.lua`, collegate da `.luarc.json`.
  - Prima di usare una funzione o un evento nuovo, controllarlo lì e poi proteggerlo con Compat.
  - Non copiare file di quel repository nel nostro: non ha una licenza dichiarata.
  - Se manca la copia locale: `git clone --depth 1 https://github.com/Atraeau/WoW-Addons E:/repository/WoW-Addons`.
- Non usare `%s`, `%l`, `%a` o `%w` nei pattern Lua applicati a testo UTF-8: con alcune impostazioni locali spezzano le lettere accentate. Usare classi esplicite.

## Milestone e step

| Step | Milestone | Contenuto | Modello / effort | Stato |
|---|---|---|---|---|
| S1 | M0 Fondamenta (v0.1) | Rinomina, architettura del GDD, Compat, diagnostica | Opus · high | fatto il 2026-10-28 (test fuori gioco superati; client vero non provato) |
| S2 | M0 | Narratore privato, Chat Gateway, impostazioni, wizard | Sonnet · high | fatto il 2026-10-29 (test fuori gioco superati; client vero non provato) |
| ✋ G1 | M0 | **Prova in gioco dell'utente**: spike SP-01…SP-05, con `docs/G1_checklist.md` | utente | **rimandata**: l'utente non è disponibile e ha chiesto di proseguire in autonomia (2026-10-29). Da fare al suo ritorno, insieme a G2 |
| S3 | M1 Narrative Alpha (v0.2) | Schema dati v2, migrazione delle frasi, validatore | Sonnet · high | fatto il 2026-10-29 (test fuori gioco superati; client vero non provato) |
| S4 | M1 | Narrative Director: intensità, pacing, priorità, silenzio, StyleResolver | Opus · medium | fatto il 2026-10-29 (test fuori gioco superati; client vero non provato) |
| S5 | M1 | Character Soul (personalità) e adattatore Total RP 3 | Sonnet · high | fatto il 2026-10-29 (test fuori gioco superati; client vero e TRP3 vero non provati) |
| S6 | M1 | Living Memory e Diario | Sonnet · high | da fare |
| S6b | M1 | Relazioni e affinità: NPC automatici, persone incontrate, influenza sul narratore | Sonnet · high | da fare |
| S6c | M1 | Interlocutore (personalità, azioni, razza, classe, obiettivi, ruolo) e luogo (regione, territorio, dungeon/raid/BG/arena) | Opus · medium | da fare |
| S7 | M1 | Contenuti Alpha: 300 intenzioni, almeno 2 varianti | Opus · high | da fare |
| ✋ G2 | M1 | **Prova in gioco**: vertical slice A (arrivo nella foresta) e C (ritorno) | utente | da fare |
| S8 | M2 Living NPC (v0.3) | NPC Alive: finestra di dialogo, stati, registro NPC, archetipi | Sonnet · high | da fare |
| ✋ G3 | M2 | **Prova in gioco**: vertical slice B (locandiere) | utente | da fare |
| S9 | M3 Personal Stories (v0.45) | Story Arcs a stati e diario evoluto | Sonnet · high | da fare |
| S10 | M4 Social Beta (v0.5) | Social RP: protocollo addon, consenso, sicurezza | Opus · high | da fare |
| ✋ G4 | M4 | **Prova con due client** (SP-06) | utente | da fare |
| S11 | M5 Release (v1.0) | Contenuti fino a 1.000 intenzioni (anche in più sessioni) | Opus · high | da fare |
| S12 | M5 | Rifinitura: accessibilità, profiling, manuale, privacy, troubleshooting, DoD | Sonnet · medium | da fare |

### Prove in gioco rimandate

Per decisione dell'utente (2026-10-29) lo sviluppo prosegue senza aspettare G1. Di conseguenza:
- ogni funzione nuova che dipende da un'API non ancora provata nel client va protetta da Compat e deve degradare con eleganza (GDD §3.8);
- `docs/G1_checklist.md` va aggiornata dagli step che aggiungono comportamenti da verificare in gioco;
- i problemi trovati in gioco diventeranno issue con l'etichetta `in-game`.

### Attività trasversali

| Attività | Contenuto | Modello / effort | Stato |
|---|---|---|---|
| D1 | Documentazione: README professionale, ADR in `docs/adr/`, architettura, guida ai pacchetti, CONTRIBUTING, CHANGELOG, valutazione della wiki GitHub | Sonnet · high | fatto il 2026-10-29 (README it/en, 14 ADR, architettura, CONTRIBUTING, CHANGELOG, `docs/README.md`; wiki: non si usa per ora, ADR 0013; licenza da scegliere, issue #2; la guida ai pacchetti di S3 va solo collegata) |
| Q1 | Revisione del codice e della documentazione: bug e miglioramenti aperti come issue GitHub, senza modificare il codice | Opus · medium | da fare |
| Qn | Correzione delle issue `bug` più importanti, una sessione per gruppo di issue collegate, tra uno step e l'altro | Sonnet · high | ricorrente. Q2 fatto: #3, #4, #5, #6, #8, #11, #12, #14, #17, #19 (2026-10-29; test fuori gioco superati; da provare in gioco: G1 passi 20–26) |

### Issue GitHub

- Etichette: `bug`, `enhancement`, `docs`, `in-game` (da verificare nel client), `content` (frasi), `good first issue`, `priority:high|medium|low`.
- Ogni issue riporta il file e la riga, oppure la funzione, il comportamento atteso e quello osservato, e come riprodurlo (test fuori gioco o passi in gioco).
- Gli step e le correzioni che risolvono un'issue la chiudono dalla PR (`Closes #N`). Una sessione che trova un problema fuori dal proprio step apre un'issue invece di allargare lo step.

### S1: rinomina e architettura (GDD §3, §11, §13, §14, §15)
- Creare `AzerothUnspoken/` con la struttura `Core/ Engine/ Systems/ Integration/ UI/ Data/` del §11.1, adattata: `Tests/` resta alla radice del progetto, fuori dal pacchetto.
  - Portare lì il motore e il database del prototipo senza perdere funzioni.
- `.toc`:
  - titolo "Azeroth Unspoken" e il motto in `## Notes`;
  - Interface 16001;
  - SavedVariables `AzerothUnspokenDB` (globali) e `AzerothUnspokenCharacterDB` (per personaggio), con `schemaVersion` e una funzione di migrazione;
  - non serve migrare i dati di `VociDiAzerothDB`: il prototipo non è mai stato usato in gioco.
- Comandi `/unspoken` e `/au`: verificare che non vadano in conflitto con gli addon installati.
- `Core/Compat.lua`:
  - controlli di disponibilità con stato `AVAILABLE`/`MISSING`/`RESTRICTED`;
  - registrazione degli eventi protetta;
  - wrapper per i valori segreti;
  - `GetBuildInfo`.
- `Core/EventBus.lua`: eventi normalizzati e deduplicati, nel formato envelope del §11.3.
- `Core/Config.lua`:
  - valori predefiniti del §11.4 (intensità 50, profondità `literary`, moduli, privacy, pacing);
  - merge ricorsivo e validazione.
- `Core/Diagnostics.lua` e `/au debug`: matrice delle capacità, ultimi eventi, errori intercettati. Questo serve allo spike SP-01/SP-02.
- Per i controlli sulle API si possono usare le fonti del §22 del GDD, verificate dove possibile sui file degli addon installati.
- Rimuovere `VociDiAzeroth` e `VociDiAzeroth_Esempio` da `AddOns` e installare `AzerothUnspoken`.
  - Il pacchetto di esempio diventa `AzerothUnspoken_Example`.
  - Le cartelle sorgente del prototipo restano nel progetto come archivio.
- **Fatto quando:** l'addon nuovo ha tutte le funzioni del prototipo, i test passano adattati ai nuovi percorsi, `/au debug` produce una matrice delle capacità e questo file è aggiornato.

#### Esito di S1 e note per S2
- **Dove sta il codice** (`AzerothUnspoken/`, ordine di caricamento nel `.toc`):
  - `Core/Bootstrap.lua`: spazio dei nomi `NS` (globale `AzerothUnspoken`), lingue, `NS:L`, `NS:Print`, `NS:RegisterModule(nome)`. Su `ADDON_LOADED` chiama in ordine `Config:Load`, `Compat:Probe`, `EventBus:Start` e poi `OnInit` di ogni modulo, isolato da `Diagnostics:Guard`.
  - `Core/Compat.lua`: stati `AVAILABLE`/`MISSING`/`RESTRICTED` in `Compat.caps`; `Compat.Query(fn, ...)` (stato più valori, i segreti diventano nil), `SafeCall`, `IsSecret`, `Readable`; `RegisterEvent(frame, evento, unit)` con `C_EventUtils.IsEventValid` e `pcall`; `GetBuildInfo` (riconosce `WOW_PROJECT_CAMELOT`); `IsRestricted(kind)` su `C_RestrictedActions`; `IsUnitIdentitySecret(unit)` su `C_Secrets`; `GetChatSender`, `InChatLockdown`, `GetSpellName`. Queste API compaiono nel codice di Details (`Details_Camelot.toc`) e di TRP3 installati, ma nessuna è stata provata nel client.
  - `Core/Diagnostics.lua`: `Guard`, `Error` (al massimo 30, raggruppati), `Report`, `CapabilityMatrix`. Comandi: `/au debug`, `/au debug full` (una riga per capacità, con il dettaglio) e `/au debug trace` (stampa ogni evento normalizzato, solo per la sessione).
  - `Core/Config.lua`: predefiniti del §11.4 più quelli del prototipo, `Merge`, `Validate` (tipi, elenchi, limiti), `Migrate` per `schemaVersion` (`Config.SCHEMA_VERSION = 1`, `Config.migrations.global/character[n]`), `Get/Set` per percorso. `NS.db` = `AzerothUnspokenDB.settings` (account), `NS.cdb` = `AzerothUnspokenCharacterDB` (memoria delle frasi, più `personality`, `memories`, `arcs`, `history` vuoti per S5–S9).
  - `Core/EventBus.lua`: `Publish(tipo, contesto, {key, expect, fields, source})` crea l'envelope `{type, timestamp, source, context, fields}`. Deduplica per tipo e chiave, con `dedupWindow` (1 s predefinito, finestre proprie per alcuni tipi). Ha una coda di 32 eventi per le pubblicazioni annidate e scarta quelli più vecchi di 5 s. Ci si abbona con `Subscribe(tipo o "*", owner, fn)`. Sorgenti WoW → tipi: `WORLD_ENTER`, `ZONE_ENTER`, `COMBAT_START/END`, `HEALTH_CHANGED`, `PLAYER_DEATH`, `PLAYER_REVIVE`, `LEVEL_UP`, `TARGET_CHANGED`, `SPELL_SENT`, `SPELL_CAST`, `RESTRICTION_CHANGED`.
  - `Core/ContextResolver.lua`: `NS:BuildContext` del prototipo. Usa Compat, salta il nome del bersaglio se `C_Secrets` lo nasconde e prende il nome RP da `Integration/TotalRP3.lua`.
  - `Engine/`: `PhraseRegistry` (RegisterPack, traduzioni, statistiche), `RuleEngine` (`when`), `WeightedSelector` (memoria, peso, anti-ripetizione, `Pick`), `TemplateRenderer` (segnaposto, vocabolario, cornici). Logica invariata. Unica differenza: la finestra anti-ripetizione ha come tetto `pacing.recentPhraseWindow` (30) invece di 40.
  - `Systems/Triggers.lua`: le reazioni di `Events.lua` del prototipo, abbonate al bus (probabilità, pause, `NS:SetEventDefaults`). S4 le sostituisce col Narrative Director.
  - `Integration/ChatGateway.lua`: l'uscita del prototipo (`NS:Perform`, frase in attesa, `AzerothUnspoken_Speak`, `NS:Trigger`). **S2 lo trasforma nel Chat Gateway vero**: le modalità `PRIVATE`/`PREVIEW`/`CONFIRM_TO_SEND`/`AUTO_ONLY_IF_ALLOWED` sostituiscono `output.mode`, con una migrazione di schema alla versione 2.
  - `UI/SpeakButton.lua`, `UI/SettingsFrame.lua`, `UI/Commands.lua` (`/unspoken` e `/au`, con gli stessi sottocomandi italiani e inglesi di `/voci`). `Bindings.xml`: `AZEROTHUNSPOKEN_SPEAK`.
  - `Data/itIT/Interface.lua`, `Data/enUS/Interface.lua` (testi dell'interfaccia); `Data/*.lua` (374 frasi); `Data/Classes.lua` copiato ma **fuori dal `.toc`**: si carica senza errori, 54 frasi, da integrare in S3.
- **Scelte che S2 deve conoscere:**
  - La lingua è `settings.locale` e usa il codice corto dei pacchetti (`"it"`, `"en"`), non `"itIT"` come nel §11.4. `Config:NormalizeLocale` accetta anche `itIT`/`enUS`.
  - **Uscita predefinita:** `output.mode = "self"`, cioè solo anteprima privata in chat locale, e `output.autoPublicSay = false`. Rispetto al prototipo, nulla va in chat pubblica senza una scelta dell'utente. Anche in istanza `/say` parte da solo solo con `autoPublicSay = true`. Le modalità `auto`/`emote` pubblicano ancora emote automatiche, ma solo se l'utente le sceglie: S2 deve trasformarle in proposte.
  - Il cooldown globale è `pacing.globalCooldownSeconds` (45 s, prima 40). L'opzione "nome da TRP3" è `modules.totalRP3`. Il pulsante è in `settings.ui.showButton` e `settings.ui.buttonPos`.
  - Il pacchetto di esempio ora ha `id = "example"`. Il motto è in `## Notes`.
  - Il comando `/au` non è usato dagli addon installati (Details: `/details /dt /de`, TRP3: `/trp3`, QuestIT: `/qit`). Non è stato verificato contro i comandi interni di Blizzard.
- **Test:** dalla radice del progetto, `.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`. Esce con codice 1 se un controllo fallisce. Copre database, generazione, anti-ripetizione, l'assenza di chat pubblica con i predefiniti, il flusso eventi → /say col tasto e i comandi (incluso `/au debug`). Esegue anche `Tests/TestCompat.lua`, `TestConfig.lua` e `TestEventBus.lua`, ognuno in un runtime nuovo, con `T.run/T.eq/T.ok` definiti nel mock. Il mock ha `MakeSecret()`, `SECRET_UNITS`, `RESTRICTIONS`, `VALID_EVENTS` (registrare un evento sconosciuto dà errore) e `GetBuildInfo` = 1.60.1/70658/16001.
- **Non verificato senza il client** (da provare in G1): caricamento reale del `.toc` e delle SavedVariables (SP-01, SP-04); nomi, firme ed esistenza degli eventi e delle API della matrice nella build 70658 (SP-02); `debugstack`, pannello `Settings`, pulsante, binding; comportamento reale dei valori segreti e delle restrizioni; TRP3 vero.

### S2: narratore privato e Chat Gateway (GDD §4, §5.3, §7.7, §12)
- `UI/NarratorFrame.lua`:
  - riquadro discreto, non bloccante, spostabile;
  - durata, opacità e dimensione del testo regolabili;
  - cronologia recente;
  - tasto di pausa immediata.
- `Integration/ChatGateway.lua`:
  - modalità `PRIVATE` (predefinita), `PREVIEW`, `CONFIRM_TO_SEND`, `AUTO_ONLY_IF_ALLOWED`;
  - si può modificare la frase prima di inviarla;
  - si sceglie il canale (say, emote, party...);
  - protezione dal flood;
  - mai aggirare la richiesta di un'azione del giocatore.
- Ogni frase ha uno `speaker`. Finché non c'è lo schema v2, la regola provvisoria è: `say` → voce pubblica del personaggio, `emote` → narratore. In modalità privata compare nel narratore con un'etichetta per la voce.
- Impostazioni:
  - lingua, intensità (0–100), profondità (Naturale/Letterario/Elevato), moduli, modalità chat, pausa;
  - wizard del primo avvio come nel §12.1, saltabile.
- Il pulsante e il tasto "pronuncia" del prototipo diventano la conferma del Chat Gateway.
- **Fatto quando:** con le impostazioni predefinite nulla viene pubblicato in chat senza un'azione del giocatore, le frasi appaiono nel narratore privato e i test coprono le modalità del Chat Gateway.

#### Esito di S2 e note per S3
- **Dove sta il codice** (ordine nel `.toc`: `Integration\ChatGateway`, `Systems\Director`, `Systems\Triggers`, `UI\Widgets`, `UI\NarratorFrame`, `UI\SpeakButton`, `UI\Wizard`, `UI\SettingsFrame`, `UI\Commands`):
  - `Integration/ChatGateway.lua` (`NS.Gateway`):
    - modalità `chat.mode`: `PRIVATE` (predefinita), `PREVIEW`, `CONFIRM_TO_SEND`, `AUTO_ONLY_IF_ALLOWED`. `output.mode` non esiste più (migrazione di schema 1 → 2: `self` → `PRIVATE`, qualunque altro valore → `CONFIRM_TO_SEND`, `autoPublicSay` forzato a `false`).
    - `PRIVATE`: solo narratore, mai proposte. `PREVIEW`: la frase pubblica diventa una proposta e il tasto "pronuncia" apre l'editor (si invia con Invio). `CONFIRM_TO_SEND`: il tasto o il pulsante inviano la proposta. `AUTO_ONLY_IF_ALLOWED`: parte da sola solo l'emote (ovunque) e `/say`/`/yell` nelle istanze, e solo con `output.autoPublicSay` (secondo consenso, acceso da `Gateway:SetMode`); il resto resta una proposta.
    - Le voci `inner` e `npc` non diventano mai proposte. Il modulo `publicChat` spento equivale a `PRIVATE`.
    - **L'invio da gesto del giocatore passa solo da `Gateway:PlayerAction(fn)`** (clic, tasto, comando, Invio nell'editor). `Gateway:Send` fuori da quell'ambito rifiuta tutto tranne `EMOTE` e, in istanza, `SAY`/`YELL` (motivo `needs_action`): un timer o un evento non può inviare in chat pubblica. Il codice nuovo che invia deve passare da `Gateway:Send`/`SendPending`.
    - Anti-flood: `chat.floodSeconds` (4) tra due invii, `chat.maxPerMinute` (6), `chat.autoMaxPerMinute` (2). Proposta in attesa per `chat.pendingSeconds` (25); una nuova sostituisce la vecchia. Testo di al massimo 255 byte (UTF-8 intatto). Rifiuta con blocco chat, canale non disponibile, errore del client (registrato in diagnostica, la proposta resta).
    - Entrate: `Gateway:Narrate(event, ctx, {auto, form, privateOnly})`, `Gateway:Propose(rec, ctx, opts)`, `Gateway:Confirm()` (= `AzerothUnspoken_Speak`, tasto e pulsante), `Gateway:Improvise()`, `NS:Trigger(event, extra)`. `NS:Perform`, `NS:SetPending`, `NS:GetPending` e il parametro `hw` non esistono più.
  - `Engine`: `Engine:PickEntry(event, ctx, form)` restituisce `{ text, speaker, form, id, event }`; `Engine:Pick` ne restituisce solo il testo. Lo `speaker` provvisorio è assegnato in `AddPhrase`: `say` → `character`, `emote` → `narrator`; un pacchetto può indicarlo (`narrator`/`inner`/`character`/`npc`), valori sconosciuti tornano alla regola. Una frase parlata dentro una cornice è `narrator`. Le 374 frasi sono 354 parlate e 20 narrative.
  - `UI/NarratorFrame.lua` (`NS.Narrator`): `Present(rec)`, `Notice(testo)`, `Clear`, `Refresh`, `OpenEditor`, `ToggleHistory`, `ShowTest`, `ApplySettings`, `ResetPosition`. La cronologia è solo in memoria (`ui.narrator.historySize`, 30), mai salvata, e non è `cdb.history`. Con `output.privateNarrator = false`, o se il riquadro non si può costruire, le frasi vanno nella chat locale. Solo l'intestazione e i pulsanti ricevono il mouse.
  - `Systems/Director.lua` (`NS.Director`) è **il punto di aggancio per S4**: `Director:Evaluate(event)` → `{ allow, chanceMul, cooldownMul }` oppure `{ allow = false, reason }`. Oggi: intensità 0 = silenzio per gli eventi spontanei, probabilità = `intensità / 50`, pause = `1.5 − intensità / 100`, gli eventi in `NS.BYPASS_GLOBAL` non scendono sotto 1; pausa immediata (`NS.paused`, solo di sessione); i moduli `personal` e `world` spenti filtrano gli eventi (`Director.EVENT_MODULE`, predefinito `personal`). `Triggers.lua` chiama solo `Evaluate`. S4 ne sostituisce il corpo (gate, budget, priorità, fattori `P`/`S`, poi `R` in S6b) e può passare a `Gateway:PickRecord`/`Narrate`. Le richieste esplicite (`/au saluto`, tasto, `Trigger`) ignorano pausa e intensità, come da GDD §4.2.
  - `Core/Config.lua`: `SCHEMA_VERSION = 2`; nuove sezioni `chat`, `ui.narrator`, `ui.wizardDone`; `Config.CHAT_MODES`, `CHAT_CHANNELS`, `presets`, `ApplyPreset`. `output.publicChatPreview` resta ma non fa nulla (l'interruttore è il modulo `publicChat`).
  - `UI/Wizard.lua`: 7 passi come nel §12.1, il 6° solo se esiste `AddOn_TotalRP3`; "Salta" sempre disponibile; si riapre con `/au benvenuto`. `UI/SettingsFrame.lua`: lingua, intensità, profondità, pausa tra le frasi, chat e canale, narratore (durata, opacità, testo, blocco, cronologia, prova), moduli, pausa immediata. Solo `personal`, `world`, `publicChat` e `totalRP3` hanno oggi un effetto; gli altri moduli si impostano ma sono segnati con `*`.
  - Comandi nuovi: `/au chat`, `canale`, `intensita`, `profondita`, `pausa`, `narratore [cronologia|reset|pulisci]`, `benvenuto`, `annulla`; `/au modo` è un alias di `/au chat`. Tasto nuovo in `Bindings.xml`: `AZEROTHUNSPOKEN_PAUSE` (`AzerothUnspoken_TogglePause`). `/au debug` stampa anche la riga `Chat Gateway`.
- **Cosa deve sapere S3:**
  - la profondità (`proseDepth`) è salvata e scelta nel wizard, ma **nessuna frase la usa ancora**: lo schema v2 deve portare `depth` sulle frasi e il contesto deve esporre `ctx.depth` (e magari `ctx.intensity`) per le condizioni;
  - lo schema v2 deve mantenere il contratto di `PickEntry` e la semantica di `speaker` (il Gateway usa `rec.form` per scegliere `/s` o `/e` e per mostrare il testo, e `rec.speaker` per decidere se può uscire in chat);
  - con soli 20 testi narrativi su 374 il narratore parla quasi sempre con la voce del personaggio: S3/S7 devono bilanciare le voci e dare davvero testi a `inner`;
  - il validatore dovrebbe controllare gli `speaker` ammessi;
  - i testi dell'interfaccia stanno in `Data/itIT/Interface.lua` e `Data/enUS/Interface.lua` (chiavi `gw_*`, `voice_*`, `wiz_*`, `chatmode_*`).
- **Test** (dalla radice del progetto: `.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): oltre a quelli di S1, `TestChatGateway.lua` (modalità, modifica, canali, flood, nessun invio senza azione per ogni combinazione di modalità, forma e voce), `TestNarrator.lua` (riquadro, durata, cronologia, pausa, editor, pulsanti, impostazioni, wizard) e `TestDirector.lua` (scala dell'intensità, pausa, moduli). `TestConfig.lua` copre la migrazione 1 → 2. Il mock ora ha widget con stato (`Show/Hide`, testo, `Click()`, `TypeEnter()`, `UPDATE(dt)`, `FindWidgets`): i campi in minuscolo valgono `nil`, i metodi in maiuscolo non fanno nulla.
- **Non verificato senza il client** (da provare in G1, vedi `docs/G1_checklist.md`):
  - che `SendChatMessage` da un clic, da un tasto assegnato, da un comando scritto e dall'Invio nella casella di modifica sia davvero accettato per `/say` nel mondo aperto, e che i canali di gruppo, gilda e istanza funzionino;
  - che le emote automatiche (modalità `AUTO_ONLY_IF_ALLOWED`) non siano bloccate dal client e che `/say` in istanza parta senza gesto: la regola "emote sempre, `/say` solo in istanza" è un'ipotesi prudente, non una misura;
  - l'aspetto reale del riquadro, dei pulsanti `UIPanelButtonTemplate`, della casella di testo (`InputBoxTemplate`, con ripiego), del `ScrollingMessageFrame` della cronologia, il trascinamento, il passaggio dei clic attraverso il testo, la dissolvenza;
  - la registrazione del pannello nell'interfaccia (`Settings.RegisterCanvasLayoutCategory`) e lo spazio dei controlli in due colonne;
  - i nomi dei tasti in Opzioni > Comandi e che i tasti diano davvero un evento hardware;
  - il salvataggio delle nuove impostazioni e della posizione del riquadro tra le sessioni.

### G1: prova in gioco (utente)
L'utente esegue gli spike SP-01…SP-05 del GDD seguendo la lista di controllo [docs/G1_checklist.md](docs/G1_checklist.md), scritta nello step S2, e riporta errori e risultati di `/au debug`. **Gli step successivi aspettano questo esito.**

### S3: schema dati v2 e validatore (GDD §9)
- Registro delle regole separato dai testi:
  - `Data/Registry*.lua` per id, evento, categoria, speaker, stili, profondità, tag, peso, cooldown e condizioni;
  - testi per lingua in `Data/itIT/`, `Data/enUS/`, con più varianti per id.
- L'API dei pacchetti accetta il nuovo formato. Il formato vecchio si converte in caricamento oppure con uno script una tantum.
- Migrare le 374 frasi e `Classes.lua`:
  - assegnare speaker, registro e profondità frase per frase, con giudizio;
  - le cornici e il vocabolario restano, come varianti.
- Validatore (test fuori gioco più `/au validate`): id duplicati, lingue mancanti, segnaposto discordanti, condizioni sconosciute, varianti vuote, lunghezza massima per canale.
- Aggiornare la guida al formato dei pacchetti.
- Aggiungere `Tests/check_api.py`: legge `E:/repository/WoW-Addons/docs/api.json` (percorso configurabile) e segnala le funzioni ed eventi usati dall'addon che non sono nel dump. Ci sono eccezioni consentite per FrameXML, come `Settings.*`. Se il dump non c'è, il test viene saltato con un avviso.

#### Esito di S3 e note per S4
- **Cosa c'è** (guida completa: [AzerothUnspoken/FORMATO_PACCHETTI.md](AzerothUnspoken/FORMATO_PACCHETTI.md)):
  - `Engine/PhraseRegistry.lua`: schema v2. Una regola (`AUPhrase`) ha `events`, `category`, `speaker`, `form`, `styles` (il primo è `tone`), `depth`, `tags`, `weight`, `cooldown`, `when` (alias `conditions`) e `text[lingua] = { varianti }`, con varianti `{ t, ok, depth, pack }`. `Engine.byId` e `Engine.byEvent` come prima.
  - API dei pacchetti: `RegisterPack{ registry, texts, events, styles, categories, conditions, languages, frames, vocab }`; `NS:AddTexts(lingua, mappa, pacchetto)` (alias `AddTranslations`), `NS:RegisterEvent`, `RegisterStyle`, `RegisterCategory`, `RegisterCondition`. I testi per id di altri pacchetti si aggiungono come varianti; quelli arrivati prima della regola aspettano. Il formato vecchio (`phrases` con `it=`/`en=`/`tone`/`when`) si converte in caricamento (`tone` → registro, ad esempio `eroico` → `epic`).
  - Dati: `Data/Registry{Combat,Spells,Life,Exploration,Social,Classes}.lua` (regole), `Data/itIT/*.lua` e `Data/enUS/*.lua` (testi). Gli id sono quelli di prima. Vocabolario e cornici restano in `Vocabulary.lua` e `Frames.lua` con `it=`/`en=` (anche elenchi di varianti). `Classes.lua` è nel `.toc`: 54 frasi.
  - Numeri: le "374 frasi" della roadmap erano 367 di base + 7 del pacchetto di esempio; ora sono 421 di base (367 + 54) + 7 = **428**. Voci di base: personaggio 306, voce interiore 96, narratore 19, NPC 0. Assegnazione di voce e registro fatta frase per frase (pensieri e osservazioni → `inner`; battute, minacce, saluti → `character`; azioni → `narrator`); le profondità sono assegnate con regole sulla lunghezza e sul registro e non frase per frase: sono da rivedere in S7.
  - `Engine/Validator.lua` (`NS.Validator:Run{ packs }` → `{ errors, warnings, stats }`, `/au valida [tutto|pacchetto]`): id duplicati, lingue mancanti, segnaposto discordanti (con ripiego senza segnaposto), condizioni sconosciute o malformate, varianti vuote, lunghezza per canale (255 byte, caso peggiore dei segnaposto), UTF-8, voci/registri/profondità/eventi. Il database di base ha 0 errori e 0 avvisi.
  - `Tests/check_api.py` (collegato a `run_tests.py`): legge `E:/repository/WoW-Addons/docs/api.json` (`--api` o `AU_API_JSON`), salta con un avviso se manca. Eccezioni motivate per `Settings.*`, `InterfaceOptions*`, `GetSpellInfo` e `MouseIsOver` (issue #17).
- **Cosa deve sapere S4:**
  - `ctx.depth` e `ctx.intensity` sono nel contesto; le condizioni `depth`, `intensityMin`, `intensityMax` funzionano. Il fattore **S** del peso è `Engine.StyleFactor(frase, ctx)` (1 se la profondità combacia o manca, `Engine.DEPTH_MISMATCH` = 0,3 altrimenti; mai esclusione) ed è già dentro `Score`: il StyleResolver di S4 deve **aggiungere i registri** (`p.styles`), non rifare la profondità.
  - `PickEntry` restituisce anche `category`, `style` e `variant`. Le categorie sono quelle degli eventi (`combat`, `spellcraft`, `life`, `exploration`, `reflection`, `social`): `Engine.events[evento].category` e `Engine.CATEGORIES` per i budget.
  - Contratto invariato: `rec.form` e `rec.speaker`. Solo la voce `character` si può raccontare in una cornice; un pensiero (`inner`) esce solo in forma `say`, e non diventa mai una proposta in chat.
  - Una condizione malformata vale "falsa" (`Engine.SafeMatch`); la scelta non si interrompe.
  - Le varianti non si ripetono di fila (`cdb.memory.variant`).
  - Una lingua registrata da un pacchetto dopo il caricamento resta quella scelta (chiude l'issue #7).
- **Aperte da S3:** #17 (`MouseIsOver`, `bug` `in-game`), #18 (pochi testi del narratore, una sola variante per frase: `content`, per S7), #19 (limite di 255 byte duplicato tra Gateway e validatore, `enhancement`).
- **Test:** `.venv\Scripts\python -I -X utf8 Tests
un_tests.py AzerothUnspoken` esegue anche `TestSchema.lua` (registro, varianti, profondità, conversione del formato vecchio, estensioni, lingue) e `TestValidator.lua` (ogni controllo con un pacchetto sbagliato apposta, `/au valida`), la prova UTF-8/LF dei file e `check_api.py`.
- **Non verificato senza il client** (aggiunto a `docs/G1_checklist.md`, passi 17–19): che i file dei testi siano letti come UTF-8 (accenti giusti), che `/au valida` dia 428 frasi e 0 errori nel client vero, che la profondità cambi la sensazione dei testi. L'assenza di `MouseIsOver` e il resto di `check_api.py` si riferiscono al dump (build 70170), non al build 70658.

### S4: Narrative Director (GDD §4.2, §5.2, §6, §10, §15)
- Gate di opportunità guidato dall'intensità; budget per categoria; priorità del §10; silenzio come esito valido; niente cascate di messaggi.
- Peso `W = B × C × P × N × S`. Gli hook `P` (personalità) e `S` (stile) partono neutri e si riempiono negli step S5 e S2/S3.
- StyleResolver: registri ammessi per evento, zona, voce e profondità, con un ripiego neutro.
- Sospensione durante combattimenti impegnativi e schermate invasive.
- Test con seme RNG controllato: distribuzione, cooldown, ripiego, nessun duplicato nella finestra.

#### Esito di S4 e note per S5
- **Dove sta il codice** (ordine nel `.toc`: `Engine\StyleResolver` prima di `WeightedSelector`; `Engine\Pacing` e `Engine\NarrativeDirector` dopo `Validator`):
  - `Engine/NarrativeDirector.lua` (`NS.NarrativeDirector`): `PRIORITY` (esplicito 5, dialogo 4, eccezionale 3, memoria 2, atmosfera 1), `EVENT_PRIORITY`, `Priority(evento)`, `NS:SetEventPriority(evento, livello)`; `Scale(intensità)` (probabilità × intensità/50, pause × (1,5 − intensità/100)); `Gate(evento, ctx, now)` → `AUVerdict { allow, reason, chanceMul, cooldownMul, priority, category }`; `Roll` (dado con `NS:GetChance`); `HighDemand(ctx)` (in combattimento con boss, in incursione, élite in istanza); `Order`; agganci `SetRhythm(nome, fn(evento, ctx) → chanceMul, cooldownMul)` e `SetDemandCheck(nome, fn(ctx) → bool)`.
  - `Engine/Pacing.lua` (`NS.Pacing`): `MOMENT` (4 s tra due interventi qualsiasi, anche espliciti), pausa globale (`pacing.globalCooldownSeconds`), `CATEGORY_COOLDOWN`, `NS.EVENT_COOLDOWN`, `BUDGET` per categoria in `WINDOW` (600 s) × intensità/50. Gli eventi eccezionali saltano globale, categoria e budget, non il momento. Stato solo in memoria (nessuna migrazione). `Record`, `Note` (esplicito: apre il momento, niente budget), `Status`, `Reset`.
  - `Systems/Director.lua`: `Offer(evento, extra)` mette in coda; dopo `ARBITRATION` (0,1 s) `Resolve` prova i candidati in ordine di priorità (contesto → `Evaluate` → dado → `Gateway:Narrate`): parla il primo che produce una frase, gli altri tacciono. `Evaluate(evento, ctx)` è il gate (forma S2 invariata, più `priority`/`category`). `Director.log` e `Director:Status()` → riga **Narrative Director** in `/au debug`. `Triggers.Fire` = `Director:Offer`.
  - `Engine/WeightedSelector.lua`: `W = B × C × P × N × S × R` in `Engine.Factors(entry, lastTone, ctx, profile)`; `Engine:Weight(frase, evento, ctx)` restituisce la scomposizione. Agganci `Engine:SetWeightHook("C"|"P"|"R", nome, fn(entry, ctx) → numero ≥ 0)`: i valori dello stesso fattore si moltiplicano, uno che sbaglia vale 1 e va in diagnostica, 0 esclude la frase.
  - `Engine/StyleResolver.lua` (`NS.StyleResolver`): `Resolve(evento, ctx)` → profilo (`allowed` per evento, `preferred` da `ctx.mood` e `ctx.depth`), `Affinity(frase, profilo)` (×0,5 fuori dall'evento, +25% per preferenza, contando anche la voce, al massimo tre), `Compatible(registriCornice, registriFrase)` (cornici con `styles` solo con registri uguali o vicini), `SetModifier(nome, fn(profilo, ctx))` con `StyleResolver.Prefer`. API dei pacchetti: `RegisterEventStyles`, `RegisterMoodStyles`.
  - `Core/Compat.lua`: `InvasiveScreen()` e le capacità `api:InCinematic`, `api:IsInCinematicScene`. Il mock ha `InCinematic` (`P.cinematic`).
- **Cosa deve sapere S5:**
  - la personalità entra nel peso con `Engine:SetWeightHook("P", "soul", function(frase, ctx) ... end)`: leggere i tag di affinità delle frasi (`frase.tags`) e restituire un moltiplicatore; per i tratti esclusivi ("mai contraddetti") restituire **0**, che esclude la frase;
  - il temperamento può spostare i registri con `NS.StyleResolver:SetModifier("soul", function(profilo, ctx) NS.StyleResolver.Prefer(profilo, "ceremonial") end)` (esempio del GDD §5.2: misericordioso → solenne);
  - il contesto non ha ancora i tratti: esporli in `ctx` (per esempio `ctx.soul`) in `NS:BuildContext`, così condizioni e agganci leggono la stessa fonte;
  - le frasi e i loro `tags` vengono da S3: oggi nessuna frase ha tag di personalità (S7 li scriverà);
  - non toccare `Systems/Director.lua` per la personalità: tutto passa dagli agganci.
- **Per S6, S6b, S6c:** S6 registra i richiami di memoria come eventi con `NS:SetEventPriority(evento, "memory")`; S6b usa l'aggancio `R`; S6c usa l'aggancio `C`, `SetRhythm` (ritmo per tipo di istanza) e `SetDemandCheck` (`ENCOUNTER_START`, oggi un boss di dungeon senza classificazione `worldboss` non sospende il narratore).
- **Test** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestNarrativeDirector.lua` (151 controlli, seme fisso) più gli altri; `TestDirector.lua` resta valido. I test che aspettano una frase spontanea devono far passare la finestra di arbitraggio (`ADVANCE`).
- **Non verificato senza il client** (aggiunto a `docs/G1_checklist.md`, passi 27–31): se il ritmo è piacevole (budget e pause sono ipotesi), se `InCinematic`/`IsInCinematicScene` esistono e rispondono nel build 70658, se `CinematicFrame`/`MovieFrame` sono i frame giusti, se boss ed élite vengono riconosciuti (`UnitClassification`).

### S5: Character Soul e Total RP 3 (GDD §7.1, §8)
- Tratti opt-in: temperamento, morale, curiosità, fede, motivazione, ironia, argomenti da evitare, voce interiore. Archetipi pronti e profilo neutro.
- Tag di affinità sulle frasi; i tratti esclusivi non vengono mai contraddetti.
- Interfaccia del profilo.
- Adattatore TRP3:
  - legge solo dati pubblici del proprio profilo, con consenso;
  - si disattiva se le API mancano o sono cambiate;
  - priorità: scelta esplicita > TRP3 > dati di gioco > valori neutri.

#### Esito di S5 e note per S6, S6b, S6c
- **Dove sta il codice** (nel `.toc`: `Engine\Traits` prima di `Validator`; `Systems\Personality` prima di `Director`; `UI\ProfileFrame` prima di `SettingsFrame`; `Data\RegistrySoul` e i testi `Soul.lua`):
  - `Engine/Traits.lua` (`NS.Traits`), **il modello riusabile**: `Traits.Define{ id, kind = "choice"|"scale"|"set", values | min/max/bands, tag, exclusive }`; un profilo è `{ [tratto] = valore }` con i soli tratti impostati (assente = "non so"); `Sanitize`, `Copy`, `IsEmpty`, `IsSet`, `Has`, `Band`; `Merge(livelli)` (per tratto vince il primo livello che lo imposta, gli insiemi si uniscono); tag `ParseTag`/`CheckTag`/`Evaluate(tags, profilo, ambito)` → fattore (0 = esclusa); `RegisterScope(nome)`; `Name`, `ValueName`, `Describe`, `ParseValue`, `Lower` (minuscole solo ASCII).
  - `Systems/Personality.lua` (`NS.Personality`): gli otto tratti (`temperament`, `morality`, `curiosity`, `faith`, `motivation`, `irony`, `avoid`, `innerVoice`), `archetypes` (`RegisterArchetype`), `Profile()` (dati salvati in `cdb.personality = { version, archetype, traits, trp3 }`), `Sanitize`, `Effective()` → `traits, sources` (scelta `explicit` > `trp3` > `game`; in cache, `Refresh()` la invalida), `SetArchetype`, `SetTrait`, `ToggleTopic`, `Reset`, `SetTRP3Consent`, `RegisterGameLayer(nome, fn)`, `Factor(frase, ctx)` (il fattore `P`), `ExcludedBy`, `Summary`, `Command`. Aggancia `Engine:SetWeightHook("P", "soul", ...)`, `StyleResolver:SetModifier("soul", ...)` e la condizione `soul`. `ctx.soul` = profilo effettivo (tabella condivisa, sola lettura) in `NS:BuildContext`.
  - `Integration/TotalRP3.lua`: oltre a `GetFirstName`, `HasTraitConsent`, `ReadPsycho` (solo `characteristics/PS` del proprio profilo, forma controllata) e `GetSoulTraits` (mappa `PSYCHO_MAP` + soglia dal centro). Capacità `integration:totalRP3:traits`. Nessun altro file tocca TRP3.
  - `UI/ProfileFrame.lua` (`NS.ProfileFrame`: `Open`, `Close`, `Toggle`, `Refresh`), comando `/au anima` (alias `soul`, `personalita`, `profilo`), riga nel pannello delle impostazioni.
  - `Data/RegistrySoul.lua` + `Data/itIT/Soul.lua` + `Data/enUS/Soul.lua`: pacchetto `base_soul`, 16 frasi di esempio. Le frasi di base (421) **non hanno ancora tag di affinità**: li scriverà S7.
  - SavedVariables **schema 3** (`Config.SCHEMA_VERSION`); migrazione 3 del personaggio; `Validator` segnala `badTag`.
- **Tag di affinità** (nei `tags` della regola; senza due punti sono descrittivi): `tratto:valore` morbido (×1,6 combacia / ×0,6 altro valore / 1 non impostato, limite 0,15–3); `req:tratto:valore` (esce solo se il profilo lo dice, anche il neutro la esclude), `not:tratto:valore` e `topic:argomento` rigidi. Regola per S7: una frase che **afferma** qualcosa del personaggio usa `req:`, una che lo dice con un tono usa l'affinità morbida. Voce interiore spenta esclude gli `inner`; l'ironia pesa i registri `ironic` senza tag `irony:`. Dettagli in `FORMATO_PACCHETTI.md` e [ADR 0016](docs/adr/0016-character-soul-tratti-opt-in-e-total-rp-3-con-consenso.md).
- **Cosa deve sapere S6b (relazioni):** gli assi sono scale di `Traits` (`Traits.Define{ id = "trust", kind = "scale", min = -100, max = 100, bands = ... }`); le etichette derivate possono usare le fasce. Il fattore `R` è libero (S5 non lo tocca): `Engine:SetWeightHook("R", ...)`. L'unione di più fonti è `Traits.Merge`.
- **Cosa deve sapere S6c (interlocutore):** il profilo dell'interlocutore (`temperament`, `morality`, `goals`, `speech`) può riusare le definizioni di S5 (`Traits.defs.temperament`...) o aggiungerne; i tag che lo riguardano si scrivono con un ambito (`Traits.RegisterScope("other")`, tag `other.temperament:gruff`) e si valutano con `Traits.Evaluate(frase.tags, ctx.other_traits, "other")` dentro l'aggancio `C`. Il livello "dati di gioco" del Soul è pronto (`Personality:RegisterGameLayer`) ma **vuoto**: razza, fazione e classe non decidono il carattere (GDD §5.4); S6c può aggiungere tendenze deboli. Per i dati pubblici di un altro giocatore serve un **consenso a parte** (ADR 0004): l'adattatore oggi non crea mai `Player` di altri (`CreateFromCharacterID` non si chiama).
- **Per S6:** nessuna novità; la memoria può leggere `ctx.soul` (per esempio un ricordo di morte non si richiama se `avoid.death`: il filtro rigido vale per ogni frase con `topic:death`, ma un richiamo di memoria che non passa dalle frasi deve controllare `ctx.soul.avoid` da sé).
- **Trovato e non risolto fuori da S5:** `string.lower` altera le lettere accentate (UTF-8) con alcune impostazioni locali (provato in lupa): `UI/Commands.lua` e `Core/ContextResolver.lua` lo usano su testo che può contenerne (alias come `intensità`); S5 usa `Traits.Lower`. Vedi l'issue aperta.
- **Test** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestSoul.lua` (1.500 controlli circa: modello dei tratti, profilo neutro (P = 1 per ogni frase senza `req:`), archetipi, fattore P e distribuzione con seme fisso, filtri rigidi con 40 semi e un profilo completo, condizione `soul`, registri, TRP3 presente/assente/API cambiata/dati malformati, priorità delle fonti, migrazione dello schema 2, dati rovinati e futuri, comando, finestra, chiavi IT/EN, validatore). `run_tests.py` ora si aspetta 444 frasi e schema 3; il controllo del `/say` automatico in istanza cerca finché ne parte uno (con il seme fisso la sequenza cambia a ogni frase aggiunta).
- **Non verificato senza il client** (aggiunto a `docs/G1_checklist.md`, passi 32–38): l'aspetto e lo spazio della finestra del profilo; che il cambio di profilo si senta nelle frasi (con 16 sole frasi di esempio la differenza è piccola); **Total RP 3 vero**: che `GetInfo("characteristics/PS")` dia i tratti, che gli ID dei tratti predefiniti (`PSYCHO_MAP`) e la scala 0–20 siano quelli del TRP3 in uso; i fattori e le soglie sono ipotesi.

### S6: Living Memory e Diario (GDD §7.4, §11.5, §12.2)
- Tre livelli: episodico, persistente, flag narrativi.
- Prima visita, ritorno, ultima visita finita male, morti, livelli.
- Al massimo 500 ricordi, con compattazione, ricordi permanenti e reset.
- Il richiamo avviene solo se esiste un ricordo vero: aggiungere condizioni come `repeatVisit` e `lastVisitBad`.
- `UI/JournalFrame.lua`: ricordi, luoghi e flag, con cancellazione selettiva ed esportazione testuale manuale.

### S6b: relazioni e affinità (richiesta dell'utente del 2026-10-29; GDD §7.4, §10, §14)

Obiettivo: il narratore scrive in modo diverso in base al rapporto tra il personaggio e l'NPC o il giocatore con cui interagisce.
Esempi: tono formale con uno sconosciuto, caldo con un amico, teso con un rivale rispettato.

**Modello dati**, in `Systems/Relationships.lua`:
- I dati stanno in `AzerothUnspokenCharacterDB.relationships = { npcs = { [npcID] = ... }, players = { ["Nome-Reame"] = ... } }`, con versione dello schema e migrazioni.
- Gli assi sono indipendenti, non c'è un'unica barra amico/nemico:

  | Asse | Intervallo | Note |
  |---|---|---|
  | `familiarity` | 0…100 | quanto ci si conosce |
  | `trust` | −100…100 | fiducia |
  | `respect` | −100…100 | rispetto |
  | `affection` | −100…100 | i valori negativi indicano astio o odio |
  | `fear` | 0…100 | timore |
  | `loyalty` | −100…100 | lealtà |
  | `attraction` | 0…100 | asse **facoltativo, spento per impostazione predefinita**, attivabile nelle impostazioni |

- Le **etichette narrative derivate** sono definite come dati in `Data/Relationships.lua`, con regole e nomi IT/EN. Il motore non contiene etichette fisse. Esempi:
  - fiducia e affetto alti → amico;
  - fiducia e lealtà alte → compagno d'armi;
  - affetto e attrazione alti → innamorato;
  - fiducia bassa e rispetto alto → rivale rispettato;
  - affetto molto negativo → nemico;
  - valori vicini a zero → indifferente;
  - familiarità bassa → sconosciuto.
- C'è anche una **disposizione complessiva** su una scala −100…100: Odiato, Nemico, Antipatico, Sospettoso, Neutrale, Conoscente, Amico, Grande amico, Legame profondo. È derivata dagli assi e serve per i riassunti e per le condizioni semplici.
- Ogni relazione conserva: prima e ultima interazione, numero di interazioni, note libere, tag e un'etichetta scelta a mano, che ha la precedenza su quella derivata.

**NPC, calcolo automatico:**
- L'identità è l'`npcID` ricavato dal GUID (`Creature-…-npcID-…`). Se il GUID manca, è segreto o non è una creatura, non si registra nulla.
- Fonti, da verificare in Compat con registrazione protetta degli eventi:
  - dialoghi (`GOSSIP_SHOW`): familiarità;
  - quest accettate e consegnate (NPC di `QUEST_DETAIL`/`QUEST_COMPLETE`, poi `QUEST_ACCEPTED`/`QUEST_TURNED_IN`): fiducia e rispetto;
  - acquisti, vendite e riparazioni dal mercante (`MERCHANT_SHOW`/`MERCHANT_CLOSED`, `hooksecurefunc` su `BuyMerchantItem`, vendite rilevate in modo prudente): familiarità e fiducia;
  - locandiere, maestro di volo, addestratore, ove rilevabili.
- Rendimenti decrescenti e un tetto giornaliero per tipo di interazione. La familiarità decade lentamente nel tempo, gli altri assi no.
- Gli incrementi sono tabelle di dati, regolabili senza toccare il codice.

**Giocatori, gestiti dall'utente:**
- Lista "Persone incontrate".
- Il sistema **propone** candidati: membri del gruppo, scambi, bersagli con profilo TRP3, persone a cui si è risposto in privato.
- Un giocatore entra in lista **solo con un'azione dell'utente**. In alternativa c'è un'opzione esplicita "registra automaticamente chi incontro", spenta per impostazione predefinita.
- L'utente modifica gli assi con cursori; aggiunge note, tag ed etichetta personalizzata; elimina; esporta in testo.
- Privacy:
  - nessun contenuto di chat o di whisper salvato;
  - nessun dato inviato in rete;
  - il modulo Social (S10) condividerà qualcosa solo con un consenso esplicito.

**Integrazione con il narratore:**
- Il contesto espone `relation` (etichetta derivata), `disposition` e i singoli assi del bersaglio o dell'NPC dell'interazione corrente.
- Nuove condizioni nel RuleEngine:
  - `relation = { "friend", "rival" }`;
  - `trustMin`, `trustMax`, `affectionMin`, `affectionMax` e gli equivalenti per ogni asse;
  - `familiarityMin`, `isKnown`.
- Nuovo segnaposto `{relation}`, con l'etichetta localizzata.
- Fattore di peso aggiuntivo `R` nel Narrative Director: le frasi coerenti con il rapporto salgono di peso, quelle incoerenti vengono escluse.
- Il registro cambia con la familiarità: dal formale all'intimo.
- Almeno 40 frasi bilingui legate alle relazioni, per saluti, congedi, ringraziamenti, cure, battaglia al fianco di qualcuno e incontri con NPC conosciuti.

**Interfaccia:** finestra "Relazioni" con tabella ordinabile e filtrabile (NPC/giocatori, etichetta, ultima interazione), dettaglio con cursori e note, accesso da `/au relazioni` e dal diario.

**Test:**
- derivazione delle etichette;
- incrementi automatici con tetti e decadimento;
- migrazione dello schema;
- nessuna registrazione dei giocatori senza azione dell'utente;
- nessun dato preso da valori segreti.

**Dipendenze:** dopo S6, perché usa la memoria e il diario. Prima di S7, perché i contenuti useranno le nuove condizioni. S8 (NPC Alive) riusa il registro degli NPC e le relazioni.

### S6c: interlocutore e luogo (richiesta dell'utente del 2026-10-29; GDD §5.2, §5.3, §7.1, §7.2, §10)

Obiettivo: le frasi cambiano in base a **chi incontriamo** e a **dove siamo**.
- Chi incontriamo: personalità e carattere, azioni recenti, razza, classe, obiettivi, ruolo.
- Dove siamo: regione, territorio, tipo di istanza (dungeon, raid, campo di battaglia, arena).

Lo step completa S5, dove la personalità è quella del *nostro* personaggio, e S6b, dove si definisce il *rapporto*.

**A. Profilo dell'interlocutore** (`Systems/Interlocutor.lua`). Il contesto espone `ctx.other`: bersaglio, NPC dell'interazione in corso, membro del gruppo o autore di un'emote rivolta a noi.

| Campo | Contenuto |
|---|---|
| `kind` | `npc`, `player`, `creature` |
| `race`, `class`, `faction`, `sex`, `level` | per i giocatori dal gioco o da TRP3; per gli NPC dove disponibile |
| `classification`, `ctype`, `family` | élite, raro, boss; tipo di creatura; famiglia (`UnitCreatureFamily`) |
| `reaction` | da ostile ad amichevole (`UnitReaction`) |
| `role` | locandiere, mercante, guardia, datore di quest, addestratore, maestro di volo, banchiere, capo, civile… |
| `temperament`, `morality`, `goals`, `speech` | personalità. Usa **lo stesso modello di tratti di S5** e i valori della tabella delle relazioni di S6b |
| `actions` | azioni recenti osservate: ci ha dato una quest, ha commerciato con noi, è nel nostro gruppo, ci ha sfidato a duello, ci ha rivolto un'emote, ci attacca, combatte il nostro stesso nemico. Ognuna con il momento in cui è avvenuta |
| `relation` | etichetta di S6b, se esiste |

- **Fonti, in ordine di priorità:**
  1. dati inseriti dall'utente (lista persone di S6b);
  2. profilo **pubblico** TRP3 del bersaglio (razza e classe personalizzate, tratti caratteriali), con consenso e adattatore protetto;
  3. registro curato degli NPC per `npcID` in `Data/NPCs.lua` (personalità, obiettivi, modo di parlare), condiviso con S8;
  4. archetipo del ruolo, ricavato in modo affidabile da gossip, mercante, quest, addestratore o volo (mai indovinato);
  5. valori tipici di razza, classe e fazione, come **tendenza debole** e non come stereotipo imposto (GDD §5.4: "nessuna decisione morale imposta da razza, fazione o classe");
  6. valori neutri.
- Le azioni si ricavano solo da eventi affidabili: `GOSSIP_SHOW`, `QUEST_*`, `MERCHANT_*`, `TRADE_SHOW`, `GROUP_ROSTER_UPDATE`, `DUEL_REQUESTED`, `PARTY_INVITE_REQUEST`, `CHAT_MSG_TEXT_EMOTE` rivolti a noi, `PLAYER_TARGET_CHANGED`. Mai dal log di combattimento. Se l'identità è segreta (`C_Secrets.ShouldUnitIdentityBeSecret`) il profilo resta vuoto.

**B. Luogo** (`Systems/Place.lua`). Il contesto espone `ctx.place`:

| Campo | Contenuto |
|---|---|
| `zone`, `subzone`, `mapID`, `continent` | da `C_Map.GetBestMapForUnit` / `C_Map.GetMapInfo` |
| `tags` | atmosfera e temi: foresta, rovine, sacro, maledetto, capitale, porto… Evoluzione di `zoneMoods`, con registro per `mapID` dove verificato e nome come ripiego |
| `territory` | amico, ostile, conteso, santuario, combattimento (`C_PvP.GetZonePVPInfo`) |
| `capital`, `faction` | capitale e fazione proprietaria del luogo |
| `instanceType` | `none`, `party` (dungeon), `raid`, `pvp` (campo di battaglia), `arena`, `scenario` |
| `instanceName`, `instanceID`, `difficulty` | da `GetInstanceInfo` |
| `encounter` | scontro con un boss in corso (`ENCOUNTER_START`/`END`), con il nome |
| `groupRole` | ruolo nel gruppo: tank, cura, danno (`UnitGroupRolesAssigned`) |
| `battleground` | stato del campo di battaglia (`UPDATE_BATTLEFIELD_STATUS`, `C_PvP.IsBattleground`) |

- `Data/Places.lua` contiene tag, temi e frasi chiave per le zone, le capitali, i dungeon, i raid e i campi di battaglia dell'era di Forever, con nomi del client inglese e `mapID` verificati.

**C. Regole e scelta delle frasi.**
- Il RuleEngine accetta sotto-tabelle:
  - `when = { other = { role = "innkeeper", temperament = "gruff" } }`;
  - `when = { place = { instanceType = "raid", territory = "hostile" } }`.
  - Valgono gli stessi operatori di oggi (elenchi, `not`, `any`, `func`) e `other.actions` contiene un'azione recente entro N secondi.
- Nuovi segnaposto: `{other}` (nome), `{otherrole}`, `{otherrace}`, `{otherclass}`, `{instance}`, `{encounter}`, localizzati.
- Narrative Director: il fattore di contesto `C` premia le frasi coerenti con interlocutore e luogo. Il ritmo cambia con il tipo di istanza:
  - più sobrio in raid e durante gli scontri con i boss;
  - frasi brevi in campo di battaglia;
  - più spazio nel mondo aperto e nelle locande.
- **Voce degli NPC** (per S8): le battute simulate seguono `speech` e `temperament` dell'NPC. Esempio: un locandiere burbero e uno gioviale non dicono le stesse cose.

**D. Contenuti:** almeno 80 frasi bilingui.
- Per l'interlocutore: per ruolo, temperamento, razza o classe, e azioni come "ci ha appena dato una quest" o "ha combattuto al nostro fianco".
- Per il luogo: dungeon, raid, campo di battaglia, arena, territorio ostile, capitale nemica o amica, santuari.
- Ogni frase rispetta le regole del §5.4.

**Test:**
- priorità delle fonti;
- ruolo ricavato solo da eventi affidabili;
- identità segreta → profilo vuoto;
- nessun obbligo di TRP3;
- regole con `other` e `place`;
- passaggio da mondo aperto a dungeon, raid e campo di battaglia, con il ritmo che cambia.

**Dipendenze:** dopo S5 (modello dei tratti) e S6b (relazioni e lista persone). Prima di S7, perché i contenuti Alpha useranno anche queste condizioni. S8 riusa `Data/NPCs.lua` e il profilo dell'interlocutore.

### S7: contenuti Alpha (GDD §5, §9.2, §21)
- 300 intenzioni bilingui; almeno 2 varianti per le scene più comuni; tutte e quattro le voci; tre profondità per i momenti chiave.
- Coprire a fondo il vertical slice A e C.
- Rispettare le regole di qualità del §5.4: varietà di lessico e lunghezza, niente lore inventata spacciata per canone.

### S8: NPC Alive (GDD §7.3, §21-B)
- Finestra di dialogo etichettata "dialogo ambientale dell'addon".
- Stati `idle → offered → opened → choice → response → ended`.
- Registro degli NPC tramite `npcID` dal GUID, verificato.
- Archetipi (locandiere, mercante, guardia) solo con una classificazione affidabile, ad esempio gli eventi di gossip o merchant; nessun dialogo se l'identità è incerta.
- La finestra non deve interferire con il gossip Blizzard.

### S9: Story Arcs (GDD §7.5)
- Archi a stati (`LOCKED → DISCOVERED → REFLECTED → RESOLVED`), al massimo 1–2 attivi, saltabili e disattivabili.
- Persistono dopo il logout e si integrano col diario. Scrivere 3–5 archi di esempio.

### S10: Social RP (GDD §7.6, §14)
- Messaggi addon con versione del protocollo, schema, limiti di dimensione, throttling e timeout.
- Opt-in disattivato per impostazione predefinita; lista dei blocchi; nessuna esecuzione di codice ricevuto.
- Inviti alle scene, accettazione e rifiuto, azioni, chiusura.
- Rilasciare solo dove il trasporto è dimostrato.

### S11–S12: release 1.0 (GDD §16, §19)
- Contenuti fino a 1.000 intenzioni.
- Accessibilità, audio facoltativo (spento), profiling, manuale, privacy, troubleshooting.
- Spuntare la Definition of Done.
