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
| S6 | M1 | Living Memory e Diario | Sonnet · high | fatto il 2026-10-29 (test fuori gioco superati; client vero non provato) |
| S6b | M1 | Relazioni e affinità: NPC automatici, persone incontrate, influenza sul narratore | Sonnet · high | fatto il 2026-10-29 (test fuori gioco superati; client vero non provato) |
| S6c | M1 | Interlocutore (personalità, azioni, razza, classe, obiettivi, ruolo) e luogo (regione, territorio, dungeon/raid/BG/arena) | Opus · medium | fatto il 2026-10-29 (test fuori gioco superati; client vero, TRP3 vero e numeri dei luoghi non provati) |
| S7 | M1 | Contenuti Alpha: 300 intenzioni, almeno 2 varianti | Opus · high | fatto il 2026-10-29 (803 intenzioni, 1.711 varianti per lingua; test fuori gioco superati; tono in gioco non provato) |
| ✋ G2 | M1 | **Prova in gioco**: vertical slice A (arrivo nella foresta) e C (ritorno) | utente | da fare |
| S8 | M2 Living NPC (v0.3) | NPC Alive: finestra di dialogo, stati, registro NPC, archetipi | Sonnet · high | fatto il 2026-10-29 (169 battute IT/EN, 5 archetipi; chiude #41 e #42; test fuori gioco superati; client vero non provato) |
| ✋ G3 | M2 | **Prova in gioco**: vertical slice B (locandiere), passi 75–83 di `docs/G1_checklist.md` | utente | da fare (rimandata come G1 e G2) |
| S9 | M3 Personal Stories (v0.45) | Story Arcs a stati e diario evoluto | Sonnet · high | fatto il 2026-10-29 (4 archi bilingui, 33 battute IT/EN; test fuori gioco superati; client vero non provato) |
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
| Qn | Correzione delle issue `bug` più importanti, una sessione per gruppo di issue collegate, tra uno step e l'altro | Sonnet · high | ricorrente. Q2 fatto: #3, #4, #5, #6, #8, #11, #12, #14, #17, #19 (2026-10-29; test fuori gioco superati; da provare in gioco: G1 passi 20–26). Q3 fatto: #26, #9, #21, #23, #13, #37, #38 (2026-10-29; test fuori gioco superati; da provare in gioco: G1 passi 69–74). Q5 fatto: #45, #46, #47, #48, #49, #50, #51, #52, #53, #54, #55, #56 (2026-10-29; test fuori gioco superati; da provare in gioco: G1 passi 93–98) |

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
- **Trovato e non risolto fuori da S5:** `string.lower` altera le lettere accentate (UTF-8) con alcune impostazioni locali (provato in lupa): `UI/Commands.lua` e `Core/ContextResolver.lua` lo usano su testo che può contenerne (alias come `intensità`); S5 usa `Traits.Lower`. Aperta come issue #26. Altra issue di S5: #27 (etichettare le frasi di base con i tag di affinità, per S7).
- **Test** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestSoul.lua` (1.500 controlli circa: modello dei tratti, profilo neutro (P = 1 per ogni frase senza `req:`), archetipi, fattore P e distribuzione con seme fisso, filtri rigidi con 40 semi e un profilo completo, condizione `soul`, registri, TRP3 presente/assente/API cambiata/dati malformati, priorità delle fonti, migrazione dello schema 2, dati rovinati e futuri, comando, finestra, chiavi IT/EN, validatore). `run_tests.py` ora si aspetta 444 frasi e schema 3; il controllo del `/say` automatico in istanza cerca finché ne parte uno (con il seme fisso la sequenza cambia a ogni frase aggiunta).
- **Non verificato senza il client** (aggiunto a `docs/G1_checklist.md`, passi 32–38): l'aspetto e lo spazio della finestra del profilo; che il cambio di profilo si senta nelle frasi (con 16 sole frasi di esempio la differenza è piccola); **Total RP 3 vero**: che `GetInfo("characteristics/PS")` dia i tratti, che gli ID dei tratti predefiniti (`PSYCHO_MAP`) e la scala 0–20 siano quelli del TRP3 in uso; i fattori e le soglie sono ipotesi.

### S6: Living Memory e Diario (GDD §7.4, §11.5, §12.2)
- Tre livelli: episodico, persistente, flag narrativi.
- Prima visita, ritorno, ultima visita finita male, morti, livelli.
- Al massimo 500 ricordi, con compattazione, ricordi permanenti e reset.
- Il richiamo avviene solo se esiste un ricordo vero: aggiungere condizioni come `repeatVisit` e `lastVisitBad`.
- `UI/JournalFrame.lua`: ricordi, luoghi e flag, con cancellazione selettiva ed esportazione testuale manuale.

#### Esito di S6 e note per S6b, S6c, S7
- **Dove sta il codice** (nel `.toc`: `Systems\LivingMemory` dopo `Systems\Triggers`; `UI\JournalFrame` prima di `SettingsFrame`; `Data\RegistryMemory` e i testi `Memory.lua` dopo quelli del Soul):
  - `Systems/LivingMemory.lua` (`NS.LivingMemory`, modulo `memory`): `Record{ kind, zone, importance, tags, source, perm, level, t }` (solo questi campi), `RegisterKind(tipo, importanza)`, `Delete`, `SetPermanent`, `ForgetPlace`, `Reset(all|memories|ordinary|places|flags)`, `SetFlag`/`ClearFlag`/`HasFlag`/`FlagNames`, `EnterZone`/`LeaveZone`/`OnDeath`/`OnLevel`, `Context(ctx)` (= `ctx.memory`), `RegisterRecall(evento, verifica)`, `List`/`Places`/`SessionList`/`Stats`, `ExportText`, `Describe`, `Status`, `Command`. Costanti in testa al file (`MAX_ORDINARY` 500, `COMPACT_TO` 450, `MAX_PERMANENT` 200, `MAX_PLACES` 300, `PERSIST_MIN` 2, `VISIT_GAP` 600 s, `RETURN_GAP` un giorno, `FLIGHT_HP` 0,35, `DEATH_GAP` 60 s).
  - Dati in `cdb.memories = { version, nextId, entries, places, flags, stats }`; `memories.version` (1) ha migrazioni proprie (`LM.migrations[n]`); `Sanitize` ripulisce all'avvio; versione più nuova = sola lettura. **Schema delle SavedVariables 4** (migrazione 4 del personaggio).
  - **Ricordi**: prima visita (3, capitale 4), ritorno (2 dopo un giorno, 1 e solo di sessione se prima), morte (3, la prima 4, con flag `first_death`), fuga (3), livello (2, ogni dieci 4 con flag `level_<n>`). Gli importanti si salvano (`PERSIST_MIN`), gli altri restano nell'episodico di sessione (id negativo, al massimo 60). I luoghi (`memories.places[zona]`) tengono i conteggi e l'esito della visita (`prev` = com'era finita la precedente) e sono indipendenti dalla compattazione.
  - **Richiamo onesto**: condizioni in `Engine/RuleEngine.lua` (`firstVisit`, `repeatVisit`, `lastVisitBad` anche `"death"`/`"flight"`, `visitsMin`/`visitsMax`, `daysSinceLastVisit` numero o `{da, a}`, `remembered`), `ctx.memory` in `NS:BuildContext`, **guardie degli eventi** `Engine:SetEventGuard(evento, nome, fn)` (controllate da `PickEntry`), validatore `recallWithoutMemory`. Evento `memory_return` (priorità `memory` nel Director, modulo `memory`, probabilità 70, pausa 600 s) offerto 3 s dopo il ritorno; la prima visita è l'evento `zone` con `firstVisit`.
  - **Diario**: `UI/JournalFrame.lua`, `/au diario` (alias `journal`, `diary`; sottocomandi `lista`, `luoghi`, `flag`, `esporta`, `permanente`, `elimina`, `dimentica`, `reset` con conferma). Schede come dati: `JournalFrame:RegisterTab(id, { label, rows, note })` con righe `{ text, actions = { { label, tip, fn } } }`. Esportazione in una finestra con casella a più righe (ripiego: 40 righe in chat locale).
  - 14 frasi di esempio IT/EN (`base_memory`): 5 di prima visita, 9 di ritorno. Totale di base: 458 frasi con il pacchetto di esempio.
- **Cosa deve sapere S6b (relazioni):**
  - le relazioni vivono in `cdb.relationships` con **versione propria**; serve una migrazione dello schema 5 (aggiungi un `[5]` in `Config.migrations` e `SCHEMA_VERSION = 5`, come ha fatto S6 con il 4);
  - il diario ospita già le schede: aggiungi «Relazioni» con `JournalFrame:RegisterTab("relations", {...})` (e magari «Persone incontrate»); `/au relazioni` può aprire il diario su quella scheda con `JournalFrame:Open("relations")`;
  - un momento importante di una relazione (primo incontro, un tradimento) può essere un ricordo: `LivingMemory:RegisterKind("relation", 3)` e `Record{ kind = "relation", tags = {...}, source = "addon" }`; **non** salvare nomi o testi di chat dentro un ricordo (`Record` scarta ogni altro campo e `tags` accetta solo token brevi in minuscole ASCII);
  - un richiamo legato a una relazione si registra con `LivingMemory:RegisterRecall("relation_...", function(memory, ctx) ... end)` e **deve** verificare che la relazione esista davvero; il fattore `R` è libero (`Engine:SetWeightHook("R", ...)`);
  - le morti e i livelli non sono legati a un NPC: l'identità (`npcID` dal GUID) non è nei ricordi.
- **Cosa deve sapere S6c (interlocutore e luogo):**
  - i luoghi sono indicizzati dal **nome** della zona nel client ([issue #31](https://github.com/Finland6738/azeroth-unspoken/issues/31)): quando `Systems/Place.lua` verifica i `mapID`, migra `memories.places` (`LM.migrations[2]`, versione interna 2) a una chiave stabile;
  - `ctx.place` e `ctx.memory` sono indipendenti: una frase può chiedere `when = { place = {...}, firstVisit = true }`; `ctx.memory.zone` è il nome della zona del contesto;
  - `NarrativeDirector:SetRhythm` vale anche per `memory_return` (è un evento come gli altri): il ritmo sobrio in raid lo riguarda.
- **Cosa deve sapere S7 (contenuti):** le condizioni di memoria sono nella guida ai pacchetti (`FORMATO_PACCHETTI.md`, «Memoria»); ogni frase di `memory_return` dichiara una condizione di memoria (altrimenti `recallWithoutMemory`); i richiami che toccano la morte portano `topic:death`; i contenuti estesi sono nell'[issue #29](https://github.com/Finland6738/azeroth-unspoken/issues/29). L'atmosfera di prima visita si scrive con `event = "zone"` e `firstVisit = true`.
- **Test** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestMemory.lua` (oltre mille controlli: nessun ricordo per eventi insignificanti, prima visita con i campi del §7.4, capitali, ritorno (stessa visita, un'ora, due giorni), `lastVisitBad` per morte e fuga (anche con salute segreta), livelli, limite di 500 e compattazione, permanenti, cancellazione selettiva, flag, richiamo solo con un ricordo vero (guardia, comando manuale, modulo spento), priorità e nessuna cascata nel Director, argomenti da evitare, validatore, privacy, migrazioni e dati rovinati o futuri, diario, esportazione, comandi, reset con conferma) e, in `run_tests.py`, la **persistenza simulata dopo `/reload`** (due runtime, `SERIALIZE`, `epoch` e `zone` di `load_addon`). Il client finto ha `SERIALIZE(tabella)` e `LEAP(secondi)` (salta un intervallo lungo senza eseguire i timer periodici: `ADVANCE` di giorni supera il limite dei timer perché il pulsante ha un timer da 2 s).
- **Non verificato senza il client** (aggiunto a `docs/G1_checklist.md`, passi 39–45, e [issue #30](https://github.com/Finland6738/azeroth-unspoken/issues/30)): la scrittura reale delle SavedVariables a `/reload` e alla chiusura; l'ordine e il contenuto di `PLAYER_ENTERING_WORLD`/`ZONE_CHANGED_NEW_AREA` in un caricamento; la fuga (euristica); l'aspetto del diario e la finestra di esportazione (scorrimento, selezione, Ctrl+C); `C_Timer.NewTicker`; le soglie e la frequenza dei richiami.

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

#### Esito di S6b e note per S6c, S7, S8
- **Dove sta il codice** (nel `.toc`: `Systems\Relationships` dopo `LivingMemory`; `UI\RelationsFrame` dopo `JournalFrame`; `Data\Relationships` dopo `Frames`; `Data\RegistryRelations`, i testi `Relations.lua` e le stringhe `RelationsUI.lua` in fondo):
  - `Systems/Relationships.lua` (`NS.Relationships`, modulo `relations`): `RegisterData` (assi, etichette, disposizione, registro, incrementi, `decay`, `memorable`), `Derive`, `Disposition`, `Resolve(kind, rec)` → `AURelationInfo`, `Get`/`Data`/`Sanitize`, `RecordNPC(npcID, nome, fonte)`, `Increment`, `Decay`, `AddPlayer(nome, "user"|"auto")` (rifiuta ogni altra fonte), `Propose`/`Candidates`/`Dismiss`, `SetAxis`/`AdjustAxis`/`SetLabel`/`CycleLabel`/`SetNote`/`SetTags`/`Remove`/`Reset`, `Rows(filtro)`, `Subject(ctx, extra)`, `Context(ctx, extra)`, `Factor` (fattore `R`), `RegisterRelationEvent`, `ExportText`, `Status`, `Command`. Costanti in testa al file (`MAX_NPCS` 1000, `MAX_PLAYERS` 300, `MAX_CANDIDATES` 40, `KNOWN_GAP` 600 s...).
  - `Data/Relationships.lua`: **tutti i numeri** (soglie delle etichette, pesi della disposizione, `knownMin` 15, registro, incrementi, tetti, decadimento 14 giorni / 0,5 al giorno / minimo 3).
  - Dati in `cdb.relationships = { version, npcs = { [npcID] }, players = { ["Nome-Reame"] } }`; impostazioni `db.relations = { npcAuto, attraction, autoRegisterPlayers, proposePlayers }`; modulo `relations`. **SavedVariables schema 5**.
  - Bus: `NPC_INTERACT { kind = gossip|quest_detail|quest_turnin|merchant|taxi|trainer|binder, npcID, npcName }`, `NPC_INTERACT_END`, `QUEST_STATE { state }`, `GROUP_CHANGED`, `TRADE_OPENED { name }`, `WHISPER_SENT { name }` (solo il nome). Non c'è il testo di nessun messaggio.
  - Motore: `Engine.RegisterRelationAxis`, `Engine.UsesRelation`, `Engine.RELATION_CONDITIONS`; condizioni `relation`, `disposition`, `relationKind`, `isKnown`, `withRelation`, `<asse>Min`/`<asse>Max`; segnaposto `{relation}` (campo `relationLabel`); `Traits.Define{ scope = "rel" }` e `Traits.RegisterScope("rel")`; hook `R` "relations" e modificatore `StyleResolver` "relations"; validatore: `relationWithoutRelation`.
  - `UI/RelationsFrame.lua` (`NS.RelationsFrame`: `Open(vista | { kind, key })`, `Close`, `Toggle`, `ShowView`, `SelectSubject`, `AddPlayer`, `ShowExport`, `Refresh`); `Widgets.Slider(parent, larghezza, min, max, onChange(valore, finale))`; due schede del diario (`relations`, `people`); `JournalFrame:ShowExport(testo, chiaveTitolo)`.
  - 51 frasi in `base_relations` (saluti 10, congedi 7, ringraziamenti 6, cure 6, battaglia 6, vittoria 4, NPC conosciuti 12), evento `relation_npc` (probabilità 45, pausa 180 s).
- **Cosa deve sapere S6c (interlocutore e luogo):**
  - il **ruolo** di un NPC si ricava già da fonti affidabili: `NPC_INTERACT.kind` (`merchant`, `trainer`, `taxi`, `binder` = locandiere, `gossip`, quest). `R.interaction = { npcID, name, kind, t }` è l'NPC con cui si parla ora; `R:Subject(ctx, extra)` dice la persona dell'interazione (NPC aperto, bersaglio o `extra.relationSubject`); `R.NpcID(guid)` è l'unico punto che legge un GUID;
  - `ctx.relation` e gli altri campi stanno al livello superiore del contesto; `ctx.other.relation` può semplicemente copiarlo. La fonte 1 della lista di priorità (dati dell'utente) è `cdb.relationships.players[chiave]` (con `note`, `tags`, `label`, mai testo di chat);
  - le azioni `Gruppo`, `scambio` e `risposta in privato` sono già eventi del bus (`GROUP_CHANGED`, `TRADE_OPENED`, `WHISPER_SENT`); per `DUEL_REQUESTED`, `PARTY_INVITE_REQUEST` e le emote servono sorgenti nuove (gli eventi sono nel dump);
  - **ambiti dei tag**: `rel` esiste (tratti con `scope = "rel"`). Un ambito `other` con i tratti di S5 (senza `scope`) vale così com'è; i tratti con `scope` valgono solo nel loro ambito;
  - il fattore `C` e `SetRhythm`/`SetDemandCheck` sono liberi; `R` e il modificatore `relations` sono già presi;
  - le sorgenti di eventi nuove si dichiarano con `NpcSource`/`EndSource` o `AddSource` con **stringhe letterali**, altrimenti `check_api.py` non le vede;
  - `JournalFrame` ora stringe le schede: puoi aggiungerne senza toccare la larghezza.
- **Cosa deve sapere S7 (contenuti):** le condizioni e i tag di relazione sono nella guida ai pacchetti (`FORMATO_PACCHETTI.md`, «Relazioni»); una frase di `relation_npc` dichiara sempre una condizione di relazione; il segnaposto `{relation}` è maschile/neutro in italiano (le etichette sono nomi: «amico», «compagno d'armi»): scrivere frasi che reggano ogni etichetta o dichiarare quella giusta ([issue #34]). Le 51 frasi bastano a provare il sistema.
- **Cosa deve sapere S8 (NPC Alive):** `cdb.relationships.npcs[npcID]` è il registro degli NPC già incontrati (`name`, assi, `count`, `last`); `RecordNPC` crea una relazione solo con un'interazione reale; `R:Resolve("npc", rec)` dà etichetta e disposizione per la battuta simulata.
- **Test** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestRelations.lua` (oltre 1.200 controlli: assi e attrazione, derivazione di etichette e disposizione, precedenza della scelta a mano, GUID e valori segreti, incrementi (rendimenti decrescenti, tetto, giorno dopo), quest, mercante e hook, locandiere/volo/addestratore, impostazioni, decadimento, tabelle di dati, compattazione, proposte senza lista, `auto` spento, privacy (nessun testo salvato né negli eventi), modifiche dell'utente, elenco ordinabile, contesto, condizioni, `{relation}`, fattore R, registro, frasi per rapporto, `relation_npc`, ricordo nel diario, 51 frasi IT/EN, migrazione 5, dati rovinati, sola lettura, finestra, schede del diario, comandi, chiavi IT/EN), la persistenza simulata dopo `/reload` in `run_tests.py` e il controllo del dump delle API.
- **Non verificato senza il client** (aggiunto a `docs/G1_checklist.md`, passi 46–55, [issue #33]): **tutta** la parte che dipende dal client vero: che `GOSSIP_SHOW`, `QUEST_*`, `MERCHANT_*`, `TAXIMAP_OPENED`, `TRAINER_SHOW`, `CONFIRM_BINDER` arrivino davvero con `UnitGUID("npc")` leggibile; che i tre `hooksecurefunc` (acquisto, vendita, riparazione) scattino e che la vendita (uso di un oggetto con il mercante aperto) si riconosca; `UnitFullName` sui compagni di gruppo; `TRP3_API.register.isUnitIDKnown` e `utils.str.getUnitID` in Total RP 3; l'aspetto della finestra, dei cursori (`GetCursorPosition`) e delle caselle di testo; il tono delle 51 frasi; i numeri degli incrementi e delle soglie (ipotesi).

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

#### Esito di S6c e note per S7, S8
- **Dove sta il codice** (nel `.toc`: `Systems\Place` prima di `LivingMemory`, `Systems\Interlocutor` dopo `Relationships`; `Data\Places` e `Data\NPCs` dopo `Data\Relationships`; `Data\RegistryContext`, i testi `Context.lua` e le stringhe `ContextUI.lua` in fondo; [ADR 0019](docs/adr/0019-interlocutore-e-luogo-fonti-in-ordine-e-luoghi-per-mapid.md)):
  - `Systems/Place.lua` (`NS.Place`, modulo `place`): `Read(ctx)` → `ctx.place` (`AUPlace`: `key`, `zone`, `subzone`, `mapID`, `continent`, `tags`, `mood`, `territory`, `capital`, `faction`, `friendlyCapital`, `hostileCapital`, `instanceType`, `instanceName`, `instanceID`, `difficulty`, `encounter`, `lastEncounter`, `encounterResult`, `groupRole`, `battleground`, `rest`, `source`); `Lookup(mapID, nome)` (uiMapID verificato > nome > uiMapID non verificato), `Key(mapID, zona)` (`"map:<id>"` o il nome), `Factor` (fattore `C`: tag `place.` e frasi brevi ≤ 80 byte in campo di battaglia, arena e contro un boss), `RHYTHM` (ritmo per tipo di istanza, via `SetRhythm "place"`), `SetDemandCheck "encounter"`, evento `encounter_end` (guardia: uno scontro finito da poco), `Describe`/`Command` (`/au luogo`). `NS:RegisterPlaces{ zones, subzones, instances, continents }`.
  - `Systems/Interlocutor.lua` (`NS.Interlocutor`, modulo `interlocutor`): `Build`/`Context` → `ctx.other` (`AUOther`) e `ctx.otherTraits`; fonti in ordine utente > TRP3 pubblico (consenso `interlocutor.trp3Others`) > `Data/NPCs.lua` > ruolo da interazioni affidabili (`ROLE_OF`) > tendenza debole (`tendency`, solo peso) > neutro; `Note`/`Actions`/`HasAction` (azioni in memoria per la sessione, `ACTION_WINDOW` 120 s, `ACTION_KEEP` 900 s, `MAX_SUBJECTS` 60), `SetTrait(kind, id, tratto, valore)`, `Factor` (fattore `C`, tag `other.`), modificatore di registro `other` (modo di parlare e ruolo), eventi `npc_meet` (modulo `npc`) e `other_action` con guardie, `Describe`/`Command` (`/au chi [trp3 on|off|tratto <tratto> <valore>]`). Tratti nuovi con ambito `other`: `goals`, `speech`, `role`; `temperament` e `morality` sono quelli del Soul. `NS:RegisterNPCs`, `NS:RegisterTendencies` (la morale si scarta).
  - Sorgenti nuove sul bus: `ENCOUNTER_START`, `ENCOUNTER_END`, `BATTLEFIELD_STATUS` (`UPDATE_BATTLEFIELD_STATUS`), `NPC_INTERACT { kind = "banker" }` (`BANKFRAME_OPENED`), `OTHER_DUEL`, `OTHER_INVITE`, `OTHER_EMOTE` (`CHAT_MSG_TEXT_EMOTE`: solo emote standard rivolte a noi, il testo si scarta); `WORLD_ENTER`/`ZONE_ENTER` portano `mapID`.
  - Motore: sotto-tabelle `other`/`place` (`Engine.MatchSub`, `Engine.SUB_FIELDS`, `Engine.SUB_VALUES`, validatore `CheckSub`); ogni campo conta nella specificità; segnaposto `{other}` `{otherrole}` `{otherrace}` `{otherclass}` `{instance}` `{encounter}` (campi `otherName`, `otherRoleLocal`, `otherRaceLocal`, `otherClassLocal`, `instanceName`, `encounterName`; `Validator.WORST`).
  - `Integration/TotalRP3.lua`: `GetOtherProfile(unit)` (solo `characteristics.RA`, `CL`, `PS` del profilo pubblico, temperamento e morale), `HasOtherConsent`, `CleanPsycho`, `MapPsycho`. `Systems/Relationships.lua` conserva `traits`, `role`, `roleSource` nelle relazioni.
  - **Memoria dei luoghi per uiMapID** (chiude #31): `memories.version` 2, chiave `map:<id>` o nome, migrazione `LM.migrations[2]` (nomi con uiMapID verificato convertiti, doppioni uniti), adozione per nome alla prima visita con uiMapID, `LM:FindPlace(chiaveONome)`, `ForgetPlace` per chiave o nome, `ctx.memory.key`. Schema delle SavedVariables **invariato** (5).
  - 86 frasi IT/EN in `base_context` (per interlocutore 45, per luogo 41). Totale di base: 595 frasi con il pacchetto di esempio.
- **Cosa deve sapere S7 (contenuti):**
  - le condizioni sono in `FORMATO_PACCHETTI.md` («Interlocutore e luogo»): `other = { role, temperament, speech, goals, race, class, kind, actions = { …, within = n }, relation }`, `place = { instanceType, territory, tags, friendlyCapital, hostileCapital, encounter, encounterResult, groupRole, rest }`; i tag `other.…`/`place.…` pesano nel fattore `C`;
  - l'ingresso in un dungeon, un'incursione o un campo di battaglia è l'evento `zone` con `place = { instanceType = … }`; durante gli scontri con i boss il narratore tace: le frasi da boss vanno su `encounter_end`; in campo di battaglia e arena servono frasi brevi (≤ 80 byte) o pesano meno;
  - un saluto per razza o classe parla della terra d'origine o del mestiere, mai di una morale (GDD §5.4); per i personaggi canonici di `Data/NPCs.lua` c'è solo il ruolo;
  - i tag dei luoghi disponibili sono quelli di `Data/Places.lua` (il validatore rifiuta un tag non registrato); per un tag nuovo si aggiunge prima ai dati;
  - `npc_meet` parla solo con un NPC dal ruolo riconosciuto e `other_action` solo con un'azione recente: una frase di quegli eventi deve dichiarare la condizione (`other = { role = … }` o `other = { actions = … }`), anche se il validatore oggi non lo esige.
- **Cosa deve sapere S8 (NPC Alive):** `Data/NPCs.lua` è il registro (`I.npcs[npcID]`: `role`, `temperament`, `speech`, `goals`); `ctx.other` dà ruolo e voce dell'NPC aperto; `Interlocutor.ROLE_OF` dice quali interazioni rendono affidabile un archetipo; `I.SPEECH_STYLES`/`ROLE_STYLES` sono il registro della voce `npc`.
- **Aperte da S6c:** [#36](https://github.com/Finland6738/azeroth-unspoken/issues/36) (verificare in gioco uiMapID, instanceID e npcID, `in-game`), [#37](https://github.com/Finland6738/azeroth-unspoken/issues/37) (tratti dell'interlocutore e consenso TRP3 nell'interfaccia), [#38](https://github.com/Finland6738/azeroth-unspoken/issues/38) (emote rivolte a noi solo con il client inglese). Resta aperta #26 (`string.lower` e UTF-8): il codice nuovo usa `Traits.Lower`.
- **Test** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestOtherPlace.lua` (oltre 530 controlli: luogo nel mondo aperto, ordine di `Lookup`, API mancanti e valori segreti, istanze, scontri, coda dei campi di battaglia, ritmo da mondo aperto a dungeon, incursione, boss, campo di battaglia, arena e locanda, impegno durante i boss, frasi brevi, interlocutore da bersaglio e NPC, identità segreta, ruolo solo da interazioni affidabili, priorità delle fonti con TRP3 finto, nessun obbligo di TRP3, tendenza debole, azioni e loro finestra, privacy delle emote, regole `other`/`place` con tutti gli operatori, validatore, segnaposto IT/EN, 86 frasi, scelta delle frasi per interlocutore e luogo, #31 e migrazione 1 → 2, comandi, chiavi IT/EN) più `check_api.py`. `TestMemory` e `TestRelations` ammettono `CHAT_MSG_TEXT_EMOTE` tra le sorgenti di chat.
- **Non verificato senza il client** (aggiunto a `docs/G1_checklist.md`, passi 56–64): **tutti i numeri** di `Data/Places.lua` e `Data/NPCs.lua` (#36); che `C_Map.GetBestMapForUnit`/`GetMapInfo`, `GetInstanceInfo`, `C_PvP.GetZonePVPInfo`, `C_PvP.IsBattleground`/`IsArena`, `GetBattlefieldStatus`, `UnitGroupRolesAssigned`, `UnitReaction`, `UnitCreatureFamily`, `UnitIsUnit` rispondano come nel dump; che `ENCOUNTER_START`/`END`, `UPDATE_BATTLEFIELD_STATUS`, `BANKFRAME_OPENED`, `DUEL_REQUESTED`, `PARTY_INVITE_REQUEST` e `CHAT_MSG_TEXT_EMOTE` arrivino con quei parametri; `TRP3_API.register.getUnitIDCurrentProfile` di Total RP 3; il tono delle 86 frasi; i numeri del ritmo (ipotesi).

### S7: contenuti Alpha (GDD §5, §9.2, §21)
- 300 intenzioni bilingui; almeno 2 varianti per le scene più comuni; tutte e quattro le voci; tre profondità per i momenti chiave.
- Coprire a fondo il vertical slice A e C.
- Rispettare le regole di qualità del §5.4: varietà di lessico e lunghezza, niente lore inventata spacciata per canone.


#### Esito di S7 e note per G2, S8
- **Numeri** (database di base, senza il pacchetto di esempio; `Tests/TestContent.lua` li controlla):
  - **803 intenzioni** (erano 588), **1.711 varianti per lingua** (erano 612). Tutte le intenzioni di `battle`, `victory`, `lowhp`, `zone`, `greet`, `farewell`, `memory_return`, `death`, `rez`, `levelup` e del riposo hanno almeno 2 varianti IT ed EN; delle altre restano a una variante solo 9 frasi di incantesimo.
  - Voci: personaggio 444, voce interiore 235, narratore esterno 108 (erano 32), **NPC 16** (solo `npc_meet`, sempre con `other.role`).
  - Profondità ammesse dalle regole: naturale 378, letterario 754, elevato 301; varianti scritte apposta per tutte e tre su arrivo e ritorno in foresta, zone di foresta, morte, ritorno in vita, livello, vittoria, salute bassa, saluti e congedi principali.
  - Per pacchetto: combattimento 139, interlocutore e luogo 110, esplorazione 101, relazioni 83, memoria 81, incantesimi 73, social 73, vita 63, classi 54, personalità 26.
- **Vertical slice A e C** (`Data/RegistryMemory.lua`): 10 intenzioni di prima visita in foresta e 12 di ritorno, con tre voci, temperamenti (stoico, allegro, feroce, malinconico, burbero, misericordioso), ora del giorno, ritorno dopo morte o fuga, dopo 7 giorni o 5 visite; prima visita e ritorno per ogni `mood`, dungeon, incursione e campo di battaglia; flag `first_death`, `first_capital`, `level_30/40/60`. Tutte le frasi di `memory_return` iniziano con `mem.ret.` (lo richiede `TestMemory`).
- **Issue chiuse:** #18 (narratore e varianti), #27 (tag del Soul: 756 intenzioni su 803 hanno almeno un tag con due punti; `topic:death` su ogni frase di `death`, `topic:religion` su ogni `pray`, `topic:romance` su ogni frase d'amore; `req:` su meno del 5%), #29 (memoria), #34 (relazioni per ogni etichetta; `{relation}` in italiano solo tra virgolette; frasi per `other.sex`, giocatori, NPC con ruolo, disposizione, attrazione).
- **Aperte da S7:** [#41](https://github.com/Finland6738/azeroth-unspoken/issues/41) (genere delle etichette di relazione e segnaposto di genere per l'interlocutore: oggi `{g:}` vale solo per il personaggio), [#42](https://github.com/Finland6738/azeroth-unspoken/issues/42) (i `topic:` non filtrano il vocabolario: `{cry}` e `{foe}` possono portare sangue, non morti o demoni).
- **Correzioni editoriali** a frasi esistenti: generi `{g:}` mancanti, `zone.durotar.01` solo Orda, `zone.dunmorogh.01` solo nani e gnomi, il druido non dice più di aver dormito secoli nel Sogno, `rez.e.03` regge anche lo spirito guaritore, due battute che ricordavano citazioni note riscritte.
- **Per G2** (passi 65–68 in `docs/G1_checklist.md`): arrivo in foresta con le tre profondità e due archetipi; ritorno dopo 10 minuti, dopo una morte e dopo una fuga; un'ora di gioco per giudicare ripetizioni, frasi che stonano e frequenza; la voce NPC. Il tono, la lunghezza percepita e il ritmo **non sono verificati**: i test controllano struttura, conteggi e regole, non la qualità letteraria.
- **Per S8 (NPC Alive):** le 16 intenzioni `ctx.npcv.*` (voce `npc`, `Data/RegistryContext.lua`) sono già battute per ruolo, modo di parlare e temperamento: la finestra di dialogo può riusarle come prima battuta del locandiere (vertical slice B). Le guardie parlano solo se il ruolo arriva da `Data/NPCs.lua` (oggi due NPC): S8 può ricavare il ruolo in modo affidabile anche per loro. Manca una condizione «dentro una locanda con l'oste» (`place.rest` vale in ogni area di riposo); le frasi scritte reggono entrambi i casi.
- **Test** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestContent.lua` (intenzioni, varianti per evento, voci e dove parla la voce NPC, profondità, slice A e C, memoria per atmosfera e flag, tag e argomenti delicati, relazioni per etichetta e `{relation}` tra virgolette, 80 byte in campo di battaglia e arena, parole fuori dall'era di Forever, testi IT ripetuti o identici all'inglese, parole abusate sotto il 5%, validatore a zero); conteggi aggiornati in `run_tests.py` (810 frasi con l'esempio), `TestSchema`, `TestValidator`, `TestOtherPlace`; `TestChatGateway` accetta la voce `npc` (parlata, privata).

### S8: NPC Alive (GDD §7.3, §21-B)
- Finestra di dialogo etichettata "dialogo ambientale dell'addon".
- Stati `idle → offered → opened → choice → response → ended`.
- Registro degli NPC tramite `npcID` dal GUID, verificato.
- Archetipi (locandiere, mercante, guardia) solo con una classificazione affidabile, ad esempio gli eventi di gossip o merchant; nessun dialogo se l'identità è incerta.
- La finestra non deve interferire con il gossip Blizzard.

#### Esito di S8 e note per S9
- **Dove sta il codice** (nel `.toc`: `Systems\NPCAlive` dopo `Systems\Interlocutor`; `UI\DialogueFrame` dopo `UI\RelationsFrame`; `Data\RegistryDialogues` e `Data\Dialogues` dopo `Data\RegistryContext`, i testi `Dialogues.lua` e le stringhe `NPCUI.lua`; [ADR 0020](docs/adr/0020-dialogo-simulato-e-dialogo-reale-npc-alive.md)):
  - `Systems/NPCAlive.lua` (`NS.NPCAlive`): la macchina a stati (`STATES`, `TRANSITIONS`, `SetState` rifiuta ciò che è fuori ordine; `N.log` tiene il percorso dell'ultimo dialogo), `Offer`/`Open`/`Choose`/`Close`/`End(motivo)`, `Start` (offerta e apertura insieme, per il comando), `Toggle` (il tasto), `View()` (ciò che la finestra disegna), `Identify(hint?)` → `who, motivo`, `Allowed(esplicito)`, `TestWho(stile)` (NPC di prova), `ContextFor(sessione)`, `Check()` (controllo dei copioni, usato dal validatore come `badDialogue`), `Status()`, `Command` (`/au npc`), `DeclareRole` (`/au npc ruolo`), `NS:RegisterDialogues{ scripts }`, `N.FlagName(chiave, flag)`. Costanti in testa al file (`OFFER_SECONDS` 20, `IDLE_SECONDS` 120, `OFFER_GAP` 180, `MAX_TURNS` 12, `MAX_CHOICES` 3, `OFFER_KINDS`).
  - `UI/DialogueFrame.lua` (`NS.DialogueFrame`): `Render(vista)`, `Place(forza)` e `Candidates` (posizioni che non coprono le finestre di `BLIZZARD_FRAMES`, controllate con `GetRect` solo se esistono), `GetPlacement`, `ResetPosition`, `ApplySettings`; l'etichetta `npc_badge` è sempre sulla fascia in cima. Nessuna logica di dialogo.
  - `Data/Dialogues.lua`: i cinque copioni (`innkeeper`, `merchant`, `guard`, `flightmaster`, `trainer`); `Data/RegistryDialogues.lua`: le battute, generate da una tabella `SPEC` di sigle (`n`, `known`, `stranger`, `again`, `gruff`, `jovial`, `warm`, `formal`, `terse`, `farley`, `firebrew`, `gryshka`, `dughan`); testi in `Data/itIT|enUS/Dialogues.lua`. Gli id sono `npcd.<ruolo>.<nodo>.<sigla><n>`, gli eventi `npcd_<ruolo>_<nodo>`.
  - Per l'**issue #41**: `Relationships:LabelName(id, sesso)`, `Resolve(kind, rec, sesso)`, i nomi in `Data/Relationships.lua` come `it = { "amico", "amica" }`, segnaposto `{og:m|f}` (`ctx.otherSex`, in `TemplateRenderer`, `HasData` e `Validator`). Per l'**issue #42**: i `tags` sulle voci di `Data/Vocabulary.lua` (`topic:blood`, `topic:undead`, `topic:death`, `topic:demons`, `topic:religion`), filtrati in `Engine:Vocab` con `Traits.Evaluate`, `badTag` anche per il vocabolario.
  - Impostazioni nuove: `npcAlive.autoOffer`, `ui.dialogue` (`fontSize`, `alpha`, `locked`, `pos`); schema delle SavedVariables **invariato** (5). Nella relazione di un NPC il campo `talks` conta le conversazioni con almeno una risposta (serve a «la prima volta» del ricordo).
- **Numeri**: 169 battute di base nuove (972 intenzioni di base, 979 con l'esempio): locandiere 54, mercante 37, guardia 33, maestro di volo 18, addestratore 27 (di cui specifiche: Farley 4, Firebrew 2, Gryshka 2, Dughan 3), tutte con due varianti IT ed EN (qualcuna tre). Tre guardie di città nel registro (npcID 68, 5595, 3296: **non verificati**).
- **Decisioni da conoscere** (dettagli nell'ADR): il solo gossip non dà un archetipo; il ruolo vale se lo prova l'interazione in corso, il registro curato o l'utente (`/au npc ruolo`), o se lo stesso NPC l'ha già provato nella sessione; la finestra non va mai in `UISpecialFrames` e non chiama mai nulla di Blizzard; le battute escono solo dentro un dialogo (guardia sull'evento, `ctx.npcDialogue`); un dialogo di prova non scrive nulla; l'offerta ha un limite per NPC *e* per finestra (dal gossip al mercante se ne può fare un'altra).
- **Cosa deve sapere S9 (Story Arcs):**
  - i flag narrativi (`LivingMemory:SetFlag`, nomi `npcd_...`) e `remembered` sono il modo in cui un dialogo può far avanzare un arco: un arco può reagire a un flag di dialogo (o impostarne uno) senza toccare NPCAlive; le scelte di un dialogo non devono mai sbloccare da sole uno stato di un arco senza che l'arco lo dichiari;
  - per un NPC che fa parte di un arco: un copione `npc:<npcID>` con `extends` e battute con `other = { npcID = … }`; `NS:RegisterDialogues` e `NS:RegisterNPCs` lo permettono da un pacchetto;
  - `LivingMemory:RegisterKind` per i ricordi degli archi; il diario ha già le schede registrabili (`JournalFrame:RegisterTab`);
  - il Director riconosce la priorità «dialogo» (4) per i momenti volontari: gli eventi di un arco aperto dal giocatore possono usarla; gli eventi `npcd_*` non passano di lì.
- **Test** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestNPCAlive.lua` (circa 2.000 controlli: copioni e validatore, risposte neutre, transizioni ammesse e rifiutate, percorso completo, scadenza dell'offerta e del dialogo, interruzioni, identità incerta/segreta/giocatore/ostile/morto, ruolo detto dall'utente, impostazioni (modulo, intensità 0, pausa, filmato, combattimento), nessuna chat né chiamata a Blizzard (`FORBIDDEN_CALLS`), posizione che evita le finestre di Blizzard finte e si corregge, etichetta IT/EN, flag, relazione con i tetti, ricordo senza testo, voce per burbero/gioviale/neutro, NPC specifici, conosciuto/sconosciuto, «di nuovo», anti-ripetizione, copertura per carattere, comandi, #41 e #42); in `run_tests.py` 979 frasi e la **persistenza simulata dopo `/reload`** dei dialoghi (flag, ricordo, relazione, nessuna battuta salvata, NPC di prova senza tracce). Il client finto ha ora `UIParent` dimensionabile; i test scrivono `FakeBlizzard` con `GetRect`.
- **Non verificato senza il client** (aggiunto a `docs/G1_checklist.md`, passi 75–83, per G3): che `UnitExists("npc")` e `UnitGUID("npc")` durante gossip, mercante, volo, addestramento e dimora diano l'NPC giusto; i nomi e le dimensioni delle finestre di Blizzard (`GossipFrame`, `MerchantFrame`...) e `GetRect`; l'aspetto della finestra e dei pulsanti lunghi; se l'offerta non dà fastidio; i numeri `npcID` del registro (#36); il tono delle 169 battute e quanto distinguano i caratteri; i tetti della relazione (ipotesi).
- **Aperte da S8:** nessuna nuova issue; restano #36 (numeri dei dati, ora anche gli `npcID` delle guardie) e #30/#33 (prove in gioco). Possibili seguiti, non urgenti: un'opzione nel pannello delle impostazioni per l'offerta automatica (oggi solo `/au npc offerta`), più locandieri e guardie nel registro dopo la verifica in gioco, un banchiere e un maestro di professione con un copione.

### S9: Story Arcs (GDD §7.5)
- Archi a stati (`LOCKED → DISCOVERED → REFLECTED → RESOLVED`), al massimo 1–2 attivi, saltabili e disattivabili.
- Persistono dopo il logout e si integrano col diario. Scrivere 3–5 archi di esempio.

#### Esito di S9 e note per S10
- **Dove sta il codice** (nel `.toc`: `Systems\StoryArcs` dopo `Systems\NPCAlive`; `Data\RegistryArcs` e `Data\Arcs` dopo `Data\Dialogues`, i testi `Arcs.lua` e le stringhe `ArcsUI.lua`; la scheda «Storie» è in `UI\JournalFrame.lua`; [ADR 0021](docs/adr/0021-story-arcs-micro-storie-senza-effetti-sul-gioco.md)):
  - `Systems/StoryArcs.lua` (`NS.StoryArcs`, modulo `storyarcs`): `NS:RegisterArcs{ pack, arcs, texts }`, `NS:AddArcTexts`, `Validate(def)`, `Fire(evento, extra)` (abbonato al bus: `ZONE_ENTER`/`WORLD_ENTER` dopo 2 s, `PLAYER_DEATH`, `LEVEL_UP`, `NPC_INTERACT` senza quest, `MEMORY_FLAG` solo se il flag lo mette un sistema dell'addon: non quelli a mano né quelli automatici della memoria, né gli `arc_…`), `Apply(def, passo, opts)` (l'unico punto che cambia lo stato; rifiuta ciò che non parte dallo stato attuale), `Choose`/`Offering`/`Start`, `Suspend`/`Resume`/`Skip`/`Disable`/`Enable`/`ForAll`/`SetEnabled`, `Conclude` (ricordo `story` permanente), `QueueBeat`/`Flush`/`OnBeatResult` (le battute, una alla volta), `Context()` (`ctx.arcs`), `Record`/`Listing` (per il diario), `Sanitize`/`migrations`, `Check()` (per il validatore), `Command` (`/au storie`). Costanti in testa al file (`BEAT_GAP` 90 s, `OWED_TTL` 900 s, `ZONE_DELAY` 2 s, `MAX_ITEMS` 100).
  - Dati in `cdb.arcs = { version, items = { [id] = { state, mode, since, t, choices, subject, pending, waiting, waitStep, memoryId, ended } }, stats }`; impostazione `arcs.maxActive` (1–2). **SavedVariables schema 6** (migrazione 6 del personaggio; `arcs.version` 1 con migrazioni interne).
  - **Passi** (dati): `{ from, to, on = { zone|death|level|npc|flag|player }, when, wait, choose }`; stati di base o propri (da uno si va solo al successivo); l'apertura non può essere `player` né chiedere una scelta; un evento muove un arco di un solo passo; campi sconosciuti (una ricompensa, una quest) sono un errore. `subject = "npc"` lega l'arco al primo NPC conosciuto; `topic = "death"` non lo apre se il Soul evita l'argomento.
  - **Motore**: sotto-tabella di condizioni `arc = { id, state, from, choice, withSubject }`, `arcDone`, `capitalsVisitedMin` (`Engine/RuleEngine.lua`, validatore dei valori); `ctx.arcs` in `BuildContext`; `LivingMemory:SetFlag` pubblica `MEMORY_FLAG` (solo il nome) sul bus; `Director:Offer(evento, extra, onResult)` restituisce l'esito; `LM:Describe` mostra il titolo dell'arco nel ricordo `story`.
  - **Battute**: eventi `arc_open`/`arc_step`/`arc_resolve` (`Data/RegistryArcs.lua`, pacchetto `base_arcs`), priorità «eccezionale», modulo `storyArcs`, guardia `ctx.arc.beat`; voci private (`inner`, `narrator`). Il validatore (`badArc`) esige `arc = { id }` in ogni regola di questi eventi.
  - **Diario**: scheda «Storie» (in corso, disponibili, concluse, saltate o disattivate) con dettaglio, scelte fatte e controlli; `JournalFrame:Open("stories")`. Avviso discreto nel narratore («attende una tua scelta», «può cominciare»), mai in chat.
- **Quattro archi di base** (`Data/Arcs.lua`): `path` «Il sentiero ritrovato» (zona di partenza della razza, livello 12, scelta tra gratitudine, misura e silenzio, chiusura uscendo dalla zona), `knownface` «Un volto noto» (NPC con ruolo e familiarità 25 → 40 con scelta → 55), `fallen` «Il luogo della caduta» (morte da livello 10, ritorno nel luogo dove la visita è finita male, scelta, chiusura con il livello; argomento `death`), `capitals` «Le tre porte» (seconda capitale → terza, stato proprio `JOURNEY`, riflessione solo del giocatore dopo 10 minuti, chiusura in strada). 33 battute IT/EN (1.005 intenzioni di base, 1.012 con l'esempio).
- **Decisioni da conoscere** (dettagli nell'ADR): gli archi non si aprono mai da soli senza un evento (né con un comando, né con il tempo); a posti finiti l'arco resta «disponibile» e lo avvia il giocatore; lo stato avanza anche quando la battuta tace (il diario racconta); le scelte sono id di opzione, mai testo; i flag `arc_<id>_<stato>` non fanno avanzare altri archi nello stesso evento; le battute in attesa non sopravvivono a `/reload`.
- **Cosa deve sapere S10 (Social RP):**
  - gli archi sono **privati**: nulla di un arco, né un ricordo `story`, né una scelta, né il nome di un NPC, entra in un messaggio addon senza un consenso a parte; `privacy.shareMemories` (spento) è l'interruttore previsto per i ricordi;
  - sul bus c'è `ARC_STATE { id, from, to }` (solo id e stati): S10 può usarlo per una scena condivisa, ma una scena non deve far avanzare un arco di un altro giocatore; l'unica via per far muovere un arco è un evento del proprio personaggio o la scelta del giocatore (`SA:Fire`, `SA:Choose`);
  - il modulo `storyArcs` e `arcs.maxActive` valgono anche per le scene sociali che volessero legarsi a un arco;
  - `Director:Offer` accetta ora una funzione `onResult`: serve a chi deve sapere se una battuta è uscita (le scene di S10, che hanno un loro invito, possono usarla per non perdere un invito rimandato).
- **Aperte da S9:** nessuna nuova issue bloccante. Possibili seguiti, non urgenti: un controllo per `arcs.maxActive` nel pannello delle impostazioni (oggi `/au storie max`); archi legati ad altre fonti (professioni, reputazioni, scoperta di luoghi, quando le API saranno provate); un'opzione per far partire un arco disponibile da solo; più archi dopo la prova in gioco. Restano #36 (numeri dei dati) e #30/#33 (prove in gioco).
- **Test** (`.venv\Scripts\python -I -X utf8 Tests\run_tests.py AzerothUnspoken`): `TestArcs.lua` (circa 2.000 controlli: gli archi di base e la loro copertura di battute per scelta e lingua, definizioni sbagliate apposta, condizioni `arc`/`arcDone`/`capitalsVisitedMin`, transizioni lecite e illecite per ogni arco, nessuna apertura senza un evento vero, tempo/comandi/flag a mano che non aprono, limite degli archi attivi, sospendi/riprendi/salta/disattiva/attiva e «tutti», modulo spento, battute rimandate (combattimento, morte, pausa, silenzio, `OWED_TTL`) e senza cascate (`BEAT_GAP`), nessuna battuta a mano, dati salvati senza testi, `Sanitize` con dati rovinati e futuri, migrazione 6, diario e comando in italiano e inglese, avvisi del narratore) e, in `run_tests.py`, la **persistenza simulata dopo `/reload`** (scelta in attesa, scelta fatta, chiusura e ricordo permanente, arco saltato e sospeso, migrazione dallo schema 5). Aggiornati i conteggi (schema 6, 1.012 frasi, 14 pacchetti di base).
- **Non verificato senza il client** (aggiunto a `docs/G1_checklist.md`, passi 84–92): che `C_Map.GetBestMapForUnit` dia l'uiMapID della zona di partenza (c'è il nome inglese come ripiego) e che le sottozone (Northshire, Coldridge...) siano riconosciute; che le capitali siano riconosciute da `ctx.place`; il ritmo (`BEAT_GAP`, attese, soglie di familiarità 25/40/55, livelli 12 e 10): sono ipotesi; l'aspetto della scheda «Storie» (righe lunghe spezzate a mano, pulsanti di 24 pixel con «>», «II», «x», «-»); il tono delle 33 battute e delle scelte; che il ricordo e la scelta in attesa sopravvivano a `/reload` e alla chiusura nel client vero.

### S10: Social RP (GDD §7.6, §14)
- Messaggi addon con versione del protocollo, schema, limiti di dimensione, throttling e timeout.
- Opt-in disattivato per impostazione predefinita; lista dei blocchi; nessuna esecuzione di codice ricevuto.
- Inviti alle scene, accettazione e rifiuto, azioni, chiusura.
- Rilasciare solo dove il trasporto è dimostrato.

### S11–S12: release 1.0 (GDD §16, §19)
- Contenuti fino a 1.000 intenzioni.
- Accessibilità, audio facoltativo (spento), profiling, manuale, privacy, troubleshooting.
- Spuntare la Definition of Done.
