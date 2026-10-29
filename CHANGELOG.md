# Changelog

Tutte le modifiche rilevanti di questo progetto sono registrate qui.

Il formato segue [Keep a Changelog 1.1.0](https://keepachangelog.com/it-it/1.1.0/) e il progetto intende seguire il [versionamento semantico](https://semver.org/lang/it/) a partire dalla versione 1.0. Fino ad allora le versioni 0.x possono cambiare in modo non retrocompatibile, in particolare il formato dei pacchetti di frasi (schema dati v2, step S3).

Nessuna versione è stata ancora rilasciata: non ci sono pacchetti di distribuzione. La versione nel file `.toc` è `0.1.0`.

## [Non rilasciato]

### Aggiunto

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
- La profondità dello stile si salva ma nessuna frase la usa ancora.
- Nelle impostazioni solo i moduli Personale, Mondo, Proposte in chat e Total RP 3 hanno effetto.
- `AzerothUnspoken/Data/Classes.lua` (54 frasi) non è ancora nel `.toc`.
- Licenza da definire ([issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2)).

[Non rilasciato]: https://github.com/Finland6738/azeroth-unspoken/commits/main
