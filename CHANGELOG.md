# Changelog

Tutte le modifiche rilevanti di questo progetto sono registrate qui.

Il formato segue [Keep a Changelog 1.1.0](https://keepachangelog.com/it-it/1.1.0/) e il progetto intende seguire il [versionamento semantico](https://semver.org/lang/it/) a partire dalla versione 1.0. Fino ad allora le versioni 0.x possono cambiare in modo non retrocompatibile, in particolare il formato dei pacchetti di frasi (schema dati v2, step S3).

Nessuna versione è stata ancora rilasciata: non ci sono pacchetti di distribuzione. La versione nel file `.toc` è `0.1.0`.

## [Non rilasciato]

### Aggiunto

**Step S5: Character Soul e tratti di Total RP 3**
- `Engine/Traits.lua`: il modello dei tratti (`choice`, `scale` con fasce, `set`), riusabile per l'interlocutore (S6c) e per le relazioni (S6b); `Sanitize`, `Merge` con la priorità tra le fonti, tag di affinità con ambiti.
- `Systems/Personality.lua` (Character Soul): otto tratti opt-in (temperamento, morale, curiosità, fede, motivazione, ironia, voce interiore, argomenti da evitare), sette archetipi più il profilo neutro, profilo effettivo *scelta esplicita > Total RP 3 > dati di gioco > valori neutri*, `ctx.soul`, condizione `soul`.
- Fattore `P` del peso riempito: affinità morbida dai tag `tratto:valore` e filtri rigidi `req:`, `not:`, `topic:` (mai contraddetti); la voce interiore spenta esclude i pensieri; l'ironia pesa i registri ironici; il temperamento, la fede e l'ironia spostano i registri preferiti (`StyleResolver`).
- `UI/ProfileFrame.lua` e comando `/au anima` (`lista`, `neutro`, `archetipo`, `trp3 on|off`, `<tratto> <valore>`, `evita <argomento>`; alias `/au soul`): scelta dell'archetipo, modifica dei tratti, cambio immediato; pulsante nel pannello delle impostazioni.
- `Integration/TotalRP3.lua`: lettura dei soli tratti psicologici **pubblici** del **proprio** profilo (`characteristics/PS`), con un consenso a parte (`personality.trp3`, spento per impostazione predefinita); si disattiva se le API mancano o cambiano; nuova capacità `integration:totalRP3:traits` in `/au debug`.
- 16 frasi di esempio con affinità di personalità in IT ed EN (`Data/RegistrySoul.lua`, pacchetto `base_soul`); il validatore controlla i tag di affinità (`badTag`).
- SavedVariables: schema 3 (`personality` del personaggio con archetipo, tratti e consenso a TRP3; migrazione dallo schema 2).
- Test: `TestSoul` (modello dei tratti, profilo neutro, archetipi, fattore P, filtri rigidi su ogni scelta di frase, TRP3 presente, assente e con API cambiate, priorità tra le fonti, migrazione delle SavedVariables, comando, finestra).
- [ADR 0016](docs/adr/0016-character-soul-tratti-opt-in-e-total-rp-3-con-consenso.md); passi 32–38 in `docs/G1_checklist.md`.

**Step S4: Narrative Director**
- `Engine/NarrativeDirector.lua`: priorità del GDD §10 (esplicito > dialogo > evento eccezionale > memoria > atmosfera), gate di opportunità guidato dall'intensità, sospensione durante cinematiche e filmati e nei combattimenti impegnativi (boss, incursione, élite in istanza), dado, ordine dei candidati; `NS:SetEventPriority` per i pacchetti; agganci `SetRhythm` e `SetDemandCheck` per S6c.
- `Engine/Pacing.lua`: pausa minima tra due interventi qualsiasi (niente cascate), pausa globale, di categoria e di evento, budget per categoria in 10 minuti scalato con l'intensità; stato solo per la sessione.
- `Systems/Director.lua`: `Director:Offer`/`Resolve` raccolgono i candidati di un momento e ne fanno parlare al massimo uno; il silenzio è un esito con il suo motivo; riga **Narrative Director** in `/au debug` (budget e ultime decisioni).
- Peso `W = B × C × P × N × S × R` (`Engine.Factors`, `Engine:Weight`): `P` e `R` neutri, agganci `Engine:SetWeightHook("C"|"P"|"R", nome, fn)` per S5, S6b e S6c.
- `Engine/StyleResolver.lua`: registri ammessi per evento e preferiti da atmosfera della zona, profondità e voce, con ripiego neutro (un registro fuori posto pesa meno, non è escluso); le cornici con `styles` accolgono solo frasi di registro vicino. API dei pacchetti `RegisterEventStyles` e `RegisterMoodStyles`.
- `Compat:InvasiveScreen` (`InCinematic`, `IsInCinematicScene`, `CinematicFrame`, `MovieFrame`) e le due capacità nuove nella matrice.
- Test: `TestNarrativeDirector` (fattori e distribuzione dei pesi, intensità 0/50/100, pause, budget, priorità, nessuna cascata, silenzio, sospensione, ripiego di stile, cornici, nessun duplicato nella finestra), con seme fisso.
- [ADR 0015](docs/adr/0015-narrative-director-un-intervento-per-momento.md); passi 27–31 in `docs/G1_checklist.md`.

**Correzioni Q2 (issue #3, #4, #5, #6, #8, #11, #12, #14, #17, #19)**
- Uscita **"Nella chat"** (`Gateway:CopyToChat`, pulsante accanto a Invia, `/au copia`): la proposta va nella casella della chat standard già sul canale giusto e il giocatore la invia con il suo Invio (`Compat:OpenChatWith`, `Compat:CanOpenChat`, capacità `api:OpenChat`). Da provare in gioco (G1, passo 20).
- `Gateway:TextFor`/`DisplayFor`: il testo inviato e l'anteprima nel narratore sono adatti al canale.
- `Gateway:SelectAuto`: l'invio automatico si attiva con due gesti (avviso, poi conferma entro 10 secondi) da comando, pannello e procedura guidata; riga **Invio automatico** nel pannello.
- `Compat:IsMouseOver(frame)` (metodo del frame, ripiego su `MouseIsOver`).
- `Config.CHAT_LIMITS`: limite di byte per canale, letto dal Chat Gateway e dal validatore.
- Test: `TestContext` (identità segreta), `TestMock` (client finto), regressioni in `TestChatGateway`, `TestNarrator`, `TestConfig`, `TestDirector`, `TestValidator` e nei comandi di `run_tests.py`.
- Il client finto ha timer veri (`C_Timer.After`/`NewTicker` con `ADVANCE`), unità distinte per `player` e `target`, `IsInRaid` e un invio che fa rifiutare ogni canale protetto senza gesto.

**Documentazione (attività D1)**
- `README.md` professionale e `README.en.md` (versione inglese).
- `docs/adr/`: quattordici decisioni di progetto (ADR) in formato MADR, con indice.
- `docs/ARCHITETTURA.md`: moduli, flusso di un evento, dati, punti di estensione, con diagrammi Mermaid.
- `CONTRIBUTING.md`, questo `CHANGELOG.md` e `docs/README.md` (indice della documentazione).

**Step S3: schema dati v2, migrazione delle frasi, validatore** (voci aggiunte con l'issue #24)
- Schema dati v2: il registro delle regole è separato dai testi. Una regola ha `events`, `category`, `speaker` (le quattro voci), `form`, `styles` (registri), `depth` (naturale, letterario, elevato), `tags`, `weight`, `cooldown` e `when`; i testi stanno per lingua, con più varianti per id (`Data/Registry*.lua`, `Data/itIT/`, `Data/enUS/`). Il formato vecchio dei pacchetti si converte in caricamento.
- Migrazione delle 421 frasi di base (367 più le 54 di `Classes.lua`, ora nel `.toc`) con voce, registro e profondità assegnati frase per frase; cornici e vocabolario restano.
- `Engine/Validator.lua` e `/au valida [tutto|pacchetto]`: id duplicati, lingue mancanti, segnaposto discordanti, condizioni sconosciute, varianti vuote, lunghezza per canale, UTF-8, coerenza della regola.
- `ctx.depth` e `ctx.intensity` nel contesto, condizioni `depth`, `intensityMin`, `intensityMax`; il fattore `S` del peso (`Engine.StyleFactor`) preferisce la profondità scelta senza mai escludere.
- `Tests/check_api.py`: confronta le funzioni e gli eventi usati con il dump delle API di Forever (saltato con un avviso se il dump manca), con eccezioni motivate; collegato a `run_tests.py`.
- Guida `AzerothUnspoken/FORMATO_PACCHETTI.md` riscritta per lo schema v2; il pacchetto di esempio usa il nuovo formato.
- Una lingua registrata da un pacchetto dopo il caricamento resta quella scelta dall'utente (issue #7).
- Test: `TestSchema` e `TestValidator`; passi 17–19 in `docs/G1_checklist.md`.

**Step S2: narratore privato e Chat Gateway**
- Narratore privato (`UI/NarratorFrame.lua`): riquadro non bloccante e spostabile, con durata, opacità e dimensione del testo regolabili, cronologia recente (solo in memoria), editor della frase e pausa immediata.
- Chat Gateway (`Integration/ChatGateway.lua`) con le modalità `PRIVATE` (predefinita), `PREVIEW`, `CONFIRM_TO_SEND` e `AUTO_ONLY_IF_ALLOWED`; modifica della proposta prima dell'invio; scelta del canale (`/s`, `/e`, gruppo, incursione, gilda, istanza); protezione dal flood; invio da gesto solo tramite `Gateway:PlayerAction`.
- Voci (`speaker`) sulle frasi: `narrator`, `inner`, `character`, `npc`; solo le prime due possono diventare proposte.
- `Systems/Director.lua`: punto di aggancio del futuro Narrative Director (intensità, pausa immediata, moduli).
- Procedura guidata del primo avvio (`UI/Wizard.lua`), saltabile, riapribile con `/au benvenuto`.
- Pannello delle impostazioni: lingua, intensità, profondità dello stile, pausa tra le frasi, chat e canale, riquadro del narratore, moduli e preset.
- Comandi: `/au chat` (alias `/au modo`), `canale`, `intensita`, `profondita`, `pausa`, `narratore [cronologia|reset|pulisci]`, `benvenuto`, `annulla`.
- Tasto `AZEROTHUNSPOKEN_PAUSE` (pausa immediata) in `Bindings.xml`.
- Test: `TestChatGateway`, `TestNarrator`, `TestDirector`; il client simulato ha widget con stato.
- Checklist di prova in gioco: `docs/G1_checklist.md`.

**Step S1: fondamenta**
- Struttura `AzerothUnspoken/` (`Core/`, `Engine/`, `Systems/`, `Integration/`, `UI/`, `Data/`) a partire dal prototipo "Voci di Azeroth" (archiviato in `archive/`), con le sue 374 frasi in italiano e inglese.
- `Core/Compat.lua`: matrice delle capacità (`AVAILABLE`, `MISSING`, `RESTRICTED`), valori segreti, registrazione protetta degli eventi, rilevamento di Forever.
- `Core/EventBus.lua`: eventi normalizzati in envelope, con deduplicazione e coda anti-cascata.
- `Core/Config.lua`: predefiniti, merge, validazione e migrazioni per `schemaVersion`.
- `Core/Diagnostics.lua` e `/au debug [full|trace]`: capacità del client, ultimi eventi, errori intercettati.
- Comandi `/au` e `/unspoken`; pulsante e tasto "pronuncia".
- Integrazione facoltativa con Total RP 3 (nome del profilo).
- Pacchetto di esempio `AzerothUnspoken_Example`.
- Test fuori dal gioco con lupa e client simulato (`Tests/`).
- Configurazione per WebStorm (`.luarc.json`) e annotazioni EmmyLua.
- Riferimenti tecnici ([docs/RIFERIMENTI.md](docs/RIFERIMENTI.md)).

### Corretto
- **#4** Con l'editor della proposta aperto la proposta non scade più (l'attesa riparte alla chiusura); una frase spontanea non la sostituisce; se sparisce lo stesso, il testo scritto torna in chat locale; Invio senza proposta avvisa.
- **#5** Con un canale fisso un'emote in `/s`, `/p`, `/g`… porta il nome del personaggio e una frase parlata in `/e` diventa «dice: «…»».
- **#8** Scorrere le modalità non attiva più l'invio automatico: serve un avviso e una conferma, ovunque. L'automatica non è nel ciclo del pannello; senza consenso si comporta come `conferma`.
- **#6** Con l'identità del bersaglio segreta il contesto non contiene nessun dato del bersaglio (nemmeno `hostile`); ogni lettura del contesto passa da `SafeCall`.
- **#3** I dati di uno schema più nuovo non si modificano più: si lavora su una copia.
- **#11** `/au canale incursione` funziona; un valore sconosciuto di `canale`, `profondita` e `chat` riceve una risposta; l'aiuto elenca `evento` e `vittoria`; il testo d'aiuto del wizard segue la lingua; rimosse due chiavi inutilizzate.
- **#17** Il mouse sopra il riquadro lo tiene visibile (metodo `IsMouseOver` del frame, presente nel dump di Forever).
- **#19** Il limite di 255 byte è in un solo posto.

### Modificato
- SavedVariables allo schema 3: `personality` del personaggio, che era un segnaposto vuoto, diventa il profilo del Character Soul (migrazione 3; i valori dei tratti si ripuliscono all'avvio).
- Il comando `/au anima` e il pulsante "Anima del personaggio..." nel pannello delle impostazioni sono nuovi; nessun comando esistente cambia.
- Gli eventi spontanei passano dal Narrative Director: probabilità, pause e dado non sono più in `Systems/Triggers.lua`, e una frase spontanea arriva 0,1 secondi dopo l'evento (finestra di arbitraggio).
- Una frase chiesta dal giocatore (comando, tasto) impedisce per 4 secondi una frase spontanea subito dopo.
- L'invio automatico non si accende scegliendo la modalità `auto`: richiede un secondo gesto di conferma (decisione prudente: pubblica di meno).
- Rispetto al prototipo, nulla va in chat pubblica senza una scelta dell'utente: l'uscita predefinita è il narratore privato.
- `output.mode` è sostituito da `chat.mode` (migrazione di schema da 1 a 2: `self` diventa `PRIVATE`, ogni altra modalità diventa `CONFIRM_TO_SEND`; `autoPublicSay` è forzato a `false`).
- La lingua si salva con il codice corto dei pacchetti (`it`, `en`).
- Pausa globale predefinita a 45 secondi (prima 40) e finestra anti-ripetizione al massimo di 30 frasi (prima 40).
- Le emote automatiche del prototipo sono diventate proposte da confermare.

### Rimosso
- La pubblicazione automatica in chat come comportamento predefinito.

### Noto
- **Provato solo fuori dal gioco**: la prova nel client vero (G1) è rimandata. Vedi [docs/G1_checklist.md](docs/G1_checklist.md).
- I numeri del Narrative Director (budget, pause di categoria, pesi di stile) sono ipotesi da regolare in gioco (G1, passi 27–31).
- Nelle impostazioni solo i moduli Personale, Mondo, Proposte in chat e Total RP 3 hanno effetto.
- I tratti di Total RP 3 (`PSYCHO_MAP`) usano gli ID dei tratti predefiniti del TRP3 installato e non sono stati provati con un profilo vero; le frasi di base non hanno ancora tag di affinità, solo i 16 esempi di `base_soul` (S7).
- Le soglie e i fattori del Character Soul (×1,6, ×0,6, voce interiore, ironia) sono ipotesi da regolare in gioco (G1, passi 32–38).
- Licenza da definire ([issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2)).

[Non rilasciato]: https://github.com/Finland6738/azeroth-unspoken/commits/main
